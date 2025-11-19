void connection_write_now(uint64_t a1)
{
  ++*(a1 + 36);
  v2 = global_os_log;
  if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 136447490;
    v15 = "connection_write_now";
    v16 = 1024;
    v17 = v3;
    v18 = 2048;
    v19 = a1;
    v20 = 2080;
    v21 = "connection";
    v22 = 2080;
    v23 = "macos-ioloop.c";
    v24 = 1024;
    v25 = 572;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC:  retain at %2.2d: %p (%10s): %s:%d", buf, 0x36u);
  }

  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = v4 + 1;
    *(a1 + 32) = v5;
    if (v5 >= 10001)
    {
      v12 = v5;
      v6 = global_os_log;
      if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
      {
        *buf = 136447490;
        v15 = "connection_write_now";
        v16 = 1024;
        v17 = v12;
        v18 = 2048;
        v19 = a1;
        v20 = 2080;
        v21 = "connection";
        v22 = 2080;
        v23 = "macos-ioloop.c";
        v24 = 1024;
        v25 = 572;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_FAULT, "%{public}s: ALLOC: retain at %2.2d: %p (%10s): %s:%d", buf, 0x36u);
      }

      abort();
    }
  }

  else
  {
    ++comm_created;
    *(a1 + 32) = 1;
  }

  v7 = *a1;
  v8 = *(a1 + 48);
  if ((*(a1 + 424) & 8) != 0)
  {
    v9 = &_nw_content_context_final_send;
  }

  else
  {
    v9 = &_nw_content_context_default_message;
  }

  v10 = *v9;
  completion[0] = _NSConcreteStackBlock;
  completion[1] = 0x40000000;
  completion[2] = __connection_write_now_block_invoke;
  completion[3] = &__block_descriptor_tmp_47;
  completion[4] = a1;
  nw_connection_send(v7, v8, v10, 1, completion);
  v11 = *(a1 + 48);
  if (v11)
  {
    dispatch_release(v11);
    *(a1 + 48) = 0;
  }
}

void __connection_write_now_block_invoke(uint64_t a1, NSObject *a2)
{
  if (a2)
  {
    v4 = global_os_log;
    if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
    {
      error_code = nw_error_get_error_code(a2);
      v17 = 136446466;
      v18 = "connection_write_now_block_invoke";
      v19 = 2082;
      *v20 = strerror(error_code);
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "%{public}s: ioloop_send_message: write failed: %{public}s", &v17, 0x16u);
    }

    connection_cancel_(*(a1 + 32), **(a1 + 32), 581);
  }

  v6 = *(a1 + 32);
  v7 = *(v6 + 36);
  v8 = __OFSUB__(v7, 1);
  v9 = v7 - 1;
  if (v9 < 0 != v8)
  {
    v10 = global_os_log;
    if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
    {
      v17 = 136446210;
      v18 = "connection_write_now_block_invoke";
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%{public}s: ioloop_send_message: write callback reached with no writes marked pending.", &v17, 0xCu);
      v6 = *(a1 + 32);
      if (!v6)
      {
        return;
      }
    }
  }

  else
  {
    *(v6 + 36) = v9;
  }

  v11 = *(v6 + 32);
  if (!v11)
  {
    v14 = global_os_log;
    if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_23;
    }

    v17 = 136447490;
    v18 = "connection_write_now_block_invoke";
    v19 = 1024;
    *v20 = 0;
    *&v20[4] = 2048;
    *&v20[6] = v6;
    *&v20[14] = 2080;
    *&v20[16] = "connection";
    *&v20[24] = 2080;
    *&v20[26] = "macos-ioloop.c";
    v21 = 1024;
    v22 = 588;
    v15 = "%{public}s: ALLOC: release after finalize at %2.2d: %p (%10s): %s:%d";
    v16 = v14;
    goto LABEL_22;
  }

  v12 = global_os_log;
  if (v11 >= 10001)
  {
    if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_23;
    }

    v17 = 136447490;
    v18 = "connection_write_now_block_invoke";
    v19 = 1024;
    *v20 = v11;
    *&v20[4] = 2048;
    *&v20[6] = v6;
    *&v20[14] = 2080;
    *&v20[16] = "connection";
    *&v20[24] = 2080;
    *&v20[26] = "macos-ioloop.c";
    v21 = 1024;
    v22 = 588;
    v15 = "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d";
    v16 = v12;
LABEL_22:
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_FAULT, v15, &v17, 0x36u);
LABEL_23:
    abort();
  }

  if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 136447490;
    v18 = "connection_write_now_block_invoke";
    v19 = 1024;
    *v20 = v11;
    *&v20[4] = 2048;
    *&v20[6] = v6;
    *&v20[14] = 2080;
    *&v20[16] = "connection";
    *&v20[24] = 2080;
    *&v20[26] = "macos-ioloop.c";
    v21 = 1024;
    v22 = 588;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d", &v17, 0x36u);
    v6 = *(a1 + 32);
    v11 = *(v6 + 32);
  }

  *(v6 + 32) = v11 - 1;
  if (v11 == 1)
  {
    v13 = global_os_log;
    if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 136447234;
      v18 = "connection_write_now_block_invoke";
      v19 = 2048;
      *v20 = v6;
      *&v20[8] = 2080;
      *&v20[10] = "connection";
      *&v20[18] = 2080;
      *&v20[20] = "macos-ioloop.c";
      *&v20[28] = 1024;
      *&v20[30] = 588;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC:      finalize: %p (%10s): %s:%d", &v17, 0x30u);
      v6 = *(a1 + 32);
    }

    ++comm_finalized;
    comm_finalize(v6);
  }
}

void ioloop_listener_permitted_interface_list_set(uint64_t a1, int *a2)
{
  v4 = *(a1 + 408);
  if (v4)
  {
    ifpermit_list_release_(v4, 998);
  }

  *(a1 + 408) = a2;

  ifpermit_list_retain_(a2, 1001);
}

void __ioloop_listener_cancel_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 248);
  if (v3)
  {
    v3(*(a1 + 32), *(v2 + 200));
    v2 = *(a1 + 32);
    if (!v2)
    {
      return;
    }
  }

  v4 = *(v2 + 32);
  if (!v4)
  {
    v7 = global_os_log;
    if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_17;
    }

    v10 = 136447490;
    v11 = "ioloop_listener_cancel_block_invoke";
    v12 = 1024;
    *v13 = 0;
    *&v13[4] = 2048;
    *&v13[6] = v2;
    *&v13[14] = 2080;
    *&v13[16] = "connection";
    *&v13[24] = 2080;
    *&v13[26] = "macos-ioloop.c";
    v14 = 1024;
    v15 = 1184;
    v8 = "%{public}s: ALLOC: release after finalize at %2.2d: %p (%10s): %s:%d";
    v9 = v7;
    goto LABEL_16;
  }

  v5 = global_os_log;
  if (v4 >= 10001)
  {
    if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_17;
    }

    v10 = 136447490;
    v11 = "ioloop_listener_cancel_block_invoke";
    v12 = 1024;
    *v13 = v4;
    *&v13[4] = 2048;
    *&v13[6] = v2;
    *&v13[14] = 2080;
    *&v13[16] = "connection";
    *&v13[24] = 2080;
    *&v13[26] = "macos-ioloop.c";
    v14 = 1024;
    v15 = 1184;
    v8 = "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d";
    v9 = v5;
LABEL_16:
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_FAULT, v8, &v10, 0x36u);
LABEL_17:
    abort();
  }

  if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 136447490;
    v11 = "ioloop_listener_cancel_block_invoke";
    v12 = 1024;
    *v13 = v4;
    *&v13[4] = 2048;
    *&v13[6] = v2;
    *&v13[14] = 2080;
    *&v13[16] = "connection";
    *&v13[24] = 2080;
    *&v13[26] = "macos-ioloop.c";
    v14 = 1024;
    v15 = 1184;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d", &v10, 0x36u);
    v2 = *(a1 + 32);
    v4 = *(v2 + 32);
  }

  *(v2 + 32) = v4 - 1;
  if (v4 == 1)
  {
    v6 = global_os_log;
    if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 136447234;
      v11 = "ioloop_listener_cancel_block_invoke";
      v12 = 2048;
      *v13 = v2;
      *&v13[8] = 2080;
      *&v13[10] = "connection";
      *&v13[18] = 2080;
      *&v13[20] = "macos-ioloop.c";
      *&v13[28] = 1024;
      *&v13[30] = 1184;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC:      finalize: %p (%10s): %s:%d", &v10, 0x30u);
      v2 = *(a1 + 32);
    }

    ++listener_finalized;
    listener_finalize(v2);
  }
}

_DWORD *ioloop_listener_create(int a1, int a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, uint64_t a10)
{
  if (a3)
  {
    v16 = *(a3 + 1);
    v17 = bswap32(*(a3 + 2)) >> 16;
  }

  else
  {
    v16 = 0;
    v17 = 0;
  }

  if (!a5)
  {
    v28 = global_os_log;
    if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      v131 = "ioloop_listener_create";
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "%{public}s: ioloop_setup: no datagram callback provided.", buf, 0xCu);
    }

    return 0;
  }

  v113 = v17;
  snprintf(__str, 0xAuLL, "%d", v17);
  v18 = malloc_type_calloc(1uLL, 0x1B0uLL, 0x2C50A06DuLL);
  if (!v18)
  {
    v108 = global_os_log;
    if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
    {
LABEL_195:
      __break(1u);
    }

    *buf = 136446722;
    v131 = "ioloop_listener_create";
    v132 = 2048;
    *v133 = 1;
    *&v133[8] = 2048;
    *&v133[10] = 432;
    v32 = "%{public}s: strict_calloc(%zu, %zu) failed";
    v106 = v108;
    v107 = 32;
LABEL_194:
    _os_log_impl(&_mh_execute_header, v106, OS_LOG_TYPE_ERROR, v32, buf, v107);
    goto LABEL_195;
  }

  v19 = v18;
  v18[45] = ++cur_connection_serial;
  v20 = global_os_log;
  if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
  {
    v21 = v19[8];
    *buf = 136447490;
    v131 = "ioloop_listener_create";
    v132 = 1024;
    *v133 = v21;
    *&v133[4] = 2048;
    *&v133[6] = v19;
    *&v133[14] = 2080;
    *&v133[16] = "listener";
    *&v133[24] = 2080;
    *&v133[26] = "macos-ioloop.c";
    *&v133[34] = 1024;
    *&v133[36] = 1619;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC:  retain at %2.2d: %p (%10s): %s:%d", buf, 0x36u);
  }

  v22 = v19[8];
  if (!v22)
  {
    ++listener_created;
    v19[8] = 1;
    if (a4)
    {
      goto LABEL_11;
    }

LABEL_29:
    v31 = global_os_log;
    if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_195;
    }

    *buf = 136446210;
    v131 = "strict_strdup";
    v32 = "%{public}s: strict_strdup called with NULL string";
LABEL_193:
    v106 = v31;
    v107 = 12;
    goto LABEL_194;
  }

  v23 = v22 + 1;
  v19[8] = v22 + 1;
  if (v22 + 1 >= 10001)
  {
    v109 = global_os_log;
    if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_218;
    }

    *buf = 136447490;
    v131 = "ioloop_listener_create";
    v132 = 1024;
    *v133 = v23;
    *&v133[4] = 2048;
    *&v133[6] = v19;
    *&v133[14] = 2080;
    *&v133[16] = "listener";
    *&v133[24] = 2080;
    *&v133[26] = "macos-ioloop.c";
    *&v133[34] = 1024;
    *&v133[36] = 1619;
    v55 = "%{public}s: ALLOC: retain at %2.2d: %p (%10s): %s:%d";
    v110 = v109;
    goto LABEL_217;
  }

  if (!a4)
  {
    goto LABEL_29;
  }

LABEL_11:
  v24 = strdup(a4);
  if (!v24)
  {
    v31 = global_os_log;
    if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_195;
    }

    *buf = 136446210;
    v131 = "strict_strdup";
    v32 = "%{public}s: strdup() failed";
    goto LABEL_193;
  }

  *(v19 + 32) = a7;
  *(v19 + 24) = v24;
  *(v19 + 25) = a10;
  if (a1)
  {
    v25 = 544;
  }

  else
  {
    v25 = 512;
  }

  *(v19 + 212) = v25 | v19[106] & 0xFDDF;
  if (a1)
  {
    *(v19 + 26) = a5;
    *(v19 + 30) = 0;
    *(v19 + 31) = a6;
    *(v19 + 28) = 0;
    if (v113)
    {
      *(v19 + 80) = v113;
      if (a3 && v16)
      {
        if (v16 == 2)
        {
          v26 = (a3 + 4);
          v27 = 2;
        }

        else
        {
          v26 = (a3 + 8);
          v27 = v16;
        }

        inet_ntop(v27, v26, hostname, 0x2Eu);
      }

      else if (v16 == 2)
      {
        strcpy(hostname, "0.0.0.0");
      }

      else
      {
        strcpy(hostname, "::");
      }

      host = nw_endpoint_create_host(hostname, __str);
      if (!host)
      {
        v59 = global_os_log;
        if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446210;
          v131 = "ioloop_listener_create";
          _os_log_impl(&_mh_execute_header, v59, OS_LOG_TYPE_ERROR, "%{public}s: No memory for listener endpoint.", buf, 0xCu);
        }

        v60 = v19[8];
        if (!v60)
        {
          v54 = global_os_log;
          if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
          {
            goto LABEL_218;
          }

          *buf = 136447490;
          v131 = "ioloop_listener_create";
          v132 = 1024;
          *v133 = 0;
          *&v133[4] = 2048;
          *&v133[6] = v19;
          *&v133[14] = 2080;
          *&v133[16] = "listener";
          *&v133[24] = 2080;
          *&v133[26] = "macos-ioloop.c";
          *&v133[34] = 1024;
          *&v133[36] = 1675;
          v55 = "%{public}s: ALLOC: release after finalize at %2.2d: %p (%10s): %s:%d";
          goto LABEL_216;
        }

        v54 = global_os_log;
        if (v60 >= 10001)
        {
          if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
          {
            goto LABEL_218;
          }

          *buf = 136447490;
          v131 = "ioloop_listener_create";
          v132 = 1024;
          *v133 = v60;
          *&v133[4] = 2048;
          *&v133[6] = v19;
          *&v133[14] = 2080;
          *&v133[16] = "listener";
          *&v133[24] = 2080;
          *&v133[26] = "macos-ioloop.c";
          *&v133[34] = 1024;
          *&v133[36] = 1675;
          v55 = "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d";
          goto LABEL_216;
        }

        if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136447490;
          v131 = "ioloop_listener_create";
          v132 = 1024;
          *v133 = v60;
          *&v133[4] = 2048;
          *&v133[6] = v19;
          *&v133[14] = 2080;
          *&v133[16] = "listener";
          *&v133[24] = 2080;
          *&v133[26] = "macos-ioloop.c";
          *&v133[34] = 1024;
          *&v133[36] = 1675;
          _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d", buf, 0x36u);
          v60 = v19[8];
        }

        v19[8] = v60 - 1;
        if (v60 != 1)
        {
          return 0;
        }

        v58 = global_os_log;
        if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_115;
        }

        *buf = 136447234;
        v131 = "ioloop_listener_create";
        v132 = 2048;
        *v133 = v19;
        *&v133[8] = 2080;
        *&v133[10] = "listener";
        *&v133[18] = 2080;
        *&v133[20] = "macos-ioloop.c";
        *&v133[28] = 1024;
        *&v133[30] = 1675;
        goto LABEL_114;
      }

      v40 = host;
    }

    else
    {
      v40 = 0;
      *(v19 + 184) = 1;
    }

    v46 = _nw_parameters_configure_protocol_disable;
    if (a8 && a2)
    {
      v46 = configure_tls;
      configure_tls[0] = _NSConcreteStackBlock;
      configure_tls[1] = 0x40000000;
      configure_tls[2] = __ioloop_listener_create_block_invoke;
      configure_tls[3] = &__block_descriptor_tmp_17_1503;
      configure_tls[4] = a8;
    }

    secure_tcp = nw_parameters_create_secure_tcp(v46, &__block_literal_global_1504);
    *(v19 + 2) = secure_tcp;
    if (secure_tcp)
    {
      if (v40)
      {
        nw_parameters_set_local_endpoint(secure_tcp, v40);
        nw_release(v40);
        secure_tcp = *(v19 + 2);
      }

      nw_parameters_set_reuse_local_address(secure_tcp, 1);
      nw_parameters_prohibit_interface_type(*(v19 + 2), nw_interface_type_cellular);
      *(v19 + 1) = 0;
      v48 = nw_listener_create(*(v19 + 2));
      *(v19 + 1) = v48;
      if (v48)
      {
        ++nw_listener_created;
        handler[0] = _NSConcreteStackBlock;
        handler[1] = 0x40000000;
        handler[2] = __ioloop_listener_create_block_invoke_19;
        handler[3] = &__block_descriptor_tmp_21;
        handler[4] = v19;
        nw_listener_set_new_connection_handler(v48, handler);
        v49 = *(v19 + 1);
        v114[0] = _NSConcreteStackBlock;
        v114[1] = 0x40000000;
        v114[2] = __ioloop_listener_create_block_invoke_2_22;
        v114[3] = &__block_descriptor_tmp_24;
        v114[4] = v19;
        nw_listener_set_state_changed_handler(v49, v114);
        v50 = global_os_log;
        if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
        {
          v51 = v19[8];
          *buf = 136447490;
          v131 = "ioloop_listener_create";
          v132 = 1024;
          *v133 = v51;
          *&v133[4] = 2048;
          *&v133[6] = v19;
          *&v133[14] = 2080;
          *&v133[16] = "listener";
          *&v133[24] = 2080;
          *&v133[26] = "macos-ioloop.c";
          *&v133[34] = 1024;
          *&v133[36] = 1754;
          _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC:  retain at %2.2d: %p (%10s): %s:%d", buf, 0x36u);
        }

        v52 = v19[8];
        if (v52)
        {
          v53 = v52 + 1;
          v19[8] = v52 + 1;
          if (v52 + 1 >= 10001)
          {
            v54 = global_os_log;
            if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
            {
              goto LABEL_218;
            }

            *buf = 136447490;
            v131 = "ioloop_listener_create";
            v132 = 1024;
            *v133 = v53;
            *&v133[4] = 2048;
            *&v133[6] = v19;
            *&v133[14] = 2080;
            *&v133[16] = "listener";
            *&v133[24] = 2080;
            *&v133[26] = "macos-ioloop.c";
            *&v133[34] = 1024;
            *&v133[36] = 1754;
            v55 = "%{public}s: ALLOC: retain at %2.2d: %p (%10s): %s:%d";
LABEL_216:
            v110 = v54;
LABEL_217:
            _os_log_impl(&_mh_execute_header, v110, OS_LOG_TYPE_FAULT, v55, buf, 0x36u);
LABEL_218:
            abort();
          }
        }

        else
        {
          ++listener_created;
          v19[8] = 1;
        }

        nw_listener_set_queue(*(v19 + 1), ioloop_main_queue);
        nw_listener_start(*(v19 + 1));
        return v19;
      }

      v61 = global_os_log;
      if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446210;
        v131 = "ioloop_listener_create";
        _os_log_impl(&_mh_execute_header, v61, OS_LOG_TYPE_ERROR, "%{public}s: no memory for nw_listener object", buf, 0xCu);
      }

      v62 = v19[8];
      if (!v62)
      {
        v54 = global_os_log;
        if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
        {
          goto LABEL_218;
        }

        *buf = 136447490;
        v131 = "ioloop_listener_create";
        v132 = 1024;
        *v133 = 0;
        *&v133[4] = 2048;
        *&v133[6] = v19;
        *&v133[14] = 2080;
        *&v133[16] = "listener";
        *&v133[24] = 2080;
        *&v133[26] = "macos-ioloop.c";
        *&v133[34] = 1024;
        *&v133[36] = 1742;
        v55 = "%{public}s: ALLOC: release after finalize at %2.2d: %p (%10s): %s:%d";
        goto LABEL_216;
      }

      v54 = global_os_log;
      if (v62 >= 10001)
      {
        if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
        {
          goto LABEL_218;
        }

        *buf = 136447490;
        v131 = "ioloop_listener_create";
        v132 = 1024;
        *v133 = v62;
        *&v133[4] = 2048;
        *&v133[6] = v19;
        *&v133[14] = 2080;
        *&v133[16] = "listener";
        *&v133[24] = 2080;
        *&v133[26] = "macos-ioloop.c";
        *&v133[34] = 1024;
        *&v133[36] = 1742;
        v55 = "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d";
        goto LABEL_216;
      }

      if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136447490;
        v131 = "ioloop_listener_create";
        v132 = 1024;
        *v133 = v62;
        *&v133[4] = 2048;
        *&v133[6] = v19;
        *&v133[14] = 2080;
        *&v133[16] = "listener";
        *&v133[24] = 2080;
        *&v133[26] = "macos-ioloop.c";
        *&v133[34] = 1024;
        *&v133[36] = 1742;
        _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d", buf, 0x36u);
        v62 = v19[8];
      }

      v19[8] = v62 - 1;
      if (v62 != 1)
      {
        return 0;
      }

      v58 = global_os_log;
      if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
      {
LABEL_115:
        ++listener_finalized;
        listener_finalize(v19);
        return 0;
      }

      *buf = 136447234;
      v131 = "ioloop_listener_create";
      v132 = 2048;
      *v133 = v19;
      *&v133[8] = 2080;
      *&v133[10] = "listener";
      *&v133[18] = 2080;
      *&v133[20] = "macos-ioloop.c";
      *&v133[28] = 1024;
      *&v133[30] = 1742;
    }

    else
    {
      v56 = global_os_log;
      if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446210;
        v131 = "ioloop_listener_create";
        _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_ERROR, "%{public}s: No memory for listener parameters.", buf, 0xCu);
      }

      nw_release(v40);
      v57 = v19[8];
      if (!v57)
      {
        v54 = global_os_log;
        if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
        {
          goto LABEL_218;
        }

        *buf = 136447490;
        v131 = "ioloop_listener_create";
        v132 = 1024;
        *v133 = 0;
        *&v133[4] = 2048;
        *&v133[6] = v19;
        *&v133[14] = 2080;
        *&v133[16] = "listener";
        *&v133[24] = 2080;
        *&v133[26] = "macos-ioloop.c";
        *&v133[34] = 1024;
        *&v133[36] = 1708;
        v55 = "%{public}s: ALLOC: release after finalize at %2.2d: %p (%10s): %s:%d";
        goto LABEL_216;
      }

      v54 = global_os_log;
      if (v57 >= 10001)
      {
        if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
        {
          goto LABEL_218;
        }

        *buf = 136447490;
        v131 = "ioloop_listener_create";
        v132 = 1024;
        *v133 = v57;
        *&v133[4] = 2048;
        *&v133[6] = v19;
        *&v133[14] = 2080;
        *&v133[16] = "listener";
        *&v133[24] = 2080;
        *&v133[26] = "macos-ioloop.c";
        *&v133[34] = 1024;
        *&v133[36] = 1708;
        v55 = "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d";
        goto LABEL_216;
      }

      if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136447490;
        v131 = "ioloop_listener_create";
        v132 = 1024;
        *v133 = v57;
        *&v133[4] = 2048;
        *&v133[6] = v19;
        *&v133[14] = 2080;
        *&v133[16] = "listener";
        *&v133[24] = 2080;
        *&v133[26] = "macos-ioloop.c";
        *&v133[34] = 1024;
        *&v133[36] = 1708;
        _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d", buf, 0x36u);
        v57 = v19[8];
      }

      v19[8] = v57 - 1;
      if (v57 != 1)
      {
        return 0;
      }

      v58 = global_os_log;
      if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_115;
      }

      *buf = 136447234;
      v131 = "ioloop_listener_create";
      v132 = 2048;
      *v133 = v19;
      *&v133[8] = 2080;
      *&v133[10] = "listener";
      *&v133[18] = 2080;
      *&v133[20] = "macos-ioloop.c";
      *&v133[28] = 1024;
      *&v133[30] = 1708;
    }

LABEL_114:
    _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC:      finalize: %p (%10s): %s:%d", buf, 0x30u);
    goto LABEL_115;
  }

  v123 = a9;
  if (!a3 || (v29 = *(a3 + 1), (v30 = v29) == 0))
  {
    v30 = 0;
    v29 = 30;
  }

  v122 = 1;
  *&v119.sa_len = 0;
  *&v119.sa_data[6] = 0;
  v121 = 0;
  v120 = 0;
  v118 = 0;
  *(v19 + 289) = v29;
  if (v29 == 2)
  {
    *(v19 + 288) = 16;
  }

  else
  {
    *(v19 + 288) = 28;
    if (v29 == 30)
    {
      v33 = 1;
      goto LABEL_34;
    }
  }

  v33 = 0;
LABEL_34:
  *(v19 + 145) = __rev16(v113);
  v19[37] = -1;
  v34 = socket(v29, 2, 17);
  v19[37] = v34;
  if (v34 < 0)
  {
    v36 = global_os_log;
    if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
    {
      v41 = __error();
      v42 = strerror(*v41);
      *buf = 136446466;
      v131 = "ioloop_udp_listener_setup";
      v132 = 2080;
      *v133 = v42;
      v39 = "%{public}s: Can't get socket: %s";
      goto LABEL_105;
    }

LABEL_107:
    close(v19[37]);
    v19[37] = -1;
    v74 = v19[8];
    if (!v74)
    {
      v54 = global_os_log;
      if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_218;
      }

      *buf = 136447490;
      v131 = "ioloop_udp_listener_setup";
      v132 = 1024;
      *v133 = 0;
      *&v133[4] = 2048;
      *&v133[6] = v19;
      *&v133[14] = 2080;
      *&v133[16] = "listener";
      *&v133[24] = 2080;
      *&v133[26] = "macos-ioloop.c";
      *&v133[34] = 1024;
      *&v133[36] = 1482;
      v55 = "%{public}s: ALLOC: release after finalize at %2.2d: %p (%10s): %s:%d";
      goto LABEL_216;
    }

    v54 = global_os_log;
    if (v74 >= 10001)
    {
      if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_218;
      }

      *buf = 136447490;
      v131 = "ioloop_udp_listener_setup";
      v132 = 1024;
      *v133 = v74;
      *&v133[4] = 2048;
      *&v133[6] = v19;
      *&v133[14] = 2080;
      *&v133[16] = "listener";
      *&v133[24] = 2080;
      *&v133[26] = "macos-ioloop.c";
      *&v133[34] = 1024;
      *&v133[36] = 1482;
      v55 = "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d";
      goto LABEL_216;
    }

    if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136447490;
      v131 = "ioloop_udp_listener_setup";
      v132 = 1024;
      *v133 = v74;
      *&v133[4] = 2048;
      *&v133[6] = v19;
      *&v133[14] = 2080;
      *&v133[16] = "listener";
      *&v133[24] = 2080;
      *&v133[26] = "macos-ioloop.c";
      *&v133[34] = 1024;
      *&v133[36] = 1482;
      _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d", buf, 0x36u);
      v74 = v19[8];
    }

    v19[8] = v74 - 1;
    if (v74 != 1)
    {
      return 0;
    }

    v58 = global_os_log;
    if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_115;
    }

    *buf = 136447234;
    v131 = "ioloop_udp_listener_setup";
    v132 = 2048;
    *v133 = v19;
    *&v133[8] = 2080;
    *&v133[10] = "listener";
    *&v133[18] = 2080;
    *&v133[20] = "macos-ioloop.c";
    *&v133[28] = 1024;
    *&v133[30] = 1482;
    goto LABEL_114;
  }

  if (setsockopt(v34, 0xFFFF, 4, &v122, 4u) < 0)
  {
    v36 = global_os_log;
    if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
    {
      v43 = __error();
      v44 = strerror(*v43);
      *buf = 136446466;
      v131 = "ioloop_udp_listener_setup";
      v132 = 2080;
      *v133 = v44;
      v39 = "%{public}s: SO_REUSEADDR failed: %s";
      goto LABEL_105;
    }

    goto LABEL_107;
  }

  if (setsockopt(v19[37], 0xFFFF, 512, &v122, 4u) < 0)
  {
    v36 = global_os_log;
    if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
    {
      v63 = __error();
      v64 = strerror(*v63);
      *buf = 136446466;
      v131 = "ioloop_udp_listener_setup";
      v132 = 2080;
      *v133 = v64;
      v39 = "%{public}s: SO_REUSEPORT failed: %s";
      goto LABEL_105;
    }

    goto LABEL_107;
  }

  v117 = 160;
  v35 = v19[37];
  if (v33)
  {
    if (setsockopt(v35, 41, 36, &v117, 4u) < 0)
    {
      v36 = global_os_log;
      if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
      {
        v37 = __error();
        v38 = strerror(*v37);
        *buf = 136446466;
        v131 = "ioloop_udp_listener_setup";
        v132 = 2080;
        *v133 = v38;
        v39 = "%{public}s: IPV6_TCLASS failed: %s";
LABEL_105:
        v72 = v36;
        v73 = 22;
LABEL_106:
        _os_log_impl(&_mh_execute_header, v72, OS_LOG_TYPE_ERROR, v39, buf, v73);
        goto LABEL_107;
      }

      goto LABEL_107;
    }
  }

  else if (setsockopt(v35, 0, 3, &v117, 4u) < 0)
  {
    v36 = global_os_log;
    if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
    {
      v70 = __error();
      v71 = strerror(*v70);
      *buf = 136446466;
      v131 = "ioloop_udp_listener_setup";
      v132 = 2080;
      *v133 = v71;
      v39 = "%{public}s: IP_TOS failed: %s";
      goto LABEL_105;
    }

    goto LABEL_107;
  }

  if (v30 == 30)
  {
    v65 = setsockopt(v19[37], 41, 27, &v122, 4u);
    v66 = global_os_log;
    v67 = os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR);
    if (v65 < 0)
    {
      if (!v67)
      {
        goto LABEL_107;
      }

      v76 = *(v19 + 296);
      if ((v76 & 0xFE) == 0xFC)
      {
        v77 = "ULA: ";
      }

      else if (v76 == 254 && (*(v19 + 297) & 0xC0) == 0x80)
      {
        v77 = "LUA: ";
      }

      else if ((v76 & 0xE0) == 0x20)
      {
        v77 = "GUA: ";
      }

      else
      {
        v77 = "";
      }

      *buf = 136448771;
      v131 = "ioloop_udp_listener_setup";
      v132 = 2082;
      *v133 = v77;
      *&v133[8] = 2160;
      *&v133[10] = 1752392040;
      *&v133[18] = 1041;
      *&v133[20] = 6;
      *&v133[24] = 2097;
      *&v133[26] = v19 + 74;
      *&v133[34] = 2160;
      *&v133[36] = 1752392040;
      v134 = 1042;
      v135 = 2;
      v136 = 2098;
      v137 = v19 + 302;
      v138 = 2160;
      v139 = 1752392040;
      v140 = 1041;
      v141 = 8;
      v142 = 2097;
      v143 = v19 + 76;
      v39 = "%{public}s: Unable to set IPv6-only flag on UDP socket for {%{public}s%{private, mask.hash, srp:in6_addr_segment}.6P:%{public, mask.hash, srp:in6_addr_segment}.2P:%{private, mask.hash, srp:in6_addr_segment}.8P}";
      v72 = v66;
      v73 = 100;
      goto LABEL_106;
    }

    if (v67)
    {
      v68 = *(v19 + 296);
      if ((v68 & 0xFE) == 0xFC)
      {
        v69 = "ULA: ";
      }

      else if (v68 == 254 && (*(v19 + 297) & 0xC0) == 0x80)
      {
        v69 = "LUA: ";
      }

      else if ((v68 & 0xE0) == 0x20)
      {
        v69 = "GUA: ";
      }

      else
      {
        v69 = "";
      }

      *buf = 136448771;
      v131 = "ioloop_udp_listener_setup";
      v132 = 2082;
      *v133 = v69;
      *&v133[8] = 2160;
      *&v133[10] = 1752392040;
      *&v133[18] = 1041;
      *&v133[20] = 6;
      *&v133[24] = 2097;
      *&v133[26] = v19 + 74;
      *&v133[34] = 2160;
      *&v133[36] = 1752392040;
      v134 = 1042;
      v135 = 2;
      v136 = 2098;
      v137 = v19 + 302;
      v138 = 2160;
      v139 = 1752392040;
      v140 = 1041;
      v141 = 8;
      v142 = 2097;
      v143 = v19 + 76;
      _os_log_impl(&_mh_execute_header, v66, OS_LOG_TYPE_ERROR, "%{public}s: Successfully set IPv6-only flag on UDP socket for {%{public}s%{private, mask.hash, srp:in6_addr_segment}.6P:%{public, mask.hash, srp:in6_addr_segment}.2P:%{private, mask.hash, srp:in6_addr_segment}.8P}", buf, 0x64u);
    }
  }

  v78 = *(v19 + 288);
  v118 = v78;
  if (bind(v19[37], v19 + 18, v78) < 0)
  {
    v87 = global_os_log;
    v88 = os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR);
    if (v30 == 2)
    {
      if (!v88)
      {
        goto LABEL_107;
      }

      v89 = __error();
      v90 = strerror(*v89);
      *buf = 136447491;
      v131 = "ioloop_udp_listener_setup";
      v132 = 2160;
      *v133 = 1752392040;
      *&v133[8] = 1041;
      *&v133[10] = 4;
      *&v133[14] = 2097;
      *&v133[16] = v19 + 73;
      *&v133[24] = 1024;
      *&v133[26] = v113;
      *&v133[30] = 2080;
      *&v133[32] = v90;
      v39 = "%{public}s: Can't bind to %{private, mask.hash, network:in_addr}.4P#%d: %s";
      v72 = v87;
      v73 = 54;
    }

    else
    {
      if (!v88)
      {
        goto LABEL_107;
      }

      v95 = *(v19 + 296);
      if ((v95 & 0xFE) == 0xFC)
      {
        v96 = "ULA: ";
      }

      else if (v95 == 254 && (*(v19 + 297) & 0xC0) == 0x80)
      {
        v96 = "LUA: ";
      }

      else if ((v95 & 0xE0) == 0x20)
      {
        v96 = "GUA: ";
      }

      else
      {
        v96 = "";
      }

      v104 = __error();
      v105 = strerror(*v104);
      *buf = 136449283;
      v131 = "ioloop_udp_listener_setup";
      v132 = 2082;
      *v133 = v96;
      *&v133[8] = 2160;
      *&v133[10] = 1752392040;
      *&v133[18] = 1041;
      *&v133[20] = 6;
      *&v133[24] = 2097;
      *&v133[26] = v19 + 74;
      *&v133[34] = 2160;
      *&v133[36] = 1752392040;
      v134 = 1042;
      v135 = 2;
      v136 = 2098;
      v137 = v19 + 302;
      v138 = 2160;
      v139 = 1752392040;
      v140 = 1041;
      v141 = 8;
      v142 = 2097;
      v143 = v19 + 76;
      v144 = 1024;
      v145 = v113;
      v146 = 2080;
      v147 = v105;
      v39 = "%{public}s: Can't bind to {%{public}s%{private, mask.hash, srp:in6_addr_segment}.6P:%{public, mask.hash, srp:in6_addr_segment}.2P:%{private, mask.hash, srp:in6_addr_segment}.8P}#%d: %s";
      v72 = v87;
      v73 = 116;
    }

    goto LABEL_106;
  }

  if (fcntl(v19[37], 4, 4) < 0)
  {
    v91 = global_os_log;
    if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_107;
    }

    v92 = *(v19 + 24);
    v93 = __error();
    v94 = strerror(*v93);
    *buf = 136446722;
    v131 = "ioloop_udp_listener_setup";
    v132 = 2080;
    *v133 = v92;
    *&v133[8] = 2080;
    *&v133[10] = v94;
    v39 = "%{public}s: %s: Can't set O_NONBLOCK: %s";
    goto LABEL_163;
  }

  v79 = v113;
  if (!v113)
  {
    v118 = 28;
    if (getsockname(v19[37], &v119, &v118) < 0)
    {
      v36 = global_os_log;
      if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_107;
      }

      v102 = __error();
      v103 = strerror(*v102);
      *buf = 136446466;
      v131 = "ioloop_udp_listener_setup";
      v132 = 2080;
      *v133 = v103;
      v39 = "%{public}s: getsockname: %s";
      goto LABEL_105;
    }

    v79 = bswap32(*v119.sa_data) >> 16;
  }

  *(v19 + 80) = v79;
  v80 = global_os_log;
  if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v131 = "ioloop_udp_listener_setup";
    v132 = 1024;
    *v133 = v79;
    _os_log_impl(&_mh_execute_header, v80, OS_LOG_TYPE_DEFAULT, "%{public}s: port is %d", buf, 0x12u);
  }

  if (v123)
  {
    setsockopt(v19[37], 0, 25, &v123, 4u);
    setsockopt(v19[37], 41, 125, &v123, 4u);
  }

  if (v30 == 2)
  {
    v81 = 0;
  }

  else
  {
    v81 = 41;
  }

  if (v30 == 2)
  {
    v82 = 26;
  }

  else
  {
    v82 = 61;
  }

  if (setsockopt(v19[37], v81, v82, &v122, 4u) < 0)
  {
    v91 = global_os_log;
    if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_107;
    }

    if (v30 == 2)
    {
      v97 = "IP_PKTINFO";
    }

    else
    {
      v97 = "IPV6_RECVPKTINFO";
    }

    v98 = __error();
    v99 = strerror(*v98);
    *buf = 136446722;
    v131 = "ioloop_udp_listener_setup";
    v132 = 2080;
    *v133 = v97;
    *&v133[8] = 2080;
    *&v133[10] = v99;
    v39 = "%{public}s: Can't set %s: %s.";
