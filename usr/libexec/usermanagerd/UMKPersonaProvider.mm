@interface UMKPersonaProvider
- (BOOL)allocatePersonaWithInfo:(id)info andPath:(id)path error:(id *)error;
- (BOOL)deallocatePersonaWithID:(unsigned int)d error:(id *)error;
- (id)infoForPersonaWithID:(unsigned int)d error:(id *)error;
- (id)infoForProcessWithPID:(int)d error:(id *)error;
@end

@implementation UMKPersonaProvider

- (BOOL)allocatePersonaWithInfo:(id)info andPath:(id)path error:(id *)error
{
  infoCopy = info;
  pathCopy = path;
  if (error)
  {
    *error = 0;
  }

  memset(v61, 0, 348);
  v9 = sub_100076214(infoCopy, v61);
  if (!LODWORD(v61[0]))
  {
    if (qword_1000EB488 != -1)
    {
      sub_100098624();
    }

    v14 = qword_1000EB480;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v50 = 0;
      v15 = sub_1000011A8(0);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v16 = v15;
      }

      else
      {
        v16 = v15 & 0xFFFFFFFE;
      }

      if (v16)
      {
        LOWORD(v49[0]) = 0;
        LODWORD(v48) = 2;
        v47 = v49;
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

    if (error)
    {
      v33 = NSPOSIXErrorDomain;
      v34 = 22;
LABEL_61:
      [NSError errorWithDomain:v33 code:v34 userInfo:0, v47, v48];
      *error = v35 = 0;
      goto LABEL_82;
    }

LABEL_66:
    v35 = 0;
    goto LABEL_82;
  }

  if (pathCopy)
  {
    if (([pathCopy getCString:&v50 maxLength:1024 encoding:{4, v9}] & 1) == 0)
    {
      if (qword_1000EB488 != -1)
      {
        sub_100098624();
      }

      v23 = qword_1000EB480;
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        v24 = sub_1000011A8(0);
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          v25 = v24;
        }

        else
        {
          v25 = v24 & 0xFFFFFFFE;
        }

        if (v25)
        {
          LODWORD(v49[0]) = 138543362;
          *(v49 + 4) = pathCopy;
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

      if (error)
      {
        *error = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
      }

      goto LABEL_66;
    }

    if (kpersona_palloc())
    {
      v10 = *__error();
      if (qword_1000EB488 != -1)
      {
        sub_100098624();
      }

      v11 = qword_1000EB480;
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v49[0] = 0;
        v12 = sub_1000011A8(0);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          v13 = v12;
        }

        else
        {
          v13 = v12 & 0xFFFFFFFE;
        }

        if (v13)
        {
          LODWORD(v50) = 67110402;
          HIDWORD(v50) = DWORD1(v61[0]);
          v51 = 1024;
          v52 = DWORD2(v61[0]);
          v53 = 2082;
          v54 = &v61[5] + 8;
          v55 = 1024;
          v56 = DWORD2(v61[21]);
          v57 = 2114;
          v58 = pathCopy;
          v59 = 1024;
          v60 = v10;
          LODWORD(v48) = 46;
          v47 = &v50;
          goto LABEL_33;
        }

        goto LABEL_57;
      }

      goto LABEL_59;
    }
  }

  else if (kpersona_alloc())
  {
    v10 = *__error();
    if (qword_1000EB488 != -1)
    {
      sub_100098624();
    }

    v11 = qword_1000EB480;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v49[0] = 0;
      v19 = sub_1000011A8(0);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v20 = v19;
      }

      else
      {
        v20 = v19 & 0xFFFFFFFE;
      }

      if (v20)
      {
        LODWORD(v50) = 67110146;
        HIDWORD(v50) = DWORD1(v61[0]);
        v51 = 1024;
        v52 = DWORD2(v61[0]);
        v53 = 2082;
        v54 = &v61[5] + 8;
        v55 = 1024;
        v56 = DWORD2(v61[21]);
        v57 = 1024;
        LODWORD(v58) = v10;
        LODWORD(v48) = 36;
        v47 = &v50;
LABEL_33:
        v21 = _os_log_send_and_compose_impl();
        v22 = v21;
        if (v21)
        {
          sub_100002A8C(v21);
        }

        goto LABEL_58;
      }

LABEL_57:
      v22 = 0;
LABEL_58:
      free(v22);
    }

