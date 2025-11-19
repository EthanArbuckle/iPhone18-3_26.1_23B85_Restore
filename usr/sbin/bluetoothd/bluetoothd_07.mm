uint64_t sub_10007C858(uint64_t a1)
{
  v1 = *(a1 + 1832);
  if (v1 == (a1 + 1840))
  {
    LOBYTE(v2) = 0;
  }

  else
  {
    v2 = 0;
    do
    {
      v3 = *(v1 + 28);
      v4 = *(v1 + 16);
      v5 = v2 | 8;
      if (!*(v1 + 16))
      {
        v5 = v2;
      }

      v6 = v2 | 0x10;
      if (!*(v1 + 16))
      {
        v6 = v2;
      }

      v7 = v2 | (v4 != 0);
      if (v3 != 22)
      {
        v7 = v2;
      }

      if (v3 != 16)
      {
        v6 = v7;
      }

      if (v3 != 15)
      {
        v5 = v6;
      }

      v8 = v4 == 0;
      if (*(v1 + 16))
      {
        v9 = v2 | 2;
      }

      else
      {
        v9 = v2;
      }

      v10 = v2 | 4;
      if (v8)
      {
        v10 = v2;
      }

      if (v3 != 7)
      {
        v10 = v2;
      }

      if (*(v1 + 28))
      {
        v9 = v10;
      }

      if (*(v1 + 28) <= 0xEu)
      {
        v2 = v9;
      }

      else
      {
        v2 = v5;
      }

      v11 = v1[1];
      if (v11)
      {
        do
        {
          v12 = v11;
          v11 = *v11;
        }

        while (v11);
      }

      else
      {
        do
        {
          v12 = v1[2];
          v8 = *v12 == v1;
          v1 = v12;
        }

        while (!v8);
      }

      v1 = v12;
    }

    while (v12 != (a1 + 1840));
  }

  v13 = *(a1 + 2064);
  v14 = (a1 + 2072);
  if (v13 == (a1 + 2072))
  {
    v15 = 0;
  }

  else
  {
    v15 = 0;
    do
    {
      v16 = sub_10007AF84(v13[5]);
      if (sub_10007AF74(v13[5]))
      {
        v17 = 2;
      }

      else
      {
        v17 = 0;
      }

      if (sub_10007AF94(v13[5]))
      {
        v18 = 4;
      }

      else
      {
        v18 = 0;
      }

      if (sub_10007CD30(v13[5]))
      {
        v19 = 8;
      }

      else
      {
        v19 = 0;
      }

      if (sub_10007CD40(v13[5]))
      {
        v20 = 16;
      }

      else
      {
        v20 = 0;
      }

      v21 = v13[1];
      if (v21)
      {
        do
        {
          v22 = v21;
          v21 = *v21;
        }

        while (v21);
      }

      else
      {
        do
        {
          v22 = v13[2];
          v8 = *v22 == v13;
          v13 = v22;
        }

        while (!v8);
      }

      v15 |= v16 | v17 | v18 | v19 | v20;
      v13 = v22;
    }

    while (v22 != v14);
  }

  v23 = v15;
  v24 = v15 ^ v2;
  v25 = qword_100BCE918;
  v26 = v15 ^ v2;
  if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67109632;
    v31 = v2;
    v32 = 1024;
    v33 = v23;
    v34 = 1024;
    v35 = v24;
    _os_log_debug_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEBUG, "AOPBTBUFF config current:%d new:%d configChanged:%d", buf, 0x14u);
  }

  if (v23 == v2)
  {
    return 0;
  }

  if (v26)
  {
    if (v23)
    {
      v27 = sub_1000C6490(a1, 22);
      if (v27 && os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_ERROR))
      {
        sub_1008769D8();
        if ((v26 & 2) == 0)
        {
          goto LABEL_77;
        }

        goto LABEL_70;
      }
    }

    else
    {
      v27 = sub_1000C76A8(a1, 22);
      if (v27 && os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_ERROR))
      {
        sub_100876A40();
        if ((v26 & 2) == 0)
        {
          goto LABEL_77;
        }

        goto LABEL_70;
      }
    }

    if ((v26 & 2) == 0)
    {
      goto LABEL_77;
    }
  }

  else
  {
    v27 = 0;
    if ((v26 & 2) == 0)
    {
      goto LABEL_77;
    }
  }

LABEL_70:
  if ((v23 & 2) != 0)
  {
    v27 = sub_1000C6490(a1, 0);
    if (v27 && os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_ERROR))
    {
      sub_100876AA8();
    }
  }

  else
  {
    v27 = sub_1000C76A8(a1, 0);
    if (v27 && os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_ERROR))
    {
      sub_100876B10();
    }
  }

LABEL_77:
  if ((v26 & 4) == 0)
  {
    goto LABEL_85;
  }

  if ((v23 & 4) == 0)
  {
    v27 = sub_1000C76A8(a1, 7);
    if (v27 && os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_ERROR))
    {
      sub_100876BE0();
      if ((v26 & 8) == 0)
      {
        goto LABEL_93;
      }

LABEL_86:
      if ((v23 & 8) != 0)
      {
        v27 = sub_1000C6490(a1, 15);
        if (v27 && os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_ERROR))
        {
          sub_100876C48();
        }
      }

      else
      {
        v27 = sub_1000C76A8(a1, 15);
        if (v27 && os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_ERROR))
        {
          sub_100876CB0();
        }
      }

      goto LABEL_93;
    }

LABEL_85:
    if ((v26 & 8) == 0)
    {
      goto LABEL_93;
    }

    goto LABEL_86;
  }

  v27 = sub_1000C6490(a1, 7);
  if (!v27 || !os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_ERROR))
  {
    goto LABEL_85;
  }

  sub_100876B78();
  if ((v26 & 8) != 0)
  {
    goto LABEL_86;
  }

LABEL_93:
  if ((v26 & 0x10) != 0)
  {
    if ((v23 & 0x10) != 0)
    {
      v27 = sub_1000C6490(a1, 16);
      if (v27 && os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_ERROR))
      {
        sub_100876D18();
      }
    }

    else
    {
      v27 = sub_1000C76A8(a1, 16);
      if (v27 && os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_ERROR))
      {
        sub_100876D80();
      }
    }
  }

  return v27;
}

void sub_10007CD50(unsigned __int8 *a1)
{
  v2 = qword_100BCE918;
  if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_INFO))
  {
    v3 = sub_10007CF9C(a1);
    v4 = a1[144];
    v5 = a1[1870];
    v6 = a1[1888];
    v9[0] = 67109888;
    v9[1] = v3;
    v10 = 1024;
    v11 = v4;
    v12 = 1024;
    v13 = v5;
    v14 = 1024;
    v15 = v6;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "enableAOPBTBuffersIfNeeded haveAnyHwAOPBTBufferRequests:%d fScreenState:%d fAOPBTBufferReadInProgress:%d fAOPBTProxCtxBufferReadInProgress:%d", v9, 0x1Au);
  }

  if (sub_10007CF9C(a1))
  {
    if ((!_os_feature_enabled_impl() || sub_1007A4098(a1)) && sub_10007D00C(a1) && (a1[1870] & 1) == 0)
    {
      v7 = sub_1000C5CF0(a1, 22, 1);
      if (_os_feature_enabled_impl())
      {
        v8 = sub_1000C5CF0(a1, 16, 1);
      }

      else
      {
        v8 = 0;
      }

      if (v7 | v8)
      {
        if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_ERROR))
        {
          sub_10087498C();
        }
      }

      else
      {
        sub_1007A4198(a1);
      }
    }

    if (sub_10007D074(a1) && (a1[1888] & 1) == 0 && sub_1000C5CF0(a1, 0, 1) && os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_ERROR))
    {
      sub_1008749FC();
    }

    if (sub_10007D0DC(a1) && (a1[1888] & 1) == 0 && (a1[144] & 1) == 0 && sub_1000C5CF0(a1, 7, 1) && os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_ERROR))
    {
      sub_100874A64();
    }
  }
}

BOOL sub_10007CF9C(uint64_t a1)
{
  v1 = *(a1 + 2064);
  v2 = (a1 + 2072);
  if (v1 == (a1 + 2072))
  {
    return 0;
  }

  do
  {
    v3 = *(*(v1[5] + 8) + 148) - 1;
    result = v3 < 0xFF;
    if (v3 < 0xFF)
    {
      break;
    }

    v5 = v1[1];
    if (v5)
    {
      do
      {
        v6 = v5;
        v5 = *v5;
      }

      while (v5);
    }

    else
    {
      do
      {
        v6 = v1[2];
        v7 = *v6 == v1;
        v1 = v6;
      }

      while (!v7);
    }

    v1 = v6;
  }

  while (v6 != v2);
  return result;
}

uint64_t sub_10007D00C(uint64_t a1)
{
  v1 = *(a1 + 2064);
  v2 = (a1 + 2072);
  if (v1 == (a1 + 2072))
  {
    return 0;
  }

  do
  {
    v3 = *(*(v1[5] + 8) + 148);
    result = v3 & 1;
    if (v3)
    {
      break;
    }

    v5 = v1[1];
    if (v5)
    {
      do
      {
        v6 = v5;
        v5 = *v5;
      }

      while (v5);
    }

    else
    {
      do
      {
        v6 = v1[2];
        v7 = *v6 == v1;
        v1 = v6;
      }

      while (!v7);
    }

    v1 = v6;
  }

  while (v6 != v2);
  return result;
}

uint64_t sub_10007D074(uint64_t a1)
{
  v1 = *(a1 + 2064);
  v2 = (a1 + 2072);
  if (v1 == (a1 + 2072))
  {
    return 0;
  }

  do
  {
    v3 = *(*(v1[5] + 8) + 148);
    result = (v3 >> 1) & 1;
    if ((v3 & 2) != 0)
    {
      break;
    }

    v5 = v1[1];
    if (v5)
    {
      do
      {
        v6 = v5;
        v5 = *v5;
      }

      while (v5);
    }

    else
    {
      do
      {
        v6 = v1[2];
        v7 = *v6 == v1;
        v1 = v6;
      }

      while (!v7);
    }

    v1 = v6;
  }

  while (v6 != v2);
  return result;
}

uint64_t sub_10007D0DC(uint64_t a1)
{
  v1 = *(a1 + 2064);
  v2 = (a1 + 2072);
  if (v1 == (a1 + 2072))
  {
    return 0;
  }

  do
  {
    v3 = *(*(v1[5] + 8) + 148);
    result = (v3 >> 2) & 1;
    if ((v3 & 4) != 0)
    {
      break;
    }

    v5 = v1[1];
    if (v5)
    {
      do
      {
        v6 = v5;
        v5 = *v5;
      }

      while (v5);
    }

    else
    {
      do
      {
        v6 = v1[2];
        v7 = *v6 == v1;
        v1 = v6;
      }

      while (!v7);
    }

    v1 = v6;
  }

  while (v6 != v2);
  return result;
}

uint64_t sub_10007D144(uint64_t a1)
{
  v1 = *(a1 + 2064);
  if (v1 != (a1 + 2072))
  {
    do
    {
      v2 = *(v1[5] + 8);
      v3 = *(v2 + 120);
      v4 = *(v2 + 128);
      while (v3 != v4)
      {
        if (*(v3 + 104) == 2)
        {
          return 1;
        }

        v3 += 112;
      }

      v5 = v1[1];
      if (v5)
      {
        do
        {
          v6 = v5;
          v5 = *v5;
        }

        while (v5);
      }

      else
      {
        do
        {
          v6 = v1[2];
          v7 = *v6 == v1;
          v1 = v6;
        }

        while (!v7);
      }

      v1 = v6;
    }

    while (v6 != (a1 + 2072));
  }

  return 0;
}

uint64_t sub_10007D1C4(uint64_t a1)
{
  v1 = *(a1 + 2064);
  if (v1 != (a1 + 2072))
  {
    do
    {
      v2 = *(v1[5] + 8);
      v3 = *(v2 + 120);
      v4 = *(v2 + 128);
      while (v3 != v4)
      {
        if (*(v3 + 104) == 3)
        {
          return 1;
        }

        v3 += 112;
      }

      v5 = v1[1];
      if (v5)
      {
        do
        {
          v6 = v5;
          v5 = *v5;
        }

        while (v5);
      }

      else
      {
        do
        {
          v6 = v1[2];
          v7 = *v6 == v1;
          v1 = v6;
        }

        while (!v7);
      }

      v1 = v6;
    }

    while (v6 != (a1 + 2072));
  }

  return 0;
}

void sub_10007D244(uint64_t a1)
{
  v169 = a1 + 4096;
  v170 = *(a1 + 4422);
  if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEBUG))
  {
    sub_100876DE8();
  }

  if (*(v169 + 325))
  {
    v1 = sub_10000C7D0();
    (*(*v1 + 616))(v1);
    v2 = sub_10000C7D0();
    (*(*v2 + 400))(v2, 1);
    v3 = sub_10000C7D0();
    (*(*v3 + 392))(v3, 1);
    v4 = sub_10000C7D0();
    (*(*v4 + 632))(v4);
    v5 = sub_10000C7D0();
    (*(*v5 + 776))(v5);
  }

  sub_10007F460(a1);
  *(v169 + 232) = 1;
  v234 = 0;
  v233 = 0;
  v232 = &v233;
  v231 = 0;
  v230 = 0;
  v229 = &v230;
  v6 = *(a1 + 2064);
  v188 = (a1 + 2072);
  if (v6 == (a1 + 2072))
  {
    goto LABEL_252;
  }

  do
  {
    v7 = v6[5];
    memset(__dst, 0, 24);
    v196 = v7;
    sub_10006D7D8(__dst, *(*(v7 + 8) + 88), *(*(v7 + 8) + 96), 0xAAAAAAAAAAAAAAABLL * ((*(*(v7 + 8) + 96) - *(*(v7 + 8) + 88)) >> 5));
    v8 = *__dst;
    if (*__dst == *&__dst[8])
    {
      v16 = 0;
    }

    else
    {
      do
      {
        v9 = *(v8 + 56);
        v225 = 0u;
        v226 = 0u;
        v227 = 0u;
        v228 = 0u;
        v10 = v9;
        v11 = [v10 countByEnumeratingWithState:&v225 objects:v244 count:16];
        if (v11)
        {
          v12 = *v226;
          while (2)
          {
            v13 = 0;
            do
            {
              if (*v226 != v12)
              {
                objc_enumerationMutation(v10);
              }

              v14 = *(*(&v225 + 1) + 8 * v13);
              if (qword_100B508D0 != -1)
              {
                sub_1000C32C8();
              }

              *__p = sub_100046458(off_100B508C8, v14, 0);
              if (*__p)
              {
                sub_10005B93C(&v229, __p);
                if (v231 >= 0x1F)
                {
                  if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_ERROR))
                  {
                    sub_100876E90(&v223, v224);
                  }

                  v16 = 1;
                  goto LABEL_25;
                }
              }

              else
              {
                v15 = qword_100BCE918;
                if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_INFO))
                {
                  *buf = 0;
                  _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "Tried to add device to matching list that was not present", buf, 2u);
                }
              }

              v13 = v13 + 1;
            }

            while (v11 != v13);
            v11 = [v10 countByEnumeratingWithState:&v225 objects:v244 count:16];
            if (v11)
            {
              continue;
            }

            break;
          }
        }

        v16 = 0;
LABEL_25:

        v8 += 96;
        if (v8 == *&__dst[8])
        {
          v18 = 1;
        }

        else
        {
          v18 = v16;
        }
      }

      while ((v18 & 1) == 0);
    }

    v19 = qword_100BCE918;
    if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEBUG))
    {
      v24 = sub_1007B330C((*(v196 + 8) + 248));
      sub_100018384(v6[4], __p);
      v25 = __p;
      if (v242 < 0)
      {
        v25 = *__p;
      }

      *buf = 134218242;
      *&buf[4] = v24;
      *&buf[12] = 2082;
      *&buf[14] = v25;
      _os_log_debug_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEBUG, "bypassFilterDuplicateTable 0x%0256llx  %{public}s", buf, 0x16u);
      if (v242 < 0)
      {
        operator delete(*__p);
      }
    }

    *__p = __dst;
    sub_10003B78C(__p);
    v20 = v6[1];
    if (v20)
    {
      do
      {
        v21 = v20;
        v20 = *v20;
      }

      while (v20);
    }

    else
    {
      do
      {
        v21 = v6[2];
        v22 = *v21 == v6;
        v6 = v21;
      }

      while (!v22);
    }

    if (v21 == v188)
    {
      v23 = 1;
    }

    else
    {
      v23 = v16;
    }

    v6 = v21;
  }

  while ((v23 & 1) == 0);
  if ((v16 & 1) == 0)
  {
LABEL_252:
    if (!v170 || *(v169 + 325) == 1)
    {
      v26 = v229;
      if (v229 != &v230)
      {
        do
        {
          v27 = sub_10000C7D0();
          (*(*v27 + 760))(v27, v26[4]);
          v28 = v26[1];
          if (v28)
          {
            do
            {
              v29 = v28;
              v28 = *v28;
            }

            while (v28);
          }

          else
          {
            do
            {
              v29 = v26[2];
              v22 = *v29 == v26;
              v26 = v29;
            }

            while (!v22);
          }

          v26 = v29;
        }

        while (v29 != &v230);
      }
    }

    if ((a1 + 4336) != &v229)
    {
      sub_10007F4E4((a1 + 4336), v229, &v230);
    }

    v180 = 0;
  }

  else
  {
    v180 = 1;
  }

  v30 = *(a1 + 2064);
  if (v30 != v188)
  {
    do
    {
      v197 = v30[5];
      if ((sub_1000178BC(v197) & 1) == 0)
      {
        goto LABEL_168;
      }

      v31 = *(v197 + 81);
      if (v31 > 0x20)
      {
        goto LABEL_168;
      }

      if (((1 << v31) & 0x114) != 0)
      {
        if (!sub_10000D1C8(v197))
        {
          goto LABEL_168;
        }

        if (*(v197 + 224) != 1)
        {
          goto LABEL_168;
        }

        v32 = sub_100024BE0(v197);
        v33 = *v32;
        v182 = v32[1];
        if (*v32 == v182)
        {
          goto LABEL_168;
        }

        v185 = 0;
        while (1)
        {
          v34 = *(v197 + 8);
          if (*(v34 + 172) == 1 && !*(a1 + 2376))
          {
            v51 = qword_100BCEA38;
            if (os_log_type_enabled(qword_100BCEA38, OS_LOG_TYPE_DEFAULT))
            {
              sub_10003B85C(v33, __dst);
              v52 = __dst;
              if ((__dst[23] & 0x80u) != 0)
              {
                v52 = *__dst;
              }

              *__p = 136446210;
              *&__p[4] = v52;
              _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_DEFAULT, "skipping adding %{public}s to filters", __p, 0xCu);
              if (__dst[23] < 0)
              {
                operator delete(*__dst);
              }
            }
          }

          else
          {
            if (*(v34 + 243) < ++v185)
            {
              v76 = qword_100BCE918;
              if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_ERROR))
              {
                sub_100018384(v30[4], __p);
                v77 = v242;
                v78 = *__p;
                v79 = sub_100024BE0(v197);
                v80 = __p;
                if (v77 < 0)
                {
                  v80 = v78;
                }

                v81 = (v79[1] - *v79) >> 2;
                *__dst = 136446722;
                *&__dst[4] = v80;
                *&__dst[12] = 1024;
                *&__dst[14] = v185;
                *&__dst[18] = 2048;
                *&__dst[20] = 0xCCCCCCCCCCCCCCCDLL * v81;
                _os_log_error_impl(&_mh_execute_header, v76, OS_LOG_TYPE_ERROR, "%{public}s asked to scan for more than %d (%ld) UUID's.", __dst, 0x1Cu);
                if (v242 < 0)
                {
                  operator delete(*__p);
                }
              }

              goto LABEL_168;
            }

            v35 = *v33;
            *&__dst[16] = *(v33 + 16);
            *__dst = v35;
            v190 = sub_10007F6E0(v197, __dst);
            v36 = qword_100BCE918;
            if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_INFO))
            {
              sub_10003B85C(v33, __dst);
              v37 = __dst;
              if ((__dst[23] & 0x80u) != 0)
              {
                v37 = *__dst;
              }

              *__p = 136315394;
              *&__p[4] = v37;
              *&__p[12] = 2112;
              *&__p[14] = v190;
              _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_INFO, "addFilters BG aUUID:%s enhancedRules:%@", __p, 0x16u);
              if (__dst[23] < 0)
              {
                operator delete(*__dst);
              }
            }

            if ([v190 count])
            {
              v211 = 0u;
              v212 = 0u;
              v209 = 0u;
              v210 = 0u;
              v38 = v190;
              v39 = [v38 countByEnumeratingWithState:&v209 objects:v237 count:16];
              if (v39)
              {
                v40 = *v210;
                do
                {
                  for (i = 0; i != v39; i = i + 1)
                  {
                    if (*v210 != v40)
                    {
                      objc_enumerationMutation(v38);
                    }

                    v42 = *(*(&v209 + 1) + 8 * i);
                    v43 = [v42 objectForKeyedSubscript:@"configController"];
                    v44 = [v43 BOOLValue];

                    if (v44)
                    {
                      sub_100095F7C(a1, v42);
                    }
                  }

                  v39 = [v38 countByEnumeratingWithState:&v209 objects:v237 count:16];
                }

                while (v39);
              }
            }

            else
            {
              *__dst = v33;
              *(sub_100080394(&v232, v33) + 48) = 0;
              v45 = sub_10007F6D4(v197);
              v46 = sub_10000CA3C(v213, v45);
              v47 = *v33;
              *&__dst[16] = *(v33 + 16);
              *__dst = v47;
              v48 = sub_10007FB9C(v46, v213, __dst);
              *__dst = v33;
              *(sub_100080394(&v232, v33) + 49) = v48;
              sub_10000CEDC(v213, v213[1]);
              v49 = sub_10000C798();
              if ((*(*v49 + 352))(v49))
              {
                if (sub_10003C8E8(v197))
                {
                  v50 = *(v197 + 224);
                }

                else
                {
                  v50 = 0;
                }

                *__dst = v33;
                v53 = sub_100080394(&v232, v33);
                *(v53 + 48) |= v50;
              }
            }
          }

          v33 += 20;
          if (v33 == v182)
          {
            goto LABEL_168;
          }
        }
      }

      if (((1 << v31) & 0x100010000) == 0)
      {
        goto LABEL_168;
      }

      *(a1 + 1865) |= sub_100024BA4(v197);
      *(a1 + 1866) |= sub_100024BCC(v197);
      if (!sub_10007F648(v197) && *(v197 + 224) == 1)
      {
        v54 = sub_100024BE0(v197);
        v55 = *v54;
        v183 = v54[1];
        if (*v54 != v183)
        {
          v186 = 0;
          do
          {
            v56 = *(v197 + 8);
            if (*(v56 + 172) == 1 && !*(a1 + 2376))
            {
              v73 = qword_100BCEA38;
              if (os_log_type_enabled(qword_100BCEA38, OS_LOG_TYPE_INFO))
              {
                sub_10003B85C(v55, __dst);
                v74 = __dst;
                if ((__dst[23] & 0x80u) != 0)
                {
                  v74 = *__dst;
                }

                *__p = 136446210;
                *&__p[4] = v74;
                _os_log_impl(&_mh_execute_header, v73, OS_LOG_TYPE_INFO, "skipping adding %{public}s to filters", __p, 0xCu);
                if (__dst[23] < 0)
                {
                  operator delete(*__dst);
                }
              }
            }

            else
            {
              if (*(v56 + 243) < ++v186)
              {
                v82 = qword_100BCE918;
                if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_ERROR))
                {
                  sub_100018384(v30[4], __p);
                  v96 = v242;
                  v97 = *__p;
                  v98 = sub_100024BE0(v197);
                  v99 = __p;
                  if (v96 < 0)
                  {
                    v99 = v97;
                  }

                  v100 = (v98[1] - *v98) >> 2;
                  *__dst = 136446722;
                  *&__dst[4] = v99;
                  *&__dst[12] = 1024;
                  *&__dst[14] = v186;
                  *&__dst[18] = 2048;
                  *&__dst[20] = 0xCCCCCCCCCCCCCCCDLL * v100;
                  _os_log_error_impl(&_mh_execute_header, v82, OS_LOG_TYPE_ERROR, "%{public}s asked to scan for more than %d (%ld) UUID's.", __dst, 0x1Cu);
                  if (v242 < 0)
                  {
                    operator delete(*__p);
                  }
                }

                break;
              }

              v57 = sub_10007F6D4(v197);
              v58 = sub_10000CA3C(v222, v57);
              v59 = *v55;
              *&__dst[16] = *(v55 + 16);
              *__dst = v59;
              v60 = sub_10007FB9C(v58, v222, __dst);
              sub_10000CEDC(v222, v222[1]);
              v61 = *v55;
              *&__dst[16] = *(v55 + 16);
              *__dst = v61;
              v191 = sub_10007F6E0(v197, __dst);
              v62 = qword_100BCE918;
              if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_INFO))
              {
                sub_10003B85C(v55, __dst);
                v63 = __dst;
                if ((__dst[23] & 0x80u) != 0)
                {
                  v63 = *__dst;
                }

                *__p = 136315394;
                *&__p[4] = v63;
                *&__p[12] = 2112;
                *&__p[14] = v191;
                _os_log_impl(&_mh_execute_header, v62, OS_LOG_TYPE_INFO, "addFilters FG/DMN aUUID:%s enhancedRules:%@", __p, 0x16u);
                if (__dst[23] < 0)
                {
                  operator delete(*__dst);
                }
              }

              if ([v191 count])
              {
                v220 = 0u;
                v221 = 0u;
                v218 = 0u;
                v219 = 0u;
                v64 = v191;
                v65 = [v64 countByEnumeratingWithState:&v218 objects:v239 count:16];
                if (v65)
                {
                  v66 = *v219;
                  do
                  {
                    for (j = 0; j != v65; j = j + 1)
                    {
                      if (*v219 != v66)
                      {
                        objc_enumerationMutation(v64);
                      }

                      v68 = *(*(&v218 + 1) + 8 * j);
                      v69 = [v68 objectForKeyedSubscript:@"configController"];
                      v70 = [v69 BOOLValue];

                      if (v70)
                      {
                        sub_100095F7C(a1, v68);
                      }
                    }

                    v65 = [v64 countByEnumeratingWithState:&v218 objects:v239 count:16];
                  }

                  while (v65);
                }
              }

              else
              {
                *__dst = v55;
                *(sub_100080394(&v232, v55) + 48) = 0;
                *__dst = v55;
                *(sub_100080394(&v232, v55) + 49) = v60;
                v71 = sub_10000C798();
                if ((*(*v71 + 352))(v71))
                {
                  if (sub_10003C8E8(v197))
                  {
                    v72 = *(v197 + 224);
                  }

                  else
                  {
                    v72 = 0;
                  }

                  *__dst = v55;
                  v75 = sub_100080394(&v232, v55);
                  *(v75 + 48) |= v72;
                }
              }
            }

            v55 += 20;
          }

          while (v55 != v183);
        }
      }

      if (*(a1 + 1859) == 1)
      {
        if (!v170 || *(v169 + 325) == 1)
        {
          sub_1007B42A8(v197);
        }

        v83 = sub_1007B4FE8(v197);
        v84 = v83;
        if (v83 && [v83 count])
        {
          [*(a1 + 4408) addObjectsFromArray:v84];
        }
      }

      v85 = sub_10008043C(v197, v180, (a1 + 4416));
      v216 = 0u;
      v217 = 0u;
      v214 = 0u;
      v215 = 0u;
      v86 = v85;
      v87 = [v86 countByEnumeratingWithState:&v214 objects:v238 count:16];
      if (v87)
      {
        v88 = *v215;
        do
        {
          v89 = 0;
          do
          {
            if (*v215 != v88)
            {
              objc_enumerationMutation(v86);
            }

            v90 = *(*(&v214 + 1) + 8 * v89);
            v91 = qword_100BCE918;
            if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEBUG))
            {
              if (*(v197 + 255) < 0)
              {
                sub_100008904(__dst, *(v197 + 232), *(v197 + 240));
              }

              else
              {
                *__dst = *(v197 + 232);
                *&__dst[16] = *(v197 + 248);
              }

              v92 = __dst;
              if ((__dst[23] & 0x80u) != 0)
              {
                v92 = *__dst;
              }

              *__p = 136315394;
              *&__p[4] = v92;
              *&__p[12] = 2112;
              *&__p[14] = v90;
              _os_log_debug_impl(&_mh_execute_header, v91, OS_LOG_TYPE_DEBUG, "addUniqueRulesToDictionary: %s rule %@", __p, 0x16u);
              if (__dst[23] < 0)
              {
                operator delete(*__dst);
              }
            }

            sub_100080858(a1, v90);
            v89 = v89 + 1;
          }

          while (v87 != v89);
          v93 = [v86 countByEnumeratingWithState:&v214 objects:v238 count:16];
          v87 = v93;
        }

        while (v93);
      }