LABEL_163:
    v72 = v91;
    v73 = 32;
    goto LABEL_106;
  }

  ioloop_add_reader(v19 + 14);
  v83 = global_os_log;
  if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
  {
    v84 = v19[8];
    *buf = 136447490;
    v131 = "ioloop_udp_listener_setup";
    v132 = 1024;
    *v133 = v84;
    *&v133[4] = 2048;
    *&v133[6] = v19;
    *&v133[14] = 2080;
    *&v133[16] = "listener";
    *&v133[24] = 2080;
    *&v133[26] = "macos-ioloop.c";
    *&v133[34] = 1024;
    *&v133[36] = 1521;
    _os_log_impl(&_mh_execute_header, v83, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC:  retain at %2.2d: %p (%10s): %s:%d", buf, 0x36u);
  }

  v85 = v19[8];
  if (v85)
  {
    v86 = v85 + 1;
    v19[8] = v85 + 1;
    if (v85 + 1 >= 10001)
    {
      v54 = global_os_log;
      if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_218;
      }

      *buf = 136447490;
      v131 = "ioloop_udp_listener_setup";
      v132 = 1024;
      *v133 = v86;
      *&v133[4] = 2048;
      *&v133[6] = v19;
      *&v133[14] = 2080;
      *&v133[16] = "listener";
      *&v133[24] = 2080;
      *&v133[26] = "macos-ioloop.c";
      *&v133[34] = 1024;
      *&v133[36] = 1521;
      v55 = "%{public}s: ALLOC: retain at %2.2d: %p (%10s): %s:%d";
      goto LABEL_216;
    }
  }

  else
  {
    ++listener_created;
    v86 = 1;
    v19[8] = 1;
  }

  *(v19 + 144) = 1;
  *(v19 + 13) = ioloop_listener_context_release;
  *(v19 + 14) = v19;
  if (*(v19 + 32))
  {
    v100 = global_os_log;
    if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136447490;
      v131 = "ioloop_udp_listener_setup";
      v132 = 1024;
      *v133 = v86;
      *&v133[4] = 2048;
      *&v133[6] = v19;
      *&v133[14] = 2080;
      *&v133[16] = "listener";
      *&v133[24] = 2080;
      *&v133[26] = "macos-ioloop.c";
      *&v133[34] = 1024;
      *&v133[36] = 1528;
      _os_log_impl(&_mh_execute_header, v100, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC:  retain at %2.2d: %p (%10s): %s:%d", buf, 0x36u);
      v86 = v19[8];
    }

    if (v86)
    {
      v101 = v86 + 1;
      v19[8] = v101;
      if (v101 >= 10001)
      {
        v54 = global_os_log;
        if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
        {
          goto LABEL_218;
        }

        *buf = 136447490;
        v131 = "ioloop_udp_listener_setup";
        v132 = 1024;
        *v133 = v101;
        *&v133[4] = 2048;
        *&v133[6] = v19;
        *&v133[14] = 2080;
        *&v133[16] = "listener";
        *&v133[24] = 2080;
        *&v133[26] = "macos-ioloop.c";
        *&v133[34] = 1024;
        *&v133[36] = 1528;
        v55 = "%{public}s: ALLOC: retain at %2.2d: %p (%10s): %s:%d";
        goto LABEL_216;
      }
    }

    else
    {
      ++listener_created;
      v19[8] = 1;
    }

    *hostname = _NSConcreteStackBlock;
    v125 = 0x40000000;
    v126 = __ioloop_udp_listener_setup_block_invoke;
    v127 = &__block_descriptor_tmp_50;
    v128 = v19;
    dispatch_async(ioloop_main_queue, hostname);
  }

  *(v19 + 26) = a5;
  *(v19 + 30) = 0;
  *(v19 + 31) = a6;
  *(v19 + 28) = 0;
  return v19;
}

void ioloop_add_reader(int *a1)
{
  *(a1 + 2) = ioloop_udp_read_callback;
  v2 = *(a1 + 9);
  if (v2 || (v2 = dispatch_source_create(&_dispatch_source_type_read, a1[23], 0, ioloop_main_queue), (*(a1 + 9) = v2) != 0))
  {
    dispatch_source_set_event_handler_f(v2, ioloop_read_event);
    dispatch_source_set_cancel_handler_f(*(a1 + 9), ioloop_read_source_cancel_callback);
    dispatch_set_finalizer_f(*(a1 + 9), ioloop_read_source_finalize);
    dispatch_set_context(*(a1 + 9), a1);
    v3 = global_os_log;
    if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *a1;
      *buf = 136447490;
      v18 = "ioloop_add_reader";
      v19 = 1024;
      *v20 = v4;
      *&v20[4] = 2048;
      *&v20[6] = a1;
      v21 = 2080;
      v22 = "io";
      v23 = 2080;
      v24 = "macos-ioloop.c";
      v25 = 1024;
      v26 = 2407;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC:  retain at %2.2d: %p (%10s): %s:%d", buf, 0x36u);
    }

    if (*a1)
    {
      v5 = *a1 + 1;
      *a1 = v5;
      if (v5 >= 10001)
      {
        v16 = v5;
        v6 = global_os_log;
        if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
        {
          *buf = 136447490;
          v18 = "ioloop_add_reader";
          v19 = 1024;
          *v20 = v16;
          *&v20[4] = 2048;
          *&v20[6] = a1;
          v21 = 2080;
          v22 = "io";
          v23 = 2080;
          v24 = "macos-ioloop.c";
          v25 = 1024;
          v26 = 2407;
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_FAULT, "%{public}s: ALLOC: retain at %2.2d: %p (%10s): %s:%d", buf, 0x36u);
        }

        abort();
      }
    }

    else
    {
      ++file_descriptor_created;
      *a1 = 1;
    }

    dispatch_resume(*(a1 + 9));
    v7 = global_os_log;
    if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
    {
      v8 = a1[23];
      v9 = *(a1 + 9);
      v10 = *(a1 + 10);
      *buf = 136447234;
      v18 = "ioloop_add_reader";
      v19 = 2048;
      *v20 = a1;
      *&v20[8] = 1024;
      *&v20[10] = v8;
      v21 = 2048;
      v22 = v9;
      v23 = 2048;
      v24 = v10;
      v11 = "%{public}s: io %p fd %d, read source %p, write_source %p";
      v12 = v7;
      v13 = OS_LOG_TYPE_DEFAULT;
      v14 = 48;
LABEL_13:
      _os_log_impl(&_mh_execute_header, v12, v13, v11, buf, v14);
    }
  }

  else
  {
    v15 = global_os_log;
    if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      v18 = "ioloop_add_reader";
      v11 = "%{public}s: dispatch_source_create: unable to create read dispatch source.";
      v12 = v15;
      v13 = OS_LOG_TYPE_ERROR;
      v14 = 12;
      goto LABEL_13;
    }
  }
}

void __ioloop_udp_listener_setup_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if ((*(v2 + 424) & 0x800) != 0)
  {
    v4 = global_os_log;
    if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 136446210;
      v13 = "ioloop_udp_listener_setup_block_invoke";
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}s: ready but canceled", &v12, 0xCu);
    }
  }

  else
  {
    v3 = *(v2 + 256);
    if (v3)
    {
      v3(*(v2 + 200), *(v2 + 160));
    }
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    v6 = *(v5 + 32);
    if (v6)
    {
      v7 = global_os_log;
      if (v6 < 10001)
      {
        if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
        {
          v12 = 136447490;
          v13 = "ioloop_udp_listener_setup_block_invoke";
          v14 = 1024;
          *v15 = v6;
          *&v15[4] = 2048;
          *&v15[6] = v5;
          *&v15[14] = 2080;
          *&v15[16] = "listener";
          *&v15[24] = 2080;
          *&v15[26] = "macos-ioloop.c";
          v16 = 1024;
          v17 = 1539;
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d", &v12, 0x36u);
          v5 = *(a1 + 32);
          v6 = *(v5 + 32);
        }

        *(v5 + 32) = v6 - 1;
        if (v6 == 1)
        {
          v8 = global_os_log;
          if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
          {
            v12 = 136447234;
            v13 = "ioloop_udp_listener_setup_block_invoke";
            v14 = 2048;
            *v15 = v5;
            *&v15[8] = 2080;
            *&v15[10] = "listener";
            *&v15[18] = 2080;
            *&v15[20] = "macos-ioloop.c";
            *&v15[28] = 1024;
            *&v15[30] = 1539;
            _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC:      finalize: %p (%10s): %s:%d", &v12, 0x30u);
            v5 = *(a1 + 32);
          }

          ++listener_finalized;
          listener_finalize(v5);
        }

        return;
      }

      if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
      {
LABEL_21:
        abort();
      }

      v12 = 136447490;
      v13 = "ioloop_udp_listener_setup_block_invoke";
      v14 = 1024;
      *v15 = v6;
      *&v15[4] = 2048;
      *&v15[6] = v5;
      *&v15[14] = 2080;
      *&v15[16] = "listener";
      *&v15[24] = 2080;
      *&v15[26] = "macos-ioloop.c";
      v16 = 1024;
      v17 = 1539;
      v10 = "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d";
      v11 = v7;
    }

    else
    {
      v9 = global_os_log;
      if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_21;
      }

      v12 = 136447490;
      v13 = "ioloop_udp_listener_setup_block_invoke";
      v14 = 1024;
      *v15 = 0;
      *&v15[4] = 2048;
      *&v15[6] = v5;
      *&v15[14] = 2080;
      *&v15[16] = "listener";
      *&v15[24] = 2080;
      *&v15[26] = "macos-ioloop.c";
      v16 = 1024;
      v17 = 1539;
      v10 = "%{public}s: ALLOC: release after finalize at %2.2d: %p (%10s): %s:%d";
      v11 = v9;
    }

    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_FAULT, v10, &v12, 0x36u);
    goto LABEL_21;
  }
}

uint64_t __ioloop_listener_create_block_invoke(uint64_t a1, uint64_t a2)
{
  v3[0] = a2;
  v3[1] = ioloop_main_queue;
  return (*(a1 + 32))(v3);
}

void __ioloop_listener_create_block_invoke_19(uint64_t a1, nw_connection_t connection)
{
  v3 = *(a1 + 32);
  nw_connection_set_queue(connection, ioloop_main_queue);
  nw_connection_start(connection);
  v4 = malloc_type_calloc(1uLL, 0x1B0uLL, 0x6675300FuLL);
  if (!v4)
  {
    goto LABEL_22;
  }

  v5 = v4;
  v4[45] = ++cur_connection_serial;
  *v4 = connection;
  nw_retain(connection);
  ++nw_connection_created;
  v6 = *(v3 + 192);
  if (!v6)
  {
    v17 = global_os_log;
    if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_21;
    }

    *buf = 136446210;
    *&buf[4] = "strict_strdup";
    v18 = "%{public}s: strict_strdup called with NULL string";
    goto LABEL_19;
  }

  v7 = strdup(v6);
  if (!v7)
  {
    v17 = global_os_log;
    if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_21;
    }

    *buf = 136446210;
    *&buf[4] = "strict_strdup";
    v18 = "%{public}s: strdup() failed";
LABEL_19:
    v19 = v17;
    for (i = 12; ; i = 32)
    {
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, v18, buf, i);
      do
      {
LABEL_21:
        __break(1u);
LABEL_22:
        v21 = global_os_log;
      }

      while (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR));
      *buf = 136446722;
      *&buf[4] = "ioloop_listener_connection_callback";
      *&buf[12] = 2048;
      *&buf[14] = 1;
      *&buf[22] = 2048;
      *&buf[24] = 432;
      v18 = "%{public}s: strict_calloc(%zu, %zu) failed";
      v19 = v21;
    }
  }

  *(v5 + 24) = v7;
  *(v5 + 26) = *(v3 + 208);
  *(v5 + 212) = *(v3 + 424) & 0x20 | v5[106] & 0xFFDF | 2;
  *(v5 + 25) = *(v3 + 200);
  *(v5 + 28) = *(v3 + 224);
  v8 = *(v3 + 408);
  *(v5 + 51) = v8;
  ifpermit_list_retain_(v8, 1098);
  v9 = global_os_log;
  if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
  {
    v10 = v5[8];
    *buf = 136447490;
    *&buf[4] = "ioloop_listener_connection_callback";
    *&buf[12] = 1024;
    *&buf[14] = v10;
    *&buf[18] = 2048;
    *&buf[20] = v5;
    *&buf[28] = 2080;
    *&buf[30] = "connection";
    *&buf[38] = 2080;
    v30 = "macos-ioloop.c";
    v31 = 1024;
    v32 = 1100;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC:  retain at %2.2d: %p (%10s): %s:%d", buf, 0x36u);
  }

  v11 = v5[8];
  if (v11)
  {
    v12 = v11 + 1;
    v5[8] = v12;
    if (v12 >= 10001)
    {
      v22 = v12;
      v13 = global_os_log;
      if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
      {
        *buf = 136447490;
        *&buf[4] = "ioloop_listener_connection_callback";
        *&buf[12] = 1024;
        *&buf[14] = v22;
        *&buf[18] = 2048;
        *&buf[20] = v5;
        *&buf[28] = 2080;
        *&buf[30] = "connection";
        *&buf[38] = 2080;
        v30 = "macos-ioloop.c";
        v31 = 1024;
        v32 = 1100;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_FAULT, "%{public}s: ALLOC: retain at %2.2d: %p (%10s): %s:%d", buf, 0x36u);
      }

      abort();
    }
  }

  else
  {
    ++comm_created;
    v5[8] = 1;
  }

  v14 = *v5;
  *buf = _NSConcreteStackBlock;
  *&buf[8] = 0x40000000;
  *&buf[16] = __ioloop_listener_connection_callback_block_invoke;
  *&buf[24] = &__block_descriptor_tmp_51;
  *&buf[32] = v5;
  nw_connection_set_state_changed_handler(v14, buf);
  v15 = global_os_log;
  if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
  {
    v16 = *(v5 + 24);
    *v23 = 136446723;
    v24 = "ioloop_listener_connection_callback";
    v25 = 2160;
    v26 = 1752392040;
    v27 = 2081;
    v28 = v16;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%{public}s: started %{private, mask.hash}s", v23, 0x20u);
  }
}

void __ioloop_listener_create_block_invoke_2_22(uint64_t a1, int a2, NSObject *a3)
{
  v5 = *(a1 + 32);
  if (!*(v5 + 8))
  {
    v6 = global_os_log;
    if (a2 == 4)
    {
      if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_8;
      }

      v7 = *(v5 + 192);
      *buf = 136446723;
      v38 = "ioloop_listener_state_changed_handler";
      v39 = 2160;
      *v40 = 1752392040;
      *&v40[8] = 2081;
      *&v40[10] = v7;
      v8 = "%{public}s: nw_listener gets released before the final nw_listener_state_cancelled event - name: %{private, mask.hash}s";
      v9 = v6;
      v10 = OS_LOG_TYPE_DEFAULT;
      v11 = 32;
    }

    else
    {
      if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_8;
      }

      v12 = *(v5 + 192);
      *buf = 136446979;
      v38 = "ioloop_listener_state_changed_handler";
      v39 = 2160;
      *v40 = 1752392040;
      *&v40[8] = 2081;
      *&v40[10] = v12;
      *&v40[18] = 1024;
      *&v40[20] = a2;
      v8 = "%{public}s: nw_listener gets released before the listener is canceled - name: %{private, mask.hash}s, state: %d";
      v9 = v6;
      v10 = OS_LOG_TYPE_ERROR;
      v11 = 38;
    }

    _os_log_impl(&_mh_execute_header, v9, v10, v8, buf, v11);
  }

LABEL_8:
  v13 = global_os_log;
  v14 = os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT);
  v15 = *(v5 + 8);
  if (v14)
  {
    v16 = *(v5 + 192);
    *buf = 136447234;
    v38 = "ioloop_listener_state_changed_handler";
    v39 = 2048;
    *v40 = v5;
    *&v40[8] = 2048;
    *&v40[10] = v15;
    *&v40[18] = 2082;
    *&v40[20] = v16;
    *&v40[28] = 1024;
    *&v40[30] = a2;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%{public}s: %p %p %{public}s %d", buf, 0x30u);
    v15 = *(v5 + 8);
  }

  if (a2 != 4 && !v15)
  {
    return;
  }

  if (!a3)
  {
    if (a2 <= 2)
    {
      if (a2 == 1)
      {
        v28 = global_os_log;
        if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
        {
          return;
        }

        *buf = 136446210;
        v38 = "ioloop_listener_state_changed_handler";
        v29 = "%{public}s: waiting";
        goto LABEL_44;
      }

      if (a2 == 2)
      {
        v19 = *(v5 + 424);
        v20 = global_os_log;
        v21 = os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT);
        if ((v19 & 0x800) == 0)
        {
          if (v21)
          {
            *buf = 136446210;
            v38 = "ioloop_listener_state_changed_handler";
            _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "%{public}s: ready", buf, 0xCu);
          }

          v22 = *(v5 + 256);
          if (v22)
          {
            v22(*(v5 + 200), *(v5 + 160));
          }

          return;
        }

        if (!v21)
        {
          return;
        }

        *buf = 136446210;
        v38 = "ioloop_listener_state_changed_handler";
        v29 = "%{public}s: ready but canceled";
        v30 = v20;
LABEL_45:
        _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, v29, buf, 0xCu);
        return;
      }

LABEL_40:
      v28 = global_os_log;
      if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
      {
        return;
      }

      *buf = 136446210;
      v38 = "ioloop_listener_state_changed_handler";
      v29 = "%{public}s: something else";
LABEL_44:
      v30 = v28;
      goto LABEL_45;
    }

    if (a2 == 3)
    {
      v31 = global_os_log;
      if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446210;
        v38 = "ioloop_listener_state_changed_handler";
        _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "%{public}s: failed", buf, 0xCu);
        v15 = *(v5 + 8);
      }

      v18 = v15;
      goto LABEL_16;
    }

    if (a2 != 4)
    {
      goto LABEL_40;
    }

    v23 = global_os_log;
    if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v38 = "ioloop_listener_state_changed_handler";
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "%{public}s: cancelled", buf, 0xCu);
      v15 = *(v5 + 8);
    }

    nw_release(v15);
    ++nw_listener_finalized;
    *(v5 + 8) = 0;
    v24 = *(v5 + 248);
    if (v24)
    {
      v24(v5, *(v5 + 200));
    }

    v25 = *(v5 + 32);
    if (v25)
    {
      v26 = global_os_log;
      if (v25 < 10001)
      {
        if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136447490;
          v38 = "ioloop_listener_state_changed_handler";
          v39 = 1024;
          *v40 = v25;
          *&v40[4] = 2048;
          *&v40[6] = v5;
          *&v40[14] = 2080;
          *&v40[16] = "listener";
          *&v40[24] = 2080;
          *&v40[26] = "macos-ioloop.c";
          v41 = 1024;
          v42 = 1339;
          _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d", buf, 0x36u);
          v25 = *(v5 + 32);
        }

        *(v5 + 32) = v25 - 1;
        if (v25 == 1)
        {
          v27 = global_os_log;
          if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136447234;
            v38 = "ioloop_listener_state_changed_handler";
            v39 = 2048;
            *v40 = v5;
            *&v40[8] = 2080;
            *&v40[10] = "listener";
            *&v40[18] = 2080;
            *&v40[20] = "macos-ioloop.c";
            *&v40[28] = 1024;
            *&v40[30] = 1339;
            _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC:      finalize: %p (%10s): %s:%d", buf, 0x30u);
          }

          ++listener_finalized;
          listener_finalize(v5);
        }

        return;
      }

      if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
      {
LABEL_56:
        abort();
      }

      *buf = 136447490;
      v38 = "ioloop_listener_state_changed_handler";
      v39 = 1024;
      *v40 = v25;
      *&v40[4] = 2048;
      *&v40[6] = v5;
      *&v40[14] = 2080;
      *&v40[16] = "listener";
      *&v40[24] = 2080;
      *&v40[26] = "macos-ioloop.c";
      v41 = 1024;
      v42 = 1339;
      v32 = "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d";
    }

    else
    {
      v26 = global_os_log;
      if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_56;
      }

      *buf = 136447490;
      v38 = "ioloop_listener_state_changed_handler";
      v39 = 1024;
      *v40 = 0;
      *&v40[4] = 2048;
      *&v40[6] = v5;
      *&v40[14] = 2080;
      *&v40[16] = "listener";
      *&v40[24] = 2080;
      *&v40[26] = "macos-ioloop.c";
      v41 = 1024;
      v42 = 1339;
      v32 = "%{public}s: ALLOC: release after finalize at %2.2d: %p (%10s): %s:%d";
    }

    _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_FAULT, v32, buf, 0x36u);
    goto LABEL_56;
  }

  connection_error_to_string(a3, buf);
  v17 = global_os_log;
  if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
  {
    v33 = 136446466;
    v34 = "ioloop_listener_state_changed_handler";
    v35 = 2082;
    v36 = buf;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%{public}s: state changed: %{public}s", &v33, 0x16u);
  }

  v18 = *(v5 + 8);
  if (v18)
  {
LABEL_16:
    nw_listener_cancel(v18);
  }
}

void connection_error_to_string(NSObject *a1, char *a2)
{
  *a2 = 0;
  if (!a1)
  {
    goto LABEL_7;
  }

  v3 = nw_error_copy_cf_error(a1);
  if (v3)
  {
    v4 = v3;
    v5 = CFErrorCopyDescription(v3);
    if (v5)
    {
      v6 = v5;
      CFStringGetCString(v5, a2, 512, 0x8000100u);
      CFRelease(v6);
    }

    CFRelease(v4);
  }

  if (!*a2)
  {
LABEL_7:
    strcpy(a2, "<NULL>");
  }
}

void ioloop_connection_state_changed(uint64_t a1, int a2, NSObject *a3)
{
  connection_error_to_string(a3, v84);
  switch(a2)
  {
    case 3:
      v6 = *(a1 + 424);
      if ((v6 & 0x800) == 0)
      {
        if ((v6 & 2) == 0)
        {
LABEL_123:
          v78 = global_os_log;
          if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
          {
            v79 = *(a1 + 192);
            v80 = *a1;
            if (!v79)
            {
              v79 = "<no name>";
            }

            *buf = 136447491;
            v86 = "ioloop_connection_state_changed";
            v87 = 2160;
            *v88 = 1752392040;
            *&v88[8] = 2081;
            *&v88[10] = v79;
            *&v88[18] = 2048;
            *&v88[20] = a1;
            *&v88[28] = 2048;
            *&v88[30] = v80;
            *&v88[38] = 2082;
            *&v88[40] = v84;
            _os_log_impl(&_mh_execute_header, v78, OS_LOG_TYPE_DEFAULT, "%{public}s: %{private, mask.hash}s (%p %p) state is ready; error = %{public}s", buf, 0x3Eu);
          }

          if ((*(a1 + 424) & 0x20) != 0)
          {
            ioloop_tcp_input_start(a1);
          }

          else
          {
            ioloop_udp_input_start(a1);
          }

          *(a1 + 424) |= 4u;
          if (*(a1 + 48))
          {
            connection_write_now(a1);
          }

          v81 = *(a1 + 224);
          if (v81)
          {
            v81(a1, *(a1 + 200));
          }

          return;
        }

        if (!*(a1 + 408))
        {
LABEL_58:
          v39 = nw_connection_copy_endpoint(*a1);
          v40 = v39;
          if (!v39)
          {
            goto LABEL_93;
          }

          type = nw_endpoint_get_type(v39);
          if (type != nw_endpoint_type_address)
          {
            v53 = type;
            v54 = *(a1 + 192);
            if (!v54)
            {
              v54 = nw_connection_copy_description(*a1);
              *(a1 + 192) = v54;
            }

            v55 = global_os_log;
            if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
            {
              *buf = 136446979;
              v86 = "ioloop_connection_set_name_from_endpoint";
              v87 = 2160;
              *v88 = 1752392040;
              *&v88[8] = 2081;
              *&v88[10] = v54;
              *&v88[18] = 1024;
              *&v88[20] = v53;
              _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_ERROR, "%{public}s: incoming connection %{private, mask.hash}s is of unexpected type %d", buf, 0x26u);
            }

            goto LABEL_92;
          }

          v42 = nw_endpoint_copy_port_string(v40);
          v43 = nw_endpoint_copy_address_string(v40);
          v44 = v43;
          if (!v42 || !v43)
          {
            v56 = global_os_log;
            if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
            {
              *buf = 136446210;
              v86 = "ioloop_connection_set_name_from_endpoint";
              _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_ERROR, "%{public}s: Unable to get description of new connection.", buf, 0xCu);
            }

            if (!v42)
            {
              goto LABEL_90;
            }

            goto LABEL_89;
          }

          v45 = (a1 + 192);
          v46 = *(a1 + 192);
          v47 = "bogus";
          if (v46)
          {
            v47 = *(a1 + 192);
          }

          *v45 = 0;
          asprintf(v45, "%s connection from %s/%s", v47, v44, v42);
          if (v46)
          {
            free(v46);
          }

          getipaddr((a1 + 288), v44);
          v48 = *(a1 + 289);
          v49 = global_os_log;
          v50 = os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT);
          if (v48 == 30)
          {
            if (v50)
            {
              v51 = *(a1 + 296);
              if ((v51 & 0xFE) == 0xFC)
              {
                v52 = "ULA: ";
              }

              else if (v51 == 254 && (*(a1 + 297) & 0xC0) == 0x80)
              {
                v52 = "LUA: ";
              }

              else if ((v51 & 0xE0) == 0x20)
              {
                v52 = "GUA: ";
              }

              else
              {
                v52 = "";
              }

              *buf = 136448771;
              v86 = "ioloop_connection_set_name_from_endpoint";
              v87 = 2082;
              *v88 = v52;
              *&v88[8] = 2160;
              *&v88[10] = 1752392040;
              *&v88[18] = 1041;
              *&v88[20] = 6;
              *&v88[24] = 2097;
              *&v88[26] = a1 + 296;
              *&v88[34] = 2160;
              *&v88[36] = 1752392040;
              *&v88[44] = 1042;
              *&v88[46] = 2;
              *&v88[50] = 2098;
              *&v88[52] = a1 + 302;
              v89 = 2160;
              v90 = 1752392040;
              v91 = 1041;
              v92 = 8;
              v93 = 2097;
              v94 = a1 + 304;
              v57 = "%{public}s: parsed connection remote IPv6 address is: {%{public}s%{private, mask.hash, srp:in6_addr_segment}.6P:%{public, mask.hash, srp:in6_addr_segment}.2P:%{private, mask.hash, srp:in6_addr_segment}.8P}";
              v58 = v49;
              v59 = 100;
              goto LABEL_88;
            }
          }

          else if (v50)
          {
            *buf = 136446979;
            v86 = "ioloop_connection_set_name_from_endpoint";
            v87 = 2160;
            *v88 = 1752392040;
            *&v88[8] = 1041;
            *&v88[10] = 4;
            *&v88[14] = 2097;
            *&v88[16] = a1 + 292;
            v57 = "%{public}s: parsed connection remote IPv4 address is: %{private, mask.hash, network:in_addr}.4P";
            v58 = v49;
            v59 = 38;
LABEL_88:
            _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_DEFAULT, v57, buf, v59);
          }

