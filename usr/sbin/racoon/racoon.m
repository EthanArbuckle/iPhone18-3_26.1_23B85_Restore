void sub_100000A50(int *a1, int a2)
{
  *a1 = a2;
  if (dword_100090058)
  {
    v3 = ne_log_obj();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = 136315138;
      v5 = sub_10003B708(0, 0, a2);
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "state changed to: %s\n", &v4, 0xCu);
    }
  }
}

uint64_t sub_100000B14(uint64_t a1, void *a2)
{
  v4 = 0;
  v5 = *(a1 + 16);
  if (v5 <= 5439)
  {
    if (v5 > 5220)
    {
      if (v5 == 5221)
      {
        if (sub_100014CC0(a1, a2))
        {
          return 0;
        }
      }

      else
      {
        if (v5 != 5281)
        {
          return v4;
        }

        if (sub_100010084(a1, a2))
        {
          return 0;
        }
      }
    }

    else if (v5 == 5217)
    {
      if (sub_100013848(a1, a2))
      {
        return 0;
      }
    }

    else
    {
      if (v5 != 5219)
      {
        return v4;
      }

      if (sub_100014098(a1, a2))
      {
        return 0;
      }
    }

    goto LABEL_35;
  }

  if (v5 <= 5475)
  {
    if (v5 == 5440)
    {
      v6 = sub_10001516C(a1, a2);
      if (v6)
      {
        v4 = v6;
        if (!dword_100090058)
        {
          goto LABEL_49;
        }

        v7 = ne_log_obj();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_30;
        }

        goto LABEL_46;
      }
    }

    else
    {
      if (v5 != 5474)
      {
        return v4;
      }

      if (sub_100015908(a1, a2))
      {
        return 0;
      }
    }

LABEL_35:
    v10 = *(a1 + 128);
    if (v10)
    {
      sub_10003D4F0(v10);
      *(a1 + 128) = 0;
    }

    v11 = *(a1 + 120);
    if (v11)
    {
      sub_100038740(v11);
      *(a1 + 120) = 0;
    }

    if (dword_100090058)
    {
      v12 = ne_log_obj();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        sub_100054204();
      }
    }

    v13 = sub_100000DCC(a1, a2);
    if (v13)
    {
      v4 = v13;
      if (dword_100090058)
      {
        v14 = ne_log_obj();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          sub_100054244();
        }

        goto LABEL_46;
      }

LABEL_49:
      sub_100048F2C(a1);
      return v4;
    }

    if ((*(a1 + 17) & 0x20) != 0)
    {
      sub_100020238(a1);
    }

    return 0;
  }

  switch(v5)
  {
    case 5476:
      if (sub_100016110(a1, a2))
      {
        return 0;
      }

      goto LABEL_35;
    case 5504:
      v8 = sub_10001130C(a1, a2);
      if (v8)
      {
        v4 = v8;
        if (!dword_100090058)
        {
          goto LABEL_49;
        }

        v9 = ne_log_obj();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
LABEL_30:
          sub_1000541D0();
        }

LABEL_46:
        if (dword_100090058)
        {
          v15 = ne_log_obj();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            sub_100054278();
          }
        }

        goto LABEL_49;
      }

      goto LABEL_35;
    case 5538:
      if (sub_100012338(a1, a2))
      {
        return 0;
      }

      goto LABEL_35;
  }

  return v4;
}

uint64_t sub_100000DCC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  v4 = 0xFFFFFFFFLL;
  if (v3 <= 5249)
  {
    if (v3 <= 5187)
    {
      if (v3 == 5184)
      {
        v5 = sub_100013420(a1, a2);
      }

      else
      {
        if (v3 != 5186)
        {
          goto LABEL_27;
        }

        v5 = sub_100013BEC(a1, a2);
      }
    }

    else
    {
      switch(v3)
      {
        case 5188:
          v5 = sub_1000145B8(a1, a2);
          break;
        case 5190:
          v5 = sub_1000150DC(a1);
          break;
        case 5248:
          v5 = sub_10000FA64(a1, a2);
          break;
        default:
          goto LABEL_27;
      }
    }
  }

  else if (v3 > 5444)
  {
    switch(v3)
    {
      case 5445:
        v5 = sub_100016698(a1, a2);
        break;
      case 5505:
        v5 = sub_1000118E8(a1, a2);
        break;
      case 5507:
        v5 = sub_10001284C(a1, a2);
        break;
      default:
        goto LABEL_27;
    }
  }

  else
  {
    switch(v3)
    {
      case 5250:
        v5 = sub_100010BD4(a1, a2);
        break;
      case 5441:
        v5 = sub_1000154E8(a1, a2);
        break;
      case 5443:
        v5 = sub_100015DB8(a1, a2);
        break;
      default:
LABEL_27:
        v6 = sub_100008158(a1);
        sub_100046C2C(v4, 0, v6, 0, 0);
        return v4;
    }
  }

  v4 = v5;
  if (v5)
  {
    goto LABEL_27;
  }

  return v4;
}

uint64_t sub_100000F48(uint64_t a1, void *a2)
{
  result = 0;
  v5 = *(a1 + 56);
  v6 = 0xFFFFFFFFLL;
  if (v5 <= 6591)
  {
    switch(v5)
    {
      case 6369:
        v7 = sub_10001AB58(a1, a2);
        break;
      case 6371:
        v7 = sub_10001BB80(a1, a2);
        break;
      case 6384:
        return result;
      default:
        goto LABEL_19;
    }
  }

  else
  {
    if (v5 > 6639)
    {
      if (v5 != 6640 && v5 != 10240)
      {
        goto LABEL_19;
      }

      return result;
    }

    if (v5 == 6592)
    {
      v7 = sub_10001C028(a1, a2);
    }

    else
    {
      if (v5 != 6626)
      {
        goto LABEL_19;
      }

      v7 = sub_10001D92C(a1, a2);
    }
  }

  v6 = v7;
  if (v7)
  {
LABEL_19:
    if (dword_100090058)
    {
      v9 = ne_log_obj();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_1000541D0();
      }
    }

    if (v6 == -1)
    {
      sub_1000393B0();
    }

    sub_100018B60(*(a1 + 256), v6, 0);
LABEL_25:
    if (dword_100090058)
    {
      v10 = ne_log_obj();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_1000542E0();
      }
    }

    goto LABEL_28;
  }

  v11 = *(a1 + 80);
  if (v11)
  {
    sub_10003D4F0(v11);
    *(a1 + 80) = 0;
  }

  else if (*(a1 + 56) != 6593)
  {
    if (dword_100090058)
    {
      v14 = ne_log_obj();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        sub_1000542AC();
      }

      v6 = 0xFFFFFFFFLL;
      goto LABEL_25;
    }

    v6 = 0xFFFFFFFFLL;
    goto LABEL_28;
  }

  v12 = *(a1 + 68);
  if (v12)
  {
    sub_100038740(v12);
    *(a1 + 68) = 0;
  }

  if (*(a1 + 56) == 6344)
  {
    return 0;
  }

  result = sub_100001190(a1, a2);
  if (result)
  {
    v6 = result;
    if (dword_100090058)
    {
      v13 = ne_log_obj();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        sub_100054244();
      }

      goto LABEL_25;
    }

LABEL_28:
    sub_100048E58(a1);
    return v6;
  }

  return result;
}

uint64_t sub_100001190(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 56);
  if (v2 > 6594)
  {
    if (v2 == 6595)
    {
      return sub_10001DC78(a1, a2);
    }

    if (v2 != 6596)
    {
      if (v2 == 6608)
      {
        return sub_10001D148(a1, a2);
      }

      return 0xFFFFFFFFLL;
    }

    return sub_10001DFC4(a1);
  }

  else
  {
    if (v2 == 6338)
    {
      return sub_10001B70C(a1, a2);
    }

    if (v2 != 6352)
    {
      if (v2 == 6593)
      {
        return sub_10001D038(a1);
      }

      return 0xFFFFFFFFLL;
    }

    return sub_10001A4A4(a1, a2);
  }
}

void sub_100001208(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

char **sub_100001250(int a1)
{
  v1 = &off_10008C000;
  v2 = 5;
  while (*(v1 + 3) != a1)
  {
    v1 += 7;
    if (!--v2)
    {
      return 0;
    }
  }

  if (dword_100090058)
  {
    v3 = ne_log_obj();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      sub_100054314(v1);
    }
  }

  return v1;
}

uint64_t sub_1000012D0(int a1)
{
  v1 = &dword_10008C00C;
  v2 = 5;
  while (*(v1 - 1) != a1)
  {
    v1 += 14;
    if (!--v2)
    {
      return 0xFFFFFFFFLL;
    }
  }

  return *v1;
}

uint64_t sub_100001304(int a1)
{
  v1 = sub_100001250(a1);
  if (!v1)
  {
    return 0;
  }

  v2 = v1[5];
  if (!v2)
  {
    return 0;
  }

  return v2();
}

const char *sub_100001344(int a1)
{
  v1 = sub_100001250(a1);
  if (v1)
  {
    return *v1;
  }

  else
  {
    return "*UNKNOWN*";
  }
}

uint64_t sub_100001370(int a1, uint64_t a2)
{
  v3 = sub_100001250(a1);
  if (!v3 || !v3[5])
  {
    return 0;
  }

  v4 = v3[6];

  return (v4)(a2);
}

uint64_t sub_1000013C8(int a1)
{
  v1 = &dword_10008895C;
  v2 = 5;
  while (*(v1 - 1) != a1)
  {
    v1 += 14;
    if (!--v2)
    {
      return 0xFFFFFFFFLL;
    }
  }

  return *v1;
}

uint64_t sub_1000013FC(int a1, uint64_t a2, uint64_t a3)
{
  v5 = 5;
  for (i = &off_100088950; *(i + 3) != a1; i += 7)
  {
    if (!--v5)
    {
      return 0;
    }
  }

  if (dword_100090058)
  {
    v7 = ne_log_obj();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      sub_10005437C(i);
    }
  }

  v8 = i[6];
  if (v8)
  {
    return (v8)(a2, a3);
  }

  return 0;
}

char **sub_1000014C0(int a1)
{
  v1 = &off_10008C118;
  v2 = 3;
  while (*(v1 + 3) != a1)
  {
    v1 += 7;
    if (!--v2)
    {
      return 0;
    }
  }

  if (dword_100090058)
  {
    v3 = ne_log_obj();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      sub_1000543E4(v1);
    }
  }

  return v1;
}

uint64_t sub_100001540(int a1)
{
  v1 = &dword_10008C124;
  v2 = 3;
  while (*(v1 - 1) != a1)
  {
    v1 += 14;
    if (!--v2)
    {
      return 0xFFFFFFFFLL;
    }
  }

  return *v1;
}

uint64_t sub_100001574(int a1, uint64_t a2)
{
  v3 = sub_1000014C0(a1);
  if (!v3)
  {
    return 0xFFFFFFFFLL;
  }

  v4 = v3[6];
  if (!v4)
  {
    return 0xFFFFFFFFLL;
  }

  return (v4)(a2);
}

uint64_t sub_1000015C8(int a1)
{
  v1 = sub_1000014C0(a1);
  if (v1)
  {
    return *(v1 + 4);
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

const char *sub_1000015F0(int a1)
{
  v1 = sub_1000014C0(a1);
  if (v1)
  {
    return *v1;
  }

  else
  {
    return "*UNKNOWN*";
  }
}

uint64_t sub_10000161C(int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1000014C0(a1);
  if (!v7)
  {
    return 0;
  }

  v8 = v7[4];
  if (!v8)
  {
    return 0;
  }

  return (v8)(a2, a3, a4);
}

uint64_t sub_10000168C(int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1000014C0(a1);
  if (!v7)
  {
    return 0;
  }

  v8 = v7[3];
  if (!v8)
  {
    return 0;
  }

  return (v8)(a2, a3, a4);
}

uint64_t sub_1000016FC(int a1)
{
  v1 = &dword_100088A74;
  v2 = 6;
  while (*(v1 - 1) != a1)
  {
    v1 += 14;
    if (!--v2)
    {
      return 0xFFFFFFFFLL;
    }
  }

  return *v1;
}

uint64_t sub_100001730(int a1, uint64_t a2)
{
  v3 = 6;
  for (i = &off_100088A68; *(i + 3) != a1; i += 7)
  {
    if (!--v3)
    {
      return 0xFFFFFFFFLL;
    }
  }

  if (dword_100090058)
  {
    v5 = ne_log_obj();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      sub_1000543E4(i);
    }
  }

  v6 = i[6];
  if (v6)
  {
    return (v6)(a2);
  }

  return 0xFFFFFFFFLL;
}

uint64_t sub_1000017CC(int a1)
{
  v1 = &dword_100088BC4;
  v2 = 8;
  while (*(v1 - 1) != a1)
  {
    v1 += 14;
    if (!--v2)
    {
      return 0xFFFFFFFFLL;
    }
  }

  return *v1;
}

uint64_t sub_100001800(int a1)
{
  v1 = &off_100088BB8;
  v2 = 8;
  while (*(v1 + 3) != a1)
  {
    v1 += 7;
    if (!--v2)
    {
      return 0xFFFFFFFFLL;
    }
  }

  if (dword_100090058)
  {
    v3 = ne_log_obj();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      sub_10005437C(v1);
    }
  }

  v4 = v1[5];
  if (v4)
  {
    return v4();
  }

  return 0xFFFFFFFFLL;
}

uint64_t sub_10000188C(int a1)
{
  v1 = &dword_100088D84;
  v2 = 3;
  while (*(v1 - 1) != a1)
  {
    v1 += 4;
    if (!--v2)
    {
      return 0xFFFFFFFFLL;
    }
  }

  return *v1;
}

char **sub_1000018E0(int a1)
{
  v1 = &off_10008C1C0;
  v2 = 8;
  while (*(v1 + 3) != a1)
  {
    v1 += 3;
    if (!--v2)
    {
      return 0;
    }
  }

  if (dword_100090058)
  {
    v3 = ne_log_obj();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      sub_10005437C(v1);
    }
  }

  return v1;
}

uint64_t sub_100001960(int a1)
{
  v1 = &dword_10008C1CC;
  v2 = 8;
  while (*(v1 - 1) != a1)
  {
    v1 += 6;
    if (!--v2)
    {
      return 0xFFFFFFFFLL;
    }
  }

  return *v1;
}

char **sub_100001994(int a1)
{
  result = sub_1000018E0(a1);
  if (result)
  {
    return result[2];
  }

  return result;
}

const char *sub_1000019B4(int a1)
{
  v1 = sub_1000018E0(a1);
  if (v1)
  {
    return *v1;
  }

  else
  {
    return "*UNKNOWN*";
  }
}

uint64_t sub_1000019E0(int a1)
{
  v1 = &dword_100088DB4;
  v2 = 16;
  while (*(v1 - 1) != a1)
  {
    v1 += 4;
    if (!--v2)
    {
      return 0xFFFFFFFFLL;
    }
  }

  return *v1;
}

const char *sub_100001A14(int a1)
{
  v2 = &off_100088DA8;
  v3 = 16;
  result = "*UNKNOWN*";
  while (*(v2 + 3) != a1)
  {
    v2 += 2;
    if (!--v3)
    {
      return result;
    }
  }

  return *v2;
}

uint64_t sub_100001A50(int a1, int a2)
{
  if (a1 != 3 && a1 || (a2 - 4) > 9)
  {
    return 0;
  }

  else
  {
    return dword_10006CB00[a2 - 4];
  }
}

uint64_t sub_100001A80(int a1, int a2, int a3)
{
  if (a1 && a1 != 3)
  {
    if (dword_100090058)
    {
      v4 = ne_log_obj();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        sub_100054540();
      }
    }

    return 0xFFFFFFFFLL;
  }

  if (a2 > 0xD || ((1 << a2) & 0x30D0) == 0)
  {
    goto LABEL_22;
  }

  if ((a3 & 7) != 0)
  {
    if (dword_100090058)
    {
      v3 = ne_log_obj();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        sub_10005444C();
      }
    }

    return 0xFFFFFFFFLL;
  }

  if (a2 <= 6)
  {
    if (a2 != 4)
    {
      if (a2 == 6)
      {
        if ((a3 - 40) >= 0x59)
        {
          goto LABEL_34;
        }

        return 0;
      }

LABEL_22:
      if (a3)
      {
        if (dword_100090058)
        {
          v5 = ne_log_obj();
          if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
          {
            sub_100054500();
          }
        }

        return 0xFFFFFFFFLL;
      }

      return 0;
    }

    if ((a3 - 40) < 0x7D1)
    {
      return 0;
    }

LABEL_34:
    if (dword_100090058)
    {
      v7 = ne_log_obj();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        sub_1000544C0();
      }
    }

    return 0xFFFFFFFFLL;
  }

  if (a2 == 13)
  {
    if ((a3 - 40) >= 0xD9)
    {
      goto LABEL_34;
    }

    return 0;
  }

  if (a2 != 12)
  {
    if (a2 == 7)
    {
      if ((a3 - 40) >= 0x199)
      {
        goto LABEL_34;
      }

      return 0;
    }

    goto LABEL_22;
  }

  result = 0;
  if (a3 != 128 && a3 != 192 && a3 != 256)
  {
    goto LABEL_34;
  }

  return result;
}

uint64_t sub_100001C38(int a1, int a2)
{
  result = 0xFFFFFFFFLL;
  if (a1 <= 2)
  {
    if (a1)
    {
      if (a1 == 1)
      {
        v4 = &off_100088BB8;
        v11 = 8;
        while (*(v4 + 2) != a2)
        {
          v4 += 7;
          if (!--v11)
          {
            return 0xFFFFFFFFLL;
          }
        }
      }

      else
      {
        if (a1 != 2)
        {
          return result;
        }

        v4 = &off_100088D78;
        v6 = 3;
        while (*(v4 + 2) != a2)
        {
          v4 += 2;
          if (!--v6)
          {
            return 0xFFFFFFFFLL;
          }
        }
      }
    }

    else
    {
      v4 = &off_100088A68;
      v8 = 6;
      while (*(v4 + 2) != a2)
      {
        v4 += 7;
        if (!--v8)
        {
          return 0xFFFFFFFFLL;
        }
      }
    }
  }

  else if (a1 > 4)
  {
    if (a1 == 5)
    {
      v4 = &off_10008C1C0;
      v10 = 8;
      while (*(v4 + 2) != a2)
      {
        v4 += 3;
        if (!--v10)
        {
          return 0xFFFFFFFFLL;
        }
      }
    }

    else
    {
      if (a1 != 6)
      {
        return result;
      }

      v4 = &off_100088DA8;
      v7 = 16;
      while (*(v4 + 2) != a2)
      {
        v4 += 2;
        if (!--v7)
        {
          return 0xFFFFFFFFLL;
        }
      }
    }
  }

  else if (a1 == 3)
  {
    v4 = &off_10008C118;
    v9 = 3;
    while (*(v4 + 2) != a2)
    {
      v4 += 7;
      if (!--v9)
      {
        return 0xFFFFFFFFLL;
      }
    }
  }

  else
  {
    v4 = &off_10008C000;
    v5 = 5;
    while (*(v4 + 2) != a2)
    {
      v4 += 7;
      if (!--v5)
      {
        return 0xFFFFFFFFLL;
      }
    }
  }

  return *(v4 + 3);
}

uint64_t sub_100001DA8(unsigned int a1)
{
  if (a1 > 6)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return dword_10006CB28[a1];
  }
}

void sub_100001DC8(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

uint64_t *sub_100001DE4@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 8) = a2;
  v3 = *result;
  return result;
}

SecCertificateRef sub_100001E08(uint64_t a1)
{
  v1 = CFDataCreateWithBytesNoCopy(0, *(a1 + 8), *a1, kCFAllocatorNull);
  if (v1)
  {
    v2 = v1;
    v3 = SecCertificateCreateWithData(0, v1);
    CFRelease(v2);
    if (v3)
    {
      return v3;
    }
  }

  else
  {
    v3 = 0;
  }

  if (dword_100090058)
  {
    v4 = ne_log_obj();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1000545B4();
    }
  }

  return v3;
}

uint64_t sub_100001EA4()
{
  Current = CFAbsoluteTimeGetCurrent();
  if (Current != 0.0)
  {
    v1 = Current;
    if (SecCertificateIsValid())
    {
      if (dword_100090058)
      {
        v2 = ne_log_obj();
        if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Certificate expiration date is OK\n", buf, 2u);
        }
      }

      return 0;
    }

    v5 = CFDateCreate(0, v1);
    SecCertificateNotValidBefore();
    v7 = v6;
    if (v6 == 0.0)
    {
      v8 = 0;
    }

    else
    {
      v8 = CFDateCreate(0, v6);
    }

    SecCertificateNotValidAfter();
    v10 = v9;
    if (v9 == 0.0)
    {
      v11 = 0;
    }

    else
    {
      v11 = CFDateCreate(0, v9);
    }

    v20 = 0;
    v21 = 0;
    v19 = 0;
    v12 = CFCalendarCreateWithIdentifier(kCFAllocatorDefault, kCFGregorianCalendar);
    if (v12)
    {
      v13 = v12;
      if (v7 != 0.0)
      {
        CFCalendarDecomposeAbsoluteTime(v12, v7, "yMdHm", &v21 + 4, &v21, &v20 + 4, &v20, &v19);
        if (dword_100090058)
        {
          v14 = ne_log_obj();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
          {
            *buf = 67110144;
            v23 = HIDWORD(v21);
            v24 = 1024;
            v25 = v21;
            v26 = 1024;
            v27 = HIDWORD(v20);
            v28 = 1024;
            v29 = v20;
            v30 = 1024;
            v31 = v19;
            _os_log_debug_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "Certificate not valid before yr %d, mon %d, days %d, hours %d, min %d\n", buf, 0x20u);
          }
        }
      }

      if (v10 != 0.0)
      {
        CFCalendarDecomposeAbsoluteTime(v13, v10, "yMdHm", &v21 + 4, &v21, &v20 + 4, &v20, &v19);
        if (dword_100090058)
        {
          v15 = ne_log_obj();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
          {
            *buf = 67110144;
            v23 = HIDWORD(v21);
            v24 = 1024;
            v25 = v21;
            v26 = 1024;
            v27 = HIDWORD(v20);
            v28 = 1024;
            v29 = v20;
            v30 = 1024;
            v31 = v19;
            _os_log_debug_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "Certificate not valid after yr %d, mon %d, days %d, hours %d, min %d\n", buf, 0x20u);
          }
        }
      }

      CFRelease(v13);
    }

    if (!v5)
    {
      goto LABEL_36;
    }

    if (v8 && CFDateCompare(v5, v8, 0) == kCFCompareLessThan)
    {
      if (dword_100090058)
      {
        v18 = ne_log_obj();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          sub_10005461C();
        }
      }

      v3 = 1;
      goto LABEL_47;
    }

    if (v11 && CFDateCompare(v5, v11, 0) == kCFCompareGreaterThan)
    {
      if (dword_100090058)
      {
        v16 = ne_log_obj();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          sub_100054650();
        }
      }

      v3 = 2;
    }

    else
    {
LABEL_36:
      v3 = 0;
    }

    if (!v8)
    {
      if (!v11)
      {
        goto LABEL_40;
      }

      goto LABEL_39;
    }

