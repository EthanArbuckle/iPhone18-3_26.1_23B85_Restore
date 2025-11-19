void sub_1001F09E0(uint64_t a1, void (*a2)(void, uint64_t), uint64_t a3)
{
  if (a1)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("VSC failed with status %!", v4, v5, v6, v7, v8, v9, v10, a1);
      v11 = sub_10000C050(0x54u);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_10080F604();
      }
    }
  }

  else if (a2)
  {
    v13 = *a3 + *(a3 + 12);

    a2(0, v13);
  }
}

unsigned __int8 *sub_1001F0A90(uint64_t a1, unsigned __int8 **a2, _WORD *a3, int a4)
{
  v4 = *a2;
  if (!*a2)
  {
    return v4;
  }

  v5 = *(a1 + 32);
  v6 = *(v5 + 8);
  v7 = *(v5 + 18);
  v8 = (v6 + v7);
  if (*v4)
  {
    v9 = v4 > v8;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
    return 0;
  }

  v13 = *(a1 + 8);
  v14 = sub_1001F16B8(v13, *(a1 + 16));
  if (v14 != 1)
  {
    if (*v13 != 68)
    {
      if (v4 >= v8)
      {
        return 0;
      }

      v22 = v6 + v7 - v4;
      v8 = v4;
      while (*v8 - 48 <= 9)
      {
        ++v8;
        if (!--v22)
        {
          v8 = (v6 + v7);
          break;
        }
      }
    }

    v17 = v8;
    if (v8 != v4)
    {
      goto LABEL_40;
    }

    return 0;
  }

  v15 = *(v5 + 21);
  if (v4 >= v8)
  {
    v17 = v4;
    if (*(v5 + 21))
    {
      goto LABEL_44;
    }

LABEL_40:
    if (a4)
    {
      *v17 = 0;
    }

    *a2 = v17 + 1;
    if (a3)
    {
      *a3 = v17 - v4;
    }

    return v4;
  }

  v16 = 0;
  v17 = (v6 + v7);
  v18 = v6 + v7 - v4;
  v19 = v4;
  do
  {
    if (*v19 == 34)
    {
      v15 ^= 1u;
      *(v5 + 21) = v15;
    }

    if ((v15 & 1) == 0)
    {
      v20 = *v19;
      if (v20 > 0x2B)
      {
        if (v20 == 44)
        {
          if (!v16)
          {
            goto LABEL_27;
          }
        }

        else if (v20 == 59)
        {
          goto LABEL_27;
        }
      }

      else if (v20 == 40)
      {
        ++v16;
      }

      else if (v20 == 41)
      {
        v21 = __OFSUB__(v16--, 1);
        if (v16 < 0 != v21)
        {
LABEL_27:
          v17 = v19;
          goto LABEL_40;
        }
      }
    }

    ++v19;
    --v18;
  }

  while (v18);
  if ((v15 & 1) == 0 && !v16)
  {
    goto LABEL_40;
  }

LABEL_44:
  if (sub_10000C240())
  {
    sub_10000AF54("Unexpected end of parameter!\n", v23, v24, v25, v26, v27, v28, v29, v32);
    v30 = sub_10000C050(0);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      sub_10080F7A0();
    }
  }

  v4 = 0;
  *a2 = v8;
  return v4;
}

uint64_t sub_1001F0C88(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v52 = 0;
  if (!a1)
  {
    sub_1000D660C();
  }

  if (*(a1 + 20) == 5)
  {
    *(a1 + 18) = 0;
  }

  v6 = sub_1001F110C(a1, a2, a3, &v52);
  if (v6 == 0x7FFFFFFF)
  {
    return 0;
  }

  v51 = a3;
  while (1)
  {
    v8 = *(a1 + 20);
    if (v8 != 3)
    {
      if (v8 == 1)
      {
        if (v6 != 65)
        {
          if (v6 == 84)
          {
            if ((*(a1 + 21) & 1) == 0)
            {
              *(a1 + 20) = 3;
            }
          }

          else if ((*(a1 + 21) & 1) == 0)
          {
            *(a1 + 18) = 0;
          }
        }
      }

      else if (!*(a1 + 20) && v6 == 65 && (*(a1 + 21) & 1) == 0)
      {
        *(a1 + 20) = 1;
      }

      goto LABEL_76;
    }

    if (v6 != 13 || (*(a1 + 21) & 1) != 0)
    {
      break;
    }

    *(a1 + 20) = 5;
    v11 = *(a1 + 18);
    if (!*(a1 + 18))
    {
      goto LABEL_75;
    }

    v12 = 0;
    v13 = *(a1 + 8);
    v53 = 0;
    while (1)
    {
      v14 = *(v13 + v12);
      v15 = v14 > 0x3F;
      v16 = (1 << v14) & 0xA800000000000000;
      if (!v15 && v16 != 0)
      {
        break;
      }

      if (v11 == ++v12)
      {
        LOWORD(v12) = v11;
        break;
      }
    }

    v18 = 0;
    v19 = 0;
    v20 = v12;
    while (1)
    {
      memset(buf, 0, sizeof(buf));
      v56 = a1;
      *buf = 2;
      v21 = v20 >= v19 ? v20 - v19 : 0;
      if (sub_1001F16B8((v13 + v19), v21) == 1)
      {
        break;
      }

      v27 = *(v13 + v19);
      if (v27 == 38)
      {
        v22 = 2;
        goto LABEL_58;
      }

      if (v27 != 59)
      {
        if (v27 == 83 && (v28 = v18 + 1, v18 + 1 < v11))
        {
          v22 = 1;
          do
          {
            if (*(v13 + v28) - 48 > 9)
            {
              break;
            }

            v28 = v18 + ++v22;
          }

          while (v28 < v11);
        }

        else
        {
          v22 = 1;
        }

        goto LABEL_58;
      }

      ++v19;
LABEL_70:
      v18 = v19;
      if (v19 >= v11)
      {
        goto LABEL_75;
      }
    }

    v22 = 0;
    if (v18 < v11)
    {
      v23 = v18;
      do
      {
        v24 = *(v13 + v23);
        v15 = v24 > 0x3F;
        v25 = (1 << v24) & 0xA800000000000000;
        if (!v15 && v25 != 0)
        {
          break;
        }

        v23 = v18 + ++v22;
      }

      while (v23 < v11);
    }

LABEL_58:
    v29 = sub_100007618(v22 + 1, 0x7D15F29AuLL);
    *&buf[8] = v29;
    if (v29)
    {
      *&buf[16] = v22;
      memmove(v29, (v13 + v19), v22);
      *(*&buf[8] + v22) = 0;
      v30 = v22 + v19;
      v31 = (v22 + v19);
      if (v31 < v11)
      {
        v32 = *(v13 + (v22 + v19));
        if (v32 == 61)
        {
          v33 = v31 + 1;
          if (v33 < v11 && *(v13 + v33) == 63)
          {
            *buf = 0;
            v30 += 2;
          }

          else
          {
LABEL_66:
            ++v30;
          }
        }

        else if (v32 == 63)
        {
          *buf = 1;
          goto LABEL_66;
        }
      }

      *&buf[24] = v13 + v30;
      v54 = *&buf[24];
        ;
      }

      v19 = v54 - v13;
      (*a1)(buf);
      sub_10000C1E8(*&buf[8]);
      *&buf[16] = 0;
      goto LABEL_70;
    }

    if (sub_10000C240())
    {
      sub_10000AF54("Parse command failed - %!, continuing", v34, v35, v36, v37, v38, v39, v40, 106);
      v41 = sub_10000C050(0);
      if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
      {
        v42 = sub_10000C0FC();
        *buf = 136446466;
        *&buf[4] = v42;
        *&buf[12] = 1024;
        *&buf[14] = 0xFFFF;
        _os_log_error_impl(&_mh_execute_header, v41, OS_LOG_TYPE_ERROR, "%{public}s (status=%{bluetooth:OI_STATUS}u)", buf, 0x12u);
      }
    }

LABEL_75:
    *(a1 + 18) = 0;
    a3 = v51;
LABEL_76:
    v6 = sub_1001F110C(a1, a2, a3, &v52);
    if (v6 == 0x7FFFFFFF)
    {
      return 0;
    }
  }

  v9 = *(a1 + 18);
  if (v9 < *(a1 + 16))
  {
    v10 = *(a1 + 8);
    *(a1 + 18) = v9 + 1;
    *(v10 + v9) = v6;
    goto LABEL_76;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("Receive error - %!\n", v43, v44, v45, v46, v47, v48, v49, 104);
    v50 = sub_10000C050(0);
    if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
    {
      sub_10080F7A0();
    }
  }

  *(a1 + 18) = 0;
  return 104;
}

uint64_t sub_1001F110C(uint64_t a1, uint64_t a2, unsigned int a3, _WORD *a4)
{
  v5 = *a4;
  if (v5 <= a3)
  {
    v6 = a3;
  }

  else
  {
    v6 = *a4;
  }

  while (1)
  {
    if (v6 == v5)
    {
      return 0x7FFFFFFFLL;
    }

    if (*(a2 + v5) != 32)
    {
      break;
    }

    *a4 = ++v5;
    if (*(a1 + 21))
    {
      return 32;
    }
  }

  *a4 = v5 + 1;
  result = *(a2 + v5);
  if (result == 34)
  {
    v8 = *(a1 + 21);
    if (*(a1 + 20) == 3)
    {
      *(a1 + 21) = v8 ^ 1;
      if (!v8)
      {
        return 34;
      }
    }

    else if (v8)
    {
      return 34;
    }
  }

  else if (*(a1 + 21))
  {
    return result;
  }

  if ((result - 97) >= 0x1A)
  {
    return result;
  }

  else
  {
    return (result - 32);
  }
}

uint64_t sub_1001F11B4(void (**a1)(void **), uint64_t a2, unsigned int a3)
{
  v52 = 0;
  if (*(a1 + 20) == 5)
  {
    *(a1 + 18) = 0;
  }

  v6 = sub_1001F110C(a1, a2, a3, &v52);
  if (v6 != 0x7FFFFFFF)
  {
    v8 = v6;
    while (2)
    {
      for (i = *(a1 + 20); i == 3; i = 0)
      {
        if (v8 == 13)
        {
          v10 = *(a1 + 9);
          if ((*(a1 + 21) & 1) == 0)
          {
            if (*(a1 + 9))
            {
              *(a1 + 20) = 4;
              goto LABEL_44;
            }

LABEL_35:
            *(a1 + 20) = 2;
            goto LABEL_44;
          }
        }

        else
        {
          v10 = *(a1 + 9);
        }

        if (v10 < *(a1 + 8))
        {
          v22 = a1[1];
          *(a1 + 9) = v10 + 1;
          *(v22 + v10) = v8;
          goto LABEL_44;
        }

        if (sub_10000C240())
        {
          sub_10000AF54("Receive overflow - discarding (buf length %d)\n", v11, v12, v13, v14, v15, v16, v17, *(a1 + 9));
          v18 = sub_10000C050(0);
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            v19 = sub_10000C0FC();
            LODWORD(buf[0]) = 136446466;
            *(buf + 4) = v19;
            WORD2(buf[1]) = 1024;
            *(&buf[1] + 6) = 0xFFFF;
            _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "%{public}s (status=%{bluetooth:OI_STATUS}u)", buf, 0x12u);
          }
        }

        *(a1 + 18) = 0;
      }

      if (i != 4)
      {
        if (i != 2)
        {
          if (i || v8 != 13 || (*(a1 + 21) & 1) != 0)
          {
            goto LABEL_44;
          }

          goto LABEL_35;
        }

        if (v8 != 10)
        {
          if (v8 != 13 && (*(a1 + 21) & 1) == 0)
          {
            *(a1 + 20) = 0;
          }

          goto LABEL_44;
        }

        if (*(a1 + 21))
        {
          goto LABEL_44;
        }

LABEL_43:
        *(a1 + 20) = 3;
        goto LABEL_44;
      }

      if (v8 != 10)
      {
        if (v8 == 13)
        {
          v20 = *(a1 + 9);
          if ((*(a1 + 21) & 1) == 0)
          {
            if (v20 < *(a1 + 8))
            {
              v21 = a1[1];
              *(a1 + 9) = v20 + 1;
              *(v21 + v20) = 13;
LABEL_44:
              v8 = sub_1001F110C(a1, a2, a3, &v52);
              if (v8 != 0x7FFFFFFF)
              {
                continue;
              }

              return 0;
            }

            goto LABEL_68;
          }
        }

        else
        {
          LODWORD(v20) = *(a1 + 9);
        }

LABEL_41:
        if (v20 + 2 <= *(a1 + 8))
        {
          v23 = a1[1];
          *(a1 + 9) = v20 + 1;
          *(v23 + v20) = 13;
          v24 = a1[1];
          v25 = *(a1 + 9);
          *(a1 + 9) = v25 + 1;
          *(v24 + v25) = v8;
          goto LABEL_43;
        }

LABEL_68:
        if (sub_10000C240())
        {
          sub_10000AF54("Receive error - %!\n", v44, v45, v46, v47, v48, v49, v50, 104);
          v51 = sub_10000C050(0);
          if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
          {
            sub_10080F7A0();
          }
        }

        *(a1 + 18) = 0;
        return 104;
      }

      break;
    }

    v20 = *(a1 + 9);
    if (*(a1 + 21))
    {
      goto LABEL_41;
    }

    *(a1 + 20) = 5;
    if (v20)
    {
      v26 = 0;
      v27 = a1[1];
      memset(buf + 4, 0, 20);
      buf[4] = a1;
      LODWORD(buf[0]) = 3;
      while (1)
      {
        v28 = v27[v26];
        if (v28 == 58 || v28 == 61)
        {
          break;
        }

        if (v20 == ++v26)
        {
          LOWORD(v26) = v20;
          break;
        }
      }

      if (sub_1001F16B8(v27, v26) == 1)
      {
        v29 = 0;
        while (1)
        {
          v30 = v27[v29];
          if (v30 == 58 || v30 == 61)
          {
            break;
          }

          if (v20 == ++v29)
          {
            goto LABEL_60;
          }
        }

        v31 = v20 == v29;
        LOWORD(v20) = v29;
        if (!v31)
        {
          goto LABEL_61;
        }

LABEL_60:
        v32 = 134;
        goto LABEL_64;
      }

LABEL_61:
      v33 = sub_100007618(v20 + 1, 0x24D26E4CuLL);
      buf[1] = v33;
      if (!v33)
      {
        v32 = 106;
LABEL_64:
        if (sub_10000C240())
        {
          sub_10000AF54("Parse response failed - %!, continuing", v35, v36, v37, v38, v39, v40, v41, v32);
          v42 = sub_10000C050(0);
          if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
          {
            v43 = sub_10000C0FC();
            LODWORD(buf[0]) = 136446466;
            *(buf + 4) = v43;
            WORD2(buf[1]) = 1024;
            *(&buf[1] + 6) = 0xFFFF;
            _os_log_error_impl(&_mh_execute_header, v42, OS_LOG_TYPE_ERROR, "%{public}s (status=%{bluetooth:OI_STATUS}u)", buf, 0x12u);
          }
        }

        goto LABEL_67;
      }

      v34 = v33;
      LOWORD(buf[2]) = v20;
      memmove(v33, v27, v20);
      v34[v20] = 0;
      buf[3] = &v27[(v20 + 1)];
      (*a1)(buf);
      sub_10000C1E8(buf[1]);
    }

LABEL_67:
    *(a1 + 18) = 0;
    goto LABEL_44;
  }

  return 0;
}

void sub_1001F1660(uint64_t a1, uint64_t a2, uint64_t a3, __int16 a4)
{
  if (!a1)
  {
    sub_1000D660C();
    if (a3)
    {
      goto LABEL_3;
    }

LABEL_5:
    sub_1000D660C();
    goto LABEL_3;
  }

  if (!a3)
  {
    goto LABEL_5;
  }

LABEL_3:
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = a4;
  *(a1 + 18) = 0;
}

uint64_t sub_1001F16B8(unsigned __int8 *__s1, unsigned int a2)
{
  if (!qword_100B5CD28)
  {
    return a2 && ((v8 = *__s1 - 42, v9 = v8 > 0x34, v10 = (1 << v8) & 0x10000000000003, !v9) ? (v11 = v10 == 0) : (v11 = 1), !v11);
  }

  v4 = *qword_100B5CD28;
  if (!*qword_100B5CD28)
  {
    return a2 && ((v8 = *__s1 - 42, v9 = v8 > 0x34, v10 = (1 << v8) & 0x10000000000003, !v9) ? (v11 = v10 == 0) : (v11 = 1), !v11);
  }

  for (i = (qword_100B5CD28 + 16); ; i += 2)
  {
    v6 = *(i - 8);
    if (v6 <= a2 && !memcmp(__s1, v4, v6))
    {
      break;
    }

    v7 = *i;
    v4 = v7;
    if (!v7)
    {
      return a2 && ((v8 = *__s1 - 42, v9 = v8 > 0x34, v10 = (1 << v8) & 0x10000000000003, !v9) ? (v11 = v10 == 0) : (v11 = 1), !v11);
    }
  }

  return *(i - 1);
}

uint64_t sub_1001F1758(int a1, uint64_t *a2)
{
  if (!dword_100BCE234)
  {
    qword_100B5CD40 = sub_1001BBBD8(8uLL, 0x100004000313F17uLL);
    if (!qword_100B5CD40)
    {
      return 106;
    }
  }

  v7 = 4;
  v8 = 0;
  v9 = 0;
  v6 = &unk_100AE6450;
  v8 = *a2;
  LOWORD(v9) = *(a2 + 4);
  if (a1)
  {
    byte_100B5CD30 = 1;
    word_100B5CD32 = 2;
    dword_100B5CD38 = a1;
  }

  else
  {
    LOWORD(v7) = 3;
  }

  v4 = sub_1002F7E1C(&v6, (qword_100B5CD40 + 4));
  if (v4)
  {
    *(qword_100B5CD40 + 4) = 0;
    sub_1001F1864();
  }

  else
  {
    sub_100244814(0x80000);
    dword_100BCE234 |= 1u;
  }

  return v4;
}

void sub_1001F1864()
{
  if (!*qword_100B5CD40 && !*(qword_100B5CD40 + 4))
  {
    sub_10000C1E8(qword_100B5CD40);
    qword_100B5CD40 = 0;
    dword_100BCE234 = 0;
  }
}

uint64_t sub_1001F18AC()
{
  if ((dword_100BCE234 & 1) == 0)
  {
    return 103;
  }

  sub_1002F8018(*(qword_100B5CD40 + 4));
  sub_1002448C8(0x80000);
  *(qword_100B5CD40 + 4) = 0;
  dword_100BCE234 &= 2u;
  sub_1001F1864();
  return 0;
}

uint64_t sub_1001F1914(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (dword_100BCE238)
  {
LABEL_2:
    v17 = qword_100B5CD48;
    while (1)
    {
      v17 = *v17;
      if (!v17)
      {
        break;
      }

      if (*(v17 + 80) == a1)
      {
        return 119;
      }
    }

    v21 = a7;
    v22 = sub_1001BBBD8(0x58uLL, 0x10A0040A89A59B5uLL);
    if (v22)
    {
      v23 = a8;
      v18 = 0;
      v24 = *qword_100B5CD48;
      *qword_100B5CD48 = v22;
      v22[40] = a1;
      *v22 = v24;
      *(v22 + 1) = a2;
      *(v22 + 2) = a3;
      *(v22 + 3) = a4;
      *(v22 + 4) = a5;
      *(v22 + 5) = a6;
      *(v22 + 6) = v21;
      *(v22 + 7) = v23;
      *(v22 + 8) = a9;
      *(v22 + 9) = a10;
      return v18;
    }

    if (sub_10000C240())
    {
      sub_10000AF54("Out of memory space trying to allocate profile.", v25, v26, v27, v28, v29, v30, v31, v34);
      v32 = sub_10000C050(2u);
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    return 104;
  }

  v19 = a7;
  qword_100B5CD48 = sub_1001BBBD8(0x10uLL, 0x20040A4A59CD2uLL);
  if (!qword_100B5CD48)
  {
    return 104;
  }

  v20 = sub_1002967FC(23, sub_1001F328C);
  if (!v20)
  {
    v20 = sub_1002967FC(27, sub_1001F3558);
    if (!v20)
    {
      dword_100BCE238 = 1;
      a7 = v19;
      goto LABEL_2;
    }
  }

  v18 = v20;
  if (qword_100B5CD48)
  {
    sub_10000C1E8(qword_100B5CD48);
    qword_100B5CD48 = 0;
  }

  return v18;
}

uint64_t sub_1001F1AD4(int a1)
{
  if (!dword_100BCE238)
  {
    return 408;
  }

  v1 = qword_100B5CD48;
  do
  {
    v2 = v1;
    v1 = *v1;
    if (!v1)
    {
      return 120;
    }
  }

  while (*(v1 + 40) != a1);
  *v2 = *v1;
  sub_10000C1E8(v1);
  if (*qword_100B5CD48)
  {
    return 0;
  }

  if (!dword_100BCE238)
  {
    return 408;
  }

  result = sub_1002969F8(23);
  if (!result)
  {
    result = sub_1002969F8(27);
    if (!result)
    {
      while (1)
      {
        v4 = qword_100B5CD48;
        if (!*(qword_100B5CD48 + 8))
        {
          break;
        }

        sub_1001F21B8(*(qword_100B5CD48 + 8));
      }

      while (1)
      {
        v5 = *v4;
        if (!*v4)
        {
          break;
        }

        *v4 = *v5;
        sub_10000C1E8(v5);
        v4 = qword_100B5CD48;
      }

      sub_10000C1E8(v4);
      result = 0;
      qword_100B5CD48 = 0;
      dword_100BCE238 = 0;
    }
  }

  return result;
}

uint64_t sub_1001F1BBC(uint64_t a1, int a2, uint64_t a3, char a4)
{
  v23 = 0;
  if (!dword_100BCE238)
  {
    return 408;
  }

  v22[0] = 0;
  v7 = qword_100B5CD48;
  do
  {
    v7 = *v7;
    if (!v7)
    {
      return 120;
    }
  }

  while (*(v7 + 80) != a2);
  v8 = qword_100B5CD48 + 8;
  while (1)
  {
    v8 = *v8;
    if (!v8)
    {
      break;
    }

    if (*a1 == *(v8 + 8) && *(a1 + 4) == *(v8 + 12))
    {
      ++*(v8 + 14);
      *(v7 + 82) = *(v8 + 24);
      v22[1] = (v7 + 80);
      LOWORD(v22[0]) = 2;
      sub_1000228C0(sub_1001F1D9C, v22, 0);
      return 0;
    }
  }

  v10 = sub_1001F1EA8(&v23);
  if (!v10)
  {
    v10 = sub_10028F454(sub_1001F1F54, sub_1001F2088, sub_1001F2118, 23, a1, a3, v23 + 12, &unk_1008A36C0);
    if (v10)
    {
      if (sub_10000C240())
      {
        sub_10000AF54("L2CAP connection failed %!", v11, v12, v13, v14, v15, v16, v17, v10);
        v18 = sub_10000C050(2u);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          sub_1000E09C0();
        }
      }

      sub_1001F21B8(v23);
    }

    else
    {
      v19 = v23;
      *(v7 + 82) = *(v23 + 12);
      v20 = *a1;
      *(v19 + 6) = *(a1 + 4);
      *(v19 + 2) = v20;
      *(v19 + 7) = 1;
      *(v19 + 17) = 0;
      *(v19 + 18) = a4;
    }
  }

  return v10;
}

void sub_1001F1D9C(uint64_t a1)
{
  v20 = 0;
  v1 = qword_100B5CD48;
  while (1)
  {
    v1 = *v1;
    if (!v1)
    {
      break;
    }

    if (*(v1 + 80) == **(a1 + 8))
    {
      v2 = sub_1001F30E4(&v20, *(v1 + 82));
      if (v2)
      {
        v3 = v2;
        if (sub_10000C240())
        {
          sub_10000AF54("%! (%d)", v4, v5, v6, v7, v8, v9, v10, v3);
          v11 = sub_10000C050(2u);
          if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
          {
            sub_1000E09C0();
          }
        }
      }

      else
      {
        (*(v1 + 16))(v20 + 8, *(v20 + 28), *(v20 + 26), 0);
      }

      return;
    }
  }

  if (sub_10000C240())
  {
    sub_10000AF54("%! (%d)", v12, v13, v14, v15, v16, v17, v18, 120);
    v19 = sub_10000C050(2u);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      sub_1000E09C0();
    }
  }
}

uint64_t sub_1001F1EA8(void *a1)
{
  if (!a1)
  {
    sub_1000D660C();
  }

  v2 = sub_1001BBBD8(0x88uLL, 0x10300408C479AEAuLL);
  if (v2)
  {
    v3 = v2;
    result = 0;
    v5 = qword_100B5CD48;
    *v3 = *(qword_100B5CD48 + 8);
    *(v5 + 8) = v3;
    *a1 = v3;
  }

  else
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Out of memory trying to allocate new AVCTP connetion record", v6, v7, v8, v9, v10, v11, v12, v14);
      v13 = sub_10000C050(2u);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    return 104;
  }

  return result;
}

void sub_1001F1F54(int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21 = 0;
  if (!sub_1001F30E4(&v21, a1))
  {
    v7 = v21;
    v19 = *(v21 + 8);
    v20 = *(v21 + 12);
    if (a4)
    {
      if (sub_10000C240())
      {
        sub_10000AF54("L2CAP Connection failed: %!", v8, v9, v10, v11, v12, v13, v14, a4);
        v15 = sub_10000C050(2u);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          sub_1000E09C0();
        }
      }

      v16 = v21;
      if (*(v21 + 80))
      {
        sub_10029104C(*(v21 + 80), 436);
        v16 = v21;
      }

      sub_1001F21B8(v16);
    }

    else
    {
      *(v21 + 26) = a3;
      *(v7 + 28) = a2;
      *(v7 + 16) = 1;
      if ((*(v7 + 17) & 1) == 0 && *(v7 + 18) == 1)
      {
        sub_1001F226C(&v19, 4366);
      }
    }

    v17 = *qword_100B5CD48;
    if (*qword_100B5CD48)
    {
      do
      {
        v18 = *v17;
        *(v17 + 41) = 0;
        (v17[2])(&v19, a2, a3, a4);
        v17 = v18;
      }

      while (v18);
    }
  }
}

