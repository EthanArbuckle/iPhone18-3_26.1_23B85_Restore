void sub_1000A9138()
{
  sub_100001A8C();
  v1 = __chkstk_darwin(v0);
  v3 = v2;
  v4 = v1;
  sub_100083650();
  v5 = sub_100082754();
  if (v5)
  {
    if (v3)
    {
      v6 = v5;
      bzero(v86, 0x8000uLL);
      v83[0] = 0x8000;
      v85 = v4;
      if (!sub_100085F14(v6, 0x1Fu, &v85, v7, v8, v9, v10, v11, v86, v83) && v83[0] <= 0x8000)
      {
        Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
        bzero(v84, 0x250uLL);
        v83[1] = off_1000EAAF0;
        v84[4] = off_1000EAAF8;
        v84[9] = off_1000EAB00;
        v84[14] = off_1000EAB08;
        v84[19] = off_1000EAB10;
        v84[24] = off_1000EAB18;
        v84[29] = off_1000EACF8;
        v84[34] = off_1000EAD30;
        v84[39] = off_1000EAD40;
        v84[44] = off_1000EAD48;
        v84[49] = off_1000EAD50;
        v84[54] = off_1000EAEE0;
        v84[59] = off_1000EAEE8;
        v84[64] = off_1000EAF18;
        v84[69] = off_1000EAF10;
        sub_100085EF4();
        sub_1000AFCE8();
        v13 = v84[0];
        v14 = v84[5];
        v15 = v84[10];
        v16 = v84[15];
        v82 = v3;
        v17 = v84[20];
        v18 = v84[25];
        v19 = v84[30];
        v74 = v84[35];
        v75 = v84[40];
        v76 = v84[45];
        v77 = v84[50];
        v78 = v84[55];
        v79 = v84[60];
        v80 = v84[65];
        v81 = v84[70];
        CFNumberGetTypeID();
        v20 = sub_100001944();
        sub_100084118(v20, v21, v22, v13);
        CFNumberGetTypeID();
        v23 = sub_100001944();
        sub_100084118(v23, v24, v25, v14);
        CFNumberGetTypeID();
        v26 = sub_100001944();
        sub_100084118(v26, v27, v28, v15);
        CFNumberGetTypeID();
        v29 = sub_100001944();
        sub_100084118(v29, @"EscrowPasscodePeriod", v30, v16);
        CFNumberGetTypeID();
        v31 = sub_100001944();
        sub_100084118(v31, @"EscrowTokenPeriod", v32, v17);
        CFNumberGetTypeID();
        v33 = sub_100001944();
        sub_100084118(v33, v34, v35, v18);
        CFDataGetTypeID();
        v36 = sub_100001944();
        sub_100084118(v36, v37, v38, v19);
        CFDataGetTypeID();
        v39 = sub_100001944();
        sub_100084118(v39, v40, v41, v74);
        CFNumberGetTypeID();
        v42 = sub_100001944();
        sub_100084118(v42, v43, v44, v75);
        CFNumberGetTypeID();
        v45 = sub_100001944();
        sub_100084118(v45, v46, v47, v76);
        CFNumberGetTypeID();
        v48 = sub_100001944();
        sub_100084118(v48, v49, v50, v77);
        CFBooleanGetTypeID();
        v51 = sub_100001944();
        sub_100084118(v51, v52, v53, v78);
        CFBooleanGetTypeID();
        v54 = sub_100001944();
        sub_100084118(v54, v55, v56, v79);
        CFNumberGetTypeID();
        v57 = sub_100001944();
        sub_100084118(v57, v58, v59, v80);
        CFNumberGetTypeID();
        v60 = sub_100001944();
        sub_100084118(v60, v61, v62, v81);
        v63 = sub_1000AFE9C();
        if ((v63 & 2) != 0)
        {
          v64 = kCFBooleanTrue;
        }

        else
        {
          v64 = kCFBooleanFalse;
        }

        CFDictionarySetValue(Mutable, @"InactivityRebootEnabled", v64);
        if ((v63 & 8) != 0)
        {
          v65 = kCFBooleanTrue;
        }

        else
        {
          v65 = kCFBooleanFalse;
        }

        CFDictionarySetValue(Mutable, @"OnenessAutomaticMode", v65);
        *v82 = Mutable;
      }
    }
  }

  else
  {
    sub_1000835D8();
    fprintf(v66, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v67, v68, v69, v70, v71, v72, v73, ":", 1677, "", "");
  }

  sub_100086268();
  sub_1000016B0();
}

void sub_1000A9640()
{
  sub_1000862EC();
  v1 = __chkstk_darwin(v0);
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = v1;
  sub_10008606C();
  bzero(__src, 0x8000uLL);
  __count = 0x8000;
  v9 = sub_100082754();
  if (v9)
  {
    if (v8)
    {
      if (v5)
      {
        if (v3)
        {
          if (!sub_1000017A4(v9, 0x29u, 0, 0, v8, v7, v10, v11, __src, &__count))
          {
            v12 = calloc(__count, 1uLL);
            *v5 = v12;
            if (v12)
            {
              memcpy(v12, __src, __count);
              *v3 = __count;
            }
          }
        }
      }
    }
  }

  else
  {
    sub_1000835D8();
    fprintf(v13, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v14, v15, v16, v17, v18, v19, v20, ":", 1889, "", "");
  }

  memset_s(__src, 0x8000uLL, 0, 0x8000uLL);
  sub_100086268();
  sub_1000862D8();
}

uint64_t sub_1000A9948()
{
  sub_100086140(__stack_chk_guard);
  sub_100086224();
  result = (v0 + 6);
  if (v1)
  {
    v4 = v2;
    if (v2)
    {
      v5 = v1;
      v6 = sub_100082754();
      if (v6)
      {
        v7 = v6;
        bzero(v37, 0x100uLL);
        result = sub_1000023AC(v7, 0x31u, v36, 2u, v8, v9, v10, v11, v37, &__count);
        if (!result)
        {
          if (__count > 0x100)
          {
            return sub_100086218();
          }

          else
          {
            v12 = calloc(__count, 1uLL);
            *v5 = v12;
            if (v12)
            {
              sub_100086300(v12, v13, v14, v15, v16, v17, v18, v19, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, __count, v36[0], v36[1], v37[0]);
              result = sub_100086238();
              *v4 = v20;
            }

            else
            {
              return (v0 + 1);
            }
          }
        }
      }

      else
      {
        sub_1000835D8();
        fprintf(v21, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v22, v25, v26, v27, v28, v29, v30, ":", 2020, "", "");
        return sub_100001AD4();
      }
    }
  }

  return result;
}

void sub_1000A9A8C()
{
  sub_100086344();
  sub_10008620C();
  __chkstk_darwin(v1);
  *(v0 - 72) = __stack_chk_guard;
  sub_100086224();
  if (v2)
  {
    v4 = v3;
    if (v3)
    {
      v5 = v2;
      v6 = sub_100082754();
      if (v6)
      {
        v7 = v6;
        bzero(v42, 0x8000uLL);
        sub_100086160();
        if (!sub_100085FA0(v7, 0x31u, v8, 2u, v9, v10, v11, v12, v25, v27))
        {
          if (__count > 0x8000)
          {
            sub_100086218();
          }

          else
          {
            v13 = calloc(__count, 1uLL);
            *v5 = v13;
            if (v13)
            {
              sub_100086300(v13, v14, v15, v16, v17, v18, v19, v20, v26, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, __count, v40, v41, v42[0]);
              sub_100086238();
              *v4 = v21;
            }
          }
        }
      }

      else
      {
        sub_1000835D8();
        fprintf(v23, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v24, v29, v30, v31, v32, v33, v34, ":", 2042, "", "");
        sub_100001AD4();
      }
    }
  }

  v22 = *(v0 - 72);
  sub_100086244();
  sub_100086330();
}

uint64_t sub_1000A9BEC(uint64_t a1)
{
  v1 = __chkstk_darwin(a1);
  v3 = v2;
  v5 = v4;
  v7 = v6;
  __count = 15360;
  v30[0] = v1;
  v30[1] = v8;
  v30[2] = v9;
  v10 = sub_100082754();
  if (v10)
  {
    v11 = v10;
    bzero(__src, 0x3C00uLL);
    v16 = sub_1000023AC(v11, v7, v30, 3u, v12, v13, v14, v15, __src, &__count);
    if (v16)
    {
      return v16;
    }

    else if (__count > 0x3C00)
    {
      sub_100086200();
    }

    else
    {
      v7 = 0;
      if (v5 && v3)
      {
        if (__count)
        {
          v17 = calloc(__count, 1uLL);
          *v5 = v17;
          if (!v17)
          {
            sub_100085F94();
            return v22 | 1u;
          }

          memcpy(v17, __src, __count);
          v18 = __count;
        }

        else
        {
          v18 = 0;
        }

        sub_1000861E8(v18);
      }
    }
  }

  else
  {
    sub_100086060();
    sub_1000835D8();
    fprintf(v20, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v21, v23, v24, v25, v26, v27, v28, ":", 2178, "", "");
  }

  return v7;
}

void sub_1000A9D84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, size_t *a21)
{
  sub_100001A8C();
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  bzero(__src, 0x100uLL);
  v70 = 0;
  __count = 256;
  HIDWORD(v68) = 0;
  v72[0] = v34;
  v72[1] = v32;
  v72[2] = v28;
  if (v22 && a21)
  {
    v35 = sub_100082754();
    if (v35)
    {
      v43 = v35;
      v44 = sub_100086274(v35, v36, v37, v38, v39, v40, v41, v42, v56, v57, v26, v24, v60, v61, v62, v63, v64, v65, v66, v67, v68, 0);
      sub_100088BF8(v44, v45, 2, v46, v47, v48, v49, v50, v30);
      if (v70)
      {
        if (!sub_1000017A4(v43, 0x32u, v72, 3u, v70, v69, v51, v52, __src, &__count) && __count <= 0x100)
        {
          v53 = calloc(__count, 1uLL);
          *v22 = v53;
          if (v53)
          {
            memcpy(v53, __src, __count);
            *a21 = __count;
          }
        }
      }
    }

    else
    {
      sub_1000835D8();
      fprintf(v54, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v55, v58, v59, v60, v61, v62, v63, ":", 2072, "", "");
    }
  }

  free(v70);
  sub_1000016B0();
}

uint64_t sub_1000AA0AC()
{
  v11 = 0;
  v12 = 0;
  sub_100083650();
  __n = 0;
  v10 = 0;
  v3 = (v0 + 6);
  v8 = 0;
  if (v1 && v2)
  {
    *&v13 = v1;
    *(&v13 + 1) = v1 + v2;
    v10 = 0;
    sub_1000835EC();
    if (ccder_blob_decode_range())
    {
      sub_1000B2674(&v13, 0x8000000000000001, &v10);
      if (v10)
      {
        sub_1000016FC();
        v3 = sub_1000A9BEC(v6);
        if (v3)
        {
          syslog(3, "error: validating v1 local signing key failed: %d");
        }
      }

      else
      {
        v4 = sub_1000A9948();
        if (!v4)
        {
          v5 = v12;
          goto LABEL_10;
        }

        v3 = v4;
        syslog(3, "error: validating (create) v0 local signing key failed: %d", v4);
      }
    }

    else
    {
      syslog(3, "error parsing signing key: %d", v0 + 14);
      v3 = 3758097084;
    }
  }

  v5 = v12;
  v0 = v3;
LABEL_10:
  if (v5)
  {
    sub_1000860C0(v5, __n);
    free(v12);
  }

  if (v11)
  {
    sub_1000860C0(v11, v8);
    free(v11);
  }

  return v0;
}

void sub_1000AA2C8()
{
  sub_100086344();
  sub_10008620C();
  __chkstk_darwin(v5);
  sub_1000860B4();
  v7 = v6;
  *(v4 - 72) = __stack_chk_guard;
  sub_1000861AC();
  v8 = sub_100082754();
  if (v8)
  {
    v16 = v8;
    if (v1)
    {
      if (v0)
      {
        sub_100086078((v2 + 6), v9, v10, v11, v12, v13, v14, v15, v34, v37, v40, v42, v44, v46, v48);
        sub_100086160();
        if (!sub_1000023AC(v16, 0x14u, v17, 2u, v18, v19, v20, v21, v35, v38))
        {
          if (v3)
          {
            v22 = calloc(v3, 1uLL);
            *v1 = v22;
            if (v22)
            {
              sub_100086300(v22, v23, v24, v25, v26, v27, v28, v29, v36, v39, v41, v43, v45, v47, v49, v50, v51, v52, v53, v54, v3, v7, 0, v55);
              sub_100086238();
              *v0 = v30;
            }
          }
        }
      }
    }
  }

  else
  {
    sub_1000835D8();
    fprintf(v32, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v33, v40, v42, v44, v46, v48, v50, ":", 2233, "", "");
    sub_100001AD4();
  }

  v31 = *(v4 - 72);
  sub_100086244();
  sub_100086330();
}

