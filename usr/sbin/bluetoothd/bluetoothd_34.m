BOOL sub_1002555B4(uint64_t a1)
{
  v1 = 0;
  if (a1)
  {
    for (i = qword_100B5FC00; i; i = *(i + 40))
    {
      v1 = i == a1;
      if (i == a1)
      {
        break;
      }
    }
  }

  return v1;
}

BOOL sub_1002555E4(uint64_t a1)
{
  v1 = 0;
  if (a1)
  {
    for (i = qword_100B5FC10; i; i = *(i + 40))
    {
      v1 = i == a1;
      if (i == a1)
      {
        break;
      }
    }
  }

  return v1;
}

BOOL sub_100255614(uint64_t a1)
{
  v1 = 0;
  if (a1)
  {
    for (i = qword_100B5FC28; i; i = *(i + 40))
    {
      v1 = i == a1;
      if (i == a1)
      {
        break;
      }
    }
  }

  return v1;
}

uint64_t sub_100255698(unsigned __int16 *a1)
{
  v1 = qword_100B5FBD0;
  if (qword_100B5FBD0)
  {
    while (v1 != a1 || *(v1 + 54) == 7)
    {
      v1 = *(v1 + 5);
      if (!v1)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v1 = qword_100B5FBE0;
    if (qword_100B5FBE0)
    {
      while (v1 != a1)
      {
        v1 = *(v1 + 5);
        if (!v1)
        {
          goto LABEL_8;
        }
      }
    }

    else
    {
LABEL_8:
      v1 = qword_100B5FBF0;
      if (qword_100B5FBF0)
      {
        while (v1 != a1)
        {
          v1 = *(v1 + 5);
          if (!v1)
          {
            goto LABEL_11;
          }
        }
      }

      else
      {
LABEL_11:
        v1 = qword_100B5FC20;
        if (qword_100B5FC20)
        {
          while (v1 != a1)
          {
            v1 = *(v1 + 5);
            if (!v1)
            {
              goto LABEL_14;
            }
          }
        }

        else
        {
LABEL_14:
          v1 = qword_100B5FC00;
          if (!qword_100B5FC00)
          {
            return 0;
          }

          while (v1 != a1)
          {
            v1 = *(v1 + 5);
            if (!v1)
            {
              return 0;
            }
          }
        }
      }
    }
  }

  return *v1;
}

__int128 *sub_100255740(int a1)
{
  result = qword_100B5FBD0;
  if (qword_100B5FBD0)
  {
    while (*(result + 54) == 7 || *(result + 1) != a1)
    {
      result = *(result + 5);
      if (!result)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    result = qword_100B5FBE0;
    if (qword_100B5FBE0)
    {
      while (*(result + 1) != a1)
      {
        result = *(result + 5);
        if (!result)
        {
          goto LABEL_8;
        }
      }
    }

    else
    {
LABEL_8:
      result = qword_100B5FBF0;
      if (qword_100B5FBF0)
      {
        while (*(result + 1) != a1)
        {
          result = *(result + 5);
          if (!result)
          {
            goto LABEL_11;
          }
        }
      }

      else
      {
LABEL_11:
        result = qword_100B5FC20;
        if (qword_100B5FC20)
        {
          while (*(result + 1) != a1)
          {
            result = *(result + 5);
            if (!result)
            {
              goto LABEL_14;
            }
          }
        }

        else
        {
LABEL_14:
          result = qword_100B5FC00;
          if (qword_100B5FC00)
          {
            while (*(result + 1) != a1)
            {
              result = *(result + 5);
              if (!result)
              {
                goto LABEL_17;
              }
            }
          }

          else
          {
LABEL_17:
            result = &xmmword_100B5F8D8;
            if (DWORD1(xmmword_100B5F8D8) != a1)
            {
              if (DWORD1(xmmword_100B5FA50) == a1)
              {
                return &xmmword_100B5FA50;
              }

              else
              {
                return 0;
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_10025581C(int a1, int a2)
{
  for (result = qword_100B5FC00; result; result = *(result + 40))
  {
    if (*(result + 56) != 7 && *(result + 58) == a1 && *(result + 59) == a2)
    {
      break;
    }
  }

  return result;
}

uint64_t sub_10025585C(uint64_t a1)
{
  v1 = sub_1000E1FE8(a1);

  return sub_100255698(v1);
}

uint64_t sub_100255884(unint64_t a1)
{
  v1 = sub_10009A66C(a1);
  v3 = v1;
  v5 = BYTE6(v1);
  v4 = WORD2(v1);
  return sub_1000E5EA8(&v3);
}

uint64_t sub_1002558C0(_DWORD *a1)
{
  v1 = qword_100B5FBF0;
  if (!qword_100B5FBF0)
  {
    return 0xFFFFFFFFLL;
  }

  while (1)
  {
    if (*(v1 + 124) != 7)
    {
      if (*(v1 + 55) == 1 && *(v1 + 56) == *a1 && *(v1 + 59) == *(a1 + 3))
      {
        break;
      }

      if (*(v1 + 48) == *a1 && *(v1 + 51) == *(a1 + 3))
      {
        break;
      }
    }

    v1 = *(v1 + 40);
    if (!v1)
    {
      return 0xFFFFFFFFLL;
    }
  }

  return *(v1 + 4);
}

uint64_t sub_100255934(uint64_t a1)
{
  result = qword_100B5FBD0;
  if (qword_100B5FBD0)
  {
    while (*(result + 54) == 7 || *(result + 48) != *a1 || *(result + 52) != *(a1 + 4))
    {
      result = *(result + 40);
      if (!result)
      {
        goto LABEL_8;
      }
    }
  }

  else
  {
LABEL_8:
    result = qword_100B5FBF0;
    if (qword_100B5FBF0)
    {
      while (1)
      {
        if (*(result + 124) != 7)
        {
          if (*(result + 55) == 1 && *(result + 57) == *a1 && *(result + 61) == *(a1 + 4))
          {
            break;
          }

          if (*(result + 49) == *a1 && *(result + 53) == *(a1 + 4))
          {
            break;
          }
        }

        result = *(result + 40);
        if (!result)
        {
          goto LABEL_20;
        }
      }
    }

    else
    {
LABEL_20:
      for (result = qword_100B5FBE0; result; result = *(result + 40))
      {
        v6 = *(result + 48);
        if (v6 && *(v6 + 54) != 7)
        {
          v7 = *(v6 + 48);
          v8 = *(v6 + 52);
          if (v7 == *a1 && v8 == *(a1 + 4))
          {
            break;
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_100255A20(uint64_t a1)
{
  v1 = 0;
  if (a1)
  {
    v2 = qword_100B5FBF0;
    if (qword_100B5FBF0)
    {
      while (v2 != a1 || *(v2 + 124) == 7)
      {
        v2 = *(v2 + 40);
        if (!v2)
        {
          return 0;
        }
      }

      v3 = 48;
      if (*(v2 + 55))
      {
        v3 = 56;
      }

      return v2 + v3;
    }
  }

  return v1;
}

uint64_t sub_100255A78(uint64_t a1)
{
  v1 = 0;
  if (a1)
  {
    v2 = qword_100B5FBD0;
    if (qword_100B5FBD0)
    {
      while (v2 != a1 || *(v2 + 54) == 7)
      {
        v2 = *(v2 + 40);
        if (!v2)
        {
          return 0;
        }
      }

      return v2 + 48;
    }
  }

  return v1;
}

__int16 *sub_100255ABC(uint64_t a1)
{
  v1 = qword_100B5FBE0;
  if (qword_100B5FBE0)
  {
    do
    {
      if (*v1 == -1)
      {
        v3 = *(v1 + 6);
        if (v3)
        {
          v4 = *(v3 + 48);
          v5 = *(v3 + 52);
          if (v4 == *a1 && v5 == *(a1 + 4))
          {
            return v1;
          }
        }

        else
        {
          sub_1000D660C();
        }
      }

      v1 = *(v1 + 5);
    }

    while (v1);
  }

  return v1;
}

uint64_t sub_100255B2C(uint64_t a1, char a2)
{
  if (sub_10000C240())
  {
    sub_10000AF54("Allocating ACL connection for %: at state:%d while numAclConnections is %d", v4, v5, v6, v7, v8, v9, v10, a1);
    v11 = sub_10000C050(0x2Eu);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v47 = sub_10000C0FC();
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
    }
  }

  v12 = dword_100B5FBC8;
  if (v12 == *sub_1003045A0(0x28u))
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Max ACL connections reached - refusing to allocate acl connection record", v13, v14, v15, v16, v17, v18, v19, v45);
      v20 = sub_10000C050(0x2Eu);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    if (sub_10000EFCC())
    {
      sub_10023B3C0();
    }

    sub_1000D660C();
    return 0;
  }

  v21 = sub_1001BBBD8(0x178uLL, 0x10F20400F36A590uLL);
  if (!v21)
  {
LABEL_20:
    if (sub_10000C240())
    {
      sub_10000AF54("Out of memory - unable to allocate acl connection record", v36, v37, v38, v39, v40, v41, v42, v45);
      v43 = sub_10000C050(0x2Eu);
      if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    return 0;
  }

  v22 = v21;
  v23 = *a1;
  v21[26] = *(a1 + 4);
  *(v21 + 12) = v23;
  *(v21 + 54) = a2;
  v21[69] = *(qword_100BCDFC8 + 10) & 6 | 1;
  *(v21 + 144) = -1;
  *(v21 + 152) = 0;
  v21[70] = 32000;
  *(v21 + 2) = 0;
  *v21 = -1;
  v24 = dword_100B52360++;
  *(v21 + 1) = v24;
  v21[10] = -1;
  *(v21 + 256) = *(sub_1003045A0(0x28u) + 10) != 0;
  *(v22 + 153) = 0;
  *(v22 + 324) = 0;
  v25 = &qword_100B5FBD0;
  v26 = qword_100B5FBD0;
  if (qword_100B5FBD0)
  {
    do
    {
      v27 = v26;
      v26 = *(v26 + 40);
    }

    while (v26);
    v25 = (v27 + 40);
  }

  *v25 = v22;
  ++dword_100B5FBC8;
  if (sub_10029F1F0(v22))
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Fail to allocate L2CAP resources for new ACL connection", v28, v29, v30, v31, v32, v33, v34, v45);
      v35 = sub_10000C050(0x2Eu);
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    sub_1000E1F34(v22);
    sub_10000C1E8(v22);
    goto LABEL_20;
  }

  return v22;
}

char *sub_100255DF0(uint64_t a1)
{
  v2 = dword_100B5FBD8;
  if (v2 == *(sub_1003045A0(0x28u) + 1))
  {
    if (!sub_10000C240())
    {
      return 0;
    }

    sub_10000AF54("Max SCO connections reached - refusing to allocate sco connection record", v3, v4, v5, v6, v7, v8, v9, v26);
    v10 = sub_10000C050(0x2Eu);
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      return 0;
    }

    goto LABEL_12;
  }

  v11 = sub_1001BBBD8(0x40uLL, 0x1020040F38FB7CEuLL);
  if (!v11)
  {
    if (!sub_10000C240())
    {
      return 0;
    }

    sub_10000AF54("Out of memory - unable to allocate sco connection record", v17, v18, v19, v20, v21, v22, v23, v26);
    v24 = sub_10000C050(0x2Eu);
    if (!os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      return 0;
    }

LABEL_12:
    sub_10080F7A0();
    return 0;
  }

  v12 = v11;
  *(v11 + 6) = sub_1000E1FE8(a1);
  *(v12 + 57) = 255;
  v12[59] = 0;
  v12[2] = 1;
  *v12 = -1;
  v13 = dword_100B52360++;
  *(v12 + 1) = v13;
  v14 = &qword_100B5FBE0;
  v15 = qword_100B5FBE0;
  if (qword_100B5FBE0)
  {
    do
    {
      v16 = v15;
      v15 = *(v15 + 40);
    }

    while (v15);
    v14 = (v16 + 40);
  }

  *v14 = v12;
  ++dword_100B5FBD8;
  return v12;
}

void *sub_100255F4C(int *a1)
{
  v2 = dword_100B5FBE8;
  if (v2 == *(sub_1003045A0(0x28u) + 2))
  {
    if (!sub_10000C240())
    {
      return 0;
    }

    sub_10000AF54("Max LE connections reached - refusing to allocate LE connection record", v3, v4, v5, v6, v7, v8, v9, v28);
    v10 = sub_10000C050(0x2Eu);
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      return 0;
    }

    goto LABEL_10;
  }

  v11 = sub_1001BBBD8(0x178uLL, 0x10A004068D5B6DEuLL);
  if (!v11)
  {
    if (!sub_10000C240())
    {
      return 0;
    }

    sub_10000AF54("Out of memory - unable to allocate LE connection record", v16, v17, v18, v19, v20, v21, v22, v28);
    v23 = sub_10000C050(0x2Eu);
    if (!os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      return 0;
    }

LABEL_10:
    sub_10080F7A0();
    return 0;
  }

  v12 = v11;
  v13 = *a1;
  v14 = *(a1 + 2);
  *(v11 + 54) = *(a1 + 6);
  *(v11 + 26) = v14;
  *(v11 + 12) = v13;
  *(v11 + 2) = 4;
  v15 = dword_100B52360++;
  *(v11 + 1) = v15;
  if (sub_10029F1F0(v11))
  {
    sub_10000C1E8(v12);
    return 0;
  }

  v25 = &qword_100B5FBF0;
  v26 = qword_100B5FBF0;
  if (qword_100B5FBF0)
  {
    do
    {
      v27 = v26;
      v26 = *(v26 + 40);
    }

    while (v26);
    v25 = (v27 + 40);
  }

  *v25 = v12;
  ++dword_100B5FBE8;
  return v12;
}

_BYTE *sub_1002560B4(__int16 a1)
{
  v2 = dword_100B5FBF8;
  if (v2 == *(sub_1003045A0(0x28u) + 3))
  {
    if (!sub_10000C240())
    {
      return 0;
    }

    sub_10000AF54("Max LE CIS connections reached - refusing to allocate LE CIS connection record", v3, v4, v5, v6, v7, v8, v9, v24);
    v10 = sub_10000C050(0x2Eu);
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      return 0;
    }

    goto LABEL_12;
  }

  result = sub_1001BBBD8(0x88uLL, 0x1030040A3D87AC2uLL);
  if (!result)
  {
    if (!sub_10000C240())
    {
      return 0;
    }

    sub_10000AF54("Out of memory - unable to allocate LE CIS connection record", v16, v17, v18, v19, v20, v21, v22, v24);
    v23 = sub_10000C050(0x2Eu);
    if (!os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      return 0;
    }

LABEL_12:
    sub_10080F7A0();
    return 0;
  }

  result[2] = 5;
  v12 = dword_100B52360++;
  *(result + 1) = v12;
  *result = a1;
  v13 = &qword_100B5FC00;
  v14 = qword_100B5FC00;
  if (qword_100B5FC00)
  {
    do
    {
      v15 = v14;
      v14 = *(v14 + 40);
    }

    while (v14);
    v13 = (v15 + 40);
  }

  *v13 = result;
  ++dword_100B5FBF8;
  return result;
}

_BYTE *sub_1002561EC(__int16 a1)
{
  v2 = dword_100B5FC08;
  if (v2 == *(sub_1003045A0(0x28u) + 4))
  {
    if (!sub_10000C240())
    {
      return 0;
    }

    sub_10000AF54("Max LE BIS connections reached - refusing to allocate LE BIS connection record", v3, v4, v5, v6, v7, v8, v9, v24);
    v10 = sub_10000C050(0x2Eu);
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      return 0;
    }

    goto LABEL_12;
  }

  result = sub_1001BBBD8(0x60uLL, 0x10100400D7E9A58uLL);
  if (!result)
  {
    if (!sub_10000C240())
    {
      return 0;
    }

    sub_10000AF54("Out of memory - unable to allocate LE BIS connection record", v16, v17, v18, v19, v20, v21, v22, v24);
    v23 = sub_10000C050(0x2Eu);
    if (!os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      return 0;
    }

LABEL_12:
    sub_10080F7A0();
    return 0;
  }

  result[2] = 6;
  v12 = dword_100B52360++;
  *(result + 1) = v12;
  *result = a1;
  v13 = &qword_100B5FC10;
  v14 = qword_100B5FC10;
  if (qword_100B5FC10)
  {
    do
    {
      v15 = v14;
      v14 = *(v14 + 40);
    }

    while (v14);
    v13 = (v15 + 40);
  }

  *v13 = result;
  ++dword_100B5FC08;
  return result;
}

_BYTE *sub_100256324(__int16 a1)
{
  v2 = dword_100B5FC30;
  if (v2 == *(sub_1003045A0(0x28u) + 4))
  {
    if (!sub_10000C240())
    {
      return 0;
    }

    sub_10000AF54("Max LE BIS sync connections reached - refusing to allocate LE BIS sync connection record", v3, v4, v5, v6, v7, v8, v9, v24);
    v10 = sub_10000C050(0x2Eu);
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      return 0;
    }

    goto LABEL_12;
  }

  result = sub_1001BBBD8(0x60uLL, 0x109004076BC9979uLL);
  if (!result)
  {
    if (!sub_10000C240())
    {
      return 0;
    }

    sub_10000AF54("Out of memory - unable to allocate LE BIS sync connection record", v16, v17, v18, v19, v20, v21, v22, v24);
    v23 = sub_10000C050(0x2Eu);
    if (!os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      return 0;
    }

LABEL_12:
    sub_10080F7A0();
    return 0;
  }

  result[2] = 7;
  v12 = dword_100B52360++;
  *(result + 1) = v12;
  *result = a1;
  v13 = &qword_100B5FC28;
  v14 = qword_100B5FC28;
  if (qword_100B5FC28)
  {
    do
    {
      v15 = v14;
      v14 = *(v14 + 40);
    }

    while (v14);
    v13 = (v15 + 40);
  }

  *v13 = result;
  ++dword_100B5FC30;
  return result;
}

void *sub_10025645C(uint64_t a1)
{
  v2 = dword_100B5FC18;
  if (v2 == *(sub_1003045A0(0x28u) + 5))
  {
    if (!sub_10000C240())
    {
      return 0;
    }

    sub_10000AF54("Max OTHER connections reached - refusing to allocate new OTHER connection record", v3, v4, v5, v6, v7, v8, v9, v26);
    v10 = sub_10000C050(0x2Eu);
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      return 0;
    }

    goto LABEL_10;
  }

  v11 = sub_1001BBBD8(0x48uLL, 0x10200405CCC4D54uLL);
  if (!v11)
  {
    if (!sub_10000C240())
    {
      return 0;
    }

    sub_10000AF54("Out of memory - unable to allocate OTHER connection record", v14, v15, v16, v17, v18, v19, v20, v26);
    v21 = sub_10000C050(0x2Eu);
    if (!os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      return 0;
    }

LABEL_10:
    sub_10080F7A0();
    return 0;
  }

  v12 = v11;
  *(v11 + 2) = 8;
  *(v11 + 6) = a1;
  v13 = dword_100B52360++;
  *(v11 + 1) = v13;
  if (sub_10029F1F0(v11))
  {
    sub_10000C1E8(v12);
    return 0;
  }

  v23 = &qword_100B5FC20;
  v24 = qword_100B5FC20;
  if (qword_100B5FC20)
  {
    do
    {
      v25 = v24;
      v24 = *(v24 + 40);
    }

    while (v24);
    v23 = (v25 + 40);
  }

  *v23 = v12;
  ++dword_100B5FC18;
  return v12;
}

uint64_t sub_1002565B0(uint64_t a1)
{
  v1 = qword_100B5FC00;
  if (!qword_100B5FC00)
  {
    return 0;
  }

  while (v1 != a1)
  {
    v1 = *(v1 + 40);
    if (!v1)
    {
      return 0;
    }
  }

  return *(v1 + 48);
}

uint64_t sub_1002565E8()
{
  v2 = 0;
  v0 = 0;
  while (sub_1000C08D0(&v2))
  {
    if (*(v2 + 124) != 7)
    {
      v0 = v0 + *(v2 + 127);
    }
  }

  return v0;
}

uint64_t sub_100256648()
{
  v2 = 0;
  v0 = 0;
  while (sub_1000BBFD4(&v2))
  {
    if (*(v2 + 248))
    {
      v0 = (v0 + 1);
    }

    else
    {
      v0 = v0;
    }
  }

  return v0;
}

BOOL sub_1002566A0(uint64_t a1)
{
  v1 = a1;
  if (!a1)
  {
    a1 = sub_1000D660C(0);
  }

  v2 = *v1;
  if (*v1)
  {
    v3 = qword_100B5FC00;
    if (qword_100B5FC00)
    {
      while (v3 != v2)
      {
        v3 = *(v3 + 40);
        if (!v3)
        {
          goto LABEL_7;
        }
      }
    }

    else
    {
LABEL_7:
      sub_1000D660C(a1);
      v2 = *v1;
    }

    v4 = (v2 + 40);
  }

  else
  {
    v4 = &qword_100B5FC00;
  }

  v5 = *v4;
  *v1 = v5;
  return v5 != 0;
}

BOOL sub_100256714(uint64_t *a1)
{
  if (!a1)
  {
    sub_1000D660C();
  }

  v2 = *a1;
  if (*a1)
  {
    v3 = qword_100B5FC10;
    if (qword_100B5FC10)
    {
      while (v3 != v2)
      {
        v3 = *(v3 + 40);
        if (!v3)
        {
          goto LABEL_7;
        }
      }
    }

    else
    {
LABEL_7:
      sub_1000D660C();
      v2 = *a1;
    }

    v4 = (v2 + 40);
  }

  else
  {
    v4 = &qword_100B5FC10;
  }

  v5 = *v4;
  *a1 = v5;
  return v5 != 0;
}

uint64_t sub_100256788(uint64_t a1)
{
  if (a1 && (v1 = qword_100B5FBD0) != 0)
  {
    while (v1 != a1)
    {
      v1 = *(v1 + 40);
      if (!v1)
      {
        goto LABEL_5;
      }
    }

    return 1;
  }

  else
  {
LABEL_5:
    v2 = 0;
    if (a1)
    {
      v3 = qword_100B5FBF0;
      if (qword_100B5FBF0)
      {
        while (v3 != a1)
        {
          v3 = *(v3 + 40);
          if (!v3)
          {
            return 0;
          }
        }

        return 3;
      }
    }
  }

  return v2;
}

const char *sub_1002567E8(unsigned int a1)
{
  if (a1 > 7)
  {
    return "unknown";
  }

  else
  {
    return (&off_100AE8208)[a1];
  }
}

const char *sub_10025680C(unsigned int a1)
{
  if (a1 > 7)
  {
    return "NA";
  }

  else
  {
    return (&off_100AE8248)[a1];
  }
}

void sub_100256830(uint64_t a1, float a2)
{
  *v11 = 0;
  v12 = 0;
  memset(v13, 0, sizeof(v13));
  LOWORD(a2) = *(a1 + 80);
  gcvt((LODWORD(a2) * 1.25), 7, v11);
  sub_100304C0C(*(a1 + 70));
  v3 = *(a1 + 124);
  sub_10025680C(*(a1 + 132));
  sub_1002567E8(v3);
  sub_100304B24("Le topology - {adv-addr: %:-%s, resolved-addr: %:-%s, lmhandle: 0x%2x, interval: %s ms, latency: %d, lsto: %d, minCE: %d, maxCE: %d, role: %s, state: %s, ready-state: %s, enc-state: %s, phyStatsEnabled: %d}", v4, v5, v6, v7, v8, v9, v10, a1 + 49);
}

void sub_1002569A0(uint64_t a1)
{
  v2 = a1 + 48;
  sub_1002567E8(*(a1 + 54));
  *v11 = 0;
  v12 = 0;
  memset(v13, 0, sizeof(v13));
  LOWORD(v3) = *(a1 + 136);
  gcvt((v3 * 0.625), 7, v11);
  sub_100304C0C(*(a1 + 144));
  sub_100304BE8(*(a1 + 152));
  sub_100304B50(*(a1 + 153));
  sub_100304B24("ACL topology - {bd-addr: %:, lmhandle: 0x%2x, reference: %d, role: %s, state: %s, lk-mode: %s, enc-state: %s, lsto: %d, interval: %s ms, phyStatsEnabled: %d}", v4, v5, v6, v7, v8, v9, v10, v2);
}

void sub_100256AA4(unsigned __int16 *a1)
{
  v1 = *(a1 + 6);
  v2 = qword_100B5FBD0;
  if (v1)
  {
    v3 = qword_100B5FBD0 == 0;
  }

  else
  {
    v3 = 1;
  }

  if (!v3)
  {
    while (v2 != v1)
    {
      v2 = *(v2 + 40);
      if (!v2)
      {
        return;
      }
    }

    v4 = *a1;
    sub_100304B74(*(a1 + 58));
    sub_100304B24("Voice topology - {voicehandle: 0x%3x, lmhandle: 0x%2x, airMode: %d, lk-type: %s, phyStatsEnabled: %d}", v5, v6, v7, v8, v9, v10, v11, v4);
  }
}

void sub_100256B30()
{
  if (dword_100B5FBE8)
  {
      ;
    }
  }
}

void sub_100256B80()
{
  v0 = dword_100B5FBD8;
  if (dword_100B5FBC8 | dword_100B5FBD8)
  {
    if (dword_100B5FBC8)
    {
        ;
      }

      v0 = dword_100B5FBD8;
    }

    if (v0)
    {
        ;
      }
    }
  }
}

void sub_100256C10()
{
  if (dword_100B5FBC8)
  {
    v0 = 0;
  }

  else
  {
    v0 = dword_100B5FBD8 == 0;
  }

  if (!v0 || dword_100B5FBE8 != 0 || dword_100B5FBF8 != 0)
  {
    if (dword_100B5FBC8)
    {
        ;
      }
    }

    if (dword_100B5FBD8)
    {
        ;
      }
    }

    if (dword_100B5FBE8)
    {
        ;
      }
    }

    if (dword_100B5FBF8)
    {
        ;
      }
    }
  }
}

void sub_100256D50(uint64_t a1, uint64_t a2)
{
  if (DWORD2(xmmword_100BCE2E0))
  {
    if (a1 > 2)
    {
      if (a1 == 3)
      {
        ++dword_100B5FC48;
        sub_100258440(a2);
        goto LABEL_20;
      }

      if (a1 == 4)
      {
        if (!sub_10000C240())
        {
          goto LABEL_17;
        }

        sub_10000AF54("OI_HCIIfc_SendCompleted, invalid sendType %d", v11, v12, v13, v14, v15, v16, v17, 4);
        v18 = sub_10000C050(0x2Eu);
        if (!os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_17;
        }

LABEL_16:
        sub_1000E09C0();
LABEL_17:
        sub_1000D660C();
        goto LABEL_20;
      }
    }

    else
    {
      if (a1 == 1)
      {
        ++dword_100B5FC38;
        sub_1002552E4();
        goto LABEL_20;
      }

      if (a1 == 2)
      {
        ++dword_100B5FC40;
        sub_1002582B4(a2);
LABEL_20:
        sub_10000C1F8();
        return;
      }
    }

    if (!sub_10000C240())
    {
      goto LABEL_17;
    }

    sub_10000AF54("OI_HCIIfc_SendCompleted, unknown sendType %d", v19, v20, v21, v22, v23, v24, v25, a1);
    v26 = sub_10000C050(0x2Eu);
    if (!os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("OI_HCIIfc_SendCompleted, HCI not initialized - ignoring event", v3, v4, v5, v6, v7, v8, v9, v27);
    v10 = sub_10000C050(0x2Eu);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_1000E09C0();
    }
  }
}

char *sub_100256ED8(_BYTE *a1)
{
  if (a1)
  {
    *a1 = 5;
  }

  return &byte_100B5FC50;
}

void sub_100256EF0(int a1)
{
  if (sub_10000C240())
  {
    v9 = 78;
    if (a1)
    {
      v9 = 89;
    }

    sub_10000AF54("OI_HCIIfc_SetDataReceivedAssertionRequired %c", v2, v3, v4, v5, v6, v7, v8, v9);
    v10 = sub_10000C050(0x2Eu);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v12 = sub_10000C0FC();
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
    }
  }

  if (byte_100B5FC55 != a1)
  {
    byte_100B5FC55 = a1;
    if ((a1 & 1) == 0)
    {
      sub_1001BBA60();
    }
  }
}