void sub_1001F2088(int a1, uint64_t a2)
{
  v8 = 0;
  if (!sub_1001F30E4(&v8, a1))
  {
    v3 = v8;
    *(v8 + 28) = 0;
    *(v3 + 24) = 0;
    if (!*(v3 + 80))
    {
      v6 = *(v3 + 8);
      v7 = *(v3 + 12);
      sub_1001F21B8(v3);
      v4 = *qword_100B5CD48;
      if (*qword_100B5CD48)
      {
        do
        {
          v5 = *v4;
          (v4[3])(&v6, a2);
          v4 = v5;
        }

        while (v5);
      }
    }
  }
}

void sub_1001F2118(int a1, unsigned __int8 *a2, unsigned int a3)
{
  v14 = 0;
  if (a3)
  {
    if (!sub_1001F30E4(&v14, a1))
    {
      sub_1001F375C((v14 + 24), v14 + 8, a2, a3);
    }
  }

  else if (sub_10000C240())
  {
    sub_10000AF54("Zero length packet received", v5, v6, v7, v8, v9, v10, v11, v13);
    v12 = sub_10000C050(2u);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_1000E09C0();
    }
  }
}

void sub_1001F21B8(void *a1)
{
  v1 = (qword_100B5CD48 + 8);
  while (1)
  {
    v2 = v1;
    v1 = *v1;
    if (!v1)
    {
      break;
    }

    if (v1 == a1)
    {
      *v2 = *v1;
      v3 = v1[4];
      if (v3)
      {
        sub_10000C1E8(v3);
        v1[4] = 0;
      }

      sub_10000C1E8(v1);
      return;
    }
  }

  if (sub_10000C240())
  {
    sub_10000AF54("Failed to free AVCTP connection", v4, v5, v6, v7, v8, v9, v10, v12);
    v11 = sub_10000C050(2u);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_1000E09C0();
    }
  }
}

uint64_t sub_1001F226C(uint64_t a1, int a2)
{
  if (!dword_100BCE238)
  {
    return 408;
  }

  v2 = qword_100B5CD48;
  do
  {
    v2 = *v2;
    if (!v2)
    {
      return 120;
    }
  }

  while (*(v2 + 80) != a2);
  v3 = qword_100B5CD48 + 8;
  while (1)
  {
    v3 = *v3;
    if (!v3)
    {
      break;
    }

    if (*a1 == *(v3 + 8) && *(a1 + 4) == *(v3 + 12))
    {
      if (*(v3 + 80))
      {
        return 133;
      }

      break;
    }
  }

  v5 = sub_10028F454(sub_1001F23A8, sub_1001F24D0, sub_1001F25A8, 27, a1, &unk_100AE64E0, (v3 + 80), &unk_1008A36C0);
  if (v5)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("L2CAP connection failed %!", v6, v7, v8, v9, v10, v11, v12, v5);
      v13 = sub_10000C050(2u);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }
  }

  return v5;
}

void sub_1001F23A8(int a1, uint64_t a2, __int16 a3, uint64_t a4)
{
  v15 = 0;
  if (!sub_1001F30E4(&v15, a1))
  {
    v7 = v15;
    v13 = *(v15 + 8);
    v14 = *(v15 + 12);
    if (a4)
    {
      *(v15 + 80) = 0;
    }

    else
    {
      *(v15 + 82) = a3;
      *(v7 + 84) = a2;
      *(v7 + 128) = 1;
    }

    v8 = *qword_100B5CD48;
    if (*qword_100B5CD48)
    {
      v9 = a3 - 3;
      do
      {
        v10 = *v8;
        (v8[6])(&v13, a2, v9, a4);
        v8 = v10;
      }

      while (v10);
      v7 = v15;
    }

    if (*(v7 + 16) == 1 && !*(v7 + 24))
    {
      if (*(v7 + 80))
      {
        sub_10029104C(*(v7 + 80), 436);
        v7 = v15;
      }

      v13 = *(v7 + 8);
      v14 = *(v7 + 12);
      sub_1001F21B8(v7);
      v11 = *qword_100B5CD48;
      if (*qword_100B5CD48)
      {
        do
        {
          v12 = *v11;
          (v11[3])(&v13, a4);
          v11 = v12;
        }

        while (v12);
      }
    }
  }
}

void sub_1001F24D0(int a1, uint64_t a2)
{
  v10 = 0;
  v9 = 0;
  v8 = 0;
  if (!sub_1001F30E4(&v10, a1))
  {
    v3 = v10;
    *(v10 + 84) = 0;
    *(v3 + 80) = 0;
    v4 = *qword_100B5CD48;
    if (*qword_100B5CD48)
    {
      do
      {
        v5 = *v4;
        (v4[7])(&v8, a2);
        v4 = v5;
      }

      while (v5);
      v3 = v10;
    }

    if (*(v3 + 16) == 1 && !*(v3 + 24))
    {
      v8 = *(v3 + 8);
      v9 = *(v3 + 12);
      sub_1001F21B8(v3);
      v6 = *qword_100B5CD48;
      if (*qword_100B5CD48)
      {
        do
        {
          v7 = *v6;
          (v6[3])(&v8, a2);
          v6 = v7;
        }

        while (v7);
      }
    }
  }
}

void sub_1001F25A8(int a1, unsigned __int8 *a2, unsigned int a3)
{
  v14 = 0;
  if (a3)
  {
    if (!sub_1001F30E4(&v14, a1))
    {
      sub_1001F375C((v14 + 80), v14 + 8, a2, a3);
    }
  }

  else if (sub_10000C240())
  {
    sub_10000AF54("Zero length packet received", v5, v6, v7, v8, v9, v10, v11, v13);
    v12 = sub_10000C050(2u);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_1000E09C0();
    }
  }
}

uint64_t sub_1001F2648(uint64_t a1, char a2, char a3)
{
  if (!dword_100BCE238)
  {
    return 408;
  }

  v4 = qword_100B5CD48 + 8;
  while (1)
  {
    v4 = *v4;
    if (!v4)
    {
      break;
    }

    if (*a1 == *(v4 + 8) && *(a1 + 4) == *(v4 + 12))
    {
      *(v4 + 18) = a3;
      v6 = sub_100290164(sub_1001F1F54, sub_1001F2088, sub_1001F2118, *(v4 + 24), 0, a2, &unk_1008A36C0);
      v7 = v6;
      if (!v6 && (a2 & 1) != 0)
      {
        return 0;
      }

      if (v6)
      {
        if (sub_10000C240())
        {
          sub_10000AF54("OI_L2CAP_Accept failed %!", v16, v17, v18, v19, v20, v21, v22, v7);
          v23 = sub_10000C050(2u);
          if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
          {
            sub_1000E09C0();
          }
        }
      }

      sub_1001F21B8(v4);
      return v7;
    }
  }

  if (sub_10000C240())
  {
    v7 = 120;
    sub_10000AF54("Could not find connection %!", v8, v9, v10, v11, v12, v13, v14, 120);
    v15 = sub_10000C050(2u);
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      return v7;
    }

    sub_1000E09C0();
  }

  return 120;
}

uint64_t sub_1001F27C4(uint64_t a1)
{
  if (!dword_100BCE238)
  {
    return 408;
  }

  v1 = qword_100B5CD48 + 8;
  do
  {
    v1 = *v1;
    if (!v1)
    {
      return 120;
    }
  }

  while (*a1 != *(v1 + 8) || *(a1 + 4) != *(v1 + 12));
  v3 = *(v1 + 14);
  if (!*(v1 + 14))
  {
    return 120;
  }

  if (v3 != 1)
  {
LABEL_15:
    result = 0;
    *(v1 + 14) = v3 - 1;
    return result;
  }

  if (!*(v1 + 80) || (result = sub_10029104C(*(v1 + 80), 436), !result))
  {
    result = sub_10029104C(*(v1 + 24), 436);
    if (!result)
    {
      LOWORD(v3) = *(v1 + 14);
      goto LABEL_15;
    }
  }

  return result;
}

uint64_t sub_1001F2878(uint64_t a1, int a2, unsigned int a3, int a4, char *a5, signed int a6)
{
  if (!dword_100BCE238)
  {
    return 408;
  }

  v6 = a3;
  v7 = 101;
  if (a3 <= 0xF && (a4 - 3) >= 0xFFFFFFFE)
  {
    v11 = a2;
    v12 = qword_100B5CD48;
    do
    {
      v12 = *v12;
      if (!v12)
      {
        return 121;
      }
    }

    while (*(v12 + 80) != a2);
    v13 = qword_100B5CD48 + 8;
    do
    {
      v13 = *v13;
      if (!v13)
      {
        return 120;
      }
    }

    while (*a1 != *(v13 + 8) || *(a1 + 4) != *(v13 + 12));
    if (*(v13 + 16) == 1)
    {
      if (*(v13 + 56))
      {
        return 410;
      }

      v16 = a6 + 3;
      v17 = *(v13 + 26);
      if (a6 + 3 <= v17)
      {
        v18 = 3;
      }

      else
      {
        v18 = 4;
      }

      v19 = v17 - v18;
      if ((v17 - v18) > a6)
      {
        v19 = a6;
      }

      *(v13 + 66) = v19;
      v20 = sub_1000B914C(2u);
      if (v20)
      {
        v21 = v20;
        v22 = sub_100007618(v18, 0x26767032uLL);
        if (v22)
        {
          if (v16 <= v17)
          {
            *v22 = (16 * v6) | (2 * (a4 != 1));
            v30 = 2;
            v31 = 1;
            v23 = v21;
          }

          else
          {
            v23 = v21;
            v24 = 0;
            if (a6)
            {
              LOWORD(v25) = a6;
              do
              {
                if (v24)
                {
                  v26 = -1;
                }

                else
                {
                  v26 = -4;
                }

                v27 = *(v13 + 26) + v26;
                v28 = v25 >= v27;
                v25 = v25 - v27;
                v29 = v25 != 0 && v28;
                if (!v28)
                {
                  LOWORD(v25) = 0;
                }

                ++v24;
              }

              while (v29);
            }

            *v22 = (16 * v6) | (2 * (a4 != 1)) | 4;
            v22[1] = v24;
            v30 = 3;
            v31 = 2;
          }

          v22[v30] = v11;
          v22[v31] = HIBYTE(v11);
          v32 = v22;
          v33 = sub_10001F968(v23, v22, v18, 1u);
          if (v33 || (v33 = sub_10001F968(v23, a5, *(v13 + 66), 2u), v33))
          {
            v7 = v33;
          }

          else
          {
            v7 = sub_1000B7EDC(sub_1001F2AF8, *(v13 + 24), 0, v23, 0);
            if (!v7)
            {
              *(v13 + 70) = v11;
              *(v13 + 68) = v6;
              *(v13 + 69) = a4;
              *(v13 + 56) = a5;
              *(v13 + 64) = a6;
              return v7;
            }
          }

          sub_10000C1E8(v32);
        }

        else
        {
          v7 = 106;
          v23 = v21;
        }

        sub_10000C1E8(v23);
      }

      else
      {
        return 106;
      }
    }

    else
    {
      return 122;
    }
  }

  return v7;
}

void sub_1001F2AF8(int a1, void *a2, uint64_t a3, uint64_t a4)
{
  v17 = 0;
  sub_1000BB9CC(a2);
  if (sub_1001F30E4(&v17, a1))
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Could not find connection\n", v6, v7, v8, v9, v10, v11, v12, v16);
      v13 = sub_10000C050(2u);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }
  }

  else
  {
    v14 = qword_100B5CD48;
    while (1)
    {
      v14 = *v14;
      if (!v14)
      {
        break;
      }

      if (*(v14 + 80) == *(v17 + 70))
      {
        v15 = *(v14 + 40);
        goto LABEL_10;
      }
    }

    v15 = 0;
LABEL_10:
    sub_1001F406C((v17 + 24), v15, v17 + 8, a4);
  }
}

uint64_t sub_1001F2BC0(uint64_t a1, int a2, unsigned int a3, int a4, char *a5, signed int a6)
{
  if (!dword_100BCE238)
  {
    return 408;
  }

  v6 = a3;
  v7 = 101;
  if (a3 <= 0xF && (a4 - 3) >= 0xFFFFFFFE)
  {
    v11 = a2;
    v12 = qword_100B5CD48;
    do
    {
      v12 = *v12;
      if (!v12)
      {
        return 121;
      }
    }

    while (*(v12 + 80) != a2);
    v13 = qword_100B5CD48 + 8;
    do
    {
      v13 = *v13;
      if (!v13)
      {
        return 120;
      }
    }

    while (*a1 != *(v13 + 8) || *(a1 + 4) != *(v13 + 12));
    if (!*(v13 + 80))
    {
      return 121;
    }

    if (*(v13 + 112))
    {
      return 410;
    }

    v16 = a6 + 3;
    v17 = *(v13 + 82);
    if (a6 + 3 <= v17)
    {
      v18 = 3;
    }

    else
    {
      v18 = 4;
    }

    v19 = v17 - v18;
    if ((v17 - v18) > a6)
    {
      v19 = a6;
    }

    *(v13 + 122) = v19;
    v20 = sub_1000B914C(2u);
    if (v20)
    {
      v21 = v20;
      v22 = sub_100007618(v18, 0x2AADEB69uLL);
      if (v22)
      {
        if (v16 <= v17)
        {
          *v22 = (16 * v6) | (2 * (a4 != 1));
          v30 = 2;
          v31 = 1;
          v23 = v21;
        }

        else
        {
          v23 = v21;
          v24 = 0;
          if (a6)
          {
            LOWORD(v25) = a6;
            do
            {
              if (v24)
              {
                v26 = -1;
              }

              else
              {
                v26 = -4;
              }

              v27 = *(v13 + 82) + v26;
              v28 = v25 >= v27;
              v25 = v25 - v27;
              v29 = v25 != 0 && v28;
              if (!v28)
              {
                LOWORD(v25) = 0;
              }

              ++v24;
            }

            while (v29);
          }

          *v22 = (16 * v6) | (2 * (a4 != 1)) | 4;
          v22[1] = v24;
          v30 = 3;
          v31 = 2;
        }

        v22[v30] = v11;
        v22[v31] = HIBYTE(v11);
        v32 = v22;
        v33 = sub_10001F968(v23, v22, v18, 1u);
        if (v33 || (v33 = sub_10001F968(v23, a5, *(v13 + 122), 2u), v33))
        {
          v7 = v33;
        }

        else
        {
          v7 = sub_1000B7EDC(sub_1001F2E34, *(v13 + 80), 0, v23, 0);
          if (!v7)
          {
            *(v13 + 126) = v11;
            *(v13 + 124) = v6;
            *(v13 + 125) = a4;
            *(v13 + 112) = a5;
            *(v13 + 120) = a6;
            return v7;
          }
        }

        sub_10000C1E8(v32);
      }

      else
      {
        v7 = 106;
        v23 = v21;
      }

      sub_10000C1E8(v23);
    }

    else
    {
      return 106;
    }
  }

  return v7;
}

void sub_1001F2E34(int a1, void *a2, uint64_t a3, uint64_t a4)
{
  v17 = 0;
  sub_1000BB9CC(a2);
  if (sub_1001F30E4(&v17, a1))
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Could not find connection\n", v6, v7, v8, v9, v10, v11, v12, v16);
      v13 = sub_10000C050(2u);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }
  }

  else
  {
    v14 = qword_100B5CD48;
    while (1)
    {
      v14 = *v14;
      if (!v14)
      {
        break;
      }

      if (*(v14 + 80) == *(v17 + 126))
      {
        v15 = *(v14 + 72);
        goto LABEL_10;
      }
    }

    v15 = 0;
LABEL_10:
    sub_1001F406C(v17 + 80, v15, v17 + 8, a4);
  }
}

uint64_t sub_1001F2EFC(uint64_t a1, _OWORD *a2, uint64_t a3, __int16 *a4)
{
  v6 = a2[1];
  v31[0] = *a2;
  v31[1] = v6;
  v7 = sub_10028EA9C(23, v31, a1, sub_1001F1F54, sub_1001F2088, sub_1001F2118, a4, &unk_1008A36C0);
  if (v7)
  {
    v8 = v7;
    if (sub_10000C240())
    {
      sub_10000AF54("OI_AVCTP_createAVRCPChannels error creating A2DP signaling", v9, v10, v11, v12, v13, v14, v15, v30);
      v16 = sub_10000C050(2u);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }
  }

  else
  {
    *&v31[0] = 0;
    v17 = qword_100B5CD48;
    while (1)
    {
      v17 = *v17;
      if (!v17)
      {
        break;
      }

      if (*(v17 + 80) == 4366)
      {
        if (sub_1001F1EA8(v31))
        {
          return 2902;
        }

        v8 = 0;
        v26 = *&v31[0];
        v27 = *(a1 + 4);
        *(*&v31[0] + 8) = *a1;
        *(v26 + 12) = v27;
        v28 = *a4;
        *(v26 + 24) = *a4;
        *(v26 + 14) = 1;
        *(v26 + 56) = 0;
        *(v26 + 64) = 0;
        *(v26 + 72) = 0;
        *(v26 + 16) = 1;
        *(v17 + 82) = v28;
        return v8;
      }
    }

    if (sub_10000C240())
    {
      sub_10000AF54("%! (%d)", v18, v19, v20, v21, v22, v23, v24, 120);
      v25 = sub_10000C050(2u);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    return 114;
  }

  return v8;
}

uint64_t sub_1001F3098(int a1, __int16 a2, __int16 a3)
{
  v7 = 0;
  result = sub_1001F30E4(&v7, a1);
  if (!result)
  {
    v6 = v7;
    *(v7 + 26) = a3;
    *(v6 + 28) = a2;
  }

  return result;
}

uint64_t sub_1001F30E4(uint64_t *a1, int a2)
{
  if (!a1)
  {
    sub_1000D660C();
  }

  if (qword_100B5CD48)
  {
    v4 = qword_100B5CD48 + 8;
    while (1)
    {
      v4 = *v4;
      if (!v4)
      {
        break;
      }

      if (*(v4 + 24) == a2 || *(v4 + 80) == a2)
      {
        result = 0;
        *a1 = v4;
        return result;
      }
    }
  }

  else if (sub_10000C240())
  {
    sub_10000AF54("Received AVCTP message after profile has been unregistered", v6, v7, v8, v9, v10, v11, v12, v14);
    v13 = sub_10000C050(2u);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_1000E09C0();
    }
  }

  return 120;
}

uint64_t sub_1001F3190(uint64_t a1, unsigned int a2, unsigned int a3)
{
  v15 = 0;
  v16 = 0;
  v5 = sub_1000E1FE8(a1);
  if (!v5)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("OI_AVCTP_cleanFastConnectAVRCP NULL Handle", v6, v7, v8, v9, v10, v11, v12, v15);
      v13 = sub_10000C050(2u);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }
  }

  if (!sub_1001F30E4(&v15, a2) && v15)
  {
    sub_1001F21B8(v15);
  }

  if (a3)
  {
    if (!sub_1000ABC7C(a3, &v16))
    {
      if (v16)
      {
        sub_10028E908(v16);
        if (v5)
        {
          sub_1000D27D8(v5);
        }
      }
    }
  }

  if (a2)
  {
    if (!sub_1000ABC7C(a2, &v16))
    {
      if (v16)
      {
        sub_10028E908(v16);
        if (v5)
        {
          sub_1000D27D8(v5);
        }
      }
    }
  }

  return 0;
}

uint64_t sub_1001F328C(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v48 = 0;
  v5 = qword_100B5CD48 + 8;
  do
  {
    v5 = *v5;
    if (!v5)
    {
      LOBYTE(v17) = 0;
      goto LABEL_23;
    }
  }

  while (*a2 != *(v5 + 8) || *(a2 + 4) != *(v5 + 12));
  v48 = v5;
  v7 = *(v5 + 16);
  v8 = sub_10000C240();
  if (v7 == 1)
  {
    if (v8)
    {
      sub_10000AF54("AVCTP connection already in progress with %:", v9, v10, v11, v12, v13, v14, v15, a2);
      v16 = sub_10000C050(2u);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    LOBYTE(v5) = 0;
    LOBYTE(v17) = 1;
  }

  else
  {
    if (v8)
    {
      sub_10000AF54("Rejecting previous pending attempt for incoming AVCTP connection", v9, v10, v11, v12, v13, v14, v15, v47);
      v18 = sub_10000C050(2u);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    if (*(v5 + 17) == 1)
    {
      sub_100290164(0, 0, 0, *(v5 + 24), 0, 0, 0);
    }

    else
    {
      sub_10029104C(*(v5 + 24), 436);
    }

    sub_1001F21B8(v5);
    v17 = *qword_100B5CD48;
    if (*qword_100B5CD48)
    {
      do
      {
        v19 = *v17;
        *(v17 + 82) = 0;
        v17 = v19;
      }

      while (v19);
    }

    LOBYTE(v5) = 1;
  }

LABEL_23:
  if (!*qword_100B5CD48)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("No AVCTP profiles registered", v29, v30, v31, v32, v33, v34, v35, v47);
      v36 = sub_10000C050(2u);
      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    goto LABEL_31;
  }

  if ((v17 & 1) != 0 || (result = sub_1001F1EA8(&v48), result))
  {
LABEL_31:
    if (sub_10000C240())
    {
      sub_10000AF54("Rejecting incoming AVCTP connection request", v37, v38, v39, v40, v41, v42, v43, v47);
      v44 = sub_10000C050(2u);
      if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    v24 = 0;
    v25 = 0;
    v26 = 0;
    v27 = a3;
    v28 = 0;
    v23 = 0;
    return sub_100290164(v24, v25, v26, v27, 0, v28, v23);
  }

  v21 = v48;
  v22 = *(a2 + 4);
  *(v48 + 8) = *a2;
  *(v21 + 12) = v22;
  *(v21 + 24) = a3;
  *(v21 + 14) = 16777217;
  *(v21 + 56) = 0;
  *(v21 + 64) = 0;
  *(v21 + 72) = 0;
  if (v5)
  {
    v23 = &unk_1008A36C0;
    v24 = sub_1001F1F54;
    v25 = sub_1001F2088;
    v26 = sub_1001F2118;
    v27 = a3;
    v28 = 1;
    return sub_100290164(v24, v25, v26, v27, 0, v28, v23);
  }

  v45 = *qword_100B5CD48;
  if (*qword_100B5CD48)
  {
    do
    {
      v46 = *v45;
      result = (v45[1])(a2);
      v45 = v46;
    }

    while (v46);
  }

  return result;
}

void sub_1001F3558(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v4 = qword_100B5CD48 + 8;
  while (1)
  {
    v4 = *v4;
    if (!v4)
    {
      break;
    }

    if (*a2 == *(v4 + 8) && *(a2 + 4) == *(v4 + 12))
    {
      v6 = *(v4 + 18);
      goto LABEL_13;
    }
  }

  if (sub_10000C240())
  {
    sub_10000AF54("Avctp Signalling channel does not exist, reject connection", v7, v8, v9, v10, v11, v12, v13, v41);
    v14 = sub_10000C050(2u);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_1000E09C0();
    }
  }

  v6 = 0;
LABEL_13:
  if (*qword_100B5CD48)
  {
    if (v6)
    {
      v15 = sub_100290164(sub_1001F23A8, sub_1001F24D0, sub_1001F25A8, a3, &unk_100AE64E0, 1, &unk_1008A36C0);
      if (v15)
      {
        v16 = v15;
        if (sub_10000C240())
        {
          sub_10000AF54("Browsing rejected due to error %!", v17, v18, v19, v20, v21, v22, v23, v16);
          v24 = sub_10000C050(2u);
          if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
          {
            sub_10080FEE0();
          }
        }
      }

      else
      {
        *(v4 + 80) = a3;
        *(v4 + 128) = 1;
      }

      return;
    }
  }

  else if (sub_10000C240())
  {
    sub_10000AF54("No AVCTP profiles registered", v25, v26, v27, v28, v29, v30, v31, v41);
    v32 = sub_10000C050(2u);
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      sub_1000E09C0();
    }
  }

  if (sub_10000C240())
  {
    sub_10000AF54("Rejecting incoming AVCTP connection request for browsing channel", v33, v34, v35, v36, v37, v38, v39, v41);
    v40 = sub_10000C050(2u);
    if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
    {
      sub_1000E09C0();
    }
  }

  sub_100290164(0, 0, 0, a3, 0, 0, 0);
}

void sub_1001F375C(unsigned __int16 *a1, uint64_t a2, unsigned __int8 *a3, unsigned int a4)
{
  if (!a3)
  {
    v203 = "buf";
    goto LABEL_127;
  }

  if (!a4)
  {
    v203 = "(length) > 0";
LABEL_127:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avctp/avctp.c", 318, v203);
  }

  v8 = *a3;
  v9 = (v8 >> 2) & 3;
  v10 = 1;
  if ((v8 & 2) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = 1;
  }

  if (!v9)
  {
    goto LABEL_14;
  }

  if (v9 == 1)
  {
    if (a4 == 1)
    {
      if (*(a1 + 23))
      {
        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avctp/avctp.c");
LABEL_30:
        if (sub_10000C240())
        {
          sub_10000AF54("Invalid packet received", v26, v27, v28, v29, v30, v31, v32, v204);
          v33 = sub_10000C050(2u);
          if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_84;
          }
        }

        return;
      }

LABEL_39:
      if (sub_10000C240())
      {
        sub_10000AF54("Invalid number of expected packets (0)", v44, v45, v46, v47, v48, v49, v50, v204);
        v51 = sub_10000C050(2u);
        if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_84;
        }
      }

      return;
    }

    v14 = a3[1];
    *(a1 + 23) = v14;
    if (!v14)
    {
      goto LABEL_39;
    }

    v10 = 2;
