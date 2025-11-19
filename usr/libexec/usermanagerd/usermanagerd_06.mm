uint64_t sub_100070858(const __CFDictionary *a1, void *a2)
{
  v15 = 0;
  result = CFDictionaryContainsKey(a1, kUMUserSessionVolumeDeviceNodeKey);
  if (result)
  {
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    *__s2 = 0u;
    v21 = 0u;
    sub_1000795D4(a1, kUMUserSessionVolumeDeviceNodeKey, __s2, 256);
    if (sub_10006F1C8(a1, __s2))
    {
      if (qword_1000EB468 != -1)
      {
        sub_100097F24();
      }

      v5 = qword_1000EB460;
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v6 = sub_1000011A8(1);
        if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
        {
          v7 = v6;
        }

        else
        {
          v7 = v6 & 0xFFFFFFFE;
        }

        if (v7)
        {
          v16 = 136315394;
          v17 = "checkAPFSVolumeMounted";
          v18 = 2080;
          v19 = __s2;
          v8 = _os_log_send_and_compose_impl();
          v9 = v8;
          if (v8)
          {
            sub_100002A8C(v8);
          }
        }

        else
        {
          v9 = 0;
        }

        free(v9);
      }
    }

    else
    {
      v10 = getmntinfo(&v15, 2);
      if (!v10)
      {
        return 255;
      }

      v11 = v10 + 1;
      f_mntfromname = v15[v10 - 1].f_mntfromname;
      while (--v11 >= 1)
      {
        v13 = f_mntfromname - 2168;
        v14 = strstr(f_mntfromname, __s2);
        f_mntfromname = v13;
        if (v14)
        {
          if (a2)
          {
            *a2 = *(v13 + 138);
          }

          return 1;
        }
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_100070A64(const __CFString *a1, uid_t a2, gid_t a3)
{
  if (qword_1000EB468 != -1)
  {
    sub_100097F4C();
  }

  v6 = qword_1000EB460;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buffer = 0;
    v7 = sub_1000011A8(1);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = v7;
    }

    else
    {
      v8 = v7 & 0xFFFFFFFE;
    }

    if (v8)
    {
      v9 = _os_log_send_and_compose_impl();
      v10 = v9;
      if (v9)
      {
        sub_100002A8C(v9);
      }
    }

    else
    {
      v10 = 0;
    }

    free(v10);
  }

  bzero(buffer, 0x400uLL);
  result = CFStringGetCString(a1, buffer, 1024, 0x8000100u);
  if (result)
  {
    sub_100070BD4();
    sub_10001AC18(buffer, a2, a3);
    return 1;
  }

  return result;
}

uint64_t sub_100070BD4()
{
  bzero(v8, 0x400uLL);
  __strlcpy_chk();
  __strlcat_chk();
  if (sub_10002D62C(v8) == 1)
  {
    if (qword_1000EB468 != -1)
    {
      sub_100097F24();
    }

    v0 = qword_1000EB460;
    if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
    {
      v1 = sub_1000011A8(1);
      if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
      {
        v2 = v1;
      }

      else
      {
        v2 = v1 & 0xFFFFFFFE;
      }

      if (v2)
      {
LABEL_17:
        v5 = _os_log_send_and_compose_impl();
        v6 = v5;
        if (v5)
        {
          sub_100002A8C(v5);
        }

        goto LABEL_20;
      }

LABEL_19:
      v6 = 0;
LABEL_20:
      free(v6);
    }
  }

  else
  {
    if (qword_1000EB468 != -1)
    {
      sub_100097F24();
    }

    v0 = qword_1000EB460;
    if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
    {
      v3 = sub_1000011A8(1);
      if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
      {
        v4 = v3;
      }

      else
      {
        v4 = v3 & 0xFFFFFFFE;
      }

      if (v4)
      {
        goto LABEL_17;
      }

      goto LABEL_19;
    }
  }

  return 1;
}

uint64_t sub_100070DBC(const __CFDictionary *a1, const __CFString *a2, _DWORD *a3, int a4)
{
  sub_1000023E8(a1, kUMUserSessionIDKey);
  bzero(buffer, 0x400uLL);
  if (a2 && (v8 = CFGetTypeID(a2), v8 == CFStringGetTypeID()))
  {
    CFStringGetCString(a2, buffer, 1024, 0x8000100u);
  }

  else
  {
    sub_1000795D4(a1, kUMUserSessionHomeDirKey, buffer, 1024);
  }

  if (qword_1000EB468 != -1)
  {
    sub_100097F24();
  }

  v9 = qword_1000EB460;
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = sub_1000011A8(1);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v11 = v10;
    }

    else
    {
      v11 = v10 & 0xFFFFFFFE;
    }

    if (v11)
    {
      v12 = _os_log_send_and_compose_impl();
      v13 = v12;
      if (v12)
      {
        sub_100002A8C(v12);
      }
    }

    else
    {
      v13 = 0;
    }

    free(v13);
  }

  v14 = sub_100054EFC(buffer, a4);
  if (v14)
  {
    v15 = v14;
    if (qword_1000EB468 != -1)
    {
      sub_100097F24();
    }

    v16 = qword_1000EB460;
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = sub_1000011A8(1);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v18 = v17;
      }

      else
      {
        v18 = v17 & 0xFFFFFFFE;
      }

      if (v18)
      {
        v19 = _os_log_send_and_compose_impl();
        v20 = v19;
        if (v19)
        {
          sub_100002A8C(v19);
        }
      }

      else
      {
        v20 = 0;
      }

      free(v20);
    }

    result = 0;
    if (a3)
    {
      *a3 = v15;
    }
  }

  else
  {
    if (qword_1000EB468 != -1)
    {
      sub_100097F24();
    }

    v21 = qword_1000EB460;
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v22 = sub_1000011A8(1);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        v23 = v22;
      }

      else
      {
        v23 = v22 & 0xFFFFFFFE;
      }

      if (v23)
      {
        v24 = _os_log_send_and_compose_impl();
        v25 = v24;
        if (v24)
        {
          sub_100002A8C(v24);
        }
      }

      else
      {
        v25 = 0;
      }

      free(v25);
    }

    if (CFDictionaryContainsKey(a1, kUMUserSessionVolumeMountedKey))
    {
      CFDictionaryReplaceValue(a1, kUMUserSessionVolumeMountedKey, kCFBooleanFalse);
    }

    else
    {
      CFDictionarySetValue(a1, kUMUserSessionVolumeMountedKey, kCFBooleanFalse);
    }

    return 1;
  }

  return result;
}

uint64_t sub_100071178()
{
  if (sub_10005489C(v14, 256))
  {
    VEKState = APFSVolumeGetVEKState();
    if (VEKState == 22)
    {
      if (qword_1000EB468 != -1)
      {
        sub_100097F24();
      }

      v2 = qword_1000EB460;
      if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
      {
        v3 = sub_1000011A8(1);
        if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
        {
          v4 = v3;
        }

        else
        {
          v4 = v3 & 0xFFFFFFFE;
        }

        if (v4)
        {
          v5 = _os_log_send_and_compose_impl();
          v6 = v5;
          if (v5)
          {
            sub_100002A8C(v5);
          }
        }

        else
        {
          v6 = 0;
        }

        free(v6);
      }

      v1 = 0;
      goto LABEL_38;
    }

    if (VEKState)
    {
      if (qword_1000EB468 != -1)
      {
        sub_100097F24();
      }

      v2 = qword_1000EB460;
      if (!os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_37;
      }

      v7 = sub_1000011A8(1);
      if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
      {
        v8 = v7;
      }

      else
      {
        v8 = v7 & 0xFFFFFFFE;
      }

      if (v8)
      {
LABEL_30:
        v11 = _os_log_send_and_compose_impl();
        v12 = v11;
        if (v11)
        {
          sub_100002A8C(v11);
        }

        goto LABEL_36;
      }
    }

    else
    {
      if (qword_1000EB468 != -1)
      {
        sub_100097F24();
      }

      v2 = qword_1000EB460;
      if (!os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_37;
      }

      v9 = sub_1000011A8(1);
      if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
      {
        v10 = v9;
      }

      else
      {
        v10 = v9 & 0xFFFFFFFE;
      }

      if (v10)
      {
        goto LABEL_30;
      }
    }

    v12 = 0;
LABEL_36:
    free(v12);
LABEL_37:
    v1 = 1;
LABEL_38:

    return v1;
  }

  return 0;
}

uint64_t sub_1000714B8(const __CFString *a1, uint64_t a2, int a3, int *a4)
{
  if (qword_1000EB468 != -1)
  {
    sub_100097F4C();
  }

  memset(uu, 0, sizeof(uu));
  v7 = qword_1000EB460;
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buffer = 0;
    v8 = sub_1000011A8(1);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = v8;
    }

    else
    {
      v9 = v8 & 0xFFFFFFFE;
    }

    if (v9)
    {
      LOWORD(v52[0]) = 0;
      v10 = _os_log_send_and_compose_impl();
      v11 = v10;
      if (v10)
      {
        sub_100002A8C(v10);
      }
    }

    else
    {
      v11 = 0;
    }

    free(v11);
  }

  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  *buffer = 0u;
  v55 = 0u;
  if (!CFStringGetCString(a1, buffer, 256, 0x8000100u))
  {
    if (a4)
    {
      *a4 = 22;
    }

    if (qword_1000EB468 != -1)
    {
      sub_100097F24();
    }

    v17 = qword_1000EB460;
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_108;
    }

    *&v52[0] = 0;
    v18 = sub_1000011A8(1);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v19 = v18;
    }

    else
    {
      v19 = v18 & 0xFFFFFFFE;
    }

    if (!v19)
    {
      goto LABEL_106;
    }

LABEL_79:
    v38 = _os_log_send_and_compose_impl();
    if (!v38)
    {
LABEL_107:
      free(v38);
LABEL_108:

      return 0;
    }

LABEL_80:
    sub_100002A8C(v38);
    goto LABEL_107;
  }

  if (qword_1000EB468 != -1)
  {
    sub_100097F24();
  }

  v12 = qword_1000EB460;
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = sub_1000011A8(1);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v14 = v13;
    }

    else
    {
      v14 = v13 & 0xFFFFFFFE;
    }

    if (v14)
    {
      LODWORD(v52[0]) = 136315138;
      *(v52 + 4) = buffer;
      v15 = _os_log_send_and_compose_impl();
      v16 = v15;
      if (v15)
      {
        sub_100002A8C(v15);
      }
    }

    else
    {
      v16 = 0;
    }

    free(v16);
  }

  if (uuid_parse(buffer, uu))
  {
    if (qword_1000EB468 != -1)
    {
      sub_100097F24();
    }

    v20 = qword_1000EB460;
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *&v52[0] = 0;
      v21 = sub_1000011A8(1);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v22 = v21;
      }

      else
      {
        v22 = v21 & 0xFFFFFFFE;
      }

      if (v22)
      {
        v23 = _os_log_send_and_compose_impl();
        v24 = v23;
        if (v23)
        {
          sub_100002A8C(v23);
        }
      }

      else
      {
        v24 = 0;
      }

      free(v24);
    }

    if (a4)
    {
      result = 0;
      *a4 = 22;
      return result;
    }

    return 0;
  }

  if (qword_1000EB468 != -1)
  {
    sub_100097F24();
  }

  v25 = qword_1000EB460;
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    *&v52[0] = 0;
    v26 = sub_1000011A8(1);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      v27 = v26;
    }

    else
    {
      v27 = v26 & 0xFFFFFFFE;
    }

    if (v27)
    {
      v28 = _os_log_send_and_compose_impl();
      v29 = v28;
      if (v28)
      {
        sub_100002A8C(v28);
      }
    }

    else
    {
      v29 = 0;
    }

    free(v29);
  }

  memset(v52, 0, sizeof(v52));
  if (!sub_10005489C(v52, 256))
  {
    if (a4)
    {
      *a4 = 2;
    }

    if (qword_1000EB468 != -1)
    {
      sub_100097F24();
    }

    v17 = qword_1000EB460;
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_108;
    }

    v36 = sub_1000011A8(1);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v37 = v36;
    }

    else
    {
      v37 = v36 & 0xFFFFFFFE;
    }

    if (!v37)
    {
      goto LABEL_106;
    }

    goto LABEL_79;
  }

  if (a3)
  {
    if (qword_1000EB468 != -1)
    {
      sub_100097F24();
    }

    v31 = qword_1000EB460;
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      v32 = sub_1000011A8(1);
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        v33 = v32;
      }

      else
      {
        v33 = v32 & 0xFFFFFFFE;
      }

      if (v33)
      {
        v34 = _os_log_send_and_compose_impl();
        v35 = v34;
        if (v34)
        {
          sub_100002A8C(v34);
        }
      }

      else
      {
        v35 = 0;
      }

      free(v35);
    }
  }

  else
  {
    if (qword_1000EB468 != -1)
    {
      sub_100097F24();
    }

    v31 = qword_1000EB460;
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      v39 = sub_1000011A8(1);
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        v40 = v39;
      }

      else
      {
        v40 = v39 & 0xFFFFFFFE;
      }

      if (v40)
      {
        v41 = _os_log_send_and_compose_impl();
        v42 = v41;
        if (v41)
        {
          sub_100002A8C(v41);
        }
      }

      else
      {
        v42 = 0;
      }

      free(v42);
    }
  }

  v43 = APFSVolumeEnableUserProtectionWithOptions();
  if (v43)
  {
    v44 = v43;
    if (a4)
    {
      *a4 = v43;
    }

    if (qword_1000EB468 != -1)
    {
      sub_100097F24();
    }

    v17 = qword_1000EB460;
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_108;
    }

    v45 = sub_1000011A8(1);
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v45 &= ~1u;
    }

    if (v45)
    {
      v46 = v17;
      strerror(v44);
      v38 = _os_log_send_and_compose_impl();

      if (!v38)
      {
        goto LABEL_107;
      }

      goto LABEL_80;
    }

LABEL_106:
    v38 = 0;
    goto LABEL_107;
  }

  if (qword_1000EB468 != -1)
  {
    sub_100097F24();
  }

  v47 = qword_1000EB460;
  if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
  {
    v48 = sub_1000011A8(1);
    if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
    {
      v49 = v48;
    }

    else
    {
      v49 = v48 & 0xFFFFFFFE;
    }

    if (v49)
    {
      v50 = _os_log_send_and_compose_impl();
      v51 = v50;
      if (v50)
      {
        sub_100002A8C(v50);
      }
    }

    else
    {
      v51 = 0;
    }

    free(v51);
  }

  return 1;
}

uint64_t sub_100071D58(const char *a1, int a2, _BYTE *a3, int *a4)
{
  v41 = 0;
  v40 = 1;
  if (sub_100053A00(a1, v45, 256, a2, &v40))
  {
    if (v40 == 1)
    {
      if (qword_1000EB468 != -1)
      {
        sub_100097F24();
      }

      v8 = qword_1000EB460;
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = sub_1000011A8(1);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          v10 = v9;
        }

        else
        {
          v10 = v9 & 0xFFFFFFFE;
        }

        if (v10)
        {
          *v42 = 136315394;
          *&v42[4] = a1;
          v43 = 2080;
          v44 = v45;
          v11 = _os_log_send_and_compose_impl();
          v12 = v11;
          if (v11)
          {
            sub_100002A8C(v11);
          }
        }

        else
        {
          v12 = 0;
        }

        free(v12);
      }

      v23 = APFSVolumeNeedsCryptoMigration();
      if (v23)
      {
        v24 = v23;
        if (a4)
        {
          *a4 = v23;
        }

        if (qword_1000EB468 != -1)
        {
          sub_100097F24();
        }

        v18 = qword_1000EB460;
        if (!os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_71;
        }

        v25 = sub_1000011A8(1);
        if (!os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          v25 &= ~1u;
        }

        if (v25)
        {
          v26 = v18;
          v27 = strerror(v24);
          *v42 = 136315138;
          *&v42[4] = v27;
          v21 = _os_log_send_and_compose_impl();

          if (!v21)
          {
LABEL_70:
            free(v21);
            goto LABEL_71;
          }

LABEL_48:
          sub_100002A8C(v21);
          goto LABEL_70;
        }

LABEL_69:
        v21 = 0;
        goto LABEL_70;
      }

      if (v41 == 1)
      {
        if (qword_1000EB468 != -1)
        {
          sub_100097F24();
        }

        v18 = qword_1000EB460;
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          *v42 = 0;
          v28 = sub_1000011A8(1);
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            v29 = v28;
          }

          else
          {
            v29 = v28 & 0xFFFFFFFE;
          }

          if (v29)
          {
            v30 = _os_log_send_and_compose_impl();
            v31 = v30;
            if (v30)
            {
              sub_100002A8C(v30);
            }
          }

          else
          {
            v31 = 0;
          }

          free(v31);
        }

        v22 = 1;
        goto LABEL_72;
      }

      if (a4)
      {
        *a4 = 0;
      }

      if (qword_1000EB468 != -1)
      {
        sub_100097F24();
      }

      v18 = qword_1000EB460;
      if (!os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
LABEL_71:
        v22 = 0;
LABEL_72:

        if (a3)
        {
          *a3 = v40;
        }

        return v22;
      }

      v32 = sub_1000011A8(1);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v33 = v32;
      }

      else
      {
        v33 = v32 & 0xFFFFFFFE;
      }

      if (!v33)
      {
        goto LABEL_69;
      }

      *v42 = 136315138;
      *&v42[4] = a1;
    }

    else
    {
      if (qword_1000EB468 != -1)
      {
        sub_100097F24();
      }

      v18 = qword_1000EB460;
      if (!os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_71;
      }

      *v42 = 0;
      v19 = sub_1000011A8(1);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v20 = v19;
      }

      else
      {
        v20 = v19 & 0xFFFFFFFE;
      }

      if (!v20)
      {
        goto LABEL_69;
      }
    }

    v21 = _os_log_send_and_compose_impl();
    if (!v21)
    {
      goto LABEL_70;
    }

    goto LABEL_48;
  }

  if (a4)
  {
    *a4 = 2;
  }

  if (a2 != 2)
  {
    if (qword_1000EB468 != -1)
    {
      goto LABEL_89;
    }

    while (1)
    {
      v35 = qword_1000EB460;
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
      {
        *v42 = 0;
        v36 = sub_1000011A8(1);
        if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
        {
          v37 = v36;
        }

        else
        {
          v37 = v36 & 0xFFFFFFFE;
        }

        if (v37)
        {
          v39 = _os_log_send_and_compose_impl();
          v38 = v39;
          if (v39)
          {
            sub_100002A8C(v39);
          }
        }

        else
        {
          v38 = 0;
        }

        free(v38);
      }

      sub_100018028("FAILED TO FIND DISKNODE");
LABEL_89:
      sub_100097F24();
    }
  }

  if (qword_1000EB468 != -1)
  {
    sub_100097F24();
  }

  v13 = qword_1000EB460;
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *v42 = 0;
    v14 = sub_1000011A8(1);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v15 = v14;
    }

    else
    {
      v15 = v14 & 0xFFFFFFFE;
    }

    if (v15)
    {
      v16 = _os_log_send_and_compose_impl();
      v17 = v16;
      if (v16)
      {
        sub_100002A8C(v16);
      }
    }

    else
    {
      v17 = 0;
    }

    free(v17);
  }

  return 0;
}

uint64_t sub_100072384(uint64_t a1, _DWORD *a2)
{
  v3 = APFSVolumeConvertToUserCrypto();
  if (v3)
  {
    v4 = v3;
    if (qword_1000EB468 != -1)
    {
      sub_100097F4C();
    }

    v5 = qword_1000EB460;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = sub_1000011A8(1);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v7 = v6;
      }

      else
      {
        v7 = v6 & 0xFFFFFFFE;
      }

      if (v7)
      {
        v8 = _os_log_send_and_compose_impl();
        v9 = v8;
        if (v8)
        {
          sub_100002A8C(v8);
        }
      }

      else
      {
        v9 = 0;
      }

      free(v9);
    }

    result = 0;
    if (a2)
    {
      *a2 = v4;
    }
  }

  else
  {
    if (qword_1000EB468 != -1)
    {
      sub_100097F4C();
    }

    v10 = qword_1000EB460;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = sub_1000011A8(1);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v12 = v11;
      }

      else
      {
        v12 = v11 & 0xFFFFFFFE;
      }

      if (v12)
      {
        v13 = _os_log_send_and_compose_impl();
        v14 = v13;
        if (v13)
        {
          sub_100002A8C(v13);
        }
      }

      else
      {
        v14 = 0;
      }

      free(v14);
    }

    return 1;
  }

  return result;
}

uint64_t sub_10007262C(int *a1)
{
  if (!sub_10005489C(v21, 256))
  {
    if (qword_1000EB468 != -1)
    {
      sub_100097F24();
    }

    v7 = qword_1000EB460;
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_44;
    }

    v8 = sub_1000011A8(1);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = v8;
    }

    else
    {
      v9 = v8 & 0xFFFFFFFE;
    }

    if (v9)
    {
      v10 = _os_log_send_and_compose_impl();
      if (!v10)
      {
        goto LABEL_43;
      }

      goto LABEL_32;
    }

LABEL_42:
    v10 = 0;
    goto LABEL_43;
  }

  if (qword_1000EB468 != -1)
  {
    sub_100097F24();
  }

  v2 = qword_1000EB460;
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = sub_1000011A8(1);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v4 = v3;
    }

    else
    {
      v4 = v3 & 0xFFFFFFFE;
    }

    if (v4)
    {
      v5 = _os_log_send_and_compose_impl();
      v6 = v5;
      if (v5)
      {
        sub_100002A8C(v5);
      }
    }

    else
    {
      v6 = 0;
    }

    free(v6);
  }

  v11 = APFSVolumeTranscribePFK();
  if (v11)
  {
    v12 = v11;
    if (a1)
    {
      *a1 = v11;
    }

    if (qword_1000EB468 != -1)
    {
      sub_100097F24();
    }

    v7 = qword_1000EB460;
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_44;
    }

    v13 = sub_1000011A8(1);
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v13 &= ~1u;
    }

    if (v13)
    {
      v14 = v7;
      strerror(v12);
      v10 = _os_log_send_and_compose_impl();

      if (!v10)
      {
LABEL_43:
        free(v10);
LABEL_44:
        v19 = 0;
        goto LABEL_45;
      }

LABEL_32:
      sub_100002A8C(v10);
      goto LABEL_43;
    }

    goto LABEL_42;
  }

  if (qword_1000EB468 != -1)
  {
    sub_100097F24();
  }

  v7 = qword_1000EB460;
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v15 = sub_1000011A8(1);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v16 = v15;
    }

    else
    {
      v16 = v15 & 0xFFFFFFFE;
    }

    if (v16)
    {
      v17 = _os_log_send_and_compose_impl();
      v18 = v17;
      if (v17)
      {
        sub_100002A8C(v17);
      }
    }

    else
    {
      v18 = 0;
    }

    free(v18);
  }

  v19 = 1;
LABEL_45:

  return v19;
}

uint64_t sub_1000729D4(int a1, _DWORD *a2)
{
  if (!sub_100054A9C(v63, 256))
  {
    if (qword_1000EB468 != -1)
    {
      sub_100097F24();
    }

    v11 = qword_1000EB460;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *v59 = 0;
      v12 = sub_1000011A8(1);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v13 = v12;
      }

      else
      {
        v13 = v12 & 0xFFFFFFFE;
      }

      if (v13)
      {
        v62 = 0x204000100;
        v14 = _os_log_send_and_compose_impl();
        v15 = v14;
        if (v14)
        {
          sub_100002A8C(v14);
        }
      }

      else
      {
        v15 = 0;
      }

      free(v15);
    }

    if (!a2)
    {
      return 0;
    }

    result = 0;
    v26 = 2;
    goto LABEL_44;
  }

  if (!a1)
  {
    if (qword_1000EB468 != -1)
    {
      sub_100097F24();
    }

    v5 = qword_1000EB460;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v59 = 0;
      v16 = sub_1000011A8(1);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v17 = v16;
      }

      else
      {
        v17 = v16 & 0xFFFFFFFE;
      }

      if (v17)
      {
        LOWORD(v62) = 0;
        v18 = _os_log_send_and_compose_impl();
        v19 = v18;
        if (v18)
        {
          sub_100002A8C(v18);
        }
      }

      else
      {
        v19 = 0;
      }

      free(v19);
    }

    goto LABEL_74;
  }

  v4 = [NSString stringWithUTF8String:v63];
  if (!v4)
  {
    if (qword_1000EB468 != -1)
    {
      sub_100097F24();
    }

    v20 = qword_1000EB460;
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *v59 = 0;
      v21 = sub_1000011A8(1);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v22 = v21;
      }

      else
      {
        v22 = v21 & 0xFFFFFFFE;
      }

      if (v22)
      {
        LOWORD(v62) = 0;
        v23 = _os_log_send_and_compose_impl();
        v24 = v23;
        if (v23)
        {
          sub_100002A8C(v23);
        }
      }

      else
      {
        v24 = 0;
      }

      free(v24);
    }

    if (!a2)
    {
      return 0;
    }

    result = 0;
    v26 = 12;
