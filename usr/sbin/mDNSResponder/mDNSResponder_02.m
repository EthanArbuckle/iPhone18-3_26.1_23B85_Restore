void connect_callback(int a1)
{
  v30 = 0u;
  memset(v31, 0, sizeof(v31));
  v28 = 0u;
  v29 = 0u;
  v27 = 0u;
  v26 = 0;
  v17 = 106;
  v1 = accept(a1, &v26, &v17);
  v16 = 1;
  if ((v1 & 0x80000000) == 0)
  {
    v2 = v1;
    if ((setsockopt(v1, 0xFFFF, 4130, &v16, 8u) & 0x80000000) == 0)
    {
      goto LABEL_12;
    }

    v3 = mDNSLogCategory_Default;
    if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
    {
      if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_12;
      }
    }

    else
    {
      v3 = mDNSLogCategory_Default_redacted;
      if (!os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_12;
      }
    }

    v6 = *__error();
    v7 = __error();
    v8 = strerror(*v7);
    *buf = 67109634;
    *&buf[4] = v2;
    *&buf[8] = 1024;
    *&buf[10] = v6;
    *&buf[14] = 2082;
    *&v23 = v8;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%3d: WARNING: setsockopt - SO_NOSIGPIPE %d (%{public}s)", buf, 0x18u);
LABEL_12:
    v9 = fcntl(v2, 3, 0);
    if (fcntl(v2, 4, v9 | 4u))
    {
      my_perror("ERROR: fcntl(sd, F_SETFL, O_NONBLOCK) - aborting client");
      close(v2);
      return;
    }

    v10 = NewRequest();
    *(v10 + 291) = 1;
    *(v10 + 46) = v2;
    *(v10 + 48) = v2;
    add = atomic_fetch_add(&dnssd_server_get_new_request_id_s_next_id, 1u);
    *(v10 + 51) = 0;
    *(v10 + 52) = 0;
    *(v10 + 50) = add;
    set_peer_pid(v10);
    v24 = 0u;
    memset(v25, 0, sizeof(v25));
    *buf = 0u;
    v23 = 0u;
    v15 = 76;
    if (getsockopt(v2, 0, 1, buf, &v15) < 0 || *buf)
    {
      my_perror("ERROR: getsockopt, LOCAL_PEERCRED");
    }

    else
    {
      *(v10 + 49) = *&buf[4];
    }

    v12 = mDNSLogCategory_Default;
    if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
    {
      if (os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEBUG))
      {
LABEL_23:
        v13 = *(v10 + 46);
        v14 = *(v10 + 49);
        *v18 = 67109376;
        v19 = v13;
        v20 = 1024;
        v21 = v14;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "%3d: connect_callback: Adding FD for uid %u", v18, 0xEu);
      }
    }

    else
    {
      v12 = mDNSLogCategory_Default_redacted;
      if (os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_23;
      }
    }

    udsSupportAddFDToEventLoop(v2, request_callback, v10);
    return;
  }

  if (*__error() != 35)
  {
    v4 = my_throttled_perror_uds_throttle_count++;
    HIDWORD(v5) = 652835029 * v4 + 17179868;
    LODWORD(v5) = HIDWORD(v5);
    if ((v5 >> 1) <= 0x10624DC)
    {
      my_perror("ERROR: accept");
    }
  }
}

void *NewRequest()
{
  result = malloc_type_calloc(1uLL, 0x128uLL, 0x7E67FF67uLL);
  if (result)
  {
    result[13] = result + 12;
    v1 = &all_requests;
    do
    {
      v2 = v1;
      v3 = *v1;
      v1 = (*v1 + 16);
    }

    while (v3);
    *v2 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void request_callback()
{
  __chkstk_darwin();
  v7 = v0;
  v8 = 0;
  v9 = *(v0 + 291);
  while (2)
  {
    if (v9 == 1)
    {
      v13 = *(v7 + 53);
      if (v13 > 0x1B)
      {
        goto LABEL_19;
      }

      v14 = recv(*(v7 + 46), v7 + v13 + 216, 28 - v13, 0);
      if (!v14)
      {
        v1142 = 4;
LABEL_1947:
        *(v7 + 291) = v1142;
        goto LABEL_1948;
      }

      if (v14 < 0)
      {
LABEL_28:
        v29 = __error();
        v8 = 0;
        if (*v29 != 35)
        {
          v30 = __error();
          v8 = 0;
          if (*v30 != 4)
          {
            v1144 = mDNSLogCategory_Default;
            if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
            {
              if (os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_ERROR))
              {
LABEL_1939:
                v1148 = *(v7 + 50);
                v1149 = *__error();
                v1150 = __error();
                v1151 = strerror(*v1150);
                v1277[0].st_dev = 67109634;
                *&v1277[0].st_mode = v1148;
                LOWORD(v1277[0].st_ino) = 1024;
                *(&v1277[0].st_ino + 2) = v1149;
                HIWORD(v1277[0].st_ino) = 2082;
                *&v1277[0].st_uid = v1151;
                v1133 = "[R%u] ERROR: read_msg errno %d (%{public}s)";
                v1138 = v1144;
                v1139 = 24;
                goto LABEL_1945;
              }
            }

            else
            {
              v1144 = mDNSLogCategory_Default_redacted;
              if (os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_1939;
              }
            }

LABEL_1946:
            v1142 = 3;
            goto LABEL_1947;
          }
        }

LABEL_120:
        v10 = *(v7 + 291);
        goto LABEL_121;
      }

      v15 = *(v7 + 53) + v14;
      *(v7 + 53) = v15;
      if (v15 >= 0x1D)
      {
        v1130 = mDNSLogCategory_Default;
        if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
        {
          if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_1946;
          }

          v1145 = *(v7 + 50);
          v1277[0].st_dev = 67109120;
          *&v1277[0].st_mode = v1145;
          v1133 = "[R%u] ERROR: read_msg - read too many header bytes";
        }

        else
        {
          v1130 = mDNSLogCategory_Default_redacted;
          if (!os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_1946;
          }

          v1143 = *(v7 + 50);
          v1277[0].st_dev = 67109120;
          *&v1277[0].st_mode = v1143;
          v1133 = "[R%u] ERROR: read_msg - read too many header bytes";
        }

        goto LABEL_1916;
      }

      v8 = 0;
      if (v15 != 28)
      {
        goto LABEL_120;
      }

      v16 = vrev32q_s8(*(v7 + 27));
      *(v7 + 27) = v16;
      *(v7 + 60) = bswap32(*(v7 + 60));
      v17 = v16.i32[0];
      if (v16.i32[0] == 1)
      {
        v18 = v16.u32[1];
        if (v16.i32[1] < 0x11171u)
        {
          v19 = malloc_type_calloc(1uLL, (v16.i32[1] + 5), 0xF83C4640uLL);
          if (!v19)
          {
            goto LABEL_1950;
          }

          v7[9] = v19;
          v7[10] = v19;
          v7[11] = &v19[*(v7 + 55)];
          LODWORD(v13) = *(v7 + 53);
          v8 = 0;
LABEL_19:
          if (v13 != 28)
          {
            goto LABEL_120;
          }

          v20 = v7[8];
          v21 = *(v7 + 55);
          if (v21 > v20)
          {
            *buf = v7[9] + v20;
            *&buf[8] = v21 - v20;
            *(&v1277[0].st_rdev + 1) = 0;
            memset(__src, 0, 28);
            *&v1277[0].st_dev = 0;
            v1277[0].st_ino = 0;
            *&v1277[0].st_uid = buf;
            v1277[0].st_rdev = 1;
            v1277[0].st_atimespec.tv_sec = __src;
            v1277[0].st_atimespec.tv_nsec = 28;
            v22 = recvmsg(*(v7 + 46), v1277, 0);
            if (!v22)
            {
              v10 = 4;
              goto LABEL_36;
            }

            if (v22 < 0)
            {
              goto LABEL_28;
            }

            v20 = v7[8] + v22;
            v7[8] = v20;
            v21 = *(v7 + 55);
            if (v20 > v21)
            {
              v23 = mDNSLogCategory_Default;
              if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
              {
                if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_35;
                }
              }

              else
              {
                v23 = mDNSLogCategory_Default_redacted;
                if (!os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_35;
                }
              }

              v24 = *(v7 + 50);
              *&v1279[0].sa_len = 67109120;
              *&v1279[0].sa_data[2] = v24;
              v25 = v1279;
              v26 = v23;
              v27 = OS_LOG_TYPE_ERROR;
              v28 = "[R%u] ERROR: read_msg - read too many data bytes";
LABEL_33:
              v32 = 8;
LABEL_34:
              _os_log_impl(&_mh_execute_header, v26, v27, v28, &v25->sa_len, v32);
              goto LABEL_35;
            }

            if ((v7[28] & 4) == 0 && LODWORD(v1277[0].st_atimespec.tv_nsec) >= 0xC)
            {
              if (v1277[0].st_atimespec.tv_sec)
              {
                if (*(v1277[0].st_atimespec.tv_sec + 4) == 0xFFFF && *(v1277[0].st_atimespec.tv_sec + 8) == 1)
                {
                  v33 = *(v1277[0].st_atimespec.tv_sec + 12);
                  *(v7 + 48) = v33;
                  if (v20 < v21)
                  {
                    v34 = mDNSLogCategory_Default;
                    if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
                    {
                      if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEBUG))
                      {
                        goto LABEL_35;
                      }
                    }

                    else
                    {
                      v34 = mDNSLogCategory_Default_redacted;
                      if (!os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEBUG))
                      {
                        goto LABEL_35;
                      }
                    }

                    v68 = *(v7 + 50);
                    v69 = *(v7 + 47);
                    *&v1279[0].sa_len = 67110402;
                    *&v1279[0].sa_data[2] = v68;
                    *&v1279[0].sa_data[6] = 1024;
                    *&v1279[0].sa_data[8] = v69;
                    *&v1279[0].sa_data[12] = 2082;
                    *&v1279[1].sa_len = v7 + 32;
                    *&v1279[1].sa_data[6] = 1024;
                    *&v1279[1].sa_data[8] = v33;
                    *&v1279[1].sa_data[12] = 2048;
                    *&v1279[2].sa_len = v20;
                    *&v1279[2].sa_data[6] = 1024;
                    *&v1279[2].sa_data[8] = v21;
                    v25 = v1279;
                    v26 = v34;
                    v27 = OS_LOG_TYPE_DEBUG;
                    v28 = "[R%u] Client(PID [%d](%{public}s)) sent result code socket %d via SCM_RIGHTS with req->data_bytes %lu < req->hdr.datalen %u";
                    v32 = 46;
                    goto LABEL_34;
                  }
                }
              }
            }

            v8 = 0;
            if (*(v7 + 53) != 28)
            {
              goto LABEL_120;
            }
          }

          if (v20 != v21)
          {
            goto LABEL_120;
          }

          if ((v7[28] & 4) != 0 || !v7[14] || *(v7 + 57) == 63)
          {
LABEL_53:
            *(v7 + 291) = 2;
            goto LABEL_122;
          }

          *(v1281 + 10) = v8;
          v1281[0] = v8;
          v1280[1] = v8;
          v1280[0] = v8;
          v1279[2] = v8;
          v1279[1] = v8;
          v1279[0] = v8;
          v1224.tv_sec = 0;
          v1223 = v8;
          v1222[1] = v8;
          v1222[0] = v8;
          *&__src[8] = v8;
          *&__src[4] = v8;
          *__src = v8;
          if (v7[10])
          {
            v35 = v7[11];
            v36 = __src;
            while (1)
            {
              v37 = v7[10];
              if (v37 >= v35 || v36 >= &v1224.tv_nsec)
              {
                break;
              }

              v7[10] = v37 + 1;
              v39 = *v37;
              *v36 = v39;
              v36 = (v36 + 1);
              if (!v39)
              {
                goto LABEL_65;
              }
            }

            *(v36 - (v36 == &v1224.tv_nsec)) = 0;
            v7[10] = 0;
          }

LABEL_65:
          v40 = 0;
          *(v1281 + 10) = v8;
          v1281[0] = v8;
          v1280[1] = v8;
          v1280[0] = v8;
          v1279[2] = v8;
          v1279[0] = v8;
          v1279[1] = v8;
          v1279[0].sa_family = 1;
          while (1)
          {
            v41 = *(__src + v40);
            v1279[0].sa_data[v40] = v41;
            if (!v41)
            {
              break;
            }

            if (++v40 == 103)
            {
              BYTE9(v1281[1]) = 0;
              break;
            }
          }

          if (!LOBYTE(__src[0]))
          {
            v43 = *(v7 + 48);
            if (v43 == *(v7 + 46))
            {
              v44 = mDNSLogCategory_Default;
              if (mDNS_SensitiveLoggingEnableCount)
              {
                v45 = mDNSLogCategory_Default == mDNSLogCategory_State;
              }

              else
              {
                v45 = 1;
              }

              if (v45)
              {
                if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_119;
                }
              }

              else
              {
                v44 = mDNSLogCategory_Default_redacted;
                if (!os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_119;
                }
              }

              v59 = *(v7 + 50);
              v1277[0].st_dev = 67109120;
              *&v1277[0].st_mode = v59;
              v54 = v1277;
              v55 = v44;
              v56 = "[R%u] read_msg: ERROR failed to get errsd via SCM_RIGHTS";
              v57 = 8;
              goto LABEL_118;
            }

LABEL_81:
            v1153 = fcntl(v43, 3, 0, v1154, v1158, v1159, v1161) | 4;
            if (!fcntl(v43, 4))
            {
              v8 = 0;
              goto LABEL_53;
            }

            v46 = mDNSLogCategory_Default;
            if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
            {
              if (os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_ERROR))
              {
LABEL_94:
                v50 = *(v7 + 50);
                v51 = *__error();
                v52 = __error();
                v53 = strerror(*v52);
                v1277[0].st_dev = 67109634;
                *&v1277[0].st_mode = v50;
                LOWORD(v1277[0].st_ino) = 1024;
                *(&v1277[0].st_ino + 2) = v51;
                HIWORD(v1277[0].st_ino) = 2082;
                *&v1277[0].st_uid = v53;
                v54 = v1277;
                v55 = v46;
                v56 = "[R%u] ERROR: could not set control socket to non-blocking mode errno %d (%{public}s)";
                v57 = 24;
LABEL_118:
                _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_ERROR, v56, v54, v57);
              }
            }

            else
            {
              v46 = mDNSLogCategory_Default_redacted;
              if (os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_94;
              }
            }

LABEL_119:
            *(v7 + 291) = 3;
            v8 = 0;
            goto LABEL_120;
          }

          v42 = socket(1, 1, 0);
          *(v7 + 48) = v42;
          if (v42 < 0)
          {
            v47 = my_throttled_perror_uds_throttle_count++;
            HIDWORD(v48) = 652835029 * v47 + 17179868;
            LODWORD(v48) = HIDWORD(v48);
            if ((v48 >> 1) <= 0x10624DC)
            {
              my_perror("ERROR: socket");
            }

            goto LABEL_119;
          }

          if ((connect(v42, v1279, 0x6Au) & 0x80000000) == 0)
          {
            v43 = *(v7 + 48);
            goto LABEL_81;
          }

          memset(v1277, 0, 144);
          v49 = mDNSLogCategory_Default;
          if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
          {
            if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_99;
            }
          }

          else
          {
            v49 = mDNSLogCategory_Default_redacted;
            if (!os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_99;
            }
          }

          v60 = *(v7 + 50);
          v61 = *__error();
          v62 = __error();
          v63 = strerror(*v62);
          *buf = 67109890;
          *&buf[4] = v60;
          *&buf[8] = 2082;
          *&buf[10] = v1279[0].sa_data;
          *&buf[18] = 1024;
          *&buf[20] = v61;
          *&buf[24] = 2082;
          *&buf[26] = v63;
          _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_ERROR, "[R%u] read_msg: Couldn't connect to error return path socket %{public}s errno %d (%{public}s)", buf, 0x22u);
LABEL_99:
          v64 = stat(v1279[0].sa_data, v1277);
          v65 = mDNSLogCategory_Default;
          if (mDNS_SensitiveLoggingEnableCount)
          {
            v66 = mDNSLogCategory_Default == mDNSLogCategory_State;
          }

          else
          {
            v66 = 1;
          }

          v67 = v66;
          if (v64 < 0)
          {
            if (v67)
            {
              if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_119;
              }
            }

            else
            {
              v65 = mDNSLogCategory_Default_redacted;
              if (!os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_119;
              }
            }

            v71 = *(v7 + 50);
            v72 = *__error();
            v73 = __error();
            v74 = strerror(*v73);
            *buf = 67109890;
            *&buf[4] = v71;
            *&buf[8] = 2082;
            *&buf[10] = v1279[0].sa_data;
            *&buf[18] = 1024;
            *&buf[20] = v72;
            *&buf[24] = 2082;
            *&buf[26] = v74;
            v54 = buf;
            v55 = v65;
            v56 = "[R%u] read_msg: stat failed %{public}s errno %d (%{public}s)";
            v57 = 34;
            goto LABEL_118;
          }

          if (v67)
          {
            if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_119;
            }
          }

          else
          {
            v65 = mDNSLogCategory_Default_redacted;
            if (!os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_119;
            }
          }

          v70 = *(v7 + 50);
          *buf = 67110146;
          *&buf[4] = v70;
          *&buf[8] = 2082;
          *&buf[10] = v1279[0].sa_data;
          *&buf[18] = 1024;
          *&buf[20] = v1277[0].st_mode;
          *&buf[24] = 1024;
          *&buf[26] = v1277[0].st_uid;
          *&buf[30] = 1024;
          *&buf[32] = v1277[0].st_gid;
          v54 = buf;
          v55 = v65;
          v56 = "[R%u] read_msg: file %{public}s mode %o (octal) uid %u gid %u";
          v57 = 36;
          goto LABEL_118;
        }

        v1146 = mDNSLogCategory_Default;
        if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
        {
          if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_1946;
          }
        }

        else
        {
          v1146 = mDNSLogCategory_Default_redacted;
          if (!os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_1946;
          }
        }

        v1152 = *(v7 + 50);
        v1277[0].st_dev = 67109632;
        *&v1277[0].st_mode = v1152;
        LOWORD(v1277[0].st_ino) = 1024;
        *(&v1277[0].st_ino + 2) = v18;
        HIWORD(v1277[0].st_ino) = 1024;
        v1277[0].st_uid = v18;
        v1133 = "[R%u] ERROR: read_msg: hdr.datalen %u (0x%X) > 70000";
      }

      else
      {
        v1146 = mDNSLogCategory_Default;
        if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
        {
          if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_1946;
          }
        }

        else
        {
          v1146 = mDNSLogCategory_Default_redacted;
          if (!os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_1946;
          }
        }

        v1147 = *(v7 + 50);
        v1277[0].st_dev = 67109632;
        *&v1277[0].st_mode = v1147;
        LOWORD(v1277[0].st_ino) = 1024;
        *(&v1277[0].st_ino + 2) = v17;
        HIWORD(v1277[0].st_ino) = 1024;
        v1277[0].st_uid = 1;
        v1133 = "[R%u] ERROR: client version 0x%08X daemon version 0x%08X";
      }

      v1138 = v1146;
      v1139 = 20;
      goto LABEL_1945;
    }

    if (v9 != 2)
    {
      if (v9 - 3 > 1)
      {
        v1134 = mDNSLogCategory_Default;
        if (mDNS_SensitiveLoggingEnableCount)
        {
          v1135 = mDNSLogCategory_Default == mDNSLogCategory_State;
        }

        else
        {
          v1135 = 1;
        }

        if (v1135)
        {
          if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_1946;
          }
        }

        else
        {
          v1134 = mDNSLogCategory_Default_redacted;
          if (!os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_1946;
          }
        }

        v1141 = *(v7 + 50);
        v1277[0].st_dev = 67109376;
        *&v1277[0].st_mode = v1141;
        LOWORD(v1277[0].st_ino) = 1024;
        *(&v1277[0].st_ino + 2) = v9;
        v1133 = "[R%u] ERROR: read_msg called with invalid transfer state (%d)";
        v1138 = v1134;
        v1139 = 14;
LABEL_1945:
        _os_log_impl(&_mh_execute_header, v1138, OS_LOG_TYPE_ERROR, v1133, v1277, v1139);
        goto LABEL_1946;
      }

      v1130 = mDNSLogCategory_Default;
      if (mDNS_SensitiveLoggingEnableCount)
      {
        v1131 = mDNSLogCategory_Default == mDNSLogCategory_State;
      }

      else
      {
        v1131 = 1;
      }

      if (v1131)
      {
        if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_1946;
        }

        v1132 = *(v7 + 50);
        v1277[0].st_dev = 67109120;
        *&v1277[0].st_mode = v1132;
        v1133 = "[R%u] ERROR: read_msg called with transfer state terminated or error";
      }

      else
      {
        v1130 = mDNSLogCategory_Default_redacted;
        if (!os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_1946;
        }

        v1137 = *(v7 + 50);
        v1277[0].st_dev = 67109120;
        *&v1277[0].st_mode = v1137;
        v1133 = "[R%u] ERROR: read_msg called with transfer state terminated or error";
      }

LABEL_1916:
      v1138 = v1130;
      v1139 = 8;
      goto LABEL_1945;
    }

    *&v1279[0].sa_len = 0;
    v10 = 4;
    v11 = recv(*(v7 + 46), v1279, 4uLL, 0);
    if (v11)
    {
      if ((v11 & 0x8000000000000000) == 0)
      {
        v12 = mDNSLogCategory_Default;
        if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
        {
          if (os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_ERROR))
          {
LABEL_32:
            v31 = *(v7 + 50);
            v1277[0].st_dev = 67109120;
            *&v1277[0].st_mode = v31;
            v25 = v1277;
            v26 = v12;
            v27 = OS_LOG_TYPE_ERROR;
            v28 = "[R%u] ERROR: read data from a completed request";
            goto LABEL_33;
          }
        }

        else
        {
          v12 = mDNSLogCategory_Default_redacted;
          if (os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_32;
          }
        }

LABEL_35:
        v10 = 3;
        goto LABEL_36;
      }

      goto LABEL_28;
    }

LABEL_36:
    v8 = 0;
    *(v7 + 291) = v10;
LABEL_121:
    if (v10 == 2)
    {
LABEL_122:
      v75 = *(v7 + 57);
      v76 = 4;
      switch(v75)
      {
        case 1:
          goto LABEL_127;
        case 2:
          v76 = 19;
          goto LABEL_137;
        case 3:
        case 19:
          goto LABEL_137;
        case 4:
          v76 = 8;
          goto LABEL_137;
        case 5:
          v76 = 16;
          goto LABEL_137;
        case 6:
        case 11:
          v76 = 10;
          goto LABEL_137;
        case 7:
        case 18:
          v76 = 11;
          goto LABEL_137;
        case 8:
        case 15:
          v76 = 13;
          goto LABEL_137;
        case 9:
          v76 = 15;
          goto LABEL_137;
        case 10:
          v76 = 12;
          goto LABEL_137;
        case 12:
          v76 = 5;
          goto LABEL_137;
        case 13:
          v76 = 2;
          goto LABEL_137;
        case 14:
          v76 = 20;
          goto LABEL_137;
        case 16:
        case 17:
          goto LABEL_128;
        default:
          if (v75 == 63)
          {
LABEL_127:
            v76 = 0;
          }

          else
          {
LABEL_128:
            v1154 = *(v7 + 47);
            v1158 = (v7 + 32);
            LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "request_callback: ERROR: validate_message - unsupported req type: %d PID[%d][%s]", v2, v3, v4, v5, v6, v75);
            v8 = 0;
            v76 = -1;
          }

LABEL_137:
          v77 = v7[8];
          if (v76 > v77)
          {
            v1160 = *(v7 + 47);
            v1156 = *(v7 + 57);
            LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "request_callback: Invalid message %d bytes; min for %d is %d PID[%d][%s]", v2, v3, v4, v5, v6, v77);
          }

          else
          {
            v78 = *(v7 + 57);
            if (v78 > 0x3F || ((1 << v78) & 0x8000000000000C0CLL) == 0)
            {
              if (!v7[14])
              {
LABEL_143:
                v79 = v7;
                goto LABEL_144;
              }

LABEL_141:
              if (v78 <= 0x3F && ((1 << v78) & 0x8000000000000C0CLL) != 0)
              {
                goto LABEL_143;
              }

              v79 = NewRequest();
              v79[3] = v7;
              *(v79 + 46) = *(v7 + 46);
              v79[24] = v7[24];
              v89 = *(v7 + 27);
              *(v79 + 228) = *(v7 + 228);
              *(v79 + 27) = v89;
              *(v79 + 9) = *(v7 + 9);
              v79[11] = v7[11];
              add = atomic_fetch_add(&dnssd_server_get_new_request_id_s_next_id, 1u);
              *(v79 + 51) = 0;
              *(v79 + 52) = 0;
              *(v79 + 50) = add;
              v91 = v7[4];
              if (v91)
              {
                os_retain(v91);
              }

              v92 = v79[4];
              if (v92)
              {
                os_release(v92);
              }

              v79[4] = v7[4];
              if (*(v7 + 288))
              {
                *(v79 + 288) = 1;
                *(v79 + 17) = *(v7 + 17);
              }

              else
              {
                v98 = *(v7 + 47);
                if (v98)
                {
                  *(v79 + 47) = v98;
                  v99 = v79 + 32;
                  v100 = (v7 + 32);
                  v101 = 16;
                  v8 = 0;
                  while (1)
                  {
                    v102 = *v100;
                    *v99 = v102;
                    if (!v102)
                    {
                      break;
                    }

                    ++v99;
                    ++v100;
                    if (--v101 <= 1)
                    {
                      *v99 = 0;
                      break;
                    }
                  }

LABEL_144:
                  if (v79[28])
                  {
                    *(v79 + 292) = 1;
                  }

                  if (dword_10016D264)
                  {
                    v80 = *(v79 + 57);
                    if (v80 != 63 && v80 != 13)
                    {
                      updated = -65563;
                      goto LABEL_1185;
                    }
                  }

                  if (v79[4])
                  {
                    goto LABEL_153;
                  }

                  v84 = *(v79 + 46);
                  *&v1277[0].st_uid = v8;
                  *&v1277[0].st_dev = v8;
                  __src[0] = 32;
                  if (!getsockopt(v84, 0, 6, v1277, __src))
                  {
LABEL_161:
                    v1279[0] = *&v1277[0].st_dev;
                    v1279[1] = *&v1277[0].st_uid;
                    v86 = mdns_audit_token_create(v1279);
                    v79[4] = v86;
                    v8 = 0;
                    if (!v86)
                    {
                      v87 = mDNSLogCategory_Default;
                      if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
                      {
                        if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_FAULT))
                        {
                          goto LABEL_427;
                        }
                      }

                      else
                      {
                        v87 = mDNSLogCategory_Default_redacted;
                        if (!os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_FAULT))
                        {
                          goto LABEL_427;
                        }
                      }

                      v278 = *(v79 + 50);
                      v279 = *(v79 + 47);
                      v1277[0].st_dev = 67109634;
                      *&v1277[0].st_mode = v278;
                      LOWORD(v1277[0].st_ino) = 2048;
                      *(&v1277[0].st_ino + 2) = v279;
                      HIWORD(v1277[0].st_uid) = 2082;
                      *&v1277[0].st_gid = v79 + 32;
                      _os_log_impl(&_mh_execute_header, v87, OS_LOG_TYPE_FAULT, "[R%u] Failed to create peer audit token -- client pid: %lld (%{public}s)", v1277, 0x1Cu);
                      goto LABEL_427;
                    }

                    goto LABEL_153;
                  }

                  if (*__error())
                  {
                    v85 = *__error();
                    if (!v85)
                    {
                      goto LABEL_161;
                    }
                  }

                  else
                  {
                    v85 = -6700;
                  }

                  v93 = mDNSLogCategory_Default;
                  if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
                  {
                    v95 = os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_ERROR);
                    v8 = 0;
                    if (v95)
                    {
LABEL_181:
                      v96 = *(v79 + 50);
                      v97 = *(v79 + 47);
                      v1277[0].st_dev = 67109890;
                      *&v1277[0].st_mode = v96;
                      LOWORD(v1277[0].st_ino) = 2048;
                      *(&v1277[0].st_ino + 2) = v85;
                      HIWORD(v1277[0].st_uid) = 2048;
                      *&v1277[0].st_gid = v97;
                      *(&v1277[0].st_rdev + 2) = 2082;
                      *(&v1277[0].st_rdev + 6) = v79 + 32;
                      _os_log_impl(&_mh_execute_header, v93, OS_LOG_TYPE_ERROR, "[R%u] Failed to get peer audit token -- error: %ld, client pid: %lld (%{public}s)", v1277, 0x26u);
                      v8 = 0;
                    }
                  }

                  else
                  {
                    v93 = mDNSLogCategory_Default_redacted;
                    v94 = os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_ERROR);
                    v8 = 0;
                    if (v94)
                    {
                      goto LABEL_181;
                    }
                  }

LABEL_153:
                  v82 = *(v79 + 57);
                  switch(v82)
                  {
                    case 1:
                      v83 = mDNSLogCategory_Default;
                      if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
                      {
                        if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT))
                        {
                          goto LABEL_454;
                        }
                      }

                      else
                      {
                        v83 = mDNSLogCategory_Default_redacted;
                        if (!os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
                        {
                          goto LABEL_454;
                        }
                      }

                      v306 = *(v79 + 50);
                      v307 = *(v79 + 47);
                      v1277[0].st_dev = 67109634;
                      *&v1277[0].st_mode = v306;
                      LOWORD(v1277[0].st_ino) = 1024;
                      *(&v1277[0].st_ino + 2) = v307;
                      HIWORD(v1277[0].st_ino) = 2082;
                      *&v1277[0].st_uid = v79 + 32;
                      _os_log_impl(&_mh_execute_header, v83, OS_LOG_TYPE_DEFAULT, "[R%u] DNSServiceCreateConnection START PID[%d](%{public}s)", v1277, 0x18u);
LABEL_454:
                      updated = 0;
                      v308 = connection_termination;
                      goto LABEL_455;
                    case 2:
                      if (v79[14] != connection_termination)
                      {
                        LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "%3d: DNSServiceRegisterRecord(not a shared connection ref)", v2, v3, v4, v5, v6, *(v79 + 46));
                        goto LABEL_1184;
                      }

                      rr_from_ipc_msg = read_rr_from_ipc_msg(v79, 1, 1);
                      LODWORD(v1220[0]) = 0;
                      *v1203 = 0;
                      service_attr_tsr_params = get_service_attr_tsr_params(v79, v1220, v1203);
                      updated = -65540;
                      if (!rr_from_ipc_msg)
                      {
                        goto LABEL_1185;
                      }

                      v314 = service_attr_tsr_params;
                      if (service_attr_tsr_params)
                      {
                        v315 = v1220[0];
                        v1277[0].st_ino = 0;
                        *&v1277[0].st_dev = 0;
                        clock_gettime(_CLOCK_MONOTONIC_RAW, v1277);
                        if (v315 > 0x93A80)
                        {
                          v316 = mDNSLogCategory_mDNS;
                          if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_mDNS == mDNSLogCategory_State)
                          {
                            updated = -65540;
                            if (!os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_ERROR))
                            {
                              goto LABEL_1185;
                            }

                            v317 = *(rr_from_ipc_msg + 5);
                            if (v317)
                            {
                              v593 = *(rr_from_ipc_msg + 5);
                              while (1)
                              {
                                if (!v593 || (v594 = *v593, v594 > 0x3F))
                                {
LABEL_954:
                                  v320 = 257;
                                  goto LABEL_1350;
                                }

                                if (!*v593)
                                {
                                  break;
                                }

                                v593 += v594 + 1;
                                if (&v593[-v317] >= 256)
                                {
                                  goto LABEL_954;
                                }
                              }

                              v320 = (v593 - v317 + 1);
                            }

                            else
                            {
                              v320 = 0;
                            }
                          }

                          else
                          {
                            v316 = mDNSLogCategory_mDNS_redacted;
                            updated = -65540;
                            if (!os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_ERROR))
                            {
                              goto LABEL_1185;
                            }

                            v317 = *(rr_from_ipc_msg + 5);
                            if (v317)
                            {
                              v318 = *(rr_from_ipc_msg + 5);
                              while (1)
                              {
                                if (!v318 || (v319 = *v318, v319 > 0x3F))
                                {
LABEL_483:
                                  v320 = 257;
                                  goto LABEL_1350;
                                }

                                if (!*v318)
                                {
                                  break;
                                }

                                v318 += v319 + 1;
                                if (&v318[-v317] >= 256)
                                {
                                  goto LABEL_483;
                                }
                              }

                              v320 = (v318 - v317 + 1);
                            }

                            else
                            {
                              v320 = 0;
                            }
                          }

LABEL_1350:
                          v1277[0].st_dev = 67110147;
                          *&v1277[0].st_mode = v1220[0];
                          v1277[0].st_ino = 0x87000093A800400;
                          *&v1277[0].st_uid = 1752392040;
                          LOWORD(v1277[0].st_rdev) = 1040;
                          *(&v1277[0].st_rdev + 2) = v320;
                          *(&v1277[0].st_rdev + 3) = 2101;
                          v1277[0].st_atimespec.tv_sec = v317;
                          v187 = v1277;
                          v188 = v316;
                          v189 = OS_LOG_TYPE_ERROR;
                          v190 = "tsrTimestamp[%u] out of range (%d) on TSR for %{sensitive, mask.hash, mdnsresponder:domain_name}.*P";
                          v651 = 40;
                          goto LABEL_1056;
                        }

                        v500 = v1277[0].st_dev - v315;
                      }

                      else
                      {
                        v500 = 0;
                      }

                      v507 = mDNSGetTSRForAuthRecordNamed(xmmword_100170360, *(rr_from_ipc_msg + 5), *(rr_from_ipc_msg + 6));
                      v513 = v507;
                      *(rr_from_ipc_msg + 12) = *(v79 + 46);
                      v514 = v1220[0];
                      if (!v314 && !v507)
                      {
                        goto LABEL_827;
                      }

                      *&v1279[0].sa_len = v1220[0];
                      *&v1279[0].sa_data[2] = *v1203;
                      if (v314)
                      {
                        v516 = v1279;
                      }

                      else
                      {
                        v516 = 0;
                      }

                      v517 = conflictWithAuthRecordsOrFlush(rr_from_ipc_msg, v516, v507, v508, v509, v510, v511, v512);
                      if (v517 > 1)
                      {
                        if (v517 != 3)
                        {
                          v624 = mDNSLogCategory_mDNS;
                          if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_mDNS == mDNSLogCategory_State)
                          {
                            updated = -65548;
                            if (!os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_DEFAULT))
                            {
                              goto LABEL_1174;
                            }
                          }

                          else
                          {
                            v624 = mDNSLogCategory_mDNS_redacted;
                            updated = -65548;
                            if (!os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEFAULT))
                            {
                              goto LABEL_1174;
                            }
                          }

                          GetRRDisplayString_rdb(rr_from_ipc_msg + 8, (*(rr_from_ipc_msg + 6) + 4), word_1001789D0);
                          v654 = *(rr_from_ipc_msg + 4);
                          v1277[0].st_dev = 141558531;
                          *&v1277[0].st_mode = 1752392040;
                          WORD2(v1277[0].st_ino) = 2085;
                          *(&v1277[0].st_ino + 6) = word_1001789D0;
                          HIWORD(v1277[0].st_gid) = 2048;
                          *&v1277[0].st_rdev = v654;
                          v413 = v624;
                          v414 = "handle_regrecord_request: Name conflict %{sensitive, mask.hash}s InterfaceID %p";
                          goto LABEL_1071;
                        }

                        v513 = mDNSGetTSRForAuthRecordNamed(xmmword_100170360, *(rr_from_ipc_msg + 5), *(rr_from_ipc_msg + 6));
                      }

                      else if (v517)
                      {
                        v518 = mDNSLogCategory_mDNS;
                        if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_mDNS == mDNSLogCategory_State)
                        {
                          updated = -65572;
                          if (os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_DEFAULT))
                          {
                            goto LABEL_840;
                          }
                        }

                        else
                        {
                          v518 = mDNSLogCategory_mDNS_redacted;
                          updated = -65572;
                          if (os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEFAULT))
                          {
LABEL_840:
                            GetRRDisplayString_rdb(rr_from_ipc_msg + 8, (*(rr_from_ipc_msg + 6) + 4), word_1001789D0);
                            v519 = *(rr_from_ipc_msg + 4);
                            v1277[0].st_dev = 141558531;
                            *&v1277[0].st_mode = 1752392040;
                            WORD2(v1277[0].st_ino) = 2085;
                            *(&v1277[0].st_ino + 6) = word_1001789D0;
                            HIWORD(v1277[0].st_gid) = 2048;
                            *&v1277[0].st_rdev = v519;
                            v413 = v518;
                            v414 = "handle_regrecord_request: TSR Stale data, auth cache is newer %{sensitive, mask.hash}s InterfaceID %p";
LABEL_1071:
                            v549 = 32;
                            goto LABEL_1173;
                          }
                        }

