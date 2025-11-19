uint64_t sub_100021E04(uint64_t a1)
{
  result = sub_100021E5C();
  if ((result & 0x80000000) != 0)
  {
    v3 = *(a1 + 120);
    if (v3)
    {
      sub_100038740(v3);
      *(a1 + 120) = 0;
    }

    return sub_100048F2C(a1);
  }

  return result;
}

uint64_t sub_100021E5C(uint64_t a1)
{
  if (!*(a1 + 128))
  {
    return 0xFFFFFFFFLL;
  }

  if (*(a1 + 124) > 0)
  {
    sub_10004D53C(a1);
    if ((sub_100021B88(a1, *(a1 + 128)) & 0x80000000) == 0)
    {
      if (dword_100090058)
      {
        v2 = ne_log_obj();
        if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
        {
          sub_100021944(a1, *(a1 + 84));
          v10 = 136315138;
          v11 = &xmmword_10008C748;
          _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Resend Phase 1 packet %s\n", &v10, 0xCu);
        }
      }

      v3 = *(a1 + 124) - 1;
      *(a1 + 124) = v3;
      v4 = sub_100006EB4(*(*(a1 + 64) + 200) - v3, *(*(a1 + 64) + 204));
      v5 = sub_100038550(v4, sub_100021E04, a1);
      result = 0;
      *(a1 + 120) = v5;
      return result;
    }

    if (dword_100090058)
    {
      v9 = ne_log_obj();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_10005D320(a1);
      }
    }

    return 0xFFFFFFFFLL;
  }

  if (dword_100090058)
  {
    v7 = ne_log_obj();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_10005D3B0(a1);
    }
  }

  if (*(a1 + 20))
  {
    return 0xFFFFFFFFLL;
  }

  if ((*(a1 + 432) & 1) == 0)
  {
    return 0xFFFFFFFFLL;
  }

  v8 = *(a1 + 440);
  if (!v8)
  {
    return 0xFFFFFFFFLL;
  }

  if ((*(v8 + 264) & 0x400) == 0)
  {
    return 0xFFFFFFFFLL;
  }

  result = sub_10002201C(a1);
  if (result)
  {
    return 0xFFFFFFFFLL;
  }

  return result;
}

uint64_t sub_10002201C(uint64_t a1)
{
  if (*(a1 + 112) || *(a1 + 116))
  {
    return 0xFFFFFFFFLL;
  }

  v3 = *(a1 + 16);
  v4 = v3 == 5281 || v3 == 5217;
  if (!v4 || (*(a1 + 96) & 8) == 0 || sub_10003B344(*(a1 + 56)) != 4500 && sub_10003B344(*(a1 + 48)) != 4500 || (*(a1 + 432) & 2) != 0)
  {
    return 0xFFFFFFFFLL;
  }

  v5 = sub_10003A5E8(*(a1 + 56));
  v6 = strdup(v5);
  v7 = (a1 + 48);
  v8 = sub_10003A5E8(*(a1 + 48));
  v9 = strdup(v8);
  if (!v6)
  {
    if (dword_100090058)
    {
      v19 = ne_log_obj();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_50;
      }
    }

    goto LABEL_51;
  }

  v10 = v9;
  if (!v9)
  {
    if (dword_100090058)
    {
      v20 = ne_log_obj();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
LABEL_50:
        sub_10005C860();
      }
    }

LABEL_51:
    exit(1);
  }

  if (dword_100090058)
  {
    v11 = ne_log_obj();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      sub_100021944(a1, 0);
      v21 = 136315650;
      v22 = v6;
      v23 = 2080;
      v24 = v10;
      v25 = 2080;
      v26 = &xmmword_10008C748;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "ISAKMP-SA rekey failed... retrying %s-%s spi:%s\n", &v21, 0x20u);
    }
  }

  free(v6);
  free(v10);
  if (!sub_10004CA10(*(a1 + 440), 1))
  {
    if (sub_10004A248(*(a1 + 440), a1))
    {
      if (!dword_100090058)
      {
        return 0xFFFFFFFFLL;
      }

      v13 = ne_log_obj();
      if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        return 0xFFFFFFFFLL;
      }

      LOWORD(v21) = 0;
      v14 = "request to retry ISAKMP-SA rekey was ignored due to another established ph1.\n";
    }

    else
    {
      if (sub_10003B344(*(a1 + 56)) == 4500)
      {
        sub_10003B444(*(a1 + 56), 0x1F4u);
      }

      if (sub_10003B344(*v7) == 4500)
      {
        sub_10003B444(*v7, 0x1F4u);
      }

      *(a1 + 96) &= ~8u;
      v15 = sub_100036448(*(a1 + 48));
      if (!v15)
      {
        if (dword_100090058)
        {
          v18 = ne_log_obj();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            sub_10005D440(v7);
          }
        }

        return 0xFFFFFFFFLL;
      }

      v16 = v15;
      if (dword_100090058)
      {
        v17 = ne_log_obj();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v21) = 0;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "begin Phase 1 rekey retry.\n", &v21, 2u);
        }
      }

      if ((sub_10001FC6C(*(a1 + 440), v16, *(a1 + 48), *(a1 + 56), 0, a1 + 28) & 0x80000000) == 0)
      {
        result = 0;
        *(a1 + 432) |= 1u;
        return result;
      }

      if (!dword_100090058)
      {
        return 0xFFFFFFFFLL;
      }

      v13 = ne_log_obj();
      if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        return 0xFFFFFFFFLL;
      }

      LOWORD(v21) = 0;
      v14 = "Phase 1 rekey retry Failed.\n";
    }

    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, v14, &v21, 2u);
    return 0xFFFFFFFFLL;
  }

  if (!dword_100090058)
  {
    return 0;
  }

  v12 = ne_log_obj();
  result = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
  if (result)
  {
    LOWORD(v21) = 0;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "request for ISAKMP-SA rekey was ignored due to idleness.\n", &v21, 2u);
    return 0;
  }

  return result;
}

uint64_t sub_1000223D0(void *a1)
{
  result = sub_100022418();
  if ((result & 0x80000000) != 0)
  {

    return sub_100048E58(a1);
  }

  return result;
}

uint64_t sub_100022418(uint64_t a1)
{
  v1 = *(a1 + 256);
  if (!v1)
  {
    if (dword_100090058)
    {
      v6 = ne_log_obj();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_10005D670();
      }
    }

    return 0xFFFFFFFFLL;
  }

  if ((*(v1 + 17) & 0x40) != 0)
  {
    if (dword_100090058)
    {
      v7 = ne_log_obj();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        sub_10005D4C0(a1 + 256);
      }
    }

    return 0xFFFFFFFFLL;
  }

  if (*(a1 + 72) <= 0)
  {
    if (dword_100090058)
    {
      v8 = ne_log_obj();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_10005D5E0(a1 + 256);
      }
    }

    return 0xFFFFFFFFLL;
  }

  sub_10004D44C(a1);
  if ((sub_100021B88(*(a1 + 256), *(a1 + 80)) & 0x80000000) != 0)
  {
    if (dword_100090058)
    {
      v9 = ne_log_obj();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_10005D550(a1 + 256);
      }
    }

    return 0xFFFFFFFFLL;
  }

  if (dword_100090058)
  {
    v3 = ne_log_obj();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      sub_100021944(*(a1 + 256), *(a1 + 108));
      v10 = 136315138;
      v11 = &xmmword_10008C748;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Resend Phase 2 packet %s\n", &v10, 0xCu);
    }
  }

  --*(a1 + 72);
  v4 = sub_100006EB4(*(*(*(a1 + 256) + 64) + 200) - *(*(a1 + 256) + 124), *(*(*(a1 + 256) + 64) + 204));
  result = sub_100038550(v4, sub_1000223D0, a1);
  *(a1 + 68) = result;
  if (result)
  {
    sub_10001A1D4(*(a1 + 256), "Phase 2 packets sent to peer: retransmit timer armed");
    return 0;
  }

  return result;
}

void sub_10002263C(uint64_t a1, int a2)
{
  v4 = *(a1 + 116);
  if (v4)
  {
    sub_100038740(v4);
    *(a1 + 116) = 0;
  }

  if (*(a1 + 112) || (v13 = *(*(a1 + 72) + 24)) != 0 && (v14 = sub_100038550(v13, sub_1000207F4, a1), (*(a1 + 112) = v14) != 0))
  {
    if ((*(a1 + 17) & 0x20) != 0 && (*(a1 + 432) & 2) == 0)
    {
      v5 = sub_10003A5E8(*(a1 + 56));
      v6 = strdup(v5);
      v7 = (a1 + 48);
      v8 = sub_10003A5E8(*(a1 + 48));
      v9 = strdup(v8);
      if (v6)
      {
        v10 = v9;
        if (v9)
        {
          if (dword_100090058)
          {
            v11 = ne_log_obj();
            if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
            {
              sub_100021944(a1, 0);
              v22 = 136315650;
              v23 = v6;
              v24 = 2080;
              v25 = v10;
              v26 = 2080;
              v27 = &xmmword_10008C748;
              _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "ISAKMP-SA rekey-timer expired %s-%s spi:%s\n", &v22, 0x20u);
            }
          }

          free(v6);
          free(v10);
          if (a2 || !sub_10004CA10(*(a1 + 440), 1))
          {
            if (sub_10004A248(*(a1 + 440), a1))
            {
              if (dword_100090058)
              {
                v12 = ne_log_obj();
                if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
                {
                  LOWORD(v22) = 0;
                  _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Request for ISAKMP-SA rekey was ignored due to another established ph1.\n", &v22, 2u);
                }
              }
            }

            else if (sub_10004A28C(*(a1 + 440), a1))
            {
              if (dword_100090058)
              {
                v15 = ne_log_obj();
                if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
                {
                  sub_10005D6A4();
                }
              }

              *(a1 + 116) = sub_100038550(1, sub_1000207F8, a1);
            }

            else
            {
              v16 = *(a1 + 64);
              if (v16 || (v16 = sub_100036448(*v7)) != 0)
              {
                if (dword_100090058)
                {
                  v17 = ne_log_obj();
                  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
                  {
                    LOWORD(v22) = 0;
                    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Begin Phase 1 rekey.\n", &v22, 2u);
                  }
                }

                if ((sub_10001FC6C(*(a1 + 440), v16, *(a1 + 48), *(a1 + 56), 0, (a1 + 28)) & 0x80000000) != 0)
                {
                  if (dword_100090058)
                  {
                    v18 = ne_log_obj();
                    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
                    {
                      LOWORD(v22) = 0;
                      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Phase 1 rekey Failed.\n", &v22, 2u);
                    }
                  }
                }

                *(a1 + 432) |= 1u;
              }

              else if (dword_100090058)
              {
                v19 = ne_log_obj();
                if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
                {
                  sub_10005D6D8(v7);
                }
              }
            }
          }

          return;
        }

        if (dword_100090058)
        {
          v21 = ne_log_obj();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_45;
          }
        }
      }

      else if (dword_100090058)
      {
        v20 = ne_log_obj();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
LABEL_45:
          sub_10005C860();
        }
      }

      exit(1);
    }
  }
}

void *sub_1000229D0(uint64_t a1)
{
  v2 = *(a1 + 112);
  if (v2)
  {
    sub_100038740(v2);
    *(a1 + 112) = 0;
  }

  v3 = *(a1 + 116);
  if (v3)
  {
    sub_100038740(v3);
    *(a1 + 116) = 0;
  }

  v4 = *(a1 + 388);
  if (v4)
  {
    sub_100038740(v4);
    *(a1 + 388) = 0;
  }

  if (*(a1 + 448))
  {
    result = sub_100038550(1, sub_100022638, a1);
    *(a1 + 112) = result;
    return result;
  }

  sub_100017EF4(a1);
  v6 = sub_10003A5E8(*(a1 + 56));
  v7 = strdup(v6);
  v8 = sub_10003A5E8(*(a1 + 48));
  v9 = strdup(v8);
  if (!v7)
  {
    if (dword_100090058)
    {
      v13 = ne_log_obj();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_23;
      }
    }

    goto LABEL_24;
  }

  v10 = v9;
  if (!v9)
  {
    if (dword_100090058)
    {
      v14 = ne_log_obj();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
LABEL_23:
        sub_10005C860();
      }
    }

LABEL_24:
    exit(1);
  }

  if (dword_100090058)
  {
    v11 = ne_log_obj();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      sub_100021944(a1, 0);
      v15 = 136315138;
      v16 = &xmmword_10008C748;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "ISAKMP-SA deleted spi:%s\n", &v15, 0xCu);
    }

    if (dword_100090058)
    {
      v12 = ne_log_obj();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        sub_100021944(a1, 0);
        v15 = 136315650;
        v16 = v7;
        v17 = 2080;
        v18 = v10;
        v19 = 2080;
        v20 = &xmmword_10008C748;
        _os_log_debug_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "ISAKMP-SA deleted %s-%s spi:%s\n", &v15, 0x20u);
      }
    }
  }

  free(v7);
  free(v10);
  return sub_100048F2C(a1);
}

void *sub_100022C1C(void *result)
{
  if ((*(result + 57) & 0x40) != 0)
  {
    return result;
  }

  v1 = result;
  v2 = *(result + 16);
  if (v2)
  {
    sub_100038740(v2);
    *(v1 + 64) = 0;
  }

  v3 = sub_10003A958(*v1);
  v4 = strdup(v3);
  v5 = sub_10003A958(*(v1 + 8));
  v6 = strdup(v5);
  if (!v4)
  {
    if (dword_100090058)
    {
      v13 = ne_log_obj();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_24;
      }
    }

    goto LABEL_25;
  }

  v7 = v6;
  if (!v6)
  {
    if (dword_100090058)
    {
      v14 = ne_log_obj();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
LABEL_24:
        sub_10005C860();
      }
    }

LABEL_25:
    exit(1);
  }

  if (dword_100090058)
  {
    v8 = ne_log_obj();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 136315394;
      v16 = v4;
      v17 = 2080;
      v18 = v7;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Phase 2 sa expired %s-%s\n", &v15, 0x16u);
    }
  }

  free(v4);
  free(v7);
  if ((*(v1 + 57) & 0x20) != 0)
  {
    v9 = *(v1 + 128);
    if (v9)
    {
      for (i = *(v9 + 32); i; i = *(i + 72))
      {
        if (*(i + 56))
        {
          v11 = *(qword_1000900B8 + 32);
          v12 = sub_10002CCC0(*i);
          sub_10003ED70(v11, v12, 0, *v1, *(v1 + 8), *(i + 28));
        }
      }
    }
  }

  if (*(v1 + 61) == 16)
  {
    sub_100000A50((v1 + 56), 18432);
  }

  result = sub_100038550(1, sub_100022E14, v1);
  *(v1 + 64) = result;
  return result;
}

uint64_t sub_100022E18(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (v2)
  {
    sub_100038740(v2);
    *(a1 + 64) = 0;
  }

  v3 = sub_10003A958(*a1);
  v4 = strdup(v3);
  v5 = sub_10003A958(*(a1 + 8));
  v6 = strdup(v5);
  if (!v4)
  {
    if (dword_100090058)
    {
      v10 = ne_log_obj();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_14;
      }
    }

    goto LABEL_15;
  }

  v7 = v6;
  if (!v6)
  {
    if (dword_100090058)
    {
      v11 = ne_log_obj();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
LABEL_14:
        sub_10005C860();
      }
    }

LABEL_15:
    exit(1);
  }

  if (dword_100090058)
  {
    v8 = ne_log_obj();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 136315394;
      v13 = v4;
      v14 = 2080;
      v15 = v7;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Phase 2 sa deleted %s-%s\n", &v12, 0x16u);
    }
  }

  free(v4);
  free(v7);
  return sub_100048E58(a1);
}

uint64_t sub_100022F80(uint64_t a1)
{
  if (dword_100090058)
  {
    v2 = ne_log_obj();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      sub_10005D758();
    }
  }

  v3 = (a1 + 8);
  v4 = sub_100036448(*(a1 + 8));
  if (!v4)
  {
    if (dword_100090058)
    {
      v12 = ne_log_obj();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_10005D78C(v3);
      }
    }

    return 0xFFFFFFFFLL;
  }

  v5 = v4;
  if (v4[36])
  {
    if (!dword_100090058)
    {
      return 0;
    }

    v6 = ne_log_obj();
    result = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
    if (result)
    {
      v8 = sub_10003A958(*v3);
      v21 = 136315138;
      v22 = v8;
      v9 = "Because of passive mode, ignore the acquire message for %s.\n";
      v10 = v6;
      v11 = 12;
LABEL_9:
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, v9, &v21, v11);
      return 0;
    }

    return result;
  }

  if (sub_10004A3AC(*(a1 + 272), a1))
  {
    if (dword_100090058)
    {
      v13 = ne_log_obj();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v21) = 0;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Request for establishing IPsec-SA was ignored due to another negoing ph2.\n", &v21, 2u);
      }
    }

    return 0xFFFFFFFFLL;
  }

  if (*(a1 + 264))
  {
    sub_10004B4C4(a1);
  }

  if (*(a1 + 61) != 16 || (v14 = sub_10004A040(a1)) == 0)
  {
    *(a1 + 96) = *(qword_1000900B8 + 280);
    sub_100038550(1, sub_10002333C, a1);
    if (dword_100090058)
    {
      v17 = ne_log_obj();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v18 = sub_10003A958(*v3);
        v21 = 136315138;
        v22 = v18;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "IPsec-SA request for %s queued due to no Phase 1 found.\n", &v21, 0xCu);
      }
    }

    if (sub_10004BD10(*(a1 + 272)))
    {
      if (!dword_100090058)
      {
        return 0;
      }

      v16 = ne_log_obj();
      result = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
      if (!result)
      {
        return result;
      }

      LOWORD(v21) = 0;
      v9 = "Request for Phase 1 was ignored due to another negotiating Phase 1.\n";
    }

    else
    {
      v19 = sub_10001FC6C(*(a1 + 272), v5, *(a1 + 8), *a1, 0, (a1 + 16));
      result = 0;
      if ((v19 & 0x80000000) == 0)
      {
        return result;
      }

      if (!dword_100090058)
      {
        return result;
      }

      v16 = ne_log_obj();
      result = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
      if (!result)
      {
        return result;
      }

      LOWORD(v21) = 0;
      v9 = "Request for Phase 1 failed. Will try later.\n";
    }

LABEL_39:
    v10 = v16;
    v11 = 2;
    goto LABEL_9;
  }

  v15 = v14;
  if ((*(v14 + 17) & 0x20) != 0)
  {
    if (dword_100090058)
    {
      v20 = ne_log_obj();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v21) = 0;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Begin QUICK mode.\n", &v21, 2u);
      }
    }

    if (sub_100023340(v15, a1))
    {
      return 0xFFFFFFFFLL;
    }

    else
    {
      return 0;
    }
  }

  *(a1 + 96) = *(qword_1000900B8 + 280);
  sub_100038550(1, sub_10002333C, a1);
  if (!dword_100090058)
  {
    return 0;
  }

  v16 = ne_log_obj();
  result = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
  if (result)
  {
    LOWORD(v21) = 0;
    v9 = "Request for establishing IPsec-SA was queued due to no phase1 found.\n";
    goto LABEL_39;
  }

  return result;
}

uint64_t sub_100023340(uint64_t a1, uint64_t a2)
{
  if (sub_100044AC8(a1))
  {
    if (dword_100090058)
    {
      v4 = ne_log_obj();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        sub_10005D80C();
      }
    }

    return 0xFFFFFFFFLL;
  }

  if (dword_100090058)
  {
    v5 = ne_log_obj();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      sub_10005CC48();
    }

    if (dword_100090058)
    {
      v6 = ne_log_obj();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        sub_10005D840();
      }
    }
  }

  v7 = sub_10003A5E8(*a2);
  v8 = strdup(v7);
  if (!v8)
  {
    if (dword_100090058)
    {
      v14 = ne_log_obj();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        sub_10005C860();
      }
    }

    exit(1);
  }

  v9 = v8;
  if (dword_100090058)
  {
    v10 = ne_log_obj();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = sub_10003A5E8(*(a2 + 8));
      v15 = 136315394;
      v16 = v9;
      v17 = 2080;
      v18 = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "initiate new phase 2 negotiation: %s<=>%s\n", &v15, 0x16u);
    }
  }

  free(v9);
  *(a2 + 264) &= ~2u;
  *(a2 + 16) = *(a1 + 28);
  sub_100000A50((a2 + 56), 6336);
  if (dword_100090058)
  {
    v12 = ne_log_obj();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v15) = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "IPSec Phase 2 started (Initiated by me).\n", &v15, 2u);
    }
  }

  if (sub_10001A34C(a2))
  {
    return 0xFFFFFFFFLL;
  }

  sub_100046F84(1, 0, 0, a2);
  return 0;
}

uint64_t sub_100023568(uint64_t a1)
{
  if ((*(*(a1 + 256) + 17) & 0x40) != 0)
  {
    if (dword_100090058)
    {
      v3 = ne_log_obj();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        sub_10005D874();
      }
    }

    return 0xFFFFFFFFLL;
  }

  if (*(a1 + 60))
  {
    v2 = 6608;
  }

  else
  {
    v2 = 6352;
  }

  sub_100000A50((a1 + 56), v2);
  if (*(a1 + 60) != 1)
  {
    if (*(a1 + 60) || !sub_10001A4A4(a1, 0))
    {
      return 0;
    }

    return 0xFFFFFFFFLL;
  }

  if (sub_10001D148(a1, 0))
  {
    return 0xFFFFFFFFLL;
  }

  return 0;
}

void sub_100023620(uint64_t a1)
{
  if (*(a1 + 61) == 16 && *(a1 + 56) != 6336 || (*(a1 + 264) & 2) != 0)
  {
    if (dword_100090058)
    {
      v7 = ne_log_obj();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = *(a1 + 56);
        v9 = *(a1 + 264) << 30 >> 31;
        v30[0] = 67109632;
        v30[1] = v8;
        v31 = 1024;
        v32 = 6336;
        v33 = 1024;
        v34 = v9;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "CHKPH1THERE: ph2 handle has advanced too far (status %d, START %d, dying %d)... ignoring\n", v30, 0x14u);
      }
    }
  }

  else
  {
    v2 = *(a1 + 96);
    *(a1 + 96) = v2 - 1;
    if (v2 <= 0)
    {
      if (dword_100090058)
      {
        v10 = ne_log_obj();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          sub_10005DBD0(a1);
        }

        if (dword_100090058)
        {
          v11 = ne_log_obj();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(v30[0]) = 0;
            _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "delete Phase 2 handler.\n", v30, 2u);
          }
        }
      }

      sub_10002D4B8(a1);
LABEL_51:
      sub_100048E58(a1);
      return;
    }

    v3 = sub_10004A040(a1);
    v4 = v3;
    if (!v3 || (*(v3 + 17) & 0x20) == 0)
    {
      if (sub_10004BD10(*(a1 + 272)))
      {
        goto LABEL_8;
      }

      v25 = sub_100036448(*(a1 + 8));
      if (v25)
      {
        if (v4)
        {
          v26 = (v4 + 28);
        }

        else
        {
          v26 = 0;
        }

        v27 = sub_10001FC6C(*(a1 + 272), v25, *(a1 + 8), *a1, 0, v26);
        v5 = dword_100090058;
        if ((v27 & 0x80000000) == 0 || !dword_100090058)
        {
          goto LABEL_9;
        }

        v28 = ne_log_obj();
        if (!os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
        {
LABEL_8:
          v5 = dword_100090058;
LABEL_9:
          if (v5)
          {
            v6 = ne_log_obj();
            if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
            {
              LOWORD(v30[0]) = 0;
              _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "CHKPH1THERE: no established ph1 handler found\n", v30, 2u);
            }
          }

          goto LABEL_12;
        }

        LOWORD(v30[0]) = 0;
        v29 = "CHKPH1THERE: no established/negoing ph1 handler found... failed to initiate new one\n";
      }

      else
      {
        if (!dword_100090058)
        {
LABEL_12:
          sub_100038550(1, sub_10002333C, a1);
          return;
        }

        v28 = ne_log_obj();
        if (!os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_8;
        }

        LOWORD(v30[0]) = 0;
        v29 = "CHKPH1THERE: no remoteconf found... failed to initiate new one\n";
      }

      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, v29, v30, 2u);
      goto LABEL_8;
    }

    if (dword_100090058)
    {
      v12 = ne_log_obj();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        sub_10005D8A8();
      }

      if (dword_100090058)
      {
        v13 = ne_log_obj();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
        {
          sub_10005D8DC(v4);
        }

        if (dword_100090058)
        {
          v14 = ne_log_obj();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
          {
            sub_10005D960(v4);
          }

          if (dword_100090058)
          {
            v15 = ne_log_obj();
            if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
            {
              sub_10005D9E4();
            }

            if (dword_100090058)
            {
              v16 = ne_log_obj();
              if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
              {
                sub_10005DA18(a1);
              }

              if (dword_100090058)
              {
                v17 = ne_log_obj();
                if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
                {
                  sub_10005DA98(a1);
                }
              }
            }
          }
        }
      }
    }

    v18 = *a1;
    v19 = sub_10003B344(*(v4 + 56));
    sub_10003B444(v18, v19);
    v20 = *(a1 + 8);
    v21 = sub_10003B344(*(v4 + 48));
    sub_10003B444(v20, v21);
    if (dword_100090058)
    {
      v22 = ne_log_obj();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
      {
        sub_10005DB1C();
      }

      if (dword_100090058)
      {
        v23 = ne_log_obj();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
        {
          sub_10005DA18(a1);
        }

        if (dword_100090058)
        {
          v24 = ne_log_obj();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
          {
            sub_10005DB50(a1 + 8);
          }
        }
      }
    }

    if (sub_100023340(v4, a1))
    {
      goto LABEL_51;
    }
  }
}