LABEL_44:
    *a2 = v26;
    return result;
  }

  v5 = v4;
  if (qword_1000EB468 != -1)
  {
    sub_100097F24();
  }

  v6 = qword_1000EB460;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v62 = 0;
    v7 = sub_1000011A8(1);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = v7;
    }

    else
    {
      v8 = v7 & 0xFFFFFFFE;
    }

    if (v8)
    {
      *v59 = 138412546;
      *&v59[4] = v5;
      v60 = 1024;
      v61 = 501;
      v9 = _os_log_send_and_compose_impl();
      v10 = v9;
      if (v9)
      {
        sub_100002A8C(v9);
      }
    }

    else
    {
      v10 = 0;
    }

    free(v10);
  }

  v27 = sub_100089A80(qword_1000EB608);
  v58 = 0;
  v28 = [v27 mapVolume:v5 toSession:501 withPersona:0 error:&v58];
  v29 = v58;

  if (!v28)
  {
    v35 = [v29 code];
    if (qword_1000EB468 != -1)
    {
      sub_100097F24();
    }

    v36 = qword_1000EB460;
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
    {
      v62 = 0;
      v37 = sub_1000011A8(1);
      if (!os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
      {
        v37 &= ~1u;
      }

      if (v37)
      {
        v38 = v36;
        v39 = [v29 code];
        *v59 = 134217984;
        *&v59[4] = v39;
        v40 = _os_log_send_and_compose_impl();

        if (v40)
        {
          sub_100002A8C(v40);
        }
      }

      else
      {
        v40 = 0;
      }

      free(v40);
    }

    if (a2)
    {
      *a2 = v35;
    }

    return 0;
  }

  if (qword_1000EB468 != -1)
  {
    sub_100097F24();
  }

  v30 = qword_1000EB460;
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
  {
    v62 = 0;
    v31 = sub_1000011A8(1);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      v32 = v31;
    }

    else
    {
      v32 = v31 & 0xFFFFFFFE;
    }

    if (v32)
    {
      *v59 = 138412546;
      *&v59[4] = v5;
      v60 = 1024;
      v61 = 501;
      v33 = _os_log_send_and_compose_impl();
      v34 = v33;
      if (v33)
      {
        sub_100002A8C(v33);
      }
    }

    else
    {
      v34 = 0;
    }

    free(v34);
  }

LABEL_74:
  if (qword_1000EB468 != -1)
  {
    sub_100097F24();
  }

  v41 = qword_1000EB460;
  if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
  {
    v62 = 0;
    v42 = sub_1000011A8(1);
    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
    {
      v43 = v42;
    }

    else
    {
      v43 = v42 & 0xFFFFFFFE;
    }

    if (v43)
    {
      *v59 = 136315138;
      *&v59[4] = v63;
      v44 = _os_log_send_and_compose_impl();
      v45 = v44;
      if (v44)
      {
        sub_100002A8C(v44);
      }
    }

    else
    {
      v45 = 0;
    }

    free(v45);
  }

  v46 = APFSVolumeMigrateMediaKey();
  if (v46)
  {
    v47 = v46;
    if (a2)
    {
      *a2 = v46;
    }

    if (qword_1000EB468 != -1)
    {
      sub_100097F24();
    }

    v48 = qword_1000EB460;
    if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
    {
      *v59 = 0;
      v49 = sub_1000011A8(1);
      if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
      {
        v50 = v49;
      }

      else
      {
        v50 = v49 & 0xFFFFFFFE;
      }

      if (v50)
      {
        LODWORD(v62) = 67109120;
        HIDWORD(v62) = v47;
        v51 = _os_log_send_and_compose_impl();
        v52 = v51;
        if (v51)
        {
          sub_100002A8C(v51);
        }
      }

      else
      {
        v52 = 0;
      }

      free(v52);
    }

    return 0;
  }

  if (qword_1000EB468 != -1)
  {
    sub_100097F24();
  }

  v53 = qword_1000EB460;
  if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
  {
    *v59 = 0;
    v54 = sub_1000011A8(1);
    if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
    {
      v55 = v54;
    }

    else
    {
      v55 = v54 & 0xFFFFFFFE;
    }

    if (v55)
    {
      LOWORD(v62) = 0;
      v56 = _os_log_send_and_compose_impl();
      v57 = v56;
      if (v56)
      {
        sub_100002A8C(v56);
      }
    }

    else
    {
      v57 = 0;
    }

    free(v57);
  }

  return 1;
}

uint64_t sub_10007324C(const char *a1, int *a2)
{
  v22 = 2;
  if (qword_1000EB468 != -1)
  {
    sub_100097F4C();
  }

  v4 = qword_1000EB460;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v24 = 0;
    v5 = sub_1000011A8(1);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = v5;
    }

    else
    {
      v6 = v5 & 0xFFFFFFFE;
    }

    if (v6)
    {
      LODWORD(v23[0]) = 136315138;
      *(v23 + 4) = a1;
      v7 = _os_log_send_and_compose_impl();
      v8 = v7;
      if (v7)
      {
        sub_100002A8C(v7);
      }
    }

    else
    {
      v8 = 0;
    }

    free(v8);
  }

  v9 = fsctl(a1, 0x80014A22uLL, &v22, 0);
  if (v9)
  {
    v10 = v9;
    if (a2)
    {
      *a2 = v9;
    }

    if (qword_1000EB468 != -1)
    {
      sub_100097F24();
    }

    v11 = qword_1000EB460;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v23[0] = 0;
      v12 = sub_1000011A8(1);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v13 = v12;
      }

      else
      {
        v13 = v12 & 0xFFFFFFFE;
      }

      if (v13)
      {
        LODWORD(v24) = 67109120;
        HIDWORD(v24) = v10;
        v14 = _os_log_send_and_compose_impl();
        v15 = v14;
        if (v14)
        {
          sub_100002A8C(v14);
        }
      }

      else
      {
        v15 = 0;
      }

      free(v15);
    }

    v20 = 0;
  }

  else
  {
    if (qword_1000EB468 != -1)
    {
      sub_100097F24();
    }

    v11 = qword_1000EB460;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v23[0] = 0;
      v16 = sub_1000011A8(1);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v17 = v16;
      }

      else
      {
        v17 = v16 & 0xFFFFFFFE;
      }

      if (v17)
      {
        LOWORD(v24) = 0;
        v18 = _os_log_send_and_compose_impl();
        v19 = v18;
        if (v18)
        {
          sub_100002A8C(v18);
        }
      }

      else
      {
        v19 = 0;
      }

      free(v19);
    }

    v20 = 1;
  }

  return v20;
}

uint64_t sub_100073538()
{
  if (qword_1000EB5A0)
  {
    v0 = 0;
  }

  else
  {
    v0 = byte_1000EA3D8 == 0;
  }

  if (v0)
  {
    return 0;
  }

  if (qword_1000EB468 != -1)
  {
    sub_100097F4C();
  }

  v1 = qword_1000EB460;
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    v2 = sub_1000011A8(1);
    if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
    {
      v3 = v2;
    }

    else
    {
      v3 = v2 & 0xFFFFFFFE;
    }

    if (v3)
    {
      v4 = _os_log_send_and_compose_impl();
      v5 = v4;
      if (v4)
      {
        sub_100002A8C(v4);
      }
    }

    else
    {
      v5 = 0;
    }

    free(v5);
  }

  if (CFArrayGetCount(qword_1000EB5A0) >= 1)
  {
    for (i = 0; CFArrayGetCount(qword_1000EB5A0) > i; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(qword_1000EB5A0, i);
      if (!ValueAtIndex)
      {
        continue;
      }

      v9 = ValueAtIndex;
      v10 = CFGetTypeID(ValueAtIndex);
      if (v10 != CFDictionaryGetTypeID() || !CFDictionaryContainsKey(v9, kUMUserSessionVolumeMountedKey))
      {
        continue;
      }

      v11 = sub_100002454(v9, kUMUserSessionVolumeMountedKey);
      sub_1000023E8(v9, kUMUserSessionIDKey);
      if (sub_100002454(v9, kUMUserSessionForegroundKey) || v11 == 0)
      {
        continue;
      }

      if (sub_100070DBC(v9, 0, 0, 0x80000))
      {
        if (qword_1000EB468 != -1)
        {
          sub_100097F24();
        }

        v13 = qword_1000EB460;
        if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_46;
        }

        v14 = sub_1000011A8(1);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          v15 = v14;
        }

        else
        {
          v15 = v14 & 0xFFFFFFFE;
        }

        if (v15)
        {
LABEL_42:
          v18 = _os_log_send_and_compose_impl();
          v19 = v18;
          if (v18)
          {
            sub_100002A8C(v18);
          }

          goto LABEL_45;
        }
      }

      else
      {
        if (qword_1000EB468 != -1)
        {
          sub_100097F24();
        }

        v13 = qword_1000EB460;
        if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_46;
        }

        v16 = sub_1000011A8(1);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          v17 = v16;
        }

        else
        {
          v17 = v16 & 0xFFFFFFFE;
        }

        if (v17)
        {
          goto LABEL_42;
        }
      }

      v19 = 0;
LABEL_45:
      free(v19);
LABEL_46:
    }
  }

  return 1;
}

uint64_t sub_1000738C4(uint64_t a1, int *a2)
{
  memset(v30, 0, sizeof(v30));
  if (qword_1000EB468 != -1)
  {
    sub_100097F4C();
  }

  v3 = qword_1000EB460;
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = sub_1000011A8(1);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v5 = v4;
    }

    else
    {
      v5 = v4 & 0xFFFFFFFE;
    }

    if (v5)
    {
      v6 = _os_log_send_and_compose_impl();
      v7 = v6;
      if (v6)
      {
        sub_100002A8C(v6);
      }
    }

    else
    {
      v7 = 0;
    }

    free(v7);
  }

  if (!sub_100054A9C(v30, 256))
  {
    if (qword_1000EB468 != -1)
    {
      sub_100097F24();
    }

    v13 = qword_1000EB460;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = sub_1000011A8(1);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v15 = v14;
      }

      else
      {
        v15 = v14 & 0xFFFFFFFE;
      }

      if (v15)
      {
        v16 = _os_log_send_and_compose_impl();
        v17 = v16;
        if (v16)
        {
          sub_100002A8C(v16);
        }
      }

      else
      {
        v17 = 0;
      }

      free(v17);
    }

    v19 = 2;
    goto LABEL_57;
  }

  if (qword_1000EB468 != -1)
  {
    sub_100097F24();
  }

  v8 = qword_1000EB460;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = sub_1000011A8(1);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = v9;
    }

    else
    {
      v10 = v9 & 0xFFFFFFFE;
    }

    if (v10)
    {
      v11 = _os_log_send_and_compose_impl();
      v12 = v11;
      if (v11)
      {
        sub_100002A8C(v11);
      }
    }

    else
    {
      v12 = 0;
    }

    free(v12);
  }

  v18 = APFSVolumeDelete();
  if (v18)
  {
    v19 = v18;
    if (qword_1000EB468 != -1)
    {
      sub_100097F24();
    }

    v13 = qword_1000EB460;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v20 = sub_1000011A8(1);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v21 = v20;
      }

      else
      {
        v21 = v20 & 0xFFFFFFFE;
      }

      if (v21)
      {
        v22 = _os_log_send_and_compose_impl();
        v23 = v22;
        if (v22)
        {
          sub_100002A8C(v22);
        }
      }

      else
      {
        v23 = 0;
      }

      free(v23);
    }

LABEL_57:

    result = 0;
    if (a2)
    {
      *a2 = v19;
    }

    return result;
  }

  if (qword_1000EB468 != -1)
  {
    sub_100097F24();
  }

  v24 = qword_1000EB460;
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    v25 = sub_1000011A8(1);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v26 = v25;
    }

    else
    {
      v26 = v25 & 0xFFFFFFFE;
    }

    if (v26)
    {
      v27 = _os_log_send_and_compose_impl();
      v28 = v27;
      if (v27)
      {
        sub_100002A8C(v27);
      }
    }

    else
    {
      v28 = 0;
    }

    free(v28);
  }

  return 1;
}

uint64_t sub_100073D54(const __CFString *a1, uid_t a2, gid_t a3)
{
  v38 = 0;
  v37 = 4;
  v36 = 0;
  memset(&v35, 0, sizeof(v35));
  if (sysctlbyname("kern.exclaves_status", &v38, &v37, 0, 0))
  {
    if (qword_1000EB468 != -1)
    {
      sub_100097F24();
    }

    v6 = qword_1000EB460;
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_82;
    }

    *buffer = 0;
    v7 = sub_1000011A8(1);
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 &= ~1u;
    }

    if (v7)
    {
      v8 = v6;
      v9 = *__error();
      *v39 = 67109120;
      *&v39[4] = v9;
      goto LABEL_9;
    }

LABEL_80:
    v10 = 0;
LABEL_81:
    free(v10);
LABEL_82:

    return *__error();
  }

  if (v38 == 1)
  {
    bzero(buffer, 0x400uLL);
    if (a1)
    {
      if (!CFStringGetCString(a1, buffer, 1024, 0x8000100u))
      {
        if (qword_1000EB468 != -1)
        {
          sub_100097F24();
        }

        v16 = qword_1000EB460;
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          *v39 = 0;
          v17 = sub_1000011A8(1);
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            v18 = v17;
          }

          else
          {
            v18 = v17 & 0xFFFFFFFE;
          }

          if (v18)
          {
            v19 = _os_log_send_and_compose_impl();
            v20 = v19;
            if (v19)
            {
              sub_100002A8C(v19);
            }
          }

          else
          {
            v20 = 0;
          }

          free(v20);
        }

        return 22;
      }
    }

    else
    {
      strcpy(buffer, "/private/var/mobile");
    }

    __strlcat_chk();
    if (stat(buffer, &v35))
    {
      if (*__error() != 2)
      {
        if (qword_1000EB468 != -1)
        {
          sub_100097F24();
        }

        v6 = qword_1000EB460;
        if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_82;
        }

        v27 = sub_1000011A8(1);
        if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          v27 &= ~1u;
        }

        if (!v27)
        {
          goto LABEL_80;
        }

        goto LABEL_79;
      }

      if (mkdir(buffer, 0x1EDu))
      {
        if (qword_1000EB468 != -1)
        {
          sub_100097F24();
        }

        v6 = qword_1000EB460;
        if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_82;
        }

        v26 = sub_1000011A8(1);
        if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          v26 &= ~1u;
        }

        if (!v26)
        {
          goto LABEL_80;
        }

        goto LABEL_79;
      }

      if (chown(buffer, a2, a3))
      {
        if (qword_1000EB468 != -1)
        {
          sub_100097F24();
        }

        v6 = qword_1000EB460;
        if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_82;
        }

        v29 = sub_1000011A8(1);
        if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          v29 &= ~1u;
        }

        if (!v29)
        {
          goto LABEL_80;
        }

        goto LABEL_79;
      }
    }

    if (!fsctl(buffer, 0x80044119uLL, &v36, 0))
    {
      if (qword_1000EB468 != -1)
      {
        sub_100097F24();
      }

      v11 = qword_1000EB460;
      if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_93;
      }

      v33 = sub_1000011A8(1);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v34 = v33;
      }

      else
      {
        v34 = v33 & 0xFFFFFFFE;
      }

      if (v34)
      {
        *v39 = 136315138;
        *&v39[4] = buffer;
LABEL_21:
        v14 = _os_log_send_and_compose_impl();
        v15 = v14;
        if (v14)
        {
          sub_100002A8C(v14);
        }

        goto LABEL_92;
      }

LABEL_91:
      v15 = 0;
LABEL_92:
      free(v15);
LABEL_93:

      return 0;
    }

    if (qword_1000EB468 != -1)
    {
      sub_100097F24();
    }

    v6 = qword_1000EB460;
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_82;
    }

    v30 = sub_1000011A8(1);
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v30 &= ~1u;
    }

    if (!v30)
    {
      goto LABEL_80;
    }

LABEL_79:
    v8 = v6;
    v31 = __error();
    v32 = strerror(*v31);
    *v39 = 136315394;
    *&v39[4] = buffer;
    v40 = 2080;
    v41 = v32;
LABEL_9:
    v10 = _os_log_send_and_compose_impl();

    if (v10)
    {
      sub_100002A8C(v10);
    }

    goto LABEL_81;
  }

  if (v38 == 255)
  {
    if (qword_1000EB468 != -1)
    {
      sub_100097F24();
    }

    v11 = qword_1000EB460;
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_93;
    }

    *buffer = 0;
    v12 = sub_1000011A8(1);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v13 = v12;
    }

    else
    {
      v13 = v12 & 0xFFFFFFFE;
    }

    if (v13)
    {
      *v39 = 0;
      goto LABEL_21;
    }

    goto LABEL_91;
  }

  if (qword_1000EB468 != -1)
  {
    sub_100097F24();
  }

  v21 = qword_1000EB460;
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    *buffer = 0;
    v22 = sub_1000011A8(1);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v23 = v22;
    }

    else
    {
      v23 = v22 & 0xFFFFFFFE;
    }

    if (v23)
    {
      *v39 = 67109120;
      *&v39[4] = v38;
      v24 = _os_log_send_and_compose_impl();
      v25 = v24;
      if (v24)
      {
        sub_100002A8C(v24);
      }
    }

    else
    {
      v25 = 0;
    }

    free(v25);
  }

  return 6;
}

void sub_1000745A8(id a1)
{
  qword_1000EB460 = os_log_create(off_1000EA598, "legacy");

  _objc_release_x1();
}

id *sub_1000746C0(uint64_t a1, void *a2, int a3, void *a4, void *a5, void *a6, void *a7, void *a8, void *a9)
{
  v16 = a9;
  v17 = a8;
  v18 = a7;
  v19 = a6;
  v20 = a5;
  v21 = a4;
  v22 = a2;
  objc_opt_self();
  v23 = sub_1000747CC([UMDarwinDirectoryUser alloc], v22, a3, v21, v20, v19, v18, v17, v16);

  return v23;
}

id *sub_1000747CC(id *a1, void *a2, int a3, void *a4, void *a5, void *a6, void *a7, void *a8, void *a9)
{
  v27 = a2;
  v26 = a4;
  v25 = a5;
  v24 = a6;
  v23 = a7;
  v17 = a8;
  v18 = a9;
  if (a1)
  {
    v28.receiver = a1;
    v28.super_class = UMDarwinDirectoryUser;
    v19 = objc_msgSendSuper2(&v28, "init");
    if (!v19)
    {
      sub_100088DDC();
    }

    a1 = v19;

    objc_storeStrong(a1 + 2, a2);
    *(a1 + 2) = a3;
    objc_storeStrong(a1 + 3, a4);
    objc_storeStrong(a1 + 4, a5);
    objc_storeStrong(a1 + 5, a6);
    objc_storeStrong(a1 + 6, a7);
    objc_storeStrong(a1 + 7, a8);
    v20 = [v18 mutableCopy];
    v21 = a1[8];
    a1[8] = v20;
  }

  return a1;
}

id *sub_100074B58(uint64_t a1, void *a2, int a3, void *a4, void *a5)
{
  v8 = a5;
  v9 = a4;
  v10 = a2;
  objc_opt_self();
  v11 = sub_100074BF8([UMDarwinDirectoryGroup alloc], v10, a3, v9, v8);

  return v11;
}

id *sub_100074BF8(id *a1, void *a2, int a3, void *a4, void *a5)
{
  v9 = a2;
  v10 = a4;
  v11 = a5;
  if (a1)
  {
    v18.receiver = a1;
    v18.super_class = UMDarwinDirectoryGroup;
    v12 = objc_msgSendSuper2(&v18, "init");
    if (!v12)
    {
      sub_100088DDC();
    }

    a1 = v12;

    v13 = [v9 copy];
    v14 = a1[2];
    a1[2] = v13;

    *(a1 + 2) = a3;
    objc_storeStrong(a1 + 3, a4);
    v15 = [v11 copy];
    v16 = a1[4];
    a1[4] = v15;
  }

  return a1;
}

void sub_100075C18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a19, 8);
  _Block_object_dispose(&a27, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100075C4C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100075C64(uint64_t a1, void *a2, int a3)
{
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  v6 = a2;
  *(*(*(a1 + 40) + 8) + 24) = a3;
}

void sub_100075F00(id a1)
{
  qword_1000EB470 = os_log_create(off_1000EA598, "sideeffect");

  _objc_release_x1();
}

uint64_t sub_100075F48(uint64_t a1, unsigned int a2)
{
  objc_opt_self();
  if (a2 >= 9)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return a2;
  }
}

uint64_t sub_100075F74(uint64_t a1, unsigned int a2)
{
  objc_opt_self();
  if (a2 >= 9)
  {
    return 0x7FFFFFFFLL;
  }

  else
  {
    return a2;
  }
}

id sub_100075FA4(uint64_t a1, int *a2)
{
  v3 = objc_opt_self();
  v4 = objc_alloc_init(v3);
  v5 = v4;
  if (*a2 != 2)
  {
    if (qword_1000EB488 != -1)
    {
      sub_100098610();
    }

    v9 = qword_1000EB480;
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_24;
    }

    v10 = sub_1000011A8(0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v11 = v10;
    }

    else
    {
      v11 = v10 & 0xFFFFFFFE;
    }

    if (v11)
    {
      v17 = *a2;
      goto LABEL_20;
    }

LABEL_22:
    v15 = 0;
LABEL_23:
    free(v15);
    goto LABEL_24;
  }

  sub_10008BDA4(v4, a2[1]);
  v6 = sub_100075F48(v3, a2[2]);
  sub_100095DAC(v5, v6);
  if (sub_100001434(v5) != -1)
  {
    v7 = [NSString stringWithUTF8String:a2 + 22];
    sub_100096054(v5, v7);

    sub_100095EC8(v5, a2[86]);
    v8 = v5;
    goto LABEL_25;
  }

  if (qword_1000EB488 != -1)
  {
    sub_100098610();
  }

  v9 = qword_1000EB480;
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    v12 = sub_1000011A8(0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v13 = v12;
    }

    else
    {
      v13 = v12 & 0xFFFFFFFE;
    }

    if (v13)
    {
      v18 = a2[2];
LABEL_20:
      v14 = _os_log_send_and_compose_impl();
      v15 = v14;
      if (v14)
      {
        sub_100002A8C(v14);
      }

      goto LABEL_23;
    }

    goto LABEL_22;
  }

LABEL_24:

  v8 = 0;
LABEL_25:

  return v8;
}

double sub_100076214@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  if (a1)
  {
    *(a2 + 252) = 0u;
    *(a2 + 236) = 0u;
    *(a2 + 220) = 0u;
    *(a2 + 204) = 0u;
    *(a2 + 188) = 0u;
    *(a2 + 172) = 0u;
    *(a2 + 156) = 0u;
    *(a2 + 140) = 0u;
    *(a2 + 124) = 0u;
    *(a2 + 108) = 0u;
    *(a2 + 92) = 0u;
    *(a2 + 76) = 0u;
    *(a2 + 60) = 0u;
    *(a2 + 44) = 0u;
    *(a2 + 28) = 0u;
    *(a2 + 12) = 0u;
    *(a2 + 316) = 0u;
    *(a2 + 332) = 0u;
    *(a2 + 284) = 0u;
    *(a2 + 300) = 0u;
    *(a2 + 268) = 0u;
    *a2 = 2;
    *(a2 + 4) = sub_100001440(a1);
    v4 = sub_100001434(a1);
    v5 = sub_100075F74(UMKPersonaInfo, v4);
    *(a2 + 8) = v5;
    if (v5 < 9)
    {
      v11 = sub_100096040(a1, v6);
      v12 = [v11 getCString:a2 + 88 maxLength:256 encoding:4];

      if (v12)
      {
        *(a2 + 344) = sub_100001660(a1);
        return result;
      }

      if (qword_1000EB488 != -1)
      {
        sub_100098610();
      }

      v7 = qword_1000EB480;
      if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_23;
      }

      v14 = sub_1000011A8(0);
      if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v14 &= ~1u;
      }

      if (v14)
      {
        v9 = v7;
        v16 = sub_100096040(a1, v15);
        v10 = _os_log_send_and_compose_impl();

LABEL_19:
        if (v10)
        {
          sub_100002A8C(v10);
        }

        goto LABEL_22;
      }
    }

    else
    {
      if (qword_1000EB488 != -1)
      {
        sub_100098610();
      }

      v7 = qword_1000EB480;
      if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_23;
      }

      v8 = sub_1000011A8(0);
      if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v8 &= ~1u;
      }

      if (v8)
      {
        v9 = v7;
        sub_100001434(a1);
        v10 = _os_log_send_and_compose_impl();
        goto LABEL_19;
      }
    }

    v10 = 0;
LABEL_22:
    free(v10);