LABEL_89:
          free(v42);
LABEL_90:
          if (v44)
          {
            free(v44);
          }

LABEL_92:
          nw_release(v40);
LABEL_93:
          v60 = *(a1 + 192);
          v61 = global_os_log;
          if (v60)
          {
            if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136446723;
              v86 = "ioloop_listener_connection_ready";
              v87 = 2160;
              *v88 = 1752392040;
              *&v88[8] = 2081;
              *&v88[10] = v60;
              _os_log_impl(&_mh_execute_header, v61, OS_LOG_TYPE_DEFAULT, "%{public}s: Received connection from %{private, mask.hash}s", buf, 0x20u);
            }
          }

          else
          {
            if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
            {
              *buf = 136446210;
              v86 = "ioloop_listener_connection_ready";
              _os_log_impl(&_mh_execute_header, v61, OS_LOG_TYPE_ERROR, "%{public}s: Unable to get description of new connection.", buf, 0xCu);
            }

            v62 = strdup("unidentified");
            if (!v62)
            {
              v82 = global_os_log;
              if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
              {
                *buf = 136446210;
                v86 = "strict_strdup";
                _os_log_impl(&_mh_execute_header, v82, OS_LOG_TYPE_ERROR, "%{public}s: strdup() failed", buf, 0xCu);
              }

              __break(1u);
            }

            *(a1 + 192) = v62;
          }

          v63 = *a1;
          v64 = nw_connection_copy_connected_local_endpoint();
          if (!v64)
          {
            goto LABEL_121;
          }

          v65 = v64;
          if (nw_endpoint_get_type(v40) != nw_endpoint_type_address)
          {
LABEL_120:
            nw_release(v65);
LABEL_121:
            v77 = *(a1 + 224);
            if (v77)
            {
              v77(a1, *(a1 + 200));
            }

            goto LABEL_123;
          }

          v66 = nw_endpoint_copy_address_string(v40);
          if (!v66)
          {
            v73 = global_os_log;
            if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
            {
              *buf = 136446210;
              v86 = "ioloop_connection_get_address_from_endpoint";
              _os_log_impl(&_mh_execute_header, v73, OS_LOG_TYPE_ERROR, "%{public}s: unable to get description of new connection.", buf, 0xCu);
            }

            goto LABEL_120;
          }

          v67 = v66;
          getipaddr((a1 + 344), v66);
          v68 = *(a1 + 345);
          v69 = global_os_log;
          v70 = os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT);
          if (v68 == 30)
          {
            if (v70)
            {
              v71 = *(a1 + 352);
              if ((v71 & 0xFE) == 0xFC)
              {
                v72 = "ULA: ";
              }

              else if (v71 == 254 && (*(a1 + 353) & 0xC0) == 0x80)
              {
                v72 = "LUA: ";
              }

              else if ((v71 & 0xE0) == 0x20)
              {
                v72 = "GUA: ";
              }

              else
              {
                v72 = "";
              }

              *buf = 136448771;
              v86 = "ioloop_connection_get_address_from_endpoint";
              v87 = 2082;
              *v88 = v72;
              *&v88[8] = 2160;
              *&v88[10] = 1752392040;
              *&v88[18] = 1041;
              *&v88[20] = 6;
              *&v88[24] = 2097;
              *&v88[26] = a1 + 352;
              *&v88[34] = 2160;
              *&v88[36] = 1752392040;
              *&v88[44] = 1042;
              *&v88[46] = 2;
              *&v88[50] = 2098;
              *&v88[52] = a1 + 358;
              v89 = 2160;
              v90 = 1752392040;
              v91 = 1041;
              v92 = 8;
              v93 = 2097;
              v94 = a1 + 360;
              v74 = "%{public}s: parsed connection local IPv6 address is: {%{public}s%{private, mask.hash, srp:in6_addr_segment}.6P:%{public, mask.hash, srp:in6_addr_segment}.2P:%{private, mask.hash, srp:in6_addr_segment}.8P}";
              v75 = v69;
              v76 = 100;
              goto LABEL_118;
            }
          }

          else if (v70)
          {
            *buf = 136446979;
            v86 = "ioloop_connection_get_address_from_endpoint";
            v87 = 2160;
            *v88 = 1752392040;
            *&v88[8] = 1041;
            *&v88[10] = 4;
            *&v88[14] = 2097;
            *&v88[16] = a1 + 348;
            v74 = "%{public}s: parsed connection local IPv4 address is: %{private, mask.hash, network:in_addr}.4P";
            v75 = v69;
            v76 = 38;
LABEL_118:
            _os_log_impl(&_mh_execute_header, v75, OS_LOG_TYPE_DEFAULT, v74, buf, v76);
          }

          free(v67);
          goto LABEL_120;
        }

        v7 = *a1;
        v8 = nw_connection_copy_connected_path();
        if (v8)
        {
          v9 = v8;
          v10 = nw_path_copy_interface();
          nw_release(v9);
          if (v10)
          {
            index = nw_interface_get_index(v10);
            v12 = *(a1 + 408);
            if (v12 >= 2)
            {
              v34 = v12 + 8;
              while (1)
              {
                v34 = *v34;
                v13 = v34 != 0;
                if (!v34)
                {
                  break;
                }

                if (*(v34 + 16) == index)
                {
                  v13 = 1;
                  break;
                }
              }
            }

            else
            {
              v13 = 0;
            }

            v35 = nw_connection_copy_description(*a1);
            name = nw_interface_get_name(v10);
            v37 = global_os_log;
            if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
            {
              v86 = "ioloop_listener_connection_ready";
              v87 = 2160;
              v38 = "not ";
              *v88 = 1752392040;
              *&v88[8] = 2081;
              *buf = 136447235;
              if (v13)
              {
                v38 = "";
              }

              *&v88[10] = v35;
              *&v88[18] = 2082;
              *&v88[20] = name;
              *&v88[28] = 2082;
              *&v88[30] = v38;
              _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "%{public}s: incoming connection from %{private, mask.hash}s is on %{public}s, which is %{public}spermitted.", buf, 0x34u);
            }

            if (v35)
            {
              free(v35);
            }

            nw_release(v10);
            if (v13)
            {
              goto LABEL_58;
            }

LABEL_70:
            ioloop_comm_cancel(a1);
            return;
          }

          v32 = global_os_log;
          if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_70;
          }

          *buf = 136446210;
          v86 = "ioloop_listener_connection_ready";
          v33 = "%{public}s: unable to get interface from local endpoint to check for excluded interface types.";
        }

        else
        {
          v32 = global_os_log;
          if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_70;
          }

          *buf = 136446210;
          v86 = "ioloop_listener_connection_ready";
          v33 = "%{public}s: unable to get local endpoint to check for excluded interface types.";
        }

        _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_ERROR, v33, buf, 0xCu);
        goto LABEL_70;
      }

      v18 = global_os_log;
      if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
      {
        return;
      }

      *buf = 136446210;
      v86 = "ioloop_connection_state_changed";
      v19 = "%{public}s: ready but canceled";
      v20 = v18;
      v21 = 12;
LABEL_41:
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, v19, buf, v21);
      return;
    case 1:
      goto LABEL_12;
    case 5:
      v22 = global_os_log;
      if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
      {
        v23 = *(a1 + 192);
        v24 = *a1;
        if (!v23)
        {
          v23 = "<no name>";
        }

        *buf = 136447491;
        v86 = "ioloop_connection_state_changed";
        v87 = 2160;
        *v88 = 1752392040;
        *&v88[8] = 2081;
        *&v88[10] = v23;
        *&v88[18] = 2048;
        *&v88[20] = a1;
        *&v88[28] = 2048;
        *&v88[30] = v24;
        *&v88[38] = 2082;
        *&v88[40] = v84;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "%{public}s: %{private, mask.hash}s (%p %p) state is canceled; error = %{public}s", buf, 0x3Eu);
      }

      v25 = *(a1 + 232);
      if (v25)
      {
        v25(a1, *(a1 + 200), 0);
      }

      v26 = *(a1 + 32);
      if (v26)
      {
        v27 = global_os_log;
        if (v26 < 10001)
        {
          if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136447490;
            v86 = "ioloop_connection_state_changed";
            v87 = 1024;
            *v88 = v26;
            *&v88[4] = 2048;
            *&v88[6] = a1;
            *&v88[14] = 2080;
            *&v88[16] = "connection";
            *&v88[24] = 2080;
            *&v88[26] = "macos-ioloop.c";
            *&v88[34] = 1024;
            *&v88[36] = 885;
            _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d", buf, 0x36u);
            v26 = *(a1 + 32);
          }

          *(a1 + 32) = v26 - 1;
          if (v26 == 1)
          {
            v28 = global_os_log;
            if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136447234;
              v86 = "ioloop_connection_state_changed";
              v87 = 2048;
              *v88 = a1;
              *&v88[8] = 2080;
              *&v88[10] = "connection";
              *&v88[18] = 2080;
              *&v88[20] = "macos-ioloop.c";
              *&v88[28] = 1024;
              *&v88[30] = 885;
              _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC:      finalize: %p (%10s): %s:%d", buf, 0x30u);
            }

            ++comm_finalized;
            comm_finalize(a1);
          }

          return;
        }

        if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
        {
LABEL_143:
          abort();
        }

        *buf = 136447490;
        v86 = "ioloop_connection_state_changed";
        v87 = 1024;
        *v88 = v26;
        *&v88[4] = 2048;
        *&v88[6] = a1;
        *&v88[14] = 2080;
        *&v88[16] = "connection";
        *&v88[24] = 2080;
        *&v88[26] = "macos-ioloop.c";
        *&v88[34] = 1024;
        *&v88[36] = 885;
        v83 = "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d";
      }

      else
      {
        v27 = global_os_log;
        if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
        {
          goto LABEL_143;
        }

        *buf = 136447490;
        v86 = "ioloop_connection_state_changed";
        v87 = 1024;
        *v88 = 0;
        *&v88[4] = 2048;
        *&v88[6] = a1;
        *&v88[14] = 2080;
        *&v88[16] = "connection";
        *&v88[24] = 2080;
        *&v88[26] = "macos-ioloop.c";
        *&v88[34] = 1024;
        *&v88[36] = 885;
        v83 = "%{public}s: ALLOC: release after finalize at %2.2d: %p (%10s): %s:%d";
      }

      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_FAULT, v83, buf, 0x36u);
      goto LABEL_143;
    case 4:
LABEL_12:
      v14 = global_os_log;
      if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
      {
        v15 = *(a1 + 192);
        v86 = "ioloop_connection_state_changed";
        v87 = 2160;
        if (!v15)
        {
          v15 = "<no name>";
        }

        *v88 = 1752392040;
        v16 = "waiting";
        v17 = *a1;
        *buf = 136447747;
        *&v88[8] = 2081;
        if (a2 == 4)
        {
          v16 = "failed";
        }

        *&v88[10] = v15;
        *&v88[18] = 2048;
        *&v88[20] = a1;
        *&v88[28] = 2048;
        *&v88[30] = v17;
        *&v88[38] = 2082;
        *&v88[40] = v16;
        *&v88[48] = 2082;
        *&v88[50] = v84;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%{public}s: %{private, mask.hash}s (%p %p) state is %{public}s; error = %{public}s", buf, 0x48u);
      }

      connection_cancel_(a1, *a1, 877);
      return;
  }

  if (a3)
  {
    connection_cancel_(a1, *a1, 889);
  }

  v29 = global_os_log;
  if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
  {
    v30 = *(a1 + 192);
    v31 = *a1;
    if (!v30)
    {
      v30 = "<no name>";
    }

    *buf = 136447747;
    v86 = "ioloop_connection_state_changed";
    v87 = 2160;
    *v88 = 1752392040;
    *&v88[8] = 2081;
    *&v88[10] = v30;
    *&v88[18] = 2048;
    *&v88[20] = a1;
    *&v88[28] = 2048;
    *&v88[30] = v31;
    *&v88[38] = 1024;
    *&v88[40] = a2;
    *&v88[44] = 2082;
    *&v88[46] = v84;
    v19 = "%{public}s: %{private, mask.hash}s (%p %p) state is %d; error = %{public}s";
    v20 = v29;
    v21 = 68;
    goto LABEL_41;
  }
}

void ioloop_tcp_input_start(uint64_t a1)
{
  if (*a1)
  {
    v2 = global_os_log;
    if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(a1 + 32);
      *buf = 136447490;
      v11 = "ioloop_tcp_input_start";
      v12 = 1024;
      v13 = v3;
      v14 = 2048;
      v15 = a1;
      v16 = 2080;
      v17 = "connection";
      v18 = 2080;
      v19 = "macos-ioloop.c";
      v20 = 1024;
      v21 = 809;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC:  retain at %2.2d: %p (%10s): %s:%d", buf, 0x36u);
    }

    v4 = *(a1 + 32);
    if (v4)
    {
      v5 = v4 + 1;
      *(a1 + 32) = v5;
      if (v5 >= 10001)
      {
        v8 = v5;
        v6 = global_os_log;
        if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
        {
          *buf = 136447490;
          v11 = "ioloop_tcp_input_start";
          v12 = 1024;
          v13 = v8;
          v14 = 2048;
          v15 = a1;
          v16 = 2080;
          v17 = "connection";
          v18 = 2080;
          v19 = "macos-ioloop.c";
          v20 = 1024;
          v21 = 809;
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_FAULT, "%{public}s: ALLOC: retain at %2.2d: %p (%10s): %s:%d", buf, 0x36u);
        }

        abort();
      }
    }

    else
    {
      ++comm_created;
      *(a1 + 32) = 1;
    }

    v7 = *a1;
    completion[0] = _NSConcreteStackBlock;
    completion[1] = 0x40000000;
    completion[2] = __ioloop_tcp_input_start_block_invoke;
    completion[3] = &__block_descriptor_tmp_61;
    completion[4] = a1;
    nw_connection_receive(v7, 2u, 2u, completion);
  }
}

void ioloop_udp_input_start(uint64_t a1)
{
  if (a1)
  {
    v2 = global_os_log;
    if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(a1 + 32);
      *buf = 136447490;
      v11 = "ioloop_udp_input_start";
      v12 = 1024;
      v13 = v3;
      v14 = 2048;
      v15 = a1;
      v16 = 2080;
      v17 = "connection";
      v18 = 2080;
      v19 = "macos-ioloop.c";
      v20 = 1024;
      v21 = 823;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC:  retain at %2.2d: %p (%10s): %s:%d", buf, 0x36u);
    }

    v4 = *(a1 + 32);
    if (v4)
    {
      v5 = v4 + 1;
      *(a1 + 32) = v5;
      if (v5 >= 10001)
      {
        v8 = v5;
        v6 = global_os_log;
        if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
        {
          *buf = 136447490;
          v11 = "ioloop_udp_input_start";
          v12 = 1024;
          v13 = v8;
          v14 = 2048;
          v15 = a1;
          v16 = 2080;
          v17 = "connection";
          v18 = 2080;
          v19 = "macos-ioloop.c";
          v20 = 1024;
          v21 = 823;
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_FAULT, "%{public}s: ALLOC: retain at %2.2d: %p (%10s): %s:%d", buf, 0x36u);
        }

        abort();
      }
    }

    else
    {
      ++comm_created;
      *(a1 + 32) = 1;
    }
  }

  v7 = *a1;
  completion[0] = _NSConcreteStackBlock;
  completion[1] = 0x40000000;
  completion[2] = __ioloop_udp_input_start_block_invoke;
  completion[3] = &__block_descriptor_tmp_67;
  completion[4] = a1;
  nw_connection_receive_message(v7, completion);
}

void __ioloop_udp_input_start_block_invoke(uint64_t a1, NSObject *a2, uint64_t a3, int a4, NSObject *a5)
{
  if ((ioloop_connection_input_badness_check(*(a1 + 32), a2, a4, a5) & 1) == 0)
  {
    v8 = *(a1 + 32);
    size = dispatch_data_get_size(a2);
    if (datagram_read(v8, size, a2, a5))
    {
      ioloop_udp_input_start(*(a1 + 32));
    }
  }

  v10 = *(a1 + 32);
  if (v10)
  {
    v11 = *(v10 + 32);
    if (v11)
    {
      v12 = global_os_log;
      if (v11 < 10001)
      {
        if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
        {
          v17 = 136447490;
          v18 = "ioloop_udp_input_start_block_invoke";
          v19 = 1024;
          *v20 = v11;
          *&v20[4] = 2048;
          *&v20[6] = v10;
          *&v20[14] = 2080;
          *&v20[16] = "connection";
          *&v20[24] = 2080;
          *&v20[26] = "macos-ioloop.c";
          v21 = 1024;
          v22 = 832;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d", &v17, 0x36u);
          v10 = *(a1 + 32);
          v11 = *(v10 + 32);
        }

        *(v10 + 32) = v11 - 1;
        if (v11 == 1)
        {
          v13 = global_os_log;
          if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
          {
            v17 = 136447234;
            v18 = "ioloop_udp_input_start_block_invoke";
            v19 = 2048;
            *v20 = v10;
            *&v20[8] = 2080;
            *&v20[10] = "connection";
            *&v20[18] = 2080;
            *&v20[20] = "macos-ioloop.c";
            *&v20[28] = 1024;
            *&v20[30] = 832;
            _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC:      finalize: %p (%10s): %s:%d", &v17, 0x30u);
            v10 = *(a1 + 32);
          }

          ++comm_finalized;
          comm_finalize(v10);
        }

        return;
      }

      if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
      {
LABEL_19:
        abort();
      }

      v17 = 136447490;
      v18 = "ioloop_udp_input_start_block_invoke";
      v19 = 1024;
      *v20 = v11;
      *&v20[4] = 2048;
      *&v20[6] = v10;
      *&v20[14] = 2080;
      *&v20[16] = "connection";
      *&v20[24] = 2080;
      *&v20[26] = "macos-ioloop.c";
      v21 = 1024;
      v22 = 832;
      v15 = "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d";
      v16 = v12;
    }

    else
    {
      v14 = global_os_log;
      if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_19;
      }

      v17 = 136447490;
      v18 = "ioloop_udp_input_start_block_invoke";
      v19 = 1024;
      *v20 = 0;
      *&v20[4] = 2048;
      *&v20[6] = v10;
      *&v20[14] = 2080;
      *&v20[16] = "connection";
      *&v20[24] = 2080;
      *&v20[26] = "macos-ioloop.c";
      v21 = 1024;
      v22 = 832;
      v15 = "%{public}s: ALLOC: release after finalize at %2.2d: %p (%10s): %s:%d";
      v16 = v14;
    }

    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_FAULT, v15, &v17, 0x36u);
    goto LABEL_19;
  }
}

uint64_t ioloop_connection_input_badness_check(uint64_t a1, uint64_t a2, int a3, NSObject *a4)
{
  if (a4)
  {
    connection_error_to_string(a4, buf);
    v5 = global_os_log;
    if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 136446722;
      v13 = "ioloop_connection_input_badness_check";
      v14 = 2048;
      v15 = a1;
      v16 = 2082;
      v17 = buf;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}s: %p: %{public}s", &v12, 0x20u);
    }
  }

  else
  {
    if ((*(a1 + 424) & 0x20) != 0 && a3)
    {
      v6 = global_os_log;
      if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446210;
        v19 = "ioloop_connection_input_badness_check";
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}s: remote end closed connection.", buf, 0xCu);
      }

      v7 = *a1;
      v8 = a1;
      v9 = 790;
    }

    else
    {
      if (a2)
      {
        return 0;
      }

      v11 = global_os_log;
      if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446210;
        v19 = "ioloop_connection_input_badness_check";
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%{public}s: remote end closed connection.", buf, 0xCu);
      }

      v7 = *a1;
      v8 = a1;
      v9 = 796;
    }

    connection_cancel_(v8, v7, v9);
  }

  return 1;
}

uint64_t datagram_read(uint64_t a1, unint64_t a2, NSObject *a3, NSObject *a4)
{
  v21 = 1;
  if (a4)
  {
    v6 = global_os_log;
    if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
    {
      error_code = nw_error_get_error_code(a4);
      *buf = 136446466;
      v23 = "datagram_read";
      v24 = 2082;
      v25 = strerror(error_code);
      v8 = "%{public}s: %{public}s";
LABEL_7:
      v10 = v6;
      v11 = 22;
LABEL_8:
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, v8, buf, v11);
      goto LABEL_9;
    }

    goto LABEL_9;
  }

  if (a2 >= 0x10000)
  {
    v6 = global_os_log;
    if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v23 = "datagram_read";
      v24 = 2048;
      v25 = a2;
      v8 = "%{public}s: oversized datagram length %zd";
      goto LABEL_7;
    }

LABEL_9:
    v21 = 0;
    goto LABEL_10;
  }

  ioloop_message_create_(a2, "/Library/Caches/com.apple.xbs/Sources/mDNSResponderExtras/ServiceRegistration/macos-ioloop.c", 612);
  if (!v15)
  {
    v19 = global_os_log;
    if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_9;
    }

    *buf = 136446210;
    v23 = "datagram_read";
    v8 = "%{public}s: unable to allocate message.";
    v10 = v19;
    v11 = 12;
    goto LABEL_8;
  }

  v16 = v15;
  *(v15 + 64) = a2;
  applier[0] = _NSConcreteStackBlock;
  applier[1] = 0x40000000;
  applier[2] = __datagram_read_block_invoke;
  applier[3] = &__block_descriptor_tmp_66;
  applier[4] = v15;
  applier[5] = &v21;
  dispatch_data_apply(a3, applier);
  if (v21 == 1)
  {
    v17 = *(a1 + 344);
    *(v16 + 44) = *(a1 + 356);
    *(v16 + 32) = v17;
    v18 = *(a1 + 24);
    if (!v18)
    {
      v18 = a1;
    }

    (*(v18 + 208))(a1, v16, *(v18 + 200));
  }

  ioloop_message_release_(v16, "/Library/Caches/com.apple.xbs/Sources/mDNSResponderExtras/ServiceRegistration/macos-ioloop.c", 672);
  if (v21)
  {
    v12 = 1;
    return v12 & 1;
  }

LABEL_10:
  if (*a1)
  {
    connection_cancel_(a1, *a1, 675);
    v12 = v21;
  }

  else
  {
    v12 = 0;
  }

  return v12 & 1;
}

BOOL __datagram_read_block_invoke(uint64_t a1, int a2, uint64_t a3, void *__src, size_t __n)
{
  v7 = *(a1 + 32);
  v8 = *(v7 + 64);
  v9 = __n + a3;
  if (__n + a3 > v8)
  {
    v11 = global_os_log;
    if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
    {
      v13 = 136446978;
      v14 = "datagram_read_block_invoke";
      v15 = 2048;
      v16 = a3;
      v17 = 2048;
      v18 = __n;
      v19 = 1024;
      v20 = v8;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%{public}s: data region %zd:%zd is out of range for message length %d", &v13, 0x26u);
    }

    **(a1 + 40) = 0;
  }

  else
  {
    memcpy((v7 + a3 + 88), __src, __n);
  }

  return v9 <= v8;
}

void __ioloop_tcp_input_start_block_invoke(uint64_t a1, NSObject *a2, uint64_t a3, int a4, NSObject *a5)
{
  if ((ioloop_connection_input_badness_check(*(a1 + 32), a2, a4, a5) & 1) == 0)
  {
    v8 = *(a1 + 32);
    if ((check_fail(v8, 2, a2, a5, "tcp_read_length") & 1) == 0)
    {
      v24 = 0;
      size_ptr = 0;
      v9 = dispatch_data_create_map(a2, &v24, &size_ptr);
      if (v9)
      {
        dispatch_release(v9);
        v10 = *v24;
        if (v8)
        {
          v11 = global_os_log;
          if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
          {
            v12 = *(v8 + 32);
            *buf = 136447490;
            *&buf[4] = "tcp_read_length";
            *&buf[12] = 1024;
            *&buf[14] = v12;
            *&buf[18] = 2048;
            *&buf[20] = v8;
            *&buf[28] = 2080;
            *&buf[30] = "connection";
            *&buf[38] = 2080;
            *&buf[40] = "macos-ioloop.c";
            v27 = 1024;
            v28 = 761;
            _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC:  retain at %2.2d: %p (%10s): %s:%d", buf, 0x36u);
          }

          v13 = *(v8 + 32);
          if (v13)
          {
            v14 = v13 + 1;
            *(v8 + 32) = v13 + 1;
            if (v13 + 1 >= 10001)
            {
              v15 = global_os_log;
              if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
              {
                goto LABEL_32;
              }

              *buf = 136447490;
              *&buf[4] = "tcp_read_length";
              *&buf[12] = 1024;
              *&buf[14] = v14;
              *&buf[18] = 2048;
              *&buf[20] = v8;
              *&buf[28] = 2080;
              *&buf[30] = "connection";
              *&buf[38] = 2080;
              *&buf[40] = "macos-ioloop.c";
              v27 = 1024;
              v28 = 761;
              v16 = "%{public}s: ALLOC: retain at %2.2d: %p (%10s): %s:%d";
LABEL_28:
              v23 = v15;
              goto LABEL_31;
            }
          }

          else
          {
            ++comm_created;
            *(v8 + 32) = 1;
          }
        }

        v18 = *v8;
        *buf = _NSConcreteStackBlock;
        *&buf[8] = 0x40000000;
        *&buf[16] = __tcp_read_length_block_invoke;
        *&buf[24] = &__block_descriptor_tmp_63;
        *&buf[32] = v8;
        *&buf[40] = __rev16(v10);
        nw_connection_receive(v18, *&buf[40], *&buf[40], buf);
      }

      else
      {
        v17 = global_os_log;
        if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446210;
          *&buf[4] = "tcp_read_length";
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "%{public}s: tcp_read_length: map create failed", buf, 0xCu);
        }

        connection_cancel_(v8, *v8, 756);
      }
    }
  }

  v19 = *(a1 + 32);
  if (v19)
  {
    v20 = *(v19 + 32);
    if (!v20)
    {
      v15 = global_os_log;
      if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_32;
      }

      *buf = 136447490;
      *&buf[4] = "ioloop_tcp_input_start_block_invoke";
      *&buf[12] = 1024;
      *&buf[14] = 0;
      *&buf[18] = 2048;
      *&buf[20] = v19;
      *&buf[28] = 2080;
      *&buf[30] = "connection";
      *&buf[38] = 2080;
      *&buf[40] = "macos-ioloop.c";
      v27 = 1024;
      v28 = 816;
      v16 = "%{public}s: ALLOC: release after finalize at %2.2d: %p (%10s): %s:%d";
      goto LABEL_28;
    }

    v21 = global_os_log;
    if (v20 >= 10001)
    {
      if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_32;
      }

      *buf = 136447490;
      *&buf[4] = "ioloop_tcp_input_start_block_invoke";
      *&buf[12] = 1024;
      *&buf[14] = v20;
      *&buf[18] = 2048;
      *&buf[20] = v19;
      *&buf[28] = 2080;
      *&buf[30] = "connection";
      *&buf[38] = 2080;
      *&buf[40] = "macos-ioloop.c";
      v27 = 1024;
      v28 = 816;
      v16 = "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d";
      v23 = v21;
LABEL_31:
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_FAULT, v16, buf, 0x36u);
LABEL_32:
      abort();
    }

    if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136447490;
      *&buf[4] = "ioloop_tcp_input_start_block_invoke";
      *&buf[12] = 1024;
      *&buf[14] = v20;
      *&buf[18] = 2048;
      *&buf[20] = v19;
      *&buf[28] = 2080;
      *&buf[30] = "connection";
      *&buf[38] = 2080;
      *&buf[40] = "macos-ioloop.c";
      v27 = 1024;
      v28 = 816;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d", buf, 0x36u);
      v19 = *(a1 + 32);
      v20 = *(v19 + 32);
    }

    *(v19 + 32) = v20 - 1;
    if (v20 == 1)
    {
      v22 = global_os_log;
      if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136447234;
        *&buf[4] = "ioloop_tcp_input_start_block_invoke";
        *&buf[12] = 2048;
        *&buf[14] = v19;
        *&buf[22] = 2080;
        *&buf[24] = "connection";
        *&buf[32] = 2080;
        *&buf[34] = "macos-ioloop.c";
        *&buf[42] = 1024;
        *&buf[44] = 816;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC:      finalize: %p (%10s): %s:%d", buf, 0x30u);
        v19 = *(a1 + 32);
      }

      ++comm_finalized;
      comm_finalize(v19);
    }
  }
}

uint64_t check_fail(uint64_t a1, uint64_t a2, NSObject *a3, uint64_t a4, uint64_t a5)
{
  v10 = global_os_log;
  if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
  {
    v11 = *(a1 + 192);
    if (a3)
    {
      size = dispatch_data_get_size(a3);
    }

    else
    {
      size = -1;
    }

    v22 = 136448003;
    v23 = "check_fail";
    v24 = 2160;
    v25 = 1752392040;
    v26 = 2081;
    v27 = v11;
    v28 = 2048;
    v29 = a2;
    v30 = 2048;
    v31 = a3;
    v32 = 2048;
    v33 = size;
    v34 = 2048;
    v35 = a4;
    v36 = 2080;
    v37 = a5;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%{public}s: %{private, mask.hash}s: length %zd, content %p, content_length %ld, error %p, source %s", &v22, 0x52u);
  }

  if (a4)
  {
    goto LABEL_7;
  }

  if (*a1)
  {
    if (a3)
    {
      if (dispatch_data_get_size(a3) == a2)
      {
        return 0;
      }

      v19 = global_os_log;
      if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_7;
      }

      v20 = dispatch_data_get_size(a3);
      v21 = *(a1 + 192);
      v22 = 136447491;
      v23 = "check_fail";
      v24 = 2082;
      v25 = a5;
      v26 = 2048;
      v27 = a2;
      v28 = 2048;
      v29 = v20;
      v30 = 2160;
      v31 = 1752392040;
      v32 = 2081;
      v33 = v21;
      v16 = "%{public}s: short content returned in %{public}s: %zd != %zd: connection must have dropped unexpectedly for %{private, mask.hash}s";
      v17 = v19;
      v18 = 62;
    }

    else
    {
      v14 = global_os_log;
      if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_7;
      }

      v15 = *(a1 + 192);
      v22 = 136446979;
      v23 = "check_fail";
      v24 = 2082;
      v25 = a5;
      v26 = 2160;
      v27 = 1752392040;
      v28 = 2081;
      v29 = v15;
      v16 = "%{public}s: no content returned in %{public}s: connection must have dropped unexpectedly for %{private, mask.hash}s";
      v17 = v14;
      v18 = 42;
    }

    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, v16, &v22, v18);
LABEL_7:
    if (*a1)
    {
      connection_cancel_(a1, *a1, 723);
    }
  }

  return 1;
}