void sub_100256FE0(uint64_t a1, uint64_t a2)
{
  memset(v58, 0, sizeof(v58));
  v4 = *(a2 + 4);
  v5 = v4 >> 10;
  v6 = *(a2 + 8);
  sub_10028A99C(v4);
  if (v5 < 0x3F)
  {
    sub_100304ACC(v58, 256, "HCI expected event %d with opcode %s (0x%x) %s, reason is %!", v7, v8, v9, v10, v11, v6);
  }

  else
  {
    sub_100304ACC(v58, 256, "HCI expected event %d with opcode %s (0x%x) %s, reason is %!. subopcode: 0x%02x -- subopcode2: 0x%02x", v7, v8, v9, v10, v11, v6);
  }

  if (sub_10000C240())
  {
    sub_10000AF54(v58, v12, v13, v14, v15, v16, v17, v18, v51);
    v19 = sub_10000C050(0x2Eu);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }

  if (a1 == 634)
  {
    if (!sub_100018C6C())
    {
      goto LABEL_18;
    }

LABEL_11:
    if (sub_10000C240())
    {
      sub_10000AF54("Controller core dump is in progress, don't trigger expected event timeouts", v20, v21, v22, v23, v24, v25, v26, v51);
      v27 = sub_10000C050(0x2Eu);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        sub_10080F604();
      }
    }

    return;
  }

  sub_1001C4B04(v58);
  if (sub_100018C6C())
  {
    goto LABEL_11;
  }

  if (a1 == 621)
  {
    if (off_100B5FC58)
    {
      off_100B5FC58(621);
    }

    else
    {
      sub_1000D660C();
    }
  }

LABEL_18:
  v28 = *(a2 + 8);
  switch(v28)
  {
    case 0xE:
      v52 = 0;
      *&v53 = &v52;
      WORD4(v53) = 1;
      HIWORD(v53) = 1;
      *(&v53 + 10) = 65537;
      (*(a2 + 16))(a1, *(a2 + 24), &v53);
      return;
    case 0x3E:
      v57 = 0;
      v55 = 0u;
      v56 = 0u;
      v53 = 0u;
      v54 = 0u;
      if (sub_100005FEC(62))
      {
        sub_100257520(a1, a2, &v53);
        sub_1002CD87C(v53, DWORD2(v53), v54);
        return;
      }

      if (sub_10000C240())
      {
        sub_10000AF54("Failed to find event descriptor for %x", v35, v36, v37, v38, v39, v40, v41, 62);
        v42 = sub_10000C050(0x2Eu);
        if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
        {
LABEL_32:
          sub_1000E09C0();
        }
      }

      break;
    case 0xF:
      sub_10025734C(a2, a1);
      return;
    default:
      v57 = 0;
      v55 = 0u;
      v56 = 0u;
      v53 = 0u;
      v54 = 0u;
      v29 = sub_100005FEC(v28);
      if (v29)
      {
        sub_100257644(a1, a2, v29, &v53);
        sub_1000DC68C(v28, &v53, 0, 0, v34, v30, v31, v32, v33);
        return;
      }

      if (sub_10000C240())
      {
        sub_10000AF54("Failed to find event descriptor for %x", v43, v44, v45, v46, v47, v48, v49, v28);
        v50 = sub_10000C050(0x2Eu);
        if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_32;
        }
      }

      break;
  }
}

void sub_10025734C(uint64_t a1, uint64_t a2)
{
  v40 = 0;
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v4 = sub_10001EE38(*(a1 + 6));
  if (!v4)
  {
    if (!sub_10000C240())
    {
      goto LABEL_16;
    }

    sub_10000AF54("%! (%d)", v6, v7, v8, v9, v10, v11, v12, 620);
    v13 = sub_10000C050(0x2Eu);
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  v5 = v4[20];
  if (v5 == 62)
  {
    if (sub_100005FEC(62))
    {
      sub_100257520(a2, a1, &v36);
      sub_1002CD87C(v36, DWORD2(v36), v37);
      return;
    }

    if (!sub_10000C240())
    {
      goto LABEL_16;
    }

    sub_10000AF54("%! (%d)", v20, v21, v22, v23, v24, v25, v26, 620);
    v27 = sub_10000C050(0x2Eu);
    if (!os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  v14 = sub_100005FEC(v4[20]);
  if (v14)
  {
    sub_100257644(a2, a1, v14, &v36);
    sub_1000DC68C(v5, &v36, 0, 0, v19, v15, v16, v17, v18);
    return;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("%! (%d)", v28, v29, v30, v31, v32, v33, v34, 620);
    v35 = sub_10000C050(0x2Eu);
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
LABEL_15:
      sub_1000E09C0();
    }
  }

LABEL_16:
  sub_1000D660C();
}

void sub_100257520(int a1, uint64_t a2, uint64_t a3)
{
  *(a3 + 64) = 0;
  *(a3 + 32) = 0u;
  *(a3 + 48) = 0u;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  *a3 = *(a2 + 4);
  *(a3 + 8) = a1;
  v4 = *(a2 + 4);
  v5 = (v4 - 8294);
  if (v5 <= 0x22)
  {
    if (((1 << (v4 - 102)) & 0x7C) != 0)
    {
      goto LABEL_9;
    }

    if (((1 << (v4 - 102)) & 0x401000001) != 0)
    {
LABEL_10:
      *(a3 + 16) = *(a2 + 16);
      return;
    }

    if (v5 == 31)
    {
      goto LABEL_9;
    }
  }

  v6 = v4 - 13;
  if ((v4 - 8205) <= 0x37)
  {
    if (((1 << v6) & 0x1240) == 0)
    {
      if (((1 << v6) & 0xC0000000000001) == 0)
      {
        goto LABEL_8;
      }

LABEL_9:
      *(a3 + 16) = a2 + 16;
      return;
    }

    goto LABEL_10;
  }

LABEL_8:
  if (v4 == 8292)
  {
    goto LABEL_9;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("Unknown expected param type.", v7, v8, v9, v10, v11, v12, v13, v3);
    v14 = sub_10000C050(0x2Eu);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_1000E09C0();
    }
  }
}

void sub_100257644(uint64_t a1, uint64_t a2, unsigned __int8 *a3, uint64_t *a4)
{
  v4 = a4;
  bzero(a4, 8 * a3[4]);
  if (a3[4])
  {
    v8 = 0;
    v9 = (a2 + 16);
    v10 = v4;
    while (1)
    {
      v11 = *(*(a3 + 1) + v8);
      v12 = v11 - 99;
      if ((v11 - 99) > 0x10)
      {
        goto LABEL_12;
      }

      if (((1 << v12) & 0x290D) == 0)
      {
        break;
      }

LABEL_5:
      *v10 = &unk_1008A4460;
LABEL_31:
      ++v8;
      ++v10;
      if (v8 >= a3[4])
      {
        goto LABEL_32;
      }
    }

    if (((1 << v12) & 0xA0) != 0)
    {
      v13 = a3[17];
      if (v13 == 7)
      {
        v14 = sub_100255ABC(v9);
        if (v14)
        {
          if (*(*(v14 + 48) + 54) == 7)
          {
            v14 = *(v14 + 48);
          }

          if (v14)
          {
            goto LABEL_30;
          }
        }

        else
        {
          v14 = sub_1000E1FE8(v9);
          if (v14)
          {
            goto LABEL_30;
          }
        }

        if (sub_10000C240())
        {
          v39 = a1;
          sub_10000AF54("No connection record found for %:", v25, v26, v27, v28, v29, v30, v31, v9);
          v32 = sub_10000C050(0x2Eu);
          if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
          {
            v34 = sub_10000C0FC();
            *buf = 136446466;
            v41 = v34;
            v42 = 1024;
            v43 = 0xFFFF;
            _os_log_error_impl(&_mh_execute_header, v32, OS_LOG_TYPE_ERROR, "%{public}s (status=%{bluetooth:OI_STATUS}u)", buf, 0x12u);
          }

          v14 = 0;
          a1 = v39;
          goto LABEL_30;
        }
      }

      else
      {
        if (v13 == 6)
        {
          v14 = sub_1000ABB80(*v9);
LABEL_30:
          *v10 = v14;
          goto LABEL_31;
        }

        if (sub_10000C240())
        {
          v22 = v4;
          v23 = a1;
          sub_10000AF54("Unable to recover handle from failed status event - no event context", v15, v16, v17, v18, v19, v20, v21, v38);
          v24 = sub_10000C050(0x2Eu);
          if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
          {
            v33 = sub_10000C0FC();
            *buf = 136446466;
            v41 = v33;
            v42 = 1024;
            v43 = 0xFFFF;
            _os_log_error_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "%{public}s (status=%{bluetooth:OI_STATUS}u)", buf, 0x12u);
          }

          v14 = 0;
          a1 = v23;
          v4 = v22;
          goto LABEL_30;
        }
      }

      v14 = 0;
      goto LABEL_30;
    }

    if (v11 == 115)
    {
      *v10 = a1;
      goto LABEL_31;
    }

LABEL_12:
    if (v11 != 97)
    {
      goto LABEL_31;
    }

    if (a3[17] == 7)
    {
      *v10 = v9;
      goto LABEL_31;
    }

    goto LABEL_5;
  }

LABEL_32:
  v35 = *a3;
  if (v35 == 44)
  {
    v36 = 2;
    v37 = 3;
    goto LABEL_37;
  }

  if (v35 == 20 && sub_1000B8B5C(v4[1]))
  {
    v36 = *(v4[1] + 152) & 0x7F;
    v37 = 2;
LABEL_37:
    LODWORD(v4[v37]) = v36;
  }
}

void sub_100257960(uint64_t *a1, int a2, int a3)
{
  v64 = 0;
  v65 = 0;
  v66 = 0;
  if (!a2)
  {
    if (!sub_10000C240())
    {
      return;
    }

    sub_10000AF54("handle_InquiryResult bad parm length: expected %d, got %d", v9, v10, v11, v12, v13, v14, v15, 1);
    v16 = sub_10000C050(0x2Eu);
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      return;
    }

LABEL_10:
    sub_1000E09C0();
    return;
  }

  if (*(a1 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcievents.c");
    goto LABEL_67;
  }

  v4 = *(a1 + 6);
  if (*(a1 + 5) <= v4)
  {
LABEL_67:
    v63 = "ByteStream_NumReadBytesAvail(*pBs) >= 1";
    goto LABEL_69;
  }

  if (*(a1 + 14) != 1)
  {
    v63 = "(*pBs).__RWFlag == BYTESTREAM_READ";
LABEL_69:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcievents.c", 1177, v63);
  }

  v6 = *a1;
  *(a1 + 6) = v4 + 1;
  v7 = *(v6 + v4);
  if (a3 == 2)
  {
    if (v7 != 1)
    {
      if (sub_10000C240())
      {
        sub_10000AF54("handle_InquiryResult misinterpreted spec: expected 1 resp, got %d", v53, v54, v55, v56, v57, v58, v59, v7);
        v60 = sub_10000C050(0x2Eu);
        if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
        {
          sub_10080F604();
        }
      }

      return;
    }

    v8 = 255;
  }

  else
  {
    v8 = (14 * v7) | 1u;
    if (a3 == 1 && 15 * v7 + 1 == a2)
    {
      if (sub_10000C240())
      {
        sub_10000AF54("handle_InquiryResult misinterpreted spec: expected %d, got %d", v17, v18, v19, v20, v21, v22, v23, (14 * v7) | 1u);
        v24 = sub_10000C050(0x2Eu);
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          sub_1000E09C0();
        }
      }

      v25 = 1;
      if (v7)
      {
        goto LABEL_20;
      }

      return;
    }
  }

  if (v8 != a2)
  {
    if (!sub_10000C240())
    {
      return;
    }

    sub_10000AF54("handle_InquiryResult bad parm length: expected %d, got %d", v45, v46, v47, v48, v49, v50, v51, v8);
    v52 = sub_10000C050(0x2Eu);
    if (!os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    goto LABEL_10;
  }

  v25 = 0;
  if (v7)
  {
LABEL_20:
    if (a3)
    {
      v26 = v25;
    }

    else
    {
      v26 = 1;
    }

    while (!*(a1 + 15))
    {
      v27 = *(a1 + 6);
      if (*(a1 + 5) - v27 <= 5)
      {
        goto LABEL_62;
      }

      if (*(a1 + 14) != 1)
      {
        v62 = "(*pBs).__RWFlag == BYTESTREAM_READ";
        goto LABEL_63;
      }

      sub_1000075EC(&v64, *a1 + v27, 6uLL);
      v28 = *(a1 + 6);
      *(a1 + 6) = v28 + 6;
      if (*(a1 + 15))
      {
        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcievents.c");
LABEL_58:
        v61 = "ByteStream_NumReadBytesAvail(*pBs) >= 1";
LABEL_59:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcievents.c", 1213, v61);
      }

      v29 = *(a1 + 5);
      if (v29 <= (v28 + 6))
      {
        goto LABEL_58;
      }

      if (*(a1 + 14) != 1)
      {
        v61 = "(*pBs).__RWFlag == BYTESTREAM_READ";
        goto LABEL_59;
      }

      v30 = *a1;
      *(a1 + 6) = v28 + 7;
      BYTE6(v64) = *(v30 + (v28 + 6));
      if (v29 <= (v28 + 7))
      {
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcievents.c", 1214, "ByteStream_NumReadBytesAvail(*pBs) >= 1");
      }

      v31 = v28 + 8;
      *(a1 + 6) = v28 + 8;
      HIBYTE(v64) = *(v30 + (v28 + 7));
      if (v26)
      {
        if (v29 <= v31)
        {
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcievents.c", 1219, "ByteStream_NumReadBytesAvail(*pBs) >= 1");
        }

        v32 = v28 + 9;
        *(a1 + 6) = v32;
        v33 = *(v30 + v31);
      }

      else
      {
        v33 = 0;
        v32 = v28 + 8;
      }

      BYTE4(v65) = v33;
      if ((v29 - v32) <= 2)
      {
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcievents.c", 1221, "ByteStream_NumReadBytesAvail(*pBs) >= 3");
      }

      LODWORD(v65) = *(v30 + v32) | (*(v30 + v32 + 2) << 16);
      *(a1 + 6) = v32 + 3;
      if ((v29 - (v32 + 3)) < 2)
      {
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcievents.c", 1222, "ByteStream_NumReadBytesAvail(*pBs) >= 2");
      }

      HIWORD(v65) = *(v30 + (v32 + 3));
      v34 = v32 + 5;
      *(a1 + 6) = v32 + 5;
      v66 = 0;
      BYTE5(v65) = 0;
      if (a3)
      {
        if (v29 <= v34)
        {
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcievents.c", 1226, "ByteStream_NumReadBytesAvail(*pBs) >= 1");
        }

        v35 = v32 + 6;
        *(a1 + 6) = v35;
        BYTE5(v65) = *(v30 + v34);
        if (a3 == 2)
        {
          if (v29 - 240 > 0x11)
          {
            if (sub_10000C240())
            {
              sub_10000AF54("Extended Inquiry Result bad parm length: maximum expected %d, got %d", v36, v37, v38, v39, v40, v41, v42, 257);
              v43 = sub_10000C050(0x2Eu);
              if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
              {
                v44 = sub_10000C0FC();
                *buf = 136446466;
                v68 = v44;
                v69 = 1024;
                v70 = 0xFFFF;
                _os_log_error_impl(&_mh_execute_header, v43, OS_LOG_TYPE_ERROR, "%{public}s (status=%{bluetooth:OI_STATUS}u)", buf, 0x12u);
              }
            }
          }

          else
          {
            v66 = v30 + v35;
          }
        }
      }

      sub_1002425A8(&v64);
      LODWORD(v7) = v7 - 1;
      if (!v7)
      {
        return;
      }
    }

    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcievents.c");
LABEL_62:
    v62 = "ByteStream_NumReadBytesAvail(*pBs) >= OI_BD_ADDR_BYTE_SIZE";
LABEL_63:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcievents.c", 1212, v62);
  }
}

void sub_100257EDC(unsigned __int8 *a1)
{
  if (a1[16] != 3)
  {
    v14 = v1;
    v15 = v2;
    v13 = 0;
    if (sub_100006318(*a1, &v13))
    {
      v3 = sub_1000DC660(v13);
      if (v3)
      {
        v4 = v3;
        if (sub_10000C240())
        {
          sub_10000AF54("%! (%d)", v5, v6, v7, v8, v9, v10, v11, v4);
          v12 = sub_10000C050(0x2Eu);
          if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
          {
            sub_1000E09C0();
          }
        }
      }
    }
  }
}

void sub_100257F78(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_fault_impl(a1, v9, OS_LOG_TYPE_FAULT, a4, &a9, 0xCu);
}

uint64_t sub_100257F98()
{
  word_100B5FC70 = 0;
  dword_100B5FC74 = 0;
  byte_100B5FC78 = 0;
  qword_100B5FC80 = sub_1001BBBD8(32 * *(qword_100BCE0B8 + 2), 0x10820404E0D2EE7uLL);
  if (qword_100B5FC80)
  {
    return 0;
  }

  else
  {
    return 106;
  }
}

uint64_t sub_100258004(int a1, int *a2)
{
  v2 = *a2;
  if (v2 + 1 >= word_100B5FC70)
  {
    return 0;
  }

  v3 = v2 + 1;
  for (i = qword_100B5FC80 + 32 * v2 + 32; *(i + 8) != a1 && *(i + 9) != a1; i += 32)
  {
    if (++v3 >= word_100B5FC70)
    {
      return 0;
    }
  }

  *a2 = v3;
  return i;
}

void sub_10025806C()
{
  for (i = word_100B5FC70; word_100B5FC70; i = word_100B5FC70)
  {
    word_100B5FC70 = i - 1;
    sub_100256FE0(129, qword_100B5FC80 + 32 * (i - 1));
  }

  byte_100B5FC78 = 0;
}

void sub_1002580D0(uint64_t a1)
{
  v1 = *(a1 + 8);
  sub_100256FE0(621, v1);
  v2 = *(v1 + 8);
  if (v2 == 15)
  {
    if (byte_100BCE141)
    {
      return;
    }

    goto LABEL_9;
  }

  if (v2 == 14 && byte_100BCE141 == 0)
  {
LABEL_9:
    byte_100BCE141 = 1;

    sub_1000228C0(sub_100022AA0, 0, 0);
  }
}

void sub_10025818C(char a1, __int16 a2, __int16 a3, uint64_t a4)
{
  if (byte_100BCE1B0)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Failed to add external transport - too many alreay registered.", v4, v5, v6, v7, v8, v9, v10, v12);
      v11 = sub_10000C050(0x2Eu);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_100814A68();
      }
    }
  }

  else
  {
    word_100BCE1A0 = a2;
    word_100BCE1A2 = a2;
    word_100BCE1A4 = a3;
    byte_100BCE1A6 = 1;
    byte_100BCE1A7 = a1;
    qword_100BCE1A8 = a4;
    byte_100BCE1B8 = 1;
    byte_100BCE1B0 = 1;
  }
}

void sub_10025822C()
{
  WORD3(xmmword_100BCE158[0]) = 1;
  if (WORD5(xmmword_100BCE158[0]) > 2u)
  {
    v0 = BYTE14(xmmword_100BCE158[0]);
  }

  else
  {
    v0 = 0;
  }

  byte_100BCE1B9 = v0;
}

void sub_10025825C()
{
  WORD3(xmmword_100BCE158[0]) = 0;
  if (WORD5(xmmword_100BCE158[0]))
  {
    v0 = BYTE14(xmmword_100BCE158[0]);
  }

  else
  {
    v0 = 0;
  }

  byte_100BCE1B9 = v0;
}

void sub_1002582B4(uint64_t a1)
{
  if (dword_100BCE0C0 == 2)
  {
    if (BYTE14(xmmword_100BCE158[0]) == 1 && (sub_1000D660C(), (BYTE14(xmmword_100BCE158[0]) & 1) != 0) && sub_10000C240() && (sub_10000AF54("%! (%d)", v2, v3, v4, v5, v6, v7, v8, 614), v9 = sub_10000C050(0x2Eu), os_log_type_enabled(v9, OS_LOG_TYPE_ERROR)))
    {
      sub_100814B70();
      if (a1)
      {
        goto LABEL_7;
      }
    }

    else if (a1)
    {
LABEL_7:
      if (sub_10000C240())
      {
        sub_10000AF54("ACL transmit error (%!)", v10, v11, v12, v13, v14, v15, v16, a1);
        v17 = sub_10000C050(0x2Eu);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          sub_100814758();
        }
      }
    }

    BYTE14(xmmword_100BCE158[0]) = 1;
    v18 = WORD5(xmmword_100BCE158[0]) != 0;
    if (WORD3(xmmword_100BCE158[0]))
    {
      v18 = WORD5(xmmword_100BCE158[0]) > 2u;
    }

    byte_100BCE1B9 = v18;
    if (v18)
    {
      (*(qword_100BCE0C8 + 16))(0, 1);
    }

    return;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("HCI not initialized, ignoring AclPacketSent event", v19, v20, v21, v22, v23, v24, v25, v27);
    v26 = sub_10000C050(0x2Eu);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      sub_100814AEC();
    }
  }
}

void sub_100258440(uint64_t a1)
{
  if (dword_100BCE0C0 == 2)
  {
    if (byte_100BCE176 == 1 && (sub_1000D660C(), (byte_100BCE176 & 1) != 0) && sub_10000C240() && (sub_10000AF54("%! (%d)", v2, v3, v4, v5, v6, v7, v8, 614), v9 = sub_10000C050(0x2Eu), os_log_type_enabled(v9, OS_LOG_TYPE_ERROR)))
    {
      sub_100814B70();
      if (a1)
      {
LABEL_7:
        if (sub_10000C240())
        {
          sub_10000AF54("SCO transmit error (%!)", v10, v11, v12, v13, v14, v15, v16, a1);
          v17 = sub_10000C050(0x2Eu);
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            sub_100814758();
          }
        }
      }
    }

    else if (a1)
    {
      goto LABEL_7;
    }

    byte_100BCE176 = 1;
    sub_100249E00();
    return;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("HCI not initialized, ignoring ScoPacketSent event", v18, v19, v20, v21, v22, v23, v24, v26);
    v25 = sub_10000C050(0x2Eu);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      sub_100814AEC();
    }
  }
}

void sub_100258588(unsigned __int16 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if ((a1[2] & 1) == 0 && a1[1])
  {
    v9 = sub_100018960(95, 0, a3, a4, a5, a6, a7, a8, *a1);
    if (v9)
    {
      v10 = v9;
      if (sub_10000C240())
      {
        sub_10000AF54("OI_HCICMD_HostNumberOfCompletedPackets failed: %!", v11, v12, v13, v14, v15, v16, v17, v10);
        v18 = sub_10000C050(0x2Eu);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          sub_100814CFC();
        }
      }
    }

    else
    {
      a1[1] = 0;
    }
  }
}

uint64_t sub_100258628(uint64_t a1)
{
  v2 = a1 & 0xFFF;
  v3 = sub_1000ABB80(a1 & 0xFFF);
  if (v3)
  {
    result = *(v3 + 2);
    if (!result)
    {
      return result;
    }

    if (result == 4)
    {
      if ((~a1 & 0x3000) != 0)
      {
        return 1;
      }

      else
      {
        return 2;
      }
    }

    if (!sub_10000C240())
    {
      return 4;
    }

    sub_10000AF54("lmHandle 0x%04X found as connectionHandle 0x%08X of non ACL/LE kind????\n", v6, v7, v8, v9, v10, v11, v12, v2);
    v13 = sub_10000C050(0x2Eu);
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      return 4;
    }

LABEL_18:
    sub_100814BF4();
    return 4;
  }

  if (!off_100BCE0B0)
  {
    if (!sub_10000C240())
    {
      return 4;
    }

    sub_10000AF54("No stack handle found for lmHandle 0x%04X, falling back to KIND_UNKNOWN\n", v14, v15, v16, v17, v18, v19, v20, v2);
    v21 = sub_10000C050(0x2Eu);
    if (!os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      return 4;
    }

    goto LABEL_18;
  }

  result = off_100BCE0B0(a1);
  if ((~a1 & 0x3000) != 0)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (result == 1)
  {
    return v5;
  }

  return result;
}

void sub_100258754(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (DWORD2(xmmword_100BCE2E0))
  {
    v4 = dword_100BCE0C0 == 2;
  }

  else
  {
    v4 = 0;
  }

  if (!v4)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("OI_HCIIfc_ScoPacketReceived, HCI not initialized - discarding data, status %!", v5, v6, v7, v8, v9, v10, v11, 408);
      v12 = sub_10000C050(0x2Eu);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_10080F604();
      }
    }

    return;
  }

  v16 = a1;
  v17 = off_100BCE0A8;
  if (off_100BCE0A8)
  {

    v17(3, a1, a2, a3, a4);
    return;
  }

  if (*(qword_100BCE0B8 + 8) == 1)
  {
    ++HIWORD(dword_100B5FC9E);
    LOWORD(dword_100B5FC9E) = a1 & 0xFFF;
  }

  v18 = sub_1000ABB80(a1 & 0xFFF);
  if (v18 && ((v19 = v18, *(v18 + 2) == 1) || (sub_1000D660C(), *(v19 + 2) == 1)))
  {
    if (!*(v19 + 56))
    {
      v29 = *(v19 + 48);
      if (v29)
      {
        if (*(v29 + 54) != 6)
        {
          sub_10024A0CC(v19, a3, a2, (v16 >> 12) & 3, a4);
          goto LABEL_24;
        }
      }
    }

    if (sub_10000C240())
    {
      sub_10000AF54("Received SCO data for disconnecting handle %d, discarding packet. Status %!", v20, v21, v22, v23, v24, v25, v26, v16 & 0xFFF);
      v27 = sub_10000C050(0x2Eu);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
LABEL_23:
        sub_10080F604();
      }
    }
  }

  else if (sub_10000C240())
  {
    sub_10000AF54("Received SCO data for unknown handle %d, discarding packet. Status %!", v20, v21, v22, v23, v24, v25, v26, v16 & 0xFFF);
    v28 = sub_10000C050(0x2Eu);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_23;
    }
  }

