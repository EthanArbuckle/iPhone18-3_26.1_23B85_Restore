const __CFDictionary *sub_100013248(void *a1)
{
  result = sub_100010FF4(a1, kSCEntNetService);
  if (result)
  {
    return (CFDictionaryContainsKey(result, @"IPIsCoupled") != 0);
  }

  return result;
}

uint64_t sub_1000132B8(const __CFDictionary *a1, int a2, _DWORD *a3)
{
  v4 = &kSCEntNetIPv6;
  if (a2 == 2)
  {
    v4 = &kSCEntNetIPv4;
  }

  result = CFDictionaryGetValue(a1, *v4);
  if (result)
  {
    result = sub_1000118D0(result);
    if (result)
    {
      if ((*(result + 8) & 2) != 0)
      {
        *a3 = *(result + 24);
        return 1;
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_100013354(uint64_t a1)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2000000000;
  v8 = 0;
  if (qword_100081950 != -1)
  {
    sub_100067CB4();
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  block[2] = sub_10001344C;
  block[3] = &unk_10007A778;
  block[4] = &v5;
  block[5] = a1;
  dispatch_sync(qword_100081958, block);
  v2 = *(v6 + 6);
  _Block_object_dispose(&v5, 8);
  return v2;
}

uint64_t sub_10001344C(uint64_t result)
{
  v1 = result;
  if (qword_100081940)
  {
    v2 = *qword_100081940;
    if (*qword_100081940)
    {
      v3 = (qword_100081940 + 16);
      do
      {
        result = *(v3 - 1);
        if (!result)
        {
          break;
        }

        result = strcmp(result, *(v1 + 40));
        if (!result)
        {
          goto LABEL_9;
        }

        v4 = *v3;
        v3 += 4;
        v2 = v4;
      }

      while (v4);
    }
  }

  else
  {
    result = if_nametoindex(*(result + 40));
    v2 = result;
LABEL_9:
    *(*(*(v1 + 32) + 8) + 24) = v2;
  }

  return result;
}

uint64_t sub_1000134F8(uint64_t a1, void *key)
{
  if (key && qword_100081938 && (Value = CFDictionaryGetValue(qword_100081938, key)) != 0)
  {
    if (Value == -1)
    {
      return 0;
    }

    else
    {
      return Value;
    }
  }

  else
  {
    v15 = 0u;
    v16 = 0u;
    __strlcpy_chk();
    v6 = sub_1000136F8();
    if (v6 == -1 || ioctl(v6, 0xC020699DuLL, &v15) == -1)
    {
      return 0;
    }

    else
    {
      v7 = v16;
      if (v16 && sub_100038A68(v16, v14))
      {
        sub_1000035EC();
        _SC_syslog_os_log_mapping();
        if (__SC_log_enabled())
        {
          v8 = _os_log_pack_size();
          __chkstk_darwin(v8, v9, v10);
          v11 = *__error();
          v12 = _os_log_pack_fill();
          *v12 = 136316162;
          *(v12 + 4) = "effective_ifindex_get";
          *(v12 + 12) = 2080;
          *(v12 + 14) = a1;
          *(v12 + 22) = 1024;
          *(v12 + 24) = key;
          *(v12 + 28) = 2080;
          *(v12 + 30) = v14;
          *(v12 + 38) = 1024;
          *(v12 + 40) = v7;
          __SC_log_send();
        }

        v5 = v7;
      }

      else
      {
        v5 = 0;
        v7 = 0xFFFFFFFFLL;
      }

      sub_100013844(key, v7);
    }
  }

  return v5;
}

uint64_t sub_1000136F8()
{
  if (dword_1000815D8 == -1)
  {
    dword_1000815D8 = socket(2, 2, 0);
    if (dword_1000815D8 == -1)
    {
      sub_1000035EC();
      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v0 = _os_log_pack_size();
        __chkstk_darwin(v0, v1, v2);
        v3 = *__error();
        v4 = _os_log_pack_fill();
        v5 = __error();
        v6 = strerror(*v5);
        *v4 = 136315138;
        *(v4 + 4) = v6;
        __SC_log_send();
      }
    }
  }

  return dword_1000815D8;
}

void sub_100013844(void *key, void *value)
{
  v2 = value;
  v3 = key;
  Mutable = qword_100081938;
  if (!qword_100081938)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, &unk_1000815E0, &unk_100081610);
    qword_100081938 = Mutable;
  }

  CFDictionarySetValue(Mutable, v3, v2);
}

uint64_t sub_100013930(const __CFDictionary *a1, const void *a2)
{
  Value = CFDictionaryGetValue(a1, kSCPropConfirmedInterfaceName);
  TypeID = CFStringGetTypeID();
  if (Value && CFGetTypeID(Value) == TypeID)
  {
    return CFEqual(Value, a2);
  }

  else
  {
    return 1;
  }
}

CFTypeRef sub_1000139D0(uint64_t a1, __int128 *a2)
{
  v3 = a2[2];
  v4 = *a2;
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v4;
  v5 = a2[3];
  v6 = a2[4];
  v7 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v7;
  *(a1 + 48) = v5;
  *(a1 + 64) = v6;
  v8 = *a1;
  if (v8)
  {
    CFRetain(v8);
  }

  v9 = *(a1 + 8);
  if (v9)
  {
    CFRetain(v9);
  }

  result = *(a1 + 104);
  if (result)
  {

    return CFRetain(result);
  }

  return result;
}

uint64_t sub_100013A9C(int *a1, uint64_t a2)
{
  v2 = a1[1];
  if (v2 == a1[2])
  {
    if (!qword_100081998)
    {
      qword_100081998 = os_log_create("com.apple.SystemConfiguration", "IPMonitor");
    }

    _SC_syslog_os_log_mapping();
    result = __SC_log_enabled();
    if (result)
    {
      v4 = _os_log_pack_size();
      __chkstk_darwin(v4, v5, v6);
      v7 = *__error();
      *_os_log_pack_fill() = 0;
      return __SC_log_send();
    }
  }

  else
  {
    if (v2 < 1)
    {
LABEL_10:
      v11 = &a1[28 * v2 + 4];
    }

    else
    {
      v9 = 0;
      v10 = a1 + 14;
      while (*(a2 + 40) >= *v10)
      {
        ++v9;
        v10 += 28;
        if (v2 == v9)
        {
          goto LABEL_10;
        }
      }

      if (v9 < v2)
      {
        v12 = &a1[28 * v2 + 4];
        do
        {
          --v2;
          v13 = *(v12 - 2);
          *(v12 + 4) = *(v12 - 3);
          *(v12 + 5) = v13;
          *(v12 + 6) = *(v12 - 1);
          v14 = *(v12 - 6);
          *v12 = *(v12 - 7);
          *(v12 + 1) = v14;
          v15 = *(v12 - 4);
          *(v12 + 2) = *(v12 - 5);
          *(v12 + 3) = v15;
          v12 -= 28;
        }

        while (v2 > v9);
      }

      v11 = (v10 - 10);
    }

    result = sub_1000139D0(v11, a2);
    ++a1[1];
  }

  return result;
}

uint64_t sub_100013C6C(int *a1, uint64_t a2)
{
  if (a1)
  {
    if (!qword_100081998)
    {
      qword_100081998 = os_log_create("com.apple.SystemConfiguration", "IPMonitor");
    }

    _SC_syslog_os_log_mapping();
    result = __SC_log_enabled();
    if (result)
    {
      v5 = _os_log_pack_size();
      __chkstk_darwin(v5, v6, v7);
      v8 = *__error();
      v9 = _os_log_pack_fill();
      v10 = a1[1];
      *v9 = 136315394;
      *(v9 + 4) = a2;
      *(v9 + 12) = 1024;
      *(v9 + 14) = v10;
      result = __SC_log_send();
    }

    if (a1[1] >= 1)
    {
      v11 = 0;
      v12 = (a1 + 19);
      do
      {
        inet_ntop(*a1, v12, v27, 0x2Eu);
        if (!qword_100081998)
        {
          qword_100081998 = os_log_create("com.apple.SystemConfiguration", "IPMonitor");
        }

        _SC_syslog_os_log_mapping();
        result = __SC_log_enabled();
        if (result)
        {
          v13 = _os_log_pack_size();
          __chkstk_darwin(v13, v14, v15);
          v16 = *__error();
          v17 = _os_log_pack_fill();
          v18 = *(v12 - 52);
          v19 = *(v12 - 60);
          v20 = *(v12 - 5);
          v21 = " [ineligible]";
          if (!*(v12 - 2))
          {
            v21 = "";
          }

          *v17 = 67110402;
          *(v17 + 4) = v11;
          *(v17 + 8) = 2112;
          *(v17 + 10) = v18;
          *(v17 + 18) = 2112;
          *(v17 + 20) = v19;
          *(v17 + 28) = 2080;
          *(v17 + 30) = v27;
          *(v17 + 38) = 1024;
          *(v17 + 40) = v20;
          *(v17 + 44) = 2080;
          *(v17 + 46) = v21;
          result = __SC_log_send();
        }

        ++v11;
        v12 += 112;
      }

      while (v11 < a1[1]);
    }
  }

  else
  {
    if (!qword_100081998)
    {
      qword_100081998 = os_log_create("com.apple.SystemConfiguration", "IPMonitor");
    }

    _SC_syslog_os_log_mapping();
    result = __SC_log_enabled();
    if (result)
    {
      v22 = _os_log_pack_size();
      __chkstk_darwin(v22, v23, v24);
      v25 = *__error();
      v26 = _os_log_pack_fill();
      *v26 = 136315138;
      *(v26 + 4) = a2;
      return __SC_log_send();
    }
  }

  return result;
}

_DWORD *sub_100014050(uint64_t a1, uint64_t a2, _DWORD *a3, int a4, void *a5, const __CFDictionary *a6, const __CFSet *a7)
{
  if (!a6)
  {
    sub_100068004();
  }

  v8 = a1;
  if (!a1)
  {
    if (!a5)
    {
      return 0;
    }

    goto LABEL_171;
  }

  v121 = a2;
  v123 = a7;
  v12 = 8 * *(a1 + 4);
  __chkstk_darwin(a1, a2, a3);
  v14 = (&v111 - ((v13 + 15) & 0xFFFFFFFF0));
  if (v13 >= 0x200)
  {
    v15 = 512;
  }

  else
  {
    v15 = v13;
  }

  bzero(&v111 - ((v13 + 15) & 0xFFFFFFFF0), v15);
  v17 = *(v8 + 4);
  if (a4 == 2)
  {
    v18 = 5;
  }

  else
  {
    v18 = 3;
  }

  v19 = &kSCEntNetIPv4;
  if (a4 != 2)
  {
    v19 = &kSCEntNetIPv6;
  }

  if (v17 < 1)
  {
    if (!a5)
    {
      return 0;
    }

LABEL_171:
    v127 = 0;
    *a5 = 0;
    return v127;
  }

  v116 = v14;
  v114 = &v111;
  v118 = a3;
  v120 = a6;
  v115 = a5;
  v127 = 0;
  v20 = 0;
  v21 = 0;
  v117 = 0;
  v131 = (v17 * v18);
  v124 = *v19;
  v22 = (v8 + 16);
  v119 = a4;
  v23 = a4 == 2;
  v24 = 0;
  if (v23)
  {
    v25 = 52;
  }

  else
  {
    v25 = 54;
  }

  v113 = v25;
  if (v23)
  {
    v26 = 54;
  }

  else
  {
    v26 = 52;
  }

  v112 = v26;
  v27 = off_10007AAC8;
  if (v23)
  {
    v28 = sub_100014AE4;
  }

  else
  {
    v27 = off_10007AC58;
    v28 = sub_100016230;
  }

  if (v23)
  {
    v29 = sub_100014B38;
  }

  else
  {
    v29 = sub_100016284;
  }

  v30 = 16;
  if (v23)
  {
    v30 = 4;
  }

  v140 = v29;
  v141 = v30;
  v31 = *(v27 + 18);
  *&v16 = 67110402;
  v111 = v16;
  v122 = v8;
  v133 = v28;
  do
  {
    if (v22[13])
    {
      v32 = 0;
    }

    else
    {
      v32 = v127 == 0;
    }

    v130 = v22;
    if (v32)
    {
      v33 = v22[10];
      if (HIBYTE(v33) == 3)
      {
        v127 = 0;
        v128 = 1;
        v129 = 1;
        v22 = v130;
        goto LABEL_40;
      }

      if (v121)
      {
        if (!*(v121 + 52))
        {
          v34 = *(v121 + 40);
          if (HIBYTE(v34) != 3)
          {
            v22 = v130;
            if (v130[11])
            {
              v128 = 0;
              v129 = 1;
              goto LABEL_39;
            }

            if (!*(v121 + 44))
            {
              v87 = v130[12];
              if (!v87 && !*(v121 + 48) || (v88 = *(v121 + 32), v89 = v130[8], v88 == v89))
              {
                v128 = 0;
                v129 = 1;
                v127 = v130;
                v22 = v130;
                goto LABEL_40;
              }

              if (*(v121 + 36) != v89)
              {
                v128 = 0;
                v129 = 1;
                if (v33 < v34 || v130[9] == v88)
                {
                  goto LABEL_38;
                }

                v90 = *(v121 + 48);
                if (!v87)
                {
                  v128 = 0;
                  v129 = 1;
                  if (v33 != v34 && v90)
                  {
LABEL_156:
                    v139 = v31;
                    v126 = v24;
                    if (!qword_100081998)
                    {
                      qword_100081998 = os_log_create("com.apple.SystemConfiguration", "IPMonitor");
                    }

                    _SC_syslog_os_log_mapping();
                    v91 = __SC_log_enabled();
                    v92 = v130;
                    if (v91)
                    {
                      v93 = _os_log_pack_size();
                      __chkstk_darwin(v93, v94, v95);
                      v96 = *__error();
                      v97 = _os_log_pack_fill();
                      v98 = *(v92 + 1);
                      v99 = v92[10];
                      v100 = *(v121 + 8);
                      v101 = *(v121 + 40);
                      *v97 = v111;
                      *(v97 + 4) = v113;
                      *(v97 + 8) = 2112;
                      *(v97 + 10) = v98;
                      *(v97 + 18) = 1024;
                      *(v97 + 20) = v99;
                      *(v97 + 24) = 1024;
                      *(v97 + 26) = v112;
                      *(v97 + 30) = 2112;
                      *(v97 + 32) = v100;
                      *(v97 + 40) = 1024;
                      *(v97 + 42) = v101;
                      __SC_log_send();
                    }

                    v129 = 0;
                    v127 = 0;
                    v102 = v117;
                    v116[v117] = v92;
                    v128 = 1;
                    v117 = v102 + 1;
                    v8 = v122;
                    v24 = v126;
                    v22 = v92;
                    v28 = v133;
                    v31 = v139;
                    goto LABEL_40;
                  }

                  goto LABEL_38;
                }

                if (v33 != v34 || !v90)
                {
                  goto LABEL_156;
                }
              }
            }
          }
        }
      }

      v128 = 0;
      v129 = 1;
LABEL_38:
      v22 = v130;
LABEL_39:
      v127 = v22;
      goto LABEL_40;
    }

    v128 = 1;
    v129 = 1;
LABEL_40:
    v35 = v22;
    v36 = sub_100010FF4(*v22, v124);
    v135 = sub_1000118D0(v36);
    if (!v135)
    {
      goto LABEL_135;
    }

    v37 = *(v35 + 10);
    v38 = v37 & 0xFFFFFF | 0x3000000;
    if (v129)
    {
      v38 = *(v35 + 10);
    }

    v132 = v38;
    if (v123)
    {
      v39 = CFSetContainsValue(v123, *v35) == 0;
    }

    else
    {
      v39 = 1;
    }

    v134 = v39;
    v40 = v135;
    v125 = v20;
    v126 = v24;
    v41 = v28(0);
    if (*v40 < 1)
    {
      goto LABEL_128;
    }

    v42 = 0;
    v136 = v37 & 0xFFFFFF;
    v43 = &v40[v41];
    do
    {
      if (v42 || (v44 = *(v40 + 4), v138 = v132, (v44 & 2) == 0))
      {
        v138 = v136 | (v43[15] << 24);
      }

      if (!v21)
      {
        v45 = v131;
        v46 = v28(v131);
        v21 = malloc_type_malloc(v46, 0x1000040CBA68D63uLL);
        bzero(v21, v46);
        v21[1] = v45;
      }

      v47 = v28(0);
      LODWORD(v48) = *v21;
      if (*v21 < 1)
      {
        v49 = 0;
        v69 = -1;
        goto LABEL_92;
      }

      v137 = v42;
      v49 = 0;
      v50 = 0;
      v51 = 0;
      v52 = v21 + v47;
      v139 = -1;
      while (1)
      {
        v53 = v21;
        v54 = v31;
        v55 = *(v52 + 3);
        v56 = v140;
        v57 = v140(v43);
        v58 = v56(v52);
        v59 = memcmp(v57, v58, v141);
        if (v59 || (v59 = *v43 - *v52, *v43 != *v52))
        {
          v60 = 0;
          v61 = 1;
          v31 = v54;
          v21 = v53;
          goto LABEL_58;
        }

        v65 = *(v43 + 1);
        v66 = *(v52 + 1);
        v67 = v65 - v66;
        v31 = v54;
        v21 = v53;
        if (v65 == v66 || (!v65 || !v66) && (*(v43 + 8) & 1) == 0 && (*(v52 + 8) & 1) == 0)
        {
          break;
        }

        v61 = 0;
        if (v55 > v138)
        {
          v68 = -1;
        }

        else
        {
          v68 = 1;
        }

        if (v55 == v138)
        {
          v59 = v67;
        }

        else
        {
          v59 = v68;
        }

        v60 = 1;
LABEL_58:
        if ((v60 & (v50 == 0)) != 0)
        {
          v50 = v52;
        }

        if (v59 < 0)
        {
          if (v139 == -1)
          {
            if (v50)
            {
              v63 = v60;
            }

            else
            {
              v63 = 0;
            }

            if (v63 != 1)
            {
              goto LABEL_76;
            }

            v64 = *(v50 + 8);
            v139 = v51;
            if ((v64 & 1) == 0)
            {
              if (*(v52 + 8))
              {
                v49 = 1;
              }

              else
              {
                v49 = 2;
              }

LABEL_76:
              v139 = v51;
            }
          }
        }

        else
        {
          if (!v59)
          {
            break;
          }

          if (v49 <= 1)
          {
            v62 = 1;
          }

          else
          {
            v62 = v49;
          }

          if (!v61)
          {
            v49 = v62;
          }
        }

        ++v51;
        v52 += v31;
        v48 = *v21;
        if (v51 >= v48)
        {
          v28 = v133;
          v40 = v135;
          v42 = v137;
          v69 = v139;
          goto LABEL_92;
        }
      }

      v69 = v139;
      if (v139 != -1 && *(v52 + 1) == *(v43 + 1) && !*(v52 + 2) && !*(v43 + 2))
      {
        LODWORD(v48) = *v21;
        v40 = v135;
        v42 = v137;
        if (v51 >= *v21)
        {
          goto LABEL_126;
        }

        v79 = v48 - 1;
        *v21 = v79;
        if (v79 == v51)
        {
          LODWORD(v48) = v48 - 1;
LABEL_126:
          v28 = v133;
        }

        else
        {
          v80 = v133;
          v81 = v133(v51);
          v82 = *v21 - v51;
          v28 = v80;
          memmove(v21 + v81, v21 + v81 + v31, v82 * v31);
          LODWORD(v48) = *v21;
        }

LABEL_92:
        if (v21[1] == v48)
        {
          v70 = 2 * v48;
          v71 = v28(2 * v48);
          v72 = reallocf(v21, v71);
          v21 = v72;
          if (!v72)
          {
            goto LABEL_113;
          }

          v72[1] = v70;
        }

        if (v69 == -1)
        {
          v74 = v21 + v28(*v21);
        }

        else
        {
          v73 = v28(v69);
          v74 = v21 + v73;
          memmove(v21 + v73 + v31, v21 + v73, (*v21 - v69) * v31);
        }

        memcpy(v74, v43, v31);
        v75 = *v21 + 1;
        *v21 = v75;
        *(v74 + 3) = v138;
        if (!v134)
        {
          *(v74 + 9) |= 4u;
        }

        if (v49 != 1)
        {
          if (v49 == 2)
          {
            if (!v75 || v69 + 1 >= v75)
            {
              goto LABEL_113;
            }

            v74 = v21 + (v28)();
          }

          else if (HIBYTE(v138) != 3)
          {
            goto LABEL_113;
          }
        }

        *(v74 + 8) |= 1u;
        goto LABEL_113;
      }

      v40 = v135;
      v42 = v137;
      if (*(v43 + 2))
      {
        v28 = v133;
      }

      else
      {
        v28 = v133;
        if (*(v52 + 2) || *(v52 + 3) > v138)
        {
          v76 = *(v52 + 1);
          if (!v76)
          {
            v76 = *(v43 + 1);
          }

          v77 = *(v52 + 8);
          memcpy(v52, v43, v31);
          v78 = v138;
          *(v52 + 2) = 0;
          *(v52 + 3) = v78;
          *(v52 + 1) = v76;
          if (v77)
          {
            *(v52 + 8) |= 1u;
          }

          if (!v134)
          {
            *(v52 + 9) |= 4u;
          }
        }
      }

LABEL_113:
      ++v42;
      v43 += v31;
    }

    while (v42 < *v40);
LABEL_128:
    v83 = v129;
    if (*(v40 + 4))
    {
      v83 = 0;
    }

    if (v83)
    {
      v84 = v130;
      v20 = v125;
      v24 = v126;
      v8 = v122;
      if (!v130[13])
      {
        v85 = v119;
        sub_1000162D0(v130, v120, v119);
        sub_1000166B4(v118, v85, v84, v20, (v135[8] >> 2) & 1);
      }

      v86 = v84;
      goto LABEL_138;
    }

    v20 = v125;
    v24 = v126;
    v8 = v122;
LABEL_135:
    if (!v128)
    {
      v20 = 1;
    }

    v86 = v130;
LABEL_138:
    ++v24;
    v22 = v86 + 28;
  }

  while (v24 < *(v8 + 4));
  v103 = v20;
  v104 = v120;
  v105 = v119;
  v106 = v118;
  v107 = v116;
  if (v117 >= 1)
  {
    v108 = v117;
    do
    {
      v109 = *v107++;
      sub_1000162D0(v109, v104, v105);
      sub_1000166B4(v106, v105, v109, 1, 0);
      --v108;
    }

    while (v108);
  }

  if (v115)
  {
    *v115 = v21;
    goto LABEL_166;
  }

  if (v21)
  {
    free(v21);
    if (v103)
    {
      return 0;
    }
  }

  else
  {
LABEL_166:
    if (v103)
    {
      return 0;
    }
  }

  return v127;
}

uint64_t sub_100014B84(CFTypeRef *a1, CFTypeRef cf, uint64_t a3)
{
  v5 = *a1;
  if (!cf)
  {
    if (!v5)
    {
      return 0;
    }

    if (!qword_100081998)
    {
      qword_100081998 = os_log_create("com.apple.SystemConfiguration", "IPMonitor");
    }

    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v13 = _os_log_pack_size();
      __chkstk_darwin(v13, v14, v15);
      v16 = *__error();
      v17 = _os_log_pack_fill();
      *v17 = 138412546;
      *(v17 + 4) = v5;
      *(v17 + 12) = 2080;
      *(v17 + 14) = a3;
      __SC_log_send();
    }

    if (*a1)
    {
      CFRelease(*a1);
      *a1 = 0;
    }

    return 1;
  }

  if (!v5)
  {
LABEL_18:
    *a1 = CFRetain(cf);
    if (!qword_100081998)
    {
      qword_100081998 = os_log_create("com.apple.SystemConfiguration", "IPMonitor");
    }

    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v18 = _os_log_pack_size();
      __chkstk_darwin(v18, v19, v20);
      v21 = *__error();
      v22 = _os_log_pack_fill();
      *v22 = 138412546;
      *(v22 + 4) = cf;
      *(v22 + 12) = 2080;
      *(v22 + 14) = a3;
      __SC_log_send();
      return 1;
    }

    return 1;
  }

  if (!CFEqual(cf, v5))
  {
    if (*a1)
    {
      CFRelease(*a1);
      *a1 = 0;
    }

    goto LABEL_18;
  }

  if (!qword_100081998)
  {
    qword_100081998 = os_log_create("com.apple.SystemConfiguration", "IPMonitor");
  }

  _SC_syslog_os_log_mapping();
  result = __SC_log_enabled();
  if (result)
  {
    v8 = _os_log_pack_size();
    __chkstk_darwin(v8, v9, v10);
    v11 = *__error();
    v12 = _os_log_pack_fill();
    *v12 = 138412546;
    *(v12 + 4) = cf;
    *(v12 + 12) = 2080;
    *(v12 + 14) = a3;
    __SC_log_send();
    return 0;
  }

  return result;
}

void sub_100014EE8(const void *a1, char *a2, uint64_t a3)
{
  v3 = a2;
  if (a3)
  {
    if (a1 && a2)
    {
      Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      if (*(v3 + 10))
      {
        v7 = CFStringCreateWithFormat(0, 0, @"%d.%d.%d.%d", *(v3 + 10), BYTE1(*(v3 + 10)), BYTE2(*(v3 + 10)), HIBYTE(*(v3 + 10)));
        CFDictionarySetValue(Mutable, kSCPropNetIPv4Router, v7);
        CFRelease(v7);
      }

      v8 = sub_100038A68(*(v3 + 4), v26);
      if (v8)
      {
        v9 = CFStringCreateWithCString(0, v8, 0x600u);
        if (v9)
        {
          v10 = v9;
          CFDictionarySetValue(Mutable, kSCDynamicStorePropNetPrimaryInterface, v9);
          CFRelease(v10);
        }
      }

      CFDictionarySetValue(Mutable, kSCDynamicStorePropNetPrimaryService, a1);
      sub_10003EE58(a3, qword_1000819C8, Mutable);
      CFRelease(Mutable);
    }

    else
    {
      v11 = qword_1000819C8;
      sub_100010060(*(a3 + 8), qword_1000819C8);
      CFDictionaryRemoveValue(*(a3 + 16), v11);
    }
  }

  v12 = sub_10001539C();
  if (v12 != -1)
  {
    v13 = v12;
    if (v3)
    {
      sub_1000154F8(off_10007AAC8, v3);
    }

    else
    {
      v3 = malloc_type_malloc(0x30uLL, 0x1000040E90652E6uLL);
      *(v3 + 24) = 0u;
      *(v3 + 8) = 0u;
      *(v3 + 5) = 0;
      *v3 = 0x100000001;
      *(v3 + 4) = 0xFFFFFF000000E0;
      *(v3 + 3) = 24;
      *(v3 + 4) = sub_100038CD8();
    }

    if (byte_1000819B4 == 1)
    {
      if (qword_1000819D0)
      {
        if (!qword_100081998)
        {
          qword_100081998 = os_log_create("com.apple.SystemConfiguration", "IPMonitor");
        }

        _SC_syslog_os_log_mapping();
        if (__SC_log_enabled())
        {
          v14 = _os_log_pack_size();
          __chkstk_darwin(v14, v15, v16);
          v17 = *__error();
          *_os_log_pack_fill() = 0;
          __SC_log_send();
        }

        sub_10003EF0C(qword_1000819D0);
      }

      else
      {
        if (!qword_100081998)
        {
          qword_100081998 = os_log_create("com.apple.SystemConfiguration", "IPMonitor");
        }

        _SC_syslog_os_log_mapping();
        if (__SC_log_enabled())
        {
          v18 = _os_log_pack_size();
          __chkstk_darwin(v18, v19, v20);
          v21 = *__error();
          *_os_log_pack_fill() = 0;
          __SC_log_send();
        }
      }

      if (!qword_100081998)
      {
        qword_100081998 = os_log_create("com.apple.SystemConfiguration", "IPMonitor");
      }

      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v22 = _os_log_pack_size();
        __chkstk_darwin(v22, v23, v24);
        v25 = *__error();
        *_os_log_pack_fill() = 0;
        __SC_log_send();
      }

      sub_10003EF0C(v3);
    }

    sub_1000157B0(off_10007AAC8, qword_1000819D0, v3, v13);
    close(v13);
  }

  if (qword_1000819D0)
  {
    free(qword_1000819D0);
  }

  qword_1000819D0 = v3;
}

uint64_t sub_10001539C()
{
  v0 = socket(17, 3, 17);
  if (v0 == -1)
  {
    if (!qword_100081998)
    {
      qword_100081998 = os_log_create("com.apple.SystemConfiguration", "IPMonitor");
    }

    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v1 = _os_log_pack_size();
      __chkstk_darwin(v1, v2, v3);
      v4 = *__error();
      v5 = _os_log_pack_fill();
      v6 = __error();
      v7 = strerror(*v6);
      *v5 = 136315138;
      *(v5 + 4) = v7;
      __SC_log_send();
    }
  }

  return v0;
}