void __tcp_read_length_block_invoke(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, NSObject *a5)
{
  if (a5)
  {
    connection_error_to_string(a5, buf);
    v6 = global_os_log;
    if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 32);
      v18 = 136446722;
      v19 = "tcp_read_length_block_invoke";
      v20 = 2048;
      v21 = v7;
      v22 = 2082;
      v23 = buf;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}s: %p: %{public}s", &v18, 0x20u);
    }
  }

  else
  {
    v9 = *(a1 + 32);
    v10 = *(a1 + 40);
    if ((check_fail(v9, v10, a2, 0, "tcp_read") & 1) == 0 && datagram_read(v9, v10, a2, 0))
    {
      ioloop_tcp_input_start(v9);
    }
  }

  v11 = *(a1 + 32);
  if (v11)
  {
    v12 = *(v11 + 32);
    if (v12)
    {
      v13 = global_os_log;
      if (v12 < 10001)
      {
        if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136447490;
          v25 = "tcp_read_length_block_invoke";
          v26 = 1024;
          *v27 = v12;
          *&v27[4] = 2048;
          *&v27[6] = v11;
          *&v27[14] = 2080;
          *&v27[16] = "connection";
          *&v27[24] = 2080;
          *&v27[26] = "macos-ioloop.c";
          v28 = 1024;
          v29 = 773;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d", buf, 0x36u);
          v11 = *(a1 + 32);
          v12 = *(v11 + 32);
        }

        *(v11 + 32) = v12 - 1;
        if (v12 == 1)
        {
          v14 = global_os_log;
          if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136447234;
            v25 = "tcp_read_length_block_invoke";
            v26 = 2048;
            *v27 = v11;
            *&v27[8] = 2080;
            *&v27[10] = "connection";
            *&v27[18] = 2080;
            *&v27[20] = "macos-ioloop.c";
            *&v27[28] = 1024;
            *&v27[30] = 773;
            _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC:      finalize: %p (%10s): %s:%d", buf, 0x30u);
            v11 = *(a1 + 32);
          }

          ++comm_finalized;
          comm_finalize(v11);
        }

        return;
      }

      if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
      {
LABEL_22:
        abort();
      }

      *buf = 136447490;
      v25 = "tcp_read_length_block_invoke";
      v26 = 1024;
      *v27 = v12;
      *&v27[4] = 2048;
      *&v27[6] = v11;
      *&v27[14] = 2080;
      *&v27[16] = "connection";
      *&v27[24] = 2080;
      *&v27[26] = "macos-ioloop.c";
      v28 = 1024;
      v29 = 773;
      v16 = "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d";
      v17 = v13;
    }

    else
    {
      v15 = global_os_log;
      if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_22;
      }

      *buf = 136447490;
      v25 = "tcp_read_length_block_invoke";
      v26 = 1024;
      *v27 = 0;
      *&v27[4] = 2048;
      *&v27[6] = v11;
      *&v27[14] = 2080;
      *&v27[16] = "connection";
      *&v27[24] = 2080;
      *&v27[26] = "macos-ioloop.c";
      v28 = 1024;
      v29 = 773;
      v16 = "%{public}s: ALLOC: release after finalize at %2.2d: %p (%10s): %s:%d";
      v17 = v15;
    }

    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_FAULT, v16, buf, 0x36u);
    goto LABEL_22;
  }
}

void __ioloop_listener_create_block_invoke_2(id a1, nw_protocol_options *a2)
{
  v3 = global_os_log;
  if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136446210;
    v5 = "ioloop_listener_create_block_invoke_2";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}s: setting tcp mss to 450", &v4, 0xCu);
  }

  nw_tcp_options_set_maximum_segment_size(a2, 0x1C2u);
}

void ioloop_listener_context_release(uint64_t a1)
{
  if (!a1)
  {
    return;
  }

  v2 = *(a1 + 32);
  if (!v2)
  {
    v3 = global_os_log;
    if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_16;
    }

    v6 = 136447490;
    v7 = "ioloop_listener_context_release";
    v8 = 1024;
    *v9 = 0;
    *&v9[4] = 2048;
    *&v9[6] = a1;
    *&v9[14] = 2080;
    *&v9[16] = "listener";
    *&v9[24] = 2080;
    *&v9[26] = "macos-ioloop.c";
    v10 = 1024;
    v11 = 1152;
    v5 = "%{public}s: ALLOC: release after finalize at %2.2d: %p (%10s): %s:%d";
    goto LABEL_15;
  }

  v3 = global_os_log;
  if (v2 >= 10001)
  {
    if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_16;
    }

    v6 = 136447490;
    v7 = "ioloop_listener_context_release";
    v8 = 1024;
    *v9 = v2;
    *&v9[4] = 2048;
    *&v9[6] = a1;
    *&v9[14] = 2080;
    *&v9[16] = "listener";
    *&v9[24] = 2080;
    *&v9[26] = "macos-ioloop.c";
    v10 = 1024;
    v11 = 1152;
    v5 = "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d";
LABEL_15:
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_FAULT, v5, &v6, 0x36u);
LABEL_16:
    abort();
  }

  if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136447490;
    v7 = "ioloop_listener_context_release";
    v8 = 1024;
    *v9 = v2;
    *&v9[4] = 2048;
    *&v9[6] = a1;
    *&v9[14] = 2080;
    *&v9[16] = "listener";
    *&v9[24] = 2080;
    *&v9[26] = "macos-ioloop.c";
    v10 = 1024;
    v11 = 1152;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d", &v6, 0x36u);
    v2 = *(a1 + 32);
  }

  *(a1 + 32) = v2 - 1;
  if (v2 == 1)
  {
    v4 = global_os_log;
    if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 136447234;
      v7 = "ioloop_listener_context_release";
      v8 = 2048;
      *v9 = a1;
      *&v9[8] = 2080;
      *&v9[10] = "listener";
      *&v9[18] = 2080;
      *&v9[20] = "macos-ioloop.c";
      *&v9[28] = 1024;
      *&v9[30] = 1152;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC:      finalize: %p (%10s): %s:%d", &v6, 0x30u);
    }

    ++listener_finalized;
    listener_finalize(a1);
  }
}

void ioloop_read_source_finalize(_DWORD *a1)
{
  v2 = global_os_log;
  if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
  {
    v3 = a1[23];
    v4 = *(a1 + 9);
    v5 = *(a1 + 10);
    v13 = 136447234;
    v14 = "ioloop_read_source_finalize";
    v15 = 2048;
    *v16 = a1;
    *&v16[8] = 1024;
    *&v16[10] = v3;
    *&v16[14] = 2048;
    *&v16[16] = v4;
    *&v16[24] = 2048;
    *&v16[26] = v5;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%{public}s: io %p fd %d, read source %p, write_source %p", &v13, 0x30u);
  }

  if (*(a1 + 88) == 1)
  {
    v6 = *(a1 + 6);
    if (v6)
    {
      v6(*(a1 + 7));
    }

    ++file_descriptor_finalized;
    return;
  }

  v7 = *a1;
  if (!*a1)
  {
    v8 = global_os_log;
    if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_25;
    }

    v13 = 136447490;
    v14 = "ioloop_read_source_finalize";
    v15 = 1024;
    *v16 = 0;
    *&v16[4] = 2048;
    *&v16[6] = a1;
    *&v16[14] = 2080;
    *&v16[16] = "io";
    *&v16[24] = 2080;
    *&v16[26] = "macos-ioloop.c";
    v17 = 1024;
    v18 = 2349;
    v12 = "%{public}s: ALLOC: release after finalize at %2.2d: %p (%10s): %s:%d";
    goto LABEL_24;
  }

  v8 = global_os_log;
  if (v7 >= 10001)
  {
    if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_25;
    }

    v13 = 136447490;
    v14 = "ioloop_read_source_finalize";
    v15 = 1024;
    *v16 = v7;
    *&v16[4] = 2048;
    *&v16[6] = a1;
    *&v16[14] = 2080;
    *&v16[16] = "io";
    *&v16[24] = 2080;
    *&v16[26] = "macos-ioloop.c";
    v17 = 1024;
    v18 = 2349;
    v12 = "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d";
LABEL_24:
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_FAULT, v12, &v13, 0x36u);
LABEL_25:
    abort();
  }

  if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 136447490;
    v14 = "ioloop_read_source_finalize";
    v15 = 1024;
    *v16 = v7;
    *&v16[4] = 2048;
    *&v16[6] = a1;
    *&v16[14] = 2080;
    *&v16[16] = "io";
    *&v16[24] = 2080;
    *&v16[26] = "macos-ioloop.c";
    v17 = 1024;
    v18 = 2349;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d", &v13, 0x36u);
    v7 = *a1;
  }

  *a1 = v7 - 1;
  if (v7 == 1)
  {
    v9 = global_os_log;
    if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 136447234;
      v14 = "ioloop_read_source_finalize";
      v15 = 2048;
      *v16 = a1;
      *&v16[8] = 2080;
      *&v16[10] = "io";
      *&v16[18] = 2080;
      *&v16[20] = "macos-ioloop.c";
      *&v16[28] = 1024;
      *&v16[30] = 2349;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC:      finalize: %p (%10s): %s:%d", &v13, 0x30u);
      v10 = *a1;
      ++file_descriptor_finalized;
      if (v10)
      {
        return;
      }
    }

    else
    {
      ++file_descriptor_finalized;
    }

    v11 = *(a1 + 4);
    if (v11)
    {
      v11(*(a1 + 7));
    }

    free(a1);
  }
}

void ioloop_read_source_cancel_callback(uint64_t a1)
{
  v2 = global_os_log;
  if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 92);
    v4 = *(a1 + 72);
    v5 = *(a1 + 80);
    v9 = 136447234;
    v10 = "ioloop_read_source_cancel_callback";
    v11 = 2048;
    v12 = a1;
    v13 = 1024;
    v14 = v3;
    v15 = 2048;
    v16 = v4;
    v17 = 2048;
    v18 = v5;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%{public}s: io %p fd %d, read source %p, write_source %p", &v9, 0x30u);
  }

  v6 = *(a1 + 72);
  if (v6)
  {
    dispatch_release(v6);
    *(a1 + 72) = 0;
    v7 = *(a1 + 92);
    if (v7 == -1)
    {
      v8 = global_os_log;
      if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
      {
        v9 = 136446210;
        v10 = "ioloop_read_source_cancel_callback";
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_FAULT, "%{public}s: io->fd has been set to -1 too early", &v9, 0xCu);
      }
    }

    else
    {
      close(v7);
      *(a1 + 92) = -1;
    }
  }
}

uint64_t ioloop_read_event(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    return v1(result, *(result + 56));
  }

  return result;
}

void ioloop_dnssd_txn_cancel(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = global_os_log;
  v4 = os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT);
  if (v2)
  {
    if (v4)
    {
      v5 = 136446722;
      v6 = "ioloop_dnssd_txn_cancel";
      v7 = 2048;
      v8 = a1;
      v9 = 2048;
      v10 = v2;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}s: txn %p serviceref %p", &v5, 0x20u);
      v2 = *(a1 + 8);
    }

    DNSServiceRefDeallocate(v2);
    *(a1 + 8) = 0;
  }

  else if (v4)
  {
    v5 = 136446210;
    v6 = "ioloop_dnssd_txn_cancel";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}s: dead transaction.", &v5, 0xCu);
  }
}

void ioloop_dnssd_txn_retain_(int *a1, int a2)
{
  v4 = global_os_log;
  if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *a1;
    *buf = 136447490;
    v10 = "ioloop_dnssd_txn_retain_";
    v11 = 1024;
    v12 = v5;
    v13 = 2048;
    v14 = a1;
    v15 = 2080;
    v16 = "dnssd_txn";
    v17 = 2080;
    v18 = "srp-mdns-proxy.c";
    v19 = 1024;
    v20 = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC:  retain at %2.2d: %p (%10s): %s:%d", buf, 0x36u);
  }

  if (*a1)
  {
    v6 = *a1 + 1;
    *a1 = v6;
    if (v6 >= 10001)
    {
      v8 = v6;
      v7 = global_os_log;
      if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
      {
        *buf = 136447490;
        v10 = "ioloop_dnssd_txn_retain_";
        v11 = 1024;
        v12 = v8;
        v13 = 2048;
        v14 = a1;
        v15 = 2080;
        v16 = "dnssd_txn";
        v17 = 2080;
        v18 = "srp-mdns-proxy.c";
        v19 = 1024;
        v20 = a2;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_FAULT, "%{public}s: ALLOC: retain at %2.2d: %p (%10s): %s:%d", buf, 0x36u);
      }

      abort();
    }
  }

  else
  {
    ++dnssd_txn_created;
    *a1 = 1;
  }
}

void ioloop_dnssd_txn_release_(int *a1, char *a2, int a3)
{
  if (!a1)
  {
    return;
  }

  v6 = *a1;
  if (!*a1)
  {
    v7 = global_os_log;
    if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_20;
    }

    v12 = 136447490;
    v13 = "ioloop_dnssd_txn_release_";
    v14 = 1024;
    *v15 = 0;
    *&v15[4] = 2048;
    *&v15[6] = a1;
    *&v15[14] = 2080;
    *&v15[16] = "dnssd_txn";
    *&v15[24] = 2080;
    *&v15[26] = strrchr(a2, 47) + 1;
    v16 = 1024;
    v17 = a3;
    v11 = "%{public}s: ALLOC: release after finalize at %2.2d: %p (%10s): %s:%d";
    goto LABEL_19;
  }

  v7 = global_os_log;
  if (v6 >= 10001)
  {
    if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_20;
    }

    v12 = 136447490;
    v13 = "ioloop_dnssd_txn_release_";
    v14 = 1024;
    *v15 = v6;
    *&v15[4] = 2048;
    *&v15[6] = a1;
    *&v15[14] = 2080;
    *&v15[16] = "dnssd_txn";
    *&v15[24] = 2080;
    *&v15[26] = strrchr(a2, 47) + 1;
    v16 = 1024;
    v17 = a3;
    v11 = "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d";
LABEL_19:
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_FAULT, v11, &v12, 0x36u);
LABEL_20:
    abort();
  }

  if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 136447490;
    v13 = "ioloop_dnssd_txn_release_";
    v14 = 1024;
    *v15 = v6;
    *&v15[4] = 2048;
    *&v15[6] = a1;
    *&v15[14] = 2080;
    *&v15[16] = "dnssd_txn";
    *&v15[24] = 2080;
    *&v15[26] = strrchr(a2, 47) + 1;
    v16 = 1024;
    v17 = a3;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d", &v12, 0x36u);
    v6 = *a1;
  }

  *a1 = v6 - 1;
  if (v6 == 1)
  {
    v8 = global_os_log;
    if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
    {
      v9 = strrchr(a2, 47);
      v12 = 136447234;
      v13 = "ioloop_dnssd_txn_release_";
      v14 = 2048;
      *v15 = a1;
      *&v15[8] = 2080;
      *&v15[10] = "dnssd_txn";
      *&v15[18] = 2080;
      *&v15[20] = v9 + 1;
      *&v15[28] = 1024;
      *&v15[30] = a3;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC:      finalize: %p (%10s): %s:%d", &v12, 0x30u);
    }

    ++dnssd_txn_finalized;
    if (*(a1 + 1))
    {
      ioloop_dnssd_txn_cancel(a1);
    }

    v10 = *(a1 + 4);
    if (v10)
    {
      v10(*(a1 + 2));
    }

    free(a1);
  }
}

void *ioloop_dnssd_txn_add_subordinate_(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, int a5)
{
  v10 = malloc_type_calloc(1uLL, 0x30uLL, 0x8D1A819DuLL);
  v11 = global_os_log;
  if (!v10)
  {
    if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
    {
      v20 = 136446722;
      v21 = "ioloop_dnssd_txn_add_subordinate_";
      v22 = 2048;
      *v23 = 1;
      *&v23[8] = 2048;
      *&v23[10] = 48;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%{public}s: strict_calloc(%zu, %zu) failed", &v20, 0x20u);
    }

    __break(1u);
  }

  v12 = v10;
  if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
  {
    v13 = *v12;
    v20 = 136447490;
    v21 = "ioloop_dnssd_txn_add_subordinate_";
    v22 = 1024;
    *v23 = v13;
    *&v23[4] = 2048;
    *&v23[6] = v12;
    *&v23[14] = 2080;
    *&v23[16] = "txn";
    v24 = 2080;
    v25 = strrchr(a4, 47) + 1;
    v26 = 1024;
    v27 = a5;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC:  retain at %2.2d: %p (%10s): %s:%d", &v20, 0x36u);
  }

  v14 = *v12;
  if (*v12)
  {
    v15 = v14 + 1;
    *v12 = v14 + 1;
    if (v14 + 1 >= 10001)
    {
      v16 = global_os_log;
      if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
      {
        v17 = strrchr(a4, 47);
        v20 = 136447490;
        v21 = "ioloop_dnssd_txn_add_subordinate_";
        v22 = 1024;
        *v23 = v15;
        *&v23[4] = 2048;
        *&v23[6] = v12;
        *&v23[14] = 2080;
        *&v23[16] = "txn";
        v24 = 2080;
        v25 = v17 + 1;
        v26 = 1024;
        v27 = a5;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_FAULT, "%{public}s: ALLOC: retain at %2.2d: %p (%10s): %s:%d", &v20, 0x36u);
      }

      abort();
    }
  }

  else
  {
    ++dnssd_txn_created;
    *v12 = 1;
  }

  v12[1] = a1;
  v18 = global_os_log;
  if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
  {
    v20 = 136446722;
    v21 = "ioloop_dnssd_txn_add_subordinate_";
    v22 = 2048;
    *v23 = v12;
    *&v23[8] = 2048;
    *&v23[10] = a1;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "%{public}s: txn %p serviceref %p", &v20, 0x20u);
  }

  v12[2] = a2;
  v12[4] = a3;
  return v12;
}

void *ioloop_dnssd_txn_add_(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, int a5)
{
  v6 = ioloop_dnssd_txn_add_subordinate_(a1, a2, a3, a4, a5);
  if (a1)
  {
    v7 = *(a1 + 16);
    if (v7 < 0 || (*(a1 + 20) ^ v7) != 0x12345678)
    {
      v12 = *(a1 + 16);
      syslog(4, "dnssd_clientstub DNSServiceRefSockFD called with invalid DNSServiceRef %p %08X %08X");
    }

    else if (*(a1 + 8))
    {
      syslog(4, "dnssd_clientstub DNSServiceRefSockFD undefined for kDNSServiceFlagsShareConnection subordinate DNSServiceRef %p");
    }

    else
    {
      v9 = ioloop_main_queue;
      if (ioloop_main_queue)
      {
        if (*(a1 + 96))
        {
          syslog(4, "dnssd_clientstub DNSServiceSetDispatchQueue dispatch queue set already");
        }

        else if (*(a1 + 88))
        {
          syslog(4, "dnssd_clientstub DNSServiceSetDispatchQueue dispatch source set already");
        }

        else
        {
          v10 = dispatch_source_create(&_dispatch_source_type_read, *(a1 + 16), 0, ioloop_main_queue);
          *(a1 + 88) = v10;
          if (v10)
          {
            *(a1 + 96) = v9;
            handler[0] = _NSConcreteStackBlock;
            handler[1] = 0x40000000;
            handler[2] = __DNSServiceSetDispatchQueue_block_invoke;
            handler[3] = &__block_descriptor_tmp;
            handler[4] = a1;
            dispatch_source_set_event_handler(v10, handler);
            v11 = *(a1 + 88);
            v13[0] = _NSConcreteStackBlock;
            v13[1] = 0x40000000;
            v13[2] = __DNSServiceSetDispatchQueue_block_invoke_2;
            v13[3] = &__block_descriptor_tmp_36;
            v14 = v7;
            dispatch_source_set_cancel_handler(v11, v13);
            dispatch_resume(*(a1 + 88));
          }

          else
          {
            syslog(4, "dnssd_clientstub DNSServiceSetDispatchQueue dispatch_source_create failed");
          }
        }
      }

      else
      {
        syslog(4, "dnssd_clientstub: DNSServiceSetDispatchQueue dispatch queue NULL");
      }
    }
  }

  else
  {
    syslog(4, "dnssd_clientstub DNSServiceRefSockFD called with NULL DNSServiceRef");
  }

  return v6;
}

_xpc_connection_s *ioloop_create_xpc_service(uint64_t a1)
{
  mach_service = xpc_connection_create_mach_service("com.apple.srp-mdns-proxy.proxy", ioloop_main_queue, 1uLL);
  v3 = mach_service;
  if (mach_service && xpc_get_type(mach_service) == &_xpc_type_connection)
  {
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 0x40000000;
    handler[2] = __ioloop_create_xpc_service_block_invoke;
    handler[3] = &__block_descriptor_tmp_38;
    handler[4] = "com.apple.srp-mdns-proxy.proxy";
    handler[5] = adv_xpc_message;
    handler[6] = a1;
    xpc_connection_set_event_handler(v3, handler);
    xpc_connection_resume(v3);
  }

  else
  {
    v4 = global_os_log;
    if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v8 = "ioloop_create_xpc_service";
      v9 = 2082;
      v10 = "com.apple.srp-mdns-proxy.proxy";
      v11 = 2048;
      v12 = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "%{public}s: ioloop_create_xpc_service: %{public}s: unable to create listener %p", buf, 0x20u);
    }

    if (v3)
    {
      xpc_release(v3);
      return 0;
    }
  }

  return v3;
}

void __ioloop_create_xpc_service_block_invoke(uint64_t a1, xpc_object_t object)
{
  type = xpc_get_type(object);
  if (type != &_xpc_type_connection)
  {
    v5 = global_os_log;
    if (type == &_xpc_type_error)
    {
      if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446466;
        *&buf[4] = "ioloop_create_xpc_service_block_invoke";
        *&buf[12] = 2082;
        *&buf[14] = xpc_dictionary_get_string(object, _xpc_error_key_description);
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "%{public}s: ioloop_create_xpc_service: XPCError: %{public}s", buf, 0x16u);
      }

      (*(a1 + 40))(0, 0, *(a1 + 48));
    }

    else if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      *&buf[4] = "ioloop_create_xpc_service_block_invoke";
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}s: Unknown EventMsg type", buf, 0xCu);
    }

    return;
  }

  v6 = global_os_log;
  if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    *buf = 136446722;
    *&buf[4] = "ioloop_create_xpc_service_block_invoke";
    *&buf[12] = 2082;
    *&buf[14] = v7;
    *&buf[22] = 2048;
    *&v27 = object;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}s: New %{public}s Client %p", buf, 0x20u);
  }

  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v22 = 0;
  v23 = &v22;
  v24 = 0x2000000000;
  v25 = 0;
  if (!object)
  {
    v15 = global_os_log;
    if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      *&buf[4] = "ioloop_xpc_accept";
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%{public}s: ioloop_xpc_accept: listener has been canceled.", buf, 0xCu);
    }

    goto LABEL_27;
  }

  v21 = v9;
  v10 = malloc_type_calloc(1uLL, 0x10uLL, 0x9F4D37C6uLL);
  if (v10)
  {
    v23[3] = v10;
    pid = xpc_connection_get_pid(object);
    euid = xpc_connection_get_euid(object);
    v13 = xpc_connection_copy_entitlement_value();
    if (v13)
    {
      v14 = v13;
      if (xpc_get_type(v13) == &_xpc_type_BOOL)
      {
        value = xpc_BOOL_get_value(v14);
        xpc_release(v14);
        if (value)
        {
          *v23[3] = object;
          xpc_retain(object);
          *(v23[3] + 8) = v21.i64[0];
          xpc_connection_set_target_queue(object, ioloop_main_queue);
          *buf = _NSConcreteStackBlock;
          *&buf[8] = 0x40000000;
          *&buf[16] = __ioloop_xpc_accept_block_invoke;
          *&v27 = &unk_1000A5318;
          *(&v27 + 1) = &v22;
          v28 = vextq_s8(v21, v21, 8uLL);
          xpc_connection_set_event_handler(object, buf);
          xpc_connection_resume(object);
LABEL_27:
          _Block_object_dispose(&v22, 8);
          return;
        }
      }

      else
      {
        xpc_release(v14);
      }
    }

    else
    {
      v16 = global_os_log;
      if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446210;
        *&buf[4] = "ioloop_xpc_client_is_entitled";
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "%{public}s: ioloop_xpc_client_is_entitled: Client Entitlement is NULL", buf, 0xCu);
      }
    }

    v18 = global_os_log;
    if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      *&buf[4] = "ioloop_xpc_client_is_entitled";
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "%{public}s: ioloop_xpc_client_is_entitled: Client is missing Entitlement!", buf, 0xCu);
      v18 = global_os_log;
    }

    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446978;
      *&buf[4] = "ioloop_xpc_accept";
      *&buf[12] = 1024;
      *&buf[14] = euid;
      *&buf[18] = 1024;
      *&buf[20] = pid;
      LOWORD(v27) = 2082;
      *(&v27 + 2) = v8;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "%{public}s: ioloop_xpc_accept: connection from uid %d pid %d is missing entitlement %{public}s.", buf, 0x22u);
    }

    xpc_connection_cancel(object);
    v19 = v23[3];
    if (v19)
    {
      free(v19);
      v23[3] = 0;
    }

    goto LABEL_27;
  }

  v20 = global_os_log;
  if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
  {
    *buf = 136446722;
    *&buf[4] = "ioloop_xpc_accept";
    *&buf[12] = 2048;
    *&buf[14] = 1;
    *&buf[22] = 2048;
    *&v27 = 16;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "%{public}s: strict_calloc(%zu, %zu) failed", buf, 0x20u);
  }

  __break(1u);
}

void __ioloop_xpc_accept_block_invoke(uint64_t a1, xpc_object_t object)
{
  type = xpc_get_type(object);
  if (object == &_xpc_error_connection_invalid)
  {
    v7 = global_os_log;
    if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 136446210;
      v16 = "ioloop_xpc_accept_block_invoke";
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}s: ioloop_xpc_accept event handler: connection has been finalized.", &v15, 0xCu);
    }

    v8 = *(*(*(a1 + 32) + 8) + 24);
    v9 = v8[1];
    if (v9)
    {
      v9(*v8, 0, *(a1 + 40));
      v8 = *(*(*(a1 + 32) + 8) + 24);
    }

    if (!*v8 || (xpc_release(*v8), **(*(*(a1 + 32) + 8) + 24) = 0, (v8 = *(*(*(a1 + 32) + 8) + 24)) != 0))
    {
      free(v8);
      *(*(*(a1 + 32) + 8) + 24) = 0;
    }
  }

  else
  {
    if (type != &_xpc_type_dictionary)
    {
      v5 = global_os_log;
      if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
      {
        v15 = 136446210;
        v16 = "ioloop_xpc_accept_block_invoke";
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}s: ioloop_xpc_accept event handler: client went away.", &v15, 0xCu);
      }

      xpc_connection_cancel(**(*(*(a1 + 32) + 8) + 24));
      v6 = *(*(*(a1 + 32) + 8) + 24);
      if (!v6[1])
      {
        goto LABEL_22;
      }

      (*(a1 + 48))(*v6, 0, *(a1 + 40));
LABEL_21:
      v6 = *(*(*(a1 + 32) + 8) + 24);
LABEL_22:
      v6[1] = 0;
      return;
    }

    v10 = *(*(*(a1 + 32) + 8) + 24);
    v11 = v10[1];
    if (!v11)
    {
      return;
    }

    v12 = v11(*v10, object, *(a1 + 40));
    v13 = global_os_log;
    v14 = os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT);
    if ((v12 & 1) == 0)
    {
      if (v14)
      {
        v15 = 136446210;
        v16 = "ioloop_xpc_accept_block_invoke";
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%{public}s: ioloop_xpc_accept event handler: callback indicated done.", &v15, 0xCu);
      }

      xpc_connection_cancel(**(*(*(a1 + 32) + 8) + 24));
      goto LABEL_21;
    }

    if (v14)
    {
      v15 = 136446210;
      v16 = "ioloop_xpc_accept_block_invoke";
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%{public}s: ioloop_xpc_accept event handler: continuing.", &v15, 0xCu);
    }
  }
}

uint64_t __ioloop_run_async_block_invoke(uint64_t a1)
{
  result = (*(a1 + 32))(*(a1 + 40));
  v3 = *(a1 + 48);
  if (v3)
  {
    v4 = *(a1 + 40);

    return v3(v4);
  }

  return result;
}

void srp_sig0_verify(_WORD *a1, uint64_t a2, uint64_t a3)
{
  err = 0;
  v3 = *(a2 + 19);
  v4 = *(a3 + 18);
  if (v3 != v4)
  {
    v45 = global_os_log;
    if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    keys[0].count[0] = 136446722;
    *&keys[0].count[1] = "srp_sig0_verify";
    LOWORD(keys[0].hash[1]) = 1024;
    *(&keys[0].hash[1] + 2) = v3;
    HIWORD(keys[0].hash[2]) = 1024;
    keys[0].hash[3] = v4;
    v46 = "%{public}s: KEY algorithm does not match the SIG(0) algorithm - KEY algorithm: %u, SIG(0) algorithm: %u";
    v47 = v45;
    v48 = 24;
    goto LABEL_64;
  }

  if (v3 != 13)
  {
    v49 = global_os_log;
    if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    keys[0].count[0] = 136446466;
    *&keys[0].count[1] = "srp_sig0_verify";
    LOWORD(keys[0].hash[1]) = 1024;
    *(&keys[0].hash[1] + 2) = v3;
    v46 = "%{public}s: Unsupported KEY algorithm - KEY algorithm: %u";
LABEL_56:
    v47 = v49;
    v48 = 18;
LABEL_64:
    _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_ERROR, v46, keys, v48);
    return;
  }

  v6 = *(a2 + 20);
  if (v6 != 64)
  {
    v49 = global_os_log;
    if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    keys[0].count[0] = 136446466;
    *&keys[0].count[1] = "srp_sig0_verify";
    LOWORD(keys[0].hash[1]) = 1024;
    *(&keys[0].hash[1] + 2) = v6;
    v46 = "%{public}s: Invalid KEY length - KEY len: %d";
    goto LABEL_56;
  }

  v8 = *(a3 + 52);
  if (v8 != 64)
  {
    v49 = global_os_log;
    if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    keys[0].count[0] = 136446466;
    *&keys[0].count[1] = "srp_sig0_verify";
    LOWORD(keys[0].hash[1]) = 1024;
    *(&keys[0].hash[1] + 2) = v8;
    v46 = "%{public}s: Invalid SIG(0) length - SIG(0) length: %d";
    goto LABEL_56;
  }

  error = 0;
  bytes = 4;
  *keys[0].count = kSecAttrKeyType;
  *keys[0].hash = kSecAttrKeyClass;
  *values = kSecAttrKeyTypeECSECPrimeRandom;
  *&values[8] = kSecAttrKeyClassPublic;
  Mutable = CFDataCreateMutable(kCFAllocatorDefault, 65);
  if (Mutable)
  {
    v11 = Mutable;
    CFDataAppendBytes(Mutable, &bytes, 1);
    CFDataAppendBytes(v11, *(a2 + 24), *(a2 + 20));
    v12 = CFDictionaryCreate(kCFAllocatorDefault, keys, values, 2, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    if (v12)
    {
      v13 = v12;
      v14 = SecKeyCreateWithData(v11, v12, &error);
      if (!v14)
      {
        v53 = global_os_log;
        if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446210;
          v66 = "create_public_sec_key";
          _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_ERROR, "%{public}s: SecKeyCreateWithData failed when creating public key SecKeyRef", buf, 0xCu);
        }
      }

      CFRelease(v11);
      CFRelease(v13);
      if (error)
      {
        CFRelease(error);
      }

      if (v14)
      {
        v15 = CFDataCreate(kCFAllocatorDefault, *(a3 + 56), *(a3 + 52));
        if (!v15)
        {
          v54 = global_os_log;
          if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
          {
            keys[0].count[0] = 136446210;
            *&keys[0].count[1] = "srp_sig0_verify";
            _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_ERROR, "%{public}s: CFDataCreate failed when creating sig_to_match_cfdata", keys, 0xCu);
          }

LABEL_45:
          CFRelease(v14);
          return;
        }

        v16 = v15;
        v17 = *(a3 + 18);
        if (v17 == 13)
        {
          memset(keys, 0, 104);
          CC_SHA256_Init(keys);
          CC_SHA256_Update(keys, a1 + (*(a3 + 48) + 11) + 12, 0x12u);
          v18 = *(a3 + 40);
          if (!v18)
          {
            goto LABEL_76;
          }

          v19 = 0;
          do
          {
            v19 += *(v18 + 8) + 1;
            v18 = *v18;
          }

          while (v18);
          if (v19 < 0x101)
          {
            if (v19)
            {
              signature = v16;
              key = v14;
              v20 = malloc_type_malloc(v19, 0xF8FA2FA1uLL);
              if (v20)
              {
                v21 = v20;
                v22 = *(a3 + 40);
                if (v22)
                {
                  v23 = 0;
                  v24 = v19;
                  v25 = v20;
                  while (1)
                  {
                    v26 = *(v22 + 8);
                    if (v24 <= v26)
                    {
                      break;
                    }

                    *v25 = v26;
                    v27 = v25 + 1;
                    memcpy(v27, v22 + 9, *(v22 + 8));
                    v28 = *(v22 + 8);
                    v25 = &v27[v28];
                    v24 += ~v28;
                    v29 = v23 + v28;
                    v23 = v29 + 1;
                    v22 = *v22;
                    if (!v22)
                    {
                      if (v29 == -1)
                      {
                        break;
                      }

                      CC_SHA256_Update(keys, v21, v19);
                      a1[5] = bswap32((bswap32(a1[5]) >> 16) - 1) >> 16;
                      CC_SHA256_Update(keys, a1, *(a3 + 48) + 12);
                      a1[5] = bswap32((bswap32(a1[5]) >> 16) + 1) >> 16;
                      CC_SHA256_Final(values, keys);
                      v30 = CFDataCreate(kCFAllocatorDefault, values, 32);
                      if (v30)
                      {
                        v31 = v30;
                        free(v21);
                        v32 = *(a2 + 19);
                        v16 = signature;
                        if (v32 == 13)
                        {
                          v14 = key;
                          if (!SecKeyVerifySignature(key, kSecKeyAlgorithmECDSASignatureDigestRFC4754, v31, signature, &err))
                          {
                            v39 = CFErrorCopyDescription(err);
                            CFStringGetCString(v39, keys, 200, 0x8000100u);
                            v40 = global_os_log;
                            if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
                            {
                              *values = 136446466;
                              *&values[4] = "srp_sig0_verify";
                              *&values[12] = 2080;
                              *&values[14] = keys;
                              _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_ERROR, "%{public}s: SecKeyVerifySignature failed to validate - Error Description: %s", values, 0x16u);
                            }

                            if (v39)
                            {
                              CFRelease(v39);
                            }

                            if (err)
                            {
                              CFRelease(err);
                              err = 0;
                            }
                          }
                        }

                        else
                        {
                          v38 = global_os_log;
                          v14 = key;
                          if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
                          {
                            keys[0].count[0] = 136446466;
                            *&keys[0].count[1] = "srp_sig0_verify";
                            LOWORD(keys[0].hash[1]) = 1024;
                            *(&keys[0].hash[1] + 2) = v32;
                            _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_FAULT, "%{public}s: Unsupported KEY algorithm - KEY algorithm: %u", keys, 0x12u);
                          }
                        }

                        CFRelease(v31);
                        goto LABEL_44;
                      }

                      v56 = global_os_log;
                      v16 = signature;
                      if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
                      {
                        goto LABEL_31;
                      }

                      *buf = 136446210;
                      v66 = "create_data_to_verify";
                      v34 = "%{public}s: CFDataCreate failed when creating data_to_verify_cfdata";
                      v35 = v56;
                      v36 = 12;
                      goto LABEL_30;
                    }
                  }
                }

                v33 = global_os_log;
                v16 = signature;
                if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
                {
                  *buf = 136446466;
                  v66 = "create_data_to_verify";
                  v67 = 2048;
                  v68 = v19;
                  v34 = "%{public}s: Failed to write canonical name - canonical_signer_name_length: %lu";
                  v35 = v33;
                  v36 = 22;
LABEL_30:
                  _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_ERROR, v34, buf, v36);
                }

LABEL_31:
                free(v21);
                v14 = key;
                goto LABEL_32;
              }

              v57 = global_os_log;
              if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_81;
              }

              *buf = 136446210;
              v66 = "create_data_to_verify";
              v58 = "%{public}s: strict allocator failed";
              goto LABEL_80;
            }

