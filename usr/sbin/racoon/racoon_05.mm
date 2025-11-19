uint64_t sub_10003957C(unint64_t a1, unint64_t a2)
{
  v2 = a1 | a2;
  if (a1 | a2)
  {
    v2 = 1;
    if (a1)
    {
      if (a2)
      {
        if (*a1 == *a2)
        {
          v3 = *(a1 + 1);
          if (v3 == *(a2 + 1))
          {
            if (v3 == 30)
            {
              if ((!*(a1 + 2) || !*(a2 + 2) || *(a1 + 2) == *(a2 + 2)) && *(a1 + 8) == *(a2 + 8) && *(a1 + 16) == *(a2 + 16))
              {
                v4 = *(a1 + 24);
                v5 = *(a2 + 24);
LABEL_21:
                if (v4 == v5)
                {
                  return 0;
                }
              }
            }

            else if (v3 == 2 && (!*(a1 + 2) || !*(a2 + 2) || *(a1 + 2) == *(a2 + 2)))
            {
              v4 = *(a1 + 4);
              v5 = *(a2 + 4);
              goto LABEL_21;
            }
          }
        }

        return 1;
      }
    }
  }

  return v2;
}

uint64_t sub_100039634(unint64_t a1, unint64_t a2)
{
  v2 = a1 | a2;
  if (a1 | a2)
  {
    v2 = 1;
    if (a1)
    {
      if (a2)
      {
        if (*a1 == *a2)
        {
          v3 = *(a1 + 1);
          if (v3 == *(a2 + 1))
          {
            if (v3 == 30)
            {
              if (*(a1 + 2) == *(a2 + 2) && *(a1 + 8) == *(a2 + 8) && *(a1 + 16) == *(a2 + 16))
              {
                v4 = *(a1 + 24);
                v5 = *(a2 + 24);
LABEL_17:
                if (v4 == v5)
                {
                  return 0;
                }
              }
            }

            else if (v3 == 2 && *(a1 + 2) == *(a2 + 2))
            {
              v4 = *(a1 + 4);
              v5 = *(a2 + 4);
              goto LABEL_17;
            }
          }
        }

        return 1;
      }
    }
  }

  return v2;
}

BOOL sub_1000396DC(unint64_t a1, unint64_t a2, int a3)
{
  v3 = a1 | a2;
  if (a1 | a2)
  {
    v3 = 1;
    if (a1)
    {
      if (a2)
      {
        if (*a1 == *a2)
        {
          v4 = *(a1 + 1);
          if (v4 == *(a2 + 1))
          {
            if (v4 == 30)
            {
              if (*(a1 + 2) == *(a2 + 2))
              {
                v5 = 0;
                while (1)
                {
                  v6 = -1 << -a3;
                  if (!a3)
                  {
                    v6 = 0;
                  }

                  v7 = a3 < 32;
                  if (a3 >= 32)
                  {
                    a3 -= 32;
                  }

                  else
                  {
                    a3 = 0;
                  }

                  if (!v7)
                  {
                    v6 = -1;
                  }

                  if (((*(a1 + 8 + v5) ^ *(a2 + 8 + v5)) & bswap32(v6)) != 0)
                  {
                    break;
                  }

                  v5 += 4;
                  if (v5 == 16)
                  {
                    return *(a1 + 24) != *(a2 + 24);
                  }
                }
              }
            }

            else if (v4 == 2 && *(a1 + 2) == *(a2 + 2) && ((*(a1 + 4) ^ *(a2 + 4)) & bswap32(-1 << -a3)) == 0)
            {
              return 0;
            }
          }
        }

        return 1;
      }
    }
  }

  return v3;
}

sockaddr *sub_1000397E0(const sockaddr *a1)
{
  v13 = 128;
  v2 = malloc_type_calloc(1uLL, 0x80uLL, 0xED0ED1DAuLL);
  if (!v2)
  {
    if (dword_100090058)
    {
      v8 = ne_log_obj();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_100065570();
      }
    }

    return 0;
  }

  v3 = v2;
  v4 = socket(a1->sa_family, 2, 0);
  if (v4 < 0)
  {
    if (dword_100090058)
    {
      v9 = ne_log_obj();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_1000654F0();
      }
    }

    goto LABEL_22;
  }

  v5 = v4;
  if (fcntl(v4, 4, 4) == -1 && dword_100090058 != 0)
  {
    v7 = ne_log_obj();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1000653BC();
    }
  }

  sub_1000399B0(v5, a1->sa_family);
  if (connect(v5, a1, a1->sa_len) < 0)
  {
    if (dword_100090058)
    {
      v10 = ne_log_obj();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_100065470();
      }
    }

    close(v5);
LABEL_22:
    free(v3);
    return 0;
  }

  if (getsockname(v5, v3, &v13) < 0)
  {
    if (dword_100090058)
    {
      v12 = ne_log_obj();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_1000653F0();
      }
    }

    close(v5);
    return 0;
  }

  close(v5);
  return v3;
}

uint64_t sub_1000399B0(int a1, int a2)
{
  if (a2 == 2)
  {
    v3 = 0;
    v4 = 21;
  }

  else
  {
    if (a2 != 30)
    {
      if (dword_100090058)
      {
        v12 = ne_log_obj();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          sub_10006569C();
        }
      }

      return 0xFFFFFFFFLL;
    }

    v3 = 41;
    v4 = 28;
  }

  v5 = ipsec_set_policy("in bypass", 9);
  if (!v5)
  {
    if (!dword_100090058)
    {
      return 0xFFFFFFFFLL;
    }

    v13 = ne_log_obj();
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      return 0xFFFFFFFFLL;
    }

LABEL_15:
    sub_100065624();
    return 0xFFFFFFFFLL;
  }

  v6 = v5;
  policylen = ipsec_get_policylen(v5);
  if (setsockopt(a1, v3, v4, v6, policylen) < 0)
  {
    if (!dword_100090058)
    {
      return 0xFFFFFFFFLL;
    }

    v14 = ne_log_obj();
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      return 0xFFFFFFFFLL;
    }

    goto LABEL_24;
  }

  free(v6);
  v8 = ipsec_set_policy("out bypass", 10);
  if (!v8)
  {
    if (!dword_100090058)
    {
      return 0xFFFFFFFFLL;
    }

    v15 = ne_log_obj();
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      return 0xFFFFFFFFLL;
    }

    goto LABEL_15;
  }

  v9 = v8;
  v10 = ipsec_get_policylen(v8);
  if ((setsockopt(a1, v3, v4, v9, v10) & 0x80000000) == 0)
  {
    free(v9);
    return 0;
  }

  if (dword_100090058)
  {
    v16 = ne_log_obj();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
LABEL_24:
      sub_1000655A4();
    }
  }

  return 0xFFFFFFFFLL;
}

ssize_t sub_100039B80(int a1, uint64_t a2, unint64_t a3, int a4, void *a5, socklen_t *a6, uint64_t a7, unsigned int *a8)
{
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v39 = 0;
  v40 = 0u;
  memset(&v35.msg_namelen, 0, 24);
  *v36 = 128;
  if (getsockname(a1, &v39, v36) < 0)
  {
    if (dword_100090058)
    {
      v22 = ne_log_obj();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        sub_1000653F0();
      }
    }

    return 0xFFFFFFFFLL;
  }

  else
  {
    v35.msg_name = a5;
    v35.msg_namelen = *a6;
    v38[0] = a2;
    v38[1] = a3;
    v35.msg_iov = v38;
    v35.msg_iovlen = 1;
    memset(v37, 0, sizeof(v37));
    v35.msg_control = v37;
    *&v35.msg_controllen = 256;
    while (1)
    {
      result = recvmsg(a1, &v35, a4);
      *v36 = result;
      if ((result & 0x8000000000000000) == 0)
      {
        break;
      }

      if (*__error() != 4)
      {
        if (dword_100090058)
        {
          v21 = ne_log_obj();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
          {
            sub_100065710();
          }
        }

        return 0xFFFFFFFFLL;
      }
    }

    if (result)
    {
      *a6 = v35.msg_namelen;
      v23 = *a8;
      *a8 = 0;
      msg_control = v35.msg_control;
      if (v35.msg_controllen >= 0xC && v35.msg_control != 0)
      {
        sa_family = v39.sa_family;
        v27 = (v35.msg_control + v35.msg_controllen);
        v28 = *v39.sa_data;
        do
        {
          if (sa_family == 2)
          {
            if (msg_control[1])
            {
              goto LABEL_40;
            }

            if (msg_control[2] != 7 || v23 < 0x10)
            {
              goto LABEL_40;
            }

            *a8 = 16;
            *a7 = 0;
            *(a7 + 8) = 0;
            *a7 = 528;
            *(a7 + 4) = msg_control[3];
          }

          else
          {
            if (sa_family != 30 || msg_control[1] != 41)
            {
              goto LABEL_40;
            }

            if (msg_control[2] != 46 || v23 < 0x1C)
            {
              goto LABEL_40;
            }

            *a8 = 28;
            *a7 = 0;
            *(a7 + 8) = 0;
            *(a7 + 24) = 0;
            *(a7 + 16) = 0;
            *a7 = 7708;
            *(a7 + 8) = *(msg_control + 3);
            if (*(a7 + 8) == 254 && (*(a7 + 9) & 0xC0) == 0x80)
            {
              v30 = msg_control[7];
            }

            else
            {
              v30 = 0;
            }

            *(a7 + 24) = v30;
          }

          *(a7 + 2) = v28;
          v23 = -1;
LABEL_40:
          v32 = (msg_control + ((*msg_control + 3) & 0x1FFFFFFFCLL));
          if (v32 + 3 <= v27)
          {
            v33 = v32 == msg_control;
            *msg_control;
          }

          else
          {
            v32 = 0;
            v33 = 1;
          }

          msg_control = v32;
        }

        while (!v33);
      }

      if (dword_10008C2C8 >= 7)
      {
        sub_1000314C0(7, a2, a3, "@@@@@@ data from readmsg:\n", v17, v18, v19, v20, v34);
        return *v36;
      }
    }
  }

  return result;
}

uint64_t sub_100039E78(int a1, const void *a2, unint64_t a3, unsigned __int8 *a4, unsigned __int8 *a5, int a6)
{
  v80 = 0u;
  v81 = 0u;
  v78 = 0u;
  v79 = 0u;
  v76 = 0u;
  v77 = 0u;
  __s1 = 0;
  v75 = 0u;
  v48 = 0;
  if (a4[1] != a5[1])
  {
    if (dword_100090058)
    {
      v17 = ne_log_obj();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        sub_100065790();
      }
    }

    return 0xFFFFFFFFLL;
  }

  v11 = a1;
  v48 = 128;
  if (getsockname(a1, &__s1, &v48) < 0)
  {
    if (dword_100090058)
    {
      v18 = ne_log_obj();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        sub_1000653F0();
      }
    }

    return 0xFFFFFFFFLL;
  }

  if (dword_100090058)
  {
    v12 = ne_log_obj();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      sub_1000657C4(&__s1);
    }

    if (dword_100090058)
    {
      v13 = ne_log_obj();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        sub_100065854(a4);
      }

      if (dword_100090058)
      {
        v14 = ne_log_obj();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
        {
          sub_1000658E4(a5);
        }
      }
    }
  }

  v15 = a4[1];
  if (v15 != __s1.sa_family)
  {
    if (dword_100090058)
    {
      v19 = ne_log_obj();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        sub_100065790();
      }
    }

    return 0xFFFFFFFFLL;
  }

  if (v15 == 30)
  {
    *v47 = *a4;
    *&v47[12] = *(a4 + 12);
    *v46 = *a5;
    *&v46[12] = *(a5 + 12);
    if (v47[8] == 255 || v47[8] == 254 && (v47[9] & 0xC0) == 0x80)
    {
      v16 = *&v47[24];
    }

    else
    {
      v16 = 0;
    }

    *&v46[4] = 0;
    *&v47[4] = 0;
    *&v73.msg_namelen = 28;
    *&v73.msg_iovlen = 1;
    v73.msg_name = v46;
    v72[0] = a2;
    v72[1] = a3;
    v73.msg_iov = v72;
    v58 = 0u;
    v59 = 0u;
    v60 = 0u;
    v61 = 0u;
    v62 = 0u;
    v63 = 0u;
    v64 = 0u;
    v65 = 0u;
    v66 = 0u;
    v67 = 0u;
    v68 = 0u;
    v69 = 0u;
    v70 = 0u;
    v71 = 0u;
    v73.msg_control = buf;
    v73.msg_flags = 0;
    v73.msg_controllen = 32;
    *buf = 0x2900000020;
    *v56 = 46;
    *&v56[4] = *(a4 + 8);
    v57 = v16;
    if (dword_100090058)
    {
      v34 = ne_log_obj();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
      {
        sub_100065BD0(v47);
      }

      if (dword_100090058)
      {
        v35 = ne_log_obj();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
        {
          sub_100065C68(v46);
        }
      }
    }

    if (a6 >= 1)
    {
      for (i = 1; ; ++i)
      {
        v48 = sendmsg(v11, &v73, 0);
        if ((v48 & 0x80000000) != 0)
        {
          if (dword_100090058)
          {
            v37 = ne_log_obj();
            if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
            {
              sub_100065D00();
            }
          }

          if (*__error() != 65 && *__error() != 50 && *__error() != 51)
          {
            return 0xFFFFFFFFLL;
          }

          v48 = 0;
        }

        if (dword_100090058)
        {
          v38 = ne_log_obj();
          if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
          {
            v39 = v48;
            sub_10003A5E8(a5);
            *v49 = 67109634;
            v50 = i;
            v51 = 1024;
            v52 = v39;
            v53 = 2080;
            v54 = &qword_10008CFE8;
            _os_log_debug_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEBUG, "%d times of %d bytes message will be sent to %s\n", v49, 0x18u);
          }
        }

        if (!--a6)
        {
          return v48;
        }
      }
    }

    return v48;
  }

  v24 = memcmp(&__s1, a4, *a4);
  if (!v24)
  {
    goto LABEL_39;
  }

  *buf = 1;
  v25 = socket(v15, 2, 0);
  if (v25 < 0)
  {
    if (dword_100090058)
    {
      v41 = ne_log_obj();
      if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
      {
        sub_1000654F0();
      }
    }

    return 0xFFFFFFFFLL;
  }

  v11 = v25;
  v45 = 4;
  if (fcntl(v25, 4) == -1)
  {
    if (dword_100090058)
    {
      v26 = ne_log_obj();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        sub_100065974();
      }
    }
  }

  if (setsockopt(v11, 0xFFFF, 512, buf, 4u) < 0)
  {
    if (dword_100090058)
    {
      v42 = ne_log_obj();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
      {
        sub_100065AA8();
      }
    }

    goto LABEL_97;
  }

  v27 = a4[1];
  if (v27 == 30)
  {
    if (setsockopt(v11, 41, 42, buf, 4u) < 0)
    {
      if (dword_100090058)
      {
        v44 = ne_log_obj();
        if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
        {
          sub_100065A28();
        }
      }

      goto LABEL_97;
    }

    v27 = a4[1];
  }

  if ((sub_1000399B0(v11, v27) & 0x80000000) != 0)
  {
    goto LABEL_97;
  }

  if (bind(v11, a4, *a4) < 0)
  {
    if (dword_100090058)
    {
      v43 = ne_log_obj();
      if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
      {
        sub_1000659A8();
      }
    }

LABEL_97:
    close(v11);
    return 0xFFFFFFFFLL;
  }

LABEL_39:
  if (dword_10008C2C8 >= 7)
  {
    sub_1000314C0(7, a2, a3, "@@@@@@ data being sent:\n", v20, v21, v22, v23, v45);
  }

  if (a6 < 1)
  {
LABEL_81:
    if (v24)
    {
      close(v11);
    }

    return v48;
  }

  v28 = 1;
  while (1)
  {
    v48 = sendto(v11, a2, a3, 0, a5, *a5);
    v29 = dword_100090058;
    if ((v48 & 0x80000000) != 0)
    {
      break;
    }

LABEL_54:
    if (v29)
    {
      v32 = ne_log_obj();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
      {
        v33 = v48;
        sub_10003A5E8(a5);
        *buf = 67109634;
        *&buf[4] = v28;
        *v56 = 1024;
        *&v56[2] = v33;
        *&v56[6] = 2080;
        *&v56[8] = &qword_10008CFE8;
        _os_log_debug_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEBUG, "%d times of %d bytes message will be sent to %s\n", buf, 0x18u);
      }
    }

    ++v28;
    if (!--a6)
    {
      goto LABEL_81;
    }
  }

  if (dword_100090058)
  {
    v30 = ne_log_obj();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      sub_100065B28();
    }
  }

  if (*__error() == 65 || *__error() == 50 || *__error() == 51)
  {
    if (dword_100090058)
    {
      v31 = ne_log_obj();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        sub_100065B7C();
      }
    }

    v48 = 0;
    v29 = dword_100090058;
    goto LABEL_54;
  }

  if (v24)
  {
    goto LABEL_97;
  }

  return 0xFFFFFFFFLL;
}

uint64_t *sub_10003A5E8(const sockaddr *a1)
{
  if (!a1)
  {
    LOBYTE(qword_10008CFE8) = 0;
    return &qword_10008CFE8;
  }

  if (a1->sa_family)
  {
    if (getnameinfo(a1, a1->sa_len, v3, 0x401u, v2, 0x20u, 10))
    {
      __strlcpy_chk();
      __strlcpy_chk();
    }

    snprintf(&qword_10008CFE8, 0x42BuLL, "%s[%s]", v3, v2);
    return &qword_10008CFE8;
  }

  result = &qword_10008CFE8;
  strcpy(&qword_10008CFE8, "anonymous");
  return result;
}

_BYTE *sub_10003A710(char a1)
{
  v2 = malloc_type_calloc(1uLL, 0x80uLL, 0x1000040AE2C30F4uLL);
  v3 = v2;
  if (v2)
  {
    *v2 = a1;
  }

  else if (dword_100090058)
  {
    v4 = ne_log_obj();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_100065D54();
    }
  }

  return v3;
}

void *sub_10003A790(unsigned __int8 *a1)
{
  v2 = malloc_type_calloc(1uLL, 0x80uLL, 0x1000040AE2C30F4uLL);
  if (v2)
  {
    v3 = *a1;
    __memcpy_chk();
  }

  else if (dword_100090058)
  {
    v4 = ne_log_obj();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_100065D54();
    }
  }

  return v2;
}

uint64_t *sub_10003A820(const sockaddr *a1, int a2)
{
  if (!a1)
  {
    LOBYTE(qword_10008D413) = 0;
    return &qword_10008D413;
  }

  if (a1->sa_family)
  {
    if (getnameinfo(a1, a1->sa_len, v5, 0x401u, v4, 0x20u, 10))
    {
      __strlcpy_chk();
      __strlcpy_chk();
    }

    snprintf(&qword_10008D413, 0x42BuLL, "%s/%d[%s]", v5, a2, v4);
    return &qword_10008D413;
  }

  result = &qword_10008D413;
  strcpy(&qword_10008D413, "anonymous");
  return result;
}

char *sub_10003A958(const sockaddr *a1)
{
  if (a1)
  {
    if (getnameinfo(a1, a1->sa_len, v2, 0x401u, 0, 0, 10))
    {
      __strlcpy_chk();
    }

    snprintf(&byte_10008D83E, 0x42BuLL, "%s", v2);
  }

  else
  {
    byte_10008D83E = 0;
  }

  return &byte_10008D83E;
}

int *sub_10003AA18(uint64_t a1)
{
  if (a1)
  {
    if (*a1 == 0)
    {
      dword_10008DC6C = 7958113;
    }

    else
    {
      sub_10003A958(a1);
      snprintf(&dword_10008DC6C, 0x40BuLL, "%s", &byte_10008D83E);
      v2 = strlen(&dword_10008DC6C);
      snprintf(&dword_10008DC6C + v2, 1035 - v2, "/%ld", *(a1 + 128));
    }
  }

  else
  {
    LOBYTE(dword_10008DC6C) = 0;
  }

  return &dword_10008DC6C;
}

char *sub_10003AADC(const char *a1, uint64_t a2, uint64_t a3)
{
  sub_10003AA18(a2);
  v5 = strdup(dword_10008DC6C);
  sub_10003AA18(a3);
  v6 = strdup(dword_10008DC6C);
  if (!v5)
  {
    if (dword_100090058)
    {
      v9 = ne_log_obj();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_9;
      }
    }

    goto LABEL_10;
  }

  v7 = v6;
  if (!v6)
  {
    if (dword_100090058)
    {
      v10 = ne_log_obj();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
LABEL_9:
        sub_10005C860();
      }
    }

LABEL_10:
    exit(1);
  }

  snprintf(byte_10008E077, 0x8BAuLL, a1, v5, v6);
  free(v5);
  free(v7);
  return byte_10008E077;
}

char *sub_10003ABDC(const char *a1, const sockaddr *a2, sockaddr *a3)
{
  v3 = a3;
  if (!a2)
  {
    v5 = 0;
    if (!a3)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  sub_10003A5E8(a2);
  v5 = strdup(&qword_10008CFE8);
  if (!v5)
  {
    if (dword_100090058)
    {
      v9 = ne_log_obj();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
LABEL_22:
        sub_10005C860();
      }
    }

LABEL_23:
    exit(1);
  }

  if (v3)
  {
LABEL_6:
    sub_10003A5E8(v3);
    v3 = strdup(&qword_10008CFE8);
    if (v3)
    {
      goto LABEL_7;
    }

    if (dword_100090058)
    {
      v10 = ne_log_obj();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_22;
      }
    }

    goto LABEL_23;
  }

LABEL_7:
  v6 = "[null]";
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = "[null]";
  }

  if (v3)
  {
    v6 = v3;
  }

  snprintf(byte_10008E931, 0x8BAuLL, a1, v7, v6);
  if (v5)
  {
    free(v5);
  }

  if (v3)
  {
    free(v3);
  }

  return byte_10008E931;
}

_BYTE *sub_10003AD10(const char *a1, const char *a2)
{
  v2 = a2;
  v17 = 0;
  memset(&v18, 0, sizeof(v18));
  v18.ai_socktype = 2;
  v18.ai_flags = 4;
  v4 = getaddrinfo(a1, a2, &v18, &v17);
  if (v4)
  {
    if (dword_100090058)
    {
      v5 = v4;
      v6 = ne_log_obj();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        if (v2)
        {
          v7 = ",";
        }

        else
        {
          v7 = &unk_100080609;
        }

        if (!v2)
        {
          v2 = &unk_100080609;
        }

        v8 = gai_strerror(v5);
        *buf = 136315906;
        v20 = a1;
        v21 = 2080;
        v22 = v7;
        v23 = 2080;
        v24 = v2;
        v25 = 2080;
        v26 = v8;
        _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "getaddrinfo(%s%s%s): %s\n", buf, 0x2Au);
      }
    }

    return 0;
  }

  if (v17->ai_next)
  {
    v9 = dword_100090058 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (!v9)
  {
    v10 = ne_log_obj();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = ",";
      v12 = &unk_100080609;
      *buf = 136315650;
      v20 = a1;
      if (!v2)
      {
        v11 = &unk_100080609;
      }

      v21 = 2080;
      if (v2)
      {
        v12 = v2;
      }

      v22 = v11;
      v23 = 2080;
      v24 = v12;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "getaddrinfo(%s%s%s): resolved to multiple address, taking the first one\n", buf, 0x20u);
    }
  }

  v13 = sub_10003A710(128);
  if (!v13)
  {
    if (dword_100090058)
    {
      v15 = ne_log_obj();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        sub_10005550C();
      }
    }

    freeaddrinfo(v17);
    return 0;
  }

  v14 = v13;
  memcpy(v13, v17->ai_addr, v17->ai_addrlen);
  freeaddrinfo(v17);
  return v14;
}

void sub_10003AF44(char *a1, unsigned __int8 *a2, unint64_t a3)
{
  v4 = a2[1];
  if (v4 == 2)
  {
    v6 = 4;
    v5 = 4;
  }

  else
  {
    if (v4 != 30)
    {
      v10 = a2 + 1;
      if (dword_100090058)
      {
        v11 = ne_log_obj();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          sub_100065E5C(v10);
        }
      }

LABEL_17:
      exit(1);
    }

    v5 = 16;
    v6 = 8;
  }

  if (8 * v5 < a3)
  {
    v12 = a2 + 1;
    if (dword_100090058)
    {
      v9 = ne_log_obj();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_100065DD4(v12);
      }
    }

    goto LABEL_17;
  }

  v7 = &a1[v6];
  memcpy(a1, a2, *a2);
  v7[a3 >> 3] &= 0xFF00u >> (a3 & 7);
  v8 = (a3 >> 3) + 1;
  if (v8 < v5)
  {

    bzero(&v7[v8], ~(a3 >> 3) + v5);
  }
}