uint64_t sub_100023AE4(_WORD *a1, unsigned int a2, void *__src, signed int a4)
{
  *a1 = bswap32(a2) >> 16;
  a1[1] = bswap32(a4) >> 16;
  v5 = a1 + 2;
  memcpy(a1 + 2, __src, a4);
  return v5 + a4;
}

_WORD *sub_100023B38(_WORD *a1, int a2, unsigned int a3)
{
  *a1 = bswap32(a2 | 0x8000) >> 16;
  a1[1] = bswap32(a3) >> 16;
  return a1 + 2;
}

void *sub_100023B5C(void **a1, unsigned int a2, const void *a3, signed int a4)
{
  v7 = a4 + 4;
  if (a1)
  {
    v8 = *a1;
    v9 = sub_10003D42C(a1, (v7 + *a1));
    v10 = v8;
    if (v9)
    {
LABEL_3:
      v11 = (v9[1] + v10);
      *v11 = bswap32(a2) >> 16;
      v11[1] = bswap32(a4) >> 16;
      memcpy(v11 + 2, a3, a4);
      return v9;
    }
  }

  else
  {
    v9 = sub_10003D3A8(v7);
    v10 = 0;
    if (v9)
    {
      goto LABEL_3;
    }
  }

  if (dword_100090058)
  {
    v12 = ne_log_obj();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_10005DC64();
    }
  }

  return v9;
}

void *sub_100023C34(void **a1, int a2, unsigned int a3)
{
  if (a1)
  {
    v5 = *a1;
    v6 = sub_10003D42C(a1, (*a1 + 4));
    v7 = v5;
    if (v6)
    {
LABEL_3:
      v8 = (v6[1] + v7);
      *v8 = bswap32(a2 | 0x8000) >> 16;
      v8[1] = bswap32(a3) >> 16;
      return v6;
    }
  }

  else
  {
    v6 = sub_10003D3A8(4uLL);
    v7 = 0;
    if (v6)
    {
      goto LABEL_3;
    }
  }

  if (dword_100090058)
  {
    v9 = ne_log_obj();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_10005DC64();
    }
  }

  return v6;
}

uint64_t sub_100023CF0(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = (a2 + 1);
  v3 = *(a2 + 1);
  v5 = (a3 + 1);
  if (v3 != *(a3 + 1))
  {
    if (dword_100090058)
    {
      v10 = ne_log_obj();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_10005DC98(v4, v5);
      }
    }

    return 0xFFFFFFFFLL;
  }

  if (v3 == 2)
  {
    v9 = 4;
  }

  else
  {
    if (v3 != 30)
    {
      if (dword_100090058)
      {
        v20 = ne_log_obj();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          sub_10005C33C(v4);
        }
      }

      return 0xFFFFFFFFLL;
    }

    v9 = 8;
  }

  v11 = sub_10003D3A8(*(qword_1000900B8 + 304) + 20);
  if (!v11)
  {
    if (dword_100090058)
    {
      v21 = ne_log_obj();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        sub_10005DD90();
      }
    }

    return 0xFFFFFFFFLL;
  }

  v12 = v11;
  v13 = v11[1];
  *v13 = *(a2 + v9);
  *(v13 + 4) = *(a2 + 2);
  *(v13 + 6) = *(a3 + v9);
  *(v13 + 10) = *(a3 + 2);
  *(v13 + 12) = time(0);
  v14 = sub_1000042AC(*(qword_1000900B8 + 304));
  if (!v14)
  {
    sub_10003D4F0(v12);
    return 0xFFFFFFFFLL;
  }

  v15 = v14;
  memcpy((v13 + 20), v14[1], *(qword_1000900B8 + 304));
  sub_10003D4F0(v15);
  v16 = sub_10000413C(v12);
  *a1 = *v16[1];
  v17 = sub_10003B4A4(a1, 8uLL);
  if (dword_100090058)
  {
    v18 = ne_log_obj();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      sub_10005DD1C();
    }
  }

  free(v17);
  sub_10003D4F0(v12);
  sub_10003D4F0(v16);
  return 0;
}

uint64_t sub_100023F0C(size_t **a1, uint64_t a2)
{
  if (*a1)
  {
    if (dword_100090058)
    {
      v2 = ne_log_obj();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
      {
        v11[0] = 0;
        _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "ignore this payload, same payload type exist.\n", v11, 2u);
      }
    }
  }

  else
  {
    v4 = (a2 + 2);
    v5 = bswap32(*(a2 + 2)) >> 16;
    if (v5 > 3)
    {
      v8 = sub_10003D3A8(v5 - 4);
      *a1 = v8;
      if (v8)
      {
        memcpy(v8[1], (a2 + 4), *v8);
        return 0;
      }

      if (dword_100090058)
      {
        v10 = ne_log_obj();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          sub_10005CE24();
        }
      }
    }

    else if (dword_100090058)
    {
      v6 = ne_log_obj();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_10005DDC4(v4);
      }
    }
  }

  return 0xFFFFFFFFLL;
}

uint64_t sub_100024040(uint64_t a1)
{
  do
  {
    v2 = sub_100004308();
  }

  while (sub_1000061A0(a1, v2));
  return v2;
}

uint64_t sub_10002407C(uint64_t a1, uint64_t a2, char a3)
{
  if (*a1 < 0x1CuLL)
  {
    return 0;
  }

  v4 = *(a2 + 84);
  v5 = *(a2 + 82);
  v6 = *(a2 + 81);
  v7 = *(a1 + 8);
  *v7 = *a2;
  *(v7 + 8) = *(a2 + 8);
  *(v7 + 16) = a3;
  *(v7 + 17) = *(a2 + 80);
  *(v7 + 18) = v6;
  *(v7 + 19) = v5;
  v8 = bswap32(*a1);
  *(v7 + 20) = v4;
  *(v7 + 24) = v8;
  return *(a1 + 8) + 28;
}

uint64_t sub_1000240DC(uint64_t a1, uint64_t a2, char a3)
{
  if (*a1 < 0x1CuLL)
  {
    return 0;
  }

  v4 = *(a2 + 108);
  v5 = *(a2 + 105);
  v6 = *(a2 + 256);
  v7 = *(a1 + 8);
  *v7 = *v6;
  *(v7 + 8) = *(v6 + 8);
  *(v7 + 16) = a3;
  *(v7 + 17) = *(v6 + 80);
  *(v7 + 18) = 32;
  *(v7 + 19) = v5;
  v8 = bswap32(*a1);
  *(v7 + 20) = v4;
  *(v7 + 24) = v8;
  return *(a1 + 8) + 28;
}

char *sub_100024140(uint64_t a1, uint64_t *a2, int a3)
{
  if (dword_100090058)
  {
    v6 = ne_log_obj();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      sub_10005DE40(a2, a3, v6);
    }
  }

  *a1 = a3;
  v8 = *a2;
  v7 = a2[1];
  *(a1 + 2) = bswap32(*a2 + 4) >> 16;
  v9 = (a1 + 4);
  memcpy(v9, v7, v8);
  return &v9[*a2];
}

void *sub_1000241D4(void *a1, uint64_t a2, int a3)
{
  result = malloc_type_malloc(0x20uLL, 0x102004055CCDE27uLL);
  if (a1)
  {
    *a1 = result;
  }

  *result = 0;
  result[1] = a1;
  result[2] = a2;
  *(result + 6) = a3;
  return result;
}

void *sub_100024230(uint64_t ***a1, uint64_t a2)
{
  v4 = *a1;
  do
  {
    v5 = v4;
    v4 = v4[1];
  }

  while (v4);
  v6 = 28;
  v7 = v5;
  do
  {
    v6 += *v7[2] + 4;
    v7 = *v7;
  }

  while (v7);
  v8 = sub_10003D3A8(v6);
  if (!v8)
  {
    if (dword_100090058)
    {
      v14 = ne_log_obj();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        sub_10005A82C();
      }
    }

    return 0;
  }

  v9 = v8;
  v10 = sub_10002407C(v8, a2, *(v5 + 6));
  if (!v10)
  {
    sub_10003D4F0(v9);
    return 0;
  }

  v11 = v10;
  do
  {
    if (*v5)
    {
      v12 = *(*v5 + 6);
    }

    else
    {
      v12 = 0;
    }

    v11 = sub_100024140(v11, v5[2], v12);
    v13 = *v5;
    free(v5);
    v5 = v13;
  }

  while (v13);
  *a1 = 0;
  return v9;
}

void sub_100024334(uint64_t a1)
{
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v35 = 0u;
  memset(v34, 0, sizeof(v34));
  if (dword_100090058)
  {
    v2 = ne_log_obj();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      sub_100021944(a1, *(a1 + 84));
      *buf = 136315138;
      v33[0] = &xmmword_10008C748;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "purging ISAKMP-SA spi=%s.\n", buf, 0xCu);
    }
  }

  sub_100000A50((a1 + 16), 17408);
  v3 = sub_100049AAC(a1);
  v4 = sub_10002C784(0);
  if (v4)
  {
    v5 = v4;
    if (*v4 >= 1)
    {
      v6 = v4[1];
      v7 = *v4 + v6;
      while (1)
      {
        v8 = *(v6 + 4);
        if (v8 < 2)
        {
          goto LABEL_41;
        }

        if (*(v6 + 1) == 10)
        {
          if (sub_10003FF34(v6, v34) || sub_100040034(v34))
          {
            if (dword_100090058)
            {
              v9 = ne_log_obj();
              if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
              {
                sub_10005DECC();
              }
            }

            goto LABEL_14;
          }

          v10 = *(&v34[0] + 1);
          if (*(&v34[0] + 1))
          {
            v11 = *(&v35 + 1);
            if (*(&v35 + 1))
            {
              v12 = v36;
              if (v36)
              {
                if (*(*(&v34[0] + 1) + 9) <= 2u && (!sub_100039634(*(a1 + 56), *(&v35 + 1) + 8) && !sub_100039634(*(a1 + 48), v12 + 8) || !sub_100039634(*(a1 + 56), v12 + 8) && !sub_100039634(*(a1 + 48), v11 + 8)))
                {
                  break;
                }
              }
            }
          }
        }

LABEL_14:
        v6 += 8 * v8;
        if (v6 >= v7)
        {
          goto LABEL_41;
        }
      }

      v13 = sub_10002CD40(*(v6 + 3));
      v14 = sub_100006324(v11 + 8, v12 + 8, v13, *(v10 + 4));
      v15 = v14;
      if (v3)
      {
        if (v14)
        {
          v16 = v14[32];
          if (v16 && v16 != a1)
          {
            goto LABEL_14;
          }

          if ((*(v14 + 57) & 0x60) != 0)
          {
            if (!dword_100090058)
            {
              goto LABEL_14;
            }

            v17 = ne_log_obj();
            if (!os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_14;
            }

            v18 = bswap32(*(v10 + 4));
            sub_100021944(v3, *(v3 + 84));
            *buf = 67109378;
            LODWORD(v33[0]) = v18;
            WORD2(v33[0]) = 2080;
            *(v33 + 6) = &xmmword_10008C748;
            v19 = v17;
            v20 = "keeping IPsec-SA spi=%u - found valid ISAKMP-SA spi=%s.\n";
            v21 = 18;
            goto LABEL_40;
          }
        }

        else if (dword_100090058)
        {
          log = ne_log_obj();
          v22 = os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT);
          v15 = 0;
          if (v22)
          {
            v23 = bswap32(*(v10 + 4));
            *buf = 67109120;
            LODWORD(v33[0]) = v23;
            _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "Unknown IPsec-SA spi=%u, hmmmm?\n", buf, 8u);
            v15 = 0;
          }
        }
      }

      v24 = (v11 + 8);
      v25 = v15;
      sub_10003ED70(*(qword_1000900B8 + 32), *(v6 + 3), 0, v24, (v12 + 8), *(v10 + 4));
      if (v25)
      {
        sub_1000247FC(v25);
        sub_100048E58(v25);
      }

      if (!dword_100090058)
      {
        goto LABEL_14;
      }

      v26 = ne_log_obj();
      if (!os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_14;
      }

      v27 = bswap32(*(v10 + 4));
      *buf = 67109120;
      LODWORD(v33[0]) = v27;
      v19 = v26;
      v20 = "purged IPsec-SA spi=%u.\n";
      v21 = 8;
LABEL_40:
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, v20, buf, v21);
      goto LABEL_14;
    }

LABEL_41:
    sub_10003D4F0(v5);
    if (dword_100090058)
    {
      v28 = ne_log_obj();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        sub_100021944(a1, *(a1 + 84));
        *buf = 136315138;
        v33[0] = &xmmword_10008C748;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "purged ISAKMP-SA spi=%s.\n", buf, 0xCu);
      }
    }

    v29 = *(a1 + 112);
    if (v29)
    {
      sub_100038740(v29);
      *(a1 + 112) = 0;
    }

    *(a1 + 112) = sub_100038550(1, sub_100022638, a1);
  }

  else if (dword_100090058)
  {
    v30 = ne_log_obj();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "pfkey_dump_sadb returned nothing.\n", buf, 2u);
    }
  }
}

void sub_1000247FC(uint64_t *a1)
{
  if (a1 && *(a1 + 62))
  {
    v2 = 0uLL;
    v39 = 0u;
    memset(v40, 0, sizeof(v40));
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v32 = 0u;
    v3 = *a1;
    v4 = a1[1];
    if (dword_100090058)
    {
      v5 = ne_log_obj();
      v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
      v2 = 0uLL;
      if (v6)
      {
        LOWORD(v29[0]) = 0;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "generated policy, deleting it.\n", v29, 2u);
        v2 = 0uLL;
      }
    }

    v40[15] = v2;
    v40[16] = v2;
    v40[13] = v2;
    v40[14] = v2;
    v40[11] = v2;
    v40[12] = v2;
    v40[9] = v2;
    v40[10] = v2;
    v40[7] = v2;
    v40[8] = v2;
    v40[5] = v2;
    v40[6] = v2;
    v40[3] = v2;
    v40[4] = v2;
    v40[1] = v2;
    v40[2] = v2;
    v40[0] = v2;
    a1[17] = v40;
    *a1 = v4;
    a1[1] = v3;
    LOBYTE(v40[0]) = 1;
    v7 = a1[24];
    if (v7 && (v8 = **(v7 + 1), v8 <= 6) && ((1 << v8) & 0x72) != 0)
    {
      if (sub_10000E74C(v7, &v40[8] + 8, &v40[16] + 9, &v40[16] + 5, *(a1 + 61)))
      {
        goto LABEL_72;
      }

      v9 = **(a1[24] + 8);
      if (v9 == 5)
      {
        if (sub_100024E1C(&v40[8] + 8, *a1))
        {
          goto LABEL_72;
        }

        v9 = **(a1[24] + 8);
      }

      if (v9 == 5)
      {
        v10 = 5;
      }

      else
      {
        v10 = 0;
      }

      if (v9 == 1)
      {
        v11 = 1;
      }

      else
      {
        v11 = v10;
      }
    }

    else
    {
      if (dword_100090058)
      {
        v12 = ne_log_obj();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v29[0]) = 0;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Get a destination address of SP index from Phase 1 address due to no ID payloads found OR because ID type is not address.\n", v29, 2u);
        }
      }

      v13 = **a1;
      __memcpy_chk();
      if (BYTE9(v40[8]) == 30)
      {
        v11 = 0;
        v14 = 0x80;
      }

      else
      {
        if (BYTE9(v40[8]) != 2)
        {
          v11 = 0;
          BYTE9(v40[16]) = 0;
          goto LABEL_28;
        }

        v11 = 0;
        v14 = 32;
      }

      BYTE9(v40[16]) = v14;
    }

LABEL_28:
    v15 = a1[25];
    if (v15)
    {
      v16 = **(v15 + 1);
      if (v16 <= 6 && ((1 << v16) & 0x72) != 0)
      {
        if (!sub_10000E74C(v15, v40 + 8, &v40[16] + 8, &v40[16] + 5, *(a1 + 61)))
        {
          v17 = **(a1[25] + 8);
          if (v17 != 5)
          {
LABEL_35:
            if (v11 == v17 && BYTE9(v40[8]) == BYTE9(v40[0]))
            {
              a1[4] = sub_10003A790(&v40[8] + 8);
              a1[5] = sub_10003A790(v40 + 8);
            }

            goto LABEL_47;
          }

          if (!sub_100024E1C(v40 + 8, a1[1]))
          {
            v17 = **(a1[25] + 8);
            goto LABEL_35;
          }
        }

LABEL_72:
        a1[17] = 0;
        return;
      }
    }

    if (dword_100090058)
    {
      v18 = ne_log_obj();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v29[0]) = 0;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Get a source address of SP index from Phase 1 address due to no ID payloads found OR because ID type is not address.\n", v29, 2u);
      }
    }

    v19 = *a1[1];
    __memcpy_chk();
    if (BYTE9(v40[0]) == 30)
    {
      v20 = 0x80;
    }

    else
    {
      if (BYTE9(v40[0]) != 2)
      {
        BYTE8(v40[16]) = 0;
        goto LABEL_47;
      }

      v20 = 32;
    }

    BYTE8(v40[16]) = v20;
LABEL_47:
    if (dword_100090058)
    {
      v21 = ne_log_obj();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        v29[0] = 67109376;
        v29[1] = BYTE8(v40[16]);
        v30 = 1024;
        v31 = WORD5(v40[16]);
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "get src/dst address from ID payload prefixlen=%u ul_proto=%u\n", v29, 0xEu);
      }

      if (dword_100090058)
      {
        v22 = ne_log_obj();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
        {
          sub_10005DF18();
        }

        if (dword_100090058)
        {
          v23 = ne_log_obj();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
          {
            sub_10005DFB0();
          }
        }
      }
    }

    if (!WORD5(v40[16]))
    {
      WORD5(v40[16]) = 255;
    }

    if ((sub_10002E5E8(a1) & 0x80000000) != 0)
    {
      if (dword_100090058)
      {
        v25 = ne_log_obj();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          sub_10005E048();
        }
      }
    }

    else if (dword_100090058)
    {
      v24 = ne_log_obj();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v29[0]) = 0;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "pfkey spddelete(inbound) sent.\n", v29, 2u);
      }
    }

    *a1 = v3;
    a1[1] = v4;
    LOBYTE(v40[0]) = 2;
    v36 = *(&v40[4] + 8);
    v37 = *(&v40[5] + 8);
    v38 = *(&v40[6] + 8);
    v39 = *(&v40[7] + 8);
    v32 = *(v40 + 8);
    v33 = *(&v40[1] + 8);
    v34 = *(&v40[2] + 8);
    v35 = *(&v40[3] + 8);
    *(&v40[3] + 8) = *(&v40[11] + 8);
    *(&v40[2] + 8) = *(&v40[10] + 8);
    *(&v40[1] + 8) = *(&v40[9] + 8);
    *(&v40[7] + 8) = *(&v40[15] + 8);
    *(&v40[6] + 8) = *(&v40[14] + 8);
    *(&v40[5] + 8) = *(&v40[13] + 8);
    *(&v40[4] + 8) = *(&v40[12] + 8);
    *(v40 + 8) = *(&v40[8] + 8);
    *(&v40[11] + 8) = v35;
    *(&v40[10] + 8) = v34;
    *(&v40[9] + 8) = v33;
    *(&v40[8] + 8) = v32;
    *(&v40[15] + 8) = v39;
    *(&v40[14] + 8) = v38;
    *(&v40[13] + 8) = v37;
    *(&v40[12] + 8) = v36;
    v26 = BYTE8(v40[16]);
    BYTE8(v40[16]) = BYTE9(v40[16]);
    BYTE9(v40[16]) = v26;
    if ((sub_10002E5E8(a1) & 0x80000000) != 0)
    {
      if (dword_100090058)
      {
        v28 = ne_log_obj();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          sub_10005E07C();
        }
      }
    }

    else if (dword_100090058)
    {
      v27 = ne_log_obj();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v29[0]) = 0;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "pfkey spddelete(outbound) sent.\n", v29, 2u);
      }
    }

    goto LABEL_72;
  }
}

uint64_t sub_100024E1C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  if (v2 == 255 || v2 == 254 && ((v3 = *(a1 + 9), (v3 & 0xC0) == 0x80) || v3 >= 0xC0))
  {
    if (*(a2 + 1) == 30)
    {
      if (*(a2 + 8) == 254 && (*(a2 + 9) & 0xC0) == 0x80)
      {
        v4 = 0;
        *(a1 + 24) = *(a2 + 24);
        return v4;
      }

      if (dword_100090058)
      {
        v6 = ne_log_obj();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          sub_10005E0E4();
        }
      }
    }

    else if (dword_100090058)
    {
      v5 = ne_log_obj();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        sub_10005E0B0();
      }
    }

    return 0xFFFFFFFFLL;
  }

  return 0;
}

void *sub_100024F0C(uint64_t a1, void *a2)
{
  if ((*(a1 + 432) & 1) != 0 || !*(*(a1 + 64) + 168) || sub_100006D14(*(a1 + 48)))
  {
    if (dword_100090058)
    {
      v4 = ne_log_obj();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v5 = *(a1 + 432) & 1;
        v6 = *(*(a1 + 64) + 168);
        v7 = sub_100006D14(*(a1 + 48));
        v16[0] = 67109632;
        v16[1] = v5;
        v17 = 1024;
        v18 = v6;
        v19 = 1024;
        v20 = v7 != 0;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "failed to add initial-contact payload: rekey %d, ini-contact %d, contacted %d.\n", v16, 0x14u);
      }
    }

    return 0;
  }

  else
  {
    v10 = *(*(a1 + 64) + 24);
    v11 = sub_10003D3A8(0x18uLL);
    v8 = v11;
    if (v11)
    {
      *v11[1] = bswap32(v10) | 0x260100100000000;
      *(v11[1] + 8) = *a1;
      v12 = malloc_type_malloc(0x20uLL, 0x102004055CCDE27uLL);
      if (a2)
      {
        *a2 = v12;
      }

      *v12 = 0;
      v12[1] = a2;
      v12[2] = v8;
      *(v12 + 6) = 11;
      if (dword_100090058)
      {
        v13 = ne_log_obj();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v16[0]) = 0;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "added initial-contact payload.\n", v16, 2u);
        }
      }

      if (sub_100006D5C(*(a1 + 48)) == -1)
      {
        if (dword_100090058)
        {
          v14 = ne_log_obj();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            sub_10005CD54();
          }
        }
      }
    }

    else if (dword_100090058)
    {
      v15 = ne_log_obj();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        sub_1000590B4();
      }
    }
  }

  return v8;
}