LABEL_1174:
                        v723 = rr_from_ipc_msg;
                        goto LABEL_1175;
                      }

                      if (v314 && conflictWithCacheRecordsOrFlush(*(rr_from_ipc_msg + 6), *(rr_from_ipc_msg + 5), v514, *v1203))
                      {
                        v570 = mDNSLogCategory_mDNS;
                        if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_mDNS == mDNSLogCategory_State)
                        {
                          if (os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_DEFAULT))
                          {
                            v571 = *(rr_from_ipc_msg + 5);
                            if (v571)
                            {
                              v665 = *(rr_from_ipc_msg + 5);
                              while (1)
                              {
                                if (!v665 || (v666 = *v665, v666 > 0x3F))
                                {
LABEL_1091:
                                  v574 = 257;
                                  goto LABEL_1565;
                                }

                                if (!*v665)
                                {
                                  break;
                                }

                                v665 += v666 + 1;
                                if (&v665[-v571] >= 256)
                                {
                                  goto LABEL_1091;
                                }
                              }

                              v574 = (v665 - v571 + 1);
                            }

                            else
                            {
                              v574 = 0;
                            }

                            goto LABEL_1565;
                          }
                        }

                        else
                        {
                          v570 = mDNSLogCategory_mDNS_redacted;
                          if (os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEFAULT))
                          {
                            v571 = *(rr_from_ipc_msg + 5);
                            if (v571)
                            {
                              v572 = *(rr_from_ipc_msg + 5);
                              while (1)
                              {
                                if (!v572 || (v573 = *v572, v573 > 0x3F))
                                {
LABEL_906:
                                  v574 = 257;
                                  goto LABEL_1565;
                                }

                                if (!*v572)
                                {
                                  break;
                                }

                                v572 += v573 + 1;
                                if (&v572[-v571] >= 256)
                                {
                                  goto LABEL_906;
                                }
                              }

                              v574 = (v572 - v571 + 1);
                            }

                            else
                            {
                              v574 = 0;
                            }

LABEL_1565:
                            v920 = *(rr_from_ipc_msg + 4);
                            v1277[0].st_dev = 141558787;
                            *&v1277[0].st_mode = 1752392040;
                            WORD2(v1277[0].st_ino) = 1040;
                            *(&v1277[0].st_ino + 6) = v574;
                            HIWORD(v1277[0].st_uid) = 2101;
                            *&v1277[0].st_gid = v571;
                            *(&v1277[0].st_rdev + 2) = 2048;
                            *(&v1277[0].st_rdev + 6) = v920;
                            _os_log_impl(&_mh_execute_header, v570, OS_LOG_TYPE_DEFAULT, "handle_regrecord_request: TSR Stale Data, record cache is newer %{sensitive, mask.hash, mdnsresponder:domain_name}.*P InterfaceID %p", v1277, 0x26u);
                          }
                        }

                        free(rr_from_ipc_msg);
                        updated = -65572;
                        goto LABEL_1185;
                      }

LABEL_827:
                      if (!_os_feature_enabled_impl() || !IsLocalDomain(*(rr_from_ipc_msg + 5)))
                      {
                        goto LABEL_1133;
                      }

                      if (v79[4])
                      {
                        bzero(v1277, 0x3F1uLL);
                        v1264 = 0u;
                        memset(buf, 0, sizeof(buf));
                        v1290 = 0u;
                        v1289 = 0u;
                        v1288 = 0u;
                        v1287 = 0u;
                        v1286 = 0u;
                        v1285 = 0u;
                        v1284 = 0u;
                        v1283 = 0u;
                        v1282 = 0u;
                        memset(v1281, 0, sizeof(v1281));
                        memset(v1280, 0, sizeof(v1280));
                        memset(v1279, 0, sizeof(v1279));
                        v1233 = 0;
                        v1232 = 0;
                        v1231 = 0;
                        v1230 = 0;
                        v1229 = 0;
                        v1228 = 0;
                        v1227 = 0;
                        v1226 = 0;
                        v1225 = 0;
                        v1224 = 0;
                        v1223 = 0;
                        memset(v1222, 0, sizeof(v1222));
                        memset(__src, 0, sizeof(__src));
                        if (DeconstructServiceName(*(rr_from_ipc_msg + 5), buf, v1279, __src))
                        {
                          v515 = v1277;
                          ConvertDomainNameToCString_withescape(&v1279[0].sa_len, v1277);
                        }

                        else
                        {
                          v515 = 0;
                        }

                        v667 = v79[4];
                        v668 = *(v667 + 40);
                        v1236 = *(v667 + 24);
                        v1237 = v668;
                        v669 = mdns_trust_checks_check(&v1236, 0, 0, v515, 0, 1);
                        if (!v669)
                        {
                          updated = -65539;
                          goto LABEL_1134;
                        }

                        v670 = v669;
                        v671 = v669[9];
                        if (v671 > 1)
                        {
                          if (v671 == 3)
                          {
                            updated = -65555;
                            goto LABEL_1324;
                          }

                          if (v671 != 2)
                          {
                            goto LABEL_1312;
                          }
                        }

                        else if (v671)
                        {
                          if (v671 == 1)
                          {
                            updated = _handle_regrecord_request_start(v79, rr_from_ipc_msg);
LABEL_1324:
                            os_release(v670);
                            goto LABEL_1134;
                          }

LABEL_1312:
                          updated = -65537;
                          goto LABEL_1324;
                        }

                        if ((v79[6] || (Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 0, &mdns_cfarray_callbacks), (v79[6] = Mutable) != 0)) && (v673 = *(v667 + 40), v1236 = *(v667 + 24), v1237 = v673, (v674 = mdns_trust_create(&v1236, v515, v670)) != 0))
                        {
                          v675 = v674;
                          *(v674 + 7) = rr_from_ipc_msg;
                          mdns_interface_monitor_set_update_handler(v674, &__block_literal_global_313);
                          if (_get_trust_results_dispatch_queue_once != -1)
                          {
                            dispatch_once(&_get_trust_results_dispatch_queue_once, &__block_literal_global_240);
                          }

                          mdns_trust_set_queue(v675, _get_trust_results_dispatch_queue_queue);
                          *aBlock = _NSConcreteStackBlock;
                          *&aBlock[8] = 0x40000000;
                          *&aBlock[16] = ___handle_regrecord_request_with_trust_block_invoke_2;
                          *&aBlock[24] = &__block_descriptor_tmp_315;
                          *&aBlock[32] = v675;
                          *&aBlock[40] = v79;
                          mdns_trust_set_event_handler(v675, aBlock);
                          CFArrayAppendValue(v79[6], v675);
                          os_release(v675);
                          if ((*(v675 + 26) & 1) == 0)
                          {
                            *(v675 + 26) = 1;
                            _mdns_trust_activate_if_ready(v675);
                          }

                          updated = 0;
                        }

                        else
                        {
                          free(rr_from_ipc_msg);
                          updated = -65539;
                        }

                        goto LABEL_1324;
                      }

                      v653 = mDNSLogCategory_mDNS;
                      if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_mDNS == mDNSLogCategory_State)
                      {
                        if (os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_DEFAULT))
                        {
LABEL_1132:
                          v688 = *(v79 + 50);
                          v689 = *(v79 + 47);
                          v1277[0].st_dev = 67109634;
                          *&v1277[0].st_mode = v688;
                          LOWORD(v1277[0].st_ino) = 2080;
                          *(&v1277[0].st_ino + 2) = (v79 + 32);
                          HIWORD(v1277[0].st_uid) = 1024;
                          v1277[0].st_gid = v689;
                          _os_log_impl(&_mh_execute_header, v653, OS_LOG_TYPE_DEFAULT, "[R%u] _handle_regrecord_request_with_trust: no audit token for pid(%s %d)", v1277, 0x18u);
                        }
                      }

                      else
                      {
                        v653 = mDNSLogCategory_mDNS_redacted;
                        if (os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEFAULT))
                        {
                          goto LABEL_1132;
                        }
                      }

LABEL_1133:
                      updated = _handle_regrecord_request_start(v79, rr_from_ipc_msg);
LABEL_1134:
                      if (!v314 || updated)
                      {
                        goto LABEL_1185;
                      }

                      v690 = *v1203;
                      if (v513)
                      {
                        updated = updateTSRRecord(v79, v513, v500, *v1203);
                        if (!updated)
                        {
                          goto LABEL_1256;
                        }

LABEL_1265:
                        v768 = mDNSLogCategory_mDNS;
                        if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_mDNS == mDNSLogCategory_State)
                        {
                          if (os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_ERROR))
                          {
LABEL_1270:
                            v1277[0].st_dev = 67109120;
                            *&v1277[0].st_mode = updated;
                            _os_log_impl(&_mh_execute_header, v768, OS_LOG_TYPE_ERROR, "handle_regrecord_request: Failed to add TSR record with error %d", v1277, 8u);
                          }
                        }

                        else
                        {
                          v768 = mDNSLogCategory_mDNS_redacted;
                          if (os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_ERROR))
                          {
                            goto LABEL_1270;
                          }
                        }

                        v769 = *(rr_from_ipc_msg + 14);
                        v770 = v79 + 22;
                        do
                        {
                          v771 = v770;
                          v772 = *v770;
                          v770 = (*v770 + 8);
                          if (v772)
                          {
                            v773 = v772 == v769;
                          }

                          else
                          {
                            v773 = 1;
                          }
                        }

                        while (!v773);
                        if (!v772)
                        {
                          v776 = mDNSLogCategory_mDNS;
                          if (mDNS_SensitiveLoggingEnableCount)
                          {
                            v777 = mDNSLogCategory_mDNS == mDNSLogCategory_State;
                          }

                          else
                          {
                            v777 = 1;
                          }

                          if (v777)
                          {
                            if (!os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_ERROR))
                            {
                              goto LABEL_1185;
                            }
                          }

                          else
                          {
                            v776 = mDNSLogCategory_mDNS_redacted;
                            if (!os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_ERROR))
                            {
                              goto LABEL_1185;
                            }
                          }

                          v782 = *(v79 + 50);
                          v1277[0].st_dev = 67109120;
                          *&v1277[0].st_mode = v782;
                          v783 = v1277;
                          v784 = v776;
                          v785 = OS_LOG_TYPE_ERROR;
                          v786 = "[R%u] handle_regrecord_request - record not in list!";
                          goto LABEL_1298;
                        }

                        *v771 = *v770;
                        v774 = mDNSLogCategory_mDNS;
                        if (mDNS_SensitiveLoggingEnableCount)
                        {
                          v775 = mDNSLogCategory_mDNS == mDNSLogCategory_State;
                        }

                        else
                        {
                          v775 = 1;
                        }

                        if (v775)
                        {
                          if (!os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_ERROR))
                          {
LABEL_1294:
                            *(rr_from_ipc_msg + 14) = 0;
                            mDNS_Deregister(mDNSStorage, rr_from_ipc_msg);
                            if (!v769)
                            {
                              goto LABEL_1185;
                            }

                            v723 = v769;
LABEL_1175:
                            free(v723);
                            goto LABEL_1185;
                          }
                        }

                        else
                        {
                          v774 = mDNSLogCategory_mDNS_redacted;
                          if (!os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_ERROR))
                          {
                            goto LABEL_1294;
                          }
                        }

                        v779 = *(v79 + 50);
                        GetRRDisplayString_rdb(rr_from_ipc_msg + 8, (*(rr_from_ipc_msg + 6) + 4), word_1001789D0);
                        v780 = *(rr_from_ipc_msg + 4);
                        v1277[0].st_dev = 67110147;
                        *&v1277[0].st_mode = v779;
                        LOWORD(v1277[0].st_ino) = 2160;
                        *(&v1277[0].st_ino + 2) = 1752392040;
                        HIWORD(v1277[0].st_uid) = 2085;
                        *&v1277[0].st_gid = word_1001789D0;
                        *(&v1277[0].st_rdev + 2) = 2048;
                        *(&v1277[0].st_rdev + 6) = rr_from_ipc_msg;
                        HIWORD(v1277[0].st_atimespec.tv_sec) = 2048;
                        v1277[0].st_atimespec.tv_nsec = v780;
                        _os_log_impl(&_mh_execute_header, v774, OS_LOG_TYPE_ERROR, "[R%u] handle_regrecord_request: TSR fail, removing %{sensitive, mask.hash}s (%p), InterfaceID %p", v1277, 0x30u);
                        goto LABEL_1294;
                      }

                      v691 = malloc_type_calloc(1uLL, 0x5A4uLL, 0x958092BDuLL);
                      if (!v691)
                      {
                        goto LABEL_1950;
                      }

                      v692 = v691;
                      mDNS_SetupResourceRecord(v691, 0, *(rr_from_ipc_msg + 4), 41, 0x1194u, 2, 0, 0, 0);
                      v698 = *(rr_from_ipc_msg + 5);
                      v699 = v698;
                      do
                      {
                        if (!v699)
                        {
                          break;
                        }

                        v700 = *v699;
                        if (v700 > 0x3F)
                        {
                          break;
                        }

                        if (!*v699)
                        {
                          v749 = v699 - v698 + 1;
                          if (v749 <= 0x100u)
                          {
                            memcpy((v692 + 652), v698, v749);
                            goto LABEL_1242;
                          }

                          break;
                        }

                        v699 += v700 + 1;
                      }

                      while (v699 - v698 <= 255);
                      *(v692 + 652) = 0;
LABEL_1242:
                      *(v692 + 14) = 1440;
                      v750 = *(rr_from_ipc_msg + 6);
                      *(v692 + 20) = 917518;
                      *(v692 + 24) = v750;
                      v751 = *(v692 + 48);
                      *(v751 + 4) = 720362;
                      *(v751 + 8) = v500;
                      *(v751 + 12) = v690;
                      *(v751 + 16) = 0;
                      *(v692 + 104) = regrecord_callback;
                      SetNewRData(v692 + 8, 0, 0, v693, v694, v695, v696, v697);
                      v752 = *(v79 + 62);
                      *(v692 + 122) = (v752 & 0x400) != 0;
                      v753 = mDNSLogCategory_mDNS;
                      if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_mDNS == mDNSLogCategory_State)
                      {
                        if (!os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_DEFAULT))
                        {
                          goto LABEL_1248;
                        }
                      }

                      else
                      {
                        v753 = mDNSLogCategory_mDNS_redacted;
                        if (!os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEFAULT))
                        {
                          goto LABEL_1248;
                        }
                      }

                      v754 = *(v79 + 50);
                      v755 = *(v79 + 63);
                      GetRRDisplayString_rdb((v692 + 8), (*(v692 + 48) + 4), word_1001789D0);
                      v756 = *(v79 + 47);
                      v1277[0].st_dev = 67110659;
                      *&v1277[0].st_mode = v754;
                      LOWORD(v1277[0].st_ino) = 1024;
                      *(&v1277[0].st_ino + 2) = v752;
                      HIWORD(v1277[0].st_ino) = 1024;
                      v1277[0].st_uid = v755;
                      LOWORD(v1277[0].st_gid) = 2160;
                      *(&v1277[0].st_gid + 2) = 1752392040;
                      *(&v1277[0].st_rdev + 3) = 2085;
                      v1277[0].st_atimespec.tv_sec = word_1001789D0;
                      LOWORD(v1277[0].st_atimespec.tv_nsec) = 1024;
                      *(&v1277[0].st_atimespec.tv_nsec + 2) = v756;
                      HIWORD(v1277[0].st_atimespec.tv_nsec) = 2082;
                      v1277[0].st_mtimespec.tv_sec = (v79 + 32);
                      _os_log_impl(&_mh_execute_header, v753, OS_LOG_TYPE_DEFAULT, "[R%u] regRecordAddTSRRecord(0x%X, %d, %{sensitive, mask.hash}s) START PID[%d](%{public}s)", v1277, 0x38u);
LABEL_1248:
                      v757 = mDNS_Register(mDNSStorage, v692);
                      if (!v757)
                      {
                        if (mDNS_McastLoggingEnabled)
                        {
                          LogMcastService(v692, v79, 1, v758, v759, v760, v761, v762, v1153);
                        }

                        *(v692 + 96) = *(v79 + 46);
LABEL_1256:
                        v764 = mDNSLogCategory_mDNS;
                        if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_mDNS == mDNSLogCategory_State)
                        {
                          if (!os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_DEFAULT))
                          {
                            goto LABEL_671;
                          }
                        }

                        else
                        {
                          v764 = mDNSLogCategory_mDNS_redacted;
                          if (!os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEFAULT))
                          {
                            goto LABEL_671;
                          }
                        }

                        v1277[0].st_dev = 67109632;
                        *&v1277[0].st_mode = v500;
                        LOWORD(v1277[0].st_ino) = 1024;
                        *(&v1277[0].st_ino + 2) = v1220[0];
                        HIWORD(v1277[0].st_ino) = 1024;
                        v1277[0].st_uid = *v1203;
                        _os_log_impl(&_mh_execute_header, v764, OS_LOG_TYPE_DEFAULT, "handle_regrecord_request: TSR record added with timestampContinuous %d tsrTimestamp %u tsrHostkeyHash %x", v1277, 0x14u);
                        goto LABEL_671;
                      }

                      updated = v757;
                      v763 = mDNSLogCategory_mDNS;
                      if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_mDNS == mDNSLogCategory_State)
                      {
                        if (os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_DEFAULT))
                        {
LABEL_1263:
                          v765 = *(v79 + 50);
                          v766 = *(v79 + 62);
                          v767 = *(v79 + 63);
                          GetRRDisplayString_rdb((v692 + 8), (*(v692 + 48) + 4), word_1001789D0);
                          v1277[0].st_dev = 67110403;
                          *&v1277[0].st_mode = v765;
                          LOWORD(v1277[0].st_ino) = 1024;
                          *(&v1277[0].st_ino + 2) = v766;
                          HIWORD(v1277[0].st_ino) = 1024;
                          v1277[0].st_uid = v767;
                          LOWORD(v1277[0].st_gid) = 2160;
                          *(&v1277[0].st_gid + 2) = 1752392040;
                          *(&v1277[0].st_rdev + 3) = 2085;
                          v1277[0].st_atimespec.tv_sec = word_1001789D0;
                          LOWORD(v1277[0].st_atimespec.tv_nsec) = 1024;
                          *(&v1277[0].st_atimespec.tv_nsec + 2) = updated;
                          _os_log_impl(&_mh_execute_header, v763, OS_LOG_TYPE_DEFAULT, "[R%u] regRecordAddTSRRecord(0x%X, %d,%{sensitive, mask.hash}s) ERROR (%d)", v1277, 0x2Eu);
                        }
                      }

                      else
                      {
                        v763 = mDNSLogCategory_mDNS_redacted;
                        if (os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEFAULT))
                        {
                          goto LABEL_1263;
                        }
                      }

                      free(v692);
                      goto LABEL_1265;
                    case 3:
                      v175 = v79[10];
                      if (v175 && (v176 = v175 + 4, v176 <= v79[11]))
                      {
                        v79[10] = v176;
                        if (v176)
                        {
                          v177 = v79[14];
                          v178 = v79;
                          if (v177 != connection_termination || (SubordinateRequest = LocateSubordinateRequest(v79), v178 = SubordinateRequest, v177 = *(SubordinateRequest + 112), v177 != connection_termination))
                          {
                            if (v177 != regservice_termination_callback)
                            {
                              v185 = mDNSLogCategory_mDNS;
                              if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_mDNS == mDNSLogCategory_State)
                              {
                                updated = -65540;
                                if (!os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_DEFAULT))
                                {
                                  goto LABEL_1185;
                                }
                              }

                              else
                              {
                                v185 = mDNSLogCategory_mDNS_redacted;
                                updated = -65540;
                                if (!os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEFAULT))
                                {
                                  goto LABEL_1185;
                                }
                              }

                              v186 = *(v178 + 200);
                              v1277[0].st_dev = 67109120;
                              *&v1277[0].st_mode = v186;
                              v187 = v1277;
                              v188 = v185;
                              v189 = OS_LOG_TYPE_DEFAULT;
                              v190 = "[R%u] DNSServiceRemoveRecord(not a registered service ref)";
                              goto LABEL_1055;
                            }

                            v424 = *(v178 + 128);
                            v425 = *(v424 + 1624);
                            v426 = 0;
                            if (v425)
                            {
                              do
                              {
                                v427 = v425 + 39;
                                v428 = v425 + 39;
                                do
                                {
                                  v428 = *v428;
                                  if (!v428)
                                  {
                                    goto LABEL_697;
                                  }
                                }

                                while (*(v428 + 2) != *(v178 + 240));
                                v426 = *(v428 + 14);
                                if (*(v425 + 27))
                                {
                                  internal_stop_advertising_service((v428 + 3), *(v178 + 248), *(v178 + 188));
                                }

                                mDNS_Lock_(mDNSStorage, "mDNS_RemoveRecordFromService", 17818);
                                do
                                {
                                  v429 = v427;
                                  v427 = *v427;
                                  if (v427)
                                  {
                                    v430 = v427 == v428;
                                  }

                                  else
                                  {
                                    v430 = 1;
                                  }
                                }

                                while (!v430);
                                if (!v427)
                                {
                                  mDNS_Unlock_(mDNSStorage, "mDNS_RemoveRecordFromService", 17834);
LABEL_697:
                                  updated = -65541;
                                  goto LABEL_698;
                                }

                                v428[15] = FreeExtraRR;
                                v428[16] = v428;
                                *v429 = **v429;
                                updated = mDNS_Deregister_internal(mDNSStorage, (v428 + 2), 0);
                                mDNS_Unlock_(mDNSStorage, "mDNS_RemoveRecordFromService", 17834);
                                if (!updated)
                                {
                                  goto LABEL_699;
                                }

LABEL_698:
                                if (*(v425 + 26))
                                {
                                  goto LABEL_920;
                                }

LABEL_699:
                                v425 = *v425;
                              }

                              while (v425);
                              updated = 0;
                            }

                            else
                            {
                              updated = -65541;
                            }

LABEL_920:
                            v580 = mDNSLogCategory_mDNS;
                            if (mDNS_SensitiveLoggingEnableCount)
                            {
                              v581 = mDNSLogCategory_mDNS == mDNSLogCategory_State;
                            }

                            else
                            {
                              v581 = 1;
                            }

                            if (v581)
                            {
                              if (!os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_DEFAULT))
                              {
                                goto LABEL_1185;
                              }

                              v582 = *(v424 + 1624);
                              if (v582)
                              {
                                v583 = *(v582 + 2736);
                                if (v583)
                                {
                                  v584 = *(v582 + 2736);
                                  while (1)
                                  {
                                    if (!v584 || (v585 = *v584, v585 > 0x3F))
                                    {
LABEL_933:
                                      v586 = 257;
                                      goto LABEL_1361;
                                    }

                                    if (!*v584)
                                    {
                                      break;
                                    }

                                    v584 += v585 + 1;
                                    if (&v584[-v583] >= 256)
                                    {
                                      goto LABEL_933;
                                    }
                                  }

                                  v586 = (v584 - v583 + 1);
                                }

                                else
                                {
                                  v586 = 0;
                                }
                              }

                              else
                              {
                                v586 = 0;
                                v583 = 0;
                              }

LABEL_1361:
                              v822 = *(v178 + 200);
                              if (!v426)
                              {
                                v823 = "<NONE>";
LABEL_1367:
                                v824 = *(v178 + 188);
                                v1277[0].st_dev = 67110915;
                                *&v1277[0].st_mode = v822;
                                LOWORD(v1277[0].st_ino) = 2160;
                                *(&v1277[0].st_ino + 2) = 1752392040;
                                HIWORD(v1277[0].st_uid) = 1040;
                                v1277[0].st_gid = v586;
                                LOWORD(v1277[0].st_rdev) = 2101;
                                *(&v1277[0].st_rdev + 2) = v583;
                                WORD1(v1277[0].st_atimespec.tv_sec) = 2082;
                                *(&v1277[0].st_atimespec.tv_sec + 4) = v823;
                                WORD2(v1277[0].st_atimespec.tv_nsec) = 1024;
                                *(&v1277[0].st_atimespec.tv_nsec + 6) = v824;
                                WORD1(v1277[0].st_mtimespec.tv_sec) = 2082;
                                *(&v1277[0].st_mtimespec.tv_sec + 4) = v178 + 256;
                                WORD2(v1277[0].st_mtimespec.tv_nsec) = 1024;
                                *(&v1277[0].st_mtimespec.tv_nsec + 6) = updated;
                                v783 = v1277;
                                v784 = v580;
                                v785 = OS_LOG_TYPE_DEFAULT;
                                v786 = "[R%u] DNSServiceRemoveRecord(%{sensitive, mask.hash, mdnsresponder:domain_name}.*P, %{public}s) PID[%d](%{public}s): %d";
                                v787 = 66;
                                goto LABEL_1608;
                              }
                            }

                            else
                            {
                              v580 = mDNSLogCategory_mDNS_redacted;
                              if (!os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEFAULT))
                              {
                                goto LABEL_1185;
                              }

                              v588 = *(v424 + 1624);
                              if (v588)
                              {
                                v583 = *(v588 + 2736);
                                if (v583)
                                {
                                  v589 = *(v588 + 2736);
                                  while (1)
                                  {
                                    if (!v589 || (v590 = *v589, v590 > 0x3F))
                                    {
LABEL_942:
                                      v586 = 257;
                                      goto LABEL_1364;
                                    }

                                    if (!*v589)
                                    {
                                      break;
                                    }

                                    v589 += v590 + 1;
                                    if (&v589[-v583] >= 256)
                                    {
                                      goto LABEL_942;
                                    }
                                  }

                                  v586 = (v589 - v583 + 1);
                                }

                                else
                                {
                                  v586 = 0;
                                }
                              }

                              else
                              {
                                v586 = 0;
                                v583 = 0;
                              }

LABEL_1364:
                              v822 = *(v178 + 200);
                              if (!v426)
                              {
                                v823 = "<NONE>";
                                goto LABEL_1367;
                              }
                            }

                            v823 = DNSTypeName(v426);
                            goto LABEL_1367;
                          }

                          v550 = (SubordinateRequest + 176);
                          v551 = *(SubordinateRequest + 176);
                          v552 = *(SubordinateRequest + 240);
                          if (!v551)
                          {
LABEL_987:
                            v1154 = *(SubordinateRequest + 240);
                            LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "%3d: DNSServiceRemoveRecord(%u) not found", v180, v181, v182, v183, v184, *(SubordinateRequest + 184));
                            updated = -65541;
                            goto LABEL_1185;
                          }

                          if (*(v551 + 56) != v552)
                          {
                            do
                            {
                              v553 = v551;
                              v551 = *(v551 + 8);
                              if (!v551)
                              {
                                goto LABEL_987;
                              }
                            }

                            while (*(v551 + 56) != v552);
                            v550 = (v553 + 8);
                          }

                          *v550 = *(v551 + 8);
                          v554 = *(v551 + 24);
                          v555 = mDNSPlatformInterfaceIndexfromInterfaceID(mDNSStorage, *(v554 + 32), 1, v180, v181, v182, v183, v184);
                          v556 = mDNS_DomainNameFNV1aHash(*(v554 + 40));
                          shouldLogFullRequestInfo = _shouldLogFullRequestInfo((v551 + 48), (v551 + 52));
                          v1277[0].st_ino = 0;
                          *&v1277[0].st_dev = 0;
                          clock_gettime(_CLOCK_MONOTONIC_RAW, v1277);
                          v561 = v1277[0].st_dev - *(v551 + 48);
                          if (shouldLogFullRequestInfo)
                          {
                            v562 = *(v554 + 20);
                            if (v562 >= 0x201)
                            {
                              v562 = malloc_type_malloc(v562, 0x1C443E3AuLL);
                              if (!v562)
                              {
                                goto LABEL_1950;
                              }

                              v563 = v562;
                              LODWORD(v562) = *(v554 + 20);
                              v564 = v562;
                              v565 = v563;
                            }

                            else
                            {
                              v563 = 0;
                              v564 = 512;
                              v565 = &word_1001787D0;
                            }

                            if (v562)
                            {
                              *&v1279[0].sa_len = 0;
                              LOWORD(__src[0]) = 0;
                              RDataBytesPointer = ResourceRecordGetRDataBytesPointer(v554 + 8, v565, v564, __src, v1279, v558, v559, v560);
                              if (!*&v1279[0].sa_len)
                              {
                                v1175 = RDataBytesPointer;
                                v1186 = v555;
                                if (LOWORD(__src[0]) >= 0x1FFuLL)
                                {
                                  v687 = LOWORD(__src[0]) + 2;
                                  v686 = malloc_type_malloc(LOWORD(__src[0]) + 2, 0x1C443E3AuLL);
                                  if (!v686)
                                  {
                                    goto LABEL_1950;
                                  }

                                  v1174 = v686;
                                }

                                else
                                {
                                  v686 = 0;
                                  v687 = 512;
                                  v1174 = word_1001789D0;
                                }

                                logg = v686;
                                v838 = mDNSLogCategory_mDNS;
                                if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_mDNS == mDNSLogCategory_State)
                                {
                                  if (!os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_DEFAULT))
                                  {
                                    goto LABEL_1724;
                                  }

                                  v1173 = v556;
                                  v1167 = *(v551 + 56);
                                  v1168 = *(v178 + 200);
                                  v1171 = *(v178 + 188);
                                  v844 = *(v554 + 40);
                                  v845 = v844;
                                  while (1)
                                  {
                                    if (!v845 || (v846 = *v845, v846 > 0x3F))
                                    {
LABEL_1451:
                                      v847 = 257;
                                      goto LABEL_1714;
                                    }

                                    if (!*v845)
                                    {
                                      break;
                                    }

                                    v845 += v846 + 1;
                                    if (&v845[-v844] >= 256)
                                    {
                                      goto LABEL_1451;
                                    }
                                  }

                                  v847 = (v845 - v844 + 1);
LABEL_1714:
                                  v1165 = v847;
                                  v1026 = *(v554 + 12);
                                  v1027 = LOWORD(__src[0]);
                                  v1028 = LOWORD(__src[0]) + 2;
                                  v1162 = v1026;
                                  if (v1028 <= v687)
                                  {
                                    v1029 = v1174;
                                    *v1174 = __rev16(v1026);
                                    memcpy(v1174 + 1, v1175, v1027);
                                  }

                                  else
                                  {
                                    v1029 = 0;
                                  }

                                  v1277[0].st_dev = 67112451;
                                  *&v1277[0].st_mode = v1168;
                                  LOWORD(v1277[0].st_ino) = 1024;
                                  *(&v1277[0].st_ino + 2) = v1167;
                                  HIWORD(v1277[0].st_ino) = 1024;
                                  v1277[0].st_uid = v1186;
                                  LOWORD(v1277[0].st_gid) = 1024;
                                  *(&v1277[0].st_gid + 2) = v1171;
                                  HIWORD(v1277[0].st_rdev) = 2082;
                                  *(&v1277[0].st_rdev + 1) = v178 + 256;
                                  WORD2(v1277[0].st_atimespec.tv_sec) = 1024;
                                  *(&v1277[0].st_atimespec.tv_sec + 6) = v561;
                                  WORD1(v1277[0].st_atimespec.tv_nsec) = 2160;
                                  *(&v1277[0].st_atimespec.tv_nsec + 4) = 1752392040;
                                  WORD2(v1277[0].st_mtimespec.tv_sec) = 1040;
                                  *(&v1277[0].st_mtimespec.tv_sec + 6) = v1165;
                                  WORD1(v1277[0].st_mtimespec.tv_nsec) = 2101;
                                  *(&v1277[0].st_mtimespec.tv_nsec + 4) = v844;
                                  WORD2(v1277[0].st_ctimespec.tv_sec) = 1024;
                                  *(&v1277[0].st_ctimespec.tv_sec + 6) = v1173;
                                  WORD1(v1277[0].st_ctimespec.tv_nsec) = 1024;
                                  HIDWORD(v1277[0].st_ctimespec.tv_nsec) = v1162;
                                  LOWORD(v1277[0].st_birthtimespec.tv_sec) = 2160;
                                  *(&v1277[0].st_birthtimespec.tv_sec + 2) = 1752392040;
                                  WORD1(v1277[0].st_birthtimespec.tv_nsec) = 1040;
                                  HIDWORD(v1277[0].st_birthtimespec.tv_nsec) = v1028;
                                  LOWORD(v1277[0].st_size) = 2101;
                                  *(&v1277[0].st_size + 2) = v1029;
                                  v1030 = v838;
                                }

                                else
                                {
                                  v839 = mDNSLogCategory_mDNS_redacted;
                                  if (!os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEFAULT))
                                  {
                                    goto LABEL_1724;
                                  }

                                  v1170 = v839;
                                  v1172 = v556;
                                  v1164 = *(v551 + 56);
                                  v1166 = *(v178 + 200);
                                  v1169 = *(v178 + 188);
                                  v840 = *(v554 + 40);
                                  v841 = v840;
                                  while (1)
                                  {
                                    if (!v841 || (v842 = *v841, v842 > 0x3F))
                                    {
LABEL_1444:
                                      v843 = 257;
                                      goto LABEL_1719;
                                    }

                                    if (!*v841)
                                    {
                                      break;
                                    }

                                    v841 += v842 + 1;
                                    if (&v841[-v840] >= 256)
                                    {
                                      goto LABEL_1444;
                                    }
                                  }

                                  v843 = (v841 - v840 + 1);
LABEL_1719:
                                  v1163 = v843;
                                  v1031 = *(v554 + 12);
                                  v1032 = LOWORD(__src[0]);
                                  v1033 = LOWORD(__src[0]) + 2;
                                  if (v1033 <= v687)
                                  {
                                    v1034 = v1174;
                                    *v1174 = __rev16(v1031);
                                    memcpy(v1174 + 1, v1175, v1032);
                                  }

                                  else
                                  {
                                    v1034 = 0;
                                  }

                                  v1277[0].st_dev = 67112451;
                                  *&v1277[0].st_mode = v1166;
                                  LOWORD(v1277[0].st_ino) = 1024;
                                  *(&v1277[0].st_ino + 2) = v1164;
                                  HIWORD(v1277[0].st_ino) = 1024;
                                  v1277[0].st_uid = v1186;
                                  LOWORD(v1277[0].st_gid) = 1024;
                                  *(&v1277[0].st_gid + 2) = v1169;
                                  HIWORD(v1277[0].st_rdev) = 2082;
                                  *(&v1277[0].st_rdev + 1) = v178 + 256;
                                  WORD2(v1277[0].st_atimespec.tv_sec) = 1024;
                                  *(&v1277[0].st_atimespec.tv_sec + 6) = v561;
                                  WORD1(v1277[0].st_atimespec.tv_nsec) = 2160;
                                  *(&v1277[0].st_atimespec.tv_nsec + 4) = 1752392040;
                                  WORD2(v1277[0].st_mtimespec.tv_sec) = 1040;
                                  *(&v1277[0].st_mtimespec.tv_sec + 6) = v1163;
                                  WORD1(v1277[0].st_mtimespec.tv_nsec) = 2101;
                                  *(&v1277[0].st_mtimespec.tv_nsec + 4) = v840;
                                  WORD2(v1277[0].st_ctimespec.tv_sec) = 1024;
                                  *(&v1277[0].st_ctimespec.tv_sec + 6) = v1172;
                                  WORD1(v1277[0].st_ctimespec.tv_nsec) = 1024;
                                  HIDWORD(v1277[0].st_ctimespec.tv_nsec) = v1031;
                                  LOWORD(v1277[0].st_birthtimespec.tv_sec) = 2160;
                                  *(&v1277[0].st_birthtimespec.tv_sec + 2) = 1752392040;
                                  WORD1(v1277[0].st_birthtimespec.tv_nsec) = 1040;
                                  HIDWORD(v1277[0].st_birthtimespec.tv_nsec) = v1033;
                                  LOWORD(v1277[0].st_size) = 2101;
                                  *(&v1277[0].st_size + 2) = v1034;
                                  v1030 = v1170;
                                }

                                _os_log_impl(&_mh_execute_header, v1030, OS_LOG_TYPE_DEFAULT, "[R%u->Rec%u] DNSServiceRemoveRecord -- ifindex: %d, client pid: %d (%{public}s), duration: %{mdns:time_duration}u, name: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P(%x), type: %{mdns:rrtype}d, rdata: %{sensitive, mask.hash, mdns:rdata}.*P", v1277, 0x6Au);