LABEL_47:
    CFRelease(v8);
    if (!v11)
    {
LABEL_40:
      if (v5)
      {
        CFRelease(v5);
      }

      return v3;
    }

LABEL_39:
    CFRelease(v11);
    goto LABEL_40;
  }

  if (dword_100090058)
  {
    v4 = ne_log_obj();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1000545E8();
    }
  }

  return 5;
}

uint64_t sub_1000022C0(uint64_t a1, uint64_t a2, void *a3, SecKeyRef *a4)
{
  *keys = kSecPolicyName;
  values = a3;
  v7 = &dword_100090058;
  if (!a3)
  {
LABEL_11:
    v11 = SecPolicyCreateWithProperties(kSecPolicyAppleIPsec, 0);
    goto LABEL_12;
  }

  v8 = CFDictionaryCreate(0, keys, &values, 1, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = dword_100090058 == 0;
  }

  if (!v9)
  {
    v12 = ne_log_obj();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_100054684();
    }

    goto LABEL_11;
  }

  v10 = v8;
  v11 = SecPolicyCreateWithProperties(kSecPolicyAppleIPsec, v8);
  if (v10)
  {
    CFRelease(v10);
  }

LABEL_12:
  v14 = 0xFFFFFFFFLL;
  if (!a1 || !a2)
  {
    return v14;
  }

  v15 = 0;
  v16 = -1;
  v17 = a2;
  do
  {
    v17 = *(v17 + 40);
    ++v16;
    v15 += 8;
  }

  while (v17);
  if (v16)
  {
    if (dword_100090058)
    {
      v18 = ne_log_obj();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        sub_1000546B8(v16 + 1, v18);
      }
    }
  }

  Typed = CFAllocatorAllocateTyped();
  if (!Typed)
  {
    return 0xFFFFFFFFLL;
  }

  v20 = Typed;
  bzero(Typed, v15);
  v21 = sub_100001E08(a1 + 8);
  *v20 = v21;
  if (!v21)
  {
    v22 = 0;
    v23 = 0;
    do
    {
LABEL_36:
      if (a2 != a1)
      {
        v29 = sub_100001E08(a2 + 8);
        v20[v23] = v29;
        if (v29)
        {
          if (!*(a2 + 32))
          {
            v31 = sub_100001EA4();
            *(a2 + 32) = v31;
            if (v31)
            {
              v32 = v7;
              if (*v7)
              {
                v33 = ne_log_obj();
                if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
                {
                  v34 = *(a2 + 32);
                  *keys = 67109120;
                  *&keys[4] = v34;
                  _os_log_error_impl(&_mh_execute_header, v33, OS_LOG_TYPE_ERROR, "other certificate in chain failed date verification: %d.\n", keys, 8u);
                }
              }

              v7 = v32;
              if (!v22)
              {
                v22 = *(a2 + 32);
              }
            }
          }

          ++v23;
        }
      }

      a2 = *(a2 + 40);
      if (a2)
      {
        v30 = v23 <= v16;
      }

      else
      {
        v30 = 0;
      }
    }

    while (v30);
    goto LABEL_25;
  }

  if (*(a1 + 32))
  {
    v22 = 0;
  }

  else
  {
    v22 = sub_100001EA4();
    *(a1 + 32) = v22;
    if (v22)
    {
      if (dword_100090058)
      {
        v37 = ne_log_obj();
        v38 = os_log_type_enabled(v37, OS_LOG_TYPE_ERROR);
        v22 = *(a1 + 32);
        if (v38)
        {
          *keys = 67109120;
          *&keys[4] = v22;
          _os_log_error_impl(&_mh_execute_header, v37, OS_LOG_TYPE_ERROR, "host certificate failed date verification: %d.\n", keys, 8u);
          v22 = *(a1 + 32);
        }
      }
    }
  }

  v23 = 1;
  if (v16)
  {
    goto LABEL_36;
  }

LABEL_25:
  values = 0;
  result = kSecTrustResultInvalid;
  v24 = CFArrayCreate(0, v20, v23, &kCFTypeArrayCallBacks);
  if (!v24)
  {
    if (*v7)
    {
      v35 = ne_log_obj();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        sub_100054A40();
      }
    }

    goto LABEL_54;
  }

  v25 = v24;
  v26 = SecTrustCreateWithCertificates(v24, v11, &values);
  if (!v26)
  {
    v26 = SecTrustEvaluate(values, &result);
    if (!v26)
    {
      v39 = result;
      if (result == kSecTrustResultProceed || result == kSecTrustResultUnspecified)
      {
        v27 = 0;
        *a4 = SecTrustCopyPublicKey(values);
        goto LABEL_29;
      }

      if (*v7)
      {
        v40 = ne_log_obj();
        if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
        {
          sub_100054744();
        }

        v39 = result;
        v41 = *v7 == 0;
      }

      else
      {
        v41 = 1;
      }

      if (v39 <= kSecTrustResultDeny)
      {
        switch(v39)
        {
          case kSecTrustResultInvalid:
            if (!v41)
            {
              v45 = ne_log_obj();
              if (os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
              {
                sub_1000548B0();
              }
            }

            goto LABEL_112;
          case kSecTrustResultProceed:
            if (!v41)
            {
              v49 = ne_log_obj();
              if (os_log_type_enabled(v49, OS_LOG_TYPE_DEBUG))
              {
                sub_10005487C();
              }
            }

            goto LABEL_112;
          case kSecTrustResultDeny:
            if (!v41)
            {
              v43 = ne_log_obj();
              if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
              {
                sub_100054848();
              }
            }

            goto LABEL_112;
        }
      }

      else
      {
        if (v39 <= kSecTrustResultRecoverableTrustFailure)
        {
          if (v39 == kSecTrustResultUnspecified)
          {
            if (!v41)
            {
              v47 = ne_log_obj();
              if (os_log_type_enabled(v47, OS_LOG_TYPE_DEBUG))
              {
                sub_100054814();
              }
            }
          }

          else if (!v41)
          {
            v42 = ne_log_obj();
            if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
            {
              sub_1000547E0();
            }
          }

LABEL_112:
          v50 = SecTrustCopyProperties(values);
          if (v50)
          {
            v51 = v50;
            Count = CFArrayGetCount(v50);
            if (*v7)
            {
              v53 = ne_log_obj();
              if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
              {
                sub_100054960();
              }
            }

            if (Count >= 1)
            {
              v54 = 0;
              v71 = Count;
              do
              {
                ValueAtIndex = CFArrayGetValueAtIndex(v51, v54);
                if (ValueAtIndex)
                {
                  v56 = ValueAtIndex;
                  v57 = CFGetTypeID(ValueAtIndex);
                  if (v57 == CFDictionaryGetTypeID())
                  {
                    Value = CFDictionaryGetValue(v56, kSecPropertyKeyType);
                    if (Value)
                    {
                      v59 = Value;
                      v60 = CFGetTypeID(Value);
                      v9 = v60 == CFStringGetTypeID();
                      Count = v71;
                      if (v9)
                      {
                        CStringPtr = CFStringGetCStringPtr(v59, 0);
                        if (CStringPtr)
                        {
                          if (dword_100090058)
                          {
                            v62 = CStringPtr;
                            log = ne_log_obj();
                            if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
                            {
                              *keys = 136315138;
                              *&keys[4] = v62;
                              _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "type = %s.\n", keys, 0xCu);
                            }
                          }
                        }
                      }
                    }

                    v63 = CFDictionaryGetValue(v56, kSecPropertyKeyValue);
                    if (v63)
                    {
                      v64 = v63;
                      v65 = CFGetTypeID(v63);
                      v9 = v65 == CFStringGetTypeID();
                      Count = v71;
                      if (v9)
                      {
                        v66 = CFStringGetCStringPtr(v64, 0);
                        if (v66)
                        {
                          if (dword_100090058)
                          {
                            v67 = v66;
                            v68 = ne_log_obj();
                            if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
                            {
                              *keys = 136315138;
                              *&keys[4] = v67;
                              _os_log_error_impl(&_mh_execute_header, v68, OS_LOG_TYPE_ERROR, "value = %s.\n", keys, 0xCu);
                            }
                          }
                        }
                      }
                    }
                  }
                }

                ++v54;
              }

              while (Count != v54);
            }

            v7 = &dword_100090058;
            if (dword_100090058)
            {
              v69 = ne_log_obj();
              if (os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
              {
                sub_100054994();
              }
            }

            CFRelease(v51);
          }

          v27 = -1;
          goto LABEL_29;
        }

        if (v39 == kSecTrustResultFatalTrustFailure)
        {
          if (!v41)
          {
            v48 = ne_log_obj();
            if (os_log_type_enabled(v48, OS_LOG_TYPE_DEBUG))
            {
              sub_1000547AC();
            }
          }

          goto LABEL_112;
        }

        if (v39 == kSecTrustResultOtherError)
        {
          if (!v41)
          {
            v44 = ne_log_obj();
            if (os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
            {
              sub_100054778();
            }
          }

          goto LABEL_112;
        }
      }

      if (!v41)
      {
        v46 = ne_log_obj();
        if (os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG))
        {
          sub_1000548E4(&result, v46);
        }
      }

      goto LABEL_112;
    }
  }

  v27 = v26;
LABEL_29:
  CFRelease(v25);
  if (values)
  {
    CFRelease(values);
  }

  if (v27 - 1 > 0xFFFFFFFD)
  {
    goto LABEL_55;
  }

  if (*v7)
  {
    v28 = ne_log_obj();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      sub_1000549C8();
    }
  }

LABEL_54:
  v27 = -1;
LABEL_55:
  while (v23)
  {
    CFRelease(v20[--v23]);
  }

  CFAllocatorDeallocate(0, v20);
  if (v11)
  {
    CFRelease(v11);
  }

  if (v27 - 1 <= 0xFFFFFFFD)
  {
    if (*v7)
    {
      v36 = ne_log_obj();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        sub_100054A74();
      }
    }

    return 0xFFFFFFFFLL;
  }

  if ((v22 - 1) < 2)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return v27;
  }
}

const char *sub_100002AF8(int a1)
{
  switch(a1)
  {
    case -25318:
      result = "errSecCreateChainFailed";
      break;
    case -25317:
      result = "errSecDataNotModifiable";
      break;
    case -25316:
      result = "errSecDataNotAvailable";
      break;
    case -25315:
      result = "errSecInteractionRequired";
      break;
    case -25314:
      result = "errSecNoPolicyModule";
      break;
    case -25313:
      result = "errSecNoCertificateModule";
      break;
    case -25312:
      result = "errSecNoStorageModule";
      break;
    case -25311:
      result = "errSecKeySizeNotAllowed";
      break;
    case -25310:
      result = "errSecWrongSecVersion";
      break;
    case -25309:
      result = "errSecReadOnlyAttr";
      break;
    case -25308:
      result = "errSecInteractionNotAllowed";
      break;
    case -25307:
      result = "errSecNoDefaultKeychain";
      break;
    case -25306:
      result = "errSecNoSuchClass";
      break;
    case -25305:
      result = "errSecInvalidSearchRef";
      break;
    case -25304:
      result = "errSecInvalidItemRef";
      break;
    case -25303:
      result = "errSecNoSuchAttr";
      break;
    case -25302:
      result = "errSecDataTooLarge";
      break;
    case -25301:
      result = "errSecBufferTooSmall";
      break;
    case -25300:
      result = "errSecItemNotFound";
      break;
    case -25299:
      result = "errSecDuplicateItem";
      break;
    case -25298:
      result = "errSecInvalidCallback";
      break;
    case -25297:
      result = "errSecDuplicateCallback";
      break;
    case -25296:
      result = "errSecDuplicateKeychain";
      break;
    case -25295:
      result = "errSecInvalidKeychain";
      break;
    case -25294:
      result = "errSecNoSuchKeychain";
      break;
    case -25293:
      result = "errSecAuthFailed";
      break;
    case -25292:
      result = "errSecReadOnly";
      break;
    case -25291:
      result = "errSecNotAvailable";
      break;
    case -25290:
    case -25289:
    case -25288:
    case -25287:
    case -25286:
    case -25285:
    case -25284:
    case -25283:
    case -25282:
    case -25281:
    case -25280:
    case -25279:
    case -25278:
    case -25277:
    case -25276:
    case -25275:
    case -25274:
    case -25273:
    case -25272:
    case -25271:
    case -25270:
    case -25269:
    case -25268:
    case -25267:
    case -25266:
    case -25265:
    case -25264:
    case -25263:
    case -25262:
    case -25261:
    case -25260:
    case -25259:
    case -25258:
    case -25257:
    case -25256:
    case -25255:
    case -25254:
    case -25253:
    case -25252:
    case -25251:
    case -25250:
    case -25249:
    case -25248:
    case -25247:
    case -25246:
    case -25245:
      goto LABEL_5;
    case -25244:
      result = "errSecInvalidOwnerEdit";
      break;
    case -25243:
      result = "errSecNoAccessForItem";
      break;
    case -25242:
      result = "errSecInvalidTrustSetting";
      break;
    case -25241:
      result = "errSecPolicyNotFound";
      break;
    case -25240:
      result = "errSecACLNotSimple";
      break;
    default:
      if (a1)
      {
LABEL_5:
        result = "<unknown>";
      }

      else
      {
        result = "noErr";
      }

      break;
  }

  return result;
}

uint64_t sub_100002E0C(__SecKey *a1, uint64_t a2, uint64_t a3, int a4)
{
  if (a4)
  {
    v4 = 32770;
  }

  else
  {
    v4 = 1;
  }

  return SecKeyRawVerify(a1, v4, *(a2 + 8), *a2, *(a3 + 8), *a3);
}

size_t *sub_100002E2C(void *a1, uint64_t a2)
{
  privateKeyRef = 0;
  result = 0;
  keys[0] = kSecReturnRef;
  keys[1] = kSecValuePersistentRef;
  keys[2] = kSecClass;
  keys[3] = kSecUseSystemKeychain;
  values[0] = kCFBooleanTrue;
  values[1] = a1;
  values[2] = kSecClassIdentity;
  values[3] = kCFBooleanTrue;
  v3 = CFDictionaryCreate(0, keys, values, 4, 0, 0);
  v4 = v3;
  if (v3)
  {
    v5 = SecItemCopyMatching(v3, &result);
    if (v5 || (v5 = SecIdentityCopyPrivateKey(result, &privateKeyRef)) != 0)
    {
      v6 = v5;
      v7 = 0;
    }

    else
    {
      v7 = sub_10003D3A8(0x400uLL);
      if (v7)
      {
        v6 = SecKeyRawSign(privateKeyRef, 1u, *(a2 + 8), *a2, v7[1], v7);
      }

      else
      {
        v6 = 0;
      }
    }
  }

  else
  {
    v7 = 0;
    v6 = -1;
  }

  if (result)
  {
    CFRelease(result);
  }

  if (privateKeyRef)
  {
    CFRelease(privateKeyRef);
  }

  if (v4)
  {
    CFRelease(v4);
  }

  if (v7 && v6)
  {
    sub_10003D4F0(v7);
    v7 = 0;
  }

  if ((v6 + 1) >= 2)
  {
    if (dword_100090058)
    {
      v8 = ne_log_obj();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_100054AEC();
      }
    }
  }

  return v7;
}

void *sub_100002FF0(void *a1, _DWORD *a2)
{
  result = 0;
  certificateRef = 0;
  keys[0] = kSecReturnRef;
  keys[1] = kSecValuePersistentRef;
  keys[2] = kSecClass;
  keys[3] = kSecUseSystemKeychain;
  values[0] = kCFBooleanTrue;
  values[1] = a1;
  values[2] = kSecClassIdentity;
  values[3] = kCFBooleanTrue;
  v3 = CFDictionaryCreate(0, keys, values, 4, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  v4 = v3;
  if (!v3)
  {
    v7 = 0;
    v8 = 0;
    LODWORD(v6) = -1;
    goto LABEL_7;
  }

  v5 = SecItemCopyMatching(v3, &result);
  if (v5 || (v5 = SecIdentityCopyCertificate(result, &certificateRef)) != 0)
  {
    LODWORD(v6) = v5;
    v7 = 0;
LABEL_5:
    v8 = 0;
    goto LABEL_7;
  }

  v11 = SecCertificateCopyData(certificateRef);
  v7 = v11;
  if (v11)
  {
    Length = CFDataGetLength(v11);
    v6 = Length;
    if (!Length)
    {
      goto LABEL_5;
    }

    v13 = sub_10003D3A8(Length);
    v8 = v13;
    if (v13)
    {
      v18.location = 0;
      v18.length = v6;
      CFDataGetBytes(v7, v18, v13[1]);
      if (a2)
      {
        LODWORD(v6) = 0;
        *a2 = sub_100001EA4();
        goto LABEL_7;
      }
    }
  }

  else
  {
    v8 = 0;
  }

  LODWORD(v6) = 0;
LABEL_7:
  if (result)
  {
    CFRelease(result);
  }

  if (certificateRef)
  {
    CFRelease(certificateRef);
  }

  if (v4)
  {
    CFRelease(v4);
  }

  if (v7)
  {
    CFRelease(v7);
  }

  if ((v6 + 1) >= 2)
  {
    if (dword_100090058)
    {
      v9 = ne_log_obj();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_100054B64();
      }
    }
  }

  return v8;
}

void sub_10000320C(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 2u);
}

void sub_100003228(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x12u);
}

uint64_t *sub_100003254(CCOperation a1, CCAlgorithm a2, CCOptions a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v21 = 0;
  v12 = sub_10003D3A8(*a4);
  v13 = v12;
  if (v12)
  {
    v14 = CCCrypt(a1, a2, a3, *(a5 + 8), *a5, *(a6 + 8), *(a4 + 8), *a4, v12[1], *v12, &v21);
    if (v14)
    {
      if (dword_100090058)
      {
        v15 = v14;
        v16 = ne_log_obj();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          *buf = 67109632;
          v23 = a1;
          v24 = 1024;
          v25 = a2;
          v26 = 1024;
          LODWORD(v27) = v15;
          _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "crypt %d %d error. status %d.\n", buf, 0x14u);
        }
      }

      sub_10003D4F0(v13);
      return 0;
    }

    else if (*v13 != v21 && dword_100090058 != 0)
    {
      v18 = ne_log_obj();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v20 = *v13;
        *buf = 67109888;
        v23 = a1;
        v24 = 1024;
        v25 = a2;
        v26 = 2048;
        v27 = v20;
        v28 = 2048;
        v29 = v21;
        _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "crypt %d %d length mismatch. expected: %zd. got: %zd.\n", buf, 0x22u);
      }
    }
  }

  return v13;
}

uint64_t sub_100003470(int a1)
{
  if ((a1 & 0xFFFFFFBF) != 0)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 64;
  }
}