LABEL_168:
      v94 = v30[1];
      if (v94)
      {
        do
        {
          v95 = v94;
          v94 = *v94;
        }

        while (v94);
      }

      else
      {
        do
        {
          v95 = v30[2];
          v22 = *v95 == v30;
          v30 = v95;
        }

        while (!v22);
      }

      v30 = v95;
    }

    while (v95 != v188);
  }

  if (![*(a1 + 4392) count])
  {
    memset(__dst, 0, 22);
    v101 = sub_10000C798();
    if ((*(*v101 + 656))(v101))
    {
      v102 = 3;
    }

    else
    {
      v102 = 1;
    }

    v103 = qword_100BCE918;
    if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
    {
      *__p = 0xFF04000200;
      *&__p[8] = 1024;
      *&__p[10] = -87;
      _os_log_impl(&_mh_execute_header, v103, OS_LOG_TYPE_DEFAULT, "Adding bogus rule for type %d and RSSI %d", __p, 0xEu);
    }

    v104 = +[NSMutableDictionary dictionary];
    v105 = [NSData dataWithBytes:__dst length:22];
    [v104 setObject:v105 forKeyedSubscript:@"data"];

    v106 = [NSData dataWithBytes:__dst length:22];
    [v104 setObject:v106 forKeyedSubscript:@"mask"];

    v107 = [NSNumber numberWithChar:169];
    [v104 setObject:v107 forKeyedSubscript:@"rssi"];

    v108 = [NSNumber numberWithUnsignedChar:255];
    [v104 setObject:v108 forKeyedSubscript:@"puckType"];

    v109 = [NSNumber numberWithUnsignedChar:2];
    [v104 setObject:v109 forKeyedSubscript:@"matchAllDevices"];

    v110 = [NSNumber numberWithUnsignedLongLong:0];
    [v104 setObject:v110 forKeyedSubscript:@"address"];

    v111 = [NSNumber numberWithBool:0];
    [v104 setObject:v111 forKeyedSubscript:@"bypassFilterDuplicate"];

    v112 = [NSNumber numberWithUnsignedChar:v102];
    [v104 setObject:v112 forKeyedSubscript:@"targetCore"];

    v113 = [NSNumber numberWithUnsignedChar:1];
    [v104 setObject:v113 forKeyedSubscript:@"rssithresholdOrder"];

    v114 = [NSNumber numberWithBool:1];
    [v104 setObject:v114 forKeyedSubscript:@"report127dBm"];

    v115 = [NSNumber numberWithBool:1];
    [v104 setObject:v115 forKeyedSubscript:@"report27dBm"];

    sub_100080858(a1, v104);
    *(a1 + 1866) = 1;
  }

  if (!v170 || *(v169 + 325) == 1)
  {
    v207 = 0u;
    v208 = 0u;
    v205 = 0u;
    v206 = 0u;
    obj = *(a1 + 4392);
    v173 = [obj countByEnumeratingWithState:&v205 objects:v236 count:16];
    if (v173)
    {
      v172 = *v206;
LABEL_190:
      v116 = 0;
      while (1)
      {
        if (*v206 != v172)
        {
          objc_enumerationMutation(obj);
        }

        v174 = v116;
        v117 = *(*(&v205 + 1) + 8 * v116);
        *&__dst[8] = 0;
        *__dst = 0;
        v118 = [v117 objectForKeyedSubscript:@"data"];
        v119 = v118;
        v120 = [v118 bytes];
        v121 = [v117 objectForKeyedSubscript:@"data"];
        sub_10000C704(__dst, v120, [v121 length]);

        *&__p[8] = 0;
        *__p = 0;
        v122 = [v117 objectForKeyedSubscript:@"mask"];
        v123 = v122;
        v124 = [v122 bytes];
        v125 = [v117 objectForKeyedSubscript:@"mask"];
        sub_10000C704(__p, v124, [v125 length]);

        v126 = sub_10000C7D0();
        v198 = sub_10000C5F8(__dst);
        v194 = sub_10000C5E0(__dst);
        v192 = sub_10000C5F8(__p);
        v189 = sub_10000C5E0(__p);
        v179 = [v117 objectForKeyedSubscript:@"rssi"];
        v187 = [v179 intValue];
        v178 = [v117 objectForKeyedSubscript:@"puckType"];
        v184 = [v178 unsignedIntValue];
        v177 = [v117 objectForKeyedSubscript:@"matchAllDevices"];
        v181 = [v177 unsignedIntValue];
        v176 = [v117 objectForKeyedSubscript:@"address"];
        v127 = [v176 unsignedLongLongValue];
        v175 = [v117 objectForKeyedSubscript:@"bypassFilterDuplicate"];
        v128 = [v175 unsignedIntValue];
        v129 = [v117 objectForKeyedSubscript:@"targetCore"];
        v130 = [v129 unsignedIntValue];
        v131 = [v117 objectForKeyedSubscript:@"rssithresholdOrder"];
        v132 = [v131 unsignedIntValue];
        v133 = [v117 objectForKeyedSubscript:@"report127dBm"];
        LOBYTE(v122) = [v133 unsignedIntValue];
        v134 = [v117 objectForKeyedSubscript:@"report27dBm"];
        BYTE4(v168) = [v134 unsignedIntValue];
        BYTE3(v168) = v122;
        BYTE2(v168) = v132;
        BYTE1(v168) = v130;
        LOBYTE(v168) = v128;
        v135 = (*(*v126 + 672))(v126, v198, v194, v192, v189, v187, v184, v181, v127, v168);

        if (v135)
        {
          v136 = qword_100BCE918;
          if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_ERROR))
          {
            *buf = 67109120;
            *&buf[4] = v135;
            _os_log_error_impl(&_mh_execute_header, v136, OS_LOG_TYPE_ERROR, "Failed to add rule with result %d", buf, 8u);
          }
        }

        *__p = &off_100AE0A78;
        if (*&__p[8])
        {
          sub_10000C808(*&__p[8]);
        }

        *__dst = &off_100AE0A78;
        if (*&__dst[8])
        {
          sub_10000C808(*&__dst[8]);
        }

        if (v135)
        {
          break;
        }

        v116 = v174 + 1;
        if (v173 == (v174 + 1))
        {
          v173 = [obj countByEnumeratingWithState:&v205 objects:v236 count:16];
          if (v173)
          {
            goto LABEL_190;
          }

          break;
        }
      }
    }

    if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEBUG))
    {
      sub_100876EC4();
    }

    v137 = sub_10000C7D0();
    (*(*v137 + 744))(v137, *(a1 + 4416));
    if (*(a1 + 1865) == 1 && (!v170 || (*(v169 + 325) & 1) != 0))
    {
      v138 = sub_10000C7D0();
      (*(*v138 + 624))(v138, 1);
    }
  }

  if (!v234 && ![*(a1 + 4400) count])
  {
    memset(__dst, 0, 20);
    sub_100065F40(__dst, &xmmword_1008C56A8, 16);
    *__p = __dst;
    *(sub_100080394(&v232, __dst) + 48) = 0;
  }

  if (!v170 || *(v169 + 325) == 1)
  {
    v139 = sub_10000C7D0();
    (*(*v139 + 392))(v139, 1);
    v140 = v232;
    if (v232 == &v233)
    {
      v199 = -87;
    }

    else
    {
      while (1)
      {
        v141 = sub_10000C798();
        v142 = (*(*v141 + 352))(v141);
        v143 = *(v140 + 48);
        v144 = *(v140 + 49);
        if (v144 >= -87)
        {
          v145 = -87;
        }

        else
        {
          v145 = *(v140 + 49);
        }

        v199 = v145;
        v146 = qword_100BCE918;
        if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_INFO))
        {
          *__dst = 67109120;
          *&__dst[4] = v144;
          _os_log_impl(&_mh_execute_header, v146, OS_LOG_TYPE_INFO, "addScanFilterByUUID uuidFilterOptions.rssiThreshold %d", __dst, 8u);
        }

        v147 = sub_10000C7D0();
        *__dst = *(v140 + 28);
        *&__dst[16] = *(v140 + 11);
        if ((*(*v147 + 408))(v147, __dst, v142 & v143, v199, 1, 1))
        {
          break;
        }

        v148 = v140[1];
        if (v148)
        {
          do
          {
            v149 = v148;
            v148 = *v148;
          }

          while (v148);
        }

        else
        {
          do
          {
            v149 = v140[2];
            v22 = *v149 == v140;
            v140 = v149;
          }

          while (!v22);
        }

        v140 = v149;
        if (v149 == &v233)
        {
          goto LABEL_231;
        }
      }

      if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_ERROR))
      {
        sub_10003B85C(v140 + 28, __dst);
        sub_100876F38();
      }
    }

LABEL_231:
    v203 = 0u;
    v204 = 0u;
    v201 = 0u;
    v202 = 0u;
    v193 = *(a1 + 4400);
    v150 = [v193 countByEnumeratingWithState:&v201 objects:v235 count:16];
    if (v150)
    {
      v195 = *v202;
      while (2)
      {
        for (k = 0; k != v150; k = k + 1)
        {
          if (*v202 != v195)
          {
            objc_enumerationMutation(v193);
          }

          v152 = *(*(&v201 + 1) + 8 * k);
          memset(buf, 0, 20);
          v153 = [v152 objectForKeyedSubscript:@"uuid"];
          v154 = v153;
          v155 = [v153 bytes];
          v156 = [v152 objectForKeyedSubscript:@"uuid"];
          sub_100065F40(buf, v155, [v156 length]);

          v157 = [v152 objectForKeyedSubscript:@"allowDups"];
          v158 = [v157 BOOLValue];

          v159 = sub_10000C798();
          LODWORD(v155) = (*(*v159 + 352))(v159);
          v160 = sub_10000C7D0();
          *__p = *buf;
          *&__p[16] = *&buf[16];
          v161 = [v152 objectForKeyedSubscript:@"data"];
          LOBYTE(v156) = [v161 length];
          v162 = [v152 objectForKeyedSubscript:@"data"];
          v163 = v162;
          v164 = [v162 bytes];
          v165 = [v152 objectForKeyedSubscript:@"mask"];
          v166 = v165;
          LOBYTE(v167) = 1;
          LODWORD(v156) = (*(*v160 + 416))(v160, __p, v155 & v158, v199, 1, v156, v164, [v165 bytes], v167);

          if (v156)
          {
            if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_ERROR))
            {
              sub_10003B85C(buf, __p);
              sub_100876F94();
            }

            goto LABEL_242;
          }
        }

        v150 = [v193 countByEnumeratingWithState:&v201 objects:v235 count:16];
        if (v150)
        {
          continue;
        }

        break;
      }
    }

LABEL_242:
  }

  if ((a1 + 4368) != &v232)
  {
    sub_100081E2C((a1 + 4368), v232, &v233);
  }

  *(a1 + 1864) = 1;
  if ((v170 & 1) != 0 || *(v169 + 325) == 1)
  {
    sub_100081FA0(a1, *(a1 + 1859));
  }

  else
  {
    *(v169 + 232) = 0;
  }

  *(a1 + 1863) = 0;
  *(a1 + 1859) = 0;
  sub_10000CEDC(&v229, v230);
  sub_10000CEDC(&v232, v233);
}

void sub_10007F090(_Unwind_Exception *a1)
{
  sub_10000CEDC(&STACK[0x2B0], STACK[0x2B8]);
  sub_10000CEDC(&STACK[0x2C8], STACK[0x2D0]);
  _Unwind_Resume(a1);
}

id sub_10007F460(uint64_t a1)
{
  v2 = (a1 + 4376);
  sub_10000CEDC(a1 + 4368, *(a1 + 4376));
  *(a1 + 4368) = v2;
  *v2 = 0u;
  sub_10000CEDC(a1 + 4336, *(a1 + 4344));
  *(a1 + 4336) = a1 + 4344;
  *(a1 + 4344) = 0u;
  [*(a1 + 4392) removeAllObjects];
  [*(a1 + 4400) removeAllObjects];
  result = [*(a1 + 4408) removeAllObjects];
  *(a1 + 4416) = 0;
  return result;
}

uint64_t **sub_10007F4E4(uint64_t **result, void *a2, void *a3)
{
  v5 = result;
  if (result[2])
  {
    v6 = *result;
    v7 = result[1];
    *result = (result + 1);
    v7[2] = 0;
    result[1] = 0;
    result[2] = 0;
    if (v6[1])
    {
      v8 = v6[1];
    }

    else
    {
      v8 = v6;
    }

    v12 = result;
    v13 = v8;
    v14 = v8;
    if (v8)
    {
      v13 = sub_100083B10(v8);
      if (a2 != a3)
      {
        v9 = a2;
        do
        {
          v8[4] = v9[4];
          sub_10039D604(v5, v8);
          v8 = v13;
          v14 = v13;
          if (v13)
          {
            v13 = sub_100083B10(v13);
          }

          v10 = v9[1];
          if (v10)
          {
            do
            {
              a2 = v10;
              v10 = *v10;
            }

            while (v10);
          }

          else
          {
            do
            {
              a2 = v9[2];
              v11 = *a2 == v9;
              v9 = a2;
            }

            while (!v11);
          }

          if (!v8)
          {
            break;
          }

          v9 = a2;
        }

        while (a2 != a3);
      }
    }

    result = sub_100084E60(&v12);
  }

  if (a2 != a3)
  {
    sub_10005BA08();
  }

  return result;
}

void sub_10007F634(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100084E60(va);
  _Unwind_Resume(a1);
}

BOOL sub_10007F648(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (*(a1 + 81) == 32 && *(v1 + 1) == 1 && *(v1 + 8) == *(v1 + 16))
  {
    if ([*(v1 + 112) count])
    {
      return 0;
    }

    v1 = *(a1 + 8);
    if (*(v1 + 88) != *(v1 + 96))
    {
      return 0;
    }
  }

  if (*(v1 + 8) == *(v1 + 16))
  {
    return 1;
  }

  return *(v1 + 56) != *(v1 + 64);
}

id sub_10007F6E0(uint64_t a1, unsigned __int8 *a2)
{
  v29 = +[NSMutableArray array];
  v4 = *(a1 + 8);
  v5 = *(v4 + 120);
  for (i = *(v4 + 128); v5 != i; v5 += 112)
  {
    v7 = qword_100BCE918;
    if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_INFO))
    {
      sub_10003B85C(a2, v34);
      v8 = v36;
      v9 = v34[0];
      sub_10007FC10(v5);
      v10 = v34;
      if (v8 < 0)
      {
        v10 = v9;
      }

      if (v33 >= 0)
      {
        v11 = __p;
      }

      else
      {
        v11 = *__p;
      }

      *buf = 136315394;
      *&buf[4] = v10;
      *&buf[12] = 2080;
      *&buf[14] = v11;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "enhancedUUIDRulesForUUID uuid:%s filter:%s", buf, 0x16u);
      if (v33 < 0)
      {
        operator delete(*__p);
      }

      if (v36 < 0)
      {
        operator delete(v34[0]);
      }
    }

    if (*(v5 + 104) == 1)
    {
      *v34 = *(v5 + 20);
      v35 = *(v5 + 36);
      if (sub_10004E15C(v34, a2))
      {
        v12 = +[NSMutableDictionary dictionary];
        v13 = v12;
        v14 = *(v5 + 72);
        v15 = *(v5 + 73);
        v16 = *(v5 + 79);
        v17 = *a2;
        if (v17 == 2 || v17 == 16)
        {
          *buf = 0;
          *&buf[8] = 0;
          sub_10007A930(a2, buf);
          if (sub_10000C5E0(v5 + 40) && sub_10000C5E0(v5 + 56) || (v16 & 1) == 0)
          {
            if (v14 >= 0)
            {
              LOBYTE(v14) = -87;
            }

            v18 = [NSData dataWithBytes:buf length:*a2];
            [v13 setObject:v18 forKeyedSubscript:@"uuid"];

            v19 = sub_10000C5F8(v5 + 40);
            v20 = [NSData dataWithBytes:v19 length:sub_10000C5E0(v5 + 40)];
            [v13 setObject:v20 forKeyedSubscript:@"data"];

            v21 = sub_10000C5F8(v5 + 56);
            v22 = [NSData dataWithBytes:v21 length:sub_10000C5E0(v5 + 56)];
            [v13 setObject:v22 forKeyedSubscript:@"mask"];

            v23 = [NSNumber numberWithChar:v14];
            [v13 setObject:v23 forKeyedSubscript:@"rssi"];

            v24 = [NSNumber numberWithBool:v15 != 0];
            [v13 setObject:v24 forKeyedSubscript:@"allowDups"];

            v25 = [NSNumber numberWithBool:v16];
            [v13 setObject:v25 forKeyedSubscript:@"configController"];

            [v29 addObject:v13];
            v26 = qword_100BCE918;
            if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_INFO))
            {
              sub_10007FC10(v5);
              v27 = v34;
              if (v36 < 0)
              {
                v27 = v34[0];
              }

              *__p = 136315394;
              *&__p[4] = v27;
              v31 = 2112;
              v32 = v13;
              _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, "enhancedRule %s converted to %@", __p, 0x16u);
              if (v36 < 0)
              {
                operator delete(v34[0]);
              }
            }
          }
        }

        else
        {
        }
      }
    }
  }

  return v29;
}

uint64_t sub_10007FB9C(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  if (a2 + 8 == sub_10007C324(a2, a3))
  {
    return -87;
  }

  else
  {
    return *(sub_1007B25FC(a2, a3) + 48);
  }
}

uint64_t sub_10007FC10(uint64_t a1)
{
  v44 = 0;
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  *v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  memset(v31, 0, sizeof(v31));
  sub_100008760(&v30);
  v2 = sub_100007774(&v30);
  sub_100007E30(&__p, off_100B05158[*(a1 + 104)]);
  v3 = sub_100007774(v2);
  sub_100007774(v3);
  v4 = std::ostream::operator<<();
  v5 = sub_100007774(v4);
  strlen([*a1 UTF8String]);
  v6 = sub_100007774(v5);
  v7 = sub_100007774(v6);
  strlen([*(a1 + 8) UTF8String]);
  sub_100007774(v7);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v8 = *(a1 + 104);
  if (v8 == 2)
  {
    sub_100007774(&v30);
    std::ostream::operator<<();
  }

  else if (v8 == 1)
  {
    v9 = sub_100007774(&v30);
    sub_10003B85C(a1 + 20, &__p);
    sub_100007774(v9);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  if (!sub_10000D26C(a1 + 40))
  {
    v10 = sub_100007774(&v30);
    sub_10000C250(a1 + 40, &__p);
    sub_100007774(v10);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  if (!sub_10000D26C(a1 + 56))
  {
    v11 = sub_100007774(&v30);
    sub_10000C250(a1 + 56, &__p);
    sub_100007774(v11);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  if (*(a1 + 104) == 3)
  {
    v12 = *(a1 + 80);
    if (v12 > 1)
    {
      if (v12 == 1000)
      {
        v13 = "NSStringCompareOptions";
      }

      else
      {
        v13 = "EndsWith";
      }
    }

    else if (v12)
    {
      v13 = "StartsWith";
    }

    else
    {
      v13 = "Contains";
    }

    sub_100007E30(&__p, v13);
    sub_100007774(&v30);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (*(a1 + 80) == 1000)
    {
      sub_10067C3E8(a1, *(a1 + 88));
      sub_100007774(&v30);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    v14 = sub_100007774(&v30);
    strlen([*(a1 + 96) UTF8String]);
    sub_100007774(v14);
  }

  v15 = sub_100007774(&v30);
  std::to_string(&__p, *(a1 + 72));
  v16 = sub_100007774(v15);
  v17 = sub_100007774(v16);
  std::to_string(&v28, *(a1 + 76));
  v18 = sub_100007774(v17);
  v19 = sub_100007774(v18);
  std::to_string(&v27, *(a1 + 77));
  v20 = sub_100007774(v19);
  v21 = sub_100007774(v20);
  std::to_string(&v26, *(a1 + 78));
  sub_100007774(v21);
  if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v26.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v27.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v28.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v22 = sub_100007774(&v30);
  std::to_string(&__p, *(a1 + 73));
  v23 = sub_100007774(v22);
  v24 = sub_100007774(v23);
  std::to_string(&v28, *(a1 + 74));
  sub_100007774(v24);
  if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v28.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  std::stringbuf::str();
  if (SHIBYTE(v33) < 0)
  {
    operator delete(v32[1]);
  }

  std::locale::~locale(v31);
  std::ostream::~ostream();
  return std::ios::~ios();
}

void sub_1000802D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32, char a33)
{
  if (a32 < 0)
  {
    operator delete(__p);
  }

  sub_1003B8618(&a33);
  _Unwind_Resume(a1);
}

uint64_t sub_100080394(uint64_t a1, unsigned __int8 *a2)
{
  v4 = 0;
  v2 = *sub_10004E3C8(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

id sub_10008043C(uint64_t a1, int a2, _DWORD *a3)
{
  v37 = +[NSMutableArray array];
  v4 = *(a1 + 8);
  v5 = *(v4 + 88);
  v6 = *(v4 + 96);
  if (v5 != v6)
  {
    v34 = *(v4 + 96);
    do
    {
      v7 = *(v5 + 48);
      v8 = *(v5 + 8);
      v40 = *(v5 + 49);
      v9 = *(v5 + 50);
      v10 = *(v5 + 51);
      v11 = *(v5 + 52);
      v12 = *(v5 + 56);
      if (*(v5 + 68))
      {
        v13 = *(v5 + 65);
        v39 = v12;
        v14 = [v12 count];
        v38 = v13;
        v15 = a2;
        if (!v14)
        {
          v15 = 1;
        }

        if (v15)
        {
          v16 = 2;
        }

        else
        {
          v16 = 3;
        }

        v17 = +[NSMutableDictionary dictionary];
        v18 = sub_10000C5F8(v5 + 16);
        v19 = [NSData dataWithBytes:v18 length:sub_10000C5E0(v5 + 16)];
        [v17 setObject:v19 forKeyedSubscript:@"data"];

        v20 = sub_10000C5F8(v5 + 32);
        v21 = [NSData dataWithBytes:v20 length:sub_10000C5E0(v5 + 32)];
        [v17 setObject:v21 forKeyedSubscript:@"mask"];

        v22 = [NSNumber numberWithChar:v7];
        [v17 setObject:v22 forKeyedSubscript:@"rssi"];

        v23 = [NSNumber numberWithUnsignedChar:v8];
        [v17 setObject:v23 forKeyedSubscript:@"puckType"];

        v24 = [NSNumber numberWithUnsignedChar:v16];
        [v17 setObject:v24 forKeyedSubscript:@"matchAllDevices"];

        v25 = [NSNumber numberWithUnsignedLongLong:0];
        [v17 setObject:v25 forKeyedSubscript:@"address"];

        v26 = [NSNumber numberWithUnsignedChar:v9];
        [v17 setObject:v26 forKeyedSubscript:@"bypassFilterDuplicate"];

        v27 = [NSNumber numberWithUnsignedChar:v10];
        [v17 setObject:v27 forKeyedSubscript:@"targetCore"];

        v28 = [NSNumber numberWithUnsignedChar:v11];
        [v17 setObject:v28 forKeyedSubscript:@"rssithresholdOrder"];

        v29 = [NSNumber numberWithBool:v38];
        [v17 setObject:v29 forKeyedSubscript:@"shouldConsolidateRule"];

        v30 = [NSNumber numberWithBool:*(v5 + 66)];
        [v17 setObject:v30 forKeyedSubscript:@"report127dBm"];

        v31 = [NSNumber numberWithBool:*(v5 + 67)];
        [v17 setObject:v31 forKeyedSubscript:@"report27dBm"];

        [v37 addObject:v17];
        v32 = 1 << v8;
        if (!v40)
        {
          v32 = 0;
        }

        *a3 |= v32;

        v12 = v39;
        v6 = v34;
      }

      v5 += 96;
    }

    while (v5 != v6);
  }

  return v37;
}

void sub_100080858(uint64_t a1, void *a2)
{
  v2 = a2;
  v74 = +[NSMutableArray array];
  if (sub_1000814FC(v74, v2))
  {
    v3 = sub_10000C798();
    if (!(*(*v3 + 1048))(v3))
    {
      goto LABEL_10;
    }

    if (*(a1 + 4426) != 1)
    {
      goto LABEL_10;
    }

    v4 = [v2 objectForKeyedSubscript:@"puckType"];
    v5 = [v4 unsignedIntValue];

    if (v5 != 16 && v5 != 7)
    {
      goto LABEL_10;
    }

    v6 = qword_100BCE918;
    if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_INFO))
    {
      v7 = sub_10079D8BC(v5);
      v8 = *(a1 + 4426);
      *buf = 67109890;
      *&buf[4] = v5;
      *&buf[8] = 2080;
      *&buf[10] = v7;
      *&buf[18] = 1024;
      *&buf[20] = v8;
      *&buf[24] = 1024;
      *&buf[26] = 1;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "LeObserver::addUniqueMatchRulesToDictionary ignoring type %d(%s) fSystemWillSleep:%d requiresWA:%d", buf, 0x1Eu);
    }

    if (v5 != 7 && v5 != 16)
    {
LABEL_10:
      v84 = 0u;
      v85 = 0u;
      v82 = 0u;
      v83 = 0u;
      obj = *(a1 + 4392);
      v9 = [obj countByEnumeratingWithState:&v82 objects:v96 count:16];
      if (v9)
      {
        v76 = *v83;
        *&v10 = 67109632;
        v68 = v10;
        do
        {
          v77 = v9;
          for (i = 0; i != v77; i = i + 1)
          {
            if (*v83 != v76)
            {
              objc_enumerationMutation(obj);
            }

            v12 = *(*(&v82 + 1) + 8 * i);
            v13 = [v12 objectForKeyedSubscript:{@"puckType", v68}];
            v14 = [v2 objectForKeyedSubscript:@"puckType"];
            v15 = [v13 isEqual:v14];

            if (!v15)
            {
              continue;
            }

            v16 = qword_100BCE918;
            if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_INFO))
            {
              v17 = [v12 objectForKeyedSubscript:@"puckType"];
              v18 = [v2 objectForKeyedSubscript:@"shouldConsolidateRule"];
              v19 = [v18 BOOLValue];
              *buf = 138413058;
              *&buf[4] = v17;
              *&buf[12] = 1024;
              *&buf[14] = v19;
              *&buf[18] = 2112;
              *&buf[20] = v12;
              *&buf[28] = 2112;
              *&buf[30] = v2;
              _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "Already have this rule for type %@ consolidate %d %@ new rule %@.", buf, 0x26u);
            }

            v20 = [v12 objectForKeyedSubscript:@"bypassFilterDuplicate"];
            v21 = [v2 objectForKeyedSubscript:@"bypassFilterDuplicate"];
            if (([v20 isEqualToNumber:v21] & 1) == 0)
            {

LABEL_22:
              v25 = qword_100BCE918;
              if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_INFO))
              {
                v26 = [v12 objectForKeyedSubscript:@"puckType"];
                v27 = [v12 objectForKeyedSubscript:@"bypassFilterDuplicate"];
                v28 = [v12 objectForKeyedSubscript:@"rssi"];
                v29 = [v2 objectForKeyedSubscript:@"bypassFilterDuplicate"];
                v30 = [v2 objectForKeyedSubscript:@"rssi"];
                *buf = 138413314;
                *&buf[4] = v26;
                *&buf[12] = 2112;
                *&buf[14] = v27;
                *&buf[22] = 2112;
                *&buf[24] = v28;
                *&buf[32] = 2112;
                *&buf[34] = v29;
                v94 = 2112;
                v95 = v30;
                _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_INFO, "Consolidate rules type %@ old bypassFilterDuplicate %@ rssi %@ new bypassFilterDuplicate %@ rssi %@", buf, 0x34u);
              }

              goto LABEL_24;
            }

            v22 = [v12 objectForKeyedSubscript:@"rssi"];
            v23 = [v2 objectForKeyedSubscript:@"rssi"];
            v24 = [v22 isEqualToNumber:v23];

            if ((v24 & 1) == 0)
            {
              goto LABEL_22;
            }

LABEL_24:
            v31 = [v2 objectForKeyedSubscript:@"shouldConsolidateRule"];
            if (v31)
            {
              v32 = [v2 objectForKeyedSubscript:@"shouldConsolidateRule"];
              v33 = [v32 BOOLValue];

              v34 = v33 ^ 1;
            }

            else
            {
              v34 = 0;
            }

            v35 = [v12 objectForKeyedSubscript:@"shouldConsolidateRule"];
            if (v35)
            {
              v36 = [v12 objectForKeyedSubscript:@"shouldConsolidateRule"];
              v37 = [v36 BOOLValue];

              v38 = v37 ^ 1;
            }

            else
            {
              v38 = 0;
            }

            if (((v34 | v38) & 1) == 0)
            {
              goto LABEL_43;
            }

            v39 = [v2 objectForKeyedSubscript:@"data"];
            v40 = [v12 objectForKeyedSubscript:@"data"];
            v41 = v40;
            if (!v39 || !v40)
            {
              goto LABEL_42;
            }

            memset(buf, 0, 25);
            v73 = +[NSData dataWithBytes:length:](NSData, "dataWithBytes:length:", buf, [v39 length]);
            v42 = +[NSData dataWithBytes:length:](NSData, "dataWithBytes:length:", buf, [v41 length]);
            if ([v41 isEqualToData:v42] & 1) != 0 || (objc_msgSend(v39, "isEqualToData:", v73) & 1) != 0 || (objc_msgSend(v41, "isEqualToData:", v39))
            {
              if ([v41 isEqualToData:v39] & 1) != 0 || (objc_msgSend(v12, "objectForKeyedSubscript:", @"matchAllDevices"), v43 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v2, "objectForKeyedSubscript:", @"matchAllDevices"), v44 = objc_claimAutoreleasedReturnValue(), v45 = objc_msgSend(v43, "isEqualToNumber:", v44), v44, v43, (v45))
              {
                v46 = [v12 objectForKeyedSubscript:@"rssi"];
                v47 = [v2 objectForKeyedSubscript:@"rssi"];
                v48 = [v46 isEqualToNumber:v47];

                v49 = qword_100BCE918;
                if (v48)
                {
                  if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEBUG))
                  {
                    v71 = [v2 objectForKeyedSubscript:@"puckType"];
                    v69 = [v71 intValue];
                    v70 = [v2 objectForKeyedSubscript:@"rssi"];
                    v58 = [v70 intValue];
                    v59 = [v2 objectForKeyedSubscript:@"shouldConsolidateRule"];
                    v60 = [v59 intValue];
                    *v87 = v68;
                    v88 = v69;
                    v89 = 1024;
                    v90 = v58;
                    v91 = 1024;
                    v92 = v60;
                    _os_log_debug_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEBUG, "New rule for type %d rssi:%d shouldConsolidate:%d is the same - consolidating", v87, 0x14u);
                  }

LABEL_42:
LABEL_43:
                  [v74 addObject:v12];
                  continue;
                }

                if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
                {
                  v50 = [v2 objectForKeyedSubscript:@"puckType"];
                  v51 = [v50 intValue];
                  *v87 = 67109120;
                  v88 = v51;
                  _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEFAULT, "rssi is different for type %d - ignore consolidating", v87, 8u);
                }
              }

              else
              {
                v52 = qword_100BCE918;
                if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
                {
                  v53 = [v2 objectForKeyedSubscript:@"puckType"];
                  v54 = [v53 intValue];
                  *v87 = 67109120;
                  v88 = v54;
                  _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_DEFAULT, "device filer is different for type %d - ignore consolidating", v87, 8u);
                }
              }
            }

            else
            {
              v55 = qword_100BCE918;
              if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
              {
                v56 = [v2 objectForKeyedSubscript:@"puckType"];
                v57 = [v56 intValue];
                *v87 = 67109120;
                v88 = v57;
                _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEFAULT, "non-zero data is different for type %d - ignore consolidating", v87, 8u);
              }
            }
          }

          v9 = [obj countByEnumeratingWithState:&v82 objects:v96 count:16];
        }

        while (v9);
      }

      if ([v74 count])
      {
        v61 = [v2 copy];
        v80 = 0u;
        v81 = 0u;
        v78 = 0u;
        v79 = 0u;
        v62 = v74;
        v63 = [v62 countByEnumeratingWithState:&v78 objects:v86 count:16];
        v64 = v63;
        if (v63)
        {
          v65 = *v79;
          do
          {
            v66 = 0;
            v67 = v61;
            do
            {
              if (*v79 != v65)
              {
                objc_enumerationMutation(v62);
              }

              v61 = sub_1000816F8(v63, *(*(&v78 + 1) + 8 * v66), v67);

              v66 = v66 + 1;
              v67 = v61;
            }

            while (v64 != v66);
            v63 = [v62 countByEnumeratingWithState:&v78 objects:v86 count:16];
            v64 = v63;
          }

          while (v63);
        }

        [*(a1 + 4392) removeObjectsInArray:v62];
        [*(a1 + 4392) addObject:v61];
      }

      else
      {
        [*(a1 + 4392) addObject:v2];
      }
    }
  }
}