LABEL_1724:
                                if (logg)
                                {
                                  free(logg);
                                }
                              }
                            }

                            else
                            {
                              v788 = mDNSLogCategory_mDNS;
                              if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_mDNS == mDNSLogCategory_State)
                              {
                                if (!os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_DEFAULT))
                                {
                                  goto LABEL_1726;
                                }

                                v789 = *(v178 + 200);
                                v790 = *(v551 + 56);
                                v791 = *(v178 + 188);
                                v792 = *(v554 + 40);
                                v825 = v792;
                                while (1)
                                {
                                  if (!v825 || (v826 = *v825, v826 > 0x3F))
                                  {
LABEL_1374:
                                    v795 = 257;
                                    goto LABEL_1618;
                                  }

                                  if (!*v825)
                                  {
                                    break;
                                  }

                                  v825 += v826 + 1;
                                  if (&v825[-v792] >= 256)
                                  {
                                    goto LABEL_1374;
                                  }
                                }

                                v795 = (v825 - v792 + 1);
                              }

                              else
                              {
                                v788 = mDNSLogCategory_mDNS_redacted;
                                if (!os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEFAULT))
                                {
                                  goto LABEL_1726;
                                }

                                v789 = *(v178 + 200);
                                v790 = *(v551 + 56);
                                v791 = *(v178 + 188);
                                v792 = *(v554 + 40);
                                v793 = v792;
                                while (1)
                                {
                                  if (!v793 || (v794 = *v793, v794 > 0x3F))
                                  {
LABEL_1307:
                                    v795 = 257;
                                    goto LABEL_1618;
                                  }

                                  if (!*v793)
                                  {
                                    break;
                                  }

                                  v793 += v794 + 1;
                                  if (&v793[-v792] >= 256)
                                  {
                                    goto LABEL_1307;
                                  }
                                }

                                v795 = (v793 - v792 + 1);
                              }

LABEL_1618:
                              v948 = *(v554 + 12);
                              v1277[0].st_dev = 67111683;
                              *&v1277[0].st_mode = v789;
                              LOWORD(v1277[0].st_ino) = 1024;
                              *(&v1277[0].st_ino + 2) = v790;
                              HIWORD(v1277[0].st_ino) = 1024;
                              v1277[0].st_uid = v555;
                              LOWORD(v1277[0].st_gid) = 1024;
                              *(&v1277[0].st_gid + 2) = v791;
                              HIWORD(v1277[0].st_rdev) = 2082;
                              *(&v1277[0].st_rdev + 1) = v178 + 256;
                              WORD2(v1277[0].st_atimespec.tv_sec) = 1024;
                              *(&v1277[0].st_atimespec.tv_sec + 6) = v561;
                              WORD1(v1277[0].st_atimespec.tv_nsec) = 2160;
                              *(&v1277[0].st_atimespec.tv_nsec + 4) = 1752392040;
                              WORD2(v1277[0].st_mtimespec.tv_sec) = 1040;
                              *(&v1277[0].st_mtimespec.tv_sec + 6) = v795;
                              WORD1(v1277[0].st_mtimespec.tv_nsec) = 2101;
                              *(&v1277[0].st_mtimespec.tv_nsec + 4) = v792;
                              WORD2(v1277[0].st_ctimespec.tv_sec) = 1024;
                              *(&v1277[0].st_ctimespec.tv_sec + 6) = v556;
                              WORD1(v1277[0].st_ctimespec.tv_nsec) = 1024;
                              HIDWORD(v1277[0].st_ctimespec.tv_nsec) = v948;
                              _os_log_impl(&_mh_execute_header, v788, OS_LOG_TYPE_DEFAULT, "[R%u->Rec%u] DNSServiceRemoveRecord -- ifindex: %d, client pid: %d (%{public}s), duration: %{mdns:time_duration}u, name: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P(%x), type: %{mdns:rrtype}d, rdata: <none>", v1277, 0x50u);
                            }

LABEL_1726:
                            if (v563)
                            {
                              free(v563);
                            }

                            goto LABEL_1728;
                          }

                          v676 = mDNSLogCategory_mDNS;
                          if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_mDNS == mDNSLogCategory_State)
                          {
                            if (os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_DEFAULT))
                            {
LABEL_1322:
                              v807 = *(v178 + 200);
                              v808 = *(v551 + 56);
                              v1277[0].st_dev = 67109888;
                              *&v1277[0].st_mode = v807;
                              LOWORD(v1277[0].st_ino) = 1024;
                              *(&v1277[0].st_ino + 2) = v808;
                              HIWORD(v1277[0].st_ino) = 1024;
                              v1277[0].st_uid = v556;
                              LOWORD(v1277[0].st_gid) = 1024;
                              *(&v1277[0].st_gid + 2) = v561;
                              _os_log_impl(&_mh_execute_header, v676, OS_LOG_TYPE_DEFAULT, "[R%u->Rec%u] DNSServiceRemoveRecord -- name hash: %x, duration: %{mdns:time_duration}u", v1277, 0x1Au);
                            }
                          }

                          else
                          {
                            v676 = mDNSLogCategory_mDNS_redacted;
                            if (os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEFAULT))
                            {
                              goto LABEL_1322;
                            }
                          }

LABEL_1728:
                          v1035 = *(v551 + 24);
                          *(v1035 + 112) = 0;
                          if (*(v551 + 60))
                          {
                            internal_stop_advertising_service(v1035 + 8, *(v178 + 248), *(v178 + 188));
                            *(v551 + 60) = 0;
                            v1035 = *(v551 + 24);
                          }

                          if (mDNS_McastLoggingEnabled)
                          {
                            LogMcastService(v1035, v178, 0, v677, v678, v679, v680, v681, v1153);
                            v1035 = *(v551 + 24);
                          }

                          if (*v551)
                          {
                            v1036 = *(v178 + 252);
                            if (v1036)
                            {
                              v1037 = AWDLInterfaceID == v1036 || WiFiAwareInterfaceID == v1036;
                            }

                            else
                            {
                              v1037 = (*(v178 + 250) >> 4) & 1;
                            }

                            mdns_powerlog_register_record_stop((v178 + 256), *(v1035 + 40), *v551, v1037);
                            v1035 = *(v551 + 24);
                          }

                          updated = mDNS_Deregister(mDNSStorage, v1035);
                          if (updated)
                          {
                            LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "ERROR: remove_record, mDNS_Deregister: %d", v1038, v1039, v1040, v1041, v1042, updated);
                            v1043 = *(v551 + 24);
                            if (v1043)
                            {
                              free(v1043);
                            }
                          }

                          v723 = v551;
                          goto LABEL_1175;
                        }
                      }

                      else
                      {
                        v79[10] = 0;
                      }

                      v309 = mDNSLogCategory_mDNS;
                      if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_mDNS == mDNSLogCategory_State)
                      {
                        updated = -65540;
                        if (!os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_DEFAULT))
                        {
                          goto LABEL_1185;
                        }
                      }

                      else
                      {
                        v309 = mDNSLogCategory_mDNS_redacted;
                        updated = -65540;
                        if (!os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEFAULT))
                        {
                          goto LABEL_1185;
                        }
                      }

                      v310 = *(v79 + 50);
                      v1277[0].st_dev = 67109120;
                      *&v1277[0].st_mode = v310;
                      v187 = v1277;
                      v188 = v309;
                      v189 = OS_LOG_TYPE_DEFAULT;
                      v190 = "[R%u] DNSServiceRemoveRecord(unreadable parameters)";
                      goto LABEL_1055;
                    case 4:
                      v161 = 0;
                      v162 = 0;
                      v164 = v79[10];
                      v163 = v79[11];
                      if (v164 && (v164 + 1) <= v163)
                      {
                        v161 = bswap32(*v164);
                        v162 = v164 + 1;
                      }

                      v165 = 0;
                      v166 = 0;
                      v79[10] = v162;
                      if ((v161 & 0x80) != 0)
                      {
                        v167 = 4;
                      }

                      else
                      {
                        v167 = 1;
                      }

                      if (v162 && (v162 + 1) <= v163)
                      {
                        v165 = bswap32(*v162);
                        v166 = v162 + 1;
                      }

                      v79[10] = v166;
                      v168 = mDNSPlatformInterfaceIDfromInterfaceIndex(v165, v0, v1, v2, v3, v4, v5, v6);
                      v169 = v168;
                      if (v165)
                      {
                        updated = -65540;
                        if (!v168)
                        {
                          goto LABEL_1185;
                        }
                      }

                      if (!v79[10])
                      {
                        v402 = mDNSLogCategory_Default;
                        if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
                        {
                          updated = -65540;
                          if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_ERROR))
                          {
                            goto LABEL_1185;
                          }
                        }

                        else
                        {
                          v402 = mDNSLogCategory_Default_redacted;
                          updated = -65540;
                          if (!os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_ERROR))
                          {
                            goto LABEL_1185;
                          }
                        }

                        v403 = *(v79 + 50);
                        v1277[0].st_dev = 67109120;
                        *&v1277[0].st_mode = v403;
                        v187 = v1277;
                        v188 = v402;
                        v189 = OS_LOG_TYPE_ERROR;
                        v190 = "[R%u] DNSServiceEnumerateDomains(unreadable parameters)";
                        goto LABEL_1055;
                      }

                      v170 = v79[15];
                      if (!v170)
                      {
                        v171 = malloc_type_calloc(1uLL, 0x830uLL, 0x7BE2022BuLL);
                        if (!v171)
                        {
                          goto LABEL_1950;
                        }

                        v170 = v171;
                        v79[15] = v171;
                      }

                      *(v79 + 62) = v161;
                      *(v79 + 63) = v165;
                      *v170 = v161 & 0x80;
                      v170[23] = v79;
                      v170[110] = v79;
                      if ((v161 & 0x80) == 0)
                      {
                        v170[197] = v79;
                      }

                      if (v169)
                      {
                        v172 = v169;
                      }

                      else
                      {
                        v172 = -2;
                      }

                      if (mDNS_LoggingEnabled == 1)
                      {
                        v173 = "kDNSServiceFlagsRegistrationDomains";
                        if ((v161 & 0x80) == 0)
                        {
                          v173 = "<<Unknown>>";
                        }

                        if ((v161 & 0x40) != 0)
                        {
                          v173 = "kDNSServiceFlagsBrowseDomains";
                        }

                        v1154 = v161;
                        v1158 = v173;
                        LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "%3d: DNSServiceEnumerateDomains(%X=%s)", v2, v3, v4, v5, v6, *(v79 + 46));
                      }

                      Domains = mDNS_GetDomains((v170 + 1), (v161 >> 7) & 3, 0, v172, enum_result_callback, v79);
                      if (Domains)
                      {
                        goto LABEL_294;
                      }

                      v415 = mDNS_GetDomains((v170 + 88), v167, 0, v172, enum_result_callback, v79);
                      if (v415)
                      {
                        updated = v415;
                        v423 = (v170 + 1);
LABEL_679:
                        mDNS_StopQuery(mDNSStorage, v423);
                        goto LABEL_1185;
                      }

                      if ((v161 & 0x80) != 0)
                      {
                        v79[14] = enum_termination_callback;
                        if (mDNS_LoggingEnabled == 1)
                        {
                          v1154 = *(v79 + 47);
                          v1158 = (v79 + 32);
                          LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "%3d: DNSServiceEnumerateDomains Start WAB Registration PID[%d](%s)", v418, v419, v420, v421, v422, *(v79 + 46));
                        }

                        v613 = 4;
                      }

                      else
                      {
                        v569 = mDNS_GetDomains((v170 + 175), 2, 0, v172, enum_result_callback, v79);
                        if (v569)
                        {
                          updated = v569;
                          mDNS_StopQuery(mDNSStorage, (v170 + 1));
                          v423 = (v170 + 88);
                          goto LABEL_679;
                        }

                        v79[14] = enum_termination_callback;
                        if (mDNS_LoggingEnabled == 1)
                        {
                          v1154 = *(v79 + 47);
                          v1158 = (v79 + 32);
                          LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "%3d: DNSServiceEnumerateDomains Start WAB Browse PID[%d](%s)", v418, v419, v420, v421, v422, *(v79 + 46));
                        }

                        v613 = 3;
                      }

                      uDNS_StartWABQueries(v613, v416, v417, v418, v419, v420, v421, v422);
                      goto LABEL_671;
                    case 5:
                      v119 = 0;
                      v120 = 0;
                      v121 = v79[10];
                      if (v121)
                      {
                        v122 = v79[11];
                        v123 = 0;
                        if ((v121 + 1) <= v122)
                        {
                          v123 = 0;
                          v119 = 0;
                          v120 = bswap32(*v121);
                          v79[10] = v121 + 1;
                          if (v121 != -4 && (v121 + 2) <= v122)
                          {
                            v123 = bswap32(v121[1]);
                            v119 = v121 + 2;
                          }
                        }
                      }

                      else
                      {
                        v123 = 0;
                      }

                      v79[10] = v119;
                      if (v79[16])
                      {
                        goto LABEL_520;
                      }

                      v335 = malloc_type_calloc(1uLL, 0x660uLL, 0x90D8FF18uLL);
                      if (!v335)
                      {
                        goto LABEL_1950;
                      }

                      v79[16] = v335;
LABEL_520:
                      if (v123 == -3)
                      {
                        if (mDNS_LoggingEnabled == 1)
                        {
                          LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "handle_regservice_request: mapping kDNSServiceInterfaceIndexP2P to kDNSServiceInterfaceIndexAny + kDNSServiceFlagsIncludeP2P", v2, v3, v4, v5, v6, v1153);
                        }

                        v123 = 0;
                        v120 |= 0x20000u;
                      }

                      v336 = mDNSPlatformInterfaceIDfromInterfaceIndex(v123, v0, v1, v2, v3, v4, v5, v6);
                      v337 = v336;
                      if (!v123)
                      {
                        goto LABEL_703;
                      }

                      v338 = 0uLL;
                      if (v336)
                      {
                        goto LABEL_704;
                      }

                      if (v123 == 0 || v123 >= 0xFFFFFFFC)
                      {
                        updated = -65540;
                        if (mDNS_LoggingEnabled != 1)
                        {
                          goto LABEL_1185;
                        }

                        LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "handle_regservice_request: bad interfaceIndex %d", v2, v3, v4, v5, v6, v123);
                        goto LABEL_1184;
                      }

                      v337 = v123;
                      if (mDNS_LoggingEnabled == 1)
                      {
                        LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "handle_regservice_request: registration pending for interface index %d", v2, v3, v4, v5, v6, v123);
LABEL_703:
                        v338 = 0uLL;
                      }

LABEL_704:
                      v1276 = v338;
                      v1275 = v338;
                      v1274 = v338;
                      v1273 = v338;
                      v1272 = v338;
                      v1271 = v338;
                      v1270 = v338;
                      v1269 = v338;
                      v1268 = v338;
                      v1267 = v338;
                      v1266 = v338;
                      v1265 = v338;
                      v1264 = v338;
                      *&buf[32] = v338;
                      *&buf[16] = v338;
                      *buf = v338;
                      bzero(v1277, 0x3F1uLL);
                      bzero(v1279, 0x3F1uLL);
                      bzero(__src, 0x3F1uLL);
                      v1262 = 0u;
                      v1261 = 0u;
                      v1260 = 0u;
                      v1259 = 0u;
                      v1258 = 0u;
                      v1257 = 0u;
                      v1256 = 0u;
                      v1255 = 0u;
                      v1254 = 0u;
                      v1253 = 0u;
                      memset(aBlock, 0, sizeof(aBlock));
                      v1251 = 0u;
                      v1250 = 0u;
                      v1249 = 0u;
                      v1248 = 0u;
                      v1247 = 0u;
                      v1246 = 0u;
                      v1245 = 0u;
                      v1244 = 0u;
                      v1243 = 0u;
                      v1242 = 0u;
                      v1236 = 0u;
                      v1237 = 0u;
                      v1238 = 0u;
                      v1239 = 0u;
                      v1241 = 0u;
                      v1240 = 0u;
                      if (!v79[10])
                      {
                        goto LABEL_1182;
                      }

                      v431 = v79[11];
                      v432 = buf;
                      while (1)
                      {
                        v433 = v79[10];
                        if (v433 >= v431 || v432 >= v1277)
                        {
                          break;
                        }

                        v79[10] = v433 + 1;
                        v435 = *v433;
                        LOBYTE(v432->st_dev) = v435;
                        v432 = (v432 + 1);
                        if (!v435)
                        {
                          if (v79[10])
                          {
                            v436 = v79[11];
                            v432 = __src;
                            do
                            {
                              v437 = v79[10];
                              if (v437 >= v436 || v432 >= v1235)
                              {
                                v527 = v1235;
                                goto LABEL_1177;
                              }

                              v79[10] = v437 + 1;
                              v439 = *v437;
                              LOBYTE(v432->st_dev) = v439;
                              v432 = (v432 + 1);
                            }

                            while (v439);
                            if (v79[10])
                            {
                              v440 = v79[11];
                              v432 = v1277;
                              do
                              {
                                v441 = v79[10];
                                if (v441 >= v440 || v432 >= (&v1277[7].st_dev + 1))
                                {
                                  v527 = (&v1277[7].st_dev + 1);
                                  goto LABEL_1177;
                                }

                                v79[10] = v441 + 1;
                                v443 = *v441;
                                LOBYTE(v432->st_dev) = v443;
                                v432 = (v432 + 1);
                              }

                              while (v443);
                              if (v79[10])
                              {
                                v444 = v79[11];
                                v432 = v1279;
                                while (1)
                                {
                                  v445 = v79[10];
                                  if (v445 >= v444 || v432 >= v1291)
                                  {
                                    break;
                                  }

                                  v79[10] = v445 + 1;
                                  v447 = *v445;
                                  LOBYTE(v432->st_dev) = v447;
                                  v432 = (v432 + 1);
                                  if (!v447)
                                  {
                                    v448 = 0;
                                    *(v79 + 62) = v120;
                                    *(v79 + 63) = v123;
                                    v449 = v79[16];
                                    *v449 = v337;
                                    *(v449 + 1624) = 0;
                                    *(v449 + 8) = 0;
                                    *(v449 + 16) = 0;
                                    v450 = (v449 + 90);
                                    while (1)
                                    {
                                      v451 = *(__src + v448);
                                      *v450 = v451;
                                      if (!v451)
                                      {
                                        break;
                                      }

                                      ++v450;
                                      if (++v448 == 1008)
                                      {
                                        *v450 = 0;
                                        break;
                                      }
                                    }

                                    v453 = v79[10];
                                    v452 = v79[11];
                                    if ((v453 + 2) <= v452)
                                    {
                                      v454 = 0;
                                      v79[10] = v453 + 1;
                                      *(v449 + 24) = *v453;
                                      v820 = v79[10];
                                      v79[10] = v820 + 1;
                                      *(v449 + 25) = *v820;
                                      v821 = v79[10];
                                      v452 = v79[11];
                                      if (v821 && (v821 + 1) <= v452)
                                      {
                                        v455 = __rev16(*v821);
                                        v454 = v821 + 1;
                                      }

                                      else
                                      {
                                        v455 = 0;
                                      }
                                    }

                                    else
                                    {
                                      v454 = 0;
                                      v455 = 0;
                                      v79[10] = 0;
                                    }

                                    if (v454 + v455 <= v452)
                                    {
                                      v848 = v454;
                                    }

                                    else
                                    {
                                      v848 = 0;
                                    }

                                    *(v449 + 8) = v455;
                                    if (v454 + v455 > v452 || v454 == 0)
                                    {
                                      v850 = 0;
                                    }

                                    else
                                    {
                                      v850 = v454 + v455;
                                    }

                                    v79[10] = v850;
                                    if (!v850)
                                    {
                                      LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "%3d: DNSServiceRegister(unreadable parameters)", v245, v246, v247, v248, v249, *(v79 + 46));
                                      goto LABEL_1184;
                                    }

                                    if (!v455)
                                    {
                                      goto LABEL_1468;
                                    }

                                    v851 = malloc_type_malloc(v455, 0x283C8CD1uLL);
                                    if (v851)
                                    {
                                      *(v449 + 16) = v851;
                                      memcpy(v851, v848, *(v449 + 8));
LABEL_1468:
                                      v852 = ChopSubTypes((v449 + 90));
                                      if (v852 < 0)
                                      {
                                        LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "ERROR: handle_regservice_request - ChopSubTypes failed %s", v854, v855, v856, v857, v858, v449 + 90);
                                        goto LABEL_1832;
                                      }

                                      *(v449 + 1616) = v852;
                                      if (!*(v449 + 90) || (v859 = v449 + 1099, *(v449 + 1099) = 0, !AppendDNSNameString((v449 + 1099), (v449 + 90), v853, v854, v855, v856, v857, v858)))
                                      {
                                        LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "ERROR: handle_regservice_request - type_as_string bad %s", v854, v855, v856, v857, v858, v449 + 90);
                                        goto LABEL_1832;
                                      }

                                      v861 = buf[0];
                                      if (buf[0])
                                      {
                                        if ((v120 & 8) != 0)
                                        {
                                          v864 = (v449 + 26);
                                          v865 = (v449 + 27);
                                        }

                                        else
                                        {
                                          v862 = buf;
                                          v863 = strlen(buf);
                                          buf[TruncateUTF8ToLength(buf, v863, 0x3Fu)] = 0;
                                          v861 = buf[0];
                                          v864 = (v449 + 26);
                                          v865 = (v449 + 27);
                                          if (!buf[0])
                                          {
                                            goto LABEL_1668;
                                          }
                                        }

                                        v862 = buf;
                                        do
                                        {
                                          *v865++ = v861;
                                          v976 = *++v862;
                                          v861 = v976;
                                          if (v976)
                                          {
                                            v977 = v865 >= v449 + 90;
                                          }

                                          else
                                          {
                                            v977 = 1;
                                          }
                                        }

                                        while (!v977);
LABEL_1668:
                                        *v864 = v865 + ~v864;
                                        v947 = *v862;
                                        if (*v862)
                                        {
                                          LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "ERROR: handle_regservice_request - name bad %s", v854, v855, v856, v857, v858, buf);
                                          goto LABEL_1832;
                                        }
                                      }

                                      else
                                      {
                                        v944 = xmmword_10016FA40;
                                        v945 = *algn_10016FA50;
                                        v946 = xmmword_10016FA60;
                                        *(v449 + 74) = unk_10016FA70;
                                        *(v449 + 58) = v946;
                                        *(v449 + 42) = v945;
                                        *(v449 + 26) = v944;
                                        v947 = 1;
                                      }

                                      *(v449 + 1612) = v947;
                                      if (LOBYTE(v1277[0].st_dev))
                                      {
                                        *(v449 + 1355) = 0;
                                        aBlock[0] = 0;
                                        if (!AppendDNSNameString(aBlock, v1277, v860, v854, v855, v856, v857, v858))
                                        {
                                          LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "ERROR: handle_regservice_request - domain bad %s", v978, v979, v980, v981, v982, v1277);
                                          goto LABEL_1832;
                                        }
                                      }

                                      else
                                      {
                                        *(v449 + 1355) = 1;
                                        aBlock[0] = 0;
                                        AppendDNSNameString(aBlock, "local.", v860, v854, v855, v856, v857, v858);
                                      }

                                      if (ConstructServiceName(&v1236, (v449 + 26), (v449 + 1099), aBlock))
                                      {
                                        *(v449 + 1356) = 0;
                                        if (AppendDNSNameString((v449 + 1356), &v1279[0].sa_len, v983, v984, v985, v986, v987, v988))
                                        {
                                          *(v449 + 1613) = (v120 & 8) == 0;
                                          *(v449 + 1614) = (v120 & 0x200) != 0;
                                          if (*(v449 + 24))
                                          {
                                            v994 = CountExistingRegistrations(&v1236, *(v449 + 24));
                                            if (v994)
                                            {
                                              v1158 = (v994 + 1);
                                              v1159 = &v1236;
                                              v1154 = (v79 + 32);
                                              v1161 = bswap32(*(v449 + 24)) >> 16;
                                              LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "Client application[%d](%s) registered %d identical instances of service %##s port %u.", v995, v996, v997, v998, v999, *(v79 + 47));
                                            }
                                          }

                                          memset(v1220, 0, sizeof(v1220));
                                          ConstructServiceName(v1220, (v449 + 26), (v449 + 1099), aBlock);
                                          v1000 = _shouldLogFullRequestInfo(v79 + 51, v79 + 52);
                                          v1001 = mDNSLogCategory_mDNS;
                                          if (mDNS_SensitiveLoggingEnableCount)
                                          {
                                            v1002 = mDNSLogCategory_mDNS == mDNSLogCategory_State;
                                          }

                                          else
                                          {
                                            v1002 = 1;
                                          }

                                          v1003 = v1002;
                                          if (v1000)
                                          {
                                            if (v1003)
                                            {
                                              if (os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_DEFAULT))
                                              {
                                                logi = *(v79 + 50);
                                                v1004 = (v449 + 1099);
                                                while (1)
                                                {
                                                  if (!v1004 || (v1005 = *v1004, v1005 > 0x3F))
                                                  {
LABEL_1693:
                                                    v1006 = 257;
                                                    goto LABEL_1867;
                                                  }

                                                  if (!*v1004)
                                                  {
                                                    break;
                                                  }

                                                  v1004 += v1005 + 1;
                                                  if (&v1004[-v859] >= 256)
                                                  {
                                                    goto LABEL_1693;
                                                  }
                                                }

                                                v1006 = (v1004 - v859 + 1);
LABEL_1867:
                                                v1189 = v1006;
                                                v1113 = aBlock;
                                                while (1)
                                                {
                                                  if (!v1113 || (v1114 = *v1113, v1114 > 0x3F))
                                                  {
LABEL_1872:
                                                    v1115 = 257;
                                                    goto LABEL_1881;
                                                  }

                                                  if (!*v1113)
                                                  {
                                                    break;
                                                  }

                                                  v1113 += v1114 + 1;
                                                  if (v1113 - aBlock >= 256)
                                                  {
                                                    goto LABEL_1872;
                                                  }
                                                }

                                                v1115 = (v1113 - aBlock + 1);
LABEL_1881:
                                                v1179 = v1115;
                                                v1119 = bswap32(*(v449 + 24)) >> 16;
                                                v1121 = *(v79 + 62);
                                                v1120 = *(v79 + 63);
                                                v1122 = *(v79 + 47);
                                                v1123 = mDNS_DomainNameFNV1aHash(v1220);
                                                *v1203 = 67112195;
                                                *&v1203[4] = logi;
                                                LOWORD(v1204) = 2160;
                                                *(&v1204 + 2) = 1752392040;
                                                WORD5(v1204) = 1040;
                                                HIDWORD(v1204) = v1189;
                                                *v1205 = 2101;
                                                *&v1205[2] = v449 + 1099;
                                                *&v1205[10] = 2160;
                                                *&v1205[12] = 1752392040;
                                                *&v1205[20] = 1040;
                                                *&v1205[22] = v1179;
                                                v1206 = 2101;
                                                v1207 = aBlock;
                                                v1208 = 1024;
                                                v1209 = v1119;
                                                v1210 = 1024;
                                                v1211 = v1121;
                                                v1212 = 1024;
                                                v1213 = v1120;
                                                v1214 = 1024;
                                                v1215 = v1122;
                                                v1216 = 2082;
                                                v1217 = v79 + 32;
                                                v1218 = 1024;
                                                v1219 = v1123;
                                                v1110 = v1001;
                                                v1111 = "[R%u] DNSServiceRegister START -- service type: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P, domain: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P, port: %u, flags: 0x%X, interface index: %d, client pid: %d (%{public}s), name hash: %x";
                                                goto LABEL_1884;
                                              }

LABEL_1886:
                                              v79[14] = 0;
                                              if (_os_feature_enabled_impl() && (*(v449 + 1355) || IsLocalDomain(aBlock)))
                                              {
                                                updated = _handle_regservice_request_with_trust(v79, aBlock);
                                                if (updated == -65555)
                                                {
                                                  v1129 = *(v449 + 16);
                                                  if (v1129)
                                                  {
                                                    free(v1129);
                                                    *(v449 + 16) = 0;
                                                  }

                                                  updated = -65555;
                                                }

                                                goto LABEL_1185;
                                              }

                                              Domains = _handle_regservice_request_start(v79, aBlock);
LABEL_294:
                                              updated = Domains;
                                              goto LABEL_1185;
                                            }

                                            logj = mDNSLogCategory_mDNS_redacted;
                                            if (!os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEFAULT))
                                            {
                                              goto LABEL_1886;
                                            }

                                            v1188 = *(v79 + 50);
                                            v1105 = (v449 + 1099);
                                            while (1)
                                            {
                                              if (!v1105 || (v1106 = *v1105, v1106 > 0x3F))
                                              {
LABEL_1862:
                                                v1107 = 257;
                                                goto LABEL_1874;
                                              }

                                              if (!*v1105)
                                              {
                                                break;
                                              }

                                              v1105 += v1106 + 1;
                                              if (&v1105[-v859] >= 256)
                                              {
                                                goto LABEL_1862;
                                              }
                                            }

                                            v1107 = (v1105 - v859 + 1);
LABEL_1874:
                                            v1178 = v1107;
                                            v1116 = aBlock;
                                            while (1)
                                            {
                                              if (!v1116 || (v1117 = *v1116, v1117 > 0x3F))
                                              {
LABEL_1879:
                                                v1118 = 257;
                                                goto LABEL_1883;
                                              }

                                              if (!*v1116)
                                              {
                                                break;
                                              }

                                              v1116 += v1117 + 1;
                                              if (v1116 - aBlock >= 256)
                                              {
                                                goto LABEL_1879;
                                              }
                                            }

                                            v1118 = (v1116 - aBlock + 1);
LABEL_1883:
                                            v1124 = bswap32(*(v449 + 24)) >> 16;
                                            v1126 = *(v79 + 62);
                                            v1125 = *(v79 + 63);
                                            v1127 = *(v79 + 47);
                                            v1128 = mDNS_DomainNameFNV1aHash(v1220);
                                            *v1203 = 67112195;
                                            *&v1203[4] = v1188;
                                            LOWORD(v1204) = 2160;
                                            *(&v1204 + 2) = 1752392040;
                                            WORD5(v1204) = 1040;
                                            HIDWORD(v1204) = v1178;
                                            *v1205 = 2101;
                                            *&v1205[2] = v449 + 1099;
                                            *&v1205[10] = 2160;
                                            *&v1205[12] = 1752392040;
                                            *&v1205[20] = 1040;
                                            *&v1205[22] = v1118;
                                            v1206 = 2101;
                                            v1207 = aBlock;
                                            v1208 = 1024;
                                            v1209 = v1124;
                                            v1210 = 1024;
                                            v1211 = v1126;
                                            v1212 = 1024;
                                            v1213 = v1125;
                                            v1214 = 1024;
                                            v1215 = v1127;
                                            v1216 = 2082;
                                            v1217 = v79 + 32;
                                            v1218 = 1024;
                                            v1219 = v1128;
                                            v1110 = logj;
                                            v1111 = "[R%u] DNSServiceRegister START -- service type: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P, domain: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P, port: %u, flags: 0x%X, interface index: %d, client pid: %d (%{public}s), name hash: %x";
LABEL_1884:
                                            v1112 = 100;
                                          }

                                          else
                                          {
                                            if (v1003)
                                            {
                                              if (!os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_DEFAULT))
                                              {
                                                goto LABEL_1886;
                                              }
                                            }

                                            else
                                            {
                                              v1001 = mDNSLogCategory_mDNS_redacted;
                                              if (!os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEFAULT))
                                              {
                                                goto LABEL_1886;
                                              }
                                            }

                                            v1108 = *(v79 + 50);
                                            v1109 = mDNS_DomainNameFNV1aHash(v1220);
                                            *v1203 = 67109376;
                                            *&v1203[4] = v1108;
                                            LOWORD(v1204) = 1024;
                                            *(&v1204 + 2) = v1109;
                                            v1110 = v1001;
                                            v1111 = "[R%u] DNSServiceRegister START -- name hash: %x";
                                            v1112 = 14;
                                          }

                                          _os_log_impl(&_mh_execute_header, v1110, OS_LOG_TYPE_DEFAULT, v1111, v1203, v1112);
                                          goto LABEL_1886;
                                        }

                                        LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "ERROR: handle_regservice_request - host bad %s", v989, v990, v991, v992, v993, v1279);
                                      }

                                      else
                                      {
                                        v1154 = (v449 + 1099);
                                        v1158 = aBlock;
                                        LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "ERROR: handle_regservice_request - Couldn't ConstructServiceName from, “%#s” “%##s” “%##s”", v984, v985, v986, v987, v988, v449 + 26);
                                      }

LABEL_1832:
                                      v1101 = *(v449 + 16);
                                      if (v1101)
                                      {
                                        free(v1101);
                                      }

                                      *(v449 + 16) = 0;
LABEL_1184:
                                      updated = -65540;
                                      goto LABEL_1185;
                                    }

LABEL_1950:
                                    __break(1u);
                                    JUMPOUT(0x10002A5F8);
                                  }
                                }

                                v527 = v1291;
LABEL_1177:
                                v456 = v432 == v527;
LABEL_1178:
                                v724 = v456;
                                *(&v432->st_dev - v724) = 0;
                                v79[10] = 0;
                              }

                              else
                              {
                                v1279[0].sa_len = 0;
                              }
                            }

                            else
                            {
                              LOBYTE(v1277[0].st_dev) = 0;
                            }
                          }

                          else
                          {
                            LOBYTE(__src[0]) = 0;
                          }

LABEL_1182:
                          v643 = mDNSLogCategory_Default;
                          v644 = "ERROR: handle_regservice_request - Couldn't read name/regtype/domain";
LABEL_1183:
                          LogMsgWithLevel(v643, OS_LOG_TYPE_DEFAULT, v644, v245, v246, v247, v248, v249, v1153);
                          goto LABEL_1184;
                        }
                      }

                      v456 = v432 == v1277;
                      goto LABEL_1178;
                    case 6:
                      if (v79[19])
                      {
                        goto LABEL_208;
                      }

                      v113 = malloc_type_calloc(1uLL, 0x118uLL, 0xB2284C25uLL);
                      if (!v113)
                      {
                        goto LABEL_1950;
                      }

                      v79[19] = v113;