LABEL_14:
    if ((a4 - v10) <= 1)
    {
      goto LABEL_30;
    }

    v12 = __rev16(*&a3[v10]);
    v13 = qword_100B5CD48;
    while (1)
    {
      v13 = *v13;
      if (!v13)
      {
        break;
      }

      if (*(v13 + 80) == v12)
      {
        goto LABEL_18;
      }
    }

    if ((*a3 & 2) != 0)
    {
      return;
    }

    v52 = sub_100007618(3uLL, 0x4B27CB5DuLL);
    if (v52)
    {
      v53 = a3[2];
      v54 = *a3;
      *v52 = *a3;
      v52[2] = v53;
      *v52 = v54 | 3;
      v55 = *a1;

      sub_10028E1F0(sub_1001F4064, v55, 0, v52, 3uLL);
      return;
    }

    if (!sub_10000C240() || (sub_10000AF54("Out of memory\n", v145, v146, v147, v148, v149, v150, v151, v204), v152 = sub_10000C050(2u), !os_log_type_enabled(v152, OS_LOG_TYPE_ERROR)))
    {
LABEL_94:
      sub_10029104C(*a1, 436);
      return;
    }

LABEL_93:
    sub_1000E09C0();
    goto LABEL_94;
  }

  LOWORD(v12) = 0;
  v13 = 0;
LABEL_18:
  v15 = v8 >> 4;
  if (((v8 >> 2) & 3) <= 1)
  {
    if (v9)
    {
      a1[23] = v12;
      if (*(a1 + 1))
      {
        if (sub_10000C240())
        {
          sub_10000AF54("Unexpected start packet. Discarding previous buffer.\n", v56, v57, v58, v59, v60, v61, v62, v204);
          v63 = sub_10000C050(2u);
          if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
          {
            sub_1000E09C0();
          }
        }

        v64 = *(a1 + 1);
        if (v64)
        {
          sub_10000C1E8(v64);
          *(a1 + 1) = 0;
        }
      }

      v65 = a1[2];
      v66 = *(a1 + 23);
      *(a1 + 4) = v66 * v65;
      v67 = sub_100007618(v66 * v65, 0x1FB342A7uLL);
      *(a1 + 1) = v67;
      if (!v67)
      {
        if (!sub_10000C240())
        {
          goto LABEL_94;
        }

        sub_10000AF54("Out of memory. Terminating connection.", v102, v103, v104, v105, v106, v107, v108, v204);
        v109 = sub_10000C050(2u);
        if (!os_log_type_enabled(v109, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_94;
        }

        goto LABEL_93;
      }

      *(a1 + 22) = v15;
      *(a1 + 24) = 1;
      if (a4 < 4 || (v68 = a4 - 4, v69 = *(a1 + 4), v70 = v69 >= v68, v71 = v69 - v68, !v70))
      {
        if (sub_10000C240())
        {
          sub_10000AF54("Copy would overflow recv buffer! Discarding data.", v72, v73, v74, v75, v76, v77, v78, v204);
          v79 = sub_10000C050(2u);
          if (os_log_type_enabled(v79, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_84;
          }
        }

        return;
      }

      *(a1 + 4) = v71;
      memmove(v67, a3 + 4, v68);
      a1[10] = v68;
      if (*(a1 + 1))
      {
        return;
      }

LABEL_102:
      sub_1000D660C();
      return;
    }

    if (*(a1 + 1))
    {
      if (sub_10000C240())
      {
        sub_10000AF54("Discarding previous incomplete packet.", v16, v17, v18, v19, v20, v21, v22, v204);
        v23 = sub_10000C050(2u);
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          sub_1000E09C0();
        }
      }

      v24 = *(a1 + 1);
      if (v24)
      {
        sub_10000C1E8(v24);
        *(a1 + 1) = 0;
      }
    }

    if (a1[24])
    {
      v25 = *(v13 + 64);
      if (v25)
      {
        if (a4 >= 3)
        {
          v25(a2, v8 >> 4, v11, v8 & 1, a3 + 3, (a4 - 3));
          goto LABEL_101;
        }

        if (sub_10000C240())
        {
          sub_10000AF54("Invalid Data Length", v161, v162, v163, v164, v165, v166, v167, v204);
          v168 = sub_10000C050(2u);
          if (os_log_type_enabled(v168, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_100;
          }
        }
      }

      else if (sub_10000C240())
      {
        sub_10000AF54("No browsing callback defined !", v153, v154, v155, v156, v157, v158, v159, v204);
        v160 = sub_10000C050(2u);
        if (os_log_type_enabled(v160, OS_LOG_TYPE_ERROR))
        {
LABEL_100:
          sub_1000E09C0();
        }
      }
    }

    else
    {
      if (a4 >= 3)
      {
        (*(v13 + 32))(a2, v8 >> 4, v11, v8 & 1, a3 + 3, (a4 - 3));
        goto LABEL_101;
      }

      if (sub_10000C240())
      {
        sub_10000AF54("Invalid Data Length", v137, v138, v139, v140, v141, v142, v143, v204);
        v144 = sub_10000C050(2u);
        if (os_log_type_enabled(v144, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_100;
        }
      }
    }

LABEL_101:
    if (!*(a1 + 1))
    {
      return;
    }

    goto LABEL_102;
  }

  if (v9 == 2)
  {
    v34 = *(a1 + 1);
    if (!v34)
    {
      if (sub_10000C240())
      {
        sub_10000AF54("Unexpected continue packet. Discarding data.", v94, v95, v96, v97, v98, v99, v100, v204);
        v101 = sub_10000C050(2u);
        if (os_log_type_enabled(v101, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_84;
        }
      }

      return;
    }

    v35 = *(a1 + 24) + 1;
    *(a1 + 24) = v35;
    if (*(a1 + 23) == v35)
    {
      if (sub_10000C240())
      {
        sub_10000AF54("Too many continue packets. Discarding data.", v36, v37, v38, v39, v40, v41, v42, v204);
        v43 = sub_10000C050(2u);
        if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
        {
LABEL_119:
          sub_1000E09C0();
        }
      }
    }

    else
    {
      if (*(a1 + 22) == v15)
      {
        v118 = a4 - 1;
        v119 = *(a1 + 4);
        v70 = v119 >= v118;
        v120 = v119 - v118;
        if (v70)
        {
          *(a1 + 4) = v120;
          memmove((v34 + a1[10]), a3 + 1, v118);
          a1[10] += v118;
        }

        else if (sub_10000C240())
        {
          sub_10000AF54("Copy would overflow recv buffer! Discarding data.", v121, v122, v123, v124, v125, v126, v127, v204);
          v128 = sub_10000C050(2u);
          if (os_log_type_enabled(v128, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_84;
          }
        }

        return;
      }

      if (sub_10000C240())
      {
        sub_10000AF54("Received CONTINUE fragment with mismatched transaction number. Discarding data.", v177, v178, v179, v180, v181, v182, v183, v204);
        v184 = sub_10000C050(2u);
        if (os_log_type_enabled(v184, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_119;
        }
      }
    }

LABEL_122:
    v202 = *(a1 + 1);
    if (v202)
    {
      sub_10000C1E8(v202);
      *(a1 + 1) = 0;
    }

    return;
  }

  v80 = *(a1 + 1);
  if (!v80)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Unexpected END fragment. Discarding data.", v110, v111, v112, v113, v114, v115, v116, v204);
      v117 = sub_10000C050(2u);
      if (os_log_type_enabled(v117, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_119;
      }
    }

    goto LABEL_122;
  }

  v81 = *(a1 + 24) + 1;
  *(a1 + 24) = v81;
  if (*(a1 + 23) != v81)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Wrong number of fragments. Discarding data.", v129, v130, v131, v132, v133, v134, v135, v204);
      v136 = sub_10000C050(2u);
      if (os_log_type_enabled(v136, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_119;
      }
    }

    goto LABEL_122;
  }

  if (*(a1 + 22) != v15)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Received END fragment with mismatched transaction number. Discarding data.", v169, v170, v171, v172, v173, v174, v175, v204);
      v176 = sub_10000C050(2u);
      if (os_log_type_enabled(v176, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_119;
      }
    }

    goto LABEL_122;
  }

  v82 = qword_100B5CD48;
  do
  {
    v82 = *v82;
    if (!v82)
    {
      if (sub_10000C240())
      {
        sub_10000AF54("Profile %d not found\n", v185, v186, v187, v188, v189, v190, v191, a1[23]);
        v192 = sub_10000C050(2u);
        if (os_log_type_enabled(v192, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_119;
        }
      }

      goto LABEL_122;
    }
  }

  while (*(v82 + 80) != a1[23]);
  v83 = a4 - 1;
  v84 = *(a1 + 4);
  v70 = v84 >= v83;
  v85 = v84 - v83;
  if (v70)
  {
    *(a1 + 4) = v85;
    memmove((v80 + a1[10]), a3 + 1, v83);
    if (a1[24])
    {
      v193 = *(v82 + 64);
      if (!v193)
      {
        if (sub_10000C240())
        {
          sub_10000AF54("No browsing callback defined !", v194, v195, v196, v197, v198, v199, v200, v204);
          v201 = sub_10000C050(2u);
          if (os_log_type_enabled(v201, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_119;
          }
        }

        goto LABEL_122;
      }
    }

    else
    {
      v193 = *(v82 + 32);
    }

    v193(a2, v8 >> 4, v11, v8 & 1, *(a1 + 1), (a4 + a1[10] - 1));
    goto LABEL_122;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("Copy would overflow recv buffer! Discarding data.", v86, v87, v88, v89, v90, v91, v92, v204);
    v93 = sub_10000C050(2u);
    if (os_log_type_enabled(v93, OS_LOG_TYPE_ERROR))
    {
LABEL_84:
      sub_1000E09C0();
    }
  }
}

void sub_1001F406C(unsigned __int16 *a1, void (*a2)(uint64_t, void, void, void, void *, void, uint64_t), uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a4)
  {
    v8 = a1[20];
    v9 = a1[21];
    v4 = (v8 - v9);
    if (v8 != v9)
    {
      v10 = a1[1];
      if (v10 <= (v8 - v9))
      {
        v11 = v10 - 1;
      }

      else
      {
        v11 = v8 - v9;
      }

      v12 = sub_1000B914C(2u);
      if (v12)
      {
        v13 = v12;
        v14 = sub_100007618(1uLL, 0x649002DAuLL);
        if (v14)
        {
          if (v10 <= v4)
          {
            v15 = 8;
          }

          else
          {
            v15 = 12;
          }

          *v14 = v15 | (16 * *(a1 + 44)) | (2 * (*(a1 + 45) != 1));
          v16 = sub_10001F968(v13, v14, 1uLL, 1u);
          if (!v16)
          {
            v16 = sub_10001F968(v13, (*(a1 + 4) + a1[21]), v11, 2u);
            if (!v16)
            {
              v17 = *(a1 + 48) ? sub_1001F2E34 : sub_1001F2AF8;
              v16 = sub_1000B7EDC(v17, *a1, 0, v13, 0);
              if (!v16)
              {
                a1[21] += v11;
                return;
              }
            }
          }

          v4 = v16;
        }

        else
        {
          v4 = 106;
        }

        sub_1000BB9CC(v13);
      }

      else
      {
        if (sub_10000C240())
        {
          sub_10000AF54("Could not allocate mbuf\n", v18, v19, v20, v21, v22, v23, v24, v35);
          v25 = sub_10000C050(2u);
          if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
          {
            sub_1000E09C0();
          }
        }

        v4 = 106;
      }
    }
  }

  v26 = *(a1 + 4);
  *(a1 + 4) = 0;
  if (a2)
  {
    a2(a3, a1[23], *(a1 + 44), *(a1 + 45), v26, a1[20], v4);
  }

  else
  {
    if (v26)
    {
      sub_10000C1E8(v26);
    }

    if (sub_10000C240())
    {
      sub_10000AF54("Could not find profile %d\n", v27, v28, v29, v30, v31, v32, v33, a1[23]);
      v34 = sub_10000C050(2u);
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }
  }
}

void sub_1001F4290(void **a1, unsigned int a2)
{
  v3 = *a1;
  if (v3)
  {
    if (!a2)
    {
      goto LABEL_13;
    }

    v4 = v3 + 1;
    v5 = a2;
    do
    {
      v6 = *(v4 - 8);
      v7 = v6 > 8;
      v8 = (1 << v6) & 0x10E;
      if (v7 || v8 == 0)
      {
        if (*v4)
        {
          sub_10000C1E8(*v4);
          *v4 = 0;
        }
      }

      v4 += 2;
      --v5;
    }

    while (v5);
    v3 = *a1;
    if (*a1)
    {
LABEL_13:
      sub_10000C1E8(v3);
      *a1 = 0;
    }
  }
}

uint64_t sub_1001F4328(uint64_t a1, unsigned int a2, void **a3, _BYTE *a4)
{
  *a4 = 0;
  v8 = sub_100007618(16 * a2, 0x105204037B82EA9uLL);
  *a3 = v8;
  if (v8)
  {
    if (a2)
    {
      v9 = 0;
      v10 = 16 * a2;
      do
      {
        v11 = *a3;
        ++*a4;
        v11[v9] = *a1;
        *&v11[v9] = *a1;
        if (*(a1 + 3))
        {
          v12 = sub_100007618(*(a1 + 3), 0x590214E2uLL);
          *&v11[v9 + 8] = v12;
          if (!v12)
          {
            goto LABEL_9;
          }

          memmove(v12, *(a1 + 8), *(a1 + 3));
        }

        a1 += 16;
        v9 += 16;
      }

      while (v10 != v9);
    }

    return 0;
  }

  else
  {
LABEL_9:
    sub_1001F4290(a3, *a4);
    *a4 = 0;
    return 106;
  }
}

uint64_t sub_1001F4410()
{
  if (qword_100B5CD50)
  {
    return *(qword_100B5CD50 + 102);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1001F4454(int a1, _WORD *a2)
{
  if (!dword_100BCE23C)
  {
    return 408;
  }

  v2 = *(qword_100B5CD50 + 98);
  if (!*(qword_100B5CD50 + 98))
  {
    return 120;
  }

  for (i = *(qword_100B5CD50 + 16); !i[19] || i[19] != a1; i += 32)
  {
    if (!--v2)
    {
      return 120;
    }
  }

  result = 0;
  *a2 = *i;
  return result;
}

uint64_t sub_1001F44B4(uint64_t a1, _WORD *a2)
{
  if (!dword_100BCE23C)
  {
    return 408;
  }

  v2 = *(qword_100B5CD50 + 98);
  if (!*(qword_100B5CD50 + 98))
  {
    return 120;
  }

  for (i = *(qword_100B5CD50 + 16) + 28; ; i += 64)
  {
    if (*(i + 10))
    {
      if (*i == *a1 && *(i + 4) == *(a1 + 4))
      {
        break;
      }
    }

    if (!--v2)
    {
      return 120;
    }
  }

  result = 0;
  *a2 = *(i + 10);
  return result;
}

uint64_t sub_1001F4528(uint64_t a1, _WORD *a2)
{
  if (!dword_100BCE23C)
  {
    return 408;
  }

  v2 = *(qword_100B5CD50 + 98);
  if (!*(qword_100B5CD50 + 98))
  {
    return 120;
  }

  for (i = *(qword_100B5CD50 + 16) + 28; ; i += 64)
  {
    if (*(i + 10))
    {
      if (*i == *a1 && *(i + 4) == *(a1 + 4))
      {
        break;
      }
    }

    if (!--v2)
    {
      return 120;
    }
  }

  result = 0;
  *a2 = *(i - 28);
  return result;
}

uint64_t sub_1001F45A0(int a1, _WORD *a2)
{
  if (!dword_100BCE23C)
  {
    return 408;
  }

  if (a1)
  {
    v2 = *(*(qword_100B5CD50 + 16) + ((a1 - 1) << 6) + 38);
    if (v2)
    {
      result = 0;
      *a2 = v2;
      return result;
    }

    if (!sub_10000C240())
    {
      return 120;
    }

    sub_10000AF54("CID from A2DP Handle not found", v12, v13, v14, v15, v16, v17, v18, v20);
    v19 = sub_10000C050(3u);
    if (!os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      return 120;
    }
  }

  else
  {
    if (!sub_10000C240())
    {
      return 120;
    }

    sub_10000AF54("A2DP handle was 0", v4, v5, v6, v7, v8, v9, v10, v20);
    v11 = sub_10000C050(3u);
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      return 120;
    }
  }

  sub_1000E09C0();
  return 120;
}

uint64_t sub_1001F4688(__int16 a1, _WORD *a2)
{
  if (!dword_100BCE23C)
  {
    return 408;
  }

  if (*(qword_100B5CD50 + 97) <= (a1 - 1))
  {
    return 120;
  }

  v2 = *(qword_100B5CD50 + 8);
  if (!v2)
  {
    return 120;
  }

  v3 = *(v2 + 144 * (a1 - 1) + 135);
  if (v3 == 255)
  {
    return 120;
  }

  v4 = *(qword_100B5CD50 + 16);
  if (!v4)
  {
    return 120;
  }

  result = 0;
  *a2 = *(v4 + (v3 << 6));
  return result;
}

uint64_t sub_1001F46FC(uint64_t a1, _WORD *a2)
{
  if (!dword_100BCE23C)
  {
    return 408;
  }

  v13 = 0;
  result = sub_1001F4528(a1, &v13);
  if (result)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("MediaCID from BT Address was not found", v4, v5, v6, v7, v8, v9, v10, v12);
      v11 = sub_10000C050(3u);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    return 120;
  }

  else
  {
    *a2 = *(*(qword_100B5CD50 + 8) + 144 * (v13 - 1) + 128);
  }

  return result;
}

uint64_t sub_1001F47C0(int a1)
{
  if (!dword_100BCE23C)
  {
    return 0;
  }

  if (!qword_100B5CD50)
  {
    goto LABEL_10;
  }

  v1 = *(qword_100B5CD50 + 98);
  if (!*(qword_100B5CD50 + 98))
  {
    goto LABEL_10;
  }

  v2 = *(qword_100B5CD50 + 16);
  v3 = 16320;
  while (*(v2 + 38) != a1)
  {
    v2 += 64;
    v3 -= 64;
    if (!--v1)
    {
      goto LABEL_10;
    }
  }

  if (!v3)
  {
LABEL_10:
    if (sub_10000C240())
    {
      sub_10000AF54("No signal", v4, v5, v6, v7, v8, v9, v10, v13);
      v11 = sub_10000C050(3u);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    return 0;
  }

  return v2;
}

uint64_t sub_1001F4880(void *a1, char a2, _OWORD *a3, uint64_t a4)
{
  if (sub_10000C240())
  {
    sub_10000AF54("AVDTP_Register(c=0x%x,sendRsp=%B,pSignalingChannel=0x%x,pMediaChannel=0x%x)", v8, v9, v10, v11, v12, v13, v14, a1);
    v15 = sub_10000C050(3u);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v32 = sub_10000C0FC();
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
    }
  }

  if (dword_100BCE23C)
  {
    if (a1)
    {
      goto LABEL_6;
    }

LABEL_59:
    sub_1000D660C();
    return 101;
  }

  v20 = sub_1003045A0(3u);
  if (!v20)
  {
    goto LABEL_59;
  }

  v21 = v20;
  qword_100B5CD50 = sub_1001BBBD8(0x68uLL, 0x1060040B82124B5uLL);
  if (!qword_100B5CD50)
  {
    return 106;
  }

  v22 = sub_1001BBBD8(40 * *v21, 0x10200409C40F318uLL);
  v23 = qword_100B5CD50;
  *qword_100B5CD50 = v22;
  if (!v22)
  {
    goto LABEL_81;
  }

  if (*v21)
  {
    v24 = 0;
    do
    {
      sub_1001F57F4(v22);
      v22[25] = 0;
      v22 += 40;
      ++v24;
    }

    while (v24 < *v21);
  }

  v25 = sub_1001BBBD8(144 * v21[1], 0x10F2040AB53EE5BuLL);
  v23 = qword_100B5CD50;
  *(qword_100B5CD50 + 8) = v25;
  if (!v25)
  {
    goto LABEL_81;
  }

  if (v21[1])
  {
    v26 = 0;
    v27 = v25 + 137;
    do
    {
      *(v27 - 5) = 0;
      *(v27 - 137) = 0;
      *(v27 - 9) = 0;
      sub_1001C3A30(0);
      *v27 = -1;
      *(v27 - 1) = -65281;
      ++v26;
      v27 += 144;
    }

    while (v26 < v21[1]);
  }

  v28 = sub_1001BBBD8(v21[2] << 6, 0x10300403BACA1B3uLL);
  v23 = qword_100B5CD50;
  *(qword_100B5CD50 + 16) = v28;
  if (!v28)
  {
LABEL_81:
    if (*(v23 + 8))
    {
      sub_10000C1E8(*(v23 + 8));
      v23 = qword_100B5CD50;
      *(qword_100B5CD50 + 8) = 0;
    }

    if (*v23)
    {
      sub_10000C1E8(*v23);
      v23 = qword_100B5CD50;
      *qword_100B5CD50 = 0;
    }

    sub_10000C1E8(v23);
    qword_100B5CD50 = 0;
    return 106;
  }

  *(v23 + 96) = *v21;
  *(v23 + 97) = *(v21 + 1);
  *(v23 + 100) = 1;
  dword_100BCE23C = 1;
  if (!a1)
  {
    goto LABEL_59;
  }

LABEL_6:
  if (!*a1)
  {
    sub_1000D660C();
    if (!*a1)
    {
      return 101;
    }
  }

  if (!a1[1])
  {
    sub_1000D660C();
    if (!a1[1])
    {
      return 101;
    }
  }

  if (!a1[2])
  {
    sub_1000D660C();
    if (!a1[2])
    {
      return 101;
    }
  }

  if (!a1[3])
  {
    sub_1000D660C();
    if (!a1[3])
    {
      return 101;
    }
  }

  if (!a1[4])
  {
    sub_1000D660C();
    if (!a1[4])
    {
      return 101;
    }
  }

  if (!a1[5])
  {
    sub_1000D660C();
    if (!a1[5])
    {
      return 101;
    }
  }

  if (!a1[6])
  {
    sub_1000D660C();
    if (!a1[6])
    {
      return 101;
    }
  }

  if (!a1[7])
  {
    sub_1000D660C();
    if (!a1[7])
    {
      return 101;
    }
  }

  if (!a1[8])
  {
    sub_1000D660C();
    if (!a1[8])
    {
      return 101;
    }
  }

  if (!a1[9])
  {
    sub_1000D660C();
    if (!a1[9])
    {
      return 101;
    }
  }

  if (!a1[10])
  {
    sub_1000D660C();
    if (!a1[10])
    {
      return 101;
    }
  }

  if (!a1[11])
  {
    sub_1000D660C();
    if (!a1[11])
    {
      return 101;
    }
  }

  if (!a1[12])
  {
    sub_1000D660C();
    if (!a1[12])
    {
      return 101;
    }
  }

  if (!a1[13])
  {
    sub_1000D660C();
    if (!a1[13])
    {
      return 101;
    }
  }

  if (!a1[16])
  {
    sub_1000D660C();
    if (!a1[16])
    {
      return 101;
    }
  }

  if (!a1[21])
  {
    sub_1000D660C();
    if (!a1[21])
    {
      return 101;
    }
  }

  if (!a1[22])
  {
    sub_1000D660C();
    if (!a1[22])
    {
      return 101;
    }
  }

  if (!a1[23])
  {
    sub_1000D660C();
    if (!a1[23])
    {
      return 101;
    }
  }

  if (!a1[24])
  {
    sub_1000D660C();
    if (!a1[24])
    {
      return 101;
    }
  }

  v16 = qword_100B5CD50;
  *(qword_100B5CD50 + 24) = a1;
  *(v16 + 103) = a2;
  if (!a3)
  {
    v18 = 0;
    goto LABEL_69;
  }

  v17 = *a3;
  if (*a3)
  {
    v18 = 0;
    v19 = a3[1];
    *(v16 + 32) = *a3;
    *(v16 + 48) = v19;
LABEL_69:
    v17 = 1;
    goto LABEL_71;
  }

  v18 = 101;
LABEL_71:
  if (a4)
  {
    if (!*a4)
    {
      v18 = 101;
LABEL_78:
      sub_1001F52E8();
      return v18;
    }

    v30 = *(a4 + 16);
    *(v16 + 64) = *a4;
    *(v16 + 80) = v30;
  }

  if (!v17)
  {
    goto LABEL_78;
  }

  v18 = sub_1002967FC(25, sub_1001F4D28);
  if (v18)
  {
    goto LABEL_78;
  }

  return v18;
}

void sub_1001F4D28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v95 = 0;
  v5 = qword_100B5CD50;
  ++*(qword_100B5CD50 + 102);
  ++*(v5 + 101);
  if (!sub_1001F44B4(a2, &v95))
  {
    v16 = *(v5 + 97);
    if (!*(v5 + 97))
    {
LABEL_16:
      if (sub_10000C240())
      {
        sub_10000AF54("Rejecting connect request %!", v19, v20, v21, v22, v23, v24, v25, 2901);
        v26 = sub_10000C050(3u);
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          sub_1000E09C0();
        }
      }

      v27 = sub_100290164(sub_1001F65C4, sub_1001F5B1C, sub_1001F5DE4, a3, qword_100B5CD50 + 32, 0, &unk_100AE6500);
      if (!v27)
      {
        return;
      }

      v28 = v27;
      if (!sub_10000C240())
      {
        return;
      }

      sub_10000AF54("OI_L2CAP_Accept (reject) failed %!", v29, v30, v31, v32, v33, v34, v35, v28);
      v36 = sub_10000C050(3u);
      if (!os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        return;
      }

LABEL_22:
      sub_1000E09C0();
      return;
    }

    v17 = *(v5 + 8) + 128;
    while (1)
    {
      v18 = *(v17 + 7);
      if (v18 != 255 && *(v17 + 6) == 2 && *(*(v5 + 16) + (v18 << 6) + 38) == v95)
      {
        break;
      }

      v17 += 144;
      if (!--v16)
      {
        goto LABEL_16;
      }
    }

    if (*v17)
    {
      if (!sub_10000C240() || (sub_10000AF54("Invalid ConnectInd Received: (mediaCID != 0)", v70, v71, v72, v73, v74, v75, v76, v94), v77 = sub_10000C050(3u), !os_log_type_enabled(v77, OS_LOG_TYPE_ERROR)))
      {
LABEL_55:
        if (!sub_10000C240())
        {
          return;
        }

        sub_10000AF54("Unknown Connect Indication Received. cid=%d psm=%d addr=%:", v86, v87, v88, v89, v90, v91, v92, a3);
        v93 = sub_10000C050(3u);
        if (!os_log_type_enabled(v93, OS_LOG_TYPE_ERROR))
        {
          return;
        }

        goto LABEL_22;
      }
    }

    else
    {
      *v17 = a3;
      sub_1001C3A30(a3);
      if (!sub_100290164(sub_1001FF38C, sub_1001FF59C, sub_1001FF7A0, a3, qword_100B5CD50 + 64, 1, &unk_100AE6500))
      {

        sub_10028D5C0(a3, sub_100200410);
        return;
      }

      if (!sub_10000C240())
      {
        goto LABEL_55;
      }

      sub_10000AF54("OI_L2CAP_Accept failed! cid=%d error = %!", v78, v79, v80, v81, v82, v83, v84, a3);
      v85 = sub_10000C050(3u);
      if (!os_log_type_enabled(v85, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_55;
      }
    }

    sub_1000E09C0();
    goto LABEL_55;
  }

  if (*(v5 + 98))
  {
    v6 = 0;
    v7 = (*(v5 + 16) + 52);
    while (*(v7 - 7))
    {
      ++v6;
      v7 += 16;
      if (*(v5 + 98) == v6)
      {
        goto LABEL_6;
      }
    }

    *(v7 - 26) = v6 + 1;
    v37 = *a2;
    *(v7 - 10) = *(a2 + 4);
    *(v7 - 6) = v37;
    *(v7 - 7) = a3;
    *(v7 - 8) = -1;
    *v7 = -1;
    v38 = sub_100290FA4(a3, sub_100200534);
    if (v38)
    {
      v39 = v38;
      if (sub_10000C240())
      {
        sub_10000AF54("AVDTP disconnect complete not registered with %!", v40, v41, v42, v43, v44, v45, v46, v39);
        v47 = sub_10000C050(3u);
        if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
        {
          sub_10080F604();
        }
      }
    }

    if (sub_10000C240())
    {
      sub_10000AF54("AVDTP_CONNECT_IND(addr=%:) cid %d", v48, v49, v50, v51, v52, v53, v54, a2);
      v55 = sub_10000C050(3u);
      if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
      {
        v56 = sub_10000C0FC();
        *buf = 136446210;
        v97 = v56;
        _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
      }
    }

    if (dword_100BCE23C)
    {
      v57 = *(qword_100B5CD50 + 98);
      if (*(qword_100B5CD50 + 98))
      {
        v58 = *(qword_100B5CD50 + 16);
        while (!v58[19] || v58[19] != a3)
        {
          v58 += 32;
          if (!--v57)
          {
            goto LABEL_38;
          }
        }

        v69 = *v58;
        goto LABEL_44;
      }

LABEL_38:
      v60 = 120;
    }

    else
    {
      v60 = 408;
    }

    if (sub_10000C240())
    {
      sub_10000AF54("AVDTP did not find a2dp handle from CID with result %!", v61, v62, v63, v64, v65, v66, v67, v60);
      v68 = sub_10000C050(3u);
      if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
      {
        sub_10080F604();
      }
    }

    v69 = 0;
LABEL_44:
    (**(qword_100B5CD50 + 24))(a2, v69);
    return;
  }

LABEL_6:
  if (sub_10000C240())
  {
    sub_10000AF54("AVDTP signaling channel allocation failed, rejecting", v8, v9, v10, v11, v12, v13, v14, v94);
    v15 = sub_10000C050(3u);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }

  sub_100290164(sub_1001F65C4, sub_1001F5B1C, sub_1001F5DE4, a3, qword_100B5CD50 + 32, 0, &unk_100AE6500);
}

uint64_t sub_1001F52E8()
{
  if (!dword_100BCE23C)
  {
    return 408;
  }

  v0 = qword_100B5CD50;
  if (*(qword_100B5CD50 + 16))
  {
    sub_10000C1E8(*(qword_100B5CD50 + 16));
    v0 = qword_100B5CD50;
    *(qword_100B5CD50 + 16) = 0;
  }

  if (v0[1])
  {
    sub_10000C1E8(v0[1]);
    v0 = qword_100B5CD50;
    *(qword_100B5CD50 + 8) = 0;
  }

  if (*v0)
  {
    sub_10000C1E8(*v0);
    v0 = qword_100B5CD50;
    *qword_100B5CD50 = 0;
  }

  sub_10000C1E8(v0);
  result = 0;
  qword_100B5CD50 = 0;
  dword_100BCE23C = 0;
  return result;
}

uint64_t sub_1001F537C()
{
  if (sub_10000C240())
  {
    sub_10000AF54("AVDTP_Deregister", v0, v1, v2, v3, v4, v5, v6, *v13);
    v7 = sub_10000C050(3u);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v13 = 136446210;
      *&v13[4] = sub_10000C0FC();
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, " %{public}s", v13, 0xCu);
    }
  }

  if (!dword_100BCE23C)
  {
    return 408;
  }

  v8 = *(qword_100B5CD50 + 96);
  if (*(qword_100B5CD50 + 96))
  {
    v9 = (*qword_100B5CD50 + 25);
    while (1)
    {
      v10 = *v9;
      v9 += 40;
      if (v10)
      {
        return 145;
      }

      if (!--v8)
      {
        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    v11 = sub_1002969F8(25);
    LODWORD(result) = sub_1001F52E8();
    if (v11)
    {
      return v11;
    }

    else
    {
      return result;
    }
  }
}

uint64_t sub_1001F5498(uint64_t a1, char a2, uint64_t a3, int a4, char a5, _BYTE *a6)
{
  if (sub_10000C240())
  {
    sub_10000AF54("AVDTP_RegisterMultipoint(mediaType=%d,count=%d,endpointType=%d,caps=0x%x,numCaps=%d)", v12, v13, v14, v15, v16, v17, v18, a1);
    v19 = sub_10000C050(3u);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v36 = sub_10000C0FC();
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
    }
  }

  if (!dword_100BCE23C)
  {
    return 408;
  }

  if (a6 && a3 && a4)
  {
    v20 = qword_100B5CD50;
    v21 = *(qword_100B5CD50 + 100);
    if (v21 == 63 || v21 == 0)
    {
      LOBYTE(v21) = 1;
      *(qword_100B5CD50 + 100) = 1;
    }

    v23 = 0;
    v24 = *(v20 + 96);
    v25 = *v20 + 25;
    v26 = *v20 + 30;
    result = 104;
    while (!v24)
    {
LABEL_24:
      LOBYTE(v21) = v21 + 1;
      *(v20 + 100) = v21;
      if (v23++ >= 0xFE)
      {
        return result;
      }
    }

    v28 = v25;
    v29 = v24;
    v30 = 10200;
    while (1)
    {
      v31 = *v28;
      v28 += 40;
      if (v31 == v21)
      {
        break;
      }

      v30 -= 40;
      if (!--v29)
      {
        goto LABEL_21;
      }
    }

    if (v30)
    {
      goto LABEL_24;
    }

LABEL_21:
    v32 = 0;
    v33 = v26;
    while (*(v33 - 5))
    {
      ++v32;
      v33 += 40;
      if (v32 >= v24)
      {
        goto LABEL_24;
      }
    }

    if (*(v33 - 22))
    {
      sub_1000D660C();
    }

    if (*(v33 - 14))
    {
      sub_1000D660C();
    }

    result = 0;
    *(v33 - 5) = v21;
    *(v33 - 2) = 0;
    v33[2] = 0;
    *(v33 - 6) = -1;
    *(v33 - 4) = a1;
    *(v33 - 3) = a2;
    *(v33 - 30) = a3;
    *v33 = a4;
    *(v33 - 2) = a5;
    *a6 = *(qword_100B5CD50 + 100);
  }

  else
  {
    sub_1000D660C();
    return 101;
  }

  return result;
}

uint64_t sub_1001F56BC(uint64_t a1)
{
  if (sub_10000C240())
  {
    sub_10000AF54("AVDTP_DeregisterEndpoint(seid=%d)", v2, v3, v4, v5, v6, v7, v8, a1);
    v9 = sub_10000C050(3u);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v15 = sub_10000C0FC();
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
    }
  }

  if (!dword_100BCE23C)
  {
    return 408;
  }

  v10 = *(qword_100B5CD50 + 96);
  if (!*(qword_100B5CD50 + 96))
  {
    return 120;
  }

  v11 = *qword_100B5CD50;
  v12 = 10200;
  while (*(v11 + 25) != a1)
  {
    v11 += 40;
    v12 -= 40;
    if (!--v10)
    {
      return 120;
    }
  }

  if (!v12)
  {
    return 120;
  }

  sub_1001F57F4(v11);
  sub_1001F57F4(v11);
  result = 0;
  *(v11 + 25) = 0;
  return result;
}