LABEL_76:
            v57 = global_os_log;
            if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
            {
LABEL_81:
              __break(1u);
              return;
            }

            *buf = 136446210;
            v66 = "create_data_to_verify";
            v58 = "%{public}s: strict_malloc called with size 0";
LABEL_80:
            _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_ERROR, v58, buf, 0xCu);
            goto LABEL_81;
          }

          v41 = global_os_log;
          if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
          {
            *buf = 136446466;
            v66 = "create_data_to_verify";
            v67 = 2048;
            v68 = v19;
            v42 = "%{public}s: Invalid signer name length - signer name length: %zu";
            v43 = v41;
            v44 = 22;
LABEL_73:
            _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_FAULT, v42, buf, v44);
          }
        }

        else
        {
          v55 = global_os_log;
          if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
          {
            *buf = 136446466;
            v66 = "create_data_to_verify";
            v67 = 1024;
            LODWORD(v68) = v17;
            v42 = "%{public}s: Unsupported SIG(0) algorithm - SIG(0) algorithm: %u";
            v43 = v55;
            v44 = 18;
            goto LABEL_73;
          }
        }

LABEL_32:
        v37 = global_os_log;
        if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
        {
          keys[0].count[0] = 136446210;
          *&keys[0].count[1] = "srp_sig0_verify";
          _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_ERROR, "%{public}s: Failed to data_to_verify_cfdata", keys, 0xCu);
        }

LABEL_44:
        CFRelease(v16);
        goto LABEL_45;
      }
    }

    else
    {
      v51 = global_os_log;
      if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446210;
        v66 = "create_public_sec_key";
        _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_ERROR, "%{public}s: CFDictionaryCreate failed when creating public key options CFDictionaryRef", buf, 0xCu);
      }

      CFRelease(v11);
    }
  }

  else
  {
    v50 = global_os_log;
    if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      v66 = "create_public_sec_key";
      _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_ERROR, "%{public}s: CFDataCreateMutable failed when creating public key CFMutableDataRef", buf, 0xCu);
    }
  }

  v52 = global_os_log;
  if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
  {
    keys[0].count[0] = 136446210;
    *&keys[0].count[1] = "srp_sig0_verify";
    v46 = "%{public}s: Failed to create public_key";
    v47 = v52;
    v48 = 12;
    goto LABEL_64;
  }
}

uint64_t thread_netdata_tlv_iterator_next(uint64_t a1, int *a2)
{
  v3 = *(a1 + 10);
  v4 = *(a1 + 8);
  if (v4 <= v3 || v4 - v3 < 2)
  {
    goto LABEL_9;
  }

  v7 = (*a1 + v3);
  v8 = *v7 >> 1;
  *a2 = v8;
  *(a2 + 4) = *v7 & 1;
  v9 = v7[1];
  if (v4 - v3 - 2 < v9)
  {
    v10 = global_os_log;
    if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
    {
LABEL_9:
      v14 = 1;
      goto LABEL_10;
    }

    *buf = 136446210;
    v53 = "thread_netdata_tlv_iterator_next";
    v11 = "%{public}s: the provided buffer length is smaller than the decoded TLV length";
    v12 = v10;
    v13 = 12;
LABEL_8:
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, v11, buf, v13);
    goto LABEL_9;
  }

  v18 = v7 + 2;
  v14 = 2;
  if (v8 <= 2)
  {
    if (!v8)
    {
      bzero(a2 + 2, 0x3F8uLL);
      v20 = a2 + 2;
      v21 = v18;
      v22 = v9;
      v23 = 0;
LABEL_30:
      v14 = thread_netdata_decode_tlv_with_entries(v21, v22, v20, v23);
      if (!v14)
      {
        goto LABEL_67;
      }

      goto LABEL_10;
    }

    if (v8 != 1)
    {
      if (v8 != 2)
      {
        goto LABEL_10;
      }

      *(a2 + 2) = 0u;
      v20 = a2 + 2;
      *(a2 + 33) = 0;
      *(a2 + 58) = 0u;
      *(a2 + 62) = 0u;
      *(a2 + 50) = 0u;
      *(a2 + 54) = 0u;
      *(a2 + 42) = 0u;
      *(a2 + 46) = 0u;
      *(a2 + 34) = 0u;
      *(a2 + 38) = 0u;
      *(a2 + 26) = 0u;
      *(a2 + 30) = 0u;
      *(a2 + 18) = 0u;
      *(a2 + 22) = 0u;
      *(a2 + 10) = 0u;
      *(a2 + 14) = 0u;
      *(a2 + 6) = 0u;
      v21 = (v7 + 2);
      v22 = v9;
      v23 = 2;
      goto LABEL_30;
    }

    v31 = *(a1 + 12);
    *(a2 + 5) = 0;
    *(a2 + 6) = 0u;
    *(a2 + 2) = 0u;
    if (v9 <= 1)
    {
      v38 = global_os_log;
      if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_9;
      }

      *buf = 136446466;
      v53 = "thread_netdata_decode_prefix_payload";
      v54 = 1024;
      *v55 = v9;
      v11 = "%{public}s: prefix TLV payload must be at least 2 bytes long (was %u bytes long)";
      v12 = v38;
      v13 = 18;
      goto LABEL_8;
    }

    *(a2 + 8) = v7[2];
    v32 = v7[3];
    *(a2 + 9) = v32;
    v33 = (v32 + 7) >> 3;
    *(a2 + 10) = v33;
    if (v32 >= 0x81)
    {
      v39 = global_os_log;
      if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
      {
LABEL_56:
        v14 = 4;
        goto LABEL_10;
      }

      *buf = 136446722;
      v53 = "thread_netdata_decode_prefix_payload";
      v54 = 1024;
      *v55 = v32;
      *&v55[4] = 1024;
      *&v55[6] = (v32 + 7) >> 3;
      v40 = "%{public}s: prefix TLV's prefix length is too large to fit in an IPv6 address (prefix is %d bits / %d bytes long)";
      v41 = v39;
      v42 = 24;
    }

    else
    {
      if (v33 + 2 > v9)
      {
        v34 = global_os_log;
        if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_9;
        }

        *buf = 136446978;
        v53 = "thread_netdata_decode_prefix_payload";
        v54 = 1024;
        *v55 = v32;
        *&v55[4] = 1024;
        *&v55[6] = (v32 + 7) >> 3;
        LOWORD(v56[0]) = 2048;
        *(v56 + 2) = v9 - 2;
        v11 = "%{public}s: prefix TLV payload cannot contain the IPv6 prefix of length %d (%d bytes) (only %lu bytes remaining)";
        v12 = v34;
        v13 = 34;
        goto LABEL_8;
      }

      memcpy(a2 + 3, v7 + 4, (v32 + 7) >> 3);
      v49 = v9 - (v33 + 2);
      if (v49 != 1)
      {
        *(a2 + 4) = &v18[(v33 + 2)];
        a2[10] = v49;
        a2[11] = v31;
        goto LABEL_67;
      }

      v50 = global_os_log;
      if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_56;
      }

      *buf = 136446210;
      v53 = "thread_netdata_decode_prefix_payload";
      v40 = "%{public}s: could not init the Prefix TLV's sub-TLV iterator";
      v41 = v50;
      v42 = 12;
    }

    _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_ERROR, v40, buf, v42);
    goto LABEL_56;
  }

  if (v8 > 4)
  {
    if (v8 != 5)
    {
      if (v8 != 6)
      {
        goto LABEL_10;
      }

      *(a2 + 1) = 0;
      *(a2 + 2) = 0;
      if (v9 > 1)
      {
        *buf = 0;
        if (dns_u16_parse((v7 + 2), v9, buf, a2 + 4))
        {
          v24 = *buf;
          *(a2 + 5) = v9 - *buf;
          *(a2 + 2) = &v18[v24];
          goto LABEL_67;
        }

        goto LABEL_66;
      }

      v36 = global_os_log;
      if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446466;
        v53 = "thread_netdata_decode_server_payload";
        v54 = 1024;
        *v55 = v9;
        v37 = "%{public}s: Server TLV value must be at least 2 bytes long (was %u bytes long)";
        goto LABEL_65;
      }

      goto LABEL_66;
    }

    v25 = *(a1 + 12);
    *(a2 + 2) = 0u;
    v26 = a2 + 2;
    *(a2 + 6) = 0u;
    if (v9 <= 1)
    {
      v36 = global_os_log;
      if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446466;
        v53 = "thread_netdata_decode_service_payload";
        v54 = 1024;
        *v55 = v9;
        v37 = "%{public}s: service TLV value must be at least 2 bytes long (was %u bytes long)";
LABEL_65:
        _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_ERROR, v37, buf, 0x12u);
      }

LABEL_66:
      v14 = 1;
      goto LABEL_10;
    }

    v27 = *v18;
    v28 = *v18 & 0xF;
    *(a2 + 12) = *v18 & 0xF;
    v29 = global_os_log;
    if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446466;
      v53 = "thread_netdata_decode_service_payload";
      v54 = 1024;
      *v55 = v28;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "%{public}s: s_id = %d", buf, 0x12u);
    }

    v51 = 1;
    if (v27 < 0)
    {
      *v26 = 44970;
      v30 = 1;
    }

    else
    {
      if (!dns_u32_parse(v18, v9, &v51, a2 + 2))
      {
        v36 = global_os_log;
        if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446466;
          v53 = "thread_netdata_decode_service_payload";
          v54 = 1024;
          *v55 = v9;
          v37 = "%{public}s: service TLV value must be at least 6 bytes long (was %u bytes long)";
          goto LABEL_65;
        }

        goto LABEL_66;
      }

      v30 = v51;
    }

    v43 = v18[v30];
    *(a2 + 13) = v43;
    v44 = v30 + 1;
    if (v9 - v44 < v43)
    {
      v36 = global_os_log;
      if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446466;
        v53 = "thread_netdata_decode_service_payload";
        v54 = 1024;
        *v55 = v43;
        v37 = "%{public}s: not enough space in the TLV buffer to contain the %u bytes of service data";
        goto LABEL_65;
      }

      goto LABEL_66;
    }

    *(a2 + 2) = &v18[v44];
    v45 = v44 + v43;
    if ((v9 - (v44 + v43)) != 1)
    {
      *(a2 + 3) = &v18[v45];
      *(a2 + 16) = v9 - v45;
      *(a2 + 17) = 0;
      a2[9] = v25;
      goto LABEL_67;
    }

    v14 = 4;
LABEL_10:
    v15 = global_os_log;
    if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
    {
      v16 = *a2;
      if (v16 > 6)
      {
        v17 = "unknown";
      }

      else
      {
        v17 = off_1000A5338[v16];
      }

      *buf = 136446722;
      v53 = "thread_netdata_tlv_iterator_next";
      v54 = 2080;
      *v55 = v17;
      *&v55[8] = 1024;
      LODWORD(v56[0]) = v14;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%{public}s: could not decode TLV of type %s, status code: %d", buf, 0x1Cu);
    }

    return v14;
  }

  if (v8 == 3)
  {
    *(a2 + 10) = 0;
    *(a2 + 4) = 0;
    if (v9 != 2)
    {
      v35 = global_os_log;
      if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_9;
      }

      *buf = 136446466;
      v53 = "thread_netdata_decode_6lowpan_id_payload";
      v54 = 2048;
      *v55 = v9;
      v11 = "%{public}s: 6LoWPAN ID TLV value must be exactly 2 bytes long (was %lu bytes long)";
      v12 = v35;
      v13 = 22;
      goto LABEL_8;
    }

    *(a2 + 8) = (v7[2] & 0x10) != 0;
    *(a2 + 9) = v7[2] & 0xF;
    *(a2 + 10) = v7[3];
  }

  else
  {
    *(a2 + 4) = v9;
    *(a2 + 2) = v18;
  }

LABEL_67:
  *(a1 + 10) += v9 + 2;
  v46 = global_os_log;
  v14 = 0;
  if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
  {
    v47 = *a2;
    if (v47 > 6)
    {
      v48 = "unknown";
    }

    else
    {
      v48 = off_1000A5338[v47];
    }

    *buf = 136446722;
    v53 = "thread_netdata_tlv_iterator_next";
    v54 = 2080;
    *v55 = v48;
    *&v55[8] = 2048;
    v56[0] = v9;
    _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEFAULT, "%{public}s: decoded %s TLV, length: %lu", buf, 0x20u);
    return 0;
  }

  return v14;
}

uint64_t thread_netdata_decode_tlv_with_entries(uint64_t a1, unsigned int a2, void *a3, int a4)
{
  if (!a2)
  {
    return 0;
  }

  v6 = a2;
  v8 = 0;
  v9 = a3 + 1;
  v10 = a2;
  while (1)
  {
    v21 = 0;
    if (a4 != 2)
    {
      break;
    }

    if ((v6 - v8) < 4u || (v16 = v9 + 2 * *a3, !dns_u16_parse(a1 + v8, (v6 - v8), &v21, v16)) || !dns_u16_parse(a1 + v8, (v6 - v8), &v21, v16 + 1))
    {
      v18 = global_os_log;
      if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446466;
        v23 = "thread_netdata_decode_tlv_with_entries";
        v24 = 1024;
        v25 = 1;
        v19 = "%{public}s: could not parse border_router TLV entry: error code %d";
        goto LABEL_18;
      }

      return 4;
    }

    v15 = v21;
LABEL_12:
    ++*a3;
    v8 += v15;
    if (v8 >= v10)
    {
      return 0;
    }
  }

  if (!a4)
  {
    v11 = (v6 - v8);
    if (v11 < 3 || (v12 = a1 + v8, v13 = v9 + 12 * *a3, !dns_u16_parse(a1 + v8, v11, &v21, v13)))
    {
      v18 = global_os_log;
      if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446466;
        v23 = "thread_netdata_decode_tlv_with_entries";
        v24 = 1024;
        v25 = 1;
        v19 = "%{public}s: could not parse has_route TLV entry: error code %d";
LABEL_18:
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, v19, buf, 0x12u);
      }

      return 4;
    }

    v14 = v21;
    *(v13 + 1) = *(v12 + v21) >> 6;
    v13[8] = (*(v12 + v14) & 0x20) != 0;
    v15 = v14 + 1;
    goto LABEL_12;
  }

  v20 = global_os_log;
  if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
  {
    *buf = 136446466;
    v23 = "thread_netdata_decode_tlv_with_entries";
    v24 = 1024;
    v25 = a4;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "%{public}s: TLV of type %d is not supposed to be a TLV with entries", buf, 0x12u);
  }

  return 3;
}

void service_tracker_finalize(void *a1)
{
  v2 = a1[6];
  if (!v2)
  {
    goto LABEL_4;
  }

  do
  {
    v3 = *(v2 + 8);
    thread_service_release_(v2, "/Library/Caches/com.apple.xbs/Sources/mDNSResponderExtras/ServiceRegistration/service-tracker.c", 85);
    v2 = v3;
  }

  while (v3);
  if (a1)
  {
LABEL_4:

    free(a1);
  }
}

void service_tracker_start(void *a1)
{
  v2 = a1[4];
  if (v2)
  {
    cti_events_discontinue(v2);
    a1[4] = 0;
    v3 = global_os_log;
    if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
    {
      v4 = a1[1];
      v18 = 136446466;
      v19 = "service_tracker_start";
      v20 = 2048;
      *v21 = v4;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}s: [ST%lld] restarting", &v18, 0x16u);
    }

    v5 = *a1;
    if (*a1 == 1)
    {
      v8 = global_os_log;
      if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
      {
        v18 = 136446210;
        v19 = "service_tracker_start";
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_FAULT, "%{public}s: service tracker reference count should not be 1 here!", &v18, 0xCu);
      }
    }

    else
    {
      if (!v5)
      {
        v6 = global_os_log;
        if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
        {
          goto LABEL_33;
        }

        v18 = 136447490;
        v19 = "service_tracker_start";
        v20 = 1024;
        *v21 = 0;
        *&v21[4] = 2048;
        *&v21[6] = a1;
        *&v21[14] = 2080;
        *&v21[16] = "tracker";
        *&v21[24] = 2080;
        *&v21[26] = "service-tracker.c";
        v22 = 1024;
        v23 = 453;
        v17 = "%{public}s: ALLOC: release after finalize at %2.2d: %p (%10s): %s:%d";
        goto LABEL_32;
      }

      v6 = global_os_log;
      if (v5 >= 10001)
      {
        if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
        {
          goto LABEL_33;
        }

        v18 = 136447490;
        v19 = "service_tracker_start";
        v20 = 1024;
        *v21 = v5;
        *&v21[4] = 2048;
        *&v21[6] = a1;
        *&v21[14] = 2080;
        *&v21[16] = "tracker";
        *&v21[24] = 2080;
        *&v21[26] = "service-tracker.c";
        v22 = 1024;
        v23 = 453;
        v17 = "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d";
        goto LABEL_32;
      }

      if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
      {
        v18 = 136447490;
        v19 = "service_tracker_start";
        v20 = 1024;
        *v21 = v5;
        *&v21[4] = 2048;
        *&v21[6] = a1;
        *&v21[14] = 2080;
        *&v21[16] = "tracker";
        *&v21[24] = 2080;
        *&v21[26] = "service-tracker.c";
        v22 = 1024;
        v23 = 453;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d", &v18, 0x36u);
        v5 = *a1;
      }

      *a1 = v5 - 1;
      if (v5 == 1)
      {
        v7 = global_os_log;
        if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
        {
          v18 = 136447234;
          v19 = "service_tracker_start";
          v20 = 2048;
          *v21 = a1;
          *&v21[8] = 2080;
          *&v21[10] = "tracker";
          *&v21[18] = 2080;
          *&v21[20] = "service-tracker.c";
          *&v21[28] = 1024;
          *&v21[30] = 453;
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC:      finalize: %p (%10s): %s:%d", &v18, 0x30u);
        }

        ++service_tracker_finalized;
        service_tracker_finalize(a1);
      }
    }
  }

  netdata_mode = cti_get_netdata_mode_(a1, service_tracker_netdata_mode_callback, "/Library/Caches/com.apple.xbs/Sources/mDNSResponderExtras/ServiceRegistration/service-tracker.c", 460);
  v10 = global_os_log;
  v11 = os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT);
  if (!netdata_mode)
  {
    if (v11)
    {
      v13 = a1[1];
      v18 = 136446466;
      v19 = "service_tracker_start";
      v20 = 2048;
      *v21 = v13;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%{public}s: [ST%lld] netdata mode get started", &v18, 0x16u);
      v10 = global_os_log;
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v14 = *a1;
      v18 = 136447490;
      v19 = "service_tracker_start";
      v20 = 1024;
      *v21 = v14;
      *&v21[4] = 2048;
      *&v21[6] = a1;
      *&v21[14] = 2080;
      *&v21[16] = "tracker";
      *&v21[24] = 2080;
      *&v21[26] = "service-tracker.c";
      v22 = 1024;
      v23 = 466;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC:  retain at %2.2d: %p (%10s): %s:%d", &v18, 0x36u);
    }

    v15 = *a1;
    if (!*a1)
    {
      ++service_tracker_created;
      *a1 = 1;
      return;
    }

    v16 = v15 + 1;
    *a1 = v15 + 1;
    if (v15 + 1 < 10001)
    {
      return;
    }

    v6 = global_os_log;
    if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
    {
LABEL_33:
      abort();
    }

    v18 = 136447490;
    v19 = "service_tracker_start";
    v20 = 1024;
    *v21 = v16;
    *&v21[4] = 2048;
    *&v21[6] = a1;
    *&v21[14] = 2080;
    *&v21[16] = "tracker";
    *&v21[24] = 2080;
    *&v21[26] = "service-tracker.c";
    v22 = 1024;
    v23 = 466;
    v17 = "%{public}s: ALLOC: retain at %2.2d: %p (%10s): %s:%d";
LABEL_32:
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_FAULT, v17, &v18, 0x36u);
    goto LABEL_33;
  }

  if (v11)
  {
    v12 = a1[1];
    v18 = 136446722;
    v19 = "service_tracker_start";
    v20 = 2048;
    *v21 = v12;
    *&v21[8] = 1024;
    *&v21[10] = netdata_mode;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%{public}s: [ST%lld] could not start CTI request for netdata mode: %d", &v18, 0x1Cu);
  }
}

void service_tracker_netdata_mode_callback(uint64_t a1, int a2, int a3)
{
  if (a3)
  {
    v4 = global_os_log;
    if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    *buf = 136446466;
    v19 = "service_tracker_netdata_mode_callback";
    v20 = 1024;
    LODWORD(v21) = a3;
    v5 = "%{public}s: got an error status when getting the network data mode: %d";
    goto LABEL_4;
  }

  if (a2 == 1)
  {
    if (*(a1 + 32))
    {
      v11 = global_os_log;
      if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
      {
        return;
      }

      *buf = 136446210;
      v19 = "service_tracker_netdata_mode_callback";
      v5 = "%{public}s: double callback";
      goto LABEL_15;
    }

    v16 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_string(v16, "interface", "org.wpantund.v1");
    xpc_dictionary_set_string(v16, "path", "/org/wpantund/utun2");
    xpc_dictionary_set_string(v16, "method", "PropGet");
    xpc_dictionary_set_string(v16, "property_name", "Thread:Services");
    v12 = setup_for_command((a1 + 32), "get_service_list", "Thread:Services", 0, v16, a1, service_tracker_callback, cti_internal_service_reply_callback, 0, "/Library/Caches/com.apple.xbs/Sources/mDNSResponderExtras/ServiceRegistration/service-tracker.c", 426);
    if (v16)
    {
      xpc_release(v16);
    }

    v13 = global_os_log;
    if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
    {
      v17 = *(a1 + 8);
      *buf = 136446466;
      v19 = "service_tracker_netdata_mode_callback";
      v20 = 2048;
      v21 = v17;
      v15 = "%{public}s: [ST%lld] service list get started";
      goto LABEL_24;
    }
  }

  else
  {
    if (a2 != 2)
    {
      v11 = global_os_log;
      if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
      {
        return;
      }

      *buf = 136446210;
      v19 = "service_tracker_netdata_mode_callback";
      v5 = "%{public}s: cannot start service_tracker without knowing the netdata API mode";
      goto LABEL_15;
    }

    v10 = (a1 + 32);
    if (*(a1 + 32))
    {
      v11 = global_os_log;
      if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
      {
        return;
      }

      *buf = 136446210;
      v19 = "service_tracker_netdata_mode_callback";
      v5 = "%{public}s: double callback";
LABEL_15:
      v6 = v11;
      v7 = OS_LOG_TYPE_FAULT;
      v8 = 12;
      goto LABEL_16;
    }

    v12 = cti_track_network_data_(v10, a1, network_data_tracker_callback, "/Library/Caches/com.apple.xbs/Sources/mDNSResponderExtras/ServiceRegistration/service-tracker.c", 417);
    v13 = global_os_log;
    if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
    {
      v14 = *(a1 + 8);
      *buf = 136446466;
      v19 = "service_tracker_netdata_mode_callback";
      v20 = 2048;
      v21 = v14;
      v15 = "%{public}s: [ST%lld] netdata get started";
LABEL_24:
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, v15, buf, 0x16u);
    }
  }

  if (v12)
  {
    v4 = global_os_log;
    if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v19 = "service_tracker_netdata_mode_callback";
      v20 = 1024;
      LODWORD(v21) = v12;
      v5 = "%{public}s: could not start a CTI request for getting Thread services, got status: %d";
LABEL_4:
      v6 = v4;
      v7 = OS_LOG_TYPE_ERROR;
      v8 = 18;
LABEL_16:
      _os_log_impl(&_mh_execute_header, v6, v7, v5, buf, v8);
    }
  }
}

