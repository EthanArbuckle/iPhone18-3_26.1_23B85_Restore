uint64_t sub_100000700()
{
  if (qword_100010070)
  {
    return os_log_with_args();
  }

  qword_100010070 = os_log_create("com.apple.rtadvd", "daemon");
  if (qword_100010070)
  {
    return os_log_with_args();
  }

  result = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
  if (result)
  {
    result = sub_100007D00(&v1);
    if ((result & 1) == 0)
    {
      return os_log_with_args();
    }
  }

  return result;
}

uint64_t sub_1000007AC(uint64_t a1, unsigned __int8 *a2)
{
  if (qword_1000107A0)
  {
    v2 = qword_1000107A0;
  }

  else
  {
    v2 = "/etc/rtadvd.conf";
  }

  qword_100010078 = v2;
  return sub_1000007D4(a1, a2, v2);
}

uint64_t sub_1000007D4(uint64_t a1, unsigned __int8 *a2, char *a3)
{
  qword_100010080 = a1;
  if (a3 && *a3)
  {
    qword_100010778 = a3;
    v5 = open(a3, 0);
    if (v5 < 0)
    {
      v6 = __error();
      strerror(*v6);
      sub_100000700();
      return 4294967294;
    }
  }

  else
  {
    v5 = 0;
  }

  v8 = 0;
  v9 = 0;
  v10 = 0;
  while (1)
  {
    v11 = v8;
    if (v9 == v10)
    {
      break;
    }

LABEL_10:
    v12 = v14[v9++];
    if (v12 == 10)
    {
      v8 = v11 - 1;
      if (v11 < 1 || *(a1 + v8) != 92)
      {
        goto LABEL_17;
      }
    }

    else if (v11 >= 1023)
    {
      write(2, "Remcap entry too long\n", 0x16uLL);
LABEL_17:
      *(a1 + v11) = 0;
      v13 = sub_100000970(a2);
      v8 = 0;
      if (v13)
      {
        close(v5);
        return sub_1000009F4();
      }
    }

    else
    {
      v8 = v11 + 1;
      *(a1 + v11) = v12;
    }
  }

  v10 = read(v5, v14, 0x400uLL);
  if (v10 > 0)
  {
    v9 = 0;
    goto LABEL_10;
  }

  close(v5);
  return 0;
}

uint64_t sub_100000970(unsigned __int8 *a1)
{
  v1 = qword_100010080;
  if (*qword_100010080 == 35)
  {
    return 0;
  }

  v4 = *a1;
  v2 = a1 + 1;
  v3 = v4;
LABEL_3:
  if (v3)
  {
    v5 = v2;
    v6 = v3;
    do
    {
      v7 = *v1;
      if (v7 != v6)
      {
        goto LABEL_10;
      }

      ++v1;
      v8 = *v5++;
      v6 = v8;
    }

    while (v8);
  }

  v7 = *v1;
  if (*v1 && v7 != 58 && v7 != 124)
  {
LABEL_10:
    ++v1;
    if (v7)
    {
      do
      {
        if (v7 == 58)
        {
          break;
        }

        if (v7 == 124)
        {
          goto LABEL_3;
        }

        v9 = *v1++;
        v7 = v9;
      }

      while (v9);
    }

    return 0;
  }

  return 1;
}

uint64_t sub_1000009F4()
{
  v0 = qword_100010080;
  v1 = strlen(qword_100010080);
  v2 = 0;
  v3 = qword_100010080 + v1;
  while (1)
  {
    v4 = v3 + v2;
    if (*(v3 + v2 - 3) == 58)
    {
      break;
    }

    --v2;
    if (v3 + v2 - 2 < qword_100010080)
    {
      v5 = "Bad remcap entry\n";
      goto LABEL_5;
    }
  }

  v8 = *(v4 - 2);
  v7 = (v4 - 2);
  if (v8 == 116 && *(v3 + v2 - 1) == 99)
  {
    v9 = &__s[-v1 + 1026 - v2];
    v10 = v15;
    __strlcpy_chk();
    while (*v10 && *v10 != 58)
    {
      ++v10;
    }

    *v10 = 0;
    v11 = dword_100010088++;
    if (v11 >= 32)
    {
      v5 = "Infinite tc= loop\n";
LABEL_5:
      write(2, v5, 0x12uLL);
      return 0;
    }

    if (sub_1000007D4(__s, v15, qword_100010078) != 1)
    {
      return 0;
    }

    v12 = __s;
    do
    {
      v13 = *v12++;
      ++v9;
    }

    while (v13 != 58);
    if ((v1 + v2 + strlen(v12) - 2) >= 1025)
    {
      write(2, "Remcap entry too long\n", 0x17uLL);
      *v9 = 0;
    }

    strlcpy(v7, v12, v1 + v0 - qword_100010080 + v2 - 2);
    qword_100010080 = v0;
  }

  return 1;
}

uint64_t sub_100000BC8(const char *a1)
{
  v2 = sub_100000CB0(qword_100010080);
  if (!*v2)
  {
    return -1;
  }

  v3 = v2;
  v4 = strlen(a1);
  while (strncmp(v3, a1, v4))
  {
LABEL_7:
    v3 = sub_100000CB0(v3);
    if (!*v3)
    {
      return -1;
    }
  }

  v5 = v3[v4];
  if (v5 == 64)
  {
    return -1;
  }

  if (v5 != 35)
  {
    v3 += v4;
    goto LABEL_7;
  }

  v7 = v3[v4 + 1] - 48;
  if (v7 > 9)
  {
    return 0;
  }

  result = 0;
  v8 = 10;
  if (v3[v4 + 1] == 48)
  {
    v8 = 8;
  }

  v9 = &v3[v4 + 2];
  do
  {
    result = result * v8 + v7;
    v10 = *v9++;
    v7 = v10 - 48;
  }

  while ((v10 - 48) < 0xA);
  return result;
}

_BYTE *sub_100000CB0(_BYTE *result)
{
  while (1)
  {
    v1 = *result;
    if (v1 != 92)
    {
      break;
    }

    if ((result[1] - 48) > 9)
    {
      result += 2;
    }

    else
    {
      ++result;
      do
      {
        v2 = *result++;
      }

      while ((v2 - 48) < 0xA);
    }

LABEL_10:
    ++result;
  }

  if (*result && v1 != 58)
  {
    goto LABEL_10;
  }

  if (v1 == 58)
  {
    ++result;
  }

  return result;
}

uint64_t sub_100000D10(const char *a1)
{
  v2 = sub_100000CB0(qword_100010080);
  if (*v2)
  {
    v3 = v2;
    v4 = strlen(a1);
    do
    {
      if (!strncmp(v3, a1, v4))
      {
        v3 += v4;
        v5 = *v3;
        result = 1;
        if (!*v3 || v5 == 58)
        {
          return result;
        }

        if (v5 == 64)
        {
          return 0;
        }
      }

      v3 = sub_100000CB0(v3);
    }

    while (*v3);
  }

  return 0;
}

