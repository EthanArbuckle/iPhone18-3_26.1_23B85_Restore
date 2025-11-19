CFErrorRef _quire_bootstrap_diags()
{
  __chkstk_darwin();
  v1 = v0;
  v3 = *v2;
  bzero(&v83, 0x878uLL);
  v75 = 0;
  memset(v82, 0, 255);
  memset(v81, 0, 255);
  bzero(v80, 0x400uLL);
  bzero(from, 0x400uLL);
  bzero(to, 0x400uLL);
  bzero(__str, 0x400uLL);
  __s1 = 0;
  v73 = 0;
  v4 = *(v3 + 56);
  v5 = *__error();
  v6 = *(v3 + 72);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v7 = "[anonymous]";
    if (v4)
    {
      v7 = v4;
    }

    buf = 136446210;
    v85 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "%{public}s: bootstrapping diags", &buf, 0xCu);
  }

  *__error() = v5;
  if (statfs("/", &v83))
  {
    v8 = *__error();
    v9 = *(v3 + 56);
    v10 = *__error();
    v11 = *(v3 + 72);
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
LABEL_12:
      v16 = -1;
      goto LABEL_13;
    }

    v12 = "[anonymous]";
    if (v9)
    {
      v12 = v9;
    }

    buf = 136446466;
    v85 = v12;
    v86 = 1024;
    LODWORD(v87) = v8;
    v13 = "%{public}s: failed to statfs root path: %{darwin.errno}d";
    goto LABEL_10;
  }

  sscanf(v83.f_mntfromname, "/dev/disk%d", &v75);
  snprintf(v82, 0xFFuLL, "disk%d", v75);
  if (apfs_volume_role_exists())
  {
    v18 = apfs_volume_copy_formatter(640, &__s1, *(v3 + 72));
    if (v18)
    {
      v8 = v18;
      v19 = *(v3 + 56);
      v20 = *__error();
      v21 = *(v3 + 72);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        v22 = "[anonymous]";
        if (v19)
        {
          v22 = v19;
        }

        buf = 136446466;
        v85 = v22;
        v86 = 1024;
        LODWORD(v87) = v8;
        v23 = "%{public}s: failed to copy diags volume formatter: %{darwin.errno}d";
LABEL_43:
        v34 = v21;
        v35 = 18;
LABEL_44:
        _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_ERROR, v23, &buf, v35);
        goto LABEL_45;
      }

      goto LABEL_45;
    }

    if (!strstr(__s1, "cryptexd"))
    {
      v32 = *(v3 + 56);
      v20 = *__error();
      v21 = *(v3 + 72);
      v8 = 17;
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        v33 = "[anonymous]";
        if (v32)
        {
          v33 = v32;
        }

        buf = 136446466;
        v85 = v33;
        v86 = 1024;
        LODWORD(v87) = 17;
        v23 = "%{public}s: diags volume already exists but not formatted by us: %{darwin.errno}d";
        goto LABEL_43;
      }

      goto LABEL_45;
    }

    if (access("/System/Volumes/Diags/AppleInternal/Diags", 1) || (snprintf(__str, 0x400uLL, "%s/.%s", "/System/Volumes/Diags/AppleInternal/Diags", *(v3 + 208)), access(__str, 0)))
    {
      v27 = *(v3 + 56);
      v20 = *__error();
      v21 = *(v3 + 72);
      v8 = 17;
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        v28 = "[anonymous]";
        if (v27)
        {
          v28 = v27;
        }

        buf = 136446466;
        v85 = v28;
        v86 = 1024;
        LODWORD(v87) = 17;
        v23 = "%{public}s: diags volume already created by another cryptex install. please uninstall it first: %{darwin.errno}d";
        goto LABEL_43;
      }

LABEL_45:
      *__error() = v20;
      v16 = -1;
      goto LABEL_46;
    }

    v46 = *(v3 + 56);
    v47 = *__error();
    v48 = *(v3 + 72);
    if (os_log_type_enabled(v48, OS_LOG_TYPE_DEBUG))
    {
      v49 = "[anonymous]";
      if (v46)
      {
        v49 = v46;
      }

      buf = 136446210;
      v85 = v49;
      _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEBUG, "%{public}s: diags volume already created", &buf, 0xCu);
    }

    *__error() = v47;
    *(v3 + 176) |= 0x20uLL;
    if (unlink("/AppleInternal/Diags") && *__error() != 2)
    {
      v8 = *__error();
      v58 = *(v3 + 56);
      v10 = *__error();
      v11 = *(v3 + 72);
      if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_12;
      }

      v59 = "[anonymous]";
      if (v58)
      {
        v59 = v58;
      }

      buf = 136446466;
      v85 = v59;
      v86 = 1024;
      LODWORD(v87) = v8;
      v13 = "%{public}s: failed to unlink diags symlink: %{darwin.errno}d";
    }

    else
    {
      if (!symlink("/System/Volumes/Diags/AppleInternal/Diags", "/AppleInternal/Diags") || *__error() == 17)
      {
        Error = 0;
        goto LABEL_55;
      }

      v8 = *__error();
      v60 = *(v3 + 56);
      v10 = *__error();
      v11 = *(v3 + 72);
      if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_12;
      }

      v61 = "[anonymous]";
      if (v60)
      {
        v61 = v60;
      }

      buf = 136446466;
      v85 = v61;
      v86 = 1024;
      LODWORD(v87) = v8;
      v13 = "%{public}s: failed to create symlink for diags: %{darwin.errno}d";
    }

LABEL_10:
    v14 = v11;
    v15 = 18;
LABEL_11:
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, v13, &buf, v15);
    goto LABEL_12;
  }

  v24 = apfs_volume_create(v82, "AppleInternalDiags", 640, &v73, *(v3 + 72));
  if (v24)
  {
    v8 = v24;
    v25 = *(v3 + 56);
    v20 = *__error();
    v21 = *(v3 + 72);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v26 = "[anonymous]";
      if (v25)
      {
        v26 = v25;
      }

      buf = 136446466;
      v85 = v26;
      v86 = 1024;
      LODWORD(v87) = v8;
      v23 = "%{public}s: failed to create diags volume: %{darwin.errno}d";
      goto LABEL_43;
    }

    goto LABEL_45;
  }

  *(v3 + 176) |= 0x20uLL;
  __strlcpy_chk();
  if (!mkdtemp(v80))
  {
    v8 = *__error();
    v39 = *(v3 + 56);
    v10 = *__error();
    v11 = *(v3 + 72);
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_12;
    }

    v40 = "[anonymous]";
    if (v39)
    {
      v40 = v39;
    }

    buf = 136446466;
    v85 = v40;
    v86 = 1024;
    LODWORD(v87) = v8;
    v13 = "%{public}s: failed to create temporary mount point: %{darwin.errno}d";
    goto LABEL_10;
  }

  snprintf(v81, 0xFFuLL, "/dev/%ss%d", v82, v73);
  v29 = apfs_volume_mount(v81, v80, *(v3 + 72));
  if (v29)
  {
    v8 = v29;
    v30 = *(v3 + 56);
    v20 = *__error();
    v21 = *(v3 + 72);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v31 = "[anonymous]";
      if (v30)
      {
        v31 = v30;
      }

      buf = 136446466;
      v85 = v31;
      v86 = 1024;
      LODWORD(v87) = v8;
      v23 = "%{public}s: failed to mount diags volume: %{darwin.errno}d";
      goto LABEL_43;
    }

    goto LABEL_45;
  }

  v41 = *(v3 + 416);
  snprintf(from, 0x400uLL, "%s/%s", v41, *(v1 + 72));
  snprintf(to, 0x400uLL, "%s/%s", v80, "AppleInternal");
  v42 = mkdir(to, 0x1FFu);
  if (v42)
  {
    v8 = v42;
    v43 = *(v3 + 56);
    v20 = *__error();
    v44 = *(v3 + 72);
    if (!os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_45;
    }

    v45 = "[anonymous]";
    buf = 136446722;
    if (v43)
    {
      v45 = v43;
    }

    v85 = v45;
    v86 = 2080;
    v87 = to;
    v88 = 1024;
    LODWORD(v89) = v8;
    v23 = "%{public}s: failed to mkdir %s: %{darwin.errno}d";
    v34 = v44;
    v35 = 28;
    goto LABEL_44;
  }

  if (copyfile(from, to, 0, 0xC8008u))
  {
    v8 = *__error();
    v50 = *(v3 + 56);
    v10 = *__error();
    v51 = *(v3 + 72);
    if (!os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_12;
    }

    v52 = "[anonymous]";
    buf = 136446978;
    if (v50)
    {
      v52 = v50;
    }

    v85 = v52;
    v86 = 2080;
    v87 = from;
    v88 = 2080;
    v89 = to;
    v90 = 1024;
    v91 = v8;
    v13 = "%{public}s: failed to copyfile from %s to %s: %{darwin.errno}d";
    v14 = v51;
    v15 = 38;
    goto LABEL_11;
  }

  v53 = *(v1 + 72);
  snprintf(__str, 0x400uLL, "%s/%s/.%s", v80, v53, *(v3 + 208));
  v16 = open(__str, 512, 420);
  if (v16 < 0)
  {
    v8 = *__error();
    v62 = *(v3 + 56);
    v10 = *__error();
    v63 = *(v3 + 72);
    if (!os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_13;
    }

    v64 = "[anonymous]";
    buf = 136446722;
    if (v62)
    {
      v64 = v62;
    }

    v85 = v64;
    v86 = 2080;
    v87 = __str;
    v88 = 1024;
    LODWORD(v89) = v8;
    v65 = "%{public}s: failed to open %s: %{darwin.errno}d";
    v66 = v63;
    v67 = 28;
    goto LABEL_111;
  }

  if (unlink("/AppleInternal/Diags") && *__error() != 2)
  {
    v8 = *__error();
    v68 = *(v3 + 56);
    v10 = *__error();
    v69 = *(v3 + 72);
    if (!os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_13;
    }

    v70 = "[anonymous]";
    if (v68)
    {
      v70 = v68;
    }

    buf = 136446466;
    v85 = v70;
    v86 = 1024;
    LODWORD(v87) = v8;
    v65 = "%{public}s: failed to unlink diags symlink: %{darwin.errno}d";
LABEL_110:
    v66 = v69;
    v67 = 18;
LABEL_111:
    _os_log_impl(&_mh_execute_header, v66, OS_LOG_TYPE_ERROR, v65, &buf, v67);
LABEL_13:
    *__error() = v10;
    if (!v8)
    {
      Error = 0;
      goto LABEL_53;
    }

LABEL_46:
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

    buf = 136446466;
    v85 = v36;
    v86 = 1024;
    LODWORD(v87) = v8;
    v37 = _os_log_send_and_compose_impl();
    Error = createError("_quire_bootstrap_diags", "quire.c", 2676, "com.apple.security.cryptex.posix", v8, 0, v37);
    free(v37);
LABEL_53:
    if (v16 == -1)
    {
      goto LABEL_55;
    }

    goto LABEL_54;
  }

  snprintf(to, 0x400uLL, "%s/%s", v80, *(v1 + 72));
  if (symlink(to, "/AppleInternal/Diags") && *__error() != 17)
  {
    v8 = *__error();
    v71 = *(v3 + 56);
    v10 = *__error();
    v69 = *(v3 + 72);
    if (!os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_13;
    }

    v72 = "[anonymous]";
    if (v71)
    {
      v72 = v71;
    }

    buf = 136446466;
    v85 = v72;
    v86 = 1024;
    LODWORD(v87) = v8;
    v65 = "%{public}s: failed to create symlink for diags: %{darwin.errno}d";
    goto LABEL_110;
  }

  v54 = *(v3 + 56);
  v55 = *__error();
  v56 = *(v3 + 72);
  if (os_log_type_enabled(v56, OS_LOG_TYPE_DEBUG))
  {
    v57 = "[anonymous]";
    if (v54)
    {
      v57 = v54;
    }

    buf = 136446210;
    v85 = v57;
    _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_DEBUG, "%{public}s: bootstrap diags successfully", &buf, 0xCu);
  }

  Error = 0;
  *__error() = v55;
LABEL_54:
  if (close(v16) == -1)
  {
    daemon_init_cold_13(&v76, &buf);
  }

LABEL_55:
  free(__s1);
  return Error;
}

CFErrorRef _quire_read_agent(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = *a3;
  v5 = malloc_type_calloc(1uLL, 0xC8uLL, 0x8709206FuLL);
  if (!v5)
  {
    _quire_read_agent_cold_1(&v34, buf);
  }

  v6 = v5;
  *(v5 + 136) = 0u;
  v7 = v5 + 136;
  *(v5 + 23) = 0;
  *(v5 + 152) = 0u;
  *(v5 + 168) = 0u;
  v8 = *(v4 + 56);
  v9 = *__error();
  v10 = *(v4 + 72);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v11 = "[anonymous]";
    v12 = *(a2 + 56);
    if (v8)
    {
      v11 = v8;
    }

    *buf = 136446466;
    v36 = v11;
    v37 = 2080;
    v38 = v12;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "%{public}s: _quire_read_agent: processing agent: %s", buf, 0x16u);
  }

  *__error() = v9;
  if (*(v4 + 188))
  {
    v13 = *(v4 + 192);
    if (v13)
    {
      v14 = *(v4 + 188);
    }

    else
    {
      v14 = 0;
    }

    if (v13)
    {
      v15 = 24;
    }

    else
    {
      v13 = 0;
      v15 = 8;
    }
  }

  else
  {
    v14 = 0;
    v13 = 0;
    v15 = 8;
  }

  v6[2] = *(v4 + 416);
  v6[12] = 0;
  *(v6 + 26) = v14;
  v6[14] = *(v4 + 72);
  v6[15] = v13;
  *(v6 + 128) = 0;
  v16 = *(v4 + 472);
  if (v16)
  {
    v17 = *(v6 + 22);
    v18 = &v6[v17 + 3];
    do
    {
      *v18++ = *(*v16 + 416);
      v16 = v16[1];
      LODWORD(v17) = v17 + 1;
    }

    while (v16);
    *(v6 + 22) = v17;
  }

  v6[1] = v15;
  v19 = *(v4 + 56);
  v20 = *__error();
  v21 = *(v4 + 72);
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
  {
    v22 = "[anonymous]";
    v23 = *(a2 + 56);
    if (v19)
    {
      v22 = v19;
    }

    *buf = 136446466;
    v36 = v22;
    v37 = 2080;
    v38 = v23;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEBUG, "%{public}s: reading agent plist: %s", buf, 0x16u);
  }

  *__error() = v20;
  file = _read_file(*(a2 + 80), v7);
  if (file)
  {
    v25 = file;
    v26 = file;
    if (*(v4 + 72))
    {
      os_log_type_enabled(*(v4 + 72), OS_LOG_TYPE_ERROR);
      v27 = *(v4 + 56);
      v28 = *(a2 + 56);
      *buf = 136446722;
      if (!v27)
      {
        v27 = "[anonymous]";
      }

      v36 = v27;
      v37 = 2080;
      v38 = v28;
      v39 = 1024;
      v40 = v25;
    }

    else
    {
      v30 = *(v4 + 56);
      if (!v30)
      {
        v30 = "[anonymous]";
      }

      v31 = *(a2 + 56);
      *buf = 136446722;
      v36 = v30;
      v37 = 2080;
      v38 = v31;
      v39 = 1024;
      v40 = file;
    }

    v32 = _os_log_send_and_compose_impl();
    Error = createError("_quire_read_agent", "quire.c", 998, "com.apple.security.cryptex.posix", v26, 0, v32);
    free(v32);
    if (Error)
    {
      buff_destroy(v7);
      free(v6);
    }
  }

  else
  {
    _quire_activate(v4);
    Error = 0;
    *v6 = *(v4 + 456);
    *(v4 + 456) = v6;
  }

  return Error;
}

CFErrorRef _quire_bootstrap_service(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *a3;
  v52 = 0;
  memset(v51, 0, sizeof(v51));
  v6 = *(v5 + 56);
  v7 = *__error();
  v8 = *(v5 + 72);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    if (v6)
    {
      v9 = v6;
    }

    else
    {
      v9 = "[anonymous]";
    }

    v10 = *(a2 + 56);
    LODWORD(buf[0]) = 136446466;
    *(buf + 4) = v9;
    WORD2(buf[1]) = 2080;
    *(&buf[1] + 6) = v10;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "%{public}s: _quire_bootstrap_service: bootstrapping service: %s", buf, 0x16u);
  }

  *__error() = v7;
  v11 = *(v5 + 188);
  if (v11)
  {
    v12 = *(v5 + 192);
    if (v12)
    {
      v13 = 24;
      goto LABEL_12;
    }

    v11 = 0;
  }

  else
  {
    v12 = 0;
  }

  v13 = 8;
LABEL_12:
  if ((_cryptex_content_type_factory[2] & *(v5 + 320)) != 0)
  {
    v14 = v13 | 0x20;
  }

  else
  {
    v14 = v13;
  }

  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  memset(buf, 0, sizeof(buf));
  buf[1] = *(v5 + 416);
  LODWORD(v64) = v11;
  *(&v64 + 1) = *(v5 + 72);
  *&v65 = v12;
  BYTE8(v65) = quire_boot_session_test(v5, ".jobs-loaded");
  v15 = *(v5 + 472);
  if (v15)
  {
    v16 = 0;
    do
    {
      buf[v16++ + 2] = *(*v15 + 416);
      v15 = v15[1];
    }

    while (v15);
    LODWORD(v63) = v16;
  }

  v17 = *(*(v5 + 200) + 40);
  v18 = *(v5 + 56);
  v19 = *__error();
  v20 = *(v5 + 72);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
  {
    if (v18)
    {
      v21 = v18;
    }

    else
    {
      v21 = "[anonymous]";
    }

    v22 = *(a2 + 56);
    *v53 = 136446466;
    v54 = v21;
    v55 = 2080;
    v56 = v22;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEBUG, "%{public}s: bootstrapping service: %s", v53, 0x16u);
  }

  *__error() = v19;
  file = _read_file(*(a2 + 80), v51);
  if (file)
  {
    v24 = file;
    v25 = *(v5 + 56);
    v26 = *__error();
    v27 = *(v5 + 72);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      if (v25)
      {
        v28 = v25;
      }

      else
      {
        v28 = "[anonymous]";
      }

      *v53 = 136446466;
      v54 = v28;
      v55 = 1024;
      LODWORD(v56) = v24;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "%{public}s: failed to read plist: %{darwin.errno}d", v53, 0x12u);
    }

    *__error() = v26;
    buff_destroy(v51);
    if (*(v5 + 72))
    {
      os_log_type_enabled(*(v5 + 72), OS_LOG_TYPE_ERROR);
      v29 = *(v5 + 56);
      v30 = *(a2 + 56);
      if (!v29)
      {
        v29 = "[anonymous]";
      }

      *v53 = 136446722;
      v54 = v29;
      v55 = 2080;
      v56 = v30;
      v57 = 1024;
      v58 = v24;
    }

    else
    {
      v43 = *(v5 + 56);
      if (!v43)
      {
        v43 = "[anonymous]";
      }

      v44 = *(a2 + 56);
      *v53 = 136446722;
      v54 = v43;
      v55 = 2080;
      v56 = v44;
      v57 = 1024;
      v58 = v24;
    }

    v45 = _os_log_send_and_compose_impl();
    Error = createError("_quire_bootstrap_service", "quire.c", 904, "com.apple.security.cryptex.posix", v24, 0, v45);
    free(v45);
  }

  else
  {
    buf[0] = v14 & 0xFFFFFFFFFFFFFFBFLL | (((v17 >> 1) & 1) << 6);
    v31 = sm_pending_service_create(0);
    v33 = v64;
    v32 = v65;
    v34 = v63;
    v36 = v60;
    v35 = v61;
    v37 = *buf;
    *(v31 + 2) = *&buf[2];
    *(v31 + 3) = v36;
    *(v31 + 1) = v37;
    v38 = v62;
    *(v31 + 6) = v34;
    *(v31 + 7) = v33;
    *(v31 + 4) = v35;
    *(v31 + 5) = v38;
    *(v31 + 8) = v32;
    v39 = sm_bootstrap_service(v51, buf, v31[1], *(v5 + 368));
    if (v39)
    {
      v40 = v39;
      if (*(v5 + 72))
      {
        os_log_type_enabled(*(v5 + 72), OS_LOG_TYPE_ERROR);
        v41 = *(v5 + 56);
        v42 = *(a2 + 56);
        if (!v41)
        {
          v41 = "[anonymous]";
        }

        *v53 = 136446466;
        v54 = v41;
        v55 = 2080;
        v56 = v42;
      }

      else
      {
        v47 = *(v5 + 56);
        if (!v47)
        {
          v47 = "[anonymous]";
        }

        v48 = *(a2 + 56);
        *v53 = 136446466;
        v54 = v47;
        v55 = 2080;
        v56 = v48;
      }

      v49 = _os_log_send_and_compose_impl();
      Error = createError("_quire_bootstrap_service", "quire.c", 890, "com.apple.security.cryptex", 14, v40, v49);
      free(v49);
      sm_pending_service_destroy(v31);
      buff_destroy(v51);
      CFRelease(v40);
    }

    else
    {
      *v31 = 0;
      **(a3 + 40) = v31;
      *(a3 + 40) = v31;
      buff_destroy(v51);
      return 0;
    }
  }

  return Error;
}

CFErrorRef _quire_bootstrap_watchdog_registration(uint64_t a1)
{
  v2 = _quire_parse_watchdog_service_descriptions(a1, watchdog_bootstrap_service_descriptions);
  if (v2)
  {
    v3 = v2;
    if (*(a1 + 72))
    {
      os_log_type_enabled(*(a1 + 72), OS_LOG_TYPE_ERROR);
    }

    *(a1 + 56);
    v5 = _os_log_send_and_compose_impl();
    Error = createError("_quire_bootstrap_watchdog_registration", "quire.c", 1290, "com.apple.security.cryptex", 33, v3, v5);
    free(v5);
    CFRelease(v3);
    return Error;
  }

  else
  {

    return quire_boot_session_set(a1, ".registered-for-watchdog", 1);
  }
}

CFErrorRef ___quire_bootstrap_launch_agents_block_invoke(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 48) == 3)
  {
    return _quire_attach_launch_agents(*(a1 + 32), *(a2 + 40), *(a2 + 80), *(a1 + 40));
  }

  else
  {
    return 0;
  }
}