void sub_100025140(uint64_t a1, uint64_t a2, sockaddr *a3, unsigned __int8 *a4, int a5)
{
  v10 = *(a2 + 8);
  v11 = sub_100036448(a3);
  if (!v11)
  {
    if (dword_100090058)
    {
      v19 = ne_log_obj();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        sub_10005E19C();
      }
    }

    return;
  }

  v12 = v11;
  v13 = sub_100036B98(v11, a5);
  if (!v13)
  {
    if (dword_100090058)
    {
      v20 = ne_log_obj();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        sub_10005E118(a5);
      }
    }

    return;
  }

  v14 = v13;
  v15 = sub_100005AC8(16);
  if (!v15)
  {
    return;
  }

  v16 = v15;
  *v15 = *v10;
  v15[8] = v12;
  sub_100036ABC(v12);
  *(v16 + 82) = 0;
  *(v16 + 20) = 1;
  v17 = *v14;
  *(v16 + 81) = v17;
  *(v16 + 80) = *(v10 + 17);
  *(v16 + 84) = 0;
  if (v17 == 2)
  {
    v18 = 5440;
  }

  else
  {
    if (v17 != 4)
    {
LABEL_19:

      sub_100005B80(v16);
      return;
    }

    v18 = 5504;
  }

  sub_100000A50((v16 + 16), v18);
  v21 = sub_100042B48();
  *(v16 + 408) = v21;
  if (!v21)
  {
    goto LABEL_19;
  }

  *(v16 + 100) = 0;
  *(v16 + 104) = 0;
  *(v16 + 72) = 0;
  if (sub_10003B344(a4) == *(qword_1000900B8 + 18))
  {
    *(v16 + 96) |= 8u;
  }

  if ((sub_10002006C(v16, v12, &a3->sa_len, a4) & 0x80000000) == 0)
  {
    if (sub_1000496EC(a1, v16))
    {
      goto LABEL_19;
    }

    if (dword_100090058)
    {
      v22 = ne_log_obj();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
      {
        sub_10005CC48();
      }
    }

    v23 = sub_10003A5E8(*(v16 + 56));
    v24 = strdup(v23);
    if (!v24)
    {
      if (dword_100090058)
      {
        v32 = ne_log_obj();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
        {
          sub_10005C860();
        }
      }

      exit(1);
    }

    v25 = v24;
    if (dword_100090058)
    {
      v26 = ne_log_obj();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        v27 = sub_10003A5E8(*(v16 + 48));
        v33 = 136315394;
        v34 = v25;
        v35 = 2080;
        v36 = v27;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "respond new phase 1 negotiation: %s<=>%s\n", &v33, 0x16u);
      }

      v28 = dword_100090058;
      free(v25);
      if (v28)
      {
        v29 = ne_log_obj();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
        {
          v30 = sub_10003BC10(a5);
          v33 = 136315138;
          v34 = v30;
          _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "begin %s mode.\n", &v33, 0xCu);
        }

        if (dword_100090058)
        {
          v31 = ne_log_obj();
          if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(v33) = 0;
            _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "IPSec Phase 1 started (Initiated by peer).\n", &v33, 2u);
          }
        }
      }
    }

    else
    {
      free(v24);
    }

    sub_10001F28C(a2, a3, a4);
  }
}

void sub_100025500(uint64_t a1, void *a2, const sockaddr *a3, uint64_t a4)
{
  if (sub_100012BB0(a1, a2) == 1)
  {
    v7 = sub_100012ED4(a1);
    if (v7)
    {
      v8 = v7;
      if (sub_100006EC8(a3, a4, v7) < 1)
      {
        sub_10001F28C(v8, a3, a4);

        sub_10003D4F0(v8);
      }

      else
      {
        if (dword_100090058)
        {
          v9 = ne_log_obj();
          if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
          {
            v13 = 136315138;
            v14 = sub_10003A5E8(a3);
            _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Received (reassembled) retransmitted packet from %s.\n", &v13, 0xCu);
          }

          if (dword_100090058)
          {
            v10 = ne_log_obj();
            if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
            {
              v11 = sub_10003A5E8(a3);
              v13 = 136315138;
              v14 = v11;
              _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "the reassembled packet is retransmitted by %s.\n", &v13, 0xCu);
            }
          }
        }

        sub_10003D4F0(v8);
      }
    }

    else if (dword_100090058)
    {
      v12 = ne_log_obj();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_10005E1D0();
      }
    }
  }
}

void sub_1000256DC(uint64_t a1, void *a2)
{
  v4 = a2[1];
  if (sub_100044AC8(a1))
  {
    if (dword_100090058)
    {
      v5 = ne_log_obj();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        sub_10005E204();
      }
    }

    return;
  }

  v6 = sub_100006488(16, 0);
  if (v6)
  {
    v7 = v6;
    *(v6 + 30) = 4097;
    sub_100000A50(v6 + 14, 6592);
    *(v7 + 105) = *(v4 + 19);
    *(v7 + 108) = *(v4 + 20);
    *(v7 + 100) = sub_10002EB0C();
    v8 = sub_10002B73C(a1, *(v7 + 108));
    *(v7 + 240) = v8;
    if (!v8)
    {
      goto LABEL_28;
    }

    v9 = sub_10003A790(*(a1 + 48));
    *(v7 + 8) = v9;
    if (!v9)
    {
      goto LABEL_28;
    }

    v10 = v9[1];
    if (v10 != 2 && v10 != 30)
    {
      if (dword_100090058)
      {
        v23 = ne_log_obj();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          sub_10005CC7C(v7 + 8);
        }
      }

LABEL_30:
      sub_100006690(v7);
      return;
    }

    v12 = sub_10003A790(*(a1 + 56));
    *v7 = v12;
    if (!v12)
    {
LABEL_28:

      goto LABEL_30;
    }

    v13 = v12[1];
    if (v13 != 2 && v13 != 30)
    {
      if (dword_100090058)
      {
        v24 = ne_log_obj();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          sub_10005CC7C(v7);
        }
      }

      goto LABEL_30;
    }

    if (!sub_100049944(a1, v7))
    {
      *(v7 + 264) &= ~2u;
      *(v7 + 16) = *(a1 + 28);
      if (dword_100090058)
      {
        v14 = ne_log_obj();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
        {
          sub_10005CC48();
        }
      }

      v15 = sub_10003A5E8(*v7);
      v16 = strdup(v15);
      if (!v16)
      {
        if (dword_100090058)
        {
          v25 = ne_log_obj();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
          {
            sub_10005C860();
          }
        }

        exit(1);
      }

      v17 = v16;
      if (dword_100090058)
      {
        v18 = ne_log_obj();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          v19 = sub_10003A5E8(*(v7 + 8));
          v26 = 136315394;
          v27 = v17;
          v28 = 2080;
          v29 = v19;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "respond new phase 2 negotiation: %s<=>%s\n", &v26, 0x16u);
        }

        v20 = dword_100090058;
        free(v17);
        if (v20)
        {
          v21 = ne_log_obj();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(v26) = 0;
            _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "IPSec Phase 2 started (Initiated by peer).\n", &v26, 2u);
          }
        }
      }

      else
      {
        free(v16);
      }

      if (!sub_100000F48(v7, a2))
      {
        sub_100046F84(1, 1, 0, v7);
      }
    }
  }

  else if (dword_100090058)
  {
    v22 = ne_log_obj();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      sub_10005E238();
    }
  }
}

void sub_100025ABC()
{
  qword_1000900B8 = malloc_type_calloc(1uLL, 0x140uLL, 0x10B004027E15F99uLL);
  if (!qword_1000900B8)
  {
    sub_10005E26C();
  }

  sub_100025B2C();
  v0 = qword_1000900B8;
  *(qword_1000900B8 + 28) = -1;
  *v0 = "/etc/racoon/racoon.conf";
  v1 = qword_1000900B8;
  *(qword_1000900B8 + 96) = 0;
  *(v1 + 104) = v1 + 96;
}

double sub_100025B2C()
{
  v0 = qword_1000900B8;
  *(qword_1000900B8 + 8) = 0;
  *(v0 + 112) = 1;
  *(v0 + 16) = 294912500;
  *(v0 + 24) = 2;
  *(v0 + 248) = xmmword_10006CCA0;
  *(v0 + 264) = xmmword_10006CCB0;
  *(v0 + 280) = 0x1E0000001ELL;
  *&result = 16;
  *(v0 + 304) = 16;
  *(v0 + 312) = 1;
  *(v0 + 288) = 20;
  *(v0 + 80) = *(v0 + 80) & 0xFFFFFFEE | 0x10;
  return result;
}

void sub_100025BA4()
{
  sub_100025B2C();
  sub_10000453C();
  v0 = qword_1000900B8;
  for (i = 136; i != 176; i += 8)
  {
    v2 = *(v0 + i);
    if (v2)
    {
      free(v2);
      *(qword_1000900B8 + i) = 0;
      v0 = qword_1000900B8;
    }
  }

  do
  {
    v3 = qword_1000900B8;
    v4 = *(qword_1000900B8 + i);
    if (v4)
    {
      sub_10003D4F0(v4);
      v3 = qword_1000900B8;
    }

    *(v3 + i) = 0;
    i += 8;
  }

  while (i != 248);
  v5 = *(qword_1000900B8 + 296);
  if (v5)
  {
    sub_10003D4F0(v5);
    *(qword_1000900B8 + 296) = 0;
  }
}

void sub_100025C34()
{
  qword_1000900C0 = qword_1000900B8;
  qword_1000900B8 = 0;
  sub_100025ABC();
}

void sub_100025C4C()
{
  sub_100025BA4();
  free(qword_1000900B8);
  qword_1000900B8 = qword_1000900C0;
  qword_1000900C0 = 0;
}

size_t *sub_100025C88(void *a1)
{
  if (dword_100090058)
  {
    v2 = ne_log_obj();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      sub_10005E288();
    }
  }

  v3 = malloc_type_calloc(1uLL, *a1 - 3, 0x74F5BBF6uLL);
  if (v3)
  {
    v4 = v3;
    memcpy(v3, (a1[1] + 4), *a1 - 4);
    v4[*a1 - 4] = 0;
    v5 = sub_100025D6C(v4, *a1 - 4);
    free(v4);
  }

  else
  {
    if (dword_100090058)
    {
      v6 = ne_log_obj();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_10005E2BC();
      }
    }

    return 0;
  }

  return v5;
}

size_t *sub_100025D6C(const char *a1, int a2)
{
  i = 0;
  if (dword_100090058)
  {
    v4 = ne_log_obj();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      sub_10005E2F0();
    }
  }

  if (sub_100037B48(*(qword_1000900B8 + 144), 1) || (v7 = fopen(*(qword_1000900B8 + 144), "r")) == 0)
  {
    if (dword_100090058)
    {
      v5 = ne_log_obj();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        sub_10005E358(v5);
      }
    }

    return 0;
  }

  v8 = v7;
  if (!fgets(__s1, 1024, v7))
  {
    goto LABEL_31;
  }

  v9 = a2;
  while (2)
  {
    v10 = __s1[0];
    if (!__s1[0] || __s1[0] == 35)
    {
      goto LABEL_30;
    }

    v11 = __s1;
    while ((v10 & 0x80) == 0)
    {
      if ((_DefaultRuneLocale.__runetype[v10] & 0x4000) != 0)
      {
        goto LABEL_21;
      }

LABEL_19:
      v12 = *++v11;
      v10 = v12;
      if (!v12)
      {
        goto LABEL_30;
      }
    }

    if (!__maskrune(v10, 0x4000uLL))
    {
      goto LABEL_19;
    }

LABEL_21:
    if (!*v11)
    {
      goto LABEL_30;
    }

    *v11 = 0;
    do
    {
      while (1)
      {
        v14 = *++v11;
        v13 = v14;
        if (v14 < 0)
        {
          break;
        }

        if ((_DefaultRuneLocale.__runetype[v13] & 0x4000) == 0)
        {
          goto LABEL_27;
        }
      }
    }

    while (__maskrune(v13, 0x4000uLL));
LABEL_27:
    if (!v13 || strncmp(__s1, a1, v9) || __s1[v9])
    {
LABEL_30:
      if (!fgets(__s1, 1024, v8))
      {
        goto LABEL_31;
      }

      continue;
    }

    break;
  }

  v16 = 0;
  for (i = 0; v11[v16] && v11[v16] != 10; i = v16)
  {
    ++v16;
  }

  v11[v16] = 0;
  if (*v11 == 48 && v11[1] == 120)
  {
    v18 = sub_10003B580(v11 + 2, 16, &i);
    v11 = v18;
    if (!v18)
    {
      if (dword_100090058)
      {
        v19 = ne_log_obj();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          sub_10005E2BC();
        }
      }

      goto LABEL_31;
    }
  }

  else
  {
    v18 = 0;
  }

  v20 = sub_10003D3A8(i);
  if (v20)
  {
    v6 = v20;
    memcpy(v20[1], v11, *v20);
    if (v18)
    {
      free(v18);
    }
  }

  else
  {
    if (dword_100090058)
    {
      v21 = ne_log_obj();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        sub_10005E324();
      }
    }

LABEL_31:
    v6 = 0;
  }

  fclose(v8);
  return v6;
}

size_t *sub_100026044(sockaddr *a1)
{
  if (dword_100090058)
  {
    v2 = ne_log_obj();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      sub_10005E3E0();
    }
  }

  if (getnameinfo(a1, a1->sa_len, __s, 0x401u, v5, 0x20u, 10))
  {
    __strlcpy_chk();
    __strlcpy_chk();
  }

  v3 = strlen(__s);
  return sub_100025D6C(__s, v3);
}

void sub_100026138(char *__str, int a2, int a3, const char *a4)
{
  if (*a4 == 47)
  {
    v5 = &unk_100080609;
    v6 = &unk_100080609;
  }

  else
  {
    v6 = *(qword_1000900B8 + 8 * a3 + 136);
    v5 = "/";
  }

  snprintf(__str, a2, "%s%s%s", v6, v5, a4);
  if (dword_100090058)
  {
    v7 = ne_log_obj();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      sub_10005E414(__str, v7);
    }
  }
}

uint64_t sub_1000261E4(unsigned int a1)
{
  if (a1 > 2)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return dword_10006CCC8[a1];
  }
}

uint64_t sub_100026204(int a1)
{
  if (a1)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 1;
  }
}

uint64_t start(int a1, char **a2)
{
  sub_10004DA90();
  sub_100032138();
  if (geteuid())
  {
    sub_10005E48C();
  }

  umask(0x3Fu);
  if (umask(0x3Fu) != 63)
  {
    sub_10005E4A8();
  }

  sub_100025ABC();
  sub_100036B88();
  sub_100026EC0();
  sub_10003CFE0();
  v4 = strrchr(*a2, 47);
  qword_100090020 = v4;
  if (v4)
  {
    v5 = v4 + 1;
  }

  else
  {
    v5 = *a2;
  }

  qword_100090020 = v5;
  while (1)
  {
    while (1)
    {
      while (1)
      {
        while (1)
        {
          v6 = getopt(a1, a2, "dDLFp:P:a:f:l:vsZBCx46");
          if (v6 <= 89)
          {
            break;
          }

          if (v6 > 111)
          {
            if (v6 > 117)
            {
              if (v6 == 118)
              {
                ++dword_10008C284;
              }

              else
              {
                if (v6 != 120)
                {
                  goto LABEL_90;
                }

                byte_10008C78C = 1;
              }
            }

            else if (v6 == 112)
            {
              *(qword_1000900B8 + 16) = atoi(optarg);
            }

            else
            {
              if (v6 != 115)
              {
                goto LABEL_90;
              }

              *(qword_1000900B8 + 80) &= ~0x10u;
            }
          }

          else if (v6 > 101)
          {
            if (v6 == 102)
            {
              *qword_1000900B8 = optarg;
            }

            else
            {
              if (v6 != 108)
              {
                goto LABEL_90;
              }

              *(qword_1000900B8 + 128) = optarg;
            }
          }

          else
          {
            switch(v6)
            {
              case 'Z':
                puts("Local test mode.");
                dword_100090010 = 1;
                break;
              case 'd':
                sub_100031BF8(7);
                break;
              case 'a':
                fprintf(__stderrp, "%s: the option is disabled in the configuration\n", qword_100090020);
                goto LABEL_89;
              default:
LABEL_90:
                sub_100026AC4();
            }
          }
        }

        if (v6 <= 67)
        {
          break;
        }

        if (v6 > 75)
        {
          if (v6 == 76)
          {
            dword_10009002C = 1;
          }

          else
          {
            if (v6 != 80)
            {
              goto LABEL_90;
            }

            *(qword_1000900B8 + 18) = atoi(optarg);
          }
        }

        else if (v6 == 68)
        {
          if (dword_100090028)
          {
            goto LABEL_86;
          }

          dword_100090018 = 1;
        }

        else
        {
          if (v6 != 70)
          {
            goto LABEL_90;
          }

          if (dword_100090018)
          {
LABEL_86:
            fwrite("-D and -F are mutually exclusive\n", 0x21uLL, 1uLL, __stderrp);
            goto LABEL_89;
          }

          puts("Foreground mode.");
          dword_100090028 = 1;
        }
      }

      if (v6 <= 53)
      {
        break;
      }

      if (v6 == 54)
      {
        *(qword_1000900B8 + 24) = 30;
      }

      else
      {
        if (v6 != 67)
        {
          goto LABEL_90;
        }

        ++dword_10008C788;
      }
    }

    if (v6 != 52)
    {
      break;
    }

    *(qword_1000900B8 + 24) = 2;
  }

  if (v6 != -1 || optind != a1)
  {
    goto LABEL_90;
  }

  if (dword_100090058)
  {
    v7 = ne_log_obj();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109632;
      *&buf[4] = getpid();
      *&buf[8] = 1024;
      *&buf[10] = getppid();
      *&buf[14] = 1024;
      *&buf[16] = dword_100090018;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "racoon started: pid=%d  started by: %d, launchdlaunched %d\n", buf, 0x14u);
    }

    if (dword_100090058)
    {
      v8 = ne_log_obj();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        *&buf[4] = aRacoonIpsecToo_0;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s\n", buf, 0xCu);
      }

      if (dword_100090058)
      {
        v9 = ne_log_obj();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          v10 = *qword_1000900B8;
          *buf = 136315138;
          *&buf[4] = v10;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Reading configuration from %s\n", buf, 0xCu);
        }
      }
    }
  }

  if ((sub_10002C95C() & 0x80000000) != 0)
  {
    sub_10005E6AC();
  }

  word_10008C78E = *(qword_1000900B8 + 16);
  if (sub_100051114())
  {
    sub_10005E4C4();
  }

  v11 = qword_1000900B8;
  *(qword_1000900B8 + 16) = word_10008C78E;
  if (!*(v11 + 128) && !byte_100090800)
  {
    sub_100031B34(*(v11 + 168));
  }

  *buf = 4500;
  if (sysctlbyname("net.inet.ipsec.esp_port", 0, 0, buf, 4uLL))
  {
    sub_10005E4E0(buf);
  }

  if (!xmmword_100090C10 || qword_100090C68 || (result = sub_100042E80(255), !result))
  {
    if (dword_10008C788)
    {
      sub_100036C80();
    }

    if (dword_100090028)
    {
      close(0);
      goto LABEL_70;
    }

    if ((byte_10008C78C & 1) == 0 && dword_100090018)
    {
      if (dword_100090058)
      {
        v13 = ne_log_obj();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "racoon launched by launchd.\n", buf, 2u);
        }
      }

      byte_10008C78C = 1;
      if (atexit(sub_1000269EC) < 0)
      {
        if (dword_100090058)
        {
          v14 = ne_log_obj();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
LABEL_80:
            sub_10005E518();
          }
        }
      }

LABEL_70:
      sub_10004DD60();
      sub_10003886C();
    }

    if (byte_10008C78C)
    {
      if (atexit(sub_1000269EC) < 0)
      {
        if (dword_100090058)
        {
          v15 = ne_log_obj();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_80;
          }
        }
      }

      goto LABEL_70;
    }

    v38 = 0;
    v37 = 0u;
    v36 = 0u;
    v35 = 0u;
    v34 = 0u;
    v33 = 0u;
    v32 = 0u;
    v31 = 0u;
    v30 = 0u;
    v29 = 0u;
    v28 = 0u;
    v27 = 0u;
    v26 = 0u;
    v25 = 0u;
    v24 = 0u;
    v23 = 0u;
    *&buf[8] = 0u;
    __envp = 0;
    if (a1 < 33)
    {
      if (daemon(0, 0) < 0)
      {
        sub_10005E648();
      }

      if (setuid(0))
      {
        if (dword_100090058)
        {
          v19 = ne_log_obj();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
          {
            sub_10005E54C();
          }
        }
      }

      else if (setgid(0))
      {
        if (dword_100090058)
        {
          v20 = ne_log_obj();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
          {
            sub_10005E580();
          }
        }
      }

      else
      {
        *buf = "/usr/sbin/racoon";
        if (a1 >= 2)
        {
          memcpy(&buf[8], a2 + 1, 8 * (a1 - 1));
        }

        v17 = &buf[8 * a1];
        *v17 = "-x";
        v17[1] = 0;
        execve("/usr/sbin/racoon", buf, &__envp);
        if (dword_100090058)
        {
          v18 = ne_log_obj();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            sub_10005E5B4(v18);
          }
        }
      }
    }

    else if (dword_100090058)
    {
      v16 = ne_log_obj();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        sub_10005E678();
      }
    }

LABEL_89:
    exit(1);
  }

  return result;
}

uint64_t sub_1000269EC()
{
  result = getpid();
  if (dword_100090014 == result)
  {
    v1 = *(qword_1000900B8 + 160);
    if (!v1 || *v1 == 47)
    {
      __strlcpy_chk();
    }

    else
    {
      __strlcat_chk();
      v2 = *(qword_1000900B8 + 160);
      __strlcat_chk();
    }

    return unlink(v3);
  }

  return result;
}

void sub_100026AC4()
{
  printf("usage: racoon [-BdDFvs%s] %s[-f (file)] [-l (file)] [-p (port)]\n", "46", &unk_100080609);
  puts("   -d: debug level, more -d will generate more debug message.");
  puts("   -D: started by LaunchD (implies daemon mode).");
  puts("   -C: dump parsed config file.");
  puts("   -L: include location in debug messages");
  puts("   -F: run in foreground, do not become daemon.");
  puts("   -v: be more verbose");
  puts("   -s: override enable auto exit");
  puts("   -4: IPv4 mode.");
  puts("   -6: IPv6 mode.");
  puts("   -f: pathname for configuration file.");
  puts("   -l: pathname for log file.");
  printf("   -p: port number for isakmp (default: %d).\n", 500);
  printf("   -P: port number for NAT-T (default: %d).\n", 4500);
  exit(1);
}

uint64_t sub_100026BA8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    for (i = 0; i != a2; ++i)
    {
      if (i && (i & 0x1F) == 0)
      {
        putchar(10);
      }

      if ((i & 3) == 0)
      {
        putchar(32);
      }

      printf("%02x", *(a1 + i));
    }
  }

  putchar(10);
  return 0;
}

const char *sub_100026C38(unsigned int a1, int a2)
{
  if (a2 > 128)
  {
    return "Failed to convert.";
  }

  v5 = a2;
  v2 = byte_10008C790;
  __memset_chk();
  byte_10008C790[a2] = 0;
  if (a2 >= 1)
  {
    v6 = 0;
    v7 = &byte_10008C790[v5 - 1];
    do
    {
      if ((a1 >> v6))
      {
        *v7 = 49;
      }

      ++v6;
      --v7;
    }

    while (a2 != v6);
  }

  return v2;
}

char *sub_100026CD8(char *a1, uint64_t a2, uint64_t a3)
{
  strrchr(a1, 47);
  if (a3)
  {
    snprintf(byte_10008C811, 0x400uLL, "%s:%d:%s()");
  }

  else
  {
    snprintf(byte_10008C811, 0x400uLL, "%s:%d");
  }

  return byte_10008C811;
}

uint64_t sub_100026D64(const char *a1)
{
  memset(&v2, 0, sizeof(v2));
  if (stat(a1, &v2))
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return LODWORD(v2.st_size);
  }
}

double sub_100026DAC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = *(a1 + 8);
  if (v2 >= v3)
  {
    v4 = -*a1;
  }

  else
  {
    v2 += 1000000;
    v4 = ~*a1;
  }

  return (v2 - v3) / 1000000.0 + (*a2 + v4);
}