uint64_t sub_10003B08C(unint64_t *__s1, sockaddr *a2)
{
  memset(v23, 0, sizeof(v23));
  if (__s1 && a2)
  {
    result = memcmp(__s1, &unk_10006CE88, 0x88uLL);
    if (!result)
    {
      return result;
    }

    if (*(__s1 + 1) == a2->sa_family)
    {
      v5 = sub_10003B344(__s1);
      v6 = sub_10003B344(a2);
      v7 = 0;
      if (!v5 || !v6)
      {
LABEL_9:
        sub_10003AF44(v23, &a2->sa_len, __s1[16]);
        if (dword_10008C2C8 < 7)
        {
          goto LABEL_17;
        }

        sub_10003AA18(__s1);
        v8 = strdup(dword_10008DC6C);
        sub_10003A958(a2);
        v9 = strdup(&byte_10008D83E);
        sub_10003A958(v23);
        v10 = strdup(&byte_10008D83E);
        if (v8)
        {
          if (v9)
          {
            v11 = v10;
            if (v10)
            {
              if (dword_100090058)
              {
                v12 = ne_log_obj();
                if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
                {
                  v17 = 136315650;
                  v18 = v8;
                  v19 = 2080;
                  v20 = v9;
                  v21 = 2080;
                  v22 = v11;
                  _os_log_debug_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "naddr=%s, saddr=%s (masked=%s)\n", &v17, 0x20u);
                }
              }

              free(v8);
              free(v9);
              free(v11);
LABEL_17:
              if (!sub_100039414(v23, __s1))
              {
                return (*(__s1 + 32) + v7);
              }

              return 0xFFFFFFFFLL;
            }

            if (dword_100090058)
            {
              v16 = ne_log_obj();
              if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_32;
              }
            }

LABEL_33:
            exit(1);
          }

          if (!dword_100090058)
          {
            goto LABEL_33;
          }

          v15 = ne_log_obj();
          if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_33;
          }
        }

        else
        {
          if (!dword_100090058)
          {
            goto LABEL_33;
          }

          v14 = ne_log_obj();
          if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_33;
          }
        }

LABEL_32:
        sub_10005C860();
        goto LABEL_33;
      }

      if (v5 == v6)
      {
        v7 = 1;
        goto LABEL_9;
      }
    }
  }

  else if (dword_100090058)
  {
    v13 = ne_log_obj();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_100065ED0();
    }
  }

  return 0xFFFFFFFFLL;
}

uint64_t sub_10003B344(uint64_t a1)
{
  if (!a1)
  {
    return 0xFFFFLL;
  }

  v2 = (a1 + 1);
  v1 = *(a1 + 1);
  if (v1 == 30 || v1 == 2)
  {
    v3 = *(a1 + 2);
  }

  else
  {
    if (dword_100090058)
    {
      v5 = ne_log_obj();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        sub_100065F54(v2);
      }
    }

    v3 = 0xFFFF;
  }

  return __rev16(v3);
}

uint64_t sub_10003B3CC(uint64_t result)
{
  if (result)
  {
    v2 = (result + 1);
    v1 = *(result + 1);
    if (v1 == 2 || v1 == 30)
    {
      result += 2;
    }

    else
    {
      if (dword_100090058)
      {
        v4 = ne_log_obj();
        if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
        {
          sub_100065F54(v2);
        }
      }

      return 0;
    }
  }

  return result;
}

_WORD *sub_10003B444(uint64_t a1, unsigned int a2)
{
  result = sub_10003B3CC(a1);
  if (result)
  {
    *result = __rev16(a2);
  }

  return result;
}

int *sub_10003B474()
{

  return __error();
}

char *sub_10003B4A4(uint64_t a1, unint64_t a2)
{
  v4 = (a2 >> 3) + 2 * a2 + 10;
  v5 = malloc_type_malloc(v4, 0xDCD36C5FuLL);
  if (v5)
  {
    if (a2)
    {
      v6 = 0;
      v7 = 0;
      do
      {
        snprintf(&v5[v6], v4 - v6, "%02x", *(a1 + v7));
        v8 = v6 + 2;
        if ((~v7 & 7) == 0)
        {
          v5[v8] = 32;
          v8 = v6 + 3;
          v5[v6 + 3] = 0;
        }

        ++v7;
        v6 = v8;
      }

      while (a2 != v7);
    }

    else
    {
      v8 = 0;
    }

    v5[v8] = 0;
  }

  return v5;
}

_BYTE *sub_10003B580(_BYTE *a1, int a2, void *a3)
{
  LOBYTE(v3) = *a1;
  if (!*a1)
  {
    return 0;
  }

  v7 = 0;
  v8 = 1;
  do
  {
    if ((v3 & 0x80) != 0)
    {
      if (!__maskrune(v3, 0x4000uLL))
      {
        return 0;
      }
    }

    else
    {
      v9 = _DefaultRuneLocale.__runetype[v3];
      if ((v9 & 0x10000) != 0)
      {
        ++v7;
      }

      else if ((v9 & 0x4000) == 0)
      {
        return 0;
      }
    }

    v3 = a1[v8++];
  }

  while (v3);
  v10 = 0;
  if (v7)
  {
    if ((v7 & 1) == 0)
    {
      v11 = malloc_type_malloc(v7 >> 1, 0xAA83BE90uLL);
      v10 = v11;
      if (v11)
      {
        v12 = *a1;
        if (*a1)
        {
          v13 = 0;
          v14 = 0;
          v15 = a1 + 1;
          v16 = v11;
          do
          {
            if ((v12 & 0x80) == 0 && (_DefaultRuneLocale.__runetype[v12] & 0x10000) != 0)
            {
              if (v14)
              {
                __str[1] = v12;
                __str[2] = 0;
                v17 = strtol(__str, 0, a2);
                v14 = 0;
                *v16++ = v17;
                ++v13;
              }

              else
              {
                __str[0] = v12;
                v14 = 1;
              }
            }

            v18 = *v15++;
            v12 = v18;
          }

          while (v18);
        }

        else
        {
          v13 = 0;
        }

        *a3 = v13;
      }
    }
  }

  return v10;
}

const char *sub_10003B708(uint64_t a1, uint64_t a2, int a3)
{
  if (a3 <= 5506)
  {
    if (a3 > 5280)
    {
      if (a3 > 5444)
      {
        if (a3 <= 5475)
        {
          if (a3 == 5445)
          {
            return "IKEv1 ident R msg5 rcvd";
          }

          if (a3 == 5474)
          {
            return "IKEv1 ident R msg2 sent";
          }
        }

        else
        {
          switch(a3)
          {
            case 5476:
              return "IKEv1 ident R msg4 sent";
            case 5504:
              return "IKEv1 agg R start";
            case 5505:
              return "IKEv1 agg R msg1 rcvd";
          }
        }
      }

      else if (a3 <= 5439)
      {
        if (a3 == 5281)
        {
          return "IKEv1 agg I msg1 sent";
        }

        if (a3 == 5283)
        {
          return "IKEv1 agg I msg3 sent";
        }
      }

      else
      {
        switch(a3)
        {
          case 5440:
            return "IKEv1 ident R start";
          case 5441:
            return "IKEv1 ident R msg1 rcvd";
          case 5443:
            return "IKEv1 ident R msg3 rcvd";
        }
      }
    }

    else if (a3 > 5216)
    {
      if (a3 <= 5220)
      {
        if (a3 == 5217)
        {
          return "IKEv1 ident I msg1 sent";
        }

        if (a3 == 5219)
        {
          return "IKEv1 ident I msg3 sent";
        }
      }

      else
      {
        switch(a3)
        {
          case 5221:
            return "IKEv1 ident I msg5 sent";
          case 5248:
            return "IKEv1 agg I start";
          case 5250:
            return "IKEv1 agg I msg2 rcvd";
        }
      }
    }

    else if (a3 <= 5185)
    {
      if (a3 == 63)
      {
        return "IKEv1 info";
      }

      if (a3 == 5184)
      {
        return "IKEv1 ident I start";
      }
    }

    else
    {
      switch(a3)
      {
        case 5186:
          return "IKEv1 ident I msg2 rcvd";
        case 5188:
          return "IKEv1 ident I msg4 rcvd";
        case 5190:
          return "IKEv1 ident I msg6 rcvd";
      }
    }
  }

  else if (a3 <= 6592)
  {
    if (a3 > 6351)
    {
      if (a3 <= 6370)
      {
        if (a3 == 6352)
        {
          return "IKEv1 quick I getspi done";
        }

        if (a3 == 6369)
        {
          return "IKEv1 quick I msg1 sent";
        }
      }

      else
      {
        switch(a3)
        {
          case 6371:
            return "IKEv1 quick I msg3 sent";
          case 6384:
            return "IKEv1 quick I getspi sent";
          case 6592:
            return "IKEv1 quick R start";
        }
      }
    }

    else if (a3 <= 6335)
    {
      if (a3 == 5507)
      {
        return "IKEv1 agg R msg3 rcvd";
      }

      if (a3 == 5538)
      {
        return "IKEv1 agg R msg2 sent";
      }
    }

    else
    {
      switch(a3)
      {
        case 6336:
          return "IKEv1 quick I start";
        case 6338:
          return "IKEv1 quick I msg2 rcvd";
        case 6344:
          return "IKEv1 quick I addsa";
      }
    }
  }

  else if (a3 <= 6625)
  {
    if (a3 <= 6595)
    {
      if (a3 == 6593)
      {
        return "IKEv1 quick R msg1 rcvd";
      }

      if (a3 == 6595)
      {
        return "IKEv1 quick R msg3 rcvd";
      }
    }

    else
    {
      switch(a3)
      {
        case 6596:
          return "IKEv1 quick R commit";
        case 6600:
          return "IKEv1 quick R addsa";
        case 6608:
          return "IKEv1 quick R getspi done";
      }
    }
  }

  else if (a3 > 10239)
  {
    switch(a3)
    {
      case 18432:
        return "Phase 2 expired";
      case 17408:
        return "Phase 1 expired";
      case 10240:
        return "Phase 2 established";
    }
  }

  else
  {
    switch(a3)
    {
      case 6626:
        return "IKEv1 quick R msg2 sent";
      case 6640:
        return "IKEv1 quick R getspi sent";
      case 9216:
        return "Phase 1 Established";
    }
  }

  return "???";
}

char *sub_10003BB9C(int a1)
{
  v1 = &off_100089130;
  v2 = 11;
  while (*(v1 - 2) != a1)
  {
    v1 += 3;
    if (!--v2)
    {
      v3 = byte_10008F1EB;
      snprintf(byte_10008F1EB, 0x14uLL, "%d", a1);
      return v3;
    }
  }

  return *v1;
}

char *sub_10003BC10(int a1)
{
  v1 = &off_100089238;
  v2 = 10;
  while (*(v1 - 2) != a1)
  {
    v1 += 3;
    if (!--v2)
    {
      v3 = byte_10008F1EB;
      snprintf(byte_10008F1EB, 0x14uLL, "%d", a1);
      return v3;
    }
  }

  return *v1;
}

char *sub_10003BC84(int a1)
{
  v1 = &off_100089328;
  v2 = 36;
  while (*(v1 - 2) != a1)
  {
    v1 += 3;
    if (!--v2)
    {
      v3 = byte_10008F1EB;
      snprintf(byte_10008F1EB, 0x14uLL, "%d", a1);
      return v3;
    }
  }

  return *v1;
}

char *sub_10003BCF8(int a1)
{
  v1 = &off_100089688;
  v2 = 21;
  while (*(v1 - 2) != a1)
  {
    v1 += 3;
    if (!--v2)
    {
      v3 = byte_10008F1EB;
      snprintf(byte_10008F1EB, 0x14uLL, "%d", a1);
      return v3;
    }
  }

  return *v1;
}

char *sub_10003BD6C(int a1)
{
  v1 = &off_100089880;
  v2 = 36;
  while (*(v1 - 2) != a1)
  {
    v1 += 3;
    if (!--v2)
    {
      v3 = byte_10008F1EB;
      snprintf(byte_10008F1EB, 0x14uLL, "%d", a1);
      return v3;
    }
  }

  return *v1;
}

char *sub_10003BDE0(int a1)
{
  v1 = &off_100089BE0;
  v2 = 4;
  while (*(v1 - 2) != a1)
  {
    v1 += 3;
    if (!--v2)
    {
      v3 = byte_10008F1EB;
      snprintf(byte_10008F1EB, 0x14uLL, "%d", a1);
      return v3;
    }
  }

  return *v1;
}

char *sub_10003BE54(int a1)
{
  v1 = &off_100089C40;
  v2 = 4;
  while (*(v1 - 2) != a1)
  {
    v1 += 3;
    if (!--v2)
    {
      v3 = byte_10008F1EB;
      snprintf(byte_10008F1EB, 0x14uLL, "%d", a1);
      return v3;
    }
  }

  return *v1;
}

const char *sub_10003BEC8(int a1)
{
  if (a1 == 1)
  {
    return "IKE";
  }

  v1 = byte_10008F1EB;
  snprintf(byte_10008F1EB, 0x14uLL, "%d", a1);
  return v1;
}

char *sub_10003BF24(int a1)
{
  v1 = &off_100089CA0;
  v2 = 6;
  while (*(v1 - 2) != a1)
  {
    v1 += 3;
    if (!--v2)
    {
      v3 = byte_10008F1EB;
      snprintf(byte_10008F1EB, 0x14uLL, "%d", a1);
      return v3;
    }
  }

  return *v1;
}

char *sub_10003BF98(int a1)
{
  v1 = &off_100089D30;
  v2 = 13;
  while (*(v1 - 2) != a1)
  {
    v1 += 3;
    if (!--v2)
    {
      v3 = byte_10008F1EB;
      snprintf(byte_10008F1EB, 0x14uLL, "%d", a1);
      return v3;
    }
  }

  return *v1;
}

char *sub_10003C00C(int a1)
{
  v1 = &off_100089E68;
  v2 = 3;
  while (*(v1 - 2) != a1)
  {
    v1 += 3;
    if (!--v2)
    {
      v3 = byte_10008F1EB;
      snprintf(byte_10008F1EB, 0x14uLL, "%d", a1);
      return v3;
    }
  }

  return *v1;
}

char *sub_10003C080(int a1, uint64_t a2)
{
  v2 = 4;
  for (i = &off_100089C48; ; i += 3)
  {
    if (*(i - 4) == a1)
    {
      v4 = *i;
      if (*i)
      {
        break;
      }
    }

    if (!--v2)
    {
      snprintf(byte_10008F1EB, 0x14uLL, "%d", a2);
      return byte_10008F1EB;
    }
  }

  return (v4)(a2);
}

char *sub_10003C118(int a1)
{
  v1 = &off_100089EB0;
  v2 = 9;
  while (*(v1 - 2) != a1)
  {
    v1 += 3;
    if (!--v2)
    {
      v3 = byte_10008F1EB;
      snprintf(byte_10008F1EB, 0x14uLL, "%d", a1);
      return v3;
    }
  }

  return *v1;
}

char *sub_10003C18C(int a1)
{
  v1 = 0;
  for (i = 1; ; i = 0)
  {
    v3 = i;
    v4 = &unk_10008A790 + 24 * v1;
    if (*v4 == a1)
    {
      break;
    }

    v1 = 1;
    if ((v3 & 1) == 0)
    {
      v5 = byte_10008F1EB;
      snprintf(byte_10008F1EB, 0x14uLL, "%d", a1);
      return v5;
    }
  }

  return *(v4 + 1);
}

char *sub_10003C210(int a1)
{
  v1 = &off_100089F88;
  v2 = 7;
  while (*(v1 - 2) != a1)
  {
    v1 += 3;
    if (!--v2)
    {
      v3 = byte_10008F1EB;
      snprintf(byte_10008F1EB, 0x14uLL, "%d", a1);
      return v3;
    }
  }

  return *v1;
}

char *sub_10003C284(int a1)
{
  v1 = &off_10008A030;
  v2 = 7;
  while (*(v1 - 2) != a1)
  {
    v1 += 3;
    if (!--v2)
    {
      v3 = byte_10008F1EB;
      snprintf(byte_10008F1EB, 0x14uLL, "%d", a1);
      return v3;
    }
  }

  return *v1;
}

char *sub_10003C2F8(int a1, uint64_t a2)
{
  v2 = 9;
  for (i = &off_100089EB8; ; i += 3)
  {
    if (*(i - 4) == a1)
    {
      v4 = *i;
      if (*i)
      {
        break;
      }
    }

    if (!--v2)
    {
      snprintf(byte_10008F1EB, 0x14uLL, "%d", a2);
      return byte_10008F1EB;
    }
  }

  return (v4)(a2);
}

char *sub_10003C390(int a1)
{
  v1 = &off_10008A0D8;
  v2 = 11;
  while (*(v1 - 2) != a1)
  {
    v1 += 3;
    if (!--v2)
    {
      v3 = byte_10008F1EB;
      snprintf(byte_10008F1EB, 0x14uLL, "%d", a1);
      return v3;
    }
  }

  return *v1;
}

char *sub_10003C404(int a1)
{
  v1 = &off_10008A1E0;
  v2 = 18;
  while (*(v1 - 2) != a1)
  {
    v1 += 3;
    if (!--v2)
    {
      v3 = byte_10008F1EB;
      snprintf(byte_10008F1EB, 0x14uLL, "%d", a1);
      return v3;
    }
  }

  return *v1;
}

char *sub_10003C478(int a1)
{
  v1 = &off_10008A390;
  v2 = 7;
  while (*(v1 - 2) != a1)
  {
    v1 += 3;
    if (!--v2)
    {
      v3 = byte_10008F1EB;
      snprintf(byte_10008F1EB, 0x14uLL, "%d", a1);
      return v3;
    }
  }

  return *v1;
}

char *sub_10003C4EC(int a1)
{
  v1 = &off_10008A438;
  v2 = 8;
  while (*(v1 - 2) != a1)
  {
    v1 += 3;
    if (!--v2)
    {
      v3 = byte_10008F1EB;
      snprintf(byte_10008F1EB, 0x14uLL, "%d", a1);
      return v3;
    }
  }

  return *v1;
}

char *sub_10003C560(int a1)
{
  v1 = &off_10008A4F8;
  v2 = 15;
  while (*(v1 - 2) != a1)
  {
    v1 += 3;
    if (!--v2)
    {
      v3 = byte_10008F1EB;
      snprintf(byte_10008F1EB, 0x14uLL, "%d", a1);
      return v3;
    }
  }

  return *v1;
}

char *sub_10003C5D4(int a1)
{
  v1 = &off_10008A660;
  v2 = 10;
  while (*(v1 - 2) != a1)
  {
    v1 += 3;
    if (!--v2)
    {
      v3 = byte_10008F1EB;
      snprintf(byte_10008F1EB, 0x14uLL, "%d", a1);
      return v3;
    }
  }

  return *v1;
}

char *sub_10003C648(int a1)
{
  v1 = &off_10008A750;
  v2 = 3;
  while (*(v1 - 2) != a1)
  {
    v1 += 3;
    if (!--v2)
    {
      v3 = byte_10008F1EB;
      snprintf(byte_10008F1EB, 0x14uLL, "%d", a1);
      return v3;
    }
  }

  return *v1;
}

char *sub_10003C6BC(int a1)
{
  v1 = 0;
  for (i = 1; ; i = 0)
  {
    v3 = i;
    v4 = &unk_10008A790 + 24 * v1;
    if (*v4 == a1)
    {
      break;
    }

    v1 = 1;
    if ((v3 & 1) == 0)
    {
      v5 = byte_10008F1EB;
      snprintf(byte_10008F1EB, 0x14uLL, "%d", a1);
      return v5;
    }
  }

  return *(v4 + 1);
}

char *sub_10003C740(int a1, uint64_t a2)
{
  v2 = 18;
  for (i = &off_10008A1E8; ; i += 3)
  {
    if (*(i - 4) == a1)
    {
      v4 = *i;
      if (*i)
      {
        break;
      }
    }

    if (!--v2)
    {
      snprintf(byte_10008F1EB, 0x14uLL, "%d", a2);
      return byte_10008F1EB;
    }
  }

  return (v4)(a2);
}

char *sub_10003C7D8(int a1)
{
  v1 = &off_10008A7C8;
  v2 = 3;
  while (*(v1 - 2) != a1)
  {
    v1 += 3;
    if (!--v2)
    {
      v3 = byte_10008F1EB;
      snprintf(byte_10008F1EB, 0x14uLL, "%d", a1);
      return v3;
    }
  }

  return *v1;
}

char *sub_10003C84C(int a1)
{
  v1 = &off_10008A810;
  v2 = 7;
  while (*(v1 - 2) != a1)
  {
    v1 += 3;
    if (!--v2)
    {
      v3 = byte_10008F1EB;
      snprintf(byte_10008F1EB, 0x14uLL, "%d", a1);
      return v3;
    }
  }

  return *v1;
}

char *sub_10003C8C0(int a1, uint64_t a2)
{
  v2 = 7;
  for (i = &off_10008A818; ; i += 3)
  {
    if (*(i - 4) == a1)
    {
      v4 = *i;
      if (*i)
      {
        break;
      }
    }

    if (!--v2)
    {
      snprintf(byte_10008F1EB, 0x14uLL, "%d", a2);
      return byte_10008F1EB;
    }
  }

  return (v4)(a2);
}

char *sub_10003C958(int a1)
{
  v1 = &off_10008A8B8;
  v2 = 23;
  while (*(v1 - 2) != a1)
  {
    v1 += 3;
    if (!--v2)
    {
      v3 = byte_10008F1EB;
      snprintf(byte_10008F1EB, 0x14uLL, "%d", a1);
      return v3;
    }
  }

  return *v1;
}

char *sub_10003C9CC(int a1)
{
  v1 = &off_10008AAE0;
  v2 = 8;
  while (*(v1 - 2) != a1)
  {
    v1 += 3;
    if (!--v2)
    {
      v3 = byte_10008F1EB;
      snprintf(byte_10008F1EB, 0x14uLL, "%d", a1);
      return v3;
    }
  }

  return *v1;
}

char *sub_10003CA40(int a1)
{
  v1 = 0;
  for (i = 1; ; i = 0)
  {
    v3 = i;
    v4 = &unk_10008AB98 + 24 * v1;
    if (*v4 == a1)
    {
      break;
    }

    v1 = 1;
    if ((v3 & 1) == 0)
    {
      v5 = byte_10008F1EB;
      snprintf(byte_10008F1EB, 0x14uLL, "%d", a1);
      return v5;
    }
  }

  return *(v4 + 1);
}

const char *sub_10003CAC4(int a1)
{
  if (a1 <= 16)
  {
    if (a1 == 1)
    {
      return "icmp";
    }

    if (a1 == 6)
    {
      return "tcp";
    }

LABEL_12:
    v1 = byte_10008F1EB;
    snprintf(byte_10008F1EB, 0x14uLL, "%d", a1);
    return v1;
  }

  if (a1 == 17)
  {
    return "udp";
  }

  if (a1 == 58)
  {
    return "icmpv6";
  }

  if (a1 != 255)
  {
    goto LABEL_12;
  }

  return "any";
}

const char *sub_10003CB78(int a1)
{
  if (a1 == 1)
  {
    return "ipsec_doi";
  }

  v1 = byte_10008F1EB;
  snprintf(byte_10008F1EB, 0x14uLL, "%d", a1);
  return v1;
}

const char *sub_10003CBD4(int a1)
{
  if (a1 > 3)
  {
    if (a1 <= 31)
    {
      if (a1 == 4)
      {
        return "aggressive";
      }

      if (a1 == 5)
      {
        return "_info";
      }
    }

    else
    {
      switch(a1)
      {
        case ' ':
          return "_quick";
        case '!':
          return "_newgrp";
        case '""':
          return "_ackinfo";
      }
    }

LABEL_21:
    v1 = byte_10008F1EB;
    snprintf(byte_10008F1EB, 0x14uLL, "%d", a1);
    return v1;
  }

  if (a1 <= 1)
  {
    if (!a1)
    {
      return "_none";
    }

    if (a1 == 1)
    {
      return "base";
    }

    goto LABEL_21;
  }

  if (a1 == 2)
  {
    return "main";
  }

  else
  {
    return "_auth";
  }
}

char *sub_10003CCE4(int a1)
{
  if ((a1 - 1) < 5)
  {
    return off_10008ABC8[a1 - 1];
  }

  v1 = byte_10008F1EB;
  snprintf(byte_10008F1EB, 0x14uLL, "%d", a1);
  return v1;
}

const char *sub_10003CD48(int a1)
{
  if (!a1)
  {
    return "off";
  }

  if (a1 == 1)
  {
    return "on";
  }

  v1 = byte_10008F1EB;
  snprintf(byte_10008F1EB, 0x14uLL, "%d", a1);
  return v1;
}

void *sub_10003CDB4(unsigned __int8 *a1)
{
  v2 = malloc_type_malloc(*a1 + 24, 0xA89E2F68uLL);
  if (v2)
  {
    *v2 = dword_100090C70 + time(0);
    memcpy(v2 + 3, a1, *a1);
    v3 = off_10008C2E0;
    v2[1] = off_10008C2E0;
    v4 = v3 + 16;
    v5 = v3 == 0;
    off_10008C2E0 = v2;
    v6 = &off_10008C2E8;
    if (!v5)
    {
      v6 = v4;
    }

    *v6 = v2 + 1;
    v2[2] = &off_10008C2E0;
  }

  return v2;
}

