uint64_t codex_bootstrap(dispatch_group_t *a1, void *a2, uint64_t a3, uint64_t a4)
{
  daemon_assert_main_queue();
  v8 = ctx_new(a1, 0x48uLL);
  v8[4] = os_retain(a2);
  v8[7] = a3;
  v8[8] = a4;
  v8[6] = _codex_activate(a1, "bootstrap");
  dispatch_group_enter(a1[14]);

  return cryptex_async_f();
}

void _codex_bootstrap_continue(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[4];
  if (hash_lookup_node(*a1 + 448, v3 + 112))
  {
    if (*(v2 + 72))
    {
      os_log_type_enabled(*(v2 + 72), OS_LOG_TYPE_ERROR);
    }

    *(v2 + 56);
    v6 = _os_log_send_and_compose_impl();
    Error = createError("_codex_bootstrap_continue", "codex.c", 1644, "com.apple.security.cryptex", 17, 0, v6);
    free(v6);
    if (Error)
    {
      a1[2] = CFRetain(Error);
      cryptex_target_async_f();
      CFRelease(Error);
    }
  }

  else
  {
    v4 = *(v2 + 1412);
    v5 = *(v2 + 1416);

    quire_mount(v3, v4, v5, a1, _codex_bootstrap_continue2);
  }
}

uint64_t codex_unbootstrap(uint64_t a1, void *a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  daemon_assert_main_queue();
  v10 = *(a1 + 56);
  v11 = *__error();
  v12 = *(a1 + 72);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    v13 = "[anonymous]";
    if (v10)
    {
      v13 = v10;
    }

    v16 = 136446210;
    v17 = v13;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "%{public}s: codex_unbootstrap occurring.", &v16, 0xCu);
  }

  *__error() = v11;
  v14 = ctx_new(a1, 0x48uLL);
  v14[4] = os_retain(a2);
  v14[5] = a3;
  v14[7] = a4;
  v14[8] = a5;
  v14[6] = _codex_activate(a1, "unbootstrap");
  return quire_unbootstrap(a2, *(a1 + 1436), (a3 >> 1) & 1, v14, _codex_unbootstrap_continue);
}

void *_codex_unbootstrap_continue(uint64_t a1, uint64_t a2, const void *a3, uint64_t *a4)
{
  v7 = *a4;
  v8 = a4[5];
  daemon_assert_main_queue();
  v9 = _rmrfdirat(*(v7 + 1424), *(a1 + 208));
  if ((v9 & 0xFFFFFFFD) != 0)
  {
    v10 = v9;
    v11 = v9;
    if (*(a1 + 72))
    {
      os_log_type_enabled(*(a1 + 72), OS_LOG_TYPE_ERROR);
      v12 = *(a1 + 56);
      if (!v12)
      {
        v12 = "[anonymous]";
      }

      *buf = 136446466;
      v43 = v12;
      v44 = 1024;
      LODWORD(v45) = v10;
    }

    else
    {
      v17 = *(a1 + 56);
      if (!v17)
      {
        v17 = "[anonymous]";
      }

      *buf = 136446466;
      v43 = v17;
      v44 = 1024;
      LODWORD(v45) = v9;
    }

    v18 = _os_log_send_and_compose_impl();
    v19 = "com.apple.security.cryptex.posix";
    v20 = 1481;
    v21 = v11;
    goto LABEL_43;
  }

  if (*(v7 + 56))
  {
    v13 = *(v7 + 56);
  }

  else
  {
    v13 = "[anonymous]";
  }

  v14 = *__error();
  v15 = *(v7 + 72);
  if (a3)
  {
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = *(a1 + 208);
      *buf = 136446722;
      v43 = v13;
      v44 = 2080;
      v45 = v16;
      v46 = 2112;
      v47 = a3;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%{public}s: quire unbootstrap: %s: %@", buf, 0x20u);
    }

    *__error() = v14;
    a4[2] = CFRetain(a3);
    if ((_CFErrorHasDomainAndCode(a3, @"com.apple.security.cryptex", 18) & 1) == 0)
    {
      return cryptex_target_async_f();
    }
  }

  else
  {
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      v22 = *(a1 + 208);
      *buf = 136446466;
      v43 = v13;
      v44 = 2080;
      v45 = v22;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "%{public}s: quire unbootstrap: %s [no error]", buf, 0x16u);
    }

    *__error() = v14;
    a4[2] = 0;
  }

  if ((*(a1 + 176) & 0x10) != 0 && (v8 & 2) == 0)
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
      v43 = v23;
    }

    else
    {
      v26 = *(a1 + 56);
      if (!v26)
      {
        v26 = "[anonymous]";
      }

      *buf = 136446210;
      v43 = v26;
    }

    v18 = _os_log_send_and_compose_impl();
    v19 = "com.apple.security.cryptex";
    v20 = 1503;
LABEL_42:
    v21 = 4;
LABEL_43:
    Error = createError("_codex_unbootstrap_continue", "codex.c", v20, v19, v21, 0, v18);
    free(v18);
    a4[2] = Error;
    return cryptex_target_async_f();
  }

  if (*(a1 + 480))
  {
    if (*(a1 + 72))
    {
      os_log_type_enabled(*(a1 + 72), OS_LOG_TYPE_ERROR);
      v24 = *(a1 + 56);
      if (!v24)
      {
        v24 = "[anonymous]";
      }

      *buf = 136446210;
      v43 = v24;
    }

    else
    {
      v27 = *(a1 + 56);
      if (!v27)
      {
        v27 = "[anonymous]";
      }

      *buf = 136446210;
      v43 = v27;
    }

    v18 = _os_log_send_and_compose_impl();
    v19 = "com.apple.security.cryptex";
    v20 = 1514;
    goto LABEL_42;
  }

  if (v8)
  {
    v30 = *(v7 + 56);
    v31 = *__error();
    v32 = *(v7 + 72);
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
    {
      if (v30)
      {
        v33 = v30;
      }

      else
      {
        v33 = "[anonymous]";
      }

      *buf = 136446210;
      v43 = v33;
      _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEBUG, "%{public}s: will force unmount", buf, 0xCu);
    }

    *__error() = v31;
    v25 = 1;
  }

  else
  {
    v25 = 0;
  }

  if ((v8 & 4) != 0)
  {
    v34 = *(v7 + 56);
    v35 = *__error();
    v36 = *(v7 + 72);
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
    {
      if (v34)
      {
        v37 = v34;
      }

      else
      {
        v37 = "[anonymous]";
      }

      *buf = 136446210;
      v43 = v37;
      _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEBUG, "%{public}s: unmount failure will not result in a quire husk", buf, 0xCu);
    }

    *__error() = v35;
    v25 |= 2uLL;
  }

  v38 = *(v7 + 56);
  v39 = *__error();
  v40 = *(v7 + 72);
  if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
  {
    if (v38)
    {
      v41 = v38;
    }

    else
    {
      v41 = "[anonymous]";
    }

    *buf = 136446210;
    v43 = v41;
    _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEBUG, "%{public}s: _codex_unbootstrap_continue progressing to quire unmount", buf, 0xCu);
  }

  *__error() = v39;
  return quire_unmount(a1, v25, a4, _codex_unbootstrap_continue2);
}

void *codex_copy_quire(uint64_t a1, char *a2, uint64_t a3)
{
  daemon_assert_main_queue();
  v6 = hash_lookup_cstr(a1 + 144, a2);
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  if (a3)
  {
    v8 = *(v6 + 144);
    if (cryptex_version_compare())
    {
      return 0;
    }
  }

  return os_retain((v7 - 80));
}

uint64_t codex_barrier(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = ctx_new(a1, 0x40uLL);
  v6[6] = a2;
  v6[7] = a3;
  v6[5] = _codex_activate(a1, "barrier");

  return cryptex_async_f();
}

void _codex_barrier_continue(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[5];
  daemon_assert_main_queue();
  v4 = *(v2 + 56);
  v5 = *__error();
  v6 = *(v2 + 72);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v7 = "[anonymous]";
    if (v4)
    {
      v7 = v4;
    }

    v8 = 136446210;
    v9 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "%{public}s: enqueuing barrier", &v8, 0xCu);
  }

  *__error() = v5;
  a1[4] = 0;
  **(v2 + 1384) = a1;
  *(v2 + 1384) = a1 + 4;
  _codex_deactivate(v2, v3);
}

uint64_t codex_lockdown(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = ctx_new(a1, 0x30uLL);
  v5[4] = a2;
  v5[5] = a3;

  return cryptex_async_f();
}

void _codex_lockdown_continue(_DWORD *a1)
{
  v2 = *a1;
  v3 = os_retain(_system);
  *(v2 + 80) |= 4uLL;
  if (v2 == v3)
  {
    v4 = cryptex_signature_seal();
    if (v4)
    {
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

        v9 = 136446466;
        v10 = v8;
        v11 = 1024;
        v12 = v4;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%{public}s: failed to seal hash slot: %{darwin.errno}d", &v9, 0x12u);
      }

      *__error() = v6;
    }
  }

  else
  {
    v4 = 0;
  }

  a1[2] = v4;
  dispatch_async_f(*(v2 + 96), a1, _codex_lockdown_continue2);
  if (v3)
  {
    os_release(v3);
  }
}

void codex_list_installed(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = ctx_new(a1, 0x48uLL);
  v5[7] = a2;
  v5[8] = a3;
  v5[5] = xpc_array_create(0, 0);
  main_queue = daemon_get_main_queue();

  dispatch_async_f(main_queue, v5, _codex_list_installed_continue);
}

uint64_t codex_installed_cryptex_apply(uint64_t result, uint64_t a2)
{
  v3 = 0;
  v4 = result + 144;
  while (1)
  {
    v5 = *(v4 + 8 * v3);
    if (v5)
    {
      break;
    }

LABEL_5:
    if (v3++ >= 0x24)
    {
      return result;
    }
  }

  while (1)
  {
    result = (*(a2 + 16))(a2, v5 - 80);
    if ((result & 1) == 0)
    {
      return result;
    }

    v5 = *(v5 + 8);
    if (!v5)
    {
      goto LABEL_5;
    }
  }
}

void _codex_import_initial_done(uint64_t a1)
{
  object = daemon_copy();
  v2 = (a1 + 120);
  v3 = *(a1 + 120);
  if (v3)
  {
    do
    {
      v4 = *(v3 + 48);
      v5 = *(a1 + 56);
      v6 = *__error();
      v7 = *(a1 + 72);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        v8 = "[anonymous]";
        if (v5)
        {
          v8 = v5;
        }

        *buf = 136446210;
        v30 = v8;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "%{public}s: uncorking import", buf, 0xCu);
      }

      *__error() = v6;
      v9 = *v2;
      if (*v2 == v3)
      {
        v13 = *(v9 + 32);
        *v2 = v13;
        v12 = a1 + 120;
        if (v13)
        {
          goto LABEL_10;
        }
      }

      else
      {
        do
        {
          v10 = v9;
          v9 = *(v9 + 32);
        }

        while (v9 != v3);
        v11 = *(v9 + 32);
        *(v10 + 32) = v11;
        v12 = v10 + 32;
        if (v11)
        {
          goto LABEL_10;
        }
      }

      *(a1 + 128) = v12;
LABEL_10:
      *(v3 + 32) = -1;
      dispatch_group_leave(v4);
      v3 = *v2;
    }

    while (*v2);
  }

  v14 = object[37];
  if (v14)
  {
    v15 = object + 37;
    do
    {
      v16 = *v14;
      v17 = codex_copy_quire(a1, v14 + 8, 0);
      if (!v17)
      {
        v18 = *(a1 + 56);
        v19 = *__error();
        v20 = *(a1 + 72);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136446466;
          v21 = "[anonymous]";
          if (v18)
          {
            v21 = v18;
          }

          v30 = v21;
          v31 = 2080;
          v32 = v14 + 8;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEBUG, "%{public}s: lingering forerunner: %s", buf, 0x16u);
        }

        *__error() = v19;
      }

      v22 = *(a1 + 56);
      v23 = *__error();
      v24 = *(a1 + 72);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136446466;
        v25 = "[anonymous]";
        if (v22)
        {
          v25 = v22;
        }

        v30 = v25;
        v31 = 2080;
        v32 = v14 + 8;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEBUG, "%{public}s: removing forerunner: %s", buf, 0x16u);
      }

      *__error() = v23;
      v26 = *v15;
      if (*v15 == v14)
      {
        v27 = (object + 37);
      }

      else
      {
        do
        {
          v27 = v26;
          v26 = *v26;
        }

        while (v26 != v14);
      }

      *v27 = *v26;
      free(v14);
      if (v17)
      {
        os_release(v17);
      }

      v14 = v16;
    }

    while (v16);
  }

  upgrade_lock_resume();
  dispatch_async_f(*(a1 + 96), 0, _codex_unset_initial_keepalive);
  *(a1 + 80) |= 2uLL;
  if (object)
  {
    os_release(object);
  }
}

uint64_t _codex_import_initial_prep(uint64_t a1, void *a2)
{
  v3 = *(a1 + a2[2]);
  v4 = dup_np();
  v5 = fdopendir(v4);
  for (i = readdir(v5); i; i = readdir(v5))
  {
    d_name = i->d_name;
    if (i->d_name[0] != 46 || i->d_name[1] && (i->d_name[1] != 46 || i->d_name[2]))
    {
      v8 = *(a1 + 56);
      v9 = *__error();
      v10 = *(a1 + 72);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136446466;
        v11 = "[anonymous]";
        if (v8)
        {
          v11 = v8;
        }

        v40 = v11;
        v41 = 2080;
        v42 = d_name;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "%{public}s: importing pre-existing cryptex: %s", buf, 0x16u);
      }

      *__error() = v9;
      v12 = openat(v4, d_name, 1048832);
      if (v12 < 0)
      {
        v30 = *__error();
        v31 = *(a1 + 56);
        v32 = *__error();
        v33 = *(a1 + 72);
        if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446722;
          v34 = "[anonymous]";
          if (v31)
          {
            v34 = v31;
          }

          v40 = v34;
          v41 = 2080;
          v42 = d_name;
          v43 = 1024;
          v44 = v30;
          _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_ERROR, "%{public}s: failed to open cryptex: %s: %{darwin.errno}d", buf, 0x1Cu);
        }

        *__error() = v32;
        if (v12 != -1 && close(v12) == -1)
        {
LABEL_41:
          daemon_init_cold_13(&v38, buf);
        }
      }

      else
      {
        v13 = cryptex_core_create();
        v14 = cryptex_core_set_assets_from_directory();
        if (v14)
        {
          v15 = v14;
          v16 = *(a1 + 56);
          v17 = *__error();
          v18 = *(a1 + 72);
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            *buf = 136446722;
            v19 = "[anonymous]";
            if (v16)
            {
              v19 = v16;
            }

            v40 = v19;
            v41 = 2080;
            v42 = d_name;
            v43 = 1024;
            v44 = v15;
            _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "%{public}s: failed to create core from directory: %s: %{darwin.errno}d", buf, 0x1Cu);
          }

          *__error() = v17;
          if (v15 == 2)
          {
            v20 = *(a1 + 56);
            v21 = *__error();
            v22 = *(a1 + 72);
            if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
            {
              *buf = 136446466;
              v23 = "[anonymous]";
              if (v20)
              {
                v23 = v20;
              }

              v40 = v23;
              v41 = 2080;
              v42 = d_name;
              _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "%{public}s: removing broken cryptex: %s", buf, 0x16u);
            }

            *__error() = v21;
            v24 = _rmrfdirat(v4, d_name);
            if (v24)
            {
              v25 = v24;
              v26 = *(a1 + 56);
              v27 = *__error();
              v28 = *(a1 + 72);
              if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
              {
                *buf = 136446722;
                v29 = "[anonymous]";
                if (v26)
                {
                  v29 = v26;
                }

                v40 = v29;
                v41 = 2080;
                v42 = d_name;
                v43 = 1024;
                v44 = v25;
                _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "%{public}s: failed to remove core directory: %s: %{darwin.errno}d", buf, 0x1Cu);
              }

              *__error() = v27;
            }
          }
        }

        else
        {
          *a2;
          cryptex_core_set_nonce_persistence();
          dispatch_group_enter(*(a1 + 104));
          v35 = ctx_new(a1, 0xA0uLL);
          v35[18] = _codex_import_initial_continue;
          _codex_import_core_impl(a1, v13, v35);
        }

        if (close(v12) == -1)
        {
          goto LABEL_41;
        }

        if (v13)
        {
          os_release(v13);
        }
      }
    }
  }

  result = closedir(v5);
  if (result == -1)
  {
    view_iterate_resource_cold_2(&v38, buf);
  }

  return result;
}

void _codex_unset_initial_keepalive()
{
  v0 = daemon_copy();
  v1 = openat(v0[23], "init", 2560, 438);
  if ((v1 & 0x80000000) == 0)
  {
    *__error() = 0;
  }

  v2 = *__error();
  if (v2)
  {
    v3 = v2 == 17;
  }

  else
  {
    v3 = 1;
  }

  if (!v3)
  {
    _codex_unset_initial_keepalive_cold_2(&v5, v6);
  }

  v4 = *(v0 + 41);
  if (v4)
  {
    os_release(v4);
  }

  *(v0 + 41) = 0;
  if (v1 != -1 && close(v1) == -1)
  {
    daemon_init_cold_13(&v5, v6);
  }

  os_release(v0);
}

void _codex_import_initial_continue(uint64_t a1, void *a2, void *a3, const void *a4)
{
  if (a4)
  {
    if (*(a1 + 72))
    {
      os_log_type_enabled(*(a1 + 72), OS_LOG_TYPE_ERROR);
      v7 = *(a1 + 56);
      if (!v7)
      {
        v7 = "[anonymous]";
      }

      *buf = 136446210;
      v19 = v7;
    }

    else
    {
      v14 = *(a1 + 56);
      if (!v14)
      {
        v14 = "[anonymous]";
      }

      *buf = 136446210;
      v19 = v14;
    }

    v15 = _os_log_send_and_compose_impl();
    Error = createError("_codex_import_initial_continue", "codex.c", 1900, "com.apple.security.cryptex", 15, a4, v15);
    free(v15);
    v17 = ctx_new(a1, 0x28uLL);
    v17[4] = os_retain(a2);
    dispatch_async_f(*(a1 + 96), v17, _codex_cleanup_stale_continue);
    if (Error)
    {
      CFRelease(Error);
    }
  }

  else
  {
    v9 = *(a1 + 56);
    v10 = *__error();
    v11 = *(a1 + 72);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v12 = "[anonymous]";
      v13 = a3[26];
      if (v9)
      {
        v12 = v9;
      }

      *buf = 136446466;
      v19 = v12;
      v20 = 2080;
      v21 = v13;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "%{public}s: imported: %s [no error]", buf, 0x16u);
    }

    *__error() = v10;
    codex_bootstrap(a1, a3, 0, _codex_import_initial_continue2);
  }
}

void _codex_import_core_impl(uint64_t a1, void *a2, void *a3)
{
  v6 = daemon_copy();
  daemon_assert_main_queue();
  v7 = dispatch_group_create();
  dispatch_set_context(v7, a3);
  a3[5] = os_retain(a2);
  a3[6] = v7;
  v8 = a2[21];
  asset = cryptex_core_get_asset();
  if (os_variant_allows_internal_security_policies() && v8 && (*(v8 + 40) & 4) != 0 || asset && ((memset(&v33, 0, sizeof(v33)), !fstat(*(asset + 16), &v33)) ? (v10 = v33.st_size == 0) : (v10 = 0), v10 && os_variant_allows_internal_security_policies()))
  {
    a2[5] |= 1uLL;
  }

  dispatch_group_enter(v7);
  if (os_variant_allows_internal_security_policies())
  {
    v11 = v6[176] ^ 1;
  }

  v12 = cryptex_magister_create();
  cryptex_set_target_object();
  image_asset = cryptex_core_get_image_asset();
  if (cryptex_asset_evaluate())
  {
    memset(&v33, 0, 80);
    os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    v32 = *(*(image_asset + 8) + 40);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  info_asset = cryptex_core_get_info_asset();
  v15 = info_asset;
  if ((*(v12[11] + 40) & 1) == 0)
  {
    if (cryptex_core_image_authapfs_enabled())
    {
      v16 = *(a1 + 56);
      v17 = *__error();
      v18 = *(a1 + 72);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        v19 = "[anonymous]";
        if (v16)
        {
          v19 = v16;
        }

        v33.st_dev = 136446210;
        *&v33.st_mode = v19;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEBUG, "%{public}s: AuthAPFS enabled, skip up-front dmg authentication.", &v33, 0xCu);
      }

      *__error() = v17;
      if (v15)
      {
        goto LABEL_22;
      }

      goto LABEL_27;
    }

LABEL_26:
    dispatch_group_enter(v7);
    v21 = *(v12[11] + 176);
    cryptex_magister_authenticate_f();
    if (v15)
    {
LABEL_22:
      dispatch_group_enter(v7);
      v20 = *(v15 + 8);
      cryptex_magister_authenticate_f();
LABEL_32:
      dispatch_group_enter(v7);
      cryptex_magister_record_property();
      goto LABEL_33;
    }

LABEL_27:
    v22 = *(a1 + 56);
    v23 = *__error();
    v24 = *(a1 + 72);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
    {
      v25 = "[anonymous]";
      v26 = _cryptex_asset_type_c411[5];
      if (v22)
      {
        v25 = v22;
      }

      v33.st_dev = 136446466;
      *&v33.st_mode = v25;
      WORD2(v33.st_ino) = 2080;
      *(&v33.st_ino + 6) = v26;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEBUG, "%{public}s: will use adhoc %s, skip authenticating it", &v33, 0x16u);
    }

    *__error() = v23;
    goto LABEL_32;
  }

  if (info_asset && _read_file(*(info_asset + 16), a3 + 10))
  {
    memset(&v33, 0, 80);
    v6 = &_os_log_default;
    os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    v31 = *(*(v15 + 8) + 40);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_26;
  }

LABEL_33:
  if ((*(a1 + 80) & 2) == 0 && a3[19])
  {
    v27 = *(a1 + 56);
    v28 = *__error();
    v29 = *(a1 + 72);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
    {
      v30 = "[anonymous]";
      if (v27)
      {
        v30 = v27;
      }

      v33.st_dev = 136446210;
      *&v33.st_mode = v30;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEBUG, "%{public}s: corking import", &v33, 0xCu);
    }

    *__error() = v28;
    a3[4] = 0;
    **(a1 + 128) = a3;
    *(a1 + 128) = a3 + 4;
    dispatch_group_enter(v7);
  }

  a3[17] = _codex_activate(a1, "import");
  dispatch_group_notify_f(v7, *(a1 + 32), a3, _codex_import_core_continue);
  dispatch_group_leave(v7);
  cryptex_activate();
  if (v7)
  {
    os_release(v7);
  }

  os_release(v12);
  if (v6)
  {
    os_release(v6);
  }
}

void _codex_authenticate_dmg_notify(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4, void *a5)
{
  v8 = *a5;
  v9 = a5[6];
  if (*(*a5 + 56))
  {
    v10 = *(*a5 + 56);
  }

  else
  {
    v10 = "[anonymous]";
  }

  v11 = *__error();
  v12 = *(v8 + 72);
  if (a4)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v14 = *(a2 + 40);
      v13 = *(a2 + 48);
      v19 = 136446978;
      v20 = v10;
      v21 = 2080;
      v22 = v13;
      v23 = 2080;
      v24 = v14;
      v25 = 2112;
      v26 = a4;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%{public}s: %s (%s) authentication: %@", &v19, 0x2Au);
    }

    *__error() = v11;
    v15 = CFRetain(a4);
  }

  else
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v17 = *(a2 + 40);
      v16 = *(a2 + 48);
      v19 = 136446722;
      v20 = v10;
      v21 = 2080;
      v22 = v16;
      v23 = 2080;
      v24 = v17;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "%{public}s: %s (%s) authentication [no error]", &v19, 0x20u);
    }

    v18 = __error();
    v15 = 0;
    *v18 = v11;
  }

  a5[8] = v15;
  dispatch_group_leave(v9);
}

void _codex_authenticate_info_notify(uint64_t a1, uint64_t a2, __n128 *a3, const void *a4, __n128 *a5)
{
  v9 = a5->n128_u64[0];
  v10 = a5[3].n128_u64[0];
  if (*(a5->n128_u64[0] + 56))
  {
    v11 = *(a5->n128_u64[0] + 56);
  }

  else
  {
    v11 = "[anonymous]";
  }

  v12 = *__error();
  v13 = *(v9 + 72);
  if (a4)
  {
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = *(a2 + 40);
      v16 = 136446722;
      v17 = v11;
      v18 = 2080;
      v19 = v14;
      v20 = 2112;
      v21 = a4;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%{public}s: %s authentication: %@", &v16, 0x20u);
    }

    *__error() = v12;
    a5[4].n128_u64[1] = CFRetain(a4);
  }

  else
  {
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      v15 = *(a2 + 40);
      v16 = 136446466;
      v17 = v11;
      v18 = 2080;
      v19 = v15;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "%{public}s: %s authentication [no error]", &v16, 0x16u);
    }

    *__error() = v12;
    a5[4].n128_u64[1] = 0;
    buff_xfer(a5 + 5, a3);
  }

  dispatch_group_leave(v10);
}

void _codex_manifest_check_data_only(uint64_t a1, uint64_t *a2, const void *a3, void *a4)
{
  v6 = a4[6];
  if (!a2)
  {
    v10 = *(a4[5] + 16);
    v11 = *__error();
    v12 = *(a4[5] + 32);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = "[anonymous]";
      if (v10)
      {
        v13 = v10;
      }

      *buf = 136446210;
      v15 = v13;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "%{public}s: im4m missing DataOnly property", buf, 0xCu);
    }

    *__error() = v11;
    if (a3)
    {
      goto LABEL_3;
    }

LABEL_9:
    v9 = 0;
    goto LABEL_10;
  }

  v8 = *a2;
  v7 = a2[1];
  __memcpy_chk();
  if (!a3)
  {
    goto LABEL_9;
  }

LABEL_3:
  v9 = CFRetain(a3);
LABEL_10:
  a4[7] = v9;
  dispatch_group_leave(v6);
}