void service_tracker_callback(uint64_t a1, unint64_t *a2, int a3)
{
  *(a1 + 58) = 0;
  if (a3 == -65569 || a3 == -65563)
  {
    v22 = global_os_log;
    if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
    {
      v23 = *(a1 + 8);
      *__str = 136446466;
      *&__str[4] = "service_tracker_callback";
      *&__str[12] = 2048;
      *&__str[14] = v23;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "%{public}s: [ST%lld] disconnected", __str, 0x16u);
    }

    cti_events_discontinue(*(a1 + 32));
    *(a1 + 32) = 0;
    v24 = *a1;
    if (*a1)
    {
      v25 = global_os_log;
      if (v24 < 10001)
      {
        if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
        {
          *__str = 136447490;
          *&__str[4] = "service_tracker_callback";
          *&__str[12] = 1024;
          *&__str[14] = v24;
          *&__str[18] = 2048;
          *&__str[20] = a1;
          *&__str[28] = 2080;
          *&__str[30] = "tracker";
          *&__str[38] = 2080;
          *&__str[40] = "service-tracker.c";
          v52 = 1024;
          v53 = 150;
          _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d", __str, 0x36u);
          v24 = *a1;
        }

        *a1 = v24 - 1;
        if (v24 == 1)
        {
          v26 = global_os_log;
          if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
          {
            *__str = 136447234;
            *&__str[4] = "service_tracker_callback";
            *&__str[12] = 2048;
            *&__str[14] = a1;
            *&__str[22] = 2080;
            *&__str[24] = "tracker";
            *&__str[32] = 2080;
            *&__str[34] = "service-tracker.c";
            *&__str[42] = 1024;
            *&__str[44] = 150;
            _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC:      finalize: %p (%10s): %s:%d", __str, 0x30u);
          }

          ++service_tracker_finalized;
          service_tracker_finalize(a1);
        }

        return;
      }

      if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
      {
LABEL_161:
        abort();
      }

      *__str = 136447490;
      *&__str[4] = "service_tracker_callback";
      *&__str[12] = 1024;
      *&__str[14] = v24;
      *&__str[18] = 2048;
      *&__str[20] = a1;
      *&__str[28] = 2080;
      *&__str[30] = "tracker";
      *&__str[38] = 2080;
      *&__str[40] = "service-tracker.c";
      v52 = 1024;
      v53 = 150;
      v50 = "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d";
    }

    else
    {
      v25 = global_os_log;
      if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_161;
      }

      *__str = 136447490;
      *&__str[4] = "service_tracker_callback";
      *&__str[12] = 1024;
      *&__str[14] = 0;
      *&__str[18] = 2048;
      *&__str[20] = a1;
      *&__str[28] = 2080;
      *&__str[30] = "tracker";
      *&__str[38] = 2080;
      *&__str[40] = "service-tracker.c";
      v52 = 1024;
      v53 = 150;
      v50 = "%{public}s: ALLOC: release after finalize at %2.2d: %p (%10s): %s:%d";
    }

    _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_FAULT, v50, __str, 0x36u);
    goto LABEL_161;
  }

  if (a3)
  {
    v27 = global_os_log;
    if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
    {
      v28 = *(a1 + 8);
      *__str = 136446722;
      *&__str[4] = "service_tracker_callback";
      *&__str[12] = 2048;
      *&__str[14] = v28;
      *&__str[22] = 1024;
      *&__str[24] = a3;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "%{public}s: [ST%lld] got error status from CTI: %d", __str, 0x1Cu);
    }
  }

  else
  {
    v6 = (a1 + 48);
    v7 = *(a1 + 48);
    v8 = (a1 + 48);
    if (v7)
    {
      v8 = (a1 + 48);
      do
      {
        v9 = *(v7 + 20);
        if (v9 > 2)
        {
          if (v9 == 3)
          {
            v10 = *a2;
            if (!*a2)
            {
              goto LABEL_56;
            }

            v11 = 0;
            while (1)
            {
              v21 = *(a2[2] + 8 * v11);
              if (*v21 == 44970 && *(v21 + 8) == 92 && *(v21 + 10) == 1 && *(v21 + 32) == 2 && *(v7 + 16) == *(v21 + 12) && *(v7 + 80) == *(*(v21 + 16) + 1))
              {
                break;
              }

              if (v10 == ++v11)
              {
                goto LABEL_56;
              }
            }
          }

          else
          {
            if (v9 != 4)
            {
              goto LABEL_56;
            }

            v10 = *a2;
            if (!*a2)
            {
              goto LABEL_56;
            }

            v11 = 0;
            while (1)
            {
              v15 = *(a2[2] + 8 * v11);
              if (*v15 == 63 && *(v15 + 8) == 1 && *(v15 + 10) == 1 && !*(v15 + 40) && *(v7 + 16) == *(v15 + 12))
              {
                break;
              }

              if (v10 == ++v11)
              {
                goto LABEL_56;
              }
            }
          }
        }

        else if (v9 == 1)
        {
          v10 = *a2;
          if (!*a2)
          {
            goto LABEL_56;
          }

          v11 = 0;
          while (1)
          {
            v16 = *(a2[2] + 8 * v11);
            if (*v16 == 44970 && *(v16 + 8) == 157 && *(v16 + 10) == 1 && *(v16 + 40) == 9)
            {
              v17 = *(v16 + 24);
              if (*(v7 + 64) == *v17)
              {
                v18 = *(v17 + 4);
                v19 = *(v17 + 8);
                if (*(v7 + 68) == v18 && *(v7 + 72) == v19)
                {
                  break;
                }
              }
            }

            if (v10 == ++v11)
            {
              goto LABEL_56;
            }
          }
        }

        else
        {
          if (v9 != 2)
          {
            goto LABEL_56;
          }

          v10 = *a2;
          if (!*a2)
          {
            goto LABEL_56;
          }

          v11 = 0;
          while (1)
          {
            v12 = *(a2[2] + 8 * v11);
            if (*v12 == 44970 && *(v12 + 8) == 93 && *(v12 + 10) == 1 && *(v12 + 40) == 18)
            {
              v13 = *(v12 + 24);
              v14 = *(v7 + 64) == *v13 && *(v7 + 72) == *(v13 + 8);
              if (v14 && *(v7 + 80) == *(v13 + 16))
              {
                break;
              }
            }

            if (v10 == ++v11)
            {
              goto LABEL_56;
            }
          }
        }

        if (v11 != v10)
        {
          *(v7 + 29) = *(v7 + 24);
          *(v7 + 30) = *(v7 + 25);
          v8 = (v7 + 8);
          *(v7 + 24) = 0;
          goto LABEL_57;
        }

LABEL_56:
        snprintf(__str, 0x14uLL, "[ST%lld]", *(a1 + 8));
        thread_service_note(__str, v7, "went away");
        *v8 = *(v7 + 8);
        thread_service_release_(v7, "/Library/Caches/com.apple.xbs/Sources/mDNSResponderExtras/ServiceRegistration/service-tracker.c", 235);
LABEL_57:
        v7 = *v8;
      }

      while (*v8);
    }

    if (*a2)
    {
      for (i = 0; i < *a2; ++i)
      {
        v30 = *(a2[2] + 8 * i);
        v31 = *v6;
        v32 = *v30;
        while (v31)
        {
          if (v32 == 63)
          {
            if (*(v30 + 4) == 1 && *(v30 + 5) == 1 && !v30[5] && *(v31 + 20) == 4 && *(v31 + 16) == *(v30 + 6))
            {
              goto LABEL_132;
            }
          }

          else if (v32 == 44970)
          {
            v33 = *(v30 + 4);
            if (v33 == 92)
            {
              if (*(v30 + 5) == 1 && v30[4] == 2 && *(v31 + 20) == 3 && *(v31 + 16) == *(v30 + 6))
              {
                v37 = *(v30[2] + 1);
                v36 = *(v31 + 80);
LABEL_111:
                if (v36 == v37)
                {
                  goto LABEL_132;
                }
              }
            }

            else if (v33 == 157)
            {
              if (*(v30 + 5) == 1 && v30[5] == 9 && *(v31 + 20) == 1)
              {
                v38 = v30[3];
                if (*(v31 + 64) == *v38)
                {
                  v39 = *(v38 + 4);
                  v40 = *(v38 + 8);
                  if (*(v31 + 68) == v39 && *(v31 + 72) == v40)
                  {
                    goto LABEL_132;
                  }
                }
              }
            }

            else if (v33 == 93 && *(v30 + 5) == 1 && v30[5] == 18 && *(v31 + 20) == 2)
            {
              v34 = v30[3];
              if (*(v31 + 64) == *v34 && *(v31 + 72) == *(v34 + 8))
              {
                v36 = *(v31 + 80);
                v37 = *(v34 + 16);
                goto LABEL_111;
              }
            }
          }

          v31 = *(v31 + 8);
        }

        if (v32 == 63)
        {
          if (*(v30 + 4) != 1 || *(v30 + 5) != 1 || v30[5])
          {
            continue;
          }

          v43 = thread_service_flag_create_(*(v30 + 6), *(v30 + 14), "/Library/Caches/com.apple.xbs/Sources/mDNSResponderExtras/ServiceRegistration/service-tracker.c", 296);
        }

        else
        {
          if (v32 != 44970)
          {
            continue;
          }

          v42 = *(v30 + 4);
          if (v42 == 92)
          {
            if (*(v30 + 5) != 1 || v30[4] != 2)
            {
              continue;
            }

            v43 = thread_service_anycast_create_(*(v30 + 6), *(v30[2] + 1), *(v30 + 14), "/Library/Caches/com.apple.xbs/Sources/mDNSResponderExtras/ServiceRegistration/service-tracker.c", 290);
          }

          else if (v42 == 157)
          {
            if (*(v30 + 5) != 1 || v30[5] != 9)
            {
              continue;
            }

            v43 = thread_service_pref_id_create_(*(v30 + 6), v30[3], (v30[3] + 4), *(v30 + 14), "/Library/Caches/com.apple.xbs/Sources/mDNSResponderExtras/ServiceRegistration/service-tracker.c", 304);
          }

          else
          {
            if (v42 != 93 || *(v30 + 5) != 1 || v30[5] != 18)
            {
              continue;
            }

            v43 = thread_service_unicast_create_(*(v30 + 6), v30[3], (v30[3] + 16), *(v30 + 14), "/Library/Caches/com.apple.xbs/Sources/mDNSResponderExtras/ServiceRegistration/service-tracker.c", 282);
          }
        }

        v31 = v43;
        snprintf(__str, 0x14uLL, "[ST%lld]", *(a1 + 8));
        thread_service_note(__str, v31, "showed up");
        *v8 = v31;
        v8 = (v31 + 8);
LABEL_132:
        v44 = *(v30 + 13);
        if ((v44 & 2) == 0)
        {
          *(v31 + 24) = 1;
          *(a1 + 58) = 1;
          if ((v44 & 1) == 0)
          {
            continue;
          }

LABEL_136:
          *(v31 + 26) = 1;
          continue;
        }

        *(v31 + 25) = 1;
        if (v44)
        {
          goto LABEL_136;
        }
      }
    }

    memset(__str, 0, sizeof(__str));
    for (j = *v6; j; j = *(j + 8))
    {
      if (*(j + 20) == 2)
      {
        *(j + 82) = 0;
        for (k = *v6; k; k = *(k + 8))
        {
          if (*(k + 20) == 3 && *(k + 16) == *(j + 16))
          {
            *(j + 82) = 1;
          }
        }
      }

      memset(__str, 0, 24);
      *&__str[24] = __str;
      *&__str[32] = 0x14uLL;
      service_tracker_flags_accumulate(__str, *(j + 30), *(j + 25), "ncp");
      service_tracker_flags_accumulate(__str, *(j + 31), *(j + 25), "stable");
      service_tracker_flags_accumulate(__str, *(j + 29), *(j + 24), "user");
      if (__str[40] == 1)
      {
        snprintf(v54, 0x14uLL, "[ST%lld]", *(a1 + 8));
        thread_service_note(v54, j, __str);
      }
    }

    for (m = *(a1 + 40); m; m = *m)
    {
      (m[2])(m[3]);
    }

    v48 = *(a1 + 24);
    if (*(v48 + 426))
    {
      v49 = *v6;
      if (*v6)
      {
        while ((*(v49 + 50) & 1) == 0)
        {
          v49 = *(v49 + 8);
          if (!v49)
          {
            goto LABEL_154;
          }
        }
      }

      else
      {
LABEL_154:
        adv_ctl_thread_shutdown_status_check(v48);
      }
    }
  }
}

size_t service_tracker_flags_accumulate(size_t result, int a2, int a3, const char *a4)
{
  if (a2 != a3)
  {
    v4 = result;
    v5 = *(result + 24);
    v6 = " ";
    if (v5 == v4)
    {
      v6 = "";
    }

    v7 = "-";
    if (a3)
    {
      v7 = "+";
    }

    snprintf(v5, *(v4 + 32), "%s%s%s", v6, v7, a4);
    result = strlen(*(v4 + 24));
    v8 = *(v4 + 32) - result;
    *(v4 + 24) += result;
    *(v4 + 32) = v8;
    *(v4 + 40) = 1;
  }

  return result;
}

void service_tracker_callback_add(int *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = a1 + 10;
  while (1)
  {
    v9 = *v8;
    if (!*v8)
    {
      break;
    }

    v8 = *v8;
    if (v9[3] == a4)
    {
      v10 = global_os_log;
      if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
      {
        v11 = *(a1 + 1);
        v20 = 136446722;
        v21 = "service_tracker_callback_add";
        v22 = 2048;
        *v23 = v11;
        *&v23[8] = 2048;
        *&v23[10] = a4;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_FAULT, "%{public}s: [ST%lld] duplicate context %p", &v20, 0x20u);
      }

      return;
    }
  }

  v12 = malloc_type_calloc(1uLL, 0x20uLL, 0x30BD2B4FuLL);
  if (v12)
  {
    v13 = v12;
    v12[1] = a3;
    v12[2] = a2;
    v12[3] = a4;
    if (a1 && !*(a1 + 5))
    {
      v14 = global_os_log;
      if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
      {
        v15 = *a1;
        v20 = 136447490;
        v21 = "service_tracker_callback_add";
        v22 = 1024;
        *v23 = v15;
        *&v23[4] = 2048;
        *&v23[6] = a1;
        *&v23[14] = 2080;
        *&v23[16] = "tracker";
        v24 = 2080;
        v25 = "service-tracker.c";
        v26 = 1024;
        v27 = 495;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC:  retain at %2.2d: %p (%10s): %s:%d", &v20, 0x36u);
      }

      v16 = *a1;
      if (*a1)
      {
        v17 = v16 + 1;
        *a1 = v16 + 1;
        if (v16 + 1 >= 10001)
        {
          v18 = global_os_log;
          if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
          {
            v20 = 136447490;
            v21 = "service_tracker_callback_add";
            v22 = 1024;
            *v23 = v17;
            *&v23[4] = 2048;
            *&v23[6] = a1;
            *&v23[14] = 2080;
            *&v23[16] = "tracker";
            v24 = 2080;
            v25 = "service-tracker.c";
            v26 = 1024;
            v27 = 495;
            _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_FAULT, "%{public}s: ALLOC: retain at %2.2d: %p (%10s): %s:%d", &v20, 0x36u);
          }

          abort();
        }
      }

      else
      {
        ++service_tracker_created;
        *a1 = 1;
      }
    }

    *v8 = v13;
  }

  else
  {
    v19 = global_os_log;
    if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
    {
      v20 = 136446722;
      v21 = "service_tracker_callback_add";
      v22 = 2048;
      *v23 = 1;
      *&v23[8] = 2048;
      *&v23[10] = 32;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "%{public}s: strict_calloc(%zu, %zu) failed", &v20, 0x20u);
    }

    __break(1u);
  }
}

void service_tracker_stop(void *a1)
{
  if (!a1)
  {
    return;
  }

  v2 = a1[4];
  if (!v2)
  {
    return;
  }

  cti_events_discontinue(v2);
  a1[4] = 0;
  v3 = *a1;
  if (!*a1)
  {
    v4 = global_os_log;
    if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_17;
    }

    v7 = 136447490;
    v8 = "service_tracker_stop";
    v9 = 1024;
    *v10 = 0;
    *&v10[4] = 2048;
    *&v10[6] = a1;
    *&v10[14] = 2080;
    *&v10[16] = "tracker";
    *&v10[24] = 2080;
    *&v10[26] = "service-tracker.c";
    v11 = 1024;
    v12 = 525;
    v6 = "%{public}s: ALLOC: release after finalize at %2.2d: %p (%10s): %s:%d";
    goto LABEL_16;
  }

  v4 = global_os_log;
  if (v3 >= 10001)
  {
    if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_17;
    }

    v7 = 136447490;
    v8 = "service_tracker_stop";
    v9 = 1024;
    *v10 = v3;
    *&v10[4] = 2048;
    *&v10[6] = a1;
    *&v10[14] = 2080;
    *&v10[16] = "tracker";
    *&v10[24] = 2080;
    *&v10[26] = "service-tracker.c";
    v11 = 1024;
    v12 = 525;
    v6 = "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d";
LABEL_16:
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_FAULT, v6, &v7, 0x36u);
LABEL_17:
    abort();
  }

  if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136447490;
    v8 = "service_tracker_stop";
    v9 = 1024;
    *v10 = v3;
    *&v10[4] = 2048;
    *&v10[6] = a1;
    *&v10[14] = 2080;
    *&v10[16] = "tracker";
    *&v10[24] = 2080;
    *&v10[26] = "service-tracker.c";
    v11 = 1024;
    v12 = 525;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d", &v7, 0x36u);
    v3 = *a1;
  }

  *a1 = v3 - 1;
  if (v3 == 1)
  {
    v5 = global_os_log;
    if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136447234;
      v8 = "service_tracker_stop";
      v9 = 2048;
      *v10 = a1;
      *&v10[8] = 2080;
      *&v10[10] = "tracker";
      *&v10[18] = 2080;
      *&v10[20] = "service-tracker.c";
      *&v10[28] = 1024;
      *&v10[30] = 525;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC:      finalize: %p (%10s): %s:%d", &v7, 0x30u);
    }

    ++service_tracker_finalized;
    service_tracker_finalize(a1);
  }
}

void service_tracker_callback_cancel(void *a1, uint64_t a2)
{
  if (a1)
  {
    v4 = a1 + 5;
    v3 = a1[5];
    if (v3)
    {
      v5 = v3 + 3;
      if (v3[3] == a2)
      {
        v6 = a1 + 5;
      }

      else
      {
        do
        {
          v6 = v3;
          v3 = *v3;
          if (!v3)
          {
            return;
          }
        }

        while (v3[3] != a2);
        v5 = v3 + 3;
      }

      *v6 = *v3;
      v7 = v3[1];
      if (v7)
      {
        v7(*v5);
      }

      free(v3);
      if (!*v4)
      {
        v8 = *a1;
        if (*a1)
        {
          v9 = global_os_log;
          if (v8 < 10001)
          {
            if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
            {
              v12 = 136447490;
              v13 = "service_tracker_callback_cancel";
              v14 = 1024;
              *v15 = v8;
              *&v15[4] = 2048;
              *&v15[6] = a1;
              *&v15[14] = 2080;
              *&v15[16] = "tracker";
              *&v15[24] = 2080;
              *&v15[26] = "service-tracker.c";
              v16 = 1024;
              v17 = 562;
              _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d", &v12, 0x36u);
              v8 = *a1;
            }

            *a1 = v8 - 1;
            if (v8 == 1)
            {
              v10 = global_os_log;
              if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
              {
                v12 = 136447234;
                v13 = "service_tracker_callback_cancel";
                v14 = 2048;
                *v15 = a1;
                *&v15[8] = 2080;
                *&v15[10] = "tracker";
                *&v15[18] = 2080;
                *&v15[20] = "service-tracker.c";
                *&v15[28] = 1024;
                *&v15[30] = 562;
                _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC:      finalize: %p (%10s): %s:%d", &v12, 0x30u);
              }

              ++service_tracker_finalized;
              service_tracker_finalize(a1);
            }

            return;
          }

          if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
          {
LABEL_25:
            abort();
          }

          v12 = 136447490;
          v13 = "service_tracker_callback_cancel";
          v14 = 1024;
          *v15 = v8;
          *&v15[4] = 2048;
          *&v15[6] = a1;
          *&v15[14] = 2080;
          *&v15[16] = "tracker";
          *&v15[24] = 2080;
          *&v15[26] = "service-tracker.c";
          v16 = 1024;
          v17 = 562;
          v11 = "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d";
        }

        else
        {
          v9 = global_os_log;
          if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
          {
            goto LABEL_25;
          }

          v12 = 136447490;
          v13 = "service_tracker_callback_cancel";
          v14 = 1024;
          *v15 = 0;
          *&v15[4] = 2048;
          *&v15[6] = a1;
          *&v15[14] = 2080;
          *&v15[16] = "tracker";
          *&v15[24] = 2080;
          *&v15[26] = "service-tracker.c";
          v16 = 1024;
          v17 = 562;
          v11 = "%{public}s: ALLOC: release after finalize at %2.2d: %p (%10s): %s:%d";
        }

        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_FAULT, v11, &v12, 0x36u);
        goto LABEL_25;
      }
    }
  }
}

void service_tracker_cancel_probes(uint64_t a1)
{
  for (i = *(a1 + 48); i; i = *(i + 8))
  {
    v2 = *(i + 56);
    if (v2)
    {
      *(v2 + 24) = 0;
      *(i + 56) = 0;
      v3 = *(v2 + 48);
      if (v3)
      {
        v3(*(v2 + 32));
      }

      *(v2 + 32) = 0;
      thread_service_release_(i, "/Library/Caches/com.apple.xbs/Sources/mDNSResponderExtras/ServiceRegistration/probe-srp.c", 108);
      v4 = *(v2 + 16);
      if (v4)
      {
        ioloop_cancel_wake_event(v4);
      }

      v5 = *(v2 + 8);
      if (v5)
      {
        ioloop_comm_cancel(v5);
      }

      *(v2 + 1486) = 1;
      v6 = *v2;
      if (!*v2)
      {
        v9 = global_os_log;
        if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
        {
          *buf = 136447490;
          v13 = "probe_srp_service_probe_cancel";
          v14 = 1024;
          *v15 = 0;
          *&v15[4] = 2048;
          *&v15[6] = v2;
          *&v15[14] = 2080;
          *&v15[16] = "probe_state";
          *&v15[24] = 2080;
          *&v15[26] = "probe-srp.c";
          v16 = 1024;
          v17 = 117;
          v10 = "%{public}s: ALLOC: release after finalize at %2.2d: %p (%10s): %s:%d";
          v11 = v9;
          goto LABEL_23;
        }

LABEL_24:
        abort();
      }

      v7 = global_os_log;
      if (v6 >= 10001)
      {
        if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
        {
          *buf = 136447490;
          v13 = "probe_srp_service_probe_cancel";
          v14 = 1024;
          *v15 = v6;
          *&v15[4] = 2048;
          *&v15[6] = v2;
          *&v15[14] = 2080;
          *&v15[16] = "probe_state";
          *&v15[24] = 2080;
          *&v15[26] = "probe-srp.c";
          v16 = 1024;
          v17 = 117;
          v10 = "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d";
          v11 = v7;
LABEL_23:
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_FAULT, v10, buf, 0x36u);
        }

        goto LABEL_24;
      }

      if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136447490;
        v13 = "probe_srp_service_probe_cancel";
        v14 = 1024;
        *v15 = v6;
        *&v15[4] = 2048;
        *&v15[6] = v2;
        *&v15[14] = 2080;
        *&v15[16] = "probe_state";
        *&v15[24] = 2080;
        *&v15[26] = "probe-srp.c";
        v16 = 1024;
        v17 = 117;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d", buf, 0x36u);
        v6 = *v2;
      }

      *v2 = v6 - 1;
      if (v6 == 1)
      {
        v8 = global_os_log;
        if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136447234;
          v13 = "probe_srp_service_probe_cancel";
          v14 = 2048;
          *v15 = v2;
          *&v15[8] = 2080;
          *&v15[10] = "probe_state";
          *&v15[18] = 2080;
          *&v15[20] = "probe-srp.c";
          *&v15[28] = 1024;
          *&v15[30] = 117;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC:      finalize: %p (%10s): %s:%d", buf, 0x30u);
        }

        ++probe_state_finalized;
        probe_state_finalize(v2);
      }
    }
  }
}

void dso_state_cancel(uint64_t *a1)
{
  v2 = &dso_connections;
  do
  {
    v3 = v2;
    v2 = *v2;
    if (v2)
    {
      v4 = v2 == a1;
    }

    else
    {
      v4 = 1;
    }
  }

  while (!v4);
  if (v2)
  {
    v5 = a1[2];
    if (!v5 || v5(1, a1[1], a1))
    {
      *v3 = *a1;
      *a1 = dso_connections_needing_cleanup;
      dso_connections_needing_cleanup = a1;
    }

    v6 = a1[20];
    if (v6)
    {
      v7 = *v6;
      *v6 = 0;

      v8 = v6[1];
      v6[1] = 0;

      v9 = v6[2];
      v6[2] = 0;

      v10 = v6[3];
      v6[3] = 0;

      v11 = v6[4];
      v6[4] = 0;

      free(v6);
      a1[20] = 0;
    }
  }
}

uint64_t **dso_find_activity(uint64_t a1, char *__s1, uint64_t *a3)
{
  if (!(__s1 | a3))
  {
    v4 = global_os_log;
    if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
    {
      v5 = *(a1 + 48);
      v13 = 136446722;
      v14 = "dso_find_activity";
      v15 = 1024;
      v16 = v5;
      v17 = 2082;
      v18 = "push subscription";
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_FAULT, "%{public}s: [DSO%u] Cannot search for activity with name and context both equal to NULL - activity_type: %{public}s.", &v13, 0x1Cu);
    }

    return 0;
  }

  v6 = *(a1 + 80);
  if (!v6)
  {
    return v6;
  }

  while (1)
  {
    if (v6[2] != "push subscription")
    {
      goto LABEL_7;
    }

    if (__s1)
    {
      break;
    }

    if (v6[3] == a3)
    {
      return v6;
    }

LABEL_7:
    v6 = *v6;
    if (!v6)
    {
      return v6;
    }
  }

  v9 = v6[4];
  if (!v9 || strcmp(__s1, v9))
  {
    goto LABEL_7;
  }

  if (a3)
  {
    if (v6[3] != a3)
    {
      v10 = global_os_log;
      if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
      {
        v11 = *(a1 + 48);
        v13 = 136447491;
        v14 = "dso_find_activity";
        v15 = 1024;
        v16 = v11;
        v17 = 2160;
        v18 = 1752392040;
        v19 = 2081;
        v20 = __s1;
        v21 = 2082;
        v22 = "push subscription";
        v23 = 2048;
        v24 = a3;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_FAULT, "%{public}s: [DSO%u] The activity specified by the name does not have the expected context - name: %{private, mask.hash}s, activity_type: %{public}s, context: %p.", &v13, 0x3Au);
      }
    }
  }

  return v6;
}

void dso_drop_activity(uint64_t a1, void *a2)
{
  v4 = (a1 + 80);
  while (1)
  {
    v5 = v4;
    v4 = *v4;
    if (!v4)
    {
      break;
    }

    if (v4 == a2)
    {
      *v5 = *a2;
      goto LABEL_7;
    }
  }

  v6 = global_os_log;
  if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
  {
    v7 = *(a1 + 48);
    v9 = a2[3];
    v8 = a2[4];
    v10 = a2[2];
    v17 = 136447491;
    v18 = "dso_drop_activity";
    v19 = 1024;
    v20 = v7;
    v21 = 2160;
    v22 = 1752392040;
    v23 = 2081;
    v24 = v8;
    v25 = 2082;
    v26 = v10;
    v27 = 2048;
    v28 = v9;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_FAULT, "%{public}s: [DSO%u] Trying to remove an activity that is not in the list - activity name: %{private, mask.hash}s, activity type: %{public}s, activity context: %p.", &v17, 0x3Au);
  }

LABEL_7:
  v11 = global_os_log;
  if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
  {
    v12 = *(a1 + 48);
    v14 = a2[3];
    v13 = a2[4];
    v15 = a2[2];
    v17 = 136447491;
    v18 = "dso_drop_activity";
    v19 = 1024;
    v20 = v12;
    v21 = 2160;
    v22 = 1752392040;
    v23 = 2081;
    v24 = v13;
    v25 = 2082;
    v26 = v15;
    v27 = 2048;
    v28 = v14;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%{public}s: [DSO%u] Removing a DSO activity - activity name: %{private, mask.hash}s, activity type: %{public}s, activity context: %p.", &v17, 0x3Au);
  }

  v16 = a2[1];
  if (v16)
  {
    v16(a2);
  }

  free(a2);
}

uint64_t dso_retry_delay(uint64_t result, _WORD *a2)
{
  v2 = *(result + 24);
  if (v2)
  {
    v3 = result;
    v4 = *(result + 90);
    if (v4 == 4)
    {
      v8 = bswap32(**(result + 96));
      return v2(*(result + 8), &v8, result, 12);
    }

    else
    {
      v6 = global_os_log;
      if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
      {
        v7 = *(v3 + 152);
        v8 = 136446722;
        v9 = "dso_retry_delay";
        v10 = 1024;
        v11 = v4;
        v12 = 2080;
        v13 = v7;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}s: Invalid DSO Retry Delay length %d from %s", &v8, 0x1Cu);
      }

      return dso_simple_response(*(v3 + 32), 0, a2, 1);
    }
  }

  return result;
}

void dso_keepalive(uint64_t a1, _WORD *a2, int a3)
{
  v22 = 0x10000;
  v5 = *(a1 + 90);
  if (v5 != 8)
  {
    v12 = global_os_log;
    if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
    {
      v13 = *(a1 + 152);
      *buf = 136446722;
      v24 = "dso_keepalive";
      v25 = 1024;
      v26 = v5;
      v27 = 2080;
      v28[0] = v13;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%{public}s: Invalid DSO Keepalive length %d from %s", buf, 0x1Cu);
    }

    if (*(a1 + 52) != 1)
    {
      return;
    }

LABEL_18:
    v14 = *(a1 + 32);
    v15 = a2;
    v16 = 1;
LABEL_19:
    dso_simple_response(v14, 0, v15, v16);
    return;
  }

  v6 = *(a1 + 52);
  if (v6 == 1 && a3 != 0)
  {
    v17 = global_os_log;
    if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v24 = "dso_keepalive";
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%{public}s: Dropping Keepalive Response received by DSO server", buf, 0xCu);
    }

    return;
  }

  v21 = vrev32_s8(**(a1 + 96));
  LOWORD(v22) = *a2;
  v8 = v21.i32[0];
  if (v21.i32[0] > 0x38000000u || v21.i32[1] >= 0x38000001u)
  {
    v10 = global_os_log;
    if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(a1 + 48);
      *buf = 136446978;
      v24 = "dso_keepalive";
      v25 = 1024;
      v26 = v11;
      v27 = 1024;
      LODWORD(v28[0]) = v21.i32[0];
      WORD2(v28[0]) = 1024;
      *(v28 + 6) = v21.i32[1];
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%{public}s: [DSO%u] inactivity_timeoutl[%u] keepalive_interva[%u] is unreasonably large.", buf, 0x1Eu);
      if ((*(a1 + 52) & 1) == 0)
      {
        return;
      }
    }

    else if (!v6)
    {
      return;
    }

    goto LABEL_18;
  }

  if (v6)
  {
    v19 = *(a1 + 24);
    if (!v19)
    {
      goto LABEL_29;
    }

    if (*(a1 + 60) < v21.i32[1])
    {
      v21.i32[1] = *(a1 + 60);
    }

    if (*(a1 + 64) < v21.i32[0])
    {
      v21.i32[0] = *(a1 + 64);
    }

    v19(*(a1 + 8), &v21, a1, 11);
    if ((v22 & 0x10000) != 0)
    {
LABEL_29:
      v14 = *(a1 + 32);
      v15 = a2;
      v16 = 0;
      goto LABEL_19;
    }
  }

  else
  {
    if (*(a1 + 60) > v21.i32[1])
    {
      *(a1 + 60) = v21.i32[1];
    }

    if (*(a1 + 64) > v8)
    {
      *(a1 + 64) = v8;
    }

    v20 = *(a1 + 24);
    if (v20)
    {
      v20(*(a1 + 8), &v21, a1, 11);
    }
  }
}

void dso_session_established(uint64_t a1)
{
  v2 = global_os_log;
  if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 48);
    v4 = *(a1 + 152);
    v5 = 136446978;
    v6 = "dso_session_established";
    v7 = 1024;
    v8 = v3;
    v9 = 2048;
    v10 = a1;
    v11 = 2080;
    v12 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%{public}s: [DSO%u] DSO session established - dso: %p, remote name: %s.", &v5, 0x26u);
  }

  *(a1 + 53) = 1;
}

void dns_concatenate_name_to_wire_(uint64_t a1, uint64_t **a2, char *a3, char *a4, int a5)
{
  memset(v46, 0, 512);
  BYTE12(v46[0]) = 0;
  if (*(a1 + 56) <= 1u)
  {
    v45 = 0;
    v8 = (v46 | 0xC);
    v44 = 0uLL;
    v43 = 0uLL;
    v41 = v46 | 0xC;
    v42 = v47;
    v40 = v46;
    if (a3)
    {
      dns_name_to_wire_(0, &v40, a3, 127);
    }

    else
    {
      v9 = a2;
      if (a2)
      {
        v10 = 0;
        v11 = 1398;
        v12 = (v46 | 0xC);
        while (1)
        {
          v13 = *(v9 + 8);
          if (v11 <= v13)
          {
            break;
          }

          *v12 = v13;
          v14 = v12 + 1;
          memcpy(v14, v9 + 9, *(v9 + 8));
          v15 = *(v9 + 8);
          v12 = &v14[v15];
          v11 += ~v15;
          v16 = v10 + v15;
          v10 = v16 + 1;
          v9 = *v9;
          if (!v9)
          {
            if (v16 != -1)
            {
              v41 = &v8[v10];
              goto LABEL_11;
            }

            break;
          }
        }

        LODWORD(v45) = 1;
      }
    }

LABEL_11:
    if (a4)
    {
      dns_full_name_to_wire_(0, &v40, a4, 148);
    }

    if (v45 >= 2)
    {
      *(a1 + 56) = v45;
      *(a1 + 48) = a5;
    }

    v17 = *(a1 + 8);
    if (v17)
    {
      v18 = *(a1 + 16);
      v19 = BYTE12(v46[0]);
      if (BYTE12(v46[0]))
      {
        v20 = *a1;
        v21 = *(a1 + 8);
        while (v19 <= 0x3F && &v8[v19 + 1] < &v46[16] + 12)
        {
          if (v20)
          {
            v22 = (v17 - v19);
LABEL_22:
            while ((v22 - 1) >= v20)
            {
              v23 = v22--;
              if (*(v23 - 1) == v19 && *v23 == v8[1] && &v22[v19] < v17)
              {
                LODWORD(v25) = v19;
                v26 = v22;
                v27 = v8;
LABEL_29:
                v28 = v25 + 1;
                v29 = v26;
                v30 = v27;
                v31 = v28;
                while (1)
                {
                  v33 = *v29++;
                  v32 = v33;
                  v34 = *v30++;
                  if (v32 != v34)
                  {
                    break;
                  }

                  if (!--v31)
                  {
                    v26 += v28;
                    v27 += v28;
                    v25 = *v27;
                    v35 = *v26;
                    if (*v27)
                    {
                      if (v35 < 0x40 || v35 >= 0xC0 && (v26 + 1) < v17 && (v36 = (v20 + ((v35 & 0x3F) << 8) + v26[1]), v26 >= v36) && (v26 = v36, *v36 <= 0x3Fu))
                      {
                        if (&v26[v25] < v17)
                        {
                          goto LABEL_29;
                        }
                      }

                      goto LABEL_22;
                    }

                    if (*v26)
                    {
                      goto LABEL_22;
                    }

                    v39 = v21 + 2;
                    if ((v21 + 2) <= v18)
                    {
                      *v21 = ((v22 - v20) >> 8) | 0xC0;
                      v21[1] = v22 - v20;
                      v38 = v21 + 2;
                      if (v39)
                      {
                        goto LABEL_49;
                      }
                    }

                    goto LABEL_50;
                  }
                }
              }
            }
          }

          if (&v21[v19 + 1] >= v18)
          {
            break;
          }

          *v21++ = v19;
          ++v8;
          do
          {
            v37 = *v8++;
            *v21++ = v37;
            --v19;
          }

          while (v19);
          v19 = *v8;
          if (!*v8)
          {
            goto LABEL_48;
          }
        }
      }

      else
      {
        v21 = *(a1 + 8);
        if (v17 < v18)
        {
LABEL_48:
          *v21 = 0;
          v38 = v21 + 1;
          if (v38)
          {
LABEL_49:
            if (v38 <= *(a1 + 16))
            {
              *(a1 + 8) = v38;
              return;
            }
          }
        }
      }
    }

LABEL_50:
    *(a1 + 56) = 111;
    *(a1 + 48) = a5;
  }
}

