uint64_t sub_100000798(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_100003AB4(2, "%s:-->", a3, a4, a5, a6, a7, a8, "get_nat_packets");
  if (a2)
  {
    *a2 = 0;
    v9 = PFUserCopyRules_S();
    if (v9)
    {
      v10 = v9;
      count = xpc_array_get_count(v9);
      if (!count)
      {
LABEL_9:
        xpc_release(v10);
        return 0;
      }

      v12 = count;
      v13 = 0;
      while (1)
      {
        value = xpc_array_get_value(v10, v13);
        if (xpc_get_type(value) != &_xpc_type_dictionary)
        {
          break;
        }

        uint64 = xpc_dictionary_get_uint64(value, kPFRuleID);
        if (sub_10000233C(uint64))
        {
          *a2 = xpc_dictionary_get_uint64(value, kPFPacketsIn);
          *a2 += xpc_dictionary_get_uint64(value, kPFPacketsOut);
          xpc_dictionary_get_uint64(value, kPFPacketsIn);
          xpc_dictionary_get_uint64(value, kPFPacketsOut);
          sub_100003AB4(2, "%s:packets in %llu packets out %llu", v16, v17, v18, v19, v20, v21, "get_nat_packets");
        }

        if (v12 == ++v13)
        {
          goto LABEL_9;
        }
      }

      warn("xpc rule is not of type dictionary");
      xpc_release(v10);
    }

    else
    {
      warn("unable to get rules from anchor");
    }
  }

  return 0xFFFFFFFFLL;
}

uint64_t sub_100000920(uint64_t a1, unsigned int a2, unsigned __int8 *a3, unsigned __int8 *a4, unsigned int a5, uint64_t *a6)
{
  if (!a3 || !a4 || !a5)
  {
    v22 = __error();
    v23 = 22;
LABEL_17:
    *v22 = v23;
    return 0xFFFFFFFFLL;
  }

  v9 = a3[1];
  v10 = v9 == 30 || v9 == 2;
  if (!v10 || v9 != a4[1])
  {
    v22 = __error();
    v23 = 43;
    goto LABEL_17;
  }

  v13 = xpc_dictionary_create(0, 0, 0);
  if (!v13)
  {
    v22 = __error();
    v23 = 12;
    goto LABEL_17;
  }

  v14 = v13;
  xpc_dictionary_set_uint64(v13, kPFAction, 0);
  xpc_dictionary_set_uint64(v14, kPFFamily, a3[1]);
  xpc_dictionary_set_uint64(v14, kPFProtocol, 6uLL);
  xpc_dictionary_set_uint64(v14, kPFExtFilter, 1uLL);
  xpc_dictionary_set_BOOL(v14, kPFQuick, 1);
  xpc_dictionary_set_uint64(v14, kPFKeepState, 1uLL);
  xpc_dictionary_set_string(v14, kPFFlags, "S/SA");
  xpc_dictionary_set_uint64(v14, kPFRTableID, 0);
  xpc_dictionary_set_uint64(v14, kPFMaxStates, 1uLL);
  xpc_dictionary_set_uint64(v14, kPFDirection, a2);
  v15 = xpc_dictionary_create(0, 0, 0);
  if (v15)
  {
    v16 = v15;
    v17 = xpc_dictionary_create(0, 0, 0);
    if (v17)
    {
      v18 = v17;
      if (a3[1] == 2)
      {
        inet_ntop(2, a3 + 4, string, 0x10u);
        xpc_dictionary_set_string(v16, kPFSubAddress, string);
        v19 = a4 + 4;
        v20 = 2;
        v21 = 16;
      }

      else
      {
        inet_ntop(30, a3 + 8, string, 0x2Eu);
        xpc_dictionary_set_string(v16, kPFSubAddress, string);
        v19 = a4 + 8;
        v20 = 30;
        v21 = 46;
      }

      inet_ntop(v20, v19, string, v21);
      xpc_dictionary_set_string(v18, kPFSubAddress, string);
      xpc_dictionary_set_uint64(v18, kPFSubLowPort, a5);
      xpc_dictionary_set_uint64(v18, kPFSubPortOperator, 2uLL);
      inserted = PFUserInsertRule_S();
      *a6 = inserted;
      if (inserted)
      {
        v24 = 0;
      }

      else
      {
        v24 = 0xFFFFFFFFLL;
      }

      xpc_release(v18);
    }

    else
    {
      *__error() = 12;
      v24 = 0xFFFFFFFFLL;
    }

    xpc_release(v16);
  }

  else
  {
    *__error() = 12;
    v24 = 0xFFFFFFFFLL;
  }

  xpc_release(v14);
  return v24;
}

uint64_t sub_100000C5C(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3, unsigned int a4, unsigned __int8 *a5, unsigned int a6, uint64_t *a7)
{
  if (!a2 || !a3 || !a4 || !a5 || !a6 || (v12 = a2[1], v12 != a5[1]))
  {
    v23 = __error();
    v24 = 22;
LABEL_16:
    *v23 = v24;
    return 0xFFFFFFFFLL;
  }

  if (v12 != 30 && v12 != 2 || v12 != a3[1])
  {
    v23 = __error();
    v24 = 43;
    goto LABEL_16;
  }

  v14 = xpc_dictionary_create(0, 0, 0);
  if (!v14)
  {
    v23 = __error();
    v24 = 12;
    goto LABEL_16;
  }

  v15 = v14;
  xpc_dictionary_set_uint64(v14, kPFAction, 8uLL);
  xpc_dictionary_set_uint64(v15, kPFFamily, a2[1]);
  xpc_dictionary_set_uint64(v15, kPFProtocol, 6uLL);
  xpc_dictionary_set_uint64(v15, kPFExtFilter, 1uLL);
  xpc_dictionary_set_uint64(v15, kPFRTableID, 0);
  xpc_dictionary_set_BOOL(v15, kPFNATPass, 1);
  v16 = xpc_dictionary_create(0, 0, 0);
  if (v16)
  {
    v17 = v16;
    v18 = xpc_dictionary_create(0, 0, 0);
    if (v18)
    {
      v19 = v18;
      if (a2[1] == 2)
      {
        inet_ntop(2, a2 + 4, string, 0x10u);
        xpc_dictionary_set_string(v17, kPFSubAddress, string);
        v20 = a3 + 4;
        v21 = 2;
        v22 = 16;
      }

      else
      {
        inet_ntop(30, a2 + 8, string, 0x2Eu);
        xpc_dictionary_set_string(v17, kPFSubAddress, string);
        v20 = a3 + 8;
        v21 = 30;
        v22 = 46;
      }

      inet_ntop(v21, v20, string, v22);
      xpc_dictionary_set_string(v19, kPFSubAddress, string);
      xpc_dictionary_set_uint64(v19, kPFSubLowPort, a4);
      xpc_dictionary_set_uint64(v19, kPFSubPortOperator, 2uLL);
      v27 = xpc_dictionary_create(0, 0, 0);
      if (v27)
      {
        v28 = v27;
        if (a5[1] == 2)
        {
          v29 = a5 + 4;
          v30 = 2;
          v31 = 16;
        }

        else
        {
          v29 = a5 + 8;
          v30 = 30;
          v31 = 46;
        }

        inet_ntop(v30, v29, string, v31);
        xpc_dictionary_set_string(v28, kPFSubAddress, string);
        xpc_dictionary_set_uint64(v28, kPFSubLowPort, a6);
        xpc_dictionary_set_uint64(v28, kPFSubPortOperator, 0);
        xpc_dictionary_set_value(v15, kPFFrom, v17);
        xpc_dictionary_set_value(v15, kPFTo, v19);
        xpc_dictionary_set_value(v15, kPFNATRDRAddress, v28);
        inserted = PFUserInsertRule_S();
        *a7 = inserted;
        if (inserted)
        {
          v25 = 0;
        }

        else
        {
          v25 = 0xFFFFFFFFLL;
        }

        xpc_release(v28);
      }

      else
      {
        *__error() = 12;
        v25 = 0xFFFFFFFFLL;
      }

      xpc_release(v19);
    }

    else
    {
      *__error() = 12;
      v25 = 0xFFFFFFFFLL;
    }

    xpc_release(v17);
  }

  else
  {
    *__error() = 12;
    v25 = 0xFFFFFFFFLL;
  }

  xpc_release(v15);
  return v25;
}