uint64_t sub_10003CE50(unsigned __int8 *a1, int a2)
{
  if (!dword_100090C70)
  {
    return 0;
  }

  v4 = time(0);
  v5 = *off_10008C2E8[1];
  if (!v5)
  {
LABEL_11:
    if (a2 && !sub_10003CDB4(a1))
    {
      if (dword_100090058)
      {
        v13 = ne_log_obj();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          sub_100065FC8(v13);
        }
      }

      return dword_100090C70 + time(0);
    }

    return 0;
  }

  v6 = v4;
  while (1)
  {
    if (v6 > *v5)
    {
      v7 = v5[1];
      v8 = v5[2];
      v9 = (v7 + 16);
      if (!v7)
      {
        v9 = &off_10008C2E8;
      }

      *v9 = v8;
      *v8 = v7;
      free(v5);
      v10 = off_10008C2E8;
      goto LABEL_10;
    }

    if (!sub_100039414(a1, (v5 + 3)))
    {
      break;
    }

    v10 = v5[2];
LABEL_10:
    v5 = *v10[1];
    if (!v5)
    {
      goto LABEL_11;
    }
  }

  result = *v5;
  if (a2)
  {
    v12 = result - v6 + dword_100090C70;
    if (v12 >= 10)
    {
      LODWORD(v12) = 10;
    }

    result = (v12 + v6);
    *v5 = result;
  }

  return result;
}

__int128 *sub_10003CF98(int a1)
{
  if (a1 == 19)
  {
    return &xmmword_10006CF10;
  }

  v2 = &off_10008C2F8;
  v3 = 20;
  while (*(v2 - 2) != a1)
  {
    v2 += 3;
    if (!--v3)
    {
      return 0;
    }
  }

  return *v2;
}

double sub_10003CFE0()
{
  v14 = 0;
  v15 = 0;
  v0 = 19;
  v1 = &qword_10008C300;
  do
  {
    v15 = *(v1 - 1);
    v14 = strlen(v15);
    v2 = sub_100004240(&v14);
    *v1 = v2;
    if (!v2)
    {
      if (dword_100090058)
      {
        v3 = ne_log_obj();
        if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
        {
          sub_10006600C(&v12, v13, v3);
        }
      }
    }

    v4 = *(v1 - 4);
    v5 = *v1;
    if (v4 == 17)
    {
      *(v5[1] + 14) = 1;
      *(v5[1] + 15) = 0;
    }

    else if (v4 == 16)
    {
      v6 = sub_10003D3A8(8uLL);
      if (v6)
      {
        v7 = v6;
        *v6[1] = *v5[1];
        sub_10003D4F0(v5);
        v5 = v7;
      }

      else
      {
        if (dword_100090058)
        {
          v8 = ne_log_obj();
          if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
          {
            sub_10006600C(&buf, v17, v8);
          }
        }

        v5 = 0;
      }
    }

    *v1 = v5;
    v1 += 3;
    --v0;
  }

  while (v0);
  v9 = sub_10003D3A8(0x10uLL);
  qword_10008C4C8 = v9;
  if (!v9)
  {
    if (dword_100090058)
    {
      v11 = ne_log_obj();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_10006604C(v11);
      }
    }

    exit(1);
  }

  result = -1.61043727e48;
  *v9[1] = xmmword_10006CF10;
  return result;
}

void *sub_10003D184(int a1)
{
  if (a1 == -1)
  {
    v1 = 0;
  }

  else
  {
    v1 = a1;
  }

  v2 = &qword_10008C300;
  v3 = 20;
  while (*(v2 - 4) != v1)
  {
    v2 += 3;
    if (!--v3)
    {
      if (dword_100090058)
      {
        v4 = ne_log_obj();
        if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
        {
          sub_100066090(v1, v4);
        }
      }

      return 0;
    }
  }

  v6 = *v2;

  return sub_10003D538(v6);
}

uint64_t sub_10003D224(uint64_t a1)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  v2 = (bswap32(*(a1 + 2)) >> 16) - 4;
  v3 = &off_10008C2F8;
  v4 = 20;
  do
  {
    v5 = v3[1];
    v6 = *v5;
    if (!strncmp(*(v5 + 1), (a1 + 4), *v5))
    {
      if (v6 >= v2)
      {
        if (!dword_100090058)
        {
          return *(v3 - 2);
        }

        v12 = ne_log_obj();
        if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          return *(v3 - 2);
        }

        v15 = *v3;
        v16 = 136315138;
        v17 = v15;
        v14 = "received Vendor ID: %s\n";
      }

      else
      {
        if (!dword_100090058)
        {
          return *(v3 - 2);
        }

        v12 = ne_log_obj();
        if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          return *(v3 - 2);
        }

        v13 = *v3;
        v16 = 136315138;
        v17 = v13;
        v14 = "received broken Microsoft ID: %s\n";
      }

      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, v14, &v16, 0xCu);
      return *(v3 - 2);
    }

    v3 += 3;
    --v4;
  }

  while (v4);
  if (dword_10008C2C8 >= 7)
  {
    sub_1000314C0(7, a1 + 4, v2, "received unknown Vendor ID:\n", v7, v8, v9, v10, v16);
  }

  return 0xFFFFFFFFLL;
}

void *sub_10003D3A8(size_t a1)
{
  v2 = malloc_type_malloc(0x10uLL, 0x1010040466105CCuLL);
  v3 = v2;
  if (v2)
  {
    *v2 = a1;
    if (a1)
    {
      v4 = malloc_type_calloc(1uLL, a1, 0x100004077774924uLL);
      v3[1] = v4;
      if (!v4)
      {
        free(v3);
        return 0;
      }
    }

    else
    {
      v2[1] = 0;
    }
  }

  return v3;
}

void **sub_10003D42C(void **a1, size_t size)
{
  if (!a1)
  {
    return sub_10003D3A8(size);
  }

  v3 = a1;
  if (*a1)
  {
    v4 = malloc_type_realloc(a1[1], size, 0x100004077774924uLL);
    if (v4)
    {
      v5 = v4;
      if (size > *v3)
      {
        bzero(*v3 + v4, size - *v3);
      }

      *v3 = size;
      v3[1] = v5;
    }

    else
    {
      sub_10003D4F0(v3);
      return 0;
    }

    return v3;
  }

  sub_10003D4F0(a1);

  return sub_10003D3A8(size);
}

void sub_10003D4F0(void *a1)
{
  if (a1)
  {
    v2 = a1[1];
    if (v2)
    {
      free(v2);
    }

    free(a1);
  }
}

void *sub_10003D538(uint64_t a1)
{
  if (a1)
  {
    v2 = sub_10003D3A8(*a1);
    v3 = v2;
    if (v2)
    {
      memcpy(v2[1], *(a1 + 8), *a1);
    }
  }

  else
  {
    if (dword_100090058)
    {
      v4 = ne_log_obj();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        sub_100066108(v4);
      }
    }

    return 0;
  }

  return v3;
}

void *sub_10003D5B4(const void *a1, size_t a2)
{
  if (!a1)
  {
    return 0;
  }

  v4 = sub_10003D3A8(a2);
  v5 = v4;
  if (v4)
  {
    memcpy(v4[1], a1, a2);
  }

  return v5;
}

uint64_t sub_10003D620(void *a1, uint64_t a2)
{
  if (a1[9])
  {
    v4 = dword_100090058 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    v5 = ne_log_obj();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = sub_10003A5E8(a2);
      v7 = *(a1[9] + 52);
      if (*(a1[8] + 176) == 2)
      {
        v8 = "(NAT-T forced)";
      }

      else
      {
        v8 = &unk_100080609;
      }

      v19 = 136315650;
      v20 = v6;
      v21 = 1024;
      v22 = v7;
      v23 = 2080;
      v24 = v8;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Hashing %s with algo #%d %s\n", &v19, 0x1Cu);
    }
  }

  v9 = *(a2 + 1);
  if (v9 == 2)
  {
    v11 = 4;
    v10 = 4;
  }

  else
  {
    if (v9 != 30)
    {
      if (dword_100090058)
      {
        v16 = ne_log_obj();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          sub_10006614C((a2 + 1));
        }
      }

      return 0;
    }

    v10 = 16;
    v11 = 8;
  }

  v12 = sub_10003D3A8(v10 + 18);
  if (!v12)
  {
    return 0;
  }

  v13 = v12;
  v14 = v12[1];
  *v14 = *a1;
  v14[1] = a1[1];
  v15 = (v14 + 2);
  if (*(a1[8] + 176) == 2)
  {
    bzero(v15, v10);
  }

  else
  {
    memcpy(v15, (a2 + v11), v10);
  }

  *&v15[v10] = *(a2 + 2);
  v17 = sub_1000278F8(v13, a1);
  sub_10003D4F0(v13);
  return v17;
}

uint64_t sub_10003D80C(uint64_t a1, uint64_t a2, int a3)
{
  if (*(*(a1 + 64) + 176) == 2)
  {
    return 0;
  }

  v6 = 48;
  if ((a3 == 0) != (**(a1 + 88) == 14))
  {
    v6 = 56;
    v7 = -3;
  }

  else
  {
    v7 = -5;
  }

  v8 = sub_10003D620(a1, *(a1 + v6));
  if (*a2 == *v8 && !memcmp(*(a2 + 8), *(v8 + 8), *a2))
  {
    *(a1 + 96) &= v7;
    v3 = 1;
  }

  else
  {
    v3 = 0;
  }

  v9 = *(a1 + 440);
  if (v9)
  {
    *(v9 + 284) = *(a1 + 96);
  }

  sub_10003D4F0(v8);
  return v3;
}

uint64_t sub_10003D914(uint64_t a1, int a2)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  *a1 = a2;
  v4 = a2 - 6;
  if ((a2 - 6) >= 0xA)
  {
    if (dword_100090058)
    {
      v11 = ne_log_obj();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_1000661BC(a2, v11);
      }
    }

    return 0xFFFFFFFFLL;
  }

  else
  {
    result = 0;
    v6 = word_10006CF20[v4];
    v7 = word_10006CF34[v4];
    v8 = word_10006CF48[v4];
    v9 = word_10006CF5C[v4];
    v10 = word_10006CF70[v4];
    *(a1 + 4) = *(qword_1000900B8 + 18);
    *(a1 + 14) = v6;
    *(a1 + 16) = v7;
    *(a1 + 6) = v8;
    *(a1 + 8) = v9;
    *(a1 + 10) = 2;
    *(a1 + 12) = v10;
  }

  return result;
}

uint64_t sub_10003DA04(uint64_t a1, void *a2, void *a3)
{
  *a3 = 0;
  *a2 = 0;
  v3 = *(*(a1 + 256) + 88);
  if (!v3)
  {
    return 0;
  }

  v4 = *(v3 + 16);
  if (*(v3 + 16))
  {
    v7 = *(a1 + 8 * (*(a1 + 60) != 0));
    v8 = *(a1 + 8 * (*(a1 + 60) == 0));
    v10 = (v7 + 1);
    v9 = *(v7 + 1);
    if (v9 == 2)
    {
      v11 = 4;
    }

    else
    {
      if (v9 != 30)
      {
        if (dword_100090058)
        {
          v14 = ne_log_obj();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            sub_100066284(v10);
          }
        }

        return 0xFFFFFFFFLL;
      }

      v11 = 16;
    }

    v12 = *(v8 + 1);
    if (v12 == 2)
    {
      v13 = 4;
    }

    else
    {
      if (v12 != 30)
      {
        if (dword_100090058)
        {
          v23 = ne_log_obj();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
          {
            sub_100066284((v8 + 1));
          }
        }

        return 0xFFFFFFFFLL;
      }

      v13 = 16;
    }

    v15 = sub_10003D3A8(v11 + 4);
    if (v15)
    {
      v16 = v15;
      __len = v13;
      v17 = sub_10003D3A8(v13 + 4);
      if (v17)
      {
        v18 = v17;
        v19 = v16[1];
        v20 = *v10;
        if (v20 == 2)
        {
          v21 = 1;
          v22 = 4;
        }

        else
        {
          if (v20 != 30)
          {
            goto LABEL_33;
          }

          v21 = 5;
          v22 = 8;
        }

        *v19 = v21;
        memmove(v19 + 4, (v7 + v22), v11);
LABEL_33:
        v27 = v18[1];
        v28 = *(v8 + 1);
        if (v28 == 2)
        {
          v29 = 1;
          v30 = 4;
        }

        else
        {
          if (v28 != 30)
          {
LABEL_38:
            *a2 = v16;
            *a3 = v18;
            return v4;
          }

          v29 = 5;
          v30 = 8;
        }

        *v27 = v29;
        memmove(v27 + 4, (v8 + v30), __len);
        goto LABEL_38;
      }

      sub_10003D4F0(v16);
      if (!dword_100090058)
      {
        return 0xFFFFFFFFLL;
      }

      v25 = ne_log_obj();
      if (!os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        return 0xFFFFFFFFLL;
      }
    }

    else
    {
      if (!dword_100090058)
      {
        return 0xFFFFFFFFLL;
      }

      v24 = ne_log_obj();
      if (!os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        return 0xFFFFFFFFLL;
      }
    }

    sub_100066248();
    return 0xFFFFFFFFLL;
  }

  return v4;
}

char *sub_10003DC54(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *v2;
  if (v3 != 5)
  {
    if (v3 != 1)
    {
      if (dword_100090058)
      {
        v5 = ne_log_obj();
        if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
        {
          sub_100066330(v2);
        }
      }

      return 0;
    }

    result = malloc_type_malloc(0x10uLL, 0x1000040451B5BE8uLL);
    if (result)
    {
      *result = 528;
      *(result + 1) = *(*(a1 + 8) + 4);
      return result;
    }

    if (!dword_100090058)
    {
      return 0;
    }

    v6 = ne_log_obj();
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      return 0;
    }

    goto LABEL_15;
  }

  result = malloc_type_malloc(0x1CuLL, 0x100004027586B93uLL);
  if (result)
  {
    *result = 7708;
    *(result + 8) = *(*(a1 + 8) + 4);
    return result;
  }

  if (dword_100090058)
  {
    v7 = ne_log_obj();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
LABEL_15:
      sub_1000662F4();
    }
  }

  return 0;
}

void sub_10003DD8C(uint64_t a1)
{
  if ((*(a1 + 96) & 6) != 0 && *(*(a1 + 88) + 4))
  {
    if (*sub_10003B3CC(*(a1 + 56)) == bswap32(*(qword_1000900B8 + 16)) >> 16)
    {
      sub_10003B444(*(a1 + 56), *(*(a1 + 88) + 4));
    }

    if (*sub_10003B3CC(*(a1 + 48)) == bswap32(*(qword_1000900B8 + 16)) >> 16)
    {
      sub_10003B444(*(a1 + 48), *(*(a1 + 88) + 4));
    }

    *(a1 + 96) |= 0x28u;
    if (*(a1 + 80) == 16)
    {

      sub_10004A528(a1);
    }
  }
}

void sub_10003DE68(uint64_t a1, int a2)
{
  if (*(a1 + 88) || (v4 = malloc_type_calloc(1uLL, 0x14uLL, 0x1000040EF768F96uLL), (*(a1 + 88) = v4) != 0))
  {
    v5 = sub_10004C9F8(a1);
    if (v5)
    {
      v6 = v5;
    }

    else
    {
      v6 = a2;
    }

    v7 = *(a1 + 88);
    if (*v7 < v6 && !sub_10003D914(v7, v6))
    {
      *(a1 + 96) |= 1u;
    }
  }

  else if (dword_100090058)
  {
    v8 = ne_log_obj();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_1000663A0();
    }
  }
}

uint64_t sub_10003DF54(uint64_t result)
{
  if (!*(result + 176))
  {
    return 0;
  }

  return result;
}

void *sub_10003DF64(void *a1, _OWORD *a2)
{
  if (!a2)
  {
    return 0;
  }

  a2[4] = 0u;
  a2[5] = 0u;
  a2[2] = 0u;
  a2[3] = 0u;
  *a2 = 0u;
  a2[1] = 0u;
  v4 = sub_10003D184(15);
  *a2 = v4;
  v5 = sub_10003D184(14);
  *(a2 + (v4 != 0)) = v5;
  if (v4)
  {
    v6 = 2;
  }

  else
  {
    v6 = 1;
  }

  if (v5)
  {
    LODWORD(v4) = v6;
  }

  else
  {
    LODWORD(v4) = v4 != 0;
  }

  v7 = sub_10003D184(13);
  *(a2 + v4) = v7;
  if (v7)
  {
    LODWORD(v4) = v4 + 1;
  }

  v8 = sub_10003D184(12);
  *(a2 + v4) = v8;
  if (v8)
  {
    LODWORD(v4) = v4 + 1;
  }

  v9 = sub_10003D184(11);
  *(a2 + v4) = v9;
  if (v9)
  {
    LODWORD(v4) = v4 + 1;
  }

  v10 = sub_10003D184(10);
  *(a2 + v4) = v10;
  if (v10)
  {
    LODWORD(v4) = v4 + 1;
  }

  v11 = sub_10003D184(9);
  *(a2 + v4) = v11;
  if (v11)
  {
    LODWORD(v4) = v4 + 1;
  }

  v12 = sub_10003D184(8);
  *(a2 + v4) = v12;
  if (v12)
  {
    LODWORD(v4) = v4 + 1;
  }

  v13 = sub_10003D184(6);
  *(a2 + v4) = v13;
  if (v13)
  {
    LODWORD(v4) = v4 + 1;
  }

  v14 = sub_10003D184(7);
  *(a2 + v4) = v14;
  if (v14)
  {
    v4 = (v4 + 1);
  }

  else
  {
    v4 = v4;
  }

  if (v4)
  {
    for (i = 0; i < v4; ++i)
    {
      a1 = sub_1000241D4(a1, *(a2 + i), 13);
    }
  }

  return a1;
}

uint64_t sub_10003E0AC(int a1, int a2, unsigned int a3)
{
  if (a1 == 14)
  {
    v3 = 2;
    return sub_10003E0E4(v3, a2, a3);
  }

  if (a1 == 15)
  {
    v3 = 3;
    return sub_10003E0E4(v3, a2, a3);
  }

  __ipsec_errcode = 2;
  return 0xFFFFFFFFLL;
}

uint64_t sub_10003E0E4(int a1, int a2, unsigned int a3)
{
  v4 = sub_10003E170(a1, a2);
  if (!v4)
  {
    return 0xFFFFFFFFLL;
  }

  v5 = v4[1];
  v6 = v4[2];
  if (v5 <= a3 && v6 >= a3)
  {
    v9 = 0;
    result = 0;
  }

  else
  {
    fprintf(__stderrp, "%d %d %d\n", a3, v5, v6);
    result = 0xFFFFFFFFLL;
    v9 = 14;
  }

  __ipsec_errcode = v9;
  return result;
}

unsigned __int16 *sub_10003E170(int a1, int a2)
{
  v2 = 0;
  while (dword_10006CF90[v2] != a1)
  {
    if (++v2 == 3)
    {
      v3 = 2;
      goto LABEL_12;
    }
  }

  result = qword_10008F200[v2];
  if (result)
  {
    for (i = *result; i >= 16; i -= 8)
    {
      v6 = *(result + 8);
      result += 4;
      if (v6 == a2)
      {
        return result;
      }
    }

    v3 = 1;
  }

  else
  {
    v3 = 22;
  }

LABEL_12:
  result = 0;
  __ipsec_errcode = v3;
  return result;
}

uint64_t sub_10003E1EC(int a1, int a2, void *a3)
{
  if (a3)
  {
    v5 = 2;
    if (a1 != 14)
    {
      if (a1 != 15)
      {
        v8 = 0xFFFFFFFFLL;
        goto LABEL_9;
      }

      v5 = 3;
    }

    v6 = sub_10003E170(v5, a2);
    if (!v6)
    {
      return 0xFFFFFFFFLL;
    }

    v7 = v6;
    v5 = 0;
    v8 = 0;
    *a3 = *v7;
  }

  else
  {
    v8 = 0xFFFFFFFFLL;
    v5 = 2;
  }

LABEL_9:
  __ipsec_errcode = v5;
  return v8;
}

uint64_t sub_10003E274(uint64_t result, int a2)
{
  __ipsec_errcode = 0;
  if ((a2 - 101) >= 0xFFFFFF9C)
  {
    v2 = a2;
  }

  else
  {
    v2 = 100;
  }

  if (result > 1)
  {
    if (result != 2)
    {
      if (result == 3)
      {
        result = 0;
        dword_10008C4DC = v2;
        return result;
      }

      goto LABEL_11;
    }

    result = 0;
    dword_10008C4D8 = v2;
  }

  else
  {
    if (result)
    {
      if (result == 1)
      {
        result = 0;
        dword_10008C4D4 = v2;
        return result;
      }

LABEL_11:
      __ipsec_errcode = 2;
      return 1;
    }

    dword_10008C4D0 = v2;
  }

  return result;
}

uint64_t sub_10003E300(int a1)
{
  result = 0xFFFFFFFFLL;
  if (a1 > 1)
  {
    if (a1 == 2)
    {
      return dword_10008C4D8;
    }

    else if (a1 == 3)
    {
      return dword_10008C4DC;
    }
  }

  else if (a1)
  {
    if (a1 == 1)
    {
      return dword_10008C4D4;
    }
  }

  else
  {
    return dword_10008C4D0;
  }

  return result;
}

uint64_t sub_10003E35C(int a1, char a2, char a3, unsigned __int8 *a4, unsigned __int8 *a5, unsigned int a6, unsigned int a7, int a8, int a9, int a10, unsigned int a11, int a12, int a13, char a14)
{
  if (!a4 || !a5)
  {
    v24 = 2;
    goto LABEL_38;
  }

  v16 = a4[1];
  if (v16 != a5[1])
  {
    v24 = 24;
    goto LABEL_38;
  }

  if (a6 > a7 || a6 - 1 <= 0xFE)
  {
    v24 = 18;
    goto LABEL_38;
  }

  if (v16 != 2)
  {
    if (v16 == 30)
    {
      v23 = 0x80;
      goto LABEL_13;
    }

    v24 = 15;
LABEL_38:
    __ipsec_errcode = v24;
    return 0xFFFFFFFFLL;
  }

  v23 = 32;
LABEL_13:
  v40 = v23;
  if (a9)
  {
    v25 = 82;
  }

  else
  {
    v25 = 50;
  }

  v26 = v25 + ((*a4 - 1) | 7) + ((*a5 - 1) | 7);
  v27 = a6 < 0x100 || a7 == -1;
  v28 = v27;
  v39 = v28;
  if (!v27)
  {
    v26 += 16;
  }

  v29 = v26;
  v30 = malloc_type_calloc(1uLL, v26, 0x1000040451B5BE8uLL);
  if (!v30)
  {
    v38 = __error();
    strerror(*v38);
    __ipsec_set_strerror();
    return 0xFFFFFFFFLL;
  }

  v31 = v30;
  v32 = getpid();
  if (v29 <= 15)
  {
    goto LABEL_36;
  }

  *v31 = 0;
  v31[1] = 0;
  *v31 = 258;
  *(v31 + 2) = 0;
  *(v31 + 3) = a2;
  *(v31 + 1) = (v29 >> 3);
  *(v31 + 2) = a13;
  *(v31 + 3) = v32;
  if (v29 <= 0x1F)
  {
    goto LABEL_36;
  }

  v33 = v31 + v29;
  v31[2] = 0;
  v31[3] = 0;
  *(v31 + 4) = 1245186;
  *(v31 + 20) = a3;
  *(v31 + 7) = a8;
  *(v31 + 21) = a14;
  *(v31 + 11) |= 1u;
  v34 = sub_10003E630(v31 + 16, v31 + v29, 5, a4, v40, 255);
  if (!v34)
  {
    goto LABEL_36;
  }

  v35 = sub_10003E630(v34, v31 + v29, 6, a5, v40, 255);
  if (!v35)
  {
    goto LABEL_36;
  }

  if (a9)
  {
    if ((v35 + 32) > v33)
    {
      goto LABEL_36;
    }

    *v35 = 0u;
    *(v35 + 1) = 0u;
    *v35 = 196612;
    *(v35 + 1) = 0;
    *(v35 + 2) = a11;
    *(v35 + 3) = 0;
    v35 += 32;
  }

  if (v39)
  {
    goto LABEL_35;
  }

  if ((v35 + 16) > v33)
  {
LABEL_36:
    free(v31);
    return 0xFFFFFFFFLL;
  }

  *v35 = 1048578;
  *(v35 + 1) = a6;
  *(v35 + 2) = a7;
  *(v35 + 3) = 0;
  v35 += 16;
LABEL_35:
  if (v35 != v33)
  {
    goto LABEL_36;
  }

  v36 = sub_10003E6D0(a1, v31, v29);
  free(v31);
  if ((v36 & 0x80000000) == 0)
  {
    __ipsec_errcode = 0;
    return v36;
  }

  return 0xFFFFFFFFLL;
}

char *sub_10003E630(_WORD *a1, unint64_t a2, __int16 a3, unsigned __int8 *a4, char a5, char a6)
{
  v6 = (*a4 - 1) | 7;
  v7 = (v6 + 9);
  v8 = a1 + v7;
  if (a1 + v7 > a2)
  {
    return 0;
  }

  bzero(a1, (v6 + 9));
  *a1 = v7 >> 3;
  a1[1] = a3;
  *(a1 + 4) = a6;
  *(a1 + 5) = a5;
  a1[3] = 0;
  memcpy(a1 + 4, a4, *a4);
  return v8;
}

ssize_t sub_10003E6D0(int a1, const void *a2, unsigned int a3)
{
  result = send(a1, a2, a3, 0);
  if ((result & 0x80000000) != 0)
  {
    v4 = __error();
    strerror(*v4);
    __ipsec_set_strerror();
    return 0xFFFFFFFFLL;
  }

  else
  {
    __ipsec_errcode = 0;
  }

  return result;
}