uint64_t sub_1000814FC(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 objectForKeyedSubscript:@"data"];
  v4 = [v3 length];

  v5 = [v2 objectForKeyedSubscript:@"mask"];
  v6 = [v5 length];

  v7 = sub_10000C7D0();
  v8 = v4;
  if (v4 <= (*(*v7 + 4128))(v7) && (v9 = sub_10000C7D0(), v6 <= (*(*v9 + 4128))(v9)))
  {
    v11 = 1;
  }

  else
  {
    v10 = qword_100BCE918;
    if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_ERROR))
    {
      v13 = [v2 objectForKeyedSubscript:@"puckType"];
      v14[0] = 67109890;
      v14[1] = v8;
      v15 = 1024;
      v16 = v6;
      v17 = 2112;
      v18 = v13;
      v19 = 2112;
      v20 = v2;
      _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "The blobLen(%d) and maskLen(%d) are not support for this rule type %@, %@ ", v14, 0x22u);
    }

    v11 = 0;
  }

  return v11;
}

id sub_1000816F8(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 mutableCopy];
  v7 = [v4 objectForKeyedSubscript:@"bypassFilterDuplicate"];
  v8 = [v7 unsignedIntValue];

  v9 = [v5 objectForKeyedSubscript:@"bypassFilterDuplicate"];
  LOBYTE(v7) = [v9 unsignedIntValue];

  v10 = [v4 objectForKeyedSubscript:@"rssi"];
  v11 = [v10 intValue];

  v12 = [v5 objectForKeyedSubscript:@"rssi"];
  v13 = [v12 intValue];

  v14 = (v8 | v7) != 0;
  if ((v11 << 24) >= (v13 << 24))
  {
    v15 = v13;
  }

  else
  {
    v15 = v11;
  }

  v16 = [NSNumber numberWithUnsignedChar:v14];
  [v6 setObject:v16 forKeyedSubscript:@"bypassFilterDuplicate"];

  v17 = [NSNumber numberWithChar:v15];
  [v6 setObject:v17 forKeyedSubscript:@"rssi"];

  v18 = [v4 objectForKeyedSubscript:@"mask"];
  v19 = [v5 objectForKeyedSubscript:@"mask"];
  v20 = v19;
  memset(v27, 0, sizeof(v27));
  v28 = 0;
  if (v18)
  {
    if (v19)
    {
      v21 = [v18 length];
      if (v21 == [v20 length] && objc_msgSend(v18, "length") && objc_msgSend(v20, "length"))
      {
        v22 = +[NSData dataWithBytes:length:](NSData, "dataWithBytes:length:", v27, [v18 length]);
        if ([v18 isEqual:v22])
        {
        }

        else
        {
          v23 = +[NSData dataWithBytes:length:](NSData, "dataWithBytes:length:", v27, [v20 length]);
          v24 = [v20 isEqual:v23];

          if (!v24)
          {
            goto LABEL_13;
          }
        }
      }
    }
  }

  [v6 setObject:0 forKeyedSubscript:@"mask"];
  [v6 setObject:0 forKeyedSubscript:@"data"];
LABEL_13:
  v25 = [v6 copy];

  return v25;
}

uint64_t sub_100081A70(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1[200] == 9)
  {
    __p = 0;
    v17 = 0;
    v18 = 0;
    v2 = sub_10009BD9C();
    v3 = (*(*v2 + 64))(v2, &__p);
    v4 = HIBYTE(v18);
    if (v3)
    {
      goto LABEL_3;
    }

    if (v18 < 0)
    {
      v12 = v17;
      if (!v17)
      {
LABEL_4:
        operator delete(__p);
        goto LABEL_5;
      }

      p_p = __p;
      goto LABEL_23;
    }

    if (HIBYTE(v18))
    {
      p_p = &__p;
      v12 = HIBYTE(v18);
LABEL_23:
      if (v12 >= 2)
      {
        v13 = &p_p[v12];
        v14 = p_p;
        do
        {
          v15 = memchr(v14, 66, v12 - 1);
          if (!v15)
          {
            break;
          }

          if (*v15 == 12354)
          {
            if (v15 != v13 && v15 - p_p != -1)
            {
              v1[343] &= ~0x100000u;
            }

            break;
          }

          v14 = v15 + 1;
          v12 = v13 - v14;
        }

        while (v13 - v14 >= 2);
      }

LABEL_3:
      if ((v4 & 0x80) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

LABEL_5:
  v5 = sub_10000C7D0();
  if (sub_10008215C(v5, 100))
  {
    v1[343] |= 0x2000000u;
  }

  if ((*(*v1 + 3152))(v1))
  {
    v1[343] |= 0x4000000u;
  }

  if ((*(*v1 + 2624))(v1))
  {
    v1[343] |= 0x1000000u;
  }

  v6 = sub_10000C798();
  if ((*(*v6 + 792))(v6))
  {
    v1[343] |= 0x8000000u;
  }

  v7 = sub_10000C798();
  if ((*(*v7 + 808))(v7))
  {
    v1[343] |= 0x10000000u;
  }

  v8 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_INFO))
  {
    v9 = v1[343];
    LODWORD(__p) = 67109120;
    HIDWORD(__p) = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "fEnabledFeatures: %x", &__p, 8u);
  }

  return sub_100082540();
}

void sub_100081D44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t **sub_100081E2C(uint64_t **result, void *a2, void *a3)
{
  v5 = result;
  if (result[2])
  {
    v6 = *result;
    v7 = result[1];
    *result = (result + 1);
    v7[2] = 0;
    result[1] = 0;
    result[2] = 0;
    if (v6[1])
    {
      v8 = v6[1];
    }

    else
    {
      v8 = v6;
    }

    v13 = result;
    v14 = v8;
    v15 = v8;
    if (v8)
    {
      v14 = sub_100083B10(v8);
      if (a2 != a3)
      {
        v9 = a2;
        do
        {
          v10 = *(v9 + 28);
          *(v8 + 11) = *(v9 + 11);
          *(v8 + 28) = v10;
          *(v8 + 24) = *(v9 + 24);
          sub_100713EE8(v5, v8);
          v8 = v14;
          v15 = v14;
          if (v14)
          {
            v14 = sub_100083B10(v14);
          }

          v11 = v9[1];
          if (v11)
          {
            do
            {
              a2 = v11;
              v11 = *v11;
            }

            while (v11);
          }

          else
          {
            do
            {
              a2 = v9[2];
              v12 = *a2 == v9;
              v9 = a2;
            }

            while (!v12);
          }

          if (!v8)
          {
            break;
          }

          v9 = a2;
        }

        while (a2 != a3);
      }
    }

    result = sub_100084E60(&v13);
  }

  if (a2 != a3)
  {
    sub_100081D68();
  }

  return result;
}

void sub_100081F8C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100084E60(va);
  _Unwind_Resume(a1);
}

void sub_100081FA0(uint64_t a1, char a2)
{
  if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEBUG))
  {
    sub_100876FF0();
  }

  v4 = sub_10008205C();
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100072408;
  v5[3] = &unk_100AE15D8;
  v5[4] = a1;
  v6 = a2;
  sub_10000CA94(v4, v5);
}

uint64_t sub_10008205C()
{
  if (qword_100B6F028 != -1)
  {
    sub_100843ECC();
  }

  return qword_100B6F020;
}

void sub_100082094(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  v2 = *(v1 + 48);
  if (v2 != (v1 + 56))
  {
    do
    {
      if (qword_100B508D0 != -1)
      {
        sub_1008743BC();
      }

      sub_1000C7A50(off_100B508C8, v2 + 25);
      v4 = *(v2 + 1);
      if (v4)
      {
        do
        {
          v5 = v4;
          v4 = *v4;
        }

        while (v4);
      }

      else
      {
        do
        {
          v5 = *(v2 + 2);
          v6 = *v5 == v2;
          v2 = v5;
        }

        while (!v6);
      }

      v2 = v5;
    }

    while (v5 != (v1 + 56));
    v1 = *(*(a1 + 32) + 8);
  }

  v8 = *(v1 + 56);
  v7 = (v1 + 56);
  sub_10000CEDC((v7 - 1), v8);
  *v7 = 0;
  v7[1] = 0;
  *(v7 - 1) = v7;
}

uint64_t sub_10008215C(uint64_t a1, int a2)
{
  if (sub_100082218(a1))
  {
    goto LABEL_2;
  }

  v5 = *(a1 + 800);
  if (v5 - 1 > 0xF9E)
  {
    v4 = 0;
    return v4 & 1;
  }

  v4 = 0;
  if (a2 <= 4)
  {
    if ((a2 - 2) >= 3)
    {
      if (a2 < 2)
      {
        v4 = *(a1 + 415);
      }

      return v4 & 1;
    }

    goto LABEL_12;
  }

  switch(a2)
  {
    case 5:
      goto LABEL_16;
    case 6:
      v4 = *(a1 + 440);
      return v4 & 1;
    case 100:
LABEL_12:
      if (v5 <= 0x7CF)
      {
        if (v5 - 20 >= 6)
        {
          goto LABEL_16;
        }

LABEL_2:
        v4 = 1;
        return v4 & 1;
      }

      if (v5 != 2000)
      {
        goto LABEL_2;
      }

LABEL_16:
      v4 = *(a1 + 436);
      break;
  }

  return v4 & 1;
}

uint64_t sub_100082218(uint64_t a1)
{
  if ((*(a1 + 800) - 5000) < 0x3E8)
  {
    return 1;
  }

  v3 = _os_feature_enabled_impl();
  v4 = *(a1 + 800);
  if ((v4 - 2001) < 0x7CF)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0;
  }

  if (v4 == 6000)
  {
    return 1;
  }

  else
  {
    return v5;
  }
}

uint64_t sub_100082288(uint64_t a1)
{
  v1 = *(a1 + 800);
  if (!v1)
  {
    goto LABEL_4;
  }

  if (v1 <= 0x7CF)
  {
    if (v1 <= 0x13)
    {
LABEL_4:
      v2 = 0;
      return v2 & 1;
    }

LABEL_7:
    v2 = *(a1 + 1400) ^ 1;
    return v2 & 1;
  }

  v2 = 0;
  if (v1 <= 0xF9F && v1 != 2000)
  {
    goto LABEL_7;
  }

  return v2 & 1;
}

uint64_t sub_1000822E0(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10049BD90;
  block[3] = &unk_100ADF8F8;
  block[4] = a1;
  if (qword_100B6E590 != -1)
  {
    dispatch_once(&qword_100B6E590, block);
  }

  return byte_100B6E588;
}

uint64_t sub_100082370()
{
  if (qword_100B6E5B0 != -1)
  {
    sub_10083142C();
  }

  return byte_100B6E5A8;
}

uint64_t sub_1000823A8(int a1, uint64_t (*a2)())
{
  v11 = 0;
  v12 = 0;
  result = sub_10001FFD8(&v11);
  if (!result)
  {
    if (HIBYTE(v12))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
    }

    else
    {
      v8 = WORD2(v12);
      if (WORD1(v12) > WORD2(v12))
      {
        if (BYTE6(v12) == 2)
        {
          ++WORD2(v12);
          *(v11 + v8) = 1;
          if (HIBYTE(v12))
          {
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
          }

          else if (WORD1(v12) - WORD2(v12) > 3)
          {
            if (BYTE6(v12) == 2)
            {
              *(v11 + WORD2(v12)) = a1;
              *(v11 + WORD2(v12) + 2) = BYTE2(a1);
              *(v11 + WORD2(v12) + 3) = HIBYTE(a1);
              WORD2(v12) += 4;
              return sub_100020078(233, v11, BYTE4(v12), a2, sub_100022AD0, v5, v6, v7);
            }

            v10 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_17:
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 3132, v10);
          }

          v10 = "ByteStream_NumReadBytesAvail(bs) >= 4";
          goto LABEL_17;
        }

        v9 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_13:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 3131, v9);
      }
    }

    v9 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_13;
  }

  return result;
}

uint64_t sub_100082540()
{
  if (off_100B60668)
  {
    v0 = off_100B60668();
    if (!v0)
    {
      return v0;
    }
  }

  else
  {
    v0 = 3601;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("VSC failed %!", v1, v2, v3, v4, v5, v6, v7, v0);
    v8 = sub_10000C050(0x54u);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }

  return v0;
}

uint64_t sub_1000825CC(int a1)
{
  if (qword_100B50AA0 != -1)
  {
    sub_100093618();
  }

  return sub_100022748(a1, 0xE5u);
}

void sub_10008261C(uint64_t a1, char a2)
{
  if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEBUG))
  {
    sub_1008775C0();
  }

  v4 = sub_100007EE8();
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000826D4;
  v5[3] = &unk_100AE15D8;
  v5[4] = a1;
  v6 = a2;
  sub_10000CA94(v4, v5);
}

uint64_t sub_1000826D4(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEBUG))
  {
    sub_100877648();
  }

  sub_10007F460(v2);
  *(v2 + 4328) = 0;
  *(v2 + 1858) = *(a1 + 40);
  return sub_100017DE0(v2, 1);
}

uint64_t sub_100082750(uint64_t a1)
{
  v2 = sub_10000C798();
  if ((*(*v2 + 632))(v2))
  {
    v3 = *(a1 + 2064);
    if (v3 != (a1 + 2072))
    {
      v4 = 0;
      while (1)
      {
        if (sub_1000178BC(v3[5]))
        {
          if (!sub_100028FB4(v3[5]))
          {
            v5 = v3[5];
            if (*(*(v5 + 8) + 172) != 1 || (*(a1 + 1255) & 1) == 0)
            {
              break;
            }
          }
        }

LABEL_15:
        v8 = v3[1];
        if (v8)
        {
          do
          {
            v9 = v8;
            v8 = *v8;
          }

          while (v8);
        }

        else
        {
          do
          {
            v9 = v3[2];
            v10 = *v9 == v3;
            v3 = v9;
          }

          while (!v10);
        }

        v3 = v9;
        if (v9 == (a1 + 2072))
        {
          goto LABEL_23;
        }
      }

      v6 = *(v5 + 81);
      if (v6 != 16 && v6 != 32)
      {
        if (!sub_10000D1C8(v5))
        {
LABEL_14:
          v4 |= *(*(v3[5] + 8) + 312);
          goto LABEL_15;
        }

        v5 = v3[5];
      }

      v7 = sub_100024BE0(v5);
      if (v7[1] != *v7 && (sub_10003C8E8(v3[5]) & 1) != 0)
      {
        goto LABEL_22;
      }

      goto LABEL_14;
    }
  }

LABEL_22:
  v4 = 0;
LABEL_23:
  v11 = qword_100BCE918;
  if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
  {
    v13[0] = 67109120;
    v13[1] = v4 & 1;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "overrideEnableGlobalDupFilter:%d", v13, 8u);
  }

  return v4 & 1;
}

uint64_t sub_10008290C(uint64_t a1, char a2)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100082B9C;
  v3[3] = &unk_100AF2270;
  v4 = a2;
  return sub_10002173C(a1, 225, 1, v3, 0);
}

uint64_t sub_100082984(char a1, uint64_t (*a2)())
{
  v12 = 0;
  v13 = 0;
  result = sub_10001FFD8(&v12);
  if (!result)
  {
    if (HIBYTE(v13))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
    }

    else if (WORD1(v13) - WORD2(v13) > 3)
    {
      if (BYTE6(v13) == 2)
      {
        *(v12 + WORD2(v13)) = 54;
        *(v12 + WORD2(v13) + 1) = 0;
        *(v12 + WORD2(v13) + 3) = 0;
        v8 = WORD2(v13);
        v9 = WORD2(v13) + 4;
        WORD2(v13) += 4;
        if (HIBYTE(v13))
        {
          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
        }

        else if (WORD1(v13) > v9)
        {
          if (BYTE6(v13) == 2)
          {
            WORD2(v13) = v8 + 5;
            *(v12 + v9) = a1;
            return sub_100020078(226, v12, BYTE4(v13), a2, sub_100083FE4, v5, v6, v7);
          }

          v11 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_17:
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 6283, v11);
        }

        v11 = "ByteStream_NumReadBytesAvail(bs) >= 1";
        goto LABEL_17;
      }

      v10 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_13:
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 6282, v10);
    }

    v10 = "ByteStream_NumReadBytesAvail(bs) >= 4";
    goto LABEL_13;
  }

  return result;
}

uint64_t sub_100082B10()
{
  if (off_100B60638)
  {
    v0 = off_100B60638();
    if (!v0)
    {
      return v0;
    }
  }

  else
  {
    v0 = 3601;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("VSC failed %!", v1, v2, v3, v4, v5, v6, v7, v0);
    v8 = sub_10000C050(0x54u);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }

  return v0;
}

void sub_100082BB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a1;
  v10 = qword_100B6B1D8;
  v9 = qword_100B6B1E0;
  v37 = xmmword_100B6B1E8;
  v36 = WORD1(xmmword_100B6B1E8);
  if (WORD5(xmmword_100B6B1E8) | WORD4(xmmword_100B6B1E8))
  {
    v11 = WORD1(xmmword_100B6B1E8) == 0;
  }

  else
  {
    v11 = 1;
  }

  if (v11 || (byte_100B6B218 & 1) == 0)
  {
LABEL_10:

    sub_10008518C(a1, a2, a3, a4, a5, a6, a7, a8);
    return;
  }

  *&v38[3] = 0;
  *v38 = 0;
  if (sub_100084230() >= 0x7D0 && sub_100084230() <= 0xF9F && sub_100084230() >= 0xBB8)
  {
    v12 = WORD4(xmmword_100B6B1E8);
    v13 = WORD5(xmmword_100B6B1E8);
    goto LABEL_19;
  }

  v13 = WORD5(xmmword_100B6B1E8);
  v12 = WORD4(xmmword_100B6B1E8);
  if (!WORD5(xmmword_100B6B1E8) || !WORD4(xmmword_100B6B1E8))
  {
LABEL_19:
    if (v12)
    {
      v13 = v12;
      v22 = 4;
    }

    else
    {
      v22 = 8;
    }

    v35 = v13;
    if (v8)
    {
      if (sub_10000C240())
      {
        sub_10000AF54("Could not start LE scan (leScanParamsScanCoreCb): %!", v23, v24, v25, v26, v27, v28, v29, v8);
        v30 = sub_10000C050(0x42u);
        if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
        {
          sub_10080F7A0();
        }
      }

      xmmword_100B6B1E8 = 0u;
      *&byte_100B6B1F8 = 0u;
      unk_100B6B1C8 = 0u;
      *&qword_100B6B1D8 = 0u;
      byte_100B6B212 = 0;
      if (v10)
      {
        v10(v8, v9);
      }

      else
      {
        sub_1000D660C();
      }

      return;
    }

    if (byte_100B6B218 == 1 && byte_100B6B215 == 1)
    {
      sub_1000841FC(v38);
      if (byte_100B6B216)
      {
        v31 = 2;
      }

      else
      {
        v31 = 1;
      }

      byte_100B6B1F8 = v31;
      if (sub_100084230() >= 0x7D0 && sub_100084230() <= 0xF9F && sub_100084230() >= 0xBB8 && WORD5(xmmword_100B6B1E8) && WORD4(xmmword_100B6B1E8))
      {
        v32 = v38[0];
        v33 = BYTE13(xmmword_100B6B1E8);
        v34 = byte_100B6B1F8;
      }

      else
      {
        v32 = v38[0];
        v33 = BYTE13(xmmword_100B6B1E8);
        v34 = byte_100B6B1F8;
      }

      sub_10008395C(v32, v33, 1, &v37, &v36, &v35, v34, v22);
      return;
    }

    a1 = 0;
    goto LABEL_10;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("ELNAOn and ELNAByass cannot be used with ScanCore together leScanWindowScanCoreELNAOn=%d leScanWindowScanCoreELNABypass=%d", v14, v15, v16, v17, v18, v19, v20, WORD3(xmmword_100B6B1E8));
    v21 = sub_10000C050(0x42u);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      sub_10080F7A0();
    }
  }

  sub_10008518C(v8, v14, v15, v16, v17, v18, v19, v20);
}

uint64_t sub_100082ED0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!dword_100BCE338)
  {
    return 103;
  }

  if ((qword_100B663B0 & 0x20) == 0)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Local device does not support active scanning.", v3, v4, v5, v6, v7, v8, v9, v43);
      v10 = sub_10000C050(0x42u);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    return 1330;
  }

  if (!a1)
  {
    sub_1000D660C();
    if (a2)
    {
      goto LABEL_10;
    }

LABEL_32:
    sub_1000D660C();
    goto LABEL_33;
  }

  if (!a2)
  {
    goto LABEL_32;
  }

LABEL_10:
  if (*a2 && *(a2 + 8) && a1 && *(a2 + 16))
  {
    if ((byte_100B663B8 & 0xA) != 0)
    {
      if (qword_100B663C0 || off_100B663D0 || off_100B663C8)
      {
        if (sub_10000C240())
        {
          sub_10000AF54("We are already scanning.", v35, v36, v37, v38, v39, v40, v41, v43);
          v42 = sub_10000C050(0x42u);
          if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
          {
            sub_1000E09C0();
          }
        }

        return 4060;
      }

      else
      {
        v15 = *(a1 + 4);
        if (!*(a1 + 4))
        {
          if (*(a1 + 1))
          {
            v15 = 2048;
          }

          else
          {
            v15 = 0;
          }
        }

        v16 = *(a1 + 6);
        if (!*(a1 + 6))
        {
          if (*(a1 + 1))
          {
            v16 = 18;
          }

          else
          {
            v16 = 0;
          }
        }

        result = sub_10008319C((*a1 & 1) == 0, v15, v16, *(a1 + 8), *(a1 + 12), *(a1 + 10), *(a1 + 2), *(a1 + 3), *(a1 + 16), *(a1 + 14), *(a1 + 15), *(a1 + 18), *(a1 + 19), *(a1 + 20), HIWORD(*(a1 + 20)), *(a1 + 24), HIBYTE(*(a1 + 24)), sub_100085620, sub_100008BB4, sub_10007BDEC, a3);
        if (!result)
        {
          if (*(a1 + 1))
          {
            v17 = 1;
          }

          else
          {
            v17 = 2;
          }

          byte_100B663D8 = v17;
          v18 = *(a2 + 16);
          *&qword_100B663C0 = *a2;
          off_100B663D0 = v18;
        }
      }
    }

    else
    {
      if (sub_10000C240())
      {
        sub_10000AF54("We can only scan in Central or Obeserver mode.", v27, v28, v29, v30, v31, v32, v33, v43);
        v34 = sub_10000C050(0x42u);
        if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
        {
          sub_1000E09C0();
        }
      }

      return 132;
    }

    return result;
  }

LABEL_33:
  if (sub_10000C240())
  {
    sub_10000AF54("Invalid parameters", v19, v20, v21, v22, v23, v24, v25, v43);
    v26 = sub_10000C050(0x42u);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      sub_1000E09C0();
    }
  }

  return 101;
}