void _codex_import_core_continue(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 40);
  v5 = *(a1 + 56);
  v4 = *(a1 + 64);
  v6 = *(a1 + 72);
  v130 = 0;
  memset(v129, 0, sizeof(v129));
  v128 = 0;
  v127 = 0u;
  v125 = 0u;
  v126 = 0u;
  v123 = 0u;
  v124 = 0u;
  v121 = 0u;
  v122 = 0u;
  v119 = 0u;
  *xdict = 0u;
  context = *(a1 + 152);
  v118 = 0;
  v117 = 0;
  daemon_assert_main_queue();
  buff_xfer(v129, (a1 + 80));
  v115 = v6;
  if (v4)
  {
    if (*(v2 + 9))
    {
      os_log_type_enabled(*(v2 + 9), OS_LOG_TYPE_ERROR);
      v7 = *(v2 + 7);
      v8 = *(v3[22] + 40);
      if (!v7)
      {
        v7 = "[anonymous]";
      }

      buf = 136446466;
      v134 = v7;
      v135 = 2080;
      v136 = v8;
    }

    else
    {
      v10 = "[anonymous]";
      if (*(v2 + 7))
      {
        v10 = *(v2 + 7);
      }

      v11 = *(v3[22] + 40);
      buf = 136446466;
      v134 = v10;
      v135 = 2080;
      v136 = v11;
    }

    v12 = _os_log_send_and_compose_impl();
    v13 = "com.apple.security.cryptex";
    v14 = 641;
    v15 = 14;
    v16 = v4;
LABEL_25:
    Error = createError("_codex_import_core_continue", "codex.c", v14, v13, v15, v16, v12);
    free(v12);
    v23 = 0;
    v24 = 0;
    v113 = 0;
LABEL_26:
    v25 = 0;
    goto LABEL_27;
  }

  if (v5)
  {
    if (*(v2 + 9))
    {
      os_log_type_enabled(*(v2 + 9), OS_LOG_TYPE_ERROR);
      v9 = *(v2 + 7);
      if (!v9)
      {
        v9 = "[anonymous]";
      }

      buf = 136446210;
      v134 = v9;
    }

    else
    {
      v21 = *(v2 + 7);
      if (!v21)
      {
        v21 = "[anonymous]";
      }

      buf = 136446210;
      v134 = v21;
    }

    v12 = _os_log_send_and_compose_impl();
    v13 = "com.apple.security.cryptex";
    v14 = 650;
    v15 = 14;
    v16 = v5;
    goto LABEL_25;
  }

  info_asset = cryptex_core_get_info_asset();
  if (!info_asset)
  {
    v29 = *(v2 + 7);
    v30 = *__error();
    v31 = *(v2 + 9);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
    {
      v32 = "[anonymous]";
      if (v29)
      {
        v32 = v29;
      }

      buf = 136446210;
      v134 = v32;
      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEBUG, "%{public}s: no Info.plist found in core, generating adhoc one", &buf, 0xCu);
    }

    *__error() = v30;
    identifier = cryptex_core_generate_identifier();
    version = cryptex_core_generate_version();
    v111 = identifier;
    v35 = xpc_string_create(identifier);
    v114 = version;
    v36 = xpc_string_create(version);
    keys = *off_100072CF8;
    values[0] = v35;
    values[1] = v36;
    v37 = xpc_dictionary_create(&keys, values, 2uLL);
    if (os_log_type_enabled(*(v2 + 9), OS_LOG_TYPE_DEBUG))
    {
      v109 = v37;
      v107 = xpc_copy_description(v37);
      v38 = *(v2 + 7);
      log = *__error();
      v39 = *(v2 + 9);
      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
      {
        v40 = "[anonymous]";
        if (v38)
        {
          v40 = v38;
        }

        buf = 136446466;
        v134 = v40;
        v135 = 2080;
        v136 = v107;
        _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEBUG, "%{public}s: generated Info.plist: %s", &buf, 0x16u);
      }

      *__error() = log;
      free(v107);
      v37 = v109;
    }

    if (v36)
    {
      os_release(v36);
    }

    v5 = 0;
    if (v35)
    {
      os_release(v35);
    }

    free(v114);
    v41 = 0;
    goto LABEL_67;
  }

  if (v6)
  {
    v18 = info_asset;
    if (*(v2 + 9))
    {
      os_log_type_enabled(*(v2 + 9), OS_LOG_TYPE_ERROR);
      v19 = *(v2 + 7);
      v20 = *(*(v18 + 8) + 40);
      if (!v19)
      {
        v19 = "[anonymous]";
      }

      buf = 136446466;
      v134 = v19;
      v135 = 2080;
      v136 = v20;
    }

    else
    {
      v54 = "[anonymous]";
      if (*(v2 + 7))
      {
        v54 = *(v2 + 7);
      }

      v55 = *(*(info_asset + 8) + 40);
      buf = 136446466;
      v134 = v54;
      v135 = 2080;
      v136 = v55;
    }

    v56 = _os_log_send_and_compose_impl();
    Error = createError("_codex_import_core_continue", "codex.c", 661, "com.apple.security.cryptex", 14, v6, v56);
    free(v56);
    v23 = 0;
    v24 = 0;
    v113 = 0;
    v25 = 0;
    v5 = 0;
    goto LABEL_27;
  }

  v48 = xpc_create_from_plist();
  if (!v48)
  {
    v5 = 0;
    if (*(v2 + 9))
    {
      os_log_type_enabled(*(v2 + 9), OS_LOG_TYPE_ERROR);
      v57 = *(v2 + 7);
      if (!v57)
      {
        v57 = "[anonymous]";
      }
    }

    else
    {
      v57 = *(v2 + 7);
      if (!v57)
      {
        v57 = "[anonymous]";
      }
    }

    buf = 136446466;
    v134 = v57;
    v135 = 1024;
    LODWORD(v136) = 212;
    v12 = _os_log_send_and_compose_impl();
    v13 = "com.apple.security.cryptex.posix";
    v14 = 669;
    v15 = 212;
    v16 = 0;
    goto LABEL_25;
  }

  v41 = v48;
  v5 = 0;
  if (xpc_get_type(v48) != &_xpc_type_dictionary)
  {
    v49 = xpc_copy_description(v41);
    v50 = v49;
    v51 = *(v2 + 9);
    v113 = v41;
    if (v51)
    {
      os_log_type_enabled(v51, OS_LOG_TYPE_ERROR);
      v52 = *(v2 + 7);
      buf = 136446722;
      if (v52)
      {
        v53 = v52;
      }

      else
      {
        v53 = "[anonymous]";
      }

      v134 = v53;
      v135 = 2080;
      v136 = v50;
      v137 = 1024;
      LODWORD(v138) = 212;
    }

    else
    {
      v62 = "[anonymous]";
      if (*(v2 + 7))
      {
        v62 = *(v2 + 7);
      }

      buf = 136446722;
      v134 = v62;
      v135 = 2080;
      v136 = v49;
      v137 = 1024;
      LODWORD(v138) = 212;
    }

    v63 = _os_log_send_and_compose_impl();
    v64 = 679;
    v65 = 212;
    goto LABEL_136;
  }

  if (os_log_type_enabled(*(v2 + 9), OS_LOG_TYPE_DEBUG))
  {
    v111 = xpc_copy_description(v41);
    v58 = *(v2 + 7);
    v59 = *__error();
    v60 = *(v2 + 9);
    if (os_log_type_enabled(v60, OS_LOG_TYPE_DEBUG))
    {
      v61 = "[anonymous]";
      if (v58)
      {
        v61 = v58;
      }

      buf = 136446466;
      v134 = v61;
      v135 = 2080;
      v136 = v111;
      _os_log_impl(&_mh_execute_header, v60, OS_LOG_TYPE_DEBUG, "%{public}s: importing Info.plist: %s", &buf, 0x16u);
    }

    *__error() = v59;
    v37 = v41;
    v5 = 0;
LABEL_67:
    free(v111);
    goto LABEL_68;
  }

  v37 = v41;
LABEL_68:
  v113 = v41;
  if (!context)
  {
    v42 = daemon_copy();
    v43 = v42;
    v44 = v42[37];
    if (!v44)
    {
      goto LABEL_115;
    }

    v110 = v37;
    v112 = v42;
    v45 = v42 + 37;
    while (1)
    {
      v46 = *v44;
      v47 = v3[20];
      *&keys = 0;
      cryptex_core_parse_info_asset();
      if (!memcmp((v47 + 112), v44 + 3335, 0x30uLL) && _streq_optional(keys, v44 + 8))
      {
        break;
      }

      free(keys);
      v44 = v46;
      if (!v46)
      {
        v43 = v112;
        goto LABEL_114;
      }
    }

    v66 = *(v2 + 7);
    v108 = *__error();
    loga = *(v2 + 9);
    if (os_log_type_enabled(loga, OS_LOG_TYPE_DEBUG))
    {
      v67 = "[anonymous]";
      buf = 136446722;
      if (v66)
      {
        v67 = v66;
      }

      v134 = v67;
      v135 = 2080;
      v136 = v44 + 8;
      v137 = 2080;
      v138 = v44 + 3383;
      _os_log_impl(&_mh_execute_header, loga, OS_LOG_TYPE_DEBUG, "%{public}s: found forerunner; will carry on the legacy: name = %s, hash = %s", &buf, 0x20u);
    }

    *__error() = v108;
    v68 = *v45;
    if (*v45 == v44)
    {
      v43 = v112;
    }

    else
    {
      v43 = v112;
      do
      {
        v45 = v68;
        v68 = *v68;
      }

      while (v68 != v44);
    }

    *v45 = *v68;
    *v44 = -1;
    free(keys);
LABEL_114:
    v37 = v110;
    if (v43)
    {
LABEL_115:
      os_release(v43);
    }

    v118 = v44;
    v5 = 0;
  }

  v69 = v3[27];
  if (v69)
  {
    LOBYTE(v69) = *(v69 + 64);
  }

  attr = quire_make_attr(v37, &v118, &v119, v69 & 1);
  if (attr)
  {
    v71 = attr;
    v72 = xpc_copy_description(v37);
    v50 = v72;
    v73 = v71;
    if (*(v2 + 9))
    {
      os_log_type_enabled(*(v2 + 9), OS_LOG_TYPE_ERROR);
      v74 = *(v2 + 7);
      buf = 136446722;
      if (!v74)
      {
        v74 = "[anonymous]";
      }

      v134 = v74;
      v135 = 2080;
      v136 = v50;
      v137 = 1024;
      LODWORD(v138) = v71;
    }

    else
    {
      v77 = *(v2 + 7);
      if (!v77)
      {
        v77 = "[anonymous]";
      }

      buf = 136446722;
      v134 = v77;
      v135 = 2080;
      v136 = v72;
      v137 = 1024;
      LODWORD(v138) = v71;
    }

    v63 = _os_log_send_and_compose_impl();
    v64 = 713;
LABEL_135:
    v65 = v73;
LABEL_136:
    Error = createError("_codex_import_core_continue", "codex.c", v64, "com.apple.security.cryptex.posix", v65, 0, v63);
    free(v63);
LABEL_137:
    v78 = v50;
LABEL_138:
    free(v78);
    v23 = 0;
LABEL_149:
    v24 = 0;
    goto LABEL_26;
  }

  v75 = codex_copy_quire(v2, v119, 0);
  if (v75)
  {
    v23 = v75;
    if (context)
    {
      context[5] = os_retain(v75);
    }

    if (*(v2 + 9))
    {
      os_log_type_enabled(*(v2 + 9), OS_LOG_TYPE_ERROR);
      v76 = *(v2 + 7);
      if (!v76)
      {
        v76 = "[anonymous]";
      }
    }

    else
    {
      v76 = *(v2 + 7);
      if (!v76)
      {
        v76 = "[anonymous]";
      }
    }

    buf = 136446466;
    v134 = v76;
    v135 = 2080;
    v136 = v119;
    v83 = _os_log_send_and_compose_impl();
    Error = createError("_codex_import_core_continue", "codex.c", 725, "com.apple.security.cryptex", 17, 0, v83);
    free(v83);
    goto LABEL_149;
  }

  if (xpc_dictionary_get_array(xdict[1], "Dependencies"))
  {
    if (!context)
    {
      if (*(v2 + 9))
      {
        os_log_type_enabled(*(v2 + 9), OS_LOG_TYPE_ERROR);
        v92 = *(v2 + 7);
        if (!v92)
        {
          v92 = "[anonymous]";
        }
      }

      else
      {
        v92 = *(v2 + 7);
        if (!v92)
        {
          v92 = "[anonymous]";
        }
      }

      buf = 136446466;
      v134 = v92;
      v135 = 1024;
      LODWORD(v136) = 45;
      v50 = _os_log_send_and_compose_impl();
      v94 = "com.apple.security.cryptex.posix";
      v95 = 737;
      v96 = 45;
      goto LABEL_173;
    }

    v79 = quire_attr_populate_dependencies(&v119, *(context + 18));
    if (v79)
    {
      v80 = v79;
      v81 = xpc_copy_description(v37);
      v50 = v81;
      v73 = v80;
      if (*(v2 + 9))
      {
        os_log_type_enabled(*(v2 + 9), OS_LOG_TYPE_ERROR);
        v82 = *(v2 + 7);
        buf = 136446722;
        if (!v82)
        {
          v82 = "[anonymous]";
        }

        v134 = v82;
        v135 = 2080;
        v136 = v50;
        v137 = 1024;
        LODWORD(v138) = v80;
      }

      else
      {
        v93 = *(v2 + 7);
        if (!v93)
        {
          v93 = "[anonymous]";
        }

        buf = 136446722;
        v134 = v93;
        v135 = 2080;
        v136 = v81;
        v137 = 1024;
        LODWORD(v138) = v80;
      }

      v63 = _os_log_send_and_compose_impl();
      v64 = 749;
      goto LABEL_135;
    }
  }

  if (xpc_dictionary_get_array(xdict[1], "LimitInstallToApps"))
  {
    v84 = quire_attr_enforce_install_limits(&v119);
    if (v84)
    {
      v25 = v84;
      v85 = xpc_copy_description(v37);
      v86 = v85;
      if (*(v2 + 9))
      {
        os_log_type_enabled(*(v2 + 9), OS_LOG_TYPE_ERROR);
        v87 = *(v2 + 7);
        buf = 136446722;
        if (!v87)
        {
          v87 = "[anonymous]";
        }

        v134 = v87;
        v135 = 2082;
        v136 = v119;
        v137 = 2080;
        v138 = v86;
      }

      else
      {
        v97 = *(v2 + 7);
        if (!v97)
        {
          v97 = "[anonymous]";
        }

        buf = 136446722;
        v134 = v97;
        v135 = 2082;
        v136 = v119;
        v137 = 2080;
        v138 = v85;
      }

      v98 = _os_log_send_and_compose_impl();
      Error = createError("_codex_import_core_continue", "codex.c", 764, "com.apple.security.cryptex", 15, 0, v98);
      free(v98);
      free(v86);
      v23 = 0;
      v24 = 0;
      goto LABEL_27;
    }
  }

  if (v128 == 1)
  {
    v88 = developer_mode_get(&v117);
    if (v88)
    {
      v89 = v88;
      v90 = v88;
      if (*(v2 + 9))
      {
        os_log_type_enabled(*(v2 + 9), OS_LOG_TYPE_ERROR);
        v91 = *(v2 + 7);
        if (!v91)
        {
          v91 = "[anonymous]";
        }

        buf = 136446466;
        v134 = v91;
        v135 = 1024;
        LODWORD(v136) = v89;
      }

      else
      {
        v100 = *(v2 + 7);
        if (!v100)
        {
          v100 = "[anonymous]";
        }

        buf = 136446466;
        v134 = v100;
        v135 = 1024;
        LODWORD(v136) = v88;
      }

      v101 = _os_log_send_and_compose_impl();
      Error = createError("_codex_import_core_continue", "codex.c", 774, "com.apple.security.cryptex.posix", v90, 0, v101);
      v78 = v101;
      goto LABEL_138;
    }

    if (!v117)
    {
      if (*(v2 + 9))
      {
        os_log_type_enabled(*(v2 + 9), OS_LOG_TYPE_ERROR);
        v102 = *(v2 + 7);
        if (!v102)
        {
          v102 = "[anonymous]";
        }
      }

      else
      {
        v102 = *(v2 + 7);
        if (!v102)
        {
          v102 = "[anonymous]";
        }
      }

      buf = 136446466;
      v134 = v102;
      v135 = 2082;
      v136 = v119;
      v50 = _os_log_send_and_compose_impl();
      v94 = "com.apple.security.cryptex";
      v95 = 780;
      v96 = 20;
      goto LABEL_173;
    }
  }

  v99 = xpc_dictionary_get_BOOL(xdict[1], "NoCode");
  if (cryptex_core_is_cryptex1() && (v3[5] & 1) == 0 && ((v99 ^ ((v3[5] & 4) == 0)) & 1) == 0)
  {
    if (*(v2 + 9))
    {
      os_log_type_enabled(*(v2 + 9), OS_LOG_TYPE_ERROR);
      v103 = *(v2 + 7);
      if (!v103)
      {
        v103 = "[anonymous]";
      }

      buf = 136446210;
      v134 = v103;
    }

    else
    {
      v104 = *(v2 + 7);
      if (!v104)
      {
        v104 = "[anonymous]";
      }

      buf = 136446210;
      v134 = v104;
    }

    v50 = _os_log_send_and_compose_impl();
    v94 = "com.apple.security.cryptex";
    v95 = 802;
    v96 = 11;
LABEL_173:
    Error = createError("_codex_import_core_continue", "codex.c", v95, v94, v96, 0, v50);
    goto LABEL_137;
  }

  if (v99 || (v3[5] & 4) != 0)
  {
    quire_attr_disallow_code(&v119);
  }

  v24 = quire_create(v2, v3, &v119, 4);
  cryptex_set_target_object();
  cryptex_activate();
  _codex_insert_installed(v2, v24);
  if (!context)
  {
    v23 = 0;
    Error = 0;
    goto LABEL_26;
  }

  v23 = 0;
  Error = 0;
  v25 = 0;
  context[5] = os_retain(v24);
LABEL_27:
  buff_destroy(v129);
  quire_destroy_attr(&v119);
  v26 = *(a1 + 40);
  v28 = *(a1 + 136);
  v27 = *(a1 + 144);
  if (v27)
  {
    v27(v2, *(a1 + 40), v24, Error);
  }

  _codex_deactivate(v2, v28);
  ctx_destroy(a1);
  if (v26)
  {
    os_release(v26);
  }

  if (context)
  {
    if (Error)
    {
      context[2] = CFRetain(Error);
      cryptex_target_async_f();
    }

    else
    {
      dispatch_async_f(*(v2 + 12), context, _codex_install_continue4);
    }
  }

  free(v118);
  if (v23)
  {
    os_release(v23);
  }

  if (v24)
  {
    os_release(v24);
  }

  if (v113)
  {
    os_release(v113);
  }

  if (Error)
  {
    CFRelease(Error);
  }

  if (v25)
  {
    CFRelease(v25);
  }

  if (v115)
  {
    CFRelease(v115);
  }

  if (v5)
  {
    CFRelease(v5);
  }

  if (v4)
  {
    CFRelease(v4);
  }
}

uint64_t _codex_insert_installed(uint64_t a1, void *a2)
{
  if (a2[26])
  {
    v4 = a2[26];
  }

  else
  {
    v4 = "unknown quire";
  }

  v5 = *(a1 + 56);
  v6 = *__error();
  v7 = *(a1 + 72);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = "[anonymous]";
    v9 = a2[26];
    if (v5)
    {
      v8 = v5;
    }

    *buf = 136446466;
    v17 = v8;
    v18 = 2080;
    v19 = v9;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "%{public}s: added cryptex: %s", buf, 0x16u);
  }

  *__error() = v6;
  hash_insert(a1 + 144, (a2 + 10));
  os_retain(a2);
  v10 = malloc_type_calloc(1uLL, 0x30uLL, 0x8709206FuLL);
  if (!v10)
  {
    _codex_insert_installed_cold_2(&v15, buf);
  }

  v11 = v10;
  if (_dispatch_is_multithreaded())
  {
    while (1)
    {
      v12 = strdup(v4);
      if (v12)
      {
        break;
      }

      __os_temporary_resource_shortage();
    }
  }

  else
  {
    v12 = strdup(v4);
    if (!v12)
    {
      _codex_insert_installed_cold_1(v4, &v15, buf);
    }
  }

  v13 = v12;
  *(v11 + 32) = v12;
  *(v11 + 40) = os_transaction_create();
  hash_node_init_cstr(v11, v13);
  return hash_insert(a1 + 1056, v11);
}

uint64_t _codex_install_continue4(void *a1)
{
  v2 = *a1;
  v3 = a1[5];
  v4 = *(a1[4] + 112);
  v5 = *(v3 + 208);
  dispatch_assert_queue_V2(*(*a1 + 96));
  v6 = *(v2 + 56);
  v7 = *__error();
  v8 = *(v2 + 72);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v9 = "[anonymous]";
    *buf = 136446722;
    if (v6)
    {
      v9 = v6;
    }

    v23 = v9;
    v24 = 2080;
    v25 = v4;
    v26 = 2080;
    v27 = v5;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "%{public}s: renaming: src = %s, dst = %s", buf, 0x20u);
  }

  *__error() = v7;
  v10 = 1420;
  if (*(*(v3 + 200) + 48) > 1uLL)
  {
    v10 = 1404;
  }

  if (renameat(*(v2 + 1400), v4, *(v2 + v10), v5))
  {
    v11 = *__error();
    v12 = v11;
    if (*(v2 + 72))
    {
      os_log_type_enabled(*(v2 + 72), OS_LOG_TYPE_ERROR);
      v13 = *(v2 + 56);
      if (!v13)
      {
        v13 = "[anonymous]";
      }
    }

    else
    {
      v13 = *(v2 + 56);
      if (!v13)
      {
        v13 = "[anonymous]";
      }
    }

    *buf = 136446466;
    v23 = v13;
    v24 = 1024;
    LODWORD(v25) = v11;
    v17 = _os_log_send_and_compose_impl();
    v18 = 1152;
LABEL_25:
    Error = createError("_codex_install_continue4", "codex.c", v18, "com.apple.security.cryptex.posix", v12, 0, v17);
    free(v17);
    goto LABEL_26;
  }

  v14 = _codex_broadcast_event(v3, 2);
  if (v14)
  {
    v15 = v14;
    v12 = v14;
    if (*(v2 + 72))
    {
      os_log_type_enabled(*(v2 + 72), OS_LOG_TYPE_ERROR);
      v16 = *(v2 + 56);
      if (!v16)
      {
        v16 = "[anonymous]";
      }

      *buf = 136446466;
      v23 = v16;
      v24 = 1024;
      LODWORD(v25) = v15;
    }

    else
    {
      v20 = *(v2 + 56);
      if (!v20)
      {
        v20 = "[anonymous]";
      }

      *buf = 136446466;
      v23 = v20;
      v24 = 1024;
      LODWORD(v25) = v14;
    }

    v17 = _os_log_send_and_compose_impl();
    v18 = 1159;
    goto LABEL_25;
  }

  Error = 0;
LABEL_26:
  a1[2] = Error;
  return cryptex_async_f();
}

void _codex_deactivate(uint64_t a1, void *a2)
{
  daemon_assert_main_queue();
  --*(a1 + 1368);
  v4 = os_transaction_copy_description();
  v5 = *(a1 + 56);
  v6 = *__error();
  v7 = *(a1 + 72);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = "[anonymous]";
    v9 = *(a1 + 1368);
    if (v5)
    {
      v8 = v5;
    }

    *buf = 136446978;
    v29 = v8;
    v30 = 2080;
    v31 = v4;
    v32 = 1024;
    v33 = v9 + 1;
    v34 = 1024;
    v35 = v9;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "%{public}s: de-activation: %s: %u -> %u", buf, 0x22u);
  }

  *__error() = v6;
  os_release(a2);
  v10 = *(a1 + 1368);
  v27 = v4;
  if (v10)
  {
    if (v10 == -1)
    {
      _codex_activate_cold_1();
    }

    goto LABEL_26;
  }

  v11 = *(a1 + 56);
  v12 = *__error();
  v13 = *(a1 + 72);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    v14 = "[anonymous]";
    if (v11)
    {
      v14 = v11;
    }

    *buf = 136446210;
    v29 = v14;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "%{public}s: quiesced", buf, 0xCu);
  }

  *__error() = v12;
  v15 = *(a1 + 1376);
  if (v15)
  {
    v16 = (a1 + 1376);
    do
    {
      v17 = *(v15 + 48);
      v18 = *(a1 + 56);
      v19 = *__error();
      v20 = *(a1 + 72);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
        v21 = "[anonymous]";
        if (v18)
        {
          v21 = v18;
        }

        *buf = 136446210;
        v29 = v21;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEBUG, "%{public}s: dispatching barrier", buf, 0xCu);
      }

      *__error() = v19;
      (*(v15 + 56))(a1, v17);
      v22 = *(a1 + 1376);
      if (v22 == v15)
      {
        v26 = *(v22 + 32);
        *v16 = v26;
        v25 = a1 + 1376;
        if (v26)
        {
          goto LABEL_22;
        }
      }

      else
      {
        do
        {
          v23 = v22;
          v22 = *(v22 + 32);
        }

        while (v22 != v15);
        v24 = *(v22 + 32);
        *(v23 + 32) = v24;
        v25 = v23 + 32;
        if (v24)
        {
          goto LABEL_22;
        }
      }

      *(a1 + 1384) = v25;
LABEL_22:
      *(v15 + 32) = -1;
      ctx_destroy(v15);
      v15 = *v16;
    }

    while (*v16);
  }

LABEL_26:
  free(v27);
}

uint64_t _codex_broadcast_event(uint64_t a1, uint64_t a2)
{
  v4 = event_server_copy_system();
  MutableForCFTypes = _CFDictionaryCreateMutableForCFTypes();
  v6 = MutableForCFTypes;
  v7 = *(a1 + 224);
  if (v7)
  {
    _CFDictionarySetString(MutableForCFTypes, @"Version", *v7);
  }

  v8 = *(a1 + 208);
  if (v8)
  {
    _CFDictionarySetString(v6, @"Identifier", v8);
  }

  else
  {
    v8 = "name-unknown";
  }

  v9 = event_server_broadcast(v4, a2, v8, v6);
  if (v6)
  {
    CFRelease(v6);
  }

  if (v4)
  {
    os_release(v4);
  }

  return v9;
}

uint64_t _codex_install_continue5(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[5];
  v3 = a1[2];
  daemon_assert_main_queue();
  if (v3)
  {
    v4 = *(v1 + 56);
    v5 = *__error();
    v6 = *(v1 + 72);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = "[anonymous]";
      if (v4)
      {
        v7 = v4;
      }

      v9 = 136446466;
      v10 = v7;
      v11 = 2112;
      v12 = v3;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%{public}s: installation failed; cleaning up quire: %@", &v9, 0x16u);
    }

    *__error() = v5;
    _codex_remove_installed(v1, v2);
  }

  return cryptex_target_async_f();
}

void _codex_remove_installed(uint64_t a1, void *a2)
{
  v4 = a2[26];
  if (v4)
  {
    v5 = hash_lookup_cstr(a1 + 1056, v4);
    if (v5)
    {
      v6 = v5;
      hash_remove(a1 + 1056, v5);
      free(v6[4]);
      v6[4] = 0;
      os_release(v6[5]);
      free(v6);
    }
  }

  v7 = *(a1 + 56);
  v8 = *__error();
  v9 = *(a1 + 72);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v10 = "[anonymous]";
    v11 = a2[26];
    if (v7)
    {
      v10 = v7;
    }

    v12 = 136446466;
    v13 = v10;
    v14 = 2080;
    v15 = v11;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "%{public}s: removed cryptex: %s", &v12, 0x16u);
  }

  *__error() = v8;
  hash_remove(a1 + 144, (a2 + 10));
  os_release(a2);
}

void _codex_import_initial_continue2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  daemon_assert_main_queue();
  if (*(a1 + 56))
  {
    v6 = *(a1 + 56);
  }

  else
  {
    v6 = "[anonymous]";
  }

  v7 = *__error();
  v8 = *(a1 + 72);
  if (a3)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = *(a2 + 208);
      v15 = 136446722;
      v16 = v6;
      v17 = 2080;
      v18 = v9;
      v19 = 2112;
      v20 = a3;
      v10 = "%{public}s: initial cryptex bootstrap: %s: %@";
      v11 = v8;
      v12 = OS_LOG_TYPE_ERROR;
      v13 = 32;
LABEL_9:
      _os_log_impl(&_mh_execute_header, v11, v12, v10, &v15, v13);
    }
  }

  else if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v14 = *(a2 + 208);
    v15 = 136446466;
    v16 = v6;
    v17 = 2080;
    v18 = v14;
    v10 = "%{public}s: initial cryptex bootstrap: %s [no error]";
    v11 = v8;
    v12 = OS_LOG_TYPE_DEBUG;
    v13 = 22;
    goto LABEL_9;
  }

  *__error() = v7;
  dispatch_group_leave(*(a1 + 104));
}

void _codex_cleanup_stale_continue(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[4];
  bzero(v33, 0x400uLL);
  asset = cryptex_core_get_asset();
  if (!asset)
  {
    _codex_cleanup_stale_continue_cold_1();
  }

  v4 = *(asset + 16);
  v5 = realpath_np();
  if (v5)
  {
    v6 = v5;
    v7 = *(v1 + 56);
    v8 = *__error();
    v9 = *(v1 + 72);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      if (v7)
      {
        v10 = v7;
      }

      else
      {
        v10 = "[anonymous]";
      }

      v27 = 136446466;
      v28 = v10;
      v29 = 1024;
      LODWORD(v30) = v6;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%{public}s: realpath: %{darwin.errno}d", &v27, 0x12u);
    }

    *__error() = v8;
    v11 = "[anonymous]";
    goto LABEL_9;
  }

  v11 = basename(v33);
  if (_rmrfdir(v33))
  {
    v6 = *__error();
    v20 = *(v1 + 56);
    v21 = *__error();
    v22 = *(v1 + 72);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      if (v20)
      {
        v23 = v20;
      }

      else
      {
        v23 = "[anonymous]";
      }

      v27 = 136446466;
      v28 = v23;
      v29 = 1024;
      LODWORD(v30) = v6;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "%{public}s: rmrfdir: %{darwin.errno}d", &v27, 0x12u);
    }

    *__error() = v21;
    if (v6)
    {
LABEL_9:
      v12 = *(v1 + 56);
      v13 = *__error();
      v14 = *(v1 + 72);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        if (v12)
        {
          v15 = v12;
        }

        else
        {
          v15 = "[anonymous]";
        }

        v27 = 136446722;
        v28 = v15;
        v29 = 2080;
        v30 = v11;
        v31 = 1024;
        v32 = v6;
        v16 = "%{public}s: uninstall stale cryptex: %s: %{darwin.errno}d";
        v17 = v14;
        v18 = OS_LOG_TYPE_ERROR;
        v19 = 28;
LABEL_26:
        _os_log_impl(&_mh_execute_header, v17, v18, v16, &v27, v19);
        goto LABEL_27;
      }

      goto LABEL_27;
    }
  }

  v24 = *(v1 + 56);
  v13 = *__error();
  v25 = *(v1 + 72);
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
  {
    if (v24)
    {
      v26 = v24;
    }

    else
    {
      v26 = "[anonymous]";
    }

    v27 = 136446466;
    v28 = v26;
    v29 = 2080;
    v30 = v11;
    v16 = "%{public}s: uninstall stale cryptex: %s: success";
    v17 = v25;
    v18 = OS_LOG_TYPE_DEBUG;
    v19 = 22;
    goto LABEL_26;
  }

LABEL_27:
  *__error() = v13;
  dispatch_group_leave(*(v1 + 104));
}