LABEL_208:
                      v114 = 0;
                      v115 = 0;
                      v116 = v79[10];
                      if (v116)
                      {
                        v117 = v79[11];
                        v118 = 0;
                        if ((v116 + 1) <= v117)
                        {
                          v118 = 0;
                          v114 = 0;
                          v115 = bswap32(*v116);
                          v79[10] = v116 + 1;
                          if (v116 != -4 && (v116 + 2) <= v117)
                          {
                            v118 = bswap32(v116[1]);
                            v114 = v116 + 2;
                          }
                        }
                      }

                      else
                      {
                        v118 = 0;
                      }

                      v79[10] = v114;
                      v361 = mDNSPlatformInterfaceIDfromInterfaceIndex(v118, v0, v1, v2, v3, v4, v5, v6);
                      v362 = v361;
                      if (!v118 || v361)
                      {
                        goto LABEL_579;
                      }

                      if (v118 >= 0xFFFFFFFC)
                      {
                        updated = -65540;
                        if (mDNS_LoggingEnabled != 1)
                        {
                          goto LABEL_1185;
                        }

                        LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "handle_browse_request: bad interfaceIndex %d", v2, v3, v4, v5, v6, v118);
                        goto LABEL_1184;
                      }

                      v362 = v118;
                      if (mDNS_LoggingEnabled == 1)
                      {
                        LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "handle_browse_request: browse pending for interface index %d", v2, v3, v4, v5, v6, v118);
                      }

LABEL_579:
                      bzero(v1277, 0x3F1uLL);
                      bzero(v1279, 0x3F1uLL);
                      v1233 = 0;
                      v1232 = 0;
                      v1231 = 0;
                      v1230 = 0;
                      v1229 = 0;
                      v1228 = 0;
                      v1227 = 0;
                      v1226 = 0;
                      v1225 = 0;
                      v1224 = 0;
                      v1223 = 0;
                      memset(v1222, 0, sizeof(v1222));
                      memset(__src, 0, sizeof(__src));
                      v1276 = 0u;
                      v1275 = 0u;
                      v1274 = 0u;
                      v1273 = 0u;
                      v1272 = 0u;
                      v1271 = 0u;
                      v1270 = 0u;
                      v1269 = 0u;
                      v1268 = 0u;
                      v1267 = 0u;
                      memset(buf, 0, sizeof(buf));
                      v1264 = 0u;
                      v1266 = 0u;
                      v1265 = 0u;
                      updated = -65540;
                      if (!v79[10])
                      {
                        goto LABEL_1185;
                      }

                      v363 = v79[11];
                      v364 = v1277;
                      while (1)
                      {
                        v365 = v79[10];
                        if (v365 >= v363 || v364 >= (&v1277[7].st_dev + 1))
                        {
                          break;
                        }

                        v79[10] = v365 + 1;
                        v367 = *v365;
                        LOBYTE(v364->st_dev) = v367;
                        v364 = (v364 + 1);
                        if (!v367)
                        {
                          updated = -65540;
                          if (!v79[10])
                          {
                            goto LABEL_1185;
                          }

                          v368 = v79[11];
                          v364 = v1279;
                          while (1)
                          {
                            v369 = v79[10];
                            if (v369 >= v368 || v364 >= v1291)
                            {
                              break;
                            }

                            v79[10] = v369 + 1;
                            v371 = *v369;
                            LOBYTE(v364->st_dev) = v371;
                            v364 = (v364 + 1);
                            if (!v371)
                            {
                              if (!v79[10])
                              {
                                LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "%3d: DNSServiceBrowse(unreadable parameters)", v2, v3, v4, v5, v6, *(v79 + 46));
                                goto LABEL_1184;
                              }

                              _get_signed_data_tlvs(v79, 0);
                              *(v79 + 62) = v115;
                              *(v79 + 63) = v118;
                              LOBYTE(__src[0]) = 0;
                              v372 = ChopSubTypes(v1277);
                              updated = -65540;
                              if (v372 > 1)
                              {
                                goto LABEL_1185;
                              }

                              if (v372 == 1)
                              {
                                v373 = strlen(v1277);
                                updated = -65540;
                                if (!AppendDNSNameString(__src, &v1277[0].st_dev + v373 + 1, v374, v375, v376, v377, v378, v379))
                                {
                                  goto LABEL_1185;
                                }
                              }

                              updated = -65540;
                              if (!LOBYTE(v1277[0].st_dev))
                              {
                                goto LABEL_1185;
                              }

                              updated = -65540;
                              if (!AppendDNSNameString(__src, v1277, v1, v2, v3, v4, v5, v6))
                              {
                                goto LABEL_1185;
                              }

                              buf[0] = 0;
                              updated = -65540;
                              if (!AppendDNSNameString(buf, v1277, v1, v2, v3, v4, v5, v6))
                              {
                                goto LABEL_1185;
                              }

                              if (buf[0] >= 0x10u && !v1279[0].sa_len)
                              {
                                for (i = 0; ; ++i)
                                {
                                  *(&v1279[0].sa_len + i) = aLocal[i];
                                  if (i == 6)
                                  {
                                    break;
                                  }
                                }
                              }

                              v746 = v79[19];
                              *(v746 + 9) = (v115 & 0x400) != 0;
                              *v746 = v362;
                              v747 = __src;
                              while (1)
                              {
                                if (!v747)
                                {
                                  goto LABEL_1496;
                                }

                                v748 = *v747;
                                if (v748 > 0x3F)
                                {
                                  goto LABEL_1496;
                                }

                                if (!*v747)
                                {
                                  break;
                                }

                                v747 = (v747 + v748 + 1);
                                if (v747 - __src > 255)
                                {
                                  goto LABEL_1496;
                                }
                              }

                              v876 = v747 - __src + 1;
                              if (v876 > 0x100u)
                              {
LABEL_1496:
                                *(v746 + 10) = 0;
                              }

                              else
                              {
                                memcpy((v746 + 10), __src, v876);
                              }

                              *(v746 + 8) = v1279[0].sa_len == 0;
                              *(v746 + 272) = 0;
                              v877 = _shouldLogFullRequestInfo(v79 + 51, v79 + 52);
                              v878 = mDNSLogCategory_mDNS;
                              if (mDNS_SensitiveLoggingEnableCount)
                              {
                                v879 = mDNSLogCategory_mDNS == mDNSLogCategory_State;
                              }

                              else
                              {
                                v879 = 1;
                              }

                              v880 = v879;
                              if (v877)
                              {
                                if (v880)
                                {
                                  if (os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_DEFAULT))
                                  {
                                    v887 = *(v79 + 50);
                                    v888 = v746 + 10;
                                    v889 = (v746 + 10);
                                    while (1)
                                    {
                                      if (!v889 || (v890 = *v889, v890 > 0x3F))
                                      {
LABEL_1511:
                                        v891 = 257;
                                        goto LABEL_1696;
                                      }

                                      if (!*v889)
                                      {
                                        break;
                                      }

                                      v889 += v890 + 1;
                                      if (&v889[-v888] >= 256)
                                      {
                                        goto LABEL_1511;
                                      }
                                    }

                                    v891 = (v889 - v888 + 1);
                                    goto LABEL_1696;
                                  }

LABEL_1698:
                                  if (*(v746 + 8))
                                  {
                                    v1010 = mDNSLogCategory_mDNS;
                                    if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_mDNS == mDNSLogCategory_State)
                                    {
                                      if (os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_DEFAULT))
                                      {
                                        goto LABEL_1704;
                                      }
                                    }

                                    else
                                    {
                                      v1010 = mDNSLogCategory_mDNS_redacted;
                                      if (os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEFAULT))
                                      {
LABEL_1704:
                                        v1018 = *(v79 + 50);
                                        v1019 = *(v79 + 47);
                                        *aBlock = 67109634;
                                        *&aBlock[4] = v1018;
                                        *&aBlock[8] = 1024;
                                        *&aBlock[10] = v1019;
                                        *&aBlock[14] = 2082;
                                        *&aBlock[16] = v79 + 32;
                                        _os_log_impl(&_mh_execute_header, v1010, OS_LOG_TYPE_DEFAULT, "[R%u] DNSServiceBrowse Start domain enumeration for WAB and mDNS PID[%d](%{public}s)", aBlock, 0x18u);
                                      }
                                    }

                                    uDNS_StartWABQueries(2, v1011, v1012, v1013, v1014, v1015, v1016, v1017);
                                    mDNS_StartDomainEnumeration();
                                  }

                                  v79[14] = 0;
                                  memset(aBlock, 0, sizeof(aBlock));
                                  v1262 = 0u;
                                  v1261 = 0u;
                                  v1260 = 0u;
                                  v1259 = 0u;
                                  v1258 = 0u;
                                  v1257 = 0u;
                                  v1256 = 0u;
                                  v1255 = 0u;
                                  v1253 = 0u;
                                  v1254 = 0u;
                                  updated = -65540;
                                  if (!AppendDNSNameString(aBlock, &v1279[0].sa_len, v881, v882, v883, v884, v885, v886))
                                  {
                                    goto LABEL_1185;
                                  }

                                  if (_os_feature_enabled_impl() && (*(v746 + 8) || IsLocalDomain(aBlock) || *(v746 + 9)))
                                  {
                                    Domains = _handle_browse_request_with_trust(v79, &v1279[0].sa_len);
                                  }

                                  else
                                  {
                                    Domains = _handle_browse_request_start(v79, &v1279[0].sa_len, v1020, v1021, v1022, v1023, v1024, v1025);
                                  }

                                  goto LABEL_294;
                                }

                                v878 = mDNSLogCategory_mDNS_redacted;
                                if (!os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEFAULT))
                                {
                                  goto LABEL_1698;
                                }

                                v887 = *(v79 + 50);
                                v892 = v746 + 10;
                                v893 = (v746 + 10);
                                while (1)
                                {
                                  if (!v893 || (v894 = *v893, v894 > 0x3F))
                                  {
LABEL_1521:
                                    v891 = 257;
                                    goto LABEL_1696;
                                  }

                                  if (!*v893)
                                  {
                                    break;
                                  }

                                  v893 += v894 + 1;
                                  if (&v893[-v892] >= 256)
                                  {
                                    goto LABEL_1521;
                                  }
                                }

                                v891 = (v893 - v892 + 1);
LABEL_1696:
                                v1007 = *(v79 + 62);
                                v1008 = *(v79 + 63);
                                v1009 = *(v79 + 47);
                                *aBlock = 67111427;
                                *&aBlock[4] = v887;
                                *&aBlock[8] = 2160;
                                *&aBlock[10] = 1752392040;
                                *&aBlock[18] = 1040;
                                *&aBlock[20] = v891;
                                *&aBlock[24] = 2101;
                                *&aBlock[26] = v746 + 10;
                                *&aBlock[34] = 2160;
                                *&aBlock[36] = 1752392040;
                                *&aBlock[44] = 2085;
                                *&aBlock[46] = v1279;
                                *&aBlock[54] = 1024;
                                *&aBlock[56] = v1007;
                                *&aBlock[60] = 1024;
                                *&aBlock[62] = v1008;
                                *&aBlock[66] = 1024;
                                *&aBlock[68] = v1009;
                                *&aBlock[72] = 2082;
                                *&aBlock[74] = v79 + 32;
                                v896 = v878;
                                v897 = "[R%u] DNSServiceBrowse START -- service type: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P, domain: %{sensitive, mask.hash}s, flags: 0x%X, interface index: %d, client pid: %d (%{public}s), ";
                                v898 = 82;
                              }

                              else
                              {
                                if (v880)
                                {
                                  if (!os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_DEFAULT))
                                  {
                                    goto LABEL_1698;
                                  }
                                }

                                else
                                {
                                  v878 = mDNSLogCategory_mDNS_redacted;
                                  if (!os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEFAULT))
                                  {
                                    goto LABEL_1698;
                                  }
                                }

                                v895 = *(v79 + 50);
                                *aBlock = 67109120;
                                *&aBlock[4] = v895;
                                v896 = v878;
                                v897 = "[R%u] DNSServiceBrowse START -- ";
                                v898 = 8;
                              }

                              _os_log_impl(&_mh_execute_header, v896, OS_LOG_TYPE_DEFAULT, v897, aBlock, v898);
                              goto LABEL_1698;
                            }
                          }

                          v381 = v1291;
LABEL_851:
                          v526 = v364 - (v364 == v381);
                          goto LABEL_912;
                        }
                      }

                      v381 = (&v1277[7].st_dev + 1);
                      goto LABEL_851;
                    case 7:
                      if (v79[17])
                      {
                        goto LABEL_351;
                      }

                      v216 = malloc_type_calloc(1uLL, 0x590uLL, 0x567B2EAuLL);
                      if (!v216)
                      {
                        goto LABEL_1950;
                      }

                      v79[17] = v216;
LABEL_351:
                      v217 = 0;
                      v218 = v79[10];
                      if (!v218 || (v219 = v79[11], (v218 + 1) > v219) || (v220 = v218 + 2, v217 = bswap32(*v218), v79[10] = v218 + 1, v218 == -4) || v220 > v219)
                      {
                        v221 = 0;
                        v79[10] = 0;
                      }

                      else
                      {
                        v221 = bswap32(v218[1]);
                        v79[10] = v220;
                        if (v221 == -3)
                        {
                          if (mDNS_LoggingEnabled == 1)
                          {
                            LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "handle_resolve_request: mapping kDNSServiceInterfaceIndexP2P to kDNSServiceInterfaceIndexAny + kDNSServiceFlagsIncludeP2P", v2, v3, v4, v5, v6, v1153);
                          }

                          v221 = 0;
                          v217 |= 0x20000u;
                        }
                      }

                      v280 = mDNSPlatformInterfaceIDfromInterfaceIndex(v221, v0, v1, v2, v3, v4, v5, v6);
                      v1278 = v280;
                      v281 = 0;
                      if (!v221 || v280)
                      {
                        goto LABEL_741;
                      }

                      if (v221 == 0 || v221 >= 0xFFFFFFFC)
                      {
                        updated = -65540;
                        if (mDNS_LoggingEnabled != 1)
                        {
                          goto LABEL_1185;
                        }

                        LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "handle_resolve_request: bad interfaceIndex %d", v2, v3, v4, v5, v6, v221);
                        goto LABEL_1184;
                      }

                      v1278 = v221;
                      if (mDNS_LoggingEnabled == 1)
                      {
                        LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "handle_resolve_request: resolve pending for interface index %d", v2, v3, v4, v5, v6, v221);
                        v281 = 0;
                      }

LABEL_741:
                      v1233 = v281;
                      v1232 = v281;
                      v1231 = v281;
                      v1230 = v281;
                      v1229 = v281;
                      v1228 = v281;
                      v1227 = v281;
                      v1226 = v281;
                      v1225 = v281;
                      v1224 = v281;
                      v1223 = v281;
                      v1222[1] = v281;
                      v1222[0] = v281;
                      *&__src[8] = v281;
                      *&__src[4] = v281;
                      *__src = v281;
                      bzero(v1279, 0x3F1uLL);
                      bzero(v1277, 0x4F8uLL);
                      if (!v79[10])
                      {
                        goto LABEL_1036;
                      }

                      v457 = v79[11];
                      v458 = __src;
                      while (1)
                      {
                        v459 = v79[10];
                        if (v459 >= v457 || v458 >= v1234)
                        {
                          break;
                        }

                        v79[10] = v459 + 1;
                        v461 = *v459;
                        LOBYTE(v458->st_dev) = v461;
                        v458 = (v458 + 1);
                        if (!v461)
                        {
                          if (v79[10])
                          {
                            v462 = v79[11];
                            v458 = v1277;
                            do
                            {
                              v463 = v79[10];
                              if (v463 >= v462 || v458 >= (&v1277[7].st_dev + 1))
                              {
                                v528 = (&v1277[7].st_dev + 1);
                                goto LABEL_1031;
                              }

                              v79[10] = v463 + 1;
                              v465 = *v463;
                              LOBYTE(v458->st_dev) = v465;
                              v458 = (v458 + 1);
                            }

                            while (v465);
                            if (v79[10])
                            {
                              v466 = v79[11];
                              v458 = v1279;
                              while (1)
                              {
                                v467 = v79[10];
                                if (v467 >= v466 || v458 >= v1291)
                                {
                                  break;
                                }

                                v79[10] = v467 + 1;
                                v469 = *v467;
                                LOBYTE(v458->st_dev) = v469;
                                v458 = (v458 + 1);
                                if (!v469)
                                {
                                  if (!v79[10])
                                  {
                                    LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "%3d: DNSServiceResolve(unreadable parameters)", v245, v246, v247, v248, v249, *(v79 + 46));
                                    goto LABEL_1184;
                                  }

                                  signed_browse_tlvs = get_signed_browse_tlvs(v79);
                                  if (signed_browse_tlvs)
                                  {
                                    updated = signed_browse_tlvs;
                                    LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "%3d: handle_resolve_request err reading Validation TLVS", v471, v472, v473, v474, v475, *(v79 + 46));
                                    goto LABEL_1185;
                                  }

                                  v798 = &v1277[7].st_dev + 1;
                                  if ((build_domainname_from_strings(&v1277[7].st_dev + 1, __src, v1277, &v1279[0].sa_len, v472, v473, v474, v475) & 0x80000000) != 0)
                                  {
                                    v1158 = v1279;
                                    v1154 = v1277;
                                    LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "ERROR: handle_resolve_request bad “%s” “%s” “%s”", v800, v801, v802, v803, v804, __src);
                                    goto LABEL_1184;
                                  }

                                  *(v79 + 62) = v217;
                                  *(v79 + 63) = v221;
                                  v805 = v79[17];
                                  *(v805 + 832) = v1278;
                                  *(v805 + 1020) = v217;
                                  while (1)
                                  {
                                    if (!v798)
                                    {
                                      goto LABEL_1526;
                                    }

                                    v806 = *v798;
                                    if (v806 > 0x3F)
                                    {
                                      goto LABEL_1526;
                                    }

                                    if (!*v798)
                                    {
                                      break;
                                    }

                                    v798 += v806 + 1;
                                    if (v798 - (&v1277[7].st_dev + 1) > 255)
                                    {
                                      goto LABEL_1526;
                                    }
                                  }

                                  if ((v798 - (&v1277[7].st_dev + 1) + 1) > 0x100u)
                                  {
LABEL_1526:
                                    *(v805 + 1072) = 0;
                                  }

                                  else
                                  {
                                    memcpy((v805 + 1072), &v1277[7].st_dev + 1, (v798 - (&v1277[7].st_dev + 1) + 1));
                                  }

                                  *(v805 + 1038) = 65569;
                                  *(v805 + 1328) = BYTE1(v217) & 1;
                                  *(v805 + 1329) = 1;
                                  *(v805 + 1330) = (v217 & 0x400) != 0;
                                  *(v805 + 1331) = (v217 & 0x1000) != 0;
                                  *(v805 + 1332) = 0;
                                  *(v805 + 1337) = 0;
                                  *(v805 + 1335) = (v217 & 0x40000) != 0;
                                  *(v805 + 1336) = (v217 & 0x80000) != 0;
                                  *(v805 + 1349) = 0;
                                  *(v805 + 940) = *(v79 + 47);
                                  *(v805 + 944) = *(v79 + 49);
                                  *(v805 + 848) = resolve_result_callback;
                                  *(v805 + 872) = v79;
                                  *(v805 + 136) = v1278;
                                  *(v805 + 324) = v217;
                                  v899 = &v1277[7].st_dev + 1;
                                  v900 = &v1277[7].st_dev + 1;
                                  while (1)
                                  {
                                    if (!v900)
                                    {
                                      goto LABEL_1535;
                                    }

                                    v901 = *v900;
                                    if (v901 > 0x3F)
                                    {
                                      goto LABEL_1535;
                                    }

                                    if (!*v900)
                                    {
                                      break;
                                    }

                                    v900 += v901 + 1;
                                    if (v900 - (&v1277[7].st_dev + 1) > 255)
                                    {
                                      goto LABEL_1535;
                                    }
                                  }

                                  v902 = v900 - (&v1277[7].st_dev + 1) + 1;
                                  if (v902 > 0x100u)
                                  {
LABEL_1535:
                                    *(v805 + 376) = 0;
                                  }

                                  else
                                  {
                                    memcpy((v805 + 376), &v1277[7].st_dev + 1, v902);
                                  }

                                  *(v805 + 342) = 65552;
                                  *(v805 + 632) = BYTE1(v217) & 1;
                                  *(v805 + 633) = 1;
                                  *(v805 + 634) = (v217 & 0x400) != 0;
                                  *(v805 + 635) = (v217 & 0x1000) != 0;
                                  *(v805 + 636) = 0;
                                  *(v805 + 641) = 0;
                                  *(v805 + 639) = 0;
                                  *(v805 + 640) = (v217 & 0x80000) != 0;
                                  *(v805 + 653) = 0;
                                  *(v805 + 244) = *(v79 + 47);
                                  *(v805 + 248) = *(v79 + 49);
                                  *(v805 + 152) = resolve_result_callback;
                                  *(v805 + 176) = v79;
                                  *(v805 + 1412) = 0;
                                  v903 = mDNS_TimeNow(mDNSStorage, v899, v799, v800, v801, v802, v803, v804) + 130000;
                                  if (v903 <= 1)
                                  {
                                    v903 = 1;
                                  }

                                  *(v805 + 1408) = v903;
                                  *(v805 + 1420) = 0;
                                  v904 = _shouldLogFullRequestInfo(v79 + 51, v79 + 52);
                                  v905 = v805 + 1072;
                                  v906 = mDNSLogCategory_mDNS;
                                  if (mDNS_SensitiveLoggingEnableCount)
                                  {
                                    v907 = mDNSLogCategory_mDNS == mDNSLogCategory_State;
                                  }

                                  else
                                  {
                                    v907 = 1;
                                  }

                                  v908 = v907;
                                  if (v904)
                                  {
                                    if (v908)
                                    {
                                      if (os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_DEFAULT))
                                      {
                                        logh = *(v79 + 50);
                                        v915 = (v805 + 1072);
                                        while (1)
                                        {
                                          if (!v915 || (v916 = *v915, v916 > 0x3F))
                                          {
LABEL_1552:
                                            v917 = 257;
                                            goto LABEL_1797;
                                          }

                                          if (!*v915)
                                          {
                                            break;
                                          }

                                          v915 += v916 + 1;
                                          if (&v915[-v905] >= 256)
                                          {
                                            goto LABEL_1552;
                                          }
                                        }

                                        v917 = (v915 - v905 + 1);
                                        goto LABEL_1797;
                                      }

LABEL_1799:
                                      v79[14] = 0;
                                      v1087 = v79[7];
                                      if (v1087)
                                      {
                                        if (*(v1087 + 16) == &_mdns_signed_browse_result_kind && mdns_signed_browse_result_contains(v79[7], &v1277[7].st_dev + 1, v221))
                                        {
                                          uuid = _mdns_signed_browse_result_get_uuid(v1087);
                                          is_signed_result_uuid_valid = mdns_system_is_signed_result_uuid_valid(uuid);
                                          v1090 = mDNSLogCategory_mDNS;
                                          if (mDNS_SensitiveLoggingEnableCount)
                                          {
                                            v1091 = mDNSLogCategory_mDNS == mDNSLogCategory_State;
                                          }

                                          else
                                          {
                                            v1091 = 1;
                                          }

                                          v1092 = v1091;
                                          if (is_signed_result_uuid_valid)
                                          {
                                            if (v1092)
                                            {
                                              if (os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_DEBUG))
                                              {
LABEL_1849:
                                                v1104 = *(v79 + 50);
                                                *buf = 67109120;
                                                *&buf[4] = v1104;
                                                _os_log_impl(&_mh_execute_header, v1090, OS_LOG_TYPE_DEBUG, "[R%u] DNSServiceResolve: Allowing signed result", buf, 8u);
                                              }
                                            }

                                            else
                                            {
                                              v1090 = mDNSLogCategory_mDNS_redacted;
                                              if (os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEBUG))
                                              {
                                                goto LABEL_1849;
                                              }
                                            }

                                            v1103 = 0;
LABEL_1841:
                                            v1276 = 0u;
                                            v1275 = 0u;
                                            v1274 = 0u;
                                            v1273 = 0u;
                                            v1272 = 0u;
                                            v1271 = 0u;
                                            v1270 = 0u;
                                            v1269 = 0u;
                                            v1268 = 0u;
                                            v1267 = 0u;
                                            v1266 = 0u;
                                            v1265 = 0u;
                                            v1264 = 0u;
                                            memset(buf, 0, sizeof(buf));
                                            updated = -65540;
                                            if (!AppendDNSNameString(buf, &v1279[0].sa_len, v909, v910, v911, v912, v913, v914))
                                            {
                                              goto LABEL_1185;
                                            }

                                            if (v1103 && _os_feature_enabled_impl() && (IsLocalDomain(buf) || *(v805 + 1330)))
                                            {
                                              Domains = _handle_resolve_request_with_trust(v79, v1277);
                                            }

                                            else
                                            {
                                              Domains = _handle_resolve_request_start(v79, v1277);
                                            }

                                            goto LABEL_294;
                                          }

                                          if (v1092)
                                          {
                                            updated = -65570;
                                            if (!os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_ERROR))
                                            {
                                              goto LABEL_1185;
                                            }
                                          }

                                          else
                                          {
                                            v1090 = mDNSLogCategory_mDNS_redacted;
                                            updated = -65570;
                                            if (!os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_ERROR))
                                            {
                                              goto LABEL_1185;
                                            }
                                          }

                                          v1100 = *(v79 + 50);
                                          *buf = 67109120;
                                          *&buf[4] = v1100;
                                          v783 = buf;
                                          v784 = v1090;
                                          v785 = OS_LOG_TYPE_ERROR;
                                          v786 = "[R%u] DNSServiceResolve: Signed result UUID revoked.";
LABEL_1298:
                                          v787 = 8;
LABEL_1608:
                                          _os_log_impl(&_mh_execute_header, v784, v785, v786, v783, v787);
                                          goto LABEL_1185;
                                        }

                                        v1093 = mDNSLogCategory_mDNS;
                                        if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_mDNS == mDNSLogCategory_State)
                                        {
                                          if (os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_ERROR))
                                          {
                                            v1094 = *(v79 + 50);
                                            v1098 = (v805 + 1072);
                                            while (1)
                                            {
                                              if (!v1098 || (v1099 = *v1098, v1099 > 0x3F))
                                              {
LABEL_1827:
                                                v1097 = 257;
                                                goto LABEL_1837;
                                              }

                                              if (!*v1098)
                                              {
                                                break;
                                              }

                                              v1098 += v1099 + 1;
                                              if (&v1098[-v905] >= 256)
                                              {
                                                goto LABEL_1827;
                                              }
                                            }

                                            v1097 = (v1098 - v905 + 1);
LABEL_1837:
                                            *buf = 67110147;
                                            *&buf[4] = v1094;
                                            *&buf[8] = 2160;
                                            *&buf[10] = 1752392040;
                                            *&buf[18] = 1040;
                                            *&buf[20] = v1097;
                                            *&buf[24] = 2101;
                                            *&buf[26] = v805 + 1072;
                                            *&buf[34] = 1024;
                                            *&buf[36] = v221;
                                            _os_log_impl(&_mh_execute_header, v1093, OS_LOG_TYPE_ERROR, "[R%u] DNSServiceResolve: Signed result does not cover service: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P, ifindex: %u.", buf, 0x28u);
                                          }
                                        }

                                        else
                                        {
                                          v1093 = mDNSLogCategory_mDNS_redacted;
                                          if (os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_ERROR))
                                          {
                                            v1094 = *(v79 + 50);
                                            v1095 = (v805 + 1072);
                                            while (1)
                                            {
                                              if (!v1095 || (v1096 = *v1095, v1096 > 0x3F))
                                              {
LABEL_1820:
                                                v1097 = 257;
                                                goto LABEL_1837;
                                              }

                                              if (!*v1095)
                                              {
                                                break;
                                              }

                                              v1095 += v1096 + 1;
                                              if (&v1095[-v905] >= 256)
                                              {
                                                goto LABEL_1820;
                                              }
                                            }

                                            v1097 = (v1095 - v905 + 1);
                                            goto LABEL_1837;
                                          }
                                        }

                                        *(v79 + 290) = 0;
                                        v1102 = v79[7];
                                        if (v1102)
                                        {
                                          os_release(v1102);
                                          v79[7] = 0;
                                        }
                                      }

                                      v1103 = 1;
                                      goto LABEL_1841;
                                    }

                                    v906 = mDNSLogCategory_mDNS_redacted;
                                    if (!os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEFAULT))
                                    {
                                      goto LABEL_1799;
                                    }

                                    logh = *(v79 + 50);
                                    v918 = (v805 + 1072);
                                    while (1)
                                    {
                                      if (!v918 || (v919 = *v918, v919 > 0x3F))
                                      {
LABEL_1562:
                                        v917 = 257;
                                        goto LABEL_1797;
                                      }

                                      if (!*v918)
                                      {
                                        break;
                                      }

                                      v918 += v919 + 1;
                                      if (&v918[-v905] >= 256)
                                      {
                                        goto LABEL_1562;
                                      }
                                    }

                                    v917 = (v918 - v905 + 1);
LABEL_1797:
                                    v1187 = v917;
                                    v1083 = *(v79 + 62);
                                    v1084 = *(v79 + 63);
                                    v1085 = *(v79 + 47);
                                    v1086 = mDNS_DomainNameFNV1aHash((v805 + 1072));
                                    *buf = 67111171;
                                    *&buf[4] = logh;
                                    *&buf[8] = 2160;
                                    *&buf[10] = 1752392040;
                                    *&buf[18] = 1040;
                                    *&buf[20] = v1187;
                                    *&buf[24] = 2101;
                                    *&buf[26] = v805 + 1072;
                                    *&buf[34] = 1024;
                                    *&buf[36] = v1083;
                                    *&buf[40] = 1024;
                                    *&buf[42] = v1084;
                                    *&buf[46] = 1024;
                                    LODWORD(v1264) = v1085;
                                    WORD2(v1264) = 2082;
                                    *(&v1264 + 6) = v79 + 32;
                                    HIWORD(v1264) = 1024;
                                    LODWORD(v1265) = v1086;
                                    v940 = v906;
                                    v941 = "[R%u] DNSServiceResolve START -- SRV name: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P, flags: 0x%X, interface index: %d, client pid: %d (%{public}s), name hash: %x";
                                    v942 = 68;
                                  }

                                  else
                                  {
                                    if (v908)
                                    {
                                      if (!os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_DEFAULT))
                                      {
                                        goto LABEL_1799;
                                      }
                                    }

                                    else
                                    {
                                      v906 = mDNSLogCategory_mDNS_redacted;
                                      if (!os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEFAULT))
                                      {
                                        goto LABEL_1799;
                                      }
                                    }

                                    v938 = *(v79 + 50);
                                    v939 = mDNS_DomainNameFNV1aHash((v805 + 1072));
                                    *buf = 67109376;
                                    *&buf[4] = v938;
                                    *&buf[8] = 1024;
                                    *&buf[10] = v939;
                                    v940 = v906;
                                    v941 = "[R%u] DNSServiceResolve START -- name hash: %x";
                                    v942 = 14;
                                  }

                                  _os_log_impl(&_mh_execute_header, v940, OS_LOG_TYPE_DEFAULT, v941, buf, v942);
                                  goto LABEL_1799;
                                }
                              }

                              v528 = v1291;
LABEL_1031:
                              v476 = v458 == v528;
LABEL_1032:
                              v642 = v476;
                              *(&v458->st_dev - v642) = 0;
                              v79[10] = 0;
                            }

                            else
                            {
                              v1279[0].sa_len = 0;
                            }
                          }

                          else
                          {
                            LOBYTE(v1277[0].st_dev) = 0;
                          }

LABEL_1036:
                          v643 = mDNSLogCategory_Default;
                          v644 = "ERROR: handle_resolve_request - Couldn't read name/regtype/domain";
                          goto LABEL_1183;
                        }
                      }

                      v476 = v458 == v1234;
                      goto LABEL_1032;
                    case 8:
                      if (v79[18])
                      {
                        goto LABEL_362;
                      }

                      v222 = malloc_type_calloc(1uLL, 0x320uLL, 0xA21EE0DuLL);
                      if (!v222)
                      {
                        goto LABEL_1950;
                      }

                      v79[18] = v222;
LABEL_362:
                      bzero(v1277, 0x468uLL);
                      v1277[0].st_ino = &v1277[0].st_size;
                      v223 = v79[10];
                      if (!v223 || (v224 = v79[11], (v223 + 1) > v224) || (v225 = v223 + 2, v226 = bswap32(*v223), v79[10] = v223 + 1, v1277[0].st_gid = v226, v223 == -4) || v225 > v224)
                      {
                        v79[10] = 0;
                        v1277[0].st_uid = 0;
                        goto LABEL_1184;
                      }

                      v227 = bswap32(v223[1]);
                      v79[10] = v225;
                      v1277[0].st_uid = v227;
                      updated = -65540;
                      if (!v225)
                      {
                        goto LABEL_1185;
                      }

                      p_st_size = &v1277[0].st_size;
                      do
                      {
                        v228 = v79[10];
                        if (v228 >= v224 || p_st_size >= &v1277[7].st_size + 1)
                        {
                          v502 = p_st_size == &v1277[7].st_size + 1;
LABEL_908:
                          v575 = v502;
                          v526 = &p_st_size[-v575];
LABEL_912:
                          *v526 = 0;
LABEL_913:
                          v79[10] = 0;
                          goto LABEL_1184;
                        }

                        v79[10] = v228 + 1;
                        v230 = *v228;
                        *p_st_size++ = v230;
                      }

                      while (v230);
                      v231 = v79[10];
                      v232 = v79[11];
                      v233 = v231 + 1;
                      if (v231)
                      {
                        v234 = v233 > v232;
                      }

                      else
                      {
                        v234 = 1;
                      }

                      if (v234)
                      {
                        v235 = 0;
                        LOWORD(v236) = 0;
                        LOWORD(v1277[0].st_rdev) = 0;
                      }

                      else
                      {
                        LOWORD(v236) = 0;
                        v235 = 0;
                        v576 = bswap32(*v231);
                        v79[10] = v233;
                        LOWORD(v1277[0].st_rdev) = HIWORD(v576);
                        if (v231 != -2 && (v231 + 2) <= v232)
                        {
                          v236 = bswap32(v231[1]) >> 16;
                          v235 = (v231 + 2);
                        }
                      }

                      v79[10] = v235;
                      HIWORD(v1277[0].st_rdev) = v236;
                      v577 = *(v79 + 50);
                      v1277[0].st_dev = v577;
                      v578 = *(v79 + 288);
                      if (*(v79 + 288))
                      {
                        v579 = 0;
                      }

                      else
                      {
                        v579 = *(v79 + 47);
                      }

                      *(&v1277[0].st_rdev + 1) = v579;
                      if (v578)
                      {
                        v596 = (v79 + 34);
                      }

                      else
                      {
                        v596 = 0;
                      }

                      v1277[0].st_atimespec.tv_sec = v596;
                      LODWORD(v1277[0].st_atimespec.tv_nsec) = *(v79 + 49);
                      v1277[0].st_ctimespec.tv_nsec = v79[4];
                      if (!v235)
                      {
                        v601 = mDNSLogCategory_Default;
                        if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
                        {
                          updated = -65540;
                          if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_ERROR))
                          {
                            goto LABEL_1185;
                          }
                        }

                        else
                        {
                          v601 = mDNSLogCategory_Default_redacted;
                          updated = -65540;
                          if (!os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_ERROR))
                          {
                            goto LABEL_1185;
                          }
                        }

                        *&v1279[0].sa_len = 67109120;
                        *&v1279[0].sa_data[2] = v577;
                        v187 = v1279;
                        v188 = v601;
                        v189 = OS_LOG_TYPE_ERROR;
                        v190 = "[R%u] DNSServiceQueryRecord(unreadable parameters)";