uint64_t sub_10008319C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned __int8 a9, char a10, char a11, char a12, char a13, __int16 a14, __int16 a15, char a16, char a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21)
{
  *&v157[3] = 0;
  *v157 = 0;
  if (memcmp(&unk_100B6B1C8, "", 0x40uLL))
  {
    if (sub_10000C240())
    {
      sub_10000AF54("LE scan already in progress.", v29, v30, v31, v32, v33, v34, v35, v153);
      v36 = sub_10000C050(0x42u);
      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    return 118;
  }

  if (byte_100B6B210 == 1)
  {
    sub_1000D660C();
  }

  if (!a19 || !a18 || !a20)
  {
    if (!sub_10000C240())
    {
      return 101;
    }

    sub_10000AF54("Invalid callback functions", v46, v47, v48, v49, v50, v51, v52, v153);
    v53 = sub_10000C050(0x42u);
    if (!os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
    {
      return 101;
    }

LABEL_84:
    sub_10080F7A0();
    return 101;
  }

  if (!(a4 | a3 | a5 | a6))
  {
    if (!sub_10000C240())
    {
      return 101;
    }

    sub_10000AF54("Cannot start scan when both main and LP cores window is set to 0", v54, v55, v56, v57, v58, v59, v60, v153);
    v61 = sub_10000C050(0x42u);
    if (!os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
    {
      return 101;
    }

    goto LABEL_84;
  }

  if (a1 >= 2)
  {
    if (!sub_10000C240())
    {
      return 101;
    }

    sub_10000AF54("Invalid scan type parameters : %d", v38, v39, v40, v41, v42, v43, v44, a1);
    v45 = sub_10000C050(0x42u);
    if (!os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
    {
      return 101;
    }

    goto LABEL_84;
  }

  if (a2 && (a2 - 16385) <= 0xFFFFC002)
  {
    if (!sub_10000C240())
    {
      return 101;
    }

    sub_10000AF54("Invalid scan interval parameters : %d", v62, v63, v64, v65, v66, v67, v68, a2);
    v69 = sub_10000C050(0x42u);
    if (!os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
    {
      return 101;
    }

    goto LABEL_84;
  }

  if (a3 && (a3 - 16385) <= 0xFFFFC002)
  {
    if (!sub_10000C240())
    {
      return 101;
    }

    sub_10000AF54("Invalid scan interval parameters : %d", v70, v71, v72, v73, v74, v75, v76, a3);
    v77 = sub_10000C050(0x42u);
    if (!os_log_type_enabled(v77, OS_LOG_TYPE_ERROR))
    {
      return 101;
    }

    goto LABEL_84;
  }

  if (a4 && (a4 - 4) >= 0x3FFD)
  {
    if (!sub_10000C240())
    {
      return 101;
    }

    sub_10000AF54("Invalid scan window parameters for leScanWindowLPCore : %d", v78, v79, v80, v81, v82, v83, v84, a4);
    v85 = sub_10000C050(0x42u);
    if (!os_log_type_enabled(v85, OS_LOG_TYPE_ERROR))
    {
      return 101;
    }

    goto LABEL_84;
  }

  if (a5 && (a5 - 16385) <= 0xFFFFC002)
  {
    if (!sub_10000C240())
    {
      return 101;
    }

    sub_10000AF54("Invalid scan window parameters for leScanWindowScanCoreELNAOn : %d", v86, v87, v88, v89, v90, v91, v92, a5);
    v93 = sub_10000C050(0x42u);
    if (!os_log_type_enabled(v93, OS_LOG_TYPE_ERROR))
    {
      return 101;
    }

    goto LABEL_84;
  }

  if (a6 && (a6 - 16385) <= 0xFFFFC002)
  {
    if (!sub_10000C240())
    {
      return 101;
    }

    sub_10000AF54("Invalid scan window parameters for leScanWindowScanCoreELNABypass : %d", v94, v95, v96, v97, v98, v99, v100, a6);
    v101 = sub_10000C050(0x42u);
    if (!os_log_type_enabled(v101, OS_LOG_TYPE_ERROR))
    {
      return 101;
    }

    goto LABEL_84;
  }

  if (sub_100084230() >= 0x7D0 && sub_100084230() <= 0xF9F)
  {
    v102 = sub_100084230();
    if (!a5 || !a6 || v102 >= 0xBB8)
    {
      goto LABEL_58;
    }

    goto LABEL_55;
  }

  if (a5 && a6)
  {
LABEL_55:
    if (!sub_10000C240())
    {
      return 101;
    }

    sub_10000AF54("Invalid scan window parameters for leScanWindowScanCoreELNAOn : %d and leScanWindowScanCoreELNABypass : %d. Both cannot be used at the same time.", v103, v104, v105, v106, v107, v108, v109, a5);
    v110 = sub_10000C050(0x42u);
    if (!os_log_type_enabled(v110, OS_LOG_TYPE_ERROR))
    {
      return 101;
    }

    goto LABEL_84;
  }

LABEL_58:
  if (a7 >= 2)
  {
    if (!sub_10000C240())
    {
      return 101;
    }

    sub_10000AF54("Invalid scan filter : %d", v111, v112, v113, v114, v115, v116, v117, a7);
    v118 = sub_10000C050(0x42u);
    if (!os_log_type_enabled(v118, OS_LOG_TYPE_ERROR))
    {
      return 101;
    }

    goto LABEL_84;
  }

  if (a8 >= 2)
  {
    if (!sub_10000C240())
    {
      return 101;
    }

    sub_10000AF54("Invalid scan filter duplicate setting : %d", v119, v120, v121, v122, v123, v124, v125, a8);
    v126 = sub_10000C050(0x42u);
    if (!os_log_type_enabled(v126, OS_LOG_TYPE_ERROR))
    {
      return 101;
    }

    goto LABEL_84;
  }

  if (a9 >= 2u && (byte_100B6B211 & 1) == 0)
  {
    if (!sub_10000C240())
    {
      return 101;
    }

    sub_10000AF54("Invalid scan phy setting : %d", v136, v137, v138, v139, v140, v141, v142, a9);
    v143 = sub_10000C050(0x42u);
    if (!os_log_type_enabled(v143, OS_LOG_TYPE_ERROR))
    {
      return 101;
    }

    goto LABEL_84;
  }

  sub_1000841FC(v157);
  byte_100B6B212 = 1;
  unk_100B6B1C8 = a18;
  off_100B6B1D0 = a19;
  qword_100B6B1D8 = a20;
  qword_100B6B1E0 = a21;
  LOBYTE(xmmword_100B6B1E8) = a1;
  WORD1(xmmword_100B6B1E8) = a2;
  WORD2(xmmword_100B6B1E8) = a3;
  WORD3(xmmword_100B6B1E8) = a4;
  WORD4(xmmword_100B6B1E8) = a5;
  WORD5(xmmword_100B6B1E8) = a6;
  byte_100B6B202 = a11 != 0;
  BYTE12(xmmword_100B6B1E8) = a9;
  BYTE13(xmmword_100B6B1E8) = a7;
  BYTE14(xmmword_100B6B1E8) = a8;
  *(&xmmword_100B6B1E8 + 15) = 258;
  byte_100B6B1F9 = 1;
  byte_100B6B1FE = a10;
  if (!byte_100B6B213)
  {
    a12 = 0;
  }

  byte_100B6B1FF = a12;
  byte_100B6B203 = a13;
  word_100B6B204 = a14;
  word_100B6B206 = a15;
  byte_100B6B200 = a16;
  byte_100B6B201 = a17;
  v156[0] = a1;
  v156[1] = a1;
  v156[2] = a1;
  v155[0] = a2;
  v155[1] = a2;
  v155[2] = a2;
  v154[0] = a3;
  v154[1] = a3;
  v154[2] = a3;
  if (byte_100B6B214 == 1)
  {
    if ((byte_100B6B215 & 1) == 0 && (byte_100B6B213 & 1) == 0)
    {
      goto LABEL_73;
    }

LABEL_76:
    if (byte_100B6B216)
    {
      v135 = 2;
    }

    else
    {
      v135 = 1;
    }

    byte_100B6B1F8 = v135;
    if (!a2 || !a3)
    {
      sub_100084F40(0, v127, a9, v128, v129, v130, v131, v132);
      return 0;
    }

    v134 = sub_10008395C(v157[0], a7, a9, v156, v155, v154, v135, 1u);
    goto LABEL_89;
  }

  if (byte_100B6B213)
  {
    goto LABEL_76;
  }

LABEL_73:
  if (byte_100B6B216)
  {
    v134 = sub_100018960(215, sub_100084F40, a9, v128, v129, v130, v131, v132, v157[0]);
  }

  else
  {
    v134 = sub_100018960(171, sub_100084F40, a9, v128, v129, v130, v131, v132, a1);
  }

LABEL_89:
  v37 = v134;
  if (v134)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Could not start a LE scan %!", v145, v146, v147, v148, v149, v150, v151, v37);
      v152 = sub_10000C050(0x42u);
      if (os_log_type_enabled(v152, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    xmmword_100B6B1E8 = 0u;
    *&byte_100B6B1F8 = 0u;
    unk_100B6B1C8 = 0u;
    *&qword_100B6B1D8 = 0u;
    byte_100B6B212 = 0;
  }

  return v37;
}

uint64_t sub_10008395C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unsigned int a8)
{
  v8 = 101;
  if (a8 <= 8 && ((1 << a8) & 0x116) != 0)
  {
    if (off_100B605E0)
    {
      v8 = off_100B605E0(a1, a2, a3);
      if (!v8)
      {
        return v8;
      }
    }

    else
    {
      v8 = 3601;
    }

    if (sub_10000C240())
    {
      sub_10000AF54("VSC failed %!", v9, v10, v11, v12, v13, v14, v15, v8);
      v16 = sub_10000C050(0x54u);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        sub_10080F604();
      }
    }
  }

  return v8;
}

uint64_t sub_100083A20(unsigned int a1)
{
  if (a1 > 2)
  {
    v2 = 0;
  }

  else
  {
    if (qword_100BC7028 != -1)
    {
      dispatch_once(&qword_100BC7028, &stru_100B08060);
    }

    v2 = atomic_exchange(&byte_100BC7020[a1], 1u) ^ 1;
  }

  return v2 & 1;
}

uint64_t sub_100083A98(uint64_t a1, unsigned int a2, int a3)
{
  result = 7;
  if (a2 && a3)
  {
    v4 = 100 * a3 / a2;
    if (v4 <= 0x4B)
    {
      if (v4 <= 0x32)
      {
        if (v4 <= 0x22)
        {
          if (v4 <= 0xA)
          {
            if (v4 <= 4)
            {
              if (v4 > 1)
              {
                return 5;
              }

              else
              {
                return 6;
              }
            }

            else
            {
              return 4;
            }
          }

          else
          {
            return 3;
          }
        }

        else
        {
          return 2;
        }
      }

      else
      {
        return 1;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void *sub_100083B10(uint64_t a1)
{
  result = *(a1 + 16);
  if (result)
  {
    v3 = *result;
    if (*result == a1)
    {
      *result = 0;
      while (1)
      {
        v4 = result[1];
        if (!v4)
        {
          break;
        }

        do
        {
          result = v4;
          v4 = *v4;
        }

        while (v4);
      }
    }

    else
    {
      for (result[1] = 0; v3; v3 = result[1])
      {
        do
        {
          result = v3;
          v3 = *v3;
        }

        while (v3);
      }
    }
  }

  return result;
}

uint64_t sub_100083B64(uint64_t **a1, uint64_t a2)
{
  v3 = a1 + 1;
  v4 = a1[1];
  if (v4)
  {
    do
    {
      while (1)
      {
        v3 = v4;
        if (*(a2 + 28) >= *(v4 + 7))
        {
          break;
        }

        v4 = *v4;
        v5 = v3;
        if (!*v3)
        {
          goto LABEL_8;
        }
      }

      v4 = v4[1];
    }

    while (v4);
    v5 = v3 + 1;
  }

  else
  {
    v5 = a1 + 1;
  }

LABEL_8:
  sub_10000856C(a1, v3, v5, a2);
  return a2;
}

uint64_t sub_100083BD4(char a1, char a2, char a3, char a4, char a5, __int16 a6, __int16 a7, uint64_t (*a8)())
{
  v33 = 0;
  v34 = 0;
  result = sub_10001FFD8(&v33);
  if (!result)
  {
    if (HIBYTE(v34))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
    }

    else
    {
      v20 = WORD2(v34);
      if (WORD1(v34) > WORD2(v34))
      {
        if (BYTE6(v34) == 2)
        {
          ++WORD2(v34);
          *(v33 + v20) = a1;
          if (HIBYTE(v34))
          {
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
          }

          else
          {
            v21 = WORD2(v34);
            if (WORD1(v34) > WORD2(v34))
            {
              if (BYTE6(v34) == 2)
              {
                ++WORD2(v34);
                *(v33 + v21) = a2;
                if (HIBYTE(v34))
                {
                  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                }

                else
                {
                  v22 = WORD2(v34);
                  if (WORD1(v34) > WORD2(v34))
                  {
                    if (BYTE6(v34) == 2)
                    {
                      ++WORD2(v34);
                      *(v33 + v22) = a3;
                      if (HIBYTE(v34))
                      {
                        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                      }

                      else
                      {
                        v23 = WORD2(v34);
                        if (WORD1(v34) > WORD2(v34))
                        {
                          if (BYTE6(v34) == 2)
                          {
                            ++WORD2(v34);
                            *(v33 + v23) = a4;
                            if (HIBYTE(v34))
                            {
                              sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                            }

                            else
                            {
                              v24 = WORD2(v34);
                              if (WORD1(v34) > WORD2(v34))
                              {
                                if (BYTE6(v34) == 2)
                                {
                                  ++WORD2(v34);
                                  *(v33 + v24) = a5;
                                  if (HIBYTE(v34))
                                  {
                                    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                                  }

                                  else if (WORD1(v34) - WORD2(v34) > 1)
                                  {
                                    if (BYTE6(v34) == 2)
                                    {
                                      *(v33 + WORD2(v34)) = a7;
                                      v25 = WORD2(v34) + 2;
                                      WORD2(v34) += 2;
                                      if (HIBYTE(v34))
                                      {
                                        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                                      }

                                      else if (WORD1(v34) - v25 > 1)
                                      {
                                        if (BYTE6(v34) == 2)
                                        {
                                          *(v33 + v25) = a6;
                                          *(v33 + WORD2(v34) + 1) = HIBYTE(a6);
                                          WORD2(v34) += 2;
                                          return sub_100020078(553, v33, BYTE4(v34), a8, sub_100022AD0, v17, v18, v19);
                                        }

                                        v32 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_52:
                                        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 6138, v32);
                                      }

                                      v32 = "ByteStream_NumReadBytesAvail(bs) >= 2";
                                      goto LABEL_52;
                                    }

                                    v31 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_48:
                                    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 6137, v31);
                                  }

                                  v31 = "ByteStream_NumReadBytesAvail(bs) >= 2";
                                  goto LABEL_48;
                                }

                                v30 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_44:
                                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 6136, v30);
                              }
                            }

                            v30 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                            goto LABEL_44;
                          }

                          v29 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_40:
                          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 6135, v29);
                        }
                      }

                      v29 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                      goto LABEL_40;
                    }

                    v28 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_36:
                    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 6134, v28);
                  }
                }

                v28 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                goto LABEL_36;
              }

              v27 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_32:
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 6133, v27);
            }
          }

          v27 = "ByteStream_NumReadBytesAvail(bs) >= 1";
          goto LABEL_32;
        }

        v26 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_28:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 6132, v26);
      }
    }

    v26 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_28;
  }

  return result;
}

void sub_100083FE4(uint64_t a1, void (*a2)(uint64_t, uint64_t, void), uint64_t *a3)
{
  if (*(a3 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
    goto LABEL_4;
  }

  if (*(a3 + 5) - *(a3 + 6) <= 1)
  {
LABEL_4:
    if (sub_10000C240())
    {
      if (*(a3 + 15))
      {
        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
        v11 = 0;
      }

      else
      {
        v11 = *(a3 + 5) - *(a3 + 6);
      }

      sub_10000AF54("Invalid data size %d", v4, v5, v6, v7, v8, v9, v10, v11);
      v21 = sub_10000C050(0x54u);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    return;
  }

  if (!a1 || !sub_10000C240())
  {
    goto LABEL_15;
  }

  if (*(a3 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
  }

  sub_10000AF54("hlCb 0x%x, data %@", v14, v15, v16, v17, v18, v19, v20, a2);
  v22 = sub_10000C050(0x54u);
  if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
  {
    sub_10080F604();
    if (!a2)
    {
      return;
    }
  }

  else
  {
LABEL_15:
    if (!a2)
    {
      return;
    }
  }

  v23 = *a3;
  v24 = *(a3 + 6);
  if (*(a3 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
    v25 = 0;
  }

  else
  {
    v25 = *(a3 + 10) - v24;
  }

  a2(a1, v23 + v24, v25);
}

uint64_t sub_1000841AC(int a1)
{
  if (qword_100B50AA0 != -1)
  {
    sub_100093618();
  }

  return sub_100022748(a1, 0xE1u);
}

uint64_t sub_1000841FC(uint64_t result)
{
  v1 = &dword_100B6A57E[2 * byte_100B6A57D] - byte_100B6A57D;
  v2 = v1[6];
  v3 = *(v1 + 2);
  *result = *v1;
  *(result + 4) = v3;
  *(result + 6) = v2;
  return result;
}

uint64_t sub_10008423C(char a1, char a2, unsigned __int8 a3, char *a4, _WORD *a5, _BYTE *a6, char a7, char a8, _BYTE *a9, char a10, uint64_t (*a11)())
{
  v46 = 0;
  v47 = 0;
  result = sub_10001FFD8(&v46);
  if (result)
  {
    return result;
  }

  LOBYTE(v23) = 0;
  v25 = 3;
  v26 = a3;
  do
  {
    LOBYTE(v23) = (v26 & 1) + v23;
    v26 >>= 1;
    --v25;
  }

  while (v25);
  if (HIBYTE(v47))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
    goto LABEL_55;
  }

  v27 = WORD2(v47);
  if (WORD1(v47) <= WORD2(v47))
  {
LABEL_55:
    v41 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_57;
  }

  if (BYTE6(v47) != 2)
  {
    v41 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_57:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 6168, v41);
  }

  ++WORD2(v47);
  *(v46 + v27) = a1;
  if (HIBYTE(v47))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
    goto LABEL_59;
  }

  v28 = WORD2(v47);
  if (WORD1(v47) <= WORD2(v47))
  {
LABEL_59:
    v42 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_61;
  }

  if (BYTE6(v47) != 2)
  {
    v42 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_61:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 6169, v42);
  }

  ++WORD2(v47);
  *(v46 + v28) = a2;
  if (HIBYTE(v47))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
    goto LABEL_63;
  }

  v29 = WORD2(v47);
  if (WORD1(v47) <= WORD2(v47))
  {
LABEL_63:
    v43 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_65;
  }

  if (BYTE6(v47) != 2)
  {
    v43 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_65:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 6170, v43);
  }

  ++WORD2(v47);
  *(v46 + v29) = a3;
  if (HIBYTE(v47))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
    goto LABEL_67;
  }

  v30 = WORD2(v47);
  if (WORD1(v47) <= WORD2(v47))
  {
LABEL_67:
    v44 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_69;
  }

  if (BYTE6(v47) != 2)
  {
    v44 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_69:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 6171, v44);
  }

  ++WORD2(v47);
  *(v46 + v30) = (4 * a10) | a7;
  if (HIBYTE(v47))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
    goto LABEL_71;
  }

  v31 = WORD2(v47);
  if (WORD1(v47) <= WORD2(v47))
  {
LABEL_71:
    v45 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_73;
  }

  if (BYTE6(v47) != 2)
  {
    v45 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_73:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 6172, v45);
  }

  ++WORD2(v47);
  *(v46 + v31) = a8;
  if (v23)
  {
    v23 = v23;
    while (!HIBYTE(v47))
    {
      v32 = WORD2(v47);
      if (WORD1(v47) <= WORD2(v47))
      {
        goto LABEL_52;
      }

      if (BYTE6(v47) != 2)
      {
        v40 = "(bs).__RWFlag == BYTESTREAM_WRITE";
        goto LABEL_53;
      }

      v33 = *a4;
      ++WORD2(v47);
      *(v46 + v32) = v33;
      if (HIBYTE(v47))
      {
        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
LABEL_48:
        v39 = "ByteStream_NumReadBytesAvail(bs) >= 2";
LABEL_49:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 6176, v39);
      }

      if (WORD1(v47) - WORD2(v47) <= 1)
      {
        goto LABEL_48;
      }

      if (BYTE6(v47) != 2)
      {
        v39 = "(bs).__RWFlag == BYTESTREAM_WRITE";
        goto LABEL_49;
      }

      *(v46 + WORD2(v47)) = *a5;
      v34 = WORD2(v47) + 2;
      WORD2(v47) += 2;
      if (HIBYTE(v47))
      {
        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
LABEL_44:
        v38 = "ByteStream_NumReadBytesAvail(bs) >= 2";
LABEL_45:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 6177, v38);
      }

      if (WORD1(v47) - v34 <= 1)
      {
        goto LABEL_44;
      }

      if (BYTE6(v47) != 2)
      {
        v38 = "(bs).__RWFlag == BYTESTREAM_WRITE";
        goto LABEL_45;
      }

      *(v46 + v34) = *a6;
      *(v46 + WORD2(v47) + 1) = a6[1];
      v35 = WORD2(v47) + 2;
      WORD2(v47) += 2;
      if (HIBYTE(v47))
      {
        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
LABEL_40:
        v37 = "ByteStream_NumReadBytesAvail(bs) >= 2";
LABEL_41:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 6178, v37);
      }

      if (WORD1(v47) - v35 <= 1)
      {
        goto LABEL_40;
      }

      if (BYTE6(v47) != 2)
      {
        v37 = "(bs).__RWFlag == BYTESTREAM_WRITE";
        goto LABEL_41;
      }

      *(v46 + v35) = *a9;
      *(v46 + WORD2(v47) + 1) = a9[1];
      v36 = BYTE4(v47) + 2;
      a9 += 2;
      WORD2(v47) += 2;
      a6 += 2;
      ++a5;
      ++a4;
      if (!--v23)
      {
        return sub_100020078(567, v46, v36, a11, sub_100022AD0, v20, v21, v22);
      }
    }

    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
LABEL_52:
    v40 = "ByteStream_NumReadBytesAvail(bs) >= 1";
LABEL_53:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 6175, v40);
  }

  v36 = BYTE4(v47);
  return sub_100020078(567, v46, v36, a11, sub_100022AD0, v20, v21, v22);
}

uint64_t sub_1000847C4(uint64_t a1, __int128 *a2, int a3, uint64_t a4)
{
  v45[0] = 0;
  v45[1] = 0;
  sub_100007F88(v45, a1 + 48);
  if (!a3)
  {
    v8 = (a1 + 388);
    if (*(a1 + 388))
    {
      goto LABEL_12;
    }

    goto LABEL_9;
  }

  if ((*a2 & 1) == 0 && *(a1 + 388) == 1)
  {
    *(a1 + 504) = CFAbsoluteTimeGetCurrent();
    ++*(a1 + 512);
  }

  v8 = (a1 + 388);
  if ((*(a1 + 388) & 1) == 0 && *a2 == 1)
  {
LABEL_9:
    if (qword_100B508D0 != -1)
    {
      sub_10084A9B0();
    }

    sub_100795F74(off_100B508C8);
  }

LABEL_12:
  v9 = *a2;
  *(v8 + 10) = *(a2 + 10);
  *v8 = v9;
  *(a1 + 414) = a3;
  if (a1 + 416 != a4)
  {
    sub_100084CFC((a1 + 416), *a4, (a4 + 8));
  }

  v44 = 0;
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  *v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  memset(v31, 0, sizeof(v31));
  v29 = 0u;
  sub_100007AD0(&v29);
  v10 = sub_100007774(&v30);
  sub_100007774(v10);
  if (a3)
  {
    sub_100007774(&v30);
    v11 = sub_100007774(&v30);
    v12 = sub_100007774(v11);
    sub_100007774(v12);
    v13 = std::ostream::operator<<();
    sub_100007774(v13);
    v14 = std::ostream::operator<<();
    sub_100007774(v14);
    v15 = std::ostream::operator<<();
    sub_100007774(v15);
    v16 = std::ostream::operator<<();
    sub_100007774(v16);
    std::ostream::operator<<();
    sub_100007774(&v30);
    v17 = *(a1 + 416);
    if (v17 != (a1 + 424))
    {
      do
      {
        v18 = sub_10002BC74(*(v17 + 7));
        strlen(v18);
        v19 = sub_100007774(&v30);
        sub_100007774(v19);
        v20 = v17[1];
        if (v20)
        {
          do
          {
            v21 = v20;
            v20 = *v20;
          }

          while (v20);
        }

        else
        {
          do
          {
            v21 = v17[2];
            v22 = *v21 == v17;
            v17 = v21;
          }

          while (!v22);
        }

        v17 = v21;
      }

      while (v21 != (a1 + 424));
    }
  }

  v23 = qword_100BCEAD0;
  if (os_log_type_enabled(qword_100BCEAD0, OS_LOG_TYPE_DEFAULT))
  {
    std::stringbuf::str();
    v24 = v28 >= 0 ? &__p : __p;
    *buf = 136315138;
    v47 = v24;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
    if (v28 < 0)
    {
      operator delete(__p);
    }
  }

  *&v30 = v25;
  if (SHIBYTE(v33) < 0)
  {
    operator delete(v32[1]);
  }

  std::locale::~locale(v31);
  std::iostream::~basic_iostream();
  std::ios::~ios();
  return sub_1000088CC(v45);
}

void sub_100084CC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_1007FC91C(va);
  sub_1000088CC(v5 - 96);
  _Unwind_Resume(a1);
}

uint64_t **sub_100084CFC(uint64_t **result, void *a2, void *a3)
{
  v5 = result;
  if (result[2])
  {
    v6 = *result;
    v7 = result[1];
    *result = (result + 1);
    v7[2] = 0;
    result[1] = 0;
    result[2] = 0;
    if (v6[1])
    {
      v8 = v6[1];
    }

    else
    {
      v8 = v6;
    }

    v12 = result;
    v13 = v8;
    v14 = v8;
    if (v8)
    {
      v13 = sub_100083B10(v8);
      if (a2 != a3)
      {
        v9 = a2;
        do
        {
          *(v8 + 7) = *(v9 + 7);
          sub_100083B64(v5, v8);
          v8 = v13;
          v14 = v13;
          if (v13)
          {
            v13 = sub_100083B10(v13);
          }

          v10 = v9[1];
          if (v10)
          {
            do
            {
              a2 = v10;
              v10 = *v10;
            }

            while (v10);
          }

          else
          {
            do
            {
              a2 = v9[2];
              v11 = *a2 == v9;
              v9 = a2;
            }

            while (!v11);
          }

          if (!v8)
          {
            break;
          }

          v9 = a2;
        }

        while (a2 != a3);
      }
    }

    result = sub_100084E60(&v12);
  }

  if (a2 != a3)
  {
    sub_10008605C();
  }

  return result;
}

void sub_100084E4C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100084E60(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100084E60(uint64_t a1)
{
  sub_10000CEDC(*a1, *(a1 + 16));
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = v2[2];
    if (v3)
    {
      do
      {
        v2 = v3;
        v3 = v3[2];
      }

      while (v3);
      *(a1 + 8) = v2;
    }

    sub_10000CEDC(*a1, v2);
  }

  return a1;
}

void sub_100084EB8(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v6 = v4 - 5;

        v4 = v6;
      }

      while (v6 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void sub_100084F40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a1;
  v10 = qword_100B6B1D8;
  v9 = qword_100B6B1E0;
  *&v34[3] = 0;
  *v34 = 0;
  v33 = xmmword_100B6B1E8;
  v11 = WORD1(xmmword_100B6B1E8);
  v32 = WORD1(xmmword_100B6B1E8);
  v12 = WORD3(xmmword_100B6B1E8);
  v31 = WORD3(xmmword_100B6B1E8);
  if (a1)
  {
LABEL_2:
    if (sub_10000C240())
    {
      sub_10000AF54("Could not start LE scan (leScanParamsLPCoreCb): %!", v13, v14, v15, v16, v17, v18, v19, v8);
      v20 = sub_10000C050(0x42u);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    xmmword_100B6B1E8 = 0u;
    *&byte_100B6B1F8 = 0u;
    unk_100B6B1C8 = 0u;
    *&qword_100B6B1D8 = 0u;
    byte_100B6B212 = 0;
    if (v10)
    {
      v10(v8, v9);
    }

    else
    {
      sub_1000D660C();
    }

    return;
  }

  if (byte_100B6B214 == 1 && byte_100B6B215 == 1)
  {
    sub_1000841FC(v34);
    if (byte_100B6B216)
    {
      v28 = 2;
    }

    else
    {
      v28 = 1;
    }

    byte_100B6B1F8 = v28;
    if (byte_100B6B218)
    {
      if (WORD3(xmmword_100B6B1E8))
      {
        v29 = v34[0];
        v30 = BYTE13(xmmword_100B6B1E8);
        goto LABEL_22;
      }

      if (WORD4(xmmword_100B6B1E8) | WORD5(xmmword_100B6B1E8))
      {
        sub_100082BB4(0, v21, v22, v23, v24, v25, v26, v27);
        return;
      }
    }

    else if (v11 && v12)
    {
      v29 = v34[0];
      v30 = BYTE13(xmmword_100B6B1E8);
LABEL_22:
      v8 = sub_10008395C(v29, v30, 1, &v33, &v32, &v31, v28, 2u);
      if (!v8)
      {
        return;
      }

      goto LABEL_2;
    }

    sub_10008518C(0, v21, v22, v23, v24, v25, v26, v27);
    return;
  }

  sub_10008518C(0, a2, a3, a4, a5, a6, a7, a8);
}

void sub_10008518C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a1;
  v10 = qword_100B6B1D8;
  v9 = qword_100B6B1E0;
  if (a1)
  {
    goto LABEL_55;
  }

  v11 = byte_100B6B215;
  if (byte_100B6B215 != 1)
  {
    if (byte_100B6B216)
    {
      v12 = sub_100018960(216, sub_1000855A0, a3, a4, a5, a6, a7, a8, 1);
    }

    else
    {
      v12 = sub_100018960(172, sub_1000855A0, a3, a4, a5, a6, a7, a8, 1);
    }

LABEL_52:
    v8 = v12;
    if (!v12)
    {
      return;
    }

    goto LABEL_55;
  }

  if (byte_100B6B216)
  {
    v11 = 2;
  }

  byte_100B6B1F8 = v11;
  if (byte_100B6B214 == 1)
  {
    byte_100B6B1F9 = WORD2(xmmword_100B6B1E8) != 0;
    if (WORD3(xmmword_100B6B1E8))
    {
      byte_100B6B1F9 = (WORD2(xmmword_100B6B1E8) != 0) | 2;
    }
  }

  if (byte_100B6B218 != 1)
  {
    v13 = 1;
    goto LABEL_42;
  }

  if (WORD5(xmmword_100B6B1E8))
  {
    byte_100B6B1F9 |= 8u;
    if (!WORD4(xmmword_100B6B1E8))
    {
      goto LABEL_18;
    }
  }

  else if (!WORD4(xmmword_100B6B1E8))
  {
    if (byte_100B6B202)
    {
      v13 = 3;
    }

    else
    {
      v13 = 1;
    }

    goto LABEL_42;
  }

  byte_100B6B1F9 |= 4u;
LABEL_18:
  if (byte_100B6B202)
  {
    v14 = 3;
  }

  else
  {
    v14 = 1;
  }

  if (byte_100B6B1FE)
  {
    v15 = WORD2(xmmword_100B6B1E8) == 0;
  }

  else
  {
    v15 = 1;
  }

  if (!v15)
  {
    v14 |= 4u;
  }

  if (!byte_100B6B203)
  {
    v13 = v14;
    goto LABEL_42;
  }

  v13 = v14 | 8;
  if (word_100B6B206 > 1u)
  {
    if (word_100B6B206 == 2)
    {
      v13 = v14 | 0x28;
      goto LABEL_42;
    }

    if (word_100B6B206 == 4)
    {
      v13 = v14 | 0x38;
      goto LABEL_42;
    }

    goto LABEL_38;
  }

  if (word_100B6B206)
  {
    if (word_100B6B206 == 1)
    {
      v13 = v14 | 0x18;
      goto LABEL_42;
    }

LABEL_38:
    if (sub_10000C240())
    {
      sub_10000AF54("Unexpected scancore coex query interval %d", v16, v17, v18, v19, v20, v21, v22, word_100B6B206);
      v23 = sub_10000C050(0x42u);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }
  }

LABEL_42:
  if (byte_100B6B21B == 1)
  {
    if (byte_100B6B200 == 1)
    {
      if (byte_100B6B201)
      {
        v13 |= 0x80u;
      }

      else
      {
        v13 |= 0x40u;
      }
    }

    else if (byte_100B6B201)
    {
      v13 |= 0xC0u;
    }
  }

  if (byte_100B6B1F9)
  {
    v12 = sub_10007AFA4(v13, byte_100B6B1F8, BYTE14(xmmword_100B6B1E8), HIBYTE(xmmword_100B6B1E8), byte_100B6B1F9);
    goto LABEL_52;
  }

  v8 = 408;
LABEL_55:
  if (sub_10000C240())
  {
    sub_10000AF54("Could not start LE scan (leScanParamsCb): %!", v24, v25, v26, v27, v28, v29, v30, v8);
    v31 = sub_10000C050(0x42u);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      sub_10080F7A0();
    }
  }

  xmmword_100B6B1E8 = 0u;
  *&byte_100B6B1F8 = 0u;
  unk_100B6B1C8 = 0u;
  *&qword_100B6B1D8 = 0u;
  byte_100B6B212 = 0;
  if (v10)
  {
    v10(v8, v9);
  }

  else
  {
    sub_1000D660C();
  }
}

void sub_1000854DC(uint64_t a1)
{
  if (a1)
  {
LABEL_2:

    sub_1002DA024(a1);
    return;
  }

  if (byte_100B6B214 == 1 && (byte_100B6B21A & 1) == 0)
  {
    a1 = sub_1002A258C();
    byte_100B6B21A = 1;
    goto LABEL_2;
  }

  v1 = unk_100B6B1C8;
  v2 = qword_100B6B1E0;
  byte_100B6B212 = 0;
  if (unk_100B6B1C8)
  {

    v1(0, v2);
  }
}

void sub_1000855A0(uint64_t a1)
{
  if (a1)
  {

LABEL_4:
    sub_1002DA024(a1);
    return;
  }

  if (byte_100B6B219 == 1)
  {
    a1 = sub_1002A2474();

    goto LABEL_4;
  }

  sub_1000854DC(0);
}

uint64_t sub_100085620()
{
  if (qword_100B663C0)
  {
    return qword_100B663C0();
  }

  return result;
}

void sub_100085634(int a1)
{
  v2 = sub_100007EE8();
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1000857DC;
  v3[3] = &unk_100AE0900;
  v4 = a1;
  sub_10000CA94(v2, v3);
}