void _codex_install_continue2(void *a1)
{
  v2 = *a1;
  v3 = a1[4];
  dispatch_assert_queue_V2(*(*a1 + 96));
  v4 = *(v3 + 104);
  if (cryptex_core_get_asset())
  {
    v5 = *(v2 + 56);
    v6 = *__error();
    v7 = *(v2 + 72);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v8 = "[anonymous]";
      if (v5)
      {
        v8 = v5;
      }

      *buf = 136446210;
      v37 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "%{public}s: pre-canned manifest", buf, 0xCu);
    }

    *__error() = v6;
    a1[2] = 0;
    goto LABEL_7;
  }

  v9 = *(*(v3 + 104) + 160);
  v10 = *(v2 + 56);
  v11 = *__error();
  v12 = *(v2 + 72);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    v13 = "[anonymous]";
    if (v10)
    {
      v13 = v10;
    }

    *buf = 136446210;
    v37 = v13;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "%{public}s: writing im4m to disk", buf, 0xCu);
  }

  *__error() = v11;
  v14 = *(v3 + 104);
  asset = cryptex_core_get_asset();
  v16 = openat(*(asset + 16), *(&_cryptex_asset_type_im4m + 5), 513, 438);
  if (v16 < 0)
  {
    v25 = *__error();
    if (*(v2 + 72))
    {
      os_log_type_enabled(*(v2 + 72), OS_LOG_TYPE_ERROR);
      v26 = *(v2 + 56);
      if (!v26)
      {
        v26 = "[anonymous]";
      }
    }

    else
    {
      v26 = *(v2 + 56);
      if (!v26)
      {
        v26 = "[anonymous]";
      }
    }

    *buf = 136446466;
    v37 = v26;
    v38 = 1024;
    v39 = v25;
    v31 = _os_log_send_and_compose_impl();
    Error = createError("_codex_install_continue2", "codex.c", 1208, "com.apple.security.cryptex.posix", v25, 0, v31);
    free(v31);
LABEL_37:
    if (v16 == -1)
    {
      goto LABEL_39;
    }

    goto LABEL_38;
  }

  if (os_log_type_enabled(*(v2 + 72), OS_LOG_TYPE_DEBUG))
  {
    bzero(buf, 0x400uLL);
    if (!realpath_np())
    {
      v17 = *(v2 + 56);
      v18 = *__error();
      v19 = *(v2 + 72);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        v20 = "[anonymous]";
        if (v17)
        {
          v20 = v17;
        }

        *v32 = 136446466;
        v33 = v20;
        v34 = 2080;
        v35 = buf;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEBUG, "%{public}s: im4m path: %s", v32, 0x16u);
      }

      *__error() = v18;
    }
  }

  v21 = cryptex_signature_write();
  v22 = v21;
  if (!v21)
  {
    cryptex_asset_new();
    v27 = *(v3 + 104);
    cryptex_core_set_asset();
    Error = 0;
    goto LABEL_37;
  }

  v23 = v21;
  if (*(v2 + 72))
  {
    os_log_type_enabled(*(v2 + 72), OS_LOG_TYPE_ERROR);
    v24 = *(v2 + 56);
    if (!v24)
    {
      v24 = "[anonymous]";
    }

    *buf = 136446466;
    v37 = v24;
    v38 = 1024;
    v39 = v22;
  }

  else
  {
    v29 = *(v2 + 56);
    if (!v29)
    {
      v29 = "[anonymous]";
    }

    *buf = 136446466;
    v37 = v29;
    v38 = 1024;
    v39 = v21;
  }

  v30 = _os_log_send_and_compose_impl();
  Error = createError("_codex_install_continue2", "codex.c", 1226, "com.apple.security.cryptex.posix", v23, 0, v30);
  free(v30);
LABEL_38:
  if (close(v16) == -1)
  {
    daemon_init_cold_13(v32, buf);
  }

LABEL_39:
  a1[2] = Error;
  if (!Error)
  {
LABEL_7:
    cryptex_async_f();
    return;
  }

  cryptex_target_async_f();
}

void _codex_install_continue3(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 32);
  daemon_assert_main_queue();
  v4 = *(v3 + 104);
  v5 = ctx_new(v2, 0xA0uLL);
  v5[19] = a1;

  _codex_import_core_impl(v2, v4, v5);
}

void _protex_stage_install_callback(void *a1, uint64_t a2, int a3, uint64_t a4)
{
  v6 = *a4;
  if (a3)
  {
    v7 = a3;
    if (*(v6 + 72))
    {
      os_log_type_enabled(*(v6 + 72), OS_LOG_TYPE_ERROR);
    }

    *(v6 + 56);
    v8 = _os_log_send_and_compose_impl();
    Error = createError("_protex_stage_install_callback", "codex.c", 2936, "com.apple.security.cryptex.posix", v7, 0, v8);
    free(v8);
    *(a4 + 16) = Error;
  }

  else if (!v6)
  {
    return;
  }

  v10 = *(a4 + 48);
  if (v10)
  {
    codex_install(v6, a1, 0, *(a4 + 56), a4, v10);
  }
}

void _codex_mount_continue2(uint64_t a1, uint64_t a2, int a3, uint64_t *a4)
{
  v5 = *a4;
  if (a3)
  {
    v6 = a3;
    if (*(v5 + 72))
    {
      os_log_type_enabled(*(v5 + 72), OS_LOG_TYPE_ERROR);
    }

    *(v5 + 56);
    v8 = _os_log_send_and_compose_impl();
    Error = createError("_codex_mount_continue2", "codex.c", 3096, "com.apple.security.cryptex.posix", v6, 0, v8);
    free(v8);
    if (Error)
    {
      a4[2] = Error;
      cryptex_target_async_f();
    }
  }

  else
  {
    v7 = *(*(a1 + 104) + 216);
    if (v7)
    {
      *(v7 + 64) = 1;
    }

    cryptex_async_f();
  }
}

void _codex_mount_callback(void **a1)
{
  v2 = a1[2];
  v3 = a1[6];
  (a1[8])(*a1, a1[6], a1[2], a1[7]);
  os_release(a1[4]);
  os_release(a1[5]);
  ctx_destroy(a1);
  if (v3)
  {
    os_release(v3);
  }

  if (v2)
  {

    CFRelease(v2);
  }
}

void _codex_mount_continue3(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1[5] + 104);
  if ((*(cryptex_core_get_asset() + 16) & 0x80000000) != 0)
  {
    v5 = *__error();
    if (*(v2 + 72))
    {
      os_log_type_enabled(*(v2 + 72), OS_LOG_TYPE_ERROR);
      if (*(v2 + 56))
      {
        v6 = *(v2 + 56);
      }
    }

    else if (*(v2 + 56))
    {
      v7 = *(v2 + 56);
    }

    v10 = *__error();
    v8 = _os_log_send_and_compose_impl();
    Error = createError("_codex_mount_continue3", "codex.c", 3073, "com.apple.security.cryptex.posix", v5, 0, v8);
    free(v8);
    if (Error)
    {
      a1[2] = Error;
      cryptex_target_async_f();
    }
  }

  else
  {
    v4 = a1[5];

    codex_install(v2, v4, 0, 0, a1, _codex_mount_continue4);
  }
}

void _codex_mount_continue4(uint64_t a1, void *a2, const void *a3, uint64_t a4)
{
  if (a3 && (_CFErrorHasDomainAndCode(a3, @"com.apple.security.cryptex", 17) & 1) == 0)
  {
    if (*(a1 + 72))
    {
      os_log_type_enabled(*(a1 + 72), OS_LOG_TYPE_ERROR);
    }

    *(a1 + 56);
    v8 = _os_log_send_and_compose_impl();
    v9 = "com.apple.security.cryptex";
    v10 = 3034;
    v11 = 14;
    v12 = a3;
LABEL_16:
    Error = createError("_codex_mount_continue4", "codex.c", v10, v9, v11, v12, v8);
    free(v8);
    if (!Error)
    {
      return;
    }

    goto LABEL_17;
  }

  if (!a2)
  {
    if (*(a1 + 72))
    {
      os_log_type_enabled(*(a1 + 72), OS_LOG_TYPE_ERROR);
    }

    *(a1 + 56);
    v8 = _os_log_send_and_compose_impl();
    v9 = "com.apple.security.cryptex.posix";
    v10 = 3040;
    v11 = 2;
    v12 = 0;
    goto LABEL_16;
  }

  if (_CFErrorHasDomainAndCode(a3, @"com.apple.security.cryptex", 17))
  {
    if (*(a1 + 72))
    {
      os_log_type_enabled(*(a1 + 72), OS_LOG_TYPE_ERROR);
    }

    *(a1 + 56);
    v14 = _os_log_send_and_compose_impl();
    Error = createError("_codex_mount_continue4", "codex.c", 3047, "com.apple.security.cryptex", 1, 0, v14);
    free(v14);
    *(a4 + 48) = os_retain(a2);
    if (!Error)
    {
      return;
    }

LABEL_17:
    *(a4 + 16) = Error;
    cryptex_target_async_f();
    return;
  }

  codex_bootstrap(a1, a2, a4, _codex_mount_continue5);
}

void _codex_mount_continue5(uint64_t a1, void *object, const void *a3, uint64_t a4)
{
  *(a4 + 48) = os_retain(object);
  if (!a3)
  {
    goto LABEL_6;
  }

  if (*(a1 + 72))
  {
    os_log_type_enabled(*(a1 + 72), OS_LOG_TYPE_ERROR);
  }

  *(a1 + 56);
  v7 = _os_log_send_and_compose_impl();
  Error = createError("_codex_mount_continue5", "codex.c", 3015, "com.apple.security.cryptex", 14, a3, v7);
  free(v7);
  if (Error)
  {
    *(a4 + 16) = CFRetain(Error);
    cryptex_target_async_f();
    CFRelease(Error);
  }

  else
  {
LABEL_6:
    *(a4 + 16) = 0;
    cryptex_target_async_f();
  }
}

void _codex_unmount_continue2(uint64_t a1, void *a2, const void *a3, uint64_t a4)
{
  daemon_assert_main_queue();
  if (a3)
  {
    if (*(a1 + 72))
    {
      os_log_type_enabled(*(a1 + 72), OS_LOG_TYPE_ERROR);
    }

    *(a1 + 56);
    v8 = _os_log_send_and_compose_impl();
    Error = createError("_codex_unmount_continue2", "codex.c", 3204, "com.apple.security.cryptex", 2, a3, v8);
    free(v8);
    if (Error)
    {
      *(a4 + 16) = CFRetain(Error);
      cryptex_target_async_f();
      CFRelease(Error);
    }
  }

  else
  {

    codex_uninstall(a1, a2, a4, _codex_unmount_continue3);
  }
}

void _codex_unmount_callback(void **a1)
{
  v2 = a1[2];
  v3 = a1[24];
  (a1[26])(*a1, a1[24], a1[2], a1[25]);
  quire_destroy_attr((a1 + 4));
  ctx_destroy(a1);
  if (v3)
  {
    os_release(v3);
  }

  if (v2)
  {

    CFRelease(v2);
  }
}

uint64_t _codex_unmount_continue3(uint64_t a1, uint64_t a2, const void *a3, uint64_t a4)
{
  if (a3)
  {
    if (*(a1 + 72))
    {
      os_log_type_enabled(*(a1 + 72), OS_LOG_TYPE_ERROR);
      *(a1 + 56);
    }

    else
    {
      *(a1 + 56);
    }

    v7 = _os_log_send_and_compose_impl();
    Error = createError("_codex_unmount_continue3", "codex.c", 3179, "com.apple.security.cryptex", 2, a3, v7);
    free(v7);
    if (Error)
    {
      *(a4 + 16) = Error;
    }
  }

  return cryptex_target_async_f();
}

void _codex_uninstall_callback(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 40);
  v4 = *(a1 + 16);
  v5 = *(a1 + 56);
  daemon_assert_main_queue();
  (*(a1 + 64))(v2, v3, v4, v5);
  _codex_deactivate(v2, *(a1 + 48));
  *(a1 + 48) = 0;
  ctx_destroy(a1);
  if (v4)
  {
    CFRelease(v4);
  }

  if (v3)
  {

    os_release(v3);
  }
}

uint64_t _codex_uninstall_continue2(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[5];
  daemon_assert_main_queue();
  _codex_remove_installed(v2, v3);
  v4 = _codex_broadcast_event(v3, 4);
  if (v4)
  {
    v5 = v4;
    if (*(v2 + 72))
    {
      os_log_type_enabled(*(v2 + 72), OS_LOG_TYPE_ERROR);
    }

    *(v2 + 56);
    v6 = _os_log_send_and_compose_impl();
    Error = createError("_codex_uninstall_continue2", "codex.c", 1341, "com.apple.security.cryptex.posix", v5, 0, v6);
    free(v6);
    a1[2] = Error;
  }

  return cryptex_target_async_f();
}

void _codex_bootstrap_continue2(uint64_t a1, uint64_t a2, const void *a3, uint64_t *a4)
{
  v22 = -1;
  v7 = *a4;
  daemon_assert_main_queue();
  v8 = *(v7 + 56);
  v9 = *__error();
  v10 = *(v7 + 72);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v11 = "[anonymous]";
    v12 = *(a1 + 208);
    if (v8)
    {
      v11 = v8;
    }

    *buf = 136446466;
    v24 = v11;
    v25 = 2080;
    v26 = v12;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "%{public}s: quire mount: %s [no error]", buf, 0x16u);
  }

  *__error() = v9;
  if (a3)
  {
    Error = CFRetain(a3);
    if (!Error)
    {
      return;
    }

LABEL_23:
    a4[2] = CFRetain(Error);
    cryptex_target_async_f();
    CFRelease(Error);
    return;
  }

  v14 = *(*(a1 + 200) + 216);
  if (v14)
  {
    if (*(v14 + 64))
    {
      v15 = 4;
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v15 = 0;
  }

  v16 = _opendirat(*(v7 + 1424), *(a1 + 208), 512, 0, &v22);
  if (!v16)
  {
    quire_bootstrap(a1, *(v7 + 1436), v22, v15, a4, _codex_bootstrap_continue3);
    return;
  }

  v17 = v16;
  v18 = v16;
  if (*(a1 + 72))
  {
    os_log_type_enabled(*(a1 + 72), OS_LOG_TYPE_ERROR);
    v19 = *(a1 + 56);
    if (!v19)
    {
      v19 = "[anonymous]";
    }

    *buf = 136446466;
    v24 = v19;
    v25 = 1024;
    LODWORD(v26) = v17;
  }

  else
  {
    v20 = *(a1 + 56);
    if (!v20)
    {
      v20 = "[anonymous]";
    }

    *buf = 136446466;
    v24 = v20;
    v25 = 1024;
    LODWORD(v26) = v16;
  }

  v21 = _os_log_send_and_compose_impl();
  Error = createError("_codex_bootstrap_continue2", "codex.c", 1618, "com.apple.security.cryptex.posix", v18, 0, v21);
  free(v21);
  if (Error)
  {
    goto LABEL_23;
  }
}

void _codex_bootstrap_callback(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 32);
  v4 = *(a1 + 16);
  v5 = *(a1 + 56);
  daemon_assert_main_queue();
  (*(a1 + 64))(v2, v3, v4, v5);
  _codex_deactivate(v2, *(a1 + 48));
  *(a1 + 48) = 0;
  dispatch_group_leave(v2[14]);
  ctx_destroy(a1);
  if (v4)
  {
    CFRelease(v4);
  }

  if (v3)
  {

    os_release(v3);
  }
}

uint64_t _codex_bootstrap_continue3(uint64_t a1, uint64_t a2, const void *a3, uint64_t *a4)
{
  v7 = *a4;
  daemon_assert_main_queue();
  v8 = *(v7 + 56);
  v9 = *__error();
  v10 = *(v7 + 72);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    if (v8)
    {
      v11 = v8;
    }

    else
    {
      v11 = "[anonymous]";
    }

    v12 = *(a1 + 208);
    v34 = 136446466;
    v35 = v11;
    v36 = 2080;
    *v37 = v12;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%{public}s: quire bootstrap: %s", &v34, 0x16u);
  }

  *__error() = v9;
  if (!a3)
  {
    v13 = *(v7 + 56);
    v14 = *__error();
    v15 = *(v7 + 72);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      if (v13)
      {
        v16 = v13;
      }

      else
      {
        v16 = "[anonymous]";
      }

      v34 = 136446210;
      v35 = v16;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "%{public}s: _codex_bootstrap_continue3 bootstrap succeeded", &v34, 0xCu);
    }

    *__error() = v14;
    v17 = *(v7 + 56);
    v18 = *__error();
    v19 = *(v7 + 72);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      if (v17)
      {
        v20 = v17;
      }

      else
      {
        v20 = "[anonymous]";
      }

      v21 = *(a1 + 208);
      v34 = 136446466;
      v35 = v20;
      v36 = 2080;
      *v37 = v21;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEBUG, "%{public}s: activated cryptex: %s", &v34, 0x16u);
    }

    *__error() = v18;
    v22 = *(v7 + 56);
    v23 = *__error();
    v24 = *(v7 + 72);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
    {
      if (v22)
      {
        v25 = v22;
      }

      else
      {
        v25 = "[anonymous]";
      }

      v26 = *(a1 + 188);
      v27 = *(a1 + 392);
      v34 = 136446722;
      v35 = v25;
      v36 = 1024;
      *v37 = v26;
      *&v37[4] = 1024;
      *&v37[6] = v27;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEBUG, "%{public}s: UID: %d\tFD: %d", &v34, 0x18u);
    }

    *__error() = v23;
    hash_insert(v7 + 448, a1 + 112);
    os_retain(a1);
  }

  v28 = *(v7 + 56);
  v29 = *__error();
  v30 = *(v7 + 72);
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
  {
    if (v28)
    {
      v31 = v28;
    }

    else
    {
      v31 = "[anonymous]";
    }

    v34 = 136446210;
    v35 = v31;
    _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEBUG, "%{public}s: _codex_bootstrap_continue3 occured", &v34, 0xCu);
  }

  *__error() = v29;
  if (a3)
  {
    v32 = CFRetain(a3);
  }

  else
  {
    v32 = 0;
  }

  a4[2] = v32;
  return cryptex_target_async_f();
}

void _codex_unbootstrap_callback(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 32);
  v4 = *(a1 + 16);
  v5 = *(a1 + 56);
  daemon_assert_main_queue();
  if (hash_lookup_node(v2 + 448, (v3 + 14)))
  {
    v6 = *(v2 + 7);
    v7 = *__error();
    v8 = *(v2 + 9);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v9 = "[anonymous]";
      v10 = v3[26];
      if (v6)
      {
        v9 = v6;
      }

      v11 = 136446466;
      v12 = v9;
      v13 = 2080;
      v14 = v10;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "%{public}s: deactivated cryptex: %s", &v11, 0x16u);
    }

    *__error() = v7;
    hash_remove(v2 + 448, (v3 + 14));
    os_release(v3);
  }

  (*(a1 + 64))(v2, v3, v4, v5);
  _codex_deactivate(v2, *(a1 + 48));
  *(a1 + 48) = 0;
  ctx_destroy(a1);
  if (v4)
  {
    CFRelease(v4);
  }

  if (v3)
  {
    os_release(v3);
  }
}

void _codex_unbootstrap_continue2(uint64_t a1, uint64_t *a2, const void *a3, void *a4)
{
  v7 = *a4;
  v8 = a4[2];
  v9 = *a2;
  daemon_assert_main_queue();
  if (v7[7])
  {
    v10 = v7[7];
  }

  else
  {
    v10 = "[anonymous]";
  }

  v11 = *__error();
  v12 = v7[9];
  if (a3)
  {
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_10;
    }

    *buf = 136446466;
    v28 = v10;
    v29 = 2112;
    v30 = a3;
    v13 = "%{public}s: unmount: %@";
    v14 = v12;
    v15 = OS_LOG_TYPE_ERROR;
    v16 = 22;
  }

  else
  {
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_10;
    }

    *buf = 136446210;
    v28 = v10;
    v13 = "%{public}s: unmount [no error]";
    v14 = v12;
    v15 = OS_LOG_TYPE_DEBUG;
    v16 = 12;
  }

  _os_log_impl(&_mh_execute_header, v14, v15, v13, buf, v16);
LABEL_10:
  *__error() = v11;
  if (v7[7])
  {
    v17 = v7[7];
  }

  else
  {
    v17 = "[anonymous]";
  }

  v18 = *__error();
  v19 = v7[9];
  if (v8)
  {
    if (!os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_19;
    }

    *buf = 136446466;
    v28 = v17;
    v29 = 2112;
    v30 = v8;
    v20 = "%{public}s: forwarded unbootstrap: %@";
    v21 = v19;
    v22 = OS_LOG_TYPE_ERROR;
    v23 = 22;
  }

  else
  {
    if (!os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_19;
    }

    *buf = 136446210;
    v28 = v17;
    v20 = "%{public}s: forwarded unbootstrap [no error]";
    v21 = v19;
    v22 = OS_LOG_TYPE_DEBUG;
    v23 = 12;
  }

  _os_log_impl(&_mh_execute_header, v21, v22, v20, buf, v23);
LABEL_19:
  *__error() = v18;
  if (v9)
  {
    v24 = v7[12];
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 0x40000000;
    v26[2] = ___codex_unbootstrap_continue2_block_invoke;
    v26[3] = &__block_descriptor_tmp_2;
    v26[4] = v9;
    v26[5] = v7;
    dispatch_async(v24, v26);
    *a2 = 0;
  }

  if (a3)
  {
    v25 = CFRetain(a3);
  }

  else
  {
    v25 = 0;
  }

  a4[2] = v25;
  cryptex_target_async_f();
  if (v8)
  {
    CFRelease(v8);
  }
}

void ___codex_unbootstrap_continue2_block_invoke(uint64_t a1)
{
  **(a1 + 32) = *(*(a1 + 40) + 136);
  v2 = *(a1 + 32);
  *(*(a1 + 40) + 136) = v2;
  v3 = *(a1 + 40);
  bzero(__str, 0x400uLL);
  bzero(v23, 0x400uLL);
  if ((*(v2 + 12) & 0x80000000) != 0)
  {
    v15 = *(v2 + 12);
    ___codex_unbootstrap_continue2_block_invoke_cold_1(&v16, buf);
  }

  if (os_log_type_enabled(*(v3 + 72), OS_LOG_TYPE_DEBUG))
  {
    v4 = realpath_np();
    if (v4)
    {
      v5 = v4;
      v6 = strerror(v4);
      snprintf(__str, 0x400uLL, "[%d: %s]", v5, v6);
    }

    if ((*(v2 + 8) & 0x80000000) != 0)
    {
      strcpy(v23, "[none]");
    }

    else
    {
      v7 = realpath_np();
      if (v7)
      {
        v8 = v7;
        v9 = strerror(v7);
        snprintf(v23, 0x400uLL, "[%d: %s]", v8, v9);
      }
    }

    v10 = *(v3 + 56);
    v11 = *__error();
    v12 = *(v3 + 72);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v13 = "[anonymous]";
      *buf = 136446722;
      if (v10)
      {
        v13 = v10;
      }

      v18 = v13;
      v19 = 2080;
      v20 = __str;
      v21 = 2080;
      v22 = v23;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "%{public}s: claimed quire husk: dev = %s, mnt = %s", buf, 0x20u);
    }

    *__error() = v11;
    v3 = *(a1 + 40);
  }

  v14 = *(v3 + 96);
  *__str = _NSConcreteStackBlock;
  v25 = 0x40000000;
  v26 = ___codex_schedule_husk_cleanup_block_invoke;
  v27 = &__block_descriptor_tmp_74;
  v28 = v3;
  dispatch_async(v14, __str);
}

void _codex_schedule_husk_cleanup_onq(uint64_t a1, int a2)
{
  dispatch_assert_queue_V2(*(a1 + 96));
  v4 = *(a1 + 1360);
  if (v4)
  {
    dispatch_source_cancel(v4);
    dispatch_release(*(a1 + 1360));
    *(a1 + 1360) = 0;
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  block[2] = ___codex_schedule_husk_cleanup_onq_block_invoke;
  block[3] = &__block_descriptor_tmp_75;
  block[4] = a1;
  v14 = a2;
  v5 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, QOS_CLASS_BACKGROUND, 0, block);
  v6 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, *(a1 + 96));
  v7 = dispatch_time(0, 1000000000 << a2);
  dispatch_source_set_timer(v6, v7, 0xFFFFFFFFFFFFFFFFLL, 0);
  dispatch_source_set_event_handler(v6, v5);
  os_retain(a1);
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 0x40000000;
  handler[2] = ___codex_schedule_husk_cleanup_onq_block_invoke_2;
  handler[3] = &__block_descriptor_tmp_76;
  handler[4] = a1;
  dispatch_source_set_cancel_handler(v6, handler);
  dispatch_resume(v6);
  v8 = *(a1 + 56);
  v9 = *__error();
  v10 = *(a1 + 72);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = "[anonymous]";
    if (v8)
    {
      v11 = v8;
    }

    *buf = 136446466;
    v16 = v11;
    v17 = 1024;
    v18 = 1 << a2;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "%{public}s: scheduled background husk cleanup in %d seconds", buf, 0x12u);
  }

  *__error() = v9;
  *(a1 + 1360) = v6;
  if (v5)
  {
    os_release(v5);
  }
}

int *___codex_schedule_husk_cleanup_onq_block_invoke(uint64_t a1)
{
  v1 = a1;
  dispatch_assert_queue_V2(*(*(a1 + 32) + 96));
  dispatch_source_cancel(*(*(v1 + 32) + 1360));
  dispatch_release(*(*(v1 + 32) + 1360));
  *(*(v1 + 32) + 1360) = 0;
  v2 = *(v1 + 32);
  LODWORD(v1) = *(v1 + 40);
  dispatch_assert_queue_V2(*(v2 + 96));
  v44 = v1 + 1;
  v3 = *(v2 + 56);
  v4 = *__error();
  v5 = *(v2 + 72);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = "[anonymous]";
    if (v3)
    {
      v6 = v3;
    }

    *buf = 136446466;
    v46 = v6;
    v47 = 1024;
    v48 = v44;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%{public}s: begin background husk cleanup, attempt #%d", buf, 0x12u);
  }

  *__error() = v4;
  v7 = (v2 + 136);
  v8 = *(v2 + 136);
  if (!v8)
  {
    goto LABEL_46;
  }

  do
  {
    while (1)
    {
      v9 = v8;
      v8 = *v8;
      if ((v9[2] & 0x80000000) == 0)
      {
        v10 = _unmountat(v9 + 2, 0);
        v11 = *(v2 + 56);
        v12 = *__error();
        v13 = *(v2 + 72);
        if (v10)
        {
          if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            *buf = 136446466;
            v14 = "[anonymous]";
            if (v11)
            {
              v14 = v11;
            }

            v46 = v14;
            v47 = 1024;
            v48 = v10;
            v15 = v13;
            v16 = "%{public}s: husk cleanup: unmount: %{darwin.errno}d";
LABEL_23:
            _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, v16, buf, 0x12u);
            goto LABEL_24;
          }

          goto LABEL_24;
        }

        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
        {
          v17 = "[anonymous]";
          if (v11)
          {
            v17 = v11;
          }

          *buf = 136446210;
          v46 = v17;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "%{public}s: husk cleanup: unmount: success", buf, 0xCu);
        }

        *__error() = v12;
      }

      v18 = v9[3];
      v9[2] = -1;
      if (v18 < 0)
      {
        break;
      }

      v19 = hdi_detach(v9 + 3, *(v2 + 72));
      v20 = *(v2 + 56);
      v12 = *__error();
      v21 = *(v2 + 72);
      if (!v19)
      {
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
        {
          v23 = "[anonymous]";
          if (v20)
          {
            v23 = v20;
          }

          *buf = 136446210;
          v46 = v23;
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEBUG, "%{public}s: husk cleanup: detach: success", buf, 0xCu);
        }

        *__error() = v12;
        break;
      }

      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446466;
        v22 = "[anonymous]";
        if (v20)
        {
          v22 = v20;
        }

        v46 = v22;
        v47 = 1024;
        v48 = v19;
        v15 = v21;
        v16 = "%{public}s: husk cleanup: detach: %{darwin.errno}d";
        goto LABEL_23;
      }

LABEL_24:
      *__error() = v12;
      if (!v8)
      {
        goto LABEL_36;
      }
    }

    v9[3] = -1;
    v24 = *v7;
    if (*v7 == v9)
    {
      v25 = (v2 + 136);
    }

    else
    {
      do
      {
        v25 = v24;
        v24 = *v24;
      }

      while (v24 != v9);
    }

    *v25 = *v24;
    free(v9);
  }

  while (v8);