LABEL_59:

    if (error)
    {
      v33 = NSPOSIXErrorDomain;
      v34 = v10;
      goto LABEL_61;
    }

    goto LABEL_66;
  }

  if (sub_100001440(infoCopy))
  {
    if (qword_1000EB488 != -1)
    {
      sub_100098624();
    }

    v28 = qword_1000EB480;
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      v49[0] = 0;
      v29 = sub_1000011A8(0);
      if (!os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        v29 &= ~1u;
      }

      if (v29)
      {
        v30 = v28;
        v31 = sub_100001440(infoCopy);
        LODWORD(v50) = 67109376;
        HIDWORD(v50) = v31;
        v51 = 1024;
        v52 = 0;
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

    sub_10008BDA4(infoCopy, 0);
  }

  if (qword_1000EB488 != -1)
  {
    sub_100098624();
  }

  v36 = qword_1000EB480;
  if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
  {
    v49[0] = 0;
    v37 = sub_1000011A8(0);
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
      v39 = v36;
      v40 = sub_100001440(infoCopy);
      v41 = sub_100001434(infoCopy);
      v43 = sub_100096040(infoCopy, v42);
      v44 = sub_100001660(infoCopy);
      LODWORD(v50) = 67109890;
      HIDWORD(v50) = v40;
      v51 = 1024;
      v52 = v41;
      v53 = 2114;
      v54 = v43;
      v55 = 1024;
      v56 = v44;
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

  v35 = 1;
LABEL_82:

  return v35;
}

- (BOOL)deallocatePersonaWithID:(unsigned int)d error:(id *)error
{
  if (error)
  {
    *error = 0;
  }

  v5 = kpersona_dealloc();
  if (v5)
  {
    v6 = *__error();
    if (qword_1000EB488 != -1)
    {
      sub_100098610();
    }

    v7 = qword_1000EB480;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = sub_1000011A8(0);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
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

    if (error)
    {
      *error = [NSError errorWithDomain:NSPOSIXErrorDomain code:v6 userInfo:0];
    }
  }

  else
  {
    if (qword_1000EB488 != -1)
    {
      sub_100098610();
    }

    v12 = qword_1000EB480;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = sub_1000011A8(0);
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
  }

  return v5 == 0;
}

- (id)infoForPersonaWithID:(unsigned int)d error:(id *)error
{
  if (error)
  {
    *error = 0;
  }

  memset(&__src[1], 0, 344);
  __src[0] = 2;
  if (kpersona_info())
  {
    v6 = *__error();
    if (v6 == 3)
    {
      if (qword_1000EB488 != -1)
      {
        sub_100098624();
      }

      v7 = qword_1000EB480;
      if (!os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        goto LABEL_44;
      }

      v33 = 0;
      v8 = sub_1000011A8(0);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v9 = v8;
      }

      else
      {
        v9 = v8 & 0xFFFFFFFE;
      }

      if (v9)
      {
        LODWORD(__dst[0]) = 67109632;
        HIDWORD(__dst[0]) = d;
        LOWORD(__dst[1]) = 1024;
        *(&__dst[1] + 2) = d;
        HIWORD(__dst[1]) = 1024;
        LODWORD(__dst[2]) = 3;
        goto LABEL_31;
      }
    }

    else
    {
      if (qword_1000EB488 != -1)
      {
        sub_100098624();
      }

      v7 = qword_1000EB480;
      if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_44;
      }

      v33 = 0;
      v21 = sub_1000011A8(0);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v22 = v21;
      }

      else
      {
        v22 = v21 & 0xFFFFFFFE;
      }

      if (v22)
      {
        LODWORD(__dst[0]) = 67109632;
        HIDWORD(__dst[0]) = d;
        LOWORD(__dst[1]) = 1024;
        *(&__dst[1] + 2) = d;
        HIWORD(__dst[1]) = 1024;
        LODWORD(__dst[2]) = v6;
LABEL_31:
        v23 = _os_log_send_and_compose_impl();
        v24 = v23;
        if (v23)
        {
          sub_100002A8C(v23);
        }

        goto LABEL_43;
      }
    }

    v24 = 0;
LABEL_43:
    free(v24);