uint64_t sub_1000154F8(uint64_t result, int *a2)
{
  if (a2)
  {
    v3 = result;
    result = (*result)(0);
    if (*a2 >= 1)
    {
      v5 = 0;
      v6 = a2 + result;
      *&v4 = 136315394;
      v22 = v4;
      do
      {
        result = *(v6 + 2);
        if (!result)
        {
          goto LABEL_25;
        }

        v7 = *(v6 + 1);
        if (!v7)
        {
          if (!sub_100038A68(result, v24) || (v9 = sub_1000134F8(v24, *(v6 + 2))) == 0)
          {
            v7 = *(v6 + 2);
            v8 = 1;
            goto LABEL_11;
          }

          v7 = v9;
        }

        v8 = 0;
LABEL_11:
        v10 = (*(v3 + 40))(v6);
        result = sub_10003F048(v3, a2, v10, *v6, v7, v8);
        if (!v8 && !result)
        {
          v11 = *(v6 + 2);
          if (!qword_100081998)
          {
            qword_100081998 = os_log_create("com.apple.SystemConfiguration", "IPMonitor");
          }

          _SC_syslog_os_log_mapping();
          if (__SC_log_enabled())
          {
            v12 = _os_log_pack_size();
            v23 = &v22;
            __chkstk_darwin(v12, v13, v14);
            v15 = *__error();
            v16 = _os_log_pack_fill();
            *v16 = v22;
            *(v16 + 4) = "RouteListFinalize";
            *(v16 + 12) = 1024;
            *(v16 + 14) = v11;
            __SC_log_send();
          }

          v17 = (*(v3 + 40))(v6);
          result = sub_10003F048(v3, a2, v17, *v6, v11, 1);
        }

        if (result)
        {
          *(v6 + 1) = *(result + 4);
          if ((*(result + 16) & 2) == 0)
          {
            v18 = *(v6 + 8) & 0xFFF9;
LABEL_24:
            *(v6 + 8) = v18;
            goto LABEL_25;
          }

          v19 = *(v3 + 32);
          v20 = (*(v3 + 24))();
          result = v19(v6, v20);
          v21 = *(v6 + 8);
          *(v6 + 8) = v21 | 2;
          if (*v6 == *(v3 + 80))
          {
            v18 = v21 | 6;
            goto LABEL_24;
          }
        }

        else
        {
          result = (*(v3 + 56))(5, v6, "can't resolve excluded route");
        }

LABEL_25:
        ++v5;
        v6 += *(v3 + 72);
      }

      while (v5 < *a2);
    }
  }

  return result;
}

uint64_t (**sub_1000157B0(uint64_t (**result)(void), unint64_t a2, int *a3, unsigned int a4))(void)
{
  if (!(a2 | a3))
  {
    return result;
  }

  v6 = result;
  v20[2] = a3;
  v20[3] = a4;
  v20[0] = result;
  v20[1] = a2;
  if (!a2)
  {
    if (!a3)
    {
      return result;
    }

    goto LABEL_30;
  }

  result = (*result)(0);
  if (*a2 >= 1)
  {
    v7 = 0;
    v8 = result + a2;
    do
    {
      if (!a3)
      {
        goto LABEL_12;
      }

      result = (*v6)(0);
      if (*a3 < 1)
      {
        goto LABEL_12;
      }

      v9 = 0;
      v10 = result + a3;
      while (1)
      {
        result = (v6[1])(v10, v8);
        if (result)
        {
          break;
        }

        ++v9;
        v10 += *(v6 + 18);
        if (v9 >= *a3)
        {
          goto LABEL_12;
        }
      }

      if (!v10)
      {
LABEL_12:
        if ((*(v8 + 18) & 2) != 0)
        {
          result = sub_100015AB0(v8, 1, v20);
        }
      }

      ++v7;
      v8 += *(v6 + 18);
    }

    while (v7 < *a2);
  }

  if (a3)
  {
    v11 = (*v6)(0);
    if (*a3 >= 1)
    {
      v12 = 0;
      v13 = a3 + v11;
      do
      {
        v14 = (*v6)(0);
        if (*a2 >= 1)
        {
          v15 = 0;
          v16 = (a2 + v14);
          while (!(v6[1])(v16, v13))
          {
            ++v15;
            v16 += *(v6 + 18);
            if (v15 >= *a2)
            {
              goto LABEL_27;
            }
          }

          if (v16)
          {
            if ((*(v13 + 9) & 4) != 0)
            {
              (v6[7])(5, v13, "Re-applying route");
            }

            else
            {
              *(v13 + 9) = *(v16 + 9) & 3;
            }
          }
        }

LABEL_27:
        ++v12;
        v13 += *(v6 + 18);
      }

      while (v12 < *a3);
    }

LABEL_30:
    result = (*v6)(0);
    v17 = *a3;
    if (*a3 >= 1)
    {
      v18 = 0;
      v19 = result + a3;
      do
      {
        if ((*(v19 + 18) & 1) == 0)
        {
          result = sub_100015AB0(v19, 0, v20);
          v17 = *a3;
        }

        ++v18;
        v19 += *(v6 + 18);
      }

      while (v18 < v17);
    }
  }

  return result;
}

uint64_t sub_100015AB0(uint64_t a1, int a2, uint64_t a3)
{
  v5 = *a3;
  v6 = *(*a3 + 56);
  v7 = *(*a3 + 16);
  if (a2)
  {
    v8 = v7(a1, 2, *(a3 + 24));
    v9 = v8;
    if (!v8 || (v8 != 1001 ? (v10 = v8 == 3) : (v10 = 1), v10))
    {
      if (byte_1000819B4 != 1)
      {
        return 1;
      }

      if (v8 == 1001)
      {
        v11 = "!";
      }

      else
      {
        v11 = "";
      }

      v13 = *a3;
      v12 = *(a3 + 8);
      v14 = (*v13)(0);
      v15 = "(ESRCH)";
      if (v9 != 3)
      {
        v15 = "";
      }

      snprintf(__str, 0x40uLL, "%sRemove old[%ld]%s", v11, (a1 - v12 - v14) / *(v13 + 72), v15);
      v16 = __str;
      v17 = 7;
      v18 = a1;
LABEL_42:
      v6(v17, v18, v16);
      return 1;
    }

    if (!qword_100081998)
    {
      qword_100081998 = os_log_create("com.apple.SystemConfiguration", "IPMonitor");
    }

    _SC_syslog_os_log_mapping();
    if (!__SC_log_enabled())
    {
LABEL_41:
      v17 = 5;
      v18 = a1;
      v16 = 0;
      goto LABEL_42;
    }

LABEL_40:
    v31 = _os_log_pack_size();
    __chkstk_darwin(v31, v32, v33);
    v34 = *__error();
    v35 = _os_log_pack_fill();
    v36 = strerror(v9);
    *v35 = 136315138;
    *(v35 + 4) = v36;
    __SC_log_send();
    goto LABEL_41;
  }

  v19 = *(a1 + 18);
  if (v19)
  {
    return (v19 >> 1) & 1;
  }

  v20 = *(v5 + 24);
  *(a1 + 18) = v19 | 1;
  if ((*(a1 + 16) & 2) == 0)
  {
    goto LABEL_27;
  }

  v21 = *(a3 + 16);
  v22 = v20(a1);
  if (!sub_10003F048(v5, v21, v22, *(*a3 + 80), *(a1 + 4), 0))
  {
    v6(5, a1, "no gateway route");
    goto LABEL_27;
  }

  v23 = *(a3 + 28);
  if (v23 != 10)
  {
    *(a3 + 28) = v23 + 1;
    v26 = sub_100015AB0();
    --*(a3 + 28);
    if (!v26)
    {
      v24 = "failed to add";
      goto LABEL_45;
    }

LABEL_27:
    v9 = v7(a1, 1, *(a3 + 24));
    if (v9 == 17)
    {
      v7(a1, 2, *(a3 + 24));
      v9 = v7(a1, 1, *(a3 + 24));
    }

    if (!v9 || v9 == 1001)
    {
      if (byte_1000819B4 == 1)
      {
        if (v9 == 1001)
        {
          v27 = "!";
        }

        else
        {
          v27 = "";
        }

        v28 = *a3;
        v29 = *(a3 + 16);
        v30 = (*v28)(0);
        snprintf(__str, 0x40uLL, "%sAdd new[%ld]", v27, (a1 - v29 - v30) / *(v28 + 72));
        v6(7, a1, __str);
      }

      *(a1 + 18) |= 2u;
      return 1;
    }

    if (!qword_100081998)
    {
      qword_100081998 = os_log_create("com.apple.SystemConfiguration", "IPMonitor");
    }

    _SC_syslog_os_log_mapping();
    if (!__SC_log_enabled())
    {
      goto LABEL_41;
    }

    goto LABEL_40;
  }

  v24 = "routing loop detected, not adding";
LABEL_45:
  v6(5, a1, v24);
  return 0;
}

uint64_t sub_100015F00(uint64_t a1, char a2, int __fd)
{
  if (byte_1000819D8 == 1 && !*(a1 + 20))
  {
    return 1001;
  }

  v4 = *(a1 + 16);
  if ((v4 & 8) != 0)
  {
    return 1001;
  }

  v5 = *(a1 + 4);
  if (v5)
  {
    if (__fd == -1)
    {
      return 9;
    }

    v22 = 0u;
    v23 = 0u;
    BYTE3(v22) = a2;
    BYTE2(v22) = 5;
    v6 = ++dword_1000819DC;
    v7 = *(a1 + 32);
    if (v7)
    {
      v8 = 51;
    }

    else
    {
      v8 = 19;
    }

    v31 = 0;
    v29 = 0uLL;
    memset(v30, 0, sizeof(v30));
    v27 = 0uLL;
    v28 = 0uLL;
    v25 = 0uLL;
    v26 = 0uLL;
    v24 = 0uLL;
    DWORD1(v23) = v6;
    HIDWORD(v22) = v8;
    if ((v4 & 4) != 0)
    {
      v9 = 2053;
      DWORD2(v22) = 2053;
      if ((v4 & 2) == 0)
      {
LABEL_24:
        if (v4)
        {
          WORD2(v22) = v5;
          v9 |= 0x1000000u;
          DWORD2(v22) = v9;
        }

        WORD6(v27) = 528;
        LODWORD(v28) = *(a1 + 20);
        if ((v9 & 2) != 0)
        {
          v20 = &v29 + 12;
          BYTE12(v28) = 16;
          LODWORD(v29) = *(a1 + 28);
          v21 = 2;
        }

        else
        {
          v20 = v30;
          BYTE12(v28) = 20;
          HIWORD(v28) = v5;
          v21 = 18;
        }

        BYTE13(v28) = v21;
        if ((v8 & 4) != 0)
        {
          *v20 = 528;
          *(v20 + 1) = *(a1 + 24);
          v20 += 16;
          LOBYTE(v8) = BYTE12(v22);
        }

        if ((v8 & 0x10) != 0)
        {
          *v20 = 4628;
          *(v20 + 1) = v5;
          v20 += 20;
        }

        if ((v8 & 0x20) != 0)
        {
          *v20 = 528;
          *(v20 + 1) = v7;
          LODWORD(v20) = v20 + 16;
        }

        LOWORD(v22) = v20 - &v22;
        if (write(__fd, &v22, (v20 - &v22)) == -1)
        {
          return *__error();
        }

        else
        {
          return 0;
        }
      }

      v9 = 2055;
    }

    else
    {
      v8 |= 4u;
      HIDWORD(v22) = v8;
      if ((v4 & 2) != 0)
      {
        v9 = 2051;
      }

      else
      {
        v9 = 2305;
      }
    }

    DWORD2(v22) = v9;
    goto LABEL_24;
  }

  if (!qword_100081998)
  {
    qword_100081998 = os_log_create("com.apple.SystemConfiguration", "IPMonitor");
  }

  _SC_syslog_os_log_mapping();
  if (__SC_log_enabled())
  {
    v11 = _os_log_pack_size();
    __chkstk_darwin(v11, v12, v13);
    v14 = *__error();
    v15 = _os_log_pack_fill();
    v16 = *(a1 + 20);
    v17 = *(a1 + 21);
    v18 = *(a1 + 22);
    v19 = *(a1 + 23);
    *v15 = 67109888;
    *(v15 + 4) = v16;
    *(v15 + 8) = 1024;
    *(v15 + 10) = v17;
    *(v15 + 14) = 1024;
    *(v15 + 16) = v18;
    *(v15 + 20) = 1024;
    *(v15 + 22) = v19;
    __SC_log_send();
  }

  return 6;
}

void sub_1000162D0(uint64_t a1, const __CFDictionary *a2, int a3)
{
  if (!a1)
  {
    sub_100068088();
  }

  if (!a2)
  {
    sub_10006805C();
  }

  v5 = *a1;
  v6 = &kSCEntNetIPv4;
  valuePtr = 0;
  if (a3 != 2)
  {
    v6 = &kSCEntNetIPv6;
  }

  v7 = sub_100010FF4(v5, *v6);
  if (!v7)
  {
    goto LABEL_11;
  }

  Value = CFDictionaryGetValue(v7, @"Service");
  if (!Value)
  {
LABEL_12:
    v13 = 2;
    goto LABEL_13;
  }

  v9 = 0;
  *buffer = 0;
  while (1)
  {
    v10 = **(&off_10007AB48 + v9);
    v11 = sub_100010FF4(v5, v10);
    TypeID = CFDictionaryGetTypeID();
    if (v11)
    {
      if (CFGetTypeID(v11) == TypeID)
      {
        break;
      }
    }

    v9 += 16;
    if (v9 == 48)
    {
      goto LABEL_11;
    }
  }

  if (!v10)
  {
LABEL_11:
    Value = 0;
    goto LABEL_12;
  }

  Value = CFDictionaryGetValue(Value, @"ServerAddress");
  v16 = CFStringGetTypeID();
  if (Value)
  {
    if (CFGetTypeID(Value) == v16)
    {
      CFRetain(Value);
    }

    else
    {
      Value = 0;
    }
  }

  if (!CFDictionaryGetValueIfPresent(v11, kSCPropNetVPNStatus, buffer) || (v17 = *buffer, v18 = CFNumberGetTypeID(), !v17) || CFGetTypeID(v17) != v18 || !CFNumberGetValue(*buffer, kCFNumberIntType, &valuePtr))
  {
    v13 = 3;
    goto LABEL_13;
  }

  v19 = valuePtr;
  if (CFEqual(v10, kSCEntNetPPP))
  {
    if (v19 <= 7 || (v13 = 3, v19 != 8) && v19 != 12)
    {
LABEL_42:
      v13 = 7;
    }
  }

  else if (CFEqual(v10, kSCEntNetIPSec))
  {
    if (v19 == 6)
    {
      v13 = 3;
    }

    else
    {
      v13 = 7;
    }
  }

  else
  {
    if (!CFEqual(v10, kSCEntNetVPN))
    {
      v13 = 3;
      goto LABEL_43;
    }

    if (v19 > 7)
    {
      goto LABEL_42;
    }

    v13 = dword_10006CAE0[v19];
  }

LABEL_43:
  if (CFEqual(v10, kSCEntNetPPP))
  {
    v26 = 0;
    NetworkServiceEntity = SCDynamicStoreKeyCreateNetworkServiceEntity(0, kSCDynamicStoreDomainSetup, v5, kSCEntNetPPP);
    v21 = CFDictionaryGetValue(a2, NetworkServiceEntity);
    CFRelease(NetworkServiceEntity);
    v22 = CFDictionaryGetTypeID();
    if (v21)
    {
      if (CFGetTypeID(v21) == v22)
      {
        if (CFDictionaryGetValueIfPresent(v21, kSCPropNetPPPDialOnDemand, buffer))
        {
          v23 = *buffer;
          v24 = CFNumberGetTypeID();
          if (v23)
          {
            if (CFGetTypeID(v23) == v24 && CFNumberGetValue(*buffer, kCFNumberIntType, &v26) && v26)
            {
              if (valuePtr)
              {
                v25 = 8;
              }

              else
              {
                v25 = 24;
              }

              v13 |= v25;
            }
          }
        }
      }
    }
  }

LABEL_13:
  v14 = SCDynamicStoreKeyCreateNetworkServiceEntity(0, kSCDynamicStoreDomainSetup, *a1, kSCEntNetCommCenter);
  if (CFDictionaryContainsKey(a2, v14))
  {
    v15 = 262145;
  }

  else
  {
    v15 = 0;
  }

  CFRelease(v14);
  *(a1 + 56) = v15 | v13;
  if (Value)
  {
    CFStringGetCString(Value, buffer, 128, 0x600u);
    _SC_string_to_sockaddr();
    CFRelease(Value);
  }

  else
  {
    *(a1 + 84) = 0;
    *(a1 + 76) = 0;
    *(a1 + 100) = 0;
    *(a1 + 92) = 0;
  }
}

double sub_1000166B4(_DWORD *a1, int a2, uint64_t a3, int a4, int a5)
{
  if (a1)
  {
    if (a4 || *(a3 + 43) == 3)
    {
      v8 = 8;
    }

    else
    {
      v8 = 0;
    }

    if (a5)
    {
      v9 = v8 | 0x20;
    }

    else
    {
      v9 = v8;
    }

    if (sub_100010FF4(*a3, kSCEntNetDNS))
    {
      v9 |= 4u;
    }

    if (a2 == 2)
    {
      v10 = sub_100010FF4(*a3, kSCEntNetIPv4);
      if (v10)
      {
        *value.count = 0;
        v11 = CFDictionaryGetValue(v10, @"Service");
        TypeID = CFDictionaryGetTypeID();
        if (v11)
        {
          if (CFGetTypeID(v11) == TypeID)
          {
            if (CFDictionaryGetValueIfPresent(v11, kSCPropNetIPv4CLAT46, &value))
            {
              v13 = *value.count;
              v14 = CFBooleanGetTypeID();
              if (v13)
              {
                if (CFGetTypeID(v13) == v14 && CFBooleanGetValue(*value.count))
                {
                  v9 |= 0x40u;
                }
              }
            }
          }
        }
      }
    }

    CFStringGetCString(*(a3 + 8), buffer, 16, 0x600u);
    v15 = sub_10001690C(a1, buffer, a2, v9, *(a3 + 40), (a3 + 60), (a3 + 76), *(a3 + 56));
    if (v15)
    {
      v17 = *(a3 + 104);
      if (v17)
      {
        v18 = v15;
        v19 = CFStringGetTypeID();
        v20 = CFGetTypeID(v17);
        v21 = *(a3 + 104);
        if (v20 == v19)
        {
          memset(&value, 0, sizeof(value));
          ExternalRepresentation = CFStringCreateExternalRepresentation(0, v21, 0x8000100u, 0);
          CC_SHA256_Init(&value);
          BytePtr = CFDataGetBytePtr(ExternalRepresentation);
          Length = CFDataGetLength(ExternalRepresentation);
          CC_SHA256_Update(&value, BytePtr, Length);
          CC_SHA256_Final(&v25, &value);
          CFRelease(ExternalRepresentation);
        }

        else
        {
          v29.location = 0;
          v29.length = 20;
          CFDataGetBytes(*(a3 + 104), v29, &v25);
        }

        result = *&v25;
        *(v18 + 92) = v25;
        *(v18 + 108) = v26;
        *(v18 + 16) |= 0x10uLL;
      }
    }
  }

  return result;
}

uint64_t sub_10001690C(_DWORD *a1, const char *a2, int a3, char a4, unsigned int a5, _OWORD *a6, unsigned __int8 *a7, int a8)
{
  if (!a1)
  {
    sub_100067D78();
  }

  if (a3 == 2)
  {
    v12 = 2;
  }

  else
  {
    v12 = 3;
  }

  v13 = a1[v12];
  if (v13 <= a1[1] && v13 >= 1)
  {
    v25 = 0;
    v26 = a1 + 10;
    do
    {
      v27 = a1[1];
      if (v27 <= v25 || a1[v12] <= v25)
      {
        break;
      }

      if (a3 != 30)
      {
        v27 = 0;
      }

      v19 = &v26[28 * v25 + 28 * v27];
      ifname = nwi_ifstate_get_ifname();
      if (!strcmp(a2, ifname))
      {
        v23 = a5;
        if (*(v19 + 28) < a5)
        {
          return 0;
        }

        goto LABEL_26;
      }

      ++v25;
    }

    while (v13 != v25);
  }

  if (a3 == 2)
  {
    v16 = a1 + 2;
    v15 = a1[2];
    v17 = a1[1];
    v18 = v15;
  }

  else
  {
    v16 = a1 + 3;
    v15 = a1[3];
    v17 = a1[1];
    v18 = v15 + v17;
  }

  if (v15 != v17)
  {
    v19 = &a1[28 * v18 + 10];
    if (v15 >= 1)
    {
      *(v19 - 96) &= ~0x1000uLL;
    }

    *(v19 + 80) = 0u;
    *(v19 + 96) = 0u;
    *(v19 + 48) = 0u;
    *(v19 + 64) = 0u;
    *(v19 + 16) = 0u;
    *(v19 + 32) = 0u;
    *v19 = 0u;
    __strlcpy_chk();
    *(v19 + 32) = a3;
    *(v19 + 16) |= 0x1000uLL;
    ++*v16;
    if (a3 == 2)
    {
      v20 = 3;
    }

    else
    {
      v20 = 2;
    }

    v21 = a1[v20];
    if (v21 >= 1 && v21 <= a1[1])
    {
      v29 = 0;
      v30 = 112 * v18;
      do
      {
        v31 = a1[1];
        if (v31 <= v29 || a1[v20] <= v29)
        {
          break;
        }

        if (a3 != 2)
        {
          v31 = 0;
        }

        v32 = 112 * (v29 + v31);
        v33 = nwi_ifstate_get_ifname();
        if (!strcmp(v19, v33))
        {
          *(v19 + 24) = -1227133513 * ((v32 - v30) >> 4);
          a1[v32 / 4 + 16] = -1227133513 * ((v30 - v32) >> 4);
          break;
        }

        ++v29;
      }

      while (v21 != v29);
    }

    v23 = a5;
LABEL_26:
    if (a6)
    {
      if (a3 == 30)
      {
        *(v19 + 36) = *a6;
        if (!a7)
        {
          goto LABEL_50;
        }

LABEL_31:
        if (a7[1])
        {
          v24 = *a7;
          if ((v24 - 29) >= 0xFFFFFFE4)
          {
            memcpy((v19 + 64), a7, v24);
          }

          goto LABEL_51;
        }

LABEL_50:
        *(v19 + 64) = 0;
        *(v19 + 72) = 0;
        *(v19 + 88) = 0;
        *(v19 + 80) = 0;
LABEL_51:
        *(v19 + 60) = a8;
        *(v19 + 28) = v23;
        *(v19 + 16) = a4;
        return v19;
      }

      if (a3 == 2)
      {
        *(v19 + 36) = *a6;
      }
    }

    if (!a7)
    {
      goto LABEL_50;
    }

    goto LABEL_31;
  }

  syslog(3, "nwi_state_add_ifstate: full at count %d\n", v17);
  return 0;
}

void sub_100016C1C(const void *a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    if (a1 && a2)
    {
      Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      if ((*(a2 + 28) & 2) != 0)
      {
        inet_ntop(30, (a2 + 48), v30, 0x2Eu);
        v7 = CFStringCreateWithFormat(0, 0, @"%s", v30);
        CFDictionarySetValue(Mutable, kSCPropNetIPv6Router, v7);
        CFRelease(v7);
      }

      v8 = sub_100038A68(*(a2 + 16), v30);
      if (v8)
      {
        v9 = CFStringCreateWithCString(0, v8, 0x600u);
        if (v9)
        {
          v10 = v9;
          CFDictionarySetValue(Mutable, kSCDynamicStorePropNetPrimaryInterface, v9);
          CFRelease(v10);
        }
      }

      CFDictionarySetValue(Mutable, kSCDynamicStorePropNetPrimaryService, a1);
      sub_10003EE58(a3, qword_100081A80, Mutable);
      CFRelease(Mutable);
      sub_100017148(*(a2 + 16));
    }

    else
    {
      sub_100017148(0);
      v11 = qword_100081A80;
      sub_100010060(*(a3 + 8), qword_100081A80);
      CFDictionaryRemoveValue(*(a3 + 16), v11);
    }
  }

  v12 = sub_10001539C();
  if (v12 != -1)
  {
    v13 = v12;
    sub_1000154F8(off_10007AC58, a2);
    if (byte_1000819B4 == 1)
    {
      if (qword_100081A88)
      {
        if (!qword_100081998)
        {
          qword_100081998 = os_log_create("com.apple.SystemConfiguration", "IPMonitor");
        }

        _SC_syslog_os_log_mapping();
        if (__SC_log_enabled())
        {
          v14 = _os_log_pack_size();
          __chkstk_darwin(v14, v15, v16);
          v17 = *__error();
          *_os_log_pack_fill() = 0;
          __SC_log_send();
        }

        sub_1000443D8(qword_100081A88);
      }

      else
      {
        if (!qword_100081998)
        {
          qword_100081998 = os_log_create("com.apple.SystemConfiguration", "IPMonitor");
        }

        _SC_syslog_os_log_mapping();
        if (__SC_log_enabled())
        {
          v18 = _os_log_pack_size();
          __chkstk_darwin(v18, v19, v20);
          v21 = *__error();
          *_os_log_pack_fill() = 0;
          __SC_log_send();
        }
      }

      if (a2)
      {
        if (!qword_100081998)
        {
          qword_100081998 = os_log_create("com.apple.SystemConfiguration", "IPMonitor");
        }

        _SC_syslog_os_log_mapping();
        if (__SC_log_enabled())
        {
          v22 = _os_log_pack_size();
          __chkstk_darwin(v22, v23, v24);
          v25 = *__error();
          *_os_log_pack_fill() = 0;
          __SC_log_send();
        }

        sub_1000443D8(a2);
      }

      else
      {
        if (!qword_100081998)
        {
          qword_100081998 = os_log_create("com.apple.SystemConfiguration", "IPMonitor");
        }

        _SC_syslog_os_log_mapping();
        if (__SC_log_enabled())
        {
          v26 = _os_log_pack_size();
          __chkstk_darwin(v26, v27, v28);
          v29 = *__error();
          *_os_log_pack_fill() = 0;
          __SC_log_send();
        }
      }
    }

    sub_1000157B0(off_10007AC58, qword_100081A88, a2, v13);
    close(v13);
  }

  if (qword_100081A88)
  {
    free(qword_100081A88);
  }

  qword_100081A88 = a2;
}

uint64_t sub_100017148(unsigned int a1)
{
  v11[0] = 0;
  v11[1] = 0;
  v12 = 0;
  __strlcpy_chk();
  if (!a1)
  {
    a1 = dword_100081948;
    if (!dword_100081948)
    {
      a1 = sub_100013354("lo0");
      dword_100081948 = a1;
    }
  }

  v12 = a1;
  v2 = sub_1000172E8();
  if (v2 < 0)
  {
    return 0;
  }

  if (ioctl(v2, 0xC0186955uLL, v11) != -1)
  {
    return 1;
  }

  sub_1000035EC();
  _SC_syslog_os_log_mapping();
  result = __SC_log_enabled();
  if (result)
  {
    v4 = _os_log_pack_size();
    __chkstk_darwin(v4, v5, v6);
    v7 = *__error();
    v8 = _os_log_pack_fill();
    v9 = __error();
    v10 = strerror(*v9);
    *v8 = 136315138;
    *(v8 + 4) = v10;
    __SC_log_send();
    return 0;
  }

  return result;
}

uint64_t sub_1000172E8()
{
  if (dword_1000815DC == -1)
  {
    dword_1000815DC = socket(30, 2, 0);
    if (dword_1000815DC == -1)
    {
      sub_1000035EC();
      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v0 = _os_log_pack_size();
        __chkstk_darwin(v0, v1, v2);
        v3 = *__error();
        v4 = _os_log_pack_fill();
        v5 = __error();
        v6 = strerror(*v5);
        *v4 = 136315138;
        *(v4 + 4) = v6;
        __SC_log_send();
      }
    }
  }

  return dword_1000815DC;
}

BOOL sub_100017434(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 4) != *(a2 + 4) || *(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  if (*(a1 + 20) != *(a2 + 20) || *(a1 + 28) != *(a2 + 28))
  {
    return 0;
  }

  if (*(a1 + 52) != *(a2 + 52) || *(a1 + 60) != *(a2 + 60))
  {
    return 0;
  }

  return *(a1 + 36) == *(a2 + 36) && *(a1 + 44) == *(a2 + 44);
}