uint64_t sub_10003E718(int a1, int a2, char a3, unsigned __int8 *a4, unsigned __int8 *a5, int a6, int a7, char a8, char *a9, int a10, unsigned int a11, int a12, unsigned int a13, int a14, int a15, unsigned int a16, int a17, unsigned int a18, int a19, unsigned int a20, int a21, int a22, __int16 a23, __int16 a24, char a25)
{

  return sub_10003E798(a1, 2, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a18, a20, a22, a23, SHIWORD(a22), a25);
}

uint64_t sub_10003E798(int a1, char a2, int a3, char a4, unsigned __int8 *a5, unsigned __int8 *a6, int a7, int a8, char a9, char *a10, int a11, unsigned int a12, int a13, unsigned int a14, int a15, int a16, unsigned int a17, unsigned int a18, unsigned int a19, int a20, __int16 a21, __int16 a22, char a23)
{
  v61 = 0;
  if (!a5 || !a6)
  {
    v33 = 2;
    goto LABEL_35;
  }

  v25 = a5[1];
  if (v25 != a6[1])
  {
    v33 = 24;
    goto LABEL_35;
  }

  if (v25 != 2)
  {
    if (v25 == 30)
    {
      v32 = 0x80;
      goto LABEL_10;
    }

    v33 = 15;
LABEL_35:
    __ipsec_errcode = v33;
    return 0xFFFFFFFFLL;
  }

  v32 = 32;
LABEL_10:
  if (a3 == 2)
  {
    if (!a11)
    {
      if (a13)
      {
        goto LABEL_14;
      }

LABEL_31:
      v33 = 20;
      goto LABEL_35;
    }

LABEL_33:
    v33 = 13;
    goto LABEL_35;
  }

  if (a3 == 9)
  {
    if (a11)
    {
      if (!a13)
      {
        goto LABEL_14;
      }

      goto LABEL_31;
    }

    goto LABEL_33;
  }

  if (a3 != 3)
  {
    v33 = 10;
    goto LABEL_35;
  }

  if (!a11)
  {
    goto LABEL_31;
  }

LABEL_14:
  v59 = v32;
  if (getifaddrs(&v61) < 0)
  {
    return 0xFFFFFFFFLL;
  }

  v34 = v61;
  if (!v61)
  {
LABEL_27:
    v40 = 0;
    v58 = 1;
    goto LABEL_43;
  }

  while (1)
  {
    ifa_addr = v34->ifa_addr;
    if (!ifa_addr)
    {
      goto LABEL_26;
    }

    sa_family = ifa_addr->sa_family;
    if (sa_family != a5[1])
    {
      goto LABEL_26;
    }

    if (sa_family == 30)
    {
      break;
    }

    if (sa_family != 2 || *&ifa_addr->sa_data[2] == *(a5 + 1))
    {
      goto LABEL_40;
    }

LABEL_26:
    v34 = v34->ifa_next;
    if (!v34)
    {
      goto LABEL_27;
    }
  }

  v38 = *&ifa_addr->sa_data[6];
  v37 = *&ifa_addr[1].sa_len;
  if (v38 != *(a5 + 1) || v37 != *(a5 + 2))
  {
    goto LABEL_26;
  }

LABEL_40:
  v58 = 0;
  if (v34->ifa_name)
  {
    v40 = 80;
  }

  else
  {
    v40 = 0;
  }

LABEL_43:
  v43 = ((a14 - 1) | 7) + 9;
  if (!a13)
  {
    v43 = 0;
  }

  v44 = ((a12 - 1) | 7) + 147;
  if (a3 == 9 || a11 == 0)
  {
    v44 = 138;
  }

  v45 = v44 + v43 + ((*a5 - 1) | 7) + ((*a6 - 1) | 7) + v40;
  v60 = malloc_type_calloc(1uLL, v45, 0x1000040451B5BE8uLL);
  if (!v60)
  {
    v47 = __error();
    strerror(*v47);
    __ipsec_set_strerror();
    goto LABEL_51;
  }

  v46 = getpid();
  if (v45 > 15)
  {
    *v60 = 0;
    v60[1] = 0;
    *v60 = 2;
    *(v60 + 1) = a2;
    v48 = v60;
    *(v60 + 2) = 0;
    *(v60 + 3) = a3;
    *(v60 + 1) = (v45 >> 3);
    *(v60 + 2) = a20;
    *(v60 + 3) = v46;
    if (v45 >= 0x28)
    {
      v60[2] = 0;
      v60[3] = 0;
      v60[4] = 0;
      *(v60 + 4) = 65539;
      *(v60 + 5) = a7;
      *(v60 + 24) = a9;
      *(v60 + 25) = 0;
      *(v60 + 26) = a13;
      *(v60 + 27) = a11;
      *(v60 + 7) = a15;
      *(v60 + 16) = a21;
      if (v45 >= 0x38)
      {
        v49 = v60 + v45;
        v60[5] = 0;
        v60[6] = 0;
        *(v60 + 10) = 1245186;
        *(v60 + 44) = a4;
        *(v60 + 13) = a8;
        *(v60 + 45) = a23;
        *(v60 + 23) |= 1u;
        v50 = sub_10003E630(v60 + 28, v60 + v45, 5, a5, v59, 255);
        if (v50)
        {
          v51 = sub_10003E630(v50, v49, 6, a6, v59, 255);
          if (v51)
          {
            v52 = v51;
            if ((v58 & 1) != 0 || (ifa_name = v34->ifa_name) == 0)
            {
              v54 = a13;
LABEL_62:
              if (a3 != 9 && a11 != 0)
              {
                v52 = sub_1000403CC(v52, v49, 9, a10, a12);
                if (!v52)
                {
                  goto LABEL_69;
                }
              }

              if (v54)
              {
                v52 = sub_1000403CC(v52, v49, 8, &a10[a12], a14);
                if (!v52)
                {
                  goto LABEL_69;
                }
              }

              if ((v52 + 32) > v49)
              {
                goto LABEL_69;
              }

              *v52 = 0u;
              *(v52 + 1) = 0u;
              *v52 = 196612;
              *(v52 + 1) = a16;
              *(v52 + 1) = a17;
              *(v52 + 2) = a18;
              *(v52 + 3) = a19;
              if ((v52 + 64) > v49)
              {
                goto LABEL_69;
              }

              *(v52 + 2) = 0uLL;
              *(v52 + 3) = 0uLL;
              v55 = dword_10008C4D0 * a16 / 0x64u;
              *(v52 + 8) = 262148;
              *(v52 + 9) = v55;
              v56 = dword_10008C4D8 * a18;
              *(v52 + 5) = dword_10008C4D4 * a17 / 0x64uLL;
              *(v52 + 6) = v56 / 0x64uLL;
              *(v52 + 7) = dword_10008C4DC * a19 / 0x64uLL;
              if (v52 + 64 != v49)
              {
                goto LABEL_69;
              }

              v57 = sub_10003E6D0(a1, v60, v45);
              if ((v57 & 0x80000000) == 0)
              {
                v41 = v57;
                __ipsec_errcode = 0;
                goto LABEL_52;
              }

LABEL_51:
              v41 = 0xFFFFFFFFLL;
LABEL_52:
              v48 = v60;
LABEL_70:
              if (v61)
              {
                freeifaddrs(v61);
              }

              if (v48)
              {
                free(v48);
              }

              return v41;
            }

            v54 = a13;
            if ((v51 + 80) <= v49)
            {
              *(v51 + 3) = 0u;
              *(v51 + 4) = 0u;
              *(v51 + 1) = 0u;
              *(v51 + 2) = 0u;
              *v51 = 0u;
              *v51 = 1441802;
              strncpy(v51 + 28, ifa_name, 0x17uLL);
              *(v52 + 38) = 0;
              v52 += 80;
              goto LABEL_62;
            }
          }
        }
      }
    }

LABEL_69:
    v41 = 0xFFFFFFFFLL;
    goto LABEL_70;
  }

  free(v60);
  freeifaddrs(v61);
  return 0xFFFFFFFFLL;
}

uint64_t sub_10003ECF0(int a1, int a2, char a3, unsigned __int8 *a4, unsigned __int8 *a5, int a6, int a7, char a8, char *a9, int a10, unsigned int a11, int a12, unsigned int a13, int a14, int a15, unsigned int a16, int a17, unsigned int a18, int a19, unsigned int a20, int a21, int a22, __int16 a23, __int16 a24, char a25)
{

  return sub_10003E798(a1, 3, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a18, a20, a22, a23, SHIWORD(a22), a25);
}

uint64_t sub_10003ED7C(int a1, char a2, char a3, unsigned __int8 *a4, unsigned __int8 *a5, int a6)
{
  if (!a4 || !a5)
  {
    v14 = 2;
    goto LABEL_20;
  }

  v8 = a4[1];
  if (v8 != a5[1])
  {
    v14 = 24;
    goto LABEL_20;
  }

  if (v8 != 2)
  {
    if (v8 == 30)
    {
      v13 = 0x80;
      goto LABEL_10;
    }

    v14 = 15;
LABEL_20:
    __ipsec_errcode = v14;
    return 0xFFFFFFFFLL;
  }

  v13 = 32;
LABEL_10:
  v15 = ((*a5 - 1) | 7) + ((*a4 - 1) | 7);
  v16 = v15 + 58;
  v17 = malloc_type_calloc(1uLL, v15 + 58, 0x1000040451B5BE8uLL);
  if (v17)
  {
    v18 = v17;
    v19 = getpid();
    if (v15 <= -43)
    {
      goto LABEL_18;
    }

    *v18 = 0;
    v18[1] = 0;
    *v18 = 2;
    *(v18 + 1) = a2;
    *(v18 + 2) = 0;
    *(v18 + 3) = a3;
    *(v18 + 1) = (v16 >> 3);
    *(v18 + 2) = 0;
    *(v18 + 3) = v19;
    if (v15 <= -19)
    {
      goto LABEL_18;
    }

    v18[2] = 0;
    v18[3] = 0;
    *(v18 + 4) = 65539;
    *(v18 + 5) = a6;
    v18[3] = 0;
    v18[4] = 0;
    *(v18 + 16) = 0;
    v20 = sub_10003E630(v18 + 20, v18 + v16, 5, a4, v13, 255);
    if (!v20)
    {
      goto LABEL_18;
    }

    v21 = sub_10003E630(v20, v18 + v16, 6, a5, v13, 255);
    if (v21 && v21 == v18 + v16)
    {
      v23 = sub_10003E6D0(a1, v18, v16);
      free(v18);
      if ((v23 & 0x80000000) == 0)
      {
        __ipsec_errcode = 0;
        return v23;
      }
    }

    else
    {
LABEL_18:
      free(v18);
    }
  }

  else
  {
    v25 = __error();
    strerror(*v25);
    __ipsec_set_strerror();
  }

  return 0xFFFFFFFFLL;
}

uint64_t sub_10003EF6C(int a1, char a2, uint64_t a3, unsigned __int8 *a4, unsigned __int8 *a5)
{
  if (!a4 || !a5)
  {
    v11 = 2;
    goto LABEL_19;
  }

  v7 = a4[1];
  if (v7 != a5[1])
  {
    v11 = 24;
    goto LABEL_19;
  }

  if (v7 != 2)
  {
    if (v7 == 30)
    {
      v10 = 0x80;
      goto LABEL_10;
    }

    v11 = 15;
LABEL_19:
    __ipsec_errcode = v11;
    return 0xFFFFFFFFLL;
  }

  v10 = 32;
LABEL_10:
  v12 = ((*a5 - 1) | 7) + ((*a4 - 1) | 7);
  v13 = v12 + 34;
  v14 = malloc_type_calloc(1uLL, v12 + 34, 0x1000040451B5BE8uLL);
  if (v14)
  {
    v15 = v14;
    v16 = getpid();
    if (v12 <= -19)
    {
      goto LABEL_17;
    }

    *v15 = 0;
    v15[1] = 0;
    *v15 = 1026;
    *(v15 + 2) = 0;
    *(v15 + 3) = a2;
    *(v15 + 1) = (v13 >> 3);
    *(v15 + 2) = 0;
    *(v15 + 3) = v16;
    v17 = sub_10003E630(v15 + 8, v15 + v13, 5, a4, v10, 255);
    if (!v17)
    {
      goto LABEL_17;
    }

    v18 = sub_10003E630(v17, v15 + v13, 6, a5, v10, 255);
    if (v18 && v18 == v15 + v13)
    {
      v20 = sub_10003E6D0(a1, v15, v13);
      free(v15);
      if ((v20 & 0x80000000) == 0)
      {
        __ipsec_errcode = 0;
        return v20;
      }
    }

    else
    {
LABEL_17:
      free(v15);
    }
  }

  else
  {
    v22 = __error();
    strerror(*v22);
    __ipsec_set_strerror();
  }

  return 0xFFFFFFFFLL;
}

uint64_t sub_10003F134(int a1, unsigned int a2)
{
  v4 = 0;
  if (a2)
  {
    while (dword_10006CF90[v4] != a2)
    {
      if (++v4 == 3)
      {
        __ipsec_errcode = 2;
        return 0xFFFFFFFFLL;
      }
    }

    v7 = qword_10008F200[v4];
    if (v7)
    {
      free(v7);
      qword_10008F200[v4] = 0;
    }
  }

  else
  {
    do
    {
      v6 = *(qword_10008F200 + v4);
      if (v6)
      {
        free(v6);
        *(qword_10008F200 + v4) = 0;
      }

      v4 += 8;
    }

    while (v4 != 24);
  }

  return sub_10003F208(a1, 7, a2);
}

uint64_t sub_10003F208(int a1, int a2, unsigned int a3)
{
  v3 = a3;
  v4 = a2;
  if (a2 == 11)
  {
    if (a3 >= 2)
    {
LABEL_3:
      __ipsec_errcode = 10;
      return 0xFFFFFFFFLL;
    }
  }

  else if (a3 > 9 || ((1 << a3) & 0x20D) == 0)
  {
    goto LABEL_3;
  }

  v6 = malloc_type_calloc(1uLL, 0x10uLL, 0x1000040451B5BE8uLL);
  if (!v6)
  {
    v10 = __error();
    strerror(*v10);
    __ipsec_set_strerror();
    return 0xFFFFFFFFLL;
  }

  v7 = v6;
  v8 = getpid();
  *v7 = 2;
  v7[1] = v4;
  v7[2] = 0;
  v7[3] = v3;
  *(v7 + 4) = 2;
  *(v7 + 3) = v8;
  v9 = sub_10003E6D0(a1, v7, 0x10u);
  free(v7);
  if ((v9 & 0x80000000) != 0)
  {
    return 0xFFFFFFFFLL;
  }

  __ipsec_errcode = 0;
  return v9;
}

uint64_t sub_10003F304(int a1)
{
  v2 = getpid();
  v3 = sub_10003F3B8(a1);
  if (!v3)
  {
    return 0xFFFFFFFFLL;
  }

  v4 = v3;
  while (*(v4 + 1) != 7 || *(v4 + 3) != v2)
  {
    free(v4);
    v4 = sub_10003F3B8(a1);
    if (!v4)
    {
      return 0xFFFFFFFFLL;
    }
  }

  v5 = 8 * v4[2];
  v4[2] = v5;
  v6 = sub_10003F51C(v4, v5 & 0xFFF8);
  free(v4);
  if (v6)
  {
    return 0xFFFFFFFFLL;
  }

  result = 0;
  __ipsec_errcode = 0;
  return result;
}

unsigned __int16 *sub_10003F3B8(int a1)
{
  v11[0] = 0;
  v11[1] = 0;
  while (1)
  {
    v2 = recv(a1, v11, 0x10uLL, 2);
    if ((v2 & 0x8000000000000000) == 0)
    {
      break;
    }

    if (*__error() != 4)
    {
      v3 = __error();
      strerror(*v3);
      __ipsec_set_strerror();
      return 0;
    }
  }

  if (v2 <= 0xF)
  {
    recv(a1, v11, 0x10uLL, 0);
    v4 = 0;
    __ipsec_errcode = 30;
    return v4;
  }

  v5 = WORD2(v11[0]);
  v6 = 8 * WORD2(v11[0]);
  v4 = malloc_type_calloc(1uLL, v6, 0x1000040451B5BE8uLL);
  if (!v4)
  {
    v9 = __error();
    strerror(*v9);
    __ipsec_set_strerror();
    return v4;
  }

  while (1)
  {
    v7 = recv(a1, v4, v6, 0);
    if ((v7 & 0x8000000000000000) == 0)
    {
      break;
    }

    if (*__error() != 4)
    {
      v8 = __error();
      strerror(*v8);
      __ipsec_set_strerror();
      goto LABEL_16;
    }
  }

  if (v7 == v6 && v4[2] == v5)
  {
    __ipsec_errcode = 0;
    return v4;
  }

  __ipsec_errcode = 26;
LABEL_16:
  free(v4);
  return 0;
}

uint64_t sub_10003F51C(uint64_t a1, unsigned int a2)
{
  if (*(a1 + 4) == a2)
  {
    v2 = a1 + a2;
    v3 = (a1 + 16);
    if (a2 >= 0x18)
    {
      do
      {
        v5 = *v3;
        if (!*v3 || v2 < v3 + v5)
        {
          break;
        }

        v7 = v3[1];
        if ((v7 & 0xFFFE) != 0xE)
        {
          goto LABEL_4;
        }

        v8 = 8 * v5;
        *v3 = v8;
        v9 = v7 != 14;
        v10 = qword_10008F200[v7 != 14];
        if (v10)
        {
          free(v10);
          v8 = *v3;
        }

        v11 = malloc_type_malloc(v8, 0x2E3D9A27uLL);
        qword_10008F200[v9] = v11;
        if (!v11)
        {
          v12 = __error();
          strerror(*v12);
          __ipsec_set_strerror();
          return 0xFFFFFFFFLL;
        }

        memcpy(v11, v3, *v3);
        v3 = (v3 + *v3);
      }

      while (v3 < v2 && v2 >= (v3 + 4));
    }

    if (v3 == v2)
    {
      result = 0;
      __ipsec_errcode = 0;
    }

    else
    {
LABEL_4:
      __ipsec_errcode = 10;
      return 0xFFFFFFFFLL;
    }
  }

  else
  {
    __ipsec_errcode = 2;
    return 0xFFFFFFFFLL;
  }

  return result;
}

ssize_t sub_10003F6DC(int a1, char a2, unsigned __int8 *a3, unsigned __int8 *a4, unsigned int a5, unsigned __int8 *a6, unsigned __int8 *a7, unsigned int a8, char a9, uint64_t a10, uint64_t a11, void *__src, int a13, int a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18)
{
  if (!a3 || !a6)
  {
    v28 = 2;
LABEL_22:
    __ipsec_errcode = v28;
    return 0xFFFFFFFFLL;
  }

  v20 = a3[1];
  if (v20 != a6[1])
  {
    v28 = 24;
    goto LABEL_22;
  }

  v21 = a8;
  v23 = a5;
  if (v20 == 2)
  {
    v27 = 32;
  }

  else
  {
    if (v20 != 30)
    {
      v28 = 15;
      goto LABEL_22;
    }

    v27 = 128;
  }

  if (v27 < a5 || v27 < a8)
  {
    v28 = 16;
    goto LABEL_22;
  }

  if (a15 | a16 | a17)
  {
    v29 = 0;
  }

  else
  {
    v29 = a18 == 0;
  }

  v30 = v29;
  if (a4)
  {
    v31 = ((*a4 - 1) | 7) + 9;
  }

  else
  {
    v31 = 0;
  }

  if (a7)
  {
    v34 = ((*a7 - 1) | 7) + 9;
  }

  else
  {
    v34 = 0;
  }

  v56 = v30;
  if (v30)
  {
    v35 = 0;
  }

  else
  {
    v35 = 80;
  }

  v36 = a13 + ((2 * *a3 - 2) | 0xE) + v31 + v34 + v35 + 66;
  v37 = malloc_type_calloc(1uLL, v36, 0x1000040451B5BE8uLL);
  if (!v37)
  {
    v50 = __error();
    strerror(*v50);
    __ipsec_set_strerror();
    return 0xFFFFFFFFLL;
  }

  v38 = v37;
  v39 = getpid();
  if (v36 <= 15)
  {
    goto LABEL_49;
  }

  v40 = a9;
  v41 = v36;
  v42 = &v38[v36];
  *v38 = 0;
  *(v38 + 1) = 0;
  *v38 = 2;
  v38[1] = a2;
  *(v38 + 1) = 0;
  v43 = v41;
  *(v38 + 1) = (v41 >> 3);
  *(v38 + 2) = a14;
  *(v38 + 3) = v39;
  v44 = v38 + 16;
  v45 = v42;
  if (a4)
  {
    v44 = sub_10003E630(v44, v42, 23, a3, v23, a9);
    if (!v44)
    {
      goto LABEL_49;
    }

    v45 = v42;
    v46 = 24;
    v47 = a4;
    v48 = v23;
    v49 = a9;
    v40 = a9;
  }

  else
  {
    v46 = 5;
    v47 = a3;
    v48 = v23;
    v49 = a9;
  }

  v51 = sub_10003E630(v44, v45, v46, v47, v48, v40);
  if (!v51)
  {
    goto LABEL_49;
  }

  v52 = v42;
  if (!a7)
  {
    v53 = 6;
    v54 = a6;
    goto LABEL_44;
  }

  v51 = sub_10003E630(v51, v42, 25, a6, v21, v49);
  if (!v51)
  {
LABEL_49:
    free(v38);
    return 0xFFFFFFFFLL;
  }

  v52 = v42;
  v53 = 26;
  v54 = a7;
LABEL_44:
  v55 = sub_10003E630(v51, v52, v53, v54, v21, v49);
  if (!v55)
  {
    goto LABEL_49;
  }

  if ((v56 & 1) == 0)
  {
    v55 = sub_10004031C(v55, v42, a16, a17, a15, a18);
    if (!v55)
    {
      goto LABEL_49;
    }
  }

  if (v55 + 32 > v42)
  {
    goto LABEL_49;
  }

  *v55 = 0u;
  *(v55 + 16) = 0u;
  *v55 = 196612;
  *(v55 + 8) = 0;
  *(v55 + 16) = a10;
  *(v55 + 24) = a11;
  if (v55 + 32 + a13 != v42)
  {
    goto LABEL_49;
  }

  memcpy((v55 + 32), __src, a13);
  v32 = sub_10003E6D0(a1, v38, v43);
  free(v38);
  if ((v32 & 0x80000000) == 0)
  {
    __ipsec_errcode = 0;
    return v32;
  }

  return 0xFFFFFFFFLL;
}

ssize_t sub_10003FBE0(int a1, unsigned __int8 *a2, unsigned int a3, unsigned __int8 *a4, unsigned int a5, char a6, void *__src, int a8, int a9)
{
  if (a8 == 16)
  {
    return sub_10003F6DC(a1, 15, a2, 0, a3, a4, 0, a5, a6, 0, 0, __src, 16, a9, 0, 0, 0, 0);
  }

  __ipsec_errcode = 2;
  return 0xFFFFFFFFLL;
}

uint64_t sub_10003FC78(int a1, char a2, int a3)
{
  v6 = malloc_type_calloc(1uLL, 0x20uLL, 0x1000040451B5BE8uLL);
  if (!v6)
  {
    v10 = __error();
    strerror(*v10);
    __ipsec_set_strerror();
    return 0xFFFFFFFFLL;
  }

  v7 = v6;
  v8 = getpid();
  *v7 = 2;
  v7[1] = a2;
  *(v7 + 1) = 0;
  *(v7 + 4) = 4;
  *(v7 + 3) = v8;
  *(v7 + 2) = 1179650;
  *(v7 + 6) = a3;
  *(v7 + 7) = 0;
  v9 = sub_10003E6D0(a1, v7, 0x20u);
  free(v7);
  if ((v9 & 0x80000000) != 0)
  {
    return 0xFFFFFFFFLL;
  }

  __ipsec_errcode = 0;
  return v9;
}

ssize_t sub_10003FD68(int a1, unsigned __int8 *a2, unsigned int a3, unsigned __int8 *a4, unsigned int a5, char a6, void *__src, int a8, int a9)
{
  if (a8 == 16)
  {
    return sub_10003F6DC(a1, 20, a2, 0, a3, a4, 0, a5, a6, 0, 0, __src, 16, a9, 0, 0, 0, 0);
  }

  __ipsec_errcode = 2;
  return 0xFFFFFFFFLL;
}

uint64_t sub_10003FE0C()
{
  v6 = 8;
  v7 = 0;
  v5 = 2506752;
  v0 = socket(29, 3, 2);
  if ((v0 & 0x80000000) != 0)
  {
    v3 = __error();
    strerror(*v3);
    __ipsec_set_strerror();
    return 0xFFFFFFFFLL;
  }

  else
  {
    v1 = v0;
    if (sysctlbyname("kern.ipc.maxsockbuf", &v7, &v6, &v5, 8uLL))
    {
      v2 = 233016;
    }

    else
    {
      v2 = 2228224;
    }

    v8 = v2;
    setsockopt(v1, 0xFFFF, 4097, &v8, 4u);
    setsockopt(v1, 0xFFFF, 4098, &v8, 4u);
    if (v8 == 2228224)
    {
      sysctlbyname("kern.ipc.maxsockbuf", 0, 0, &v7, v6);
    }

    __ipsec_errcode = 0;
  }

  return v1;
}