LABEL_24:
  if (*(qword_100BCE0B8 + 8) == 1)
  {
    sub_100258588(&dword_100B5FC9E, v20, v21, v22, v23, v24, v25, v26);
  }
}

void sub_1002589A0(unsigned __int16 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 > 2)
  {
    if (!a1)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hciflow.c", 847, "buf");
    }

    v14 = *a1;
    v15 = byte_100B5FC90;
    if (byte_100B5FC90)
    {
      if (a2 == 3)
      {
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hciflow.c", 857, "ByteStream_NumReadBytesAvail(bs) >= 2");
      }

      v16 = a1[1];
      v17 = 4;
    }

    else
    {
      v16 = *(a1 + 2);
      v17 = 3;
    }

    if (*(a3 + 8))
    {
      v35 = 0;
      v33 = 0u;
      v34 = 0u;
      v31 = 0u;
      v32 = 0u;
      v18 = v16;
      *__str = 0u;
      v30 = 0u;
      snprintf(__str, 0x64uLL, "BT Controller HCI_SCO wakeupCause (handle=0x%04X dataLen=%d)", v14, v16);
      sub_100304AF8("OI_HCIFlow_ScoPacketReceived: %s", __str);
      sub_1001C499C(__str);
      v15 = byte_100B5FC90;
    }

    else
    {
      v18 = v16;
    }

    if (v15)
    {
      v19 = -4;
    }

    else
    {
      v19 = -3;
    }

    v20 = (v19 + a2);
    if (v20 == v18)
    {
      sub_100258754(v14, v16, a1 + v17, a3);
    }

    else if (sub_10000C240())
    {
      sub_10000AF54("Potentially malicious packet received (actually %d bytes, but claims it is %d bytes), ignoring packet", v21, v22, v23, v24, v25, v26, v27, v20);
      v28 = sub_10000C050(0x2Eu);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        sub_10080F604();
      }
    }
  }

  else if (sub_10000C240())
  {
    sub_10000AF54("Short SCO packet received (%d bytes), ignoring packet. Status %!", v4, v5, v6, v7, v8, v9, v10, a2);
    v11 = sub_10000C050(0x2Eu);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }
}

void sub_100258BA4(char *a1, uint64_t a2, uint64_t a3)
{
  if (a2 > 3)
  {
    if (!a1)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hciflow.c", 894, "buf");
    }

    v13 = *(a1 + 1);
    v14 = (a2 - 4);
    if (v14 == v13)
    {
      v15 = *a1;
      v16 = off_100BCE0A8;
      if (off_100BCE0A8)
      {
        v18 = *a1;
        v19 = *(a1 + 1);

        v16(5, v18, v19, a1 + 4, a3);
      }

      else
      {
        v28 = sub_1000ABB80(v15 & 0xFFF);
        if (*(v28 + 2) - 5 <= 1)
        {

          sub_10017FEA0(v28, a1 + 4, v13, (v15 >> 12) & 3, (v15 >> 14) & 1);
        }
      }
    }

    else if (sub_10000C240())
    {
      sub_10000AF54("Potentially malicious packet received (actually %d bytes, but claims it is %d bytes), ignoring packet", v20, v21, v22, v23, v24, v25, v26, v14);
      v27 = sub_10000C050(0x2Eu);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        sub_100814A68();
      }
    }
  }

  else if (sub_10000C240())
  {
    sub_10000AF54("Short ISO packet received (%d bytes), ignoring packet. Status %!", v4, v5, v6, v7, v8, v9, v10, a2);
    v11 = sub_10000C050(0x2Eu);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }
}

uint64_t sub_100258D30(_WORD *a1, uint64_t a2, unsigned int a3)
{
  if (sub_1000ABD24(a1))
  {
    v6 = *a1 | 0x3000;

    return sub_10001FD90(2, v6, a2, a3);
  }

  else
  {
    if (sub_10000C240())
    {
      sub_10000AF54("LE connection handle is no longer valid. Dropping LEA data.", v8, v9, v10, v11, v12, v13, v14, v16);
      v15 = sub_10000C050(0x2Eu);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        sub_10080F604();
      }
    }

    return 601;
  }
}

uint64_t sub_100258DE0(unsigned __int16 *a1, char *a2, size_t a3, char a4)
{
  if (!sub_1000C0E08(a1))
  {
    if (!sub_10000C240())
    {
      return 601;
    }

    sub_10000AF54("SCO connection handle is no longer valid. Dropping SCO data.", v10, v11, v12, v13, v14, v15, v16, v63);
    v17 = sub_10000C050(0x2Eu);
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      return 601;
    }

    goto LABEL_9;
  }

  if (DWORD2(xmmword_100BCE2E0))
  {
    v8 = dword_100BCE0C0 == 2;
  }

  else
  {
    v8 = 0;
  }

  if (!v8)
  {
    return 103;
  }

  if (byte_100BCE176 != 1)
  {
    return 613;
  }

  if (!a1 || *(a1 + 2) != 1)
  {
    if (!sub_10000C240())
    {
      return 601;
    }

    v9 = 601;
    sub_10000AF54("0x%x is not SCO connection handle, retval %!", v27, v28, v29, v30, v31, v32, v33, a1);
    v34 = sub_10000C050(0x2Eu);
    if (!os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      return v9;
    }

    goto LABEL_9;
  }

  if (*(a1 + 56))
  {
    if (!sub_10000C240())
    {
      return 601;
    }

    v9 = 601;
    sub_10000AF54("SCO connection %d is disconnected, retval %!", v19, v20, v21, v22, v23, v24, v25, *a1);
    v26 = sub_10000C050(0x2Eu);
    if (!os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      return v9;
    }

LABEL_9:
    sub_10080F604();
    return 601;
  }

  if (!off_100BCE0A8)
  {
    memset(v64, 0, sizeof(v64));
    sub_10001FF10(v64, 1u);
    sub_10001F968(v64, a2, a3, 2u);
    if (byte_100B5FC90 == 1)
    {
      v43 = *a1;
      v44 = 243;
LABEL_39:
      v9 = sub_10001FD90(v44, v43, v64, a3);
      goto LABEL_40;
    }

    if (a3 < 0x100)
    {
      v43 = *a1;
      v44 = 3;
      goto LABEL_39;
    }

    if (a3 >> 1 != 180)
    {
      sub_1000D660C();
    }

    v45 = sub_10001FD90(3, *a1 | 0x4000u, v64, a3 >> 1);
    if (v45 == 625)
    {
      v46 = sub_10001FD90(3, *a1, v64, a3 >> 1);
      if (v46 == 625)
      {
        goto LABEL_43;
      }

      v9 = v46;
      if (sub_10000C240())
      {
        sub_10000AF54("OI_HCI_Send failed to write second SCO data chunk", v47, v48, v49, v50, v51, v52, v53, v63);
        v54 = sub_10000C050(0x2Eu);
        if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_37;
        }
      }
    }

    else
    {
      v9 = v45;
      if (sub_10000C240())
      {
        sub_10000AF54("OI_HCI_Send failed to write first SCO data chunk", v55, v56, v57, v58, v59, v60, v61, v63);
        v62 = sub_10000C050(0x2Eu);
        if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
        {
LABEL_37:
          sub_100814758();
        }
      }
    }

LABEL_40:
    if (v9 != 625)
    {
      if (v9)
      {
        goto LABEL_25;
      }

LABEL_42:
      byte_100BCE176 = 0;
      return v9;
    }

LABEL_43:
    if (a4)
    {
      return 625;
    }

    v9 = sub_1000228C0(sub_100258440, 0, 0);
    if (v9)
    {
      return v9;
    }

    goto LABEL_42;
  }

  v9 = 629;
LABEL_25:
  if (sub_10000C240())
  {
    sub_10000AF54("OI_HCI_Send failed to write SCO data", v35, v36, v37, v38, v39, v40, v41, v63);
    v42 = sub_10000C050(0x2Eu);
    if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
    {
      sub_100814758();
    }
  }

  return v9;
}

uint64_t sub_100259154(uint64_t a1, uint64_t a2, int a3, int a4)
{
  if (DWORD2(xmmword_100BCE2E0))
  {
    v4 = dword_100BCE0C0 == 2;
  }

  else
  {
    v4 = 0;
  }

  if (!v4)
  {
    return 103;
  }

  if (byte_100BCE196 != 1 || word_100BCE192 == 0)
  {
    return 613;
  }

  if (!a1)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hciflow.c", 1448, "connectionHandle");
  }

  v11 = *(a2 + 4);
  v12 = 96;
  if (*(a1 + 2) != 5)
  {
    v12 = 0;
  }

  v13 = *(a1 + v12);
  if (v13 >= 0x1000)
  {
    sub_1000D660C();
  }

  v14 = v13 | 0x4000;
  if (!a4)
  {
    v14 = v13;
  }

  if (a3)
  {
    v15 = 0;
  }

  else
  {
    v15 = 4096;
  }

  if (a3)
  {
    v16 = 0x2000;
  }

  else
  {
    v16 = 12288;
  }

  if (v11 >= word_100BCE194)
  {
    v17 = word_100BCE194;
  }

  else
  {
    v17 = v11;
  }

  if (v11 <= word_100BCE194)
  {
    v18 = v16;
  }

  else
  {
    v18 = v15;
  }

  result = sub_10001FD90(5, v18 | v14, a2, v17);
  if (result != 625)
  {
    if (result)
    {
      return result;
    }

    byte_100BCE196 = 0;
  }

  --word_100BCE192;
  ++*(a1 + 16);
  ++WORD1(xmmword_100BCE158[0]);
  sub_10017FDE8(a1, a2);
  return 0;
}

uint64_t sub_1002592C4(int a1, uint64_t a2, void *a3)
{
  if (!a1)
  {
    a2 = 0;
  }

  if (!a1)
  {
    a3 = 0;
  }

  qword_100BCE148 = a2;
  off_100BCE150 = a3;
  return 0;
}

uint64_t sub_1002592E8(_WORD *a1)
{
  if (DWORD2(xmmword_100BCE2E0))
  {
    v1 = dword_100BCE0C0 == 2;
  }

  else
  {
    v1 = 0;
  }

  if (!v1)
  {
    return 103;
  }

  result = 0;
  *a1 = word_100BCE174;
  return result;
}

uint64_t sub_10025932C(__int16 a1, __int16 a2)
{
  if (DWORD2(xmmword_100BCE2E0))
  {
    v2 = dword_100BCE0C0 == 2;
  }

  else
  {
    v2 = 0;
  }

  if (!v2)
  {
    return 103;
  }

  result = 0;
  word_100BCE174 = a1;
  word_100BCE170 = a2;
  return result;
}

uint64_t sub_100259374(char a1)
{
  if (DWORD2(xmmword_100BCE2E0))
  {
    v1 = dword_100BCE0C0 == 2;
  }

  else
  {
    v1 = 0;
  }

  if (!v1)
  {
    return 103;
  }

  result = 0;
  byte_100B5FC90 = a1;
  return result;
}

uint64_t sub_1002593B4(_WORD *a1)
{
  if (DWORD2(xmmword_100BCE2E0))
  {
    v1 = dword_100BCE0C0 == 2;
  }

  else
  {
    v1 = 0;
  }

  if (!v1)
  {
    return 103;
  }

  result = 0;
  *a1 = WORD6(xmmword_100BCE158[0]);
  return result;
}

uint64_t sub_100259404()
{
  if (DWORD2(xmmword_100BCE2E0))
  {
    v1 = dword_100BCE0C0 == 2;
  }

  else
  {
    v1 = 0;
  }

  if (v1)
  {
    return word_100BCE170;
  }

  result = sub_10000C240();
  if (result)
  {
    sub_10000AF54("OI_HCIAPI_GetTotalNumScoBuffers - not initialized", v3, v4, v5, v6, v7, v8, v9, v0);
    v10 = sub_10000C050(0x2Eu);
    result = os_log_type_enabled(v10, OS_LOG_TYPE_ERROR);
    if (result)
    {
      sub_100814AEC();
      return 0;
    }
  }

  return result;
}

uint64_t sub_100259498()
{
  if (DWORD2(xmmword_100BCE2E0))
  {
    v1 = dword_100BCE0C0 == 2;
  }

  else
  {
    v1 = 0;
  }

  if (v1)
  {
    v10 = byte_100BCE176;
  }

  else
  {
    if (sub_10000C240())
    {
      sub_10000AF54("OI_HCIAPI_ReadyToTransmitSco - not initialized", v2, v3, v4, v5, v6, v7, v8, v0);
      v9 = sub_10000C050(0x2Eu);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_100814AEC();
      }
    }

    v10 = 0;
  }

  return v10 & 1;
}

__int128 *sub_100259530(__int128 *result)
{
  *(result + 8) = 0;
  v1 = *result;
  v2 = &xmmword_100B5F8D8;
  if (v1 == xmmword_100B5F8D8)
  {
    v3 = 1794;
    do
    {
      v4 = v3;
      result = sub_1000ABB80(v3);
      v3 = v4 + 2;
    }

    while (result);
  }

  else
  {
    v2 = &xmmword_100B5FA50;
    if (v1 != xmmword_100B5FA50)
    {
      return result;
    }

    v5 = 1795;
    do
    {
      v4 = v5;
      result = sub_1000ABB80(v5);
      v5 = v4 + 2;
    }

    while (result);
  }

  *v2 = v4;
  return result;
}

__int128 *sub_1002595BC(unsigned int a1, __int16 a2, __int16 a3, __int16 a4, int a5, int a6, int a7, int a8, char a9)
{
  word_100B5FC96 = 0;
  dword_100B5FC92 = 0;
  dword_100B5FC9E = 0;
  word_100B5FCA2 = 0;
  dword_100B5FC98 = 0;
  word_100B5FC9C = 0;
  xmmword_100BCE158[0] = 0u;
  *algn_100BCE168 = 0u;
  unk_100BCE178 = 0u;
  unk_100BCE188 = 0u;
  unk_100BCE198 = 0u;
  *&qword_100BCE1A8 = 0u;
  v17 = (sub_10022DE54() - 4);
  if (a1 >= v17)
  {
    v18 = v17;
  }

  else
  {
    v18 = a1;
  }

  WORD6(xmmword_100BCE158[0]) = v18;
  word_100BCE174 = a2;
  word_100BCE184 = a3;
  word_100BCE194 = a4;
  WORD4(xmmword_100BCE158[0]) = a5;
  word_100BCE170 = a6;
  word_100BCE180 = a7;
  word_100BCE190 = a8;
  WORD5(xmmword_100BCE158[0]) = a5;
  word_100BCE182 = a7;
  word_100BCE192 = a8;
  WORD3(xmmword_100BCE158[0]) = 0;
  LOBYTE(xmmword_100BCE158[0]) = a9;
  if (a9)
  {
    BYTE14(xmmword_100BCE158[0]) = 1;
    byte_100BCE176 = 1;
    byte_100BCE186 = 1;
    byte_100BCE196 = a8 != 0;
    v19 = a5 != 0;
    v20 = a5 != 0;
  }

  else
  {
    v19 = a5 != 0;
    BYTE14(xmmword_100BCE158[0]) = a5 != 0;
    byte_100BCE176 = a6 != 0;
    v20 = a7 != 0;
    byte_100BCE186 = a7 != 0;
    byte_100BCE196 = a8 != 0;
  }

  byte_100BCE1B9 = v19;
  byte_100BCE1BA = v20;
  byte_100BCE1B8 = 0;
  byte_100BCE1B0 = 0;
  sub_1000E70E4();
  v21 = 1794;
  do
  {
    v22 = v21;
    v23 = sub_1000ABB80(v21);
    v21 = v22 + 2;
  }

  while (v23);
  LOWORD(xmmword_100B5F8D8) = v22;
  v24 = 1795;
  do
  {
    v25 = v24;
    result = sub_1000ABB80(v24);
    v24 = v25 + 2;
  }

  while (result);
  LOWORD(xmmword_100B5FA50) = v25;
  return result;
}

void sub_100259794()
{
  v28 = 0;
  while (sub_1000E4F48(&v28))
  {
    v3 = v28;
    if (*v28 == -1)
    {
      sub_10023C0C0(129, v28, *(v28 + 6) + 48, 0, 0, v0, v1, v2);
    }

    else
    {
      *(v28 + 56) = 1;
      sub_1000DD268(0, v3, 129);
    }

    if (!sub_1000C0E08(v28))
    {
      v28 = 0;
    }
  }

  v28 = 0;
  if (sub_1000BBFD4(&v28))
  {
    while (1)
    {
      v7 = v28;
      v8 = *(v28 + 54);
      if ((v8 - 1) < 2)
      {
        break;
      }

      if (v8 != 7)
      {
        *(v28 + 54) = 7;
        v9 = *(v7 + 37);
        sub_1000E4630(v7);
        sub_1000DD268(0, v28, 129);
        if (!v9)
        {
          sub_1000E4FBC(v28, 129);
          sub_1000E53AC(v28);
          sub_1000E12C4(v28);
        }

        goto LABEL_14;
      }

LABEL_15:
      if (!sub_1000BBFD4(&v28))
      {
        goto LABEL_16;
      }
    }

    sub_10023C0C0(129, v28, (v28 + 24), 1, 0, v4, v5, v6);
LABEL_14:
    v28 = 0;
    goto LABEL_15;
  }

LABEL_16:
  v28 = 0;
  if (sub_1000C08D0(&v28))
  {
    while (1)
    {
      v10 = v28;
      v11 = *(v28 + 124);
      if ((v11 - 1) < 2)
      {
        break;
      }

      if (v11 != 7)
      {
        *(v28 + 124) = 7;
        v13 = *(v10 + 59);
        sub_1000E4630(v10);
        sub_1002C29BC(0, v28, 129, 0, 0);
        if (!v13)
        {
          sub_1000E4FBC(v28, 129);
          sub_1000E53AC(v28);
          sub_1000E12C4(v28);
        }

        goto LABEL_25;
      }

LABEL_26:
      if (!sub_1000C08D0(&v28))
      {
        goto LABEL_27;
      }
    }

    if (*(v28 + 55))
    {
      v12 = v28 + 28;
    }

    else
    {
      v12 = 0;
    }

    sub_1002C1EE8(129, 0, 0, v28 + 48, v12, 0, 0, 0, 0, 0xFFFF, 0);
LABEL_25:
    v28 = 0;
    goto LABEL_26;
  }

LABEL_27:
  v28 = 0;
  if (sub_1002566A0(&v28))
  {
    while (1)
    {
      v14 = v28;
      v15 = *(v28 + 56);
      if ((v15 - 1) < 2)
      {
        break;
      }

      if (v15 != 7)
      {
        *(v28 + 56) = 7;
        sub_100218B20(0, v14, 129);
        goto LABEL_32;
      }

LABEL_33:
      if (!sub_1002566A0(&v28))
      {
        goto LABEL_34;
      }
    }

    v27 = 0;
    memset(v26, 0, sizeof(v26));
    LOWORD(v26[0]) = *v28;
    sub_1002189A0(129, v26);
LABEL_32:
    v28 = 0;
    goto LABEL_33;
  }

LABEL_34:
  v28 = 0;
  while (sub_100256714(&v28))
  {
    v16 = *(v28 + 48);
    if (*(v28 + 48))
    {
      v17 = v16 == 6;
    }

    else
    {
      v17 = 1;
    }

    if (v17)
    {
      if (!*(v28 + 49))
      {
        sub_100184150(0, 22);
        goto LABEL_49;
      }

      if (*(v28 + 49) == 1)
      {
        sub_100183C9C(129, 0, 22);
LABEL_49:
        v28 = 0;
      }
    }

    else if (v16 == 1)
    {
      if (!*(v28 + 49))
      {
        v23 = 0u;
        v24 = 0u;
        sub_100183E2C(129, 0, &v23);
        goto LABEL_49;
      }

      if (*(v28 + 49) == 1)
      {
        v25 = 0;
        v23 = 0u;
        v24 = 0u;
        sub_10018396C(129, 0, &v23);
        goto LABEL_49;
      }
    }
  }

  WORD5(xmmword_100BCE158[0]) = WORD4(xmmword_100BCE158[0]);
  word_100BCE182 = word_100BCE180;
  WORD1(xmmword_100BCE158[0]) = 0;
  if (xmmword_100BCE158[0])
  {
    v18 = 1;
    v19 = 1;
    v20 = 1;
  }

  else
  {
    v18 = WORD4(xmmword_100BCE158[0]) != 0;
    v19 = word_100BCE170 != 0;
    v20 = word_100BCE180 != 0;
  }

  BYTE14(xmmword_100BCE158[0]) = v18;
  byte_100BCE176 = v19;
  byte_100BCE186 = v20;
  WORD3(xmmword_100BCE158[0]) = 0;
  if (WORD4(xmmword_100BCE158[0]))
  {
    v21 = v18;
  }

  else
  {
    v21 = 0;
  }

  byte_100BCE1B9 = v21;
  if (LOBYTE(xmmword_100BCE158[0]))
  {
    if ((v21 & 1) == 0)
    {
LABEL_63:
      v22 = sub_1002565E8() != 0;
      goto LABEL_64;
    }
  }

  else if (!v20 || !word_100BCE180)
  {
    goto LABEL_63;
  }

  v22 = 1;
LABEL_64:
  byte_100BCE1BA = v22;
  byte_100BCE1B8 = byte_100BCE1B0 != 0;
  sub_1000E70E4();
}

uint64_t sub_100259B94()
{
  sub_100304AF8("HciFlow - txFlowControl\n");
  sub_100304AF8("   gAssertOnControllerFlowPRoblems  = %d\n", byte_100B5FCA4);
  sub_100304AF8("   MaxAclDataPacketSize\t\t\t= %d\n", WORD6(xmmword_100BCE158[0]));
  sub_100304AF8("   MaxScoDataPacketSize\t\t\t= %d\n", word_100BCE174);
  sub_100304AF8("   MaxLeDataPacketSize\t\t\t= %d\n", word_100BCE184);
  if (LOBYTE(xmmword_100BCE158[0]))
  {
    v0 = "TRUE";
  }

  else
  {
    v0 = "FALSE";
  }

  sub_100304AF8("   sharedACLandLEbuffers     \t= %s\n", v0);
  sub_100304AF8("   totalNumOutstandingTransmits\t= %d\n", WORD1(xmmword_100BCE158[0]));
  sub_100304AF8("   totalNumAclSlots\t\t\t\t= %d\n", WORD4(xmmword_100BCE158[0]));
  sub_100304AF8("   totalNumScoSlots\t\t\t\t= %d\n", word_100BCE170);
  sub_100304AF8("   totalNumLeSlots\t\t\t\t= %d\n", word_100BCE180);
  sub_100304AF8("   curNumAclSlotsAvail\t\t\t= %d\n", WORD5(xmmword_100BCE158[0]));
  sub_100304AF8("   curNumLeSlotsAvail\t\t\t= %d\n", word_100BCE182);
  if (BYTE14(xmmword_100BCE158[0]))
  {
    v1 = "TRUE";
  }

  else
  {
    v1 = "FALSE";
  }

  sub_100304AF8("   aclTransportReady\t\t\t\t= %s\n", v1);
  if (byte_100BCE176)
  {
    v2 = "TRUE";
  }

  else
  {
    v2 = "FALSE";
  }

  sub_100304AF8("   scoTransportReady\t\t\t\t= %s\n", v2);
  if (byte_100BCE186)
  {
    v3 = "TRUE";
  }

  else
  {
    v3 = "FALSE";
  }

  sub_100304AF8("   leTransportReady\t\t\t\t= %s\n", v3);
  sub_100304AF8("   needScoBuffers\t\t\t\t= %d\n", WORD3(xmmword_100BCE158[0]));
  sub_100304AF8("   _OI_HCIAPI_ReadyToTransmitLe  = %d\n", byte_100BCE1BA);
  sub_100304AF8("   _OI_HCIAPI_ReadyToTransmitAcl  = %d\n", byte_100BCE1B9);
  sub_100304AF8("   _OI_HCIAPI_ReadyToTransmitOther  = %d\n", byte_100BCE1B8);
  sub_100256C10();
  if (qword_100BCE0B8 && *(qword_100BCE0B8 + 7) == 1)
  {
    sub_100304AF8("HciFlow - aclRxFlowControl:\n");
    sub_100304AF8("   lmHandle\t = %d\n", dword_100B5FC92);
    if (word_100B5FC96)
    {
      v4 = "TRUE";
    }

    else
    {
      v4 = "FALSE";
    }

    sub_100304AF8("   flowIsPaused = %s\n", v4);
    sub_100304AF8("   numOutstandingReceives = %d\n");
  }

  else
  {
    sub_100304AF8("HciFlow - aclRxFlowControl not enabled\n");
  }

  if (qword_100BCE0B8 && *(qword_100BCE0B8 + 8) == 1)
  {
    sub_100304AF8("HciFlow - scoRxFlowControl:\n");
    sub_100304AF8("   lmHandle\t = %d\n", dword_100B5FC9E);
    if (word_100B5FCA2)
    {
      v5 = "TRUE";
    }

    else
    {
      v5 = "FALSE";
    }

    sub_100304AF8("   flowIsPaused = %s\n", v5);
    sub_100304AF8("   numOutstandingReceives = %d\n");
  }

  else
  {
    sub_100304AF8("HciFlow - scoRxFlowControl not enabled\n");
  }

  if (qword_100BCE0B8 && *(qword_100BCE0B8 + 9) == 1)
  {
    sub_100304AF8("HciFlow - leRxFlowControl:\n");
    sub_100304AF8("   lmHandle\t = %d\n", dword_100B5FC98);
    if (word_100B5FC9C)
    {
      v6 = "TRUE";
    }

    else
    {
      v6 = "FALSE";
    }

    sub_100304AF8("   flowIsPaused = %s\n", v6);
    return sub_100304AF8("   numOutstandingReceives = %d\n", HIWORD(dword_100B5FC98));
  }

  else
  {

    return sub_100304AF8("HciFlow - leRxFlowControl not enabled\n");
  }
}

