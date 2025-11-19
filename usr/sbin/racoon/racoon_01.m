uint64_t sub_10000BFA8(uint64_t a1)
{
  v1 = bswap32(*(a1 + 2)) >> 16;
  memset(v35, 0, sizeof(v35));
  if (v1 < 9)
  {
    return 0;
  }

  v2 = v1 - 8;
  v3 = (a1 + 8);
  while (v2 > 3)
  {
    v4 = *v3;
    v5 = bswap32(v4 & 0xFFFFFF7F) >> 16;
    v6 = (v4 << 8) & 0x8000;
    v7 = v3[1];
    v8 = __rev16(v7);
    if (dword_100090058)
    {
      v9 = ne_log_obj();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        *buf = 67109632;
        v30 = v5;
        v31 = 1024;
        v32 = v6;
        v33 = 1024;
        v34 = v8;
        _os_log_debug_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "type=%d, flag=0x%04x, lorv=0x%04x\n", buf, 0x14u);
      }
    }

    if (v5 <= 0xF)
    {
      ++*(v35 + v5);
    }

    if (v5 >= 3)
    {
      if (v5 <= 3)
      {
        if (!v6)
        {
          if (dword_100090058)
          {
            v16 = ne_log_obj();
            if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
            {
              sub_100056E98();
            }
          }

          return 0xFFFFFFFFLL;
        }

        if (!sub_1000018C0(v8))
        {
          if (dword_100090058)
          {
            v19 = ne_log_obj();
            if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
            {
              sub_100056E28();
            }
          }

          return 0xFFFFFFFFLL;
        }
      }

      else
      {
        if (v5 != 4)
        {
          if ((v5 - 6) < 4)
          {
            if (dword_100090058)
            {
              v13 = ne_log_obj();
              if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
              {
                sub_100056900();
              }
            }

            return 0xFFFFFFFFLL;
          }

          if (v5 == 5)
          {
            if (dword_100090058)
            {
              v15 = ne_log_obj();
              if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
              {
                sub_10005734C();
              }
            }

            return 0xFFFFFFFFLL;
          }

LABEL_64:
          if (dword_100090058)
          {
            v21 = ne_log_obj();
            if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
            {
              sub_100056C8C();
            }
          }

          return 0xFFFFFFFFLL;
        }

        if (!v6)
        {
          if (dword_100090058)
          {
            v18 = ne_log_obj();
            if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
            {
              sub_1000572A0();
            }
          }

          return 0xFFFFFFFFLL;
        }

        if (v8 - 1 >= 2)
        {
          if (v8 - 61443 >= 2 && v8 - 3 > 1)
          {
            if (dword_100090058)
            {
              v24 = ne_log_obj();
              if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
              {
                sub_100057230();
              }
            }

            return 0xFFFFFFFFLL;
          }

          if (dword_100090058)
          {
            v10 = ne_log_obj();
            if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
            {
              sub_10005718C(&v27, v28);
            }
          }
        }
      }

      goto LABEL_30;
    }

    if (v5 == 1)
    {
      if (!v6)
      {
        if (dword_100090058)
        {
          v17 = ne_log_obj();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            sub_100056FB0();
          }
        }

        return 0xFFFFFFFFLL;
      }

      if ((v8 - 1) >= 2u)
      {
        if (dword_100090058)
        {
          v20 = ne_log_obj();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
          {
            sub_100056890();
          }
        }

        return 0xFFFFFFFFLL;
      }

      goto LABEL_30;
    }

    if (v5 != 2)
    {
      goto LABEL_64;
    }

    if (v6)
    {
      if (dword_100090058)
      {
        v11 = ne_log_obj();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
        {
          sub_100056ED4(&v25, v26);
        }
      }

LABEL_30:
      v2 -= 4;
      v3 += 2;
      goto LABEL_31;
    }

    if (!v7)
    {
      if (dword_100090058)
      {
        v22 = ne_log_obj();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          sub_100056F74();
        }
      }

      return 0xFFFFFFFFLL;
    }

    v2 = v2 - v8 - 4;
    if (v2 < 0)
    {
      if (dword_100090058)
      {
        v23 = ne_log_obj();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          sub_1000573C8();
        }
      }

      return 0xFFFFFFFFLL;
    }

    v3 = (v3 + v8 + 4);
LABEL_31:
    if (v2 <= 0)
    {
      return 0;
    }
  }

  if (dword_100090058)
  {
    v14 = ne_log_obj();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_10005743C();
    }
  }

  return 0xFFFFFFFFLL;
}

void *sub_10000C430(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = *(*(a1 + 64) + 248);
  v3 = *(a1 + 80);
  v4 = sub_10000C4EC(a1, 0);
  v5 = sub_10003D3A8(v4 + 8 * (v3 == 16));
  if (!v5)
  {
    if (dword_100090058)
    {
      v8 = ne_log_obj();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_1000574AC();
      }
    }

    return 0;
  }

  v6 = v5;
  if (v3 == 16)
  {
    v7 = v5[1];
    *v7 = vrev32_s8(*(*(v2 + 88) + 24));
    sub_10000C4EC(a1, &v7[1]);
  }

  return v6;
}

uint64_t sub_10000C4EC(uint64_t a1, uint64_t a2)
{
  v3 = *(*(a1 + 64) + 248);
  if (a2)
  {
    *a2 = 0;
    *(a2 + 4) = *(v3 + 4);
    *(a2 + 5) = 1;
    v4 = a2 + 8;
  }

  else
  {
    if (!v3)
    {
      return 8;
    }

    v4 = 0;
  }

  v5 = 0;
  v6 = 0;
  v30 = a2 != 0;
  LODWORD(v7) = 8;
  do
  {
    if (v6)
    {
      *v6 = 3;
    }

    if (v4)
    {
      *v4 = 0;
      *(v4 + 4) = *(v3 + 8);
      *(v4 + 5) = 1;
      v8 = (v4 + 8);
    }

    else
    {
      v8 = 0;
    }

    v9 = *(v3 + 16);
    if (v9)
    {
      __src = bswap32(v9);
      if (v9 < 0x10000)
      {
        v10 = 8;
      }

      else
      {
        v10 = 12;
      }

      if (v8)
      {
        v11 = sub_100023B38(v8, 11, 1u);
        v12 = *(v3 + 16);
        if (v12 < 0x10000)
        {
          v13 = sub_100023B38(v11, 12, v12);
        }

        else
        {
          v13 = sub_100023AE4(v11, 0xCu, &__src, 4);
        }

        v14 = v13;
      }

      else
      {
        v14 = 0;
      }
    }

    else
    {
      v10 = 0;
      v14 = v8;
    }

    v15 = *(v3 + 32);
    if (v15)
    {
      v31 = bswap32(v15);
      if (v15 >> 16)
      {
        v16 = 12;
      }

      else
      {
        v16 = 8;
      }

      if (v8)
      {
        v17 = sub_100023B38(v14, 11, 2u);
        v18 = *(v3 + 32);
        if (v18 < 0x10000)
        {
          v19 = sub_100023B38(v17, 12, v18);
        }

        else
        {
          v19 = sub_100023AE4(v17, 0xCu, &v31, 4);
        }

        v14 = v19;
      }

      v10 += v16;
    }

    v20 = *(v3 + 40);
    if (v20)
    {
      if (!v8)
      {
        if (*(v3 + 44))
        {
          v10 += 8;
        }

        else
        {
          v10 += 4;
        }

        goto LABEL_41;
      }

      v14 = sub_100023B38(v14, 1, v20);
      v10 += 4;
    }

    v21 = *(v3 + 44);
    if (v21)
    {
      v10 += 4;
      if (v8)
      {
        v14 = sub_100023B38(v14, 14, v21);
      }
    }

LABEL_41:
    v22 = *(v3 + 48);
    if (v22)
    {
      if (!v8)
      {
        if (*(v3 + 52))
        {
          v10 += 8;
        }

        else
        {
          v10 += 4;
        }

        goto LABEL_50;
      }

      v23 = sub_100009D3C(v22);
      v14 = sub_100023B38(v14, 3, v23);
      v10 += 4;
    }

    v24 = *(v3 + 52);
    if (v24)
    {
      v10 += 4;
      if (v8)
      {
        v14 = sub_100023B38(v14, 2, v24);
      }
    }

LABEL_50:
    v25 = *(v3 + 60);
    if (v25 > 0x12)
    {
      goto LABEL_55;
    }

    if (((1 << v25) & 0x7C026) != 0)
    {
      v10 += 4;
      if (!v8)
      {
        goto LABEL_55;
      }

      v26 = v14;
      v27 = 4;
      goto LABEL_54;
    }

    if (((1 << v25) & 0x18) != 0)
    {
      v10 += 4;
      if (v8)
      {
        v26 = v14;
        v27 = 5;
        v25 = 3;
LABEL_54:
        sub_100023B38(v26, v27, v25);
      }
    }

LABEL_55:
    v28 = (v10 + 8);
    if (v4)
    {
      *(v4 + 2) = __rev16(v28);
    }

    v7 = (v28 + v7);
    if (a2)
    {
      v6 = v4;
    }

    v5 += v30;
    if (!a2)
    {
      v28 = 0;
    }

    v4 += v28;
    v3 = *(v3 + 80);
  }

  while (v3);
  if (a2)
  {
    *(a2 + 2) = bswap32(v7) >> 16;
    *(a2 + 7) = v5;
  }

  return v7;
}

uint64_t sub_10000C7F0(uint64_t a1, int a2)
{
  v2 = a2;
  v4 = 128;
  if (!a2)
  {
    v4 = 120;
  }

  v5 = *(a1 + v4);
  if (*(a1 + 61) == 16)
  {
    v6 = sub_10003D3A8(8uLL);
    if (!v6)
    {
      if (dword_100090058)
      {
        v47 = ne_log_obj();
        if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
        {
          sub_1000574AC();
        }
      }

      return 0xFFFFFFFFLL;
    }

    v7 = v6;
    *v6[1] = 0x100000001000000;
    if (!v5)
    {
      goto LABEL_86;
    }
  }

  else
  {
    v7 = 0;
    if (!v5)
    {
LABEL_86:
      result = 0;
      if (v2)
      {
        *(a1 + 232) = v7;
      }

      else
      {
        *(a1 + 224) = v7;
      }

      return result;
    }
  }

  v55 = 0;
  v54 = v2;
LABEL_9:
  v8 = *(v5 + 32);
  if (!v8)
  {
    goto LABEL_85;
  }

LABEL_10:
  if (*v8 == 4)
  {
    goto LABEL_84;
  }

  v56 = v7;
  if ((*(*(a1 + 256) + 96) & 6) == 0)
  {
    if (*(a1 + 61) != 16)
    {
      goto LABEL_105;
    }

    goto LABEL_18;
  }

  if (dword_100090058)
  {
    v9 = ne_log_obj();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "NAT detected -> UDP encapsulation\n", buf, 2u);
    }
  }

  v8[5] = 1;
  if (*(a1 + 61) == 16)
  {
    v8[4] += *(*(*(a1 + 256) + 88) + 12);
LABEL_18:
    v10 = sub_10003D3A8(0xCuLL);
    if (!v10)
    {
      goto LABEL_99;
    }

    v11 = v10;
    v12 = v10[1];
    *v12 = 0;
    v12[4] = *v5;
    v13 = *v8;
    v12[5] = *v8;
    v12[7] = 1;
    if (v13 == 4)
    {
      v14 = v8 + 26;
      *v10 = *v10 - 2;
      v15 = 2;
    }

    else
    {
      v14 = v8 + 6;
      v15 = 4;
    }

    v12[6] = v15;
    memcpy(v12 + 8, v14, v15);
    v16 = *(v8 + 8);
    if (!v16)
    {
LABEL_102:
      if (dword_100090058)
      {
        v51 = ne_log_obj();
        if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
        {
          sub_1000575D4();
        }
      }

      goto LABEL_99;
    }

    v17 = 0;
    v18 = v15 | 8;
    while (*v8 == 3 && *(v16 + 4) == 11 && *(v16 + 12) == 254)
    {
LABEL_74:
      v16 = *(v16 + 16);
      if (!v16)
      {
        if (!v17)
        {
          goto LABEL_102;
        }

        v44 = *v11;
        *(v12 + 1) = bswap32(*v11) >> 16;
        if (v56)
        {
          v45 = sub_10003D42C(v56, *v56 + v44);
        }

        else
        {
          v45 = sub_10003D3A8(v44);
        }

        v7 = v45;
        v2 = v54;
        if (!v45)
        {
          if (dword_100090058)
          {
            v53 = ne_log_obj();
            if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
            {
              sub_1000574AC();
            }
          }

          v50 = v11;
          goto LABEL_100;
        }

        memcpy((*v45 + v45[1] - *v11), v11[1], *v11);
        if (v55 && *(a1 + 61) == 16)
        {
          *(v7[1] + v55) = 2;
        }

        v55 = *v7 - *v11;
        sub_10003D4F0(v11);
LABEL_84:
        v8 = *(v8 + 9);
        if (!v8)
        {
LABEL_85:
          v5 = *(v5 + 40);
          if (!v5)
          {
            goto LABEL_86;
          }

          goto LABEL_9;
        }

        goto LABEL_10;
      }
    }

    if (v17)
    {
      *v17 = 3;
      ++v12[7];
    }

    v19 = *(v5 + 8);
    if (v19 < 0x10000)
    {
      v20 = 8;
    }

    else
    {
      v20 = 12;
    }

    if (v19)
    {
      v21 = v20;
    }

    else
    {
      v21 = 0;
    }

    v22 = *(v5 + 16);
    if (v22)
    {
      v23 = v22 < 0x10000 ? 8 : 12;
      v24 = v21 + v23;
      if (v22 != 0x7FFFFFFF)
      {
        v21 = v24;
      }
    }

    if (*(v16 + 8))
    {
      v25 = 8;
    }

    else
    {
      v25 = 4;
    }

    v26 = v25 + v21;
    v27 = *v8;
    if (*v8 == 2)
    {
      if (*(v16 + 12) == 254)
      {
        if (dword_100090058)
        {
          v49 = ne_log_obj();
          if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
          {
            sub_100057524();
          }
        }

        goto LABEL_98;
      }

      v26 += 4;
    }

    else if (v27 != 4)
    {
      if (v27 != 3)
      {
        if (dword_100090058)
        {
          v48 = ne_log_obj();
          if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
          {
            sub_100057560(v8);
          }
        }

LABEL_98:
        sub_10003D4F0(v11);
        goto LABEL_99;
      }

      if (*(v16 + 12) != 254)
      {
        v26 += 4;
      }
    }

    v28 = sub_1000018C0(*(*(a1 + 112) + 36));
    LODWORD(v29) = v26 + 4;
    if (v28)
    {
      v29 = v29;
    }

    else
    {
      v29 = v26;
    }

    v30 = v29 + 8;
    v31 = sub_10003D42C(v11, *v11 + v29 + 8);
    if (!v31)
    {
      goto LABEL_99;
    }

    v11 = v31;
    v12 = v31[1];
    v32 = &v12[v18];
    *v32 = 0;
    v33 = *(v16 + 4);
    v32[4] = *v16;
    v32[5] = v33;
    v34 = &v12[v18 + 8];
    if (*(v5 + 8))
    {
      v35 = sub_100023B38(v34, 1, 1u);
      v36 = *(v5 + 8);
      if (v36 < 0x10000)
      {
        v34 = sub_100023B38(v35, 2, v36);
      }

      else
      {
        __src = bswap32(v36);
        v34 = sub_100023AE4(v35, 2u, &__src, 4);
      }
    }

    v37 = *(v5 + 16);
    if (v37 && v37 != 0x7FFFFFFF)
    {
      v38 = sub_100023B38(v34, 1, 2u);
      v39 = *(v5 + 16);
      if (v39 < 0x10000)
      {
        v34 = sub_100023B38(v38, 2, v39);
      }

      else
      {
        v58 = bswap32(v39);
        v34 = sub_100023AE4(v38, 2u, &v58, 4);
      }
    }

    v40 = sub_100023B38(v34, 4, v8[4]);
    v41 = v40;
    v42 = *(v16 + 8);
    if (v42)
    {
      v41 = sub_100023B38(v40, 6, v42);
    }

    if (*v8 == 3)
    {
      v43 = *(v16 + 12);
      if (v43 != 254)
      {
        goto LABEL_70;
      }
    }

    else if (*v8 == 2)
    {
      v43 = *(v16 + 12);
LABEL_70:
      v41 = sub_100023B38(v41, 5, v43);
    }

    if (sub_1000018C0(*(*(a1 + 112) + 36)))
    {
      sub_100023B38(v41, 3, *(*(a1 + 112) + 36));
    }

    v17 = v11[1] + v18;
    *(v17 + 2) = __rev16(v30);
    v18 += v30;
    goto LABEL_74;
  }

LABEL_105:
  if (dword_100090058)
  {
    v52 = ne_log_obj();
    if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
    {
      sub_1000574E8();
    }
  }

LABEL_99:
  v50 = v56;
  if (v56)
  {
LABEL_100:
    sub_10003D4F0(v50);
  }

  return 0xFFFFFFFFLL;
}

uint64_t sub_10000CE04(uint64_t a1)
{
  v1 = *(a1 + 120);
  if (!v1)
  {
    return 1;
  }

  while (1)
  {
    v2 = *(v1 + 32);
    if (v2)
    {
      break;
    }

LABEL_12:
    v1 = *(v1 + 40);
    if (!v1)
    {
      return 1;
    }
  }

  while (1)
  {
    v3 = *(v2 + 16);
    v4 = v3 == 1 || v3 == 61443;
    if (!v4 && v3 != 3)
    {
      return 0;
    }

    v2 = *(v2 + 72);
    if (!v2)
    {
      goto LABEL_12;
    }
  }
}

uint64_t sub_10000CE4C(uint64_t result)
{
  if (result)
  {
    while (1)
    {
      v1 = *(result + 32);
      if (v1)
      {
        break;
      }

LABEL_11:
      result = *(result + 40);
      if (!result)
      {
        return result;
      }
    }

    while (1)
    {
      v2 = *(v1 + 16);
      v3 = v2 == 2 || v2 == 4;
      if (v3 || v2 == 61444)
      {
        return 1;
      }

      v1 = *(v1 + 72);
      if (!v1)
      {
        goto LABEL_11;
      }
    }
  }

  return result;
}

uint64_t sub_10000CE8C(uint64_t a1)
{
  if (!a1)
  {
    return 1;
  }

  while (1)
  {
    v1 = *(a1 + 32);
    if (v1)
    {
      break;
    }

LABEL_5:
    a1 = *(a1 + 40);
    if (!a1)
    {
      return 1;
    }
  }

  while (*(v1 + 16) == 2)
  {
    v1 = *(v1 + 72);
    if (!v1)
    {
      goto LABEL_5;
    }
  }

  return 0;
}

uint64_t sub_10000CECC(int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == 2)
  {
    if (!a3 || a4 | a2)
    {
      if (!dword_100090058)
      {
        return 0xFFFFFFFFLL;
      }

      v7 = ne_log_obj();
      if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        return 0xFFFFFFFFLL;
      }

      v11 = 136315650;
      v12 = sub_10003C8C0(0, a2);
      v13 = 2080;
      v14 = sub_10003C8C0(1, a3);
      v15 = 2080;
      v16 = sub_10003C8C0(2, a4);
      v8 = "illegal algorithm defined AH enc=%s auth=%s comp=%s.\n";
      goto LABEL_25;
    }

    return 0;
  }

  if (a1 == 4)
  {
    if (a3 | a2 || !a4)
    {
      if (!dword_100090058)
      {
        return 0xFFFFFFFFLL;
      }

      v7 = ne_log_obj();
      if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        return 0xFFFFFFFFLL;
      }

      v11 = 136315650;
      v12 = sub_10003C8C0(0, a2);
      v13 = 2080;
      v14 = sub_10003C8C0(1, a3);
      v15 = 2080;
      v16 = sub_10003C8C0(2, a4);
      v8 = "illegal algorithm defined IPcomp enc=%s auth=%s comp=%s.\n";
      goto LABEL_25;
    }

    return 0;
  }

  if (a1 != 3)
  {
    if (dword_100090058)
    {
      v10 = ne_log_obj();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_100057610();
      }
    }

    return 0xFFFFFFFFLL;
  }

  if (a2 && !a4)
  {
    return 0;
  }

  if (!dword_100090058)
  {
    return 0xFFFFFFFFLL;
  }

  v7 = ne_log_obj();
  if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    return 0xFFFFFFFFLL;
  }

  v11 = 136315650;
  v12 = sub_10003C8C0(0, a2);
  v13 = 2080;
  v14 = sub_10003C8C0(1, a3);
  v15 = 2080;
  v16 = sub_10003C8C0(2, a4);
  v8 = "illegal algorithm defined ESP enc=%s auth=%s comp=%s.\n";
LABEL_25:
  _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, v8, &v11, 0x20u);
  return 0xFFFFFFFFLL;
}

uint64_t sub_10000D158(int a1)
{
  if (a1 == 50)
  {
    v1 = 3;
  }

  else
  {
    v1 = -1;
  }

  if (a1 == 51)
  {
    v2 = 2;
  }

  else
  {
    v2 = v1;
  }

  if (a1 == 108)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_10000D184(int a1)
{
  if ((a1 - 2) > 2)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return dword_10006CBC0[a1 - 2];
  }
}

uint64_t sub_10000D1A8(void *a1, uint64_t a2)
{
  if (*a2 != 4)
  {
    return 1;
  }

  if (*a1 != 8)
  {
    return 1;
  }

  v2 = a1[1];
  if (v2[1] != -1)
  {
    return 1;
  }

  v4 = bswap32(*v2);
  v5 = bswap32(**(a2 + 8));
  v6 = v4 >= v5;
  v7 = v4 > v5;
  v8 = !v6;
  return (v7 - v8);
}

uint64_t sub_10000D200(void *a1, void *a2)
{
  if (*a2 == 16 && *a1 == 32)
  {
    v2 = a1[1];
    v3 = 16;
    while (*(v2 + v3) == 255)
    {
      if (++v3 == 32)
      {
        v4 = a2[1];
        v5 = bswap64(*v2);
        v6 = bswap64(*v4);
        if (v5 == v6)
        {
          v5 = bswap64(v2[1]);
          v6 = bswap64(v4[1]);
          if (v5 == v6)
          {
            return 0;
          }
        }

        if (v5 < v6)
        {
          return 0xFFFFFFFFLL;
        }

        return 1;
      }
    }
  }

  return 1;
}