void sub_100001044()
{
  if (dword_10000C028)
  {
    v7.tv_sec = 0;
    *&v7.tv_usec = 0;
    gettimeofday(&v7, 0);
    if (v7.tv_usec / 1000000.0 + v7.tv_sec - *&qword_10000C030 >= 0.001)
    {
      v0 = v7.tv_usec / 1000000.0 + v7.tv_sec - *&qword_10000C030;
    }

    else
    {
      v0 = 0.001;
    }

    if (!qword_10000C038)
    {
      syslog(6, "data transfer complete (no bytes transferred)");
      return;
    }

    if (v0 < 60.0)
    {
      v1 = snprintf(&v7, 0x3E8uLL, "data transfer complete (%.1fs", v0);
      if (v1 == -1)
      {
        return;
      }

      if (v1 > 0x3E7)
      {
        goto LABEL_25;
      }

LABEL_17:
      v2 = 1000 - v1;
      if (qword_10000C038 >= 1)
      {
        v3 = strlen(&v7);
        v4 = snprintf(&v7 + v3, v2, ", %d bytes to server) (%.1fKB/s", qword_10000C038, qword_10000C038 / v0 * 0.0009765625);
        if (v4 == -1)
        {
          return;
        }

        if (v2 <= v4)
        {
          goto LABEL_25;
        }

        v2 -= v4;
      }

      if (SHIDWORD(qword_10000C038) < 1)
      {
        goto LABEL_24;
      }

      v5 = strlen(&v7);
      v6 = snprintf(&v7 + v5, v2, ", %d bytes to client) (%.1fKB/s", HIDWORD(qword_10000C038), HIDWORD(qword_10000C038) / v0 * 0.0009765625);
      if (v6 == -1)
      {
        return;
      }

      if (v2 > v6)
      {
LABEL_24:
        __strlcat_chk();
      }

      goto LABEL_25;
    }

    if ((v0 + 0.5) < 3600)
    {
      v1 = snprintf(&v7, 0x3E8uLL, "data transfer complete (%dm %ds");
    }

    else
    {
      v1 = snprintf(&v7, 0x3E8uLL, "data transfer complete (%dh %dm %ds");
    }

    if (v1 <= 0x3E7)
    {
      goto LABEL_17;
    }

    if (v1 != -1)
    {
LABEL_25:
      syslog(6, "%s");
    }
  }
}

void sub_100001308(const char *a1, int a2)
{
  if (dword_10000C028)
  {
    if (!strncasecmp(a1, "pass ", 5uLL))
    {
      v4 = "PASS XXXX";
    }

    else
    {
      v4 = a1;
    }

    if (a2)
    {
      if (!strncasecmp(a1, "user ", 5uLL) || !strncasecmp(a1, "retr ", 5uLL) || !strncasecmp(a1, "cwd ", 4uLL) || !strncasecmp(a1, "stor ", 5uLL))
      {
        v5 = 6;
      }

      else
      {
        v5 = 7;
      }

      v6 = "client:";
    }

    else
    {
      v5 = 7;
      v6 = " server:";
    }

    syslog(v5, "%s %s", v6, v4);
  }
}

uint64_t sub_100001404(int a1, uint64_t a2, uint64_t a3)
{
  v31 = 0;
  if (dword_10000C008 != -1)
  {
    close(dword_10000C008);
    dword_10000C008 = -1;
  }

  sub_1000016EC();
  if (dword_10000C010 != -1)
  {
    close(dword_10000C010);
    dword_10000C010 = -1;
  }

  sub_10000172C();
  if (!a1)
  {
    sub_100003AB4(1, "new_dataconn(client)", v6, v7, v8, v9, v10, v11, v30);
    unk_10000C050 = 0;
    *algn_10000C058 = 0;
    v16 = sub_1000040E8(1, dword_10000C000, dword_10000C004, -1, 1, &unk_10000C050);
    dword_10000C008 = v16;
    if (v16 == -1)
    {
      v21 = "cannot get client listen socket (%m)";
      goto LABEL_29;
    }

    if (listen(v16, 5))
    {
      v21 = "cannot listen on client socket (%m)";
      goto LABEL_29;
    }

    if (!dword_10000C060)
    {
      return 0;
    }

    v17 = PFUserCreate();
    if (v17)
    {
      if (sub_100000920(v17, 1u, (a2 + 40), (a3 + 40), word_10000C052, &v31) != -1)
      {
        v18 = malloc_type_malloc(0x10uLL, 0x1020040EDED9539uLL);
        v19 = v31;
        if (v18)
        {
          *v18 = qword_10000C078;
          v18[1] = v19;
          qword_10000C078 = v18;
          PFUserRelease();
          return 0;
        }

LABEL_24:
        PFUserDeleteRule();
      }

LABEL_25:
      PFUserRelease();
    }

LABEL_26:
    v21 = "pf operation failed (%m)";
LABEL_29:
    v22 = 5;
LABEL_30:
    syslog(v22, v21);
    sub_10000176C(71, v23, v24, v25, v26, v27, v28, v29);
  }

  qword_10000C040 = 0;
  *algn_10000C048 = 0;
  v12 = sub_1000040E8(1, dword_10000C000, dword_10000C004, -1, 1, &qword_10000C040);
  dword_10000C010 = v12;
  if (v12 == -1)
  {
    v21 = "server socket bind() failed (%m)";
LABEL_23:
    v22 = 6;
    goto LABEL_30;
  }

  if (listen(v12, 5))
  {
    v21 = "server socket listen() failed (%m)";
    goto LABEL_23;
  }

  if (!dword_10000C060)
  {
    v13 = PFUserCreate();
    if (v13)
    {
      if (sub_100000C5C(v13, &xmmword_10000C064, (a3 + 40), bswap32(WORD1(qword_10000C040)) >> 16, (a2 + 40), bswap32(word_10000C052) >> 16, &v31) != -1)
      {
        v14 = malloc_type_malloc(0x10uLL, 0x1020040EDED9539uLL);
        v15 = v31;
        if (v14)
        {
          *v14 = qword_10000C078;
          v14[1] = v15;
          qword_10000C078 = v14;
          PFUserRelease();
          qword_10000CCB8 = 0;
          return 0;
        }

        goto LABEL_24;
      }

      goto LABEL_25;
    }

    goto LABEL_26;
  }

  return 0;
}

uint64_t sub_1000016EC()
{
  result = dword_10000C00C;
  if ((dword_10000C00C & 0x80000000) == 0)
  {
    shutdown(dword_10000C00C, 2);
    result = close(dword_10000C00C);
    dword_10000C00C = -1;
  }

  return result;
}

uint64_t sub_10000172C()
{
  result = dword_10000C014;
  if ((dword_10000C014 & 0x80000000) == 0)
  {
    shutdown(dword_10000C014, 2);
    result = close(dword_10000C014);
    dword_10000C014 = -1;
  }

  return result;
}

void sub_10000176C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a1;
  sub_1000035EC(a1, a2, a3, a4, a5, a6, a7, a8);
  sub_100003AB4(1, "exit: %d", v9, v10, v11, v12, v13, v14, v8);
  exit(v8);
}