char *sub_100026DF8(char *a1, uint64_t a2)
{
  if (!a2)
  {
    v9 = 0;
    goto LABEL_13;
  }

  v3 = a2;
  v4 = 0;
  v5 = a1;
  do
  {
    v7 = *v5++;
    v6 = v7;
    if (v7 < 0)
    {
      if (__maskrune(v6, 0x800uLL))
      {
LABEL_5:
        a1[v4++] = v6;
        goto LABEL_6;
      }
    }

    else if ((_DefaultRuneLocale.__runetype[v6] & 0x800) != 0)
    {
      goto LABEL_5;
    }

    if (v4)
    {
      v8 = &a1[v4];
      if (*(v8 - 1) != 32)
      {
        ++v4;
        *v8 = 32;
      }
    }

LABEL_6:
    --v3;
  }

  while (v3);
  v9 = v4;
LABEL_13:
  a1[v9] = 0;
  return a1;
}

uint64_t sub_100026EC0()
{
  v1 = 0;
  v2 = 0;
  v2 = sub_10003B580("FFFFFFFF FFFFFFFF C90FDAA2 2168C234 C4C6628B 80DC1CD129024E08 8A67CC74 020BBEA6 3B139B22 514A0879 8E3404DDEF9519B3 CD3A431B 302B0A6D F25F1437 4FE1356D 6D51C245E485B576 625E7EC6 F44C42E9 A63A3620 FFFFFFFF FFFFFFFF", 16, &v1);
  *&qword_1000901F0 = 0u;
  unk_100090200 = 0u;
  qword_100090210 = 0;
  qword_1000901E8 = 0x100000001;
  qword_1000901F0 = sub_10003D538(&v1);
  qword_1000901F8 = 2;
  free(v2);
  v1 = 0;
  v2 = 0;
  v2 = sub_10003B580("FFFFFFFF FFFFFFFF C90FDAA2 2168C234 C4C6628B 80DC1CD129024E08 8A67CC74 020BBEA6 3B139B22 514A0879 8E3404DDEF9519B3 CD3A431B 302B0A6D F25F1437 4FE1356D 6D51C245E485B576 625E7EC6 F44C42E9 A637ED6B 0BFF5CB6 F406B7EDEE386BFB 5A899FA5 AE9F2411 7C4B1FE6 49286651 ECE65381FFFFFFFF FFFFFFFF", 16, &v1);
  *&qword_1000900D0 = 0u;
  unk_1000900E0 = 0u;
  qword_1000900F0 = 0;
  qword_1000900C8 = 0x100000002;
  qword_1000900D0 = sub_10003D538(&v1);
  qword_1000900D8 = 2;
  free(v2);
  v1 = 0;
  v2 = 0;
  v2 = sub_10003B580("FFFFFFFF FFFFFFFF C90FDAA2 2168C234 C4C6628B 80DC1CD129024E08 8A67CC74 020BBEA6 3B139B22 514A0879 8E3404DDEF9519B3 CD3A431B 302B0A6D F25F1437 4FE1356D 6D51C245E485B576 625E7EC6 F44C42E9 A637ED6B 0BFF5CB6 F406B7EDEE386BFB 5A899FA5 AE9F2411 7C4B1FE6 49286651 ECE45B3DC2007CB8 A163BF05 98DA4836 1C55D39A 69163FA8 FD24CF5F83655D23 DCA3AD96 1C62F356 208552BB 9ED52907 7096966D670C354E 4ABC9804 F1746C08 CA237327 FFFFFFFF FFFFFFFF", 16, &v1);
  *&qword_100090100 = 0u;
  *algn_100090110 = 0u;
  qword_100090120 = 0;
  qword_1000900F8 = 0x100000005;
  qword_100090100 = sub_10003D538(&v1);
  qword_100090108 = 2;
  free(v2);
  v1 = 0;
  v2 = 0;
  v2 = sub_10003B580("FFFFFFFF FFFFFFFF C90FDAA2 2168C234 C4C6628B 80DC1CD129024E08 8A67CC74 020BBEA6 3B139B22 514A0879 8E3404DDEF9519B3 CD3A431B 302B0A6D F25F1437 4FE1356D 6D51C245E485B576 625E7EC6 F44C42E9 A637ED6B 0BFF5CB6 F406B7EDEE386BFB 5A899FA5 AE9F2411 7C4B1FE6 49286651 ECE45B3DC2007CB8 A163BF05 98DA4836 1C55D39A 69163FA8 FD24CF5F83655D23 DCA3AD96 1C62F356 208552BB 9ED52907 7096966D670C354E 4ABC9804 F1746C08 CA18217C 32905E46 2E36CE3BE39E772C 180E8603 9B2783A2 EC07A28F B5C55DF0 6F4C52C9DE2BCBF6 95581718 3995497C EA956AE5 15D22618 98FA051015728E5A 8AACAA68 FFFFFFFF FFFFFFFF", 16, &v1);
  *&qword_100090130 = 0u;
  unk_100090140 = 0u;
  qword_100090150 = 0;
  qword_100090128 = 0x10000000ELL;
  qword_100090130 = sub_10003D538(&v1);
  qword_100090138 = 2;
  free(v2);
  v1 = 0;
  v2 = 0;
  v2 = sub_10003B580("FFFFFFFF FFFFFFFF C90FDAA2 2168C234 C4C6628B 80DC1CD129024E08 8A67CC74 020BBEA6 3B139B22 514A0879 8E3404DDEF9519B3 CD3A431B 302B0A6D F25F1437 4FE1356D 6D51C245E485B576 625E7EC6 F44C42E9 A637ED6B 0BFF5CB6 F406B7EDEE386BFB 5A899FA5 AE9F2411 7C4B1FE6 49286651 ECE45B3DC2007CB8 A163BF05 98DA4836 1C55D39A 69163FA8 FD24CF5F83655D23 DCA3AD96 1C62F356 208552BB 9ED52907 7096966D670C354E 4ABC9804 F1746C08 CA18217C 32905E46 2E36CE3BE39E772C 180E8603 9B2783A2 EC07A28F B5C55DF0 6F4C52C9DE2BCBF6 95581718 3995497C EA956AE5 15D22618 98FA051015728E5A 8AAAC42D AD33170D 04507A33 A85521AB DF1CBA64ECFB8504 58DBEF0A 8AEA7157 5D060C7D B3970F85 A6E1E4C7ABF5AE8C DB0933D7 1E8C94E0 4A25619D CEE3D226 1AD2EE6BF12FFA06 D98A0864 D8760273 3EC86A64 521F2B18 177B200CBBE11757 7A615D6C 770988C0 BAD946E2 08E24FA0 74E5AB3143DB5BFC E0FD108E 4B82D120 A93AD2CA FFFFFFFF FFFFFFFF", 16, &v1);
  *&qword_100090160 = 0u;
  *algn_100090170 = 0u;
  qword_100090180 = 0;
  qword_100090158 = 0x10000000FLL;
  qword_100090160 = sub_10003D538(&v1);
  qword_100090168 = 2;
  free(v2);
  v1 = 0;
  v2 = 0;
  v2 = sub_10003B580("FFFFFFFF FFFFFFFF C90FDAA2 2168C234 C4C6628B 80DC1CD129024E08 8A67CC74 020BBEA6 3B139B22 514A0879 8E3404DDEF9519B3 CD3A431B 302B0A6D F25F1437 4FE1356D 6D51C245E485B576 625E7EC6 F44C42E9 A637ED6B 0BFF5CB6 F406B7EDEE386BFB 5A899FA5 AE9F2411 7C4B1FE6 49286651 ECE45B3DC2007CB8 A163BF05 98DA4836 1C55D39A 69163FA8 FD24CF5F83655D23 DCA3AD96 1C62F356 208552BB 9ED52907 7096966D670C354E 4ABC9804 F1746C08 CA18217C 32905E46 2E36CE3BE39E772C 180E8603 9B2783A2 EC07A28F B5C55DF0 6F4C52C9DE2BCBF6 95581718 3995497C EA956AE5 15D22618 98FA051015728E5A 8AAAC42D AD33170D 04507A33 A85521AB DF1CBA64ECFB8504 58DBEF0A 8AEA7157 5D060C7D B3970F85 A6E1E4C7ABF5AE8C DB0933D7 1E8C94E0 4A25619D CEE3D226 1AD2EE6BF12FFA06 D98A0864 D8760273 3EC86A64 521F2B18 177B200CBBE11757 7A615D6C 770988C0 BAD946E2 08E24FA0 74E5AB3143DB5BFC E0FD108E 4B82D120 A9210801 1A723C12 A787E6D788719A10 BDBA5B26 99C32718 6AF4E23C 1A946834 B6150BDA2583E9CA 2AD44CE8 DBBBC2DB 04DE8EF9 2E8EFC14 1FBECAA6287C5947 4E6BC05D 99B2964F A090C3A2 233BA186 515BE7ED1F612970 CEE2D7AF B81BDD76 2170481C D0069127 D5B05AA993B4EA98 8D8FDDC1 86FFB7DC 90A6C08F 4DF435C9 34063199FFFFFFFF FFFFFFFF", 16, &v1);
  *&qword_100090190 = 0u;
  unk_1000901A0 = 0u;
  qword_1000901B0 = 0;
  qword_100090188 = 0x100000010;
  qword_100090190 = sub_10003D538(&v1);
  qword_100090198 = 2;
  free(v2);
  v1 = 0;
  v2 = 0;
  v2 = sub_10003B580("FFFFFFFF FFFFFFFF C90FDAA2 2168C234 C4C6628B 80DC1CD129024E08 8A67CC74 020BBEA6 3B139B22 514A0879 8E3404DDEF9519B3 CD3A431B 302B0A6D F25F1437 4FE1356D 6D51C245E485B576 625E7EC6 F44C42E9 A637ED6B 0BFF5CB6 F406B7EDEE386BFB 5A899FA5 AE9F2411 7C4B1FE6 49286651 ECE45B3DC2007CB8 A163BF05 98DA4836 1C55D39A 69163FA8 FD24CF5F83655D23 DCA3AD96 1C62F356 208552BB 9ED52907 7096966D670C354E 4ABC9804 F1746C08 CA18217C 32905E46 2E36CE3BE39E772C 180E8603 9B2783A2 EC07A28F B5C55DF0 6F4C52C9DE2BCBF6 95581718 3995497C EA956AE5 15D22618 98FA051015728E5A 8AAAC42D AD33170D 04507A33 A85521AB DF1CBA64ECFB8504 58DBEF0A 8AEA7157 5D060C7D B3970F85 A6E1E4C7ABF5AE8C DB0933D7 1E8C94E0 4A25619D CEE3D226 1AD2EE6BF12FFA06 D98A0864 D8760273 3EC86A64 521F2B18 177B200CBBE11757 7A615D6C 770988C0 BAD946E2 08E24FA0 74E5AB3143DB5BFC E0FD108E 4B82D120 A9210801 1A723C12 A787E6D788719A10 BDBA5B26 99C32718 6AF4E23C 1A946834 B6150BDA2583E9CA 2AD44CE8 DBBBC2DB 04DE8EF9 2E8EFC14 1FBECAA6287C5947 4E6BC05D 99B2964F A090C3A2 233BA186 515BE7ED1F612970 CEE2D7AF B81BDD76 2170481C D0069127 D5B05AA993B4EA98 8D8FDDC1 86FFB7DC 90A6C08F 4DF435C9 3402849236C3FAB4 D27C7026 C1D4DCB2 602646DE C9751E76 3DBA37BDF8FF9406 AD9E530E E5DB382F 413001AE B06A53ED 9027D831179727B0 865A8918 DA3EDBEB CF9B14ED 44CE6CBA CED4BB1BDB7F1447 E6CC254B 33205151 2BD7AF42 6FB8F401 378CD2BF5983CA01 C64B92EC F032EA15 D1721D03 F482D7CE 6E74FEF6D55E702F 46980C82 B5A84031 900B1C9E 59E7C97F BEC7E8F323A97A7E 36CC88BE 0F1D45B7 FF585AC5 4BD407B2 2B4154AACC8F6D7E BF48E1D8 14CC5ED2 0F8037E0 A79715EE F29BE32806A1D58B B7C5DA76 F550AA3D 8A1FBFF0 EB19CCB1 A313D55CDA56C9EC 2EF29632 387FE8D7 6E3C0468 043E8F66 3F4860EE12BF2D5B 0B7474D6 E694F91E 6DCC4024 FFFFFFFF FFFFFFFF", 16, &v1);
  *&qword_1000901C0 = 0u;
  *algn_1000901D0 = 0u;
  qword_1000901E0 = 0;
  qword_1000901B8 = 0x100000011;
  qword_1000901C0 = sub_10003D538(&v1);
  qword_1000901C8 = 2;
  free(v2);
  v1 = 0;
  v2 = 0;
  v2 = sub_10003B580("FFFFFFFF FFFFFFFF C90FDAA2 2168C234 C4C6628B 80DC1CD129024E08 8A67CC74 020BBEA6 3B139B22 514A0879 8E3404DDEF9519B3 CD3A431B 302B0A6D F25F1437 4FE1356D 6D51C245E485B576 625E7EC6 F44C42E9 A637ED6B 0BFF5CB6 F406B7EDEE386BFB 5A899FA5 AE9F2411 7C4B1FE6 49286651 ECE45B3DC2007CB8 A163BF05 98DA4836 1C55D39A 69163FA8 FD24CF5F83655D23 DCA3AD96 1C62F356 208552BB 9ED52907 7096966D670C354E 4ABC9804 F1746C08 CA18217C 32905E46 2E36CE3BE39E772C 180E8603 9B2783A2 EC07A28F B5C55DF0 6F4C52C9DE2BCBF6 95581718 3995497C EA956AE5 15D22618 98FA051015728E5A 8AAAC42D AD33170D 04507A33 A85521AB DF1CBA64ECFB8504 58DBEF0A 8AEA7157 5D060C7D B3970F85 A6E1E4C7ABF5AE8C DB0933D7 1E8C94E0 4A25619D CEE3D226 1AD2EE6BF12FFA06 D98A0864 D8760273 3EC86A64 521F2B18 177B200CBBE11757 7A615D6C 770988C0 BAD946E2 08E24FA0 74E5AB3143DB5BFC E0FD108E 4B82D120 A9210801 1A723C12 A787E6D788719A10 BDBA5B26 99C32718 6AF4E23C 1A946834 B6150BDA2583E9CA 2AD44CE8 DBBBC2DB 04DE8EF9 2E8EFC14 1FBECAA6287C5947 4E6BC05D 99B2964F A090C3A2 233BA186 515BE7ED1F612970 CEE2D7AF B81BDD76 2170481C D0069127 D5B05AA993B4EA98 8D8FDDC1 86FFB7DC 90A6C08F 4DF435C9 3402849236C3FAB4 D27C7026 C1D4DCB2 602646DE C9751E76 3DBA37BDF8FF9406 AD9E530E E5DB382F 413001AE B06A53ED 9027D831179727B0 865A8918 DA3EDBEB CF9B14ED 44CE6CBA CED4BB1BDB7F1447 E6CC254B 33205151 2BD7AF42 6FB8F401 378CD2BF5983CA01 C64B92EC F032EA15 D1721D03 F482D7CE 6E74FEF6D55E702F 46980C82 B5A84031 900B1C9E 59E7C97F BEC7E8F323A97A7E 36CC88BE 0F1D45B7 FF585AC5 4BD407B2 2B4154AACC8F6D7E BF48E1D8 14CC5ED2 0F8037E0 A79715EE F29BE32806A1D58B B7C5DA76 F550AA3D 8A1FBFF0 EB19CCB1 A313D55CDA56C9EC 2EF29632 387FE8D7 6E3C0468 043E8F66 3F4860EE12BF2D5B 0B7474D6 E694F91E 6DBE1159 74A3926F 12FEE5E438777CB6 A932DF8C D8BEC4D0 73B931BA 3BC832B6 8D9DD300741FA7BF 8AFC47ED 2576F693 6BA42466 3AAB639C 5AE4F5683423B474 2BF1C978 238F16CB E39D652D E3FDB8BE FC848AD922222E04 A4037C07 13EB57A8 1A23F0C7 3473FC64 6CEA306B4BCBC886 2F8385DD FA9D4B7F A2C087E8 79683303 ED5BDD3A062B3CF5 B3A278A6 6D2A13F8 3F44F82D DF310EE0 74AB6A364597E899 A0255DC1 64F31CC5 0846851D F9AB4819 5DED7EA1B1D510BD 7EE74D73 FAF36BC3 1ECFA268 359046F4 EB879F924009438B 481C6CD7 889A002E D5EE382B C9190DA6 FC026E479558E447 5677E9AA 9E3050E2 765694DF C81F56E8 80B96E7160C980DD 98EDD3DF FFFFFFFF FFFFFFFF", 16, &v1);
  *&qword_100090220 = 0u;
  *algn_100090230 = 0u;
  qword_100090240 = 0;
  qword_100090218 = 0x100000012;
  qword_100090220 = sub_10003D538(&v1);
  qword_100090228 = 2;
  free(v2);
  return 0;
}

void sub_1000271B4(void *a1)
{
  v2 = a1[1];
  if (v2)
  {
    sub_10003D4F0(v2);
    a1[1] = 0;
  }

  v3 = a1[3];
  if (v3)
  {
    sub_10003D4F0(v3);
    a1[3] = 0;
  }

  v4 = a1[4];
  if (v4)
  {
    sub_10003D4F0(v4);
    a1[4] = 0;
  }

  v5 = a1[5];
  if (v5)
  {
    sub_10003D4F0(v5);
  }

  free(a1);
}

uint64_t sub_100027224(uint64_t a1, uint64_t *a2, void **a3, uint64_t *a4)
{
  if (dword_100090058)
  {
    v8 = ne_log_obj();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      sub_10005E6C8();
    }
  }

  if (*a2 != **(a1 + 8))
  {
    if (dword_100090058)
    {
      v18 = ne_log_obj();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        sub_10005E6FC(a2);
      }
    }

    goto LABEL_16;
  }

  v9 = *a4;
  v10 = SecDHGetMaxKeyLength();
  v11 = sub_10003D3A8(v10);
  if (!v11)
  {
    if (dword_100090058)
    {
      v19 = ne_log_obj();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        sub_10005E7DC();
      }
    }

LABEL_16:
    v12 = 0;
LABEL_17:
    if (*a4)
    {
      SecDHDestroy();
      *a4 = 0;
    }

    sub_10003D4F0(*a3);
    sub_10003D4F0(v12);
    return 0xFFFFFFFFLL;
  }

  v12 = v11;
  v13 = v11[1];
  __n = *v11;
  v14 = *a4;
  v16 = *a2;
  v15 = a2[1];
  if (SecDHComputeKey())
  {
    if (dword_100090058)
    {
      v17 = ne_log_obj();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        sub_10005E774();
      }
    }

    goto LABEL_17;
  }

  v21 = sub_10003D3A8(v10);
  *a3 = v21;
  if (!v21)
  {
    if (dword_100090058)
    {
      v23 = ne_log_obj();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        sub_10005E7DC();
      }
    }

    goto LABEL_17;
  }

  memcpy((v21[1] + v10 - __n), v12[1], __n);
  if (dword_100090058)
  {
    v22 = ne_log_obj();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      sub_10005E7A8();
    }
  }

  if (*a4)
  {
    SecDHDestroy();
    *a4 = 0;
  }

  sub_10003D4F0(v12);
  return 0;
}

uint64_t sub_100027424(uint64_t a1, size_t **a2, uint64_t *a3)
{
  if (dword_100090058)
  {
    v6 = ne_log_obj();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      sub_10005E810();
    }
  }

  *a2 = 0;
  v8 = (a1 + 4);
  v7 = *(a1 + 4);
  if ((v7 - 2) >= 2)
  {
    if (v7 != 1)
    {
      if (dword_100090058)
      {
        v14 = ne_log_obj();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          sub_10005E9F0(v8);
        }
      }

      goto LABEL_16;
    }

    v10 = *(a1 + 8);
    v12 = *v10;
    v11 = v10[1];
    if (SecDHCreate())
    {
      if (dword_100090058)
      {
        v13 = ne_log_obj();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          sub_10005E8B8();
        }
      }

      goto LABEL_16;
    }

    v17 = *a3;
    v18 = SecDHGetMaxKeyLength();
    v15 = sub_10003D3A8(v18);
    v19 = v15[1];
    __n = *v15;
    v20 = *a3;
    if (SecDHGenerateKeypair())
    {
      if (dword_100090058)
      {
        v21 = ne_log_obj();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          sub_10005E8EC();
        }
      }

      goto LABEL_17;
    }

    if (dword_100090058)
    {
      v22 = ne_log_obj();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
      {
        sub_10005E920();
      }
    }

    v23 = sub_10003D3A8(v18);
    *a2 = v23;
    if (!v23)
    {
      if (dword_100090058)
      {
        v28 = ne_log_obj();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          sub_10005E7DC();
        }
      }

      goto LABEL_17;
    }

    memcpy((v23[1] + v18 - __n), v15[1], __n);
    v24 = *(a1 + 8);
    v25 = *a2;
    v26 = **a2;
    if (*v24 != v26)
    {
      if (*v24 < v26)
      {
        if (!dword_100090058)
        {
          goto LABEL_17;
        }

        v27 = ne_log_obj();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          sub_10005E988();
        }

LABEL_42:
        if (dword_100090058)
        {
          v32 = ne_log_obj();
          if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
          {
            sub_10005E9BC();
          }
        }

        goto LABEL_17;
      }

      v29 = sub_10003D3A8(*v24);
      if (!v29)
      {
        if (!dword_100090058)
        {
          goto LABEL_17;
        }

        v31 = ne_log_obj();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
        {
          sub_10005E954();
        }

        goto LABEL_42;
      }

      v30 = v29;
      memcpy((v29[1] + *v24 - *v25), v25[1], *v25);
      sub_10003D4F0(*a2);
      *a2 = v30;
    }

    sub_10003D4F0(v15);
    return 0;
  }

  if (dword_100090058)
  {
    v9 = ne_log_obj();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_10005E844(v8);
    }
  }

LABEL_16:
  v15 = 0;
LABEL_17:
  if (*a3)
  {
    SecDHDestroy();
    *a3 = 0;
  }

  sub_10003D4F0(*a2);
  sub_10003D4F0(v15);
  return 0xFFFFFFFFLL;
}

uint64_t sub_100027728(int a1, uint64_t a2)
{
  *a2 = 0;
  v3 = sub_100001994(a1);
  if (!v3)
  {
    if (dword_100090058)
    {
      v11 = ne_log_obj();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_10005EAD4();
      }
    }

    return 0xFFFFFFFFLL;
  }

  v4 = v3;
  if (!*(v3 + 1) || !v3[1] || !*(v3 + 4))
  {
    if (dword_100090058)
    {
      v10 = ne_log_obj();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_10005EA64();
      }
    }

    return 0xFFFFFFFFLL;
  }

  v5 = malloc_type_calloc(1uLL, 0x30uLL, 0x10200409D20112CuLL);
  *a2 = v5;
  if (v5)
  {
    v6 = *v4;
    v7 = *(v4 + 2);
    v5[1] = *(v4 + 1);
    v5[2] = v7;
    *v5 = v6;
    v8 = sub_10003D538(v4[1]);
    result = 0;
    *(*a2 + 8) = v8;
    return result;
  }

  if (!dword_100090058)
  {
    return 0;
  }

  v12 = ne_log_obj();
  result = os_log_type_enabled(v12, OS_LOG_TYPE_ERROR);
  if (result)
  {
    sub_10005E954();
    return 0;
  }

  return result;
}

uint64_t sub_10002786C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 72);
  if (!v3 || *(a3 + 80) != 16 || (result = sub_1000013FC(*(v3 + 52), a1, a2)) == 0)
  {
    if (dword_100090058)
    {
      v5 = ne_log_obj();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        sub_10005EB44();
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_1000278F8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 72);
  if (v2 && *(a2 + 80) == 16)
  {
    v3 = *(v2 + 52);
  }

  else
  {
    v3 = 1;
  }

  v4 = sub_100001370(v3, a1);
  if (!v4)
  {
    if (dword_100090058)
    {
      v5 = ne_log_obj();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        sub_10005EBB4();
      }
    }
  }

  return v4;
}