void _quire_unlink_launch_agents(void *a1)
{
  v2 = a1[58];
  if (v2)
  {
    do
    {
      v3 = *v2;
      v4 = a1[7];
      v5 = *__error();
      v6 = a1[9];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        v7 = a1[52];
        if (v4)
        {
          v8 = v4;
        }

        else
        {
          v8 = "[anonymous]";
        }

        *buf = 136446466;
        v19 = v8;
        v20 = 2080;
        v21 = v7;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "%{public}s: Found a Launch Agent while removing quire: %s - going to deactivate it.", buf, 0x16u);
      }

      *__error() = v5;
      _quire_deactivate_launch_agent(v2, a1);
      v2 = v3;
    }

    while (v3);
  }

  _quire_activate(a1);
  v9 = a1[57];
  if (v9)
  {
    v10 = (a1 + 57);
    do
    {
      v11 = *v10;
      if (*v10 == v9)
      {
        v12 = a1 + 57;
      }

      else
      {
        do
        {
          v12 = v11;
          v11 = *v11;
        }

        while (v11 != v9);
      }

      v13 = *v9;
      *v12 = *v11;
      *v9 = -1;
      buff_destroy(v9 + 17);
      free(v9);
      _quire_deactivate(a1);
      v9 = v13;
    }

    while (v13);
  }

  v14 = a1[7];
  v15 = *__error();
  v16 = a1[9];
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    if (v14)
    {
      v17 = v14;
    }

    else
    {
      v17 = "[anonymous]";
    }

    *buf = 136446210;
    v19 = v17;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, "%{public}s: Removed all launch agents.", buf, 0xCu);
  }

  *__error() = v15;
  _quire_deactivate(a1);
}

void ___quire_unbootstrap_continue_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *v1;
  _quire_iter_feature_flags(*v1, v1, _quire_remove_resource_from_data_volume);
  _quire_iter_binaries(v2, v1, _quire_remove_resource_from_data_volume);
  _quire_iter_libraries(v2, v1, _quire_remove_resource_from_data_volume);
  _quire_iter_log_profiles(v2, v1, _quire_remove_resource_from_data_volume);
  _quire_unbootstrap_diags(v2);
  _quire_unbootstrap_trust_cache(v2);
}

void ___quire_unbootstrap_continue2_block_invoke(uint64_t a1, const void *a2)
{
  v2 = *(a1 + 32);
  v3 = *v2;
  if (a2)
  {
    if (*(v3 + 72))
    {
      os_log_type_enabled(*(v3 + 72), OS_LOG_TYPE_ERROR);
    }

    *(v3 + 56);
    v5 = _os_log_send_and_compose_impl();
    Error = createError("_quire_unbootstrap_continue3", "quire.c", 3157, "com.apple.security.cryptex", 38, a2, v5);
    free(v5);
    if (Error)
    {
      v2[2] = CFRetain(Error);
      cryptex_target_async_f();
      CFRelease(Error);
    }
  }

  else
  {
    v7 = *(a1 + 32);
    cryptex_async();
  }
}

uint64_t ___quire_unbootstrap_continue3_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *v1;
  *(v2 + 176) = *(*v1 + 176) & 0xFFFFFFFFFFFFFFFDLL;
  if ((*(v2 + 400) & 0x80000000) == 0)
  {
    close_drop_np();
  }

  v1[2] = 0;

  return cryptex_target_async_f();
}

uint64_t OUTLINED_FUNCTION_2_4()
{

  return _os_log_send_and_compose_impl();
}

double OUTLINED_FUNCTION_9_0(void *a1, _OWORD *a2)
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

uint64_t sysctl_upgrade_set(int a1)
{
  v2 = a1;
  result = sysctlbyname("kern.proc_rsr_in_progress", 0, 0, &v2, 4uLL);
  if (result)
  {
    return *__error();
  }

  return result;
}

uint64_t sysctl_upgrade_is_ongoing(BOOL *a1)
{
  v4 = 0;
  v3 = 4;
  if (sysctlbyname("kern.proc_rsr_in_progress", &v4, &v3, 0, 0))
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

uint64_t _codex_demux(void *a1, uint64_t a2, _BYTE *a3)
{
  v6 = proc_create(a2, 0);
  v7 = proc_resolve(v6);
  if (v7)
  {
    v8 = v7;
    v9 = a1[7];
    v10 = *__error();
    v11 = a1[9];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = "[anonymous]";
      if (v9)
      {
        v12 = v9;
      }

      *buf = 136446466;
      v67 = v12;
      v68 = 1024;
      LODWORD(v69) = v8;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%{public}s: failed to resolve proc: %{darwin.errno}d", buf, 0x12u);
    }

    *__error() = v10;
    goto LABEL_15;
  }

  v13 = *(a2 + 24);
  if (v13 > 4)
  {
    v8 = 22;
    goto LABEL_15;
  }

  v14 = off_100073F88[v13];
  v15 = (&off_100073FD8)[v13];
  v8 = proc_entitled(v6, (&off_100073FB0)[v13]);
  v16 = a1[7];
  v65 = *__error();
  v17 = a1[9];
  if (v8)
  {
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = "[anonymous]";
      v19 = v6[8];
      v20 = v6[9];
      if (v16)
      {
        v18 = v16;
      }

      *buf = 136447490;
      v67 = v18;
      v68 = 2080;
      v69 = v15;
      v70 = 2080;
      v71 = v14;
      v72 = 2080;
      v73 = v19;
      v74 = 2080;
      v75 = v20;
      v76 = 1024;
      v77 = v8;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "%{public}s: proc not entitled for %s: entitlement = %s, proc = %s, signing id = %s: %{darwin.errno}d", buf, 0x3Au);
    }

    *__error() = v65;
    goto LABEL_15;
  }

  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    v22 = "[anonymous]";
    if (v16)
    {
      v22 = v16;
    }

    v23 = v6[8];
    v24 = v6[9];
    *buf = 136447234;
    v67 = v22;
    v68 = 2080;
    v69 = v15;
    v70 = 2080;
    v71 = v14;
    v72 = 2080;
    v73 = v23;
    v74 = 2080;
    v75 = v24;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, "%{public}s: authorized proc for %s: entitlement = %s, proc = %s, signing id = %s", buf, 0x34u);
  }

  *__error() = v65;
  if (v13 > 2)
  {
    v8 = 45;
    goto LABEL_15;
  }

  if (!v13)
  {
    v26 = proc_create(a2, 0);
    v27 = proc_resolve(v26);
    if (v27)
    {
      v8 = v27;
      v28 = a1[7];
      v29 = *__error();
      v30 = a1[9];
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        v31 = "[anonymous]";
        if (v28)
        {
          v31 = v28;
        }

        *buf = 136446466;
        v67 = v31;
        v68 = 1024;
        LODWORD(v69) = v8;
        v32 = "%{public}s: failed to resolve proc: %{darwin.errno}d";
        v33 = v30;
        v34 = 18;
LABEL_42:
        _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_ERROR, v32, buf, v34);
        goto LABEL_43;
      }

      goto LABEL_43;
    }

    v36 = proc_entitled(v26, "com.apple.private.security.cryptex.install");
    if (v36)
    {
      v8 = v36;
      v37 = a1[7];
      v29 = *__error();
      v38 = a1[9];
      if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
      {
        v39 = "[anonymous]";
        if (v37)
        {
          v39 = v37;
        }

        v40 = v26[8];
        v41 = v26[9];
        *buf = 136447234;
        v67 = v39;
        v68 = 2080;
        v69 = "com.apple.private.security.cryptex.install";
        v70 = 2080;
        v71 = v40;
        v72 = 2080;
        v73 = v41;
        v74 = 1024;
        LODWORD(v75) = v8;
        v32 = "%{public}s: proc not entitled for install: entitlement = %s, proc = %s, signing id = %s: %{darwin.errno}d";
        v33 = v38;
        v34 = 48;
        goto LABEL_42;
      }

LABEL_43:
      *__error() = v29;
LABEL_44:
      if (v26)
      {
        os_release(v26);
      }

      goto LABEL_15;
    }

    v42 = codex_install_unpack();
    if (v42)
    {
      v8 = v42;
      v43 = xpc_copy_description(*(a2 + 296));
      v44 = a1[7];
      v45 = *__error();
      v46 = a1[9];
      if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
      {
        v47 = "[anonymous]";
        *buf = 136446722;
        if (v44)
        {
          v47 = v44;
        }

        v67 = v47;
        v68 = 2080;
        v69 = v43;
        v70 = 1024;
        LODWORD(v71) = v8;
        _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_ERROR, "%{public}s: failed to unpack ipc: %s: %{darwin.errno}d", buf, 0x1Cu);
      }

      *__error() = v45;
      free(v43);
      goto LABEL_44;
    }

    v48 = cryptex_core_create();
    v49 = cryptex_core_set_assets_from_fds();
    if (v49)
    {
      v8 = v49;
      v50 = a1[7];
      v51 = *__error();
      v52 = a1[9];
      if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
      {
        v53 = "[anonymous]";
        if (v50)
        {
          v53 = v50;
        }

        *buf = 136446466;
        v67 = v53;
        v68 = 1024;
        LODWORD(v69) = v8;
        _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_ERROR, "%{public}s: set assets to core from fds failed: %{darwin.errno}d", buf, 0x12u);
      }

      *__error() = v51;
    }

    else
    {
      if (cryptex_core_is_cryptex1())
      {
        object = cryptex_core_cx1_properties_create_with_xpc_dictionary();
        if (!object)
        {
          v60 = a1[7];
          v61 = *__error();
          v62 = a1[9];
          if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
          {
            v63 = "[anonymous]";
            if (v60)
            {
              v63 = v60;
            }

            *buf = 136446466;
            v67 = v63;
            v68 = 1024;
            LODWORD(v69) = 22;
            _os_log_impl(&_mh_execute_header, v62, OS_LOG_TYPE_ERROR, "%{public}s: failed to parse Cryptex1 properties.: %{darwin.errno}d", buf, 0x12u);
          }

          *__error() = v61;
          v8 = 22;
          goto LABEL_74;
        }

        cryptex_core_set_cryptex1_properties();
      }

      else
      {
        object = 0;
      }

      v54 = a1[7];
      v55 = *__error();
      v56 = a1[9];
      if (os_log_type_enabled(v56, OS_LOG_TYPE_DEBUG))
      {
        v57 = "[anonymous]";
        if (v54)
        {
          v57 = v54;
        }

        *buf = 136446210;
        v67 = v57;
        _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_DEBUG, "%{public}s: using default signing service", buf, 0xCu);
      }

      *__error() = v55;
      v48[6] = 0;
      v48[7] = 0;
      v58 = sub_state_alloc(a1, a2, a3);
      started = pipeline_start_state_alloc(a1, v58, 0, 0, 0, _codex_rpc_install_continue2);
      codex_install_cryptex(a1, v48, started);
      v8 = 36;
      if (object)
      {
        os_release(object);
      }
    }

LABEL_74:
    if (v48)
    {
      os_release(v48);
    }

    goto LABEL_44;
  }

  if (v13 == 1)
  {
    v8 = codex_list_unpack();
    if (v8)
    {
      goto LABEL_15;
    }

    v25 = sub_state_alloc(a1, a2, a3);
    codex_list_installed(a1, v25, _codex_rpc_list_reply);
  }

  else
  {
    v35 = sub_state_alloc(a1, a2, a3);
    codex_lockdown(a1, v35, _codex_rpc_lockdown_continue);
  }

  v8 = 36;
LABEL_15:
  if (v6)
  {
    os_release(v6);
  }

  if (a1)
  {
    os_release(a1);
  }

  return v8;
}

void _codex_rpc_install_continue2(uint64_t a1, void *a2, const void *a3, uint64_t a4)
{
  v19 = a4;
  if (a3)
  {
    if (*(a1 + 72))
    {
      os_log_type_enabled(*(a1 + 72), OS_LOG_TYPE_ERROR);
      v7 = *(a1 + 56);
      if (!v7)
      {
        v7 = "[anonymous]";
      }

      v20 = 136446210;
      v21 = v7;
    }

    else
    {
      v10 = *(a1 + 56);
      if (!v10)
      {
        v10 = "[anonymous]";
      }

      v20 = 136446210;
      v21 = v10;
    }

    v11 = _os_log_send_and_compose_impl();
    v12 = "com.apple.security.cryptex";
    v13 = 167;
    v14 = 14;
    v15 = a3;
  }

  else
  {
    v8 = *(a4 + 8);
    if (v8)
    {
      if (*(a1 + 72))
      {
        os_log_type_enabled(*(a1 + 72), OS_LOG_TYPE_ERROR);
        v9 = *(a1 + 56);
        if (!v9)
        {
          v9 = "[anonymous]";
        }
      }

      else
      {
        v9 = *(a1 + 56);
        if (!v9)
        {
          v9 = "[anonymous]";
        }
      }

      v20 = 136446466;
      v21 = v9;
      v22 = 1024;
      v23 = v8;
      v11 = _os_log_send_and_compose_impl();
      v12 = "com.apple.security.cryptex.posix";
      v13 = 175;
      v14 = v8;
      v15 = 0;
    }

    else
    {
      if (!*(a4 + 16))
      {
        codex_bootstrap(a1, a2, a4, _codex_rpc_install_continue3);
        return;
      }

      if (*(a1 + 72))
      {
        os_log_type_enabled(*(a1 + 72), OS_LOG_TYPE_ERROR);
        v16 = *(a1 + 56);
        if (!v16)
        {
          v16 = "[anonymous]";
        }

        v20 = 136446210;
        v21 = v16;
      }

      else
      {
        v17 = *(a1 + 56);
        if (!v17)
        {
          v17 = "[anonymous]";
        }

        v20 = 136446210;
        v21 = v17;
      }

      v11 = _os_log_send_and_compose_impl();
      v15 = *(a4 + 16);
      v12 = "com.apple.security.cryptex";
      v13 = 183;
      v14 = 4;
    }
  }

  Error = createError("_codex_rpc_install_continue2", "sub_codex.c", v13, v12, v14, v15, v11);
  free(v11);
  if (Error)
  {
    sub_reply_and_consume_with_cferr((a4 + 32), Error);
    pipeline_start_state_destroy(&v19);
    CFRelease(Error);
  }
}

void _codex_rpc_install_continue3(uint64_t a1, uint64_t a2, const void *a3, uint64_t a4)
{
  v19 = a4;
  if (a3)
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

      *buf = 136446466;
      *&buf[4] = v11;
      *&buf[12] = 2112;
      *&buf[14] = a3;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%{public}s: bootstrap failed, unbootstrapping: %@", buf, 0x16u);
    }

    *__error() = v9;
    *(a4 + 16) = CFRetain(a3);
    codex_unbootstrap(a1, a2, 1uLL, a4, _codex_rpc_install_failure_unbootstrap_callback);
  }

  else
  {
    *buf = *(a2 + 208);
    *&buf[8] = **(a2 + 224);
    *&buf[16] = *(a2 + 424);
    v27 = *(a2 + 416);
    v12 = *(*(a4 + 32) + 40);
    codex_install_reply_pack();
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

      v17 = *(a2 + 208);
      v18 = *(a2 + 416);
      *v20 = 136446722;
      v21 = v16;
      v22 = 2080;
      v23 = v17;
      v24 = 2080;
      v25 = v18;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "%{public}s: replying: name = %s, mnt path = %s", v20, 0x20u);
    }

    *__error() = v14;
    sub_reply_and_consume((a4 + 32), 0);
    pipeline_start_state_destroy(&v19);
  }
}

void _codex_rpc_install_failure_unbootstrap_callback(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (a1[7])
  {
    v8 = a1[7];
  }

  else
  {
    v8 = "[anonymous]";
  }

  v9 = *__error();
  v10 = a1[9];
  if (a3)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v15 = 136446466;
      v16 = v8;
      v17 = 2112;
      v18 = a3;
      v11 = "%{public}s: unbootstrap: %@";
      v12 = v10;
      v13 = OS_LOG_TYPE_ERROR;
      v14 = 22;
LABEL_9:
      _os_log_impl(&_mh_execute_header, v12, v13, v11, &v15, v14);
    }
  }

  else if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v15 = 136446210;
    v16 = v8;
    v11 = "%{public}s: unbootstrap [no error]";
    v12 = v10;
    v13 = OS_LOG_TYPE_DEBUG;
    v14 = 12;
    goto LABEL_9;
  }

  *__error() = v9;
  codex_uninstall(a1, a2, a4, _codex_rpc_install_failure_uninstall_callback);
}

void _codex_rpc_install_failure_uninstall_callback(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14 = a4;
  if (*(a1 + 56))
  {
    v7 = *(a1 + 56);
  }

  else
  {
    v7 = "[anonymous]";
  }

  v8 = *__error();
  v9 = *(a1 + 72);
  if (a3)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v16 = v7;
      v17 = 2112;
      v18 = a3;
      v10 = "%{public}s: uninstall: %@";
      v11 = v9;
      v12 = OS_LOG_TYPE_ERROR;
      v13 = 22;
LABEL_9:
      _os_log_impl(&_mh_execute_header, v11, v12, v10, buf, v13);
    }
  }

  else if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136446210;
    v16 = v7;
    v10 = "%{public}s: uninstall [no error]";
    v11 = v9;
    v12 = OS_LOG_TYPE_DEBUG;
    v13 = 12;
    goto LABEL_9;
  }

  *__error() = v8;
  sub_reply_and_consume_with_cferr((a4 + 32), *(a4 + 16));
  pipeline_start_state_destroy(&v14);
}

void _codex_rpc_list_reply(int a1, int a2, xpc_object_t object, uint64_t a4)
{
  v6 = a4;
  if (xpc_get_type(object) == &_xpc_type_array)
  {
    v5 = *(a4 + 40);
    codex_list_reply_pack();
    sub_reply_and_consume(&v6, 0);
  }

  else
  {
    __break(1u);
  }
}

void _codex_rpc_lockdown_continue(uint64_t a1, int a2, uint64_t a3)
{
  v9 = a3;
  if (a2)
  {
    v5 = *(a1 + 56);
    v6 = *__error();
    v7 = *(a1 + 72);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = "[anonymous]";
      if (v5)
      {
        v8 = v5;
      }

      *buf = 136446466;
      v11 = v8;
      v12 = 1024;
      v13 = a2;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%{public}s: codex lockdown failed: %{darwin.errno}d", buf, 0x12u);
    }

    *__error() = v6;
  }

  sub_reply_and_consume(&v9, a2);
}

void upgrade_sub_trampoline_block_client(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = xpc_dictionary_get_remote_connection(v1);
    string = xpc_dictionary_get_string(v2, "cryptex_name");
    if (string)
    {
      v5 = string;
      buffer = *"unknown";
      v23 = unk_1000597A0;
      pid = xpc_connection_get_pid(v3);
      proc_name(pid, &buffer, 0x20u);
      v7 = *__error();
      v8 = _upgrade_sub_trampoline_osl();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        if (v3)
        {
          v9 = xpc_connection_get_pid(v3);
        }

        else
        {
          v9 = -1;
        }

        v16 = 136315650;
        p_buffer = &buffer;
        v18 = 1024;
        v19 = v9;
        v20 = 2080;
        v21 = v5;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "XPC client <process=%s pid=%d>: Blocking client during upgrade for cryptex '%s'.", &v16, 0x1Cu);
      }

      *__error() = v7;
      upgrade_cryptex_set_complete_callback(v5, v2, _upgrade_sub_trampoline_unblock_client);
    }

    else
    {
      buffer = *"unknown";
      v23 = unk_1000597A0;
      v12 = xpc_connection_get_pid(v3);
      proc_name(v12, &buffer, 0x20u);
      v13 = *__error();
      v14 = _upgrade_sub_trampoline_osl();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        if (v3)
        {
          v15 = xpc_connection_get_pid(v3);
        }

        else
        {
          v15 = -1;
        }

        v16 = 136315394;
        p_buffer = &buffer;
        v18 = 1024;
        v19 = v15;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "XPC client <process=%s pid=%d>: Client did not provide the name of a cryptex to block on.", &v16, 0x12u);
      }

      *__error() = v13;
      _upgrade_sub_trampoline_unblock_client(v2, 0);
    }
  }

  else
  {
    v10 = *__error();
    v11 = _upgrade_sub_trampoline_osl();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      LOWORD(buffer) = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Invalid input.", &buffer, 2u);
    }

    *__error() = v10;
  }
}

id _upgrade_sub_trampoline_osl()
{
  if (_upgrade_sub_trampoline_osl_onceToken != -1)
  {
    _upgrade_sub_trampoline_osl_cold_1();
  }

  v1 = _upgrade_sub_trampoline_osl_trampoline_log;

  return v1;
}

void _upgrade_sub_trampoline_unblock_client(xpc_object_t xdict, uint64_t a2)
{
  if (xdict)
  {
    v4 = xpc_dictionary_get_remote_connection(xdict);
    string = xpc_dictionary_get_string(xdict, "cryptex_name");
    if (!string)
    {
      goto LABEL_19;
    }

    v6 = string;
    *buffer = *"unknown";
    *&buffer[16] = unk_1000597A0;
    pid = xpc_connection_get_pid(v4);
    proc_name(pid, buffer, 0x20u);
    v8 = *__error();
    v9 = _upgrade_sub_trampoline_osl();
    v10 = v9;
    if (a2)
    {
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        if (v4)
        {
          v11 = xpc_connection_get_pid(v4);
        }

        else
        {
          v11 = -1;
        }

        *v30 = 136315906;
        *&v30[4] = buffer;
        *&v30[12] = 1024;
        *&v30[14] = v11;
        *&v30[18] = 2080;
        *&v30[20] = v6;
        *&v30[28] = 2112;
        *&v30[30] = a2;
        v15 = "XPC client <process=%s pid=%d>: Upgrade for cryptex '%s' has finished.: %@";
        v16 = v10;
        v17 = OS_LOG_TYPE_ERROR;
        v18 = 38;
LABEL_17:
        _os_log_impl(&_mh_execute_header, v16, v17, v15, v30, v18);
      }
    }

    else if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      if (v4)
      {
        v14 = xpc_connection_get_pid(v4);
      }

      else
      {
        v14 = -1;
      }

      *v30 = 136315650;
      *&v30[4] = buffer;
      *&v30[12] = 1024;
      *&v30[14] = v14;
      *&v30[18] = 2080;
      *&v30[20] = v6;
      v15 = "XPC client <process=%s pid=%d>: Upgrade for cryptex '%s' has finished. [no error]";
      v16 = v10;
      v17 = OS_LOG_TYPE_DEBUG;
      v18 = 28;
      goto LABEL_17;
    }

    *__error() = v8;
LABEL_19:
    *v30 = *"unknown";
    *&v30[16] = unk_1000597A0;
    v19 = xpc_connection_get_pid(v4);
    proc_name(v19, v30, 0x20u);
    v20 = *__error();
    v21 = _upgrade_sub_trampoline_osl();
    v22 = v21;
    if (a2)
    {
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        if (v4)
        {
          v23 = xpc_connection_get_pid(v4);
        }

        else
        {
          v23 = -1;
        }

        *buffer = 136315650;
        *&buffer[4] = v30;
        *&buffer[12] = 1024;
        *&buffer[14] = v23;
        *&buffer[18] = 2112;
        *&buffer[20] = a2;
        v25 = "XPC client <process=%s pid=%d>: Unblocking client.: %@";
        v26 = v22;
        v27 = OS_LOG_TYPE_ERROR;
        v28 = 28;
LABEL_30:
        _os_log_impl(&_mh_execute_header, v26, v27, v25, buffer, v28);
      }
    }

    else if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      if (v4)
      {
        v24 = xpc_connection_get_pid(v4);
      }

      else
      {
        v24 = -1;
      }

      *buffer = 136315394;
      *&buffer[4] = v30;
      *&buffer[12] = 1024;
      *&buffer[14] = v24;
      v25 = "XPC client <process=%s pid=%d>: Unblocking client. [no error]";
      v26 = v22;
      v27 = OS_LOG_TYPE_DEBUG;
      v28 = 18;
      goto LABEL_30;
    }

    *__error() = v20;
    reply = xpc_dictionary_create_reply(xdict);
    xpc_dictionary_send_reply();

    goto LABEL_32;
  }

  v12 = *__error();
  v13 = _upgrade_sub_trampoline_osl();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    *v30 = 0;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Invalid input.", v30, 2u);
  }

  *__error() = v12;