uint64_t sub_10003FF10(int a1)
{
  result = close(a1);
  __ipsec_errcode = 0;
  return result;
}

uint64_t sub_10003FF34(uint64_t a1, uint64_t a2)
{
  result = 0xFFFFFFFFLL;
  v4 = 2;
  if (a1 && a2)
  {
    *(a2 + 232) = 0;
    *(a2 + 216) = 0u;
    *(a2 + 200) = 0u;
    *(a2 + 184) = 0u;
    *(a2 + 168) = 0u;
    *(a2 + 152) = 0u;
    *(a2 + 136) = 0u;
    *(a2 + 120) = 0u;
    *(a2 + 104) = 0u;
    *(a2 + 88) = 0u;
    *(a2 + 72) = 0u;
    *(a2 + 56) = 0u;
    *(a2 + 40) = 0u;
    *(a2 + 24) = 0u;
    *(a2 + 8) = 0u;
    v5 = *(a1 + 4);
    v6 = a1 + 8 * v5;
    *a2 = a1;
    v7 = (a1 + 16);
    if (v5 >= 3)
    {
      while (1)
      {
        v8 = &v7[4 * *v7];
        if (!*v7 || v6 < v8)
        {
          break;
        }

        v10 = v7[1];
        if (*(a2 + 8 * v10))
        {
          result = 0xFFFFFFFFLL;
          v4 = 12;
          goto LABEL_11;
        }

        v4 = 12;
        if (v10 > 0x1A || ((1 << v10) & 0x7FDFFFE) == 0)
        {
          goto LABEL_11;
        }

        *(a2 + 8 * v10) = v7;
        if (v8 < v6)
        {
          v7 = v8;
          if (v6 >= (v8 + 2))
          {
            continue;
          }
        }

        goto LABEL_5;
      }
    }

    v8 = v7;
LABEL_5:
    if (v8 == v6)
    {
      v4 = 0;
    }

    else
    {
      v4 = 3;
    }

    if (v8 == v6)
    {
      result = 0;
    }

    else
    {
      result = 0xFFFFFFFFLL;
    }
  }

LABEL_11:
  __ipsec_errcode = v4;
  return result;
}

uint64_t sub_100040034(uint64_t a1)
{
  if (!a1 || (v1 = *a1) == 0)
  {
    result = 0xFFFFFFFFLL;
    v4 = 2;
    goto LABEL_8;
  }

  if (*v1 != 2)
  {
    result = 0xFFFFFFFFLL;
    v4 = 4;
    goto LABEL_8;
  }

  v2 = v1[1];
  if (v2 > 0x1A)
  {
    result = 0xFFFFFFFFLL;
    v4 = 11;
    goto LABEL_8;
  }

  v5 = v1[3];
  if (v5 > 9)
  {
    goto LABEL_18;
  }

  v4 = 1;
  if (((1 << v5) & 0x1E0) != 0)
  {
    result = 0xFFFFFFFFLL;
    goto LABEL_8;
  }

  if (((1 << v5) & 0x20C) == 0)
  {
    if (v5 == 1)
    {
      if (v2 == 11)
      {
        goto LABEL_23;
      }

      goto LABEL_22;
    }

LABEL_18:
    if (!v5)
    {
      v6 = v2 - 1;
      if ((v2 - 1) >= 8u)
      {
        goto LABEL_23;
      }

      v7 = 191;
      goto LABEL_21;
    }

LABEL_22:
    result = 0xFFFFFFFFLL;
    v4 = 10;
    goto LABEL_8;
  }

  v6 = v2 - 14;
  if (v2 - 14 >= 6)
  {
    goto LABEL_23;
  }

  v7 = 55;
LABEL_21:
  if ((v7 >> v6))
  {
    goto LABEL_22;
  }

LABEL_23:
  v8 = *(a1 + 40);
  if (v8)
  {
    v9 = *(a1 + 48);
    if (v9)
    {
      if (*(v8 + 4) != *(v9 + 4))
      {
        result = 0xFFFFFFFFLL;
        v4 = 23;
        goto LABEL_8;
      }

      v10 = *(v8 + 9);
      if (v10 != *(v9 + 9))
      {
        result = 0xFFFFFFFFLL;
        v4 = 24;
        goto LABEL_8;
      }

      if (v10 != 30 && v10 != 2)
      {
        result = 0xFFFFFFFFLL;
        v4 = 15;
        goto LABEL_8;
      }
    }
  }

  v4 = 0;
  result = 0;
LABEL_8:
  __ipsec_errcode = v4;
  return result;
}

uint64_t sub_100040180(int a1, int a2, void *a3, int a4, int a5, const void *a6, int a7)
{
  v7 = 0xFFFFFFFFLL;
  if (a3 && a6 && a7)
  {
    v15 = 40 * a7;
    v16 = 40 * a7 + 56;
    v17 = malloc_type_calloc(1uLL, v16, 0x1000040451B5BE8uLL);
    if (v17)
    {
      v18 = v17;
      v19 = getpid();
      if (v16 <= 15)
      {
        goto LABEL_11;
      }

      *v18 = 0;
      v18[1] = 0;
      *v18 = 5890;
      *(v18 + 1) = (v16 >> 3);
      *(v18 + 2) = a2;
      *(v18 + 3) = v19;
      if (!a4 || v16 < 0x28)
      {
        goto LABEL_11;
      }

      v20 = (v18 + 5);
      v18[2] = 0;
      v18[3] = 0;
      v18[4] = 0;
      *(v18 + 4) = 1310723;
      v18[3] = *a3;
      if (a4 != 1)
      {
        v18[4] = a3[1];
      }

      v21 = (v15 + 16);
      if (&v20[v21] <= v18 + v16)
      {
        bzero(v20, (v15 + 16));
        *(v18 + 20) = v21 >> 3;
        *(v18 + 21) = 21;
        *(v18 + 11) = a5;
        *(v18 + 13) = a7;
        memmove(v18 + 7, a6, (40 * a7));
        v7 = sub_10003E6D0(a1, v18, v16);
        free(v18);
        if ((v7 & 0x80000000) == 0)
        {
          __ipsec_errcode = 0;
          return v7;
        }
      }

      else
      {
LABEL_11:
        free(v18);
      }
    }

    else
    {
      v22 = __error();
      strerror(*v22);
      __ipsec_set_strerror();
    }

    return 0xFFFFFFFFLL;
  }

  return v7;
}

uint64_t sub_10004031C(uint64_t a1, unint64_t a2, char *__src, char *a4, char *a5, __int16 a6)
{
  v6 = a1 + 80;
  if (a1 + 80 > a2)
  {
    return 0;
  }

  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *a1 = 1441802;
  if (__src)
  {
    strncpy((a1 + 4), __src, 0x17uLL);
  }

  if (a4)
  {
    strncpy((a1 + 28), a4, 0x17uLL);
  }

  if (a5)
  {
    strncpy((a1 + 52), a5, 0x17uLL);
  }

  *(a1 + 76) = a6;
  return v6;
}

char *sub_1000403CC(_WORD *a1, unint64_t a2, __int16 a3, const void *a4, unsigned int a5)
{
  v5 = (a5 - 1) | 7;
  v6 = (v5 + 9);
  v7 = a1 + v6;
  if (a1 + v6 > a2)
  {
    return 0;
  }

  bzero(a1, (v5 + 9));
  *a1 = v6 >> 3;
  a1[1] = a3;
  a1[2] = 8 * a5;
  a1[3] = 0;
  memcpy(a1 + 4, a4, a5);
  return v7;
}

void sub_10004045C(uint64_t a1, void *a2)
{
  if (*a2 <= 0x1BuLL)
  {
    if (dword_100090058)
    {
      v2 = ne_log_obj();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
      {
        sub_1000664AC();
      }
    }

    return;
  }

  v4 = a2[1];
  if ((*(v4 + 19) & 1) == 0)
  {
    if (dword_100090058)
    {
      v5 = ne_log_obj();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        sub_100066478();
      }
    }

    return;
  }

  v7 = *(a1 + 408);
  v8 = *(v7 + 1176);
  if (v8)
  {
    v9 = *(v4 + 20);
    if (*(v7 + 1184) == v9)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v9 = *(v4 + 20);
  }

  v8 = sub_10004095C(a1, v9);
  *(*(a1 + 408) + 1176) = v8;
LABEL_14:
  v10 = sub_10002BCBC(a1, a2, *v8, v8[1]);
  if (!v10)
  {
    if (dword_100090058)
    {
      v20 = ne_log_obj();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        sub_100066444();
      }
    }

    return;
  }

  v11 = v10;
  if (dword_100090058)
  {
    v12 = ne_log_obj();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "MODE_CFG packet\n", buf, 2u);
    }
  }

  v13 = v11[1];
  v14 = *v11 - 28;
  v15 = *(v13 + 16);
  if (v14 < 1 || v15 == 0)
  {
LABEL_23:
    v17 = sub_1000061A0(a1, *(v13 + 20));
    if (v17)
    {
      v18 = v17;
      v19 = *(v17 + 68);
      if (v19)
      {
        sub_100038740(v19);
        *(v18 + 68) = 0;
      }

      sub_100048E58(v18);
    }

    goto LABEL_27;
  }

  v21 = (v13 + 28);
  while (1)
  {
    if (v14 <= 3)
    {
      if (!dword_100090058)
      {
        goto LABEL_27;
      }

      v36 = ne_log_obj();
      if (!os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_27;
      }

      *buf = 0;
      v37 = "Short payload header\n";
      goto LABEL_60;
    }

    v22 = v14;
    if (v14 < bswap32(*(v21 + 1)) >> 16)
    {
      if (!dword_100090058)
      {
        goto LABEL_27;
      }

      v36 = ne_log_obj();
      if (!os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_27;
      }

      *buf = 0;
      v37 = "Short payload\n";
LABEL_60:
      v38 = v36;
      v39 = 2;
      goto LABEL_61;
    }

    if (dword_100090058)
    {
      v23 = ne_log_obj();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
      {
        *buf = 67109120;
        v47 = v15;
        _os_log_debug_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEBUG, "Seen payload %d\n", buf, 8u);
      }
    }

    if (v15 == 14)
    {
      sub_1000409E8(a1, *(v13 + 20), v21, a2);
      goto LABEL_48;
    }

    if (v15 != 8)
    {
      if (dword_100090058)
      {
        v32 = ne_log_obj();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109120;
          v47 = v15;
          _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "Unexpected next payload %d\n", buf, 8u);
        }
      }

      goto LABEL_48;
    }

    v24 = bswap32(*(v21 + 1)) >> 16;
    v25 = &v21[v24];
    v26 = bswap32(*&v21[v24 + 2]);
    v27 = HIWORD(v26);
    if (v24 + v27 > v22)
    {
      if (!dword_100090058)
      {
        goto LABEL_27;
      }

      v40 = ne_log_obj();
      if (!os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_27;
      }

      v41 = bswap32(v25[1]);
      *buf = 67109376;
      v47 = HIWORD(v41);
      v48 = 1024;
      v49 = v27;
      v37 = "Invalid Hash payload. len %d, overall-len %d\n";
      v38 = v40;
      v39 = 14;
LABEL_61:
      _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, v37, buf, v39);
      goto LABEL_27;
    }

    v28 = sub_10003D3A8(HIWORD(v26));
    if (!v28)
    {
      if (dword_100090058)
      {
        v42 = ne_log_obj();
        if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
        {
          sub_100059788();
        }
      }

      goto LABEL_27;
    }

    v29 = v28;
    memcpy(v28[1], v25, v27);
    v30 = sub_100028000(a1, *(v13 + 20), v29);
    if (!v30)
    {
      break;
    }

    v31 = v30;
    if (timingsafe_bcmp(v21 + 4, *(v30 + 8), *v30))
    {
      if (dword_100090058)
      {
        v45 = ne_log_obj();
        if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
        {
          sub_1000663DC();
        }
      }

      sub_10003D4F0(v29);
      v44 = v31;
      goto LABEL_76;
    }

    sub_10003D4F0(v29);
    sub_10003D4F0(v31);
LABEL_48:
    v33 = bswap32(*(v21 + 1));
    v34 = HIWORD(v33);
    v14 = v22 - HIWORD(v33);
    v15 = *v21;
    v21 += v34;
    if (v14 < 1 || v15 == 0)
    {
      goto LABEL_23;
    }
  }

  if (dword_100090058)
  {
    v43 = ne_log_obj();
    if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
    {
      sub_100066410();
    }
  }

  v44 = v29;
LABEL_76:
  sub_10003D4F0(v44);
LABEL_27:
  sub_10003D4F0(v11);
}

uint64_t *sub_10004095C(uint64_t a1, int a2)
{
  v2 = *(a1 + 408);
  if (v2)
  {
    v5 = *(v2 + 1176);
    if (v5)
    {
      sub_10002B6C4(v5);
    }

    result = sub_10002B73C(a1, a2);
    *(v2 + 1176) = result;
    *(v2 + 1184) = a2;
  }

  else
  {
    if (dword_100090058)
    {
      v7 = ne_log_obj();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        sub_1000664E0();
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_1000409E8(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a3 + 4);
  if (dword_100090058)
  {
    v9 = ne_log_obj();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 136315138;
      v13 = sub_10003BDE0(v8);
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Configuration exchange type %s\n", &v12, 0xCu);
    }
  }

  if (v8 > 2)
  {
    if (v8 == 3)
    {
      *(a1 + 84) = a2;
      return sub_100041994(a1, a3, a4);
    }

    if (v8 == 4)
    {
      sub_10002B6C4(*(*(a1 + 408) + 1176));
      result = 0;
      *(*(a1 + 408) + 1176) = 0;
      return result;
    }
  }

  else
  {
    if (v8 == 1)
    {
      *(a1 + 84) = a2;
      return sub_1000411A8(a1, a3, a4);
    }

    if (v8 == 2)
    {
      return sub_100040B9C(a1, a3);
    }
  }

  if (dword_100090058)
  {
    v11 = ne_log_obj();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 67109120;
      LODWORD(v13) = v8;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Unepected configuration exchange type %d\n", &v12, 8u);
    }
  }

  return 0xFFFFFFFFLL;
}

uint64_t sub_100040B9C(uint64_t a1, unsigned __int16 *a2)
{
  v2 = *(a1 + 408);
  v3 = *v2;
  if ((*v2 & 0x8000) != 0)
  {
    return 0;
  }

  v6 = a2 + 1;
  v7 = bswap32(a2[1]) >> 16;
  v8 = a2 + 4;
  if (v7 < 9)
  {
LABEL_64:
    *v2 = v3 | 0x8000;
    if (*(a1 + 24) || (*(a1 + 432) & 1) != 0 && (v37 = *(a1 + 440)) != 0 && (*(v37 + 264) & 0x400) != 0)
    {
      v34 = *(v2 + 149);
      if (v34)
      {
        sub_10003D4F0(v34);
      }

      v35 = bswap32(*v6) >> 16;
      if (v35 <= 7)
      {
        if (dword_100090058)
        {
          v36 = ne_log_obj();
          if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
          {
            sub_100066548(v6);
          }
        }

        return 0xFFFFFFFFLL;
      }

      v38 = v35 - 8;
      v39 = sub_10003D3A8(v35 - 8);
      *(*(a1 + 408) + 1192) = v39;
      if (!v39)
      {
        if (dword_100090058)
        {
          v41 = ne_log_obj();
          if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
          {
            sub_100066514();
          }
        }

        return 0xFFFFFFFFLL;
      }

      memcpy(v39[1], v8, v38);
    }

    if ((*(a1 + 17) & 0x20) != 0)
    {
      sub_100046F84(0, 0, a1, 0);
    }

    return 0;
  }

  v9 = v7 - 8;
  v42 = a2 + 4;
  while (1)
  {
    v10 = v9;
    if (v9 <= 3)
    {
      break;
    }

    v11 = bswap32(*v8) >> 16;
    if (v11 < 0)
    {
      v15 = v11 & 0x7FFF;
      if (dword_100090058)
      {
        v16 = ne_log_obj();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
        {
          v31 = sub_10003BD6C(v15);
          v32 = bswap32(v8[1]) >> 16;
          *buf = 136315394;
          v44 = v31;
          v45 = 1024;
          LODWORD(v46) = v32;
          _os_log_debug_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, "Short attribute %s = %d\n", buf, 0x12u);
        }
      }

      if (v15 == 28679)
      {
        sub_100043998(a1, v8);
      }

      else if (v15 == 16520)
      {
        result = sub_100043FA0(a1, v8, bswap32(a2[3]) >> 16);
        if (result)
        {
          return result;
        }
      }

      else if (dword_100090058)
      {
        v17 = ne_log_obj();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          v18 = sub_10003BD6C(v15);
          *buf = 136315138;
          v44 = v18;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Ignored short attribute %s\n", buf, 0xCu);
        }
      }

      v9 = v10 - 4;
      v8 += 2;
      goto LABEL_59;
    }

    v12 = bswap32(v8[1]) >> 16;
    if (v12 + 4 > v9)
    {
      if (dword_100090058)
      {
        v40 = ne_log_obj();
        if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
        {
          sub_1000665C8(v11);
        }
      }

      return 0xFFFFFFFFLL;
    }

    if (dword_100090058)
    {
      v13 = ne_log_obj();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        v30 = sub_10003BD6C(v11);
        *buf = 136315394;
        v44 = v30;
        v45 = 2048;
        v46 = v12;
        _os_log_debug_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "Attribute %s, len %zu\n", buf, 0x16u);
      }
    }

    if (v11 >= 0x7000u)
    {
      if (v11 - 28672 > 0xB)
      {
        goto LABEL_42;
      }

      if (((1 << v11) & 0xF7B) != 0)
      {
LABEL_24:
        sub_100043998(a1, v8);
        goto LABEL_58;
      }

      if (v11 != 28674)
      {
LABEL_42:
        if (dword_100090058)
        {
          v22 = ne_log_obj();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
          {
            v23 = sub_10003BD6C(v11);
            *buf = 136315138;
            v44 = v23;
            _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Ignored attribute %s\n", buf, 0xCu);
          }
        }

        goto LABEL_58;
      }

      v27 = *(a1 + 408);
      if ((*(v27 + 1) & 0x10) == 0)
      {
        v28 = bswap32(v8[1]) >> 16;
        if (v28 >= 0x400)
        {
          v29 = 1024;
        }

        else
        {
          v29 = v28;
        }

        memcpy((v27 + 84), v8 + 2, v29);
        v20 = *(a1 + 408);
        v21 = *v20 | 0x1000;
        goto LABEL_57;
      }
    }

    else
    {
      if (v11 > 6u)
      {
        if (v11 - 16520 < 0xA)
        {
          result = sub_100043FA0(a1, v8, bswap32(a2[3]) >> 16);
          if (result)
          {
            return result;
          }

          goto LABEL_58;
        }

        if (v11 == 7)
        {
          goto LABEL_24;
        }

        if (v11 != 13)
        {
          goto LABEL_42;
        }

        goto LABEL_41;
      }

      if (v11 <= 2u)
      {
        if (v11 == 1)
        {
          v24 = *(a1 + 408);
          if ((*v24 & 0x80) == 0)
          {
            sub_100041D14(v8, (v24 + 40));
            v20 = *(a1 + 408);
            v21 = *v20 | 0x80;
            goto LABEL_57;
          }
        }

        else
        {
          if (v11 != 2)
          {
            goto LABEL_42;
          }

          v19 = *(a1 + 408);
          if ((*(v19 + 1) & 1) == 0)
          {
            sub_100041D14(v8, (v19 + 44));
            v20 = *(a1 + 408);
            v21 = *v20 | 0x100;
LABEL_57:
            *v20 = v21;
          }
        }
      }

      else
      {
        switch(v11)
        {
          case 3u:
            v26 = *(a1 + 408);
            if ((*(v26 + 1) & 2) == 0)
            {
              sub_100041D7C(v8, (v26 + 4 * *(v26 + 60) + 48), (v26 + 60));
              v20 = *(a1 + 408);
              v21 = *v20 | 0x200;
              goto LABEL_57;
            }

            break;
          case 4u:
            v25 = *(a1 + 408);
            if ((*(v25 + 1) & 4) == 0)
            {
              sub_100041D7C(v8, (v25 + 4 * *(v25 + 80) + 64), (v25 + 80));
              v20 = *(a1 + 408);
              v21 = *v20 | 0x400;
              goto LABEL_57;
            }

            break;
          case 5u:
LABEL_41:
            if (!*(a1 + 24))
            {
              goto LABEL_42;
            }

            break;
          default:
            goto LABEL_42;
        }
      }
    }

LABEL_58:
    v8 = (v8 + v12 + 4);
    v9 = v10 - (v12 + 4);
LABEL_59:
    if (v9 <= 0)
    {
      v2 = *(a1 + 408);
      v3 = *v2;
      v8 = v42;
      goto LABEL_64;
    }
  }

  if (dword_100090058)
  {
    v33 = ne_log_obj();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      sub_10006664C();
    }
  }

  return 0xFFFFFFFFLL;
}

uint64_t sub_1000411A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = bswap32(*(a2 + 2)) >> 16;
  v7 = (a2 + 8);
  v8 = v6 - 8;
  if (*(a1 + 24) || sub_10004BFB4(a1))
  {
    if (!*(a1 + 417))
    {
      *(a1 + 416) = *(a2 + 6);
      if (sub_1000469B0(a1, v7, v8))
      {
        v10 = 0;
        goto LABEL_7;
      }

      *(a1 + 417) = 1;
      *(a1 + 424) = sub_10003D538(a3);
      sub_10004C020(a1);
      if (dword_100090058)
      {
        v40 = ne_log_obj();
        if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "IPSec Extended Authentication requested.\n", buf, 2u);
        }
      }
    }

    return 0;
  }

  v11 = sub_10003D3A8(8uLL);
  if (!v11)
  {
    if (dword_100090058)
    {
      v44 = ne_log_obj();
      if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
      {
        sub_100059788();
      }
    }

    return 0xFFFFFFFFLL;
  }

  v10 = v11;
  **(v11 + 8) = 0;
  if (v6 < 9)
  {
LABEL_82:
    v41 = v10[1];
    *(v41 + 2) = bswap32(*v10) >> 16;
    *(v41 + 4) = 2;
    *(v41 + 6) = *(a2 + 6);
    if (dword_100090058)
    {
      v42 = ne_log_obj();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "Sending MODE_CFG REPLY\n", buf, 2u);
      }
    }

    v9 = sub_100041F14(a1, v10, 14, 1, 0, 0, a3);
    goto LABEL_86;
  }

  while (v8 > 3)
  {
    v12 = bswap32(*v7) >> 16;
    if (v12 < 0)
    {
      v15 = v12 & 0x7FFF;
      if (dword_100090058)
      {
        v16 = ne_log_obj();
        v11 = os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG);
        if (v11)
        {
          v30 = sub_10003BD6C(v15);
          v31 = bswap32(v7[1]) >> 16;
          *buf = 136315394;
          v56 = v30;
          v57 = 1024;
          LODWORD(v58) = v31;
          _os_log_debug_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, "Short attribute %s = %d\n", buf, 0x12u);
        }
      }

      if (v15 == 16520)
      {
        v11 = sub_100044BB0(a1, v7);
        if (v11)
        {
          v17 = v11;
          v10 = sub_100041E24(v10, v11);
          sub_10003D4F0(v17);
        }
      }

      else if (dword_100090058)
      {
        v19 = ne_log_obj();
        v11 = os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT);
        if (v11)
        {
          v20 = sub_10003BD6C(v15);
          *buf = 136315138;
          v56 = v20;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Ignored short attribute %s\n", buf, 0xCu);
        }
      }

      v8 -= 4;
      v7 += 2;
      goto LABEL_35;
    }

    v13 = bswap32(v7[1]) >> 16;
    if (v13 + 4 > v8)
    {
      if (dword_100090058)
      {
        v46 = ne_log_obj();
        if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
        {
          sub_1000665C8(v12);
        }
      }

      goto LABEL_7;
    }

    if (dword_100090058)
    {
      v14 = ne_log_obj();
      v11 = os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG);
      if (v11)
      {
        v26 = sub_10003BD6C(v12);
        *buf = 136315394;
        v56 = v26;
        v57 = 2048;
        v58 = v13;
        _os_log_debug_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "Attribute %s, len %zu\n", buf, 0x16u);
      }
    }

    if (v12 >= 0x7000u)
    {
      if (v12 - 28672 >= 0xB)
      {
        goto LABEL_50;
      }

      v11 = sub_100043358();
    }

    else if (v12 <= 0x4087u)
    {
      if (v12 - 1 >= 4)
      {
        if (v12 == 7)
        {
          v11 = sub_1000428B8(v11, v7, "racoon / IPsec-tools", 0x14uLL);
          goto LABEL_28;
        }

        if (v12 != 13)
        {
LABEL_50:
          if (dword_100090058)
          {
            v27 = ne_log_obj();
            v11 = os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT);
            if (v11)
            {
              v28 = sub_10003BD6C(v12);
              *buf = 136315138;
              v56 = v28;
              _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Ignored attribute %s\n", buf, 0xCu);
            }
          }

          goto LABEL_30;
        }
      }

      v21 = *v7;
      v11 = sub_100044AC8(a1);
      if (v11)
      {
        if (dword_100090058)
        {
          v22 = ne_log_obj();
          v11 = os_log_type_enabled(v22, OS_LOG_TYPE_ERROR);
          if (v11)
          {
            sub_1000666BC(&v53, v54);
          }
        }

        goto LABEL_30;
      }

      v23 = bswap32(v21) >> 16;
      if (v23 <= 2)
      {
        if (v23 == 1)
        {
          if (dword_100090C5C)
          {
            if (dword_100090058)
            {
              v34 = ne_log_obj();
              if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
              {
                sub_1000666EC(&v49, v50);
              }
            }
          }

          else if (sub_100042BC8(a1) == -1)
          {
            if (dword_100090058)
            {
              v39 = ne_log_obj();
              if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
              {
                sub_10006671C(&v51, v52);
              }
            }
          }

          else
          {
            v36 = *(a1 + 408);
            v37 = *v36;
            v36[10] = bswap32(v36[1] + bswap32(xmmword_100090C10));
            *v36 = v37 | 0x20;
          }

          v25 = (*(a1 + 408) + 40);
        }

        else
        {
          if (v23 != 2)
          {
LABEL_66:
            if (dword_100090058)
            {
              v35 = ne_log_obj();
              v11 = os_log_type_enabled(v35, OS_LOG_TYPE_ERROR);
              if (v11)
              {
                *buf = 67109120;
                LODWORD(v56) = v23;
                _os_log_error_impl(&_mh_execute_header, v35, OS_LOG_TYPE_ERROR, "Unexpected type %d\n", buf, 8u);
              }
            }

            goto LABEL_30;
          }

          if (dword_100090C5C)
          {
            if (dword_100090058)
            {
              v29 = ne_log_obj();
              if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
              {
                sub_1000666EC(&v47, v48);
              }
            }
          }

          else
          {
            v38 = *(a1 + 408);
            v38[11] = DWORD1(xmmword_100090C10);
            *v38 |= 0x40u;
          }

          v25 = (*(a1 + 408) + 44);
        }

        v24 = v7;
      }

      else
      {
        if (v23 == 3)
        {
          v32 = &xmmword_100090C10 + 2;
          v33 = dword_100090C24;
LABEL_61:
          v11 = sub_100043224(v7, v32, v33);
          goto LABEL_28;
        }

        if (v23 == 4)
        {
          v32 = &unk_100090C28;
          v33 = dword_100090C38;
          goto LABEL_61;
        }

        if (v23 != 13)
        {
          goto LABEL_66;
        }

        v24 = v7;
        v25 = &xmmword_100090C10;
      }

      v11 = sub_100043194(v24, v25);
    }

    else
    {
      if (v12 - 16520 >= 0xA)
      {
        goto LABEL_50;
      }

      v11 = sub_100044BB0(a1, v7);
    }