LABEL_1055:
                        v651 = 8;
LABEL_1056:
                        _os_log_impl(&_mh_execute_header, v188, v189, v190, &v187->sa_len, v651);
                        goto LABEL_1184;
                      }

                      v79[31] = vrev64_s32(*&v1277[0].st_uid);
                      if ((v79[28] & 2) != 0)
                      {
                        BYTE1(v1277[0].st_birthtimespec.tv_nsec) = get_tlv_uint32(v235, v232, 3, 0) == 1;
                        v597 = v235;
                        while ((v232 - v597) >= 4)
                        {
                          v598 = v597 + 4;
                          if (v597 == -4)
                          {
                            break;
                          }

                          v599 = __rev16(*(v597 + 1));
                          if ((v232 - v598) < v599)
                          {
                            break;
                          }

                          v600 = __rev16(*v597);
                          v597 = v598 + v599;
                          if (v600 == 10)
                          {
                            if (v599 == 16)
                            {
                              *(&v1277[7].st_size + 1) = *v598;
                              v1277[0].st_mtimespec.tv_sec = &v1277[7].st_size + 1;
                              BYTE4(v1277[0].st_ctimespec.tv_sec) = 1;
                              goto LABEL_1001;
                            }

                            break;
                          }
                        }

                        BYTE1(v1277[0].st_ctimespec.tv_sec) = get_tlv_uint32(v235, v232, 4, 0) == 1;
                        v614 = v235;
                        while ((v232 - v614) >= 4)
                        {
                          v615 = v614 + 4;
                          if (v614 == -4)
                          {
                            break;
                          }

                          v616 = __rev16(*(v614 + 1));
                          if ((v232 - v615) < v616)
                          {
                            break;
                          }

                          v617 = __rev16(*v614);
                          v614 = &v615[v616];
                          if (v617 == 1)
                          {
                            v1277[0].st_mtimespec.tv_nsec = Querier_RegisterCustomDNSServiceWithPListData(v615, v616);
                            *v79 = v1277[0].st_mtimespec.tv_nsec;
                            break;
                          }
                        }

                        LOBYTE(v1277[0].st_ctimespec.tv_sec) = get_tlv_uint32(v235, v232, 2, 0) != 0;
                      }

LABEL_1001:
                      v618 = get_signed_browse_tlvs(v79);
                      if (v618)
                      {
                        updated = v618;
                        LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "%3d: handle_queryrecord_request err reading Validation TLVS", v619, v620, v621, v622, v623, *(v79 + 46));
                        goto LABEL_1185;
                      }

                      get_tracker_info_tlvs(v79);
                      v625 = *(v79 + 62);
                      v626 = _os_feature_enabled_impl();
                      v1236 = 0u;
                      v1237 = 0u;
                      v1238 = 0u;
                      v1239 = 0u;
                      v1240 = 0u;
                      v1241 = 0u;
                      v1242 = 0u;
                      v1243 = 0u;
                      v1244 = 0u;
                      v1245 = 0u;
                      v1246 = 0u;
                      v1247 = 0u;
                      v1248 = 0u;
                      v1249 = 0u;
                      v1250 = 0u;
                      v1251 = 0u;
                      updated = -65540;
                      if (AppendDNSNameString(&v1236, &v1277[0].st_size, v627, v628, v629, v630, v631, v632))
                      {
                        v633 = IsLocalDomain(&v1236);
                        v634 = _shouldLogFullRequestInfo(v79 + 51, v79 + 52);
                        v635 = v626 ^ 1;
                        if ((v625 & 0x200000) == 0)
                        {
                          v635 = 1;
                        }

                        if (v635)
                        {
                          if (v634)
                          {
                            if (!mDNS_SensitiveLoggingEnableCount || (v633 ? (v707 = mDNSLogCategory_mDNS) : (v707 = mDNSLogCategory_Default), v707 == mDNSLogCategory_State))
                            {
                              if (v633)
                              {
                                v708 = mDNSLogCategory_mDNS;
                              }

                              else
                              {
                                v708 = mDNSLogCategory_Default;
                              }

                              if (!os_log_type_enabled(v708, OS_LOG_TYPE_DEFAULT))
                              {
                                goto LABEL_1748;
                              }

                              v709 = *(v79 + 50);
                              v829 = &v1236;
                              while (1)
                              {
                                if (!v829 || (v830 = *v829, v830 > 0x3F))
                                {
LABEL_1398:
                                  v712 = 257;
                                  goto LABEL_1745;
                                }

                                if (!*v829)
                                {
                                  break;
                                }

                                v829 = (v829 + v830 + 1);
                                if (v829 - &v1236 >= 256)
                                {
                                  goto LABEL_1398;
                                }
                              }

                              v712 = (v829 - &v1236 + 1);
                            }

                            else
                            {
                              if (v633)
                              {
                                v708 = mDNSLogCategory_mDNS;
                              }

                              else
                              {
                                v708 = mDNSLogCategory_Default_redacted;
                              }

                              if (!os_log_type_enabled(v708, OS_LOG_TYPE_DEFAULT))
                              {
                                goto LABEL_1748;
                              }

                              v709 = *(v79 + 50);
                              v710 = &v1236;
                              while (1)
                              {
                                if (!v710 || (v711 = *v710, v711 > 0x3F))
                                {
LABEL_1167:
                                  v712 = 257;
                                  goto LABEL_1745;
                                }

                                if (!*v710)
                                {
                                  break;
                                }

                                v710 = (v710 + v711 + 1);
                                if (v710 - &v1236 >= 256)
                                {
                                  goto LABEL_1167;
                                }
                              }

                              v712 = (v710 - &v1236 + 1);
                            }

LABEL_1745:
                            st_rdev_low = LOWORD(v1277[0].st_rdev);
                            v1045 = *(v79 + 62);
                            v1046 = *(v79 + 63);
                            v1047 = *(v79 + 47);
                            v1048 = mDNS_DomainNameFNV1aHash(&v1236);
                            *&v1279[0].sa_len = 67111427;
                            *&v1279[0].sa_data[2] = v709;
                            *&v1279[0].sa_data[6] = 2160;
                            *&v1279[0].sa_data[8] = 1752392040;
                            *v1279[1].sa_data = 1040;
                            *&v1279[1].sa_data[2] = v712;
                            *&v1279[1].sa_data[6] = 2101;
                            *&v1279[1].sa_data[8] = &v1236;
                            *v1279[2].sa_data = 1024;
                            *&v1279[2].sa_data[2] = st_rdev_low;
                            *&v1279[2].sa_data[6] = 1024;
                            *&v1279[2].sa_data[8] = v1045;
                            *&v1279[2].sa_data[12] = 1024;
                            LODWORD(v1280[0]) = v1046;
                            WORD2(v1280[0]) = 1024;
                            *(v1280 + 6) = v1047;
                            WORD5(v1280[0]) = 2082;
                            *(v1280 + 12) = v79 + 32;
                            WORD2(v1280[1]) = 1024;
                            *(&v1280[1] + 6) = v1048;
                            v868 = v708;
                            v869 = "[R%u] DNSServiceQueryRecord START -- qname: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P, qtype: %{mdns:rrtype}d, flags: 0x%X, interface index: %d, client pid: %d (%{public}s), name hash: %x";
                            goto LABEL_1746;
                          }

                          if (!mDNS_SensitiveLoggingEnableCount || (v633 ? (v837 = mDNSLogCategory_mDNS) : (v837 = mDNSLogCategory_Default), v837 == mDNSLogCategory_State))
                          {
                            if (v633)
                            {
                              v836 = mDNSLogCategory_mDNS;
                            }

                            else
                            {
                              v836 = mDNSLogCategory_Default;
                            }

                            if (!os_log_type_enabled(v836, OS_LOG_TYPE_DEFAULT))
                            {
                              goto LABEL_1748;
                            }
                          }

                          else
                          {
                            if (v633)
                            {
                              v836 = mDNSLogCategory_mDNS;
                            }

                            else
                            {
                              v836 = mDNSLogCategory_Default_redacted;
                            }

                            if (!os_log_type_enabled(v836, OS_LOG_TYPE_DEFAULT))
                            {
                              goto LABEL_1748;
                            }
                          }
                        }

                        else
                        {
                          if (v634)
                          {
                            if (mDNS_SensitiveLoggingEnableCount)
                            {
                              v636 = v633 ? mDNSLogCategory_mDNS : mDNSLogCategory_Default;
                              if (v636 != mDNSLogCategory_State)
                              {
                                if (v633)
                                {
                                  v637 = mDNSLogCategory_mDNS;
                                }

                                else
                                {
                                  v637 = mDNSLogCategory_Default_redacted;
                                }

                                if (os_log_type_enabled(v637, OS_LOG_TYPE_DEFAULT))
                                {
                                  v638 = *(v79 + 50);
                                  v639 = &v1236;
                                  while (1)
                                  {
                                    if (!v639 || (v640 = *v639, v640 > 0x3F))
                                    {
LABEL_1028:
                                      v641 = 257;
                                      goto LABEL_1620;
                                    }

                                    if (!*v639)
                                    {
                                      break;
                                    }

                                    v639 = (v639 + v640 + 1);
                                    if (v639 - &v1236 >= 256)
                                    {
                                      goto LABEL_1028;
                                    }
                                  }

                                  v641 = (v639 - &v1236 + 1);
                                  goto LABEL_1620;
                                }

LABEL_1748:
                                v79[14] = 0;
                                v1049 = v79[7];
                                if (v1049)
                                {
                                  if (v1049[2] == &_mdns_signed_browse_result_kind && mdns_signed_browse_result_contains(v79[7], &v1236, *(v79 + 63)))
                                  {
                                    v1050 = mDNSLogCategory_Default;
                                    if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
                                    {
                                      if (os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEBUG))
                                      {
                                        goto LABEL_1787;
                                      }
                                    }

                                    else
                                    {
                                      v1050 = mDNSLogCategory_Default_redacted;
                                      if (os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEBUG))
                                      {
LABEL_1787:
                                        v1082 = *(v79 + 50);
                                        *&v1279[0].sa_len = 67109120;
                                        *&v1279[0].sa_data[2] = v1082;
                                        v1078 = v1050;
                                        v1079 = OS_LOG_TYPE_DEBUG;
                                        v1080 = "[R%u] DNSServiceQueryRecord: Allowing signed result";
                                        v1081 = 8;
LABEL_1788:
                                        _os_log_impl(&_mh_execute_header, v1078, v1079, v1080, &v1279[0].sa_len, v1081);
                                      }
                                    }

LABEL_1789:
                                    Domains = _handle_queryrecord_request_start(v79, v1277, v1051, v1052, v1053, v1054, v1055, v1056);
                                    goto LABEL_294;
                                  }

                                  *(v79 + 290) = 0;
                                  os_release(v1049);
                                  v79[7] = 0;
                                }

                                if (!_os_feature_enabled_impl())
                                {
                                  goto LABEL_1789;
                                }

                                if (!v79[4])
                                {
                                  v1069 = mDNSLogCategory_Default;
                                  if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
                                  {
                                    if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT))
                                    {
                                      goto LABEL_1789;
                                    }
                                  }

                                  else
                                  {
                                    v1069 = mDNSLogCategory_Default_redacted;
                                    if (!os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
                                    {
                                      goto LABEL_1789;
                                    }
                                  }

                                  v1076 = *(v79 + 50);
                                  v1077 = *(v79 + 47);
                                  *&v1279[0].sa_len = 67109634;
                                  *&v1279[0].sa_data[2] = v1076;
                                  *&v1279[0].sa_data[6] = 2080;
                                  *&v1279[0].sa_data[8] = v79 + 32;
                                  *v1279[1].sa_data = 1024;
                                  *&v1279[1].sa_data[2] = v1077;
                                  v1078 = v1069;
                                  v1079 = OS_LOG_TYPE_DEFAULT;
                                  v1080 = "[R%u] _handle_queryrecord_request_with_trust: no audit token for pid(%s %d)";
                                  v1081 = 24;
                                  goto LABEL_1788;
                                }

                                bzero(v1279, 0x3F1uLL);
                                v1233 = 0;
                                v1232 = 0;
                                v1231 = 0;
                                v1230 = 0;
                                v1229 = 0;
                                v1228 = 0;
                                v1227 = 0;
                                v1226 = 0;
                                v1225 = 0;
                                v1224 = 0;
                                v1223 = 0;
                                memset(v1222, 0, sizeof(v1222));
                                memset(__src, 0, sizeof(__src));
                                if (!AppendDNSNameString(__src, &v1277[0].st_size, v1057, v1058, v1059, v1060, v1061, v1062))
                                {
                                  goto LABEL_1761;
                                }

                                v1276 = 0u;
                                v1275 = 0u;
                                v1274 = 0u;
                                v1273 = 0u;
                                v1272 = 0u;
                                v1271 = 0u;
                                v1270 = 0u;
                                v1269 = 0u;
                                v1268 = 0u;
                                v1267 = 0u;
                                v1266 = 0u;
                                v1265 = 0u;
                                v1264 = 0u;
                                memset(buf, 0, sizeof(buf));
                                if (DeconstructServiceName(__src, v1220, buf, aBlock))
                                {
                                  v1063 = v1279;
                                  ConvertDomainNameToCString_withescape(buf, &v1279[0].sa_len);
                                }

                                else
                                {
LABEL_1761:
                                  v1063 = 0;
                                }

                                v1064 = v79[4];
                                v1065 = *(v1064 + 40);
                                *buf = *(v1064 + 24);
                                *&buf[16] = v1065;
                                v1066 = mdns_trust_checks_check(buf, 2u, &v1277[0].st_size, &v1063->sa_len, v1277[0].st_rdev, (v1277[0].st_gid & 0x400) != 0);
                                if (v1066)
                                {
                                  v1067 = v1066;
                                  v1068 = v1066[9];
                                  if (v1068 > 1)
                                  {
                                    if (v1068 == 3)
                                    {
                                      updated = -65555;
                                      goto LABEL_1793;
                                    }

                                    if (v1068 != 2)
                                    {
                                      goto LABEL_1790;
                                    }
                                  }

                                  else if (v1068)
                                  {
                                    if (v1068 == 1)
                                    {
                                      updated = _handle_queryrecord_request_start(v79, v1277, v1, v2, v3, v4, v5, v6);
                                      goto LABEL_1793;
                                    }

LABEL_1790:
                                    updated = -65537;
                                    goto LABEL_1793;
                                  }

                                  if ((v79[6] || (v1070 = CFArrayCreateMutable(kCFAllocatorDefault, 0, &mdns_cfarray_callbacks), (v79[6] = v1070) != 0)) && (v1071 = *(v1064 + 40), *buf = *(v1064 + 24), *&buf[16] = v1071, (v1072 = mdns_trust_create(buf, v1063, v1067)) != 0))
                                  {
                                    v1073 = v1072;
                                    v1074 = malloc_type_malloc(0x468uLL, 0x97CCF5DDuLL);
                                    if (!v1074)
                                    {
                                      goto LABEL_1950;
                                    }

                                    v1075 = v1074;
                                    memcpy(v1074, v1277, 0x468uLL);
                                    v1075[1] = v1075 + 12;
                                    if (v1277[0].st_mtimespec.tv_sec)
                                    {
                                      v1075[6] = v1075 + 1105;
                                    }

                                    *(v1073 + 56) = v1075;
                                    mdns_interface_monitor_set_update_handler(v1073, &__block_literal_global_248);
                                    if (_get_trust_results_dispatch_queue_once != -1)
                                    {
                                      dispatch_once(&_get_trust_results_dispatch_queue_once, &__block_literal_global_240);
                                    }

                                    mdns_trust_set_queue(v1073, _get_trust_results_dispatch_queue_queue);
                                    *v1203 = _NSConcreteStackBlock;
                                    *&v1204 = 0x40000000;
                                    *(&v1204 + 1) = ___handle_queryrecord_request_with_trust_block_invoke_2;
                                    *v1205 = &__block_descriptor_tmp_250;
                                    *&v1205[8] = v1073;
                                    *&v1205[16] = v79;
                                    mdns_trust_set_event_handler(v1073, v1203);
                                    CFArrayAppendValue(v79[6], v1073);
                                    os_release(v1073);
                                    if ((*(v1073 + 26) & 1) == 0)
                                    {
                                      *(v1073 + 26) = 1;
                                      _mdns_trust_activate_if_ready(v1073);
                                    }

                                    updated = 0;
                                  }

                                  else
                                  {
                                    updated = -65539;
                                  }

LABEL_1793:
                                  os_release(v1067);
                                  goto LABEL_1185;
                                }

LABEL_427:
                                updated = -65539;
                                goto LABEL_1185;
                              }
                            }

                            if (v633)
                            {
                              v637 = mDNSLogCategory_mDNS;
                            }

                            else
                            {
                              v637 = mDNSLogCategory_Default;
                            }

                            if (!os_log_type_enabled(v637, OS_LOG_TYPE_DEFAULT))
                            {
                              goto LABEL_1748;
                            }

                            v638 = *(v79 + 50);
                            v827 = &v1236;
                            while (1)
                            {
                              if (!v827 || (v828 = *v827, v828 > 0x3F))
                              {
LABEL_1388:
                                v641 = 257;
                                goto LABEL_1620;
                              }

                              if (!*v827)
                              {
                                break;
                              }

                              v827 = (v827 + v828 + 1);
                              if (v827 - &v1236 >= 256)
                              {
                                goto LABEL_1388;
                              }
                            }

                            v641 = (v827 - &v1236 + 1);
LABEL_1620:
                            v949 = LOWORD(v1277[0].st_rdev);
                            v950 = *(v79 + 62);
                            v951 = *(v79 + 63);
                            v952 = *(v79 + 47);
                            v953 = mDNS_DomainNameFNV1aHash(&v1236);
                            *&v1279[0].sa_len = 67111427;
                            *&v1279[0].sa_data[2] = v638;
                            *&v1279[0].sa_data[6] = 2160;
                            *&v1279[0].sa_data[8] = 1752392040;
                            *v1279[1].sa_data = 1040;
                            *&v1279[1].sa_data[2] = v641;
                            *&v1279[1].sa_data[6] = 2101;
                            *&v1279[1].sa_data[8] = &v1236;
                            *v1279[2].sa_data = 1024;
                            *&v1279[2].sa_data[2] = v949;
                            *&v1279[2].sa_data[6] = 1024;
                            *&v1279[2].sa_data[8] = v950;
                            *&v1279[2].sa_data[12] = 1024;
                            LODWORD(v1280[0]) = v951;
                            WORD2(v1280[0]) = 1024;
                            *(v1280 + 6) = v952;
                            WORD5(v1280[0]) = 2082;
                            *(v1280 + 12) = v79 + 32;
                            WORD2(v1280[1]) = 1024;
                            *(&v1280[1] + 6) = v953;
                            v868 = v637;
                            v869 = "[R%u] DNSServiceQueryRecord START -- qname: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P, qtype: %{mdns:rrtype}d, DNSSEC enabled, flags: 0x%X, interface index: %d, client pid: %d (%{public}s), name hash: %x";
LABEL_1746:
                            v870 = 74;
LABEL_1747:
                            _os_log_impl(&_mh_execute_header, v868, OS_LOG_TYPE_DEFAULT, v869, &v1279[0].sa_len, v870);
                            goto LABEL_1748;
                          }

                          if (!mDNS_SensitiveLoggingEnableCount || (v633 ? (v835 = mDNSLogCategory_mDNS) : (v835 = mDNSLogCategory_Default), v835 == mDNSLogCategory_State))
                          {
                            if (v633)
                            {
                              v836 = mDNSLogCategory_mDNS;
                            }

                            else
                            {
                              v836 = mDNSLogCategory_Default;
                            }

                            if (!os_log_type_enabled(v836, OS_LOG_TYPE_DEFAULT))
                            {
                              goto LABEL_1748;
                            }
                          }

                          else
                          {
                            if (v633)
                            {
                              v836 = mDNSLogCategory_mDNS;
                            }

                            else
                            {
                              v836 = mDNSLogCategory_Default_redacted;
                            }

                            if (!os_log_type_enabled(v836, OS_LOG_TYPE_DEFAULT))
                            {
                              goto LABEL_1748;
                            }
                          }
                        }

                        v866 = *(v79 + 50);
                        v867 = mDNS_DomainNameFNV1aHash(&v1236);
                        *&v1279[0].sa_len = 67109376;
                        *&v1279[0].sa_data[2] = v866;
                        *&v1279[0].sa_data[6] = 1024;
                        *&v1279[0].sa_data[8] = v867;
                        v868 = v836;
                        v869 = "[R%u] DNSServiceQueryRecord START -- name hash: %x";
                        v870 = 14;
                        goto LABEL_1747;
                      }

LABEL_1185:
                      v725 = v79[9];
                      if (v725)
                      {
                        free(v725);
                        v79[9] = 0;
                      }

                      v726 = *(v79 + 57);
                      v234 = v726 > 0x3F;
                      v727 = (1 << v726) & 0x8000000000022000;
                      v728 = v234 || v727 == 0;
                      v8 = 0;
                      if (v728)
                      {
                        v729 = bswap32(updated);
                        *&v1279[0].sa_len = v729;
                        if ((v79[28] & 4) == 0)
                        {
                          send_all(*(v79 + 48), v1279, 4uLL);
LABEL_1202:
                          v733 = *(v79 + 48);
                          if (v733 != *(v79 + 46))
                          {
                            close(v733);
                            *(v79 + 48) = *(v79 + 46);
                            v734 = v79[3];
                            if (v734)
                            {
                              *(v734 + 192) = *(v734 + 184);
                            }
                          }

                          v8 = 0;
                          goto LABEL_1206;
                        }

                        v730 = mDNSLogCategory_Default;
                        if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
                        {
                          if (os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT))
                          {
                            goto LABEL_1199;
                          }
                        }

                        else
                        {
                          v730 = mDNSLogCategory_Default_redacted;
                          if (os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
                          {
LABEL_1199:
                            v731 = *(v79 + 50);
                            v1277[0].st_dev = 67109376;
                            *&v1277[0].st_mode = v731;
                            LOWORD(v1277[0].st_ino) = 1024;
                            *(&v1277[0].st_ino + 2) = updated;
                            _os_log_impl(&_mh_execute_header, v730, OS_LOG_TYPE_DEFAULT, "[R%u] returnAsyncErrorCode: error code(%d)", v1277, 0xEu);
                          }
                        }

                        if (updated)
                        {
                          reply = create_reply(0x49, 18, v79, v2, v3, v4, v5, v6);
                          *(reply + 11) = 0;
                          *(reply + 12) = 0;
                          *(reply + 13) = v729;
                          *(reply + 14) = 0;
                          *(reply + 30) = 0;
                          append_reply(v79, reply);
                        }

                        goto LABEL_1202;
                      }

LABEL_1206:
                      if (v79[3])
                      {
                        v7 = v79[3];
                      }

                      else
                      {
                        v7 = v79;
                      }

                      v9 = 1;
                      *(v7 + 291) = 1;
                      *(v7 + 53) = 0;
                      *(v7 + 4) = v8;
                      *(v7 + 5) = v8;
                      continue;
                    case 9:
                      v110 = read_rr_from_ipc_msg(v79, 0, 0);
                      updated = -65540;
                      if (!v110)
                      {
                        goto LABEL_1185;
                      }

                      rr_from_ipc_msg = v110;
                      mDNS_Lock_(mDNSStorage, "mDNS_ReconfirmByValue", 16098);
                      IdenticalRecordInCache = FindIdenticalRecordInCache(mDNSStorage, (rr_from_ipc_msg + 4));
                      if (IdenticalRecordInCache)
                      {
                        mDNS_Reconfirm_internal(mDNSStorage, IdenticalRecordInCache, 0x1388u);
                        ReconfirmAntecedents(mDNSStorage, *(IdenticalRecordInCache + 40), *(IdenticalRecordInCache + 24), *(IdenticalRecordInCache + 32), 0);
                        updated = 0;
                      }

                      else
                      {
                        updated = -65541;
                      }

                      mDNS_Unlock_(mDNSStorage, "mDNS_ReconfirmByValue", 16103);
                      v382 = _shouldLogFullRequestInfo(v79 + 51, v79 + 52);
                      v383 = *(rr_from_ipc_msg + 5);
                      v384 = mDNSLogCategory_mDNS;
                      if (mDNS_SensitiveLoggingEnableCount)
                      {
                        v385 = mDNSLogCategory_mDNS == mDNSLogCategory_State;
                      }

                      else
                      {
                        v385 = 1;
                      }

                      v386 = v385;
                      if (IdenticalRecordInCache)
                      {
                        if (v382)
                        {
                          if (!v383)
                          {
                            if (v386)
                            {
                              if (!os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_DEFAULT))
                              {
                                goto LABEL_1174;
                              }

                              v493 = *(v79 + 50);
                              v494 = rr_from_ipc_msg[6];
                              v495 = *(v79 + 62);
                              v496 = *(v79 + 63);
                              v497 = *(v79 + 47);
                              v1277[0].st_dev = 67111171;
                              *&v1277[0].st_mode = v493;
                              LOWORD(v1277[0].st_ino) = 2160;
                              *(&v1277[0].st_ino + 2) = 1752392040;
                              HIWORD(v1277[0].st_uid) = 1040;
                              v1277[0].st_gid = 0;
                              LOWORD(v1277[0].st_rdev) = 2101;
                              *(&v1277[0].st_rdev + 2) = 0;
                              WORD1(v1277[0].st_atimespec.tv_sec) = 1024;
                              HIDWORD(v1277[0].st_atimespec.tv_sec) = v494;
                              LOWORD(v1277[0].st_atimespec.tv_nsec) = 1024;
                              *(&v1277[0].st_atimespec.tv_nsec + 2) = v495;
                              HIWORD(v1277[0].st_atimespec.tv_nsec) = 1024;
                              LODWORD(v1277[0].st_mtimespec.tv_sec) = v496;
                              WORD2(v1277[0].st_mtimespec.tv_sec) = 1024;
                              *(&v1277[0].st_mtimespec.tv_sec + 6) = v497;
                              WORD1(v1277[0].st_mtimespec.tv_nsec) = 2082;
                              *(&v1277[0].st_mtimespec.tv_nsec + 4) = (v79 + 32);
                              v413 = v384;
                              v414 = "[R%u] DNSServiceReconfirmRecord START -- rr name: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P, rr type: %{mdns:rrtype}d, flags: 0x%X, interface index: %d, client pid: %d (%{public}s), ";
                            }

                            else
                            {
                              v543 = mDNSLogCategory_mDNS_redacted;
                              if (!os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEFAULT))
                              {
                                goto LABEL_1174;
                              }

                              v544 = *(v79 + 50);
                              v545 = rr_from_ipc_msg[6];
                              v546 = *(v79 + 62);
                              v547 = *(v79 + 63);
                              v548 = *(v79 + 47);
                              v1277[0].st_dev = 67111171;
                              *&v1277[0].st_mode = v544;
                              LOWORD(v1277[0].st_ino) = 2160;
                              *(&v1277[0].st_ino + 2) = 1752392040;
                              HIWORD(v1277[0].st_uid) = 1040;
                              v1277[0].st_gid = 0;
                              LOWORD(v1277[0].st_rdev) = 2101;
                              *(&v1277[0].st_rdev + 2) = 0;
                              WORD1(v1277[0].st_atimespec.tv_sec) = 1024;
                              HIDWORD(v1277[0].st_atimespec.tv_sec) = v545;
                              LOWORD(v1277[0].st_atimespec.tv_nsec) = 1024;
                              *(&v1277[0].st_atimespec.tv_nsec + 2) = v546;
                              HIWORD(v1277[0].st_atimespec.tv_nsec) = 1024;
                              LODWORD(v1277[0].st_mtimespec.tv_sec) = v547;
                              WORD2(v1277[0].st_mtimespec.tv_sec) = 1024;
                              *(&v1277[0].st_mtimespec.tv_sec + 6) = v548;
                              WORD1(v1277[0].st_mtimespec.tv_nsec) = 2082;
                              *(&v1277[0].st_mtimespec.tv_nsec + 4) = (v79 + 32);
                              v413 = v543;
                              v414 = "[R%u] DNSServiceReconfirmRecord START -- rr name: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P, rr type: %{mdns:rrtype}d, flags: 0x%X, interface index: %d, client pid: %d (%{public}s), ";
                            }

                            v549 = 68;
                            goto LABEL_1173;
                          }

                          if (v386)
                          {
                            if (!os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_DEFAULT))
                            {
                              goto LABEL_1174;
                            }

                            v387 = v383;
                            loga = *(v79 + 50);
                            while (1)
                            {
                              if (!v387 || (v388 = *v387, v388 > 0x3F))
                              {
LABEL_623:
                                v389 = 257;
                                goto LABEL_1075;
                              }

                              if (!*v387)
                              {
                                break;
                              }

                              v387 += v388 + 1;
                              if (v387 - v383 >= 256)
                              {
                                goto LABEL_623;
                              }
                            }

                            v389 = (v387 - v383 + 1);
LABEL_1075:
                            v1184 = v389;
                            v655 = rr_from_ipc_msg[6];
                            v657 = *(v79 + 62);
                            v656 = *(v79 + 63);
                            v658 = *(v79 + 47);
                            v659 = mDNS_DomainNameFNV1aHash(v383);
                            v1277[0].st_dev = 67111427;
                            *&v1277[0].st_mode = loga;
                            LOWORD(v1277[0].st_ino) = 2160;
                            *(&v1277[0].st_ino + 2) = 1752392040;
                            HIWORD(v1277[0].st_uid) = 1040;
                            v1277[0].st_gid = v1184;
                            LOWORD(v1277[0].st_rdev) = 2101;
                            *(&v1277[0].st_rdev + 2) = v383;
                            WORD1(v1277[0].st_atimespec.tv_sec) = 1024;
                            HIDWORD(v1277[0].st_atimespec.tv_sec) = v655;
                            LOWORD(v1277[0].st_atimespec.tv_nsec) = 1024;
                            *(&v1277[0].st_atimespec.tv_nsec + 2) = v657;
                            HIWORD(v1277[0].st_atimespec.tv_nsec) = 1024;
                            LODWORD(v1277[0].st_mtimespec.tv_sec) = v656;
                            WORD2(v1277[0].st_mtimespec.tv_sec) = 1024;
                            *(&v1277[0].st_mtimespec.tv_sec + 6) = v658;
                            WORD1(v1277[0].st_mtimespec.tv_nsec) = 2082;
                            *(&v1277[0].st_mtimespec.tv_nsec + 4) = (v79 + 32);
                            WORD2(v1277[0].st_ctimespec.tv_sec) = 1024;
                            *(&v1277[0].st_ctimespec.tv_sec + 6) = v659;
                            v413 = v384;
                            v414 = "[R%u] DNSServiceReconfirmRecord START -- rr name: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P, rr type: %{mdns:rrtype}d, flags: 0x%X, interface index: %d, client pid: %d (%{public}s), name hash: %x";
                          }

                          else
                          {
                            v503 = mDNSLogCategory_mDNS_redacted;
                            if (!os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEFAULT))
                            {
                              goto LABEL_1174;
                            }

                            v504 = v383;
                            logc = *(v79 + 50);
                            while (1)
                            {
                              if (!v504 || (v505 = *v504, v505 > 0x3F))
                              {
LABEL_823:
                                v506 = 257;
                                goto LABEL_1077;
                              }

                              if (!*v504)
                              {
                                break;
                              }

                              v504 += v505 + 1;
                              if (v504 - v383 >= 256)
                              {
                                goto LABEL_823;
                              }
                            }

                            v506 = (v504 - v383 + 1);
LABEL_1077:
                            v1185 = v506;
                            v660 = rr_from_ipc_msg[6];
                            v662 = *(v79 + 62);
                            v661 = *(v79 + 63);
                            v663 = *(v79 + 47);
                            v664 = mDNS_DomainNameFNV1aHash(v383);
                            v1277[0].st_dev = 67111427;
                            *&v1277[0].st_mode = logc;
                            LOWORD(v1277[0].st_ino) = 2160;
                            *(&v1277[0].st_ino + 2) = 1752392040;
                            HIWORD(v1277[0].st_uid) = 1040;
                            v1277[0].st_gid = v1185;
                            LOWORD(v1277[0].st_rdev) = 2101;
                            *(&v1277[0].st_rdev + 2) = v383;
                            WORD1(v1277[0].st_atimespec.tv_sec) = 1024;
                            HIDWORD(v1277[0].st_atimespec.tv_sec) = v660;
                            LOWORD(v1277[0].st_atimespec.tv_nsec) = 1024;
                            *(&v1277[0].st_atimespec.tv_nsec + 2) = v662;
                            HIWORD(v1277[0].st_atimespec.tv_nsec) = 1024;
                            LODWORD(v1277[0].st_mtimespec.tv_sec) = v661;
                            WORD2(v1277[0].st_mtimespec.tv_sec) = 1024;
                            *(&v1277[0].st_mtimespec.tv_sec + 6) = v663;
                            WORD1(v1277[0].st_mtimespec.tv_nsec) = 2082;
                            *(&v1277[0].st_mtimespec.tv_nsec + 4) = (v79 + 32);
                            WORD2(v1277[0].st_ctimespec.tv_sec) = 1024;
                            *(&v1277[0].st_ctimespec.tv_sec + 6) = v664;
                            v413 = v503;
                            v414 = "[R%u] DNSServiceReconfirmRecord START -- rr name: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P, rr type: %{mdns:rrtype}d, flags: 0x%X, interface index: %d, client pid: %d (%{public}s), name hash: %x";
                          }

                          goto LABEL_1078;
                        }

                        if (v383)
                        {
                          if (v386)
                          {
                            if (!os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_DEFAULT))
                            {
                              goto LABEL_1174;
                            }

                            v411 = *(v79 + 50);
                            v412 = mDNS_DomainNameFNV1aHash(v383);
                            v1277[0].st_dev = 67109376;
                            *&v1277[0].st_mode = v411;
                            LOWORD(v1277[0].st_ino) = 1024;
                            *(&v1277[0].st_ino + 2) = v412;
                            v413 = v384;
                            v414 = "[R%u] DNSServiceReconfirmRecord START -- name hash: %x";
                          }

                          else
                          {
                            v540 = mDNSLogCategory_mDNS_redacted;
                            if (!os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEFAULT))
                            {
                              goto LABEL_1174;
                            }

                            v541 = *(v79 + 50);
                            v542 = mDNS_DomainNameFNV1aHash(v383);
                            v1277[0].st_dev = 67109376;
                            *&v1277[0].st_mode = v541;
                            LOWORD(v1277[0].st_ino) = 1024;
                            *(&v1277[0].st_ino + 2) = v542;
                            v413 = v540;
                            v414 = "[R%u] DNSServiceReconfirmRecord START -- name hash: %x";
                          }