_BYTE *sub_100000DA8(const char *a1, _BYTE **a2)
{
  v4 = sub_100000CB0(qword_100010080);
  if (!*v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = strlen(a1);
  while (1)
  {
    if (!strncmp(v5, a1, v6))
    {
      v5 += v6;
      v7 = *v5;
      if (v7 == 64)
      {
        return 0;
      }

      if (v7 == 61)
      {
        break;
      }
    }

    v5 = sub_100000CB0(v5);
    if (!*v5)
    {
      return 0;
    }
  }

  v9 = v5 + 1;
  v10 = *a2;
  do
  {
    v11 = *v9;
    if (v11 == 34)
    {
      v12 = v9 + 1;
    }

    else
    {
      v12 = v9;
    }

    if (v11 == 34)
    {
      v13 = 34;
    }

    else
    {
      v13 = 58;
    }

    v9 = v12 + 1;
    v14 = *v12;
    if (*v12)
    {
      v15 = v13 == v14;
    }

    else
    {
      v15 = 1;
    }

    if (!v15)
    {
      v16 = *v12;
      while (v16 != 92)
      {
        if (v16 != 94)
        {
          goto LABEL_31;
        }

        v17 = v12 + 2;
        LOBYTE(v14) = *v9 & 0x1F;
LABEL_33:
        *v10++ = v14;
        v9 = v17 + 1;
        v14 = *v17;
        v16 = *v17;
        if (*v17)
        {
          v24 = v13 == v14;
        }

        else
        {
          v24 = 1;
        }

        v12 = v17;
        if (v24)
        {
          goto LABEL_38;
        }
      }

      v17 = v12 + 2;
      v14 = *v9;
      v18 = 69;
      v19 = "^^\\\\::n\nr\rt\tb\bf\f";
      do
      {
        if (v18 == v14)
        {
          LOBYTE(v14) = *(v19 - 1);
          goto LABEL_33;
        }

        v20 = *v19;
        v19 += 2;
        v18 = v20;
      }

      while (v20);
      if ((v14 - 48) > 9)
      {
        goto LABEL_33;
      }

      v21 = 0;
      v9 = v12 + 4;
      v22 = v12[2];
      LOBYTE(v14) = v14 - 48;
      while (1)
      {
        LOBYTE(v14) = (v22 - 48) | (8 * v14);
        if (v21)
        {
          break;
        }

        v23 = *++v17;
        v22 = v23;
        v21 = 1;
        if ((v23 - 48) >= 0xA)
        {
          goto LABEL_33;
        }
      }

LABEL_31:
      v17 = v9;
      goto LABEL_33;
    }

LABEL_38:
    ;
  }

  while (v11 == 34 && v13 == v14);
  *v10 = 0;
  result = *a2;
  *a2 = v10 + 1;
  return result;
}

void sub_100000F54(unsigned __int8 *a1)
{
  v160 = &v181;
  if (sub_1000007AC(v182, a1) <= 0)
  {
    bzero(v182, 0x400uLL);
    sub_100000700();
  }

  v2 = malloc_type_malloc(0x240uLL, 0x10300407E8BB7CAuLL);
  if (!v2)
  {
    v143 = __error();
    strerror(*v143);
    goto LABEL_217;
  }

  v3 = v2;
  bzero(v2, 0x240uLL);
  v3[16] = &v3[16];
  v3[17] = &v3[16];
  v154 = v3 + 16;
  v3[30] = &v3[30];
  v3[31] = &v3[30];
  v156 = v3 + 30;
  v3[37] = &v3[37];
  v3[38] = &v3[37];
  v153 = v3 + 37;
  v3[42] = &v3[42];
  v3[43] = &v3[42];
  v151 = v3 + 42;
  if (dword_100010000 < 0)
  {
    *__src = 0x1E00000004;
    *&__src[2] = 0x100000029;
    LODWORD(__stringp) = 0;
    v161[0] = 4;
    if (sysctl(__src, 4u, &__stringp, v161, 0, 0) < 0)
    {
      v144 = __error();
      strerror(*v144);
      sub_100000700();
      dword_100010000 = -1;
LABEL_218:
      exit(1);
    }

    dword_100010000 = __stringp;
    if ((__stringp & 0x80000000) != 0)
    {
      goto LABEL_218;
    }
  }

  if (sub_100000D10("nolladdr"))
  {
    v3[6].i32[0] = 0;
    v4 = if_nametoindex(a1);
  }

  else
  {
    v3[6].i32[0] = 1;
    v5 = sub_100003DC4(a1);
    v3[7] = v5;
    if (!v5)
    {
      goto LABEL_217;
    }

    v4 = v5[1];
  }

  v3[5].i32[1] = v4;
  __strlcpy_chk();
  v6 = sub_100003FE0(a1);
  v3[10].i32[0] = v6;
  if (!v6)
  {
    v3[10].i32[0] = 1280;
    sub_100000700();
  }

  v7 = sub_100000BC8("maxinterval");
  v8 = 600;
  if (v7 >= 0)
  {
    v8 = v7;
  }

  if ((v8 - 1801) <= 0xFFFFFFFFFFFFF8FALL)
  {
    goto LABEL_217;
  }

  v3[11].i32[0] = v8;
  v9 = sub_100000BC8("mininterval");
  v10 = v3[11].u32[0];
  v11 = v10 / 3uLL;
  if (v9 >= 0)
  {
    v11 = v9;
  }

  v12 = (3 * v10) >> 2;
  if (v11 < 3 || v11 > v12)
  {
    goto LABEL_217;
  }

  v3[11].i32[1] = v11;
  v13 = sub_100000BC8("chlim");
  v14 = v13;
  if (v13 < 0)
  {
    v14 = 64;
  }

  v158 = v3;
  v3[15].i32[0] = v14;
  v15 = sub_100000DA8("raflags", &v160);
  if (v15)
  {
    v16 = v15;
    v17 = strchr(v15, 109) != 0;
    if (strchr(v16, 111))
    {
      LODWORD(v18) = ((v17 & 1) << 7) | 0x40;
    }

    else
    {
      LODWORD(v18) = v17 << 7;
    }

    if (strchr(v16, 104))
    {
      LODWORD(v18) = v18 | 8;
    }

    if (strchr(v16, 108))
    {
      if ((v18 & 8) != 0)
      {
        goto LABEL_217;
      }

      LODWORD(v18) = v18 | 0x18;
    }
  }

  else
  {
    v19 = sub_100000BC8("raflags");
    v18 = v19 & ~(v19 >> 63);
  }

  v158[12] = vand_s8(vdup_n_s32(v18), 0x4000000080);
  v158[13].i32[0] = v18 & 0x18;
  if ((v18 & 0x18) == 0x10)
  {
    goto LABEL_217;
  }

  v20 = v158;
  v21 = sub_100000BC8("rltime");
  if ((v21 & 0x8000000000000000) != 0)
  {
    v22 = v158[11].i32[0];
    v21 = (3 * v22);
    if (!(3 * v22))
    {
      goto LABEL_40;
    }
  }

  else if (!v21)
  {
    goto LABEL_40;
  }

  if (v21 > 0x2328 || v21 < v158[11].u32[0])
  {
    v149 = v158[11].u32[0];
    goto LABEL_217;
  }

  if (!dword_100010000)
  {
LABEL_217:
    sub_100000700();
    goto LABEL_218;
  }

LABEL_40:
  v158[10].i16[2] = v21;
  v23 = sub_100000BC8("rtime");
  if (v23 >= 3600001)
  {
    goto LABEL_217;
  }

  v158[14].i32[0] = v23 & ~(v23 >> 63);
  v24 = sub_100000BC8("retrans");
  if (v24 >= &_mh_execute_header)
  {
    goto LABEL_217;
  }

  v152 = a1;
  v158[14].i32[1] = v24 & ~(v24 >> 63);
  if (sub_100000BC8("hapref") != -1 || sub_100000BC8("hatime") != -1)
  {
    goto LABEL_217;
  }

  v25 = sub_100000BC8("clockskew");
  v158[29] = (v25 & ~(v25 >> 63));
  v158[28].i32[0] = 0;
  for (i = -1; i != 100; ++i)
  {
    sub_100002738(__src, 0x100uLL, i, "addr");
    v27 = sub_100000DA8(__src, &v160);
    if (v27)
    {
      v28 = v27;
      v29 = malloc_type_malloc(0x60uLL, 0x1020040CF300BDFuLL);
      if (!v29)
      {
        goto LABEL_219;
      }

      v30 = v29;
      *v29[6].i8 = 0u;
      *v29[8].i8 = 0u;
      *v29[2].i8 = 0u;
      *v29[4].i8 = 0u;
      *v29->i8 = 0u;
      *v29[10].i8 = 0u;
      v31 = v29 + 10;
      v29[2] = v20;
      v29[9].i32[1] = 2;
      if (inet_pton(30, v28, &v29[10]) != 1)
      {
        goto LABEL_217;
      }

      v32 = v31->u8[0];
      if (v32 == 254)
      {
        if ((v30[10].i8[1] & 0xC0) == 0x80)
        {
          sub_100000700();
        }
      }

      else if (v32 == 255)
      {
        goto LABEL_217;
      }

      sub_100002738(__src, 0x100uLL, i, "prefixlen");
      v33 = sub_100000BC8(__src);
      v34 = 64;
      if (v33 >= 0)
      {
        v34 = v33;
      }

      if (v34 >= 129)
      {
        goto LABEL_217;
      }

      v30[9].i32[0] = v34;
      sub_100002738(__src, 0x100uLL, i, "pinfoflags");
      v35 = sub_100000DA8(__src, &v160);
      if (v35)
      {
        v36 = v35;
        v37 = strchr(v35, 108) != 0;
        v38 = v37 << 7;
        v39 = strchr(v36, 97);
        v40 = ((v37 & 1) << 7) | 0x40;
        v20 = v158;
        if (!v39)
        {
          v40 = v38;
        }
      }

      else
      {
        v41 = sub_100000BC8(__src);
        v40 = 192;
        if (v41 >= 0)
        {
          v40 = v41;
        }
      }

      v30[8] = vand_s8(vdup_n_s32(v40), 0x4000000080);
      sub_100002738(__src, 0x100uLL, i, "vltime");
      v42 = sub_100000BC8(__src);
      v43 = 2592000;
      if (v42 >= 0)
      {
        v43 = v42;
      }

      if (v43 >= &_mh_execute_header)
      {
        goto LABEL_225;
      }

      v30[4].i32[0] = v43;
      sub_100002738(__src, 0x100uLL, i, "vltimedecr");
      if (sub_100000D10(__src))
      {
        v161[0] = 0;
        v161[1] = 0;
        gettimeofday(v161, 0);
        v30[5] = (v161[0] + v30[4].u32[0]);
      }

      sub_100002738(__src, 0x100uLL, i, "pltime");
      v44 = sub_100000BC8(__src);
      v45 = 604800;
      if (v44 >= 0)
      {
        v45 = v44;
      }

      if (v45 >= &_mh_execute_header)
      {
LABEL_225:
        v148 = v30[9].u32[0];
        goto LABEL_217;
      }

      v30[6].i32[0] = v45;
      sub_100002738(__src, 0x100uLL, i, "pltimedecr");
      if (sub_100000D10(__src))
      {
        v161[0] = 0;
        v161[1] = 0;
        gettimeofday(v161, 0);
        v30[7] = (v161[0] + v30[6].u32[0]);
      }

      insque(v30, v154);
      ++*(v20 + 224);
    }
  }

  if (!*(v20 + 224))
  {
    sub_100002788(v20);
  }

  v46 = sub_100000BC8("mtu");
  v47 = v46 & ~(v46 >> 63);
  if (v46 >= &_mh_execute_header)
  {
    goto LABEL_217;
  }

  *(v20 + 108) = v47;
  if (v47)
  {
    if (v47 < 0x500 || *(v20 + 80) < v47)
    {
      v150 = *(v20 + 80);
      goto LABEL_217;
    }
  }

  else
  {
    v74 = sub_100000DA8("mtu", &v160);
    if (v74 && !strcmp(v74, "auto"))
    {
      *(v20 + 108) = *(v20 + 80);
    }
  }

  v48 = -1;
  *(v20 + 288) = 0;
  do
  {
    sub_100002738(__src, 0x100uLL, v48, "rtprefix");
    v49 = sub_100000DA8(__src, &v160);
    if (!v49)
    {
      sub_100002738(v161, 0x100uLL, v48, "rtrprefix");
      v50 = sub_100000DA8(v161, &v160);
      if (!v50)
      {
        goto LABEL_111;
      }

      v49 = v50;
      fprintf(__stderrp, "%s was obsoleted.  Use %s.\n", v161, __src);
    }

    v51 = malloc_type_malloc(0x30uLL, 0x1020040586F8431uLL);
    if (!v51)
    {
      goto LABEL_219;
    }

    v52 = v51;
    v51[1] = 0u;
    v51[2] = 0u;
    *v51 = 0u;
    insque(v51, v156);
    ++*(v20 + 288);
    if (inet_pton(30, v49, v52 + 7) != 1)
    {
      goto LABEL_217;
    }

    sub_100002738(__src, 0x100uLL, v48, "rtplen");
    v53 = sub_100000BC8(__src);
    if ((v53 & 0x8000000000000000) != 0 || v53 == 256)
    {
      sub_100002738(v161, 0x100uLL, v48, "rtrplen");
      v53 = sub_100000BC8(v161);
      if ((v53 & 0x8000000000000000) != 0)
      {
        LODWORD(v53) = 64;
        goto LABEL_92;
      }

      v54 = v53;
      LODWORD(v53) = 64;
      if (v54 == 256)
      {
        goto LABEL_92;
      }

      fprintf(__stderrp, "%s was obsoleted.  Use %s.\n", v161, __src);
      v53 = v54;
    }

    if (v53 >= 0x81)
    {
      goto LABEL_217;
    }

LABEL_92:
    v52[6] = v53;
    sub_100002738(__src, 0x100uLL, v48, "rtflags");
    v55 = sub_100000DA8(__src, &v160);
    if (v55)
    {
      v56 = v55;
      v57 = strchr(v55, 104);
      v58 = strchr(v56, 108);
      if (v58)
      {
        v59 = 24;
      }

      else
      {
        v59 = 8 * (v57 != 0);
      }

      if (v58)
      {
        v20 = v158;
        if (v57)
        {
          goto LABEL_217;
        }
      }

      else
      {
        v20 = v158;
      }
    }

    else
    {
      v60 = sub_100000BC8(__src);
      if (v60 < 0 || (v59 = v60, v60 == 256))
      {
        sub_100002738(v161, 0x100uLL, v48, "rtrflags");
        v61 = sub_100000BC8(v161);
        if (v61 < 0 || (v59 = v61, v61 == 256))
        {
          v52[5] = 0;
          goto LABEL_106;
        }

        fprintf(__stderrp, "%s was obsoleted.  Use %s.\n", v161, __src);
      }
    }

    v52[5] = v59 & 0x18;
    if ((v59 & 0x18) == 0x10)
    {
      v146 = v52[6];
      goto LABEL_217;
    }

LABEL_106:
    sub_100002738(__src, 0x100uLL, v48, "rtltime");
    v62 = sub_100000BC8(__src);
    if ((v62 & 0x8000000000000000) == 0)
    {
      goto LABEL_109;
    }

    sub_100002738(v161, 0x100uLL, v48, "rtrltime");
    v62 = sub_100000BC8(v161);
    if ((v62 & 0x8000000000000000) == 0)
    {
      fprintf(__stderrp, "%s was obsoleted.  Use %s.\n", v161, __src);
LABEL_109:
      if (HIDWORD(v62))
      {
        v147 = v52[6];
        goto LABEL_217;
      }

      goto LABEL_110;
    }

    fprintf(__stderrp, "%s should be specified for interface %s.\n", __src, v152);
    LODWORD(v62) = *(v20 + 84);
LABEL_110:
    v52[4] = v62;
LABEL_111:
    ++v48;
  }

  while (v48 != 100);
  v63 = sub_100000BC8("rdnsslifetime");
  v64 = *(v20 + 88);
  if (v63 >= 0)
  {
    v65 = v63;
  }

  else
  {
    v65 = (2 * v64);
  }

  v66 = v65 < v64 || v65 > (2 * v64);
  if (v66)
  {
    sub_100000700();
  }

  v158[41].i32[1] = v65;
  v67 = sub_100000BC8("rdnssaddrs");
  v68 = v67;
  if (v67 < 0)
  {
    v158[41].i32[0] = 0;
  }

  else
  {
    v158[41].i32[0] = v67;
    if (v67)
    {
      v69 = v67 + 1;
      while (1)
      {
        v70 = malloc_type_malloc(0x20uLL, 0x10200406C4767B9uLL);
        if (!v70)
        {
          break;
        }

        v71 = v70;
        *v70 = 0u;
        v70[1] = 0u;
        insque(v70, v153);
        sub_100002738(__src, 0x100uLL, v69 - 2, "rdnssaddr");
        v72 = sub_100000DA8(__src, &v160);
        v73 = v72;
        if (v68 == 1 && !v72)
        {
          __strlcpy_chk();
          v73 = sub_100000DA8(__src, &v160);
        }

        if (!v73 || inet_pton(30, v73, v71 + 1) != 1 || *(v71 + 16) == 255)
        {
          goto LABEL_217;
        }

        if (--v69 <= 1)
        {
          goto LABEL_141;
        }
      }

LABEL_219:
      v142 = __error();
      strerror(*v142);
      goto LABEL_217;
    }
  }

LABEL_141:
  v75 = sub_100000BC8("dnssllifetime");
  v76 = v158[11].u32[0];
  if (v75 >= 0)
  {
    v77 = v75;
  }

  else
  {
    v77 = (2 * v76);
  }

  if (v77 < v76 || v77 > (2 * v76))
  {
    sub_100000700();
  }

  v158[45].i32[1] = v77;
  v78 = v158;
  v158[46].i32[0] = 8;
  v79 = sub_100000BC8("dnssldomains");
  v80 = v79;
  if (v79 < 0)
  {
    v158[45].i32[0] = 0;
  }

  else
  {
    v158[45].i32[0] = v79;
    if (v79)
    {
      do
      {
        sub_100002738(__src, 0x20uLL, v80 - 1, "dnssldomain");
        v81 = sub_100000DA8(__src, &v160);
        if (!v81)
        {
          if (v78[45].i32[0] != 1)
          {
            goto LABEL_217;
          }

          __strlcpy_chk();
          v81 = sub_100000DA8(__src, &v160);
          if (!v81)
          {
            goto LABEL_217;
          }
        }

        v82 = v81;
        v83 = strlen(v81);
        if (v83 >= 1)
        {
          v84 = &v82[v83 - 1 + 1];
          while (*v82 == 46)
          {
            ++v82;
            v85 = __OFSUB__(v83--, 1);
            if ((v83 < 0) ^ v85 | (v83 == 0))
            {
              v83 = 0;
              goto LABEL_159;
            }
          }
        }

        v84 = v82;
LABEL_159:
        v86 = v83;
        v87 = (v83 << 32) + 0x1A00000000;
        v88 = v83 + 3;
        while (v86 >= 1)
        {
          v89 = v86 - 1;
          v90 = v84[v86 - 1];
          v87 -= 0x100000000;
          --v88;
          --v86;
          if (v90 != 46)
          {
            v91 = v89 + 1;
            v92 = v87 >> 32;
            v93 = malloc_type_malloc(v87 >> 32, 0x100004077774924uLL);
            bzero(v93, v92);
            insque(v93, v151);
            memcpy(v93 + 16, v84, v91 & 0x7FFFFFFF);
            v158[46].i32[0] += v88;
            break;
          }
        }

        v66 = v80-- <= 1;
        v78 = v158;
      }

      while (!v66);
    }

    v78[46].i32[0] = (v78[46].i32[0] & 0xFFFFFFF8) + 8;
  }

  v94 = sub_100000DA8("capport", &v160);
  if (v94)
  {
    v95 = v94;
    v78[47] = strdup(v94);
    v96 = strlen(v95);
    v78[48].i32[0] = v96;
    v78[48].i32[1] = v96 - ((v96 + 2) & 7) + 10;
  }

  v97 = sub_100000DA8("pref64addr", &v160);
  if (v97)
  {
    if (inet_pton(30, v97, &v78[49] + 4) != 1)
    {
      goto LABEL_217;
    }

    v78[49].i8[0] = 1;
    v98 = sub_100000BC8("pref64len");
    v99 = v98 >= 0 ? v98 : 64;
    HIDWORD(v101) = v99 - 32;
    LODWORD(v101) = HIDWORD(v101);
    v100 = v101 >> 3;
    if (v100 >= 9 || ((0x11Fu >> v100) & 1) == 0)
    {
      goto LABEL_217;
    }

    v102 = qword_10000A730[v100];
    v103 = v158;
    v158[49].i8[1] = v99;
    v104 = sub_100000BC8("pref64lifetime");
    if ((v104 & 0x8000000000000000) != 0)
    {
      if ((3 * v158[11].i32[0]) >= 0xFFF8)
      {
        LOWORD(v104) = -8;
      }

      else
      {
        LOWORD(v104) = 3 * v158[11].i16[0];
      }
    }

    else
    {
      if (v104 >= 0xFFF9)
      {
        goto LABEL_217;
      }

      v103 = v158;
    }

    v105 = (v104 & 0xFFF8) + 8;
    if ((v104 & 7) == 0)
    {
      v105 = v104;
    }

    v103[49].i16[1] = v105 | v102;
    v78 = v103;
  }

  if (sub_100000D10("pvd"))
  {
    if (sub_100000D10("http"))
    {
      v78[51].i8[5] |= 0x80u;
    }

    if (sub_100000D10("legacy"))
    {
      v78[51].i8[5] |= 0x40u;
    }

    v106 = sub_100000D10("ra");
    v107 = v78[51].i8[5];
    if (v106)
    {
      v107 |= 0x20u;
      v78[51].i8[5] = v107;
    }

    if (v107 < 0)
    {
      v108 = sub_100000BC8("delay");
      if (v108 >= 256)
      {
        goto LABEL_217;
      }

      v78[51].i8[4] = v108 & ~(v108 >> 63) & 0xF;
      v109 = sub_100000BC8("seqnr");
      if (v109 >= 0x10000)
      {
        goto LABEL_217;
      }

      v78[51].i16[3] = v109 & ~(v109 >> 63);
    }

    v110 = sub_100000DA8("pvdid", &v160);
    if (!v110)
    {
      goto LABEL_217;
    }

    v111 = v110;
    v78[52] = strdup(v110);
    v112 = strlen(v111);
    v78[53].i32[0] = v112;
    v78[53].i32[1] = v112 - ((v112 + 6) & 7) + 14;
  }

  v78[54] = &v78[54];
  v78[55] = &v78[54];
  v155 = v78 + 54;
  v113 = sub_100000BC8("dnrentries");
  v114 = v113;
  if (v113 > 0)
  {
    v78[64].i8[0] = v113;
    sub_100000700();
    v115 = 0uLL;
    while (1)
    {
      v163 = v115;
      v164 = v115;
      *v161 = v115;
      v162 = v115;
      v179 = v115;
      v180 = v115;
      v177 = v115;
      v178 = v115;
      v175 = v115;
      v176 = v115;
      v173 = v115;
      v174 = v115;
      v171 = v115;
      v172 = v115;
      v169 = v115;
      v170 = v115;
      v167 = v115;
      v168 = v115;
      *__src = v115;
      v166 = v115;
      __stringp = 0;
      v116 = malloc_type_malloc(0x50uLL, 0x10300407F8516DFuLL);
      if (!v116)
      {
        goto LABEL_219;
      }

      v117 = v116;
      v116[3] = 0u;
      v116[4] = 0u;
      v116[1] = 0u;
      v116[2] = 0u;
      *v116 = 0u;
      insque(v116, v155);
      sub_100002738(v161, 0x40uLL, v114 - 1, "dnrlifetime");
      v118 = sub_100000BC8(v161);
      if (v118 >= 0)
      {
        v119 = v118;
      }

      else
      {
        v119 = 1800;
      }

      sub_100000700();
      if (v119 >= &_mh_execute_header)
      {
        goto LABEL_217;
      }

      *(v117 + 4) = v119;
      sub_100002738(v161, 0x40uLL, v114 - 1, "dnradn");
      v120 = sub_100000DA8(v161, &v160);
      sub_100000700();
      v121 = sub_100002A6C(v120, __src);
      *(v117 + 8) = v121;
      v122 = malloc_type_malloc(v121, 0x100004077774924uLL);
      *(v117 + 3) = v122;
      memcpy(v122, __src, *(v117 + 8));
      sub_100002738(v161, 0x40uLL, v114 - 1, "dnrsvcpriority");
      LOWORD(v120) = sub_100000BC8(v161);
      sub_100000700();
      *(v117 + 18) = v120;
      sub_100002738(v161, 0x40uLL, v114 - 1, "dnraddrs");
      v123 = sub_100000DA8(v161, &v160);
      v124 = strdup(v123);
      __stringp = v124;
      sub_100000700();
      v125 = 0;
      do
      {
        v126 = v125;
        v127 = strsep(&__stringp, " ");
        v125 = v126 + 1;
      }

      while (v127);
      v128 = v126;
      if (!v126)
      {
        goto LABEL_217;
      }

      v157 = v114;
      v129 = 16 * v126;
      v130 = malloc_type_malloc(v129, 0x1000040451B5BE8uLL);
      if (!v130)
      {
        goto LABEL_218;
      }

      v131 = v130;
      bzero(v130, v129);
      free(v124);
      v132 = sub_100000DA8(v161, &v160);
      v133 = strdup(v132);
      __stringp = v133;
      v134 = v131;
      while (1)
      {
        v135 = strsep(&__stringp, " ");
        if (!v135)
        {
          break;
        }

        v136 = v135;
        sub_100000700();
        v137 = inet_pton(30, v136, v134);
        v134 += 16;
        if (v137 != 1)
        {
          goto LABEL_217;
        }
      }

      free(v133);
      *(v117 + 12) = v128;
      *(v117 + 5) = v131;
      sub_100002738(v161, 0x40uLL, v114 - 1, "dnrsvcparams");
      v145 = sub_100000DA8(v161, &v160);
      sub_100000700();
      v138 = strlen(v145);
      *(v117 + 8) = v138;
      v139 = malloc_type_malloc(v138, 0x100004077774924uLL);
      *(v117 + 7) = v139;
      memcpy(v139, v145, *(v117 + 8));
      --v114;
      v115 = 0uLL;
      if (v157 <= 1)
      {
        goto LABEL_216;
      }
    }
  }

  v78[64].i8[0] = 0;
LABEL_216:
  v140 = v158;
  *v158 = qword_1000107A8;
  qword_1000107A8 = v158;
  sub_100002B2C(v158);
  v141 = sub_1000053E4(sub_10000737C, sub_100007560, v140, v140);
  v158[1] = v141;
  sub_100007560(v158, (v141 + 24));
  sub_1000054F8(*(v140 + 8) + 24, *(v140 + 8));
}

size_t sub_100002738(char *a1, size_t __size, int a3, char *__source)
{
  if ((a3 & 0x80000000) == 0)
  {
    return snprintf(a1, __size, "%s%d", __source, a3);
  }

  return strlcpy(a1, __source, __size);
}

void sub_100002788(uint64_t a1)
{
  v18 = 0;
  if (getifaddrs(&v18) < 0)
  {
LABEL_29:
    sub_100000700();
    exit(1);
  }

  v2 = v18;
  if (!v18)
  {
    v15 = 0;
    goto LABEL_24;
  }

  do
  {
    if (strcmp(v2->ifa_name, (a1 + 64)))
    {
      goto LABEL_21;
    }

    ifa_addr = v2->ifa_addr;
    if (ifa_addr->sa_family != 30)
    {
      goto LABEL_21;
    }

    v4 = &ifa_addr->sa_data[6];
    if (ifa_addr->sa_data[6] == 254 && (ifa_addr->sa_data[7] & 0xC0) == 0x80)
    {
      goto LABEL_21;
    }

    ifa_netmask = v2->ifa_netmask;
    sa_len = ifa_netmask->sa_len;
    v7 = sub_1000046FC(&ifa_netmask->sa_data[6], &ifa_netmask->sa_len + sa_len);
    if ((v7 - 129) <= 0xFFFFFF7F)
    {
      goto LABEL_29;
    }

    v8 = v7;
    if (v7 == 128 || sub_1000071EC(a1, v4, v7))
    {
      goto LABEL_21;
    }

    v9 = malloc_type_malloc(0x60uLL, 0x1020040CF300BDFuLL);
    if (!v9)
    {
      v16 = __error();
      strerror(*v16);
      goto LABEL_29;
    }

    v10 = v9;
    v9[3] = 0u;
    v9[4] = 0u;
    v9[1] = 0u;
    v9[2] = 0u;
    *v9 = 0u;
    v9[5] = 0u;
    v11 = v9 + 5;
    *(v9 + 18) = v8;
    v9[5] = *v4;
    if (sa_len < 9)
    {
      v13 = 80;
    }

    else
    {
      v12 = &ifa_netmask->sa_data[7];
      v13 = 80;
      do
      {
        v14 = v13++;
        *(v9 + v14) &= *(v12 - 1);
        if (v12 >= &ifa_netmask->sa_len + sa_len)
        {
          break;
        }

        ++v12;
      }

      while (v14 < 0x5F);
      if (v14 > 0x5E)
      {
        goto LABEL_19;
      }
    }

    bzero(v9 + v13, 96 - v13);
LABEL_19:
    if (!inet_ntop(30, v11, v19, 0x2Eu))
    {
      goto LABEL_29;
    }

    v17 = v10[18];
    sub_100000700();
    v10[8] = 2592000;
    v10[12] = 604800;
    *(v10 + 8) = 0x100000001;
    v10[19] = 1;
    *(v10 + 2) = a1;
    insque(v10, (a1 + 128));
    ++*(a1 + 224);
LABEL_21:
    v2 = v2->ifa_next;
  }

  while (v2);
  v15 = v18;
LABEL_24:
  freeifaddrs(v15);
}

uint64_t sub_100002A6C(const char *a1, char *a2)
{
  v3 = strdup(a1);
  __stringp = v3;
  v4 = strsep(&__stringp, ".");
  v5 = a2;
  if (v4)
  {
    v6 = v4;
    v5 = a2;
    do
    {
      v7 = strlen(v6);
      if ((v7 & 0x3F) != 0)
      {
        *v5 = v7 & 0x3F;
        v8 = v5 + 1;
        v9 = v7 & 0x3F;
        memcpy(v8, v6, v9);
        v5 = &v8[v9];
      }

      v6 = strsep(&__stringp, ".");
    }

    while (v6);
  }

  *v5 = 0;
  free(v3);
  return (v5 - a2 + 1);
}

void sub_100002B2C(uint64_t a1)
{
  if (*(a1 + 48))
  {
    v2 = sub_100004210(*(a1 + 56));
    v3 = v2;
    if (!v2)
    {
      sub_100000700();
      *(a1 + 48) = 0;
    }

    v4 = v3 + 16;
  }

  else
  {
    v3 = 0;
    v4 = 16;
  }

  v5 = v4 + 32 * *(a1 + 224);
  if (*(a1 + 108))
  {
    v5 += 8;
  }

  v6 = a1 + 240;
  for (i = *(a1 + 248); i != v6; i = *(i + 8))
  {
    v5 += ((((*(i + 24) + 63) >> 3) & 0xFFFFFFF8) + 8);
  }

  v8 = *(a1 + 328);
  if (v8 <= 0)
  {
    v9 = 0;
  }

  else
  {
    v9 = (16 * v8) | 8;
  }

  v10 = v9 + v5;
  if (*(a1 + 360) >= 1)
  {
    v10 += *(a1 + 368);
  }

  v11 = v10 + *(a1 + 388);
  if (*(a1 + 392))
  {
    v11 += 16;
  }

  v12 = v11 + *(a1 + 428);
  if (*(a1 + 512))
  {
    v13 = *(a1 + 432);
    if (v13 == (a1 + 432))
    {
      v14 = 0;
    }

    else
    {
      v14 = 0;
      do
      {
        v15 = *(v13 + 8) + v13[8] + 14;
        v16 = 8 - (v15 & 7) + v15 + 16 * *(v13 + 12);
        v13[9] = v16;
        v14 += v16;
        ++dword_10001008C;
        sub_100000700();
        v13 = *v13;
      }

      while (v13 != (a1 + 432));
    }

    v12 += v14;
  }

  v17 = malloc_type_malloc(v12, 0xE8A7F90BuLL);
  if (!v17)
  {
LABEL_89:
    sub_100000700();
    exit(1);
  }

  v18 = v17;
  v19 = *(a1 + 528);
  if (v19)
  {
    free(v19);
  }

  *(a1 + 528) = v18;
  *(a1 + 520) = v12;
  v18->i32[0] = 134;
  v18->i8[4] = *(a1 + 120);
  v18->i8[5] = 0;
  v20 = *(a1 + 104);
  v18->i8[5] = v20;
  LOBYTE(v20) = v20 | ((*(a1 + 96) != 0) << 7);
  v18->i8[5] = v20;
  v18->i8[5] = v20 | ((*(a1 + 100) != 0) << 6);
  v18->i16[3] = bswap32(*(a1 + 84)) >> 16;
  v18[1] = vrev32_s8(*(a1 + 112));
  v21 = v18 + 2;
  if (*(a1 + 48))
  {
    sub_100004224(*(a1 + 56), &v18[2]);
    v21 = (v21 + v3);
  }

  v22 = *(a1 + 108);
  if (v22)
  {
    v21->i32[0] = 261;
    v21->i32[1] = bswap32(v22);
    ++v21;
  }

  for (j = *(a1 + 128); j != (a1 + 128); j = *j)
  {
    v59.tv_sec = 0;
    *&v59.tv_usec = 0;
    v21->i16[0] = 1027;
    v21->i8[2] = *(j + 18);
    v24 = *(j + 16);
    v25 = v24 != 0;
    if (v24)
    {
      v26 = 0x80;
    }

    else
    {
      v26 = 0;
    }

    v21->i8[3] = v25 << 7;
    if (*(j + 17))
    {
      v21->i8[3] = v26 | 0x40;
    }

    if (j[3])
    {
      v27 = 0;
    }

    else
    {
      if ((j[5] || j[7]) && (gettimeofday(&v59, 0), (v28 = j[5]) != 0))
      {
        if (v28 <= v59.tv_sec)
        {
          v27 = 0;
        }

        else
        {
          v27 = v28 - LODWORD(v59.tv_sec);
        }
      }

      else
      {
        v27 = *(j + 8);
      }

      if (!j[3])
      {
        v30 = j[7];
        if (v30)
        {
          if (v30 <= v59.tv_sec)
          {
            v29 = 0;
          }

          else
          {
            v29 = v30 - LODWORD(v59.tv_sec);
          }
        }

        else
        {
          v29 = *(j + 12);
        }

        goto LABEL_49;
      }
    }

    v29 = 0;
LABEL_49:
    if (v27 < v29)
    {
      v29 = v27;
    }

    v21->i32[1] = bswap32(v27);
    v21[1] = bswap32(v29);
    *v21[2].i8 = *(j + 5);
    v21 += 4;
  }

  for (k = *(a1 + 248); k != v6; k = *(k + 8))
  {
    v32 = *(k + 24);
    v21->i8[0] = 24;
    v21->i8[1] = ((v32 + 63) >> 6) + 1;
    v21->i8[2] = v32;
    v33 = *(k + 16);
    v21->i8[3] = *(k + 20);
    v21->i32[1] = bswap32(v33);
    v34 = v21 + 1;
    v35 = ((v32 + 63) >> 3) & 0x7F8;
    memcpy(v34, (k + 28), v35);
    v21 = (v34 + v35);
  }

  v36 = *(a1 + 328);
  if (v36 >= 1)
  {
    v21->i8[0] = 25;
    v21->i8[1] = (2 * v36) | 1;
    v21->i16[1] = 0;
    v21->i32[1] = bswap32(*(a1 + 332));
    ++v21;
    for (m = *(a1 + 296); m != (a1 + 296); m = *m)
    {
      *v21->i8 = *(m + 1);
      v21 += 2;
    }
  }

  if (*(a1 + 360) >= 1)
  {
    bzero(v21, *(a1 + 368));
    v21->i8[0] = 31;
    v38 = *(a1 + 368);
    v21->i8[1] = v38 >> 3;
    v21->i16[1] = 0;
    v21->i32[1] = bswap32(*(a1 + 364));
    v39 = *(a1 + 336);
    if (v39 != (a1 + 336))
    {
      v40 = &v21[1];
      do
      {
        v40 += sub_100002A6C(v39 + 16, v40);
        v39 = *v39;
      }

      while (v39 != (a1 + 336));
      v38 = *(a1 + 368);
    }

    v21 = (v21 + v38);
  }

  v41 = *(a1 + 376);
  if (v41)
  {
    v21->i8[0] = 37;
    v21->i8[1] = *(a1 + 388) >> 3;
    v42 = v21 + 2;
    memmove(v42, v41, *(a1 + 384));
    v43 = *(a1 + 384);
    v21 = &v42[v43];
    v44 = *(a1 + 388) - 2;
    v45 = (v44 - v43);
    if (v44 != v43)
    {
      bzero(v21, (v44 - v43));
      v21 = (v21 + v45);
    }
  }

  if (*(a1 + 392) == 1)
  {
    v46 = v21 + 2;
    v21->i16[0] = 550;
    v21->i16[1] = bswap32(*(a1 + 394)) >> 16;
    v47 = *(a1 + 393);
    v48 = v21 + 4;
    memmove(v48, (a1 + 396), v47 >> 3);
    if ((v47 >> 3) != 12)
    {
      bzero(&v48[v47 >> 3], (12 - (v47 >> 3)));
    }
  }

  else
  {
    v46 = v21;
  }

  v49 = *(a1 + 428);
  if (v49)
  {
    v46->i8[0] = 21;
    v46->i8[1] = v49 >> 3;
    v46->i8[2] = *(a1 + 413);
    v46->i8[3] = *(a1 + 412);
    v46->i16[2] = bswap32(*(a1 + 414)) >> 16;
    v50 = sub_100002A6C(*(a1 + 416), v46 + 6);
    bzero(v46 + v50 + 6, (*(a1 + 428) - v50 - 6));
    v46 = (v46 + *(a1 + 428));
  }

  for (n = *(a1 + 432); n != (a1 + 432); n = *n)
  {
    v46->i8[0] = -112;
    v46->i8[1] = n[9] >> 3;
    v46->i16[1] = bswap32(*(n + 18)) >> 16;
    v46->i32[1] = bswap32(*(n + 4));
    v46[1].i16[0] = bswap32(*(n + 16)) >> 16;
    memcpy(&v46[1] + 2, n[3], *(n + 8));
    v52 = (v46 + *(n + 8) + 10);
    v52->i16[0] = bswap32(16 * *(n + 24)) >> 16;
    v53 = v52 + 1;
    if (*(n + 12) >= 1)
    {
      v54 = 0;
      v55 = 0;
      do
      {
        *&v53[v54] = *(n[5] + v54 * 2);
        ++v55;
        v54 += 8;
      }

      while (v55 < *(n + 12));
      v53 = (v53 + v54 * 2);
    }

    *v53 = bswap32(*(n + 32)) >> 16;
    v56 = (v53 + 1);
    memcpy(v56, n[7], n[8]);
    v46 = (v46 + n[9]);
    bzero(&v56[n[8]], v46 - &v56[n[8]]);
  }

  if (*(a1 + 520) != (v46 - *(a1 + 528)))
  {
    v57 = *(a1 + 520);
    v58 = v46 - *(a1 + 528);
    goto LABEL_89;
  }
}

void sub_10000323C(uint64_t a1)
{
  v2 = *(a1 + 16);
  remque(a1);
  inet_ntop(30, (a1 + 80), v4, 0x2Eu);
  v3 = *(a1 + 72);
  sub_100000700();
  if (*(a1 + 24))
  {
    sub_1000054C4((a1 + 24));
  }

  free(a1);
  --*(v2 + 224);
}

void sub_1000032F8(uint64_t a1)
{
  if (*(a1 + 24))
  {
    sub_100000700();
    exit(1);
  }

  v6 = 0;
  v4 = *(a1 + 16) + 64;
  inet_ntop(30, (a1 + 80), v7, 0x2Eu);
  v3 = *(a1 + 72);
  sub_100000700();
  v2 = sub_1000053E4(sub_100003420, 0, a1, 0);
  *(a1 + 24) = v2;
  if (v2)
  {
    v5 = 7200;
    LODWORD(v6) = 0;
    sub_1000054F8(&v5, v2);
  }

  else
  {
    sub_100000700();
    sub_10000323C(a1);
  }
}

void sub_10000343C(uint64_t a1)
{
  v1 = (a1 + 24);
  if (!*(a1 + 24))
  {
    sub_100000700();
    exit(1);
  }

  v3 = *(a1 + 16);
  inet_ntop(30, (a1 + 80), v5, 0x2Eu);
  v4 = *(a1 + 72);
  sub_100000700();
  sub_1000054C4(v1);
}

void sub_100003510(uint64_t a1, unsigned int a2, _OWORD *a3, char a4)
{
  memset(v14, 0, sizeof(v14));
  *v12 = 0u;
  v13 = 0u;
  if (!if_indextoname(a2, v12) || (WORD2(v14[0]) = 7708, *(v14 + 12) = *a3, BYTE1(v13) = a4, *(&v13 + 4) = 0x93A8000278D00, BYTE12(v13) |= 3u, (v7 = malloc_type_malloc(0x60uLL, 0x1020040CF300BDFuLL)) == 0))
  {
    v11 = __error();
    strerror(*v11);
    sub_100000700();
    exit(1);
  }

  v7[2] = 0u;
  v7[3] = 0u;
  *v7 = 0u;
  v7[1] = 0u;
  v7[5] = *(v14 + 12);
  v8 = BYTE1(v13);
  v9 = DWORD2(v13);
  *(v7 + 8) = DWORD1(v13);
  *(v7 + 12) = v9;
  v10 = (BYTE12(v13) >> 1) & 1;
  *(v7 + 16) = BYTE12(v13) & 1;
  *(v7 + 17) = v10;
  *(v7 + 18) = v8;
  *(v7 + 19) = 3;
  *(v7 + 2) = a1;
  insque(v7, (a1 + 128));
  inet_ntop(30, v14 + 12, v15, 0x2Eu);
  sub_100000700();
  free(*(a1 + 528));
  *(a1 + 528) = 0;
  ++*(a1 + 224);
  sub_100002B2C(a1);
}

uint64_t sub_1000036E4(const char *a1)
{
  sub_100000700();
  qword_100010090 = fopen(a1, "w");
  if (!qword_100010090)
  {
    return sub_100000700();
  }

  v38.tv_sec = 0;
  *&v38.tv_usec = 0;
  gettimeofday(&v38, 0);
  for (i = qword_1000107A8; i; i = *i)
  {
    fprintf(qword_100010090, "%s:\n", (i + 64));
    v3 = sub_1000047D8(*(i + 44));
    if (v3)
    {
      v4 = "UP";
      if ((*(v3 + 2) & 1) == 0)
      {
        v4 = "DOWN";
      }

      fprintf(qword_100010090, "  Status: %s\n", v4);
      if (*(i + 24))
      {
        v5 = qword_100010090;
        v6 = ctime((i + 24));
        fprintf(v5, "  Last RA sent: %s", v6);
      }

      v7 = *(i + 8);
      v8 = qword_100010090;
      if (v7)
      {
        v9 = ctime((v7 + 24));
        fprintf(v8, "  Next RA will be sent: %s", v9);
      }

      else
      {
        fwrite("  RA timer is stopped", 0x15uLL, 1uLL, qword_100010090);
      }

      fprintf(qword_100010090, "  waits: %d, initcount: %d\n", *(i + 40), *(i + 16));
      fprintf(qword_100010090, "  statistics: RA(out/in/inconsistent): %llu/%llu/%llu, ", *(i + 536), *(i + 544), *(i + 552));
      fprintf(qword_100010090, "RS(input): %llu\n", *(i + 560));
      if (*(i + 48))
      {
        v10 = qword_100010090;
        v11 = *(i + 56);
        if (*(v11 + 6) >= 6u)
        {
          v12 = (v11 + *(v11 + 5));
          snprintf(&dword_100010098, 0x20uLL, "%x:%x:%x:%x:%x:%x", v12[8], v12[9], v12[10], v12[11], v12[12], v12[13]);
        }

        else
        {
          strcpy(&dword_100010098, "NONE");
        }

        fprintf(v10, "  Link-layer address: %s\n", &dword_100010098);
      }

      fprintf(qword_100010090, "  MTU: %d\n", *(i + 80));
      fprintf(qword_100010090, "  DefaultLifetime: %d, MaxAdvInterval: %d, MinAdvInterval: %d\n", *(i + 84), *(i + 88), *(i + 92));
      v13 = "M";
      if (!*(i + 96))
      {
        v13 = &unk_1000091B7;
      }

      v14 = "O";
      if (!*(i + 100))
      {
        v14 = &unk_1000091B7;
      }

      fprintf(qword_100010090, "  Flags: %s%s%s, ", v13, v14, &unk_1000091B7);
      fprintf(qword_100010090, "Preference: %s, ", *(off_10000C220 + (*(i + 104) & 0x7F8)));
      fprintf(qword_100010090, "MTU: %d\n", *(i + 108));
      fprintf(qword_100010090, "  ReachableTime: %d, RetransTimer: %d, CurHopLimit: %d\n", *(i + 112), *(i + 116), *(i + 120));
      if (*(i + 232))
      {
        fprintf(qword_100010090, "  Clock skew: %ldsec\n", *(i + 232));
      }

      v15 = *(i + 128);
      if (v15 != (i + 128))
      {
        v16 = 0;
        tv_sec = v38.tv_sec;
        while (1)
        {
          if ((v16 & 1) == 0)
          {
            fwrite("  Prefixes:\n", 0xCuLL, 1uLL, qword_100010090);
          }

          v18 = qword_100010090;
          v19 = inet_ntop(30, v15 + 10, v39, 0x2Eu);
          fprintf(v18, "    %s/%d(", v19, *(v15 + 18));
          v20 = *(v15 + 19);
          if (v20 == 3)
          {
            break;
          }

          if (v20 == 2)
          {
            v21 = qword_100010090;
            v22 = "CONFIG, ";
LABEL_32:
            v23 = 8;
LABEL_34:
            fwrite(v22, v23, 1uLL, v21);
            goto LABEL_35;
          }

          if (v20 == 1)
          {
            v21 = qword_100010090;
            v22 = "KERNEL, ";
            goto LABEL_32;
          }

LABEL_35:
          if (*(v15 + 8) == -1)
          {
            fwrite("vltime: infinity", 0x10uLL, 1uLL, qword_100010090);
          }

          else
          {
            fprintf(qword_100010090, "vltime: %ld", *(v15 + 8));
          }

          v24 = v15[5];
          if (v24)
          {
            v25 = v24 <= tv_sec;
            v26 = v24 - tv_sec;
            if (v25)
            {
              v26 = 0;
            }

            fprintf(qword_100010090, "(decr,expire %ld), ", v26);
          }

          else
          {
            fwrite(", ", 2uLL, 1uLL, qword_100010090);
          }

          if (*(v15 + 12) == -1)
          {
            fwrite("pltime: infinity", 0x10uLL, 1uLL, qword_100010090);
          }

          else
          {
            fprintf(qword_100010090, "pltime: %ld", *(v15 + 12));
          }

          v27 = v15[7];
          if (v27)
          {
            v25 = v27 <= tv_sec;
            v28 = v27 - tv_sec;
            if (v25)
            {
              v28 = 0;
            }

            fprintf(qword_100010090, "(decr,expire %ld), ", v28);
          }

          else
          {
            fwrite(", ", 2uLL, 1uLL, qword_100010090);
          }

          v29 = "L";
          if (!*(v15 + 16))
          {
            v29 = &unk_1000091B7;
          }

          v30 = "A";
          if (!*(v15 + 17))
          {
            v30 = &unk_1000091B7;
          }

          fprintf(qword_100010090, "flags: %s%s%s", v29, v30, &unk_1000091B7);
          v31 = v15[3];
          if (v31)
          {
            v32 = sub_100005828(v31);
            if (v32)
            {
              fprintf(qword_100010090, ", expire in: %ld", *v32);
            }
          }

          v16 = 1;
          fwrite(")\n", 2uLL, 1uLL, qword_100010090);
          v15 = *v15;
          if (v15 == (i + 128))
          {
            goto LABEL_61;
          }
        }

        v21 = qword_100010090;
        v22 = "DYNAMIC, ";
        v23 = 9;
        goto LABEL_34;
      }

LABEL_61:
      v33 = *(i + 248);
      if (v33 != i + 240)
      {
        v34 = 0;
        do
        {
          if ((v34 & 1) == 0)
          {
            fwrite("  Route Information:\n", 0x15uLL, 1uLL, qword_100010090);
          }

          v35 = qword_100010090;
          v36 = inet_ntop(30, (v33 + 28), v39, 0x2Eu);
          fprintf(v35, "    %s/%d (", v36, *(v33 + 24));
          fprintf(qword_100010090, "preference: %s, ", *(off_10000C220 + (*(v33 + 20) & 0x7F8)));
          if (*(v33 + 16) == -1)
          {
            fwrite("lifetime: infinity", 0x12uLL, 1uLL, qword_100010090);
          }

          else
          {
            fprintf(qword_100010090, "lifetime: %ld", *(v33 + 16));
          }

          v34 = 1;
          fwrite(")\n", 2uLL, 1uLL, qword_100010090);
          v33 = *(v33 + 8);
        }

        while (v33 != i + 240);
      }
    }

    else
    {
      sub_100000700();
    }
  }

  return fclose(qword_100010090);
}

void *sub_100003DC4(const char *a1)
{
  *v22 = xmmword_10000A798;
  v23 = 3;
  size = 0;
  if (sysctl(v22, 6u, 0, &size, 0, 0) < 0)
  {
    return 0;
  }

  v2 = malloc_type_malloc(size, 0x249644D1uLL);
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  if (sysctl(v22, 6u, v2, &size, 0, 0) < 0)
  {
LABEL_32:
    free(v3);
    return 0;
  }

  if (size < 1)
  {
    if (size)
    {
      goto LABEL_30;
    }

    goto LABEL_32;
  }

  v4 = 0;
  v5 = (v3 + size);
  v20 = 0u;
  v21 = 0u;
  memset(v19, 0, sizeof(v19));
  v6 = v3;
  while (1)
  {
    if (*(v6 + 3) != 14)
    {
      goto LABEL_24;
    }

    v7 = 0;
    v8 = v6 + 56;
    v9 = *(v6 + 1);
    do
    {
      if ((v9 >> v7))
      {
        *(v19 + v7) = v8;
        v10 = *v8;
        if ((v10 & 3) != 0)
        {
          v11 = (v10 | 3) + 1;
        }

        else
        {
          v11 = *v8;
        }

        *v8;
        if (*v8)
        {
          v12 = v11;
        }

        else
        {
          v12 = 4;
        }

        v8 += v12;
      }

      else
      {
        *(v19 + v7) = 0;
      }

      ++v7;
    }

    while (v7 != 8);
    v13 = v20;
    if (!v20 || *(v20 + 1) != 18)
    {
      goto LABEL_24;
    }

    v14 = strlen(a1);
    if (v14 != *(v20 + 5))
    {
      v4 = v20;
      goto LABEL_24;
    }

    v4 = v20;
    if (!strncmp((v20 + 8), a1, v14))
    {
      break;
    }

LABEL_24:
    v6 = (v6 + *v6);
    if (v6 >= v5)
    {
      goto LABEL_25;
    }
  }

  v4 = v13;
LABEL_25:
  if (v6 == v5)
  {
    goto LABEL_32;
  }

  if (!v4)
  {
LABEL_30:
    v16 = 0;
    goto LABEL_31;
  }

  v15 = malloc_type_malloc(*v4, 0xCDF7D827uLL);
  v16 = v15;
  if (v15)
  {
    memcpy(v15, v4, *v4);
  }

LABEL_31:
  free(v3);
  return v16;
}

uint64_t sub_100003FE0(const char *a1)
{
  v8 = 0;
  if (getifaddrs(&v8) < 0)
  {
    return 0;
  }

  v2 = &v8;
  do
  {
    v2 = *v2;
    if (!v2)
    {
      goto LABEL_8;
    }
  }

  while (strcmp(v2[1], a1));
  v3 = v2[6];
  if (!v3)
  {
LABEL_8:
    freeifaddrs(v8);
    goto LABEL_9;
  }

  ifa_name_low = LODWORD(v3->ifa_name);
  freeifaddrs(v8);
  if (ifa_name_low)
  {
    return ifa_name_low;
  }

LABEL_9:
  v9 = 0u;
  v10 = 0u;
  v5 = socket(30, 2, 0);
  if (v5 < 0)
  {
    return 0;
  }

  v6 = v5;
  BYTE1(v10) = 30;
  __strlcpy_chk();
  if (ioctl(v6, 0xC0206933uLL, &v9) < 0)
  {
    close(v6);
    return 0;
  }

  close(v6);
  return v10;
}

uint64_t sub_100004104(unsigned int a1, int a2)
{
  *v8 = 0u;
  v9 = 0u;
  v4 = socket(30, 2, 0);
  if (v4 < 0)
  {
    v7 = __error();
    strerror(*v7);
    sub_100000700();
  }

  else
  {
    v5 = v4;
    if_indextoname(a1, v8);
    if ((ioctl(v5, 0xC0206911uLL, v8) & 0x80000000) == 0)
    {
      close(v5);
      return v9;
    }

    sub_100000700();
    close(v5);
  }

  return a2 & 0xFFFFFFFE;
}

uint64_t sub_100004224(uint64_t result, uint64_t a2)
{
  *a2 = 1;
  if (*(result + 4) != 6)
  {
    v4 = *(result + 4);
    sub_100000700();
    exit(1);
  }

  *(a2 + 1) = 1;
  v2 = result + *(result + 5);
  v3 = *(v2 + 8);
  *(a2 + 6) = *(v2 + 12);
  *(a2 + 2) = v3;
  return result;
}

unsigned __int16 *sub_10000428C(unsigned __int16 *a1, unint64_t a2, int a3, void *a4, unsigned int a5)
{
  *a4 = 0;
  if (a1 < a2)
  {
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v5 = a1;
    while (1)
    {
      v6 = *v5;
      if (!*v5)
      {
        sub_100000700();
        return v5;
      }

      v7 = *(v5 + 3);
      if (((a5 >> v7) & 1) != 0 && v7 <= 0xE)
      {
        if (((1 << v7) & 0x16) != 0)
        {
          v8 = 0;
          v9 = v5 + 46;
          v10 = *(v5 + 3);
          do
          {
            if ((v10 >> v8))
            {
              *(&v24 + v8) = v9;
              v11 = *v9;
              if ((v11 & 3) != 0)
              {
                v12 = (v11 | 3) + 1;
              }

              else
              {
                v12 = *v9;
              }

              *v9;
              if (*v9)
              {
                v13 = v12;
              }

              else
              {
                v13 = 4;
              }

              v9 += v13;
            }

            else
            {
              *(&v24 + v8) = 0;
            }

            ++v8;
          }

          while (v8 != 8);
          if (v24)
          {
            if (*(v24 + 1) == 30)
            {
              v14 = *(v24 + 8);
              if (v14 != 255 && (v14 != 254 || (*(v24 + 9) & 0xC0) != 0x80) && *(&v24 + 1) && *(*(&v24 + 1) + 1) == 18 && (!a3 || *(*(&v24 + 1) + 2) == a3) && v25)
              {
                goto LABEL_56;
              }
            }
          }
        }

        else if (((1 << v7) & 0x3000) != 0)
        {
          v15 = 0;
          v16 = v5 + 10;
          v17 = *(v5 + 1);
          do
          {
            if ((v17 >> v15))
            {
              *(&v24 + v15) = v16;
              v18 = *v16;
              if ((v18 & 3) != 0)
              {
                v19 = (v18 | 3) + 1;
              }

              else
              {
                v19 = *v16;
              }

              *v16;
              if (*v16)
              {
                v20 = v19;
              }

              else
              {
                v20 = 4;
              }

              v16 += v20;
            }

            else
            {
              *(&v24 + v15) = 0;
            }

            ++v15;
          }

          while (v15 != 8);
          if (*(&v26 + 1))
          {
            v21 = *(*(&v26 + 1) + 1);
            if (v21 == 2 || v21 == 30 && (v22 = *(*(&v26 + 1) + 8), v22 != 255) && (v22 != 254 || (*(*(&v26 + 1) + 9) & 0xC0) != 0x80))
            {
              if (!a3 || v5[6] == a3)
              {
LABEL_56:
                *a4 = v6;
                return v5;
              }
            }
          }
        }

        else if (v7 == 14)
        {
          goto LABEL_56;
        }
      }

      v5 = (v5 + v6);
      if (v5 >= a2)
      {
        return v5;
      }
    }
  }

  return a1;
}

uint64_t sub_1000044D0(uint64_t a1)
{
  v1 = 0;
  memset(v8, 0, sizeof(v8));
  v2 = (a1 + 92);
  v3 = *(a1 + 12);
  do
  {
    if ((v3 >> v1))
    {
      *(v8 + v1) = v2;
      v4 = *v2;
      if ((v4 & 3) != 0)
      {
        v5 = (v4 | 3) + 1;
      }

      else
      {
        v5 = *v2;
      }

      *v2;
      if (*v2)
      {
        v6 = v5;
      }

      else
      {
        v6 = 4;
      }

      v2 += v6;
    }

    else
    {
      *(v8 + v1) = 0;
    }

    ++v1;
  }

  while (v1 != 8);
  return *&v8[0] + 8;
}

uint64_t sub_10000457C(uint64_t a1)
{
  v1 = 0;
  memset(v8, 0, sizeof(v8));
  v2 = (a1 + 92);
  v3 = *(a1 + 12);
  do
  {
    if ((v3 >> v1))
    {
      *(v8 + v1) = v2;
      v4 = *v2;
      if ((v4 & 3) != 0)
      {
        v5 = (v4 | 3) + 1;
      }

      else
      {
        v5 = *v2;
      }

      *v2;
      if (*v2)
      {
        v6 = v5;
      }

      else
      {
        v6 = 4;
      }

      v2 += v6;
    }

    else
    {
      *(v8 + v1) = 0;
    }

    ++v1;
  }

  while (v1 != 8);
  return *(*(&v8[0] + 1) + 2);
}

uint64_t sub_100004638(uint64_t a1)
{
  v1 = 0;
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = (a1 + 92);
  v3 = *(a1 + 12);
  do
  {
    if ((v3 >> v1))
    {
      *(&v10 + v1) = v2;
      v4 = *v2;
      if ((v4 & 3) != 0)
      {
        v5 = (v4 | 3) + 1;
      }

      else
      {
        v5 = *v2;
      }

      *v2;
      if (*v2)
      {
        v6 = v5;
      }

      else
      {
        v6 = 4;
      }

      v2 += v6;
    }

    else
    {
      *(&v10 + v1) = 0;
    }

    ++v1;
  }

  while (v1 != 8);
  v7 = (v11 + 8);
  v8 = (v11 + *v11);

  return sub_1000046FC(v7, v8);
}

uint64_t sub_1000046FC(_BYTE *a1, _BYTE *a2)
{
  if (a1 >= a2)
  {
    return 0;
  }

  v2 = 0;
  do
  {
    v3 = *a1;
    v4 = 0xFFFFFFFFLL;
    if (v3 <= 0xEF)
    {
      if (*a1 > 0xBFu)
      {
        if (v3 == 192)
        {
          v2 = (v2 + 2);
        }

        else
        {
          if (v3 != 224)
          {
            return v4;
          }

          v2 = (v2 + 3);
        }
      }

      else if (*a1)
      {
        if (v3 != 128)
        {
          return v4;
        }

        v2 = (v2 + 1);
      }
    }

    else if (*a1 <= 0xFBu)
    {
      if (v3 == 240)
      {
        v2 = (v2 + 4);
      }

      else
      {
        if (v3 != 248)
        {
          return v4;
        }

        v2 = (v2 + 5);
      }
    }

    else
    {
      switch(v3)
      {
        case 0xFCu:
          v2 = (v2 + 6);
          break;
        case 0xFEu:
          v2 = (v2 + 7);
          break;
        case 0xFFu:
          v2 = (v2 + 8);
          break;
        default:
          return v4;
      }
    }

    ++a1;
    v4 = v2;
  }

  while (a1 != a2);
  return v4;
}

unsigned __int16 *sub_1000047D8(int a1)
{
  v1 = &off_100010008;
  while (1)
  {
    v1 = *v1;
    if (!v1)
    {
      break;
    }

    v2 = v1[2];
    if (v2[6] == a1)
    {
      return v2;
    }
  }

  return 0;
}

uint64_t sub_100004808()
{
  for (i = off_100010008; off_100010008; i = off_100010008)
  {
    v1 = *i;
    v2 = i[1];
    if (*i)
    {
      v3 = *i;
    }

    else
    {
      v3 = &off_100010008;
    }

    v3[1] = v2;
    *v2 = v1;
    free(i);
  }

  if (qword_100010780)
  {
    free(qword_100010780);
    qword_100010788 = 0;
  }

  *v13 = xmmword_10000A780;
  v14 = 3;
  if (sysctl(v13, 6u, 0, &qword_100010788, 0, 0) < 0 || (v4 = malloc_type_malloc(qword_100010788, 0x55418606uLL), (qword_100010780 = v4) == 0) || (result = sysctl(v13, 6u, v4, &qword_100010788, 0, 0), (result & 0x80000000) != 0))
  {
LABEL_30:
    sub_100000700();
    exit(1);
  }

  if (qword_100010788 >= 1)
  {
    v6 = qword_100010780 + qword_100010788;
    v7 = qword_100010780;
LABEL_13:
    while (*v7)
    {
      if (*(v7 + 3) != 14)
      {
        goto LABEL_30;
      }

      v8 = &off_100010008;
      while (1)
      {
        v8 = *v8;
        if (!v8)
        {
          break;
        }

        if (*(v8[2] + 6) == v7[6])
        {
          v12 = v7[6];
          sub_100000700();
          goto LABEL_13;
        }
      }

      result = malloc_type_malloc(0x18uLL, 0xA0040A8488062uLL);
      if (!result)
      {
        v11 = __error();
        strerror(*v11);
        goto LABEL_30;
      }

      v9 = off_100010010;
      *result = 0;
      *(result + 8) = v9;
      *(result + 16) = v7;
      *v9 = result;
      off_100010010 = result;
      v10 = *v7;
      do
      {
        v7 = (v7 + v10);
        if (v7 >= v6)
        {
          break;
        }

        v10 = *v7;
        if (!*v7)
        {
          return sub_100000700();
        }
      }

      while (*(v7 + 3) == 12);
      if (v7 >= v6)
      {
        return result;
      }
    }

    return sub_100000700();
  }

  return result;
}

_DWORD *sub_100004ADC(int a1, uint64_t a2, unsigned __int8 *a3, uint64_t a4, void *a5)
{
  v50 = a5;
  v9 = inet_ntop(30, (a4 + 8), v53, 0x2Eu);
  v46 = inet_ntop(30, &v50, v54, 0x2Eu);
  v47 = if_indextoname(*(a3 + 4), v52);
  v45 = v9;
  result = sub_100000700();
  if (a1 <= 0xF)
  {
    inet_ntop(30, (a4 + 8), v53, 0x2Eu);
    inet_ntop(30, &v50, v54, 0x2Eu);
    if_indextoname(*(a3 + 4), v52);
    return sub_100000700();
  }

  if (*a3 == 255 && (xmmword_10001087C != *a3 || *(&xmmword_10001087C + 1) != *(a3 + 1)))
  {
    inet_ntop(30, &v50, v53, 0x2Eu);
    inet_ntop(30, (a4 + 8), v54, 0x2Eu);
    if_indextoname(*(a3 + 4), v52);
    return sub_100000700();
  }

  v11 = *(a2 + 1);
  if (v11 == 255 || v11 == 1)
  {
    return result;
  }

  if (*(a2 + 1))
  {
    return sub_100000700();
  }

  if (a1 <= 0x27)
  {
    goto LABEL_104;
  }

  if (*v50 == 255)
  {
    v14 = *(v50 + 1);
    v15 = v14 & 0xF;
    v16 = (v14 & 0xF0) != 0x30 && v15 == 2;
    v17 = v16;
    if (v15 != 5 && !v17)
    {
      inet_ntop(30, v50, &v55, 0x2Eu);
      goto LABEL_104;
    }
  }

  v13 = *(a2 + 4);
  if (qword_1000100B8 > v13)
  {
    inet_ntop(30, (a4 + 8), &v55, 0x2Eu);
LABEL_104:
    sub_100000700();
    return sub_100000700();
  }

  if (qword_1000100B8 != v13)
  {
    xmmword_1000100E0 = 0u;
    unk_1000100F0 = 0u;
    xmmword_1000100C0 = 0u;
    *algn_1000100D0 = 0u;
LABEL_35:
    qword_1000100B8 = v13;
    goto LABEL_36;
  }

  if (*(a2 + 9) < 0 || (*(&qword_1000100B8 + ((*(a2 + 8) >> 2) & 0x38) + 8) & (1 << *(a2 + 8))) == 0)
  {
    goto LABEL_35;
  }

  if (*(a2 + 9) >= 0x40u)
  {
    v45 = *(a2 + 8);
    v46 = inet_ntop(30, (a4 + 8), &v55, 0x2Eu);
    result = sub_100000700();
  }

LABEL_36:
  if ((*(a2 + 9) & 0xC0) != 0x80)
  {
    result = sub_100004808();
    if (a1 < 17)
    {
LABEL_103:
      *(&qword_1000100B8 + ((*(a2 + 8) >> 2) & 0x38) + 8) |= 1 << *(a2 + 8);
      return result;
    }

    v18 = a2 + a1;
    v19 = (a2 + 16);
    v20 = a1 - 16;
    while (1)
    {
      if (v20 < 0x18)
      {
        goto LABEL_104;
      }

      v21 = v19[1];
      v22 = 8 * v19[1];
      if (v20 < (8 * v21))
      {
        goto LABEL_104;
      }

      v23 = v21 >= 3 && ((v21 + 1) & 3) == 0;
      v49 = v20 - 8 * v21;
      if (!v23)
      {
        v45 = v19[1];
LABEL_46:
        sub_100000700();
        goto LABEL_47;
      }

      if (*v19 - 1 >= 3)
      {
        v45 = *v19;
        goto LABEL_46;
      }

      v24 = v19[3];
      if (v24 >= 0x81)
      {
        v45 = v19[3];
        goto LABEL_46;
      }

      v25 = &v19[v22];
      if (v21 != 3)
      {
        v26 = v19 + 24;
        while (1)
        {
          v27 = *v26;
          v28 = v26[1];
          if ((v28 + v27) >= 0x81)
          {
            break;
          }

          v26 += 32;
          if (v26 >= v25)
          {
            goto LABEL_58;
          }
        }

        v46 = v26[1];
        v47 = (v28 + v27);
        v45 = *v26;
        goto LABEL_46;
      }

LABEL_58:
      if (dword_100010018 == -1)
      {
        dword_100010018 = socket(30, 2, 0);
        if (dword_100010018 < 0)
        {
          v44 = __error();
          strerror(*v44);
          sub_100000700();
          exit(1);
        }

        LOBYTE(v24) = v19[3];
      }

      v48 = v18;
      memset(v59, 0, sizeof(v59));
      v57 = 0u;
      v58 = 0u;
      v55 = 0u;
      v56 = 0u;
      LOBYTE(v56) = 1;
      BYTE1(v56) = v24;
      WORD1(v56) = *(v19 + 2);
      WORD4(v57) = 7708;
      v58 = *(v19 + 8);
      if (if_indextoname(1u, &v55))
      {
        break;
      }

LABEL_98:
      result = __error();
      if (*result == 6 || (result = __error(), !*result))
      {
        v18 = v48;
        goto LABEL_48;
      }

      v43 = __error();
      v45 = strerror(*v43);
      sub_100000700();
      v18 = v48;
LABEL_47:
      result = sub_100000700();
      v22 = v22;
LABEL_48:
      v19 += v22;
      v20 = v49;
      if (v19 >= v18)
      {
        goto LABEL_103;
      }
    }

    v29 = 1;
    while (1)
    {
      v30 = sub_1000047D8(v29);
      if (!v30)
      {
        goto LABEL_96;
      }

      if (*(a2 + 9) & 0x20) != 0 || (v30[4])
      {
        v31 = v19 + 24;
        if (v21 != 3)
        {
          do
          {
            WORD2(v56) = *v31;
            BYTE6(v56) = BYTE6(v56) & 0xFC | (v31[2] >> 7) | (v31[2] >> 5) & 2;
            *(&v56 + 1) = vrev32_s8(*(v31 + 4));
            LOBYTE(v57) = v57 & 0xFC | (v31[3] >> 7) | (v31[3] >> 5) & 2;
            BYTE4(v57) = BYTE4(v57) & 0xFC | ((*(v31 + 3) & 0x80) != 0) | (*(v31 + 3) >> 5) & 2;
            LOWORD(v59[1]) = 7708;
            *&v59[3] = *(v31 + 1);
            if (ioctl(dword_100010018, dword_10000A7B0[*v19], &v55, v45, v46, v47) < 0 && *__error() != 49)
            {
              v34 = __error();
              v45 = strerror(*v34);
              sub_100000700();
            }

            if (*v19 == 2 && *(v19 + 1) == *(v31 + 2) && *(v19 + 2) == *(v31 + 3))
            {
              v36 = v19[3];
              if (v36 == *v31 && v36 == v31[1])
              {
                v37 = sub_100007358(v29);
                if (v37)
                {
                  v38 = v37 + 16;
                  for (i = v37[16]; i != v38; i = *i)
                  {
                    v51.tv_sec = 0;
                    *&v51.tv_usec = 0;
                    if (sub_1000072AC((i + 80), *(i + 72), v19 + 8, v19[3]))
                    {
                      *(i + 32) = bswap32(*(v31 + 1));
                      *(i + 48) = bswap32(*(v31 + 2));
                      v40 = BYTE4(v57);
                      if (BYTE4(v57))
                      {
                        gettimeofday(&v51, 0);
                        v41 = v51.tv_sec + *(i + 32);
                        v40 = BYTE4(v57);
                      }

                      else
                      {
                        v41 = 0;
                      }

                      *(i + 40) = v41;
                      if ((v40 & 2) != 0)
                      {
                        gettimeofday(&v51, 0);
                        v42 = v51.tv_sec + *(i + 48);
                      }

                      else
                      {
                        v42 = 0;
                      }

                      *(i + 56) = v42;
                    }
                  }
                }
              }
            }

            v31 += 32;
          }

          while (v31 < v25);
          goto LABEL_97;
        }

        v32 = *v19;
        if (v32 != 1)
        {
          WORD2(v56) = 0;
          BYTE6(v56) &= 0xFCu;
          LOWORD(v59[1]) = 0;
          *(&v56 + 1) = 0;
          *&v57 = 0;
          *&v59[3] = in6addr_any;
          if (ioctl(dword_100010018, dword_10000A7B0[v32], &v55) < 0 && *__error() != 49)
          {
            break;
          }
        }
      }

LABEL_97:
      if (!if_indextoname(++v29, &v55))
      {
        goto LABEL_98;
      }
    }

    v33 = __error();
    v45 = strerror(*v33);
LABEL_96:
    sub_100000700();
    goto LABEL_97;
  }

  return result;
}

double sub_1000053B4()
{
  xmmword_100010110 = 0u;
  *&dword_100010120 = 0u;
  qword_100010140 = 0;
  xmmword_100010130 = 0u;
  qword_100010100 = &qword_100010100;
  *algn_100010108 = &qword_100010100;
  *&result = 0x7FFFFFFFLL;
  *(&xmmword_100010110 + 8) = xmmword_10000A7C0;
  return result;
}

char *sub_1000053E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = malloc_type_malloc(0x48uLL, 0x10A00406FDF35A8uLL);
  if (!v8 || (v9 = v8, *(v8 + 8) = 0, *(v8 + 2) = 0u, *(v8 + 3) = 0u, *v8 = 0u, *(v8 + 1) = 0u, !a1))
  {
    sub_100000700();
    exit(1);
  }

  *(v8 + 5) = a1;
  *(v8 + 6) = a3;
  *(v8 + 7) = a2;
  *(v8 + 8) = a4;
  *(v8 + 24) = xmmword_10000A7C0;
  insque(v8, &qword_100010100);
  return v9;
}