LABEL_32:
}

void ___upgrade_sub_trampoline_osl_block_invoke(id a1)
{
  _upgrade_sub_trampoline_osl_trampoline_log = os_log_create("com.apple.libcryptex", "upgrade_sub_trampoline");

  _objc_release_x1();
}

void *pipeline_start_state_alloc(void *a1, uint64_t a2, void *a3, int a4, void *a5, uint64_t a6)
{
  v11 = ctx_new(a1, 0x48uLL);
  *(v11 + 14) = a4;
  v11[4] = a2;
  v11[5] = a3;
  if (a3)
  {
    os_retain(a3);
  }

  v11[8] = 0;
  if (a5)
  {
    v11[8] = xpc_retain(a5);
  }

  v11[6] = a6;
  return v11;
}

void pipeline_start_state_destroy(uint64_t *a1)
{
  if (a1)
  {
    v2 = *a1;
    if (*(*a1 + 32))
    {
      pipeline_start_state_destroy_cold_1();
    }

    v3 = *(v2 + 40);
    if (v3)
    {
      os_release(v3);
      *(v2 + 40) = 0;
    }

    v4 = *(v2 + 64);
    if (v4)
    {
      xpc_release(v4);
      *(v2 + 64) = 0;
    }

    ctx_destroy(v2);
    *a1 = 0;
  }
}

const char *get_session_type_for_domain(uint64_t a1)
{
  if (a1)
  {
    return "UNK";
  }

  else
  {
    return "System";
  }
}

id getLaunchdDomainForUser(uint64_t a1)
{
  if (a1)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      getLaunchdDomainForUser_cold_1();
    }

    v1 = 0;
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *v3 = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Using system domain", v3, 2u);
    }

    v1 = +[OSLaunchdDomain currentDomain];
  }

  return v1;
}

uint64_t launchd_session_uncork(uint64_t a1)
{
  v1 = a1;
  v2 = [OSLaunchdDomain domainForRoleAccountUser:a1];
  if (v2)
  {
    v3 = 0;
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
    {
      launchd_session_uncork_cold_1(v1);
    }

    v3 = 33;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v9 = v1;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Uncorking session for uid %d", buf, 8u);
  }

  v7 = 0;
  v4 = [v2 unpendLaunches:&v7];
  v5 = v7;
  if ((v4 & 1) == 0)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      launchd_session_uncork_cold_2(v5);
    }

    v3 = 22;
  }

  return v3;
}

CFErrorRef launchd_session_destroy(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [OSLaunchdDomain domainForRoleAccountUser:a1];
  if (v4)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v15 = a1;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Closing domain for uid %d", buf, 8u);
    }

    v13 = 0;
    v5 = [v4 initiateRemoval:&v13];
    v6 = v13;
    v7 = v6;
    if (v5)
    {
      Error = 0;
    }

    else if ([v6 code] == 124)
    {
      v9 = *__error();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "Session is being torn down already", buf, 2u);
      }

      Error = 0;
      *__error() = v9;
    }

    else
    {
      if (v3)
      {
        os_log_type_enabled(v3, OS_LOG_TYPE_ERROR);
      }

      *buf = 67109376;
      v15 = a1;
      v16 = 1024;
      v17 = 22;
      v11 = _os_log_send_and_compose_impl();
      Error = createError("launchd_session_destroy", "launchd_session.m", 253, "com.apple.security.cryptex.posix", 22, v7, v11);
      free(v11);
    }
  }

  else
  {
    if (v3)
    {
      os_log_type_enabled(v3, OS_LOG_TYPE_ERROR);
    }

    *buf = 67109376;
    v15 = a1;
    v16 = 1024;
    v17 = 33;
    v10 = _os_log_send_and_compose_impl();
    Error = createError("launchd_session_destroy", "launchd_session.m", 240, "com.apple.security.cryptex.posix", 33, 0, v10);
    free(v10);
    v7 = 0;
  }

  return Error;
}

uint64_t launchd_session_remove_job(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (!v3)
  {
LABEL_7:
    v8 = 0;
    goto LABEL_16;
  }

  v15 = 0;
  [v3 remove:&v15];
  v5 = v15;
  if (v5)
  {
    v6 = v5;
    if ([v5 code] == 36)
    {
      v7 = *__error();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "Removing launchd job", buf, 2u);
      }

      *__error() = v7;

      goto LABEL_7;
    }

    if ([v6 code] == 3)
    {
      v10 = *__error();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
      {
        *v12 = 0;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "Couldn't find job to stop it from being monitored", v12, 2u);
      }

      *__error() = v10;

      v8 = 3;
    }

    else
    {
      v8 = [v6 code];
    }
  }

  else
  {
    v9 = *__error();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "Removed launchd job", v14, 2u);
    }

    v8 = 0;
    *__error() = v9;
  }

LABEL_16:

  return v8;
}

CFErrorRef launchd_session_create_job(void *a1, int a2, uint64_t a3, void *a4)
{
  v7 = a1;
  v8 = xpc_dictionary_get_array(v7, "_ManagedBy");
  string = xpc_dictionary_get_string(v7, "_ManagedBy");
  v10 = getLaunchdDomainForUser(0);
  if (v10)
  {
    if (v8 | string)
    {
      if (v8)
      {
        empty = xpc_copy(v8);
      }

      else
      {
        empty = xpc_array_create_empty();
        v15 = xpc_string_create(string);
        xpc_array_append_value(empty, v15);
      }

      v16 = xpc_string_create("com.apple.security.cryptexd");
      xpc_array_append_value(empty, v16);

      xpc_dictionary_set_value(v7, "_ManagedBy", empty);
    }

    else
    {
      xpc_dictionary_set_string(v7, "_ManagedBy", "com.apple.security.cryptexd");
    }

    _xpc_object_set_string_if_absent(v7, "_PersistToBootMode", "rem");
    v14 = [[OSLaunchdJob alloc] initWithPlist:v7 domain:v10];
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138413058;
      *v20 = v14;
      *&v20[8] = 1024;
      v21 = a2;
      v22 = 2112;
      v23 = v10;
      v24 = 2080;
      v25 = a3;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Created job %@ for uid %d: %@ (session: %s)", buf, 0x26u);
    }

    if (a4)
    {
      v17 = v14;
      Error = 0;
      *a4 = v14;
    }

    else
    {
      Error = 0;
    }
  }

  else
  {
    os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    *buf = 67109376;
    *v20 = a2;
    *&v20[4] = 1024;
    *&v20[6] = 33;
    v12 = _os_log_send_and_compose_impl();
    Error = createError("launchd_session_create_job", "launchd_session.m", 311, "com.apple.security.cryptex.posix", 33, 0, v12);
    free(v12);
    v14 = 0;
  }

  return Error;
}

CFErrorRef launchd_session_find_job(uint64_t a1, int a2, uint64_t a3, void *a4)
{
  v7 = getLaunchdDomainForUser(0);
  if (!v7)
  {
    os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    *buf = 67109376;
    *v18 = a2;
    *&v18[4] = 1024;
    *&v18[6] = 33;
    v14 = _os_log_send_and_compose_impl();
    Error = createError("launchd_session_find_job", "launchd_session.m", 394, "com.apple.security.cryptex.posix", 33, 0, v14);
LABEL_10:
    v13 = Error;
    free(v14);
    goto LABEL_11;
  }

  v8 = [NSString stringWithUTF8String:a1];
  v9 = [OSLaunchdJob copyJobWithLabel:v8 domain:v7];

  if (!v9)
  {
    os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    *buf = 136446466;
    *v18 = a1;
    *&v18[8] = 1024;
    LODWORD(v19) = 2;
    v14 = _os_log_send_and_compose_impl();
    Error = createError("launchd_session_find_job", "launchd_session.m", 401, "com.apple.security.cryptex.posix", 2, 0, v14);
    goto LABEL_10;
  }

  if (a4)
  {
    v10 = v9;
    *a4 = v9;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [v9 handle];
    v12 = [v11 UUIDString];
    *buf = 136446722;
    *v18 = a1;
    *&v18[8] = 2082;
    v19 = [v12 UTF8String];
    v20 = 1024;
    v21 = a2;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Rediscovered job %{public}s (UUID: %{public}s) for uid %d", buf, 0x1Cu);
  }

  v13 = 0;
LABEL_11:

  return v13;
}

void (*InventoryXPC.init(queue:)(void *a1))(char *, uint64_t)
{
  v56 = a1;
  v1 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s13CryptexServer16VirtualEnvConfigVSgMd, &_s13CryptexServer16VirtualEnvConfigVSgMR) - 8) + 64);
  v2 = (__chkstk_darwin)();
  v51 = v45 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v53 = v45 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6System8FilePathVSgMd, &_s6System8FilePathVSgMR);
  v6 = *(*(v5 - 8) + 64);
  v7 = __chkstk_darwin(v5 - 8);
  v50 = v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = v45 - v9;
  v11 = type metadata accessor for FilePath();
  v12 = *(v11 - 8);
  v13 = v12[8];
  v14 = __chkstk_darwin(v11);
  v49 = v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v18 = v45 - v17;
  v19 = __chkstk_darwin(v16);
  v21 = v45 - v20;
  __chkstk_darwin(v19);
  v23 = v45 - v22;
  FilePath.init(_:)();
  FilePath.init(_:)();
  v24 = type metadata accessor for Inventory();
  v52 = "com.apple.security.cryptexd";
  v25 = v12[2];
  v62 = v23;
  v25(v18, v23, v11);
  v48 = v25;
  v25(v10, v21, v11);
  v26 = v12[7];
  v55 = v11;
  v47 = v26;
  v26(v10, 0, 1, v11);
  v27 = type metadata accessor for VirtualEnvConfig();
  v28 = *(v27 - 8);
  v29 = *(v28 + 56);
  v45[1] = v28 + 56;
  v46 = v29;
  v29(v53, 1, 1, v27);
  v45[0] = type metadata accessor for Image4Auth();
  v60 = v45[0];
  v61 = &protocol witness table for Image4Auth;
  __swift_allocate_boxed_opaque_existential_1(v59);
  Image4Auth.init()();
  v53 = v24;
  v30 = v54;
  v31 = Inventory.__allocating_init(name:runtimeDirectory:cryptexStorage:authenticator:venvConfig:)();
  if (v30)
  {

    v32 = v12[1];
    v33 = v55;
    v32(v21, v55);
    v32(v62, v33);
    type metadata accessor for InventoryXPC();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v52 = v31;
    v54 = v21;
    v34 = v55;
    v48(v49, v62, v55);
    v47(v50, 1, 1, v34);
    v46(v51, 1, 1, v27);
    v60 = v45[0];
    v61 = &protocol witness table for Image4Auth;
    __swift_allocate_boxed_opaque_existential_1(v59);
    Image4Auth.init()();
    Inventory.__allocating_init(name:runtimeDirectory:cryptexStorage:authenticator:venvConfig:)();
    v35 = v34;
    v36 = v62;
    type metadata accessor for Server();

    v37 = v56;
    v38 = static Server.createAnonymous(queue:persistentInventory:ephemeralInventory:)();
    v39 = v54;
    v41 = v38;

    v42 = v12[1];
    v42(v39, v35);
    v42(v36, v35);
    v43 = v57;
    *&v57[OBJC_IVAR____TtC8cryptexd12InventoryXPC_server] = v41;
    v44 = type metadata accessor for InventoryXPC();
    v58.receiver = v43;
    v58.super_class = v44;
    v32 = objc_msgSendSuper2(&v58, "init");
  }

  return v32;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t InventoryXPC.start()()
{
  *(v1 + 16) = v0;
  return _swift_task_switch(InventoryXPC.start(), 0, 0);
}

{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC8cryptexd12InventoryXPC_server);
  v2 = *(&async function pointer to dispatch thunk of Server.start() + 1);
  v5 = (&async function pointer to dispatch thunk of Server.start() + async function pointer to dispatch thunk of Server.start());
  v3 = swift_task_alloc();
  *(v0 + 24) = v3;
  *v3 = v0;
  v3[1] = InventoryXPC.start();

  return v5();
}

{
  v1 = *(*v0 + 24);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t @objc closure #1 in InventoryXPC.start()(const void *a1, void *a2)
{
  *(v2 + 16) = a2;
  *(v2 + 24) = _Block_copy(a1);
  v4 = a2;

  return _swift_task_switch(@objc closure #1 in InventoryXPC.start(), 0, 0);
}

uint64_t @objc closure #1 in InventoryXPC.start()()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC8cryptexd12InventoryXPC_server);
  v2 = *(&async function pointer to dispatch thunk of Server.start() + 1);
  v5 = (&async function pointer to dispatch thunk of Server.start() + async function pointer to dispatch thunk of Server.start());
  v3 = swift_task_alloc();
  *(v0 + 32) = v3;
  *v3 = v0;
  v3[1] = @objc closure #1 in InventoryXPC.start();

  return v5();
}

{
  v2 = *(*v1 + 32);
  v3 = *v1;
  *(v3 + 40) = v0;

  if (v0)
  {

    return _swift_task_switch(@objc closure #1 in InventoryXPC.start(), 0, 0);
  }

  else
  {
    v4 = *(v3 + 24);

    (*(v4 + 16))(v4, 0);
    _Block_release(*(v3 + 24));
    v5 = *(v3 + 8);

    return v5();
  }
}

{
  v1 = *(v0 + 40);
  v2 = *(v0 + 24);

  v3 = _convertErrorToNSError(_:)();

  (*(v2 + 16))(v2, v3);

  _Block_release(*(v0 + 24));
  v4 = *(v0 + 8);

  return v4();
}

uint64_t InventoryXPC.createEndpoint()()
{
  *(v1 + 16) = v0;
  return _swift_task_switch(InventoryXPC.createEndpoint(), 0, 0);
}

{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC8cryptexd12InventoryXPC_server);
  v2 = *(&async function pointer to dispatch thunk of Server.createEndpoint() + 1);
  v5 = (&async function pointer to dispatch thunk of Server.createEndpoint() + async function pointer to dispatch thunk of Server.createEndpoint());
  v3 = swift_task_alloc();
  *(v0 + 24) = v3;
  *v3 = v0;
  v3[1] = InventoryXPC.createEndpoint();

  return v5();
}

{
  v1 = *(v0 + 32);
  v2 = SendableXPCObj.value.getter();

  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t InventoryXPC.createEndpoint()(uint64_t a1)
{
  v2 = *(*v1 + 24);
  v4 = *v1;
  *(*v1 + 32) = a1;

  return _swift_task_switch(InventoryXPC.createEndpoint(), 0, 0);
}

uint64_t @objc closure #1 in InventoryXPC.createEndpoint()(const void *a1, void *a2)
{
  *(v2 + 16) = a2;
  *(v2 + 24) = _Block_copy(a1);
  v4 = a2;

  return _swift_task_switch(@objc closure #1 in InventoryXPC.createEndpoint(), 0, 0);
}

uint64_t @objc closure #1 in InventoryXPC.createEndpoint()()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC8cryptexd12InventoryXPC_server);
  v2 = *(&async function pointer to dispatch thunk of Server.createEndpoint() + 1);
  v5 = (&async function pointer to dispatch thunk of Server.createEndpoint() + async function pointer to dispatch thunk of Server.createEndpoint());
  v3 = swift_task_alloc();
  *(v0 + 32) = v3;
  *v3 = v0;
  v3[1] = @objc closure #1 in InventoryXPC.createEndpoint();

  return v5();
}

{
  v1 = v0[5];
  v3 = v0[2];
  v2 = v0[3];
  v4 = SendableXPCObj.value.getter();

  v2[2](v2, v4, 0);
  _Block_release(v2);
  swift_unknownObjectRelease();
  v5 = v0[1];

  return v5();
}

uint64_t @objc closure #1 in InventoryXPC.createEndpoint()(uint64_t a1)
{
  v2 = *(*v1 + 32);
  v4 = *v1;
  *(*v1 + 40) = a1;

  return _swift_task_switch(@objc closure #1 in InventoryXPC.createEndpoint(), 0, 0);
}

id InventoryXPC.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id InventoryXPC.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for InventoryXPC();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t partial apply for @objc closure #1 in InventoryXPC.createEndpoint()()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = partial apply for @objc closure #1 in InventoryXPC.createEndpoint();

  return @objc closure #1 in InventoryXPC.createEndpoint()(v2, v3);
}

{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t _sIeghH_IeAgH_TR(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = _sIeghH_IeAgH_TRTATQ0_;

  return v7();
}

uint64_t _sIeghH_IeAgH_TRTA()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = _sIeghH_IeAgH_TRTATQ0_;

  return _sIeghH_IeAgH_TR(v2, v3, v5);
}

uint64_t _sIeAgH_ytIeAgHr_TR(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = partial apply for @objc closure #1 in InventoryXPC.createEndpoint();

  return v8();
}

uint64_t _sIeAgH_ytIeAgHr_TRTA(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = _sIeghH_IeAgH_TRTATQ0_;

  return _sIeAgH_ytIeAgHr_TR(a1, v4, v5, v7);
}

uint64_t _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2gq5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v25 - v11;
  outlined init with copy of TaskPriority?(a3, v25 - v11);
  v13 = type metadata accessor for TaskPriority();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    outlined destroy of TaskPriority?(v12);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  TaskPriority.rawValue.getter();
  (*(v14 + 8))(v12, v13);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  v15 = *(a5 + 24);
  swift_getObjectType();
  swift_unknownObjectRetain();
  v16 = dispatch thunk of Actor.unownedExecutor.getter();
  v18 = v17;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v19 = String.utf8CString.getter() + 32;
    v20 = swift_allocObject();
    *(v20 + 16) = a4;
    *(v20 + 24) = a5;

    if (v18 | v16)
    {
      v26[0] = 0;
      v26[1] = 0;
      v21 = v26;
      v26[2] = v16;
      v26[3] = v18;
    }

    else
    {
      v21 = 0;
    }

    v25[1] = 7;
    v25[2] = v21;
    v25[3] = v19;
    v23 = swift_task_create();

    outlined destroy of TaskPriority?(a3);

    return v23;
  }

LABEL_8:
  outlined destroy of TaskPriority?(a3);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t outlined init with copy of TaskPriority?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of TaskPriority?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tgq5(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tgq5TQ0_;

  return v7(a1);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tgq5TQ0_()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_100049BC4()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tgq5TA(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = _sIeghH_IeAgH_TRTATQ0_;

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tgq5(a1, v5);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tgq5TA_21(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = partial apply for @objc closure #1 in InventoryXPC.createEndpoint();

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tgq5(a1, v5);
}

uint64_t objectdestroyTm()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t partial apply for @objc closure #1 in InventoryXPC.start()()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = _sIeghH_IeAgH_TRTATQ0_;

  return @objc closure #1 in InventoryXPC.start()(v2, v3);
}

uint64_t objectdestroy_7Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t validateImage4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6)
{
  v22 = 0;
  memset(v21, 0, sizeof(v21));
  bzero(v20, 0x600uLL);
  if (a6 < 3)
  {
    v8 = (a6 << 16) + 0x10000;
LABEL_5:
    v9 = 8448;
LABEL_6:
    v10 = 2;
    return v9 | v10 | v8;
  }

  if (a6 > 0x19)
  {
    v8 = 0x40000;
    goto LABEL_5;
  }

  v12 = &TCTypeConfig + 40 * a6;
  if (!(*v12)())
  {
    v8 = 327680;
    v9 = 42752;
    goto LABEL_6;
  }

  v13 = *(v12 + 1);
  if (v13)
  {
    if (!v13())
    {
      v8 = 393216;
      v9 = 43008;
      goto LABEL_6;
    }

    v14 = v21;
    v15 = img4_nonce_domain_copy_nonce();
    if (v15 > 18)
    {
      if (v15 == 19)
      {
        v8 = 589824;
        v9 = 43264;
        goto LABEL_6;
      }

      if (v15 == 70)
      {
        v8 = 458752;
        v9 = 40960;
        goto LABEL_6;
      }

      goto LABEL_26;
    }

    if (v15)
    {
      if (v15 == 1)
      {
        v8 = 0x80000;
        v9 = 42496;
        goto LABEL_6;
      }

LABEL_26:
      v8 = 655360;
      v9 = 44800;
      goto LABEL_6;
    }

    v19 = &v23;
  }

  else
  {
    v19 = 0;
    v14 = 0;
  }

  v16 = *(v12 + 3);
  if (v16)
  {
    v16();
  }

  img4_firmware_init_from_buff();
  v17 = *a1;
  v18 = *(v12 + 4);
  img4_firmware_init();
  result = img4_firmware_attach_manifest();
  if (!v14 || v14 < v19)
  {
    img4_firmware_execute();
    img4_firmware_destroy();
    v10 = 0;
    v8 = 0;
    v9 = 256;
    return v9 | v10 | v8;
  }

  __break(0x5519u);
  return result;
}

uint64_t firmwareExecuteCallback(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  if (a3 > 32)
  {
    if (a3 > 78)
    {
      switch(a3)
      {
        case 'O':
          v6 = 172291;
          break;
        case 'P':
          *(a4 + 24) = 303875;
          v5 = "libCS: failed AppleImage4 callback: Wrong Crypto";
          goto LABEL_30;
        case '\\':
          v6 = 106755;
          break;
        default:
          goto LABEL_29;
      }

      *(a4 + 24) = v6;
      v5 = "libCS: failed AppleImage4 callback: Unknown Format";
      goto LABEL_30;
    }

    if (a3 == 33)
    {
      *(a4 + 24) = 567811;
      v5 = "libCS: failed AppleImage4 callback: Decode Error";
      goto LABEL_30;
    }

    if (a3 == 70)
    {
      *(a4 + 24) = 434179;
      v5 = "libCS: failed AppleImage4 callback: Stale Nonce";
      goto LABEL_30;
    }

LABEL_29:
    *(a4 + 24) = 700163;
    v5 = "libCS: failed AppleImage4 callback: Unknown Error";
    goto LABEL_30;
  }

  if (a3 <= 1)
  {
    if (a3)
    {
      if (a3 != 1)
      {
        goto LABEL_29;
      }
    }

    else
    {
      v7 = *(*a4 + 40);
      if (!v7 || v7(a2))
      {
        result = img4_image_get_bytes();
        v10 = *(result + 8);
        v9 = *(result + 16);
        if (v10 > v10 + v9)
        {
          __break(0x5519u);
        }

        else
        {
          *(a4 + 8) = v10;
          *(a4 + 16) = v9;
          *(a4 + 24) = 3;
        }

        return result;
      }
    }

    *(a4 + 24) = 633603;
    v5 = "libCS: failed AppleImage4 callback: Auxiliary Error";
    goto LABEL_30;
  }

  if (a3 == 2)
  {
    *(a4 + 24) = 238083;
    v5 = "libCS: failed AppleImage4 callback: Wrong Object";
    goto LABEL_30;
  }

  if (a3 == 8)
  {
    *(a4 + 24) = 500995;
    v5 = "libCS: failed AppleImage4 callback: Payload Violation";
    goto LABEL_30;
  }

  if (a3 != 13)
  {
    goto LABEL_29;
  }

  *(a4 + 24) = 369667;
  v5 = "libCS: failed AppleImage4 callback: Manifest Violation";
LABEL_30:

  return puts(v5);
}

uint64_t extractImage4Payload(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v33 = 0;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  memset(v12, 0, sizeof(v12));
  Img4DecodeInitPayload(a1, a2, v12);
  if (v8)
  {
    Img4DecodeInit(a1, a2, v12);
    if (v9)
    {
      return 109185;
    }
  }

  v11 = v14;
  *a3 = *(&v13 + 1);
  *a4 = v11;
  return 129;
}

uint64_t validateModule0(_DWORD *a1, unint64_t a2)
{
  if (a2 < 0x18)
  {
    return 75331;
  }

  if (*a1)
  {
    return 139843;
  }

  if (20 * a1[5] + 24 <= a2)
  {
    return 67;
  }

  return 337475;
}

uint64_t queryModule0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = 74818;
  v5 = *(a1 + 20);
  if (v5)
  {
    for (i = a1 + 24; ; i += 20)
    {
      v7 = *i == *a2 && *(i + 8) == *(a2 + 8);
      if (v7 && *(i + 16) == *(a2 + 16))
      {
        break;
      }

      if (!--v5)
      {
        return result;
      }
    }

    if (a3)
    {
      *(a3 + 8) = i;
    }

    return 66;
  }

  return result;
}