void sub_1001F57F4(uint64_t a1)
{
  if (sub_10000C240())
  {
    sub_10000AF54("ResetEndpoint %lx", v2, v3, v4, v5, v6, v7, v8, a1);
    v9 = sub_10000C050(3u);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v11 = sub_10000C0FC();
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
    }
  }

  *(a1 + 29) = 0;
  sub_1001F4290((a1 + 8), *(a1 + 31));
  *(a1 + 31) = 0;
  sub_1001F4290((a1 + 16), *(a1 + 32));
  *(a1 + 32) = 0;
  *(a1 + 24) = -1;
}

uint64_t sub_1001F58E4(void *a1, uint64_t a2, __int16 a3, uint64_t a4)
{
  v4 = a1;
  v5 = qword_100B5CD50;
  ++*(qword_100B5CD50 + 102);
  if (!dword_100BCE23C)
  {
    v7 = 408;
    goto LABEL_8;
  }

  v6 = *(v5 + 98);
  if (!*(v5 + 98))
  {
LABEL_6:
    v7 = 120;
LABEL_8:
    sub_1001F6860(a1);
    v37 = 0;
    v36 = 0;
    goto LABEL_9;
  }

  v7 = a4;
  v9 = *(v5 + 16) + 28;
  while (*(v9 + 10) != a1)
  {
    v9 += 64;
    if (!--v6)
    {
      goto LABEL_6;
    }
  }

  v34 = *v9;
  v37 = *(v9 + 4);
  v36 = v34;
  if (a4)
  {
    sub_1001F6860(a1);
  }

  else
  {
    v35 = sub_1001F47C0(a1);
    if (!v35)
    {
      sub_1000D660C();
    }

    v7 = 0;
    *(v35 + 34) = a3;
  }

LABEL_9:
  if (sub_10000C240())
  {
    sub_10000AF54("AVDTP_CONNECT_CFM(addr=%:,result=%!)", v10, v11, v12, v13, v14, v15, v16, &v36);
    v17 = sub_10000C050(3u);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = sub_10000C0FC();
      *buf = 136446210;
      v39 = v18;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
    }
  }

  if (!dword_100BCE23C)
  {
    v23 = 408;
LABEL_22:
    if (sub_10000C240())
    {
      sub_10000AF54("AVDTP did not find a2dp handle from CID with result %!", v24, v25, v26, v27, v28, v29, v30, v7);
      v31 = sub_10000C050(3u);
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        sub_10080F604();
      }
    }

    v32 = 0;
    if (v7)
    {
      v7 = v7;
    }

    else
    {
      v7 = v23;
    }

    v19 = qword_100B5CD50;
    return (*(*(v19 + 24) + 8))(&v36, v32, v7);
  }

  v19 = qword_100B5CD50;
  v20 = *(qword_100B5CD50 + 98);
  if (!*(qword_100B5CD50 + 98))
  {
LABEL_20:
    v23 = 120;
    goto LABEL_22;
  }

  v21 = *(qword_100B5CD50 + 16);
  while (!v21[19] || v21[19] != v4)
  {
    v21 += 32;
    if (!--v20)
    {
      goto LABEL_20;
    }
  }

  v32 = *v21;
  return (*(*(v19 + 24) + 8))(&v36, v32, v7);
}

void sub_1001F5B1C(void *a1, uint64_t a2)
{
  if (!dword_100BCE23C)
  {
    return;
  }

  v4 = *(qword_100B5CD50 + 8);
  v40 = 0;
  v39 = 0;
  if (sub_10000C240())
  {
    sub_10000AF54("Signaling channel disconnected (CID %d) %!", v5, v6, v7, v8, v9, v10, v11, a1);
    v12 = sub_10000C050(3u);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v42 = sub_10000C0FC();
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
    }
  }

  v13 = sub_1001F47C0(a1);
  if (v13)
  {
    v14 = v13;
    v15 = qword_100B5CD50;
    v16 = *(qword_100B5CD50 + 97);
    if (*(qword_100B5CD50 + 97))
    {
      do
      {
        if (*(v15 + 16) + (*(v4 + 135) << 6) == v14)
        {
          if (*(v4 + 128))
          {
            if (!sub_10029104C(*(v4 + 128), 436))
            {
              sub_1001F9250(v4, 7u);
              return;
            }

            if (sub_10000C240())
            {
              sub_10000AF54("L2CAP_Disconnect: (CID %d) %!", v17, v18, v19, v20, v21, v22, v23, *(v4 + 128));
              v24 = sub_10000C050(3u);
              if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
              {
                v25 = sub_10000C0FC();
                *buf = 136446210;
                v42 = v25;
                _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
              }
            }

            sub_1001FF59C(*(v4 + 128), a2);
          }

          sub_1001F8264(v4);
          v15 = qword_100B5CD50;
        }

        v4 += 144;
        --v16;
      }

      while (v16);
    }

    v39 = *(v14 + 28);
    v40 = *(v14 + 32);
  }

  if (!dword_100BCE23C)
  {
    v29 = 408;
LABEL_27:
    if (sub_10000C240())
    {
      sub_10000AF54("Signaling disconnect error %!", v30, v31, v32, v33, v34, v35, v36, v29);
      v37 = sub_10000C050(3u);
      if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    return;
  }

  v26 = *(qword_100B5CD50 + 98);
  if (!*(qword_100B5CD50 + 98))
  {
LABEL_25:
    v29 = 120;
    goto LABEL_27;
  }

  v27 = *(qword_100B5CD50 + 16);
  while (!v27[19] || v27[19] != a1)
  {
    v27 += 32;
    if (!--v26)
    {
      goto LABEL_25;
    }
  }

  v38 = *v27;
  sub_1001F6860(a1);
  (*(*(qword_100B5CD50 + 24) + 16))(&v39, v38, a2);
}

void sub_1001F5DE4(uint64_t a1, unsigned __int8 *a2, unsigned int a3)
{
  if (a2)
  {
    if (a3)
    {
      goto LABEL_3;
    }

LABEL_11:
    if (sub_10000C240())
    {
      sub_10000AF54("Invalid packet length!", v17, v18, v19, v20, v21, v22, v23, v106);
      v24 = sub_10000C050(3u);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_13;
      }
    }

    return;
  }

  sub_1000D660C();
  if (!a3)
  {
    goto LABEL_11;
  }

LABEL_3:
  v6 = *a2 & 0xC;
  if ((*a2 & 0xC) != 0)
  {
    v7 = sub_1001F47C0(a1);
    if (v7)
    {
      v8 = v7;
      if (v6 == 4)
      {
        if (a3 <= 2)
        {
          if (!sub_10000C240())
          {
            goto LABEL_56;
          }

          sub_10000AF54("Invalid packet length!", v9, v10, v11, v12, v13, v14, v15, v106);
          v16 = sub_10000C050(3u);
          if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_56;
          }

          goto LABEL_50;
        }

        if (*(v7 + 16))
        {
          if (!sub_10000C240())
          {
            goto LABEL_56;
          }

          sub_10000AF54("Unexpected START fragment! - discarding previous packet", v46, v47, v48, v49, v50, v51, v52, v106);
          v53 = sub_10000C050(3u);
          if (!os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_56;
          }

          goto LABEL_50;
        }

        v70 = a2[1];
        if (a2[1])
        {
          *(v7 + 42) = v70;
          v71 = a3 - 1;
          v72 = sub_1001BBBD8((a3 - 1) * v70, 0xBDC97ABBuLL);
          *(v8 + 16) = v72;
          *(v8 + 48) = (a3 - 1) * *(v8 + 42);
          *(v8 + 36) = 0;
          *(v8 + 56) = a3 - 1;
          if (v72)
          {
            *(v8 + 43) = *a2 & 0xF0;
            *v72 = *a2;
            *(*(v8 + 16) + 1) = a2[2];
            memmove((*(v8 + 16) + 2), a2 + 3, a3 - 3);
            *(v8 + 48) -= v71;
            *(v8 + 36) += v71;
            --*(v8 + 42);
            return;
          }

          if (sub_10000C240())
          {
            sub_10000AF54("Could not allocate reassembly buffer!", v97, v98, v99, v100, v101, v102, v103, v106);
            v104 = sub_10000C050(3u);
            if (os_log_type_enabled(v104, OS_LOG_TYPE_ERROR))
            {
              sub_1000E09C0();
            }
          }

          sub_100200DB8(a1, a2[2], *a2 >> 4, 129);
          goto LABEL_56;
        }

        if (sub_10000C240())
        {
          sub_10000AF54("Invalid number of packets (0)!", v89, v90, v91, v92, v93, v94, v95, v106);
          v96 = sub_10000C050(3u);
          if (os_log_type_enabled(v96, OS_LOG_TYPE_ERROR))
          {
LABEL_50:
            sub_1000E09C0();
          }
        }
      }

      else
      {
        v33 = *(v7 + 16);
        if (!v33)
        {
          if (!sub_10000C240())
          {
            goto LABEL_56;
          }

          sub_10000AF54("Unexpected packet fragment!", v54, v55, v56, v57, v58, v59, v60, v106);
          v61 = sub_10000C050(3u);
          if (!os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_56;
          }

          goto LABEL_50;
        }

        if ((*a2 & 0xF0) != *(v7 + 43))
        {
          if (!sub_10000C240())
          {
            goto LABEL_56;
          }

          sub_10000AF54("Invalid transaction number in fragment", v62, v63, v64, v65, v66, v67, v68, v106);
          v69 = sub_10000C050(3u);
          if (!os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_56;
          }

          goto LABEL_50;
        }

        v34 = a3 - 1;
        v35 = *(v7 + 48) - v34;
        *(v7 + 48) = v35;
        if (v35 < 0)
        {
          if (!sub_10000C240())
          {
            goto LABEL_56;
          }

          sub_10000AF54("Buffer overflow !", v73, v74, v75, v76, v77, v78, v79, v106);
          v80 = sub_10000C050(3u);
          if (!os_log_type_enabled(v80, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_56;
          }

          goto LABEL_50;
        }

        memmove((v33 + *(v7 + 36)), a2 + 1, v34);
        v36 = *(v8 + 36) + v34;
        *(v8 + 36) = v36;
        v37 = *(v8 + 42) - 1;
        *(v8 + 42) = v37;
        if (v6 != 12)
        {
          if (v34 == *(v8 + 56))
          {
            return;
          }

          if (!sub_10000C240())
          {
            goto LABEL_56;
          }

          sub_10000AF54("CONTINUE fragment has invalid packet length", v81, v82, v83, v84, v85, v86, v87, v106);
          v88 = sub_10000C050(3u);
          if (!os_log_type_enabled(v88, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_56;
          }

          goto LABEL_50;
        }

        if (v37)
        {
          if (!sub_10000C240())
          {
            goto LABEL_56;
          }

          sub_10000AF54("Incorrect number of packet fragments - dropping packet!", v38, v39, v40, v41, v42, v43, v44, v106);
          v45 = sub_10000C050(3u);
          if (!os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_56;
          }

          goto LABEL_50;
        }

        sub_1001FA434(a1, *(v8 + 16), v36);
      }

LABEL_56:
      v105 = *(v8 + 16);
      if (v105)
      {
        sub_10000C1E8(v105);
        *(v8 + 16) = 0;
      }

      return;
    }

    if (sub_10000C240())
    {
      sub_10000AF54("Packet received on invalid CID", v25, v26, v27, v28, v29, v30, v31, v106);
      v32 = sub_10000C050(3u);
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
LABEL_13:
        sub_1000E09C0();
      }
    }
  }

  else
  {

    sub_1001FA434(a1, a2, a3);
  }
}

uint64_t sub_1001F629C(uint64_t a1)
{
  v17 = 0;
  if (sub_10000C240())
  {
    sub_10000AF54("AVDTP_Connect(addr=%:)", v2, v3, v4, v5, v6, v7, v8, a1);
    v9 = sub_10000C050(3u);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v19 = sub_10000C0FC();
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
    }
  }

  if (!dword_100BCE23C)
  {
    return 408;
  }

  if (!sub_1001F44B4(a1, &v17))
  {
    return 126;
  }

  result = sub_10028F454(sub_1001F58E4, sub_1001F5B1C, sub_1001F5DE4, 25, a1, qword_100B5CD50 + 32, &v17, &unk_100AE6500);
  if (!result)
  {
    v11 = qword_100B5CD50;
    ++*(qword_100B5CD50 + 101);
    v12 = *(v11 + 98);
    if (*(v11 + 98))
    {
      v13 = 0;
      v14 = v17;
      for (i = (*(v11 + 16) + 52); *(i - 7); i += 16)
      {
        if (v12 == ++v13)
        {
          return 0;
        }
      }

      result = 0;
      *(i - 26) = v13 + 1;
      v16 = *a1;
      *(i - 10) = *(a1 + 4);
      *(i - 6) = v16;
      *(i - 7) = v14;
      *(i - 8) = -1;
      *i = -1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1001F6464(uint64_t a1, int a2)
{
  if (sub_10000C240())
  {
    sub_10000AF54("AVDTP_Accept(a2dpHandle=%d,accept=%B)", v4, v5, v6, v7, v8, v9, v10, a1);
    v11 = sub_10000C050(3u);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v16 = sub_10000C0FC();
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
    }
  }

  *buf = 0;
  if (sub_1001F45A0(a1, buf))
  {
    return 408;
  }

  v13 = *buf;
  v12 = sub_100290164(sub_1001F65C4, sub_1001F5B1C, sub_1001F5DE4, *buf, qword_100B5CD50 + 32, a2, &unk_100AE6500);
  if (!v12 && (a2 & 1) != 0)
  {
    return 0;
  }

  sub_1001F6860(v13);
  return v12;
}

void *sub_1001F65C4(void *a1, uint64_t a2, __int16 a3, uint64_t a4)
{
  v7 = qword_100B5CD50;
  ++*(qword_100B5CD50 + 102);
  ++*(v7 + 101);
  v8 = sub_1001F47C0(a1);
  if (!v8)
  {
    sub_1000D660C();
  }

  v44 = 0;
  v43 = 0;
  *(v8 + 34) = a3;
  if (sub_10000C240())
  {
    sub_10000AF54("ConnectCfmAcp: %!", v9, v10, v11, v12, v13, v14, v15, a4);
    v16 = sub_10000C050(3u);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v46 = sub_10000C0FC();
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
    }
  }

  if (!dword_100BCE23C)
  {
    return sub_1001F6860(a1);
  }

  v17 = *(qword_100B5CD50 + 98);
  if (!*(qword_100B5CD50 + 98))
  {
    return sub_1001F6860(a1);
  }

  for (i = *(qword_100B5CD50 + 16) + 28; *(i + 10) != a1; i += 64)
  {
    if (!--v17)
    {
      return sub_1001F6860(a1);
    }
  }

  v20 = *i;
  v44 = *(i + 4);
  v43 = v20;
  if (a4)
  {
    sub_1001F6860(a1);
  }

  if (sub_10000C240())
  {
    sub_10000AF54("AVDTP_CONNECT_CFM(addr=%:,result=%!)", v21, v22, v23, v24, v25, v26, v27, &v43);
    v28 = sub_10000C050(3u);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      v29 = sub_10000C0FC();
      *buf = 136446210;
      v46 = v29;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
    }
  }

  if (dword_100BCE23C)
  {
    v30 = *(qword_100B5CD50 + 98);
    if (*(qword_100B5CD50 + 98))
    {
      v31 = *(qword_100B5CD50 + 16);
      while (!v31[19] || v31[19] != a1)
      {
        v31 += 32;
        if (!--v30)
        {
          goto LABEL_25;
        }
      }

      v33 = 0;
      v42 = *v31;
      return (*(*(qword_100B5CD50 + 24) + 8))(&v43, v42, v33);
    }

LABEL_25:
    v33 = 120;
  }

  else
  {
    v33 = 408;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("AVDTP did not find a2dp handle from CID with result %!", v34, v35, v36, v37, v38, v39, v40, v33);
    v41 = sub_10000C050(3u);
    if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }

  v42 = 0;
  return (*(*(qword_100B5CD50 + 24) + 8))(&v43, v42, v33);
}

void *sub_1001F6860(void *result)
{
  if (dword_100BCE23C)
  {
    result = sub_1001F47C0(result);
    if (result)
    {
      v1 = result;
      result = result[1];
      if (result)
      {
        do
        {
          v2 = result[1];
          sub_1000BB9CC(result);
          result = v2;
        }

        while (v2);
      }

      v1[1] = 0;
      *(v1 + 40) = 0;
      *(v1 + 19) = 0;
    }
  }

  return result;
}