uint64_t sub_10000D28C(uint64_t a1)
{
  v1 = *(a1 + 320);
  if (!v1)
  {
    if (dword_100090058)
    {
      v4 = ne_log_obj();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        sub_100057820();
      }
    }

    return 0xFFFFFFFFLL;
  }

  if (*v1 <= 3uLL)
  {
    if (dword_100090058)
    {
      v3 = ne_log_obj();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        sub_1000577AC((a1 + 320));
      }
    }

    return 18;
  }

  v6 = v1[1];
  if (*(a1 + 80) == 16 && *(a1 + 81) == 2 && *(*(a1 + 72) + 48) == 1 && (*(a1 + 96) & 4) == 0)
  {
    v7 = *v6;
    if ((v7 | 4) != 5)
    {
      if (dword_100090058)
      {
        v8 = ne_log_obj();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          sub_100057730(v6);
        }
      }

      return 18;
    }
  }

  else
  {
    v7 = *v6;
  }

  if (v7 <= 8 && ((1 << v7) & 0x1D0) != 0)
  {
    if (dword_100090058)
    {
      v10 = ne_log_obj();
      v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
      v7 = *v6;
      if (v11)
      {
        *buf = 136315138;
        *&buf[4] = sub_10003C390(v7);
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "such ID type %s is not proper.\n", buf, 0xCu);
        v7 = *v6;
      }
    }
  }

  if ((v7 | 4) == 5)
  {
    if (v6[1] == 17)
    {
      v17 = *(v6 + 1);
      if (v17 == 62465)
      {
        goto LABEL_48;
      }

      v18 = *(a1 + 48);
      v19 = *(v18 + 1);
      if (v19 != 2 && v19 != 30)
      {
        if (dword_100090058)
        {
          v37 = ne_log_obj();
          if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
          {
            sub_100057680(a1 + 48);
          }
        }

        return 18;
      }

      v21 = *(v18 + 2);
      if (__rev16(v17) == v21 || dword_100090058 == 0)
      {
        goto LABEL_48;
      }

      v13 = ne_log_obj();
      if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_48;
      }

      v23 = bswap32(*(v6 + 1)) >> 16;
      *buf = 67109376;
      *&buf[4] = v21;
      *&buf[8] = 1024;
      *&buf[10] = v23;
      v16 = "port %d expected, but %d\n";
      goto LABEL_47;
    }

    if (!v6[1] && *(v6 + 1) && dword_100090058 != 0)
    {
      v13 = ne_log_obj();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = v6[1];
        v15 = bswap32(*(v6 + 1)) >> 16;
        *buf = 67109376;
        *&buf[4] = v14;
        *&buf[8] = 1024;
        *&buf[10] = v15;
        v16 = "protocol ID and Port mismatched. proto_id:%d port:%d\n";
LABEL_47:
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, v16, buf, 0xEu);
      }
    }
  }

LABEL_48:
  result = sub_100004470(*(*(a1 + 64) + 56), 0);
  if (result)
  {
    *buf = 0;
    v24 = sub_100004470(*(*(a1 + 64) + 56), buf);
    if (v24)
    {
      v25 = v24;
      v26 = 0;
      do
      {
        v27 = *v25;
        if (v27 == sub_10000D790(*v6))
        {
          v28 = *(v25 + 1);
          if (!v28)
          {
            goto LABEL_84;
          }

          if (!v26 || (sub_10003D4F0(v26), (v28 = *(v25 + 1)) != 0) || (v29 = *v25, (v28 = *(qword_1000900B8 + 8 * v29 + 176)) != 0))
          {
            v26 = sub_10003D538(v28);
            LODWORD(v29) = *v25;
          }

          else
          {
            v26 = 0;
          }

          if (v29 == 4)
          {
            v30 = v26[1];
            v31 = *(v30 + 1);
            if (v31 == 30)
            {
              if (**(a1 + 320) == 20)
              {
                v33 = *(v30 + 8);
                v32 = *(v30 + 16);
                if (v33 == *(v6 + 4) && v32 == *(v6 + 12))
                {
                  goto LABEL_85;
                }
              }
            }

            else if (v31 == 2 && **(a1 + 320) == 8 && *(v30 + 4) == *(v6 + 1))
            {
              goto LABEL_85;
            }
          }

          else
          {
            if (v29 == 5)
            {
              if (dword_100090058)
              {
                v36 = ne_log_obj();
                if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
                {
                  v38[0] = 0;
                  _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "ASN1DN ID matching not implemented - passed.\n", v38, 2u);
                }
              }

LABEL_84:
              if (!v26)
              {
                return 0;
              }

LABEL_85:
              sub_10003D4F0(v26);
              return 0;
            }

            if (!memcmp(v26[1], v6 + 4, *v26))
            {
              goto LABEL_85;
            }
          }
        }

        v25 = sub_100004470(0, buf);
      }

      while (v25);
      if (v26)
      {
        sub_10003D4F0(v26);
      }
    }

    if (dword_100090058)
    {
      v35 = ne_log_obj();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
      {
        sub_1000576F8();
      }
    }

    if (*(*(a1 + 64) + 136))
    {
      return 18;
    }

    return 0;
  }

  return result;
}

uint64_t sub_10000D790(int a1)
{
  v2 = a1 - 1;
  if (a1 - 1) < 0xB && ((0x53Fu >> v2))
  {
    return dword_10006CBCC[v2];
  }

  if (dword_100090058)
  {
    v4 = ne_log_obj();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 136315138;
      v6 = sub_10003C390(a1);
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Inproper idtype:%s in this function.\n", &v5, 0xCu);
    }
  }

  return 4;
}

uint64_t sub_10000D870(uint64_t a1)
{
  v45 = 0;
  v46 = 0;
  v2 = *(a1 + 64);
  v3 = *(v2 + 32);
  if (v3 > 3)
  {
    switch(v3)
    {
      case 4:
        v6 = *(v2 + 40);
        if (v6)
        {
          v7 = *(v6 + 8);
          if (v7)
          {
LABEL_18:
            v8 = *(v7 + 1);
            if (v8 == 2)
            {
              goto LABEL_22;
            }

            if (v8 == 30)
            {
              if (!*(a1 + 28))
              {
                v9 = v7 + 1;
                v5 = 5;
                v10 = 16;
                goto LABEL_23;
              }

              v46 = 0;
              LOWORD(v45) = 528;
              WORD1(v45) = *(v7 + 1);
              HIDWORD(v45) = 0;
              v7 = &v45;
LABEL_22:
              v9 = v7 + 4;
              v5 = 1;
              v10 = 4;
LABEL_23:
              if (*(a1 + 80) == 16)
              {
                v11 = -201261056;
              }

              else
              {
                v11 = 0;
              }

              if (*(a1 + 80) == 16)
              {
                v12 = 4352;
              }

              else
              {
                v12 = 0;
              }

              v13 = sub_10003D3A8(v10);
              if (!v13)
              {
                if (dword_100090058)
                {
                  v30 = ne_log_obj();
                  result = os_log_type_enabled(v30, OS_LOG_TYPE_ERROR);
                  if (!result)
                  {
                    return result;
                  }

                  sub_100057910();
                }

                return 0;
              }

              v14 = v13;
              memcpy(v13[1], v9, *v13);
              goto LABEL_38;
            }

            if (dword_100090058)
            {
              v27 = ne_log_obj();
              if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
              {
                sub_10005794C();
              }

LABEL_49:
              if (dword_100090058)
              {
                v28 = ne_log_obj();
                if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
                {
                  sub_100057988();
                }
              }

              return 0xFFFFFFFFLL;
            }

            return 0xFFFFFFFFLL;
          }
        }

        break;
      case 5:
        v4 = *(v2 + 40);
        if (!v4)
        {
          if ((sub_1000292D0(a1) & 0x80000000) != 0)
          {
            if (dword_100090058)
            {
              v39 = ne_log_obj();
              if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
              {
                sub_1000578D4();
              }

              goto LABEL_49;
            }

            return 0xFFFFFFFFLL;
          }

          v31 = sub_100001E08(*(a1 + 280) + 8);
          if (v31)
          {
            v32 = v31;
            v33 = j__SecCertificateCopySubjectSequence();
            if (v33)
            {
              v34 = v33;
              Length = CFDataGetLength(v33);
              BytePtr = CFDataGetBytePtr(v34);
              v37 = Length;
              v38 = sub_10003D3A8(Length);
              if (v38)
              {
                v14 = v38;
                memcpy(v38[1], BytePtr, v37);
                CFRelease(v32);
                CFRelease(v34);
                v11 = 0;
                v12 = 0;
                v5 = 9;
                goto LABEL_38;
              }

              if (dword_100090058)
              {
                v43 = ne_log_obj();
                if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
                {
                  sub_10005785C();
                }
              }

              CFRelease(v32);
              v42 = v34;
            }

            else
            {
              if (dword_100090058)
              {
                v41 = ne_log_obj();
                if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
                {
                  sub_10005785C();
                }
              }

              v42 = v32;
            }

            CFRelease(v42);
          }

          else
          {
            if (!dword_100090058)
            {
              return 0;
            }

            v40 = ne_log_obj();
            if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
            {
              sub_100057898();
            }
          }

          goto LABEL_77;
        }

        v5 = 9;
LABEL_36:
        v15 = sub_10003D538(v4);
        if (v15)
        {
          v14 = v15;
          v11 = 0;
          v12 = 0;
LABEL_38:
          v16 = sub_10003D3A8(*v14 + 4);
          if (v16)
          {
            v17 = v16;
            *v16[1] = (v11 | v12) & 0xFFFFFF00 | v5;
            memcpy((v16[1] + 4), v14[1], *v14);
            *(a1 + 312) = v17;
            if (dword_10008C2C8 >= 7)
            {
              v20 = v17;
              v19 = *v17;
              v18 = v20[1];
              v21 = sub_10003C390(v5);
              sub_1000314C0(7, v18, v19, "use ID type of %s\n", v22, v23, v24, v25, v21);
            }

            sub_10003D4F0(v14);
            return 0;
          }

          if (dword_100090058)
          {
            v26 = ne_log_obj();
            if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
            {
              sub_100057910();
            }
          }

          sub_10003D4F0(v14);
          goto LABEL_49;
        }

        goto LABEL_77;
      case 8:
        goto LABEL_9;
    }

LABEL_17:
    v7 = *(a1 + 56);
    goto LABEL_18;
  }

  if (v3 == 1)
  {
    v4 = *(v2 + 40);
    if (!v4)
    {
      v4 = *(qword_1000900B8 + 184);
      if (!v4)
      {
        goto LABEL_77;
      }
    }

    v5 = 2;
    goto LABEL_36;
  }

  if (v3 == 2)
  {
    v4 = *(v2 + 40);
    if (!v4)
    {
      v4 = *(qword_1000900B8 + 192);
      if (!v4)
      {
        goto LABEL_77;
      }
    }

    v5 = 3;
    goto LABEL_36;
  }

  if (v3 != 3)
  {
    goto LABEL_17;
  }

LABEL_9:
  v4 = *(v2 + 40);
  if (v4 || (v4 = *(qword_1000900B8 + 8 * v3 + 176)) != 0)
  {
    v5 = 11;
    goto LABEL_36;
  }

LABEL_77:
  if (dword_100090058)
  {
    v44 = ne_log_obj();
    result = os_log_type_enabled(v44, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    sub_100057910();
  }

  return 0;
}

uint64_t sub_10000DD38(void ***a1, int a2, void *a3, unsigned int a4)
{
  if (!a3)
  {
    if ((a2 - 1) > 1)
    {
      return 0;
    }

    if (dword_100090058)
    {
      v11 = ne_log_obj();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_100057BDC();
      }
    }

    return 0xFFFFFFFFLL;
  }

  v6 = 0;
  if (a2 > 4)
  {
    if (a2 == 5)
    {
      if (dword_100090058)
      {
        v15 = ne_log_obj();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
        {
          sub_1000579C4();
        }
      }

      return 0xFFFFFFFFLL;
    }

    if (a2 != 6 && a2 != 8)
    {
      goto LABEL_25;
    }

    goto LABEL_23;
  }

  if ((a2 - 1) < 2)
  {
    if (*a3 <= 1uLL)
    {
      if (dword_100090058)
      {
        v13 = ne_log_obj();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          sub_100057B54();
        }
      }

      return 0xFFFFFFFFLL;
    }

LABEL_23:
    v14 = sub_10003D3A8(*a3 - 1);
    if (!v14)
    {
      return 0xFFFFFFFFLL;
    }

    goto LABEL_24;
  }

  if (a2 == 3)
  {
    if (a4 < 2)
    {
      v16 = a3 + 1;
      v17 = fopen(a3[1], "r");
      if (v17)
      {
        v18 = v17;
        v6 = 0;
        v19 = fread(__ptr, 1uLL, 0x200uLL, v17);
        if (!v19)
        {
LABEL_36:
          fclose(v18);
          goto LABEL_25;
        }

        v20 = 0;
        while (1)
        {
          v21 = v19 + v20;
          v22 = sub_10003D42C(v6, v19 + v20);
          if (!v22)
          {
            break;
          }

          v6 = v22;
          memcpy(v22[1] + v20, __ptr, v19);
          v19 = fread(__ptr, 1uLL, 0x200uLL, v18);
          v20 = v21;
          if (!v19)
          {
            goto LABEL_36;
          }
        }

        fclose(v18);
      }

      else if (dword_100090058)
      {
        v26 = ne_log_obj();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          sub_100057AA8(v16);
        }
      }

      return 0xFFFFFFFFLL;
    }

    if (a4 != 2)
    {
      if (dword_100090058)
      {
        v24 = ne_log_obj();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          sub_100057B18();
        }
      }

      return 0xFFFFFFFFLL;
    }

    v14 = sub_10003D3A8(*a3 - 1);
    if (!v14)
    {
      if (dword_100090058)
      {
        v23 = ne_log_obj();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          sub_100057A6C();
        }
      }

      return 0xFFFFFFFFLL;
    }

LABEL_24:
    v6 = v14;
    memcpy(v14[1], a3[1], *v14);
    goto LABEL_25;
  }

  if (a2 != 4)
  {
LABEL_25:
    result = 0;
    *a1 = v6;
    return result;
  }

  if (!*a3)
  {
    v6 = 0;
    goto LABEL_25;
  }

  v7 = a3 + 1;
  v8 = sub_10003AD10(a3[1], 0);
  if (v8)
  {
    v9 = v8;
    v10 = sub_10003D3A8(*v8);
    if (v10)
    {
      v6 = v10;
      memcpy(v10[1], v9, *v10);
      free(v9);
      goto LABEL_25;
    }

    free(v9);
  }

  else if (dword_100090058)
  {
    v25 = ne_log_obj();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      sub_1000579FC(v7);
    }
  }

  return 0xFFFFFFFFLL;
}

uint64_t sub_10000E0C4(uint64_t a1)
{
  v2 = (a1 + 52);
  v3 = sub_100032CB8(*(a1 + 52));
  if (!v3)
  {
    if (dword_100090058)
    {
      v29 = ne_log_obj();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        sub_100057CDC(v2);
      }
    }

    return 0xFFFFFFFFLL;
  }

  v4 = v3;
  v34 = 0uLL;
  v5 = (v3 + 3);
  v6 = *(v3 + 280);
  if (*(v3 + 153) == 30 && *(a1 + 16))
  {
    v5 = &v34;
    HIDWORD(v34) = 0;
    *(&v34 + 4) = 0;
    LOWORD(v34) = 528;
    WORD1(v34) = *(v3 + 13);
    inet_pton(2, "192.168.2.2", &v34 + 4);
    v6 = 32;
  }

  v7 = sub_10000E38C(v5, v6, *(v4 + 141));
  *(a1 + 192) = v7;
  if (!v7)
  {
    if (dword_100090058)
    {
      v30 = ne_log_obj();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        sub_100057C64(v4 + 16);
      }
    }

    return 0xFFFFFFFFLL;
  }

  v8 = *v7[1];
  if ((v8 == 4 || v8 == 1) && *(a1 + 60) == 1)
  {
    v10 = *(a1 + 256);
    if (v10)
    {
      if ((*(v10 + 96) & 2) != 0)
      {
        if (*(qword_1000900B8 + 296))
        {
          sub_10003D4F0(v7);
          v7 = sub_10003D538(*(qword_1000900B8 + 296));
          *(a1 + 192) = v7;
          if (!v7)
          {
            return 0xFFFFFFFFLL;
          }
        }
      }
    }
  }

  v11 = (v4 + 19);
  if (dword_10008C2C8 >= 7)
  {
    v13 = *v7;
    v12 = v7[1];
    v14 = sub_10003C390(*v12);
    sub_1000314C0(7, v12, v13, "use local ID type %s\n", v15, v16, v17, v18, v14);
  }

  v33 = 0uLL;
  v19 = *(v4 + 281);
  if (*(v4 + 153) == 30 && *(a1 + 16))
  {
    v11 = &v33;
    HIDWORD(v33) = 0;
    *(&v33 + 4) = 0;
    LOWORD(v33) = 528;
    WORD1(v33) = *(v4 + 77);
    nw_nat64_extract_v4();
    v19 = 32;
  }

  v20 = sub_10000E38C(v11, v19, *(v4 + 141));
  *(a1 + 200) = v20;
  if (!v20)
  {
    if (dword_100090058)
    {
      v31 = ne_log_obj();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        sub_100057C64(v4 + 16);
      }
    }

    v32 = *(a1 + 192);
    if (v32)
    {
      sub_10003D4F0(v32);
      *(a1 + 192) = 0;
    }

    return 0xFFFFFFFFLL;
  }

  if (dword_10008C2C8 >= 7)
  {
    v22 = *v20;
    v21 = v20[1];
    v23 = sub_10003C390(*v21);
    sub_1000314C0(7, v21, v22, "use remote ID type %s\n", v24, v25, v26, v27, v23);
  }

  return 0;
}

size_t *sub_10000E38C(uint64_t a1, unsigned int a2, int a3)
{
  v4 = a2;
  v7 = (a1 + 1);
  v6 = *(a1 + 1);
  if (v6 != 30)
  {
    if (v6 != 2)
    {
      if (dword_100090058)
      {
        v13 = ne_log_obj();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          sub_100057DC0(v7);
        }
      }

      return 0;
    }

    if (a2 == 32)
    {
      v8 = 0;
      v9 = 1;
      v10 = 4;
      v11 = 4;
      v12 = 1;
      goto LABEL_14;
    }

    if (a2 < 0x20)
    {
      v9 = 0;
      v10 = 4;
      v8 = 4;
      v11 = 4;
      v12 = 4;
      goto LABEL_14;
    }

    if (!dword_100090058)
    {
      return 0;
    }

    v23 = ne_log_obj();
    if (!os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      return 0;
    }

LABEL_31:
    sub_100057D50();
    return 0;
  }

  if (a2 == 128)
  {
    v8 = 0;
    v12 = 5;
    v9 = 1;
    v11 = 16;
    v10 = 8;
    goto LABEL_14;
  }

  if (a2 >= 0x80)
  {
    if (!dword_100090058)
    {
      return 0;
    }

    v24 = ne_log_obj();
    if (!os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      return 0;
    }

    goto LABEL_31;
  }

  v9 = 0;
  v12 = 6;
  v8 = 16;
  v10 = 8;
  v11 = 16;
LABEL_14:
  v14 = *(a1 + 2);
  v15 = sub_10003D3A8(v11 + v8 + 4);
  if (!v15)
  {
    if (dword_100090058)
    {
      v22 = ne_log_obj();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        sub_100057910();
      }
    }

    return 0;
  }

  v16 = v15;
  bzero(v15[1], *v15);
  v17 = v16[1];
  *v17 = v12;
  if (a3 == 255)
  {
    v18 = 0;
  }

  else
  {
    v18 = a3;
  }

  *(v17 + 1) = v18;
  *(v17 + 2) = v14;
  memcpy((v17 + 4), (a1 + v10), v11);
  if ((v9 & 1) == 0)
  {
    v19 = v16[1] + v11;
    v20 = (v19 + 4);
    if (v4 >= 8)
    {
      v21 = (v4 - 8) >> 3;
      memset(v20, 255, v21 + 1);
      v20 = (v19 + v21 + 5);
      v4 &= 7u;
    }

    if (v4)
    {
      *v20 = -1 << (8 - v4);
    }
  }

  return v16;
}

size_t *sub_10000E5D8(uint64_t a1, uint64_t a2, int a3)
{
  v4 = (a1 + 1);
  v3 = *(a1 + 1);
  if (v3 != *(a2 + 1))
  {
    if (dword_100090058)
    {
      v10 = ne_log_obj();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_100057E30();
      }
    }

    return 0;
  }

  if (v3 == 2)
  {
    v8 = 7;
    v9 = 4;
  }

  else
  {
    if (v3 != 30)
    {
      if (dword_100090058)
      {
        v15 = ne_log_obj();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          sub_100057DC0(v4);
        }
      }

      return 0;
    }

    v8 = 8;
    v9 = 16;
  }

  v11 = sub_10003D3A8((2 * v9) | 4);
  if (!v11)
  {
    if (dword_100090058)
    {
      v16 = ne_log_obj();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        sub_100057910();
      }
    }

    return 0;
  }

  v12 = v11;
  bzero(v11[1], *v11);
  v13 = v12[1];
  *v13 = v8;
  if (a3 == 255)
  {
    v14 = 0;
  }

  else
  {
    v14 = a3;
  }

  *(v13 + 1) = v14;
  *(v13 + 2) = *(a1 + 2);
  memcpy((v13 + 4), (a1 + 4), v9);
  memcpy((v12[1] + v9 + 4), (a2 + 4), v9);
  return v12;
}

