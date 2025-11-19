uint64_t sub_100042F8C()
{
  v0 = sub_1000561D0(UMDAPFSSupportVolumeHelper, qword_1000EB608, byte_1000EB602);
  v1 = qword_1000EB2D8;
  qword_1000EB2D8 = v0;

  v2 = sub_100053060(UMDUserManager, qword_1000EB2D8);
  v3 = qword_1000EB2E0;
  qword_1000EB2E0 = v2;

  if (qword_1000EB310 != -1)
  {
    sub_100089D14();
  }

  v4 = qword_1000EB308;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v39 = 0;
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
      LOWORD(v37) = 0;
      v36 = 2;
      v35 = &v37;
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

  if (!sub_10003E524(0))
  {
    sub_100018028("UserManagement user switch task failed to load user manifest");
LABEL_66:
    sub_10008B010(qword_1000EB2E0);
    sub_100018028("UserManagement user switch task next session bag missing or corrupt");
  }

  if (qword_1000EB310 != -1)
  {
    sub_100089CEC();
  }

  v9 = qword_1000EB308;
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *v39 = 0;
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
      LOWORD(v37) = 0;
      v36 = 2;
      v35 = &v37;
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

  sub_1000897B8(qword_1000EB2E0, qword_1000EB5A0);
  if (dword_1000EB5B0 != 1)
  {
    if (qword_1000EB310 != -1)
    {
      sub_100089CEC();
    }

    v14 = qword_1000EB308;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *v39 = 0;
      v15 = sub_1000011A8(1);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v16 = v15;
      }

      else
      {
        v16 = v15 & 0xFFFFFFFE;
      }

      if (v16)
      {
        LOWORD(v37) = 0;
        v36 = 2;
        v35 = &v37;
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

    if (qword_1000EB2E8)
    {
      sub_100089E34();
    }

    else
    {
      v19 = sub_100056424(UMDPersonaManager, qword_1000EB2E0);
      v20 = qword_1000EB2E8;
      qword_1000EB2E8 = v19;

      v38 = 0;
      if (!sub_10003E884(&v38))
      {
LABEL_68:
        v33 = sub_100018028("UserManagement user switch task failed to load persona manifest", v35, v36);
        return sub_100043504(v33, v34);
      }

      if (qword_1000EB330 == -1)
      {
        goto LABEL_39;
      }
    }

    sub_100089D40();
LABEL_39:
    v21 = qword_1000EB328;
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *v39 = 0;
      v22 = sub_1000011A8(0);
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
        LOWORD(v37) = 0;
        v36 = 2;
        v35 = &v37;
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

    if (qword_1000EB330 != -1)
    {
      sub_100089D40();
    }

    v26 = qword_1000EB328;
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
    {
      v37 = 0;
      v27 = sub_1000011A8(0);
      if (!os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
      {
        v27 &= ~1u;
      }

      if (v27)
      {
        v28 = qword_1000EB2E8;
        v29 = v26;
        v30 = sub_1000013A0(v28);
        v39[0] = 138412290;
        *&v39[1] = v30;
        v36 = 12;
        v35 = v39;
        v31 = _os_log_send_and_compose_impl();

        if (v31)
        {
          sub_100002A8C(v31);
        }
      }

      else
      {
        v31 = 0;
      }

      free(v31);
    }
  }

  v39[0] = -1;
  LODWORD(v37) = -1;
  if ((sub_10008AE10(qword_1000EB2E0, &v37, v39) & 1) == 0)
  {
    goto LABEL_66;
  }

  result = sub_100043504(v39[0], v37);
  if (result)
  {
    result = sub_10008B010(qword_1000EB2E0);
    if ((result & 1) == 0)
    {
      sub_100018028("UserManagement user switch task failed to remove nextSession file");
      goto LABEL_68;
    }
  }

  return result;
}

uint64_t sub_100043504(unsigned int a1, uint64_t a2)
{
  if (qword_1000EB320 != -1)
  {
    sub_100089D90();
  }

  v4 = qword_1000EB318;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = sub_1000011A8(0);
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

  if (a2 == -1)
  {
    sub_100089E4C();
  }

  if (a2 != a1)
  {
    sub_10004F644(a2);
  }

  return sub_10003FC14(a1, a2, 0, 1);
}

uint64_t sub_10004366C(_removefile_state *a1, const char *a2, int *a3)
{
  dst = 0;
  if (removefile_state_get(a1, 5u, &dst))
  {
    if (qword_1000EB310 != -1)
    {
      sub_100089CEC();
    }

    v5 = qword_1000EB308;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v33 = 0;
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
        v36.st_dev = 136315138;
        *&v36.st_mode = a2;
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

    dst = 2;
    goto LABEL_23;
  }

  if (dst == 2)
  {
    goto LABEL_23;
  }

  if (qword_1000EB310 != -1)
  {
    sub_100089CEC();
  }

  v10 = qword_1000EB308;
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *v33 = 0;
    v11 = sub_1000011A8(1);
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 &= ~1u;
    }

    if (v11)
    {
      v12 = dst;
      v13 = v10;
      v14 = strerror(v12);
      v36.st_dev = 136315394;
      *&v36.st_mode = a2;
      WORD2(v36.st_ino) = 2080;
      *(&v36.st_ino + 6) = v14;
      v15 = _os_log_send_and_compose_impl();

      if (v15)
      {
        sub_100002A8C(v15);
      }
    }

    else
    {
      v15 = 0;
    }

    free(v15);
  }

  if (dst != 1)
  {
    goto LABEL_23;
  }

  memset(&v36, 0, sizeof(v36));
  if (lstat(a2, &v36))
  {
    if (qword_1000EB310 != -1)
    {
      sub_100089CEC();
    }

    v17 = qword_1000EB308;
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_49;
    }

    v18 = sub_1000011A8(1);
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 &= ~1u;
    }

    if (v18)
    {
      goto LABEL_37;
    }

    goto LABEL_47;
  }

  if ((v36.st_flags & 2) == 0)
  {
LABEL_23:
    if (a3 && !*a3)
    {
      *a3 = dst;
    }

    return 0;
  }

  if (lchflags(a2, v36.st_flags & 0xFFFFFFFD))
  {
    if (qword_1000EB310 != -1)
    {
      sub_100089CEC();
    }

    v17 = qword_1000EB308;
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_49;
    }

    v23 = sub_1000011A8(1);
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v23 &= ~1u;
    }

    if (v23)
    {
LABEL_37:
      v19 = v17;
      v20 = __error();
      v21 = strerror(*v20);
      *v33 = 136315394;
      *&v33[4] = a2;
      v34 = 2080;
      v35 = v21;
      v22 = _os_log_send_and_compose_impl();

      if (v22)
      {
        sub_100002A8C(v22);
      }

      goto LABEL_48;
    }

LABEL_47:
    v22 = 0;
LABEL_48:
    free(v22);
LABEL_49:

    goto LABEL_23;
  }

  if (qword_1000EB310 != -1)
  {
    sub_100089CEC();
  }

  v24 = qword_1000EB308;
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
      *v33 = 136315138;
      *&v33[4] = a2;
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

  v29 = sub_1000013A0(qword_1000EB608);
  v30 = [NSString stringWithUTF8String:a2];
  v31 = [v29 removeFileAtPath:v30 error:0];

  if ((v31 & 1) == 0)
  {
    goto LABEL_23;
  }

  return 0;
}

uint64_t sub_100043BDC(const __CFDictionary *a1)
{
  v2 = sub_100079590(a1, kUMUserSessionUUIDKey);
  v3 = sub_1000023E8(a1, kMKBUserSessionIDKey);
  if (v2)
  {
    v4 = v3;
    v5 = sub_100016954(NSUUID, v2);
    if (v5)
    {
      if (qword_1000EB310 != -1)
      {
        sub_100089D14();
      }

      v6 = qword_1000EB308;
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v40 = 0;
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
          LOWORD(v43) = 0;
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

      if (qword_1000EB310 != -1)
      {
        sub_100089CEC();
      }

      v20 = qword_1000EB308;
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v40 = 0;
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
          LODWORD(v43) = 67109120;
          HIDWORD(v43) = v4;
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

      v25 = sub_100089A80(qword_1000EB608);
      v39 = 0;
      v26 = [v25 loadIdentity:v5 intoSession:v4 error:&v39];
      v15 = v39;

      if (v26)
      {
        if (qword_1000EB310 != -1)
        {
          sub_100089CEC();
        }

        v27 = qword_1000EB308;
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          v40 = 0;
          v28 = sub_1000011A8(1);
          if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
          {
            v29 = v28;
          }

          else
          {
            v29 = v28 & 0xFFFFFFFE;
          }

          if (v29)
          {
            LODWORD(v43) = 67109120;
            HIDWORD(v43) = v4;
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

        v37 = 1;
        goto LABEL_73;
      }

      if (qword_1000EB310 != -1)
      {
        sub_100089CEC();
      }

      v32 = qword_1000EB308;
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        v43 = 0;
        v33 = sub_1000011A8(1);
        if (!os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
        {
          v33 &= ~1u;
        }

        if (v33)
        {
          v34 = v32;
          v35 = [v15 code];
          LODWORD(v40) = 67109376;
          HIDWORD(v40) = v4;
          v41 = 2048;
          v42 = v35;
          v36 = _os_log_send_and_compose_impl();

          if (v36)
          {
            sub_100002A8C(v36);
          }
        }

        else
        {
          v36 = 0;
        }

        free(v36);
      }
    }

    else
    {
      if (qword_1000EB310 != -1)
      {
        sub_100089D14();
      }

      v15 = qword_1000EB308;
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v40 = 0;
        v16 = sub_1000011A8(1);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          v17 = v16;
        }

        else
        {
          v17 = v16 & 0xFFFFFFFE;
        }

        if (v17)
        {
          LOWORD(v43) = 0;
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
    }

    v37 = 0;
LABEL_73:

    goto LABEL_74;
  }

  if (qword_1000EB310 != -1)
  {
    sub_100089D14();
  }

  v5 = qword_1000EB308;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v40 = 0;
    v11 = sub_1000011A8(1);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v12 = v11;
    }

    else
    {
      v12 = v11 & 0xFFFFFFFE;
    }

    if (v12)
    {
      LOWORD(v43) = 0;
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

  v37 = 0;
LABEL_74:

  return v37;
}

uint64_t sub_100044184(void *a1, uint64_t a2, void *a3)
{
  v5 = a1;
  v6 = sub_100089A80(qword_1000EB608);
  v7 = [v6 isIdentityLoadedIntoSession:a2];

  if (v7)
  {
    if (qword_1000EB310 != -1)
    {
      sub_100089D14();
    }

    v8 = qword_1000EB308;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v44[0] = 0;
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
        LODWORD(v45) = 67109120;
        HIDWORD(v45) = a2;
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

    v18 = 0;
LABEL_23:
    v19 = 1;
    goto LABEL_61;
  }

  if (qword_1000EB310 != -1)
  {
    sub_100089D14();
  }

  v13 = qword_1000EB308;
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v44[0] = 0;
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
      LODWORD(v45) = 67109120;
      HIDWORD(v45) = a2;
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

  v20 = sub_100089A80(qword_1000EB608);
  v43 = 0;
  v21 = [v20 loadIdentity:v5 intoSession:a2 error:&v43];
  v22 = v43;

  if (v21)
  {
    if (qword_1000EB310 != -1)
    {
      sub_100089CEC();
    }

    v23 = qword_1000EB308;
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v44[0] = 0;
      v24 = sub_1000011A8(1);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        v25 = v24;
      }

      else
      {
        v25 = v24 & 0xFFFFFFFE;
      }

      if (v25)
      {
        LOWORD(v45) = 0;
        v26 = _os_log_send_and_compose_impl();
        v27 = v26;
        if (v26)
        {
          sub_100002A8C(v26);
        }
      }

      else
      {
        v27 = 0;
      }

      free(v27);
    }

    v33 = sub_100089A80(qword_1000EB608);
    v42 = v22;
    v34 = [v33 unloadIdentityFromSession:a2 error:&v42];
    v18 = v42;

    if ((v34 & 1) == 0)
    {
      if (qword_1000EB310 != -1)
      {
        sub_100089CEC();
      }

      v35 = qword_1000EB308;
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
      {
        v45 = 0;
        v36 = sub_1000011A8(1);
        if (!os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
        {
          v36 &= ~1u;
        }

        if (v36)
        {
          v37 = v35;
          v38 = [v18 code];
          LODWORD(v44[0]) = 134217984;
          *(v44 + 4) = v38;
          v39 = _os_log_send_and_compose_impl();

          if (v39)
          {
            sub_100002A8C(v39);
          }
        }

        else
        {
          v39 = 0;
        }

        free(v39);
      }
    }

    goto LABEL_23;
  }

  if (qword_1000EB310 != -1)
  {
    sub_100089CEC();
  }

  v28 = qword_1000EB308;
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    v45 = 0;
    v29 = sub_1000011A8(1);
    if (!os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      v29 &= ~1u;
    }

    if (v29)
    {
      v30 = v28;
      v31 = [v22 code];
      LODWORD(v44[0]) = 134217984;
      *(v44 + 4) = v31;
      v32 = _os_log_send_and_compose_impl();

      if (v32)
      {
        sub_100002A8C(v32);
      }
    }

    else
    {
      v32 = 0;
    }

    free(v32);
  }

  if (a3)
  {
    v40 = v22;
    v19 = 0;
    *a3 = v22;
  }

  else
  {
    v19 = 0;
  }

  v18 = v22;
LABEL_61:

  return v19;
}

id sub_1000446D4(const __CFDictionary *a1)
{
  v1 = sub_1000023E8(a1, kMKBUserSessionIDKey);
  if (qword_1000EB310 != -1)
  {
    sub_100089D14();
  }

  v2 = qword_1000EB308;
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v19 = 0;
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
      LODWORD(v22) = 67109120;
      HIDWORD(v22) = v1;
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

  v7 = sub_100089A80(qword_1000EB608);
  v18 = 0;
  v8 = [v7 unloadIdentityFromSession:v1 error:&v18];
  v9 = v18;

  if (v8)
  {
    if (qword_1000EB310 != -1)
    {
      sub_100089CEC();
    }

    v10 = qword_1000EB308;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 0;
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
        LODWORD(v22) = 67109120;
        HIDWORD(v22) = v1;
        v13 = _os_log_send_and_compose_impl();
        if (!v13)
        {
          goto LABEL_31;
        }

        goto LABEL_29;
      }

      goto LABEL_30;
    }
  }

  else
  {
    if (qword_1000EB310 != -1)
    {
      sub_100089CEC();
    }

    v10 = qword_1000EB308;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v22 = 0;
      v14 = sub_1000011A8(1);
      if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v14 &= ~1u;
      }

      if (v14)
      {
        v15 = v10;
        v16 = [v9 code];
        LODWORD(v19) = 67109376;
        HIDWORD(v19) = v1;
        v20 = 2048;
        v21 = v16;
        v13 = _os_log_send_and_compose_impl();

        if (!v13)
        {
LABEL_31:
          free(v13);
          goto LABEL_32;
        }

LABEL_29:
        sub_100002A8C(v13);
        goto LABEL_31;
      }

LABEL_30:
      v13 = 0;
      goto LABEL_31;
    }
  }

LABEL_32:

  return v8;
}

CFArrayRef sub_1000449E8(void *a1)
{
  v1 = sub_100056BC8(qword_1000EB2E8, a1);
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_10008CDD8(qword_1000EB2E8, 0, v1);
  if (v3)
  {
    v4 = v3;
    if (CFDictionaryContainsKey(v3, off_1000EA4B0) && (v5 = sub_10007947C(v4, off_1000EA4B0)) != 0)
    {
      Copy = CFArrayCreateCopy(kCFAllocatorDefault, v5);
    }

    else
    {
      Copy = 0;
    }

    CFRelease(v4);
  }

  else
  {
    Copy = 0;
  }

  CFRelease(v2);
  return Copy;
}

uint64_t sub_100044C54(__CFDictionary *a1, void *a2)
{
  v3 = a2;
  if (!sub_100002454(a1, kUMUserPersonaDisabledKey))
  {
    CFDictionarySetValue(a1, kUMUserPersonaDisabledKey, kCFBooleanTrue);
  }

  if (v3)
  {
    if (qword_1000EB310 != -1)
    {
      sub_100089D14();
    }

    v4 = qword_1000EB308;
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
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

    CFDictionarySetValue(a1, kUMUserPersonaDisabledKey, v3);
    if (qword_1000EB310 != -1)
    {
      sub_100089CEC();
    }

    v9 = qword_1000EB308;
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

    v14 = sub_10008900C(qword_1000EB608);
    v15 = [NSString stringWithUTF8String:"com.apple.mobile.usermanagerd.userpersona_disabled"];
    [v14 post:v15];
  }

  return 1;
}

uint64_t sub_100044EE0(const __CFDictionary *a1, void *a2)
{
  v3 = a2;
  v4 = sub_100056BC8(qword_1000EB2E8, v3);
  if (!v4)
  {
    goto LABEL_8;
  }

  if (CFDictionaryContainsKey(a1, kUMUserPersonaUniqueStringKey))
  {
    v5 = qword_1000EB2E8;
    v6 = sub_100079590(a1, kUMUserPersonaUniqueStringKey);
    v7 = sub_100056854(v5, v6, v4);
  }

  else
  {
    if (!CFDictionaryContainsKey(a1, kUMUserPersonaTypeKey))
    {
      goto LABEL_8;
    }

    v8 = qword_1000EB2E8;
    v9 = sub_1000023E8(a1, kUMUserPersonaTypeKey);
    v7 = sub_10008CDD8(v8, v9, v4);
  }

  v10 = v7;
  if (v7)
  {
    v11 = sub_10008A438(qword_1000EB2E0, v3);
    v12 = sub_1000450CC(v4, v10, v11, 0);
    CFRelease(v4);
    CFRelease(v10);
    goto LABEL_22;
  }

LABEL_8:
  if (qword_1000EB310 != -1)
  {
    sub_100089D14();
  }

  v13 = qword_1000EB308;
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

  if (v4)
  {
    CFRelease(v4);
  }

  v12 = 22;
LABEL_22:

  return v12;
}