LABEL_28:
    v18 = v11;
    if (v11)
    {
      v10 = sub_100041E24(v10, v11);
      sub_10003D4F0(v18);
    }

LABEL_30:
    v7 = (v7 + v13 + 4);
    v8 -= v13 + 4;
LABEL_35:
    if (v8 <= 0)
    {
      goto LABEL_82;
    }
  }

  if (dword_100090058)
  {
    v45 = ne_log_obj();
    if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
    {
      sub_10006674C();
    }
  }

LABEL_7:
  v9 = 0xFFFFFFFFLL;
LABEL_86:
  sub_10003D4F0(v10);
  return v9;
}

uint64_t sub_100041994(uint64_t a1, unsigned __int16 *a2, uint64_t a3)
{
  v6 = sub_10003D3A8(8uLL);
  if (!v6)
  {
    if (dword_100090058)
    {
      v21 = ne_log_obj();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        sub_100059788();
      }
    }

    return 0xFFFFFFFFLL;
  }

  v7 = v6;
  *v6[1] = 0;
  v8 = bswap32(a2[1]) >> 16;
  if (v8 < 9)
  {
LABEL_20:
    v18 = v7[1];
    *(v18 + 2) = bswap32(*v7) >> 16;
    *(v18 + 4) = 4;
    *(v18 + 6) = a2[3];
    if (dword_100090058)
    {
      v19 = ne_log_obj();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Sending MODE_CFG ACK\n", buf, 2u);
      }
    }

    v20 = sub_100041F14(a1, v7, 14, 1, 0, 0, a3);
    if ((*(*(a1 + 408) + 1) & 8) != 0)
    {
      if ((*(a1 + 17) & 0x20) != 0)
      {
        sub_100017EF4(a1);
      }

      sub_100020614(a1);
      sub_10003D4F0(v7);
    }

    else
    {
      sub_10003D4F0(v7);
      if ((*(a1 + 432) & 1) == 0 && !v20 && *(*(a1 + 64) + 156))
      {
        return sub_100042530(a1);
      }
    }

    return v20;
  }

  v9 = v8 - 8;
  v10 = a2 + 4;
  while (1)
  {
    v11 = v9;
    if (v9 <= 3)
    {
      break;
    }

    v12 = bswap32(*v10) >> 16;
    if (dword_100090058)
    {
      v13 = ne_log_obj();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        sub_1000667BC(&v33, v12, &v34);
      }
    }

    if ((v12 & 0x7FFF) == 0x408F)
    {
      v14 = sub_100045094(a1, v10);
      if (v14)
      {
        v15 = v14;
        v7 = sub_100041E24(v7, v14);
        sub_10003D4F0(v15);
        if ((v12 & 0x8000) != 0)
        {
          goto LABEL_18;
        }

        goto LABEL_15;
      }

LABEL_14:
      if ((v12 & 0x8000) != 0)
      {
        goto LABEL_18;
      }

      goto LABEL_15;
    }

    if (!dword_100090058)
    {
      goto LABEL_14;
    }

    v16 = ne_log_obj();
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_14;
    }

    sub_100066818(&v31, v12 & 0x7FFF, &v32);
    if ((v12 & 0x8000) != 0)
    {
LABEL_18:
      v9 = v11 - 4;
      v10 += 2;
      goto LABEL_19;
    }

LABEL_15:
    v17 = bswap32(v10[1]) >> 16;
    if (v17 + 4 > v11)
    {
      if (dword_100090058)
      {
        v23 = ne_log_obj();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          *buf = 67109632;
          v26 = v12;
          v27 = 2048;
          v28 = v17;
          v29 = 2048;
          v30 = v11 - 4;
          _os_log_error_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "isakmp_cfg_set packet too short for type %d, expected %zu actual %zu\n", buf, 0x1Cu);
        }
      }

      goto LABEL_40;
    }

    v9 = v11 - (v17 + 4);
    v10 = (v10 + v17 + 4);
LABEL_19:
    if (v9 <= 0)
    {
      goto LABEL_20;
    }
  }

  if (dword_100090058)
  {
    v22 = ne_log_obj();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      sub_100066874();
    }
  }

LABEL_40:
  sub_10003D4F0(v7);
  return 0xFFFFFFFFLL;
}

void sub_100041D14(uint64_t a1, _DWORD *a2)
{
  if (*(a1 + 2) == 1024)
  {
    *a2 = *(a1 + 4);
  }

  else if (dword_100090058)
  {
    v2 = ne_log_obj();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      sub_1000668E4();
    }
  }
}

void sub_100041D7C(uint64_t a1, _DWORD *a2, _DWORD *a3)
{
  if (*(a1 + 2) == 1024)
  {
    if (*a3 == 3)
    {
      if (dword_100090058)
      {
        v3 = ne_log_obj();
        if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
        {
          sub_100066918();
        }
      }
    }

    else
    {
      *a2 = *(a1 + 4);
      ++*a3;
    }
  }

  else if (dword_100090058)
  {
    v4 = ne_log_obj();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1000668E4();
    }
  }
}

size_t *sub_100041E24(size_t *a1, uint64_t a2)
{
  v3 = a1;
  v4 = sub_10003D3A8(*a2 + *a1);
  if (v4)
  {
    v5 = v4;
    memcpy(v4[1], v3[1], *v3);
    memcpy((v5[1] + *v3), *(a2 + 8), *a2);
    sub_10003D4F0(v3);
    return v5;
  }

  else if (dword_100090058)
  {
    v6 = ne_log_obj();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_100059788();
    }
  }

  return v3;
}

void *sub_100041ECC(int a1, _WORD *a2, char *__s)
{
  v5 = strlen(__s);

  return sub_1000428B8(v5, a2, __s, v5);
}

uint64_t sub_100041F14(uint64_t a1, uint64_t a2, int a3, char a4, int a5, int a6, uint64_t a7)
{
  if ((*(a1 + 17) & 0x20) == 0 || !*(a1 + 56) || (v8 = (a1 + 48), !*(a1 + 48)))
  {
    if (dword_100090058)
    {
      v24 = ne_log_obj();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        sub_100066A98();
      }
    }

    return 0xFFFFFFFFLL;
  }

  v15 = *(a1 + 408);
  v16 = sub_100006488(16, 2);
  if (!v16)
  {
    if (dword_100090058)
    {
      v27 = ne_log_obj();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        sub_100066A64();
      }
    }

    return 0xFFFFFFFFLL;
  }

  v17 = v16;
  v18 = sub_10003A790(*v8);
  *(v17 + 8) = v18;
  if (!v18)
  {
    if (dword_100090058)
    {
      v28 = ne_log_obj();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        sub_100066A30();
      }
    }

    goto LABEL_66;
  }

  v19 = sub_10003A790(*(a1 + 56));
  *v17 = v19;
  if (!v19)
  {
    if (dword_100090058)
    {
      v29 = ne_log_obj();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        sub_1000669FC();
      }
    }

    goto LABEL_66;
  }

  v20 = (*v8)[1];
  if (v20 != 2 && v20 != 30)
  {
    if (dword_100090058)
    {
      v30 = ne_log_obj();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        sub_100066980(a1 + 48);
      }
    }

LABEL_66:
    sub_100006690(v17);
    return 0xFFFFFFFFLL;
  }

  *(v17 + 60) = 0;
  sub_100000A50((v17 + 56), 63);
  if (a5)
  {
    v22 = sub_100024040(a1);
    *(v17 + 108) = v22;
    if (*(a1 + 208))
    {
      if (!sub_10004095C(a1, v22))
      {
        if (dword_100090058)
        {
          v46 = ne_log_obj();
          if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
          {
            sub_100059418();
          }
        }

        goto LABEL_66;
      }

      v23 = *(v17 + 108);
      goto LABEL_34;
    }

LABEL_36:
    v32 = 0;
    v33 = 28;
    goto LABEL_37;
  }

  v23 = *(a1 + 84);
  *(v17 + 108) = v23;
  if (!*(a1 + 208))
  {
    goto LABEL_36;
  }

LABEL_34:
  v31 = sub_100028000(a1, v23, a2);
  if (!v31)
  {
    if (dword_100090058)
    {
      v42 = ne_log_obj();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
      {
        sub_100059E30();
      }
    }

    goto LABEL_66;
  }

  v32 = v31;
  v33 = *v31 + 4 + 28;
LABEL_37:
  v34 = v32 != 0;
  if ((a4 & 4) != 0)
  {
    v34 = 4 * (v32 != 0);
  }

  *(v17 + 105) = v34;
  sub_100049944(a1, v17);
  v35 = v33 + *a2;
  v36 = sub_10003D3A8(v35);
  *(v17 + 80) = v36;
  if (!v36)
  {
    if (dword_100090058)
    {
      v41 = ne_log_obj();
      if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
      {
        sub_10005A82C();
      }
    }

    goto LABEL_83;
  }

  v37 = v36[1];
  *v37 = *a1;
  *(v37 + 8) = *(a1 + 8);
  if (v32)
  {
    v38 = 8;
  }

  else
  {
    v38 = a3;
  }

  *(v37 + 16) = v38;
  *(v37 + 17) = *(a1 + 80);
  *(v37 + 18) = 6;
  *(v37 + 19) = *(v17 + 105);
  *(v37 + 20) = *(v17 + 108);
  *(v37 + 24) = bswap32(v35);
  if (v32)
  {
    *(v37 + 28) = a3;
    v39 = *v32;
    *(v37 + 30) = bswap32(*v32 + 4) >> 16;
    memcpy((v37 + 32), v32[1], v39);
    v40 = *v32 + v37 + 32;
  }

  else
  {
    v40 = (v37 + 28);
  }

  memcpy(v40, *(a2 + 8), *a2);
  if (dword_100090058)
  {
    v43 = ne_log_obj();
    if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v60) = 0;
      _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "MODE_CFG packet to send\n", &v60, 2u);
    }
  }

  if (*(v37 + 19))
  {
    v44 = sub_10002C090(a1, *(v17 + 80), *(*(v15 + 1176) + 8), **(v15 + 1176));
    v45 = *(v17 + 80);
    if (v45)
    {
      sub_10003D4F0(v45);
      *(v17 + 80) = 0;
    }

    if (!v44)
    {
      if (dword_100090058)
      {
        v51 = ne_log_obj();
        if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
        {
          sub_10005A7F8();
        }
      }

      goto LABEL_83;
    }

    *(v17 + 80) = v44;
  }

  if (a6 >= 1)
  {
    *(v17 + 72) = a6;
    if ((sub_100022418(v17) & 0x80000000) == 0)
    {
      v25 = 0;
      goto LABEL_85;
    }

    if (dword_100090058)
    {
      v50 = ne_log_obj();
      if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
      {
        sub_10006694C();
      }
    }

    goto LABEL_81;
  }

  if ((sub_100021B88(*(v17 + 256), *(v17 + 80)) & 0x80000000) == 0)
  {
    if (a7)
    {
      v47 = *(v17 + 80);
      v48 = *(v17 + 256);
      if (*(v48 + 100) && *v47 > 0x500uLL)
      {
        v49 = 0;
      }

      else
      {
        v49 = (*(v48 + 96) >> 3) & 4;
      }

      v54 = sub_1000072B8(*(a1 + 48), *(a1 + 56), v47, a7, v49, (*(a1 + 96) >> 5) & 1);
      v55 = dword_100090058;
      if (v54 != -1 || !dword_100090058)
      {
        goto LABEL_93;
      }

      v56 = ne_log_obj();
      if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
      {
        sub_1000590E8();
      }
    }

    v55 = dword_100090058;
LABEL_93:
    if (v55)
    {
      v57 = ne_log_obj();
      if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
      {
        v58 = sub_10003BCF8(a3);
        v60 = 136315138;
        v61 = v58;
        _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_DEFAULT, "sendto mode config %s.\n", &v60, 0xCu);
      }
    }

    v59 = *(v17 + 80);
    if (v59)
    {
      sub_10003D4F0(v59);
      v25 = 0;
      *(v17 + 80) = 0;
    }

    else
    {
      v25 = 0;
    }

    goto LABEL_84;
  }

  if (dword_100090058)
  {
    v52 = ne_log_obj();
    if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
    {
      sub_10005911C();
    }
  }

LABEL_81:
  v53 = *(v17 + 80);
  if (v53)
  {
    sub_10003D4F0(v53);
    *(v17 + 80) = 0;
  }

LABEL_83:
  v25 = 0xFFFFFFFFLL;
LABEL_84:
  sub_100048E58(v17);
LABEL_85:
  if (v32)
  {
    sub_10003D4F0(v32);
  }

  return v25;
}

uint64_t sub_100042530(uint64_t a1)
{
  if (*(a1 + 24) && (v2 = *(a1 + 48), *(v2 + 1) == 2) && (v3 = *(qword_1000900B8 + 64)) != 0)
  {
    v4 = 0;
    v5 = *(v2 + 4);
    v6 = 72;
    do
    {
      v7 = v3 + 6;
      while (1)
      {
        v7 = *v7;
        if (!v7)
        {
          break;
        }

        if (*(v7 + 4) == v5)
        {
          v4 = v7[7];
          if (v4)
          {
            v6 += *v4;
          }

          break;
        }
      }

      v3 = *v3;
    }

    while (v3);
  }

  else
  {
    v4 = 0;
    v6 = 72;
  }

  v8 = sub_10003D3A8(v6);
  if (v8)
  {
    v9 = v8;
    v10 = v8[1];
    *(v10 + 2) = bswap32(v6) >> 16;
    *(v10 + 4) = 1;
    v11 = 0;
    *(v10 + 6) = bswap32(sub_100004308()) >> 16;
    v12 = (v10 + 8);
    do
    {
      if (v11 == 10 && v4)
      {
        *v12 = 1792;
        v14 = *v4;
        v13 = v4[1];
        v12[1] = bswap32(*v4) >> 16;
        v15 = v12 + 2;
        memcpy(v12 + 2, v13, v14);
        v12 = (v15 + *v4);
      }

      else
      {
        *v12 = bswap32(word_10006CFA8[v11]) >> 16;
        v12 += 2;
      }

      v11 += 2;
    }

    while (v11 != 32);
    if (dword_100090058)
    {
      v16 = ne_log_obj();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Sending MODE_CFG REQUEST\n", buf, 2u);
      }
    }

    v17 = sub_100041F14(a1, v9, 14, 1, 1, *(*(a1 + 64) + 200), 0);
    sub_10003D4F0(v9);
    if (dword_100090058)
    {
      v18 = ne_log_obj();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v21[0] = 0;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "IPSec Network Configuration requested.\n", v21, 2u);
      }
    }
  }

  else
  {
    if (dword_100090058)
    {
      v19 = ne_log_obj();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        sub_100059788();
      }
    }

    return 0xFFFFFFFFLL;
  }

  return v17;
}

void *sub_100042788(uint64_t a1, unsigned __int16 *a2)
{
  if ((*a2 & 0x80) != 0)
  {
    v3 = 4;
  }

  else
  {
    v3 = (bswap32(a2[1]) >> 16) + 4;
  }

  v4 = sub_10003D3A8(v3);
  v5 = v4;
  if (v4)
  {
    memcpy(v4[1], a2, (bswap32(a2[1]) >> 16) + 4);
  }

  else if (dword_100090058)
  {
    v6 = ne_log_obj();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_100059788();
    }
  }

  return v5;
}

void *sub_100042828(uint64_t a1, _WORD *a2, unsigned int a3)
{
  v5 = sub_10003D3A8(4uLL);
  v6 = v5;
  if (v5)
  {
    v7 = v5[1];
    *v7 = *a2 | 0x80;
    v7[1] = bswap32(a3) >> 16;
  }

  else if (dword_100090058)
  {
    v8 = ne_log_obj();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_100059788();
    }
  }

  return v6;
}

void *sub_1000428B8(uint64_t a1, _WORD *a2, const void *a3, size_t a4)
{
  v7 = sub_10003D3A8(a4 + 4);
  v8 = v7;
  if (v7)
  {
    v9 = v7[1];
    *v9 = *a2;
    v9[1] = bswap32(a4) >> 16;
    memcpy(v9 + 2, a3, a4);
  }

  else if (dword_100090058)
  {
    v10 = ne_log_obj();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_100059788();
    }
  }

  return v8;
}

void sub_100042958(uint64_t a1)
{
  v1 = *(a1 + 408);
  if (v1)
  {
    if ((*v1 & 4) != 0)
    {
      sub_100042A04(a1, *(v1 + 4));
      v1 = *(a1 + 408);
    }

    v3 = *(v1 + 1176);
    if (v3)
    {
      sub_10002B6C4(v3);
      *(*(a1 + 408) + 1176) = 0;
      v1 = *(a1 + 408);
    }

    v4 = *(v1 + 1112);
    if (v4)
    {
      sub_100043C6C(v4, (v1 + 1120));
      v1 = *(a1 + 408);
    }

    v5 = *(v1 + 1128);
    if (v5)
    {
      sub_100043C6C(v5, (v1 + 1136));
      v1 = *(a1 + 408);
    }

    sub_1000454A0(v1 + 1144);
    v6 = *(a1 + 408);
    if (v6[149])
    {
      sub_10003D4F0(v6[149]);
      v6 = *(a1 + 408);
    }

    free(v6);
    *(a1 + 408) = 0;
  }
}

uint64_t sub_100042A04(uint64_t a1, unsigned int a2)
{
  if (!qword_100090C40)
  {
    if (dword_100090058)
    {
      v5 = ne_log_obj();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        sub_100066B40();
      }
    }

    return 0xFFFFFFFFLL;
  }

  if (!*(qword_100090C40 + a2))
  {
    if (dword_100090058)
    {
      v6 = ne_log_obj();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_100066ACC();
      }
    }

    return 0xFFFFFFFFLL;
  }

  *(qword_100090C40 + a2) = 0;
  **(a1 + 408) &= 4u;
  if (dword_100090058)
  {
    v3 = ne_log_obj();
    result = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
    if (!result)
    {
      return result;
    }

    v7[0] = 67109120;
    v7[1] = a2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Released port %d\n", v7, 8u);
  }

  return 0;
}

void *sub_100042B48()
{
  v0 = malloc_type_malloc(0x4B0uLL, 0x1030040F12D1F44uLL);
  v1 = v0;
  if (v0)
  {
    bzero(v0, 0x4B0uLL);
  }

  else if (dword_100090058)
  {
    v2 = ne_log_obj();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      sub_100066B74();
    }
  }

  return v1;
}

uint64_t sub_100042BC8(uint64_t a1)
{
  v1 = *(a1 + 408);
  if ((*v1 & 4) != 0)
  {
    return *(v1 + 4);
  }

  if (!qword_100090C40)
  {
    if (dword_100090058)
    {
      v6 = ne_log_obj();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_100066B40();
      }
    }

    return 0xFFFFFFFFLL;
  }

  if (!qword_100090C68)
  {
    goto LABEL_25;
  }

  v3 = 0;
  v4 = 0;
  while (*(qword_100090C40 + v3))
  {
    v3 = (v4 + 1);
    v4 = v3;
    v5 = v3;
    if (qword_100090C68 <= v3)
    {
      goto LABEL_13;
    }
  }

  v5 = v4;
LABEL_13:
  if (qword_100090C68 == v3)
  {
LABEL_25:
    if (dword_100090058)
    {
      v7 = ne_log_obj();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        sub_100066BA8();
      }
    }

    return 0xFFFFFFFFLL;
  }

  *(qword_100090C40 + v3) = 1;
  if (dword_100090058)
  {
    v9 = ne_log_obj();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v11[0] = 67109120;
      v11[1] = v5;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Using port %d\n", v11, 8u);
    }
  }

  v10 = *(a1 + 408);
  *v10 |= 4u;
  v10[1] = v5;
  return v5;
}

size_t sub_100042D60(size_t result, int a2, uint64_t a3, int a4)
{
  v4 = result;
  if (a4 == 1)
  {
    v5 = 14;
  }

  else
  {
    v5 = 4;
  }

  if (a2 >= 1)
  {
    v8 = a2;
    v9 = 0;
    memset(v12, 0, 14);
    do
    {
      result = __memcpy_chk();
      if (!v12[0])
      {
        break;
      }

      inet_ntop(2, v12, &v4[v9], 0x28u);
      result = strlen(&v4[v9]);
      v10 = v9 + result;
      if (a4 == 1)
      {
        v4[v10] = 47;
        v11 = v10 + 1;
        inet_ntop(2, &v12[1], &v4[v11], 0x28u);
        result = strlen(&v4[v11]);
        v10 = v11 + result;
      }

      a3 += v5;
      v4[v10] = 32;
      v9 = v10 + 1;
      --v8;
    }

    while (v8);
    if (v9 >= 1)
    {
      v4 = &v4[v9 - 1];
    }
  }

  *v4 = 0;
  return result;
}

uint64_t sub_100042E80(int a1)
{
  if (qword_100090C68 == a1)
  {
    return 0;
  }

  v3 = a1;
  if (dword_100090058)
  {
    v4 = ne_log_obj();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 134218240;
      v11 = qword_100090C68;
      v12 = 1024;
      v13 = a1;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Resize address pool from %zu to %d\n", &v10, 0x12u);
    }
  }

  if (qword_100090C40)
  {
    v5 = qword_100090C68;
    if (qword_100090C68 > v3)
    {
      while (--v5 >= a1)
      {
        if (*(qword_100090C40 + v5))
        {
          v3 = v5;
          if (dword_100090058)
          {
            v6 = ne_log_obj();
            if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
            {
              sub_100066BDC(a1, v5, v6);
            }
          }

          break;
        }
      }
    }
  }

  v7 = malloc_type_realloc(qword_100090C40, v3, 0xABCF9D33uLL);
  if (v7)
  {
    v8 = v7;
    if (v3 > qword_100090C68)
    {
      bzero(&v7[qword_100090C68], v3 - qword_100090C68);
    }

    result = 0;
    qword_100090C40 = v8;
    qword_100090C68 = v3;
  }

  else
  {
    if (dword_100090058)
    {
      v9 = ne_log_obj();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_100066C74();
      }
    }

    return 0xFFFFFFFFLL;
  }

  return result;
}