void sub_1000856B0(uint64_t a1, int a2)
{
  v3 = *(a1 + 1984);
  if (v3)
  {
    if (v3 != 2)
    {
      v5 = qword_100BCE918;
      if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_FAULT))
      {
        sub_100875EEC(v5);
      }
    }

    v6 = qword_100BCE918;
    if (a2)
    {
      if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_ERROR))
      {
        sub_100875F70();
      }
    }

    else
    {
      if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Scanning started successfully", buf, 2u);
      }

      *(a1 + 2120) = 0;
      sub_10007C438(a1, 3u);
      sub_100016340(a1, 0);
    }
  }

  else
  {
    v7 = qword_100BCE918;
    if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Ignoring late scan started event", v8, 2u);
    }

    sub_10003C478(a1);
  }
}

void sub_1000857DC(uint64_t a1)
{
  if (qword_100B51078 != -1)
  {
    sub_100876628();
  }

  v2 = off_100B51070;
  v3 = *(a1 + 32);

  sub_1000856B0(v2, v3);
}

void sub_1000858C0(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_1007B2978(v3, v2);
  _Unwind_Resume(a1);
}

_BYTE *sub_1000858DC(_BYTE *result)
{
  v1 = result;
  if ((result[9] & 1) == 0)
  {
    result = (*(*result + 16))(result);
  }

  if (v1[8] == 1)
  {
    v2 = *(*v1 + 8);

    return v2(v1);
  }

  return result;
}

uint64_t sub_10008598C(uint64_t a1)
{
  if (qword_100B51078 != -1)
  {
    sub_100876628();
  }

  v2 = off_100B51070;
  v3 = *(a1 + 24);

  return sub_1000859E4(v2, v3, a1);
}

uint64_t sub_1000859E4(uint64_t result, unint64_t a2, uint64_t a3)
{
  v3 = *(result + 2072);
  if (v3)
  {
    v5 = result;
    v6 = result + 2072;
    do
    {
      v7 = *(v3 + 32);
      v8 = v7 >= a2;
      v9 = v7 < a2;
      if (v8)
      {
        v6 = v3;
      }

      v3 = *(v3 + 8 * v9);
    }

    while (v3);
    if (v6 != result + 2072 && *(v6 + 32) <= a2)
    {
      v10 = *(v6 + 40);
      if (*(v10 + 88) == a3 && (*(*(v10 + 8) + 172) & 1) == 0)
      {
        v11 = *(v10 + 96);
        v12 = qword_100BCE918;
        if (v11 >= 3 && os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_FAULT))
        {
          *__p = 136446210;
          *&__p[4] = "level < kNumScanLevels";
          _os_log_fault_impl(&_mh_execute_header, v12, OS_LOG_TYPE_FAULT, "Assertion failed: %{public}s", __p, 0xCu);
          v12 = qword_100BCE918;
        }

        v13 = os_log_type_enabled(v12, OS_LOG_TYPE_INFO);
        if (v13)
        {
          sub_100018384(a2, __p);
          v14 = v16 >= 0 ? __p : *__p;
          *buf = 136446466;
          v18 = v14;
          v19 = 1024;
          v20 = v11 + 1;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Session %{public}s is now at scan level %d", buf, 0x12u);
          if (v16 < 0)
          {
            operator delete(*__p);
          }
        }

        *(v10 + 96) = v11 + 1;
        if (v11 > 1)
        {
          *(v10 + 88) = 0;
        }

        else
        {
          sub_10007088C(v13, a2, v10);
        }

        return sub_100017DE0(v5, 0);
      }
    }
  }

  return result;
}

void *sub_100085BC8(void *result)
{
  *result = &off_100AE0AB8;
  result[1] = 0;
  result[2] = &off_100AE0AB8;
  result[3] = 0;
  result[4] = &off_100AE0AB8;
  result[5] = 0;
  result[6] = &off_100AE0AB8;
  result[7] = 0;
  result[8] = &off_100AE0AB8;
  result[9] = 0;
  return result;
}

uint64_t sub_100085C68(uint64_t a1, uint64_t a2)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100085CE0;
  v3[3] = &unk_100AF2390;
  v3[4] = a2;
  return sub_10002173C(a1, 251, 1, v3, 0);
}

uint64_t sub_100085CF8()
{
  if (off_100B60710)
  {
    v0 = off_100B60710();
    if (!v0)
    {
      return v0;
    }
  }

  else
  {
    v0 = 3601;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("VSC failed %!", v1, v2, v3, v4, v5, v6, v7, v0);
    v8 = sub_10000C050(0x54u);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }

  return v0;
}

uint64_t sub_100085D84(uint64_t a1, uint64_t (*a2)())
{
  v16 = 0;
  v17 = 0;
  result = sub_10001FFD8(&v16);
  if (!result)
  {
    if (HIBYTE(v17))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
    }

    else
    {
      v5 = WORD2(v17);
      if (WORD1(v17) > WORD2(v17))
      {
        if (BYTE6(v17) == 2)
        {
          ++WORD2(v17);
          *(v16 + v5) = 53;
          if (HIBYTE(v17))
          {
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
          }

          else
          {
            v6 = WORD2(v17);
            if (WORD1(v17) > WORD2(v17))
            {
              if (BYTE6(v17) == 2)
              {
                ++WORD2(v17);
                *(v16 + v6) = 0;
                if (HIBYTE(v17))
                {
                  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                }

                else
                {
                  v7 = WORD2(v17);
                  if (WORD1(v17) > WORD2(v17))
                  {
                    if (BYTE6(v17) == 2)
                    {
                      ++WORD2(v17);
                      *(v16 + v7) = BYTE6(a1);
                      v15[0] = BYTE5(a1);
                      v15[1] = BYTE4(a1);
                      v15[2] = BYTE3(a1);
                      v15[3] = BYTE2(a1);
                      v15[4] = BYTE1(a1);
                      v15[5] = a1;
                      if (HIBYTE(v17))
                      {
                        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                      }

                      else if (WORD1(v17) - WORD2(v17) > 5)
                      {
                        if (BYTE6(v17) == 2)
                        {
                          sub_1000075EC((v16 + WORD2(v17)), v15, 6uLL);
                          WORD2(v17) += 6;
                          return sub_100020078(233, v16, BYTE4(v17), a2, sub_100022AD0, v8, v9, v10);
                        }

                        v14 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_31:
                        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 3771, v14);
                      }

                      v14 = "ByteStream_NumReadBytesAvail(bs) >= OI_BD_ADDR_BYTE_SIZE";
                      goto LABEL_31;
                    }

                    v13 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_27:
                    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 3767, v13);
                  }
                }

                v13 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                goto LABEL_27;
              }

              v12 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_23:
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 3766, v12);
            }
          }

          v12 = "ByteStream_NumReadBytesAvail(bs) >= 1";
          goto LABEL_23;
        }

        v11 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_19:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 3765, v11);
      }
    }

    v11 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_19;
  }

  return result;
}

uint64_t sub_10008600C(int a1)
{
  if (qword_100B50AA0 != -1)
  {
    sub_100093618();
  }

  return sub_100022748(a1, 0xFBu);
}

uint64_t sub_1000860FC(uint64_t result, const void **a2, const void ***a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = sub_100062A98(v5, (v5 + 1), v4 + 4);
      v6 = v4[1];
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = v4[2];
          v8 = *v7 == v4;
          v4 = v7;
        }

        while (!v8);
      }

      v4 = v7;
    }

    while (v7 != a3);
  }

  return result;
}

void sub_10008667C(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_10008667C(a1, *a2);
    sub_10008667C(a1, a2[1]);
    a2[5] = &off_100AE0AB8;
    v4 = a2[6];
    if (v4)
    {
      sub_10000C808(v4);
    }

    operator delete(a2);
  }
}

void *sub_1000866FC(uint64_t a1, unint64_t *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = v2[4];
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

uint64_t sub_1000867EC(uint64_t a1, uint64_t *a2, const void **a3)
{
  v5 = a1 + 8;
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v8 = v4;
        if (!sub_1000A61B8(a1, a3, (v4 + 32)))
        {
          break;
        }

        v4 = *v8;
        v5 = v8;
        if (!*v8)
        {
          goto LABEL_9;
        }
      }

      if (!sub_1000A61B8(a1, (v8 + 32), a3))
      {
        break;
      }

      v5 = v8 + 8;
      v4 = *(v8 + 8);
    }

    while (v4);
  }

  else
  {
    v8 = a1 + 8;
  }

LABEL_9:
  *a2 = v8;
  return v5;
}

uint64_t sub_100086888(uint64_t result, void *a2, void *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = sub_10009690C(v5, v5 + 1, v4 + 4);
      v6 = v4[1];
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = v4[2];
          v8 = *v7 == v4;
          v4 = v7;
        }

        while (!v8);
      }

      v4 = v7;
    }

    while (v7 != a3);
  }

  return result;
}

uint64_t sub_100086910(int a1, unsigned __int8 *a2, unint64_t a3, unsigned __int8 *a4)
{
  result = 161;
  if (a2 && a3 >= 2 && a1 == 15 && a4)
  {
    v7 = a2[1];
    v8 = *a2;
    LODWORD(v9) = 2;
    if (v7 != 56 && v7 != 51)
    {
      if (v7 != 9)
      {
        v10 = 0;
LABEL_16:
        v11 = sub_10000F034();
        (*(*v11 + 424))(v11, v7, v8, v10, *a4);
        return 0;
      }

      LODWORD(v9) = 5;
    }

    if ((v8 & 0x80u) == 0)
    {
      v9 = v9;
    }

    else
    {
      v9 = (v9 + 3);
    }

    if (v9 >= a3)
    {
      return 161;
    }

    v10 = a2[v9];
    goto LABEL_16;
  }

  return result;
}

void *sub_1000869F8(uint64_t a1, void *a2, const void **a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v5 = v4;
        if (!sub_1000A61B8(a1, a3, (v4 + 32)))
        {
          break;
        }

        v4 = *v5;
        result = v5;
        if (!*v5)
        {
          goto LABEL_8;
        }
      }

      v4 = v5[1];
    }

    while (v4);
    result = v5 + 1;
  }

  else
  {
    result = (a1 + 8);
  }

LABEL_8:
  *a2 = v5;
  return result;
}

uint64_t sub_100086A74(void *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, const void **a5)
{
  v9 = (a1 + 1);
  if (a1 + 1 != a2 && !sub_1000A61B8(a1, a5, (a2 + 32)))
  {
    if (!sub_1000A61B8(a1, (a2 + 32), a5))
    {
      *a3 = a2;
      *a4 = a2;
      return a4;
    }

    a4 = (a2 + 8);
    v13 = *(a2 + 8);
    if (v13)
    {
      v14 = *(a2 + 8);
      do
      {
        v15 = v14;
        v14 = *v14;
      }

      while (v14);
    }

    else
    {
      v18 = a2;
      do
      {
        v15 = v18[2];
        v17 = *v15 == v18;
        v18 = v15;
      }

      while (!v17);
    }

    if (v15 != v9)
    {
      if (!sub_1000A61B8(a1, a5, v15 + 4))
      {
        goto LABEL_28;
      }

      v13 = *a4;
    }

    if (v13)
    {
      *a3 = v15;
      return v15;
    }

    else
    {
      *a3 = a2;
    }

    return a4;
  }

  if (*a1 == a2)
  {
    v12 = a2;
LABEL_16:
    if (*a2)
    {
      *a3 = v12;
      return v12 + 8;
    }

    else
    {
      *a3 = a2;
      return a2;
    }
  }

  v11 = *a2;
  if (*a2)
  {
    do
    {
      v12 = v11;
      v11 = *(v11 + 8);
    }

    while (v11);
  }

  else
  {
    v16 = a2;
    do
    {
      v12 = *(v16 + 16);
      v17 = *v12 == v16;
      v16 = v12;
    }

    while (v17);
  }

  if (sub_1000A61B8(a1, (v12 + 32), a5))
  {
    goto LABEL_16;
  }

LABEL_28:

  return sub_1000867EC(a1, a3, a5);
}

uint64_t sub_100086C20()
{
  v0 = __chkstk_darwin();
  v2 = v1;
  v3 = v0;
  bzero(__src, 0x4178uLL);
  v158[0] = 0;
  v158[1] = 0;
  sub_100007F88(v158, v3 + 64);
  if ((*(v3 + 49) & 1) == 0)
  {
    v4 = qword_100BCE9A8;
    if (!os_log_type_enabled(qword_100BCE9A8, OS_LOG_TYPE_DEFAULT))
    {
      return sub_1000088CC(v158);
    }

    *buf = 0;
    v5 = "Stack is not started, updateAdvertisement returning";
    v6 = v4;
    goto LABEL_8;
  }

  v137 = v3;
  if ((v2 & 1) == 0 && *(v3 + 17033) == 1)
  {
    if (os_log_type_enabled(qword_100BCE9A8, OS_LOG_TYPE_DEBUG))
    {
      sub_10086ABF4();
    }

    return sub_1000088CC(v158);
  }

  v134 = v3 + 0x4000;
  if (*(v3 + 17172) == 1)
  {
    v7 = sub_10000C798();
    if ((*(*v7 + 1048))(v7))
    {
      v8 = *(v3 + 17104);
      v9 = qword_100BCE9A8;
      v10 = os_log_type_enabled(qword_100BCE9A8, OS_LOG_TYPE_DEFAULT);
      if (v8)
      {
        if (v10)
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "LeBroadcaster::updateAdvertisement System about to go to sleep, but in the middle of reconfig", buf, 2u);
        }

        goto LABEL_14;
      }

      if (!v10)
      {
        return sub_1000088CC(v158);
      }

      *buf = 0;
      v5 = "LeBroadcaster::updateAdvertisement System about to go to sleep, will try again later";
      v6 = v9;
LABEL_8:
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, v5, buf, 2u);
      return sub_1000088CC(v158);
    }
  }

LABEL_14:
  if ((*(v137 + 128) | 2) == 2)
  {
    v11 = qword_100BCE9A8;
    if (*(v134 + 648) == 1)
    {
      if (os_log_type_enabled(qword_100BCE9A8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "updateAdvertisement busy with address change, will try again later", buf, 2u);
      }

      sub_1000937AC(v137, 0);
      return sub_1000088CC(v158);
    }

    if (os_log_type_enabled(qword_100BCE9A8, OS_LOG_TYPE_DEBUG))
    {
      sub_10086AC30();
    }

    sub_100097D14(v137, 0);
    *(v134 + 649) = 0;
    v155 = 0;
    v156[0] = 0;
    v156[1] = 0;
    sub_1000690B8(&v155, v137 + 16912);
    v13 = v155;
    if (v155 == v156)
    {
      LOBYTE(v14) = 0;
      v27 = 1;
    }

    else
    {
      v14 = 0;
      v15 = 0;
      while (1)
      {
        if (qword_100B512F8 != -1)
        {
          sub_10086ACE4();
        }

        v16 = sub_10006E254(off_100B512F0, v13[4]);
        if (qword_100B512F8 != -1)
        {
          sub_10086ACE4();
        }

        v17 = sub_100070518(off_100B512F0, v13[4]);
        _ZF = (v16 & 0x30) != 0 || v16 == 1;
        v19 = _ZF;
        if ((v19 | v17))
        {
          break;
        }

        v20 = v14;
        v21 = v13[6];
        v22 = *(v21 + 264) == 2;
        if (*(v21 + 360) == 1)
        {
          v23 = qword_100BCE9A8;
          if (os_log_type_enabled(qword_100BCE9A8, OS_LOG_TYPE_DEFAULT))
          {
            sub_100018384(v13[4], buf);
            v24 = buf;
            if ((buf[23] & 0x80u) != 0)
            {
              v24 = *buf;
            }

            LODWORD(v177) = 136446210;
            *(&v177 + 4) = v24;
            _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Session %{public}s requires power assertion", &v177, 0xCu);
            if (buf[23] < 0)
            {
              operator delete(*buf);
            }
          }

          v15 = 1;
        }

        v25 = v13[1];
        if (v25)
        {
          do
          {
            v26 = v25;
            v25 = *v25;
          }

          while (v25);
        }

        else
        {
          do
          {
            v26 = v13[2];
            _ZF = *v26 == v13;
            v13 = v26;
          }

          while (!_ZF);
        }

        v14 = v22 | v20;
        v13 = v26;
        if (v26 == v156)
        {
          goto LABEL_53;
        }
      }

      v14 = 1;
LABEL_53:
      v27 = v14 ^ 1;
      if (v15 & 1) != 0 && (v14)
      {
        v28 = v137;
        sub_1007294E4(v137);
        LOBYTE(v14) = 1;
        goto LABEL_57;
      }
    }

    v28 = v137;
    sub_100099094(v137);
LABEL_57:
    if (!*(v28 + 144))
    {
      if (os_log_type_enabled(qword_100BCE9A8, OS_LOG_TYPE_ERROR))
      {
        sub_10086AE18();
      }

      goto LABEL_211;
    }

    if (sub_100096908())
    {
      v29 = sub_100096908();
    }

    else
    {
      v29 = 1;
    }

    v177 = 0uLL;
    v178 = 0;
    v154[0] = 0;
    v154[1] = 0;
    v152[1] = 0;
    v153 = v154;
    v151 = v152;
    v152[0] = 0;
    v150[0] = 0;
    v150[1] = 0;
    v148[1] = 0;
    v149 = v150;
    v147 = v148;
    v148[0] = 0;
    v146[0] = 0;
    v146[1] = 0;
    v144[1] = 0;
    v145 = v146;
    v143 = v144;
    v144[0] = 0;
    sub_100088F6C(v137, &v155, __src, v29, &v177, &v153, &v151, &v149, &v145, &v143);
    v129 = v27;
    v132 = v14;
    v128 = v29;
    if (v29)
    {
      v30 = 0;
      v31 = 0;
      v32 = 0;
      v33 = 3352 * v29;
      v135 = v33;
      while (1)
      {
        _X22 = &__src[v30 + 6660];
        _X26 = v137 + 6812 + v30;
        v36 = &__src[v30];
        v37 = (v137 + v30);
        v38 = sub_100088E58(v137, &__src[v30], (v137 + v30 + 152));
        __asm
        {
          PRFM            #0, [X26]
          PRFM            #0, [X22]
        }

        if (v38)
        {
          v44 = qword_100BCE9B0;
          if (os_log_type_enabled(qword_100BCE9B0, OS_LOG_TYPE_DEBUG))
          {
            *buf = 67109120;
            *&buf[4] = v31;
            _os_log_debug_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEBUG, "Advertising instance %d changed:", buf, 8u);
            v44 = qword_100BCE9B0;
          }

          if (os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
          {
            _X8 = v37 + 3505;
            __asm { PRFM            #0, [X8] }

            _X8 = v36 + 3353;
            v56 = *(v137 + v30 + 153);
            __asm { PRFM            #0, [X8] }

            LODWORD(_X8) = __src[v30 + 1];
            v58 = *(v137 + v30 + 154);
            v59 = *&__src[v30 + 2];
            *buf = 67109888;
            *&buf[4] = v56;
            *&buf[8] = 1024;
            *&buf[10] = _X8;
            *&buf[14] = 1024;
            *&buf[16] = v58;
            *&buf[20] = 1024;
            *&buf[22] = v59;
            _os_log_debug_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEBUG, "\ttype:%d-->%d interval:%d-->%d", buf, 0x1Au);
            v44 = qword_100BCE9B0;
          }

          v45 = &__src[v30];
          v46 = memcmp(&__src[v30 + 5], (v137 + v30 + 157), 0x672uLL);
          v45[3319] = v46 != 0;
          v47 = memcmp(&__src[v30 + 1658], (v137 + v30 + 1810), 0x672uLL);
          v45[3320] = v47 != 0;
          if (os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
          {
            *buf = 67109376;
            *&buf[4] = v46 != 0;
            *&buf[8] = 1024;
            *&buf[10] = v47 != 0;
            _os_log_debug_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEBUG, "AdvDataChanged:%d scanDataChanged:%d", buf, 0xEu);
          }

          v33 = v135;
          if (v31 == 2)
          {
            v48 = sub_10000E92C();
            if (!(*(*v48 + 184))(v48))
            {
              goto LABEL_87;
            }
          }

          v49 = qword_100BCE9B0;
          if (os_log_type_enabled(qword_100BCE9B0, OS_LOG_TYPE_DEBUG))
          {
            _X8 = v37 + 5160;
            __asm { PRFM            #0, [X8] }

            _X8 = v36 + 5008;
            v63 = *(v137 + v30 + 1808);
            __asm { PRFM            #0, [X8] }

            LODWORD(_X8) = *&__src[v30 + 1656];
            *buf = 68158978;
            *&buf[4] = v63;
            *&buf[8] = 2096;
            *&buf[10] = v137 + v30 + 157;
            *&buf[18] = 1024;
            *&buf[20] = v63;
            *&buf[24] = 1040;
            *&buf[26] = _X8;
            *&buf[30] = 2096;
            v163[0].__locale_ = &__src[v30 + 5];
            LOWORD(v163[1].__locale_) = 1024;
            *(&v163[1].__locale_ + 2) = _X8;
            _os_log_debug_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEBUG, "\tAdvertising Data:%.*P(%d)-->%.*P(%d)", buf, 0x2Eu);
            v49 = qword_100BCE9B0;
          }

          if (os_log_type_enabled(v49, OS_LOG_TYPE_DEBUG))
          {
            v65 = *(v137 + v30 + 3460);
            v66 = *&__src[v30 + 3308];
            *buf = 68158978;
            *&buf[4] = v65;
            *&buf[8] = 2096;
            *&buf[10] = v137 + v30 + 1810;
            *&buf[18] = 1024;
            *&buf[20] = v65;
            *&buf[24] = 1040;
            *&buf[26] = v66;
            *&buf[30] = 2096;
            v163[0].__locale_ = &__src[v30 + 1658];
            LOWORD(v163[1].__locale_) = 1024;
            *(&v163[1].__locale_ + 2) = v66;
            _os_log_debug_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEBUG, "\tScan Response:%.*P(%d)-->%.*P(%d)", buf, 0x2Eu);
            v49 = qword_100BCE9B0;
          }

          if (os_log_type_enabled(v49, OS_LOG_TYPE_DEBUG))
          {
            v67 = *(v137 + v30 + 3462);
            v68 = *(v137 + v30 + 3469);
            *buf = 68158466;
            *&buf[4] = 6;
            *&buf[8] = 2096;
            *&buf[10] = v137 + v30 + 3463;
            *&buf[18] = 1024;
            *&buf[20] = v67;
            *&buf[24] = 1024;
            *&buf[26] = v68;
            _os_log_debug_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEBUG, "\tadvertising address:%.6P type:%d override:%d", buf, 0x1Eu);
          }
        }

        v50 = (v36[3311] << 40) | (v36[3312] << 32) | (v36[3313] << 24) | (v36[3314] << 16) | (v36[3315] << 8) | v36[3316];
        v51 = v50 | (v36[3310] << 48);
        if (v50)
        {
          v52 = v51 == ((v37[3463] << 40) | (v37[3464] << 32) | (v37[3465] << 24) | (v37[3466] << 16) | (v37[3467] << 8) | v37[3468] | (v37[3462] << 48));
        }

        else
        {
          v52 = 1;
        }

        if (!v52)
        {
          sub_100729D74(v137, v51, v31);
        }

LABEL_87:
        v32 |= v38;
        ++v31;
        v30 += 3352;
        if (v33 == v30)
        {
          goto LABEL_90;
        }
      }
    }

    v32 = 0;
LABEL_90:
    v69 = qword_100BCE9A8;
    if (os_log_type_enabled(qword_100BCE9A8, OS_LOG_TYPE_DEBUG))
    {
      v126 = *(v137 + 128);
      if (v126 > 3)
      {
        v127 = "UNKNOWN";
      }

      else
      {
        v127 = off_100B0ADD8[v126];
      }

      *buf = 136446722;
      *&buf[4] = v127;
      *&buf[12] = 1024;
      *&buf[14] = v32 & 1;
      *&buf[18] = 1024;
      *&buf[20] = v132 & 1;
      _os_log_debug_impl(&_mh_execute_header, v69, OS_LOG_TYPE_DEBUG, "fAdvertisementState:%{public}s dataChanged:%d validSession:%d", buf, 0x18u);
    }

    v70 = *(v137 + 128);
    if (((v70 == 0) & v132) == 1)
    {
      if (v128)
      {
        v71 = 0;
        do
        {
          v138 = &__src[3352 * v71];
          v136 = *(v138 + 1);
          v176 = 0;
          v174 = 0u;
          v175 = 0u;
          v172 = 0u;
          v173 = 0u;
          v170 = 0u;
          v171 = 0u;
          v168 = 0u;
          v169 = 0u;
          v166 = 0u;
          v167 = 0u;
          *v164 = 0u;
          v165 = 0u;
          memset(v163, 0, sizeof(v163));
          memset(buf, 0, sizeof(buf));
          sub_100007AD0(buf);
          sub_100007774(&buf[16]);
          v72 = std::ostream::operator<<();
          v73 = sub_100007774(v72);
          v74 = sub_100007774(v73);
          v75 = sub_100007774(v74);
          v76 = sub_100007774(v75);
          v77 = sub_100007774(v76);
          v78 = sub_100007774(v77);
          sub_100007774(v78);
          if (!v71)
          {
            v79 = HIBYTE(v178);
            if (v178 < 0)
            {
              v79 = *(&v177 + 1);
            }

            if (v79)
            {
              v80 = sub_100007774(&buf[16]);
              v81 = sub_100007774(v80);
              sub_100007774(v81);
            }
          }

          v159 = v71;
          __p = &v159;
          v82 = sub_100096318(&v153, &v159);
          if (v82[6] != v82[5])
          {
            sub_100007774(&buf[16]);
            for (i = 0; ; ++i)
            {
              v159 = v71;
              __p = &v159;
              v84 = sub_100096318(&v153, &v159);
              if (0xCCCCCCCCCCCCCCCDLL * ((v84[6] - v84[5]) >> 2) <= i)
              {
                break;
              }

              v140 = v71;
              *v160 = &v140;
              v85 = sub_100096318(&v153, &v140);
              sub_10003B85C(v85[5] + 20 * i, &__p);
              v86 = sub_100007774(&buf[16]);
              sub_100007774(v86);
              if (v142 < 0)
              {
                operator delete(__p);
              }
            }

            sub_100007774(&buf[16]);
          }

          v159 = v71;
          __p = &v159;
          v87 = sub_100095D64(&v143, &v159);
          v88 = v87 + 5;
          v89 = 255;
          while (!*v88)
          {
            ++v88;
            v89 -= 64;
            if (v89 <= 0x3F)
            {
              if ((v87[8] & 0x7FFFFFFFFFFFFFFFLL) == 0)
              {
                goto LABEL_116;
              }

              break;
            }
          }

          sub_100007774(&buf[16]);
          for (j = 0; ; ++j)
          {
            v159 = v71;
            __p = &v159;
            sub_100095D64(&v143, &v159);
            if (j == 255)
            {
              break;
            }

            v159 = v71;
            __p = &v159;
            if ((sub_100095D64(&v143, &v159)[(j >> 6) + 5] >> j))
            {
              v91 = std::ostream::operator<<();
              sub_100007774(v91);
            }
          }

          sub_100007774(&buf[16]);
LABEL_116:
          v159 = v71;
          __p = &v159;
          v92 = sub_100096318(&v151, &v159);
          if (v92[6] != v92[5])
          {
            sub_100007774(&buf[16]);
            for (k = 0; ; ++k)
            {
              v159 = v71;
              __p = &v159;
              v94 = sub_100096318(&v151, &v159);
              if (0xCCCCCCCCCCCCCCCDLL * ((v94[6] - v94[5]) >> 2) <= k)
              {
                break;
              }

              v140 = v71;
              *v160 = &v140;
              v95 = sub_100096318(&v151, &v140);
              sub_10003B85C(v95[5] + 20 * k, &__p);
              v96 = sub_100007774(&buf[16]);
              sub_100007774(v96);
              if (v142 < 0)
              {
                operator delete(__p);
              }
            }

            sub_100007774(&buf[16]);
          }

          v159 = v71;
          __p = &v159;
          v97 = sub_100096318(&v149, &v159);
          if (v97[6] != v97[5])
          {
            sub_100007774(&buf[16]);
            for (m = 0; ; ++m)
            {
              v159 = v71;
              __p = &v159;
              v99 = sub_100096318(&v149, &v159);
              if (0xCCCCCCCCCCCCCCCDLL * ((v99[6] - v99[5]) >> 2) <= m)
              {
                break;
              }

              v140 = v71;
              *v160 = &v140;
              v100 = sub_100096318(&v149, &v140);
              sub_10003B85C(v100[5] + 20 * m, &__p);
              v101 = sub_100007774(&buf[16]);
              sub_100007774(v101);
              if (v142 < 0)
              {
                operator delete(__p);
              }
            }

            sub_100007774(&buf[16]);
          }

          v159 = v71;
          __p = &v159;
          if (sub_100095E9C(&v145, &v159)[7])
          {
            sub_100007774(&buf[16]);
            v159 = v71;
            __p = &v159;
            v102 = sub_100095E9C(&v145, &v159)[5];
            while (1)
            {
              v159 = v71;
              __p = &v159;
              if (v102 == sub_100095E9C(&v145, &v159) + 6)
              {
                break;
              }

              sub_10003B85C((v102 + 4), &__p);
              v103 = sub_100007774(&buf[16]);
              v104 = sub_100007774(v103);
              sub_10000C250((v102 + 7), v160);
              v105 = sub_100007774(v104);
              sub_100007774(v105);
              if (v161 < 0)
              {
                operator delete(*v160);
              }

              if (v142 < 0)
              {
                operator delete(__p);
              }

              v106 = v102[1];
              v107 = v102;
              if (v106)
              {
                do
                {
                  v102 = v106;
                  v106 = *v106;
                }

                while (v106);
              }

              else
              {
                do
                {
                  v102 = v107[2];
                  _ZF = *v102 == v107;
                  v107 = v102;
                }

                while (!_ZF);
              }
            }

            sub_100007774(&buf[16]);
          }

          if (v71 == 3)
          {
            sub_100007774(&buf[16]);
          }

          if ((v136 & 0xC000) == 0)
          {
            sub_100007774(&buf[16]);
            v108 = std::ostream::operator<<();
            sub_100007774(v108);
            if (v138[3322])
            {
              sub_100007774(&buf[16]);
              std::ostream::operator<<();
            }

            if (v138[3323])
            {
              sub_100007774(&buf[16]);
              std::ostream::operator<<();
            }

            if (v138[3324])
            {
              sub_100007774(&buf[16]);
              std::ostream::operator<<();
            }

            if (v138[3325])
            {
              sub_100007774(&buf[16]);
              std::ostream::operator<<();
            }

            sub_10000C7D0();
            if (sub_100095E40())
            {
              if (_os_feature_enabled_impl())
              {
                if (v138[3326])
                {
                  sub_100007774(&buf[16]);
                  std::ostream::operator<<();
                  sub_100007774(&buf[16]);
                  std::ostream::operator<<();
                  sub_100007774(&buf[16]);
                  std::ostream::operator<<();
                  if (v138[3328])
                  {
                    v109 = sub_100007774(&buf[16]);
                    v110 = *v109;
                    *(v109 + *(*v109 - 24) + 8) = *(v109 + *(*v109 - 24) + 8) & 0xFFFFFFB5 | 8;
                    *(v109 + *(v110 - 24) + 8) |= 0x4000u;
                    LOBYTE(__p) = 48;
                    sub_10004DE98(v109, &__p);
                    if (v138[3328])
                    {
                      v111 = 0;
                      do
                      {
                        *(&v163[1].__locale_ + *(*&buf[16] - 24)) = 2;
                        LOBYTE(__p) = *(*(v138 + 417) + v111);
                        v112 = sub_100007774(&buf[16]);
                        sub_100007774(v112);
                        ++v111;
                      }

                      while (v111 < v138[3328]);
                    }
                  }
                }
              }
            }
          }

          v113 = qword_100BCE9A8;
          if (os_log_type_enabled(qword_100BCE9A8, OS_LOG_TYPE_INFO))
          {
            std::stringbuf::str();
            v114 = v142 >= 0 ? &__p : __p;
            *v160 = 136446210;
            *&v160[4] = v114;
            _os_log_impl(&_mh_execute_header, v113, OS_LOG_TYPE_INFO, "%{public}s", v160, 0xCu);
            if (v142 < 0)
            {
              operator delete(__p);
            }
          }

          *buf = v133;
          *&buf[*(v133 - 24)] = v131;
          *&buf[16] = v130;
          if (SHIBYTE(v165) < 0)
          {
            operator delete(v164[1]);
          }

          std::locale::~locale(v163);
          std::iostream::~basic_iostream();
          std::ios::~ios();
          ++v71;
        }

        while (v71 != v128);
      }

      sub_1000888D8(v137);
      buf[0] = 0;
      sub_1000216B4(buf);
      v115 = sub_10009561C(__src, v128, 0, sub_100092B14, 0);
      if (v115 == 118)
      {
        sub_10008D888(1);
      }

      sub_100022214(buf);
      if (v115)
      {
        if (os_log_type_enabled(qword_100BCE9A8, OS_LOG_TYPE_ERROR))
        {
          sub_10086AD74();
        }

        if (v115 == 4073)
        {
          *(v134 + 648) = 1;
        }

        else if (v115 == 118)
        {
          if (os_log_type_enabled(qword_100BCE9A8, OS_LOG_TYPE_ERROR))
          {
            sub_10086ADDC();
          }

          v123 = *(v137 + 56);
          v139[0] = _NSConcreteStackBlock;
          v139[1] = 3221225472;
          v139[2] = sub_10072CF84;
          v139[3] = &unk_100ADF8F8;
          v139[4] = v137;
          sub_10008E008(v123, 200, v139);
        }
      }

      else
      {
        sub_10008E164(v137, 1u);
        if (v128)
        {
          memcpy((v137 + 152), __src, 3352 * v128);
        }
      }

      goto LABEL_208;
    }

    if (v70 != 2 || ((v32 | v129) & 1) == 0)
    {
      sub_1000C10E8(v137);
      v118 = qword_100BCE9A8;
      if (os_log_type_enabled(qword_100BCE9A8, OS_LOG_TYPE_INFO))
      {
        if (v32)
        {
          v119 = 89;
        }

        else
        {
          v119 = 78;
        }

        if (v132)
        {
          v120 = 89;
        }

        else
        {
          v120 = 78;
        }

        v121 = *(v137 + 128);
        if (v121 > 3)
        {
          v122 = "UNKNOWN";
        }

        else
        {
          v122 = off_100B0ADD8[v121];
        }

        *buf = 67109890;
        *&buf[4] = v119;
        *&buf[8] = 1024;
        *&buf[10] = v120;
        *&buf[14] = 1024;
        *&buf[16] = v121;
        *&buf[20] = 2080;
        *&buf[22] = v122;
        _os_log_impl(&_mh_execute_header, v118, OS_LOG_TYPE_INFO, "updateAdvertisement not doing anything dataChanged:%c validSessions:%c state:%d(%s)", buf, 0x1Eu);
      }

      goto LABEL_209;
    }

    v116 = qword_100BCE9A8;
    v117 = os_log_type_enabled(qword_100BCE9A8, OS_LOG_TYPE_INFO);
    if (v32 & v132)
    {
      if (v117)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v116, OS_LOG_TYPE_INFO, "Restarting advertisement as data has changed!", buf, 2u);
      }
    }

    else
    {
      if (v117)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v116, OS_LOG_TYPE_INFO, "Stopping advertisement as there are no more advertising sessions", buf, 2u);
      }

      if (v128)
      {
        bzero((v137 + 152), 3352 * v128);
      }
    }

    sub_1000888D8(v137);
    buf[0] = 0;
    sub_1000216B4(buf);
    v124 = sub_10008D888(0);
    sub_100022214(buf);
    if (v124 == 4073)
    {
      *(v134 + 648) = 1;
    }

    else if (!v124)
    {
      sub_10008E164(v137, 3u);
LABEL_208:
      sub_10002249C(buf);
LABEL_209:
      sub_10000CEDC(&v143, v144[0]);
      sub_10008E104(&v145, v146[0]);
      sub_10008E0A0(&v147, v148[0]);
      sub_10008E0A0(&v149, v150[0]);
      sub_10008E0A0(&v151, v152[0]);
      sub_10008E0A0(&v153, v154[0]);
      if (SHIBYTE(v178) < 0)
      {
        operator delete(v177);
      }

LABEL_211:
      sub_10008667C(&v155, v156[0]);
      return sub_1000088CC(v158);
    }

    if (os_log_type_enabled(qword_100BCE9A8, OS_LOG_TYPE_ERROR))
    {
      sub_10086AD0C();
    }

    goto LABEL_208;
  }

  if (os_log_type_enabled(qword_100BCE9A8, OS_LOG_TYPE_DEBUG))
  {
    sub_10086AE54();
  }

  *(v134 + 649) = 1;
  v12 = *(v137 + 56);
  v157[0] = _NSConcreteStackBlock;
  v157[1] = 3221225472;
  v157[2] = sub_1000C0730;
  v157[3] = &unk_100ADF8F8;
  v157[4] = v137;
  sub_10008E008(v12, 200, v157);
  return sub_1000088CC(v158);
}