uint64_t sub_1000450CC(void *a1, const __CFDictionary *a2, unsigned int a3, int a4)
{
  if (qword_1000EB310 != -1)
  {
    sub_100089D14();
  }

  memset(uu, 0, sizeof(uu));
  v8 = qword_1000EB308;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *&v230[0] = 0;
    v9 = sub_1000011A8(1);
    v10 = v8;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = v9;
    }

    else
    {
      v11 = v9 & 0xFFFFFFFE;
    }

    if (v11)
    {
      *in = 138412290;
      *&in[4] = a2;
      LODWORD(v202) = 12;
      v201 = in;
      v12 = _os_log_send_and_compose_impl();

      if (v12)
      {
        sub_100002A8C(v12);
      }
    }

    else
    {

      v12 = 0;
    }

    free(v12);
  }

  v13 = sub_1000023E8(a2, kUMUserPersonaTypeKey);
  v14 = sub_1000023E8(a2, kUMUserPersonaIDKey);
  v15 = sub_100079590(a2, kUMUserPersonaUniqueStringKey);
  if ((a4 & 1) == 0 && (v13 | 4) != 6)
  {
    if (qword_1000EB310 != -1)
    {
      sub_100089CEC();
    }

    v16 = qword_1000EB308;
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *&v230[0] = 0;
      v29 = sub_1000011A8(1);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v30 = v29;
      }

      else
      {
        v30 = v29 & 0xFFFFFFFE;
      }

      if (v30)
      {
        *in = 134217984;
        *&in[4] = v13;
        v31 = _os_log_send_and_compose_impl();
        v32 = v31;
        if (v31)
        {
          sub_100002A8C(v31);
        }
      }

      else
      {
        v32 = 0;
      }

      free(v32);
    }

    v42 = 1;
    goto LABEL_444;
  }

  if (v14 == -1 && v13 != 4)
  {
    if (qword_1000EB310 != -1)
    {
      sub_100089CEC();
    }

    v16 = qword_1000EB308;
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *&v230[0] = 0;
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
        *in = 138412290;
        *&in[4] = v15;
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

    v42 = 22;
    goto LABEL_444;
  }

  v208 = v13;
  v204 = a1;
  v206 = v14;
  if (!sub_100002454(a2, kUMUserPersonaDisabledKey))
  {
    CFDictionarySetValue(a2, kUMUserPersonaDisabledKey, kCFBooleanTrue);
  }

  CFDictionarySetValue(a2, off_1000EA4B8, kCFBooleanTrue);
  v21 = sub_100089790(qword_1000EB2E8);
  sub_10008B8D8(v21);

  if (qword_1000EB330 != -1)
  {
    sub_100089D40();
  }

  v22 = qword_1000EB328;
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    *&v230[0] = 0;
    v23 = sub_1000011A8(1);
    v24 = v22;
    if (!os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v23 &= ~1u;
    }

    if (v23)
    {
      v25 = a2;
      v26 = sub_100089790(qword_1000EB2E8);
      v27 = sub_100055380(v26);
      *in = 134217984;
      *&in[4] = v27;
      LODWORD(v202) = 12;
      v201 = in;
      v28 = _os_log_send_and_compose_impl();

      if (v28)
      {
        sub_100002A8C(v28);
      }

      a2 = v25;
    }

    else
    {

      v28 = 0;
    }

    free(v28);
  }

  sub_10008EBBC(qword_1000EB2E8);
  if (v208 != 4)
  {
    if (sub_100056C40(qword_1000EB2E8, v206))
    {
      v210[1] = 0;
      v33 = sub_100091E34();
      v34 = 0;
      v16 = v34;
      if ((v33 & 1) == 0)
      {
        v42 = [v34 code];
        if (qword_1000EB310 != -1)
        {
          sub_100089CEC();
        }

        v43 = qword_1000EB308;
        if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
        {
          *&v230[0] = 0;
          v44 = sub_1000011A8(1);
          if (!os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
          {
            v44 &= ~1u;
          }

          if (v44)
          {
            v45 = v43;
            v46 = strerror(v42);
            *in = 67109378;
            *&in[4] = v206;
            *&in[8] = 2080;
            *&in[10] = v46;
            v47 = _os_log_send_and_compose_impl();

            if (v47)
            {
              sub_100002A8C(v47);
            }
          }

          else
          {
            v47 = 0;
          }

          free(v47);
        }

        goto LABEL_444;
      }

      v207 = v34;
      if (qword_1000EB310 != -1)
      {
        sub_100089CEC();
      }

      v35 = qword_1000EB308;
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
      {
        *in = 0;
        v36 = sub_1000011A8(1);
        v35 = v35;
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
          LODWORD(v230[0]) = 67109120;
          DWORD1(v230[0]) = v206;
          LODWORD(v202) = 8;
          v201 = v230;
          v38 = _os_log_send_and_compose_impl();

          if (v38)
          {
            sub_100002A8C(v38);
          }
        }

        else
        {

          v38 = 0;
        }

        free(v38);
      }
    }

    else
    {
      if (qword_1000EB310 != -1)
      {
        sub_100089CEC();
      }

      v35 = qword_1000EB308;
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
      {
        *in = 0;
        v39 = sub_1000011A8(1);
        v35 = v35;
        if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
        {
          v40 = v39;
        }

        else
        {
          v40 = v39 & 0xFFFFFFFE;
        }

        if (v40)
        {
          LODWORD(v230[0]) = 67109120;
          DWORD1(v230[0]) = v206;
          LODWORD(v202) = 8;
          v201 = v230;
          v41 = _os_log_send_and_compose_impl();

          if (v41)
          {
            sub_100002A8C(v41);
          }
        }

        else
        {

          v41 = 0;
        }

        free(v41);
      }

      v207 = 0;
    }

    if (a4)
    {
      goto LABEL_90;
    }

    goto LABEL_88;
  }

  v207 = 0;
  if ((a4 & 1) == 0)
  {
LABEL_88:
    if (v15)
    {
      v48 = sub_1000890EC(qword_1000EB608);
      [v48 deleteKeychainItemsForPersonaWithUUID:v15 error:0];
    }
  }

LABEL_90:
  v205 = v15;
  if (!a4)
  {
    goto LABEL_157;
  }

  v203 = a2;
  memset(v230, 0, sizeof(v230));
  v49 = [&off_1000E15D0 countByEnumeratingWithState:v230 objects:in count:16];
  if (!v49)
  {
    goto LABEL_145;
  }

  v50 = v49;
  v51 = **&v230[1];
  do
  {
    for (i = 0; i != v50; i = i + 1)
    {
      if (**&v230[1] != v51)
      {
        objc_enumerationMutation(&off_1000E15D0);
      }

      v53 = *(*(&v230[0] + 1) + 8 * i);
      v54 = sub_1000024A8(qword_1000EB608);
      v55 = sub_100088F2C(qword_1000EB608);
      v56 = sub_100089AC4(v55);
      v213 = 0;
      v57 = [v54 pidForLaunchdJobWithLabel:v53 forUser:v56 error:&v213];
      v58 = v213;

      if (v57)
      {
        v59 = sub_1000024A8(qword_1000EB608);
        v212 = v58;
        v60 = [v59 terminatePID:v57 withReasonNamespace:2 reasonCode:0 reasonString:@"PersonaTermination" error:&v212];
        v61 = v212;

        if (v60)
        {
          if (qword_1000EB330 != -1)
          {
            sub_100089D40();
          }

          v62 = qword_1000EB328;
          if (!os_log_type_enabled(v62, OS_LOG_TYPE_INFO))
          {
            goto LABEL_137;
          }

          v211 = 0;
          v63 = sub_1000011A8(0);
          if (os_log_type_enabled(v62, OS_LOG_TYPE_INFO))
          {
            v64 = v63;
          }

          else
          {
            v64 = v63 & 0xFFFFFFFE;
          }

          if (v64)
          {
            *v231 = 138543618;
            *&v231[4] = v53;
            v232 = 1024;
            *v233 = v57;
            LODWORD(v202) = 18;
            v201 = v231;
LABEL_124:
            v72 = _os_log_send_and_compose_impl();
            v73 = v72;
            if (v72)
            {
              sub_100002A8C(v72);
            }

LABEL_136:
            free(v73);
LABEL_137:

            v58 = v61;
            goto LABEL_143;
          }
        }

        else
        {
          if (qword_1000EB330 != -1)
          {
            sub_100089D40();
          }

          v62 = qword_1000EB328;
          if (!os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_137;
          }

          v211 = 0;
          v70 = sub_1000011A8(0);
          if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
          {
            v71 = v70;
          }

          else
          {
            v71 = v70 & 0xFFFFFFFE;
          }

          if (v71)
          {
            *v231 = 138543874;
            *&v231[4] = v53;
            v232 = 1024;
            *v233 = v57;
            *&v233[4] = 2114;
            *&v233[6] = v61;
            LODWORD(v202) = 28;
            v201 = v231;
            goto LABEL_124;
          }
        }

        v73 = 0;
        goto LABEL_136;
      }

      if (v58)
      {
        if (qword_1000EB330 != -1)
        {
          sub_100089D40();
        }

        v65 = qword_1000EB328;
        if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
        {
          v212 = 0;
          v66 = sub_1000011A8(0);
          if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
          {
            v67 = v66;
          }

          else
          {
            v67 = v66 & 0xFFFFFFFE;
          }

          if (v67)
          {
            *v231 = 138543618;
            *&v231[4] = v53;
            v232 = 2114;
            *v233 = v58;
            LODWORD(v202) = 22;
            v201 = v231;
            v68 = _os_log_send_and_compose_impl();
            v69 = v68;
            if (v68)
            {
              sub_100002A8C(v68);
            }
          }

          else
          {
            v69 = 0;
          }

          free(v69);
        }
      }

      else
      {
        if (qword_1000EB330 != -1)
        {
          sub_100089D40();
        }

        v58 = qword_1000EB328;
        if (os_log_type_enabled(v58, OS_LOG_TYPE_INFO))
        {
          v212 = 0;
          v74 = sub_1000011A8(0);
          if (os_log_type_enabled(v58, OS_LOG_TYPE_INFO))
          {
            v75 = v74;
          }

          else
          {
            v75 = v74 & 0xFFFFFFFE;
          }

          if (v75)
          {
            *v231 = 138543362;
            *&v231[4] = v53;
            LODWORD(v202) = 12;
            v201 = v231;
            v76 = _os_log_send_and_compose_impl();
            v77 = v76;
            if (v76)
            {
              sub_100002A8C(v76);
            }
          }

          else
          {
            v77 = 0;
          }

          free(v77);
        }
      }

LABEL_143:
    }

    v50 = [&off_1000E15D0 countByEnumeratingWithState:v230 objects:in count:16];
  }

  while (v50);
LABEL_145:
  if (qword_1000EB310 != -1)
  {
    sub_100089CEC();
  }

  v15 = v205;
  v78 = qword_1000EB308;
  a2 = v203;
  if (os_log_type_enabled(v78, OS_LOG_TYPE_DEFAULT))
  {
    *in = 0;
    v79 = sub_1000011A8(1);
    v80 = v78;
    if (os_log_type_enabled(v80, OS_LOG_TYPE_DEFAULT))
    {
      v81 = v79;
    }

    else
    {
      v81 = v79 & 0xFFFFFFFE;
    }

    if (v81)
    {
      LOWORD(v230[0]) = 0;
      LODWORD(v202) = 2;
      v201 = v230;
      v82 = _os_log_send_and_compose_impl();

      if (v82)
      {
        sub_100002A8C(v82);
      }
    }

    else
    {

      v82 = 0;
    }

    free(v82);
  }