uint64_t sub_10000E74C(unint64_t *a1, uint64_t a2, _BYTE *a3, __int16 *a4, int a5)
{
  v5 = a1[1];
  v6 = *v5 - 1;
  if (v6 < 6 && ((0x39u >> v6) & 1) != 0)
  {
    v11 = 8 * (v6 & 0x1F);
    v12 = (*v5 - 1);
    v13 = qword_10006CBF8[v12];
    v14 = qword_10006CC28[v12];
    *a2 = 0x1C1C10101010uLL >> v11;
    *(a2 + 1) = 0x1E1E02020202uLL >> v11;
    *(a2 + 2) = *(v5 + 1);
    memcpy((a2 + v13), v5 + 4, v14);
    LOBYTE(v15) = 0;
    v16 = *v5;
    if (v16 > 4)
    {
      if (v16 == 5)
      {
        LOBYTE(v15) = 0x80;
        goto LABEL_33;
      }

      if (v16 != 6)
      {
        goto LABEL_33;
      }
    }

    else
    {
      if (v16 == 1)
      {
        LOBYTE(v15) = 32;
        goto LABEL_33;
      }

      if (v16 != 4)
      {
LABEL_33:
        *a3 = v15;
        if (a5 != 16)
        {
          return 0;
        }

        result = 0;
        v29 = v5[1];
        if (!v5[1])
        {
          v29 = 255;
        }

        *a4 = v29;
        return result;
      }
    }

    if (v16 == 6)
    {
      v19 = 16;
    }

    else
    {
      v19 = 4;
    }

    if (*a1 < v19)
    {
      return 0xFFFFFFFFLL;
    }

    v20 = a1[1];
    v21 = *(v20 + v19 + 4);
    if (v21 == 255)
    {
      v22 = 8 * v19;
      v23 = (v19 + v20 + 5);
      v24 = 8;
      while (1)
      {
        v15 = v24;
        if (v24 >= v22)
        {
          break;
        }

        v25 = *v23++;
        v21 = v25;
        v24 += 8;
        if (v25 != 255)
        {
          goto LABEL_30;
        }
      }

      v21 = 255;
LABEL_30:
      if (v15 >= v22)
      {
        goto LABEL_33;
      }

      if (v21 == 255)
      {
        v26 = 0;
LABEL_28:
        LOBYTE(v15) = v15 + v26 + 8;
        goto LABEL_33;
      }
    }

    else
    {
      LOBYTE(v15) = 0;
    }

    v26 = 0;
    v27 = v21 ^ 0xFF;
    do
    {
      --v26;
      v28 = v27 > 1;
      v27 >>= 1;
    }

    while (v28);
    goto LABEL_28;
  }

  if (dword_100090058)
  {
    v17 = ne_log_obj();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_100057E6C(v5);
    }
  }

  return 18;
}

_BYTE *sub_10000E960(uint64_t a1)
{
  v2 = *(a1 + 8);
  memset(v30, 0, sizeof(v30));
  v3 = *v2;
  if (v3 > 6)
  {
    if (*v2 > 8u)
    {
      if ((v3 - 9) >= 2)
      {
        if (v3 == 11)
        {
          strcpy(&qword_10008C548, "<KEY-ID>");
          v7 = 8;
          goto LABEL_68;
        }

        goto LABEL_49;
      }

      if (dword_100090058)
      {
        v9 = ne_log_obj();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          sub_100057EDC();
        }
      }

      strcpy(&qword_10008C548, "<ASN1-DN>");
      v7 = 9;
      goto LABEL_68;
    }

    if (v3 != 7)
    {
      if (v3 != 8)
      {
        goto LABEL_49;
      }

      goto LABEL_11;
    }

LABEL_17:
    *&v30[0].sa_len = 528;
    *&v30[0].sa_data[2] = *(v2 + 1);
    goto LABEL_18;
  }

  if (*v2 <= 3u)
  {
    if ((v3 - 2) < 2)
    {
LABEL_31:
      if (*a1 - 4 >= 512)
      {
        v7 = 512;
      }

      else
      {
        v7 = *a1 - 4;
      }

      __memcpy_chk();
LABEL_66:
      if (v7)
      {
        goto LABEL_68;
      }

      goto LABEL_67;
    }

    if (v3 != 1)
    {
      goto LABEL_49;
    }

    goto LABEL_17;
  }

  if ((v3 - 5) >= 2)
  {
    if (v3 != 4)
    {
LABEL_49:
      if (dword_100090058)
      {
        v18 = ne_log_obj();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          sub_100057F18(v2);
        }
      }

      goto LABEL_67;
    }

    goto LABEL_17;
  }

LABEL_11:
  *&v30[0].sa_len = 7708;
  *&v30[0].sa_data[6] = *(v2 + 4);
  if (v30[0].sa_data[6] == 254 && (v30[0].sa_data[7] & 0xC0) == 0x80)
  {
    v4 = *(v2 + 6);
  }

  else
  {
    v4 = 0;
  }

  *&v30[1].sa_data[6] = v4;
LABEL_18:
  if (v3 <= 5)
  {
    if (v3 > 3)
    {
      if (v3 == 4)
      {
        goto LABEL_39;
      }
    }

    else if ((v3 - 2) < 2)
    {
      goto LABEL_31;
    }

    sub_10003A958(v30);
    v10 = snprintf(&qword_10008C548, 0x200uLL, "%s");
LABEL_65:
    v7 = v10;
    goto LABEL_66;
  }

  if (v3 == 6)
  {
LABEL_39:
    if (v3 == 6)
    {
      v11 = 16;
    }

    else
    {
      v11 = 4;
    }

    if (*a1 < v11)
    {
LABEL_67:
      LODWORD(qword_10008C548) = 4079420;
      v7 = 3;
      goto LABEL_68;
    }

    v12 = v2[v11 + 4];
    if (v12 != 255)
    {
      goto LABEL_58;
    }

    v13 = 8 * v11;
    v14 = &v2[v11 + 5];
    v15 = 8;
    while (1)
    {
      v16 = v15;
      if (v15 >= v13)
      {
        break;
      }

      v17 = *v14++;
      v12 = v17;
      v15 += 8;
      if (v17 != 255)
      {
        goto LABEL_62;
      }
    }

    v12 = 255;
LABEL_62:
    if (v16 < v13 && v12 != 255)
    {
LABEL_58:
      v24 = 0;
      v25 = v12 ^ 0xFF;
      do
      {
        --v24;
        v26 = v25 > 1;
        v25 >>= 1;
      }

      while (v26);
    }

    sub_10003A958(v30);
    v10 = snprintf(&qword_10008C548, 0x200uLL, "%s/%i");
    goto LABEL_65;
  }

  if (v3 == 7)
  {
    v19 = sub_10003A958(v30);
    v20 = snprintf(&qword_10008C548, 0x200uLL, "%s-", v19);
    v7 = v20;
    v21 = *(*(a1 + 8) + 8);
    *&v30[0].sa_len = 528;
    *&v30[0].sa_data[2] = v21;
    if ((v20 & 0x80000000) != 0)
    {
      goto LABEL_68;
    }

    v22 = &qword_10008C548 + v20;
    goto LABEL_57;
  }

  v5 = sub_10003A958(v30);
  v6 = snprintf(&qword_10008C548, 0x200uLL, "%s-", v5);
  v7 = v6;
  *&v30[0].sa_len = 7708;
  *&v30[0].sa_data[6] = *(*(a1 + 8) + 20);
  if (v30[0].sa_data[6] == 254 && (v30[0].sa_data[7] & 0xC0) == 0x80)
  {
    v8 = *(v2 + 6);
  }

  else
  {
    v8 = 0;
  }

  *&v30[1].sa_data[6] = v8;
  if ((v6 & 0x80000000) == 0)
  {
    v22 = &qword_10008C548 + v6;
LABEL_57:
    v23 = sub_10003A958(v30);
    v7 += snprintf(v22, 512 - v7, "%s", v23);
    goto LABEL_66;
  }

LABEL_68:
  v27 = malloc_type_malloc(v7 + 1, 0x89D161DFuLL);
  v28 = v27;
  if (v27)
  {
    memcpy(v27, &qword_10008C548, v7);
    v28[v7] = 0;
  }

  return v28;
}

uint64_t sub_10000EDF8(uint64_t a1, uint64_t a2, _DWORD *a3, _DWORD *a4)
{
  *a4 = *(a1 + 4);
  a4[1] = *(a1 + 5);
  v4 = bswap32(*(a1 + 2)) >> 16;
  *(a2 + 8) = 28800;
  v5 = (a2 + 8);
  *(a2 + 16) = 0;
  a4[3] = 254;
  if (v4 < 9)
  {
    return 0;
  }

  v8 = a2;
  v57 = (a2 + 16);
  v9 = 0;
  v10 = v4 - 8;
  v11 = a1 + 8;
  v58 = 1;
  while (1)
  {
    v12 = v11;
    v13 = v10;
    if (v10 <= 3)
    {
      break;
    }

    v14 = *v12;
    v15 = bswap32(v14 & 0xFFFFFF7F) >> 16;
    v16 = (v14 << 8) & 0x8000;
    if (dword_100090058)
    {
      v17 = ne_log_obj();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        v56 = v5;
        v28 = v8;
        v29 = a3;
        v30 = sub_10003C118(v15);
        v31 = sub_10003C2F8(v15, bswap32(v12[1]) >> 16);
        *buf = 136315650;
        v62 = v30;
        a3 = v29;
        v8 = v28;
        v5 = v56;
        v63 = 1024;
        v64 = v16;
        v65 = 2080;
        v66 = v31;
        _os_log_debug_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, "type=%s, flag=0x%04x, lorv=%s\n", buf, 0x1Cu);
      }
    }

    if (v15 > 3)
    {
      switch(v15)
      {
        case 4:
          v22 = a3[4];
          v23 = bswap32(v12[1]) >> 16;
          if (v22 && v22 != v23)
          {
            if (dword_100090058)
            {
              v43 = ne_log_obj();
              if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
              {
                sub_100058000();
              }
            }

            return 0xFFFFFFFFLL;
          }

          a3[4] = v23;
          if (v16)
          {
LABEL_44:
            v10 = v13 - 4;
            v11 = (v12 + 2);
            goto LABEL_63;
          }

          break;
        case 5:
          if (a4[3] != 254)
          {
            if (dword_100090058)
            {
              v44 = ne_log_obj();
              if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
              {
                sub_100057FC4();
              }
            }

            return 0xFFFFFFFFLL;
          }

          a4[3] = bswap32(v12[1]) >> 16;
          if (v16)
          {
            goto LABEL_44;
          }

          break;
        case 6:
          if (*a3 != 3)
          {
            if (dword_100090058)
            {
              v45 = ne_log_obj();
              if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
              {
                sub_100057F88();
              }
            }

            return 0xFFFFFFFFLL;
          }

          a4[2] = bswap32(v12[1]) >> 16;
          if (v16)
          {
            goto LABEL_44;
          }

          break;
        default:
          goto LABEL_43;
      }
    }

    else if (v15 == 1)
    {
      v20 = bswap32(v12[1]);
      v58 = HIWORD(v20);
      if ((HIWORD(v20) - 1) <= 1u)
      {
        goto LABEL_43;
      }

      if (dword_100090058)
      {
        v21 = ne_log_obj();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "invalid life duration type. use default\n", buf, 2u);
        }
      }

      v58 = 1;
      if (v16)
      {
        goto LABEL_44;
      }
    }

    else
    {
      if (v15 != 2)
      {
        if (v15 == 3)
        {
          v18 = *(v8 + 20);
          v19 = bswap32(v12[1]) >> 16;
          if (v18)
          {
            if (v18 != v19)
            {
              if (dword_100090058)
              {
                v46 = ne_log_obj();
                if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
                {
                  sub_10005803C();
                }
              }

              return 0xFFFFFFFFLL;
            }
          }

          else
          {
            *(v8 + 20) = v19;
          }
        }

LABEL_43:
        if (v16)
        {
          goto LABEL_44;
        }

        goto LABEL_62;
      }

      if (!v9 || (*v9 & 0xFF7F) != 0x100)
      {
        if (dword_100090058)
        {
          v27 = ne_log_obj();
          if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
          {
            sub_100056014(&v59, v60);
            if (v16)
            {
              goto LABEL_44;
            }

            goto LABEL_62;
          }
        }

        goto LABEL_43;
      }

      v55 = a3;
      if (v16)
      {
        v24 = sub_10003D3A8(2uLL);
        v25 = 1;
        v26 = 2;
        if (!v24)
        {
          if (!dword_100090058)
          {
            return 0xFFFFFFFFLL;
          }

          v47 = ne_log_obj();
          if (!os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
          {
            return 0xFFFFFFFFLL;
          }

          goto LABEL_85;
        }
      }

      else
      {
        v26 = bswap32(v12[1]) >> 16;
        if (v26 + 4 > v13)
        {
          if (dword_100090058)
          {
            v51 = ne_log_obj();
            if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
            {
              sub_1000581A8();
            }
          }

          return 0xFFFFFFFFLL;
        }

        v32 = sub_10003D3A8(v26);
        if (!v32)
        {
          if (!dword_100090058)
          {
            return 0xFFFFFFFFLL;
          }

          v52 = ne_log_obj();
          if (!os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
          {
            return 0xFFFFFFFFLL;
          }

LABEL_85:
          sub_100058078();
          return 0xFFFFFFFFLL;
        }

        v24 = v32;
        v25 = 2;
      }

      memcpy(v24[1], &v12[v25], v26);
      if (v58 == 2)
      {
        v33 = v8;
        v35 = sub_10000A2A0(v24);
        sub_10003D4F0(v24);
        a3 = v55;
        if (!v35)
        {
          if (!dword_100090058)
          {
            return 0xFFFFFFFFLL;
          }

          v50 = ne_log_obj();
          if (!os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
          {
            return 0xFFFFFFFFLL;
          }

LABEL_91:
          sub_100055F68();
          return 0xFFFFFFFFLL;
        }

        if (*v57)
        {
          if (*v57 != v35)
          {
            if (dword_100090058)
            {
              v53 = ne_log_obj();
              if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
              {
                sub_1000580B4(v57);
              }
            }

            return 0xFFFFFFFFLL;
          }
        }

        else
        {
          *v57 = v35;
        }

        v36 = 2;
      }

      else
      {
        a3 = v55;
        if (v58 != 1)
        {
          sub_10003D4F0(v24);
          if (dword_100090058)
          {
            v48 = ne_log_obj();
            if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
            {
              sub_100055FA4();
            }
          }

          return 0xFFFFFFFFLL;
        }

        v33 = v8;
        v34 = sub_10000A2A0(v24);
        sub_10003D4F0(v24);
        if (!v34)
        {
          if (!dword_100090058)
          {
            return 0xFFFFFFFFLL;
          }

          v49 = ne_log_obj();
          if (!os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
          {
            return 0xFFFFFFFFLL;
          }

          goto LABEL_91;
        }

        if (*v5 == 28800)
        {
          *v5 = v34;
        }

        else if (*v5 != v34)
        {
          if (dword_100090058)
          {
            v54 = ne_log_obj();
            if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
            {
              sub_10005812C(v5);
            }
          }

          return 0xFFFFFFFFLL;
        }

        v36 = 1;
      }

      v58 = v36;
      v8 = v33;
      if (v16)
      {
        goto LABEL_44;
      }
    }

LABEL_62:
    v37 = bswap32(v12[1]);
    v38 = HIWORD(v37);
    v39 = v13 - HIWORD(v37);
    v11 = v12 + v38 + 4;
    v10 = v39 - 4;
    if (v10 < 0)
    {
      if (dword_100090058)
      {
        v42 = ne_log_obj();
        if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
        {
          sub_10005823C(v11);
        }
      }

      return 0xFFFFFFFFLL;
    }

LABEL_63:
    v9 = v12;
    if (v10 <= 0)
    {
      return 0;
    }
  }

  if (dword_100090058)
  {
    v41 = ne_log_obj();
    if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
    {
      sub_1000582BC();
    }
  }

  return 0xFFFFFFFFLL;
}

uint64_t sub_10000F568(int a1)
{
  if ((a1 - 1) < 7)
  {
    return dword_10006CC58[a1 - 1];
  }

  if (!dword_100090058)
  {
    return 0xFFFFFFFFLL;
  }

  v2 = ne_log_obj();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    sub_10005832C();
  }

  return 0xFFFFFFFFLL;
}

uint64_t sub_10000F5E8(unsigned int a1)
{
  if (a1 > 5)
  {
    return 255;
  }

  else
  {
    return dword_10006CBA8[a1];
  }
}

uint64_t sub_10000F608(int a1)
{
  if (a1 == 1)
  {
    return 0;
  }

  if (!dword_100090058)
  {
    return 0xFFFFFFFFLL;
  }

  v2 = ne_log_obj();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    sub_10005839C();
  }

  return 0xFFFFFFFFLL;
}

uint64_t sub_10000F67C(int a1)
{
  if ((a1 - 2) < 3)
  {
    return 0;
  }

  if (!dword_100090058)
  {
    return 0xFFFFFFFFLL;
  }

  v2 = ne_log_obj();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    sub_10005840C();
  }

  return 0xFFFFFFFFLL;
}

uint64_t sub_10000F6F4(int a1)
{
  if (a1 == 1)
  {
    return 0;
  }

  if (!dword_100090058)
  {
    return 0xFFFFFFFFLL;
  }

  v2 = ne_log_obj();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    sub_10005847C();
  }

  return 0xFFFFFFFFLL;
}

uint64_t sub_10000F768(unsigned int a1)
{
  if (a1 > 7)
  {
    goto LABEL_14;
  }

  if (((1 << a1) & 0xEC) != 0)
  {
    return 0;
  }

  if (a1 == 4)
  {
    if (dword_100090058)
    {
      v2 = ne_log_obj();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
      {
        sub_1000584FC();
      }
    }
  }

  else
  {
LABEL_14:
    if (dword_100090058)
    {
      v3 = ne_log_obj();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        sub_100058578();
      }
    }
  }

  return 0xFFFFFFFFLL;
}

uint64_t sub_10000F81C(unsigned int a1)
{
  result = 0;
  if (a1 <= 0xC)
  {
    if (((1 << a1) & 0x18DC) != 0)
    {
      return result;
    }

    if (((1 << a1) & 0x722) != 0)
    {
      if (dword_100090058)
      {
        v3 = ne_log_obj();
        if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
        {
          sub_1000585E8();
        }
      }

      return 0xFFFFFFFFLL;
    }
  }

  if (a1 != 253)
  {
    if (dword_100090058)
    {
      v4 = ne_log_obj();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        sub_100058658();
      }
    }

    return 0xFFFFFFFFLL;
  }

  return result;
}

uint64_t sub_10000F8DC(int a1)
{
  if ((a1 - 1) < 3)
  {
    return 0;
  }

  if (!dword_100090058)
  {
    return 0xFFFFFFFFLL;
  }

  v2 = ne_log_obj();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    sub_1000586C8();
  }

  return 0xFFFFFFFFLL;
}

_BYTE *sub_10000F988(_BYTE *result, _BYTE *a2)
{
  *result = 0;
  *a2 = 0;
  return result;
}

void sub_10000F9CC(void *a1, int a2, os_log_t log, const char *a4, uint8_t *a5)
{

  _os_log_debug_impl(a1, log, OS_LOG_TYPE_DEBUG, a4, a5, 2u);
}

void sub_10000F9E8(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void sub_10000FA24(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, a5, 2u);
}

uint64_t sub_10000FA64(uint64_t a1, uint64_t a2)
{
  v42 = 0;
  memset(v43, 0, sizeof(v43));
  v2 = (a1 + 16);
  if (*(a1 + 16) != 5248)
  {
    if (dword_100090058)
    {
      v4 = ne_log_obj();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        sub_100058738(v2);
      }
    }

    goto LABEL_9;
  }

  if (a2)
  {
    if (dword_100090058)
    {
      v3 = ne_log_obj();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        sub_1000587A8();
      }
    }

LABEL_9:
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = 0xFFFFFFFFLL;
    goto LABEL_10;
  }

  *a1 = 0;
  *(a1 + 8) = 0;
  sub_100023CF0(a1, *(a1 + 48), *(a1 + 56));
  if ((sub_10000D870(a1) & 0x80000000) != 0)
  {
    if (dword_100090058)
    {
      v25 = ne_log_obj();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        sub_100058A44();
      }
    }

    goto LABEL_9;
  }

  v13 = sub_10000C430(a1);
  *(a1 + 336) = v13;
  if (!v13)
  {
    if (dword_100090058)
    {
      v26 = ne_log_obj();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        sub_100058A10();
      }
    }

    goto LABEL_9;
  }

  v14 = a1 + 64;
  v15 = *(*(a1 + 64) + 192);
  if (!v15)
  {
    if (dword_100090058)
    {
      v27 = ne_log_obj();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        sub_1000589DC();
      }
    }

    goto LABEL_9;
  }

  if ((sub_100027424(v15, (a1 + 152), (a1 + 136)) & 0x80000000) != 0)
  {
    if (dword_100090058)
    {
      v28 = ne_log_obj();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        sub_1000589A8();
      }
    }

    goto LABEL_9;
  }

  v16 = sub_1000042AC(*(*(a1 + 64) + 140));
  *(a1 + 176) = v16;
  if (!v16)
  {
    if (dword_100090058)
    {
      v29 = ne_log_obj();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        sub_100058974();
      }
    }

    goto LABEL_9;
  }

  v17 = *(*(*v14 + 248) + 48);
  if (*(*v14 + 272) && v17 == 65001 || ((v17 - 65005) <= 4 ? (v18 = ((1 << (v17 + 19)) & 0x15) == 0) : (v18 = 1), v18 ? (v19 = v17 == 65500) : (v19 = 1), !v19 ? (v20 = v17 == 64221) : (v20 = 1), v20))
  {
    v7 = sub_10003D184(16);
    if (!v7)
    {
      if (dword_100090058)
      {
        v21 = ne_log_obj();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          sub_1000587DC();
        }
      }
    }

    v6 = sub_10003D184(17);
    if (!v6 && dword_100090058)
    {
      v22 = ne_log_obj();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        sub_100058810();
      }

      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
    v7 = 0;
  }

  if (!*(*v14 + 148))
  {
    goto LABEL_70;
  }

  v23 = sub_10003D184(18);
  if (v23)
  {
    v24 = sub_1000130BC(v23, 0x80000000);
  }

  else
  {
    v24 = 0;
  }

  if (!v24 && dword_100090058)
  {
    v30 = ne_log_obj();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      sub_100058844();
    }