uint64_t sub_1000034C0(int a1)
{
  if (a1)
  {
    v1 = a1 == 192;
  }

  else
  {
    v1 = 1;
  }

  if (v1)
  {
    return 192;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t sub_10000350C(uint64_t result)
{
  HIDWORD(v2) = result;
  LODWORD(v2) = result;
  v1 = v2 >> 6;
  v3 = v1 - 2;
  if (v1)
  {
    v4 = -1;
  }

  else
  {
    v4 = 128;
  }

  if (v3 >= 3)
  {
    return v4;
  }

  else
  {
    return result;
  }
}

void *sub_100003548(uint64_t a1, uint64_t a2)
{
  v4 = malloc_type_malloc(0x180uLL, 0x10000400F47AF14uLL);
  CCHmacInit(v4, 4u, *(a1 + 8), *a1);
  CCHmacUpdate(v4, *(a2 + 8), *a2);

  return sub_100003614(v4);
}

CCHmacContext *sub_1000035BC(uint64_t a1)
{
  v2 = malloc_type_malloc(0x180uLL, 0x10000400F47AF14uLL);
  CCHmacInit(v2, 4u, *(a1 + 8), *a1);
  return v2;
}

void *sub_100003614(CCHmacContext *a1)
{
  v2 = sub_10003D3A8(0x40uLL);
  v3 = v2;
  if (v2)
  {
    CCHmacFinal(a1, v2[1]);
    *v3 = 64;
    free(a1);
  }

  return v3;
}

void *sub_100003664(uint64_t a1, uint64_t a2)
{
  v4 = malloc_type_malloc(0x180uLL, 0x10000400F47AF14uLL);
  CCHmacInit(v4, 3u, *(a1 + 8), *a1);
  CCHmacUpdate(v4, *(a2 + 8), *a2);

  return sub_100003730(v4);
}

CCHmacContext *sub_1000036D8(uint64_t a1)
{
  v2 = malloc_type_malloc(0x180uLL, 0x10000400F47AF14uLL);
  CCHmacInit(v2, 3u, *(a1 + 8), *a1);
  return v2;
}

void *sub_100003730(CCHmacContext *a1)
{
  v2 = sub_10003D3A8(0x30uLL);
  v3 = v2;
  if (v2)
  {
    CCHmacFinal(a1, v2[1]);
    *v3 = 48;
    free(a1);
  }

  return v3;
}

void *sub_100003780(uint64_t a1, uint64_t a2)
{
  v4 = malloc_type_malloc(0x180uLL, 0x10000400F47AF14uLL);
  CCHmacInit(v4, 2u, *(a1 + 8), *a1);
  CCHmacUpdate(v4, *(a2 + 8), *a2);

  return sub_10000384C(v4);
}

CCHmacContext *sub_1000037F4(uint64_t a1)
{
  v2 = malloc_type_malloc(0x180uLL, 0x10000400F47AF14uLL);
  CCHmacInit(v2, 2u, *(a1 + 8), *a1);
  return v2;
}

void *sub_10000384C(CCHmacContext *a1)
{
  v2 = sub_10003D3A8(0x20uLL);
  v3 = v2;
  if (v2)
  {
    CCHmacFinal(a1, v2[1]);
    *v3 = 32;
    free(a1);
  }

  return v3;
}

void *sub_10000389C(uint64_t a1, uint64_t a2)
{
  v4 = malloc_type_malloc(0x180uLL, 0x10000400F47AF14uLL);
  CCHmacInit(v4, 0, *(a1 + 8), *a1);
  CCHmacUpdate(v4, *(a2 + 8), *a2);

  return sub_100003968(v4);
}

CCHmacContext *sub_100003910(uint64_t a1)
{
  v2 = malloc_type_malloc(0x180uLL, 0x10000400F47AF14uLL);
  CCHmacInit(v2, 0, *(a1 + 8), *a1);
  return v2;
}

void *sub_100003968(CCHmacContext *a1)
{
  v2 = sub_10003D3A8(0x14uLL);
  v3 = v2;
  if (v2)
  {
    CCHmacFinal(a1, v2[1]);
    *v3 = 20;
    free(a1);
  }

  return v3;
}

void *sub_1000039B8(uint64_t a1, uint64_t a2)
{
  v4 = malloc_type_malloc(0x180uLL, 0x10000400F47AF14uLL);
  CCHmacInit(v4, 1u, *(a1 + 8), *a1);
  CCHmacUpdate(v4, *(a2 + 8), *a2);

  return sub_100003A84(v4);
}

CCHmacContext *sub_100003A2C(uint64_t a1)
{
  v2 = malloc_type_malloc(0x180uLL, 0x10000400F47AF14uLL);
  CCHmacInit(v2, 1u, *(a1 + 8), *a1);
  return v2;
}

void *sub_100003A84(CCHmacContext *a1)
{
  v2 = sub_10003D3A8(0x10uLL);
  v3 = v2;
  if (v2)
  {
    CCHmacFinal(a1, v2[1]);
    *v3 = 16;
    free(a1);
  }

  return v3;
}

void *sub_100003AD4(uint64_t a1, uint64_t a2)
{
  v4 = malloc_type_malloc(0x180uLL, 0x10000400F47AF14uLL);
  CCHmacInit(v4, 0, *(a1 + 8), *a1);
  CCHmacUpdate(v4, *(a2 + 8), *a2);

  return sub_100003BA0(v4);
}

CCHmacContext *sub_100003B48(uint64_t a1)
{
  v2 = malloc_type_malloc(0x180uLL, 0x10000400F47AF14uLL);
  CCHmacInit(v2, 0, *(a1 + 8), *a1);
  return v2;
}

void *sub_100003BA0(CCHmacContext *a1)
{
  v2 = malloc_type_malloc(0x14uLL, 0xE8EE6074uLL);
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = sub_10003D3A8(0xCuLL);
  if (v4)
  {
    CCHmacFinal(a1, v3);
    v5 = v4[1];
    v6 = *v3->ctx;
    *(v5 + 8) = v3->ctx[2];
    *v5 = v6;
    *v4 = 12;
    free(v3);
    v7 = a1;
  }

  else
  {
    v7 = v3;
  }

  free(v7);
  return v4;
}

void *sub_100003C3C(uint64_t a1, uint64_t a2)
{
  v4 = malloc_type_malloc(0x180uLL, 0x10000400F47AF14uLL);
  CCHmacInit(v4, 1u, *(a1 + 8), *a1);
  CCHmacUpdate(v4, *(a2 + 8), *a2);

  return sub_100003CFC(v4);
}

CCHmacContext *sub_100003CB0(uint64_t a1)
{
  v2 = malloc_type_malloc(0x180uLL, 0x10000400F47AF14uLL);
  CCHmacInit(v2, 1u, *(a1 + 8), *a1);
  return v2;
}

void *sub_100003CFC(CCHmacContext *a1)
{
  v2 = malloc_type_malloc(0x10uLL, 0x43F250E9uLL);
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = sub_10003D3A8(0xCuLL);
  if (v4)
  {
    CCHmacFinal(a1, v3);
    v5 = v4[1];
    v6 = *v3->ctx;
    *(v5 + 8) = v3->ctx[2];
    *v5 = v6;
    *v4 = 12;
    free(v3);
    v7 = a1;
  }

  else
  {
    v7 = v3;
  }

  free(v7);
  return v4;
}

CC_SHA512_CTX *sub_100003D98()
{
  v0 = malloc_type_malloc(0xD0uLL, 0x10000400F93440CuLL);
  CC_SHA512_Init(v0);
  return v0;
}

void *sub_100003DE8(CC_SHA512_CTX *a1)
{
  v2 = sub_10003D3A8(0x40uLL);
  v3 = v2;
  if (v2)
  {
    CC_SHA512_Final(v2[1], a1);
    free(a1);
  }

  return v3;
}

void *sub_100003E30(uint64_t a1)
{
  v2 = malloc_type_malloc(0xD0uLL, 0x10000400F93440CuLL);
  CC_SHA512_Init(v2);
  CC_SHA512_Update(v2, *(a1 + 8), *a1);

  return sub_100003DE8(v2);
}

CC_SHA512_CTX *sub_100003E9C()
{
  v0 = malloc_type_malloc(0xD0uLL, 0x10000400F93440CuLL);
  CC_SHA384_Init(v0);
  return v0;
}

void *sub_100003EEC(CC_SHA512_CTX *a1)
{
  v2 = sub_10003D3A8(0x30uLL);
  v3 = v2;
  if (v2)
  {
    CC_SHA384_Final(v2[1], a1);
    free(a1);
  }

  return v3;
}

void *sub_100003F34(uint64_t a1)
{
  v2 = malloc_type_malloc(0xD0uLL, 0x10000400F93440CuLL);
  CC_SHA384_Init(v2);
  CC_SHA384_Update(v2, *(a1 + 8), *a1);

  return sub_100003EEC(v2);
}

CC_SHA256_CTX *sub_100003FA0()
{
  v0 = malloc_type_malloc(0x68uLL, 0x1000040ED882C02uLL);
  CC_SHA256_Init(v0);
  return v0;
}

void *sub_100003FF0(CC_SHA256_CTX *a1)
{
  v2 = sub_10003D3A8(0x20uLL);
  v3 = v2;
  if (v2)
  {
    CC_SHA256_Final(v2[1], a1);
    free(a1);
  }

  return v3;
}

void *sub_100004038(uint64_t a1)
{
  v2 = malloc_type_malloc(0x68uLL, 0x1000040ED882C02uLL);
  CC_SHA256_Init(v2);
  CC_SHA256_Update(v2, *(a1 + 8), *a1);

  return sub_100003FF0(v2);
}

CC_SHA1_CTX *sub_1000040A4()
{
  v0 = malloc_type_malloc(0x60uLL, 0x1000040565EDBD2uLL);
  CC_SHA1_Init(v0);
  return v0;
}

void *sub_1000040F4(CC_SHA1_CTX *a1)
{
  v2 = sub_10003D3A8(0x14uLL);
  v3 = v2;
  if (v2)
  {
    CC_SHA1_Final(v2[1], a1);
    free(a1);
  }

  return v3;
}

void *sub_10000413C(uint64_t a1)
{
  v2 = malloc_type_malloc(0x60uLL, 0x1000040565EDBD2uLL);
  CC_SHA1_Init(v2);
  CC_SHA1_Update(v2, *(a1 + 8), *a1);

  return sub_1000040F4(v2);
}

CC_MD5_CTX *sub_1000041A8()
{
  v0 = malloc_type_malloc(0x5CuLL, 0x100004034A301B9uLL);
  CC_MD5_Init(v0);
  return v0;
}

void *sub_1000041F8(CC_MD5_CTX *a1)
{
  v2 = sub_10003D3A8(0x10uLL);
  v3 = v2;
  if (v2)
  {
    CC_MD5_Final(v2[1], a1);
    free(a1);
  }

  return v3;
}

void *sub_100004240(uint64_t a1)
{
  v2 = malloc_type_malloc(0x5CuLL, 0x100004034A301B9uLL);
  CC_MD5_Init(v2);
  CC_MD5_Update(v2, *(a1 + 8), *a1);

  return sub_1000041F8(v2);
}

void *sub_1000042AC(unsigned int a1)
{
  v1 = a1;
  v2 = sub_10003D3A8(a1);
  if (v2 && SecRandomCopyBytes(kSecRandomDefault, v1, v2[1]))
  {
    sub_10003D4F0(v2);
    return 0;
  }

  return v2;
}

uint64_t sub_100004308()
{
  v0 = sub_1000042AC(4u);
  v1 = *v0[1];
  sub_10003D4F0(v0);
  return v1;
}

void *sub_10000433C()
{
  result = malloc_type_calloc(0x10uLL, 1uLL, 0x3E04F4B1uLL);
  *result = 0;
  result[1] = result;
  return result;
}

void *sub_100004368(uint64_t *a1, uint64_t a2)
{
  result = malloc_type_calloc(0x18uLL, 1uLL, 0xBE46745AuLL);
  *result = a2;
  v5 = *a1;
  result[1] = *a1;
  if (v5)
  {
    v6 = (v5 + 16);
  }

  else
  {
    v6 = a1 + 1;
  }

  *v6 = result + 1;
  *a1 = result;
  result[2] = a1;
  return result;
}

void *sub_1000043CC(uint64_t a1, uint64_t a2)
{
  result = malloc_type_calloc(0x18uLL, 1uLL, 0x588AE326uLL);
  result[1] = 0;
  *result = a2;
  v5 = *(a1 + 8);
  result[2] = v5;
  *v5 = result;
  *(a1 + 8) = result + 1;
  return result;
}

uint64_t sub_100004420(void *a1, uint64_t (*a2)(void, uint64_t), uint64_t a3)
{
  v3 = *a1;
  if (!*a1)
  {
    return 0;
  }

  while (1)
  {
    result = a2(*v3, a3);
    if (result)
    {
      break;
    }

    v3 = v3[1];
    if (!v3)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_100004470(void *a1, void *a2)
{
  if (a1)
  {
    v2 = *a1;
    if (!a2)
    {
      if (!v2)
      {
        return 0;
      }

      return *v2;
    }
  }

  else
  {
    if (!a2)
    {
      return 0;
    }

    v2 = *a2;
    if (*a2)
    {
      v2 = v2[1];
    }
  }

  *a2 = v2;
  if (v2)
  {
    return *v2;
  }

  return 0;
}

void sub_1000044AC(char *a1, void (*a2)(void))
{
  v3 = a1 + 8;
  for (i = **(*(a1 + 1) + 8); i; i = **(*v3 + 8))
  {
    v6 = i[1];
    v7 = i[2];
    v8 = (v6 + 16);
    if (!v6)
    {
      v8 = v3;
    }

    *v8 = v7;
    *v7 = v6;
    if (a2)
    {
      a2(*i);
    }

    free(i);
  }

  free(a1);
}

void *sub_10000453C()
{
  v0 = qword_1000900B8;
  result = *(qword_1000900B8 + 120);
  if (result)
  {
    do
    {
      v2 = *result;
      sub_100004584(result);
      result = v2;
    }

    while (v2);
    v0 = qword_1000900B8;
  }

  *(v0 + 120) = 0;
  return result;
}

void sub_100004584(void *a1)
{
  v2 = a1[1];
  if (v2)
  {
    free(v2);
  }

  v3 = a1[5];
  if (v3)
  {
    free(v3);
  }

  free(a1);
}

uint64_t *sub_1000045D0(const sockaddr *a1, int a2)
{
  if (getnameinfo(a1, a1->sa_len, __s1, 0x401u, 0, 0, 2))
  {
    return 0;
  }

  for (i = *(qword_1000900B8 + 120); i; i = *i)
  {
    v5 = i[1];
    if (v5 && (a2 == 0) == (*(i + 8) == 0) && a1->sa_family == v5->sa_family)
    {
      if (getnameinfo(v5, v5->sa_len, __s2, 0x401u, 0, 0, 2))
      {
        return 0;
      }

      if (!strcmp(__s1, __s2))
      {
        break;
      }
    }
  }

  return i;
}

void sub_1000046F0()
{
  v34 = 0;
  if (getifaddrs(&v34))
  {
    if (dword_100090058)
    {
      v28 = ne_log_obj();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        sub_100054BDC(v28);
      }
    }

    goto LABEL_73;
  }

  for (i = *(qword_1000900B8 + 120); i; i = *i)
  {
    *(i + 9) = 0;
  }

  v1 = v34;
  if (!v34)
  {
    v27 = 0;
    goto LABEL_54;
  }

  do
  {
    ifa_addr = v1->ifa_addr;
    sa_family = ifa_addr->sa_family;
    if (sa_family != 30 && sa_family != 2)
    {
      goto LABEL_51;
    }

    ifa_name = v1->ifa_name;
    if (ifa_name)
    {
      if (strnstr(v1->ifa_name, "awdl", 0x10uLL) || strnstr(ifa_name, "llw", 0x10uLL))
      {
        goto LABEL_51;
      }

      v6 = v1->ifa_name;
      ifa_addr = v1->ifa_addr;
      sa_family = ifa_addr->sa_family;
    }

    if (sa_family != 2)
    {
      if (sa_family != 30)
      {
        goto LABEL_48;
      }

      v7 = socket(30, 2, 0);
      if (v7 == -1)
      {
        if (dword_100090058)
        {
          v21 = ne_log_obj();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
          {
            sub_100054D10(&v40, &v41);
          }
        }

        goto LABEL_48;
      }

      v8 = v7;
      if (fcntl(v7, 4, 4) == -1)
      {
        if (dword_100090058)
        {
          v9 = ne_log_obj();
          if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
          {
            sub_100054C70(&v35, v36, v9);
          }
        }
      }

      v56 = 0u;
      v57 = 0u;
      v54 = 0u;
      v55 = 0u;
      v52 = 0u;
      v53 = 0u;
      v50 = 0u;
      v51 = 0u;
      v48 = 0u;
      v49 = 0u;
      v46 = 0u;
      v47 = 0u;
      v44 = 0u;
      v45 = 0u;
      v43 = 0u;
      memset(buf, 0, sizeof(buf));
      __strlcpy_chk();
      v10 = *&ifa_addr->sa_data[10];
      *&buf[16] = *ifa_addr;
      *&buf[28] = v10;
      if (ioctl(v8, 0xC1206949uLL, buf) < 0)
      {
        if (dword_100090058)
        {
          v22 = ne_log_obj();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            sub_100054CB0(&v38, &v39);
          }
        }

        close(v8);
LABEL_48:
        if (dword_100090058)
        {
          v23 = ne_log_obj();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
          {
            v24 = v1->ifa_name;
            v25 = sub_10003A958(v1->ifa_addr);
            *buf = 136315394;
            *&buf[4] = v24;
            *&buf[12] = 2080;
            *&buf[14] = v25;
            _os_log_debug_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEBUG, "unsuitable address: %s %s\n", buf, 0x16u);
          }
        }

        goto LABEL_51;
      }

      close(v8);
      if ((buf[16] & 0x1D) != 0)
      {
        goto LABEL_48;
      }

      ifa_addr = v1->ifa_addr;
    }

    v11 = sub_1000045D0(ifa_addr, 0);
    if (v11)
    {
      v12 = v11;
      *(v11 + 9) = 1;
      v13 = sub_1000045D0(v1->ifa_addr, 1);
      if (v13)
      {
        *(v13 + 9) = 1;
        goto LABEL_51;
      }

      if (sub_10003DF20())
      {
        v20 = sub_100004C70(v12);
        if (v20)
        {
          goto LABEL_43;
        }

        if (dword_100090058)
        {
          v33 = ne_log_obj();
          if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_72;
          }
        }

        goto LABEL_73;
      }
    }

    else
    {
      v14 = sub_100004DAC();
      if (!v14)
      {
        if (dword_100090058)
        {
          v29 = ne_log_obj();
          if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
          {
            sub_100054E0C();
          }
        }

        goto LABEL_73;
      }

      v15 = v14;
      v16 = sub_10003A790(&v1->ifa_addr->sa_len);
      v15[1] = v16;
      if (!v16)
      {
        if (dword_100090058)
        {
          v30 = ne_log_obj();
          if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
          {
            sub_100054DD8();
          }
        }

        goto LABEL_73;
      }

      v17 = v16;
      v18 = strdup(v1->ifa_name);
      v15[5] = v18;
      if (!v18)
      {
        if (dword_100090058)
        {
          v31 = ne_log_obj();
          if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
          {
            sub_100054DA4();
          }
        }

        goto LABEL_73;
      }

      *(v15 + 9) = 1;
      if (getnameinfo(v17, v17->sa_len, v37, 0x401u, 0, 0, 2))
      {
        __strlcpy_chk();
      }

      if (dword_100090058)
      {
        v19 = ne_log_obj();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
        {
          v26 = v1->ifa_name;
          *buf = 136315394;
          *&buf[4] = v37;
          *&buf[12] = 2080;
          *&buf[14] = v26;
          _os_log_debug_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEBUG, "my interface: %s (%s)\n", buf, 0x16u);
        }
      }

      *v15 = *(qword_1000900B8 + 120);
      *(qword_1000900B8 + 120) = v15;
      if (sub_10003DF20())
      {
        v20 = sub_100004C70(v15);
        if (v20)
        {
LABEL_43:
          *(v20 + 8) = 1;
          goto LABEL_51;
        }

        if (dword_100090058)
        {
          v32 = ne_log_obj();
          if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
          {
LABEL_72:
            sub_100054D70();
          }
        }

LABEL_73:
        exit(1);
      }
    }

LABEL_51:
    v1 = v1->ifa_next;
  }

  while (v1);
  v27 = v34;
LABEL_54:
  freeifaddrs(v27);
}

void *sub_100004C70(__int128 *a1)
{
  v2 = malloc_type_calloc(1uLL, 0x30uLL, 0x1030040DBADB428uLL);
  if (!v2)
  {
    if (dword_100090058)
    {
      v9 = ne_log_obj();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_100054EA8();
      }
    }

    return 0;
  }

  v3 = v2;
  v4 = *a1;
  v5 = a1[2];
  v2[1] = a1[1];
  v2[2] = v5;
  *v2 = v4;
  v6 = sub_10003A790(*(a1 + 1));
  v3[1] = v6;
  if (!v6)
  {
    if (dword_100090058)
    {
      v10 = ne_log_obj();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_100054E74();
      }
    }

    goto LABEL_16;
  }

  v7 = *(a1 + 5);
  if (v7)
  {
    v8 = strdup(v7);
    v3[5] = v8;
    if (!v8)
    {
      if (dword_100090058)
      {
        v11 = ne_log_obj();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          sub_100054E40();
        }
      }

      free(v3[1]);
LABEL_16:
      free(v3);
      return 0;
    }
  }

  v3[3] = 0;
  *(v3 + 4) = -1;
  *v3 = *a1;
  *a1 = v3;
  return v3;
}

void *sub_100004DAC()
{
  v0 = malloc_type_calloc(1uLL, 0x30uLL, 0x1030040DBADB428uLL);
  v1 = v0;
  if (v0)
  {
    v0[3] = 0;
    *v0 = 0;
    v0[1] = 0;
    *(v0 + 4) = -1;
  }

  else if (dword_100090058)
  {
    v2 = ne_log_obj();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      sub_100054EA8();
    }
  }

  return v1;
}

uint64_t sub_100004E34()
{
  if (dword_100090058)
  {
    v0 = ne_log_obj();
    if (os_log_type_enabled(v0, OS_LOG_TYPE_DEBUG))
    {
      sub_100054EDC();
    }
  }

  v1 = *(qword_1000900B8 + 120);
  if (v1)
  {
    v2 = 0;
    do
    {
      if (*(v1 + 8))
      {
        v3 = 18;
      }

      else
      {
        v3 = 16;
      }

      sub_10003B444(v1[1], *(qword_1000900B8 + v3));
      ++v2;
      v1 = *v1;
    }

    while (v1);
  }

  if (dword_100090058)
  {
    v4 = ne_log_obj();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      sub_100054F18();
    }
  }

  return 0;
}

uint64_t sub_100004F10(unint64_t a1)
{
  v1 = *(qword_1000900B8 + 120);
  if (v1)
  {
    v3 = 0;
    do
    {
      v5 = v1 + 1;
      v4 = v1[1];
      if (v4 && !sub_100039414(a1, v4))
      {
        v6 = v1;
        if (!v3)
        {
          goto LABEL_6;
        }

        v7 = *(*v5 + 1);
        if (v7 == 30 || v7 == 2)
        {
          if (*(*v5 + 2) == 500)
          {
            v6 = v1;
          }

          else
          {
            v6 = v3;
          }

          goto LABEL_6;
        }

        if (dword_100090058)
        {
          v8 = ne_log_obj();
          if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
          {
            sub_100054F8C(v10, (v1 + 1), &v11, v8);
          }
        }
      }

      v6 = v3;
LABEL_6:
      v1 = *v1;
      v3 = v6;
    }

    while (v1);
  }

  return 62465;
}

void *sub_100005034(void *result, void *a2)
{
  *result = *a2;
  *a2 = result;
  return result;
}

uint64_t sub_100005044()
{
  sub_1000046F0();
  sub_100021B10();
  sub_100004E34();

  return sub_100020DB0();
}

uint64_t sub_100005074()
{
  if (!*(qword_1000900B8 + 120) && *(qword_1000900B8 + 112) == 1)
  {
    sub_1000046F0();
    sub_100004E34();
  }

  return 0;
}

uint64_t sub_1000050B8(unsigned __int8 *__s1)
{
  v2 = *(qword_1000900B8 + 120);
  if (v2)
  {
    v3 = 0;
    do
    {
      v4 = v2[1];
      if (v4)
      {
        if (__s1[1] == v4[1])
        {
          v5 = *__s1;
          v3 = v2;
          if (v5 == *v4)
          {
            v6 = memcmp(__s1, v4, v5);
            v3 = v2;
            if (!v6)
            {
              v3 = v2;
              return *(v3 + 4);
            }
          }
        }
      }

      v2 = *v2;
    }

    while (v2);
    if (!v3)
    {
      goto LABEL_9;
    }

    return *(v3 + 4);
  }

  else
  {
LABEL_9:
    if (dword_100090058)
    {
      v7 = ne_log_obj();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        sub_100054FE0(__s1, v7);
      }
    }

    return 0xFFFFFFFFLL;
  }
}

void sub_10000517C()
{
  memset(v5, 0, 512);
  while (1)
  {
    v0 = read(*(qword_1000900B8 + 36), v5, 0x45CuLL);
    if ((v0 & 0x80000000) == 0)
    {
      break;
    }

    if (*__error() != 4)
    {
      if (dword_100090058)
      {
        v1 = ne_log_obj();
        if (os_log_type_enabled(v1, OS_LOG_TYPE_DEBUG))
        {
          sub_100055110();
        }
      }

      return;
    }
  }

  if (v0 >= LOWORD(v5[0]))
  {
    if (BYTE3(v5[0]) <= 0xEu && ((1 << SBYTE3(v5[0])) & 0x7004) != 0)
    {
      if (dword_100090058)
      {
        v4 = ne_log_obj();
        if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
        {
          sub_10005505C(v5 + 3);
        }
      }

      sub_100005044();
    }
  }

  else if (dword_100090058)
  {
    v2 = ne_log_obj();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      sub_1000550D4();
    }
  }
}

uint64_t sub_100005340()
{
  v0 = socket(17, 3, 0);
  *(qword_1000900B8 + 36) = v0;
  if (v0 < 0)
  {
    if (dword_100090058)
    {
      v7 = ne_log_obj();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        sub_10005520C();
      }
    }
  }

  else
  {
    if (fcntl(v0, 4, 4) == -1 && dword_100090058 != 0)
    {
      v2 = ne_log_obj();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
      {
        sub_100055194();
      }
    }

    v3 = dispatch_source_create(&_dispatch_source_type_read, *(qword_1000900B8 + 36), 0, &_dispatch_main_q);
    *(qword_1000900B8 + 56) = v3;
    if (v3)
    {
      dispatch_source_set_event_handler_f(v3, sub_10000517C);
      v4 = *(qword_1000900B8 + 36);
      v5 = *(qword_1000900B8 + 56);
      handler[0] = _NSConcreteStackBlock;
      handler[1] = 0x40000000;
      handler[2] = sub_1000054E4;
      handler[3] = &unk_100088EA8;
      v10 = v4;
      dispatch_source_set_cancel_handler(v5, handler);
      dispatch_resume(*(qword_1000900B8 + 56));
      return 0;
    }

    if (dword_100090058)
    {
      v8 = ne_log_obj();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        sub_1000551D0();
      }
    }
  }

  return 0xFFFFFFFFLL;
}