uint64_t sub_100259F1C()
{
  if (byte_100B5FCB8)
  {
    return 0;
  }

  v1 = dword_100B5FCD0;
  if (dword_100B5FCD0)
  {
    goto LABEL_4;
  }

  notification = 0;
  v3 = IONotificationPortCreate(kIOMainPortDefault);
  RunLoopSource = IONotificationPortGetRunLoopSource(v3);
  Current = CFRunLoopGetCurrent();
  CFRunLoopAddSource(Current, RunLoopSource, kCFRunLoopDefaultMode);
  v6 = IOServiceNameMatching("AppleBTHci");
  v7 = IOServiceAddMatchingNotification(v3, "IOServiceFirstMatch", v6, sub_10025B084, Current, &notification);
  if (v7)
  {
    v0 = v7;
    if (qword_100B5FCC0 != -1)
    {
      sub_100814F18();
    }

    if (os_log_type_enabled(qword_100B5FCC8, OS_LOG_TYPE_ERROR))
    {
      sub_100814F40();
    }
  }

  else
  {
    v9 = IOIteratorNext(notification);
    for (dword_100B5FCD4 = v9; !v9; dword_100B5FCD4 = v9)
    {
      if (qword_100B5FCC0 != -1)
      {
        sub_100814FB4();
      }

      v10 = qword_100B5FCC8;
      if (os_log_type_enabled(qword_100B5FCC8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v15 = "AppleBTHci";
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "applebt_hci_connect: Couldn't find %s service, waiting for first match\n", buf, 0xCu);
      }

      CFRunLoopRun();
      v9 = IOIteratorNext(notification);
    }

    v0 = IOServiceOpen(v9, mach_task_self_, 0, &dword_100B5FCD0);
    if (v0)
    {
      if (qword_100B5FCC0 != -1)
      {
        sub_100814FDC();
      }

      if (os_log_type_enabled(qword_100B5FCC8, OS_LOG_TYPE_ERROR))
      {
        sub_100815004();
      }
    }
  }

  CFRunLoopRemoveSource(Current, RunLoopSource, kCFRunLoopDefaultMode);
  IONotificationPortDestroy(v3);
  IOObjectRelease(notification);
  if (qword_100B5FCC0 != -1)
  {
    sub_100815078();
  }

  v11 = qword_100B5FCC8;
  if (os_log_type_enabled(qword_100B5FCC8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v15 = "AppleBTHci";
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "applebt_hci_connect: Service %s connected!\n", buf, 0xCu);
  }

  if (!v0)
  {
    v1 = dword_100B5FCD0;
LABEL_4:
    v2 = IOConnectCallMethod(v1, 0, 0, 0, 0, 0, 0, 0, 0, 0);
    if (v2)
    {
      v0 = v2;
      if (qword_100B5FCC0 != -1)
      {
        sub_10081513C();
      }

      if (os_log_type_enabled(qword_100B5FCC8, OS_LOG_TYPE_ERROR))
      {
        sub_100815164();
      }
    }

    else
    {
      if (qword_100B5FCC0 != -1)
      {
        sub_1008151DC();
      }

      v8 = qword_100B5FCC8;
      if (os_log_type_enabled(qword_100B5FCC8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v15 = "AppleBTHci";
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "applebt_hci_open: Service %s opened!\n", buf, 0xCu);
      }

      v0 = 0;
      byte_100B5FCB8 = 1;
    }

    return v0;
  }

  if (qword_100B5FCC0 != -1)
  {
    sub_1008150A0();
  }

  if (os_log_type_enabled(qword_100B5FCC8, OS_LOG_TYPE_ERROR))
  {
    sub_1008150C8();
  }

  return v0;
}

const char *sub_10025A388(int a1)
{
  if (a1 <= -536870186)
  {
    if (a1 > -536870196)
    {
      switch(a1)
      {
        case -536870195:
          return "kIOReturnNotOpen";
        case -536870194:
          return "kIOReturnNotReadable";
        case -536870193:
          return "kIOReturnNotWritable";
      }
    }

    else
    {
      switch(a1)
      {
        case -536870211:
          return "kIOReturnNoMemory";
        case -536870206:
          return "kIOReturnBadArgument";
        case -536870198:
          return "kIOReturnIOError";
      }
    }
  }

  else if (a1 <= -536870166)
  {
    switch(a1)
    {
      case -536870185:
        return "kIOReturnOffline";
      case -536870181:
        return "kIOReturnNoSpace";
      case -536870167:
        return "kIOReturnDeviceError";
    }
  }

  else if (a1 < 0)
  {
    if (a1 == -536870165)
    {
      return "kIOReturnAborted";
    }

    if (a1 == -536870160)
    {
      return "kIOReturnNotFound";
    }
  }

  else
  {
    if (!a1)
    {
      return "kIOReturnSuccess";
    }

    if (a1 == 5)
    {
      return "KERN_FAILURE";
    }
  }

  return "UNKNOWN";
}

uint64_t sub_10025A550()
{
  if (byte_100B5FCB8)
  {
    byte_100B5FCB8 = 0;
    v0 = IOConnectCallMethod(dword_100B5FCD0, 1u, 0, 0, 0, 0, 0, 0, 0, 0);
    if (v0)
    {
      if (qword_100B5FCC0 != -1)
      {
        sub_100815254();
      }

      if (os_log_type_enabled(qword_100B5FCC8, OS_LOG_TYPE_ERROR))
      {
        sub_100815268();
      }
    }

    IOServiceClose(dword_100B5FCD0);
    dword_100B5FCD0 = 0;
    IOObjectRelease(dword_100B5FCD4);
    dword_100B5FCD4 = 0;
    if (qword_100B5FCC0 != -1)
    {
      sub_1008152E0();
    }

    v1 = qword_100B5FCC8;
    if (os_log_type_enabled(qword_100B5FCC8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v4 = "AppleBTHci";
      _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "applebt_hci_close: Service %s closed and disconnected!\n", buf, 0xCu);
    }
  }

  else
  {
    if (qword_100B5FCC0 != -1)
    {
      sub_100815204();
    }

    if (os_log_type_enabled(qword_100B5FCC8, OS_LOG_TYPE_ERROR))
    {
      sub_100815218();
    }

    return 5;
  }

  return v0;
}

uint64_t sub_10025A78C()
{
  if (byte_100B5FCB8)
  {
    v0 = IOConnectCallMethod(dword_100B5FCD0, 4u, 0, 0, 0, 0, 0, 0, 0, 0);
    if (v0)
    {
      if (qword_100B5FCC0 != -1)
      {
        sub_100815358();
      }

      if (!os_log_type_enabled(qword_100B5FCC8, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_9;
      }

      sub_10081536C();
    }

    if (qword_100B5FCC0 != -1)
    {
      sub_1008153E4();
    }

LABEL_9:
    v1 = qword_100B5FCC8;
    if (os_log_type_enabled(qword_100B5FCC8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "applebt_hci_transport_reset: HCI Transport was reset!\n", buf, 2u);
    }

    return v0;
  }

  if (qword_100B5FCC0 != -1)
  {
    sub_100815308();
  }

  if (os_log_type_enabled(qword_100B5FCC8, OS_LOG_TYPE_ERROR))
  {
    sub_10081531C();
  }

  return 5;
}

uint64_t sub_10025A95C(int a1, unsigned __int8 *inputStruct)
{
  if (byte_100B5FCB8)
  {
    v34 = 0;
    memset(outputStruct, 0, sizeof(outputStruct));
    v26 = 8 * a1;
    v4 = IOConnectCallMethod(dword_100B5FCD0, 2u, 0, 0, inputStruct, 16 * a1, 0, 0, outputStruct, &v26);
    if (v4)
    {
      v5 = v4;
      if (qword_100B5FCC0 != -1)
      {
        sub_10081545C();
      }

      if (os_log_type_enabled(qword_100B5FCC8, OS_LOG_TYPE_ERROR))
      {
        sub_100815484();
      }

      return v5;
    }

    if (a1 < 1)
    {
      return 0;
    }

    v5 = 0;
    v7 = a1;
    v8 = inputStruct + 1;
    for (i = outputStruct + 4; ; i += 8)
    {
      v10 = *(i - 1);
      if (v10)
      {
        break;
      }

LABEL_30:
      v8 += 16;
      if (!--v7)
      {
        return v5;
      }
    }

    if (v10 == -536870181)
    {
      if (qword_100B5FCC0 != -1)
      {
        sub_1008154FC();
      }

      v18 = qword_100B5FCC8;
      if (os_log_type_enabled(qword_100B5FCC8, OS_LOG_TYPE_DEFAULT))
      {
        v19 = *(v8 - 1);
        v20 = *i;
        v21 = *v8;
        *buf = 67109632;
        v28 = v19;
        v29 = 1024;
        v30 = v20;
        v31 = 1024;
        LODWORD(v32) = v21;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "applebt_hci_write: write to discardable pipe %d failed with no space, written %d out of %d packets\n", buf, 0x14u);
      }

      goto LABEL_30;
    }

    if (v10 == -536870198)
    {
      if (qword_100B5FCC0 != -1)
      {
        sub_100815524();
      }

      v11 = qword_100B5FCC8;
      if (!os_log_type_enabled(qword_100B5FCC8, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_29;
      }

      v12 = *(v8 - 1);
      v13 = *i;
      v14 = *v8;
      *buf = 67109632;
      v28 = v12;
      v29 = 1024;
      v30 = v13;
      v31 = 1024;
      LODWORD(v32) = v14;
      v15 = v11;
      v16 = "applebt_hci_write: write to non-discardable pipe %d failed with no space, written %d out of %d packets\n";
      v17 = 20;
    }

    else
    {
      if (qword_100B5FCC0 != -1)
      {
        sub_10081554C();
      }

      v22 = qword_100B5FCC8;
      if (!os_log_type_enabled(qword_100B5FCC8, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_29;
      }

      v23 = *(v8 - 1);
      v24 = *(i - 1);
      v25 = sub_10025A388(v24);
      *buf = 67109634;
      v28 = v23;
      v29 = 1024;
      v30 = v24;
      v31 = 2080;
      v32 = v25;
      v15 = v22;
      v16 = "applebt_hci_write: write to pipe %d failed with (0x%08X, %s)\n";
      v17 = 24;
    }

    _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, v16, buf, v17);
LABEL_29:
    v5 = 5;
    goto LABEL_30;
  }

  if (qword_100B5FCC0 != -1)
  {
    sub_10081540C();
  }

  if (os_log_type_enabled(qword_100B5FCC8, OS_LOG_TYPE_ERROR))
  {
    sub_100815420();
  }

  return 5;
}

uint64_t sub_10025ADA4(int a1, void *inputStruct, void *outputStruct)
{
  if (byte_100B5FCB8)
  {
    v11 = 8 * a1;
    v5 = 16 * a1;
    while (1)
    {
      v6 = IOConnectCallMethod(dword_100B5FCD0, 3u, 0, 0, inputStruct, v5, 0, 0, outputStruct, &v11);
      if (v6 != -536870165)
      {
        break;
      }

      if (qword_100B5FCC0 != -1)
      {
        sub_1008155C4();
      }

      v7 = qword_100B5FCC8;
      if (os_log_type_enabled(qword_100B5FCC8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "applebt_hci_read: method kAppleBTHciRead was aborted by signal! Read again\n", buf, 2u);
      }
    }

    v8 = v6;
    if (v6)
    {
      if (qword_100B5FCC0 != -1)
      {
        sub_1008155EC();
      }

      if (os_log_type_enabled(qword_100B5FCC8, OS_LOG_TYPE_ERROR))
      {
        sub_100815614();
      }
    }
  }

  else
  {
    if (qword_100B5FCC0 != -1)
    {
      sub_100815574();
    }

    if (os_log_type_enabled(qword_100B5FCC8, OS_LOG_TYPE_ERROR))
    {
      sub_100815588();
    }

    return 5;
  }

  return v8;
}

CFTypeRef sub_10025AFBC()
{
  v1 = dword_100B5FCD4;
  if (dword_100B5FCD4)
  {

    return IORegistryEntrySearchCFProperty(v1, "IODeviceTree", @"pipes", kCFAllocatorDefault, 1u);
  }

  else
  {
    if (qword_100B5FCC0 != -1)
    {
      sub_10081568C();
    }

    if (os_log_type_enabled(qword_100B5FCC8, OS_LOG_TYPE_ERROR))
    {
      sub_1008156A0();
    }

    return 0;
  }
}

void sub_10025B084(__CFRunLoop *a1)
{
  if (qword_100B5FCC0 != -1)
  {
    sub_1008156DC();
  }

  v2 = qword_100B5FCC8;
  if (os_log_type_enabled(qword_100B5FCC8, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "DeviceFoundCB: releasing waiting thread\n", v3, 2u);
  }

  CFRunLoopStop(a1);
}

uint64_t sub_10025B1FC()
{
  memcpy(&word_100B5FCD8, &unk_1008A4488, 0x124uLL);
  off_100B5FE00 = 0;
  byte_100B5FE08 = 0;
  return 0;
}

uint64_t sub_10025B23C(uint64_t a1, unsigned int a2)
{
  if (!a1)
  {
    v18 = "cmdPacket";
    goto LABEL_150;
  }

  if (!a2)
  {
    v18 = "(cmdPacketLen) > 0";
LABEL_150:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hciparmcache.c", 203, v18);
  }

  if (a2 <= 2)
  {
    sub_1000D660C();
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hciparmcache.c", 210, "ByteStream_NumReadBytesAvail(bs) >= 2");
  }

  if (a2 == 3)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hciparmcache.c", 211, "ByteStream_NumReadBytesAvail(bs) >= 1");
  }

  v4 = *(a1 + 3);
  if (a2 - 4 != v4)
  {
    sub_1000D660C();
    return 101;
  }

  v5 = *(a1 + 1);
  if (*(a1 + 1) <= 0xC2Bu)
  {
    if (*(a1 + 1) > 0xC1Du)
    {
      if (*(a1 + 1) > 0xC23u)
      {
        switch(v5)
        {
          case 0xC24:
            if (v4 <= 2)
            {
              sub_1000D660C();
            }

            if (a2 <= 6)
            {
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hciparmcache.c", 326, "ByteStream_NumReadBytesAvail(bs) >= 3");
            }

            result = 0;
            v8 = &byte_100B5FDF1;
            dword_100B5FDF4 = *(a1 + 4) | (*(a1 + 6) << 16);
            goto LABEL_135;
          case 0xC26:
            if (v4 <= 1)
            {
              sub_1000D660C();
            }

            if (a2 <= 5)
            {
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hciparmcache.c", 270, "ByteStream_NumReadBytesAvail(bs) >= 2");
            }

            result = 0;
            word_100B5FCDA = *(a1 + 4);
            return result;
          case 0xC2A:
            if (!*(a1 + 3))
            {
              sub_1000D660C();
            }

            if (a2 <= 4)
            {
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hciparmcache.c", 275, "ByteStream_NumReadBytesAvail(bs) >= 1");
            }

            result = 0;
            byte_100B5FCEB = *(a1 + 4);
            return result;
        }
      }

      else
      {
        switch(v5)
        {
          case 0xC1E:
            if (v4 <= 3)
            {
              sub_1000D660C();
            }

            if (a2 <= 5)
            {
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hciparmcache.c", 254, "ByteStream_NumReadBytesAvail(bs) >= 2");
            }

            word_100B5FCE2 = *(a1 + 4);
            if (a2 <= 7)
            {
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hciparmcache.c", 255, "ByteStream_NumReadBytesAvail(bs) >= 2");
            }

            result = 0;
            word_100B5FCE4 = *(a1 + 6);
            return result;
          case 0xC20:
            if (!*(a1 + 3))
            {
              sub_1000D660C();
            }

            if (a2 <= 4)
            {
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hciparmcache.c", 260, "ByteStream_NumReadBytesAvail(bs) >= 1");
            }

            result = 0;
            byte_100B5FCE9 = *(a1 + 4);
            return result;
          case 0xC22:
            if (!*(a1 + 3))
            {
              sub_1000D660C();
            }

            if (a2 <= 4)
            {
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hciparmcache.c", 265, "ByteStream_NumReadBytesAvail(bs) >= 1");
            }

            result = 0;
            byte_100B5FCEA = *(a1 + 4);
            return result;
        }
      }
    }

    else if (*(a1 + 1) > 0xC17u)
    {
      switch(v5)
      {
        case 0xC18:
          if (v4 <= 1)
          {
            sub_1000D660C();
          }

          if (a2 <= 5)
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hciparmcache.c", 238, "ByteStream_NumReadBytesAvail(bs) >= 2");
          }

          result = 0;
          word_100B5FCDC = *(a1 + 4);
          return result;
        case 0xC1A:
          if (!*(a1 + 3))
          {
            sub_1000D660C();
          }

          if (a2 <= 4)
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hciparmcache.c", 243, "ByteStream_NumReadBytesAvail(bs) >= 1");
          }

          result = 0;
          byte_100B5FCE8 = *(a1 + 4);
          return result;
        case 0xC1C:
          if (v4 <= 3)
          {
            sub_1000D660C();
          }

          if (a2 <= 5)
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hciparmcache.c", 248, "ByteStream_NumReadBytesAvail(bs) >= 2");
          }

          word_100B5FCDE = *(a1 + 4);
          if (a2 <= 7)
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hciparmcache.c", 249, "ByteStream_NumReadBytesAvail(bs) >= 2");
          }

          result = 0;
          word_100B5FCE0 = *(a1 + 6);
          return result;
      }
    }

    else
    {
      switch(v5)
      {
        case 0x80F:
          if (!*(a1 + 3))
          {
            sub_1000D660C();
          }

          if (a2 <= 4)
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hciparmcache.c", 228, "ByteStream_NumReadBytesAvail(bs) >= 1");
          }

          result = 0;
          word_100B5FCE6 = *(a1 + 4);
          return result;
        case 0xC0A:
          if (!*(a1 + 3))
          {
            sub_1000D660C();
          }

          if (a2 <= 4)
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hciparmcache.c", 320, "ByteStream_NumReadBytesAvail(bs) >= 1");
          }

          result = 0;
          v7 = *(a1 + 4);
          v8 = &byte_100B5FDF8;
LABEL_134:
          v8[1] = v7;
LABEL_135:
          *v8 = 1;
          return result;
        case 0xC16:
          if (v4 <= 1)
          {
            sub_1000D660C();
          }

          if (a2 <= 5)
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hciparmcache.c", 233, "ByteStream_NumReadBytesAvail(bs) >= 2");
          }

          result = 0;
          word_100B5FCD8 = *(a1 + 4);
          return result;
      }
    }

LABEL_144:
    if (sub_10000C240())
    {
      sub_10000AF54("OI_HCIParmCache, unknown opcode 0x%x", v10, v11, v12, v13, v14, v15, v16, v5);
      v17 = sub_10000C050(0x2Eu);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    return 105;
  }

  if (*(a1 + 1) <= 0xC44u)
  {
    if (*(a1 + 1) > 0xC3Du)
    {
      switch(v5)
      {
        case 0xC3E:
          if (!*(a1 + 3))
          {
            sub_1000D660C();
          }

          if (a2 <= 4)
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hciparmcache.c", 295, "ByteStream_NumReadBytesAvail(bs) >= 1");
          }

          result = 0;
          byte_100B5FCEF = *(a1 + 4);
          return result;
        case 0xC3F:
          if (v4 <= 9)
          {
            sub_1000D660C();
          }

          if (a2 - 14 >= 0xFFFFFFF6)
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hciparmcache.c", 223, "ByteStream_NumReadBytesAvail(bs) >= (sizeof(parmCache.channelClassification))");
          }

          result = 0;
          v9 = *(a1 + 4);
          word_100B5FCFC = *(a1 + 12);
          qword_100B5FCF4 = v9;
          return result;
        case 0xC43:
          if (!*(a1 + 3))
          {
            sub_1000D660C();
          }

          if (a2 <= 4)
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hciparmcache.c", 300, "ByteStream_NumReadBytesAvail(bs) >= 1");
          }

          result = 0;
          byte_100B5FCF0 = *(a1 + 4);
          return result;
      }
    }

    else
    {
      switch(v5)
      {
        case 0xC2C:
          if (!*(a1 + 3))
          {
            sub_1000D660C();
          }

          if (a2 <= 4)
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hciparmcache.c", 280, "ByteStream_NumReadBytesAvail(bs) >= 1");
          }

          result = 0;
          byte_100B5FCEC = *(a1 + 4);
          return result;
        case 0xC2F:
          if (!*(a1 + 3))
          {
            sub_1000D660C();
          }

          if (a2 <= 4)
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hciparmcache.c", 285, "ByteStream_NumReadBytesAvail(bs) >= 1");
          }

          result = 0;
          byte_100B5FCED = *(a1 + 4);
          return result;
        case 0xC3C:
          if (!*(a1 + 3))
          {
            sub_1000D660C();
          }

          if (a2 <= 4)
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hciparmcache.c", 290, "ByteStream_NumReadBytesAvail(bs) >= 1");
          }

          result = 0;
          byte_100B5FCEE = *(a1 + 4);
          return result;
      }
    }

    goto LABEL_144;
  }

  if (*(a1 + 1) <= 0xC51u)
  {
    switch(v5)
    {
      case 0xC45:
        if (!*(a1 + 3))
        {
          sub_1000D660C();
        }

        if (a2 <= 4)
        {
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hciparmcache.c", 305, "ByteStream_NumReadBytesAvail(bs) >= 1");
        }

        result = 0;
        byte_100B5FCF1 = *(a1 + 4);
        return result;
      case 0xC47:
        if (!*(a1 + 3))
        {
          sub_1000D660C();
        }

        if (a2 <= 4)
        {
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hciparmcache.c", 310, "ByteStream_NumReadBytesAvail(bs) >= 1");
        }

        result = 0;
        byte_100B5FCF2 = *(a1 + 4);
        return result;
      case 0xC49:
        if (!*(a1 + 3))
        {
          sub_1000D660C();
        }

        if (a2 <= 4)
        {
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hciparmcache.c", 315, "ByteStream_NumReadBytesAvail(bs) >= 1");
        }

        result = 0;
        byte_100B5FCF3 = *(a1 + 4);
        return result;
    }

    goto LABEL_144;
  }

  if (*(a1 + 1) > 0xC58u)
  {
    if (v5 != 3161)
    {
      if (v5 == 3163)
      {
        if (!*(a1 + 3))
        {
          sub_1000D660C();
        }

        if (a2 <= 4)
        {
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hciparmcache.c", 343, "ByteStream_NumReadBytesAvail(bs) >= 1");
        }

        result = 0;
        byte_100B5FCFF = *(a1 + 4);
        return result;
      }

      goto LABEL_144;
    }

    if (!*(a1 + 3))
    {
      sub_1000D660C();
    }

    if (a2 <= 4)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hciparmcache.c", 337, "ByteStream_NumReadBytesAvail(bs) >= 1");
    }

    result = 0;
    v7 = *(a1 + 4);
    v8 = &byte_100B5FDFA;
    goto LABEL_134;
  }

  if (v5 != 3154)
  {
    if (v5 == 3158)
    {
      if (!*(a1 + 3))
      {
        sub_1000D660C();
      }

      if (a2 <= 4)
      {
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hciparmcache.c", 332, "ByteStream_NumReadBytesAvail(bs) >= 1");
      }

      result = 0;
      byte_100B5FCFE = *(a1 + 4);
      return result;
    }

    goto LABEL_144;
  }

  if (v4 <= 0xF0)
  {
    sub_1000D660C();
  }

  if (a2 - 245 >= 0xFFFFFF0F)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hciparmcache.c", 348, "ByteStream_NumReadBytesAvail(bs) >= (sizeof(parmCache.extendedInqResponse))");
  }

  memmove(&byte_100B5FD00, (a1 + 4), 0xF1uLL);
  return 0;
}

uint64_t sub_10025BAE0(void *a1)
{
  if (!a1)
  {
    sub_1000D660C();
  }

  off_100B5FE00 = a1;
  byte_100B5FE08 = 1;
  sub_10030423C(off_100AE8868);
  return 0;
}

void sub_10025BB2C(uint64_t a1)
{
  if (byte_100B5FE08 == 1)
  {
    sub_1003044D0(off_100AE8868, a1);
  }
}

uint64_t sub_10025BB50()
{
  byte_100B5FE08 = 0;
  v0 = off_100B5FE00;
  off_100B5FE00 = 0;
  if (v0)
  {
    return v0();
  }

  return result;
}

void sub_10025BB70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (byte_100B5FDF1)
  {
    byte_100BCE0C4 = 1;
    v9 = sub_100018960(81, sub_10025CDDC, a3, a4, a5, a6, a7, a8, dword_100B5FDF4);
    byte_100BCE0C4 = 0;
    if (v9)
    {
      v10 = v9;
      if (v9 != 628 && sub_10000C240())
      {
        sub_10000AF54("OI_HCICMD_WriteClassofDevice failed %!", v11, v12, v13, v14, v15, v16, v17, v10);
        v18 = sub_10000C050(0x2Eu);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          sub_10080F7A0();
        }
      }

      sub_10025CDDC(v10);
    }
  }

  else
  {

    sub_10025CDDC(0);
  }
}

void sub_10025BC48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (byte_100B5FDF8)
  {
    byte_100BCE0C4 = 1;
    v9 = sub_100018960(59, sub_10025CDDC, a3, a4, a5, a6, a7, a8, byte_100B5FDF9);
    byte_100BCE0C4 = 0;
    if (v9)
    {
      v10 = v9;
      if (v9 != 628 && sub_10000C240())
      {
        sub_10000AF54("OI_HCICMD_WritePINType failed %!", v11, v12, v13, v14, v15, v16, v17, v10);
        v18 = sub_10000C050(0x2Eu);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          sub_10080F7A0();
        }
      }

      sub_10025CDDC(v10);
    }
  }

  else
  {

    sub_10025CDDC(0);
  }
}

void sub_10025BD20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  byte_100BCE0C4 = 1;
  v8 = sub_100018960(67, sub_10025CDDC, a3, a4, a5, a6, a7, a8, word_100B5FCD8);
  byte_100BCE0C4 = 0;
  if (v8)
  {
    v9 = v8;
    if (v8 != 628 && sub_10000C240())
    {
      sub_10000AF54("OI_HCICMD_WriteConnectionAcceptTimeout failed %!", v10, v11, v12, v13, v14, v15, v16, v9);
      v17 = sub_10000C050(0x2Eu);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    sub_10025CDDC(v9);
  }
}

void sub_10025BDD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  byte_100BCE0C4 = 1;
  v8 = sub_100018960(69, sub_10025CDDC, a3, a4, a5, a6, a7, a8, word_100B5FCDC);
  byte_100BCE0C4 = 0;
  if (v8)
  {
    v9 = v8;
    if (v8 != 628 && sub_10000C240())
    {
      sub_10000AF54("OI_HCICMD_WritePageTimeout failed %!", v10, v11, v12, v13, v14, v15, v16, v9);
      v17 = sub_10000C050(0x2Eu);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    sub_10025CDDC(v9);
  }
}

void sub_10025BE90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  byte_100BCE0C4 = 1;
  v8 = sub_100018960(71, sub_10025CDDC, a3, a4, a5, a6, a7, a8, byte_100B5FCE8);
  byte_100BCE0C4 = 0;
  if (v8)
  {
    v9 = v8;
    if (v8 != 628 && sub_10000C240())
    {
      sub_10000AF54("OI_HCICMD_WriteScanEnable failed %!", v10, v11, v12, v13, v14, v15, v16, v9);
      v17 = sub_10000C050(0x2Eu);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    sub_10025CDDC(v9);
  }
}

void sub_10025BF48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  byte_100BCE0C4 = 1;
  v8 = sub_100018960(73, sub_10025CDDC, a3, a4, a5, a6, a7, a8, word_100B5FCDE);
  byte_100BCE0C4 = 0;
  if (v8)
  {
    v9 = v8;
    if (v8 != 628 && sub_10000C240())
    {
      sub_10000AF54("OI_HCICMD_WritePageScanActivity failed %!", v10, v11, v12, v13, v14, v15, v16, v9);
      v17 = sub_10000C050(0x2Eu);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    sub_10025CDDC(v9);
  }
}