uint64_t sub_10002798C(uint64_t a1, int a2)
{
  if (*(*(a1 + 128) + 20))
  {
    v4 = *(a1 + 176);
    if (v4)
    {
      if ((sub_100027224(*(a1 + 152), v4, (a1 + 184), (a1 + 144)) & 0x80000000) != 0)
      {
        return 0xFFFFFFFFLL;
      }
    }
  }

  if ((sub_100027A38(a1, a2, 1) & 0x80000000) != 0 || (sub_100027A38(a1, a2, 0) & 0x80000000) != 0)
  {
    return 0xFFFFFFFFLL;
  }

  if (dword_100090058)
  {
    v5 = ne_log_obj();
    result = os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG);
    if (!result)
    {
      return result;
    }

    sub_10005EC24();
  }

  return 0;
}

uint64_t sub_100027A38(uint64_t a1, int a2, int a3)
{
  if (*(*(a1 + 128) + 20) && (v6 = *(a1 + 184)) != 0)
  {
    v7 = *v6 + 5;
    v8 = 1;
  }

  else
  {
    v8 = 0;
    v7 = 5;
  }

  v9 = sub_10003D3A8(v7 + **(a1 + 208) + **(a1 + 216));
  if (!v9)
  {
    if (dword_100090058)
    {
      v39 = ne_log_obj();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        sub_10005EC58();
      }
    }

LABEL_72:
    v18 = 0;
    goto LABEL_73;
  }

  v10 = *(*(a1 + 128) + 32);
  if (!v10)
  {
    v38 = 0;
    v18 = 0;
LABEL_80:
    sub_10003D4F0(v9);
    goto LABEL_81;
  }

  if (a2)
  {
    v11 = 216;
  }

  else
  {
    v11 = 208;
  }

  if (a2)
  {
    v12 = 208;
  }

  else
  {
    v12 = 216;
  }

  if (a3 == 1)
  {
    v13 = 24;
  }

  else
  {
    v13 = 28;
  }

  v14 = 40;
  if (a3 == 1)
  {
    v14 = 32;
  }

  v47 = v14;
  v49 = v12;
  v50 = v11;
  v51 = v8;
  v48 = v13;
  while (2)
  {
    v15 = v9[1];
    if (v8)
    {
      memcpy(v9[1], *(*(a1 + 184) + 8), **(a1 + 184));
      v15 += **(a1 + 184);
    }

    *v15 = *v10;
    *(v15 + 1) = *(v10 + v13);
    v16 = (v15 + 5);
    v17 = *(a1 + v11);
    memcpy(v16, *(v17 + 8), *v17);
    memcpy(&v16[*v17], *(*(a1 + v12) + 8), **(a1 + v12));
    v18 = sub_10002786C(*(*(a1 + 256) + 200), v9, *(a1 + 256));
    if (v18)
    {
      if (*v10 == 2)
      {
        v24 = *(v10 + 64);
        if (v24)
        {
          v20 = 0;
          do
          {
            v25 = sub_100001800(*(v24 + 4));
            if (v25 > v20)
            {
              v20 = v25;
            }

            v24 = *(v24 + 16);
          }

          while (v24);
          v21 = 0;
          goto LABEL_39;
        }
      }

      else if (*v10 == 3)
      {
        v19 = *(v10 + 64);
        if (v19)
        {
          v20 = 0;
          v21 = 0;
          do
          {
            v22 = sub_100001730(*(v19 + 4), *(v19 + 8));
            if (v22 > v21)
            {
              v21 = v22;
            }

            v23 = sub_100001800(*(v19 + 12));
            if (v23 > v20)
            {
              v20 = v23;
            }

            v19 = *(v19 + 16);
          }

          while (v19);
          goto LABEL_39;
        }
      }

      v21 = 0;
      v20 = 0;
LABEL_39:
      if (dword_100090058)
      {
        v26 = ne_log_obj();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
        {
          *buf = 67109376;
          v53 = v21;
          v54 = 1024;
          v55 = v20;
          _os_log_debug_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEBUG, "encklen=%d authklen=%d\n", buf, 0xEu);
        }
      }

      v27 = *v18;
      v28 = sub_10003D3A8(*v18 + *v9);
      if (v28)
      {
        v29 = v28;
        v30 = ((v20 + v21) >> 3) / v27;
        if (v30 <= 1)
        {
          LODWORD(v30) = 1;
        }

        v31 = v18;
        do
        {
          v32 = v30;
          memcpy(*(v29 + 8), v31[1], *v31);
          memcpy(*v31 + *(v29 + 8), v9[1], *v9);
          v33 = sub_10002786C(*(*(a1 + 256) + 200), v29, *(a1 + 256));
          if (!v33)
          {
            if (dword_100090058)
            {
              v40 = ne_log_obj();
              if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
              {
                sub_10005EC8C();
              }
            }

            if (v31 != v18)
            {
              sub_10003D4F0(v31);
            }

            sub_10003D4F0(0);
            sub_10003D4F0(v29);
            goto LABEL_73;
          }

          v34 = v33;
          v35 = *v18;
          v36 = sub_10003D42C(v18, *v18 + *v33);
          if (v31 == v18)
          {
            v31 = v36;
          }

          if (!v36)
          {
            if (dword_100090058 && (v41 = ne_log_obj(), os_log_type_enabled(v41, OS_LOG_TYPE_ERROR)))
            {
              sub_10005EC58();
              if (v31)
              {
LABEL_70:
                sub_10003D4F0(v31);
              }
            }

            else if (v31)
            {
              goto LABEL_70;
            }

            sub_10003D4F0(v34);
            sub_10003D4F0(v29);
            goto LABEL_72;
          }

          v37 = v36;
          v18 = v36;
          memcpy(&v35[v36[1]], v34[1], *v34);
          if (v31 != v37)
          {
            sub_10003D4F0(v31);
          }

          LODWORD(v30) = v32 - 1;
          v31 = v34;
        }

        while (v32);
        if (v34 != v37)
        {
          sub_10003D4F0(v34);
        }

        sub_10003D4F0(v29);
        v38 = 0;
        v13 = v48;
        *(v10 + v47) = v18;
        v10 = *(v10 + 72);
        v18 = 0;
        v8 = v51;
        v12 = v49;
        v11 = v50;
        if (v10)
        {
          continue;
        }

        goto LABEL_80;
      }

      if (dword_100090058)
      {
        v46 = ne_log_obj();
        if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
        {
          sub_10005EC58();
        }
      }
    }

    break;
  }

LABEL_73:
  for (i = *(*(a1 + 128) + 32); i; i = i[9])
  {
    v43 = i[4];
    if (v43)
    {
      sub_10003D4F0(v43);
      i[4] = 0;
    }

    v44 = i[5];
    if (v44)
    {
      sub_10003D4F0(v44);
      i[5] = 0;
    }
  }

  v38 = 0xFFFFFFFFLL;
  if (v9)
  {
    goto LABEL_80;
  }

LABEL_81:
  if (v18)
  {
    sub_10003D4F0(v18);
  }

  return v38;
}

uint64_t sub_100027F1C(uint64_t a1, int a2, uint64_t a3)
{
  v6 = sub_10003D3A8(*a3 + 5);
  if (v6)
  {
    v7 = v6;
    *v6[1] = 0;
    *(v6[1] + 1) = a2;
    memcpy((v6[1] + 5), *(a3 + 8), *a3);
    v8 = sub_10002786C(*(a1 + 208), v7, a1);
    sub_10003D4F0(v7);
    return v8;
  }

  else
  {
    if (dword_100090058)
    {
      v10 = ne_log_obj();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *v11 = 0;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "failed to get hash buffer\n", v11, 2u);
      }
    }

    return 0;
  }
}

uint64_t sub_100028000(uint64_t a1, int a2, uint64_t a3)
{
  v6 = sub_10003D3A8(*a3 + 4);
  if (v6)
  {
    v7 = v6;
    v8 = v6[1];
    *v8 = a2;
    memcpy(v8 + 1, *(a3 + 8), *a3);
    v9 = sub_10002786C(*(a1 + 208), v7, a1);
    sub_10003D4F0(v7);
    return v9;
  }

  else
  {
    if (dword_100090058)
    {
      v11 = ne_log_obj();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *v12 = 0;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "failed to get hash buffer\n", v12, 2u);
      }
    }

    return 0;
  }
}

uint64_t sub_1000280D4(uint64_t a1, int a2)
{
  if (a2 == 1)
  {
    v4 = 312;
  }

  else
  {
    v4 = 320;
  }

  v5 = sub_10003D3A8(**(a1 + 152) + **(a1 + 160) + **(a1 + 336) + **(a1 + v4) + 16);
  if (v5)
  {
    v6 = v5;
    v7 = a2 == 1;
    v8 = a2 == 1;
    v9 = a2 != 1;
    v10 = v5[1];
    if (v7)
    {
      v11 = 152;
    }

    else
    {
      v11 = 160;
    }

    v12 = *(a1 + v11);
    if (v7)
    {
      v13 = 160;
    }

    else
    {
      v13 = 152;
    }

    memcpy(v5[1], *(v12 + 8), *v12);
    v14 = (v10 + *v12);
    v15 = *(a1 + v13);
    memcpy(v14, *(v15 + 8), *v15);
    v16 = &v14[*v15];
    if (*(a1 + 20))
    {
      v17 = 8 * v8;
    }

    else
    {
      v17 = 8 * v9;
    }

    *v16 = *(a1 + v17);
    if (*(a1 + 20))
    {
      v18 = 8 * v9;
    }

    else
    {
      v18 = 8 * v8;
    }

    *(v16 + 1) = *(a1 + v18);
    v19 = v16 + 16;
    v20 = *(a1 + 336);
    memcpy(v16 + 16, *(v20 + 8), *v20);
    memcpy(v19 + *v20, *(*(a1 + v4) + 8), **(a1 + v4));
    v21 = sub_10002786C(*(a1 + 192), v6, a1);
    sub_10003D4F0(v6);
    return v21;
  }

  else
  {
    if (dword_100090058)
    {
      v23 = ne_log_obj();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        sub_10005ECC0();
      }
    }

    return 0;
  }
}

uint64_t sub_10002825C(uint64_t a1, int a2)
{
  if (*(a1 + 81) != 1)
  {
    if (dword_100090058)
    {
      v8 = ne_log_obj();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_10005ECF4();
      }
    }

    return 0;
  }

  v4 = (a1 + 72);
  v5 = *(*(a1 + 72) + 48);
  if (*(*(a1 + 64) + 272))
  {
    v6 = v5 == 65001;
  }

  else
  {
    v6 = 0;
  }

  if (v6)
  {
    goto LABEL_21;
  }

  if (v5 <= 64220)
  {
    if ((v5 - 4) >= 2 && v5 != 1)
    {
      if (v5 != 3)
      {
LABEL_57:
        if (dword_100090058)
        {
          v31 = ne_log_obj();
          if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
          {
            sub_10005ED28(v4);
          }
        }

        return 0;
      }

      goto LABEL_45;
    }

    goto LABEL_21;
  }

  if ((v5 - 65002) <= 8)
  {
    v7 = 1 << (v5 + 22);
    if ((v7 & 0x1E1) == 0)
    {
      if ((v7 & 0x18) != 0)
      {
        goto LABEL_45;
      }

      goto LABEL_10;
    }

LABEL_21:
    v10 = *(a1 + 192);
    if (!v10)
    {
      if (dword_100090058)
      {
        v21 = ne_log_obj();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          sub_10005ED9C();
        }
      }

      return 0;
    }

    v11 = 0;
    goto LABEL_23;
  }

LABEL_10:
  if ((v5 - 64221) >= 2)
  {
    if (v5 != 65500)
    {
      goto LABEL_57;
    }

    goto LABEL_21;
  }

LABEL_45:
  v24 = sub_10003D3A8(**(a1 + 184) + **(a1 + 176));
  if (!v24)
  {
    if (dword_100090058)
    {
      v30 = ne_log_obj();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        sub_10005ECC0();
      }
    }

    return 0;
  }

  v15 = v24;
  v25 = v24[1];
  if (a2 == 1)
  {
    v26 = 184;
  }

  else
  {
    v26 = 176;
  }

  v27 = *(a1 + v26);
  if (a2 == 1)
  {
    v28 = 176;
  }

  else
  {
    v28 = 184;
  }

  memcpy(v24[1], *(v27 + 8), *v27);
  memcpy((v25 + *v27), *(*(a1 + v28) + 8), **(a1 + v28));
  v29 = sub_1000278F8(v15, a1);
  if (!v29)
  {
    v20 = 0;
    goto LABEL_33;
  }

  v11 = v29;
  sub_10003D4F0(v15);
  v10 = v11;
LABEL_23:
  if (a2 == 1)
  {
    v12 = 152;
  }

  else
  {
    v12 = 160;
  }

  if (a2 == 1)
  {
    v13 = 312;
  }

  else
  {
    v13 = 320;
  }

  v14 = sub_10003D3A8(**(a1 + v12) + **(a1 + 336) + **(a1 + v13) + 16);
  v15 = v14;
  if (v14)
  {
    v16 = v14[1];
    v17 = *(a1 + v12);
    memcpy(v16, *(v17 + 8), *v17);
    v18 = &v16[*v17];
    *v18 = *a1;
    *(v18 + 1) = *(a1 + 8);
    v19 = v18 + 16;
    memcpy(v18 + 16, *(*(a1 + 336) + 8), **(a1 + 336));
    memcpy(v19 + **(a1 + 336), *(*(a1 + v13) + 8), **(a1 + v13));
    v20 = sub_10002786C(v10, v15, a1);
    if (!v11)
    {
      goto LABEL_32;
    }

    goto LABEL_31;
  }

  if (dword_100090058)
  {
    v23 = ne_log_obj();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      sub_10005ECC0();
    }
  }

  v20 = 0;
  if (v11)
  {
LABEL_31:
    sub_10003D4F0(v11);
  }

LABEL_32:
  if (v15)
  {
LABEL_33:
    sub_10003D4F0(v15);
  }

  return v20;
}

uint64_t sub_1000285AC(uint64_t a1, int a2)
{
  if (*(a1 + 81) != 1)
  {
    if (dword_100090058)
    {
      v9 = ne_log_obj();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_10005ECF4();
      }
    }

    return 0;
  }

  v4 = (a1 + 72);
  v5 = *(*(a1 + 72) + 48);
  if (*(*(a1 + 64) + 272))
  {
    v6 = v5 == 65001;
  }

  else
  {
    v6 = 0;
  }

  if (!v6)
  {
    if (v5 > 65004)
    {
      if ((v5 - 65005) >= 2 && v5 != 65500)
      {
        goto LABEL_11;
      }
    }

    else if ((v5 - 64221) >= 2 && v5 != 3)
    {
LABEL_11:
      if (dword_100090058)
      {
        v8 = ne_log_obj();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          sub_10005ED28(v4);
        }
      }

      return 0;
    }
  }

  v11 = sub_10003D3A8(**(a1 + 184) + **(a1 + 176));
  if (!v11)
  {
    if (dword_100090058)
    {
      v30 = ne_log_obj();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        sub_10005ECC0();
      }
    }

    return 0;
  }

  v12 = v11;
  v13 = v11[1];
  if (a2 == 1)
  {
    v14 = 184;
  }

  else
  {
    v14 = 176;
  }

  v15 = *(a1 + v14);
  if (a2 == 1)
  {
    v16 = 176;
  }

  else
  {
    v16 = 184;
  }

  memcpy(v11[1], *(v15 + 8), *v15);
  memcpy((v13 + *v15), *(*(a1 + v16) + 8), **(a1 + v16));
  v17 = sub_1000278F8(v12, a1);
  sub_10003D4F0(v12);
  if (!v17)
  {
    return 0;
  }

  if (a2 == 1)
  {
    v18 = 160;
  }

  else
  {
    v18 = 152;
  }

  if (a2 == 1)
  {
    v19 = 152;
  }

  else
  {
    v19 = 160;
  }

  if (a2 == 1)
  {
    v20 = 320;
  }

  else
  {
    v20 = 312;
  }

  v21 = sub_10003D3A8(**(a1 + v18) + **(a1 + v19) + **(a1 + 336) + **(a1 + v20) + 16);
  if (v21)
  {
    v22 = v21;
    v23 = v21[1];
    v24 = *(a1 + v18);
    memcpy(v23, *(v24 + 8), *v24);
    v25 = &v23[*v24];
    v26 = *(a1 + v19);
    memcpy(v25, *(v26 + 8), *v26);
    v27 = &v25[*v26];
    *v27 = *a1;
    *(v27 + 1) = *(a1 + 8);
    v28 = v27 + 16;
    memcpy(v27 + 16, *(*(a1 + 336) + 8), **(a1 + 336));
    memcpy(v28 + **(a1 + 336), *(*(a1 + v20) + 8), **(a1 + v20));
    v29 = sub_10002786C(v17, v22, a1);
    sub_10003D4F0(v22);
  }

  else
  {
    if (dword_100090058)
    {
      v32 = ne_log_obj();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        sub_10005ECC0();
      }
    }

    v29 = 0;
  }

  sub_10003D4F0(v17);
  return v29;
}

uint64_t sub_100028894(uint64_t a1)
{
  cf = 0;
  v2 = (a1 + 64);
  v3 = *(*(a1 + 64) + 272);
  v4 = (a1 + 72);
  v5 = *(*(a1 + 72) + 48);
  v6 = 65001;
  if (v3)
  {
    v7 = v5 == 65001;
  }

  else
  {
    v7 = 0;
  }

  if (v7)
  {
    goto LABEL_26;
  }

  if (v5 > 65004)
  {
    if ((v5 - 65007) < 4)
    {
LABEL_12:
      if (*(a1 + 320) && *(a1 + 352))
      {
        if (dword_100090058)
        {
          v8 = ne_log_obj();
          if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
          {
            sub_10005EDD0(v4);
          }
        }

        return 0xFFFFFFFFLL;
      }

      if (!dword_100090058)
      {
        return 16;
      }

      v9 = ne_log_obj();
      v10 = 16;
      if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        return v10;
      }

      goto LABEL_19;
    }

    if ((v5 - 65005) < 2)
    {
      goto LABEL_51;
    }

    v11 = 65500;
LABEL_25:
    v6 = *(*(a1 + 72) + 48);
    if (v5 != v11)
    {
LABEL_72:
      if (dword_100090058)
      {
        v25 = ne_log_obj();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          sub_10005F290(v4);
        }
      }

      return 0xFFFFFFFFLL;
    }

    goto LABEL_26;
  }

  if (v5 > 64220)
  {
    if (v5 == 64221)
    {
      goto LABEL_51;
    }

    if (v5 == 64222)
    {
      if (**(a1 + 408))
      {
        if (dword_100090058)
        {
          v32 = ne_log_obj();
          if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(v62) = 0;
            _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "No SIG was passed, but hybrid auth is enabled\n", &v62, 2u);
          }
        }

        return 0;
      }

      if (!dword_100090058)
      {
        return 3;
      }

      v24 = ne_log_obj();
      if (!os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        return 3;
      }

LABEL_70:
      sub_10005EE50();
      return 3;
    }

    v11 = 65002;
    goto LABEL_25;
  }

  if ((v5 - 4) < 2)
  {
    goto LABEL_12;
  }

  v6 = *(*(a1 + 72) + 48);
  if (v5 == 1)
  {
LABEL_26:
    if (*(a1 + 320))
    {
      v12 = *(a1 + 352);
      if (v12)
      {
        v14 = v6 == 65001 && v3 != 0 || v6 == 65500;
        if (v14 && (**(a1 + 408) & 1) == 0)
        {
          if (!dword_100090058)
          {
            return 3;
          }

          v15 = ne_log_obj();
          if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            return 3;
          }

          goto LABEL_70;
        }

        if (*(a1 + 80) != 16)
        {
          return 0xFFFFFFFFLL;
        }

        v18 = (a1 + 81);
        v17 = *(a1 + 81);
        if (v17 == 1)
        {
          if (*(a1 + 20))
          {
            v28 = sub_10002825C(a1, 0);
LABEL_85:
            v29 = v28;
            if (!v28)
            {
              return 0xFFFFFFFFLL;
            }

            v30 = memcmp(*(v28 + 8), (v12 + 4), *v28);
            sub_10003D4F0(v29);
            if (!v30)
            {
              if (dword_100090058)
              {
                v33 = ne_log_obj();
                if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
                {
                  sub_10005F338();
                }
              }

              return 0;
            }

            if (dword_100090058)
            {
              v31 = ne_log_obj();
              if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
              {
                sub_10005F304();
              }
            }

            return 23;
          }
        }

        else if (v17 != 4 && v17 != 2)
        {
          if (dword_100090058)
          {
            v19 = ne_log_obj();
            if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
            {
              sub_10005F180(v18);
            }
          }

          return 7;
        }

        v28 = sub_1000280D4(a1, 0);
        goto LABEL_85;
      }
    }

    if (!dword_100090058)
    {
      return 16;
    }

    v16 = ne_log_obj();
    v10 = 16;
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      return v10;
    }

LABEL_19:
    sub_100058E54();
    return v10;
  }

  if (v5 != 3)
  {
    goto LABEL_72;
  }

LABEL_51:
  if (!*(a1 + 320))
  {
    if (dword_100090058)
    {
      v23 = ne_log_obj();
      v10 = 16;
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        sub_10005F25C();
      }

      return v10;
    }

    return 16;
  }

  if (!*(a1 + 272))
  {
    if (dword_100090058)
    {
      v26 = ne_log_obj();
      v10 = 16;
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        sub_10005F228();
      }

      return v10;
    }

    return 16;
  }

  if (dword_100090058)
  {
    v20 = ne_log_obj();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      sub_10005EE84();
    }
  }

  if (*(*v2 + 108) != 1)
  {
    if (dword_100090058)
    {
      v27 = ne_log_obj();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        sub_10005EEB8(v2);
      }
    }

    return 0xFFFFFFFFLL;
  }

  if (!*(a1 + 288))
  {
    if (dword_100090058)
    {
      v34 = ne_log_obj();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        sub_10005F1F4();
      }
    }

    return 0xFFFFFFFFLL;
  }

  if (!*(*v2 + 124))
  {
    goto LABEL_120;
  }

  v10 = sub_100029164(a1);
  if (v10)
  {
    return v10;
  }

  v21 = *v2;
  if (!*(*v2 + 124) || *(v21 + 108) != 1)
  {
LABEL_120:
    if (dword_100090058)
    {
      v47 = ne_log_obj();
      if (os_log_type_enabled(v47, OS_LOG_TYPE_DEBUG))
      {
        sub_10005F038();
      }
    }

    if (*(a1 + 80) != 16)
    {
      return 0xFFFFFFFFLL;
    }

    v48 = *(a1 + 81);
    if (v48 == 1)
    {
      if (*(a1 + 20))
      {
        v49 = sub_10002825C(a1, 0);
      }

      else
      {
        v49 = sub_1000285AC(a1, 0);
      }

LABEL_134:
      v51 = v49;
      if (v49)
      {
        if (*(*v4 + 48) == 64221)
        {
          v52 = **(a1 + 288);
        }

        else
        {
          v52 = *(*v2 + 104);
        }

        if (v52 != 4)
        {
          if (dword_100090058)
          {
            v57 = ne_log_obj();
            if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
            {
              sub_10005EF2C();
            }
          }

          sub_10003D4F0(v51);
          return 0xFFFFFFFFLL;
        }

        if (!cf)
        {
          if (dword_100090058)
          {
            v53 = ne_log_obj();
            if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
            {
              sub_10005F06C();
            }
          }
        }

        if (*(a1 + 80) == 16)
        {
          v54 = sub_100002E0C(cf, v51, *(a1 + 272), 0);
          if (v54)
          {
            if (dword_100090058)
            {
              v55 = ne_log_obj();
              if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
              {
                sub_10005F0A0(v54);
              }
            }
          }

          CFRelease(cf);
          sub_10003D4F0(v51);
          if (v54)
          {
            if (dword_100090058)
            {
              v56 = ne_log_obj();
              if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
              {
                sub_10005F14C();
              }
            }

            return 25;
          }
        }

        else
        {
          CFRelease(cf);
          sub_10003D4F0(v51);
        }

        if (dword_100090058)
        {
          v59 = ne_log_obj();
          if (os_log_type_enabled(v59, OS_LOG_TYPE_DEBUG))
          {
            sub_10005F118();
          }
        }

        return 0;
      }

      return 0xFFFFFFFFLL;
    }

    if (v48 == 4 || v48 == 2)
    {
      v49 = sub_1000280D4(a1, 0);
      goto LABEL_134;
    }

    if (dword_100090058)
    {
      v50 = ne_log_obj();
      if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
      {
        sub_10005F180((a1 + 81));
      }
    }

    return 7;
  }

  if (*(*v4 + 48) == 64221)
  {
    v22 = **(a1 + 288);
  }

  else
  {
    v22 = *(v21 + 104);
  }

  if (v22 != 4)
  {
    if (dword_100090058)
    {
      v43 = ne_log_obj();
      if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
      {
        sub_10005EF2C();
      }
    }

    return 0xFFFFFFFFLL;
  }

  v35 = 0;
  v62 = 0;
  if (*(v21 + 132) != 1)
  {
LABEL_113:
    v44 = sub_100029204(a1);
    v45 = sub_1000022C0(v44, *(a1 + 288), v35, &cf);
    if (v35)
    {
      CFRelease(v35);
    }

    if (v45)
    {
      if (dword_100090058)
      {
        v46 = ne_log_obj();
        if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
        {
          sub_10005EF9C();
        }
      }

      return 22;
    }

    goto LABEL_120;
  }

  v36 = sub_100004470(*(v21 + 56), &v62);
  v37 = *(v36 + 8);
  v38 = v37[1];
  if (*v36 != 4)
  {
    v42 = CFStringCreateWithBytes(0, v38, *v37, 0x8000100u, 0);
    goto LABEL_112;
  }

  v39 = *(v38 + 1);
  if (v39 == 30)
  {
    return 18;
  }

  if (v39 == 2)
  {
    v40.s_addr = *(v38 + 4);
    v41 = inet_ntoa(v40);
    v42 = CFStringCreateWithCString(0, v41, 0x8000100u);
LABEL_112:
    v35 = v42;
    if (v42)
    {
      goto LABEL_113;
    }

    if (dword_100090058)
    {
      v60 = ne_log_obj();
      if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
      {
        sub_10005EFD0();
      }
    }

    return 18;
  }

  if (dword_100090058)
  {
    v61 = ne_log_obj();
    if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
    {
      sub_10005F004();
    }
  }

  return 24;
}