LABEL_70:
    v24 = 0;
  }

  if (*(*v14 + 120) && sub_10002A868(*(*(*v14 + 248) + 48)))
  {
    v31 = sub_10002A658(a1);
    if (!v31)
    {
      if (dword_100090058)
      {
        v41 = ne_log_obj();
        if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
        {
          sub_100058878();
        }
      }

      v5 = 0;
      v8 = 0xFFFFFFFFLL;
      goto LABEL_105;
    }

    v32 = v31;
    v33 = 0;
  }

  else
  {
    v32 = 0;
    v33 = 1;
  }

  if (dword_100090058)
  {
    v34 = ne_log_obj();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
    {
      sub_1000588AC(a1 + 64, v34);
    }
  }

  v35 = sub_1000241D4(0, *(a1 + 336), 1);
  v36 = sub_1000241D4(v35, *(a1 + 152), 4);
  v37 = sub_1000241D4(v36, *(a1 + 176), 10);
  v38 = sub_1000241D4(v37, *(a1 + 312), 5);
  v39 = v38;
  v42 = v38;
  if ((v33 & 1) == 0)
  {
    v39 = sub_1000241D4(v38, v32, 7);
    v42 = v39;
  }

  if (v24)
  {
    v39 = sub_1000241D4(v39, v24, 13);
    v42 = v39;
  }

  if (*(*v14 + 176))
  {
    v39 = sub_10003DF64(v39, v43);
    v42 = v39;
  }

  if (v7)
  {
    v39 = sub_1000241D4(v39, v7, 13);
    v42 = v39;
  }

  if (v6)
  {
    v39 = sub_1000241D4(v39, v6, 13);
    v42 = v39;
  }

  if (*(*v14 + 208))
  {
    v5 = sub_10003D184(19);
    if (v5)
    {
      v42 = sub_1000241D4(v39, v5, 13);
    }
  }

  else
  {
    v5 = 0;
  }

  *(a1 + 128) = sub_100024230(&v42, a1);
  *(a1 + 124) = *(*(a1 + 64) + 200);
  if (sub_100021E5C(a1) == -1)
  {
    if (dword_100090058)
    {
      v40 = ne_log_obj();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
      {
        sub_100058940();
      }
    }

    v8 = 0xFFFFFFFFLL;
  }

  else
  {
    sub_100000A50(v2, 5281);
    v8 = 0;
  }

  if (v32)
  {
    sub_10003D4F0(v32);
  }

LABEL_105:
  if (v24)
  {
    sub_10003D4F0(v24);
  }

LABEL_10:
  for (i = 0; i != 96; i += 8)
  {
    v10 = *(v43 + i);
    if (!v10)
    {
      break;
    }

    sub_10003D4F0(v10);
  }

  if (v7)
  {
    sub_10003D4F0(v7);
  }

  if (v6)
  {
    sub_10003D4F0(v6);
  }

  if (v5)
  {
    sub_10003D4F0(v5);
  }

  return v8;
}

uint64_t sub_100010084(uint64_t a1, uint64_t a2)
{
  v72 = 0;
  v73 = &v72;
  v74 = 0;
  v3 = (a1 + 16);
  if (*(a1 + 16) != 5281)
  {
    if (dword_100090058)
    {
      v23 = ne_log_obj();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        sub_100058738(v3);
      }
    }

    goto LABEL_70;
  }

  v5 = sub_100020D5C(a2);
  if (!v5)
  {
    if (dword_100090058)
    {
      v24 = ne_log_obj();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        sub_100058F30();
      }
    }

LABEL_70:
    v25 = 0;
    v26 = 0xFFFFFFFFLL;
    goto LABEL_79;
  }

  v6 = v5;
  v7 = v5[1];
  *(a1 + 352) = 0;
  if (*v7 != 1)
  {
    if (dword_100090058)
    {
      v27 = ne_log_obj();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        sub_100058A78(v7);
      }
    }

    goto LABEL_77;
  }

  if ((sub_100023F0C(&v74, *(v7 + 1)) & 0x80000000) != 0)
  {
    if (dword_100090058)
    {
      v28 = ne_log_obj();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        sub_100058EFC();
      }
    }

    goto LABEL_77;
  }

  v8 = 0;
  v9 = 0;
  for (i = (v7 + 16); ; i += 16)
  {
    v11 = *i;
    if (v11 <= 9)
    {
      break;
    }

    if (*i > 0xEu)
    {
      v16 = v11 == 15 || v11 == 20;
      if (!v16 && v11 != 130)
      {
        goto LABEL_101;
      }

      if (*(a1 + 96))
      {
        v17 = *(a1 + 88);
        if (v17)
        {
          if (*(v17 + 14) == v11)
          {
            v18 = malloc_type_malloc(0x20uLL, 0x10A00400E9F9246uLL);
            if (!v18)
            {
              if (dword_100090058)
              {
                v43 = ne_log_obj();
                if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
                {
                  sub_100058B24();
                }
              }

              goto LABEL_77;
            }

            v19 = v18;
            *(v18 + 1) = 0;
            if ((sub_100023F0C(v18 + 1, *(i + 1)) & 0x80000000) != 0)
            {
              if (dword_100090058)
              {
                v44 = ne_log_obj();
                if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
                {
                  sub_100058AF0();
                }
              }

              free(v19);
              goto LABEL_77;
            }

            *v19 = v8;
            v19[2] = 0;
            ++v8;
            v20 = v73;
            v19[3] = v73;
            *v20 = v19;
            v73 = v19 + 2;
          }
        }
      }
    }

    else
    {
      switch(v11)
      {
        case 0xAu:
          if ((sub_100023F0C((a1 + 184), *(i + 1)) & 0x80000000) != 0)
          {
            if (dword_100090058)
            {
              v41 = ne_log_obj();
              if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
              {
                sub_100058C80();
              }
            }

            goto LABEL_77;
          }

          break;
        case 0xBu:
          sub_1000195C8(*(i + 1), a1);
          break;
        case 0xDu:
          v12 = sub_10003D224(*(i + 1));
          v13 = v12;
          if (*(*(a1 + 64) + 176) && sub_10003D610(v12))
          {
            sub_10003DE68(a1, v13);
          }

          if (v13 > 17)
          {
            if (v13 == 18)
            {
              if ((sub_100012B78(*(i + 1)) & 0x80000000) != 0)
              {
                if (dword_100090058)
                {
                  v22 = ne_log_obj();
                  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
                  {
                    sub_100058B58(&v68, v69);
                  }
                }

                *(a1 + 100) = 1;
              }
            }

            else if (v13 == 19)
            {
              if (*(*(a1 + 64) + 208))
              {
                *(a1 + 368) = 1;
                if (dword_100090058)
                {
                  v21 = ne_log_obj();
                  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
                  {
                    sub_100058B84(&v70, v71);
                  }
                }
              }
            }
          }

          else
          {
            if (v13 == 16)
            {
              v14 = *(a1 + 408);
              v15 = *v14 | 1;
            }

            else
            {
              if (v13 != 17)
              {
                continue;
              }

              v14 = *(a1 + 408);
              v15 = *v14 | 2;
            }

            *v14 = v15;
          }

          break;
        default:
          goto LABEL_101;
      }
    }

LABEL_63:
    ;
  }

  if (*i > 6u)
  {
    switch(v11)
    {
      case 7u:
        if ((sub_10002A534(a1, *(i + 1)) & 0x80000000) != 0)
        {
          if (dword_100090058)
          {
            v38 = ne_log_obj();
            if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
            {
              sub_100058C18();
            }
          }

          goto LABEL_77;
        }

        break;
      case 8u:
        *(a1 + 352) = *(i + 1);
        break;
      case 9u:
        if ((sub_100023F0C((a1 + 272), *(i + 1)) & 0x80000000) != 0)
        {
          if (dword_100090058)
          {
            v40 = ne_log_obj();
            if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
            {
              sub_100058BB0();
            }
          }

          goto LABEL_77;
        }

        break;
      default:
        goto LABEL_101;
    }

    goto LABEL_63;
  }

  if (*i > 4u)
  {
    if (v11 == 5)
    {
      if ((sub_100023F0C((a1 + 320), *(i + 1)) & 0x80000000) != 0)
      {
        if (dword_100090058)
        {
          v39 = ne_log_obj();
          if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
          {
            sub_100058C4C();
          }
        }

        goto LABEL_77;
      }
    }

    else
    {
      if ((sub_10002A284(a1, *(i + 1)) & 0x80000000) != 0)
      {
        if (dword_100090058)
        {
          v36 = ne_log_obj();
          if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
          {
            sub_100058BE4();
          }
        }

        goto LABEL_77;
      }

      v9 = 1;
    }

    goto LABEL_63;
  }

  if (v11 == 4)
  {
    if ((sub_100023F0C((a1 + 160), *(i + 1)) & 0x80000000) != 0)
    {
      if (dword_100090058)
      {
        v37 = ne_log_obj();
        if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
        {
          sub_100058CB4();
        }
      }

      goto LABEL_77;
    }

    goto LABEL_63;
  }

  if (*i)
  {
LABEL_101:
    if (dword_100090058)
    {
      v35 = ne_log_obj();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        sub_100058E88(i);
      }
    }

    goto LABEL_77;
  }

  if (v9)
  {
    sub_100029850(a1);
  }

  if (*(a1 + 160) && *(a1 + 184))
  {
    if (sub_10000D28C(a1))
    {
      if (dword_100090058)
      {
        v34 = ne_log_obj();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
        {
          sub_100058CE8();
        }
      }
    }

    else if ((sub_100008354(v74, a1) & 0x80000000) != 0)
    {
      if (dword_100090058)
      {
        v62 = ne_log_obj();
        if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
        {
          sub_100058E20();
        }
      }
    }

    else
    {
      v45 = *(a1 + 344);
      if (v45)
      {
        sub_10003D4F0(v45);
        *(a1 + 344) = 0;
      }

      *(a1 + 8) = *(*(a2 + 8) + 8);
      if (*(a1 + 96))
      {
        if (dword_100090058)
        {
          v46 = ne_log_obj();
          if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
          {
            v47 = sub_10003CF98(**(a1 + 88));
            *buf = 136315138;
            *v76 = v47;
            _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEFAULT, "Selected NAT-T version: %s\n", buf, 0xCu);
          }
        }

        *(a1 + 96) |= 6u;
        for (j = v72; v72; j = v72)
        {
          v49 = sub_10003D80C(a1, *(j + 8), *j);
          if (dword_100090058)
          {
            v50 = v49;
            v51 = ne_log_obj();
            if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
            {
              v52 = *j - 1;
              v53 = "verified";
              if (!v50)
              {
                v53 = "doesn't match";
              }

              *buf = 67109378;
              *v76 = v52;
              *&v76[4] = 2080;
              *&v76[6] = v53;
              _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_DEFAULT, "NAT-D payload #%d %s\n", buf, 0x12u);
            }
          }

          sub_10003D4F0(*(j + 8));
          v54 = *(j + 16);
          v55 = *(j + 24);
          v56 = (v54 + 24);
          if (!v54)
          {
            v56 = &v73;
          }

          *v56 = v55;
          *v55 = v54;
          free(j);
        }

        if (dword_100090058)
        {
          v57 = ne_log_obj();
          if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
          {
            v58 = "detected:";
            v59 = *(a1 + 96);
            v60 = "ME ";
            if ((v59 & 6) == 0)
            {
              v58 = "not detected";
            }

            if ((v59 & 2) == 0)
            {
              v60 = &unk_100080609;
            }

            *buf = 136315650;
            *v76 = v58;
            *&v76[8] = 2080;
            *&v76[10] = v60;
            if ((v59 & 4) != 0)
            {
              v61 = "PEER";
            }

            else
            {
              v61 = &unk_100080609;
            }

            v77 = 2080;
            v78 = v61;
            _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_DEFAULT, "NAT %s %s%s\n", buf, 0x20u);
          }
        }

        if ((*(a1 + 96) & 6) != 0)
        {
          sub_10003DD8C(a1);
        }

        sub_10004C9DC(a1);
      }

      if ((sub_100027224(*(*(a1 + 64) + 192), *(a1 + 160), (a1 + 168), (a1 + 136)) & 0x80000000) != 0)
      {
        if (dword_100090058)
        {
          v63 = ne_log_obj();
          if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
          {
            sub_100058DEC();
          }
        }
      }

      else if ((sub_10002AA38(a1) & 0x80000000) != 0)
      {
        if (dword_100090058)
        {
          v64 = ne_log_obj();
          if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
          {
            sub_100058DB8();
          }
        }
      }

      else if ((sub_10002ADF8(a1) & 0x80000000) != 0)
      {
        if (dword_100090058)
        {
          v65 = ne_log_obj();
          if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
          {
            sub_100058D84();
          }
        }
      }

      else if ((sub_10002B0A4(a1) & 0x80000000) != 0)
      {
        if (dword_100090058)
        {
          v66 = ne_log_obj();
          if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
          {
            sub_100058D50();
          }
        }
      }

      else if ((sub_10002B4BC(a1) & 0x80000000) != 0)
      {
        if (dword_100090058)
        {
          v67 = ne_log_obj();
          if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
          {
            sub_100058D1C();
          }
        }
      }

      else
      {
        v26 = sub_100028894(a1);
        if (v26 == -1)
        {
          v25 = 0;
          goto LABEL_78;
        }

        if (!v26)
        {
          sub_10002A74C(a1);
          sub_100000A50(v3, 5250);
          v25 = 1;
          sub_100046F84(1, 1, a1, 0);
          goto LABEL_78;
        }

        sub_100018B60(a1, v26, 0);
      }
    }
  }

  else if (dword_100090058)
  {
    v42 = ne_log_obj();
    if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
    {
      sub_100058E54();
    }
  }

LABEL_77:
  v25 = 0;
  v26 = 0xFFFFFFFFLL;
LABEL_78:
  sub_10003D4F0(v6);
LABEL_79:
  if (v74)
  {
    sub_10003D4F0(v74);
  }

  if ((v25 & 1) == 0)
  {
    v29 = *(a1 + 160);
    if (v29)
    {
      sub_10003D4F0(v29);
      *(a1 + 160) = 0;
    }

    v30 = *(a1 + 184);
    if (v30)
    {
      sub_10003D4F0(v30);
      *(a1 + 184) = 0;
    }

    v31 = *(a1 + 320);
    if (v31)
    {
      sub_10003D4F0(v31);
      *(a1 + 320) = 0;
    }

    sub_1000298D0(*(a1 + 288));
    *(a1 + 288) = 0;
    sub_1000298D0(*(a1 + 296));
    *(a1 + 296) = 0;
    v32 = *(a1 + 272);
    if (v32)
    {
      sub_10003D4F0(v32);
      *(a1 + 272) = 0;
    }

    sub_1000298D0(*(a1 + 304));
    *(a1 + 304) = 0;
  }

  return v26;
}

uint64_t sub_100010BD4(uint64_t a1, uint64_t a2)
{
  v3 = (a1 + 16);
  v2 = *(a1 + 16);
  v59 = 0;
  if (v2 != 5250)
  {
    if (dword_100090058)
    {
      v12 = ne_log_obj();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_100058738(v3);
      }
    }

    return 0xFFFFFFFFLL;
  }

  if (dword_100090058)
  {
    v6 = ne_log_obj();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      sub_100058F64();
    }
  }

  v7 = sub_1000280D4(a1, 1);
  *(a1 + 256) = v7;
  if (!v7)
  {
    if (dword_100090058)
    {
      v13 = ne_log_obj();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        sub_100059234();
      }
    }

    return 0xFFFFFFFFLL;
  }

  v8 = v7;
  v9 = *(*(a1 + 72) + 48);
  if (*(*(a1 + 64) + 272))
  {
    v10 = v9 == 65001;
  }

  else
  {
    v10 = 0;
  }

  if (v10)
  {
    goto LABEL_28;
  }

  v11 = 0;
  if (v9 <= 64220)
  {
    if (v9 == 1)
    {
      goto LABEL_28;
    }

    if (v9 != 3)
    {
      goto LABEL_30;
    }

    goto LABEL_23;
  }

  switch(v9)
  {
    case 65500:
LABEL_28:
      v15 = 0;
      v16 = 8;
LABEL_29:
      v11 = sub_1000241D4(v15, v8, v16);
      v59 = v11;
      break;
    case 65005:
LABEL_23:
      if ((sub_1000292D0(a1) & 0x80000000) != 0)
      {
        if (dword_100090058)
        {
          v46 = ne_log_obj();
          if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
          {
            sub_100058FD8();
          }
        }

        return 0xFFFFFFFFLL;
      }

      if ((sub_1000295E8(a1) & 0x80000000) != 0)
      {
        if (dword_100090058)
        {
          v48 = ne_log_obj();
          if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
          {
            sub_100058FA4();
          }
        }

        return 0xFFFFFFFFLL;
      }

      v14 = *(a1 + 280);
      if (v14 && *(*(a1 + 64) + 116))
      {
        v15 = sub_1000241D4(0, *(v14 + 24), 6);
      }

      else
      {
        v15 = 0;
      }

      v8 = *(a1 + 264);
      v16 = 9;
      goto LABEL_29;
    case 64221:
      goto LABEL_28;
  }

LABEL_30:
  if ((*(a1 + 96) & 1) == 0)
  {
    v17 = 0;
    v18 = 0;
    goto LABEL_48;
  }

  if (dword_100090058)
  {
    v19 = ne_log_obj();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Adding remote and local NAT-D payloads.\n", buf, 2u);
    }
  }

  v20 = sub_10003D620(a1, *(a1 + 48));
  if (!v20)
  {
    if (dword_100090058)
    {
      v27 = ne_log_obj();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        sub_10005900C((a1 + 48));
      }
    }

    return 0xFFFFFFFFLL;
  }

  v18 = v20;
  v21 = sub_10003D620(a1, *(a1 + 56));
  if (!v21)
  {
    if (dword_100090058)
    {
      v28 = ne_log_obj();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        sub_10005900C((a1 + 56));
      }
    }

    v17 = 0;
    v29 = 0;
    v30 = 0;
    v31 = 0xFFFFFFFFLL;
    goto LABEL_105;
  }

  v17 = v21;
  v22 = *(a1 + 88);
  v23 = *(v22 + 14);
  if (*v22 == 14)
  {
    v24 = sub_1000241D4(v11, v21, v23);
    v25 = *(*(a1 + 88) + 14);
    v26 = v18;
  }

  else
  {
    v24 = sub_1000241D4(v11, v18, v23);
    v25 = *(*(a1 + 88) + 14);
    v26 = v17;
  }

  v11 = sub_1000241D4(v24, v26, v25);
  v59 = v11;
LABEL_48:
  if ((~**(a1 + 408) & 3) == 0)
  {
    if (*(*(a1 + 72) + 48) == 64221)
    {
      v32 = sub_10002A88C(a1);
      if (v32)
      {
        v33 = v32;
        v34 = sub_10002786C(*(a1 + 192), v32, a1);
        if (v34)
        {
          v35 = v34;
          sub_10003D4F0(v33);
          v56 = *(*(a1 + 64) + 24);
          v36 = sub_10003D3A8(*v35 + 24);
          if (v36)
          {
            v29 = v36;
            *v36[1] = bswap32(v56) | 0x379E100100000000;
            v37 = v36[1];
            *(v37 + 8) = *a1;
            memcpy((v37 + 24), *(v35 + 8), *v35);
            sub_10003D4F0(v35);
            v11 = sub_1000241D4(v11, v29, 11);
            v59 = v11;
            goto LABEL_56;
          }

          if (dword_100090058)
          {
            v52 = ne_log_obj();
            if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
            {
              sub_1000590B4();
            }
          }

          v51 = v35;
        }

        else
        {
          if (dword_100090058)
          {
            v50 = ne_log_obj();
            if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
            {
              sub_100059184();
            }
          }

          v51 = v33;
        }

        sub_10003D4F0(v51);
      }

      else if (dword_100090058)
      {
        v47 = ne_log_obj();
        if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
        {
          sub_1000591B8(a1);
        }
      }

      v30 = 0;
      v29 = 0;
      goto LABEL_103;
    }

    v29 = 0;
LABEL_56:
    if ((*(a1 + 432) & 1) != 0 || !*(*(a1 + 64) + 168) || sub_100006D14(*(a1 + 48)))
    {
      v30 = 0;
    }

    else
    {
      v57 = *(*(a1 + 64) + 24);
      v53 = sub_10003D3A8(0x18uLL);
      if (!v53)
      {
        if (dword_100090058)
        {
          v55 = ne_log_obj();
          if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
          {
            sub_1000590B4();
          }
        }

        v30 = 0;
        goto LABEL_103;
      }

      v30 = v53;
      *v53[1] = bswap32(v57) | 0x260100100000000;
      *(v53[1] + 8) = *a1;
      v59 = sub_1000241D4(v11, v53, 11);
      if (sub_100006D5C(*(a1 + 48)) == -1)
      {
        if (dword_100090058)
        {
          v54 = ne_log_obj();
          if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
          {
            sub_100059080();
          }
        }
      }
    }

    *(a1 + 82) |= 1u;
    goto LABEL_61;
  }

  v30 = 0;
  v29 = 0;
LABEL_61:
  v38 = sub_100024230(&v59, a1);
  *(a1 + 128) = v38;
  if ((~**(a1 + 408) & 3) == 0)
  {
    v39 = sub_10002C090(a1, v38, *(*(a1 + 328) + 8), **(a1 + 328));
    if (!v39)
    {
      if (dword_100090058)
      {
        v45 = ne_log_obj();
        if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
        {
          sub_100059150();
        }
      }

      goto LABEL_103;
    }

    v38 = v39;
    sub_10003D4F0(*(a1 + 128));
    *(a1 + 128) = v38;
  }

  if ((sub_100021B88(a1, v38) & 0x80000000) != 0)
  {
    if (dword_100090058)
    {
      v43 = ne_log_obj();
      if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
      {
        sub_10005911C();
      }
    }
  }

  else
  {
    v40 = *(a1 + 128);
    if (*(a1 + 100) && *v40 >= 0x501uLL)
    {
      v41 = 0;
      LODWORD(v42) = *(a1 + 96);
    }

    else
    {
      v42 = *(a1 + 96);
      v41 = (v42 >> 3) & 4;
    }

    if (sub_1000072B8(*(a1 + 48), *(a1 + 56), v40, a2, v41, (v42 >> 5) & 1) != -1)
    {
      *(a1 + 82) |= 1u;
      sub_100000A50(v3, 9216);
      v31 = 0;
      goto LABEL_104;
    }

    if (dword_100090058)
    {
      v44 = ne_log_obj();
      if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
      {
        sub_1000590E8();
      }
    }
  }