void sub_10025C008(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  byte_100BCE0C4 = 1;
  v8 = sub_100018960(75, sub_10025CDDC, a3, a4, a5, a6, a7, a8, word_100B5FCE2);
  byte_100BCE0C4 = 0;
  if (v8)
  {
    v9 = v8;
    if (v8 != 628 && sub_10000C240())
    {
      sub_10000AF54("OI_HCICMD_WriteInquiryScanActivity failed %!", v10, v11, v12, v13, v14, v15, v16, v9);
      v17 = sub_10000C050(0x2Eu);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    sub_10025CDDC(v9);
  }
}

void sub_10025C0C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  byte_100BCE0C4 = 1;
  v8 = sub_100018960(77, sub_10025CDDC, a3, a4, a5, a6, a7, a8, byte_100B5FCE9);
  byte_100BCE0C4 = 0;
  if (v8)
  {
    v9 = v8;
    if (v8 != 628 && sub_10000C240())
    {
      sub_10000AF54("OI_HCICMD_WriteAuthenticationEnable failed %!", v10, v11, v12, v13, v14, v15, v16, v9);
      v17 = sub_10000C050(0x2Eu);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    sub_10025CDDC(v9);
  }
}

void sub_10025C180(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  byte_100BCE0C4 = 1;
  v8 = sub_100018960(79, sub_10025CDDC, a3, a4, a5, a6, a7, a8, byte_100B5FCEA);
  byte_100BCE0C4 = 0;
  if (v8)
  {
    v9 = v8;
    if (v8 != 628 && sub_10000C240())
    {
      sub_10000AF54("OI_HCICMD_WriteEncryptionMode failed %!", v10, v11, v12, v13, v14, v15, v16, v9);
      v17 = sub_10000C050(0x2Eu);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    sub_10025CDDC(v9);
  }
}

void sub_10025C238(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  byte_100BCE0C4 = 1;
  v8 = sub_100018960(83, sub_10025CDDC, a3, a4, a5, a6, a7, a8, word_100B5FCDA);
  byte_100BCE0C4 = 0;
  if (v8)
  {
    v9 = v8;
    if (v8 != 628 && sub_10000C240())
    {
      sub_10000AF54("OI_HCICMD_WriteVoiceSetting failed %!", v10, v11, v12, v13, v14, v15, v16, v9);
      v17 = sub_10000C050(0x2Eu);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    sub_10025CDDC(v9);
  }
}

void sub_10025C2F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  byte_100BCE0C4 = 1;
  v8 = sub_100018960(87, sub_10025CDDC, a3, a4, a5, a6, a7, a8, byte_100B5FCEB);
  byte_100BCE0C4 = 0;
  if (v8)
  {
    v9 = v8;
    if (v8 != 628 && sub_10000C240())
    {
      sub_10000AF54("OI_HCICMD_WriteNumBroadcastRetransmissions failed %!", v10, v11, v12, v13, v14, v15, v16, v9);
      v17 = sub_10000C050(0x2Eu);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    sub_10025CDDC(v9);
  }
}

void sub_10025C3A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  byte_100BCE0C4 = 1;
  v8 = sub_100018960(89, sub_10025CDDC, a3, a4, a5, a6, a7, a8, byte_100B5FCEC);
  byte_100BCE0C4 = 0;
  if (v8)
  {
    v9 = v8;
    if (v8 != 628 && sub_10000C240())
    {
      sub_10000AF54("OI_HCICMD_WriteHoldModeActivity failed %!", v10, v11, v12, v13, v14, v15, v16, v9);
      v17 = sub_10000C050(0x2Eu);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    sub_10025CDDC(v9);
  }
}

void sub_10025C460(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  byte_100BCE0C4 = 1;
  v8 = sub_100018960(92, sub_10025CDDC, a3, a4, a5, a6, a7, a8, byte_100B5FCED);
  byte_100BCE0C4 = 0;
  if (v8)
  {
    v9 = v8;
    if (v8 != 628 && sub_10000C240())
    {
      sub_10000AF54("OI_HCICMD_WriteSCOFlowControlEnable failed %!", v10, v11, v12, v13, v14, v15, v16, v9);
      v17 = sub_10000C050(0x2Eu);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    sub_10025CDDC(v9);
  }
}

void sub_10025C518(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  byte_100BCE0C4 = 1;
  v8 = sub_100018960(102, sub_10025CDDC, a3, a4, a5, a6, a7, a8, byte_100B5FCEE);
  byte_100BCE0C4 = 0;
  if (v8)
  {
    v9 = v8;
    if (v8 != 628 && sub_10000C240())
    {
      sub_10000AF54("OI_HCICMD_WritePageScanPeriodMode failed %!", v10, v11, v12, v13, v14, v15, v16, v9);
      v17 = sub_10000C050(0x2Eu);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    sub_10025CDDC(v9);
  }
}

void sub_10025C5D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  byte_100BCE0C4 = 1;
  v8 = sub_100018960(104, sub_10025CDDC, a3, a4, a5, a6, a7, a8, byte_100B5FCEF);
  byte_100BCE0C4 = 0;
  if (v8)
  {
    v9 = v8;
    if (v8 != 628 && sub_10000C240())
    {
      sub_10000AF54("OI_HCICMD_WritePageScanMode failed %!", v10, v11, v12, v13, v14, v15, v16, v9);
      v17 = sub_10000C050(0x2Eu);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    sub_10025CDDC(v9);
  }
}

void sub_10025C688(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  byte_100BCE0C4 = 1;
  v8 = sub_100018960(107, sub_10025CDDC, a3, a4, a5, a6, a7, a8, byte_100B5FCF0);
  byte_100BCE0C4 = 0;
  if (v8)
  {
    v9 = v8;
    if (v8 != 628 && sub_10000C240())
    {
      sub_10000AF54("OI_HCICMD_WriteInquiryScanType failed %!", v10, v11, v12, v13, v14, v15, v16, v9);
      v17 = sub_10000C050(0x2Eu);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    sub_10025CDDC(v9);
  }
}

void sub_10025C740(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  byte_100BCE0C4 = 1;
  v8 = sub_100018960(109, sub_10025CDDC, a3, a4, a5, a6, a7, a8, byte_100B5FCF1);
  byte_100BCE0C4 = 0;
  if (v8)
  {
    v9 = v8;
    if (v8 != 628 && sub_10000C240())
    {
      sub_10000AF54("OI_HCICMD_WriteInquiryMode failed %!", v10, v11, v12, v13, v14, v15, v16, v9);
      v17 = sub_10000C050(0x2Eu);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    sub_10025CDDC(v9);
  }
}

void sub_10025C7F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  byte_100BCE0C4 = 1;
  v8 = sub_100018960(111, sub_10025CDDC, a3, a4, a5, a6, a7, a8, byte_100B5FCF2);
  byte_100BCE0C4 = 0;
  if (v8)
  {
    v9 = v8;
    if (v8 != 628 && sub_10000C240())
    {
      sub_10000AF54("OI_HCICMD_WritePageScanType failed %!", v10, v11, v12, v13, v14, v15, v16, v9);
      v17 = sub_10000C050(0x2Eu);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    sub_10025CDDC(v9);
  }
}

void sub_10025C8B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  byte_100BCE0C4 = 1;
  v8 = sub_100018960(113, sub_10025CDDC, a3, a4, a5, a6, a7, a8, byte_100B5FCF3);
  byte_100BCE0C4 = 0;
  if (v8)
  {
    v9 = v8;
    if (v8 != 628 && sub_10000C240())
    {
      sub_10000AF54("OI_HCICMD_WriteAfhChannelAssessmentMode failed %!", v10, v11, v12, v13, v14, v15, v16, v9);
      v17 = sub_10000C050(0x2Eu);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    sub_10025CDDC(v9);
  }
}

void sub_10025C968(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  byte_100BCE0C4 = 1;
  v8 = sub_100018960(51, sub_10025CDDC, a3, a4, a5, a6, a7, a8, word_100B5FCE6);
  byte_100BCE0C4 = 0;
  if (v8)
  {
    v9 = v8;
    if (v8 != 628 && sub_10000C240())
    {
      sub_10000AF54("OI_HCICMD_WriteDefaultLinkPolicySettings failed %!", v10, v11, v12, v13, v14, v15, v16, v9);
      v17 = sub_10000C050(0x2Eu);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    sub_10025CDDC(v9);
  }
}

void sub_10025CA20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  byte_100BCE0C4 = 1;
  v8 = sub_100018960(105, sub_10025CDDC, a3, a4, a5, a6, a7, a8, &qword_100B5FCF4);
  byte_100BCE0C4 = 0;
  if (v8)
  {
    v9 = v8;
    if (v8 != 628 && sub_10000C240())
    {
      sub_10000AF54("OI_HCICMD_SetAfhHostChannelClassification failed %!", v10, v11, v12, v13, v14, v15, v16, v9);
      v17 = sub_10000C050(0x2Eu);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    sub_10025CDDC(v9);
  }
}

void sub_10025CAD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  byte_100BCE0C4 = 1;
  v8 = sub_100018960(118, sub_10025CDDC, a3, a4, a5, a6, a7, a8, byte_100B5FCFE);
  byte_100BCE0C4 = 0;
  if (v8)
  {
    v9 = v8;
    if (v8 != 628 && sub_10000C240())
    {
      sub_10000AF54("OI_HCICMD_WriteSimplePairingMode failed %!", v10, v11, v12, v13, v14, v15, v16, v9);
      v17 = sub_10000C050(0x2Eu);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    sub_10025CDDC(v9);
  }
}

void sub_10025CB90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  byte_100BCE0C4 = 1;
  v8 = sub_100018960(124, sub_10025CDDC, a3, a4, a5, a6, a7, a8, byte_100B5FCFF);
  byte_100BCE0C4 = 0;
  if (v8)
  {
    v9 = v8;
    if (v8 != 628 && sub_10000C240())
    {
      sub_10000AF54("OI_HCICMD_WriteDefaultErroneousDataReporting failed %!", v10, v11, v12, v13, v14, v15, v16, v9);
      v17 = sub_10000C050(0x2Eu);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    sub_10025CDDC(v9);
  }
}

void sub_10025CC48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  byte_100BCE0C4 = 1;
  v8 = sub_100018960(115, sub_10025CDDC, a3, a4, a5, a6, a7, a8, byte_100B5FD00);
  byte_100BCE0C4 = 0;
  if (v8)
  {
    v9 = v8;
    if (v8 != 628 && sub_10000C240())
    {
      sub_10000AF54("OI_HCICMD_WriteExtendedInquiryResponse failed %!", v10, v11, v12, v13, v14, v15, v16, v9);
      v17 = sub_10000C050(0x2Eu);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    sub_10025CDDC(v9);
  }
}

void sub_10025CD04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (byte_100B5FDFA)
  {
    byte_100BCE0C4 = 1;
    v9 = sub_100018960(121, sub_10025CDDC, a3, a4, a5, a6, a7, a8, byte_100B5FDFB);
    byte_100BCE0C4 = 0;
    if (v9)
    {
      v10 = v9;
      if (v9 != 628 && sub_10000C240())
      {
        sub_10000AF54("OI_HCICMD_WriteInquiryResponseTxPowerLevel failed %!", v11, v12, v13, v14, v15, v16, v17, v10);
        v18 = sub_10000C050(0x2Eu);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          sub_10080F7A0();
        }
      }

      sub_10025CDDC(v10);
    }
  }

  else
  {

    sub_10025CDDC(0);
  }
}

void sub_10025CDDC(uint64_t a1)
{
  if (byte_100B5FE08)
  {
    if (a1 == 628)
    {
LABEL_19:
      sub_1003043EC(off_100AE8868);
      return;
    }

    if (a1 == 717)
    {
      if (!sub_10000C240())
      {
        goto LABEL_19;
      }

      sub_10000AF54("Unsupported command %!, ignoring error", v2, v3, v4, v5, v6, v7, v8, 717);
      v9 = sub_10000C050(0x2Eu);
      if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_19;
      }

      goto LABEL_6;
    }

    if ((a1 - 701) <= 0x44)
    {
      if (!sub_10000C240())
      {
        goto LABEL_19;
      }

      sub_10000AF54("Assuming unsupported command %!, ignoring error", v18, v19, v20, v21, v22, v23, v24, a1);
      v25 = sub_10000C050(0x2Eu);
      if (!os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_19;
      }

LABEL_6:
      sub_10080F7A0();
      goto LABEL_19;
    }

    if (!a1)
    {
      goto LABEL_19;
    }

    if (sub_10000C240())
    {
      sub_10000AF54("commonRestoreCb %!", v26, v27, v28, v29, v30, v31, v32, a1);
      v33 = sub_10000C050(0x2Eu);
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    sub_1003044D0(off_100AE8868, a1);
  }

  else if (sub_10000C240())
  {
    sub_10000AF54("Orphaned parm chache callback", v10, v11, v12, v13, v14, v15, v16, v34);
    v17 = sub_10000C050(0x2Eu);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_10080F7A0();
    }
  }
}

void sub_10025CF64(uint64_t a1, void (*a2)(uint64_t, uint64_t), uint64_t *a3)
{
  if (a1)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("status %d, Byte 0x%x, hlCb 0x%x", v5, v6, v7, v8, v9, v10, v11, a1);
      v12 = sub_10000C050(0x54u);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_10080F604();
      }
    }

    v13 = 0;
    if (a2)
    {
      goto LABEL_6;
    }

    return;
  }

  if (*(a3 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
    goto LABEL_14;
  }

  v14 = *(a3 + 6);
  if (*(a3 + 5) <= v14)
  {
LABEL_14:
    v16 = "ByteStream_NumReadBytesAvail(*pBs) >= 1";
    goto LABEL_16;
  }

  if (*(a3 + 14) != 1)
  {
    v16 = "(*pBs).__RWFlag == BYTESTREAM_READ";
LABEL_16:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 73, v16);
  }

  v15 = *a3;
  *(a3 + 6) = v14 + 1;
  v13 = *(v15 + v14);
  if (a2)
  {
LABEL_6:
    a2(a1, v13);
  }
}

void sub_10025D074(uint64_t a1, void (*a2)(uint64_t, uint64_t, uint64_t), uint64_t *a3)
{
  if (!a1)
  {
    if (*(a3 + 15))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
    }

    else
    {
      v15 = *(a3 + 5);
      v16 = *(a3 + 6);
      if (v15 > v16)
      {
        if (*(a3 + 14) == 1)
        {
          v17 = *a3;
          *(a3 + 6) = v16 + 1;
          if (v15 <= v16 + 1)
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 91, "ByteStream_NumReadBytesAvail(*pBs) >= 1");
          }

          v14 = *(v17 + v16);
          *(a3 + 6) = v16 + 2;
          v13 = *(v17 + v16 + 1);
          if (a2)
          {
            goto LABEL_6;
          }

          return;
        }

        v18 = "(*pBs).__RWFlag == BYTESTREAM_READ";
LABEL_17:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 90, v18);
      }
    }

    v18 = "ByteStream_NumReadBytesAvail(*pBs) >= 1";
    goto LABEL_17;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("status %d,  Byte 0x%x, Byte1 0x%x, hlCb 0x%x", v5, v6, v7, v8, v9, v10, v11, a1);
    v12 = sub_10000C050(0x54u);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }

  v13 = 0;
  v14 = 0;
  if (a2)
  {
LABEL_6:
    a2(a1, v14, v13);
  }
}

void sub_10025D1B4(uint64_t a1, void (*a2)(uint64_t, uint64_t, uint64_t), uint64_t *a3)
{
  if (!a1)
  {
    if (*(a3 + 15))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
    }

    else
    {
      v15 = *(a3 + 5);
      v16 = *(a3 + 6);
      if ((v15 - v16) > 1)
      {
        if (*(a3 + 14) == 1)
        {
          v17 = *a3;
          v18 = (*a3 + v16);
          v19 = *v18;
          v20 = v18[1];
          *(a3 + 6) = v16 + 2;
          if (v15 <= (v16 + 2))
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 130, "ByteStream_NumReadBytesAvail(*pBs) >= 1");
          }

          v14 = v19 | (v20 << 8);
          *(a3 + 6) = v16 + 3;
          v13 = *(v17 + (v16 + 2));
          if (a2)
          {
            goto LABEL_6;
          }

          return;
        }

        v21 = "(*pBs).__RWFlag == BYTESTREAM_READ";
LABEL_17:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 129, v21);
      }
    }

    v21 = "ByteStream_NumReadBytesAvail(*pBs) >= 2";
    goto LABEL_17;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("status %d, ConnectionHandle 0x%x, Byte 0x%x, hlCb 0x%x", v5, v6, v7, v8, v9, v10, v11, a1);
    v12 = sub_10000C050(0x54u);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }

  v13 = 0;
  v14 = 0;
  if (a2)
  {
LABEL_6:
    a2(a1, v14, v13);
  }
}

void sub_10025D308(uint64_t a1, void (*a2)(uint64_t, void, void, uint64_t, void), uint64_t *a3)
{
  if (!a1)
  {
    if (*(a3 + 15))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
    }

    else
    {
      v17 = *(a3 + 5);
      v18 = *(a3 + 6);
      if (v17 - v18 > 1)
      {
        if (*(a3 + 14) == 1)
        {
          v19 = *a3;
          v16 = *(*a3 + v18);
          *(a3 + 6) = v18 + 2;
          if (v17 - (v18 + 2) <= 1)
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 148, "ByteStream_NumReadBytesAvail(*pBs) >= 2");
          }

          v15 = *(v19 + (v18 + 2));
          *(a3 + 6) = v18 + 4;
          if (v17 - (v18 + 4) <= 1)
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 149, "ByteStream_NumReadBytesAvail(*pBs) >= 2");
          }

          v20 = (v19 + (v18 + 4));
          v21 = *v20;
          v22 = v20[1];
          *(a3 + 6) = v18 + 6;
          if (v17 - (v18 + 6) <= 1)
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 150, "ByteStream_NumReadBytesAvail(*pBs) >= 2");
          }

          v13 = v21 | (v22 << 8);
          v14 = *(v19 + (v18 + 6));
          *(a3 + 6) = v18 + 8;
          if (a2)
          {
            goto LABEL_6;
          }

          return;
        }

        v23 = "(*pBs).__RWFlag == BYTESTREAM_READ";
LABEL_19:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 147, v23);
      }
    }

    v23 = "ByteStream_NumReadBytesAvail(*pBs) >= 2";
    goto LABEL_19;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("status %!, transmitting %d, receiving %d, sleep %d, others %d", v5, v6, v7, v8, v9, v10, v11, a1);
    v12 = sub_10000C050(0x54u);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }

  v13 = 0;
  v14 = 0;
  v15 = 0;
  v16 = 0;
  if (a2)
  {
LABEL_6:
    a2(a1, v16, v15, v13, v14);
  }
}

void sub_10025D4E0(uint64_t a1, void (*a2)(uint64_t, uint64_t), uint64_t a3)
{
  if (a1)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("status %!", v5, v6, v7, v8, v9, v10, v11, a1);
      v12 = sub_10000C050(0x54u);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_10080F604();
      }
    }

    v13 = 0;
    if (a2)
    {
      goto LABEL_6;
    }

    return;
  }

  if (*(a3 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
    goto LABEL_14;
  }

  v14 = *(a3 + 12);
  if (*(a3 + 10) - v14 <= 3)
  {
LABEL_14:
    v15 = "ByteStream_NumReadBytesAvail(*pBs) >= 4";
    goto LABEL_16;
  }

  if (*(a3 + 14) != 1)
  {
    v15 = "(*pBs).__RWFlag == BYTESTREAM_READ";
LABEL_16:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 343, v15);
  }

  v13 = *(*a3 + v14);
  *(a3 + 12) = v14 + 4;
  if (a2)
  {
LABEL_6:
    a2(a1, v13);
  }
}

void sub_10025D5F0(uint64_t a1, void (*a2)(uint64_t, uint64_t, uint64_t), uint64_t *a3)
{
  if (!a1)
  {
    if (*(a3 + 15))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
    }

    else
    {
      v15 = *(a3 + 5);
      v16 = *(a3 + 6);
      if (v15 - v16 > 1)
      {
        if (*(a3 + 14) == 1)
        {
          v17 = *a3;
          v18 = (*a3 + v16);
          v19 = *v18;
          v20 = v18[1];
          *(a3 + 6) = v16 + 2;
          if (v15 - (v16 + 2) <= 3)
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 362, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
          }

          v14 = v19 | (v20 << 8);
          v13 = *(v17 + (v16 + 2));
          *(a3 + 6) = v16 + 6;
          if (a2)
          {
            goto LABEL_6;
          }

          return;
        }

        v21 = "(*pBs).__RWFlag == BYTESTREAM_READ";
LABEL_17:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 361, v21);
      }
    }

    v21 = "ByteStream_NumReadBytesAvail(*pBs) >= 2";
    goto LABEL_17;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("status %!", v5, v6, v7, v8, v9, v10, v11, a1);
    v12 = sub_10000C050(0x54u);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }

  v13 = 0;
  v14 = 0;
  if (a2)
  {
LABEL_6:
    a2(a1, v14, v13);
  }
}

void sub_10025D748(uint64_t a1, void (*a2)(uint64_t, uint64_t, uint64_t, uint64_t), uint64_t *a3)
{
  if (!a1)
  {
    if (*(a3 + 15))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
    }

    else
    {
      v16 = *(a3 + 5);
      v17 = *(a3 + 6);
      if (v16 > v17)
      {
        if (*(a3 + 14) == 1)
        {
          v18 = *a3;
          *(a3 + 6) = v17 + 1;
          if (v16 <= v17 + 1)
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 380, "ByteStream_NumReadBytesAvail(*pBs) >= 1");
          }

          v15 = *(v18 + v17);
          *(a3 + 6) = v17 + 2;
          if (v16 <= v17 + 2)
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 381, "ByteStream_NumReadBytesAvail(*pBs) >= 1");
          }

          v14 = *(v18 + v17 + 1);
          *(a3 + 6) = v17 + 3;
          v13 = *(v18 + v17 + 2);
          if (a2)
          {
            goto LABEL_6;
          }

          return;
        }

        v19 = "(*pBs).__RWFlag == BYTESTREAM_READ";
LABEL_18:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 379, v19);
      }
    }

    v19 = "ByteStream_NumReadBytesAvail(*pBs) >= 1";
    goto LABEL_18;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("status %!", v5, v6, v7, v8, v9, v10, v11, a1);
    v12 = sub_10000C050(0x54u);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }

  v13 = 0;
  v14 = 0;
  v15 = 0;
  if (a2)
  {
LABEL_6:
    a2(a1, v15, v14, v13);
  }
}

void sub_10025D8B8(uint64_t a1, void (*a2)(uint64_t, uint64_t), uint64_t *a3)
{
  if (a1)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("status %!", v5, v6, v7, v8, v9, v10, v11, a1);
      v12 = sub_10000C050(0x54u);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_10080F604();
      }
    }

    v13 = 255;
    goto LABEL_10;
  }

  if (*(a3 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
    goto LABEL_18;
  }

  v14 = *(a3 + 6);
  if (*(a3 + 5) <= v14)
  {
LABEL_18:
    v24 = "ByteStream_NumReadBytesAvail(*pBs) >= 1";
    goto LABEL_20;
  }

  if (*(a3 + 14) != 1)
  {
    v24 = "(*pBs).__RWFlag == BYTESTREAM_READ";
LABEL_20:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 398, v24);
  }

  v15 = *a3;
  *(a3 + 6) = v14 + 1;
  v13 = *(v15 + v14);
  if (v13 == 1)
  {
    goto LABEL_12;
  }

LABEL_10:
  if (!sub_10000C240() || (sub_10000AF54("SubOpcode Incorrect %!", v16, v17, v18, v19, v20, v21, v22, a1), v23 = sub_10000C050(0x54u), !os_log_type_enabled(v23, OS_LOG_TYPE_ERROR)))
  {
LABEL_12:
    if (!a2)
    {
      return;
    }

    goto LABEL_13;
  }

  sub_10080F604();
  if (a2)
  {
LABEL_13:
    a2(a1, v13);
  }
}

void sub_10025DA18(uint64_t a1, void (*a2)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t *a3)
{
  if (a1)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("status %!", v5, v6, v7, v8, v9, v10, v11, a1);
      v12 = sub_10000C050(0x54u);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_10080F604();
      }
    }

    v13 = 255;
    v14 = 255;
    v15 = 255;
    v16 = 255;
    goto LABEL_13;
  }

  if (*(a3 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
    goto LABEL_21;
  }

  v17 = *(a3 + 5);
  v18 = *(a3 + 6);
  if (v17 <= v18)
  {
LABEL_21:
    v28 = "ByteStream_NumReadBytesAvail(*pBs) >= 1";
    goto LABEL_23;
  }

  if (*(a3 + 14) != 1)
  {
    v28 = "(*pBs).__RWFlag == BYTESTREAM_READ";
LABEL_23:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 421, v28);
  }

  v19 = *a3;
  *(a3 + 6) = v18 + 1;
  if (v17 <= v18 + 1)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 422, "ByteStream_NumReadBytesAvail(*pBs) >= 1");
  }

  v13 = *(v19 + v18);
  *(a3 + 6) = v18 + 2;
  if (v17 <= v18 + 2)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 423, "ByteStream_NumReadBytesAvail(*pBs) >= 1");
  }

  v14 = *(v19 + v18 + 1);
  *(a3 + 6) = v18 + 3;
  if (v17 <= v18 + 3)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 424, "ByteStream_NumReadBytesAvail(*pBs) >= 1");
  }

  v15 = *(v19 + v18 + 2);
  *(a3 + 6) = v18 + 4;
  v16 = *(v19 + v18 + 3);
  if (v13 == 13)
  {
LABEL_15:
    if (!a2)
    {
      return;
    }

    goto LABEL_16;
  }

LABEL_13:
  if (!sub_10000C240())
  {
    goto LABEL_15;
  }

  sub_10000AF54("SubOpcode Incorrect %!", v20, v21, v22, v23, v24, v25, v26, a1);
  v27 = sub_10000C050(0x54u);
  if (!os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
  {
    goto LABEL_15;
  }

  sub_10080F604();
  if (a2)
  {
LABEL_16:
    a2(a1, v13, v14, v15, v16);
  }
}

void sub_10025DC24(uint64_t a1, void (*a2)(uint64_t, uint64_t, uint64_t, uint64_t, void), uint64_t *a3)
{
  if (a1)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("status %!", v5, v6, v7, v8, v9, v10, v11, a1);
      v12 = sub_10000C050(0x54u);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_10080F604();
      }
    }

    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 255;
    goto LABEL_13;
  }

  if (*(a3 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
    goto LABEL_21;
  }

  v17 = *(a3 + 5);
  v18 = *(a3 + 6);
  if (v17 <= v18)
  {
LABEL_21:
    v28 = "ByteStream_NumReadBytesAvail(*pBs) >= 1";
    goto LABEL_23;
  }

  if (*(a3 + 14) != 1)
  {
    v28 = "(*pBs).__RWFlag == BYTESTREAM_READ";
LABEL_23:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 447, v28);
  }

  v19 = *a3;
  *(a3 + 6) = v18 + 1;
  if (v17 <= (v18 + 1))
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 448, "ByteStream_NumReadBytesAvail(*pBs) >= 1");
  }

  v16 = *(v19 + v18);
  *(a3 + 6) = v18 + 2;
  if (v17 <= (v18 + 2))
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 449, "ByteStream_NumReadBytesAvail(*pBs) >= 1");
  }

  v13 = *(v19 + v18 + 1);
  *(a3 + 6) = v18 + 3;
  if ((v17 - (v18 + 3)) <= 1)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 450, "ByteStream_NumReadBytesAvail(*pBs) >= 2");
  }

  v14 = *(v19 + v18 + 2);
  v15 = *(v19 + v18 + 3);
  *(a3 + 6) = v18 + 5;
  if (v16 == 2)
  {
LABEL_15:
    if (!a2)
    {
      return;
    }

    goto LABEL_16;
  }