uint64_t sub_100029164(uint64_t a1)
{
  v1 = *(a1 + 320);
  if (v1 && (v2 = *(a1 + 288)) != 0)
  {
    v3 = *(v1 + 8);
    v6 = *v3;
    v4 = (v3 + 4);
    v5 = v6;
    v7 = *v1 - 4;
    while (1)
    {
      result = sub_100029904(v2 + 8, v5, v7, v4, (v2 + 32));
      if (!result)
      {
        break;
      }

      v2 = *(v2 + 40);
      if (!v2)
      {
        return 18;
      }
    }
  }

  else
  {
    if (dword_100090058)
    {
      v9 = ne_log_obj();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_10005F36C();
      }
    }

    return 18;
  }

  return result;
}

uint64_t sub_100029204(uint64_t a1)
{
  v1 = *(a1 + 320);
  if (v1 && (v2 = *(a1 + 288)) != 0)
  {
    if (*(v2 + 40))
    {
      v3 = *(v1 + 8);
      v4 = *v1 - 4;
      do
      {
        if (!sub_100029904(v2 + 8, *v3, v4, (v3 + 4), (v2 + 32)))
        {
          break;
        }

        v2 = *(v2 + 40);
      }

      while (v2);
    }
  }

  else
  {
    if (dword_100090058)
    {
      v5 = ne_log_obj();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        sub_10005F36C();
      }
    }

    return 0;
  }

  return v2;
}

uint64_t sub_1000292AC(uint64_t result, int a2)
{
  if (result)
  {
    while (*(result + 32) != a2)
    {
      result = *(result + 40);
      if (!result)
      {
        return result;
      }
    }

    return 1;
  }

  return result;
}

uint64_t sub_1000292D0(uint64_t a1)
{
  v2 = (a1 + 64);
  v1 = *(a1 + 64);
  if (*(v1 + 104) != 4)
  {
    if (dword_100090058)
    {
      v5 = ne_log_obj();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        sub_10005F3A0(v2);
      }
    }

    return 0xFFFFFFFFLL;
  }

  if (*(a1 + 280))
  {
    return 0;
  }

  v26 = 0;
  if (!*(v1 + 64))
  {
    if (dword_100090058)
    {
      v14 = ne_log_obj();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        sub_10005F59C();
      }
    }

    goto LABEL_24;
  }

  v25 = 0;
  v6 = *(v1 + 72);
  if (!v6 || sub_1000296D8(v6, &v25))
  {
    return 0xFFFFFFFFLL;
  }

  v7 = v25;
  v8 = sub_100002FF0(v25, &v26);
  if (dword_100090058)
  {
    v9 = ne_log_obj();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      sub_10005F414(&v26);
    }
  }

  CFRelease(v7);
  if (!v8)
  {
    if (dword_100090058)
    {
      v20 = ne_log_obj();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        sub_10005F51C();
      }
    }

    return 0xFFFFFFFFLL;
  }

  v10 = sub_10002B3F4();
  *(a1 + 280) = v10;
  if (!v10)
  {
    if (dword_100090058)
    {
      v21 = ne_log_obj();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        sub_10005F4E8();
      }
    }

    goto LABEL_49;
  }

  *(*(a1 + 280) + 24) = sub_10003D3A8(*v8 + 1);
  v11 = *(*(a1 + 280) + 24);
  if (!v11)
  {
    if (dword_100090058)
    {
      v22 = ne_log_obj();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        sub_10005F4B4();
      }
    }

    v23 = *(a1 + 280);
    if (v23)
    {
      do
      {
        v24 = v23[5];
        sub_10002B474(v23);
        v23 = v24;
      }

      while (v24);
      *(a1 + 280) = 0;
    }

LABEL_49:
    sub_10003D4F0(v8);
    return 0xFFFFFFFFLL;
  }

  memcpy((*(v11 + 8) + 1), v8[1], *v8);
  **(*(*(a1 + 280) + 24) + 8) = *(*(a1 + 64) + 104);
  v12 = *(a1 + 280);
  *v12 = *(*(a1 + 64) + 104);
  *(v12 + 32) = v26;
  *(v12 + 16) = *(*(v12 + 24) + 8) + 1;
  *(*(a1 + 280) + 8) = **(*(a1 + 280) + 24) - 1;
  if (dword_100090058)
  {
    v13 = ne_log_obj();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      sub_10005F480();
    }
  }

  sub_10003D4F0(v8);
LABEL_24:
  v15 = *(a1 + 280);
  if (!v15)
  {
    return 0;
  }

  v16 = *(a1 + 280);
  do
  {
    v17 = *(v16 + 32);
    if (v17 == 1)
    {
      break;
    }

    v16 = *(v16 + 40);
  }

  while (v16);
  do
  {
    if (*(v15 + 32) == 2)
    {
      if (v17 == 1)
      {
        v18 = -15532;
      }

      else
      {
        v18 = -15531;
      }

      goto LABEL_36;
    }

    v15 = *(v15 + 40);
  }

  while (v15);
  if (v17 != 1)
  {
    return 0;
  }

  v18 = -15532;
LABEL_36:
  v19 = sub_100008158(a1);
  sub_100046C2C(v18, 0, v19, 0, 0);
  return 0xFFFFFFFFLL;
}

uint64_t sub_1000295E8(void *a1)
{
  v2 = a1 + 8;
  v1 = a1[8];
  if (*(v1 + 104) == 4 && *(v1 + 64))
  {
    v9 = 0;
    v4 = *(v1 + 72);
    if (v4 && !sub_1000296D8(v4, &v9))
    {
      v5 = v9;
      a1[33] = sub_100002E2C(v9, a1[32]);
      CFRelease(v5);
      if (a1[33])
      {
        return 0;
      }

      if (dword_100090058)
      {
        v8 = ne_log_obj();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          sub_10005F5D0();
        }
      }
    }
  }

  else if (dword_100090058)
  {
    v7 = ne_log_obj();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_10005F3A0(v2);
    }
  }

  return 0xFFFFFFFFLL;
}

uint64_t sub_1000296D8(uint64_t *a1, CFDataRef *a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = malloc_type_malloc(*a1, 0x6E6CC528uLL);
  if (v5)
  {
    v6 = v5;
    if (v4 < 1)
    {
      v16 = 0;
    }

    else
    {
      v7 = 0;
      v8 = 0;
      v9 = 0;
      v10 = 0;
      do
      {
        v12 = *v3++;
        v11 = v12;
        if (v12 == 61)
        {
          ++v9;
        }

        else
        {
          if ((v11 & 0x80) != 0)
          {
            v13 = __maskrune(v11, 0x4000uLL);
          }

          else
          {
            v13 = _DefaultRuneLocale.__runetype[v11] & 0x4000;
          }

          if (!v13)
          {
            v9 = 0;
          }
        }

        v14 = byte_10006CD20[v11];
        if ((v14 & 0x80000000) == 0)
        {
          ++v7;
          v8 = v14 + (v8 << 6);
          if ((v7 & 3) == 0)
          {
            v6[v10] = BYTE2(v8);
            if (v9 > 1)
            {
              ++v10;
            }

            else
            {
              v15 = v10 + 2;
              v6[v10 + 1] = BYTE1(v8);
              if (v9 == 1)
              {
                v10 += 2;
              }

              else
              {
                v10 += 3;
                v6[v15] = v8;
              }
            }
          }
        }

        LODWORD(v4) = v4 - 1;
      }

      while (v4);
      v16 = v10;
    }

    *a2 = CFDataCreate(0, v6, v16);
    free(v6);
    if (*a2)
    {
      return 0;
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  else
  {
    sub_100053E7C();
    return 0xFFFFFFFFLL;
  }
}

void *sub_100029850(void *result)
{
  if (*(result[8] + 124))
  {
    v1 = result;
    result = sub_100029164(result);
    if (result)
    {
      if (dword_100090058)
      {
        v2 = ne_log_obj();
        if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
        {
          sub_10005F604();
        }
      }

      result = v1[36];
      if (result)
      {
        do
        {
          v3 = result[5];
          sub_10002B474(result);
          result = v3;
        }

        while (v3);
      }

      v1[36] = 0;
    }
  }

  return result;
}

void *sub_1000298D0(void *result)
{
  if (result)
  {
    do
    {
      v1 = result[5];
      sub_10002B474(result);
      result = v1;
    }

    while (v1);
  }

  return result;
}

uint64_t sub_100029904(uint64_t a1, int a2, int a3, uint64_t a4, _DWORD *a5)
{
  LODWORD(v7) = a3;
  if (a2 <= 2)
  {
    if (a2 == 1)
    {
      goto LABEL_28;
    }

    if (a2 != 2)
    {
LABEL_96:
      if (dword_100090058)
      {
        v70 = ne_log_obj();
        if (os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
        {
          sub_10005F9C4(a2);
        }
      }

      return 18;
    }

    v21 = sub_100001E08(a1);
    if (!v21)
    {
      if (dword_100090058)
      {
        v76 = ne_log_obj();
        if (os_log_type_enabled(v76, OS_LOG_TYPE_ERROR))
        {
          sub_10005F750();
          if (!a5)
          {
            return 20;
          }

          goto LABEL_119;
        }
      }

      goto LABEL_118;
    }

    v16 = v21;
    v22 = SecCertificateCopyDNSNames();
    if (!v22)
    {
      if (dword_100090058)
      {
        v79 = ne_log_obj();
        if (os_log_type_enabled(v79, OS_LOG_TYPE_ERROR))
        {
          sub_10005F71C();
          if (!a5)
          {
            goto LABEL_147;
          }

          goto LABEL_133;
        }
      }

LABEL_132:
      if (a5)
      {
        goto LABEL_133;
      }

LABEL_147:
      CFRelease(v16);
      return 20;
    }

    v10 = v22;
    Count = CFArrayGetCount(v22);
    v7 = v7;
    v24 = CFStringCreateWithBytes(kCFAllocatorDefault, a4, v7, 0x8000100u, 0);
    if (!v24)
    {
      if (dword_100090058)
      {
        v83 = ne_log_obj();
        if (os_log_type_enabled(v83, OS_LOG_TYPE_ERROR))
        {
          sub_10005F6E8();
        }
      }

      goto LABEL_156;
    }

    v29 = v24;
    if (Count >= 1)
    {
      v30 = 0;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v10, v30);
        if (CFStringCompare(ValueAtIndex, v29, 0) == kCFCompareEqualTo)
        {
          goto LABEL_140;
        }
      }

      while (Count != ++v30);
    }

    if (dword_100090058)
    {
      v32 = ne_log_obj();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        sub_10005F638();
      }

      if (dword_100090058)
      {
        v33 = ne_log_obj();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
        {
          sub_10005F784();
        }
      }
    }

LABEL_90:
    if (dword_10008C2C8 >= 3)
    {
      sub_1000314C0(3, a4, v7, "ID:\n", v25, v26, v27, v28, v92);
    }

    CFRelease(v29);
    goto LABEL_93;
  }

  if (a2 == 3)
  {
    v62 = sub_100001E08(a1);
    if (!v62)
    {
      if (dword_100090058)
      {
        v74 = ne_log_obj();
        if (os_log_type_enabled(v74, OS_LOG_TYPE_ERROR))
        {
          sub_10005F750();
          if (a5)
          {
            goto LABEL_119;
          }

          return 20;
        }
      }

LABEL_118:
      if (a5)
      {
        goto LABEL_119;
      }

      return 20;
    }

    v16 = v62;
    v63 = SecCertificateCopyRFC822Names();
    if (!v63)
    {
      if (dword_100090058)
      {
        v77 = ne_log_obj();
        if (os_log_type_enabled(v77, OS_LOG_TYPE_ERROR))
        {
          sub_10005F71C();
          if (!a5)
          {
            goto LABEL_147;
          }

          goto LABEL_133;
        }
      }

      goto LABEL_132;
    }

    v10 = v63;
    v64 = CFArrayGetCount(v63);
    v7 = v7;
    v65 = CFStringCreateWithBytes(kCFAllocatorDefault, a4, v7, 0x8000100u, 0);
    if (v65)
    {
      v29 = v65;
      if (v64 >= 1)
      {
        v66 = 0;
        while (1)
        {
          v67 = CFArrayGetValueAtIndex(v10, v66);
          if (CFStringCompare(v67, v29, 0) == kCFCompareEqualTo)
          {
            break;
          }

          if (v64 == ++v66)
          {
            goto LABEL_84;
          }
        }

LABEL_140:
        CFRelease(v29);
        goto LABEL_156;
      }

LABEL_84:
      if (dword_100090058)
      {
        v68 = ne_log_obj();
        if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
        {
          sub_10005F638();
        }

        if (dword_100090058)
        {
          v69 = ne_log_obj();
          if (os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
          {
            sub_10005F66C();
          }
        }
      }

      goto LABEL_90;
    }

    if (dword_100090058 && (v81 = ne_log_obj(), os_log_type_enabled(v81, OS_LOG_TYPE_ERROR)))
    {
      sub_10005F6E8();
      if (a5)
      {
LABEL_144:
        if (!*a5)
        {
          *a5 = 5;
        }
      }
    }

    else if (a5)
    {
      goto LABEL_144;
    }

    CFRelease(v10);
    goto LABEL_147;
  }

  if (a2 != 5)
  {
    if (a2 == 9)
    {
      v9 = sub_100001E08(a1);
      if (v9)
      {
        v10 = v9;
        v11 = j__SecCertificateCopySubjectSequence();
        v16 = v11;
        if (v11)
        {
          Length = CFDataGetLength(v11);
          BytePtr = CFDataGetBytePtr(v16);
          if (!BytePtr)
          {
            if (!dword_100090058)
            {
              goto LABEL_168;
            }

            v82 = ne_log_obj();
            if (os_log_type_enabled(v82, OS_LOG_TYPE_ERROR))
            {
              sub_10005F8E0();
            }

            v19 = 0;
            goto LABEL_158;
          }

          v19 = BytePtr;
          if (Length != v7 || memcmp(a4, BytePtr, v7))
          {
            if (!dword_100090058)
            {
LABEL_161:
              if (dword_10008C2C8 < 3)
              {
                goto LABEL_170;
              }

              v85 = sub_10003C390(9);
              sub_1000314C0(3, v19, Length, "subjectName (type %s):\n", v86, v87, v88, v89, v85);
LABEL_168:
              if (dword_10008C2C8 >= 3)
              {
                sub_1000314C0(3, a4, v7, "ID:\n", v12, v13, v14, v15, v92);
              }

LABEL_170:
              if (a5 && !*a5)
              {
                *a5 = 3;
              }

              CFRelease(v10);
              if (!v16)
              {
                return 0;
              }

              goto LABEL_174;
            }

            v20 = ne_log_obj();
            if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
            {
              sub_10005F8AC();
            }

LABEL_158:
            if (dword_100090058 && (v84 = ne_log_obj(), os_log_type_enabled(v84, OS_LOG_TYPE_ERROR)))
            {
              sub_10005F8AC();
              if (v19)
              {
                goto LABEL_161;
              }
            }

            else if (v19)
            {
              goto LABEL_161;
            }

            if (dword_100090058)
            {
              v90 = ne_log_obj();
              if (os_log_type_enabled(v90, OS_LOG_TYPE_ERROR))
              {
                sub_10005F948();
              }
            }

            goto LABEL_168;
          }

LABEL_156:
          CFRelease(v10);
LABEL_174:
          CFRelease(v16);
          return 0;
        }

        if (dword_100090058 && (v78 = ne_log_obj(), os_log_type_enabled(v78, OS_LOG_TYPE_ERROR)))
        {
          sub_10005F914();
          if (a5)
          {
LABEL_128:
            if (!*a5)
            {
              v19 = 0;
              Length = 0;
              *a5 = 3;
              goto LABEL_158;
            }
          }
        }

        else if (a5)
        {
          goto LABEL_128;
        }

        v19 = 0;
        Length = 0;
        goto LABEL_158;
      }

      if (dword_100090058)
      {
        v75 = ne_log_obj();
        if (os_log_type_enabled(v75, OS_LOG_TYPE_ERROR))
        {
          sub_10005F750();
          if (!a5)
          {
            return 20;
          }

LABEL_119:
          if (!*a5)
          {
            *a5 = 5;
          }

          return 20;
        }
      }

      goto LABEL_118;
    }

    goto LABEL_96;
  }

LABEL_28:
  v34 = sub_100001E08(a1);
  if (!v34)
  {
    if (dword_100090058)
    {
      v72 = ne_log_obj();
      if (os_log_type_enabled(v72, OS_LOG_TYPE_ERROR))
      {
        sub_10005F750();
        if (a5)
        {
          goto LABEL_119;
        }

        return 20;
      }
    }

    goto LABEL_118;
  }

  v16 = v34;
  v35 = SecCertificateCopyIPAddresses();
  if (!v35)
  {
    if (dword_100090058)
    {
      v73 = ne_log_obj();
      if (os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
      {
        sub_10005F71C();
        if (!a5)
        {
          goto LABEL_147;
        }

LABEL_133:
        if (!*a5)
        {
          *a5 = 4;
        }

        goto LABEL_147;
      }
    }

    goto LABEL_132;
  }

  v10 = v35;
  v36 = CFArrayGetCount(v35);
  if (v36 < 1)
  {
LABEL_69:
    if (dword_100090058)
    {
      v60 = ne_log_obj();
      if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
      {
        sub_10005F638();
      }

      if (dword_100090058)
      {
        v61 = ne_log_obj();
        if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
        {
          sub_10005F834(a2);
        }
      }
    }

    if (dword_10008C2C8 >= 3)
    {
      sub_1000314C0(3, a4, v7, "ID:\n", v37, v38, v39, v40, v92);
    }

LABEL_93:
    CFRelease(v10);
    CFRelease(v16);
    if (a5 && !*a5)
    {
      *a5 = 4;
    }

    return 18;
  }

  v41 = v36;
  v42 = 0;
  v44 = a2 == 1 && v7 > 3;
  v45 = a2 == 5 && v7 >= 0x10;
  v46 = !v45;
  v93 = v44;
  v94 = v46;
  while (1)
  {
    memset(v95, 0, sizeof(v95));
    v96 = 0;
    v47 = CFArrayGetValueAtIndex(v10, v42);
    if (!CFStringGetLength(v47))
    {
      goto LABEL_68;
    }

    v48 = malloc_type_malloc(0x40uLL, 0x2B87C48CuLL);
    if (!v48)
    {
      break;
    }

    v49 = v48;
    if (CFStringGetCString(v47, v48, 64, 0x8000100u) != 1)
    {
      goto LABEL_55;
    }

    if (a2 == 1)
    {
      v50 = inet_pton(2, v49, v95);
      free(v49);
      if (!v50)
      {
        goto LABEL_68;
      }

      if (v93)
      {
        v51 = bswap32(*a4);
        v52 = bswap32(*v95);
        v45 = v51 >= v52;
        v53 = v51 > v52;
        v54 = !v45;
        v55 = v53 - v54;
        goto LABEL_67;
      }

      if (v94)
      {
        goto LABEL_68;
      }
    }

    else
    {
      if (a2 != 5)
      {
LABEL_55:
        free(v49);
        goto LABEL_68;
      }

      v56 = inet_pton(30, v49, &v95[4]);
      free(v49);
      v57 = v94;
      if (!v56)
      {
        v57 = 1;
      }

      if (v57)
      {
        goto LABEL_68;
      }
    }

    v58 = bswap64(*a4);
    v59 = bswap64(*v95);
    if (v58 == v59 && (v58 = bswap64(*(a4 + 8)), v59 = bswap64(*&v95[8]), v58 == v59))
    {
      v55 = 0;
    }

    else if (v58 < v59)
    {
      v55 = -1;
    }

    else
    {
      v55 = 1;
    }

LABEL_67:
    if (!v55)
    {
      v71 = 0;
      goto LABEL_139;
    }

LABEL_68:
    if (v41 == ++v42)
    {
      goto LABEL_69;
    }
  }

  if (dword_100090058)
  {
    v80 = ne_log_obj();
    if (os_log_type_enabled(v80, OS_LOG_TYPE_ERROR))
    {
      sub_10005F800();
    }
  }

  v71 = 0xFFFFFFFFLL;
LABEL_139:
  CFRelease(v10);
  CFRelease(v16);
  return v71;
}

uint64_t sub_10002A284(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 4) != 4)
  {
    if (dword_100090058)
    {
      v11 = ne_log_obj();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_10005FA3C();
      }
    }

    return 0xFFFFFFFFLL;
  }

  if (*(a1 + 288))
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
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "preexisting CERT payload... chaining.\n", v14, 2u);
    }
  }

  result = sub_10002A3FC(a2);
  if (!result)
  {
    if (dword_100090058)
    {
      v12 = ne_log_obj();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_10005FAE0();
      }
    }

    return 0xFFFFFFFFLL;
  }

  if (*result == 4)
  {
    v7 = *(a1 + 288);
    if (v7)
    {
      v8 = *(a1 + 288);
      do
      {
        v9 = v8;
        v8 = *(v8 + 40);
      }

      while (v8);
      *(v9 + 40) = result;
    }

    else
    {
      v7 = result;
    }

    *(a1 + 288) = v7;
    if (!dword_100090058)
    {
      return 0;
    }

    v13 = ne_log_obj();
    result = os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG);
    if (result)
    {
      sub_10005FAAC();
      return 0;
    }
  }

  else
  {
    do
    {
      v10 = *(result + 40);
      sub_10002B474(result);
      result = v10;
    }

    while (v10);
  }

  return result;
}