void sub_1000017A4(uint64_t a1, uint64_t a2)
{
  sub_100001308(*(a1 + 32), 1);
  v4 = *(a1 + 32);
  if (strlen(v4) >= 0x201)
  {
    syslog(5, "excessively long control command");
    goto LABEL_69;
  }

  if (dword_10000C080 && !strncasecmp(v4, "user ", 5uLL))
  {
    if (!strcasecmp(v4 + 5, "ftp\r\n") || !strcasecmp(v4 + 5, "anonymous\r\n"))
    {
      goto LABEL_44;
    }

    strcpy(__str, "500 Only anonymous FTP is allowed\r\n");
    v48 = strlen(__str);
    v49 = 0;
    while (1)
    {
      v50 = send(*a1, &__str[v49], v48 - v49, 0);
      if (v50 == -1)
      {
        if (*__error() != 35 && *__error() != 4)
        {
          return;
        }
      }

      else
      {
        v49 += v50;
      }

      if ((v49 & 0x80000000) != 0 || v48 <= v49)
      {
        return;
      }
    }
  }

  if (strncasecmp(v4, "eprt ", 5uLL))
  {
    if (!dword_10000C088 && !strncasecmp(v4, "epsv", 4uLL))
    {
      strcpy(__str, "500 EPSV command not understood\r\n");
      sub_100003AB4(1, "to client (modified): %s", v5, v6, v7, v8, v9, v10, __str);
      v63 = strlen(__str);
      v64 = 0;
      while (1)
      {
        v65 = send(*a1, &__str[v64], v63 - v64, 0);
        if (v65 == -1)
        {
          if (*__error() != 35 && *__error() != 4)
          {
            return;
          }
        }

        else
        {
          v64 += v65;
        }

        if ((v64 & 0x80000000) != 0 || v63 <= v64)
        {
          return;
        }
      }
    }

    if (strncasecmp(v4, "port ", 5uLL))
    {
      goto LABEL_44;
    }

    sub_100003AB4(1, "Got a PORT command", v11, v12, v13, v14, v15, v16, v106);
    v17 = *(a1 + 32);
    v109.ai_flags = 0;
    if (sscanf((v17 + 5), "%u,%u,%u,%u,%u,%u", &v109, &v109.ai_family, &v109.ai_socktype, &v109.ai_protocol, &v109.ai_addrlen, &v109.ai_addrlen + 1) == 6)
    {
      for (i = 0; i != 24; i += 4)
      {
        if (*(&v109.ai_flags + i) >= 0x100u)
        {
          goto LABEL_68;
        }
      }

      byte_10000C051 = 2;
      dword_10000C054 = bswap32((v109.ai_family << 16) | (v109.ai_flags << 24) | (v109.ai_socktype << 8) | v109.ai_protocol);
      word_10000C052 = bswap32(*(&v109.ai_addrlen + 1) | (v109.ai_addrlen << 8)) >> 16;
      sub_100003AB4(1, "client wants us to use %u.%u.%u.%u:%u", v18, v19, v20, v21, v22, v23, v109.ai_flags);
      sub_100001404(1, a1, a2);
      dword_10000C084 = 1;
      v25.s_addr = *(a2 + 44);
      v26 = inet_ntoa(v25);
      sub_100003AB4(1, "we want server to use %s:%u", v27, v28, v29, v30, v31, v32, v26);
      v4 = __str;
      snprintf(__str, 0x64uLL, "PORT %u,%u,%u,%u,%u,%u\r\n", *(a2 + 44), *(a2 + 45), *(a2 + 46), *(a2 + 47), BYTE2(qword_10000C040), BYTE3(qword_10000C040));
      sub_100003AB4(1, "to server (modified): %s", v33, v34, v35, v36, v37, v38, __str);
      goto LABEL_45;
    }

LABEL_68:
    v91 = *(a1 + 32);
    syslog(6, "malformed PORT command (%s)");
LABEL_69:
    sub_10000176C(65, v92, v93, v94, v95, v96, v97, v98);
  }

  memset(&v109, 0, sizeof(v109));
  v107 = 0;
  v39 = strdup(v4 + 5);
  if (!v39)
  {
    syslog(3, "insufficient memory");
    sub_10000176C(69, v99, v100, v101, v102, v103, v104, v105);
  }

  v40 = v39;
  v41 = 0;
  v43 = v39 + 1;
  v42 = *v39;
  v111 = 0;
  v112 = 0;
  v110 = 0;
  do
  {
    v44 = strchr(v43, v42);
    if (!v44 || *v44 != v42)
    {
      __endptr = v43;
      goto LABEL_33;
    }

    *v44 = 0;
    v45 = v44 + 1;
    (&v110)[v41++] = v43;
    v43 = v45;
  }

  while (v41 != 3);
  __endptr = v45;
  v46 = v110;
  v47 = strtoul(v110, &__endptr, 10);
  if (!*v46 || *__endptr)
  {
    if (v47 == 2)
    {
LABEL_21:
      v4 = 0;
      strcpy(__str, "522 Protocol not supported, use (1)\r\n");
      goto LABEL_34;
    }

    goto LABEL_67;
  }

  memset(&v109, 0, sizeof(v109));
  if (v47 == 2)
  {
    goto LABEL_21;
  }

  if (v47 != 1)
  {
LABEL_67:
    v4 = 0;
    strcpy(__str, "501 Protocol not supported\r\n");
    goto LABEL_34;
  }

  v109.ai_socktype = 1;
  *&v109.ai_flags = 0x200000004;
  if (getaddrinfo(v111, v112, &v109, &v107) || v107->ai_next || v107->ai_addrlen > 0x10)
  {
LABEL_33:
    v4 = 0;
    strcpy(__str, "500 Invalid argument; rejected\r\n");
    goto LABEL_34;
  }

  ai_addr = v107->ai_addr;
  __memcpy_chk();
  v67.s_addr = dword_10000C054;
  v68 = inet_ntoa(v67);
  sub_100003AB4(1, "client wants us to use %s:%u", v69, v70, v71, v72, v73, v74, v68);
  sub_100001404(1, a1, a2);
  dword_10000C084 = 3;
  v75.s_addr = *(a2 + 44);
  v76 = inet_ntoa(v75);
  sub_100003AB4(1, "we want server to use %s:%u", v77, v78, v79, v80, v81, v82, v76);
  v83.s_addr = *(a2 + 44);
  v84 = inet_ntoa(v83);
  v4 = __str;
  snprintf(__str, 0x64uLL, "EPRT |%d|%s|%u|\r\n", 1, v84, bswap32(WORD1(qword_10000C040)) >> 16);
  sub_100003AB4(1, "to server (modified): %s", v85, v86, v87, v88, v89, v90, __str);
LABEL_34:
  free(v40);
  if (v107)
  {
    freeaddrinfo(v107);
  }

  if (!v4)
  {
    sub_100003AB4(1, "to client (modified): %s", v51, v52, v53, v54, v55, v56, __str);
    v57 = strlen(__str);
    v58 = 0;
    do
    {
      v59 = send(*a1, &__str[v58], v57 - v58, 0);
      if (v59 == -1)
      {
        if (*__error() != 35 && *__error() != 4)
        {
          break;
        }
      }

      else
      {
        v58 += v59;
      }
    }

    while ((v58 & 0x80000000) == 0 && v57 > v58);
  }

LABEL_44:
  if (v4)
  {
LABEL_45:
    v60 = strlen(v4);
    v61 = 0;
    do
    {
      v62 = send(*a2, &v4[v61], v60 - v61, 0);
      if (v62 == -1)
      {
        if (*__error() != 35 && *__error() != 4)
        {
          return;
        }
      }

      else
      {
        v61 += v62;
      }
    }

    while ((v61 & 0x80000000) == 0 && v60 > v61);
  }
}