LABEL_157:
  if ((v208 | 4) != 6)
  {
    goto LABEL_412;
  }

  if (qword_1000EB310 != -1)
  {
    sub_100089CEC();
  }

  v83 = qword_1000EB308;
  if (os_log_type_enabled(v83, OS_LOG_TYPE_DEFAULT))
  {
    *in = 0;
    v84 = sub_1000011A8(1);
    v85 = v83;
    if (os_log_type_enabled(v85, OS_LOG_TYPE_DEFAULT))
    {
      v86 = v84;
    }

    else
    {
      v86 = v84 & 0xFFFFFFFE;
    }

    if (v86)
    {
      LOWORD(v230[0]) = 0;
      LODWORD(v202) = 2;
      v201 = v230;
      v87 = _os_log_send_and_compose_impl();

      if (v87)
      {
        sub_100002A8C(v87);
      }
    }

    else
    {

      v87 = 0;
    }

    free(v87);
  }

  if (![qword_1000EB2D8 isVolumeMountedWithSession:a2 fsid:0])
  {
    goto LABEL_225;
  }

  if (qword_1000EB310 != -1)
  {
    sub_100089CEC();
  }

  v88 = qword_1000EB308;
  if (os_log_type_enabled(v88, OS_LOG_TYPE_DEFAULT))
  {
    *in = 0;
    v89 = sub_1000011A8(1);
    v90 = v88;
    if (os_log_type_enabled(v90, OS_LOG_TYPE_DEFAULT))
    {
      v91 = v89;
    }

    else
    {
      v91 = v89 & 0xFFFFFFFE;
    }

    if (v91)
    {
      LOWORD(v230[0]) = 0;
      LODWORD(v202) = 2;
      v201 = v230;
      v92 = _os_log_send_and_compose_impl();

      if (v92)
      {
        sub_100002A8C(v92);
      }
    }

    else
    {

      v92 = 0;
    }

    free(v92);
  }

  if (qword_1000EB310 != -1)
  {
    sub_100089CEC();
  }

  v93 = qword_1000EB308;
  if (os_log_type_enabled(v93, OS_LOG_TYPE_DEFAULT))
  {
    *in = 0;
    v94 = sub_1000011A8(1);
    v95 = v93;
    if (os_log_type_enabled(v95, OS_LOG_TYPE_DEFAULT))
    {
      v96 = v94;
    }

    else
    {
      v96 = v94 & 0xFFFFFFFE;
    }

    if (v96)
    {
      LOWORD(v230[0]) = 0;
      LODWORD(v202) = 2;
      v201 = v230;
      v97 = _os_log_send_and_compose_impl();

      if (v97)
      {
        sub_100002A8C(v97);
      }
    }

    else
    {

      v97 = 0;
    }

    free(v97);
  }

  sub_100095870(qword_1000EB2E8, a2);
  if (qword_1000EB310 != -1)
  {
    sub_100089CEC();
  }

  v98 = qword_1000EB308;
  if (os_log_type_enabled(v98, OS_LOG_TYPE_DEFAULT))
  {
    *in = 0;
    v99 = sub_1000011A8(1);
    v100 = v98;
    if (os_log_type_enabled(v100, OS_LOG_TYPE_DEFAULT))
    {
      v101 = v99;
    }

    else
    {
      v101 = v99 & 0xFFFFFFFE;
    }

    if (v101)
    {
      LOWORD(v230[0]) = 0;
      LODWORD(v202) = 2;
      v201 = v230;
      v102 = _os_log_send_and_compose_impl();

      if (v102)
      {
        sub_100002A8C(v102);
      }
    }

    else
    {

      v102 = 0;
    }

    free(v102);
  }

  if (![qword_1000EB2D8 unmountVolumeWithSession:a2 mountPath:0 error:0])
  {
    if (qword_1000EB310 != -1)
    {
      sub_100089CEC();
    }

    v103 = qword_1000EB308;
    if (!os_log_type_enabled(v103, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_224;
    }

    *in = 0;
    v106 = sub_1000011A8(1);
    v103 = v103;
    if (os_log_type_enabled(v103, OS_LOG_TYPE_DEFAULT))
    {
      v107 = v106;
    }

    else
    {
      v107 = v106 & 0xFFFFFFFE;
    }

    if (v107)
    {
      LOWORD(v230[0]) = 0;
      LODWORD(v202) = 2;
      v201 = v230;
      goto LABEL_220;
    }

LABEL_222:

    v108 = 0;
    goto LABEL_223;
  }

  if (qword_1000EB310 != -1)
  {
    sub_100089CEC();
  }

  v103 = qword_1000EB308;
  if (!os_log_type_enabled(v103, OS_LOG_TYPE_DEFAULT))
  {
    goto LABEL_224;
  }

  *in = 0;
  v104 = sub_1000011A8(1);
  v103 = v103;
  if (os_log_type_enabled(v103, OS_LOG_TYPE_DEFAULT))
  {
    v105 = v104;
  }

  else
  {
    v105 = v104 & 0xFFFFFFFE;
  }

  if (!v105)
  {
    goto LABEL_222;
  }

  LOWORD(v230[0]) = 0;
  LODWORD(v202) = 2;
  v201 = v230;
LABEL_220:
  v108 = _os_log_send_and_compose_impl();

  if (v108)
  {
    sub_100002A8C(v108);
  }

LABEL_223:
  free(v108);
LABEL_224:

LABEL_225:
  v227 = 0u;
  v228 = 0u;
  v225 = 0u;
  v226 = 0u;
  v223 = 0u;
  v224 = 0u;
  v221 = 0u;
  v222 = 0u;
  v219 = 0u;
  v220 = 0u;
  v217 = 0u;
  v218 = 0u;
  v215 = 0u;
  v216 = 0u;
  memset(in, 0, sizeof(in));
  if (!sub_1000795D4(a2, kUMUserPersonaUniqueStringKey, in, 256))
  {
    if (qword_1000EB310 != -1)
    {
      sub_100089CEC();
    }

    v109 = qword_1000EB308;
    if (os_log_type_enabled(v109, OS_LOG_TYPE_DEFAULT))
    {
      *&v230[0] = 0;
      v110 = sub_1000011A8(1);
      v111 = v109;
      if (os_log_type_enabled(v111, OS_LOG_TYPE_DEFAULT))
      {
        v112 = v110;
      }

      else
      {
        v112 = v110 & 0xFFFFFFFE;
      }

      if (v112)
      {
        *v231 = 0;
        LODWORD(v202) = 2;
        v201 = v231;
        v113 = _os_log_send_and_compose_impl();

        if (v113)
        {
          sub_100002A8C(v113);
        }
      }

      else
      {

        v113 = 0;
      }

      free(v113);
    }
  }

  if (uuid_parse(in, uu))
  {
    if (qword_1000EB310 != -1)
    {
      sub_100089CEC();
    }

    v114 = qword_1000EB308;
    if (os_log_type_enabled(v114, OS_LOG_TYPE_DEFAULT))
    {
      *&v230[0] = 0;
      v115 = sub_1000011A8(1);
      v116 = v114;
      if (os_log_type_enabled(v116, OS_LOG_TYPE_DEFAULT))
      {
        v117 = v115;
      }

      else
      {
        v117 = v115 & 0xFFFFFFFE;
      }

      if (v117)
      {
        *v231 = 0;
        LODWORD(v202) = 2;
        v201 = v231;
        v118 = _os_log_send_and_compose_impl();

        if (v118)
        {
          sub_100002A8C(v118);
        }
      }

      else
      {

        v118 = 0;
      }

      free(v118);
    }
  }

  if (![qword_1000EB2D8 splitUserVolumeEnabled])
  {
    v124 = sub_100089790(qword_1000EB608);
    v125 = sub_100079590(a2, kUMUserPersonaUniqueStringKey);
    v126 = [v124 removePersonaKeyForUser:a3 personaUUID:v125 volumeUUID:{CFDictionaryGetValue(a2, @"MKBUserSessionVolumeUUID"}];
    goto LABEL_311;
  }

  if (qword_1000EB310 != -1)
  {
    sub_100089CEC();
  }

  v119 = qword_1000EB308;
  if (os_log_type_enabled(v119, OS_LOG_TYPE_DEFAULT))
  {
    *&v230[0] = 0;
    v120 = sub_1000011A8(1);
    v121 = v119;
    if (os_log_type_enabled(v121, OS_LOG_TYPE_DEFAULT))
    {
      v122 = v120;
    }

    else
    {
      v122 = v120 & 0xFFFFFFFE;
    }

    if (v122)
    {
      *v231 = 0;
      v123 = _os_log_send_and_compose_impl();

      if (v123)
      {
        sub_100002A8C(v123);
      }
    }

    else
    {

      v123 = 0;
    }

    free(v123);
  }

  v127 = a2;
  v124 = sub_100079590(a2, kUMUserSessionVolumeDeviceNodeKey);
  v128 = sub_100089A80(qword_1000EB608);
  v210[0] = v207;
  v129 = [v128 unmapVolume:v124 error:v210];
  v130 = v210[0];

  if (!v129)
  {
    if (qword_1000EB310 != -1)
    {
      sub_100089CEC();
    }

    v131 = qword_1000EB308;
    if (!os_log_type_enabled(v131, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_285;
    }

    *v231 = 0;
    v134 = sub_1000011A8(1);
    v131 = v131;
    if (os_log_type_enabled(v131, OS_LOG_TYPE_DEFAULT))
    {
      v135 = v134;
    }

    else
    {
      v135 = v134 & 0xFFFFFFFE;
    }

    if (v135)
    {
      LODWORD(v230[0]) = 138412290;
      *(v230 + 4) = v130;
      goto LABEL_281;
    }

LABEL_283:

    v136 = 0;
    goto LABEL_284;
  }

  if (qword_1000EB310 != -1)
  {
    sub_100089CEC();
  }

  v131 = qword_1000EB308;
  if (!os_log_type_enabled(v131, OS_LOG_TYPE_DEFAULT))
  {
    goto LABEL_285;
  }

  *&v230[0] = 0;
  v132 = sub_1000011A8(1);
  v131 = v131;
  if (os_log_type_enabled(v131, OS_LOG_TYPE_DEFAULT))
  {
    v133 = v132;
  }

  else
  {
    v133 = v132 & 0xFFFFFFFE;
  }

  if (!v133)
  {
    goto LABEL_283;
  }

  *v231 = 67109120;
  *&v231[4] = a3;
LABEL_281:
  v136 = _os_log_send_and_compose_impl();

  if (v136)
  {
    sub_100002A8C(v136);
  }

LABEL_284:
  free(v136);
LABEL_285:

  v137 = sub_100079590(a2, kUMUserPersonaUniqueStringKey);
  v138 = sub_100016954(NSUUID, v137);
  v139 = sub_100089A80(qword_1000EB608);
  v209 = v130;
  v140 = [v139 deletePersonaWithUUID:v138 fromSession:a3 error:&v209];
  v207 = v209;

  if (v140)
  {
    if (qword_1000EB310 != -1)
    {
      sub_100089CEC();
    }

    a2 = v127;
    v141 = qword_1000EB308;
    if (os_log_type_enabled(v141, OS_LOG_TYPE_DEFAULT))
    {
      *&v230[0] = 0;
      v142 = sub_1000011A8(1);
      v141 = v141;
      if (os_log_type_enabled(v141, OS_LOG_TYPE_DEFAULT))
      {
        v143 = v142;
      }

      else
      {
        v143 = v142 & 0xFFFFFFFE;
      }

      if (v143)
      {
        *v231 = 0;
        v144 = _os_log_send_and_compose_impl();

        if (v144)
        {
          sub_100002A8C(v144);
        }
      }

      else
      {

        v144 = 0;
      }

      free(v144);
    }

    v126 = 0;
  }

  else
  {
    if (qword_1000EB310 != -1)
    {
      sub_100089CEC();
    }

    a2 = v127;
    v141 = qword_1000EB308;
    if (os_log_type_enabled(v141, OS_LOG_TYPE_DEFAULT))
    {
      *v231 = 0;
      v145 = sub_1000011A8(1);
      v141 = v141;
      if (os_log_type_enabled(v141, OS_LOG_TYPE_DEFAULT))
      {
        v146 = v145;
      }

      else
      {
        v146 = v145 & 0xFFFFFFFE;
      }

      if (v146)
      {
        LODWORD(v230[0]) = 67109378;
        DWORD1(v230[0]) = a3;
        WORD4(v230[0]) = 2112;
        *(v230 + 10) = v207;
        v147 = _os_log_send_and_compose_impl();

        if (v147)
        {
          sub_100002A8C(v147);
        }
      }

      else
      {

        v147 = 0;
      }

      free(v147);
    }

    v126 = 5;
  }

LABEL_311:
  if (!v126)
  {
    if (qword_1000EB310 != -1)
    {
      sub_100089CEC();
    }

    v148 = qword_1000EB308;
    if (!os_log_type_enabled(v148, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_332;
    }

    *&v230[0] = 0;
    v151 = sub_1000011A8(1);
    v148 = v148;
    if (os_log_type_enabled(v148, OS_LOG_TYPE_DEFAULT))
    {
      v152 = v151;
    }

    else
    {
      v152 = v151 & 0xFFFFFFFE;
    }

    if (v152)
    {
      *v231 = 0;
      goto LABEL_328;
    }

LABEL_330:

    v153 = 0;
    goto LABEL_331;
  }

  if (qword_1000EB310 != -1)
  {
    sub_100089CEC();
  }

  v148 = qword_1000EB308;
  if (!os_log_type_enabled(v148, OS_LOG_TYPE_DEFAULT))
  {
    goto LABEL_332;
  }

  *&v230[0] = 0;
  v149 = sub_1000011A8(1);
  v148 = v148;
  if (os_log_type_enabled(v148, OS_LOG_TYPE_DEFAULT))
  {
    v150 = v149;
  }

  else
  {
    v150 = v149 & 0xFFFFFFFE;
  }

  if (!v150)
  {
    goto LABEL_330;
  }

  *v231 = 67109120;
  *&v231[4] = v126;
LABEL_328:
  v153 = _os_log_send_and_compose_impl();

  if (v153)
  {
    sub_100002A8C(v153);
  }

LABEL_331:
  free(v153);
LABEL_332:

  if (qword_1000EB310 != -1)
  {
    sub_100089CEC();
  }

  v154 = qword_1000EB308;
  if (os_log_type_enabled(v154, OS_LOG_TYPE_DEFAULT))
  {
    *&v230[0] = 0;
    v155 = sub_1000011A8(1);
    v156 = v154;
    if (os_log_type_enabled(v156, OS_LOG_TYPE_DEFAULT))
    {
      v157 = v155;
    }

    else
    {
      v157 = v155 & 0xFFFFFFFE;
    }

    if (v157)
    {
      *v231 = 0;
      v158 = _os_log_send_and_compose_impl();

      if (v158)
      {
        sub_100002A8C(v158);
      }
    }

    else
    {

      v158 = 0;
    }

    free(v158);
  }

  if (!CFDictionaryContainsKey(a2, kUMUserSessionVolumeDeviceNodeKey))
  {
    if (qword_1000EB310 != -1)
    {
      sub_100089CEC();
    }

    v15 = v205;
    v162 = qword_1000EB308;
    if (os_log_type_enabled(v162, OS_LOG_TYPE_DEFAULT))
    {
      *&v230[0] = 0;
      v163 = sub_1000011A8(1);
      v164 = v162;
      if (os_log_type_enabled(v164, OS_LOG_TYPE_DEFAULT))
      {
        v165 = v163;
      }

      else
      {
        v165 = v163 & 0xFFFFFFFE;
      }

      if (v165)
      {
        *v231 = 0;
        v166 = _os_log_send_and_compose_impl();

        if (v166)
        {
          sub_100002A8C(v166);
        }
      }

      else
      {

        v166 = 0;
      }

      free(v166);
    }

    goto LABEL_412;
  }

  if (![qword_1000EB2D8 deleteVolumeWithSession:a2 error:0])
  {
    if (qword_1000EB310 != -1)
    {
      sub_100089CEC();
    }

    v15 = v205;
    v159 = qword_1000EB308;
    if (!os_log_type_enabled(v159, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_374;
    }

    *&v230[0] = 0;
    v167 = sub_1000011A8(1);
    v159 = v159;
    if (os_log_type_enabled(v159, OS_LOG_TYPE_DEFAULT))
    {
      v168 = v167;
    }

    else
    {
      v168 = v167 & 0xFFFFFFFE;
    }

    if (v168)
    {
      *v231 = 0;
      goto LABEL_370;
    }

LABEL_372:

    v169 = 0;
    goto LABEL_373;
  }

  if (qword_1000EB310 != -1)
  {
    sub_100089CEC();
  }

  v15 = v205;
  v159 = qword_1000EB308;
  if (!os_log_type_enabled(v159, OS_LOG_TYPE_DEFAULT))
  {
    goto LABEL_374;
  }

  *&v230[0] = 0;
  v160 = sub_1000011A8(1);
  v159 = v159;
  if (os_log_type_enabled(v159, OS_LOG_TYPE_DEFAULT))
  {
    v161 = v160;
  }

  else
  {
    v161 = v160 & 0xFFFFFFFE;
  }

  if (!v161)
  {
    goto LABEL_372;
  }

  *v231 = 0;
LABEL_370:
  v169 = _os_log_send_and_compose_impl();

  if (v169)
  {
    sub_100002A8C(v169);
  }

LABEL_373:
  free(v169);
LABEL_374:

  if (!CFDictionaryContainsKey(a2, kUMUserSessionHomeDirKey))
  {
    goto LABEL_408;
  }

  Value = CFDictionaryGetValue(a2, kUMUserSessionHomeDirKey);
  if (qword_1000EB310 != -1)
  {
    sub_100089CEC();
  }

  v171 = qword_1000EB308;
  if (os_log_type_enabled(v171, OS_LOG_TYPE_DEFAULT))
  {
    v172 = a2;
    *v231 = 0;
    v173 = sub_1000011A8(1);
    v174 = v171;
    if (os_log_type_enabled(v174, OS_LOG_TYPE_DEFAULT))
    {
      v175 = v173;
    }

    else
    {
      v175 = v173 & 0xFFFFFFFE;
    }

    if (v175)
    {
      LODWORD(v230[0]) = 138412290;
      *(v230 + 4) = Value;
      v176 = _os_log_send_and_compose_impl();

      if (v176)
      {
        sub_100002A8C(v176);
      }
    }

    else
    {

      v176 = 0;
    }

    free(v176);
    a2 = v172;
  }

  v177 = sub_1000013A0(qword_1000EB608);
  v178 = [v177 removePath:Value error:0];

  if (!v178)
  {
    if (qword_1000EB310 != -1)
    {
      sub_100089CEC();
    }

    v179 = qword_1000EB308;
    if (!os_log_type_enabled(v179, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_407;
    }

    *&v230[0] = 0;
    v182 = sub_1000011A8(1);
    v179 = v179;
    if (os_log_type_enabled(v179, OS_LOG_TYPE_DEFAULT))
    {
      v183 = v182;
    }

    else
    {
      v183 = v182 & 0xFFFFFFFE;
    }

    if (v183)
    {
      *v231 = 0;
      goto LABEL_403;
    }

LABEL_405:

    v184 = 0;
    goto LABEL_406;
  }

  if (qword_1000EB310 != -1)
  {
    sub_100089CEC();
  }

  v179 = qword_1000EB308;
  if (!os_log_type_enabled(v179, OS_LOG_TYPE_DEFAULT))
  {
    goto LABEL_407;
  }

  *&v230[0] = 0;
  v180 = sub_1000011A8(1);
  v179 = v179;
  if (os_log_type_enabled(v179, OS_LOG_TYPE_DEFAULT))
  {
    v181 = v180;
  }

  else
  {
    v181 = v180 & 0xFFFFFFFE;
  }

  if (!v181)
  {
    goto LABEL_405;
  }

  *v231 = 0;
LABEL_403:
  v184 = _os_log_send_and_compose_impl();

  if (v184)
  {
    sub_100002A8C(v184);
  }

LABEL_406:
  free(v184);
LABEL_407:

LABEL_408:
  CFDictionaryRemoveValue(a2, kUMUserSessionVolumeDeviceNodeKey);
  sub_10008EBBC(qword_1000EB2E8);
LABEL_412:
  if (v208 == 4)
  {
    sub_10008D410(qword_1000EB2E8, 4, v204);
    if (qword_1000EB330 != -1)
    {
      sub_100089D40();
    }

    v187 = qword_1000EB328;
    if (!os_log_type_enabled(v187, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_433;
    }

    *v231 = 0;
    v190 = sub_1000011A8(1);
    v187 = v187;
    if (os_log_type_enabled(v187, OS_LOG_TYPE_DEFAULT))
    {
      v191 = v190;
    }

    else
    {
      v191 = v190 & 0xFFFFFFFE;
    }

    if (v191)
    {
      LODWORD(v230[0]) = 138543362;
      *(v230 + 4) = v15;
      goto LABEL_429;
    }

LABEL_431:

    v192 = 0;
    goto LABEL_432;
  }

  sub_10008D284(qword_1000EB2E8, v206, v204);
  v185 = sub_100079590(a2, kUMUserPersonaUserODUUIDKey);
  v186 = sub_1000023E8(a2, kUMUserPersonaUserUIDKey);
  if (qword_1000EB330 != -1)
  {
    sub_100089D40();
  }

  v187 = qword_1000EB328;
  if (!os_log_type_enabled(v187, OS_LOG_TYPE_DEFAULT))
  {
    goto LABEL_433;
  }

  *v231 = 0;
  v188 = sub_1000011A8(1);
  v187 = v187;
  if (os_log_type_enabled(v187, OS_LOG_TYPE_DEFAULT))
  {
    v189 = v188;
  }

  else
  {
    v189 = v188 & 0xFFFFFFFE;
  }

  if (!v189)
  {
    goto LABEL_431;
  }

  LODWORD(v230[0]) = 138544130;
  *(v230 + 4) = v15;
  WORD6(v230[0]) = 1024;
  *(v230 + 14) = v206;
  WORD1(v230[1]) = 2114;
  *(&v230[1] + 4) = v185;
  WORD6(v230[1]) = 1024;
  *(&v230[1] + 14) = v186;
LABEL_429:
  v192 = _os_log_send_and_compose_impl();

  if (v192)
  {
    sub_100002A8C(v192);
  }

LABEL_432:
  free(v192);
LABEL_433:

  v193 = sub_100089790(qword_1000EB2E8);
  sub_10008B8D8(v193);

  if (qword_1000EB330 != -1)
  {
    sub_100089D40();
  }

  v194 = qword_1000EB328;
  if (os_log_type_enabled(v194, OS_LOG_TYPE_DEFAULT))
  {
    *v231 = 0;
    v195 = sub_1000011A8(1);
    v196 = v194;
    if (!os_log_type_enabled(v196, OS_LOG_TYPE_DEFAULT))
    {
      v195 &= ~1u;
    }

    if (v195)
    {
      v197 = sub_100089790(qword_1000EB2E8);
      v198 = sub_100055380(v197);
      LODWORD(v230[0]) = 134217984;
      *(v230 + 4) = v198;
      v199 = _os_log_send_and_compose_impl();

      if (v199)
      {
        sub_100002A8C(v199);
      }
    }

    else
    {

      v199 = 0;
    }

    free(v199);
  }

  sub_10008EBBC(qword_1000EB2E8);
  v42 = 0;
  v16 = v207;
LABEL_444:

  return v42;
}

uint64_t sub_10004740C(const __CFDictionary *a1, void *a2)
{
  v3 = sub_100056BC8(qword_1000EB2E8, a2);
  if (v3)
  {
    if (CFDictionaryContainsKey(a1, kUMUserPersonaUniqueStringKey))
    {
      v4 = qword_1000EB2E8;
      v5 = sub_100079590(a1, kUMUserPersonaUniqueStringKey);
      v6 = sub_100056854(v4, v5, v3);
    }

    else
    {
      if (!CFDictionaryContainsKey(a1, kUMUserPersonaTypeKey))
      {
        goto LABEL_17;
      }

      v7 = qword_1000EB2E8;
      v8 = sub_1000023E8(a1, kUMUserPersonaTypeKey);
      v6 = sub_10008CDD8(v7, v8, v3);
    }

    v9 = v6;
    if (v6)
    {
      if ((sub_1000023E8(v6, kUMUserPersonaTypeKey) & 0xFFFFFFFB) == 2)
      {
        if (qword_1000EB310 != -1)
        {
          sub_100089D14();
        }

        v10 = qword_1000EB308;
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

        if (sub_100002454(v9, kUMUserPersonaDisabledKey))
        {
          if (qword_1000EB310 != -1)
          {
            sub_100089CEC();
          }

          v26 = qword_1000EB308;
          if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
          {
            v27 = sub_1000011A8(1);
            if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
            {
              v28 = v27;
            }

            else
            {
              v28 = v27 & 0xFFFFFFFE;
            }

            if (v28)
            {
              v29 = _os_log_send_and_compose_impl();
              v30 = v29;
              if (v29)
              {
                sub_100002A8C(v29);
              }
            }

            else
            {
              v30 = 0;
            }

            free(v30);
          }
        }

        else
        {
          if (qword_1000EB310 != -1)
          {
            sub_100089CEC();
          }

          v31 = qword_1000EB308;
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

          CFDictionarySetValue(v9, kUMUserPersonaDisabledKey, kCFBooleanTrue);
          sub_100044C54(v9, 0);
        }

        v25 = 0;
      }

      else
      {
        if (qword_1000EB310 != -1)
        {
          sub_100089D14();
        }

        v20 = qword_1000EB308;
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
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

        v25 = 45;
      }

      CFRelease(v3);
      v3 = v9;
LABEL_71:
      CFRelease(v3);
      return v25;
    }
  }

LABEL_17:
  if (qword_1000EB310 != -1)
  {
    sub_100089D14();
  }

  v15 = qword_1000EB308;
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = sub_1000011A8(1);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v17 = v16;
    }

    else
    {
      v17 = v16 & 0xFFFFFFFE;
    }

    if (v17)
    {
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

  v25 = 2;
  if (v3)
  {
    goto LABEL_71;
  }

  return v25;
}

uint64_t sub_100047950()
{
  v0 = sub_100089790(qword_1000EB2E8);
  sub_10008BA40(v0);

  v1 = sub_100089790(qword_1000EB2E8);
  v2 = sub_100055380(v1);

  return v2;
}

uint64_t sub_1000479A8(const __CFDictionary *a1, const __CFArray *a2, void *a3)
{
  v5 = a3;
  if (qword_1000EB310 != -1)
  {
    sub_100089D14();
  }

  v6 = qword_1000EB308;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v7 = sub_1000011A8(1);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
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

  v11 = sub_100056BC8(qword_1000EB2E8, v5);
  if (v11)
  {
    v12 = v11;
    if (CFDictionaryContainsKey(a1, kUMUserPersonaUniqueStringKey))
    {
      v13 = qword_1000EB2E8;
      v14 = sub_100079590(a1, kUMUserPersonaUniqueStringKey);
      v15 = sub_100056854(v13, v14, v12);
    }

    else
    {
      if (!CFDictionaryContainsKey(a1, kUMUserPersonaTypeKey))
      {
        v24 = 2;
        v18 = v12;
        goto LABEL_91;
      }

      v16 = qword_1000EB2E8;
      v17 = sub_1000023E8(a1, kUMUserPersonaTypeKey);
      v15 = sub_10008CDD8(v16, v17, v12);
    }

    v18 = v15;
    CFRelease(v12);
    if (v18)
    {
      if (a2)
      {
        if (qword_1000EB310 != -1)
        {
          sub_100089CEC();
        }

        v19 = qword_1000EB308;
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
        {
          v20 = sub_1000011A8(1);
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
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

        sub_1000023E8(v18, kUMUserPersonaIDKey);
        if (CFDictionaryContainsKey(v18, kUMUserPersonaBundleIDsKey))
        {
          v25 = sub_10007947C(v18, kUMUserPersonaBundleIDsKey);
          v26 = v25;
          if (v25)
          {
            CFRetain(v25);
          }

          if (qword_1000EB310 != -1)
          {
            sub_100089CEC();
          }

          v27 = qword_1000EB308;
          if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
          {
            v28 = sub_1000011A8(1);
            if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
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

          if (CFArrayGetCount(a2) <= 0)
          {
            if (!v26)
            {
              goto LABEL_72;
            }

            CFDictionaryRemoveValue(v18, kUMUserPersonaBundleIDsKey);
            if (qword_1000EB310 != -1)
            {
              sub_100089CEC();
            }

            v32 = qword_1000EB308;
            if (!os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_71;
            }

            v37 = sub_1000011A8(1);
            if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
            {
              v38 = v37;
            }

            else
            {
              v38 = v37 & 0xFFFFFFFE;
            }

            if (!v38)
            {
              v36 = 0;
              goto LABEL_70;
            }

            v35 = _os_log_send_and_compose_impl();
            v36 = v35;
            if (v35)
            {
LABEL_68:
              sub_100002A8C(v35);
            }

LABEL_70:
            free(v36);
LABEL_71:

            goto LABEL_72;
          }
        }

        else
        {
          v26 = 0;
          if (CFArrayGetCount(a2) < 1)
          {
LABEL_72:
            v39 = sub_100089790(qword_1000EB2E8);
            sub_10008B8D8(v39);

            if (qword_1000EB330 != -1)
            {
              sub_100089D40();
            }

            v40 = qword_1000EB328;
            if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
            {
              v41 = sub_1000011A8(1);
              if (!os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
              {
                v41 &= ~1u;
              }

              if (v41)
              {
                v42 = qword_1000EB2E8;
                v43 = v40;
                v44 = sub_100089790(v42);
                sub_100055380(v44);
                v45 = _os_log_send_and_compose_impl();

                if (v45)
                {
                  sub_100002A8C(v45);
                }
              }

              else
              {
                v45 = 0;
              }

              free(v45);
            }

            if (sub_10008EBBC(qword_1000EB2E8))
            {
              if (!v26)
              {
                goto LABEL_90;
              }
            }

            else
            {
              if (!v26)
              {
                CFDictionaryRemoveValue(v18, kUMUserPersonaBundleIDsKey);
                goto LABEL_90;
              }

              CFDictionarySetValue(v18, kUMUserPersonaBundleIDsKey, v26);
            }

            CFRelease(v26);
LABEL_90:
            v24 = 0;
            goto LABEL_91;
          }
        }

        CFDictionarySetValue(v18, kUMUserPersonaBundleIDsKey, a2);
        if (qword_1000EB310 != -1)
        {
          sub_100089CEC();
        }

        v32 = qword_1000EB308;
        if (!os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_71;
        }

        v33 = sub_1000011A8(1);
        if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
        {
          v34 = v33;
        }

        else
        {
          v34 = v33 & 0xFFFFFFFE;
        }

        if (!v34)
        {
          v36 = 0;
          goto LABEL_70;
        }

        v35 = _os_log_send_and_compose_impl();
        v36 = v35;
        if (v35)
        {
          goto LABEL_68;
        }

        goto LABEL_70;
      }

      v24 = 22;
LABEL_91:
      CFRelease(v18);
      goto LABEL_92;
    }
  }

  v24 = 2;
LABEL_92:

  return v24;
}

uint64_t sub_1000480F4(const __CFArray *a1, void *a2)
{
  v3 = a2;
  if (qword_1000EB310 != -1)
  {
    sub_100089D14();
  }

  v4 = qword_1000EB308;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = sub_1000011A8(1);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v6 = v5;
    }

    else
    {
      v6 = v5 & 0xFFFFFFFE;
    }

    if (v6)
    {
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

  v9 = sub_100056BC8(qword_1000EB2E8, v3);
  if (v9)
  {
    v10 = v9;
    v11 = sub_10008CDD8(qword_1000EB2E8, 4u, v9);
    CFRelease(v10);
    if (v11)
    {
      if (!a1)
      {
        v22 = 22;
        goto LABEL_91;
      }

      if (qword_1000EB310 != -1)
      {
        sub_100089CEC();
      }

      v12 = qword_1000EB308;
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        v13 = sub_1000011A8(1);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
        {
          v14 = v13;
        }

        else
        {
          v14 = v13 & 0xFFFFFFFE;
        }

        if (v14)
        {
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

      if (CFDictionaryContainsKey(v11, kUMUserPersonaBundleIDsKey))
      {
        v23 = sub_10007947C(v11, kUMUserPersonaBundleIDsKey);
        v24 = v23;
        if (v23)
        {
          CFRetain(v23);
        }

        if (qword_1000EB310 != -1)
        {
          sub_100089CEC();
        }

        v25 = qword_1000EB308;
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
        {
          v26 = sub_1000011A8(1);
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
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

        if (CFArrayGetCount(a1) <= 0)
        {
          if (!v24)
          {
LABEL_76:
            v37 = sub_100089790(qword_1000EB2E8);
            sub_10008B8D8(v37);

            if (qword_1000EB330 != -1)
            {
              sub_100089D40();
            }

            v38 = qword_1000EB328;
            if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
            {
              v39 = sub_1000011A8(1);
              if (!os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
              {
                v39 &= ~1u;
              }

              if (v39)
              {
                v40 = qword_1000EB2E8;
                v41 = v38;
                v42 = sub_100089790(v40);
                sub_100055380(v42);
                v43 = _os_log_send_and_compose_impl();

                if (v43)
                {
                  sub_100002A8C(v43);
                }
              }

              else
              {
                v43 = 0;
              }

              free(v43);
            }

            if (sub_10008EBBC(qword_1000EB2E8))
            {
              v22 = 0;
              if (!v24)
              {
                goto LABEL_91;
              }

              goto LABEL_90;
            }

            CFDictionarySetValue(v11, kUMUserPersonaBundleIDsKey, v24);
            v22 = 12;
            if (v24)
            {
LABEL_90:
              CFRelease(v24);
            }

LABEL_91:
            CFRelease(v11);
            goto LABEL_92;
          }

          CFDictionaryRemoveValue(v11, kUMUserPersonaBundleIDsKey);
          if (qword_1000EB310 != -1)
          {
            sub_100089CEC();
          }

          v30 = qword_1000EB308;
          if (!os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
          {
LABEL_75:

            goto LABEL_76;
          }

          v35 = sub_1000011A8(1);
          if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
          {
            v36 = v35;
          }

          else
          {
            v36 = v35 & 0xFFFFFFFE;
          }

          if (v36)
          {
            goto LABEL_63;
          }

          goto LABEL_73;
        }
      }

      else
      {
        v24 = 0;
        if (CFArrayGetCount(a1) < 1)
        {
          goto LABEL_76;
        }
      }

      CFDictionarySetValue(v11, kUMUserPersonaBundleIDsKey, a1);
      if (qword_1000EB310 != -1)
      {
        sub_100089CEC();
      }

      v30 = qword_1000EB308;
      if (!os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_75;
      }

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
LABEL_63:
        v33 = _os_log_send_and_compose_impl();
        v34 = v33;
        if (v33)
        {
          sub_100002A8C(v33);
        }

        goto LABEL_74;
      }

LABEL_73:
      v34 = 0;
LABEL_74:
      free(v34);
      goto LABEL_75;
    }
  }

  if (qword_1000EB310 != -1)
  {
    sub_100089CEC();
  }

  v17 = qword_1000EB308;
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = sub_1000011A8(1);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v19 = v18;
    }

    else
    {
      v19 = v18 & 0xFFFFFFFE;
    }

    if (v19)
    {
      v20 = _os_log_send_and_compose_impl();
      v21 = v20;
      if (v20)
      {
        sub_100002A8C(v20);
      }
    }

    else
    {
      v21 = 0;
    }

    free(v21);
  }

  v22 = 2;
LABEL_92:

  return v22;
}

id sub_1000487DC(void *a1)
{
  v1 = a1;
  if (qword_1000EB310 != -1)
  {
    sub_100089D14();
  }

  v2 = qword_1000EB308;
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v3 = sub_1000011A8(1);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
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

  v10 = kUMUserPersonaTypeKey;
  v11 = &off_1000E1660;
  v7 = [NSDictionary dictionaryWithObjects:&v11 forKeys:&v10 count:1];
  v8 = sub_10008DF28();

  return v8;
}

void *sub_10004897C(void *a1, void *a2, int *a3)
{
  v5 = a1;
  v6 = sub_100056BC8(qword_1000EB2E8, a2);
  if (!v6)
  {
LABEL_7:
    v9 = 2;
    if (!a3)
    {
      goto LABEL_15;
    }

    goto LABEL_12;
  }

  v7 = sub_100056854(qword_1000EB2E8, v5, v6);
  CFRelease(v6);
  if (!v7)
  {
    v6 = 0;
    goto LABEL_7;
  }

  if (sub_1000023E8(v7, kUMUserPersonaTypeKey) == 6)
  {
    v8 = sub_100079590(v7, kUMUserSessionVolumeDeviceNodeKey);
    v6 = v8;
    if (v8)
    {
      CFRetain(v8);
      v9 = 0;
    }

    else
    {
      v9 = 3;
    }
  }

  else
  {
    v6 = 0;
    v9 = 22;
  }

  CFRelease(v7);
  if (a3)
  {
LABEL_12:
    if (!v6 && v9)
    {
      *a3 = v9;
    }
  }

LABEL_15:

  return v6;
}

uint64_t sub_100048A84(uint64_t a1)
{
  if (qword_1000EB310 != -1)
  {
    sub_100089D14();
  }

  v2 = qword_1000EB308;
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

  if (sub_1000948C8(qword_1000EB2E8, a1))
  {
    if (qword_1000EB310 != -1)
    {
      sub_100089CEC();
    }

    v7 = qword_1000EB308;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
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

    v16 = 0;
  }

  else
  {
    if (qword_1000EB310 != -1)
    {
      sub_100089CEC();
    }

    v7 = qword_1000EB308;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v12 = sub_1000011A8(1);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v13 = v12;
      }

      else
      {
        v13 = v12 & 0xFFFFFFFE;
      }

      if (v13)
      {
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

    v16 = 22;
  }

  return v16;
}

__CFDictionary *sub_100048D4C(const __CFDictionary *a1, int *a2)
{
  v4 = sub_100088F2C(qword_1000EB608);
  v5 = sub_100089A48(v4);

  if (qword_1000EB310 != -1)
  {
    sub_100089D14();
  }

  v6 = qword_1000EB308;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
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
      LOWORD(valuePtr) = 0;
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

  if (MGGetBoolAnswer() && sub_100002454(a1, kUMUserSessionForcedProvisionTypeKey))
  {
    if (qword_1000EB310 != -1)
    {
      sub_100089CEC();
    }

    v11 = qword_1000EB308;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
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
        LOWORD(valuePtr) = 0;
        goto LABEL_33;
      }

      goto LABEL_44;
    }

    goto LABEL_46;
  }

  v14 = MGCopyAnswer();
  if (!v14)
  {
LABEL_36:
    if (qword_1000EB310 != -1)
    {
      sub_100089CEC();
    }

    v22 = qword_1000EB308;
    if (!os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_70;
    }

    v23 = sub_1000011A8(1);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v24 = v23;
    }

    else
    {
      v24 = v23 & 0xFFFFFFFE;
    }

    if (v24)
    {
      LOWORD(valuePtr) = 0;
      goto LABEL_55;
    }

LABEL_68:
    v28 = 0;
LABEL_69:
    free(v28);
LABEL_70:

    v35 = 0;
    v36 = 45;
LABEL_71:
    if (a2 && v36)
    {
      *a2 = v36;
    }

    return v35;
  }

  v15 = v14;
  v16 = CFGetTypeID(v14);
  if (v16 != CFBooleanGetTypeID())
  {
    CFRelease(v15);
    goto LABEL_36;
  }

  Value = CFBooleanGetValue(v15);
  CFRelease(v15);
  if (!Value)
  {
    goto LABEL_36;
  }

  if (qword_1000EB310 != -1)
  {
    sub_100089CEC();
  }

  v11 = qword_1000EB308;
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v18 = sub_1000011A8(1);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v19 = v18;
    }

    else
    {
      v19 = v18 & 0xFFFFFFFE;
    }

    if (v19)
    {
      LOWORD(valuePtr) = 0;
LABEL_33:
      v20 = _os_log_send_and_compose_impl();
      v21 = v20;
      if (v20)
      {
        sub_100002A8C(v20);
      }

      goto LABEL_45;
    }

LABEL_44:
    v21 = 0;
LABEL_45:
    free(v21);
  }

LABEL_46:

  if (_os_feature_enabled_impl())
  {
    if (qword_1000EB310 != -1)
    {
      sub_100089CEC();
    }

    v22 = qword_1000EB308;
    if (!os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_70;
    }

    v25 = sub_1000011A8(1);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v26 = v25;
    }

    else
    {
      v26 = v25 & 0xFFFFFFFE;
    }

    if (v26)
    {
      LOWORD(valuePtr) = 0;
LABEL_55:
      v27 = _os_log_send_and_compose_impl();
      v28 = v27;
      if (v27)
      {
        sub_100002A8C(v27);
      }

      goto LABEL_69;
    }

    goto LABEL_68;
  }

  v29 = sub_100079590(a1, kUMUserSessionProvisionTypeKey[0]);
  if (CFStringCompare(v29, kUMUserSessionProvisionTypeEducation[0], 0))
  {
    if (qword_1000EB310 != -1)
    {
      sub_100089CEC();
    }

    v30 = qword_1000EB308;
    if (!os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_295;
    }

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
      LOWORD(valuePtr) = 0;
      goto LABEL_66;
    }

    goto LABEL_293;
  }

  if (qword_1000EB310 != -1)
  {
    sub_100089CEC();
  }

  v38 = qword_1000EB308;
  if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
  {
    v39 = sub_1000011A8(1);
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
    {
      v40 = v39;
    }

    else
    {
      v40 = v39 & 0xFFFFFFFE;
    }

    if (v40)
    {
      LOWORD(valuePtr) = 0;
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

  if (CFDictionaryContainsKey(a1, kUMEducationUserSizeKey[0]))
  {
    v43 = sub_1000794B8(a1, kUMEducationUserSizeKey[0]);
    valuePtr = v43;
    v44 = v43 >> 20;
    if (qword_1000EB310 != -1)
    {
      sub_100089CEC();
    }

    v45 = qword_1000EB308;
    if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
    {
      v46 = sub_1000011A8(1);
      if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
      {
        v47 = v46;
      }

      else
      {
        v47 = v46 & 0xFFFFFFFE;
      }

      if (v47)
      {
        v48 = _os_log_send_and_compose_impl();
        v49 = v48;
        if (v48)
        {
          sub_100002A8C(v48);
        }
      }

      else
      {
        v49 = 0;
      }

      free(v49);
    }

    if ((v43 & 0xFFFFFFFFFFF00000) != v43)
    {
      if (qword_1000EB310 != -1)
      {
        sub_100089CEC();
      }

      v56 = qword_1000EB308;
      if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
      {
        v57 = sub_1000011A8(1);
        if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
        {
          v58 = v57;
        }

        else
        {
          v58 = v57 & 0xFFFFFFFE;
        }

        if (v58)
        {
          v59 = _os_log_send_and_compose_impl();
          v60 = v59;
          if (v59)
          {
            sub_100002A8C(v59);
          }
        }

        else
        {
          v60 = 0;
        }

        free(v60);
      }

      if (qword_1000EB310 != -1)
      {
        sub_100089CEC();
      }

      v30 = qword_1000EB308;
      if (!os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_295;
      }

      v77 = sub_1000011A8(1);
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        v78 = v77;
      }

      else
      {
        v78 = v77 & 0xFFFFFFFE;
      }

      if (v78)
      {
        goto LABEL_66;
      }

      goto LABEL_293;
    }

    if ((sub_10001CC3C() / 0x100000) >= 0x8000)
    {
      v55 = 2048;
    }

    else
    {
      v55 = 1024;
    }

    if (v44 <= v55)
    {
      if (qword_1000EB310 != -1)
      {
        sub_100089CEC();
      }

      v61 = qword_1000EB308;
      if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
      {
        v62 = sub_1000011A8(1);
        if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
        {
          v63 = v62;
        }

        else
        {
          v63 = v62 & 0xFFFFFFFE;
        }

        if (v63)
        {
          v64 = _os_log_send_and_compose_impl();
          v65 = v64;
          if (v64)
          {
            sub_100002A8C(v64);
          }
        }

        else
        {
          v65 = 0;
        }

        free(v65);
      }
    }

    else
    {
      v55 = v44;
    }

    if (qword_1000EB310 != -1)
    {
      sub_100089CEC();
    }

    v79 = qword_1000EB308;
    if (os_log_type_enabled(v79, OS_LOG_TYPE_DEFAULT))
    {
      v80 = sub_1000011A8(1);
      if (os_log_type_enabled(v79, OS_LOG_TYPE_DEFAULT))
      {
        v81 = v80;
      }

      else
      {
        v81 = v80 & 0xFFFFFFFE;
      }

      if (v81)
      {
        v82 = _os_log_send_and_compose_impl();
        v83 = v82;
        if (v82)
        {
          sub_100002A8C(v82);
        }
      }

      else
      {
        v83 = 0;
      }

      free(v83);
    }

    if (dword_1000EA3D4 == -1)
    {
      v84 = v5;
    }

    else
    {
      v84 = 0;
    }

    if (v84 == 1 && qword_1000EB5D8)
    {
      if (qword_1000EB310 != -1)
      {
        sub_100089CEC();
      }

      v85 = qword_1000EB308;
      if (os_log_type_enabled(v85, OS_LOG_TYPE_DEFAULT))
      {
        v86 = sub_1000011A8(1);
        if (os_log_type_enabled(v85, OS_LOG_TYPE_DEFAULT))
        {
          v87 = v86;
        }

        else
        {
          v87 = v86 & 0xFFFFFFFE;
        }

        if (v87)
        {
          v88 = _os_log_send_and_compose_impl();
          v89 = v88;
          if (v88)
          {
            sub_100002A8C(v88);
          }
        }

        else
        {
          v89 = 0;
        }

        free(v89);
      }

      if (qword_1000EB5A8 == 1)
      {
        if (qword_1000EB310 != -1)
        {
          sub_100089CEC();
        }

        v97 = qword_1000EB308;
        if (os_log_type_enabled(v97, OS_LOG_TYPE_DEFAULT))
        {
          v98 = sub_1000011A8(1);
          if (os_log_type_enabled(v97, OS_LOG_TYPE_DEFAULT))
          {
            v99 = v98;
          }

          else
          {
            v99 = v98 & 0xFFFFFFFE;
          }

          if (v99)
          {
            v100 = _os_log_send_and_compose_impl();
            v101 = v100;
            if (v100)
            {
              sub_100002A8C(v100);
            }
          }

          else
          {
            v101 = 0;
          }

          free(v101);
        }

        v124 = sub_10008A2F4(qword_1000EB2E0, 502);
        if (!v124)
        {
          if (qword_1000EB310 != -1)
          {
            sub_100089CEC();
          }

          v30 = qword_1000EB308;
          if (!os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_295;
          }

          v127 = sub_1000011A8(1);
          if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
          {
            v128 = v127;
          }

          else
          {
            v128 = v127 & 0xFFFFFFFE;
          }

          if (v128)
          {
            goto LABEL_66;
          }

          goto LABEL_293;
        }

        v35 = v124;
        qword_1000EB5D8 = v55;
        v125 = CFNumberCreate(0, kCFNumberLongLongType, &valuePtr);
        if (v125)
        {
          v126 = v125;
          CFDictionarySetValue(v35, kUMUserSessionQuotaLimitKey, v125);
          CFDictionarySetValue(v35, kUMUserSessionEachUserSize, v126);
          CFRelease(v126);
        }

        sub_100018C80();
LABEL_299:
        v36 = 0;
        goto LABEL_71;
      }

      if (qword_1000EB310 != -1)
      {
        sub_100089CEC();
      }

      v68 = qword_1000EB308;
      if (os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT))
      {
        v102 = sub_1000011A8(1);
        if (os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT))
        {
          v103 = v102;
        }

        else
        {
          v103 = v102 & 0xFFFFFFFE;
        }

        if (v103)
        {
          goto LABEL_229;
        }

        goto LABEL_231;
      }
    }

    else
    {
      if ((v5 & 1) == 0)
      {
        v35 = sub_10001D4F4(-1, v55);
        if (v35)
        {
          if (qword_1000EB310 != -1)
          {
            sub_100089CEC();
          }

          v92 = qword_1000EB308;
          if (os_log_type_enabled(v92, OS_LOG_TYPE_DEFAULT))
          {
            v93 = sub_1000011A8(1);
            if (os_log_type_enabled(v92, OS_LOG_TYPE_DEFAULT))
            {
              v94 = v93;
            }

            else
            {
              v94 = v93 & 0xFFFFFFFE;
            }

            if (v94)
            {
              v95 = _os_log_send_and_compose_impl();
              v96 = v95;
              if (v95)
              {
                sub_100002A8C(v95);
              }
            }

            else
            {
              v96 = 0;
            }

            free(v96);
          }

          sub_10002E9D8(v35, 0);
        }

        goto LABEL_299;
      }

      if (qword_1000EB310 != -1)
      {
        sub_100089CEC();
      }

      v68 = qword_1000EB308;
      if (os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT))
      {
        v90 = sub_1000011A8(1);
        if (os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT))
        {
          v91 = v90;
        }

        else
        {
          v91 = v90 & 0xFFFFFFFE;
        }

        if (v91)
        {
LABEL_229:
          v104 = _os_log_send_and_compose_impl();
          v105 = v104;
          if (v104)
          {
            sub_100002A8C(v104);
          }

          goto LABEL_232;
        }

LABEL_231:
        v105 = 0;
LABEL_232:
        free(v105);
      }
    }

LABEL_233:

    v35 = 0;
    v36 = 16;
    goto LABEL_71;
  }

  if (qword_1000EB310 != -1)
  {
    sub_100089CEC();
  }

  v50 = qword_1000EB308;
  if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
  {
    v51 = sub_1000011A8(1);
    if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
    {
      v52 = v51;
    }

    else
    {
      v52 = v51 & 0xFFFFFFFE;
    }

    if (v52)
    {
      LOWORD(valuePtr) = 0;
      v53 = _os_log_send_and_compose_impl();
      v54 = v53;
      if (v53)
      {
        sub_100002A8C(v53);
      }
    }

    else
    {
      v54 = 0;
    }

    free(v54);
  }

  v66 = sub_100088F2C(qword_1000EB608);
  v67 = sub_100089A48(v66);

  if (v67)
  {
    if (qword_1000EB310 != -1)
    {
      sub_100089CEC();
    }

    v68 = qword_1000EB308;
    if (!os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_233;
    }

    v69 = sub_1000011A8(1);
    if (os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT))
    {
      v70 = v69;
    }

    else
    {
      v70 = v69 & 0xFFFFFFFE;
    }

    if (v70)
    {
      LOWORD(valuePtr) = 0;
      goto LABEL_229;
    }

    goto LABEL_231;
  }

  if (CFDictionaryContainsKey(a1, kUMEducationNumberOfUsersKey[0]))
  {
    v71 = sub_1000023E8(a1, kUMEducationNumberOfUsersKey[0]);
    if (qword_1000EB310 != -1)
    {
      sub_100089CEC();
    }

    v72 = qword_1000EB308;
    if (os_log_type_enabled(v72, OS_LOG_TYPE_DEFAULT))
    {
      v73 = sub_1000011A8(1);
      if (os_log_type_enabled(v72, OS_LOG_TYPE_DEFAULT))
      {
        v74 = v73;
      }

      else
      {
        v74 = v73 & 0xFFFFFFFE;
      }

      if (v74)
      {
        LODWORD(valuePtr) = 67109120;
        HIDWORD(valuePtr) = v71;
        v75 = _os_log_send_and_compose_impl();
        v76 = v75;
        if (v75)
        {
          sub_100002A8C(v75);
        }
      }

      else
      {
        v76 = 0;
      }

      free(v76);
    }
  }

  else
  {
    v71 = -1;
  }

  if (qword_1000EB310 != -1)
  {
    sub_100089CEC();
  }

  v106 = qword_1000EB308;
  if (os_log_type_enabled(v106, OS_LOG_TYPE_DEFAULT))
  {
    v107 = sub_1000011A8(1);
    if (os_log_type_enabled(v106, OS_LOG_TYPE_DEFAULT))
    {
      v108 = v107;
    }

    else
    {
      v108 = v107 & 0xFFFFFFFE;
    }

    if (v108)
    {
      LODWORD(valuePtr) = 67109120;
      HIDWORD(valuePtr) = v71;
      v109 = _os_log_send_and_compose_impl();
      v110 = v109;
      if (v109)
      {
        sub_100002A8C(v109);
      }
    }

    else
    {
      v110 = 0;
    }

    free(v110);
  }

  v111 = sub_10001D4F4(v71, 0);
  if (!v111)
  {
    if (qword_1000EB310 != -1)
    {
      sub_100089CEC();
    }

    v30 = qword_1000EB308;
    if (!os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_295;
    }

    v117 = sub_1000011A8(1);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      v118 = v117;
    }

    else
    {
      v118 = v117 & 0xFFFFFFFE;
    }

    if (v118)
    {
      LOWORD(valuePtr) = 0;
LABEL_66:
      v33 = _os_log_send_and_compose_impl();
      v34 = v33;
      if (v33)
      {
        sub_100002A8C(v33);
      }

      goto LABEL_294;
    }