void sub_1000054F8(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_error_impl(a1, v4, OS_LOG_TYPE_ERROR, a4, v5, 0xCu);
}

void sub_100005518(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

uint64_t sub_100005538(uint64_t a1, void *a2)
{
  if (a1)
  {

    return sub_1000055A8(a1, a2);
  }

  else
  {
    v4 = qword_100090070;
    if (qword_100090070)
    {
      while (1)
      {
        result = sub_1000055A8(v4, a2);
        if (result)
        {
          break;
        }

        v4 = *(v4 + 1712);
        if (!v4)
        {
          return 0;
        }
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1000055A8(uint64_t a1, void *a2)
{
  for (result = *(a1 + 1696); result; result = *(result + 456))
  {
    if ((*(result + 17) & 0x40) == 0 && *result == *a2 && *(result + 8) == a2[1])
    {
      break;
    }
  }

  return result;
}

uint64_t sub_1000055D8(uint64_t a1, void *a2)
{
  if (a1)
  {

    return sub_100005648(a1, a2);
  }

  else
  {
    v4 = qword_100090070;
    if (qword_100090070)
    {
      while (1)
      {
        result = sub_100005648(v4, a2);
        if (result)
        {
          break;
        }

        v4 = *(v4 + 1712);
        if (!v4)
        {
          return 0;
        }
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_100005648(uint64_t a1, void *a2)
{
  for (result = *(a1 + 1696); result; result = *(result + 456))
  {
    if ((*(result + 17) & 0x40) == 0 && *result == *a2)
    {
      break;
    }
  }

  return result;
}

uint64_t sub_100005674(uint64_t a1, const sockaddr *a2, const sockaddr *a3)
{
  if (dword_100090058)
  {
    v6 = ne_log_obj();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      sub_100055290();
    }

    if (dword_100090058)
    {
      v7 = ne_log_obj();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        sub_1000552C4(a2);
      }

      if (dword_100090058)
      {
        v8 = ne_log_obj();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
        {
          sub_10005534C(a3);
        }
      }
    }
  }

  v9 = *(a1 + 1696);
  if (v9)
  {
    while (1)
    {
      if ((*(v9 + 17) & 0x40) == 0)
      {
        if (dword_100090058)
        {
          v10 = ne_log_obj();
          if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
          {
            sub_1000553D4(v17, v9, &v18);
          }

          if (dword_100090058)
          {
            v11 = ne_log_obj();
            if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
            {
              sub_10005543C(v15, v9, &v16);
            }
          }
        }

        if (!sub_100039634(a2, *(v9 + 56)) && !sub_100039634(a3, *(v9 + 48)))
        {
          break;
        }
      }

      v9 = *(v9 + 456);
      if (!v9)
      {
        goto LABEL_21;
      }
    }

    if (dword_100090058)
    {
      v14 = ne_log_obj();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        sub_1000554A4();
      }
    }
  }

  else
  {
LABEL_21:
    if (dword_100090058)
    {
      v12 = ne_log_obj();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        sub_1000554D8();
      }
    }

    return 0;
  }

  return v9;
}

uint64_t sub_100005874(uint64_t a1, unint64_t a2, unint64_t a3)
{
  if (a1)
  {

    return sub_1000058FC(a1, a2, a3);
  }

  else
  {
    v6 = qword_100090070;
    if (qword_100090070)
    {
      while (1)
      {
        result = sub_1000058FC(v6, a2, a3);
        if (result)
        {
          break;
        }

        v6 = *(v6 + 1712);
        if (!v6)
        {
          return 0;
        }
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1000058FC(uint64_t a1, unint64_t a2, unint64_t a3)
{
  for (i = *(a1 + 1696); i; i = *(i + 456))
  {
    if ((*(i + 17) & 0x40) == 0 && !sub_100039414(a2, *(i + 56)) && !sub_100039414(a3, *(i + 48)))
    {
      break;
    }
  }

  return i;
}

uint64_t sub_100005964(uint64_t a1, unint64_t a2)
{
  for (i = *(a1 + 1696); i; i = *(i + 456))
  {
    if ((*(i + 17) & 0x40) == 0)
    {
      if (*(a2 + 1) == 2 && *(i + 28))
      {
        v4 = *(i + 48);
        nw_nat64_extract_v4();
        if (!*(a2 + 4))
        {
          return i;
        }
      }

      else if (!sub_100039414(a2, *(i + 48)))
      {
        return i;
      }
    }
  }

  return i;
}

uint64_t sub_1000059F8(uint64_t a1, unint64_t a2)
{
  if (a1)
  {

    return sub_100005964(a1, a2);
  }

  else
  {
    v4 = qword_100090070;
    if (qword_100090070)
    {
      while (1)
      {
        result = sub_100005964(v4, a2);
        if (result)
        {
          break;
        }

        v4 = *(v4 + 1712);
        if (!v4)
        {
          return 0;
        }
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_100005A68(uint64_t a1)
{
  v1 = *(*(a1 + 440) + 1696);
  if (!v1)
  {
    return 1;
  }

  while (1)
  {
    if ((*(v1 + 432) & 2) == 0 && (*(v1 + 17) & 0x40) == 0)
    {
      result = sub_100039634(*(a1 + 48), *(v1 + 48));
      if (v1 != a1 && !result)
      {
        break;
      }
    }

    v1 = *(v1 + 456);
    if (!v1)
    {
      return 1;
    }
  }

  return result;
}

_BYTE *sub_100005AC8(char a1)
{
  v2 = malloc_type_calloc(1uLL, 0x1D8uLL, 0x10A0040AC7A52B7uLL);
  v3 = v2;
  if (v2)
  {
    v2[80] = a1;
    *(v2 + 92) = 0;
    *(v2 + 47) = 0;
    *(v2 + 48) = 0;
    *(v2 + 98) = 0;
    v2[432] &= ~2u;
    if (dword_100090058)
    {
      v4 = ne_log_obj();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v6[0] = 0;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "New Phase 1\n", v6, 2u);
      }
    }
  }

  return v3;
}

void sub_100005B80(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 88);
    if (v2)
    {
      free(v2);
      *(a1 + 88) = 0;
    }

    if (*(a1 + 408))
    {
      sub_100042958(a1);
    }

    v3 = *(a1 + 424);
    if (v3)
    {
      sub_10003D4F0(v3);
      *(a1 + 424) = 0;
    }

    v4 = *(a1 + 388);
    if (v4)
    {
      sub_100038740(v4);
      *(a1 + 388) = 0;
    }

    v5 = *(a1 + 392);
    if (v5)
    {
      sub_100038740(v5);
      *(a1 + 392) = 0;
    }

    v6 = *(a1 + 48);
    if (v6)
    {
      free(v6);
      *(a1 + 48) = 0;
    }

    v7 = *(a1 + 56);
    if (v7)
    {
      free(v7);
      *(a1 + 56) = 0;
    }

    v8 = *(a1 + 72);
    if (v8)
    {
      sub_100036A04(v8);
      *(a1 + 72) = 0;
    }

    sub_100038794(a1);
    v9 = *(a1 + 112);
    if (v9)
    {
      sub_100038740(v9);
      *(a1 + 112) = 0;
    }

    v10 = *(a1 + 116);
    if (v10)
    {
      sub_100038740(v10);
      *(a1 + 116) = 0;
    }

    v11 = *(a1 + 120);
    if (v11)
    {
      sub_100038740(v11);
      *(a1 + 120) = 0;
    }

    v12 = *(a1 + 128);
    if (v12)
    {
      sub_10003D4F0(v12);
      *(a1 + 128) = 0;
    }

    v13 = *(a1 + 144);
    if (v13)
    {
      sub_10003D4F0(v13);
      *(a1 + 144) = 0;
    }

    v14 = *(a1 + 152);
    if (v14)
    {
      sub_10003D4F0(v14);
      *(a1 + 152) = 0;
    }

    v15 = *(a1 + 160);
    if (v15)
    {
      sub_10003D4F0(v15);
      *(a1 + 160) = 0;
    }

    v16 = *(a1 + 168);
    if (v16)
    {
      sub_10003D4F0(v16);
      *(a1 + 168) = 0;
    }

    v17 = *(a1 + 176);
    if (v17)
    {
      sub_10003D4F0(v17);
      *(a1 + 176) = 0;
    }

    v18 = *(a1 + 184);
    if (v18)
    {
      sub_10003D4F0(v18);
      *(a1 + 184) = 0;
    }

    v19 = *(a1 + 192);
    if (v19)
    {
      sub_10003D4F0(v19);
      *(a1 + 192) = 0;
    }

    v20 = *(a1 + 200);
    if (v20)
    {
      sub_10003D4F0(v20);
      *(a1 + 200) = 0;
    }

    v21 = *(a1 + 208);
    if (v21)
    {
      sub_10003D4F0(v21);
      *(a1 + 208) = 0;
    }

    v22 = *(a1 + 216);
    if (v22)
    {
      sub_10003D4F0(v22);
      *(a1 + 216) = 0;
    }

    v23 = *(a1 + 224);
    if (v23)
    {
      sub_10003D4F0(v23);
      *(a1 + 224) = 0;
    }

    v24 = *(a1 + 232);
    if (v24)
    {
      sub_10003D4F0(v24);
      *(a1 + 232) = 0;
    }

    v25 = *(a1 + 240);
    if (v25)
    {
      sub_10003D4F0(v25);
      *(a1 + 240) = 0;
    }

    v26 = *(a1 + 248);
    if (v26)
    {
      sub_10003D4F0(v26);
      *(a1 + 248) = 0;
    }

    v27 = *(a1 + 256);
    if (v27)
    {
      sub_10003D4F0(v27);
      *(a1 + 256) = 0;
    }

    v28 = *(a1 + 264);
    if (v28)
    {
      sub_10003D4F0(v28);
      *(a1 + 264) = 0;
    }

    v29 = *(a1 + 272);
    if (v29)
    {
      sub_10003D4F0(v29);
      *(a1 + 272) = 0;
    }

    sub_1000298D0(*(a1 + 280));
    *(a1 + 280) = 0;
    sub_1000298D0(*(a1 + 288));
    *(a1 + 288) = 0;
    sub_1000298D0(*(a1 + 296));
    *(a1 + 296) = 0;
    sub_1000298D0(*(a1 + 304));
    *(a1 + 304) = 0;
    v30 = *(a1 + 312);
    if (v30)
    {
      sub_10003D4F0(v30);
      *(a1 + 312) = 0;
    }

    v31 = *(a1 + 320);
    if (v31)
    {
      sub_10003D4F0(v31);
      *(a1 + 320) = 0;
    }

    v32 = *(a1 + 72);
    if (v32)
    {
      sub_100036A04(v32);
    }

    v33 = *(a1 + 328);
    if (v33)
    {
      sub_10002B6C4(v33);
      *(a1 + 328) = 0;
    }

    v34 = *(a1 + 336);
    if (v34)
    {
      sub_10003D4F0(v34);
      *(a1 + 336) = 0;
    }

    v35 = *(a1 + 344);
    if (v35)
    {
      sub_10003D4F0(v35);
      *(a1 + 344) = 0;
    }

    v36 = *(a1 + 64);
    if (v36)
    {
      sub_100036ACC(v36);
      *(a1 + 64) = 0;
    }

    if (*(a1 + 136))
    {
      SecDHDestroy();
    }

    free(a1);
  }
}

void sub_100005E3C(uint64_t a1, int a2)
{
  v2 = *(a1 + 1696);
  while (v2)
  {
    v4 = v2;
    v2 = *(v2 + 456);
    if (a2)
    {
      v5 = *(v4 + 440);
      if (v5 && (*(v5 + 264) & 0x20) == 0 && (*(v5 + 280) & 4) != 0)
      {
        if (!dword_100090058)
        {
          continue;
        }

        v12 = ne_log_obj();
        if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          continue;
        }

        v13 = sub_100021944(v4, 0);
        *buf = 136315138;
        v15 = v13;
        v8 = v12;
        v9 = "Skipping Phase 1 %s that's asserted...\n";
LABEL_23:
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, v9, buf, 0xCu);
        continue;
      }

      if ((*(v4 + 17) & 0x20) != 0)
      {
        if (sub_10004BE08(v5) || sub_10004BE84(*(v4 + 440)))
        {
          if (!dword_100090058)
          {
            continue;
          }

          v6 = ne_log_obj();
          if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
          {
            continue;
          }

          v7 = sub_100021944(v4, 0);
          *buf = 136315138;
          v15 = v7;
          v8 = v6;
          v9 = "Skipping Phase 1 %s that's established... because it's needed by children Phase 2s\n";
          goto LABEL_23;
        }

LABEL_13:
        if (dword_100090058)
        {
          v10 = ne_log_obj();
          if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
          {
            v11 = sub_100021944(v4, 0);
            *buf = 136315138;
            v15 = v11;
            _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Got a Phase 1 %s to flush...\n", buf, 0xCu);
          }
        }

        sub_100017EF4(v4);
      }
    }

    else if ((*(v4 + 17) & 0x20) != 0)
    {
      goto LABEL_13;
    }

    sub_10004B0C4(*(v4 + 440), off_10008C500[0]);
    sub_100048F2C(v4);
  }
}

uint64_t sub_100006050(int a1)
{
  if (dword_100090058)
  {
    v2 = ne_log_obj();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v5[0] = 67109120;
      v5[1] = a1;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Flushing Phase 1 handles: ignore_estab_or_assert %d...\n", v5, 8u);
    }
  }

  result = qword_100090070;
  if (qword_100090070)
  {
    do
    {
      v4 = *(result + 1712);
      sub_100005E3C(result, a1);
      result = v4;
    }

    while (v4);
  }

  return result;
}

uint64_t sub_100006120(int a1)
{
  v1 = qword_100090070;
  if (!qword_100090070)
  {
    return 0;
  }

  while (1)
  {
    v2 = *(v1 + 1704);
    if (v2)
    {
      break;
    }

LABEL_5:
    v1 = *(v1 + 1712);
    if (!v1)
    {
      return 0;
    }
  }

  while (*(v2 + 52) != a1)
  {
    v2 = *(v2 + 296);
    if (!v2)
    {
      goto LABEL_5;
    }
  }

  return v2;
}

uint64_t sub_100006160(int a1)
{
  v1 = qword_100090070;
  if (!qword_100090070)
  {
    return 0;
  }

  while (1)
  {
    v2 = *(v1 + 1704);
    if (v2)
    {
      break;
    }

LABEL_5:
    v1 = *(v1 + 1712);
    if (!v1)
    {
      return 0;
    }
  }

  while (*(v2 + 100) != a1)
  {
    v2 = *(v2 + 296);
    if (!v2)
    {
      goto LABEL_5;
    }
  }

  return v2;
}

uint64_t sub_1000061A0(uint64_t a1, int a2)
{
  for (result = *(*(a1 + 440) + 1704); result; result = *(result + 296))
  {
    if (*(result + 108) == a2 && (*(result + 264) & 4) == 0)
    {
      break;
    }
  }

  return result;
}

uint64_t sub_1000061CC(uint64_t a1)
{
  v1 = *(a1 + 448);
  if (!v1)
  {
    return 0;
  }

  if (*(v1 + 296))
  {
    return 0;
  }

  return *(a1 + 448);
}

uint64_t sub_1000061EC(unint64_t a1, unint64_t a2, int a3)
{
  v3 = qword_100090070;
  while (v3)
  {
    v7 = *(v3 + 1704);
    v3 = *(v3 + 1712);
    while (v7)
    {
      v8 = v7;
      v7 = *(v7 + 296);
      if (*(v8 + 52) == a3 && !sub_100039634(a1, *v8) && !sub_100039634(a2, *(v8 + 8)))
      {
        if ((*(v8 + 57) & 0x60) != 0 || *(v8 + 72) || *(v8 + 64) || *(v8 + 68) || *(v8 + 96))
        {
          return v8;
        }

        if (dword_100090058)
        {
          v9 = ne_log_obj();
          if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
          {
            *v11 = 0;
            _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Zombie ph2 found, expiring it\n", v11, 2u);
          }
        }

        sub_100022C1C(v8);
      }
    }
  }

  return 0;
}

void *sub_100006324(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v4 = qword_100090070;
  if (qword_100090070)
  {
    while (1)
    {
      result = *(v4 + 1704);
      if (result)
      {
        break;
      }

LABEL_17:
      v4 = *(v4 + 1712);
      if (!v4)
      {
        return 0;
      }
    }

    while (1)
    {
      v7 = result[15];
      v6 = result[16];
      if (v7)
      {
        if (v6)
        {
          goto LABEL_11;
        }

        for (i = *(v7 + 32); i; i = *(i + 72))
        {
          if (*i != a3)
          {
            break;
          }

          if (*(i + 24) == a4)
          {
            return result;
          }
        }
      }

      else if (v6)
      {
LABEL_11:
        v9 = *(v6 + 32);
        if (v9)
        {
          while (*v9 == a3)
          {
            if (*(v9 + 24) == a4 || *(v9 + 28) == a4)
            {
              return result;
            }

            v9 = *(v9 + 72);
            if (!v9)
            {
              break;
            }
          }
        }
      }

      result = result[37];
      if (!result)
      {
        goto LABEL_17;
      }
    }
  }

  return 0;
}

void *sub_1000063C4(uint64_t a1, uint64_t a2, int a3, int a4, _DWORD *a5)
{
  v5 = qword_100090070;
  if (qword_100090070)
  {
    while (1)
    {
      result = *(v5 + 1704);
      if (result)
      {
        break;
      }

LABEL_18:
      v5 = *(v5 + 1712);
      if (!v5)
      {
        return 0;
      }
    }

    while (1)
    {
      v8 = result[15];
      v7 = result[16];
      if (v8)
      {
        if (v7)
        {
          goto LABEL_12;
        }

        v9 = *(v8 + 32);
        if (v9)
        {
          while (*v9 == a3)
          {
            v10 = *(v9 + 24);
            if (v10 == a4)
            {
              goto LABEL_21;
            }

            if (*(v9 + 28) == a4)
            {
              goto LABEL_23;
            }

            v9 = *(v9 + 72);
            if (!v9)
            {
              break;
            }
          }
        }
      }

      else if (v7)
      {
LABEL_12:
        v9 = *(v7 + 32);
        if (v9)
        {
          while (1)
          {
            if (*v9 != a3)
            {
              goto LABEL_17;
            }

            v10 = *(v9 + 24);
            if (v10 == a4)
            {
              break;
            }

            if (*(v9 + 28) == a4)
            {
LABEL_23:
              if (!a5)
              {
                return result;
              }

              goto LABEL_24;
            }

            v9 = *(v9 + 72);
            if (!v9)
            {
              goto LABEL_17;
            }
          }

LABEL_21:
          if (!a5)
          {
            return result;
          }

          v10 = *(v9 + 28);
LABEL_24:
          *a5 = v10;
          return result;
        }
      }

LABEL_17:
      result = result[37];
      if (!result)
      {
        goto LABEL_18;
      }
    }
  }

  return 0;
}

_BYTE *sub_100006488(char a1, int a2)
{
  v4 = malloc_type_calloc(1uLL, 0x148uLL, 0x10A00406469B766uLL);
  v5 = v4;
  if (v4)
  {
    v4[61] = a1;
    *(v4 + 12) = a2;
    v4[264] &= ~2u;
    if (dword_100090058)
    {
      v6 = ne_log_obj();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v8[0] = 0;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "New Phase 2\n", v8, 2u);
      }
    }
  }

  return v5;
}

void sub_100006544(uint64_t a1)
{
  sub_100038794(a1);
  *(a1 + 64) = 0;
  v2 = *(a1 + 80);
  if (v2)
  {
    sub_10003D4F0(v2);
    *(a1 + 80) = 0;
  }

  v3 = *(a1 + 88);
  if (v3)
  {
    sub_10003D4F0(v3);
    *(a1 + 88) = 0;
  }

  v4 = *(a1 + 120);
  if (v4)
  {
    for (i = *(v4 + 32); i; i = *(i + 72))
    {
      *(i + 24) = 0;
    }
  }

  v6 = *(a1 + 128);
  if (v6)
  {
    sub_100033F8C(v6);
    *(a1 + 128) = 0;
  }

  v7 = *(a1 + 136);
  if (v7)
  {
    sub_100032D44(v7);
    free(*(a1 + 136));
    *(a1 + 136) = 0;
  }

  v8 = *(a1 + 152);
  if (v8)
  {
    sub_1000271B4(v8);
    *(a1 + 152) = 0;
  }

  v9 = *(a1 + 160);
  if (v9)
  {
    sub_10003D4F0(v9);
    *(a1 + 160) = 0;
  }

  v10 = *(a1 + 168);
  if (v10)
  {
    sub_10003D4F0(v10);
    *(a1 + 168) = 0;
  }

  v11 = *(a1 + 176);
  if (v11)
  {
    sub_10003D4F0(v11);
    *(a1 + 176) = 0;
  }

  v12 = *(a1 + 184);
  if (v12)
  {
    sub_10003D4F0(v12);
    *(a1 + 184) = 0;
  }

  v13 = *(a1 + 192);
  if (v13)
  {
    sub_10003D4F0(v13);
    *(a1 + 192) = 0;
  }

  v14 = *(a1 + 200);
  if (v14)
  {
    sub_10003D4F0(v14);
    *(a1 + 200) = 0;
  }

  v15 = *(a1 + 208);
  if (v15)
  {
    sub_10003D4F0(v15);
    *(a1 + 208) = 0;
  }

  v16 = *(a1 + 216);
  if (v16)
  {
    sub_10003D4F0(v16);
    *(a1 + 216) = 0;
  }

  v17 = *(a1 + 224);
  if (v17)
  {
    sub_10003D4F0(v17);
    *(a1 + 224) = 0;
  }

  v18 = *(a1 + 232);
  if (v18)
  {
    sub_10003D4F0(v18);
    *(a1 + 232) = 0;
  }

  v19 = *(a1 + 240);
  if (v19)
  {
    sub_10002B6C4(v19);
    *(a1 + 240) = 0;
  }
}

void sub_100006690(uint64_t a1)
{
  sub_100006544(a1);
  if (*a1)
  {
    free(*a1);
    *a1 = 0;
  }

  v2 = *(a1 + 8);
  if (v2)
  {
    free(v2);
    *(a1 + 8) = 0;
  }

  v3 = *(a1 + 32);
  if (v3)
  {
    free(v3);
    *(a1 + 32) = 0;
  }

  v4 = *(a1 + 40);
  if (v4)
  {
    free(v4);
    *(a1 + 40) = 0;
  }

  v5 = *(a1 + 120);
  if (v5)
  {
    sub_100033F8C(v5);
    *(a1 + 120) = 0;
  }

  v6 = *(a1 + 112);
  if (v6)
  {
    sub_1000382F8(v6);
    *(a1 + 112) = 0;
  }

  v7 = *(a1 + 192);
  if (v7)
  {
    sub_10003D4F0(v7);
    *(a1 + 192) = 0;
  }

  v8 = *(a1 + 200);
  if (v8)
  {
    sub_10003D4F0(v8);
    *(a1 + 200) = 0;
  }

  v9 = *(a1 + 280);
  if (v9)
  {
    sub_10003D4F0(v9);
    *(a1 + 280) = 0;
  }

  v10 = *(a1 + 288);
  if (v10)
  {
    sub_10003D4F0(v10);
    *(a1 + 288) = 0;
  }

  v11 = *(a1 + 64);
  if (v11)
  {
    sub_100038740(v11);
    *(a1 + 64) = 0;
  }

  v12 = *(a1 + 68);
  if (v12)
  {
    sub_100038740(v12);
  }

  free(a1);
}

void sub_100006784(uint64_t a1, int a2)
{
  v2 = *(a1 + 1704);
  while (v2)
  {
    v4 = v2;
    v2 = *(v2 + 296);
    if ((*(v4 + 264) & 2) != 0)
    {
      continue;
    }

    v5 = *(v4 + 56);
    if ((v5 & 0x4000) != 0)
    {
      continue;
    }

    if (a2)
    {
      v6 = *(v4 + 272);
      if (v6 && (*(v6 + 264) & 0x20) == 0 && (*(v6 + 280) & 4) != 0)
      {
        if (!dword_100090058)
        {
          continue;
        }

        v14 = ne_log_obj();
        if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          continue;
        }

        *buf = 0;
        v9 = v14;
        v10 = "skipping phase2 handle that's asserted...\n";
LABEL_26:
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, v10, buf, 2u);
        continue;
      }

      v7 = dword_100090058;
      if ((v5 & 0x2000) != 0)
      {
        if (!dword_100090058)
        {
          continue;
        }

        v8 = ne_log_obj();
        if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          continue;
        }

        *buf = 0;
        v9 = v8;
        v10 = "skipping ph2 handler that's established...\n";
        goto LABEL_26;
      }
    }

    else
    {
      v7 = dword_100090058;
      if ((v5 & 0x2000) != 0)
      {
        if (dword_100090058)
        {
          v13 = ne_log_obj();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "got an established ph2 handler to flush...\n", buf, 2u);
          }
        }

        sub_100018460(v4);
        goto LABEL_20;
      }
    }

    if (v7)
    {
      v11 = ne_log_obj();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = *(v4 + 56);
        *buf = 67109120;
        v16 = v12;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "got a ph2 handler to flush (state %d)\n", buf, 8u);
      }
    }