uint64_t validateModule1(_DWORD *a1, unint64_t a2)
{
  if (a2 < 0x18)
  {
    return 75333;
  }

  if (*a1 != 1)
  {
    return 139845;
  }

  if (22 * a1[5] + 24 <= a2)
  {
    return 69;
  }

  return 337477;
}

uint64_t queryModule1(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = 140356;
  v5 = *(a1 + 20);
  if (!v5)
  {
    return 74820;
  }

  v6 = 0;
  v7 = v5 - 1;
  v8 = a1 + 24;
  v9 = v8 + 22 * v5;
  while (1)
  {
    v10 = (v6 + v7) >> 1;
    v11 = v8 + 22 * v10;
    if (v11 >= v9 || v11 < v8)
    {
      __break(0x5519u);
      return result;
    }

    v13 = bswap64(*v11);
    v14 = bswap64(*a2);
    if (v13 == v14)
    {
      v13 = bswap64(*(v11 + 8));
      v14 = bswap64(*(a2 + 8));
      if (v13 == v14)
      {
        v13 = bswap32(*(v11 + 16));
        v14 = bswap32(*(a2 + 16));
        if (v13 == v14)
        {
          break;
        }
      }
    }

    if (v13 < v14)
    {
      v15 = -1;
    }

    else
    {
      v15 = 1;
    }

    if (v15 < 0)
    {
      v6 = v10 + 1;
    }

    else
    {
      if (v6 + v7 < 2)
      {
        return result;
      }

      v7 = v10 - 1;
    }

    if (v6 > v7)
    {
      return result;
    }
  }

  if (v11)
  {
    if (a3)
    {
      *(a3 + 8) = v11;
    }

    return 68;
  }

  return result;
}

uint64_t validateModule2(_DWORD *a1, unint64_t a2)
{
  if (a2 < 0x18)
  {
    return 75335;
  }

  if (*a1 != 2)
  {
    return 139847;
  }

  if (24 * a1[5] + 24 <= a2)
  {
    return 71;
  }

  return 337479;
}

uint64_t queryModule2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = 140358;
  v5 = *(a1 + 20);
  if (!v5)
  {
    return 74822;
  }

  v6 = 0;
  v7 = v5 - 1;
  v8 = a1 + 24;
  v9 = v8 + 24 * v5;
  while (1)
  {
    v10 = (v6 + v7) >> 1;
    v11 = v8 + 24 * v10;
    if (v11 >= v9 || v11 < v8)
    {
      __break(0x5519u);
      return result;
    }

    v13 = bswap64(*v11);
    v14 = bswap64(*a2);
    if (v13 == v14)
    {
      v13 = bswap64(*(v11 + 8));
      v14 = bswap64(*(a2 + 8));
      if (v13 == v14)
      {
        v13 = bswap32(*(v11 + 16));
        v14 = bswap32(*(a2 + 16));
        if (v13 == v14)
        {
          break;
        }
      }
    }

    if (v13 < v14)
    {
      v15 = -1;
    }

    else
    {
      v15 = 1;
    }

    if (v15 < 0)
    {
      v6 = v10 + 1;
    }

    else
    {
      if (v6 + v7 < 2)
      {
        return result;
      }

      v7 = v10 - 1;
    }

    if (v6 > v7)
    {
      return result;
    }
  }

  if (v11)
  {
    if (a3)
    {
      *(a3 + 8) = v11;
    }

    return 70;
  }

  return result;
}

uint64_t moduleUUID(int *a1)
{
  v1 = *a1;
  if (*a1 == 2)
  {
    return module2UUID(a1);
  }

  if (v1 == 1)
  {
    return module1UUID(a1);
  }

  if (v1)
  {
    return 0;
  }

  return module0UUID(a1);
}

uint64_t validateModule(int *a1, unint64_t a2)
{
  if (a2 < 4)
  {
    return 75329;
  }

  v3 = *a1;
  if (*a1 == 2)
  {
    LODWORD(result) = validateModule2(a1, a2);
  }

  else if (v3 == 1)
  {
    LODWORD(result) = validateModule1(a1, a2);
  }

  else
  {
    if (v3)
    {
      return 139585;
    }

    LODWORD(result) = validateModule0(a1, a2);
  }

  if ((result & 0xFF00) != 0)
  {
    return result;
  }

  else
  {
    return 65;
  }
}

uint64_t moduleCapabilities(unsigned int *a1, uint64_t *a2)
{
  v2 = *a1;
  switch(v2)
  {
    case 0:
LABEL_5:
      if (!a2)
      {
        return 72;
      }

LABEL_6:
      *a2 = v2;
      return 72;
    case 1:
      v2 = 3;
      if (!a2)
      {
        return 72;
      }

      goto LABEL_6;
    case 2:
      v2 = 7;
      goto LABEL_5;
  }

  return 74056;
}

uint64_t queryModule(int *a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  if (*a1 == 2)
  {
    LODWORD(result) = queryModule2(a1, a2, a3);
  }

  else if (v3 == 1)
  {
    LODWORD(result) = queryModule1(a1, a2, a3);
  }

  else
  {
    if (v3)
    {
      return 74048;
    }

    LODWORD(result) = queryModule0(a1, a2, a3);
  }

  if ((result & 0xFF00) != 0)
  {
    return result;
  }

  else
  {
    return 64;
  }
}

uint64_t moduleEntryHashType(int *a1, uint64_t a2, _BYTE *a3)
{
  result = 74004;
  v5 = *a1;
  if (v5)
  {
    if (v5 == 2)
    {
      v7 = module2EntryHashType(a2);
      if (!a3)
      {
        return 20;
      }

LABEL_7:
      *a3 = v7;
      return 20;
    }

    if (v5 == 1)
    {
      v7 = module1EntryHashType(a2);
      if (!a3)
      {
        return 20;
      }

      goto LABEL_7;
    }

    return 139540;
  }

  return result;
}

uint64_t moduleEntryFlags(int *a1, uint64_t a2, void *a3)
{
  result = 74005;
  v5 = *a1;
  if (v5)
  {
    if (v5 == 2)
    {
      v7 = module2EntryFlags(a2);
      if (!a3)
      {
        return 21;
      }

LABEL_7:
      *a3 = v7;
      return 21;
    }

    if (v5 == 1)
    {
      v7 = module1EntryFlags(a2);
      if (!a3)
      {
        return 21;
      }

      goto LABEL_7;
    }

    return 139541;
  }

  return result;
}

uint64_t moduleEntryConstraintCategory(int *a1, uint64_t a2, _BYTE *a3)
{
  result = 74006;
  v5 = *a1;
  if (v5)
  {
    if (v5 == 2)
    {
      v7 = module2EntryConstraintCategory(a2);
      if (a3)
      {
        *a3 = v7;
      }

      return 22;
    }

    else if (v5 == 1)
    {
      return 139542;
    }

    else
    {
      return 205078;
    }
  }

  return result;
}

uint64_t addLinkAtHead(atomic_ullong *a1, unint64_t *a2)
{
  v2 = *a1;
  v3 = *a1;
  do
  {
    atomic_store(v2, a2);
    atomic_compare_exchange_strong_explicit(a1, &v3, a2, memory_order_release, memory_order_relaxed);
    v4 = v3 == v2;
    v2 = v3;
  }

  while (!v4);
  return 128;
}

atomic_ullong *acquireHead(atomic_ullong *result)
{
  if (result)
  {
    return atomic_load_explicit(result, memory_order_acquire);
  }

  return result;
}

uint64_t trustCacheCheckRuntimeForUUID(uint64_t a1, void *a2, int **a3)
{
  result = 75013;
  if (a1)
  {
    if (a2)
    {
      v6 = searchRuntimeForUUID(a1, a2);
      if (v6)
      {
        if (a3)
        {
          *a3 = v6;
        }

        return 5;
      }

      else
      {
        return 205829;
      }
    }

    else
    {
      return 140549;
    }
  }

  return result;
}

uint64_t trustCacheExtractModule(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = 75014;
  v5 = 0;
  v6 = 0;
  if (a2)
  {
    if (a3)
    {
      if (__CFADD__(a2, a3))
      {
        return 204806;
      }

      else
      {
        result = extractImage4Payload(a2, a3, &v5, &v6);
        if ((result & 0xFF00) == 0)
        {
          LODWORD(result) = trustCacheConstructInvalid(a1, v5, v6);
          if ((result & 0xFF00) != 0)
          {
            return result;
          }

          else
          {
            return 6;
          }
        }
      }
    }

    else
    {
      return 140550;
    }
  }

  return result;
}

unsigned int *trustCacheGetCapabilities(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 16);
  result = *(a1 + 24);
  if (v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = result == 0;
  }

  if (v4)
  {
    return moduleCapabilities(result, a2);
  }

  __break(0x5519u);
  return result;
}

uint64_t trustCacheGetUUID(uint64_t a1, _OWORD *a2)
{
  result = 75015;
  if (a1)
  {
    if (a2)
    {
      result = *(a1 + 24);
      if (*(a1 + 16))
      {
        v5 = 1;
      }

      else
      {
        v5 = result == 0;
      }

      if (v5)
      {
        v6 = moduleUUID(result);
        if (v6)
        {
          *a2 = *v6;
          return 7;
        }

        else
        {
          return 205319;
        }
      }

      else
      {
        __break(0x5519u);
      }
    }

    else
    {
      return 140551;
    }
  }

  return result;
}

uint64_t trustCacheGetModule(uint64_t a1, void *a2, void *a3)
{
  if (!a1)
  {
    return 75016;
  }

  result = 8;
  if (a2)
  {
    if (a3)
    {
      v5 = *(a1 + 16);
      *a2 = *(a1 + 24);
      *a3 = v5;
    }
  }

  return result;
}

int *searchChainForUUID(atomic_ullong *a1, void *a2)
{
  for (i = acquireHead(a1); i; i = atomic_load(i))
  {
    if ((*(i + 9) & 1) == 0)
    {
      result = i[3];
      if (i[2])
      {
        v5 = 1;
      }

      else
      {
        v5 = result == 0;
      }

      if (!v5)
      {
        __break(0x5519u);
        return result;
      }

      v6 = moduleUUID(result);
      if (v6)
      {
        if (*v6 == *a2 && v6[1] == a2[1])
        {
          return i;
        }
      }
    }
  }

  return i;
}

int *searchRuntimeForUUID(uint64_t a1, void *a2)
{
  v3 = 0;
  v7[0] = a1 + 16;
  v7[1] = a1 + 24;
  v4 = *(a1 + 32) + 8;
  v7[2] = *(a1 + 32);
  v7[3] = v4;
  do
  {
    result = searchChainForUUID(v7[v3], a2);
    if (result)
    {
      v6 = 1;
    }

    else
    {
      v6 = v3 == 3;
    }

    ++v3;
  }

  while (!v6);
  return result;
}

uint64_t trustCacheConstructInvalid(uint64_t a1, int *a2, unint64_t a3)
{
  result = 75012;
  if (a2)
  {
    if (a3)
    {
      if (__CFADD__(a2, a3))
      {
        return 204804;
      }

      else
      {
        result = validateModule(a2, a3);
        if ((result & 0xFF00) == 0)
        {
          if (a1)
          {
            *(a1 + 16) = a3;
            *(a1 + 24) = a2;
            atomic_store(0, a1);
            *(a1 + 8) = -1;
          }

          return 4;
        }
      }
    }

    else
    {
      return 140548;
    }
  }

  return result;
}

uint64_t trustCacheLoadModuleRange(uint64_t a1, int a2, uint64_t a3, int *a4, unint64_t a5)
{
  v14 = 0u;
  v15 = 0u;
  v16 = 0uLL;
  if (!a3)
  {
    return 75008;
  }

  result = trustCacheConstructInvalid(&v14, a4, a5);
  if ((result & 0xFF00) != 0)
  {
    return result;
  }

  trustCacheGetUUID(&v14, &v16);
  if ((trustCacheCheckRuntimeForUUID(a1, &v16, 0) & 0xFF00) == 0)
  {
    return 140032;
  }

  result = 206592;
  if (a2 == 2)
  {
    if (!*(a1 + 10))
    {
      return 403200;
    }

    v9 = *(a1 + 32);
  }

  else if (a2 == 1)
  {
    if (!*(a1 + 9))
    {
      return 337664;
    }

    v9 = (a1 + 24);
  }

  else
  {
    if (a2)
    {
      return 468736;
    }

    v9 = (a1 + 16);
    if (atomic_load((a1 + 16)))
    {
      v11 = atomic_load(v9);
      if (atomic_load(v11))
      {
        return result;
      }

      if (!*(a1 + 8))
      {
        return 272128;
      }
    }
  }

  v13 = v15;
  *a3 = v14;
  *(a3 + 16) = v13;
  *(a3 + 8) = a2;
  LODWORD(result) = addLinkAtHead(v9, a3);
  if ((result & 0xFF00) != 0)
  {
    return result;
  }

  else
  {
    return 0;
  }
}

uint64_t trustCacheLoadModule(uint64_t a1, int a2, uint64_t a3, int *a4, unint64_t a5)
{
  if ((a4 + a5) >= a4)
  {
    return trustCacheLoadModuleRange(a1, a2, a3, a4, a5);
  }

  __break(0x5519u);
  return a1;
}

uint64_t trustCacheLoadRange(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = 0u;
  v14 = 0u;
  v15 = 0uLL;
  result = 75009;
  if (a4)
  {
    if (!a5)
    {
      return (result + 0x10000);
    }

    if (!a6)
    {
      return 206081;
    }

    if (!a7)
    {
      return 271617;
    }

    if (!a3)
    {
      return 337153;
    }

    if (!*a1)
    {
      return 729345;
    }

    result = 401409;
    if (!__CFADD__(a4, a5))
    {
      if (__CFADD__(a6, a7))
      {
        return (result + 0x10000);
      }

      result = validateImage4(a1, a4, a5, a6, a7, a2);
      if ((result & 0xFF00) == 0)
      {
        result = trustCacheConstructInvalid(&v13, 0, 0);
        if ((result & 0xFF00) == 0)
        {
          trustCacheGetUUID(&v13, &v15);
          if ((trustCacheCheckRuntimeForUUID(a1, &v15, 0) & 0xFF00) == 0)
          {
            return 533249;
          }

          if (a2 - 4 < 0x15)
          {
LABEL_19:
            v11 = *(a1 + 32);
            goto LABEL_20;
          }

          if (a2 == 25)
          {
            v11 = (*(a1 + 32) + 8);
LABEL_20:
            v12 = v14;
            *a3 = v13;
            *(a3 + 16) = v12;
            *(a3 + 8) = a2;
            LODWORD(result) = addLinkAtHead(v11, a3);
            if ((result & 0xFF00) != 0)
            {
              return result;
            }

            else
            {
              return 1;
            }
          }

          result = 599809;
          if (a2 == 3)
          {
            if (!*(a1 + 9))
            {
              return result;
            }

            goto LABEL_19;
          }

          return (result + 0x10000);
        }
      }
    }
  }

  return result;
}

uint64_t trustCacheLoad(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a4 + a5 >= a4 && a6 + a7 >= a6)
  {
    return trustCacheLoadRange(a1, a2, a3, a4, a5, a6, a7);
  }

  __break(0x5519u);
  return a1;
}

unint64_t trustCacheUnload(uint64_t a1, void *a2, unint64_t *a3)
{
  result = searchRuntimeForUUID(a1, a2);
  if (!result)
  {
    return 74761;
  }

  if (*(result + 8) < 2u)
  {
    return 141065;
  }

  *(result + 9) = 1;
  if (!a3)
  {
    return 9;
  }

  if (result < result + 32)
  {
    *a3 = result;
    return 9;
  }

  __break(0x5519u);
  return result;
}