LABEL_981:
                          v549 = 14;
                          goto LABEL_1173;
                        }

                        if (v386)
                        {
                          if (!os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_DEFAULT))
                          {
                            goto LABEL_1174;
                          }

                          v534 = *(v79 + 50);
                          v1277[0].st_dev = 67109120;
                          *&v1277[0].st_mode = v534;
                          v413 = v384;
                          v414 = "[R%u] DNSServiceReconfirmRecord START -- ";
                        }

                        else
                        {
                          v611 = mDNSLogCategory_mDNS_redacted;
                          if (!os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEFAULT))
                          {
                            goto LABEL_1174;
                          }

                          v612 = *(v79 + 50);
                          v1277[0].st_dev = 67109120;
                          *&v1277[0].st_mode = v612;
                          v413 = v611;
                          v414 = "[R%u] DNSServiceReconfirmRecord START -- ";
                        }
                      }

                      else
                      {
                        if (v382)
                        {
                          if (v383)
                          {
                            if (v386)
                            {
                              if (!os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_DEFAULT))
                              {
                                goto LABEL_1174;
                              }

                              v390 = v383;
                              v1180 = *(v79 + 50);
                              while (1)
                              {
                                if (!v390 || (v391 = *v390, v391 > 0x3F))
                                {
LABEL_633:
                                  v392 = 257;
                                  goto LABEL_1169;
                                }

                                if (!*v390)
                                {
                                  break;
                                }

                                v390 += v391 + 1;
                                if (v390 - v383 >= 256)
                                {
                                  goto LABEL_633;
                                }
                              }

                              v392 = (v390 - v383 + 1);
LABEL_1169:
                              logk = v392;
                              v713 = rr_from_ipc_msg[6];
                              v715 = *(v79 + 62);
                              v714 = *(v79 + 63);
                              v716 = *(v79 + 47);
                              v717 = mDNS_DomainNameFNV1aHash(v383);
                              v1277[0].st_dev = 67111683;
                              *&v1277[0].st_mode = v1180;
                              LOWORD(v1277[0].st_ino) = 2160;
                              *(&v1277[0].st_ino + 2) = 1752392040;
                              HIWORD(v1277[0].st_uid) = 1040;
                              v1277[0].st_gid = logk;
                              LOWORD(v1277[0].st_rdev) = 2101;
                              *(&v1277[0].st_rdev + 2) = v383;
                              WORD1(v1277[0].st_atimespec.tv_sec) = 1024;
                              HIDWORD(v1277[0].st_atimespec.tv_sec) = v713;
                              LOWORD(v1277[0].st_atimespec.tv_nsec) = 1024;
                              *(&v1277[0].st_atimespec.tv_nsec + 2) = updated;
                              HIWORD(v1277[0].st_atimespec.tv_nsec) = 1024;
                              LODWORD(v1277[0].st_mtimespec.tv_sec) = v715;
                              WORD2(v1277[0].st_mtimespec.tv_sec) = 1024;
                              *(&v1277[0].st_mtimespec.tv_sec + 6) = v714;
                              WORD1(v1277[0].st_mtimespec.tv_nsec) = 1024;
                              HIDWORD(v1277[0].st_mtimespec.tv_nsec) = v716;
                              LOWORD(v1277[0].st_ctimespec.tv_sec) = 2082;
                              *(&v1277[0].st_ctimespec.tv_sec + 2) = (v79 + 32);
                              WORD1(v1277[0].st_ctimespec.tv_nsec) = 1024;
                              HIDWORD(v1277[0].st_ctimespec.tv_nsec) = v717;
                              v413 = v384;
                              v414 = "[R%u] DNSServiceReconfirmRecord FAILED -- rr name: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P, rr type: %{mdns:rrtype}d, error: %d, flags: 0x%X, interface index: %d, client pid: %d (%{public}s), name hash: %x";
                            }

                            else
                            {
                              v536 = mDNSLogCategory_mDNS_redacted;
                              if (!os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEFAULT))
                              {
                                goto LABEL_1174;
                              }

                              v537 = v383;
                              v1182 = *(v79 + 50);
                              while (1)
                              {
                                if (!v537 || (v538 = *v537, v538 > 0x3F))
                                {
LABEL_870:
                                  v539 = 257;
                                  goto LABEL_1171;
                                }

                                if (!*v537)
                                {
                                  break;
                                }

                                v537 += v538 + 1;
                                if (v537 - v383 >= 256)
                                {
                                  goto LABEL_870;
                                }
                              }

                              v539 = (v537 - v383 + 1);
LABEL_1171:
                              logl = v539;
                              v718 = rr_from_ipc_msg[6];
                              v720 = *(v79 + 62);
                              v719 = *(v79 + 63);
                              v721 = *(v79 + 47);
                              v722 = mDNS_DomainNameFNV1aHash(v383);
                              v1277[0].st_dev = 67111683;
                              *&v1277[0].st_mode = v1182;
                              LOWORD(v1277[0].st_ino) = 2160;
                              *(&v1277[0].st_ino + 2) = 1752392040;
                              HIWORD(v1277[0].st_uid) = 1040;
                              v1277[0].st_gid = logl;
                              LOWORD(v1277[0].st_rdev) = 2101;
                              *(&v1277[0].st_rdev + 2) = v383;
                              WORD1(v1277[0].st_atimespec.tv_sec) = 1024;
                              HIDWORD(v1277[0].st_atimespec.tv_sec) = v718;
                              LOWORD(v1277[0].st_atimespec.tv_nsec) = 1024;
                              *(&v1277[0].st_atimespec.tv_nsec + 2) = updated;
                              HIWORD(v1277[0].st_atimespec.tv_nsec) = 1024;
                              LODWORD(v1277[0].st_mtimespec.tv_sec) = v720;
                              WORD2(v1277[0].st_mtimespec.tv_sec) = 1024;
                              *(&v1277[0].st_mtimespec.tv_sec + 6) = v719;
                              WORD1(v1277[0].st_mtimespec.tv_nsec) = 1024;
                              HIDWORD(v1277[0].st_mtimespec.tv_nsec) = v721;
                              LOWORD(v1277[0].st_ctimespec.tv_sec) = 2082;
                              *(&v1277[0].st_ctimespec.tv_sec + 2) = (v79 + 32);
                              WORD1(v1277[0].st_ctimespec.tv_nsec) = 1024;
                              HIDWORD(v1277[0].st_ctimespec.tv_nsec) = v722;
                              v413 = v536;
                              v414 = "[R%u] DNSServiceReconfirmRecord FAILED -- rr name: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P, rr type: %{mdns:rrtype}d, error: %d, flags: 0x%X, interface index: %d, client pid: %d (%{public}s), name hash: %x";
                            }

                            v549 = 80;
                            goto LABEL_1173;
                          }

                          if (v386)
                          {
                            if (!os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_DEFAULT))
                            {
                              goto LABEL_1174;
                            }

                            v529 = *(v79 + 50);
                            v530 = rr_from_ipc_msg[6];
                            v531 = *(v79 + 62);
                            v532 = *(v79 + 63);
                            v533 = *(v79 + 47);
                            v1277[0].st_dev = 67111427;
                            *&v1277[0].st_mode = v529;
                            LOWORD(v1277[0].st_ino) = 2160;
                            *(&v1277[0].st_ino + 2) = 1752392040;
                            HIWORD(v1277[0].st_uid) = 1040;
                            v1277[0].st_gid = 0;
                            LOWORD(v1277[0].st_rdev) = 2101;
                            *(&v1277[0].st_rdev + 2) = 0;
                            WORD1(v1277[0].st_atimespec.tv_sec) = 1024;
                            HIDWORD(v1277[0].st_atimespec.tv_sec) = v530;
                            LOWORD(v1277[0].st_atimespec.tv_nsec) = 1024;
                            *(&v1277[0].st_atimespec.tv_nsec + 2) = updated;
                            HIWORD(v1277[0].st_atimespec.tv_nsec) = 1024;
                            LODWORD(v1277[0].st_mtimespec.tv_sec) = v531;
                            WORD2(v1277[0].st_mtimespec.tv_sec) = 1024;
                            *(&v1277[0].st_mtimespec.tv_sec + 6) = v532;
                            WORD1(v1277[0].st_mtimespec.tv_nsec) = 1024;
                            HIDWORD(v1277[0].st_mtimespec.tv_nsec) = v533;
                            LOWORD(v1277[0].st_ctimespec.tv_sec) = 2082;
                            *(&v1277[0].st_ctimespec.tv_sec + 2) = (v79 + 32);
                            v413 = v384;
                            v414 = "[R%u] DNSServiceReconfirmRecord FAILED -- rr name: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P, rr type: %{mdns:rrtype}d, error: %d, flags: 0x%X, interface index: %d, client pid: %d (%{public}s), ";
                          }

                          else
                          {
                            v605 = mDNSLogCategory_mDNS_redacted;
                            if (!os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEFAULT))
                            {
                              goto LABEL_1174;
                            }

                            v606 = *(v79 + 50);
                            v607 = rr_from_ipc_msg[6];
                            v608 = *(v79 + 62);
                            v609 = *(v79 + 63);
                            v610 = *(v79 + 47);
                            v1277[0].st_dev = 67111427;
                            *&v1277[0].st_mode = v606;
                            LOWORD(v1277[0].st_ino) = 2160;
                            *(&v1277[0].st_ino + 2) = 1752392040;
                            HIWORD(v1277[0].st_uid) = 1040;
                            v1277[0].st_gid = 0;
                            LOWORD(v1277[0].st_rdev) = 2101;
                            *(&v1277[0].st_rdev + 2) = 0;
                            WORD1(v1277[0].st_atimespec.tv_sec) = 1024;
                            HIDWORD(v1277[0].st_atimespec.tv_sec) = v607;
                            LOWORD(v1277[0].st_atimespec.tv_nsec) = 1024;
                            *(&v1277[0].st_atimespec.tv_nsec + 2) = updated;
                            HIWORD(v1277[0].st_atimespec.tv_nsec) = 1024;
                            LODWORD(v1277[0].st_mtimespec.tv_sec) = v608;
                            WORD2(v1277[0].st_mtimespec.tv_sec) = 1024;
                            *(&v1277[0].st_mtimespec.tv_sec + 6) = v609;
                            WORD1(v1277[0].st_mtimespec.tv_nsec) = 1024;
                            HIDWORD(v1277[0].st_mtimespec.tv_nsec) = v610;
                            LOWORD(v1277[0].st_ctimespec.tv_sec) = 2082;
                            *(&v1277[0].st_ctimespec.tv_sec + 2) = (v79 + 32);
                            v413 = v605;
                            v414 = "[R%u] DNSServiceReconfirmRecord FAILED -- rr name: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P, rr type: %{mdns:rrtype}d, error: %d, flags: 0x%X, interface index: %d, client pid: %d (%{public}s), ";
                          }

LABEL_1078:
                          v549 = 74;
                          goto LABEL_1173;
                        }

                        if (v383)
                        {
                          if (v386)
                          {
                            if (!os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_DEFAULT))
                            {
                              goto LABEL_1174;
                            }

                            v498 = *(v79 + 50);
                            v499 = mDNS_DomainNameFNV1aHash(v383);
                            v1277[0].st_dev = 67109376;
                            *&v1277[0].st_mode = v498;
                            LOWORD(v1277[0].st_ino) = 1024;
                            *(&v1277[0].st_ino + 2) = v499;
                            v413 = v384;
                            v414 = "[R%u] DNSServiceReconfirmRecord FAILED -- name hash: %x";
                          }

                          else
                          {
                            v602 = mDNSLogCategory_mDNS_redacted;
                            if (!os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEFAULT))
                            {
                              goto LABEL_1174;
                            }

                            v603 = *(v79 + 50);
                            v604 = mDNS_DomainNameFNV1aHash(v383);
                            v1277[0].st_dev = 67109376;
                            *&v1277[0].st_mode = v603;
                            LOWORD(v1277[0].st_ino) = 1024;
                            *(&v1277[0].st_ino + 2) = v604;
                            v413 = v602;
                            v414 = "[R%u] DNSServiceReconfirmRecord FAILED -- name hash: %x";
                          }

                          goto LABEL_981;
                        }

                        if (v386)
                        {
                          if (!os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_DEFAULT))
                          {
                            goto LABEL_1174;
                          }

                          v595 = *(v79 + 50);
                          v1277[0].st_dev = 67109120;
                          *&v1277[0].st_mode = v595;
                          v413 = v384;
                          v414 = "[R%u] DNSServiceReconfirmRecord FAILED -- ";
                        }

                        else
                        {
                          v645 = mDNSLogCategory_mDNS_redacted;
                          if (!os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEFAULT))
                          {
                            goto LABEL_1174;
                          }

                          v646 = *(v79 + 50);
                          v1277[0].st_dev = 67109120;
                          *&v1277[0].st_mode = v646;
                          v413 = v645;
                          v414 = "[R%u] DNSServiceReconfirmRecord FAILED -- ";
                        }
                      }

                      v549 = 8;
LABEL_1173:
                      _os_log_impl(&_mh_execute_header, v413, OS_LOG_TYPE_DEFAULT, v414, v1277, v549);
                      goto LABEL_1174;
                    case 10:
                      v209 = 0;
                      v210 = 0;
                      v212 = v79[10];
                      v211 = v79[11];
                      if (v212)
                      {
                        v213 = 0;
                        v214 = 0;
                        if (v212 + 4 > v211)
                        {
                          goto LABEL_531;
                        }

                        v209 = 0;
                        v210 = 0;
                        v215 = v212 + 6;
                        v213 = bswap32(*v212);
                        v79[10] = v212 + 4;
                        if (v212 != -4 && v215 <= v211)
                        {
                          v214 = 0;
                          v209 = 0;
                          v210 = bswap32(*(v212 + 4)) >> 16;
                          v79[10] = v215;
                          if (v212 != -6 && v212 + 8 <= v211)
                          {
                            v214 = bswap32(*(v212 + 6)) >> 16;
                            v209 = (v212 + 8);
                          }

LABEL_531:
                          v339 = &v209[v214];
                          if (v339 <= v211)
                          {
                            v340 = v209;
                          }

                          else
                          {
                            v340 = 0;
                          }

                          if (v339 > v211 || v209 == 0)
                          {
                            v339 = 0;
                          }

                          v79[10] = v339;
                          if (v339 && (v342 = v339 + 1, (v339 + 1) <= v211))
                          {
                            v343 = bswap32(*v339);
                            v79[10] = v342;
                            if (v343)
                            {
                              if (v339 != -4)
                              {
                                goto LABEL_543;
                              }

                              goto LABEL_552;
                            }
                          }

                          else
                          {
                            v342 = 0;
                            v79[10] = 0;
                          }

                          v343 = 4500;
                          if (v342)
                          {
LABEL_543:
                            v344 = v79[14];
                            v345 = v79;
                            if (v344 == connection_termination)
                            {
                              v345 = LocateSubordinateRequest(v79);
                              v344 = *(v345 + 112);
                            }

                            if (v344 != regservice_termination_callback)
                            {
                              v346 = mDNSLogCategory_mDNS;
                              if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_mDNS == mDNSLogCategory_State)
                              {
                                updated = -65540;
                                if (!os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_DEFAULT))
                                {
                                  goto LABEL_1185;
                                }
                              }

                              else
                              {
                                v346 = mDNSLogCategory_mDNS_redacted;
                                updated = -65540;
                                if (!os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEFAULT))
                                {
                                  goto LABEL_1185;
                                }
                              }

                              v347 = *(v345 + 200);
                              v1277[0].st_dev = 67109120;
                              *&v1277[0].st_mode = v347;
                              v187 = v1277;
                              v188 = v346;
                              v189 = OS_LOG_TYPE_DEFAULT;
                              v190 = "[R%u] DNSServiceAddRecord(not a registered service ref)";
                              goto LABEL_1055;
                            }

                            v393 = *(v345 + 128);
                            v394 = mDNSLogCategory_mDNS;
                            if (mDNS_SensitiveLoggingEnableCount)
                            {
                              v395 = mDNSLogCategory_mDNS == mDNSLogCategory_State;
                            }

                            else
                            {
                              v395 = 1;
                            }

                            v396 = v395;
                            if (!*(v393 + 24))
                            {
                              if (v396)
                              {
                                updated = -65540;
                                if (!os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_DEFAULT))
                                {
                                  goto LABEL_1185;
                                }

                                v501 = *(v345 + 200);
                                v1277[0].st_dev = 67109120;
                                *&v1277[0].st_mode = v501;
                                v187 = v1277;
                                v188 = v394;
                                v189 = OS_LOG_TYPE_DEFAULT;
                                v190 = "[R%u] DNSServiceAddRecord: adding record to a service registered with zero port";
                              }

                              else
                              {
                                v567 = mDNSLogCategory_mDNS_redacted;
                                updated = -65540;
                                if (!os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEFAULT))
                                {
                                  goto LABEL_1185;
                                }

                                v568 = *(v345 + 200);
                                v1277[0].st_dev = 67109120;
                                *&v1277[0].st_mode = v568;
                                v187 = v1277;
                                v188 = v567;
                                v189 = OS_LOG_TYPE_DEFAULT;
                                v190 = "[R%u] DNSServiceAddRecord: adding record to a service registered with zero port";
                              }

                              goto LABEL_1055;
                            }

                            if (v396)
                            {
                              if (os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_DEFAULT))
                              {
                                v397 = *(v393 + 1624);
                                if (v397 && (v398 = *(v397 + 2736)) != 0)
                                {
                                  v399 = *(v397 + 2736);
                                  v1181 = v398;
                                  while (1)
                                  {
                                    if (!v399 || (v400 = *v399, v400 > 0x3F))
                                    {
LABEL_650:
                                      v401 = 257;
                                      goto LABEL_1326;
                                    }

                                    if (!*v399)
                                    {
                                      break;
                                    }

                                    v399 += v400 + 1;
                                    if (&v399[-v398] >= 256)
                                    {
                                      goto LABEL_650;
                                    }
                                  }

                                  v401 = (v399 - v398 + 1);
LABEL_1326:
                                  loge = v401;
                                }

                                else
                                {
                                  loge = 0;
                                  v1181 = 0;
                                }

                                v1176 = *(v345 + 200);
                                v809 = DNSTypeName(v210);
                                v810 = *(v345 + 188);
                                v1277[0].st_dev = 67111171;
                                *&v1277[0].st_mode = v1176;
                                LOWORD(v1277[0].st_ino) = 1024;
                                *(&v1277[0].st_ino + 2) = v213;
                                HIWORD(v1277[0].st_ino) = 2160;
                                *&v1277[0].st_uid = 1752392040;
                                LOWORD(v1277[0].st_rdev) = 1040;
                                *(&v1277[0].st_rdev + 2) = loge;
                                *(&v1277[0].st_rdev + 3) = 2101;
                                v1277[0].st_atimespec.tv_sec = v1181;
                                LOWORD(v1277[0].st_atimespec.tv_nsec) = 2082;
                                *(&v1277[0].st_atimespec.tv_nsec + 2) = v809;
                                WORD1(v1277[0].st_mtimespec.tv_sec) = 1024;
                                HIDWORD(v1277[0].st_mtimespec.tv_sec) = v214;
                                LOWORD(v1277[0].st_mtimespec.tv_nsec) = 1024;
                                *(&v1277[0].st_mtimespec.tv_nsec + 2) = v810;
                                HIWORD(v1277[0].st_mtimespec.tv_nsec) = 2082;
                                v1277[0].st_ctimespec.tv_sec = v345 + 256;
                                v811 = v394;
LABEL_1331:
                                _os_log_impl(&_mh_execute_header, v811, OS_LOG_TYPE_DEFAULT, "[R%u] DNSServiceAddRecord(%X, %{sensitive, mask.hash, mdnsresponder:domain_name}.*P, %{public}s, %d) PID[%d](%{public}s)", v1277, 0x48u);
                              }
                            }

                            else
                            {
                              v520 = mDNSLogCategory_mDNS_redacted;
                              if (os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEFAULT))
                              {
                                logd = v520;
                                v521 = *(v393 + 1624);
                                if (v521)
                                {
                                  v522 = *(v521 + 2736);
                                  if (v522)
                                  {
                                    v523 = *(v521 + 2736);
                                    while (1)
                                    {
                                      if (!v523 || (v524 = *v523, v524 > 0x3F))
                                      {
LABEL_849:
                                        v525 = 257;
                                        goto LABEL_1329;
                                      }

                                      if (!*v523)
                                      {
                                        break;
                                      }

                                      v523 += v524 + 1;
                                      if (&v523[-v522] >= 256)
                                      {
                                        goto LABEL_849;
                                      }
                                    }

                                    v525 = (v523 - v522 + 1);
LABEL_1329:
                                    v1183 = v525;
                                  }

                                  else
                                  {
                                    v1183 = 0;
                                  }
                                }

                                else
                                {
                                  v1183 = 0;
                                  v522 = 0;
                                }

                                v1177 = *(v345 + 200);
                                v812 = DNSTypeName(v210);
                                v813 = *(v345 + 188);
                                v1277[0].st_dev = 67111171;
                                *&v1277[0].st_mode = v1177;
                                LOWORD(v1277[0].st_ino) = 1024;
                                *(&v1277[0].st_ino + 2) = v213;
                                HIWORD(v1277[0].st_ino) = 2160;
                                *&v1277[0].st_uid = 1752392040;
                                LOWORD(v1277[0].st_rdev) = 1040;
                                *(&v1277[0].st_rdev + 2) = v1183;
                                *(&v1277[0].st_rdev + 3) = 2101;
                                v1277[0].st_atimespec.tv_sec = v522;
                                LOWORD(v1277[0].st_atimespec.tv_nsec) = 2082;
                                *(&v1277[0].st_atimespec.tv_nsec + 2) = v812;
                                WORD1(v1277[0].st_mtimespec.tv_sec) = 1024;
                                HIDWORD(v1277[0].st_mtimespec.tv_sec) = v214;
                                LOWORD(v1277[0].st_mtimespec.tv_nsec) = 1024;
                                *(&v1277[0].st_mtimespec.tv_nsec + 2) = v813;
                                HIWORD(v1277[0].st_mtimespec.tv_nsec) = 2082;
                                v1277[0].st_ctimespec.tv_sec = v345 + 256;
                                v811 = logd;
                                goto LABEL_1331;
                              }
                            }

                            v814 = *(v393 + 1624);
                            if (!v814)
                            {
                              updated = -65537;
                              goto LABEL_1185;
                            }

                            while (1)
                            {
                              Domains = add_record_to_service(v345, v814, v210, v214, v340, v343);
                              if (Domains)
                              {
                                if (*(v814 + 26))
                                {
                                  goto LABEL_294;
                                }
                              }

                              updated = 0;
                              v814 = *v814;
                              if (!v814)
                              {
                                goto LABEL_1185;
                              }
                            }
                          }

LABEL_552:
                          v348 = mDNSLogCategory_mDNS;
                          if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_mDNS == mDNSLogCategory_State)
                          {
                            updated = -65540;
                            if (!os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_DEFAULT))
                            {
                              goto LABEL_1185;
                            }
                          }

                          else
                          {
                            v348 = mDNSLogCategory_mDNS_redacted;
                            updated = -65540;
                            if (!os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEFAULT))
                            {
                              goto LABEL_1185;
                            }
                          }

                          v349 = *(v79 + 50);
                          v1277[0].st_dev = 67109120;
                          *&v1277[0].st_mode = v349;
                          v187 = v1277;
                          v188 = v348;
                          v189 = OS_LOG_TYPE_DEFAULT;
                          v190 = "[R%u] DNSServiceAddRecord(unreadable parameters)";
                          goto LABEL_1055;
                        }
                      }

                      else
                      {
                        v213 = 0;
                      }

                      v214 = 0;
                      goto LABEL_531;
                    case 11:
                      v191 = 0;
                      v192 = 0;
                      v194 = v79[10];
                      v193 = v79[11];
                      if (v194)
                      {
                        if (v194 + 4 <= v193)
                        {
                          v191 = 0;
                          v192 = 0;
                          v79[10] = v194 + 4;
                          if (v194 != -4 && v194 + 6 <= v193)
                          {
                            v191 = bswap32(*(v194 + 4)) >> 16;
                            v192 = (v194 + 6);
                          }
                        }
                      }

                      v195 = &v192[v191];
                      if (v195 <= v193)
                      {
                        v196 = v192;
                      }

                      else
                      {
                        v196 = 0;
                      }

                      if (v195 > v193 || v192 == 0)
                      {
                        v198 = 0;
                      }

                      else
                      {
                        v198 = &v192[v191];
                      }

                      v79[10] = v198;
                      if (v198 && (v198 + 1) <= v193)
                      {
                        v199 = *v198;
                        v79[10] = v198 + 1;
                        if (v198 != -4)
                        {
                          *&v1279[0].sa_len = 0;
                          __src[0] = 0;
                          v200 = get_service_attr_tsr_params(v79, v1279, __src);
                          if (!v200)
                          {
                            goto LABEL_768;
                          }

                          v201 = mDNSLogCategory_mDNS;
                          if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_mDNS == mDNSLogCategory_State)
                          {
                            if (!os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_DEFAULT))
                            {
                              goto LABEL_768;
                            }
                          }

                          else
                          {
                            v201 = mDNSLogCategory_mDNS_redacted;
                            if (!os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEFAULT))
                            {
                              goto LABEL_768;
                            }
                          }

                          v477 = *(v79 + 50);
                          v1277[0].st_dev = 67109632;
                          *&v1277[0].st_mode = v477;
                          LOWORD(v1277[0].st_ino) = 1024;
                          *(&v1277[0].st_ino + 2) = *&v1279[0].sa_len;
                          HIWORD(v1277[0].st_ino) = 1024;
                          v1277[0].st_uid = __src[0];
                          _os_log_impl(&_mh_execute_header, v201, OS_LOG_TYPE_DEFAULT, "[R%u] DNSServiceUpdateRecord foundTSRParams tsrTimestamp[%u] hostkeyHash[%x]", v1277, 0x14u);
LABEL_768:
                          v478 = bswap32(v199);
                          v480 = (v79 + 14);
                          v479 = v79[14];
                          if (v479 == connection_termination)
                          {
                            v482 = LocateSubordinateRequest(v79);
                            v481 = v482;
                            v480 = (v482 + 112);
                            v479 = *(v482 + 112);
                            if (v479 == connection_termination)
                            {
                              v566 = *(v482 + 176);
                              updated = -65541;
                              logb = v482;
                              if (v566)
                              {
                                while (*(v566 + 56) != *(v79 + 60))
                                {
                                  v566 = *(v566 + 8);
                                  if (!v566)
                                  {
                                    goto LABEL_1575;
                                  }
                                }

                                if (v200)
                                {
                                  v652 = handle_tsr_update_request(v482, *(v566 + 24), *&v1279[0].sa_len, __src[0]);
                                }

                                else
                                {
                                  v652 = update_record(*(v566 + 24), v191, v196, v478, v566 + 60, *(v482 + 200));
                                }

                                updated = v652;
                                v735 = mDNSLogCategory_mDNS;
                                if (mDNS_SensitiveLoggingEnableCount)
                                {
                                  v736 = mDNSLogCategory_mDNS == mDNSLogCategory_State;
                                }

                                else
                                {
                                  v736 = 1;
                                }

                                if (v736)
                                {
                                  if (!os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_DEFAULT))
                                  {
                                    goto LABEL_1575;
                                  }

                                  v737 = *(v566 + 24);
                                  v738 = *(v737 + 40);
                                  if (v738)
                                  {
                                    v739 = *(v737 + 40);
                                    do
                                    {
                                      if (!v739)
                                      {
                                        break;
                                      }

                                      v740 = *v739;
                                      if (v740 > 0x3F)
                                      {
                                        break;
                                      }

                                      if (!*v739)
                                      {
                                        v741 = (v739 - v738 + 1);
                                        goto LABEL_1568;
                                      }

                                      v739 += v740 + 1;
                                    }

                                    while (&v739[-v738] < 256);
                                    v741 = 257;
                                  }

                                  else
                                  {
                                    v741 = 0;
                                  }

LABEL_1568:
                                  v921 = *(v481 + 50);
                                  v922 = DNSTypeName(*(v737 + 12));
                                  v923 = *(v481 + 47);
                                  v924 = " & TSR";
                                  if (!v200)
                                  {
                                    v924 = "";
                                  }
                                }

                                else
                                {
                                  v735 = mDNSLogCategory_mDNS_redacted;
                                  if (!os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEFAULT))
                                  {
                                    goto LABEL_1575;
                                  }

                                  v743 = *(v566 + 24);
                                  v738 = *(v743 + 40);
                                  if (v738)
                                  {
                                    v744 = *(v743 + 40);
                                    do
                                    {
                                      if (!v744)
                                      {
                                        break;
                                      }

                                      v745 = *v744;
                                      if (v745 > 0x3F)
                                      {
                                        break;
                                      }

                                      if (!*v744)
                                      {
                                        v741 = (v744 - v738 + 1);
                                        goto LABEL_1572;
                                      }

                                      v744 += v745 + 1;
                                    }

                                    while (&v744[-v738] < 256);
                                    v741 = 257;
                                  }

                                  else
                                  {
                                    v741 = 0;
                                  }

LABEL_1572:
                                  v921 = *(v481 + 50);
                                  v922 = DNSTypeName(*(v743 + 12));
                                  v923 = *(v481 + 47);
                                  v924 = " & TSR";
                                  if (!v200)
                                  {
                                    v924 = "";
                                  }
                                }

                                v1277[0].st_dev = 67110915;
                                *&v1277[0].st_mode = v921;
                                LOWORD(v1277[0].st_ino) = 2160;
                                *(&v1277[0].st_ino + 2) = 1752392040;
                                HIWORD(v1277[0].st_uid) = 1040;
                                v1277[0].st_gid = v741;
                                LOWORD(v1277[0].st_rdev) = 2101;
                                *(&v1277[0].st_rdev + 2) = v738;
                                WORD1(v1277[0].st_atimespec.tv_sec) = 2082;
                                *(&v1277[0].st_atimespec.tv_sec + 4) = v922;
                                WORD2(v1277[0].st_atimespec.tv_nsec) = 2082;
                                *(&v1277[0].st_atimespec.tv_nsec + 6) = v924;
                                HIWORD(v1277[0].st_mtimespec.tv_sec) = 1024;
                                LODWORD(v1277[0].st_mtimespec.tv_nsec) = v923;
                                WORD2(v1277[0].st_mtimespec.tv_nsec) = 2082;
                                *(&v1277[0].st_mtimespec.tv_nsec + 6) = (v481 + 32);
                                _os_log_impl(&_mh_execute_header, v735, OS_LOG_TYPE_DEFAULT, "[R%u] DNSServiceUpdateRecord(%{sensitive, mask.hash, mdnsresponder:domain_name}.*P, %{public}s%{public}s) PID[%d](%{public}s)", v1277, 0x46u);
                              }

LABEL_1575:
                              v489 = 0;
                              goto LABEL_1576;
                            }
                          }

                          else
                          {
                            v481 = v79;
                          }

                          if (v479 != regservice_termination_callback)
                          {
                            v483 = mDNSLogCategory_mDNS;
                            if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_mDNS == mDNSLogCategory_State)
                            {
                              updated = -65540;
                              if (!os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_DEFAULT))
                              {
                                goto LABEL_1185;
                              }
                            }

                            else
                            {
                              v483 = mDNSLogCategory_mDNS_redacted;
                              updated = -65540;
                              if (!os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEFAULT))
                              {
                                goto LABEL_1185;
                              }
                            }

                            v484 = *(v481 + 50);
                            v1277[0].st_dev = 67109120;
                            *&v1277[0].st_mode = v484;
                            v187 = v1277;
                            v188 = v483;
                            v189 = OS_LOG_TYPE_DEFAULT;
                            v190 = "[R%u] DNSServiceUpdateRecord(not a registered service ref)";
                            goto LABEL_1055;
                          }

                          v485 = v481[16];
                          if (!*(v485 + 24))
                          {
                            v591 = mDNSLogCategory_mDNS;
                            if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_mDNS == mDNSLogCategory_State)
                            {
                              updated = -65540;
                              if (!os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_DEFAULT))
                              {
                                goto LABEL_1185;
                              }
                            }

                            else
                            {
                              v591 = mDNSLogCategory_mDNS_redacted;
                              updated = -65540;
                              if (!os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEFAULT))
                              {
                                goto LABEL_1185;
                              }
                            }

                            v592 = *(v481 + 50);
                            v1277[0].st_dev = 67109120;
                            *&v1277[0].st_mode = v592;
                            v187 = v1277;
                            v188 = v591;
                            v189 = OS_LOG_TYPE_DEFAULT;
                            v190 = "[R%u] DNSServiceUpdateRecord: updating the record of a service registered with zero port";
                            goto LABEL_1055;
                          }

                          if (!v200 && *(v79 + 60) == -1)
                          {
                            v486 = *(v485 + 16);
                            if (v486)
                            {
                              free(v486);
                              *(v485 + 16) = 0;
                            }

                            if (v191)
                            {
                              v487 = malloc_type_malloc(v191, 0x549478ECuLL);
                              if (!v487)
                              {
                                goto LABEL_1950;
                              }

                              *(v485 + 16) = v487;
                              memcpy(v487, v196, v191);
                            }

                            *(v485 + 8) = v191;
                          }

                          logb = v481;
                          v488 = *(v485 + 1624);
                          updated = -65541;
                          if (v488)
                          {
                            v489 = 0;
                            while (1)
                            {
                              v490 = *(v79 + 60);
                              if (v490 == -1)
                              {
                                v489 = (v488 + 484);
                              }

                              else
                              {
                                v491 = v488 + 39;
                                while (1)
                                {
                                  v491 = *v491;
                                  if (!v491)
                                  {
                                    break;
                                  }

                                  if (*(v491 + 2) == v490)
                                  {
                                    v489 = (v491 + 2);
                                    goto LABEL_794;
                                  }
                                }

                                if (!v489)
                                {
                                  goto LABEL_1576;
                                }
                              }

LABEL_794:
                              if (v200)
                              {
                                break;
                              }

                              v492 = update_record(v489, v191, v196, v478, v488 + 27, logb[25].isa);
                              if (v492 && *(v488 + 26))
                              {
                                goto LABEL_1061;
                              }

                              v488 = *v488;
                              if (!v488)
                              {
                                updated = 0;
                                goto LABEL_1576;
                              }
                            }

                            v492 = handle_tsr_update_request(logb, v489, *&v1279[0].sa_len, __src[0]);
LABEL_1061:
                            updated = v492;
LABEL_1576:
                            if (*v480 != regservice_termination_callback)
                            {
                              goto LABEL_1185;
                            }

                            v925 = *(logb[16].isa + 203);
                            if (v925)
                            {
                              v926 = *(v925 + 2736);
                              if (v926)
                              {
                                v927 = mDNS_DomainNameFNV1aHash(*(v925 + 2736));
                                v928 = 0;
                                goto LABEL_1582;
                              }
                            }

                            else
                            {
                              v926 = 0;
                            }

                            v927 = 0;
                            v928 = 1;
LABEL_1582:
                            if (v489)
                            {
                              v929 = *(v489 + 12);
                            }

                            else
                            {
                              v929 = 0;
                            }

                            v930 = mDNSLogCategory_mDNS;
                            if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_mDNS == mDNSLogCategory_State)
                            {
                              if (!os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_DEFAULT))
                              {
                                goto LABEL_1185;
                              }

                              if (v928)
                              {
                                v931 = 0;
                              }

                              else
                              {
                                v932 = v926;
                                do
                                {
                                  if (!v932)
                                  {
                                    break;
                                  }

                                  v933 = *v932;
                                  if (v933 > 0x3F)
                                  {
                                    break;
                                  }

                                  if (!*v932)
                                  {
                                    v931 = (v932 - v926 + 1);
                                    goto LABEL_1607;
                                  }

                                  v932 += v933 + 1;
                                }

                                while (v932 - v926 < 256);
                                v931 = 257;
                              }
                            }

                            else
                            {
                              v930 = mDNSLogCategory_mDNS_redacted;
                              if (!os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEFAULT))
                              {
                                goto LABEL_1185;
                              }

                              if (v928)
                              {
                                v931 = 0;
                              }

                              else
                              {
                                v934 = v926;
                                do
                                {
                                  if (!v934)
                                  {
                                    break;
                                  }

                                  v935 = *v934;
                                  if (v935 > 0x3F)
                                  {
                                    break;
                                  }

                                  if (!*v934)
                                  {
                                    v931 = (v934 - v926 + 1);
                                    goto LABEL_1607;
                                  }

                                  v934 += v935 + 1;
                                }

                                while (v934 - v926 < 256);
                                v931 = 257;
                              }
                            }