LABEL_20:
    sub_10004B0C4(*(v4 + 272), off_10008C500[0]);
    sub_1000247FC(v4);
    sub_100048E58(v4);
  }
}

uint64_t sub_1000069A4(int a1)
{
  if (dword_100090058)
  {
    v2 = ne_log_obj();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v5[0] = 67109120;
      v5[1] = a1;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "flushing ph2 handles: ignore_estab_or_assert %d...\n", v5, 8u);
    }
  }

  result = qword_100090070;
  if (qword_100090070)
  {
    do
    {
      v4 = *(result + 1712);
      sub_100006784(result, a1);
      result = v4;
    }

    while (v4);
  }

  return result;
}

uint64_t sub_100006A74(uint64_t result, unint64_t a2, int a3)
{
  v3 = qword_100090070;
  if (qword_100090070)
  {
    v6 = result;
    do
    {
      v7 = *(v3 + 1704);
      v3 = *(v3 + 1712);
LABEL_4:
      while (v7)
      {
        v8 = v7;
        v7 = *(v7 + 296);
        if ((*(v8 + 264) & 2) == 0 && (*(v8 + 57) & 0x40) == 0 && (*(v8 + 120) || *(v8 + 128)))
        {
          result = sub_100039414(v6, *v8);
          if (!result)
          {
            result = sub_100039414(a2, *(v8 + 8));
            if (!result)
            {
              v9 = *(v8 + 128);
              if (v9)
              {
                v10 = *(v9 + 32);
                if (v10)
                {
                  while (*v10 != a3)
                  {
                    v10 = *(v10 + 72);
                    if (!v10)
                    {
                      goto LABEL_4;
                    }
                  }

                  goto LABEL_21;
                }
              }

              else
              {
                v11 = *(v8 + 120);
                if (v11)
                {
                  v12 = *(v11 + 32);
                  if (v12)
                  {
                    while (*v12 != a3)
                    {
                      v12 = *(v12 + 72);
                      if (!v12)
                      {
                        goto LABEL_4;
                      }
                    }

LABEL_21:
                    if (dword_100090058)
                    {
                      v13 = ne_log_obj();
                      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
                      {
                        *v14 = 0;
                        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "deleteallph2: got a ph2 handler...\n", v14, 2u);
                      }
                    }

                    if ((*(v8 + 57) & 0x20) != 0)
                    {
                      sub_100018460(v8);
                    }

                    sub_10004B0C4(*(v8 + 272), off_10008C500[0]);
                    result = sub_100048E58(v8);
                  }
                }
              }
            }
          }
        }
      }
    }

    while (v3);
  }

  return result;
}

uint64_t sub_100006BFC(uint64_t result, unint64_t a2)
{
  v2 = qword_100090070;
  if (qword_100090070)
  {
    v4 = result;
    do
    {
      v5 = *(v2 + 1696);
      v2 = *(v2 + 1712);
      while (v5)
      {
        v6 = v5;
        v5 = *(v5 + 456);
        result = sub_100039414(v4, *(v6 + 56));
        if (!result)
        {
          result = sub_100039414(a2, *(v6 + 48));
          if (!result)
          {
            if (dword_100090058)
            {
              v7 = ne_log_obj();
              if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
              {
                *v8 = 0;
                _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "deleteallph1: got a ph1 handler...\n", v8, 2u);
              }
            }

            if ((*(v6 + 17) & 0x20) != 0)
            {
              sub_100017EF4(v6);
            }

            sub_10004B0C4(*(v6 + 440), off_10008C500[0]);
            result = sub_100048F2C(v6);
          }
        }
      }
    }

    while (v2);
  }

  return result;
}

unint64_t *sub_100006D14(unint64_t a1)
{
  v1 = qword_10008C538;
  if (qword_10008C538)
  {
    do
    {
      if (!sub_100039634(a1, *v1))
      {
        break;
      }

      v1 = v1[1];
    }

    while (v1);
  }

  return v1;
}

uint64_t sub_100006D5C(unsigned __int8 *a1)
{
  v2 = malloc_type_calloc(1uLL, 0x18uLL, 0xA0040E93CF5C4uLL);
  if (!v2)
  {
    return 0xFFFFFFFFLL;
  }

  v3 = v2;
  v4 = sub_10003A790(a1);
  *v3 = v4;
  if (!v4)
  {
    if (dword_100090058)
    {
      v7 = ne_log_obj();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        sub_10005550C();
      }
    }

    free(v3);
    return 0xFFFFFFFFLL;
  }

  v5 = qword_10008C538;
  v3[1] = qword_10008C538;
  if (v5)
  {
    *(v5 + 16) = v3 + 1;
  }

  result = 0;
  qword_10008C538 = v3;
  v3[2] = &qword_10008C538;
  return result;
}

void sub_100006E1C()
{
  v0 = qword_10008C538;
  if (qword_10008C538)
  {
    v1 = *(qword_10008C538 + 8);
    v2 = *(qword_10008C538 + 16);
    if (v1)
    {
      do
      {
        v3 = v1;
        *(v1 + 16) = v2;
        *v2 = v1;
        free(*v0);
        free(v0);
        v1 = *(v3 + 8);
        v2 = *(v3 + 16);
        v0 = v3;
      }

      while (v1);
    }

    else
    {
      v3 = qword_10008C538;
    }

    *v2 = 0;
    free(*v3);

    free(v3);
  }
}

uint64_t sub_100006EB4(int a1, int a2)
{
  if (a1 < 4)
  {
    v2 = 1;
  }

  else
  {
    v2 = a1;
  }

  return v2 * a2;
}

uint64_t sub_100006EC8(const sockaddr *a1, uint64_t a2, uint64_t a3)
{
  v5 = time(0);
  v6 = sub_100004240(a3);
  if (!v6)
  {
    if (dword_100090058)
    {
      v11 = ne_log_obj();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_10005550C();
      }
    }

    return 0xFFFFFFFFLL;
  }

  v7 = v6;
  v8 = qword_10008C540;
  if (!qword_10008C540)
  {
LABEL_6:
    sub_10003D4F0(v7);
    return 0;
  }

  v9 = v6[1];
  while (memcmp(v9, *(*(v8 + 16) + 8), **(v8 + 16)))
  {
    v8 = *(v8 + 72);
    if (!v8)
    {
      goto LABEL_6;
    }
  }

  sub_10003D4F0(v7);
  if (sub_100039414(a1, *v8))
  {
    return 2;
  }

  if (v5 <= *(v8 + 40))
  {
    if (dword_100090058)
    {
      v12 = ne_log_obj();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v29 = 136315138;
        v30 = sub_10003A5E8(a1);
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "the packet retransmitted in a short time from %s\n", &v29, 0xCu);
      }
    }
  }

  result = sub_1000050B8(*(v8 + 8));
  if (result != -1)
  {
    v13 = result;
    v14 = *(v8 + 40);
    if (v14)
    {
      v15 = v5 - v14;
      if (v5 > v14 && v15 < *(v8 + 56))
      {
        if (dword_100090058)
        {
          v16 = ne_log_obj();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            sub_100055644(v15, v16);
          }
        }

        return 1;
      }
    }

    if (*(v8 + 64) && **(v8 + 24) >= 0x501uLL)
    {
      if (dword_100090058)
      {
        v17 = ne_log_obj();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          sub_100055540();
        }
      }

      v18 = sub_100013170(v13, *(v8 + 24), *(v8 + 8), *v8, *(qword_1000900B8 + 276), *(v8 + 64));
    }

    else
    {
      if (dword_100090058)
      {
        v19 = ne_log_obj();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          sub_100055574((v8 + 64), v8);
        }
      }

      v18 = sub_100039E78(v13, *(*(v8 + 24) + 8), **(v8 + 24), *(v8 + 8), *v8, *(qword_1000900B8 + 276));
    }

    if (v18 != -1)
    {
      v20 = *(v8 + 32);
      v21 = __OFSUB__(v20, 1);
      v22 = v20 - 1;
      *(v8 + 32) = v22;
      if ((v22 < 0) ^ v21 | (v22 == 0))
      {
        v23 = *(v8 + 72);
        v24 = *(v8 + 80);
        if (v23)
        {
          *(v23 + 80) = v24;
        }

        *v24 = v23;
        sub_100007254(v8);
        if (dword_100090058)
        {
          v25 = ne_log_obj();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
          {
            v26 = sub_10003A5E8(a1);
            v29 = 136315138;
            v30 = v26;
            _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "deleted the retransmission packet to %s.\n", &v29, 0xCu);
          }
        }
      }

      else
      {
        *(v8 + 40) = v5;
        v28 = *(qword_1000900B8 + 268) - v22;
        if (v28 < 4)
        {
          v28 = 1;
        }

        *(v8 + 56) = *(qword_1000900B8 + 272) * v28;
      }

      return 1;
    }

    if (dword_100090058)
    {
      v27 = ne_log_obj();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        sub_100055610();
      }
    }

    return 0xFFFFFFFFLL;
  }

  return result;
}

void sub_100007254(void **a1)
{
  v2 = *a1;
  if (v2)
  {
    free(v2);
  }

  v3 = a1[1];
  if (v3)
  {
    free(v3);
  }

  v4 = a1[2];
  if (v4)
  {
    sub_10003D4F0(v4);
  }

  v5 = a1[3];
  if (v5)
  {
    sub_10003D4F0(v5);
  }

  free(a1);
}

uint64_t sub_1000072B8(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  if (!*(qword_1000900B8 + 268))
  {
    return 0;
  }

  v12 = malloc_type_calloc(1uLL, 0x58uLL, 0x10A0040B33E3A73uLL);
  if (!v12)
  {
    if (dword_100090058)
    {
      v21 = ne_log_obj();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        sub_10005550C();
      }
    }

    return 0xFFFFFFFFLL;
  }

  v13 = v12;
  v14 = sub_100004240(a4);
  *(v13 + 16) = v14;
  if (!v14)
  {
    if (!dword_100090058)
    {
      goto LABEL_39;
    }

    v22 = ne_log_obj();
    if (!os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_39;
    }

    goto LABEL_38;
  }

  v15 = sub_10003A790(a1);
  *v13 = v15;
  if (!v15)
  {
    if (!dword_100090058)
    {
      goto LABEL_39;
    }

    v23 = ne_log_obj();
    if (!os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_39;
    }

    goto LABEL_38;
  }

  v16 = sub_10003A790(a2);
  *(v13 + 8) = v16;
  if (!v16)
  {
    if (!dword_100090058)
    {
      goto LABEL_39;
    }

    v24 = ne_log_obj();
    if (!os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_39;
    }

    goto LABEL_38;
  }

  if (!a5)
  {
    v25 = sub_10003D538(a3);
    *(v13 + 24) = v25;
    if (v25)
    {
      goto LABEL_26;
    }

    if (!dword_100090058)
    {
      goto LABEL_39;
    }

    v32 = ne_log_obj();
    if (!os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_39;
    }

LABEL_38:
    sub_10005550C();
LABEL_39:
    sub_100007254(v13);
    return 0xFFFFFFFFLL;
  }

  if (dword_100090058)
  {
    v17 = ne_log_obj();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      sub_1000556BC();
    }
  }

  v18 = sub_10003D3A8(*a3 + a5);
  *(v13 + 24) = v18;
  if (!v18)
  {
    if (dword_100090058)
    {
      v31 = ne_log_obj();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        sub_1000556F0();
      }
    }

    goto LABEL_39;
  }

  v19 = v18[1];
  *v19 = 0;
  memcpy(v19 + a5, *(a3 + 8), *a3);
LABEL_26:
  *(v13 + 32) = *(qword_1000900B8 + 268);
  *(v13 + 40) = 0;
  *(v13 + 48) = time(0);
  if (a6)
  {
    *(v13 + 64) = a6;
  }

  v26 = qword_1000900B8;
  v27 = *(qword_1000900B8 + 268);
  v28 = qword_10008C540;
  *(v13 + 72) = qword_10008C540;
  v29 = v27 - *(v13 + 32);
  v30 = *(v26 + 272);
  if (v29 < 4)
  {
    v29 = 1;
  }

  *(v13 + 56) = v30 * v29;
  if (v28)
  {
    *(v28 + 80) = v13 + 72;
  }

  result = 0;
  qword_10008C540 = v13;
  *(v13 + 80) = &qword_10008C540;
  return result;
}

uint64_t sub_100007580()
{
  v1 = qword_10008C540;
  if (qword_10008C540)
  {
    v2 = *(qword_10008C540 + 72);
    v3 = *(qword_10008C540 + 80);
    if (v2)
    {
      do
      {
        v4 = v2;
        *(v2 + 80) = v3;
        *v3 = v2;
        sub_100007254(v1);
        v2 = *(v4 + 72);
        v3 = *(v4 + 80);
        v1 = v4;
      }

      while (v2);
    }

    else
    {
      v4 = qword_10008C540;
    }

    *v3 = 0;
    sub_100007254(v4);
    v0 = vars8;
  }

  return sub_100038794(&qword_10008C540);
}

void *sub_1000075F8()
{
  v0 = *(qword_1000900B8 + 272) * *(qword_1000900B8 + 268);
  qword_10008C540 = 0;
  return sub_100038550(v0, sub_100007630, &qword_10008C540);
}

void *sub_100007630()
{
  v0 = time(0);
  v1 = *(qword_1000900B8 + 272) * *(qword_1000900B8 + 268);
  v2 = qword_10008C540;
  if (qword_10008C540)
  {
    do
    {
      v3 = *(v2 + 72);
      if (v0 - *(v2 + 48) > v1)
      {
        v4 = *(v2 + 80);
        if (v3)
        {
          *(v3 + 80) = v4;
        }

        *v4 = v3;
        sub_100007254(v2);
      }

      v2 = v3;
    }

    while (v3);
  }

  return sub_100038550(v1, sub_100007630, &qword_10008C540);
}

uint64_t sub_1000076E0(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = *(a1 + 1704);
  if (v2)
  {
    v3 = 0;
    do
    {
      if ((*(v2 + 264) & 2) == 0 && (*(v2 + 57) & 0x40) == 0)
      {
        sub_100022C1C(v2);
        v3 = (v3 + 1);
      }

      v2 = *(v2 + 296);
    }

    while (v2);
  }

  else
  {
    v3 = 0;
  }

  v4 = *(a1 + 1696);
  while (v4)
  {
    v5 = v4;
    v4 = *(v4 + 456);
    if ((*(v5 + 432) & 2) == 0 && (*(v5 + 17) & 0x40) == 0)
    {
      sub_10004B368(v5);
      if ((*(v5 + 17) & 0x20) != 0)
      {
        sub_100017EF4(v5);
      }

      sub_100020614(v5);
      v3 = (v3 + 1);
    }
  }

  return v3;
}

uint64_t sub_100007798(unint64_t a1)
{
  v1 = qword_100090070;
  if (!qword_100090070)
  {
    return 0;
  }

  v3 = 0;
  do
  {
    v4 = v1;
    v1 = *(v1 + 1712);
    for (i = *(v4 + 1704); i; i = *(i + 296))
    {
      if ((*(i + 264) & 2) == 0 && (*(i + 57) & 0x40) == 0 && !sub_100039414(a1, *(i + 8)))
      {
        if (dword_100090058)
        {
          v6 = ne_log_obj();
          if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315138;
            v11 = "ike_session_purgephXbydstaddrwop";
            _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "in %s... purging Phase 2 structures\n", buf, 0xCu);
          }
        }

        if ((*(i + 57) & 0x20) != 0)
        {
          sub_100018460(i);
        }

        sub_100022C1C(i);
        v3 = (v3 + 1);
      }
    }

    for (j = *(v4 + 1696); j; j = *(j + 456))
    {
      if ((*(j + 432) & 2) == 0 && (*(j + 17) & 0x40) == 0 && !sub_100039414(a1, *(j + 48)))
      {
        if (dword_100090058)
        {
          v8 = ne_log_obj();
          if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315138;
            v11 = "ike_session_purgephXbydstaddrwop";
            _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "in %s... purging Phase 1 and related Phase 2 structures\n", buf, 0xCu);
          }
        }

        sub_10004B368(j);
        if ((*(j + 17) & 0x20) != 0)
        {
          sub_100017EF4(j);
        }

        sub_100020614(j);
        v3 = (v3 + 1);
      }
    }
  }

  while (v1);
  return v3;
}