void *sub_10002A3FC(uint64_t a1)
{
  if (bswap32(*(a1 + 2)) >> 16 <= 4)
  {
    if (dword_100090058)
    {
      v1 = ne_log_obj();
      if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
      {
        sub_10005FB48();
      }
    }

    return 0;
  }

  v3 = sub_10002B3F4();
  if (!v3)
  {
    if (dword_100090058)
    {
      v8 = ne_log_obj();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_10005FAE0();
      }
    }

    return 0;
  }

  v4 = v3;
  v5 = sub_10003D3A8((bswap32(*(a1 + 2)) >> 16) - 4);
  v4[3] = v5;
  if (v5)
  {
    memcpy(v5[1], (a1 + 4), *v5);
    v6 = *v4[3];
    v7 = *(v4[3] + 8);
    *v4 = *v7;
    v4[1] = v6 - 1;
    v4[2] = v7 + 1;
  }

  else
  {
    if (dword_100090058)
    {
      v10 = ne_log_obj();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_10005FB14();
      }
    }

    do
    {
      v11 = v4[5];
      sub_10002B474(v4);
      v4 = v11;
    }

    while (v11);
  }

  return v4;
}

uint64_t sub_10002A534(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 4) != 4)
  {
    if (dword_100090058)
    {
      v10 = ne_log_obj();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_10005FB7C();
      }
    }

    return 0xFFFFFFFFLL;
  }

  v4 = *(a1 + 304);
  if (v4)
  {
    do
    {
      v5 = v4[5];
      sub_10002B474(v4);
      v4 = v5;
    }

    while (v5);
    *(a1 + 304) = 0;
  }

  v6 = sub_10002A3FC(a2);
  if (!v6)
  {
    if (dword_100090058)
    {
      v11 = ne_log_obj();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_10005FC20();
      }
    }

    return 0xFFFFFFFFLL;
  }

  v7 = *(a1 + 304);
  if (v7)
  {
    v8 = *(a1 + 304);
    do
    {
      v9 = v8;
      v8 = *(v8 + 40);
    }

    while (v8);
    *(v9 + 40) = v6;
  }

  else
  {
    v7 = v6;
  }

  *(a1 + 304) = v7;
  if (dword_100090058)
  {
    v13 = ne_log_obj();
    result = os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG);
    if (!result)
    {
      return result;
    }

    sub_10005FBEC();
  }

  return 0;
}

void *sub_10002A658(uint64_t a1)
{
  v2 = sub_10003D3A8(1uLL);
  v3 = v2;
  if (v2)
  {
    v6 = *(a1 + 64);
    v5 = a1 + 64;
    v4 = v6;
    v7 = *(v6 + 104);
    if (v7)
    {
      *v2[1] = v7;
      if (dword_100090058)
      {
        v8 = ne_log_obj();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
        {
          sub_10005FC54(v5);
        }
      }
    }

    else
    {
      *v2[1] = *(v4 + 112);
      if (dword_100090058)
      {
        v10 = ne_log_obj();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
        {
          sub_10005FCD4(v5);
        }
      }
    }
  }

  else if (dword_100090058)
  {
    v9 = ne_log_obj();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_10005FD54();
    }
  }

  return v3;
}

uint64_t sub_10002A74C(uint64_t a1)
{
  v1 = *(a1 + 304);
  if (!v1)
  {
    return 0;
  }

  if (dword_100090058)
  {
    v3 = ne_log_obj();
    v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG);
    v1 = *(a1 + 304);
    if (v4)
    {
      v7 = sub_10003BB9C(*v1);
      v8 = 136315138;
      v9 = v7;
      _os_log_debug_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "peer transmitted CR: %s\n", &v8, 0xCu);
      v1 = *(a1 + 304);
    }
  }

  if (*(*(a1 + 64) + 104) == *v1)
  {
    return 0;
  }

  if (dword_100090058)
  {
    v6 = ne_log_obj();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_10005FD88((a1 + 304));
    }
  }

  return 0xFFFFFFFFLL;
}

size_t *sub_10002A88C(uint64_t a1)
{
  v2 = *(a1 + 64);
  v3 = *(v2 + 88);
  if (!v3)
  {
    if (*(a1 + 81) != 2)
    {
      v4 = sub_100025C88(*(a1 + 320));
      if (v4)
      {
        return v4;
      }

      if (*(*(a1 + 64) + 136))
      {
        if (dword_100090058)
        {
          v12 = ne_log_obj();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
          {
            sub_10005FDFC();
          }
        }

        return 0;
      }
    }

LABEL_6:
    if (dword_100090058)
    {
      v5 = ne_log_obj();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *v14 = 0;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "try to get pskey by the peer's address.\n", v14, 2u);
      }
    }

    v7 = *(a1 + 48);
    v6 = (a1 + 48);
    v8 = sub_100026044(v7);
    if (!v8 && dword_100090058)
    {
      v9 = ne_log_obj();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_10005FE30(v6);
      }

      return 0;
    }

    return v8;
  }

  if (*(v2 + 80) == 1)
  {
    v4 = sub_100025D6C(*(v3 + 8), *v3 - 1);
    if (!v4)
    {
      goto LABEL_6;
    }

    return v4;
  }

  v10 = sub_10003D3A8(*v3 - 1);
  if (!v10)
  {
    if (dword_100090058)
    {
      v11 = ne_log_obj();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_10005E7DC();
      }
    }

    return 0;
  }

  v8 = v10;
  memcpy(v10[1], *(*(*(a1 + 64) + 88) + 8), *v10);
  return v8;
}

uint64_t sub_10002AA38(uint64_t a1)
{
  v2 = (a1 + 72);
  v3 = *(*(a1 + 72) + 48);
  if (*(*(a1 + 64) + 272))
  {
    v4 = v3 == 65001;
  }

  else
  {
    v4 = 0;
  }

  if (v4)
  {
    goto LABEL_31;
  }

  if (v3 > 65004)
  {
    if ((v3 - 65007) < 4)
    {
      goto LABEL_12;
    }

    if ((v3 - 65005) < 2)
    {
      goto LABEL_18;
    }

    v7 = 65500;
LABEL_30:
    if (v3 != v7)
    {
LABEL_58:
      if (dword_100090058)
      {
        v32 = ne_log_obj();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
        {
          sub_10005FEE0(v2);
        }
      }

      return 0xFFFFFFFFLL;
    }

    goto LABEL_31;
  }

  if (v3 <= 64220)
  {
    if ((v3 - 4) >= 2)
    {
      if (v3 != 1)
      {
        if (v3 != 3)
        {
          goto LABEL_58;
        }

        goto LABEL_18;
      }

LABEL_31:
      v16 = sub_10002A88C(a1);
      if (!v16)
      {
        if (dword_100090058)
        {
          v29 = ne_log_obj();
          if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
          {
            sub_10005FFBC(a1);
          }
        }

        return 0xFFFFFFFFLL;
      }

      v21 = v16;
      if (dword_100090058)
      {
        v22 = ne_log_obj();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
        {
          sub_10005FF54();
        }
      }

      if (dword_10008C2C8 >= 7)
      {
        sub_1000314C0(7, *(v21 + 8), *v21, "psk: ", v17, v18, v19, v20, v33);
      }

      v23 = sub_10003D3A8(**(a1 + 184) + **(a1 + 176));
      if (!v23)
      {
        if (dword_100090058)
        {
          v30 = ne_log_obj();
          if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
          {
            sub_10005FF88();
          }
        }

        sub_10003D4F0(v21);
        return 0xFFFFFFFFLL;
      }

      v9 = v23;
      v24 = v23[1];
      if (*(a1 + 20))
      {
        v25 = 184;
      }

      else
      {
        v25 = 176;
      }

      v26 = *(a1 + v25);
      memcpy(v23[1], *(v26 + 8), *v26);
      if (*(a1 + 20))
      {
        v27 = 176;
      }

      else
      {
        v27 = 184;
      }

      memcpy((v24 + *v26), *(*(a1 + v27) + 8), **(a1 + v27));
      v14 = sub_10002786C(v21, v9, a1);
      *(a1 + 192) = v14;
      sub_10003D4F0(v21);
      goto LABEL_45;
    }

LABEL_12:
    if (dword_100090058)
    {
      v5 = ne_log_obj();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v6 = sub_10003C560(*(*v2 + 48));
        v33 = 136315138;
        v34 = v6;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "not supported authentication method %s\n", &v33, 0xCu);
      }
    }

    return 0xFFFFFFFFLL;
  }

  if ((v3 - 64221) >= 2)
  {
    v7 = 65002;
    goto LABEL_30;
  }

LABEL_18:
  v8 = sub_10003D3A8(**(a1 + 184) + **(a1 + 176));
  if (!v8)
  {
    if (dword_100090058)
    {
      v15 = ne_log_obj();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        sub_10005FEAC();
      }
    }

    return 0xFFFFFFFFLL;
  }

  v9 = v8;
  v10 = v8[1];
  if (*(a1 + 20))
  {
    v11 = 184;
  }

  else
  {
    v11 = 176;
  }

  v12 = *(a1 + v11);
  memcpy(v8[1], *(v12 + 8), *v12);
  if (*(a1 + 20))
  {
    v13 = 176;
  }

  else
  {
    v13 = 184;
  }

  memcpy((v10 + *v12), *(*(a1 + v13) + 8), **(a1 + v13));
  v14 = sub_10002786C(v9, *(a1 + 168), a1);
  *(a1 + 192) = v14;
LABEL_45:
  if (v14)
  {
    v28 = 0;
  }

  else
  {
    v28 = 0xFFFFFFFFLL;
  }

  sub_10003D4F0(v9);
  return v28;
}

uint64_t sub_10002ADF8(uint64_t a1)
{
  if (!*(a1 + 192))
  {
    if (dword_100090058)
    {
      v18 = ne_log_obj();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        sub_10005ED9C();
      }
    }

    return 0xFFFFFFFFLL;
  }

  v2 = sub_10003D3A8(**(a1 + 168) + 17);
  if (!v2)
  {
    if (!dword_100090058)
    {
      return 0xFFFFFFFFLL;
    }

    v19 = ne_log_obj();
    if (!os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      return 0xFFFFFFFFLL;
    }

    goto LABEL_22;
  }

  v3 = v2;
  v4 = v2[1];
  memcpy(v4, *(*(a1 + 168) + 8), **(a1 + 168));
  v5 = &v4[**(a1 + 168)];
  *v5 = *a1;
  *(v5 + 1) = *(a1 + 8);
  v5[16] = 0;
  v6 = sub_10002786C(*(a1 + 192), v3, a1);
  *(a1 + 200) = v6;
  if (v6)
  {
    sub_10003D4F0(v3);
    v7 = sub_10003D3A8(**(a1 + 168) + **(a1 + 200) + 17);
    if (!v7)
    {
      if (!dword_100090058)
      {
        return 0xFFFFFFFFLL;
      }

      v20 = ne_log_obj();
      if (!os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        return 0xFFFFFFFFLL;
      }

      goto LABEL_22;
    }

    v3 = v7;
    v8 = v7[1];
    memcpy(v8, *(*(a1 + 200) + 8), **(a1 + 200));
    v9 = &v8[**(a1 + 200)];
    memcpy(v9, *(*(a1 + 168) + 8), **(a1 + 168));
    v10 = &v9[**(a1 + 168)];
    *v10 = *a1;
    *(v10 + 1) = *(a1 + 8);
    v10[16] = 1;
    v11 = sub_10002786C(*(a1 + 192), v3, a1);
    *(a1 + 208) = v11;
    if (v11)
    {
      sub_10003D4F0(v3);
      v12 = sub_10003D3A8(**(a1 + 168) + **(a1 + 208) + 17);
      if (v12)
      {
        v3 = v12;
        v13 = v12[1];
        memcpy(v13, *(*(a1 + 208) + 8), **(a1 + 208));
        v14 = &v13[**(a1 + 208)];
        memcpy(v14, *(*(a1 + 168) + 8), **(a1 + 168));
        v15 = &v14[**(a1 + 168)];
        *v15 = *a1;
        *(v15 + 1) = *(a1 + 8);
        v15[16] = 2;
        v16 = sub_10002786C(*(a1 + 192), v3, a1);
        *(a1 + 224) = v16;
        if (v16)
        {
          sub_10003D4F0(v3);
          return 0;
        }

        goto LABEL_15;
      }

      if (!dword_100090058)
      {
        return 0xFFFFFFFFLL;
      }

      v21 = ne_log_obj();
      if (!os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        return 0xFFFFFFFFLL;
      }

LABEL_22:
      sub_10005FF88();
      return 0xFFFFFFFFLL;
    }
  }

LABEL_15:
  sub_10003D4F0(v3);
  return 0xFFFFFFFFLL;
}

uint64_t sub_10002B0A4(void *a1)
{
  v2 = a1 + 9;
  v3 = sub_100001574(*(a1[9] + 40), *(a1[9] + 44));
  if (v3 == -1)
  {
    if (dword_100090058)
    {
      v23 = ne_log_obj();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        sub_1000601D8(v2);
      }
    }

    return 0xFFFFFFFFLL;
  }

  v4 = sub_10003D3A8(v3 >> 3);
  a1[30] = v4;
  v5 = (a1 + 30);
  if (!v4)
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

    goto LABEL_27;
  }

  v6 = sub_100001304(*(*v2 + 52));
  if (v6 == -1)
  {
    if (dword_100090058)
    {
      v25 = ne_log_obj();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        sub_100060164(v2);
      }
    }

    return 0xFFFFFFFFLL;
  }

  v7 = a1[28];
  v8 = a1[30];
  if (*v8 <= *v7)
  {
    memcpy(*(v8 + 8), *(v7 + 8), *v8);
    return 0;
  }

  v9 = v6;
  if (dword_100090058)
  {
    v10 = ne_log_obj();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      sub_100060038(a1 + 28);
    }
  }

  v11 = v9 >> 3;
  v12 = sub_10003D3A8(v11);
  if (v12)
  {
    v13 = v12;
    v14 = **v5;
    if (v14 >= 1)
    {
      v15 = (*v5)[1];
      v16 = &v15[v14];
      v17 = 1;
      while (1)
      {
        if (v15 == (*v5)[1])
        {
          **(v13 + 8) = 0;
          *v13 = 1;
        }

        v18 = sub_10002786C(a1[28], v13, a1);
        if (!v18)
        {
          break;
        }

        v19 = v18;
        if (dword_100090058)
        {
          v20 = ne_log_obj();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
          {
            *buf = 67109120;
            v30 = v17;
            _os_log_debug_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEBUG, "compute intermediate encryption key K%d\n", buf, 8u);
          }
        }

        LODWORD(v21) = v16 - v15;
        if (*v19 < (v16 - v15))
        {
          v21 = *v19;
        }

        v22 = v21;
        memcpy(v15, *(v19 + 8), v21);
        *v13 = v11;
        if (*v19 != v11)
        {
          if (dword_100090058)
          {
            v28 = ne_log_obj();
            if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
            {
              sub_1000600BC(v19);
            }
          }

          sub_10003D4F0(v19);
          break;
        }

        v15 += v22;
        memcpy(*(v13 + 8), *(v19 + 8), v11);
        sub_10003D4F0(v19);
        ++v17;
        if (v15 >= v16)
        {
          goto LABEL_35;
        }
      }

      sub_10003D4F0(v13);
      return 0xFFFFFFFFLL;
    }

LABEL_35:
    sub_10003D4F0(v13);
    return 0;
  }

  if (dword_100090058)
  {
    v26 = ne_log_obj();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
LABEL_27:
      sub_100060130();
    }
  }

  return 0xFFFFFFFFLL;
}

void *sub_10002B3F4()
{
  v0 = malloc_type_calloc(1uLL, 0x30uLL, 0x1030040C42573BEuLL);
  v1 = v0;
  if (v0)
  {
    v0[3] = 0;
    v0[5] = 0;
  }

  else if (dword_100090058)
  {
    v2 = ne_log_obj();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      sub_10006025C();
    }
  }

  return v1;
}

void sub_10002B474(void *a1)
{
  if (a1)
  {
    v2 = a1[3];
    if (v2)
    {
      sub_10003D4F0(v2);
    }

    free(a1);
  }
}

uint64_t sub_10002B4BC(uint64_t a1)
{
  v2 = sub_10003D3A8(**(a1 + 160) + **(a1 + 152));
  if (!v2)
  {
    if (dword_100090058)
    {
      v16 = ne_log_obj();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        sub_100060380();
      }
    }

    return 0xFFFFFFFFLL;
  }

  v3 = v2;
  v4 = v2[1];
  if (*(a1 + 20))
  {
    v5 = 160;
  }

  else
  {
    v5 = 152;
  }

  v6 = *(a1 + v5);
  memcpy(v2[1], *(v6 + 8), *v6);
  if (*(a1 + 20))
  {
    v7 = 152;
  }

  else
  {
    v7 = 160;
  }

  memcpy((v4 + *v6), *(*(a1 + v7) + 8), **(a1 + v7));
  v8 = malloc_type_calloc(1uLL, 0x10uLL, 0x20040A4A59CD2uLL);
  if (!v8)
  {
    if (dword_100090058)
    {
      v17 = ne_log_obj();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        sub_100060380();
      }
    }

    sub_10003D4F0(v3);
    return 0xFFFFFFFFLL;
  }

  v9 = v8;
  v10 = sub_1000278F8(v3, a1);
  *v9 = v10;
  if (!v10)
  {
LABEL_28:
    sub_10003D4F0(v3);
    sub_10002B6C4(v9);
    return 0xFFFFFFFFLL;
  }

  v11 = sub_1000015C8(*(*(a1 + 72) + 40));
  v12 = *v9;
  **v9 = v11;
  if (v11 == -1)
  {
    if (dword_100090058)
    {
      v18 = ne_log_obj();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        sub_100060310(a1 + 72);
      }
    }

    goto LABEL_28;
  }

  v13 = sub_10003D538(v12);
  v9[1] = v13;
  if (!v13)
  {
    if (dword_100090058)
    {
      v19 = ne_log_obj();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        sub_100060290();
      }
    }

    goto LABEL_28;
  }

  sub_10003D4F0(v3);
  v14 = *(a1 + 328);
  if (v14)
  {
    sub_10002B6C4(v14);
  }

  result = 0;
  *(a1 + 328) = v9;
  return result;
}

void sub_10002B6C4(void *a1)
{
  if (a1)
  {
    v2 = *a1;
    if (v2)
    {
      sub_10003D4F0(v2);
    }

    v3 = a1[1];
    if (v3)
    {
      sub_10003D4F0(v3);
    }

    free(a1);
    if (dword_100090058)
    {
      v4 = ne_log_obj();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
      {
        sub_1000603B4();
      }
    }
  }
}

uint64_t *sub_10002B73C(uint64_t a1, int a2)
{
  v4 = sub_10003D3A8(***(a1 + 328) + 4);
  if (v4)
  {
    v5 = v4;
    v6 = v4[1];
    memcpy(v6, *(**(a1 + 328) + 8), ***(a1 + 328));
    *&v6[***(a1 + 328)] = a2;
    if (dword_100090058)
    {
      v7 = ne_log_obj();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        sub_1000603E8();
      }
    }

    v8 = malloc_type_calloc(1uLL, 0x10uLL, 0x20040A4A59CD2uLL);
    if (v8)
    {
      v9 = v8;
      v10 = sub_1000278F8(v5, a1);
      *v9 = v10;
      if (v10)
      {
        v12 = *(a1 + 72);
        v11 = a1 + 72;
        v13 = sub_1000015C8(*(v12 + 40));
        v14 = *v9;
        **v9 = v13;
        if (v13 == -1)
        {
          if (dword_100090058)
          {
            v19 = ne_log_obj();
            if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
            {
              sub_100060310(v11);
            }
          }
        }

        else
        {
          v15 = sub_10003D538(v14);
          v9[1] = v15;
          if (v15)
          {
LABEL_24:
            sub_10003D4F0(v5);
            return v9;
          }

          if (dword_100090058)
          {
            v16 = ne_log_obj();
            if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
            {
              sub_100060290();
            }
          }
        }
      }

      sub_10002B6C4(v9);
    }

    else if (dword_100090058)
    {
      v18 = ne_log_obj();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        sub_100060380();
      }
    }

    v9 = 0;
    goto LABEL_24;
  }

  if (dword_100090058)
  {
    v17 = ne_log_obj();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_100060380();
    }
  }

  return 0;
}

void *sub_10002B914(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (dword_100090058)
  {
    v8 = ne_log_obj();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      sub_10006041C();
    }
  }

  v9 = sub_1000015C8(*(*(a1 + 72) + 40));
  if (v9 == -1)
  {
    if (dword_100090058)
    {
      v25 = ne_log_obj();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        sub_100060310(a1 + 72);
      }
    }

    return 0;
  }

  v10 = v9;
  bzero(*(a4 + 8), *a4);
  memcpy(*(a4 + 8), (a2[1] + *a2 - v10), v10);
  if (dword_10008C2C8 >= 7)
  {
    sub_1000314C0(7, *(a4 + 8), *a4, "IV was saved for next processing:\n", v11, v12, v13, v14, v38);
  }

  v15 = a2[1];
  v16 = *a2 - 28;
  v17 = sub_10003D3A8(v16);
  if (!v17)
  {
    if (dword_100090058)
    {
      v28 = ne_log_obj();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        sub_1000606B8();
      }
    }

    return 0;
  }

  v18 = v17;
  memcpy(v17[1], (v15 + 28), v16);
  v19 = sub_10000161C(*(*(a1 + 72) + 40), v18, *(a1 + 240), a3);
  v20 = v19;
  if (v19 && v19[1] && *v19)
  {
    sub_10003D4F0(v18);
    if (dword_100090058)
    {
      v21 = ne_log_obj();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
      {
        sub_100060450();
      }
    }

    if (*(qword_1000900B8 + 264))
    {
      v22 = *(v20[1] + *v20 - 1) + 1;
    }

    else
    {
      v22 = *(v20[1] + *v20 - 1);
    }

    if (dword_100090058)
    {
      v23 = ne_log_obj();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
      {
        sub_100060484();
      }
    }

    if (*(qword_1000900B8 + 260))
    {
      if (*v20 < v22)
      {
        if (dword_100090058)
        {
          v24 = ne_log_obj();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
          {
            sub_100060524(v22, v20);
          }
        }

        goto LABEL_50;
      }

      *v20 -= v22;
      if (dword_100090058)
      {
        v30 = ne_log_obj();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
        {
          sub_1000604F0();
        }
      }
    }

    else if (dword_100090058)
    {
      v29 = ne_log_obj();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
      {
        sub_1000605AC();
      }
    }

    v31 = sub_10003D3A8(*v20 + 28);
    if (v31)
    {
      v27 = v31;
      v32 = v31[1];
      v33 = a2[1];
      v34 = *v33;
      *(v32 + 12) = *(v33 + 12);
      *v32 = v34;
      memcpy((v31[1] + 28), v20[1], *v20);
      *(v27[1] + 24) = bswap32(*v27);
      if (dword_100090058)
      {
        v35 = ne_log_obj();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
        {
          sub_1000605E0();
        }
      }

      goto LABEL_51;
    }

    if (dword_100090058)
    {
      v36 = ne_log_obj();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        sub_100060614();
      }
    }

LABEL_50:
    v27 = 0;
LABEL_51:
    sub_10003D4F0(v20);
    return v27;
  }

  if (dword_100090058)
  {
    v26 = ne_log_obj();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      sub_100060648(a1 + 72);
    }
  }

  sub_10003D4F0(v18);
  v27 = 0;
  if (v20)
  {
    goto LABEL_51;
  }

  return v27;
}

void *sub_10002BCBC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (*(a1 + 80) == 16)
  {

    return sub_10002B914(a1, a2, a3, a4);
  }

  else
  {
    if (dword_100090058)
    {
      v6 = ne_log_obj();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_1000606EC();
      }
    }

    return 0;
  }
}