LABEL_293:
    v34 = 0;
LABEL_294:
    free(v34);
LABEL_295:

    v35 = 0;
    v36 = 22;
    goto LABEL_71;
  }

  v35 = v111;
  if (qword_1000EB310 != -1)
  {
    sub_100089CEC();
  }

  v112 = qword_1000EB308;
  if (os_log_type_enabled(v112, OS_LOG_TYPE_DEFAULT))
  {
    v113 = sub_1000011A8(1);
    if (os_log_type_enabled(v112, OS_LOG_TYPE_DEFAULT))
    {
      v114 = v113;
    }

    else
    {
      v114 = v113 & 0xFFFFFFFE;
    }

    if (v114)
    {
      LOWORD(valuePtr) = 0;
      v115 = _os_log_send_and_compose_impl();
      v116 = v115;
      if (v115)
      {
        sub_100002A8C(v115);
      }
    }

    else
    {
      v116 = 0;
    }

    free(v116);
  }

  if (qword_1000EB310 != -1)
  {
    sub_100089CEC();
  }

  v119 = qword_1000EB308;
  if (os_log_type_enabled(v119, OS_LOG_TYPE_DEFAULT))
  {
    v120 = sub_1000011A8(1);
    if (os_log_type_enabled(v119, OS_LOG_TYPE_DEFAULT))
    {
      v121 = v120;
    }

    else
    {
      v121 = v120 & 0xFFFFFFFE;
    }

    if (v121)
    {
      LOWORD(valuePtr) = 0;
      v122 = _os_log_send_and_compose_impl();
      v123 = v122;
      if (v122)
      {
        sub_100002A8C(v122);
      }
    }

    else
    {
      v123 = 0;
    }

    free(v123);
  }

  sub_10002E9D8(v35, 0);
  return v35;
}