void *sub_100007990(void *result, int a2)
{
  v2 = qword_100090070;
  if (qword_100090070)
  {
    v4 = result;
    do
    {
      v5 = v2;
      v2 = *(v2 + 1712);
      v6 = *(v5 + 1704);
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *(v6 + 296);
          if (*(v7 + 52) == v4 && (*(v7 + 264) & 2) == 0)
          {
            v8 = *(v7 + 56);
            if ((v8 & 0x4000) == 0)
            {
              if ((v8 & 0x2000) != 0)
              {
                sub_100018460(v7);
              }

              sub_10004B0C4(*(v7 + 272), off_10008C500[0]);
              result = sub_100022C1C(v7);
            }
          }
        }

        while (v6);
        v9 = *(v5 + 1704);
        while (v9)
        {
          v10 = v9;
          v9 = *(v9 + 296);
          if (a2)
          {
            if (*(v10 + 52) == v4)
            {
              v11 = *(v10 + 272);
              if (v11)
              {
                v12 = *(v11 + 1696);
                while (v12)
                {
                  v13 = v12;
                  v12 = *(v12 + 456);
                  if ((*(v13 + 432) & 2) == 0)
                  {
                    v14 = *(v13 + 16);
                    if ((v14 & 0x4000) == 0)
                    {
                      if ((v14 & 0x2000) != 0)
                      {
                        sub_100017EF4(v13);
                      }

                      result = sub_100020614(v13);
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

    while (v2);
  }

  return result;
}

uint64_t sub_100007AA4(unint64_t a1)
{
  v1 = qword_100090070;
  if (!qword_100090070)
  {
    return 0xFFFFFFFFLL;
  }

  v3 = 0xFFFFFFFFLL;
  do
  {
    for (i = *(v1 + 1696); i; i = *(i + 456))
    {
      if (!sub_100039414(a1, *(i + 48)))
      {
        if ((*(i + 17) & 0x20) != 0 && (*(i + 432) & 2) == 0 && *(i + 368) && *(*(i + 64) + 216))
        {
          if (*(i + 386))
          {
            if (dword_100090058)
            {
              v5 = ne_log_obj();
              if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
              {
                LOWORD(v13[0]) = 0;
                _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Skipping forced-DPD for Phase 1 (dpd already in progress).\n", v13, 2u);
              }
            }
          }

          else
          {
            sub_100019AE4(i);
            v3 = 0;
          }

          v11 = *(i + 440);
          if (v11)
          {
            *(v11 + 280) |= 1u;
          }
        }

        else if (dword_100090058)
        {
          v6 = ne_log_obj();
          if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
          {
            v7 = *(i + 16);
            v8 = *(i + 432) << 30 >> 31;
            v9 = *(i + 368);
            v10 = *(*(i + 64) + 216);
            v13[0] = 67109888;
            v13[1] = v7;
            v14 = 1024;
            v15 = v8;
            v16 = 1024;
            v17 = v9;
            v18 = 1024;
            v19 = v10;
            _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Skipping forced-DPD for Phase 1 (status %d, dying %d, dpd-support %d, dpd-interval %d).\n", v13, 0x1Au);
          }
        }
      }
    }

    v1 = *(v1 + 1712);
  }

  while (v1);
  return v3;
}

void sub_100007C94()
{
  v0 = qword_100090070;
  while (v0)
  {
    v1 = v0;
    v0 = *(v0 + 1712);
    v2 = *(v1 + 1696);
    if (v2)
    {
      while (1)
      {
        v3 = v2;
        v2 = *(v2 + 456);
        v4 = *(v3 + 440);
        if (v4)
        {
          if ((*(v4 + 280) & 4) != 0)
          {
            break;
          }
        }

        if ((*(v3 + 432) & 2) == 0 && (*(v3 + 17) & 0x40) == 0)
        {
          v5 = *(v3 + 112);
          if (v5)
          {
            *v33 = 0;
            if (sub_1000386F0(v5, v33))
            {
              if (*v33 <= qword_100090090)
              {
                v6 = *(v3 + 112);
                if (v6)
                {
                  sub_100038740(v6);
                  *(v3 + 112) = 0;
                }

                v7 = *(v3 + 116);
                if (v7)
                {
                  sub_100038740(v7);
                  *(v3 + 116) = 0;
                }

                *(v3 + 432) |= 2u;
                sub_100000A50((v3 + 16), 17408);
                sub_100049AAC(v3);
                *(v3 + 112) = sub_100038550(1, sub_100022638, v3);
                if (dword_100090058)
                {
                  v8 = ne_log_obj();
                  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
                  {
                    v9 = sub_100021944(v3, 0);
                    *buf = 136315138;
                    *&buf[4] = v9;
                    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Phase 1 %s expired while sleeping: quick deletion.\n", buf, 0xCu);
                  }
                }
              }
            }
          }

          v10 = *(v3 + 116);
          if (v10)
          {
            *buf = 0;
            if (sub_1000386F0(v10, buf))
            {
              if ((*(v3 + 17) & 0x40) != 0 || *buf <= qword_100090090)
              {
                v11 = *(v3 + 116);
                if (v11)
                {
                  sub_100038740(v11);
                  *(v3 + 116) = 0;
                }
              }
            }
          }

          v12 = *(v3 + 120);
          if (v12)
          {
            *buf = 0;
            if (sub_1000386F0(v12, buf))
            {
              if ((*(v3 + 17) & 0x40) != 0 || *buf <= qword_100090090)
              {
                v13 = *(v3 + 120);
                if (v13)
                {
                  sub_100038740(v13);
                  *(v3 + 120) = 0;
                }
              }
            }
          }

          v14 = *(v3 + 388);
          if (v14)
          {
            *buf = 0;
            if (sub_1000386F0(v14, buf))
            {
              if ((*(v3 + 17) & 0x40) != 0 || *buf <= qword_100090090)
              {
                v15 = *(v3 + 388);
                if (v15)
                {
                  sub_100038740(v15);
                  *(v3 + 388) = 0;
                }
              }
            }
          }

          goto LABEL_42;
        }

        if (dword_100090058)
        {
          v16 = ne_log_obj();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            v17 = sub_100021944(v3, 0);
            *buf = 136315138;
            *&buf[4] = v17;
            v18 = v16;
            v19 = "Skipping sweep of Phase 1 %s because it's already expired.\n";
LABEL_41:
            _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, v19, buf, 0xCu);
          }
        }

LABEL_42:
        if (!v2)
        {
          goto LABEL_43;
        }
      }

      if (!dword_100090058)
      {
        goto LABEL_42;
      }

      v20 = ne_log_obj();
      if (!os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_42;
      }

      v21 = sub_100021944(v3, 0);
      *buf = 136315138;
      *&buf[4] = v21;
      v18 = v20;
      v19 = "Skipping sweep of Phase 1 %s because it's been asserted.\n";
      goto LABEL_41;
    }

LABEL_43:
    v22 = *(v1 + 1704);
    while (v22)
    {
      v23 = v22;
      v22 = *(v22 + 296);
      v24 = *(v23 + 272);
      if (v24 && (*(v24 + 280) & 4) != 0)
      {
        if (dword_100090058)
        {
          v32 = ne_log_obj();
          if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            v30 = v32;
            v31 = "Skipping sweep of Phase 2 because it's been asserted.\n";
LABEL_67:
            _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, v31, buf, 2u);
          }
        }
      }

      else if ((*(v23 + 264) & 2) != 0 || (*(v23 + 57) & 0x40) != 0)
      {
        if (dword_100090058)
        {
          v29 = ne_log_obj();
          if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            v30 = v29;
            v31 = "Skipping sweep of Phase 2 because it's already expired.\n";
            goto LABEL_67;
          }
        }
      }

      else
      {
        v25 = *(v23 + 64);
        if (v25)
        {
          *buf = 0;
          if (sub_1000386F0(v25, buf))
          {
            if (*buf <= qword_100090090)
            {
              sub_100000A50((v23 + 56), 18432);
              *(v23 + 264) |= 2u;
              sub_100022C1C(v23);
              sub_10004B0C4(*(v23 + 272), off_10008C518[0]);
              if (dword_100090058)
              {
                v26 = ne_log_obj();
                if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
                {
                  *v33 = 0;
                  _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Phase 2 expired while sleeping: quick deletion.\n", v33, 2u);
                }
              }
            }
          }
        }

        v27 = *(v23 + 68);
        if (v27)
        {
          *buf = 0;
          if (sub_1000386F0(v27, buf))
          {
            if ((*(v23 + 57) & 0x40) != 0 || *buf <= qword_100090090)
            {
              v28 = *(v23 + 68);
              if (v28)
              {
                sub_100038740(v28);
                *(v23 + 68) = 0;
              }
            }
          }
        }
      }
    }
  }

  sub_10004CBBC();
}

uint64_t sub_100008158(uint64_t a1)
{
  v8 = 0;
  v3 = a1 + 48;
  v2 = *(a1 + 48);
  v4 = *(v2 + 1);
  if (v4 != 30)
  {
    if (v4 == 2)
    {
      return *(v2 + 4);
    }

    goto LABEL_9;
  }

  if (!*(a1 + 28))
  {
LABEL_9:
    if (dword_100090058)
    {
      v6 = ne_log_obj();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_100055758(v3, a1);
      }
    }

    return v8;
  }

  if ((nw_nat64_extract_v4() & 1) == 0)
  {
    if (dword_100090058)
    {
      v5 = ne_log_obj();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        sub_100055724();
      }
    }
  }

  return v8;
}

uint64_t sub_10000823C(uint64_t a1)
{
  v8 = 0;
  v3 = a1 + 8;
  v2 = *(a1 + 8);
  v4 = *(v2 + 1);
  if (v4 != 30)
  {
    if (v4 == 2)
    {
      return *(v2 + 4);
    }

    goto LABEL_9;
  }

  if (!*(a1 + 16))
  {
LABEL_9:
    if (dword_100090058)
    {
      v6 = ne_log_obj();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_100055808(v3, a1);
      }
    }

    return v8;
  }

  if ((nw_nat64_extract_v4() & 1) == 0)
  {
    if (dword_100090058)
    {
      v5 = ne_log_obj();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        sub_1000557D4();
      }
    }
  }

  return v8;
}

uint64_t sub_100008354(uint64_t *a1, void *a2)
{
  v3 = sub_1000085B8(a1, 0);
  if (!v3)
  {
    return 0xFFFFFFFFLL;
  }

  v4 = v3;
  v6 = (a2 + 9);
  v5 = a2[9];
  if (v5)
  {
    sub_100036A04(v5);
    *v6 = 0;
  }

  v7 = 0;
  memset(v25, 0, sizeof(v25));
  while (1)
  {
    v8 = v4[v7];
    if (v8)
    {
      break;
    }

LABEL_10:
    if (++v7 == 256)
    {
      if (dword_10008C280)
      {
        for (i = 0; i != 256; ++i)
        {
          for (j = v4[i]; j; j = j[2])
          {
            v13 = j;
            do
            {
              sub_100009DC8(v13, *(a2[8] + 248));
              v13 = v13[3];
            }

            while (v13);
          }
        }
      }

      if (dword_100090058)
      {
        v14 = ne_log_obj();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          sub_100055944();
        }
      }

      goto LABEL_39;
    }
  }

LABEL_6:
  v9 = v8;
  while (1)
  {
    v10 = sub_100008EA0(v9, *(a2[8] + 248), v25, *(a2[8] + 172));
    if (v10)
    {
      break;
    }

    v9 = v9[3];
    if (!v9)
    {
      v8 = v8[2];
      if (v8)
      {
        goto LABEL_6;
      }

      goto LABEL_10;
    }
  }

  v15 = v10;
  if (dword_100090058)
  {
    v16 = ne_log_obj();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      sub_100055884();
    }
  }

  v18 = (v15 + 16);
  v17 = *(v15 + 8);
  if (v17)
  {
    if (*(v17 + 8) && *(v17 + 16))
    {
      goto LABEL_32;
    }

    if (dword_100090058)
    {
      v19 = ne_log_obj();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *v24 = 0;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "invalid DH parameter found, use default.\n", v24, 2u);
      }
    }

    sub_1000271B4(*v18);
    *v18 = 0;
  }

  if (sub_100027728(v15[15], (v15 + 16)) == -1)
  {
    free(v15);
    goto LABEL_39;
  }

LABEL_32:
  *v6 = v15;
  if (dword_100090058)
  {
    v20 = ne_log_obj();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      sub_1000558BC((a2 + 9));
    }
  }

  v21 = sub_10000A798(v9, a2);
  if (v21)
  {
    v22 = v21;
    sub_100008E2C(v4);
    result = 0;
    a2[43] = v22;
    return result;
  }

  sub_100036A04(*v6);
  *v6 = 0;
LABEL_39:
  sub_100008E2C(v4);
  return 0xFFFFFFFFLL;
}

void *sub_1000085B8(uint64_t *a1, unsigned int a2)
{
  v4 = *a1;
  v3 = a1[1];
  if (a2 <= 1)
  {
    if (v4 <= 7)
    {
      if (dword_100090058)
      {
        v6 = ne_log_obj();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          sub_100055CC8(a1);
        }
      }

      return 0;
    }

    if (*v3 != 0x1000000)
    {
      if (dword_100090058)
      {
        v10 = ne_log_obj();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          sub_100055980();
        }
      }

      return 0;
    }

    v7 = bswap32(*(v3 + 4));
    if (v7 != 1)
    {
      if (v7 == 4 || v7 == 2)
      {
        if (dword_100090058)
        {
          v9 = ne_log_obj();
          if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
          {
            sub_1000559F0();
          }
        }
      }

      else if (dword_100090058)
      {
        v11 = ne_log_obj();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          sub_100055C58();
        }
      }

      return 0;
    }

    v3 += 8;
    LODWORD(v4) = v4 - 8;
  }

  v12 = malloc_type_calloc(1uLL, 0x800uLL, 0x2004093837F09uLL);
  if (!v12)
  {
    if (dword_100090058)
    {
      v44 = ne_log_obj();
      if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
      {
        sub_100055A60();
      }
    }

    return 0;
  }

  v13 = v12;
  v14 = sub_100020A5C(2u, v3, v4);
  if (!v14)
  {
LABEL_110:
    free(v13);
    return 0;
  }

  v15 = 0;
  v60 = v14;
  for (i = v14[1]; *i == 2; i += 4)
  {
    v17 = i[1];
    if (v17 <= 7)
    {
      if (dword_100090058)
      {
        v56 = ne_log_obj();
        if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
        {
          sub_100055B24(i + 1);
        }
      }

LABEL_109:
      sub_10003D4F0(v60);
      goto LABEL_110;
    }

    v18 = *(i + 1);
    if (dword_100090058)
    {
      v19 = ne_log_obj();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        v42 = *(v18 + 4);
        *buf = 67109376;
        *v63 = v42;
        *&v63[4] = 1024;
        *&v63[6] = v17;
        _os_log_debug_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEBUG, "proposal #%u len=%d\n", buf, 0xEu);
      }
    }

    if ((a2 & 0xFFFFFFFE) == 2)
    {
      if (dword_100090058)
      {
        v20 = ne_log_obj();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          *buf = 67109120;
          *v63 = a2;
          _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "unsupported mode %d\n", buf, 8u);
        }
      }
    }

    else if (((off_100088EC8[a2])(*(v18 + 5)) & 0x80000000) == 0 && (sub_10000AEF8(*(v18 + 5), *(v18 + 6)) & 0x80000000) == 0)
    {
      v21 = *(v18 + 6);
      if (v21 + 8 <= i[1])
      {
        v22 = sub_100020A5C(3u, (v18 + v21 + 8), (bswap32(*(v18 + 2)) >> 16) - v21 - 8);
        if (!v22)
        {
          goto LABEL_109;
        }

        v23 = v22;
        v61 = v15;
        v24 = v22[1];
LABEL_40:
        if (*v24 != 3)
        {
          if (!*v24)
          {
            goto LABEL_71;
          }

          if (!dword_100090058)
          {
            goto LABEL_71;
          }

          v36 = ne_log_obj();
          if (!os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_71;
          }

          v37 = *v24;
          *buf = 67109120;
          *v63 = v37;
          v38 = v36;
          v39 = "Invalid payload type=%u\n";
          v40 = 8;
          goto LABEL_74;
        }

        v25 = *(v24 + 1);
        if (v25 <= 7)
        {
          if (!dword_100090058)
          {
            goto LABEL_71;
          }

          v41 = ne_log_obj();
          if (!os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_71;
          }

          v43 = *(v24 + 1);
          *buf = 134218240;
          *v63 = 8;
          *&v63[8] = 1024;
          v64 = v43;
          v38 = v41;
          v39 = "get_transform invalid length of transform, expected %lu actual %d\n";
          v40 = 18;
LABEL_74:
          _os_log_error_impl(&_mh_execute_header, v38, OS_LOG_TYPE_ERROR, v39, buf, v40);
LABEL_71:
          sub_10003D4F0(v23);
          v15 = v61;
          continue;
        }

        v26 = *(v24 + 1);
        if (dword_100090058)
        {
          v27 = ne_log_obj();
          if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
          {
            v35 = *(v26 + 4);
            *buf = 67109376;
            *v63 = v35;
            *&v63[4] = 1024;
            *&v63[6] = v25;
            _os_log_debug_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEBUG, "transform #%u len=%u\n", buf, 0xEu);
          }
        }

        if (*(v18 + 5) < 5u)
        {
          if (*(v18 + 5))
          {
            if ((qword_100088EE8[*(v18 + 5)](*(v26 + 5)) & 0x80000000) == 0 && !qword_100088F10[*(v18 + 5)](v26))
            {
              v29 = malloc_type_calloc(1uLL, 0x20uLL, 0x20040DC1BFBCFuLL);
              if (!v29)
              {
                if (dword_100090058)
                {
                  v59 = ne_log_obj();
                  if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
                  {
                    sub_100055A60();
                  }
                }

                sub_10003D4F0(v23);
                goto LABEL_109;
              }

              *v29 = v18;
              v29[1] = v26;
              v30 = *(v18 + 4);
              v31 = *(v13 + v30);
              do
              {
                if (!v31)
                {
                  *(v13 + v30) = v29;
                  ++v61;
                  goto LABEL_63;
                }

                v32 = v31;
                v31 = v31[2];
              }

              while (v31);
              if (*v32 == v18)
              {
                do
                {
                  v33 = v32;
                  v32 = v32[3];
                }

                while (v32);
                v33[3] = v29;
              }

              else
              {
                v32[2] = v29;
              }
            }
          }

          else if (dword_100090058)
          {
            v28 = ne_log_obj();
            if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
            {
LABEL_62:
              v34 = *(v18 + 5);
              *buf = 67109120;
              *v63 = v34;
              _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "unsupported proto_id %u\n", buf, 8u);
            }
          }
        }

        else if (dword_100090058)
        {
          v28 = ne_log_obj();
          if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_62;
          }
        }

LABEL_63:
        v24 += 16;
        goto LABEL_40;
      }

      if (dword_100090058)
      {
        v58 = ne_log_obj();
        if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
        {
          sub_100055A9C((v18 + 6), i + 1);
        }
      }

      goto LABEL_109;
    }
  }

  if (*i)
  {
    if (dword_100090058)
    {
      v54 = ne_log_obj();
      if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
      {
        sub_100055BE8(i);
      }
    }

    goto LABEL_109;
  }

  sub_10003D4F0(v60);
  for (j = 0; j != 256; ++j)
  {
    if (*(v13 + j))
    {
      if (dword_100090058)
      {
        v46 = ne_log_obj();
        if (os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG))
        {
          *buf = 67109120;
          *v63 = j;
          _os_log_debug_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEBUG, "pair %d:\n", buf, 8u);
        }
      }

      sub_100035574(7, *(v13 + j));
      v47 = *(v13 + j);
      if (v47)
      {
        v48 = 0;
        v49 = *(v13 + j);
        while (*(v49 + 8))
        {
          v50 = v49;
          do
          {
            ++v48;
            v50 = *(v50 + 24);
          }

          while (v50);
          v49 = *(v49 + 16);
          if (!v49)
          {
            goto LABEL_94;
          }
        }

        do
        {
          v51 = v47[2];
          free(v47);
          v47 = v51;
        }

        while (v51);
        *(v13 + j) = 0;
        --v15;
      }

      else
      {
        v48 = 0;
LABEL_94:
        if (dword_100090058)
        {
          v52 = ne_log_obj();
          if (os_log_type_enabled(v52, OS_LOG_TYPE_DEBUG))
          {
            v53 = *(**(v13 + j) + 4);
            *buf = 67109376;
            *v63 = v53;
            *&v63[4] = 1024;
            *&v63[6] = v48;
            _os_log_debug_impl(&_mh_execute_header, v52, OS_LOG_TYPE_DEBUG, "proposal #%u: %d transform\n", buf, 0xEu);
          }
        }
      }
    }
  }

  if (v15 <= 0)
  {
    if (dword_100090058)
    {
      v55 = ne_log_obj();
      if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
      {
        sub_100055BAC();
      }
    }

    goto LABEL_110;
  }

  return v13;
}

void sub_100008E2C(void *a1)
{
  for (i = 0; i != 256; ++i)
  {
    v3 = a1[i];
    while (v3)
    {
      v4 = v3;
      v3 = v3[2];
      do
      {
        v5 = v4[3];
        free(v4);
        v4 = v5;
      }

      while (v5);
    }

    a1[i] = 0;
  }

  free(a1);
}

_DWORD *sub_100008EA0(uint64_t a1, uint64_t a2, _OWORD *a3, int a4)
{
  v8 = *a1;
  v7 = *(a1 + 8);
  memset(v58, 0, sizeof(v58));
  if (dword_100090058)
  {
    v9 = ne_log_obj();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      sub_100055D38(v8);
    }

    if (dword_100090058)
    {
      v10 = ne_log_obj();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        sub_100055DF8(v7, v8);
      }
    }
  }

  if (a3)
  {
    v11 = a3;
  }

  else
  {
    v11 = v58;
  }

  v11[4] = 0u;
  v11[5] = 0u;
  v11[2] = 0u;
  v11[3] = 0u;
  *v11 = 0u;
  v11[1] = 0u;
  if ((sub_1000095DC(v7, v11) & 0x80000000) != 0)
  {
    return 0;
  }

  if (!a2)
  {
    v14 = 0;
    v13 = 0;
    goto LABEL_71;
  }

  if (a3)
  {
    v12 = a3;
  }

  else
  {
    v12 = v58;
  }

  while (1)
  {
    v13 = sub_100009D3C(*(a2 + 48));
    v14 = sub_100009D3C(*(v12 + 12));
    if (dword_100090058)
    {
      v15 = ne_log_obj();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        sub_100055E98(&v56, v57);
      }

      if (dword_100090058)
      {
        v16 = ne_log_obj();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
        {
          v25 = *a2;
          v26 = *v11;
          *buf = 67109376;
          *v60 = v25;
          *&v60[4] = 1024;
          *&v60[6] = v26;
          _os_log_debug_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, "(version = %d:%d)\n", buf, 0xEu);
        }

        if (dword_100090058)
        {
          v17 = ne_log_obj();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
          {
            v27 = *(a2 + 16);
            v28 = *(v12 + 2);
            *buf = 134218240;
            *v60 = v27;
            *&v60[8] = 2048;
            v61 = v28;
            _os_log_debug_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, "(lifetime = %ld:%ld)\n", buf, 0x16u);
          }

          if (dword_100090058)
          {
            v18 = ne_log_obj();
            if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
            {
              v29 = *(a2 + 32);
              v30 = *(v12 + 4);
              *buf = 134218240;
              *v60 = v29;
              *&v60[8] = 2048;
              v61 = v30;
              _os_log_debug_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEBUG, "(lifebyte = %zu:%zu)\n", buf, 0x16u);
            }

            if (dword_100090058)
            {
              v19 = ne_log_obj();
              if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
              {
                v31 = sub_10003C740(1, *(a2 + 40));
                v32 = sub_10003C740(1, *(v12 + 10));
                *buf = 136315394;
                *v60 = v31;
                *&v60[8] = 2080;
                v61 = v32;
                _os_log_debug_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEBUG, "enctype = %s:%s\n", buf, 0x16u);
              }

              if (dword_100090058)
              {
                v20 = ne_log_obj();
                if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
                {
                  v33 = *(a2 + 44);
                  v34 = *(v12 + 11);
                  *buf = 67109376;
                  *v60 = v33;
                  *&v60[4] = 1024;
                  *&v60[6] = v34;
                  _os_log_debug_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEBUG, "(encklen = %d:%d)\n", buf, 0xEu);
                }

                if (dword_100090058)
                {
                  v21 = ne_log_obj();
                  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
                  {
                    v36 = sub_10003C740(2, *(a2 + 52));
                    v37 = sub_10003C740(2, *(v12 + 13));
                    *buf = 136315394;
                    *v60 = v36;
                    *&v60[8] = 2080;
                    v61 = v37;
                    _os_log_debug_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEBUG, "hashtype = %s:%s\n", buf, 0x16u);
                  }

                  if (dword_100090058)
                  {
                    v22 = ne_log_obj();
                    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
                    {
                      v38 = sub_10003C740(3, *(a2 + 48));
                      v39 = sub_10003C740(3, *(v12 + 12));
                      *buf = 136315394;
                      *v60 = v38;
                      *&v60[8] = 2080;
                      v61 = v39;
                      _os_log_debug_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEBUG, "authmethod = %s:%s\n", buf, 0x16u);
                    }

                    if (dword_100090058)
                    {
                      v23 = ne_log_obj();
                      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
                      {
                        v40 = sub_10003C740(4, *(a2 + 60));
                        v41 = sub_10003C740(4, *(v12 + 15));
                        *buf = 136315394;
                        *v60 = v40;
                        *&v60[8] = 2080;
                        v61 = v41;
                        _os_log_debug_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEBUG, "dh_group = %s:%s\n", buf, 0x16u);
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

    if (*(v12 + 10) != *(a2 + 40))
    {
      goto LABEL_67;
    }

    v24 = v14 == v13 || *(v12 + 12) == v13;
    if (!v24 || *(v12 + 13) != *(a2 + 52) || *(v12 + 15) != *(a2 + 60) || *(v12 + 11) != *(a2 + 44) || *v11 != *a2)
    {
      goto LABEL_67;
    }

    if (a4 > 2)
    {
      break;
    }

    if (a4 != 2)
    {
      if (a4 == 1)
      {
        goto LABEL_71;
      }

      goto LABEL_64;
    }

    if (*(v12 + 2) <= *(a2 + 16) && *(v12 + 4) <= *(a2 + 32))
    {
      goto LABEL_71;
    }

LABEL_67:
    a2 = *(a2 + 80);
    if (!a2)
    {
      goto LABEL_71;
    }
  }

  if (a4 == 4)
  {
    if (*(v12 + 2) == *(a2 + 16) && *(v12 + 4) == *(a2 + 32))
    {
      goto LABEL_71;
    }

    goto LABEL_67;
  }

  if (a4 != 3)
  {
LABEL_64:
    if (dword_100090058)
    {
      v35 = ne_log_obj();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        sub_100055EC4(&v54, v55);
      }
    }

    goto LABEL_67;
  }

  v52 = *(v12 + 2);
  if (v52 < *(a2 + 16))
  {
    *(a2 + 16) = v52;
  }

  v53 = *(v12 + 4);
  if (v53 < *(a2 + 32))
  {
    *(a2 + 32) = v53;
  }