LABEL_36:
  if (!*v7)
  {
LABEL_46:
    v37 = *(v2 + 56);
    v31 = *__error();
    v38 = *(v2 + 72);
    if (!os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_55;
    }

    v39 = "[anonymous]";
    if (v37)
    {
      v39 = v37;
    }

    *buf = 136446210;
    v46 = v39;
    v34 = "%{public}s: All husks cleaned up.";
    v35 = v38;
    v36 = OS_LOG_TYPE_DEBUG;
LABEL_54:
    _os_log_impl(&_mh_execute_header, v35, v36, v34, buf, 0xCu);
    goto LABEL_55;
  }

  v26 = *(v2 + 56);
  v27 = *__error();
  v28 = *(v2 + 72);
  if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
  {
    v29 = "[anonymous]";
    if (v26)
    {
      v29 = v26;
    }

    *buf = 136446210;
    v46 = v29;
    _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "%{public}s: Some husks failed cleanup.", buf, 0xCu);
  }

  *__error() = v27;
  if (v44 > 0xB)
  {
    v40 = *(v2 + 56);
    v31 = *__error();
    v41 = *(v2 + 72);
    if (!os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_55;
    }

    v42 = "[anonymous]";
    if (v40)
    {
      v42 = v40;
    }

    *buf = 136446210;
    v46 = v42;
    v34 = "%{public}s: Too many failed attempts, not rescheduling.";
    v35 = v41;
    v36 = OS_LOG_TYPE_ERROR;
    goto LABEL_54;
  }

  _codex_schedule_husk_cleanup_onq(v2);
  v30 = *(v2 + 56);
  v31 = *__error();
  v32 = *(v2 + 72);
  if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
  {
    v33 = "[anonymous]";
    if (v30)
    {
      v33 = v30;
    }

    *buf = 136446210;
    v46 = v33;
    v34 = "%{public}s: Rescheduling cleanup.";
    v35 = v32;
    v36 = OS_LOG_TYPE_INFO;
    goto LABEL_54;
  }

LABEL_55:
  result = __error();
  *result = v31;
  return result;
}

uint64_t _codex_lockdown_continue2(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v19 = -1;
  if (v3)
  {
    v4 = *(v2 + 56);
    v5 = *__error();
    v6 = *(v2 + 72);
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_19;
    }

    v7 = "[anonymous]";
    if (v4)
    {
      v7 = v4;
    }

    *buf = 136446466;
    v22 = v7;
    v23 = 1024;
    v24 = v3;
    v8 = "%{public}s: failed to lock down codex: %{darwin.errno}d";
LABEL_18:
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, v8, buf, 0x12u);
    goto LABEL_19;
  }

  v9 = codex_openat(v2, &_codex_state_run, "lockdown", 2560, 438, &v19);
  v3 = v9;
  if ((v9 - 23) < 2)
  {
    v13 = *(v2 + 56);
    v5 = *__error();
    v6 = *(v2 + 72);
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_19;
    }

    v14 = "[anonymous]";
    if (v13)
    {
      v14 = v13;
    }

    *buf = 136446466;
    v22 = v14;
    v23 = 1024;
    v24 = v3;
    v8 = "%{public}s: failed to write lockdown state cookie: %{darwin.errno}d";
    goto LABEL_18;
  }

  if (v9 == 17)
  {
    v16 = *(v2 + 56);
    v5 = *__error();
    v17 = *(v2 + 72);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      v18 = "[anonymous]";
      if (v16)
      {
        v18 = v16;
      }

      *buf = 136446210;
      v22 = v18;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, "%{public}s: codex already locked down", buf, 0xCu);
    }

    v3 = 37;
  }

  else
  {
    if (v9)
    {
      _codex_lockdown_continue2_cold_2(&v20, buf);
    }

    v10 = *(v2 + 56);
    v5 = *__error();
    v11 = *(v2 + 72);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v12 = "[anonymous]";
      if (v10)
      {
        v12 = v10;
      }

      *buf = 136446210;
      v22 = v12;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "%{public}s: wrote lockdown state cookie", buf, 0xCu);
    }

    v3 = 0;
  }

LABEL_19:
  *__error() = v5;
  *(a1 + 8) = v3;
  cryptex_target_async_f();
  result = v19;
  if (v19 != -1)
  {
    result = close(v19);
    if (result == -1)
    {
      daemon_init_cold_13(&v20, buf);
    }
  }

  return result;
}

void _codex_lockdown_continue3(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 32);
  daemon_assert_main_queue();
  (*(a1 + 40))(v2, v3, v4);

  ctx_destroy(a1);
}

void _codex_list_installed_continue2(uint64_t a1, void *a2)
{
  v4 = a2[5];
  v5 = dispatch_group_create();
  dispatch_group_enter(v5);
  for (i = 0; i != 37; ++i)
  {
    for (j = *(a1 + 144 + 8 * i); j; j = *(j + 8))
    {
      v8 = ctx_new((j - 80), 0x48uLL);
      v8[4] = os_retain(v5);
      v8[5] = os_retain(v4);
      dispatch_group_enter(v5);
      cryptex_async_f();
    }
  }

  dispatch_group_notify_f(v5, *(a1 + 32), a2, _codex_list_installed_callback_0);
  dispatch_group_leave(v5);
  if (v5)
  {

    os_release(v5);
  }
}

void _codex_list_installed_quire_continue(uint64_t *a1)
{
  v2 = *a1;
  v3 = xpc_array_create(0, 0);
  xpc_array_set_string(v3, 0xFFFFFFFFFFFFFFFFLL, *(v2 + 208));
  xpc_array_set_string(v3, 0xFFFFFFFFFFFFFFFFLL, **(v2 + 224));
  if (*(v2 + 408))
  {
    xpc_array_set_string(v3, 0xFFFFFFFFFFFFFFFFLL, "[not mounted]");
    xpc_array_set_string(v3, 0xFFFFFFFFFFFFFFFFLL, "[not mounted]");
    v4 = v3;
    v5 = "[not mounted]";
  }

  else
  {
    xpc_array_set_string(v3, 0xFFFFFFFFFFFFFFFFLL, *(v2 + 424));
    xpc_array_set_string(v3, 0xFFFFFFFFFFFFFFFFLL, *(v2 + 432));
    v5 = *(v2 + 416);
    v4 = v3;
  }

  xpc_array_set_string(v4, 0xFFFFFFFFFFFFFFFFLL, v5);
  TopLevelPosixError = _CFErrorGetTopLevelPosixError(*(v2 + 408));
  xpc_array_set_int64(v3, 0xFFFFFFFFFFFFFFFFLL, TopLevelPosixError);
  a1[6] = v3;
  main_queue = daemon_get_main_queue();

  dispatch_async_f(main_queue, a1, _codex_list_installed_quire_continue2);
}

void _codex_list_installed_callback_0(void **a1)
{
  (a1[8])(*a1, *(a1 + 2), a1[5], a1[7]);
  xpc_release(a1[5]);

  ctx_destroy(a1);
}

void _codex_list_installed_quire_continue2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  xpc_array_append_value(v3, v4);
  dispatch_group_leave(v2);
  ctx_destroy(a1);
  if (v4)
  {
    os_release(v4);
  }

  if (v3)
  {
    os_release(v3);
  }

  if (v2)
  {

    os_release(v2);
  }
}

void sub_1000265A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t collation_map_add(void *a1)
{
  v1 = a1;
  quire_get_user(v1);
  v2 = [CollationMap addEntryForUser:0 fromQuire:v1];

  return v2;
}

uint64_t collation_map_remove(void *a1)
{
  v1 = a1;
  quire_get_user(v1);
  mntpath = quire_get_mntpath(v1);

  return [CollationMap removeEntryForUser:0 withValue:mntpath];
}

id collation_map_get_endpoint_for_user(uint64_t a1)
{
  v2 = +[CollationMap getMap];
  v3 = [v2 coll_map];

  v4 = [NSNumber numberWithUnsignedInt:a1];
  v5 = [v3 objectForKeyedSubscript:v4];

  if (!v5)
  {
    v5 = [v3 objectForKeyedSubscript:&off_100074F30];
  }

  v6 = [v5 createEndpoint];

  return v6;
}

BOOL collation_map_lookup_cryptex_with_attributes(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = cryptex_version_new();
  }

  else
  {
    v4 = 0;
  }

  v5 = [CollationMap lookupEntryForUser:0 withBundleID:a2 minVersion:v4];
  cryptex_version_destroy();
  return v5;
}

uint64_t OUTLINED_FUNCTION_0_3()
{

  return _os_log_send_and_compose_impl();
}

void sub_remote_xpc_message_recv(void *a1)
{
  v1 = a1;
  xpc_remote_connection_set_event_handler();
  xpc_remote_connection_activate();
}

void __sub_remote_xpc_message_recv_block_invoke(id a1, OS_xpc_object *a2)
{
  v2 = a2;
  if (xpc_get_type(v2) == &_xpc_type_error)
  {
    v3 = *__error();
    v4 = _remote_service_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v8 = 136315138;
      string = xpc_dictionary_get_string(v2, _xpc_error_key_description);
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Received error from client: %s", &v8, 0xCu);
    }

    goto LABEL_8;
  }

  if (xpc_get_type(v2) != &_xpc_type_dictionary)
  {
    v3 = *__error();
    v4 = _remote_service_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v8) = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Malformed message from client", &v8, 2u);
    }

LABEL_8:

    *__error() = v3;
    goto LABEL_12;
  }

  v5 = xpc_copy_description(v2);
  v6 = *__error();
  v7 = _remote_service_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = 136315138;
    string = v5;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "remote service msg recv: %s", &v8, 0xCu);
  }

  *__error() = v6;
  _sub_remote_service_demux(v2);
  free(v5);
LABEL_12:
}

id _remote_service_log()
{
  if (_remote_service_log_onceToken != -1)
  {
    _remote_service_log_cold_1();
  }

  v1 = _remote_service_log_osl;

  return v1;
}

void _sub_remote_service_demux(void *a1)
{
  v1 = a1;
  v2 = xpc_dictionary_get_value(v1, "routine");
  v3 = v2;
  if (!v2)
  {
    v4 = *__error();
    v5 = _remote_service_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Malformed message from client: no routine key found", buf, 2u);
    }

    goto LABEL_8;
  }

  if (xpc_get_type(v2) != &_xpc_type_string)
  {
    v4 = *__error();
    v5 = _remote_service_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Malformed message from client: routine is not a string", buf, 2u);
    }

LABEL_8:

    *__error() = v4;
    reply = _xpc_create_reply(v1, 0, 22);
LABEL_9:
    v7 = reply;
    goto LABEL_10;
  }

  string_ptr = xpc_string_get_string_ptr(v3);
  if (!strcmp(string_ptr, "get-nonce"))
  {
    v11 = v1;
    *&v198 = 0;
    v197 = 0u;
    memset(buf, 0, sizeof(buf));
    v126 = 0;
    argv = _xpc_request_get_argv(v11, &v126);
    v13 = v126;
    v14 = v13;
    if (argv)
    {
      v15 = _remote_service_log();

      if (v15)
      {
        v16 = _remote_service_log();
        os_log_type_enabled(v16, OS_LOG_TYPE_ERROR);
        *block = 67109120;
        *&block[4] = argv;
        v17 = _os_log_send_and_compose_impl();
      }

      else
      {
        *block = 67109120;
        *&block[4] = argv;
        v17 = _os_log_send_and_compose_impl();
      }

      Error = createError("_remote_service_get_nonce", "sub_remote_service.m", 110, "com.apple.security.cryptex.posix", argv, 0, v17);
      free(v17);
      reply_with_cferr = _xpc_create_reply_with_cferr(v11, 0, Error);
      goto LABEL_51;
    }

    if (_xpc_dictionary_key_with_type_exists(v13, "nonce-domain", &_xpc_type_uint64))
    {
      uint64 = xpc_dictionary_get_uint64(v14, "nonce-domain");
      if (!_img4_get_nonce_domain_from_index(uint64))
      {
        v33 = _remote_service_log();

        if (v33)
        {
          v34 = _remote_service_log();
          os_log_type_enabled(v34, OS_LOG_TYPE_ERROR);
          *block = 134217984;
          *&block[4] = uint64;
          v35 = _os_log_send_and_compose_impl();
        }

        else
        {
          *block = 134217984;
          *&block[4] = uint64;
          v35 = _os_log_send_and_compose_impl();
        }

        Error = createError("_remote_service_get_nonce", "sub_remote_service.m", 126, "com.apple.security.cryptex", 10, 0, v35);
        free(v35);
        reply_with_cferr = _xpc_create_reply_with_cferr(v11, 0, Error);
        goto LABEL_51;
      }
    }

    else
    {
      if (!_xpc_dictionary_key_with_type_exists(v14, "nonce-domain-handle", &_xpc_type_uint64))
      {
        v64 = _remote_service_log();

        if (v64)
        {
          v65 = _remote_service_log();
          os_log_type_enabled(v65, OS_LOG_TYPE_ERROR);
          *block = 136315394;
          *&block[4] = "nonce-domain";
          *&block[12] = 2080;
          *&block[14] = "nonce-domain-handle";
          v66 = _os_log_send_and_compose_impl();
        }

        else
        {
          *block = 136315394;
          *&block[4] = "nonce-domain";
          *&block[12] = 2080;
          *&block[14] = "nonce-domain-handle";
          v66 = _os_log_send_and_compose_impl();
        }

        Error = createError("_remote_service_get_nonce", "sub_remote_service.m", 151, "com.apple.security.cryptex", 11, 0, v66);
        free(v66);
        reply_with_cferr = _xpc_create_reply_with_cferr(v11, 0, Error);
        goto LABEL_51;
      }

      v54 = xpc_dictionary_get_uint64(v14, "nonce-domain-handle");
      if (!img4_nonce_domain_get_from_handle())
      {
        v99 = _remote_service_log();

        if (v99)
        {
          v100 = _remote_service_log();
          os_log_type_enabled(v100, OS_LOG_TYPE_ERROR);
          *block = 67109120;
          *&block[4] = v54;
          v101 = _os_log_send_and_compose_impl();
        }

        else
        {
          *block = 67109120;
          *&block[4] = v54;
          v101 = _os_log_send_and_compose_impl();
        }

        Error = createError("_remote_service_get_nonce", "sub_remote_service.m", 141, "com.apple.security.cryptex", 10, 0, v101);
        free(v101);
        reply_with_cferr = _xpc_create_reply_with_cferr(v11, 0, Error);
        goto LABEL_51;
      }
    }

    v55 = img4_nonce_domain_copy_nonce();
    if (!v55)
    {
      empty = xpc_dictionary_create_empty();
      xpc_dictionary_set_data(empty, "nonce", buf, 0x38uLL);
      v7 = _xpc_create_reply_with_cferr(v11, empty, 0);

LABEL_53:
      goto LABEL_10;
    }

    v56 = _remote_service_log();

    if (v56)
    {
      v57 = _remote_service_log();
      os_log_type_enabled(v57, OS_LOG_TYPE_ERROR);
      *block = 67109120;
      *&block[4] = v55;
      v58 = _os_log_send_and_compose_impl();
    }

    else
    {
      *block = 67109120;
      *&block[4] = v55;
      v58 = _os_log_send_and_compose_impl();
    }

    Error = createError("_remote_service_get_nonce", "sub_remote_service.m", 161, "com.apple.security.cryptex.posix", v55, 0, v58);
    free(v58);
    reply_with_cferr = _xpc_create_reply_with_cferr(v11, 0, Error);
LABEL_51:
    v7 = reply_with_cferr;
    if (Error)
    {
      CFRelease(Error);
    }

    goto LABEL_53;
  }

  if (strcmp(string_ptr, "roll-nonce"))
  {
    if (strcmp(string_ptr, "install"))
    {
      if (strcmp(string_ptr, "uninstall"))
      {
        if (!strcmp(string_ptr, "copy-installed"))
        {
          _remote_service_copy_installed(v1);
          goto LABEL_12;
        }

        if (!strcmp(string_ptr, "read-personalization-id"))
        {
          _remote_service_read_personalization_identifiers(v1);
          goto LABEL_12;
        }

        v9 = *__error();
        v10 = _remote_service_log();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315138;
          *&buf[4] = string_ptr;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Unsupported routine: %s", buf, 0xCu);
        }

        *__error() = v9;
        reply = _xpc_create_reply(v1, 0, 45);
        goto LABEL_9;
      }

      *block = 0;
      *&block[8] = block;
      *&block[16] = 0x3032000000;
      v186 = __Block_byref_object_copy__2;
      v187 = __Block_byref_object_dispose__2;
      v42 = v1;
      v188 = v42;
      v126 = 0;
      v127 = &v126;
      v128 = 0x3032000000;
      v129 = __Block_byref_object_copy__2;
      v130 = __Block_byref_object_dispose__2;
      v131 = 0;
      v176 = 0;
      v43 = _xpc_request_get_argv(v42, &v176);
      v44 = v176;
      v45 = v44;
      if (v43)
      {
        v46 = *__error();
        v47 = _remote_service_log();
        if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
        {
          *buf = 67109120;
          *&buf[4] = v43;
          _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_ERROR, "failed to get argv from request: %{darwin.errno}d", buf, 8u);
        }

        *__error() = v46;
      }

      else
      {
        string = xpc_dictionary_get_string(v44, "remote-cryptex-identifier");
        v68 = xpc_dictionary_get_string(v45, "remote-cryptex-version");
        if (string)
        {
          if (v68)
          {
            v69 = cryptex_version_new();
          }

          else
          {
            v69 = 0;
          }

          v104 = codex_copy_system();
          v105 = *(v127 + 40);
          *(v127 + 40) = v104;

          v106 = daemon_get_main_queue();
          *buf = _NSConcreteStackBlock;
          *&buf[8] = 3221225472;
          *&buf[16] = ___remote_service_uninstall_block_invoke;
          *&buf[24] = &unk_100073460;
          *&v198 = string;
          *(&v198 + 1) = v69;
          *&v199 = 1;
          *&v197 = &v126;
          *(&v197 + 1) = block;
          dispatch_async(v106, buf);

          v48 = 0;
          goto LABEL_127;
        }

        v102 = *__error();
        v103 = _remote_service_log();
        if (os_log_type_enabled(v103, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "remote-cryptex-identifier";
          *&buf[12] = 1024;
          *&buf[14] = 22;
          _os_log_impl(&_mh_execute_header, v103, OS_LOG_TYPE_ERROR, "required key missing or with wrong type: %s: %{darwin.errno}d", buf, 0x12u);
        }

        *__error() = v102;
        v43 = 22;
      }

      v48 = _xpc_create_reply(v42, 0, v43);
      _remote_service_send_reply(v48);
LABEL_127:
      _Block_object_dispose(&v126, 8);

      _Block_object_dispose(block, 8);
      goto LABEL_12;
    }

    v23 = v1;
    v138 = 0;
    v139 = &v138;
    v140 = 0x3032000000;
    v141 = __Block_byref_object_copy__2;
    v142 = __Block_byref_object_dispose__2;
    v143 = 0;
    if ((remote_service_install_request_valid() & 1) == 0)
    {
      v51 = *__error();
      v52 = _remote_service_log();
      if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        *&buf[4] = 22;
        _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_ERROR, "Invalid install request: %{darwin.errno}d", buf, 8u);
      }

      v29 = 0;
      v30 = 0;
      v31 = 0;
      v123 = 0;
      v125 = 0;
      v25 = 0;
      v122 = 0;
      *__error() = v51;
      goto LABEL_57;
    }

    v137 = 0;
    v24 = _xpc_request_get_argv(v23, &v137);
    v25 = v137;
    if (v24)
    {
      v26 = *__error();
      v27 = _remote_service_log();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        *&buf[4] = v24;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "failed to get argv from request: %{darwin.errno}d", buf, 8u);
      }

      v28 = __error();
      v29 = 0;
      v30 = 0;
      v31 = 0;
      v123 = 0;
      v125 = 0;
      v122 = 0;
LABEL_34:
      *v28 = v26;
LABEL_58:
      v53 = _xpc_create_reply(v23, 0, v24);
      _remote_service_send_reply(v53);
LABEL_59:
      _Block_object_dispose(&v138, 8);

      goto LABEL_12;
    }

    v70 = codex_copy_system();
    v71 = v139[5];
    v139[5] = v70;

    v125 = xpc_dictionary_get_value(v25, "image");
    int64 = xpc_dictionary_get_int64(v25, "image-type-index");
    if (int64 >= 0xC)
    {
      v73 = *__error();
      v74 = _remote_service_log();
      if (os_log_type_enabled(v74, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        *&buf[4] = 22;
        _os_log_impl(&_mh_execute_header, v74, OS_LOG_TYPE_ERROR, "Invalid install request (image_type_index OOB): %{darwin.errno}d", buf, 8u);
      }

      v29 = 0;
      v30 = 0;
      v31 = 0;
      v122 = 0;
      v123 = 0;
      *__error() = v73;
LABEL_57:
      v24 = 22;
      goto LABEL_58;
    }

    v124 = xpc_dictionary_get_value(v25, "trustcache");
    v119 = xpc_dictionary_get_value(v25, "im4m");
    v117 = xpc_dictionary_get_value(v25, "info");
    v116 = xpc_dictionary_get_value(v25, "volumehash");
    v81 = xpc_dictionary_get_uint64(v25, "persistence");
    v82 = xpc_dictionary_get_uint64(v25, "nonce-persistence");
    v83 = xpc_dictionary_get_uint64(v25, "auth");
    v84 = xpc_dictionary_get_dictionary(v25, "cryptex1-properties");
    v85 = int64;
    v86 = v139[5];
    v126 = _NSConcreteStackBlock;
    v127 = 3221225472;
    v128 = ___remote_service_install_block_invoke;
    v129 = &unk_100072F50;
    v120 = v85;
    v133 = v85;
    v122 = v84;
    v130 = v122;
    v132 = &v138;
    v131 = v23;
    v134 = v83;
    v135 = v81;
    v136 = v82;
    v121 = v86;
    v125 = v125;
    v123 = v124;
    v29 = v119;
    v31 = v117;
    v30 = v116;
    v87 = &v126;
    v208 = 0u;
    memset(v209, 0, sizeof(v209));
    v206 = 0u;
    v207 = 0u;
    v204 = 0u;
    v205 = 0u;
    v202 = 0u;
    v203 = 0u;
    v200 = 0u;
    v201 = 0u;
    v198 = 0u;
    v199 = 0u;
    v197 = 0u;
    memset(buf, 0, sizeof(buf));
    v184 = -1;
    v182[0] = 0;
    v182[1] = v182;
    v182[2] = 0x2020000000;
    v183 = 0;
    v176 = 0;
    v177 = &v176;
    v178 = 0x3032000000;
    v179 = __Block_byref_object_copy__2;
    v180 = __Block_byref_object_dispose__2;
    v181 = 0;
    v174[0] = 0;
    v174[1] = v174;
    v174[2] = 0x3032000000;
    v174[3] = __Block_byref_object_copy__30;
    v174[4] = __Block_byref_object_dispose__31;
    v118 = v87;
    v175 = objc_retainBlock(v87);
    v88 = _remote_service_get_queue();
    dispatch_assert_queue_V2(v88);

    __snprintf_chk(buf, 0xFFuLL, 0, 0xFFuLL, "XXXXXX");
    codex_mkodtempat(v121, &_codex_state_remote_stage, buf, &v184);
    if (openat(v184, *(cryptex_asset_types[v120] + 40), 514, 438) < 0)
    {
      v24 = *__error();
      v97 = *__error();
      v98 = _remote_service_log();
      if (os_log_type_enabled(v98, OS_LOG_TYPE_ERROR))
      {
        *block = 67109120;
        *&block[4] = v24;
        _os_log_impl(&_mh_execute_header, v98, OS_LOG_TYPE_ERROR, "failed to create file for image: %{darwin.errno}d", block, 8u);
      }
    }

    else
    {
      v89 = cryptex_asset_types[v120];
      is_cryptex1 = cryptex_asset_type_is_cryptex1();
      v91 = is_cryptex1;
      if (is_cryptex1)
      {
        v92 = &_cryptex_asset_type_ginf;
      }

      else
      {
        v92 = _cryptex_asset_type_c411;
      }

      if (is_cryptex1)
      {
        v93 = &_cryptex_asset_type_gtcd;
      }

      else
      {
        v93 = &_cryptex_asset_type_ltrs;
      }

      v113 = v93;
      v114 = v92;
      v94 = &_cryptex_asset_type_roothash;
      if (is_cryptex1)
      {
        v94 = &_cryptex_asset_type_gtgv;
      }

      v115 = v94;
      v95 = (&_cryptex_asset_type_ltrs + 40);
      if (is_cryptex1)
      {
        v95 = (&_cryptex_asset_type_gtcd + 40);
      }

      if (openat(v184, *v95, 514, 438) < 0)
      {
        v24 = *__error();
        v97 = *__error();
        v98 = _remote_service_log();
        if (os_log_type_enabled(v98, OS_LOG_TYPE_ERROR))
        {
          *block = 67109120;
          *&block[4] = v24;
          _os_log_impl(&_mh_execute_header, v98, OS_LOG_TYPE_ERROR, "failed to create file for trust cache: %{darwin.errno}d", block, 8u);
        }
      }

      else if (openat(v184, *(&_cryptex_asset_type_im4m + 5), 514, 438) < 0)
      {
        v24 = *__error();
        v97 = *__error();
        v98 = _remote_service_log();
        if (os_log_type_enabled(v98, OS_LOG_TYPE_ERROR))
        {
          *block = 67109120;
          *&block[4] = v24;
          _os_log_impl(&_mh_execute_header, v98, OS_LOG_TYPE_ERROR, "failed to create file for im4m: %{darwin.errno}d", block, 8u);
        }
      }

      else if (v31 && (!v91 ? (v96 = _cryptex_asset_type_c411) : (v96 = &_cryptex_asset_type_ginf), openat(v184, v96[5], 514, 438) < 0))
      {
        v24 = *__error();
        v97 = *__error();
        v98 = _remote_service_log();
        if (os_log_type_enabled(v98, OS_LOG_TYPE_ERROR))
        {
          *block = 67109120;
          *&block[4] = v24;
          _os_log_impl(&_mh_execute_header, v98, OS_LOG_TYPE_ERROR, "failed to create file for info: %{darwin.errno}d", block, 8u);
        }
      }

      else
      {
        if (!v30)
        {
          goto LABEL_151;
        }

        v107 = &_cryptex_asset_type_roothash;
        if (v91)
        {
          v107 = &_cryptex_asset_type_gtgv;
        }

        if ((openat(v184, v107[5], 514, 438) & 0x80000000) == 0)
        {
LABEL_151:
          v109 = dispatch_group_create();
          v110 = v177[5];
          v177[5] = v109;

          dispatch_group_enter(v177[5]);
          dispatch_group_enter(v177[5]);
          v168 = _NSConcreteStackBlock;
          v169 = 3221225472;
          v170 = ___remote_service_install_file_recv_block_invoke;
          v171 = &unk_100072F78;
          v172 = v182;
          v173 = &v176;
          xpc_file_transfer_write_to_fd();
          dispatch_group_enter(v177[5]);
          v162 = _NSConcreteStackBlock;
          v163 = 3221225472;
          v164 = ___remote_service_install_file_recv_block_invoke_34;
          v165 = &unk_100072F78;
          v166 = v182;
          v167 = &v176;
          xpc_file_transfer_write_to_fd();
          dispatch_group_enter(v177[5]);
          v156 = _NSConcreteStackBlock;
          v157 = 3221225472;
          v158 = ___remote_service_install_file_recv_block_invoke_35;
          v159 = &unk_100072F78;
          v160 = v182;
          v161 = &v176;
          xpc_file_transfer_write_to_fd();
          if (v31)
          {
            dispatch_group_enter(v177[5]);
            v150 = _NSConcreteStackBlock;
            v151 = 3221225472;
            v152 = ___remote_service_install_file_recv_block_invoke_36;
            v153 = &unk_100072F78;
            v154 = v182;
            v155 = &v176;
            xpc_file_transfer_write_to_fd();
          }

          if (v30)
          {
            dispatch_group_enter(v177[5]);
            v144 = _NSConcreteStackBlock;
            v145 = 3221225472;
            v146 = ___remote_service_install_file_recv_block_invoke_37;
            v147 = &unk_100072F78;
            v148 = v182;
            v149 = &v176;
            xpc_file_transfer_write_to_fd();
          }

          v111 = v177[5];
          v112 = _remote_service_get_queue();
          *block = _NSConcreteStackBlock;
          *&block[8] = 3221225472;
          *&block[16] = ___remote_service_install_file_recv_block_invoke_38;
          v186 = &unk_100072FA0;
          v195 = v184;
          v191 = v120;
          v192 = v113;
          v187 = v31;
          v193 = v114;
          v188 = v30;
          v189 = v174;
          v194 = v115;
          v190 = v182;
          dispatch_group_notify(v111, v112, block);

          dispatch_group_leave(v177[5]);
          v24 = 0;
          goto LABEL_146;
        }

        v24 = *__error();
        v97 = *__error();
        v98 = _remote_service_log();
        if (os_log_type_enabled(v98, OS_LOG_TYPE_ERROR))
        {
          *block = 67109120;
          *&block[4] = v24;
          _os_log_impl(&_mh_execute_header, v98, OS_LOG_TYPE_ERROR, "failed to create file for volume hash: %{darwin.errno}d", block, 8u);
        }
      }
    }

    *__error() = v97;
LABEL_146:
    _Block_object_dispose(v174, 8);

    _Block_object_dispose(&v176, 8);
    _Block_object_dispose(v182, 8);

    if (!v24)
    {
      v53 = 0;
      goto LABEL_59;
    }

    v26 = *__error();
    v108 = _remote_service_log();
    if (os_log_type_enabled(v108, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      *&buf[4] = v24;
      _os_log_impl(&_mh_execute_header, v108, OS_LOG_TYPE_ERROR, "file receive failed: %{darwin.errno}d", buf, 8u);
    }

    v28 = __error();
    goto LABEL_34;
  }

  v18 = v1;
  if (!_xpc_dictionary_key_with_type_exists(v18, "nonce-domain", &_xpc_type_uint64))
  {
    if (_xpc_dictionary_key_with_type_exists(v18, "nonce-domain-handle", &_xpc_type_uint64))
    {
      v36 = xpc_dictionary_get_uint64(v18, "nonce-domain-handle");
      if (img4_nonce_domain_get_from_handle())
      {
        goto LABEL_41;
      }

      v78 = _remote_service_log();

      if (v78)
      {
        v79 = _remote_service_log();
        os_log_type_enabled(v79, OS_LOG_TYPE_ERROR);
        *buf = 67109120;
        *&buf[4] = v36;
        v80 = _os_log_send_and_compose_impl();
      }

      else
      {
        *buf = 67109120;
        *&buf[4] = v36;
        v80 = _os_log_send_and_compose_impl();
      }

      v75 = createError("_remote_service_roll_nonce", "sub_remote_service.m", 211, "com.apple.security.cryptex", 10, 0, v80);
      free(v80);
      v76 = _xpc_create_reply_with_cferr(v18, 0, v75);
    }

    else
    {
      v59 = _remote_service_log();

      if (v59)
      {
        v60 = _remote_service_log();
        os_log_type_enabled(v60, OS_LOG_TYPE_ERROR);
        *buf = 136315394;
        *&buf[4] = "nonce-domain";
        *&buf[12] = 2080;
        *&buf[14] = "nonce-domain-handle";
        v61 = _os_log_send_and_compose_impl();
      }

      else
      {
        *buf = 136315394;
        *&buf[4] = "nonce-domain";
        *&buf[12] = 2080;
        *&buf[14] = "nonce-domain-handle";
        v61 = _os_log_send_and_compose_impl();
      }

      v75 = createError("_remote_service_roll_nonce", "sub_remote_service.m", 221, "com.apple.security.cryptex", 11, 0, v61);
      free(v61);
      v76 = _xpc_create_reply_with_cferr(v18, 0, v75);
    }

LABEL_122:
    v7 = v76;
    if (v75)
    {
      CFRelease(v75);
    }

    goto LABEL_124;
  }

  v19 = xpc_dictionary_get_uint64(v18, "nonce-domain");
  if (!_img4_get_nonce_domain_from_index(v19))
  {
    v20 = _remote_service_log();

    if (v20)
    {
      v21 = _remote_service_log();
      os_log_type_enabled(v21, OS_LOG_TYPE_ERROR);
      *buf = 134217984;
      *&buf[4] = v19;
      v22 = _os_log_send_and_compose_impl();
    }

    else
    {
      *buf = 134217984;
      *&buf[4] = v19;
      v22 = _os_log_send_and_compose_impl();
    }

    v75 = createError("_remote_service_roll_nonce", "sub_remote_service.m", 196, "com.apple.security.cryptex", 10, 0, v22);
    free(v22);
    v76 = _xpc_create_reply_with_cferr(v18, 0, v75);
    goto LABEL_122;
  }

LABEL_41:
  v37 = img4_nonce_domain_roll_nonce();
  if (v37)
  {
    v38 = v37;
    v39 = _remote_service_log();

    if (v39)
    {
      v40 = _remote_service_log();
      os_log_type_enabled(v40, OS_LOG_TYPE_ERROR);
      *buf = 67109120;
      *&buf[4] = v38;
      v41 = _os_log_send_and_compose_impl();
    }

    else
    {
      *buf = 67109120;
      *&buf[4] = v38;
      v41 = _os_log_send_and_compose_impl();
    }

    v75 = createError("_remote_service_roll_nonce", "sub_remote_service.m", 231, "com.apple.security.cryptex.posix", v38, 0, v41);
    free(v41);
    v76 = _xpc_create_reply_with_cferr(v18, 0, v75);
    goto LABEL_122;
  }

  v62 = xpc_dictionary_create_empty();
  v63 = _xpc_create_reply_with_cferr(v18, v62, 0);

  v7 = v63;
LABEL_124:

LABEL_10:
  if (v7)
  {
    _remote_service_send_reply(v7);
  }

LABEL_12:
}