uint64_t sub_10004A188(const __CFString *a1, void *a2)
{
  v3 = sub_100056BC8(qword_1000EB2E8, a2);
  if (v3)
  {
    v4 = v3;
    v5 = sub_10008CDD8(qword_1000EB2E8, 0, v3);
    CFRelease(v4);
    if (v5)
    {
      if (!a1)
      {
        if (qword_1000EB310 != -1)
        {
          sub_100089D14();
        }

        v16 = qword_1000EB308;
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

        v21 = 0;
        goto LABEL_91;
      }

      if (qword_1000EB310 != -1)
      {
        sub_100089D14();
      }

      v6 = qword_1000EB308;
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        v7 = sub_1000011A8(1);
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
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

      if (!CFDictionaryContainsKey(v5, off_1000EA4B0))
      {
        goto LABEL_56;
      }

      v22 = sub_10007947C(v5, off_1000EA4B0);
      if (qword_1000EB310 != -1)
      {
        sub_100089CEC();
      }

      v23 = qword_1000EB308;
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
      {
        v24 = sub_1000011A8(1);
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
        {
          v25 = v24;
        }

        else
        {
          v25 = v24 & 0xFFFFFFFE;
        }

        if (v25)
        {
          v26 = _os_log_send_and_compose_impl();
          v27 = v26;
          if (v26)
          {
            sub_100002A8C(v26);
          }
        }

        else
        {
          v27 = 0;
        }

        free(v27);
      }

      if (v22)
      {
        CFRetain(v22);
        MutableCopy = CFArrayCreateMutableCopy(kCFAllocatorDefault, 0, v22);
        if (CFArrayGetCount(MutableCopy) >= 1)
        {
          v29 = 0;
          while (1)
          {
            ValueAtIndex = CFArrayGetValueAtIndex(MutableCopy, v29);
            if (ValueAtIndex)
            {
              v31 = ValueAtIndex;
              v32 = CFGetTypeID(ValueAtIndex);
              if (v32 == CFStringGetTypeID() && CFStringCompare(v31, a1, 0) == kCFCompareEqualTo)
              {
                break;
              }
            }

            if (CFArrayGetCount(MutableCopy) <= ++v29)
            {
              goto LABEL_55;
            }
          }

          if (qword_1000EB310 != -1)
          {
            sub_100089CEC();
          }

          v45 = qword_1000EB308;
          if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
          {
            v46 = sub_1000011A8(1);
            if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
            {
              v47 = v46;
            }

            else
            {
              v47 = v46 & 0xFFFFFFFE;
            }

            if (v47)
            {
              v48 = _os_log_send_and_compose_impl();
              v49 = v48;
              if (v48)
              {
                sub_100002A8C(v48);
              }
            }

            else
            {
              v49 = 0;
            }

            free(v49);
          }

          v21 = 1;
          goto LABEL_88;
        }

LABEL_55:
        CFArrayAppendValue(MutableCopy, a1);
        CFDictionaryReplaceValue(v5, off_1000EA4B0, MutableCopy);
        v33 = 0;
      }

      else
      {
LABEL_56:
        MutableCopy = sub_1000799A8();
        CFArrayAppendValue(MutableCopy, a1);
        CFDictionarySetValue(v5, off_1000EA4B0, MutableCopy);
        v22 = 0;
        v33 = 1;
      }

      if (qword_1000EB310 != -1)
      {
        sub_100089CEC();
      }

      v34 = qword_1000EB308;
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        v35 = sub_1000011A8(1);
        if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
        {
          v36 = v35;
        }

        else
        {
          v36 = v35 & 0xFFFFFFFE;
        }

        if (v36)
        {
          v37 = _os_log_send_and_compose_impl();
          v38 = v37;
          if (v37)
          {
            sub_100002A8C(v37);
          }
        }

        else
        {
          v38 = 0;
        }

        free(v38);
      }

      if (sub_10008EBBC(qword_1000EB2E8))
      {
        v21 = 1;
        if (v33)
        {
LABEL_89:
          if (MutableCopy)
          {
            CFRelease(MutableCopy);
          }

LABEL_91:
          CFRelease(v5);
          return v21;
        }
      }

      else
      {
        if (qword_1000EB310 != -1)
        {
          sub_100089CEC();
        }

        v39 = qword_1000EB308;
        if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
        {
          v40 = sub_1000011A8(1);
          if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
          {
            v41 = v40;
          }

          else
          {
            v41 = v40 & 0xFFFFFFFE;
          }

          if (v41)
          {
            v42 = _os_log_send_and_compose_impl();
            v43 = v42;
            if (v42)
            {
              sub_100002A8C(v42);
            }
          }

          else
          {
            v43 = 0;
          }

          free(v43);
        }

        if (v33)
        {
          CFDictionaryRemoveValue(v5, off_1000EA4B0);
          v21 = 0;
          goto LABEL_89;
        }

        CFDictionaryReplaceValue(v5, off_1000EA4B0, v22);
        v21 = 0;
      }

LABEL_88:
      CFRelease(v22);
      goto LABEL_89;
    }
  }

  if (qword_1000EB310 != -1)
  {
    sub_100089D14();
  }

  v11 = qword_1000EB308;
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
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

  return 0;
}

CFStringRef sub_10004A908(void *a1, __int128 *a2, uint64_t a3, void *a4)
{
  v6 = a4;
  v7 = objc_autoreleasePoolPush();
  v8 = a1;
  if (v8 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v9 = sub_100056BC8(qword_1000EB2E8, v6);
    if (v9)
    {
      v10 = v9;
      v11 = sub_100056854(qword_1000EB2E8, v8, v9);
      v12 = v11;
      if (!v11)
      {
        if (qword_1000EB310 != -1)
        {
          sub_100089D14();
        }

        v41 = qword_1000EB308;
        if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
        {
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

        v17 = 0;
        *__error() = 2;
        goto LABEL_80;
      }

      v13 = [v11 objectForKeyedSubscript:kUMUserSessionHomeDirKey];
      if (v13 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        if (&_sandbox_extension_issue_file_to_process)
        {
          [v13 UTF8String];
          v63 = *a2;
          v64 = a2[1];
          v14 = sandbox_extension_issue_file_to_process();
          if (v14)
          {
            v15 = v14;
            v16 = CFStringCreateWithCStringNoCopy(kCFAllocatorDefault, v14, 0x8000100u, kCFAllocatorDefault);
            if (v16)
            {
              v17 = v16;
              if (qword_1000EB310 != -1)
              {
                sub_100089CEC();
              }

              v18 = qword_1000EB308;
              if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
              {
                v19 = sub_1000011A8(1);
                if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
                {
                  v20 = v19;
                }

                else
                {
                  v20 = v19 & 0xFFFFFFFE;
                }

                if (v20)
                {
                  v21 = _os_log_send_and_compose_impl();
                  v22 = v21;
                  if (v21)
                  {
                    sub_100002A8C(v21);
                  }
                }

                else
                {
                  v22 = 0;
                }

                free(v22);
              }

              goto LABEL_67;
            }

            if (qword_1000EB310 != -1)
            {
              sub_100089CEC();
            }

            v58 = qword_1000EB308;
            if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
            {
              v59 = sub_1000011A8(1);
              if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
              {
                v60 = v59;
              }

              else
              {
                v60 = v59 & 0xFFFFFFFE;
              }

              if (v60)
              {
                v61 = _os_log_send_and_compose_impl();
                v62 = v61;
                if (v61)
                {
                  sub_100002A8C(v61);
                }
              }

              else
              {
                v62 = 0;
              }

              free(v62);
            }

            free(v15);
            v46 = __error();
            v17 = 0;
            v47 = 12;
          }

          else
          {
            if (qword_1000EB310 != -1)
            {
              sub_100089CEC();
            }

            v53 = qword_1000EB308;
            if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
            {
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

            v46 = __error();
            v17 = 0;
            v47 = 9;
          }
        }

        else
        {
          if (qword_1000EB310 != -1)
          {
            sub_100089D14();
          }

          v48 = qword_1000EB308;
          if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
          {
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

          v46 = __error();
          v17 = 0;
          v47 = 5;
        }
      }

      else
      {
        if (qword_1000EB310 != -1)
        {
          sub_100089D14();
        }

        v36 = qword_1000EB308;
        if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
        {
          v37 = sub_1000011A8(1);
          if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
          {
            v38 = v37;
          }

          else
          {
            v38 = v37 & 0xFFFFFFFE;
          }

          if (v38)
          {
            v39 = _os_log_send_and_compose_impl();
            v40 = v39;
            if (v39)
            {
              sub_100002A8C(v39);
            }
          }

          else
          {
            v40 = 0;
          }

          free(v40);
        }

        v46 = __error();
        v17 = 0;
        v47 = 2;
      }

      *v46 = v47;
LABEL_67:

LABEL_80:
      goto LABEL_32;
    }

    if (qword_1000EB310 != -1)
    {
      sub_100089D14();
    }

    v31 = qword_1000EB308;
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

    v28 = __error();
    v17 = 0;
    v29 = 2;
  }

  else
  {
    if (qword_1000EB310 != -1)
    {
      sub_100089D14();
    }

    v23 = qword_1000EB308;
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v24 = sub_1000011A8(1);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        v25 = v24;
      }

      else
      {
        v25 = v24 & 0xFFFFFFFE;
      }

      if (v25)
      {
        v26 = _os_log_send_and_compose_impl();
        v27 = v26;
        if (v26)
        {
          sub_100002A8C(v26);
        }
      }

      else
      {
        v27 = 0;
      }

      free(v27);
    }

    v28 = __error();
    v17 = 0;
    v29 = 22;
  }

  *v28 = v29;
LABEL_32:

  objc_autoreleasePoolPop(v7);
  return v17;
}

void sub_10004B1E4(id a1)
{
  qword_1000EB308 = os_log_create(off_1000EA598, "legacy");

  _objc_release_x1();
}

void sub_10004B22C(id a1)
{
  qword_1000EB318 = os_log_create(off_1000EA598, "user");

  _objc_release_x1();
}

uint64_t sub_10004B274(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  if (&_sandbox_user_state_item_buffer_destroy && &_sandbox_user_state_item_buffer_send && &_sandbox_user_state_item_buffer_create && &_sandbox_set_user_state_item)
  {
    sandbox_user_state_item_buffer_create();
    if (a5)
    {
      if (qword_1000EB310 != -1)
      {
        sub_100089D14();
      }

      v6 = qword_1000EB308;
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
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

      sandbox_set_user_state_item();
      if (sandbox_user_state_item_buffer_send())
      {
        if (qword_1000EB310 != -1)
        {
          sub_100089CEC();
        }

        v22 = qword_1000EB308;
        if (!os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_60;
        }

        v23 = sub_1000011A8(1);
        if (!os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          v23 &= ~1u;
        }

        if (v23)
        {
          goto LABEL_55;
        }

        goto LABEL_58;
      }
    }

    else
    {
      if (qword_1000EB310 != -1)
      {
        sub_100089D14();
      }

      v16 = qword_1000EB308;
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

      sandbox_set_user_state_item();
      sandbox_set_user_state_item();
      sandbox_set_user_state_item();
      sandbox_set_user_state_item();
      if (sandbox_user_state_item_buffer_send())
      {
        if (qword_1000EB310 != -1)
        {
          sub_100089CEC();
        }

        v22 = qword_1000EB308;
        if (!os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_60;
        }

        v24 = sub_1000011A8(1);
        if (!os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          v24 &= ~1u;
        }

        if (v24)
        {
LABEL_55:
          v25 = v22;
          v28 = *__error();
          v26 = _os_log_send_and_compose_impl();

          if (v26)
          {
            sub_100002A8C(v26);
          }

          goto LABEL_59;
        }

LABEL_58:
        v26 = 0;
LABEL_59:
        free(v26);
LABEL_60:

        v21 = 0;
        goto LABEL_61;
      }
    }

    v21 = 1;
LABEL_61:
    sandbox_user_state_item_buffer_destroy();
    return v21;
  }

  if (qword_1000EB310 != -1)
  {
    sub_100089D14();
  }

  v11 = qword_1000EB308;
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
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

  return 0;
}

void sub_10004B7C8(int32x2_t *a1)
{
  if (qword_1000EB320 != -1)
  {
    sub_100089D90();
  }

  v2 = qword_1000EB318;
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v35 = 0;
    v3 = sub_1000011A8(0);
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
      v5 = a1[4].i32[0];
      v6 = a1[4].i32[1];
      LODWORD(v32) = 67109376;
      HIDWORD(v32) = v5;
      v33 = 1024;
      v34 = v6;
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

  v9 = os_transaction_create();
  if (qword_1000EB320 != -1)
  {
    sub_100089D68();
  }

  v10 = qword_1000EB318;
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v32 = 0;
    v11 = sub_1000011A8(0);
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
      v13 = a1[4].i32[0];
      LODWORD(v35) = 67109120;
      HIDWORD(v35) = v13;
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

  v16 = a1[4].u32[0];
  active = launch_active_user_logout();
  if (active)
  {
    v24 = active;
    if (qword_1000EB320 != -1)
    {
      goto LABEL_47;
    }

    while (1)
    {
      v25 = qword_1000EB318;
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        v35 = 0;
        v26 = sub_1000011A8(0);
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          v27 = v26;
        }

        else
        {
          v27 = v26 & 0xFFFFFFFE;
        }

        if (v27)
        {
          v29 = a1[4].i32[0];
          LODWORD(v32) = 67109376;
          HIDWORD(v32) = v29;
          v33 = 1024;
          v34 = v24;
          v30 = _os_log_send_and_compose_impl();
          v28 = v30;
          if (v30)
          {
            sub_100002A8C(v30);
          }
        }

        else
        {
          v28 = 0;
        }

        free(v28);
      }

      sub_100018028("UserManagement user switch failed: launch_active_user_logout(%d) failed: %d", a1[4].i32[0], v24);
LABEL_47:
      sub_100089D68();
    }
  }

  if (qword_1000EB320 != -1)
  {
    sub_100089D68();
  }

  v18 = qword_1000EB318;
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v32 = 0;
    v19 = sub_1000011A8(0);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v20 = v19;
    }

    else
    {
      v20 = v19 & 0xFFFFFFFE;
    }

    if (v20)
    {
      v21 = a1[4].i32[0];
      LODWORD(v35) = 67109120;
      HIDWORD(v35) = v21;
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

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10004BC04;
  block[3] = &unk_1000DCE88;
  block[4] = vrev64_s32(a1[4]);
  dispatch_sync(qword_1000EB610, block);
}

void sub_10004BC04(NSObject *a1)
{
  v2 = +[RDServer sharedServer];
  [v2 resetStateForUserSwitch];

  v3 = &off_1000EB000;
  if (qword_1000EB5F8)
  {
    if (qword_1000EB320 != -1)
    {
      sub_100089D90();
    }

    v2 = qword_1000EB318;
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v4 = sub_1000011A8(0);
      if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
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

    dispatch_source_cancel(qword_1000EB5F8);
    v8 = qword_1000EB5F8;
    qword_1000EB5F8 = 0;
  }

  if (!sub_100043504(a1[4].isa, HIDWORD(a1[4].isa)))
  {
    if (qword_1000EB320 == -1)
    {
      goto LABEL_53;
    }

    goto LABEL_75;
  }

  if (qword_1000EB320 != -1)
  {
    sub_100089D68();
  }

  v9 = qword_1000EB318;
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = sub_1000011A8(0);
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
      isa = a1[4].isa;
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

  isa_low = LODWORD(a1[4].isa);
  active = launch_active_user_login();
  if (active)
  {
    LODWORD(v3) = active;
    if (qword_1000EB320 != -1)
    {
      sub_100089D68();
    }

    v2 = qword_1000EB318;
    if (!os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_74;
    }

    v30 = sub_1000011A8(0);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v31 = v30;
    }

    else
    {
      v31 = v30 & 0xFFFFFFFE;
    }

    if (v31)
    {
      goto LABEL_71;
    }

    v32 = 0;
    while (1)
    {
      free(v32);
LABEL_74:

      sub_100018028("UserManagement user switch failed: launch_active_user_login(%d) failed: %d", LODWORD(a1[4].isa), v3);
LABEL_75:
      sub_100089D68();
LABEL_53:
      a1 = qword_1000EB318;
      if (os_log_type_enabled(a1, OS_LOG_TYPE_ERROR))
      {
        v28 = sub_1000011A8(0);
        if (os_log_type_enabled(a1, OS_LOG_TYPE_ERROR))
        {
          v29 = v28;
        }

        else
        {
          v29 = v28 & 0xFFFFFFFE;
        }

        if (v29)
        {
          v33 = _os_log_send_and_compose_impl();
          v2 = v33;
          if (v33)
          {
            sub_100002A8C(v33);
          }
        }

        else
        {
          v2 = 0;
        }

        free(v2);
      }

      sub_100018028("UserManagement user switch failed: failed to switch foreground user");
LABEL_71:
      v36 = a1[4].isa;
      v34 = _os_log_send_and_compose_impl();
      v32 = v34;
      if (v34)
      {
        sub_100002A8C(v34);
      }
    }
  }

  if (qword_1000EB320 != -1)
  {
    sub_100089D68();
  }

  v16 = qword_1000EB318;
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = sub_1000011A8(0);
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
      v39 = a1[4].isa;
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

  if (qword_1000EB320 != -1)
  {
    sub_100089D68();
  }

  v21 = qword_1000EB318;
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    v22 = sub_1000011A8(0);
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
      isa_high = HIDWORD(a1[4].isa);
      v37 = a1[4].isa;
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

  sub_10008B010(qword_1000EB2E0);
  byte_1000EB2F0 = 0;
  v26 = sub_10008900C(qword_1000EB608);
  v27 = [NSString stringWithUTF8String:"com.apple.mobile.usermanagerd.foregrounduser_changed"];
  [v26 post:v27];

  if (dword_1000EB5B0 == 1)
  {
    sub_10001A30C();
  }
}

void sub_10004C208(int a1)
{
  v1 = sub_10007980C("/private/var//keybags/usersession.kb");
  if (v1)
  {
    v2 = v1;
    valuePtr = 0;
    v3 = sub_1000023E8(v1, @"NUMENT");
    v4 = sub_100079440(v2, @"BLOB");
    v5 = &off_1000EB000;
    v6 = &off_1000EB000;
    if (CFDictionaryContainsKey(v2, @"DEVICECONFIG"))
    {
      v7 = sub_1000023E8(v2, @"DEVICECONFIG");
      v8 = v7;
      if (v7 >= 3)
      {
        v179 = sub_100018028("usermanagerd: device configuration %d is from the future! Downgrading is not supported.", v7);
        sub_10004E02C(v179, v180);
        return;
      }

      dword_1000EB5B0 = v7;
      if (qword_1000EB310 != -1)
      {
        sub_100089D14();
      }

      v9 = qword_1000EB308;
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v184[0] = 0;
        v10 = sub_1000011A8(1);
        v11 = v9;
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          v12 = v10;
        }

        else
        {
          v12 = v10 & 0xFFFFFFFE;
        }

        if (v12)
        {
          LODWORD(v185) = 67109120;
          HIDWORD(v185) = dword_1000EB5B0;
          v13 = _os_log_send_and_compose_impl();

          if (v13)
          {
            sub_100002A8C(v13);
          }
        }

        else
        {

          v13 = 0;
        }

        v5 = &off_1000EB000;
        free(v13);
      }

      v19 = dword_1000EB5B0 == 0;
    }

    else
    {
      dword_1000EB5B0 = 0;
      if (qword_1000EB310 != -1)
      {
        sub_100089D14();
      }

      v14 = qword_1000EB308;
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v184[0] = 0;
        v15 = sub_1000011A8(1);
        v16 = v14;
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          v17 = v15;
        }

        else
        {
          v17 = v15 & 0xFFFFFFFE;
        }

        if (v17)
        {
          LODWORD(v185) = 67109120;
          HIDWORD(v185) = dword_1000EB5B0;
          v18 = _os_log_send_and_compose_impl();

          if (v18)
          {
            sub_100002A8C(v18);
          }
        }

        else
        {

          v18 = 0;
        }

        free(v18);
        v5 = &off_1000EB000;
      }

      v8 = 0;
      v19 = 1;
    }

    if (CFDictionaryContainsKey(v2, @"BOOTEDUSER"))
    {
      dword_1000EA3D0 = sub_1000023E8(v2, @"BOOTEDUSER");
      if (v5[98] != -1)
      {
        sub_100089CEC();
      }

      v20 = qword_1000EB308;
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v184[0] = 0;
        v21 = sub_1000011A8(1);
        v20 = v20;
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
          LODWORD(v185) = 67109120;
          HIDWORD(v185) = dword_1000EA3D0;
          goto LABEL_46;
        }

        goto LABEL_48;
      }
    }

    else
    {
      dword_1000EA3D0 = 501;
      if (v5[98] != -1)
      {
        sub_100089CEC();
      }

      v20 = qword_1000EB308;
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v184[0] = 0;
        v23 = sub_1000011A8(1);
        v20 = v20;
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          v24 = v23;
        }

        else
        {
          v24 = v23 & 0xFFFFFFFE;
        }

        if (v24)
        {
          LODWORD(v185) = 67109120;
          HIDWORD(v185) = dword_1000EA3D0;
LABEL_46:
          v25 = _os_log_send_and_compose_impl();

          if (v25)
          {
            sub_100002A8C(v25);
          }

          goto LABEL_49;
        }