double hash_init(_OWORD *a1)
{
  result = 0.0;
  a1[17] = 0u;
  a1[18] = 0u;
  a1[15] = 0u;
  a1[16] = 0u;
  a1[13] = 0u;
  a1[14] = 0u;
  a1[11] = 0u;
  a1[12] = 0u;
  a1[9] = 0u;
  a1[10] = 0u;
  a1[7] = 0u;
  a1[8] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

size_t hash_node_init_cstr(uint64_t a1, char *__s)
{
  result = strlen(__s);
  *a1 |= 2u;
  *(a1 + 16) = __s;
  *(a1 + 24) = result;
  return result;
}

uint64_t hash_insert(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  v6 = os_simple_hash();
  if ((*a2 & 2) == 0)
  {
    hash_insert_cold_3();
  }

  v7 = v6;
  result = hash_lookup(a1, *(a2 + 16), *(a2 + 24));
  if (result)
  {
    hash_insert_cold_1();
  }

  *(a2 + 8) = *(a1 + 8 * (v7 % 0x25));
  *(a1 + 8 * (v7 % 0x25)) = a2;
  if (*a2)
  {
    hash_insert_cold_2();
  }

  *a2 |= 1u;
  ++*(a1 + 296);
  return result;
}

uint64_t hash_lookup(uint64_t a1, const void *a2, size_t a3)
{
  for (i = *(a1 + 8 * (os_simple_hash() % 0x25uLL)); i; i = *(i + 8))
  {
    if (*(i + 24) == a3 && !memcmp(*(i + 16), a2, a3))
    {
      break;
    }
  }

  return i;
}

uint64_t hash_lookup_cstr(uint64_t a1, char *__s)
{
  v4 = strlen(__s);

  return hash_lookup(a1, __s, v4);
}

unint64_t hash_remove(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  result = os_simple_hash();
  v7 = (a1 + 8 * (result % 0x25));
  v8 = *v7;
  if (*v7 != a2)
  {
    do
    {
      v9 = v8;
      v8 = *(v8 + 8);
    }

    while (v8 != a2);
    v7 = (v9 + 8);
  }

  *v7 = *(v8 + 8);
  *(a2 + 8) = -1;
  if ((*a2 & 1) == 0)
  {
    hash_remove_cold_1();
  }

  *a2 &= ~1u;
  --*(a1 + 296);
  return result;
}

void rpc_init_remote(uint64_t a1, xpc_object_t a2, void *a3)
{
  v6 = xpc_array_create(0, 0);
  if (a2)
  {
    xpc_retain(a2);
  }

  else
  {
    a2 = xpc_dictionary_create(0, 0, 0);
  }

  xpc_dictionary_set_value(a2, "argv", v6);
  xpc_dictionary_set_uint64(a2, "subsystem", *(a1 + 16));
  xpc_dictionary_set_uint64(a2, "routine", *(a1 + 24));
  xpc_dictionary_set_uint64(a2, "target-type", *(a1 + 32));
  v7 = *(a1 + 32);
  switch(v7)
  {
    case 2:
      v8 = *(a1 + 40);
      xpc_dictionary_set_mach_send();
      break;
    case 1:
      xpc_dictionary_set_string(a2, "target", (a1 + 40));
      break;
    case 0:
      xpc_dictionary_set_uint64(a2, "target", *(a1 + 40));
      break;
  }

  *a1 = 1;
  if (a3)
  {
    v9 = os_retain(a3);
  }

  else
  {
    v9 = &_os_log_default;
  }

  *(a1 + 8) = v9;
  *(a1 + 296) = a2;
  *(a1 + 304) = v6;
  *(a1 + 312) = -1;
  *(a1 + 328) = 0u;
  *(a1 + 344) = 0u;
  if (v6)
  {

    os_release(v6);
  }
}

CFErrorRef rpc_init_local(uint64_t a1, xpc_object_t xdict, NSObject *a3)
{
  cf = 0;
  memset(v25, 0, sizeof(v25));
  value = xpc_dictionary_get_value(xdict, "argv");
  if (!value || (v7 = value, xpc_get_type(value) != &_xpc_type_array))
  {
    if (a3)
    {
      os_log_type_enabled(a3, OS_LOG_TYPE_ERROR);
    }

    v27 = 67109120;
    v28 = 94;
    v8 = _os_log_send_and_compose_impl();
    v9 = "com.apple.security.cryptex.posix";
    v10 = 105;
LABEL_6:
    v11 = 94;
LABEL_7:
    v12 = 0;
    goto LABEL_8;
  }

  v15 = xpc_dictionary_get_value(xdict, "subsystem");
  if (!v15 || (v16 = v15, xpc_get_type(v15) != &_xpc_type_uint64))
  {
    if (a3)
    {
      os_log_type_enabled(a3, OS_LOG_TYPE_ERROR);
    }

    v27 = 67109120;
    v28 = 94;
    v8 = _os_log_send_and_compose_impl();
    v9 = "com.apple.security.cryptex.posix";
    v10 = 113;
    goto LABEL_6;
  }

  v17 = xpc_dictionary_get_value(xdict, "routine");
  if (!v17 || (v18 = v17, xpc_get_type(v17) != &_xpc_type_uint64))
  {
    if (a3)
    {
      os_log_type_enabled(a3, OS_LOG_TYPE_ERROR);
    }

    v27 = 67109120;
    v28 = 94;
    v8 = _os_log_send_and_compose_impl();
    v9 = "com.apple.security.cryptex.posix";
    v10 = 121;
    goto LABEL_6;
  }

  v19 = xpc_dictionary_get_value(xdict, "target-type");
  if (!v19 || (v20 = v19, xpc_get_type(v19) != &_xpc_type_uint64))
  {
    if (a3)
    {
      os_log_type_enabled(a3, OS_LOG_TYPE_ERROR);
    }

    v27 = 67109120;
    v28 = 94;
    v8 = _os_log_send_and_compose_impl();
    v9 = "com.apple.security.cryptex.posix";
    v10 = 129;
    goto LABEL_6;
  }

  v21 = xpc_dictionary_get_value(xdict, "target");
  v22 = xpc_uint64_get_value(v20);
  if (v22 == 2)
  {
    if (xpc_get_type(v21) != &_xpc_type_mach_send)
    {
      if (a3)
      {
        os_log_type_enabled(a3, OS_LOG_TYPE_ERROR);
      }

      v27 = 67109120;
      v28 = 22;
      v8 = _os_log_send_and_compose_impl();
      v9 = "com.apple.security.cryptex.posix";
      v10 = 167;
      goto LABEL_60;
    }

    *(a1 + 40) = xpc_mach_send_copy_right();
  }

  else if (v22 == 1)
  {
    if (xpc_get_type(v21) != &_xpc_type_string)
    {
      if (a3)
      {
        os_log_type_enabled(a3, OS_LOG_TYPE_ERROR);
      }

      v27 = 67109120;
      v28 = 22;
      v8 = _os_log_send_and_compose_impl();
      v9 = "com.apple.security.cryptex.posix";
      v10 = 148;
      goto LABEL_60;
    }

    if (xpc_string_get_length(v21) >= 0xFF)
    {
      if (a3)
      {
        os_log_type_enabled(a3, OS_LOG_TYPE_ERROR);
      }

      v27 = 67109120;
      v28 = 22;
      v8 = _os_log_send_and_compose_impl();
      v9 = "com.apple.security.cryptex.posix";
      v10 = 156;
      goto LABEL_60;
    }

    string_ptr = xpc_string_get_string_ptr(v21);
    strlcpy((a1 + 40), string_ptr, 0xFFuLL);
  }

  else
  {
    if (v22)
    {
      if (a3)
      {
        os_log_type_enabled(a3, OS_LOG_TYPE_ERROR);
      }

      v27 = 67109120;
      v28 = 22;
      v8 = _os_log_send_and_compose_impl();
      v9 = "com.apple.security.cryptex.posix";
      v10 = 175;
      goto LABEL_60;
    }

    if (xpc_get_type(v21) != &_xpc_type_uint64)
    {
      if (a3)
      {
        os_log_type_enabled(a3, OS_LOG_TYPE_ERROR);
      }

      v27 = 67109120;
      v28 = 22;
      v8 = _os_log_send_and_compose_impl();
      v9 = "com.apple.security.cryptex.posix";
      v10 = 139;
LABEL_60:
      v11 = 22;
      goto LABEL_7;
    }

    *(a1 + 40) = xpc_uint64_get_value(v21);
  }

  if (_xpc_dictionary_try_get_cferr(xdict, "cferror", &cf))
  {
    *a1 = 1;
    if (a3)
    {
      v24 = os_retain(a3);
    }

    else
    {
      v24 = &_os_log_default;
    }

    *(a1 + 8) = v24;
    *(a1 + 16) = xpc_uint64_get_value(v16);
    *(a1 + 24) = xpc_uint64_get_value(v18);
    *(a1 + 32) = xpc_uint64_get_value(v20);
    *(a1 + 296) = xpc_retain(xdict);
    *(a1 + 304) = v7;
    xpc_dictionary_get_audit_token();
    rpc_cred_init_with_audit_token((a1 + 328), v25);
    Error = 0;
    goto LABEL_9;
  }

  if (a3)
  {
    os_log_type_enabled(a3, OS_LOG_TYPE_ERROR);
  }

  LOWORD(v27) = 0;
  v8 = _os_log_send_and_compose_impl();
  v12 = cf;
  v9 = "com.apple.security.cryptex";
  v10 = 181;
  v11 = 16;
LABEL_8:
  Error = createError("rpc_init_local", "rpc.c", v10, v9, v11, v12, v8);
  free(v8);
LABEL_9:
  if (cf)
  {
    CFRelease(cf);
  }

  return Error;
}

uint64_t rpc_cred_init_with_audit_token(uid_t *a1, _OWORD *a2)
{
  v4 = a2[1];
  *v13.val = *a2;
  *&v13.val[4] = v4;
  *a1 = audit_token_to_auid(&v13);
  v5 = a2[1];
  *v13.val = *a2;
  *&v13.val[4] = v5;
  a1[1] = audit_token_to_euid(&v13);
  v6 = a2[1];
  *v13.val = *a2;
  *&v13.val[4] = v6;
  a1[2] = audit_token_to_egid(&v13);
  v7 = a2[1];
  *v13.val = *a2;
  *&v13.val[4] = v7;
  a1[3] = audit_token_to_ruid(&v13);
  v8 = a2[1];
  *v13.val = *a2;
  *&v13.val[4] = v8;
  a1[4] = audit_token_to_rgid(&v13);
  v9 = a2[1];
  *v13.val = *a2;
  *&v13.val[4] = v9;
  a1[5] = audit_token_to_pid(&v13);
  v10 = a2[1];
  *v13.val = *a2;
  *&v13.val[4] = v10;
  a1[6] = audit_token_to_asid(&v13);
  v11 = a2[1];
  *v13.val = *a2;
  *&v13.val[4] = v11;
  result = audit_token_to_pidversion(&v13);
  a1[7] = result;
  return result;
}

void rpc_init_reply(void *a1, uint64_t a2)
{
  memcpy(a1 + 2, (a2 + 16), 0x118uLL);
  reply = xpc_dictionary_create_reply(*(a2 + 296));
  if (reply)
  {
    v5 = reply;
    v6 = 2;
  }

  else
  {
    v5 = xpc_dictionary_create(0, 0, 0);
    v6 = 10;
  }

  rpc_init_remote(a1, v5, *(a2 + 8));
  *a1 |= v6;
  *a2 |= 4uLL;
  if (v5)
  {

    os_release(v5);
  }
}

uint64_t *rpc_copy(_BYTE *a1)
{
  if ((*a1 & 0x40) != 0)
  {
    rpc_copy_cold_1();
  }

  v2 = malloc_type_calloc(1uLL, 0x168uLL, 0x8709206FuLL);
  if (!v2)
  {
    rpc_copy_cold_2(&v7, v8);
  }

  v3 = v2;
  memcpy(v2, a1, 0x168uLL);
  v4 = *v3;
  v3[37] = xpc_retain(*(a1 + 37));
  *v3 = v4 | 0xC0;
  if (*(a1 + 4) == 2)
  {
    v5 = *(a1 + 10);
    *(a1 + 10) = mach_right_send_retain();
  }

  return v3;
}

void rpc_destroy(_BYTE *a1)
{
  if (*a1)
  {
    if (*(a1 + 4) == 2)
    {
      v2 = *(a1 + 10);
      mach_right_send_release();
    }

    xpc_release(*(a1 + 37));
    os_release(*(a1 + 1));
    if ((*a1 & 0x40) != 0)
    {

      free(a1);
    }
  }
}

void rpc_reply(uint64_t a1, _BYTE *a2, int a3)
{
  if (a3 == 36)
  {
    if ((*a1 & 4) == 0)
    {
      rpc_reply_cold_2();
    }

    if ((*a2 & 0x80) == 0)
    {
      rpc_reply_cold_1();
    }

    v5 = *__error();
    v6 = *(a1 + 8);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "reply in-progress", buf, 2u);
    }

    *__error() = v5;
  }

  else if (a3)
  {
    v7 = a3;
    *buf = 67109120;
    v11 = a3;
    v8 = _os_log_send_and_compose_impl();
    Error = createError("rpc_reply", "rpc.c", 373, "com.apple.security.cryptex.posix", v7, 0, v8);
    free(v8);
    rpc_reply_with_cferr(a1, a2, Error);
    if (Error)
    {
      CFRelease(Error);
    }
  }

  else
  {

    rpc_reply_with_cferr(a1, a2, 0);
  }
}

void rpc_reply_with_cferr(uint64_t a1, uint64_t a2, __CFError *a3)
{
  if ((*a2 & 8) == 0)
  {
    if ((*a2 & 0x10) != 0)
    {
      rpc_reply_with_cferr_cold_1();
    }

    v6 = *__error();
    v7 = *(a1 + 8);
    if (a3)
    {
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        *&buf[4] = a3;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "sending reply: %@", buf, 0xCu);
      }

      *__error() = v6;
      *a2 |= 0x10uLL;
      v8 = _xpc_cferr_to_dictionary(a3);
      xpc_dictionary_set_value(*(a2 + 296), "cferror", v8);
    }

    else
    {
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "sending reply [no error]", buf, 2u);
      }

      v8 = 0;
      *__error() = v6;
      *a2 |= 0x10uLL;
    }

    v11 = *(a2 + 296);
    v12 = xpc_pipe_routine_reply();
    if (v12 == 32)
    {
      v13 = *__error();
      v14 = *(a1 + 8);
      if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_20;
      }

      *buf = 0;
      v15 = "caller died";
    }

    else
    {
      if (v12)
      {
        rpc_reply_with_cferr_cold_2(&v16, buf);
      }

      v13 = *__error();
      v14 = *(a1 + 8);
      if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_20;
      }

      *buf = 0;
      v15 = "reply sent";
    }

    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, v15, buf, 2u);
LABEL_20:
    *__error() = v13;
    if (v8)
    {
      os_release(v8);
    }

    return;
  }

  v9 = *__error();
  v10 = *(a1 + 8);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "fake reply, not sending", buf, 2u);
  }

  *__error() = v9;
}

void rpc_copy_cold_2(uint64_t *a1, _OWORD *a2)
{
  *a1 = 0;
  a2[3] = 0u;
  a2[4] = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
  v3 = __error();
  strerror(*v3);
  _os_log_send_and_compose_impl();
  v4 = *a1;
  _os_crash_msg();
  __break(1u);
}

void rpc_reply_with_cferr_cold_2(uint64_t *a1, _OWORD *a2)
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

os_log_t object_proto_init(uint64_t a1, int a2, char *category)
{
  result = os_log_create("com.apple.libcryptex", category);
  *(a1 + 16) = result;
  return result;
}

char *object_set_name(uint64_t a1, const char *a2)
{
  v4 = *a1;
  v5 = *__error();
  v6 = *(a1 + 16);
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG);
  if (v4)
  {
    if (v7)
    {
      v8 = *a1;
      *buf = 136446722;
      v12 = v4;
      v13 = 2080;
      v14 = v8;
      v15 = 2080;
      v16 = a2;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "%{public}s: changing name: %s -> %s", buf, 0x20u);
    }

    *__error() = v5;
    free(*(a1 + 8));
  }

  else
  {
    if (v7)
    {
      *buf = 136446466;
      v12 = "[anonymous]";
      v13 = 2080;
      v14 = a2;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "%{public}s: setting name: %s", buf, 0x16u);
    }

    *__error() = v5;
  }

  if (_dispatch_is_multithreaded())
  {
    while (1)
    {
      result = strdup(a2);
      if (result)
      {
        break;
      }

      __os_temporary_resource_shortage();
    }
  }

  else
  {
    result = strdup(a2);
    if (!result)
    {
      _protex_init_cold_1(a2, &v10, buf);
    }
  }

  *a1 = result;
  *(a1 + 8) = result;
  return result;
}

void object_set_name_nocopy(uint64_t a1, const char *a2)
{
  v4 = *a1;
  v5 = *__error();
  v6 = *(a1 + 16);
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG);
  if (v4)
  {
    if (v7)
    {
      v8 = *a1;
      v9 = 136446722;
      v10 = v4;
      v11 = 2080;
      v12 = v8;
      v13 = 2080;
      v14 = a2;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "%{public}s: changing name: %s -> %s", &v9, 0x20u);
    }

    *__error() = v5;
    free(*(a1 + 8));
  }

  else
  {
    if (v7)
    {
      v9 = 136446466;
      v10 = "[anonymous]";
      v11 = 2080;
      v12 = a2;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "%{public}s: setting name: %s", &v9, 0x16u);
    }

    *__error() = v5;
  }

  *a1 = a2;
  *(a1 + 8) = 0;
}

void object_proto_destroy(uint64_t a1)
{
  free(*(a1 + 8));
  v2 = *(a1 + 16);

  os_release(v2);
}

uint64_t _xferfd_unguarded(_DWORD *a1)
{
  v1 = *a1;
  *a1 = -1;
  return v1;
}

size_t _sscandgst(_BYTE *a1, char *__s)
{
  result = strlen(__s);
  if (result)
  {
    v4 = result;
    for (i = 0; i < v4; i += 2)
    {
      v8 = 0;
      *__str = 0;
      __strlcpy_chk();
      result = strtoul(__str, 0, 16);
      if (result >= 0x100)
      {
        _sscandgst_cold_1(&v6, v9);
      }

      *a1++ = result;
    }
  }

  return result;
}

uint64_t _opendirat(int a1, char *a2, int a3, mode_t a4, int *a5)
{
  v8 = a3 | 0x100000;
  if ((a3 & 0x200) != 0)
  {
    if ((mkdirat(a1, a2, a4) & 0x80000000) == 0)
    {
      *__error() = 0;
    }

    v9 = *__error();
    if (v9 != 17 && v9 != 0)
    {
      v11 = -1;
      goto LABEL_11;
    }

    v8 &= ~0x200u;
  }

  v11 = openat(a1, a2, v8);
  if (v11 < 0)
  {
LABEL_11:
    result = *__error();
    if (result)
    {
      return result;
    }
  }

  result = 0;
  *a5 = v11;
  return result;
}

uint64_t _rmrfdirat(int a1, const char *a2)
{
  p_vtable = OS_resource.vtable;
  if (a2)
  {
    v5 = openat(a1, a2, 0x100000);
    v74 = *__error();
    if (v5 < 0)
    {
      v12 = *__error();
      if (log_util_onceToken != -1)
      {
        _rmrfdirat_cold_1();
      }

      v13 = log_util_log;
      if (os_log_type_enabled(log_util_log, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        LODWORD(d_name) = v74;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "openat: %{darwin.errno}d", buf, 8u);
      }

      *__error() = v12;
      return v74;
    }

    if (log_util_onceToken != -1)
    {
      _rmrfdirat_cold_1();
    }

    v6 = log_util_log;
    if (os_log_type_enabled(log_util_log, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315138;
      d_name = a2;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "top-level directory: %s", buf, 0xCu);
    }

    *__error() = v74;
  }

  else
  {
    v5 = dup_np();
  }

  v73 = a2;
  v72 = a1;
  if (log_util_onceToken != -1)
  {
    _rmrfdirat_cold_3();
  }

  v7 = log_util_log;
  bzero(buf, 0x400uLL);
  memset(&v89, 0, sizeof(v89));
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    if (fstat(v5, &v89) == -1)
    {
      v14 = *__error();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v15 = *__error();
        *v77 = 136315650;
        v78 = "subdirfd";
        v79 = 1024;
        v80 = v5;
        v81 = 1024;
        LODWORD(v82) = v15;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%s fd[%d] : [invalid descriptor]: %{darwin.errno}d", v77, 0x18u);
      }

      *__error() = v14;
    }

    else
    {
      if (fcntl(v5, 50, buf))
      {
        v8 = __error();
        v9 = strerror(*v8);
        snprintf(buf, 0x400uLL, "[%s]", v9);
      }

      v10 = v89.st_mode >> 12;
      if (v10 == 7)
      {
        v11 = "[unknown]";
      }

      else
      {
        v11 = off_1000749E8[v10 ^ 8];
      }

      v16 = os_flagset_copy_string();
      v17 = *__error();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        *v77 = 136316418;
        v78 = "subdirfd";
        v79 = 1024;
        v80 = v5;
        v81 = 2080;
        v82 = v11;
        v83 = 2048;
        st_size = v89.st_size;
        v85 = 2080;
        v86 = v16;
        v87 = 2080;
        v88 = buf;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "%s fd[%d]: type = %s, size = %lld, flags = %s, path = %s", v77, 0x3Au);
      }

      *__error() = v17;
      free(v16);
      p_vtable = OS_resource.vtable;
    }
  }

  v18 = fdopendir(v5);
  if (!v18)
  {
    view_iterate_resource_cold_3(&v89, buf);
  }

  v19 = v18;
  v76 = 0;
  v20 = 0;
  v21 = 0;
  v74 = -1;
  v75 = v18;
  while (1)
  {
    v22 = v20;
    if ((v20 & 1) == 0)
    {
      break;
    }

    v23 = 128;
LABEL_35:
    v25 = dirfd(v19);
    if (v76 >= 4)
    {
      _rmrfdirat_cold_24(&v89, buf);
    }

    v26 = v25;
    if (v21->d_name[0] == 46)
    {
      v20 = 0;
      if (!v21->d_name[1])
      {
        continue;
      }

      if (v21->d_name[1] == 46)
      {
        v20 = 0;
        if (!v21->d_name[2])
        {
          continue;
        }
      }
    }

    v27 = *__error();
    if (log_util_onceToken != -1)
    {
      _rmrfdirat_cold_3();
    }

    v28 = p_vtable[421];
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315138;
      d_name = v21->d_name;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEBUG, "removing: %s", buf, 0xCu);
    }

    *__error() = v27;
    v29 = openat(v26, v21->d_name, 256);
    if ((v29 & 0x80000000) == 0)
    {
      *__error() = 0;
    }

    v30 = *__error();
    if (v30 == 62)
    {
      v41 = *__error();
      if (log_util_onceToken != -1)
      {
        _rmrfdirat_cold_3();
      }

      v42 = p_vtable[421];
      if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315138;
        d_name = v21->d_name;
        _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEBUG, "%s is a symlink", buf, 0xCu);
      }

      *__error() = v41;
    }

    else
    {
      if (v30 == 2)
      {
        v38 = *__error();
        if (log_util_onceToken != -1)
        {
          _rmrfdirat_cold_3();
        }

        v39 = p_vtable[421];
        if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315138;
          d_name = v21->d_name;
          _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEBUG, "file disappeared: %s", buf, 0xCu);
        }

        v76 = 0;
        v20 = 0;
        *__error() = v38;
        v40 = 9;
        goto LABEL_131;
      }

      if (v30)
      {
        v74 = *__error();
        v43 = *__error();
        if (log_util_onceToken != -1)
        {
          _rmrfdirat_cold_3();
        }

        v44 = p_vtable[421];
        if (!os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_130;
        }

        *buf = 67109120;
        LODWORD(d_name) = v74;
        v45 = buf;
        v46 = v44;
        v47 = "openat: %{darwin.errno}d";
        goto LABEL_128;
      }

      if (log_util_onceToken != -1)
      {
        _rmrfdirat_cold_3();
      }

      v31 = p_vtable[421];
      bzero(buf, 0x400uLL);
      memset(&v89, 0, sizeof(v89));
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
      {
        if (fstat(v29, &v89) == -1)
        {
          v48 = *__error();
          if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
          {
            v49 = *__error();
            *v77 = 136315650;
            v78 = "defd";
            v79 = 1024;
            v80 = v29;
            v81 = 1024;
            LODWORD(v82) = v49;
            _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, "%s fd[%d] : [invalid descriptor]: %{darwin.errno}d", v77, 0x18u);
          }

          *__error() = v48;
        }

        else
        {
          if (fcntl(v29, 50, buf))
          {
            v32 = __error();
            v33 = strerror(*v32);
            snprintf(buf, 0x400uLL, "[%s]", v33);
          }

          v34 = v89.st_mode >> 12;
          v35 = "[unknown]";
          if (v34 != 7)
          {
            v35 = off_1000749E8[v34 ^ 8];
          }

          v36 = os_flagset_copy_string();
          v37 = *__error();
          if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
          {
            *v77 = 136316418;
            v78 = "defd";
            v79 = 1024;
            v80 = v29;
            v81 = 2080;
            v82 = v35;
            v83 = 2048;
            st_size = v89.st_size;
            v85 = 2080;
            v86 = v36;
            v87 = 2080;
            v88 = buf;
            _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEBUG, "%s fd[%d]: type = %s, size = %lld, flags = %s, path = %s", v77, 0x3Au);
          }

          *__error() = v37;
          free(v36);
          p_vtable = (OS_resource + 24);
        }
      }
    }

    if ((unlinkat(v26, v21->d_name, v23) & 0x80000000) == 0)
    {
      *__error() = 0;
    }

    v50 = *__error();
    if (v50 <= 15)
    {
      if (!v50)
      {
        v51 = *__error();
        if (log_util_onceToken != -1)
        {
          _rmrfdirat_cold_3();
        }

        v59 = p_vtable[421];
        if (os_log_type_enabled(v59, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315138;
          d_name = v21->d_name;
          _os_log_impl(&_mh_execute_header, v59, OS_LOG_TYPE_DEBUG, "removed: %s", buf, 0xCu);
        }

        v53 = __error();
        v40 = 0;
        v76 = 0;
        goto LABEL_110;
      }

      if (v50 != 1)
      {
        if (v50 == 2)
        {
          v51 = *__error();
          if (log_util_onceToken != -1)
          {
            _rmrfdirat_cold_3();
          }

          v52 = p_vtable[421];
          if (os_log_type_enabled(v52, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136315138;
            d_name = v21->d_name;
            _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_DEBUG, "file disappeared: %s", buf, 0xCu);
          }

          v53 = __error();
          v40 = 0;
LABEL_110:
          v20 = 0;
          *v53 = v51;
          goto LABEL_131;
        }

LABEL_124:
        v74 = *__error();
        v43 = *__error();
        if (log_util_onceToken != -1)
        {
          _rmrfdirat_cold_3();
        }

        v63 = p_vtable[421];
        if (!os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_130;
        }

        *buf = 67109120;
        LODWORD(d_name) = v74;
        v45 = buf;
        v46 = v63;
        v47 = "unlinkat: %{darwin.errno}d";
LABEL_128:
        v64 = 8;
LABEL_129:
        _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_ERROR, v47, v45, v64);
        goto LABEL_130;
      }

      goto LABEL_96;
    }

    if (v50 != 16)
    {
      if (v50 != 21)
      {
        if (v50 == 66)
        {
          v54 = *__error();
          if (log_util_onceToken != -1)
          {
            _rmrfdirat_cold_3();
          }

          v55 = p_vtable[421];
          if (os_log_type_enabled(v55, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136315138;
            d_name = v21->d_name;
            _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEBUG, "re-trying directory cleanup: %s", buf, 0xCu);
          }

          v40 = 0;
          v20 = 0;
          *__error() = v54;
          ++v76;
          goto LABEL_131;
        }

        goto LABEL_124;
      }

LABEL_96:
      v56 = *__error();
      if (log_util_onceToken != -1)
      {
        _rmrfdirat_cold_3();
      }

      v57 = p_vtable[421];
      if (os_log_type_enabled(v57, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315138;
        d_name = v21->d_name;
        _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_DEBUG, "emptying subdirectory: %s", buf, 0xCu);
      }

      *__error() = v56;
      v74 = _rmrfdirat(v29, 0);
      if (!v74)
      {
        goto LABEL_123;
      }

      v43 = *__error();
      if (log_util_onceToken != -1)
      {
        _rmrfdirat_cold_3();
      }

      v58 = p_vtable[421];
      if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        LODWORD(d_name) = v74;
        v45 = buf;
        v46 = v58;
        v47 = "emptydir [recurse]: %{darwin.errno}d";
        goto LABEL_128;
      }

      goto LABEL_130;
    }

    if ((v22 & 1) == 0 && v21->d_type != 4)
    {
      v74 = *__error();
      v43 = *__error();
      if (log_util_onceToken != -1)
      {
        _rmrfdirat_cold_3();
      }

      v65 = p_vtable[421];
      if (!os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_130;
      }

      *buf = 136315394;
      d_name = v21->d_name;
      v92 = 1024;
      v93 = v74;
      v45 = buf;
      v46 = v65;
      v47 = "file busy: %s: %{darwin.errno}d";
      v64 = 18;
      goto LABEL_129;
    }

    bzero(buf, 0x400uLL);
    if (realpath_np())
    {
      _rmrfdirat_cold_16(v77, &v89);
    }

    v60 = *__error();
    if (log_util_onceToken != -1)
    {
      _rmrfdirat_cold_3();
    }

    v61 = p_vtable[421];
    if (os_log_type_enabled(v61, OS_LOG_TYPE_DEBUG))
    {
      v89.st_dev = 136315138;
      *&v89.st_mode = v21->d_name;
      _os_log_impl(&_mh_execute_header, v61, OS_LOG_TYPE_DEBUG, "mount point; forcing unmount: %s", &v89, 0xCu);
    }

    *__error() = v60;
    if (!unmount(buf, 0x80000))
    {
LABEL_123:
      v40 = 0;
      v74 = 0;
      v20 = 1;
      goto LABEL_131;
    }

    v74 = *__error();
    v43 = *__error();
    if (log_util_onceToken != -1)
    {
      _rmrfdirat_cold_3();
    }

    v62 = p_vtable[421];
    if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
    {
      v89.st_dev = 67109120;
      *&v89.st_mode = v74;
      v45 = &v89;
      v46 = v62;
      v47 = "unmount + MNT_FORCE: %{darwin.errno}d";
      goto LABEL_128;
    }