void sub_100028D28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  _Block_object_dispose(&a72, 8);
  _Block_object_dispose(&STACK[0x228], 8);
  _Block_object_dispose(&STACK[0x258], 8);
  _Block_object_dispose(&a36, 8);
  _Unwind_Resume(a1);
}

void ___remote_service_log_block_invoke(id a1)
{
  _remote_service_log_osl = os_log_create("com.apple.libcryptex", "remote_service");

  _objc_release_x1();
}

void _remote_service_copy_installed(void *a1)
{
  v1 = a1;
  v2 = daemon_get_main_queue();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = ___remote_service_copy_installed_block_invoke;
  block[3] = &unk_100071418;
  v5 = v1;
  v3 = v1;
  dispatch_async(v2, block);
}

void _remote_service_read_personalization_identifiers(void *a1)
{
  v1 = a1;
  memset(v13, 0, sizeof(v13));
  LOWORD(v13[0]) = 6;
  if (img4_chip_instantiate())
  {
    v2 = _remote_service_log();

    if (v2)
    {
      v3 = _remote_service_log();
      os_log_type_enabled(v3, OS_LOG_TYPE_ERROR);
      *buf = 67109120;
      LODWORD(v12) = 5;
      v4 = _os_log_send_and_compose_impl();
    }

    else
    {
      *buf = 67109120;
      LODWORD(v12) = 5;
      v4 = _os_log_send_and_compose_impl();
    }

    Error = createError("_remote_service_read_personalization_identifiers", "sub_remote_service.m", 848, "com.apple.security.cryptex.posix", 5, 0, v4);
    free(v4);
LABEL_10:
    v6 = 0;
    goto LABEL_11;
  }

  v10 = 0;
  Error = img4_chip_instance_to_xpc(v13, &v10);
  v6 = v10;
  if (Error)
  {
    v7 = *__error();
    v8 = _remote_service_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v12 = Error;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Failed to encode AppleImage4 chip instance.: %@", buf, 0xCu);
    }

    *__error() = v7;
    goto LABEL_10;
  }

LABEL_11:
  reply_with_cferr = _xpc_create_reply_with_cferr(v1, v6, Error);
  _remote_service_send_reply(reply_with_cferr);
}

void _remote_service_send_reply(void *a1)
{
  v1 = a1;
  v2 = _remote_service_get_queue();
  dispatch_assert_queue_V2(v2);

  v3 = xpc_copy_description(v1);
  v4 = *__error();
  v5 = _remote_service_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = 136315138;
    v7 = v3;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "remote service reply: %s", &v6, 0xCu);
  }

  *__error() = v4;
  xpc_dictionary_send_reply();
  free(v3);
}

uint64_t __Block_byref_object_copy__2(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void ___remote_service_install_block_invoke(uint64_t a1, int a2)
{
  if (!a2)
  {
    v6 = cryptex_core_create();
    v8 = *(a1 + 56);
    v9 = cryptex_core_set_assets_from_fds();
    if (v9)
    {
      v3 = v9;
      v4 = *__error();
      v5 = _remote_service_log();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        v24 = v3;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "set assets to core from fds failed: %{darwin.errno}d", buf, 8u);
      }

      goto LABEL_5;
    }

    v10 = *(a1 + 32);
    reply = cryptex_core_cx1_properties_create_with_xpc_dictionary();
    if (reply)
    {
      cryptex_core_set_cryptex1_properties();
    }

    v11 = *(a1 + 40);
    v13 = *(a1 + 64);
    v12 = *(a1 + 72);
    v14 = *(a1 + 80);
    v15 = *(*(*(a1 + 48) + 8) + 40);
    v16 = v11;
    v6 = v6;
    v17 = *__error();
    v18 = _remote_service_log();
    v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG);
    if (v13 == 2)
    {
      if (v19)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEBUG, "using NO signing service", buf, 2u);
      }
    }

    else
    {
      if (v13 != 1)
      {
        if (v19)
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEBUG, "using default signing service", buf, 2u);
        }

        v20 = 0;
        *__error() = v17;
        goto LABEL_23;
      }

      if (v19)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEBUG, "using supplemental signing service", buf, 2u);
      }
    }

    *__error() = v17;
    v20 = cryptex_host_create();
    cryptex_core_attach_host();
LABEL_23:
    cryptex_core_set_install_persistence();
    cryptex_core_set_nonce_persistence();
    v21 = v15;
    started = pipeline_start_state_alloc(v21, 0, 0, 0, v16, _remote_service_install_cryptex_continue);
    codex_install_cryptex(v21, v6, started);

    goto LABEL_6;
  }

  v3 = a2;
  v4 = *__error();
  v5 = _remote_service_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    *buf = 67109120;
    v24 = v3;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "file transfer failed: %{darwin.errno}d", buf, 8u);
  }

  v6 = 0;
LABEL_5:

  *__error() = v4;
  reply = _xpc_create_reply(*(a1 + 40), 0, v3);
  _remote_service_send_reply(reply);
LABEL_6:
}

id __Block_byref_object_copy__30(uint64_t a1, uint64_t a2)
{
  result = objc_retainBlock(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

id _remote_service_get_queue()
{
  if (_remote_service_get_queue_onceToken != -1)
  {
    _remote_service_get_queue_cold_1();
  }

  v1 = _remote_service_get_queue_queue;

  return v1;
}

void ___remote_service_install_file_recv_block_invoke(uint64_t a1, int a2)
{
  v4 = *__error();
  v5 = _remote_service_log();
  v6 = v5;
  if (a2)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v7[0] = 67109120;
      v7[1] = a2;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "image file transfer: %{darwin.errno}d", v7, 8u);
    }

    *__error() = v4;
    *(*(*(a1 + 32) + 8) + 24) = a2;
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v7[0]) = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "image file transfer [no error]", v7, 2u);
    }

    *__error() = v4;
  }

  dispatch_group_leave(*(*(*(a1 + 40) + 8) + 40));
}

void ___remote_service_install_file_recv_block_invoke_34(uint64_t a1, int a2)
{
  v4 = *__error();
  v5 = _remote_service_log();
  v6 = v5;
  if (a2)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v7[0] = 67109120;
      v7[1] = a2;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "trustcache file transfer: %{darwin.errno}d", v7, 8u);
    }

    *__error() = v4;
    *(*(*(a1 + 32) + 8) + 24) = a2;
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v7[0]) = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "trustcache file transfer [no error]", v7, 2u);
    }

    *__error() = v4;
  }

  dispatch_group_leave(*(*(*(a1 + 40) + 8) + 40));
}

void ___remote_service_install_file_recv_block_invoke_35(uint64_t a1, int a2)
{
  v4 = *__error();
  v5 = _remote_service_log();
  v6 = v5;
  if (a2)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v7[0] = 67109120;
      v7[1] = a2;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "im4m file transfer: %{darwin.errno}d", v7, 8u);
    }

    *__error() = v4;
    *(*(*(a1 + 32) + 8) + 24) = a2;
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v7[0]) = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "im4m file transfer [no error]", v7, 2u);
    }

    *__error() = v4;
  }

  dispatch_group_leave(*(*(*(a1 + 40) + 8) + 40));
}

void ___remote_service_install_file_recv_block_invoke_36(uint64_t a1, int a2)
{
  v4 = *__error();
  v5 = _remote_service_log();
  v6 = v5;
  if (a2)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v7[0] = 67109120;
      v7[1] = a2;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "info file transfer: %{darwin.errno}d", v7, 8u);
    }

    *__error() = v4;
    *(*(*(a1 + 32) + 8) + 24) = a2;
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v7[0]) = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "info file transfer [no error]", v7, 2u);
    }

    *__error() = v4;
  }

  dispatch_group_leave(*(*(*(a1 + 40) + 8) + 40));
}

void ___remote_service_install_file_recv_block_invoke_37(uint64_t a1, int a2)
{
  v4 = *__error();
  v5 = _remote_service_log();
  v6 = v5;
  if (a2)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v7[0] = 67109120;
      v7[1] = a2;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "volume hash file transfer: %{darwin.errno}d", v7, 8u);
    }

    *__error() = v4;
    *(*(*(a1 + 32) + 8) + 24) = a2;
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v7[0]) = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "volume hash file transfer [no error]", v7, 2u);
    }

    *__error() = v4;
  }

  dispatch_group_leave(*(*(*(a1 + 40) + 8) + 40));
}

uint64_t ___remote_service_install_file_recv_block_invoke_38(uint64_t a1)
{
  v2 = openat(*(a1 + 96), *(cryptex_asset_types[*(a1 + 64)] + 40), 0, 438);
  v3 = _remote_service_log();
  bzero(__str, 0x400uLL);
  memset(&v59, 0, sizeof(v59));
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    if (fstat(v2, &v59) == -1)
    {
      v8 = *__error();
      v9 = v3;
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v10 = *__error();
        *buf = 136315650;
        v61 = "imagefd_r";
        v62 = 1024;
        v63 = v2;
        v64 = 1024;
        LODWORD(v65) = v10;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%s fd[%d] : [invalid descriptor]: %{darwin.errno}d", buf, 0x18u);
      }

      *__error() = v8;
    }

    else
    {
      if (fcntl(v2, 50, __str))
      {
        v4 = __error();
        v5 = strerror(*v4);
        snprintf(__str, 0x400uLL, "[%s]", v5);
      }

      v6 = v59.st_mode >> 12;
      if (v6 == 7)
      {
        v7 = "[unknown]";
      }

      else
      {
        v7 = off_1000734F8[v6 ^ 8];
      }

      v11 = os_flagset_copy_string();
      v12 = *__error();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136316418;
        v61 = "imagefd_r";
        v62 = 1024;
        v63 = v2;
        v64 = 2080;
        v65 = v7;
        v66 = 2048;
        st_size = v59.st_size;
        v68 = 2080;
        v69 = v11;
        v70 = 2080;
        v71 = __str;
        _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "%s fd[%d]: type = %s, size = %lld, flags = %s, path = %s", buf, 0x3Au);
      }

      *__error() = v12;
      free(v11);
    }
  }

  v13 = openat(*(a1 + 96), *(*(a1 + 72) + 40), 514, 438);
  v14 = _remote_service_log();
  bzero(__str, 0x400uLL);
  memset(&v59, 0, sizeof(v59));
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    if (fstat(v13, &v59) == -1)
    {
      v19 = *__error();
      v20 = v14;
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v21 = *__error();
        *buf = 136315650;
        v61 = "tcfd_r";
        v62 = 1024;
        v63 = v13;
        v64 = 1024;
        LODWORD(v65) = v21;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "%s fd[%d] : [invalid descriptor]: %{darwin.errno}d", buf, 0x18u);
      }

      *__error() = v19;
    }

    else
    {
      if (fcntl(v13, 50, __str))
      {
        v15 = __error();
        v16 = strerror(*v15);
        snprintf(__str, 0x400uLL, "[%s]", v16);
      }

      v17 = v59.st_mode >> 12;
      if (v17 == 7)
      {
        v18 = "[unknown]";
      }

      else
      {
        v18 = off_1000734F8[v17 ^ 8];
      }

      v22 = os_flagset_copy_string();
      v23 = *__error();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136316418;
        v61 = "tcfd_r";
        v62 = 1024;
        v63 = v13;
        v64 = 2080;
        v65 = v18;
        v66 = 2048;
        st_size = v59.st_size;
        v68 = 2080;
        v69 = v22;
        v70 = 2080;
        v71 = __str;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "%s fd[%d]: type = %s, size = %lld, flags = %s, path = %s", buf, 0x3Au);
      }

      *__error() = v23;
      free(v22);
    }
  }

  v24 = openat(*(a1 + 96), *(&_cryptex_asset_type_im4m + 5), 514, 438);
  v25 = _remote_service_log();
  bzero(__str, 0x400uLL);
  memset(&v59, 0, sizeof(v59));
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
  {
    if (fstat(v24, &v59) == -1)
    {
      v30 = *__error();
      v31 = v25;
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        v32 = *__error();
        *buf = 136315650;
        v61 = "im4mfd_r";
        v62 = 1024;
        v63 = v24;
        v64 = 1024;
        LODWORD(v65) = v32;
        _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, "%s fd[%d] : [invalid descriptor]: %{darwin.errno}d", buf, 0x18u);
      }

      *__error() = v30;
    }

    else
    {
      if (fcntl(v24, 50, __str))
      {
        v26 = __error();
        v27 = strerror(*v26);
        snprintf(__str, 0x400uLL, "[%s]", v27);
      }

      v28 = v59.st_mode >> 12;
      if (v28 == 7)
      {
        v29 = "[unknown]";
      }

      else
      {
        v29 = off_1000734F8[v28 ^ 8];
      }

      v33 = os_flagset_copy_string();
      v34 = *__error();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136316418;
        v61 = "im4mfd_r";
        v62 = 1024;
        v63 = v24;
        v64 = 2080;
        v65 = v29;
        v66 = 2048;
        st_size = v59.st_size;
        v68 = 2080;
        v69 = v33;
        v70 = 2080;
        v71 = __str;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEBUG, "%s fd[%d]: type = %s, size = %lld, flags = %s, path = %s", buf, 0x3Au);
      }

      *__error() = v34;
      free(v33);
    }
  }

  if (*(a1 + 32))
  {
    v35 = openat(*(a1 + 96), *(*(a1 + 80) + 40), 514, 438);
    v36 = _remote_service_log();
    bzero(__str, 0x400uLL);
    memset(&v59, 0, sizeof(v59));
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
    {
      if (fstat(v35, &v59) == -1)
      {
        v41 = *__error();
        v42 = v36;
        if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
        {
          v43 = *__error();
          *buf = 136315650;
          v61 = "infofd_r";
          v62 = 1024;
          v63 = v35;
          v64 = 1024;
          LODWORD(v65) = v43;
          _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_ERROR, "%s fd[%d] : [invalid descriptor]: %{darwin.errno}d", buf, 0x18u);
        }

        *__error() = v41;
      }

      else
      {
        if (fcntl(v35, 50, __str))
        {
          v37 = __error();
          v38 = strerror(*v37);
          snprintf(__str, 0x400uLL, "[%s]", v38);
        }

        v39 = v59.st_mode >> 12;
        if (v39 == 7)
        {
          v40 = "[unknown]";
        }

        else
        {
          v40 = off_1000734F8[v39 ^ 8];
        }

        v44 = os_flagset_copy_string();
        v45 = *__error();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136316418;
          v61 = "infofd_r";
          v62 = 1024;
          v63 = v35;
          v64 = 2080;
          v65 = v40;
          v66 = 2048;
          st_size = v59.st_size;
          v68 = 2080;
          v69 = v44;
          v70 = 2080;
          v71 = __str;
          _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEBUG, "%s fd[%d]: type = %s, size = %lld, flags = %s, path = %s", buf, 0x3Au);
        }

        *__error() = v45;
        free(v44);
      }
    }
  }

  if (*(a1 + 40))
  {
    v46 = openat(*(a1 + 96), *(*(a1 + 88) + 40), 514, 438);
    v47 = _remote_service_log();
    bzero(__str, 0x400uLL);
    memset(&v59, 0, sizeof(v59));
    if (os_log_type_enabled(v47, OS_LOG_TYPE_DEBUG))
    {
      if (fstat(v46, &v59) == -1)
      {
        v52 = *__error();
        v53 = v47;
        if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
        {
          v54 = *__error();
          *buf = 136315650;
          v61 = "volhashfd_r";
          v62 = 1024;
          v63 = v46;
          v64 = 1024;
          LODWORD(v65) = v54;
          _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_ERROR, "%s fd[%d] : [invalid descriptor]: %{darwin.errno}d", buf, 0x18u);
        }

        *__error() = v52;
      }

      else
      {
        if (fcntl(v46, 50, __str))
        {
          v48 = __error();
          v49 = strerror(*v48);
          snprintf(__str, 0x400uLL, "[%s]", v49);
        }

        v50 = v59.st_mode >> 12;
        if (v50 == 7)
        {
          v51 = "[unknown]";
        }

        else
        {
          v51 = off_1000734F8[v50 ^ 8];
        }

        v55 = os_flagset_copy_string();
        v56 = *__error();
        if (os_log_type_enabled(v47, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136316418;
          v61 = "volhashfd_r";
          v62 = 1024;
          v63 = v46;
          v64 = 2080;
          v65 = v51;
          v66 = 2048;
          st_size = v59.st_size;
          v68 = 2080;
          v69 = v55;
          v70 = 2080;
          v71 = __str;
          _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEBUG, "%s fd[%d]: type = %s, size = %lld, flags = %s, path = %s", buf, 0x3Au);
        }

        *__error() = v56;
        free(v55);
      }
    }
  }

  v57 = *(*(*(a1 + 56) + 8) + 24);
  return (*(*(*(*(a1 + 48) + 8) + 40) + 16))();
}

void ___remote_service_get_queue_block_invoke(id a1)
{
  v3 = daemon_copy();
  v1 = daemon_get_xpc_queue(v3);
  v2 = _remote_service_get_queue_queue;
  _remote_service_get_queue_queue = v1;
}

void _remote_service_install_cryptex_continue(void *a1, void *a2, void *a3, uint64_t a4)
{
  v7 = a1;
  v8 = a2;
  v9 = a3;
  v18[0] = 0;
  v18[1] = v18;
  v18[2] = 0x2020000000;
  v18[3] = a4;
  v10 = *(a4 + 64);
  if (v9)
  {
    v11 = *__error();
    v12 = _remote_service_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v20 = v9;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "installation failed: %@", buf, 0xCu);
    }

    *__error() = v11;
    v13 = _remote_service_get_queue();
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = ___remote_service_install_cryptex_continue_block_invoke;
    block[3] = &unk_1000733E8;
    v15 = v10;
    v16 = v9;
    v17 = v18;
    dispatch_async(v13, block);
  }

  else
  {
    codex_bootstrap(v7, v8, a4, _remote_service_install_cryptex_continue2);
  }

  _Block_object_dispose(v18, 8);
}

void sub_10002A9F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void _remote_service_install_cryptex_continue2(void *a1, void *a2, const void *a3, uint64_t a4)
{
  v7 = a1;
  v8 = a2;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = a4;
  v9 = *(a4 + 64);
  if (a3)
  {
    v10 = *__error();
    v11 = _remote_service_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v23 = a3;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "bootstrap failed, unbootstrapping: %@", buf, 0xCu);
    }

    *__error() = v10;
    v12 = CFRetain(a3);
    *(v19[3] + 16) = v12;
    codex_unbootstrap(v7, v8, 1uLL, a4, _remote_service_install_cryptex_failure_unbootstrap_callback);
  }

  else
  {
    v13 = _remote_service_get_queue();
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = ___remote_service_install_cryptex_continue2_block_invoke;
    block[3] = &unk_1000733E8;
    v15 = v8;
    v16 = v9;
    v17 = &v18;
    dispatch_async(v13, block);
  }

  _Block_object_dispose(&v18, 8);
}

void sub_10002ABF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void ___remote_service_install_cryptex_continue_block_invoke(uint64_t a1)
{
  reply_with_cferr = _xpc_create_reply_with_cferr(*(a1 + 32), 0, *(a1 + 40));
  _remote_service_send_reply(reply_with_cferr);
  pipeline_start_state_destroy((*(*(a1 + 48) + 8) + 24));
}

void _remote_service_install_cryptex_failure_unbootstrap_callback(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = a2;
  v8 = a1;
  v9 = *__error();
  v10 = _remote_service_log();
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
  codex_uninstall(v8, v7, a4, _remote_service_install_cryptex_failure_uninstall_callback);
}

void ___remote_service_install_cryptex_continue2_block_invoke(uint64_t a1)
{
  empty = xpc_dictionary_create_empty();
  v3 = *(a1 + 32);
  v4 = xpc_dictionary_create_empty();
  attr = quire_get_attr(v3);

  xpc_dictionary_set_string(v4, "remote-cryptex-identifier", *attr);
  xpc_dictionary_set_string(v4, "remote-cryptex-version", **(attr + 16));
  xpc_dictionary_set_value(empty, "remote-cryptex", v4);
  reply_with_cferr = _xpc_create_reply_with_cferr(*(a1 + 40), empty, 0);
  _remote_service_send_reply(reply_with_cferr);
  pipeline_start_state_destroy((*(*(a1 + 48) + 8) + 24));
}

void _remote_service_install_cryptex_failure_uninstall_callback(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = a1;
  v8 = a2;
  v19[0] = 0;
  v19[1] = v19;
  v19[2] = 0x2020000000;
  v19[3] = a4;
  v9 = *(a4 + 64);
  if (a3)
  {
    v10 = *__error();
    v11 = _remote_service_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v21 = a3;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "uninstall: %@", buf, 0xCu);
    }

    *__error() = v10;
  }

  else
  {
    v12 = *__error();
    v13 = _remote_service_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "uninstall [no error]", buf, 2u);
    }

    *__error() = v12;
  }

  v14 = _remote_service_get_queue();
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = ___remote_service_install_cryptex_failure_uninstall_callback_block_invoke;
  v16[3] = &unk_100073410;
  v17 = v9;
  v18 = v19;
  v15 = v9;
  dispatch_async(v14, v16);

  _Block_object_dispose(v19, 8);
}

void sub_10002B08C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void ___remote_service_install_cryptex_failure_uninstall_callback_block_invoke(uint64_t a1)
{
  v2 = *(*(*(*(a1 + 40) + 8) + 24) + 16);
  reply_with_cferr = _xpc_create_reply_with_cferr(*(a1 + 32), 0, v2);
  _remote_service_send_reply(reply_with_cferr);
  pipeline_start_state_destroy((*(*(a1 + 40) + 8) + 24));

  if (v2)
  {

    CFRelease(v2);
  }
}

void sub_10002B138(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    CFRelease(v1);
  }

  _Unwind_Resume(exception_object);
}

void ___remote_service_uninstall_block_invoke(uint64_t a1)
{
  v2 = codex_copy_quire(*(*(*(a1 + 32) + 8) + 40), *(a1 + 48), *(a1 + 56));
  if (v2)
  {
    codex_unbootstrap(*(*(*(a1 + 32) + 8) + 40), v2, *(a1 + 64), *(*(*(a1 + 40) + 8) + 40), _remote_service_uninstall_continue);
  }

  else
  {
    v3 = *__error();
    v4 = _remote_service_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = *(a1 + 48);
      *buf = 136315394;
      v10 = v5;
      v11 = 1024;
      v12 = 2;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "failed to find cryptex with identifier %s: %{darwin.errno}d", buf, 0x12u);
    }

    *__error() = v3;
    v6 = _remote_service_get_queue();
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = ___remote_service_uninstall_block_invoke_74;
    v7[3] = &unk_100073438;
    v7[4] = *(a1 + 40);
    v8 = 2;
    dispatch_async(v6, v7);
  }
}

void _remote_service_uninstall_continue(void *a1, void *a2, uint64_t a3, void *a4)
{
  v7 = a4;
  v8 = a2;
  v9 = a1;
  v10 = *__error();
  v11 = _remote_service_log();
  v12 = v11;
  if (a3)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v17 = 138412290;
      v18 = a3;
      v13 = "unbootstrap: %@";
      v14 = v12;
      v15 = OS_LOG_TYPE_ERROR;
      v16 = 12;
LABEL_6:
      _os_log_impl(&_mh_execute_header, v14, v15, v13, &v17, v16);
    }
  }

  else if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(v17) = 0;
    v13 = "unbootstrap [no error]";
    v14 = v12;
    v15 = OS_LOG_TYPE_DEBUG;
    v16 = 2;
    goto LABEL_6;
  }

  *__error() = v10;
  codex_uninstall(v9, v8, v7, _remote_service_uninstall_continue2);
}

void ___remote_service_uninstall_block_invoke_74(uint64_t a1)
{
  reply = _xpc_create_reply(*(*(*(a1 + 32) + 8) + 40), 0, *(a1 + 40));
  _remote_service_send_reply(reply);
}

void _remote_service_uninstall_continue2(uint64_t a1, uint64_t a2, const void *a3, void *a4)
{
  if (a3)
  {
    TopLevelPosixError = _CFErrorGetTopLevelPosixError(a3);
    v7 = *__error();
    v8 = _remote_service_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v15 = a3;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "uninstall: %@", buf, 0xCu);
    }
  }

  else
  {
    v7 = *__error();
    v8 = _remote_service_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "uninstall [no error]", buf, 2u);
    }

    TopLevelPosixError = 0;
  }

  *__error() = v7;
  v9 = _remote_service_get_queue();
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = ___remote_service_uninstall_continue2_block_invoke;
  v11[3] = &unk_100073488;
  v12 = a4;
  v13 = TopLevelPosixError;
  v10 = a4;
  dispatch_async(v9, v11);
}