void sub_1000054C4(void **a1)
{
  remque(*a1);
  free(*a1);
  *a1 = 0;
}

__n128 sub_1000054F8(uint64_t a1, uint64_t a2)
{
  v8.tv_sec = 0;
  *&v8.tv_usec = 0;
  gettimeofday(&v8, 0);
  v5 = *(a1 + 8) + v8.tv_usec;
  if (v5 > 999999)
  {
    v5 -= 1000000;
    v6 = v8.tv_sec + *a1 + 1;
  }

  else
  {
    v6 = *a1 + v8.tv_sec;
  }

  *(a2 + 32) = v5;
  *(a2 + 24) = v6;
  if (v6 < *(&xmmword_100010110 + 1) || (v6 == *(&xmmword_100010110 + 1) ? (v7 = v5 < dword_100010120) : (v7 = 0), v7))
  {
    result = *(a2 + 24);
    *(&xmmword_100010110 + 8) = result;
  }

  return result;
}

uint64_t sub_1000055B4(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 8) + *(result + 8);
  if (v3 > 999999)
  {
    v3 -= 1000000;
    v4 = *result + *a2 + 1;
  }

  else
  {
    v4 = *a2 + *result;
  }

  *(a3 + 8) = v3;
  *a3 = v4;
  return result;
}