void *sub_10002BD2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (dword_100090058)
  {
    v8 = ne_log_obj();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      sub_100060720();
    }
  }

  v9 = sub_1000015C8(*(*(a1 + 72) + 40));
  if (v9 == -1)
  {
    if (dword_100090058)
    {
      v30 = ne_log_obj();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        sub_100060310(a1 + 72);
      }
    }

    return 0;
  }

  v10 = v9;
  v35 = a4;
  v36 = *(a2 + 8);
  v37 = a3;
  v11 = *a2 - 28;
  v12 = v9 + 28 - *a2 + v11 / v9 * v9;
  if (*(qword_1000900B8 + 252))
  {
    v12 += v9 + v9 * (sub_100004308() % (*(qword_1000900B8 + 256) + 1));
  }

  if (dword_100090058)
  {
    v13 = ne_log_obj();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      sub_100060754();
    }
  }

  v14 = sub_10003D3A8((v12 + v11));
  if (!v14)
  {
    if (dword_100090058)
    {
      v31 = ne_log_obj();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        sub_1000607F0();
      }
    }

    return 0;
  }

  v15 = v14;
  if (v12 && *(qword_1000900B8 + 248))
  {
    v16 = (v14[1] + v11);
    v17 = v12;
    do
    {
      *v16++ = sub_100004308();
      --v17;
    }

    while (v17);
  }

  memcpy(*(v15 + 8), (v36 + 28), v11);
  *(*(v15 + 8) + (v12 + v11 - 1)) = v12 - (*(qword_1000900B8 + 264) != 0);
  if (dword_10008C2C8 >= 7)
  {
    sub_1000314C0(7, *(v15 + 8), *v15, "About to encrypt %d bytes", v18, v19, v20, v21, *v15);
  }

  v22 = sub_10000168C(*(*(a1 + 72) + 40), v15, *(a1 + 240), v37);
  if (!v22)
  {
    if (dword_100090058)
    {
      v32 = ne_log_obj();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        sub_100060824(a1 + 72);
      }
    }

    sub_10003D4F0(v15);
    return 0;
  }

  v23 = v22;
  sub_10003D4F0(v15);
  bzero(*(v35 + 8), *v35);
  memcpy(*(v35 + 8), (*(v23 + 8) + *v23 - v10), v10);
  v24 = sub_10003D3A8(*v23 + 28);
  v25 = v24;
  if (v24)
  {
    v26 = v24[1];
    v27 = *(a2 + 8);
    v28 = *v27;
    *(v26 + 12) = *(v27 + 12);
    *v26 = v28;
    memcpy((v24[1] + 28), *(v23 + 8), *v23);
    *(v25[1] + 24) = bswap32(*v25);
    if (dword_100090058)
    {
      v29 = ne_log_obj();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
      {
        sub_1000607BC();
      }
    }
  }

  else if (dword_100090058)
  {
    v33 = ne_log_obj();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      sub_1000607F0();
    }
  }

  sub_10003D4F0(v23);
  return v25;
}

void *sub_10002C090(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a1 + 80) == 16)
  {

    return sub_10002BD2C(a1, a2, a3, a4);
  }

  else
  {
    if (dword_100090058)
    {
      v6 = ne_log_obj();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_100060894();
      }
    }

    return 0;
  }
}

void sub_10002C134(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 8u);
}

uint64_t sub_10002C150(uint64_t a1)
{
  v1 = a1;
  memset(v24, 0, sizeof(v24));
  if (sub_10003FF34(a1, v24))
  {
    if (dword_100090058)
    {
      v2 = ne_log_obj();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
      {
        sub_1000608C8();
      }
    }

    goto LABEL_9;
  }

  if (!sub_100040034(v24))
  {
    v1 = *&v24[0];
    v6 = (*&v24[0] + 2);
    v7 = *(*&v24[0] + 2);
    if (*(*&v24[0] + 2))
    {
      if (dword_100090058)
      {
        v8 = *(*&v24[0] + 1);
        v9 = ne_log_obj();
        v10 = v9;
        if (v7 != 2 || v8 != 18)
        {
          if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
          {
            sub_1000609C8();
          }

          goto LABEL_30;
        }

        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          v11 = sub_10003C958(v1[1]);
          v12 = strerror(*v6);
          v20 = 136315394;
          v21 = v11;
          v22 = 2080;
          v23 = v12;
          v13 = "pfkey %s failed: %s\n";
          v14 = v10;
          v15 = 22;
LABEL_29:
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, v13, &v20, v15);
        }
      }
    }

    else
    {
      v16 = *(*&v24[0] + 1);
      if (v16 >= 0x1B)
      {
        if (dword_100090058)
        {
          v17 = ne_log_obj();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            sub_100060A70(v1 + 1);
          }
        }

        goto LABEL_30;
      }

      if (((0x7521CA1uLL >> v16) & 1) == 0)
      {
        v4 = (qword_100088F78[v16](v24) >> 31);
        goto LABEL_10;
      }

      if (dword_100090058)
      {
        v18 = ne_log_obj();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          v19 = sub_10003C958(v1[1]);
          v20 = 136315138;
          v21 = v19;
          v13 = "unsupported PF_KEY message %s\n";
          v14 = v18;
          v15 = 12;
          goto LABEL_29;
        }
      }
    }

LABEL_30:
    v4 = 0xFFFFFFFFLL;
    goto LABEL_10;
  }

  if (dword_100090058)
  {
    v3 = ne_log_obj();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_100060948();
    }
  }

LABEL_9:
  v4 = 0xFFFFFFFFLL;
  if (v1)
  {
LABEL_10:
    free(v1);
  }

  return v4;
}

void sub_10002C3FC()
{
  if (xmmword_100090080 == 0)
  {
    v5 = 0;
    v1 = sub_10002C52C(*(qword_1000900B8 + 32), &v5);
    if (v1)
    {

      sub_10002C150(v1);
    }

    else if ((v5 & 0x8000000000000000) != 0)
    {
      if (dword_100090058)
      {
        v3 = ne_log_obj();
        if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
        {
          sub_100060AE0();
        }
      }
    }

    else if (dword_100090058)
    {
      v2 = ne_log_obj();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
      {
        *v4 = 0;
        _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "recv short message from pfkey\n", v4, 2u);
      }
    }
  }

  else if (dword_100090058)
  {
    v0 = ne_log_obj();
    if (os_log_type_enabled(v0, OS_LOG_TYPE_DEBUG))
    {
      sub_100060B68();
    }
  }
}

void *sub_10002C52C(int a1, unint64_t *a2)
{
  v9 = 4;
  LODWORD(size) = 0;
  if (getsockopt(a1, 0xFFFF, 4128, &size, &v9) < 0 || !size)
  {
    return 0;
  }

  v4 = malloc_type_calloc(1uLL, size, 0xFB8E1A42uLL);
  if (v4)
  {
    do
    {
      v5 = recv(a1, v4, size, 0);
      *a2 = v5;
      if ((v5 & 0x8000000000000000) == 0)
      {
        goto LABEL_10;
      }
    }

    while (*__error() == 4);
    if (dword_100090058)
    {
      v6 = ne_log_obj();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_100060B9C();
      }
    }

    v5 = *a2;
    if ((*a2 & 0x8000000000000000) != 0)
    {
LABEL_14:
      free(v4);
      return 0;
    }

LABEL_10:
    if (v5 < 0x10 || v5 != size)
    {
      goto LABEL_14;
    }
  }

  return v4;
}

void sub_10002C624()
{
  if (xmmword_100090080 == 0)
  {
    v1 = *(qword_1000900B8 + 96);
    if (v1)
    {
      do
      {
        v2 = *v1;
        sub_10002C150(v1[2]);
        v3 = *v1;
        v4 = v1[1];
        v5 = (qword_1000900B8 + 104);
        if (*v1)
        {
          v5 = (*v1 + 8);
        }

        *v5 = v4;
        *v4 = v3;
        free(v1);
        v1 = v2;
      }

      while (v2);
    }
  }

  else if (dword_100090058)
  {
    v0 = ne_log_obj();
    if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
    {
      v6[0] = 0;
      _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_DEFAULT, "ignoring (saved) pfkey messages until power-mgmt event is handled.\n", v6, 2u);
    }
  }
}

uint64_t sub_10002C710(uint64_t a1)
{
  v2 = malloc_type_calloc(0x18uLL, 1uLL, 0xA00402214FCE6uLL);
  if (!v2)
  {
    return 0xFFFFFFFFLL;
  }

  v3 = v2;
  result = 0;
  *v3 = 0;
  v5 = *(qword_1000900B8 + 104);
  v3[1] = v5;
  v3[2] = a1;
  *v5 = v3;
  *(qword_1000900B8 + 104) = v3;
  return result;
}

void **sub_10002C784(unsigned int a1)
{
  v2 = getpid();
  v16 = 0;
  v3 = sub_10003FE0C();
  if (v3 < 0)
  {
    if (dword_100090058)
    {
      v12 = ne_log_obj();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_100060D14();
      }
    }

    return 0;
  }

  else
  {
    v4 = v3;
    if (dword_100090058)
    {
      v5 = ne_log_obj();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        sub_100060C24();
      }
    }

    if ((sub_10003F658(v4, a1) & 0x80000000) != 0)
    {
      if (dword_100090058)
      {
        v13 = ne_log_obj();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          sub_100060C94();
        }
      }

      v7 = 0;
    }

    else
    {
      v6 = 0;
      v7 = 0;
      while (1)
      {
        do
        {
          while (1)
          {
            while (1)
            {
              if (v6)
              {
                free(v6);
              }

              v8 = sub_10002C52C(v4, &v16);
              v6 = v8;
              if (v8)
              {
                break;
              }

              if ((v16 & 0x8000000000000000) != 0)
              {
                goto LABEL_29;
              }
            }

            if (*(v8 + 1) == 10)
            {
              break;
            }

            sub_10002C710(v8);
            v6 = 0;
          }
        }

        while (v8[3] != v2);
        v9 = v7 ? *v7 : 0;
        v10 = 8 * *(v8 + 2);
        v11 = sub_10003D42C(v7, &v9[v10]);
        v7 = v11;
        if (!v11)
        {
          break;
        }

        memcpy(&v9[v11[1]], v6, v10);
        if (!v6[2])
        {
          goto LABEL_34;
        }
      }

      if (dword_100090058)
      {
        v15 = ne_log_obj();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          sub_100060C58();
        }
      }

LABEL_34:
      free(v6);
    }

LABEL_29:
    sub_10003FF10(v4);
  }

  return v7;
}

uint64_t sub_10002C95C()
{
  v0 = sub_10003FE0C();
  *(qword_1000900B8 + 32) = v0;
  if (v0 < 0)
  {
    if (dword_100090058)
    {
      v9 = ne_log_obj();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_100060EE8();
      }
    }
  }

  else
  {
    v1 = 0;
    v2 = 0;
    v3 = &off_100089058;
    do
    {
      if (dword_100090058)
      {
        v4 = ne_log_obj();
        if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
        {
          sub_100060D94(v22, v1, &v23, v4);
        }
      }

      if ((sub_10003F134(*(qword_1000900B8 + 32), *(v3 - 8)) & 0x80000000) != 0 || (sub_10003F304(*(qword_1000900B8 + 32)) & 0x80000000) != 0)
      {
        if (dword_100090058)
        {
          v5 = ne_log_obj();
          if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
          {
            v6 = *v3;
            v7 = ipsec_strerror();
            *buf = 136315394;
            v19 = v6;
            v20 = 2080;
            v21 = v7;
            _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "failed to register %s (%s)\n", buf, 0x16u);
          }
        }

        ++v2;
      }

      ++v1;
      v3 += 2;
    }

    while (v1 != 3);
    if (v2 == 3)
    {
      if (dword_100090058)
      {
        v8 = ne_log_obj();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          sub_100060EAC();
        }
      }

      close(*(qword_1000900B8 + 32));
    }

    else
    {
      sub_1000330CC();
      v10 = dispatch_source_create(&_dispatch_source_type_read, *(qword_1000900B8 + 32), 0, &_dispatch_main_q);
      *(qword_1000900B8 + 48) = v10;
      if (v10)
      {
        dispatch_source_set_event_handler_f(v10, sub_10002C3FC);
        v11 = *(qword_1000900B8 + 32);
        v12 = *(qword_1000900B8 + 48);
        handler[0] = _NSConcreteStackBlock;
        handler[1] = 0x40000000;
        handler[2] = sub_10002CC80;
        handler[3] = &unk_100089080;
        v17 = v11;
        dispatch_source_set_cancel_handler(v12, handler);
        dispatch_resume(*(qword_1000900B8 + 48));
        if ((sub_10003FE00(*(qword_1000900B8 + 32)) & 0x80000000) == 0)
        {
          return 0;
        }

        if (dword_100090058)
        {
          v15 = ne_log_obj();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            sub_100060DF0();
          }
        }

        dispatch_source_cancel(*(qword_1000900B8 + 48));
        *(qword_1000900B8 + 48) = 0;
      }

      else if (dword_100090058)
      {
        v14 = ne_log_obj();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          sub_100060E70();
        }
      }
    }
  }

  return 0xFFFFFFFFLL;
}

uint64_t sub_10002CCC0(int a1)
{
  if ((a1 - 2) < 3)
  {
    return dword_10006CDA4[a1 - 2];
  }

  if (!dword_100090058)
  {
    return 0xFFFFFFFFLL;
  }

  v2 = ne_log_obj();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    sub_100060F68();
  }

  return 0xFFFFFFFFLL;
}

uint64_t sub_10002CD40(uint64_t a1)
{
  v1 = a1;
  if ((a1 - 2) >= 2)
  {
    if (a1 == 9)
    {
      return 4;
    }

    else
    {
      if (dword_100090058)
      {
        v2 = ne_log_obj();
        if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
        {
          sub_100060FD8();
        }
      }

      return 0xFFFFFFFFLL;
    }
  }

  return v1;
}

uint64_t sub_10002CDB8(int a1)
{
  result = 2;
  if (a1 > 3)
  {
    if (a1 != 61444)
    {
      if (a1 == 61443)
      {
        return result;
      }

      if (a1 != 4)
      {
        goto LABEL_10;
      }
    }

    return 1;
  }

  switch(a1)
  {
    case 1:
      return result;
    case 2:
      return 1;
    case 3:
      return result;
  }

LABEL_10:
  if (dword_100090058)
  {
    v3 = ne_log_obj();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_100061048();
    }
  }

  return 0xFFFFFFFFLL;
}

uint64_t sub_10002CE60(unsigned int a1)
{
  if (a1 < 3)
  {
    return dword_10006CDB0[a1];
  }

  if (dword_100090058)
  {
    v2 = ne_log_obj();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      sub_100061048();
    }
  }

  return 0xFFFFFFFFLL;
}

uint64_t sub_10002CED0(uint64_t a1, int a2, uint64_t a3, uint64_t a4, _DWORD *a5, unsigned int *a6, _DWORD *a7, unsigned int *a8, _DWORD *a9)
{
  v14 = a3;
  *a9 = 0;
  switch(a2)
  {
    case 2:
      v20 = sub_10002D278(a4);
      *a7 = v20;
      if (v20 != -1)
      {
        v21 = sub_10002D364(a4);
        *a8 = v21;
        if (v21 != -1)
        {
          *a8 = v21 >> 3;
          if (v14 == 1 && a4 == 4)
          {
            *a7 = 3;
            *a9 |= 1u;
          }

          *a5 = 0;
          *a6 = 0;
          if (!*a7)
          {
            if (dword_100090058)
            {
              v27 = ne_log_obj();
              if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
              {
                sub_1000610F4();
              }
            }

            break;
          }

          return 0;
        }
      }

      break;
    case 4:
      v18 = sub_10002D3D0(a3);
      *a5 = v18;
      if (v18 != -1)
      {
        *a6 = 0;
        *a9 = 128;
        *a7 = 0;
        *a8 = 0;
        if (!*a5)
        {
          if (dword_100090058)
          {
            v19 = ne_log_obj();
            if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
            {
              sub_1000610B8();
            }
          }

          break;
        }

        return 0;
      }

      break;
    case 3:
      v15 = sub_10002D154(a3);
      *a5 = v15;
      if (v15 != -1)
      {
        v16 = sub_100001730(v14, *a6);
        if (v16 == -1 && dword_100090058)
        {
          v17 = ne_log_obj();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            sub_100061130();
          }

          *a6 = -1;
          break;
        }

        *a6 = v16;
        if (v16 != -1)
        {
          *a6 = v16 >> 3;
          v24 = sub_10002D278(a4);
          *a7 = v24;
          if (v24 != -1)
          {
            v25 = sub_10002D364(a4);
            *a8 = v25;
            if (v25 != -1)
            {
              *a8 = v25 >> 3;
              if (!*a5)
              {
                if (dword_100090058)
                {
                  v26 = ne_log_obj();
                  if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
                  {
                    sub_1000611A0();
                  }
                }

                break;
              }

              return 0;
            }
          }
        }
      }

      break;
    default:
      if (dword_100090058)
      {
        v23 = ne_log_obj();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          sub_1000611DC();
        }
      }

      break;
  }

  *__error() = 22;
  return 0xFFFFFFFFLL;
}

uint64_t sub_10002D154(int a1)
{
  result = 1;
  if (a1 <= 7)
  {
    if (a1 <= 4)
    {
      if ((a1 - 1) < 2)
      {
        return result;
      }

      if (a1 == 3)
      {
        return 2;
      }

LABEL_16:
      if (dword_100090058)
      {
        v3 = ne_log_obj();
        if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
        {
          sub_100061288();
        }
      }

      return 0xFFFFFFFFLL;
    }

    if (a1 != 5)
    {
      if (a1 == 6)
      {
        return 5;
      }

      else
      {
        return 4;
      }
    }

LABEL_19:
    if (dword_100090058)
    {
      v4 = ne_log_obj();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        sub_100061218();
      }
    }

    return 0xFFFFFFFFLL;
  }

  if (a1 <= 9)
  {
    if (a1 != 8)
    {
      return result;
    }

    goto LABEL_19;
  }

  if (a1 == 10)
  {
    goto LABEL_19;
  }

  if (a1 != 11)
  {
    if (a1 == 12)
    {
      return 12;
    }

    goto LABEL_16;
  }

  return 3;
}

uint64_t sub_10002D278(int a1)
{
  result = 1;
  if (a1 <= 4)
  {
    if (a1 > 2)
    {
      if (a1 == 3)
      {
        if (!dword_100090058)
        {
          return 0xFFFFFFFFLL;
        }

        v3 = ne_log_obj();
        if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
        {
          sub_1000612F8();
        }

        return 0xFFFFFFFFLL;
      }
    }

    else
    {
      if (a1 == 1)
      {
        return result;
      }

      if (a1 == 2)
      {
        return 2;
      }
    }

    return 0;
  }

  if (a1 <= 6)
  {
    if (a1 == 5)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }

  else
  {
    switch(a1)
    {
      case 7:
        return 8;
      case 252:
        break;
      case 253:
        return 2;
      default:
        return 0;
    }
  }

  return result;
}

uint64_t sub_10002D364(uint64_t result)
{
  if (result)
  {
    result = sub_100001800(result);
    if (result == -1)
    {
      if (dword_100090058)
      {
        v1 = ne_log_obj();
        if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
        {
          sub_100061374();
        }
      }

      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

uint64_t sub_10002D3D0(uint64_t a1)
{
  v1 = a1;
  if ((a1 - 1) >= 3)
  {
    if (dword_100090058)
    {
      v2 = ne_log_obj();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
      {
        sub_100061288();
      }
    }

    return 0xFFFFFFFFLL;
  }

  return v1;
}

uint64_t sub_10002D43C(uint64_t a1)
{
  if (dword_100090058)
  {
    v2 = ne_log_obj();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      sub_1000613E4(a1);
    }
  }

  v3 = *(a1 + 64);
  if (v3)
  {
    sub_100038740(v3);
    *(a1 + 64) = 0;
  }

  if (!*(a1 + 60))
  {
    sub_10002D4B8(a1);
  }

  return sub_100048E58(a1);
}

uint64_t sub_10002D4B8(uint64_t a1)
{
  v2 = malloc_type_calloc(1uLL, 0x10uLL, 0xB4F70911uLL);
  if (v2)
  {
    v3 = v2;
    *(v2 + 1) = 0;
    *(v2 + 3) = 0;
    *v2 = 1538;
    v2[2] = 2;
    v2[3] = *(a1 + 104);
    *(v2 + 2) = 2;
    *(v2 + 2) = *(a1 + 100);
    *(v2 + 3) = getpid();
    sub_10003E6D0(*(qword_1000900B8 + 32), v3, 0x10u);
    free(v3);
    return 0;
  }

  else
  {
    if (dword_100090058)
    {
      v5 = ne_log_obj();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        sub_100061468();
      }
    }

    return 0xFFFFFFFFLL;
  }
}

uint64_t sub_10002D588(uint64_t a1)
{
  if (*(a1 + 60))
  {
    v2 = *(a1 + 128);
    v3 = *(a1 + 112);
    if (!v3 || !*(v3 + 40))
    {
      goto LABEL_9;
    }

LABEL_6:
    v4 = (a1 + 32);
    if (*(a1 + 32))
    {
      v5 = (a1 + 40);
      if (*(a1 + 40))
      {
        if (sub_10000CE8C(v2))
        {
          goto LABEL_10;
        }
      }
    }

    goto LABEL_9;
  }

  v2 = *(a1 + 120);
  if (*(*(*(a1 + 256) + 64) + 160))
  {
    goto LABEL_6;
  }

LABEL_9:
  v5 = (a1 + 8);
  v4 = a1;
LABEL_10:
  v6 = *(v2 + 32);
  if (!v6)
  {
    return 0;
  }

  v7 = *v4;
  v8 = *v5;
  while (1)
  {
    v9 = sub_10002CCC0(*v6);
    v10 = v9;
    if (v9 != 9)
    {
      break;
    }

    v12 = 256;
    v11 = 0xFFFF;
LABEL_16:
    v13 = sub_10002CDB8(*(v6 + 16));
    if (v13 == -1)
    {
      if (dword_100090058)
      {
        v19 = ne_log_obj();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          sub_1000615D4((v6 + 16));
        }
      }

      return 0xFFFFFFFFLL;
    }

    v14 = v13;
    if (dword_100090058)
    {
      v15 = ne_log_obj();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        sub_100061514(&v23, v24, v15);
      }
    }

    if ((sub_10003E35C(*(qword_1000900B8 + 32), v10, v14, &v8->sa_len, &v7->sa_len, v12, v11, *(v6 + 52), 0, v22, 0, 0, *(a1 + 100), 0) & 0x80000000) != 0)
    {
      if (dword_100090058)
      {
        v20 = ne_log_obj();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          sub_100061554();
        }
      }

      return 0xFFFFFFFFLL;
    }

    if (dword_100090058)
    {
      v16 = ne_log_obj();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        v17 = sub_10002D834(v8, v7, v10, 0, v14);
        *buf = 136315138;
        v26 = v17;
        _os_log_debug_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, "pfkey GETSPI sent: %s\n", buf, 0xCu);
      }
    }

    v6 = *(v6 + 72);
    if (!v6)
    {
      return 0;
    }
  }

  if (v9 != -1)
  {
    v11 = 0;
    v12 = 0;
    goto LABEL_16;
  }

  if (dword_100090058)
  {
    v21 = ne_log_obj();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      sub_1000614A4(v6);
    }
  }

  return 0xFFFFFFFFLL;
}

char *sub_10002D834(const sockaddr *a1, const sockaddr *a2, uint64_t a3, unsigned int a4, unsigned int a5)
{
  v9 = sub_10002CD40(a3);
  if (v9 == -1)
  {
    return 0;
  }

  v10 = v9;
  if (a5)
  {
    v11 = sub_10002CE60(a5);
    if (v11 == -1)
    {
      return 0;
    }

    v12 = v11;
    v13 = sub_10003BE54(v10);
    v14 = sub_10003C210(v12);
    v15 = "/";
  }

  else
  {
    v13 = sub_10003BE54(v9);
    v15 = &unk_100080609;
    v14 = &unk_100080609;
  }

  v16 = snprintf(byte_10008CC11, 0xFFuLL, "%s%s%s ", v13, v15, v14);
  if (v16 > 0xFE)
  {
    return 0;
  }

  v18 = &byte_10008CC11[v16];
  v19 = 255 - v16;
  v20 = sub_10003A5E8(a1);
  v21 = snprintf(v18, v19, "%s->", v20);
  result = 0;
  if ((v21 & 0x80000000) == 0)
  {
    v22 = v19 - v21;
    if (v19 > v21)
    {
      v23 = &v18[v21];
      v24 = sub_10003A5E8(a2);
      v25 = snprintf(v23, v22, "%s ", v24);
      result = 0;
      if ((v25 & 0x80000000) == 0 && v22 > v25)
      {
        if (a4)
        {
          v26 = bswap32(a4);
          snprintf(&v23[v25], v22 - v25, "spi=%lu(0x%lx)", v26, v26);
        }

        return byte_10008CC11;
      }
    }
  }

  return result;
}