void ___remote_service_uninstall_continue2_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  empty = xpc_dictionary_create_empty();
  reply = _xpc_create_reply(v2, empty, *(a1 + 40));

  _remote_service_send_reply(reply);
}

void ___remote_service_copy_installed_block_invoke(uint64_t a1)
{
  v2 = codex_copy_system();
  codex_barrier(v2, *(a1 + 32), _remote_service_list_continue);
}

void _remote_service_list_continue(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = dispatch_group_create();
  dispatch_group_enter(v5);
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = ___remote_service_list_continue_block_invoke;
  v14[3] = &unk_1000734B0;
  v15 = v5;
  v6 = xpc_array_create_empty();
  v16 = v6;
  v7 = v5;
  codex_installed_cryptex_apply(v4, v14);

  v8 = _remote_service_get_queue();
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = ___remote_service_list_continue_block_invoke_4;
  v11[3] = &unk_1000734D8;
  v12 = v6;
  v13 = v3;
  v9 = v3;
  v10 = v6;
  dispatch_group_notify(v7, v8, v11);

  dispatch_group_leave(v7);
}

uint64_t ___remote_service_list_continue_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  dispatch_group_enter(*(a1 + 32));
  v6 = *(a1 + 40);
  v7 = *(a1 + 32);
  v4 = v3;
  cryptex_async();

  return 1;
}

void ___remote_service_list_continue_block_invoke_2(uint64_t a1)
{
  attr = quire_get_attr(*(a1 + 32));
  empty = xpc_dictionary_create_empty();
  xpc_dictionary_set_string(empty, "remote-cryptex-identifier", *attr);
  xpc_dictionary_set_string(empty, "remote-cryptex-version", **(attr + 16));
  v4 = daemon_get_main_queue();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = ___remote_service_list_continue_block_invoke_3;
  block[3] = &unk_100071FD0;
  v7 = *(a1 + 40);
  v8 = empty;
  v9 = *(a1 + 48);
  v5 = empty;
  dispatch_async(v4, block);
}

void ___remote_service_list_continue_block_invoke_3(uint64_t a1)
{
  xpc_array_append_value(*(a1 + 32), *(a1 + 40));
  v2 = *(a1 + 48);

  dispatch_group_leave(v2);
}

void ___remote_service_list_continue_block_invoke_4(uint64_t a1)
{
  empty = xpc_dictionary_create_empty();
  xpc_dictionary_set_value(empty, "remote-cryptex-array", *(a1 + 32));
  reply = _xpc_create_reply(*(a1 + 40), empty, 0);
  _remote_service_send_reply(reply);
}

uint64_t hdi_attach(unsigned int *a1, CFTypeRef *a2)
{
  connect = 0;
  v66 = 0;
  v65 = 0u;
  v64 = 0u;
  v63 = 0u;
  v62 = 0u;
  v61 = 0u;
  v60 = 0u;
  v59 = 0u;
  v58 = 0u;
  v57 = 0u;
  v56 = 0u;
  v55 = 0u;
  v54 = 0u;
  v53 = 0u;
  v52 = 0u;
  v51 = 0u;
  inputStruct = 0x1BEEFFEEDLL;
  outputStruct = 0;
  outputStructCnt = 4;
  MutableForCFTypes = _CFDictionaryCreateMutableForCFTypes();
  _CFCreateAssertImpl(MutableForCFTypes);
  v5 = *(a1 + 2);
  if (v5)
  {
    v6 = _CFStringCreateFromUTF8String(v5);
    cf = 0;
  }

  else
  {
    v7 = CFUUIDCreate(0);
    _CFCreateAssertImpl(v7);
    cf = v7;
    v6 = CFUUIDCreateString(0, v7);
    _CFCreateAssertImpl(v6);
  }

  bzero(__s, 0x400uLL);
  CFDictionarySetValue(MutableForCFTypes, @"hdik-unique-identifier", v6);
  CFDictionarySetValue(MutableForCFTypes, @"autodiskmount", kCFBooleanFalse);
  if (a1[8])
  {
    bzero(__str, 0x400uLL);
    v8 = **(a1 + 1);
    v9 = realpath_np();
    if (v9)
    {
      v10 = v9;
      v11 = *__error();
      v12 = *(a1 + 261);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        LODWORD(v47) = v10;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "realpath_np shdwfd: %{darwin.errno}d", buf, 8u);
      }

      v13 = 0;
      v14 = 0;
      Data = 0;
      v16 = 0;
      *__error() = v11;
      goto LABEL_17;
    }

    snprintf(__str, 0x400uLL, "%s/%s", __str, "shadow");
    v17 = *__error();
    v18 = *(a1 + 261);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315138;
      v47 = __str;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEBUG, "shdwpath = %s", buf, 0xCu);
    }

    *__error() = v17;
    v19 = strlen(__str);
    v14 = CFDataCreate(0, __str, v19);
    _CFCreateAssertImpl(v14);
    CFDictionarySetValue(MutableForCFTypes, @"shadow-path", v14);
  }

  else
  {
    CFDictionarySetValue(MutableForCFTypes, @"write-protected", kCFBooleanTrue);
    v14 = 0;
  }

  v20 = *a1;
  v21 = realpath_np();
  if (v21)
  {
    v10 = v21;
    v22 = *__error();
    v23 = *(a1 + 261);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      *__str = 67109120;
      *&__str[4] = v10;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "realpath_np hdi_dmgfd: %{darwin.errno}d", __str, 8u);
    }

    v13 = 0;
    Data = 0;
    v16 = 0;
    *__error() = v22;
  }

  else
  {
    v25 = strlen(__s);
    v14 = CFDataCreate(0, __s, v25);
    _CFCreateAssertImpl(v14);
    CFDictionarySetValue(MutableForCFTypes, @"image-path", v14);
    v13 = _CFNumberCreateFromInt32(*a1);
    _CFCreateAssertImpl(v13);
    CFDictionarySetValue(MutableForCFTypes, @"image-fd", v13);
    v26 = *__error();
    v27 = *(a1 + 261);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
    {
      *__str = 138412290;
      *&__str[4] = MutableForCFTypes;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEBUG, "attach args = %@", __str, 0xCu);
    }

    *__error() = v26;
    Data = CFPropertyListCreateData(0, MutableForCFTypes, kCFPropertyListXMLFormat_v1_0, 0, 0);
    _CFCreateAssertImpl(Data);
    BytePtr = CFDataGetBytePtr(Data);
    Length = CFDataGetLength(Data);
    if (Length < 0)
    {
      _CFStringCopyUTF8String_cold_1();
    }

    *&v51 = BytePtr;
    *(&v51 + 1) = Length;
    v30 = IOServiceMatching("IOHDIXController");
    MatchingService = IOServiceGetMatchingService(0, v30);
    if (MatchingService)
    {
      v16 = MatchingService;
      if (IOServiceOpen(MatchingService, mach_task_self_, 0, &connect))
      {
        v32 = *__error();
        v33 = *(a1 + 261);
        if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
        {
          *__str = 67109120;
          *&__str[4] = 5;
          _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_ERROR, "IOServiceOpen: %{mach.errno}x", __str, 8u);
        }

        *__error() = v32;
        v10 = 61;
      }

      else
      {
        v36 = IOConnectCallStructMethod(connect, 0, &inputStruct, 0x100uLL, &outputStruct, &outputStructCnt);
        if (v36)
        {
          v37 = v36;
          v38 = *__error();
          v39 = *(a1 + 261);
          if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
          {
            *__str = 67109120;
            *&__str[4] = v37;
            _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_ERROR, "kIOHDIXControllerCreateDriveMethod: %{mach.errno}x", __str, 8u);
          }

          *__error() = v38;
          v10 = 83;
        }

        else
        {
          if (outputStructCnt != 4)
          {
            hdi_attach_cold_1(buf, __str);
          }

          v40 = *__error();
          v41 = *(a1 + 261);
          if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
          {
            *__str = 67109120;
            *&__str[4] = outputStruct;
            _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEBUG, "drive number: %d", __str, 8u);
          }

          *__error() = v40;
          v10 = 0;
          *a2 = CFRetain(v6);
        }
      }
    }

    else
    {
      v34 = *__error();
      v35 = *(a1 + 261);
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        *__str = 136315138;
        *&__str[4] = "IOHDIXController";
        _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_ERROR, "could not find %s", __str, 0xCu);
      }

      v16 = 0;
      *__error() = v34;
      v10 = 78;
    }
  }

LABEL_17:
  if (connect && IOServiceClose(connect))
  {
    hdi_attach_cold_2(buf, __str);
  }

  if (v16 + 1 < 2)
  {
    if (!Data)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  mach_right_send_release();
  if (Data)
  {
LABEL_21:
    CFRelease(Data);
  }

LABEL_22:
  if (v14)
  {
    CFRelease(v14);
  }

  if (v13)
  {
    CFRelease(v13);
  }

  if (v6)
  {
    CFRelease(v6);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (MutableForCFTypes)
  {
    CFRelease(MutableForCFTypes);
  }

  return v10;
}

uint64_t hdi_find_attached(uint64_t a1, const void *a2, const char **a3, char *a4, char *a5)
{
  notification = 0;
  v33 = 0;
  cf = 0;
  v10 = IONotificationPortCreate(0);
  if (!v10)
  {
    hdi_find_attached_cold_4();
  }

  v11 = v10;
  v12 = IOServiceMatching("IOMedia");
  v13 = IOServiceAddMatchingNotification(v11, "IOServiceMatched", v12, 0, 0, &notification);
  v14 = *__error();
  v15 = *(a1 + 2088);
  if (v13)
  {
    if (os_log_type_enabled(*(a1 + 2088), OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      *&buf[4] = v13;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "IOServiceAddMatchingNotification: %{mach.errno}x", buf, 8u);
    }

    *__error() = v14;
    IONotificationPortDestroy(v11);
    v16 = 0xFFFFFFFFLL;
  }

  else
  {
    v31 = a3;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      *&buf[4] = a2;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "looking for drive: %@", buf, 0xCu);
    }

    v32 = 2;
    *__error() = v14;
    do
    {
      v17 = IOIteratorNext(notification);
      if (!v17)
      {
        break;
      }

      v18 = v17;
      v51 = 0u;
      memset(v52, 0, sizeof(v52));
      v49 = 0u;
      v50 = 0u;
      v47 = 0u;
      v48 = 0u;
      v45 = 0u;
      v46 = 0u;
      v44 = 0u;
      v42 = 0u;
      v43 = 0u;
      v40 = 0u;
      v41 = 0u;
      *buf = 0u;
      v39 = 0u;
      v19 = IORegistryEntrySearchCFProperty(v17, "IOService", @"hdik-unique-identifier", 0, 3u);
      if (v19)
      {
        v20 = v19;
        v21 = *__error();
        v22 = *(a1 + 2088);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
        {
          *v36 = 138412290;
          v37 = v20;
          _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEBUG, "found property: %@", v36, 0xCu);
        }

        *__error() = v21;
        if (!CFEqual(a2, v20) || IOObjectConformsTo(v18, "AppleAPFSVolume") || IOObjectConformsTo(v18, "AppleAPFSMedia") || IOObjectConformsTo(v18, "AppleAPFSContainerScheme") || IOObjectConformsTo(v18, "AppleAPFSContainer"))
        {
          v23 = 0;
        }

        else
        {
          v24 = _hdi_copy_device_nodes(*(a1 + 2088), v18, v31, &cf, &v33);
          if (v24)
          {
            v32 = v24;
            v25 = *__error();
            v26 = *(a1 + 2088);
            if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
            {
              *v36 = 67109120;
              LODWORD(v37) = v32;
              _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "failed to get device nodes: %{darwin.errno}d", v36, 8u);
            }

            v23 = 0;
            *__error() = v25;
          }

          else
          {
            UTF8String = _CFStringGetUTF8String(cf, buf, 255);
            if (!UTF8String)
            {
              hdi_find_attached_cold_1();
            }

            snprintf(a4, 0x400uLL, "%s%s", "/dev/", UTF8String);
            v28 = _CFStringGetUTF8String(v33, buf, 255);
            if (!v28)
            {
              hdi_find_attached_cold_1();
            }

            snprintf(a5, 0x400uLL, "%s%s", "/dev/", v28);
            v32 = 0;
            v23 = 1;
          }
        }

        CFRelease(v20);
      }

      else
      {
        v23 = 0;
      }

      if (IOObjectRelease(v18))
      {
        hdi_find_attached_cold_3(v36, buf);
      }
    }

    while (!v23);
    v29 = v33;
    IONotificationPortDestroy(v11);
    if (v29)
    {
      CFRelease(v29);
    }

    v16 = v32;
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v16;
}

uint64_t _hdi_copy_device_nodes(NSObject *a1, io_object_t object, const char **a3, void *a4, void *a5)
{
  v8 = object;
  if (IOObjectRetain(object))
  {
    _hdi_copy_device_nodes_cold_1(&v47, buf);
  }

  entry = v8;
  if (IOObjectRetain(v8))
  {
    _hdi_copy_device_nodes_cold_1(&v47, buf);
  }

  objecta = v8;
  if (_IORegistryExchangeWithFirstChildOfClass(&objecta, "AppleAPFSContainerScheme") || _IORegistryExchangeWithFirstChildOfClass(&objecta, "AppleAPFSMedia"))
  {
    v10 = "hfs";
  }

  else
  {
    v10 = "hfs";
    if (!_IORegistryExchangeWithFirstChildOfClass(&objecta, "AppleAPFSContainer") && !_IORegistryExchangeWithFirstChildOfClass(&objecta, "AppleAPFSVolume"))
    {
      v10 = "apfs";
      v8 = objecta;
    }
  }

  v11 = kCFAllocatorDefault;
  CFProperty = IORegistryEntryCreateCFProperty(v8, @"BSD Name", kCFAllocatorDefault, 0);
  if (!CFProperty || (v13 = CFProperty, v14 = CFGetTypeID(CFProperty), v14 != CFStringGetTypeID()))
  {
    _hdi_copy_device_nodes_cold_6();
  }

  v40 = v10;
  v42 = a3;
  v43 = a5;
  v15 = *__error();
  if (os_log_type_enabled(a1, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    *&buf[4] = v13;
    _os_log_impl(&_mh_execute_header, a1, OS_LOG_TYPE_DEBUG, "subdevice node = %@", buf, 0xCu);
  }

  v41 = v13;
  v44 = 0;
  *__error() = v15;
  v16 = kCFBooleanTrue;
  v17 = @"Whole";
  do
  {
    v18 = IORegistryEntryCreateCFProperty(entry, v17, v11, 0);
    v19 = v18;
    if (v18)
    {
      v20 = CFGetTypeID(v18);
      if (v20 == CFBooleanGetTypeID())
      {
        v21 = v19;
      }

      else
      {
        v21 = 0;
      }
    }

    else
    {
      v21 = 0;
    }

    v22 = *__error();
    v23 = os_log_type_enabled(a1, OS_LOG_TYPE_DEBUG);
    if (v21 == v16)
    {
      if (v23)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, a1, OS_LOG_TYPE_DEBUG, "found whole disk node", buf, 2u);
      }

      *__error() = v22;
      v30 = IORegistryEntryCreateCFProperty(entry, @"BSD Name", v11, 0);
      if (v30)
      {
        v31 = v30;
        v32 = CFGetTypeID(v30);
        if (v32 == CFStringGetTypeID())
        {
          v33 = v31;
        }

        else
        {
          v33 = 0;
        }

        if (!a4)
        {
LABEL_57:
          _hdi_copy_device_nodes_cold_5();
        }
      }

      else
      {
        v33 = 0;
        if (!a4)
        {
          goto LABEL_57;
        }
      }

      v38 = *__error();
      if (os_log_type_enabled(a1, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        *&buf[4] = v33;
        _os_log_impl(&_mh_execute_header, a1, OS_LOG_TYPE_DEBUG, "devnode = %@", buf, 0xCu);
      }

      v44 = v33;
      v28 = 0;
      v29 = 0;
      *__error() = v38;
      v24 = entry;
    }

    else
    {
      if (v23)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, a1, OS_LOG_TYPE_DEBUG, "not whole disk node", buf, 2u);
      }

      *__error() = v22;
      v24 = entry;
      ParentEntry = IORegistryEntryGetParentEntry(entry, "IOService", &entry);
      if (ParentEntry)
      {
        v26 = ParentEntry;
        if (ParentEntry == -536870208)
        {
          v27 = *__error();
          if (os_log_type_enabled(a1, OS_LOG_TYPE_DEBUG))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, a1, OS_LOG_TYPE_DEBUG, "found root node, stopping", buf, 2u);
          }

          v28 = 0;
          *__error() = v27;
          v29 = 2;
        }

        else
        {
          v34 = v16;
          v35 = v17;
          v36 = a4;
          v37 = *__error();
          if (os_log_type_enabled(a1, OS_LOG_TYPE_ERROR))
          {
            *buf = 67109120;
            *&buf[4] = v26;
            _os_log_impl(&_mh_execute_header, a1, OS_LOG_TYPE_ERROR, "IORegistryEntryGetParentEntry: %{mach.errno}x", buf, 8u);
          }

          v28 = 0;
          *__error() = v37;
          v29 = 83;
          a4 = v36;
          v17 = v35;
          v16 = v34;
          v11 = kCFAllocatorDefault;
        }
      }

      else
      {
        v29 = 35;
        v28 = 1;
      }
    }

    if (v19)
    {
      CFRelease(v19);
    }

    if (v24 && IOObjectRelease(v24))
    {
      hdi_find_attached_cold_3(&v47, buf);
    }
  }

  while ((v28 & 1) != 0);
  if (v21 == v16)
  {
    if (v42)
    {
      *v42 = v40;
    }

    *a4 = v44;
    *v43 = v41;
  }

  if (objecta && IOObjectRelease(objecta))
  {
    hdi_find_attached_cold_3(&v47, buf);
  }

  return v29;
}

uint64_t hdi_mount(int *a1, int a2, uint64_t a3)
{
  v6 = *a1;
  v7 = os_log_create("com.apple.libcryptex", "hdi");
  v8 = v7;
  if (!*(a3 + 2088))
  {
    *(a3 + 2088) = v7;
  }

  if ((*a3 & 0x80000000) != 0)
  {
    v12 = -1;
  }

  else
  {
    v9 = _hdi_mount_slow(a3);
    v10 = *__error();
    v11 = *(a3 + 2088);
    if (v9)
    {
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        *&buf[4] = v9;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "hdi_mount_slow: %{darwin.errno}d", buf, 8u);
      }

      *__error() = v10;
      goto LABEL_122;
    }

    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315138;
      *&buf[4] = a3 + 1057;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "attached as: %s", buf, 0xCu);
    }

    *__error() = v10;
    v12 = *(a3 + 4);
  }

  v13 = *(a3 + 24);
  if (!v13)
  {
    v14 = *__error();
    v20 = *(a3 + 2088);
    v9 = 22;
    if (!os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_116;
    }

    *buf = 67109120;
    *&buf[4] = 22;
    v17 = "FS type not specified: %{darwin.errno}d";
LABEL_114:
    v18 = v20;
    v19 = 8;
LABEL_115:
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, v17, buf, v19);
LABEL_116:
    *__error() = v14;
    if ((v12 & 0x80000000) == 0)
    {
      if (ioctl(v12, 0x20006415uLL))
      {
        v69 = *__error();
        v70 = *(a3 + 2088);
        if (os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
        {
          v71 = *__error();
          *buf = 67109120;
          *&buf[4] = v71;
          _os_log_impl(&_mh_execute_header, v70, OS_LOG_TYPE_ERROR, "failed to clean up device: %{darwin.errno}d", buf, 8u);
        }

        *__error() = v69;
      }

      *(a3 + 33) = 0;
      *(a3 + 1057) = 0;
      *(a3 + 4) = -1;
    }

    goto LABEL_122;
  }

  if (!strcmp(*(a3 + 24), "hfs"))
  {
    v89 = v6;
    v91 = v12;
    bzero(v102, 0x400uLL);
    v96 = 511;
    v93 = a3 + 1057;
    v94 = getuid();
    v95 = getgid();
    v97 = xmmword_1000593C0;
    v98 = 0;
    v21 = *__error();
    v22 = *(a3 + 2088);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315138;
      *&buf[4] = a3 + 1057;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEBUG, "mounting device = %s", buf, 0xCu);
    }

    *__error() = v21;
    if (os_log_type_enabled(*(a3 + 2088), OS_LOG_TYPE_DEBUG) && !realpath_np())
    {
      v23 = *__error();
      v24 = *(a3 + 2088);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315138;
        *&buf[4] = v102;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEBUG, "mount point = %s", buf, 0xCu);
      }

      *__error() = v23;
    }

    if (gettimeofday(0, &v97) == -1)
    {
      hdi_mount_cold_5(&__buf, buf);
    }

    v126 = 0u;
    v127 = 0u;
    v124 = 0u;
    v125 = 0u;
    v122 = 0u;
    v123 = 0u;
    v120 = 0u;
    v121 = 0u;
    v118 = 0u;
    v119 = 0u;
    v116 = 0u;
    v117 = 0u;
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
    v105 = 0u;
    memset(&__buf, 0, sizeof(__buf));
    v25 = open((a3 + 1057), 4);
    v26 = v25;
    v12 = v91;
    if (v25 < 0)
    {
      v9 = *__error();
      goto LABEL_106;
    }

    if (pread(v25, &__buf, 0x200uLL, 1024) < 162)
    {
      v9 = 96;
LABEL_107:
      if (close(v26) == -1)
      {
        daemon_init_cold_13(&v152, buf);
      }

LABEL_108:
      v67 = *__error();
      v68 = *(a3 + 2088);
      if (v9)
      {
        if (os_log_type_enabled(*(a3 + 2088), OS_LOG_TYPE_ERROR))
        {
          *buf = 67109120;
          *&buf[4] = v9;
          _os_log_impl(&_mh_execute_header, v68, OS_LOG_TYPE_ERROR, "could not get encoding: %{darwin.errno}d", buf, 8u);
        }

        *__error() = v67;
      }

      else
      {
        v73 = a2 | 0x100001;
        if (os_log_type_enabled(*(a3 + 2088), OS_LOG_TYPE_DEBUG))
        {
          v74 = *(a3 + 24);
          *buf = 136315650;
          *&buf[4] = v74;
          *&buf[12] = 1024;
          *&buf[14] = v89;
          *&buf[18] = 1024;
          *&buf[20] = v73;
          _os_log_impl(&_mh_execute_header, v68, OS_LOG_TYPE_DEBUG, "mount args: fs = %s, fd = %d, flags = %#x", buf, 0x18u);
        }

        *__error() = v67;
        v75 = *(a3 + 2088);
        bzero(buf, 0x400uLL);
        memset(&__buf, 0, sizeof(__buf));
        v42 = v89;
        if (os_log_type_enabled(v75, OS_LOG_TYPE_DEBUG))
        {
          if (fstat(v89, &__buf) == -1)
          {
            v80 = *__error();
            if (os_log_type_enabled(v75, OS_LOG_TYPE_ERROR))
            {
              v81 = *__error();
              v152.vfc_reserved1 = 136315650;
              *v152.vfc_name = "mntfd";
              *&v152.vfc_name[8] = 1024;
              *&v152.vfc_name[10] = v89;
              *&v152.vfc_name[14] = 1024;
              v152.vfc_typenum = v81;
              _os_log_impl(&_mh_execute_header, v75, OS_LOG_TYPE_ERROR, "%s fd[%d] : [invalid descriptor]: %{darwin.errno}d", &v152, 0x18u);
            }

            *__error() = v80;
          }

          else
          {
            if (fcntl(v89, 50, buf))
            {
              v76 = __error();
              v77 = strerror(*v76);
              snprintf(buf, 0x400uLL, "[%s]", v77);
            }

            v78 = __buf.st_mode >> 12;
            if (v78 == 7)
            {
              v79 = "[unknown]";
            }

            else
            {
              v79 = off_100073970[v78 ^ 8];
            }

            v82 = os_flagset_copy_string();
            v83 = *__error();
            if (os_log_type_enabled(v75, OS_LOG_TYPE_DEBUG))
            {
              v152.vfc_reserved1 = 136316418;
              *v152.vfc_name = "mntfd";
              *&v152.vfc_name[8] = 1024;
              *&v152.vfc_name[10] = v89;
              *&v152.vfc_name[14] = 2080;
              *&v152.vfc_typenum = v79;
              LOWORD(v152.vfc_flags) = 2048;
              *(&v152.vfc_flags + 2) = __buf.st_size;
              HIWORD(v152.vfc_reserved3) = 2080;
              v153 = v82;
              v154 = 2080;
              v155 = buf;
              _os_log_impl(&_mh_execute_header, v75, OS_LOG_TYPE_DEBUG, "%s fd[%d]: type = %s, size = %lld, flags = %s, path = %s", &v152, 0x3Au);
            }

            *__error() = v83;
            free(v82);
            v42 = v89;
          }
        }

        if (!fmount("hfs", v42, v73, &v93))
        {
          goto LABEL_146;
        }

        v9 = *__error();
        v84 = *__error();
        v85 = *(a3 + 2088);
        if (os_log_type_enabled(v85, OS_LOG_TYPE_ERROR))
        {
          *buf = 67109120;
          *&buf[4] = v9;
          _os_log_impl(&_mh_execute_header, v85, OS_LOG_TYPE_ERROR, "fmount: %{darwin.errno}d", buf, 8u);
        }

        *__error() = v84;
        v12 = v91;
        if (!v9)
        {
          goto LABEL_146;
        }
      }

      v14 = *__error();
      v20 = *(a3 + 2088);
      if (!os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_116;
      }

      *buf = 67109120;
      *&buf[4] = v9;
      v17 = "mount hfs failed: %{darwin.errno}d";
      goto LABEL_114;
    }

    v37 = bswap32(LOWORD(__buf.st_dev));
    v38 = HIWORD(v37);
    LOWORD(__buf.st_dev) = HIWORD(v37);
    LOWORD(__buf.st_lspare) = bswap32(LOWORD(__buf.st_lspare)) >> 16;
    v39 = bswap32(HIDWORD(__buf.st_blocks));
    HIDWORD(__buf.st_blocks) = v39;
    if (v38 != 18475 && v38 != 18520)
    {
      v47 = *__error();
      v48 = *(a3 + 2088);
      if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109376;
        *&buf[4] = LOWORD(__buf.st_dev);
        *&buf[8] = 1024;
        *&buf[10] = LOWORD(__buf.st_lspare);
        _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_ERROR, "filesystem unsupported or corrupt: drSigWord = %#hx, drEmbedSigWord = %#hx", buf, 0xEu);
      }

      *__error() = v47;
      v9 = 92;
      goto LABEL_107;
    }

    if (v39 >> 8 == 6647395)
    {
      v40 = v39;
      goto LABEL_97;
    }

    v129 = 1;
    *v128 = 3;
    memset(&v152, 0, sizeof(v152));
    v101 = -1;
    v100 = 4;
    if (getvfsbyname("hfs", &v152) == -1)
    {
      hdi_mount_cold_5(&v99, buf);
    }

    v128[1] = v152.vfc_typenum;
    if ((sysctl(v128, 3u, &v101, &v100, 0, 0) & 0x80000000) == 0)
    {
      *__error() = 0;
    }

    v43 = *__error();
    if (v43 && v43 != 45 && *__error())
    {
      hdi_mount_cold_1(&v99, buf);
    }

    v40 = v101;
    if ((v101 + 1) > 1)
    {
LABEL_97:
      if (v40 == 4)
      {
LABEL_98:
        v9 = 0;
        HIDWORD(v96) = v40;
      }

      else
      {
        v62 = -1;
        v63 = &qword_1000593F8;
        while (v62 != 36)
        {
          v64 = *v63;
          v63 += 3;
          ++v62;
          if (v64 == v40)
          {
            if (v62 < 0x25)
            {
              goto LABEL_98;
            }

            break;
          }
        }

        v65 = *__error();
        v66 = *(a3 + 2088);
        if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
        {
          *buf = 67109120;
          *&buf[4] = v40;
          _os_log_impl(&_mh_execute_header, v66, OS_LOG_TYPE_ERROR, "unsupported encoding: %u", buf, 8u);
        }

        *__error() = v65;
        v9 = 79;
        v12 = v91;
      }

LABEL_106:
      if (v26 == -1)
      {
        goto LABEL_108;
      }

      goto LABEL_107;
    }

    bzero(buf, 0x400uLL);
    v44 = getpwuid(0);
    if (!v44)
    {
      hdi_mount_cold_4(v128, &v152);
    }

    snprintf(buf, 0x400uLL, "%s/%s", v44->pw_dir, "/.CFUserTextEncoding");
    v45 = open(buf, 0);
    if ((v45 & 0x80000000) == 0)
    {
      *__error() = 0;
    }

    v88 = 0;
    v46 = *__error();
    if (v46 > 3)
    {
      if (v46 != 4 && v46 != 13)
      {
        goto LABEL_79;
      }
    }

    else
    {
      if (!v46)
      {
LABEL_80:
        v52 = read(v45, buf, 0x400uLL);
        if (v52)
        {
          v86 = v45;
          if (v52 < 0)
          {
            v57 = *__error();
            v58 = *(a3 + 2088);
            if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
            {
              v59 = *__error();
              v152.vfc_reserved1 = 67109120;
              *v152.vfc_name = v59;
              _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_ERROR, "error reading encoding file: %{darwin.errno}d", &v152, 8u);
            }

            v88 = 0;
            *__error() = v57;
          }

          else
          {
            buf[v52] = 0;
            v53 = *__error();
            v54 = *(a3 + 2088);
            if (os_log_type_enabled(v54, OS_LOG_TYPE_DEBUG))
            {
              v152.vfc_reserved1 = 136315138;
              *v152.vfc_name = buf;
              _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_DEBUG, "read encoding: %s", &v152, 0xCu);
            }

            *__error() = v53;
            v88 = strtol(buf, 0, 0);
          }

          v45 = v86;
        }

        else
        {
          v55 = *__error();
          v56 = *(a3 + 2088);
          if (os_log_type_enabled(v56, OS_LOG_TYPE_DEBUG))
          {
            LOWORD(v152.vfc_reserved1) = 0;
            _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_DEBUG, "encoding file empty", &v152, 2u);
          }

          v88 = 0;
          *__error() = v55;
        }

        goto LABEL_92;
      }

      if (v46 != 2)
      {
LABEL_79:
        if (*__error())
        {
          hdi_mount_cold_1(v128, &v152);
        }

        goto LABEL_80;
      }
    }