uint64_t sub_1001F68C0(uint64_t a1)
{
  if (sub_10000C240())
  {
    sub_10000AF54("AVDTP_Disconnect(a2dpHandle=%d)", v2, v3, v4, v5, v6, v7, v8, a1);
    v9 = sub_10000C050(3u);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v12 = sub_10000C0FC();
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
    }
  }

  *buf = 0;
  if (sub_1001F45A0(a1, buf))
  {
    return 122;
  }

  else
  {
    return sub_10029104C(*buf, 436);
  }
}

uint64_t sub_1001F69AC(uint64_t a1, _BYTE *a2)
{
  if (sub_10000C240())
  {
    sub_10000AF54("AVDTP_Discover(a2dpHandle=%d)", v4, v5, v6, v7, v8, v9, v10, a1);
    v11 = sub_10000C050(3u);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v39 = sub_10000C0FC();
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
    }
  }

  if (!dword_100BCE23C)
  {
    return 408;
  }

  v37 = 0;
  v12 = sub_1001F45A0(a1, &v37);
  if (v12)
  {
    v13 = v12;
    if (sub_10000C240())
    {
      sub_10000AF54("AVDT_Discover_Req\n\tTransaction=%d\n\tRSP=0x.4x\n", v14, v15, v16, v17, v18, v19, v20, v13);
      v21 = sub_10000C050(3u);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        v22 = sub_10000C0FC();
        *buf = 136446210;
        v39 = v22;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
      }
    }
  }

  else
  {
    v23 = v37;
    v24 = sub_1001F47C0(v37);
    v25 = sub_1001F6BC0(v24);
    v26 = v25;
    if (a2)
    {
      *a2 = v25;
    }

    if (sub_10000C240())
    {
      sub_10000AF54("AVDT_Discover_Req\n\tTransaction=%d\n\tRSP=0x0000\n", v27, v28, v29, v30, v31, v32, v33, v26);
      v34 = sub_10000C050(3u);
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        v35 = sub_10000C0FC();
        *buf = 136446210;
        v39 = v35;
        _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
      }
    }

    return sub_100201224(v23, v26);
  }

  return v13;
}

uint64_t sub_1001F6BC0(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 46) + 1;
    *(a1 + 46) = v2;
    return v2 & 0xF;
  }

  else
  {
    result = sub_10000C240();
    if (result)
    {
      sub_10000AF54("Signal was NULL", v4, v5, v6, v7, v8, v9, v10, v1);
      v11 = sub_10000C050(3u);
      result = os_log_type_enabled(v11, OS_LOG_TYPE_ERROR);
      if (result)
      {
        sub_1000E09C0();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1001F6C3C(uint64_t a1, unsigned int a2, _BYTE *a3)
{
  if (sub_10000C240())
  {
    sub_10000AF54("AVDTP_GetCap(a2dp handle=%d,seid=%d)", v6, v7, v8, v9, v10, v11, v12, a1);
    v13 = sub_10000C050(3u);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v19 = sub_10000C0FC();
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
    }
  }

  if (!dword_100BCE23C)
  {
    return 408;
  }

  *buf = 0;
  result = sub_1001F45A0(a1, buf);
  if (!result)
  {
    v15 = *buf;
    v16 = sub_1001F47C0(*buf);
    v17 = sub_1001F6BC0(v16);
    if (a3)
    {
      *a3 = v17;
    }

    *(qword_100B5CD50 + 99) = a2;
    return sub_100200B48(v15, 2u, v17, a2);
  }

  return result;
}

uint64_t sub_1001F6D74(uint64_t a1, unsigned int a2, _BYTE *a3)
{
  if (sub_10000C240())
  {
    sub_10000AF54("AVDTP_GetAllCaps(a2dpHandle=%d:,seid=%d)", v6, v7, v8, v9, v10, v11, v12, a1);
    v13 = sub_10000C050(3u);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v30 = sub_10000C0FC();
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
    }
  }

  if (!dword_100BCE23C)
  {
    return 408;
  }

  v28 = 0;
  v14 = sub_1001F45A0(a1, &v28);
  if (!v14)
  {
    v15 = v28;
    v16 = sub_1001F47C0(v28);
    v17 = sub_1001F6BC0(v16);
    if (a3)
    {
      *a3 = v17;
    }

    *(qword_100B5CD50 + 99) = a2;
    v14 = sub_100200B48(v15, 0xCu, v17, a2);
  }

  if (sub_10000C240())
  {
    sub_10000AF54("AVDTP_GetAllCaps returning %d", v18, v19, v20, v21, v22, v23, v24, v14);
    v25 = sub_10000C050(3u);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      v26 = sub_10000C0FC();
      *buf = 136446210;
      v30 = v26;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
    }
  }

  return v14;
}

uint64_t sub_1001F6F28(uint64_t a1, char a2, int a3, uint64_t a4, unsigned int a5, _BYTE *a6, _WORD *a7)
{
  if (sub_10000C240())
  {
    sub_10000AF54("AVDTP_SetConfig(a2dpHandle=%d,remoteSEID=%d,localSEID=%d,caps=0x%x,numCaps=%d)", v14, v15, v16, v17, v18, v19, v20, a1);
    v21 = sub_10000C050(3u);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v55 = sub_10000C0FC();
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
    }
  }

  if (!dword_100BCE23C)
  {
    return 408;
  }

  v53 = 0;
  v22 = sub_1001F45A0(a1, &v53);
  if (!v22)
  {
    if (!*(qword_100B5CD50 + 96))
    {
      return 120;
    }

    v23 = 0;
    v24 = *qword_100B5CD50;
    v25 = 255;
    while (*(v24 + v23 + 25) != a3)
    {
      v23 += 40;
      --v25;
      if (40 * *(qword_100B5CD50 + 96) == v23)
      {
        return 120;
      }
    }

    if (!v25)
    {
      return 120;
    }

    if (*(v24 + v23 + 16))
    {
      sub_1000D660C();
      if (*(v24 + v23 + 16))
      {
        return 118;
      }
    }

    v52 = (v24 + v23 + 16);
    if (sub_10000C240())
    {
      sub_10000AF54("In SetConfig, allocating endpoint", v27, v28, v29, v30, v31, v32, v33, v51);
      v34 = sub_10000C050(3u);
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        v35 = sub_10000C0FC();
        *buf = 136446210;
        v55 = v35;
        _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
      }
    }

    v36 = sub_1001F7280(a2);
    if (!v36)
    {
      return 2902;
    }

    v37 = v53;
    v38 = qword_100B5CD50;
    if (qword_100B5CD50)
    {
      v39 = v36;
      if (*(qword_100B5CD50 + 98))
      {
        v40 = 0;
        v41 = (*(qword_100B5CD50 + 16) + 38);
        while (1)
        {
          v42 = *v41;
          v41 += 32;
          if (v42 == v53)
          {
            break;
          }

          if (*(qword_100B5CD50 + 98) == ++v40)
          {
            goto LABEL_27;
          }
        }
      }

      else
      {
LABEL_27:
        LOBYTE(v40) = -1;
      }
    }

    else
    {
      LOBYTE(v40) = -1;
      v39 = v36;
    }

    *(v39 + 135) = v40;
    v43 = *(v38 + 96);
    if (*(v38 + 96))
    {
      v44 = 0;
      v45 = (*v38 + 25);
      while (1)
      {
        v46 = *v45;
        v45 += 40;
        if (v46 == a3)
        {
          break;
        }

        if (v43 == ++v44)
        {
          goto LABEL_34;
        }
      }
    }

    else
    {
LABEL_34:
      LOBYTE(v44) = -1;
    }

    *(v39 + 136) = v44;
    *a7 = sub_1001F73E4(v39);
    v47 = sub_1001F47C0(v37);
    v48 = sub_1001F6BC0(v47);
    v49 = v48;
    if (a6)
    {
      *a6 = v48;
    }

    v50 = sub_1001F4328(a4, a5, v52, (v24 + v23 + 32));
    if (v50)
    {
      v22 = v50;
    }

    else
    {
      v22 = sub_100201FC0(v37, v49, a2, a3, *v52, a5);
      if (!v22)
      {
LABEL_41:
        *(v39 + 133) = v49;
        return v22;
      }
    }

    sub_1001F4290(v52, a5);
    *(v39 + 132) = 0;
    *v39 = 0;
    *(v39 + 128) = 0;
    sub_1001C3A30(0);
    *(v39 + 134) = -256;
    LOBYTE(v49) = -1;
    goto LABEL_41;
  }

  return v22;
}

uint64_t sub_1001F7280(char a1)
{
  if (*(qword_100B5CD50 + 97))
  {
    v2 = 0;
    v3 = *(qword_100B5CD50 + 8);
    while (*(v3 + 132))
    {
      v2 = (v2 + 1);
      v3 += 144;
      if (v2 >= *(qword_100B5CD50 + 97))
      {
        goto LABEL_5;
      }
    }

    if (sub_10000C240())
    {
      sub_10000AF54("Allocating endpoint at index: %d for seid: %d", v12, v13, v14, v15, v16, v17, v18, v2);
      v19 = sub_10000C050(3u);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446210;
        v23 = sub_10000C0FC();
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
      }
    }

    *(v3 + 132) = a1;
    *(v3 + 128) = 0;
    *v3 = 0;
    *(v3 + 137) = -1;
    *(v3 + 133) = -65281;
  }

  else
  {
LABEL_5:
    if (sub_10000C240())
    {
      sub_10000AF54("Did not allocate endpoint", v4, v5, v6, v7, v8, v9, v10, v21);
      v11 = sub_10000C050(3u);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    return 0;
  }

  return v3;
}

uint64_t sub_1001F73E4(uint64_t a1)
{
  if (*(qword_100B5CD50 + 97))
  {
    v2 = 0;
    v3 = *(qword_100B5CD50 + 8) - 144;
    while (1)
    {
      v3 += 144;
      if (v3 == a1)
      {
        break;
      }

      if (*(qword_100B5CD50 + 97) == ++v2)
      {
        goto LABEL_5;
      }
    }

    if (sub_10000C240())
    {
      sub_10000AF54("In GetHandleFromRemote, found handle for seid: %d, returning %d", v13, v14, v15, v16, v17, v18, v19, *(a1 + 132));
      v20 = sub_10000C050(3u);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446210;
        v24 = sub_10000C0FC();
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
      }
    }

    return (v2 + 1);
  }

  else
  {
LABEL_5:
    if (sub_10000C240())
    {
      sub_10000AF54("In GetHandleFromRemote, couldn't find handle", v4, v5, v6, v7, v8, v9, v10, v22);
      v11 = sub_10000C050(3u);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    return 0;
  }
}

uint64_t sub_1001F7534(uint64_t a1, _BYTE *a2)
{
  if (sub_10000C240())
  {
    sub_10000AF54("AVDTP_Open(handle=%d)", v4, v5, v6, v7, v8, v9, v10, a1);
    v11 = sub_10000C050(3u);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v28 = sub_10000C0FC();
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
    }
  }

  if (!dword_100BCE23C)
  {
    return 408;
  }

  if (*(qword_100B5CD50 + 97) <= (a1 - 1))
  {
    return 120;
  }

  v12 = *(qword_100B5CD50 + 8);
  if (!v12)
  {
    return 120;
  }

  v13 = (v12 + 144 * (a1 - 1));
  if (!v13[134])
  {
    if (sub_10000C240())
    {
      sub_10000AF54("AVDTP_Open called on handle %d when it's in idle state. Aborting.", v17, v18, v19, v20, v21, v22, v23, a1);
      v24 = sub_10000C050(3u);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    return 408;
  }

  v14 = *(v12 + 144 * (a1 - 1) + 135);
  if (v14 == 255)
  {
    v15 = 0;
  }

  else
  {
    v15 = *(qword_100B5CD50 + 16) + (v14 << 6);
  }

  v25 = sub_1001F6BC0(v15);
  v26 = v25;
  if (a2)
  {
    *a2 = v25;
  }

  result = sub_100200B48(*(v15 + 38), 6u, v25, v13[132]);
  if (!result)
  {
    v13[133] = v26;
  }

  return result;
}

uint64_t sub_1001F76F0(uint64_t a1, __int16 a2, int a3)
{
  if (sub_10000C240())
  {
    sub_10000AF54("AVDTP_OpenRsp(transaction=%d,handle=%d,error=%d)", v6, v7, v8, v9, v10, v11, v12, a1);
    v13 = sub_10000C050(3u);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v19 = sub_10000C0FC();
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
    }
  }

  if (!dword_100BCE23C)
  {
    return 408;
  }

  if (*(qword_100B5CD50 + 97) > (a2 - 1))
  {
    v14 = *(qword_100B5CD50 + 8);
    if (v14)
    {
      v15 = *(v14 + 144 * (a2 - 1) + 135);
      if (v15 != 255)
      {
        v16 = *(qword_100B5CD50 + 16);
        if (v16)
        {
          return sub_100200DB8(*(v16 + (v15 << 6) + 38), 6u, a1, a3);
        }
      }
    }
  }

  return 120;
}

uint64_t sub_1001F7840(_WORD *a1, unsigned int a2, _BYTE *a3)
{
  if (sub_10000C240())
  {
    sub_10000AF54("AVDTP_Start(handles=0x%x,num=%x)", v6, v7, v8, v9, v10, v11, v12, a1);
    v13 = sub_10000C050(3u);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v36 = sub_10000C0FC();
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
    }
  }

  if (dword_100BCE23C)
  {
    v14 = sub_100007618(a2, 0xD978BE6AuLL);
    if (!v14)
    {
      return 106;
    }

    v15 = v14;
    if (*(qword_100B5CD50 + 97) > (*a1 - 1))
    {
      v16 = *(qword_100B5CD50 + 8);
      if (v16)
      {
        v17 = *(v16 + 144 * (*a1 - 1) + 135);
        if (v17 != 255)
        {
          v18 = *(qword_100B5CD50 + 16);
          if (v18)
          {
            v19 = v18 + (v17 << 6);
            v20 = *(v19 + 38);
            v21 = sub_1001F6BC0(v19);
            v22 = v21;
            if (a3)
            {
              *a3 = v21;
            }

            if (!a2)
            {
LABEL_27:
              v33 = sub_10020106C(v20, 7u, v22, v15, a2);
LABEL_30:
              sub_10000C1E8(v15);
              return v33;
            }

            v23 = 0;
            v24 = qword_100B5CD50;
            while (1)
            {
              v25 = v23;
              v26 = a1[v23] - 1;
              if (*(v24 + 97) <= v26)
              {
                break;
              }

              v27 = *(v24 + 8);
              if (!v27)
              {
                break;
              }

              v28 = (v27 + 144 * v26);
              if (v28[134] != 3)
              {
                v33 = 408;
                goto LABEL_30;
              }

              v29 = v28[132];
              if (!v29)
              {
                sub_1000D660C();
                v24 = qword_100B5CD50;
                v29 = v28[132];
              }

              *(v15 + v25) = v29;
              v28[133] = v22;
              if (v25)
              {
                if (*(v24 + 97) <= (a1[v25] - 1) || (v30 = *(v24 + 8)) == 0 || (v31 = *(v30 + 144 * (a1[v25] - 1) + 135), v31 == 255))
                {
                  v32 = 0;
                }

                else
                {
                  v32 = *(v24 + 16) + (v31 << 6);
                }

                if (v32 != v19)
                {
                  v33 = 101;
                  goto LABEL_30;
                }
              }

              v23 = v25 + 1;
              if (a2 <= (v25 + 1))
              {
                goto LABEL_27;
              }
            }
          }
        }
      }
    }

    v33 = 120;
    goto LABEL_30;
  }

  return 408;
}

uint64_t sub_1001F7ABC(uint64_t a1, __int16 *a2, unsigned int a3, __int16 a4, int a5)
{
  if (sub_10000C240())
  {
    sub_10000AF54("AVDTP_StartRsp(transaction=%d,handles=0x%x,numHandles=%d,errorHandle=%d,error=%d)", v10, v11, v12, v13, v14, v15, v16, a1);
    v17 = sub_10000C050(3u);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v30 = sub_10000C0FC();
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
    }
  }

  if (!dword_100BCE23C)
  {
    return 408;
  }

  v18 = *(qword_100B5CD50 + 97);
  if (v18 <= (*a2 - 1))
  {
    return 120;
  }

  v19 = *(qword_100B5CD50 + 8);
  if (!v19)
  {
    return 120;
  }

  v20 = *(v19 + 144 * (*a2 - 1) + 135);
  if (v20 == 255)
  {
    return 120;
  }

  v21 = *(qword_100B5CD50 + 16);
  if (!v21)
  {
    return 120;
  }

  if (a5)
  {
    if (v18 > (a4 - 1))
    {
      v22 = *(v19 + 144 * (a4 - 1) + 136);
      if (v22 != 255)
      {
        if (*qword_100B5CD50)
        {
          v23 = *(*qword_100B5CD50 + 40 * v22 + 25);
          return sub_1001F7CCC(*(v21 + (v20 << 6) + 38), a1, a2, a3, v23, a5);
        }
      }
    }

LABEL_21:
    v23 = 0;
    return sub_1001F7CCC(*(v21 + (v20 << 6) + 38), a1, a2, a3, v23, a5);
  }

  if (!a3)
  {
    goto LABEL_21;
  }

  v25 = a3;
  v26 = a2;
  while (1)
  {
    v27 = *v26++;
    v28 = v27 - 1;
    if (v18 <= (v27 - 1))
    {
      break;
    }

    if (*(v19 + 144 * v28 + 134) - 3 >= 2)
    {
      goto LABEL_24;
    }

    if (!--v25)
    {
      goto LABEL_21;
    }
  }

  sub_1000D660C();
  if (MEMORY[0x86] == 3)
  {
    return 101;
  }

LABEL_24:
  sub_1000D660C();
  return 101;
}

uint64_t sub_1001F7CCC(uint64_t a1, unsigned int a2, __int16 *a3, unsigned int a4, char a5, int a6)
{
  v9 = sub_10020115C(a1, 7u, a2, a5, a6);
  v10 = v9;
  if (!a6 && !v9)
  {
    sub_100200704(a3, a4, 4u);
  }

  return v10;
}

uint64_t sub_1001F7D30(uint64_t a1, unsigned __int8 *a2)
{
  if (sub_10000C240())
  {
    sub_10000AF54("AVDTP_Close(handle=%d)", v4, v5, v6, v7, v8, v9, v10, a1);
    v11 = sub_10000C050(3u);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v21 = sub_10000C0FC();
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
    }
  }

  if (!dword_100BCE23C)
  {
    return 408;
  }

  if (*(qword_100B5CD50 + 97) <= (a1 - 1))
  {
    return 120;
  }

  v12 = *(qword_100B5CD50 + 8);
  if (!v12)
  {
    return 120;
  }

  v13 = (v12 + 144 * (a1 - 1));
  if (v13[134] - 3 > 1)
  {
    return 408;
  }

  v14 = v13[135];
  if (v14 == 255)
  {
    return 408;
  }

  v15 = *(qword_100B5CD50 + 16);
  if (!v15)
  {
    return 408;
  }

  v16 = v15 + (v14 << 6);
  v17 = *(v16 + 46) + 1;
  *(v16 + 46) = v17;
  v18 = v17 & 0xF;
  if (a2)
  {
    *a2 = v18;
  }

  result = sub_100200B48(*(v16 + 38), 8u, v17 & 0xF, v13[132]);
  if (!result)
  {
    v13[133] = v18;
  }

  return result;
}

uint64_t sub_1001F7EA8(uint64_t a1, __int16 a2, int a3)
{
  if (sub_10000C240())
  {
    sub_10000AF54("AVDTP_CloseRsp(transaction=%d,handle=%d)", v6, v7, v8, v9, v10, v11, v12, a1);
    v13 = sub_10000C050(3u);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v19 = sub_10000C0FC();
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
    }
  }

  if (!dword_100BCE23C)
  {
    return 408;
  }

  if (*(qword_100B5CD50 + 97) > (a2 - 1))
  {
    v14 = *(qword_100B5CD50 + 8);
    if (v14)
    {
      v15 = *(v14 + 144 * (a2 - 1) + 135);
      if (v15 != 255)
      {
        v16 = *(qword_100B5CD50 + 16);
        if (v16)
        {
          return sub_100200DB8(*(v16 + (v15 << 6) + 38), 8u, a1, a3);
        }
      }
    }
  }

  return 120;
}

uint64_t sub_1001F7FF4(uint64_t a1, __int16 a2)
{
  v37 = 0;
  v38 = 0;
  v35 = 0;
  v36 = 0;
  if (sub_10000C240())
  {
    sub_10000AF54("AVDTP_AbortRsp(transaction=%d,handle=%d)", v4, v5, v6, v7, v8, v9, v10, a1);
    v11 = sub_10000C050(3u);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v40 = sub_10000C0FC();
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
    }
  }

  if (!dword_100BCE23C)
  {
    return 408;
  }

  if (*(qword_100B5CD50 + 97) <= (a2 - 1))
  {
    return 120;
  }

  v12 = *(qword_100B5CD50 + 8);
  if (!v12)
  {
    return 120;
  }

  v13 = v12 + 144 * (a2 - 1);
  v14 = *(v13 + 135);
  if (v14 == 255)
  {
    return 120;
  }

  v15 = *(qword_100B5CD50 + 16);
  if (!v15)
  {
    return 120;
  }

  result = sub_100200DB8(*(v15 + (v14 << 6) + 38), 0xAu, a1, 0);
  if (!result)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("AVDT_Abort_Rsp\n\tTransaction=%d\n\tErrorCode=0x%.2x\n\tStreamHandles=%d\n", v17, v18, v19, v20, v21, v22, v23, a1);
      v24 = sub_10000C050(3u);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        v25 = sub_10000C0FC();
        *buf = 136446210;
        v40 = v25;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
      }
    }

    result = sub_10029104C(*(v13 + 128), 436);
    if (result)
    {
      if (*(v13 + 128))
      {
        v26 = result;
        if (sub_10000C240())
        {
          sub_10000AF54("Error disconnecting media transport - %!", v27, v28, v29, v30, v31, v32, v33, v26);
          v34 = sub_10000C050(3u);
          if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
          {
            sub_1000E09C0();
          }
        }

        *(v13 + 128) = 0;
        sub_1001C3A30(0);
      }

      sub_1001F8264(v13);
      LOBYTE(v37) = a1;
      v38 = v13;
      v36 = &v37;
      LOWORD(v35) = 16;
      return sub_1000228C0(sub_1001F849C, &v35, v13);
    }
  }

  return result;
}

void sub_1001F8264(uint64_t a1)
{
  if (!a1 || *(a1 + 136) == 255)
  {
    v2 = 0;
  }

  else
  {
    v2 = *qword_100B5CD50 + 40 * *(a1 + 136);
  }

  if (sub_10000C240())
  {
    sub_10000AF54("ResetRemote %lx", v3, v4, v5, v6, v7, v8, v9, a1);
    v10 = sub_10000C050(3u);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v29 = sub_10000C0FC();
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
    }
  }

  if (*a1)
  {
    sub_100304F30(*a1);
    *a1 = 0;
  }

  sub_1001F9250(a1, 0);
  *(a1 + 132) = 0;
  sub_10029104C(*(a1 + 128), 436);
  if (v2)
  {
    v11 = *(v2 + 29);
    if ((v11 & 0x3F) != 0)
    {
      *(v2 + 29) = v11 - 1;
      if (sub_10000C240())
      {
        sub_10000AF54("Endpoint Remotes: %d", v12, v13, v14, v15, v16, v17, v18, *(v2 + 29));
        v19 = sub_10000C050(3u);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          v20 = sub_10000C0FC();
          *buf = 136446210;
          v29 = v20;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
        }
      }

      v22 = (v2 + 24);
      v21 = *(v2 + 24);
      v23 = *(qword_100B5CD50 + 8);
      if (v23 + 144 * v21 != a1)
      {
        v24 = *(qword_100B5CD50 + 97);
        if (v21 < v24)
        {
          do
          {
            v25 = v23 + 144 * v21;
            v26 = *(v25 + 137);
            v22 = (v25 + 137);
            v21 = v26;
          }

          while (v23 + 144 * v26 != a1 && v21 < v24);
        }
      }

      if (v21 != 255)
      {
        *v22 = *(v23 + 144 * v21 + 137);
      }

      *(a1 + 135) = -1;
      *(a1 + 137) = -1;
      v11 = *(v2 + 29);
    }

    if ((v11 & 0x3F) == 0)
    {
      sub_1001F57F4(v2);
    }
  }
}

uint64_t sub_1001F849C(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *v1;
  v3 = *(v1 + 1);
  if (sub_10000C240())
  {
    sub_1001F73E4(v3);
    sub_10000AF54("AVDTP_ABORT_CFM(transaction=%d,handle=%d,error=%d)", v4, v5, v6, v7, v8, v9, v10, v2);
    v11 = sub_10000C050(3u);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v16 = sub_10000C0FC();
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
    }
  }

  *v3 = 0;
  v12 = *(*(qword_100B5CD50 + 24) + 176);
  v13 = sub_1001F73E4(v3);
  return v12(v2, v13, 0);
}