void sub_100088770(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38, uint64_t a39, char a40, uint64_t a41, uint64_t a42, char a43, uint64_t a44, uint64_t a45, char a46, uint64_t a47, uint64_t a48, char a49, uint64_t a50, uint64_t a51, char a52, uint64_t a53, uint64_t a54, char a55, uint64_t a56, uint64_t a57, char a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  sub_10000CEDC(&a40, a41);
  sub_10008E104(&a43, a44);
  sub_10008E0A0(&a46, a47);
  sub_10008E0A0(&a49, a50);
  sub_10008E0A0(&a52, a53);
  sub_10008E0A0(&a55, a56);
  if (SLOBYTE(STACK[0x337]) < 0)
  {
    operator delete(STACK[0x320]);
  }

  sub_10008667C(&a58, a59);
  sub_1000088CC(&a66);
  _Unwind_Resume(a1);
}

uint64_t sub_1000888D8(uint64_t a1)
{
  if (qword_100BC7AC8 != -1)
  {
    sub_10086BA88();
  }

  v2 = sub_10000C7D0();
  result = (*(*v2 + 4080))(v2);
  if (result)
  {
    if (!*(a1 + 17104))
    {
      sub_100088DD4();
    }
  }

  return result;
}

void sub_100088A40(uint64_t a1, int a2, int a3, int a4)
{
  *a1 = &off_100B0C418;
  *(a1 + 8) = 0;
  v8 = (a1 + 8);
  v9 = &off_100B51000;
  if (qword_100B512C8 != -1)
  {
    sub_100872D28();
  }

  v10 = sub_10008D004(off_100B512C0, a3);
  if (a4)
  {
    v11 = [NSString stringWithFormat:@"%@.ForceWake", v10];

    AssertionID = 0;
    *v31 = 1;
    Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    CFDictionaryAddValue(Mutable, @"AssertName", v11);
    v13 = IOPMAssertionDeclareSystemActivityWithProperties();
    v14 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_INFO))
    {
      *buf = 138412802;
      v24 = v11;
      LOWORD(v25) = 1024;
      *(&v25 + 2) = v13;
      WORD3(v25) = 2080;
      *(&v25 + 1) = "kIOPMSystemSleepNotReverted";
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "IOPMAssertionDeclareSystemActivityWithProperties %@ returned %d systemState=%s ", buf, 0x1Cu);
    }

    CFRelease(Mutable);
    v9 = &off_100B51000;
  }

  else
  {
    AssertionID = 0;
    v13 = IOPMAssertionCreateWithName(@"PreventUserIdleSystemSleep", 0xFFu, v10, &AssertionID);
    v11 = v10;
  }

  objc_storeStrong(v8, v11);
  *(a1 + 16) = a3;
  *(a1 + 20) = a2;
  *(a1 + 24) = a4;
  *(a1 + 28) = AssertionID;
  if (v13)
  {
    v15 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
    {
      v20 = v11;
      v21 = [v11 UTF8String];
      *buf = 136315394;
      v24 = v21;
      LOWORD(v25) = 1024;
      *(&v25 + 2) = v13;
      _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Failed to take assertionId for name: %s, return value was: %d", buf, 0x12u);
      v15 = qword_100BCE8D8;
    }

    if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
    {
      v16 = v11;
      sub_100872D3C([v11 UTF8String], v31, v13, v15);
    }
  }

  v17 = *(a1 + 20);
  Current = CFAbsoluteTimeGetCurrent();
  v19 = *(a1 + 28);
  if (v9[89] != -1)
  {
    sub_100872D94();
  }

  sub_10008DC2C(off_100B512C0);
  if (v9[89] != -1)
  {
    sub_100872D94();
  }

  *buf = v17;
  LODWORD(v24) = 0;
  HIDWORD(v24) = a3;
  LODWORD(v25) = 0;
  *(&v25 + 4) = Current;
  HIDWORD(v25) = v13;
  v26 = a4;
  v27 = 0;
  v28 = 0;
  v29 = v19;
  v30 = 0;
  sub_10008D9FC(off_100B512C0);
}

BOOL sub_100088E58(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  if (*a2 != *a3)
  {
    return 1;
  }

  if (*(a2 + 1) != *(a3 + 1))
  {
    return 1;
  }

  if (a2[4] != a3[4])
  {
    return 1;
  }

  if (*(a2 + 828) != *(a3 + 828))
  {
    return 1;
  }

  if (*(a2 + 1654) != *(a3 + 1654))
  {
    return 1;
  }

  if (a2[3317] != a3[3317])
  {
    return 1;
  }

  if (a2[3318] != a3[3318])
  {
    return 1;
  }

  if (a2[3344] != a3[3344])
  {
    return 1;
  }

  v5 = *(a1 + 16992);
  if (memcmp(a2 + 5, a3 + 5, v5) || memcmp(a2 + 1658, a3 + 1658, v5))
  {
    return 1;
  }

  return *(a2 + 3310) != *(a3 + 3310) || *(a2 + 3313) != *(a3 + 3313);
}

void sub_100088F6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v10 = __chkstk_darwin();
  v441 = v12;
  v442 = v11;
  v440 = v13;
  v15 = v14;
  v446 = v16;
  v18 = v17;
  v431 = v19;
  v20 = v10;
  v463 = 0uLL;
  v464 = 0;
  v461 = 0uLL;
  v462 = 0;
  v459 = 0uLL;
  v460 = 0;
  v456 = 0;
  v457 = 0;
  v458 = 0;
  v524 = 0x4000;
  v523 = 0x4000400040004000;
  bzero(v17, 0xD18uLL);
  v437 = v15;
  if (v15[1].n128_i8[7] < 0)
  {
    *v15->n128_u64[0] = 0;
    v15->n128_u64[1] = 0;
  }

  else
  {
    v15->n128_u8[0] = 0;
    v15[1].n128_u8[7] = 0;
  }

  if (v446)
  {
    v21 = 0;
    v22 = vdupq_n_s64(v446 - 1);
    v23 = v18 + 15080;
    v24 = xmmword_1008A4930;
    v25 = xmmword_1008A4940;
    v26 = xmmword_1008A4950;
    v27 = xmmword_1008A4960;
    v28 = xmmword_1008A4970;
    v29 = xmmword_1008A4980;
    v30 = xmmword_1008A4990;
    v31 = v18 + 3348;
    v32 = xmmword_1008A49A0;
    v33 = vdupq_n_s64(0x10uLL);
    do
    {
      v34 = vmovn_s64(vcgeq_u64(v22, v32));
      if (vuzp1_s8(vuzp1_s16(v34, *v22.i8), *v22.i8).u8[0])
      {
        LOBYTE(v18[v21 + 1672]) = 7;
      }

      if (vuzp1_s8(vuzp1_s16(v34, *&v22), *&v22).i8[1])
      {
        LOBYTE(v31[v21]) = 7;
      }

      if (vuzp1_s8(vuzp1_s16(*&v22, vmovn_s64(vcgeq_u64(v22, *&v30))), *&v22).i8[2])
      {
        LOBYTE(v31[v21 + 1676]) = 7;
        LOBYTE(v18[v21 + 6700]) = 7;
      }

      v35 = vmovn_s64(vcgeq_u64(v22, v29));
      if (vuzp1_s8(*&v22, vuzp1_s16(v35, *&v22)).i32[1])
      {
        LOBYTE(v18[v21 + 8376]) = 7;
      }

      if (vuzp1_s8(*&v22, vuzp1_s16(v35, *&v22)).i8[5])
      {
        LOBYTE(v18[v21 + 10052]) = 7;
      }

      if (vuzp1_s8(*&v22, vuzp1_s16(*&v22, vmovn_s64(vcgeq_u64(v22, *&v28)))).i8[6])
      {
        LOBYTE(v18[v21 + 11728]) = 7;
        LOBYTE(v18[v21 + 13404]) = 7;
      }

      v36 = vmovn_s64(vcgeq_u64(v22, v27));
      if (vuzp1_s8(vuzp1_s16(v36, *v22.i8), *v22.i8).u8[0])
      {
        LOBYTE(v23[v21]) = 7;
      }

      if (vuzp1_s8(vuzp1_s16(v36, *&v22), *&v22).i8[1])
      {
        LOBYTE(v23[v21 + 1676]) = 7;
      }

      if (vuzp1_s8(vuzp1_s16(*&v22, vmovn_s64(vcgeq_u64(v22, *&v26))), *&v22).i8[2])
      {
        LOBYTE(v18[v21 + 18432]) = 7;
        LOBYTE(v18[v21 + 20108]) = 7;
      }

      v37 = vmovn_s64(vcgeq_u64(v22, v25));
      if (vuzp1_s8(*&v22, vuzp1_s16(v37, *&v22)).i32[1])
      {
        LOBYTE(v18[v21 + 21784]) = 7;
      }

      if (vuzp1_s8(*&v22, vuzp1_s16(v37, *&v22)).i8[5])
      {
        LOBYTE(v18[v21 + 23460]) = 7;
      }

      if (vuzp1_s8(*&v22, vuzp1_s16(*&v22, vmovn_s64(vcgeq_u64(v22, *&v24)))).i8[6])
      {
        LOBYTE(v18[v21 + 25136]) = 7;
        LOBYTE(v18[v21 + 26812]) = 7;
      }

      v29 = vaddq_s64(v29, v33);
      v30 = vaddq_s64(v30, v33);
      v32 = vaddq_s64(v32, v33);
      v28 = vaddq_s64(v28, v33);
      v27 = vaddq_s64(v27, v33);
      v26 = vaddq_s64(v26, v33);
      v25 = vaddq_s64(v25, v33);
      v21 += 26816;
      v24 = vaddq_s64(v24, v33);
    }

    while (26816 * ((v446 + 15) >> 4) != v21);
  }

  v439 = v20 + 0x4000;
  v38 = *v431;
  v443 = v18;
  v444 = v431 + 1;
  if (*v431 == v431 + 1)
  {
    v433 = 0;
    v39 = 0;
    v436 = 28;
    v434 = 28;
    goto LABEL_162;
  }

  v430 = v20;
  v39 = 0;
  v433 = 0;
  v432 = 0;
  v438 = 0;
  v40 = v446;
  do
  {
    if (qword_100B512F8 != -1)
    {
      sub_10086ACE4();
    }

    v41 = sub_10006E254(off_100B512F0, v38[4]);
    v42 = *(v38[6] + 264);
    v43 = &v18[1676 * v42];
    *(v43 + 3344) = 7;
    if (_os_feature_enabled_impl())
    {
      v44 = *(v38[6] + 488);
      v45 = *(v38[6] + 12);
      if ([v44 count] && objc_msgSend(v44, "count") <= v446)
      {
        if (v45)
        {
          v156 = 0;
        }

        else
        {
          v156 = 3;
        }

        v445 = v156;
        v157 = qword_100BCE9A8;
        if (os_log_type_enabled(qword_100BCE9A8, OS_LOG_TYPE_DEFAULT))
        {
          v158 = __p;
          sub_100018384(v38[4], __p);
          if (v508 < 0)
          {
            v158 = __p[0];
          }

          v159 = *(v38[6] + 488);
          v160 = *(v38[6] + 222);
          *v509 = 136446722;
          *&v509[4] = v158;
          *&v509[12] = 2112;
          *v510 = v159;
          *&v510[8] = 1024;
          *&v510[10] = v160;
          _os_log_impl(&_mh_execute_header, v157, OS_LOG_TYPE_DEFAULT, "SWUP: Session %{public}s has payload data array len %@ with adv interval %u", v509, 0x1Cu);
          if (SHIBYTE(v508) < 0)
          {
            operator delete(__p[0]);
          }
        }

        bzero(v18, 0xD18uLL);
        if (v446)
        {
          v161 = v18;
          do
          {
            v161[1] = 0x4000;
            *(v161 + 3344) = 7;
            v161 += 1676;
            --v40;
          }

          while (v40);
        }

        v162 = 0;
        v163 = v18 + 3311;
        while ([v44 count] > v162)
        {
          v164 = [v44 objectAtIndexedSubscript:v162];
          v165 = v164;
          memcpy(v18 + 5, [v164 bytes], objc_msgSend(v164, "length"));
          v166 = [v164 length];
          v18[828] = v166;
          v167 = v18;
          v168 = *(v439 + 706);
          if (!*(v439 + 706))
          {
            v168 = *(v38[6] + 222);
          }

          *(v167 + 1) = v168;
          *v167 = 0;
          v169 = v167;
          v167[1] = v445;
          v170 = qword_100BCE9A8;
          if (os_log_type_enabled(qword_100BCE9A8, OS_LOG_TYPE_DEFAULT))
          {
            _X8 = v169 + 13366;
            __asm { PRFM            #0, [X8] }

            v175 = v169[3310];
            v176 = v169[3317];
            v177 = v169[3344];
            *v509 = 67111682;
            *&v509[4] = v162;
            *&v509[8] = 1040;
            *&v509[10] = v166;
            *v510 = 2096;
            *&v510[2] = v163 - 3306;
            *&v510[10] = 1024;
            *&v510[12] = v166;
            *&v510[16] = 1024;
            *&v511[4] = 1040;
            *v512 = 6;
            *&v512[4] = 2096;
            v513 = v163;
            v514 = 1024;
            v515 = v175;
            v516 = 1024;
            *v511 = v168;
            v517 = v176;
            v518 = 1024;
            v519 = v445;
            v520 = 1024;
            v521 = v177;
            _os_log_impl(&_mh_execute_header, v170, OS_LOG_TYPE_DEFAULT, "SWUP: instance=%d, AdvData=%.*P(%d) interval=%x address:%.6P type:%d overrideAddress:%d ADVType:%d advChannelMask %d", v509, 0x4Cu);
          }

          ++v162;
          v18 = v169 + 3352;
          v163 += 3352;
        }

        goto LABEL_613;
      }
    }

    if (qword_100B512F8 != -1)
    {
      sub_10086ACE4();
    }

    if (!sub_100026F14(off_100B512F0, v38[4]))
    {
      goto LABEL_46;
    }

    LODWORD(v492) = 0;
    buf[0] = 0;
    if (qword_100B512F8 != -1)
    {
      sub_10086ACE4();
    }

    sub_100063344(off_100B512F0, v38[4], &v492, buf);
    if (v492 == 1)
    {
LABEL_46:
      if (v41 != 1 && v41 != 32)
      {
        if (v41 == 16)
        {
          sub_1000965B8(&v463, (v38 + 5));
          v46 = v38[6];
          if (v42)
          {
            v47 = *(&v523 + v42);
            if (v47 >= *(v46 + 222))
            {
              LOWORD(v47) = *(v46 + 222);
            }
          }

          else
          {
            LOWORD(v47) = 48;
          }

          *(&v523 + v42) = v47;
          v60 = *(v46 + 256);
          if (!v60)
          {
            goto LABEL_85;
          }

          v61 = v446 <= 1 ? 0 : v42;
          if ((v61 & 0xFFFFFFFB) == 0)
          {
            goto LABEL_85;
          }

          goto LABEL_84;
        }

        if (*(v38[6] + 264) != 2)
        {
LABEL_85:
          v64 = v38[6];
          if (*(v64 + 264) == 4)
          {
            v65 = *(v64 + 339);
            if (*(v64 + 339))
            {
              v66 = qword_100BCE9A8;
              if (os_log_type_enabled(qword_100BCE9A8, OS_LOG_TYPE_DEFAULT))
              {
                *v509 = 67109376;
                *&v509[4] = v65;
                *&v509[8] = 1024;
                *&v509[10] = 4;
                _os_log_impl(&_mh_execute_header, v66, OS_LOG_TYPE_DEFAULT, "Overriding primaryPHY:%d instance:%d", v509, 0xEu);
                v64 = v38[6];
                LOBYTE(v65) = *(v64 + 339);
                v67 = *(v64 + 264);
              }

              else
              {
                v67 = 4;
              }

              LOBYTE(v443[1676 * v67 + 1661]) = v65;
            }

            else
            {
              v67 = 4;
            }

            v68 = *(v64 + 340);
            if (*(v64 + 340))
            {
              v69 = qword_100BCE9A8;
              if (os_log_type_enabled(qword_100BCE9A8, OS_LOG_TYPE_DEFAULT))
              {
                *v509 = 67109376;
                *&v509[4] = v68;
                *&v509[8] = 1024;
                *&v509[10] = v67;
                _os_log_impl(&_mh_execute_header, v69, OS_LOG_TYPE_DEFAULT, "Overriding secondaryPHY:%d instance:%d", v509, 0xEu);
                v64 = v38[6];
                LOBYTE(v68) = *(v64 + 340);
              }

              HIBYTE(v443[1676 * *(v64 + 264) + 1661]) = v68;
            }

            v70 = sub_10000C7D0();
            v18 = v443;
            if ((sub_100413638(v70) & 1) != 0 || (v71 = sub_10000C7D0(), (*(*v71 + 3080))(v71)))
            {
              v72 = v38[6];
              v73 = *(v72 + 343);
              if (*(v72 + 343))
              {
                v74 = qword_100BCE9A8;
                if (os_log_type_enabled(qword_100BCE9A8, OS_LOG_TYPE_DEFAULT))
                {
                  v75 = *(v72 + 264);
                  *v509 = 67109376;
                  *&v509[4] = v73;
                  *&v509[8] = 1024;
                  *&v509[10] = v75;
                  _os_log_impl(&_mh_execute_header, v74, OS_LOG_TYPE_DEFAULT, "Overriding primaryPhyOptions:%d instance:%d", v509, 0xEu);
                  v72 = v38[6];
                  LOBYTE(v73) = *(v72 + 343);
                }

                LOBYTE(v443[1676 * *(v72 + 264) + 1662]) = v73;
              }

              v76 = *(v72 + 344);
              if (*(v72 + 344))
              {
                v77 = qword_100BCE9A8;
                if (os_log_type_enabled(qword_100BCE9A8, OS_LOG_TYPE_DEFAULT))
                {
                  v78 = *(v72 + 264);
                  *v509 = 67109376;
                  *&v509[4] = v76;
                  *&v509[8] = 1024;
                  *&v509[10] = v78;
                  _os_log_impl(&_mh_execute_header, v77, OS_LOG_TYPE_DEFAULT, "Overriding secondaryPhyOptions:%d instance:%d", v509, 0xEu);
                  v72 = v38[6];
                  LOBYTE(v76) = *(v72 + 344);
                }

                HIBYTE(v443[1676 * *(v72 + 264) + 1662]) = v76;
              }
            }
          }

          sub_10000C7D0();
          if (sub_100095E40())
          {
            if (_os_feature_enabled_impl())
            {
              v79 = v38[6];
              if (*(v79 + 345))
              {
                v80 = &v18[1676 * *(v79 + 264)];
                *(v80 + 3326) = *(v79 + 345);
                *(v80 + 3327) = *(v79 + 346);
                v81 = *(v79 + 352);
                v82 = v81;
                *&v18[1676 * *(v38[6] + 264) + 1668] = [v81 bytes];

                v83 = qword_100BCE9A8;
                if (os_log_type_enabled(qword_100BCE9A8, OS_LOG_TYPE_DEFAULT))
                {
                  v84 = &v18[1676 * *(v38[6] + 264)];
                  v85 = *(v84 + 3326);
                  v86 = *(v84 + 3327);
                  v87 = *(v84 + 3328);
                  v88 = *(v84 + 417);
                  *v509 = 67109890;
                  *&v509[8] = 1024;
                  *&v509[10] = v86;
                  *v510 = 1024;
                  *&v509[4] = v85;
                  *&v510[2] = v87;
                  *&v510[6] = 2080;
                  *&v510[8] = v88;
                  _os_log_impl(&_mh_execute_header, v83, OS_LOG_TYPE_DEFAULT, "Using DBAF - getDecisionAdvDataEnable: %d, getDBAFDecisionTypeFlags: %d, getDBAFDecisionDataLength: %d, getDBAFDecisionData: %s", v509, 0x1Eu);
                }
              }
            }
          }

          v89 = v38[6];
          if (*(v89 + 12) == 1 && *(v89 + 264) == 4)
          {
            v90 = qword_100BCE9A8;
            if (os_log_type_enabled(qword_100BCE9A8, OS_LOG_TYPE_DEFAULT))
            {
              sub_100018384(v38[4], v509);
              v91 = v509;
              if (v510[9] < 0)
              {
                v91 = *v509;
              }

              LODWORD(__p[0]) = 136446210;
              *(__p + 4) = v91;
              _os_log_impl(&_mh_execute_header, v90, OS_LOG_TYPE_DEFAULT, "Forcing extended connectable instead of legacy connectable due to session %{public}s", __p, 0xCu);
              if ((v510[9] & 0x80000000) != 0)
              {
                operator delete(*v509);
              }

              v89 = v38[6];
            }

            v433 = 1;
          }

          if (*(v89 + 307) == 1)
          {
            v92 = qword_100BCE9A8;
            if (os_log_type_enabled(qword_100BCE9A8, OS_LOG_TYPE_INFO))
            {
              sub_100018384(v38[4], v509);
              v93 = v509;
              if (v510[9] < 0)
              {
                v93 = *v509;
              }

              LODWORD(__p[0]) = 136446210;
              *(__p + 4) = v93;
              _os_log_impl(&_mh_execute_header, v92, OS_LOG_TYPE_INFO, "Session %{public}s wants to stop on address change", __p, 0xCu);
              if ((v510[9] & 0x80000000) != 0)
              {
                operator delete(*v509);
              }

              v89 = v38[6];
            }
          }

          if (*(v89 + 464) == 1)
          {
            v94 = *(v89 + 264);
            if (v94)
            {
              v438 |= v94 == 1;
            }

            else
            {
              v432 = 1;
            }
          }

          if (v41 >= 8 && (sub_10000C5E0(v89 + 152) || sub_10000C5E0(v38[6] + 136)))
          {
            v95 = sub_10000C7D0();
            if ((*(*v95 + 3032))(v95))
            {
              if (*(v43 + 3321))
              {
                v96 = 1;
              }

              else
              {
                v96 = *(v38[6] + 409);
              }

              *(v43 + 3321) = v96 & 1;
            }

            sub_1000965B8(&v456, (v38 + 5));
            if (WORD1(v523) >= *(v38[6] + 222))
            {
              v97 = *(v38[6] + 222);
            }

            else
            {
              v97 = WORD1(v523);
            }

            WORD1(v523) = v97;
            v98 = qword_100BCE9A8;
            if (os_log_type_enabled(qword_100BCE9A8, OS_LOG_TYPE_DEFAULT))
            {
              sub_100018384(v38[4], __p);
              v99 = v508 >= 0 ? __p : __p[0];
              v100 = sub_10000C5E0(v38[6] + 152);
              v101 = sub_10000C5E0(v38[6] + 136);
              v102 = *(v38[6] + 222);
              *v509 = 136447234;
              *&v509[4] = v99;
              *&v509[12] = 2048;
              *v510 = v100;
              *&v510[8] = 2048;
              *&v510[10] = v101;
              *v511 = 1024;
              *&v511[2] = v97;
              *v512 = 1024;
              *&v512[2] = v102;
              _os_log_impl(&_mh_execute_header, v98, OS_LOG_TYPE_DEFAULT, "Session %{public}s has Non-Apple manufacturer data len %zu LE Bluetooth Device address len %zu updated minNonConnectableInterval %u (%u from session)", v509, 0x2Cu);
              if (SHIBYTE(v508) < 0)
              {
                operator delete(__p[0]);
              }
            }
          }

          v39 = 1;
          goto LABEL_149;
        }
      }

      v50 = v38[6];
      if (*(v50 + 264) == 2)
      {
        *__p = xmmword_1008A4F34;
        LODWORD(v508) = 0;
        sub_10000D03C(v509, __p);
        v51 = sub_100058794(v50 + 112, v509);
        v52 = v38[6];
        if (v52 + 120 == v51 && (*(v52 + 410) & 1) == 0)
        {
          sub_100725650(v52);
          v53 = qword_100BCEA40;
          if (os_log_type_enabled(qword_100BCEA40, OS_LOG_TYPE_DEFAULT))
          {
            sub_100018384(v38[4], v509);
            v54 = v509;
            if (v510[9] < 0)
            {
              v54 = *v509;
            }

            LODWORD(__p[0]) = 136446210;
            *(__p + 4) = v54;
            _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_DEFAULT, "session %{public}s advertises Exposure Notification data", __p, 0xCu);
            if ((v510[9] & 0x80000000) != 0)
            {
              operator delete(*v509);
            }
          }
        }
      }

      v55 = sub_10000C7D0();
      if ((*(*v55 + 3032))(v55))
      {
        if (*(v43 + 3321))
        {
          v56 = 1;
        }

        else
        {
          v56 = *(v38[6] + 409);
        }

        *(v43 + 3321) = v56 & 1;
      }

      sub_1000965B8(&v461, (v38 + 5));
      v57 = v38[6];
      v58 = *(v57 + 264);
      v59 = *(&v523 + v58);
      if (v59 >= *(v57 + 222))
      {
        LOWORD(v59) = *(v57 + 222);
      }

      *(&v523 + v58) = v59;
      v60 = *(v57 + 256);
      if (!v60)
      {
        goto LABEL_85;
      }

      v61 = v446 <= 1 ? 0 : v42;
      if ((v61 & 0xFFFFFFFB) == 0)
      {
        goto LABEL_85;
      }

LABEL_84:
      HIBYTE(v18[1676 * v61 + 1658]) = 1;
      v62 = sub_10009A66C(v60);
      v63 = &v18[1676 * v61];
      *(v63 + 3316) = BYTE6(v62);
      v63[1657] = WORD2(v62);
      *(v63 + 1655) = v62;
      goto LABEL_85;
    }

    v48 = qword_100BCE9A8;
    if (os_log_type_enabled(qword_100BCE9A8, OS_LOG_TYPE_INFO))
    {
      sub_100018384(v38[4], __p);
      v49 = __p;
      if (v508 < 0)
      {
        v49 = __p[0];
      }

      *v509 = 136446722;
      *&v509[4] = v49;
      *&v509[12] = 1024;
      *v510 = v492;
      *&v510[4] = 1024;
      *&v510[6] = buf[0];
      _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_INFO, "session %{public}s cannot advertise in powerState:%d restrictedMode:%d", v509, 0x18u);
      if (SHIBYTE(v508) < 0)
      {
        operator delete(__p[0]);
      }
    }