LABEL_103:
  v31 = 0xFFFFFFFFLL;
LABEL_104:
  if (v18)
  {
LABEL_105:
    sub_10003D4F0(v18);
  }

  if (v17)
  {
    sub_10003D4F0(v17);
  }

  if (v29)
  {
    sub_10003D4F0(v29);
  }

  if (v30)
  {
    sub_10003D4F0(v30);
  }

  return v31;
}

uint64_t sub_10001130C(uint64_t a1, uint64_t a2)
{
  v3 = (a1 + 16);
  if (*(a1 + 16) != 5504)
  {
    if (dword_100090058)
    {
      v18 = ne_log_obj();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        sub_100058738(v3);
      }
    }

    goto LABEL_68;
  }

  v4 = sub_100020D5C(a2);
  if (!v4)
  {
    if (dword_100090058)
    {
      v19 = ne_log_obj();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        sub_100058F30();
      }
    }

    goto LABEL_68;
  }

  v5 = v4;
  v6 = v4[1];
  if (*v6 != 1)
  {
    if (dword_100090058)
    {
      v20 = ne_log_obj();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        sub_100058A78(v6);
      }
    }

    goto LABEL_67;
  }

  if ((sub_100023F0C((a1 + 336), *(v6 + 1)) & 0x80000000) != 0)
  {
    if (dword_100090058)
    {
      v22 = ne_log_obj();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        sub_100058EFC();
      }
    }

LABEL_67:
    sub_10003D4F0(v5);
LABEL_68:
    v24 = *(a1 + 336);
    if (v24)
    {
      sub_10003D4F0(v24);
      *(a1 + 336) = 0;
    }

    v25 = *(a1 + 160);
    if (v25)
    {
      sub_10003D4F0(v25);
      *(a1 + 160) = 0;
    }

    v26 = *(a1 + 184);
    if (v26)
    {
      sub_10003D4F0(v26);
      *(a1 + 184) = 0;
    }

    v27 = *(a1 + 320);
    if (v27)
    {
      sub_10003D4F0(v27);
      *(a1 + 320) = 0;
    }

    sub_1000298D0(*(a1 + 304));
    *(a1 + 304) = 0;
    return 0xFFFFFFFFLL;
  }

  v9 = v6[16];
  v8 = v6 + 16;
  v7 = v9;
  if (v9)
  {
    do
    {
      if (dword_100090058)
      {
        v10 = ne_log_obj();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
        {
          sub_100059268(v43, v8, &v44, v10);
        }

        v7 = *v8;
      }

      if (v7 <= 6)
      {
        if (v7 == 4)
        {
          if ((sub_100023F0C((a1 + 160), *(v8 + 1)) & 0x80000000) != 0)
          {
            if (dword_100090058)
            {
              v33 = ne_log_obj();
              if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
              {
                sub_100058CB4();
              }
            }

            goto LABEL_67;
          }
        }

        else
        {
          if (v7 != 5)
          {
LABEL_84:
            if (dword_100090058)
            {
              v31 = ne_log_obj();
              if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
              {
                sub_100058E88(v8);
              }
            }

            goto LABEL_67;
          }

          if ((sub_100023F0C((a1 + 320), *(v8 + 1)) & 0x80000000) != 0)
          {
            if (dword_100090058)
            {
              v34 = ne_log_obj();
              if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
              {
                sub_100058C4C();
              }
            }

            goto LABEL_67;
          }
        }
      }

      else
      {
        switch(v7)
        {
          case 7:
            if ((sub_10002A534(a1, *(v8 + 1)) & 0x80000000) != 0)
            {
              if (dword_100090058)
              {
                v35 = ne_log_obj();
                if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
                {
                  sub_100058C18();
                }
              }

              goto LABEL_67;
            }

            break;
          case 10:
            if ((sub_100023F0C((a1 + 184), *(v8 + 1)) & 0x80000000) != 0)
            {
              if (dword_100090058)
              {
                v32 = ne_log_obj();
                if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
                {
                  sub_100058C80();
                }
              }

              goto LABEL_67;
            }

            break;
          case 13:
            v11 = sub_10003D224(*(v8 + 1));
            v12 = v11;
            if (*(*(a1 + 64) + 176) && sub_10003D610(v11))
            {
              sub_10003DE68(a1, v12);
            }

            else
            {
              if (v12 > 17)
              {
                if (v12 == 18)
                {
                  if ((sub_100012B78(*(v8 + 1)) & 0x80000000) != 0)
                  {
                    if (dword_100090058)
                    {
                      v16 = ne_log_obj();
                      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
                      {
                        sub_100058B58(&v37, v38);
                      }
                    }

                    *(a1 + 100) = 1;
                  }
                }

                else if (v12 == 19)
                {
                  if (*(*(a1 + 64) + 208))
                  {
                    *(a1 + 368) = 1;
                    if (dword_100090058)
                    {
                      v15 = ne_log_obj();
                      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
                      {
                        sub_100058B84(&v39, v40);
                      }
                    }
                  }
                }

                break;
              }

              if (v12 == 16)
              {
                v13 = *(a1 + 408);
                v14 = *v13 | 1;
                goto LABEL_38;
              }

              if (v12 == 17)
              {
                v13 = *(a1 + 408);
                v14 = *v13 | 2;
LABEL_38:
                *v13 = v14;
              }
            }

            break;
          default:
            goto LABEL_84;
        }
      }

      v17 = v8[16];
      v8 += 16;
      v7 = v17;
    }

    while (v17);
  }

  if (!*(a1 + 160) || !*(a1 + 184))
  {
    if (dword_100090058)
    {
      v23 = ne_log_obj();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        sub_100058E54();
      }
    }

    goto LABEL_67;
  }

  if (sub_10000D28C(a1))
  {
    if (dword_100090058)
    {
      v21 = ne_log_obj();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        sub_100058CE8();
      }
    }

    goto LABEL_67;
  }

  if (*(a1 + 96))
  {
    if (dword_100090058)
    {
      v29 = ne_log_obj();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        v30 = sub_10003CF98(**(a1 + 88));
        *buf = 136315138;
        v42 = v30;
        _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "Selected NAT-T version: %s\n", buf, 0xCu);
      }
    }

    sub_10004C9DC(a1);
  }

  if ((sub_100008354(*(a1 + 336), a1) & 0x80000000) != 0)
  {
    if (dword_100090058)
    {
      v36 = ne_log_obj();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        sub_100058E20();
      }
    }

    goto LABEL_67;
  }

  sub_10002A74C(a1);
  sub_100000A50(v3, 5505);
  sub_10003D4F0(v5);
  return 0;
}

uint64_t sub_1000118E8(uint64_t a1, uint64_t a2)
{
  v76 = 0;
  v2 = (a1 + 16);
  if (*(a1 + 16) != 5505)
  {
    if (dword_100090058)
    {
      v12 = ne_log_obj();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_100058738(v2);
      }
    }

    return 0xFFFFFFFFLL;
  }

  v5 = (a1 + 48);
  v6 = (a1 + 56);
  sub_100023CF0((a1 + 8), *(a1 + 48), *(a1 + 56));
  if ((sub_10000D870(a1) & 0x80000000) != 0)
  {
    if (dword_100090058)
    {
      v13 = ne_log_obj();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        sub_100059584();
      }
    }

    return 0xFFFFFFFFLL;
  }

  if ((sub_100027424(*(*(a1 + 64) + 192), (a1 + 152), (a1 + 136)) & 0x80000000) != 0)
  {
    if (dword_100090058)
    {
      v14 = ne_log_obj();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        sub_100059550();
      }
    }

    return 0xFFFFFFFFLL;
  }

  v7 = sub_1000042AC(*(*(a1 + 64) + 140));
  *(a1 + 176) = v7;
  if (!v7)
  {
    if (dword_100090058)
    {
      v15 = ne_log_obj();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        sub_10005951C();
      }
    }

    return 0xFFFFFFFFLL;
  }

  if ((sub_100027224(*(*(a1 + 72) + 64), *(a1 + 160), (a1 + 168), (a1 + 136)) & 0x80000000) != 0)
  {
    if (dword_100090058)
    {
      v16 = ne_log_obj();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        sub_1000594E8();
      }
    }

    return 0xFFFFFFFFLL;
  }

  if ((sub_10002AA38(a1) & 0x80000000) != 0)
  {
    if (dword_100090058)
    {
      v17 = ne_log_obj();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        sub_1000594B4();
      }
    }

    return 0xFFFFFFFFLL;
  }

  if ((sub_10002ADF8(a1) & 0x80000000) != 0)
  {
    if (dword_100090058)
    {
      v18 = ne_log_obj();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        sub_100059480();
      }
    }

    return 0xFFFFFFFFLL;
  }

  if ((sub_10002B0A4(a1) & 0x80000000) != 0)
  {
    if (dword_100090058)
    {
      v19 = ne_log_obj();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        sub_10005944C();
      }
    }

    return 0xFFFFFFFFLL;
  }

  if ((sub_10002B4BC(a1) & 0x80000000) != 0)
  {
    if (dword_100090058)
    {
      v20 = ne_log_obj();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        sub_100059418();
      }
    }

    return 0xFFFFFFFFLL;
  }

  if (dword_100090058)
  {
    v8 = ne_log_obj();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      sub_1000592D4();
    }
  }

  v9 = sub_1000280D4(a1, 1);
  *(a1 + 256) = v9;
  if (!v9)
  {
    if (dword_100090058)
    {
      v22 = ne_log_obj();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        sub_1000593E4();
      }
    }

    return 0xFFFFFFFFLL;
  }

  if (*(*(a1 + 64) + 120) && sub_10002A868(*(*(a1 + 72) + 48)))
  {
    v10 = sub_10002A658(a1);
    if (v10)
    {
      v72 = v10;
      v11 = 0;
      goto LABEL_46;
    }

    if (dword_100090058)
    {
      v33 = ne_log_obj();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        sub_100059314();
      }
    }

    return 0xFFFFFFFFLL;
  }

  v72 = 0;
  v11 = 1;
LABEL_46:
  if (*(a1 + 96))
  {
    v73 = sub_10003D184(**(a1 + 88));
    if (dword_100090058)
    {
      v25 = ne_log_obj();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Adding remote and local NAT-D payloads.\n", buf, 2u);
      }
    }

    v26 = sub_10003D620(a1, *(a1 + 48));
    if (!v26)
    {
      if (dword_100090058)
      {
        v30 = ne_log_obj();
        v31 = v73;
        if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
        {
          sub_10005900C(v5);
        }

        v29 = 0;
        v27 = 0;
        v32 = 0;
        v21 = 0;
        goto LABEL_145;
      }

      v29 = 0;
      v27 = 0;
      v32 = 0;
      v21 = 0;
      goto LABEL_105;
    }

    v21 = v26;
    v71 = sub_10003D620(a1, *(a1 + 56));
    if (!v71)
    {
      if (dword_100090058)
      {
        v38 = ne_log_obj();
        v31 = v73;
        if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
        {
          sub_10005900C(v6);
        }

        v29 = 0;
        v27 = 0;
        v32 = 0;
        goto LABEL_145;
      }

      v29 = 0;
      v27 = 0;
      v32 = 0;
      goto LABEL_105;
    }
  }

  else
  {
    v71 = 0;
    v21 = 0;
    v73 = 0;
  }

  if (*(a1 + 368) && *(*(a1 + 64) + 208))
  {
    v27 = sub_10003D184(19);
  }

  else
  {
    v27 = 0;
  }

  if (*(a1 + 100))
  {
    v28 = sub_10003D184(18);
    if (v28)
    {
      v29 = sub_1000130BC(v28, 0x80000000);
    }

    else
    {
      v29 = 0;
    }

    if (v29 || !dword_100090058)
    {
      goto LABEL_78;
    }

    v34 = ne_log_obj();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      sub_100059348();
    }
  }

  v29 = 0;
LABEL_78:
  v35 = *(*(a1 + 72) + 48);
  if (*(*(a1 + 64) + 272) && v35 == 65001)
  {
    v36 = 0;
    goto LABEL_112;
  }

  v36 = 0;
  if (v35 <= 64221)
  {
    if (v35 == 1)
    {
LABEL_96:
      v39 = sub_1000241D4(0, *(a1 + 344), 1);
      v40 = sub_1000241D4(v39, *(a1 + 152), 4);
      v41 = sub_1000241D4(v40, *(a1 + 176), 10);
      v42 = sub_1000241D4(v41, *(a1 + 312), 5);
      v43 = *(a1 + 256);
      v44 = 8;
LABEL_110:
      v53 = sub_1000241D4(v42, v43, v44);
      v36 = v53;
      v76 = v53;
      if ((v11 & 1) == 0)
      {
        v36 = sub_1000241D4(v53, v72, 7);
        v76 = v36;
      }

LABEL_112:
      v54 = **(a1 + 408);
      if ((v54 & 1) == 0)
      {
        v48 = 0;
        goto LABEL_119;
      }

      if (dword_100090058)
      {
        v55 = ne_log_obj();
        if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
        {
          *v74 = 0;
          _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEFAULT, "Adding xauth VID payload.\n", v74, 2u);
        }
      }

      v56 = sub_10003D184(16);
      if (v56)
      {
        v48 = v56;
        v36 = sub_1000241D4(v36, v56, 13);
        v76 = v36;
        v54 = **(a1 + 408);
LABEL_119:
        if ((v54 & 2) != 0)
        {
          v57 = sub_10003D184(17);
          if (!v57)
          {
            if (dword_100090058)
            {
              v70 = ne_log_obj();
              v31 = v73;
              v32 = v71;
              if (os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
              {
                sub_1000593B0();
              }

              v47 = 0;
              goto LABEL_146;
            }

            v47 = 0;
            goto LABEL_156;
          }

          v47 = v57;
          v36 = sub_1000241D4(v36, v57, 13);
          v76 = v36;
        }

        else
        {
          v47 = 0;
        }

        if (v73)
        {
          v58 = sub_1000241D4(v36, v73, 13);
          v59 = *(a1 + 88);
          v60 = *(v59 + 14);
          if (*v59 == 14)
          {
            v61 = sub_1000241D4(v58, v71, v60);
            v62 = *(*(a1 + 88) + 14);
            v63 = v21;
          }

          else
          {
            v61 = sub_1000241D4(v58, v21, v60);
            v62 = *(*(a1 + 88) + 14);
            v63 = v71;
          }

          v36 = sub_1000241D4(v61, v63, v62);
          v76 = v36;
        }

        if (v29)
        {
          v36 = sub_1000241D4(v36, v29, 13);
          v76 = v36;
        }

        if (v27)
        {
          v76 = sub_1000241D4(v36, v27, 13);
        }

        *(a1 + 128) = sub_100024230(&v76, a1);
        *(a1 + 124) = *(*(a1 + 64) + 200);
        if (sub_100021E5C(a1) == -1)
        {
          if (dword_100090058)
          {
            v67 = ne_log_obj();
            v31 = v73;
            v32 = v71;
            if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
            {
              sub_10005911C();
            }

            goto LABEL_146;
          }
        }

        else
        {
          v64 = *(a1 + 128);
          if (*(a1 + 100) && *v64 >= 0x501uLL)
          {
            v65 = 0;
            LODWORD(v66) = *(a1 + 96);
          }

          else
          {
            v66 = *(a1 + 96);
            v65 = (v66 >> 3) & 4;
          }

          if (sub_1000072B8(*(a1 + 48), *(a1 + 56), v64, a2, v65, (v66 >> 5) & 1) != -1)
          {
            sub_100000A50(v2, 5538);
            sub_100046F84(1, 0, a1, 0);
            v23 = 0;
LABEL_157:
            v49 = v72;
            v31 = v73;
            v32 = v71;
            goto LABEL_158;
          }

          if (dword_100090058)
          {
            v69 = ne_log_obj();
            v31 = v73;
            v32 = v71;
            if (os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
            {
              sub_1000590E8();
            }

            goto LABEL_146;
          }
        }

LABEL_156:
        v23 = 0xFFFFFFFFLL;
        goto LABEL_157;
      }

      if (dword_100090058)
      {
        v68 = ne_log_obj();
        v31 = v73;
        v32 = v71;
        if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
        {
          sub_10005937C();
        }

LABEL_145:
        v47 = 0;
        v48 = 0;
LABEL_146:
        v23 = 0xFFFFFFFFLL;
        v49 = v72;
        goto LABEL_158;
      }

LABEL_154:
      v47 = 0;
      v48 = 0;
      goto LABEL_156;
    }

    if (v35 != 3)
    {
      goto LABEL_112;
    }
  }

  else if (v35 != 64222 && v35 != 65006)
  {
    if (v35 != 65002)
    {
      goto LABEL_112;
    }

    goto LABEL_96;
  }

  if ((sub_1000292D0(a1) & 0x80000000) != 0)
  {
    if (dword_100090058)
    {
      v45 = ne_log_obj();
      v31 = v73;
      v32 = v71;
      if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
      {
        sub_100058FD8();
      }

      goto LABEL_145;
    }

    goto LABEL_154;
  }

  if ((sub_1000295E8(a1) & 0x80000000) == 0)
  {
    if (*(a1 + 280))
    {
      v37 = *(*(a1 + 64) + 116) == 0;
    }

    else
    {
      v37 = 1;
    }

    v50 = sub_1000241D4(0, *(a1 + 344), 1);
    v51 = sub_1000241D4(v50, *(a1 + 152), 4);
    v52 = sub_1000241D4(v51, *(a1 + 176), 10);
    v42 = sub_1000241D4(v52, *(a1 + 312), 5);
    if (!v37)
    {
      v42 = sub_1000241D4(v42, *(*(a1 + 280) + 24), 6);
    }

    v43 = *(a1 + 264);
    v44 = 9;
    goto LABEL_110;
  }

  v32 = v71;
  if (dword_100090058)
  {
    v46 = ne_log_obj();
    v31 = v73;
    if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
    {
      sub_100058FA4();
    }

    goto LABEL_145;
  }

LABEL_105:
  v47 = 0;
  v48 = 0;
  v23 = 0xFFFFFFFFLL;
  v49 = v72;
  v31 = v73;
LABEL_158:
  if (v49)
  {
    sub_10003D4F0(v49);
  }

  if (v48)
  {
    sub_10003D4F0(v48);
  }

  if (v47)
  {
    sub_10003D4F0(v47);
  }

  if (v31)
  {
    sub_10003D4F0(v31);
  }

  if (v21)
  {
    sub_10003D4F0(v21);
  }

  if (v32)
  {
    sub_10003D4F0(v32);
  }

  if (v27)
  {
    sub_10003D4F0(v27);
  }

  if (v29)
  {
    sub_10003D4F0(v29);
  }

  return v23;
}

uint64_t sub_100012338(uint64_t a1, void *a2)
{
  v3 = (a1 + 16);
  if (*(a1 + 16) != 5538)
  {
    if (dword_100090058)
    {
      v5 = ne_log_obj();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        sub_100058738(v3);
      }
    }

    goto LABEL_7;
  }

  if (*(a2[1] + 19))
  {
    v4 = sub_10002BCBC(a1, a2, **(a1 + 328), *(*(a1 + 328) + 8));
    if (v4)
    {
      goto LABEL_9;
    }

    if (dword_100090058)
    {
      v20 = ne_log_obj();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        sub_1000595B8();
      }
    }

LABEL_7:
    v6 = 0xFFFFFFFFLL;
    goto LABEL_84;
  }

  v4 = sub_10003D538(a2);
LABEL_9:
  v7 = sub_100020D5C(v4);
  if (!v7)
  {
    if (dword_100090058)
    {
      v18 = ne_log_obj();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        sub_100058F30();
      }
    }

    v19 = 0;
    v6 = 0xFFFFFFFFLL;
    if (v4)
    {
      goto LABEL_82;
    }

    goto LABEL_83;
  }

  v8 = v7;
  v9 = 0;
  v10 = 0;
  *(a1 + 352) = 0;
  for (i = v7[1]; ; i += 16)
  {
    v12 = *i;
    if (v12 > 0xA)
    {
      if (*i > 0x13u)
      {
        if (v12 != 20 && v12 != 130)
        {
          goto LABEL_66;
        }

        if (*(a1 + 96))
        {
          v13 = *(a1 + 88);
          if (v13)
          {
            if (*(v13 + 14) == v12)
            {
              v33 = 0;
              if ((sub_100023F0C(&v33, *(i + 1)) & 0x80000000) != 0)
              {
                if (dword_100090058)
                {
                  v30 = ne_log_obj();
                  if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
                  {
                    sub_1000595EC();
                  }
                }

                goto LABEL_80;
              }

              if (!v10)
              {
                *(a1 + 96) |= 6u;
              }

              v14 = sub_10003D80C(a1, v33, v10);
              if (dword_100090058)
              {
                v15 = v14;
                v16 = ne_log_obj();
                if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 67109378;
                  v17 = "verified";
                  if (!v15)
                  {
                    v17 = "doesn't match";
                  }

                  *v35 = v10;
                  *&v35[4] = 2080;
                  *&v35[6] = v17;
                  _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "NAT-D payload #%d %s\n", buf, 0x12u);
                }
              }

              ++v10;
              sub_10003D4F0(v33);
            }
          }
        }
      }

      else if (v12 == 11)
      {
        sub_1000195C8(*(i + 1), a1);
      }

      else
      {
        if (v12 != 13)
        {
          goto LABEL_66;
        }

        sub_10003D224(*(i + 1));
      }

      continue;
    }

    if (*i > 7u)
    {
      if (v12 == 8)
      {
        *(a1 + 352) = *(i + 1);
      }

      else
      {
        if (v12 != 9)
        {
          goto LABEL_66;
        }

        if ((sub_100023F0C((a1 + 272), *(i + 1)) & 0x80000000) != 0)
        {
          if (dword_100090058)
          {
            v29 = ne_log_obj();
            if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
            {
              sub_100059620();
            }
          }

          goto LABEL_80;
        }
      }

      continue;
    }

    if (v12 != 6)
    {
      break;
    }

    if ((sub_10002A284(a1, *(i + 1)) & 0x80000000) != 0)
    {
      if (dword_100090058)
      {
        v28 = ne_log_obj();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          sub_100059654();
        }
      }

      goto LABEL_80;
    }

    v9 = 1;
  }

  if (*i)
  {
LABEL_66:
    if (dword_100090058)
    {
      v27 = ne_log_obj();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        sub_100058E88(i);
      }
    }

    goto LABEL_80;
  }

  if (*(a1 + 96))
  {
    if (dword_100090058)
    {
      v21 = ne_log_obj();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        v22 = "detected:";
        v23 = *(a1 + 96);
        v24 = "ME ";
        if ((v23 & 6) == 0)
        {
          v22 = "not detected";
        }

        if ((v23 & 2) == 0)
        {
          v24 = &unk_100080609;
        }

        *buf = 136315650;
        *v35 = v22;
        *&v35[8] = 2080;
        *&v35[10] = v24;
        if ((v23 & 4) != 0)
        {
          v25 = "PEER";
        }

        else
        {
          v25 = &unk_100080609;
        }

        v36 = 2080;
        v37 = v25;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "NAT %s %s%s\n", buf, 0x20u);
      }
    }
  }

  if (v9)
  {
    sub_100029850(a1);
  }

  v26 = sub_100028894(a1);
  v6 = v26;
  if (v26 == -1)
  {
    v19 = 0;
    goto LABEL_81;
  }

  if (!v26)
  {
    sub_100000A50(v3, 5507);
    v19 = 1;
    goto LABEL_81;
  }

  sub_100018B60(a1, v26, 0);