uint64_t sub_1001F85A8(__int16 *a1, unsigned int a2, _BYTE *a3)
{
  if (sub_10000C240())
  {
    sub_10000AF54("AVDTP_Suspend(handles=0x%x,numHandles=%d)", v6, v7, v8, v9, v10, v11, v12, a1);
    v13 = sub_10000C050(3u);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v43 = sub_10000C0FC();
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
    }
  }

  if (dword_100BCE23C)
  {
    if (!*(*(qword_100B5CD50 + 24) + 120))
    {
      sub_1000D660C();
      if (!*(*(qword_100B5CD50 + 24) + 120))
      {
        return 101;
      }
    }

    v14 = a2;
    v15 = sub_100007618(a2, 0x5EE8C3F6uLL);
    if (!v15)
    {
      return 106;
    }

    v16 = v15;
    if (*(qword_100B5CD50 + 97) > (*a1 - 1))
    {
      v17 = *(qword_100B5CD50 + 8);
      if (v17)
      {
        v18 = *(v17 + 144 * (*a1 - 1) + 135);
        if (v18 != 255)
        {
          v19 = *(qword_100B5CD50 + 16);
          if (v19)
          {
            v20 = v19 + (v18 << 6);
            v21 = *(v20 + 46) + 1;
            *(v20 + 46) = v21;
            v22 = v21 & 0xF;
            if (a3)
            {
              *a3 = v21 & 0xF;
            }

            if (sub_10000C240())
            {
              sub_10000AF54("AVDT_Suspend_Req\n\tTransaction=%d\n\tRSP=0x0000\n", v23, v24, v25, v26, v27, v28, v29, v22);
              v30 = sub_10000C050(3u);
              if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
              {
                v31 = sub_10000C0FC();
                *buf = 136446210;
                v43 = v31;
                _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
              }
            }

            if (!a2)
            {
LABEL_29:
              v40 = sub_10020106C(*(v20 + 38), 9u, v22, v16, a2);
LABEL_32:
              sub_10000C1E8(v16);
              return v40;
            }

            v32 = v16;
            while (1)
            {
              v33 = *a1++;
              v34 = v33 - 1;
              if (*(qword_100B5CD50 + 97) <= (v33 - 1))
              {
                break;
              }

              v35 = *(qword_100B5CD50 + 8);
              if (!v35)
              {
                break;
              }

              v36 = v35 + 144 * v34;
              if (*(v36 + 134) != 4)
              {
                v40 = 408;
                goto LABEL_32;
              }

              v37 = *(v36 + 135);
              if (v37 == 255)
              {
                v38 = 0;
              }

              else
              {
                v38 = *(qword_100B5CD50 + 16) + (v37 << 6);
              }

              if (v20 != v38)
              {
                v40 = 101;
                goto LABEL_32;
              }

              v39 = *(v36 + 132);
              if (!v39)
              {
                sub_1000D660C();
                v39 = *(v36 + 132);
              }

              *v32++ = v39;
              *(v36 + 133) = v22;
              sub_10029F2B4(*(v36 + 128));
              if (!--v14)
              {
                goto LABEL_29;
              }
            }
          }
        }
      }
    }

    v40 = 120;
    goto LABEL_32;
  }

  return 408;
}

uint64_t sub_1001F889C(uint64_t a1, __int16 *a2, unsigned int a3, __int16 a4, int a5)
{
  if (!dword_100BCE23C)
  {
    return 408;
  }

  v7 = *(qword_100B5CD50 + 97);
  if (v7 <= (*a2 - 1))
  {
    return 120;
  }

  v8 = *(qword_100B5CD50 + 8);
  if (!v8)
  {
    return 120;
  }

  v9 = *(v8 + 144 * (*a2 - 1) + 135);
  if (v9 == 255)
  {
    return 120;
  }

  v10 = *(qword_100B5CD50 + 16);
  if (!v10)
  {
    return 120;
  }

  if (a5)
  {
    if (v7 > (a4 - 1))
    {
      v13 = *(v8 + 144 * (a4 - 1) + 136);
      if (v13 != 255)
      {
        if (*qword_100B5CD50)
        {
          v14 = *(*qword_100B5CD50 + 40 * v13 + 25);
LABEL_19:
          v20 = *(v10 + (v9 << 6) + 38);

          return sub_1001F8A58(v20, a1, a2, a3, v14, a5);
        }
      }
    }

LABEL_18:
    v14 = 0;
    goto LABEL_19;
  }

  if (!a3)
  {
    goto LABEL_18;
  }

  v16 = a3;
  v17 = a2;
  while (1)
  {
    v18 = *v17++;
    v19 = v18 - 1;
    if (v7 <= (v18 - 1))
    {
      if (sub_10000C240())
      {
        sub_10000AF54("OI_AVDTP_SuspendRsp remote nil", v21, v22, v23, v24, v25, v26, v27, v37);
        v28 = sub_10000C050(3u);
        if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_27;
        }
      }

      return 101;
    }

    if (*(v8 + 144 * v19 + 134) != 4)
    {
      break;
    }

    if (!--v16)
    {
      goto LABEL_18;
    }
  }

  if (sub_10000C240())
  {
    sub_10000AF54("OI_AVDTP_SuspendRsp after stopped, check race transaction", v29, v30, v31, v32, v33, v34, v35, v37);
    v36 = sub_10000C050(3u);
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
LABEL_27:
      sub_1000E09C0();
    }
  }

  return 101;
}

uint64_t sub_1001F8A58(uint64_t a1, uint64_t a2, __int16 *a3, unsigned int a4, char a5, int a6)
{
  if (sub_10000C240())
  {
    sub_10000AF54("AVDT_Suspend_Rsp\n\tTransaction=%d\n\tErrorCode=0x%.2x\n", v12, v13, v14, v15, v16, v17, v18, a2);
    v19 = sub_10000C050(3u);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v24 = sub_10000C0FC();
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
    }
  }

  v20 = sub_10020115C(a1, 9u, a2, a5, a6);
  v21 = v20;
  if (!a6 && !v20)
  {
    sub_100200704(a3, a4, 3u);
  }

  return v21;
}

uint64_t sub_1001F8B80(__int16 *a1, unsigned int a2, _BYTE *a3)
{
  if (sub_10000C240())
  {
    sub_10000AF54("AVDTP_Transition(handles=0x%x, numHandles=%d", v6, v7, v8, v9, v10, v11, v12, a1);
    v13 = sub_10000C050(3u);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v34 = sub_10000C0FC();
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
    }
  }

  if (!dword_100BCE23C)
  {
    return 408;
  }

  if (!*(*(qword_100B5CD50 + 24) + 128))
  {
    sub_1000D660C();
    if (!*(*(qword_100B5CD50 + 24) + 128))
    {
      return 101;
    }
  }

  v14 = a2;
  v15 = sub_1001BBBD8(a2, 0xCC40B7FEuLL);
  v16 = v15;
  if (*(qword_100B5CD50 + 97) <= (*a1 - 1) || (v17 = *(qword_100B5CD50 + 8)) == 0 || (v18 = *(v17 + 144 * (*a1 - 1) + 135), v18 == 255) || (v19 = *(qword_100B5CD50 + 16)) == 0)
  {
    v31 = 120;
    if (!v15)
    {
      return v31;
    }

LABEL_28:
    sub_10000C1E8(v16);
    return v31;
  }

  v20 = v19 + (v18 << 6);
  v21 = *(v20 + 46) + 1;
  *(v20 + 46) = v21;
  v22 = v21 & 0xF;
  if (a3)
  {
    *a3 = v22;
  }

  if (a2)
  {
    v23 = v15;
    do
    {
      v24 = *a1++;
      v25 = v24 - 1;
      if (*(qword_100B5CD50 + 97) <= (v24 - 1))
      {
        break;
      }

      v26 = *(qword_100B5CD50 + 8);
      if (!v26)
      {
        break;
      }

      v27 = v26 + 144 * v25;
      if (*(v27 + 134) != 4)
      {
        break;
      }

      v28 = *(v27 + 135);
      v29 = v28 == 255 ? 0 : *(qword_100B5CD50 + 16) + (v28 << 6);
      if (v20 != v29)
      {
        break;
      }

      v30 = *(v27 + 132);
      if (!v30)
      {
        sub_1000D660C();
        v30 = *(v27 + 132);
      }

      *v23++ = v30;
      *(v27 + 133) = v22;
      sub_10029F2B4(*(v27 + 128));
      --v14;
    }

    while (v14);
  }

  v31 = sub_10020106C(*(v20 + 38), 0xFEu, v22, v16, a2);
  if (v16)
  {
    goto LABEL_28;
  }

  return v31;
}

uint64_t sub_1001F8DF0(unsigned __int8 *a1, unsigned int a2, uint64_t a3, int a4, void **a5, _BYTE *a6)
{
  v8 = a4;
  v10 = a2;
  v12 = a4 + a2;
  *a6 = a4 + a2;
  if (a4)
  {
    for (i = 0; i != a4; ++i)
    {
      v14 = (a3 + 16 * i);
      v15 = *v14;
      if (v15 == 4 || v15 == 7)
      {
        *a6 = --v12;
      }

      else
      {
        v17 = a2;
        v18 = a1;
        if (a2)
        {
          do
          {
            v19 = *v18;
            v18 += 16;
            if (*v14 == v19)
            {
              *a6 = --v12;
            }

            --v17;
          }

          while (v17);
        }
      }
    }
  }

  v20 = sub_1001BBBD8(16 * v12, 0x105204037B82EA9uLL);
  *a5 = v20;
  if (!v20)
  {
    goto LABEL_54;
  }

  v21 = *a6;
  if (!(v21 | v8 | v10))
  {
    return 0;
  }

  v22 = v10 != 0;
  v23 = v8 != 0;
  while (1)
  {
    if (v22)
    {
      LOBYTE(v10) = v10 - 1;
      v24 = &a1[16 * v10];
      goto LABEL_19;
    }

    if (!v23)
    {
      if (sub_10000C240())
      {
        sub_10000AF54("Mis-Count of merged caps: %d", v38, v39, v40, v41, v42, v43, v44, *a6);
        v45 = sub_10000C050(3u);
        if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_53;
        }
      }

      goto LABEL_54;
    }

    LOBYTE(v8) = v8 - 1;
    v24 = (a3 + 16 * v8);
    v31 = *v24;
    if (v31 == 4 || v31 == 7)
    {
      LOBYTE(v10) = 0;
      goto LABEL_36;
    }

    v33 = *a6;
    if (v21 >= v33)
    {
      break;
    }

    v34 = *a5 + 16 * v21;
    v35 = v33 - v21;
    do
    {
      v36 = *v34;
      v34 += 16;
      if (v31 == v36)
      {
        v24 = 0;
      }

      --v35;
    }

    while (v35);
LABEL_19:
    if (v24)
    {
      break;
    }

LABEL_36:
    v23 = v8 != 0;
    v22 = v10 != 0;
    if (!v21 && !v8 && !v10)
    {
      return 0;
    }
  }

  if (v21 > 0)
  {
    v25 = *a5 + 16 * --v21;
    *v25 = *v24;
    v26 = *v24;
    v27 = v26 > 8;
    v28 = (1 << v26) & 0x10E;
    if (v27 || v28 == 0)
    {
      if (*(v24 + 3))
      {
        v30 = sub_100007618(*(v24 + 3), 0xF330D2A9uLL);
        *(v25 + 8) = v30;
        if (!v30)
        {
          goto LABEL_54;
        }

        memmove(v30, v24[1], *(v24 + 3));
      }

      else
      {
        *(v25 + 8) = 0;
      }
    }

    goto LABEL_36;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("Mis-Count of merged caps: %d", v46, v47, v48, v49, v50, v51, v52, *a6);
    v53 = sub_10000C050(3u);
    if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
    {
LABEL_53:
      sub_1000E09C0();
    }
  }

LABEL_54:
  sub_1001F4290(a5, *a6);
  *a5 = 0;
  *a6 = 0;
  return 106;
}

uint64_t sub_1001F90AC(__int16 a1, unsigned int a2, char a3, int a4)
{
  if (!dword_100BCE23C)
  {
    return 408;
  }

  v4 = a1 - 1;
  if (*(qword_100B5CD50 + 97) <= (a1 - 1))
  {
    return 120;
  }

  v5 = *(qword_100B5CD50 + 8);
  if (!v5)
  {
    return 120;
  }

  v9 = v5 + 144 * (a1 - 1);
  v10 = *(v9 + 136) == 255 ? 0 : *qword_100B5CD50 + 40 * *(v9 + 136);
  v12 = *(v9 + 135);
  if (v12 == 255)
  {
    return 120;
  }

  result = 120;
  if (v10)
  {
    v13 = *(qword_100B5CD50 + 16);
    if (v13)
    {
      v14 = v13 + (v12 << 6);
      if (a4)
      {
        sub_1001F4290((v10 + 16), *(v10 + 32));
        *(v10 + 32) = 0;
        *(v9 + 132) = 0;
        *v9 = 0;
        *(v9 + 128) = 0;
        sub_1001C3A30(0);
        *(v9 + 137) = -1;
        *(v9 + 133) = -65281;
        v15 = *(v14 + 38);

        return sub_100202160(v15, 3, a2, a3, a4);
      }

      else
      {
        result = sub_100202160(*(v14 + 38), 3, a2, a3, 0);
        if (!result)
        {
          sub_1001F9250(v9, 1u);
          sub_1001F4290((v10 + 8), *(v10 + 31));
          result = 0;
          v16 = *(v10 + 16);
          *(v10 + 31) = *(v10 + 32);
          *(v10 + 8) = v16;
          *(v10 + 16) = 0;
          ++*(v10 + 29);
          *(v10 + 32) = 0;
          *(v9 + 137) = *(v10 + 24);
          *(v10 + 24) = v4;
        }
      }
    }
  }

  return result;
}

void sub_1001F9250(uint64_t a1, unsigned int a2)
{
  if (sub_10000C240())
  {
    v4 = sub_1001F73E4(a1);
    sub_100200790(*(a1 + 134));
    sub_100200790(a2);
    sub_10000AF54("State transition Handle %d: %s -> %s", v5, v6, v7, v8, v9, v10, v11, v4);
    v12 = sub_10000C050(3u);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v18 = sub_10000C0FC();
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
    }
  }

  v13 = *(a1 + 134);
  if (a2 == 4)
  {
    if (v13 != 4)
    {
      v14 = *(a1 + 128);
      v15 = 12;
      v16 = 70;
LABEL_9:
      sub_10029ED68(v14, v15, v16);
    }
  }

  else if (v13 == 4)
  {
    v14 = *(a1 + 128);
    v15 = 9;
    v16 = -1;
    goto LABEL_9;
  }

  *(a1 + 134) = a2;
}

uint64_t sub_1001F9384(__int16 a1, unsigned int a2, char a3, int a4)
{
  if (!dword_100BCE23C)
  {
    return 408;
  }

  if (*(qword_100B5CD50 + 97) <= (a1 - 1))
  {
    return 120;
  }

  v4 = *(qword_100B5CD50 + 8);
  if (!v4)
  {
    return 120;
  }

  v8 = (v4 + 144 * (a1 - 1));
  v9 = v8[136] == 255 ? 0 : *qword_100B5CD50 + 40 * v8[136];
  v10 = v8[135];
  if (v10 == 255)
  {
    return 120;
  }

  result = 120;
  if (v9)
  {
    v12 = *(qword_100B5CD50 + 16);
    if (v12)
    {
      if (v8[134] == 3)
      {
        if (a4)
        {
          v14 = *(v9 + 32);
          v13 = (v9 + 32);
          sub_1001F4290(v13 - 2, v14);
          v15 = v13;
        }

        else
        {
          sub_1001F4290((v9 + 8), *(v9 + 31));
          v15 = (v9 + 32);
          v16 = *(v9 + 32);
          *(v9 + 8) = *(v9 + 16);
          *(v9 + 31) = v16;
          *(v9 + 16) = 0;
        }

        *v15 = 0;
        v17 = *(v12 + (v10 << 6) + 38);

        return sub_100202160(v17, 5, a2, a3, a4);
      }

      return 408;
    }
  }

  return result;
}

uint64_t sub_1001F94C8(__int16 a1, unsigned int a2, const void *a3, unsigned int a4, int a5)
{
  if (!dword_100BCE23C)
  {
    return 408;
  }

  if (*(qword_100B5CD50 + 97) <= (a1 - 1))
  {
    return 120;
  }

  v5 = *(qword_100B5CD50 + 8);
  if (!v5)
  {
    return 120;
  }

  v6 = v5 + 144 * (a1 - 1);
  v7 = *(v6 + 135);
  if (v7 == 255)
  {
    return 120;
  }

  v8 = *(qword_100B5CD50 + 16);
  if (!v8)
  {
    return 120;
  }

  v9 = *(v6 + 134);
  v10 = v9 > 6;
  v11 = (1 << v9) & 0x61;
  if (!v10 && v11 != 0)
  {
    return 408;
  }

  return sub_100202230(*(v8 + (v7 << 6) + 38), a2, a3, a4, a5);
}

uint64_t sub_1001F9554(__int16 a1, uint64_t a2, int a3, char a4)
{
  if (!dword_100BCE23C)
  {
    return 408;
  }

  if (*(qword_100B5CD50 + 97) <= (a1 - 1))
  {
    return 120;
  }

  v4 = *(qword_100B5CD50 + 8);
  if (!v4)
  {
    return 120;
  }

  v5 = *(v4 + 144 * (a1 - 1) + 135);
  if (v5 == 255)
  {
    return 120;
  }

  v6 = *(qword_100B5CD50 + 16);
  if (!v6)
  {
    return 120;
  }

  result = sub_1002023C4(*(v6 + (v5 << 6) + 38), a2, a3, a4);
  if (!result)
  {
    result = sub_10000C240();
    if (result)
    {
      sub_10000AF54("AVDTP_DelayReport_Rsp: Transaction=%d, ErrorCode=0x%x,StreamHandles=%d", v9, v10, v11, v12, v13, v14, v15, a2);
      v16 = sub_10000C050(3u);
      result = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
      if (result)
      {
        *buf = 136446210;
        v18 = sub_10000C0FC();
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
        return 0;
      }
    }
  }

  return result;
}

BOOL sub_1001F969C(uint64_t a1)
{
  v3 = 0;
  v2 = 0;
  return !sub_1001F44B4(a1, &v3) && !sub_10028DAA8(v3, &v2) && *(v2 + 227) != 0;
}

uint64_t sub_1001F96F4(__int16 a1, uint64_t a2)
{
  if (*(qword_100B5CD50 + 97) <= (a1 - 1))
  {
    return 0;
  }

  v2 = *(qword_100B5CD50 + 8);
  if (!v2)
  {
    return 0;
  }

  v3 = v2 + 144 * (a1 - 1);
  if (*(v3 + 134) != 4)
  {
    return 408;
  }

  result = sub_10001FF10(v3 + 16, 3u);
  if (!result)
  {
    result = sub_10001F968((v3 + 16), a2, 0xCuLL, 2u);
    if (!result)
    {
      if (!*(a2 + 12) || (result = sub_10001F968((v3 + 16), (a2 + 12), 1uLL, 2u), !result))
      {
        result = sub_10001F968((v3 + 16), *(a2 + 24), *(a2 + 16), 2u);
        if (!result)
        {
          result = sub_1000B7EDC(sub_1001F97E8, *(v3 + 128), 0, v3 + 16, 1);
          if (!result)
          {
            *(v3 + 24) = v3;
          }
        }
      }
    }
  }

  return result;
}

void sub_1001F97F0(__int16 a1)
{
  if (*(qword_100B5CD50 + 97) > (a1 - 1))
  {
    v1 = *(qword_100B5CD50 + 8);
    if (v1)
    {
      sub_10029E6A0(*(v1 + 144 * (a1 - 1) + 128));
    }
  }
}

uint64_t sub_1001F9828(__int16 a1)
{
  if (*(qword_100B5CD50 + 97) > (a1 - 1) && (v1 = *(qword_100B5CD50 + 8)) != 0)
  {
    v2 = sub_10029DF2C(*(v1 + 144 * (a1 - 1) + 128));
    if (v2)
    {
      if (sub_10000C240())
      {
        sub_10000AF54("FreeHeadOfList Failed Status %d", v3, v4, v5, v6, v7, v8, v9, v2);
        v10 = sub_10000C050(3u);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          sub_1000E09C0();
        }
      }
    }
  }

  else
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Invalid AVDTP Handle", v11, v12, v13, v14, v15, v16, v17, v20);
      v18 = sub_10000C050(3u);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    return 2903;
  }

  return v2;
}

uint64_t sub_1001F9914(uint64_t *a1, void **a2, unsigned __int8 *a3)
{
  *a2 = 0;
  *a3 = 0;
  v125 = 0;
  v126 = 0;
  v4 = *(a1 + 6);
  if (sub_10000C240())
  {
    sub_10000AF54("ParseCaps", v5, v6, v7, v8, v9, v10, v11, v119);
    v12 = sub_10000C050(3u);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v124 = sub_10000C0FC();
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
    }
  }

  if (*(a1 + 15))
  {
    v13 = 0;
    v14 = 0;
  }

  else
  {
    v17 = *(a1 + 5);
    v18 = *(a1 + 6);
    if (v17 <= v18)
    {
      v14 = 0;
      v13 = 0;
      goto LABEL_25;
    }

    v19 = 0;
    v14 = 0;
    while (1)
    {
      if (*(a1 + 14) != 1)
      {
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avdtp/avdtp.c", 3478, "(*pBs).__RWFlag == BYTESTREAM_READ");
      }

      v20 = *a1;
      v21 = v18 + 1;
      *(a1 + 6) = v21;
      v13 = *(v20 + v18);
      if (v17 <= v21)
      {
        *(a1 + 15) = 1;
        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avdtp/avdtp.c");
        v23 = 0;
      }

      else
      {
        v22 = v18 + 2;
        *(a1 + 6) = v22;
        v19 = *(v20 + v21);
        v23 = v17 - v22;
      }

      if (v23 >= v19)
      {
        *(a1 + 6) += v19;
      }

      else
      {
        *(a1 + 15) = 1;
      }

      v24 = 1;
      if (!v19 && v13 <= 8 && ((1 << v13) & 0x107) != 0)
      {
        v25 = *(&v125 + v13);
        *(&v125 + v13) = v25 + 1;
        v24 = v25 == 0;
      }

      v14 += v24;
      if (*(a1 + 15))
      {
        break;
      }

      v17 = *(a1 + 5);
      v18 = *(a1 + 6);
      if (v17 <= v18)
      {
        goto LABEL_25;
      }
    }
  }

  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avdtp/avdtp.c");
  if (*(a1 + 15))
  {
    v15 = 0;
    v16 = a2;
    goto LABEL_135;
  }