LABEL_71:
  if (a3)
  {
    v43 = a3;
  }

  else
  {
    v43 = v58;
  }

  v44 = *(v43 + 8);
  if (v44)
  {
    sub_1000271B4(v44);
    *(v43 + 8) = 0;
  }

  result = sub_1000379A8(a2);
  if (result)
  {
    if (a4 == 3)
    {
      v49 = v58;
      if (a3)
      {
        v50 = a3;
      }

      else
      {
        v50 = v58;
      }

      v51 = *(v50 + 2);
      if (v51 < *(result + 2))
      {
        *(result + 2) = v51;
      }

      if (a3)
      {
        v49 = a3;
      }

      v46 = *(v49 + 4);
      if (v46 < *(result + 4))
      {
LABEL_83:
        *(result + 4) = v46;
      }
    }

    else if (a4 == 2 || a4 == 1)
    {
      v45 = v58;
      if (a3)
      {
        v45 = a3;
      }

      *(result + 2) = *(v45 + 2);
      v46 = *(v45 + 4);
      goto LABEL_83;
    }

    v47 = v58;
    if (a3)
    {
      v47 = a3;
    }

    if (v14 == v13)
    {
      v48 = *(v47 + 12);
      if (v48 != v13)
      {
        result[12] = v48;
      }
    }
  }

  return result;
}

uint64_t sub_1000095DC(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 2);
  *(a2 + 16) = 28800;
  *(a2 + 32) = 0;
  v5 = malloc_type_calloc(1uLL, 0x30uLL, 0x10200409D20112CuLL);
  *(a2 + 64) = v5;
  if (!v5)
  {
    return 0xFFFFFFFFLL;
  }

  v6 = bswap32(v4) >> 16;
  if (v6 < 9)
  {
    return 0;
  }

  v7 = 0;
  v44 = 0;
  v8 = 0;
  v9 = v6 - 8;
  v10 = (a1 + 8);
  v43 = 1;
  do
  {
    v11 = v9;
    if (v9 <= 3)
    {
      if (dword_100090058)
      {
        v34 = ne_log_obj();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
        {
          sub_10005621C();
        }
      }

      return 0xFFFFFFFFLL;
    }

    v12 = v10;
    v13 = *v10;
    v14 = bswap32(v13 & 0xFFFFFF7F) >> 16;
    v15 = (v13 << 8) & 0x8000;
    if (dword_100090058)
    {
      v16 = ne_log_obj();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        v30 = sub_10003C404(v14);
        v31 = sub_10003C740(v14, bswap32(v12[1]) >> 16);
        *buf = 136315650;
        *v48 = v30;
        *&v48[8] = 1024;
        v49[0] = v15;
        LOWORD(v49[1]) = 2080;
        *(&v49[1] + 2) = v31;
        _os_log_debug_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, "type=%s, flag=0x%04x, lorv=%s\n", buf, 0x1Cu);
      }
    }

    if (v14 <= 0x10 && ((1 << v14) & 0x117C0) != 0)
    {
      v18 = v12 + 1;
      if (v15)
      {
        v19 = 2;
      }

      else
      {
        v19 = bswap32(*v18) >> 16;
        if (v19 + 4 > v11)
        {
          if (dword_100090058)
          {
            v36 = ne_log_obj();
            if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
            {
              *buf = 67109632;
              *v48 = v14;
              *&v48[4] = 1024;
              *&v48[6] = v19;
              LOWORD(v49[0]) = 2048;
              *(v49 + 2) = v11 - 4;
              _os_log_error_impl(&_mh_execute_header, v36, OS_LOG_TYPE_ERROR, "invalid ISAKMP-SA attr(%d), attr-len %d, overall-len %lu\n", buf, 0x18u);
            }
          }

          return 0xFFFFFFFFLL;
        }

        v18 = v12 + 2;
      }

      v20 = sub_10003D3A8(v19);
      if (!v20)
      {
        return 0xFFFFFFFFLL;
      }

      v8 = v20;
      memcpy(v20[1], v18, v19);
    }

    switch(v14)
    {
      case 1u:
        *(a2 + 40) = bswap32(v12[1]) >> 16;
        if (v15)
        {
          goto LABEL_62;
        }

        break;
      case 2u:
        *(a2 + 52) = bswap32(v12[1]) >> 16;
        if (!v15)
        {
          break;
        }

        goto LABEL_62;
      case 3u:
        *(a2 + 48) = bswap32(v12[1]) >> 16;
        if (!v15)
        {
          break;
        }

        goto LABEL_62;
      case 4u:
        *(a2 + 60) = bswap32(v12[1]) >> 16;
        if (!v15)
        {
          break;
        }

        goto LABEL_62;
      case 5u:
        if (v12[1] != 256)
        {
          return 0xFFFFFFFFLL;
        }

        *(*(a2 + 64) + 4) = 1;
        if (!v15)
        {
          break;
        }

        goto LABEL_62;
      case 6u:
        *(*(a2 + 64) + 8) = v8;
        if (!v15)
        {
          break;
        }

        goto LABEL_62;
      case 7u:
        sub_10003D4F0(v8);
        v23 = bswap32(v12[1]) >> 16;
        if (!v15)
        {
          *(*(a2 + 64) + 16) = v23;
          LODWORD(v26) = v23;
          goto LABEL_70;
        }

        v24 = *(a2 + 64);
        *(v24 + 16) = 0;
        v25 = (v24 + 16);
        if (v23 > 4)
        {
          return 0xFFFFFFFFLL;
        }

        if (v23 + 4 > v11)
        {
          if (dword_100090058)
          {
            v38 = ne_log_obj();
            if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
            {
              sub_1000560B8();
            }
          }

          return 0xFFFFFFFFLL;
        }

        memcpy(v25, v12 + 2, v23);
        *(*(a2 + 64) + 16) = bswap32(*(*(a2 + 64) + 16));
        goto LABEL_62;
      case 8u:
        sub_10003D4F0(v8);
        v26 = bswap32(v12[1]) >> 16;
        if (!v15)
        {
          *(*(a2 + 64) + 20) = v26;
          goto LABEL_69;
        }

        v27 = *(a2 + 64);
        *(v27 + 20) = 0;
        v28 = (v27 + 20);
        if (v26 > 4)
        {
          return 0xFFFFFFFFLL;
        }

        if (v26 + 4 > v11)
        {
          if (dword_100090058)
          {
            v39 = ne_log_obj();
            if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
            {
              sub_100056048();
            }
          }

          return 0xFFFFFFFFLL;
        }

        memcpy(v28, v12 + 2, v26);
        *(*(a2 + 64) + 20) = bswap32(*(*(a2 + 64) + 20));
        goto LABEL_62;
      case 9u:
        *(*(a2 + 64) + 24) = v8;
        if (!v15)
        {
          break;
        }

        goto LABEL_62;
      case 0xAu:
        *(*(a2 + 64) + 32) = v8;
        if (!v15)
        {
          break;
        }

        goto LABEL_62;
      case 0xBu:
        v21 = bswap32(v12[1]) >> 16;
        if (((v21 - 1) & 0xFFFE) != 0)
        {
          v21 = 1;
        }

        goto LABEL_25;
      case 0xCu:
        if (v7 && (*v7 & 0xFF7F) == 0xB00)
        {
          if (v43 == 2)
          {
            *(a2 + 32) = sub_10000A2A0(v8);
            sub_10003D4F0(v8);
            if (*(a2 + 32))
            {
              v21 = 2;
LABEL_25:
              v43 = v21;
              if (v15)
              {
                goto LABEL_62;
              }

              break;
            }

            if (!dword_100090058)
            {
              return 0xFFFFFFFFLL;
            }

            v42 = ne_log_obj();
            if (!os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
            {
              return 0xFFFFFFFFLL;
            }

LABEL_103:
            sub_100055F68();
            return 0xFFFFFFFFLL;
          }

          if (v43 == 1)
          {
            *(a2 + 16) = sub_10000A2A0(v8);
            sub_10003D4F0(v8);
            if (*(a2 + 16))
            {
              v21 = 1;
              goto LABEL_25;
            }

            if (!dword_100090058)
            {
              return 0xFFFFFFFFLL;
            }

            v41 = ne_log_obj();
            if (!os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
            {
              return 0xFFFFFFFFLL;
            }

            goto LABEL_103;
          }

          sub_10003D4F0(v8);
          if (dword_100090058)
          {
            v40 = ne_log_obj();
            if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
            {
              sub_100055FA4();
            }
          }

          return 0xFFFFFFFFLL;
        }

        if (dword_100090058 && (v29 = ne_log_obj(), os_log_type_enabled(v29, OS_LOG_TYPE_ERROR)))
        {
          sub_100056014(&v45, v46);
          if (v15)
          {
LABEL_62:
            v9 = v11 - 4;
            v10 = v12 + 2;
            goto LABEL_72;
          }
        }

        else
        {
LABEL_61:
          if (v15)
          {
            goto LABEL_62;
          }
        }

        break;
      case 0xEu:
        v22 = bswap32(v12[1]) >> 16;
        if ((v22 & 7) != 0)
        {
          if (dword_100090058)
          {
            v37 = ne_log_obj();
            if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
            {
              sub_100055EF8();
            }
          }

          return 0xFFFFFFFFLL;
        }

        *(a2 + 44) = v22;
        ++v44;
        if (v15)
        {
          goto LABEL_62;
        }

        break;
      case 0x10u:
        *(*(a2 + 64) + 40) = v8;
        if (!v15)
        {
          break;
        }

        goto LABEL_62;
      default:
        goto LABEL_61;
    }

    LODWORD(v26) = bswap32(v12[1]) >> 16;
LABEL_69:
    LODWORD(v23) = v26;
LABEL_70:
    v9 = v11 - v26 - 4;
    if (v9 < 0)
    {
      if (dword_100090058)
      {
        v35 = ne_log_obj();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
        {
          sub_10005619C(v12 + 1);
        }
      }

      return 0xFFFFFFFFLL;
    }

    v10 = (v12 + v23 + 4);
LABEL_72:
    v7 = v12;
  }

  while (v9 > 0);
  if (v44 && (*(a2 + 40) | 4) == 5)
  {
    if (dword_100090058)
    {
      v32 = ne_log_obj();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        sub_100056128((a2 + 40));
      }
    }

    return 0xFFFFFFFFLL;
  }

  return 0;
}

uint64_t sub_100009D3C(int a1)
{
  if (a1 == 65010)
  {
    v1 = 65009;
  }

  else
  {
    v1 = a1;
  }

  if (a1 == 65008)
  {
    v2 = 65007;
  }

  else
  {
    v2 = v1;
  }

  if (a1 == 65006)
  {
    v3 = 65005;
  }

  else
  {
    v3 = a1;
  }

  if (a1 == 65004)
  {
    v4 = 65003;
  }

  else
  {
    v4 = v3;
  }

  if (a1 <= 65007)
  {
    v5 = v4;
  }

  else
  {
    v5 = v2;
  }

  if (a1 == 65002)
  {
    v6 = 65001;
  }

  else
  {
    v6 = a1;
  }

  if (a1 == 64224)
  {
    v7 = 64223;
  }

  else
  {
    v7 = v6;
  }

  if (a1 == 64222)
  {
    v8 = 64221;
  }

  else
  {
    v8 = v7;
  }

  if (a1 <= 65003)
  {
    return v8;
  }

  else
  {
    return v5;
  }
}

void sub_100009DC8(uint64_t *a1, uint64_t a2)
{
  *v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  memset(v47, 0, sizeof(v47));
  if ((sub_1000095DC(a1[1], v47) & 0x80000000) == 0)
  {
    if (a2)
    {
      v3 = DWORD2(v48);
      do
      {
        if (v3 != *(a2 + 40) && dword_100090058 != 0)
        {
          v5 = ne_log_obj();
          if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
          {
            v21 = *(a2 + 4);
            v22 = *(a2 + 8);
            v23 = *(*a1 + 4);
            v24 = *(a1[1] + 4);
            v25 = sub_10003C740(1, *(a2 + 40));
            v26 = sub_10003C740(1, v3);
            *buf = 67110402;
            v53 = v21;
            v54 = 1024;
            v55 = v22;
            v56 = 1024;
            v57 = v23;
            v58 = 1024;
            v59 = v24;
            v60 = 2080;
            v61 = v25;
            v62 = 2080;
            *v63 = v26;
            _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "rejected enctype: DB(prop#%d:trns#%d):Peer(prop#%d:trns#%d) = %s:%s\n", buf, 0x2Eu);
          }
        }

        v6 = v49;
        if (v49 != *(a2 + 48) && dword_100090058 != 0)
        {
          v8 = ne_log_obj();
          if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
          {
            v27 = *(a2 + 4);
            v28 = *(a2 + 8);
            v29 = *(*a1 + 4);
            v30 = *(a1[1] + 4);
            v31 = sub_10003C740(3, *(a2 + 48));
            v32 = sub_10003C740(3, v6);
            *buf = 67110402;
            v53 = v27;
            v54 = 1024;
            v55 = v28;
            v56 = 1024;
            v57 = v29;
            v58 = 1024;
            v59 = v30;
            v60 = 2080;
            v61 = v31;
            v62 = 2080;
            *v63 = v32;
            _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "rejected authmethod: DB(prop#%d:trns#%d):Peer(prop#%d:trns#%d) = %s:%s\n", buf, 0x2Eu);
          }
        }

        v9 = DWORD1(v49);
        if (DWORD1(v49) != *(a2 + 52))
        {
          if (dword_100090058)
          {
            v10 = ne_log_obj();
            if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
            {
              v33 = *(a2 + 4);
              v34 = *(a2 + 8);
              v35 = *(*a1 + 4);
              v36 = *(a1[1] + 4);
              v37 = sub_10003C740(2, *(a2 + 52));
              v38 = sub_10003C740(2, v9);
              *buf = 67110402;
              v53 = v33;
              v54 = 1024;
              v55 = v34;
              v56 = 1024;
              v57 = v35;
              v58 = 1024;
              v59 = v36;
              v60 = 2080;
              v61 = v37;
              v62 = 2080;
              *v63 = v38;
              _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "rejected hashtype: DB(prop#%d:trns#%d):Peer(prop#%d:trns#%d) = %s:%s\n", buf, 0x2Eu);
            }
          }
        }

        v11 = LODWORD(v50[1]);
        if (v50[1] != *(a2 + 72))
        {
          if (dword_100090058)
          {
            v12 = ne_log_obj();
            if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
            {
              v15 = *(a2 + 4);
              v45 = *(a2 + 8);
              v16 = *(*a1 + 4);
              v17 = *(a1[1] + 4);
              v18 = sub_10003C740(2, *(a2 + 72));
              v19 = *(a2 + 76);
              v20 = sub_10003C740(2, v11);
              *buf = 67110914;
              v53 = v15;
              v54 = 1024;
              v55 = v45;
              v56 = 1024;
              v57 = v16;
              v58 = 1024;
              v59 = v17;
              v60 = 2080;
              v61 = v18;
              v62 = 1024;
              *v63 = v19;
              *&v63[4] = 2080;
              *&v63[6] = v20;
              v64 = 1024;
              v65 = HIDWORD(v50[1]);
              _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "rejected prf: DB(prop#%d:trns#%d):Peer(prop#%d:trns#%d) = %s.%d:%s.%d\n", buf, 0x3Au);
            }
          }
        }

        v13 = HIDWORD(v49);
        if (HIDWORD(v49) != *(a2 + 60))
        {
          if (dword_100090058)
          {
            v14 = ne_log_obj();
            if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
            {
              v39 = *(a2 + 4);
              v40 = *(a2 + 8);
              v41 = *(*a1 + 4);
              v42 = *(a1[1] + 4);
              v43 = sub_10003C740(4, *(a2 + 60));
              v44 = sub_10003C740(4, v13);
              *buf = 67110402;
              v53 = v39;
              v54 = 1024;
              v55 = v40;
              v56 = 1024;
              v57 = v41;
              v58 = 1024;
              v59 = v42;
              v60 = 2080;
              v61 = v43;
              v62 = 2080;
              *v63 = v44;
              _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "rejected dh_group: DB(prop#%d:trns#%d):Peer(prop#%d:trns#%d) = %s:%s\n", buf, 0x2Eu);
            }
          }
        }

        a2 = *(a2 + 80);
      }

      while (a2);
    }

    if (v50[0])
    {
      sub_1000271B4(v50[0]);
    }
  }
}

uint64_t sub_10000A2A0(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (*result == 4)
    {
      return bswap32(**(result + 8));
    }

    if (*result == 2)
    {
      return bswap32(**(result + 8)) >> 16;
    }

    if (dword_100090058)
    {
      v2 = ne_log_obj();
      result = os_log_type_enabled(v2, OS_LOG_TYPE_ERROR);
      if (!result)
      {
        return result;
      }

      sub_10005628C(v1);
    }

    return 0;
  }

  return result;
}

uint64_t sub_10000A330(uint64_t a1)
{
  v2 = sub_1000085B8(*(a1 + 224), 1u);
  if (!v2)
  {
    return 0xFFFFFFFFLL;
  }

  v3 = v2;
  v4 = sub_10000A3C8(a1, v2);
  sub_100008E2C(v3);
  if (!v4)
  {
    return 0xFFFFFFFFLL;
  }

  *(a1 + 232) = sub_10000A798(v4, *(a1 + 256));
  do
  {
    v5 = v4;
    v4 = v4[2];
    do
    {
      v6 = v5[3];
      free(v5);
      v5 = v6;
    }

    while (v6);
  }

  while (v4);
  if (*(a1 + 232))
  {
    return 0;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

_OWORD *sub_10000A3C8(uint64_t a1, uint64_t a2)
{
  *(a1 + 128) = 0;
  if (dword_100090058)
  {
    v4 = ne_log_obj();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      sub_1000562FC();
    }
  }

  for (i = 0; i != 256; ++i)
  {
    v6 = *(a2 + 8 * i);
    if (v6)
    {
      if (dword_100090058)
      {
        v7 = ne_log_obj();
        v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG);
        v6 = *(a2 + 8 * i);
        if (v8)
        {
          *buf = 67109376;
          v45 = i;
          v46 = 2048;
          v47 = v6;
          _os_log_debug_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "pair[%d]: %p\n", buf, 0x12u);
          v6 = *(a2 + 8 * i);
        }
      }

      sub_100035574(7, v6);
      v9 = *(a2 + 8 * i);
      v10 = sub_100034580(v9);
      if (v10)
      {
        v11 = v10;
        v12 = v10;
        while (1)
        {
          v13 = *(a1 + 120);
          if (v13)
          {
            break;
          }

LABEL_23:
          v12 = *(v12 + 40);
          if (!v12)
          {
            sub_100033F8C(v11);
            goto LABEL_54;
          }
        }

        while (1)
        {
          if (dword_100090058)
          {
            v14 = ne_log_obj();
            if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
            {
              sub_100056334(&v42, v43);
            }
          }

          sub_100034AD8(7, v12);
          if (dword_100090058)
          {
            v15 = ne_log_obj();
            if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
            {
              sub_100056360(&v40, v41);
            }
          }

          sub_100034AD8(7, v13);
          v16 = sub_10003333C(*(a1 + 256), v12, v13, *(a1 + 60));
          if (v16)
          {
            break;
          }

          if (dword_100090058)
          {
            v17 = ne_log_obj();
            if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
            {
              sub_1000563EC(&v38, v39);
            }
          }

          v13 = *(v13 + 40);
          if (!v13)
          {
            goto LABEL_23;
          }
        }

        v18 = v16;
        sub_100033F8C(v11);
        if (dword_100090058)
        {
          v19 = ne_log_obj();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
          {
            sub_10005638C(&v36, v37);
          }
        }

        *(a1 + 128) = v18;
        if (v9)
        {
          v20 = 0;
          while (1)
          {
            v21 = v18[4];
            if (!v21)
            {
              break;
            }

            while (*v21 != *(*v9 + 5))
            {
              v21 = *(v21 + 72);
              if (!v21)
              {
                goto LABEL_54;
              }
            }

            v22 = *(v21 + 64);
            if (*(v22 + 2))
            {
              break;
            }

            v23 = *v22;
            v24 = v9;
            while (v23 != *(v24[1] + 4))
            {
              v24 = v24[3];
              if (!v24)
              {
                goto LABEL_54;
              }
            }

            v25 = malloc_type_calloc(1uLL, 0x20uLL, 0x20040DC1BFBCFuLL);
            if (!v25)
            {
              if (dword_100090058)
              {
                v31 = ne_log_obj();
                if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
                {
                  sub_1000563B8(&v34, v35);
                }
              }

              break;
            }

            v26 = *v24;
            *v25 = *v24;
            v27 = v20;
            do
            {
              if (!v27)
              {
                v20 = v25;
                goto LABEL_48;
              }

              v28 = v27;
              v27 = v27[2];
            }

            while (v27);
            v29 = v28 + 2;
            if (*v28 == v26)
            {
              do
              {
                v30 = v28;
                v28 = v28[3];
              }

              while (v28);
              v29 = v30 + 3;
            }

            *v29 = v25;
LABEL_48:
            v9 = v9[2];
            if (!v9)
            {
              if (!v20)
              {
                break;
              }

              return v20;
            }
          }
        }
      }
    }

LABEL_54:
    ;
  }

  if (dword_100090058)
  {
    v32 = ne_log_obj();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      sub_100056420();
    }
  }

  return 0;
}

void *sub_10000A798(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = 8 * (*(a2 + 80) == 16);
  if (a1)
  {
    v5 = a1;
    do
    {
      v4 += *(*v5 + 6) + (bswap32(*(v5[1] + 2)) >> 16) + 8;
      v5 = v5[2];
    }

    while (v5);
  }

  v6 = sub_10003D3A8(v4);
  v7 = v6;
  if (v6)
  {
    v8 = v6[1];
    v8->i16[1] = bswap32(v4) >> 16;
    if (*(a2 + 80) == 16)
    {
      *v8++ = vrev32_s8(*(*(a2 + 64) + 24));
    }

    if (v3)
    {
      v9 = 0;
      do
      {
        v10 = v8;
        v11 = *v3;
        v12 = *(*v3 + 6);
        v13 = *(v3[1] + 2);
        if (v9)
        {
          v9->i8[0] = 2;
          v11 = *v3;
        }

        v14 = v12 + 8;
        v15 = __rev16(v13);
        memcpy(v10, v11, v12 + 8);
        v10->i8[0] = 0;
        v10->i16[1] = bswap32(v15 + v14) >> 16;
        v10->i8[7] = 1;
        bzero(&v10[1], *(*v3 + 6));
        v16 = (v10 + v14);
        memcpy(v16, v3[1], v15);
        v16->i8[0] = 0;
        v16->i16[1] = v13;
        v8 = (v16 + v15);
        v9 = v10;
        v3 = v3[2];
      }

      while (v3);
    }
  }

  else if (dword_100090058)
  {
    v17 = ne_log_obj();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_10005645C();
    }
  }

  return v7;
}