_DWORD *sub_100017508(_DWORD *result)
{
  v1 = result;
  result[4] = 0;
  v2 = result[1];
  if (v2 < 1)
  {
    v6 = 0;
  }

  else
  {
    v3 = result[2];
    v4 = v3 <= 0;
    v5 = v3 > 0;
    if (v4)
    {
      v6 = 0;
    }

    else
    {
      v6 = (result + 10);
    }

    if (result[3] >= 1)
    {
      v7 = &result[28 * v2 + 10];
      v8 = 1;
LABEL_10:
      v9 = 0;
      LODWORD(v10) = 0;
      v11 = result + 10;
      while (1)
      {
        if (v5 && v8)
        {
          if (*(v6 + 7) > *(v7 + 28))
          {
            goto LABEL_19;
          }
        }

        else if (!v5)
        {
LABEL_19:
          result = sub_100017680(v1, v7);
          ++v9;
          v12 = v1[1];
          if (v12 <= v9 || v1[3] <= v9)
          {
            v7 = 0;
          }

          else
          {
            v7 = &v11[28 * v12 + 28 * v9];
          }

          goto LABEL_24;
        }

        result = sub_100017680(v1, v6);
        v10 = v10 + 1;
        if (v1[1] <= v10)
        {
          v6 = 0;
        }

        else if (v1[2] > v10)
        {
          v6 = &v11[28 * v10];
        }

        else
        {
          v6 = 0;
        }

LABEL_24:
        v5 = v6 != 0;
        v8 = v7 != 0;
        if (!(v6 | v7))
        {
          return result;
        }
      }
    }
  }

  v5 = v6 != 0;
  if (v6)
  {
    v8 = 0;
    v7 = 0;
    goto LABEL_10;
  }

  return result;
}

uint64_t sub_100017680(uint64_t result, char *__s2)
{
  if ((__s2[16] & 0x20) == 0)
  {
    v2 = result;
    v3 = *(result + 16);
    v4 = *(result + 4);
    if (v3 < v4)
    {
      v6 = result + 40;
      v7 = (result + 40 + 224 * v4);
      if (v3 < 1)
      {
LABEL_6:
        *v7 = -1227133513 * (&__s2[-v6] >> 4);
        ++*(v2 + 16);
      }

      else
      {
        while (1)
        {
          result = strcmp((v6 + 112 * *v7), __s2);
          if (!result)
          {
            break;
          }

          ++v7;
          if (!--v3)
          {
            goto LABEL_6;
          }
        }
      }
    }
  }

  return result;
}

_DWORD *sub_10001775C(int *a1, int *a2)
{
  if (a1)
  {
    if (a1[2] <= a1[3])
    {
      v4 = a1[3];
    }

    else
    {
      v4 = a1[2];
    }

    if (!a2)
    {
      if (v4)
      {
        v5 = sub_100012904(0, v4);
LABEL_20:
        if (a1[2] >= 1)
        {
          v12 = 0;
          v13 = (a1 + 10);
          do
          {
            sub_100017B30(v5, v13);
            ++v12;
            v13 += 7;
          }

          while (v12 < a1[2]);
        }

        if (a1[3] >= 1)
        {
          v14 = 0;
          v15 = &a1[28 * a1[1] + 10];
          do
          {
            sub_100017B30(v5, v15);
            ++v14;
            v15 += 7;
          }

          while (v14 < a1[3]);
        }

        return v5;
      }

      return 0;
    }
  }

  else
  {
    if (!a2)
    {
      return 0;
    }

    v4 = 0;
  }

  v6 = a2[2];
  if (v6 <= a2[3])
  {
    v6 = a2[3];
  }

  v7 = v6 + v4;
  if (!v7)
  {
    return 0;
  }

  v5 = sub_100012904(0, v7);
  if (a2[2] >= 1)
  {
    v8 = 0;
    v9 = (a2 + 10);
    do
    {
      sub_100017914(v5, a1, v9);
      ++v8;
      v9 += 7;
    }

    while (v8 < a2[2]);
  }

  if (a2[3] >= 1)
  {
    v10 = 0;
    v11 = &a2[28 * a2[1] + 10];
    do
    {
      sub_100017914(v5, a1, v11);
      ++v10;
      v11 += 7;
    }

    while (v10 < a2[3]);
  }

  if (a1)
  {
    goto LABEL_20;
  }

  return v5;
}

uint64_t sub_100017914(_DWORD *a1, uint64_t a2, __int128 *a3)
{
  v6 = *(a3 + 32);
  result = nwi_ifstate_get_ifname();
  if (a2)
  {
    v8 = v6 == 2 ? 8 : 12;
    v9 = *(a2 + v8);
    if (v9 <= *(a2 + 4) && v9 >= 1)
    {
      v10 = result;
      for (i = 0; v9 != i; ++i)
      {
        v12 = *(a2 + 4);
        if (v12 <= i || *(a2 + v8) <= i)
        {
          break;
        }

        if (v6 != 30)
        {
          v12 = 0;
        }

        v13 = a2 + 40 + 112 * (i + v12);
        ifname = nwi_ifstate_get_ifname();
        result = strcmp(v10, ifname);
        if (!result)
        {
          goto LABEL_15;
        }
      }
    }
  }

  v13 = 0;
LABEL_15:
  if (!a1)
  {
    sub_100067D78();
  }

  if (*(a3 + 32) == 2)
  {
    v16 = a1 + 2;
    v15 = a1[2];
  }

  else
  {
    v16 = a1 + 3;
    v15 = a1[3] + a1[1];
  }

  v17 = &a1[28 * v15];
  v18 = a3[3];
  v19 = a3[4];
  v20 = a3[5];
  *(v17 + 34) = a3[6];
  *(v17 + 30) = v20;
  v21 = *a3;
  v22 = a3[1];
  *(v17 + 18) = a3[2];
  *(v17 + 14) = v22;
  *(v17 + 10) = v21;
  *(v17 + 26) = v19;
  *(v17 + 22) = v18;
  ++*v16;
  if (!v13)
  {
    v25 = *(v17 + 7) & 0xFFFFFFFFFFFFF0FFLL | 0x100;
    goto LABEL_23;
  }

  v23 = *(v17 + 7);
  v24 = v23 ^ *(v13 + 16);
  if (v23 != *(v13 + 16))
  {
    goto LABEL_21;
  }

  if (*(v13 + 32) != 2)
  {
    if (*(v13 + 36) == *(v17 + 19) && *(v13 + 44) == *(v17 + 21))
    {
      goto LABEL_32;
    }

LABEL_21:
    v25 = v23 & 0xFFFFFFFFFFFFF0FFLL | 0x300;
    goto LABEL_23;
  }

  if (*(v13 + 36) != v17[19])
  {
    goto LABEL_21;
  }

LABEL_32:
  v27 = *(v13 + 28);
  v28 = v17[17];
  if (v27 >= v28)
  {
    v25 = v23 & 0xFFFFFFFFFFFFF0FFLL;
    if (v27 > v28)
    {
      v25 |= 0x400uLL;
    }
  }

  else
  {
    v25 = v23 & 0xFFFFFFFFFFFFF0FFLL | 0x500;
  }

LABEL_23:
  *(v17 + 7) = v25;
  return result;
}

uint64_t sub_100017B30(_DWORD *a1, __int128 *a2)
{
  v4 = *(a2 + 32);
  result = nwi_ifstate_get_ifname();
  if (!a1)
  {
    sub_100067D78();
  }

  if (v4 == 2)
  {
    v6 = 2;
  }

  else
  {
    v6 = 3;
  }

  v7 = a1[v6];
  if (v7 <= a1[1] && v7 >= 1)
  {
    v17 = result;
    v18 = 0;
    do
    {
      if (a1[1] <= v18 || a1[v6] <= v18)
      {
        break;
      }

      ifname = nwi_ifstate_get_ifname();
      result = strcmp(v17, ifname);
      if (!result)
      {
        return result;
      }

      ++v18;
    }

    while (v7 != v18);
  }

  if (*(a2 + 32) == 2)
  {
    v9 = a1 + 2;
    v10 = a1[2];
  }

  else
  {
    v9 = a1 + 3;
    v10 = a1[3] + a1[1];
  }

  v11 = &a1[28 * v10];
  v12 = a2[3];
  v13 = a2[4];
  v14 = a2[5];
  *(v11 + 34) = a2[6];
  *(v11 + 30) = v14;
  v15 = a2[2];
  v16 = *a2;
  *(v11 + 14) = a2[1];
  *(v11 + 18) = v15;
  *(v11 + 10) = v16;
  *(v11 + 26) = v13;
  *(v11 + 22) = v12;
  ++*v9;
  *(v11 + 7) = *(v11 + 7) & 0xFFFFFFFFFFFFF0FFLL | 0x200;
  return result;
}

void sub_100017CB4(const __CFDictionary *a1, int *a2, int *a3)
{
  Mutable = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
  v59 = a1;
  CFDictionaryApplyFunction(a1, sub_1000184A0, Mutable);
  Count = CFArrayGetCount(Mutable);
  if (Count < 1)
  {
    goto LABEL_55;
  }

  v5 = 0;
  v58 = kSCEntNetCommCenter;
  v55 = kSCPropNetCommCenterAvailable;
  v6 = &selRef_qosMarkingIsEnabled_;
  v54 = Mutable;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(Mutable, v5);
    ArrayBySeparatingStrings = CFStringCreateArrayBySeparatingStrings(0, ValueAtIndex, @"/");
    if (CFArrayGetCount(ArrayBySeparatingStrings) != 5)
    {
      goto LABEL_36;
    }

    v9 = CFArrayGetValueAtIndex(ArrayBySeparatingStrings, 3);
    v10 = CFArrayGetValueAtIndex(ArrayBySeparatingStrings, 4);
    if (CFEqual(v10, v58))
    {
      NetworkServiceEntity = SCDynamicStoreKeyCreateNetworkServiceEntity(0, kSCDynamicStoreDomainState, v9, v58);
      Value = CFDictionaryGetValue(v59, NetworkServiceEntity);
      CFRelease(NetworkServiceEntity);
      TypeID = CFDictionaryGetTypeID();
      if (!Value || CFGetTypeID(Value) != TypeID)
      {
        goto LABEL_36;
      }

      v14 = CFDictionaryGetValue(v59, ValueAtIndex);
      if (sub_100044514(v14, v55, 0xFFFFFFFFLL) >= 1)
      {
        if (sub_100041E78(Value, v55))
        {
          break;
        }
      }
    }

    if (CFEqual(v10, kSCEntNetPPP))
    {
      v15 = SCDynamicStoreKeyCreateNetworkServiceEntity(0, kSCDynamicStoreDomainSetup, v9, kSCEntNetInterface);
      v16 = CFDictionaryGetValue(v59, v15);
      CFRelease(v15);
      v17 = CFDictionaryGetTypeID();
      if (v16 && CFGetTypeID(v16) == v17 && CFDictionaryContainsKey(v16, kSCPropNetInterfaceDeviceName))
      {
        if (CFEqual(v10, kSCEntNetPPP) && (v18 = CFDictionaryGetValue(v59, ValueAtIndex), v19 = CFDictionaryGetTypeID(), v18) && CFGetTypeID(v18) == v19 && (v20 = CFDictionaryGetValue(v18, kSCPropNetPPPDialOnDemand), v21 = CFNumberGetTypeID(), v20) && CFGetTypeID(v20) == v21)
        {
          valuePtr = 0;
          v22 = CFNumberGetValue(v20, kCFNumberSInt32Type, &valuePtr);
          if (valuePtr)
          {
            v23 = v22 == 0;
          }

          else
          {
            v23 = 1;
          }

          if (v23)
          {
            v24 = 7;
          }

          else
          {
            v24 = 15;
          }
        }

        else
        {
          v24 = 7;
        }
      }

      else
      {
        v24 = 0;
      }

      v25 = SCDynamicStoreKeyCreateNetworkServiceEntity(0, kSCDynamicStoreDomainSetup, v9, kSCEntNetIPv4);
      if (CFDictionaryContainsKey(v59, v25))
      {
        *a2 |= v24;
        if (!v6[307])
        {
          v6[307] = os_log_create("com.apple.SystemConfiguration", "IPMonitor");
        }

        _SC_syslog_os_log_mapping();
        if (__SC_log_enabled())
        {
          v26 = _os_log_pack_size();
          __chkstk_darwin(v26, v27, v28);
          v29 = *__error();
          v30 = _os_log_pack_fill();
          v31 = *a2;
          *v30 = 138412546;
          *(v30 + 4) = v9;
          *(v30 + 12) = 1024;
          *(v30 + 14) = v31;
          Mutable = v54;
          __SC_log_send();
          v6 = &selRef_qosMarkingIsEnabled_;
        }
      }

      CFRelease(v25);
      v32 = SCDynamicStoreKeyCreateNetworkServiceEntity(0, kSCDynamicStoreDomainSetup, v9, kSCEntNetIPv6);
      if (CFDictionaryContainsKey(v59, v32))
      {
        *a3 |= v24;
        if (!v6[307])
        {
          v6[307] = os_log_create("com.apple.SystemConfiguration", "IPMonitor");
        }

        _SC_syslog_os_log_mapping();
        if (__SC_log_enabled())
        {
          v33 = _os_log_pack_size();
          __chkstk_darwin(v33, v34, v35);
          v36 = *__error();
          Mutable = v54;
          v37 = _os_log_pack_fill();
          v38 = *a3;
          *v37 = 138412546;
          *(v37 + 4) = v9;
          *(v37 + 12) = 1024;
          *(v37 + 14) = v38;
          __SC_log_send();
          v6 = &selRef_qosMarkingIsEnabled_;
        }
      }

      CFRelease(v32);
      if (v24)
      {
        goto LABEL_53;
      }
    }

LABEL_36:
    if (ArrayBySeparatingStrings)
    {
      CFRelease(ArrayBySeparatingStrings);
    }

    if (Count == ++v5)
    {
      goto LABEL_55;
    }
  }

  v39 = 262151;
  v40 = sub_100044514(Value, @"AvailableProtocols", 0);
  v41 = 262151;
  if (v40)
  {
    v41 = (v40 << 30 >> 31) & 0x40007;
    if ((v40 & 1) == 0)
    {
      v39 = 0;
    }
  }

  *a2 |= v39;
  if (!v6[307])
  {
    v6[307] = os_log_create("com.apple.SystemConfiguration", "IPMonitor");
  }

  _SC_syslog_os_log_mapping();
  if (__SC_log_enabled())
  {
    v42 = _os_log_pack_size();
    __chkstk_darwin(v42, v43, v44);
    v45 = *__error();
    v46 = _os_log_pack_fill();
    v47 = *a2;
    *v46 = 138412546;
    *(v46 + 4) = v9;
    *(v46 + 12) = 1024;
    *(v46 + 14) = v47;
    v6 = &selRef_qosMarkingIsEnabled_;
    __SC_log_send();
  }

  *a3 |= v41;
  if (!v6[307])
  {
    v6[307] = os_log_create("com.apple.SystemConfiguration", "IPMonitor");
  }

  _SC_syslog_os_log_mapping();
  if (__SC_log_enabled())
  {
    v48 = _os_log_pack_size();
    __chkstk_darwin(v48, v49, v50);
    v51 = *__error();
    v52 = _os_log_pack_fill();
    v53 = *a3;
    *v52 = 138412546;
    *(v52 + 4) = v9;
    *(v52 + 12) = 1024;
    *(v52 + 14) = v53;
    __SC_log_send();
  }

  Mutable = v54;
LABEL_53:
  if (ArrayBySeparatingStrings)
  {
    CFRelease(ArrayBySeparatingStrings);
  }

LABEL_55:
  CFRelease(Mutable);
}

void sub_1000184A0(const __CFString *a1, uint64_t a2, const __CFArray *a3)
{
  if (CFStringHasPrefix(a1, kSCDynamicStoreDomainSetup))
  {
    v5 = 0;
    for (i = 1; ; i = 0)
    {
      v7 = i;
      if (CFStringHasSuffix(a1, **(&off_10007AB78 + v5)))
      {
        break;
      }

      v5 = 1;
      if ((v7 & 1) == 0)
      {
        return;
      }
    }

    sub_100010060(a3, a1);
  }
}

uint64_t sub_10001858C(uint64_t result, uint64_t a2, _DWORD *a3)
{
  if (a2)
  {
    v3 = a3;
    if (a3)
    {
      v5 = result;
      v6 = *(a2 + 32);
      v23 = a2 + 40;
      if (*(a2 + 8) >= 1)
      {
        v7 = 0;
        v8 = a2 + 40;
        do
        {
          result = sub_1000187A0(v3, v8);
          v9 = v6;
          if (!result)
          {
            if (!v5 || ((v10 = v5[2], v10 >= 1) ? (v11 = v10 <= v5[1]) : (v11 = 0), !v11))
            {
LABEL_37:
              sub_100067DD0();
            }

            v12 = 0;
            v13 = (v5 + 23);
            while (1)
            {
              if (v12 >= v5[1] || v12 >= v5[2])
              {
                goto LABEL_37;
              }

              ifname = nwi_ifstate_get_ifname();
              result = strcmp(v8, ifname);
              if (!result)
              {
                break;
              }

              ++v12;
              v13 += 14;
              if (v10 == v12)
              {
                goto LABEL_37;
              }
            }

            v9 = *v13;
          }

          *(v8 + 52) = v9;
          ++v7;
          v8 += 112;
        }

        while (v7 < *(a2 + 8));
      }

      if (*(a2 + 12) >= 1)
      {
        v15 = 0;
        v16 = v23 + 112 * *(a2 + 4);
        v24 = v3;
        do
        {
          result = nwi_ifstate_get_generation();
          if (result != v6)
          {
            result = sub_1000187A0(v3, v16);
            v17 = v6;
            if (!result)
            {
              if (!v5 || (v18 = v5[3], v18 < 1) || v18 > v5[1])
              {
LABEL_38:
                sub_100067DA4();
              }

              v19 = 0;
              while (1)
              {
                v20 = v5[1];
                if (v20 <= v19 || v5[3] <= v19)
                {
                  goto LABEL_38;
                }

                v21 = &v5[28 * v19 + 10 + 28 * v20];
                v22 = nwi_ifstate_get_ifname();
                result = strcmp(v16, v22);
                if (!result)
                {
                  break;
                }

                if (v18 == ++v19)
                {
                  goto LABEL_38;
                }
              }

              v17 = *(v21 + 52);
              v3 = v24;
            }

            *(v16 + 52) = v17;
          }

          ++v15;
          v16 += 112;
        }

        while (v15 < *(a2 + 12));
      }
    }
  }

  return result;
}

BOOL sub_1000187A0(_DWORD *a1, const char *a2)
{
  if (a1)
  {
    v4 = a1[2];
    if (v4 >= 1 && v4 <= a1[1])
    {
      v9 = 0;
      v10 = a1 + 10;
      while (v9 < a1[1] && v9 < a1[2])
      {
        ifname = nwi_ifstate_get_ifname();
        if (!strcmp(a2, ifname))
        {
          if ((*(v10 + 17) & 0xF) == 0)
          {
            break;
          }

          return 1;
        }

        ++v9;
        v10 += 28;
        if (v4 == v9)
        {
          break;
        }
      }
    }

    v6 = a1[3];
    if (v6 >= 1 && v6 <= a1[1])
    {
      for (i = 0; v6 != i; ++i)
      {
        v13 = a1[1];
        if (v13 <= i || a1[3] <= i)
        {
          break;
        }

        v14 = &a1[28 * i + 10 + 28 * v13];
        v15 = nwi_ifstate_get_ifname();
        if (!strcmp(a2, v15))
        {
          return (*(v14 + 17) & 0xF) != 0;
        }
      }
    }
  }

  return 0;
}

uint64_t sub_100018900(unsigned int *a1)
{
  sub_100018C0C(a1, &v18);
  if (v18 == xmmword_100081A90 && *(&v18 + 1) == *(&xmmword_100081A90 + 1) && v19 == qword_100081AA0 && *(&v19 + 1) == unk_100081AA8)
  {
    if (!qword_100081998)
    {
      qword_100081998 = os_log_create("com.apple.SystemConfiguration", "IPMonitor");
    }

    _SC_syslog_os_log_mapping();
    result = __SC_log_enabled();
    if (result)
    {
      v14 = _os_log_pack_size();
      __chkstk_darwin(v14, v15, v16);
      v17 = *__error();
      *_os_log_pack_fill() = 0;
      __SC_log_send();
      return 0;
    }
  }

  else
  {
    xmmword_100081A90 = v18;
    *&qword_100081AA0 = v19;
    if (!qword_100081998)
    {
      qword_100081998 = os_log_create("com.apple.SystemConfiguration", "IPMonitor");
    }

    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v5 = _os_log_pack_size();
      __chkstk_darwin(v5, v6, v7);
      v8 = *__error();
      *_os_log_pack_fill() = 0;
      __SC_log_send();
    }

    sub_1000445B0(a1);
    if (sub_1000474F8(a1))
    {
      return 1;
    }

    if (!qword_100081998)
    {
      qword_100081998 = os_log_create("com.apple.SystemConfiguration", "IPMonitor");
    }

    _SC_syslog_os_log_mapping();
    if (!__SC_log_enabled())
    {
      return 1;
    }

    else
    {
      v9 = _os_log_pack_size();
      __chkstk_darwin(v9, v10, v11);
      v12 = *__error();
      *_os_log_pack_fill() = 0;
      __SC_log_send();
      return 1;
    }
  }

  return result;
}