LABEL_80:
  v19 = 0;
  v6 = 0xFFFFFFFFLL;
LABEL_81:
  sub_10003D4F0(v8);
  if (v4)
  {
LABEL_82:
    sub_10003D4F0(v4);
  }

LABEL_83:
  if ((v19 & 1) == 0)
  {
LABEL_84:
    sub_1000298D0(*(a1 + 288));
    *(a1 + 288) = 0;
    sub_1000298D0(*(a1 + 296));
    *(a1 + 296) = 0;
    v31 = *(a1 + 272);
    if (v31)
    {
      sub_10003D4F0(v31);
      *(a1 + 272) = 0;
    }
  }

  return v6;
}

uint64_t sub_10001284C(uint64_t a1, uint64_t a2)
{
  v2 = (a1 + 16);
  if (*(a1 + 16) == 5507)
  {
    if (*(*(a2 + 8) + 19))
    {
      memcpy(*(**(a1 + 328) + 8), *(*(*(a1 + 328) + 8) + 8), ***(a1 + 328));
    }

    *(a1 + 82) |= 1u;
    sub_100000A50(v2, 9216);
    return 0;
  }

  else
  {
    if (dword_100090058)
    {
      v5 = ne_log_obj();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        sub_100058738(v2);
      }
    }

    return 0xFFFFFFFFLL;
  }
}

uint64_t *sub_100012918(const sockaddr **a1)
{
  v2 = *a1;

  return sub_10003A5E8(v2);
}

uint64_t sub_100012930(uint64_t a1, unint64_t *a2)
{
  v4 = *(a1 + 96);
  v5 = sub_1000050B8(*(a1 + 56));
  if (v5 == -1)
  {
    return 0xFFFFFFFFLL;
  }

  v6 = *a2;
  if (*a2)
  {
    v7 = v5;
    LODWORD(v8) = 0;
    v9 = v4 & 0x20;
    v10 = (v4 & 0x20) >> 3;
    v11 = a2[1];
    v24 = v11[18];
    while (1)
    {
      v12 = v6 >= 0x4DC ? 1244 : v6;
      v13 = sub_10003D3A8(v12 + 36);
      if (!v13)
      {
        break;
      }

      v14 = v13;
      v8 = (v8 + 1);
      sub_10002407C(v13, a1, 132);
      v15 = v14[1];
      *(v15 + 18) = v24;
      *(v15 + 28) = 0;
      *(v15 + 30) = bswap32(v12 + 8) >> 16;
      *(v15 + 32) = 256;
      *(v15 + 34) = v8;
      *(v15 + 35) = v6 < 0x4DD;
      memcpy((v15 + 36), v11, v12);
      if (v9)
      {
        v16 = sub_10003D3A8(*v14 + v10);
        if (!v16)
        {
          if (dword_100090058)
          {
            v22 = ne_log_obj();
            if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
            {
              sub_100059688();
            }
          }

          goto LABEL_27;
        }

        v17 = v16;
        v18 = v16[1];
        *v18 = 0;
        memcpy(v18 + v10, v14[1], *v14);
        sub_10003D4F0(v14);
        v14 = v17;
      }

      if (sub_100039E78(v7, v14[1], *v14, *(a1 + 56), *(a1 + 48), *(qword_1000900B8 + 276)) == -1)
      {
        if (dword_100090058)
        {
          v21 = ne_log_obj();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
          {
            sub_100059708();
          }
        }

LABEL_27:
        sub_10003D4F0(v14);
        return 0xFFFFFFFFLL;
      }

      sub_10003D4F0(v14);
      v11 += v12;
      v6 -= v12;
      if (!v6)
      {
        goto LABEL_15;
      }
    }

    if (dword_100090058)
    {
      v20 = ne_log_obj();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        sub_100059788();
      }
    }

    return 0xFFFFFFFFLL;
  }

  v8 = 0;
LABEL_15:
  if (dword_100090058)
  {
    v19 = ne_log_obj();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      sub_1000597BC();
    }
  }

  return v8;
}

uint64_t sub_100012BB0(uint64_t a1, void *a2)
{
  if (*a2 <= 0x23uLL)
  {
    if (dword_100090058)
    {
      v2 = ne_log_obj();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
      {
        sub_1000598E8();
      }
    }

    return 0xFFFFFFFFLL;
  }

  v3 = a2[1];
  v4 = bswap32(*(v3 + 30)) >> 16;
  if (*a2 < (v4 + 28) || v4 <= 8)
  {
    if (dword_100090058)
    {
      v6 = ne_log_obj();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_1000598B4();
      }
    }

    return 0xFFFFFFFFLL;
  }

  v8 = sub_10003D3A8(v4 - 8);
  if (!v8)
  {
    if (dword_100090058)
    {
      v30 = ne_log_obj();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        sub_100059788();
      }
    }

    return 0xFFFFFFFFLL;
  }

  v9 = v8;
  v10 = malloc_type_malloc(0x20uLL, 0x102004035CFEAE3uLL);
  if (!v10)
  {
    if (dword_100090058)
    {
      v31 = ne_log_obj();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        sub_100059788();
      }
    }

    sub_10003D4F0(v9);
    return 0xFFFFFFFFLL;
  }

  v11 = v10;
  *v10 = 0u;
  v10[1] = 0u;
  memcpy(v9[1], (v3 + 36), *v9);
  v13 = *(v3 + 34);
  v12 = (v3 + 34);
  v14 = v12[1] & 1;
  *v11 = v13;
  *(v11 + 1) = v14;
  v11[2] = 0;
  v11[3] = v9;
  *(v11 + 4) = bswap32(*(v12 - 1)) >> 16;
  if (!dword_100090058 || (v15 = ne_log_obj(), v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG), v14 = *(v11 + 1), !v16))
  {
    if (!v14)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  v32 = *v11;
  v33 = *(v11 + 4);
  v34 = 136315906;
  v35 = "isakmp_frag_extract";
  v36 = 1024;
  v37 = v32;
  v38 = 1024;
  v39 = v33;
  v40 = 1024;
  v41 = v14;
  _os_log_debug_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "%s: received fragment #%d  frag ID=%d  last frag=%d\n", &v34, 0x1Eu);
  v14 = *(v11 + 1);
  if (v14)
  {
LABEL_17:
    v14 = *v11;
  }

LABEL_18:
  v17 = *(a1 + 104);
  if (v17)
  {
    v18 = *(a1 + 104);
    while (*v18 != *v11)
    {
      if (*(v18 + 4))
      {
        v14 = *v18;
      }

      v18 = *(v18 + 16);
      if (!v18)
      {
        goto LABEL_24;
      }
    }

    sub_10003D4F0(v11[3]);
    free(v11);
    return 0;
  }

LABEL_24:
  v11[2] = v17;
  *(a1 + 104) = v11;
  if (!v14)
  {
    return 0;
  }

  if (v14 >= 1)
  {
    v19 = 1;
    do
    {
      v20 = v11;
      while (*v20 != v19)
      {
        result = 0;
        v20 = v20[2];
        if (!v20)
        {
          return result;
        }
      }
    }

    while (v19++ != v14);
  }

  if (dword_100090058)
  {
    v23 = ne_log_obj();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      sub_100059830(v12, v23, v24, v25, v26, v27, v28, v29);
    }
  }

  return 1;
}

void *sub_100012ED4(uint64_t a1)
{
  v2 = *(a1 + 104);
  if (!v2)
  {
    if (!dword_100090058)
    {
      v8 = 0;
LABEL_34:
      *(a1 + 104) = 0;
      return v8;
    }

    v14 = ne_log_obj();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_100059A04();
    }

    goto LABEL_29;
  }

  v3 = 0;
  v4 = 0;
  v5 = 0;
  do
  {
    if (*v2 > v3 && *(v2 + 4))
    {
      v3 = *v2;
    }

    v6 = v2 + 16;
    v2 = *(v2 + 16);
    v5 += **(v6 + 8);
    ++v4;
  }

  while (v2);
  v7 = sub_10003D3A8(v5);
  if (!v7)
  {
    if (dword_100090058)
    {
      v16 = ne_log_obj();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        sub_100059788();
      }
    }

LABEL_29:
    v8 = 0;
LABEL_30:
    v17 = *(a1 + 104);
    if (v17)
    {
      do
      {
        v18 = *(v17 + 16);
        sub_10003D4F0(*(v17 + 24));
        free(v17);
        v17 = v18;
      }

      while (v18);
    }

    goto LABEL_34;
  }

  v8 = v7;
  if (v3 < 1)
  {
LABEL_16:
    if (dword_100090058)
    {
      v13 = ne_log_obj();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        sub_100059990();
      }
    }

    goto LABEL_30;
  }

  v9 = v7[1];
  v10 = 1;
LABEL_10:
  v11 = *(a1 + 104);
  do
  {
    if (*v11 == v10)
    {
      memcpy(v9, *(*(v11 + 24) + 8), **(v11 + 24));
      v9 += **(v11 + 24);
      if (v10++ == v3)
      {
        goto LABEL_16;
      }

      goto LABEL_10;
    }

    v11 = *(v11 + 16);
  }

  while (v11);
  if (dword_100090058)
  {
    v15 = ne_log_obj();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_10005991C();
    }
  }

  sub_10003D4F0(v8);
  return 0;
}

void **sub_1000130BC(void **a1, unsigned int a2)
{
  v4 = sub_1000042A4();
  v5 = *a1;
  if (*a1 != (v4 >> 3))
  {
    goto LABEL_4;
  }

  v6 = sub_10003D42C(a1, (v5 + 4));
  if (v6)
  {
    a1 = v6;
    *&v5[v6[1]] = 0;
LABEL_4:
    *(a1[1] + (v4 >> 3)) |= bswap32(a2);
    return a1;
  }

  if (dword_100090058)
  {
    v8 = ne_log_obj();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_100059788();
    }
  }

  return 0;
}

uint64_t sub_100013170(uint64_t a1, unint64_t *a2, unsigned __int8 *a3, unsigned __int8 *a4, uint64_t a5, char a6)
{
  v6 = *a2;
  if (*a2)
  {
    LODWORD(v11) = 0;
    v12 = a6 & 1;
    v33 = (4 * v12);
    v13 = a2[1];
    v35 = v13;
    v32 = v12;
    while (1)
    {
      v14 = v6 >= 0x4DC ? 1244 : v6;
      v15 = sub_10003D3A8(v14 + 36);
      if (!v15)
      {
        break;
      }

      v16 = v15;
      v11 = (v11 + 1);
      v17 = v15[1];
      v18 = *v35;
      v19 = *(v35 + 2);
      *(v17 + 24) = *(v35 + 6);
      *(v17 + 16) = v19;
      *v17 = v18;
      *(v17 + 24) = bswap32(*v15);
      *(v17 + 16) = -124;
      *(v17 + 28) = 0;
      *(v17 + 30) = bswap32(v14 + 8) >> 16;
      *(v17 + 32) = 256;
      *(v17 + 34) = v11;
      *(v17 + 35) = v6 < 0x4DD;
      memcpy((v17 + 36), v13, v14);
      if (v12)
      {
        v34 = v11;
        v20 = a1;
        v21 = a3;
        v22 = a4;
        v23 = a5;
        v24 = sub_10003D3A8(*v16 + v33);
        if (!v24)
        {
          if (dword_100090058)
          {
            v30 = ne_log_obj();
            if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
            {
              sub_100059A38();
            }
          }

          goto LABEL_26;
        }

        v25 = v24;
        v26 = v24[1];
        *v26 = 0;
        memcpy(v26 + v33, v16[1], *v16);
        sub_10003D4F0(v16);
        v16 = v25;
        a5 = v23;
        a4 = v22;
        a3 = v21;
        a1 = v20;
        v11 = v34;
        v12 = v32;
      }

      if (sub_100039E78(a1, v16[1], *v16, a3, a4, a5) == -1)
      {
        if (dword_100090058)
        {
          v29 = ne_log_obj();
          if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
          {
            sub_100059AB8();
          }
        }

LABEL_26:
        sub_10003D4F0(v16);
        return 0xFFFFFFFFLL;
      }

      sub_10003D4F0(v16);
      v13 += v14;
      v6 -= v14;
      if (!v6)
      {
        goto LABEL_14;
      }
    }

    if (dword_100090058)
    {
      v28 = ne_log_obj();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        sub_100059788();
      }
    }

    return 0xFFFFFFFFLL;
  }

  else
  {
    v11 = 0;
LABEL_14:
    if (dword_100090058)
    {
      v27 = ne_log_obj();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
      {
        sub_100059AEC();
      }
    }
  }

  return v11;
}

void sub_100013404(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 0x12u);
}

uint64_t sub_100013420(uint64_t a1, uint64_t a2)
{
  v30 = 0;
  memset(v31, 0, sizeof(v31));
  v2 = (a1 + 16);
  if (*(a1 + 16) != 5184)
  {
    if (dword_100090058)
    {
      v4 = ne_log_obj();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        sub_100058738(v2);
      }
    }

    goto LABEL_9;
  }

  if (a2)
  {
    if (dword_100090058)
    {
      v3 = ne_log_obj();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        sub_100059B60();
      }
    }

LABEL_9:
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = 0xFFFFFFFFLL;
    goto LABEL_10;
  }

  *a1 = 0;
  *(a1 + 8) = 0;
  sub_100023CF0(a1, *(a1 + 48), *(a1 + 56));
  v13 = sub_10000C430(a1);
  *(a1 + 336) = v13;
  if (!v13)
  {
    if (dword_100090058)
    {
      v22 = ne_log_obj();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        sub_100059C30();
      }
    }

    goto LABEL_9;
  }

  v14 = sub_1000241D4(0, v13, 1);
  v15 = v14;
  v30 = v14;
  v16 = *(a1 + 64);
  if (*(v16 + 176))
  {
    v15 = sub_10003DF64(v14, v31);
    v30 = v15;
    v16 = *(a1 + 64);
  }

  v17 = *(v16 + 272);
  v18 = *(*(v16 + 248) + 48);
  if (v17 && v18 == 65001 || ((v18 - 65005) <= 4 ? (v19 = ((1 << (v18 + 19)) & 0x15) == 0) : (v19 = 1), v19 ? (v20 = v18 == 65500) : (v20 = 1), !v20 ? (v21 = v18 == 64221) : (v21 = 1), v21))
  {
    v5 = sub_10003D184(16);
    if (v5)
    {
      v15 = sub_1000241D4(v15, v5, 13);
      v30 = v15;
    }

    else if (dword_100090058)
    {
      v23 = ne_log_obj();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        sub_100059B94();
      }
    }

    v24 = sub_10003D184(17);
    if (v24)
    {
      v6 = v24;
      v15 = sub_1000241D4(v15, v24, 13);
      v30 = v15;
    }

    else
    {
      if (dword_100090058)
      {
        v25 = ne_log_obj();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          sub_100059BC8();
        }
      }

      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  if (*(*(a1 + 64) + 148))
  {
    v26 = sub_10003D184(18);
    if (v26)
    {
      v27 = sub_1000130BC(v26, 0x80000000);
      v15 = sub_1000241D4(v15, v27, 13);
      v30 = v15;
      goto LABEL_57;
    }

    if (dword_100090058)
    {
      v28 = ne_log_obj();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        sub_100059BFC();
      }
    }
  }

  v27 = 0;
LABEL_57:
  if (*(*(a1 + 64) + 208))
  {
    v7 = sub_10003D184(19);
    if (v7)
    {
      v30 = sub_1000241D4(v15, v7, 13);
    }
  }

  else
  {
    v7 = 0;
  }

  *(a1 + 128) = sub_100024230(&v30, a1);
  *(a1 + 124) = *(*(a1 + 64) + 200);
  if (sub_100021E5C(a1) != -1)
  {
    sub_100000A50(v2, 5217);
    v8 = 0;
    if (!v27)
    {
      goto LABEL_10;
    }

    goto LABEL_68;
  }

  if (dword_100090058)
  {
    v29 = ne_log_obj();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      sub_10005911C();
    }
  }

  v8 = 0xFFFFFFFFLL;
  if (v27)
  {
LABEL_68:
    sub_10003D4F0(v27);
  }

LABEL_10:
  for (i = 0; i != 96; i += 8)
  {
    v10 = *(v31 + i);
    if (!v10)
    {
      break;
    }

    sub_10003D4F0(v10);
  }

  if (v5)
  {
    sub_10003D4F0(v5);
  }

  if (v6)
  {
    sub_10003D4F0(v6);
  }

  if (v7)
  {
    sub_10003D4F0(v7);
  }

  return v8;
}

uint64_t sub_100013848(uint64_t a1, uint64_t a2)
{
  v26 = 0;
  v2 = (a1 + 16);
  if (*(a1 + 16) != 5217)
  {
    if (dword_100090058)
    {
      v13 = ne_log_obj();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        sub_100058738(v2);
      }
    }

    goto LABEL_32;
  }

  v4 = sub_100020D5C(a2);
  if (!v4)
  {
    if (dword_100090058)
    {
      v14 = ne_log_obj();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        sub_100058F30();
      }
    }

LABEL_32:
    v15 = 0xFFFFFFFFLL;
    goto LABEL_57;
  }

  v5 = v4;
  v6 = v4[1];
  if (*v6 != 1)
  {
    if (dword_100090058)
    {
      v16 = ne_log_obj();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        sub_100058A78(v6);
      }
    }

    goto LABEL_55;
  }

  if ((sub_100023F0C(&v26, *(v6 + 1)) & 0x80000000) != 0)
  {
    if (dword_100090058)
    {
      v20 = ne_log_obj();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        sub_100058EFC();
      }
    }

    goto LABEL_55;
  }

  for (i = v6 + 16; *i == 13; i += 16)
  {
    v8 = sub_10003D224(*(i + 1));
    v9 = v8;
    if (*(*(a1 + 64) + 176) && sub_10003D610(v8))
    {
      sub_10003DE68(a1, v9);
    }

    if (v9 > 17)
    {
      if (v9 == 18)
      {
        if ((sub_100012B78(*(i + 1)) & 0x80000000) != 0)
        {
          if (dword_100090058)
          {
            v12 = ne_log_obj();
            if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
            {
              sub_100059C64(&v24, v25, v12);
            }
          }

          *(a1 + 100) = 1;
        }
      }

      else if (v9 == 19)
      {
        if (*(*(a1 + 64) + 208))
        {
          *(a1 + 368) = 1;
        }
      }
    }

    else
    {
      if (v9 == 16)
      {
        v10 = *(a1 + 408);
        v11 = *v10 | 1;
      }

      else
      {
        if (v9 != 17)
        {
          continue;
        }

        v10 = *(a1 + 408);
        v11 = *v10 | 2;
      }

      *v10 = v11;
    }
  }

  if (*i)
  {
    if (dword_100090058)
    {
      v21 = ne_log_obj();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        sub_100059CA4(i);
      }
    }

    goto LABEL_55;
  }

  if (*(a1 + 96))
  {
    if (dword_100090058)
    {
      v17 = ne_log_obj();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v18 = sub_10003CF98(**(a1 + 88));
        *buf = 136315138;
        v28 = v18;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Selected NAT-T version: %s\n", buf, 0xCu);
      }
    }

    sub_10004C9DC(a1);
  }

  if ((sub_100008354(v26, a1) & 0x80000000) != 0)
  {
    if (dword_100090058)
    {
      v22 = ne_log_obj();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        sub_100058E20();
      }
    }

LABEL_55:
    v15 = 0xFFFFFFFFLL;
    goto LABEL_56;
  }

  v19 = *(a1 + 344);
  if (v19)
  {
    sub_10003D4F0(v19);
    *(a1 + 344) = 0;
  }

  sub_100000A50(v2, 5186);
  sub_100046F84(1, 1, a1, 0);
  v15 = 0;
LABEL_56:
  sub_10003D4F0(v5);
LABEL_57:
  if (v26)
  {
    sub_10003D4F0(v26);
  }

  return v15;
}