uint64_t *sub_100005604()
{
  v16.tv_sec = 0;
  *&v16.tv_usec = 0;
  gettimeofday(&v16, 0);
  *(&xmmword_100010110 + 8) = xmmword_10000A7C0;
  v0 = qword_100010100;
  if (qword_100010100 == &qword_100010100)
  {
    v9 = 0x7FFFFFFF;
    v8 = 0x7FFFFFFFLL;
    goto LABEL_21;
  }

  tv_sec = v16.tv_sec;
  tv_usec = v16.tv_usec;
  do
  {
    v3 = *v0;
    v5 = (v0 + 24);
    v4 = *(v0 + 24);
    if (v4 < tv_sec || v4 == tv_sec && (v4 = tv_sec, *(v0 + 32) <= tv_usec))
    {
      if (!(*(v0 + 40))(*(v0 + 48)))
      {
        goto LABEL_18;
      }

      v6 = *(v0 + 56);
      if (v6)
      {
        v6(*(v0 + 64), v0 + 24);
      }

      v7 = tv_usec + *(v0 + 32);
      if (v7 >= 1000000)
      {
        v7 -= 1000000;
        v4 = *v5 + tv_sec + 1;
      }

      else
      {
        v4 = tv_sec + *v5;
      }

      *(v0 + 32) = v7;
      *(v0 + 24) = v4;
    }

    if (v4 < *(&xmmword_100010110 + 1) || v4 == *(&xmmword_100010110 + 1) && *(v0 + 32) < dword_100010120)
    {
      *(&xmmword_100010110 + 8) = *v5;
    }

LABEL_18:
    v0 = v3;
  }

  while (v3 != &qword_100010100);
  v8 = *(&xmmword_100010110 + 1);
  v9 = dword_100010120;
LABEL_21:
  if (v8 == 0x7FFFFFFF && v9 == 0x7FFFFFFF)
  {
    return 0;
  }

  if (v8 < v16.tv_sec || v8 == v16.tv_sec && v9 < v16.tv_usec)
  {
    v11 = 0;
    v12 = 0;
  }

  else
  {
    v13 = __OFSUB__(v9, v16.tv_usec);
    v11 = v9 - v16.tv_usec;
    v14 = (v11 < 0) ^ v13;
    if (v14)
    {
      v11 += 1000000;
    }

    if (v14)
    {
      v15 = ~v16.tv_sec;
    }

    else
    {
      v15 = -v16.tv_sec;
    }

    v12 = v15 + v8;
  }

  result = &qword_100010148;
  dword_100010150 = v11;
  qword_100010148 = v12;
  return result;
}