LABEL_130:
    v20 = 0;
    *__error() = v43;
    v40 = 4;
LABEL_131:
    if (v29 != -1 && close(v29) == -1)
    {
      daemon_init_cold_13(&v89, buf);
    }

    v19 = v75;
    if (v40 && v40 != 9)
    {
      goto LABEL_157;
    }
  }

  v24 = readdir(v19);
  if (v24)
  {
    v21 = v24;
    v23 = 0;
    goto LABEL_35;
  }

  if (v73)
  {
    v66 = unlinkat(v72, v73, 128);
    v74 = *__error();
    if (v66)
    {
      v67 = *__error();
      if (log_util_onceToken != -1)
      {
        _rmrfdirat_cold_3();
      }

      v68 = p_vtable[421];
      if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        LODWORD(d_name) = v74;
        _os_log_impl(&_mh_execute_header, v68, OS_LOG_TYPE_ERROR, "unlinkat [top level]: %{darwin.errno}d", buf, 8u);
      }

      goto LABEL_156;
    }

    if (log_util_onceToken != -1)
    {
      _rmrfdirat_cold_3();
    }

    v70 = p_vtable[421];
    if (os_log_type_enabled(v70, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315138;
      d_name = v73;
      _os_log_impl(&_mh_execute_header, v70, OS_LOG_TYPE_DEBUG, "removed top-level directory: %s", buf, 0xCu);
    }

    v67 = v74;
  }

  else
  {
    v67 = *__error();
    if (log_util_onceToken != -1)
    {
      _rmrfdirat_cold_3();
    }

    v69 = p_vtable[421];
    if (os_log_type_enabled(v69, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v69, OS_LOG_TYPE_DEBUG, "removed subdirectory", buf, 2u);
    }
  }

  v74 = 0;
LABEL_156:
  *__error() = v67;
LABEL_157:
  if (closedir(v19) == -1)
  {
    view_iterate_resource_cold_2(&v89, buf);
  }

  return v74;
}

uint64_t _rmrfdir(const char *a1)
{
  v2 = open("/", 0);
  v3 = _rmrfdirat(v2, a1);
  if (v2 != -1 && close(v2) == -1)
  {
    daemon_init_cold_13(&v5, v6);
  }

  return v3;
}

uint64_t _unmountat(int *a1, int a2)
{
  bzero(v15, 0x400uLL);
  v4 = *a1;
  v5 = realpath_np();
  v6 = *__error();
  if (v5)
  {
    v7 = *__error();
    if (log_util_onceToken != -1)
    {
      _rmrfdirat_cold_3();
    }

    v8 = log_util_log;
    if (os_log_type_enabled(log_util_log, OS_LOG_TYPE_ERROR))
    {
      v13 = 67109120;
      LODWORD(v14) = v6;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "could not resolve mount point for unmount: %{darwin.errno}d", &v13, 8u);
    }

    *__error() = v7;
  }

  else
  {
    if (log_util_onceToken != -1)
    {
      _rmrfdirat_cold_3();
    }

    v10 = log_util_log;
    if (os_log_type_enabled(log_util_log, OS_LOG_TYPE_DEBUG))
    {
      v13 = 136315138;
      v14 = v15;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "unmounting: %s", &v13, 0xCu);
    }

    *__error() = v6;
    close_drop_np();
    if (unmount(v15, a2))
    {
      v6 = *__error();
      v11 = *__error();
      if (log_util_onceToken != -1)
      {
        _rmrfdirat_cold_3();
      }

      v12 = log_util_log;
      if (os_log_type_enabled(log_util_log, OS_LOG_TYPE_ERROR))
      {
        v13 = 67109120;
        LODWORD(v14) = v6;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "unmount: %{darwin.errno}d", &v13, 8u);
      }

      *__error() = v11;
      if (v6)
      {
        *a1 = open(v15, 1048832);
      }
    }

    else
    {
      return 0;
    }
  }

  return v6;
}

uint64_t _mkodtempat(int a1, char *a2, int *a3)
{
  v5 = mkdtempat_np(a1, a2);
  if (!v5)
  {
    return *__error();
  }

  v6 = openat(a1, v5, 1048832);
  if (v6 < 0)
  {
    return *__error();
  }

  v7 = v6;
  result = 0;
  *a3 = v7;
  return result;
}

uint64_t _mkdir(const char *a1, mode_t a2, int *a3)
{
  if ((mkdir(a1, a2) & 0x80000000) == 0)
  {
    *__error() = 0;
  }

  v5 = *__error();
  if (v5)
  {
    v6 = v5 == 17;
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    v10 = __error();
    return *v10;
  }

  v7 = opendir(a1);
  v10 = __error();
  if (!v7)
  {
    return *v10;
  }

  *v10 = 0;
  while (1)
  {
    v8 = readdir(v7);
    if (!v8)
    {
      break;
    }

    if (v8->d_name[0] != 46 || v8->d_name[1] && (v8->d_name[1] != 46 || v8->d_name[2]))
    {
      v9 = 17;
      goto LABEL_21;
    }
  }

  if (*__error() || (v11 = open(a1, 1048832), v11 < 0))
  {
    v9 = *__error();
  }

  else
  {
    v9 = 0;
    *a3 = v11;
  }

LABEL_21:
  if (closedir(v7) == -1)
  {
    view_iterate_resource_cold_2(&v13, v14);
  }

  return v9;
}

BOOL _streq_optional(const char *a1, const char *a2)
{
  if (a1 && a2)
  {
    return strcmp(a1, a2) == 0;
  }

  else
  {
    return a1 == a2;
  }
}

uint64_t _read_file(int a1, void *a2)
{
  memset(&v20, 0, sizeof(v20));
  if (fstat(a1, &v20))
  {
    v4 = *__error();
    v5 = *__error();
    if (log_util_onceToken != -1)
    {
      _rmrfdirat_cold_3();
    }

    v6 = log_util_log;
    if (os_log_type_enabled(log_util_log, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      LODWORD(v22) = v4;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "stat: %{darwin.errno}d", buf, 8u);
    }

    st_size = 0;
LABEL_7:
    v8 = 0;
    *__error() = v5;
LABEL_8:
    if (!v4)
    {
      goto LABEL_9;
    }

    goto LABEL_10;
  }

  st_size = v20.st_size;
  if (v20.st_size < 0)
  {
    _read_file_cold_6();
  }

  v10 = malloc_type_malloc(v20.st_size, 0xB48626A3uLL);
  if (!v10)
  {
    v4 = *__error();
    v5 = *__error();
    if (log_util_onceToken != -1)
    {
      _rmrfdirat_cold_3();
    }

    v15 = log_util_log;
    if (os_log_type_enabled(log_util_log, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      LODWORD(v22) = v4;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "malloc: %{darwin.errno}d", buf, 8u);
    }

    goto LABEL_7;
  }

  v8 = v10;
  while (1)
  {
    v11 = pread(a1, v8, st_size, 0);
    if ((v11 & 0x8000000000000000) == 0)
    {
      break;
    }

    v12 = *__error();
    if (log_util_onceToken != -1)
    {
      _rmrfdirat_cold_3();
    }

    v13 = log_util_log;
    if (os_log_type_enabled(log_util_log, OS_LOG_TYPE_ERROR))
    {
      v14 = *__error();
      *buf = 67109120;
      LODWORD(v22) = v14;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "pread: %{darwin.errno}d", buf, 8u);
    }

    *__error() = v12;
    v4 = *__error();
    if (v4 != 4)
    {
      goto LABEL_8;
    }
  }

  v16 = v11;
  v17 = *__error();
  if (v16 == st_size)
  {
    if (log_util_onceToken != -1)
    {
      _rmrfdirat_cold_3();
    }

    v18 = log_util_log;
    if (os_log_type_enabled(log_util_log, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134217984;
      v22 = st_size;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEBUG, "read %ld bytes", buf, 0xCu);
    }

    *__error() = v17;
LABEL_9:
    buff_init(a2, 0, _buff_destructor_free, v8, st_size);
    v4 = 0;
    v8 = 0;
    goto LABEL_10;
  }

  if (log_util_onceToken != -1)
  {
    _rmrfdirat_cold_3();
  }

  v19 = log_util_log;
  if (os_log_type_enabled(log_util_log, OS_LOG_TYPE_ERROR))
  {
    *buf = 134218240;
    v22 = v16;
    v23 = 2048;
    v24 = st_size;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "truncated read: actual = %ld, expected = %lu", buf, 0x16u);
  }

  *__error() = v17;
  v4 = 5;
LABEL_10:
  free(v8);
  return v4;
}

uint64_t _digest_file(int a1, uint64_t a2, uint64_t a3)
{
  memset(&v20, 0, sizeof(v20));
  v6 = (*(a2 + 8) + *(a2 + 16) + 19) & 0xFFFFFFFFFFFFFFF8;
  __chkstk_darwin();
  v8 = &v18 - v7;
  bzero(&v18 - v7, v9);
  if (*a2 >= 0x31uLL)
  {
    _digest_file_cold_5(&v19, buf);
  }

  if (fstat(a1, &v20))
  {
    v10 = *__error();
    v11 = *__error();
    if (log_util_onceToken != -1)
    {
      _rmrfdirat_cold_3();
    }

    v12 = log_util_log;
    if (!os_log_type_enabled(log_util_log, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_8;
    }

    *buf = 67109120;
    *&buf[4] = v10;
    v13 = "failed to stat file: %{darwin.errno}d";
LABEL_7:
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, v13, buf, 8u);
LABEL_8:
    *__error() = v11;
    return v10;
  }

  st_size = v20.st_size;
  if (v20.st_size < 0)
  {
    _read_file_cold_6();
  }

  v15 = mmap(0, v20.st_size, 1, 1, a1, 0);
  if (v15 == -1)
  {
    v10 = *__error();
    v11 = *__error();
    if (log_util_onceToken != -1)
    {
      _rmrfdirat_cold_3();
    }

    v12 = log_util_log;
    if (!os_log_type_enabled(log_util_log, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_8;
    }

    *buf = 67109120;
    *&buf[4] = v10;
    v13 = "failed to map file into memory: %{darwin.errno}d";
    goto LABEL_7;
  }

  v16 = v15;
  ccdigest_init();
  ccdigest_update();
  (*(a2 + 56))(a2, v8, a3 + 16);
  *(a3 + 8) = *a2;
  if (munmap(v16, st_size) == -1)
  {
    _digest_file_cold_2(&v19, buf);
  }

  return 0;
}

uint64_t _xpc_object_set_string_if_absent(void *a1, const char *a2, const char *a3)
{
  if (xpc_dictionary_get_value(a1, a2))
  {
    return 17;
  }

  xpc_dictionary_set_string(a1, a2, a3);
  return 0;
}

BOOL _xpc_object_has_string(void *a1, const char *a2)
{
  if (xpc_get_type(a1) == &_xpc_type_string)
  {
    string_ptr = xpc_string_get_string_ptr(a1);
    return strcmp(a2, string_ptr) == 0;
  }

  else if (xpc_get_type(a1) == &_xpc_type_array && xpc_array_get_count(a1))
  {
    v7 = 0;
    do
    {
      value = xpc_array_get_value(a1, v7);
      has_string = _xpc_object_has_string(value, a2);
      if (has_string)
      {
        break;
      }

      ++v7;
    }

    while (v7 < xpc_array_get_count(a1));
  }

  else
  {
    return 0;
  }

  return has_string;
}

xpc_object_t _xpc_object_has_string_for_key(void *a1, const char *a2, const char *a3)
{
  result = xpc_dictionary_get_value(a1, a2);
  if (result)
  {

    return _xpc_object_has_string(result, a3);
  }

  return result;
}

void _sscandgst_cold_1(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_4(a1, a2);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_11();
  __break(1u);
}

void _rmrfdirat_cold_16(void *a1, _OWORD *a2)
{
  *a1 = 0;
  a2[3] = 0u;
  a2[4] = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_11();
  __break(1u);
}

void _rmrfdirat_cold_24(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_4(a1, a2);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_11();
  __break(1u);
}

void _digest_file_cold_2(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_3(a1, a2);
  OUTLINED_FUNCTION_8();
  v2 = *__error();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_10();
  __break(1u);
}

void _digest_file_cold_5(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_4(a1, a2);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_11();
  __break(1u);
}

uint64_t _buff_destructor_munmap(void *a1, size_t a2)
{
  result = munmap(a1, a2);
  if (result == -1)
  {
    _buff_destructor_munmap_cold_1(&v3, v4);
  }

  return result;
}

void *buff_init(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *result = a4;
  result[1] = a5;
  result[2] = a4;
  result[3] = a5;
  result[4] = a2;
  result[5] = a3;
  if (a5 < 0)
  {
    buff_init_cold_1(&v5, v6);
  }

  return result;
}

__n128 buff_xfer_subrange(__n128 *a1, __n128 *a2, uint64_t a3, unint64_t a4)
{
  if (a4 + a3 > a2->n128_u64[1])
  {
    v5 = a2->n128_u64[1];
    os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  a1->n128_u64[0] = a2->n128_u64[0] + a3;
  a1->n128_u64[1] = a4;
  a1[1].n128_u64[0] = a2->n128_u64[0];
  a1[1].n128_u64[1] = a2->n128_u64[1];
  result = a2[2];
  a1[2] = result;
  a2[2].n128_u64[1] = 0;
  return result;
}

FILE *buff_fopen(uint64_t a1, char *__mode, unint64_t a3)
{
  if ((a3 & 0x8000000000000000) != 0 || (v5 = *(a1 + 8), v5 < a3))
  {
    buff_fopen_cold_3();
  }

  v6 = fmemopen(*a1, v5, __mode);
  if (!v6)
  {
    buff_fopen_cold_2(&v9, v10);
  }

  v7 = v6;
  if (fseek(v6, a3, 0) == -1)
  {
    buff_fopen_cold_1(&v9, v10);
  }

  return v7;
}

void *buff_destroy(void *result)
{
  if (result)
  {
    if (*result)
    {
      v2 = result[5];
      if (v2)
      {
        if (result[6])
        {
          buff_destroy_cold_1();
        }

        v3 = result[3];
        v4 = result[4];
        v5 = result[2];

        return v2(v5, v3, v4);
      }
    }
  }

  return result;
}

void _buff_destructor_munmap_cold_1(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_3(a1, a2);
  os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
  v3 = *__error();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0_0();
  v4 = *v2;
  _os_crash_msg();
  __break(1u);
}

void buff_init_cold_1(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_4(a1, a2);
  os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
  OUTLINED_FUNCTION_2_0();
  v3 = *v2;
  _os_crash_msg();
  __break(1u);
}

void buff_fopen_cold_1(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_3(a1, a2);
  os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
  v3 = *__error();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0_0();
  v4 = *v2;
  _os_crash_msg();
  __break(1u);
}

void buff_fopen_cold_2(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_3(a1, a2);
  os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
  v3 = *__error();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0_0();
  v4 = *v2;
  _os_crash_msg();
  __break(1u);
}

void *ctx_new(void *a1, size_t a2)
{
  if (a2 <= 0x1F)
  {
    ctx_new_cold_2(&v7, v8);
  }

  if (_dispatch_is_multithreaded())
  {
    while (1)
    {
      v4 = malloc_type_calloc(1uLL, a2, 0x8A375538uLL);
      if (v4)
      {
        break;
      }

      __os_temporary_resource_shortage();
    }
  }

  else
  {
    v4 = malloc_type_calloc(1uLL, a2, 0x8709206FuLL);
    if (!v4)
    {
      ctx_new_cold_1(&v7, v8);
    }
  }

  v5 = v4;
  if (a1)
  {
    *v4 = os_retain(a1);
  }

  return v5;
}

void ctx_destroy(void **a1)
{
  if (a1)
  {
    v2 = a1[3];
    if (v2)
    {
      v2(a1);
    }

    if (*a1)
    {
      os_release(*a1);
    }

    free(a1);
  }
}

void ctx_new_cold_1(uint64_t *a1, _OWORD *a2)
{
  *a1 = 0;
  a2[3] = 0u;
  a2[4] = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
  v3 = __error();
  strerror(*v3);
  _os_log_send_and_compose_impl();
  v4 = *a1;
  _os_crash_msg();
  __break(1u);
}

void ctx_new_cold_2(uint64_t *a1, _OWORD *a2)
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

xpc_object_t _xpc_plist_value_copy(uint64_t a1, xpc_object_t object)
{
  if (*a1 != &_xpc_type_array && *a1 != &_xpc_type_dictionary)
  {
    _xpc_plist_value_copy_cold_1();
  }

  type = xpc_get_type(object);
  if (type != *a1)
  {
    return 0;
  }

  if (type == &_xpc_type_array)
  {
    v8 = *(a1 + 24);
    if (v8 >= xpc_array_get_count(object))
    {
      return 0;
    }

    value = xpc_array_get_value(object, *(a1 + 24));
  }

  else
  {
    value = xpc_dictionary_get_value(object, *(a1 + 16));
  }

  v9 = value;
  if (!value || xpc_get_type(value) != *(a1 + 8))
  {
    return 0;
  }

  return xpc_retain(v9);
}

uint64_t _xpc_plist_merge(uint64_t a1, xpc_object_t xdict)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2000000000;
  v8 = 0;
  if (xdict)
  {
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 0x40000000;
    v4[2] = ___xpc_plist_merge_block_invoke;
    v4[3] = &unk_100074A88;
    v4[4] = &v5;
    v4[5] = a1;
    xpc_dictionary_apply(xdict, v4);
    v2 = *(v6 + 6);
  }

  else
  {
    v2 = 0;
  }

  _Block_object_dispose(&v5, 8);
  return v2;
}

uint64_t ___xpc_plist_merge_block_invoke(uint64_t a1, const char *a2, void *a3)
{
  value = xpc_dictionary_get_value(*(a1 + 40), a2);
  if (!value)
  {
LABEL_9:
    xpc_dictionary_set_value(*(a1 + 40), a2, a3);
    return 1;
  }

  v7 = value;
  type = xpc_get_type(value);
  if (type == xpc_get_type(a3))
  {
    if (type == &_xpc_type_dictionary)
    {
      applier[0] = _NSConcreteStackBlock;
      applier[1] = 0x40000000;
      applier[2] = ___xpc_plist_merge_block_invoke_2;
      applier[3] = &__block_descriptor_tmp_5;
      applier[4] = v7;
      xpc_dictionary_apply(a3, applier);
      return 1;
    }

    goto LABEL_9;
  }

  *(*(*(a1 + 32) + 8) + 24) = 79;
  v9 = *__error();
  if (_xpc_log_onceToken != -1)
  {
    ___xpc_plist_merge_block_invoke_cold_1();
  }

  v10 = _xpc_log_osl;
  if (os_log_type_enabled(_xpc_log_osl, OS_LOG_TYPE_ERROR))
  {
    v11 = *(*(*(a1 + 32) + 8) + 24);
    *buf = 136315394;
    v15 = a2;
    v16 = 1024;
    v17 = v11;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Error merging override for key %s: %{darwin.errno}d", buf, 0x12u);
  }

  *__error() = v9;
  return 1;
}

uint64_t _xpc_dictionary_try_get_uint64(void *a1, const char *a2, uint64_t *a3)
{
  value = xpc_dictionary_get_value(a1, a2);
  if (!value)
  {
    return 2;
  }

  v5 = value;
  if (xpc_get_type(value) != &_xpc_type_uint64)
  {
    return 79;
  }

  v7 = xpc_uint64_get_value(v5);
  result = 0;
  *a3 = v7;
  return result;
}

uint64_t _xpc_dictionary_try_get_string(void *a1, const char *a2, const char **a3)
{
  value = xpc_dictionary_get_value(a1, a2);
  if (!value)
  {
    return 2;
  }

  v5 = value;
  if (xpc_get_type(value) != &_xpc_type_string)
  {
    return 79;
  }

  string_ptr = xpc_string_get_string_ptr(v5);
  result = 0;
  *a3 = string_ptr;
  return result;
}

uint64_t _xpc_dictionary_try_get_BOOL(void *a1, const char *a2, BOOL *a3)
{
  value = xpc_dictionary_get_value(a1, a2);
  if (!value)
  {
    return 2;
  }

  v5 = value;
  if (xpc_get_type(value) != &_xpc_type_BOOL)
  {
    return 79;
  }

  v7 = xpc_BOOL_get_value(v5);
  result = 0;
  *a3 = v7;
  return result;
}

uint64_t _xpc_dictionary_key_with_type_exists(void *a1, const char *a2, const _xpc_type_s *a3)
{
  value = xpc_dictionary_get_value(a1, a2);
  if (!value)
  {
    v6 = *__error();
    if (_xpc_log_onceToken != -1)
    {
      ___xpc_plist_merge_block_invoke_cold_1();
    }

    v11 = _xpc_log_osl;
    if (!os_log_type_enabled(_xpc_log_osl, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_12;
    }

    v14 = 136315138;
    v15 = a2;
    v8 = "key %s doesn't exist";
    v9 = v11;
    v10 = 12;
    goto LABEL_11;
  }

  if (xpc_get_type(value) != a3)
  {
    v6 = *__error();
    if (_xpc_log_onceToken != -1)
    {
      ___xpc_plist_merge_block_invoke_cold_1();
    }

    v7 = _xpc_log_osl;
    if (!os_log_type_enabled(_xpc_log_osl, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_12;
    }

    v14 = 136315394;
    v15 = a2;
    v16 = 2080;
    name = xpc_type_get_name(a3);
    v8 = "key %s isn't of type %s";
    v9 = v7;
    v10 = 22;
LABEL_11:
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, v8, &v14, v10);
LABEL_12:
    v12 = __error();
    result = 0;
    *v12 = v6;
    return result;
  }

  return 1;
}

void *_xpc_create_reply(void *a1, void *a2, int a3)
{
  reply = xpc_dictionary_create_reply(a1);
  v6 = reply;
  if (reply)
  {
    xpc_dictionary_set_uint64(reply, "error", a3);
    xpc_dictionary_set_value(v6, "argv", a2);
  }

  else
  {
    v7 = *__error();
    if (_xpc_log_onceToken != -1)
    {
      ___xpc_plist_merge_block_invoke_cold_1();
    }

    v8 = _xpc_log_osl;
    if (os_log_type_enabled(_xpc_log_osl, OS_LOG_TYPE_ERROR))
    {
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "failed to extract reply from request, the connection may have gone", v10, 2u);
    }

    *__error() = v7;
  }

  return v6;
}

uint64_t _xpc_dictionary_try_get_cferr(void *a1, const char *a2, CFErrorRef *a3)
{
  value = xpc_dictionary_get_value(a1, a2);
  if (!value)
  {
    return 2;
  }

  v5 = value;
  if (xpc_get_type(value) != &_xpc_type_dictionary)
  {
    return 79;
  }

  return _xpc_dictionary_to_cferr(v5, a3);
}

uint64_t _xpc_dictionary_to_cferr(void *a1, CFErrorRef *a2)
{
  value = 0;
  dictionary = xpc_dictionary_get_dictionary(a1, "cferr_userinfo");
  if (dictionary)
  {
    v5 = dictionary;
    string = xpc_dictionary_get_string(a1, "cferr_domain");
    v7 = _CFStringCreateFromUTF8String(string);
    if (v7)
    {
      v8 = v7;
      int64 = xpc_dictionary_get_int64(a1, "cferr_code");
      v10 = xpc_dictionary_get_dictionary(v5, "underlying_cferr");
      if (v10 && _xpc_dictionary_to_cferr(v10, &value))
      {
        v11 = *__error();
        if (_xpc_log_onceToken != -1)
        {
          _xpc_dictionary_to_cferr_cold_1();
        }

        v12 = _xpc_log_osl;
        if (!os_log_type_enabled(_xpc_log_osl, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_31;
        }

        *buf = 67109120;
        v31 = 22;
        v13 = "Failed to unpack underlying error.: %{darwin.errno}d";
      }

      else
      {
        xpc_dictionary_set_value(v5, "underlying_cferr", 0);
        v17 = _CFXPCCreateCFObjectFromXPCObject();
        if (v17)
        {
          v18 = v17;
          MutableCopy = CFDictionaryCreateMutableCopy(0, 0, v17);
          if (MutableCopy)
          {
            v20 = MutableCopy;
            if (value)
            {
              CFDictionarySetValue(MutableCopy, kCFErrorUnderlyingErrorKey, value);
            }

            v21 = CFErrorCreate(0, v8, int64, v20);
            if (v21)
            {
              if (a2)
              {
                v16 = 0;
                *a2 = v21;
              }

              else
              {
                CFRelease(v21);
                v16 = 0;
              }
            }

            else
            {
              v26 = *__error();
              if (_xpc_log_onceToken != -1)
              {
                _xpc_dictionary_to_cferr_cold_1();
              }

              v27 = _xpc_log_osl;
              if (os_log_type_enabled(_xpc_log_osl, OS_LOG_TYPE_ERROR))
              {
                *buf = 67109120;
                v31 = 12;
                _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "Failed to create CFError.: %{darwin.errno}d", buf, 8u);
              }

              *__error() = v26;
              v16 = 12;
            }

            CFRelease(v20);
          }

          else
          {
            v24 = *__error();
            if (_xpc_log_onceToken != -1)
            {
              _xpc_dictionary_to_cferr_cold_1();
            }

            v25 = _xpc_log_osl;
            if (os_log_type_enabled(_xpc_log_osl, OS_LOG_TYPE_ERROR))
            {
              *buf = 67109120;
              v31 = 12;
              _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "Failed to create mutable dictionary.: %{darwin.errno}d", buf, 8u);
            }

            *__error() = v24;
            v16 = 12;
          }

          CFRelease(v18);
          goto LABEL_45;
        }

        v11 = *__error();
        if (_xpc_log_onceToken != -1)
        {
          _xpc_dictionary_to_cferr_cold_1();
        }

        v12 = _xpc_log_osl;
        if (!os_log_type_enabled(_xpc_log_osl, OS_LOG_TYPE_ERROR))
        {
LABEL_31:
          *__error() = v11;
          v16 = 22;
LABEL_45:
          CFRelease(v8);
          goto LABEL_46;
        }

        *buf = 67109120;
        v31 = 22;
        v13 = "Failed to convert CF to XPC.: %{darwin.errno}d";
      }

      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, v13, buf, 8u);
      goto LABEL_31;
    }

    v22 = *__error();
    if (_xpc_log_onceToken != -1)
    {
      ___xpc_plist_merge_block_invoke_cold_1();
    }

    v23 = _xpc_log_osl;
    if (os_log_type_enabled(_xpc_log_osl, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v31 = 12;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "Failed to create string.: %{darwin.errno}d", buf, 8u);
    }

    *__error() = v22;
    v16 = 12;
  }

  else
  {
    v14 = *__error();
    if (_xpc_log_onceToken != -1)
    {
      ___xpc_plist_merge_block_invoke_cold_1();
    }

    v15 = _xpc_log_osl;
    if (os_log_type_enabled(_xpc_log_osl, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v31 = 22;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "CFError XPC dictionary is missing user info.: %{darwin.errno}d", buf, 8u);
    }

    *__error() = v14;
    v16 = 22;
  }