LABEL_92:
    v60 = *__error();
    v61 = *(a3 + 2088);
    if (os_log_type_enabled(v61, OS_LOG_TYPE_DEBUG))
    {
      v152.vfc_reserved1 = 67109120;
      *v152.vfc_name = v88;
      _os_log_impl(&_mh_execute_header, v61, OS_LOG_TYPE_DEBUG, "returning encoding: %u", &v152, 8u);
    }

    *__error() = v60;
    if (v45 != -1 && close(v45) == -1)
    {
      daemon_init_cold_13(v128, &v152);
    }

    v12 = v91;
    v40 = v88;
    goto LABEL_97;
  }

  if (strcmp(v13, "apfs"))
  {
    v14 = *__error();
    v15 = *(a3 + 2088);
    v9 = 22;
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_116;
    }

    v16 = *(a3 + 24);
    *buf = 136315394;
    *&buf[4] = v16;
    *&buf[12] = 1024;
    *&buf[14] = 22;
    v17 = "Invalid FS type: %s: %{darwin.errno}d";
    v18 = v15;
    v19 = 18;
    goto LABEL_115;
  }

  v27 = v6;
  v149 = 0;
  v147 = 0u;
  v148 = 0u;
  v146 = 0u;
  v145 = 0u;
  v144 = 0u;
  v143 = 0u;
  v142 = 0u;
  v141 = 0u;
  v140 = 0u;
  v139 = 0u;
  v138 = 0u;
  v137 = 0u;
  v136 = 0u;
  v135 = 0u;
  v134 = 0u;
  v133 = 0u;
  v132 = 0u;
  v131 = 0u;
  *&buf[12] = 0u;
  v28 = *(a3 + 2108);
  v29 = *(a3 + 2100);
  v90 = *(a3 + 2104);
  v87 = *(a3 + 2112);
  v103 = 0;
  memset(v102, 0, sizeof(v102));
  memset(&__buf, 0, 56);
  if (*(a3 + 32))
  {
    v30 = 0x100000;
  }

  else
  {
    v30 = 1048577;
  }

  v31 = v30 | a2;
  *buf = a3 + 1057;
  v150 = getuid();
  v151 = getgid();
  *&buf[16] = 1;
  *&buf[8] = v31;
  if (*(a3 + 2096) == 1)
  {
    file = _read_file(v28, v102);
    if (file)
    {
      v9 = file;
      v33 = *__error();
      v34 = *(a3 + 2088);
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        v152.vfc_reserved1 = 67109120;
        *v152.vfc_name = v9;
        v35 = "Failed to read im4m.: %{darwin.errno}d";
        v36 = v34;
LABEL_45:
        _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_ERROR, v35, &v152, 8u);
        goto LABEL_46;
      }

      goto LABEL_46;
    }

    v9 = _read_file(v29, &__buf);
    v33 = *__error();
    v41 = *(a3 + 2088);
    if (v9)
    {
      if (os_log_type_enabled(*(a3 + 2088), OS_LOG_TYPE_ERROR))
      {
        v152.vfc_reserved1 = 67109120;
        *v152.vfc_name = v9;
        v35 = "Failed to read root volume hash.: %{darwin.errno}d";
        v36 = v41;
        goto LABEL_45;
      }

LABEL_46:
      v42 = v27;
LABEL_72:
      *__error() = v33;
      goto LABEL_74;
    }

    v92 = v12;
    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
    {
      v152.vfc_reserved1 = 134217984;
      *v152.vfc_name = *(&v102[0] + 1);
      _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEBUG, "im4m len: %lu", &v152, 0xCu);
    }

    *__error() = v33;
    v49 = *__error();
    v50 = *(a3 + 2088);
    if (os_log_type_enabled(v50, OS_LOG_TYPE_DEBUG))
    {
      v152.vfc_reserved1 = 134217984;
      *v152.vfc_name = __buf.st_ino;
      _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEBUG, "im4p len: %lu", &v152, 0xCu);
    }

    *__error() = v49;
    *&buf[16] = 8;
    v12 = v92;
    v149 = __PAIR64__(v87, v90);
    v148 = v102[0];
    v147 = *&__buf.st_dev;
  }

  v42 = v27;
  if (fmount("apfs", v27, v31, buf))
  {
    v9 = *__error();
    v33 = *__error();
    v51 = *(a3 + 2088);
    if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
    {
      v152.vfc_reserved1 = 67109120;
      *v152.vfc_name = v9;
      _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_ERROR, "fmount: %{darwin.errno}d", &v152, 8u);
    }

    goto LABEL_72;
  }

  v9 = 0;
LABEL_74:
  buff_destroy(v102);
  buff_destroy(&__buf);
  if (v9)
  {
    v14 = *__error();
    v20 = *(a3 + 2088);
    if (!os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_116;
    }

    *buf = 67109120;
    *&buf[4] = v9;
    v17 = "mount apfs failed: %{darwin.errno}d";
    goto LABEL_114;
  }

LABEL_146:
  if (close(v42) == -1)
  {
    hdi_mount_cold_7(v102, buf);
  }

  v9 = 0;
  *a1 = -1;
LABEL_122:
  if (*(a3 + 2088) == v8)
  {
    *(a3 + 2088) = 0;
  }

  if (v8)
  {
    os_release(v8);
  }

  return v9;
}

uint64_t _hdi_mount_slow(uint64_t a1)
{
  cf = 0;
  bzero(v18, 0x400uLL);
  v2 = hdi_attach(a1, &cf);
  if (v2)
  {
    v3 = v2;
    v4 = *__error();
    v5 = *(a1 + 2088);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v17 = v3;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "attach failed: %{darwin.errno}d", buf, 8u);
    }

    *__error() = v4;
    v6 = cf;
    if (!cf)
    {
      return v3;
    }

LABEL_13:
    CFRelease(v6);
    return v3;
  }

  v6 = cf;
  attached = hdi_find_attached(a1, cf, (a1 + 24), v18, (a1 + 1057));
  if (attached)
  {
    v3 = attached;
    v8 = *__error();
    v9 = *(a1 + 2088);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v17 = v3;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "could not find attached media: %{darwin.errno}d", buf, 8u);
    }

    *__error() = v8;
    if (v6)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v10 = open(v18, 0);
    *(a1 + 4) = v10;
    if ((v10 & 0x80000000) == 0)
    {
      __strlcpy_chk();
      v3 = 0;
      if (!v6)
      {
        return v3;
      }

      goto LABEL_13;
    }

    v12 = *__error();
    v13 = *(a1 + 2088);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = *__error();
      *buf = 67109120;
      v17 = v14;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "open: %{darwin.errno}d", buf, 8u);
    }

    *__error() = v12;
    v3 = *__error();
    if (v6)
    {
      goto LABEL_13;
    }
  }

  return v3;
}

uint64_t hdi_copy_mounted(void *a1, void *a2, NSObject *a3)
{
  notification = 0;
  v6 = getfsstat(0, 0, 2);
  if ((v6 & 0x80000000) != 0)
  {
    v10 = *__error();
    v11 = *__error();
    if (os_log_type_enabled(a3, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      LODWORD(v45) = v10;
      _os_log_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "getfsstat: %{darwin.errno}d", buf, 8u);
    }

    v12 = __error();
    v13 = 0;
    goto LABEL_16;
  }

  v7 = v6;
  v8 = v6;
  if (_dispatch_is_multithreaded())
  {
    while (1)
    {
      v9 = malloc_type_calloc(v8, 0x878uLL, 0x8A375538uLL);
      if (v9)
      {
        break;
      }

      __os_temporary_resource_shortage();
    }
  }

  else
  {
    v9 = malloc_type_calloc(v8, 0x878uLL, 0x8709206FuLL);
    if (!v9)
    {
      hdi_copy_mounted_cold_1(v43, buf);
    }
  }

  v13 = v9;
  if (getfsstat(v9, 2168 * v7, 2) < 0)
  {
    v10 = *__error();
    v11 = *__error();
    if (os_log_type_enabled(a3, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      LODWORD(v45) = v10;
      _os_log_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "getfsstat: %{darwin.errno}d", buf, 8u);
    }

    v12 = __error();
LABEL_16:
    v15 = 0;
    *v12 = v11;
    goto LABEL_59;
  }

  if (_dispatch_is_multithreaded())
  {
    while (1)
    {
      v14 = malloc_type_calloc(v8, 0xDFEuLL, 0x8A375538uLL);
      if (v14)
      {
        break;
      }

      __os_temporary_resource_shortage();
    }
  }

  else
  {
    v14 = malloc_type_calloc(v8, 0xDFEuLL, 0x8709206FuLL);
    if (!v14)
    {
      hdi_copy_mounted_cold_2(v43, buf);
    }
  }

  v15 = v14;
  v16 = IONotificationPortCreate(0);
  if (!v16)
  {
    hdi_find_attached_cold_4();
  }

  v17 = v16;
  v18 = IOServiceMatching("IOMedia");
  v19 = IOServiceAddMatchingNotification(v17, "IOServiceMatched", v18, 0, 0, &notification);
  if (!v19)
  {
    v35 = a1;
    v36 = a2;
    v37 = 0;
    v34 = v8;
    while (1)
    {
      v22 = IOIteratorNext(notification);
      if (!v22)
      {
        v10 = 0;
        *v35 = v15;
        *v36 = v37;
        v15 = 0;
        goto LABEL_58;
      }

      v23 = v22;
      v38 = 0;
      cf = 0;
      memset(v43, 0, 255);
      memset(v42, 0, 255);
      memset(v41, 0, 255);
      v24 = IORegistryEntrySearchCFProperty(v22, "IOService", @"hdik-unique-identifier", 0, 3u);
      if (v24 && !IOObjectConformsTo(v23, "AppleAPFSVolume") && !IOObjectConformsTo(v23, "AppleAPFSMedia") && !IOObjectConformsTo(v23, "AppleAPFSContainerScheme") && !IOObjectConformsTo(v23, "AppleAPFSContainer"))
      {
        v25 = *__error();
        if (os_log_type_enabled(a3, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v45 = v24;
          _os_log_impl(&_mh_execute_header, a3, OS_LOG_TYPE_DEBUG, "found property: %@", buf, 0xCu);
        }

        *__error() = v25;
        v26 = _hdi_copy_device_nodes(a3, v23, 0, &cf, &v38);
        v27 = *__error();
        if (v26)
        {
          if (os_log_type_enabled(a3, OS_LOG_TYPE_ERROR))
          {
            *buf = 67109120;
            LODWORD(v45) = v26;
            _os_log_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "failed to get device nodes: %{darwin.errno}d", buf, 8u);
          }

          *__error() = v27;
        }

        else
        {
          if (os_log_type_enabled(a3, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412546;
            v45 = cf;
            v46 = 2112;
            v47 = v38;
            _os_log_impl(&_mh_execute_header, a3, OS_LOG_TYPE_DEBUG, "found dev nodes: dev = %@, sub = %@", buf, 0x16u);
          }

          *__error() = v27;
          if (!_CFStringGetUTF8String(v24, v43, 255))
          {
            hdi_find_attached_cold_1();
          }

          if (!_CFStringGetUTF8String(cf, v42, 255))
          {
            hdi_find_attached_cold_1();
          }

          v33 = a3;
          v28 = v38;
          if (!_CFStringGetUTF8String(v38, v41, 255))
          {
            hdi_find_attached_cold_1();
          }

          f_mntfromname = v13->f_mntfromname;
          v30 = v34;
          if (!v7)
          {
            a3 = v33;
            goto LABEL_49;
          }

          while (1)
          {
            bzero(buf, 0x400uLL);
            snprintf(buf, 0x400uLL, "%s%s", "/dev/", v41);
            if (!strcmp(f_mntfromname, buf))
            {
              break;
            }

            f_mntfromname += 2168;
            if (!--v30)
            {
              goto LABEL_47;
            }
          }

          v31 = &v15[3582 * v37];
          __strlcpy_chk();
          snprintf(v31 + 510, 0x400uLL, "%s%s", "/dev/", v42);
          snprintf(v31 + 1534, 0x400uLL, "%s%s", "/dev/", v41);
          strlcpy(v31 + 2558, f_mntfromname - 1024, 0x400uLL);
          ++v37;
LABEL_47:
          a3 = v33;
        }
      }

      v28 = v38;
LABEL_49:
      if (v28)
      {
        CFRelease(v28);
      }

      if (cf)
      {
        CFRelease(cf);
      }

      if (v24)
      {
        CFRelease(v24);
      }

      if (IOObjectRelease(v23))
      {
        hdi_find_attached_cold_3(v43, buf);
      }
    }
  }

  v20 = v19;
  *__error() = 83;
  v21 = *__error();
  if (os_log_type_enabled(a3, OS_LOG_TYPE_ERROR))
  {
    *buf = 67109120;
    LODWORD(v45) = v20;
    _os_log_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "IOServiceAddMatchingNotification: %{mach.errno}x", buf, 8u);
  }

  *__error() = v21;
  v10 = 0xFFFFFFFFLL;
LABEL_58:
  IONotificationPortDestroy(v17);
LABEL_59:
  if (notification && IOObjectRelease(notification))
  {
    hdi_find_attached_cold_3(v43, buf);
  }

  free(v15);
  free(v13);
  return v10;
}

uint64_t hdi_detach(int *a1, NSObject *a2)
{
  v4 = *a1;
  v15 = *a1;
  bzero(v20, 0x400uLL);
  v5 = realpath_np();
  v6 = *__error();
  if (!v5)
  {
    if (os_log_type_enabled(a2, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315394;
      v17 = v20;
      v18 = 1024;
      v19 = v4;
      _os_log_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "detaching: path = %s, fd = %d", buf, 0x12u);
    }

    *__error() = v6;
    v8 = 5;
    while (1)
    {
      if ((ioctl(v4, 0x20006415uLL, 0) & 0x80000000) == 0)
      {
        *__error() = 0;
      }

      v9 = *__error();
      v6 = *__error();
      if (v9 != 9)
      {
        break;
      }

      if ((v15 & 0x80000000) == 0)
      {
        close_drop_np();
      }

      v15 = open(v20, 0);
      v10 = *__error();
      v11 = os_log_type_enabled(a2, OS_LOG_TYPE_INFO);
      if (v15 < 0)
      {
        if (v11)
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, a2, OS_LOG_TYPE_INFO, "got EBADF and disk is gone, detach succeeded", buf, 2u);
        }

        LODWORD(v6) = v10;
LABEL_29:
        *__error() = v6;
        goto LABEL_30;
      }

      if (v11)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, a2, OS_LOG_TYPE_INFO, "got EBADF but disk still present, retrying detach", buf, 2u);
      }

      *__error() = v10;
      v4 = v15;
      *a1 = v15;
      if (!--v8)
      {
        goto LABEL_22;
      }
    }

    if (!v9)
    {
      if (os_log_type_enabled(a2, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "detach succeeded", buf, 2u);
      }

      goto LABEL_29;
    }

LABEL_22:
    if (v6)
    {
      v12 = *__error();
      if (os_log_type_enabled(a2, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        LODWORD(v17) = v6;
        _os_log_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "ioctl: DKIOCEJECT: %{darwin.errno}d", buf, 8u);
      }

      *__error() = v12;
      return v6;
    }

LABEL_30:
    v13 = *__error();
    if (os_log_type_enabled(a2, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "Finished quire detach.", buf, 2u);
    }

    *__error() = v13;
    goto LABEL_33;
  }

  v7 = *__error();
  if (os_log_type_enabled(a2, OS_LOG_TYPE_ERROR))
  {
    *buf = 67109120;
    LODWORD(v17) = v6;
    _os_log_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "realpath_np: %{darwin.errno}d", buf, 8u);
  }

  *__error() = v7;
  if (!v6)
  {
LABEL_33:
    close_drop_np();
    return 0;
  }

  return v6;
}

double OUTLINED_FUNCTION_3_0(void *a1, _OWORD *a2)
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

void _resource_dealloc(uint64_t a1)
{
  os_release(*(a1 + 64));
  free(*(a1 + 72));
  close_drop_optional_np();

  object_proto_destroy(a1 + 16);
}

uint64_t resource_create(uint64_t a1, void *a2, const char *a3, uint64_t a4)
{
  v8 = _resource_alloc();
  *(v8 + 40) = a4;
  *(v8 + 64) = os_retain(a2);
  *(v8 + 48) = a1;
  if (_dispatch_is_multithreaded())
  {
    while (1)
    {
      v9 = strdup(a3);
      if (v9)
      {
        break;
      }

      __os_temporary_resource_shortage();
    }
  }

  else
  {
    v9 = strdup(a3);
    if (!v9)
    {
      _protex_init_cold_1(a3, &v14, v15);
    }
  }

  v10 = v9;
  *(v8 + 72) = v9;
  *(v8 + 80) = -1;
  v11 = strrchr(v9, 47);
  if (v11)
  {
    v12 = v11 + 1;
  }

  else
  {
    v12 = v10;
  }

  *(v8 + 56) = v12;
  object_proto_init(v8 + 16, "com.apple.security.cryptexd", "resource");
  object_set_name(v8 + 16, *(v8 + 56));
  return v8;
}

uint64_t resource_open(uint64_t a1, int a2)
{
  v3 = *(a1 + 64);
  v4 = *(v3 + 48);
  v5 = **(a1 + 48);
  v6 = _validators[v5];
  v7 = openat(*(v3 + 56), *(a1 + 72), a2 & 0xFFFFFFFC);
  v34 = v7;
  if ((v7 & 0x80000000) == 0)
  {
    *__error() = 0;
  }

  if (*__error())
  {
    v8 = *__error();
    v9 = *(a1 + 16);
    v10 = *__error();
    v11 = *(a1 + 32);
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
LABEL_9:
      *__error() = v10;
      goto LABEL_10;
    }

    v12 = "[anonymous]";
    if (v9)
    {
      v12 = v9;
    }

    v13 = *(v4 + 8);
    v14 = *(a1 + 72);
    *buf = 136446978;
    v37 = v12;
    v38 = 2080;
    v39 = v13;
    v40 = 2080;
    v41 = v14;
    v42 = 1024;
    v43 = v8;
    v15 = "%{public}s: failed to open %s resource: %s: %{darwin.errno}d";
    v16 = v11;
    v17 = 38;
LABEL_8:
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, v15, buf, v17);
    goto LABEL_9;
  }

  v19 = *(a1 + 16);
  v20 = *__error();
  v21 = *(a1 + 32);
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
  {
    v22 = "[anonymous]";
    if (v19)
    {
      v22 = v19;
    }

    v23 = *(v4 + 8);
    v24 = *(a1 + 72);
    *buf = 136446722;
    v37 = v22;
    v38 = 2080;
    v39 = v23;
    v40 = 2080;
    v41 = v24;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEBUG, "%{public}s: opened %s resource: %s", buf, 0x20u);
  }

  *__error() = v20;
  if ((v5 - 7) >= 0xFFFFFFFFFFFFFFFELL)
  {
    v25 = v6(a1, v7);
    if (v25)
    {
      v8 = v25;
      v26 = *(a1 + 16);
      v10 = *__error();
      v27 = *(a1 + 32);
      if (!os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_9;
      }

      v28 = "[anonymous]";
      v29 = *(a1 + 56);
      if (v26)
      {
        v28 = v26;
      }

      *buf = 136446722;
      v37 = v28;
      v38 = 2080;
      v39 = v29;
      v40 = 1024;
      LODWORD(v41) = v8;
      v15 = "%{public}s: failed to validate resource: %s: %{darwin.errno}d";
      v16 = v27;
      v17 = 28;
      goto LABEL_8;
    }
  }

  if (fstat(v7, (a1 + 88)))
  {
    v8 = *__error();
    v30 = *(a1 + 16);
    v31 = *__error();
    v32 = *(a1 + 32);
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      v33 = "[anonymous]";
      if (v30)
      {
        v33 = v30;
      }

      *buf = 136446466;
      v37 = v33;
      v38 = 1024;
      LODWORD(v39) = v8;
      _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_ERROR, "%{public}s: fstat: %{darwin.errno}d", buf, 0x12u);
    }

    *__error() = v31;
  }

  else
  {
    v8 = 0;
    *(a1 + 80) = _xferfd_unguarded(&v34);
    LODWORD(v7) = v34;
  }

LABEL_10:
  if (v7 != -1 && close(v7) == -1)
  {
    __os_cleanup_close_cold_1(&v35, buf);
  }

  return v8;
}

uint64_t _validator_bundle(uint64_t a1, uint64_t a2)
{
  bundleURL = 0;
  v3 = _CFURLCreateFromFileDescriptor(a2, &bundleURL);
  if (v3)
  {
    v4 = v3;
    v5 = *(a1 + 16);
    v6 = *__error();
    v7 = *(a1 + 32);
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
LABEL_7:
      v10 = 0;
      *__error() = v6;
      goto LABEL_10;
    }

    v8 = "[anonymous]";
    if (v5)
    {
      v8 = v5;
    }

    *buf = 136446466;
    v17 = v8;
    v18 = 1024;
    v19 = v4;
    v9 = "%{public}s: _CFURLCreateFromFileDescriptor: %{darwin.errno}d";
LABEL_6:
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, v9, buf, 0x12u);
    goto LABEL_7;
  }

  v11 = CFBundleCreate(kCFAllocatorDefault, bundleURL);
  if (!v11)
  {
    v13 = *(a1 + 16);
    v6 = *__error();
    v7 = *(a1 + 32);
    v4 = 22;
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_7;
    }

    v14 = "[anonymous]";
    if (v13)
    {
      v14 = v13;
    }

    *buf = 136446466;
    v17 = v14;
    v18 = 1024;
    v19 = 22;
    v9 = "%{public}s: failed to create bundle from resource: %{darwin.errno}d";
    goto LABEL_6;
  }

  v10 = v11;
  v4 = 0;
LABEL_10:
  if (bundleURL)
  {
    CFRelease(bundleURL);
  }

  if (v10)
  {
    CFRelease(v10);
  }

  return v4;
}