uint64_t dns_name_print_to_limit(uint64_t *a1, uint64_t *a2, uint64_t a3, unint64_t a4)
{
  v4 = 0;
  if (a1 != a2 && a1)
  {
    v4 = 0;
    do
    {
      if (v4)
      {
        if (v4 + 2 >= a4)
        {
          break;
        }

        *(a3 + v4++) = 46;
      }

      LOBYTE(v5) = *(a1 + 8);
      if (!v5)
      {
        goto LABEL_23;
      }

      v6 = 0;
      v7 = a1 + 9;
      do
      {
        v8 = *(v7 + v6);
        if ((*(v7 + v6) & 0x80) == 0)
        {
          if (v8 == 32)
          {
            goto LABEL_11;
          }

          if ((_DefaultRuneLocale.__runetype[*(v7 + v6)] & 0x40000) != 0)
          {
            if (v8 == 92 || *(v7 + v6) == 46)
            {
              if (v4 + 3 >= a4)
              {
                break;
              }

              *(a3 + v4++) = 92;
              LOBYTE(v8) = *(v7 + v6);
            }

            else
            {
LABEL_11:
              if (v4 + 2 >= a4)
              {
                break;
              }
            }

            *(a3 + v4++) = v8;
            goto LABEL_21;
          }
        }

        if (v4 + 5 >= a4)
        {
          break;
        }

        v9 = (a3 + v4);
        *v9 = 92;
        v9[1] = (v8 / 0x64u) | 0x30;
        v9[2] = (v8 / 0xAu - 10 * ((26 * (v8 / 0xAu)) >> 8)) | 0x30;
        v4 += 4;
        v9[3] = (v8 % 0xAu) | 0x30;
LABEL_21:
        ++v6;
        v5 = *(a1 + 8);
      }

      while (v6 < v5);
      if (v6 != v5)
      {
        break;
      }

LABEL_23:
      a1 = *a1;
    }

    while (a1 != a2 && a1 != 0);
  }

  *(a3 + v4) = 0;
  return a3;
}

uint64_t dns_labels_equal(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v6 = 0;
  v7 = 1;
  while (1)
  {
    v8 = *(a1 + v6);
    v9 = *(a2 + v6);
    if (v8 < 0 || v9 < 0)
    {
      break;
    }

    v10 = __tolower(v8);
    if (v10 != __tolower(*(a2 + v6)))
    {
      return 0;
    }

LABEL_7:
    v6 = v7++;
    if (v6 >= a3)
    {
      return 1;
    }
  }

  if (v8 == v9)
  {
    goto LABEL_7;
  }

  return 0;
}

uint64_t dns_names_equal(uint64_t *a1, uint64_t **a2)
{
  while (1)
  {
    result = 0;
    if (!a1 || !a2)
    {
      break;
    }

    v5 = *(a1 + 8);
    if (v5 != *(a2 + 8))
    {
      return 0;
    }

    if (*(a1 + 8))
    {
      result = dns_labels_equal(a1 + 9, a2 + 9, v5);
      if (!result)
      {
        return result;
      }
    }

    a1 = *a1;
    a2 = *a2;
    if (!a1)
    {
      return !a2;
    }

    if (!a2)
    {
      return 0;
    }
  }

  return result;
}

BOOL dns_names_equal_text(uint64_t *a1, char *__s)
{
  while (1)
  {
    v4 = strchr(__s, 46);
    if (!v4)
    {
      v4 = &__s[strlen(__s)];
    }

    if (__s >= v4)
    {
      v5 = 0;
    }

    else
    {
      v5 = 0;
      v6 = __s;
      do
      {
        if (*v6 == 92)
        {
          if (v6 + 4 > v4)
          {
            return 0;
          }

          v6 += 3;
        }

        ++v5;
        ++v6;
      }

      while (v6 < v4);
    }

    if (v5 != *(a1 + 8))
    {
      return 0;
    }

    if (*(a1 + 8) && __s < v4)
    {
      v7 = a1 + 9;
      while (1)
      {
        v8 = *__s;
        if (v8 != 92)
        {
          break;
        }

        v9 = __s[3];
        __s += 3;
        v10 = 100 * *(__s - 2) + 10 * *(__s - 1) + v9;
        if (v10 > 5583)
        {
          return 0;
        }

        v11 = *v7;
        if (v11 < 0)
        {
          v8 = v10 - 5328;
LABEL_22:
          if (v8 != v11)
          {
            return 0;
          }

          goto LABEL_23;
        }

        v12 = __tolower(92);
        if (v12 != __tolower(*v7))
        {
          return 0;
        }

LABEL_23:
        ++__s;
        ++v7;
        if (__s >= v4)
        {
          goto LABEL_24;
        }
      }

      v11 = *v7;
      goto LABEL_22;
    }

LABEL_24:
    a1 = *a1;
    if (!a1)
    {
      return !*v4;
    }

    if (*v4 != 46)
    {
      return 0;
    }

    __s = v4 + 1;
  }
}

void *dns_pres_name_parse(char *a1)
{
  v1 = a1;
  v21 = 0;
  v2 = strchr(a1, 46);
  v3 = &v21;
  while (1)
  {
    if (!v2)
    {
      v2 = &v1[strlen(v1)];
    }

    if (v2 != v1)
    {
      break;
    }

    v8 = 0;
    v9 = 10;
LABEL_15:
    v10 = malloc_type_calloc(1uLL, v9, 0xCE008EFFuLL);
    if (!v10)
    {
      goto LABEL_35;
    }

    v11 = v10;
    *v3 = v10;
    *(v10 + 8) = v8;
    if (v8)
    {
      memcpy(v10 + 9, __src, v8);
    }

    *(v11 + v8 + 9) = 0;
    if (v8)
    {
      v12 = *v2 == 46;
    }

    else
    {
      v12 = 0;
    }

    if (v12)
    {
      v1 = v2 + 1;
    }

    else
    {
      v1 = v2;
    }

    if (*v1)
    {
      v2 = strchr(v1, 46);
      v3 = v11;
    }

    else
    {
      v3 = v11;
      v2 = v1;
      if (!v8)
      {
        return v21;
      }
    }
  }

  v4 = __src;
  if (v1 >= v2)
  {
LABEL_12:
    v8 = v4 - __src;
    v9 = v4 - __src + 10;
    if (v4 - __src == -10)
    {
      v15 = global_os_log;
      if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_34;
      }

      *buf = 136446210;
      v23 = "dns_pres_name_parse";
      v17 = "%{public}s: strict_calloc called with size 0";
      v18 = v15;
      for (i = 12; ; i = 32)
      {
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, v17, buf, i);
        do
        {
LABEL_34:
          __break(1u);
LABEL_35:
          v20 = global_os_log;
        }

        while (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR));
        *buf = 136446722;
        v23 = "dns_pres_name_parse";
        v24 = 2048;
        v25 = 1;
        v26 = 2048;
        v27 = v9;
        v17 = "%{public}s: strict_calloc(%zu, %zu) failed";
        v18 = v20;
      }
    }

    goto LABEL_15;
  }

  v5 = 62;
  while (1)
  {
    v6 = *v1;
    if (v6 == 92)
    {
      v7 = v1[3];
      v1 += 3;
      v6 = 100 * *(v1 - 2) + 10 * *(v1 - 1) + v7;
      if (v6 > 5583)
      {
        break;
      }

      LOBYTE(v6) = v6 + 48;
    }

    *v4 = v6;
    if (!v5)
    {
      break;
    }

    ++v4;
    ++v1;
    --v5;
    if (v1 >= v2)
    {
      goto LABEL_12;
    }
  }

  result = v21;
  if (v21)
  {
    do
    {
      v14 = *result;
      free(result);
      result = v14;
    }

    while (v14);
  }

  return result;
}

uint64_t *dns_name_subdomain_of(uint64_t *a1, uint64_t **a2)
{
  result = 0;
  if (a1 && a2)
  {
    v4 = 0;
    v5 = 1;
    v6 = a2;
    do
    {
      v7 = v4++;
      v6 = *v6;
      ++v5;
    }

    while (v6);
    v8 = a1;
    do
    {
      v9 = v6;
      LODWORD(v6) = v6 + 1;
      v8 = *v8;
    }

    while (v8);
    if (v6 < v4)
    {
      return 0;
    }

    if (v9 != v7)
    {
      v10 = v5 - v6;
      do
      {
        a1 = *a1;
        if (a1)
        {
          v11 = v10 == 0;
        }

        else
        {
          v11 = 1;
        }

        ++v10;
      }

      while (!v11);
      if (!a1)
      {
        return 0;
      }
    }

    v12 = dns_names_equal(a1, a2);
    result = a1;
    if ((v12 & 1) == 0)
    {
      return 0;
    }
  }

  return result;
}

BOOL dns_keys_rdata_equal(uint64_t a1, uint64_t a2)
{
  result = 0;
  if (*(a1 + 8) == 25 && *(a2 + 8) == 25 && *(a1 + 16) == *(a2 + 16) && *(a1 + 18) == *(a2 + 18) && *(a1 + 19) == *(a2 + 19))
  {
    v2 = *(a1 + 20);
    if (v2 == *(a2 + 20) && !memcmp(*(a1 + 24), *(a2 + 24), v2))
    {
      return 1;
    }
  }

  return result;
}

unint64_t dns_txt_data_print(unint64_t __str, unsigned int a2, uint64_t a3)
{
  v3 = __str + 1398;
  *__str = 0;
  if (__str + 1398 >= __str && a2 != 0)
  {
    v6 = __str;
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = "";
    do
    {
      v11 = *(a3 + v8);
      v12 = v8 + v11 + 1;
      if (a2 < (v8 + v11 + 1))
      {
        break;
      }

      if ((v8 + v11 + 1) < v8 || &v6[v9] + 1 >= v3)
      {
        break;
      }

      if (*(a3 + v8))
      {
        if (v9 * 2)
        {
          __str = memcpy(v6, v10, v9 * 2);
          LOBYTE(v6[v9]) = 0;
          v6 = (v6 + v9 * 2);
        }

        v14 = (v7 + 1);
        v15 = (v14 + v11);
        do
        {
          v16 = *(a3 + v14);
          if ((v16 & 0x8000000000000000) == 0 && (_DefaultRuneLocale.__runetype[v16] & 0x40000) != 0)
          {
            if (v6 + 1 < v3)
            {
              *v6 = v16;
              v6 = (v6 + 1);
            }
          }

          else if (v6 + 5 < v3)
          {
            __str = snprintf(v6, 5uLL, "%o", *(a3 + v14));
            v6 = (v6 + __str);
          }

          ++v14;
        }

        while (v14 < v15);
        v9 = 1;
        v10 = ", ";
      }

      if (v6 >= v3)
      {
        break;
      }

      v7 = v12;
      v8 = v12;
    }

    while (a2 > v12);
  }

  return __str;
}

void omr_watcher_finalize(void *a1)
{
  v2 = a1[7];
  if (v2)
  {
    ioloop_cancel_wake_event(v2);
    ioloop_wakeup_release_(a1[7], "/Library/Caches/com.apple.xbs/Sources/mDNSResponderExtras/ServiceRegistration/omr-watcher.c", 240);
    a1[7] = 0;
  }

  v3 = a1[8];
  if (v3)
  {
    ioloop_cancel_wake_event(v3);
    ioloop_wakeup_release_(a1[8], "/Library/Caches/com.apple.xbs/Sources/mDNSResponderExtras/ServiceRegistration/omr-watcher.c", 246);
    a1[8] = 0;
  }

  v4 = a1[9];
  if (v4)
  {
    while (1)
    {
      v5 = *v4;
      if (!*v4)
      {
        break;
      }

      v6 = global_os_log;
      if (v5 >= 10001)
      {
        if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
        {
          *buf = 136447490;
          v19 = "omr_watcher_finalize";
          v20 = 1024;
          *v21 = v5;
          *&v21[4] = 2048;
          *&v21[6] = v4;
          *&v21[14] = 2080;
          *&v21[16] = "prefix";
          *&v21[24] = 2080;
          *&v21[26] = "omr-watcher.c";
          *&v21[34] = 1024;
          *&v21[36] = 252;
          v16 = "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d";
          v17 = v6;
LABEL_30:
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_FAULT, v16, buf, 0x36u);
        }

        goto LABEL_31;
      }

      v7 = *(v4 + 1);
      if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136447490;
        v19 = "omr_watcher_finalize";
        v20 = 1024;
        *v21 = v5;
        *&v21[4] = 2048;
        *&v21[6] = v4;
        *&v21[14] = 2080;
        *&v21[16] = "prefix";
        *&v21[24] = 2080;
        *&v21[26] = "omr-watcher.c";
        *&v21[34] = 1024;
        *&v21[36] = 252;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d", buf, 0x36u);
        v5 = *v4;
      }

      *v4 = v5 - 1;
      if (v5 == 1)
      {
        v8 = global_os_log;
        if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136447234;
          v19 = "omr_watcher_finalize";
          v20 = 2048;
          *v21 = v4;
          *&v21[8] = 2080;
          *&v21[10] = "prefix";
          *&v21[18] = 2080;
          *&v21[20] = "omr-watcher.c";
          *&v21[28] = 1024;
          *&v21[30] = 252;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC:      finalize: %p (%10s): %s:%d", buf, 0x30u);
        }

        ++omr_prefix_finalized;
        free(v4);
      }

      v4 = v7;
      if (!v7)
      {
        goto LABEL_15;
      }
    }

    v15 = global_os_log;
    if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
    {
      *buf = 136447490;
      v19 = "omr_watcher_finalize";
      v20 = 1024;
      *v21 = 0;
      *&v21[4] = 2048;
      *&v21[6] = v4;
      *&v21[14] = 2080;
      *&v21[16] = "prefix";
      *&v21[24] = 2080;
      *&v21[26] = "omr-watcher.c";
      *&v21[34] = 1024;
      *&v21[36] = 252;
      v16 = "%{public}s: ALLOC: release after finalize at %2.2d: %p (%10s): %s:%d";
      v17 = v15;
      goto LABEL_30;
    }

LABEL_31:
    abort();
  }

LABEL_15:
  v9 = a1;
  v10 = a1[3];
  if (v10)
  {
    v11 = global_os_log;
    do
    {
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v13 = v10[2];
        v12 = v10[3];
        if (*(v10 + 32))
        {
          v14 = "";
        }

        else
        {
          v14 = "not ";
        }

        *buf = 136447234;
        v19 = "omr_watcher_finalize";
        v20 = 2048;
        *v21 = v10;
        *&v21[8] = 2048;
        *&v21[10] = v12;
        *&v21[18] = 2048;
        *&v21[20] = v13;
        *&v21[28] = 2080;
        *&v21[30] = v14;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%{public}s: callback %p context %p context_release %p %scanceled", buf, 0x34u);
        v11 = global_os_log;
      }

      v10 = *v10;
    }

    while (v10);
    v9 = a1;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      *buf = 136446210;
      v19 = "omr_watcher_finalize";
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_FAULT, "%{public}s: not all callbacks were canceled prior to releasing omr_watcher.", buf, 0xCu);
    }
  }

  free(v9);
}

void omr_watcher_netdata_mode_callback(uint64_t a1, int a2, int a3)
{
  if (!a3)
  {
    if (a2 == 1)
    {
      v10 = global_os_log;
      if (*(a1 + 40))
      {
        if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
        {
          *buf = 136446210;
          v28 = "omr_watcher_netdata_mode_callback";
          v8 = "%{public}s: double callback";
          v9 = v10;
          goto LABEL_14;
        }

LABEL_18:
        *(a1 + 104) = a2;
        goto LABEL_19;
      }

      if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446210;
        v28 = "omr_watcher_netdata_mode_callback";
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%{public}s: old api", buf, 0xCu);
      }

      v22 = xpc_dictionary_create(0, 0, 0);
      xpc_dictionary_set_string(v22, "interface", "org.wpantund.v1");
      xpc_dictionary_set_string(v22, "path", "/org/wpantund/utun2");
      xpc_dictionary_set_string(v22, "method", "PropGet");
      xpc_dictionary_set_string(v22, "property_name", "IPv6:Routes");
      v16 = setup_for_command((a1 + 40), "get_prefix_list", "IPv6:Routes", 0, v22, a1, omr_watcher_route_update_callback, cti_internal_prefix_reply_callback, 0, "/Library/Caches/com.apple.xbs/Sources/mDNSResponderExtras/ServiceRegistration/omr-watcher.c", 803);
      if (v22)
      {
        xpc_release(v22);
      }

      v23 = global_os_log;
      if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
      {
        v24 = *a1;
        *buf = 136447490;
        v28 = "omr_watcher_netdata_mode_callback";
        v29 = 1024;
        *v30 = v24;
        *&v30[4] = 2048;
        *&v30[6] = a1;
        *&v30[14] = 2080;
        *&v30[16] = "omw";
        *&v30[24] = 2080;
        *&v30[26] = "omr-watcher.c";
        v31 = 1024;
        v32 = 804;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC:  retain at %2.2d: %p (%10s): %s:%d", buf, 0x36u);
      }

      v19 = *a1;
      if (*a1)
      {
        v25 = v19 + 1;
        *a1 = v19 + 1;
        if (v19 + 1 >= 10001)
        {
          v14 = global_os_log;
          if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
          {
            goto LABEL_55;
          }

          *buf = 136447490;
          v28 = "omr_watcher_netdata_mode_callback";
          v29 = 1024;
          *v30 = v25;
          *&v30[4] = 2048;
          *&v30[6] = a1;
          *&v30[14] = 2080;
          *&v30[16] = "omw";
          *&v30[24] = 2080;
          *&v30[26] = "omr-watcher.c";
          v31 = 1024;
          v32 = 804;
          v21 = "%{public}s: ALLOC: retain at %2.2d: %p (%10s): %s:%d";
          goto LABEL_54;
        }

        goto LABEL_47;
      }
    }

    else
    {
      if (a2 != 2)
      {
        v12 = global_os_log;
        if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446210;
          v28 = "omr_watcher_netdata_mode_callback";
          v8 = "%{public}s: cannot start omr_watcher without knowing the netdata API mode";
          v9 = v12;
          v11 = OS_LOG_TYPE_ERROR;
          goto LABEL_17;
        }

        goto LABEL_18;
      }

      v7 = global_os_log;
      if (*(a1 + 48))
      {
        if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
        {
          *buf = 136446210;
          v28 = "omr_watcher_netdata_mode_callback";
          v8 = "%{public}s: double callback";
          v9 = v7;
LABEL_14:
          v11 = OS_LOG_TYPE_FAULT;
LABEL_17:
          _os_log_impl(&_mh_execute_header, v9, v11, v8, buf, 0xCu);
          goto LABEL_18;
        }

        goto LABEL_18;
      }

      if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446210;
        v28 = "omr_watcher_netdata_mode_callback";
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}s: new api", buf, 0xCu);
      }

      v16 = cti_track_network_data_((a1 + 48), a1, omr_watcher_netdata_callback, "/Library/Caches/com.apple.xbs/Sources/mDNSResponderExtras/ServiceRegistration/omr-watcher.c", 793);
      v17 = global_os_log;
      if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
      {
        v18 = *a1;
        *buf = 136447490;
        v28 = "omr_watcher_netdata_mode_callback";
        v29 = 1024;
        *v30 = v18;
        *&v30[4] = 2048;
        *&v30[6] = a1;
        *&v30[14] = 2080;
        *&v30[16] = "omw";
        *&v30[24] = 2080;
        *&v30[26] = "omr-watcher.c";
        v31 = 1024;
        v32 = 794;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC:  retain at %2.2d: %p (%10s): %s:%d", buf, 0x36u);
      }

      v19 = *a1;
      if (*a1)
      {
        v20 = v19 + 1;
        *a1 = v19 + 1;
        if (v19 + 1 >= 10001)
        {
          v14 = global_os_log;
          if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
          {
            goto LABEL_55;
          }

          *buf = 136447490;
          v28 = "omr_watcher_netdata_mode_callback";
          v29 = 1024;
          *v30 = v20;
          *&v30[4] = 2048;
          *&v30[6] = a1;
          *&v30[14] = 2080;
          *&v30[16] = "omw";
          *&v30[24] = 2080;
          *&v30[26] = "omr-watcher.c";
          v31 = 1024;
          v32 = 794;
          v21 = "%{public}s: ALLOC: retain at %2.2d: %p (%10s): %s:%d";
          goto LABEL_54;
        }

        goto LABEL_47;
      }
    }

    ++omr_watcher_created;
    *a1 = v19 + 1;
LABEL_47:
    *(a1 + 104) = a2;
    if (v16)
    {
      v26 = global_os_log;
      if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446466;
        v28 = "omr_watcher_netdata_mode_callback";
        v29 = 1024;
        *v30 = v16;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "%{public}s: could not start a CTI request for getting Thread services, got status: %d", buf, 0x12u);
      }
    }

LABEL_19:
    v13 = *a1;
    if (*a1)
    {
      v14 = global_os_log;
      if (v13 < 10001)
      {
        if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136447490;
          v28 = "omr_watcher_netdata_mode_callback";
          v29 = 1024;
          *v30 = v13;
          *&v30[4] = 2048;
          *&v30[6] = a1;
          *&v30[14] = 2080;
          *&v30[16] = "omw";
          *&v30[24] = 2080;
          *&v30[26] = "omr-watcher.c";
          v31 = 1024;
          v32 = 820;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d", buf, 0x36u);
          v13 = *a1;
        }

        *a1 = v13 - 1;
        if (v13 == 1)
        {
          v15 = global_os_log;
          if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136447234;
            v28 = "omr_watcher_netdata_mode_callback";
            v29 = 2048;
            *v30 = a1;
            *&v30[8] = 2080;
            *&v30[10] = "omw";
            *&v30[18] = 2080;
            *&v30[20] = "omr-watcher.c";
            *&v30[28] = 1024;
            *&v30[30] = 820;
            _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC:      finalize: %p (%10s): %s:%d", buf, 0x30u);
          }

          ++omr_watcher_finalized;
          omr_watcher_finalize(a1);
        }

        return;
      }

      if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
      {
LABEL_55:
        abort();
      }

      *buf = 136447490;
      v28 = "omr_watcher_netdata_mode_callback";
      v29 = 1024;
      *v30 = v13;
      *&v30[4] = 2048;
      *&v30[6] = a1;
      *&v30[14] = 2080;
      *&v30[16] = "omw";
      *&v30[24] = 2080;
      *&v30[26] = "omr-watcher.c";
      v31 = 1024;
      v32 = 820;
      v21 = "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d";
    }

    else
    {
      v14 = global_os_log;
      if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_55;
      }

      *buf = 136447490;
      v28 = "omr_watcher_netdata_mode_callback";
      v29 = 1024;
      *v30 = 0;
      *&v30[4] = 2048;
      *&v30[6] = a1;
      *&v30[14] = 2080;
      *&v30[16] = "omw";
      *&v30[24] = 2080;
      *&v30[26] = "omr-watcher.c";
      v31 = 1024;
      v32 = 820;
      v21 = "%{public}s: ALLOC: release after finalize at %2.2d: %p (%10s): %s:%d";
    }

LABEL_54:
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_FAULT, v21, buf, 0x36u);
    goto LABEL_55;
  }

  v5 = global_os_log;
  if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
  {
    *buf = 136446466;
    v28 = "omr_watcher_netdata_mode_callback";
    v29 = 1024;
    *v30 = a3;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "%{public}s: got error status when getting netdata mode: %d", buf, 0x12u);
  }

  if (a1)
  {
    goto LABEL_19;
  }
}

void omr_watcher_route_update_callback(void *a1, uint64_t a2, int a3)
{
  switch(a3)
  {
    case -65569:
      goto LABEL_4;
    case 0:
      v7 = a1[4];
      if (v7)
      {
        cti_events_discontinue(v7);
        a1[4] = 0;
        v8 = *a1;
        if (!*a1)
        {
          v9 = global_os_log;
          if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
          {
            goto LABEL_39;
          }

          v16 = 136447490;
          v17 = "omr_watcher_route_update_callback";
          v18 = 1024;
          *v19 = 0;
          *&v19[4] = 2048;
          *&v19[6] = a1;
          *&v19[14] = 2080;
          *&v19[16] = "omw";
          *&v19[24] = 2080;
          *&v19[26] = "omr-watcher.c";
          v20 = 1024;
          v21 = 743;
          v15 = "%{public}s: ALLOC: release after finalize at %2.2d: %p (%10s): %s:%d";
          goto LABEL_38;
        }

        v9 = global_os_log;
        if (v8 >= 10001)
        {
          if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
          {
            goto LABEL_39;
          }

          v16 = 136447490;
          v17 = "omr_watcher_route_update_callback";
          v18 = 1024;
          *v19 = v8;
          *&v19[4] = 2048;
          *&v19[6] = a1;
          *&v19[14] = 2080;
          *&v19[16] = "omw";
          *&v19[24] = 2080;
          *&v19[26] = "omr-watcher.c";
          v20 = 1024;
          v21 = 743;
          v15 = "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d";
LABEL_38:
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_FAULT, v15, &v16, 0x36u);
LABEL_39:
          abort();
        }

        if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
        {
          v16 = 136447490;
          v17 = "omr_watcher_route_update_callback";
          v18 = 1024;
          *v19 = v8;
          *&v19[4] = 2048;
          *&v19[6] = a1;
          *&v19[14] = 2080;
          *&v19[16] = "omw";
          *&v19[24] = 2080;
          *&v19[26] = "omr-watcher.c";
          v20 = 1024;
          v21 = 743;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d", &v16, 0x36u);
          v8 = *a1;
        }

        *a1 = v8 - 1;
        if (v8 == 1)
        {
          v10 = global_os_log;
          if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
          {
            v16 = 136447234;
            v17 = "omr_watcher_route_update_callback";
            v18 = 2048;
            *v19 = a1;
            *&v19[8] = 2080;
            *&v19[10] = "omw";
            *&v19[18] = 2080;
            *&v19[20] = "omr-watcher.c";
            *&v19[28] = 1024;
            *&v19[30] = 743;
            _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC:      finalize: %p (%10s): %s:%d", &v16, 0x30u);
          }

          ++omr_watcher_finalized;
          omr_watcher_finalize(a1);
        }
      }

      omr_watcher_onmesh_prefix_list_fetch(a1);
      return;
    case -65563:
LABEL_4:
      v5 = global_os_log;
      if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
      {
        v16 = 136446210;
        v17 = "omr_watcher_route_update_callback";
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}s: disconnected", &v16, 0xCu);
      }

      v6 = a1[10];
      if (v6)
      {
        v6(a1[2]);
      }

      break;
    default:
      v11 = global_os_log;
      if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
      {
        v16 = 136446466;
        v17 = "omr_watcher_route_update_callback";
        v18 = 1024;
        *v19 = a3;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%{public}s: unhandled error %d", &v16, 0x12u);
      }

      break;
  }

  v12 = a1[5];
  if (!v12)
  {
    return;
  }

  cti_events_discontinue(v12);
  a1[5] = 0;
  v13 = *a1;
  if (!*a1)
  {
    v9 = global_os_log;
    if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_39;
    }

    v16 = 136447490;
    v17 = "omr_watcher_route_update_callback";
    v18 = 1024;
    *v19 = 0;
    *&v19[4] = 2048;
    *&v19[6] = a1;
    *&v19[14] = 2080;
    *&v19[16] = "omw";
    *&v19[24] = 2080;
    *&v19[26] = "omr-watcher.c";
    v20 = 1024;
    v21 = 776;
    v15 = "%{public}s: ALLOC: release after finalize at %2.2d: %p (%10s): %s:%d";
    goto LABEL_38;
  }

  v9 = global_os_log;
  if (v13 >= 10001)
  {
    if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_39;
    }

    v16 = 136447490;
    v17 = "omr_watcher_route_update_callback";
    v18 = 1024;
    *v19 = v13;
    *&v19[4] = 2048;
    *&v19[6] = a1;
    *&v19[14] = 2080;
    *&v19[16] = "omw";
    *&v19[24] = 2080;
    *&v19[26] = "omr-watcher.c";
    v20 = 1024;
    v21 = 776;
    v15 = "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d";
    goto LABEL_38;
  }

  if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 136447490;
    v17 = "omr_watcher_route_update_callback";
    v18 = 1024;
    *v19 = v13;
    *&v19[4] = 2048;
    *&v19[6] = a1;
    *&v19[14] = 2080;
    *&v19[16] = "omw";
    *&v19[24] = 2080;
    *&v19[26] = "omr-watcher.c";
    v20 = 1024;
    v21 = 776;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d", &v16, 0x36u);
    v13 = *a1;
  }

  *a1 = v13 - 1;
  if (v13 == 1)
  {
    v14 = global_os_log;
    if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 136447234;
      v17 = "omr_watcher_route_update_callback";
      v18 = 2048;
      *v19 = a1;
      *&v19[8] = 2080;
      *&v19[10] = "omw";
      *&v19[18] = 2080;
      *&v19[20] = "omr-watcher.c";
      *&v19[28] = 1024;
      *&v19[30] = 776;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC:      finalize: %p (%10s): %s:%d", &v16, 0x30u);
    }

    ++omr_watcher_finalized;
    omr_watcher_finalize(a1);
  }
}

void omr_watcher_onmesh_prefix_list_fetch(uint64_t a1)
{
  if (*(a1 + 110) == 1)
  {
    v2 = *(a1 + 56);
    if (v2)
    {
      ioloop_add_wake_event(v2, a1, omr_watcher_prefix_recheck_wakeup, omr_watcher_wakeup_release, 0x3A98u);
      v3 = global_os_log;
      if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
      {
        v4 = *a1;
        *buf = 136447490;
        v16 = "omr_watcher_onmesh_prefix_list_fetch";
        v17 = 1024;
        v18 = v4;
        v19 = 2048;
        v20 = a1;
        v21 = 2080;
        v22 = "watcher";
        v23 = 2080;
        v24 = "omr-watcher.c";
        v25 = 1024;
        v26 = 705;
        _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC:  retain at %2.2d: %p (%10s): %s:%d", buf, 0x36u);
      }

      v5 = *a1;
      if (*a1)
      {
        v6 = v5 + 1;
        *a1 = v5 + 1;
        if (v5 + 1 >= 10001)
        {
          v7 = global_os_log;
          if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
          {
            goto LABEL_25;
          }

          *buf = 136447490;
          v16 = "omr_watcher_onmesh_prefix_list_fetch";
          v17 = 1024;
          v18 = v6;
          v19 = 2048;
          v20 = a1;
          v21 = 2080;
          v22 = "watcher";
          v23 = 2080;
          v24 = "omr-watcher.c";
          v25 = 1024;
          v26 = 705;
          goto LABEL_24;
        }
      }

      else
      {
        ++omr_watcher_created;
        *a1 = 1;
      }

      *(a1 + 110) = 1;
    }
  }

  v8 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v8, "interface", "org.wpantund.v1");
  xpc_dictionary_set_string(v8, "path", "/org/wpantund/utun2");
  xpc_dictionary_set_string(v8, "method", "PropGet");
  xpc_dictionary_set_string(v8, "property_name", "Thread:OnMeshPrefixes");
  v9 = setup_for_command((a1 + 32), "get_onmesh_prefix_list", "Thread:OnMeshPrefixes", 0, v8, a1, omr_watcher_onmesh_prefix_list_callback, cti_internal_onmesh_prefix_reply_callback, 0, "/Library/Caches/com.apple.xbs/Sources/mDNSResponderExtras/ServiceRegistration/omr-watcher.c", 710);
  v10 = global_os_log;
  if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v16 = "cti_get_onmesh_prefix_list_";
    v17 = 1024;
    v18 = v9;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%{public}s: result %d", buf, 0x12u);
  }

  if (v8)
  {
    xpc_release(v8);
  }

  v11 = global_os_log;
  if (v9)
  {
    if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v16 = "omr_watcher_onmesh_prefix_list_fetch";
      v17 = 1024;
      v18 = v9;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%{public}s: can't get onmesh prefix list: %d", buf, 0x12u);
    }
  }

  else
  {
    if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
    {
      v12 = *a1;
      *buf = 136447490;
      v16 = "omr_watcher_onmesh_prefix_list_fetch";
      v17 = 1024;
      v18 = v12;
      v19 = 2048;
      v20 = a1;
      v21 = 2080;
      v22 = "watcher";
      v23 = 2080;
      v24 = "omr-watcher.c";
      v25 = 1024;
      v26 = 715;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC:  retain at %2.2d: %p (%10s): %s:%d", buf, 0x36u);
    }

    v13 = *a1;
    if (*a1)
    {
      v14 = v13 + 1;
      *a1 = v13 + 1;
      if (v13 + 1 >= 10001)
      {
        v7 = global_os_log;
        if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
        {
          goto LABEL_25;
        }

        *buf = 136447490;
        v16 = "omr_watcher_onmesh_prefix_list_fetch";
        v17 = 1024;
        v18 = v14;
        v19 = 2048;
        v20 = a1;
        v21 = 2080;
        v22 = "watcher";
        v23 = 2080;
        v24 = "omr-watcher.c";
        v25 = 1024;
        v26 = 715;
LABEL_24:
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_FAULT, "%{public}s: ALLOC: retain at %2.2d: %p (%10s): %s:%d", buf, 0x36u);
LABEL_25:
        abort();
      }
    }

    else
    {
      ++omr_watcher_created;
      *a1 = 1;
    }
  }
}