uint64_t sub_10004304C(int a1)
{
  unk_100090C2C = 0u;
  xmmword_100090C10 = 0u;
  unk_100090C20 = 0u;
  if (a1 != 1 && qword_100090C40)
  {
    free(qword_100090C40);
  }

  qword_100090C68 = 0;
  qword_100090C40 = 0;
  *&dword_100090C48 = 0;
  if (a1 != 1)
  {
    v2 = qword_100090C50;
    if (qword_100090C50)
    {
      if (dword_100090C58 >= 1)
      {
        v3 = 0;
        do
        {
          free(*(qword_100090C50 + 8 * v3++));
        }

        while (v3 < dword_100090C58);
        v2 = qword_100090C50;
      }

      free(v2);
    }
  }

  qword_100090C50 = 0;
  *&dword_100090C58 = 0;
  dword_100090C60 = 0;
  dword_100090C70 = 1;
  __strlcpy_chk();
  __strlcpy_chk();
  if (a1 != 1 && qword_100091478)
  {
    sub_100043C6C(qword_100091478, &dword_100091480);
  }

  dword_100091494 = 0;
  dword_100091498 = 0;
  qword_100091478 = 0;
  *&dword_100091480 = 0;
  if (a1 != 1 && qword_100091488)
  {
    free(qword_100091488);
  }

  qword_100091488 = 0;
  dword_100091490 = 0;
  return 0;
}

void *sub_100043194(_WORD *a1, _DWORD *a2)
{
  v4 = sub_10003D3A8(8uLL);
  v5 = v4;
  if (v4)
  {
    v6 = v4[1];
    *v6 = *a1;
    *(v6 + 2) = 1024;
    *(v6 + 4) = *a2;
  }

  else if (dword_100090058)
  {
    v7 = ne_log_obj();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_100059788();
    }
  }

  return v5;
}

size_t *sub_100043224(_WORD *a1, int *a2, int a3)
{
  v6 = sub_10003D3A8(0);
  if (!v6)
  {
    if (dword_100090058)
    {
      v13 = ne_log_obj();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        sub_100059788();
      }
    }

    return 0;
  }

  v7 = v6;
  if (a3 >= 1)
  {
    v8 = a3;
    while (1)
    {
      v9 = sub_10003D3A8(8uLL);
      if (!v9)
      {
        break;
      }

      v10 = v9;
      v11 = v9[1];
      *v11 = *a1;
      *(v11 + 2) = 1024;
      v12 = *a2++;
      *(v11 + 4) = v12;
      v7 = sub_100041E24(v7, v9);
      sub_10003D4F0(v10);
      if (!--v8)
      {
        return v7;
      }
    }

    if (dword_100090058)
    {
      v14 = ne_log_obj();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        sub_100059788();
        if (!v7)
        {
          return v7;
        }

        goto LABEL_13;
      }
    }

    if (v7)
    {
LABEL_13:
      sub_10003D4F0(v7);
      return 0;
    }
  }

  return v7;
}

void *sub_100043358()
{
  v0 = __chkstk_darwin();
  if ((**(v0 + 408) & 2) == 0)
  {
    if (dword_100090058)
    {
      v2 = ne_log_obj();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
      {
        sub_100066FDC();
      }
    }

    return 0;
  }

  v4 = v1;
  v5 = bswap32(*v1);
  v6 = HIWORD(v5);
  if ((v5 & 0x80000000) != 0)
  {
    if (dword_100090058)
    {
      v9 = ne_log_obj();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        sub_100066D2C(v6 & 0x7FFF, v4);
      }

      if (dword_100090058)
      {
        v10 = ne_log_obj();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
        {
          sub_100066DCC(v6 & 0x7FFF);
        }
      }
    }

    return 0;
  }

  v7 = v0;
  if (HIWORD(v5) > 0x7003u)
  {
    if (HIWORD(v5) > 0x7006u)
    {
      if (v6 == 28679)
      {
        v8 = dword_100091494;
        goto LABEL_44;
      }

      if (v6 != 28682)
      {
LABEL_47:
        if (dword_100090058)
        {
          v20 = ne_log_obj();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
          {
            sub_100066F58(v6);
          }
        }

        return 0;
      }

      return sub_100042788(v0, v1);
    }

    else
    {
      v11 = 28676;
      if (v6 != 28676)
      {
        v11 = 28678;
        if (v6 != 28678)
        {
          goto LABEL_47;
        }
      }

      if (dword_100091484 != v11)
      {
        return 0;
      }

      v12 = qword_100091478;
      v13 = dword_100091480;

      return sub_1000437DC(v4, v12, v13);
    }
  }

  else if (HIWORD(v5) > 0x7001u)
  {
    if (v6 == 28674)
    {

      return sub_100041ECC(v0, v1, byte_100090C74);
    }

    else
    {
      v14 = qword_100091488;
      v15 = dword_100091490;

      return sub_1000428B8(v0, v1, v14, v15);
    }
  }

  else
  {
    if (v6 != 28672)
    {
      if (v6 == 28673)
      {
        v8 = dword_100091498;
LABEL_44:

        return sub_100042828(v0, v1, v8);
      }

      goto LABEL_47;
    }

    v16 = open(&byte_100090C74[1025], 0, 0);
    if (v16 == -1)
    {
      if (dword_100090058)
      {
        v21 = ne_log_obj();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          sub_100066ED4();
        }
      }

      return 0;
    }

    v17 = v16;
    v18 = read(v16, __s, 0x10000uLL);
    if (v18 == -1)
    {
      if (dword_100090058)
      {
        v19 = ne_log_obj();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          sub_100066E50();
        }
      }

      close(v17);
      return 0;
    }

    close(v17);
    __s[v18] = 0;
    return sub_100041ECC(v7, v4, __s);
  }
}

void *sub_1000437DC(_WORD *a1, uint64_t *a2, int a3)
{
  v6 = 14 * a3;
  v7 = sub_10003D3A8(v6 + 4);
  v8 = v7;
  if (v7)
  {
    v9 = v7[1];
    *v9 = *a1;
    v9[1] = bswap32(v6) >> 16;
    if (a3 >= 1)
    {
      v10 = v9 + 2;
      v11 = a3;
      do
      {
        v12 = *a2;
        *(v10 + 6) = *(a2 + 6);
        *v10 = v12;
        inet_ntop(2, a2, v21, 0x28u);
        inet_ntop(2, a2 + 4, v20, 0x28u);
        if (dword_100090058)
        {
          v13 = ne_log_obj();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136315394;
            v17 = v21;
            v18 = 2080;
            v19 = v20;
            _os_log_debug_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "splitnet: %s/%s\n", buf, 0x16u);
          }
        }

        a2 = a2[2];
        v10 = (v10 + 14);
        --v11;
      }

      while (v11);
    }
  }

  else if (dword_100090058)
  {
    v14 = ne_log_obj();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_10006701C();
    }
  }

  return v8;
}

void sub_100043998(uint64_t a1, _WORD *a2)
{
  v3 = (a2 + 2);
  v4 = a2 + 1;
  v5 = bswap32(a2[1]) >> 16;
  v6 = bswap32(*a2 & 0xFF7F) >> 16;
  if (v6 <= 28677)
  {
    if (v6 <= 28675)
    {
      if ((v6 - 28672) >= 2 && v6 != 28675)
      {
        goto LABEL_16;
      }

LABEL_15:
      if (*(a1 + 24))
      {
        return;
      }

      goto LABEL_16;
    }

    if (v6 != 28676)
    {
      goto LABEL_15;
    }

    v10 = *(a1 + 408);
    v11 = *v10;
    if ((*v10 & 0x2000) != 0)
    {
      return;
    }

    if (v5 >= 0xE)
    {
      v12 = (18725 * (v5 >> 1)) >> 17;
      do
      {
        sub_100043BD4((*(a1 + 408) + 1112), v3, (*(a1 + 408) + 1120));
        v3 = (v3 + 14);
        --v12;
      }

      while (v12);
      v10 = *(a1 + 408);
      v11 = *v10;
    }

    v13 = v11 | 0x2000;
LABEL_31:
    *v10 = v13;
    return;
  }

  if ((v6 - 28680) < 3)
  {
    goto LABEL_15;
  }

  if (v6 == 28678)
  {
    v10 = *(a1 + 408);
    v14 = *v10;
    if ((*v10 & 0x4000) != 0)
    {
      return;
    }

    if (v5 >= 0xE)
    {
      v15 = (18725 * (v5 >> 1)) >> 17;
      do
      {
        sub_100043BD4((*(a1 + 408) + 1128), v3, (*(a1 + 408) + 1136));
        v3 = (v3 + 14);
        --v15;
      }

      while (v15);
      v10 = *(a1 + 408);
      v14 = *v10;
    }

    v13 = v14 | 0x4000;
    goto LABEL_31;
  }

  if (v6 != 28679)
  {
LABEL_16:
    if (dword_100090058)
    {
      v9 = ne_log_obj();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v16 = 136315138;
        v17 = sub_10003BD6C(v6);
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Ignored attribute %s\n", &v16, 0xCu);
      }
    }

    return;
  }

  *(*(a1 + 408) + 1140) = v5;
  if (dword_100090058)
  {
    v8 = ne_log_obj();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      sub_10006705C(v4, v8);
    }
  }
}

uint64_t sub_100043BD4(uint64_t *a1, uint64_t *a2, _DWORD *a3)
{
  v6 = malloc_type_malloc(0x18uLL, 0x10200403A35BBDDuLL);
  if (!v6)
  {
    return 0xFFFFFFFFLL;
  }

  v7 = *a2;
  *(v6 + 6) = *(a2 + 6);
  *v6 = v7;
  v6[2] = 0;
  v8 = *a1;
  if (*a1)
  {
    do
    {
      v9 = v8;
      v8 = *(v8 + 16);
    }

    while (v8);
    a1 = (v9 + 16);
  }

  v10 = 0;
  *a1 = v6;
  ++*a3;
  return v10;
}

void *sub_100043C6C(void *result, _DWORD *a2)
{
  *a2 = 0;
  if (result)
  {
    do
    {
      v2 = result[2];
      free(result);
      result = v2;
    }

    while (v2);
  }

  return result;
}

_BYTE *sub_100043CA4(void *a1)
{
  v1 = a1;
  v2 = 0;
  if (a1)
  {
    v3 = a1;
    do
    {
      inet_ntop(2, v3, __s, 0x28u);
      inet_ntop(2, v3 + 4, v10, 0x28u);
      v4 = strlen(__s);
      v2 += v4 + strlen(v10) + 2;
      v3 = v3[2];
    }

    while (v3);
  }

  v5 = malloc_type_malloc(v2, 0xEAF5B4E3uLL);
  v6 = v5;
  if (v5)
  {
    *v5 = 0;
    if (v1)
    {
      if (v2 >= 1)
      {
        for (i = 0; i < v2; i += v8)
        {
          inet_ntop(2, v1, __s, 0x28u);
          inet_ntop(2, v1 + 4, v10, 0x28u);
          v8 = snprintf(&v6[i], v2 - i, "%s/%s ", __s, v10);
          if (v8 < 0)
          {
            break;
          }

          v1 = v1[2];
          if (!v1)
          {
            break;
          }
        }
      }
    }
  }

  return v6;
}

void sub_100043E04(uint64_t a1)
{
  if ((*(a1 + 17) & 0x20) != 0)
  {
    v3 = (*(a1 + 408) + 1144);
    if (*v3)
    {
      if (dword_100090058)
      {
        v4 = ne_log_obj();
        if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
        {
          sub_1000670E0(v3);
        }
      }
    }

    else
    {
      if (dword_100090058)
      {
        v5 = ne_log_obj();
        if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
        {
          *v10 = 0;
          _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Sending Xauth request\n", v10, 2u);
        }
      }

      v6 = sub_10003D3A8(0x14uLL);
      if (v6)
      {
        v7 = v6;
        v8 = v6[1];
        *v8 = 0;
        *(v8 + 8) = 0;
        *(v8 + 16) = 0;
        *(v8 + 2) = 5120;
        *(v8 + 4) = 1;
        *(v8 + 6) = bswap32(sub_100004308()) >> 16;
        *(v8 + 8) = 0x8940000088C0;
        *(v8 + 16) = 35392;
        sub_100041F14(a1, v7, 14, 1, 1, 0, 0);
        sub_10003D4F0(v7);
        *v3 = 1;
      }

      else if (dword_100090058)
      {
        v9 = ne_log_obj();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          sub_100067158();
        }
      }
    }
  }

  else if (dword_100090058)
  {
    v1 = ne_log_obj();
    if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
    {
      sub_10006718C();
    }
  }
}

uint64_t sub_100043FA0(uint64_t a1, _WORD *a2, unsigned int a3)
{
  v3 = *(a1 + 408);
  if ((*v3 & 1) == 0)
  {
    if (dword_100090058)
    {
      v4 = ne_log_obj();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        sub_100067390();
      }
    }

    return 0xFFFFFFFFLL;
  }

  if (*(v3 + 1144) != 1)
  {
    if (dword_100090058)
    {
      v10 = ne_log_obj();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_1000671C0((v3 + 1144));
      }
    }

    return 0xFFFFFFFFLL;
  }

  v8 = bswap32(*a2 & 0xFF7F) >> 16;
  switch(v8)
  {
    case 0x408Au:
      v12 = 1168;
      goto LABEL_19;
    case 0x4089u:
      v12 = 1160;
LABEL_19:
      v13 = bswap32(a2[1]) >> 16;
      v14 = malloc_type_realloc(*(v3 + v12), v13 + 1, 0x15DB7EE3uLL);
      *(v3 + v12) = v14;
      if (!v14)
      {
        if (dword_100090058)
        {
          v16 = ne_log_obj();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            sub_100067238();
          }
        }

        return 0xFFFFFFFFLL;
      }

      memcpy(v14, a2 + 2, v13);
      *(*(v3 + v12) + v13) = 0;
      break;
    case 0x4088u:
      if (a2[1])
      {
        if (dword_100090058)
        {
          v9 = ne_log_obj();
          if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
          {
            v35 = 67109120;
            v36 = 34880;
            _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Unexpected authentication type %d\n", &v35, 8u);
          }
        }

        return 0xFFFFFFFFLL;
      }

      *(v3 + 1152) = 0;
      break;
    default:
      if (dword_100090058)
      {
        v15 = ne_log_obj();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          v35 = 67109120;
          v36 = v8;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "ignored Xauth attribute %d\n", &v35, 8u);
        }
      }

      break;
  }

  v17 = *(v3 + 1160);
  if (!v17)
  {
    return 0;
  }

  v18 = *(v3 + 1168);
  if (!v18)
  {
    return 0;
  }

  v19 = *(a1 + 408);
  __strlcpy_chk();
  v20 = sub_100042BC8(a1);
  if (v20 == -1)
  {
    if (dword_100090058)
    {
      v23 = ne_log_obj();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        sub_10006735C();
      }
    }

    v22 = -1;
    goto LABEL_50;
  }

  if (dword_100090C48)
  {
    if (dword_100090058)
    {
      v21 = ne_log_obj();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        sub_10006726C();
      }
    }

    v22 = -1;
  }

  else
  {
    v22 = sub_100044408(v17, v18);
    if (!v22 && dword_100090C58)
    {
      v22 = sub_100044464(a1, qword_100090C50, dword_100090C58);
    }
  }

  v24 = sub_10003CE50(*(a1 + 48), v22);
  v25 = v24 - time(0);
  if (v25 < 1)
  {
LABEL_50:
    v30 = a1;
    v31 = v20;
    v32 = a3;
    v33 = v22;
    return sub_100044698(v30, v31, v32, v33);
  }

  v26 = sub_10003A958(*(a1 + 48));
  if (dword_100090058)
  {
    v27 = v26;
    v28 = ne_log_obj();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      sub_1000672A0(v27, v25, v28);
    }
  }

  v29 = malloc_type_malloc(0x1CuLL, 0x100004027586B93uLL);
  if (v29)
  {
    *v29 = *a1;
    v29[4] = v20;
    v29[5] = a3;
    v29[6] = -1;
    sub_100038550(v25, sub_100044880, v29);
    return 0;
  }

  if (dword_100090058)
  {
    v34 = ne_log_obj();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      sub_100067328();
    }
  }

  v30 = a1;
  v31 = v20;
  v32 = a3;
  v33 = -1;
  return sub_100044698(v30, v31, v32, v33);
}

uint64_t sub_100044408(const char *a1, const char *a2)
{
  v3 = getpwnam(a1);
  if (!v3)
  {
    return 0xFFFFFFFFLL;
  }

  if (!v3->pw_uid)
  {
    return 0xFFFFFFFFLL;
  }

  pw_passwd = v3->pw_passwd;
  v5 = crypt(a2, pw_passwd);
  if (!v5)
  {
    return 0xFFFFFFFFLL;
  }

  if (!strcmp(v5, pw_passwd))
  {
    return 0;
  }

  return 0xFFFFFFFFLL;
}

uint64_t sub_100044464(uint64_t a1, char **a2, int a3)
{
  if (!*(a1 + 408))
  {
    if (dword_100090058)
    {
      v10 = ne_log_obj();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_100067438();
      }
    }

    return 0xFFFFFFFFLL;
  }

  if (a3 < 1)
  {
    return 0xFFFFFFFFLL;
  }

  v5 = a3;
  while (1)
  {
    v6 = *(*(a1 + 408) + 1160);
    if (!v6)
    {
      if (dword_100090058)
      {
        v11 = ne_log_obj();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          sub_100067404();
        }
      }

      return 0xFFFFFFFFLL;
    }

    if (!dword_100090C4C)
    {
      break;
    }

    if (dword_100090058)
    {
      v7 = ne_log_obj();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        sub_1000673C4(&v15, v16, v7);
      }

      goto LABEL_10;
    }

LABEL_13:
    ++a2;
    if (!--v5)
    {
      return 0xFFFFFFFFLL;
    }
  }

  if (sub_1000449E8(v6, *a2))
  {
LABEL_10:
    if (dword_100090058)
    {
      v8 = ne_log_obj();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = *a2;
        *buf = 136315394;
        v18 = v6;
        v19 = 2080;
        v20 = v9;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "user %s is not a member of group %s\n", buf, 0x16u);
      }
    }

    goto LABEL_13;
  }

  if (dword_100090058)
  {
    v13 = ne_log_obj();
    result = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
    if (!result)
    {
      return result;
    }

    v14 = *a2;
    *buf = 136315394;
    v18 = v6;
    v19 = 2080;
    v20 = v14;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "user %s is a member of group %s\n", buf, 0x16u);
  }

  return 0;
}

uint64_t sub_100044698(uint64_t a1, unsigned int a2, unsigned int a3, int a4)
{
  v4 = *(a1 + 408);
  v5 = *(v4 + 1160);
  if ((*(a1 + 432) & 2) != 0)
  {
    if (dword_100090058)
    {
      v9 = ne_log_obj();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v12 = 136315138;
        v13 = v5;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "dropped login for user %s\n", &v12, 0xCu);
      }
    }

    return 0xFFFFFFFFLL;
  }

  if (a4)
  {
    if (a2 != -1)
    {
      sub_100042A04(a1, a2);
    }

    if (dword_100090058)
    {
      v8 = ne_log_obj();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v12 = 136315138;
        v13 = v5;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "login failed for user %s\n", &v12, 0xCu);
      }
    }

    sub_1000448F8(a1, 0, a3);
    *(v4 + 1144) = 0;
    if ((*(a1 + 17) & 0x20) != 0)
    {
      sub_100017EF4(a1);
    }

    sub_100020614(a1);
    return 0xFFFFFFFFLL;
  }

  *(v4 + 1144) = 2;
  if (dword_100090058)
  {
    v11 = ne_log_obj();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 136315138;
      v13 = v5;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "login succeeded for user %s\n", &v12, 0xCu);
    }
  }

  sub_1000448F8(a1, 1u, a3);
  return 0;
}

void sub_100044880(uint64_t a1)
{
  v2 = sub_100005538(0, a1);
  if (v2)
  {
    sub_100044698(v2, *(a1 + 16), *(a1 + 20), *(a1 + 24));
  }

  else if (dword_100090058)
  {
    v3 = ne_log_obj();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_10006746C();
    }
  }

  free(a1);
}

void sub_1000448F8(uint64_t a1, unsigned int a2, unsigned int a3)
{
  v6 = sub_10003D3A8(0xCuLL);
  if (v6)
  {
    v7 = v6;
    v8 = v6[1];
    *v8 = 0;
    *(v8 + 8) = 0;
    *(v8 + 2) = 3072;
    *(v8 + 4) = 3;
    *(v8 + 6) = bswap32(a3) >> 16;
    *(v8 + 8) = -28736;
    *(v8 + 10) = bswap32(a2) >> 16;
    sub_100041F14(a1, v6, 14, 1, 1, 0, 0);

    sub_10003D4F0(v7);
  }

  else if (dword_100090058)
  {
    v9 = ne_log_obj();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_100067158();
    }
  }
}

uint64_t sub_1000449E8(const char *a1, char *a2)
{
  v3 = getgrnam(a2);
  if (v3)
  {
    for (i = v3->gr_mem; ; ++i)
    {
      v5 = *i;
      if (!*i)
      {
        break;
      }

      if (!strcmp(v5, a1))
      {
        if (dword_100090058)
        {
          v6 = ne_log_obj();
          result = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
          if (!result)
          {
            return result;
          }

          *v9 = 0;
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "membership validated\n", v9, 2u);
        }

        return 0;
      }
    }
  }

  else if (dword_100090058)
  {
    v8 = ne_log_obj();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_1000674A0();
    }
  }

  return 0xFFFFFFFFLL;
}

uint64_t sub_100044AC8(void *a1)
{
  v1 = *(a1[9] + 48);
  if (*(a1[8] + 272))
  {
    v2 = v1 == 65001;
  }

  else
  {
    v2 = 0;
  }

  if (v2)
  {
    return 0;
  }

  v3 = (v1 - 65002) > 8 || ((1 << (v1 + 22)) & 0x151) == 0;
  if (v3 && v1 != 64222)
  {
    return 0;
  }

  v5 = a1[51];
  if (*v5)
  {
    if (*(v5 + 1144) == 2)
    {
      return 0;
    }

    if (dword_100090058)
    {
      v8 = ne_log_obj();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_100067514();
      }
    }
  }

  else if (dword_100090058)
  {
    v6 = ne_log_obj();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_100067548();
    }
  }

  return 0xFFFFFFFFLL;
}

void *sub_100044BB0(uint64_t a1, unsigned __int16 *a2)
{
  if ((**(a1 + 408) & 1) == 0)
  {
    if (dword_100090058)
    {
      v2 = ne_log_obj();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
      {
        sub_1000676E8();
      }
    }

    return 0;
  }

  v7 = *a2;
  v8 = v7 & 0xFF7F;
  v9 = bswap32(v7 & 0xFFFFFF7F) >> 16;
  if (v9 > 16521)
  {
    if ((v9 - 16522) < 2)
    {
      v10 = a1 + 64;
      v11 = *(*(a1 + 64) + 272);
      if (!v11)
      {
        return 0;
      }

      v12 = *v11;
      if (!v12)
      {
        return 0;
      }

      v13 = sub_10003D3A8(*v12 + 3);
      if (v13)
      {
        v14 = v13;
        *v13[1] = 0;
        memcpy((v13[1] + 4), *(**(*v10 + 272) + 8), ***(*v10 + 272) - 1);
        v15 = *(*(*v10 + 272) + 8);
        v16 = v15 != 0;
        if (v15 || (v15 = sub_100025C88(v14)) != 0)
        {
          sub_10003D4F0(v14);
          *(*(*v10 + 272) + 16) |= 2u;
          v17 = *v15 - 1;
LABEL_20:
          v19 = 1;
          goto LABEL_21;
        }

        if (dword_100090058)
        {
          v36 = ne_log_obj();
          if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
          {
            sub_10006757C(a1 + 64);
          }
        }

        v27 = v14;
        goto LABEL_67;
      }

      if (!dword_100090058)
      {
        return 0;
      }

      v34 = ne_log_obj();
      if (!os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        return 0;
      }

      goto LABEL_53;
    }

    if (v9 == 16524)
    {
      if ((v7 & 0x80) != 0 || !a2[1])
      {
        return 0;
      }

      v23 = sub_10003D3A8(__rev16(a2[1]));
      if (v23)
      {
        v24 = v23;
        memcpy(v23[1], a2 + 2, *v23);
        if (dword_100090058)
        {
          v25 = ne_log_obj();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
          {
            v26 = sub_100026DF8(v24[1], *v24);
            v37 = 136315138;
            v38 = v26;
            _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "XAUTH Message: '%s'.\n", &v37, 0xCu);
          }
        }

        v27 = v24;
LABEL_67:
        sub_10003D4F0(v27);
        return 0;
      }

      if (!dword_100090058)
      {
        return 0;
      }

      v35 = ne_log_obj();
      if (!os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        return 0;
      }

LABEL_53:
      sub_100059788();
      return 0;
    }

LABEL_37:
    if (dword_100090058)
    {
      v29 = ne_log_obj();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        v37 = 136315138;
        v38 = sub_10003BD6C(v9);
        _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "Ignored attribute %s\n", &v37, 0xCu);
      }
    }

    return 0;
  }

  if (v9 != 16520)
  {
    if (v9 == 16521)
    {
      v18 = *(*(a1 + 64) + 272);
      if (!v18 || !*v18)
      {
        if (dword_100090058)
        {
          v30 = ne_log_obj();
          if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
          {
            sub_100067600();
          }
        }

        return 0;
      }

      v15 = 0;
      v17 = **v18 - 1;
      *(v18 + 16) |= 1u;
      v16 = 1;
      goto LABEL_20;
    }

    goto LABEL_37;
  }

  if ((v7 & 0x80) == 0)
  {
    if (dword_100090058)
    {
      v28 = ne_log_obj();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        sub_1000676B4();
      }
    }

    return 0;
  }

  v31 = a2 + 1;
  if (a2[1])
  {
    if (dword_100090058)
    {
      v32 = ne_log_obj();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        sub_100067634(v31);
      }
    }

    return 0;
  }

  v15 = 0;
  v19 = 0;
  v17 = 0;
  v16 = 1;