LABEL_149:
    v103 = v38[1];
    if (v103)
    {
      do
      {
        v104 = v103;
        v103 = *v103;
      }

      while (v103);
    }

    else
    {
      do
      {
        v104 = v38[2];
        _ZF = *v104 == v38;
        v38 = v104;
      }

      while (!_ZF);
    }

    v38 = v104;
  }

  while (v104 != v444);
  v106 = 28;
  if (v432)
  {
    v107 = 31;
  }

  else
  {
    v107 = 28;
  }

  v434 = v107;
  if (v438)
  {
    v106 = 31;
  }

  v436 = v106;
  v20 = v430;
LABEL_162:
  v108 = v20 + 16936;
  v109 = *(v20 + 16944);
  if (v109 != v20 + 16936)
  {
    v110 = 0;
    v111 = 0;
    while (1)
    {
      v112 = *v444;
      if (!*v444)
      {
        goto LABEL_172;
      }

      v113 = *(v109 + 16);
      v114 = v431 + 1;
      do
      {
        v115 = v112[4];
        _CF = v115 >= v113;
        v117 = v115 < v113;
        if (_CF)
        {
          v114 = v112;
        }

        v112 = v112[v117];
      }

      while (v112);
      if (v114 != v444 && (v118 = v114[4], v113 >= v118))
      {
        v120 = v114[6];
        if (*(v120 + 264) != 2)
        {
          __p[1] = 0;
          __p[0] = 0;
          v508 = 0;
          sub_10000CB74(__p, (v120 + 64));
          v509[0] = 0;
          *&v492 = v509;
          v123 = sub_100096318(v442, v509);
          sub_100098724(v123, v123 + 5, __p, 0xFFFFu);
          v124 = v523;
          if (v523 >= 0x122u)
          {
            v124 = 290;
          }

          LOWORD(v523) = v124;
          if ((*(v439 + 578) & 1) == 0)
          {
            if (os_log_type_enabled(qword_100BCE9A8, OS_LOG_TYPE_DEBUG))
            {
              sub_10086B8AC(&v454, v455);
            }

            goto LABEL_206;
          }

          if (v446 < 4 || (*(v439 + 577) & 1) == 0)
          {
            if (os_log_type_enabled(qword_100BCE9A8, OS_LOG_TYPE_DEBUG))
            {
              sub_10086B8E8(&v452, v453);
            }

            goto LABEL_206;
          }

          v492 = 0uLL;
          *&v493 = 0;
          sub_1000987D4(v114[6], 2, &v492);
          v125 = v492;
          if (*(&v492 + 1) == v492)
          {
            v133 = qword_100BCE9A8;
            if (os_log_type_enabled(qword_100BCE9A8, OS_LOG_TYPE_DEBUG))
            {
              sub_100018384(v114[4], v509);
              if (v510[9] >= 0)
              {
                v142 = v509;
              }

              else
              {
                v142 = *v509;
              }

              *buf = 136446210;
              *&buf[4] = v142;
              v143 = v133;
              v144 = "session %{public}s does not have 16bit UUID's";
              goto LABEL_223;
            }

            if (!v125)
            {
              goto LABEL_206;
            }
          }

          else
          {
            v126 = v110;
            v127 = *(v439 + 610);
            v128 = v126;
            if (v127 <= v126)
            {
              v134 = qword_100BCE9A8;
              if (os_log_type_enabled(qword_100BCE9A8, OS_LOG_TYPE_DEBUG))
              {
                *v509 = 67109376;
                *&v509[4] = v128;
                *&v509[8] = 1024;
                *&v509[10] = v127;
                v110 = v128;
                _os_log_debug_impl(&_mh_execute_header, v134, OS_LOG_TYPE_DEBUG, "We have %d advertisers, max is %d, can't fit more", v509, 0xEu);
              }

              else
              {
                v110 = v128;
              }

              goto LABEL_217;
            }

            v129 = sub_1000269D4();
            v110 = v128;
            v130 = v114[6];
            if (v129 - *(v130 + 320) < *(v130 + 328))
            {
              if (*(v130 + 336))
              {
                sub_1000965B8(&v459, (v114 + 5));
                v131 = v524;
                if (v524 >= 0x122u)
                {
                  v131 = 290;
                }

                v524 = v131;
                v110 = (v128 + 1);
                goto LABEL_217;
              }

              v141 = qword_100BCE9A8;
              if (!os_log_type_enabled(qword_100BCE9A8, OS_LOG_TYPE_DEBUG))
              {
                goto LABEL_217;
              }

              sub_100018384(v114[4], v509);
              if (v510[9] >= 0)
              {
                v145 = v509;
              }

              else
              {
                v145 = *v509;
              }

              *buf = 136446210;
              *&buf[4] = v145;
              v143 = v141;
              v144 = "session %{public}s was never in foreground, extended advertising not allowed, skipping";
LABEL_223:
              _os_log_debug_impl(&_mh_execute_header, v143, OS_LOG_TYPE_DEBUG, v144, buf, 0xCu);
              if ((v510[9] & 0x80000000) == 0)
              {
                goto LABEL_217;
              }

              v140 = *v509;
LABEL_225:
              operator delete(v140);
              goto LABEL_217;
            }

            v135 = qword_100BCE9A8;
            if (os_log_type_enabled(qword_100BCE9A8, OS_LOG_TYPE_DEBUG))
            {
              sub_100018384(v114[4], buf);
              v136 = buf;
              if (SBYTE7(v485) < 0)
              {
                v136 = *buf;
              }

              v137 = v114[6];
              v139 = *(v137 + 320);
              v138 = *(v137 + 328);
              *v509 = 136446722;
              *&v509[4] = v136;
              *&v509[12] = 2048;
              *v510 = v129 - v139;
              *&v510[8] = 2048;
              *&v510[10] = v138;
              _os_log_debug_impl(&_mh_execute_header, v135, OS_LOG_TYPE_DEBUG, "session %{public}s has been advertising in background for %llu seconds, but max is %llu, skipping", v509, 0x20u);
              if (SBYTE7(v485) < 0)
              {
                v140 = *buf;
                goto LABEL_225;
              }
            }

LABEL_217:
            v125 = v492;
            if (!v492)
            {
LABEL_206:
              if (__p[0])
              {
                __p[1] = __p[0];
                operator delete(__p[0]);
              }

              ++v111;
              v39 = 1;
              goto LABEL_173;
            }
          }

          *(&v492 + 1) = v125;
          operator delete(v125);
          goto LABEL_206;
        }

        v121 = qword_100BCEA40;
        if (os_log_type_enabled(qword_100BCEA40, OS_LOG_TYPE_INFO))
        {
          sub_100018384(v118, v509);
          if (v510[9] >= 0)
          {
            v122 = v509;
          }

          else
          {
            v122 = *v509;
          }

          LODWORD(__p[0]) = 136446210;
          *(__p + 4) = v122;
          _os_log_impl(&_mh_execute_header, v121, OS_LOG_TYPE_INFO, "Session %{public}s is on the EN instance, skipping hash", __p, 0xCu);
LABEL_199:
          if ((v510[9] & 0x80000000) != 0)
          {
            operator delete(*v509);
          }
        }
      }

      else
      {
LABEL_172:
        v119 = qword_100BCE9A8;
        if (os_log_type_enabled(qword_100BCE9A8, OS_LOG_TYPE_ERROR))
        {
          sub_100018384(*(v109 + 16), v509);
          if (v510[9] >= 0)
          {
            v132 = v509;
          }

          else
          {
            v132 = *v509;
          }

          LODWORD(__p[0]) = 136446210;
          *(__p + 4) = v132;
          _os_log_error_impl(&_mh_execute_header, v119, OS_LOG_TYPE_ERROR, "Could not find %{public}s in our advertising sessions, ignoring", __p, 0xCu);
          goto LABEL_199;
        }
      }

LABEL_173:
      v109 = *(v109 + 8);
      if (v109 == v108)
      {
        v146 = v111;
        LODWORD(v110) = v110;
        goto LABEL_232;
      }
    }
  }

  v146 = 0;
  LODWORD(v110) = 0;