LABEL_13:
  if (!sub_10000C240())
  {
    goto LABEL_15;
  }

  sub_10000AF54("SubOpcode Incorrect %!", v20, v21, v22, v23, v24, v25, v26, a1);
  v27 = sub_10000C050(0x54u);
  if (!os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
  {
    goto LABEL_15;
  }

  sub_10080F604();
  if (a2)
  {
LABEL_16:
    a2(a1, v16, v13, v14, v15);
  }
}

void sub_10025DE34(uint64_t a1, void (*a2)(uint64_t))
{
  if (a1 && sub_10000C240() && (sub_10000AF54("status %!", v4, v5, v6, v7, v8, v9, v10, a1), v11 = sub_10000C050(0x54u), os_log_type_enabled(v11, OS_LOG_TYPE_ERROR)))
  {
    sub_10080F604();
    if (!a2)
    {
      return;
    }
  }

  else if (!a2)
  {
    return;
  }

  a2(a1);
}

void sub_10025DEC0(uint64_t a1, void (*a2)(uint64_t))
{
  if (a1 && sub_10000C240() && (sub_10000AF54("status %!", v4, v5, v6, v7, v8, v9, v10, a1), v11 = sub_10000C050(0x54u), os_log_type_enabled(v11, OS_LOG_TYPE_ERROR)))
  {
    sub_10080F604();
    if (!a2)
    {
      return;
    }
  }

  else if (!a2)
  {
    return;
  }

  a2(a1);
}

void sub_10025DF4C(uint64_t a1, void (*a2)(uint64_t))
{
  if (a1 && sub_10000C240() && (sub_10000AF54("status %!", v4, v5, v6, v7, v8, v9, v10, a1), v11 = sub_10000C050(0x54u), os_log_type_enabled(v11, OS_LOG_TYPE_ERROR)))
  {
    sub_10080F604();
    if (!a2)
    {
      return;
    }
  }

  else if (!a2)
  {
    return;
  }

  a2(a1);
}

void sub_10025DFD8(uint64_t a1, void (*a2)(uint64_t, uint64_t), uint64_t *a3)
{
  if (a1)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("status %!", v5, v6, v7, v8, v9, v10, v11, a1);
      v12 = sub_10000C050(0x54u);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_10080F604();
      }
    }

    v13 = 255;
    goto LABEL_10;
  }

  if (*(a3 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
    goto LABEL_18;
  }

  v14 = *(a3 + 6);
  if (*(a3 + 5) <= v14)
  {
LABEL_18:
    v24 = "ByteStream_NumReadBytesAvail(*pBs) >= 1";
    goto LABEL_20;
  }

  if (*(a3 + 14) != 1)
  {
    v24 = "(*pBs).__RWFlag == BYTESTREAM_READ";
LABEL_20:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 591, v24);
  }

  v15 = *a3;
  *(a3 + 6) = v14 + 1;
  v13 = *(v15 + v14);
  if (v13 == 5)
  {
    goto LABEL_12;
  }

LABEL_10:
  if (!sub_10000C240() || (sub_10000AF54("SubOpcode Incorrect %!", v16, v17, v18, v19, v20, v21, v22, a1), v23 = sub_10000C050(0x54u), !os_log_type_enabled(v23, OS_LOG_TYPE_ERROR)))
  {
LABEL_12:
    if (!a2)
    {
      return;
    }

    goto LABEL_13;
  }

  sub_10080F604();
  if (a2)
  {
LABEL_13:
    a2(a1, v13);
  }
}

void sub_10025E138(uint64_t a1, void (*a2)(uint64_t, uint64_t, uint64_t), uint64_t *a3)
{
  if (a1)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("status %!", v5, v6, v7, v8, v9, v10, v11, a1);
      v12 = sub_10000C050(0x54u);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_10080F604();
      }
    }

    v13 = 0;
    v14 = 255;
    goto LABEL_11;
  }

  if (*(a3 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
    goto LABEL_19;
  }

  v15 = *(a3 + 5);
  v16 = *(a3 + 6);
  if (v15 <= v16)
  {
LABEL_19:
    v26 = "ByteStream_NumReadBytesAvail(*pBs) >= 1";
    goto LABEL_21;
  }

  if (*(a3 + 14) != 1)
  {
    v26 = "(*pBs).__RWFlag == BYTESTREAM_READ";
LABEL_21:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 612, v26);
  }

  v17 = *a3;
  *(a3 + 6) = v16 + 1;
  if (v15 <= v16 + 1)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 613, "ByteStream_NumReadBytesAvail(*pBs) >= 1");
  }

  v14 = *(v17 + v16);
  *(a3 + 6) = v16 + 2;
  v13 = *(v17 + v16 + 1);
  if (v14 == 6)
  {
LABEL_13:
    if (!a2)
    {
      return;
    }

    goto LABEL_14;
  }

LABEL_11:
  if (!sub_10000C240())
  {
    goto LABEL_13;
  }

  sub_10000AF54("SubOpcode Incorrect %!", v18, v19, v20, v21, v22, v23, v24, a1);
  v25 = sub_10000C050(0x54u);
  if (!os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
  {
    goto LABEL_13;
  }

  sub_10080F604();
  if (a2)
  {
LABEL_14:
    a2(a1, v14, v13);
  }
}

void sub_10025E2D4(uint64_t a1, void (*a2)(uint64_t, void), uint64_t a3)
{
  if (a1)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("status %!", v5, v6, v7, v8, v9, v10, v11, a1);
      v12 = sub_10000C050(0x54u);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_10080F604();
      }
    }

    v13 = 0;
    if (a2)
    {
      goto LABEL_6;
    }

    return;
  }

  if (*(a3 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
    goto LABEL_14;
  }

  v14 = *(a3 + 12);
  if (*(a3 + 10) - v14 <= 1)
  {
LABEL_14:
    v15 = "ByteStream_NumReadBytesAvail(*pBs) >= 2";
    goto LABEL_16;
  }

  if (*(a3 + 14) != 1)
  {
    v15 = "(*pBs).__RWFlag == BYTESTREAM_READ";
LABEL_16:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 633, v15);
  }

  v13 = *(*a3 + v14);
  *(a3 + 12) = v14 + 2;
  if (a2)
  {
LABEL_6:
    a2(a1, v13);
  }
}

void sub_10025E3E8(uint64_t a1, void (*a2)(uint64_t, uint64_t, uint64_t, uint64_t), uint64_t *a3)
{
  if (a1)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("status %!", v5, v6, v7, v8, v9, v10, v11, a1);
      v12 = sub_10000C050(0x54u);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_10080F604();
      }
    }

    v13 = 0;
    v14 = 0;
    v15 = 255;
    goto LABEL_12;
  }

  if (*(a3 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
    goto LABEL_20;
  }

  v16 = *(a3 + 5);
  v17 = *(a3 + 6);
  if (v16 <= v17)
  {
LABEL_20:
    v30 = "ByteStream_NumReadBytesAvail(*pBs) >= 1";
    goto LABEL_22;
  }

  if (*(a3 + 14) != 1)
  {
    v30 = "(*pBs).__RWFlag == BYTESTREAM_READ";
LABEL_22:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 652, v30);
  }

  v18 = *a3;
  *(a3 + 6) = v17 + 1;
  if ((v16 - (v17 + 1)) <= 1)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 653, "ByteStream_NumReadBytesAvail(*pBs) >= 2");
  }

  v15 = *(v18 + v17);
  v19 = (v18 + v17 + 1);
  v20 = *v19;
  v21 = v19[1];
  *(a3 + 6) = v17 + 3;
  if (v16 <= (v17 + 3))
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 654, "ByteStream_NumReadBytesAvail(*pBs) >= 1");
  }

  v13 = v20 | (v21 << 8);
  *(a3 + 6) = v17 + 4;
  v14 = *(v18 + (v17 + 3));
  if (!v15)
  {
LABEL_14:
    if (!a2)
    {
      return;
    }

    goto LABEL_15;
  }

LABEL_12:
  if (!sub_10000C240())
  {
    goto LABEL_14;
  }

  sub_10000AF54("SubOpcode Incorrect %!", v22, v23, v24, v25, v26, v27, v28, a1);
  v29 = sub_10000C050(0x54u);
  if (!os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
  {
    goto LABEL_14;
  }

  sub_10080F604();
  if (a2)
  {
LABEL_15:
    a2(a1, v15, v13, v14);
  }
}

void sub_10025E5C8(uint64_t a1, void (*a2)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, int *, int *, int *, int), uint64_t *a3)
{
  v36 = 0;
  v35 = 0;
  v34 = 0;
  v33 = 0;
  v32 = 0;
  v31 = 0;
  if (!a1)
  {
    if (*(a3 + 15))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
    }

    else
    {
      v19 = *(a3 + 5);
      v20 = *(a3 + 6);
      if (v19 > v20)
      {
        if (*(a3 + 14) == 1)
        {
          v21 = *a3;
          *(a3 + 6) = v20 + 1;
          if (v19 <= (v20 + 1))
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 682, "ByteStream_NumReadBytesAvail(*pBs) >= 1");
          }

          v17 = *(v21 + v20);
          *(a3 + 6) = v20 + 2;
          if (v19 <= (v20 + 2))
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 683, "ByteStream_NumReadBytesAvail(*pBs) >= 1");
          }

          v16 = *(v21 + v20 + 1);
          *(a3 + 6) = v20 + 3;
          if (v19 <= (v20 + 3))
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 684, "ByteStream_NumReadBytesAvail(*pBs) >= 1");
          }

          v15 = *(v21 + v20 + 2);
          v22 = v20 + 4;
          *(a3 + 6) = v20 + 4;
          v14 = *(v21 + v20 + 3);
          if ((v17 - 1) > 1u)
          {
            v13 = 0;
            if (!a2)
            {
              return;
            }
          }

          else
          {
            if ((v19 - v22) <= 4)
            {
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 686, "ByteStream_NumReadBytesAvail(*pBs) >= (5)");
            }

            v23 = (v21 + v22);
            v24 = *v23;
            v36 = *(v23 + 4);
            v35 = v24;
            *(a3 + 6) = v20 + 9;
            if ((v19 - (v20 + 9)) <= 4)
            {
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 687, "ByteStream_NumReadBytesAvail(*pBs) >= (5)");
            }

            v25 = (v21 + (v20 + 9));
            v26 = *v25;
            v34 = *(v25 + 4);
            v33 = v26;
            *(a3 + 6) = v20 + 14;
            if ((v19 - (v20 + 14)) <= 4)
            {
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 688, "ByteStream_NumReadBytesAvail(*pBs) >= (5)");
            }

            v27 = (v21 + (v20 + 14));
            v28 = *v27;
            v32 = *(v27 + 4);
            v31 = v28;
            *(a3 + 6) = v20 + 19;
            if (v17 == 2)
            {
              if (v19 <= (v20 + 19))
              {
                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 690, "ByteStream_NumReadBytesAvail(*pBs) >= 1");
              }

              *(a3 + 6) = v20 + 20;
              v13 = *(v21 + (v20 + 19));
              v17 = 2;
              if (a2)
              {
                goto LABEL_6;
              }

              return;
            }

            v13 = 0;
            v17 = 1;
            if (!a2)
            {
              return;
            }
          }

LABEL_6:
          LOBYTE(v30) = v13;
          a2(a1, v17, v16, v15, v14, &v35, &v33, &v31, v30);
          return;
        }

        v29 = "(*pBs).__RWFlag == BYTESTREAM_READ";
LABEL_29:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 681, v29);
      }
    }

    v29 = "ByteStream_NumReadBytesAvail(*pBs) >= 1";
    goto LABEL_29;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("status %!", v5, v6, v7, v8, v9, v10, v11, a1);
    v12 = sub_10000C050(0x54u);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }

  v13 = 0;
  v14 = 0;
  v15 = 0;
  v16 = 0;
  v17 = 0;
  if (a2)
  {
    goto LABEL_6;
  }
}

uint64_t sub_10025E8BC(uint64_t a1, uint64_t (*a2)(uint64_t, void, void, void, void, void, void, void, int), uint64_t *a3)
{
  if (!a1)
  {
    if (*(a3 + 15))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
    }

    else
    {
      v24 = *(a3 + 5);
      v25 = *(a3 + 6);
      if ((v24 - v25) > 1)
      {
        if (*(a3 + 14) == 1)
        {
          v26 = *a3;
          v23 = *(*a3 + v25);
          *(a3 + 6) = v25 + 2;
          if (v24 <= (v25 + 2))
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 720, "ByteStream_NumReadBytesAvail(*pBs) >= 1");
          }

          *(a3 + 6) = v25 + 3;
          if (v24 <= (v25 + 3))
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 721, "ByteStream_NumReadBytesAvail(*pBs) >= 1");
          }

          v22 = *(v26 + (v25 + 2));
          *(a3 + 6) = v25 + 4;
          if (v24 <= (v25 + 4))
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 722, "ByteStream_NumReadBytesAvail(*pBs) >= 1");
          }

          v14 = *(v26 + (v25 + 3));
          *(a3 + 6) = v25 + 5;
          if (v24 <= (v25 + 5))
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 723, "ByteStream_NumReadBytesAvail(*pBs) >= 1");
          }

          v15 = *(v26 + (v25 + 4));
          *(a3 + 6) = v25 + 6;
          if (v24 <= (v25 + 6))
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 724, "ByteStream_NumReadBytesAvail(*pBs) >= 1");
          }

          v16 = *(v26 + (v25 + 5));
          *(a3 + 6) = v25 + 7;
          if (v24 <= (v25 + 7))
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 725, "ByteStream_NumReadBytesAvail(*pBs) >= 1");
          }

          v17 = *(v26 + (v25 + 6));
          *(a3 + 6) = v25 + 8;
          if (v24 <= (v25 + 8))
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 726, "ByteStream_NumReadBytesAvail(*pBs) >= 1");
          }

          v18 = *(v26 + (v25 + 7));
          *(a3 + 6) = v25 + 9;
          if (v24 <= (v25 + 9))
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 727, "ByteStream_NumReadBytesAvail(*pBs) >= 1");
          }

          result = *(v26 + (v25 + 8));
          *(a3 + 6) = v25 + 10;
          if (v24 <= (v25 + 10))
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 728, "ByteStream_NumReadBytesAvail(*pBs) >= 1");
          }

          v19 = *(v26 + (v25 + 9));
          *(a3 + 6) = v25 + 11;
          if (v24 <= (v25 + 11))
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 729, "ByteStream_NumReadBytesAvail(*pBs) >= 1");
          }

          v20 = *(v26 + (v25 + 10));
          *(a3 + 6) = v25 + 12;
          v21 = *(v26 + (v25 + 11));
          if (a2)
          {
            goto LABEL_6;
          }

          return result;
        }

        v27 = "(*pBs).__RWFlag == BYTESTREAM_READ";
LABEL_27:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 719, v27);
      }
    }

    v27 = "ByteStream_NumReadBytesAvail(*pBs) >= 2";
    goto LABEL_27;
  }

  result = sub_10000C240();
  if (result && (sub_10000AF54("status %!", v6, v7, v8, v9, v10, v11, v12, a1), v13 = sub_10000C050(0x54u), result = os_log_type_enabled(v13, OS_LOG_TYPE_ERROR), result))
  {
    sub_10080F604();
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    result = 0;
  }

  else
  {
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
  }

  v19 = 0;
  v20 = 0;
  v21 = 0;
  v22 = 0;
  v23 = 0;
  if (a2)
  {
LABEL_6:
    HIBYTE(v28) = v21;
    BYTE2(v28) = v20;
    BYTE1(v28) = v19;
    LOBYTE(v28) = result;
    return a2(a1, v23, v22, v14, v15, v16, v17, v18, v28);
  }

  return result;
}

void sub_10025EC14(uint64_t a1, void (*a2)(uint64_t, uint64_t, uint64_t), uint64_t *a3)
{
  if (!a1)
  {
    if (*(a3 + 15))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
    }

    else
    {
      v15 = *(a3 + 6);
      v16 = *(a3 + 5);
      if (v16 - v15 > 9)
      {
        v17 = *a3;
        *(a3 + 6) = v15 + 10;
        if (v16 - (v15 + 10) <= 0x9F)
        {
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 751, "ByteStream_NumReadBytesAvail(*pBs) >= (80 * sizeof(uint16_t))");
        }

        v14 = v17 + v15;
        v13 = v17 + (v15 + 10);
        *(a3 + 6) = v15 + 170;
        if (a2)
        {
          goto LABEL_6;
        }

        return;
      }
    }

    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 749, "ByteStream_NumReadBytesAvail(*pBs) >= (10)");
  }

  if (sub_10000C240())
  {
    sub_10000AF54("status %!", v5, v6, v7, v8, v9, v10, v11, a1);
    v12 = sub_10000C050(0x54u);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }

  v13 = 0;
  v14 = 0;
  if (a2)
  {
LABEL_6:
    a2(a1, v14, v13);
  }
}

uint64_t sub_10025ED40(uint64_t a1, __int16 a2)
{
  if (!a1)
  {
    return (a2 & 0x3FFu) <= 0x32 && ((1 << a2) & 0x7000000000001) != 0 || (a2 & 0x3FF) == 0x247;
  }

  result = sub_10000C240();
  if (result)
  {
    sub_10000AF54("status %!, opcode 0x%x, subOpcode %x, myopcode %x", v4, v5, v6, v7, v8, v9, v10, a1);
    v11 = sub_10000C050(0x54u);
    result = os_log_type_enabled(v11, OS_LOG_TYPE_ERROR);
    if (result)
    {
      sub_10080F604();
      return 0;
    }
  }

  return result;
}

void sub_10025EE04(uint64_t a1, void (*a2)(uint64_t, uint64_t), uint64_t *a3)
{
  if (a1)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("status %!", v5, v6, v7, v8, v9, v10, v11, a1);
      v12 = sub_10000C050(0x54u);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_10080F604();
      }
    }

    v13 = 255;
    if (a2)
    {
      goto LABEL_6;
    }

    return;
  }

  if (*(a3 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
    goto LABEL_14;
  }

  v14 = *(a3 + 6);
  if (*(a3 + 5) <= v14)
  {
LABEL_14:
    v16 = "ByteStream_NumReadBytesAvail(*pBs) >= 1";
    goto LABEL_16;
  }

  if (*(a3 + 14) != 1)
  {
    v16 = "(*pBs).__RWFlag == BYTESTREAM_READ";
LABEL_16:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 868, v16);
  }

  v15 = *a3;
  *(a3 + 6) = v14 + 1;
  v13 = *(v15 + v14);
  if (a2)
  {
LABEL_6:
    a2(a1, v13);
  }
}

void sub_10025EF10(uint64_t a1, void (*a2)(uint64_t, uint64_t, uint64_t), uint64_t *a3)
{
  if (!a1)
  {
    if (*(a3 + 15))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
    }

    else
    {
      v15 = *(a3 + 5);
      v16 = *(a3 + 6);
      if (v15 > v16)
      {
        if (*(a3 + 14) == 1)
        {
          v17 = *a3;
          *(a3 + 6) = v16 + 1;
          if (v15 <= v16 + 1)
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 904, "ByteStream_NumReadBytesAvail(*pBs) >= 1");
          }

          v14 = *(v17 + v16);
          *(a3 + 6) = v16 + 2;
          v13 = *(v17 + v16 + 1);
          if (a2)
          {
            goto LABEL_6;
          }

          return;
        }

        v18 = "(*pBs).__RWFlag == BYTESTREAM_READ";
LABEL_17:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 903, v18);
      }
    }

    v18 = "ByteStream_NumReadBytesAvail(*pBs) >= 1";
    goto LABEL_17;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("status %!", v5, v6, v7, v8, v9, v10, v11, a1);
    v12 = sub_10000C050(0x54u);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }

  v13 = 0;
  v14 = 0;
  if (a2)
  {
LABEL_6:
    a2(a1, v14, v13);
  }
}

void sub_10025F04C(uint64_t a1, void (*a2)(uint64_t))
{
  if (a1 && sub_10000C240() && (sub_10000AF54("status %!", v4, v5, v6, v7, v8, v9, v10, a1), v11 = sub_10000C050(0x54u), os_log_type_enabled(v11, OS_LOG_TYPE_ERROR)))
  {
    sub_10080F604();
    if (!a2)
    {
      return;
    }
  }

  else if (!a2)
  {
    return;
  }

  a2(a1);
}

void sub_10025F0D8(uint64_t a1, void (*a2)(uint64_t, uint64_t, void, uint64_t), uint64_t *a3)
{
  if (!a1)
  {
    if (*(a3 + 15))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
    }

    else
    {
      v17 = *(a3 + 5);
      v18 = *(a3 + 6);
      if (v17 > v18)
      {
        if (*(a3 + 14) == 1)
        {
          v19 = *a3;
          *(a3 + 6) = v18 + 1;
          v13 = *(v19 + v18);
          if ((v17 - (v18 + 1)) <= 1)
          {
            *(a3 + 15) = 1;
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
            v14 = 0;
            v21 = 0;
          }

          else
          {
            v20 = v18 + 3;
            v14 = *(v19 + v18 + 1);
            *(a3 + 6) = v20;
            v21 = (v17 - v20);
          }

          if (v21 != v14)
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 941, "length == remaining");
          }

          v15 = *a3 + *(a3 + 6);
          if (a2)
          {
            goto LABEL_6;
          }

          return;
        }

        v22 = "(*pBs).__RWFlag == BYTESTREAM_READ";
LABEL_20:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 938, v22);
      }
    }

    v22 = "ByteStream_NumReadBytesAvail(*pBs) >= 1";
    goto LABEL_20;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("status %!", v5, v6, v7, v8, v9, v10, v11, a1);
    v12 = sub_10000C050(0x54u);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }

  v13 = 0;
  v14 = 0;
  v15 = 0;
  if (a2)
  {
LABEL_6:
    a2(a1, v13, v14, v15);
  }
}