uint64_t sub_100013BEC(uint64_t a1, uint64_t a2)
{
  v2 = (a1 + 16);
  if (*(a1 + 16) == 5186)
  {
    *(a1 + 8) = *(*(a2 + 8) + 8);
    if ((sub_100027424(*(*(a1 + 72) + 64), (a1 + 152), (a1 + 136)) & 0x80000000) != 0)
    {
      if (dword_100090058)
      {
        v11 = ne_log_obj();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          sub_100059550();
        }
      }
    }

    else
    {
      v5 = sub_1000042AC(*(*(a1 + 64) + 140));
      *(a1 + 176) = v5;
      if (v5)
      {
        v6 = sub_100013E14(a1);
        *(a1 + 128) = v6;
        if (v6)
        {
          *(a1 + 124) = *(*(a1 + 64) + 200);
          if (sub_100021E5C(a1) == -1)
          {
            if (dword_100090058)
            {
              v15 = ne_log_obj();
              if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
              {
                sub_10005911C();
              }
            }
          }

          else
          {
            v7 = *(a1 + 128);
            if (*(a1 + 100) && *v7 >= 0x501uLL)
            {
              v8 = 0;
              LODWORD(v9) = *(a1 + 96);
            }

            else
            {
              v9 = *(a1 + 96);
              v8 = (v9 >> 3) & 4;
            }

            if (sub_1000072B8(*(a1 + 48), *(a1 + 56), v7, a2, v8, (v9 >> 5) & 1) != -1)
            {
              sub_100000A50(v2, 5219);
              return 0;
            }

            if (dword_100090058)
            {
              v16 = ne_log_obj();
              if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
              {
                sub_1000590E8();
              }
            }
          }
        }

        else if (dword_100090058)
        {
          v13 = ne_log_obj();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            sub_100059D14();
          }
        }
      }

      else if (dword_100090058)
      {
        v12 = ne_log_obj();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          sub_10005951C();
        }
      }
    }
  }

  else if (dword_100090058)
  {
    v10 = ne_log_obj();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_100058738(v2);
    }
  }

  return 0xFFFFFFFFLL;
}

void *sub_100013E14(uint64_t a1)
{
  if (*(a1 + 20) != 1 || !*(*(a1 + 64) + 120) || !sub_10002A868(*(*(a1 + 72) + 48)))
  {
    v3 = 0;
    v4 = 1;
LABEL_7:
    v5 = sub_1000241D4(0, *(a1 + 152), 4);
    v6 = sub_1000241D4(v5, *(a1 + 176), 10);
    v7 = v6;
    v24 = v6;
    if ((v4 & 1) == 0)
    {
      v7 = sub_1000241D4(v6, v3, 7);
      v24 = v7;
    }

    if ((*(a1 + 96) & 1) == 0)
    {
      v8 = 0;
      v9 = 0;
      goto LABEL_30;
    }

    v10 = sub_10003D620(a1, *(a1 + 48));
    if (v10)
    {
      v9 = v10;
      v11 = sub_10003D620(a1, *(a1 + 56));
      if (v11)
      {
        v8 = v11;
        if (dword_100090058)
        {
          v12 = ne_log_obj();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            *v23 = 0;
            _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Adding remote and local NAT-D payloads.\n", v23, 2u);
          }
        }

        v13 = *(a1 + 88);
        v14 = *(v13 + 14);
        if (*v13 == 14)
        {
          v15 = sub_1000241D4(v7, v8, v14);
          v16 = *(*(a1 + 88) + 14);
          v17 = v9;
        }

        else
        {
          v15 = sub_1000241D4(v7, v9, v14);
          v16 = *(*(a1 + 88) + 14);
          v17 = v8;
        }

        v24 = sub_1000241D4(v15, v17, v16);
LABEL_30:
        v20 = sub_100024230(&v24, a1);
        if (!v3)
        {
LABEL_32:
          if (v9)
          {
            sub_10003D4F0(v9);
          }

          if (v8)
          {
            sub_10003D4F0(v8);
          }

          return v20;
        }

LABEL_31:
        sub_10003D4F0(v3);
        goto LABEL_32;
      }

      if (dword_100090058)
      {
        v19 = ne_log_obj();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          sub_100059D7C((a1 + 56));
        }
      }

      v8 = 0;
    }

    else
    {
      if (dword_100090058)
      {
        v18 = ne_log_obj();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          sub_100059D7C((a1 + 48));
        }
      }

      v8 = 0;
      v9 = 0;
    }

    v20 = 0;
    if (!v3)
    {
      goto LABEL_32;
    }

    goto LABEL_31;
  }

  v2 = sub_10002A658(a1);
  if (v2)
  {
    v3 = v2;
    v4 = 0;
    goto LABEL_7;
  }

  if (dword_100090058)
  {
    v22 = ne_log_obj();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      sub_100059D48();
    }
  }

  return 0;
}

uint64_t sub_100014098(uint64_t a1, uint64_t a2)
{
  v35 = 0;
  v3 = (a1 + 16);
  if (*(a1 + 16) != 5219)
  {
    if (dword_100090058)
    {
      v17 = ne_log_obj();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        sub_100058738(v3);
      }
    }

    goto LABEL_84;
  }

  v4 = sub_100020D5C(a2);
  if (!v4)
  {
    if (dword_100090058)
    {
      v18 = ne_log_obj();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        sub_100058F30();
      }
    }

    goto LABEL_84;
  }

  v5 = v4;
  v6 = 0;
  for (i = v4[1]; ; i += 16)
  {
    v8 = *i;
    if (v8 <= 0xC)
    {
      break;
    }

    if (*i > 0x13u)
    {
      if (v8 != 20 && v8 != 130)
      {
        goto LABEL_65;
      }

LABEL_16:
      if (*(a1 + 96))
      {
        v9 = *(a1 + 88);
        if (v9)
        {
          if (*(v9 + 14) == v8)
          {
            v35 = 0;
            if ((sub_100023F0C(&v35, *(i + 1)) & 0x80000000) != 0)
            {
              if (dword_100090058)
              {
                v31 = ne_log_obj();
                if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
                {
                  sub_1000595EC();
                }
              }

              goto LABEL_83;
            }

            if (!v6)
            {
              *(a1 + 96) |= 6u;
            }

            v10 = sub_10003D80C(a1, v35, v6);
            if (dword_100090058)
            {
              v11 = v10;
              v12 = ne_log_obj();
              if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 67109378;
                v13 = "verified";
                if (!v11)
                {
                  v13 = "doesn't match";
                }

                *v37 = v6;
                *&v37[4] = 2080;
                *&v37[6] = v13;
                _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "NAT-D payload #%d %s\n", buf, 0x12u);
              }
            }

            ++v6;
            sub_10003D4F0(v35);
          }
        }
      }

      continue;
    }

    if (v8 != 13)
    {
      if (v8 != 15)
      {
        goto LABEL_65;
      }

      goto LABEL_16;
    }

    v14 = sub_10003D224(*(i + 1));
    if (v14 == 19)
    {
      if (*(*(a1 + 64) + 208))
      {
        *(a1 + 368) = 1;
      }
    }

    else
    {
      if (v14 == 17)
      {
        v15 = *(a1 + 408);
        v16 = *v15 | 2;
      }

      else
      {
        if (v14 != 16)
        {
          continue;
        }

        v15 = *(a1 + 408);
        v16 = *v15 | 1;
      }

      *v15 = v16;
    }

LABEL_41:
    ;
  }

  if (*i > 6u)
  {
    if (v8 == 7)
    {
      if ((sub_10002A534(a1, *(i + 1)) & 0x80000000) != 0)
      {
        if (dword_100090058)
        {
          v29 = ne_log_obj();
          if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
          {
            sub_100058C18();
          }
        }

        goto LABEL_83;
      }
    }

    else
    {
      if (v8 != 10)
      {
        goto LABEL_65;
      }

      if ((sub_100023F0C((a1 + 184), *(i + 1)) & 0x80000000) != 0)
      {
        if (dword_100090058)
        {
          v28 = ne_log_obj();
          if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
          {
            sub_100058C80();
          }
        }

        goto LABEL_83;
      }
    }

    goto LABEL_41;
  }

  if (v8 == 4)
  {
    if ((sub_100023F0C((a1 + 160), *(i + 1)) & 0x80000000) != 0)
    {
      if (dword_100090058)
      {
        v27 = ne_log_obj();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          sub_100058CB4();
        }
      }

      goto LABEL_83;
    }

    goto LABEL_41;
  }

  if (*i)
  {
LABEL_65:
    if (dword_100090058)
    {
      v26 = ne_log_obj();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        sub_100059CA4(i);
      }
    }

    goto LABEL_83;
  }

  v19 = *(a1 + 96);
  if (v19)
  {
    if (dword_100090058)
    {
      v20 = ne_log_obj();
      v21 = os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT);
      v19 = *(a1 + 96);
      if (v21)
      {
        v22 = "detected:";
        v23 = "ME ";
        if ((v19 & 6) == 0)
        {
          v22 = "not detected";
        }

        if ((v19 & 2) == 0)
        {
          v23 = &unk_100080609;
        }

        *buf = 136315650;
        *v37 = v22;
        *&v37[8] = 2080;
        *&v37[10] = v23;
        if ((v19 & 4) != 0)
        {
          v24 = "PEER";
        }

        else
        {
          v24 = &unk_100080609;
        }

        v38 = 2080;
        v39 = v24;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "NAT %s %s%s\n", buf, 0x20u);
        v19 = *(a1 + 96);
      }
    }

    if ((v19 & 6) != 0)
    {
      sub_10003DD8C(a1);
    }
  }

  if (*(a1 + 160) && *(a1 + 184))
  {
    sub_10002A74C(a1);
    sub_100000A50(v3, 5188);
    sub_10003D4F0(v5);
    return 0;
  }

  if (dword_100090058)
  {
    v30 = ne_log_obj();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      sub_100058E54();
    }
  }

LABEL_83:
  sub_10003D4F0(v5);
LABEL_84:
  v32 = *(a1 + 160);
  if (v32)
  {
    sub_10003D4F0(v32);
    *(a1 + 160) = 0;
  }

  v33 = *(a1 + 184);
  if (v33)
  {
    sub_10003D4F0(v33);
    *(a1 + 184) = 0;
  }

  v34 = *(a1 + 320);
  if (v34)
  {
    sub_10003D4F0(v34);
    *(a1 + 320) = 0;
  }

  sub_1000298D0(*(a1 + 304));
  *(a1 + 304) = 0;
  return 0xFFFFFFFFLL;
}

uint64_t sub_1000145B8(uint64_t a1, uint64_t a2)
{
  v2 = (a1 + 16);
  if (*(a1 + 16) == 5188)
  {
    if ((sub_100027224(*(*(a1 + 72) + 64), *(a1 + 160), (a1 + 168), (a1 + 136)) & 0x80000000) != 0)
    {
      if (dword_100090058)
      {
        v11 = ne_log_obj();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          sub_1000594E8();
        }
      }
    }

    else if ((sub_10002AA38(a1) & 0x80000000) != 0)
    {
      if (dword_100090058)
      {
        v12 = ne_log_obj();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          sub_1000594B4();
        }
      }
    }

    else if ((sub_10002ADF8(a1) & 0x80000000) != 0)
    {
      if (dword_100090058)
      {
        v13 = ne_log_obj();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          sub_100059480();
        }
      }
    }

    else if ((sub_10002B0A4(a1) & 0x80000000) != 0)
    {
      if (dword_100090058)
      {
        v14 = ne_log_obj();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          sub_10005944C();
        }
      }
    }

    else if ((sub_10002B4BC(a1) & 0x80000000) != 0)
    {
      if (dword_100090058)
      {
        v15 = ne_log_obj();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          sub_100059418();
        }
      }
    }

    else if ((sub_10000D870(a1) & 0x80000000) != 0)
    {
      if (dword_100090058)
      {
        v16 = ne_log_obj();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          sub_100059584();
        }
      }
    }

    else
    {
      v5 = sub_1000280D4(a1, 1);
      *(a1 + 256) = v5;
      if (v5)
      {
        *(a1 + 82) |= 1u;
        v6 = sub_100014924(a1);
        *(a1 + 128) = v6;
        if (v6)
        {
          *(a1 + 124) = *(*(a1 + 64) + 200);
          if (sub_100021E5C(a1) == -1)
          {
            if (dword_100090058)
            {
              v20 = ne_log_obj();
              if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
              {
                sub_10005911C();
              }
            }
          }

          else
          {
            v7 = *(a1 + 128);
            if (*(a1 + 100) && *v7 >= 0x501uLL)
            {
              v8 = 0;
              LODWORD(v9) = *(a1 + 96);
            }

            else
            {
              v9 = *(a1 + 96);
              v8 = (v9 >> 3) & 4;
            }

            if (sub_1000072B8(*(a1 + 48), *(a1 + 56), v7, a2, v8, (v9 >> 5) & 1) != -1)
            {
              memcpy(*(*(*(a1 + 328) + 8) + 8), *(**(a1 + 328) + 8), ***(a1 + 328));
              sub_100000A50(v2, 5221);
              return 0;
            }

            if (dword_100090058)
            {
              v21 = ne_log_obj();
              if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
              {
                sub_1000590E8();
              }
            }
          }
        }

        else if (dword_100090058)
        {
          v18 = ne_log_obj();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            sub_100059DFC();
          }
        }
      }

      else if (dword_100090058)
      {
        v17 = ne_log_obj();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          sub_100059E30();
        }
      }
    }
  }

  else if (dword_100090058)
  {
    v10 = ne_log_obj();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_100058738(v2);
    }
  }

  return 0xFFFFFFFFLL;
}

void *sub_100014924(uint64_t a1)
{
  v2 = a1 + 72;
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
    goto LABEL_22;
  }

  if (v3 > 65004)
  {
    if ((v3 - 65007) < 4)
    {
      goto LABEL_12;
    }

    if ((v3 - 65005) < 2)
    {
      goto LABEL_42;
    }

    v7 = 65500;
LABEL_21:
    if (v3 != v7)
    {
LABEL_52:
      if (dword_100090058)
      {
        v23 = ne_log_obj();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          sub_100059F08(v2);
        }
      }

      return 0;
    }

    goto LABEL_22;
  }

  if (v3 > 64220)
  {
    if (v3 == 64221)
    {
      goto LABEL_22;
    }

    if (v3 == 64222)
    {
      goto LABEL_42;
    }

    v7 = 65002;
    goto LABEL_21;
  }

  if ((v3 - 4) < 2)
  {
LABEL_12:
    if (dword_100090058)
    {
      v5 = ne_log_obj();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        sub_100059E64(v2);
      }
    }

    return 0;
  }

  if (v3 == 1)
  {
LABEL_22:
    v8 = sub_1000241D4(0, *(a1 + 312), 5);
    v9 = sub_1000241D4(v8, *(a1 + 256), 8);
    v10 = v9;
    v11 = 0;
LABEL_23:
    v28 = v9;
    goto LABEL_24;
  }

  if (v3 != 3)
  {
    goto LABEL_52;
  }

LABEL_42:
  if ((sub_1000292D0(a1) & 0x80000000) != 0)
  {
    if (dword_100090058)
    {
      v22 = ne_log_obj();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        sub_100058FD8();
      }
    }

    return 0;
  }

  if ((sub_1000295E8(a1) & 0x80000000) != 0)
  {
    if (dword_100090058)
    {
      v24 = ne_log_obj();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        sub_100058FA4();
      }
    }

    return 0;
  }

  if (!*(a1 + 20) && *(*(a1 + 64) + 120) && sub_10002A868(*(*v2 + 48)))
  {
    v25 = sub_10002A658(a1);
    if (!v25)
    {
      if (dword_100090058)
      {
        v27 = ne_log_obj();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          sub_100059ED4();
        }
      }

      return 0;
    }

    v11 = v25;
    v17 = 0;
  }

  else
  {
    v11 = 0;
    v17 = 1;
  }

  if (*(a1 + 280))
  {
    v18 = *(*(a1 + 64) + 116);
    v19 = sub_1000241D4(0, *(a1 + 312), 5);
    if (!v18)
    {
      goto LABEL_64;
    }

    v20 = *(*(a1 + 280) + 24);
    v21 = 6;
  }

  else
  {
    v20 = *(a1 + 312);
    v19 = 0;
    v21 = 5;
  }

  v19 = sub_1000241D4(v19, v20, v21);
LABEL_64:
  v26 = sub_1000241D4(v19, *(a1 + 264), 9);
  v10 = v26;
  v28 = v26;
  if ((v17 & 1) == 0)
  {
    v9 = sub_1000241D4(v26, v11, 7);
    v10 = v9;
    goto LABEL_23;
  }

LABEL_24:
  if (*(a1 + 20))
  {
    v12 = 0;
  }

  else
  {
    v12 = sub_100024F0C(a1, v10);
  }

  v6 = sub_100024230(&v28, a1);
  v13 = sub_10002C090(a1, v6, *(*(a1 + 328) + 8), **(a1 + 328));
  if (v13)
  {
    sub_10003D4F0(v6);
    v6 = v13;
    if (!v11)
    {
      goto LABEL_34;
    }

    goto LABEL_33;
  }

  if (dword_100090058)
  {
    v14 = ne_log_obj();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_100059F78();
      if (!v11)
      {
        goto LABEL_34;
      }

      goto LABEL_33;
    }
  }

  if (v11)
  {
LABEL_33:
    sub_10003D4F0(v11);
  }

LABEL_34:
  if (v13)
  {
    v15 = 1;
  }

  else
  {
    v15 = v6 == 0;
  }

  if (!v15)
  {
    sub_10003D4F0(v6);
    v6 = 0;
  }

  if (v12)
  {
    sub_10003D4F0(v12);
  }

  return v6;
}

uint64_t sub_100014CC0(uint64_t a1, void *a2)
{
  v3 = (a1 + 16);
  if (*(a1 + 16) != 5221)
  {
    if (dword_100090058)
    {
      v5 = ne_log_obj();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        sub_100058738(v3);
      }
    }

    goto LABEL_9;
  }

  if ((*(a2[1] + 19) & 1) == 0)
  {
    if (dword_100090058)
    {
      v4 = ne_log_obj();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        sub_100059FE0();
      }
    }

LABEL_9:
    v6 = 0xFFFFFFFFLL;
LABEL_10:
    v7 = *(a1 + 320);
    if (v7)
    {
      sub_10003D4F0(v7);
      *(a1 + 320) = 0;
    }

    sub_1000298D0(*(a1 + 288));
    *(a1 + 288) = 0;
    sub_1000298D0(*(a1 + 296));
    *(a1 + 296) = 0;
    v8 = *(a1 + 272);
    if (v8)
    {
      sub_10003D4F0(v8);
      *(a1 + 272) = 0;
    }

    return v6;
  }

  v10 = sub_10002BCBC(a1, a2, **(a1 + 328), *(*(a1 + 328) + 8));
  if (!v10)
  {
    if (dword_100090058)
    {
      v17 = ne_log_obj();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        sub_100059FAC();
      }
    }

    goto LABEL_9;
  }

  v11 = v10;
  v12 = sub_100020D5C(v10);
  if (!v12)
  {
    if (dword_100090058)
    {
      v18 = ne_log_obj();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        sub_100058F30();
      }
    }

    sub_10003D4F0(v11);
    goto LABEL_9;
  }

  v13 = v12;
  v14 = 0;
  *(a1 + 352) = 0;
  for (i = v12[1]; ; i += 16)
  {
    v16 = *i;
    if (v16 > 8)
    {
      switch(v16)
      {
        case 9u:
          if ((sub_100023F0C((a1 + 272), *(i + 1)) & 0x80000000) != 0)
          {
            if (dword_100090058)
            {
              v21 = ne_log_obj();
              if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
              {
                sub_100059620();
              }
            }

            goto LABEL_64;
          }

          break;
        case 0xBu:
          sub_1000195C8(*(i + 1), a1);
          break;
        case 0xDu:
          if (sub_10003D224(*(i + 1)) == 19 && *(*(a1 + 64) + 208))
          {
            *(a1 + 368) = 1;
          }

          break;
        default:
          goto LABEL_52;
      }

      continue;
    }

    if (*i <= 5u)
    {
      break;
    }

    if (v16 == 6)
    {
      if ((sub_10002A284(a1, *(i + 1)) & 0x80000000) != 0)
      {
        if (dword_100090058)
        {
          v22 = ne_log_obj();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            sub_100059654();
          }
        }

        goto LABEL_64;
      }

      v14 = 1;
    }

    else
    {
      if (v16 != 8)
      {
        goto LABEL_52;
      }

      *(a1 + 352) = *(i + 1);
    }

LABEL_37:
    ;
  }

  if (v16 == 5)
  {
    if ((sub_100023F0C((a1 + 320), *(i + 1)) & 0x80000000) != 0)
    {
      if (dword_100090058)
      {
        v23 = ne_log_obj();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          sub_100058C4C();
        }
      }

      goto LABEL_64;
    }

    goto LABEL_37;
  }

  if (*i)
  {
LABEL_52:
    if (dword_100090058)
    {
      v20 = ne_log_obj();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        sub_100059CA4(i);
      }
    }

    goto LABEL_64;
  }

  if (v14)
  {
    sub_100029850(a1);
  }

  if (sub_10000D28C(a1))
  {
    if (dword_100090058)
    {
      v19 = ne_log_obj();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        sub_100058CE8();
      }
    }

    goto LABEL_64;
  }

  v25 = sub_100028894(a1);
  v6 = v25;
  if (v25 == -1)
  {
    v24 = 0;
    goto LABEL_65;
  }

  if (v25)
  {
    sub_100018B60(a1, v25, 0);
LABEL_64:
    v24 = 0;
    v6 = 0xFFFFFFFFLL;
    goto LABEL_65;
  }

  if (dword_10008C2C8 >= 7)
  {
    sub_1000314C0(7, *(*(a1 + 320) + 8), **(a1 + 320), "peer's ID:", v26, v27, v28, v29, v30);
  }

  memcpy(*(**(a1 + 328) + 8), *(*(*(a1 + 328) + 8) + 8), **(*(a1 + 328) + 8));
  sub_100000A50(v3, 5190);
  v6 = 0;
  v24 = 1;
LABEL_65:
  sub_10003D4F0(v13);
  sub_10003D4F0(v11);
  if ((v24 & 1) == 0)
  {
    goto LABEL_10;
  }

  return v6;
}

uint64_t sub_1000150DC(uint64_t a1)
{
  v1 = (a1 + 16);
  if (*(a1 + 16) == 5190)
  {
    memcpy(*(**(a1 + 328) + 8), *(*(*(a1 + 328) + 8) + 8), ***(a1 + 328));
    sub_100000A50(v1, 9216);
    return 0;
  }

  else
  {
    if (dword_100090058)
    {
      v3 = ne_log_obj();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        sub_100058738(v1);
      }
    }

    return 0xFFFFFFFFLL;
  }
}