double sub_100018C0C(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    memset(&v6, 0, sizeof(v6));
    v4 = *(a1 + 32);
    *(a1 + 32) = 0;
    CC_SHA256_Init(&v6);
    CC_SHA256_Update(&v6, a1, 228 * *(a1 + 4) + 40);
    CC_SHA256_Final(a2, &v6);
    *(a1 + 32) = v4;
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

uint64_t sub_100018CCC(const __CFDictionary *a1, const __CFString *a2, const __CFDictionary *a3, const __CFArray *a4, const __CFArray *a5, const __CFArray *a6, CFTypeRef *a7)
{
  Mutable = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
  if (!Mutable)
  {
    sub_100067BC4();
  }

  v205 = a1;
  v202 = a2;
  v215 = 0;
  v212 = Mutable;
  v197 = a3;
  v200 = a4;
  sub_10001A5BC(Mutable, a3, a4, 0, 0);
  TypeID = CFArrayGetTypeID();
  if (a6)
  {
    if (CFGetTypeID(a6) == TypeID)
    {
      Count = CFArrayGetCount(a6);
      if (Count >= 1)
      {
        v15 = Count;
        v16 = 0;
        v17 = 150000;
        do
        {
          LODWORD(v221) = 0;
          CFArrayGetValueAtIndex(a6, v16);
          v18 = _SC_trimDomain();
          if (v18)
          {
            v19 = v18;
            LODWORD(v221) = v17;
            v20 = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
            CFDictionarySetValue(v20, kSCPropNetDNSDomainName, v19);
            CFDictionarySetValue(v20, kSCPropNetDNSOptions, @"pdns");
            v21 = CFNumberCreate(0, kCFNumberIntType, &v221);
            CFDictionarySetValue(v20, kSCPropNetDNSSearchOrder, v21);
            CFRelease(v21);
            if (qword_1000818F0)
            {
              CFDictionarySetValue(v20, kSCPropNetDNSServerTimeout, qword_1000818F0);
            }

            sub_10001B160(v20, "Private DNS", 0, v16);
            sub_10001B220(v212, v20);
            CFRelease(v20);
            CFRelease(v19);
          }

          ++v16;
          v17 += 200;
        }

        while (v15 != v16);
      }
    }
  }

  if (v205 && (Value = CFDictionaryGetValue(v205, kSCPropNetDNSServerAddresses), v23 = CFArrayGetTypeID(), Value) && CFGetTypeID(Value) == v23 && CFArrayGetCount(Value))
  {
    LODWORD(v221) = 200000;
    MutableCopy = CFDictionaryCreateMutableCopy(0, 0, v205);
    v25 = 0;
  }

  else
  {
    LODWORD(v221) = 200000;
    MutableCopy = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    v25 = 1;
  }

  if (!MutableCopy)
  {
    sub_100067B98();
  }

  v206 = v25;
  v26 = CFDictionaryGetValue(MutableCopy, kSCPropNetDNSSearchOrder);
  v27 = CFNumberGetTypeID();
  if (v26 && CFGetTypeID(v26) == v27 && CFNumberGetValue(v26, kCFNumberSInt32Type, &v221))
  {
    v208 = 0;
  }

  else
  {
    LODWORD(v221) = 200000;
    v28 = CFNumberCreate(0, kCFNumberIntType, &v221);
    CFDictionarySetValue(MutableCopy, kSCPropNetDNSSearchOrder, v28);
    CFRelease(v28);
    v208 = 1;
  }

  v201 = sub_10001ACC0(MutableCopy, v212);
  sub_10001B160(MutableCopy, "Default", v202, 0);
  sub_10001B220(v212, MutableCopy);
  CFRelease(MutableCopy);
  v29 = CFArrayGetTypeID();
  if (a5)
  {
    if (CFGetTypeID(a5) == v29)
    {
      v30 = CFArrayGetCount(a5);
      if (v30 >= 1)
      {
        v31 = v30;
        v32 = 0;
        v33 = 300000;
        do
        {
          LODWORD(v221) = 0;
          CFArrayGetValueAtIndex(a5, v32);
          v34 = _SC_trimDomain();
          if (v34)
          {
            v35 = v34;
            LODWORD(v221) = v33;
            v36 = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
            CFDictionarySetValue(v36, kSCPropNetDNSDomainName, v35);
            CFDictionarySetValue(v36, kSCPropNetDNSOptions, @"mdns");
            v37 = CFNumberCreate(0, kCFNumberIntType, &v221);
            CFDictionarySetValue(v36, kSCPropNetDNSSearchOrder, v37);
            CFRelease(v37);
            if (qword_1000818E8)
            {
              CFDictionarySetValue(v36, kSCPropNetDNSServerTimeout, qword_1000818E8);
            }

            sub_10001B160(v36, "Multicast DNS", 0, v32);
            sub_10001B220(v212, v36);
            CFRelease(v36);
            CFRelease(v35);
          }

          ++v32;
          v33 += 200;
        }

        while (v31 != v32);
      }
    }
  }

  v38 = CFDictionaryGetTypeID();
  v39 = v197;
  if (v197)
  {
    if (CFGetTypeID(v197) == v38)
    {
      v40 = CFDictionaryGetCount(v197);
      if (v40)
      {
        v41 = v40;
        v42 = CFArrayGetTypeID();
        if (v200 && CFGetTypeID(v200) == v42)
        {
          v43 = CFArrayGetCount(v200);
          if (v43 >= 1)
          {
            v44 = CFArrayCreateMutableCopy(0, 0, v200);
            goto LABEL_41;
          }
        }

        else
        {
          v43 = 0;
        }

        v44 = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
LABEL_41:
        v45 = v44;
        v235 = 0u;
        v236 = 0u;
        v233 = 0u;
        v234 = 0u;
        v231 = 0u;
        v232 = 0u;
        v229 = 0u;
        v230 = 0u;
        v227 = 0u;
        v228 = 0u;
        v225 = 0u;
        v226 = 0u;
        v223 = 0u;
        v224 = 0u;
        v221 = 0u;
        v222 = 0u;
        if (v41 < 33)
        {
          Typed = &v221;
          CFDictionaryGetKeysAndValues(v197, &v221, 0);
          if (v41 < 1)
          {
LABEL_50:
            v203 = CFSetCreateMutable(0, 0, &kCFTypeSetCallBacks);
            if (v43 >= 1)
            {
              v49 = 0;
              v199 = kSCPropNetDNSServiceIdentifier;
              do
              {
                ValueAtIndex = CFArrayGetValueAtIndex(v45, v49);
                v51 = CFDictionaryGetValue(v197, ValueAtIndex);
                v52 = CFDictionaryGetTypeID();
                if (v51)
                {
                  if (CFGetTypeID(v51) == v52)
                  {
                    v53 = CFDictionaryGetValue(v51, kSCEntNetDNS);
                    v54 = CFDictionaryGetTypeID();
                    if (v53)
                    {
                      if (CFGetTypeID(v53) == v54)
                      {
                        v55 = CFDictionaryGetValue(v53, kSCPropNetDNSServerAddresses);
                        v56 = CFArrayGetTypeID();
                        if (v55)
                        {
                          if (CFGetTypeID(v55) == v56)
                          {
                            if (CFArrayGetCount(v55))
                            {
                              v57 = CFDictionaryGetValue(v53, kSCPropInterfaceName);
                              if (v57)
                              {
                                v58 = v57;
                                if (!CFEqual(v57, @"*") && !CFDictionaryContainsKey(v53, v199) && !CFSetContainsValue(v203, v58))
                                {
                                  CFSetSetValue(v203, v58);
                                  if (_SC_cfstring_to_cstring())
                                  {
                                    if (sub_100013354(&v217))
                                    {
                                      v59 = CFDictionaryCreateMutableCopy(0, 0, v53);
                                      v60 = sub_10001ACC0(v59, 0);
                                      if (v60)
                                      {
                                        v61 = v60;
                                        CFDictionarySetValue(v59, kSCPropNetDNSSearchDomains, v60);
                                        CFRelease(v61);
                                      }

                                      v62 = sub_10001C1B8(v51, 0);
                                      if (v62)
                                      {
                                        sub_10001C3C4(v59, v62 | 0x1000);
                                        CFDictionaryRemoveValue(v59, kSCPropNetDNSSupplementalMatchDomains);
                                        CFDictionaryRemoveValue(v59, kSCPropNetDNSSupplementalMatchOrders);
                                        sub_10001B160(v59, "Scoped", ValueAtIndex, 0);
                                        sub_10001B220(v212, v59);
                                        sub_10001A5BC(v212, v197, v200, v58, v51);
                                      }

                                      CFRelease(v59);
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

                ++v49;
              }

              while (v43 != v49);
            }

            CFRelease(v203);
            CFRelease(v45);
            v39 = v197;
            goto LABEL_73;
          }
        }

        else
        {
          Typed = CFAllocatorAllocateTyped();
          CFDictionaryGetKeysAndValues(v197, Typed, 0);
        }

        for (i = 0; i != v41; ++i)
        {
          v48 = Typed[i];
          v237.location = 0;
          v237.length = v43;
          if (!CFArrayContainsValue(v45, v237, v48))
          {
            CFArrayAppendValue(v45, v48);
            ++v43;
          }
        }

        if (Typed != &v221)
        {
          CFAllocatorDeallocate(0, Typed);
        }

        goto LABEL_50;
      }
    }
  }

LABEL_73:
  v63 = v212;
  sub_10001B544(v212, v39);
  v64 = CFArrayGetCount(v212);
  if (v64 < 2)
  {
    v66 = v208;
  }

  else
  {
    v238.location = 0;
    v238.length = v64;
    CFArraySortValues(v212, v238, sub_10001B9A8, 0);
    v65 = v64 + 1;
    v66 = v208;
    do
    {
      v67 = CFArrayGetValueAtIndex(v212, v65 - 2);
      if (!CFDictionaryContainsKey(v67, kSCPropNetDNSDomainName) && !CFDictionaryContainsKey(v67, kSCPropNetDNSSearchDomains) && !CFDictionaryContainsKey(v67, kSCPropNetDNSServerAddresses))
      {
        CFArrayRemoveValueAtIndex(v212, v65 - 2);
        --v64;
      }

      --v65;
    }

    while (v65 > 2);
  }

  v68 = CFArrayGetValueAtIndex(v212, 0);
  v69 = CFDictionaryCreateMutableCopy(0, 0, v68);
  v70 = v69;
  if (v201)
  {
    CFDictionarySetValue(v69, kSCPropNetDNSSearchDomains, v201);
    CFRelease(v201);
  }

  if (v64 > 1)
  {
    v71 = v66;
  }

  else
  {
    v71 = 0;
  }

  if (v71 == 1)
  {
    v72 = CFArrayGetValueAtIndex(v212, 1);
    if (CFDictionaryContainsKey(v72, kSCPropNetDNSDomainName) || v72 && (LODWORD(v217) = 0, *&v221 = 0, CFDictionaryGetValueIfPresent(v72, @"__FLAGS__", &v221)) && v221 && CFNumberGetValue(v221, kCFNumberSInt32Type, &v217) && (v217 & 0x1000) != 0)
    {
      CFDictionaryRemoveValue(v70, kSCPropNetDNSSearchOrder);
    }
  }

  CFArraySetValueAtIndex(v212, 0, v70);
  CFRelease(v70);
  v73 = v206;
  if (v64 >= 2)
  {
    v73 = 0;
  }

  if (v73 == 1)
  {
    v215 = 0;
    goto LABEL_207;
  }

  v214 = 0;
  v215 = sub_10001BF38();
  if (v64 >= 1)
  {
    v74 = 0;
    v207 = 0;
    v198 = kSCPropNetDNSServiceIdentifier;
    while (1)
    {
      v213 = 0;
      v75 = CFArrayGetValueAtIndex(v63, v74);
      v76 = v75;
      if (v75 && (LODWORD(v217) = 0, *&v221 = 0, CFDictionaryGetValueIfPresent(v75, @"__FLAGS__", &v221)) && v221 && CFNumberGetValue(v221, kCFNumberSInt32Type, &v217) && ((~v217 & 6) == 0 || (v217 & 0x3000) != 0))
      {
        v211 = 1;
      }

      else
      {
        if (!v207)
        {
          CFDictionaryApplyFunction(v197, sub_10001C0B8, &v214);
        }

        v76 = CFDictionaryCreateMutableCopy(0, 0, v76);
        sub_10001C3C4(v76, v214);
        v211 = 0;
        v207 = 1;
      }

      if (a7 && !v74)
      {
        *a7 = CFRetain(v76);
      }

      v216 = sub_10001C4BC();
      v77 = CFDictionaryGetValue(v76, kSCPropNetDNSDomainName);
      v78 = CFStringGetTypeID();
      if (v77 && CFGetTypeID(v77) == v78 && CFStringGetLength(v77) >= 1 && _SC_cfstring_to_cstring())
      {
        sub_10001CC70(&v216, &v221);
      }

      v79 = CFDictionaryGetValue(v76, kSCPropNetDNSSearchDomains);
      v80 = CFArrayGetTypeID();
      if (v79)
      {
        if (CFGetTypeID(v79) == v80)
        {
          v81 = CFArrayGetCount(v79);
          if (v81 >= 1)
          {
            v82 = v81;
            for (j = 0; j != v82; ++j)
            {
              v84 = CFArrayGetValueAtIndex(v79, j);
              v85 = CFStringGetTypeID();
              if (v84 && CFGetTypeID(v84) == v85 && CFStringGetLength(v84) >= 1 && _SC_cfstring_to_cstring())
              {
                sub_100036CF4(&v216, &v221);
              }
            }
          }
        }
      }

      v86 = CFDictionaryGetValue(v76, @"__IF_INDEX__");
      v87 = CFNumberGetTypeID();
      if (v86 && CFGetTypeID(v86) == v87 && (LODWORD(v217) = 0, CFNumberGetValue(v86, kCFNumberIntType, &v217)))
      {
        if (v217)
        {
          v88 = sub_100038A68(v217, &v221);
          if (v88)
          {
            v209 = CFStringCreateWithCString(0, v88, 0x600u);
            v89 = v217;
            v90 = v217;
          }

          else
          {
            v209 = 0;
            v90 = 0;
            v89 = v217;
          }
        }

        else
        {
          v89 = 0;
          v209 = 0;
          v90 = 0;
          v88 = 0;
        }

        sub_100036E08(&v216, v89, v88);
      }

      else
      {
        v209 = 0;
        v90 = 0;
      }

      v91 = CFDictionaryGetValue(v76, @"__FLAGS__");
      v92 = CFNumberGetTypeID();
      if (v91)
      {
        if (CFGetTypeID(v91) == v92)
        {
          LODWORD(v221) = 0;
          if (CFNumberGetValue(v91, kCFNumberSInt32Type, &v221))
          {
            sub_10001C524(&v216, v221);
          }
        }
      }

      v93 = CFDictionaryGetValue(v76, kSCPropNetDNSServerAddresses);
      v94 = CFArrayGetTypeID();
      if (v93)
      {
        if (CFGetTypeID(v93) == v94)
        {
          v95 = CFArrayGetCount(v93);
          if (v95 >= 1)
          {
            v96 = v95;
            for (k = 0; k != v96; ++k)
            {
              v217 = 0;
              v218 = 0;
              v220 = 0;
              v219 = 0;
              v98 = CFArrayGetValueAtIndex(v93, k);
              v99 = CFStringGetTypeID();
              if (v98 && CFGetTypeID(v98) == v99 && _SC_cfstring_to_cstring() && _SC_string_to_sockaddr())
              {
                if (BYTE1(v217) == 30 && v218 == 254 && (BYTE1(v218) & 0xC0) == 0x80 && !v220 && v90)
                {
                  v220 = v90;
                }

                sub_100036BF4(&v216, &v217);
              }
            }
          }
        }
      }

      v100 = CFDictionaryGetValue(v76, kSCPropNetDNSSearchOrder);
      v101 = CFNumberGetTypeID();
      if (v100)
      {
        if (CFGetTypeID(v100) == v101)
        {
          LODWORD(v221) = 0;
          if (CFNumberGetValue(v100, kCFNumberSInt32Type, &v221))
          {
            sub_10001CCF0(&v216, v221);
          }
        }
      }

      v102 = CFDictionaryGetValue(v76, kSCPropNetDNSSortList);
      v103 = CFArrayGetTypeID();
      if (v102)
      {
        if (CFGetTypeID(v102) == v103)
        {
          v104 = CFArrayGetCount(v102);
          if (v104 >= 1)
          {
            break;
          }
        }
      }

LABEL_175:
      v113 = CFDictionaryGetValue(v76, kSCPropNetDNSServerPort);
      v114 = CFNumberGetTypeID();
      v63 = v212;
      if (v113)
      {
        if (CFGetTypeID(v113) == v114)
        {
          LODWORD(v221) = 0;
          if (CFNumberGetValue(v113, kCFNumberIntType, &v221))
          {
            sub_100036EC0(&v216, v221);
          }
        }
      }

      v115 = CFDictionaryGetValue(v76, kSCPropNetDNSServerTimeout);
      v116 = CFNumberGetTypeID();
      if (v115)
      {
        if (CFGetTypeID(v115) == v116)
        {
          LODWORD(v221) = 0;
          if (CFNumberGetValue(v115, kCFNumberIntType, &v221))
          {
            sub_10001CD44(&v216, v221);
          }
        }
      }

      v117 = CFDictionaryGetValue(v76, kSCPropNetDNSOptions);
      v118 = CFStringGetTypeID();
      if (v117)
      {
        if (CFGetTypeID(v117) == v118)
        {
          v119 = _SC_cfstring_to_cstring();
          if (v119)
          {
            v120 = v119;
            sub_10001CD98(&v216, v119);
            CFAllocatorDeallocate(0, v120);
          }
        }
      }

      v121 = CFDictionaryGetValue(v76, v198);
      v122 = CFNumberGetTypeID();
      if (v121)
      {
        if (CFGetTypeID(v121) == v122)
        {
          LODWORD(v221) = 0;
          if (CFNumberGetValue(v121, kCFNumberIntType, &v221))
          {
            sub_100036F14(&v216, v221);
          }
        }
      }

      v123 = CFDictionaryGetValue(v76, @"__CONFIGURATION_ID__");
      v124 = CFStringGetTypeID();
      if (v123)
      {
        if (CFGetTypeID(v123) == v124 && CFStringGetLength(v123) >= 1)
        {
          v125 = _SC_cfstring_to_cstring();
          if (v125)
          {
            v126 = v125;
            sub_10001C578(&v216, v125);
            CFAllocatorDeallocate(0, v126);
          }
        }
      }

      if (v209)
      {
        CFRelease(v209);
      }

      v213 = v216;
      sub_10001C85C(&v215, v216);
      sub_10001CC10(&v213);
      if ((v211 & 1) == 0)
      {
        CFRelease(v76);
      }

      if (++v74 == v64)
      {
        goto LABEL_206;
      }
    }

    v105 = v104;
    v106 = 0;
    while (1)
    {
      v217 = 0;
      v107 = CFArrayGetValueAtIndex(v102, v106);
      v108 = CFStringGetTypeID();
      if (!v107 || CFGetTypeID(v107) != v108 || !_SC_cfstring_to_cstring())
      {
        goto LABEL_174;
      }

      v109 = strchr(&v221, 47);
      if (v109)
      {
        break;
      }

      v217 = 0;
      if (inet_aton(&v221, &v217) == 1)
      {
        v111 = bswap32(v217);
        if ((v111 & 0x80000000) == 0)
        {
          v112 = -16777216;
          goto LABEL_172;
        }

        if (v111 >> 30 == 2)
        {
          v112 = -65536;
          goto LABEL_172;
        }

        if (v111 >> 29 == 6)
        {
          v112 = -256;
LABEL_172:
          HIDWORD(v217) = bswap32(v112);
LABEL_173:
          sub_100036D8C(&v216, &v217);
        }
      }

LABEL_174:
      if (v105 == ++v106)
      {
        goto LABEL_175;
      }
    }

    v110 = v109;
    *v109 = 0;
    v217 = 0;
    if (inet_aton(&v221, &v217) != 1 || inet_aton(v110 + 1, &v217 + 1) != 1)
    {
      goto LABEL_174;
    }

    goto LABEL_173;
  }

LABEL_206:
  sub_10001CEE8(v214);
  sub_10001CE18(&v215);
LABEL_207:
  sub_10001CF38(&v215, &v221, 0x20uLL);
  if (v221 == xmmword_1000818C8 && *(&v221 + 1) == *(&xmmword_1000818C8 + 1) && v222 == qword_1000818D8 && *(&v222 + 1) == unk_1000818E0)
  {
    v187 = 0;
  }

  else
  {
    xmmword_1000818C8 = v221;
    *&qword_1000818D8 = v222;
    sub_1000035EC();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v130 = _os_log_pack_size();
      __chkstk_darwin(v130, v131, v132);
      v133 = *__error();
      *_os_log_pack_fill() = 0;
      __SC_log_send();
    }

    if (v215)
    {
      v134 = sub_100034C70(v215, bswap32(v215[12]) + 56);
      if (v134)
      {
        v135 = v134;
        v136 = *(v134 + 12);
        v137 = bswap32(*(v134 + 13));
        v138 = bswap32(*v134);
        *v134 = v138;
        if (v137 >= 8 * v138)
        {
          v139 = bswap32(v136);
          v140 = v134 + 56;
          v141 = 8 * v138;
          v142 = 8 * v138 ? &v134[v139 + 56] : 0;
          v143 = v137 - v141;
          *(v134 + 4) = v142;
          v144 = bswap32(*(v134 + 3));
          *(v134 + 3) = v144;
          if (v143 >= 8 * v144)
          {
            v145 = 8 * v144;
            v146 = &v134[v139 + 56 + v141];
            v147 = v145 ? v146 : 0;
            v148 = v143 - v145;
            *(v134 + 2) = v147;
            v149 = bswap32(*(v134 + 8));
            *(v134 + 8) = v149;
            if (v148 >= 8 * v149)
            {
              v150 = 8 * v149;
              v151 = v146 + v145;
              if (8 * v149)
              {
                v152 = v146 + v145;
              }

              else
              {
                v152 = 0;
              }

              *(v134 + 36) = v152;
              if (v139 >= 8)
              {
                v153 = 0;
                v154 = 0;
                v155 = 0;
                v156 = v148 - v150;
                v157 = v151 + v150;
                while (1)
                {
                  v158 = bswap32(*(v140 + 1));
                  v159 = bswap32(*v140);
                  if (v159 - 1 <= 2)
                  {
                    if (v158 - 8 < 0x64)
                    {
                      goto LABEL_302;
                    }

                    *(v140 + 1) = 0;
                    v160 = bswap32(*(v140 + 4));
                    *(v140 + 4) = v160;
                    if (v156 < 8 * v160)
                    {
                      goto LABEL_302;
                    }

                    v161 = 8 * v160;
                    v162 = 8 * v160 ? v157 : 0;
                    v163 = v156 - v161;
                    *(v140 + 20) = v162;
                    *(v140 + 14) = bswap32(*(v140 + 14)) >> 16;
                    v164 = bswap32(*(v140 + 8));
                    *(v140 + 8) = v164;
                    if (v163 < 8 * v164)
                    {
                      goto LABEL_302;
                    }

                    v165 = 8 * v164;
                    v166 = v157 + v161;
                    v167 = 8 * v164 ? v166 : 0;
                    v168 = v163 - v165;
                    *(v140 + 36) = v167;
                    v169 = bswap32(*(v140 + 11));
                    *(v140 + 11) = v169;
                    if (v168 < 8 * v169)
                    {
                      goto LABEL_302;
                    }

                    v170 = 8 * v169;
                    v171 = v166 + v165;
                    v172 = 8 * v169 ? v171 : 0;
                    *(v140 + 6) = v172;
                    *(v140 + 7) = 0;
                    *(v140 + 4) = vrev32q_s8(*(v140 + 4));
                    *(v140 + 10) = vrev32_s8(*(v140 + 80));
                    v173 = v158 - 108;
                    if (v158 - 108 != bswap32(*(v140 + 26)))
                    {
                      goto LABEL_302;
                    }

                    v174 = v140 + 8;
                    if (v173 < 8)
                    {
                      v177 = 0;
                      v176 = 0;
                      v175 = 0;
                    }

                    else
                    {
                      v175 = 0;
                      v176 = 0;
                      v177 = 0;
                      v178 = (v140 + 108);
                      do
                      {
                        v179 = v178[1];
                        v180 = bswap32(*v178);
                        if (v180 <= 12)
                        {
                          switch(v180)
                          {
                            case 10:
                              *v174 = v178 + 2;
                              break;
                            case 11:
                              v183 = *(v140 + 20);
                              if (!v183)
                              {
                                goto LABEL_302;
                              }

                              *(v183 + 8 * v177++) = v178 + 2;
                              break;
                            case 12:
                              v181 = *(v140 + 36);
                              if (!v181)
                              {
                                goto LABEL_302;
                              }

                              *(v181 + 8 * v176++) = v178 + 2;
                              break;
                          }
                        }

                        else if (v180 > 14)
                        {
                          if (v180 == 15)
                          {
                            *(v140 + 11) = v178 + 2;
                          }

                          else if (v180 == 16)
                          {
                            *(v140 + 12) = v178 + 2;
                          }
                        }

                        else if (v180 == 13)
                        {
                          v182 = *(v140 + 6);
                          if (!v182)
                          {
                            goto LABEL_302;
                          }

                          *(v182 + 8 * v175++) = v178 + 2;
                        }

                        else
                        {
                          *(v140 + 7) = v178 + 2;
                        }

                        v184 = bswap32(v179);
                        v178 = (v178 + v184);
                        v173 -= v184;
                      }

                      while (v173 > 7);
                    }

                    if (v177 != v160 || v176 != v164 || v175 != v169)
                    {
                      goto LABEL_302;
                    }

                    v157 = v171 + v170;
                    v156 = v168 - v170;
                    switch(v159)
                    {
                      case 3u:
                        v185 = *(v135 + 36);
                        if (!v185)
                        {
                          goto LABEL_302;
                        }

                        v186 = v153++;
                        goto LABEL_285;
                      case 2u:
                        v185 = *(v135 + 2);
                        if (!v185)
                        {
                          goto LABEL_302;
                        }

                        v186 = v154++;
                        goto LABEL_285;
                      case 1u:
                        v185 = *(v135 + 4);
                        if (!v185)
                        {
                          goto LABEL_302;
                        }

                        v186 = v155++;
LABEL_285:
                        *(v185 + 8 * v186) = v174;
                        break;
                    }
                  }

                  v140 += v158;
                  v139 -= v158;
                  if (v139 <= 7)
                  {
                    v138 = *v135;
                    goto LABEL_298;
                  }
                }
              }

              v155 = 0;
              v154 = 0;
              v153 = 0;
LABEL_298:
              if (v155 == v138 && v154 == *(v135 + 3) && v153 == *(v135 + 8))
              {
                sub_100034F74(v135);
              }
            }
          }
        }

LABEL_302:
        free(v135);
      }
    }

    else
    {
      sub_1000035EC();
      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v188 = _os_log_pack_size();
        __chkstk_darwin(v188, v189, v190);
        v191 = *__error();
        *_os_log_pack_fill() = 0;
        __SC_log_send();
      }
    }

    if ((sub_100037B50(&v215) & 1) != 0 || (sub_1000035EC(), _SC_syslog_os_log_mapping(), !__SC_log_enabled()))
    {
      v187 = 1;
    }

    else
    {
      v192 = _os_log_pack_size();
      __chkstk_darwin(v192, v193, v194);
      v195 = *__error();
      *_os_log_pack_fill() = 0;
      __SC_log_send();
      v187 = 1;
    }
  }

  if (v215)
  {
    sub_10001CC10(&v215);
  }

  CFRelease(v63);
  return v187;
}

void sub_10001A5BC(const __CFArray *a1, const __CFDictionary *a2, const __CFArray *a3, unint64_t a4, const __CFDictionary *a5)
{
  TypeID = CFDictionaryGetTypeID();
  if (a2)
  {
    if (CFGetTypeID(a2) == TypeID)
    {
      Count = CFDictionaryGetCount(a2);
      if (Count)
      {
        v12 = Count;
        v56 = a1;
        cf2 = a4;
        v55 = a5;
        if (Count < 33)
        {
          Typed = v62;
          v14 = v61;
        }

        else
        {
          Typed = CFAllocatorAllocateTyped();
          v14 = CFAllocatorAllocateTyped();
        }

        v15 = CFArrayGetTypeID();
        if (a3 && CFGetTypeID(a3) == v15)
        {
          range = CFArrayGetCount(a3);
        }

        else
        {
          range = 0;
        }

        memset(v62, 0, 256);
        memset(v61, 0, sizeof(v61));
        CFDictionaryGetKeysAndValues(a2, Typed, v14);
        if (v12 >= 1)
        {
          v16 = 0;
          v17 = kSCEntNetDNS;
          v18 = "Supplemental";
          if (a4)
          {
            v18 = "Supplemental/Scoped";
          }

          v50 = v18;
          v57 = a3;
          while (1)
          {
            v19 = v14[v16];
            v20 = Typed[v16];
            v21 = CFDictionaryGetTypeID();
            if (!v19)
            {
              goto LABEL_73;
            }

            if (CFGetTypeID(v19) != v21)
            {
              goto LABEL_73;
            }

            v22 = CFDictionaryGetValue(v19, v17);
            v23 = CFDictionaryGetTypeID();
            if (!v22 || CFGetTypeID(v22) != v23)
            {
              goto LABEL_73;
            }

            v24 = CFDictionaryGetValue(v22, kSCPropInterfaceName);
            if (cf2)
            {
              if (CFDictionaryContainsKey(v19, kSCEntNetIPv4) || CFDictionaryContainsKey(v19, kSCEntNetIPv6) || v24 != @"*" && (!v24 || !CFEqual(v24, @"*") && v24 != cf2 && !CFEqual(v24, cf2)))
              {
                goto LABEL_73;
              }

              v25 = sub_10001C1B8(v55, 0);
              if (!v25)
              {
                goto LABEL_73;
              }
            }

            else
            {
              v25 = 0;
            }

            v53 = v25;
            v26 = 200 * v16 + 100000;
            v27.length = range;
            if (range >= 1)
            {
              v27.location = 0;
              v28 = CFArrayContainsValue(a3, v27, Typed[v16]);
              v29 = 200 * v12;
              if (v28)
              {
                v29 = 0;
              }

              v26 += v29;
            }

            if (cf2 | v24)
            {
              break;
            }

            v30 = CFRetain(v22);
            v31 = 0x4000;
LABEL_47:
            sub_10001C3C4(v30, v31);
            LODWORD(value) = v26;
            v36 = CFDictionaryGetValue(v30, kSCPropNetDNSSupplementalMatchDomains);
            v37 = CFArrayGetTypeID();
            v17 = kSCEntNetDNS;
            if (v36)
            {
              if (CFGetTypeID(v36) == v37)
              {
                v54 = CFArrayGetCount(v36);
                if (v54)
                {
                  cf = CFDictionaryGetValue(v30, kSCPropNetDNSSupplementalMatchOrders);
                  if (!cf || (v38 = CFArrayGetTypeID(), CFGetTypeID(cf) == v38) && v54 == CFArrayGetCount(cf))
                  {
                    v39 = CFDictionaryGetValue(v30, kSCPropNetDNSServerAddresses);
                    v40 = CFArrayGetTypeID();
                    if (v39)
                    {
                      if (CFGetTypeID(v39) == v40)
                      {
                        v41 = CFArrayGetCount(v39);
                        if (v54 >= 1)
                        {
                          if (v41)
                          {
                            v42 = 0;
                            theDicta = v30;
                            while (2)
                            {
                              ValueAtIndex = CFArrayGetValueAtIndex(v36, v42);
                              v44 = CFStringGetTypeID();
                              if (!ValueAtIndex || CFGetTypeID(ValueAtIndex) != v44)
                              {
                                goto LABEL_71;
                              }

                              MutableCopy = CFDictionaryCreateMutableCopy(0, 0, theDicta);
                              if (CFStringGetLength(ValueAtIndex) < 1)
                              {
                                CFDictionaryRemoveValue(MutableCopy, kSCPropNetDNSDomainName);
                              }

                              else
                              {
                                CFDictionarySetValue(MutableCopy, kSCPropNetDNSDomainName, ValueAtIndex);
                              }

                              if (cf)
                              {
                                v46 = CFArrayGetValueAtIndex(cf, v42);
                                v47 = CFNumberGetTypeID();
                                if (v46 && CFGetTypeID(v46) == v47)
                                {
                                  CFDictionarySetValue(MutableCopy, kSCPropNetDNSSearchOrder, v46);
                                  goto LABEL_70;
                                }
                              }

                              else
                              {
                                CFNumberGetTypeID();
                              }

                              if (!CFDictionaryContainsKey(MutableCopy, kSCPropNetDNSSearchOrder))
                              {
                                v48 = CFNumberCreate(0, kCFNumberIntType, &value);
                                CFDictionarySetValue(MutableCopy, kSCPropNetDNSSearchOrder, v48);
                                CFRelease(v48);
                                LODWORD(value) = value + 1;
                              }

LABEL_70:
                              CFDictionaryRemoveValue(MutableCopy, kSCPropNetDNSSupplementalMatchDomains);
                              CFDictionaryRemoveValue(MutableCopy, kSCPropNetDNSSupplementalMatchOrders);
                              CFDictionaryRemoveValue(MutableCopy, kSCPropNetDNSSearchDomains);
                              CFDictionaryRemoveValue(MutableCopy, kSCPropNetDNSSortList);
                              sub_10001B160(MutableCopy, v50, v20, v42);
                              sub_10001B220(v56, MutableCopy);
                              CFRelease(MutableCopy);
LABEL_71:
                              ++v42;
                              v30 = theDicta;
                              if (v54 == v42)
                              {
                                break;
                              }

                              continue;
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }

            CFRelease(v30);
            a3 = v57;
LABEL_73:
            if (++v16 == v12)
            {
              goto LABEL_74;
            }
          }

          theDict = v26;
          value = 0;
          v32 = CFDictionaryCreateMutableCopy(0, 0, v22);
          v33 = v32;
          if (cf2)
          {
            CFDictionarySetValue(v32, kSCPropInterfaceName, cf2);
            v31 = v53 | 0x5000;
          }

          else
          {
            if (!v24 || !CFDictionaryGetValueIfPresent(v22, @"__SCOPED_QUERY__", &value) || (v34 = value, v35 = CFBooleanGetTypeID(), !v34) || CFGetTypeID(v34) != v35 || !CFBooleanGetValue(value))
            {
              v30 = v33;
              CFDictionaryRemoveValue(v33, kSCPropInterfaceName);
              v31 = 0x4000;
              goto LABEL_46;
            }

            v31 = sub_10001C1B8(v19, 0) | 0x4000;
          }

          v30 = v33;
LABEL_46:
          v26 = theDict;
          goto LABEL_47;
        }

LABEL_74:
        if (Typed != v62)
        {
          CFAllocatorDeallocate(0, Typed);
          CFAllocatorDeallocate(0, v14);
        }
      }
    }
  }
}

__CFArray *sub_10001ACC0(const __CFDictionary *a1, const __CFArray *MutableCopy)
{
  valuePtr = 200000;
  Mutable = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
  if (a1)
  {
    Value = CFDictionaryGetValue(a1, kSCPropNetDNSSearchOrder);
    TypeID = CFNumberGetTypeID();
    if (!Value || CFGetTypeID(Value) != TypeID || !CFNumberGetValue(Value, kCFNumberSInt32Type, &valuePtr))
    {
      valuePtr = 200000;
    }

    CFDictionaryGetValue(a1, kSCPropNetDNSDomainName);
    v7 = CFDictionaryGetValue(a1, kSCPropNetDNSSearchDomains);
    v8 = CFArrayGetTypeID();
    if (v7 && CFGetTypeID(v7) == v8)
    {
      Count = CFArrayGetCount(v7);
      if (Count >= 1)
      {
        v10 = Count;
        for (i = 0; i != v10; ++i)
        {
          CFArrayGetValueAtIndex(v7, i);
          v12 = _SC_trimDomain();
          if (v12)
          {
            v13 = v12;
            CFArrayAppendValue(Mutable, v12);
            CFRelease(v13);
          }
        }
      }

      goto LABEL_17;
    }
  }

  else
  {
    CFArrayGetTypeID();
  }

  v14 = _SC_trimDomain();
  if (v14)
  {
    v15 = v14;
    CFArrayAppendValue(Mutable, v14);
    CFRelease(v15);
  }

LABEL_17:
  if (!MutableCopy)
  {
    goto LABEL_50;
  }

  v16 = CFArrayGetCount(MutableCopy);
  v17 = v16;
  if (v16 < 2)
  {
    if (v16 != 1)
    {
      goto LABEL_50;
    }

    v36 = 0;
    v37 = a1;
  }

  else
  {
    v37 = a1;
    MutableCopy = CFArrayCreateMutableCopy(0, 0, MutableCopy);
    v42.location = 0;
    v42.length = v17;
    CFArraySortValues(MutableCopy, v42, sub_100035894, 0);
    v36 = MutableCopy;
  }

  v18 = 0;
  v38 = 0;
  v19 = kSCPropNetDNSSupplementalMatchDomainsNoSearch;
  do
  {
    v39 = 0;
    v40 = 0;
    ValueAtIndex = CFArrayGetValueAtIndex(MutableCopy, v18);
    v21 = CFDictionaryGetValue(ValueAtIndex, kSCPropNetDNSOptions);
    v22 = CFStringGetTypeID();
    if (!v21 || CFGetTypeID(v21) != v22 || !CFEqual(v21, @"pdns") && CFStringFind(v21, @"interface=", 0).location == -1)
    {
      CFDictionaryGetValue(ValueAtIndex, kSCPropNetDNSDomainName);
      v23 = _SC_trimDomain();
      if (v23)
      {
        v24 = v23;
        v25 = CFDictionaryGetValue(ValueAtIndex, v19);
        v26 = CFNumberGetTypeID();
        if ((!v25 || CFGetTypeID(v25) != v26 || !CFNumberGetValue(v25, kCFNumberIntType, &v40) || !v40) && !CFStringHasSuffix(v24, @".in-addr.arpa") && !CFStringHasSuffix(v24, @".ip6.arpa"))
        {
          v43.length = CFArrayGetCount(Mutable);
          v43.location = 0;
          FirstIndexOfValue = CFArrayGetFirstIndexOfValue(Mutable, v43, v24);
          v28 = CFDictionaryGetValue(ValueAtIndex, kSCPropNetDNSSearchOrder);
          v29 = CFNumberGetTypeID();
          if (v28 && CFGetTypeID(v28) == v29 && CFNumberGetValue(v28, kCFNumberSInt32Type, &v39))
          {
            v30 = v39;
          }

          else
          {
            v30 = 200000;
            v39 = 200000;
          }

          if (v30 >= valuePtr)
          {
            if (FirstIndexOfValue == -1)
            {
              CFArrayAppendValue(Mutable, v24);
            }
          }

          else
          {
            if (FirstIndexOfValue == -1)
            {
              v32 = v38;
              v31 = Mutable;
            }

            else
            {
              v31 = Mutable;
              CFArrayRemoveValueAtIndex(Mutable, FirstIndexOfValue);
              v32 = v38 - (FirstIndexOfValue < v38);
            }

            v33 = v31;
            v34 = v32;
            CFArrayInsertValueAtIndex(v33, v32, v24);
            v38 = v34 + 1;
          }
        }

        CFRelease(v24);
      }
    }

    ++v18;
  }

  while (v17 != v18);
  a1 = v37;
  if (v36)
  {
    CFRelease(v36);
  }

LABEL_50:
  if (!CFArrayGetCount(Mutable))
  {
    CFRelease(Mutable);
    Mutable = 0;
  }

  CFDictionaryRemoveValue(a1, kSCPropNetDNSDomainName);
  CFDictionaryRemoveValue(a1, kSCPropNetDNSSearchDomains);
  return Mutable;
}

void sub_10001B160(__CFDictionary *a1, uint64_t a2, const __CFString *a3, uint64_t a4)
{
  if (a3)
  {
    v5 = " ";
  }

  else
  {
    v5 = "";
  }

  v6 = &stru_10007C038;
  if (a3)
  {
    v6 = a3;
  }

  v7 = CFStringCreateWithFormat(0, 0, @"%s:%s%@ %ld", a2, v5, v6, a4);
  CFDictionarySetValue(a1, @"__CONFIGURATION_ID__", v7);

  CFRelease(v7);
}

void sub_10001B220(const __CFArray *a1, CFDictionaryRef theDict)
{
  valuePtr = 0;
  v4 = CFDictionaryGetValue(theDict, kSCPropNetDNSSearchOrder);
  TypeID = CFNumberGetTypeID();
  if (!v4 || CFGetTypeID(v4) != TypeID || !CFNumberGetValue(v4, kCFNumberSInt32Type, &valuePtr))
  {
    v4 = 0;
    valuePtr = 0;
  }

  Count = CFArrayGetCount(a1);
  v25 = Count;
  if (Count < 1)
  {
LABEL_11:
    v12 = CFNumberCreate(0, kCFNumberCFIndexType, &v25);
    CFDictionarySetValue(theDict, @"__ORDER__", v12);
    CFRelease(v12);
    v13 = CFDictionaryGetValue(theDict, kSCPropInterfaceName);
    if (v13)
    {
      if (!CFEqual(v13, @"*"))
      {
        v23 = 0;
        BOOLean = 0;
        value = 0;
        if (_SC_cfstring_to_cstring())
        {
          v22 = sub_100013354(v26);
          if (v22)
          {
            if (CFDictionaryGetValueIfPresent(theDict, @"__FLAGS__", &value) && (v16 = value, v17 = CFNumberGetTypeID(), v16) && CFGetTypeID(v16) == v17 && CFNumberGetValue(value, kCFNumberSInt32Type, &v23) && (v23 & 0x1000) != 0 || CFDictionaryGetValueIfPresent(theDict, @"__SCOPED_QUERY__", &BOOLean) && (v18 = BOOLean, v19 = CFBooleanGetTypeID(), v18) && CFGetTypeID(v18) == v19 && CFBooleanGetValue(BOOLean))
            {
              value = CFNumberCreate(0, kCFNumberIntType, &v22);
              CFDictionarySetValue(theDict, @"__IF_INDEX__", value);
              CFRelease(value);
            }
          }
        }
      }
    }

    CFArrayAppendValue(a1, theDict);
  }

  else
  {
    v7 = Count;
    v8 = 0;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a1, v8);
      if (CFEqual(theDict, ValueAtIndex))
      {
        break;
      }

      if (v4)
      {
        MutableCopy = CFDictionaryCreateMutableCopy(0, 0, ValueAtIndex);
        CFDictionarySetValue(MutableCopy, kSCPropNetDNSSearchOrder, v4);
        v11 = CFEqual(theDict, MutableCopy);
        CFRelease(MutableCopy);
        if (v11)
        {
          v26[0] = 0;
          v14 = CFDictionaryGetValue(ValueAtIndex, kSCPropNetDNSSearchOrder);
          v15 = CFNumberGetTypeID();
          if (v14 && CFGetTypeID(v14) == v15 && CFNumberGetValue(v14, kCFNumberSInt32Type, v26) && valuePtr < v26[0])
          {
            CFArraySetValueAtIndex(a1, v8, theDict);
          }

          return;
        }
      }

      if (++v8 >= v7)
      {
        goto LABEL_11;
      }
    }
  }
}

void sub_10001B544(const __CFArray *a1, const __CFDictionary *a2)
{
  TypeID = CFDictionaryGetTypeID();
  if (a2)
  {
    if (CFGetTypeID(a2) == TypeID)
    {
      Count = CFDictionaryGetCount(a2);
      if (Count)
      {
        v6 = Count;
        if (Count < 33)
        {
          Typed = v29;
          v8 = v28;
        }

        else
        {
          Typed = CFAllocatorAllocateTyped();
          v8 = CFAllocatorAllocateTyped();
        }

        memset(v29, 0, sizeof(v29));
        memset(v28, 0, sizeof(v28));
        v24 = v8;
        v25 = Typed;
        CFDictionaryGetKeysAndValues(a2, Typed, v8);
        Mutable = CFSetCreateMutable(0, 0, &kCFTypeSetCallBacks);
        if (v6 >= 1)
        {
          v27 = kSCPropNetDNSServiceIdentifier;
          v9 = v24;
          v23 = a1;
          do
          {
            v10 = *Typed;
            Value = CFDictionaryGetValue(*v9, kSCEntNetDNS);
            v12 = CFDictionaryGetTypeID();
            if (Value)
            {
              if (CFGetTypeID(Value) == v12)
              {
                v13 = CFDictionaryGetValue(Value, v27);
                v14 = CFNumberGetTypeID();
                if (v13)
                {
                  if (CFGetTypeID(v13) == v14)
                  {
                    if (CFSetContainsValue(Mutable, v13))
                    {
                      sub_1000035EC();
                      _SC_syslog_os_log_mapping();
                      if (__SC_log_enabled())
                      {
                        v15 = _os_log_pack_size();
                        __chkstk_darwin(v15, v16, v17);
                        v18 = *__error();
                        *_os_log_pack_fill() = 0;
                        __SC_log_send();
                        a1 = v23;
                      }
                    }

                    else
                    {
                      CFSetSetValue(Mutable, v13);
                      MutableCopy = CFDictionaryCreateMutableCopy(0, 0, Value);
                      v20 = sub_10001ACC0(MutableCopy, 0);
                      if (v20)
                      {
                        v21 = v20;
                        CFDictionarySetValue(MutableCopy, kSCPropNetDNSSearchDomains, v20);
                        CFRelease(v21);
                      }

                      CFDictionaryRemoveValue(MutableCopy, kSCPropNetDNSSupplementalMatchDomains);
                      CFDictionaryRemoveValue(MutableCopy, kSCPropNetDNSSupplementalMatchOrders);
                      if (CFDictionaryContainsKey(MutableCopy, kSCPropInterfaceName))
                      {
                        CFDictionarySetValue(MutableCopy, @"__SCOPED_QUERY__", kCFBooleanTrue);
                        v22 = CFDictionaryCreateMutableCopy(0, 0, MutableCopy);
                        sub_10001C3C4(v22, 4102);
                        CFDictionaryRemoveValue(v22, v27);
                        sub_10001B160(v22, "Service", v10, 0);
                        sub_10001B220(a1, v22);
                        CFRelease(v22);
                      }

                      sub_10001C3C4(MutableCopy, 8198);
                      sub_10001B160(MutableCopy, "Service", v10, 0);
                      sub_10001B220(a1, MutableCopy);
                      CFRelease(MutableCopy);
                    }
                  }
                }
              }
            }

            ++Typed;
            ++v9;
            --v6;
          }

          while (v6);
        }

        CFRelease(Mutable);
        if (v25 != v29)
        {
          CFAllocatorDeallocate(kCFAllocatorDefault, v25);
          CFAllocatorDeallocate(kCFAllocatorDefault, v24);
        }
      }
    }
  }
}

uint64_t sub_10001B9A8(const __CFDictionary *a1, const __CFDictionary *a2)
{
  v4 = CFDictionaryGetValue(a1, kSCPropNetDNSDomainName);
  v5 = CFDictionaryGetValue(a2, kSCPropNetDNSDomainName);
  if (!v4)
  {
    return -1;
  }

  v6 = v5;
  if (!v5)
  {
    return 1;
  }

  if (a1 && (valuePtr = 0, value = 0, CFDictionaryGetValueIfPresent(a1, @"__FLAGS__", &value)) && value && CFNumberGetValue(value, kCFNumberSInt32Type, &valuePtr) && (valuePtr & 0x1000) != 0)
  {
    v8 = 1;
    v7 = 1;
    if (!a2)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v7 = 0;
    v8 = -1;
    if (!a2)
    {
      goto LABEL_17;
    }
  }

  valuePtr = 0;
  value = 0;
  if (CFDictionaryGetValueIfPresent(a2, @"__FLAGS__", &value) && value && CFNumberGetValue(value, kCFNumberSInt32Type, &valuePtr) && (valuePtr & 0x1000) != 0)
  {
    v9 = 1;
    goto LABEL_18;
  }

LABEL_17:
  v9 = 0;
LABEL_18:
  if (v7 == v9)
  {
    HasSuffix = CFStringHasSuffix(v4, @".arpa");
    if (HasSuffix == CFStringHasSuffix(v6, @".arpa"))
    {
      ArrayBySeparatingStrings = CFStringCreateArrayBySeparatingStrings(0, v4, @".");
      Count = CFArrayGetCount(ArrayBySeparatingStrings);
      v13 = CFStringCreateArrayBySeparatingStrings(0, v6, @".");
      v14 = CFArrayGetCount(v13);
      while (Count >= 1)
      {
        v15 = v14 - 1;
        if (v14 < 1)
        {
          break;
        }

        ValueAtIndex = CFArrayGetValueAtIndex(ArrayBySeparatingStrings, Count - 1);
        v17 = CFArrayGetValueAtIndex(v13, v15);
        v8 = CFStringCompare(ValueAtIndex, v17, 1uLL);
        --Count;
        v14 = v15;
        if (v8)
        {
          goto LABEL_33;
        }
      }

      if (Count <= v14)
      {
        if (Count < v14)
        {
          v8 = 1;
        }

        else
        {
          v8 = sub_100035894(a1, a2);
        }
      }

      else
      {
        v8 = -1;
      }

LABEL_33:
      if (ArrayBySeparatingStrings)
      {
        CFRelease(ArrayBySeparatingStrings);
      }

      if (v13)
      {
        CFRelease(v13);
      }
    }

    else if (HasSuffix)
    {
      return 1;
    }

    else
    {
      return -1;
    }
  }

  return v8;
}

uint64_t sub_10001BC18(const __CFDictionary *a1, const __CFDictionary *a2)
{
  v4 = kSCPropNetProxiesSupplementalMatchDomain;
  v5 = CFDictionaryGetValue(a1, kSCPropNetProxiesSupplementalMatchDomain);
  v6 = CFDictionaryGetValue(a2, v4);
  v7 = v6;
  if (v5)
  {
    if (v6)
    {
      HasSuffix = CFStringHasSuffix(v5, @".arpa");
      if (HasSuffix == CFStringHasSuffix(v7, @".arpa"))
      {
        ArrayBySeparatingStrings = CFStringCreateArrayBySeparatingStrings(0, v5, @".");
        Count = CFArrayGetCount(ArrayBySeparatingStrings);
        v11 = CFStringCreateArrayBySeparatingStrings(0, v7, @".");
        v12 = CFArrayGetCount(v11);
        while (Count >= 1)
        {
          v13 = v12 - 1;
          if (v12 < 1)
          {
            break;
          }

          ValueAtIndex = CFArrayGetValueAtIndex(ArrayBySeparatingStrings, Count - 1);
          v15 = CFArrayGetValueAtIndex(v11, v13);
          v16 = CFStringCompare(ValueAtIndex, v15, 1uLL);
          --Count;
          v12 = v13;
          if (v16)
          {
            goto LABEL_44;
          }
        }

        if (Count <= v12)
        {
          if (Count < v12)
          {
            v16 = kCFCompareGreaterThan;
          }

          else
          {
            v17 = 200000;
            v28 = 200000;
            valuePtr = 200000;
            v18 = CFDictionaryGetValue(a1, @"__MATCH_ORDER__");
            value = v18;
            TypeID = CFNumberGetTypeID();
            if (!v18 || CFGetTypeID(v18) != TypeID || !CFNumberGetValue(v18, kCFNumberSInt32Type, &valuePtr))
            {
              valuePtr = 200000;
            }

            v20 = CFDictionaryGetValue(a2, @"__MATCH_ORDER__");
            number = v20;
            v21 = CFNumberGetTypeID();
            if (v20 && CFGetTypeID(v20) == v21 && CFNumberGetValue(v20, kCFNumberSInt32Type, &v28))
            {
              v17 = v28;
            }

            else
            {
              v28 = 200000;
            }

            v22 = valuePtr >= v17;
            if (valuePtr != v17 || CFDictionaryGetValueIfPresent(a1, @"__ORDER__", &value) && CFDictionaryGetValueIfPresent(a2, @"__ORDER__", &number) && (v23 = value, v24 = CFNumberGetTypeID(), v23) && CFGetTypeID(v23) == v24 && (v25 = number, v26 = CFNumberGetTypeID(), v25) && CFGetTypeID(v25) == v26 && CFNumberGetValue(value, kCFNumberSInt32Type, &valuePtr) && CFNumberGetValue(number, kCFNumberSInt32Type, &v28) && (v22 = valuePtr >= v28, valuePtr != v28))
            {
              if (v22)
              {
                v16 = kCFCompareGreaterThan;
              }

              else
              {
                v16 = kCFCompareLessThan;
              }
            }

            else
            {
              v16 = kCFCompareEqualTo;
            }
          }
        }

        else
        {
          v16 = kCFCompareLessThan;
        }

LABEL_44:
        if (ArrayBySeparatingStrings)
        {
          CFRelease(ArrayBySeparatingStrings);
        }

        if (v11)
        {
          CFRelease(v11);
        }
      }

      else if (HasSuffix)
      {
        return 1;
      }

      else
      {
        return -1;
      }
    }

    else
    {
      return 1;
    }
  }

  else if (v6)
  {
    return -1;
  }

  else
  {
    return 0;
  }

  return v16;
}

_DWORD *sub_10001BF38()
{
  v0 = malloc_type_calloc(1uLL, 0x2000uLL, 0x2BB90EFDuLL);
  v0[11] = 20170629;
  *(v0 + 3) = mach_absolute_time();
  return v0;
}

uint64_t sub_10001BFB8(const __CFDictionary *a1)
{
  result = CFDictionaryGetValue(a1, kSCEntNetIPv4);
  if (result || (result = CFDictionaryGetValue(a1, kSCEntNetIPv6)) != 0)
  {
    result = sub_10001C324(result);
    if (result)
    {
      result = CFStringGetCString(result, buffer, 16, 0x8000100u);
      if (result)
      {
        result = nwi_state_get_ifstate();
        if (result)
        {
          v3 = *(result + 16);
          if ((v3 & 8) != 0)
          {
            return 1;
          }

          else
          {
            v4 = *(result + 32);
            if (v4 == 2)
            {
              v5 = 30;
            }

            else
            {
              v5 = 2;
            }

            if (v5 == v4)
            {
              return (v3 >> 3) & 1;
            }

            v6 = *(result + 24);
            if (v6)
            {
              v3 = *(result + 112 * v6 + 16);
              return (v3 >> 3) & 1;
            }

            return 0;
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_10001C0B8(uint64_t a1, const __CFDictionary *a2, _DWORD *a3)
{
  result = sub_10001BFB8(a2);
  if (!result)
  {
    result = sub_10001C1B8(a2, *a3);
    *a3 = result;
  }

  return result;
}

const __CFDictionary *sub_10001C12C(const __CFDictionary *a1, int a2)
{
  v2 = &kSCEntNetIPv6;
  if (a2 == 2)
  {
    v2 = &kSCEntNetIPv4;
  }

  result = CFDictionaryGetValue(a1, *v2);
  if (result)
  {
    result = sub_1000118D0(result);
    if (result)
    {
      v4 = *(result + 4);
      if ((v4 & 2) != 0)
      {
        return ((v4 & 1) == 0);
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_10001C1B8(CFDictionaryRef theDict, uint64_t a2)
{
  v2 = a2;
  if ((a2 & 2) == 0)
  {
    if (sub_10001C12C(theDict, 2))
    {
      v2 = v2 | 2;
    }

    else
    {
      v2 = v2;
    }
  }

  if ((v2 & 4) == 0)
  {
    if (sub_10001C12C(theDict, 30))
    {
      v2 = v2 | 4;
    }

    else
    {
      v2 = v2;
    }
  }

  if ((~v2 & 6) != 0)
  {
    Value = CFDictionaryGetValue(theDict, kSCEntNetCommCenter);
    TypeID = CFDictionaryGetTypeID();
    if (Value)
    {
      if (CFGetTypeID(Value) == TypeID)
      {
        v6 = CFDictionaryGetValue(Value, kSCPropNetCommCenterAvailable);
        v7 = CFBooleanGetTypeID();
        if (v6)
        {
          if (CFGetTypeID(v6) == v7)
          {
            if (CFBooleanGetValue(v6))
            {
              v8 = CFDictionaryGetValue(Value, @"AvailableProtocols");
              v9 = CFNumberGetTypeID();
              if (v8)
              {
                if (CFGetTypeID(v8) == v9)
                {
                  valuePtr = 0;
                  CFNumberGetValue(v8, kCFNumberIntType, &valuePtr);
                  return (2 * (valuePtr & 3)) | v2;
                }
              }
            }
          }
        }
      }
    }
  }

  return v2;
}

const void *sub_10001C324(const __CFDictionary *a1)
{
  if (!a1)
  {
    return 0;
  }

  Value = CFDictionaryGetValue(a1, @"Service");
  if (!Value)
  {
    return 0;
  }

  return CFDictionaryGetValue(Value, kSCPropInterfaceName);
}

void sub_10001C3C4(const __CFDictionary *a1, int a2)
{
  valuePtr = 0;
  value = 0;
  if (CFDictionaryGetValueIfPresent(a1, @"__FLAGS__", &value) && (v4 = value, TypeID = CFNumberGetTypeID(), v4) && CFGetTypeID(v4) == TypeID)
  {
    v6 = CFNumberGetValue(value, kCFNumberSInt32Type, &valuePtr);
    v7 = valuePtr;
    if (!v6)
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  valuePtr = v7 | a2;
  value = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  CFDictionarySetValue(a1, @"__FLAGS__", value);
  CFRelease(value);
}

void *sub_10001C4BC()
{

  return malloc_type_calloc(1uLL, 0x400uLL, 0xBE2F6EF6uLL);
}

void sub_10001C578(void **a1, char *__s)
{
  v4 = strlen(__s) + 1;

  sub_10001C5F8(a1, 0xFu, v4, __s);
}

void sub_10001C5F8(void **a1, unsigned int a2, unsigned int a3, const void *a4)
{
  v8 = *a1;
  v9 = bswap32(*(*a1 + 24));
  v10 = a3;
  if ((a3 & 3) != 0)
  {
    v11 = (a3 | 3) + 1;
  }

  else
  {
    v11 = a3;
  }

  v12 = v11 + 8;
  v13 = v11 + v9 + 108;
  if (v13 < 0x401)
  {
    v14 = v9;
  }

  else
  {
    v8 = malloc_type_realloc(*a1, v13, 0x71116D4CuLL);
    v14 = bswap32(v8[24]);
  }

  v8[24] = bswap32(v14 + v12);
  v15 = v8 + v9;
  *(v15 + 25) = bswap32(a2);
  *(v15 + 26) = bswap32(v12);
  memcpy(v8 + v9 + 108, a4, v10);
  if (v11 > a3)
  {
    bzero(v8 + v9 + v10 + 108, v11 + ~a3 + 1);
  }

  *a1 = v8;
}

void sub_10001C720(void **a1, unsigned int a2, unsigned int a3, const void *a4, int a5)
{
  v10 = *a1;
  v11 = bswap32(*(*a1 + 12));
  v12 = a3;
  if ((a3 & 3) != 0)
  {
    v13 = (a3 | 3) + 1;
  }

  else
  {
    v13 = a3;
  }

  v14 = v13 + 8;
  v15 = v13 + v11 + 64;
  if (v15 <= 0x2000)
  {
    v16 = v11;
  }

  else
  {
    v10 = malloc_type_realloc(*a1, v15, 0x7936BF17uLL);
    v16 = bswap32(v10[12]);
  }

  v17 = bswap32(bswap32(v10[13]) + a5);
  v10[12] = bswap32(v16 + v14);
  v10[13] = v17;
  v18 = v10 + v11;
  *(v18 + 14) = bswap32(a2);
  *(v18 + 15) = bswap32(v14);
  memcpy(v10 + v11 + 64, a4, v12);
  if (v13 > a3)
  {
    bzero(v10 + v11 + v12 + 64, v13 + ~a3 + 1);
  }

  *a1 = v10;
}

void sub_10001C85C(void **a1, _DWORD *a2)
{
  v4 = *a1;
  sub_10001C950(a2);
  v5 = a2[2];
  v6 = a2[6];
  v7 = a2[9];
  v8 = a2[17];
  if ((v8 & 0x200000) != 0)
  {
    v9 = 3;
  }

  else
  {
    v9 = 1;
  }

  v10 = (v8 & 0x100000) == 0;
  if ((v8 & 0x100000) != 0)
  {
    v11 = 12;
  }

  else
  {
    v11 = (v8 & 0x200000u) >> 16;
  }

  if (v10)
  {
    v12 = v9;
  }

  else
  {
    v12 = 2;
  }

  *&v4[v11] = bswap32(bswap32(*&v4[v11]) + 1);
  v13 = bswap32(a2[24]) + 100;
  v14 = 8 * (bswap32(v5) + bswap32(v6) + bswap32(v7)) + 8;

  sub_10001C720(a1, v12, v13, a2, v14);
}

void sub_10001C950(_DWORD *a1)
{
  if (!a1[2])
  {
    return;
  }

  Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  v3 = a1[16];
  if (v3 && if_indextoname(bswap32(v3), cStr))
  {
    v4 = CFStringCreateWithCString(0, cStr, 0x600u);
    CFDictionarySetValue(Mutable, @"interface", v4);
    CFRelease(v4);
  }

  v5 = bswap32(a1[24]);
  if (v5 < 8)
  {
    v8 = 2;
    goto LABEL_26;
  }

  v6 = 0;
  v7 = (a1 + 25);
  v8 = 2;
  while (1)
  {
    v9 = *(v7 + 1);
    if (*v7 != 184549376)
    {
      goto LABEL_17;
    }

    *cStr = 0;
    v10 = CFDataCreate(0, v7 + 8, v7[8]);
    CFDictionarySetValue(Mutable, @"remote-address", v10);
    CFRelease(v10);
    v11 = SCNetworkReachabilityCreateWithOptions();
    if (!v11)
    {
      break;
    }

    v12 = v11;
    Flags = SCNetworkReachabilityGetFlags(v11, cStr);
    CFRelease(v12);
    if (!Flags)
    {
      goto LABEL_24;
    }

    v14 = *cStr;
    if (!v6)
    {
      goto LABEL_29;
    }

    v15 = (v8 & 2) == 0;
    if ((cStr[0] & 4) == 0)
    {
      v15 = (v8 & 6) != 2;
    }

    if ((cStr[0] & 2) != 0 && v15)
    {
LABEL_29:
      v8 = *cStr;
      if ((cStr[0] & 6) == 2)
      {
        goto LABEL_25;
      }
    }

    ++v6;
LABEL_17:
    v16 = bswap32(v9);
    v7 += v16;
    v5 -= v16;
    if (v5 <= 7)
    {
      goto LABEL_26;
    }
  }

  CFDictionaryRemoveValue(Mutable, @"interface");
  v17 = SCNetworkReachabilityCreateWithOptions();
  if (v17)
  {
    CFRelease(v17);
    v14 = 0;
    goto LABEL_25;
  }

  sub_1000035EC();
  _SC_syslog_os_log_mapping();
  if (__SC_log_enabled())
  {
    v18 = _os_log_pack_size();
    __chkstk_darwin(v18, v19, v20);
    v21 = *__error();
    v22 = _os_log_pack_fill();
    *v22 = 138412290;
    *(v22 + 4) = Mutable;
    __SC_log_send();
  }

LABEL_24:
  v14 = v8;
LABEL_25:
  v8 = v14;
LABEL_26:
  CFRelease(Mutable);
  a1[18] = bswap32(v8);
}

void sub_10001CC70(void **a1, char *__s)
{
  v4 = strlen(__s) + 1;

  sub_10001C5F8(a1, 0xAu, v4, __s);
}

void sub_10001CD98(void **a1, char *__s)
{
  v4 = strlen(__s) + 1;

  sub_10001C5F8(a1, 0xEu, v4, __s);
}

DIR *sub_10001CE18(void **a1)
{
  result = opendir("/Library/Preferences/SystemConfiguration/resolver");
  if (result)
  {
    v3 = result;
    v6 = 0;
    while (1)
    {
      v4 = readdir(v3);
      if (!v4)
      {
        break;
      }

      if (v4->d_name[0] != 46 || v4->d_name[1] && (v4->d_name[1] != 46 || v4->d_name[2]))
      {
        v5 = sub_100036F68(v4->d_name);
        v6 = v5;
        if (v5)
        {
          sub_10001C85C(a1, v5);
          sub_10001CC10(&v6);
        }
      }
    }

    return closedir(v3);
  }

  return result;
}

void sub_10001CF38(uint64_t *a1, unsigned __int8 *a2, size_t a3)
{
  bzero(a2, a3);
  if (a1)
  {
    v6 = *a1;
    if (v6)
    {
      memset(&c, 0, sizeof(c));
      v7 = *(v6 + 24);
      if (a3 <= 0x1F)
      {
        v8 = &v9;
      }

      else
      {
        v8 = a2;
      }

      *(v6 + 24) = 0;
      CC_SHA256_Init(&c);
      CC_SHA256_Update(&c, v6, bswap32(*(v6 + 48)) + 56);
      CC_SHA256_Final(v8, &c);
      if (v8 != a2)
      {
        memcpy(a2, v8, a3);
      }

      *(v6 + 24) = v7;
    }
  }
}

__CFDictionary *sub_10001D02C(const __CFDictionary *a1, const __CFDictionary *a2, const __CFArray *a3, const void *a4)
{
  Mutable = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
  TypeID = CFDictionaryGetTypeID();
  v133 = a3;
  if (a2)
  {
    if (CFGetTypeID(a2) == TypeID)
    {
      Count = CFDictionaryGetCount(a2);
      if (Count)
      {
        v10 = Count;
        v120 = a1;
        if (Count < 33)
        {
          p_valuePtr = &valuePtr;
          values = v140;
        }

        else
        {
          p_valuePtr = CFAllocatorAllocateTyped();
          values = CFAllocatorAllocateTyped();
        }

        v12 = CFArrayGetTypeID();
        if (a3 && CFGetTypeID(a3) == v12)
        {
          range = CFArrayGetCount(a3);
        }

        else
        {
          range = 0;
        }

        v13 = values;
        v155 = 0u;
        v156 = 0u;
        v153 = 0u;
        v154 = 0u;
        v151 = 0u;
        v152 = 0u;
        v149 = 0u;
        v150 = 0u;
        v147 = 0u;
        v148 = 0u;
        v145 = 0u;
        v146 = 0u;
        v143 = 0u;
        v144 = 0u;
        valuePtr = 0u;
        v142 = 0u;
        memset(v140, 0, sizeof(v140));
        CFDictionaryGetKeysAndValues(a2, p_valuePtr, values);
        if (v10 >= 1)
        {
          v14 = 0;
          v127 = kSCPropNetProxiesSupplementalMatchDomains;
          v122 = kSCPropNetProxiesSupplementalMatchOrders;
          v121 = kSCPropNetProxiesSupplementalMatchDomain;
          v123 = p_valuePtr;
          v124 = a2;
          while (1)
          {
            v15 = v13[v14];
            v16 = CFDictionaryGetTypeID();
            if (v15)
            {
              if (CFGetTypeID(v15) == v16)
              {
                MutableCopy = CFDictionaryGetValue(v15, kSCEntNetProxies);
                v18 = CFDictionaryGetTypeID();
                if (MutableCopy)
                {
                  if (CFGetTypeID(MutableCopy) == v18)
                  {
                    break;
                  }
                }
              }
            }

LABEL_61:
            if (++v14 == v10)
            {
              goto LABEL_65;
            }
          }

          if (G_supplemental_proxies_follow_dns && CFBooleanGetValue(G_supplemental_proxies_follow_dns) && (v138 = 0, value = 0, v137 = 0, !CFDictionaryContainsKey(MutableCopy, v127)) && CFDictionaryGetValueIfPresent(v15, kSCEntNetDNS, &value) && (v33 = value, v34 = CFDictionaryGetTypeID(), v33) && CFGetTypeID(v33) == v34 && CFDictionaryGetValueIfPresent(value, kSCPropNetDNSSupplementalMatchDomains, &v138) && (v35 = v138, v36 = CFArrayGetTypeID(), v35) && CFGetTypeID(v35) == v36)
          {
            MutableCopy = CFDictionaryCreateMutableCopy(0, 0, MutableCopy);
            CFDictionarySetValue(MutableCopy, v127, v138);
            if (CFDictionaryGetValueIfPresent(value, kSCPropNetDNSSupplementalMatchOrders, &v137) && (v37 = v137, v38 = CFArrayGetTypeID(), v37) && CFGetTypeID(v37) == v38)
            {
              CFDictionarySetValue(MutableCopy, v122, v137);
            }

            else
            {
              CFDictionaryRemoveValue(MutableCopy, v122);
            }

            v19 = MutableCopy;
          }

          else
          {
            v19 = 0;
          }

          v20.length = range;
          v21 = 200 * v14 + 100000;
          cf = v19;
          if (range >= 1)
          {
            v20.location = 0;
            v22 = CFArrayContainsValue(a3, v20, p_valuePtr[v14]);
            v23 = 200 * v10;
            if (v22)
            {
              v23 = 0;
            }

            v21 += v23;
          }

          LODWORD(value) = v21;
          v24 = CFDictionaryGetValue(MutableCopy, v127);
          v25 = CFArrayGetTypeID();
          v13 = values;
          if (!v24)
          {
            goto LABEL_59;
          }

          if (CFGetTypeID(v24) != v25)
          {
            goto LABEL_59;
          }

          v26 = CFArrayGetCount(v24);
          if (!v26)
          {
            goto LABEL_59;
          }

          v27 = v26;
          v28 = CFDictionaryGetValue(MutableCopy, v122);
          theArray = v28;
          if (!v28)
          {
            if (v27 >= 1)
            {
              goto LABEL_45;
            }

            goto LABEL_59;
          }

          v29 = v28;
          v30 = CFArrayGetTypeID();
          v31 = CFGetTypeID(v29) == v30;
          v13 = values;
          if (!v31 || (v32 = CFArrayGetCount(theArray), v27 < 1) || v27 != v32)
          {
LABEL_59:
            p_valuePtr = v123;
            a2 = v124;
            a3 = v133;
            if (cf)
            {
              CFRelease(cf);
            }

            goto LABEL_61;
          }

LABEL_45:
          v39 = 0;
          while (1)
          {
            ValueAtIndex = CFArrayGetValueAtIndex(v24, v39);
            v41 = CFStringGetTypeID();
            if (!ValueAtIndex || CFGetTypeID(ValueAtIndex) != v41)
            {
              goto LABEL_58;
            }

            v42 = CFDictionaryCreateMutableCopy(0, 0, MutableCopy);
            v43 = _SC_trimDomain();
            if (v43)
            {
              v44 = v43;
              CFDictionarySetValue(v42, v121, v43);
              CFRelease(v44);
            }

            else
            {
              CFDictionaryRemoveValue(v42, v121);
            }

            if (!theArray)
            {
              break;
            }

            v45 = CFArrayGetValueAtIndex(theArray, v39);
            v46 = CFNumberGetTypeID();
            if (!v45 || CFGetTypeID(v45) != v46)
            {
              goto LABEL_56;
            }

            CFDictionarySetValue(v42, @"__MATCH_ORDER__", v45);
LABEL_57:
            v13 = values;
            CFDictionaryRemoveValue(v42, v127);
            CFDictionaryRemoveValue(v42, v122);
            CFDictionaryRemoveValue(v42, kSCPropInterfaceName);
            sub_10001DF9C(Mutable, v42);
            CFRelease(v42);
LABEL_58:
            if (v27 == ++v39)
            {
              goto LABEL_59;
            }
          }

          CFNumberGetTypeID();
LABEL_56:
          v47 = CFNumberCreate(0, kCFNumberIntType, &value);
          CFDictionarySetValue(v42, @"__MATCH_ORDER__", v47);
          CFRelease(v47);
          LODWORD(value) = value + 1;
          goto LABEL_57;
        }

LABEL_65:
        a1 = v120;
        if (p_valuePtr != &valuePtr)
        {
          CFAllocatorDeallocate(0, p_valuePtr);
          CFAllocatorDeallocate(0, v13);
        }
      }
    }
  }

  LODWORD(valuePtr) = 200000;
  if (a1)
  {
    v48 = CFDictionaryCreateMutableCopy(0, 0, a1);
    CFDictionaryRemoveValue(v48, kSCPropInterfaceName);
    v49 = CFDictionaryGetValue(v48, @"__MATCH_ORDER__");
    v50 = CFNumberGetTypeID();
    if (v49 && CFGetTypeID(v49) == v50 && CFNumberGetValue(v49, kCFNumberSInt32Type, &valuePtr))
    {
      v51 = 0;
      goto LABEL_74;
    }
  }

  else
  {
    v48 = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    CFNumberGetTypeID();
  }

  LODWORD(valuePtr) = 200000;
  v52 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  CFDictionarySetValue(v48, @"__MATCH_ORDER__", v52);
  CFRelease(v52);
  v51 = 1;
LABEL_74:
  sub_10001DF9C(Mutable, v48);
  CFRelease(v48);
  v53 = CFArrayGetCount(Mutable);
  v54 = v53;
  if (v53 < 2)
  {
    if (v53 != 1)
    {
      goto LABEL_83;
    }
  }

  else
  {
    v157.location = 0;
    v157.length = v53;
    CFArraySortValues(Mutable, v157, sub_10001BC18, 0);
  }

  v55 = kSCPropNetProxiesSupplementalMatchDomain;
  v56 = v54 - 1;
  do
  {
    v57 = CFArrayGetValueAtIndex(Mutable, v56);
    v58 = v57;
    if (v56 && !CFDictionaryContainsKey(v57, v55))
    {
      CFArrayRemoveValueAtIndex(Mutable, v56);
      --v54;
    }

    else
    {
      v59 = CFDictionaryCreateMutableCopy(0, 0, v58);
      CFDictionaryRemoveValue(v59, @"__MATCH_ORDER__");
      CFDictionaryRemoveValue(v59, @"__ORDER__");
      CFArraySetValueAtIndex(Mutable, v56, v59);
      CFRelease(v59);
    }

    v60 = v56-- + 1;
  }

  while (v60 > 1);
LABEL_83:
  v61 = CFArrayGetValueAtIndex(Mutable, 0);
  v62 = CFDictionaryCreateMutableCopy(0, 0, v61);
  if (v54 > 1)
  {
    v63 = v51;
  }

  else
  {
    v63 = 0;
  }

  if (v63 == 1)
  {
    v64 = CFArrayGetValueAtIndex(Mutable, 1);
    if (CFDictionaryContainsKey(v64, kSCPropNetProxiesSupplementalMatchDomain))
    {
      CFDictionaryRemoveValue(v62, @"__MATCH_ORDER__");
    }
  }

  CFArraySetValueAtIndex(Mutable, 0, v62);
  CFRelease(v62);
  if (v54 < 1)
  {
    v67 = 0;
    goto LABEL_162;
  }

  v65 = CFArrayGetValueAtIndex(Mutable, 0);
  v66 = kSCPropNetProxiesSupplementalMatchDomain;
  if (CFDictionaryContainsKey(v65, kSCPropNetProxiesSupplementalMatchDomain))
  {
    v67 = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  }

  else
  {
    v67 = CFDictionaryCreateMutableCopy(0, 0, v65);
    CFDictionaryRemoveValue(v67, kSCPropNetProxiesSupplementalMatchDomains);
    CFDictionaryRemoveValue(v67, kSCPropNetProxiesSupplementalMatchOrders);
  }

  v68 = CFDictionaryGetTypeID();
  if (!a2 || CFGetTypeID(a2) != v68 || (v69 = CFDictionaryGetCount(a2)) == 0)
  {
    v74 = 0;
    goto LABEL_102;
  }

  v70 = v69;
  v71 = CFArrayGetTypeID();
  if (!v133 || CFGetTypeID(v133) != v71)
  {
    v72 = 0;
    goto LABEL_164;
  }

  v72 = CFArrayGetCount(v133);
  if (v72 < 1)
  {
LABEL_164:
    v73 = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
    goto LABEL_165;
  }

  v73 = CFArrayCreateMutableCopy(0, 0, v133);
LABEL_165:
  v74 = v73;
  v155 = 0u;
  v156 = 0u;
  v153 = 0u;
  v154 = 0u;
  v151 = 0u;
  v152 = 0u;
  v149 = 0u;
  v150 = 0u;
  v147 = 0u;
  v148 = 0u;
  v145 = 0u;
  v146 = 0u;
  v143 = 0u;
  v144 = 0u;
  valuePtr = 0u;
  v142 = 0u;
  if (v70 >= 33)
  {
    Typed = CFAllocatorAllocateTyped();
    CFDictionaryGetKeysAndValues(a2, Typed, 0);
    goto LABEL_168;
  }

  Typed = &valuePtr;
  CFDictionaryGetKeysAndValues(a2, &valuePtr, 0);
  if (v70 >= 1)
  {
LABEL_168:
    for (i = 0; i != v70; ++i)
    {
      v118 = Typed[i];
      v158.location = 0;
      v158.length = v72;
      if (!CFArrayContainsValue(v74, v158, v118))
      {
        CFArrayAppendValue(v74, v118);
        ++v72;
      }
    }

    if (Typed != &valuePtr)
    {
      CFAllocatorDeallocate(0, Typed);
    }
  }

LABEL_102:
  v75 = CFArrayGetTypeID();
  if (Mutable)
  {
    if (CFGetTypeID(Mutable) == v75)
    {
      v76 = CFArrayGetCount(Mutable);
      if (v76 >= 1)
      {
        v77 = v76;
        v78 = a2;
        v79 = 0;
        for (j = 0; j != v77; ++j)
        {
          v81 = CFArrayGetValueAtIndex(Mutable, j);
          if (v81)
          {
            v82 = v81;
            if (CFDictionaryContainsKey(v81, v66))
            {
              if (!v79)
              {
                v79 = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
              }

              CFArrayAppendValue(v79, v82);
            }
          }
        }

        a2 = v78;
        if (v79)
        {
          CFDictionarySetValue(v67, kSCPropNetProxiesSupplemental, v79);
          CFRelease(v79);
        }
      }
    }
  }

  v83 = CFArrayGetTypeID();
  if (v74)
  {
    if (CFGetTypeID(v74) == v83)
    {
      v84 = CFArrayGetCount(v74);
      if (v84 >= 1)
      {
        v85 = v84;
        v86 = 0;
        v87 = 0;
        valuesa = kSCPropNetProxiesSupplementalMatchOrders;
        key = kSCPropNetProxiesSupplementalMatchDomains;
        do
        {
          v88 = CFArrayGetValueAtIndex(v74, v86);
          v89 = CFDictionaryGetValue(a2, v88);
          v90 = CFDictionaryGetTypeID();
          if (v89)
          {
            if (CFGetTypeID(v89) == v90)
            {
              v91 = CFDictionaryGetValue(v89, kSCEntNetProxies);
              v92 = CFDictionaryGetTypeID();
              if (v91)
              {
                if (CFGetTypeID(v91) == v92)
                {
                  v93 = a2;
                  v94 = CFDictionaryGetValue(v91, kSCPropInterfaceName);
                  if (v94)
                  {
                    v95 = v94;
                    if ((!v87 || !CFDictionaryContainsKey(v87, v94)) && _SC_cfstring_to_cstring() && sub_100013354(&valuePtr))
                    {
                      CFRetain(v95);
                      v96 = CFDictionaryCreateMutableCopy(0, 0, v91);
                      CFDictionaryRemoveValue(v96, key);
                      CFDictionaryRemoveValue(v96, valuesa);
                      CFDictionaryRemoveValue(v96, kSCPropInterfaceName);
                      if (!v87)
                      {
                        v87 = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
                      }

                      CFDictionarySetValue(v87, v95, v96);
                      CFRelease(v96);
                      CFRelease(v95);
                    }
                  }

                  a2 = v93;
                }
              }
            }
          }

          ++v86;
        }

        while (v85 != v86);
        if (v87)
        {
          CFDictionarySetValue(v67, kSCPropNetProxiesScoped, v87);
          CFRelease(v87);
        }
      }
    }
  }

  v97 = CFDictionaryGetTypeID();
  if (a4 && CFGetTypeID(a4) == v97)
  {
    v98 = CFArrayGetTypeID();
    if (!v74)
    {
      goto LABEL_162;
    }

    if (CFGetTypeID(v74) != v98)
    {
      goto LABEL_161;
    }

    v99 = CFArrayGetCount(v74);
    if (v99 < 1)
    {
      goto LABEL_161;
    }

    v100 = v99;
    v101 = 0;
    v134 = 0;
    v136 = kSCPropNetProxiesServiceSpecific;
    valuesb = kSCPropNetProxiesSupplementalMatchDomains;
    v128 = kSCPropNetProxiesSupplementalMatchOrders;
    do
    {
      LODWORD(valuePtr) = 0;
      v102 = CFArrayGetValueAtIndex(v74, v101);
      v103 = CFDictionaryGetValue(a2, v102);
      v104 = CFDictionaryGetTypeID();
      if (v103 && CFGetTypeID(v103) == v104)
      {
        v105 = a2;
        v106 = CFDictionaryGetValue(v103, kSCEntNetProxies);
        v107 = CFDictionaryGetTypeID();
        if (v106)
        {
          if (CFGetTypeID(v106) == v107)
          {
            v108 = CFDictionaryGetValue(v106, v136);
            v109 = CFNumberGetTypeID();
            if (v108)
            {
              if (CFGetTypeID(v108) == v109)
              {
                if (CFNumberGetValue(v108, kCFNumberIntType, &valuePtr))
                {
                  if (valuePtr)
                  {
                    v110 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%d", valuePtr);
                    if (v110)
                    {
                      v111 = v110;
                      v112 = v134;
                      if (v134 && CFDictionaryContainsKey(v134, v110))
                      {
                        v113 = v111;
                      }

                      else
                      {
                        v114 = CFDictionaryCreateMutableCopy(0, 0, v106);
                        CFDictionaryRemoveValue(v114, valuesb);
                        CFDictionaryRemoveValue(v114, v128);
                        CFDictionaryRemoveValue(v114, v136);
                        if (!v134)
                        {
                          v112 = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
                        }

                        v134 = v112;
                        CFDictionarySetValue(v112, v111, v114);
                        CFRelease(v111);
                        v113 = v114;
                      }

                      CFRelease(v113);
                    }
                  }
                }
              }
            }
          }
        }

        a2 = v105;
      }

      ++v101;
    }

    while (v100 != v101);
    if (v134)
    {
      CFDictionarySetValue(v67, kSCPropNetProxiesServices, v134);
      CFRelease(v134);
    }
  }

  if (v74)
  {
LABEL_161:
    CFRelease(v74);
  }

LABEL_162:
  CFRelease(Mutable);
  return v67;
}

void sub_10001DF9C(const __CFArray *a1, __CFDictionary *a2)
{
  Count = CFArrayGetCount(a1);
  v9 = Count;
  if (Count < 1)
  {
LABEL_5:
    v8 = CFNumberCreate(0, kCFNumberCFIndexType, &v9);
    CFDictionarySetValue(a2, @"__ORDER__", v8);
    CFRelease(v8);
    CFArrayAppendValue(a1, a2);
  }

  else
  {
    v5 = Count;
    v6 = 0;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a1, v6);
      if (CFEqual(a2, ValueAtIndex))
      {
        break;
      }

      if (v5 == ++v6)
      {
        goto LABEL_5;
      }
    }
  }
}

CFIndex sub_10001E078(const __CFArray **a1, const __SCDynamicStore *a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  if (!CFArrayGetCount(*a1))
  {
    v3 = 0;
  }

  if (!CFArrayGetCount(v4))
  {
    v4 = 0;
  }

  result = CFDictionaryGetCount(v5);
  if (!result)
  {
    v5 = 0;
  }

  if (v3)
  {
    v7 = 0;
  }

  else
  {
    v7 = v5 == 0;
  }

  if (!v7 || v4 != 0)
  {
    if (byte_1000819B4 == 1)
    {
      if (v5)
      {
        if (!qword_100081998)
        {
          qword_100081998 = os_log_create("com.apple.SystemConfiguration", "IPMonitor");
        }

        _SC_syslog_os_log_mapping();
        if (__SC_log_enabled())
        {
          v9 = _os_log_pack_size();
          __chkstk_darwin(v9, v10, v11);
          v12 = *__error();
          v13 = _os_log_pack_fill();
          *v13 = 138412290;
          *(v13 + 4) = v5;
          __SC_log_send();
        }
      }

      if (v4)
      {
        if (!qword_100081998)
        {
          qword_100081998 = os_log_create("com.apple.SystemConfiguration", "IPMonitor");
        }

        _SC_syslog_os_log_mapping();
        if (__SC_log_enabled())
        {
          v14 = _os_log_pack_size();
          __chkstk_darwin(v14, v15, v16);
          v17 = *__error();
          v18 = _os_log_pack_fill();
          *v18 = 138412290;
          *(v18 + 4) = v4;
          __SC_log_send();
        }
      }

      if (v3)
      {
        if (!qword_100081998)
        {
          qword_100081998 = os_log_create("com.apple.SystemConfiguration", "IPMonitor");
        }

        _SC_syslog_os_log_mapping();
        if (__SC_log_enabled())
        {
          v19 = _os_log_pack_size();
          __chkstk_darwin(v19, v20, v21);
          v22 = *__error();
          v23 = _os_log_pack_fill();
          *v23 = 138412290;
          *(v23 + 4) = v3;
          __SC_log_send();
        }
      }
    }

    return SCDynamicStoreSetMultiple(a2, v5, v4, v3);
  }

  return result;
}

void sub_10001E3C0()
{
  if (qword_100081950 != -1)
  {
    sub_100067D10();
  }

  v0 = qword_100081958;

  dispatch_sync(v0, &stru_10007A7E0);
}

void sub_10001E440(id a1)
{
  if (qword_100081940)
  {
    if_freenameindex(qword_100081940);
    qword_100081940 = 0;
  }
}

void sub_10001E4A4()
{
  if (qword_100081938)
  {
    sub_1000035EC();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v0 = _os_log_pack_size();
      __chkstk_darwin(v0, v1, v2);
      v3 = *__error();
      v4 = _os_log_pack_fill();
      Count = CFDictionaryGetCount(qword_100081938);
      *v4 = 136315394;
      *(v4 + 4) = "effective_ifindex_free";
      *(v4 + 12) = 2048;
      *(v4 + 14) = Count;
      __SC_log_send();
    }

    if (qword_100081938)
    {
      CFRelease(qword_100081938);
      qword_100081938 = 0;
    }
  }
}

uint64_t sub_10001E5EC()
{
  result = dword_1000815D8;
  if (dword_1000815D8 != -1)
  {
    result = close(dword_1000815D8);
    dword_1000815D8 = -1;
  }

  return result;
}

uint64_t sub_10001E658()
{
  result = dword_1000815DC;
  if (dword_1000815DC != -1)
  {
    result = close(dword_1000815DC);
    dword_1000815DC = -1;
  }

  return result;
}

__CFArray *sub_10001E6C4(const __CFString *a1)
{
  cf = 0;
  Mutable = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
  v3 = CFDataCreateMutable(0, 32);
  CFDataSetLength(v3, 32);
  if (sub_10001E814(a1, v3, &cf))
  {
    CFArrayAppendValue(Mutable, v3);
    v4 = CFArrayCreate(0, 0, 0, &kCFTypeArrayCallBacks);
    CFArrayAppendValue(Mutable, v4);
    CFRelease(v4);
    context[0] = Mutable;
    context[1] = v3;
    v5 = qword_1000816C0;
    v6 = CFGetAllocator(qword_1000816C0);
    Copy = CFDictionaryCreateCopy(v6, v5);
    CFDictionaryApplyFunction(Copy, sub_10001EBB0, context);
    CFRelease(Copy);
    CFRelease(v3);
  }

  else
  {
    CFRelease(cf);
    CFRelease(v3);
    CFRelease(Mutable);
    return 0;
  }

  return Mutable;
}

uint64_t sub_10001E814(const __CFString *a1, const __CFData *a2, void *a3)
{
  v5 = a1;
  v21 = 0;
  if (!CFStringGetLength(a1))
  {
    sub_100001D48();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      _os_log_pack_size();
      __chkstk_darwin();
      v6 = *__error();
      *_os_log_pack_fill() = 0;
      __SC_log_send();
    }
  }

  HasPrefix = CFStringHasPrefix(v5, @"^");
  if (!CFStringHasSuffix(v5, @"$") || CFStringHasSuffix(v5, @"\\$"))
  {
    v8 = "";
    if (!HasPrefix)
    {
      v8 = "^";
    }

    v9 = "$";
    goto LABEL_9;
  }

  if (!HasPrefix)
  {
    v9 = "";
    v8 = "^";
LABEL_9:
    v5 = CFStringCreateWithFormat(0, 0, @"%s%@%s", v8, v5, v9);
    v10 = 1;
    goto LABEL_10;
  }

  v10 = 0;
LABEL_10:
  v24.length = CFStringGetLength(v5);
  v24.location = 0;
  if (CFStringGetBytes(v5, v24, 0x600u, 0, 0, 0, 0, &v21) <= 0)
  {
    sub_100001D48();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      _os_log_pack_size();
      __chkstk_darwin();
      v13 = *__error();
      v14 = _os_log_pack_fill();
      *v14 = 138412290;
      *(v14 + 4) = v5;
      __SC_log_send();
    }

    v21 = 256;
  }

  else
  {
    v11 = v21++;
    if (v11 >= 256)
    {
      Typed = CFAllocatorAllocateTyped();
      goto LABEL_17;
    }
  }

  Typed = v23;
LABEL_17:
  v15 = _SC_cfstring_to_cstring();
  if (v10)
  {
    CFRelease(v5);
  }

  if (v15)
  {
    BytePtr = CFDataGetBytePtr(a2);
    v17 = 1;
    v18 = regcomp(BytePtr, Typed, 1);
    if (!v18)
    {
      goto LABEL_24;
    }

    regerror(v18, BytePtr, v22, 0x100uLL);
    v19 = CFStringCreateWithCString(0, v22, 0x600u);
  }

  else
  {
    v19 = CFRetain(@"could not convert pattern to regex string");
  }

  v17 = 0;
  *a3 = v19;
LABEL_24:
  if (Typed != v23)
  {
    CFAllocatorDeallocate(0, Typed);
  }

  return v17;
}

void sub_10001EBB0(const __CFString *a1, CFDictionaryRef theDict, __CFArray **a3)
{
  v4 = *a3;
  v5 = a3[1];
  if (CFDictionaryContainsKey(theDict, @"data") && sub_10001EC7C(a1, v5))
  {

    CFArrayAppendValue(v4, a1);
  }
}

uint64_t sub_10001EC7C(const __CFString *a1, const __CFData *a2)
{
  Length = CFStringGetLength(a1);
  if (CFStringGetMaximumSizeForEncoding(Length, 0x600u) < 256)
  {
    Typed = v13;
  }

  else
  {
    Typed = CFAllocatorAllocateTyped();
  }

  if (_SC_cfstring_to_cstring())
  {
    BytePtr = CFDataGetBytePtr(a2);
    v6 = regexec(BytePtr, Typed, 0, 0, 0);
    if (v6 != 1)
    {
      if (!v6)
      {
        v7 = 1;
        goto LABEL_11;
      }

      regerror(v6, BytePtr, v12, 0x100uLL);
      sub_100001D48();
      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        _os_log_pack_size();
        __chkstk_darwin();
        v10 = *__error();
        v11 = _os_log_pack_fill();
        *v11 = 136315138;
        *(v11 + 4) = v12;
        __SC_log_send();
      }
    }
  }

  else
  {
    sub_100001D48();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      _os_log_pack_size();
      __chkstk_darwin();
      v8 = *__error();
      *_os_log_pack_fill() = 0;
      __SC_log_send();
    }
  }

  v7 = 0;
LABEL_11:
  if (Typed != v13)
  {
    CFAllocatorDeallocate(0, Typed);
  }

  return v7;
}

uint64_t sub_10001EF04(uint64_t a1)
{
  if (!sub_10001F108())
  {
    return 0;
  }

  v2 = *(a1 + 128);
  if (v2)
  {
    return CFBooleanGetValue(v2);
  }

  *values = off_100079E68;
  v16 = @"com.apple.private.attribution.explicitly-assumed-identities";
  v4 = qword_1000817A8;
  if (!qword_1000817A8)
  {
    v4 = CFArrayCreate(0, values, 3, &kCFTypeArrayCallBacks);
    qword_1000817A8 = v4;
  }

  v5 = sub_100023968(a1, v4);
  if (v5)
  {
    v6 = v5;
    v3 = sub_10001F1B8();
    CFRelease(v6);
  }

  else
  {
    v3 = 0;
  }

  v7 = &kCFBooleanTrue;
  if (!v3)
  {
    v7 = &kCFBooleanFalse;
  }

  *(a1 + 128) = *v7;
  sub_100001D48();
  _SC_syslog_os_log_mapping();
  if (__SC_log_enabled())
  {
    v8 = _os_log_pack_size();
    __chkstk_darwin(v8, v9, v10);
    v11 = *__error();
    v12 = _os_log_pack_fill();
    v13 = "";
    if (!v3)
    {
      v13 = " NOT";
    }

    *v12 = 138412546;
    *(v12 + 4) = a1;
    *(v12 + 12) = 2080;
    *(v12 + 14) = v13;
    __SC_log_send();
  }

  if (v3)
  {
    sub_1000237F0();
  }

  return v3;
}

void sub_10001F160(CFTypeRef cf)
{

  CFRelease(cf);
}

uint64_t sub_10001F1B8()
{
  if (!&_PAEntitlementDictionaryBelongsToSystemProcess)
  {
    return 0;
  }

  v0 = objc_autoreleasePoolPush();
  v1 = PAEntitlementDictionaryBelongsToSystemProcess();
  objc_autoreleasePoolPop(v0);
  return v1;
}

void start(int a1, char *const *a2)
{
  *&context.version = xmmword_100079A48;
  *&context.retain = unk_100079A58;
  context.copyDescription = sub_10001FEE0;
  v62 = 0;
  v56 = *a2;
  qword_1000816B0 = CFSetCreateMutable(0, 0, &kCFTypeSetCallBacks);
  v59 = 0;
  v58 = 0;
  qword_1000816B8 = CFSetCreateMutable(0, 0, &kCFTypeSetCallBacks);
  v57 = 1;
  while (1)
  {
    while (1)
    {
      while (1)
      {
        v4 = getopt_long(a1, a2, "bB:dt:vV:", &off_100079A70, 0);
        if (v4 <= 97)
        {
          break;
        }

        if (v4 <= 117)
        {
          switch(v4)
          {
            case 'b':
              v57 = 0;
              break;
            case 'd':
              v58 = 1;
              break;
            case 't':
              v59 = optarg;
              break;
            default:
              goto LABEL_26;
          }
        }

        else
        {
          if (v4 != 118)
          {
            goto LABEL_26;
          }

          byte_1000816A8 = 1;
        }
      }

      if (v4 != 66)
      {
        break;
      }

      v6 = CFStringCreateWithCString(0, optarg, 0);
      v7 = qword_1000816B0;
LABEL_11:
      CFSetSetValue(v7, v6);
      CFRelease(v6);
    }

    if (v4 != 86)
    {
      if (v4 != -1)
      {
LABEL_26:
        sub_10001FF48();
      }

      if (getuid())
      {
        fprintf(__stderrp, "%s: permission denied.\n", v56);
        exit(77);
      }

      port_info = 0;
      v60.__sigaction_u.__sa_handler = 0;
      *&v60.sa_mask = 0;
      vproc_swap_integer();
      if (v58)
      {
        v9 = v59;
        if (v59)
        {
          goto LABEL_35;
        }

        _sc_log = 0;
      }

      else
      {
        signal(15, sub_100020154);
        v8 = fork();
        v9 = v59;
        if (v8 == -1)
        {
          goto LABEL_25;
        }

        if (v8)
        {
          v66[0] = 0;
          wait4(v8, v66, 0, 0);
          if ((v66[0] & 0x7F) != 0)
          {
            fprintf(__stderrp, "*** configd (daemon) failed to start, received signal=%d\n");
          }

          else
          {
            fprintf(__stderrp, "*** configd (daemon) failed to start, exit status=%d\n");
          }

          fflush(__stderrp);
          exit(70);
        }

        signal(15, 0);
        if (setsid() == -1)
        {
LABEL_25:
          v10 = __stderrp;
          v11 = __error();
          v12 = strerror(*v11);
          fprintf(v10, "configd: fork() failed: %s\n", v12);
          exit(1);
        }

        chdir("/");
LABEL_35:
        if (!v9)
        {
          v13 = getdtablesize();
          if (v13 >= 1)
          {
            v14 = v13 + 1;
            do
            {
              close(v14 - 2);
              --v14;
            }

            while (v14 > 1);
          }

          v15 = open("/dev/null", 2, 0);
          if (v15 != -1)
          {
            v16 = v15;
            dup2(v15, 0);
            v17 = open("/var/log/configd.log", 9, 0);
            if (v17 == -1)
            {
              v18 = v16;
            }

            else
            {
              v18 = v17;
              if (v16 >= 1)
              {
                close(v16);
              }
            }

            dup2(v18, 1);
            dup2(v18, 2);
            if (v18 >= 3)
            {
              close(v18);
            }
          }
        }
      }

      if (setiopolicy_np(9, 0, 1) == -1)
      {
        v19 = qword_100081728;
        if (!qword_100081728)
        {
          v19 = os_log_create("com.apple.SystemConfiguration", "SCDynamicStore");
          qword_100081728 = v19;
        }

        v20 = _SC_syslog_os_log_mapping();
        if (__SC_log_enabled())
        {
          v80 = 0u;
          v81 = 0u;
          v78 = 0u;
          v79 = 0u;
          v76 = 0u;
          v77 = 0u;
          v74 = 0u;
          v75 = 0u;
          v72 = 0u;
          v73 = 0u;
          v70 = 0u;
          v71 = 0u;
          v68 = 0u;
          v69 = 0u;
          *v66 = 0u;
          v67 = 0u;
          os_log_type_enabled(v19, v20);
          v21 = __error();
          v22 = strerror(*v21);
          v64 = 136315138;
          v65 = v22;
          v23 = _os_log_send_and_compose_impl();
          __SC_log_send2();
          if (v23 != v66)
          {
            free(v23);
          }
        }
      }

      v60.__sigaction_u.__sa_handler = sub_100020034;
      *&v60.sa_mask = 0x200000000;
      if (sigaction(1, &v60, 0) == -1)
      {
        v24 = qword_100081728;
        if (!qword_100081728)
        {
          v24 = os_log_create("com.apple.SystemConfiguration", "SCDynamicStore");
          qword_100081728 = v24;
        }

        v25 = _SC_syslog_os_log_mapping();
        if (__SC_log_enabled())
        {
          v80 = 0u;
          v81 = 0u;
          v78 = 0u;
          v79 = 0u;
          v76 = 0u;
          v77 = 0u;
          v74 = 0u;
          v75 = 0u;
          v72 = 0u;
          v73 = 0u;
          v70 = 0u;
          v71 = 0u;
          v68 = 0u;
          v69 = 0u;
          *v66 = 0u;
          v67 = 0u;
          os_log_type_enabled(v24, v25);
          v26 = __error();
          v27 = strerror(*v26);
          v64 = 136315138;
          v65 = v27;
          v28 = _os_log_send_and_compose_impl();
          __SC_log_send2();
          if (v28 != v66)
          {
            free(v28);
          }
        }
      }

      if (sigaction(13, &v60, 0) == -1)
      {
        v29 = qword_100081728;
        if (!qword_100081728)
        {
          v29 = os_log_create("com.apple.SystemConfiguration", "SCDynamicStore");
          qword_100081728 = v29;
        }

        v30 = _SC_syslog_os_log_mapping();
        if (__SC_log_enabled())
        {
          v80 = 0u;
          v81 = 0u;
          v78 = 0u;
          v79 = 0u;
          v76 = 0u;
          v77 = 0u;
          v74 = 0u;
          v75 = 0u;
          v72 = 0u;
          v73 = 0u;
          v70 = 0u;
          v71 = 0u;
          v68 = 0u;
          v69 = 0u;
          *v66 = 0u;
          v67 = 0u;
          os_log_type_enabled(v29, v30);
          v31 = __error();
          v32 = strerror(*v31);
          v64 = 136315138;
          v65 = v32;
          v33 = _os_log_send_and_compose_impl();
          __SC_log_send2();
          if (v33 != v66)
          {
            free(v33);
          }
        }
      }

      if (sigaction(15, &v60, 0) == -1)
      {
        v34 = qword_100081728;
        if (!qword_100081728)
        {
          v34 = os_log_create("com.apple.SystemConfiguration", "SCDynamicStore");
          qword_100081728 = v34;
        }

        v35 = _SC_syslog_os_log_mapping();
        if (__SC_log_enabled())
        {
          v80 = 0u;
          v81 = 0u;
          v78 = 0u;
          v79 = 0u;
          v76 = 0u;
          v77 = 0u;
          v74 = 0u;
          v75 = 0u;
          v72 = 0u;
          v73 = 0u;
          v70 = 0u;
          v71 = 0u;
          v68 = 0u;
          v69 = 0u;
          *v66 = 0u;
          v67 = 0u;
          os_log_type_enabled(v34, v35);
          v36 = __error();
          v37 = strerror(*v36);
          v64 = 136315138;
          v65 = v37;
          v38 = _os_log_send_and_compose_impl();
          __SC_log_send2();
          if (v38 != v66)
          {
            free(v38);
          }
        }
      }

      if (sigaction(2, &v60, 0) == -1)
      {
        v39 = qword_100081728;
        if (!qword_100081728)
        {
          v39 = os_log_create("com.apple.SystemConfiguration", "SCDynamicStore");
          qword_100081728 = v39;
        }

        v40 = _SC_syslog_os_log_mapping();
        if (__SC_log_enabled())
        {
          v80 = 0u;
          v81 = 0u;
          v78 = 0u;
          v79 = 0u;
          v76 = 0u;
          v77 = 0u;
          v74 = 0u;
          v75 = 0u;
          v72 = 0u;
          v73 = 0u;
          v70 = 0u;
          v71 = 0u;
          v68 = 0u;
          v69 = 0u;
          *v66 = 0u;
          v67 = 0u;
          os_log_type_enabled(v39, v40);
          v41 = __error();
          v42 = strerror(*v41);
          v64 = 136315138;
          v65 = v42;
          v43 = _os_log_send_and_compose_impl();
          __SC_log_send2();
          if (v43 != v66)
          {
            free(v43);
          }
        }
      }

      qword_100081730 = CFMachPortCreate(0, sub_1000200F4, &context, 0);
      port_info = 1;
      v44 = mach_task_self_;
      Port = CFMachPortGetPort(qword_100081730);
      if (mach_port_set_attributes(v44, Port, 1, &port_info, 1u))
      {
        perror("mach_port_set_attributes");
      }

      RunLoopSource = CFMachPortCreateRunLoopSource(0, qword_100081730, 0);
      Current = CFRunLoopGetCurrent();
      CFRunLoopAddSource(Current, RunLoopSource, kCFRunLoopDefaultMode);
      CFRelease(RunLoopSource);
      if (v9)
      {
        goto LABEL_93;
      }

      _SCDynamicStoreSetSessionWatchLimit();
      if (qword_100081740 != -1)
      {
        dispatch_once(&qword_100081740, &stru_100079AD0);
      }

      if (byte_100081738)
      {
        v48 = SCPreferencesCreate(0, @"configd", @"com.apple.configd.SCDynamicStoreServerDebug.plist");
        if (v48)
        {
          v49 = v48;
          Value = SCPreferencesGetValue(v48, @"ShouldLogPath");
          TypeID = CFBooleanGetTypeID();
          if (Value && CFGetTypeID(Value) == TypeID)
          {
            byte_1000816F0 = CFBooleanGetValue(Value);
          }

          CFRelease(v49);
        }
      }

      sub_100020774();
      if (&_wd_endpoint_register)
      {
        wd_endpoint_register();
        sub_1000026BC();
        wd_endpoint_add_queue();
        wd_endpoint_activate();
      }

      if (!v58 && !v62)
      {
        v52 = getppid();
        kill(v52, 15);
      }

      if (v57)
      {
LABEL_93:
        sub_1000214B0(v9);
      }

      v53 = qword_100081728;
      if (!qword_100081728)
      {
        v53 = os_log_create("com.apple.SystemConfiguration", "SCDynamicStore");
        qword_100081728 = v53;
      }

      v54 = _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v80 = 0u;
        v81 = 0u;
        v78 = 0u;
        v79 = 0u;
        v76 = 0u;
        v77 = 0u;
        v74 = 0u;
        v75 = 0u;
        v72 = 0u;
        v73 = 0u;
        v70 = 0u;
        v71 = 0u;
        v68 = 0u;
        v69 = 0u;
        *v66 = 0u;
        v67 = 0u;
        os_log_type_enabled(v53, v54);
        LOWORD(v64) = 0;
        v55 = _os_log_send_and_compose_impl();
        __SC_log_send2();
        if (v55 != v66)
        {
          free(v55);
        }
      }

      CFRunLoopRun();
      exit(0);
    }

    v5 = optarg;
    if (strcmp(optarg, "com.apple.SystemConfiguration"))
    {
      v6 = CFStringCreateWithCString(0, v5, 0);
      v7 = qword_1000816B8;
      goto LABEL_11;
    }

    _sc_verbose = 1;
  }
}

CFStringRef sub_10001FEE0()
{

  return CFStringCreateWithFormat(0, 0, @"<SIGTERM MP>");
}

void sub_10001FF48()
{
  SCPrint();
  SCPrint();
  SCPrint();
  SCPrint();
  SCPrint();
  SCPrint();
  SCPrint();
  SCPrint();
  SCPrint();
  exit(64);
}

uint64_t sub_100020034(uint64_t result)
{
  if (result == 15 || result == 2)
  {
    if (!qword_100081730)
    {
      _exit(0);
    }

    if (_sc_log >= 1)
    {
      _sc_log = 2;
    }

    CFMachPortGetPort(qword_100081730);

    return _SC_sendMachMessage();
  }

  return result;
}

CFIndex sub_1000200F4()
{
  v1 = 0;
  result = sub_100020E88(&v1);
  if (!result)
  {
    exit(v1);
  }

  return result;
}

void sub_1000201D8()
{
  qword_1000816C0 = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  qword_1000816C8 = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  qword_1000816D0 = CFSetCreateMutable(0, 0, &kCFTypeSetCallBacks);
  qword_1000816D8 = CFSetCreateMutable(0, 0, &kCFTypeSetCallBacks);
  qword_1000816E0 = CFSetCreateMutable(0, 0, &kCFTypeSetCallBacks);
  keys[4] = 0;
  values[4] = 0;
  v10 = @"com.apple.security.on-demand-install-capable";
  v0 = CFArrayCreate(0, &v10, 1, &kCFTypeArrayCallBacks);
  keys[0] = @"read-deny";
  keys[1] = @"read-deny-background";
  values[0] = v0;
  values[1] = kCFBooleanTrue;
  v10 = @"com.apple.developer.device-information.user-assigned-device-name";
  v1 = CFArrayCreate(0, &v10, 1, &kCFTypeArrayCallBacks);
  keys[2] = @"read-allow";
  keys[3] = @"read-allow-system";
  values[2] = v1;
  values[3] = kCFBooleanTrue;
  v2 = CFDictionaryCreate(0, keys, values, 4, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (v1)
  {
    CFRelease(v1);
  }

  CFRelease(v0);
  ComputerName = SCDynamicStoreKeyCreateComputerName(0);
  sub_10002051C(ComputerName, v2);
  CFRelease(ComputerName);
  HostNames = SCDynamicStoreKeyCreateHostNames(0);
  sub_10002051C(HostNames, v2);
  CFRelease(HostNames);
  CFRelease(v2);
  if (qword_100081750 != -1)
  {
    sub_1000673D4();
  }

  if (byte_100081748)
  {
    v5 = sub_100020650(@"com.apple.SCDynamicStore.test.read-deny1.entitlement", @"read-deny");
    sub_10002051C(@"com.apple.SCDynamicStore.test.read-deny1.key", v5);
    CFRelease(v5);
    v6 = sub_100020650(@"com.apple.SCDynamicStore.test.read-deny2.entitlement", @"read-deny");
    sub_10002051C(@"com.apple.SCDynamicStore.test.read-deny2.key", v6);
    CFRelease(v6);
    v7 = sub_100020650(@"com.apple.SCDynamicStore.test.read-allow1.entitlement", @"read-allow");
    sub_10002051C(@"com.apple.SCDynamicStore.test.read-allow1.key", v7);
    CFRelease(v7);
    v8 = sub_100020650(@"com.apple.SCDynamicStore.test.read-allow2.entitlement", @"read-allow");
    sub_10002051C(@"com.apple.SCDynamicStore.test.read-allow2.key", v8);
    CFRelease(v8);
    keys[0] = @"write-protect";
    v9 = CFDictionaryCreate(0, keys, &kCFBooleanTrue, 1, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    sub_10002051C(@"com.apple.SCDynamicStore.test.write-protect1.key", v9);
    sub_10002051C(@"com.apple.SCDynamicStore.test.write-protect2.key", v9);
    CFRelease(v9);
  }
}

void sub_10002051C(void *key, const void *a2)
{
  Value = CFDictionaryGetValue(qword_1000816C0, key);
  if (Value)
  {
    MutableCopy = CFDictionaryCreateMutableCopy(0, 0, Value);
  }

  else
  {
    MutableCopy = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  }

  v6 = MutableCopy;
  CFDictionarySetValue(MutableCopy, @"access-controls", a2);
  CFDictionarySetValue(qword_1000816C0, key, v6);

  CFRelease(v6);
}

CFDictionaryRef sub_100020650(void *a1, void *a2)
{
  keys = a2;
  values = a1;
  cf = CFArrayCreate(0, &values, 1, &kCFTypeArrayCallBacks);
  v2 = CFDictionaryCreate(0, &keys, &cf, 1, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFRelease(cf);
  return v2;
}

void sub_1000206F4(id a1)
{
  qword_100081760 = dispatch_workloop_create_inactive("configd/SCDynamicStore");
  dispatch_set_qos_class_fallback();
  v1 = qword_100081760;

  dispatch_activate(v1);
}

uint64_t sub_100020774()
{
  sp = 0;
  v0 = getenv("SCD_SERVER");
  if (v0)
  {
    v1 = v0;
  }

  else
  {
    v1 = "com.apple.SystemConfiguration.configd";
  }

  v2 = bootstrap_check_in(bootstrap_port, v1, &sp);
  if (v2)
  {
    if (v2 == 1103)
    {
      sub_100001D48();
      _SC_syslog_os_log_mapping();
      if (!__SC_log_enabled())
      {
        goto LABEL_14;
      }
    }

    else
    {
      v4 = v2;
      if (v2 != 1100)
      {
        sub_100001D48();
        _SC_syslog_os_log_mapping();
        if (__SC_log_enabled())
        {
          v10 = _os_log_pack_size();
          __chkstk_darwin(v10, v11, v12);
          v13 = *__error();
          v14 = _os_log_pack_fill();
          v15 = bootstrap_strerror(v4);
          *v14 = 136315394;
          *(v14 + 4) = v1;
          *(v14 + 12) = 2080;
          *(v14 + 14) = v15;
          __SC_log_send();
        }

LABEL_14:
        exit(69);
      }

      sub_100001D48();
      _SC_syslog_os_log_mapping();
      if (!__SC_log_enabled())
      {
        goto LABEL_14;
      }
    }

    v5 = _os_log_pack_size();
    __chkstk_darwin(v5, v6, v7);
    v8 = *__error();
    v9 = _os_log_pack_fill();
    *v9 = 136315138;
    *(v9 + 4) = v1;
    __SC_log_send();
    goto LABEL_14;
  }

  sub_1000201D8();
  return sub_100022BEC(sp);
}

uint64_t sub_100020A30(uint64_t result)
{
  if (*(result + 8))
  {
    v1 = result;
    if (*(result + 16))
    {
      sub_100001D48();
      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v2 = _os_log_pack_size();
        __chkstk_darwin(v2, v3, v4);
        v5 = *__error();
        v6 = _os_log_pack_fill();
        Identifier = CFBundleGetIdentifier(*v1);
        *v6 = 138412290;
        *(v6 + 4) = Identifier;
        __SC_log_send();
      }

      return (v1[2])(*v1, *(v1 + 12));
    }
  }

  return result;
}

void sub_100020B6C(uint64_t a1)
{
  if (*(a1 + 8))
  {
    if (*(a1 + 24))
    {
      v2 = CFBundleCopyBundleURL(*a1);
      if (v2)
      {
        v3 = v2;
        v4 = CFURLGetFileSystemRepresentation(v2, 1u, v14, 1024);
        CFRelease(v3);
        if (v4)
        {
          v5 = strrchr(v14, 47);
          v6 = v5 ? v5 + 1 : v14;
          v7 = strlen(v6);
          if (v7 >= 9 && !strcmp(&v6[v7 - 7], ".bundle") && __strlcpy_chk() <= 0x100)
          {
            v15[strlen(v15) - 7] = 0;
            sub_100001D48();
            _SC_syslog_os_log_mapping();
            if (__SC_log_enabled())
            {
              v8 = _os_log_pack_size();
              __chkstk_darwin(v8, v9, v10);
              v11 = *__error();
              v12 = _os_log_pack_fill();
              Identifier = CFBundleGetIdentifier(*a1);
              *v12 = 138412290;
              *(v12 + 4) = Identifier;
              __SC_log_send();
            }

            (*(a1 + 24))(v15, v14);
          }
        }
      }
    }
  }
}

uint64_t sub_100020D54(uint64_t result)
{
  if (*(result + 8))
  {
    v1 = result;
    if (*(result + 32))
    {
      sub_100001D48();
      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v2 = _os_log_pack_size();
        __chkstk_darwin(v2, v3, v4);
        v5 = *__error();
        v6 = _os_log_pack_fill();
        Identifier = CFBundleGetIdentifier(*v1);
        *v6 = 138412290;
        *(v6 + 4) = Identifier;
        __SC_log_send();
      }

      return (*(v1 + 32))();
    }
  }

  return result;
}

CFIndex sub_100020E88(_DWORD *a1)
{
  result = CFArrayGetCount(qword_100081768);
  if (result)
  {
    if (!qword_100081770)
    {
      sub_100001D48();
      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v3 = _os_log_pack_size();
        __chkstk_darwin(v3, v4, v5);
        v6 = *__error();
        v7 = _os_log_pack_fill();
        Current = CFAbsoluteTimeGetCurrent();
        *v7 = 134217984;
        *(v7 + 4) = Current;
        __SC_log_send();
      }

      qword_100081770 = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      sub_100020FEC();
    }

    return 1;
  }

  else
  {
    *a1 = 0;
  }

  return result;
}

void sub_100020FEC()
{
  sub_100001D48();
  _SC_syslog_os_log_mapping();
  if (__SC_log_enabled())
  {
    v0 = _os_log_pack_size();
    __chkstk_darwin(v0, v1, v2);
    v3 = *__error();
    *_os_log_pack_fill() = 0;
    __SC_log_send();
  }

  v4 = qword_100081768;
  v14.length = CFArrayGetCount(qword_100081768);
  v14.location = 0;
  CFArrayApplyFunction(v4, v14, sub_100022124, 0);
  if (!CFDictionaryGetCount(qword_100081770))
  {
    sub_100001D48();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v8 = _os_log_pack_size();
      __chkstk_darwin(v8, v9, v10);
      v11 = *__error();
      v12 = _os_log_pack_fill();
      Current = CFAbsoluteTimeGetCurrent();
      *v12 = 134217984;
      *(v12 + 4) = Current;
      __SC_log_send();
    }

    exit(0);
  }

  v5 = CFAbsoluteTimeGetCurrent();
  v6 = CFRunLoopTimerCreate(0, v5 + 15.0, 0.0, 0, 0, sub_100022248, 0);
  v7 = CFRunLoopGetCurrent();
  CFRunLoopAddTimer(v7, v6, kCFRunLoopDefaultMode);
  CFRelease(v6);
}

__CFArray *sub_100021244(const __CFDictionary *a1)
{
  Mutable = CFArrayCreateMutable(0, 0, 0);
  for (i = 0; i != 80; i += 8)
  {
    v3 = *(&off_100079B78 + i);
    Value = CFDictionaryGetValue(a1, v3);
    if (Value)
    {
      v5 = Value;
      if (CFSetContainsValue(qword_1000816B0, v3) || (v11 = sub_100021408(v3)) != 0 && (v12 = v11, v13 = CFSetContainsValue(qword_1000816B0, v11), CFRelease(v12), v13))
      {
        sub_100001D48();
        _SC_syslog_os_log_mapping();
        if (__SC_log_enabled())
        {
          v6 = _os_log_pack_size();
          __chkstk_darwin(v6, v7, v8);
          v9 = *__error();
          v10 = _os_log_pack_fill();
          *v10 = 138412290;
          *(v10 + 4) = v3;
          __SC_log_send();
        }
      }

      else
      {
        CFArrayAppendValue(Mutable, v5);
      }
    }
  }

  return Mutable;
}

CFStringRef sub_100021408(const __CFString *a1)
{
  Length = CFStringGetLength(a1);
  result.location = 0;
  result.length = 0;
  v5.location = 0;
  v5.length = Length;
  if (!CFStringFindWithOptions(a1, @".", v5, 4uLL, &result))
  {
    return 0;
  }

  v6.length = Length - (result.length + result.location);
  result.location += result.length;
  v6.location = result.location;
  result.length = v6.length;
  return CFStringCreateWithSubstring(0, a1, v6);
}

void sub_1000214B0(const char *a1)
{
  context = 0;
  _SCDPluginExecInit();
  v2 = sub_100021884(a1);
  qword_100081768 = sub_100021244(v2);
  CFRelease(v2);
  sub_100001D48();
  _SC_syslog_os_log_mapping();
  if (__SC_log_enabled())
  {
    v3 = _os_log_pack_size();
    __chkstk_darwin(v3, v4, v5);
    v6 = *__error();
    *_os_log_pack_fill() = 0;
    __SC_log_send();
  }

  v7 = qword_100081768;
  v24.length = CFArrayGetCount(qword_100081768);
  v24.location = 0;
  CFArrayApplyFunction(v7, v24, sub_100021B18, &context);
  sub_100001D48();
  _SC_syslog_os_log_mapping();
  if (__SC_log_enabled())
  {
    v8 = _os_log_pack_size();
    __chkstk_darwin(v8, v9, v10);
    v11 = *__error();
    *_os_log_pack_fill() = 0;
    __SC_log_send();
  }

  v12 = qword_100081768;
  v25.length = CFArrayGetCount(qword_100081768);
  v25.location = 0;
  CFArrayApplyFunction(v12, v25, sub_100020A30, 0);
  if (context)
  {
    sub_100001D48();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v13 = _os_log_pack_size();
      __chkstk_darwin(v13, v14, v15);
      v16 = *__error();
      *_os_log_pack_fill() = 0;
      __SC_log_send();
    }

    v17 = qword_100081768;
    v26.length = CFArrayGetCount(qword_100081768);
    v26.location = 0;
    CFArrayApplyFunction(v17, v26, sub_100020B6C, 0);
    sub_100001D48();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v18 = _os_log_pack_size();
      __chkstk_darwin(v18, v19, v20);
      v21 = *__error();
      *_os_log_pack_fill() = 0;
      __SC_log_send();
    }

    v22 = qword_100081768;
    v27.length = CFArrayGetCount(qword_100081768);
    v27.location = 0;
    CFArrayApplyFunction(v22, v27, sub_100020D54, 0);
  }
}

__CFDictionary *sub_100021884(const char *a1)
{
  Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, 0);
  if (a1)
  {
    v3 = strlen(a1);
    v4 = CFURLCreateFromFileSystemRepresentation(0, a1, v3, 1u);
    v5 = CFBundleCreate(0, v4);
    if (v5)
    {
      v6 = v5;
      sub_1000226D4(Mutable, v5, 1);
      CFRelease(v6);
    }

    CFRelease(v4);
  }

  else
  {
    started = sysdir_start_search_path_enumeration(SYSDIR_DIRECTORY_LIBRARY, SYSDIR_DOMAIN_MASK_SYSTEM);
    next_search_path_enumeration = sysdir_get_next_search_path_enumeration(started, v23);
    if (next_search_path_enumeration)
    {
      v9 = next_search_path_enumeration;
      do
      {
        __strlcat_chk();
        sub_100001D48();
        _SC_syslog_os_log_mapping();
        if (__SC_log_enabled())
        {
          v10 = _os_log_pack_size();
          __chkstk_darwin(v10, v11, v12);
          v13 = *__error();
          v14 = _os_log_pack_fill();
          *v14 = 136315138;
          *(v14 + 4) = v23;
          __SC_log_send();
        }

        v15 = strlen(v23);
        v16 = CFURLCreateFromFileSystemRepresentation(0, v23, v15, 1u);
        BundlesFromDirectory = CFBundleCreateBundlesFromDirectory(0, v16, @".bundle");
        CFRelease(v16);
        if (BundlesFromDirectory)
        {
          Count = CFArrayGetCount(BundlesFromDirectory);
          if (Count >= 1)
          {
            v19 = Count;
            for (i = 0; i != v19; ++i)
            {
              ValueAtIndex = CFArrayGetValueAtIndex(BundlesFromDirectory, i);
              sub_1000226D4(Mutable, ValueAtIndex, 0);
              sub_10001F160(ValueAtIndex);
            }
          }

          CFRelease(BundlesFromDirectory);
        }

        v9 = sysdir_get_next_search_path_enumeration(v9, v23);
      }

      while (v9);
    }
  }

  return Mutable;
}

void sub_100021B18(uint64_t a1, void *a2)
{
  Identifier = CFBundleGetIdentifier(*a1);
  v5 = sub_100021408(Identifier);
  if (!*(a1 + 10) && !*(a1 + 11))
  {
    sub_100001D48();
    _SC_syslog_os_log_mapping();
    if (!__SC_log_enabled())
    {
      goto LABEL_26;
    }

    goto LABEL_30;
  }

  if (!*(a1 + 12))
  {
    v6 = CFSetContainsValue(qword_1000816B8, Identifier);
    *(a1 + 12) = v6;
    if (!v6 && v5 != 0)
    {
      *(a1 + 12) = CFSetContainsValue(qword_1000816B8, v5);
    }
  }

  if (*(a1 + 9))
  {
    sub_100001D48();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v8 = _os_log_pack_size();
      __chkstk_darwin(v8, v9, v10);
      v11 = *__error();
      v12 = _os_log_pack_fill();
      *v12 = 138412290;
      *(v12 + 4) = Identifier;
      __SC_log_send();
    }

    v13 = &off_100079BC8;
    v14 = 6;
    while (!CFEqual(Identifier, *v13))
    {
      v13 += 5;
      if (!--v14)
      {
        if (*(a1 + 16))
        {
          goto LABEL_25;
        }

        goto LABEL_22;
      }
    }

    v20 = v13[1];
    *(a1 + 16) = v20;
    *(a1 + 24) = 0;
    *(a1 + 32) = v13[3];
    *(a1 + 40) = 0;
    if (v20)
    {
      goto LABEL_25;
    }

LABEL_22:
    if (*(a1 + 24) || *(a1 + 32) || *(a1 + 40))
    {
      goto LABEL_25;
    }

    sub_100001D48();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
LABEL_30:
      v21 = _os_log_pack_size();
      __chkstk_darwin(v21, v22, v23);
      v24 = *__error();
      v25 = _os_log_pack_fill();
      *v25 = 138412290;
      *(v25 + 4) = Identifier;
      __SC_log_send();
    }
  }

  else
  {
    error = 0;
    sub_100001D48();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v15 = _os_log_pack_size();
      __chkstk_darwin(v15, v16, v17);
      v18 = *__error();
      v19 = _os_log_pack_fill();
      *v19 = 138412290;
      *(v19 + 4) = Identifier;
      __SC_log_send();
    }

    if (CFBundleLoadExecutableAndReturnError(*a1, &error))
    {
      *(a1 + 16) = sub_100022ABC(*a1, @"load", v5);
      *(a1 + 24) = sub_100022ABC(*a1, @"start", v5);
      *(a1 + 32) = sub_100022ABC(*a1, @"prime", v5);
      *(a1 + 40) = sub_100022ABC(*a1, @"stop", v5);
LABEL_25:
      *(a1 + 8) = 1;
      ++*a2;
      goto LABEL_26;
    }

    sub_100001D48();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v26 = _os_log_pack_size();
      __chkstk_darwin(v26, v27, v28);
      v29 = *__error();
      v30 = _os_log_pack_fill();
      *v30 = 138412290;
      *(v30 + 4) = Identifier;
      __SC_log_send();
    }

    v31 = CFErrorCopyUserInfo(error);
    if (v31)
    {
      v32 = v31;
      Value = CFDictionaryGetValue(v31, @"NSDebugDescription");
      if (Value)
      {
        v34 = Value;
        sub_100001D48();
        _SC_syslog_os_log_mapping();
        if (__SC_log_enabled())
        {
          v35 = _os_log_pack_size();
          __chkstk_darwin(v35, v36, v37);
          v38 = *__error();
          v39 = _os_log_pack_fill();
          *v39 = 138412290;
          *(v39 + 4) = v34;
          __SC_log_send();
        }
      }

      CFRelease(v32);
    }

    CFRelease(error);
  }

LABEL_26:
  if (v5)
  {
    CFRelease(v5);
  }
}

void sub_100022124(uint64_t a1)
{
  v1 = *a1;
  context.version = 0;
  context.info = v1;
  context.retain = &_CFRetain;
  context.release = &_CFRelease;
  context.copyDescription = sub_100022444;
  context.equal = &_CFEqual;
  context.schedule = 0;
  context.cancel = 0;
  context.hash = &CFHash;
  context.perform = sub_1000224B4;
  if (*(a1 + 8))
  {
    if (*(a1 + 40))
    {
      v3 = CFRunLoopSourceCreate(0, 0, &context);
      Current = CFRunLoopGetCurrent();
      CFRunLoopAddSource(Current, v3, kCFRunLoopDefaultMode);
      CFDictionaryAddValue(qword_100081770, *a1, v3);
      (*(a1 + 40))(v3);
      CFRelease(v3);
    }
  }
}

void sub_100022248()
{
  sub_100001D48();
  _SC_syslog_os_log_mapping();
  if (__SC_log_enabled())
  {
    v0 = _os_log_pack_size();
    __chkstk_darwin(v0, v1, v2);
    v3 = *__error();
    *_os_log_pack_fill() = 0;
    __SC_log_send();
  }

  Count = CFDictionaryGetCount(qword_100081770);
  Typed = CFAllocatorAllocateTyped();
  CFDictionaryGetKeysAndValues(qword_100081770, Typed, 0);
  if (Count >= 1)
  {
    v5 = Typed;
    do
    {
      Identifier = CFBundleGetIdentifier(*v5);
      sub_100001D48();
      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v7 = _os_log_pack_size();
        __chkstk_darwin(v7, v8, v9);
        v10 = *__error();
        v11 = _os_log_pack_fill();
        *v11 = 138412290;
        *(v11 + 4) = Identifier;
        __SC_log_send();
      }

      ++v5;
      --Count;
    }

    while (Count);
  }

  CFAllocatorDeallocate(0, Typed);
  exit(0);
}

__CFRunLoopSource *sub_1000224B4(__CFBundle *a1)
{
  Identifier = CFBundleGetIdentifier(a1);
  sub_100001D48();
  _SC_syslog_os_log_mapping();
  if (__SC_log_enabled())
  {
    v3 = _os_log_pack_size();
    __chkstk_darwin(v3, v4, v5);
    v6 = *__error();
    v7 = _os_log_pack_fill();
    Current = CFAbsoluteTimeGetCurrent();
    *v7 = 138412546;
    *(v7 + 4) = Identifier;
    *(v7 + 12) = 2048;
    *(v7 + 14) = Current;
    __SC_log_send();
  }

  result = CFDictionaryGetValue(qword_100081770, a1);
  if (result)
  {
    CFRunLoopSourceInvalidate(result);
    CFDictionaryRemoveValue(qword_100081770, a1);
    result = CFDictionaryGetCount(qword_100081770);
    if (!result)
    {
      sub_100001D48();
      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v10 = _os_log_pack_size();
        __chkstk_darwin(v10, v11, v12);
        v13 = *__error();
        v14 = _os_log_pack_fill();
        v15 = CFAbsoluteTimeGetCurrent();
        *v14 = 134217984;
        *(v14 + 4) = v15;
        __SC_log_send();
      }

      exit(0);
    }
  }

  return result;
}

uint64_t sub_1000226D4(__CFDictionary *a1, CFBundleRef bundle, char a3)
{
  Identifier = CFBundleGetIdentifier(bundle);
  if (!Identifier)
  {
    sub_100001D48();
    _SC_syslog_os_log_mapping();
    result = __SC_log_enabled();
    if (!result)
    {
      return result;
    }

    v18 = _os_log_pack_size();
    __chkstk_darwin(v18, v19, v20);
    v21 = *__error();
    v22 = _os_log_pack_fill();
    *v22 = 136315394;
    *(v22 + 4) = "addPlugin";
    *(v22 + 12) = 2112;
    *(v22 + 14) = bundle;
    return __SC_log_send();
  }

  v7 = Identifier;
  if (CFEqual(Identifier, @"com.apple.SystemConfiguration.InterfaceNamer"))
  {
LABEL_3:
    Typed = CFAllocatorAllocateTyped();
    *Typed = CFRetain(bundle);
    Typed[4] = 0;
    *(Typed + 10) = 1;
    *(Typed + 11) = a3;
    *(Typed + 12) = 0;
    *(Typed + 1) = 0u;
    *(Typed + 2) = 0u;
    InfoDictionary = CFBundleGetInfoDictionary(bundle);
    TypeID = CFDictionaryGetTypeID();
    if (InfoDictionary && CFGetTypeID(InfoDictionary) == TypeID)
    {
      Value = CFDictionaryGetValue(InfoDictionary, @"Builtin");
      v12 = CFBooleanGetTypeID();
      if (Value && CFGetTypeID(Value) == v12)
      {
        *(Typed + 9) = CFBooleanGetValue(Value);
      }

      v13 = CFDictionaryGetValue(InfoDictionary, @"Enabled");
      v14 = CFBooleanGetTypeID();
      if (v13 && CFGetTypeID(v13) == v14)
      {
        *(Typed + 10) = CFBooleanGetValue(v13);
      }

      v15 = CFDictionaryGetValue(InfoDictionary, @"Verbose");
      v16 = CFBooleanGetTypeID();
      if (v15)
      {
        if (CFGetTypeID(v15) == v16)
        {
          *(Typed + 12) = CFBooleanGetValue(v15);
        }
      }
    }

    CFDictionaryAddValue(a1, v7, Typed);
    sub_100001D48();
    _SC_syslog_os_log_mapping();
    result = __SC_log_enabled();
    if (result)
    {
LABEL_23:
      v26 = _os_log_pack_size();
      __chkstk_darwin(v26, v27, v28);
      v29 = *__error();
      v30 = _os_log_pack_fill();
      *v30 = 136315394;
      *(v30 + 4) = "addPlugin";
      *(v30 + 12) = 2112;
      *(v30 + 14) = v7;
      return __SC_log_send();
    }
  }

  else
  {
    v23 = -1;
    v24 = &off_100079B80;
    while (v23 != 8)
    {
      v25 = *v24++;
      ++v23;
      if (CFEqual(v7, v25))
      {
        if (v23 < 9)
        {
          goto LABEL_3;
        }

        break;
      }
    }

    sub_100001D48();
    _SC_syslog_os_log_mapping();
    result = __SC_log_enabled();
    if (result)
    {
      goto LABEL_23;
    }
  }

  return result;
}

void *sub_100022ABC(__CFBundle *a1, const __CFString *a2, uint64_t a3)
{
  result = CFBundleGetFunctionPointerForName(a1, a2);
  if (!result)
  {
    if (a3)
    {
      v7 = CFStringCreateWithFormat(0, 0, @"%@_%@", a2, a3);
      FunctionPointerForName = CFBundleGetFunctionPointerForName(a1, v7);
      CFRelease(v7);
      return FunctionPointerForName;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_100022B88()
{
  _SC_cfstring_to_cstring();
  v0 = atoi(v2);
  return sub_1000022F8(v0);
}

uint64_t sub_100022BEC(mach_port_name_t a1)
{
  qword_100081780 = sub_100001938(a1);
  sub_100001C8C(qword_100081780, 1);
  if (qword_100081788 != -1)
  {
    sub_100067558();
  }

  os_state_add_handler();
  return qword_100081780;
}

void sub_100022C80(uint64_t a1)
{
  if (qword_100081788 != -1)
  {
    sub_100067558();
  }

  v2[0] = _NSConcreteStackBlock;
  v2[1] = 0x40000000;
  v2[2] = sub_100022D44;
  v2[3] = &unk_100079D28;
  v2[4] = a1;
  dispatch_sync(qword_100081790, v2);
}

uint64_t sub_100022D44(uint64_t a1)
{
  context[0] = *(a1 + 32);
  context[1] = 0;
  SCPrint();
  CFDictionaryApplyFunction(qword_100081778, sub_100022DE4, context);
  v2 = *(a1 + 32);
  return SCPrint();
}

uint64_t sub_100022DE4(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = *a3;
  ++*(a3 + 2);
  v14 = *(a2 + 16);
  SCPrint();
  v6 = *a3;
  v11 = *(a2 + 40);
  SCPrint();
  if (*(a2 + 32))
  {
    v7 = *a3;
    v12 = *(a2 + 32);
    SCPrint();
  }

  if (*(a2 + 48))
  {
    v8 = *a3;
    v13 = *(a2 + 48);
    SCPrint();
  }

  v9 = *a3;

  return SCPrint();
}

uint64_t sub_100022F34(uint64_t a1, const __CFString *a2)
{
  v2 = sub_100005164(a1, a2);
  TypeID = CFBooleanGetTypeID();
  if (!v2 || CFGetTypeID(v2) != TypeID)
  {
    return 0;
  }

  return CFBooleanGetValue(v2);
}

uint64_t sub_100022FE8(uint64_t a1)
{
  v2 = *(a1 + 120);
  if (v2)
  {

    return CFBooleanGetValue(v2);
  }

  v4 = *(a1 + 84);
  *token.val = *(a1 + 68);
  *&token.val[4] = v4;
  v5 = SecTaskCreateWithAuditToken(0, &token);
  if (!v5)
  {
    v8 = 1;
    goto LABEL_9;
  }

  v6 = v5;
  CodeSignStatus = SecTaskGetCodeSignStatus(v5);
  CFRelease(v6);
  v8 = (CodeSignStatus & 0x4000000) == 0;
  if ((CodeSignStatus & 0x4000000) == 0)
  {
LABEL_9:
    v9 = &kCFBooleanFalse;
    goto LABEL_10;
  }

  v9 = &kCFBooleanTrue;
LABEL_10:
  *(a1 + 120) = *v9;
  sub_100001D48();
  _SC_syslog_os_log_mapping();
  if (__SC_log_enabled())
  {
    v10 = _os_log_pack_size();
    __chkstk_darwin(v10, v11, v12);
    v13 = *__error();
    v14 = _os_log_pack_fill();
    v15 = "";
    *(v14 + 4) = "sessionIsPlatformBinary";
    *v14 = 136315650;
    if (v8)
    {
      v15 = " NOT";
    }

    *(v14 + 12) = 2112;
    *(v14 + 14) = a1;
    *(v14 + 22) = 2080;
    *(v14 + 24) = v15;
    __SC_log_send();
  }

  if (v8)
  {
    return 0;
  }

  sub_1000237F0();
  return 1;
}

uint64_t sub_1000231FC(uint64_t a1, const __CFString *a2)
{
  v3 = sub_100005164(a1, @"com.apple.SystemConfiguration.SCDynamicStore-write-access");
  TypeID = CFDictionaryGetTypeID();
  if (v3 && CFGetTypeID(v3) == TypeID)
  {
    Value = CFDictionaryGetValue(v3, @"keys");
    v6 = CFArrayGetTypeID();
    if (Value)
    {
      if (CFGetTypeID(Value) == v6)
      {
        v15.length = CFArrayGetCount(Value);
        v15.location = 0;
        if (CFArrayContainsValue(Value, v15, a2))
        {
          return 1;
        }
      }
    }

    v8 = CFDictionaryGetValue(v3, @"patterns");
    v9 = CFArrayGetTypeID();
    if (v8)
    {
      if (CFGetTypeID(v8) == v9)
      {
        Count = CFArrayGetCount(v8);
        if (Count >= 1)
        {
          v11 = Count;
          v12 = 0;
          while (1)
          {
            ValueAtIndex = CFArrayGetValueAtIndex(v8, v12);
            v14 = CFStringGetTypeID();
            if (ValueAtIndex)
            {
              if (CFGetTypeID(ValueAtIndex) == v14 && sub_100023B44(ValueAtIndex, a2))
              {
                break;
              }
            }

            if (v11 == ++v12)
            {
              return 0;
            }
          }

          return 1;
        }
      }
    }
  }

  return 0;
}

os_state_data_s *__cdecl sub_100023454(id a1, os_state_hints_s *a2)
{
  Count = CFDictionaryGetCount(qword_100081778);
  if (Count > 249)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    CFDictionaryApplyFunction(qword_100081778, sub_100023724, Mutable);
  }

  else
  {
    Mutable = CFStringCreateWithFormat(0, 0, @"n = %ld", Count);
  }

  _SCSerialize();
  CFRelease(Mutable);
  v4 = malloc_type_calloc(1uLL, 0xC8uLL, 0x9EAE745uLL);
  if (v4)
  {
    v5 = v4;
    v4->var0 = 1;
    v4->var1.var1 = 0;
    __strlcpy_chk();
  }

  else
  {
    sub_100001D48();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      _os_log_pack_size();
      v6 = *__error();
      *_os_log_pack_fill() = 0;
      __SC_log_send();
    }

    return 0;
  }

  return v5;
}

void sub_100023724(int a1, uint64_t a2, CFDictionaryRef theDict)
{
  v4 = *(a2 + 40);
  if (v4)
  {
    valuePtr = 0;
    value = 0;
    if (CFDictionaryGetValueIfPresent(theDict, v4, &value) && CFNumberGetValue(value, kCFNumberIntType, &valuePtr))
    {
      v6 = valuePtr + 1;
    }

    else
    {
      v6 = 1;
    }

    valuePtr = v6;
    value = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
    CFDictionarySetValue(theDict, *(a2 + 40), value);
    CFRelease(value);
  }
}

uint64_t sub_1000237F0()
{
  result = __chkstk_darwin();
  if (byte_1000816F0)
  {
    v2 = v1;
    v3 = result;
    bzero(v6, 0x1000uLL);
    result = proc_pidpath_audittoken(v3, v6, 0x1000u);
    if (result >= 1)
    {
      sub_100001D48();
      _SC_syslog_os_log_mapping();
      result = __SC_log_enabled();
      if (result)
      {
        _os_log_pack_size();
        __chkstk_darwin();
        v4 = *__error();
        v5 = _os_log_pack_fill();
        *v5 = 136315394;
        *(v5 + 4) = v2;
        *(v5 + 12) = 2080;
        *(v5 + 14) = v6;
        return __SC_log_send();
      }
    }
  }

  return result;
}

CFDictionaryRef sub_100023968(uint64_t a1, const __CFArray *a2)
{
  v4 = *(a1 + 84);
  *token.val = *(a1 + 68);
  *&token.val[4] = v4;
  v5 = SecTaskCreateWithAuditToken(0, &token);
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  *token.val = 0;
  v7 = SecTaskCopyValuesForEntitlements(v5, a2, &token);
  if (!v7 && *token.val)
  {
    Code = CFErrorGetCode(*token.val);
    Domain = CFErrorGetDomain(*token.val);
    if (!CFEqual(Domain, kCFErrorDomainMach) || Code != -536870911 && Code != -536870160)
    {
      sub_100001D48();
      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        _os_log_pack_size();
        __chkstk_darwin();
        v10 = *__error();
        v11 = _os_log_pack_fill();
        v12 = *token.val;
        v13 = *(a1 + 40);
        *v11 = 138412802;
        *(v11 + 4) = a2;
        *(v11 + 12) = 2112;
        *(v11 + 14) = v12;
        *(v11 + 22) = 2112;
        *(v11 + 24) = v13;
        __SC_log_send();
      }
    }

    CFRelease(*token.val);
  }

  CFRelease(v6);
  return v7;
}

uint64_t sub_100023B44(__CFString *a1, const __CFString *a2)
{
  v4 = sub_10000CD5C(a1);
  v5 = v4;
  if (!v4)
  {
    v7 = sub_10001E6C4(a1);
    if (!v7)
    {
      return 0;
    }

    goto LABEL_6;
  }

  Count = CFArrayGetCount(v4);
  v7 = v5;
  if (Count < 3 || (v12.length = Count - 2, v12.location = 2, v7 = v5, !CFArrayContainsValue(v5, v12, a2)))
  {
LABEL_6:
    ValueAtIndex = CFArrayGetValueAtIndex(v7, 0);
    v8 = sub_10001EC7C(a2, ValueAtIndex);
    if (!v5)
    {
      BytePtr = CFDataGetBytePtr(ValueAtIndex);
      regfree(BytePtr);
    }

    v5 = v7;
    goto LABEL_9;
  }

  v8 = 1;
LABEL_9:
  CFRelease(v5);
  return v8;
}

const __CFArray *sub_100023C40(__CFString *a1, const void *a2)
{
  result = sub_10000CD5C(a1);
  if (result || (result = sub_10001E6C4(a1)) != 0)
  {
    v5 = result;
    ValueAtIndex = CFArrayGetValueAtIndex(result, 1);
    MutableCopy = CFArrayCreateMutableCopy(0, 0, ValueAtIndex);
    CFArrayAppendValue(MutableCopy, a2);
    CFArraySetValueAtIndex(v5, 1, MutableCopy);
    CFRelease(MutableCopy);
    CFDictionarySetValue(qword_1000816C8, a1, v5);
    Count = CFArrayGetCount(v5);
    if (Count >= 3)
    {
      v9 = Count;
      for (i = 2; i != v9; ++i)
      {
        v11 = CFArrayGetValueAtIndex(v5, i);
        sub_10000296C(a2, v11);
      }
    }

    CFRelease(v5);
    return 1;
  }

  return result;
}

void sub_100023D54(void *a1, const void *a2)
{
  v4 = sub_10000CD5C(a1);
  if (!v4)
  {
    sub_100067638();
  }

  v5 = v4;
  Count = CFArrayGetCount(v4);
  if (Count > 2)
  {
    v7 = Count;
    for (i = 2; i != v7; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v5, i);
      sub_10000580C(a2, ValueAtIndex);
    }
  }

  v10 = CFArrayGetValueAtIndex(v5, 1);
  v11 = CFArrayGetCount(v10);
  if (v11 < 2)
  {
    v15 = CFArrayGetValueAtIndex(v5, 0);
    BytePtr = CFDataGetBytePtr(v15);
    regfree(BytePtr);
    CFDictionaryRemoveValue(qword_1000816C8, a1);
  }

  else
  {
    v12 = v11;
    MutableCopy = CFArrayCreateMutableCopy(0, 0, v10);
    v18.location = 0;
    v18.length = v12;
    FirstIndexOfValue = CFArrayGetFirstIndexOfValue(MutableCopy, v18, a2);
    CFArrayRemoveValueAtIndex(MutableCopy, FirstIndexOfValue);
    CFArraySetValueAtIndex(v5, 1, MutableCopy);
    CFRelease(MutableCopy);
    CFDictionarySetValue(qword_1000816C8, a1, v5);
  }

  CFRelease(v5);
}

void sub_100023EC4(const __CFString *a1)
{
  v2 = CFStringFind(a1, @":", 0);
  v11.location = 0;
  v11.length = v2.location;
  v3 = CFStringCreateWithSubstring(0, a1, v11);
  v12.length = CFStringGetLength(a1) - (v2.location + v2.length);
  v12.location = v2.location + v2.length;
  v4 = CFStringCreateWithSubstring(0, a1, v12);
  v5 = sub_100022B88();
  if (v5)
  {
    v6 = v5;
    v7 = *(v5 + 48);
    v10.length = CFArrayGetCount(v7);
    v10.location = 0;
    FirstIndexOfValue = CFArrayGetFirstIndexOfValue(v7, v10, v4);
    if (FirstIndexOfValue != -1)
    {
      CFArrayRemoveValueAtIndex(*(v6 + 48), FirstIndexOfValue);
      if (!CFArrayGetCount(*(v6 + 48)))
      {
        CFRelease(*(v6 + 48));
        *(v6 + 48) = 0;
      }
    }
  }

  CFRelease(v3);

  CFRelease(v4);
}

uint64_t sub_100023FEC(int a1, uint64_t a2, uint64_t a3, int a4, void *a5, _DWORD *a6, int *a7)
{
  v19 = 0;
  cf = 0;
  *a5 = 0;
  *a6 = 0;
  if (!_SCUnserializeString())
  {
    goto LABEL_7;
  }

  TypeID = CFStringGetTypeID();
  if (!cf || CFGetTypeID(cf) != TypeID)
  {
    v16 = 1002;
    goto LABEL_9;
  }

  v12 = sub_1000022F8(a1);
  if (!v12)
  {
    v16 = 2001;
    goto LABEL_9;
  }

  v18 = 0;
  v13 = sub_10000C9AC(*(v12 + 56), cf, a4 != 0, &v18);
  *a7 = v13;
  if (!v13)
  {
    v14 = v18;
    v15 = _SCSerialize();
    *a6 = v19;
    CFRelease(v14);
    if (!v15)
    {
LABEL_7:
      v16 = 1001;
LABEL_9:
      *a7 = v16;
    }
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return 0;
}

uint64_t sub_100024138(uint64_t a1, void *a2, const void *a3)
{
  cf = 0;
  v6 = sub_100001D48();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    sub_100067770(a1, a2, v6);
  }

  v7 = sub_100004F2C(a1, a2, 0, &cf, 1);
  if (v7 == 1004)
  {
    v8 = sub_10000847C(a1, a2, a3, 1);
    sub_10000880C();
  }

  else
  {
    v8 = v7;
    if (!v7)
    {
      CFRelease(cf);
      return 1005;
    }
  }

  return v8;
}

uint64_t sub_100024220(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, _DWORD *a6, int *a7)
{
  *a6 = 0;
  *a7 = 0;
  if (!_SCUnserializeString())
  {
    *a7 = 1001;
  }

  if (!_SCUnserializeData())
  {
    v8 = 1001;
    goto LABEL_7;
  }

  if (!*a7)
  {
    CFStringGetTypeID();
    v8 = 1002;
LABEL_7:
    *a7 = v8;
  }

  return 0;
}

uint64_t sub_100024354(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, _DWORD *a6, int *a7)
{
  *a6 = 0;
  *a7 = 0;
  if (!_SCUnserializeString())
  {
    *a7 = 1001;
  }

  if (!_SCUnserializeData())
  {
    v8 = 1001;
    goto LABEL_7;
  }

  if (!*a7)
  {
    CFStringGetTypeID();
    v8 = 1002;
LABEL_7:
    *a7 = v8;
  }

  return 0;
}

void sub_1000244A8(void *a1, const __CFDictionary *a2, uint64_t *a3)
{
  v5 = sub_100004A70(*a3, a1, a2);
  if (v5 == 10100 || v5 == 0)
  {
    v7 = sub_100001D48();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      sub_100067824(a3);
    }
  }

  else
  {
    v8 = a3[1];

    CFDictionaryRemoveValue(v8, a1);
  }
}

void sub_1000245AC(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_debug_impl(a1, log, OS_LOG_TYPE_DEBUG, a4, va, 0x12u);
}

CFTypeID sub_1000245CC(void *a1, uint64_t a2)
{
  result = CFStringGetTypeID();
  if (a1)
  {
    v5 = result;
    result = CFGetTypeID(a1);
    if (result == v5)
    {

      return sub_100024788(a2, a1, 1);
    }
  }

  return result;
}

uint64_t sub_100024690(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  if (_SCUnserializeString())
  {
    CFStringGetTypeID();
    v5 = 1002;
  }

  else
  {
    v5 = 1001;
  }

  *a4 = v5;
  return 0;
}

uint64_t sub_100024788(uint64_t a1, void *a2, int a3)
{
  value = 0;
  v6 = sub_100001D48();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v9 = "*notify";
    v10 = *(a1 + 40);
    *buf = 136315650;
    if (!a3)
    {
      v9 = "notify ";
    }

    v13 = v9;
    v14 = 1024;
    v15 = v10;
    v16 = 2112;
    v17 = a2;
    _os_log_debug_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "%s : %5u : %@", buf, 0x1Cu);
  }

  v7 = CFDictionaryGetValue(qword_1000816C0, a2);
  if (v7 && CFDictionaryGetValueIfPresent(v7, @"data", &value))
  {
    sub_10000847C(a1, a2, value, 1);
    if (!a3)
    {
      goto LABEL_7;
    }
  }

  else
  {
    _SCSerialize();
    sub_10000847C(a1, a2, value, 1);
    sub_10000D56C(a1, a2, 1);
    CFRelease(value);
    if (!a3)
    {
LABEL_7:
      sub_10000880C();
    }
  }

  return 0;
}

uint64_t sub_10002490C(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  if (_SCUnserializeString())
  {
    CFStringGetTypeID();
    v5 = 1002;
  }

  else
  {
    v5 = 1001;
  }

  *a4 = v5;
  return 0;
}