LABEL_21:
  v20 = sub_10003D3A8(v17 + 4);
  v3 = v20;
  if (!v20)
  {
    if (dword_100090058)
    {
      v33 = ne_log_obj();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        sub_100059788();
      }
    }

    goto LABEL_58;
  }

  v21 = v20[1];
  if ((v19 & 1) == 0)
  {
    *v21 = __rev16(v9 | 0x8000);
    goto LABEL_58;
  }

  *v21 = v8;
  *(v21 + 2) = bswap32(v17) >> 16;
  if ((v9 - 16522) >= 2)
  {
    if (v9 != 16521)
    {
      goto LABEL_58;
    }

    v22 = *(**(*(a1 + 64) + 272) + 8);
  }

  else
  {
    v22 = v15[1];
  }

  memcpy((v21 + 4), v22, v17);
LABEL_58:
  if (!v16)
  {
    sub_10003D4F0(v15);
  }

  return v3;
}

void *sub_100045094(uint64_t a1, unsigned __int16 *a2)
{
  v2 = *(a1 + 408);
  if ((*v2 & 1) == 0)
  {
    if (dword_100090058)
    {
      v3 = ne_log_obj();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        sub_1000677B8();
      }
    }

    return 0;
  }

  v5 = *a2;
  v6 = bswap32(v5 & 0xFFFFFF7F) >> 16;
  if (v6 == 16524)
  {
    if ((v5 & 0x80) == 0 && a2[1])
    {
      v10 = sub_10003D3A8(__rev16(a2[1]));
      if (!v10)
      {
        if (dword_100090058)
        {
          v24 = ne_log_obj();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
          {
            sub_100059788();
          }
        }

        return 0;
      }

      v11 = v10;
      memcpy(v10[1], a2 + 2, *v10);
      if (dword_100090058)
      {
        v12 = ne_log_obj();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          v13 = sub_100026DF8(v11[1], *v11);
          v27 = 136315138;
          v28 = v13;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "XAUTH Message: '%s'.\n", &v27, 0xCu);
        }
      }

      sub_10003D4F0(v11);
    }

    goto LABEL_23;
  }

  if (v6 != 16527)
  {
LABEL_23:
    if (dword_100090058)
    {
      v14 = ne_log_obj();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = sub_10003BD6C(v6);
        v27 = 136315138;
        v28 = v15;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Ignored attribute %s\n", &v27, 0xCu);
      }
    }

    return 0;
  }

  v8 = *(*(a1 + 72) + 48);
  if (*(*(a1 + 64) + 272))
  {
    v9 = v8 == 65001;
  }

  else
  {
    v9 = 0;
  }

  if (!v9)
  {
    if (v8 > 65006)
    {
      if (v8 != 65007 && v8 != 65009 && v8 != 65500)
      {
LABEL_55:
        if (dword_100090058)
        {
          v25 = ne_log_obj();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
          {
            sub_100067750();
          }
        }

        return 0;
      }
    }

    else if (v8 != 64221)
    {
      if (v8 == 65002)
      {
        if ((*(a1 + 432) & 1) == 0)
        {
          if (dword_100090058)
          {
            v26 = ne_log_obj();
            if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
            {
              sub_10006771C();
            }
          }

          return 0;
        }
      }

      else if (v8 != 65005)
      {
        goto LABEL_55;
      }
    }
  }

  if (a2[1] == 256)
  {
    if (*(a1 + 432))
    {
      *(v2 + 1144) = 2;
    }

    if (!dword_100090058)
    {
      goto LABEL_47;
    }

    v18 = ne_log_obj();
    if (!os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_47;
    }

    LOWORD(v27) = 0;
    v19 = "IPSec Extended Authentication Passed.\n";
  }

  else
  {
    if (dword_100090058)
    {
      v20 = ne_log_obj();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        sub_100067784();
      }
    }

    v21 = sub_100008158(a1);
    sub_100046C2C(0x18u, 0, v21, 0, 0);
    **(a1 + 408) |= 0x800u;
    if (!dword_100090058)
    {
      goto LABEL_47;
    }

    v18 = ne_log_obj();
    if (!os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_47;
    }

    LOWORD(v27) = 0;
    v19 = "IPSec Extended Authentication Failed.\n";
  }

  _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, v19, &v27, 2u);
LABEL_47:
  result = sub_10003D3A8(4uLL);
  if (result)
  {
    *result[1] = 36800;
    return result;
  }

  if (dword_100090058)
  {
    v23 = ne_log_obj();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      sub_100059788();
    }
  }

  return 0;
}

void sub_1000454A0(uint64_t a1)
{
  v2 = *(a1 + 8);
  if ((v2 - 1) >= 3)
  {
    if (v2)
    {
      if (dword_100090058)
      {
        v3 = ne_log_obj();
        if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
        {
          v8 = *(a1 + 8);
          v9 = 67109120;
          v10 = v8;
          v5 = "Unexpected authtype %d\n";
          goto LABEL_15;
        }
      }
    }

    else
    {
      v6 = *(a1 + 16);
      if (v6)
      {
        free(v6);
      }

      v7 = *(a1 + 24);
      if (v7)
      {

        free(v7);
      }
    }
  }

  else if (dword_100090058)
  {
    v3 = ne_log_obj();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 8);
      v9 = 67109120;
      v10 = v4;
      v5 = "Unsupported authtype %d\n";
LABEL_15:
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, v5, &v9, 8u);
    }
  }
}

uint64_t sub_1000455FC(uint64_t a1)
{
  v2 = *a1;
  if (*a1)
  {
    if (*v2)
    {
      sub_10003D4F0(*v2);
      **a1 = 0;
      v2 = *a1;
    }

    v3 = v2[1];
    if (v3)
    {
      sub_10003D4F0(v3);
      *(*a1 + 8) = 0;
      v2 = *a1;
    }

    result = 0;
    goto LABEL_9;
  }

  v5 = malloc_type_malloc(0x18uLL, 0x1020040EDCEB4C7uLL);
  *a1 = v5;
  if (v5)
  {
    v6 = v5;
    result = 0;
    *v6 = 0;
    *(*a1 + 8) = 0;
    v2 = *a1;
LABEL_9:
    *(v2 + 4) = 0;
    return result;
  }

  if (dword_100090058)
  {
    v7 = ne_log_obj();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1000677EC();
    }
  }

  return 0xFFFFFFFFLL;
}

void sub_1000456D0(void ***a1)
{
  v2 = *a1;
  if (v2)
  {
    if (*v2)
    {
      sub_10003D4F0(*v2);
      v2 = *a1;
    }

    if (v2[1])
    {
      sub_10003D4F0(v2[1]);
      v2 = *a1;
    }

    free(v2);
    *a1 = 0;
  }
}

void sub_100045728()
{
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v17 = 0;
  v18 = 0u;
  v16 = 128;
  dword_100090058 = 1;
  v0 = malloc_type_calloc(1uLL, 0x38uLL, 0x10B0040FCE79EF2uLL);
  if (v0)
  {
    v1 = v0;
    *(v0 + 6) = 0;
    v2 = accept(*(qword_1000900B8 + 28), &v17, &v16);
    *(v1 + 4) = v2;
    if ((v2 & 0x80000000) != 0)
    {
      if (dword_100090058)
      {
        v10 = ne_log_obj();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          sub_10006785C();
        }
      }
    }

    else
    {
      v3 = *(qword_1000900B8 + 64);
      *v1 = v3;
      v4 = qword_1000900B8;
      if (v3)
      {
        *(*(qword_1000900B8 + 64) + 8) = v1;
      }

      *(v4 + 64) = v1;
      *(v1 + 1) = v4 + 64;
      v5 = dispatch_source_create(&_dispatch_source_type_read, v2, 0, &_dispatch_main_q);
      *(v1 + 3) = v5;
      if (v5)
      {
        handler[0] = _NSConcreteStackBlock;
        handler[1] = 0x40000000;
        handler[2] = sub_1000459C0;
        handler[3] = &unk_10008ABF0;
        handler[4] = v1;
        dispatch_source_set_event_handler(v5, handler);
        v6 = *(v1 + 4);
        v7 = *(v1 + 3);
        v13[0] = _NSConcreteStackBlock;
        v13[1] = 0x40000000;
        v13[2] = sub_10004676C;
        v13[3] = &unk_10008AC10;
        v14 = v6;
        v13[4] = v7;
        dispatch_source_set_cancel_handler(v7, v13);
        dispatch_resume(*(v1 + 3));
        if (dword_100090058)
        {
          v8 = ne_log_obj();
          if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
          {
            *v12 = 0;
            _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "accepted connection on vpn control socket.\n", v12, 2u);
          }
        }

        sub_100038F0C();
        return;
      }

      if (dword_100090058)
      {
        v11 = ne_log_obj();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          sub_100067820();
        }
      }
    }

    free(v1);
    return;
  }

  if (dword_100090058)
  {
    v9 = ne_log_obj();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_1000678E4();
    }
  }
}

void sub_1000459C8(uint64_t a1)
{
  v83 = 0;
  v84 = 0;
  if (*(a1 + 40))
  {
LABEL_2:
    while (1)
    {
      v2 = recv(*(a1 + 16), (*(a1 + 40) + *(a1 + 32)), *(a1 + 36), 0);
      if ((v2 & 0x8000000000000000) == 0)
      {
        break;
      }

      if (*__error() != 4)
      {
        if (dword_100090058)
        {
          v7 = ne_log_obj();
          if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_6;
          }
        }

        return;
      }
    }

    v10 = v2;
    if (v2)
    {
      v11 = *(a1 + 36);
      v12 = (*(a1 + 32) + v2);
      *(a1 + 32) = v12;
      if (v2 < v11)
      {
        if (dword_100090058)
        {
          v13 = ne_log_obj();
          v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
          LODWORD(v11) = *(a1 + 36);
          if (v14)
          {
            *buf = 134218240;
            *v88 = v10;
            *&v88[8] = 1024;
            *&v88[10] = v11;
            _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "received partial vpn_control command - len=%ld - expected %u\n", buf, 0x12u);
            LODWORD(v11) = *(a1 + 36);
          }
        }

        *(a1 + 36) = v11 - v10;
        return;
      }

      v18 = *(a1 + 40);
      v19 = bswap32(*v18) >> 16;
      if (v19 > 18)
      {
        if (v19 <= 21)
        {
          if (v19 == 19)
          {
            if (v12 > 0x1F)
            {
              if (dword_100090058)
              {
                v51 = ne_log_obj();
                if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 0;
                  _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_DEFAULT, "received start_ph2 command on vpn control socket.\n", buf, 2u);
                }
              }

              v40 = a1 + 48;
              while (1)
              {
                v40 = *v40;
                if (!v40)
                {
                  goto LABEL_211;
                }

                if (*(v18 + 4) == *(v40 + 16))
                {
                  LODWORD(v40) = sub_100047F4C(v40, v18, v12);
                  goto LABEL_211;
                }
              }
            }

            if (dword_100090058)
            {
              v28 = ne_log_obj();
              if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
              {
                sub_100067ACC();
              }
            }

            goto LABEL_210;
          }

          if (v19 == 20)
          {
            if (v12 <= 0x13)
            {
              if (dword_100090058)
              {
                v31 = ne_log_obj();
                if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
                {
                  sub_100067D24();
                }
              }

              goto LABEL_210;
            }

            if ((bswap32(v18[7]) >> 16) + 16 > v12)
            {
              if (dword_100090058)
              {
                v61 = ne_log_obj();
                if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
                {
                  sub_100067CA4(v18 + 7);
                }
              }

              goto LABEL_210;
            }

            if (dword_100090058)
            {
              v75 = ne_log_obj();
              if (os_log_type_enabled(v75, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&_mh_execute_header, v75, OS_LOG_TYPE_DEFAULT, "received xauth info command vpn control socket.\n", buf, 2u);
              }
            }

            v76 = a1 + 48;
            while (1)
            {
              v76 = *v76;
              if (!v76)
              {
                break;
              }

              v77 = *(v18 + 4);
              if (v77 == *(v76 + 16))
              {
                LODWORD(v40) = sub_1000488CC(v77, v18 + 10, (bswap32(v18[7]) >> 16) - 4);
                goto LABEL_211;
              }
            }
          }

          else
          {
            if (v12 <= 0x13)
            {
              if (dword_100090058)
              {
                v24 = ne_log_obj();
                if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
                {
                  sub_100067A58();
                }
              }

              goto LABEL_210;
            }

            if (dword_100090058)
            {
              v41 = ne_log_obj();
              if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "received start_dpd command on vpn control socket.\n", buf, 2u);
              }
            }

            v42 = a1 + 48;
            while (1)
            {
              v42 = *v42;
              if (!v42)
              {
                break;
              }

              v43 = *(v18 + 4);
              if (v43 == *(v42 + 16))
              {
                v95 = 0;
                v94 = 0u;
                v93 = 0u;
                v92 = 0u;
                v91 = 0u;
                v90 = 0u;
                v89 = 0u;
                *&v88[4] = 0u;
                *buf = 528;
                *v88 = v43;
                LODWORD(v40) = sub_100007AA4(buf);
                goto LABEL_211;
              }
            }
          }

          goto LABEL_205;
        }

        switch(v19)
        {
          case 22:
            if (v12 > 0x17)
            {
              if (dword_10008C2C8 >= 5)
              {
                sub_1000314C0(5, *(a1 + 40), (bswap32(v18[7]) >> 16) + 16, "received assert command on vpn control socket.\n", v3, v4, v5, v6, v83);
              }

              *&v88[4] = 0;
              v52 = *(v18 + 4);
              v53 = *(v18 + 5);
              *buf = 528;
              *v88 = v52;
              v86 = 0;
              v85[0] = 528;
              v85[1] = v53;
              LODWORD(v40) = sub_100048B70(buf, v85);
              goto LABEL_211;
            }

            if (dword_100090058)
            {
              v29 = ne_log_obj();
              if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
              {
                sub_1000679E0();
              }
            }

            goto LABEL_210;
          case 23:
            if (v12 > 0x13)
            {
              if (dword_100090058)
              {
                v64 = ne_log_obj();
                if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 0;
                  _os_log_impl(&_mh_execute_header, v64, OS_LOG_TYPE_DEFAULT, "received reconnect command on vpn control socket.\n", buf, 2u);
                }
              }

              v40 = a1 + 48;
              while (1)
              {
                v40 = *v40;
                if (!v40)
                {
                  goto LABEL_211;
                }

                if (*(v18 + 4) == *(v40 + 16))
                {
                  v63 = 3;
LABEL_174:
                  LODWORD(v40) = sub_100047AE4(v40, v63);
                  goto LABEL_211;
                }
              }
            }

            if (dword_100090058)
            {
              v33 = ne_log_obj();
              if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
              {
                sub_10006796C();
              }
            }

            goto LABEL_210;
          case 24:
            if (v12 <= 0x1F)
            {
              if (dword_100090058)
              {
                v26 = ne_log_obj();
                if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
                {
                  sub_100067C2C();
                }
              }

              goto LABEL_210;
            }

            if (dword_100090058)
            {
              v45 = ne_log_obj();
              if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
              {
                v46 = *(v18 + 4);
                *buf = 67109120;
                *v88 = v46;
                _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "received set v6 prefix of len %u command on vpn control socket, adding to all addresses.\n", buf, 8u);
              }
            }

            v47 = *(a1 + 48);
            if (v47)
            {
              LODWORD(v40) = 0;
              do
              {
                v48 = *v47;
                *(v47 + 20) = *(v18 + 1);
                v47 = v48;
              }

              while (v48);
              goto LABEL_211;
            }

            goto LABEL_205;
        }
      }

      else
      {
        if (v19 <= 3)
        {
          if (v19 == 1)
          {
            if (v12 > 0x17)
            {
              v49 = v18 + 10;
              if ((bswap32(v18[10]) >> 16) + 24 <= v12)
              {
                if (dword_100090058)
                {
                  v69 = ne_log_obj();
                  if (os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 0;
                    _os_log_impl(&_mh_execute_header, v69, OS_LOG_TYPE_DEFAULT, "received bind command on vpn control socket.\n", buf, 2u);
                  }
                }

                v70 = malloc_type_calloc(1uLL, 0x40uLL, 0x10A0040D5FA6E92uLL);
                if (!v70)
                {
                  if (dword_100090058)
                  {
                    v79 = ne_log_obj();
                    if (os_log_type_enabled(v79, OS_LOG_TYPE_ERROR))
                    {
                      sub_1000678E4();
                    }
                  }

                  goto LABEL_210;
                }

                v71 = v70;
                if (*v49)
                {
                  v72 = sub_10003D3A8(__rev16(*v49));
                  v71[7] = v72;
                  if (!v72)
                  {
                    if (dword_100090058)
                    {
                      v81 = ne_log_obj();
                      if (os_log_type_enabled(v81, OS_LOG_TYPE_ERROR))
                      {
                        sub_1000678E4();
                      }
                    }

                    free(v71);
                    goto LABEL_210;
                  }

                  memcpy(v72[1], v18 + 12, bswap32(v18[10]) >> 16);
                }

                *(v71 + 4) = *(v18 + 4);
                v73 = (a1 + 48);
                v74 = *(a1 + 48);
                *v71 = v74;
                if (v74)
                {
                  *(v74 + 8) = v71;
                }

                LODWORD(v40) = 0;
                *v73 = v71;
                v71[1] = v73;
                *(qword_1000900B8 + 80) |= 0x10u;
                goto LABEL_211;
              }

              if (dword_100090058)
              {
                v50 = ne_log_obj();
                if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
                {
                  sub_100067EC0(v18 + 10);
                }
              }
            }

            else if (dword_100090058)
            {
              v27 = ne_log_obj();
              if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
              {
                sub_100067F40();
              }
            }

LABEL_210:
            LODWORD(v40) = 0xFFFF;
LABEL_211:
            v18[7] = 0;
            v18[6] = bswap32(v40) >> 16;
            if (send(*(a1 + 16), v18, 0x10uLL, 0) < 0)
            {
              if (dword_100090058)
              {
                v82 = ne_log_obj();
                if (os_log_type_enabled(v82, OS_LOG_TYPE_ERROR))
                {
                  sub_100068038();
                }
              }
            }

            free(*(a1 + 40));
            *(a1 + 32) = 0;
            *(a1 + 40) = 0;
            return;
          }

          if (v19 != 2)
          {
            if (v19 == 3)
            {
              if (v12 > 0x1B)
              {
                if (dword_100090058)
                {
                  v35 = ne_log_obj();
                  if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
                  {
                    v36 = bswap32(*(v18 + 5));
                    *buf = 67109120;
                    *v88 = v36;
                    _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "received redirect command on vpn control socket - address = %x.\n", buf, 8u);
                  }
                }

                v37 = *(qword_1000900B8 + 72);
                while (v37)
                {
                  v38 = v37;
                  v37 = *v37;
                  if (*(v38 + 4) == *(v18 + 4))
                  {
                    v39 = *(v18 + 5);
                    if (v39)
                    {
                      LODWORD(v40) = 0;
                      *(v38 + 5) = v39;
                      *(v38 + 12) = bswap32(v18[12]) >> 16;
                      goto LABEL_211;
                    }

                    v80 = v38[1];
                    if (v37)
                    {
                      v37[1] = v80;
                    }

                    *v80 = v37;
                    free(v38);
                    goto LABEL_205;
                  }
                }

                v65 = malloc_type_malloc(0x20uLL, 0x10A00401099AC32uLL);
                if (v65)
                {
                  v66 = v65;
                  v65[2] = *(v18 + 2);
                  *(v65 + 12) = bswap32(v18[12]) >> 16;
                  v67 = *(qword_1000900B8 + 72);
                  *v65 = v67;
                  v68 = qword_1000900B8;
                  if (v67)
                  {
                    *(*(qword_1000900B8 + 72) + 8) = v65;
                  }

                  LODWORD(v40) = 0;
                  *(v68 + 72) = v66;
                  v66[1] = v68 + 72;
                  goto LABEL_211;
                }

                if (dword_100090058)
                {
                  v78 = ne_log_obj();
                  if (os_log_type_enabled(v78, OS_LOG_TYPE_ERROR))
                  {
                    sub_100067D98();
                  }
                }
              }

              else if (dword_100090058)
              {
                v20 = ne_log_obj();
                if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
                {
                  sub_100067DD4();
                }
              }

              goto LABEL_210;
            }

            goto LABEL_93;
          }

          if (v12 <= 0x13)
          {
            if (dword_100090058)
            {
              v30 = ne_log_obj();
              if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
              {
                sub_100067E4C();
              }
            }

            goto LABEL_210;
          }

          if (dword_100090058)
          {
            v54 = ne_log_obj();
            if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_DEFAULT, "received unbind command on vpn control socket.\n", buf, 2u);
            }
          }

          v55 = *(a1 + 48);
          if (v55)
          {
            while (1)
            {
              v56 = *v55;
              v57 = *(v18 + 4);
              if (v57 == -1)
              {
                break;
              }

              if (v57 == v55[4])
              {
                goto LABEL_147;
              }

LABEL_152:
              LODWORD(v40) = 0;
              v55 = v56;
              if (!v56)
              {
                goto LABEL_211;
              }
            }

            v57 = v55[4];
LABEL_147:
            sub_100038274(v57);
            v58 = *v55;
            v59 = *(v55 + 1);
            if (*v55)
            {
              *(v58 + 8) = v59;
            }

            *v59 = v58;
            v60 = *(v55 + 7);
            if (v60)
            {
              sub_10003D4F0(v60);
            }

            free(v55);
            goto LABEL_152;
          }

LABEL_205:
          LODWORD(v40) = 0;
          goto LABEL_211;
        }

        switch(v19)
        {
          case 4:
            goto LABEL_205;
          case 17:
            if (v12 > 0x13)
            {
              if (dword_100090060)
              {
                sub_10003903C();
                dword_100090060 = 0;
              }

              if (dword_100090058)
              {
                v62 = ne_log_obj();
                if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 0;
                  _os_log_impl(&_mh_execute_header, v62, OS_LOG_TYPE_DEFAULT, "received connect command on vpn control socket.\n", buf, 2u);
                }
              }

              v40 = a1 + 48;
              while (1)
              {
                v40 = *v40;
                if (!v40)
                {
                  goto LABEL_211;
                }

                if (*(v18 + 4) == *(v40 + 16))
                {
                  v63 = 1;
                  goto LABEL_174;
                }
              }
            }

            if (dword_100090058)
            {
              v32 = ne_log_obj();
              if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
              {
                sub_100067BB8();
              }
            }

            goto LABEL_210;
          case 18:
            if (v12 > 0x13)
            {
              if (dword_100090058)
              {
                v44 = ne_log_obj();
                if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 0;
                  _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "received disconnect command on vpn control socket.\n", buf, 2u);
                }
              }

              v40 = a1 + 48;
              while (1)
              {
                v40 = *v40;
                if (!v40)
                {
                  goto LABEL_211;
                }

                if (*(v18 + 4) == *(v40 + 16))
                {
                  LODWORD(v40) = sub_100047E54(v40, off_10008C4F0[0]);
                  goto LABEL_211;
                }
              }
            }

            if (dword_100090058)
            {
              v25 = ne_log_obj();
              if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
              {
                sub_100067B44();
              }
            }

            goto LABEL_210;
        }
      }

LABEL_93:
      if (dword_100090058)
      {
        v34 = ne_log_obj();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
        {
          sub_100067FB8(v18);
        }
      }

      goto LABEL_210;
    }

    if (dword_100090058)
    {
      v16 = ne_log_obj();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v17 = "vpn_control socket closed by peer while reading packet\n";
LABEL_38:
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, v17, buf, 2u);
        goto LABEL_39;
      }
    }

    goto LABEL_39;
  }

  do
  {
    v8 = recv(*(a1 + 16), &v83, 0x10uLL, 2);
    if ((v8 & 0x8000000000000000) == 0)
    {
      if (v8)
      {
        if (v8 > 0xF)
        {
          v21 = (bswap32(HIWORD(v84)) >> 16) + 16;
          *(a1 + 32) = 0;
          *(a1 + 36) = v21;
          v22 = malloc_type_malloc(v21, 0x8375A971uLL);
          *(a1 + 40) = v22;
          if (v22)
          {
            goto LABEL_2;
          }

          if (dword_100090058)
          {
            v23 = ne_log_obj();
            if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
            {
              sub_100068148();
            }
          }
        }

        else if (dword_100090058)
        {
          v9 = ne_log_obj();
          if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
          {
            sub_100068184();
          }
        }

        return;
      }

      if (dword_100090058)
      {
        v16 = ne_log_obj();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          v17 = "vpn_control socket closed by peer.\n";
          goto LABEL_38;
        }
      }

LABEL_39:
      sub_1000467A8(a1, off_10008C4F8[0]);
      sub_100046844(a1);
      return;
    }
  }

  while (*__error() == 4);
  if (dword_100090058)
  {
    v15 = ne_log_obj();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
LABEL_6:
      sub_1000680C0();
    }
  }
}