void sub_1000AA410()
{
  sub_100086344();
  sub_10008620C();
  __chkstk_darwin(v5);
  sub_1000860B4();
  v7 = v6;
  *(v4 - 72) = __stack_chk_guard;
  sub_1000861AC();
  v8 = sub_100082754();
  if (v8)
  {
    v16 = v8;
    if (v1)
    {
      if (v0)
      {
        sub_100086078((v2 + 6), v9, v10, v11, v12, v13, v14, v15, v34, v37, v40, v42, v44, v46, v48);
        sub_100086160();
        if (!sub_1000023AC(v16, 0x14u, v17, 2u, v18, v19, v20, v21, v35, v38))
        {
          if (v3)
          {
            if (v3 % 0x7C)
            {
              sub_100086218();
            }

            else
            {
              v22 = calloc(v3, 1uLL);
              *v1 = v22;
              if (v22)
              {
                sub_100086300(v22, v23, v24, v25, v26, v27, v28, v29, v36, v39, v41, v43, v45, v47, v49, v50, v51, v52, v53, v54, v3, v7, 1, v55);
                sub_100086238();
                *v0 = v30 / 0x7C;
              }
            }
          }
        }
      }
    }
  }

  else
  {
    sub_1000835D8();
    fprintf(v32, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v33, v40, v42, v44, v46, v48, v50, ":", 2261, "", "");
    sub_100001AD4();
  }

  v31 = *(v4 - 72);
  sub_100086244();
  sub_100086330();
}

void sub_1000AA57C()
{
  sub_100001A8C();
  v1 = __chkstk_darwin(v0);
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = v1;
  v13 = sub_100082754();
  if (v13)
  {
    v14 = v13;
    if (v5)
    {
      if (!v3)
      {
        goto LABEL_10;
      }

      v15 = __src;
      p_count = &__count;
      v17 = 1;
    }

    else
    {
      p_count = 0;
      v15 = 0;
      v17 = 0;
    }

    bzero(__src, 0x8000uLL);
    __count = 0x8000;
    v33[0] = v12;
    v33[1] = v11;
    v33[2] = v17;
    v33[3] = v9;
    v33[4] = v7;
    v22 = sub_1000023AC(v14, 0x15u, v33, 5u, v18, v19, v20, v21, v15, p_count);
    if (v5 && !v22)
    {
      v23 = calloc(__count, 1uLL);
      *v5 = v23;
      if (v23)
      {
        memcpy(v23, __src, __count);
        *v3 = __count;
      }

      else
      {
        sub_100085F94();
      }
    }
  }

  else
  {
    sub_1000835D8();
    fprintf(v24, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v25, v26, v27, v28, v29, v30, v31, ":", 2307, "", "");
    sub_100001AD4();
  }

LABEL_10:
  sub_1000016B0();
}

uint64_t sub_1000AA728()
{
  sub_100086038();
  sub_1000018B8(__stack_chk_guard);
  if (sub_100082754())
  {
    if (v1)
    {
      sub_100001A18();
      sub_100085F38();
      v0 = IOConnectCallMethod(v2, v3, v4, v5, v6, v7, v8, v9, v13, v14);
      if (!v0)
      {
        sub_1000861F4();
      }
    }

    else
    {
      return (v0 + 6);
    }
  }

  else
  {
    sub_1000835D8();
    fprintf(v11, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v12, v15, v16, v17, v18, v19, v20, ":", 2339, "", "");
  }

  return v0;
}

uint64_t sub_1000AA83C(uint64_t a1)
{
  v1 = __chkstk_darwin(a1);
  v3 = v2;
  v5 = v4;
  v28 = v1;
  v24 = 4096;
  v6 = 3758097084;
  v26 = 0;
  memset(__src, 0, sizeof(__src));
  v7 = sub_100082754();
  if (v7)
  {
    if (v3)
    {
      v8 = v7;
      bzero(v27, 0x1000uLL);
      v14 = sub_100085F14(v8, v5, &v28, v9, v10, v11, v12, v13, v27, &v24);
      if (v14)
      {
        return v14;
      }

      else
      {
        if (!sub_1000B1248(v27))
        {
          memcpy(v3, __src, 0x42uLL);
        }

        return 0;
      }
    }

    else
    {
      return 3758097090;
    }
  }

  else
  {
    sub_1000835D8();
    fprintf(v16, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v17, v18, v19, v20, v21, v22, v23, ":", 2409, "", "");
  }

  return v6;
}

void sub_1000AA9C0()
{
  sub_1000862EC();
  __chkstk_darwin(v1);
  sub_100086180();
  sub_100085F48(__stack_chk_guard);
  v33 = 4096;
  v34 = v2;
  v3 = sub_100082754();
  if (v3)
  {
    if (v0)
    {
      v11 = v3;
      v12 = sub_1000861A0(v3, v4, v5, v6, v7, v8, v9, v10, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35[0]);
      bzero(v12, v13);
      memset_s(v0, 0x68uLL, 0, 0x68uLL);
      if (!sub_100085FA0(v11, 0x39u, &v34, 1u, v14, v15, v16, v17, v35, &v33))
      {
        sub_1000B209C(v35, v33, v0);
      }
    }
  }

  else
  {
    sub_1000835D8();
    fprintf(v18, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v19, v22, v23, v24, v25, v26, v27, ":", 2440, "", "");
  }

  sub_1000860D8();
  sub_1000862D8();
}

void sub_1000AAB1C()
{
  sub_1000862EC();
  v1 = v0;
  v3 = v2;
  v26[0] = v4;
  v26[1] = v5;
  v26[2] = v6;
  v26[3] = v7;
  __count = 2048;
  v8 = sub_100082754();
  if (v8)
  {
    v9 = v8;
    bzero(__src, 0x800uLL);
    if (sub_100085FA0(v9, 0x3Bu, v26, 4u, v10, v11, v12, v13, __src, &__count))
    {
      goto LABEL_11;
    }

    if (__count > 0x800)
    {
      sub_100086200();
    }

    else if (v3 && v1)
    {
      if (__count)
      {
        v14 = calloc(__count, 1uLL);
        *v3 = v14;
        if (!v14)
        {
          sub_100085F94();
          goto LABEL_11;
        }

        memcpy(v14, __src, __count);
        v15 = __count;
      }

      else
      {
        v15 = 0;
      }

      sub_1000861E8(v15);
    }
  }

  else
  {
    sub_100086060();
    sub_1000835D8();
    fprintf(v16, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v17, v18, v19, v20, v21, v22, v23, ":", 2580, "", "");
  }

LABEL_11:
  sub_1000862D8();
}

void sub_1000AAC9C()
{
  sub_1000862EC();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v25[0] = v8;
  __count = 2048;
  v9 = sub_100082754();
  if (v9)
  {
    v10 = v9;
    bzero(__src, 0x800uLL);
    if (!sub_1000017A4(v10, 0x3Du, v25, 1u, v7, v5, v11, v12, __src, &__count) && __count <= 0x800 && v3 && v1)
    {
      if (__count)
      {
        v13 = calloc(__count, 1uLL);
        *v3 = v13;
        if (!v13)
        {
          sub_100085F94();
          goto LABEL_11;
        }

        memcpy(v13, __src, __count);
        v14 = __count;
      }

      else
      {
        v14 = 0;
      }

      *v1 = v14;
    }
  }

  else
  {
    sub_1000835D8();
    fprintf(v15, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v16, v17, v18, v19, v20, v21, v22, ":", 2621, "", "");
  }

LABEL_11:
  sub_1000862D8();
}

void sub_1000AAE28()
{
  sub_100001A8C();
  v4 = v3;
  v6 = v5;
  sub_1000861D4();
  v29[0] = v7;
  v27 = 0;
  v26 = 0;
  bzero(__src, 0x800uLL);
  __count = 2048;
  sub_100088BF8(&v27, &v26, 2, v8, v9, v10, v11, v12, v2);
  if (v27)
  {
    v13 = sub_100082754();
    if (!v13)
    {
      sub_1000835D8();
      fprintf(v19, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v20, v1, v0, v21, v22, v23, v24, ":", 2652, "", "");
      goto LABEL_12;
    }

    if (sub_10008601C(v13, 0x3Eu, v29, v14, v27, v26, v15, v16, __src, &__count))
    {
      goto LABEL_12;
    }

    if (__count > 0x800)
    {
      sub_100086200();
      goto LABEL_12;
    }

    if (v6 && v4)
    {
      if (!__count)
      {
        v18 = 0;
        goto LABEL_11;
      }

      v17 = calloc(__count, 1uLL);
      *v6 = v17;
      if (v17)
      {
        memcpy(v17, __src, __count);
        v18 = __count;
LABEL_11:
        sub_1000861E8(v18);
      }
    }
  }

LABEL_12:
  free(v27);
  sub_1000016B0();
}