LABEL_48:

        v25 = 0;
LABEL_49:
        free(v25);
        v5 = &off_1000EB000;
      }
    }

    qword_1000EA3E0 = sub_1000794B8(v2, @"APNSID");
    if (v5[98] != -1)
    {
      sub_100089CEC();
    }

    v26 = qword_1000EB308;
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      v185 = 0;
      v27 = sub_1000011A8(1);
      v28 = v26;
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        v29 = v27;
      }

      else
      {
        v29 = v27 & 0xFFFFFFFE;
      }

      if (v29)
      {
        LODWORD(v184[0]) = 134217984;
        *(v184 + 4) = qword_1000EA3E0;
        v30 = _os_log_send_and_compose_impl();

        if (v30)
        {
          sub_100002A8C(v30);
        }
      }

      else
      {

        v30 = 0;
      }

      v5 = &off_1000EB000;
      free(v30);
    }

    if (v3)
    {
      if (qword_1000EB5A0 && CFArrayGetCount(qword_1000EB5A0) >= 1)
      {
        CFArrayRemoveAllValues(qword_1000EB5A0);
      }

      BytePtr = CFDataGetBytePtr(v4);
      Length = CFDataGetLength(v4);
      v33 = sub_10007972C(BytePtr, Length);
      if (v3 < 1)
      {
        v36 = 0;
        v54 = 1;
      }

      else
      {
        v181 = v2;
        v34 = 0;
        v35 = 0;
        v36 = 0;
        v37 = v3;
        v38 = &off_1000EB000;
        do
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v33, v34);
          if (ValueAtIndex)
          {
            v40 = ValueAtIndex;
            v41 = CFGetTypeID(ValueAtIndex);
            if (v41 == CFDictionaryGetTypeID())
            {
              v42 = sub_1000023E8(v40, kUMUserSessionIDKey);
              valuePtr = v42;
              v43 = *(v38 + 364);
              if (v19 && v42 > 501)
              {
                if (v43 != 1)
                {
                  if (qword_1000EB310 != -1)
                  {
                    sub_100089CEC();
                  }

                  v44 = qword_1000EB308;
                  if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
                  {
                    v184[0] = 0;
                    v45 = sub_1000011A8(1);
                    v46 = v44;
                    if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
                    {
                      v47 = v45;
                    }

                    else
                    {
                      v47 = v45 & 0xFFFFFFFE;
                    }

                    if (v47)
                    {
                      LODWORD(v185) = 67109120;
                      HIDWORD(v185) = valuePtr;
                      v48 = _os_log_send_and_compose_impl();

                      if (v48)
                      {
                        sub_100002A8C(v48);
                      }
                    }

                    else
                    {

                      v48 = 0;
                    }

                    v38 = &off_1000EB000;
                    free(v48);
                  }

                  if (![qword_1000EB2D8 splitUserVolumeEnabled])
                  {
                    v35 = 1;
                  }

                  v8 = 1;
                  v42 = valuePtr;
                }

                v19 = 0;
                *(v38 + 364) = v8;
                v36 = 1;
                v43 = v8;
              }

              if (v43 == 1 && v42 == 502 && !CFDictionaryContainsKey(v40, kUMUserSessionisPrimaryKey))
              {
                if (qword_1000EB310 != -1)
                {
                  sub_100089CEC();
                }

                v49 = qword_1000EB308;
                if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
                {
                  v184[0] = 0;
                  v50 = sub_1000011A8(1);
                  v51 = v49;
                  if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
                  {
                    v52 = v50;
                  }

                  else
                  {
                    v52 = v50 & 0xFFFFFFFE;
                  }

                  if (v52)
                  {
                    LOWORD(v185) = 0;
                    v53 = _os_log_send_and_compose_impl();

                    if (v53)
                    {
                      sub_100002A8C(v53);
                    }
                  }

                  else
                  {

                    v53 = 0;
                  }

                  free(v53);
                }

                CFDictionarySetValue(v40, kUMUserSessionisPrimaryKey, kCFBooleanTrue);
                CFDictionarySetValue(v40, kUMUserSessionisAdminKey, kCFBooleanTrue);
                v36 = 1;
                v38 = &off_1000EB000;
              }

              if (v8 == 1 && valuePtr < 502)
              {
                v8 = 1;
              }

              else
              {
                sub_10001FC24(v40, a1);
              }
            }
          }

          ++v34;
        }

        while (v37 != v34);
        v54 = v35 == 0;
        v2 = v181;
        v6 = &off_1000EB000;
      }

      v5 = &off_1000EB000;
      if (qword_1000EB310 != -1)
      {
        sub_100089CEC();
      }

      v55 = v6[97];
      if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
      {
        v185 = 0;
        v56 = sub_1000011A8(1);
        v57 = v55;
        if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
        {
          v58 = v56;
        }

        else
        {
          v58 = v56 & 0xFFFFFFFE;
        }

        if (v58)
        {
          LODWORD(v184[0]) = 138412290;
          *(v184 + 4) = qword_1000EB5A0;
          v59 = _os_log_send_and_compose_impl();

          if (v59)
          {
            sub_100002A8C(v59);
          }
        }

        else
        {

          v59 = 0;
        }

        free(v59);
      }

      if (v33)
      {
        CFRelease(v33);
      }

      if (!v54)
      {
        if (sub_10002E024(501, a1))
        {
          if (qword_1000EB310 != -1)
          {
            sub_100089CEC();
          }

          v60 = v6[97];
          if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
          {
            v184[0] = 0;
            v61 = sub_1000011A8(1);
            v60 = v60;
            if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
            {
              v62 = v61;
            }

            else
            {
              v62 = v61 & 0xFFFFFFFE;
            }

            if (v62)
            {
              LOWORD(v185) = 0;
              v63 = _os_log_send_and_compose_impl();

              if (v63)
              {
                sub_100002A8C(v63);
              }
            }

            else
            {

              v63 = 0;
            }

            free(v63);
          }

          v36 = 1;
        }

        else
        {
          if (qword_1000EB310 != -1)
          {
            sub_100089CEC();
          }

          v60 = v6[97];
          if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
          {
            v184[0] = 0;
            v64 = sub_1000011A8(1);
            v60 = v60;
            if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
            {
              v65 = v64;
            }

            else
            {
              v65 = v64 & 0xFFFFFFFE;
            }

            if (v65)
            {
              LOWORD(v185) = 0;
              v66 = _os_log_send_and_compose_impl();

              if (v66)
              {
                sub_100002A8C(v66);
              }
            }

            else
            {

              v66 = 0;
            }

            free(v66);
          }
        }
      }
    }

    else
    {
      v36 = 0;
    }

    if (CFDictionaryContainsKey(v2, @"MAXUSER"))
    {
      dword_1000EA3D4 = sub_1000023E8(v2, @"MAXUSER");
    }

    else
    {
      v67 = CFDictionaryContainsKey(v2, @"MAXUSERSIZE");
      dword_1000EA3D4 = -1;
      if (!v67)
      {
        v68 = 0;
LABEL_152:
        qword_1000EB5D8 = v68;
        v69 = CFDictionaryContainsKey(v2, @"USESSTYPE");
        if (v69)
        {
          v69 = sub_1000023E8(v2, @"USESSTYPE");
        }

        dword_1000EB5B8 = v69;
        v70 = CFDictionaryContainsKey(v2, @"LOGINCHECKIN");
        if (v70)
        {
          v70 = sub_1000023E8(v2, @"LOGINCHECKIN");
        }

        dword_1000EB5BC = v70;
        if (CFDictionaryContainsKey(v2, @"DEVICENETWORKBG"))
        {
          v71 = sub_1000023E8(v2, @"DEVICENETWORKBG");
          v72 = v71 & ~(v71 >> 31);
        }

        else
        {
          v72 = 0;
        }

        dword_1000EB5E0 = v72;
        if (CFDictionaryContainsKey(v2, @"SYNCENT"))
        {
          v73 = sub_1000023E8(v2, @"SYNCENT");
          if (v73 >= 1)
          {
            v74 = sub_100079440(v2, @"SYNCBLOB");
            if (v5[98] != -1)
            {
              sub_100089CEC();
            }

            v75 = v6[97];
            if (os_log_type_enabled(v75, OS_LOG_TYPE_DEFAULT))
            {
              v184[0] = 0;
              v76 = sub_1000011A8(1);
              v77 = v75;
              if (os_log_type_enabled(v77, OS_LOG_TYPE_DEFAULT))
              {
                v78 = v76;
              }

              else
              {
                v78 = v76 & 0xFFFFFFFE;
              }

              if (v78)
              {
                LODWORD(v185) = 67109120;
                HIDWORD(v185) = v73;
                v79 = _os_log_send_and_compose_impl();

                if (v79)
                {
                  sub_100002A8C(v79);
                }
              }

              else
              {

                v79 = 0;
              }

              v5 = &off_1000EB000;
              free(v79);
            }

            if (qword_1000EB5C0 && CFArrayGetCount(qword_1000EB5C0) >= 1)
            {
              CFArrayRemoveAllValues(qword_1000EB5C0);
            }

            v89 = CFDataGetBytePtr(v74);
            v90 = CFDataGetLength(v74);
            v91 = sub_10007972C(v89, v90);
            if (v5[98] != -1)
            {
              sub_100089CEC();
            }

            v92 = v6[97];
            if (os_log_type_enabled(v92, OS_LOG_TYPE_DEFAULT))
            {
              v185 = 0;
              v93 = sub_1000011A8(1);
              v94 = v92;
              if (os_log_type_enabled(v94, OS_LOG_TYPE_DEFAULT))
              {
                v95 = v93;
              }

              else
              {
                v95 = v93 & 0xFFFFFFFE;
              }

              if (v95)
              {
                LODWORD(v184[0]) = 138412290;
                *(v184 + 4) = v91;
                v96 = _os_log_send_and_compose_impl();

                if (v96)
                {
                  sub_100002A8C(v96);
                }
              }

              else
              {

                v96 = 0;
              }

              free(v96);
            }

            if (CFArrayGetCount(v91) >= 1)
            {
              v97 = 0;
              do
              {
                v98 = CFArrayGetValueAtIndex(v91, v97);
                if (v98)
                {
                  v99 = v98;
                  v100 = CFGetTypeID(v98);
                  if (v100 == CFNumberGetTypeID())
                  {
                    CFNumberGetValue(v99, kCFNumberIntType, &valuePtr);
                    if (valuePtr >= 502)
                    {
                      sub_10001BD58(valuePtr);
                    }
                  }
                }

                ++v97;
              }

              while (CFArrayGetCount(v91) > v97);
            }

            v101 = v5[98];
            if (qword_1000EB5C0)
            {
              if (v101 != -1)
              {
                sub_100089CEC();
              }

              v102 = v6[97];
              if (!os_log_type_enabled(v102, OS_LOG_TYPE_DEFAULT))
              {
                goto LABEL_233;
              }

              v185 = 0;
              v103 = sub_1000011A8(1);
              v102 = v102;
              if (os_log_type_enabled(v102, OS_LOG_TYPE_DEFAULT))
              {
                v104 = v103;
              }

              else
              {
                v104 = v103 & 0xFFFFFFFE;
              }

              if (v104)
              {
                LODWORD(v184[0]) = 138412290;
                *(v184 + 4) = qword_1000EB5C0;
                goto LABEL_229;
              }
            }

            else
            {
              if (v101 != -1)
              {
                sub_100089CEC();
              }

              v102 = v6[97];
              if (!os_log_type_enabled(v102, OS_LOG_TYPE_DEFAULT))
              {
                goto LABEL_233;
              }

              v184[0] = 0;
              v105 = sub_1000011A8(1);
              v102 = v102;
              if (os_log_type_enabled(v102, OS_LOG_TYPE_DEFAULT))
              {
                v106 = v105;
              }

              else
              {
                v106 = v105 & 0xFFFFFFFE;
              }

              if (v106)
              {
                LOWORD(v185) = 0;
LABEL_229:
                v107 = _os_log_send_and_compose_impl();

                if (v107)
                {
                  sub_100002A8C(v107);
                }

                goto LABEL_232;
              }
            }

            v107 = 0;
LABEL_232:
            free(v107);
LABEL_233:

            if (v91)
            {
              CFRelease(v91);
            }

LABEL_241:
            if (CFDictionaryContainsKey(v2, @"LRUENT"))
            {
              v109 = sub_1000023E8(v2, @"LRUENT");
              if (v109 >= 1)
              {
                v110 = sub_100079440(v2, @"LRUBLOB");
                if (v5[98] != -1)
                {
                  sub_100089CEC();
                }

                v111 = v6[97];
                if (os_log_type_enabled(v111, OS_LOG_TYPE_DEFAULT))
                {
                  v184[0] = 0;
                  v112 = sub_1000011A8(1);
                  v113 = v111;
                  if (os_log_type_enabled(v113, OS_LOG_TYPE_DEFAULT))
                  {
                    v114 = v112;
                  }

                  else
                  {
                    v114 = v112 & 0xFFFFFFFE;
                  }

                  if (v114)
                  {
                    LODWORD(v185) = 67109120;
                    HIDWORD(v185) = v109;
                    v115 = _os_log_send_and_compose_impl();

                    if (v115)
                    {
                      sub_100002A8C(v115);
                    }
                  }

                  else
                  {

                    v115 = 0;
                  }

                  v5 = &off_1000EB000;
                  free(v115);
                }

                if (qword_1000EB5C8 && CFArrayGetCount(qword_1000EB5C8) >= 1)
                {
                  CFArrayRemoveAllValues(qword_1000EB5C8);
                }

                v125 = CFDataGetBytePtr(v110);
                v126 = CFDataGetLength(v110);
                v127 = sub_10007972C(v125, v126);
                if (v5[98] != -1)
                {
                  sub_100089CEC();
                }

                v128 = v6[97];
                if (os_log_type_enabled(v128, OS_LOG_TYPE_DEFAULT))
                {
                  v185 = 0;
                  v129 = sub_1000011A8(1);
                  v130 = v128;
                  if (os_log_type_enabled(v130, OS_LOG_TYPE_DEFAULT))
                  {
                    v131 = v129;
                  }

                  else
                  {
                    v131 = v129 & 0xFFFFFFFE;
                  }

                  if (v131)
                  {
                    LODWORD(v184[0]) = 138412290;
                    *(v184 + 4) = v127;
                    v132 = _os_log_send_and_compose_impl();

                    if (v132)
                    {
                      sub_100002A8C(v132);
                    }
                  }

                  else
                  {

                    v132 = 0;
                  }

                  free(v132);
                }

                if (CFArrayGetCount(v127) >= 1)
                {
                  v133 = 0;
                  do
                  {
                    v134 = CFArrayGetValueAtIndex(v127, v133);
                    if (v134)
                    {
                      v135 = v134;
                      v136 = CFGetTypeID(v134);
                      if (v136 == CFNumberGetTypeID())
                      {
                        CFNumberGetValue(v135, kCFNumberIntType, &valuePtr);
                        if (valuePtr >= 502)
                        {
                          sub_10001C1B8(valuePtr);
                        }
                      }
                    }

                    ++v133;
                  }

                  while (CFArrayGetCount(v127) > v133);
                }

                v137 = v5[98];
                if (qword_1000EB5C8)
                {
                  if (v137 != -1)
                  {
                    sub_100089CEC();
                  }

                  v138 = v6[97];
                  if (!os_log_type_enabled(v138, OS_LOG_TYPE_DEFAULT))
                  {
                    goto LABEL_314;
                  }

                  v185 = 0;
                  v139 = sub_1000011A8(1);
                  v138 = v138;
                  if (os_log_type_enabled(v138, OS_LOG_TYPE_DEFAULT))
                  {
                    v140 = v139;
                  }

                  else
                  {
                    v140 = v139 & 0xFFFFFFFE;
                  }

                  if (v140)
                  {
                    LODWORD(v184[0]) = 138412290;
                    *(v184 + 4) = qword_1000EB5C8;
                    goto LABEL_310;
                  }
                }

                else
                {
                  if (v137 != -1)
                  {
                    sub_100089CEC();
                  }

                  v138 = v6[97];
                  if (!os_log_type_enabled(v138, OS_LOG_TYPE_DEFAULT))
                  {
                    goto LABEL_314;
                  }

                  v184[0] = 0;
                  v141 = sub_1000011A8(1);
                  v138 = v138;
                  if (os_log_type_enabled(v138, OS_LOG_TYPE_DEFAULT))
                  {
                    v142 = v141;
                  }

                  else
                  {
                    v142 = v141 & 0xFFFFFFFE;
                  }

                  if (v142)
                  {
                    LOWORD(v185) = 0;
LABEL_310:
                    v143 = _os_log_send_and_compose_impl();

                    if (v143)
                    {
                      sub_100002A8C(v143);
                    }

                    goto LABEL_313;
                  }
                }

                v143 = 0;
LABEL_313:
                free(v143);
LABEL_314:

                if (v127)
                {
                  CFRelease(v127);
                }

LABEL_322:
                if (CFDictionaryContainsKey(v2, @"VOLUMETYPE"))
                {
                  v145 = sub_100079590(v2, @"VOLUMETYPE");
                  v146 = v5[98];
                  if (v145)
                  {
                    if (v146 != -1)
                    {
                      sub_100089CEC();
                    }

                    v147 = v6[97];
                    if (os_log_type_enabled(v147, OS_LOG_TYPE_DEFAULT))
                    {
                      v184[0] = 0;
                      v148 = sub_1000011A8(1);
                      v147 = v147;
                      if (os_log_type_enabled(v147, OS_LOG_TYPE_DEFAULT))
                      {
                        v149 = v148;
                      }

                      else
                      {
                        v149 = v148 & 0xFFFFFFFE;
                      }

                      if (v149)
                      {
                        LOWORD(v185) = 0;
                        goto LABEL_349;
                      }

                      goto LABEL_351;
                    }
                  }

                  else
                  {
                    if (v146 != -1)
                    {
                      sub_100089CEC();
                    }

                    v147 = v6[97];
                    if (os_log_type_enabled(v147, OS_LOG_TYPE_DEFAULT))
                    {
                      v184[0] = 0;
                      v155 = sub_1000011A8(1);
                      v147 = v147;
                      if (os_log_type_enabled(v147, OS_LOG_TYPE_DEFAULT))
                      {
                        v156 = v155;
                      }

                      else
                      {
                        v156 = v155 & 0xFFFFFFFE;
                      }

                      if (v156)
                      {
                        LOWORD(v185) = 0;
LABEL_349:
                        v157 = _os_log_send_and_compose_impl();

                        if (v157)
                        {
                          sub_100002A8C(v157);
                        }

                        goto LABEL_352;
                      }

LABEL_351:

                      v157 = 0;
LABEL_352:
                      free(v157);
                    }
                  }

                  if (CFStringCompare(v145, kUMUserSessionAPFSNativeVolume, 0))
                  {
                    v158 = CFStringCompare(v145, kUMUserSessionAPFSConvertedVolume, 0);
                    byte_1000EA3D8 = 0;
                    if (v158)
                    {
                      qword_1000EB2F8 = kUMUserSessionHFSPlusVolume;
                      if (v5[98] != -1)
                      {
                        sub_100089CEC();
                      }

                      v159 = v6[97];
                      if (os_log_type_enabled(v159, OS_LOG_TYPE_DEFAULT))
                      {
                        v184[0] = 0;
                        v160 = sub_1000011A8(1);
                        v159 = v159;
                        if (os_log_type_enabled(v159, OS_LOG_TYPE_DEFAULT))
                        {
                          v161 = v160;
                        }

                        else
                        {
                          v161 = v160 & 0xFFFFFFFE;
                        }

                        if (v161)
                        {
                          LOWORD(v185) = 0;
                          goto LABEL_379;
                        }

LABEL_381:

                        v166 = 0;
LABEL_382:
                        free(v166);
                      }

LABEL_383:

                      CFRelease(v2);
                      if (!v36)
                      {
                        return;
                      }

LABEL_414:
                      sub_100018C80();
                      return;
                    }

                    qword_1000EB2F8 = kUMUserSessionAPFSConvertedVolume;
                    if (v5[98] != -1)
                    {
                      sub_100089CEC();
                    }

                    v159 = v6[97];
                    if (!os_log_type_enabled(v159, OS_LOG_TYPE_DEFAULT))
                    {
                      goto LABEL_383;
                    }

                    v184[0] = 0;
                    v164 = sub_1000011A8(1);
                    v159 = v159;
                    if (os_log_type_enabled(v159, OS_LOG_TYPE_DEFAULT))
                    {
                      v165 = v164;
                    }

                    else
                    {
                      v165 = v164 & 0xFFFFFFFE;
                    }

                    if (!v165)
                    {
                      goto LABEL_381;
                    }

                    LOWORD(v185) = 0;
                  }

                  else
                  {
                    byte_1000EA3D8 = 1;
                    qword_1000EB2F8 = kUMUserSessionAPFSNativeVolume;
                    if (v5[98] != -1)
                    {
                      sub_100089CEC();
                    }

                    v159 = v6[97];
                    if (!os_log_type_enabled(v159, OS_LOG_TYPE_DEFAULT))
                    {
                      goto LABEL_383;
                    }

                    v184[0] = 0;
                    v162 = sub_1000011A8(1);
                    v159 = v159;
                    if (os_log_type_enabled(v159, OS_LOG_TYPE_DEFAULT))
                    {
                      v163 = v162;
                    }

                    else
                    {
                      v163 = v162 & 0xFFFFFFFE;
                    }

                    if (!v163)
                    {
                      goto LABEL_381;
                    }

                    LOWORD(v185) = 0;
                  }

LABEL_379:
                  v166 = _os_log_send_and_compose_impl();

                  if (v166)
                  {
                    sub_100002A8C(v166);
                  }

                  goto LABEL_382;
                }

                if (v5[98] != -1)
                {
                  sub_100089CEC();
                }

                v150 = v6[97];
                if (os_log_type_enabled(v150, OS_LOG_TYPE_DEFAULT))
                {
                  v184[0] = 0;
                  v151 = sub_1000011A8(1);
                  v152 = v150;
                  if (os_log_type_enabled(v152, OS_LOG_TYPE_DEFAULT))
                  {
                    v153 = v151;
                  }

                  else
                  {
                    v153 = v151 & 0xFFFFFFFE;
                  }

                  if (v153)
                  {
                    LOWORD(v185) = 0;
                    v154 = _os_log_send_and_compose_impl();

                    if (v154)
                    {
                      sub_100002A8C(v154);
                    }
                  }

                  else
                  {

                    v154 = 0;
                  }

                  free(v154);
                }

                if (byte_1000EA3D8 == 1)
                {
                  qword_1000EB2F8 = kUMUserSessionAPFSNativeVolume;
                  if (v5[98] != -1)
                  {
                    sub_100089CEC();
                  }

                  v167 = v6[97];
                  if (!os_log_type_enabled(v167, OS_LOG_TYPE_DEFAULT))
                  {
                    goto LABEL_408;
                  }

                  v184[0] = 0;
                  v168 = sub_1000011A8(1);
                  v167 = v167;
                  if (os_log_type_enabled(v167, OS_LOG_TYPE_DEFAULT))
                  {
                    v169 = v168;
                  }

                  else
                  {
                    v169 = v168 & 0xFFFFFFFE;
                  }

                  if (v169)
                  {
                    LOWORD(v185) = 0;
                    goto LABEL_404;
                  }
                }

                else
                {
                  qword_1000EB2F8 = kUMUserSessionAPFSConvertedVolume;
                  if (v5[98] != -1)
                  {
                    sub_100089CEC();
                  }

                  v167 = v6[97];
                  if (!os_log_type_enabled(v167, OS_LOG_TYPE_DEFAULT))
                  {
                    goto LABEL_408;
                  }

                  v184[0] = 0;
                  v170 = sub_1000011A8(1);
                  v167 = v167;
                  if (os_log_type_enabled(v167, OS_LOG_TYPE_DEFAULT))
                  {
                    v171 = v170;
                  }

                  else
                  {
                    v171 = v170 & 0xFFFFFFFE;
                  }

                  if (v171)
                  {
                    LOWORD(v185) = 0;
LABEL_404:
                    v172 = _os_log_send_and_compose_impl();

                    if (v172)
                    {
                      sub_100002A8C(v172);
                    }

                    goto LABEL_407;
                  }
                }

                v172 = 0;
LABEL_407:
                free(v172);
LABEL_408:

                if (qword_1000EB5A0)
                {
                  Count = CFArrayGetCount(qword_1000EB5A0);
                  if (Count >= 1)
                  {
                    v174 = Count;
                    for (i = 0; i != v174; ++i)
                    {
                      v176 = CFArrayGetValueAtIndex(qword_1000EB5A0, i);
                      v177 = CFGetTypeID(v176);
                      TypeID = CFDictionaryGetTypeID();
                      if (v177 != TypeID)
                      {
                        break;
                      }

                      sub_10004E02C(TypeID, v176);
                    }
                  }
                }

                CFRelease(v2);
                goto LABEL_414;
              }

              if (v5[98] != -1)
              {
                sub_100089CEC();
              }

              v116 = v6[97];
              if (!os_log_type_enabled(v116, OS_LOG_TYPE_DEFAULT))
              {
LABEL_321:

                goto LABEL_322;
              }

              v184[0] = 0;
              v121 = sub_1000011A8(1);
              v122 = v116;
              if (os_log_type_enabled(v122, OS_LOG_TYPE_DEFAULT))
              {
                v123 = v121;
              }

              else
              {
                v123 = v121 & 0xFFFFFFFE;
              }

              if (v123)
              {
                LODWORD(v185) = 67109120;
                HIDWORD(v185) = v109;
                v124 = _os_log_send_and_compose_impl();

                if (v124)
                {
                  sub_100002A8C(v124);
                }
              }

              else
              {

                v124 = 0;
              }

              v144 = v124;
            }

            else
            {
              if (v5[98] != -1)
              {
                sub_100089CEC();
              }

              v116 = v6[97];
              if (!os_log_type_enabled(v116, OS_LOG_TYPE_DEFAULT))
              {
                goto LABEL_321;
              }

              v184[0] = 0;
              v117 = sub_1000011A8(1);
              v118 = v116;
              if (os_log_type_enabled(v118, OS_LOG_TYPE_DEFAULT))
              {
                v119 = v117;
              }

              else
              {
                v119 = v117 & 0xFFFFFFFE;
              }

              if (v119)
              {
                v185 = 67109120;
                v120 = _os_log_send_and_compose_impl();

                if (v120)
                {
                  sub_100002A8C(v120);
                }
              }

              else
              {

                v120 = 0;
              }

              v144 = v120;
            }

            free(v144);
            goto LABEL_321;
          }

          if (v5[98] != -1)
          {
            sub_100089CEC();
          }

          v80 = v6[97];
          if (!os_log_type_enabled(v80, OS_LOG_TYPE_DEFAULT))
          {
LABEL_240:

            goto LABEL_241;
          }

          v184[0] = 0;
          v85 = sub_1000011A8(1);
          v86 = v80;
          if (os_log_type_enabled(v86, OS_LOG_TYPE_DEFAULT))
          {
            v87 = v85;
          }

          else
          {
            v87 = v85 & 0xFFFFFFFE;
          }

          if (v87)
          {
            LODWORD(v185) = 67109120;
            HIDWORD(v185) = v73;
            v88 = _os_log_send_and_compose_impl();

            if (v88)
            {
              sub_100002A8C(v88);
            }
          }

          else
          {

            v88 = 0;
          }

          v108 = v88;
        }

        else
        {
          if (v5[98] != -1)
          {
            sub_100089CEC();
          }

          v80 = v6[97];
          if (!os_log_type_enabled(v80, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_240;
          }

          v184[0] = 0;
          v81 = sub_1000011A8(1);
          v82 = v80;
          if (os_log_type_enabled(v82, OS_LOG_TYPE_DEFAULT))
          {
            v83 = v81;
          }

          else
          {
            v83 = v81 & 0xFFFFFFFE;
          }

          if (v83)
          {
            v185 = 67109120;
            v84 = _os_log_send_and_compose_impl();

            if (v84)
            {
              sub_100002A8C(v84);
            }
          }

          else
          {

            v84 = 0;
          }

          v108 = v84;
        }

        free(v108);
        goto LABEL_240;
      }
    }

    v68 = sub_1000794B8(v2, @"MAXUSERSIZE");
    goto LABEL_152;
  }
}