void mount_sub_handle_request(void *a1)
{
  v1 = a1;
  v2 = xpc_dictionary_get_remote_connection(v1);
  string = xpc_dictionary_get_string(v1, "MOUNT_SUB_REQ");
  v4 = string;
  if (!string)
  {
    goto LABEL_4;
  }

  if (strcmp(string, "REQ:MOUNT"))
  {
    if (strcmp(v4, "REQ:UNMOUNT"))
    {
LABEL_4:
      *buffer = *"unknown";
      *&buffer[16] = *&algn_100059768[8];
      pid = xpc_connection_get_pid(v2);
      proc_name(pid, buffer, 0x20u);
      v6 = _mount_sub_log();

      if (v6)
      {
        v7 = _mount_sub_log();
        os_log_type_enabled(v7, OS_LOG_TYPE_ERROR);
        if (v2)
        {
          v8 = xpc_connection_get_pid(v2);
        }

        else
        {
          v8 = -1;
        }

        LODWORD(v174[0]) = 136316162;
        *(v174 + 4) = buffer;
        WORD6(v174[0]) = 1024;
        *(v174 + 14) = v8;
        WORD1(v174[1]) = 2080;
        *(&v174[1] + 4) = v4;
        WORD6(v174[1]) = 2080;
        *(&v174[1] + 14) = "MOUNT_SUB_REQ";
        WORD3(v174[2]) = 1024;
        DWORD2(v174[2]) = 22;
      }

      else
      {
        v16 = &_os_log_default;
        if (v2)
        {
          v17 = xpc_connection_get_pid(v2);
        }

        else
        {
          v17 = -1;
        }

        LODWORD(v174[0]) = 136316162;
        *(v174 + 4) = buffer;
        WORD6(v174[0]) = 1024;
        *(v174 + 14) = v17;
        WORD1(v174[1]) = 2080;
        *(&v174[1] + 4) = v4;
        WORD6(v174[1]) = 2080;
        *(&v174[1] + 14) = "MOUNT_SUB_REQ";
        WORD3(v174[2]) = 1024;
        DWORD2(v174[2]) = 22;
        v7 = &_os_log_default;
      }

      v29 = _os_log_send_and_compose_impl();

      Error = createError("mount_sub_handle_request", "sub_mount.m", 414, "com.apple.security.cryptex.posix", 22, 0, v29);
      free(v29);
      _mount_sub_mount_cryptex_reply(v1, Error, 0, 0, 0);
      goto LABEL_227;
    }

    v18 = v1;
    v19 = xpc_dictionary_get_remote_connection(v18);
    LOBYTE(v168) = 0;
    v169 = -1;
    v20 = _mount_sub_authorize(v19, "com.apple.private.security.cryptex.unmount");
    if (v20)
    {
      v174[0] = *"unknown";
      v174[1] = *&algn_100059768[8];
      v21 = xpc_connection_get_pid(v19);
      proc_name(v21, v174, 0x20u);
      v22 = _mount_sub_log();

      if (v22)
      {
        v23 = _mount_sub_log();
        os_log_type_enabled(v23, OS_LOG_TYPE_ERROR);
        if (v19)
        {
          v24 = xpc_connection_get_pid(v19);
        }

        else
        {
          v24 = -1;
        }

        *buffer = 136315650;
        *&buffer[4] = v174;
        *&buffer[12] = 1024;
        *&buffer[14] = v24;
        *&buffer[18] = 1024;
        *&buffer[20] = v20;
      }

      else
      {
        v39 = &_os_log_default;
        if (v19)
        {
          v40 = xpc_connection_get_pid(v19);
        }

        else
        {
          v40 = -1;
        }

        *buffer = 136315650;
        *&buffer[4] = v174;
        *&buffer[12] = 1024;
        *&buffer[14] = v40;
        *&buffer[18] = 1024;
        *&buffer[20] = v20;
        v23 = &_os_log_default;
      }

      v68 = _os_log_send_and_compose_impl();

      v69 = createError("mount_sub_unmount_cryptex", "sub_mount.m", 359, "com.apple.security.cryptex.posix", v20, 0, v68);
      v70 = v68;
      goto LABEL_66;
    }

    v31 = xpc_dictionary_dup_fd(v18, "UNMOUNT:INFO_FD");
    v169 = v31;
    if (v31 == -1)
    {
      *buffer = *"unknown";
      *&buffer[16] = *&algn_100059768[8];
      v45 = xpc_connection_get_pid(v19);
      proc_name(v45, buffer, 0x20u);
      v46 = _mount_sub_log();

      if (v46)
      {
        v47 = _mount_sub_log();
        os_log_type_enabled(v47, OS_LOG_TYPE_ERROR);
        if (v19)
        {
          v48 = xpc_connection_get_pid(v19);
        }

        else
        {
          v48 = -1;
        }

        LODWORD(v174[0]) = 136315906;
        *(v174 + 4) = buffer;
        WORD6(v174[0]) = 1024;
        *(v174 + 14) = v48;
        WORD1(v174[1]) = 2080;
        *(&v174[1] + 4) = "MOUNT:INFO_FD";
        WORD6(v174[1]) = 1024;
        *(&v174[1] + 14) = 22;
      }

      else
      {
        v79 = &_os_log_default;
        if (v19)
        {
          v80 = xpc_connection_get_pid(v19);
        }

        else
        {
          v80 = -1;
        }

        LODWORD(v174[0]) = 136315906;
        *(v174 + 4) = buffer;
        WORD6(v174[0]) = 1024;
        *(v174 + 14) = v80;
        WORD1(v174[1]) = 2080;
        *(&v174[1] + 4) = "MOUNT:INFO_FD";
        WORD6(v174[1]) = 1024;
        *(&v174[1] + 14) = 22;
        v47 = &_os_log_default;
      }

      v98 = _os_log_send_and_compose_impl();

      v69 = createError("mount_sub_unmount_cryptex", "sub_mount.m", 367, "com.apple.security.cryptex.posix", 22, 0, v98);
      v70 = v98;
LABEL_66:
      free(v70);
      v31 = -1;
      if (!v69)
      {
LABEL_224:
        if (v31 == -1)
        {
LABEL_226:

          goto LABEL_227;
        }

LABEL_225:
        if (close(v31) == -1)
        {
          mount_sub_handle_request_cold_1(buffer, v174);
        }

        goto LABEL_226;
      }

LABEL_223:
      _mount_sub_unmount_cryptex_reply(v18, v69);
      goto LABEL_224;
    }

    v32 = _xpc_dictionary_try_get_BOOL(v18, "UNMOUNT:FORCE", &v168);
    if (v32)
    {
      *buffer = *"unknown";
      *&buffer[16] = *&algn_100059768[8];
      v33 = xpc_connection_get_pid(v19);
      proc_name(v33, buffer, 0x20u);
      v34 = _mount_sub_log();

      if (v34)
      {
        v35 = _mount_sub_log();
        os_log_type_enabled(v35, OS_LOG_TYPE_ERROR);
        if (v19)
        {
          v36 = xpc_connection_get_pid(v19);
        }

        else
        {
          v36 = -1;
        }

        LODWORD(v174[0]) = 136315906;
        *(v174 + 4) = buffer;
        WORD6(v174[0]) = 1024;
        *(v174 + 14) = v36;
        WORD1(v174[1]) = 2080;
        *(&v174[1] + 4) = "UNMOUNT:FORCE";
        WORD6(v174[1]) = 1024;
        *(&v174[1] + 14) = v32;
      }

      else
      {
        v77 = &_os_log_default;
        if (v19)
        {
          v78 = xpc_connection_get_pid(v19);
        }

        else
        {
          v78 = -1;
        }

        LODWORD(v174[0]) = 136315906;
        *(v174 + 4) = buffer;
        WORD6(v174[0]) = 1024;
        *(v174 + 14) = v78;
        WORD1(v174[1]) = 2080;
        *(&v174[1] + 4) = "UNMOUNT:FORCE";
        WORD6(v174[1]) = 1024;
        *(&v174[1] + 14) = v32;
        v35 = &_os_log_default;
      }

      v94 = _os_log_send_and_compose_impl();

      v95 = createError("mount_sub_unmount_cryptex", "sub_mount.m", 375, "com.apple.security.cryptex.posix", v32, 0, v94);
      goto LABEL_222;
    }

    v57 = v168;
    v162 = v18;
    v58 = xpc_dictionary_get_remote_connection(v162);
    v181 = 0;
    v179 = 0u;
    v180 = 0u;
    v177 = 0u;
    v178 = 0u;
    v175 = 0u;
    v176 = 0u;
    memset(v174, 0, sizeof(v174));
    v173 = 0;
    memset(v172, 0, sizeof(v172));
    v164 = codex_copy_system();
    file = _read_file(v31, v172);
    if (file)
    {
      *buffer = *"unknown";
      *&buffer[16] = *&algn_100059768[8];
      v60 = xpc_connection_get_pid(v58);
      proc_name(v60, buffer, 0x20u);
      v61 = *__error();
      v62 = _mount_sub_log();
      if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
      {
        if (v58)
        {
          v63 = xpc_connection_get_pid(v58);
        }

        else
        {
          v63 = -1;
        }

        *buf = 136315650;
        *&buf[4] = buffer;
        *&buf[12] = 1024;
        *&buf[14] = v63;
        *&buf[18] = 1024;
        *&buf[20] = file;
        _os_log_impl(&_mh_execute_header, v62, OS_LOG_TYPE_ERROR, "XPC client <process=%s pid=%d>: Failed to read cryptex info from disk.: %{darwin.errno}d", buf, 0x18u);
      }

      v103 = 0;
      v84 = 0;
      *__error() = v61;
    }

    else
    {
      v83 = xpc_create_from_plist();
      if (v83)
      {
        v84 = v83;
        if (xpc_get_type(v84) == &_xpc_type_dictionary)
        {
          file = quire_make_attr(v84, 0, v174, 1);
          if (file)
          {
            v104 = xpc_copy_description(v84);
            *buf = *"unknown";
            *&buf[16] = *&algn_100059768[8];
            v105 = xpc_connection_get_pid(v58);
            proc_name(v105, buf, 0x20u);
            v160 = *__error();
            v106 = _mount_sub_log();
            if (os_log_type_enabled(v106, OS_LOG_TYPE_ERROR))
            {
              if (v58)
              {
                v107 = xpc_connection_get_pid(v58);
              }

              else
              {
                v107 = -1;
              }

              *buffer = 136315906;
              *&buffer[4] = buf;
              *&buffer[12] = 1024;
              *&buffer[14] = v107;
              *&buffer[18] = 2080;
              *&buffer[20] = v104;
              *&buffer[28] = 1024;
              *&buffer[30] = file;
              _os_log_impl(&_mh_execute_header, v106, OS_LOG_TYPE_ERROR, "XPC client <process=%s pid=%d>: Info.plist invalid contents: %s: %{darwin.errno}d", buffer, 0x22u);
            }

            *__error() = v160;
            free(v104);
          }

          else
          {
            __copy_constructor_8_8_t0w24_s24_t32w88_s120_s128_s136_t144w2(buffer, v174);
            codex_unmount(v164, v57, buffer, v162, _mount_sub_unmount_cryptex_continue);
            file = 0;
          }

          v103 = v84;
          goto LABEL_211;
        }

        v85 = xpc_copy_description(v84);
        *buf = *"unknown";
        *&buf[16] = *&algn_100059768[8];
        v86 = xpc_connection_get_pid(v58);
        proc_name(v86, buf, 0x20u);
        v87 = *__error();
        v88 = _mount_sub_log();
        if (os_log_type_enabled(v88, OS_LOG_TYPE_ERROR))
        {
          if (v58)
          {
            v89 = xpc_connection_get_pid(v58);
          }

          else
          {
            v89 = -1;
          }

          *buffer = 136315906;
          *&buffer[4] = buf;
          *&buffer[12] = 1024;
          *&buffer[14] = v89;
          *&buffer[18] = 2080;
          *&buffer[20] = v85;
          *&buffer[28] = 1024;
          *&buffer[30] = 212;
          _os_log_impl(&_mh_execute_header, v88, OS_LOG_TYPE_ERROR, "XPC client <process=%s pid=%d>: Info.plist invalid root type: %s: %{darwin.errno}d", buffer, 0x22u);
        }

        *__error() = v87;
        free(v85);
        v103 = 0;
      }

      else
      {
        *buffer = *"unknown";
        *&buffer[16] = *&algn_100059768[8];
        v99 = xpc_connection_get_pid(v58);
        proc_name(v99, buffer, 0x20u);
        v100 = *__error();
        v101 = _mount_sub_log();
        if (os_log_type_enabled(v101, OS_LOG_TYPE_ERROR))
        {
          if (v58)
          {
            v102 = xpc_connection_get_pid(v58);
          }

          else
          {
            v102 = -1;
          }

          *buf = 136315650;
          *&buf[4] = buffer;
          *&buf[12] = 1024;
          *&buf[14] = v102;
          *&buf[18] = 1024;
          *&buf[20] = 212;
          _os_log_impl(&_mh_execute_header, v101, OS_LOG_TYPE_ERROR, "XPC client <process=%s pid=%d>: Failed to parse cryptex info: %{darwin.errno}d", buf, 0x18u);
        }

        v103 = 0;
        v84 = 0;
        *__error() = v100;
      }

      file = 212;
    }

LABEL_211:
    buff_destroy(v172);

    __destructor_8_s24_s120_s128_s136(v174);
    if (!file)
    {
      goto LABEL_225;
    }

    v174[0] = *"unknown";
    v174[1] = *&algn_100059768[8];
    v146 = xpc_connection_get_pid(v19);
    proc_name(v146, v174, 0x20u);
    v147 = _mount_sub_log();

    if (v147)
    {
      v148 = _mount_sub_log();
      os_log_type_enabled(v148, OS_LOG_TYPE_ERROR);
      if (v19)
      {
        v149 = xpc_connection_get_pid(v19);
      }

      else
      {
        v149 = -1;
      }

      *buffer = 136315650;
      *&buffer[4] = v174;
      *&buffer[12] = 1024;
      *&buffer[14] = v149;
      *&buffer[18] = 1024;
      *&buffer[20] = file;
    }

    else
    {
      v150 = &_os_log_default;
      if (v19)
      {
        v151 = xpc_connection_get_pid(v19);
      }

      else
      {
        v151 = -1;
      }

      *buffer = 136315650;
      *&buffer[4] = v174;
      *&buffer[12] = 1024;
      *&buffer[14] = v151;
      *&buffer[18] = 1024;
      *&buffer[20] = file;
      v148 = &_os_log_default;
    }

    v94 = _os_log_send_and_compose_impl();

    v95 = createError("mount_sub_unmount_cryptex", "sub_mount.m", 383, "com.apple.security.cryptex.posix", file, 0, v94);
LABEL_222:
    v69 = v95;
    free(v94);
    if (!v69)
    {
      goto LABEL_224;
    }

    goto LABEL_223;
  }

  v9 = v1;
  *buf = -1;
  v168 = -1;
  v169 = -1;
  v166 = -1;
  v167 = -1;
  v10 = xpc_dictionary_get_remote_connection(v9);
  v11 = _mount_sub_authorize(v10, "com.apple.private.security.cryptex.mount");
  if (v11)
  {
    v174[0] = *"unknown";
    v174[1] = *&algn_100059768[8];
    v12 = xpc_connection_get_pid(v10);
    proc_name(v12, v174, 0x20u);
    v13 = _mount_sub_log();

    if (v13)
    {
      v14 = _mount_sub_log();
      os_log_type_enabled(v14, OS_LOG_TYPE_ERROR);
      if (v10)
      {
        v15 = xpc_connection_get_pid(v10);
      }

      else
      {
        v15 = -1;
      }

      *buffer = 136315650;
      *&buffer[4] = v174;
      *&buffer[12] = 1024;
      *&buffer[14] = v15;
      *&buffer[18] = 1024;
      *&buffer[20] = v11;
    }

    else
    {
      v37 = &_os_log_default;
      if (v10)
      {
        v38 = xpc_connection_get_pid(v10);
      }

      else
      {
        v38 = -1;
      }

      *buffer = 136315650;
      *&buffer[4] = v174;
      *&buffer[12] = 1024;
      *&buffer[14] = v38;
      *&buffer[18] = 1024;
      *&buffer[20] = v11;
      v14 = &_os_log_default;
    }

    v53 = _os_log_send_and_compose_impl();

    v54 = createError("mount_sub_mount_cryptex", "sub_mount.m", 182, "com.apple.security.cryptex.posix", v11, 0, v53);
LABEL_55:
    v55 = v54;
    v56 = v53;
    goto LABEL_129;
  }

  *buf = xpc_dictionary_dup_fd(v9, "MOUNT:DMG_FD");
  if ((*buf & 0x80000000) != 0)
  {
    *buffer = *"unknown";
    *&buffer[16] = *&algn_100059768[8];
    v41 = xpc_connection_get_pid(v10);
    proc_name(v41, buffer, 0x20u);
    v42 = _mount_sub_log();

    if (v42)
    {
      v43 = _mount_sub_log();
      os_log_type_enabled(v43, OS_LOG_TYPE_ERROR);
      if (v10)
      {
        v44 = xpc_connection_get_pid(v10);
      }

      else
      {
        v44 = -1;
      }

      LODWORD(v174[0]) = 136315906;
      *(v174 + 4) = buffer;
      WORD6(v174[0]) = 1024;
      *(v174 + 14) = v44;
      WORD1(v174[1]) = 2080;
      *(&v174[1] + 4) = "MOUNT:DMG_FD";
      WORD6(v174[1]) = 1024;
      *(&v174[1] + 14) = 22;
    }

    else
    {
      v71 = &_os_log_default;
      if (v10)
      {
        v72 = xpc_connection_get_pid(v10);
      }

      else
      {
        v72 = -1;
      }

      LODWORD(v174[0]) = 136315906;
      *(v174 + 4) = buffer;
      WORD6(v174[0]) = 1024;
      *(v174 + 14) = v72;
      WORD1(v174[1]) = 2080;
      *(&v174[1] + 4) = "MOUNT:DMG_FD";
      WORD6(v174[1]) = 1024;
      *(&v174[1] + 14) = 22;
      v43 = &_os_log_default;
    }

    v92 = _os_log_send_and_compose_impl();

    v93 = createError("mount_sub_mount_cryptex", "sub_mount.m", 190, "com.apple.security.cryptex.posix", 22, 0, v92);
    goto LABEL_128;
  }

  v169 = xpc_dictionary_dup_fd(v9, "MOUNT:LTRS_FD");
  if (v169 < 0)
  {
    *buffer = *"unknown";
    *&buffer[16] = *&algn_100059768[8];
    v49 = xpc_connection_get_pid(v10);
    proc_name(v49, buffer, 0x20u);
    v50 = _mount_sub_log();

    if (v50)
    {
      v51 = _mount_sub_log();
      os_log_type_enabled(v51, OS_LOG_TYPE_ERROR);
      if (v10)
      {
        v52 = xpc_connection_get_pid(v10);
      }

      else
      {
        v52 = -1;
      }

      LODWORD(v174[0]) = 136315906;
      *(v174 + 4) = buffer;
      WORD6(v174[0]) = 1024;
      *(v174 + 14) = v52;
      WORD1(v174[1]) = 2080;
      *(&v174[1] + 4) = "MOUNT:LTRS_FD";
      WORD6(v174[1]) = 1024;
      *(&v174[1] + 14) = 22;
    }

    else
    {
      v81 = &_os_log_default;
      if (v10)
      {
        v82 = xpc_connection_get_pid(v10);
      }

      else
      {
        v82 = -1;
      }

      LODWORD(v174[0]) = 136315906;
      *(v174 + 4) = buffer;
      WORD6(v174[0]) = 1024;
      *(v174 + 14) = v82;
      WORD1(v174[1]) = 2080;
      *(&v174[1] + 4) = "MOUNT:LTRS_FD";
      WORD6(v174[1]) = 1024;
      *(&v174[1] + 14) = 22;
      v51 = &_os_log_default;
    }

    v92 = _os_log_send_and_compose_impl();

    v93 = createError("mount_sub_mount_cryptex", "sub_mount.m", 198, "com.apple.security.cryptex.posix", 22, 0, v92);
    goto LABEL_128;
  }

  v168 = xpc_dictionary_dup_fd(v9, "MOUNT:INFO_FD");
  if (v168 < 0)
  {
    *buffer = *"unknown";
    *&buffer[16] = *&algn_100059768[8];
    v64 = xpc_connection_get_pid(v10);
    proc_name(v64, buffer, 0x20u);
    v65 = _mount_sub_log();

    if (v65)
    {
      v66 = _mount_sub_log();
      os_log_type_enabled(v66, OS_LOG_TYPE_ERROR);
      if (v10)
      {
        v67 = xpc_connection_get_pid(v10);
      }

      else
      {
        v67 = -1;
      }

      LODWORD(v174[0]) = 136315906;
      *(v174 + 4) = buffer;
      WORD6(v174[0]) = 1024;
      *(v174 + 14) = v67;
      WORD1(v174[1]) = 2080;
      *(&v174[1] + 4) = "MOUNT:INFO_FD";
      WORD6(v174[1]) = 1024;
      *(&v174[1] + 14) = 22;
    }

    else
    {
      v90 = &_os_log_default;
      if (v10)
      {
        v91 = xpc_connection_get_pid(v10);
      }

      else
      {
        v91 = -1;
      }

      LODWORD(v174[0]) = 136315906;
      *(v174 + 4) = buffer;
      WORD6(v174[0]) = 1024;
      *(v174 + 14) = v91;
      WORD1(v174[1]) = 2080;
      *(&v174[1] + 4) = "MOUNT:INFO_FD";
      WORD6(v174[1]) = 1024;
      *(&v174[1] + 14) = 22;
      v66 = &_os_log_default;
    }

    v92 = _os_log_send_and_compose_impl();

    v93 = createError("mount_sub_mount_cryptex", "sub_mount.m", 206, "com.apple.security.cryptex.posix", 22, 0, v92);
    goto LABEL_128;
  }

  v167 = xpc_dictionary_dup_fd(v9, "MOUNT:IM4M_FD");
  if (v167 < 0)
  {
    *buffer = *"unknown";
    *&buffer[16] = *&algn_100059768[8];
    v73 = xpc_connection_get_pid(v10);
    proc_name(v73, buffer, 0x20u);
    v74 = _mount_sub_log();

    if (v74)
    {
      v75 = _mount_sub_log();
      os_log_type_enabled(v75, OS_LOG_TYPE_ERROR);
      if (v10)
      {
        v76 = xpc_connection_get_pid(v10);
      }

      else
      {
        v76 = -1;
      }

      LODWORD(v174[0]) = 136315906;
      *(v174 + 4) = buffer;
      WORD6(v174[0]) = 1024;
      *(v174 + 14) = v76;
      WORD1(v174[1]) = 2080;
      *(&v174[1] + 4) = "MOUNT:IM4M_FD";
      WORD6(v174[1]) = 1024;
      *(&v174[1] + 14) = 22;
    }

    else
    {
      v96 = &_os_log_default;
      if (v10)
      {
        v97 = xpc_connection_get_pid(v10);
      }

      else
      {
        v97 = -1;
      }

      LODWORD(v174[0]) = 136315906;
      *(v174 + 4) = buffer;
      WORD6(v174[0]) = 1024;
      *(v174 + 14) = v97;
      WORD1(v174[1]) = 2080;
      *(&v174[1] + 4) = "MOUNT:IM4M_FD";
      WORD6(v174[1]) = 1024;
      *(&v174[1] + 14) = 22;
      v75 = &_os_log_default;
    }

    v92 = _os_log_send_and_compose_impl();

    v93 = createError("mount_sub_mount_cryptex", "sub_mount.m", 214, "com.apple.security.cryptex.posix", 22, 0, v92);
LABEL_128:
    v55 = v93;
    v56 = v92;
LABEL_129:
    free(v56);
    v108 = 0;
    if (!v55)
    {
      goto LABEL_131;
    }

    goto LABEL_130;
  }

  v166 = xpc_dictionary_dup_fd(v9, "MOUNT:VOLHASH_FD");
  if (v166 < 0)
  {
    v174[0] = *"unknown";
    v174[1] = *&algn_100059768[8];
    v25 = xpc_connection_get_pid(v10);
    proc_name(v25, v174, 0x20u);
    v26 = *__error();
    v27 = _mount_sub_log();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
    {
      if (v10)
      {
        v28 = xpc_connection_get_pid(v10);
      }

      else
      {
        v28 = -1;
      }

      *buffer = 136315650;
      *&buffer[4] = v174;
      *&buffer[12] = 1024;
      *&buffer[14] = v28;
      *&buffer[18] = 2080;
      *&buffer[20] = "MOUNT:VOLHASH_FD";
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_INFO, "XPC client <process=%s pid=%d>: No value for optional key %s", buffer, 0x1Cu);
    }

    *__error() = v26;
  }

  v108 = xpc_dictionary_get_value(v9, "MOUNT:CX1_PROPERTIES");
  if (!v108)
  {
    *buffer = *"unknown";
    *&buffer[16] = *&algn_100059768[8];
    v116 = xpc_connection_get_pid(v10);
    proc_name(v116, buffer, 0x20u);
    v117 = _mount_sub_log();

    if (v117)
    {
      v118 = _mount_sub_log();
      os_log_type_enabled(v118, OS_LOG_TYPE_ERROR);
      if (v10)
      {
        v119 = xpc_connection_get_pid(v10);
      }

      else
      {
        v119 = -1;
      }

      LODWORD(v174[0]) = 136315906;
      *(v174 + 4) = buffer;
      WORD6(v174[0]) = 1024;
      *(v174 + 14) = v119;
      WORD1(v174[1]) = 2080;
      *(&v174[1] + 4) = "MOUNT:CX1_PROPERTIES";
      WORD6(v174[1]) = 1024;
      *(&v174[1] + 14) = 22;
    }

    else
    {
      v126 = &_os_log_default;
      if (v10)
      {
        v127 = xpc_connection_get_pid(v10);
      }

      else
      {
        v127 = -1;
      }

      LODWORD(v174[0]) = 136315906;
      *(v174 + 4) = buffer;
      WORD6(v174[0]) = 1024;
      *(v174 + 14) = v127;
      WORD1(v174[1]) = 2080;
      *(&v174[1] + 4) = "MOUNT:CX1_PROPERTIES";
      WORD6(v174[1]) = 1024;
      *(&v174[1] + 14) = 22;
      v118 = &_os_log_default;
    }

    v53 = _os_log_send_and_compose_impl();

    v54 = createError("mount_sub_mount_cryptex", "sub_mount.m", 228, "com.apple.security.cryptex.posix", 22, 0, v53);
    goto LABEL_55;
  }

  int64 = xpc_dictionary_get_int64(v9, "MOUNT:DMG_ASSET_IDX_INT64");
  if (int64 == 5 || int64 == 9)
  {
    v165 = v9;
    v110 = v108;
    v163 = codex_copy_system();
    memset(v174, 0, 32);
    xpc_dictionary_get_audit_token();
    *buffer = v174[0];
    *&buffer[16] = v174[1];
    v161 = audit_token_to_euid(buffer);
    v108 = v110;
    v111 = cryptex_core_create();
    if (v111)
    {
      v112 = cryptex_core_set_assets_from_fds();
      if (v112)
      {
        v113 = *__error();
        v114 = _mount_sub_log();
        if (os_log_type_enabled(v114, OS_LOG_TYPE_ERROR))
        {
          *buffer = 67109120;
          *&buffer[4] = v112;
          _os_log_impl(&_mh_execute_header, v114, OS_LOG_TYPE_ERROR, "Failed to set cryptex core assets.: %{darwin.errno}d", buffer, 8u);
        }

        v115 = 0;
        *__error() = v113;
      }

      else
      {
        v128 = cryptex_core_cx1_properties_create_with_xpc_dictionary();
        if (v128)
        {
          cryptex_core_set_cryptex1_properties();
          v129 = v111;

          v112 = 0;
          v115 = v111;
        }

        else
        {
          v132 = *__error();
          v133 = _mount_sub_log();
          if (os_log_type_enabled(v133, OS_LOG_TYPE_ERROR))
          {
            *buffer = 67109120;
            _os_log_impl(&_mh_execute_header, v133, OS_LOG_TYPE_ERROR, "Failed to parse Cryptex1 properties.: %{darwin.errno}d", buffer, 8u);
          }

          v115 = 0;
          v112 = 0;
          *__error() = v132;
        }
      }
    }

    else
    {
      v124 = *__error();
      v125 = _mount_sub_log();
      if (os_log_type_enabled(v125, OS_LOG_TYPE_ERROR))
      {
        *buffer = 0xC04000100;
        _os_log_impl(&_mh_execute_header, v125, OS_LOG_TYPE_ERROR, "Failed to create cryptex core.: %{darwin.errno}d", buffer, 8u);
      }

      v115 = 0;
      *__error() = v124;
      v112 = 12;
    }

    v134 = v115;
    if (v112)
    {
      v135 = *__error();
      v136 = _mount_sub_log();
      if (os_log_type_enabled(v136, OS_LOG_TYPE_ERROR))
      {
        *buffer = 67109120;
        *&buffer[4] = v112;
        _os_log_impl(&_mh_execute_header, v136, OS_LOG_TYPE_ERROR, "Failed to initialize cryptex core.: %{darwin.errno}d", buffer, 8u);
      }

      *__error() = v135;
    }

    else
    {
      codex_mount(v163, v134, v161, v165, _mount_sub_mount_cryptex_continue);
    }

    if (!v112)
    {
      goto LABEL_131;
    }

    v174[0] = *"unknown";
    v174[1] = *&algn_100059768[8];
    v137 = xpc_connection_get_pid(v10);
    proc_name(v137, v174, 0x20u);
    v138 = _mount_sub_log();

    if (v138)
    {
      v139 = _mount_sub_log();
      os_log_type_enabled(v139, OS_LOG_TYPE_ERROR);
      if (v10)
      {
        v140 = xpc_connection_get_pid(v10);
      }

      else
      {
        v140 = -1;
      }

      *buffer = 136315650;
      *&buffer[4] = v174;
      *&buffer[12] = 1024;
      *&buffer[14] = v140;
      *&buffer[18] = 1024;
      *&buffer[20] = v112;
    }

    else
    {
      v141 = &_os_log_default;
      if (v10)
      {
        v142 = xpc_connection_get_pid(v10);
      }

      else
      {
        v142 = -1;
      }

      *buffer = 136315650;
      *&buffer[4] = v174;
      *&buffer[12] = 1024;
      *&buffer[14] = v142;
      *&buffer[18] = 1024;
      *&buffer[20] = v112;
      v139 = &_os_log_default;
    }

    v143 = _os_log_send_and_compose_impl();

    v55 = createError("mount_sub_mount_cryptex", "sub_mount.m", 249, "com.apple.security.cryptex.posix", v112, 0, v143);
    v144 = v143;
  }

  else
  {
    *buffer = *"unknown";
    *&buffer[16] = *&algn_100059768[8];
    v120 = xpc_connection_get_pid(v10);
    proc_name(v120, buffer, 0x20u);
    v121 = _mount_sub_log();

    if (v121)
    {
      v122 = _mount_sub_log();
      os_log_type_enabled(v122, OS_LOG_TYPE_ERROR);
      if (v10)
      {
        v123 = xpc_connection_get_pid(v10);
      }

      else
      {
        v123 = -1;
      }

      LODWORD(v174[0]) = 136315906;
      *(v174 + 4) = buffer;
      WORD6(v174[0]) = 1024;
      *(v174 + 14) = v123;
      WORD1(v174[1]) = 2080;
      *(&v174[1] + 4) = "MOUNT:DMG_ASSET_IDX_INT64";
      WORD6(v174[1]) = 1024;
      *(&v174[1] + 14) = 22;
    }

    else
    {
      v130 = &_os_log_default;
      if (v10)
      {
        v131 = xpc_connection_get_pid(v10);
      }

      else
      {
        v131 = -1;
      }

      LODWORD(v174[0]) = 136315906;
      *(v174 + 4) = buffer;
      WORD6(v174[0]) = 1024;
      *(v174 + 14) = v131;
      WORD1(v174[1]) = 2080;
      *(&v174[1] + 4) = "MOUNT:DMG_ASSET_IDX_INT64";
      WORD6(v174[1]) = 1024;
      *(&v174[1] + 14) = 22;
      v122 = &_os_log_default;
    }

    v145 = _os_log_send_and_compose_impl();

    v55 = createError("mount_sub_mount_cryptex", "sub_mount.m", 240, "com.apple.security.cryptex.posix", 22, 0, v145);
    v144 = v145;
  }

  free(v144);
  if (v55)
  {
LABEL_130:
    _mount_sub_mount_cryptex_reply(v9, v55, 0, 0, 0);
  }

LABEL_131:

  if (v166 != -1 && close(v166) == -1)
  {
    *buffer = 0;
    v175 = 0u;
    v176 = 0u;
    memset(v174, 0, sizeof(v174));
    os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    v152 = *__error();
    LODWORD(v172[0]) = 67109120;
    DWORD1(v172[0]) = v152;
    _os_log_send_and_compose_impl();
    v153 = _os_crash_msg();
    aks_open_bag_for_uid_at_path_cold_1(v153);
  }

  if (v167 != -1 && close(v167) == -1)
  {
    *buffer = 0;
    v175 = 0u;
    v176 = 0u;
    memset(v174, 0, sizeof(v174));
    os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    v154 = *__error();
    LODWORD(v172[0]) = 67109120;
    DWORD1(v172[0]) = v154;
    _os_log_send_and_compose_impl();
    v155 = _os_crash_msg();
    aks_open_bag_for_uid_at_path_cold_1(v155);
  }

  if (v168 != -1 && close(v168) == -1)
  {
    *buffer = 0;
    v175 = 0u;
    v176 = 0u;
    memset(v174, 0, sizeof(v174));
    os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    v156 = *__error();
    LODWORD(v172[0]) = 67109120;
    DWORD1(v172[0]) = v156;
    _os_log_send_and_compose_impl();
    v157 = _os_crash_msg();
    aks_open_bag_for_uid_at_path_cold_1(v157);
  }

  if (v169 != -1 && close(v169) == -1)
  {
    *buffer = 0;
    v175 = 0u;
    v176 = 0u;
    memset(v174, 0, sizeof(v174));
    os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    v158 = *__error();
    LODWORD(v172[0]) = 67109120;
    DWORD1(v172[0]) = v158;
    _os_log_send_and_compose_impl();
    v159 = _os_crash_msg();
    aks_open_bag_for_uid_at_path_cold_1(v159);
  }

  if (*buf != -1 && close(*buf) == -1)
  {
    mount_sub_handle_request_cold_6(buffer, v174);
  }

LABEL_227:
}