LABEL_46:
  if (value)
  {
    CFRelease(value);
  }

  return v16;
}

xpc_object_t _xpc_cferr_to_dictionary(__CFError *a1)
{
  v2 = xpc_dictionary_create(0, 0, 0);
  v3 = CFErrorCopyUserInfo(a1);
  if (v3)
  {
    MutableCopy = CFDictionaryCreateMutableCopy(0, 0, v3);
    if (!MutableCopy)
    {
      _xpc_cferr_to_dictionary_cold_3();
    }

    v5 = MutableCopy;
    CFDictionaryRemoveValue(MutableCopy, kCFErrorUnderlyingErrorKey);
    v6 = _CFXPCCreateXPCObjectFromCFObject();
    if (!v6)
    {
      _xpc_cferr_to_dictionary_cold_2();
    }

    v7 = v6;
    if (CFDictionaryGetValue(v3, kCFErrorUnderlyingErrorKey))
    {
      v8 = _xpc_cferr_to_dictionary();
      if (!v8)
      {
        _xpc_cferr_to_dictionary_cold_1();
      }

      v9 = v8;
      xpc_dictionary_set_value(v7, "underlying_cferr", v8);
    }

    else
    {
      v9 = 0;
    }

    xpc_dictionary_set_value(v2, "cferr_userinfo", v7);
  }

  else
  {
    v9 = 0;
    v7 = 0;
    v5 = 0;
  }

  if (!CFErrorGetDomain(a1))
  {
    _xpc_cferr_to_dictionary_cold_4();
  }

  Domain = CFErrorGetDomain(a1);
  v11 = _CFStringCopyUTF8String(Domain);
  xpc_dictionary_set_string(v2, "cferr_domain", v11);
  Code = CFErrorGetCode(a1);
  xpc_dictionary_set_int64(v2, "cferr_code", Code);
  free(v11);
  if (v5)
  {
    CFRelease(v5);
  }

  if (v3)
  {
    CFRelease(v3);
  }

  if (v7)
  {
    os_release(v7);
  }

  if (v9)
  {
    os_release(v9);
  }

  return v2;
}

void *_xpc_create_reply_with_cferr(void *a1, void *a2, __CFError *a3)
{
  reply = xpc_dictionary_create_reply(a1);
  v6 = reply;
  if (reply)
  {
    xpc_dictionary_set_value(reply, "argv", a2);
    if (a3)
    {
      v7 = _xpc_cferr_to_dictionary(a3);
      xpc_dictionary_set_value(v6, "cferr", v7);
      if (v7)
      {
        os_release(v7);
      }
    }
  }

  else
  {
    v8 = *__error();
    if (_xpc_log_onceToken != -1)
    {
      ___xpc_plist_merge_block_invoke_cold_1();
    }

    v9 = _xpc_log_osl;
    if (os_log_type_enabled(_xpc_log_osl, OS_LOG_TYPE_ERROR))
    {
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "failed to extract reply from request, the connection may have gone", v11, 2u);
    }

    *__error() = v8;
  }

  return v6;
}

uint64_t _xpc_request_get_argv(void *a1, void *a2)
{
  if (!_xpc_dictionary_key_with_type_exists(a1, "argv", &_xpc_type_dictionary))
  {
    return 22;
  }

  dictionary = xpc_dictionary_get_dictionary(a1, "argv");
  result = 0;
  *a2 = dictionary;
  return result;
}

uint64_t DERImg4DecodeTagCompare(uint64_t a1, unsigned int a2)
{
  v4 = *(a1 + 8);
  if (v4 < 4)
  {
    return 0xFFFFFFFFLL;
  }

  if (v4 != 4)
  {
    return 1;
  }

  v8 = v2;
  v9 = v3;
  v7 = 0;
  if (DERParseInteger(a1, &v7))
  {
    return 4294967294;
  }

  if (v7 >= a2)
  {
    return v7 > a2;
  }

  return 0xFFFFFFFFLL;
}

uint64_t DERImg4DecodeManifestCommon(void *a1, unint64_t a2, uint64_t a3, unint64_t a4, unsigned int a5)
{
  result = 6;
  if (a1 && a4)
  {
    if (!*a1 || !a1[1])
    {
      return 0;
    }

    if (a2 >= 0x10000)
    {
      __break(0x5507u);
      return result;
    }

    result = DERParseSequenceToObject(a1, a2, a3, a4, 0xC0uLL, 0);
    if (!result)
    {
      if (DERImg4DecodeTagCompare(a4, a5))
      {
        return 2;
      }

      v9 = 0;
      result = DERParseInteger(a4 + 16, &v9);
      if (result)
      {
        return result;
      }

      if (v9 > 2)
      {
        return 2;
      }

      return 0;
    }
  }

  return result;
}

double Img4DecodeInit(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    if (a3)
    {
      v9[0] = a1;
      v9[1] = a2;
      v7 = 0u;
      v8 = 0u;
      v5 = 0u;
      v6 = 0u;
      *a3 = 0u;
      *(a3 + 16) = 0u;
      *(a3 + 32) = 0u;
      *(a3 + 48) = 0u;
      *(a3 + 64) = 0u;
      *(a3 + 80) = 0u;
      *(a3 + 96) = 0u;
      *(a3 + 112) = 0u;
      *(a3 + 128) = 0u;
      *(a3 + 144) = 0u;
      *(a3 + 160) = 0u;
      *(a3 + 176) = 0u;
      *(a3 + 192) = 0u;
      *(a3 + 208) = 0u;
      *(a3 + 224) = 0u;
      *(a3 + 240) = 0u;
      *(a3 + 256) = 0u;
      *(a3 + 272) = 0u;
      *(a3 + 288) = 0u;
      *(a3 + 304) = 0u;
      *(a3 + 320) = 0u;
      *(a3 + 336) = 0u;
      *(a3 + 352) = 0u;
      *(a3 + 368) = 0u;
      *(a3 + 384) = 0u;
      *(a3 + 400) = 0u;
      *(a3 + 416) = 0u;
      *(a3 + 432) = 0u;
      *(a3 + 448) = 0;
      if (!DERImg4Decode(v9, &v5) && !DERImg4DecodePayload(&v6, a3 + 88) && !DERImg4DecodeManifest(&v7, a3 + 232) && !DERImg4DecodeRestoreInfo(&v8, (a3 + 424)))
      {
        *(a3 + 8) = v6;
        result = *&v7;
        *(a3 + 24) = v7;
      }
    }
  }

  return result;
}

double Img4DecodeInitPayload(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 && a3)
  {
    *&v5 = a1;
    *(&v5 + 1) = a2;
    *a3 = 0u;
    *(a3 + 16) = 0u;
    *(a3 + 32) = 0u;
    *(a3 + 48) = 0u;
    *(a3 + 64) = 0u;
    *(a3 + 80) = 0u;
    *(a3 + 96) = 0u;
    *(a3 + 112) = 0u;
    *(a3 + 128) = 0u;
    *(a3 + 144) = 0u;
    *(a3 + 160) = 0u;
    *(a3 + 176) = 0u;
    *(a3 + 192) = 0u;
    *(a3 + 208) = 0u;
    *(a3 + 224) = 0u;
    *(a3 + 240) = 0u;
    *(a3 + 256) = 0u;
    *(a3 + 272) = 0u;
    *(a3 + 288) = 0u;
    *(a3 + 304) = 0u;
    *(a3 + 320) = 0u;
    *(a3 + 336) = 0u;
    *(a3 + 352) = 0u;
    *(a3 + 368) = 0u;
    *(a3 + 384) = 0u;
    *(a3 + 400) = 0u;
    *(a3 + 416) = 0u;
    *(a3 + 432) = 0u;
    *(a3 + 448) = 0;
    if (!DERImg4DecodePayload(&v5, a3 + 88))
    {
      result = *&v5;
      *(a3 + 8) = v5;
    }
  }

  return result;
}

uint64_t DERDecodeItemPartialBufferGetLength(uint64_t result, unint64_t *a2, unint64_t *a3)
{
  v3 = *(result + 8);
  if (v3 < 2)
  {
    return 3;
  }

  v4 = *result;
  if (*result == -1)
  {
    goto LABEL_68;
  }

  v5 = &v4[v3];
  v6 = v4 + 1;
  v7 = v3 - 1;
  v8 = *v4 & 0x1F;
  if ((*v4 & 0x1F) != 0x1F)
  {
    v12 = v4 + 1;
LABEL_20:
    *a2 = v8 | ((*v4 & 0xE0) << 56);
    if (v12 != -1)
    {
      if (v12 >= v5 || v12 < v4)
      {
        goto LABEL_69;
      }

      v14 = v12 + 1;
      v15 = *v12;
      v16 = v7 - 1;
      if ((*v12 & 0x80000000) == 0)
      {
        if (a3 || v16 >= v15)
        {
          if (v16 >= v15)
          {
            v17 = *v12;
          }

          else
          {
            v17 = v7 - 1;
          }

          v10 = v5 >= v14;
          v18 = v5 - v14;
          if (v10 && v4 <= v14 && v17 <= v18)
          {
            a2[1] = v14;
            a2[2] = v17;
            if (!a3)
            {
              return 0;
            }

LABEL_34:
            result = 0;
            *a3 = v15;
            return result;
          }

LABEL_69:
          __break(0x5519u);
LABEL_70:
          __break(0x5515u);
          return result;
        }

        return 3;
      }

      v19 = v15 & 0x7F;
      if ((v15 & 0x7F) > 8)
      {
        return 3;
      }

      if ((v15 & 0x7F) == 0 || v16 < v19)
      {
        return 3;
      }

      if (v14 >= v5 || v14 < v4)
      {
        goto LABEL_69;
      }

      if (!*v14)
      {
        return 3;
      }

      v15 = 0;
      v21 = (v19 - 1);
      v22 = v7 - v21 - 2;
      v23 = &v12[v21 + 2];
      while (v14 != -1)
      {
        if (v14 >= v5)
        {
          goto LABEL_69;
        }

        v10 = v16-- != 0;
        if (!v10)
        {
          goto LABEL_70;
        }

        v24 = *v14++;
        v15 = (v15 << 8) | v24;
        LODWORD(v19) = v19 - 1;
        if (!v19)
        {
          if (a3)
          {
            v25 = 0;
          }

          else
          {
            v25 = v15 > v22;
          }

          v26 = v25;
          result = 3;
          if (v15 < 0x80 || (v26 & 1) != 0)
          {
            return result;
          }

          if (v15 >= v22)
          {
            v27 = v22;
          }

          else
          {
            v27 = v15;
          }

          v10 = v5 >= v23;
          v28 = &v5[-v23];
          if (!v10 || v4 > v23 || v27 > v28)
          {
            goto LABEL_69;
          }

          a2[1] = v23;
          a2[2] = v27;
          if (a3)
          {
            goto LABEL_34;
          }

          return 0;
        }
      }
    }

LABEL_68:
    __break(0x5513u);
    goto LABEL_69;
  }

  v9 = *v6;
  v10 = v9 != 128 && v9 >= 0x1F;
  if (!v10)
  {
    return 3;
  }

  v8 = 0;
  result = 3;
  while (v7 >= 2)
  {
    v11 = v8;
    if (v8 >> 57)
    {
      break;
    }

    if (v6 == -1)
    {
      goto LABEL_68;
    }

    if (v6 >= v5 || v6 < v4)
    {
      goto LABEL_69;
    }

    v12 = (v6 + 1);
    --v7;
    v13 = *v6;
    v8 = *v6++ & 0x7F | (v8 << 7);
    if ((v13 & 0x80) == 0)
    {
      if (v11 >> 54)
      {
        return 3;
      }

      goto LABEL_20;
    }
  }

  return result;
}

uint64_t DERParseInteger(uint64_t a1, _DWORD *a2)
{
  v4 = 0xAAAAAAAAAAAAAAAALL;
  result = DERParseInteger64(a1, &v4);
  if (!result)
  {
    if (HIDWORD(v4))
    {
      return 7;
    }

    else
    {
      result = 0;
      *a2 = v4;
    }
  }

  return result;
}

uint64_t DERParseInteger64(uint64_t result, unint64_t *a2)
{
  v2 = *(result + 8);
  if (!v2)
  {
    return 3;
  }

  v3 = *result;
  if (**result < 0)
  {
    return 3;
  }

  if (**result)
  {
    if (v2 > 8)
    {
      return 7;
    }

    goto LABEL_7;
  }

  if (v2 != 1)
  {
    if (v3 + 1 >= &v3[v2])
    {
      __break(0x5519u);
      return result;
    }

    if (v3[1] < 0)
    {
      if (v2 > 9)
      {
        return 7;
      }

      goto LABEL_7;
    }

    return 3;
  }

LABEL_7:
  v4 = 0;
  do
  {
    v5 = *v3++;
    v4 = v5 | (v4 << 8);
    --v2;
  }

  while (v2);
  result = 0;
  *a2 = v4;
  return result;
}

uint64_t DERDecodeSeqNext(unint64_t *a1, unint64_t *a2)
{
  v10[0] = 0;
  v2 = *a1;
  v3 = a1[1];
  if (*a1 >= v3)
  {
    return 1;
  }

  v10[0] = *a1;
  v10[1] = v3 - v2;
  result = DERDecodeItemPartialBufferGetLength(v10, a2, 0);
  if (!result)
  {
    v8 = a2[1];
    v7 = a2[2];
    if (!__CFADD__(v8, v7))
    {
      v9 = v8 + v7;
      if (v9 <= a1[1] && *a1 <= v9)
      {
        result = 0;
        *a1 = v9;
        return result;
      }

      __break(0x5519u);
    }

    __break(0x5513u);
  }

  return result;
}

uint64_t DERParseSequenceToObject(uint64_t a1, unsigned int a2, uint64_t a3, unint64_t a4, size_t a5, size_t a6)
{
  memset(v12, 170, sizeof(v12));
  result = DERDecodeItemPartialBufferGetLength(a1, v12, 0);
  if (!result)
  {
    if (v12[0] == 0x2000000000000010)
    {
      return DERParseSequenceContentToObject(&v12[1], a2, a3, a4, a5, a6);
    }

    else
    {
      return 2;
    }
  }

  return result;
}

uint64_t DERParseSequenceContentToObject(unint64_t *a1, unsigned int a2, uint64_t a3, unint64_t a4, size_t a5, size_t a6)
{
  v35 = 0;
  if (a6)
  {
    if (a6 > a5)
    {
      goto LABEL_59;
    }

    bzero(a4, a6);
    if (a4 + a6 < a4)
    {
      goto LABEL_59;
    }
  }

  v11 = *a1;
  v12 = a1[1];
  if (__CFADD__(*a1, v12))
  {
    goto LABEL_58;
  }

  v13 = v11 + v12;
  if (v11 > v13)
  {
LABEL_59:
    __break(0x5519u);
  }

  v35 = *a1;
  v36 = v13;
  if (!a2)
  {
LABEL_48:
    if (v11 == v13)
    {
      return 0;
    }

    else
    {
      return 3;
    }
  }

  v14 = 0;
  while (1)
  {
    memset(v34, 170, sizeof(v34));
    v16 = v35;
    v15 = v36;
    result = DERDecodeSeqNext(&v35, v34);
    if (result)
    {
      if (result == 1)
      {
        if (a2 <= v14)
        {
          return 0;
        }

        else
        {
          v29 = (a3 + 24 * v14 + 16);
          v30 = a2 - v14;
          result = 0;
          while (1)
          {
            v31 = *v29;
            v29 += 12;
            if ((v31 & 1) == 0)
            {
              break;
            }

            if (!--v30)
            {
              return result;
            }
          }

          return 5;
        }
      }

      return result;
    }

    if (a2 <= v14)
    {
      return 2;
    }

    while (1)
    {
      if (24 * v14 > ~a3)
      {
        goto LABEL_58;
      }

      v18 = a3 + 24 * v14;
      v19 = *(v18 + 16);
      if ((v19 & 2) != 0 || v34[0] == *(v18 + 8))
      {
        break;
      }

      result = 2;
      if ((v19 & 1) != 0 && a2 > ++v14)
      {
        continue;
      }

      return result;
    }

    if ((v19 & 4) == 0)
    {
      v20 = *v18;
      v21 = *v18 + 16;
      if (v20 > 0xFFFFFFFFFFFFFFEFLL || v21 > a5)
      {
        return 7;
      }

      if (v20 > ~a4)
      {
        goto LABEL_58;
      }

      v23 = (a4 + v20);
      v24 = v23 + 16;
      if (v23 < a4 || v24 > a4 + a5 || v23 >= v24)
      {
        goto LABEL_59;
      }

      *v23 = *&v34[1];
      if ((v19 & 8) != 0)
      {
        break;
      }
    }

LABEL_35:
    if (a2 == ++v14)
    {
      if (!__CFADD__(v34[1], v34[2]))
      {
        v32 = a1[1];
        if (!__CFADD__(*a1, v32))
        {
          v11 = v34[1] + v34[2];
          v13 = *a1 + v32;
          goto LABEL_48;
        }
      }

LABEL_58:
      __break(0x5513u);
      goto LABEL_59;
    }

    if (a2 <= v14)
    {
      v11 = v35;
      v13 = v36;
      goto LABEL_48;
    }
  }

  if (v16 < v34[1])
  {
    v27 = *(v23 + 1);
    v28 = v27 + v34[1] - v16;
    if (__CFADD__(v27, v34[1] - v16))
    {
      __break(0x5500u);
      return result;
    }

    if (v15 < v16 || v28 > v15 - v16)
    {
      goto LABEL_59;
    }

    *v23 = v16;
    *(v23 + 1) = v28;
    goto LABEL_35;
  }

  if (v15 < v16 || *(v23 + 1) > v15 - v16)
  {
    goto LABEL_59;
  }

  *v23 = v16;
  return 3;
}