void omr_watcher_onmesh_prefix_list_callback(void *a1, int *a2, int a3)
{
  v6 = global_os_log;
  if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 136446466;
    v16 = "omr_watcher_onmesh_prefix_list_callback";
    v17 = 1024;
    *v18 = a3;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}s: status: %d", &v15, 0x12u);
  }

  switch(a3)
  {
    case -65569:
      goto LABEL_6;
    case 0:
      omr_watcher_onmesh_prefixes_update(a1, a2);
      break;
    case -65563:
LABEL_6:
      v7 = global_os_log;
      if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
      {
        v15 = 136446210;
        v16 = "omr_watcher_onmesh_prefix_list_callback";
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}s: disconnected", &v15, 0xCu);
      }

      v8 = a1[10];
      if (v8)
      {
        v8(a1[2]);
      }

      break;
    default:
      v9 = global_os_log;
      if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
      {
        v15 = 136446466;
        v16 = "omr_watcher_onmesh_prefix_list_callback";
        v17 = 1024;
        *v18 = a3;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%{public}s: unhandled error %d", &v15, 0x12u);
      }

      break;
  }

  v10 = a1[4];
  if (!v10)
  {
    return;
  }

  cti_events_discontinue(v10);
  a1[4] = 0;
  v11 = *a1;
  if (!*a1)
  {
    v12 = global_os_log;
    if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_28;
    }

    v15 = 136447490;
    v16 = "omr_watcher_onmesh_prefix_list_callback";
    v17 = 1024;
    *v18 = 0;
    *&v18[4] = 2048;
    *&v18[6] = a1;
    *&v18[14] = 2080;
    *&v18[16] = "omw";
    *&v18[24] = 2080;
    *&v18[26] = "omr-watcher.c";
    v19 = 1024;
    v20 = 489;
    v14 = "%{public}s: ALLOC: release after finalize at %2.2d: %p (%10s): %s:%d";
    goto LABEL_27;
  }

  v12 = global_os_log;
  if (v11 >= 10001)
  {
    if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_28;
    }

    v15 = 136447490;
    v16 = "omr_watcher_onmesh_prefix_list_callback";
    v17 = 1024;
    *v18 = v11;
    *&v18[4] = 2048;
    *&v18[6] = a1;
    *&v18[14] = 2080;
    *&v18[16] = "omw";
    *&v18[24] = 2080;
    *&v18[26] = "omr-watcher.c";
    v19 = 1024;
    v20 = 489;
    v14 = "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d";
LABEL_27:
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_FAULT, v14, &v15, 0x36u);
LABEL_28:
    abort();
  }

  if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 136447490;
    v16 = "omr_watcher_onmesh_prefix_list_callback";
    v17 = 1024;
    *v18 = v11;
    *&v18[4] = 2048;
    *&v18[6] = a1;
    *&v18[14] = 2080;
    *&v18[16] = "omw";
    *&v18[24] = 2080;
    *&v18[26] = "omr-watcher.c";
    v19 = 1024;
    v20 = 489;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d", &v15, 0x36u);
    v11 = *a1;
  }

  *a1 = v11 - 1;
  if (v11 == 1)
  {
    v13 = global_os_log;
    if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 136447234;
      v16 = "omr_watcher_onmesh_prefix_list_callback";
      v17 = 2048;
      *v18 = a1;
      *&v18[8] = 2080;
      *&v18[10] = "omw";
      *&v18[18] = 2080;
      *&v18[20] = "omr-watcher.c";
      *&v18[28] = 1024;
      *&v18[30] = 489;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC:      finalize: %p (%10s): %s:%d", &v15, 0x30u);
    }

    ++omr_watcher_finalized;
    omr_watcher_finalize(a1);
  }
}

void omr_watcher_onmesh_prefixes_update(uint64_t a1, int *a2)
{
  v4 = &unk_1000A9000;
  v5 = global_os_log;
  v6 = "omr_watcher_onmesh_prefixes_update";
  if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
  {
    if (a2)
    {
      v7 = *a2;
    }

    else
    {
      v7 = -1;
    }

    *buf = 136446722;
    v108 = "omr_watcher_onmesh_prefixes_update";
    v109 = 2048;
    *v110 = a2;
    *&v110[8] = 1024;
    *&v110[10] = v7;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}s: prefixes: %p  count: %d", buf, 0x1Cu);
  }

  v104 = a2;
  v8 = *(a1 + 8);
  v9 = *(v8 + 208);
  if (v9)
  {
    v10 = *(v9 + 8);
    if (v10)
    {
      v11 = global_os_log;
      if (v10 < 10001)
      {
        if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136447490;
          v108 = "cti_prefix_vec_release_";
          v109 = 1024;
          *v110 = v10;
          *&v110[4] = 2048;
          *&v110[6] = v9;
          *&v110[14] = 2080;
          *&v110[16] = "prefixes";
          *&v110[24] = 2080;
          *&v110[26] = "omr-watcher.c";
          v111 = 1024;
          LODWORD(v112) = 322;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d", buf, 0x36u);
          v10 = *(v9 + 8);
        }

        v54 = v10 == 1;
        *(v9 + 8) = v10 - 1;
        v6 = "omr_watcher_onmesh_prefixes_update";
        if (v54)
        {
          v12 = global_os_log;
          if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136447234;
            v108 = "cti_prefix_vec_release_";
            v109 = 2048;
            *v110 = v9;
            *&v110[8] = 2080;
            *&v110[10] = "prefixes";
            *&v110[18] = 2080;
            *&v110[20] = "omr-watcher.c";
            *&v110[28] = 1024;
            *&v110[30] = 322;
            _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC:      finalize: %p (%10s): %s:%d", buf, 0x30u);
          }

          ++cti_prefix_vec_finalized;
          cti_prefix_vec_finalize(v9);
        }

        goto LABEL_16;
      }

      if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_192;
      }

      *buf = 136447490;
      v108 = "cti_prefix_vec_release_";
      v109 = 1024;
      *v110 = v10;
      *&v110[4] = 2048;
      *&v110[6] = v9;
      *&v110[14] = 2080;
      *&v110[16] = "prefixes";
      *&v110[24] = 2080;
      *&v110[26] = "omr-watcher.c";
      v111 = 1024;
      LODWORD(v112) = 322;
      v19 = "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d";
      v98 = v11;
    }

    else
    {
      v18 = global_os_log;
      if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_192;
      }

      *buf = 136447490;
      v108 = "cti_prefix_vec_release_";
      v109 = 1024;
      *v110 = 0;
      *&v110[4] = 2048;
      *&v110[6] = v9;
      *&v110[14] = 2080;
      *&v110[16] = "prefixes";
      *&v110[24] = 2080;
      *&v110[26] = "omr-watcher.c";
      v111 = 1024;
      LODWORD(v112) = 322;
      v19 = "%{public}s: ALLOC: release after finalize at %2.2d: %p (%10s): %s:%d";
LABEL_190:
      v98 = v18;
    }

LABEL_191:
    _os_log_impl(&_mh_execute_header, v98, OS_LOG_TYPE_FAULT, v19, buf, 0x36u);
    goto LABEL_192;
  }

LABEL_16:
  *(v8 + 208) = a2;
  v13 = a2;
  if (a2)
  {
    v14 = global_os_log;
    if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
    {
      v15 = a2[2];
      *buf = 136447490;
      v108 = "cti_prefix_vec_retain_";
      v109 = 1024;
      *v110 = v15;
      *&v110[4] = 2048;
      *&v110[6] = a2;
      *&v110[14] = 2080;
      *&v110[16] = "prefixes";
      *&v110[24] = 2080;
      *&v110[26] = "omr-watcher.c";
      v111 = 1024;
      LODWORD(v112) = 325;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC:  retain at %2.2d: %p (%10s): %s:%d", buf, 0x36u);
    }

    v16 = a2[2];
    if (v16)
    {
      v17 = v16 + 1;
      a2[2] = v16 + 1;
      if (v16 + 1 >= 10001)
      {
        v18 = global_os_log;
        if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
        {
          *buf = 136447490;
          v108 = "cti_prefix_vec_retain_";
          v109 = 1024;
          *v110 = v17;
          *&v110[4] = 2048;
          *&v110[6] = a2;
          *&v110[14] = 2080;
          *&v110[16] = "prefixes";
          *&v110[24] = 2080;
          *&v110[26] = "omr-watcher.c";
          v111 = 1024;
          LODWORD(v112) = 325;
          v19 = "%{public}s: ALLOC: retain at %2.2d: %p (%10s): %s:%d";
          goto LABEL_190;
        }

        goto LABEL_192;
      }
    }

    else
    {
      ++cti_prefix_vec_created;
      a2[2] = 1;
    }
  }

  v20 = (a1 + 72);
  v21 = *(a1 + 72);
  v22 = 0;
  if (v21)
  {
    v23 = (a1 + 72);
    while (1)
    {
      v24 = *v13;
      if (*v13)
      {
        v25 = 0;
        while (*(v21 + 16) != **(*(v13 + 2) + 8 * v25))
        {
          if (v24 == ++v25)
          {
            goto LABEL_33;
          }
        }
      }

      else
      {
        v25 = 0;
      }

      if (v25 == v24)
      {
LABEL_33:
        for (i = *(a1 + 24); i; i = *i)
        {
          if ((i[4] & 1) == 0)
          {
            (i[1])(*(a1 + 8), i[3], 0, 0, v21);
          }
        }

        v27 = v23;
        *v23 = *(v21 + 8);
        v28 = global_os_log;
        if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
        {
          v29 = *(v21 + 16);
          v30 = "ULA: ";
          if ((v29 & 0xFE) != 0xFC)
          {
            if (v29 != 254 || (v30 = "LUA: ", (*(v21 + 17) & 0xC0) != 0x80))
            {
              v30 = "";
              if ((v29 & 0xE0) == 0x20)
              {
                v30 = "GUA: ";
              }
            }
          }

          v31 = *(v21 + 32);
          v32 = " (user)";
          if (!*(v21 + 52))
          {
            v32 = "";
          }

          v33 = " (ncp)";
          if (!*(v21 + 53))
          {
            v33 = "";
          }

          v34 = " (stable)";
          if (!*(v21 + 54))
          {
            v34 = "";
          }

          *buf = 136449795;
          v108 = "omr_watcher_onmesh_prefixes_update";
          v109 = 2082;
          *v110 = v30;
          *&v110[8] = 2160;
          *&v110[10] = 1752392040;
          *&v110[18] = 1041;
          *&v110[20] = 6;
          *&v110[24] = 2097;
          *&v110[26] = v21 + 16;
          v111 = 2160;
          v112 = 1752392040;
          v113 = 1042;
          v114 = 2;
          v115 = 2098;
          v116 = (v21 + 22);
          v117 = 2160;
          v118 = 1752392040;
          v119 = 1041;
          v120 = 8;
          v121 = 2097;
          v122 = (v21 + 24);
          v123 = 1024;
          v124 = v31;
          v125 = 2082;
          v126 = v32;
          v127 = 2082;
          v128 = v33;
          v129 = 2082;
          v130 = v34;
          _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "%{public}s: prefix {%{public}s%{private, mask.hash, srp:in6_addr_segment}.6P:%{public, mask.hash, srp:in6_addr_segment}.2P:%{private, mask.hash, srp:in6_addr_segment}.8P}/%d went away%{public}s%{public}s%{public}s", buf, 0x88u);
        }

        v35 = *v21;
        if (!*v21)
        {
          v18 = global_os_log;
          if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
          {
            *buf = 136447490;
            v108 = "omr_watcher_onmesh_prefixes_update";
            v109 = 1024;
            *v110 = 0;
            *&v110[4] = 2048;
            *&v110[6] = v21;
            *&v110[14] = 2080;
            *&v110[16] = "prefix";
            *&v110[24] = 2080;
            *&v110[26] = "omr-watcher.c";
            v111 = 1024;
            LODWORD(v112) = 347;
            v19 = "%{public}s: ALLOC: release after finalize at %2.2d: %p (%10s): %s:%d";
            goto LABEL_190;
          }

          goto LABEL_192;
        }

        v36 = global_os_log;
        if (v35 >= 10001)
        {
          if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
          {
            goto LABEL_192;
          }

          *buf = 136447490;
          v108 = "omr_watcher_onmesh_prefixes_update";
          v109 = 1024;
          *v110 = v35;
          *&v110[4] = 2048;
          *&v110[6] = v21;
          *&v110[14] = 2080;
          *&v110[16] = "prefix";
          *&v110[24] = 2080;
          *&v110[26] = "omr-watcher.c";
          v111 = 1024;
          LODWORD(v112) = 347;
          v19 = "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d";
          v98 = v36;
          goto LABEL_191;
        }

        if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136447490;
          v108 = "omr_watcher_onmesh_prefixes_update";
          v109 = 1024;
          *v110 = v35;
          *&v110[4] = 2048;
          *&v110[6] = v21;
          *&v110[14] = 2080;
          *&v110[16] = "prefix";
          *&v110[24] = 2080;
          *&v110[26] = "omr-watcher.c";
          v111 = 1024;
          LODWORD(v112) = 347;
          _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d", buf, 0x36u);
          v35 = *v21;
        }

        v23 = v27;
        *v21 = v35 - 1;
        if (v35 == 1)
        {
          v37 = global_os_log;
          v13 = v104;
          if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136447234;
            v108 = "omr_watcher_onmesh_prefixes_update";
            v109 = 2048;
            *v110 = v21;
            *&v110[8] = 2080;
            *&v110[10] = "prefix";
            *&v110[18] = 2080;
            *&v110[20] = "omr-watcher.c";
            *&v110[28] = 1024;
            *&v110[30] = 347;
            _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC:      finalize: %p (%10s): %s:%d", buf, 0x30u);
          }

          ++omr_prefix_finalized;
          free(v21);
          v23 = v27;
          v22 = 1;
        }

        else
        {
          v22 = 1;
          v13 = v104;
        }
      }

      else
      {
        *(v21 + 59) = *(v21 + 52);
        *(v21 + 60) = *(v21 + 53);
        *(v21 + 52) = 0;
        *(v21 + 54) = 0;
        v23 = (v21 + 8);
        *(v21 + 62) = 0;
        *(v21 + 64) = 0;
      }

      v21 = *v23;
      if (!*v23)
      {
        goto LABEL_63;
      }
    }
  }

  v23 = (a1 + 72);
LABEL_63:
  v99 = v22;
  v101 = (a1 + 72);
  if (*v13)
  {
    v38 = 0;
    v100 = 0;
    v102 = v23;
    v103 = v23;
    while (1)
    {
      v39 = *(*(v13 + 2) + 8 * v38);
      v40 = v39[34];
      v41 = *(v4 + 22);
      v42 = os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT);
      if (v40 == 1)
      {
        if (!v42)
        {
          goto LABEL_81;
        }

        v43 = *v39;
        v44 = "ULA: ";
        if ((v43 & 0xFE) != 0xFC)
        {
          if (v43 != 254 || (v44 = "LUA: ", (v39[1] & 0xC0) != 0x80))
          {
            v44 = "GUA: ";
            if ((v43 & 0xE0) != 0x20)
            {
              v44 = "";
            }
          }
        }

        v45 = *(v39 + 4);
        v46 = *(v39 + 18);
        *buf = 136449283;
        v108 = v6;
        v109 = 2082;
        *v110 = v44;
        *&v110[8] = 2160;
        *&v110[10] = 1752392040;
        *&v110[18] = 1041;
        *&v110[20] = 6;
        *&v110[24] = 2097;
        *&v110[26] = v39;
        v111 = 2160;
        v112 = 1752392040;
        v113 = 1042;
        v114 = 2;
        v115 = 2098;
        v116 = v39 + 6;
        v117 = 2160;
        v118 = 1752392040;
        v119 = 1041;
        v120 = 8;
        v121 = 2097;
        v122 = v39 + 8;
        v123 = 1024;
        v124 = v45;
        v125 = 1024;
        LODWORD(v126) = v46;
        v47 = v41;
        v48 = "%{public}s: prefix {%{public}s%{private, mask.hash, srp:in6_addr_segment}.6P:%{public, mask.hash, srp:in6_addr_segment}.2P:%{private, mask.hash, srp:in6_addr_segment}.8P}/%d has 6LoWPAN context: id = %d";
        v49 = 112;
      }

      else
      {
        if (!v42)
        {
          goto LABEL_81;
        }

        v50 = *v39;
        v51 = "ULA: ";
        if ((v50 & 0xFE) != 0xFC)
        {
          if (v50 != 254 || (v51 = "LUA: ", (v39[1] & 0xC0) != 0x80))
          {
            v51 = "GUA: ";
            if ((v50 & 0xE0) != 0x20)
            {
              v51 = "";
            }
          }
        }

        v52 = *(v39 + 4);
        *buf = 136449027;
        v108 = v6;
        v109 = 2082;
        *v110 = v51;
        *&v110[8] = 2160;
        *&v110[10] = 1752392040;
        *&v110[18] = 1041;
        *&v110[20] = 6;
        *&v110[24] = 2097;
        *&v110[26] = v39;
        v111 = 2160;
        v112 = 1752392040;
        v113 = 1042;
        v114 = 2;
        v115 = 2098;
        v116 = v39 + 6;
        v117 = 2160;
        v118 = 1752392040;
        v119 = 1041;
        v120 = 8;
        v121 = 2097;
        v122 = v39 + 8;
        v123 = 1024;
        v124 = v52;
        v47 = v41;
        v48 = "%{public}s: prefix {%{public}s%{private, mask.hash, srp:in6_addr_segment}.6P:%{public, mask.hash, srp:in6_addr_segment}.2P:%{private, mask.hash, srp:in6_addr_segment}.8P}/%d is in thread-supplied prefix list";
        v49 = 106;
      }

      _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, v48, buf, v49);
LABEL_81:
      v53 = *v20;
      if (*v20)
      {
        while (1)
        {
          v54 = *(v53 + 2) == *v39 && *(v53 + 3) == *(v39 + 1);
          if (v54)
          {
            break;
          }

          v53 = *(v53 + 1);
          if (!v53)
          {
            goto LABEL_87;
          }
        }

        v70 = *(v4 + 22);
        if (os_log_type_enabled(v70, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136446210;
          v108 = v6;
          _os_log_impl(&_mh_execute_header, v70, OS_LOG_TYPE_DEFAULT, "%{public}s: present", buf, 0xCu);
        }

LABEL_107:
        v23 = v103;
        if (v39[33] == 1)
        {
          v53[53] = 1;
        }

        else
        {
          v100 = 1;
          v53[52] = 1;
        }

        if (v39[32] == 1)
        {
          v53[54] = 1;
        }

        goto LABEL_112;
      }

LABEL_87:
      v55 = *(v4 + 22);
      if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446210;
        v108 = v6;
        _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEFAULT, "%{public}s: not present", buf, 0xCu);
      }

      v56 = *(v39 + 6);
      if ((v56 & 0x100) != 0)
      {
        v61 = v6;
        v62 = *(v39 + 2);
        v63 = *(v39 + 7);
        v64 = v39[32];
        v65 = v39[33];
        v66 = malloc_type_calloc(1uLL, 0x48uLL, 0xBD121BEBuLL);
        v67 = global_os_log;
        if (!v66)
        {
          if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
          {
            *buf = 136446722;
            v108 = "omr_prefix_create";
            v109 = 2048;
            *v110 = 1;
            *&v110[8] = 2048;
            *&v110[10] = 72;
            _os_log_impl(&_mh_execute_header, v67, OS_LOG_TYPE_ERROR, "%{public}s: strict_calloc(%zu, %zu) failed", buf, 0x20u);
          }

          __break(1u);
LABEL_188:
          v18 = global_os_log;
          if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
          {
            *buf = 136447490;
            v108 = "omr_prefix_create";
            v109 = 1024;
            *v110 = v67;
            *&v110[4] = 2048;
            *&v110[6] = v53;
            *&v110[14] = 2080;
            *&v110[16] = "ret";
            *&v110[24] = 2080;
            *&v110[26] = "omr-watcher.c";
            v111 = 1024;
            LODWORD(v112) = 161;
            v19 = "%{public}s: ALLOC: retain at %2.2d: %p (%10s): %s:%d";
            goto LABEL_190;
          }

LABEL_192:
          abort();
        }

        v53 = v66;
        if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
        {
          v68 = *v53;
          *buf = 136447490;
          v108 = "omr_prefix_create";
          v109 = 1024;
          *v110 = v68;
          *&v110[4] = 2048;
          *&v110[6] = v53;
          *&v110[14] = 2080;
          *&v110[16] = "ret";
          *&v110[24] = 2080;
          *&v110[26] = "omr-watcher.c";
          v111 = 1024;
          LODWORD(v112) = 161;
          _os_log_impl(&_mh_execute_header, v67, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC:  retain at %2.2d: %p (%10s): %s:%d", buf, 0x36u);
        }

        v69 = *v53;
        if (*v53)
        {
          LODWORD(v67) = v69 + 1;
          *v53 = v69 + 1;
          if (v69 + 1 >= 10001)
          {
            goto LABEL_188;
          }
        }

        else
        {
          ++omr_prefix_created;
          *v53 = 1;
        }

        *(v53 + 1) = *v39;
        *(v53 + 4) = v62;
        *(v53 + 10) = v63;
        *(v53 + 11) = v56;
        v53[54] = v64;
        v53[53] = v65;
        v53[52] = v65 ^ 1;
        v71 = vand_s8(vmovn_s32(vshlq_u32(vdupq_n_s32(v56), xmmword_100085ED0)), 0x1000100010001);
        *(v53 + 55) = vuzp1_s8(v71, v71).u32[0];
        *(v53 + 12) = dword_100085F00[v56 >> 14];
        *v102 = v53;
        v102 = v53 + 8;
        v6 = v61;
        v4 = &unk_1000A9000;
        v20 = (a1 + 72);
        v13 = v104;
        goto LABEL_107;
      }

      v4 = &unk_1000A9000;
      v57 = global_os_log;
      v23 = v103;
      if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
      {
        v58 = *v39;
        v59 = "ULA: ";
        if ((v58 & 0xFE) != 0xFC)
        {
          if (v58 != 254 || (v59 = "LUA: ", (v39[1] & 0xC0) != 0x80))
          {
            v59 = "GUA: ";
            if ((v58 & 0xE0) != 0x20)
            {
              v59 = "";
            }
          }
        }

        v60 = *(v39 + 4);
        *buf = 136449027;
        v108 = v6;
        v109 = 2082;
        *v110 = v59;
        *&v110[8] = 2160;
        *&v110[10] = 1752392040;
        *&v110[18] = 1041;
        *&v110[20] = 6;
        *&v110[24] = 2097;
        *&v110[26] = v39;
        v111 = 2160;
        v112 = 1752392040;
        v113 = 1042;
        v114 = 2;
        v115 = 2098;
        v116 = v39 + 6;
        v117 = 2160;
        v118 = 1752392040;
        v119 = 1041;
        v120 = 8;
        v121 = 2097;
        v122 = v39 + 8;
        v123 = 1024;
        v124 = v60;
        _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_DEFAULT, "%{public}s: prefix {%{public}s%{private, mask.hash, srp:in6_addr_segment}.6P:%{public, mask.hash, srp:in6_addr_segment}.2P:%{private, mask.hash, srp:in6_addr_segment}.8P}/%d is not on-mesh, skipping", buf, 0x6Au);
      }

LABEL_112:
      if (++v38 >= *v13)
      {
        goto LABEL_115;
      }
    }
  }

  v100 = 0;
LABEL_115:
  v72 = *v20;
  if (*v20)
  {
    v73 = &loc_100085000;
    v74 = v99;
    while (1)
    {
      v75 = *v23;
      if (v72 == *v23)
      {
        break;
      }

      if (v72[52] != v72[59] || v72[53] != v72[60] || v72[61] != v72[54])
      {
        for (j = *(a1 + 24); j; j = *j)
        {
          if ((j[4] & 1) == 0)
          {
            (j[1])(*(a1 + 8), j[3], 1, 0, v72);
          }
        }

        v74 = 1;
      }

      v72 = *(v72 + 1);
      if (!v72)
      {
        goto LABEL_129;
      }
    }
  }

  else
  {
    v73 = &loc_100085000;
    v74 = v99;
LABEL_129:
    v75 = *v23;
  }

  if (v75)
  {
    v105 = v73[508];
    do
    {
      v77 = *(v4 + 22);
      if (os_log_type_enabled(v77, OS_LOG_TYPE_DEFAULT))
      {
        v78 = *(v75 + 16);
        v79 = "ULA: ";
        if ((v78 & 0xFE) != 0xFC)
        {
          if (v78 != 254 || (v79 = "LUA: ", (*(v75 + 17) & 0xC0) != 0x80))
          {
            v79 = "";
            if ((v78 & 0xE0) == 0x20)
            {
              v79 = "GUA: ";
            }
          }
        }

        v80 = *(v75 + 32);
        v81 = " (user)";
        if (!*(v75 + 52))
        {
          v81 = "";
        }

        v82 = " (ncp)";
        if (!*(v75 + 53))
        {
          v82 = "";
        }

        v83 = " (stable)";
        if (!*(v75 + 54))
        {
          v83 = "";
        }

        *buf = v105;
        v108 = v6;
        v109 = 2082;
        *v110 = v79;
        *&v110[8] = 2160;
        *&v110[10] = 1752392040;
        *&v110[18] = 1041;
        *&v110[20] = 6;
        *&v110[24] = 2097;
        *&v110[26] = v75 + 16;
        v111 = 2160;
        v112 = 1752392040;
        v113 = 1042;
        v114 = 2;
        v115 = 2098;
        v116 = (v75 + 22);
        v117 = 2160;
        v118 = 1752392040;
        v119 = 1041;
        v120 = 8;
        v121 = 2097;
        v122 = (v75 + 24);
        v123 = 1024;
        v124 = v80;
        v125 = 2082;
        v126 = v81;
        v127 = 2082;
        v128 = v82;
        v129 = 2082;
        v130 = v83;
        _os_log_impl(&_mh_execute_header, v77, OS_LOG_TYPE_DEFAULT, "%{public}s: prefix {%{public}s%{private, mask.hash, srp:in6_addr_segment}.6P:%{public, mask.hash, srp:in6_addr_segment}.2P:%{private, mask.hash, srp:in6_addr_segment}.8P}/%d showed up%{public}s%{public}s%{public}s", buf, 0x88u);
      }

      for (k = *(a1 + 24); k; k = *k)
      {
        if ((k[4] & 1) == 0)
        {
          (k[1])(*(a1 + 8), k[3], 2, 0, v75);
        }
      }

      v75 = *(v75 + 8);
    }

    while (v75);
    v74 = 1;
    v73 = &loc_100085000;
  }

  v85 = *(v4 + 22);
  v86 = os_log_type_enabled(v85, OS_LOG_TYPE_DEFAULT);
  v87 = *v101;
  if (v86)
  {
    *buf = 136446466;
    v108 = v6;
    v109 = 2048;
    *v110 = v87;
    _os_log_impl(&_mh_execute_header, v85, OS_LOG_TYPE_DEFAULT, "%{public}s: omw->prefixes = %p", buf, 0x16u);
    v87 = *v101;
  }

  if (v87)
  {
    v88 = *(v4 + 22);
    v106 = v73[508];
    do
    {
      if (os_log_type_enabled(v88, OS_LOG_TYPE_DEFAULT))
      {
        v89 = *(v87 + 16);
        v90 = "ULA: ";
        if ((v89 & 0xFE) != 0xFC)
        {
          if (v89 != 254 || (v90 = "LUA: ", (*(v87 + 17) & 0xC0) != 0x80))
          {
            v90 = "";
            if ((v89 & 0xE0) == 0x20)
            {
              v90 = "GUA: ";
            }
          }
        }

        v91 = *(v87 + 32);
        v92 = " (user)";
        if (!*(v87 + 52))
        {
          v92 = "";
        }

        v93 = " (ncp)";
        if (!*(v87 + 53))
        {
          v93 = "";
        }

        v94 = " (stable)";
        if (!*(v87 + 54))
        {
          v94 = "";
        }

        *buf = v106;
        v108 = v6;
        v109 = 2082;
        *v110 = v90;
        *&v110[8] = 2160;
        *&v110[10] = 1752392040;
        *&v110[18] = 1041;
        *&v110[20] = 6;
        *&v110[24] = 2097;
        *&v110[26] = v87 + 16;
        v111 = 2160;
        v112 = 1752392040;
        v113 = 1042;
        v114 = 2;
        v115 = 2098;
        v116 = (v87 + 22);
        v117 = 2160;
        v118 = 1752392040;
        v119 = 1041;
        v120 = 8;
        v121 = 2097;
        v122 = (v87 + 24);
        v123 = 1024;
        v124 = v91;
        v125 = 2082;
        v126 = v92;
        v127 = 2082;
        v128 = v93;
        v129 = 2082;
        v130 = v94;
        _os_log_impl(&_mh_execute_header, v88, OS_LOG_TYPE_DEFAULT, "%{public}s: prefix {%{public}s%{private, mask.hash, srp:in6_addr_segment}.6P:%{public, mask.hash, srp:in6_addr_segment}.2P:%{private, mask.hash, srp:in6_addr_segment}.8P}/%d is currently in the list %{public}s%{public}s%{public}s", buf, 0x88u);
        v88 = *(v4 + 22);
      }

      v87 = *(v87 + 8);
    }

    while (v87);
  }

  if ((v74 & 1) != 0 || *(a1 + 109) == 1)
  {
    v95 = *(a1 + 24);
    if (v95)
    {
      v96 = *(a1 + 72);
      do
      {
        if ((v95[4] & 1) == 0)
        {
          (v95[1])(*(a1 + 8), v95[3], 3, v96, 0);
        }

        v95 = *v95;
      }

      while (v95);
    }

    *(a1 + 109) = 0;
  }

  if ((v100 & 1) == 0)
  {
    v97 = *(a1 + 8);
    if (*(v97 + 424) == 1)
    {
      *(v97 + 424) = 0;
      adv_ctl_thread_shutdown_status_check(v97);
    }
  }
}