LABEL_232:
  v147 = qword_100BCE9A8;
  if (os_log_type_enabled(qword_100BCE9A8, OS_LOG_TYPE_DEFAULT))
  {
    *v509 = 67109376;
    *&v509[4] = v146;
    *&v509[8] = 1024;
    *&v509[10] = v110;
    _os_log_impl(&_mh_execute_header, v147, OS_LOG_TYPE_DEFAULT, "background advertising sessions:AppleMFG:%d Extended:%d", v509, 0xEu);
  }

  if (v39)
  {
    if (qword_100B50910 != -1)
    {
      sub_10086AEE8();
    }

    if ((sub_10009885C(off_100B50908) & 1) == 0)
    {
      v148 = qword_100BCE9A8;
      if (os_log_type_enabled(qword_100BCE9A8, OS_LOG_TYPE_INFO))
      {
        *v509 = 0;
        _os_log_impl(&_mh_execute_header, v148, OS_LOG_TYPE_INFO, "Limiting advertisement duty cycle based on other activies", v509, 2u);
      }

      v149 = v523;
      if (v523 <= 0x122u)
      {
        v149 = 290;
      }

      LOWORD(v523) = v149;
      v150 = WORD1(v523);
      if (WORD1(v523) <= 0x122u)
      {
        v150 = 290;
      }

      WORD1(v523) = v150;
    }

    bzero(v509, 0x203AuLL);
    bzero(__p, 0x203AuLL);
    v506 = 0;
    v505 = 0;
    v504 = 0;
    v503 = 0;
    v500[0] = v434;
    v500[1] = v436;
    v501 = vdupq_n_s64(0x1FuLL);
    v435 = *(v439 + 608);
    v502 = v435;
    v499 = 0;
    v498 = 0u;
    v497 = 0u;
    v496 = 0u;
    v495 = 0u;
    v494 = 0u;
    v493 = 0u;
    v492 = 0u;
    v491 = 0;
    v490 = 0u;
    v489 = 0u;
    v488 = 0u;
    v487 = 0u;
    v486 = 0u;
    v485 = 0u;
    *buf = 0u;
    v483 = 0;
    v482 = 0u;
    memset(v481, 0, sizeof(v481));
    v480 = 0;
    memset(v479, 0, sizeof(v479));
    v478 = 0;
    memset(v477, 0, sizeof(v477));
    v476 = 0;
    memset(v475, 0, sizeof(v475));
    v451 = 0;
    v450 = 0;
    if (*(&v463 + 1) != v463)
    {
      v151 = *(v463 + 8);
      if (*(v151 + 39) < 0)
      {
        sub_100008904(__dst, *(v151 + 16), *(v151 + 24));
      }

      else
      {
        __dst[0] = *(v151 + 16);
        __dst[1].n128_u64[0] = *(v151 + 32);
      }

      v178 = v437;
      if (v437[1].n128_i8[7] < 0)
      {
        operator delete(v437->n128_u64[0]);
        v178 = v437;
      }

      *v178 = __dst[0];
      v178[1].n128_u64[0] = __dst[1].n128_u64[0];
      for (i = v463; i != *(&v463 + 1); i += 16)
      {
        memset(__dst, 0, 24);
        sub_1000987D4(*(i + 8), 2, __dst);
        if (v446 < 2)
        {
          v181 = 0;
        }

        else
        {
          v181 = *(*(i + 8) + 264);
        }

        sub_100098724(v180, &v492 + 3 * v181, __dst, 0xFFFFu);
        sub_1000987D4(*(i + 8), 4, v473);
        v182 = __dst[0].n128_u64[0];
        if (__dst[0].n128_u64[0])
        {
          __dst[0].n128_u64[1] = __dst[0].n128_u64[0];
          operator delete(__dst[0].n128_u64[0]);
        }

        __dst[0] = *v473;
        __dst[1].n128_u64[0] = v474;
        sub_100098724(v182, &buf[24 * v181], __dst, 0xFFFFu);
        sub_1000987D4(*(i + 8), 16, v473);
        v183 = __dst[0].n128_u64[0];
        if (__dst[0].n128_u64[0])
        {
          __dst[0].n128_u64[1] = __dst[0].n128_u64[0];
          operator delete(__dst[0].n128_u64[0]);
        }

        __dst[0] = *v473;
        __dst[1].n128_u64[0] = v474;
        sub_100098724(v183, v481 + 3 * v181, __dst, 0xFFFFu);
        sub_10009869C(*(i + 8), 2, v473);
        v184 = __dst[0].n128_u64[0];
        if (__dst[0].n128_u64[0])
        {
          __dst[0].n128_u64[1] = __dst[0].n128_u64[0];
          operator delete(__dst[0].n128_u64[0]);
        }

        __dst[0] = *v473;
        __dst[1].n128_u64[0] = v474;
        sub_100098724(v184, v479 + 3 * v181, __dst, 0xFFFFu);
        sub_10009869C(*(i + 8), 4, v473);
        v185 = __dst[0].n128_u64[0];
        if (__dst[0].n128_u64[0])
        {
          __dst[0].n128_u64[1] = __dst[0].n128_u64[0];
          operator delete(__dst[0].n128_u64[0]);
        }

        __dst[0] = *v473;
        __dst[1].n128_u64[0] = v474;
        sub_100098724(v185, v477 + 3 * v181, __dst, 0xFFFFu);
        sub_10009869C(*(i + 8), 16, v473);
        v186 = __dst[0].n128_u64[0];
        if (__dst[0].n128_u64[0])
        {
          __dst[0].n128_u64[1] = __dst[0].n128_u64[0];
          operator delete(__dst[0].n128_u64[0]);
        }

        __dst[0] = *v473;
        __dst[1].n128_u64[0] = v474;
        sub_100098724(v186, v475 + 3 * v181, __dst, 0xFFFFu);
        *(&v450 + v181) = *(v481 + 3 * v181 + 1) != *(v481 + 3 * v181);
        if (__dst[0].n128_u64[0])
        {
          __dst[0].n128_u64[1] = __dst[0].n128_u64[0];
          operator delete(__dst[0].n128_u64[0]);
        }
      }
    }

    if (v446)
    {
      v187 = v459;
      if (*(&v459 + 1) != v459 && *(v439 + 578) == 1 && *(v439 + 577) == 1)
      {
        do
        {
          memset(__dst, 0, 24);
          sub_1000987D4(*(v187 + 8), 2, __dst);
          if (0xCCCCCCCCCCCCCCCDLL * ((__dst[0].n128_u64[1] - __dst[0].n128_u64[0]) >> 2) >= 3)
          {
            sub_10072CB48(__dst, 2uLL);
          }

          sub_100098724(v188, &v498, __dst, 0xFFFFu);
          if (__dst[0].n128_u64[0])
          {
            __dst[0].n128_u64[1] = __dst[0].n128_u64[0];
            operator delete(__dst[0].n128_u64[0]);
          }

          v187 += 16;
        }

        while (v187 != *(&v459 + 1));
        v451 = 0;
      }
    }

    v189 = v461;
    if (*(&v461 + 1) != v461)
    {
      while (2)
      {
        v190 = v437;
        v191 = v437[1].n128_u8[7];
        v192 = v191;
        if ((v191 & 0x80u) != 0)
        {
          v191 = v437->n128_u64[1];
        }

        if (v191)
        {
          goto LABEL_310;
        }

        v193 = *(v189 + 8);
        if (*(v193 + 39) < 0)
        {
          sub_100008904(__dst, *(v193 + 16), *(v193 + 24));
          v190 = v437;
          if ((v437[1].n128_u8[7] & 0x80) != 0)
          {
LABEL_308:
            operator delete(v190->n128_u64[0]);
            v190 = v437;
          }
        }

        else
        {
          __dst[0] = *(v193 + 16);
          __dst[1].n128_u64[0] = *(v193 + 32);
          if (v192 < 0)
          {
            goto LABEL_308;
          }
        }

        *v190 = __dst[0];
        v190[1].n128_u64[0] = __dst[1].n128_u64[0];
LABEL_310:
        if (v446 < 2)
        {
          v194 = 0;
        }

        else
        {
          v194 = *(*(v189 + 8) + 264);
        }

        memset(__dst, 0, 24);
        sub_1000987D4(*(v189 + 8), 2, __dst);
        sub_100098724(v195, &v492 + 3 * v194, __dst, 0xFFFFu);
        sub_1000987D4(*(v189 + 8), 4, v473);
        v196 = __dst[0].n128_u64[0];
        if (__dst[0].n128_u64[0])
        {
          __dst[0].n128_u64[1] = __dst[0].n128_u64[0];
          operator delete(__dst[0].n128_u64[0]);
        }

        __dst[0] = *v473;
        __dst[1].n128_u64[0] = v474;
        sub_100098724(v196, &buf[24 * v194], __dst, 0xFFFFu);
        sub_1000987D4(*(v189 + 8), 16, v473);
        v197 = __dst[0].n128_u64[0];
        if (__dst[0].n128_u64[0])
        {
          __dst[0].n128_u64[1] = __dst[0].n128_u64[0];
          operator delete(__dst[0].n128_u64[0]);
        }

        __dst[0] = *v473;
        __dst[1].n128_u64[0] = v474;
        sub_100098724(v197, v481 + 3 * v194, __dst, 0xFFFFu);
        sub_10009869C(*(v189 + 8), 2, v473);
        v198 = __dst[0].n128_u64[0];
        if (__dst[0].n128_u64[0])
        {
          __dst[0].n128_u64[1] = __dst[0].n128_u64[0];
          operator delete(__dst[0].n128_u64[0]);
        }

        __dst[0] = *v473;
        __dst[1].n128_u64[0] = v474;
        sub_100098724(v198, v479 + 3 * v194, __dst, 0xFFFFu);
        sub_10009869C(*(v189 + 8), 4, v473);
        v199 = __dst[0].n128_u64[0];
        if (__dst[0].n128_u64[0])
        {
          __dst[0].n128_u64[1] = __dst[0].n128_u64[0];
          operator delete(__dst[0].n128_u64[0]);
        }

        __dst[0] = *v473;
        __dst[1].n128_u64[0] = v474;
        sub_100098724(v199, v477 + 3 * v194, __dst, 0xFFFFu);
        sub_10009869C(*(v189 + 8), 16, v473);
        v200 = __dst[0].n128_u64[0];
        if (__dst[0].n128_u64[0])
        {
          __dst[0].n128_u64[1] = __dst[0].n128_u64[0];
          operator delete(__dst[0].n128_u64[0]);
        }

        __dst[0] = *v473;
        __dst[1].n128_u64[0] = v474;
        sub_100098724(v200, v475 + 3 * v194, __dst, 0xFFFFu);
        if (__dst[0].n128_u64[0])
        {
          __dst[0].n128_u64[1] = __dst[0].n128_u64[0];
          operator delete(__dst[0].n128_u64[0]);
        }

        v189 += 16;
        if (v189 == *(&v461 + 1))
        {
          break;
        }

        continue;
      }
    }

    v201 = *(&v463 + 1);
    v202 = v463;
    if (*(&v463 + 1) == v463)
    {
      goto LABEL_338;
    }

    while (2)
    {
      v203 = sub_10000C5E0(*(v202 + 8) + 224);
      v204 = sub_10000C5F8(*(v202 + 8) + 224);
      if (v446 < 2)
      {
        v205 = 0;
        if (!v203)
        {
          goto LABEL_336;
        }
      }

      else
      {
        v205 = *(*(v202 + 8) + 264);
        if (!v203)
        {
          goto LABEL_336;
        }
      }

      v206 = *(&v505 + v205);
      if (v203 <= v500[v205] - v206)
      {
        memcpy(&v509[1650 * v205 + v206], v204, v203);
        *(&v505 + v205) = v206 + v203;
      }

LABEL_336:
      v202 += 16;
      v201 = *(&v463 + 1);
      if (v202 != *(&v463 + 1))
      {
        continue;
      }

      break;
    }

    v202 = v463;
LABEL_338:
    if (v201 != v202)
    {
      do
      {
        v207 = sub_10000C5E0(*(v202 + 8) + 48);
        v208 = sub_10000C5F8(*(v202 + 8) + 48);
        if (v446 < 2)
        {
          LOBYTE(v209) = 0;
        }

        else
        {
          v209 = *(*(v202 + 8) + 264);
        }

        v465.n128_u8[0] = v209;
        __dst[0].n128_u64[0] = &v465;
        v210 = sub_100095D64(a10, &v465);
        sub_100097DEC(v210, v208, v207, (v210 + 5));
        if (v207)
        {
          v211 = v465.n128_u8[0];
          v212 = *(&v505 + v465.n128_u8[0]);
          if (v207 <= v500[v465.n128_u8[0]] - v212)
          {
            memcpy(&v509[1650 * v465.n128_u8[0] + v212], v208, v207);
            *(&v505 + v211) = v212 + v207;
          }
        }

        v202 += 16;
      }

      while (v202 != *(&v463 + 1));
    }

    if (v450 == 1)
    {
      v213 = v505;
      v214 = v500[0];
      v465.n128_u8[0] = 0;
      __dst[0].n128_u64[0] = &v465;
      v215 = sub_100096318(v440, &v465);
      LOBYTE(v448) = 0;
      __dst[0].n128_u64[0] = &v448;
      v216 = sub_100096318(v442, &v448);
      v217 = sub_10009846C(v216, &v509[v213], (v214 - v213), v481, 0x10u, v215 + 5, v216 + 5);
      LOWORD(v505) = v505 + v217;
    }

    if (BYTE1(v450) == 1)
    {
      v218 = WORD1(v505);
      v465.n128_u8[0] = 1;
      __dst[0].n128_u64[0] = &v465;
      v219 = sub_100096318(v440, &v465);
      LOBYTE(v448) = 1;
      __dst[0].n128_u64[0] = &v448;
      v220 = sub_100096318(v442, &v448);
      v221 = sub_10009846C(v220, &v522[v218], (v436 - v218), &v481[1] + 1, 0x10u, v219 + 5, v220 + 5);
      WORD1(v505) += v221;
    }

    if (v451 == 1)
    {
      v222 = v506;
      v465.n128_u8[0] = 4;
      __dst[0].n128_u64[0] = &v465;
      v223 = sub_100096318(v440, &v465);
      LOBYTE(v448) = 4;
      __dst[0].n128_u64[0] = &v448;
      v224 = sub_100096318(v442, &v448);
      v225 = sub_10009846C(v224, &v522[v222 + 4950], (v435 - v222), &v482, 0x10u, v223 + 5, v224 + 5);
      v506 += v225;
    }

    if (v446)
    {
      v226 = 0;
      v227 = 0;
      v228 = v509;
      do
      {
        v229 = *(&v505 + v227);
        v230 = v500[v227];
        v465.n128_u8[0] = v227;
        __dst[0].n128_u64[0] = &v465;
        v231 = sub_100096318(v440, &v465);
        LOBYTE(v448) = v227;
        __dst[0].n128_u64[0] = &v448;
        v232 = sub_100096318(v442, &v448);
        LOWORD(v229) = *(&v505 + v227) + sub_10009846C(v232, &v228[v229], (v230 - v229), &buf[v226], 4u, v231 + 5, v232 + 5);
        *(&v505 + v227) = v229;
        v465.n128_u8[0] = v227;
        __dst[0].n128_u64[0] = &v465;
        v233 = sub_100096318(v440, &v465);
        LOBYTE(v448) = v227;
        __dst[0].n128_u64[0] = &v448;
        v234 = sub_100096318(v442, &v448);
        v235 = *(&v505 + v227) + sub_10009846C(v234, &v228[v229], (v230 - v229), (&v492 + v226), 2u, v233 + 5, v234 + 5);
        *(&v505 + v227) = v235;
        if ((*(&v450 + v227) & 1) == 0)
        {
          v465.n128_u8[0] = v227;
          __dst[0].n128_u64[0] = &v465;
          v236 = sub_100096318(v440, &v465);
          LOBYTE(v448) = v227;
          __dst[0].n128_u64[0] = &v448;
          v237 = sub_100096318(v442, &v448);
          v235 = *(&v505 + v227) + sub_10009846C(v237, &v228[v235], (v230 - v235), (v481 + v226), 0x10u, v236 + 5, v237 + 5);
          *(&v505 + v227) = v235;
        }

        v465.n128_u8[0] = v227;
        __dst[0].n128_u64[0] = &v465;
        v238 = sub_100096318(v441, &v465);
        v239 = *(&v505 + v227) + sub_10009830C(v238, &v228[v235], (v230 - v235), (v479 + v226), 2u, v238 + 5);
        *(&v505 + v227) = v239;
        v465.n128_u8[0] = v227;
        __dst[0].n128_u64[0] = &v465;
        v240 = sub_100096318(v441, &v465);
        v241 = *(&v505 + v227) + sub_10009830C(v240, &v228[v239], (v230 - v239), (v477 + v226), 4u, v240 + 5);
        *(&v505 + v227) = v241;
        v465.n128_u8[0] = v227;
        __dst[0].n128_u64[0] = &v465;
        v242 = sub_100096318(v441, &v465);
        *(&v505 + v227++) += sub_10009830C(v242, &v228[v241], (v230 - v241), (v475 + v226), 0x10u, v242 + 5);
        v226 += 24;
        v228 += 1650;
      }

      while (24 * v446 != v226);
    }

    for (j = v463; j != *(&v463 + 1); j += 16)
    {
      memset(__dst, 0, 24);
      sub_1000575BC(__dst, *(j + 8) + 112);
      if (v446 < 2)
      {
        v244 = 0;
      }

      else
      {
        v244 = *(*(j + 8) + 264);
      }

      LOBYTE(v448) = v244;
      v245 = *(&v505 + v244);
      v246 = v500[v244];
      v473[0] = &v448;
      v247 = sub_100095E9C(a9, &v448);
      v248 = sub_100098140(v247, &v509[1650 * v244 + v245], v246 - v245, __dst, (v247 + 5), 2);
      *(&v505 + v448) += v248;
      sub_10004CE24(__dst, __dst[0].n128_u64[1]);
    }

    v249 = *(&v461 + 1);
    for (k = v461; k != *(&v461 + 1); v249 = *(&v461 + 1))
    {
      memset(__dst, 0, 24);
      sub_1000575BC(__dst, *(k + 8) + 112);
      if (v446 < 2)
      {
        v251 = 0;
      }

      else
      {
        v251 = *(*(k + 8) + 264);
      }

      LOBYTE(v448) = v251;
      v252 = *(&v505 + v251);
      v253 = v500[v251];
      v473[0] = &v448;
      v254 = sub_100095E9C(a9, &v448);
      v255 = sub_100098140(v254, &v509[1650 * v251 + v252], v253 - v252, __dst, (v254 + 5), 2);
      *(&v505 + v448) += v255;
      sub_10004CE24(__dst, __dst[0].n128_u64[1]);
      k += 16;
    }

    v256 = v437[1].n128_u8[7];
    if ((v256 & 0x80u) != 0)
    {
      v256 = v437->n128_u64[1];
    }

    if (v256)
    {
      v449 = 0;
      v257 = v500[0];
      v258 = v505;
      __dst[0].n128_u64[0] = &v449;
      v259 = sub_100096318(v442, &v449);
      v260 = -21;
      if (v259[6] == v259[5])
      {
        v260 = 0;
      }

      v261 = v260 + v257;
      v262 = v437;
      v263 = v437[1].n128_i8[7];
      if ((v263 & 0x80000000) == 0)
      {
        v264 = v437[1].n128_i8[7];
      }

      else
      {
        v264 = v437->n128_u64[1];
      }

      v265 = (v257 - v258) > v261;
      if ((v257 - v258) >= v261)
      {
        v261 = v257 - v258;
      }

      v266 = v265;
      v267 = v261 - 2;
      if (v264 <= v267)
      {
        v268 = v437->n128_u64[1];
      }

      else
      {
        LOBYTE(v268) = v267;
      }

      if (v264 <= v267)
      {
        LOBYTE(v267) = v437[1].n128_u8[7];
      }

      if ((v263 & 0x80000000) == 0)
      {
        v269 = v267;
      }

      else
      {
        v269 = v268;
      }

      if (v264 + 2 <= (v257 - v258))
      {
        v270 = 1;
      }

      else
      {
        v270 = v266;
      }

      v271 = v449;
      if (v270)
      {
        v272 = &v509[1650 * v449];
      }

      else
      {
        v272 = __p + 1650 * v449;
      }

      if (v270)
      {
        v273 = &v505;
      }

      else
      {
        v273 = &v503;
      }

      if ((v263 & 0x8000000000000000) != 0)
      {
        if (v437->n128_u64[1] > v269)
        {
          v473[0] = v437->n128_u64[1];
          v465.n128_u64[0] = v269;
          v274 = v437->n128_u64[0];
          goto LABEL_402;
        }
      }

      else if (v269 < v263)
      {
        v473[0] = v437[1].n128_i8[7];
        v465.n128_u64[0] = v269;
        v274 = v437;
LABEL_402:
        v448 = v274;
        v275 = malloc_type_calloc(v269 + 1, 1uLL, 0x100004077774924uLL);
        v447 = v275;
        v276 = iconv_open("UTF-8", "UTF-8");
        if (iconv(v276, &v448, v473, &v447, v465.n128_u64))
        {
          v277 = qword_100BCE9A8;
          if (os_log_type_enabled(qword_100BCE9A8, OS_LOG_TYPE_INFO))
          {
            if (v437[1].n128_i8[7] >= 0)
            {
              v278 = v437;
            }

            else
            {
              v278 = v437->n128_u64[0];
            }

            __dst[0].n128_u32[0] = 136315394;
            *(__dst[0].n128_u64 + 4) = v278;
            __dst[0].n128_u16[6] = 2080;
            *(&__dst[0].n128_u64[1] + 6) = v275;
            _os_log_impl(&_mh_execute_header, v277, OS_LOG_TYPE_INFO, "Adjusted advertisement name %s to fit - using %s", __dst, 0x16u);
          }
        }

        iconv_close(v276);
        free(v275);
        v269 -= v465.n128_u8[0];
        v262 = v437;
        LOBYTE(v263) = v437[1].n128_u8[7];
      }

      v279 = v269;
      v280 = *(v273 + v271);
      *(v273 + v271) = v280 + 1;
      v272[v280] = v269 + 1;
      v281 = v269;
      v282 = v280 + 2;
      v283 = (v280 + 1);
      if ((v263 & 0x80) != 0)
      {
        v285 = v262;
        v262 = v262->n128_u64[0];
        if (v285->n128_u64[1] > v281)
        {
          v284 = 8;
        }

        else
        {
          v284 = 9;
        }
      }

      else if (v281 < v263)
      {
        v284 = 8;
      }

      else
      {
        v284 = 9;
      }

      *(v273 + v271) = v282;
      v272[v283] = v284;
      memcpy(&v272[v282], v262, v281);
      *(v273 + v271) = v282 + v279;
      v249 = *(&v461 + 1);
    }

    v286 = v461;
    if (v249 != v461)
    {
      while (2)
      {
        v287 = sub_10000C5E0(*(v286 + 8) + 224);
        v288 = sub_10000C5F8(*(v286 + 8) + 224);
        if (v446 < 2)
        {
          v289 = 0;
          if (!v287)
          {
            goto LABEL_424;
          }
        }

        else
        {
          v289 = *(*(v286 + 8) + 264);
          if (!v287)
          {
            goto LABEL_424;
          }
        }

        v290 = *(&v505 + v289);
        if (v287 <= v500[v289] - v290)
        {
          memcpy(&v509[1650 * v289 + v290], v288, v287);
          *(&v505 + v289) = v290 + v287;
        }

LABEL_424:
        v286 += 16;
        v249 = *(&v461 + 1);
        if (v286 == *(&v461 + 1))
        {
          v286 = v461;
          break;
        }

        continue;
      }
    }

    if (v249 != v286)
    {
      do
      {
        v291 = sub_10000C5E0(*(v286 + 8) + 48);
        v292 = sub_10000C5F8(*(v286 + 8) + 48);
        if (v446 < 2)
        {
          LOBYTE(v293) = 0;
        }

        else
        {
          v293 = *(*(v286 + 8) + 264);
        }

        v465.n128_u8[0] = v293;
        __dst[0].n128_u64[0] = &v465;
        v294 = sub_100095D64(a10, &v465);
        sub_100097DEC(v294, v292, v291, (v294 + 5));
        if (v291)
        {
          v295 = v465.n128_u8[0];
          v296 = *(&v505 + v465.n128_u8[0]);
          if (v291 <= v500[v465.n128_u8[0]] - v296)
          {
            memcpy(&v509[1650 * v465.n128_u8[0] + v296], v292, v291);
            *(&v505 + v295) = v296 + v291;
          }
        }

        v286 += 16;
      }

      while (v286 != *(&v461 + 1));
      if (_os_feature_enabled_impl())
      {
        v297 = 0;
        v472 = 0;
        v470 = 0u;
        v471 = 0u;
        v468 = 0u;
        v469 = 0u;
        v467 = 0u;
        memset(__dst, 0, sizeof(__dst));
        do
        {
          v298 = &__dst[0].n128_u64[v297];
          v298[2] = 0;
          __dst[0].n128_u64[v297 + 1] = 0;
          *v298 = &__dst[0].n128_u64[v297 + 1];
          v297 += 3;
        }

        while (v297 != 15);
        v299 = *(&v461 + 1);
        for (m = v461; m != v299; m += 16)
        {
          v301 = *(m + 8);
          if (*(v301 + 512))
          {
            if (v446 < 2)
            {
              v302 = 0;
            }

            else
            {
              v302 = *(v301 + 264);
            }

            sub_10072CB84(__dst + 24 * v302, *(v301 + 496), (v301 + 504));
            v299 = *(&v461 + 1);
          }
        }

        v303 = 0;
        while (1)
        {
          v304 = &__dst[0].n128_u64[3 * v303];
          if (!v304[2])
          {
            goto LABEL_462;
          }

          v305 = 0;
          v306 = 0;
          v309 = *v304;
          v308 = v304 + 1;
          v307 = v309;
          v310 = &v509[1650 * v303];
          do
          {
            if ((v306 & 1) == 0)
            {
              v314 = sub_10000C5E0((v307 + 5));
              v312 = *(&v505 + v303);
              if (v314 + 6 > (v500[v303] - v312))
              {
                v306 = 0;
                goto LABEL_455;
              }

              v305 = &v310[v312];
              *&v310[v312] = 5046020;
              v313 = v312 + 4;
              *(&v505 + v303) = v312 + 4;
              v312 = (v312 + 4);
              goto LABEL_453;
            }

            v311 = sub_10000C5E0((v307 + 5));
            v312 = *(&v505 + v303);
            if (v311 + 2 <= (v500[v303] - v312))
            {
              v313 = *(&v505 + v303);
LABEL_453:
              v310[v312] = *(v307 + 32);
              *(&v505 + v303) = v313 + 1;
              v315 = sub_10000C5E0((v307 + 5));
              v316 = *(&v505 + v303);
              v310[v316] = v315;
              v317 = v316 + 1;
              *(&v505 + v303) = v316 + 1;
              v318 = sub_10000C5F8((v307 + 5));
              memcpy(&v310[v317], v318, v315);
              LOWORD(v312) = *(&v505 + v303) + v315;
              *(&v505 + v303) = v312;
            }

            v306 = 1;
LABEL_455:
            v319 = v307[1];
            if (v319)
            {
              do
              {
                v320 = v319;
                v319 = *v319;
              }

              while (v319);
            }

            else
            {
              do
              {
                v320 = v307[2];
                _ZF = *v320 == v307;
                v307 = v320;
              }

              while (!_ZF);
            }

            v307 = v320;
          }

          while (v320 != v308);
          *v305 = v310 + v312 + ~v305;
LABEL_462:
          if (++v303 == 5)
          {
            for (n = 0; n != -120; n -= 24)
            {
              sub_100046348(&v471 + n, *(&v471 + n + 8));
            }

            break;
          }
        }
      }
    }

    v322 = v456;
    v323 = v457;
    if (v457 != v456)
    {
      v324 = v446 > 1;
      v325 = &v509[1650 * v324];
      v326 = (&v505 | (2 * v324));
      do
      {
        v327 = sub_10000C5E0(*(v322 + 8) + 152);
        if (v327)
        {
          v328 = sub_10000C5F8(*(v322 + 8) + 152);
          v329 = v327 + 2;
          if (v327 != -2)
          {
            v330 = *v326;
            v331 = 1650 - v330;
            if (v329 <= 1650 - v330)
            {
              v325[v330] = v327 + 1;
              v333 = v330 + 2;
              v325[(v330 + 1)] = -1;
              memcpy(&v325[(v330 + 2)], v328, v327);
              *v326 = v333 + v327;
            }

            else
            {
              v332 = qword_100BCE9A8;
              if (os_log_type_enabled(qword_100BCE9A8, OS_LOG_TYPE_DEFAULT))
              {
                __dst[0].n128_u32[0] = 67109632;
                __dst[0].n128_u32[1] = v324;
                __dst[0].n128_u16[4] = 2048;
                *(&__dst[0].n128_u64[1] + 2) = v329;
                __dst[1].n128_u16[1] = 2048;
                *(__dst[1].n128_u64 + 4) = v331;
                _os_log_impl(&_mh_execute_header, v332, OS_LOG_TYPE_DEFAULT, "Non Apple manufacturer data cannot fit in advertisement instance %u mfgDataLen %zu available space %lu", __dst, 0x1Cu);
              }
            }
          }
        }

        v322 += 16;
        v323 = v457;
      }

      while (v322 != v457);
      v322 = v456;
    }

    v334 = qword_100BCE9A8;
    if (os_log_type_enabled(qword_100BCE9A8, OS_LOG_TYPE_INFO))
    {
      __dst[0].n128_u32[0] = 134218496;
      *(__dst[0].n128_u64 + 4) = (*(&v461 + 1) - v461) >> 4;
      __dst[0].n128_u16[6] = 2048;
      *(&__dst[0].n128_u64[1] + 6) = (*(&v463 + 1) - v463) >> 4;
      __dst[1].n128_u16[3] = 2048;
      __dst[1].n128_u64[1] = (v323 - v322) >> 4;
      _os_log_impl(&_mh_execute_header, v334, OS_LOG_TYPE_INFO, "dameon %lu fg %lu lp %lu", __dst, 0x20u);
      v322 = v456;
      v323 = v457;
    }

    if (v323 != v322)
    {
      v335 = v446 > 1;
      v336 = &v509[1650 * v335];
      v337 = (&v505 | (2 * v335));
      do
      {
        v338 = sub_10000C5E0(*(v322 + 8) + 136);
        v339 = v338;
        if (v338)
        {
          if (v338 == 7)
          {
            v340 = sub_10000C5F8(*(v322 + 8) + 136);
            v341 = *v337;
            if ((v341 - 1651) > 0xFFFFFFFFFFFFFFF6)
            {
              v345 = qword_100BCE9A8;
              if (os_log_type_enabled(qword_100BCE9A8, OS_LOG_TYPE_DEFAULT))
              {
                __dst[0].n128_u32[0] = 67109632;
                __dst[0].n128_u32[1] = v335;
                __dst[0].n128_u64[1] = 0x800000000090400;
                __dst[1].n128_u64[0] = 1650 - v341;
                _os_log_impl(&_mh_execute_header, v345, OS_LOG_TYPE_DEFAULT, "LE Bluetooth Device Address cannot fit in advertisement instance %u leBtAddrAdStructLen %hhu available space %lu", __dst, 0x18u);
              }
            }

            else
            {
              v336[v341] = 8;
              v336[(v341 + 1)] = 27;
              v342 = &v336[(v341 + 2)];
              v343 = *v340;
              *(v342 + 3) = *(v340 + 3);
              *v342 = v343;
              *v337 = v341 + 9;
            }
          }

          else
          {
            v344 = qword_100BCE9A8;
            if (os_log_type_enabled(qword_100BCE9A8, OS_LOG_TYPE_ERROR))
            {
              __dst[0].n128_u64[0] = 0x704000300;
              __dst[0].n128_u16[4] = 2048;
              *(&__dst[0].n128_u64[1] + 2) = v339;
              __dst[1].n128_u16[1] = 1024;
              __dst[1].n128_u32[1] = v335;
              _os_log_error_impl(&_mh_execute_header, v344, OS_LOG_TYPE_ERROR, "Advertisement data for device address must have length %d (len %zu), instance %u", __dst, 0x18u);
            }
          }
        }

        v322 += 16;
      }

      while (v322 != v457);
    }

    v465.n128_u8[0] = 0;
    __dst[0].n128_u64[0] = &v465;
    v346 = sub_100096318(v442, &v465);
    if (v346[6] != v346[5])
    {
      v473[1] = 0;
      v473[0] = 0;
      LOBYTE(v448) = 0;
      __dst[0].n128_u64[0] = &v448;
      for (ii = sub_100096318(v442, &v448)[5]; ; ii += 20)
      {
        LOBYTE(v448) = 0;
        __dst[0].n128_u64[0] = &v448;
        if (ii == sub_100096318(v442, &v448)[6])
        {
          break;
        }

        v465.n128_u8[0] = 0;
        LOBYTE(v448) = 0;
        v348 = *ii;
        __dst[1].n128_u32[0] = *(ii + 16);
        __dst[0] = v348;
        sub_100570420(__dst, &v465, &v448);
        *(v473 + v465.n128_u8[0]) |= 1 << v448;
      }

      v349 = qword_100BCE9A8;
      if (os_log_type_enabled(qword_100BCE9A8, OS_LOG_TYPE_INFO))
      {
        __dst[0].n128_u64[0] = 0x1004100202;
        __dst[0].n128_u16[4] = 2096;
        *(&__dst[0].n128_u64[1] + 2) = v473;
        _os_log_impl(&_mh_execute_header, v349, OS_LOG_TYPE_INFO, "Hashed UUIDs: %.16P", __dst, 0x12u);
      }

      v350 = v500[0];
      v351 = v505;
      if ((LOBYTE(v500[0]) - v503) <= 0x14uLL && os_log_type_enabled(qword_100BCE9A8, OS_LOG_TYPE_FAULT))
      {
        sub_10086B924();
      }

      v352 = __p;
      if ((v350 - v351) > 0x14uLL)
      {
        v352 = v509;
      }

      v353 = &v503;
      if ((v350 - v351) > 0x14uLL)
      {
        v353 = &v505;
      }

      v354 = *v353;
      *(v352 + v354) = 20;
      *(v352 + (v354 + 1)) = -1;
      *(v352 + (v354 + 2)) = 76;
      *(v352 + (v354 + 3)) = 0;
      *(v352 + (v354 + 4)) = 1;
      *(v352 + (v354 + 5)) = *v473;
      *v353 = v354 + 21;
    }

    v355 = v463;
    if (*(&v463 + 1) != v463)
    {
      while (2)
      {
        v356 = sub_10000C5E0(*(v355 + 8) + 272);
        v357 = sub_10000C5F8(*(v355 + 8) + 272);
        v358 = sub_10000C5E0(*(v355 + 8) + 288);
        v359 = sub_10000C5F8(*(v355 + 8) + 288);
        if (v446 < 2)
        {
          LOBYTE(v360) = 0;
        }

        else
        {
          v360 = *(*(v355 + 8) + 264);
          if (v360 == 4)
          {
            v361 = *(v439 + 608);
            LOBYTE(v360) = 4;
            goto LABEL_508;
          }
        }

        v361 = 31;
LABEL_508:
        if (v356 - 1 < v361)
        {
          memcpy(&v509[1650 * v360], v357, v356);
          *(&v505 + v360) = v356;
          LOBYTE(v443[1676 * v360 + 1659]) = 1;
        }

        if (v358 - 1 < v361)
        {
          memcpy(__p + 1650 * v360, v359, v358);
          *(&v503 + v360) = v358;
        }

        v355 += 16;
        if (v355 == *(&v463 + 1))
        {
          break;
        }

        continue;
      }
    }

    v362 = v461;
    if (*(&v461 + 1) != v461)
    {
      while (2)
      {
        v363 = sub_10000C5E0(*(v362 + 8) + 272);
        v364 = sub_10000C5F8(*(v362 + 8) + 272);
        v365 = sub_10000C5E0(*(v362 + 8) + 288);
        v366 = sub_10000C5F8(*(v362 + 8) + 288);
        if (v446 < 2)
        {
          LOBYTE(v367) = 0;
        }

        else
        {
          v367 = *(*(v362 + 8) + 264);
          if (v367 == 4)
          {
            v368 = *(v439 + 608);
            LOBYTE(v367) = 4;
            goto LABEL_519;
          }
        }

        v368 = 31;
LABEL_519:
        if (v363 - 1 < v368)
        {
          memcpy(&v509[1650 * v367], v364, v363);
          *(&v505 + v367) = v363;
          LOBYTE(v443[1676 * v367 + 1659]) = 1;
        }

        if (v365 - 1 < v368)
        {
          memcpy(__p + 1650 * v367, v366, v365);
          *(&v503 + v367) = v365;
        }

        v362 += 16;
        if (v362 == *(&v461 + 1))
        {
          break;
        }

        continue;
      }
    }

    if (_os_feature_enabled_impl())
    {
      v369 = *v431;
      if (*v431 != v444)
      {
        do
        {
          v370 = v369[6];
          v371 = *(v370 + 440);
          if ((v371 & 0xFFFF0000) == 0xF0000)
          {
            v372 = *(v370 + 264);
            v373 = *(&v523 + v372);
            v374 = *(v370 + 222);
            if (v373 != v374)
            {
              v375 = qword_100BCE9A8;
              if (os_log_type_enabled(qword_100BCE9A8, OS_LOG_TYPE_DEBUG))
              {
                v378 = sub_10002D1A4(v371);
                __dst[0].n128_u32[0] = 67109890;
                __dst[0].n128_u32[1] = v372;
                __dst[0].n128_u16[4] = 1024;
                *(&__dst[0].n128_u32[2] + 2) = v373;
                __dst[0].n128_u16[7] = 1024;
                __dst[1].n128_u32[0] = v374;
                __dst[1].n128_u16[2] = 2080;
                *(__dst[1].n128_u64 + 6) = v378;
                _os_log_debug_impl(&_mh_execute_header, v375, OS_LOG_TYPE_DEBUG, "Update advInterval for instance %d from %d to %d for %s", __dst, 0x1Eu);
                LOWORD(v374) = *(v369[6] + 222);
              }

              *(&v523 + v372) = v374;
            }
          }

          v376 = v369[1];
          if (v376)
          {
            do
            {
              v377 = v376;
              v376 = *v376;
            }

            while (v376);
          }

          else
          {
            do
            {
              v377 = v369[2];
              _ZF = *v377 == v369;
              v369 = v377;
            }

            while (!_ZF);
          }

          v369 = v377;
        }

        while (v377 != v444);
      }
    }

    if (_os_feature_enabled_impl())
    {
      v379 = sub_10000C798();
      if ((*(*v379 + 384))(v379))
      {
        for (jj = v461; jj != *(&v461 + 1); jj += 16)
        {
          v381 = *(jj + 8);
          LOBYTE(v447) = *(v381 + 264);
          *v473 = xmmword_1008A4F34;
          LODWORD(v474) = 0;
          sub_10000D03C(__dst, v473);
          if (*(jj + 8) + 120 != sub_100058794(v381 + 112, __dst))
          {
            v473[0] = &v447;
            v382 = sub_100095E9C(a9, &v447);
            *v473 = xmmword_1008A4F34;
            LODWORD(v474) = 0;
            sub_10000D03C(&v465, v473);
            v383 = sub_100058794((v382 + 5), &v465);
            v473[0] = &v447;
            if (sub_100095E9C(a9, &v447) + 6 != v383)
            {
              v384 = *(*(jj + 8) + 256);
              if (v384)
              {
                if ((v447 & 0xFB) != 0)
                {
                  HIBYTE(v443[1676 * v447 + 1658]) = 1;
                  v385 = sub_10009A66C(v384);
                  v386 = &v443[1676 * v447];
                  *(v386 + 3316) = BYTE6(v385);
                  v386[1657] = WORD2(v385);
                  *(v386 + 1655) = v385;
                }
              }
            }
          }
        }
      }
    }

    v387 = v443;
    if (v446)
    {
      v388 = 0;
      v389 = 0;
      if (v433)
      {
        v390 = 0;
      }

      else
      {
        v390 = 3;
      }

      if (v433)
      {
        v391 = 3;
      }

      else
      {
        v391 = 0;
      }

      v392 = __p;
      v393 = v509;
      do
      {
        v394 = &v387[v388];
        *v394 = 0;
        v394[1] = *(&v523 + v389);
        v395 = v391;
        if (v389)
        {
          v395 = v390;
          if (v389 != 4)
          {
            v395 = 3;
          }
        }

        *(v394 + 1) = v395;
        v396 = *(&v505 + v389);
        if (v396)
        {
          memcpy(&v443[v388 + 2] + 1, v393, *(&v505 + v389));
          v443[v388 + 828] = v396;
        }

        v397 = *(&v503 + v389);
        if (v397)
        {
          memcpy(&v443[v388 + 829], v392, *(&v503 + v389));
          v443[v388 + 1654] = v397;
        }

        if (v389 <= 1)
        {
          if (!v389)
          {
            v398 = *(v439 + 708);
            if (!*(v439 + 708))
            {
              goto LABEL_586;
            }

            v405 = qword_100BCE9A8;
            if (os_log_type_enabled(qword_100BCE9A8, OS_LOG_TYPE_DEFAULT))
            {
              __dst[0].n128_u32[0] = 67109120;
              __dst[0].n128_u32[1] = v398;
              _os_log_impl(&_mh_execute_header, v405, OS_LOG_TYPE_DEFAULT, "Using override value (%d) for connectable advertisement interval", __dst, 8u);
              LOWORD(v398) = *(v439 + 708);
            }

            goto LABEL_585;
          }

          if (v389 == 1)
          {
            v398 = *(v439 + 710);
            if (*(v439 + 710))
            {
              v400 = qword_100BCE9A8;
              if (os_log_type_enabled(qword_100BCE9A8, OS_LOG_TYPE_DEFAULT))
              {
                __dst[0].n128_u32[0] = 67109120;
                __dst[0].n128_u32[1] = v398;
                _os_log_impl(&_mh_execute_header, v400, OS_LOG_TYPE_DEFAULT, "Using override value (%d) for non connectable advertisement interval", __dst, 8u);
                LOWORD(v398) = *(v439 + 710);
              }

              goto LABEL_585;
            }
          }
        }

        else
        {
          switch(v389)
          {
            case 2:
              v401 = *(v439 + 718);
              if (*(v439 + 718))
              {
                v402 = qword_100BCE9A8;
                if (os_log_type_enabled(qword_100BCE9A8, OS_LOG_TYPE_DEFAULT))
                {
                  __dst[0].n128_u32[0] = 67109120;
                  __dst[0].n128_u32[1] = v401;
                  _os_log_impl(&_mh_execute_header, v402, OS_LOG_TYPE_DEFAULT, "Using override value (%d) for Contact advertisement interval", __dst, 8u);
                  LOWORD(v401) = *(v439 + 718);
                }

                v394[1] = v401;
              }

              v403 = sub_10000E92C();
              if (((*(*v403 + 184))(v403) & 1) == 0)
              {
                goto LABEL_588;
              }

              break;
            case 3:
              v398 = *(v439 + 714);
              if (!*(v439 + 714))
              {
                break;
              }

              v404 = qword_100BCE9A8;
              if (os_log_type_enabled(qword_100BCE9A8, OS_LOG_TYPE_DEFAULT))
              {
                __dst[0].n128_u32[0] = 67109120;
                __dst[0].n128_u32[1] = v398;
                _os_log_impl(&_mh_execute_header, v404, OS_LOG_TYPE_DEFAULT, "Using override value (%d) for Object Discovery advertisement interval", __dst, 8u);
                LOWORD(v398) = *(v439 + 714);
              }

              goto LABEL_585;
            case 4:
              v398 = *(v439 + 716);
              if (*(v439 + 716))
              {
                v399 = qword_100BCE9A8;
                if (os_log_type_enabled(qword_100BCE9A8, OS_LOG_TYPE_DEFAULT))
                {
                  __dst[0].n128_u32[0] = 67109120;
                  __dst[0].n128_u32[1] = v398;
                  _os_log_impl(&_mh_execute_header, v399, OS_LOG_TYPE_DEFAULT, "Using override value (%d) for Extended advertisement interval", __dst, 8u);
                  LOWORD(v398) = *(v439 + 716);
                }

LABEL_585:
                v394[1] = v398;
              }

              break;
          }
        }

LABEL_586:
        v406 = qword_100BCE9B0;
        if (os_log_type_enabled(qword_100BCE9B0, OS_LOG_TYPE_DEBUG))
        {
          _X8 = v394 + 2504;
          __asm { PRFM            #0, [X8] }

          _X8 = v394 + 1677;
          v410 = v443[v388 + 828];
          _X11 = &v443[v388 + 3330];
          v412 = v500[v389];
          __asm { PRFM            #0, [X11] }

          LODWORD(_X11) = v443[v388 + 1654];
          __asm { PRFM            #0, [X8] }

          LODWORD(_X8) = v394[1];
          v415 = LOBYTE(v443[v388 + 1655]);
          v416 = HIBYTE(v443[v388 + 1658]);
          v417 = *(v394 + 1);
          __dst[0].n128_u32[0] = 67112706;
          __dst[0].n128_u32[1] = v389;
          __dst[0].n128_u16[4] = 1040;
          *(&__dst[0].n128_u32[2] + 2) = v410;
          __dst[0].n128_u16[7] = 2096;
          __dst[1].n128_u64[0] = &v443[v388 + 2] + 1;
          __dst[1].n128_u16[4] = 1024;
          *(&__dst[1].n128_u32[2] + 2) = v410;
          __dst[1].n128_u16[7] = 2048;
          *&v467 = v412;
          WORD4(v467) = 1040;
          *(&v467 + 10) = _X11;
          HIWORD(v467) = 2096;
          *&v468 = &v443[v388 + 829];
          WORD4(v468) = 1024;
          *(&v468 + 10) = _X11;
          HIWORD(v468) = 2048;
          *&v469 = v412;
          WORD4(v469) = 1024;
          *(&v469 + 10) = _X8;
          HIWORD(v469) = 1040;
          LODWORD(v470) = 6;
          WORD2(v470) = 2096;
          *(&v470 + 6) = &v443[v388 + 1655] + 1;
          HIWORD(v470) = 1024;
          LODWORD(v471) = v415;
          WORD2(v471) = 1024;
          *(&v471 + 6) = v416;
          WORD5(v471) = 1024;
          HIDWORD(v471) = v417;
          _os_log_debug_impl(&_mh_execute_header, v406, OS_LOG_TYPE_DEBUG, "%d. AdvData=%.*P(%d/%ld) ScanRspData=%.*P(%d/%ld) interval=%x address:%.6P type:%d overrideAddress:%d ADVType:%d", __dst, 0x70u);
        }

LABEL_588:
        ++v389;
        v388 += 1676;
        v392 = (v392 + 1650);
        v393 += 1650;
        v387 = v443;
      }

      while (1676 * v446 != v388);
    }

    for (kk = 0; kk != -120; kk -= 24)
    {
      v419 = *(&v475[6] + kk);
      if (v419)
      {
        *(&v475[6] + kk + 8) = v419;
        operator delete(v419);
      }
    }

    for (mm = 0; mm != -120; mm -= 24)
    {
      v421 = *(&v477[6] + mm);
      if (v421)
      {
        *(&v477[6] + mm + 8) = v421;
        operator delete(v421);
      }
    }

    for (nn = 0; nn != -120; nn -= 24)
    {
      v423 = *(&v479[6] + nn);
      if (v423)
      {
        *(&v479[6] + nn + 8) = v423;
        operator delete(v423);
      }
    }

    for (i1 = 0; i1 != -120; i1 -= 24)
    {
      v425 = *(&v482 + i1);
      if (v425)
      {
        *(&v482 + i1 + 8) = v425;
        operator delete(v425);
      }
    }

    for (i2 = 0; i2 != -120; i2 -= 24)
    {
      v427 = *(&v490 + i2);
      if (v427)
      {
        *(&v490 + i2 + 8) = v427;
        operator delete(v427);
      }
    }

    for (i3 = 0; i3 != -120; i3 -= 24)
    {
      v429 = *(&v498 + i3);
      if (v429)
      {
        *(&v498 + i3 + 8) = v429;
        operator delete(v429);
      }
    }
  }

  else if (v446)
  {
    v152 = v446;
    v153 = v18 + 1;
    v154 = &v523;
    do
    {
      v155 = *v154;
      v154 = (v154 + 2);
      *v153 = v155;
      v153 += 1676;
      --v152;
    }

    while (v152);
  }

LABEL_613:
  *v509 = &v456;
  sub_10008D02C(v509);
  *v509 = &v459;
  sub_10008D02C(v509);
  *v509 = &v461;
  sub_10008D02C(v509);
  *v509 = &v463;
  sub_10008D02C(v509);
}