uint64_t sub_10025F270(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, unint64_t, unint64_t, unint64_t, unint64_t, unint64_t, unint64_t, unint64_t, unint64_t, unint64_t, unint64_t, unint64_t, unint64_t, unint64_t, unint64_t, unint64_t, unint64_t, unint64_t, unint64_t, unint64_t, unint64_t, unint64_t, unint64_t, unint64_t, unint64_t, unint64_t), uint64_t *a3)
{
  v3 = a2;
  if (!a1)
  {
    if (*(a3 + 15))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
    }

    else
    {
      v42 = *(a3 + 5);
      v43 = *(a3 + 6);
      if (v42 - v43 > 3)
      {
        if (*(a3 + 14) == 1)
        {
          v44 = *a3;
          v40 = *(*a3 + v43);
          *(a3 + 6) = v43 + 4;
          if (v42 - (v43 + 4) <= 3)
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 1020, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
          }

          v39 = *(v44 + (v43 + 4));
          *(a3 + 6) = v43 + 8;
          if (v42 - (v43 + 8) <= 3)
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 1021, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
          }

          v38 = *(v44 + (v43 + 8));
          *(a3 + 6) = v43 + 12;
          if (v42 - (v43 + 12) <= 3)
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 1022, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
          }

          v64 = *(v44 + (v43 + 12));
          *(a3 + 6) = v43 + 16;
          if (v42 - (v43 + 16) <= 3)
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 1023, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
          }

          v16 = *(v44 + (v43 + 16));
          *(a3 + 6) = v43 + 20;
          if (v42 - (v43 + 20) <= 3)
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 1024, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
          }

          v17 = *(v44 + (v43 + 20));
          *(a3 + 6) = v43 + 24;
          if (v42 - (v43 + 24) <= 3)
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 1025, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
          }

          v18 = *(v44 + (v43 + 24));
          *(a3 + 6) = v43 + 28;
          if (v42 - (v43 + 28) <= 3)
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 1026, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
          }

          v63 = *(v44 + (v43 + 28));
          *(a3 + 6) = v43 + 32;
          if (v42 - (v43 + 32) <= 3)
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 1027, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
          }

          v62 = *(v44 + (v43 + 32));
          *(a3 + 6) = v43 + 36;
          if (v42 - (v43 + 36) <= 3)
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 1028, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
          }

          v45 = *(v44 + (v43 + 36));
          *(a3 + 6) = v43 + 40;
          v46 = v42 - (v43 + 40);
          v81 = v45;
          if ((v46 & 0x1FFFE) != 0)
          {
            if (v46 <= 3)
            {
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 1032, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
            }

            v47 = *(v44 + (v43 + 40));
            *(a3 + 6) = v43 + 44;
            if (v42 - (v43 + 44) <= 3)
            {
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 1033, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
            }

            v48 = *(v44 + (v43 + 44));
            *(a3 + 6) = v43 + 48;
            if (v42 - (v43 + 48) <= 3)
            {
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 1034, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
            }

            v49 = *(v44 + (v43 + 48));
            *(a3 + 6) = v43 + 52;
            if (v42 - (v43 + 52) <= 3)
            {
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 1035, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
            }

            v50 = *(v44 + (v43 + 52));
            *(a3 + 6) = v43 + 56;
            if (v42 - (v43 + 56) <= 3)
            {
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 1036, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
            }

            v51 = *(v44 + (v43 + 56));
            *(a3 + 6) = v43 + 60;
            if (v42 - (v43 + 60) <= 3)
            {
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 1037, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
            }

            v52 = *(v44 + (v43 + 60));
            *(a3 + 6) = v43 + 64;
            if (v42 - (v43 + 64) <= 3)
            {
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 1038, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
            }

            v53 = *(v44 + (v43 + 64));
            *(a3 + 6) = v43 + 68;
            if (v42 - (v43 + 68) <= 3)
            {
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 1039, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
            }

            v54 = *(v44 + (v43 + 68));
            *(a3 + 6) = v43 + 72;
            if (v42 - (v43 + 72) <= 3)
            {
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 1040, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
            }

            v55 = *(v44 + (v43 + 72));
            *(a3 + 6) = v43 + 76;
            if (v42 - (v43 + 76) <= 3)
            {
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 1042, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
            }

            v56 = *(v44 + (v43 + 76));
            *(a3 + 6) = v43 + 80;
            if (v42 - (v43 + 80) <= 3)
            {
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 1043, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
            }

            v57 = *(v44 + (v43 + 80));
            *(a3 + 6) = v43 + 84;
            if (v42 - (v43 + 84) <= 3)
            {
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 1044, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
            }

            v58 = *(v44 + (v43 + 84));
            *(a3 + 6) = v43 + 88;
            if (v42 - (v43 + 88) <= 3)
            {
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 1045, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
            }

            v59 = *(v44 + (v43 + 88));
            *(a3 + 6) = v43 + 92;
            if (v42 - (v43 + 92) <= 3)
            {
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 1046, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
            }

            v60 = *(v44 + (v43 + 92));
            *(a3 + 6) = v43 + 96;
            if (v42 - (v43 + 96) <= 3)
            {
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 1047, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
            }

            HIDWORD(v80) = *(v44 + (v43 + 96));
            *(a3 + 6) = v43 + 100;
            if (v42 - (v43 + 100) <= 3)
            {
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 1048, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
            }

            LODWORD(v80) = *(v44 + (v43 + 100));
            *(a3 + 6) = v43 + 104;
            if (v42 - (v43 + 104) <= 3)
            {
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 1049, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
            }

            HIDWORD(v79) = *(v44 + (v43 + 104));
            *(a3 + 6) = v43 + 108;
            if (v42 - (v43 + 108) <= 3)
            {
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 1050, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
            }

            LODWORD(v79) = *(v44 + (v43 + 108));
            *(a3 + 6) = v43 + 112;
            if (v42 - (v43 + 112) <= 3)
            {
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 1051, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
            }

            HIDWORD(v78) = *(v44 + (v43 + 112));
            *(a3 + 6) = v43 + 116;
            if (v42 - (v43 + 116) <= 3)
            {
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 1052, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
            }

            LODWORD(v78) = *(v44 + (v43 + 116));
            *(a3 + 6) = v43 + 120;
            if (v42 - (v43 + 120) <= 3)
            {
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 1053, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
            }

            HIDWORD(v77) = *(v44 + (v43 + 120));
            *(a3 + 6) = v43 + 124;
            if (v42 - (v43 + 124) <= 3)
            {
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 1054, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
            }

            LODWORD(v77) = *(v44 + (v43 + 124));
            *(a3 + 6) = v43 + 128;
            if (v42 - (v43 + 128) <= 3)
            {
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 1055, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
            }

            HIDWORD(v76) = *(v44 + (v43 + 128));
            *(a3 + 6) = v43 + 132;
            if (v42 - (v43 + 132) <= 3)
            {
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 1056, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
            }

            LODWORD(v76) = *(v44 + (v43 + 132));
            *(a3 + 6) = v43 + 136;
            if (v42 - (v43 + 136) <= 3)
            {
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 1057, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
            }

            HIDWORD(v75) = *(v44 + (v43 + 136));
            *(a3 + 6) = v43 + 140;
            if (v42 - (v43 + 140) <= 3)
            {
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 1058, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
            }

            LODWORD(v75) = *(v44 + (v43 + 140));
            *(a3 + 6) = v43 + 144;
            if (v42 - (v43 + 144) <= 3)
            {
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 1059, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
            }

            HIDWORD(v74) = *(v44 + (v43 + 144));
            *(a3 + 6) = v43 + 148;
            if (v42 - (v43 + 148) <= 3)
            {
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 1060, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
            }

            LODWORD(v74) = *(v44 + (v43 + 148));
            *(a3 + 6) = v43 + 152;
            if (v42 - (v43 + 152) <= 3)
            {
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 1061, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
            }

            v73 = *(v44 + (v43 + 152));
            *(a3 + 6) = v43 + 156;
            if (v42 - (v43 + 156) <= 3)
            {
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 1062, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
            }

            v72 = __PAIR64__(v59, v60);
            v21 = *(v44 + (v43 + 156));
            *(a3 + 6) = v43 + 160;
            if (v42 - (v43 + 160) <= 3)
            {
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 1063, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
            }

            HIDWORD(v71) = v58;
            result = *(v44 + (v43 + 160));
            *(a3 + 6) = v43 + 164;
            if (v42 - (v43 + 164) <= 3)
            {
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 1064, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
            }

            v22 = *(v44 + (v43 + 164));
            *(a3 + 6) = v43 + 168;
            if (v42 - (v43 + 168) <= 3)
            {
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 1065, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
            }

            HIDWORD(v70) = v57;
            LODWORD(v71) = v56;
            v23 = *(v44 + (v43 + 168));
            *(a3 + 6) = v43 + 172;
            if (v42 - (v43 + 172) <= 1)
            {
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 1066, "ByteStream_NumReadBytesAvail(*pBs) >= 2");
            }

            v24 = *(v44 + (v43 + 172));
            *(a3 + 6) = v43 + 174;
            if (v42 - (v43 + 174) <= 1)
            {
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 1067, "ByteStream_NumReadBytesAvail(*pBs) >= 2");
            }

            HIDWORD(v69) = v55;
            LODWORD(v70) = v54;
            v25 = *(v44 + (v43 + 174));
            *(a3 + 6) = v43 + 176;
            if (v42 - (v43 + 176) <= 1)
            {
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 1068, "ByteStream_NumReadBytesAvail(*pBs) >= 2");
            }

            v26 = *(v44 + (v43 + 176));
            *(a3 + 6) = v43 + 178;
            if (v42 - (v43 + 178) <= 1)
            {
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 1069, "ByteStream_NumReadBytesAvail(*pBs) >= 2");
            }

            HIDWORD(v68) = v53;
            LODWORD(v69) = v52;
            v27 = *(v44 + (v43 + 178));
            *(a3 + 6) = v43 + 180;
            if (v42 - (v43 + 180) <= 3)
            {
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 1070, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
            }

            LODWORD(v68) = v51;
            v28 = *(v44 + (v43 + 180));
            *(a3 + 6) = v43 + 184;
            if (v42 - (v43 + 184) <= 3)
            {
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 1071, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
            }

            v29 = *(v44 + (v43 + 184));
            *(a3 + 6) = v43 + 188;
            if (v42 - (v43 + 188) <= 1)
            {
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 1072, "ByteStream_NumReadBytesAvail(*pBs) >= 2");
            }

            v67 = __PAIR64__(v49, v50);
            v30 = *(v44 + (v43 + 188));
            *(a3 + 6) = v43 + 190;
            if (v42 - (v43 + 190) <= 1)
            {
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 1073, "ByteStream_NumReadBytesAvail(*pBs) >= 2");
            }

            v31 = *(v44 + (v43 + 190));
            *(a3 + 6) = v43 + 192;
            if (v42 - (v43 + 192) <= 1)
            {
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 1074, "ByteStream_NumReadBytesAvail(*pBs) >= 2");
            }

            v65 = v48;
            v66 = v47;
            v32 = *(v44 + (v43 + 192));
            *(a3 + 6) = v43 + 194;
            if (v42 - (v43 + 194) <= 1)
            {
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 1075, "ByteStream_NumReadBytesAvail(*pBs) >= 2");
            }

            v33 = *(v44 + (v43 + 194));
            *(a3 + 6) = v43 + 196;
            if (v42 - (v43 + 196) <= 3)
            {
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 1076, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
            }

            v34 = *(v44 + (v43 + 196));
            *(a3 + 6) = v43 + 200;
            if (v42 - (v43 + 200) <= 3)
            {
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 1077, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
            }

            v35 = *(v44 + (v43 + 200));
            *(a3 + 6) = v43 + 204;
            if (v42 - (v43 + 204) <= 3)
            {
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 1078, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
            }

            v36 = *(v44 + (v43 + 204));
            *(a3 + 6) = v43 + 208;
            if (v42 - (v43 + 208) <= 3)
            {
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 1079, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
            }

            v37 = *(v44 + (v43 + 208));
            *(a3 + 6) = v43 + 212;
          }

          else
          {
            v66 = 0;
            v65 = 0;
            v67 = 0;
            v68 = 0;
            v69 = 0;
            v70 = 0;
            v71 = 0;
            v72 = 0;
            v80 = 0;
            v79 = 0;
            v78 = 0;
            v77 = 0;
            v76 = 0;
            v75 = 0;
            v74 = 0;
            v73 = 0;
            v21 = 0;
            result = 0;
            v22 = 0;
            v23 = 0;
            v24 = 0;
            v25 = 0;
            v26 = 0;
            v27 = 0;
            v28 = 0;
            v29 = 0;
            v30 = 0;
            v31 = 0;
            v32 = 0;
            v33 = 0;
            v34 = 0;
            v35 = 0;
            v36 = 0;
            v37 = 0;
          }

          v19 = v63;
          v15 = v64;
          v20 = v62;
          if (v3)
          {
            return v3(a1, v40, v39, v38, v15, v16, v17, v18, __PAIR64__(v20, v19), __PAIR64__(v66, v81), __PAIR64__(HIDWORD(v67), v65), __PAIR64__(v68, v67), __PAIR64__(HIDWORD(v68), v69), __PAIR64__(HIDWORD(v69), v70), __PAIR64__(HIDWORD(v70), v71), __PAIR64__(HIDWORD(v72), HIDWORD(v71)), __PAIR64__(HIDWORD(v80), v72), __PAIR64__(HIDWORD(v79), v80), __PAIR64__(HIDWORD(v78), v79), __PAIR64__(HIDWORD(v77), v78), __PAIR64__(HIDWORD(v76), v77), __PAIR64__(HIDWORD(v75), v76), __PAIR64__(HIDWORD(v74), v75), __PAIR64__(v73, v74), __PAIR64__(result, v21), __PAIR64__(v23, v22), __PAIR64__(v25, v24), __PAIR64__(v27, v26), __PAIR64__(v29, v28), __PAIR64__(v31, v30), __PAIR64__(v33, v32), __PAIR64__(v35, v34), __PAIR64__(v37, v36));
          }

          return result;
        }

        v61 = "(*pBs).__RWFlag == BYTESTREAM_READ";
LABEL_76:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 1019, v61);
      }
    }

    v61 = "ByteStream_NumReadBytesAvail(*pBs) >= 4";
    goto LABEL_76;
  }

  result = sub_10000C240();
  if (result && (sub_10000AF54("EnhancedProfilingStats VSC failed with status %!", v7, v8, v9, v10, v11, v12, v13, a1), v14 = sub_10000C050(0x54u), result = os_log_type_enabled(v14, OS_LOG_TYPE_ERROR), result))
  {
    sub_10080F604();
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v81 = 0;
    v66 = 0;
    v65 = 0;
    v67 = 0;
    v68 = 0;
    v69 = 0;
    v70 = 0;
    v71 = 0;
    v72 = 0;
    v80 = 0;
    v79 = 0;
    v78 = 0;
    v77 = 0;
    v76 = 0;
    v75 = 0;
    v74 = 0;
    v73 = 0;
    v21 = 0;
    result = 0;
  }

  else
  {
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v81 = 0;
    v66 = 0;
    v65 = 0;
    v67 = 0;
    v68 = 0;
    v69 = 0;
    v70 = 0;
    v71 = 0;
    v72 = 0;
    v80 = 0;
    v79 = 0;
    v78 = 0;
    v77 = 0;
    v76 = 0;
    v75 = 0;
    v74 = 0;
    v73 = 0;
    v21 = 0;
  }

  v22 = 0;
  v23 = 0;
  v24 = 0;
  v25 = 0;
  v26 = 0;
  v27 = 0;
  v28 = 0;
  v29 = 0;
  v30 = 0;
  v31 = 0;
  v32 = 0;
  v33 = 0;
  v34 = 0;
  v35 = 0;
  v36 = 0;
  v37 = 0;
  v38 = 0;
  v39 = 0;
  v40 = 0;
  v3 = a2;
  if (a2)
  {
    return v3(a1, v40, v39, v38, v15, v16, v17, v18, __PAIR64__(v20, v19), __PAIR64__(v66, v81), __PAIR64__(HIDWORD(v67), v65), __PAIR64__(v68, v67), __PAIR64__(HIDWORD(v68), v69), __PAIR64__(HIDWORD(v69), v70), __PAIR64__(HIDWORD(v70), v71), __PAIR64__(HIDWORD(v72), HIDWORD(v71)), __PAIR64__(HIDWORD(v80), v72), __PAIR64__(HIDWORD(v79), v80), __PAIR64__(HIDWORD(v78), v79), __PAIR64__(HIDWORD(v77), v78), __PAIR64__(HIDWORD(v76), v77), __PAIR64__(HIDWORD(v75), v76), __PAIR64__(HIDWORD(v74), v75), __PAIR64__(v73, v74), __PAIR64__(result, v21), __PAIR64__(v23, v22), __PAIR64__(v25, v24), __PAIR64__(v27, v26), __PAIR64__(v29, v28), __PAIR64__(v31, v30), __PAIR64__(v33, v32), __PAIR64__(v35, v34), __PAIR64__(v37, v36));
  }

  return result;
}

void sub_100260224(uint64_t a1, void (*a2)(uint64_t, uint64_t, void, void), uint64_t *a3)
{
  if (!a1)
  {
    if (*(a3 + 15))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
    }

    else
    {
      v15 = *(a3 + 5);
      v16 = *(a3 + 6);
      if ((v15 - v16) > 3)
      {
        if (*(a3 + 14) == 1)
        {
          v17 = *a3;
          v14 = *(*a3 + v16);
          *(a3 + 6) = v16 + 4;
          if (v15 <= (v16 + 4))
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 1099, "ByteStream_NumReadBytesAvail(*pBs) >= 1");
          }

          *(a3 + 6) = v16 + 5;
          v13 = *(v17 + (v16 + 4));
          if (a2)
          {
            goto LABEL_6;
          }

          return;
        }

        v18 = "(*pBs).__RWFlag == BYTESTREAM_READ";
LABEL_17:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 1098, v18);
      }
    }

    v18 = "ByteStream_NumReadBytesAvail(*pBs) >= 4";
    goto LABEL_17;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("status %!", v5, v6, v7, v8, v9, v10, v11, a1);
    v12 = sub_10000C050(0x54u);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }

  v13 = 0;
  v14 = 0;
  if (a2)
  {
LABEL_6:
    a2(a1, v14, v13, 0);
  }
}

void sub_100260370(uint64_t a1, void (*a2)(uint64_t, _OWORD *), uint64_t *a3)
{
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v25 = 0u;
  if (a1)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("status %!", v5, v6, v7, v8, v9, v10, v11, a1);
      v12 = sub_10000C050(0x54u);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_10080F604();
      }
    }

    goto LABEL_17;
  }

  if (*(a3 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
LABEL_27:
    v23 = "ByteStream_NumReadBytesAvail(*pBs) >= 1";
LABEL_28:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 1119, v23);
  }

  v13 = *(a3 + 5);
  v14 = *(a3 + 6);
  v15 = v13 - 1;
  v16 = &v25 + 1;
  v17 = 10;
  do
  {
    if (v13 <= v14)
    {
      goto LABEL_27;
    }

    if (*(a3 + 14) != 1)
    {
      v23 = "(*pBs).__RWFlag == BYTESTREAM_READ";
      goto LABEL_28;
    }

    v18 = *a3;
    *(a3 + 6) = v14 + 1;
    *(v16 - 2) = *(v18 + v14);
    if (v13 <= (v14 + 1))
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 1120, "ByteStream_NumReadBytesAvail(*pBs) >= 1");
    }

    v19 = v14 + 2;
    *(a3 + 6) = v19;
    *(v16 - 1) = *(v18 + v14 + 1);
    if (v15 <= v19)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 1121, "ByteStream_NumReadBytesAvail(*pBs) >= 2");
    }

    *v16 = *(v18 + v19);
    v16 += 2;
    v14 += 4;
    *(a3 + 6) = v14;
    --v17;
  }

  while (v17);
  v20 = &v27 + 5;
  v21 = 10;
  do
  {
    if (v13 <= v14)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 1125, "ByteStream_NumReadBytesAvail(*pBs) >= 1");
    }

    *(a3 + 6) = v14 + 1;
    *(v20 - 2) = *(v18 + v14);
    if (v13 <= (v14 + 1))
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 1126, "ByteStream_NumReadBytesAvail(*pBs) >= 1");
    }

    v22 = v14 + 2;
    *(a3 + 6) = v22;
    *(v20 - 1) = *(v18 + v14 + 1);
    if (v15 <= v22)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 1127, "ByteStream_NumReadBytesAvail(*pBs) >= 2");
    }

    *v20 = *(v18 + v22);
    v20 += 2;
    v14 += 4;
    *(a3 + 6) = v14;
    --v21;
  }

  while (v21);
LABEL_17:
  if (a2)
  {
    v24[2] = v27;
    v24[3] = v28;
    v24[4] = v29;
    v24[0] = v25;
    v24[1] = v26;
    a2(a1, v24);
  }
}

void sub_1002605D4(uint64_t a1, void (*a2)(uint64_t, uint64_t), uint64_t *a3)
{
  if (a1)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("status %!", v5, v6, v7, v8, v9, v10, v11, a1);
      v12 = sub_10000C050(0x54u);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_10080F604();
      }
    }

    v13 = 0;
    if (a2)
    {
      goto LABEL_6;
    }

    return;
  }

  if (*(a3 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
    goto LABEL_14;
  }

  v14 = *(a3 + 6);
  if (*(a3 + 5) <= v14)
  {
LABEL_14:
    v16 = "ByteStream_NumReadBytesAvail(*pBs) >= 1";
    goto LABEL_16;
  }

  if (*(a3 + 14) != 1)
  {
    v16 = "(*pBs).__RWFlag == BYTESTREAM_READ";
LABEL_16:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 1144, v16);
  }

  v15 = *a3;
  *(a3 + 6) = v14 + 1;
  v13 = *(v15 + v14);
  if (a2)
  {
LABEL_6:
    a2(a1, v13);
  }
}

void sub_1002606E0(uint64_t a1, uint64_t (*a2)(void, void))
{
  if (a1)
  {
    v4 = off_100B5FE10;
    if (sub_10000C240() && (sub_10000AF54("status %!, hlCb 0x%x, pCallbackFunc %x", v5, v6, v7, v8, v9, v10, v11, a1), v12 = sub_10000C050(0x54u), os_log_type_enabled(v12, OS_LOG_TYPE_ERROR)))
    {
      sub_10080F604();
      if (!v4)
      {
        return;
      }
    }

    else if (!v4)
    {
      return;
    }

    v4(a1, 0);
    a2 = 0;
  }

  off_100B5FE10 = a2;
}

uint64_t sub_100260788(int a1, int a2, uint64_t (*a3)())
{
  v15 = 0;
  v16 = 0;
  result = sub_10001FFD8(&v15);
  if (!result)
  {
    if (HIBYTE(v16))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
    }

    else if (WORD1(v16) - WORD2(v16) > 3)
    {
      if (BYTE6(v16) == 2)
      {
        *(v15 + WORD2(v16)) = 1;
        *(v15 + WORD2(v16) + 1) = 0;
        *(v15 + WORD2(v16) + 3) = 0;
        v10 = WORD2(v16) + 4;
        WORD2(v16) += 4;
        if (HIBYTE(v16))
        {
          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
        }

        else if (WORD1(v16) - v10 > 3)
        {
          if (BYTE6(v16) == 2)
          {
            *(v15 + v10) = a1;
            *(v15 + WORD2(v16) + 1) = BYTE1(a1);
            *(v15 + WORD2(v16) + 2) = BYTE2(a1);
            *(v15 + WORD2(v16) + 3) = HIBYTE(a1);
            v11 = WORD2(v16) + 4;
            WORD2(v16) += 4;
            if (HIBYTE(v16))
            {
              sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
            }

            else if (WORD1(v16) - v11 > 3)
            {
              if (BYTE6(v16) == 2)
              {
                *(v15 + v11) = a2;
                *(v15 + WORD2(v16) + 1) = BYTE1(a2);
                *(v15 + WORD2(v16) + 2) = BYTE2(a2);
                *(v15 + WORD2(v16) + 3) = HIBYTE(a2);
                WORD2(v16) += 4;
                return sub_100020078(226, v15, BYTE4(v16), a3, sub_100022AD0, v7, v8, v9);
              }

              v14 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_24:
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 2764, v14);
            }

            v14 = "ByteStream_NumReadBytesAvail(bs) >= 4";
            goto LABEL_24;
          }

          v13 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_20:
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 2763, v13);
        }

        v13 = "ByteStream_NumReadBytesAvail(bs) >= 4";
        goto LABEL_20;
      }

      v12 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_16:
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 2762, v12);
    }

    v12 = "ByteStream_NumReadBytesAvail(bs) >= 4";
    goto LABEL_16;
  }

  return result;
}

uint64_t sub_100260A20(char a1, _BYTE *a2, uint64_t (*a3)())
{
  v20 = 0;
  v21 = 0;
  result = sub_10001FFD8(&v20);
  if (!result)
  {
    if (HIBYTE(v21))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
    }

    else if (WORD1(v21) - WORD2(v21) > 3)
    {
      if (BYTE6(v21) == 2)
      {
        *(v20 + WORD2(v21)) = 7;
        *(v20 + WORD2(v21) + 1) = 0;
        *(v20 + WORD2(v21) + 3) = 0;
        v10 = WORD2(v21);
        v11 = WORD2(v21) + 4;
        WORD2(v21) += 4;
        if (HIBYTE(v21))
        {
          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
        }

        else if (WORD1(v21) > v11)
        {
          if (BYTE6(v21) == 2)
          {
            WORD2(v21) = v10 + 5;
            *(v20 + v11) = a1;
            if (HIBYTE(v21))
            {
              sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
            }

            else if (WORD1(v21) - WORD2(v21) > 2)
            {
              if (BYTE6(v21) == 2)
              {
                v12 = v20 + WORD2(v21);
                *(v12 + 2) = 0;
                *v12 = 0;
                v13 = WORD2(v21) + 3;
                WORD2(v21) += 3;
                if (HIBYTE(v21))
                {
                  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                }

                else if (WORD1(v21) - v13 > 1)
                {
                  if (BYTE6(v21) == 2)
                  {
                    *(v20 + v13) = *a2;
                    *(v20 + WORD2(v21) + 1) = a2[1];
                    v14 = WORD2(v21) + 2;
                    WORD2(v21) += 2;
                    if (HIBYTE(v21))
                    {
                      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                    }

                    else if (WORD1(v21) - v14 > 1)
                    {
                      if (BYTE6(v21) == 2)
                      {
                        *(v20 + v14) = 0;
                        WORD2(v21) += 2;
                        return sub_100020078(226, v20, BYTE4(v21), a3, sub_100022AD0, v7, v8, v9);
                      }

                      v19 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_38:
                      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 2782, v19);
                    }

                    v19 = "ByteStream_NumReadBytesAvail(bs) >= (2)";
                    goto LABEL_38;
                  }

                  v18 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_34:
                  sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 2781, v18);
                }

                v18 = "ByteStream_NumReadBytesAvail(bs) >= 2";
                goto LABEL_34;
              }

              v17 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_30:
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 2780, v17);
            }

            v17 = "ByteStream_NumReadBytesAvail(bs) >= (3)";
            goto LABEL_30;
          }

          v16 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_26:
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 2779, v16);
        }

        v16 = "ByteStream_NumReadBytesAvail(bs) >= 1";
        goto LABEL_26;
      }

      v15 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_22:
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 2778, v15);
    }

    v15 = "ByteStream_NumReadBytesAvail(bs) >= 4";
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_100260D58(char a1, uint64_t (*a2)())
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
        *(v12 + WORD2(v13)) = 13;
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
            return sub_100020078(226, v12, BYTE4(v13), a2, sub_10025D308, v5, v6, v7);
          }

          v11 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_17:
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 2798, v11);
        }

        v11 = "ByteStream_NumReadBytesAvail(bs) >= 1";
        goto LABEL_17;
      }

      v10 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_13:
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 2797, v10);
    }

    v10 = "ByteStream_NumReadBytesAvail(bs) >= 4";
    goto LABEL_13;
  }

  return result;
}

uint64_t sub_100260EE4(char a1, _BYTE *a2, uint64_t (*a3)())
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

    else if (WORD1(v17) - WORD2(v17) > 3)
    {
      if (BYTE6(v17) == 2)
      {
        *(v16 + WORD2(v17)) = 18;
        *(v16 + WORD2(v17) + 1) = 0;
        *(v16 + WORD2(v17) + 3) = 0;
        v10 = WORD2(v17) + 4;
        WORD2(v17) += 4;
        if (HIBYTE(v17))
        {
          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
        }

        else if (WORD1(v17) - v10 > 1)
        {
          if (BYTE6(v17) == 2)
          {
            *(v16 + v10) = *a2;
            *(v16 + WORD2(v17) + 1) = a2[1];
            v11 = WORD2(v17);
            v12 = WORD2(v17) + 2;
            WORD2(v17) += 2;
            if (HIBYTE(v17))
            {
              sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
            }

            else if (WORD1(v17) > v12)
            {
              if (BYTE6(v17) == 2)
              {
                WORD2(v17) = v11 + 3;
                *(v16 + v12) = a1;
                return sub_100020078(226, v16, BYTE4(v17), a3, sub_100022AD0, v7, v8, v9);
              }

              v15 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_24:
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 2860, v15);
            }

            v15 = "ByteStream_NumReadBytesAvail(bs) >= 1";
            goto LABEL_24;
          }

          v14 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_20:
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 2859, v14);
        }

        v14 = "ByteStream_NumReadBytesAvail(bs) >= 2";
        goto LABEL_20;
      }

      v13 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_16:
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 2858, v13);
    }

    v13 = "ByteStream_NumReadBytesAvail(bs) >= 4";
    goto LABEL_16;
  }

  return result;
}

uint64_t sub_100261114(_BYTE *a1, uint64_t (*a2)())
{
  v24 = 0;
  v25 = 0;
  result = sub_10001FFD8(&v24);
  if (!result)
  {
    if (HIBYTE(v25))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
    }

    else if (WORD1(v25) - WORD2(v25) > 3)
    {
      if (BYTE6(v25) == 2)
      {
        *(v24 + WORD2(v25)) = 21;
        *(v24 + WORD2(v25) + 1) = 0;
        *(v24 + WORD2(v25) + 3) = 0;
        v8 = WORD2(v25) + 4;
        WORD2(v25) += 4;
        if (HIBYTE(v25))
        {
          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
        }

        else if (WORD1(v25) - v8 > 1)
        {
          if (BYTE6(v25) == 2)
          {
            *(v24 + v8) = *a1;
            *(v24 + WORD2(v25) + 1) = a1[1];
            v9 = WORD2(v25);
            v10 = WORD2(v25) + 2;
            WORD2(v25) += 2;
            if (HIBYTE(v25))
            {
              sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
            }

            else if (WORD1(v25) > v10)
            {
              if (BYTE6(v25) == 2)
              {
                v11 = a1[2];
                WORD2(v25) = v9 + 3;
                *(v24 + v10) = v11;
                if (HIBYTE(v25))
                {
                  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                }

                else
                {
                  v12 = WORD2(v25);
                  if (WORD1(v25) > WORD2(v25))
                  {
                    if (BYTE6(v25) == 2)
                    {
                      v13 = a1[3];
                      ++WORD2(v25);
                      *(v24 + v12) = v13;
                      if (HIBYTE(v25))
                      {
                        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                      }

                      else
                      {
                        v14 = WORD2(v25);
                        if (WORD1(v25) > WORD2(v25))
                        {
                          if (BYTE6(v25) == 2)
                          {
                            v15 = a1[4];
                            ++WORD2(v25);
                            *(v24 + v14) = v15;
                            if (HIBYTE(v25))
                            {
                              sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                            }

                            else
                            {
                              v16 = WORD2(v25);
                              if (WORD1(v25) > WORD2(v25))
                              {
                                if (BYTE6(v25) == 2)
                                {
                                  v17 = a1[5];
                                  ++WORD2(v25);
                                  *(v24 + v16) = v17;
                                  return sub_100020078(226, v24, BYTE4(v25), a2, sub_100083FE4, v5, v6, v7);
                                }

                                v23 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_45:
                                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 2882, v23);
                              }
                            }

                            v23 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                            goto LABEL_45;
                          }

                          v22 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_41:
                          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 2881, v22);
                        }
                      }

                      v22 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                      goto LABEL_41;
                    }

                    v21 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_37:
                    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 2880, v21);
                  }
                }

                v21 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                goto LABEL_37;
              }

              v20 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_33:
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 2879, v20);
            }

            v20 = "ByteStream_NumReadBytesAvail(bs) >= 1";
            goto LABEL_33;
          }

          v19 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_29:
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 2878, v19);
        }

        v19 = "ByteStream_NumReadBytesAvail(bs) >= 2";
        goto LABEL_29;
      }

      v18 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_25:
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 2877, v18);
    }

    v18 = "ByteStream_NumReadBytesAvail(bs) >= 4";
    goto LABEL_25;
  }

  return result;
}