ssize_t sub_100001ED8(uint64_t a1, uint64_t a2)
{
  sub_100001308(*(a1 + 32), 0);
  v4 = *(a1 + 32);
  if (strlen(v4) >= 0x401)
  {
    v17 = "long FTP control reply";
LABEL_46:
    v67 = 5;
LABEL_44:
    syslog(v67, v17, v75);
    sub_10000176C(65, v68, v69, v70, v71, v72, v73, v74);
  }

  __endptr = 0;
  v11 = strtol(v4, &__endptr, 10);
  v12 = *(a1 + 32);
  v13 = *v12;
  if ((v13 & 0x80) != 0)
  {
    v14 = __maskrune(v13, 0x4000uLL);
    v12 = *(a1 + 32);
    LODWORD(v13) = *v12;
  }

  else
  {
    v14 = _DefaultRuneLocale.__runetype[v13] & 0x4000;
  }

  if (v14)
  {
    v15 = 0;
  }

  else
  {
    v15 = v11;
  }

  if (!v13 || (v16 = *__endptr, v16 != 32) && v16 != 45)
  {
    if (byte_10000CCC0)
    {
      goto LABEL_15;
    }

    v17 = "malformed control reply";
    goto LABEL_43;
  }

  if ((v15 - 1000) <= 0xFFFFFFFFFFFFFC18)
  {
    if (byte_10000CCC0)
    {
      goto LABEL_15;
    }

    v75 = v15;
    v17 = "invalid server reply code %ld";
    goto LABEL_43;
  }

  byte_10000CCC0 = v16 == 45;
  if (v15 != 227 || dword_10000C088 != 0)
  {
    if (dword_10000C088)
    {
      if (v15 == 234)
      {
        sub_100003AB4(1, "Got 'authentication exchange complete' reply", v5, v6, v7, v8, v9, v10, v75);
        sub_100003AB4(1, "{%s}", v22, v23, v24, v25, v26, v27, *(a1 + 32));
        dword_10000C084 = 5;
        v12 = *(a1 + 32);
        if (fcntl(*a2, 4, 4) == -1 || fcntl(*a1, 4, 4) == -1)
        {
          syslog(3, "fcntl F_SETFL O_NONBLOCK error");
          sub_10000176C(71, v28, v29, v30, v31, v32, v33, v34);
        }
      }
    }

    goto LABEL_15;
  }

  sub_100003AB4(1, "Got a PASV reply", v5, v6, v7, v8, v9, v10, v75);
  sub_100003AB4(1, "{%s}", v35, v36, v37, v38, v39, v40, *(a1 + 32));
  v41 = *(a1 + 32);
  v42 = strchr(v41, 40);
  if (!v42)
  {
    v42 = strrchr(v41, 32);
    if (!v42)
    {
      v17 = "malformed 227 reply";
      goto LABEL_46;
    }
  }

  v77 = 0;
  if (sscanf(v42 + 1, "%u,%u,%u,%u,%u,%u", &v77, &v78, &v79, &v80, &v81, &v82) != 6)
  {
    v75 = *(a2 + 32);
    v17 = "malformed PASV reply (%s)";
    goto LABEL_43;
  }

  for (i = 0; i != 24; i += 4)
  {
    if (*(&v77 + i) >= 0x100)
    {
      v75 = *(a2 + 32);
      v17 = "malformed PASV reply(%s)";
LABEL_43:
      v67 = 6;
      goto LABEL_44;
    }
  }

  BYTE1(qword_10000C040) = 2;
  v44.s_addr = bswap32((v78 << 16) | (v77 << 24) | (v79 << 8) | v80);
  HIDWORD(qword_10000C040) = v44;
  WORD1(qword_10000C040) = bswap32(v82 | (v81 << 8)) >> 16;
  v45 = inet_ntoa(v44);
  sub_100003AB4(1, "server wants us to use %s:%u", v46, v47, v48, v49, v50, v51, v45);
  sub_100001404(0, a2, a1);
  dword_10000C084 = 2;
  if (dword_10000C060)
  {
    v52 = &unk_10000C090;
  }

  else
  {
    v52 = (a1 + 44);
  }

  v53.s_addr = *v52;
  v54 = inet_ntoa(v53);
  sub_100003AB4(1, "we want client to use %s:%u", v55, v56, v57, v58, v59, v60, v54);
  v12 = __str;
  snprintf(__str, 0x64uLL, "227 Entering Passive Mode (%u,%u,%u,%u,%u,%u)\r\n", *v52, v52[1], v52[2], v52[3], word_10000C052, HIBYTE(word_10000C052));
  sub_100003AB4(1, "to client (modified): %s", v61, v62, v63, v64, v65, v66, __str);
LABEL_15:
  v18 = strlen(v12);
  v19 = 0;
  while (2)
  {
    result = send(*a2, &v12[v19], v18 - v19, 0);
    if (result != -1)
    {
      v19 += result;
      goto LABEL_20;
    }

    result = __error();
    if (*result == 35 || (result = __error(), *result == 4))
    {
LABEL_20:
      if ((v19 & 0x80000000) != 0 || v18 <= v19)
      {
        return result;
      }

      continue;
    }

    return result;
  }
}

uint64_t sub_10000233C(uint64_t a1)
{
  v1 = qword_10000C078;
  if (!qword_10000C078)
  {
    return 0;
  }

  while (v1[1] != a1)
  {
    v1 = *v1;
    if (!v1)
    {
      return 0;
    }
  }

  return 1;
}