LABEL_1607:
                            isa = logb[25].isa;
                            isa_high = HIDWORD(logb[23].isa);
                            v1277[0].st_dev = 67110915;
                            *&v1277[0].st_mode = isa;
                            LOWORD(v1277[0].st_ino) = 2160;
                            *(&v1277[0].st_ino + 2) = 1752392040;
                            HIWORD(v1277[0].st_uid) = 1040;
                            v1277[0].st_gid = v931;
                            LOWORD(v1277[0].st_rdev) = 2101;
                            *(&v1277[0].st_rdev + 2) = v926;
                            WORD1(v1277[0].st_atimespec.tv_sec) = 1024;
                            HIDWORD(v1277[0].st_atimespec.tv_sec) = v927;
                            LOWORD(v1277[0].st_atimespec.tv_nsec) = 1024;
                            *(&v1277[0].st_atimespec.tv_nsec + 2) = v929;
                            HIWORD(v1277[0].st_atimespec.tv_nsec) = 1024;
                            LODWORD(v1277[0].st_mtimespec.tv_sec) = isa_high;
                            WORD2(v1277[0].st_mtimespec.tv_sec) = 2080;
                            *(&v1277[0].st_mtimespec.tv_sec + 6) = &logb[32];
                            v783 = v1277;
                            v784 = v930;
                            v785 = OS_LOG_TYPE_DEFAULT;
                            v786 = "[R%u] DNSServiceUpdateRecord(%{sensitive, mask.hash, mdnsresponder:domain_name}.*P (%x), %{mdns:rrtype}d) UPDATE PID[%d](%s)";
                            v787 = 62;
                            goto LABEL_1608;
                          }

                          goto LABEL_1575;
                        }
                      }

                      else
                      {
                        v79[10] = 0;
                      }

                      v311 = mDNSLogCategory_mDNS;
                      if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_mDNS == mDNSLogCategory_State)
                      {
                        updated = -65540;
                        if (!os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_DEFAULT))
                        {
                          goto LABEL_1185;
                        }
                      }

                      else
                      {
                        v311 = mDNSLogCategory_mDNS_redacted;
                        updated = -65540;
                        if (!os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEFAULT))
                        {
                          goto LABEL_1185;
                        }
                      }

                      v312 = *(v79 + 50);
                      v1277[0].st_dev = 67109120;
                      *&v1277[0].st_mode = v312;
                      v187 = v1277;
                      v188 = v311;
                      v189 = OS_LOG_TYPE_DEFAULT;
                      v190 = "[R%u] DNSServiceUpdateRecord(unreadable parameters)";
                      goto LABEL_1055;
                    case 12:
                      bzero(v1277, 0x3F1uLL);
                      v1290 = 0u;
                      v1289 = 0u;
                      v1288 = 0u;
                      v1287 = 0u;
                      v1286 = 0u;
                      v1285 = 0u;
                      v1284 = 0u;
                      v1283 = 0u;
                      v1282 = 0u;
                      memset(v1281, 0, sizeof(v1281));
                      memset(v1280, 0, sizeof(v1280));
                      memset(v1279, 0, sizeof(v1279));
                      v238 = v79[10];
                      if (v238 && (v239 = v79[11], v240 = v238 + 4, v240 <= v239))
                      {
                        v79[10] = v240;
                        if (v240)
                        {
                          v241 = v1277;
                          do
                          {
                            v242 = v79[10];
                            if (v242 >= v239 || v241 >= (&v1277[7].st_dev + 1))
                            {
                              *(&v241->st_dev - (v241 == (&v1277[7].st_dev + 1))) = 0;
                              v79[10] = 0;
                              goto LABEL_468;
                            }

                            v79[10] = v242 + 1;
                            v244 = *v242;
                            LOBYTE(v241->st_dev) = v244;
                            v241 = (v241 + 1);
                          }

                          while (v244);
                          v1279[0].sa_len = 0;
                          if (AppendDNSNameString(v1279, v1277, v237, v2, v3, v4, v5, v6))
                          {
                            if (mDNS_LoggingEnabled == 1)
                            {
                              v1154 = v1279;
                              LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "%3d: DNSServiceSetDefaultDomainForUser(%##s)", v2, v3, v4, v5, v6, *(v79 + 46));
                            }

                            goto LABEL_671;
                          }

LABEL_468:
                          LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "%3d: DNSServiceSetDefaultDomainForUser(unreadable parameters)", v2, v3, v4, v5, v6, *(v79 + 46));
                          goto LABEL_1184;
                        }
                      }

                      else
                      {
                        v79[10] = 0;
                      }

                      LOBYTE(v1277[0].st_dev) = 0;
                      goto LABEL_468;
                    case 13:
                      __src[0] = -50331905;
                      *&v1277[1].st_size = v8;
                      v1277[1].st_birthtimespec = v8;
                      v1277[1].st_ctimespec = v8;
                      v1277[1].st_mtimespec = v8;
                      v1277[1].st_atimespec = v8;
                      *&v1277[1].st_uid = v8;
                      *&v1277[1].st_dev = v8;
                      *v1277[0].st_qspare = v8;
                      *&v1277[0].st_blksize = v8;
                      *&v1277[0].st_size = v8;
                      v1277[0].st_birthtimespec = v8;
                      v1277[0].st_ctimespec = v8;
                      v1277[0].st_mtimespec = v8;
                      v1277[0].st_atimespec = v8;
                      *&v1277[0].st_uid = v8;
                      *&v1277[0].st_dev = v8;
                      if (!v79[10])
                      {
                        goto LABEL_669;
                      }

                      v202 = v79[11];
                      v203 = v1277;
                      do
                      {
                        v204 = v79[10];
                        if (v204 >= v202 || v203 >= &v1277[1].st_blksize)
                        {
                          *(&v203->st_dev - (v203 == &v1277[1].st_blksize)) = 0;
                          v79[10] = 0;
                          goto LABEL_669;
                        }

                        v79[10] = v204 + 1;
                        v206 = *v204;
                        LOBYTE(v203->st_dev) = v206;
                        v203 = (v203 + 1);
                      }

                      while (v206);
                      v207 = mDNSLogCategory_Default;
                      if (mDNS_SensitiveLoggingEnableCount)
                      {
                        v208 = mDNSLogCategory_Default == mDNSLogCategory_State;
                      }

                      else
                      {
                        v208 = 1;
                      }

                      if (v208)
                      {
                        if (os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT))
                        {
                          goto LABEL_664;
                        }
                      }

                      else
                      {
                        v207 = mDNSLogCategory_Default_redacted;
                        if (os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
                        {
LABEL_664:
                          v406 = *(v79 + 50);
                          *&v1279[0].sa_len = 67109378;
                          *&v1279[0].sa_data[2] = v406;
                          *&v1279[0].sa_data[6] = 2082;
                          *&v1279[0].sa_data[8] = v1277;
                          _os_log_impl(&_mh_execute_header, v207, OS_LOG_TYPE_DEFAULT, "[R%u] DNSServiceGetProperty(%{public}s)", &v1279[0].sa_len, 0x12u);
                        }
                      }

                      if (*&v1277[0].st_dev == 0x65566E6F6D656144 && *&v1277[0].st_nlink == 0x6E6F6973726556)
                      {
                        *&v1279[0].sa_len = 0x400000000000000;
                        *&v1279[0].sa_data[6] = -1842431573;
                        v408 = *(v79 + 46);
                        v409 = v1279;
                        v410 = 12;
                      }

                      else
                      {
LABEL_669:
                        v408 = *(v79 + 46);
                        v409 = __src;
                        v410 = 4;
                      }

                      send_all(v408, v409, v410);
                      goto LABEL_671;
                    case 14:
                      v105 = 0;
                      v106 = 0;
                      v107 = v79[10];
                      if (v107)
                      {
                        v108 = v79[11];
                        v109 = 0;
                        if ((v107 + 1) <= v108)
                        {
                          v109 = 0;
                          v105 = 0;
                          v106 = bswap32(*v107);
                          v79[10] = v107 + 1;
                          if (v107 != -4 && (v107 + 2) <= v108)
                          {
                            v109 = bswap32(v107[1]);
                            v105 = v107 + 2;
                          }
                        }
                      }

                      else
                      {
                        v109 = 0;
                      }

                      v79[10] = v105;
                      v326 = mDNSPlatformInterfaceIDfromInterfaceIndex(v109, v0, v1, v2, v3, v4, v5, v6);
                      v327 = 0;
                      v328 = 0;
                      v330 = v79[10];
                      v329 = v79[11];
                      if (v330 && v330 + 4 <= v329)
                      {
                        v327 = *(v330 + 3);
                        v328 = (v330 + 4);
                      }

                      v79[10] = v328;
                      if (v109)
                      {
                        updated = -65540;
                        if (!v326)
                        {
                          goto LABEL_1185;
                        }
                      }

                      v331 = v79[20];
                      if (v331)
                      {
                        goto LABEL_510;
                      }

                      v332 = malloc_type_calloc(1uLL, 0xD0uLL, 0xFAAE572AuLL);
                      if (!v332)
                      {
                        goto LABEL_1950;
                      }

                      v331 = v332;
                      v79[20] = v332;
                      v328 = v79[10];
                      v329 = v79[11];
                      if ((v328 + 8) > v329)
                      {
                        goto LABEL_511;
                      }

                      v79[10] = v328 + 1;
                      *(v331 + 182) = *v328;
                      v350 = v79[10];
                      v79[10] = v350 + 1;
                      *(v331 + 183) = *v350;
                      v351 = v79[10];
                      v79[10] = v351 + 1;
                      *v331 = *v351;
                      v352 = v79[10];
                      v79[10] = v352 + 1;
                      *(v331 + 1) = *v352;
                      v353 = v79[10];
                      if (!v353)
                      {
                        goto LABEL_511;
                      }

LABEL_510:
                      v354 = v353 + 1;
                      if ((v353 + 1) <= v79[11])
                      {
                        v355 = *v353;
                        v79[10] = v354;
                        if (v354)
                        {
                          v356 = bswap32(v355);
                          v357 = v331[91];
                          updated = -65540;
                          if (v327)
                          {
                            if (!v331[91])
                            {
                              goto LABEL_1185;
                            }

                            updated = -65540;
                            if ((v327 & 0x30) == 0)
                            {
                              goto LABEL_1185;
                            }
                          }

                          else
                          {
                            if (v331[91])
                            {
                              goto LABEL_1185;
                            }

                            updated = -65540;
                            if (*v331)
                            {
                              goto LABEL_1185;
                            }

                            updated = -65540;
                            if (v356)
                            {
                              goto LABEL_1185;
                            }
                          }

                          *(v79 + 62) = v106;
                          *(v79 + 63) = v109;
                          if (v327 == 16)
                          {
                            v358 = 1;
                          }

                          else
                          {
                            v358 = 2;
                          }

                          if (!v327)
                          {
                            v358 = 0;
                          }

                          *(v331 + 180) = v358;
                          v359 = *v331;
                          v331[92] = v359;
                          *(v331 + 47) = v356;
                          *(v331 + 24) = port_mapping_create_request_callback;
                          *(v331 + 25) = v79;
                          v360 = mDNSLogCategory_Default;
                          if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
                          {
                            if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT))
                            {
                              goto LABEL_1050;
                            }
                          }

                          else
                          {
                            v360 = mDNSLogCategory_Default_redacted;
                            if (!os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
                            {
                              goto LABEL_1050;
                            }
                          }

                          v648 = *(v79 + 50);
                          v649 = bswap32(v331[91]);
                          v650 = *(v79 + 47);
                          v1277[0].st_dev = 67110658;
                          *&v1277[0].st_mode = v648;
                          LOWORD(v1277[0].st_ino) = 1024;
                          *(&v1277[0].st_ino + 2) = v327;
                          HIWORD(v1277[0].st_ino) = 1024;
                          v1277[0].st_uid = HIWORD(v649);
                          LOWORD(v1277[0].st_gid) = 1024;
                          *(&v1277[0].st_gid + 2) = __rev16(v359);
                          HIWORD(v1277[0].st_rdev) = 1024;
                          *(&v1277[0].st_rdev + 1) = v356;
                          LOWORD(v1277[0].st_atimespec.tv_sec) = 1024;
                          *(&v1277[0].st_atimespec.tv_sec + 2) = v650;
                          HIWORD(v1277[0].st_atimespec.tv_sec) = 2082;
                          v1277[0].st_atimespec.tv_nsec = (v79 + 32);
                          _os_log_impl(&_mh_execute_header, v360, OS_LOG_TYPE_DEFAULT, "[R%u] DNSServiceNATPortMappingCreate(%X, %u, %u, %u) START PID[%d](%{public}s)", v1277, 0x30u);
LABEL_1050:
                          updated = mDNS_StartNATOperation((v331 + 4));
                          if (updated)
                          {
                            LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "ERROR: mDNS_StartNATOperation: %d", v2, v3, v4, v5, v6, updated);
                          }

                          else
                          {
                            v308 = port_mapping_termination_callback;
LABEL_455:
                            v79[14] = v308;
                          }

                          goto LABEL_1185;
                        }
                      }

                      else
                      {
LABEL_511:
                        v79[10] = 0;
                      }

                      v333 = mDNSLogCategory_Default;
                      if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
                      {
                        updated = -65540;
                        if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT))
                        {
                          goto LABEL_1185;
                        }
                      }

                      else
                      {
                        v333 = mDNSLogCategory_Default_redacted;
                        updated = -65540;
                        if (!os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
                        {
                          goto LABEL_1185;
                        }
                      }

                      v334 = *(v79 + 50);
                      v1277[0].st_dev = 67109120;
                      *&v1277[0].st_mode = v334;
                      v187 = v1277;
                      v188 = v333;
                      v189 = OS_LOG_TYPE_DEFAULT;
                      v190 = "[R%u] DNSServiceNATPortMappingCreate(unreadable parameters)";
                      goto LABEL_1055;
                    case 15:
                      if (v79[21])
                      {
                        goto LABEL_221;
                      }

                      v124 = malloc_type_calloc(1uLL, 0x20uLL, 0x24424941uLL);
                      if (!v124)
                      {
                        goto LABEL_1950;
                      }

                      v79[21] = v124;
LABEL_221:
                      bzero(&v1277[0].st_mode, 0x3F4uLL);
                      v125 = v79[10];
                      if (!v125)
                      {
                        goto LABEL_913;
                      }

                      v126 = v79[11];
                      if ((v125 + 4) > v126)
                      {
                        goto LABEL_913;
                      }

                      v127 = v125[1];
                      v128 = *v125;
                      v129 = *(v125 + 1);
                      v79[10] = v125 + 4;
                      if (v125 == -4)
                      {
                        goto LABEL_913;
                      }

                      if ((v125 + 8) > v126)
                      {
                        goto LABEL_913;
                      }

                      v130 = *(v125 + 1);
                      v79[10] = v125 + 8;
                      if (v125 == -8)
                      {
                        goto LABEL_913;
                      }

                      v131 = v125 + 12;
                      if ((v125 + 12) > v126)
                      {
                        goto LABEL_913;
                      }

                      v132 = bswap32(*(v125 + 2));
                      v79[10] = v131;
                      v1277[0].st_dev = v132;
                      updated = -65540;
                      if (!v131)
                      {
                        goto LABEL_1185;
                      }

                      v133 = (v128 << 24) | (v127 << 16) | (bswap32(v129) >> 16);
                      v134 = bswap32(v130);
                      p_st_size = &v1277[0].st_mode;
                      while (1)
                      {
                        v136 = v79[10];
                        if (v136 >= v126 || p_st_size >= &v1277[7].st_mode + 1)
                        {
                          break;
                        }

                        v79[10] = v136 + 1;
                        v138 = *v136;
                        *p_st_size++ = v138;
                        if (!v138)
                        {
                          v139 = v79[10];
                          if (!v139)
                          {
                            LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "%3d: DNSServiceGetAddrInfo(unreadable parameters)", v2, v3, v4, v5, v6, *(v79 + 46));
                            goto LABEL_1184;
                          }

                          HIBYTE(v1277[7].st_mode) = 0;
                          if ((v79[28] & 2) != 0)
                          {
                            v140 = v79[11];
                            v141 = v139;
                            do
                            {
                              if (v140 - v141 < 4)
                              {
                                goto LABEL_242;
                              }

                              v142 = v141 + 4;
                              if (v141 == -4)
                              {
                                goto LABEL_242;
                              }

                              v143 = __rev16(*(v141 + 1));
                              if (v140 - v142 < v143)
                              {
                                goto LABEL_242;
                              }

                              v144 = __rev16(*v141);
                              v141 = &v142[v143];
                            }

                            while (v144 != 1);
                            *v79 = Querier_RegisterCustomDNSServiceWithPListData(v142, v143);
LABEL_242:
                            HIBYTE(v1277[7].st_mode) = get_tlv_uint32(v139, v140, 2, 0) != 0;
                          }

                          *__src = 0;
                          signed_data_tlvs = _get_signed_data_tlvs(v79, __src);
                          if (*(v79 + 290))
                          {
                            if (signed_data_tlvs)
                            {
                              *buf = 0;
                              v146 = mdns_signed_resolve_result_create_from_data(signed_data_tlvs, *__src, buf);
                              if (v146 && !*buf)
                              {
                                v79[7] = v146;
                                goto LABEL_248;
                              }

                              v796 = *buf;
                              v797 = mDNSLogCategory_Default;
                              if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
                              {
                                if (os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEBUG))
                                {
                                  goto LABEL_1376;
                                }
                              }

                              else
                              {
                                v797 = mDNSLogCategory_Default_redacted;
                                if (os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEBUG))
                                {
LABEL_1376:
                                  *&v1279[0].sa_len = 134218240;
                                  *&v1279[0].sa_data[2] = *__src;
                                  *&v1279[0].sa_data[10] = 2048;
                                  *&v1279[0].sa_data[12] = v796;
                                  v817 = v797;
                                  v818 = "get_signed_resolve_tlvs len %zu data invalid %ld";
                                  v819 = 22;
LABEL_1377:
                                  _os_log_impl(&_mh_execute_header, v817, OS_LOG_TYPE_DEBUG, v818, &v1279[0].sa_len, v819);
                                }
                              }

LABEL_1378:
                              LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "%3d: handle_addrinfo_request err reading Validation TLVS", v702, v703, v704, v705, v706, *(v79 + 46));
                              updated = -65549;
                              goto LABEL_1185;
                            }

                            v701 = mDNSLogCategory_Default;
                            if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
                            {
                              if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEBUG))
                              {
                                goto LABEL_1378;
                              }
                            }

                            else
                            {
                              v701 = mDNSLogCategory_Default_redacted;
                              if (!os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEBUG))
                              {
                                goto LABEL_1378;
                              }
                            }

                            *&v1279[0].sa_len = 0;
                            v817 = v701;
                            v818 = "get_signed_resolve_tlvs data invalid";
                            v819 = 2;
                            goto LABEL_1377;
                          }

LABEL_248:
                          *(v79 + 62) = v133;
                          *(v79 + 63) = v134;
                          v147 = _os_feature_enabled_impl();
                          memset(v1279, 0, sizeof(v1279));
                          memset(v1280, 0, sizeof(v1280));
                          memset(v1281, 0, sizeof(v1281));
                          v1282 = 0u;
                          v1283 = 0u;
                          v1284 = 0u;
                          v1285 = 0u;
                          v1286 = 0u;
                          v1287 = 0u;
                          v1288 = 0u;
                          v1289 = 0u;
                          v1290 = 0u;
                          AppendDNSNameString(v1279, &v1277[0].st_mode, v148, v149, v150, v151, v152, v153);
                          v154 = _shouldLogFullRequestInfo(v79 + 51, v79 + 52);
                          v155 = mDNSLogCategory_Default;
                          if (mDNS_SensitiveLoggingEnableCount)
                          {
                            v156 = mDNSLogCategory_Default == mDNSLogCategory_State;
                          }

                          else
                          {
                            v156 = 1;
                          }

                          v157 = v156;
                          if ((v127 & 0x20) != 0 && v147)
                          {
                            if (v154)
                            {
                              if (v157)
                              {
                                if (os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT))
                                {
                                  v158 = v1279;
                                  log = *(v79 + 50);
                                  while (1)
                                  {
                                    if (!v158 || (sa_len = v158->sa_len, sa_len > 0x3F))
                                    {
LABEL_264:
                                      v160 = 257;
                                      goto LABEL_1627;
                                    }

                                    if (!v158->sa_len)
                                    {
                                      break;
                                    }

                                    v158 = (v158 + sa_len + 1);
                                    if (v158 - v1279 >= 256)
                                    {
                                      goto LABEL_264;
                                    }
                                  }

                                  v160 = (v158 - v1279 + 1);
                                  goto LABEL_1627;
                                }

LABEL_1630:
                                v79[14] = 0;
                                v964 = v79[7];
                                if (v964)
                                {
                                  if (*(v964 + 16) == &_mdns_signed_resolve_result_kind && mdns_signed_resolve_result_contains(v79[7], &v1277[0].st_mode, v134))
                                  {
                                    v965 = (*(*(v964 + 16) + 56))(v964);
                                    v966 = mdns_system_is_signed_result_uuid_valid(v965);
                                    v967 = mDNSLogCategory_Default;
                                    if (mDNS_SensitiveLoggingEnableCount)
                                    {
                                      v968 = mDNSLogCategory_Default == mDNSLogCategory_State;
                                    }

                                    else
                                    {
                                      v968 = 1;
                                    }

                                    v969 = v968;
                                    if (!v966)
                                    {
                                      if (v969)
                                      {
                                        updated = -65570;
                                        if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_ERROR))
                                        {
                                          goto LABEL_1185;
                                        }
                                      }

                                      else
                                      {
                                        v967 = mDNSLogCategory_Default_redacted;
                                        updated = -65570;
                                        if (!os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_ERROR))
                                        {
                                          goto LABEL_1185;
                                        }
                                      }

                                      v974 = *(v79 + 50);
                                      __src[0] = 67109120;
                                      __src[1] = v974;
                                      v783 = __src;
                                      v784 = v967;
                                      v785 = OS_LOG_TYPE_ERROR;
                                      v786 = "[R%u] DNSServiceGetAddrInfo: Signed result UUID revoked.";
                                      goto LABEL_1298;
                                    }

                                    if (v969)
                                    {
                                      if (os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEBUG))
                                      {
LABEL_1657:
                                        v975 = *(v79 + 50);
                                        __src[0] = 67109120;
                                        __src[1] = v975;
                                        _os_log_impl(&_mh_execute_header, v967, OS_LOG_TYPE_DEBUG, "[R%u] DNSServiceGetAddrInfo: Allowing signed result", __src, 8u);
                                      }
                                    }

                                    else
                                    {
                                      v967 = mDNSLogCategory_Default_redacted;
                                      if (os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEBUG))
                                      {
                                        goto LABEL_1657;
                                      }
                                    }

LABEL_1658:
                                    Domains = _handle_addrinfo_request_start(v79, &v1277[0].st_dev);
                                    goto LABEL_294;
                                  }

                                  v970 = mDNSLogCategory_Default;
                                  if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
                                  {
                                    if (os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_ERROR))
                                    {
                                      goto LABEL_1648;
                                    }
                                  }

                                  else
                                  {
                                    v970 = mDNSLogCategory_Default_redacted;
                                    if (os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_ERROR))
                                    {
LABEL_1648:
                                      v971 = *(v79 + 50);
                                      v972 = *(v79 + 63);
                                      __src[0] = 67109891;
                                      __src[1] = v971;
                                      LOWORD(__src[2]) = 2160;
                                      *(&__src[2] + 2) = 1752392040;
                                      HIWORD(__src[4]) = 2085;
                                      *&__src[5] = &v1277[0].st_mode;
                                      LOWORD(__src[7]) = 1024;
                                      *(&__src[7] + 2) = v972;
                                      _os_log_impl(&_mh_execute_header, v970, OS_LOG_TYPE_ERROR, "[R%u] DNSServiceGetAddrInfo: Signed result does not cover hostname: %{sensitive, mask.hash}s, ifindex: %u.", __src, 0x22u);
                                    }
                                  }

                                  *(v79 + 290) = 0;
                                  v973 = v79[7];
                                  if (v973)
                                  {
                                    os_release(v973);
                                    v79[7] = 0;
                                  }
                                }

                                if (_os_feature_enabled_impl())
                                {
                                  Domains = _handle_addrinfo_request_with_trust(v79, v1277);
                                  goto LABEL_294;
                                }

                                goto LABEL_1658;
                              }

                              v155 = mDNSLogCategory_Default_redacted;
                              if (!os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
                              {
                                goto LABEL_1630;
                              }

                              v833 = v1279;
                              log = *(v79 + 50);
                              while (1)
                              {
                                if (!v833 || (v834 = v833->sa_len, v834 > 0x3F))
                                {
LABEL_1412:
                                  v160 = 257;
                                  goto LABEL_1627;
                                }

                                if (!v833->sa_len)
                                {
                                  break;
                                }

                                v833 = (v833 + v834 + 1);
                                if (v833 - v1279 >= 256)
                                {
                                  goto LABEL_1412;
                                }
                              }

                              v160 = (v833 - v1279 + 1);
LABEL_1627:
                              st_dev = v1277[0].st_dev;
                              v960 = *(v79 + 62);
                              v961 = *(v79 + 63);
                              v962 = *(v79 + 47);
                              v963 = mDNS_DomainNameFNV1aHash(&v1279[0].sa_len);
                              __src[0] = 67111427;
                              __src[1] = log;
                              LOWORD(__src[2]) = 2160;
                              *(&__src[2] + 2) = 1752392040;
                              HIWORD(__src[4]) = 1040;
                              __src[5] = v160;
                              LOWORD(__src[6]) = 2101;
                              *(&__src[6] + 2) = v1279;
                              HIWORD(__src[8]) = 1024;
                              __src[9] = st_dev;
                              LOWORD(__src[10]) = 1024;
                              *(&__src[10] + 2) = v960;
                              HIWORD(__src[11]) = 1024;
                              LODWORD(v1222[0]) = v961;
                              WORD2(v1222[0]) = 1024;
                              *(v1222 + 6) = v962;
                              WORD5(v1222[0]) = 2082;
                              *(v1222 + 12) = v79 + 32;
                              WORD2(v1222[1]) = 1024;
                              *(&v1222[1] + 6) = v963;
                              v873 = v155;
                              v874 = "[R%u] DNSServiceGetAddrInfo START -- hostname: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P, protocols: %u, DNSSEC enabled, flags: 0x%X, interface index: %d, client pid: %d (%{public}s), name hash: %x";
LABEL_1628:
                              v875 = 74;
LABEL_1629:
                              _os_log_impl(&_mh_execute_header, v873, OS_LOG_TYPE_DEFAULT, v874, __src, v875);
                              goto LABEL_1630;
                            }

                            if (v157)
                            {
                              if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT))
                              {
                                goto LABEL_1630;
                              }
                            }

                            else
                            {
                              v155 = mDNSLogCategory_Default_redacted;
                              if (!os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
                              {
                                goto LABEL_1630;
                              }
                            }
                          }

                          else
                          {
                            if (v154)
                            {
                              if (v157)
                              {
                                if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT))
                                {
                                  goto LABEL_1630;
                                }

                                v682 = v1279;
                                logf = *(v79 + 50);
                                while (1)
                                {
                                  if (!v682 || (v683 = v682->sa_len, v683 > 0x3F))
                                  {
LABEL_1122:
                                    v684 = 257;
                                    goto LABEL_1623;
                                  }

                                  if (!v682->sa_len)
                                  {
                                    break;
                                  }

                                  v682 = (v682 + v683 + 1);
                                  if (v682 - v1279 >= 256)
                                  {
                                    goto LABEL_1122;
                                  }
                                }

                                v684 = (v682 - v1279 + 1);
                              }

                              else
                              {
                                v155 = mDNSLogCategory_Default_redacted;
                                if (!os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
                                {
                                  goto LABEL_1630;
                                }

                                v831 = v1279;
                                logf = *(v79 + 50);
                                while (1)
                                {
                                  if (!v831 || (v832 = v831->sa_len, v832 > 0x3F))
                                  {
LABEL_1405:
                                    v684 = 257;
                                    goto LABEL_1623;
                                  }

                                  if (!v831->sa_len)
                                  {
                                    break;
                                  }

                                  v831 = (v831 + v832 + 1);
                                  if (v831 - v1279 >= 256)
                                  {
                                    goto LABEL_1405;
                                  }
                                }

                                v684 = (v831 - v1279 + 1);
                              }

LABEL_1623:
                              v954 = v1277[0].st_dev;
                              v955 = *(v79 + 62);
                              v956 = *(v79 + 63);
                              v957 = *(v79 + 47);
                              v958 = mDNS_DomainNameFNV1aHash(&v1279[0].sa_len);
                              __src[0] = 67111427;
                              __src[1] = logf;
                              LOWORD(__src[2]) = 2160;
                              *(&__src[2] + 2) = 1752392040;
                              HIWORD(__src[4]) = 1040;
                              __src[5] = v684;
                              LOWORD(__src[6]) = 2101;
                              *(&__src[6] + 2) = v1279;
                              HIWORD(__src[8]) = 1024;
                              __src[9] = v954;
                              LOWORD(__src[10]) = 1024;
                              *(&__src[10] + 2) = v955;
                              HIWORD(__src[11]) = 1024;
                              LODWORD(v1222[0]) = v956;
                              WORD2(v1222[0]) = 1024;
                              *(v1222 + 6) = v957;
                              WORD5(v1222[0]) = 2082;
                              *(v1222 + 12) = v79 + 32;
                              WORD2(v1222[1]) = 1024;
                              *(&v1222[1] + 6) = v958;
                              v873 = v155;
                              v874 = "[R%u] DNSServiceGetAddrInfo START -- hostname: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P, protocols: %u, flags: 0x%X, interface index: %d, client pid: %d (%{public}s), name hash: %x";
                              goto LABEL_1628;
                            }

                            if (v157)
                            {
                              if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT))
                              {
                                goto LABEL_1630;
                              }
                            }

                            else
                            {
                              v155 = mDNSLogCategory_Default_redacted;
                              if (!os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
                              {
                                goto LABEL_1630;
                              }
                            }
                          }

                          v871 = *(v79 + 50);
                          v872 = mDNS_DomainNameFNV1aHash(&v1279[0].sa_len);
                          __src[0] = 67109376;
                          __src[1] = v871;
                          LOWORD(__src[2]) = 1024;
                          *(&__src[2] + 2) = v872;
                          v873 = v155;
                          v874 = "[R%u] DNSServiceGetAddrInfo START -- name hash: %x";
                          v875 = 14;
                          goto LABEL_1629;
                        }
                      }

                      v502 = p_st_size == &v1277[7].st_mode + 1;
                      goto LABEL_908;
                    case 16:
                    case 17:
                      goto LABEL_192;
                    case 18:
                      v1233 = v8;
                      v1232 = v8;
                      v1231 = v8;
                      v1230 = v8;
                      v1229 = v8;
                      v1228 = v8;
                      v1227 = v8;
                      v1226 = v8;
                      v1225 = v8;
                      v1224 = v8;
                      v1223 = v8;
                      v1222[1] = v8;
                      v1222[0] = v8;
                      *&__src[8] = v8;
                      *&__src[4] = v8;
                      *__src = v8;
                      bzero(v1277, 0x3F1uLL);
                      bzero(v1279, 0x3F1uLL);
                      v1276 = 0u;
                      v1275 = 0u;
                      v1274 = 0u;
                      v1273 = 0u;
                      v1272 = 0u;
                      v1271 = 0u;
                      v1270 = 0u;
                      v1269 = 0u;
                      v1268 = 0u;
                      v1267 = 0u;
                      v1266 = 0u;
                      v1265 = 0u;
                      v1264 = 0u;
                      memset(buf, 0, sizeof(buf));
                      v250 = v79[10];
                      if (v250 && (v251 = v79[11], v252 = v250 + 1, (v250 + 1) <= v251))
                      {
                        v253 = *v250;
                        v79[10] = v252;
                        if (v252)
                        {
                          v254 = bswap32(v253);
                          v255 = __src;
                          do
                          {
                            v256 = v79[10];
                            if (v256 >= v251 || v255 >= v1234)
                            {
                              v404 = v255 - (v255 == v1234);
                              goto LABEL_1046;
                            }

                            v79[10] = v256 + 1;
                            v258 = *v256;
                            *v255 = v258;
                            v255 = (v255 + 1);
                          }

                          while (v258);
                          if (v79[10])
                          {
                            v259 = v79[11];
                            v260 = v1277;
                            do
                            {
                              v261 = v79[10];
                              if (v261 >= v259 || v260 >= (&v1277[7].st_dev + 1))
                              {
                                v535 = v260 == (&v1277[7].st_dev + 1);
                                goto LABEL_1042;
                              }

                              v79[10] = v261 + 1;
                              v263 = *v261;
                              LOBYTE(v260->st_dev) = v263;
                              v260 = (v260 + 1);
                            }

                            while (v263);
                            if (v79[10])
                            {
                              v264 = v79[11];
                              v260 = v1279;
                              while (1)
                              {
                                v265 = v79[10];
                                if (v265 >= v264 || v260 >= v1291)
                                {
                                  break;
                                }

                                v79[10] = v265 + 1;
                                v267 = *v265;
                                LOBYTE(v260->st_dev) = v267;
                                v260 = (v260 + 1);
                                if (!v267)
                                {
                                  if (!v79[10])
                                  {
                                    LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "%3d: PeerConnectionRelease(unreadable parameters)", v245, v246, v247, v248, v249, *(v79 + 46));
                                    goto LABEL_1184;
                                  }

                                  if ((build_domainname_from_strings(buf, __src, v1277, &v1279[0].sa_len, v246, v247, v248, v249) & 0x80000000) != 0)
                                  {
                                    v1158 = v1279;
                                    v1154 = v1277;
                                    LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "ERROR: handle_release_request bad “%s” “%s” “%s”", v268, v269, v270, v271, v272, __src);
                                    goto LABEL_1184;
                                  }

                                  v273 = mDNSLogCategory_Default;
                                  if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
                                  {
                                    if (os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT))
                                    {
                                      v274 = *(v79 + 50);
                                      v815 = buf;
                                      while (1)
                                      {
                                        if (!v815 || (v816 = *v815, v816 > 0x3F))
                                        {
LABEL_1345:
                                          v277 = 257;
                                          goto LABEL_1613;
                                        }

                                        if (!*v815)
                                        {
                                          break;
                                        }

                                        v815 += v816 + 1;
                                        if (v815 - buf >= 256)
                                        {
                                          goto LABEL_1345;
                                        }
                                      }

                                      v277 = (v815 - buf + 1);
LABEL_1613:
                                      v943 = *(v79 + 47);
                                      *aBlock = 67110659;
                                      *&aBlock[4] = v274;
                                      *&aBlock[8] = 1024;
                                      *&aBlock[10] = v254;
                                      *&aBlock[14] = 2160;
                                      *&aBlock[16] = 1752392040;
                                      *&aBlock[24] = 1040;
                                      *&aBlock[26] = v277;
                                      *&aBlock[30] = 2101;
                                      *&aBlock[32] = buf;
                                      *&aBlock[40] = 1024;
                                      *&aBlock[42] = v943;
                                      *&aBlock[46] = 2082;
                                      *&aBlock[48] = v79 + 32;
                                      _os_log_impl(&_mh_execute_header, v273, OS_LOG_TYPE_DEFAULT, "[R%u] PeerConnectionRelease(%X %{sensitive, mask.hash, mdnsresponder:domain_name}.*P) START PID[%d](%{public}s)", aBlock, 0x38u);
                                    }
                                  }

                                  else
                                  {
                                    v273 = mDNSLogCategory_Default_redacted;
                                    if (os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
                                    {
                                      v274 = *(v79 + 50);
                                      v275 = buf;
                                      while (1)
                                      {
                                        if (!v275 || (v276 = *v275, v276 > 0x3F))
                                        {
LABEL_424:
                                          v277 = 257;
                                          goto LABEL_1613;
                                        }

                                        if (!*v275)
                                        {
                                          break;
                                        }

                                        v275 += v276 + 1;
                                        if (v275 - buf >= 256)
                                        {
                                          goto LABEL_424;
                                        }
                                      }

                                      v277 = (v275 - buf + 1);
                                      goto LABEL_1613;
                                    }
                                  }

                                  external_connection_release(buf);
LABEL_671:
                                  updated = 0;
                                  goto LABEL_1185;
                                }
                              }

                              v535 = v260 == v1291;
LABEL_1042:
                              v647 = v535;
                              v404 = v260 - v647;
LABEL_1046:
                              *v404 = 0;
                              v79[10] = 0;
                            }

                            else
                            {
                              v1279[0].sa_len = 0;
                            }
                          }

                          else
                          {
                            LOBYTE(v1277[0].st_dev) = 0;
                          }