uint64_t sub_1000057E4(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(result + 8) - *(a2 + 8);
  if (v3 < 0)
  {
    v3 += 1000000;
    v4 = *result + ~*a2;
  }

  else
  {
    v4 = *result - *a2;
  }

  *(a3 + 8) = v3;
  *a3 = v4;
  return result;
}

uint64_t *sub_100005828(uint64_t a1)
{
  gettimeofday(&qword_100010168, 0);
  v2 = *(a1 + 24);
  if (v2 < qword_100010168 || ((v3 = *(a1 + 32), v2 == qword_100010168) ? (v4 = v3 <= dword_100010170) : (v4 = 0), v4))
  {
    sub_100000700();
    v7 = 0;
    v9 = 0;
  }

  else
  {
    v5 = __OFSUB__(v3, dword_100010170);
    v7 = v3 - dword_100010170;
    v6 = (v7 < 0) ^ v5;
    if (v6)
    {
      v7 += 1000000;
    }

    if (v6)
    {
      v8 = ~qword_100010168;
    }

    else
    {
      v8 = -qword_100010168;
    }

    v9 = v8 + v2;
  }

  result = &qword_100010158;
  dword_100010160 = v7;
  qword_100010158 = v9;
  return result;
}

void start(int a1, char **a2)
{
  v4 = 0;
  do
  {
    while (1)
    {
      while (1)
      {
        while (1)
        {
          while (1)
          {
            v5 = getopt(a1, a2, "c:dDF:fMp:Rs");
            if (v5 <= 98)
            {
              break;
            }

            if (v5 <= 101)
            {
              if (v5 == 99)
              {
                qword_1000107A0 = optarg;
              }

              else if (v5 == 100)
              {
                dword_100010794 = 1;
              }
            }

            else
            {
              switch(v5)
              {
                case 'f':
                  v4 = 1;
                  break;
                case 'p':
                  off_100010060 = optarg;
                  break;
                case 's':
                  dword_100010798 = 1;
                  break;
              }
            }
          }

          if (v5 <= 76)
          {
            break;
          }

          if (v5 == 77)
          {
            qword_100010178 = optarg;
          }

          else if (v5 == 82)
          {
            fwrite("rtadvd: the -R option is currently ignored.\n", 0x2CuLL, 1uLL, __stderrp);
          }
        }

        if (v5 != 68)
        {
          break;
        }

        dword_100010794 = 2;
      }

      if (v5 != 70)
      {
        break;
      }

      off_100010068 = optarg;
    }
  }

  while (v5 != -1);
  v6 = optind;
  if (a1 == optind)
  {
    v7 = __stderrp;
    v8 = "usage: rtadvd [-dDfMRs] [-c conffile] [-F dumpfile] [-p pidfile] interfaces...\n";
    v9 = 79;
LABEL_34:
    fwrite(v8, v9, 1uLL, v7);
    goto LABEL_35;
  }

  v10 = &a2[optind];
  sub_1000053B4();
  v11 = time(0);
  srandom(v11);
  sub_100004808();
  v12 = v6 - a1;
  do
  {
    v13 = *v10++;
    sub_100000F54(v13);
  }

  while (!__CFADD__(v12++, 1));
  if (inet_pton(30, "ff02::1", &unk_100010028) != 1)
  {
    v7 = __stderrp;
    v8 = "fatal: inet_pton failed\n";
    v9 = 24;
    goto LABEL_34;
  }

  qword_100010180 = pidfile_open();
  if (!qword_100010180)
  {
    if (*__error() == 17)
    {
      v15 = getprogname();
      errx(1, "%s already running, pid: %d", v15, 0);
    }

    v103 = "main";
    sub_100000700();
  }

  if (!v4)
  {
    daemon(1, 0);
  }

  v16 = qword_1000107A8;
  qword_100010768 = malloc_type_malloc(0x30uLL, 0x100004077774924uLL);
  if (!qword_100010768 || (qword_100010770 = malloc_type_malloc(0x30uLL, 0x100004077774924uLL)) == 0)
  {
LABEL_64:
    sub_100000700();
LABEL_35:
    exit(1);
  }

  *v116 = 0u;
  *__s1 = 0u;
  v123 = 0uLL;
  v124 = 0;
  v17 = socket(30, 3, 58);
  dword_1000107B0 = v17;
  if (v17 < 0)
  {
    v18 = __error();
    strerror(*v18);
    goto LABEL_64;
  }

  setsockopt(v17, 0xFFFF, 4230, &unk_100010040, 4u);
  *v122 = 1;
  if (setsockopt(dword_1000107B0, 41, 61, v122, 4u) < 0 || (*v122 = 1, setsockopt(dword_1000107B0, 41, 37, v122, 4u) < 0) || (*v122 = 1, setsockopt(dword_1000107B0, 41, 62, v122, 4u) < 0))
  {
    v19 = __error();
    strerror(*v19);
    goto LABEL_64;
  }

  *v116 = 0u;
  *__s1 = 0u;
  if (dword_100010790)
  {
    v20 = 1120;
  }

  else
  {
    v20 = 96;
  }

  LODWORD(__s1[0]) = v20;
  if (setsockopt(dword_1000107B0, 58, 18, v116, 0x20u) < 0)
  {
LABEL_60:
    v23 = __error();
    strerror(*v23);
    goto LABEL_64;
  }

  if (inet_pton(30, "ff02::2", &v123) != 1)
  {
    goto LABEL_64;
  }

  for (; v16; v16 = *v16)
  {
    v124 = *(v16 + 44);
    if (setsockopt(dword_1000107B0, 41, 12, &v123, 0x14u) < 0)
    {
      goto LABEL_60;
    }
  }

  if (dword_100010790)
  {
    if (inet_pton(30, "ff05::2", &xmmword_10001087C) != 1)
    {
      goto LABEL_64;
    }

    v123 = xmmword_10001087C;
    if (qword_100010178)
    {
      v124 = if_nametoindex(qword_100010178);
      if (!v124)
      {
        goto LABEL_64;
      }
    }

    else
    {
      v124 = *(qword_1000107A8 + 44);
    }

    if (setsockopt(dword_1000107B0, 41, 12, &v123, 0x14u) < 0)
    {
      goto LABEL_60;
    }
  }

  qword_100010820 = &unk_100010188;
  *algn_100010828 = 1500;
  qword_1000107C0 = &unk_100010860;
  dword_1000107C8 = 28;
  qword_1000107D0 = &qword_100010820;
  dword_1000107D8 = 1;
  qword_1000107E0 = qword_100010768;
  dword_1000107F8 = 28;
  dword_1000107E8 = 48;
  qword_100010800 = &unk_100010840;
  dword_100010808 = 1;
  qword_100010810 = qword_100010770;
  dword_100010818 = 48;
  getpid();
  pidfile_write();
  v21 = dword_1000107B0;
  if (dword_100010798)
  {
    dword_10001003C = -1;
  }

  else
  {
    v22 = socket(17, 3, 0);
    dword_10001003C = v22;
    if (v22 < 0)
    {
      goto LABEL_60;
    }

    if (v22 > dword_1000107B0)
    {
      v21 = v22;
    }
  }

  v24 = v21 + 1;
  v25 = (v21 + 1) >> 5;
  if (((v21 + 1) & 0x1FLL) != 0)
  {
    LODWORD(v25) = v25 + 1;
  }

  v26 = 4 * v25;
  v27 = malloc_type_malloc(v26, 0x4B28C51FuLL);
  if (!v27 || (v28 = v27, (v29 = malloc_type_malloc(v26, 0x9463A6ADuLL)) == 0))
  {
    err(1, "malloc", v103);
  }

  __dst = v29;
  v112 = v26;
  bzero(v28, v26);
  v30 = dword_1000107B0;
  if (__darwin_check_fd_set_overflow(dword_1000107B0, v28, 0))
  {
    *&v28[(v30 >> 3) & 0x1FFFFFFFFFFFFFFCLL] |= 1 << v30;
  }

  v31 = &dword_100010000;
  v32 = dword_10001003C;
  if ((dword_10001003C & 0x80000000) == 0 && __darwin_check_fd_set_overflow(dword_10001003C, v28, 0))
  {
    *&v28[(v32 >> 3) & 0x1FFFFFFC] |= 1 << v32;
  }

  signal(15, sub_1000071CC);
  signal(30, sub_1000071DC);
  v33 = &dword_100010000;
  v35 = v112;
  v34 = v24;
  v113 = v28;
LABEL_83:
  v36 = __dst;
  while (1)
  {
    do
    {
      while (1)
      {
LABEL_84:
        memcpy(v36, v28, v35);
        if (dword_1000107B4)
        {
          dword_1000107B4 = 0;
          sub_1000036E4(off_100010068);
        }

        if (dword_1000107B8)
        {
          if (dword_100010794 >= 2)
          {
            sub_100000700();
          }

          v101 = qword_1000107A8;
          if (qword_1000107A8)
          {
            do
            {
              *(v101 + 84) = 0;
              sub_100002B2C(v101);
              v101 = *v101;
            }

            while (v101);
            v102 = qword_1000107A8;
            if (qword_1000107A8)
            {
              do
              {
                sub_1000073D0(v102);
                v102 = *v102;
              }

              while (v102);
            }
          }

          pidfile_remove();
          exit(0);
        }

        v37 = sub_100005604();
        v38 = v37;
        if (v37)
        {
          v104 = *v37;
          v105 = *(v37 + 2);
        }

        sub_100000700();
        v39 = select(v34, v36, 0, 0, v38);
        if ((v39 & 0x80000000) == 0)
        {
          break;
        }

        if (*__error() != 4)
        {
          v63 = __error();
          strerror(*v63);
          sub_100000700();
        }
      }
    }

    while (!v39);
    v40 = v31[15];
    if (v40 != -1 && __darwin_check_fd_set_overflow(v31[15], v36, 0) && ((*(v36->fds_bits + ((v40 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) >> v40) & 1) != 0)
    {
      *v121.__u6_addr8 = 0;
      v41 = read(v31[15], v116, 0x800uLL);
      if (dword_100010794 >= 2)
      {
        sub_1000047C8(v116);
        sub_100000700();
      }

      if (sub_1000047D0(v116) < v41 && dword_100010794 >= 2)
      {
        sub_1000047D0(v116);
        sub_100000700();
      }

      if (v41 < 1)
      {
        goto LABEL_156;
      }

      v114 = 0;
      v42 = 0;
      v43 = v116;
      v44 = &v116[v41];
      while (1)
      {
        v45 = sub_10000428C(v43, v44, 0, &v121, 0x7006u);
        if (!*v121.__u6_addr8)
        {
          goto LABEL_156;
        }

        v46 = v45;
        v47 = sub_1000047C8(v45);
        v48 = v47;
        if ((v47 - 1) < 2)
        {
          v49 = sub_10000457C(v46);
        }

        else
        {
          if ((v47 - 12) >= 2 && v47 != 14)
          {
            if (dword_100010794 < 2)
            {
              goto LABEL_133;
            }

            if_indextoname(v42, v122);
            goto LABEL_119;
          }

          v49 = sub_100004628(v46);
        }

        v42 = v49;
        v50 = &qword_1000107A8;
        do
        {
          v50 = *v50;
          if (!v50)
          {
            if (dword_100010794 < 2)
            {
              goto LABEL_133;
            }

            if_indextoname(v49, v122);
LABEL_119:
            sub_100000700();
            goto LABEL_133;
          }
        }

        while (*(v50 + 11) != v49);
        v51 = sub_1000047D8(v49);
        if (!v51)
        {
          goto LABEL_119;
        }

        v52 = v51;
        v53 = *(v51 + 2);
        if (v48 <= 11)
        {
          if (v48 == 1)
          {
            *(v51 + 2) = sub_100004104(v42, v53);
            if (dword_100010798)
            {
              goto LABEL_128;
            }

            v55 = sub_1000044D0(v116);
            v59 = sub_100004638(v116);
            v60 = v59;
            if ((v59 - 128) <= 0xFFFFFF83)
            {
              goto LABEL_139;
            }

            v62 = sub_1000071EC(v50, v55, v59);
            if (!v62)
            {
              sub_100003510(v50, v42, v55, v60);
              goto LABEL_149;
            }

            if (v62[3])
            {
              sub_10000343C(v62);
              goto LABEL_149;
            }

            if (dword_100010794 < 2)
            {
              goto LABEL_128;
            }
          }

          else
          {
            if (v48 != 2)
            {
LABEL_154:
              if (dword_100010794 >= 2)
              {
                if_indextoname(v42, v122);
                sub_100000700();
              }

              goto LABEL_156;
            }

            *(v51 + 2) = sub_100004104(v42, v53);
            if (dword_100010798)
            {
              goto LABEL_128;
            }

            v55 = sub_1000044D0(v116);
            v56 = sub_100004638(v116);
            if ((v56 - 128) <= 0xFFFFFF83)
            {
LABEL_139:
              sub_100000700();
              goto LABEL_128;
            }

            v61 = sub_1000071EC(v50, v55, v56);
            if (v61)
            {
              sub_1000032F8(v61);
LABEL_149:
              v114 = 1;
              goto LABEL_128;
            }

            if (dword_100010794 < 2)
            {
              goto LABEL_128;
            }
          }

          inet_ntop(30, v55, &v123, 0x2Eu);
          goto LABEL_139;
        }

        if ((v48 - 12) < 2)
        {
          v54 = sub_100004104(v42, v53);
          goto LABEL_127;
        }

        if (v48 != 14)
        {
          goto LABEL_154;
        }

        v54 = sub_100004630(v46);
LABEL_127:
        *(v52 + 2) = v54;
LABEL_128:
        v57 = *(v52 + 2);
        if (v53)
        {
          if (v57)
          {
            if (v114)
            {
              *(v50 + 4) = 0;
              sub_1000075FC(v50);
            }

            else
            {
              v114 = 0;
            }
          }

          else
          {
            sub_100000700();
            sub_1000054C4(v50 + 1);
          }
        }

        else if (v57)
        {
          sub_100000700();
          *(v50 + 4) = 0;
          *(v50 + 10) = 0;
          v58 = sub_1000053E4(sub_10000737C, sub_100007560, v50, v50);
          v50[1] = v58;
          sub_100007560(v50, (v58 + 24));
          sub_1000054F8(v50[1] + 24, v50[1]);
        }

LABEL_133:
        v43 = (v46 + *v121.__u6_addr8);
        if (v46 + *v121.__u6_addr8 >= v44)
        {
LABEL_156:
          v33 = &dword_100010000;
          v35 = v112;
          v34 = v24;
          v28 = v113;
          v36 = __dst;
          v31 = &dword_100010000;
          break;
        }
      }
    }

    v64 = v33[492];
    if (__darwin_check_fd_set_overflow(v64, v36, 0))
    {
      if ((*(v36->fds_bits + ((v64 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) >> v64))
      {
        v121 = in6addr_any;
        dword_1000107E8 = 48;
        v65 = recvmsg(v33[492], &qword_1000107C0, 0);
        if ((v65 & 0x80000000) == 0)
        {
          break;
        }
      }
    }
  }

  if (dword_1000107E8 < 0xC)
  {
    goto LABEL_177;
  }

  v66 = qword_1000107E0;
  if (!qword_1000107E0)
  {
    goto LABEL_177;
  }

  v67 = 0;
  v68 = 0;
  v69 = 0;
  while (1)
  {
    if (v66[1] == 41)
    {
      v70 = v66[2];
      if (v70 != 46)
      {
        goto LABEL_168;
      }

      if (*v66 == 32)
      {
        v67 = v66 + 3;
        v68 = v66[7];
        v121 = *(v66 + 3);
        if (v66[1] == 41)
        {
          break;
        }
      }
    }

LABEL_171:
    v66 = (v66 + ((*v66 + 3) & 0x1FFFFFFFCLL));
    if ((v66 + 3) > qword_1000107E0 + dword_1000107E8)
    {
      if (v68 && v69)
      {
        v71 = sub_1000047D8(v67[4]);
        if (!v71)
        {
          goto LABEL_215;
        }

        if ((v71[4] & 1) == 0)
        {
          if_indextoname(v67[4], &v123);
LABEL_215:
          v31 = &dword_100010000;
          sub_100000700();
          goto LABEL_83;
        }

        if ((v65 & 0x7FFFFFFFu) <= 7uLL)
        {
          goto LABEL_177;
        }

        v72 = *qword_1000107D0;
        v73 = **qword_1000107D0;
        switch(v73)
        {
          case 138:
            v31 = &dword_100010000;
            if (dword_100010790)
            {
              sub_100004ADC(v65, *qword_1000107D0, v67, &unk_100010860, &v121);
            }

            else
            {
              sub_100000700();
            }

            v28 = v113;
            goto LABEL_83;
          case 134:
            if (*v69 != 255 || *(v72 + 1) || (v65 & 0x7FFFFFFFu) <= 0xFuLL)
            {
LABEL_190:
              inet_ntop(30, &dword_100010868, v116, 0x2Eu);
              if_indextoname(v67[4], &v123);
              break;
            }

            inet_ntop(30, &dword_100010868, &v123, 0x2Eu);
            if_indextoname(v67[4], v122);
            sub_100000700();
            v120 = 0;
            v118 = 0u;
            *v119 = 0u;
            *v116 = 0u;
            *__s1 = 0u;
            if (sub_100007730((v72 + 16), v65 - 16, v116, 21))
            {
              inet_ntop(30, &dword_100010868, &v123, 0x2Eu);
              if_indextoname(v67[4], v122);
              sub_100000700();
              v28 = v113;
              v31 = &dword_100010000;
            }

            else
            {
              v80 = &qword_1000107A8;
              v31 = &dword_100010000;
              do
              {
                v80 = *v80;
                if (!v80)
                {
                  inet_ntop(30, &dword_100010868, &v123, 0x2Eu);
                  if_indextoname(v67[4], v122);
                  sub_100000700();
                  v83 = v119[0];
                  v28 = v113;
                  goto LABEL_264;
                }
              }

              while (*(v80 + 11) != v67[4]);
              ++v80[68];
              if (!*(v72 + 4) || ((v81 = *(v80 + 30)) != 0 ? (v82 = v81 == *(v72 + 4)) : (v82 = 1), v82))
              {
                v84 = 0;
              }

              else
              {
                inet_ntop(30, &dword_100010868, &v123, 0x2Eu);
                v106 = *(v80 + 30);
                v84 = 1;
                sub_100000700();
              }

              v85 = *(v72 + 5);
              v86 = *(v80 + 24);
              if (v86 != (v85 & 0x80))
              {
                v87 = off_10000C240[v86 == 0];
                inet_ntop(30, &dword_100010868, &v123, 0x2Eu);
                v107 = off_10000C240[*(v80 + 24)];
                sub_100000700();
                ++v84;
                v85 = *(v72 + 5);
              }

              v88 = v85 & 0x40;
              v89 = *(v80 + 25);
              if (v89 != v88)
              {
                v90 = off_10000C240[v89 == 0];
                inet_ntop(30, &dword_100010868, &v123, 0x2Eu);
                v108 = off_10000C240[*(v80 + 25)];
                sub_100000700();
                ++v84;
              }

              v91 = *(v72 + 8);
              if (v91)
              {
                v92 = bswap32(v91);
                v93 = *(v80 + 28);
                if (v93 && v92 != v93)
                {
                  inet_ntop(30, &dword_100010868, &v123, 0x2Eu);
                  v109 = *(v80 + 28);
                  sub_100000700();
                  ++v84;
                }
              }

              v95 = *(v72 + 12);
              if (v95)
              {
                v96 = *(v80 + 29);
                v28 = v113;
                if (v96 && bswap32(v95) != v96)
                {
                  inet_ntop(30, &dword_100010868, &v123, 0x2Eu);
                  v110 = *(v80 + 29);
                  sub_100000700();
                  ++v84;
                }
              }

              else
              {
                v28 = v113;
              }

              if (*(&v118 + 1))
              {
                v97 = *(*(&v118 + 1) + 4);
                if (v97)
                {
                  v98 = *(v80 + 27);
                  if (v98)
                  {
                    if (bswap32(v97) != v98)
                    {
                      inet_ntop(30, &dword_100010868, &v123, 0x2Eu);
                      v111 = *(v80 + 27);
                      sub_100000700();
                      ++v84;
                    }
                  }
                }
              }

              v83 = v119[0];
              if (__s1[1] && sub_100007940(__s1[1], v80))
              {
                ++v84;
              }

              if (v83)
              {
                v99 = v83;
                do
                {
                  if (sub_100007940(v99[1], v80))
                  {
                    ++v84;
                  }

                  v99 = *v99;
                }

                while (v99);
              }

              if (v84)
              {
                ++v80[69];
              }

              v31 = &dword_100010000;
LABEL_264:
              v33 = &dword_100010000;
              v35 = v112;
              v34 = v24;
              if (v83)
              {
                do
                {
                  v100 = *v83;
                  free(v83);
                  v83 = v100;
                }

                while (v100);
              }
            }

            goto LABEL_83;
          case 133:
            if (*v69 != 255 || *(v72 + 1))
            {
              goto LABEL_190;
            }

            inet_ntop(30, &dword_100010868, &v123, 0x2Eu);
            if_indextoname(v67[4], v122);
            sub_100000700();
            v120 = 0;
            v118 = 0u;
            *v119 = 0u;
            *v116 = 0u;
            *__s1 = 0u;
            if (sub_100007730((v72 + 8), v65 - 8, v116, 1))
            {
              inet_ntop(30, &dword_100010868, &v123, 0x2Eu);
              if_indextoname(v67[4], v122);
              break;
            }

            if (dword_100010868 || dword_10001086C || dword_100010870 || dword_100010874 || !*&v116[8])
            {
              v74 = v67[4];
              v75 = &qword_1000107A8;
              v28 = v113;
              v36 = __dst;
              v31 = &dword_100010000;
              do
              {
                v75 = *v75;
                if (!v75)
                {
                  if_indextoname(v74, v122);
                  sub_100000700();
                  goto LABEL_210;
                }
              }

              while (v74 != *(v75 + 11));
              ++v75[70];
              v76 = malloc_type_malloc(0x28uLL, 0x10200406E8F4065uLL);
              if (v76)
              {
                *(v76 + 8) = unk_100010860;
                *(v76 + 20) = *&dword_10001086C;
                *(v76 + 3) = 0;
                *v76 = v75[71];
                v75[71] = v76;
              }

              v77 = *(v75 + 10);
              *(v75 + 10) = v77 + 1;
              if (!v77)
              {
                sub_1000075FC(v75);
              }
            }

            else
            {
              if_indextoname(v67[4], v122);
              sub_100000700();
              v28 = v113;
              v36 = __dst;
              v31 = &dword_100010000;
            }

LABEL_210:
            v78 = v119[0];
            if (v119[0])
            {
              do
              {
                v79 = *v78;
                free(v78);
                v78 = v79;
              }

              while (v79);
            }

            goto LABEL_84;
        }

        sub_100000700();
        v28 = v113;
LABEL_178:
        v36 = __dst;
        v31 = &dword_100010000;
        goto LABEL_84;
      }

LABEL_177:
      sub_100000700();
      goto LABEL_178;
    }
  }

  v70 = v66[2];
LABEL_168:
  if (v70 == 47 && *v66 == 16)
  {
    v69 = v66 + 3;
  }

  goto LABEL_171;
}

uint64_t *sub_1000071EC(uint64_t a1, unsigned __int8 *__s1, int a3)
{
  v4 = (a1 + 128);
  v3 = *(a1 + 128);
  v5 = a3 + 7;
  if (a3 >= 0)
  {
    v5 = a3;
  }

  if (v3 == v4)
  {
    return 0;
  }

  v8 = v5 >> 3;
  v9 = a3 - 8 * v8;
  v10 = 255 << (8 - (a3 - 8 * v8));
  while (*(v3 + 18) != a3 || memcmp(__s1, v3 + 10, v8) || v9 && (v10 & (*(v3 + v8 + 80) ^ __s1[v8])) != 0)
  {
    v3 = *v3;
    if (v3 == v4)
    {
      return 0;
    }
  }

  return v3;
}

BOOL sub_1000072AC(unsigned __int8 *a1, int a2, unsigned __int8 *__s2, int a4)
{
  if (a2 < a4)
  {
    return 0;
  }

  if (a4 >= 0)
  {
    v8 = a4;
  }

  else
  {
    v8 = a4 + 7;
  }

  if (memcmp(a1, __s2, v8 >> 3))
  {
    return 0;
  }

  v9 = a4 - (v8 & 0xFFFFFFF8);
  return !v9 || ((255 << (8 - v9)) & (__s2[v8 >> 3] ^ a1[v8 >> 3])) == 0;
}

uint64_t *sub_100007358(int a1)
{
  result = &qword_1000107A8;
  do
  {
    result = *result;
  }

  while (result && *(result + 11) != a1);
  return result;
}

uint64_t sub_10000737C(uint64_t a1)
{
  sub_100000700();
  sub_1000073D0(a1);
  return *(a1 + 8);
}

uint64_t sub_1000073D0(uint64_t a1)
{
  v2 = sub_1000047D8(*(a1 + 44));
  if (!v2 || (v2[4] & 1) == 0)
  {
    return sub_100000700();
  }

  sub_100002B2C(a1);
  qword_1000107F0 = &unk_100010020;
  v4 = qword_100010800;
  v5 = *(a1 + 520);
  *qword_100010800 = *(a1 + 528);
  *(v4 + 8) = v5;
  if (dword_100010818 <= 0xB)
  {
    v6 = 0;
  }

  else
  {
    v6 = qword_100010810;
  }

  *(v6 + 8) = 46;
  *v6 = 0x2900000020;
  *(v6 + 12) = 0;
  *(v6 + 20) = 0;
  *(v6 + 28) = *(a1 + 44);
  *(v6 + 32) = 0x2900000010;
  *(v6 + 40) = 47;
  *(v6 + 44) = 255;
  v11 = *(a1 + 40);
  sub_100000700();
  if ((sendmsg(dword_1000107B0, &qword_1000107F0, 0) & 0x80000000) != 0)
  {
    v7 = __error();
    strerror(*v7);
    sub_100000700();
  }

  v8 = *(a1 + 16);
  if (v8 <= 2)
  {
    *(a1 + 16) = v8 + 1;
  }

  ++*(a1 + 536);
  v9 = *(a1 + 568);
  if (v9)
  {
    do
    {
      v10 = *v9;
      free(v9);
      v9 = v10;
    }

    while (v10);
  }

  *(a1 + 568) = 0;
  result = gettimeofday((a1 + 24), 0);
  *(a1 + 40) = 0;
  return result;
}

uint64_t sub_100007560(_DWORD *a1, uint64_t a2)
{
  v4 = a1[23];
  v5 = random();
  v6 = v5 % (a1[22] - a1[23]) + v4;
  v7 = a1[4];
  v8 = 16;
  if (v6 < 16)
  {
    v8 = v5 % (a1[22] - a1[23]) + v4;
  }

  if (v7 < 3)
  {
    v6 = v8;
  }

  if (!v7)
  {
    v6 = 0;
  }

  *a2 = v6;
  *(a2 + 8) = 0;
  return sub_100000700();
}

double sub_1000075FC(uint64_t a1)
{
  if (*(a1 + 8))
  {
    v10.tv_sec = 0;
    *&v10.tv_usec = 0;
    v9 = 0;
    v6 = 0;
    v7 = 0;
    v2 = random() % 500000;
    *&v11 = 0;
    *(&v11 + 1) = v2;
    v3 = sub_100005828(*(a1 + 8));
    v4 = v3;
    if (*v3 < 0 || !*v3 && *(v3 + 2) < v2)
    {
      sub_100000700();
      v11 = *v4;
    }

    gettimeofday(&v10, 0);
    sub_1000057E4(&v10, a1 + 24, &v6);
    v8 = 3;
    LODWORD(v9) = 0;
    if (v6 < 3 || v6 == 3 && (v7 & 0x80000000) != 0)
    {
      sub_1000057E4(&v8, &v6, &v8);
      sub_1000055B4(&v8, &v11, &v11);
    }

    *&result = sub_1000054F8(&v11, *(a1 + 8)).n128_u64[0];
  }

  return result;
}

uint64_t sub_100007730(unsigned __int8 *a1, int a2, uint64_t a3, int a4)
{
  if (a2 < 1)
  {
    return 0;
  }

  v6 = a2;
  v8 = 0;
  while (v6 != 1)
  {
    a1 += v8;
    v9 = a1[1];
    if (!a1[1])
    {
      v19 = *a1;
      break;
    }

    if (v6 < (8 * v9))
    {
      break;
    }

    v10 = *a1;
    if (v10 >= 6)
    {
      v16 = *a1;
LABEL_15:
      sub_100000700();
      goto LABEL_16;
    }

    if ((dword_100010044[v10] & a4) == 0)
    {
      v17 = *a1;
      goto LABEL_15;
    }

    if (v9 != 1 && v10 == 5 || v9 != 4 && v10 == 3)
    {
      goto LABEL_15;
    }

    switch(v10)
    {
      case 5:
        goto LABEL_22;
      case 3:
        if (*(a3 + 24))
        {
          v12 = malloc_type_malloc(0x10uLL, 0x20040A4A59CD2uLL);
          if (!v12)
          {
            goto LABEL_32;
          }

          *v12 = *(a3 + 48);
          v12[1] = a1;
          *(a3 + 48) = v12;
        }

        else
        {
          *(a3 + 24) = a1;
        }

        break;
      case 1:
LABEL_22:
        if (*(a3 + 8 * v10))
        {
          v18 = *a1;
          sub_100000700();
          v10 = *a1;
        }

        *(a3 + 8 * v10) = a1;
        break;
    }

LABEL_16:
    v8 = 8 * v9;
    v11 = __OFSUB__(v6, 8 * v9);
    v6 -= 8 * v9;
    if ((v6 < 0) ^ v11 | (v6 == 0))
    {
      return 0;
    }
  }

LABEL_32:
  sub_100000700();
  v13 = *(a3 + 48);
  if (v13)
  {
    do
    {
      v14 = *v13;
      free(v13);
      v13 = v14;
    }

    while (v14);
  }

  return 0xFFFFFFFFLL;
}

uint64_t sub_100007940(char *__s1, uint64_t a2)
{
  v4 = __s1 + 16;
  if (__s1[16] == 254 && (__s1[17] & 0xC0) == 0x80)
  {
    inet_ntop(30, v4, v25, 0x2Eu);
    v5 = __s1[2];
    inet_ntop(30, &dword_100010868, v26, 0x2Eu);
    sub_100000700();
  }

  v6 = sub_1000071EC(a2, v4, __s1[2]);
  if (!v6)
  {
    inet_ntop(30, v4, v25, 0x2Eu);
    v13 = __s1[2];
    inet_ntop(30, &dword_100010868, v26, 0x2Eu);
    sub_100000700();
    return 0;
  }

  v7 = v6;
  v24.tv_sec = 0;
  *&v24.tv_usec = 0;
  v8 = bswap32(*(__s1 + 2));
  if (v6[7])
  {
    gettimeofday(&v24, 0);
    v9 = v8 + LODWORD(v24.tv_sec);
    if (!v7[3])
    {
      v10 = *(a2 + 232);
      if (v10)
      {
        if (v9 - v7[7] > v10)
        {
          inet_ntop(30, v4, v25, 0x2Eu);
          v11 = __s1[2];
          inet_ntop(30, &dword_100010868, v26, 0x2Eu);
          v20 = v7[7];
          v12 = 1;
          sub_100000700();
          goto LABEL_15;
        }
      }
    }
  }

  else if (!v6[3] && v8 != *(v6 + 12))
  {
    inet_ntop(30, v4, v25, 0x2Eu);
    v14 = __s1[2];
    inet_ntop(30, &dword_100010868, v26, 0x2Eu);
    v21 = *(v7 + 12);
    sub_100000700();
  }

  v12 = 0;
LABEL_15:
  v15 = bswap32(*(__s1 + 1));
  if (v7[5])
  {
    gettimeofday(&v24, 0);
    if (!v7[3])
    {
      v16 = *(a2 + 232);
      if (v16)
      {
        if (v15 + LODWORD(v24.tv_sec) - v7[5] > v16)
        {
          inet_ntop(30, v4, v25, 0x2Eu);
          v17 = __s1[2];
          inet_ntop(30, &dword_100010868, v26, 0x2Eu);
          v22 = v7[5];
LABEL_23:
          sub_100000700();
          return (v12 + 1);
        }
      }
    }
  }

  else if (!v7[3] && v15 != *(v7 + 8))
  {
    inet_ntop(30, v4, v25, 0x2Eu);
    v18 = __s1[2];
    inet_ntop(30, &dword_100010868, v26, 0x2Eu);
    v23 = *(v7 + 8);
    goto LABEL_23;
  }

  return v12;
}

BOOL sub_100007D00(void *a1)
{
  *v4 = 0;
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Couldn't create os log object", v4, 2u);
  v2 = qword_100010070;
  *a1 = qword_100010070;
  return v2 == 0;
}