void sub_10004E02C(uint64_t a1, const __CFDictionary *a2)
{
  v3 = sub_1000023E8(a2, kUMUserSessionIDKey);
  if (!CFDictionaryContainsKey(a2, kUMUserSessionUserVolumeTypeKey))
  {
    CFDictionarySetValue(a2, kUMUserSessionUserVolumeTypeKey, qword_1000EB2F8);
  }

  if (byte_1000EA3D8)
  {
    if (!CFDictionaryContainsKey(a2, kUMUserSessionNeedsMountKey))
    {
      v4 = kUMUserSessionNeedsMountKey;
      if (v3 == 502)
      {
        v5 = &kCFBooleanFalse;
      }

      else
      {
        v5 = &kCFBooleanTrue;
      }

      v11 = *v5;

      CFDictionarySetValue(a2, v4, v11);
    }

    return;
  }

  if (qword_1000EB310 != -1)
  {
    sub_100089D14();
  }

  v6 = qword_1000EB308;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v22 = 0;
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
      LOWORD(v20) = 0;
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

  if (sub_1000795D4(a2, kUMUserSessionHomeDirKey, v22, 1024))
  {
    v19 = 1;
    if (fsctl(v22, 0x80084A02uLL, &v19, 0))
    {
      if (qword_1000EB310 != -1)
      {
        sub_100089CEC();
      }

      v12 = qword_1000EB308;
      if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_44;
      }

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
        v20 = 136315138;
        v21 = v22;
        goto LABEL_40;
      }
    }

    else
    {
      if (qword_1000EB310 != -1)
      {
        sub_100089CEC();
      }

      v12 = qword_1000EB308;
      if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_44;
      }

      v15 = sub_1000011A8(1);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v16 = v15;
      }

      else
      {
        v16 = v15 & 0xFFFFFFFE;
      }

      if (v16)
      {
        v20 = 136315138;
        v21 = v22;
LABEL_40:
        v17 = _os_log_send_and_compose_impl();
        v18 = v17;
        if (v17)
        {
          sub_100002A8C(v17);
        }

        goto LABEL_43;
      }
    }

    v18 = 0;
LABEL_43:
    free(v18);
LABEL_44:
  }

  if (!CFDictionaryContainsKey(a2, kUMUserSessionNeedsMountKey))
  {
    CFDictionarySetValue(a2, kUMUserSessionNeedsMountKey, kCFBooleanFalse);
  }
}

__CFDictionary *sub_10004E3FC(int a1)
{
  valuePtr = 501;
  if (qword_1000EB310 != -1)
  {
    sub_100089D14();
  }

  v95 = 0;
  v2 = qword_1000EB308;
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *cStr = 0;
    v3 = sub_1000011A8(1);
    v4 = v2;
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = v3;
    }

    else
    {
      v5 = v3 & 0xFFFFFFFE;
    }

    if (v5)
    {
      v97[0] = 0x1F504000100;
      v6 = _os_log_send_and_compose_impl();

      if (v6)
      {
        sub_100002A8C(v6);
      }
    }

    else
    {

      v6 = 0;
    }

    free(v6);
  }

  v7 = sub_10007990C();
  v8 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  CFDictionarySetValue(v7, kUMUserSessionIDKey, v8);
  CFRelease(v8);
  v95 = valuePtr;
  v9 = CFNumberCreate(0, kCFNumberIntType, &v95);
  CFDictionarySetValue(v7, kUMUserSessionGroupIDKey, v9);
  CFRelease(v9);
  CFDictionarySetValue(v7, kUMUserSessionTypeKey, kUMUserSessionOther);
  bzero(&cStr[7], 0x3F9uLL);
  strcpy(cStr, "mobile");
  if (qword_1000EB310 != -1)
  {
    sub_100089CEC();
  }

  v10 = qword_1000EB308;
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    cf = 0;
    v11 = sub_1000011A8(1);
    v12 = v10;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = v11;
    }

    else
    {
      v13 = v11 & 0xFFFFFFFE;
    }

    if (v13)
    {
      LODWORD(v97[0]) = 136315138;
      *(v97 + 4) = cStr;
      v14 = _os_log_send_and_compose_impl();

      if (v14)
      {
        sub_100002A8C(v14);
      }
    }

    else
    {

      v14 = 0;
    }

    free(v14);
  }

  v15 = CFStringCreateWithCString(0, cStr, 0x8000100u);
  if (v15)
  {
    v16 = v15;
    CFDictionarySetValue(v7, kUMUserSessionShortNameKey, v15);
    CFDictionarySetValue(v7, kUMUserSessionFirstNameKey, v16);
    CFDictionarySetValue(v7, kUMUserSessionLastNameKey, v16);
    CFDictionarySetValue(v7, kUMUserSessionNameKey, v16);
    CFDictionarySetValue(v7, kUMUserSessionDisplayNameKey, v16);
    CFRelease(v16);
  }

  else
  {
    if (qword_1000EB310 != -1)
    {
      sub_100089CEC();
    }

    v17 = qword_1000EB308;
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v97[0] = 0;
      v18 = sub_1000011A8(1);
      v19 = v17;
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v20 = v18;
      }

      else
      {
        v20 = v18 & 0xFFFFFFFE;
      }

      if (v20)
      {
        LOWORD(cf) = 0;
        v21 = _os_log_send_and_compose_impl();

        if (v21)
        {
          sub_100002A8C(v21);
        }
      }

      else
      {

        v21 = 0;
      }

      free(v21);
    }
  }

  if (qword_1000EB310 != -1)
  {
    sub_100089CEC();
  }

  v22 = qword_1000EB308;
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    v97[0] = 0;
    v23 = sub_1000011A8(1);
    v24 = v22;
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v25 = v23;
    }

    else
    {
      v25 = v23 & 0xFFFFFFFE;
    }

    if (v25)
    {
      LOWORD(cf) = 0;
      v26 = _os_log_send_and_compose_impl();

      if (v26)
      {
        sub_100002A8C(v26);
      }
    }

    else
    {

      v26 = 0;
    }

    free(v26);
  }

  CFDictionarySetValue(v7, kUMUserSessionLanguageKey, @"en_US");
  if (a1)
  {
    cf = 0;
    if (AKSIdentityGetPrimary())
    {
      if (qword_1000EB310 != -1)
      {
        sub_100089CEC();
      }

      v27 = qword_1000EB308;
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        v97[0] = 0;
        v28 = sub_1000011A8(1);
        v29 = v27;
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
        {
          v30 = v28;
        }

        else
        {
          v30 = v28 & 0xFFFFFFFE;
        }

        if (v30)
        {
          v31 = _os_log_send_and_compose_impl();

          if (v31)
          {
            sub_100002A8C(v31);
          }
        }

        else
        {

          v31 = 0;
        }

        free(v31);
      }

      if (qword_1000EB310 != -1)
      {
        sub_100089CEC();
      }

      v37 = qword_1000EB308;
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
      {
        v97[0] = 0;
        v38 = sub_1000011A8(1);
        v39 = v37;
        if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
        {
          v40 = v38;
        }

        else
        {
          v40 = v38 & 0xFFFFFFFE;
        }

        if (v40)
        {
          v41 = _os_log_send_and_compose_impl();

          if (v41)
          {
            sub_100002A8C(v41);
          }
        }

        else
        {

          v41 = 0;
        }

        free(v41);
      }

      if (qword_1000EB310 != -1)
      {
        sub_100089CEC();
      }

      v32 = qword_1000EB308;
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        v97[0] = 0;
        v42 = sub_1000011A8(1);
        v43 = v32;
        if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
        {
          v44 = v42;
        }

        else
        {
          v44 = v42 & 0xFFFFFFFE;
        }

        if (v44)
        {
          v45 = _os_log_send_and_compose_impl();

          if (v45)
          {
            sub_100002A8C(v45);
          }
        }

        else
        {

          v45 = 0;
        }

        free(v45);
      }
    }

    else
    {
      if (qword_1000EB310 != -1)
      {
        sub_100089CEC();
      }

      v32 = qword_1000EB308;
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        v33 = sub_1000011A8(1);
        v34 = v32;
        if (!os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
        {
          v33 &= ~1u;
        }

        if (v33)
        {
          Code = CFErrorGetCode(0);
          LODWORD(v97[0]) = 134217984;
          *(v97 + 4) = Code;
          v36 = _os_log_send_and_compose_impl();

          if (v36)
          {
            sub_100002A8C(v36);
          }
        }

        else
        {

          v36 = 0;
        }

        free(v36);
      }
    }
  }

  uuid = CFUUIDCreate(0);
  v46 = CFUUIDCreateString(0, uuid);
  CFDictionarySetValue(v7, kUMUserSessionUUIDKey, v46);
  if (uuid)
  {
    CFRelease(uuid);
  }

  if (v46)
  {
    CFRelease(v46);
  }

  if (qword_1000EB310 != -1)
  {
    sub_100089CEC();
  }

  v47 = qword_1000EB308;
  if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
  {
    v97[0] = 0;
    v48 = sub_1000011A8(1);
    v49 = v47;
    if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
    {
      v50 = v48;
    }

    else
    {
      v50 = v48 & 0xFFFFFFFE;
    }

    if (v50)
    {
      LOWORD(cf) = 0;
      v51 = _os_log_send_and_compose_impl();

      if (v51)
      {
        sub_100002A8C(v51);
      }
    }

    else
    {

      v51 = 0;
    }

    free(v51);
  }

  uuida = CFUUIDCreate(0);
  v52 = CFUUIDCreateString(0, uuida);
  CFDictionarySetValue(v7, kUMUserSessionAlternateDSIDKey, v52);
  if (uuida)
  {
    CFRelease(uuida);
  }

  if (v52)
  {
    CFRelease(v52);
  }

  Current = CFAbsoluteTimeGetCurrent();
  v54 = CFDateCreate(kCFAllocatorDefault, Current);
  CFDictionarySetValue(v7, kUMUserSessionCreateTimeStampKey, v54);
  CFDictionarySetValue(v7, kUMUserSessionLoginTimeStampKey, v54);
  if (v54)
  {
    CFRelease(v54);
  }

  if (qword_1000EB310 != -1)
  {
    sub_100089CEC();
  }

  v55 = qword_1000EB308;
  if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
  {
    v97[0] = 0;
    v56 = sub_1000011A8(1);
    v57 = v55;
    if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
    {
      v58 = v56;
    }

    else
    {
      v58 = v56 & 0xFFFFFFFE;
    }

    if (v58)
    {
      LOWORD(cf) = 0;
      v59 = _os_log_send_and_compose_impl();

      if (v59)
      {
        sub_100002A8C(v59);
      }
    }

    else
    {

      v59 = 0;
    }

    free(v59);
  }

  CFDictionarySetValue(v7, kUMUserSessionLoginUserKey, kCFBooleanFalse);
  CFDictionarySetValue(v7, kUMUserSessionDirtyKey, kCFBooleanFalse);
  CFDictionarySetValue(v7, kUMUserSessionForegroundKey, kCFBooleanTrue);
  CFDictionarySetValue(v7, kUMUserSessionisPrimaryKey, kCFBooleanTrue);
  CFDictionarySetValue(v7, kUMUserSessionisAdminKey, kCFBooleanTrue);
  if (qword_1000EB310 != -1)
  {
    sub_100089CEC();
  }

  v60 = qword_1000EB308;
  if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
  {
    v97[0] = 0;
    v61 = sub_1000011A8(1);
    v62 = v60;
    if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
    {
      v63 = v61;
    }

    else
    {
      v63 = v61 & 0xFFFFFFFE;
    }

    if (v63)
    {
      LOWORD(cf) = 0;
      v64 = _os_log_send_and_compose_impl();

      if (v64)
      {
        sub_100002A8C(v64);
      }
    }

    else
    {

      v64 = 0;
    }

    free(v64);
  }

  bzero(&v100, 0x3F4uLL);
  strcpy(cStr, "/var/mobile");
  v65 = CFStringCreateWithCString(0, cStr, 0x8000100u);
  if (v65)
  {
    v66 = v65;
    CFDictionarySetValue(v7, kUMUserSessionLibinfoHomeDirKey, v65);
    CFRelease(v66);
  }

  else
  {
    if (qword_1000EB310 != -1)
    {
      sub_100089CEC();
    }

    v67 = qword_1000EB308;
    if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
    {
      v97[0] = 0;
      v68 = sub_1000011A8(1);
      v69 = v67;
      if (os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT))
      {
        v70 = v68;
      }

      else
      {
        v70 = v68 & 0xFFFFFFFE;
      }

      if (v70)
      {
        LOWORD(cf) = 0;
        v71 = _os_log_send_and_compose_impl();

        if (v71)
        {
          sub_100002A8C(v71);
        }
      }

      else
      {

        v71 = 0;
      }

      free(v71);
    }
  }

  if (qword_1000EB310 != -1)
  {
    sub_100089CEC();
  }

  v72 = qword_1000EB308;
  if (os_log_type_enabled(v72, OS_LOG_TYPE_DEFAULT))
  {
    cf = 0;
    v73 = sub_1000011A8(1);
    v74 = v72;
    if (os_log_type_enabled(v74, OS_LOG_TYPE_DEFAULT))
    {
      v75 = v73;
    }

    else
    {
      v75 = v73 & 0xFFFFFFFE;
    }

    if (v75)
    {
      LODWORD(v97[0]) = 136315138;
      *(v97 + 4) = cStr;
      v76 = _os_log_send_and_compose_impl();

      if (v76)
      {
        sub_100002A8C(v76);
      }
    }

    else
    {

      v76 = 0;
    }

    free(v76);
  }

  if (qword_1000EB310 != -1)
  {
    sub_100089CEC();
  }

  v77 = qword_1000EB308;
  if (os_log_type_enabled(v77, OS_LOG_TYPE_DEFAULT))
  {
    v97[0] = 0;
    v78 = sub_1000011A8(1);
    v79 = v77;
    if (os_log_type_enabled(v79, OS_LOG_TYPE_DEFAULT))
    {
      v80 = v78;
    }

    else
    {
      v80 = v78 & 0xFFFFFFFE;
    }

    if (v80)
    {
      LOWORD(cf) = 0;
      v81 = _os_log_send_and_compose_impl();

      if (v81)
      {
        sub_100002A8C(v81);
      }
    }

    else
    {

      v81 = 0;
    }

    free(v81);
  }

  sub_10001FC24(v7, 0);
  if (qword_1000EB310 != -1)
  {
    sub_100089CEC();
  }

  v82 = qword_1000EB308;
  if (os_log_type_enabled(v82, OS_LOG_TYPE_DEFAULT))
  {
    v97[0] = 0;
    v83 = sub_1000011A8(1);
    v84 = v82;
    if (os_log_type_enabled(v84, OS_LOG_TYPE_DEFAULT))
    {
      v85 = v83;
    }

    else
    {
      v85 = v83 & 0xFFFFFFFE;
    }

    if (v85)
    {
      LOWORD(cf) = 0;
      v86 = _os_log_send_and_compose_impl();

      if (v86)
      {
        sub_100002A8C(v86);
      }
    }

    else
    {

      v86 = 0;
    }

    free(v86);
  }

  sub_100018C80();
  if (qword_1000EB320 != -1)
  {
    sub_100089D68();
  }

  v87 = qword_1000EB318;
  if (os_log_type_enabled(v87, OS_LOG_TYPE_DEFAULT))
  {
    v97[0] = 0;
    v88 = sub_1000011A8(1);
    v89 = v87;
    if (os_log_type_enabled(v89, OS_LOG_TYPE_DEFAULT))
    {
      v90 = v88;
    }

    else
    {
      v90 = v88 & 0xFFFFFFFE;
    }

    if (v90)
    {
      LODWORD(cf) = 67109120;
      HIDWORD(cf) = valuePtr;
      v91 = _os_log_send_and_compose_impl();

      if (v91)
      {
        sub_100002A8C(v91);
      }
    }

    else
    {

      v91 = 0;
    }

    free(v91);
  }

  return v7;
}