LABEL_23:

    result = 0.0;
    *(a2 + 332) = 0u;
    *(a2 + 304) = 0u;
    *(a2 + 320) = 0u;
    *(a2 + 272) = 0u;
    *(a2 + 288) = 0u;
    *(a2 + 240) = 0u;
    *(a2 + 256) = 0u;
    *(a2 + 208) = 0u;
    *(a2 + 224) = 0u;
    *(a2 + 176) = 0u;
    *(a2 + 192) = 0u;
    *(a2 + 144) = 0u;
    *(a2 + 160) = 0u;
    *(a2 + 112) = 0u;
    *(a2 + 128) = 0u;
    *(a2 + 80) = 0u;
    *(a2 + 96) = 0u;
    *(a2 + 48) = 0u;
    *(a2 + 64) = 0u;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0u;
    *a2 = 0u;
    return result;
  }

  result = 0.0;
  *(a2 + 304) = 0u;
  *(a2 + 320) = 0u;
  *(a2 + 272) = 0u;
  *(a2 + 288) = 0u;
  *(a2 + 240) = 0u;
  *(a2 + 256) = 0u;
  *(a2 + 208) = 0u;
  *(a2 + 224) = 0u;
  *(a2 + 176) = 0u;
  *(a2 + 192) = 0u;
  *(a2 + 144) = 0u;
  *(a2 + 160) = 0u;
  *(a2 + 112) = 0u;
  *(a2 + 128) = 0u;
  *(a2 + 80) = 0u;
  *(a2 + 96) = 0u;
  *(a2 + 48) = 0u;
  *(a2 + 64) = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  *(a2 + 332) = 0u;
  return result;
}

void sub_100077974(id a1)
{
  qword_1000EB480 = os_log_create(off_1000EA598, "sideeffect");

  _objc_release_x1();
}

id *sub_100077A54(id *a1, void *a2)
{
  v4 = a2;
  if (a1)
  {
    v7.receiver = a1;
    v7.super_class = UMDVolumeHelper;
    v5 = objc_msgSendSuper2(&v7, "init");
    if (!v5)
    {
      sub_100088DDC();
    }

    a1 = v5;

    objc_storeStrong(a1 + 2, a2);
  }

  return a1;
}

void sub_100078310(id a1)
{
  qword_1000EB490 = os_log_create(off_1000EA598, "volume");

  _objc_release_x1();
}

void sub_1000783F8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = objc_opt_new();
  v3 = qword_1000EB4A0;
  qword_1000EB4A0 = v2;

  if (qword_1000EB4A0)
  {
    v4 = [[NSXPCListener alloc] initWithMachServiceName:@"com.apple.mobile.keybagd.UserManager.xpc"];
    [qword_1000EB4A0 setXpcListener:v4];

    v5 = [qword_1000EB4A0 xpcListener];
    v6 = [v5 _xpcConnection];
    __xpc_connection_set_logging();

    v7 = qword_1000EB4A0;
    v8 = [qword_1000EB4A0 xpcListener];
    [v8 setDelegate:v7];
  }
}

void sub_1000789C0(uint64_t a1)
{
  v2 = +[RDServer sharedServer];
  [v2 removeClient:*(a1 + 32)];
}

void sub_100078A18(uint64_t a1)
{
  v2 = +[RDServer sharedServer];
  [v2 removeClient:*(a1 + 32)];
}

void sub_100078A70(uint64_t a1)
{
  v2 = +[RDServer sharedServer];
  [v2 removeClient:*(a1 + 32)];
}

void sub_100078AC8(uint64_t a1)
{
  v2 = +[RDServer sharedServer];
  [v2 removeClient:*(a1 + 32)];
}

void sub_100078B40()
{
  v0 = objc_autoreleasePoolPush();
  v1 = +[RDXPCListener sharedListener];
  [v1 startListening];

  objc_autoreleasePoolPop(v0);
}

id sub_100078C2C()
{
  v0 = objc_opt_new();
  v1 = qword_1000EB4B8;
  qword_1000EB4B8 = v0;

  v2 = [[NSXPCListener alloc] initWithMachServiceName:@"com.apple.mobile.usermanagerd.xpc"];
  v3 = qword_1000EB4B0;
  qword_1000EB4B0 = v2;

  v4 = [qword_1000EB4B0 _xpcConnection];
  __xpc_connection_set_logging();

  [qword_1000EB4B0 setDelegate:qword_1000EB4B8];
  v5 = qword_1000EB4B0;

  return [v5 resume];
}

void sub_100078CD0(id a1)
{
  qword_1000EB4C0 = os_log_create(off_1000EA598, "legacy");

  _objc_release_x1();
}

void sub_1000793F8(id a1)
{
  qword_1000EB4D0 = os_log_create(off_1000EA598, "sideeffect");

  _objc_release_x1();
}