LABEL_25:
  if (sub_10000C240())
  {
    sub_10000AF54("ParseCaps - got count %d", v26, v27, v28, v29, v30, v31, v32, v14);
    v33 = sub_10000C050(3u);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      v34 = sub_10000C0FC();
      *buf = 136446210;
      v124 = v34;
      _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
    }
  }

  if (!v14 || (v35 = sub_1001BBBD8(16 * v14, 0x105204037B82EA9uLL), (*a2 = v35) != 0))
  {
    if (sub_10000C240())
    {
      sub_10000AF54("numCaps = %d", v36, v37, v38, v39, v40, v41, v42, v14);
      v43 = sub_10000C050(3u);
      if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
      {
        v44 = sub_10000C0FC();
        *buf = 136446210;
        v124 = v44;
        _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
      }
    }

    if (v4 > *(a1 + 5))
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avdtp/avdtp.c", 3507, "(size_t)(pos) <= (size_t)((*pBs).__size)");
    }

    *(a1 + 6) = v4;
    v45 = 1;
    if (v14)
    {
      v46 = 0;
      v15 = 0;
      v16 = a2;
      while (1)
      {
        if (*(a1 + 15))
        {
          goto LABEL_135;
        }

        if (*(a1 + 14) != 1)
        {
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avdtp/avdtp.c", 3513, "(*pBs).__RWFlag == BYTESTREAM_READ");
        }

        v47 = *v16;
        v48 = *(a1 + 5);
        v49 = *(a1 + 6);
        if (v48 <= v49)
        {
          break;
        }

        v50 = *a1;
        *(a1 + 6) = v49 + 1;
        v13 = *(v50 + v49);
        if (v48 <= v49 + 1)
        {
          goto LABEL_42;
        }

        v51 = *a1;
        *(a1 + 6) = v49 + 2;
        v52 = *(v51 + v49 + 1);
LABEL_43:
        if (sub_10000C240())
        {
          sub_10000AF54("got capability %d", v53, v54, v55, v56, v57, v58, v59, v13);
          v60 = sub_10000C050(3u);
          if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
          {
            v61 = sub_10000C0FC();
            *buf = 136446210;
            v124 = v61;
            _os_log_impl(&_mh_execute_header, v60, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
          }
        }

        v62 = &v47[16 * v46];
        *v62 = v13;
        if (v13 > 4)
        {
          if (v13 <= 6)
          {
            if (v13 == 5)
            {
              if (v52 != 1)
              {
                goto LABEL_131;
              }
            }

            else if (!v52)
            {
              goto LABEL_131;
            }

            if (*(a1 + 14) != 1)
            {
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avdtp/avdtp.c", 3586, "(*pBs).__RWFlag == BYTESTREAM_READ");
            }

            if (*(a1 + 15))
            {
              sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avdtp/avdtp.c");
              goto LABEL_87;
            }

            v74 = *(a1 + 6);
            if (*(a1 + 5) <= v74)
            {
LABEL_87:
              *(a1 + 15) = 1;
            }

            else
            {
              v75 = *a1;
              *(a1 + 6) = v74 + 1;
              v62[1] = *(v75 + v74);
            }

            LOBYTE(v52) = v52 - 1;
LABEL_89:
            if (v52)
            {
              v62[3] = v52;
              v76 = sub_100007618(v52, 0x15CFA6CDuLL);
              *(v62 + 1) = v76;
              if (!v76)
              {
                goto LABEL_130;
              }

              if (*(a1 + 14) != 1)
              {
                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avdtp/avdtp.c", 3596, "(*pBs).__RWFlag == BYTESTREAM_READ");
              }

              v77 = v76;
              v78 = *a1;
              v79 = *(a1 + 6);
              if (*(a1 + 15))
              {
                sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avdtp/avdtp.c");
                v80 = 0;
              }

              else
              {
                v80 = *(a1 + 5) - v79;
              }

              if (v80 >= v52)
              {
                v81 = (v78 + v79);
                v82 = &v77[v52];
                do
                {
                  v83 = *v81++;
                  *v77++ = v83;
                }

                while (v77 < v82);
                *(a1 + 6) += v52;
                v16 = a2;
              }

              else
              {
                *(a1 + 15) = 1;
                v16 = a2;
              }
            }

            goto LABEL_123;
          }

          if (v13 != 7)
          {
            if (v13 != 8)
            {
              goto LABEL_89;
            }

LABEL_57:
            if (v52)
            {
              goto LABEL_131;
            }

            v63 = *(&v125 + v13) - 1;
            *(&v125 + v13) = v63;
            v46 -= v63 != 0;
            goto LABEL_123;
          }

LABEL_59:
          if (*(a1 + 14) != 1)
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avdtp/avdtp.c", 3540, "(*pBs).__RWFlag == BYTESTREAM_READ");
          }

          if (*(a1 + 15))
          {
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avdtp/avdtp.c");
            goto LABEL_72;
          }

          v64 = *(a1 + 6);
          if (*(a1 + 5) <= v64)
          {
LABEL_72:
            *(a1 + 15) = 1;
          }

          else
          {
            v65 = *a1;
            *(a1 + 6) = v64 + 1;
            v62[1] = *(v65 + v64);
          }

          if (*(a1 + 14) != 1)
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avdtp/avdtp.c", 3541, "(*pBs).__RWFlag == BYTESTREAM_READ");
          }

          if (*(a1 + 15))
          {
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avdtp/avdtp.c");
            goto LABEL_78;
          }

          v66 = *(a1 + 6);
          if (*(a1 + 5) <= v66)
          {
LABEL_78:
            *(a1 + 15) = 1;
          }

          else
          {
            v67 = *a1;
            *(a1 + 6) = v66 + 1;
            v62[2] = *(v67 + v66);
          }

          v62[3] = v52 - 2;
          if (v52 < 2)
          {
LABEL_131:
            v45 = 0;
            v93 = 24;
            goto LABEL_134;
          }

          if (v52 != 2)
          {
            v68 = sub_100007618((v52 - 2), 0xDAA1D221uLL);
            *(v62 + 1) = v68;
            if (!v68)
            {
              goto LABEL_130;
            }

            if (*(a1 + 14) != 1)
            {
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avdtp/avdtp.c", 3552, "(*pBs).__RWFlag == BYTESTREAM_READ");
            }

            v69 = v68;
            v120 = *a1;
            v70 = *(a1 + 6);
            v71 = v62[3];
            if (*(a1 + 15))
            {
              sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avdtp/avdtp.c");
              v72 = 0;
            }

            else
            {
              v72 = *(a1 + 5) - v70;
            }

            v73 = v62[3];
            if (v72 >= v73)
            {
              if (v71)
              {
                v84 = (v120 + v70);
                v85 = &v69[v71];
                do
                {
                  v86 = *v84++;
                  *v69++ = v86;
                }

                while (v69 < v85);
                LOWORD(v73) = v62[3];
              }

              *(a1 + 6) += v73;
              goto LABEL_123;
            }

            goto LABEL_122;
          }

          *(v62 + 1) = 0;
          goto LABEL_123;
        }

        if ((v13 - 1) < 2)
        {
          goto LABEL_57;
        }

        if (v13 != 3)
        {
          if (v13 != 4)
          {
            goto LABEL_89;
          }

          goto LABEL_59;
        }

        if (v52 != 3)
        {
          goto LABEL_131;
        }

        if (*(a1 + 14) != 1)
        {
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avdtp/avdtp.c", 3564, "(*pBs).__RWFlag == BYTESTREAM_READ");
        }

        if (*(a1 + 15))
        {
          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avdtp/avdtp.c");
        }

        else
        {
          v87 = *(a1 + 6);
          if (*(a1 + 5) > v87)
          {
            v88 = *a1;
            *(a1 + 6) = v87 + 1;
            v62[1] = *(v88 + v87);
            goto LABEL_111;
          }
        }

        *(a1 + 15) = 1;
LABEL_111:
        if (*(a1 + 14) != 1)
        {
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avdtp/avdtp.c", 3565, "(*pBs).__RWFlag == BYTESTREAM_READ");
        }

        if (*(a1 + 15))
        {
          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avdtp/avdtp.c");
LABEL_116:
          *(a1 + 15) = 1;
          goto LABEL_117;
        }

        v89 = *(a1 + 6);
        if (*(a1 + 5) <= v89)
        {
          goto LABEL_116;
        }

        v90 = *a1;
        *(a1 + 6) = v89 + 1;
        v62[2] = *(v90 + v89);
LABEL_117:
        if (*(a1 + 14) != 1)
        {
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avdtp/avdtp.c", 3566, "(*pBs).__RWFlag == BYTESTREAM_READ");
        }

        if (*(a1 + 15))
        {
          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avdtp/avdtp.c");
LABEL_122:
          *(a1 + 15) = 1;
          goto LABEL_123;
        }

        v91 = *(a1 + 6);
        if (*(a1 + 5) <= v91)
        {
          goto LABEL_122;
        }

        v92 = *a1;
        *(a1 + 6) = v91 + 1;
        v62[3] = *(v92 + v91);
LABEL_123:
        ++v15;
        if (++v46 >= v14)
        {
          v93 = 0;
          v45 = 1;
          goto LABEL_134;
        }
      }

      *(a1 + 15) = 1;
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avdtp/avdtp.c");
LABEL_42:
      v52 = 0;
      *(a1 + 15) = 1;
      goto LABEL_43;
    }

    v14 = 0;
    v15 = 0;
    v93 = 0;
    goto LABEL_133;
  }

  if (!sub_10000C240())
  {
    v15 = 0;
    v45 = 0;
    v93 = 129;
LABEL_133:
    v16 = a2;
    goto LABEL_134;
  }

  sub_10000AF54("ParseCaps: Could not allocate memory for %d capabilities", v94, v95, v96, v97, v98, v99, v100, v14);
  v101 = sub_10000C050(3u);
  v16 = a2;
  if (os_log_type_enabled(v101, OS_LOG_TYPE_ERROR))
  {
    sub_1000E09C0();
  }

  v15 = 0;
LABEL_130:
  v45 = 0;
  v93 = 129;
LABEL_134:
  if (*(a1 + 15))
  {
LABEL_135:
    if (sub_10000C240())
    {
      sub_10000AF54("ParseCaps: length error", v102, v103, v104, v105, v106, v107, v108, v119);
      v109 = sub_10000C050(3u);
      if (os_log_type_enabled(v109, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    v93 = 17;
    goto LABEL_139;
  }

  if (v45)
  {
    v93 = 0;
    *a3 = v14;
    return v93;
  }

LABEL_139:
  if (sub_10000C240())
  {
    sub_10000AF54("Caps not parsed correctly - good: %d error: 0x%2x", v110, v111, v112, v113, v114, v115, v116, v15);
    v117 = sub_10000C050(3u);
    if (os_log_type_enabled(v117, OS_LOG_TYPE_ERROR))
    {
      sub_1000E09C0();
    }
  }

  sub_1001F4290(v16, v15);
  return v93;
}

void sub_1001FA434(uint64_t a1, unsigned __int8 *a2, int a3)
{
  v75 = 0;
  if (!a2)
  {
    v73 = "data";
    goto LABEL_47;
  }

  if (!a3)
  {
    v73 = "(dataLen) > 0";
LABEL_47:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avdtp/avdtp.c", 5009, v73);
  }

  v76 = a2;
  v77 = a3;
  v80 = 1;
  v78 = a3;
  v4 = *a2;
  v5 = v4 >> 4;
  if (a3 == 1)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Error parsing AVDTP Signal header", v6, v7, v8, v9, v10, v11, v12, v74);
      v13 = sub_10000C050(3u);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    goto LABEL_7;
  }

  v79 = 2;
  v75 = a2[1];
  v14 = v4 & 3;
  if ((v4 & 3) != 0)
  {
    sub_100200AEC(a1, v4 >> 4);
  }

  if (sub_10000C240())
  {
    v21 = sub_100304858(&v75, 1, v15, v16, v17, v18, v19, v20);
    sub_10000AF54("AVDTP receive %s msgType:%d transaction:%d)\n", v22, v23, v24, v25, v26, v27, v28, v21);
    v29 = sub_10000C050(3u);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      v30 = sub_10000C0FC();
      *buf = 136446210;
      v82 = v30;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
    }
  }

  v31 = sub_1001FA874;
  switch(v75)
  {
    case 1u:
      goto LABEL_37;
    case 2u:
      v32 = sub_1001FAE2C;
      goto LABEL_36;
    case 3u:
      v32 = sub_1001FB334;
      goto LABEL_36;
    case 4u:
      v32 = sub_1001FBA54;
      goto LABEL_36;
    case 5u:
      v32 = sub_1001FBE64;
      goto LABEL_36;
    case 6u:
      v32 = sub_1001FC3C8;
      goto LABEL_36;
    case 7u:
      v32 = sub_1001FC910;
      goto LABEL_36;
    case 8u:
      v32 = sub_1001FCE3C;
      goto LABEL_36;
    case 9u:
      v32 = sub_1001FD340;
      goto LABEL_36;
    case 0xAu:
      v32 = sub_1001FD9A4;
      goto LABEL_36;
    case 0xBu:
      v32 = sub_1001FDED4;
      goto LABEL_36;
    case 0xCu:
      v32 = sub_1001FE69C;
      goto LABEL_36;
    case 0xDu:
      v32 = sub_1001FE308;
      goto LABEL_36;
    default:
      if (v75 != 254)
      {
        if (v75 == 255)
        {
          if (v14)
          {
            if (sub_10000C240())
            {
              sub_10000AF54("Got general reject message", v33, v34, v35, v36, v37, v38, v39, v74);
              v40 = sub_10000C050(3u);
              if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
              {
                v41 = sub_10000C0FC();
                *buf = 136446210;
                v82 = v41;
                _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
              }
            }

            return;
          }

          if (sub_10000C240())
          {
            sub_10000AF54("Unrecognized command %d!", v65, v66, v67, v68, v69, v70, v71, v75);
            v72 = sub_10000C050(3u);
            if (os_log_type_enabled(v72, OS_LOG_TYPE_ERROR))
            {
LABEL_31:
              sub_1000E09C0();
            }
          }
        }

        else if (sub_10000C240())
        {
          sub_10000AF54("Unrecognized command %d!", v42, v43, v44, v45, v46, v47, v48, v75);
          v49 = sub_10000C050(3u);
          if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_31;
          }
        }

LABEL_7:
        sub_100200FD8(a1, v5, v75);
        return;
      }

      v32 = sub_1001FD854;
LABEL_36:
      v31 = v32;
LABEL_37:
      if (v31(a1, &v76, v5, v14))
      {
        if (sub_10000C240())
        {
          v56 = sub_100304858(&v75, 1, v50, v51, v52, v53, v54, v55);
          sub_10000AF54("Error on receipt (%s) - %d", v57, v58, v59, v60, v61, v62, v63, v56);
          v64 = sub_10000C050(3u);
          if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
          {
            sub_10080F604();
          }
        }
      }

      return;
  }
}

uint64_t sub_1001FA874(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  if (sub_10000C240())
  {
    v15 = a4 > 3 ? "" : (&off_100AE6530)[a4];
    sub_10000AF54("Received DISCOVER - %s", v8, v9, v10, v11, v12, v13, v14, v15);
    v16 = sub_10000C050(3u);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v73 = sub_10000C0FC();
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
    }
  }

  if (!a2)
  {
    sub_1000D660C();
  }

  if (dword_100BCE23C && (v17 = *(qword_100B5CD50 + 98), *(qword_100B5CD50 + 98)))
  {
    v18 = *(qword_100B5CD50 + 16);
    while (!v18[19] || v18[19] != a1)
    {
      v18 += 32;
      if (!--v17)
      {
        goto LABEL_17;
      }
    }

    v20 = *v18;
    if (!a4)
    {
LABEL_27:
      v21 = *qword_100B5CD50;
      v22 = sub_100007618(4 * *(qword_100B5CD50 + 96), 0x100004052888210uLL);
      v23 = v22;
      if (v22)
      {
        v24 = *(qword_100B5CD50 + 96);
        if (*(qword_100B5CD50 + 96))
        {
          v25 = 0;
          v26 = (v21 + 29);
          do
          {
            v27 = *(v26 - 4);
            if (v27)
            {
              v28 = &v22[4 * v25];
              *v28 = *(v26 - 3);
              v28[2] = v27;
              v28[3] = *v26 >= *(v26 - 1);
              ++v25;
            }

            v26 += 40;
            --v24;
          }

          while (v24);
        }

        else
        {
          v25 = 0;
        }

        LODWORD(a2) = 0;
      }

      else
      {
        v25 = 0;
        LODWORD(a2) = 129;
      }

      if (sub_10000C240())
      {
        sub_10000AF54("Returning %d endpoints", v52, v53, v54, v55, v56, v57, v58, v25);
        v59 = sub_10000C050(3u);
        if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
        {
          v60 = sub_10000C0FC();
          *buf = 136446210;
          v73 = v60;
          _os_log_impl(&_mh_execute_header, v59, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
        }
      }

      sub_1002012AC(a1, a3, v23, v25, a2);
      if (v23)
      {
        v61 = v23;
LABEL_62:
        sub_10000C1E8(v61);
        return a2;
      }

      return a2;
    }
  }

  else
  {
LABEL_17:
    sub_1000D660C();
    v20 = 0;
    if (!a4)
    {
      goto LABEL_27;
    }
  }

  if (a4 == 3)
  {
    if (*(a2 + 14) != 1)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avdtp/avdtp.c", 3403, "(*pBs).__RWFlag == BYTESTREAM_READ");
    }

    if (*(a2 + 15))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avdtp/avdtp.c");
    }

    else
    {
      v49 = *(a2 + 12);
      if (*(a2 + 10) > v49)
      {
        v50 = *a2;
        *(a2 + 12) = v49 + 1;
        v51 = *(v50 + v49);
        if (v51)
        {
          LOBYTE(a2) = v51;
        }

        else
        {
          LOBYTE(a2) = 24;
        }

        goto LABEL_54;
      }
    }

    *(a2 + 15) = 1;
    LOBYTE(a2) = 17;
LABEL_54:
    (*(*(qword_100B5CD50 + 24) + 24))(a3, v20, 0, 0, a2);
    return a2;
  }

  if (a4 != 2)
  {
LABEL_22:
    LOBYTE(a2) = 0;
    return a2;
  }

  if (*(a2 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avdtp/avdtp.c");
    goto LABEL_22;
  }

  v29 = *(a2 + 10) - *(a2 + 12);
  v30 = (v29 + ((v29 & 0x8000) >> 15)) >> 1;
  if (!v30)
  {
    goto LABEL_22;
  }

  v31 = sub_100007618(4 * ((v29 + ((v29 & 0x8000) >> 15)) >> 1), 0x100004052888210uLL);
  if (v31)
  {
    v32 = v31;
    v33 = v30;
    v34 = v31 + 1;
    do
    {
      if (*(a2 + 14) != 1)
      {
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avdtp/avdtp.c", 3375, "(*pBs).__RWFlag == BYTESTREAM_READ");
      }

      if (*(a2 + 15))
      {
        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avdtp/avdtp.c");
LABEL_69:
        *(a2 + 15) = 1;
        a2 = 17;
        goto LABEL_70;
      }

      v35 = *(a2 + 10);
      v36 = *(a2 + 12);
      if (v35 <= v36)
      {
        goto LABEL_69;
      }

      v37 = *a2;
      *(a2 + 12) = v36 + 1;
      v38 = *(v37 + v36);
      v34[1] = v38 >> 2;
      v34[2] = (v38 & 2) != 0;
      if (v35 <= v36 + 1)
      {
        goto LABEL_69;
      }

      *(a2 + 12) = v36 + 2;
      v39 = *(v37 + v36 + 1);
      *(v34 - 1) = v39 & 0xF0;
      *v34 = (v39 & 8) != 0;
      if (sub_10000C240())
      {
        sub_10000AF54("seid %2d - inUse %B - mediaType %d - dir %s", v40, v41, v42, v43, v44, v45, v46, v34[1]);
        v47 = sub_10000C050(3u);
        if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
        {
          v48 = sub_10000C0FC();
          *buf = 136446210;
          v73 = v48;
          _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
        }
      }

      v34 += 4;
      --v33;
    }

    while (v33);
    if (*(a2 + 15))
    {
      a2 = 17;
    }

    else
    {
      a2 = 0;
    }

LABEL_70:
    (*(*(qword_100B5CD50 + 24) + 24))(a3, v20, v32, v30, a2);
    v61 = v32;
    goto LABEL_62;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("Error - out of memory", v63, v64, v65, v66, v67, v68, v69, v71);
    v70 = sub_10000C050(3u);
    if (os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
    {
      sub_1000E09C0();
    }
  }

  LOBYTE(a2) = -127;
  return a2;
}

uint64_t sub_1001FAE2C(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v6 = a2;
  if (!a2)
  {
    sub_1000D660C();
  }

  if (sub_10000C240())
  {
    v15 = a4 > 3 ? "" : (&off_100AE6530)[a4];
    sub_10000AF54("Received GET CAPS - %s", v8, v9, v10, v11, v12, v13, v14, v15);
    v16 = sub_10000C050(3u);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      *&buf[4] = sub_10000C0FC();
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
    }
  }

  if (dword_100BCE23C && (v17 = *(qword_100B5CD50 + 98), *(qword_100B5CD50 + 98)))
  {
    v18 = *(qword_100B5CD50 + 16);
    while (!v18[19] || v18[19] != a1)
    {
      v18 += 32;
      if (!--v17)
      {
        goto LABEL_17;
      }
    }

    v20 = *v18;
    if (!a4)
    {
      goto LABEL_25;
    }
  }

  else
  {
LABEL_17:
    sub_1000D660C();
    v20 = 0;
    if (!a4)
    {
LABEL_25:
      if (*(v6 + 14) != 1)
      {
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avdtp/avdtp.c", 3672, "(*pBs).__RWFlag == BYTESTREAM_READ");
      }

      if (*(v6 + 15))
      {
        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avdtp/avdtp.c");
LABEL_40:
        *(v6 + 15) = 1;
        LODWORD(v6) = 17;
LABEL_41:
        sub_100201DC8(a1, 2u, a3, 0, 0, v6);
        return v6;
      }

      v25 = *(v6 + 12);
      if (*(v6 + 10) <= v25)
      {
        goto LABEL_40;
      }

      v26 = *v6;
      *(v6 + 12) = v25 + 1;
      v27 = *(v26 + v25) >> 2;
      v28 = *(qword_100B5CD50 + 96);
      if (!*(qword_100B5CD50 + 96))
      {
        goto LABEL_51;
      }

      v29 = (*qword_100B5CD50 + 31);
      v30 = 255;
      while (*(v29 - 6) != v27)
      {
        v29 += 40;
        --v30;
        if (!--v28)
        {
          goto LABEL_51;
        }
      }

      if (!v30)
      {
LABEL_51:
        if (sub_10000C240())
        {
          sub_10000AF54("Get caps received for unknown seid %d", v43, v44, v45, v46, v47, v48, v49, v27);
          v50 = sub_10000C050(3u);
          if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
          {
            sub_1000E09C0();
          }
        }

        LODWORD(v6) = 18;
        goto LABEL_41;
      }

      if (*(v29 - 4) || !*(v29 - 23) || *(v29 - 3) == 1)
      {
        if (sub_10000C240())
        {
          sub_10000AF54("Returning Capabilities", v31, v32, v33, v34, v35, v36, v37, v64);
          v38 = sub_10000C050(3u);
          if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
          {
            v39 = sub_10000C0FC();
            *buf = 136446210;
            *&buf[4] = v39;
            _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
          }
        }

        if (*(v29 - 1))
        {
          v40 = 0;
          v41 = 0;
          do
          {
            sub_1001FEC48(a1, *(v29 - 31) + v40);
            ++v41;
            v42 = *(v29 - 1);
            v40 += 16;
          }

          while (v41 < v42);
        }

        else
        {
          LODWORD(v42) = 0;
        }

        v60 = *(v29 - 31);
        v61 = a1;
        v62 = a3;
      }

      else
      {
        if (sub_10000C240())
        {
          sub_10000AF54("2-Play Source: Returning Config as Caps", v51, v52, v53, v54, v55, v56, v57, v64);
          v58 = sub_10000C050(3u);
          if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
          {
            v59 = sub_10000C0FC();
            *buf = 136446210;
            *&buf[4] = v59;
            _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
          }
        }

        v60 = *(v29 - 23);
        LODWORD(v42) = *v29;
        v61 = a1;
        v62 = a3;
      }

      sub_100201DC8(v61, 2u, v62, v60, v42, 0);
LABEL_64:
      LOBYTE(v6) = 0;
      return v6;
    }
  }

  if (a4 == 3)
  {
    if (*(v6 + 14) != 1)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avdtp/avdtp.c", 3655, "(*pBs).__RWFlag == BYTESTREAM_READ");
    }

    if (*(v6 + 15))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avdtp/avdtp.c");
    }

    else
    {
      v22 = *(v6 + 12);
      if (*(v6 + 10) > v22)
      {
        v23 = *v6;
        *(v6 + 12) = v22 + 1;
        v24 = *(v23 + v22);
        if (v24)
        {
          LOBYTE(v6) = v24;
        }

        else
        {
          LOBYTE(v6) = 24;
        }

        goto LABEL_33;
      }
    }

    *(v6 + 15) = 1;
    LOBYTE(v6) = 17;
LABEL_33:
    (*(*(qword_100B5CD50 + 24) + 32))(a3, v20, *(qword_100B5CD50 + 99), 0, 0, v6);
    return v6;
  }

  if (a4 != 2)
  {
    goto LABEL_64;
  }

  *buf = 0;
  v65 = 0;
  v6 = sub_1001F9914(v6, buf, &v65);
  v21 = v65;
  (*(*(qword_100B5CD50 + 24) + 32))(a3, v20, *(qword_100B5CD50 + 99), *buf, v65, v6);
  sub_1001F4290(buf, v21);
  return v6;
}