void sub_10004F5FC(id a1)
{
  qword_1000EB328 = os_log_create(off_1000EA598, "persona");

  _objc_release_x1();
}

void sub_10004F644(uint64_t a1)
{
  if (qword_1000EB320 != -1)
  {
    sub_100089D90();
  }

  v6 = qword_1000EB318;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *&v126.st_dev = 0;
    v7 = sub_1000011A8(0);
    v1 = v6;
    if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
    {
      v8 = v7;
    }

    else
    {
      v8 = v7 & 0xFFFFFFFE;
    }

    if (v8)
    {
      LODWORD(v125[0]) = 67109120;
      HIDWORD(v125[0]) = a1;
      v9 = _os_log_send_and_compose_impl();

      if (v9)
      {
        sub_100002A8C(v9);
      }
    }

    else
    {

      v9 = 0;
    }

    free(v9);
  }

  if (a1 == -1)
  {
    sub_100089EA8();
    goto LABEL_257;
  }

  v10 = sub_10008A2F4(qword_1000EB2E0, a1);
  if (!v10)
  {
LABEL_257:
    sub_100089E90();
LABEL_258:
    sub_100089CEC();
    goto LABEL_46;
  }

  v6 = v10;
  v4 = &off_1000EB000;
  v11 = dword_1000EB5B0;
  v3 = &off_1000EB000;
  v2 = &off_1000EB000;
  if (dword_1000EB5B0 == 1)
  {
    sub_10003E710();
    memset(&v126, 0, sizeof(v126));
    if (!lstat("/private/var/mobile", &v126) && (v126.st_mode & 0xF000) == 0x4000)
    {
      if (sub_100054EFC("/private/var/mobile", 0x80000))
      {
        if (qword_1000EB310 != -1)
        {
          sub_100089CEC();
        }

        v12 = qword_1000EB308;
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          v124 = 0;
          v13 = sub_1000011A8(1);
          v14 = v12;
          if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            v13 &= ~1u;
          }

          if (v13)
          {
            v15 = __error();
            v16 = strerror(*v15);
            LODWORD(v125[0]) = 136315138;
            *(v125 + 4) = v16;
            v17 = _os_log_send_and_compose_impl();

            if (v17)
            {
              sub_100002A8C(v17);
            }
          }

          else
          {

            v17 = 0;
          }

          free(v17);
        }
      }

      if (rmdir("/private/var/mobile"))
      {
        if (qword_1000EB310 != -1)
        {
          sub_100089CEC();
        }

        v18 = qword_1000EB308;
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          v124 = 0;
          v19 = sub_1000011A8(1);
          v20 = v18;
          if (!os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            v19 &= ~1u;
          }

          if (v19)
          {
            v21 = __error();
            v22 = strerror(*v21);
            LODWORD(v125[0]) = 136315138;
            *(v125 + 4) = v22;
            v23 = _os_log_send_and_compose_impl();

            if (v23)
            {
              sub_100002A8C(v23);
            }
          }

          else
          {

            v23 = 0;
          }

          free(v23);
        }
      }
    }

    v11 = dword_1000EB5B0;
  }

  if (v11 == 2)
  {
    v1 = @"/private/var/mobile";
  }

  else
  {
    v1 = 0;
  }

  if (qword_1000EB310 != -1)
  {
    goto LABEL_258;
  }

LABEL_46:
  v24 = v2[97];
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    *&v126.st_dev = 0;
    v25 = sub_1000011A8(1);
    v26 = v24;
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      v27 = v25;
    }

    else
    {
      v27 = v25 & 0xFFFFFFFE;
    }

    if (v27)
    {
      LOWORD(v125[0]) = 0;
      v28 = _os_log_send_and_compose_impl();

      if (v28)
      {
        sub_100002A8C(v28);
      }
    }

    else
    {

      v28 = 0;
    }

    free(v28);
  }

  v29 = [qword_1000EB2D8 unmountVolumeWithSession:v6 mountPath:v1 error:0];
  v30 = v3[98];
  if (v29)
  {
    if (v30 != -1)
    {
      sub_100089CEC();
    }

    v31 = v2[97];
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      *&v126.st_dev = 0;
      v32 = sub_1000011A8(1);
      v31 = v31;
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
        LOWORD(v125[0]) = 0;
        goto LABEL_72;
      }

      goto LABEL_74;
    }
  }

  else
  {
    if (v30 != -1)
    {
      sub_100089CEC();
    }

    v31 = v2[97];
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      *&v126.st_dev = 0;
      v34 = sub_1000011A8(1);
      v31 = v31;
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        v35 = v34;
      }

      else
      {
        v35 = v34 & 0xFFFFFFFE;
      }

      if (v35)
      {
        LOWORD(v125[0]) = 0;
LABEL_72:
        v36 = _os_log_send_and_compose_impl();

        if (v36)
        {
          sub_100002A8C(v36);
        }

        goto LABEL_75;
      }

LABEL_74:

      v36 = 0;
LABEL_75:
      free(v36);
    }
  }

  v37 = sub_100033128(a1);
  v38 = v3[98];
  if (v37)
  {
    if (v38 != -1)
    {
      sub_100089CEC();
    }

    v39 = v2[97];
    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
    {
      *&v126.st_dev = 0;
      v40 = sub_1000011A8(1);
      v39 = v39;
      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
      {
        v41 = v40;
      }

      else
      {
        v41 = v40 & 0xFFFFFFFE;
      }

      if (v41)
      {
        LODWORD(v125[0]) = 67109120;
        HIDWORD(v125[0]) = a1;
        goto LABEL_93;
      }

      goto LABEL_95;
    }
  }

  else
  {
    if (v38 != -1)
    {
      sub_100089CEC();
    }

    v39 = v2[97];
    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
    {
      *&v126.st_dev = 0;
      v42 = sub_1000011A8(1);
      v39 = v39;
      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
      {
        v43 = v42;
      }

      else
      {
        v43 = v42 & 0xFFFFFFFE;
      }

      if (v43)
      {
        LODWORD(v125[0]) = 67109120;
        HIDWORD(v125[0]) = a1;
LABEL_93:
        v44 = _os_log_send_and_compose_impl();

        if (v44)
        {
          sub_100002A8C(v44);
        }

        goto LABEL_96;
      }

LABEL_95:

      v44 = 0;
LABEL_96:
      free(v44);
    }
  }

  v45 = [qword_1000EB2D8 splitUserVolumeEnabled];
  v46 = *(v4 + 364);
  if (a1 != 502 && v45 && v46 == 1)
  {
    v47 = sub_100079590(v6, kUMUserSessionVolumeDeviceNodeKey);
    v48 = v3[98];
    if (v47)
    {
      v49 = v47;
      if (v48 != -1)
      {
        sub_100089CEC();
      }

      v50 = v2[97];
      if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
      {
        v125[0] = 0;
        v51 = sub_1000011A8(1);
        v52 = v50;
        if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
        {
          v53 = v51;
        }

        else
        {
          v53 = v51 & 0xFFFFFFFE;
        }

        if (v53)
        {
          v126.st_dev = 138412546;
          *&v126.st_mode = v49;
          WORD2(v126.st_ino) = 1024;
          *(&v126.st_ino + 6) = a1;
          v54 = _os_log_send_and_compose_impl();

          if (v54)
          {
            sub_100002A8C(v54);
          }
        }

        else
        {

          v54 = 0;
        }

        free(v54);
      }

      v59 = sub_100089A80(qword_1000EB608);
      v123 = 0;
      v60 = [v59 unmapVolume:v49 error:&v123];
      v61 = v123;

      v62 = v3[98];
      if (v60)
      {
        if (v62 != -1)
        {
          sub_100089CEC();
        }

        v55 = v2[97];
        if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
        {
          *&v126.st_dev = 0;
          v63 = sub_1000011A8(1);
          v55 = v55;
          if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
          {
            v64 = v63;
          }

          else
          {
            v64 = v63 & 0xFFFFFFFE;
          }

          if (v64)
          {
            LOWORD(v125[0]) = 0;
            goto LABEL_137;
          }

          goto LABEL_139;
        }
      }

      else
      {
        if (v62 != -1)
        {
          sub_100089CEC();
        }

        v55 = v2[97];
        if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
        {
          v125[0] = 0;
          v65 = sub_1000011A8(1);
          v55 = v55;
          if (!os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
          {
            v65 &= ~1u;
          }

          if (v65)
          {
            v66 = [v61 code];
            v126.st_dev = 134217984;
            *&v126.st_mode = v66;
LABEL_137:
            v67 = _os_log_send_and_compose_impl();

            if (v67)
            {
              sub_100002A8C(v67);
            }

            goto LABEL_140;
          }

LABEL_139:

          v67 = 0;
LABEL_140:
          free(v67);
        }
      }
    }

    else
    {
      if (v48 != -1)
      {
        sub_100089CEC();
      }

      v55 = v2[97];
      if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
      {
        *&v126.st_dev = 0;
        v56 = sub_1000011A8(1);
        v55 = v55;
        if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
        {
          v57 = v56;
        }

        else
        {
          v57 = v56 & 0xFFFFFFFE;
        }

        if (v57)
        {
          LOWORD(v125[0]) = 0;
          v58 = _os_log_send_and_compose_impl();

          if (v58)
          {
            sub_100002A8C(v58);
          }
        }

        else
        {

          v58 = 0;
        }

        free(v58);
      }

      v61 = 0;
    }

    if (v3[98] != -1)
    {
      sub_100089CEC();
    }

    v68 = v2[97];
    if (os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT))
    {
      *&v126.st_dev = 0;
      v69 = sub_1000011A8(1);
      v70 = v68;
      if (os_log_type_enabled(v70, OS_LOG_TYPE_DEFAULT))
      {
        v71 = v69;
      }

      else
      {
        v71 = v69 & 0xFFFFFFFE;
      }

      if (v71)
      {
        LODWORD(v125[0]) = 67109120;
        HIDWORD(v125[0]) = a1;
        v72 = _os_log_send_and_compose_impl();

        if (v72)
        {
          sub_100002A8C(v72);
        }
      }

      else
      {

        v72 = 0;
      }

      free(v72);
    }

    v73 = sub_100089A80(qword_1000EB608);
    v122 = v61;
    v74 = [v73 unloadIdentityFromSession:a1 error:&v122];
    v75 = v122;

    v76 = v3[98];
    if (v74)
    {
      if (v76 != -1)
      {
        sub_100089CEC();
      }

      v77 = v2[97];
      if (!os_log_type_enabled(v77, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_175;
      }

      *&v126.st_dev = 0;
      v78 = sub_1000011A8(1);
      v77 = v77;
      if (os_log_type_enabled(v77, OS_LOG_TYPE_DEFAULT))
      {
        v79 = v78;
      }

      else
      {
        v79 = v78 & 0xFFFFFFFE;
      }

      if (v79)
      {
        LODWORD(v125[0]) = 67109120;
        HIDWORD(v125[0]) = a1;
        goto LABEL_171;
      }
    }

    else
    {
      if (v76 != -1)
      {
        sub_100089CEC();
      }

      v77 = v2[97];
      if (!os_log_type_enabled(v77, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_175;
      }

      v125[0] = 0;
      v80 = sub_1000011A8(1);
      v77 = v77;
      if (!os_log_type_enabled(v77, OS_LOG_TYPE_DEFAULT))
      {
        v80 &= ~1u;
      }

      if (v80)
      {
        v81 = [v75 code];
        v126.st_dev = 67109376;
        *&v126.st_mode = a1;
        LOWORD(v126.st_ino) = 2048;
        *(&v126.st_ino + 2) = v81;
LABEL_171:
        v82 = _os_log_send_and_compose_impl();

        if (v82)
        {
          sub_100002A8C(v82);
        }

        goto LABEL_174;
      }
    }

    v82 = 0;
LABEL_174:
    free(v82);
LABEL_175:

    v46 = *(v4 + 364);
  }

  if (v46 != 1)
  {
    if (![qword_1000EB2D8 splitUserVolumeEnabled])
    {
LABEL_254:
      v119 = sub_10008A4DC(qword_1000EB2E0, a1);
      sub_1000948C8(qword_1000EB2E8, v119);

      goto LABEL_255;
    }

    v83 = sub_100079590(v6, kUMUserSessionVolumeDeviceNodeKey);
    v84 = v3[98];
    if (v83)
    {
      v85 = v83;
      if (v84 != -1)
      {
        sub_100089CEC();
      }

      v86 = v2[97];
      if (os_log_type_enabled(v86, OS_LOG_TYPE_DEFAULT))
      {
        v125[0] = 0;
        v87 = sub_1000011A8(1);
        v88 = v86;
        if (os_log_type_enabled(v88, OS_LOG_TYPE_DEFAULT))
        {
          v89 = v87;
        }

        else
        {
          v89 = v87 & 0xFFFFFFFE;
        }

        if (v89)
        {
          v126.st_dev = 138412546;
          *&v126.st_mode = v85;
          WORD2(v126.st_ino) = 1024;
          *(&v126.st_ino + 6) = a1;
          v90 = _os_log_send_and_compose_impl();

          if (v90)
          {
            sub_100002A8C(v90);
          }
        }

        else
        {

          v90 = 0;
        }

        free(v90);
      }

      v95 = sub_100089A80(qword_1000EB608);
      v121 = 0;
      v96 = [v95 unmapVolume:v85 error:&v121];
      v97 = v121;

      v98 = v3[98];
      if (v96)
      {
        if (v98 != -1)
        {
          sub_100089CEC();
        }

        v91 = v2[97];
        if (os_log_type_enabled(v91, OS_LOG_TYPE_DEFAULT))
        {
          *&v126.st_dev = 0;
          v99 = sub_1000011A8(1);
          v91 = v91;
          if (os_log_type_enabled(v91, OS_LOG_TYPE_DEFAULT))
          {
            v100 = v99;
          }

          else
          {
            v100 = v99 & 0xFFFFFFFE;
          }

          if (v100)
          {
            LOWORD(v125[0]) = 0;
            goto LABEL_215;
          }

          goto LABEL_217;
        }
      }

      else
      {
        if (v98 != -1)
        {
          sub_100089CEC();
        }

        v91 = v2[97];
        if (os_log_type_enabled(v91, OS_LOG_TYPE_DEFAULT))
        {
          v125[0] = 0;
          v101 = sub_1000011A8(1);
          v91 = v91;
          if (!os_log_type_enabled(v91, OS_LOG_TYPE_DEFAULT))
          {
            v101 &= ~1u;
          }

          if (v101)
          {
            v102 = [v97 code];
            v126.st_dev = 134217984;
            *&v126.st_mode = v102;
LABEL_215:
            v103 = _os_log_send_and_compose_impl();

            if (v103)
            {
              sub_100002A8C(v103);
            }

            goto LABEL_218;
          }

LABEL_217:

          v103 = 0;
LABEL_218:
          free(v103);
        }
      }
    }

    else
    {
      if (v84 != -1)
      {
        sub_100089CEC();
      }

      v91 = v2[97];
      if (os_log_type_enabled(v91, OS_LOG_TYPE_DEFAULT))
      {
        *&v126.st_dev = 0;
        v92 = sub_1000011A8(1);
        v91 = v91;
        if (os_log_type_enabled(v91, OS_LOG_TYPE_DEFAULT))
        {
          v93 = v92;
        }

        else
        {
          v93 = v92 & 0xFFFFFFFE;
        }

        if (v93)
        {
          LOWORD(v125[0]) = 0;
          v94 = _os_log_send_and_compose_impl();

          if (v94)
          {
            sub_100002A8C(v94);
          }
        }

        else
        {

          v94 = 0;
        }

        free(v94);
      }

      v97 = 0;
    }

    if (v3[98] != -1)
    {
      sub_100089CEC();
    }

    v104 = v2[97];
    if (os_log_type_enabled(v104, OS_LOG_TYPE_DEFAULT))
    {
      *&v126.st_dev = 0;
      v105 = sub_1000011A8(1);
      v106 = v104;
      if (os_log_type_enabled(v106, OS_LOG_TYPE_DEFAULT))
      {
        v107 = v105;
      }

      else
      {
        v107 = v105 & 0xFFFFFFFE;
      }

      if (v107)
      {
        LODWORD(v125[0]) = 67109120;
        HIDWORD(v125[0]) = a1;
        v108 = _os_log_send_and_compose_impl();

        if (v108)
        {
          sub_100002A8C(v108);
        }
      }

      else
      {

        v108 = 0;
      }

      free(v108);
    }

    v109 = sub_100089A80(qword_1000EB608);
    v120 = v97;
    v110 = [v109 unloadIdentityFromSession:a1 error:&v120];
    v111 = v120;

    v112 = v3[98];
    if (v110)
    {
      if (v112 != -1)
      {
        sub_100089CEC();
      }

      v113 = v2[97];
      if (!os_log_type_enabled(v113, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_253;
      }

      *&v126.st_dev = 0;
      v114 = sub_1000011A8(1);
      v113 = v113;
      if (os_log_type_enabled(v113, OS_LOG_TYPE_DEFAULT))
      {
        v115 = v114;
      }

      else
      {
        v115 = v114 & 0xFFFFFFFE;
      }

      if (v115)
      {
        LODWORD(v125[0]) = 67109120;
        HIDWORD(v125[0]) = a1;
        goto LABEL_249;
      }
    }

    else
    {
      if (v112 != -1)
      {
        sub_100089CEC();
      }

      v113 = v2[97];
      if (!os_log_type_enabled(v113, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_253;
      }

      v125[0] = 0;
      v116 = sub_1000011A8(1);
      v113 = v113;
      if (!os_log_type_enabled(v113, OS_LOG_TYPE_DEFAULT))
      {
        v116 &= ~1u;
      }

      if (v116)
      {
        v117 = [v111 code];
        v126.st_dev = 67109376;
        *&v126.st_mode = a1;
        LOWORD(v126.st_ino) = 2048;
        *(&v126.st_ino + 2) = v117;
LABEL_249:
        v118 = _os_log_send_and_compose_impl();

        if (v118)
        {
          sub_100002A8C(v118);
        }

        goto LABEL_252;
      }
    }

    v118 = 0;
LABEL_252:
    free(v118);
LABEL_253:

    goto LABEL_254;
  }

LABEL_255:
  CFRelease(v6);
}