uint64_t amfi_check_dyld_policy_self(uint64_t a1, void *a2)
{
  if (!a2)
  {
    return 22;
  }

  *a2 = 0;
  v4[0] = 0xAAAAAAAAAAAAAAAALL;
  v4[1] = a1;
  v4[2] = v4;
  result = __sandbox_ms();
  if (result)
  {
    result = *__error();
  }

  *a2 = v4[0];
  return result;
}

uint64_t amfi_check_dyld_policy_for_pid(int a1, uint64_t a2, void *a3)
{
  if (!a3)
  {
    return 22;
  }

  *a3 = 0;
  v7 = -1431655766;
  v5[0] = 0xAAAAAAAAAAAAAAAALL;
  v5[1] = a2;
  v5[2] = v5;
  v6 = a1;
  result = __sandbox_ms();
  if (result)
  {
    result = *__error();
  }

  *a3 = v5[0];
  return result;
}

void cryptex_path_map_append_cold_1(uint64_t *a1, _OWORD *a2)
{
  *a1 = 0;
  a2[3] = 0u;
  a2[4] = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
  OUTLINED_FUNCTION_0();
  v3 = *a1;
  _os_crash_msg();
  __break(1u);
}

void cryptex_path_map_append_cold_2(uint64_t *a1, _OWORD *a2)
{
  *a1 = 0;
  a2[3] = 0u;
  a2[4] = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
  OUTLINED_FUNCTION_0();
  v3 = *a1;
  _os_crash_msg();
  __break(1u);
}

void __os_cleanup_fclose_cold_1(uint64_t *a1, _OWORD *a2)
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

void daemon_init_cold_1(void *a1, _OWORD *a2, unsigned int *a3)
{
  *a1 = 0;
  a2[3] = 0u;
  a2[4] = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  OUTLINED_FUNCTION_7();
  v4 = *a3;
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_11();
  __break(1u);
}

void daemon_init_cold_2(const char *a1)
{
  OUTLINED_FUNCTION_13(a1);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_7();
  v1 = __error();
  strerror(*v1);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_12();
  __break(1u);
}

void daemon_init_cold_4(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_4(a1, a2);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_11();
  __break(1u);
}

void daemon_init_cold_5(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_3(a1, a2);
  OUTLINED_FUNCTION_8();
  v2 = *__error();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_10();
  __break(1u);
}

void daemon_init_cold_6(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_3(a1, a2);
  OUTLINED_FUNCTION_8();
  v2 = *__error();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_10();
  __break(1u);
}

void daemon_init_cold_9(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_4(a1, a2);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_11();
  __break(1u);
}

void daemon_init_cold_10(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_4(a1, a2);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_11();
  __break(1u);
}

void daemon_init_cold_12(void *a1, _OWORD *a2)
{
  *a1 = 0;
  a2[3] = 0u;
  a2[4] = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  OUTLINED_FUNCTION_8();
  v2 = __error();
  strerror(*v2);
  _os_log_send_and_compose_impl();
  OUTLINED_FUNCTION_12();
  __break(1u);
}

void daemon_init_cold_13(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_3(a1, a2);
  OUTLINED_FUNCTION_8();
  v2 = *__error();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_10();
  __break(1u);
}

void daemon_post_multithreaded_hack_cold_1(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_4(a1, a2);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_11();
  __break(1u);
}

void daemon_post_multithreaded_hack_cold_2(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_3(a1, a2);
  OUTLINED_FUNCTION_8();
  v2 = *__error();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_10();
  __break(1u);
}

void _daemon_init_state_directory_cold_1(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_3(a1, a2);
  OUTLINED_FUNCTION_8();
  v2 = *__error();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_10();
  __break(1u);
}

void _daemon_init_state_directory_cold_2(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_4(a1, a2);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_11();
  __break(1u);
}

void _daemon_init_state_directory_cold_3(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_3(a1, a2);
  OUTLINED_FUNCTION_8();
  v2 = *__error();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_10();
  __break(1u);
}

void ___daemon_setup_connection_mux_block_invoke_cold_2(void *a1, NSObject *a2)
{
  v3 = 136315138;
  string = xpc_dictionary_get_string(a1, _xpc_error_key_description);
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Received error from client: %s", &v3, 0xCu);
}

void view_iterate_resource_cold_2(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_3(a1, a2);
  OUTLINED_FUNCTION_8();
  v2 = *__error();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_10();
  __break(1u);
}

void view_iterate_resource_cold_3(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_3(a1, a2);
  OUTLINED_FUNCTION_8();
  v2 = *__error();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_10();
  __break(1u);
}

void _CFCreateAssertImpl_cold_1(uint64_t *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_1_0(a1, a2);
  os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
  OUTLINED_FUNCTION_2_0();
  v3 = *a1;
  _os_crash_msg();
  __break(1u);
}

void _CFNumberGetUInt32_cold_1(uint64_t *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_1_0(a1, a2);
  os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
  OUTLINED_FUNCTION_2_0();
  v3 = *a1;
  _os_crash_msg();
  __break(1u);
}

void __os_cleanup_close_cold_1(uint64_t *a1, _OWORD *a2)
{
  *a1 = 0;
  a2[3] = 0u;
  a2[4] = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
  v4 = *__error();
  _os_log_send_and_compose_impl();
  v3 = *a1;
  _os_crash_msg();
  __break(1u);
}

void session_list_foreach_cold_1(uint8_t *a1, void *a2, void *a3, NSObject *a4)
{
  v7 = [a2 name];
  *a1 = 138412290;
  *a3 = v7;
  _os_log_debug_impl(&_mh_execute_header, a4, OS_LOG_TYPE_DEBUG, "session_list_foreach: passing session %@", a1, 0xCu);
}

void apfs_volume_copy_formatter_cold_1(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_4(a1, a2);
  os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
  OUTLINED_FUNCTION_2_0();
  v3 = *v2;
  _os_crash_msg();
  __break(1u);
}

void _protex_init_cold_1(const char *a1, uint64_t *a2, _OWORD *a3)
{
  strlen(a1);
  *a2 = 0;
  *a3 = 0u;
  a3[1] = 0u;
  a3[2] = 0u;
  a3[3] = 0u;
  a3[4] = 0u;
  os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
  v5 = __error();
  strerror(*v5);
  _os_log_send_and_compose_impl();
  v6 = *a2;
  _os_crash_msg();
  __break(1u);
}

void _protex_stage_continue_cold_2(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_3(a1, a2);
  OUTLINED_FUNCTION_8();
  v2 = *__error();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_10();
  __break(1u);
}

void _cryptex_base_alloc_cold_1()
{
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_2_1(v0, v1);
  OUTLINED_FUNCTION_7();
  v2 = __error();
  strerror(*v2);
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_12();
  __break(1u);
}

void _codex_alloc_cold_1()
{
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_2_1(v0, v1);
  OUTLINED_FUNCTION_7();
  v2 = __error();
  strerror(*v2);
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_12();
  __break(1u);
}

void _daemon_alloc_cold_1()
{
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_2_1(v0, v1);
  OUTLINED_FUNCTION_7();
  v2 = __error();
  strerror(*v2);
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_12();
  __break(1u);
}

void _proc_alloc_cold_1()
{
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_2_1(v0, v1);
  OUTLINED_FUNCTION_7();
  v2 = __error();
  strerror(*v2);
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_12();
  __break(1u);
}

void _protex_alloc_cold_1()
{
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_2_1(v0, v1);
  OUTLINED_FUNCTION_7();
  v2 = __error();
  strerror(*v2);
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_12();
  __break(1u);
}

void _quire_alloc_cold_1()
{
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_2_1(v0, v1);
  OUTLINED_FUNCTION_7();
  v2 = __error();
  strerror(*v2);
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_12();
  __break(1u);
}

void _resource_alloc_cold_1()
{
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_2_1(v0, v1);
  OUTLINED_FUNCTION_7();
  v2 = __error();
  strerror(*v2);
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_12();
  __break(1u);
}

void _view_alloc_cold_1()
{
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_2_1(v0, v1);
  OUTLINED_FUNCTION_7();
  v2 = __error();
  strerror(*v2);
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_12();
  __break(1u);
}

void proc_resolve_cold_1(const char *a1, uint64_t *a2, _OWORD *a3)
{
  strlen(a1);
  *a2 = 0;
  *a3 = 0u;
  a3[1] = 0u;
  a3[2] = 0u;
  a3[3] = 0u;
  a3[4] = 0u;
  os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
  v5 = __error();
  strerror(*v5);
  OUTLINED_FUNCTION_1_2();
  _os_log_send_and_compose_impl();
  v6 = *a2;
  _os_crash_msg();
  __break(1u);
}

void proc_resolve_cold_2(uint64_t *a1, _OWORD *a2)
{
  *a1 = 0;
  a2[3] = 0u;
  a2[4] = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
  v3 = __error();
  strerror(*v3);
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_0_2();
  v4 = *a1;
  _os_crash_msg();
  __break(1u);
}

void _csblob_copy_cold_1(uint64_t *a1, _OWORD *a2)
{
  *a1 = 0;
  a2[3] = 0u;
  a2[4] = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
  v3 = __error();
  strerror(*v3);
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_0_2();
  v4 = *a1;
  _os_crash_msg();
  __break(1u);
}

void sm_service_create_cold_1(uint64_t *a1, _OWORD *a2)
{
  *a1 = 0;
  a2[3] = 0u;
  a2[4] = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
  v3 = __error();
  strerror(*v3);
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_0_2();
  v4 = *a1;
  _os_crash_msg();
  __break(1u);
}

void sm_pending_service_create_cold_1(uint64_t *a1, _OWORD *a2)
{
  *a1 = 0;
  a2[3] = 0u;
  a2[4] = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
  v3 = __error();
  strerror(*v3);
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_0_2();
  v4 = *a1;
  _os_crash_msg();
  __break(1u);
}

void __sm_monitor_service_block_invoke_27_cold_2(void *a1, void *a2)
{
  v3 = 136315394;
  v4 = [a1 UTF8String];
  v5 = 2048;
  v6 = [a2 state];
  _os_log_debug_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "Cryptex Session process (uuid %s) monitor event %ld", &v3, 0x16u);
}

void _codex_dealloc_cold_1(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_4(a1, a2);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_11();
  __break(1u);
}

void _codex_init_cold_2(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_4(a1, a2);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_11();
  __break(1u);
}

void _codex_unset_initial_keepalive_cold_2(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_3(a1, a2);
  OUTLINED_FUNCTION_8();
  v2 = *__error();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_10();
  __break(1u);
}

void _codex_insert_installed_cold_1(const char *a1, uint64_t *a2, _OWORD *a3)
{
  strlen(a1);
  *a2 = 0;
  *a3 = 0u;
  a3[1] = 0u;
  a3[2] = 0u;
  a3[3] = 0u;
  a3[4] = 0u;
  OUTLINED_FUNCTION_7();
  v5 = __error();
  strerror(*v5);
  _os_log_send_and_compose_impl();
  v6 = *a2;
  _os_crash_msg();
  __break(1u);
}

void _codex_insert_installed_cold_2(uint64_t *a1, _OWORD *a2)
{
  *a1 = 0;
  a2[3] = 0u;
  a2[4] = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  OUTLINED_FUNCTION_8();
  v3 = __error();
  strerror(*v3);
  _os_log_send_and_compose_impl();
  v4 = *a1;
  _os_crash_msg();
  __break(1u);
}

void ___codex_unbootstrap_continue2_block_invoke_cold_1(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_4(a1, a2);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_11();
  __break(1u);
}

void _codex_lockdown_continue2_cold_2(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_4(a1, a2);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_11();
  __break(1u);
}

void hdi_attach_cold_1(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_3_0(a1, a2);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_11();
  __break(1u);
}

void hdi_attach_cold_2(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_4(a1, a2);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_11();
  __break(1u);
}

void hdi_find_attached_cold_3(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_4(a1, a2);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_11();
  __break(1u);
}

void _hdi_copy_device_nodes_cold_1(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_4(a1, a2);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_11();
  __break(1u);
}

void hdi_mount_cold_1(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_3_0(a1, a2);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_11();
  __break(1u);
}

void hdi_mount_cold_4(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_3(a1, a2);
  OUTLINED_FUNCTION_8();
  v2 = *__error();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_10();
  __break(1u);
}

void hdi_mount_cold_5(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_3(a1, a2);
  OUTLINED_FUNCTION_8();
  v2 = *__error();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_10();
  __break(1u);
}

void hdi_mount_cold_7(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_3(a1, a2);
  OUTLINED_FUNCTION_8();
  v2 = *__error();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_10();
  __break(1u);
}

void hdi_copy_mounted_cold_1(uint64_t *a1, _OWORD *a2)
{
  *a1 = 0;
  a2[3] = 0u;
  a2[4] = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  OUTLINED_FUNCTION_8();
  v3 = __error();
  strerror(*v3);
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_0_2();
  v4 = *a1;
  _os_crash_msg();
  __break(1u);
}

void hdi_copy_mounted_cold_2(uint64_t *a1, _OWORD *a2)
{
  *a1 = 0;
  a2[3] = 0u;
  a2[4] = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  OUTLINED_FUNCTION_8();
  v3 = __error();
  strerror(*v3);
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_0_2();
  v4 = *a1;
  _os_crash_msg();
  __break(1u);
}

void mount_sub_handle_request_cold_1(uint64_t *a1, _OWORD *a2)
{
  *a1 = 0;
  a2[3] = 0u;
  a2[4] = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
  v3 = *__error();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0_4();
  v4 = *a1;
  _os_crash_msg();
  __break(1u);
}

void mount_sub_handle_request_cold_6(uint64_t *a1, _OWORD *a2)
{
  *a1 = 0;
  a2[3] = 0u;
  a2[4] = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
  v3 = *__error();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0_4();
  v4 = *a1;
  _os_crash_msg();
  __break(1u);
}

void __os_cleanup_close_cold_1_0(uint64_t *a1, _OWORD *a2)
{
  *a1 = 0;
  a2[3] = 0u;
  a2[4] = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
  v3 = *__error();
  OUTLINED_FUNCTION_5();
  _os_log_send_and_compose_impl();
  v4 = *a1;
  _os_crash_msg();
  __break(1u);
}

void sub_log_invoke_cold_1(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_3(a1, a2);
  os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
  v3 = __error();
  strerror(*v3);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_0_0();
  v4 = *v2;
  _os_crash_msg();
  __break(1u);
}

void sub_get_subsystem_from_msg_cold_1(uint64_t a1)
{
  v1 = 136315138;
  v2 = a1;
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Subsystem unknown %s", &v1, 0xCu);
}

void _amfi_load_trust_cache_cold_1(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_3_0(a1, a2);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_11();
  __break(1u);
}

void _amfi_load_trust_cache_cold_3(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_3_0(a1, a2);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_11();
  __break(1u);
}

void _amfi_load_trust_cache_cold_4(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_3_0(a1, a2);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_11();
  __break(1u);
}

void _quire_dealloc_cold_1(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_3_0(a1, a2);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_11();
  __break(1u);
}

void quire_attr_populate_dependencies_cold_1(void *a1, _OWORD *a2, const _xpc_type_s *a3)
{
  OUTLINED_FUNCTION_3_0(a1, a2);
  OUTLINED_FUNCTION_7();
  xpc_type_get_name(a3);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_11();
  __break(1u);
}

void quire_attr_populate_dependencies_cold_2()
{
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_13(v0);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_7();
  v1 = __error();
  strerror(*v1);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_12();
  __break(1u);
}

void quire_attr_populate_dependencies_cold_4(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_3(a1, a2);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_10();
  __break(1u);
}

void quire_attr_populate_dependencies_cold_5(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_3(a1, a2);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_10();
  __break(1u);
}

void quire_attr_enforce_install_limits_cold_1(void *a1, _OWORD *a2, const _xpc_type_s *a3)
{
  OUTLINED_FUNCTION_3_0(a1, a2);
  OUTLINED_FUNCTION_7();
  xpc_type_get_name(a3);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_11();
  __break(1u);
}

void quire_attr_enforce_install_limits_cold_2(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_3(a1, a2);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_10();
  __break(1u);
}

void quire_create_cold_1()
{
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_9_0(v0, v1);
  OUTLINED_FUNCTION_8();
  v2 = __error();
  strerror(*v2);
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_12();
  __break(1u);
}

void quire_bootstrap_cold_1(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_3_0(a1, a2);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_11();
  __break(1u);
}

void quire_bootstrap_cold_2(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_9_0(a1, a2);
  OUTLINED_FUNCTION_8();
  v2 = __error();
  strerror(*v2);
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_12();
  __break(1u);
}

void _quire_unmount_continue_cold_1(void *a1, _OWORD *a2, uint64_t a3)
{
  OUTLINED_FUNCTION_3_0(a1, a2);
  OUTLINED_FUNCTION_7();
  v4 = *(a3 + 208);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_11();
  __break(1u);
}

void _quire_pending_services_submit_cold_2(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_9_0(a1, a2);
  OUTLINED_FUNCTION_8();
  v2 = __error();
  strerror(*v2);
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_12();
  __break(1u);
}

void _quire_bootstrap_trust_cache_cold_1(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_3_0(a1, a2);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_11();
  __break(1u);
}

void _quire_bootstrap_continue2_cold_1(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_3(a1, a2);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_10();
  __break(1u);
}

void _quire_read_agent_cold_1(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_9_0(a1, a2);
  OUTLINED_FUNCTION_8();
  v2 = __error();
  strerror(*v2);
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_12();
  __break(1u);
}

void getLaunchdDomainForUser_cold_1()
{
  v0 = 136315138;
  v1 = "UNK";
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Unexpected domain type %s", &v0, 0xCu);
}

void launchd_session_uncork_cold_1(int a1)
{
  v1[0] = 67109120;
  v1[1] = a1;
  _os_log_fault_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_FAULT, "Failed to find targetDomain %d", v1, 8u);
}

void launchd_session_uncork_cold_2(void *a1)
{
  v1 = [a1 localizedDescription];
  v2 = 138412290;
  v3 = v1;
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Unpending failed: %@", &v2, 0xCu);
}

uint64_t DERImg4Decode(void *a1, unint64_t a2)
{
  result = 6;
  if (a1)
  {
    if (a2)
    {
      v6 = 0;
      v7 = 0;
      v8 = 0;
      result = DERDecodeItem(a1, &v6);
      if (!result)
      {
        if (v6 == 0x2000000000000010)
        {
          v5 = a1[1];
          if (__CFADD__(*a1, v5))
          {
            return 7;
          }

          else
          {
            result = 7;
            if (!__CFADD__(v7, v8) && *a1 + v5 == v7 + v8)
            {
              result = DERParseSequenceContentToObject(&v7, 4u, &DERImg4ItemSpecs, a2, 0x40uLL, 0);
              if (!result)
              {
                return 2 * (DERImg4DecodeTagCompare(a2, 0x494D4734u) != 0);
              }
            }
          }
        }

        else
        {
          return 2;
        }
      }
    }
  }

  return result;
}

uint64_t DERImg4DecodePayloadCompression(uint64_t a1, uint64_t a2)
{
  v11 = 2;
  result = 6;
  if (a1)
  {
    if (a2)
    {
      OUTLINED_FUNCTION_0_5();
      result = DERParseSequenceContentToObject(v5, v6, v7, v8, v9, v10);
      if (!result)
      {
        result = DERParseInteger(a2, &v11);
        if (!result)
        {
          if (v11 <= 1)
          {
            return 0;
          }

          else
          {
            return 6;
          }
        }
      }
    }
  }

  return result;
}

uint64_t DERImg4DecodePayloadWithProperties(uint64_t a1, unint64_t a2)
{
  result = 6;
  if (a1)
  {
    if (a2)
    {
      result = DERParseSequenceToObject(a1, 7u, &DERImg4PayloadWithPropertiesItemSpecs, a2, 0xA0uLL, 0);
      if (!result)
      {
        if (DERImg4DecodeTagCompare(a2, 0x494D3450u))
        {
          return 2;
        }

        else if (!*(a2 + 80) || (OUTLINED_FUNCTION_1_4(), result = DERImg4DecodePayloadCompression(v7, v8), !result))
        {
          v6 = *(a2 + 96);
          v5 = a2 + 96;
          if (!v6)
          {
            return 0;
          }

          OUTLINED_FUNCTION_1_4();
          result = DERImg4DecodePayloadProperties(v5, v9);
          if (!result)
          {
            return 0;
          }
        }
      }
    }
  }

  return result;
}

uint64_t DERImg4DecodePayloadProperties(uint64_t result, _OWORD *a2)
{
  if (result)
  {
    if (!a2)
    {
      return 6;
    }

    *a2 = 0u;
    a2[1] = 0u;
    if (*result && *(result + 8))
    {
      OUTLINED_FUNCTION_0_5();
      result = DERParseSequenceToObject(v3, v4, v5, v6, v7, v8);
      if (result)
      {
        return result;
      }

      if (DERImg4DecodeTagCompare(a2, 0x50415950u))
      {
        return 2;
      }
    }

    return 0;
  }

  return result;
}

uint64_t DERImg4DecodePayload(uint64_t a1, unint64_t a2)
{
  result = 6;
  if (a1 && a2)
  {
    bzero(v11, 0xA0uLL);
    result = DERImg4DecodePayloadWithProperties(a1, v11);
    if (result)
    {
      result = DERParseSequenceToObject(a1, 6u, &DERImg4PayloadItemSpecs, a2, 0x90uLL, 0);
      if (!result)
      {
        if (DERImg4DecodeTagCompare(a2, 0x494D3450u))
        {
          return 2;
        }

        else
        {
          v6 = *(a2 + 80);
          v5 = a2 + 80;
          if (!v6)
          {
            return 0;
          }

          OUTLINED_FUNCTION_1_4();
          result = DERImg4DecodePayloadCompression(v5, v10);
          if (!result)
          {
            return 0;
          }
        }
      }
    }

    else
    {
      v7 = v11[1];
      *a2 = v11[0];
      *(a2 + 16) = v7;
      v8 = v11[3];
      *(a2 + 32) = v11[2];
      *(a2 + 48) = v8;
      v9 = v11[5];
      *(a2 + 64) = v11[4];
      *(a2 + 80) = v9;
    }
  }

  return result;
}

uint64_t DERImg4DecodeRestoreInfo(uint64_t result, _OWORD *a2)
{
  if (result)
  {
    if (!a2)
    {
      return 6;
    }

    *a2 = 0u;
    a2[1] = 0u;
    if (*result && *(result + 8))
    {
      OUTLINED_FUNCTION_0_5();
      result = DERParseSequenceToObject(v3, v4, v5, v6, v7, v8);
      if (result)
      {
        return result;
      }

      if (DERImg4DecodeTagCompare(a2, 0x494D3452u))
      {
        return 2;
      }
    }

    return 0;
  }

  return result;
}