LABEL_1047:
                          v643 = mDNSLogCategory_Default;
                          v644 = "ERROR: handle_release_request - Couldn't read name/regtype/domain";
                          goto LABEL_1183;
                        }
                      }

                      else
                      {
                        v79[10] = 0;
                      }

                      LOBYTE(__src[0]) = 0;
                      goto LABEL_1047;
                    case 19:
                      v104 = mDNSLogCategory_Default;
                      if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
                      {
                        if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT))
                        {
                          goto LABEL_438;
                        }
                      }

                      else
                      {
                        v104 = mDNSLogCategory_Default_redacted;
                        if (!os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
                        {
                          goto LABEL_438;
                        }
                      }

                      v282 = *(v79 + 50);
                      v283 = *(v79 + 47);
                      v1277[0].st_dev = 67109634;
                      *&v1277[0].st_mode = v282;
                      LOWORD(v1277[0].st_ino) = 1024;
                      *(&v1277[0].st_ino + 2) = v283;
                      HIWORD(v1277[0].st_ino) = 2082;
                      *&v1277[0].st_uid = v79 + 32;
                      _os_log_impl(&_mh_execute_header, v104, OS_LOG_TYPE_DEFAULT, "[R%u] DNSServiceCreateDelegateConnection START PID[%d](%{public}s)", v1277, 0x18u);
LABEL_438:
                      v79[14] = connection_termination;
                      v284 = mDNSLogCategory_Default;
                      if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
                      {
                        if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT))
                        {
                          goto LABEL_444;
                        }
                      }

                      else
                      {
                        v284 = mDNSLogCategory_Default_redacted;
                        if (!os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
                        {
                          goto LABEL_444;
                        }
                      }

                      v285 = *(v79 + 50);
                      v286 = *(v79 + 47);
                      v1277[0].st_dev = 67109634;
                      *&v1277[0].st_mode = v285;
                      LOWORD(v1277[0].st_ino) = 1024;
                      *(&v1277[0].st_ino + 2) = v286;
                      HIWORD(v1277[0].st_ino) = 2082;
                      *&v1277[0].st_uid = v79 + 32;
                      _os_log_impl(&_mh_execute_header, v284, OS_LOG_TYPE_DEFAULT, "[R%u] DNSServiceCreateDelegateConnection START PID[%d](%{public}s)", v1277, 0x18u);
LABEL_444:
                      v79[14] = connection_termination;
                      v287 = v79[10];
                      if (v287 && (v288 = v287 + 1, (v287 + 1) <= v79[11]))
                      {
                        v289 = bswap32(*v287);
                        v79[10] = v288;
                        if (v289)
                        {
                          v1277[0].st_dev = 4;
                          if (getsockopt(*(v79 + 46), 0, 3, v79 + 188, v1277))
                          {
                            v290 = mDNSLogCategory_Default;
                            v291 = *__error();
                            v292 = __error();
                            v1154 = strerror(*v292);
                            LogMsgWithLevel(v290, OS_LOG_TYPE_DEFAULT, "handle_connection_delegate_request: getsockopt for LOCAL_PEEREPID failed errno:%d / %s", v293, v294, v295, v296, v297, v291);
                          }

                          else
                          {
                            mdns_system_pid_to_name(*(v79 + 47), (v79 + 32));
                          }

                          goto LABEL_671;
                        }
                      }

                      else
                      {
                        v79[10] = 0;
                      }

                      v1277[0].st_dev = 16;
                      if (getsockopt(*(v79 + 46), 0, 5, v79 + 34, v1277))
                      {
                        v298 = mDNSLogCategory_Default;
                        v299 = *__error();
                        v300 = __error();
                        v1154 = strerror(*v300);
                        LogMsgWithLevel(v298, OS_LOG_TYPE_DEFAULT, "handle_connection_delegate_request: getsockopt for LOCAL_PEEREUUID failed errno:%d / %s", v301, v302, v303, v304, v305, v299);
                      }

                      else
                      {
                        *(v79 + 288) = 1;
                      }

                      goto LABEL_671;
                    default:
                      if (v82 != 63)
                      {
LABEL_192:
                        v1158 = *(v79 + 47);
                        v1159 = (v79 + 32);
                        v1154 = *(v79 + 57);
                        LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "request_callback: %3d:ERROR: Unsupported UDS req:%d PID[%d][%s]", v2, v3, v4, v5, v6, *(v79 + 46));
                        goto LABEL_1184;
                      }

                      v103 = mDNSLogCategory_Default;
                      if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
                      {
                        if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEBUG))
                        {
                          goto LABEL_486;
                        }
                      }

                      else
                      {
                        v103 = mDNSLogCategory_Default_redacted;
                        if (!os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEBUG))
                        {
                          goto LABEL_486;
                        }
                      }

                      v321 = *(v79 + 50);
                      v323 = *(v79 + 58);
                      v322 = *(v79 + 59);
                      v1277[0].st_dev = 67109632;
                      *&v1277[0].st_mode = v321;
                      LOWORD(v1277[0].st_ino) = 1024;
                      *(&v1277[0].st_ino + 2) = v322;
                      HIWORD(v1277[0].st_ino) = 1024;
                      v1277[0].st_uid = v323;
                      _os_log_impl(&_mh_execute_header, v103, OS_LOG_TYPE_DEBUG, "[R%u] Cancel %08X %08X", v1277, 0x14u);
LABEL_486:
                      v324 = all_requests;
                      if (!all_requests)
                      {
                        goto LABEL_671;
                      }

                      v325 = &all_requests;
                      do
                      {
                        if (*(v324 + 24) == v79 && *(v324 + 232) == *(v79 + 58) && *(v324 + 236) == *(v79 + 59))
                        {
                          *&v1277[0].st_dev = v324;
                          abort_request(v324);
                          *v325 = *(v324 + 16);
                          request_state_forget(v1277);
                        }

                        else
                        {
                          v325 = (v324 + 16);
                        }

                        updated = 0;
                        v324 = *v325;
                      }

                      while (*v325);
                      goto LABEL_1185;
                  }
                }

                set_peer_pid(v79);
              }

              v8 = 0;
              goto LABEL_144;
            }

            if (v7[14])
            {
              goto LABEL_141;
            }

            v1157 = *(v7 + 47);
            LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "request_callback: Reg/Add/Update/Remove %d require existing connection PID[%d][%s]", v2, v3, v4, v5, v6, v78);
          }

          break;
      }

      goto LABEL_1948;
    }

    break;
  }

  if ((v10 - 3) >= 2)
  {
    if (v10 == 1)
    {
      return;
    }

    v1155 = *(v7 + 47);
    LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "request_callback: req->ts %d != t_complete PID[%d][%s]", v2, v3, v4, v5, v6, v10);
  }

LABEL_1948:
  AbortUnlinkAndFree(v7);
}

uint64_t mDNSPlatformInterfaceIDfromInterfaceIndex(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a1;
  if (a1 > -2)
  {
    if (a1 == -1)
    {
      v9 = &mDNSInterface_LocalOnly;
      return *v9;
    }

    if (!a1)
    {
      return 0;
    }

    goto LABEL_7;
  }

  if (a1 == -4)
  {
    v9 = &mDNSInterface_BLE;
    return *v9;
  }

  if (a1 != -3)
  {
LABEL_7:
    v10 = *mDNSStorage[0];
    if (*mDNSStorage[0])
    {
      while (!*(v10 + 3768) || *(v10 + 3720) != a1)
      {
        v10 = *(v10 + 3680);
        if (!v10)
        {
          goto LABEL_11;
        }
      }

      goto LABEL_20;
    }

LABEL_11:
    if (mDNS_LoggingEnabled == 1)
    {
      LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "mDNSPlatformInterfaceIDfromInterfaceIndex: InterfaceID for interface index %d not found; Updating interface list", a4, a5, a6, a7, a8, a1);
    }

    mDNSMacOSXNetworkChanged(a1, a2, a3, a4, a5, a6, a7, a8);
    v10 = *mDNSStorage[0];
    if (*mDNSStorage[0])
    {
      while (!*(v10 + 3768) || *(v10 + 3720) != v8)
      {
        v10 = *(v10 + 3680);
        if (!v10)
        {
          return 0;
        }
      }

LABEL_20:
      v9 = (v10 + 3552);
      return *v9;
    }

    return 0;
  }

  v9 = &mDNSInterface_P2P;
  return *v9;
}

uint64_t ChopSubTypes(unsigned __int8 *a1)
{
  while (1)
  {
    v1 = *a1;
    if (v1 == 44)
    {
      break;
    }

    if (v1 == 92)
    {
      if (a1[1])
      {
        v2 = 2;
        goto LABEL_9;
      }
    }

    else if (!*a1)
    {
      v3 = 0;
      goto LABEL_10;
    }

LABEL_8:
    v2 = 1;
LABEL_9:
    a1 += v2;
  }

  v1 = a1[1];
  if (!a1[1])
  {
    goto LABEL_8;
  }

  v3 = 0;
LABEL_27:
  *a1++ = 0;
LABEL_10:
  if (v1)
  {
    if (v1 != 44)
    {
      v3 = (v3 + 1);
      while (1)
      {
        if (v1 <= 91)
        {
          switch(v1)
          {
            case 0:
              goto LABEL_10;
            case 44:
              if (a1[1])
              {
                v1 = a1[1];
                goto LABEL_27;
              }

              goto LABEL_10;
            case 46:
              return 0xFFFFFFFFLL;
          }
        }

        else if (v1 == 92 && a1[1])
        {
          v4 = 2;
          goto LABEL_21;
        }

        v4 = 1;
LABEL_21:
        a1 += v4;
        v1 = *a1;
      }
    }

    return 0xFFFFFFFFLL;
  }

  return v3;
}

uint64_t register_service_instance(uint64_t a1, _BYTE *a2)
{
  v3 = a1;
  v4 = *(a1 + 128);
  v5 = *(v4 + 8);
  if (v5 <= 0x108)
  {
    v6 = 5048;
  }

  else
  {
    v6 = v5 + 4784;
  }

  v7 = SameDomainNameBytes(a2, "\x05local");
  v8 = *v4;
  v123 = 0;
  service_attr_tsr_params = get_service_attr_tsr_params(v3, &v123 + 1, &v123);
  if (service_attr_tsr_params)
  {
    v137 = 0u;
    v138 = 0u;
    v135 = 0u;
    v136 = 0u;
    v133 = 0u;
    v134 = 0u;
    v131 = 0u;
    v132 = 0u;
    v129 = 0u;
    v130 = 0u;
    v127 = 0u;
    v128 = 0u;
    v126 = 0u;
    memset(buf, 0, sizeof(buf));
    v10 = HIDWORD(v123);
    *__tp = 0;
    *&__tp[8] = 0;
    clock_gettime(_CLOCK_MONOTONIC_RAW, __tp);
    if (v10 > 0x93A80)
    {
      v11 = mDNSLogCategory_mDNS;
      if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_mDNS == mDNSLogCategory_State)
      {
        v12 = 4294901756;
        if (os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_ERROR))
        {
LABEL_50:
          *__tp = 67109376;
          *&__tp[4] = HIDWORD(v123);
          *&__tp[8] = 1024;
          *&__tp[10] = 604800;
          v43 = "tsrTimestamp[%u] out of range (%d) on TSR";
          v44 = v11;
          v45 = OS_LOG_TYPE_ERROR;
          v46 = 14;
LABEL_133:
          _os_log_impl(&_mh_execute_header, v44, v45, v43, __tp, v46);
        }
      }

      else
      {
        v11 = mDNSLogCategory_mDNS_redacted;
        v12 = 4294901756;
        if (os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_50;
        }
      }

      return v12;
    }

    v120 = v7;
    v119 = *__tp;
    v29 = HIDWORD(v123);
    ConstructServiceName(buf, (v4 + 26), (v4 + 1099), a2);
    v30 = DomainNameHashValue(buf);
    v31 = mDNSGetTSRForAuthRecordNamed(xmmword_100170360, buf, v30);
    if (v31)
    {
      v37 = v31;
      v122[0] = v29;
      v122[1] = v123;
      v122[2] = 0;
      if (conflictWithAuthRecordsOrFlush(0, v122, v31, v32, v33, v34, v35, v36) == 1)
      {
        v38 = mDNSLogCategory_mDNS;
        if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_mDNS == mDNSLogCategory_State)
        {
          if (os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_DEFAULT))
          {
LABEL_84:
            GetRRDisplayString_rdb(v37 + 8, (v37[6] + 4), word_1001789D0);
            v85 = v37[4];
            *__tp = 141558531;
            *&__tp[4] = 1752392040;
            *&__tp[12] = 2085;
            *&__tp[14] = word_1001789D0;
            *&__tp[22] = 2048;
            *&__tp[24] = v85;
            _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "register_service_instance: TSR Stale data, auth cache is newer %{sensitive, mask.hash}s InterfaceID %p", __tp, 0x20u);
          }
        }

        else
        {
          v38 = mDNSLogCategory_mDNS_redacted;
          if (os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_84;
          }
        }

        return 4294901724;
      }
    }

    if (conflictWithCacheRecordsOrFlush(v30, buf, v29, v123))
    {
      v12 = 4294901724;
      v39 = mDNSLogCategory_mDNS;
      if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_mDNS == mDNSLogCategory_State)
      {
        if (!os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_DEFAULT))
        {
          return v12;
        }

        v83 = buf;
        while (1)
        {
          if (!v83 || (v84 = *v83, v84 > 0x3F))
          {
LABEL_82:
            v42 = 257;
            goto LABEL_132;
          }

          if (!*v83)
          {
            break;
          }

          v83 += v84 + 1;
          if (v83 - buf >= 256)
          {
            goto LABEL_82;
          }
        }

        v42 = (v83 - buf + 1);
      }

      else
      {
        v39 = mDNSLogCategory_mDNS_redacted;
        if (!os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEFAULT))
        {
          return v12;
        }

        v40 = buf;
        while (1)
        {
          if (!v40 || (v41 = *v40, v41 > 0x3F))
          {
LABEL_48:
            v42 = 257;
            goto LABEL_132;
          }

          if (!*v40)
          {
            break;
          }

          v40 += v41 + 1;
          if (v40 - buf >= 256)
          {
            goto LABEL_48;
          }
        }

        v42 = (v40 - buf + 1);
      }

LABEL_132:
      *__tp = 141558787;
      *&__tp[4] = 1752392040;
      *&__tp[12] = 1040;
      *&__tp[14] = v42;
      *&__tp[18] = 2101;
      *&__tp[20] = buf;
      *&__tp[28] = 2048;
      *&__tp[30] = v8;
      v43 = "register_service_instance: TSR Stale Data, record cache is newer %{sensitive, mask.hash, mdnsresponder:domain_name}.*P InterfaceID %p";
      v44 = v39;
      v45 = OS_LOG_TYPE_DEFAULT;
      v46 = 38;
      goto LABEL_133;
    }

    v13 = v119 - v10;
    v7 = v120;
  }

  else
  {
    v13 = 0;
  }

  if (v7)
  {
    v14 = 1;
  }

  else
  {
    v14 = *(v4 + 1355) == 0;
  }

  if (v14)
  {
    v15 = v8;
  }

  else
  {
    v15 = 0;
  }

  v16 = (v4 + 1624);
  v17 = *(v4 + 1624);
  if (v17)
  {
    while (!SameDomainNameBytes(v17 + 28, a2))
    {
      v16 = *v16;
      v17 = *v16;
      if (!*v16)
      {
        goto LABEL_20;
      }
    }

    LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "register_service_instance: domain %##s already registered for %#s.%##s", v18, v19, v20, v21, v22, a2);
    return 4294901749;
  }

LABEL_20:
  result = malloc_type_calloc(1uLL, v6, 0xC1DA0F9CuLL);
  if (result)
  {
    v24 = result;
    *result = 0;
    *(result + 8) = v3;
    *(result + 24) = 0;
    if (v7)
    {
      v25 = *(v4 + 1355) == 0;
    }

    else
    {
      v25 = 1;
    }

    v26 = !v25;
    *(result + 26) = v26;
    *(result + 27) = 0;
    v27 = a2;
    v118 = v15;
    do
    {
      if (!v27)
      {
        break;
      }

      v28 = *v27;
      if (v28 > 0x3F)
      {
        break;
      }

      if (!*v27)
      {
        v47 = v27 - a2 + 1;
        if (v47 <= 0x100u)
        {
          memcpy((result + 28), a2, v47);
          goto LABEL_56;
        }

        break;
      }

      v27 += v28 + 1;
    }

    while (v27 - a2 <= 255);
    *(result + 28) = 0;
LABEL_56:
    v48 = *(v4 + 1616);
    v116 = v13;
    v121 = v7;
    if (v48)
    {
      v117 = v24;
      result = malloc_type_calloc(1uLL, 1176 * v48, 0xC23BDF25uLL);
      if (result)
      {
        v49 = result;
        v50 = 0;
        v51 = (v4 + 90);
        while (1)
        {
          v52 = v49 + 1176 * v50;
          mDNS_SetupResourceRecord(v52, 0, 0, 255, 0x1194u, 0, 0, 0, 0);
            ;
          }

          *(v52 + 652) = 0;
          if (!AppendDNSNameString((v52 + 652), v51, v53, v54, v55, v56, v57, v58))
          {
            break;
          }

          if (++v50 == v48)
          {
            v60 = *(v4 + 1616);
            v24 = v117;
            goto LABEL_65;
          }
        }

        free(v49);
        unlink_and_free_service_instance(v117, v74, v75, v76, v77, v78, v79, v80);
        return 4294901756;
      }

      goto LABEL_143;
    }

    v60 = 0;
    v49 = 0;
LABEL_65:
    *(v24 + 16) = v49;
    if (*(v4 + 1356))
    {
      v61 = (v4 + 1356);
    }

    else
    {
      v61 = 0;
    }

    v12 = mDNS_RegisterService(mDNSStorage, v24 + 288, (v4 + 26), (v4 + 1099), a2, v61, *(v4 + 24), 0, *(v4 + 16), *(v4 + 8), v49, v60, v118, regservice_callback, v24, *(v3 + 248));
    if (v12)
    {
LABEL_69:
      LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "register_service_instance %#s.%##s%##s error %d", v62, v63, v64, v65, v66, v4 + 26);
      unlink_and_free_service_instance(v24, v67, v68, v69, v70, v71, v72, v73);
      return v12;
    }

    v81 = *(v3 + 252);
    if (v81 != -1 && v121)
    {
      if (v81)
      {
        v82 = AWDLInterfaceID == v81 || WiFiAwareInterfaceID == v81;
      }

      else
      {
        v82 = (*(v3 + 250) >> 4) & 1;
      }

      v86 = v3;
      monotonic_time_ns = _mdns_powerlog_get_monotonic_time_ns();
      bzero(buf, 0x3F1uLL);
      service_type_from_domain_name = _mdns_get_service_type_from_domain_name((v4 + 1099), buf);
      _mdns_powerlog_bonjour_event(0x10u, v82, (v86 + 256), service_type_from_domain_name, monotonic_time_ns);
      *(v86 + 8) = monotonic_time_ns;
      v3 = v86;
    }

    if (service_attr_tsr_params)
    {
      v89 = mDNSGetTSRForAuthRecordNamed(xmmword_100170360, *(v24 + 2736), *(v24 + 2720));
      if (v89)
      {
        updated = updateTSRRecord(v3, v89, v116, v123);
      }

      else
      {
        *buf = 167832317;
        buf[4] = HIBYTE(v116);
        buf[5] = BYTE2(v116);
        buf[6] = BYTE1(v116);
        buf[7] = v116;
        buf[8] = BYTE3(v123);
        buf[9] = BYTE2(v123);
        buf[10] = BYTE1(v123);
        buf[11] = v123;
        *&buf[12] = 0;
        updated = add_record_to_service(v3, v24, 41, 14, buf, 0x1194u);
      }

      v12 = updated;
      v91 = mDNSLogCategory_mDNS;
      if (mDNS_SensitiveLoggingEnableCount)
      {
        v92 = mDNSLogCategory_mDNS == mDNSLogCategory_State;
      }

      else
      {
        v92 = 1;
      }

      v93 = v92;
      if (updated)
      {
        if (v93)
        {
          if (!os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_69;
          }

          *buf = 67109376;
          *&buf[4] = HIDWORD(v123);
          *&buf[8] = 1024;
          *&buf[10] = v12;
          v94 = v91;
        }

        else
        {
          v96 = mDNSLogCategory_mDNS_redacted;
          if (!os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_69;
          }

          *buf = 67109376;
          *&buf[4] = HIDWORD(v123);
          *&buf[8] = 1024;
          *&buf[10] = v12;
          v94 = v96;
        }

        _os_log_impl(&_mh_execute_header, v94, OS_LOG_TYPE_ERROR, "Failed to add TSR record with tsrTimestamp %u error %d", buf, 0xEu);
        goto LABEL_69;
      }

      if (v93)
      {
        if (os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109120;
          *&buf[4] = v116;
          v95 = v91;
LABEL_111:
          _os_log_impl(&_mh_execute_header, v95, OS_LOG_TYPE_DEFAULT, "TSR record added with tsrTimestamp %d", buf, 8u);
        }
      }

      else
      {
        v97 = mDNSLogCategory_mDNS_redacted;
        if (os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109120;
          *&buf[4] = v116;
          v95 = v97;
          goto LABEL_111;
        }
      }
    }

    *v16 = v24;
    v98 = mDNSLogCategory_mDNS;
    if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_mDNS == mDNSLogCategory_State)
    {
      if (os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_DEFAULT))
      {
        v104 = *(v3 + 200);
        v105 = *(v24 + 2736);
        if (v105)
        {
          v110 = *(v24 + 2736);
          while (1)
          {
            if (!v110 || (v111 = *v110, v111 > 0x3F))
            {
LABEL_129:
              v108 = v24;
              v109 = 257;
              goto LABEL_139;
            }

            if (!*v110)
            {
              break;
            }

            v110 += v111 + 1;
            if (&v110[-v105] >= 256)
            {
              goto LABEL_129;
            }
          }

          v108 = v24;
          v109 = (v110 - v105 + 1);
        }

        else
        {
          v108 = v24;
          v109 = 0;
        }

        goto LABEL_139;
      }
    }

    else
    {
      v98 = mDNSLogCategory_mDNS_redacted;
      if (os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEFAULT))
      {
        v104 = *(v3 + 200);
        v105 = *(v24 + 2736);
        if (v105)
        {
          v106 = *(v24 + 2736);
          while (1)
          {
            if (!v106 || (v107 = *v106, v107 > 0x3F))
            {
LABEL_121:
              v108 = v24;
              v109 = 257;
              goto LABEL_139;
            }

            if (!*v106)
            {
              break;
            }

            v106 += v107 + 1;
            if (&v106[-v105] >= 256)
            {
              goto LABEL_121;
            }
          }

          v108 = v24;
          v109 = (v106 - v105 + 1);
        }

        else
        {
          v108 = v24;
          v109 = 0;
        }

LABEL_139:
        v112 = mDNS_DomainNameFNV1aHash(*(v24 + 2736));
        v113 = bswap32(*(v4 + 24)) >> 16;
        v114 = mDNS_DomainNameFNV1aHash(*(v108 + 1560));
        *buf = 67110659;
        *&buf[4] = v104;
        *&buf[8] = 2160;
        *&buf[10] = 1752392040;
        *&buf[18] = 1040;
        *&buf[20] = v109;
        *&buf[24] = 2101;
        *&buf[26] = v105;
        *&buf[34] = 1024;
        *&buf[36] = v112;
        *&buf[40] = 1024;
        *&buf[42] = v113;
        v24 = v108;
        *&buf[46] = 1024;
        LODWORD(v126) = v114;
        _os_log_impl(&_mh_execute_header, v98, OS_LOG_TYPE_DEFAULT, "[R%u] DNSServiceRegister result -- event: ADDED, SRV name: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P (%x), port: %u, PTR name hash: %x", buf, 0x34u);
      }
    }

    if (mDNS_McastLoggingEnabled)
    {
      LogMcastService(v24 + 2696, v3, 1, v99, v100, v101, v102, v103, v115);
    }

    return 0;
  }

LABEL_143:
  __break(1u);
  return result;
}

size_t mDNS_RegisterService(unsigned int *a1, uint64_t a2, const char *a3, unsigned __int8 *a4, _BYTE *a5, _BYTE *a6, __int16 a7, uint64_t a8, unsigned __int16 *a9, unsigned __int16 a10, uint64_t a11, unsigned int a12, uint64_t a13, uint64_t a14, uint64_t a15, int a16)
{
  if ((a16 & 0x800) != 0)
  {
    v19 = 32;
  }

  else
  {
    v19 = 2;
  }

  *a2 = a14;
  *(a2 + 8) = a15;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = a12;
  *(a2 + 40) = a11;
  *(a2 + 48) = a16;
  if (a13 == -2)
  {
    v26 = 4;
  }

  else
  {
    v20 = (a16 & 0x100000) == 0;
    v21 = (a16 & 0x20000) != 0 && a13 == 0;
    v22 = !v21;
    if (!v21)
    {
      v20 = 1;
    }

    if (v20)
    {
      v23 = 1;
    }

    else
    {
      v23 = 3;
    }

    if (a13)
    {
      v24 = 1;
    }

    else
    {
      v24 = (a16 & 0x100000) == 0;
    }

    if (v24)
    {
      v25 = 0;
    }

    else
    {
      v25 = 2;
    }

    if (v22 != 1)
    {
      v25 = v23;
    }

    if (a13 == -3)
    {
      v25 = 5;
    }

    if (a13 == -5)
    {
      v26 = 5;
    }

    else
    {
      v26 = v25;
    }
  }

  mDNS_SetupResourceRecord(a2 + 56, 0, a13, 12, 0x1194u, 4, v26, ServiceCallback, a2);
  mDNS_SetupResourceRecord(a2 + 1232, 0, a13, 12, 0x1194u, 8, v26, ServiceCallback, a2);
  if ((a16 & 0x1000000) != 0)
  {
    *(a2 + 1355) = 1;
  }

  v27 = a2 + 2408;
  mDNS_SetupResourceRecord(a2 + 2408, 0, a13, 33, 0x1194u, v19, v26, ServiceCallback, a2);
  v28 = a2 + 3584;
  mDNS_SetupResourceRecord(a2 + 3584, a8, a13, 16, 0x1194u, v19, v26, ServiceCallback, a2);
  if (a7)
  {
    v29 = *(a2 + 3632);
    v30 = a4;
    if (*v29 < a10)
    {
      *v29 = a10;
    }

    v31 = 4294901756;
    if (!ConstructServiceName((a2 + 708), "\t_services", "\a_dns-sd\x04_udp", a5))
    {
      return v31;
    }

    if (!ConstructServiceName((a2 + 1884), 0, a4, a5))
    {
      return v31;
    }

    v32 = a2 + 3060;
    if (!ConstructServiceName((a2 + 3060), a3, a4, a5))
    {
      return v31;
    }

    v33 = *(a2 + 2448);
    v34 = v33;
    do
    {
      if (!v34)
      {
        break;
      }

      v35 = *v34;
      if (v35 > 0x3F)
      {
        break;
      }

      if (!*v34)
      {
        v44 = v34 - v33 + 1;
        if (v44 <= 0x100u)
        {
          memcpy((a2 + 4236), v33, v44);
          goto LABEL_75;
        }

        break;
      }

      v34 += v35 + 1;
    }

    while (v34 - v33 <= 255);
    *(a2 + 4236) = 0;
LABEL_75:
    v45 = *(a2 + 1272);
    v46 = v45;
    do
    {
      if (!v46)
      {
        break;
      }

      v47 = *v46;
      if (v47 > 0x3F)
      {
        break;
      }

      if (!*v46)
      {
        v48 = v46 - v45 + 1;
        if (v48 <= 0x100u)
        {
          memcpy((*(a2 + 104) + 4), v45, v48);
          goto LABEL_84;
        }

        break;
      }

      v46 += v47 + 1;
    }

    while (v46 - v45 <= 255);
    *(*(a2 + 104) + 4) = 0;
LABEL_84:
    v49 = *(a2 + 2448);
    v50 = v49;
    do
    {
      if (!v50)
      {
        break;
      }

      v51 = *v50;
      if (v51 > 0x3F)
      {
        break;
      }

      if (!*v50)
      {
        v52 = v50 - v49 + 1;
        if (v52 <= 0x100u)
        {
          memcpy((*(a2 + 1280) + 4), v49, v52);
          goto LABEL_93;
        }

        break;
      }

      v50 += v51 + 1;
    }

    while (v50 - v49 <= 255);
    *(*(a2 + 1280) + 4) = 0;
LABEL_93:
    *(a2 + 1304) = v27;
    *(a2 + 1312) = v28;
    if (!a12)
    {
LABEL_115:
      *(*(a2 + 2456) + 4) = 0;
      *(*(a2 + 2456) + 6) = 0;
      *(*(a2 + 2456) + 8) = a7;
      if (a6 && *a6)
      {
        v64 = a6;
        v65 = a1;
        v31 = 4294901756;
        do
        {
          if (!v64)
          {
            break;
          }

          v66 = *v64;
          if (v66 > 0x3F)
          {
            break;
          }

          if (!*v64)
          {
            v67 = v64 - a6 + 1;
            if (v67 <= 0x100u)
            {
              memcpy((*(a2 + 2456) + 10), a6, v67);
              goto LABEL_128;
            }

            break;
          }

          v64 += v66 + 1;
        }

        while (v64 - a6 <= 255);
        *(*(a2 + 2456) + 10) = 0;
      }

      else
      {
        *(a2 + 2528) = 1;
        *(*(a2 + 2456) + 10) = 0;
        v65 = a1;
        v31 = 4294901756;
      }

LABEL_128:
      if (a9)
      {
        v68 = *(a2 + 3632);
        if (v68 + 2 != a9)
        {
          *(a2 + 3604) = a10;
          if (*v68 < a10)
          {
            return v31;
          }

          memcpy(v68 + 2, a9, a10);
        }
      }

      else
      {
        *(a2 + 3604) = 0;
      }

      *(a2 + 3672) = v27;
      mDNS_Lock_(v65, "mDNS_RegisterService", 17720);
      v75 = mDNS_Register_internal(v65, a2 + 2408, v69, v70, v71, v72, v73, v74);
      if (!v75)
      {
        v31 = mDNS_Register_internal(v65, a2 + 3584, v76, v77, v78, v79, v80, v81);
        if (!v31)
        {
          v31 = mDNS_Register_internal(v65, a2 + 56, v82, v83, v84, v85, v86, v87);
        }

        if (a12)
        {
          v88 = 0;
          do
          {
            if (!v31)
            {
              v31 = mDNS_Register_internal(v65, *(a2 + 40) + v88, v82, v83, v84, v85, v86, v87);
            }

            v88 += 1176;
          }

          while (1176 * a12 != v88);
        }

        if (v31)
        {
          mDNS_Unlock_(v65, "mDNS_RegisterService", 17743);
        }

        else
        {
          v31 = mDNS_Register_internal(v65, a2 + 1232, v82, v83, v84, v85, v86, v87);
          mDNS_Unlock_(v65, "mDNS_RegisterService", 17743);
          if (!v31)
          {
            return v31;
          }
        }

        mDNS_DeregisterService_drt(v65, a2, 0, v89, v90, v91, v92, v93);
        return v31;
      }

      v31 = v75;
      mDNS_Unlock_(v65, "mDNS_RegisterService", 17730);
      return v31;
    }

    v53 = 0;
    v54 = *(a2 + 40);
    while (1)
    {
      memset(__dst, 0, sizeof(__dst));
      v55 = *(v54 + 1176 * v53 + 40);
      v56 = v55;
      do
      {
        if (!v56)
        {
          break;
        }

        v57 = *v56;
        if (v57 > 0x3F)
        {
          break;
        }

        if (!*v56)
        {
          v58 = v56 - v55 + 1;
          if (v58 <= 0x100u)
          {
            memcpy(__dst, v55, v58);
            v59 = LOBYTE(__dst[0]) + 1;
            goto LABEL_104;
          }

          break;
        }

        v56 += v57 + 1;
      }

      while (v56 - v55 <= 255);
      v59 = 1;
LABEL_104:
      *(__dst + v59) = 0;
      AppendDomainName(__dst, v30);
      mDNS_SetupResourceRecord(*(a2 + 40) + 1176 * v53, 0, a13, 12, 0x1194u, 8, v26, ServiceCallback, a2);
      if (!ConstructServiceName((*(a2 + 40) + 1176 * v53 + 652), 0, __dst, a5))
      {
        return 4294901756;
      }

      v60 = (a2 + 3060);
      v30 = a4;
      do
      {
        if (!v60)
        {
          break;
        }

        v61 = *v60;
        if (v61 > 0x3F)
        {
          break;
        }

        if (!*v60)
        {
          v62 = v60 - v32 + 1;
          if (v62 <= 0x100u)
          {
            memcpy((*(*(a2 + 40) + 1176 * v53 + 48) + 4), (a2 + 3060), v62);
            goto LABEL_114;
          }

          break;
        }

        v60 += v61 + 1;
      }

      while (&v60[-v32] <= 255);
      *(*(*(a2 + 40) + 1176 * v53 + 48) + 4) = 0;
LABEL_114:
      v54 = *(a2 + 40);
      v63 = v54 + 1176 * v53;
      *(v63 + 72) = v27;
      *(v63 + 80) = v28;
      if (++v53 == a12)
      {
        goto LABEL_115;
      }
    }
  }

  if (a13 == -2)
  {
    v36 = 4;
  }

  else
  {
    v36 = 5;
    if (a13 != -5 && a13 != -3)
    {
      v37 = (a16 & 0x100000) == 0;
      v38 = (a16 & 0x20000) != 0 && a13 == 0;
      v39 = !v38;
      if (!v38)
      {
        v37 = 1;
      }

      if (v37)
      {
        v40 = 1;
      }

      else
      {
        v40 = 3;
      }

      if (a13)
      {
        v41 = 1;
      }

      else
      {
        v41 = (a16 & 0x100000) == 0;
      }

      if (v41)
      {
        v42 = 0;
      }

      else
      {
        v42 = 2;
      }

      if (v39 == 1)
      {
        v36 = v42;
      }

      else
      {
        v36 = v40;
      }
    }
  }

  mDNS_SetupResourceRecord(a2 + 2408, 0, a13, 33, 0x1194u, 2, v36, NSSCallback, a2);
  if (!ConstructServiceName((a2 + 3060), a3, a4, a5))
  {
    return 4294901756;
  }

  *(*(a2 + 2456) + 4) = 0;
  *(*(a2 + 2456) + 6) = 0;
  *(*(a2 + 2456) + 8) = 0;
  *(a2 + 2528) = 1;

  return mDNS_Register(a1, a2 + 2408);
}