void start(int a1, char *const *a2)
{
  v174 = 0;
  memset(v173, 0, sizeof(v173));
  memset(v172, 0, sizeof(v172));
  v171 = 0;
  memset(v170, 0, sizeof(v170));
  v169 = 0u;
  memset(v168, 0, sizeof(v168));
  v167.__sigaction_u.__sa_handler = 0;
  *&v167.sa_mask = 0;
  v166.__sigaction_u.__sa_handler = 0;
  *&v166.sa_mask = 0;
  v164 = 1;
  v165 = 0;
  v162 = 0;
  v163 = 0;
  errorbuf = 0;
  if (sandbox_init("ftp-proxy-embedded", 1uLL, &errorbuf) == -1)
  {
    fprintf(__stderrp, "sandbox_init: %s\n", errorbuf);
    sandbox_free_error(errorbuf);
    exit(-1);
  }

  v4 = getopt(a1, a2, "a:D:g:m:M:R:S:t:u:AnpVwr");
  if (v4 == -1)
  {
    goto LABEL_4;
  }

  v5 = 0;
  v6 = 0;
  while (1)
  {
    __endptr[0].tv_sec = 0;
    if (v4 > 102)
    {
      if (v4 <= 111)
      {
        switch(v4)
        {
          case 'g':
            qword_10000C0A0 = optarg;
            break;
          case 'm':
            v7 = strtol(optarg, __endptr, 10);
            dword_10000C000 = v7;
            goto LABEL_50;
          case 'n':
            dword_10000C088 = 1;
            break;
          default:
            goto LABEL_4;
        }
      }

      else if (v4 > 115)
      {
        if (v4 == 116)
        {
          v13 = strtol(optarg, __endptr, 10);
          if (!*optarg)
          {
            goto LABEL_4;
          }

          v5 = v13;
LABEL_47:
          if (*__endptr[0].tv_sec)
          {
            goto LABEL_4;
          }

          goto LABEL_57;
        }

        if (v4 != 117)
        {
          goto LABEL_4;
        }

        off_10000C018 = optarg;
      }

      else if (v4 == 112)
      {
        v6 = 1;
      }

      else
      {
        if (v4 != 114)
        {
          goto LABEL_4;
        }

        dword_10000CCB4 = 1;
      }
    }

    else
    {
      if (v4 > 81)
      {
        if (v4 > 85)
        {
          if (v4 == 86)
          {
            dword_10000C028 = 1;
          }

          else
          {
            if (v4 != 97 || !*optarg)
            {
              goto LABEL_4;
            }

            dword_10000C020 = inet_addr(optarg);
            if (dword_10000C020 == -1)
            {
              syslog(5, "%s: invalid address", optarg);
              sub_100003568();
            }
          }
        }

        else if (v4 == 82)
        {
          if (!*optarg)
          {
            goto LABEL_4;
          }

          v8 = strdup(optarg);
          if (!v8)
          {
            syslog(5, "Insufficient memory (malloc failed)");
            goto LABEL_76;
          }

          v9 = v8;
          xmmword_10000C064 = 0x210uLL;
          v10 = strchr(v8, 58);
          if (v10)
          {
            v11 = v10;
            v12 = strtol(v10 + 1, __endptr, 10);
            if (*__endptr[0].tv_sec || (v12 - 0x10000) <= 0xFFFFFFFFFFFF0000)
            {
              goto LABEL_4;
            }

            WORD1(xmmword_10000C064) = bswap32(v12) >> 16;
            *v11 = 0;
          }

          else
          {
            WORD1(xmmword_10000C064) = 5376;
          }

          DWORD1(xmmword_10000C064) = inet_addr(v9);
          if (DWORD1(xmmword_10000C064) == -1)
          {
            goto LABEL_4;
          }

          free(v9);
          dword_10000C060 = 1;
        }

        else if (v4 != 83 || !inet_aton(optarg, &dword_10000C0A8))
        {
          goto LABEL_4;
        }

        goto LABEL_57;
      }

      if (v4 != 65)
      {
        if (v4 != 68)
        {
          if (v4 != 77)
          {
            goto LABEL_4;
          }

          v7 = strtol(optarg, __endptr, 10);
          dword_10000C004 = v7;
LABEL_50:
          if (!*optarg || *__endptr[0].tv_sec || v7 >= 0x10000)
          {
            goto LABEL_4;
          }

          goto LABEL_57;
        }

        dword_10000CCB0 = strtol(optarg, __endptr, 10);
        if (!*optarg)
        {
          goto LABEL_4;
        }

        goto LABEL_47;
      }

      dword_10000C080 = 1;
    }

LABEL_57:
    v4 = getopt(a1, a2, "a:D:g:m:M:R:S:t:u:AnpVwr");
    if (v4 == -1)
    {
      if (dword_10000C004 >= dword_10000C000 && v6)
      {
        openlog(__progname, 9, 24);
        setlinebuf(__stdoutp);
        setlinebuf(__stderrp);
        memset(v172, 0, sizeof(v172));
        memset(v173, 0, sizeof(v173));
        v174 = 0;
        memset(v168, 0, sizeof(v168));
        v169 = 0u;
        memset(v170, 0, sizeof(v170));
        v171 = 0;
        if (sub_100003AF4(0, &xmmword_10000C064, &v173[0].sa_data[6], &unk_10000C08C) == -1)
        {
          sub_10000176C(76, v14, v15, v16, v17, v18, v19, v20);
        }

        if (dword_10000CCB4)
        {
          v21 = 0;
        }

        else
        {
          v21 = 10;
        }

        v22 = getnameinfo(&v173[0].sa_data[6], 0x10u, byte_10000C0AC, 0x401u, 0, 0, v21);
        if (v22 <= 8 && ((1 << v22) & 0x105) != 0)
        {
          v29 = getnameinfo(&xmmword_10000C064, 0x10u, byte_10000C4AD, 0x401u, 0, 0, v21);
          if (v29 <= 8 && ((1 << v29) & 0x105) != 0)
          {
            v172[0] = 0;
            syslog(6, "accepted connection from %s:%u to %s:%u", byte_10000C0AC, bswap32(*&v173[0].sa_data[8]) >> 16, byte_10000C4AD, bswap32(WORD1(xmmword_10000C064)) >> 16);
            v168[0] = sub_1000040E8(1, dword_10000C000, dword_10000C004, -1, 1, &v169 + 8);
            if (connect(v168[0], &xmmword_10000C064, 0x10u))
            {
              syslog(6, "cannot connect to %s:%u (%m)");
              goto LABEL_78;
            }

            v165 = 16;
            getsockname(v168[0], (&v169 + 8), &v165);
            v30 = getnameinfo((&v169 + 8), 0x10u, byte_10000C8AE, 0x401u, 0, 0, v21);
            if (v30 <= 8 && ((1 << v30) & 0x105) != 0)
            {
              sub_100003AB4(1, "local socket is %s:%u", v23, v24, v25, v26, v27, v28, byte_10000C8AE);
              v167.__sigaction_u.__sa_handler = 1;
              *&v167.sa_mask = 0x200000000;
              if (sigaction(13, &v167, &v166))
              {
                syslog(3, "sigaction() failed (%m)");
                goto LABEL_216;
              }

              v167.__sigaction_u.__sa_handler = sub_1000035BC;
              *&v167.sa_mask = 0;
              sigaction(2, &v167, 0);
              sigaction(15, &v167, 0);
              if (setsockopt(v172[0], 0xFFFF, 256, &v164, 4u) == -1)
              {
                syslog(5, "cannot set SO_OOBINLINE (%m)");
                goto LABEL_216;
              }

              v172[1] = 1024;
              *&v173[0].sa_len = malloc_type_malloc(0x400uLL, 0x84E86415uLL);
              v172[2] = 1024;
              v53 = malloc_type_malloc(0x400uLL, 0x817C1E62uLL);
              *&v172[3] = 0;
              LOBYTE(v174) = 1;
              *&v172[6] = v53;
              *&v173[2].sa_data[6] = "client";
              HIDWORD(v174) = 0;
              *&v173[1].sa_data[6] = *&v173[0].sa_data[6];
              v168[1] = 1024;
              *&v169 = malloc_type_malloc(0x400uLL, 0x99F340EAuLL);
              v168[2] = 1024;
              *&v168[6] = malloc_type_malloc(0x400uLL, 0x57E3E601uLL);
              *&v168[3] = 0;
              LOBYTE(v171) = 1;
              *(&v170[1] + 1) = "server";
              HIDWORD(v171) = 1;
              *(v170 + 8) = xmmword_10000C064;
              if (!*&v168[6] || !*&v173[0].sa_len || !*&v172[6] || !v169)
              {
LABEL_214:
                syslog(5, "insufficient memory");
LABEL_76:
                sub_10000176C(69, v38, v39, v40, v41, v42, v43, v44);
              }

              v60 = v174;
              v61 = 1;
              while (2)
              {
                v62 = v172[0];
                if (v172[0] <= dword_10000C008)
                {
                  v62 = dword_10000C008;
                }

                if (v62 <= dword_10000C00C)
                {
                  v62 = dword_10000C00C;
                }

                if (v62 <= v168[0])
                {
                  v62 = v168[0];
                }

                if (v62 <= dword_10000C010)
                {
                  v62 = dword_10000C010;
                }

                if (v62 <= dword_10000C014)
                {
                  v62 = dword_10000C014;
                }

                v63 = v62 & ~(v62 >> 31);
                if (v60)
                {
                  v64 = "alive";
                }

                else
                {
                  v64 = "dead";
                }

                if (v61)
                {
                  v65 = "alive";
                }

                else
                {
                  v65 = "dead";
                }

                v160 = v65;
                sub_100003AB4(3, "client is %s; server is %s", v54, v55, v56, v57, v58, v59, v64);
                v66 = (v63 + 1);
                if (((v63 + 1) & 0x1F) != 0)
                {
                  v67 = (v66 >> 5) + 1;
                }

                else
                {
                  v67 = v66 >> 5;
                }

                v68 = malloc_type_calloc(v67, 4uLL, 0x100004052888210uLL);
                if (!v68)
                {
                  goto LABEL_214;
                }

                v69 = v68;
                if (dword_10000C084 == 5)
                {
                  if (!v174)
                  {
                    goto LABEL_122;
                  }

                  v70 = v172[0];
                  if (__darwin_check_fd_set_overflow(v172[0], v68, 0))
                  {
                    *(v69->fds_bits + ((v70 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v70;
                  }

                  v77 = "ready";
                  if (!BYTE2(v174))
                  {
                    v77 = "waiting";
                  }

                  sub_100003AB4(3, "client is %s", v71, v72, v73, v74, v75, v76, v77);
                  if (BYTE2(v174))
                  {
                    if (sub_100003E6C() < 1)
                    {
                      v78 = 1;
                    }

                    else
                    {
                      v78 = 0;
                      BYTE2(v174) = 0;
                    }
                  }

                  else
                  {
LABEL_122:
                    v78 = 0;
                  }

                  if (v171)
                  {
                    v85 = v168[0];
                    if (__darwin_check_fd_set_overflow(v168[0], v69, 0))
                    {
                      *(v69->fds_bits + ((v85 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v85;
                    }

                    v92 = "ready";
                    if (!BYTE2(v171))
                    {
                      v92 = "waiting";
                    }

                    sub_100003AB4(3, "server is %s", v86, v87, v88, v89, v90, v91, v92);
                    if (BYTE2(v171))
                    {
                      if (sub_100003E6C() < 1)
                      {
                        goto LABEL_218;
                      }

                      BYTE2(v171) = 0;
                    }
                  }

                  if (v78)
                  {
LABEL_218:
                    close(v172[0]);
                    close(v168[0]);
                    free(v69);
LABEL_219:
                    if (dword_10000C028)
                    {
                      syslog(6, "session ended");
                    }

LABEL_221:
                    sub_10000176C(0, v156, v54, v55, v56, v57, v58, v59);
                  }

LABEL_132:
                  v162 = v5;
                  LODWORD(v163) = 0;
                  for (i = v5; ; i = v162)
                  {
                    v94 = i ? &v162 : 0;
                    v95 = select(v66, v69, 0, 0, v94);
                    if (v95 != -1)
                    {
                      break;
                    }

                    if (*__error() != 4 && *__error() != 35)
                    {
                      syslog(5, "select() failed (%m)");
                      goto LABEL_216;
                    }
                  }

                  if (!v95)
                  {
                    __endptr[0].tv_sec = 0;
                    v96 = PFUserCreate();
                    if (!v96 || (v103 = sub_100000798(v96, __endptr, v97, v98, v99, v100, v101, v102), PFUserRelease(), v103 < 0) || __endptr[0].tv_sec == qword_10000CCB8)
                    {
                      syslog(6, "timeout: no data for %ld seconds");
                      goto LABEL_221;
                    }

                    sub_100003AB4(3, "transfer: server to client %llu packets", v104, v105, v106, v107, v108, v109, __endptr[0].tv_sec);
                    qword_10000CCB8 = __endptr[0].tv_sec;
                  }

                  v110 = dword_10000C00C;
                  if (dword_10000C00C & 0x80000000) == 0 && __darwin_check_fd_set_overflow(dword_10000C00C, v69, 0) && ((*(v69->fds_bits + ((v110 >> 3) & 0x1FFFFFFC)) >> v110))
                  {
                    sub_100003AB4(3, "transfer: client to server", v111, v112, v113, v114, v115, v116, v158);
                    v117 = sub_100003E6C();
                    if (v117 <= 0)
                    {
                      sub_1000016EC();
                      sub_10000172C();
                      sub_100001044();
                    }

                    else
                    {
                      LODWORD(qword_10000C038) = qword_10000C038 + v117;
                    }
                  }

                  v130 = dword_10000C014;
                  if (dword_10000C014 & 0x80000000) == 0 && __darwin_check_fd_set_overflow(dword_10000C014, v69, 0) && ((*(v69->fds_bits + ((v130 >> 3) & 0x1FFFFFFC)) >> v130))
                  {
                    sub_100003AB4(3, "transfer: server to client", v131, v132, v133, v134, v135, v136, v158);
                    v137 = sub_100003E6C();
                    if (v137 <= 0)
                    {
                      sub_1000016EC();
                      sub_10000172C();
                      sub_100001044();
                    }

                    else
                    {
                      HIDWORD(qword_10000C038) += v137;
                    }
                  }

                  v138 = dword_10000C010;
                  if (dword_10000C010 & 0x80000000) == 0 && __darwin_check_fd_set_overflow(dword_10000C010, v69, 0) && ((*(v69->fds_bits + ((v138 >> 3) & 0x1FFFFFFC)) >> v138))
                  {
                    *&v176.sa_len = 0;
                    *&v176.sa_data[6] = 0;
                    sub_100003AB4(2, "server listen socket ready", v139, v140, v141, v142, v143, v144, v158);
                    sub_10000172C();
                    sub_1000016EC();
                    v175 = 16;
                    dword_10000C014 = accept(dword_10000C010, &v176, &v175);
                    if (dword_10000C014 < 0)
                    {
                      goto LABEL_222;
                    }

                    close(dword_10000C010);
                    dword_10000C010 = -1;
                    if (getuid())
                    {
                      *&v176.sa_data[2] = dword_10000C0A8;
                      v145 = sub_1000040E8(1, dword_10000C000, dword_10000C004, -1, 1, &v176);
                      dword_10000C00C = v145;
                      if (v145 < 0)
                      {
                        goto LABEL_223;
                      }
                    }

                    else
                    {
                      dword_10000C00C = socket(2, 1, 0);
                      v175 = 1;
                      v176.sa_family = 2;
                      *&v176.sa_data[2] = dword_10000C0A8;
                      *v176.sa_data = 5120;
                      if (setsockopt(dword_10000C00C, 0xFFFF, 4, &v175, 4u) == -1)
                      {
                        syslog(5, "setsockopt() failed (%m)");
                        goto LABEL_216;
                      }

                      if (bind(dword_10000C00C, &v176, 0x10u) == -1)
                      {
                        syslog(5, "data channel bind() failed (%m)");
LABEL_216:
                        sub_10000176C(71, v31, v32, v33, v34, v35, v36, v37);
                      }

                      v145 = dword_10000C00C;
                    }

                    if (connect(v145, &unk_10000C050, 0x10u))
                    {
                      syslog(6, "cannot connect data channel (%m)");
                      goto LABEL_78;
                    }

                    qword_10000C038 = 0;
                    __endptr[0].tv_sec = 0;
                    *&__endptr[0].tv_usec = 0;
                    gettimeofday(__endptr, 0);
                    *&qword_10000C030 = __endptr[0].tv_usec / 1000000.0 + __endptr[0].tv_sec;
                  }

                  v146 = dword_10000C008;
                  if (dword_10000C008 & 0x80000000) == 0 && __darwin_check_fd_set_overflow(dword_10000C008, v69, 0) && ((*(v69->fds_bits + ((v146 >> 3) & 0x1FFFFFFC)) >> v146))
                  {
                    *&v176.sa_len = 0;
                    *&v176.sa_data[6] = 0;
                    sub_100003AB4(2, "client listen socket ready", v147, v148, v149, v150, v151, v152, v158);
                    sub_10000172C();
                    sub_1000016EC();
                    v175 = 16;
                    dword_10000C00C = accept(dword_10000C008, &v176, &v175);
                    if (dword_10000C00C < 0)
                    {
LABEL_222:
                      syslog(5, "accept() failed (%m)");
                      goto LABEL_216;
                    }

                    close(dword_10000C008);
                    dword_10000C008 = -1;
                    *&v176.sa_len = 0;
                    *&v176.sa_data[6] = 0;
                    v153 = sub_1000040E8(1, dword_10000C000, dword_10000C004, -1, 1, &v176);
                    dword_10000C014 = v153;
                    if (v153 < 0)
                    {
LABEL_223:
                      syslog(5, "get_backchannel_socket() failed (%m)");
                      goto LABEL_216;
                    }

                    if (connect(v153, &qword_10000C040, 0x10u))
                    {
                      syslog(5, "connect() failed (%m)", v159, v160);
LABEL_78:
                      sub_10000176C(68, v45, v46, v47, v48, v49, v50, v51);
                    }

                    qword_10000C038 = 0;
                    __endptr[0].tv_sec = 0;
                    *&__endptr[0].tv_usec = 0;
                    gettimeofday(__endptr, 0);
                    *&qword_10000C030 = __endptr[0].tv_usec / 1000000.0 + __endptr[0].tv_sec;
                  }

                  if (v174)
                  {
                    v154 = v172[0];
                    if (__darwin_check_fd_set_overflow(v172[0], v69, 0))
                    {
                      if ((*(v69->fds_bits + ((v154 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) >> v154))
                      {
                        BYTE2(v174) = 1;
                      }
                    }
                  }

                  if (v171)
                  {
                    v155 = v168[0];
                    if (__darwin_check_fd_set_overflow(v168[0], v69, 0))
                    {
                      if ((*(v69->fds_bits + ((v155 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) >> v155))
                      {
                        BYTE2(v171) = 1;
                      }
                    }
                  }
                }

                else if (v174 && sub_100003874(v172, v168))
                {
                  sub_100003AB4(3, "client line buffer is %s", v79, v80, v81, v82, v83, v84, v173[0].sa_len);
                  if (**&v173[0].sa_len)
                  {
                    sub_1000017A4(v172, v168);
                  }
                }

                else
                {
                  if (!v171 || !sub_100003874(v168, v172))
                  {
                    if (v174)
                    {
                      v124 = v172[0];
                      if (__darwin_check_fd_set_overflow(v172[0], v69, 0))
                      {
                        *(v69->fds_bits + ((v124 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v124;
                      }

                      v125 = dword_10000C008;
                      if ((dword_10000C008 & 0x80000000) == 0 && __darwin_check_fd_set_overflow(dword_10000C008, v69, 0))
                      {
                        *(v69->fds_bits + ((v125 >> 3) & 0x1FFFFFFC)) |= 1 << v125;
                      }

                      v126 = dword_10000C00C;
                      if ((dword_10000C00C & 0x80000000) == 0 && __darwin_check_fd_set_overflow(dword_10000C00C, v69, 0))
                      {
                        *(v69->fds_bits + ((v126 >> 3) & 0x1FFFFFFC)) |= 1 << v126;
                      }
                    }

                    if (v171)
                    {
                      v127 = v168[0];
                      if (__darwin_check_fd_set_overflow(v168[0], v69, 0))
                      {
                        *(v69->fds_bits + ((v127 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v127;
                      }

                      v128 = dword_10000C010;
                      if ((dword_10000C010 & 0x80000000) == 0 && __darwin_check_fd_set_overflow(dword_10000C010, v69, 0))
                      {
                        *(v69->fds_bits + ((v128 >> 3) & 0x1FFFFFFC)) |= 1 << v128;
                      }

                      v129 = dword_10000C014;
                      if ((dword_10000C014 & 0x80000000) == 0 && __darwin_check_fd_set_overflow(dword_10000C014, v69, 0))
                      {
                        *(v69->fds_bits + ((v129 >> 3) & 0x1FFFFFFC)) |= 1 << v129;
                      }
                    }

                    goto LABEL_132;
                  }

                  sub_100003AB4(3, "server line buffer is %s", v118, v119, v120, v121, v122, v123, v169);
                  if (*v169)
                  {
                    sub_100001ED8(v168, v172);
                  }
                }

                free(v69);
                if (BYTE1(v174))
                {
                  shutdown(v168[0], 1);
                  shutdown(v172[0], 0);
                  LOWORD(v174) = 0;
                }

                if (BYTE1(v171))
                {
                  shutdown(v172[0], 1);
                  shutdown(v168[0], 0);
                  v61 = 0;
                  LOWORD(v171) = 0;
                }

                else
                {
                  v61 = v171;
                }

                v60 = v174;
                if (!(v174 | v61))
                {
                  goto LABEL_219;
                }

                continue;
              }
            }

            v52 = "name resolution failure (local)";
          }

          else
          {
            v52 = "name resolution failure (server)";
          }
        }

        else
        {
          v52 = "name resolution failure (client)";
        }

        sub_100003AB4(2, v52, v23, v24, v25, v26, v27, v28, v157);
        goto LABEL_216;
      }

LABEL_4:
      sub_100003568();
    }
  }
}

void sub_100003568()
{
  syslog(5, "usage: %s -i [-AnrVw] [-a address] [-D debuglevel] [-g group] [-M maxport] [-m minport] [-R address[:port]] [-S address] [-t timeout] [-u user]", __progname);
  syslog(5, "usage: %s -p [-AnrVw] [-a address] [-D debuglevel] [-g group] [-M maxport] [-m minport] [-R address[:port]] [-S address] [-t timeout] [-u user]", __progname);
  sub_10000176C(64, v0, v1, v2, v3, v4, v5, v6);
}

void sub_1000035BC(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_100003AB4(1, "exiting on signal %d\n", a3, a4, a5, a6, a7, a8, a1);
  sub_1000035EC(v8, v9, v10, v11, v12, v13, v14, v15);
  sub_10000176C(0, v16, v17, v18, v19, v20, v21, v22);
}

void sub_1000035EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_100003AB4(1, "pf: remove rulesets", a3, a4, a5, a6, a7, a8, v12);
  if (qword_10000C078 && PFUserCreate())
  {
    v8 = qword_10000C078;
    if (qword_10000C078)
    {
      do
      {
        v9 = *v8;
        if (v8[1])
        {
          PFUserDeleteRule();
        }

        v10 = qword_10000C078;
        if (qword_10000C078 == v8)
        {
          v11 = &qword_10000C078;
        }

        else
        {
          do
          {
            v11 = v10;
            v10 = *v10;
          }

          while (v10 != v8);
        }

        *v11 = *v10;
        free(v8);
        v8 = v9;
      }

      while (v9);
    }

    PFUserRelease();
  }
}

uint64_t sub_1000036E4(uint64_t a1)
{
  if (!*(a1 + 82) || *(a1 + 81))
  {
    return 0;
  }

  v3 = *(a1 + 12);
  v4 = *(a1 + 16);
  if (v3 <= v4)
  {
    if (v3 != v4)
    {
      syslog(3, "next_byte(%d) > io_buffer_len(%d)", *(a1 + 16), v3);
      exit(71);
    }

    v5 = 0;
  }

  else
  {
    v5 = v3 - v4;
    memmove(*(a1 + 24), (*(a1 + 24) + v4), v3 - v4);
  }

  *(a1 + 12) = v5;
  *(a1 + 16) = 0;
  v6 = *(a1 + 8);
  v7 = v6 - v5;
  if (v6 - v5 <= 128)
  {
    *(a1 + 8) = v6 + 128;
    v8 = malloc_type_realloc(*(a1 + 24), v6 + 128, 0xA36AC499uLL);
    if (!v8)
    {
      syslog(6, "Insufficient memory");
      exit(69);
    }

    *(a1 + 24) = v8;
    v5 = *(a1 + 12);
    v7 = *(a1 + 8) - v5;
  }

  v9 = v7 - 1;
  while (1)
  {
    v10 = read(*a1, (*(a1 + 24) + v5), v9);
    *(a1 + 82) = 0;
    if (v10 != -1)
    {
      break;
    }

    if (*__error() != 35 && *__error() != 4)
    {
      if (*__error() != 54)
      {
        syslog(6, "read() failed on socket from %s (%m)", *(a1 + 72));
        exit(65);
      }

      goto LABEL_19;
    }

    v5 = *(a1 + 12);
  }

  if (v10)
  {
    *(a1 + 12) += v10;
    return 1;
  }

LABEL_19:
  result = 0;
  *(a1 + 81) = 1;
  return result;
}

uint64_t sub_100003874(uint64_t a1, int *a2)
{
  **(a1 + 32) = 0;
  v4 = *(a1 + 16);
  if (v4 == *(a1 + 12))
  {
    result = sub_1000036E4(a1);
    if (!result)
    {
      return result;
    }

    v4 = *(a1 + 16);
  }

  v6 = *(a1 + 24);
  v7 = *(a1 + 12);
  if (*(v6 + v4) == 255)
  {
    if (v7 - v4 <= 2)
    {
      result = sub_1000036E4(a1);
      if (!result)
      {
        return result;
      }

      v4 = *(a1 + 16);
      if (*(a1 + 12) - v4 < 3)
      {
        return 0;
      }

      v6 = *(a1 + 24);
    }

    v16 = v4 + 2;
    *(a1 + 16) = v16;
    v17 = *(v6 + v4 + 1);
    if ((v17 - 251) <= 3)
    {
      v18[0] = -1;
      v18[1] = v17;
      *(a1 + 16) = v4 + 3;
      v18[2] = *(v6 + v16);
      send(*a2, v18, 3uLL, a2[21]);
    }

    return 1;
  }

  v8 = v4;
  v9 = v4;
  if (v7 > v4)
  {
    v10 = (v6 + v4);
    v9 = v4;
    while (1)
    {
      v12 = *v10++;
      v11 = v12;
      if (v12 == 10)
      {
        break;
      }

      if (!v11)
      {
        syslog(6, "got NUL byte from %s - bye!", *(a1 + 72));
        exit(65);
      }

      if (v7 == ++v9)
      {
        goto LABEL_12;
      }
    }
  }

  if (v9 != v7)
  {
    v13 = v9 - v4;
    v14 = *(a1 + 32);
    if (v9 - v4 > *(a1 + 4) - 5)
    {
      *(a1 + 4) = v13 + 256;
      v14 = malloc_type_realloc(v14, v13 + 256, 0xE1DE33AFuLL);
      if (!v14)
      {
        syslog(6, "Insufficient memory");
        exit(69);
      }

      *(a1 + 32) = v14;
      v4 = *(a1 + 16);
      v6 = *(a1 + 24);
      v8 = v4;
    }

    v15 = v9 - v4 + 1;
    memcpy(v14, (v6 + v8), v15);
    *(a1 + 16) += v15;
    *(*(a1 + 32) + v15) = 0;
    return 1;
  }

LABEL_12:

  return sub_1000036E4(a1);
}

void sub_100003AB4(int a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  if (dword_10000CCB0 >= a1)
  {
    vsyslog(7, a2, &a9);
  }
}

uint64_t sub_100003AF4(int a1, uint64_t a2, uint64_t a3, sockaddr *a4)
{
  v18 = 16;
  if (getsockname(a1, a4, &v18))
  {
    v8 = "getsockname() failed (%m)";
LABEL_5:
    v9 = 3;
    goto LABEL_6;
  }

  v18 = 16;
  if (getpeername(a1, a3, &v18))
  {
    v8 = "getpeername() failed (%m)";
    goto LABEL_5;
  }

  if (dword_10000C060)
  {
    return 0;
  }

  if (PFUserCreate())
  {
    v11 = xpc_dictionary_create(0, 0, 0);
    v12 = xpc_dictionary_create(0, 0, 0);
    v13 = xpc_dictionary_create(0, 0, 0);
    if (!v11 || !v12 || (v14 = v13) == 0)
    {
      syslog(6, "xpc_dictionary_create failed");
      PFUserRelease();
      return 0xFFFFFFFFLL;
    }

    xpc_dictionary_set_uint64(v11, kPFFamily, 2uLL);
    xpc_dictionary_set_uint64(v11, kPFProtocol, 6uLL);
    xpc_dictionary_set_uint64(v11, kPFDirection, 2uLL);
    *string = 0u;
    memset(v20, 0, sizeof(v20));
    inet_ntop(2, (a3 + 4), string, 0x2Eu);
    xpc_dictionary_set_string(v12, kPFSubAddress, string);
    xpc_dictionary_set_uint64(v12, kPFSubLowPort, bswap32(*(a3 + 2)) >> 16);
    xpc_dictionary_set_uint64(v12, kPFSubPortOperator, 0);
    *string = 0u;
    memset(v20, 0, sizeof(v20));
    inet_ntop(2, &a4->sa_data[2], string, 0x2Eu);
    xpc_dictionary_set_string(v14, kPFSubAddress, string);
    xpc_dictionary_set_uint64(v14, kPFSubLowPort, bswap32(*a4->sa_data) >> 16);
    xpc_dictionary_set_uint64(v14, kPFSubPortOperator, 0);
    xpc_dictionary_set_value(v11, kPFFrom, v12);
    xpc_dictionary_set_value(v11, kPFTo, v14);
    v15 = PFUserNATLook_S();
    xpc_release(v14);
    xpc_release(v12);
    xpc_release(v11);
    PFUserRelease();
    if (v15)
    {
      *a2 = 0;
      *(a2 + 8) = 0;
      value = xpc_dictionary_get_value(v15, kPFNATDest);
      *(a2 + 2) = bswap32(xpc_dictionary_get_uint64(value, kPFSubLowPort)) >> 16;
      v17 = xpc_dictionary_get_string(value, kPFSubAddress);
      inet_pton(2, v17, (a2 + 4));
      xpc_release(v15);
      result = 0;
      *a2 = 528;
      return result;
    }

    v8 = "PFUserNATLook failed";
  }

  else
  {
    v8 = "pf user create failed";
  }

  v9 = 6;
LABEL_6:
  syslog(v9, v8);
  return 0xFFFFFFFFLL;
}

uint64_t sub_100003E6C()
{
  v0 = __chkstk_darwin();
  v2 = v1;
  v4 = v3;
  v5 = v0;
  v31 = 0;
  if (ioctl(v3, 0x40047307uLL) < 0)
  {
    v15 = *__error();
    v29 = v5;
    v16 = "cannot ioctl(SIOCATMARK) socket from %s (%m)";
LABEL_16:
    v17 = 3;
LABEL_28:
    syslog(v17, v16, v29, v30);
    *__error() = v15;
    return 0xFFFFFFFFLL;
  }

  v6 = v31 != 0;
  while (1)
  {
    v7 = recv(v4, v32, 0x1000uLL, v6);
    v14 = v7;
    if (!v6 || v7 != -1)
    {
      break;
    }

    if (*__error() == 22)
    {
      v14 = recv(v4, v32, 0x1000uLL, 0);
      v6 = 0;
      break;
    }

    v6 = 1;
LABEL_10:
    if (*__error() != 35 && *__error() != 4)
    {
      v15 = *__error();
      v29 = v5;
      v30 = v6;
      v16 = "xfer_data (%s): failed (%m) with flags 0%o";
      goto LABEL_16;
    }
  }

  if (v14 == -1)
  {
    goto LABEL_10;
  }

  if (!v14)
  {
    sub_100003AB4(3, "EOF on read socket", v8, v9, v10, v11, v12, v13, &v31);
    return 0;
  }

  sub_100003AB4(3, "got %d bytes from socket", v8, v9, v10, v11, v12, v13, v14);
  if (v14 >= 1)
  {
    v18 = 0;
    LODWORD(v19) = 0;
    do
    {
      while (1)
      {
        v20 = send(v2, &v32[v18], v14 - v18, v6);
        if (v20 == -1)
        {
          break;
        }

        v27 = v20;
        if (v20)
        {
          sub_100003AB4(3, "wrote %d bytes to socket", v21, v22, v23, v24, v25, v26, v20);
          v19 = (v19 + v27);
          v18 = v19;
          if (v14 <= v19)
          {
            return v19;
          }
        }

        else
        {
          sub_100003AB4(3, "zero-length write", v21, v22, v23, v24, v25, v26, v29);
        }
      }
    }

    while (*__error() == 35 || *__error() == 4);
    v15 = *__error();
    v16 = "write failed (%m)";
    v17 = 6;
    goto LABEL_28;
  }

  return 0;
}

uint64_t sub_1000040E8(int a1, signed int a2, signed int a3, signed int a4, int a5, uint64_t a6)
{
  if (a5 == -1)
  {
    v6 = -1;
  }

  else
  {
    v6 = 1;
  }

  v7 = a3 - a2;
  if (a3 < a2)
  {
    goto LABEL_5;
  }

  v13 = a4;
  if (a4 == -1)
  {
    v13 = arc4random() % (v7 + 1) + a2;
  }

  if (v13 < a2 || v13 > a3)
  {
LABEL_5:
    v8 = __error();
    v9 = 22;
LABEL_6:
    *v8 = v9;
    return 0xFFFFFFFFLL;
  }

  *__s1 = 0;
  v58 = 0;
  v55 = 0;
  if (!_NETRBClientCreate())
  {
    v23 = strerror(12);
    sub_100003AB4(1, "_NETRBClientCreate: %s\n", v24, v25, v26, v27, v28, v29, v23);
    *__error() = 22;
    v52 = strerror(12);
    sub_100003AB4(1, "unable to attach to server: %s\n", v30, v31, v32, v33, v34, v35, v52);
    return 0xFFFFFFFFLL;
  }

  sub_100003AB4(1, "_NETRBClientCreate: %s\n", v17, v18, v19, v20, v21, v22, "OK");
  _NETRBClientGetExtName();
  sub_100003AB4(1, "unable to get external interface used by MIS", v36, v37, v38, v39, v40, v41, v53);
  _NETRBClientDestroy();
  if (v7 > 0x7FFFFFFE)
  {
LABEL_32:
    v8 = __error();
    v9 = 35;
    goto LABEL_6;
  }

  v42 = v7 + 1;
  while (1)
  {
    *&v56.sa_len = 0;
    *&v56.sa_data[6] = 0;
    v54 = 0;
    v43 = socket(2, a1, 0);
    v10 = v43;
    *&v56.sa_len = 512;
    *&v56.sa_data[6] = 0;
    v44 = dword_10000C020;
    if (dword_10000C020 == -1)
    {
      if (!a6)
      {
        goto LABEL_22;
      }

      v44 = *(a6 + 4);
    }

    *&v56.sa_data[2] = v44;
LABEL_22:
    v54 = 1;
    if (setsockopt(v43, 0xFFFF, 4, &v54, 4u) == -1)
    {
      sub_100003AB4(1, "failed to set SO_REUSEADDR %s(%d)", v45, v46, v47, v48, v49, v50, __s1);
      return 0xFFFFFFFFLL;
    }

    *v56.sa_data = bswap32(v13) >> 16;
    if (!bind(v10, &v56, 0x10u))
    {
      break;
    }

    if (*__error() != 48)
    {
      return 0xFFFFFFFFLL;
    }

    close(v10);
    if (v13 + v6 <= a3)
    {
      v51 = v13 + v6;
    }

    else
    {
      v51 = a2;
    }

    if (v13 + v6 >= a2)
    {
      v13 = v51;
    }

    else
    {
      v13 = a3;
    }

    if (--v42 <= 0)
    {
      goto LABEL_32;
    }
  }

  if (a6)
  {
    *a6 = v56;
  }

  return v10;
}