uint64_t sub_1001FB334(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  if (sub_10000C240())
  {
    v15 = a4 > 3 ? "" : (&off_100AE6530)[a4];
    sub_10000AF54("Received SET CONFIG - %s", v8, v9, v10, v11, v12, v13, v14, v15);
    v16 = sub_10000C050(3u);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v82 = sub_10000C0FC();
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
    }
  }

  if (!a2)
  {
    sub_1000D660C();
  }

  if (dword_100BCE23C && (v17 = *(qword_100B5CD50 + 98), *(qword_100B5CD50 + 98)))
  {
    v18 = *(qword_100B5CD50 + 16);
    while (!v18[19] || v18[19] != a1)
    {
      v18 += 32;
      if (!--v17)
      {
        goto LABEL_17;
      }
    }

    v28 = *v18;
    if (!a4)
    {
LABEL_36:
      if (*(a2 + 14) != 1)
      {
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avdtp/avdtp.c", 3804, "(*pBs).__RWFlag == BYTESTREAM_READ");
      }

      if (*(a2 + 15))
      {
        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avdtp/avdtp.c");
        v38 = *(a2 + 14);
        *(a2 + 15) = 1;
        if (v38 != 1)
        {
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avdtp/avdtp.c", 3805, "(*pBs).__RWFlag == BYTESTREAM_READ");
        }
      }

      else
      {
        v40 = *(a2 + 12);
        if (*(a2 + 10) > v40)
        {
          v41 = *a2;
          *(a2 + 12) = v40 + 1;
          v42 = *(v41 + v40) >> 2;
          if (*(a2 + 10) > (v40 + 1))
          {
            v43 = *a2;
            *(a2 + 12) = v40 + 2;
            v44 = *(v43 + v40 + 1) >> 2;
            goto LABEL_50;
          }

LABEL_49:
          v44 = 0;
          *(a2 + 15) = 1;
LABEL_50:
          v80 = 0;
          v79 = 0;
          v50 = sub_1001F9914(a2, &v80, &v79);
          if (v50)
          {
            if (v50 == 17)
            {
              v34 = 35;
            }

            else
            {
              v34 = v50;
            }

            goto LABEL_64;
          }

          v51 = *(qword_100B5CD50 + 96);
          if (!*(qword_100B5CD50 + 96))
          {
            goto LABEL_63;
          }

          v52 = (*qword_100B5CD50 + 32);
          v53 = 255;
          while (*(v52 - 7) != v42)
          {
            v52 += 40;
            --v53;
            if (!--v51)
            {
              goto LABEL_63;
            }
          }

          if (v53)
          {
            if (*(v52 - 3) >= *(v52 - 4))
            {
              v34 = 19;
            }

            else
            {
              if (*(v52 - 2))
              {
                goto LABEL_62;
              }

              if (sub_10000C240())
              {
                sub_10000AF54("In Recv_SetConfig, allocating endpoint", v57, v58, v59, v60, v61, v62, v63, v78);
                v64 = sub_10000C050(3u);
                if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
                {
                  v65 = sub_10000C0FC();
                  *buf = 136446210;
                  v82 = v65;
                  _os_log_impl(&_mh_execute_header, v64, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
                }
              }

              v66 = sub_1001F7280(v44);
              if (!v66)
              {
LABEL_62:
                v34 = 129;
              }

              else
              {
                v67 = v66;
                v68 = qword_100B5CD50;
                if (qword_100B5CD50 && *(qword_100B5CD50 + 98))
                {
                  v69 = 0;
                  v70 = (*(qword_100B5CD50 + 16) + 38);
                  while (1)
                  {
                    v71 = *v70;
                    v70 += 32;
                    if (v71 == a1)
                    {
                      break;
                    }

                    if (*(qword_100B5CD50 + 98) == ++v69)
                    {
                      goto LABEL_90;
                    }
                  }

                  *(v66 + 135) = v69;
                  if (v69 != 0xFF)
                  {
                    v72 = *(v68 + 96);
                    if (*(v68 + 96))
                    {
                      v73 = 0;
                      v74 = (*v68 + 25);
                      while (1)
                      {
                        v75 = *v74;
                        v74 += 40;
                        if (v75 == v42)
                        {
                          break;
                        }

                        if (v72 == ++v73)
                        {
                          goto LABEL_97;
                        }
                      }
                    }

                    else
                    {
LABEL_97:
                      LOBYTE(v73) = -1;
                    }

                    *(v66 + 136) = v73;
                    *(v52 - 2) = v80;
                    *v52 = v79;
                    v76 = sub_1001F73E4(v66);
                    (*(*(qword_100B5CD50 + 24) + 40))(a3, v28, v42, v44, v76, v80, v79);
                    return 0;
                  }
                }

                else
                {
LABEL_90:
                  *(v66 + 135) = -1;
                }

                *(v66 + 132) = 0;
                *v66 = 0;
                *(v66 + 128) = 0;
                sub_1001C3A30(0);
                *(v67 + 137) = -1;
                *(v67 + 133) = -65281;
                v34 = 128;
              }
            }
          }

          else
          {
LABEL_63:
            v34 = 18;
          }

LABEL_64:
          sub_1001F4290(&v80, v79);
          sub_100202160(a1, 3, a3, 0, v34);
          return v34;
        }

        *(a2 + 15) = 1;
      }

      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avdtp/avdtp.c");
      v42 = 0;
      goto LABEL_49;
    }
  }

  else
  {
LABEL_17:
    if (sub_10000C240())
    {
      sub_10000AF54("AVDTP did not find a2dp handle from CID with result %!", v20, v21, v22, v23, v24, v25, v26, 0);
      v27 = sub_10000C050(3u);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        sub_10080F604();
      }
    }

    v28 = 0;
    if (!a4)
    {
      goto LABEL_36;
    }
  }

  if (a4 == 3)
  {
    v36 = sub_1002007B4(a3, a1);
    if (!v36)
    {
      v39 = 0;
      v34 = 1;
LABEL_74:
      v54 = qword_100B5CD50;
      if (*(qword_100B5CD50 + 97) > (v36 - 1))
      {
        v55 = *(qword_100B5CD50 + 8);
        if (v55)
        {
          if (*(v55 + 144 * (v36 - 1) + 136) != 255 && *qword_100B5CD50)
          {
            v56 = *qword_100B5CD50 + 40 * *(v55 + 144 * (v36 - 1) + 136);
            sub_1001F4290((v56 + 16), *(v56 + 32));
            *(v56 + 32) = 0;
            v54 = qword_100B5CD50;
          }
        }
      }

      (*(*(v54 + 24) + 48))(a3, v36, v39, v34);
      return v34;
    }

    if (*(a2 + 14) != 1)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avdtp/avdtp.c", 3777, "(*pBs).__RWFlag == BYTESTREAM_READ");
    }

    if (*(a2 + 15))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avdtp/avdtp.c");
      v37 = *(a2 + 14);
      *(a2 + 15) = 1;
      if (v37 != 1)
      {
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avdtp/avdtp.c", 3778, "(*pBs).__RWFlag == BYTESTREAM_READ");
      }
    }

    else
    {
      v45 = *(a2 + 12);
      if (*(a2 + 10) > v45)
      {
        v46 = *a2;
        *(a2 + 12) = v45 + 1;
        if (*(a2 + 10) > (v45 + 1))
        {
          v47 = *(v46 + v45);
          v48 = *a2;
          *(a2 + 12) = v45 + 2;
          v49 = *(v48 + v45 + 1);
LABEL_68:
          if (v49)
          {
            v39 = v47;
          }

          else
          {
            v39 = 0;
          }

          if (v49)
          {
            v34 = v49;
          }

          else
          {
            v34 = 24;
          }

          goto LABEL_74;
        }

LABEL_67:
        v47 = 0;
        *(a2 + 15) = 1;
        v49 = 17;
        goto LABEL_68;
      }

      *(a2 + 15) = 1;
    }

    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avdtp/avdtp.c");
    goto LABEL_67;
  }

  if (a4 != 2)
  {
    return 0;
  }

  v29 = sub_1002007B4(a3, a1);
  v30 = qword_100B5CD50;
  if (*(qword_100B5CD50 + 97) > (v29 - 1) && (v31 = *(qword_100B5CD50 + 8)) != 0 && (v32 = v31 + 144 * (v29 - 1), *(v32 + 136) != 255) && *qword_100B5CD50)
  {
    v33 = *qword_100B5CD50 + 40 * *(v32 + 136);
    sub_1001F9250(v32, 1u);
    sub_1001F4290((v33 + 8), *(v33 + 31));
    v34 = 0;
    v35 = *(v33 + 16);
    *(v33 + 31) = *(v33 + 32);
    *(v33 + 8) = v35;
    *(v33 + 16) = 0;
    *(v33 + 32) = 0;
    ++*(v33 + 29);
    *(v32 + 137) = *(v33 + 24);
    *(v33 + 24) = v29 - 1;
    v30 = qword_100B5CD50;
  }

  else
  {
    v34 = 1;
  }

  (*(*(v30 + 24) + 48))(a3, v29, 0, v34);
  return v34;
}

uint64_t sub_1001FBA54(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v48 = 0;
  v47 = 0;
  if (sub_10000C240())
  {
    v15 = a4 > 3 ? "" : (&off_100AE6530)[a4];
    sub_10000AF54("Received GET CONFIG - %s", v8, v9, v10, v11, v12, v13, v14, v15);
    v16 = sub_10000C050(3u);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v50 = sub_10000C0FC();
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
    }
  }

  if (a2)
  {
    if (a4)
    {
      goto LABEL_9;
    }
  }

  else
  {
    sub_1000D660C();
    if (a4)
    {
LABEL_9:
      if (a4 != 3)
      {
        if (a4 == 2)
        {
          v17 = sub_1002007B4(a3, a1);
          if (v17)
          {
            a2 = sub_1001F9914(a2, &v48, &v47);
            v18 = v48;
            v19 = v47;
          }

          else
          {
            v19 = 0;
            v18 = 0;
            a2 = 18;
          }

          (*(*(qword_100B5CD50 + 24) + 56))(a3, v17, v18, v19, a2);
          sub_1001F4290(&v48, v19);
        }

        else
        {
          LOBYTE(a2) = 0;
        }

        return a2;
      }

      v20 = sub_1002007B4(a3, a1);
      if (v20)
      {
        if (*(a2 + 14) != 1)
        {
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avdtp/avdtp.c", 4055, "(*pBs).__RWFlag == BYTESTREAM_READ");
        }

        if (*(a2 + 15))
        {
          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avdtp/avdtp.c");
        }

        else
        {
          v43 = *(a2 + 12);
          if (*(a2 + 10) > v43)
          {
            v44 = *a2;
            *(a2 + 12) = v43 + 1;
            v45 = *(v44 + v43);
            if (v45)
            {
              LOBYTE(a2) = v45;
            }

            else
            {
              LOBYTE(a2) = 24;
            }

            goto LABEL_44;
          }
        }

        *(a2 + 15) = 1;
        LOBYTE(a2) = 17;
      }

      else
      {
        LOBYTE(a2) = 1;
      }

LABEL_44:
      (*(*(qword_100B5CD50 + 24) + 56))(a3, v20, 0, 0, a2);
      return a2;
    }
  }

  if (*(a2 + 14) != 1)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avdtp/avdtp.c", 4070, "(*pBs).__RWFlag == BYTESTREAM_READ");
  }

  if (*(a2 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avdtp/avdtp.c");
  }

  else
  {
    v21 = *(a2 + 12);
    if (*(a2 + 10) > v21)
    {
      v22 = *a2;
      *(a2 + 12) = v21 + 1;
      v23 = *(v22 + v21) >> 2;
      v24 = *(qword_100B5CD50 + 96);
      if (!*(qword_100B5CD50 + 96))
      {
        goto LABEL_48;
      }

      v25 = *qword_100B5CD50;
      v26 = 10200;
      while (*(v25 + 25) != v23)
      {
        v25 += 40;
        v26 -= 40;
        if (!--v24)
        {
          goto LABEL_48;
        }
      }

      if (v26)
      {
        LODWORD(a2) = 0;
        v27 = 1;
      }

      else
      {
LABEL_48:
        v25 = 0;
        v27 = 0;
        LODWORD(a2) = 18;
      }

      goto LABEL_32;
    }
  }

  v23 = 0;
  v25 = 0;
  v27 = 0;
  *(a2 + 15) = 1;
  LODWORD(a2) = 17;
LABEL_32:
  if (sub_10000C240())
  {
    v28 = sub_10020093C(v23, a1);
    sub_1001F73E4(v28);
    sub_10000AF54("AVDT_GetConfiguration_Rsp\n\tTransaction=%d\n\tStreamHandle=%d\n\tError=0x%.2x\n\tConfigParams=\n", v29, v30, v31, v32, v33, v34, v35, a3);
    v36 = sub_10000C050(3u);
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
    {
      v37 = sub_10000C0FC();
      *buf = 136446210;
      v50 = v37;
      _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
    }
  }

  if (v27)
  {
    v38 = *(v25 + 8);
    v39 = *(v25 + 31);
    v40 = a1;
    v41 = a3;
    v42 = 0;
  }

  else
  {
    v40 = a1;
    v41 = a3;
    v38 = 0;
    v39 = 0;
    v42 = a2;
  }

  sub_100201DC8(v40, 4u, v41, v38, v39, v42);
  return a2;
}

uint64_t sub_1001FBE64(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v55 = 0;
  v54 = 0;
  if (!dword_100BCE23C)
  {
    return 49;
  }

  if (sub_10000C240())
  {
    v15 = a4 > 3 ? "" : (&off_100AE6530)[a4];
    sub_10000AF54("Received RECONFIGURE - %s", v8, v9, v10, v11, v12, v13, v14, v15);
    v17 = sub_10000C050(3u);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v57 = sub_10000C0FC();
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
    }
  }

  if (!a2)
  {
    sub_1000D660C();
  }

  if (dword_100BCE23C && (v18 = *(qword_100B5CD50 + 98), *(qword_100B5CD50 + 98)))
  {
    v19 = (*(qword_100B5CD50 + 16) + 38);
    while (1)
    {
      v20 = *v19;
      v19 += 32;
      if (v20 == a1)
      {
        break;
      }

      if (!--v18)
      {
        goto LABEL_16;
      }
    }
  }

  else
  {
LABEL_16:
    sub_1000D660C();
  }

  if (!a4)
  {
    if (!*(*(qword_100B5CD50 + 24) + 136))
    {
      v16 = 25;
      goto LABEL_76;
    }

    if (*(a2 + 14) != 1)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avdtp/avdtp.c", 3970, "(*pBs).__RWFlag == BYTESTREAM_READ");
    }

    if (*(a2 + 15))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avdtp/avdtp.c");
    }

    else
    {
      v40 = *(a2 + 12);
      if (*(a2 + 10) > v40)
      {
        v41 = *a2;
        *(a2 + 12) = v40 + 1;
        v42 = *(v41 + v40) >> 2;
        goto LABEL_48;
      }
    }

    v42 = 0;
    *(a2 + 15) = 1;
LABEL_48:
    v16 = sub_1001F9914(a2, &v55, &v54);
    if (!v16)
    {
      v43 = sub_10020093C(v42, a1);
      if (v43 && (v44 = v43, *(v43 + 136) != 255) && *qword_100B5CD50)
      {
        v45 = *qword_100B5CD50 + 40 * *(v43 + 136);
        if (*(v43 + 134) == 3)
        {
          if (!*(v45 + 16))
          {
            v46 = v55;
            v47 = v54;
            if (!sub_1001F8DF0(v55, v54, *(v45 + 8), *(v45 + 31), (v45 + 16), (v45 + 32)))
            {
              v52 = *(*(qword_100B5CD50 + 24) + 136);
              v53 = sub_1001F73E4(v44);
              v52(a3, v53, v46, v47);
              v16 = 0;
              goto LABEL_77;
            }
          }

          v16 = 129;
        }

        else
        {
          v16 = 49;
        }

        sub_1001F4290((v45 + 16), *(v45 + 32));
        *(v45 + 32) = 0;
      }

      else
      {
        v16 = 20;
      }
    }

LABEL_76:
    sub_100202160(a1, 5, a3, 0, v16);
    LODWORD(v47) = v54;
LABEL_77:
    sub_1001F4290(&v55, v47);
    return v16;
  }

  if (a4 != 3)
  {
    if (a4 != 2)
    {
      return 0;
    }

    v21 = sub_1002007B4(a3, a1);
    v22 = v21;
    v23 = qword_100B5CD50;
    if (v21)
    {
      if (*(qword_100B5CD50 + 97) > (v21 - 1) && (v24 = *(qword_100B5CD50 + 8)) != 0 && (v25 = *(v24 + 144 * (v21 - 1) + 136), v25 != 255) && *qword_100B5CD50)
      {
        v26 = *qword_100B5CD50 + 40 * v25;
        sub_1001F4290((v26 + 8), *(v26 + 31));
        v16 = 0;
        v27 = *(v26 + 16);
        *(v26 + 31) = *(v26 + 32);
        *(v26 + 8) = v27;
        *(v26 + 16) = 0;
        *(v26 + 32) = 0;
        v23 = qword_100B5CD50;
      }

      else
      {
        v16 = 0;
      }
    }

    else
    {
      v16 = 1;
    }

    v31 = *(*(v23 + 24) + 144);
    if (v31)
    {
      v32 = a3;
      v33 = v22;
      v34 = 0;
LABEL_73:
      v31(v32, v33, v34, v16);
      return v16;
    }

    return v16;
  }

  v28 = sub_1002007B4(a3, a1);
  if (!v28)
  {
    v30 = 0;
    v16 = 1;
    goto LABEL_66;
  }

  if (*(a2 + 14) != 1)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avdtp/avdtp.c", 3939, "(*pBs).__RWFlag == BYTESTREAM_READ");
  }

  if (*(a2 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avdtp/avdtp.c");
    v29 = *(a2 + 14);
    *(a2 + 15) = 1;
    if (v29 != 1)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avdtp/avdtp.c", 3940, "(*pBs).__RWFlag == BYTESTREAM_READ");
    }

    goto LABEL_58;
  }

  v35 = *(a2 + 12);
  if (*(a2 + 10) <= v35)
  {
    *(a2 + 15) = 1;
LABEL_58:
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avdtp/avdtp.c");
    goto LABEL_59;
  }

  v36 = *a2;
  *(a2 + 12) = v35 + 1;
  if (*(a2 + 10) <= (v35 + 1))
  {
LABEL_59:
    v37 = 0;
    *(a2 + 15) = 1;
    v39 = 17;
    goto LABEL_60;
  }

  v37 = *(v36 + v35);
  v38 = *a2;
  *(a2 + 12) = v35 + 2;
  v39 = *(v38 + v35 + 1);
LABEL_60:
  if (v39)
  {
    v16 = v39;
  }

  else
  {
    v16 = 24;
  }

  if (v39)
  {
    v30 = v37;
  }

  else
  {
    v30 = 0;
  }

LABEL_66:
  v48 = qword_100B5CD50;
  if (*(qword_100B5CD50 + 97) > (v28 - 1))
  {
    v49 = *(qword_100B5CD50 + 8);
    if (v49)
    {
      if (*(v49 + 144 * (v28 - 1) + 136) != 255 && *qword_100B5CD50)
      {
        v50 = *qword_100B5CD50 + 40 * *(v49 + 144 * (v28 - 1) + 136);
        sub_1001F4290((v50 + 16), *(v50 + 32));
        *(v50 + 32) = 0;
        v48 = qword_100B5CD50;
      }
    }
  }

  v31 = *(*(v48 + 24) + 144);
  if (v31)
  {
    v32 = a3;
    v33 = v28;
    v34 = v30;
    goto LABEL_73;
  }

  return v16;
}

uint64_t sub_1001FC3C8(uint64_t a1, uint64_t *a2, uint64_t a3, unsigned int a4)
{
  if (sub_10000C240())
  {
    v15 = a4 > 3 ? "" : (&off_100AE6530)[a4];
    sub_10000AF54("Received OPEN - %s", v8, v9, v10, v11, v12, v13, v14, v15);
    v16 = sub_10000C050(3u);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v66 = sub_10000C0FC();
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
    }
  }

  if (a2)
  {
    if (a4)
    {
      goto LABEL_9;
    }
  }

  else
  {
    sub_1000D660C();
    if (a4)
    {
LABEL_9:
      if (a4 != 3)
      {
        if (a4 == 2)
        {
          v17 = sub_1002007B4(a3, a1);
          v18 = v17;
          v19 = qword_100B5CD50;
          if (!v17)
          {
            v44 = 1;
            goto LABEL_43;
          }

          if (*(qword_100B5CD50 + 97) <= (v17 - 1) || (v20 = *(qword_100B5CD50 + 8)) == 0)
          {
            v44 = 18;
            goto LABEL_43;
          }

          v21 = v20 + 144 * (v17 - 1);
          if (sub_10000C240())
          {
            v22 = sub_1001F73E4(v21);
            sub_10000AF54("CreateMediaTransport(%d)\n", v23, v24, v25, v26, v27, v28, v29, v22);
            v30 = sub_10000C050(3u);
            if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
            {
              v31 = sub_10000C0FC();
              *buf = 136446210;
              v66 = v31;
              _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
            }
          }

          v32 = *(v21 + 135);
          v19 = qword_100B5CD50;
          if (v32 == 255 || (v33 = *(qword_100B5CD50 + 16)) == 0)
          {
LABEL_24:
            v44 = 129;
LABEL_43:
            (*(*(v19 + 24) + 64))(a3, v18, 0, v44);
            return v44;
          }

          v34 = v33 + (v32 << 6);
          if (sub_10000C240())
          {
            sub_10000AF54("Opening media channel to %:\n", v35, v36, v37, v38, v39, v40, v41, v34 + 28);
            v42 = sub_10000C050(3u);
            if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
            {
              v43 = sub_10000C0FC();
              *buf = 136446210;
              v66 = v43;
              _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
            }
          }

          if (sub_10028F454(sub_1001FF38C, sub_1001FF59C, sub_1001FF7A0, 25, v34 + 28, qword_100B5CD50 + 64, (v21 + 128), &unk_100AE6500))
          {
            v19 = qword_100B5CD50;
            goto LABEL_24;
          }

          sub_10028D5C0(*(v21 + 128), sub_100200410);
          *(v21 + 133) = a3;
          sub_1001F9250(v21, 2u);
        }

        return 0;
      }

      v45 = sub_1002007B4(a3, a1);
      if (*(a2 + 14) != 1)
      {
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avdtp/avdtp.c", 4147, "(*pBs).__RWFlag == BYTESTREAM_READ");
      }

      v18 = v45;
      if (*(a2 + 15))
      {
        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avdtp/avdtp.c");
      }

      else
      {
        v46 = *(a2 + 6);
        if (*(a2 + 5) > v46)
        {
          v47 = *a2;
          *(a2 + 6) = v46 + 1;
          v48 = *(v47 + v46);
LABEL_37:
          if (!v48)
          {
            v48 = 24;
          }

          if (v18)
          {
            v44 = v48;
          }

          else
          {
            v44 = 1;
          }

          v19 = qword_100B5CD50;
          goto LABEL_43;
        }
      }

      *(a2 + 15) = 1;
      v48 = 17;
      goto LABEL_37;
    }
  }

  if (*(a2 + 14) != 1)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avdtp/avdtp.c", 4166, "(*pBs).__RWFlag == BYTESTREAM_READ");
  }

  if (*(a2 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avdtp/avdtp.c");
  }

  else
  {
    v49 = *(a2 + 6);
    if (*(a2 + 5) > v49)
    {
      v50 = *a2;
      *(a2 + 6) = v49 + 1;
      v51 = sub_10020093C(*(v50 + v49) >> 2, a1);
      v52 = v51;
      if (v51 && *(v51 + 134) == 1)
      {
        sub_1001F9250(v51, 2u);
        v53 = *(*(qword_100B5CD50 + 24) + 72);
        v54 = sub_1001F73E4(v52);
        v53(a3, v54);
        v44 = 0;
        if (*(qword_100B5CD50 + 103) != 1)
        {
          return v44;
        }
      }

      else
      {
        v44 = 49;
      }

      goto LABEL_50;
    }
  }

  v52 = 0;
  *(a2 + 15) = 1;
  v44 = 17;
LABEL_50:
  if (sub_10000C240())
  {
    sub_1001F73E4(v52);
    sub_10000AF54("AVDT_Open_Rsp\n\tTransaction=%d\n\tStreamHandle=%d\n\tError=0x%.2x\n", v55, v56, v57, v58, v59, v60, v61, a3);
    v62 = sub_10000C050(3u);
    if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
    {
      v63 = sub_10000C0FC();
      *buf = 136446210;
      v66 = v63;
      _os_log_impl(&_mh_execute_header, v62, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
    }
  }

  sub_100200DB8(a1, 6u, a3, v44);
  return v44;
}

uint64_t sub_1001FC910(uint64_t a1, uint64_t *a2, uint64_t a3, unsigned int a4)
{
  memset(v50, 0, 124);
  if (sub_10000C240())
  {
    v15 = a4 > 3 ? "" : (&off_100AE6530)[a4];
    sub_10000AF54("Received START - %s", v8, v9, v10, v11, v12, v13, v14, v15);
    v16 = sub_10000C050(3u);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v49 = sub_10000C0FC();
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
    }
  }

  if (!a2)
  {
    sub_1000D660C();
  }

  v47 = 0;
  if (a4)
  {
    if (a4 != 3)
    {
      LOBYTE(v17) = 0;
      if (a4 == 2)
      {
        sub_1002009D0(a3, a1, v50, &v47);
        v18 = v47;
        if (v47)
        {
          sub_100200704(v50, v47, 4u);
          v17 = 0;
        }

        else
        {
          v17 = 1;
        }

        (*(*(qword_100B5CD50 + 24) + 104))(a3, v50, v18, 0, v17);
      }

      return v17;
    }

    sub_1002009D0(a3, a1, v50, &v47);
    v19 = v47;
    if (v47)
    {
      if (*(a2 + 14) != 1)
      {
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avdtp/avdtp.c", 4233, "(*pBs).__RWFlag == BYTESTREAM_READ");
      }

      if (*(a2 + 15))
      {
        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avdtp/avdtp.c");
        v20 = *(a2 + 14);
        *(a2 + 15) = 1;
        if (v20 != 1)
        {
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avdtp/avdtp.c", 4234, "(*pBs).__RWFlag == BYTESTREAM_READ");
        }

        goto LABEL_55;
      }

      v36 = *(a2 + 6);
      if (*(a2 + 5) <= v36)
      {
        *(a2 + 15) = 1;
LABEL_55:
        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avdtp/avdtp.c");
        v23 = 0;
        goto LABEL_56;
      }

      v37 = *a2;
      *(a2 + 6) = v36 + 1;
      v23 = *(v37 + v36) >> 2;
      if (*(a2 + 5) <= (v36 + 1))
      {
LABEL_56:
        *(a2 + 15) = 1;
LABEL_57:
        v17 = 24;
        goto LABEL_58;
      }

      v38 = *a2;
      *(a2 + 6) = v36 + 2;
      if (*(v38 + v36 + 1) == 255)
      {
        v17 = 255;
        goto LABEL_58;
      }

      if (!*(v38 + v36 + 1))
      {
        goto LABEL_57;
      }

      v17 = 253;
    }

    else
    {
      v23 = 0;
      v17 = 1;
    }

LABEL_58:
    v44 = *(*(qword_100B5CD50 + 24) + 104);
    v45 = sub_100200A38(v23, a1);
    v44(a3, v50, v19, v45, v17);
    return v17;
  }

  if (*(a2 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avdtp/avdtp.c");
    v21 = 0;
LABEL_21:
    v22 = 0;
    LOBYTE(v17) = 24;
    goto LABEL_25;
  }

  v24 = *(a2 + 5);
  v25 = *(a2 + 6);
  v21 = v24 - v25;
  if ((v24 - v25) > 0x3Eu)
  {
    v22 = 0;
    LOBYTE(v17) = -127;
    goto LABEL_25;
  }

  if (*(a2 + 5) == v25)
  {
    goto LABEL_21;
  }

  if (v24 == v25)
  {
    v21 = 0;
    v22 = 0;
    LOBYTE(v17) = 0;
    goto LABEL_25;
  }

  v39 = 0;
  LOBYTE(v17) = 0;
  v22 = 0;
  while (1)
  {
    if (*(a2 + 14) != 1)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avdtp/avdtp.c", 4271, "(*pBs).__RWFlag == BYTESTREAM_READ");
    }

    if (*(a2 + 15))
    {
      break;
    }

    v40 = *(a2 + 6);
    if (*(a2 + 5) <= v40)
    {
      goto LABEL_62;
    }

    v41 = *a2;
    *(a2 + 6) = v40 + 1;
    v42 = *(v41 + v40) >> 2;
    v43 = sub_10020093C(v42, a1);
    *(v50 + v39) = sub_1001F73E4(v43);
    if (!v43)
    {
      LOBYTE(v17) = 18;
LABEL_51:
      v21 = ++v39;
      v22 = v42;
      goto LABEL_52;
    }

    if (*(v43 + 134) != 3)
    {
      LOBYTE(v17) = 49;
      goto LABEL_51;
    }

    ++v39;
LABEL_52:
    if (v39 >= v21)
    {
      goto LABEL_25;
    }
  }

  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avdtp/avdtp.c");
LABEL_62:
  *(a2 + 15) = 1;
  LOBYTE(v17) = 17;
  v21 = v39;
LABEL_25:
  if (sub_10000C240())
  {
    sub_10000AF54("AVDT_Start_Ind\n\tTransaction=%d\n\tStreamHandles=", v26, v27, v28, v29, v30, v31, v32, a3);
    v33 = sub_10000C050(3u);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      v34 = sub_10000C0FC();
      *buf = 136446210;
      v49 = v34;
      _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
    }
  }

  v35 = qword_100B5CD50;
  if ((*(qword_100B5CD50 + 103) & 1) != 0 || v17)
  {
    sub_1001F7CCC(a1, a3, v50, v21, v22, v17);
    if (!v17)
    {
      v35 = qword_100B5CD50;
      goto LABEL_32;
    }
  }

  else
  {
LABEL_32:
    (*(*(v35 + 24) + 96))(a3, v50, v21);
    LOBYTE(v17) = 0;
  }

  return v17;
}