uint64_t sub_1000AAFD8(uint64_t a1, uint64_t a2, uint64_t *a3, void *a4)
{
  result = 0xFFFFFFFFLL;
  if (a3 && a4)
  {
    if (sub_1000AB028(off_1000EAC60, 0, a1, a2, a3, a4))
    {
      return 0xFFFFFFFFLL;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1000AB028(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t *a5, void *a6)
{
  result = 0xFFFFFFFFLL;
  if (a3 && a4 && a5 && a6 && a4 >= 1)
  {
    sub_100085EF4();
    sub_1000AFCE8();
    if (a2)
    {
      if (*a6 == 8)
      {
        v10 = sub_1000AFE9C();
        result = 0;
        *a5 = v10;
        return result;
      }

      return 0xFFFFFFFFLL;
    }

    v11 = ccder_decode_tl();
    if (!v11)
    {
      return 0xFFFFFFFFLL;
    }

    v12 = v11;
    result = 0;
    *a5 = v12;
    *a6 = 0;
  }

  return result;
}

uint64_t sub_1000AB158(uint64_t a1, uint64_t a2, uint64_t *a3, void *a4)
{
  result = 0xFFFFFFFFLL;
  if (a3 && a4)
  {
    if (sub_1000AB028(off_1000EAC90, 0, a1, a2, a3, a4))
    {
      return 0xFFFFFFFFLL;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1000AB1A8(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v5 = 8;
  if (!a3)
  {
    return 0xFFFFFFFFLL;
  }

  v6 = 0;
  result = sub_1000AB028(off_1000EAC78, 1, a1, a2, &v6, &v5);
  if (result)
  {
    return 0xFFFFFFFFLL;
  }

  *a3 = v6;
  return result;
}

uint64_t sub_1000AB218(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v5 = 8;
  if (!a3)
  {
    return 0xFFFFFFFFLL;
  }

  v6 = 0;
  result = sub_1000AB028(off_1000EAC70, 1, a1, a2, &v6, &v5);
  if (result)
  {
    return 0xFFFFFFFFLL;
  }

  *a3 = v6;
  return result;
}

void sub_1000AB288()
{
  sub_1000862EC();
  v1 = __chkstk_darwin(v0);
  v3 = v2;
  v28[0] = v1;
  v28[1] = v4;
  v28[2] = v5;
  v28[3] = v6;
  bzero(v27, 0x1000uLL);
  __n[0] = 4096;
  v7 = sub_100082754();
  if (v7)
  {
    if (!sub_1000023AC(v7, 0x48u, v28, 4u, v8, v9, v10, v11, v27, __n))
    {
      if (__n[0] - 4097 < 0xFFFFFFFFFFFFF000)
      {
        sub_100086200();
      }

      else
      {
        v25 = 0u;
        v26 = 0;
        v22 = 0u;
        v23 = 0u;
        __n[1] = off_1000EACE8;
        v24 = off_1000EACF0;
        sub_100085EF4();
        sub_1000AFCE8();
        if (v22)
        {
          ccder_decode_tl();
        }

        else if (*(&v24 + 1))
        {
          v12 = sub_1000AFE9C();
          if (v12 <= 0xFF)
          {
            *v3 = v12;
          }
        }
      }
    }
  }

  else
  {
    sub_100086060();
    sub_1000835D8();
    fprintf(v13, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v14, v15, v16, v17, v18, v19, v20, ":", 2923, "", "");
  }

  sub_1000860C0(v27, __n[0]);
  sub_1000862D8();
}

void sub_1000AB504()
{
  sub_1000862EC();
  __chkstk_darwin(v2);
  v4 = v3;
  v6 = v5;
  sub_1000860B4();
  *&v42[4091] = v7;
  sub_100086318(v7, v8, v9, v10, v11, v12, v13, v14, v26, v28, v30, v32, v34, v36);
  if (v1 && v0 && v6 && v4)
  {
    if (sub_100082754())
    {
      sub_100086190();
      if (!sub_100085F14(v15, 0x5Au, &v42[4091], v16, v17, v18, v19, v20, v27, v29))
      {
        v21 = calloc(5uLL, 1uLL);
        *v6 = v21;
        if (v21)
        {
          *v4 = 5;
          v22 = v40;
          v21[4] = v41;
          *v21 = v22;
          v23 = calloc(0xFFBuLL, 1uLL);
          *v1 = v23;
          if (v23)
          {
            *v0 = 4091;
            memcpy(v23, v42, 0x1000uLL);
          }
        }
      }
    }

    else
    {
      sub_1000835D8();
      fprintf(v24, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v25, v31, v33, v35, v37, v38, v39, ":", 3021, "", "");
    }
  }

  sub_1000860C0(&v40, 0x1000uLL);
  sub_1000860D8();
  sub_1000862D8();
}

void sub_1000AB6D8(uint64_t a1)
{
  __chkstk_darwin(a1);
  v2 = v1;
  v4 = v3;
  sub_1000861AC();
  v37 = v5;
  sub_100086318(v5, v6, v7, v8, v9, v10, v11, v12, v22, v24, v26, v28, v30, v32);
  if (v4 && v2)
  {
    if (sub_100082754())
    {
      sub_100086190();
      if (!sub_100085F14(v13, 0x59u, &v37, v14, v15, v16, v17, v18, v23, v25))
      {
        v19 = calloc(0x1000uLL, 1uLL);
        *v4 = v19;
        if (v19)
        {
          *v2 = 4096;
          memcpy(v19, __src, 0x1000uLL);
        }
      }
    }

    else
    {
      sub_1000835D8();
      fprintf(v20, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v21, v27, v29, v31, v33, v34, v35, ":", 3053, "", "");
    }
  }

  memset_s(__src, 0x1000uLL, 0, 0x1000uLL);
  sub_1000860D8();
}

void sub_1000AB86C()
{
  sub_100001A8C();
  v39 = v0;
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  memset(v42, 0, 128);
  v40 = 128;
  v15 = sub_100087860();
  __chkstk_darwin(v15);
  v17 = &v38 - v16;
  v18 = sub_100057558();
  bzero(v18, v19);
  if (!sub_1000B26F0(v12, v10, v8, v6, v4, v17, v15))
  {
    v41[0] = v14;
    v41[1] = v17;
    v41[2] = v15;
    if (v2)
    {
      v20 = v39;
      if (v39)
      {
        v21 = sub_100082754();
        if (v21)
        {
          if (!sub_1000023AC(v21, 0x9Bu, v41, 3u, v22, v23, v24, v25, v42, &v40))
          {
            v26 = calloc(v40, 1uLL);
            *v2 = v26;
            if (v26)
            {
              v27 = v40;
              *v20 = v40;
              memcpy(v26, v42, v27);
            }
          }
        }

        else
        {
          sub_1000835D8();
          fprintf(v30, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v31, v32, v33, v34, v35, v36, v37, ":", 3152, "", "");
          sub_1000861AC();
        }
      }
    }
  }

  v28 = sub_100057558();
  memset_s(v28, v29, 0, v15);
  sub_1000860C0(v42, v40);
  sub_1000016B0();
}

void sub_1000ABA9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, __int128 a21, __int128 a22, uint64_t a23, void *a24, size_t *a25)
{
  sub_100001A8C();
  v26 = __chkstk_darwin(v25);
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v40 = v39;
  v64 = 0;
  v65 = 0;
  v63 = v26;
  bzero(__src, 0x4000uLL);
  v60 = a23;
  __count = 0x4000;
  v57[0] = v40;
  memset(__n, 0, sizeof(__n));
  v57[1] = v38;
  v57[2] = v36;
  v57[3] = v34;
  v57[4] = v32;
  v57[5] = v30;
  v57[6] = v28;
  v58 = a21;
  v59 = a22;
  if (sub_1000B1B34(v57, &__n[1], __n) || (v64 = *&__n[1], v65 = __n[0], !a24))
  {
    sub_10008606C();
  }

  else
  {
    sub_10008606C();
    if (a25)
    {
      v41 = sub_100082754();
      if (v41)
      {
        if (!sub_1000023AC(v41, 0x9Fu, &v63, 3u, v42, v43, v44, v45, __src, &__count))
        {
          v46 = calloc(__count, 1uLL);
          *a24 = v46;
          if (v46)
          {
            v47 = __count;
            *a25 = __count;
            memcpy(v46, __src, v47);
          }
        }
      }

      else
      {
        sub_1000835D8();
        fprintf(v48, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v49, v50, v51, v52, v53, v54, v55, ":", 3201, "", "");
      }
    }
  }

  sub_1000860C0(*&__n[1], __n[0]);
  free(*&__n[1]);
  sub_1000860C0(__src, __count);
  sub_1000016B0();
}

void sub_1000ABCA0()
{
  sub_100086344();
  v1 = __chkstk_darwin(v0);
  v3 = v2;
  v5 = v4;
  v11 = sub_1000861A0(v1, v4, v2, v6, v7, v8, v9, v10, v27, v29, v31, v33, v35, v37, v39, v41, v43, v45, v47, v49, v51, v52, v53, v54[0]);
  bzero(v11, v12);
  v51 = v54;
  v52 = &v55;
  v53 = 4096;
  if (v5 && v3)
  {
    v21 = sub_100082754();
    if (v21)
    {
      v22 = v21;
      v13 = sub_1000B0F34(&v51);
      if (v13)
      {
        v13 = sub_1000B0F90(&v51);
        if (v13)
        {
          sub_1000835EC();
          v13 = ccder_blob_encode_tl();
          if (v13)
          {
            v13 = sub_100085F74(v22, 0x55u, v15, v16, v52, &v55 - v52, v19, v20, v54, &v53);
            if (!v13)
            {
              v13 = sub_1000B1728(v54);
            }
          }
        }
      }
    }

    else
    {
      sub_1000835D8();
      v13 = fprintf(v25, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v26, v32, v34, v36, v38, v40, v42, ":", 3262, "", "");
    }
  }

  v23 = sub_1000861A0(v13, v14, v15, v16, v17, v18, v19, v20, v28, v30, v32, v34, v36, v38, v40, v42, v44, v46, v48, v50, v51, v52, v53, v54[0]);
  memset_s(v23, v24, 0, 0x1000uLL);
  sub_1000860D8();
  sub_100086330();
}

void sub_1000ABE4C(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 16);
    v1 = (*(a1 + 40) >> 64) | 0x10;
  }

  sub_1000ABCA0();
}

uint64_t sub_1000ABEB8(uint64_t a1)
{
  v1 = __chkstk_darwin(a1);
  v3 = v2;
  v4 = 3758097098;
  output = 0;
  input = v5;
  HIDWORD(v54) = 1;
  v11 = sub_1000861A0(v1, v5, v2, v6, v7, v8, v9, v10, outputStruct, v30, v32, v34, v36, v38, v40, v42, v44, v46, v48, v50, v52, inputStruct, v54, v55);
  bzero(v11, v12);
  v52 = &v55;
  inputStruct = &output;
  if (v3)
  {
    v21 = sub_100082754();
    if (v21)
    {
      v22 = v21;
      v13 = sub_1000B0F90(&v52);
      if (v13)
      {
        sub_1000835EC();
        v13 = ccder_blob_encode_tl();
        if (v13)
        {
          v13 = IOConnectCallMethod(v22, 0x4Eu, &input, 1u, inputStruct, &output - inputStruct, &output, &v54 + 1, 0, 0);
          v4 = v13;
          if (!v13)
          {
            *v3 = output;
          }
        }
      }
    }

    else
    {
      sub_1000835D8();
      v13 = fprintf(v26, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v27, v33, v35, v37, v39, v41, v43, ":", 3305, "", "");
      v4 = 3758097084;
    }
  }

  else
  {
    v4 = 3758097090;
  }

  v23 = sub_1000861A0(v13, v14, v15, v16, v17, v18, v19, v20, outputStructa, v31, v33, v35, v37, v39, v41, v43, v45, v47, v49, v51, v52, inputStruct, v54, v55);
  memset_s(v23, v24, 0, 0x1000uLL);
  return v4;
}

void sub_1000AC048()
{
  sub_100001A8C();
  __chkstk_darwin(v0);
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v26[0] = v7;
  bzero(__s, 0x1000uLL);
  v22 = __s;
  v23 = v26;
  v24 = 4096;
  if (v6 && v4)
  {
    v8 = sub_100082754();
    if (v8)
    {
      v9 = v8;
      if (ccder_blob_encode_body_tl())
      {
        if (sub_1000B0F34(&v22))
        {
          if (sub_1000B0F90(&v22))
          {
            sub_1000835EC();
            if (ccder_blob_encode_tl())
            {
              if (!sub_10008601C(v9, 0x4Fu, v26, v10, v23, v26 - v23, v11, v12, __s, &v24))
              {
                *&v21 = __s;
                *(&v21 + 1) = &__s[v24];
                sub_1000835EC();
                if (ccder_blob_decode_range())
                {
                  if (v2)
                  {
                    sub_10008772C(&v21, 0, v2);
                  }
                }
              }
            }
          }
        }
      }
    }

    else
    {
      sub_1000835D8();
      fprintf(v13, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v14, v15, v16, v17, v18, v19, v20, ":", 3333, "", "");
    }
  }

  memset_s(__s, 0x1000uLL, 0, 0x1000uLL);
  sub_1000016B0();
}

void sub_1000AC270(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_1000ABCA0();
  }
}

void sub_1000AC32C()
{
  sub_100001A8C();
  __chkstk_darwin(v0);
  sub_1000861D4();
  bzero(v4, 0x1000uLL);
  bzero(v3, 0x1000uLL);
  v2[0] = v4;
  v2[1] = &v5;
  v1[0] = v3;
  v1[1] = v4;
  if (sub_1000B0F34(v2))
  {
    if (sub_1000B0F34(v2))
    {
      sub_1000835EC();
      if (ccder_blob_encode_tl())
      {
        if (sub_1000B0F34(v1))
        {
          if (sub_1000B0F34(v1))
          {
            sub_1000835EC();
            if (ccder_blob_encode_tl())
            {
              sub_1000A48B0();
            }
          }
        }
      }
    }
  }

  sub_1000016B0();
}

void sub_1000AC4A0(uint64_t a1)
{
  __chkstk_darwin(a1);
  sub_1000860B4();
  bzero(v4, 0x4000uLL);
  sub_1000016FC();
  sub_1000A48B0();
  if (!v3)
  {
    if (ccder_decode_sequence_tl() && ccder_decode_tl())
    {
      __memcpy_chk();
      if (v2)
      {
        *v2 = 0;
      }

      if (v1)
      {
        *v1 = 0;
      }
    }

    else
    {
      sub_100001AD4();
    }
  }
}

void sub_1000AC5F4()
{
  sub_100001A8C();
  __chkstk_darwin(v2);
  sub_100086170();
  v4 = v3;
  sub_100083650();
  *v6 = v5;
  bzero(__src, 0x8000uLL);
  v28 = 0;
  __count = 0x8000;
  v27 = 0;
  if (v1)
  {
    v7 = sub_100082754();
    if (v7)
    {
      v13 = v7;
      if (v4)
      {
        v14 = v4;
      }

      else
      {
        v14 = "";
      }

      sub_100088BF8(&v28, &v27, 2, v8, v9, v10, v11, v12, v14);
      if (!sub_10008601C(v13, 0x50u, v31, v15, v28, v27, v16, v17, __src, &__count))
      {
        v18 = calloc(__count, 1uLL);
        *v1 = v18;
        if (v18)
        {
          memcpy(v18, __src, __count);
          *v0 = __count;
        }
      }
    }

    else
    {
      sub_1000835D8();
      fprintf(v19, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v20, v21, v22, v23, v24, v25, v26, ":", 3582, "", "");
    }
  }

  memset_s(__src, 0x8000uLL, 0, 0x8000uLL);
  free(v28);
  sub_100086268();
  sub_1000016B0();
}

uint64_t sub_1000AC928()
{
  sub_100083650();
  if (v2 && v1 && !sub_1000A5634(0xFFFFFFFFLL))
  {
    sub_1000AFEFC(off_1000EAE80);
  }

  free(0);
  return v0;
}

uint64_t sub_1000AC9EC(uint64_t a1, void *a2)
{
  sub_100083650();
  v9 = 0;
  v10 = 0;
  v8 = 0;
  if (!sub_1000A5634(v4) && sub_1000AFE24(off_1000EAF00, v10, v10 + v9, &v8))
  {
    if (a2)
    {
      v5 = time(0);
      v2 = 0;
      v6 = v5 - v8;
      if (v5 <= v8)
      {
        v6 = 0;
      }

      *a2 = v6;
    }

    else
    {
      v2 = 0;
    }
  }

  free(v10);
  return v2;
}

void sub_1000ACA90(uint64_t a1)
{
  __chkstk_darwin(a1);
  v2 = v1;
  sub_10008606C();
  v34 = v3;
  sub_100086318(v3, v4, v5, v6, v7, v8, v9, v10, v19, v21, v23, v25, v27, v29);
  if (sub_100082754())
  {
    if (v2)
    {
      sub_100086190();
      if (!sub_100085F14(v11, 0x8Eu, &v34, v12, v13, v14, v15, v16, v20, v22))
      {
        sub_1000B1248(v33);
      }
    }
  }

  else
  {
    sub_1000835D8();
    fprintf(v17, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v18, v24, v26, v28, v30, v31, v32, ":", 3797, "", "");
  }

  sub_1000860C0(v33, 0x1000uLL);
  sub_1000860D8();
}

uint64_t sub_1000ACBD4()
{
  sub_100085F94();
  v20 = 266;
  result = (v2 + 6);
  if (v0)
  {
    v4 = v1;
    if (v1)
    {
      v5 = v0;
      v6 = sub_100082754();
      if (v6)
      {
        v19 = *v4;
        result = sub_100085FC0(v6, 0x68u, &v20, 1u, v7, v8, v9, v10, v5, &v19);
        if (!result)
        {
          *v4 = v19;
        }
      }

      else
      {
        sub_1000835D8();
        fprintf(v11, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v12, v13, v14, v15, v16, v17, v18, ":", 3823, "", "");
        return sub_100001AD4();
      }
    }
  }

  return result;
}

uint64_t sub_1000ACCDC()
{
  sub_100085F94();
  v21 = (v2 << 8) | 1;
  result = (v3 + 6);
  if (v5)
  {
    v6 = v1;
    if (v1)
    {
      sub_100086130();
      v7 = sub_100082754();
      if (v7)
      {
        v20 = *v6;
        result = sub_100085FC0(v7, 0x68u, &v21, 1u, v8, v9, v10, v11, v0, &v20);
        if (!result)
        {
          *v6 = v20;
        }
      }

      else
      {
        sub_1000835D8();
        fprintf(v12, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v13, v14, v15, v16, v17, v18, v19, ":", 3847, "", "");
        return sub_100001AD4();
      }
    }
  }

  return result;
}

void sub_1000ACE14()
{
  sub_100086344();
  __chkstk_darwin(v1);
  v3 = v2;
  sub_100086180();
  v5 = v4;
  v24 = 0u;
  memset(v25, 0, sizeof(v25));
  bzero(v23, 0x4000uLL);
  v21 = 0x4000;
  v22[0] = 1;
  v22[1] = v5;
  v6 = sub_100082754();
  if (v6)
  {
    if (!sub_100085FA0(v6, 0x87u, v22, 2u, v7, v8, v9, v10, v23, &v21))
    {
      __memcpy_chk();
      *v3 = 44;
      v11 = calloc(0x2CuLL, 1uLL);
      *v0 = v11;
      if (v11)
      {
        v12 = *v3;
        __memcpy_chk();
      }

      else
      {
        sub_100085F94();
      }
    }
  }

  else
  {
    sub_100086060();
    sub_1000835D8();
    fprintf(v13, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v14, v15, v16, v17, v18, v19, v20, ":", 3883, "", "");
  }

  sub_1000861B8(v23);
  sub_100086330();
}

uint64_t sub_1000ACFB0()
{
  sub_100086170();
  sub_1000ACE14();
  if (v0)
  {
    return v0;
  }

  else
  {
    return 3758604312;
  }
}

void sub_1000AD0E0()
{
  sub_1000862EC();
  v1 = __chkstk_darwin(v0);
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v33[0] = 2;
  v33[1] = v1;
  bzero(v29, 0xC4uLL);
  bzero(v28, 0x4000uLL);
  v27 = 0x4000;
  v10 = sub_100082754();
  if (v10)
  {
    if (!sub_1000023AC(v10, 0x87u, v33, 2u, v11, v12, v13, v14, v28, &v27))
    {
      __memcpy_chk();
      v15 = calloc(0x28uLL, 1uLL);
      *v9 = v15;
      if (v15)
      {
        *v7 = 40;
        v16 = *&v29[8];
        v17 = v30;
        v15[4] = v31;
        *v15 = v16;
        *(v15 + 1) = v17;
        v18 = calloc(0x91uLL, 1uLL);
        *v5 = v18;
        if (v18)
        {
          *v3 = 145;
          memcpy(v18, v32, 0x91uLL);
        }
      }
    }
  }

  else
  {
    sub_1000835D8();
    fprintf(v19, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v20, v21, v22, v23, v24, v25, v26, ":", 3943, "", "");
  }

  sub_1000861B8(v28);
  memset_s(v29, 0xC4uLL, 0, 0xC4uLL);
  sub_1000862D8();
}

uint64_t sub_1000AD2F8(uint64_t a1)
{
  v2 = sub_10008320C();
  if (v2)
  {
    return sub_100085F74(v2, 0xCu, v3, v4, *a1, *(a1 + 8), v5, v6, 0, 0);
  }

  else
  {
    return sub_100001AD4();
  }
}

uint64_t sub_1000AD340(uint64_t a1)
{
  v2 = __chkstk_darwin(a1);
  v4 = v3;
  v5 = v2;
  sub_100086140(__stack_chk_guard);
  v6 = 0x4000;
  bzero(__src, 0x4000uLL);
  __count = 0x4000;
  v7 = sub_100082754();
  if (v7)
  {
    v6 = (v1 + 6);
    if (v5 && v4)
    {
      v12 = sub_1000023AC(v7, 0x96u, 0, 0, v8, v9, v10, v11, __src, &__count);
      if (v12)
      {
        v6 = v12;
      }

      else
      {
        v13 = calloc(__count, 1uLL);
        *v5 = v13;
        if (v13)
        {
          v14 = __count;
          *v4 = __count;
          memcpy(v13, __src, v14);
          v6 = 0;
        }

        else
        {
          v6 = (v1 + 1);
        }
      }
    }
  }

  else
  {
    sub_1000835D8();
    fprintf(v16, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v17, v18, v19, v20, v21, v22, v23, ":", 3992, "", "");
    sub_100086060();
  }

  sub_1000861B8(__src);
  return v6;
}

void sub_1000AD4A4()
{
  sub_100001A8C();
  if (v1 && v0 <= 0x30)
  {
    v2 = sub_100082754();
    if (v2)
    {
      v3 = v2;
      ccder_sizeof_raw_octet_string();
      ccder_sizeof_uint64();
      ccder_sizeof_raw_octet_string();
      v4 = ccder_sizeof();
      v5 = v4;
      __chkstk_darwin(v4);
      v7 = &v18[-v6];
      bzero(&v18[-v6], v5);
      ccder_encode_raw_octet_string();
      ccder_encode_uint64();
      ccder_encode_raw_octet_string();
      if (ccder_encode_constructed_tl() == v7)
      {
        sub_1000017A4(v3, 0x72u, 0, 0, v7, v5, v8, v9, 0, 0);
      }

      else
      {
        sub_100085F94();
      }
    }

    else
    {
      sub_100083650();
      sub_1000835D8();
      fprintf(v10, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v11, v12, v13, v14, v15, v16, v17, ":", 4036, "", "");
    }
  }

  sub_1000016B0();
}

void sub_1000AD69C(uint64_t a1)
{
  v1 = __chkstk_darwin(a1);
  v33 = v1;
  sub_100086318(v1, v2, v3, v4, v5, v6, v7, v8, v19, v20, v21, v23, v25, v27);
  __n = 4096;
  v9 = sub_100082754();
  if (v9)
  {
    v15 = sub_100085F14(v9, 0x8Bu, &v33, v10, v11, v12, v13, v14, v32, &__n);
    v16 = __n;
    if (!v15)
    {
      sub_10008606C();
      if (v16 - 4097 >= 0xFFFFFFFFFFFFF000)
      {
        sub_1000B149C(v32);
        v16 = __n;
      }
    }
  }

  else
  {
    sub_1000835D8();
    fprintf(v17, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v18, v22, v24, v26, v28, v29, v30, ":", 4130, "", "");
    v16 = 4096;
  }

  sub_1000860C0(v32, v16);
  sub_1000860D8();
}

uint64_t sub_1000AD7EC(uint64_t a1)
{
  v1 = __chkstk_darwin(a1);
  v18 = 4096;
  if (!v1)
  {
    return 4294967285;
  }

  v2 = v1;
  v3 = sub_100082754();
  if (v3)
  {
    v4 = v3;
    bzero(v19, 0x1000uLL);
    result = sub_1000023AC(v4, 0x98u, 0, 0, v5, v6, v7, v8, v19, &v18);
    if (!result)
    {
      if (v18 == 8)
      {
        result = 0;
        *v2 = v19[0];
      }

      else
      {
        return sub_100086218();
      }
    }
  }

  else
  {
    sub_1000835D8();
    fprintf(v10, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v11, v12, v13, v14, v15, v16, v17, ":", 4183, "", "");
    return sub_100001AD4();
  }

  return result;
}

void sub_1000AD928()
{
  sub_1000862EC();
  v1 = __chkstk_darwin(v0);
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = v1;
  v26 = 4096;
  v24 = 0u;
  v25 = 0u;
  v23 = 0u;
  v9 = sub_100082754();
  if (v9)
  {
    v10 = v9;
    bzero(v27, 0x1000uLL);
    if (!sub_1000023AC(v10, 0x9Eu, 0, 0, v11, v12, v13, v14, v27, &v26) && !sub_1000B2B90(v27, v26, &v23))
    {
      if (v8)
      {
        *v8 = *(&v25 + 1);
      }

      if (v7)
      {
        *v7 = v25;
      }

      if (v5)
      {
        *v5 = *(&v24 + 1);
      }

      if (v3)
      {
        *v3 = v24;
      }
    }
  }

  else
  {
    sub_1000835D8();
    fprintf(v15, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v16, v17, v18, v19, v20, v21, v22, ":", 4204, "", "");
  }

  sub_1000862D8();
}

uint64_t sub_1000ADAA8(const __CFDictionary *a1, const void *a2, uint64_t a3)
{
  value = 0;
  result = CFDictionaryGetValueIfPresent(a1, a2, &value);
  if (result)
  {
    if (CFGetTypeID(value) == a3)
    {
      if (CFNumberGetTypeID() == a3)
      {
        v8 = 0;
        if (!CFNumberGetValue(value, kCFNumberSInt64Type, &v8))
        {
          return 0xFFFFFFFFLL;
        }

        v5 = sub_100057558();
        if (sub_1000B08B0(v5, v6, v7))
        {
          return 0xFFFFFFFFLL;
        }

        return 0;
      }

      if (CFBooleanGetTypeID() == a3)
      {
        CFBooleanGetValue(value);
        sub_100057558();
        if (sub_1000B0788())
        {
          return 0xFFFFFFFFLL;
        }
      }

      else
      {
        if (CFDataGetTypeID() != a3)
        {
          return 0xFFFFFFFFLL;
        }

        CFDataGetBytePtr(value);
        CFDataGetLength(value);
        sub_100057558();
        if (sub_1000B05EC())
        {
          return 0xFFFFFFFFLL;
        }
      }

      return 0;
    }

    return 0xFFFFFFFFLL;
  }

  return result;
}

uint64_t sub_1000AF194(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  memset(__s, 0, sizeof(__s));
  if (a4 == 3)
  {
    ccsha256_di();
    cchmac();
    v5 = 0;
    *a3 = __s[0];
    *(a3 + 2) = BYTE2(__s[0]);
  }

  else
  {
    v5 = 0xFFFFFFFFLL;
  }

  memset_s(__s, 0x20uLL, 0, 0x20uLL);
  return v5;
}

uint64_t sub_1000AF260(const char *a1, uint64_t a2, uint64_t a3)
{
  v6 = 0;
  v5 = 0;
  sub_1000AF194(a2, a3, &v5, 3);
  return sub_100086A44(a1, &v5, 3uLL);
}

uint64_t sub_1000AF2B8(unsigned __int8 *a1, unint64_t a2, void *a3, unint64_t *a4)
{
  v5 = 0xFFFFFFFFLL;
  if ((a2 & 1) == 0)
  {
    v6 = a1;
    if (a1)
    {
      if (a3 && a4)
      {
        v9 = a2 >> 1;
        v10 = calloc(a2 >> 1, 1uLL);
        if (v10)
        {
          if (a2 >= 2)
          {
            v11 = a2 >> 1;
            v12 = v10;
            do
            {
              v13 = *v6;
              v14 = v13 - 48;
              v15 = v13 - 97;
              if ((v13 - 65) >= 6)
              {
                v16 = -1;
              }

              else
              {
                v16 = v13 - 55;
              }

              v17 = v13 - 87;
              if (v15 > 5)
              {
                v17 = v16;
              }

              if (v14 < 0xA)
              {
                v17 = v14;
              }

              v18 = 16 * v17;
              v19 = v6[1];
              v20 = v19 - 48;
              v21 = v19 - 97;
              if ((v19 - 65) >= 6)
              {
                v22 = -1;
              }

              else
              {
                v22 = v19 - 55;
              }

              v23 = v19 - 87;
              if (v21 > 5)
              {
                v23 = v22;
              }

              if (v20 < 0xA)
              {
                v23 = v20;
              }

              *v12++ = v23 | v18;
              v6 += 2;
              --v11;
            }

            while (v11);
          }

          v5 = 0;
          *a3 = v10;
          *a4 = v9;
        }

        else
        {
          return 4294967279;
        }
      }
    }
  }

  return v5;
}

uint64_t sub_1000AF3BC(void *a1, uint64_t a2, char a3)
{
  memset_s(a1, 0x10uLL, 0, 0x10uLL);
  if (a2 && *a2 && (v6 = *(a2 + 8)) != 0)
  {
    if (a3)
    {
      return 4294967285;
    }

    else
    {
      v8 = calloc(v6, 1uLL);
      if (v8)
      {
        *a1 = v8;
        v9 = *a2;
        v10 = *(a2 + 8);
        a1[1] = v10;
        memcpy(v8, v9, v10);
        return 0;
      }

      else
      {
        return 4294967279;
      }
    }
  }

  else
  {
    result = 0;
    *a1 = 0;
    a1[1] = 0;
  }

  return result;
}

uint64_t sub_1000AF450(void **a1, _DWORD *a2, uint64_t a3, unsigned int a4, char a5)
{
  __s = 0;
  __n = 0;
  v10[0] = a3;
  v10[1] = a4;
  v7 = sub_1000AF3BC(&__s, v10, a5);
  if (v7)
  {
    v8 = v7;
LABEL_7:
    memset_s(__s, __n, 0, __n);
    free(__s);
    return v8;
  }

  if (HIDWORD(__n))
  {
    v8 = 4294967286;
    goto LABEL_7;
  }

  v8 = 0;
  *a2 = __n;
  *a1 = __s;
  return v8;
}

uint64_t sub_1000AF560(int *a1, uint64_t (*a2)(uint64_t, void *, uint64_t *, uint64_t *, uint64_t), char a3, uint64_t *a4, unsigned int a5, uint64_t a6, unsigned int *a7, int a8)
{
  HIDWORD(v48) = 0;
  v53 = 0u;
  v54 = 0u;
  __s = 0u;
  v52 = 0u;
  *v49 = 0u;
  v50 = 0u;
  v9 = 0xFFFFFFFFLL;
  if (a6 && a7)
  {
    v14 = a1;
    if (a1)
    {
      v15 = *a1;
      if ((*a1 - 1) < 2)
      {
        if ((a3 & 4) != 0)
        {
          v16 = 64;
        }

        else
        {
          v16 = 72;
        }

        HIDWORD(v48) = v16;
        v9 = 0xFFFFFFFFLL;
        if (a2)
        {
          goto LABEL_45;
        }

        v17 = a5 == 32 && *a7 >= v16;
        if (!v17)
        {
          goto LABEL_45;
        }

        v18 = v16;
        if (v15 == 1)
        {
          LODWORD(a1) = sub_100086D8C((a1 + 10), &__s);
        }

        else
        {
          v30 = *(a1 + 6);
          __s = *(a1 + 2);
          v52 = v30;
          v31 = *(a1 + 14);
          v53 = *(a1 + 10);
          v54 = v31;
        }

        if ((a3 & 0x80) == 0)
        {
          v32 = v52;
          *a6 = __s;
          *(a6 + 16) = v32;
          if ((a3 & 4) != 0)
          {
            v33 = ccaes_cbc_encrypt_mode();
            v34 = sub_10008705C(v33, 32, &v53, &unk_1000EB640, 0x20uLL);
            v35 = sub_100086F98(v34);
            LODWORD(a1) = sub_100086D14(v35, 166, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/shared_crypto.c");
LABEL_39:
            v45 = v18;
            v9 = 0;
LABEL_44:
            *a7 = v45;
            goto LABEL_45;
          }

          LODWORD(v48) = 40;
          if ((a3 & 8) != 0)
          {
            ccsha256_di();
            v47 = v49;
            sub_100086F50();
          }

          sub_100086F88();
          LODWORD(a1) = sub_1000822F0(v39, v40, v41, v42, a4, 0x20u, v43, v44);
          if (!a1)
          {
            goto LABEL_39;
          }
        }

        goto LABEL_48;
      }

      if (v15)
      {
        goto LABEL_48;
      }
    }

    if (a2)
    {
      v21 = sub_1000023CC();
      LODWORD(a1) = sub_1000A3C78(v21, v22);
      if (a1)
      {
        sub_100086F78();
        if (!v17)
        {
          goto LABEL_48;
        }

        v23 = 0;
        v24 = 0;
        v25 = a2;
        v26 = a4;
LABEL_42:
        LODWORD(a1) = sub_1000822F0(v23, v24, 0xA6A6A6A6A6A6A6A6, v25, v26, a5, a6, &v48 + 1);
        if (!a1)
        {
          goto LABEL_43;
        }

LABEL_48:
        v9 = 0xFFFFFFFFLL;
        goto LABEL_45;
      }
    }

    else
    {
      if ((a3 & 4) != 0)
      {
        if ((a5 & 0xF) != 0 || *a7 < a5)
        {
          goto LABEL_48;
        }

        HIDWORD(v48) = a5;
        v36 = ccaes_cbc_encrypt_mode();
        v37 = sub_10008705C(v36, 32, (v14 + 3), &unk_1000EB640, a5);
        v38 = sub_100086F98(v37);
        LODWORD(a1) = sub_100086D14(v38, 121, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/shared_crypto.c");
LABEL_43:
        v9 = 0;
        v45 = HIDWORD(v48);
        goto LABEL_44;
      }

      v28 = sub_1000023CC();
      LODWORD(a1) = sub_1000A3C78(v28, v29);
      if (a1)
      {
        sub_100086F78();
        if (!v17)
        {
          goto LABEL_48;
        }

        if ((a3 & 8) != 0)
        {
          ccsha256_di();
          v47 = v49;
          sub_100086F50();
          v23 = v49;
        }

        else
        {
          v23 = (v14 + 3);
        }

        v24 = 32;
        v25 = 0;
        v26 = a4;
        goto LABEL_42;
      }
    }

    v9 = 4294967285;
  }

LABEL_45:
  if ((a3 & 8) != 0)
  {
    sub_100083714(a1, a2, a3, a4, a5, a6, a7, a8, v47, v48, v49[0]);
  }

  memset_s(&__s, 0x40uLL, 0, 0x40uLL);
  return v9;
}

uint64_t sub_1000AF894(_DWORD *a1, uint64_t (*a2)(void, void *, unint64_t *, unint64_t *, uint64_t), char a3, void *a4, unsigned int a5, void *a6, unsigned int *a7)
{
  HIDWORD(v47) = 0;
  memset(__s, 0, sizeof(__s));
  v8 = 0xFFFFFFFFLL;
  if (a4 && a5)
  {
    if (!a1)
    {
      goto LABEL_6;
    }

    if (*a1 != 1)
    {
      if (!*a1)
      {
LABEL_6:
        if (a5 <= 0x28)
        {
          if (a2)
          {
            v15 = sub_1000023CC();
            if (!sub_100082710(v15, v16))
            {
              goto LABEL_40;
            }

            sub_100086F78();
            if (!v17)
            {
              goto LABEL_40;
            }

            v18 = &v47 + 1;
            v19 = 0;
            v20 = 0;
            v21 = 0xA6A6A6A6A6A6A6A6;
            v22 = a2;
          }

          else
          {
            if ((a3 & 4) != 0)
            {
              if ((a5 & 0xF) != 0 || *a7 < a5)
              {
                goto LABEL_40;
              }

              HIDWORD(v47) = a5;
              v25 = ccaes_cbc_decrypt_mode();
              v26 = sub_10008705C(v25, 32, (a1 + 3), &unk_1000EB640, a5);
              v27 = sub_100086F98(v26);
              sub_100086D14(v27, 273, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/shared_crypto.c");
LABEL_33:
              v8 = 0;
              *a7 = HIDWORD(v47);
              goto LABEL_37;
            }

            v23 = sub_1000023CC();
            if (!sub_100082710(v23, v24))
            {
              goto LABEL_40;
            }

            sub_100086F78();
            if (!v17)
            {
              goto LABEL_40;
            }

            if ((a3 & 8) != 0)
            {
              ccsha256_di();
              sub_100086F50();
            }

            sub_100086F88();
          }

          if (!sub_1000826A4(v19, v20, v21, v22, a4, a5, a6, v18))
          {
            goto LABEL_33;
          }
        }

        goto LABEL_42;
      }

LABEL_24:
      v8 = 0xFFFFFFFFLL;
      goto LABEL_37;
    }

    HIDWORD(v47) = 32;
    if (*a7 >= 0x20)
    {
      *v48 = 0uLL;
      v49 = 0uLL;
      if ((a3 & 4) != 0)
      {
        if (a5 == 64)
        {
          sub_100086FA4();
          v28 = ccaes_cbc_decrypt_mode();
          v29 = sub_10008705C(v28, 32, v48, &unk_1000EB640, 0x20uLL);
          v30 = sub_100086F98(v29);
          v31 = sub_100086D14(v30, 296, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/shared_crypto.c");
          goto LABEL_36;
        }
      }

      else if (a5 == 72)
      {
        sub_100086FA4();
        if (a3 < 0)
        {
          goto LABEL_24;
        }

        LODWORD(v47) = 32;
        if ((a3 & 8) != 0)
        {
          ccsha256_di();
          v46 = __s;
          sub_100086F50();
        }

        sub_100086F88();
        v31 = sub_1000826A4(v39, v40, v41, v42, v43, 0x28u, a6, v44);
        if (v31)
        {
          sub_100083714(v31, v32, v33, v34, v35, v36, v37, v38, v46, v47, v48[0]);
LABEL_42:
          v8 = 4294967277;
          goto LABEL_37;
        }

LABEL_36:
        sub_100083714(v31, v32, v33, v34, v35, v36, v37, v38, v46, v47, v48[0]);
        v8 = 0;
        *a7 = 32;
        goto LABEL_37;
      }
    }

LABEL_40:
    v8 = 4294967285;
  }

LABEL_37:
  if ((a3 & 8) != 0)
  {
    memset_s(__s, 0x20uLL, 0, 0x20uLL);
  }

  return v8;
}

uint64_t sub_1000AFB74(uint64_t *a1, void *a2, unint64_t *a3)
{
  v6 = *a1;
  v7 = cczp_bitlen();
  v8 = calloc(((v7 + 7) >> 2) | 1, 1uLL);
  if (!v8)
  {
    return 4294967279;
  }

  v9 = v8;
  v10 = *a1;
  v11 = ((cczp_bitlen() + 7) >> 2) | 1;
  ccec_export_pub();
  result = 0;
  *a2 = v9;
  *a3 = v11;
  return result;
}

BOOL sub_1000AFC04(uint64_t *a1, void **a2)
{
  if (ccec_import_pub())
  {
    return 0;
  }

  v4 = *a1;
  v5 = &a2[3 * **a2];
  return ccn_read_uint() == 0;
}

uint64_t sub_1000AFC80(uint64_t a1)
{
  if (ccder_blob_decode_tag() && ccder_blob_decode_len())
  {
    return a1 - a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000AFCE8()
{
  sub_100087A34();
  v14 = 0;
  v13 = 0;
  result = ccder_blob_decode_range();
  if (result)
  {
    v3 = ccder_blob_decode_sequence_tl();
    if (v3)
    {
      while (1)
      {
        v11 = v14;
        sub_100087AAC(v3, v4, v5, v6, v7, v8, v9, v10, v12, v13, v14);
        result = ccder_blob_decode_tl();
        if (!result)
        {
          break;
        }

        if (v14 - v11 != 2)
        {
          return 0;
        }

        result = v1(v11, -v11, v14 + v13, -(v14 + v13), v0);
        if (!result)
        {
          return result;
        }

        v3 = ccder_blob_decode_sequence_tl();
        if ((v3 & 1) == 0)
        {
          return 1;
        }
      }
    }

    else
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_1000AFDB8(uint64_t a1, void *a2, void *a3)
{
  if (a1)
  {
    sub_100087970();
    sub_1000AFCE8();
    if (a2)
    {
      if (a3)
      {
        *a2 = 0;
        *a3 = 0;
      }
    }
  }

  return 0;
}

uint64_t sub_1000AFE24(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a4)
  {
    return 0;
  }

  if (result)
  {
    sub_100087984();
    sub_1000AFCE8();
    return 0;
  }

  return result;
}

uint64_t sub_1000AFE9C()
{
  sub_100087A8C();
  if (!ccder_blob_decode_tl())
  {
    return 0;
  }

  v0 = v5;
  if ((v5 - 9) < 0xFFFFFFFFFFFFFFF8)
  {
    return 0;
  }

  v1 = v4;
  result = *v4 >> 7;
  do
  {
    v3 = *v1++;
    result = v3 | (result << 8);
    --v0;
  }

  while (v0);
  return result;
}

uint64_t sub_1000AFEFC(uint64_t result)
{
  if (result)
  {
    sub_100087984();
    sub_1000AFCE8();
    return 0;
  }

  return result;
}

__n128 sub_1000AFF94(uint64_t a1, uint64_t a2, _DWORD *a3, void *a4)
{
  sub_1000879C4(a1);
  if (sub_100087AC4())
  {
    *a4 = v8;
    *a3 = v9 - v8;
    result = v10;
    *v4 = v10;
  }

  return result;
}

uint64_t sub_1000AFFF0()
{
  sub_100087A34();
  *&v10 = v2;
  *(&v10 + 1) = v3;
  sub_1000835EC();
  v4 = ccder_blob_decode_range();
  if (v4)
  {
    v9 = 0;
    v5 = v10;
    if (sub_1000B009C(&v10, &v8, &v9))
    {
      do
      {
        v6 = v10 + v9;
        if (!v1(v5, v10 + v9 - v5, v0))
        {
          break;
        }

        *&v10 = v6;
        v5 = v6;
      }

      while ((sub_1000B009C(&v10, &v8, &v9) & 1) != 0);
    }
  }

  return v4;
}

uint64_t sub_1000B009C(__int128 *a1, void *a2, void *a3)
{
  v7 = *a1;
  result = ccder_blob_decode_tag();
  if (result)
  {
    result = ccder_blob_decode_len();
    if (result)
    {
      *a1 = v7;
      *a2 = 0;
      *a3 = 0;
      return 1;
    }
  }

  return result;
}

BOOL sub_1000B0118()
{
  sub_100087A8C();
  v0 = ccder_blob_decode_tl();
  result = 0;
  if (v0)
  {
    if (v3 == 1)
    {
      return *v2 != 0;
    }
  }

  return result;
}

uint64_t sub_1000B0168(uint64_t a1, uint64_t a2, void *a3, int a4)
{
  sub_1000879C4(a1);
  sub_10008794C();
  v6 = ccder_blob_decode_range();
  if (v6)
  {
    sub_100087A0C(v6, v27, v7, v8, v9, v10, v11, v12, v24, v26, v27, v28, v29);
    if (!a3)
    {
      return sub_100087960(v13, v14, v15, v16, v17, v18, v19, v20, v25);
    }

    v22 = v21 - v14;
    if (v22 == a4)
    {
      v13 = memcpy(a3, v14, v22);
      return sub_100087960(v13, v14, v15, v16, v17, v18, v19, v20, v25);
    }
  }

  return 0;
}

uint64_t sub_1000B01DC()
{
  sub_100087A34();
  v3 = v2;
  v5 = strlen(v4);
  v10 = 0;
  v11 = 0;
  v9[0] = 12;
  v9[1] = v5;
  result = 0xFFFFFFFFLL;
  if (v1 && v5 <= 0x10)
  {
    __memcpy_chk();
    __src = 0;
    v8 = 0;
    if (sub_10008742C(v3, v9, 0, &__src, &v8))
    {
      if (v8 == v0)
      {
        memcpy(v1, __src, v0);
        return 0;
      }

      else
      {
        return 4294967277;
      }
    }

    else
    {
      return 4294967293;
    }
  }

  return result;
}

uint64_t sub_1000B02D0(uint64_t a1)
{
  if (a1)
  {
    return sub_1000AFCE8() - 1;
  }

  else
  {
    return 4294967285;
  }
}

uint64_t sub_1000B0318(void *a1, void *a2, size_t *a3)
{
  v3 = 0xFFFFFFFFLL;
  if (a1)
  {
    if (a2)
    {
      if (a3)
      {
        v7 = *a1;
        if (*a1)
        {
          v8 = 0;
          v9 = 0;
          v10 = 0;
          do
          {
            v10 += v7[2];
            v7 = *v7;
            v9 -= 16;
            --v8;
          }

          while (v7);
          if (v8 >= 0xF000000000000001 && (v11 = -v9, (v12 = calloc(-v9, 1uLL)) != 0))
          {
            v13 = v12;
            v14 = *a1;
            if (*a1)
            {
              v15 = v12;
              do
              {
                *v15 = *(v14 + 1);
                v15 += 16;
                v14 = *v14;
              }

              while (v14);
            }

            qsort(v12, -v8, 0x10uLL, sub_1000B28C8);
            v16 = ccder_sizeof();
            v17 = calloc(v16, 1uLL);
            v18 = v17;
            if (v17)
            {
              v27 = v17;
              v28 = &v17[v16];
              v19 = v8 - 1;
              v20 = &v13[-v9 - 8];
              while (!__CFADD__(v19++, 1))
              {
                v22 = v20 - 16;
                v24 = *(v20 - 1);
                v23 = *v20;
                v25 = ccder_blob_encode_body();
                v20 = v22;
                if ((v25 & 1) == 0)
                {
                  goto LABEL_16;
                }
              }

              if (!ccder_blob_encode_tl() || v27 != v28)
              {
LABEL_16:
                v3 = 0xFFFFFFFFLL;
                goto LABEL_20;
              }

              v3 = 0;
              *a2 = v18;
              *a3 = v16;
              v18 = 0;
            }

            else
            {
              v3 = 4294967279;
            }

LABEL_20:
            memset_s(v13, v11, 0, v11);
            free(v13);
            if (v18)
            {
              memset_s(v18, v16, 0, v16);
              free(v18);
            }
          }

          else
          {
            return 0xFFFFFFFFLL;
          }
        }
      }
    }
  }

  return v3;
}

uint64_t sub_1000B04E8()
{
  result = sub_100087AB8();
  if (v0)
  {
    v6 = v3;
    if (v3)
    {
      if (v4 && v5)
      {
        if (sub_1000AFC80(v4) <= (v5 - v4))
        {
          v7 = *(v6 + 1);
          v8 = ccder_sizeof();
          if (!sub_100087A74(v8))
          {
            return 4294967279;
          }

          sub_100001AE0();
          if (ccder_blob_encode_body())
          {
            sub_1000017C8();
            sub_1000023D8();
            sub_100001950();
            sub_1000023D8();
            if (v9 == v1)
            {
              v10 = sub_100087A5C();
              if (v10)
              {
                return sub_100087930(v10);
              }
            }
          }

          sub_100087998();
          free(v1);
        }

        return 0xFFFFFFFFLL;
      }
    }
  }

  return result;
}

uint64_t sub_1000B05EC()
{
  result = sub_100087AB8();
  if (v0 && v3 && v4)
  {
    v5 = *(v3 + 1);
    ccder_sizeof();
    v6 = sub_100087A40();
    if (sub_100087A74(v6))
    {
      sub_100001AE0();
      v7 = ccder_blob_encode_body();
      if (v7 && (sub_100087A28(v7, v8, v9, v10, v11, v12, v13, v14, v17), ccder_blob_encode_tl()) && (sub_1000017C8(), sub_1000023D8(), sub_100001950(), sub_1000023D8(), v15 == v1) && (v16 = sub_100087A5C()) != 0)
      {
        return sub_100087930(v16);
      }

      else
      {
        sub_100087998();
        free(v1);
        return 0xFFFFFFFFLL;
      }
    }

    else
    {
      return 4294967279;
    }
  }

  return result;
}

uint64_t sub_1000B06D0()
{
  sub_100087A34();
  v2 = strlen(v1);
  result = 4294967285;
  if (v0)
  {
    if (v2 <= 0x10)
    {
      __memcpy_chk();
      return sub_1000B05EC();
    }
  }

  return result;
}

uint64_t sub_1000B0788()
{
  result = sub_100087AB8();
  if (v0)
  {
    v3 = v2;
    if (v2)
    {
      v4 = v2 + 2;
      v5 = *(v2 + 1);
      ccder_sizeof();
      v6 = sub_100087A40();
      v7 = sub_100087A74(v6);
      if (v7)
      {
        v8 = v7;
        if (ccder_blob_encode_body() && ccder_blob_encode_tl() && (v9 = v4 + *(v3 + 1), ccder_blob_encode_body(), sub_100001A3C(), sub_1000835EC(), ccder_blob_encode_tl(), sub_100001A3C(), v10 == v8) && (v11 = sub_100087A5C()) != 0)
        {
          return sub_100087930(v11);
        }

        else
        {
          sub_100087998();
          free(v8);
          return 0xFFFFFFFFLL;
        }
      }

      else
      {
        return 4294967279;
      }
    }
  }

  return result;
}

uint64_t sub_1000B08B0(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v6 = HIBYTE(a3);
  if (HIBYTE(a3) - 255 > 0xFFFFFF01)
  {
    v11 = 8;
  }

  else
  {
    v7 = 9;
    v8 = 48;
    v9 = 1;
    while ((v7 - 2) >= 2)
    {
      v10 = a3 >> v8;
      --v7;
      v8 -= 8;
      if (v6 != v10)
      {
        v9 = v7 - 1;
        goto LABEL_8;
      }
    }

    v7 = 2;
LABEL_8:
    if ((((a3 >> (8 * v9 - 8)) ^ v6) & 0x80) != 0)
    {
      v11 = v7;
    }

    else
    {
      v11 = v9;
    }
  }

  v22 = 0;
  result = 0xFFFFFFFFLL;
  if (a1 && a2)
  {
    v13 = a2 + 2;
    v14 = *(a2 + 1);
    ccder_sizeof();
    v15 = ccder_sizeof();
    v16 = calloc(v15, 1uLL);
    if (v16)
    {
      v17 = v16;
      v18 = v11;
      do
      {
        *(&v22 + v18 - 1) = v3;
        v3 >>= 8;
        --v18;
      }

      while (v18);
      if ((ccder_blob_encode_body() & 1) != 0 && ccder_blob_encode_tl() && (v19 = v13 + *(a2 + 1), ccder_blob_encode_body(), sub_1000023D8(), sub_1000835EC(), ccder_blob_encode_tl(), sub_1000023D8(), v20 == v17) && sub_100087A5C())
      {
        result = sub_1000879B8();
        v21[1] = v17;
        v21[2] = v15;
        *v21 = *a1;
        *a1 = v21;
      }

      else
      {
        memset_s(v17, v15, 0, v15);
        free(v17);
        return 0xFFFFFFFFLL;
      }
    }

    else
    {
      return 4294967279;
    }
  }

  return result;
}

uint64_t sub_1000B0AB4()
{
  result = sub_100087AB8();
  if (v0)
  {
    v5 = v3;
    if (v3)
    {
      if (v4)
      {
        strlen(v4);
        v6 = *(v5 + 1);
        ccder_sizeof();
        v7 = sub_100087A40();
        if (sub_100087A74(v7))
        {
          sub_100001AE0();
          if (ccder_blob_encode_body() && ccder_blob_encode_tl() && (sub_1000017C8(), sub_1000023D8(), sub_100001950(), sub_1000023D8(), v8 == v1) && (v9 = sub_100087A5C()) != 0)
          {
            return sub_100087930(v9);
          }

          else
          {
            sub_100087998();
            free(v1);
            return 0xFFFFFFFFLL;
          }
        }

        else
        {
          return 4294967279;
        }
      }
    }
  }

  return result;
}

uint64_t sub_1000B0BA4(void *a1, uint64_t a2, void *a3)
{
  v3 = 0;
  __s = 0;
  __n = 0;
  v4 = 0xFFFFFFFFLL;
  if (a1 && a2 && a3)
  {
    if (sub_1000B0318(a3, &__s, &__n))
    {
      v3 = 0;
    }

    else
    {
      v7 = a2 + 2 + *(a2 + 1);
      v8 = ccder_sizeof();
      v9 = sub_100087A74(v8);
      v3 = v9;
      if (v9)
      {
        v15 = v9;
        if (!ccder_blob_encode_body())
        {
          goto LABEL_15;
        }

        v18 = v3;
        v19 = v15;
        v10 = a2 + 2 + *(a2 + 1);
        ccder_blob_encode_body();
        sub_100001A3C();
        v18 = v3;
        v19 = v11;
        sub_1000835EC();
        ccder_blob_encode_tl();
        sub_100001A3C();
        if (v12 != v3)
        {
          goto LABEL_15;
        }

        v13 = sub_100087A5C();
        if (v13)
        {
          v4 = 0;
          v13[1] = v3;
          v13[2] = 0;
          *v13 = *a1;
          *a1 = v13;
          v3 = 0;
        }

        else
        {
LABEL_15:
          v4 = 0xFFFFFFFFLL;
        }
      }

      else
      {
        v4 = 4294967279;
      }
    }
  }

  if (__s)
  {
    memset_s(__s, __n, 0, __n);
    free(__s);
  }

  if (v3)
  {
    memset_s(v3, 0, 0, 0);
    free(v3);
  }

  return v4;
}

uint64_t sub_1000B0D30(uint64_t a1)
{
  v7 = sub_1000879C4(a1);
  if (v2)
  {
    v3 = v2;
    result = ccder_blob_encode_body_tl();
    if (!result)
    {
      return result;
    }

    v6 = *v3;
    v5 = v3[1];
    if ((ccder_blob_encode_body_tl() & 1) == 0)
    {
      return 0;
    }
  }

  else if (!ccder_blob_encode_body_tl() || (ccder_blob_encode_tl() & 1) == 0)
  {
    return 0;
  }

  *v1 = v7;
  return 1;
}

uint64_t sub_1000B0DD8(__int128 *a1, int a2, uint64_t a3)
{
  v5 = *a3;
  v4 = *(a3 + 8);
  v6 = *(a3 + 20);
  v37 = *a1;
  if (a2)
  {
    v7 = *a1;
    sub_10008794C();
    v8 = ccder_blob_decode_range();
    if ((v8 & 1) == 0)
    {
      return 0;
    }

    v5 = v38;
    v16 = (v39 - v38);
    sub_100087A0C(v8, v9, v10, v11, v12, v13, v14, v15, v37, *(&v37 + 1), v38, v39, v40);
LABEL_4:
    sub_10008794C();
    v17 = ccder_blob_decode_range();
    if (v17)
    {
      sub_100087A0C(v17, v18, v19, v20, v21, v22, v23, v24, v37, *(&v37 + 1), v38, v39, v40);
      if (v34 <= 4)
      {
        v35 = *v33;
        *a3 = v5;
        *(a3 + 8) = v16;
        *(a3 + 16) = v35;
        *(a3 + 20) = v6;
        return sub_100087960(v25, v26, v27, v28, v29, v30, v31, v32, v37);
      }
    }

    return 0;
  }

  LODWORD(v40) = v4;
  result = sub_1000B0EB4(&v37, 4, v5, &v40);
  if (result)
  {
    v16 = v40;
    goto LABEL_4;
  }

  return result;
}

uint64_t sub_1000B0EB4(uint64_t a1, uint64_t a2, void *a3, unsigned int *a4)
{
  sub_1000879C4(a1);
  sub_10008794C();
  v6 = ccder_blob_decode_range();
  if (v6)
  {
    sub_100087A0C(v6, v27, v7, v8, v9, v10, v11, v12, v24, v26, v27, v28, v29);
    if (!a3 || !a4)
    {
      return sub_100087960(v13, v14, v15, v16, v17, v18, v19, v20, v25);
    }

    v22 = v21 - v14;
    if (*a4 >= v21 - v14)
    {
      v13 = memcpy(a3, v14, v22);
      *a4 = v22;
      return sub_100087960(v13, v14, v15, v16, v17, v18, v19, v20, v25);
    }
  }

  return 0;
}

uint64_t sub_1000B0F34(uint64_t a1)
{
  v17 = sub_1000879C4(a1);
  if (v2)
  {
    sub_100087A28(v1, v2, v2[1], *v2, v5, v6, v7, v8, v17.n128_i64[0]);
    result = ccder_blob_encode_body_tl();
    if ((result & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    sub_100087A28(v1, 0, v3, v4, v5, v6, v7, v8, v17.n128_i64[0]);
    result = ccder_blob_encode_tl();
    if (!result)
    {
      return result;
    }
  }

  return sub_100087960(result, v10, v11, v12, v13, v14, v15, v16, *&v17);
}

uint64_t sub_1000B0F90(uint64_t a1)
{
  v17 = sub_1000879C4(a1);
  if (v2)
  {
    sub_100087A28(v1, v2, v3, v2, v5, v6, v7, v8, v17.n128_i64[0]);
    result = ccder_blob_encode_body_tl();
    if ((result & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    sub_100087A28(v1, 0, v3, v4, v5, v6, v7, v8, v17.n128_i64[0]);
    result = ccder_blob_encode_tl();
    if (!result)
    {
      return result;
    }
  }

  return sub_100087960(result, v10, v11, v12, v13, v14, v15, v16, *&v17);
}

uint64_t sub_1000B0FF0(uint64_t a1, void *a2)
{
  sub_1000879C4(a1);
  sub_10008794C();
  v3 = ccder_blob_decode_range();
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  sub_100087A0C(v3, v24, v4, v5, v6, v7, v8, v9, v21, v23, v24, v25, v26);
  if (v11 > 0x18)
  {
    return 0;
  }

  v12 = memcpy(a2, v10, v11 & 0x1F);
  return sub_100087960(v12, v13, v14, v15, v16, v17, v18, v19, v22);
}

uint64_t sub_1000B1058()
{
  sub_100087A34();
  v1 = v0;
  v3 = v2;
  v18 = 0;
  if (sub_1000B08B0(&v18, off_1000EABE0, *v2) || sub_1000B08B0(&v18, off_1000EABE8, v3[1]) || sub_1000B08B0(&v18, off_1000EABF0, *(v3 + 1)) || sub_1000B08B0(&v18, off_1000EAC00, v3[4]) || sub_1000B08B0(&v18, off_1000EAC10, v3[5]) || sub_1000B08B0(&v18, off_1000EAC28, *(v3 + 26)) || sub_1000B08B0(&v18, off_1000EAC30, *(v3 + 34)) || sub_1000B08B0(&v18, off_1000EA938, *(v3 + 42)) || sub_1000B08B0(&v18, off_1000EAB00, *(v3 + 46)) || (v4 = sub_1000B05EC(), v4) || v1 && (sub_1000B08B0(&v18, off_1000EAC18, *(v3 + 66)) || sub_1000B08B0(&v18, off_1000EAC20, *(v3 + 67)) || sub_1000B08B0(&v18, off_1000EAF08, *(v3 + 17)) || (v4 = sub_1000B08B0(&v18, off_1000EAF58, *(v3 + 19)), v4)) || (v5 = sub_1000879D0(v4), v5))
  {
    v13 = 0xFFFFFFFFLL;
  }

  else
  {
    v13 = 0;
    sub_100001708(v5, v6, v7, v8, v9, v10, v11, v12, v15, v16, v17);
  }

  sub_100087284(&v18);
  return v13;
}

uint64_t sub_1000B1248(uint64_t a1)
{
  result = sub_100087AA0(__stack_chk_guard);
  if (v4 && a1)
  {
    v5 = v3;
    if (v3)
    {
      memset_s(v3, 0x54uLL, 0, 0x54uLL);
      bzero(v7, 0x228uLL);
      v7[4] = off_1000EABE8;
      v7[9] = off_1000EABF0;
      v7[14] = off_1000EAC00;
      v7[19] = off_1000EAC10;
      v7[24] = off_1000EAC18;
      v7[29] = off_1000EAC20;
      v7[34] = off_1000EAC28;
      v7[39] = off_1000EAC30;
      v7[44] = off_1000EA938;
      v7[49] = off_1000EAB00;
      v7[54] = off_1000EACF8;
      v8[2] = off_1000EAF08;
      v8[7] = off_1000EAF58;
      sub_1000878F0();
      sub_100087AE4();
      *v5 = sub_1000AFE9C();
      *(v5 + 1) = sub_1000AFE9C();
      *(v5 + 1) = sub_1000AFE9C();
      *(v5 + 4) = sub_1000AFE9C();
      *(v5 + 5) = sub_1000AFE9C();
      *(v5 + 26) = sub_1000AFE9C();
      *(v5 + 34) = sub_1000AFE9C();
      *(v5 + 42) = sub_1000AFE9C();
      *(v5 + 46) = sub_1000AFE9C();
      sub_1000B0168(v8, 4, v5 + 50, 16);
      v5[66] = sub_1000AFE9C();
      v5[67] = sub_1000AFE9C();
      *(v5 + 68) = sub_1000AFE9C();
      sub_1000AFE9C();
      result = sub_1000879B8();
      *(v5 + 76) = v6;
    }
  }

  return result;
}

uint64_t sub_1000B149C(uint64_t a1)
{
  result = sub_100087AA0(__stack_chk_guard);
  if (v4)
  {
    if (a1)
    {
      v5 = v3;
      if (v3)
      {
        sub_1000879F0(v3);
        bzero(v7, 0x98uLL);
        v7[4] = off_1000EAC00;
        v7[9] = off_1000EAB00;
        v7[14] = off_1000EABE0;
        sub_1000878F0();
        if (sub_100087AE4())
        {
          *v5 = sub_1000AFE9C();
          v5[1] = sub_1000AFE9C();
          v5[2] = sub_1000AFE9C();
          sub_1000AFE9C();
          result = sub_1000879B8();
          v5[3] = v6;
        }

        else
        {
          return 0xFFFFFFFFLL;
        }
      }
    }
  }

  return result;
}

uint64_t sub_1000B15C8(uint64_t a1)
{
  result = sub_100087AA0(__stack_chk_guard);
  if (v6)
  {
    if (a1)
    {
      v7 = v3;
      if (v3)
      {
        v8 = v4;
        if (v4)
        {
          v9 = v5;
          sub_1000879F0(v3);
          sub_1000879F0(v8);
          v12 = 0;
          v10[0] = 0u;
          v11 = 0u;
          v14 = 0u;
          v15 = 0u;
          v10[1] = off_1000EAEB0;
          v13 = off_1000EA9D8;
          sub_1000878F0();
          sub_1000AFCE8();
          if (sub_1000B0168(v10, 4, v7, 16) && sub_1000B0168(&v11 + 8, 4, v8, 16))
          {
            return sub_1000B0168(&v15, 4, v9, 16) - 1;
          }

          else
          {
            return 0xFFFFFFFFLL;
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_1000B1728(uint64_t a1)
{
  result = sub_100087AA0(__stack_chk_guard);
  if (v4)
  {
    if (a1)
    {
      v5 = v3;
      if (v3)
      {
        memset_s(v3, 0x58uLL, 0, 0x58uLL);
        bzero(v8, 0x200uLL);
        v8[4] = off_1000EA9D8;
        v9[2] = off_1000EA9B8;
        v10[2] = off_1000EA9B0;
        v10[7] = off_1000EA9D0;
        v10[12] = off_1000EAC58;
        v12 = off_1000EAC00;
        v13 = off_1000EAC08;
        v14 = off_1000EAB00;
        v15 = off_1000EABF0;
        v16 = off_1000EABF8;
        v17 = off_1000EADB8;
        v18 = off_1000EAE28;
        sub_1000878F0();
        sub_100087AE4();
        *v5 = sub_1000AFE9C();
        if (!sub_1000B0168(v9, 4, v5 + 1, 16))
        {
          return 0xFFFFFFFFLL;
        }

        if (!sub_1000B0168(v10, 4, v5 + 5, 16))
        {
          return 0xFFFFFFFFLL;
        }

        v5[9] = sub_1000AFE9C();
        v5[10] = sub_1000AFE9C();
        v5[11] = sub_1000AFE9C();
        v5[12] = sub_1000AFE9C();
        v5[15] = sub_1000AFE9C();
        v5[13] = sub_1000AFE9C();
        v5[14] = sub_1000AFE9C();
        if (!sub_1000877D8(&v11))
        {
          return 0xFFFFFFFFLL;
        }

        v6 = v5[9];
        if ((v6 & 0x400) != 0)
        {
          *(v5 + 9) = sub_1000AFE9C();
          if ((v5[9] & 0x800) == 0)
          {
            return 0;
          }
        }

        else if ((v6 & 0x800) == 0)
        {
          return 0;
        }

        sub_1000AFE9C();
        result = sub_1000879B8();
        v5[20] = v7;
      }
    }
  }

  return result;
}

uint64_t sub_1000B19A0(int *a1, void *a2, _DWORD *a3)
{
  v18 = 0;
  v3 = 4294967273;
  if (a2 && a3)
  {
    v4 = a1;
    if (a1 && (v5 = *a1) != 0)
    {
      if (v5)
      {
        a1 = sub_1000B06D0();
        v5 = *v4;
      }

      if ((v5 & 2) != 0)
      {
        a1 = sub_1000B06D0();
      }

      v7 = sub_1000879D0(a1);
      if (!v7)
      {
        v3 = 0;
        sub_100001708(v7, v8, v9, v10, v11, v12, v13, v14, v15, v16, v17);
      }
    }

    else
    {
      v3 = 0;
      *a2 = 0;
      *a3 = 0;
    }
  }

  sub_100087284(&v18);
  return v3;
}

uint64_t sub_1000B1A5C(uint64_t a1, uint64_t a2, _DWORD *__s)
{
  v6 = 0;
  v3 = 0xFFFFFFFFLL;
  if (a2)
  {
    if (a1)
    {
      if (__s)
      {
        memset_s(__s, 0x24uLL, 0, 0x24uLL);
        sub_1000018C8();
        if (sub_1000AFCE8())
        {
          if (!sub_1000B01DC())
          {
            *__s |= 2u;
          }

          v3 = 0;
          if (!sub_1000B01DC())
          {
            *__s |= 1u;
          }
        }
      }
    }
  }

  sub_100087284(&v6);
  return v3;
}

uint64_t sub_1000B1B34(void *a1, uint64_t a2, uint64_t a3)
{
  v21 = 0;
  v22 = 0;
  v3 = 4294967285;
  v23 = 0;
  if (a1 && a2 && a3)
  {
    if (*a1 && (v5 = a1[1], sub_1000B05EC()) || a1[2] && (v6 = a1[3], sub_1000B05EC()) || a1[4] && (v7 = a1[5], sub_1000B05EC()) || a1[6] && (v8 = a1[7], sub_1000B05EC()) || a1[8] && (v9 = a1[9], sub_1000B05EC()) || a1[10] && (v10 = a1[11], sub_1000B05EC()))
    {
      v3 = 4294967273;
    }

    else
    {
      v11 = sub_1000B0318(&v23, &v21, &v22);
      if (v11)
      {
        v3 = 0xFFFFFFFFLL;
      }

      else
      {
        v3 = 0;
        sub_100001708(v11, v12, v13, v14, v15, v16, v17, v18, v20, v21, v22);
      }
    }
  }

  sub_100087284(&v23);
  return v3;
}

uint64_t sub_1000B1C94(int a1, int a2, void *__s)
{
  if (!__s)
  {
    return 4294967285;
  }

  memset_s(__s, 0x60uLL, 0, 0x60uLL);
  bzero(v72, 0xE8uLL);
  v71 = off_1000EA988;
  v72[4] = off_1000EAF78;
  v72[9] = off_1000EAF70;
  v72[14] = off_1000EA948;
  v72[19] = off_1000EAF68;
  v72[24] = off_1000EA9C0;
  v65 = xmmword_1000B9590;
  v66 = 0;
  v67 = &v71;
  sub_1000878F0();
  sub_100087AE4();
  sub_100087904();
  v4 = ccder_blob_decode_range();
  if (v4)
  {
    v12 = sub_100087918(v4, v5, v6, v7, v8, v9, v10, v11, 6, 0, 0, &v71, v68, v69, v70);
    *(v13 + 24) = v12;
    *__s = v14;
    __s[1] = v15;
  }

  sub_100087904();
  v16 = ccder_blob_decode_range();
  if (v16)
  {
    v24 = sub_100087918(v16, v17, v18, v19, v20, v21, v22, v23, v65, *(&v65 + 1), v66, v67, v68, v69, v70);
    v25[4] = v24;
    __s[2] = v26;
    __s[3] = v27;
  }

  sub_100087904();
  v28 = ccder_blob_decode_range();
  if (v28)
  {
    v36 = sub_100087918(v28, v29, v30, v31, v32, v33, v34, v35, v65, *(&v65 + 1), v66, v67, v68, v69, v70);
    *(v37 + 104) = v36;
    __s[4] = v38;
    __s[5] = v39;
  }

  sub_100087904();
  v40 = ccder_blob_decode_range();
  if (v40)
  {
    v48 = sub_100087918(v40, v41, v42, v43, v44, v45, v46, v47, v65, *(&v65 + 1), v66, v67, v68, v69, v70);
    v49[9] = v48;
    __s[6] = v50;
    __s[7] = v51;
  }

  sub_100087904();
  v52 = ccder_blob_decode_range();
  if (v52)
  {
    v60 = sub_100087918(v52, v53, v54, v55, v56, v57, v58, v59, v65, *(&v65 + 1), v66, v67, v68, v69, v70);
    *(v61 + 184) = v60;
    __s[8] = v62;
    __s[9] = v63;
  }

  sub_100087904();
  if ((ccder_blob_decode_range() & 1) == 0)
  {
    return 0;
  }

  result = 0;
  __s[10] = v68;
  __s[11] = (v69 - v68);
  return result;
}

uint64_t sub_1000B1E8C(uint64_t a1, void *a2, _DWORD *a3)
{
  v17 = 0;
  v3 = 4294967273;
  if (a2 && a3)
  {
    if (a1)
    {
      if (!sub_1000B06D0())
      {
        v5 = sub_1000B06D0();
        if (!v5)
        {
          v6 = sub_1000879D0(v5);
          if (!v6)
          {
            v3 = 0;
            sub_100001708(v6, v7, v8, v9, v10, v11, v12, v13, v14, v15, v16);
          }
        }
      }
    }

    else
    {
      v3 = 0;
      *a2 = 0;
      *a3 = 0;
    }
  }

  sub_100087284(&v17);
  return v3;
}

uint64_t sub_1000B1F3C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = 0;
  v3 = 0xFFFFFFFFLL;
  if (a2)
  {
    if (a1)
    {
      if (a3)
      {
        sub_1000879F0(a3);
        sub_1000018C8();
        if (sub_1000AFCE8())
        {
          sub_1000B01DC();
          sub_1000B01DC();
          v3 = 0;
        }
      }
    }
  }

  sub_100087284(&v5);
  return v3;
}

uint64_t sub_1000B1FE8(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  if (a1 && a2)
  {
    sub_1000878F0();
    sub_1000AFCE8();
    return sub_1000AFE9C() & 0x1F;
  }

  return v2;
}

uint64_t sub_1000B209C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  bzero(v10, 0xE8uLL);
  v9 = off_1000EAC38;
  v10[4] = off_1000EAC40;
  v10[9] = off_1000EAC48;
  v10[14] = off_1000EAC50;
  v10[19] = off_1000EA9C0;
  v11[2] = off_1000EAF60;
  v6 = xmmword_1000B9590;
  v7 = 0;
  v8 = &v9;
  sub_1000878F0();
  sub_1000AFCE8();
  *a3 = sub_1000AFE9C();
  *(a3 + 4) = sub_1000AFE9C();
  *(a3 + 8) = sub_1000AFE9C();
  *(a3 + 12) = sub_1000AFE9C();
  v5 = 65;
  if (!sub_1000B0EB4(v11, 4, (a3 + 16), &v5))
  {
    return 0xFFFFFFFFLL;
  }

  *(a3 + 88) = v5;
  return sub_1000B0168(&v12, 4, (a3 + 96), 3) - 1;
}

void *sub_1000B2214(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  if (a1)
  {
    if (a2)
    {
      v2 = off_1000EA930;
      if (off_1000EA930)
      {
        sub_100087970();
        sub_1000AFCE8();
        return 0;
      }
    }
  }

  return v2;
}

void *sub_1000B25D4(uint64_t a1, uint64_t a2, void *a3, _DWORD *a4)
{
  sub_1000879C4(a1);
  sub_10008794C();
  v6 = ccder_blob_decode_range();
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v14 = v31;
  sub_100087A0C(v6, v7, v8, v9, v10, v11, v12, v13, v28, v30, v31, v32, v33);
  if (a3 && a4)
  {
    v24 = v23 - v14;
    v25 = (v23 - v14);
    result = calloc(v25, 1uLL);
    if (!result)
    {
      return result;
    }

    v27 = result;
    v15 = memcpy(result, v14, v25);
    *a3 = v27;
    *a4 = v24;
  }

  return sub_100087960(v15, v16, v17, v18, v19, v20, v21, v22, v29);
}

uint64_t sub_1000B2674(__int128 *a1, uint64_t a2, void *a3)
{
  if (a3)
  {
    *a3 = 0;
  }

  v5 = *a1;
  result = sub_100087AC4();
  if (result)
  {
    if (ccn_read_uint())
    {
      return 0;
    }

    else
    {
      *a1 = v7;
      if (a3)
      {
        *a3 = 0;
      }

      return 1;
    }
  }

  return result;
}

uint64_t sub_1000B26F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = a6 + a7;
  if (!ccder_blob_encode_implicit_raw_octet_string() || !ccder_blob_encode_implicit_uint64() || !ccder_blob_encode_implicit_uint64() || !ccder_blob_encode_implicit_uint64())
  {
    return 4294967273;
  }

  sub_1000835EC();
  v7 = ccder_blob_encode_tl();
  result = 4294967273;
  if (v7)
  {
    if (a6 == v10)
    {
      return 0;
    }

    else
    {
      return 4294967273;
    }
  }

  return result;
}

uint64_t sub_1000B27BC(void *a1, void *a2, _BYTE *a3, _BYTE *a4, _BYTE *a5, uint64_t a6, uint64_t a7)
{
  LOBYTE(v51) = a6;
  *(&v51 + 1) = a6 + a7;
  sub_1000835EC();
  v12 = ccder_blob_decode_range();
  if (!v12)
  {
    return 4294967277;
  }

  v20 = sub_100087AAC(v12, v13, v14, v15, v16, v17, v18, v19, v46, 0, v51);
  v22 = sub_1000B2674(v20, 0x8000000000000003, v21);
  if (!v22)
  {
    return 4294967277;
  }

  if (a5)
  {
    sub_100087A18();
    *a5 = v30;
  }

  v31 = sub_100087AAC(v22, v23, v24, v25, v26, v27, v28, v29, v47, v49, v52);
  v33 = sub_1000B2674(v31, 0x8000000000000002, v32);
  if (!v33)
  {
    return 4294967277;
  }

  if (a4)
  {
    sub_100087A18();
    *a4 = v41;
  }

  v42 = sub_100087AAC(v33, v34, v35, v36, v37, v38, v39, v40, v48, v50, v53);
  if (!sub_1000B2674(v42, 0x8000000000000001, v43))
  {
    return 4294967277;
  }

  if (a3)
  {
    sub_100087A18();
    *a3 = v44;
  }

  sub_100087904();
  if (ccder_blob_decode_range())
  {
    v51 = v56;
    if (a1)
    {
      if (a2)
      {
        *a1 = v54;
        *a2 = (v55 - v54);
      }
    }
  }

  if (v51 == *(&v51 + 1))
  {
    return 0;
  }

  else
  {
    return 4294967277;
  }
}

uint64_t sub_1000B28C8(uint64_t a1, uint64_t a2)
{
  v6 = *a1;
  v7 = *a1 + *(a1 + 8);
  __s2 = *a2;
  v5 = *a2 + *(a2 + 8);
  if (!ccder_blob_decode_sequence_tl() || !ccder_blob_decode_sequence_tl() || !ccder_blob_decode_tag() || !ccder_blob_decode_len() || !v6 || !ccder_blob_decode_tag() || !ccder_blob_decode_len() || !__s2)
  {
    return 4294967293;
  }

  v3 = memcmp(v6, __s2, 0);
  if (v3 > 0)
  {
    return 1;
  }

  else
  {
    return ((v3 != 0) << 31 >> 31);
  }
}

uint64_t sub_1000B2AC4(unsigned int *a1, unint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (a2 < 4)
  {
    return 0xFFFFFFFFLL;
  }

  v9 = a3;
  if (*a1 >= a3)
  {
    v19 = &a9;
    if (!a3)
    {
      return 0;
    }

    v11 = (a1 + 1);
    while (1)
    {
      v12 = v19;
      v13 = *v19;
      v19 += 2;
      v16 = *v11;
      v14 = v11 + 4;
      v15 = v16;
      if (v16 > a2)
      {
        break;
      }

      if (v13)
      {
        v17 = v12[1];
        if (*v17 < v15)
        {
          return 0xFFFFFFFFLL;
        }

        memcpy(v13, v14, v15);
        *v17 = v15;
      }

      v11 = &v14[v15];
      if (!--v9)
      {
        return 0;
      }
    }
  }

  return 0xFFFFFFFFLL;
}

uint64_t sub_1000B2B90(uint64_t a1, uint64_t a2, void *a3)
{
  *&v6 = a1;
  *(&v6 + 1) = a1 + a2;
  if (!ccder_blob_decode_range() || !sub_1000B2674(&v6, 0x8000000000000005, a3 + 3) || !sub_1000B2674(&v6, 0x8000000000000004, a3 + 5) || !sub_1000B2674(&v6, 0x8000000000000003, a3 + 2) || !sub_1000B2674(&v6, 0x8000000000000002, a3 + 4) || !sub_1000B2674(&v6, 0x8000000000000001, a3 + 1))
  {
    return 4294967277;
  }

  v4 = sub_1000B2674(&v6, 0x8000000000000000, a3);
  result = 4294967277;
  if (v4)
  {
    if (v6 == *(&v6 + 1))
    {
      return 0;
    }

    else
    {
      return 4294967277;
    }
  }

  return result;
}