LABEL_44:

    if (error)
    {
      [NSError errorWithDomain:NSPOSIXErrorDomain code:v6 userInfo:0];
      *error = v10 = 0;
    }

    else
    {
      v10 = 0;
    }

    goto LABEL_55;
  }

  memcpy(__dst, __src, 0x15CuLL);
  v10 = sub_100075FA4(UMKPersonaInfo, __dst);
  if (v10)
  {
    if (qword_1000EB488 != -1)
    {
      sub_100098624();
    }

    v11 = qword_1000EB480;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v33 = 0;
      v12 = sub_1000011A8(0);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        v13 = v12;
      }

      else
      {
        v13 = v12 & 0xFFFFFFFE;
      }

      if (v13)
      {
        v14 = v11;
        v15 = sub_100001440(v10);
        v16 = sub_100001434(v10);
        v18 = sub_100096040(v10, v17);
        v19 = sub_100001660(v10);
        LODWORD(__dst[0]) = 67109890;
        HIDWORD(__dst[0]) = v15;
        LOWORD(__dst[1]) = 1024;
        *(&__dst[1] + 2) = v16;
        HIWORD(__dst[1]) = 2114;
        __dst[2] = v18;
        LOWORD(__dst[3]) = 1024;
        *(&__dst[3] + 2) = v19;
        v20 = _os_log_send_and_compose_impl();

        if (v20)
        {
          sub_100002A8C(v20);
        }
      }

      else
      {
        v20 = 0;
      }

      free(v20);
    }

    v30 = v10;
  }

  else
  {
    if (qword_1000EB488 != -1)
    {
      sub_100098624();
    }

    v25 = qword_1000EB480;
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      __dst[0] = 0;
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
        LODWORD(v33) = 67109120;
        HIDWORD(v33) = d;
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

    if (error)
    {
      *error = [NSError errorWithDomain:NSPOSIXErrorDomain code:34 userInfo:0];
    }
  }

LABEL_55:

  return v10;
}

- (id)infoForProcessWithPID:(int)d error:(id *)error
{
  if (error)
  {
    *error = 0;
  }

  memset(&__src[1], 0, 344);
  __src[0] = 2;
  if (kpersona_pidinfo())
  {
    v6 = *__error();
    if (qword_1000EB488 != -1)
    {
      sub_100098624();
    }

    v7 = qword_1000EB480;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v31 = 0;
      v8 = sub_1000011A8(0);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v9 = v8;
      }

      else
      {
        v9 = v8 & 0xFFFFFFFE;
      }

      if (v9)
      {
        LODWORD(__dst[0]) = 67109376;
        HIDWORD(__dst[0]) = d;
        LOWORD(__dst[1]) = 1024;
        *(&__dst[1] + 2) = v6;
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

    if (error)
    {
      [NSError errorWithDomain:NSPOSIXErrorDomain code:v6 userInfo:0];
      *error = v12 = 0;
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    memcpy(__dst, __src, 0x15CuLL);
    v12 = sub_100075FA4(UMKPersonaInfo, __dst);
    if (v12)
    {
      if (qword_1000EB488 != -1)
      {
        sub_100098624();
      }

      v13 = qword_1000EB480;
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        v31 = 0;
        v14 = sub_1000011A8(0);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
        {
          v15 = v14;
        }

        else
        {
          v15 = v14 & 0xFFFFFFFE;
        }

        if (v15)
        {
          v16 = v13;
          v17 = sub_100001440(v12);
          v18 = sub_100001434(v12);
          v20 = sub_100096040(v12, v19);
          v21 = sub_100001660(v12);
          LODWORD(__dst[0]) = 67110146;
          HIDWORD(__dst[0]) = d;
          LOWORD(__dst[1]) = 1024;
          *(&__dst[1] + 2) = v17;
          HIWORD(__dst[1]) = 1024;
          LODWORD(__dst[2]) = v18;
          WORD2(__dst[2]) = 2114;
          *(&__dst[2] + 6) = v20;
          HIWORD(__dst[3]) = 1024;
          LODWORD(__dst[4]) = v21;
          v22 = _os_log_send_and_compose_impl();

          if (v22)
          {
            sub_100002A8C(v22);
          }
        }

        else
        {
          v22 = 0;
        }

        free(v22);
      }

      v28 = v12;
    }

    else
    {
      if (qword_1000EB488 != -1)
      {
        sub_100098624();
      }

      v23 = qword_1000EB480;
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        __dst[0] = 0;
        v24 = sub_1000011A8(0);
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          v25 = v24;
        }

        else
        {
          v25 = v24 & 0xFFFFFFFE;
        }

        if (v25)
        {
          LODWORD(v31) = 67109120;
          HIDWORD(v31) = d;
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

      if (error)
      {
        *error = [NSError errorWithDomain:NSPOSIXErrorDomain code:34 userInfo:0];
      }
    }
  }

  return v12;
}

@end