uint64_t sub_10001516C(uint64_t a1, uint64_t a2)
{
  v3 = (a1 + 16);
  if (*(a1 + 16) != 5440)
  {
    if (dword_100090058)
    {
      v13 = ne_log_obj();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        sub_100058738(v3);
      }
    }

    goto LABEL_53;
  }

  v4 = sub_100020D5C(a2);
  if (!v4)
  {
    if (dword_100090058)
    {
      v14 = ne_log_obj();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        sub_100058F30();
      }
    }

    goto LABEL_53;
  }

  v5 = v4;
  v6 = v4[1];
  if (*v6 != 1)
  {
    if (dword_100090058)
    {
      v15 = ne_log_obj();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        sub_100058A78(v6);
      }
    }

    goto LABEL_52;
  }

  if ((sub_100023F0C((a1 + 336), *(v6 + 1)) & 0x80000000) != 0)
  {
    if (dword_100090058)
    {
      v19 = ne_log_obj();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        sub_100058EFC();
      }
    }

    goto LABEL_52;
  }

  for (i = v6 + 16; *i == 13; i += 16)
  {
    v8 = sub_10003D224(*(i + 1));
    v9 = v8;
    if (*(*(a1 + 64) + 176) && sub_10003D610(v8))
    {
      sub_10003DE68(a1, v9);
    }

    if (v9 > 17)
    {
      if (v9 == 18)
      {
        if ((sub_100012B78(*(i + 1)) & 0x80000000) != 0)
        {
          if (dword_100090058)
          {
            v12 = ne_log_obj();
            if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
            {
              sub_100059C64(&v23, v24, v12);
            }
          }

          *(a1 + 100) = 1;
        }
      }

      else if (v9 == 19)
      {
        if (*(*(a1 + 64) + 208))
        {
          *(a1 + 368) = 1;
        }
      }
    }

    else
    {
      if (v9 == 16)
      {
        v10 = *(a1 + 408);
        v11 = *v10 | 1;
      }

      else
      {
        if (v9 != 17)
        {
          continue;
        }

        v10 = *(a1 + 408);
        v11 = *v10 | 2;
      }

      *v10 = v11;
    }
  }

  if (*i)
  {
    if (dword_100090058)
    {
      v20 = ne_log_obj();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        sub_100059CA4(i);
      }
    }
  }

  else
  {
    if (*(a1 + 96))
    {
      if (dword_100090058)
      {
        v16 = ne_log_obj();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          v17 = sub_10003CF98(**(a1 + 88));
          *buf = 136315138;
          v26 = v17;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Selected NAT-T version: %s\n", buf, 0xCu);
        }
      }

      sub_10004C9DC(a1);
    }

    if ((sub_100008354(*(a1 + 336), a1) & 0x80000000) == 0)
    {
      sub_100000A50(v3, 5441);
      sub_10003D4F0(v5);
      return 0;
    }

    if (dword_100090058)
    {
      v21 = ne_log_obj();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        sub_100058E20();
      }
    }
  }

LABEL_52:
  sub_10003D4F0(v5);
LABEL_53:
  v22 = *(a1 + 336);
  if (v22)
  {
    sub_10003D4F0(v22);
    *(a1 + 336) = 0;
  }

  return 0xFFFFFFFFLL;
}

uint64_t sub_1000154E8(uint64_t a1, uint64_t a2)
{
  v2 = (a1 + 16);
  if (*(a1 + 16) != 5441)
  {
    if (dword_100090058)
    {
      v9 = ne_log_obj();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_100058738(v2);
      }
    }

    return 0xFFFFFFFFLL;
  }

  sub_100023CF0((a1 + 8), *(a1 + 48), *(a1 + 56));
  v5 = sub_1000241D4(0, *(a1 + 344), 1);
  v29 = v5;
  v6 = **(a1 + 408);
  if (v6)
  {
    if (dword_100090058)
    {
      v11 = ne_log_obj();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *v28 = 0;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Adding xauth VID payload.\n", v28, 2u);
      }
    }

    v12 = sub_10003D184(16);
    if (v12)
    {
      v7 = v12;
      v5 = sub_1000241D4(v5, v12, 13);
      v29 = v5;
      if ((**(a1 + 408) & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }

    if (dword_100090058)
    {
      v24 = ne_log_obj();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        sub_10005A014();
      }
    }

    return 0xFFFFFFFFLL;
  }

  v7 = 0;
  if ((v6 & 2) == 0)
  {
LABEL_4:
    v8 = 0;
    goto LABEL_16;
  }

LABEL_14:
  v13 = sub_10003D184(17);
  if (!v13)
  {
    if (dword_100090058)
    {
      v27 = ne_log_obj();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        sub_10005A048();
      }
    }

    v8 = 0;
    v15 = 0;
    v18 = 0;
    v10 = 0xFFFFFFFFLL;
    if (!v7)
    {
      goto LABEL_53;
    }

    goto LABEL_52;
  }

  v8 = v13;
  v5 = sub_1000241D4(v5, v13, 13);
  v29 = v5;
LABEL_16:
  if (*(a1 + 96))
  {
    v14 = sub_10003D184(**(a1 + 88));
    if (v14)
    {
      v5 = sub_1000241D4(v5, v14, 13);
      v29 = v5;
    }
  }

  else
  {
    v14 = 0;
  }

  if (*(*(a1 + 64) + 208))
  {
    v15 = sub_10003D184(19);
    if (v15)
    {
      v5 = sub_1000241D4(v5, v15, 13);
      v29 = v5;
    }
  }

  else
  {
    v15 = 0;
  }

  if (*(a1 + 100))
  {
    v16 = sub_10003D184(18);
    if (v16)
    {
      v17 = sub_1000130BC(v16, 0x80000000);
      if (v17)
      {
        v18 = v17;
        v29 = sub_1000241D4(v5, v17, 13);
        goto LABEL_32;
      }
    }

    if (dword_100090058)
    {
      v19 = ne_log_obj();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        sub_100059BFC();
      }
    }
  }

  v18 = 0;
LABEL_32:
  *(a1 + 128) = sub_100024230(&v29, a1);
  *(a1 + 124) = *(*(a1 + 64) + 200);
  if (sub_100021E5C(a1) == -1)
  {
    if (dword_100090058)
    {
      v23 = ne_log_obj();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        sub_10005911C();
      }
    }

LABEL_49:
    v10 = 0xFFFFFFFFLL;
    if (!v14)
    {
      goto LABEL_51;
    }

    goto LABEL_50;
  }

  v20 = *(a1 + 128);
  if (*(a1 + 100) && *v20 >= 0x501uLL)
  {
    v21 = 0;
    LODWORD(v22) = *(a1 + 96);
  }

  else
  {
    v22 = *(a1 + 96);
    v21 = (v22 >> 3) & 4;
  }

  if (sub_1000072B8(*(a1 + 48), *(a1 + 56), v20, a2, v21, (v22 >> 5) & 1) == -1)
  {
    if (dword_100090058)
    {
      v25 = ne_log_obj();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        sub_1000590E8();
      }
    }

    goto LABEL_49;
  }

  sub_100000A50(v2, 5474);
  sub_100046F84(1, 0, a1, 0);
  v10 = 0;
  if (v14)
  {
LABEL_50:
    sub_10003D4F0(v14);
  }

LABEL_51:
  if (v7)
  {
LABEL_52:
    sub_10003D4F0(v7);
  }

LABEL_53:
  if (v8)
  {
    sub_10003D4F0(v8);
  }

  if (v15)
  {
    sub_10003D4F0(v15);
  }

  if (v18)
  {
    sub_10003D4F0(v18);
  }

  return v10;
}

uint64_t sub_100015908(uint64_t a1, uint64_t a2)
{
  v3 = (a1 + 16);
  if (*(a1 + 16) != 5474)
  {
    if (dword_100090058)
    {
      v15 = ne_log_obj();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        sub_100058738(v3);
      }
    }

    goto LABEL_73;
  }

  v4 = sub_100020D5C(a2);
  if (!v4)
  {
    if (dword_100090058)
    {
      v16 = ne_log_obj();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        sub_100058F30();
      }
    }

    goto LABEL_73;
  }

  v5 = v4;
  v6 = 0;
  for (i = v4[1]; ; i += 16)
  {
    v8 = *i;
    if (v8 <= 0xC)
    {
      break;
    }

    if (*i > 0x13u)
    {
      if (v8 != 20 && v8 != 130)
      {
        goto LABEL_57;
      }
    }

    else
    {
      if (v8 == 13)
      {
        sub_10003D224(*(i + 1));
        continue;
      }

      if (v8 != 15)
      {
        goto LABEL_57;
      }
    }

    if (*(a1 + 96))
    {
      v9 = *(a1 + 88);
      if (v9)
      {
        if (*(v9 + 14) == v8)
        {
          v31 = 0;
          if ((sub_100023F0C(&v31, *(i + 1)) & 0x80000000) != 0)
          {
            if (dword_100090058)
            {
              v27 = ne_log_obj();
              if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
              {
                sub_1000595EC();
              }
            }

            goto LABEL_72;
          }

          if (!v6)
          {
            *(a1 + 96) |= 6u;
          }

          v10 = sub_10003D80C(a1, v31, v6);
          if (dword_100090058)
          {
            v11 = v10;
            v12 = ne_log_obj();
            if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 67109378;
              v13 = "verified";
              if (!v11)
              {
                v13 = "doesn't match";
              }

              *v33 = v6;
              *&v33[4] = 2080;
              *&v33[6] = v13;
              _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "NAT-D payload #%d %s\n", buf, 0x12u);
            }
          }

          ++v6;
          sub_10003D4F0(v31);
        }
      }
    }

LABEL_35:
    ;
  }

  if (*i > 6u)
  {
    if (v8 == 7)
    {
      if (dword_100090058)
      {
        v14 = ne_log_obj();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "CR received, ignore it. It should be in other exchange.\n", buf, 2u);
        }
      }
    }

    else
    {
      if (v8 != 10)
      {
        goto LABEL_57;
      }

      if ((sub_100023F0C((a1 + 184), *(i + 1)) & 0x80000000) != 0)
      {
        if (dword_100090058)
        {
          v25 = ne_log_obj();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
          {
            sub_100058C80();
          }
        }

        goto LABEL_72;
      }
    }

    goto LABEL_35;
  }

  if (v8 == 4)
  {
    if ((sub_100023F0C((a1 + 160), *(i + 1)) & 0x80000000) != 0)
    {
      if (dword_100090058)
      {
        v24 = ne_log_obj();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          sub_100058CB4();
        }
      }

      goto LABEL_72;
    }

    goto LABEL_35;
  }

  if (*i)
  {
LABEL_57:
    if (dword_100090058)
    {
      v23 = ne_log_obj();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        sub_100059CA4(i);
      }
    }

    goto LABEL_72;
  }

  if (*(a1 + 96))
  {
    if (dword_100090058)
    {
      v17 = ne_log_obj();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v18 = "detected:";
        v19 = *(a1 + 96);
        v20 = "ME ";
        if ((v19 & 6) == 0)
        {
          v18 = "not detected";
        }

        if ((v19 & 2) == 0)
        {
          v20 = &unk_100080609;
        }

        *buf = 136315650;
        *v33 = v18;
        *&v33[8] = 2080;
        *&v33[10] = v20;
        if ((v19 & 4) != 0)
        {
          v21 = "PEER";
        }

        else
        {
          v21 = &unk_100080609;
        }

        v34 = 2080;
        v35 = v21;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "NAT %s %s%s\n", buf, 0x20u);
      }
    }
  }

  if (*(a1 + 160) && *(a1 + 184))
  {
    sub_100000A50(v3, 5443);
    sub_10003D4F0(v5);
    return 0;
  }

  if (dword_100090058)
  {
    v26 = ne_log_obj();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      sub_100058E54();
    }
  }

LABEL_72:
  sub_10003D4F0(v5);
LABEL_73:
  v28 = *(a1 + 160);
  if (v28)
  {
    sub_10003D4F0(v28);
    *(a1 + 160) = 0;
  }

  v29 = *(a1 + 184);
  if (v29)
  {
    sub_10003D4F0(v29);
    *(a1 + 184) = 0;
  }

  v30 = *(a1 + 320);
  if (v30)
  {
    sub_10003D4F0(v30);
    *(a1 + 320) = 0;
  }

  return 0xFFFFFFFFLL;
}

uint64_t sub_100015DB8(uint64_t a1, uint64_t a2)
{
  v2 = (a1 + 16);
  if (*(a1 + 16) == 5443)
  {
    if ((sub_100027424(*(*(a1 + 72) + 64), (a1 + 152), (a1 + 136)) & 0x80000000) != 0)
    {
      if (dword_100090058)
      {
        v11 = ne_log_obj();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          sub_100059550();
        }
      }
    }

    else
    {
      v5 = sub_1000042AC(*(*(a1 + 64) + 140));
      *(a1 + 176) = v5;
      if (v5)
      {
        v6 = sub_100013E14(a1);
        *(a1 + 128) = v6;
        if (v6)
        {
          *(a1 + 124) = *(*(a1 + 64) + 200);
          if (sub_100021E5C(a1) == -1)
          {
            if (dword_100090058)
            {
              v15 = ne_log_obj();
              if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
              {
                sub_10005911C();
              }
            }
          }

          else
          {
            v7 = *(a1 + 128);
            if (*(a1 + 100) && *v7 >= 0x501uLL)
            {
              v8 = 0;
              LODWORD(v9) = *(a1 + 96);
            }

            else
            {
              v9 = *(a1 + 96);
              v8 = (v9 >> 3) & 4;
            }

            if (sub_1000072B8(*(a1 + 48), *(a1 + 56), v7, a2, v8, (v9 >> 5) & 1) == -1)
            {
              if (dword_100090058)
              {
                v16 = ne_log_obj();
                if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
                {
                  sub_1000590E8();
                }
              }
            }

            else if ((sub_100027224(*(*(a1 + 72) + 64), *(a1 + 160), (a1 + 168), (a1 + 136)) & 0x80000000) != 0)
            {
              if (dword_100090058)
              {
                v17 = ne_log_obj();
                if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
                {
                  sub_1000594E8();
                }
              }
            }

            else if ((sub_10002AA38(a1) & 0x80000000) != 0)
            {
              if (dword_100090058)
              {
                v18 = ne_log_obj();
                if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
                {
                  sub_1000594B4();
                }
              }
            }

            else if ((sub_10002ADF8(a1) & 0x80000000) != 0)
            {
              if (dword_100090058)
              {
                v19 = ne_log_obj();
                if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
                {
                  sub_100059480();
                }
              }
            }

            else if ((sub_10002B0A4(a1) & 0x80000000) != 0)
            {
              if (dword_100090058)
              {
                v20 = ne_log_obj();
                if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
                {
                  sub_10005944C();
                }
              }
            }

            else
            {
              if ((sub_10002B4BC(a1) & 0x80000000) == 0)
              {
                sub_100000A50(v2, 5476);
                return 0;
              }

              if (dword_100090058)
              {
                v21 = ne_log_obj();
                if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
                {
                  sub_100059418();
                }
              }
            }
          }
        }

        else if (dword_100090058)
        {
          v13 = ne_log_obj();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            sub_100059DFC();
          }
        }
      }

      else if (dword_100090058)
      {
        v12 = ne_log_obj();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          sub_10005951C();
        }
      }
    }
  }

  else if (dword_100090058)
  {
    v10 = ne_log_obj();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_100058738(v2);
    }
  }

  return 0xFFFFFFFFLL;
}

uint64_t sub_100016110(uint64_t a1, void *a2)
{
  v3 = (a1 + 16);
  if (*(a1 + 16) != 5476)
  {
    if (dword_100090058)
    {
      v5 = ne_log_obj();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        sub_100058738(v3);
      }
    }

    goto LABEL_9;
  }

  if ((*(a2[1] + 19) & 1) == 0)
  {
    if (dword_100090058)
    {
      v4 = ne_log_obj();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        sub_10005A0EC();
      }
    }

LABEL_9:
    v6 = 0xFFFFFFFFLL;
LABEL_10:
    v7 = *(a1 + 320);
    if (v7)
    {
      sub_10003D4F0(v7);
      *(a1 + 320) = 0;
    }

    sub_1000298D0(*(a1 + 288));
    *(a1 + 288) = 0;
    sub_1000298D0(*(a1 + 296));
    *(a1 + 296) = 0;
    v8 = *(a1 + 272);
    if (v8)
    {
      sub_10003D4F0(v8);
      *(a1 + 272) = 0;
    }

    sub_1000298D0(*(a1 + 304));
    *(a1 + 304) = 0;
    return v6;
  }

  v10 = sub_10002BCBC(a1, a2, **(a1 + 328), *(*(a1 + 328) + 8));
  if (!v10)
  {
    if (dword_100090058)
    {
      v17 = ne_log_obj();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        sub_100059FAC();
      }
    }

    goto LABEL_9;
  }

  v11 = v10;
  v12 = sub_100020D5C(v10);
  if (!v12)
  {
    if (dword_100090058)
    {
      v18 = ne_log_obj();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        sub_100058F30();
      }
    }

    sub_10003D4F0(v11);
    goto LABEL_9;
  }

  v13 = v12;
  v14 = 0;
  *(a1 + 352) = 0;
  for (i = v12[1]; ; i += 16)
  {
    v16 = *i;
    if (v16 <= 7)
    {
      break;
    }

    if (*i > 0xAu)
    {
      if (v16 == 11)
      {
        sub_1000195C8(*(i + 1), a1);
      }

      else
      {
        if (v16 != 13)
        {
          goto LABEL_60;
        }

        sub_10003D224(*(i + 1));
      }
    }

    else if (v16 == 8)
    {
      *(a1 + 352) = *(i + 1);
    }

    else
    {
      if (v16 != 9)
      {
        goto LABEL_60;
      }

      if ((sub_100023F0C((a1 + 272), *(i + 1)) & 0x80000000) != 0)
      {
        if (dword_100090058)
        {
          v23 = ne_log_obj();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
          {
            sub_100059620();
          }
        }

        goto LABEL_99;
      }
    }

LABEL_40:
    ;
  }

  if (*i > 5u)
  {
    if (v16 == 6)
    {
      if ((sub_10002A284(a1, *(i + 1)) & 0x80000000) != 0)
      {
        if (dword_100090058)
        {
          v25 = ne_log_obj();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
          {
            sub_100059654();
          }
        }

        goto LABEL_99;
      }

      v14 = 1;
    }

    else
    {
      if (v16 != 7)
      {
        goto LABEL_60;
      }

      if ((sub_10002A534(a1, *(i + 1)) & 0x80000000) != 0)
      {
        if (dword_100090058)
        {
          v24 = ne_log_obj();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
          {
            sub_100058C18();
          }
        }

        goto LABEL_99;
      }
    }

    goto LABEL_40;
  }

  if (v16 == 5)
  {
    if ((sub_100023F0C((a1 + 320), *(i + 1)) & 0x80000000) != 0)
    {
      if (dword_100090058)
      {
        v22 = ne_log_obj();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          sub_100058C4C();
        }
      }

      goto LABEL_99;
    }

    goto LABEL_40;
  }

  if (*i)
  {
LABEL_60:
    if (dword_100090058)
    {
      v21 = ne_log_obj();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        sub_100059CA4(i);
      }
    }

    goto LABEL_99;
  }

  if (v14)
  {
    sub_100029850(a1);
  }

  v19 = *(*(a1 + 72) + 48);
  if (*(*(a1 + 64) + 272))
  {
    v20 = v19 == 65001;
  }

  else
  {
    v20 = 0;
  }

  if (v20)
  {
LABEL_87:
    if (dword_100090058)
    {
      v26 = ne_log_obj();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        sub_10005A07C(a1 + 72);
      }
    }

    goto LABEL_99;
  }

  if (v19 > 65001)
  {
    if (v19 <= 65007)
    {
      if (v19 == 65002)
      {
        goto LABEL_90;
      }

      if (v19 != 65006)
      {
        goto LABEL_87;
      }

      goto LABEL_84;
    }

    if (v19 == 65008 || v19 == 65010)
    {
      goto LABEL_91;
    }

    goto LABEL_87;
  }

  if (v19 > 3)
  {
    if ((v19 - 4) < 2)
    {
      goto LABEL_91;
    }

    if (v19 != 64222)
    {
      goto LABEL_87;
    }

LABEL_90:
    if (*(a1 + 320))
    {
LABEL_91:
      if (*(a1 + 352))
      {
        goto LABEL_92;
      }
    }

LABEL_96:
    if (dword_100090058)
    {
      v28 = ne_log_obj();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        sub_100058E54();
      }
    }

    goto LABEL_99;
  }

  if (v19 == 1)
  {
    goto LABEL_90;
  }

  if (v19 != 3)
  {
    goto LABEL_87;
  }

LABEL_84:
  if (!*(a1 + 320) || !*(a1 + 272))
  {
    goto LABEL_96;
  }

LABEL_92:
  if (sub_10000D28C(a1))
  {
    if (dword_100090058)
    {
      v27 = ne_log_obj();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        sub_100058CE8();
      }
    }

    goto LABEL_99;
  }

  v6 = sub_100028894(a1);
  if (v6 == -1)
  {
    v29 = 0;
  }

  else
  {
    if (v6)
    {
      sub_100018B60(a1, v6, 0);
LABEL_99:
      v29 = 0;
      v6 = 0xFFFFFFFFLL;
      goto LABEL_100;
    }

    sub_10002A74C(a1);
    if (dword_10008C2C8 >= 7)
    {
      sub_1000314C0(7, *(*(a1 + 320) + 8), **(a1 + 320), "peer's ID\n", v30, v31, v32, v33, v34);
    }

    memcpy(*(**(a1 + 328) + 8), *(*(*(a1 + 328) + 8) + 8), **(*(a1 + 328) + 8));
    sub_100000A50(v3, 5445);
    v6 = 0;
    v29 = 1;
  }

LABEL_100:
  sub_10003D4F0(v13);
  sub_10003D4F0(v11);
  if ((v29 & 1) == 0)
  {
    goto LABEL_10;
  }

  return v6;
}