uint64_t sub_10000A918(uint64_t a1)
{
  v2 = sub_1000085B8(*(a1 + 224), 1u);
  if (!v2)
  {
    if (dword_100090058)
    {
      v10 = ne_log_obj();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_100056688();
      }
    }

    return 0xFFFFFFFFLL;
  }

  v3 = v2;
  v4 = sub_1000085B8(*(a1 + 232), 1u);
  if (!v4)
  {
    if (dword_100090058)
    {
      v11 = ne_log_obj();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_100056688();
      }
    }

    sub_100008E2C(v3);
    return 0xFFFFFFFFLL;
  }

  v5 = v4;
  v6 = 0;
  v7 = 0;
  v8 = 0;
  do
  {
    if (v4[v6])
    {
      ++v8;
      v7 = v6;
    }

    ++v6;
  }

  while (v6 != 256);
  if (v8 == 1)
  {
    if (v3[v7])
    {
      v13 = 1;
    }

    else
    {
      v13 = dword_100090058 == 0;
    }

    if (!v13)
    {
      v14 = ne_log_obj();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        v44 = 256;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "invalid proposal number:%d received.\n", buf, 8u);
      }
    }

    v15 = v5[v7];
    if (v15[3])
    {
      if (dword_100090058)
      {
        v16 = ne_log_obj();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          sub_100056498();
        }
      }
    }

    else
    {
      v20 = v3[v7];
      if (v20)
      {
        while (2)
        {
          v21 = v20;
          while (v15[1][4] != *(v21[1] + 4))
          {
            v21 = v21[3];
            if (!v21)
            {
              if (!dword_100090058)
              {
                goto LABEL_33;
              }

              v36 = ne_log_obj();
              if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
              {
                sub_1000564D4();
              }

              goto LABEL_76;
            }
          }

          v22 = *v15;
          v23 = *v21;
          if ((*v15)[4] != *(*v21 + 4) && dword_100090058 != 0)
          {
            v25 = ne_log_obj();
            v26 = os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT);
            v22 = *v15;
            v23 = *v21;
            if (v26)
            {
              v27 = *(v23 + 4);
              v28 = v22[4];
              *buf = 67109376;
              v44 = v27;
              v45 = 1024;
              v46 = v28;
              _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "proposal #%d mismatched, expected #%d.\n", buf, 0xEu);
              v22 = *v15;
              v23 = *v21;
            }
          }

          if (v22[5] == *(v23 + 5))
          {
            if (v22[7] != 1 && dword_100090058 != 0)
            {
              v30 = ne_log_obj();
              if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
              {
                v31 = (*v15)[7];
                *buf = 67109120;
                v44 = v31;
                _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "#of transform is %d, but expected 1.\n", buf, 8u);
              }
            }

            if (v15[1][5] != *(v21[1] + 5))
            {
              if (dword_100090058)
              {
                v32 = ne_log_obj();
                if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 0;
                  _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "transform number has been modified.\n", buf, 2u);
                }
              }
            }

            if (*(v15[1] + 3) != *(v21[1] + 6))
            {
              if (dword_100090058)
              {
                v33 = ne_log_obj();
                if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 0;
                  _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "reserved field should be zero.\n", buf, 2u);
                }
              }
            }

            if (memcmp(v15[1] + 8, (v21[1] + 8), (bswap32(*(v21[1] + 2)) >> 16) - 8))
            {
              if (dword_100090058)
              {
                v34 = ne_log_obj();
                if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 0;
                  _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "attribute has been modified.\n", buf, 2u);
                }
              }
            }

            v15 = v15[2];
            v20 = v20[2];
            if (v15 && v20)
            {
              continue;
            }

            if ((v15 != 0) != (v20 != 0))
            {
              goto LABEL_70;
            }

            v39 = sub_10000A3C8(a1, v5);
            if (v39)
            {
              v40 = v39;
              v18 = *(a1 + 232);
              *(a1 + 232) = sub_10000A798(v39, *(a1 + 256));
              do
              {
                v41 = v40;
                v40 = v40[2];
                do
                {
                  v42 = v41[3];
                  free(v41);
                  v41 = v42;
                }

                while (v42);
              }

              while (v40);
              if (*(a1 + 232))
              {
                v12 = 0;
              }

              else
              {
                v12 = 0xFFFFFFFFLL;
              }

              goto LABEL_34;
            }

            goto LABEL_33;
          }

          break;
        }

        if (!dword_100090058)
        {
          goto LABEL_33;
        }

        v38 = ne_log_obj();
        if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
        {
          sub_100056510(v21);
        }
      }

      else
      {
LABEL_70:
        if (!dword_100090058)
        {
          goto LABEL_33;
        }

        v35 = ne_log_obj();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
        {
          sub_100056598();
        }
      }

LABEL_76:
      if (dword_100090058)
      {
        v37 = ne_log_obj();
        if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
        {
          sub_1000565D4();
        }
      }
    }
  }

  else if (v8)
  {
    if (dword_100090058)
    {
      v17 = ne_log_obj();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        sub_10005664C();
      }
    }
  }

  else if (dword_100090058)
  {
    v9 = ne_log_obj();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_100056610();
    }
  }

LABEL_33:
  v18 = 0;
  v12 = 0xFFFFFFFFLL;
LABEL_34:
  sub_100008E2C(v5);
  sub_100008E2C(v3);
  if (v18)
  {
    sub_10003D4F0(v18);
  }

  return v12;
}

uint64_t sub_10000AEF8(int a1, int a2)
{
  if ((a1 - 2) < 2)
  {
    if (a2 == 4)
    {
      return 0;
    }

    if (dword_100090058)
    {
      v5 = ne_log_obj();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        sub_100056734();
      }
    }

    return 0xFFFFFFFFLL;
  }

  if (a1 == 4)
  {
    result = 0;
    if (a2 == 2 || a2 == 4)
    {
      return result;
    }

    if (dword_100090058)
    {
      v4 = ne_log_obj();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        sub_1000566C4();
      }
    }

    return 0xFFFFFFFFLL;
  }

  if (a1 != 1)
  {
    return 0xFFFFFFFFLL;
  }

  result = 0;
  if (a2)
  {
    if (dword_100090058)
    {
      v3 = ne_log_obj();
      result = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
      if (result)
      {
        *v6 = 0;
        _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "SPI size isn't zero, but IKE proposal.\n", v6, 2u);
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_10000B024(uint64_t a1)
{
  v2 = sub_1000085B8(*(a1 + 232), 1u);
  if (!v2)
  {
    return 0xFFFFFFFFLL;
  }

  v3 = v2;
  v4 = 0;
  while (!v2[v4])
  {
    if (++v4 == 256)
    {
      goto LABEL_8;
    }
  }

  v6 = v2[v4];
  if (!v6[3])
  {
    v8 = *(a1 + 128);
    while (1)
    {
      v9 = *(v8 + 32);
      if (!v9)
      {
        break;
      }

      while (*v9 != *(*v6 + 5) || *(*(v9 + 64) + 4) != *(v6[1] + 5))
      {
        v9 = *(v9 + 72);
        if (!v9)
        {
          goto LABEL_8;
        }
      }

      memcpy((*v6 + 8), (v9 - *(v9 + 8) + 28), *(v9 + 8));
      v5 = 0;
      v6 = v6[2];
      if (!v6)
      {
        goto LABEL_9;
      }
    }
  }

LABEL_8:
  v5 = 0xFFFFFFFFLL;
LABEL_9:
  sub_100008E2C(v3);
  return v5;
}

void *sub_10000B108(int *a1, uint64_t *a2)
{
  v3 = sub_1000085B8(a2, 1u);
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = 8;
    if (a1)
    {
      v7 = a1;
      while (*(v3 + *v7))
      {
        for (i = *(v7 + 4); i; i = *(i + 72))
        {
          v6 += *(i + 8) + 8;
          for (j = *(i + 64); j; j = *(j + 16))
          {
            v5 = *(v3 + *v7);
            while (1)
            {
              v10 = v5[1];
              if (*j == v10[4])
              {
                break;
              }

              v5 = v5[3];
              if (!v5)
              {
                goto LABEL_39;
              }
            }

            v6 += bswap32(*(v10 + 1)) >> 16;
          }
        }

        v7 = *(v7 + 5);
        if (!v7)
        {
          goto LABEL_14;
        }
      }

      goto LABEL_39;
    }

LABEL_14:
    v11 = sub_10003D3A8(v6);
    if (!v11)
    {
      if (dword_100090058)
      {
        v23 = ne_log_obj();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          sub_10005645C();
        }
      }

LABEL_39:
      v12 = 0;
      goto LABEL_40;
    }

    v12 = v11;
    v13 = v11[1];
    *(v13 + 2) = bswap32(v6) >> 16;
    if (!a1)
    {
LABEL_40:
      free(v4);
      return v12;
    }

    v14 = 0;
    v15 = (v13 + 8);
    while (1)
    {
      v16 = *(a1 + 4);
      if (v16)
      {
        break;
      }

      v18 = v14;
LABEL_32:
      a1 = *(a1 + 5);
      v14 = v18;
      if (!a1)
      {
        goto LABEL_40;
      }
    }

    while (1)
    {
      v17 = *(v16 + 64);
      if (v17)
      {
        break;
      }

      v18 = v14;
LABEL_29:
      v16 = *(v16 + 72);
      v14 = v18;
      if (!v16)
      {
        goto LABEL_32;
      }
    }

    __n = *(*v5 + 6) + 8;
    while (1)
    {
      v18 = v15;
      v5 = *(v4 + *a1);
      if (!v5)
      {
        break;
      }

      while (1)
      {
        v19 = v5[1];
        if (*v17 == v19[4])
        {
          break;
        }

        v5 = v5[3];
        if (!v5)
        {
          goto LABEL_34;
        }
      }

      v20 = *(v19 + 1);
      if (v14)
      {
        *v14 = 2;
      }

      v21 = __rev16(v20);
      memcpy(v15, *v5, __n);
      *v18 = 0;
      *(v18 + 1) = bswap32(v21 + __n) >> 16;
      v18[7] = 1;
      v22 = &v18[__n];
      memcpy(&v18[__n], v5[1], v21);
      *v22 = 0;
      *(v22 + 1) = v20;
      v15 = &v18[__n + v21];
      v14 = v18;
      v17 = *(v17 + 16);
      if (!v17)
      {
        goto LABEL_29;
      }
    }

LABEL_34:
    free(v4);
    sub_10003D4F0(v12);
  }

  return 0;
}

uint64_t sub_10000B354(uint64_t a1)
{
  v1 = bswap32(*(a1 + 2)) >> 16;
  if (v1 < 9)
  {
    return 0;
  }

  v2 = v1 - 8;
  v3 = (a1 + 8);
  v4 = &dword_100090058;
  while (1)
  {
    if (v2 <= 3)
    {
      if (*v4)
      {
        v17 = ne_log_obj();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          sub_100056D7C();
        }
      }

      return 0xFFFFFFFFLL;
    }

    v5 = *v3;
    v6 = bswap32(v5 & 0xFFFFFF7F) >> 16;
    v7 = (v5 << 8) & 0x8000;
    v8 = v3[1];
    v9 = __rev16(v8);
    if (*v4)
    {
      v10 = ne_log_obj();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        v13 = v4;
        v14 = sub_10003C404(v6);
        v15 = sub_10003C740(v6, v9);
        *buf = 136315650;
        v32 = v14;
        v4 = v13;
        v33 = 1024;
        v34 = v7;
        v35 = 2080;
        v36 = v15;
        _os_log_debug_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "type=%s, flag=0x%04x, lorv=%s\n", buf, 0x1Cu);
      }
    }

    if (v6 > 0xF || ((1 << v6) & 0xE83E) == 0)
    {
      v12 = v7 == 0;
      if (!(v7 | v8))
      {
        if (*v4)
        {
          v21 = ne_log_obj();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
          {
            sub_100056CFC();
          }
        }

        return 0xFFFFFFFFLL;
      }
    }

    else
    {
      if (!v7)
      {
        if (*v4)
        {
          v18 = ne_log_obj();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            sub_1000567A4();
          }
        }

        return 0xFFFFFFFFLL;
      }

      v12 = 0;
    }

    if (v6 > 7)
    {
      if (v6 > 14)
      {
        if (v6 != 16 && v6 != 0x4000)
        {
          if (v6 == 15)
          {
            if (*v4)
            {
              v24 = ne_log_obj();
              if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
              {
                sub_100056814();
              }
            }

            return 0xFFFFFFFFLL;
          }

LABEL_79:
          if (*v4)
          {
            v25 = ne_log_obj();
            if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
            {
              sub_100056C8C();
            }
          }

          return 0xFFFFFFFFLL;
        }
      }

      else if ((v6 - 12) >= 3)
      {
        if (v6 != 11)
        {
          if ((v6 - 8) < 3)
          {
            if (*v4)
            {
              v20 = ne_log_obj();
              if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
              {
                sub_100056900();
              }
            }

            return 0xFFFFFFFFLL;
          }

          goto LABEL_79;
        }

        if ((v9 - 1) >= 2u)
        {
          if (*v4)
          {
            v26 = ne_log_obj();
            if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
            {
              sub_100056890();
            }
          }

          return 0xFFFFFFFFLL;
        }
      }

      goto LABEL_47;
    }

    if (v6 > 3)
    {
      if ((v6 - 6) >= 2)
      {
        if (v6 == 4)
        {
          if (!sub_1000018C0(v9))
          {
            if (*v4)
            {
              v27 = ne_log_obj();
              if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
              {
                sub_1000569E0();
              }
            }

            return 0xFFFFFFFFLL;
          }
        }

        else
        {
          if (v6 != 5)
          {
            goto LABEL_79;
          }

          if (v8 != 256)
          {
            if (*v4)
            {
              v28 = ne_log_obj();
              if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
              {
                sub_100056970();
              }
            }

            return 0xFFFFFFFFLL;
          }
        }
      }

      goto LABEL_47;
    }

    if (v6 == 1)
    {
      if (!sub_1000014A0(v9))
      {
        if (*v4)
        {
          v23 = ne_log_obj();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
          {
            sub_100056C1C();
          }
        }

        return 0xFFFFFFFFLL;
      }

      goto LABEL_47;
    }

    if (v6 == 2)
    {
      if (!sub_100001230(v9))
      {
        if (*v4)
        {
          v22 = ne_log_obj();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            sub_100056B38();
          }
        }

        return 0xFFFFFFFFLL;
      }

      goto LABEL_47;
    }

    if (v6 != 3)
    {
      goto LABEL_79;
    }

    if (v9 > 65000)
    {
      if ((v9 - 65001) > 9)
      {
        goto LABEL_96;
      }

      if (((1 << (v9 + 23)) & 0x13) == 0)
      {
        goto LABEL_92;
      }

      goto LABEL_47;
    }

    if (v9 <= 5)
    {
      if (((1 << v9) & 0xA) != 0)
      {
        goto LABEL_47;
      }

      if (((1 << v9) & 0x34) != 0)
      {
        goto LABEL_92;
      }
    }

    if (v9 != 64221)
    {
      break;
    }

LABEL_47:
    v2 -= 4;
    if (v12)
    {
      v2 -= v9;
      if (v2 < 0)
      {
        if (*v4)
        {
          v19 = ne_log_obj();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
          {
            sub_100056BA8();
          }
        }

        return 0xFFFFFFFFLL;
      }

      v3 = (v3 + v9 + 4);
    }

    else
    {
      v3 += 2;
    }

    if (v2 <= 0)
    {
      return 0;
    }
  }

  if ((v9 - 64222) < 3)
  {
LABEL_92:
    if (*v4)
    {
      v29 = ne_log_obj();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        sub_100056A50(v9);
      }
    }

    return 0xFFFFFFFFLL;
  }

LABEL_96:
  if (*v4)
  {
    v30 = ne_log_obj();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      sub_100056AC8();
    }
  }

  return 0xFFFFFFFFLL;
}

uint64_t sub_10000B8CC(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = bswap32(*(a2 + 2)) >> 16;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  if (v4 >= 9)
  {
    v5 = v4 - 8;
    v6 = (a2 + 8);
    while (1)
    {
      if (v5 <= 3)
      {
        if (dword_100090058)
        {
          v22 = ne_log_obj();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            sub_1000572DC();
          }
        }

        return 0xFFFFFFFFLL;
      }

      v7 = *v6;
      v8 = bswap32(v7 & 0xFFFFFF7F) >> 16;
      v9 = (v7 << 8) & 0x8000;
      v10 = v6[1];
      v11 = __rev16(v10);
      if (dword_100090058)
      {
        v12 = ne_log_obj();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
        {
          v15 = v2;
          v16 = a1;
          v17 = sub_10003C118(v8);
          v18 = sub_10003C2F8(v8, v11);
          *buf = 136315650;
          v44 = v17;
          a1 = v16;
          v2 = v15;
          v45 = 1024;
          v46 = v9;
          v47 = 2080;
          v48 = v18;
          _os_log_debug_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "type=%s, flag=0x%04x, lorv=%s\n", buf, 0x1Cu);
        }
      }

      if (v8 <= 0xF)
      {
        ++*(&v49 + v8);
      }

      if (v8 > 3)
      {
        if (v8 > 5)
        {
          if (v8 != 6)
          {
            if ((v8 - 7) >= 3)
            {
LABEL_81:
              if (dword_100090058)
              {
                v25 = ne_log_obj();
                if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
                {
                  sub_100056C8C();
                }
              }
            }

            else if (dword_100090058)
            {
              v24 = ne_log_obj();
              if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
              {
                sub_100056900();
              }
            }

            return 0xFFFFFFFFLL;
          }

          if (!v9)
          {
            if (dword_100090058)
            {
              v26 = ne_log_obj();
              if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
              {
                sub_100056DEC();
              }
            }

            return 0xFFFFFFFFLL;
          }
        }

        else if (v8 == 4)
        {
          if (!v9)
          {
            if (dword_100090058)
            {
              v29 = ne_log_obj();
              if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
              {
                sub_1000572A0();
              }
            }

            return 0xFFFFFFFFLL;
          }

          if ((v11 - 1) >= 2)
          {
            if ((v11 - 61443) >= 2 && (v11 - 3) > 1)
            {
              if (dword_100090058)
              {
                v38 = ne_log_obj();
                if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
                {
                  sub_100057230();
                }
              }

              return 0xFFFFFFFFLL;
            }

            if (dword_100090058)
            {
              v13 = ne_log_obj();
              if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
              {
                sub_10005718C(&v41, v42);
              }
            }
          }
        }

        else
        {
          if (!v9)
          {
            if (dword_100090058)
            {
              v27 = ne_log_obj();
              if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
              {
                sub_100057150();
              }
            }

            return 0xFFFFFFFFLL;
          }

          if (v11 <= 4)
          {
            if (v11 == 1)
            {
              if (a1 == 2 && *(v2 + 5) != 2)
              {
                goto LABEL_109;
              }
            }

            else
            {
              if (v11 != 2)
              {
                if ((v11 - 3) >= 2)
                {
LABEL_118:
                  if (dword_100090058)
                  {
                    v37 = ne_log_obj();
                    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
                    {
                      sub_1000570E0();
                    }
                  }
                }

                else if (dword_100090058)
                {
                  v33 = ne_log_obj();
                  if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
                  {
                    sub_100056FEC();
                  }
                }

                return 0xFFFFFFFFLL;
              }

              if (a1 == 2 && *(v2 + 5) != 3)
              {
                goto LABEL_109;
              }
            }
          }

          else
          {
            switch(v11)
            {
              case 5:
                if (a1 == 2 && *(v2 + 5) != 5)
                {
                  goto LABEL_109;
                }

                break;
              case 6:
                if (a1 == 2 && *(v2 + 5) != 6)
                {
                  goto LABEL_109;
                }

                break;
              case 7:
                if (a1 == 2 && *(v2 + 5) != 7)
                {
LABEL_109:
                  if (dword_100090058)
                  {
                    v34 = ne_log_obj();
                    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
                    {
                      sub_10005705C((v2 + 5));
                    }
                  }

                  return 0xFFFFFFFFLL;
                }

                break;
              default:
                goto LABEL_118;
            }
          }
        }

        goto LABEL_59;
      }

      if (v8 == 1)
      {
        if (!v9)
        {
          if (dword_100090058)
          {
            v30 = ne_log_obj();
            if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
            {
              sub_100056FB0();
            }
          }

          return 0xFFFFFFFFLL;
        }

        if ((v11 - 1) >= 2u)
        {
          if (dword_100090058)
          {
            v31 = ne_log_obj();
            if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
            {
              sub_100056890();
            }
          }

          return 0xFFFFFFFFLL;
        }

        goto LABEL_59;
      }

      if (v8 != 2)
      {
        break;
      }

      if (v9)
      {
        if (dword_100090058)
        {
          v14 = ne_log_obj();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
          {
            sub_100056ED4(&v39, v40);
          }
        }

LABEL_59:
        v5 -= 4;
        v6 += 2;
        goto LABEL_60;
      }

      if (!v10)
      {
        if (dword_100090058)
        {
          v35 = ne_log_obj();
          if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
          {
            sub_100056F74();
          }
        }

        return 0xFFFFFFFFLL;
      }

      v5 = v5 - v11 - 4;
      if (v5 < 0)
      {
        if (dword_100090058)
        {
          v36 = ne_log_obj();
          if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
          {
            sub_100056F00();
          }
        }

        return 0xFFFFFFFFLL;
      }

      v6 = (v6 + v11 + 4);
LABEL_60:
      if (v5 <= 0)
      {
        v19 = DWORD1(v50) != 0;
        goto LABEL_63;
      }
    }

    if (v8 != 3)
    {
      goto LABEL_81;
    }

    if (!v9)
    {
      if (dword_100090058)
      {
        v28 = ne_log_obj();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          sub_100056E98();
        }
      }

      return 0xFFFFFFFFLL;
    }

    if (!sub_1000018C0(v11))
    {
      if (dword_100090058)
      {
        v32 = ne_log_obj();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
        {
          sub_100056E28();
        }
      }

      return 0xFFFFFFFFLL;
    }

    goto LABEL_59;
  }

  v19 = 0;
LABEL_63:
  if (a1 == 2 && !v19)
  {
    if (dword_100090058)
    {
      v20 = ne_log_obj();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        sub_1000571B8();
      }
    }

    return 0xFFFFFFFFLL;
  }

  if (a1 == 3 && *(v2 + 5) == 11 && !v19)
  {
    if (dword_100090058)
    {
      v23 = ne_log_obj();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        sub_1000571F4();
      }
    }

    return 0xFFFFFFFFLL;
  }

  return 0;
}