uint64_t sub_1002614B0(char a1, char a2, char a3, uint64_t (*a4)())
{
  v21 = 0;
  v22 = 0;
  result = sub_10001FFD8(&v21);
  if (!result)
  {
    if (HIBYTE(v22))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
    }

    else
    {
      v12 = WORD2(v22);
      if (WORD1(v22) > WORD2(v22))
      {
        if (BYTE6(v22) == 2)
        {
          ++WORD2(v22);
          *(v21 + v12) = a1;
          if (HIBYTE(v22))
          {
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
          }

          else if (WORD1(v22) - WORD2(v22) > 2)
          {
            if (BYTE6(v22) == 2)
            {
              v13 = v21 + WORD2(v22);
              *(v13 + 2) = 0;
              *v13 = 0;
              v14 = WORD2(v22);
              v15 = WORD2(v22) + 3;
              WORD2(v22) += 3;
              if (HIBYTE(v22))
              {
                sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
              }

              else if (WORD1(v22) > v15)
              {
                if (BYTE6(v22) == 2)
                {
                  WORD2(v22) = v14 + 4;
                  *(v21 + v15) = a2;
                  if (HIBYTE(v22))
                  {
                    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                  }

                  else
                  {
                    v16 = WORD2(v22);
                    if (WORD1(v22) > WORD2(v22))
                    {
                      if (BYTE6(v22) == 2)
                      {
                        ++WORD2(v22);
                        *(v21 + v16) = a3;
                        return sub_100020078(383, v21, BYTE4(v22), a4, sub_100022AD0, v9, v10, v11);
                      }

                      v20 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_31:
                      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 3104, v20);
                    }
                  }

                  v20 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                  goto LABEL_31;
                }

                v19 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_27:
                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 3103, v19);
              }

              v19 = "ByteStream_NumReadBytesAvail(bs) >= 1";
              goto LABEL_27;
            }

            v18 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_23:
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 3102, v18);
          }

          v18 = "ByteStream_NumReadBytesAvail(bs) >= (3)";
          goto LABEL_23;
        }

        v17 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_19:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 3101, v17);
      }
    }

    v17 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_19;
  }

  return result;
}

uint64_t sub_100261710(_WORD *a1, const void *a2, int a3, uint64_t (*a4)())
{
  v24 = 0;
  v25 = 0;
  result = sub_10001FFD8(&v24);
  if (!result)
  {
    if (HIBYTE(v25))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
    }

    else
    {
      v9 = WORD2(v25);
      if (WORD1(v25) > WORD2(v25))
      {
        if (BYTE6(v25) == 2)
        {
          ++WORD2(v25);
          *(v24 + v9) = 11;
          if (HIBYTE(v25))
          {
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
          }

          else
          {
            v10 = WORD2(v25);
            if (WORD1(v25) > WORD2(v25))
            {
              if (BYTE6(v25) == 2)
              {
                ++WORD2(v25);
                *(v24 + v10) = 1;
                if (HIBYTE(v25))
                {
                  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                }

                else if (WORD1(v25) - WORD2(v25) > 1)
                {
                  if (BYTE6(v25) == 2)
                  {
                    *(v24 + WORD2(v25)) = *a1;
                    v11 = WORD2(v25);
                    v12 = WORD2(v25) + 2;
                    WORD2(v25) += 2;
                    if (HIBYTE(v25))
                    {
                      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                    }

                    else if (WORD1(v25) > v12)
                    {
                      if (BYTE6(v25) == 2)
                      {
                        WORD2(v25) = v11 + 3;
                        *(v24 + v12) = 5;
                        v13 = v24;
                        v14 = WORD2(v25);
                        if (HIBYTE(v25))
                        {
                          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                          v15 = 0;
                        }

                        else
                        {
                          v15 = WORD1(v25) - WORD2(v25);
                        }

                        if (v15 < a3)
                        {
                          v23 = "ByteStream_NumReadBytesAvail(bs) >= (rssiLen)";
                        }

                        else
                        {
                          if (BYTE6(v25) == 2)
                          {
                            memmove((v13 + v14), a2, a3);
                            WORD2(v25) += a3;
                            return sub_100020078(233, v24, BYTE4(v25), a4, sub_100022AD0, v16, v17, v18);
                          }

                          v23 = "(bs).__RWFlag == BYTESTREAM_WRITE";
                        }

                        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 3471, v23);
                      }

                      v22 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_36:
                      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 3470, v22);
                    }

                    v22 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                    goto LABEL_36;
                  }

                  v21 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_32:
                  sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 3469, v21);
                }

                v21 = "ByteStream_NumReadBytesAvail(bs) >= 2";
                goto LABEL_32;
              }

              v20 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_28:
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 3468, v20);
            }
          }

          v20 = "ByteStream_NumReadBytesAvail(bs) >= 1";
          goto LABEL_28;
        }

        v19 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_24:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 3467, v19);
      }
    }

    v19 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_24;
  }

  return result;
}

uint64_t sub_100261A28(_WORD *a1, uint64_t a2, uint64_t (*a3)())
{
  v13 = 0;
  v14 = 0;
  result = sub_10001FFD8(&v13);
  if (!result)
  {
    if (HIBYTE(v14))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
    }

    else if (WORD1(v14) - WORD2(v14) > 1)
    {
      if (BYTE6(v14) == 2)
      {
        *(v13 + WORD2(v14)) = *a1;
        v7 = WORD2(v14) + 2;
        WORD2(v14) += 2;
        if (HIBYTE(v14))
        {
          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
        }

        else if (WORD1(v14) - v7 > 5)
        {
          if (BYTE6(v14) == 2)
          {
            sub_1000075EC((v13 + v7), a2, 6uLL);
            WORD2(v14) += 6;
            return sub_100020078(386, v13, BYTE4(v14), a3, sub_100022AD0, v8, v9, v10);
          }

          v12 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_17:
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 3714, v12);
        }

        v12 = "ByteStream_NumReadBytesAvail(bs) >= OI_BD_ADDR_BYTE_SIZE";
        goto LABEL_17;
      }

      v11 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_13:
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 3713, v11);
    }

    v11 = "ByteStream_NumReadBytesAvail(bs) >= 2";
    goto LABEL_13;
  }

  return result;
}

uint64_t sub_100261BB4(uint64_t (*a1)())
{
  v10 = 0;
  v11 = 0;
  result = sub_10001FFD8(&v10);
  if (result)
  {
    return result;
  }

  if (HIBYTE(v11))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
    goto LABEL_13;
  }

  v6 = WORD2(v11);
  if (WORD1(v11) <= WORD2(v11))
  {
LABEL_13:
    v8 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_15;
  }

  if (BYTE6(v11) != 2)
  {
    v8 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_15:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 4127, v8);
  }

  ++WORD2(v11);
  *(v10 + v6) = -16;
  if (HIBYTE(v11))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
    goto LABEL_17;
  }

  v7 = WORD2(v11);
  if (WORD1(v11) <= WORD2(v11))
  {
LABEL_17:
    v9 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_19;
  }

  if (BYTE6(v11) != 2)
  {
    v9 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_19:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 4128, v9);
  }

  ++WORD2(v11);
  *(v10 + v7) = 3;
  if (off_100B5FE10)
  {
    sub_1000D660C();
  }

  return sub_100020078(0, v10, BYTE4(v11), a1, sub_1002606E0, v3, v4, v5);
}

uint64_t sub_100261D18(char a1, uint64_t (*a2)())
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
        *(v12 + WORD2(v13)) = 0;
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
            return sub_100020078(383, v12, BYTE4(v13), a2, sub_100022AD0, v5, v6, v7);
          }

          v11 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_17:
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 4145, v11);
        }

        v11 = "ByteStream_NumReadBytesAvail(bs) >= 1";
        goto LABEL_17;
      }

      v10 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_13:
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 4144, v10);
    }

    v10 = "ByteStream_NumReadBytesAvail(bs) >= (4)";
    goto LABEL_13;
  }

  return result;
}

uint64_t sub_100261E70(char a1, _WORD *a2, uint64_t (*a3)())
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
      v7 = WORD2(v17);
      if (WORD1(v17) > WORD2(v17))
      {
        if (BYTE6(v17) == 2)
        {
          ++WORD2(v17);
          *(v16 + v7) = a1;
          if (HIBYTE(v17))
          {
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
          }

          else if (WORD1(v17) - WORD2(v17) > 1)
          {
            if (BYTE6(v17) == 2)
            {
              *(v16 + WORD2(v17)) = 2;
              WORD2(v17) += 2;
              if (sub_100084230() <= 8)
              {
                v12 = 126;
                v11 = BYTE4(v17);
                return sub_100020078(v12, v16, v11, a3, sub_100022AD0, v8, v9, v10);
              }

              if (HIBYTE(v17))
              {
                sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
              }

              else if (WORD1(v17) - WORD2(v17) > 1)
              {
                if (BYTE6(v17) == 2)
                {
                  *(v16 + WORD2(v17)) = *a2;
                  v11 = BYTE4(v17) + 2;
                  WORD2(v17) += 2;
                  v12 = 258;
                  return sub_100020078(v12, v16, v11, a3, sub_100022AD0, v8, v9, v10);
                }

                v15 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_27:
                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 4163, v15);
              }

              v15 = "ByteStream_NumReadBytesAvail(bs) >= 2";
              goto LABEL_27;
            }

            v14 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_23:
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 4160, v14);
          }

          v14 = "ByteStream_NumReadBytesAvail(bs) >= 2";
          goto LABEL_23;
        }

        v13 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_19:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 4159, v13);
      }
    }

    v13 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_19;
  }

  return result;
}

uint64_t sub_100262098(unsigned int a1, uint64_t (*a2)())
{
  v21 = 0;
  v22 = 0;
  result = sub_10001FFD8(&v21);
  v8 = 0x20000u >> (8 * a1);
  if (a1 <= 2)
  {
    v9 = 0x101u >> (8 * a1);
  }

  else
  {
    LOBYTE(v8) = 0;
    v9 = 0;
  }

  if (a1 <= 2)
  {
    v10 = 0x100u >> (8 * a1);
  }

  else
  {
    v10 = 0;
  }

  if (!result)
  {
    if (HIBYTE(v22))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
    }

    else
    {
      v11 = WORD2(v22);
      if (WORD1(v22) > WORD2(v22))
      {
        if (BYTE6(v22) == 2)
        {
          ++WORD2(v22);
          *(v21 + v11) = v10;
          if (HIBYTE(v22))
          {
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
          }

          else
          {
            v12 = WORD2(v22);
            if (WORD1(v22) > WORD2(v22))
            {
              if (BYTE6(v22) == 2)
              {
                ++WORD2(v22);
                *(v21 + v12) = v8;
                if (HIBYTE(v22))
                {
                  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                }

                else
                {
                  v13 = WORD2(v22);
                  if (WORD1(v22) > WORD2(v22))
                  {
                    if (BYTE6(v22) == 2)
                    {
                      ++WORD2(v22);
                      *(v21 + v13) = v9;
                      if (HIBYTE(v22))
                      {
                        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                      }

                      else
                      {
                        v14 = WORD2(v22);
                        if (WORD1(v22) > WORD2(v22))
                        {
                          if (BYTE6(v22) == 2)
                          {
                            ++WORD2(v22);
                            *(v21 + v14) = 0;
                            if (HIBYTE(v22))
                            {
                              sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                            }

                            else
                            {
                              v15 = WORD2(v22);
                              if (WORD1(v22) > WORD2(v22))
                              {
                                if (BYTE6(v22) == 2)
                                {
                                  ++WORD2(v22);
                                  *(v21 + v15) = 0;
                                  return sub_100020078(28, v21, BYTE4(v22), a2, sub_100022AD0, v5, v6, v7);
                                }

                                v20 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_44:
                                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 4221, v20);
                              }
                            }

                            v20 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                            goto LABEL_44;
                          }

                          v19 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_40:
                          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 4220, v19);
                        }
                      }

                      v19 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                      goto LABEL_40;
                    }

                    v18 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_36:
                    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 4219, v18);
                  }
                }

                v18 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                goto LABEL_36;
              }

              v17 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_32:
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 4218, v17);
            }
          }

          v17 = "ByteStream_NumReadBytesAvail(bs) >= 1";
          goto LABEL_32;
        }

        v16 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_28:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 4217, v16);
      }
    }

    v16 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_28;
  }

  return result;
}

uint64_t sub_10026237C(const void *a1, unsigned int a2, uint64_t (*a3)())
{
  v14 = 0;
  v15 = 0;
  result = sub_10001FFD8(&v14);
  if (!result)
  {
    v7 = v14;
    v8 = WORD2(v15);
    if (HIBYTE(v15))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
      v9 = 0;
    }

    else
    {
      v9 = WORD1(v15) - WORD2(v15);
    }

    if (v9 < a2)
    {
      v13 = "ByteStream_NumReadBytesAvail(bs) >= (length)";
    }

    else
    {
      if (BYTE6(v15) == 2)
      {
        memmove((v7 + v8), a1, a2);
        WORD2(v15) += a2;
        return sub_100020078(97, v14, BYTE4(v15), a3, sub_100022AD0, v10, v11, v12);
      }

      v13 = "(bs).__RWFlag == BYTESTREAM_WRITE";
    }

    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 4235, v13);
  }

  return result;
}

uint64_t sub_100262484(_WORD *a1, uint64_t (*a2)())
{
  v9 = 0;
  v10 = 0;
  result = sub_10001FFD8(&v9);
  if (!result)
  {
    if (HIBYTE(v10))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
    }

    else if (WORD1(v10) - WORD2(v10) > 1)
    {
      if (BYTE6(v10) == 2)
      {
        *(v9 + WORD2(v10)) = *a1;
        WORD2(v10) += 2;
        return sub_100020078(72, v9, BYTE4(v10), a2, sub_10025D1B4, v5, v6, v7);
      }

      v8 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_10:
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 4249, v8);
    }

    v8 = "ByteStream_NumReadBytesAvail(bs) >= 2";
    goto LABEL_10;
  }

  return result;
}

uint64_t sub_10026257C(char a1, uint64_t (*a2)())
{
  v10 = 0;
  v11 = 0;
  result = sub_10001FFD8(&v10);
  if (!result)
  {
    if (HIBYTE(v11))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
    }

    else
    {
      v8 = WORD2(v11);
      if (WORD1(v11) > WORD2(v11))
      {
        if (BYTE6(v11) == 2)
        {
          ++WORD2(v11);
          *(v10 + v8) = a1;
          return sub_100020078(393, v10, BYTE4(v11), a2, sub_100022AD0, v5, v6, v7);
        }

        v9 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_10:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 4263, v9);
      }
    }

    v9 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_10;
  }

  return result;
}

uint64_t sub_100262654(int a1, unsigned int a2, uint64_t (*a3)())
{
  v17 = 0;
  v18 = 0;
  result = sub_10001FFD8(&v17);
  v7 = 1;
  __src = 1;
  if (a1 == 1)
  {
    v8 = 2;
  }

  else
  {
    if (a1)
    {
      goto LABEL_6;
    }

    v7 = 0;
    v8 = 1;
  }

  BYTE2(__src) = v7;
  HIBYTE(__src) = v8;
LABEL_6:
  if (result)
  {
    return result;
  }

  v9 = v17;
  v10 = WORD2(v18);
  if (HIBYTE(v18))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
    v11 = 0;
  }

  else
  {
    v11 = WORD1(v18) - WORD2(v18);
  }

  if (v11 < a2)
  {
    v15 = "ByteStream_NumReadBytesAvail(bs) >= (length)";
    goto LABEL_16;
  }

  if (BYTE6(v18) != 2)
  {
    v15 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_16:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 4299, v15);
  }

  memmove((v9 + v10), &__src, a2);
  WORD2(v18) += a2;
  return sub_100020078(109, v17, BYTE4(v18), a3, sub_100022AD0, v12, v13, v14);
}

uint64_t sub_100262780(_BYTE *a1, uint64_t (*a2)())
{
  v14 = 0;
  v15 = 0;
  result = sub_10001FFD8(&v14);
  if (!result)
  {
    if (HIBYTE(v15))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
    }

    else if (WORD1(v15) - WORD2(v15) > 1)
    {
      if (BYTE6(v15) == 2)
      {
        *(v14 + WORD2(v15)) = 0;
        *(v14 + WORD2(v15) + 1) = 1;
        v8 = WORD2(v15) + 2;
        WORD2(v15) += 2;
        if (HIBYTE(v15))
        {
          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
        }

        else if (WORD1(v15) - v8 > 1)
        {
          if (BYTE6(v15) == 2)
          {
            *(v14 + v8) = *a1;
            *(v14 + WORD2(v15) + 1) = a1[1];
            v9 = WORD2(v15) + 2;
            WORD2(v15) += 2;
            if (HIBYTE(v15))
            {
              sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
            }

            else if (WORD1(v15) - v9 > 2)
            {
              if (BYTE6(v15) == 2)
              {
                v10 = v14 + v9;
                *(v10 + 2) = 0;
                *v10 = 0;
                WORD2(v15) += 3;
                return sub_100020078(131, v14, BYTE4(v15), a2, sub_100022AD0, v5, v6, v7);
              }

              v13 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_24:
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 4317, v13);
            }

            v13 = "ByteStream_NumReadBytesAvail(bs) >= (3)";
            goto LABEL_24;
          }

          v12 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_20:
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 4316, v12);
        }

        v12 = "ByteStream_NumReadBytesAvail(bs) >= 2";
        goto LABEL_20;
      }

      v11 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_16:
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 4315, v11);
    }

    v11 = "ByteStream_NumReadBytesAvail(bs) >= 2";
    goto LABEL_16;
  }

  return result;
}

uint64_t sub_100262990(const void *a1, int a2, uint64_t (*a3)())
{
  v14 = 0;
  v15 = 0;
  result = sub_10001FFD8(&v14);
  if (!result)
  {
    v7 = v14;
    v8 = WORD2(v15);
    if (HIBYTE(v15))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
      v9 = 0;
    }

    else
    {
      v9 = WORD1(v15) - WORD2(v15);
    }

    if (v9 < a2)
    {
      v13 = "ByteStream_NumReadBytesAvail(bs) >= (length)";
    }

    else
    {
      if (BYTE6(v15) == 2)
      {
        memmove((v7 + v8), a1, a2);
        WORD2(v15) += a2;
        return sub_100020078(270, v14, BYTE4(v15), a3, sub_100022AD0, v10, v11, v12);
      }

      v13 = "(bs).__RWFlag == BYTESTREAM_WRITE";
    }

    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 4332, v13);
  }

  return result;
}

uint64_t sub_100262A98(const void *a1, int a2, uint64_t (*a3)())
{
  v14 = 0;
  v15 = 0;
  result = sub_10001FFD8(&v14);
  if (!result)
  {
    v7 = v14;
    v8 = WORD2(v15);
    if (HIBYTE(v15))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
      v9 = 0;
    }

    else
    {
      v9 = WORD1(v15) - WORD2(v15);
    }

    if (v9 < a2)
    {
      v13 = "ByteStream_NumReadBytesAvail(bs) >= (length)";
    }

    else
    {
      if (BYTE6(v15) == 2)
      {
        memmove((v7 + v8), a1, a2);
        WORD2(v15) += a2;
        return sub_100020078(277, v14, BYTE4(v15), a3, sub_100022AD0, v10, v11, v12);
      }

      v13 = "(bs).__RWFlag == BYTESTREAM_WRITE";
    }

    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 4346, v13);
  }

  return result;
}

uint64_t sub_100262BA0(const void *a1, int a2, uint64_t (*a3)())
{
  v14 = 0;
  v15 = 0;
  result = sub_10001FFD8(&v14);
  if (!result)
  {
    v7 = v14;
    v8 = WORD2(v15);
    if (HIBYTE(v15))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
      v9 = 0;
    }

    else
    {
      v9 = WORD1(v15) - WORD2(v15);
    }

    if (v9 < a2)
    {
      v13 = "ByteStream_NumReadBytesAvail(bs) >= (length)";
    }

    else
    {
      if (BYTE6(v15) == 2)
      {
        memmove((v7 + v8), a1, a2);
        WORD2(v15) += a2;
        return sub_100020078(269, v14, BYTE4(v15), a3, sub_100022AD0, v10, v11, v12);
      }

      v13 = "(bs).__RWFlag == BYTESTREAM_WRITE";
    }

    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 4360, v13);
  }

  return result;
}

uint64_t sub_100262CA8(_BYTE *a1, _WORD *a2, int a3, uint64_t (*a4)())
{
  v20 = 0;
  v21 = 0;
  result = sub_10001FFD8(&v20);
  if (!result)
  {
    if (HIBYTE(v21))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
    }

    else if (WORD1(v21) - WORD2(v21) > 1)
    {
      if (BYTE6(v21) == 2)
      {
        *(v20 + WORD2(v21)) = *a2;
        v9 = WORD2(v21) + 2;
        WORD2(v21) += 2;
        if (HIBYTE(v21))
        {
          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
        }

        else if (WORD1(v21) - v9 > 1)
        {
          if (BYTE6(v21) == 2)
          {
            *(v20 + v9) = *a1;
            *(v20 + WORD2(v21) + 1) = a1[1];
            v10 = WORD2(v21) + 2;
            WORD2(v21) += 2;
            v11 = v20;
            if (HIBYTE(v21))
            {
              sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
              v12 = 0;
            }

            else
            {
              v12 = WORD1(v21) - v10;
            }

            v13 = a3 - 4;
            if (v12 < v13)
            {
              v19 = "ByteStream_NumReadBytesAvail(bs) >= ((length - 4))";
            }

            else
            {
              if (BYTE6(v21) == 2)
              {
                memmove((v11 + v10), a2 + 2, v13);
                WORD2(v21) += v13;
                return sub_100020078(268, v20, BYTE4(v21), a4, sub_100022AD0, v14, v15, v16);
              }

              v19 = "(bs).__RWFlag == BYTESTREAM_WRITE";
            }

            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 4376, v19);
          }

          v18 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_22:
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 4375, v18);
        }

        v18 = "ByteStream_NumReadBytesAvail(bs) >= 2";
        goto LABEL_22;
      }

      v17 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_18:
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 4374, v17);
    }

    v17 = "ByteStream_NumReadBytesAvail(bs) >= (2)";
    goto LABEL_18;
  }

  return result;
}

uint64_t sub_100262ED0(_BYTE *a1, char a2, __int16 a3, __int16 a4, __int16 a5, __int16 a6, uint64_t (*a7)())
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

    else if (WORD1(v34) - WORD2(v34) > 3)
    {
      if (BYTE6(v34) == 2)
      {
        *(v33 + WORD2(v34)) = 8;
        *(v33 + WORD2(v34) + 1) = 0;
        *(v33 + WORD2(v34) + 3) = 0;
        v18 = WORD2(v34) + 4;
        WORD2(v34) += 4;
        if (HIBYTE(v34))
        {
          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
        }

        else if (WORD1(v34) - v18 > 1)
        {
          if (BYTE6(v34) == 2)
          {
            *(v33 + v18) = *a1;
            *(v33 + WORD2(v34) + 1) = a1[1];
            v19 = WORD2(v34);
            v20 = WORD2(v34) + 2;
            WORD2(v34) += 2;
            if (HIBYTE(v34))
            {
              sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
            }

            else if (WORD1(v34) > v20)
            {
              if (BYTE6(v34) == 2)
              {
                WORD2(v34) = v19 + 3;
                *(v33 + v20) = a2;
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
                      *(v33 + v21) = 0;
                      if (HIBYTE(v34))
                      {
                        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                      }

                      else if (WORD1(v34) - WORD2(v34) > 1)
                      {
                        if (BYTE6(v34) == 2)
                        {
                          *(v33 + WORD2(v34)) = a3;
                          v22 = WORD2(v34) + 2;
                          WORD2(v34) += 2;
                          if (HIBYTE(v34))
                          {
                            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                          }

                          else if (WORD1(v34) - v22 > 1)
                          {
                            if (BYTE6(v34) == 2)
                            {
                              *(v33 + v22) = a4;
                              *(v33 + WORD2(v34) + 1) = HIBYTE(a4);
                              v23 = WORD2(v34) + 2;
                              WORD2(v34) += 2;
                              if (HIBYTE(v34))
                              {
                                sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                              }

                              else if (WORD1(v34) - v23 > 1)
                              {
                                if (BYTE6(v34) == 2)
                                {
                                  *(v33 + v23) = a5;
                                  *(v33 + WORD2(v34) + 1) = HIBYTE(a5);
                                  v24 = WORD2(v34) + 2;
                                  WORD2(v34) += 2;
                                  if (HIBYTE(v34))
                                  {
                                    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                                  }

                                  else if (WORD1(v34) - v24 > 1)
                                  {
                                    if (BYTE6(v34) == 2)
                                    {
                                      *(v33 + v24) = a6;
                                      *(v33 + WORD2(v34) + 1) = HIBYTE(a6);
                                      WORD2(v34) += 2;
                                      return sub_100020078(226, v33, BYTE4(v34), a7, sub_100022AD0, v15, v16, v17);
                                    }

                                    v32 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_59:
                                    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 4398, v32);
                                  }

                                  v32 = "ByteStream_NumReadBytesAvail(bs) >= 2";
                                  goto LABEL_59;
                                }

                                v31 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_55:
                                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 4397, v31);
                              }

                              v31 = "ByteStream_NumReadBytesAvail(bs) >= 2";
                              goto LABEL_55;
                            }

                            v30 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_51:
                            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 4396, v30);
                          }

                          v30 = "ByteStream_NumReadBytesAvail(bs) >= 2";
                          goto LABEL_51;
                        }

                        v29 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_47:
                        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 4395, v29);
                      }

                      v29 = "ByteStream_NumReadBytesAvail(bs) >= 2";
                      goto LABEL_47;
                    }

                    v28 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_43:
                    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 4394, v28);
                  }
                }

                v28 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                goto LABEL_43;
              }

              v27 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_39:
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 4393, v27);
            }

            v27 = "ByteStream_NumReadBytesAvail(bs) >= 1";
            goto LABEL_39;
          }

          v26 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_35:
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 4392, v26);
        }

        v26 = "ByteStream_NumReadBytesAvail(bs) >= 2";
        goto LABEL_35;
      }

      v25 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_31:
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 4391, v25);
    }

    v25 = "ByteStream_NumReadBytesAvail(bs) >= 4";
    goto LABEL_31;
  }

  return result;
}