const void *sub_100079440(const __CFDictionary *a1, const void *a2)
{
  result = CFDictionaryGetValue(a1, a2);
  if (result)
  {
    v3 = result;
    v4 = CFGetTypeID(result);
    if (v4 == CFDataGetTypeID())
    {
      return v3;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

const void *sub_10007947C(const __CFDictionary *a1, const void *a2)
{
  result = CFDictionaryGetValue(a1, a2);
  if (result)
  {
    v3 = result;
    v4 = CFGetTypeID(result);
    if (v4 == CFArrayGetTypeID())
    {
      return v3;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1000794B8(const __CFDictionary *a1, const void *a2)
{
  v2 = -1;
  valuePtr = -1;
  Value = CFDictionaryGetValue(a1, a2);
  if (Value)
  {
    v4 = Value;
    v5 = CFGetTypeID(Value);
    if (v5 == CFNumberGetTypeID())
    {
      CFNumberGetValue(v4, kCFNumberLongLongType, &valuePtr);
      return valuePtr;
    }

    else
    {
      return -1;
    }
  }

  return v2;
}

uint64_t sub_100079524(const __CFDictionary *a1, const void *a2)
{
  v2 = -1;
  valuePtr = -1;
  Value = CFDictionaryGetValue(a1, a2);
  if (Value)
  {
    v4 = Value;
    v5 = CFGetTypeID(Value);
    if (v5 == CFNumberGetTypeID())
    {
      CFNumberGetValue(v4, kCFNumberSInt64Type, &valuePtr);
      return valuePtr;
    }

    else
    {
      return -1;
    }
  }

  return v2;
}

const void *sub_100079590(const __CFDictionary *a1, const void *a2)
{
  Value = CFDictionaryGetValue(a1, a2);
  if (!Value)
  {
    return 0;
  }

  v3 = Value;
  v4 = CFGetTypeID(Value);
  if (v4 != CFStringGetTypeID())
  {
    return 0;
  }

  return v3;
}

CFTypeRef sub_100079624(const __CFDictionary *a1, const void *a2)
{
  Value = CFDictionaryGetValue(a1, a2);
  if (!Value)
  {
    return 0;
  }

  v3 = Value;
  v4 = CFGetTypeID(Value);
  if (v4 != CFDictionaryGetTypeID())
  {
    return 0;
  }

  return CFRetain(v3);
}

CFTypeRef sub_100079684(const void *a1)
{
  v2 = CFWriteStreamCreateWithAllocatedBuffers(kCFAllocatorDefault, kCFAllocatorDefault);
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  if (CFWriteStreamOpen(v2))
  {
    if (CFPropertyListWrite(a1, v3, kCFPropertyListBinaryFormat_v1_0, 0, 0) < 1)
    {
      v4 = 0;
    }

    else
    {
      v4 = CFWriteStreamCopyProperty(v3, kCFStreamPropertyDataWritten);
    }

    CFWriteStreamClose(v3);
  }

  else
  {
    v4 = 0;
  }

  CFRelease(v3);
  return v4;
}

CFPropertyListRef sub_10007972C(UInt8 *bytes, CFIndex length)
{
  format = kCFPropertyListBinaryFormat_v1_0;
  v2 = CFReadStreamCreateWithBytesNoCopy(kCFAllocatorDefault, bytes, length, kCFAllocatorNull);
  if (v2)
  {
    v3 = v2;
    if (CFReadStreamOpen(v2))
    {
      v4 = CFPropertyListCreateWithStream(kCFAllocatorDefault, v3, 0, 2uLL, &format, 0);
      if (!v4)
      {
        syslog(7, "Could not create object from stream");
      }

      CFReadStreamClose(v3);
    }

    else
    {
      syslog(7, "Could not open the stream");
      v4 = 0;
    }

    CFRelease(v3);
  }

  else
  {
    syslog(7, "Could not create stream for serialized data");
    return 0;
  }

  return v4;
}

const void *sub_10007980C(const char *a1)
{
  memset(&v8.st_size, 0, 48);
  v2 = open(a1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
  if (v2 == -1)
  {
    sub_1000988DC(a1);
    v4 = 0;
    v6 = 0;
    goto LABEL_7;
  }

  v3 = v2;
  if (fstat(v2, &v8))
  {
    sub_100098828(a1);
    v6 = 0;
    v4 = 0;
    goto LABEL_6;
  }

  v4 = malloc_type_malloc(LODWORD(v8.st_size), 0x7C088C14uLL);
  if (!v4)
  {
    sub_1000988B8();
LABEL_12:
    v6 = 0;
    goto LABEL_6;
  }

  v5 = read(v3, v4, v8.st_size);
  if (v5 != v8.st_size)
  {
    sub_100098870(a1);
    goto LABEL_12;
  }

  v6 = sub_100098710(v4, v5);
LABEL_6:
  close(v3);
LABEL_7:
  free(v4);
  return v6;
}

CFMutableDictionaryRef sub_10007990C()
{
  result = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (!result)
  {
    syslog(7, "Out of Memory!!! Dying!...so...cold....");
    exit(-1);
  }

  return result;
}

CFMutableDictionaryRef sub_100079960(CFDictionaryRef theDict)
{
  result = CFDictionaryCreateMutableCopy(kCFAllocatorDefault, 0, theDict);
  if (!result)
  {
    syslog(7, "Out of Memory!!! Dying!...so...cold....");
    exit(-1);
  }

  return result;
}

CFMutableArrayRef sub_1000799A8()
{
  result = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
  if (!result)
  {
    syslog(7, "Out of Memory!!! Dying!...so...cold....");
    exit(-1);
  }

  return result;
}

CFStringRef sub_1000799F4(char *cStr)
{
  result = CFStringCreateWithCString(kCFAllocatorDefault, cStr, 0x8000100u);
  if (!result)
  {
    syslog(7, "Out of Memory!!! Dying!...so...cold....");
    exit(-1);
  }

  return result;
}

uint64_t sub_100079A40(uint32_t *a1)
{
  multiuser_flags = 0;
  v2 = mach_host_self();
  result = host_get_multiuser_config_flags(v2, &multiuser_flags);
  if (a1)
  {
    if (!result)
    {
      *a1 = multiuser_flags;
    }
  }

  return result;
}

uint64_t sub_100079A88(mach_port_name_t name)
{
  ptype = 0;
  if (mach_port_type(mach_task_self_, name, &ptype))
  {
    return 0;
  }

  else
  {
    return ptype;
  }
}

void sub_100079ACC(mach_port_name_t name)
{
  ptype = 0;
  v2 = mach_port_type(mach_task_self_, name, &ptype);
  v3 = ptype;
  if (v2)
  {
    v4 = 1;
  }

  else
  {
    v4 = ptype == 0;
  }

  if (v4)
  {
    syslog(7, "Port:%d has NORIGHTS");
    return;
  }

  if ((ptype & 0x10000) != 0)
  {
    syslog(7, "Port:%d has SENDRIGHT", name);
    if ((v3 & 0x20000) == 0)
    {
LABEL_9:
      if ((v3 & 0x40000) == 0)
      {
        goto LABEL_10;
      }

LABEL_14:
      syslog(7, "Port:%d has SENDONCERIGHT", name);
      if ((v3 & 0x100000) == 0)
      {
        return;
      }

      goto LABEL_15;
    }
  }

  else if ((ptype & 0x20000) == 0)
  {
    goto LABEL_9;
  }

  syslog(7, "Port:%d has RECEIVERIGHT", name);
  if ((v3 & 0x40000) != 0)
  {
    goto LABEL_14;
  }

LABEL_10:
  if ((v3 & 0x100000) != 0)
  {
LABEL_15:
    syslog(7, "Port:%d has DEADNAME");
  }
}

uint64_t sub_100079BA8()
{
  __len = 1023;
  bzero(__big, 0x400uLL);
  if (sysctlbyname("kern.bootargs", __big, &__len, 0, 0) || strnstr(__big, "um-migration-debug=0", __len))
  {
    return 0;
  }

  if (strnstr(__big, "um-migration-debug=1", __len))
  {
    return 1;
  }

  if (strnstr(__big, "um-migration-debug=2", __len))
  {
    return 2;
  }

  if (strnstr(__big, "um-migration-debug=3", __len))
  {
    return 3;
  }

  if (strnstr(__big, "um-migration-debug=4", __len))
  {
    return 4;
  }

  if (strnstr(__big, "um-migration-debug=5", __len))
  {
    return 5;
  }

  if (strnstr(__big, "um-migration-debug=100", __len))
  {
    return 100;
  }

  if (strnstr(__big, "um-migration-debug=101", __len))
  {
    return 101;
  }

  return 0;
}

void sub_100079F5C(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    if (qword_1000EB4E8 != -1)
    {
      sub_100098924();
    }

    v6 = qword_1000EB4E0;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = sub_1000011A8(0);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v8 = v7;
      }

      else
      {
        v8 = v7 & 0xFFFFFFFE;
      }

      if (v8)
      {
        v13 = *(a1 + 32);
LABEL_17:
        v11 = _os_log_send_and_compose_impl();
        v12 = v11;
        if (v11)
        {
          sub_100002A8C(v11);
        }

        goto LABEL_20;
      }

LABEL_19:
      v12 = 0;
LABEL_20:
      free(v12);
    }
  }

  else
  {
    if (qword_1000EB4E8 != -1)
    {
      sub_100098924();
    }

    v6 = qword_1000EB4E0;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v9 = sub_1000011A8(0);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v10 = v9;
      }

      else
      {
        v10 = v9 & 0xFFFFFFFE;
      }

      if (v10)
      {
        goto LABEL_17;
      }

      goto LABEL_19;
    }
  }
}

void sub_10007A138(id a1)
{
  qword_1000EB4E0 = os_log_create(off_1000EA598, "sideeffect");

  _objc_release_x1();
}

id sub_10007A180(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_self();
  v3 = [v2 name];
  v4 = [v2 uid];
  v5 = [v2 uuid];
  v6 = [v2 primaryGroupUUID];
  v7 = [v2 fullName];
  v8 = [v2 homeDirectory];
  v9 = [v2 shell];
  v10 = [v2 memberships];

  v11 = sub_1000746C0(UMDarwinDirectoryUser, v3, v4, v5, v6, v7, v8, v9, v10);

  return v11;
}

id sub_10007A2C0(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_self();
  v3 = [v2 name];
  v4 = [v2 gid];
  v5 = [v2 uuid];
  v6 = [v2 fullName];

  v7 = sub_100074B58(UMDarwinDirectoryGroup, v3, v4, v5, v6);

  return v7;
}

void sub_10007A414(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = +[NSMutableArray array];
  v8 = +[NSMutableArray array];
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v9 = v5;
  v10 = [v9 countByEnumeratingWithState:&v45 objects:v52 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v46;
    do
    {
      v13 = 0;
      do
      {
        if (*v46 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = sub_10007A180(UMDarwinDirectoryUser, *(*(&v45 + 1) + 8 * v13));
        [v7 addObject:v14];

        v13 = v13 + 1;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v45 objects:v52 count:16];
    }

    while (v11);
  }

  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v15 = v6;
  v16 = [v15 countByEnumeratingWithState:&v41 objects:v51 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v42;
    do
    {
      v19 = 0;
      do
      {
        if (*v42 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = sub_10007A2C0(UMDarwinDirectoryGroup, *(*(&v41 + 1) + 8 * v19));
        [v8 addObject:v20];

        v19 = v19 + 1;
      }

      while (v17 != v19);
      v17 = [v15 countByEnumeratingWithState:&v41 objects:v51 count:16];
    }

    while (v17);
  }

  (*(*(a1 + 32) + 16))();
  [v9 removeAllObjects];
  [v15 removeAllObjects];
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v21 = v7;
  v22 = [v21 countByEnumeratingWithState:&v37 objects:v50 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v38;
    do
    {
      v25 = 0;
      do
      {
        if (*v38 != v24)
        {
          objc_enumerationMutation(v21);
        }

        v26 = sub_100098960(*(*(&v37 + 1) + 8 * v25));
        [v9 addObject:v26];

        v25 = v25 + 1;
      }

      while (v23 != v25);
      v23 = [v21 countByEnumeratingWithState:&v37 objects:v50 count:16];
    }

    while (v23);
  }

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v27 = v8;
  v28 = [v27 countByEnumeratingWithState:&v33 objects:v49 count:16];
  if (v28)
  {
    v29 = v28;
    v30 = *v34;
    do
    {
      v31 = 0;
      do
      {
        if (*v34 != v30)
        {
          objc_enumerationMutation(v27);
        }

        v32 = sub_100098A8C(*(*(&v33 + 1) + 8 * v31));
        [v15 addObject:{v32, v33}];

        v31 = v31 + 1;
      }

      while (v29 != v31);
      v29 = [v27 countByEnumeratingWithState:&v33 objects:v49 count:16];
    }

    while (v29);
  }
}

void sub_10007A95C(uint64_t a1, void *a2, void *a3, void *a4)
{
  v6 = a2;
  v7 = a3;
  v8 = +[NSMutableArray array];
  v9 = +[NSMutableArray array];
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v10 = v6;
  v11 = [v10 countByEnumeratingWithState:&v47 objects:v54 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v48;
    do
    {
      v14 = 0;
      do
      {
        if (*v48 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = sub_10007A180(UMDarwinDirectoryUser, *(*(&v47 + 1) + 8 * v14));
        [v8 addObject:v15];

        v14 = v14 + 1;
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v47 objects:v54 count:16];
    }

    while (v12);
  }

  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v16 = v7;
  v17 = [v16 countByEnumeratingWithState:&v43 objects:v53 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v44;
    do
    {
      v20 = 0;
      do
      {
        if (*v44 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = sub_10007A2C0(UMDarwinDirectoryGroup, *(*(&v43 + 1) + 8 * v20));
        [v9 addObject:v21];

        v20 = v20 + 1;
      }

      while (v18 != v20);
      v18 = [v16 countByEnumeratingWithState:&v43 objects:v53 count:16];
    }

    while (v18);
  }

  (*(*(a1 + 32) + 16))();
  if (!*a4)
  {
    [v10 removeAllObjects];
    [v16 removeAllObjects];
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v22 = v8;
    v23 = [v22 countByEnumeratingWithState:&v39 objects:v52 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v40;
      do
      {
        v26 = 0;
        do
        {
          if (*v40 != v25)
          {
            objc_enumerationMutation(v22);
          }

          v27 = sub_100098960(*(*(&v39 + 1) + 8 * v26));
          [v10 addObject:v27];

          v26 = v26 + 1;
        }

        while (v24 != v26);
        v24 = [v22 countByEnumeratingWithState:&v39 objects:v52 count:16];
      }

      while (v24);
    }

    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v28 = v9;
    v29 = [v28 countByEnumeratingWithState:&v35 objects:v51 count:16];
    if (v29)
    {
      v30 = v29;
      v31 = *v36;
      do
      {
        v32 = 0;
        do
        {
          if (*v36 != v31)
          {
            objc_enumerationMutation(v28);
          }

          v33 = sub_100098A8C(*(*(&v35 + 1) + 8 * v32));
          [v16 addObject:v33];

          v32 = v32 + 1;
        }

        while (v30 != v32);
        v30 = [v28 countByEnumeratingWithState:&v35 objects:v51 count:16];
      }

      while (v30);
    }
  }
}

void sub_10007ACE4(id a1)
{
  qword_1000EB4F0 = os_log_create(off_1000EA598, "user");

  _objc_release_x1();
}

void sub_10007AFCC(id a1)
{
  qword_1000EB500 = os_log_create(off_1000EA598, "default");

  _objc_release_x1();
}

uint64_t sub_10007B030()
{

  return _os_log_send_and_compose_impl();
}

BOOL sub_10007B050()
{

  return os_log_type_enabled(v0, OS_LOG_TYPE_ERROR);
}

uint64_t sub_10007B07C()
{

  return objc_opt_isKindOfClass();
}

const char *acm_mem_alloc_info(const char *result, const void *a2, uint64_t a3, const char *a4, int a5, const char *a6)
{
  if (a2)
  {
    qword_1000EB510 += a3;
  }

  if (gACMLoggingLevel <= 0x1Eu)
  {
    v6 = "NULL";
    if (result)
    {
      v7 = result;
    }

    else
    {
      v7 = "NULL";
    }

    if (a4)
    {
      v8 = a4;
    }

    else
    {
      v8 = "NULL";
    }

    if (a6)
    {
      v6 = a6;
    }

    return printf("%s: %s: mem: type=%s ptr=%p size=%u (total=%u raw=%u data=%u types=%u) %s:%d (%s).\n", "ACM", "acm_mem_alloc_info", v7, a2, a3, qword_1000EB510, 0, qword_1000EB518, qword_1000EB520, v8, a5, v6);
  }

  return result;
}

const char *acm_mem_free_info(const char *result, const void *a2, unint64_t a3, const char *a4, int a5, const char *a6)
{
  if (a2)
  {
    v6 = qword_1000EB510 - a3;
    if (qword_1000EB510 < a3)
    {
      v6 = 0;
    }

    qword_1000EB510 = v6;
  }

  if (gACMLoggingLevel <= 0x1Eu)
  {
    v7 = "NULL";
    if (result)
    {
      v8 = result;
    }

    else
    {
      v8 = "NULL";
    }

    if (a4)
    {
      v9 = a4;
    }

    else
    {
      v9 = "NULL";
    }

    if (a6)
    {
      v7 = a6;
    }

    return printf("%s: %s: mem: type=%s ptr=%p size=%u (total=%u raw=%u data=%u types=%u) %s:%d (%s).\n", "ACM", "acm_mem_free_info", v8, a2, a3, qword_1000EB510, 0, qword_1000EB518, qword_1000EB520, v9, a5, v7);
  }

  return result;
}

uint64_t sub_10007B210(void *a1, rsize_t __n)
{

  return memset_s(a1, __n, 0, __n);
}

uint64_t DeserializeVerifyAclConstraint(int a1, uint64_t a2, unsigned int a3, _OWORD *a4, void *a5, _DWORD *a6, void *a7, unsigned int *a8, BOOL *a9, _DWORD *a10, void *a11, _DWORD *a12)
{
  v36 = 0;
  v37 = 0;
  v35 = 0;
  v12 = 4294967293;
  if (a2 && a4 && a5 && a6 && a9 && a10 && a11 && a12 && a3 >= 0x10)
  {
    v16 = a3;
    *a4 = *a2;
    v37 = 16;
    if ((a3 & 0xFFFFFFFC) == 0x10)
    {
      v12 = 4294967293;
    }

    else
    {
      v20 = *(a2 + 16);
      v37 = 20;
      v21 = acm_mem_alloc_data(v20);
      acm_mem_alloc_info("<data>", v21, v20, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/LibSerialization.c", 534, "DeserializeVerifyAclConstraint");
      if (v21)
      {
        if (v16 - 20 < v20)
        {
          goto LABEL_24;
        }

        memcpy(v21, (a2 + 20), v20);
        v22 = v20 + 20;
        v37 = v20 + 20;
        v33 = a5;
        if (a1 != 32)
        {
          v26 = 0;
          v34 = 0;
          goto LABEL_19;
        }

        if (v16 - v22 < 4)
        {
LABEL_24:
          v26 = 0;
          v34 = 0;
        }

        else
        {
          v31 = a7;
          v23 = a8;
          v24 = *(a2 + v22);
          v25 = v20 + 24;
          v37 = v20 + 24;
          v26 = acm_mem_alloc_data(v24);
          acm_mem_alloc_info("<data>", v26, v24, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/LibSerialization.c", 546, "DeserializeVerifyAclConstraint");
          v34 = v24;
          if (!v26)
          {
            v12 = 4294967292;
LABEL_26:
            acm_mem_free_info("<data>", v21, v20, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/LibSerialization.c", 582, "DeserializeVerifyAclConstraint");
            acm_mem_free_data(v21, v20);
            if (v26)
            {
              acm_mem_free_info("<data>", v26, v34, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/LibSerialization.c", 585, "DeserializeVerifyAclConstraint");
              acm_mem_free_data(v26, v34);
            }

            goto LABEL_30;
          }

          if (v16 - v25 >= v24)
          {
            memcpy(v26, (a2 + v25), v24);
            v22 = v25 + v24;
            v37 = v25 + v24;
            a8 = v23;
            a7 = v31;
LABEL_19:
            if (v22 != v16)
            {
              v27 = *(a2 + v22) != 0;
              v37 = v22 + 1;
              if (v16 - (v22 + 1) >= 4)
              {
                v32 = v20;
                v28 = v26;
                v29 = *(a2 + v22 + 1);
                v37 = v22 + 5;
                v12 = sub_10007BD10(a2, v16, &v37, &v36, &v35);
                if (!v12)
                {
                  *v33 = v21;
                  *a7 = v28;
                  *a8 = v34;
                  *a6 = v32;
                  *a9 = v27;
                  *a10 = v29;
                  *a11 = v36;
                  *a12 = v35;
                  return v12;
                }

                v26 = v28;
                v20 = v32;
                goto LABEL_26;
              }
            }
          }
        }

        v12 = 4294967293;
        goto LABEL_26;
      }

      v12 = 4294967292;
    }
  }

LABEL_30:
  if (v36)
  {
    Util_SafeDeallocParameters(v36, v35);
  }

  return v12;
}

uint64_t DeserializeProcessAcl(uint64_t a1, unsigned int a2, _OWORD *a3, void *a4, _DWORD *a5, void *a6, unsigned int *a7, _DWORD *a8, void *a9, _DWORD *a10)
{
  v39 = 0;
  v40 = 0;
  v38 = 0;
  v10 = 4294967293;
  if (a1)
  {
    if (a3)
    {
      v11 = a4;
      if (a4)
      {
        if (a5)
        {
          v13 = a6;
          if (a6)
          {
            v14 = a7;
            if (a7)
            {
              v15 = a8;
              if (a8)
              {
                if (a9 && a10 && a2 >= 0x10)
                {
                  v17 = a2;
                  *a3 = *a1;
                  v40 = 16;
                  if ((a2 & 0xFFFFFFFC) == 0x10)
                  {
                    v10 = 4294967293;
                  }

                  else
                  {
                    v18 = *(a1 + 16);
                    v40 = 20;
                    v19 = acm_mem_alloc_data(v18);
                    acm_mem_alloc_info("<data>", v19, v18, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/LibSerialization.c", 724, "DeserializeProcessAcl");
                    if (v19)
                    {
                      if (v17 - 20 < v18 || (memcpy(v19, (a1 + 20), v18), v40 = v18 + 20, v17 - (v18 + 20) < 4))
                      {
                        v32 = 0;
                        v37 = 0;
                        v10 = 4294967293;
                      }

                      else
                      {
                        v36 = a5;
                        v20 = *(a1 + v18 + 20);
                        v21 = v18 + 24;
                        v40 = v18 + 24;
                        v37 = v20;
                        if (!v20)
                        {
                          v35 = 0;
                          goto LABEL_20;
                        }

                        v33 = v11;
                        v22 = v13;
                        v23 = v14;
                        v24 = v15;
                        v25 = v20;
                        v26 = acm_mem_alloc_data(v20);
                        acm_mem_alloc_info("<data>", v26, v25, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/LibSerialization.c", 736, "DeserializeProcessAcl");
                        if (v26)
                        {
                          v27 = v26;
                          if (v17 - v21 >= v25)
                          {
                            v13 = v22;
                            v35 = v27;
                            memcpy(v27, (a1 + v21), v25);
                            v21 += v25;
                            v40 = v21;
                            v15 = v24;
                            v14 = v23;
                            v11 = v33;
LABEL_20:
                            if (v17 - v21 < 4)
                            {
                              v10 = 4294967293;
                            }

                            else
                            {
                              v34 = v18;
                              v28 = v19;
                              v29 = v15;
                              v30 = *(a1 + v21);
                              v40 = v21 + 4;
                              v10 = sub_10007BD10(a1, v17, &v40, &v39, &v38);
                              if (!v10)
                              {
                                *v11 = v28;
                                *v36 = v34;
                                *v13 = v35;
                                *v14 = v37;
                                *v29 = v30;
                                *a9 = v39;
                                *a10 = v38;
                                return v10;
                              }

                              v19 = v28;
                              v18 = v34;
                            }

                            v32 = v35;
                            goto LABEL_32;
                          }

                          v10 = 4294967293;
                          v32 = v26;
                        }

                        else
                        {
                          v32 = 0;
                          v10 = 4294967292;
                        }
                      }

LABEL_32:
                      acm_mem_free_info("<data>", v19, v18, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/LibSerialization.c", 765, "DeserializeProcessAcl");
                      acm_mem_free_data(v19, v18);
                      if (v32)
                      {
                        acm_mem_free_info("<data>", v32, v37, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/LibSerialization.c", 768, "DeserializeProcessAcl");
                        acm_mem_free_data(v32, v37);
                      }

                      goto LABEL_34;
                    }

                    v10 = 4294967292;
                  }
                }
              }
            }
          }
        }
      }
    }
  }

LABEL_34:
  if (v39)
  {
    Util_SafeDeallocParameters(v39, v38);
  }

  return v10;
}

uint64_t sub_10007B880(unsigned int a1, _DWORD *a2)
{
  if (!a2)
  {
    sub_10007C078();
  }

  if (a1 > 1)
  {
    return a2[3];
  }

  v2 = *a2 - 1;
  if (v2 >= 0x1C || ((0xFFE7FE7u >> v2) & 1) == 0)
  {
    sub_10007C04C();
  }

  return qword_1000B8388[v2];
}

uint64_t sub_10007B9A4@<X0>(uint64_t a1@<X8>, uint64_t a2)
{
  a2 = a1;

  return sub_10007BBD4(v4, v3, v2, &a2);
}

uint64_t sub_10007B9C8()
{

  return memcmp(v1, v0, 0x20uLL);
}

uint64_t sub_10007B9E4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  result = 0;
  *a4 = 24;
  return result;
}

uint64_t sub_10007B9F4(uint64_t a1, void *a2)
{
  result = 0;
  *a2 = 16;
  return result;
}

void sub_10007BA04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, unint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  a9 = *v22 - v25;
  v29 = *(v27 + 8 * v26);

  SerializeRequirement(v24, v29, v23 + v25, &a9, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

__n128 sub_10007BA78(__n128 *a1, uint64_t a2, __n128 *a3, _DWORD *a4)
{
  result = *a1;
  *a3 = *a1;
  *a4 = a1[1].n128_u32[0];
  return result;
}

__n128 sub_10007BA98@<Q0>(unsigned __int32 a1@<W1>, unsigned __int32 a2@<W2>, __n128 *a3@<X3>, void *a4@<X4>, __n128 *a5@<X8>)
{
  result = *a5;
  *a3 = *a5;
  a3[1].n128_u32[0] = a1;
  a3[1].n128_u32[1] = a2;
  *a4 = 24;
  return result;
}

uint64_t sub_10007BBD4(uint64_t a1, int a2, uint64_t a3, uint64_t *a4)
{
  LODWORD(v6) = a2;
  if (gACMLoggingLevel <= 0xAu)
  {
    printf("%s: %s: called.\n", "ACM", "serializeParameters");
  }

  v8 = 70;
  v9 = 4294967293;
  if (a3 && a4)
  {
    v10 = *a4;
    *(a3 + v10) = v6;
    v11 = v10 + 4;
    if (v6)
    {
      v6 = v6;
      while (1)
      {
        *__src = *a1;
        __n = *(a1 + 16);
        v12 = sub_10007BFB4(__src);
        if (v12)
        {
          break;
        }

        v13 = (a3 + v11);
        v14 = __n;
        *v13 = __src[0];
        v13[1] = v14;
        v11 += 8;
        if (v14)
        {
          memcpy((a3 + v11), __src[1], v14);
          v11 += v14;
        }

        a1 += 24;
        if (!--v6)
        {
          goto LABEL_11;
        }
      }

      v9 = v12;
      v8 = 70;
    }

    else
    {
LABEL_11:
      v9 = 0;
      *a4 = v11;
      v8 = 10;
    }
  }

  if (v8 >= gACMLoggingLevel)
  {
    printf("%s: %s: returning, err = %ld.\n", "ACM", "serializeParameters", v9);
  }

  return v9;
}

uint64_t sub_10007BD10(uint64_t a1, unint64_t a2, unint64_t *a3, void *size, _DWORD *a5)
{
  p_opt_inst_meths = &OBJC_PROTOCOL___RDServer.opt_inst_meths;
  if (gACMLoggingLevel <= 0xAu)
  {
    printf("%s: %s: called.\n", "ACM", "deserializeParameters");
  }

  v11 = 70;
  v12 = 4294967293;
  if (!a1 || !a3 || !size || !a5)
  {
    goto LABEL_24;
  }

  v13 = *a3;
  if (a2 <= *a3)
  {
    goto LABEL_22;
  }

  if (a2 - *a3 < 4 || (v14 = *(a1 + v13), v14 > 0xA))
  {
    v11 = 70;
    v12 = 4294967293;
    goto LABEL_24;
  }

  v13 += 4;
  if (!v14)
  {
LABEL_22:
    v20 = 0;
    v21 = 0;
LABEL_23:
    v12 = 0;
    *size = v21;
    *a5 = v20;
    v11 = 10;
    *a3 = v13;
    goto LABEL_24;
  }

  v15 = acm_mem_alloc_typed(24 * v14, 0x1080040388D5D28uLL);
  acm_mem_alloc_info("array of ACMParameter", v15, 24 * v14, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/LibSerialization.c", 196, "deserializeParameters");
  if (!v15)
  {
    v11 = 70;
    v12 = 4294967292;
    goto LABEL_24;
  }

  v25 = a5;
  v23 = v15;
  v24 = v14;
  v16 = v14;
  while (1)
  {
    *(v15 + 1) = 0;
    if (a2 - v13 < 8 || (*v15 = *(a1 + v13), a2 - (v13 + 4) < 4) || (v17 = *(a1 + v13 + 4), v15[4] = v17, v13 += 8, a2 - v13 < v17))
    {
      v11 = 70;
      v12 = 4294967293;
      goto LABEL_30;
    }

    v18 = sub_10007BFB4(v15);
    if (v18)
    {
      v12 = v18;
      v11 = 70;
      goto LABEL_30;
    }

    if (v17)
    {
      break;
    }

LABEL_20:
    v15 += 6;
    if (!--v16)
    {
      p_opt_inst_meths = (&OBJC_PROTOCOL___RDServer + 40);
      a5 = v25;
      v21 = v23;
      v20 = v24;
      goto LABEL_23;
    }
  }

  v19 = acm_mem_alloc_data(v17);
  acm_mem_alloc_info("<data>", v19, v17, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/LibSerialization.c", 214, "deserializeParameters");
  *(v15 + 1) = v19;
  if (v19)
  {
    memcpy(v19, (a1 + v13), v15[4]);
    v13 += v15[4];
    goto LABEL_20;
  }

  v11 = 70;
  v12 = 4294967292;
LABEL_30:
  p_opt_inst_meths = (&OBJC_PROTOCOL___RDServer + 40);
LABEL_24:
  if (v11 >= *(p_opt_inst_meths + 2304))
  {
    printf("%s: %s: returning, err = %ld.\n", "ACM", "deserializeParameters", v12);
  }

  return v12;
}

uint64_t sub_10007BFB4(_DWORD *a1)
{
  if (!a1)
  {
    return 4294967293;
  }

  switch(*a1)
  {
    case 0:
    case 0xC:
      if (a1[4])
      {
        return 4294967293;
      }

      break;
    case 1:
    case 4:
    case 5:
    case 0xA:
      if (a1[4] != 4)
      {
        return 4294967293;
      }

      break;
    case 2:
    case 6:
    case 7:
      if (a1[4] != 16)
      {
        return 4294967293;
      }

      break;
    case 3:
      if ((a1[4] - 1001) < 0xFFFFFC18)
      {
        return 4294967293;
      }

      break;
    case 8:
    case 9:
    case 0xD:
    case 0xE:
      if (a1[4] != 1)
      {
        return 4294967293;
      }

      break;
    case 0xB:
      if (a1[4] > 0x400u)
      {
        return 4294967293;
      }

      break;
    default:
      return 4294967293;
  }

  return 0;
}

uint64_t crypto_encryptedTextLength(int a1, uint64_t a2)
{
  v2 = a2 + 32;
  if (a1 != 1)
  {
    v2 = 0;
  }

  if (a1 == 2)
  {
    return a2 + 33;
  }

  else
  {
    return v2;
  }
}

unint64_t crypto_plainTextLength(int a1, unint64_t a2)
{
  v2 = a2 - 33;
  v3 = a2 - 32;
  if (a2 <= 0x20)
  {
    v2 = 0;
  }

  if (a2 <= 0x1F)
  {
    v3 = 0;
  }

  if (a1 != 1)
  {
    v3 = 0;
  }

  if (a1 == 2)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_10007C0E8(int a1, const char *a2)
{
  if (a1)
  {
    if (gACMLoggingLevel <= 0x46u)
    {
      printf("%s: %s: CoreCrypto - %s() failed, ccErr: %d.\n", "ACM", "checkCCError", a2, a1);
    }

    return 4294967264;
  }

  else
  {
    if (gACMLoggingLevel <= 0x1Eu)
    {
      printf("%s: %s: CoreCrypto - %s() succeeded, ccErr: %d.\n", "ACM", "checkCCError", a2, 0);
    }

    return 0;
  }
}

void sub_10007C1AC(uint64_t a1, size_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  bzero(&a9 - a2, a2);
}

uint64_t sub_10007C1CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, const char *a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, __int128 a13, __int128 a14)
{
  a13 = 0u;
  a14 = 0u;

  return crypto_generateKeyFromSharedInfo(v14, a4, a5, a2, a3, a8, &a13);
}

uint64_t sub_10007C23C(uint64_t a1, uint64_t a2)
{
  v2 = 70;
  v3 = 4294967293;
  if (!a1 || !a2)
  {
    goto LABEL_14;
  }

  v6 = qword_1000EB528;
  if (qword_1000EB528)
  {
    v3 = 0;
  }

  else
  {
    qword_1000EB528 = ccrng();
    v3 = sub_10007C0E8(-1, "ccrng");
    if (v3)
    {
      v6 = 0;
      v7 = 70;
      goto LABEL_8;
    }

    v6 = qword_1000EB528;
  }

  v7 = 10;
LABEL_8:
  if (v7 >= gACMLoggingLevel)
  {
    printf("%s: %s: returning, err = %ld.\n", "ACM", "platform_rng", v3);
  }

  v2 = 70;
  if (!v3)
  {
    v8 = (*v6)(v6, a2, a1);
    sub_10007C0E8(v8, "platform_rng");
    sub_100001914();
    if (v9)
    {
      v2 = 10;
    }

    else
    {
      v2 = 70;
    }
  }

LABEL_14:
  if (v2 >= gACMLoggingLevel)
  {
    printf("%s: %s: returning, err = %ld.\n", "ACM", "generateRandom", v3);
  }

  return v3;
}

void sub_10007C388()
{
  sub_100001A8C();
  sub_100001860();
  ccaes_gcm_encrypt_mode();
  ccgcm_context_size();
  sub_10007C20C();
  v6 = __chkstk_darwin(v5);
  sub_10007C1AC(v6, v7, v8, v9, v10, v11, v12, v13, v20);
  if (v4)
  {
    if (v2)
    {
      if (v1)
      {
        if (v3)
        {
          if (v0)
          {
            v14 = v1 + 32;
            if (v1 != -32)
            {
              if (v14 > *v0)
              {
                goto LABEL_13;
              }

              sub_10007C1A0();
              v15 = ccgcm_init();
              if (!sub_10007C0E8(v15, "ccgcm_init") && !sub_10007C23C(v3, 16))
              {
                sub_10007C178();
                v16 = ccgcm_set_iv();
                if (!sub_10007C0E8(v16, "ccgcm_set_iv"))
                {
                  sub_10007C1A0();
                  v17 = ccgcm_update();
                  if (!sub_10007C0E8(v17, "ccgcm_update"))
                  {
                    sub_10007C178();
                    v18 = ccgcm_finalize();
                    if (!sub_10007C0E8(v18, "ccgcm_finalize"))
                    {
LABEL_13:
                      *v0 = v14;
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

  ccgcm_context_size();
  cc_clear();
  sub_100002370();
  if (v19)
  {
    sub_10007C230();
    printf("%s: %s: returning, err = %ld.\n", v21, v22, v23);
  }

  sub_1000016B0();
}

void sub_10007C548()
{
  sub_100001A8C();
  sub_100001860();
  ccaes_gcm_encrypt_mode();
  ccgcm_context_size();
  sub_10007C20C();
  v6 = __chkstk_darwin(v5);
  sub_10007C1AC(v6, v7, v8, v9, v10, v11, v12, v13, v24);
  if (v4)
  {
    if (v2)
    {
      if (v1)
      {
        if (v3)
        {
          if (v0)
          {
            v14 = v1 + 33;
            if (v1 != -33)
            {
              if (v14 > *v0)
              {
                goto LABEL_16;
              }

              sub_10007C1A0();
              v15 = ccgcm_init();
              if (!sub_10007C0E8(v15, "ccgcm_init"))
              {
                *v3 = 2;
                v16 = (v3 + 1);
                sub_100001920();
                if (!v17 && !sub_10007C23C(v16, 16))
                {
                  sub_10007C178();
                  v18 = ccgcm_set_iv();
                  if (!sub_10007C0E8(v18, "ccgcm_set_iv"))
                  {
                    v19 = v16 + 16;
                    sub_100001920();
                    if (!v20)
                    {
                      sub_10007C1A0();
                      v21 = ccgcm_update();
                      if (!sub_10007C0E8(v21, "ccgcm_update") && !__CFADD__(v19, v1))
                      {
                        sub_10007C178();
                        v22 = ccgcm_finalize();
                        if (!sub_10007C0E8(v22, "ccgcm_finalize"))
                        {
LABEL_16:
                          *v0 = v14;
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

  ccgcm_context_size();
  cc_clear();
  sub_100002370();
  if (v23)
  {
    sub_10007C230();
    printf("%s: %s: returning, err = %ld.\n", v25, v26, v27);
  }

  sub_1000016B0();
}

void sub_10007C738()
{
  sub_100001A8C();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  ccaes_gcm_decrypt_mode();
  ccgcm_context_size();
  sub_10007C20C();
  v11 = __chkstk_darwin(v10);
  sub_10007C1AC(v11, v12, v13, v14, v15, v16, v17, v18, v25);
  if (v9)
  {
    if (v7)
    {
      if (v5)
      {
        if (v3)
        {
          if (v1)
          {
            v19 = v5 >= 0x20;
            v20 = v5 - 32;
            if (v19)
            {
              if (*v1 < v20)
              {
                goto LABEL_13;
              }

              sub_10007C1A0();
              v21 = ccgcm_init();
              if (!sub_10007C0E8(v21, "ccgcm_init"))
              {
                sub_10007C178();
                v22 = ccgcm_set_iv();
                if (!sub_10007C0E8(v22, "ccgcm_set_iv"))
                {
                  sub_10007C1A0();
                  v23 = ccgcm_update();
                  if (!sub_10007C0E8(v23, "ccgcm_update"))
                  {
                    sub_10007C178();
                    ccgcm_finalize();
                    v24 = cc_cmp_safe();
                    if (!sub_10007C0E8(v24, "cc_cmp_safe"))
                    {
LABEL_13:
                      *v1 = v20;
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

  ccgcm_context_size();
  cc_clear();
  sub_100002370();
  if (v19)
  {
    sub_10007C230();
    printf("%s: %s: returning, err = %ld.\n", v26, 0, 0);
  }

  sub_1000016B0();
}

void sub_10007C914()
{
  sub_100001A8C();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  ccaes_gcm_decrypt_mode();
  ccgcm_context_size();
  sub_10007C20C();
  v11 = __chkstk_darwin(v10);
  sub_10007C1AC(v11, v12, v13, v14, v15, v16, v17, v18, v27);
  if (v9)
  {
    if (v7)
    {
      if (v5)
      {
        if (v3)
        {
          if (v1)
          {
            if (v5 >= 0x22)
            {
              v19 = v5 - 33;
              if (*v1 < v19)
              {
                goto LABEL_16;
              }

              sub_100001920();
              if (!v20 && *v7 == 2)
              {
                sub_10007C1A0();
                v21 = ccgcm_init();
                if (!sub_10007C0E8(v21, "ccgcm_init"))
                {
                  sub_10007C178();
                  v22 = ccgcm_set_iv();
                  if (!sub_10007C0E8(v22, "ccgcm_set_iv"))
                  {
                    sub_100001920();
                    if (!v23)
                    {
                      sub_10007C1A0();
                      v24 = ccgcm_update();
                      if (!sub_10007C0E8(v24, "ccgcm_update") && !__CFADD__(v7 + 17, v19))
                      {
                        sub_10007C178();
                        ccgcm_finalize();
                        v25 = cc_cmp_safe();
                        if (!sub_10007C0E8(v25, "cc_cmp_safe"))
                        {
LABEL_16:
                          *v1 = v19;
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

  ccgcm_context_size();
  cc_clear();
  sub_100002370();
  if (v26)
  {
    sub_10007C230();
    printf("%s: %s: returning, err = %ld.\n", v28, 0, 0);
  }

  sub_1000016B0();
}

uint64_t LibCall_ACMKernelControl_Block(uint64_t a1)
{
  v1 = __chkstk_darwin(a1);
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = v1;
  if (gACMLoggingLevel <= 0xAu)
  {
    printf("%s: %s: called.\n", "ACM", "LibCall_ACMKernelControl_Block");
  }

  bzero(v18, 0x2000uLL);
  v17 = 0x2000;
  v13 = LibCall_ACMKernelControl(v12, v11, v9, v7, v5, v18, &v17);
  if (v3)
  {
    if (v17)
    {
      v14 = v18;
    }

    else
    {
      v14 = 0;
    }

    (*(v3 + 16))(v3, v14);
  }

  if (v13)
  {
    v15 = 70;
  }

  else
  {
    v15 = 10;
  }

  if (v15 >= gACMLoggingLevel)
  {
    printf("%s: %s: returning, err = %ld.\n", "ACM", "LibCall_ACMKernelControl_Block", v13);
  }

  return v13;
}

uint64_t LibCall_ACMSEPControl_Block(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (gACMLoggingLevel <= 0xAu)
  {
    printf("%s: %s: called.\n", "ACM", "LibCall_ACMSEPControl_Block");
  }

  bzero(v24, 0x400uLL);
  LibCall_ACMSEPControl(a1, a2, a3, a4, a5, a6, a7, v24, &v23, v21, v22, 1024, v24[0], v24[1], v24[2], v24[3], v24[4], v24[5], v24[6], v24[7], v24[8]);
  v17 = v16;
  if (a8)
  {
    if (v23)
    {
      v18 = v24;
    }

    else
    {
      v18 = 0;
    }

    (*(a8 + 16))(a8, v18);
  }

  if (v17)
  {
    v19 = 70;
  }

  else
  {
    v19 = 10;
  }

  if (v19 >= gACMLoggingLevel)
  {
    printf("%s: %s: returning, err = %ld.\n", "ACM", "LibCall_ACMSEPControl_Block", v17);
  }

  return v17;
}

uint64_t LibCall_ACMGlobalContextVerifyPolicy_Block(uint64_t (*a1)(void), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (gACMLoggingLevel <= 0xAu)
  {
    printf("%s: %s: called.\n", "ACM", "LibCall_ACMGlobalContextVerifyPolicy_Block");
  }

  v15 = 0;
  result = LibCall_ACMContextCreate(a1, a2, &v15, 0, 0, 1);
  if (result)
  {
    if (a7)
    {
      result = (*(a7 + 16))(a7, result, 0, 0);
    }
  }

  else
  {
    result = LibCall_ACMContextVerifyPolicyEx_Block(a1, a2, v15, a3, a4, a5, a6, 0xFFFFFFFFLL, a7);
  }

  if (v15)
  {
    result = LibCall_ACMContextDelete(a1, a2, v15, 1);
  }

  if (gACMLoggingLevel <= 0xAu)
  {
    return printf("%s: %s: returning.\n", "ACM", "LibCall_ACMGlobalContextVerifyPolicy_Block");
  }

  return result;
}

uint64_t LibCall_ACMGetAclAuthMethod_Block(uint64_t result, uint64_t a2, __n128 *a3, uint64_t a4)
{
  v7 = result;
  if (gACMLoggingLevel <= 0xAu)
  {
    result = printf("%s: %s: called.\n", "ACM", "LibCall_ACMGetAclAuthMethod_Block");
  }

  memset(v13, 0, sizeof(v13));
  v11 = 256;
  if (v7 && a3 && a4)
  {
    v12 = 0uLL;
    v10 = 16;
    AclAuthMethod_Serialize = LibSer_GetAclAuthMethod_Serialize(a3, &v12, &v10);
    if (!v9 && v10 == 16)
    {
      v7(a2, 31, 0, &v12, 16, v13, &v11, AclAuthMethod_Serialize);
    }

    goto LABEL_9;
  }

  if (a4)
  {
LABEL_9:
    result = (*(a4 + 16))(a4);
  }

  if (gACMLoggingLevel <= 0xAu)
  {
    return printf("%s: %s: returning.\n", "ACM", "LibCall_ACMGetAclAuthMethod_Block");
  }

  return result;
}

rsize_t sub_10007D148(rsize_t result, int a2, unsigned __int8 a3, uint64_t a4, uint64_t a5, uint64_t a6, const void *a7, uint64_t a8, char a9, uint64_t a10, int a11, unsigned int a12, uint64_t a13)
{
  v20 = result;
  if (gACMLoggingLevel <= 0xAu)
  {
    result = printf("%s: %s: called.\n", "ACM", "verifyAclConstraintForOperationCommandInternal");
  }

  v25 = 0;
  v24 = 0;
  if (a4 && a5 && a6 && a13)
  {
    v21 = verifyAclConstraintInternal(v20, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, &v24, &v25);
    v22 = v25;
    v23 = v24;
  }

  else
  {
    if (!a13)
    {
      goto LABEL_10;
    }

    v22 = 0;
    v23 = 0;
    v21 = 4294967293;
  }

  (*(a13 + 16))(a13, v21, v23, v22);
  result = v25;
  if (v25)
  {
    result = Util_DeallocRequirement(v25);
  }

LABEL_10:
  if (gACMLoggingLevel <= 0xAu)
  {
    return printf("%s: %s: returning.\n", "ACM", "verifyAclConstraintForOperationCommandInternal");
  }

  return result;
}

uint64_t Util_GetBitCount(uint64_t a1)
{
  v1 = vcnt_s8(a1);
  v1.i16[0] = vaddlv_u8(v1);
  return v1.u32[0];
}

BOOL Util_isNullOrZeroMemory(_BYTE *a1, uint64_t a2)
{
  if (!a1)
  {
    return 1;
  }

  if (*a1)
  {
    return 0;
  }

  return memcmp(a1, a1 + 1, a2 - 1) == 0;
}

BOOL Util_isNonNullEqualMemory(void *__s1, size_t __n, void *__s2, uint64_t a4)
{
  if (__n != a4)
  {
    return 0;
  }

  result = 0;
  if (__s1)
  {
    if (__s2)
    {
      return memcmp(__s1, __s2, __n) == 0;
    }
  }

  return result;
}

char *Util_hexDumpToStrHelper(char *result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  if (!result && a2)
  {
    sub_10007D5D4();
  }

  if (!a3 && a4)
  {
    sub_10007D5A8();
  }

  if (a2 >= a4)
  {
    v4 = a4;
  }

  else
  {
    v4 = a2;
  }

  if (v4)
  {
    v5 = (a3 + 1);
    do
    {
      *(v5 - 1) = a0123456789abcd[*result >> 4];
      v6 = *result++;
      *v5 = a0123456789abcd[v6 & 0xF];
      v5 += 2;
      --v4;
    }

    while (v4);
  }

  return result;
}

unint64_t Util_KeybagLockStateToEnvVar(unsigned int a1)
{
  v1 = 0x2010103020201uLL >> (8 * a1);
  if (a1 >= 7)
  {
    LOBYTE(v1) = 1;
  }

  return v1 & 3;
}

void Util_SafeDeallocParameters(unsigned int *a1, unsigned int a2)
{
  if (a1)
  {
    v3 = a2;
    if (a2)
    {
      v4 = a1 + 4;
      v5 = a2;
      do
      {
        v6 = *(v4 - 1);
        if (v6)
        {
          v7 = *v4;
          acm_mem_free_info("<data>", *(v4 - 1), v7, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/CommonUtil.c", 118, "Util_SafeDeallocParameters");
          acm_mem_free_data(v6, v7);
        }

        v4 += 6;
        --v5;
      }

      while (v5);
    }

    acm_mem_free_info("array of ACMParameter", a1, 24 * v3, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/CommonUtil.c", 121, "Util_SafeDeallocParameters");

    acm_mem_free(a1, 24 * v3);
  }
}

uint64_t ACMContextCreateWithFlags(uint64_t *a1, uint64_t a2)
{
  if (byte_1000EA901 <= 0xAu && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v10 = "ACMLib";
    v11 = 2080;
    v12 = "ACMContextCreateWithFlags";
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "%s: %s: called.\n", buf, 0x16u);
  }

  v8 = 0;
  v4 = LibCall_ACMContextCreate(sub_100080A44, &v8, a1, a2, &byte_1000EA901, 1);
  if (v4)
  {
    sub_1000806C0();
    v5 = 70;
  }

  else
  {
    v5 = 10;
    if (a1 && byte_1000EA901 <= 0x28u)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
      {
        v6 = *a1;
        if (*a1)
        {
          LODWORD(v6) = *(v6 + 16);
        }

        *buf = 136315906;
        v10 = "ACMLib";
        v11 = 2080;
        v12 = "ACMContextCreateWithFlags";
        v13 = 1024;
        LODWORD(v14[0]) = v6;
        WORD2(v14[0]) = 1024;
        *(v14 + 6) = a2;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "%s: %s: CS[%u] created (flags=0x%x).\n", buf, 0x22u);
      }

      v5 = 10;
    }
  }

  if (v5 >= byte_1000EA901 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v10 = "ACMLib";
    v11 = 2080;
    v12 = "ACMContextCreateWithFlags";
    v13 = 2048;
    v14[0] = v4;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "%s: %s: returning, err = %ld.\n", buf, 0x20u);
  }

  return v4;
}

uint64_t ACMContextCreateWithExternalForm(uint64_t a1, uint64_t a2)
{
  if (byte_1000EA901 <= 0xAu && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v10 = "ACMLib";
    v11 = 2080;
    v12 = "ACMContextCreateWithExternalForm";
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "%s: %s: called.\n", buf, 0x16u);
  }

  v8 = 0;
  v4 = LibCall_ACMContextCreateWithExternalForm(sub_100080A44, &v8, a1, a2, &byte_1000EA901, 1);
  if (v4)
  {
    if (byte_1000EA901 <= 0x28u && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
    {
      v5 = *(v4 + 16);
      *buf = 136315650;
      v10 = "ACMLib";
      v11 = 2080;
      v12 = "ACMContextCreateWithExternalForm";
      v13 = 1024;
      LODWORD(v14) = v5;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "%s: %s: CS[%u] acquired.\n", buf, 0x1Cu);
    }

    v6 = 30;
  }

  else
  {
    sub_1000806C0();
    v6 = 70;
  }

  if (v6 >= byte_1000EA901 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v10 = "ACMLib";
    v11 = 2080;
    v12 = "ACMContextCreateWithExternalForm";
    v13 = 2048;
    v14 = v4;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "%s: %s: returning, -> ctx = %p.\n", buf, 0x20u);
  }

  return v4;
}

uint64_t ACMContextDelete(_DWORD *a1, int a2)
{
  v4 = byte_1000EA901;
  if (byte_1000EA901 <= 0xAu && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v12 = "ACMLib";
    v13 = 2080;
    v14 = "ACMContextDelete";
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "%s: %s: called.\n", buf, 0x16u);
    v4 = byte_1000EA901;
  }

  if (a1 && v4 <= 0x28 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    v5 = a1[4];
    v6 = "NO";
    *buf = 136315906;
    v12 = "ACMLib";
    v14 = "ACMContextDelete";
    v13 = 2080;
    if (a2)
    {
      v6 = "YES";
    }

    v15 = 1024;
    LODWORD(v16[0]) = v5;
    WORD2(v16[0]) = 2080;
    *(v16 + 6) = v6;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "%s: %s: CS[%u] deleted (contextDestroyed=%s).\n", buf, 0x26u);
  }

  v10 = a1;
  v7 = LibCall_ACMContextDelete(sub_100080A44, &v10, a1, a2);
  if (v7)
  {
    v8 = 70;
  }

  else
  {
    v8 = 10;
  }

  if (v8 >= byte_1000EA901 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v12 = "ACMLib";
    v13 = 2080;
    v14 = "ACMContextDelete";
    v15 = 2048;
    v16[0] = v7;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "%s: %s: returning, err = %ld.\n", buf, 0x20u);
  }

  return v7;
}

void ACMContextGetExternalForm(const void *a1, uint64_t a2)
{
  if (byte_1000EA901 <= 0xAu && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    v4 = 136315394;
    v5 = "ACMLib";
    v6 = 2080;
    v7 = "ACMContextGetExternalForm";
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "%s: %s: called.\n", &v4, 0x16u);
  }

  if (a1 && a2)
  {
    if (!sub_100080C08() && !sub_100080DBC(a1, 19, 0, a1, 0x10uLL, 0, 0))
    {
      (*(a2 + 16))(a2, a1, 16);
      goto LABEL_9;
    }
  }

  else if (!a2)
  {
    goto LABEL_9;
  }

  sub_1000810AC(a2);
LABEL_9:
  if (byte_1000EA901 <= 0xAu && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    v4 = 136315394;
    v5 = "ACMLib";
    v6 = 2080;
    v7 = "ACMContextGetExternalForm";
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "%s: %s: returning.\n", &v4, 0x16u);
  }
}

uint64_t ACMContextRemoveCredentialsByType(_OWORD *a1, int a2)
{
  if (byte_1000EA901 <= 0xAu && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    v5 = 136315394;
    v6 = "ACMLib";
    v7 = 2080;
    v8 = "ACMContextRemoveCredentialsByType";
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "%s: %s: called.\n", &v5, 0x16u);
  }

  return ACMContextRemoveCredentialsByTypeAndScope(a1, a2, 1);
}

uint64_t ACMContextContainsCredentialType(uint64_t a1, int a2)
{
  if (byte_1000EA901 <= 0xAu && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    v5 = 136315394;
    v6 = "ACMLib";
    v7 = 2080;
    v8 = "ACMContextContainsCredentialType";
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "%s: %s: called.\n", &v5, 0x16u);
  }

  return ACMContextContainsCredentialTypeEx(a1, a2, 0);
}

uint64_t ACMContextVerifyPolicy(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (byte_1000EA901 <= 0xAu && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v11 = "ACMLib";
    v12 = 2080;
    v13 = "ACMContextVerifyPolicy";
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "%s: %s: called.\n", buf, 0x16u);
  }

  v9 = a1;
  v6 = LibCall_ACMContextVerifyPolicy_Block(sub_100080A44, &v9, a1, a2, a3);
  if (v6)
  {
    v7 = 70;
  }

  else
  {
    v7 = 10;
  }

  if (v7 >= byte_1000EA901 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v11 = "ACMLib";
    v12 = 2080;
    v13 = "ACMContextVerifyPolicy";
    v14 = 2048;
    v15 = v6;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "%s: %s: returning, err = %ld.\n", buf, 0x20u);
  }

  return v6;
}

uint64_t ACMContextVerifyPolicyWithPreflight(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (byte_1000EA901 <= 0xAu && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v13 = "ACMLib";
    v14 = 2080;
    v15 = "ACMContextVerifyPolicyWithPreflight";
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "%s: %s: called.\n", buf, 0x16u);
  }

  v11 = a1;
  v8 = LibCall_ACMContextVerifyPolicyWithPreflight_Block(sub_100080A44, &v11, a1, a2, a3, a4);
  if (v8)
  {
    v9 = 70;
  }

  else
  {
    v9 = 10;
  }

  if (v9 >= byte_1000EA901 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v13 = "ACMLib";
    v14 = 2080;
    v15 = "ACMContextVerifyPolicyWithPreflight";
    v16 = 2048;
    v17 = v8;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "%s: %s: returning, err = %ld.\n", buf, 0x20u);
  }

  return v8;
}

void ACMContextVerifyPolicyEx(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (byte_1000EA901 <= 0xAu && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v16 = "ACMLib";
    v17 = 2080;
    v18 = "ACMContextVerifyPolicyEx";
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "%s: %s: called.\n", buf, 0x16u);
  }

  v14 = a1;
  LibCall_ACMContextVerifyPolicyEx_Block(sub_100080A44, &v14, a1, a2, a3, a4, a5, a6, a7);
  if (byte_1000EA901 <= 0xAu && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v16 = "ACMLib";
    v17 = 2080;
    v18 = "ACMContextVerifyPolicyEx";
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "%s: %s: returning.\n", buf, 0x16u);
  }
}

void ACMGlobalContextVerifyPolicy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (byte_1000EA901 <= 0xAu && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v13 = "ACMLib";
    v14 = 2080;
    v15 = "ACMGlobalContextVerifyPolicy";
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "%s: %s: called.\n", buf, 0x16u);
  }

  v11 = 0;
  v10 = ACMContextCreateWithFlags(&v11, 0);
  if (v10)
  {
    if (a5)
    {
      (*(a5 + 16))(a5, v10, 0, 0);
    }
  }

  else
  {
    ACMContextVerifyPolicyEx(v11, a1, a2, a3, a4, 0xFFFFFFFFLL, a5);
  }

  if (v11)
  {
    ACMContextDelete(v11, 1);
  }

  if (byte_1000EA901 <= 0xAu && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v13 = "ACMLib";
    v14 = 2080;
    v15 = "ACMGlobalContextVerifyPolicy";
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "%s: %s: returning.\n", buf, 0x16u);
  }
}

uint64_t ACMContextGetTrackingNumber(uint64_t result)
{
  if (result)
  {
    return *(result + 16);
  }

  return result;
}

uint64_t ACMParseAclAndCopyConstraintCharacteristics(const void *a1, uint64_t a2, uint64_t a3)
{
  __n = 4096;
  size = 0;
  if (byte_1000EA901 <= 0xAu && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v22 = "ACMLib";
    v23 = 2080;
    v24 = "ACMParseAclAndCopyConstraintCharacteristics";
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "%s: %s: called.\n", buf, 0x16u);
  }

  v6 = 4294967293;
  if (!a1 || !a2 || !a3)
  {
    goto LABEL_28;
  }

  SerializedProcessAclSize = sub_100080C08();
  if (SerializedProcessAclSize || (SerializedProcessAclSize = GetSerializedProcessAclSize(0, a1, a2, 0, 0, 0, 0, 0, &size), SerializedProcessAclSize))
  {
    v6 = SerializedProcessAclSize;
LABEL_28:
    (*(a3 + 16))(a3, v6, 0, 4096);
    goto LABEL_19;
  }

  v8 = size;
  v9 = acm_mem_alloc_data(size);
  acm_mem_alloc_info("<data>", v9, v8, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/ACMLib/ACMLib.c", 727, "ACMParseAclAndCopyConstraintCharacteristics");
  if (!v9)
  {
    v6 = 4294967292;
    goto LABEL_28;
  }

  v10 = SerializeProcessAcl(0, a1, a2, 0, 0, 0, 0, 0, v9, &size);
  if (v10)
  {
    v6 = v10;
    v12 = 0;
    v14 = 0;
    v11 = 4096;
    goto LABEL_15;
  }

  v11 = 4096;
  v12 = acm_mem_alloc_data(0x1000uLL);
  acm_mem_alloc_info("<data>", v12, 4096, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/ACMLib/ACMLib.c", 733, "ACMParseAclAndCopyConstraintCharacteristics");
  if (!v12)
  {
    v14 = 0;
LABEL_31:
    v6 = 4294967292;
    goto LABEL_15;
  }

  v13 = sub_100080DBC(0, 20, 0, v9, size, v12, &__n);
  v11 = __n;
  if (v13)
  {
    v6 = v13;
    v14 = 0;
    goto LABEL_15;
  }

  v14 = acm_mem_alloc_data(__n);
  acm_mem_alloc_info("<data>", v14, v11, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/ACMLib/ACMLib.c", 739, "ACMParseAclAndCopyConstraintCharacteristics");
  v11 = __n;
  if (!v14)
  {
    goto LABEL_31;
  }

  memcpy(v14, v12, __n);
  v6 = 0;
  v11 = __n;
LABEL_15:
  (*(a3 + 16))(a3, v6, v14, v11);
  v15 = size;
  acm_mem_free_info("<data>", v9, size, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/ACMLib/ACMLib.c", 750, "ACMParseAclAndCopyConstraintCharacteristics");
  acm_mem_free_data(v9, v15);
  if (v12)
  {
    acm_mem_free_info("<data>", v12, 0x1000uLL, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/ACMLib/ACMLib.c", 753, "ACMParseAclAndCopyConstraintCharacteristics");
    acm_mem_free_data(v12, 0x1000uLL);
  }

  if (v14)
  {
    v16 = __n;
    acm_mem_free_info("<data>", v14, __n, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/ACMLib/ACMLib.c", 756, "ACMParseAclAndCopyConstraintCharacteristics");
    acm_mem_free_data(v14, v16);
  }

LABEL_19:
  if (v6)
  {
    v17 = 70;
  }

  else
  {
    v17 = 10;
  }

  if (v17 >= byte_1000EA901 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v22 = "ACMLib";
    v23 = 2080;
    v24 = "ACMParseAclAndCopyConstraintCharacteristics";
    v25 = 2048;
    v26 = v6;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "%s: %s: returning, err = %ld.\n", buf, 0x20u);
  }

  return v6;
}

void ACMGetAclAuthMethod(__n128 *a1, uint64_t a2)
{
  if (byte_1000EA901 <= 0xAu && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v6 = "ACMLib";
    v7 = 2080;
    v8 = "ACMGetAclAuthMethod";
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "%s: %s: called.\n", buf, 0x16u);
  }

  v4 = a1;
  LibCall_ACMGetAclAuthMethod_Block(sub_100080A44, &v4, a1, a2);
  if (byte_1000EA901 <= 0xAu && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v6 = "ACMLib";
    v7 = 2080;
    v8 = "ACMGetAclAuthMethod";
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "%s: %s: returning.\n", buf, 0x16u);
  }
}

uint64_t ACMSetEnvironmentVariable(int a1)
{
  if (byte_1000EA901 <= 0xAu && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v7 = "ACMLib";
    v8 = 2080;
    v9 = "ACMSetEnvironmentVariable";
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "%s: %s: called.\n", buf, 0x16u);
  }

  LibCall_ACMSetEnvironmentVariable();
  v3 = v2;
  if (v2)
  {
    v4 = 70;
  }

  else
  {
    v4 = 10;
  }

  if (v4 >= byte_1000EA901 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    *buf = 136315906;
    v7 = "ACMLib";
    v8 = 2080;
    v9 = "ACMSetEnvironmentVariable";
    v10 = 2048;
    v11 = v3;
    v12 = 1024;
    v13 = a1;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "%s: %s: returning, err = %ld, var=%u.\n", buf, 0x26u);
  }

  return v3;
}

uint64_t ACMSetEnvironmentVariableWithAccessPolicy(int a1)
{
  if (byte_1000EA901 <= 0xAu && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v7 = "ACMLib";
    v8 = 2080;
    v9 = "ACMSetEnvironmentVariableWithAccessPolicy";
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "%s: %s: called.\n", buf, 0x16u);
  }

  LibCall_ACMSetEnvironmentVariable();
  v3 = v2;
  if (v2)
  {
    v4 = 70;
  }

  else
  {
    v4 = 10;
  }

  if (v4 >= byte_1000EA901 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    *buf = 136315906;
    v7 = "ACMLib";
    v8 = 2080;
    v9 = "ACMSetEnvironmentVariableWithAccessPolicy";
    v10 = 2048;
    v11 = v3;
    v12 = 1024;
    v13 = a1;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "%s: %s: returning, err = %ld, var=%u.\n", buf, 0x26u);
  }

  return v3;
}

uint64_t ACMGetEnvironmentVariable(uint64_t a1, uint64_t a2)
{
  if (byte_1000EA901 <= 0xAu && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v9 = "ACMLib";
    v10 = 2080;
    v11 = "ACMGetEnvironmentVariable";
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "%s: %s: called.\n", buf, 0x16u);
  }

  v7 = 0;
  v4 = LibCall_ACMGetEnvironmentVariable_Block(sub_100080A44, &v7, a1, a2);
  if (v4)
  {
    v5 = 70;
  }

  else
  {
    v5 = 10;
  }

  if (v5 >= byte_1000EA901 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    *buf = 136315906;
    v9 = "ACMLib";
    v10 = 2080;
    v11 = "ACMGetEnvironmentVariable";
    v12 = 2048;
    v13 = v4;
    v14 = 1024;
    v15 = a1;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "%s: %s: returning, err = %ld, var=%u.\n", buf, 0x26u);
  }

  return v4;
}

uint64_t ACMKernelControl(int a1)
{
  if (byte_1000EA901 <= 0xAu && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v6 = "ACMLib";
    v7 = 2080;
    v8 = "ACMKernelControl";
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "%s: %s: called.\n", buf, 0x16u);
  }

  v2 = LibCall_ACMKernelControl_Block(sub_100080A44);
  if (v2)
  {
    v3 = 70;
  }

  else
  {
    v3 = 10;
  }

  if (v3 >= byte_1000EA901 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    *buf = 136315906;
    v6 = "ACMLib";
    v7 = 2080;
    v8 = "ACMKernelControl";
    v9 = 2048;
    v10 = v2;
    v11 = 1024;
    v12 = a1;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "%s: %s: returning, err = %ld, code=%u.\n", buf, 0x26u);
  }

  return v2;
}

void ACMGlobalContextCredentialGetProperty(int a1, int a2, uint64_t a3)
{
  if (byte_1000EA901 <= 0xAu && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v8 = "ACMLib";
    v9 = 2080;
    v10 = "ACMGlobalContextCredentialGetProperty";
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "%s: %s: called.\n", buf, 0x16u);
  }

  v6 = 0;
  LibCall_ACMGlobalContextCredentialGetProperty_Block(sub_100080A44, &v6, a1, a2, a3);
  if (byte_1000EA901 <= 0xAu && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v8 = "ACMLib";
    v9 = 2080;
    v10 = "ACMGlobalContextCredentialGetProperty";
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "%s: %s: returning.\n", buf, 0x16u);
  }
}

void ACMContextCredentialGetProperty(__n128 *a1, unsigned __int32 a2, unsigned __int32 a3, uint64_t a4)
{
  if (byte_1000EA901 <= 0xAu && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    *&buf[4] = "ACMLib";
    *&buf[12] = 2080;
    *&buf[14] = "ACMContextCredentialGetProperty";
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "%s: %s: called.\n", buf, 0x16u);
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  memset(buf, 0, sizeof(buf));
  v10 = 256;
  if (a4)
  {
    v9 = a1;
    v8 = LibCall_ACMContextCredentialGetProperty(sub_100080A44, &v9, a1, a2, a3, buf, &v10);
    (*(a4 + 16))(a4, v8, buf, v10);
  }

  if (byte_1000EA901 <= 0xAu && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    *v11 = 136315394;
    v12 = "ACMLib";
    v13 = 2080;
    v14 = "ACMContextCredentialGetProperty";
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "%s: %s: returning.\n", v11, 0x16u);
  }
}

uint64_t ACMContextSetData(uint64_t a1, int a2, int a3, int a4)
{
  if (byte_1000EA901 <= 0xAu && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    v11 = 136315394;
    v12 = "ACMLib";
    v13 = 2080;
    v14 = "ACMContextSetData";
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "%s: %s: called.\n", &v11, 0x16u);
  }

  v8 = ACMContextSetDataEx(a1, a2, 0, 0, a3, a4);
  if (v8)
  {
    v9 = 70;
  }

  else
  {
    v9 = 10;
  }

  if (v9 >= byte_1000EA901 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    v11 = 136315650;
    v12 = "ACMLib";
    v13 = 2080;
    v14 = "ACMContextSetData";
    v15 = 2048;
    v16 = v8;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "%s: %s: returning, err = %ld.\n", &v11, 0x20u);
  }

  return v8;
}

uint64_t ACMContextSetDataEx(uint64_t a1, int a2, int a3, int a4, int a5, int a6)
{
  if (byte_1000EA901 <= 0xAu && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    *&buf[4] = "ACMLib";
    *&buf[12] = 2080;
    *&buf[14] = "ACMContextSetDataEx";
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "%s: %s: called.\n", buf, 0x16u);
  }

  v12 = LibCall_ACMContextSetData(sub_100080A44, &v16, a1, a2, a3, a4, a5, a6, v15, a1, *buf, *&buf[8], *&buf[16], v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28);
  if (v12)
  {
    v13 = 70;
  }

  else
  {
    v13 = 10;
  }

  if (v13 >= byte_1000EA901 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    *&buf[4] = "ACMLib";
    *&buf[12] = 2080;
    *&buf[14] = "ACMContextSetDataEx";
    *&buf[22] = 2048;
    v18 = v12;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "%s: %s: returning, err = %ld.\n", buf, 0x20u);
  }

  return v12;
}

uint64_t ACMContextGetData(uint64_t a1, int a2, uint64_t a3)
{
  if (byte_1000EA901 <= 0xAu && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    v9 = 136315394;
    v10 = "ACMLib";
    v11 = 2080;
    v12 = "ACMContextGetData";
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "%s: %s: called.\n", &v9, 0x16u);
  }

  Data = ACMContextGetDataEx(a1, a2, 0, 0, a3);
  if (Data)
  {
    v7 = 70;
  }

  else
  {
    v7 = 10;
  }

  if (v7 >= byte_1000EA901 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    v9 = 136315650;
    v10 = "ACMLib";
    v11 = 2080;
    v12 = "ACMContextGetData";
    v13 = 2048;
    v14 = Data;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "%s: %s: returning, err = %ld.\n", &v9, 0x20u);
  }

  return Data;
}

uint64_t ACMContextGetDataProperty(uint64_t a1, unsigned __int16 a2, unsigned __int16 a3, uint64_t a4)
{
  if (byte_1000EA901 <= 0xAu && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    v11 = 136315394;
    v12 = "ACMLib";
    v13 = 2080;
    v14 = "ACMContextGetDataProperty";
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "%s: %s: called.\n", &v11, 0x16u);
  }

  Data = ACMContextGetData(a1, a2 | (a3 << 16), a4);
  if (Data)
  {
    v9 = 70;
  }

  else
  {
    v9 = 10;
  }

  if (v9 >= byte_1000EA901 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    v11 = 136315650;
    v12 = "ACMLib";
    v13 = 2080;
    v14 = "ACMContextGetDataProperty";
    v15 = 2048;
    v16 = Data;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "%s: %s: returning, err = %ld.\n", &v11, 0x20u);
  }

  return Data;
}

uint64_t ACMContextCopyData(__int128 *a1, uint64_t a2, __int128 *a3, uint64_t a4)
{
  if (byte_1000EA901 <= 0xAu && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v13 = "ACMLib";
    v14 = 2080;
    v15 = "ACMContextCopyData";
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "%s: %s: called.\n", buf, 0x16u);
  }

  v11 = 0;
  v8 = LibCall_ACMContextCopyData(sub_100080A44, &v11, a1, a2, a3, a4);
  if (v8)
  {
    v9 = 70;
  }

  else
  {
    v9 = 10;
  }

  if (v9 >= byte_1000EA901 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v13 = "ACMLib";
    v14 = 2080;
    v15 = "ACMContextCopyData";
    v16 = 2048;
    v17 = v8;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "%s: %s: returning, err = %ld.\n", buf, 0x20u);
  }

  return v8;
}

uint64_t ACMContextGetInfo(__int128 *a1, int a2, void *a3)
{
  if (byte_1000EA901 <= 0xAu && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v11 = "ACMLib";
    v12 = 2080;
    v13 = "ACMContextGetInfo";
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "%s: %s: called.\n", buf, 0x16u);
  }

  v9 = a1;
  v6 = LibCall_ACMContextGetInfo(sub_100080A44, &v9, a1, a2, a3);
  if (v6)
  {
    v7 = 70;
  }

  else
  {
    v7 = 10;
  }

  if (v7 >= byte_1000EA901 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v11 = "ACMLib";
    v12 = 2080;
    v13 = "ACMContextGetInfo";
    v14 = 2048;
    v15 = v6;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "%s: %s: returning, err = %ld.\n", buf, 0x20u);
  }

  return v6;
}

void sub_1000806C0()
{
  if (byte_1000EA901 <= 0xAu && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v4 = "ACMLib";
    v5 = 2080;
    v6 = "updateLogLevelFromKext";
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "%s: %s: called.\n", buf, 0x16u);
  }

  output = 0;
  outputCnt = 1;
  if (IOConnectCallScalarMethod(dword_1000EB534, 2u, 0, 0, &output, &outputCnt))
  {
    goto LABEL_12;
  }

  v0 = output;
  byte_1000EA901 = output;
  if (output <= 0x1EuLL && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    sub_1000810D4();
LABEL_12:
    v0 = byte_1000EA901;
  }

  if (v0 <= 0xA && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v4 = "ACMLib";
    v5 = 2080;
    v6 = "updateLogLevelFromKext";
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "%s: %s: returning.\n", buf, 0x16u);
  }
}

uint64_t sub_10008092C(uint64_t a1, char a2, uint64_t a3, uint64_t a4, size_t a5)
{

  return sub_100080DBC(a1, a2, 0, v5, a5, 0, 0);
}

uint64_t sub_100080964()
{
  v3 = *(v2 + 8 * v1);
  v4 = *(v0 + 16);
  return v0;
}

uint64_t sub_100080A44(uint64_t *a1, char a2, char a3, const void *a4, size_t a5, void *a6, size_t *a7)
{
  if (byte_1000EA901 <= 0xAu && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    sub_100080920();
    sub_1000019F0();
    _os_log_impl(v14, v15, v16, v17, v18, 0x16u);
  }

  if (a1)
  {
    v19 = sub_100080C08();
    v20 = 70;
    if (v19)
    {
      v21 = v19;
    }

    else
    {
      v21 = sub_100080DBC(*a1, a2, a3, a4, a5, a6, a7);
      if (v21)
      {
        v20 = 70;
      }

      else
      {
        v20 = 10;
      }
    }
  }

  else
  {
    v20 = 70;
    v21 = 4294967293;
  }

  if (v20 >= byte_1000EA901 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    sub_100080A10();
    sub_100080958();
    sub_100001784();
    sub_1000019F0();
    _os_log_impl(v22, v23, v24, v25, v26, 0x20u);
  }

  return v21;
}

uint64_t sub_100080C08()
{
  if (byte_1000EA901 <= 0xAu && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    sub_100002388();
    sub_1000019F0();
    _os_log_impl(v0, v1, v2, v3, v4, 0x16u);
  }

  if (byte_1000EB530)
  {
    v5 = 0;
  }

  else
  {
    v6 = IOServiceMatching("AppleCredentialManager");
    MatchingService = IOServiceGetMatchingService(kIOMasterPortDefault, v6);
    if (!MatchingService)
    {
      v9 = 70;
      v5 = 4294967291;
      goto LABEL_10;
    }

    v8 = MatchingService;
    v5 = IOServiceOpen(MatchingService, mach_task_self_, 0, &dword_1000EB534);
    if (v5)
    {
      v9 = 70;
      goto LABEL_10;
    }

    IOObjectRelease(v8);
    byte_1000EB530 = 1;
  }

  v9 = 10;
LABEL_10:
  if (v9 >= byte_1000EA901 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    sub_100080A10();
    sub_100080958();
    sub_100001784();
    sub_1000019F0();
    _os_log_impl(v10, v11, v12, v13, v14, 0x20u);
  }

  return v5;
}

uint64_t sub_100080DBC(uint64_t a1, char a2, char a3, const void *a4, size_t a5, void *a6, size_t *a7)
{
  if (byte_1000EA901 <= 0xAu && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    sub_1000808D4();
    sub_1000808C8();
    _os_log_impl(v14, v15, v16, v17, v18, 0x16u);
  }

  inputStructCnt = 0;
  v19 = LibCall_BuildCommand(a2, 0, a3, a4, a5, &inputStructCnt);
  if (v19)
  {
    v20 = v19;
    if (!a6 && a7)
    {
      v23 = 4294967293;
    }

    else
    {
      if (a7)
      {
        v21 = *a7;
      }

      else
      {
        v21 = 0;
      }

      v44 = v21;
      v22 = IOConnectCallStructMethod(dword_1000EB534, 0, v19, inputStructCnt, a6, &v44);
      v23 = v22;
      if (a1)
      {
        v24 = *(a1 + 16);
      }

      if (v22)
      {
        if (byte_1000EA901 <= 0x46u && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
        {
          sub_1000808D4();
          sub_1000809C8();
          v49 = v25;
          v50 = v23;
          v51 = v25;
          v52 = v23;
          sub_1000808C8();
          _os_log_impl(v26, v27, v28, v29, v30, 0x2Eu);
        }
      }

      else
      {
        if (byte_1000EA901 <= 0x28u && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
        {
          sub_1000808D4();
          sub_1000809C8();
          sub_1000808C8();
          _os_log_impl(v31, v32, v33, v34, v35, 0x22u);
        }

        v23 = 0;
        if (a7)
        {
          *a7 = v44;
        }
      }
    }

    v36 = inputStructCnt;
    acm_mem_free_info("<data>", v20, inputStructCnt, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/ACMLib/ACMLib.c", 134, "performCommand");
    acm_mem_free_data(v20, v36);
    if (v23)
    {
      v37 = 70;
    }

    else
    {
      v37 = 10;
    }
  }

  else
  {
    v37 = 70;
    v23 = 4294967291;
  }

  if (v37 >= byte_1000EA901 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    v46 = 136315650;
    v47 = "ACMLib";
    sub_10000192C();
    v48 = "performCommand";
    sub_100080890();
    sub_1000808C8();
    _os_log_impl(v38, v39, v40, v41, v42, 0x20u);
  }

  return v23;
}

void sub_1000810D4()
{
  sub_100080958();
  sub_1000019F0();
  _os_log_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

uint64_t LibCall_ACMContextDelete(void (*a1)(uint64_t, uint64_t, void, void *, uint64_t, void, void), uint64_t a2, void *a3, int a4)
{
  if (gACMLoggingLevel <= 0xAu)
  {
    printf("%s: %s: called.\n", "ACM", "LibCall_ACMContextDelete");
  }

  if (a1 && a3)
  {
    if (a4)
    {
      a1(a2, 2, 0, a3, 16, 0, 0);
    }

    goto LABEL_7;
  }

  if (a3)
  {
LABEL_7:
    acm_mem_free_info("ACMHandleWithPayload", a3, 0x14uLL, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/LibCall.c", 172, "LibCall_ACMContextDelete");
    acm_mem_free(a3, 0x14uLL);
    v8 = 0;
    v9 = 10;
    goto LABEL_8;
  }

  v9 = 70;
  v8 = 4294967293;
LABEL_8:
  if (v9 >= gACMLoggingLevel)
  {
    printf("%s: %s: returning, err = %ld.\n", "ACM", "LibCall_ACMContextDelete", v8);
  }

  return v8;
}

uint64_t LibCall_ACMKernelControl(uint64_t (*a1)(uint64_t, uint64_t, void, char *, size_t, uint64_t, uint64_t), uint64_t a2, int a3, const void *a4, size_t a5, uint64_t a6, uint64_t a7)
{
  v13 = a1;
  if (gACMLoggingLevel <= 0xAu)
  {
    a1 = printf("%s: %s: called.\n", "ACM", "LibCall_ACMKernelControl");
  }

  if (!v13)
  {
    goto LABEL_16;
  }

  v14 = a5 != 0;
  if (a4)
  {
    v14 = a5 - 4097 < 0xFFFFFFFFFFFFF000;
  }

  if (v14)
  {
LABEL_16:
    v18 = 70;
    v17 = 4294967293;
  }

  else
  {
    v20 = &v20;
    __chkstk_darwin(a1);
    v15 = (&v20 - ((a5 + 19) & 0xFFFFFFFFFFFFFFF0));
    bzero(v15, a5 + 4);
    *v15 = a3;
    v16 = v15 + 1;
    if (a5)
    {
      memcpy(v15 + 1, a4, a5);
      v16 = (v16 + a5);
    }

    if (v16 != (v15 + a5 + 4))
    {
      sub_100081EF8();
    }

    v17 = v13(a2, 26, 0, &v20 - ((a5 + 19) & 0xFFFFFFFFFFFFFFF0), a5 + 4, a6, a7);
    if (v17)
    {
      v18 = 70;
    }

    else
    {
      v18 = 10;
    }
  }

  if (v18 >= gACMLoggingLevel)
  {
    printf("%s: %s: returning, err = %ld.\n", "ACM", "LibCall_ACMKernelControl", v17);
  }

  return v17;
}

uint64_t sub_10008160C(uint64_t a1, uint64_t a2, unsigned int *a3)
{
  result = 0;
  v4 = *a3;
  return result;
}

void sub_100081660()
{

  LibCall_ACMSetEnvironmentVariable();
}

uint64_t sub_100081680(uint64_t (*a1)(uint64_t, void, void, void *, size_t, _DWORD *, unint64_t *), uint64_t a2, int a3, _OWORD *a4, unsigned __int8 *a5, uint64_t a6, unsigned __int8 *a7, uint64_t a8, const void *a9, unsigned int a10, unsigned int a11, _DWORD *a12, BOOL *a13, void *a14, unint64_t *a15)
{
  v19 = gACMLoggingLevel;
  v20 = "processAclCommandInternal";
  if (gACMLoggingLevel <= 0xAu)
  {
    printf("%s: %s: called.\n", "ACM", "processAclCommandInternal");
    v19 = gACMLoggingLevel;
  }

  if (v19 <= 0x14)
  {
    printf("%s: %s: command = %u.\n", "ACM", "processAclCommandInternal", a3);
    sub_10008154C();
    if (!(!v28 & v21))
    {
      printf("%s: %s: context = %p.\n", "ACM", "processAclCommandInternal", a4);
      sub_10008154C();
      if (!(!v28 & v21))
      {
        printf("%s: %s: acl = %p, aclLength = %zu.\n", "ACM", "processAclCommandInternal", a5, a6);
        sub_10008154C();
        if (!(!v28 & v21))
        {
          printf("%s: %s (len=%u): acl:", "ACM", "processAclCommandInternal", a6);
          v19 = gACMLoggingLevel;
        }
      }
    }
  }

  if (a6)
  {
    v22 = a6;
    v23 = a5;
    do
    {
      if (v19 <= 0x14)
      {
        printf("%02x ", *v23);
        v19 = gACMLoggingLevel;
      }

      ++v23;
      --v22;
    }

    while (v22);
  }

  if (v19 < 0x15)
  {
    putchar(10);
    sub_10008154C();
    if (!(!v28 & v21))
    {
      printf("%s: %s: operation = %p, operationLength = %zu.\n", "ACM", "processAclCommandInternal", a7, a8);
      sub_10008154C();
      if (!(!v28 & v21))
      {
        printf("%s: %s (len=%u): operation:", "ACM", "processAclCommandInternal", a8);
        v19 = gACMLoggingLevel;
      }
    }
  }

  v42 = a3;
  if (a8)
  {
    v24 = a8;
    v25 = a7;
    do
    {
      if (v19 <= 0x14)
      {
        printf("%02x ", *v25);
        v19 = gACMLoggingLevel;
      }

      ++v25;
      --v24;
    }

    while (v24);
  }

  if (v19 < 0x15)
  {
    putchar(10);
    sub_10008154C();
    if (!(!v28 & v21))
    {
      printf("%s: %s: parameters = %p, parameterCount = %u.\n", "ACM", "processAclCommandInternal", a9, a10);
      sub_10008154C();
      if (!(!v28 & v21))
      {
        printf("%s: %s: maxGlobalCredentialAge = %u.\n", "ACM", "processAclCommandInternal", a11);
        sub_10008154C();
        if (!(!v28 & v21))
        {
          printf("%s: %s: constraintState = %p.\n", "ACM", "processAclCommandInternal", a12);
          sub_10008154C();
          if (!(!v28 & v21))
          {
            printf("%s: %s: requirePasscode = %p.\n", "ACM", "processAclCommandInternal", a13);
          }
        }
      }
    }
  }

  if (a7 || a9 || a12)
  {
    if (a5)
    {
      v28 = a6 == 0;
    }

    else
    {
      v28 = 1;
    }

    v29 = v28;
    sub_100081624();
    if (!a7)
    {
      goto LABEL_79;
    }

    if (!a8)
    {
      goto LABEL_79;
    }

    if (v29)
    {
      goto LABEL_79;
    }

    v20 = 4294967293;
    if ((a9 != 0) == (a10 == 0) || !a12)
    {
      goto LABEL_79;
    }

    v48 = 0;
    v47 = 4096;
    if (gACMLoggingLevel <= 0xAu)
    {
      printf("%s: %s: called.\n", "ACM", "processAclInternal");
    }

    SerializedProcessAclSize = GetSerializedProcessAclSize(a4, a5, a6, a7, a8, a11, a9, a10, &v48);
    if (SerializedProcessAclSize)
    {
      v20 = SerializedProcessAclSize;
      v40 = 70;
      goto LABEL_74;
    }

    v31 = v48;
    v32 = acm_mem_alloc_data(v48);
    acm_mem_alloc_info("<data>", v32, v31, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/LibCall.c", 1841, "processAclInternal");
    if (!v32)
    {
      v40 = 70;
      v20 = 4294967292;
      goto LABEL_74;
    }

    v47 = 4096;
    v33 = acm_mem_alloc_data(0x1000uLL);
    acm_mem_alloc_info("<data>", v33, 4096, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/LibCall.c", 1845, "processAclInternal");
    if (!v33)
    {
      v37 = 0;
      v36 = 0;
      v20 = 4294967292;
      goto LABEL_68;
    }

    v34 = SerializeProcessAcl(a4, a5, a6, a7, a8, a11, a9, a10, v32, &v48);
    if (v34 || (v34 = a1(a2, v42, 0, v32, v48, v33, &v47), v34))
    {
      v20 = v34;
      v36 = 0;
      v37 = 0;
      goto LABEL_67;
    }

    v35 = v47;
    if (v47 >= 8)
    {
      *a12 = *v33;
      if (a13)
      {
        *a13 = v33[1] != 0;
      }

      v20 = 0;
      v36 = 0;
      if (v42 != 30 || !a14)
      {
        v37 = 0;
        goto LABEL_67;
      }

      v37 = 0;
      if (!a15)
      {
LABEL_67:
        acm_mem_free_info("<data>", v33, 0x1000uLL, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/LibCall.c", 1882, "processAclInternal");
        acm_mem_free_data(v33, 0x1000uLL);
LABEL_68:
        acm_mem_free_info("<data>", v32, v48, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/LibCall.c", 1886, "processAclInternal");
        v38 = sub_100057558();
        acm_mem_free_data(v38, v39);
        if (v20 && v37)
        {
          acm_mem_free_info("<data>", v37, v36, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/LibCall.c", 1890, "processAclInternal");
          acm_mem_free_data(v37, v36);
          v40 = 70;
        }

        else if (v20)
        {
          v40 = 70;
        }

        else
        {
          v40 = 10;
        }

LABEL_74:
        if (v40 >= gACMLoggingLevel)
        {
          printf("%s: %s: returning, err = %ld.\n", "ACM", "processAclInternal", v20);
        }

        goto LABEL_76;
      }

      if (v35 >= 0xC)
      {
        v36 = v33[2];
        if (v36)
        {
          if (v35 >= v36 + 12)
          {
            v37 = acm_mem_alloc_data(v33[2]);
            acm_mem_alloc_info("<data>", v37, v36, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/LibCall.c", 1870, "processAclInternal");
            if (v37)
            {
              memcpy(v37, v33 + 3, v36);
              v20 = 0;
              *a14 = v37;
              *a15 = v36;
            }

            else
            {
              v20 = 4294967292;
            }

            goto LABEL_67;
          }

          goto LABEL_84;
        }

        v36 = 0;
        v37 = 0;
        v20 = 0;
        goto LABEL_67;
      }
    }

    v36 = 0;
LABEL_84:
    v37 = 0;
    v20 = 4294967291;
    goto LABEL_67;
  }

  if (a4)
  {
    sub_100081624();
    goto LABEL_79;
  }

  sub_100081624();
  if (a5 && a13 && a6)
  {
    sub_100081D4C();
    v20 = v27;
LABEL_76:
    if (v20)
    {
      v26 = 70;
    }

    else
    {
      v26 = 10;
    }
  }

LABEL_79:
  if (v26 >= gACMLoggingLevel)
  {
    printf("%s: %s: returning, err = %ld.\n", "ACM", "processAclCommandInternal", v20);
  }

  return v20;
}

void sub_100081D4C()
{
  sub_100001A8C();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v17[0] = 0;
  v16 = 4;
  v10 = v2;
  __chkstk_darwin(v8);
  v11 = (&v15 - ((v10 + 19) & 0x1FFFFFFF0));
  if (gACMLoggingLevel <= 0xAu)
  {
    printf("%s: %s: called.\n", "ACM", "aclRequiresPasscodeInternal");
  }

  bzero(&v15 - ((v10 + 19) & 0x1FFFFFFF0), v10 + 4);
  v12 = -3;
  if (v5 && v1)
  {
    *v11 = v3;
    memcpy(v11 + 1, v5, v10);
    v13 = v9(v7, 17, 0, &v15 - ((v10 + 19) & 0x1FFFFFFF0), v10 + 4, v17, &v16);
    if (v13)
    {
      v12 = v13;
    }

    else if (v16 == 4)
    {
      v12 = 0;
      *v1 = 1;
    }

    else
    {
      v12 = -5;
    }
  }

  sub_1000814EC();
  if (v14)
  {
    printf("%s: %s: returning, err = %ld.\n", "ACM", "aclRequiresPasscodeInternal", v12);
  }

  sub_1000016B0();
}

uint64_t sub_100081F24()
{
  v0 = ccrng();
  sub_100086D14(v0 != 0, 22, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform_lib.c");
  sub_100086D14(0, 23, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform_lib.c");
  return v0;
}

uint64_t sub_100081F94(uint64_t a1, unsigned int a2)
{
  v4 = sub_100087C1C();
  v5 = (*v4)(v4, a2, a1) == 0;

  return sub_100086D14(v5, 31, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform_lib.c");
}

uint64_t sub_100081FF0(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, void *, uint64_t *, uint64_t *, uint64_t), uint64_t *a5, unint64_t a6, void *a7, void *a8)
{
  v47 = a1;
  v48 = a3;
  memset(__s, 0, sizeof(__s));
  v14 = ccaes_cbc_encrypt_mode();
  v15 = *v14 + 15;
  __chkstk_darwin(v14);
  v49 = &v40 - v16;
  bzero(&v40 - v16, v16);
  v17 = v14[1] + 15;
  __chkstk_darwin(v18);
  v20 = &v40 - v19;
  bzero(&v40 - v19, v19);
  v21 = 0xFFFFFFFFLL;
  if (HIDWORD(a6) || (a6 - 40) < 0xFFFFFFE0)
  {
    goto LABEL_31;
  }

  v42 = &v40;
  v43 = a8;
  v44 = a6;
  v41 = a7;
  if (!a4)
  {
    v22 = (a2 & 0xFFFFFFFFFFFFFFF7) == 0x10 || a2 == 32;
    if (!v22 || !a8 || *a8 < a6 + 8)
    {
      sub_1000A3CCC(__s);
      goto LABEL_32;
    }

    cccbc_init();
    goto LABEL_15;
  }

  if (a8 && *v43 >= v44 + 8)
  {
LABEL_15:
    v23 = v44 >> 3;
    if (v44 >> 3 <= 1)
    {
      v24 = 1;
    }

    else
    {
      v24 = v23;
    }

    v25 = 8;
    v26 = v24;
    do
    {
      v27 = *a5++;
      *(__s + v25) = v27;
      v25 += 16;
      --v26;
    }

    while (v26);
    v28 = 0;
    *&__s[0] = v48;
    v29 = 1;
    v45 = v23;
    v46 = v24;
    do
    {
      v47 = v29;
      v48 = v28;
      v30 = __s;
      v31 = 1;
      do
      {
        if (a4)
        {
          if ((a4(1, &unk_1000EB640, v30, v30, 16) & 1) == 0)
          {
            goto LABEL_6;
          }
        }

        else
        {
          v32 = v14[1];
          cccbc_clear_iv();
          sub_10008706C(v14, v49, v20, 0x10uLL);
        }

        v33 = *v30;
        v30 += 2;
        *&__s[v31 % v23] = v33 ^ bswap64(v29++);
        ++v31;
        --v24;
      }

      while (v24);
      v28 = v48 + 1;
      v24 = v46;
      v29 = v47 + v45;
    }

    while (v48 != 5);
    v34 = v41;
    *v41 = *&__s[0];
    v35 = v34 + 1;
    v36 = __s + 1;
    do
    {
      v37 = *v36;
      v36 += 2;
      *v35++ = v37;
      --v24;
    }

    while (v24);
    v21 = 0;
    *v43 = (v44 & 0x38) + 8;
LABEL_31:
    memset_s(__s, 0x40uLL, 0, 0x40uLL);
    if (a4)
    {
      return v21;
    }

LABEL_32:
    v38 = *v14;
    cc_clear();
    return v21;
  }

LABEL_6:
  sub_1000A3CCC(__s);
  return 0xFFFFFFFFLL;
}

uint64_t sub_1000822F0(unint64_t a1, unsigned int a2, uint64_t a3, uint64_t (*a4)(uint64_t, void *, uint64_t *, uint64_t *, uint64_t), uint64_t *a5, unsigned int a6, void *a7, _DWORD *a8)
{
  v11 = *a8;
  v9 = sub_100081FF0(a1, a2, a3, a4, a5, a6, a7, &v11);
  sub_100086D14(HIDWORD(v11) == 0, 171, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/aeskeywrap.c");
  *a8 = v11;
  return v9;
}

uint64_t sub_10008235C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void, void *, unint64_t *, unint64_t *, uint64_t), void *a5, unint64_t a6, void *a7, void *a8)
{
  v44 = a3;
  v50 = a1;
  memset(__s, 0, sizeof(__s));
  v14 = ccaes_cbc_decrypt_mode();
  v15 = *v14 + 15;
  __chkstk_darwin(v14);
  v51 = &v42 - v16;
  bzero(&v42 - v16, v16);
  v17 = v14[1] + 15;
  __chkstk_darwin(v18);
  v20 = &v42 - v19;
  bzero(&v42 - v19, v19);
  v21 = 0xFFFFFFFFLL;
  if (HIDWORD(a6))
  {
    goto LABEL_33;
  }

  v49 = a6;
  v22 = a6 >> 3;
  if (v22 - 6 < 0xFFFFFFFC)
  {
    goto LABEL_33;
  }

  v45 = &v42;
  v46 = a8;
  v43 = a7;
  if (!a4)
  {
    v23 = (a2 & 0xFFFFFFFFFFFFFFF7) == 0x10 || a2 == 32;
    if (!v23 || !a8 || *a8 < v49 - 8)
    {
      sub_1000A3CCC(__s);
      goto LABEL_34;
    }

    cccbc_init();
    goto LABEL_15;
  }

  if (a8 && *v46 >= v49 - 8)
  {
LABEL_15:
    *&__s[0] = *a5;
    v24 = v22 - 1;
    if (v22 != 1)
    {
      v25 = __s + 1;
      v26 = a5 + 1;
      v27 = v22 - 1;
      do
      {
        v28 = *v26++;
        *v25 = v28;
        v25 += 2;
        --v27;
      }

      while (v27);
    }

    v29 = 6 * v22 - 6;
    v48 = 1 - v22;
    v30 = 5;
    v47 = &__s[v22 - 2];
    do
    {
      LODWORD(v50) = v30;
      if (v49 >= 0x10)
      {
        v31 = v47;
        v32 = v22 - 1;
        v33 = v29;
        do
        {
          *v31 = *&__s[v32 % v24] ^ bswap64(v33);
          if (a4)
          {
            if ((a4(0, &unk_1000EB640, v31, v31, 16) & 1) == 0)
            {
              goto LABEL_6;
            }
          }

          else
          {
            v34 = v14[1];
            cccbc_clear_iv();
            sub_10008706C(v14, v51, v20, 0x10uLL);
          }

          --v33;
          v31 -= 2;
          v35 = __OFSUB__(v32--, 1);
        }

        while (!((v32 < 0) ^ v35 | (v32 == 0)));
      }

      v30 = v50 - 1;
      v29 += v48;
    }

    while (v50);
    if (*&__s[0] == v44)
    {
      v36 = v43;
      if (v22 != 1)
      {
        v37 = __s + 1;
        v38 = v22 - 1;
        do
        {
          v39 = *v37;
          v37 += 2;
          *v36++ = v39;
          --v38;
        }

        while (v38);
      }

      v21 = 0;
      *v46 = 8 * v24;
    }

    else
    {
      v21 = 0xFFFFFFFFLL;
    }

LABEL_33:
    memset_s(__s, 0x40uLL, 0, 0x40uLL);
    if (a4)
    {
      return v21;
    }

LABEL_34:
    v40 = *v14;
    cc_clear();
    return v21;
  }

LABEL_6:
  sub_1000A3CCC(__s);
  return 0xFFFFFFFFLL;
}

uint64_t sub_1000826A4(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t (*a4)(void, void *, unint64_t *, unint64_t *, uint64_t), void *a5, unsigned int a6, void *a7, _DWORD *a8)
{
  v11 = *a8;
  v9 = sub_10008235C(a1, a2, a3, a4, a5, a6, a7, &v11);
  sub_100086D14(HIDWORD(v11) == 0, 261, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/aeskeywrap.c");
  *a8 = v11;
  return v9;
}

BOOL sub_100082710(unsigned int a1, unsigned int *a2)
{
  v2 = a1 - 8;
  result = a1 > 7;
  *a2 = v2;
  return result;
}

BOOL sub_100082724(unint64_t a1, unint64_t *a2)
{
  v2 = a1 - 8;
  result = a1 > 7;
  *a2 = v2;
  return result;
}

uint64_t sub_100082738(void *a1)
{

  return memset_s(a1, 0x40uLL, 0, 0x40uLL);
}

uint64_t sub_100082754()
{
  if (qword_1000EB548 != -1)
  {
    sub_1000A57E0();
  }

  dispatch_sync(qword_1000EB550, &stru_1000DF4D8);
  return dword_1000EB538;
}

uint64_t sub_10008279C(unsigned int a1, const void *a2)
{
  input = a1;
  v3 = sub_100082754();
  if (v3)
  {
    return IOConnectCallMethod(v3, 0x6Cu, &input, 1u, a2, 0x10uLL, 0, 0, 0, 0);
  }

  sub_1000A57F4();
  return 3758097084;
}

char *sub_100082834(char *result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
    v5[0] = result;
    v5[1] = 0;
    result = fts_open(v5, 84, 0);
    if (result)
    {
      return sub_1000A585C(result, a2, a3);
    }
  }

  return result;
}

char *sub_1000828B4(char *result, int a2)
{
  if (result)
  {
    v3 = result;
    bzero(v8, 0x400uLL);
    result = realpath_DARWIN_EXTSN(v3, v8);
    if (result)
    {
      v6[0] = _NSConcreteStackBlock;
      v6[1] = 0x40000000;
      v6[2] = sub_1000829CC;
      v6[3] = &unk_1000DF418;
      v7 = a2;
      v4[0] = _NSConcreteStackBlock;
      v4[1] = 0x40000000;
      v4[2] = sub_1000A4114;
      v4[3] = &unk_1000DF438;
      v5 = a2;
      return sub_100082834(v8, v6, v4);
    }
  }

  return result;
}

uint64_t sub_1000829CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000A40B8(*(a2 + 48));
  v5 = *(a1 + 32);
  if (v5 == -1 || v4 == v5)
  {
    printf(" dir: %s %i\n", *(a2 + 48), v4);
  }

  return 1;
}

uint64_t sub_100082A28()
{
  v0 = IORegistryEntryFromPath(kIOMasterPortDefault, "IODeviceTree:/filesystems");
  if (v0)
  {
    v1 = v0;
    CFProperty = IORegistryEntryCreateCFProperty(v0, @"e-apfs", kCFAllocatorDefault, 0);
    v3 = CFProperty != 0;
    if (CFProperty)
    {
      CFRelease(CFProperty);
    }

    IOObjectRelease(v1);
  }

  else
  {
    v3 = 0;
  }

  __len = 1023;
  bzero(__big, 0x400uLL);
  if ((byte_1000EB540 & 1) == 0)
  {
    if (!sysctlbyname("kern.bootargs", __big, &__len, 0, 0) && strnstr(__big, "-apfs_shared_datavolume", __len))
    {
      byte_1000EB541 = 1;
    }

    byte_1000EB540 = 1;
  }

  v4 = byte_1000EB541;
  fprintf(__stdoutp, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s ioreg: %d, boot_arg: %d%s\n", "aks", "", -1, "", "", "", "", "aks_fs_supports_enhanced_apfs", ":", 438, "", v3, byte_1000EB541, "");
  return v3 | v4;
}

void sub_100082BAC(const char *a1, uint64_t a2, uint64_t a3)
{
  bzero(__str, 0x400uLL);
  memset(&v7, 0, sizeof(v7));
  if (a3)
  {
    v6 = (a2 + 16);
    do
    {
      snprintf(__str, 0x400uLL, "%s%s", a1, *(v6 - 2));
      if (stat(__str, &v7))
      {
        printf("stat failed: %s\n");
      }

      else
      {
        sub_1000A40B8(__str);
        *v6;
        printf("%s: mode=%o, u/g=%i:%i class=%i%s\n");
      }

      v6 += 6;
      --a3;
    }

    while (a3);
  }
}

uint64_t sub_100082CF4()
{
  puts("shared allow list:");
  v0 = &byte_1000DDFD8;
  v1 = 36;
  do
  {
    if (*v0)
    {
      printf("%s%s\n", "<var>", *(v0 - 2));
    }

    v0 += 48;
    --v1;
  }

  while (v1);
  result = puts("user allow list:");
  v3 = &byte_1000DE698;
  v4 = 72;
  do
  {
    if (*v3)
    {
      result = printf("%s%s\n", "<user>", *(v3 - 2));
    }

    v3 += 48;
    --v4;
  }

  while (v4);
  return result;
}

void sub_100082DB8(const char *a1, char a2)
{
  if (a1)
  {
    bzero(&v13, 0x878uLL);
    bzero(v12, 0x400uLL);
    if (realpath_DARWIN_EXTSN(a1, v12))
    {
      v4 = malloc(0x818uLL);
      memset_s(v4, 0x818uLL, 0, 0x818uLL);
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 0x40000000;
      v11[2] = sub_1000A4CC0;
      v11[3] = &unk_1000DF498;
      v11[4] = v4;
      sub_100082834(v12, &stru_1000DF478, v11);
      if (!statfs(v12, &v13))
      {
        if (a2)
        {
          printf("Free Blocks:%lld blocks of size:%d\n");
        }

        else
        {
          printf("%lld,%d\n");
        }
      }

      v5 = v4 + 340;
      for (i = 1; i != 5; ++i)
      {
        if (a2)
        {
          v9 = &v4[296 * i];
          printf("%s:\n\tNum files:\t%u,\n\tNum hardlinks:\t%u,\n\tNum compressed:\t%u,\n\tTotal Size:\t%lld,\n\tMin File Size:\t%lld,\n\tMax File Size:\t%lld,\n", off_1000EA908[i], *v9, *(v9 + 2), *(v9 + 1), *(v9 + 2), *(v9 + 3), *(v9 + 4));
          printf("\tSize Distribution:");
          printf("%i", *(v9 + 10));
          for (j = 0; j != 252; j += 4)
          {
            putchar(44);
            printf("%i", *&v5[j]);
          }
        }

        else
        {
          v7 = &v4[296 * i];
          printf("%i,%u,%u,%u,%lld,%lld,%lld,", i, *v7, *(v7 + 2), *(v7 + 1), *(v7 + 2), *(v7 + 3), *(v7 + 4));
          printf("%i", *(v7 + 10));
          for (k = 0; k != 252; k += 4)
          {
            putchar(44);
            printf("%i", *&v5[k]);
          }
        }

        putchar(10);
        v5 += 296;
      }

      free(v4);
    }
  }
}

uint64_t sub_100083040(unsigned int a1, uint64_t a2)
{
  input[0] = 1;
  input[1] = a1;
  input[2] = a2;
  output = 0;
  outputCnt = 1;
  v2 = sub_100082754();
  if (v2)
  {
    return IOConnectCallMethod(v2, 0x56u, input, 3u, 0, 0, &output, &outputCnt, 0, 0);
  }

  sub_1000A5918();
  return 3758097084;
}

uint64_t sub_1000830DC()
{
  v0 = sub_100082754();
  if (v0)
  {
    return IOConnectCallMethod(v0, 0x10u, 0, 0, 0, 0, 0, 0, 0, 0);
  }

  sub_1000A5980();
  return 3758097084;
}

uint64_t sub_100083134(unsigned int a1)
{
  v2 = sub_100082754();
  if (v2)
  {
    input = a1;
    return IOConnectCallMethod(v2, 0x86u, &input, 1u, 0, 0, 0, 0, 0, 0);
  }

  else
  {
    sub_1000A59E8();
    return 3758097084;
  }
}

void sub_1000831CC(id a1)
{
  if (!dword_1000EB538)
  {
    dword_1000EB538 = sub_1000834A4("IOService:/IOResources/AppleKeyStore", "AppleKeyStore");
  }
}

uint64_t sub_10008320C()
{
  if (qword_1000EB548 != -1)
  {
    sub_1000A57E0();
  }

  dispatch_sync(qword_1000EB550, &stru_1000DF518);
  return dword_1000EB53C;
}

void sub_100083254(id a1)
{
  if (!dword_1000EB53C)
  {
    dword_1000EB53C = sub_1000834A4("IOService:/IOResources/AppleKeyStoreTest", "AppleKeyStoreTest");
  }
}

uint64_t sub_100083294(mach_port_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, size_t *a8)
{
  input = a3;
  memset(inputStructCnt, 0, sizeof(inputStructCnt));
  sub_100088BF8(&inputStructCnt[1], inputStructCnt, 2, a4, a5, a6, a7, a8, a2);
  v11 = IOConnectCallMethod(a1, 0x14u, &input, 1u, *&inputStructCnt[1], inputStructCnt[0], 0, 0, a7, a8);
  free(*&inputStructCnt[1]);
  return v11;
}

uint64_t sub_1000833C8(mach_port_t a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  input = a2;
  memset(inputStructCnt, 0, sizeof(inputStructCnt));
  sub_100088BF8(&inputStructCnt[1], inputStructCnt, 1, a4, a5, a6, a7, a8, a3);
  v9 = IOConnectCallMethod(a1, 0x12u, &input, 1u, *&inputStructCnt[1], inputStructCnt[0], 0, 0, 0, 0);
  free(*&inputStructCnt[1]);
  return v9;
}

uint64_t sub_1000834A4(char *path, const char *a2)
{
  connect = 0;
  v3 = IORegistryEntryFromPath(kIOMasterPortDefault, path);
  if (!v3 || (v4 = v3, v5 = IOServiceOpen(v3, mach_task_self_, 0, &connect), IOObjectRelease(v4), v5))
  {
    v6 = IOServiceMatching(a2);
    MatchingService = IOServiceGetMatchingService(kIOMasterPortDefault, v6);
    if (MatchingService)
    {
      v8 = MatchingService;
      IOServiceOpen(MatchingService, mach_task_self_, 0, &connect);
      IOObjectRelease(v8);
    }
  }

  if (connect)
  {
    if (IOConnectCallMethod(connect, 0, 0, 0, 0, 0, 0, 0, 0, 0))
    {
      IOServiceClose(connect);
      connect = 0;
      syslog(3, "failed to open userclient via %s: %d\n");
    }
  }

  else
  {
    syslog(3, "failed to open connection to %s: %d\n");
  }

  return connect;
}

uint64_t sub_1000835F8(void *a1)
{

  return memset_s(a1, 0x1000uLL, 0, 0x1000uLL);
}

uint64_t sub_100083690(uint64_t *a1)
{
  v2 = a1[10];
  ccder_sizeof_implicit_uint64();
  ccder_sizeof_raw_octet_string();
  ccder_sizeof_raw_octet_string();
  v3 = *a1;
  ccder_sizeof_implicit_uint64();

  return ccder_sizeof();
}

uint64_t sub_100083714(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char __s)
{

  return memset_s(&__s, 0x20uLL, 0, 0x20uLL);
}

uint64_t sub_100083740(uint64_t a1, _BYTE *a2)
{
  v4 = 0;
  if (!a2)
  {
    return sub_1000A6028(a1, 1, &v4);
  }

  *a2 = 0;
  result = sub_1000A6028(a1, 1, &v4);
  if (!result)
  {
    *a2 = v4;
  }

  return result;
}

uint64_t sub_10008379C()
{
  v0 = sub_100082754();
  if (v0)
  {
    return IOConnectCallMethod(v0, 0x25u, 0, 0, 0, 0, 0, 0, 0, 0);
  }

  sub_1000ADBA4();
  return 3758097084;
}

uint64_t sub_1000837F4(int a1)
{
  v2 = sub_100082754();
  if (v2)
  {
    input = a1;
    return IOConnectCallMethod(v2, 0x24u, &input, 1u, 0, 0, 0, 0, 0, 0);
  }

  else
  {
    sub_1000ADC0C();
    return 3758097084;
  }
}

uint64_t sub_10008388C(int a1)
{
  v2 = sub_100082754();
  if (v2)
  {
    input = a1;
    return IOConnectCallMethod(v2, 0x33u, &input, 1u, 0, 0, 0, 0, 0, 0);
  }

  else
  {
    sub_1000ADC74();
    return 3758097084;
  }
}

uint64_t sub_100083924(int a1)
{
  v2 = sub_100082754();
  if (v2)
  {
    input = a1;
    return IOConnectCallMethod(v2, 0x35u, &input, 1u, 0, 0, 0, 0, 0, 0);
  }

  else
  {
    sub_1000ADCDC();
    return 3758097084;
  }
}

uint64_t sub_1000839E0()
{
  v0 = sub_100082754();
  if (v0)
  {
    return IOConnectCallMethod(v0, 0x42u, 0, 0, 0, 0, 0, 0, 0, 0);
  }

  sub_1000ADD44();
  return 3758097084;
}

uint64_t sub_100083A44(int a1)
{
  v2 = sub_100082754();
  if (v2)
  {
    input = a1;
    return IOConnectCallMethod(v2, 4u, &input, 1u, 0, 0, 0, 0, 0, 0);
  }

  else
  {
    sub_1000ADDAC();
    return 3758097084;
  }
}

uint64_t sub_100083ADC(int a1)
{
  v2 = sub_100082754();
  if (v2)
  {
    input = a1;
    return IOConnectCallMethod(v2, 0x37u, &input, 1u, 0, 0, 0, 0, 0, 0);
  }

  else
  {
    sub_1000ADE14();
    return 3758097084;
  }
}

uint64_t sub_100083B74(int a1, uint64_t a2, int a3, uint64_t a4, int a5, uint64_t a6, int a7, uint64_t a8, int a9, unsigned __int8 a10, unsigned int a11, int a12, _DWORD *a13, void **a14)
{
  v22 = sub_100082754();
  if (v22)
  {
    input[0] = a1;
    input[1] = a11;
    input[2] = a10;
    input[3] = a2;
    input[4] = a3;
    input[5] = a4;
    input[6] = a5;
    input[7] = a6;
    input[8] = a7;
    input[9] = a8;
    input[10] = a9;
    input[11] = a12 & 0xFFFFFFF7 | (8 * (a14 != 0));
    output = 0;
    outputCnt = 1;
    if (a14)
    {
      outputStruct = *a14;
    }

    else
    {
      outputStruct = 0;
    }

    if (a14)
    {
      v24 = (a14 + 1);
    }

    else
    {
      v24 = 0;
    }

    result = IOConnectCallMethod(v22, 0xFu, input, 0xCu, 0, 0, &output, &outputCnt, outputStruct, v24);
    if (a13)
    {
      if (!result)
      {
        *a13 = output;
      }
    }
  }

  else
  {
    sub_1000ADE7C();
    return 3758097084;
  }

  return result;
}

uint64_t sub_100083D94(int a1)
{
  v2 = sub_100082754();
  if (v2)
  {
    input = a1;
    return IOConnectCallMethod(v2, 0xDu, &input, 1u, 0, 0, 0, 0, 0, 0);
  }

  else
  {
    sub_1000ADEE4();
    return 3758097084;
  }
}

uint64_t sub_100083E2C(int a1, uint64_t a2, int a3, unsigned int a4)
{
  v8 = sub_100082754();
  if (v8)
  {
    input[0] = a1;
    input[1] = a2;
    input[2] = a3;
    input[3] = a4;
    return IOConnectCallMethod(v8, 0xCu, input, 4u, 0, 0, 0, 0, 0, 0);
  }

  else
  {
    sub_1000ADF4C();
    return 3758097084;
  }
}

uint64_t sub_100083EF4(int a1, int a2, uint64_t a3, int a4, unsigned int a5)
{
  v10 = sub_100082754();
  if (v10)
  {
    input[0] = a1;
    input[1] = a2;
    input[2] = a3;
    input[3] = a4;
    input[4] = a5;
    return IOConnectCallMethod(v10, 5u, input, 5u, 0, 0, 0, 0, 0, 0);
  }

  else
  {
    sub_1000ADFB4();
    return 3758097084;
  }
}

uint64_t sub_100084024(_OWORD *a1, void *a2, unsigned int a3, void *a4, void *a5)
{
  memset(&v12[16], 0, 112);
  *v12 = 0u;
  v6 = a1[1];
  *&v12[4] = *a1;
  *&v12[20] = v6;
  v7 = a1[3];
  *&v12[36] = a1[2];
  v13 = 0;
  *&v12[52] = v7;
  v10 = *a5;
  __s = 1;
  v8 = sub_1000AF894(&__s, 0, 0, a2, a3, a4, &v10);
  *a5 = v10;
  memset_s(&__s, 0x88uLL, 0, 0x88uLL);
  return sub_100086CF8(v8);
}

void sub_100084118(__CFDictionary *a1, const void *a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    if (CFNumberGetTypeID() == a3)
    {
      valuePtr = sub_1000AFE9C();
      v7 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt64Type, &valuePtr);
      if (!v7)
      {
        return;
      }

      v8 = v7;
      CFDictionaryAddValue(a1, a2, v7);
      goto LABEL_5;
    }

    if (CFBooleanGetTypeID() == a3)
    {
      v9 = sub_1000B0118();
      v10 = &kCFBooleanTrue;
      if (!v9)
      {
        v10 = &kCFBooleanFalse;
      }

      v11 = *v10;

      CFDictionaryAddValue(a1, a2, v11);
    }

    else if (CFDataGetTypeID() == a3)
    {
      valuePtr = 0;
      v12 = ccder_decode_tl();
      if (v12)
      {
        v8 = CFDataCreate(kCFAllocatorDefault, v12, valuePtr);
        CFDictionaryAddValue(a1, a2, v8);
        if (v8)
        {
LABEL_5:
          CFRelease(v8);
        }
      }
    }
  }
}

uint64_t sub_100084278(int a1, unsigned int a2, uint64_t a3)
{
  input[0] = a2;
  input[1] = a3;
  input[2] = a1;
  v3 = sub_100082754();
  if (v3)
  {
    return IOConnectCallMethod(v3, 0x1Au, input, 3u, 0, 0, 0, 0, 0, 0);
  }

  sub_1000AE01C();
  return 3758097084;
}

uint64_t sub_10008430C(int a1, unsigned int a2)
{
  input[0] = a2;
  input[1] = a1;
  v2 = sub_100082754();
  if (v2)
  {
    return IOConnectCallMethod(v2, 0x1Bu, input, 2u, 0, 0, 0, 0, 0, 0);
  }

  sub_1000AE084();
  return 3758097084;
}

uint64_t sub_10008439C(int a1, unsigned int a2)
{
  v4 = sub_100082754();
  if (v4)
  {
    input[0] = a2;
    input[1] = a1;
    return IOConnectCallMethod(v4, 0x64u, input, 2u, 0, 0, 0, 0, 0, 0);
  }

  else
  {
    sub_1000AE0EC();
    return 3758097084;
  }
}

uint64_t sub_10008443C(int a1)
{
  input = a1;
  v1 = sub_100082754();
  if (v1)
  {
    return IOConnectCallMethod(v1, 0x91u, &input, 1u, 0, 0, 0, 0, 0, 0);
  }

  sub_1000AE154();
  return 3758097084;
}

uint64_t sub_1000844C8(int a1)
{
  input = a1;
  v1 = sub_100082754();
  if (v1)
  {
    return IOConnectCallMethod(v1, 0x65u, &input, 1u, 0, 0, 0, 0, 0, 0);
  }

  sub_1000AE1BC();
  return 3758097084;
}

uint64_t sub_10008455C(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unsigned int a8)
{
  v22 = 0;
  v21 = 0;
  v11 = sub_100082754();
  if (v11)
  {
    v17 = v11;
    sub_100088BF8(&v22, &v21, 3, v12, v13, v14, v15, v16, a2);
    input[0] = a1;
    input[1] = v22;
    input[2] = v21;
    input[3] = a8;
    v18 = IOConnectCallMethod(v17, 0x12u, input, 4u, 0, 0, 0, 0, 0, 0);
    v19 = v22;
  }

  else
  {
    sub_1000AE224();
    v19 = 0;
    v18 = 3758097084;
  }

  free(v19);
  return v18;
}

uint64_t sub_100084688(int a1, unsigned int a2, _DWORD *a3)
{
  v6 = sub_100082754();
  if (v6)
  {
    input[0] = a1;
    input[1] = a2;
    output = 0;
    outputCnt = 1;
    result = IOConnectCallMethod(v6, 0x28u, input, 2u, 0, 0, &output, &outputCnt, 0, 0);
    if (a3)
    {
      if (!result)
      {
        *a3 = output;
      }
    }
  }

  else
  {
    sub_1000AE28C();
    return 3758097084;
  }

  return result;
}

uint64_t sub_100084750(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, int a21, int a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41)
{
  if (a1)
  {
    v41 = a3;
    if (a2)
    {
      v42 = a4;
      v43 = a5;
      v44 = a6;
      v45 = a7;
      v46 = 1;
    }

    else
    {
      v42 = a4;
      v43 = a5;
      v44 = a6;
      v45 = a7;
      v46 = 0;
    }

    v47 = 1;
  }

  else
  {
    v41 = a3;
    if (a2)
    {
      v42 = a4;
      v43 = a5;
      v44 = a6;
      v45 = a7;
      v46 = 1;
    }

    else
    {
      v42 = a4;
      v43 = a5;
      v44 = a6;
      v45 = a7;
      v46 = 0;
    }

    v47 = 0;
  }

  return sub_1000A97C4(v41, v42, v43, v44, v45, v46, v47, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41);
}

uint64_t sub_1000847CC(mach_port_t a1, uintptr_t a2)
{
  v4 = sub_100082754();
  if (v4)
  {

    return IOConnectSetNotificationPort(v4, 0, a1, a2);
  }

  else
  {
    sub_1000AE2F4();
    return 3758097084;
  }
}

uint64_t sub_100084844(int a1)
{
  v2 = sub_100082754();
  if (v2)
  {
    input = a1;
    return IOConnectCallMethod(v2, 0x16u, &input, 1u, 0, 0, 0, 0, 0, 0);
  }

  else
  {
    sub_1000AE35C();
    return 3758097084;
  }
}

uint64_t sub_1000848DC(int a1)
{
  input = a1;
  v1 = sub_100082754();
  if (v1)
  {
    return IOConnectCallMethod(v1, 0xA2u, &input, 1u, 0, 0, 0, 0, 0, 0);
  }

  sub_1000AE3C4();
  return 3758097084;
}

uint64_t sub_100084974(int a1, const void *a2, size_t a3)
{
  input = a1;
  v5 = sub_100082754();
  if (v5)
  {
    return IOConnectCallMethod(v5, 0x3Au, &input, 1u, a2, a3, 0, 0, 0, 0);
  }

  sub_1000AE42C();
  return 3758097084;
}

uint64_t sub_100084A10(int a1, int a2)
{
  input = a1;
  v3 = sub_100082754();
  if (v3)
  {
    if (a2)
    {
      v4 = 32;
    }

    else
    {
      v4 = 8;
    }

    return IOConnectCallMethod(v3, v4, &input, 1u, 0, 0, 0, 0, 0, 0);
  }

  else
  {
    sub_1000AE494();
    return 3758097084;
  }
}

uint64_t sub_100084AB4(int a1)
{
  input = a1;
  v1 = sub_100082754();
  if (v1)
  {
    return IOConnectCallMethod(v1, 0x8Du, &input, 1u, 0, 0, 0, 0, 0, 0);
  }

  sub_1000AE4FC();
  return 3758097084;
}

uint64_t sub_100084B40(int a1, uint64_t a2, int a3)
{
  input[0] = a1;
  input[1] = a2;
  input[2] = a3;
  input[3] = 0;
  v3 = sub_100082754();
  if (v3)
  {
    return IOConnectCallMethod(v3, 9u, input, 4u, 0, 0, 0, 0, 0, 0);
  }

  sub_1000AE564();
  return 3758097084;
}

uint64_t sub_100084BD4(int a1, uint64_t a2, int a3)
{
  input[0] = a1;
  input[1] = a2;
  input[2] = a3;
  input[3] = 1;
  v3 = sub_100082754();
  if (v3)
  {
    return IOConnectCallMethod(v3, 9u, input, 4u, 0, 0, 0, 0, 0, 0);
  }

  sub_1000AE5CC();
  return 3758097084;
}

uint64_t sub_100084C6C(int a1, int a2, uint64_t a3, int a4)
{
  if (a1)
  {
    return sub_100084BD4(a2, a3, a4);
  }

  else
  {
    return sub_100084B40(a2, a3, a4);
  }
}

uint64_t sub_100084C90()
{
  v0 = sub_100082754();
  if (v0)
  {
    return IOConnectCallMethod(v0, 0x13u, 0, 0, 0, 0, 0, 0, 0, 0);
  }

  sub_1000AE634();
  return 3758097084;
}

uint64_t sub_100084CE8(int a1, unsigned int a2, uint64_t a3, unsigned int a4, const void *a5, int a6)
{
  v12 = sub_100082754();
  if (v12)
  {
    input[0] = a1;
    input[1] = a2;
    input[2] = a3;
    input[3] = a4;
    return IOConnectCallMethod(v12, 0x3Fu, input, 4u, a5, a6, 0, 0, 0, 0);
  }

  else
  {
    sub_1000AE69C();
    return 3758097084;
  }
}

uint64_t sub_100084DB0(int a1)
{
  input = a1;
  v1 = sub_100082754();
  if (v1)
  {
    return IOConnectCallMethod(v1, 0x3Cu, &input, 1u, 0, 0, 0, 0, 0, 0);
  }

  sub_1000AE704();
  return 3758097084;
}

uint64_t sub_100084E3C(int a1)
{
  input = a1;
  v1 = sub_100082754();
  if (v1)
  {
    return IOConnectCallMethod(v1, 0x47u, &input, 1u, 0, 0, 0, 0, 0, 0);
  }

  sub_1000AE76C();
  return 3758097084;
}

uint64_t sub_100084EC8(int a1)
{
  input = a1;
  v1 = sub_100082754();
  if (v1)
  {
    return IOConnectCallMethod(v1, 0x49u, &input, 1u, 0, 0, 0, 0, 0, 0);
  }

  sub_1000AE7D4();
  return 3758097084;
}

uint64_t sub_100084F5C(int a1, uint64_t a2, uint64_t a3, uint32_t a4)
{
  input[0] = a1;
  input[1] = a2;
  input[2] = a3;
  v5 = sub_100082754();
  if (v5)
  {
    return IOConnectCallMethod(v5, a4, input, 3u, 0, 0, 0, 0, 0, 0);
  }

  sub_1000AE83C();
  return 3758097084;
}

uint64_t sub_100085000(int a1, uint64_t a2, uint64_t a3)
{
  input[0] = a1;
  input[1] = a2;
  input[2] = a3;
  input[3] = 0;
  v3 = sub_100082754();
  if (v3)
  {
    return IOConnectCallMethod(v3, 0x46u, input, 4u, 0, 0, 0, 0, 0, 0);
  }

  sub_1000AE8A4();
  return 3758097084;
}

uint64_t sub_100085090(int a1, uint64_t a2, uint64_t a3)
{
  input[0] = a1;
  input[1] = a2;
  input[2] = a3;
  input[3] = 1;
  v3 = sub_100082754();
  if (v3)
  {
    return IOConnectCallMethod(v3, 0x46u, input, 4u, 0, 0, 0, 0, 0, 0);
  }

  sub_1000AE90C();
  return 3758097084;
}

uint64_t sub_100085124(int a1, int a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    return sub_100085090(a2, a3, a4);
  }

  else
  {
    return sub_100085000(a2, a3, a4);
  }
}

uint64_t sub_100085148(int a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  input[0] = a1;
  input[1] = a2;
  input[2] = a3;
  input[3] = a4;
  v4 = sub_100082754();
  if (v4)
  {
    return IOConnectCallMethod(v4, 0x69u, input, 4u, 0, 0, 0, 0, 0, 0);
  }

  sub_1000AE974();
  return 3758097084;
}

uint64_t sub_100085214(int a1, const void *a2, size_t a3)
{
  input = a1;
  v5 = sub_100082754();
  if (v5)
  {
    if (a2)
    {
      v6 = a3;
    }

    else
    {
      v6 = 0;
    }

    return IOConnectCallMethod(v5, 0x58u, &input, 1u, a2, v6, 0, 0, 0, 0);
  }

  else
  {
    sub_1000AE9DC();
    return 3758097084;
  }
}

uint64_t sub_1000852B4(int a1)
{
  input = a1;
  v1 = sub_100082754();
  if (v1)
  {
    return IOConnectCallMethod(v1, 0x5Bu, &input, 1u, 0, 0, 0, 0, 0, 0);
  }

  sub_1000AEA44();
  return 3758097084;
}

uint64_t sub_100085340(unsigned int a1)
{
  input = a1;
  v1 = sub_100082754();
  if (v1)
  {
    return IOConnectCallMethod(v1, 0x5Eu, &input, 1u, 0, 0, 0, 0, 0, 0);
  }

  sub_1000AEAAC();
  return 3758097084;
}

uint64_t sub_1000853CC(BOOL *a1)
{
  output = 0;
  outputCnt = 1;
  v2 = sub_100082754();
  if (v2)
  {
    result = IOConnectCallMethod(v2, 0x6Bu, 0, 0, 0, 0, &output, &outputCnt, 0, 0);
    if (a1)
    {
      if (!result)
      {
        *a1 = output != 0;
      }
    }
  }

  else
  {
    sub_1000AEB14();
    return 3758097084;
  }

  return result;
}

uint64_t sub_100085480()
{
  v0 = sub_100082754();
  if (v0)
  {
    return IOConnectCallMethod(v0, 0x5Fu, 0, 0, 0, 0, 0, 0, 0, 0);
  }

  sub_1000AEB7C();
  return 3758097084;
}

uint64_t sub_1000854D8(int a1)
{
  input = a1;
  v1 = sub_100082754();
  if (v1)
  {
    return IOConnectCallMethod(v1, 0xA0u, &input, 1u, 0, 0, 0, 0, 0, 0);
  }

  sub_1000AEBE4();
  return 3758097084;
}

uint64_t sub_10008575C(int a1)
{
  v1 = 8;
  if (a1)
  {
    v1 = 12;
  }

  v5 = v1;
  sub_1000A48B0();
  v3 = v2;
  syslog(6, "aks_fv_prot_cmd_stash_kek(%llu) = %d", v5, v2);
  return v3;
}

uint64_t sub_1000857D8()
{
  sub_1000A48B0();
  v1 = v0;
  syslog(6, "aks_fv_prot_cmd_stash_commit = %d", v0);
  return v1;
}

uint64_t sub_100085838()
{
  sub_1000A48B0();
  v1 = v0;
  syslog(6, "aks_fv_prot_cmd_stash_destroy = %d", v0);
  return v1;
}

uint64_t sub_1000858D8(unsigned int a1)
{
  input[0] = 0;
  input[1] = a1;
  v1 = sub_100082754();
  if (v1)
  {
    return IOConnectCallMethod(v1, 0x53u, input, 2u, 0, 0, 0, 0, 0, 0);
  }

  sub_1000AEC4C();
  return 3758097084;
}

uint64_t sub_100085964(int a1)
{
  input[0] = 1;
  input[1] = a1;
  v1 = sub_100082754();
  if (v1)
  {
    return IOConnectCallMethod(v1, 0x53u, input, 2u, 0, 0, 0, 0, 0, 0);
  }

  sub_1000AECB4();
  return 3758097084;
}

uint64_t sub_1000859F4()
{
  v0 = sub_100082754();
  if (v0)
  {
    return IOConnectCallMethod(v0, 0x5Cu, 0, 0, 0, 0, 0, 0, 0, 0);
  }

  sub_1000AED1C();
  return 3758097084;
}

uint64_t sub_100085A4C()
{
  v0 = sub_100082754();
  if (v0)
  {
    return IOConnectCallMethod(v0, 0x5Cu, 0, 0, 0, 0, 0, 0, 0, 0);
  }

  sub_1000AED84();
  return 3758097084;
}

uint64_t sub_100085AA4(int a1)
{
  input = a1;
  v1 = sub_100082754();
  if (v1)
  {
    return IOConnectCallMethod(v1, 0x6Au, &input, 1u, 0, 0, 0, 0, 0, 0);
  }

  sub_1000AEDEC();
  return 3758097084;
}

uint64_t sub_100085B30(int a1)
{
  input = a1;
  v1 = sub_100082754();
  if (v1)
  {
    return IOConnectCallMethod(v1, 0x9Cu, &input, 1u, 0, 0, 0, 0, 0, 0);
  }

  sub_1000AEE54();
  return 3758097084;
}

uint64_t sub_100085BE0()
{
  v0 = sub_100082754();
  if (v0)
  {
    return IOConnectCallMethod(v0, 0x73u, 0, 0, 0, 0, 0, 0, 0, 0);
  }

  sub_1000AEEBC();
  return 3758097084;
}

uint64_t sub_100085C38(const void *a1, size_t a2)
{
  v4 = sub_100082754();
  if (v4)
  {
    return IOConnectCallMethod(v4, 0x90u, 0, 0, a1, a2, 0, 0, 0, 0);
  }

  sub_1000AEF24();
  return 3758097084;
}

uint64_t sub_100085CA0()
{
  v0 = sub_100082754();
  if (v0)
  {
    return IOConnectCallMethod(v0, 0x95u, 0, 0, 0, 0, 0, 0, 0, 0);
  }

  sub_1000AEF8C();
  return 3758097084;
}

uint64_t sub_100085CF8(int a1, uint64_t a2, uint64_t a3)
{
  input[0] = a1;
  input[1] = a2;
  input[2] = a3;
  v3 = sub_100082754();
  if (v3)
  {
    return IOConnectCallMethod(v3, 0x85u, input, 3u, 0, 0, 0, 0, 0, 0);
  }

  sub_1000AEFF4();
  return 3758097084;
}

uint64_t sub_100085D88(int a1)
{
  input = a1;
  v1 = sub_100082754();
  if (v1)
  {
    return IOConnectCallMethod(v1, 0x8Au, &input, 1u, 0, 0, 0, 0, 0, 0);
  }

  sub_1000AF05C();
  return 3758097084;
}

uint64_t sub_100085E14()
{
  v0 = sub_100082754();
  if (v0)
  {
    return IOConnectCallMethod(v0, 0x89u, &input, 0, 0, 0, 0, 0, 0, 0);
  }

  sub_1000AF0C4();
  return 3758097084;
}

uint64_t sub_100085E6C(uint64_t a1)
{
  input = a1;
  v1 = sub_100082754();
  if (v1)
  {
    return IOConnectCallMethod(v1, 0x97u, &input, 1u, 0, 0, 0, 0, 0, 0);
  }

  sub_1000AF12C();
  return 3758097084;
}

uint64_t sub_100085F14(mach_port_t a1, uint32_t a2, const uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, size_t *a10)
{

  return IOConnectCallMethod(a1, a2, a3, 1u, 0, 0, 0, 0, a9, a10);
}

uint64_t sub_100085F74(mach_port_t a1, uint32_t a2, uint64_t a3, uint64_t a4, const void *a5, size_t a6, uint64_t a7, uint64_t a8, void *a9, size_t *a10)
{

  return IOConnectCallMethod(a1, a2, 0, 0, a5, a6, 0, 0, a9, a10);
}

uint64_t sub_100085FA0(mach_port_t a1, uint32_t a2, const uint64_t *a3, uint32_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, size_t *a10)
{

  return IOConnectCallMethod(a1, a2, a3, a4, v11, v10, 0, 0, a9, a10);
}

uint64_t sub_100085FC0(mach_port_t a1, uint32_t a2, const uint64_t *a3, uint32_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, size_t *a10)
{

  return IOConnectCallMethod(a1, a2, a3, a4, v11, v10, 0, 0, a9, a10);
}

uint64_t sub_10008601C(mach_port_t a1, uint32_t a2, const uint64_t *a3, uint64_t a4, const void *a5, size_t a6, uint64_t a7, uint64_t a8, void *a9, size_t *a10)
{

  return IOConnectCallMethod(a1, a2, a3, 1u, a5, a6, 0, 0, a9, a10);
}

void sub_100086078(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);

  bzero(va, 0x8000uLL);
}

uint64_t sub_100086098(void *a1)
{

  return memset_s(a1, 0x20uLL, 0, 0x20uLL);
}

uint64_t sub_1000860C0(void *a1, rsize_t __n)
{

  return memset_s(a1, __n, 0, __n);
}

void sub_1000860E4(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v17 = *(v16 - 104);
  *(v16 - 96) = a1;
  *(v16 - 88) = v17;
  *(v16 - 80) = a16;
}

uint64_t sub_1000861B8(void *a1)
{

  return memset_s(a1, 0x4000uLL, 0, 0x4000uLL);
}

uint64_t sub_1000862B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return memset_s(&a9, 0x58uLL, 0, 0x58uLL);
}

void *sub_100086300(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, size_t __n, uint64_t a22, uint64_t a23, char __src)
{

  return memcpy(a1, &__src, __n);
}

void sub_100086318(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);

  bzero(va, 0x1000uLL);
}

const char *sub_10008637C(const char *__format, ...)
{
  va_start(va, __format);
  if (__format)
  {
    return vsnprintf(&byte_1000EB558, 0x20uLL, __format, va);
  }

  byte_1000EB558 = 0;
  return __format;
}

uint64_t sub_1000863D0()
{
  ccsha256_di();
  ccdigest();
  return 0;
}

unint64_t sub_100086444(unsigned int a1)
{
  info = 0;
  mach_timebase_info(&info);
  return 1000000000 * info.denom * a1 / info.numer;
}

unint64_t sub_100086490(uint64_t a1)
{
  info = 0;
  mach_timebase_info(&info);
  return info.numer * a1 / info.denom;
}

uint64_t sub_1000864D0()
{
  info = 0;
  mach_timebase_info(&info);
  return mach_continuous_time() * info.numer / info.denom / 0x3E8;
}

__darwin_time_t sub_100086524()
{
  v1.tv_sec = 0;
  *&v1.tv_usec = 0;
  gettimeofday(&v1, 0);
  return v1.tv_sec;
}

void *sub_100086588(unsigned int a1, unsigned int a2)
{
  v2 = a1 + 1;
  if (v2 == v2 << 31 >> 31)
  {
    v4 = calloc(0x20uLL, 1uLL);
    v5 = v4;
    if (v4)
    {
      v4[1] = 0;
      *v4 = a2;
      *(v4 + 1) = v2;
      v6 = calloc(v2 * a2, 1uLL);
      v5[2] = v2 * a2;
      v5[3] = v6;
    }
  }

  else
  {
    sub_1000AF4EC();
    return 0;
  }

  return v5;
}

uint64_t sub_100086604(_DWORD *a1)
{
  v3 = a1[2];
  v2 = a1[3];
  result = v2 - v3;
  if (v2 < v3)
  {
    return (result + a1[1]);
  }

  return result;
}

uint64_t sub_100086620(unsigned int *a1, const void *a2)
{
  v3 = a1[3];
  v4 = (v3 + 1) % a1[1];
  memcpy((*(a1 + 3) + *a1 * v3), a2, *a1);
  a1[3] = v4;
  if (v4 == a1[2])
  {
    a1[2] = (v4 + 1) % a1[1];
  }

  return 0;
}

uint64_t sub_10008668C(unsigned int *a1, void *__dst)
{
  v2 = a1[2];
  if (v2 == a1[3])
  {
    return 0xFFFFFFFFLL;
  }

  if (__dst)
  {
    memcpy(__dst, (*(a1 + 3) + *a1 * v2), *a1);
    v2 = a1[2];
  }

  memset_s((*(a1 + 3) + *a1 * v2), *a1, 0, *a1);
  result = 0;
  a1[2] = (a1[2] + 1) % a1[1];
  return result;
}

uint64_t sub_10008671C(unsigned int *a1, void *__dst)
{
  v2 = a1[2];
  if (v2 == a1[3])
  {
    return 0xFFFFFFFFLL;
  }

  memcpy(__dst, (*(a1 + 3) + *a1 * v2), *a1);
  return 0;
}

uint64_t sub_100086768(int *a1, void *a2, unsigned int *a3)
{
  v7 = a1[2];
  v6 = a1[3];
  v8 = v6 - v7;
  if (v6 < v7)
  {
    v8 += a1[1];
  }

  if (!v8)
  {
    return 0;
  }

  v9 = *a1 * v8;
  v10 = calloc(v9, 1uLL);
  if (!v10)
  {
    return 0xFFFFFFFFLL;
  }

  v11 = v10;
  v12 = a1[2];
  v13 = a1[3];
  if (v13 <= v12)
  {
    if (v12 <= v13)
    {
      goto LABEL_13;
    }

    v17 = a1[1] - v12;
    memcpy(v10, (*(a1 + 3) + *a1 * v12), *a1 * v17);
    if (v8 <= v17)
    {
      goto LABEL_13;
    }

    v15 = *(a1 + 3);
    v14 = *a1 * (v8 - v17);
    v10 = &v11[*a1 * v17];
  }

  else
  {
    v14 = *a1 * v8;
    v15 = (*(a1 + 3) + *a1 * v12);
  }

  memcpy(v10, v15, v14);
LABEL_13:
  v18 = a1[1];
  v19 = *a1;
  a1[2] = (a1[2] + v8) % v18;
  memset_s(*(a1 + 3), v19 * v18, 0, v19 * v18);
  result = 0;
  *a2 = v11;
  *a3 = v9;
  return result;
}

uint64_t sub_100086898(uint64_t a1)
{
  *(a1 + 8) = 0;
  v1 = (*a1 * *(a1 + 4));
  return memset_s(*(a1 + 24), v1, 0, v1);
}

void sub_1000868B8(void *a1)
{
  *(a1 + 1) = 0;
  v2 = (*a1 * *(a1 + 1));
  memset_s(*(a1 + 3), v2, 0, v2);
  memset_s(*(a1 + 3), *(a1 + 2), 0, *(a1 + 2));
  free(*(a1 + 3));
  memset_s(a1, 0x20uLL, 0, 0x20uLL);

  free(a1);
}

BOOL sub_10008693C(uint8x16_t *a1)
{
  v1 = vmovl_high_u8(*a1);
  v2 = vmovl_u8(*a1->i8);
  v3 = vmovl_u16(vorr_s8(vorr_s8(*v2.i8, *v1.i8), vorr_s8(*&vextq_s8(v2, v2, 8uLL), *&vextq_s8(v1, v1, 8uLL))));
  return vorr_s8(*v3.i8, *&vextq_s8(v3, v3, 8uLL)) != 0;
}

BOOL sub_100086980(unsigned __int8 *a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  v2 = 0;
  do
  {
    v3 = *a1++;
    v2 |= v3;
    --a2;
  }

  while (a2);
  return v2 != 0;
}

_DWORD *sub_1000869AC(_DWORD *result)
{
  if (result)
  {
    return (*result != 0);
  }

  return result;
}

uint64_t sub_1000869F4(char a1)
{
  if ((a1 & 0x1Fu) > 0x14)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return a1 & 0x1F;
  }
}

uint64_t sub_100086A44(const char *a1, uint64_t a2, unint64_t a3)
{
  v3 = a3;
  v4 = a1;
  v24 = 0;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  *__str = 0u;
  v17 = 0u;
  v5 = &__stdoutp;
  if (a3 >= 0x41)
  {
    fprintf(__stdoutp, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s %sdump %s (len = %zd)%s%s\n", "aks", "", -1, "", "", "", "", "dump_bytes_internal", ":", 844, "", "", a1, a3, "", "");
    v4 = "";
  }

  else if (!a3)
  {
    return memset_s(__str, 0x81uLL, 0, 0x81uLL);
  }

  v6 = 0;
  v15 = v3;
  do
  {
    v7 = v5;
    if (v3 - v6 >= 0x40)
    {
      v8 = 64;
    }

    else
    {
      v8 = v3 - v6;
    }

    if (v3 != v6)
    {
      v9 = (a2 + v6);
      if (v8 <= 1)
      {
        v10 = 1;
      }

      else
      {
        v10 = v8;
      }

      v11 = __str;
      do
      {
        v12 = *v9++;
        snprintf(v11, 3uLL, "%02x", v12);
        v11 += 2;
        --v10;
      }

      while (v10);
    }

    v5 = v7;
    fprintf(*v7, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s %s%s%s[%04zu,%04zu): %s%s%s%s\n", "aks", "", -1, "", "", "", "", "dump_bytes_internal", ":", 854, "", "", v4, "", v6, v8 + v6, "", __str, "", "");
    v6 += v8;
    v3 = v15;
  }

  while (v6 < v15);
  return memset_s(__str, 0x81uLL, 0, 0x81uLL);
}

_BYTE *sub_100086C34(unsigned __int8 *a1, unint64_t a2)
{
  if (a2 >= 0x10)
  {
    v2 = 16;
  }

  else
  {
    v2 = a2;
  }

  if (a2)
  {
    v4 = byte_1000EB578;
    v5 = v2;
    do
    {
      v6 = *a1++;
      snprintf(v4, 3uLL, "%02x", v6);
      v4 += 2;
      --v5;
    }

    while (v5);
  }

  byte_1000EB578[2 * v2] = 0;
  return byte_1000EB578;
}

char *sub_100086CC8(char *result, unint64_t a2)
{
  if (a2 >= 2)
  {
    v2 = a2 >> 1;
    v3 = &result[a2 - 1];
    do
    {
      v4 = *result;
      *result++ = *v3;
      *v3-- = v4;
      --v2;
    }

    while (v2);
  }

  return result;
}

uint64_t sub_100086CF8(uint64_t result)
{
  if (result == 0 || result >= 0xFFFFFFDA)
  {
    return dword_1000B94A0[(result + 38)];
  }

  return result;
}

uint64_t sub_100086D14(uint64_t result, int a2, const char *a3)
{
  if ((result & 1) == 0)
  {
    fprintf(__stdoutp, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s failed REQUIRE condition (%s:%d)\n%s\n", "aks", "", -1, "", "", "", "", "REQUIRE_func", ":", 1134, "", a3, a2, "");
    abort();
  }

  return result;
}

uint64_t sub_100086D8C(__int128 *a1, __int128 *a2)
{
  memset(v15, 0, sizeof(v15));
  sub_100087CD4(v15, 0x20u);
  v4 = cccurve25519_make_pub() == 0;
  sub_100086D14(v4, 58, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/shared_crypto.c");
  v9 = 0u;
  v10 = 0u;
  __s = 0x1000000;
  v5 = a2[1];
  v11 = *a2;
  v12 = v5;
  v6 = a1[1];
  v13 = *a1;
  v14 = v6;
  cccurve25519();
  ccsha256_di();
  ccdigest();
  memset_s(&__s, 0x64uLL, 0, 0x64uLL);
  memset_s(v15, 0x20uLL, 0, 0x20uLL);
  return 0;
}