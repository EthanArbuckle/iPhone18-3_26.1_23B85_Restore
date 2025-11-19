void sub_10021D108(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  *exception = &off_1004432C8;
  exception[1] = a1;
}

void sub_10021D160(std::exception *a1)
{
  std::exception::~exception(a1);

  operator delete();
}

const char *sub_10021D198(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return *(a1 + 8);
  }

  else
  {
    return "unknown boost::container exception";
  }
}

void sub_10021D1B0(char **a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, int *a4@<X3>, void *a5@<X8>)
{
  v6 = a1[1];
  v7 = a1[2];
  if (0xCCCCCCCCCCCCCCCLL - v7 < &v6[a3 - v7])
  {
    goto LABEL_25;
  }

  v9 = v7 >> 61;
  v10 = 8 * v7;
  if (v9 > 4)
  {
    v11 = -1;
  }

  else
  {
    v11 = v10;
  }

  v12 = v10 / 5;
  if (v9)
  {
    v12 = v11;
  }

  v13 = &v6[a3];
  if (v12 >= 0xCCCCCCCCCCCCCCCLL)
  {
    v12 = 0xCCCCCCCCCCCCCCCLL;
  }

  v14 = v13 <= v12 ? v12 : v13;
  if (v13 > 0xCCCCCCCCCCCCCCCLL)
  {
LABEL_25:
    sub_10021D108("get_next_capacity, allocator's max size reached");
  }

  v18 = *a1;
  v19 = operator new(10 * v14);
  v20 = v19;
  v22 = *a1;
  v21 = a1[1];
  v23 = v19;
  if (*a1)
  {
    v23 = v19;
    if (v22 != a2)
    {
      memmove(v19, v22, a2 - v22);
      v23 = &v20[a2 - v22];
    }
  }

  if (a3)
  {
    v24 = a3;
    v25 = v23;
    do
    {
      v26 = *a4;
      *(v25 + 2) = *(a4 + 2);
      *v25 = v26;
      *(v25 + 6) = *(a4 + 6);
      a4 = (a4 + 10);
      v25 += 10;
      --v24;
    }

    while (v24);
  }

  if (a2)
  {
    v27 = &v22[10 * v21];
    if (v27 != a2)
    {
      memmove(&v23[10 * a3], a2, v27 - a2);
    }
  }

  if (v22)
  {
    operator delete(v22);
    v21 = a1[1];
  }

  *a1 = v20;
  a1[1] = &v21[a3];
  a1[2] = v14;
  *a5 = &v20[a2 - v18];
}

uint64_t sub_10021D364(uint64_t result, int *a2, uint64_t a3, uint64_t a4, char a5)
{
  v8 = result;
LABEL_2:
  v9 = a2 - 10;
  v10 = v8;
LABEL_3:
  v11 = 1 - a4;
  while (1)
  {
    v8 = v10;
    v12 = v11;
    v13 = a2 - v10;
    v14 = 0xCCCCCCCCCCCCCCCDLL * (v13 >> 3);
    if (v14 <= 2)
    {
      break;
    }

    switch(v14)
    {
      case 3uLL:

        return sub_10021DCB0(v8, v8 + 40, (a2 - 10), a3);
      case 4uLL:

        return sub_10021E36C(v8, v8 + 40, v8 + 80, (a2 - 10), a3);
      case 5uLL:

        return sub_10021E7B8(v8, v8 + 40, v8 + 80, v8 + 120, (a2 - 10), a3);
    }

LABEL_11:
    if (v13 <= 959)
    {
      if (a5)
      {

        return sub_10021ED2C(v8, a2, a3);
      }

      else
      {

        return sub_10021F10C(v8, a2, a3);
      }
    }

    if (v11 == 1)
    {
      if (v8 != a2)
      {
        v41 = (v14 - 2) >> 1;
        v42 = v41 + 1;
        v43 = v8 + 40 * v41;
        do
        {
          sub_10022065C(v8, a3, 0xCCCCCCCCCCCCCCCDLL * (v13 >> 3), v43);
          v43 -= 40;
          --v42;
        }

        while (v42);
        v44 = 0xCCCCCCCCCCCCCCCDLL * (v13 >> 3);
        do
        {
          result = sub_1002208F8(v8, a2, a3, v44);
          a2 -= 10;
        }

        while (v44-- > 2);
      }

      return result;
    }

    v15 = v14 >> 1;
    v16 = v8 + 40 * (v14 >> 1);
    if (v13 >= 0x1401)
    {
      sub_10021DCB0(v8, v16, (a2 - 10), a3);
      v17 = 40 * v15;
      v18 = 40 * v15 + v8 - 40;
      sub_10021DCB0(v8 + 40, v18, (a2 - 20), a3);
      sub_10021DCB0(v8 + 80, v8 + 40 + v17, (a2 - 30), a3);
      sub_10021DCB0(v18, v16, v8 + 40 + v17, a3);
      v19 = *v8;
      v20 = *v8 >> 31;
      v22 = (v8 + 8);
      v21 = *(v8 + 8);
      if (v20 == *v8)
      {
        v23 = *v16;
        if (v19 == *v16)
        {
          v24 = 0;
          *v22 = *(v16 + 8);
          v25 = 0;
          if (*v16)
          {
            goto LABEL_22;
          }

LABEL_32:
          if (v25 == v24)
          {
            *(v16 + 8) = v21;
            v30 = *(v8 + 32);
            *(v8 + 32) = *(v16 + 32);
            *(v16 + 32) = v30;
            if (a5)
            {
              goto LABEL_37;
            }
          }

          else
          {
            *(v16 + 8) = v21;
            *(v16 + 24) = v52;
            *(v16 + 16) = v51;
            v31 = *(v8 + 32);
            *(v8 + 32) = *(v16 + 32);
            *(v16 + 32) = v31;
            if (a5)
            {
              goto LABEL_37;
            }
          }

          goto LABEL_36;
        }

        v24 = 0;
      }

      else
      {
        v51 = *(v8 + 16);
        v52 = *(v8 + 24);
        v24 = v20 ^ v19;
        v23 = *v16;
        if (v19 == *v16)
        {
          v26 = *(v16 + 8);
          *(v8 + 24) = *(v16 + 24);
          *v22 = v26;
          v25 = v24 >> 31;
          if (*v16 != v24)
          {
            goto LABEL_22;
          }

          goto LABEL_32;
        }
      }

      v27 = (v23 >> 31) ^ v23;
      if (v23 >> 31 == v23)
      {
        *(v8 + 8) = *(v16 + 8);
        *v8 = v27;
        v25 = v24 >> 31;
        if (*v16 != v24)
        {
          goto LABEL_22;
        }
      }

      else
      {
        v29 = *(v16 + 8);
        *(v8 + 24) = *(v16 + 24);
        *v22 = v29;
        *v8 = v27;
        v25 = v24 >> 31;
        if (*v16 != v24)
        {
LABEL_22:
          *(v16 + 8) = v21;
          if (v25 != v24)
          {
            *(v16 + 24) = v52;
            *(v16 + 16) = v51;
          }

          *v16 = v25 ^ v24;
          v28 = *(v8 + 32);
          *(v8 + 32) = *(v16 + 32);
          *(v16 + 32) = v28;
          if (a5)
          {
            goto LABEL_37;
          }

          goto LABEL_36;
        }
      }

      goto LABEL_32;
    }

    sub_10021DCB0(v16, v8, (a2 - 10), a3);
    if (a5)
    {
      goto LABEL_37;
    }

LABEL_36:
    if ((sub_10021DA7C(a3, v8 - 40, v8) & 1) == 0)
    {
      result = sub_10021F4A8(v8, a2, a3);
      v10 = result;
      goto LABEL_42;
    }

LABEL_37:
    v32 = sub_10021FB88(v8, a2, a3);
    if ((v33 & 1) == 0)
    {
      goto LABEL_40;
    }

    v34 = sub_100220244(v8, v32, a3);
    v10 = v32 + 10;
    result = sub_100220244((v32 + 10), a2, a3);
    if (result)
    {
      a4 = -v12;
      a2 = v32;
      if (v34)
      {
        return result;
      }

      goto LABEL_2;
    }

    v11 = v12 + 1;
    if (!v34)
    {
LABEL_40:
      result = sub_10021D364(v8, v32, a3, -v12, a5 & 1);
      v10 = v32 + 10;
LABEL_42:
      a5 = 0;
      a4 = -v12;
      goto LABEL_3;
    }
  }

  if (v14 < 2)
  {
    return result;
  }

  if (v14 != 2)
  {
    goto LABEL_11;
  }

  result = sub_10021DA7C(a3, (a2 - 10), v8);
  if (result)
  {
    v35 = *v8;
    v36 = *v8 >> 31;
    v38 = (v8 + 8);
    v37 = *(v8 + 8);
    if (v36 == *v8)
    {
      v39 = *v9;
      if (v35 == *v9)
      {
        v40 = 0;
        *v38 = *(a2 - 4);
        goto LABEL_78;
      }

      v40 = 0;
LABEL_74:
      v47 = a2 - 8;
      if (v39 >> 31 == v39)
      {
        *(v8 + 8) = *v47;
      }

      else
      {
        v48 = *v47;
        *(v8 + 24) = *(a2 - 4);
        *v38 = v48;
      }

      *v8 = (v39 >> 31) ^ v39;
    }

    else
    {
      v51 = *(v8 + 16);
      v52 = *(v8 + 24);
      v40 = v36 ^ v35;
      v39 = *v9;
      if (v35 != *v9)
      {
        goto LABEL_74;
      }

      v46 = *(a2 - 2);
      *(v8 + 24) = *(a2 - 4);
      *v38 = v46;
    }

LABEL_78:
    v49 = v40 >> 31;
    if (*v9 == v40)
    {
      *(a2 - 4) = v37;
      if (v49 != v40)
      {
        *(a2 - 3) = v51;
        *(a2 - 4) = v52;
      }
    }

    else
    {
      *(a2 - 4) = v37;
      if (v49 != v40)
      {
        *(a2 - 3) = v51;
        *(a2 - 4) = v52;
      }

      *(a2 - 10) = v49 ^ v40;
    }

    v50 = *(v8 + 32);
    *(v8 + 32) = *(a2 - 2);
    *(a2 - 2) = v50;
  }

  return result;
}

uint64_t sub_10021DA7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = (a3 + 8);
  v4 = *a3;
  v5 = *a3 >> 31;
  if (v4 >> 31 == v4)
  {
    *&v22 = *v3;
    v6 = *a3;
  }

  else
  {
    v22 = *v3;
    v23 = *(a3 + 24);
    v6 = v4 >> 31;
  }

  v7 = v6 ^ v4;
  v8 = (a2 + 8);
  v9 = *a2 >> 31;
  v10 = (v6 ^ v4) >> 31;
  if (v9 == *a2)
  {
    if (v10 == v7 && *v8 >= v22)
    {
      *&v20 = *v8;
      v11 = 0;
      v12 = 0;
      if (v5 != v4)
      {
LABEL_8:
        if (v12 == v11)
        {
          return *(a2 + 32) < *(a3 + 32);
        }

        v13 = bswap64(*v3);
        v14 = bswap64(v20);
        if (v13 == v14 && (v13 = bswap64(*(a3 + 16)), v14 = bswap64(*(&v20 + 1)), v13 == v14) && (v13 = bswap32(*(a3 + 24)), v14 = bswap32(v21), v13 == v14))
        {
          v15 = 0;
        }

        else
        {
          v15 = v13 < v14 ? -1 : 1;
        }

        if ((v15 & 0x80000000) == 0)
        {
          return *(a2 + 32) < *(a3 + 32);
        }

        return 0;
      }

LABEL_25:
      if (v12 == v11 && *v3 >= v20)
      {
        return *(a2 + 32) < *(a3 + 32);
      }

      return 0;
    }
  }

  else if (v10 == v7 || (v16 = bswap64(*v8), v17 = bswap64(v22), v16 == v17) && (v16 = bswap64(*(a2 + 16)), v17 = bswap64(*(&v22 + 1)), v16 == v17) && (v16 = bswap32(*(a2 + 24)), v17 = bswap32(v23), v16 == v17) || (v16 < v17 ? (v19 = -1) : (v19 = 1), (v19 & 0x80000000) == 0))
  {
    v20 = *v8;
    v21 = *(a2 + 24);
    v11 = v9 ^ *a2;
    v12 = v11 >> 31;
    if (v5 != v4)
    {
      goto LABEL_8;
    }

    goto LABEL_25;
  }

  return 1;
}

uint64_t sub_10021DCB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_10021DA7C(a4, a2, a1);
  result = sub_10021DA7C(a4, a3, a2);
  if ((v8 & 1) == 0)
  {
    if (!result)
    {
      return result;
    }

    v16 = *a2;
    v17 = *a2 >> 31;
    v19 = (a2 + 8);
    v18 = *(a2 + 8);
    if (v17 == *a2)
    {
      v20 = *a3;
      if (v16 == *a3)
      {
        v21 = 0;
        *v19 = *(a3 + 8);
        v22 = 0;
        if (!*a3)
        {
          goto LABEL_51;
        }

        goto LABEL_22;
      }

      v21 = 0;
    }

    else
    {
      v61 = *(a2 + 16);
      v62 = *(a2 + 24);
      v21 = v17 ^ v16;
      v20 = *a3;
      if (v16 == *a3)
      {
        v30 = *(a3 + 8);
        *(a2 + 24) = *(a3 + 24);
        *v19 = v30;
        v22 = v21 >> 31;
        if (*a3 == v21)
        {
          goto LABEL_51;
        }

        goto LABEL_22;
      }
    }

    v33 = (v20 >> 31) ^ v20;
    if (v20 >> 31 == v20)
    {
      *(a2 + 8) = *(a3 + 8);
      *a2 = v33;
      v22 = v21 >> 31;
      if (*a3 == v21)
      {
LABEL_51:
        *(a3 + 8) = v18;
        if (v22 != v21)
        {
          *(a3 + 16) = v61;
          *(a3 + 24) = v62;
        }

        goto LABEL_57;
      }
    }

    else
    {
      v37 = *(a3 + 8);
      *(a2 + 24) = *(a3 + 24);
      *v19 = v37;
      *a2 = v33;
      v22 = v21 >> 31;
      if (*a3 == v21)
      {
        goto LABEL_51;
      }
    }

LABEL_22:
    *(a3 + 8) = v18;
    if (v22 != v21)
    {
      *(a3 + 16) = v61;
      *(a3 + 24) = v62;
    }

    *a3 = v22 ^ v21;
LABEL_57:
    v40 = (a2 + 32);
    v39 = *(a2 + 32);
    *(a2 + 32) = *(a3 + 32);
    *(a3 + 32) = v39;
    if (!sub_10021DA7C(a4, a2, a1))
    {
      return 1;
    }

    v41 = *a1;
    v42 = *a1 >> 31;
    v44 = (a1 + 8);
    v43 = *(a1 + 8);
    if (v42 == *a1)
    {
      v45 = *a2;
      if (v41 == *a2)
      {
        v46 = 0;
        *v44 = *v19;
        v47 = 0;
        if (!*a2)
        {
          goto LABEL_88;
        }

        goto LABEL_70;
      }

      v46 = 0;
    }

    else
    {
      v61 = *(a1 + 16);
      v62 = *(a1 + 24);
      v46 = v42 ^ v41;
      v45 = *a2;
      if (v41 == *a2)
      {
        v56 = *v19;
        *(a1 + 24) = *(a2 + 24);
        *v44 = v56;
        v47 = v46 >> 31;
        if (*a2 == v46)
        {
LABEL_88:
          if (v47 == v46)
          {
            *v19 = v43;
          }

          else
          {
            *(a2 + 8) = v43;
            *(a2 + 16) = v61;
            *(a2 + 24) = v62;
          }

          v35 = (a1 + 32);
          goto LABEL_98;
        }

LABEL_70:
        *(a2 + 8) = v43;
        if (v47 != v46)
        {
          *(a2 + 16) = v61;
          *(a2 + 24) = v62;
        }

        *a2 = v47 ^ v46;
        v35 = (a1 + 32);
        goto LABEL_98;
      }
    }

    if (v45 >> 31 == v45)
    {
      *(a1 + 8) = *v19;
    }

    else
    {
      v58 = *v19;
      *(a1 + 24) = *(a2 + 24);
      *v44 = v58;
    }

    *a1 = (v45 >> 31) ^ v45;
    v47 = v46 >> 31;
    if (*a2 == v46)
    {
      goto LABEL_88;
    }

    goto LABEL_70;
  }

  if (result)
  {
    v10 = *a1;
    v11 = *a1 >> 31;
    v12 = *(a1 + 8);
    if (v11 == *a1)
    {
      v13 = *a3;
      if (v10 == *a3)
      {
        v14 = 0;
        *(a1 + 8) = *(a3 + 8);
        v15 = 0;
        if (!*a3)
        {
          goto LABEL_47;
        }

LABEL_18:
        *(a3 + 8) = v12;
        if (v15 != v14)
        {
          *(a3 + 16) = v61;
          *(a3 + 24) = v62;
        }

        *a3 = v15 ^ v14;
        v35 = (a1 + 32);
        goto LABEL_97;
      }

      v14 = 0;
    }

    else
    {
      v61 = *(a1 + 16);
      v62 = *(a1 + 24);
      v14 = v11 ^ v10;
      v13 = *a3;
      if (v10 == *a3)
      {
        v29 = *(a3 + 8);
        *(a1 + 24) = *(a3 + 24);
        *(a1 + 8) = v29;
        v15 = v14 >> 31;
        if (*a3 != v14)
        {
          goto LABEL_18;
        }

        goto LABEL_47;
      }
    }

    v32 = (v13 >> 31) ^ v13;
    if (v13 >> 31 == v13)
    {
      *(a1 + 8) = *(a3 + 8);
      *a1 = v32;
      v15 = v14 >> 31;
      if (*a3 == v14)
      {
        goto LABEL_47;
      }

      goto LABEL_18;
    }

    v36 = *(a3 + 8);
    *(a1 + 24) = *(a3 + 24);
    *(a1 + 8) = v36;
    *a1 = v32;
    v15 = v14 >> 31;
    if (*a3 != v14)
    {
      goto LABEL_18;
    }

LABEL_47:
    *(a3 + 8) = v12;
    if (v15 != v14)
    {
      *(a3 + 16) = v61;
      *(a3 + 24) = v62;
    }

    v35 = (a1 + 32);
LABEL_97:
    v40 = (a3 + 32);
LABEL_98:
    v60 = *v35;
    *v35 = *v40;
    *v40 = v60;
    return 1;
  }

  v23 = *a1;
  v24 = *a1 >> 31;
  v25 = *(a1 + 8);
  if (v24 == *a1)
  {
    v26 = *a2;
    if (v23 == *a2)
    {
      v27 = 0;
      *(a1 + 8) = *(a2 + 8);
      v28 = 0;
      if (!*a2)
      {
        goto LABEL_54;
      }

      goto LABEL_26;
    }

    v27 = 0;
  }

  else
  {
    v61 = *(a1 + 16);
    v62 = *(a1 + 24);
    v27 = v24 ^ v23;
    v26 = *a2;
    if (v23 == *a2)
    {
      v31 = *(a2 + 8);
      *(a1 + 24) = *(a2 + 24);
      *(a1 + 8) = v31;
      v28 = v27 >> 31;
      if (*a2 == v27)
      {
        goto LABEL_54;
      }

      goto LABEL_26;
    }
  }

  v34 = (v26 >> 31) ^ v26;
  if (v26 >> 31 == v26)
  {
    *(a1 + 8) = *(a2 + 8);
    *a1 = v34;
    v28 = v27 >> 31;
    if (*a2 == v27)
    {
LABEL_54:
      *(a2 + 8) = v25;
      if (v28 != v27)
      {
        *(a2 + 16) = v61;
        *(a2 + 24) = v62;
      }

      goto LABEL_63;
    }
  }

  else
  {
    v38 = *(a2 + 8);
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 8) = v38;
    *a1 = v34;
    v28 = v27 >> 31;
    if (*a2 == v27)
    {
      goto LABEL_54;
    }
  }

LABEL_26:
  *(a2 + 8) = v25;
  if (v28 != v27)
  {
    *(a2 + 16) = v61;
    *(a2 + 24) = v62;
  }

  *a2 = v28 ^ v27;
LABEL_63:
  v35 = (a2 + 32);
  v48 = *(a1 + 32);
  *(a1 + 32) = *(a2 + 32);
  *(a2 + 32) = v48;
  if (sub_10021DA7C(a4, a3, a2))
  {
    v49 = *a2;
    v50 = *a2 >> 31;
    v52 = (a2 + 8);
    v51 = *(a2 + 8);
    if (v50 == *a2)
    {
      v53 = *a3;
      if (v49 == *a3)
      {
        v54 = 0;
        *v52 = *(a3 + 8);
        v55 = 0;
        if (!*a3)
        {
          goto LABEL_93;
        }

        goto LABEL_74;
      }

      v54 = 0;
    }

    else
    {
      v61 = *(a2 + 16);
      v62 = *(a2 + 24);
      v54 = v50 ^ v49;
      v53 = *a3;
      if (v49 == *a3)
      {
        v57 = *(a3 + 8);
        *(a2 + 24) = *(a3 + 24);
        *v52 = v57;
        v55 = v54 >> 31;
        if (*a3 == v54)
        {
          goto LABEL_93;
        }

        goto LABEL_74;
      }
    }

    if (v53 >> 31 == v53)
    {
      *(a2 + 8) = *(a3 + 8);
    }

    else
    {
      v59 = *(a3 + 8);
      *(a2 + 24) = *(a3 + 24);
      *v52 = v59;
    }

    *a2 = (v53 >> 31) ^ v53;
    v55 = v54 >> 31;
    if (*a3 == v54)
    {
LABEL_93:
      *(a3 + 8) = v51;
      if (v55 != v54)
      {
        *(a3 + 16) = v61;
        *(a3 + 24) = v62;
      }

      goto LABEL_97;
    }

LABEL_74:
    *(a3 + 8) = v51;
    if (v55 != v54)
    {
      *(a3 + 16) = v61;
      *(a3 + 24) = v62;
    }

    *a3 = v55 ^ v54;
    goto LABEL_97;
  }

  return 1;
}

uint64_t sub_10021E36C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_10021DCB0(a1, a2, a3, a5);
  result = sub_10021DA7C(a5, a4, a3);
  if (result)
  {
    v11 = *a3;
    v12 = *a3 >> 31;
    v14 = (a3 + 8);
    v13 = *(a3 + 8);
    if (v12 == *a3)
    {
      v15 = *a4;
      if (v11 == *a4)
      {
        v16 = 0;
        *v14 = *(a4 + 8);
        v17 = 0;
        if (!*a4)
        {
          goto LABEL_17;
        }

        goto LABEL_8;
      }

      v16 = 0;
    }

    else
    {
      v43 = *(a3 + 16);
      v44 = *(a3 + 24);
      v16 = v12 ^ v11;
      v15 = *a4;
      if (v11 == *a4)
      {
        v18 = *(a4 + 8);
        *(a3 + 24) = *(a4 + 24);
        *v14 = v18;
        v17 = v16 >> 31;
        if (*a4 == v16)
        {
          goto LABEL_17;
        }

        goto LABEL_8;
      }
    }

    v19 = (v15 >> 31) ^ v15;
    if (v15 >> 31 == v15)
    {
      *(a3 + 8) = *(a4 + 8);
      *a3 = v19;
      v17 = v16 >> 31;
      if (*a4 == v16)
      {
LABEL_17:
        *(a4 + 8) = v13;
        if (v17 != v16)
        {
          *(a4 + 16) = v43;
          *(a4 + 24) = v44;
        }

        goto LABEL_19;
      }
    }

    else
    {
      v20 = *(a4 + 8);
      *(a3 + 24) = *(a4 + 24);
      *v14 = v20;
      *a3 = v19;
      v17 = v16 >> 31;
      if (*a4 == v16)
      {
        goto LABEL_17;
      }
    }

LABEL_8:
    *(a4 + 8) = v13;
    if (v17 != v16)
    {
      *(a4 + 16) = v43;
      *(a4 + 24) = v44;
    }

    *a4 = v17 ^ v16;
LABEL_19:
    v21 = *(a3 + 32);
    *(a3 + 32) = *(a4 + 32);
    *(a4 + 32) = v21;
    result = sub_10021DA7C(a5, a3, a2);
    if (!result)
    {
      return result;
    }

    v22 = *a2;
    v23 = *a2 >> 31;
    v25 = (a2 + 8);
    v24 = *(a2 + 8);
    if (v23 == *a2)
    {
      v26 = *a3;
      if (v22 == *a3)
      {
        v27 = 0;
        *v25 = *v14;
        v28 = 0;
        if (!*a3)
        {
          goto LABEL_35;
        }

        goto LABEL_26;
      }

      v27 = 0;
    }

    else
    {
      v43 = *(a2 + 16);
      v44 = *(a2 + 24);
      v27 = v23 ^ v22;
      v26 = *a3;
      if (v22 == *a3)
      {
        v29 = *v14;
        *(a2 + 24) = *(a3 + 24);
        *v25 = v29;
        v28 = v27 >> 31;
        if (*a3 == v27)
        {
          goto LABEL_35;
        }

        goto LABEL_26;
      }
    }

    v30 = (v26 >> 31) ^ v26;
    if (v26 >> 31 == v26)
    {
      *(a2 + 8) = *v14;
      *a2 = v30;
      v28 = v27 >> 31;
      if (*a3 == v27)
      {
LABEL_35:
        if (v28 == v27)
        {
          *v14 = v24;
        }

        else
        {
          *(a3 + 8) = v24;
          *(a3 + 16) = v43;
          *(a3 + 24) = v44;
        }

        goto LABEL_38;
      }
    }

    else
    {
      v31 = *v14;
      *(a2 + 24) = *(a3 + 24);
      *v25 = v31;
      *a2 = v30;
      v28 = v27 >> 31;
      if (*a3 == v27)
      {
        goto LABEL_35;
      }
    }

LABEL_26:
    *(a3 + 8) = v24;
    if (v28 != v27)
    {
      *(a3 + 16) = v43;
      *(a3 + 24) = v44;
    }

    *a3 = v28 ^ v27;
LABEL_38:
    v32 = *(a2 + 32);
    *(a2 + 32) = *(a3 + 32);
    *(a3 + 32) = v32;
    result = sub_10021DA7C(a5, a2, a1);
    if (!result)
    {
      return result;
    }

    v33 = *a1;
    v34 = *a1 >> 31;
    v36 = (a1 + 8);
    v35 = *(a1 + 8);
    if (v34 == *a1)
    {
      v37 = *a2;
      if (v33 == *a2)
      {
        v38 = 0;
        *v36 = *v25;
        v39 = 0;
        if (!*a2)
        {
LABEL_54:
          if (v39 == v38)
          {
            *v25 = v35;
          }

          else
          {
            *(a2 + 8) = v35;
            *(a2 + 16) = v43;
            *(a2 + 24) = v44;
          }

LABEL_57:
          v42 = *(a1 + 32);
          *(a1 + 32) = *(a2 + 32);
          *(a2 + 32) = v42;
          return result;
        }

LABEL_45:
        *(a2 + 8) = v35;
        if (v39 != v38)
        {
          *(a2 + 16) = v43;
          *(a2 + 24) = v44;
        }

        *a2 = v39 ^ v38;
        goto LABEL_57;
      }

      v38 = 0;
    }

    else
    {
      v43 = *(a1 + 16);
      v44 = *(a1 + 24);
      v38 = v34 ^ v33;
      v37 = *a2;
      if (v33 == *a2)
      {
        v40 = *v25;
        *(a1 + 24) = *(a2 + 24);
        *v36 = v40;
        v39 = v38 >> 31;
        if (*a2 == v38)
        {
          goto LABEL_54;
        }

        goto LABEL_45;
      }
    }

    if (v37 >> 31 == v37)
    {
      *(a1 + 8) = *v25;
    }

    else
    {
      v41 = *v25;
      *(a1 + 24) = *(a2 + 24);
      *v36 = v41;
    }

    *a1 = (v37 >> 31) ^ v37;
    v39 = v38 >> 31;
    if (*a2 == v38)
    {
      goto LABEL_54;
    }

    goto LABEL_45;
  }

  return result;
}

uint64_t sub_10021E7B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_10021E36C(a1, a2, a3, a4, a6);
  result = sub_10021DA7C(a6, a5, a4);
  if (!result)
  {
    return result;
  }

  v13 = *a4;
  v14 = *a4 >> 31;
  v16 = (a4 + 8);
  v15 = *(a4 + 8);
  if (v14 == *a4)
  {
    v17 = *a5;
    if (v13 == *a5)
    {
      v18 = 0;
      *v16 = *(a5 + 8);
      v19 = 0;
      if (!*a5)
      {
        goto LABEL_17;
      }

      goto LABEL_8;
    }

    v18 = 0;
  }

  else
  {
    v55 = *(a4 + 16);
    v56 = *(a4 + 24);
    v18 = v14 ^ v13;
    v17 = *a5;
    if (v13 == *a5)
    {
      v20 = *(a5 + 8);
      *(a4 + 24) = *(a5 + 24);
      *v16 = v20;
      v19 = v18 >> 31;
      if (*a5 == v18)
      {
        goto LABEL_17;
      }

      goto LABEL_8;
    }
  }

  v21 = (v17 >> 31) ^ v17;
  if (v17 >> 31 == v17)
  {
    *(a4 + 8) = *(a5 + 8);
    *a4 = v21;
    v19 = v18 >> 31;
    if (*a5 == v18)
    {
LABEL_17:
      *(a5 + 8) = v15;
      if (v19 != v18)
      {
        *(a5 + 16) = v55;
        *(a5 + 24) = v56;
      }

      goto LABEL_19;
    }
  }

  else
  {
    v22 = *(a5 + 8);
    *(a4 + 24) = *(a5 + 24);
    *v16 = v22;
    *a4 = v21;
    v19 = v18 >> 31;
    if (*a5 == v18)
    {
      goto LABEL_17;
    }
  }

LABEL_8:
  *(a5 + 8) = v15;
  if (v19 != v18)
  {
    *(a5 + 16) = v55;
    *(a5 + 24) = v56;
  }

  *a5 = v19 ^ v18;
LABEL_19:
  v23 = *(a4 + 32);
  *(a4 + 32) = *(a5 + 32);
  *(a5 + 32) = v23;
  result = sub_10021DA7C(a6, a4, a3);
  if (!result)
  {
    return result;
  }

  v24 = *a3;
  v25 = *a3 >> 31;
  v27 = (a3 + 8);
  v26 = *(a3 + 8);
  if (v25 == *a3)
  {
    v28 = *a4;
    if (v24 == *a4)
    {
      v29 = 0;
      *v27 = *v16;
      v30 = 0;
      if (!*a4)
      {
        goto LABEL_35;
      }

      goto LABEL_26;
    }

    v29 = 0;
  }

  else
  {
    v55 = *(a3 + 16);
    v56 = *(a3 + 24);
    v29 = v25 ^ v24;
    v28 = *a4;
    if (v24 == *a4)
    {
      v31 = *v16;
      *(a3 + 24) = *(a4 + 24);
      *v27 = v31;
      v30 = v29 >> 31;
      if (*a4 == v29)
      {
        goto LABEL_35;
      }

      goto LABEL_26;
    }
  }

  v32 = (v28 >> 31) ^ v28;
  if (v28 >> 31 == v28)
  {
    *(a3 + 8) = *v16;
    *a3 = v32;
    v30 = v29 >> 31;
    if (*a4 == v29)
    {
LABEL_35:
      if (v30 == v29)
      {
        *v16 = v26;
      }

      else
      {
        *(a4 + 8) = v26;
        *(a4 + 16) = v55;
        *(a4 + 24) = v56;
      }

      goto LABEL_38;
    }
  }

  else
  {
    v33 = *v16;
    *(a3 + 24) = *(a4 + 24);
    *v27 = v33;
    *a3 = v32;
    v30 = v29 >> 31;
    if (*a4 == v29)
    {
      goto LABEL_35;
    }
  }

LABEL_26:
  *(a4 + 8) = v26;
  if (v30 != v29)
  {
    *(a4 + 16) = v55;
    *(a4 + 24) = v56;
  }

  *a4 = v30 ^ v29;
LABEL_38:
  v34 = *(a3 + 32);
  *(a3 + 32) = *(a4 + 32);
  *(a4 + 32) = v34;
  result = sub_10021DA7C(a6, a3, a2);
  if (!result)
  {
    return result;
  }

  v35 = *a2;
  v36 = *a2 >> 31;
  v38 = (a2 + 8);
  v37 = *(a2 + 8);
  if (v36 != *a2)
  {
    v55 = *(a2 + 16);
    v56 = *(a2 + 24);
    v40 = v36 ^ v35;
    v39 = *a3;
    if (v35 == *a3)
    {
      v42 = *v27;
      *(a2 + 24) = *(a3 + 24);
      *v38 = v42;
      v41 = v40 >> 31;
      if (*a3 == v40)
      {
        goto LABEL_54;
      }

      goto LABEL_45;
    }

LABEL_48:
    if (v39 >> 31 == v39)
    {
      *(a2 + 8) = *v27;
    }

    else
    {
      v43 = *v27;
      *(a2 + 24) = *(a3 + 24);
      *v38 = v43;
    }

    *a2 = (v39 >> 31) ^ v39;
    v41 = v40 >> 31;
    if (*a3 == v40)
    {
      goto LABEL_54;
    }

    goto LABEL_45;
  }

  v39 = *a3;
  if (v35 != *a3)
  {
    v40 = 0;
    goto LABEL_48;
  }

  v40 = 0;
  *v38 = *v27;
  v41 = 0;
  if (!*a3)
  {
LABEL_54:
    if (v41 == v40)
    {
      *v27 = v37;
    }

    else
    {
      *(a3 + 8) = v37;
      *(a3 + 16) = v55;
      *(a3 + 24) = v56;
    }

    goto LABEL_57;
  }

LABEL_45:
  *(a3 + 8) = v37;
  if (v41 != v40)
  {
    *(a3 + 16) = v55;
    *(a3 + 24) = v56;
  }

  *a3 = v41 ^ v40;
LABEL_57:
  v44 = *(a2 + 32);
  *(a2 + 32) = *(a3 + 32);
  *(a3 + 32) = v44;
  result = sub_10021DA7C(a6, a2, a1);
  if (!result)
  {
    return result;
  }

  v45 = *a1;
  v46 = *a1 >> 31;
  v48 = (a1 + 8);
  v47 = *(a1 + 8);
  if (v46 != *a1)
  {
    v55 = *(a1 + 16);
    v56 = *(a1 + 24);
    v50 = v46 ^ v45;
    v49 = *a2;
    if (v45 == *a2)
    {
      v51 = *v38;
      *(a1 + 24) = *(a2 + 24);
      *v48 = v51;
      goto LABEL_68;
    }

LABEL_64:
    if (v49 >> 31 == v49)
    {
      *(a1 + 8) = *v38;
    }

    else
    {
      v52 = *v38;
      *(a1 + 24) = *(a2 + 24);
      *v48 = v52;
    }

    *a1 = (v49 >> 31) ^ v49;
    goto LABEL_68;
  }

  v49 = *a2;
  if (v45 != *a2)
  {
    v50 = 0;
    goto LABEL_64;
  }

  v50 = 0;
  *v48 = *v38;
LABEL_68:
  v53 = v50 >> 31;
  if (*a2 == v50)
  {
    if (v53 == v50)
    {
      *v38 = v47;
    }

    else
    {
      *(a2 + 8) = v47;
      *(a2 + 16) = v55;
      *(a2 + 24) = v56;
    }
  }

  else
  {
    *(a2 + 8) = v47;
    if (v53 != v50)
    {
      *(a2 + 16) = v55;
      *(a2 + 24) = v56;
    }

    *a2 = v53 ^ v50;
  }

  v54 = *(a1 + 32);
  *(a1 + 32) = *(a2 + 32);
  *(a2 + 32) = v54;
  return result;
}

uint64_t sub_10021ED2C(uint64_t result, int *a2, uint64_t a3)
{
  if (result == a2)
  {
    return result;
  }

  v4 = result;
  v5 = result + 40;
  if ((result + 40) == a2)
  {
    return result;
  }

  v7 = 0;
  v8 = result;
  while (2)
  {
    v9 = v5;
    result = sub_10021DA7C(a3, v5, v8);
    if (!result)
    {
      goto LABEL_7;
    }

    v10 = *v9;
    v11 = *v9 >> 31;
    if (v10 >> 31 == v10)
    {
      *&v34 = *(v8 + 48);
      v11 = *v9;
    }

    else
    {
      v34 = *(v8 + 48);
      v35 = *(v8 + 64);
    }

    v33 = v11 ^ v10;
    v36 = *(v8 + 72);
    for (i = v7; ; i -= 40)
    {
      v14 = v4 + i;
      v15 = *(v4 + i);
      if (v10 == v15)
      {
        if (v10 == v10 >> 31)
        {
          *(v14 + 48) = *(v14 + 8);
        }

        else
        {
          *(v14 + 48) = *(v14 + 8);
          *(v14 + 64) = *(v14 + 24);
        }
      }

      else
      {
        if (v15 >> 31 == v15)
        {
          *(v14 + 48) = *(v14 + 8);
        }

        else
        {
          *(v14 + 48) = *(v14 + 8);
          *(v14 + 64) = *(v14 + 24);
        }

        *(v14 + 40) = (v15 >> 31) ^ v15;
      }

      v16 = v4 + i;
      *(v4 + i + 72) = *(v4 + i + 32);
      if (!i)
      {
        break;
      }

      v17 = *(v16 - 40);
      v18 = v17 >> 31;
      v19 = (v16 - 32);
      if (v17 >> 31 == v17)
      {
        *&v39 = *v19;
        v20 = 0;
        v21 = v33;
        v22 = v33 >> 31;
        v23 = 0;
        if (v33 >> 31 == v33)
        {
          goto LABEL_35;
        }
      }

      else
      {
        v39 = *v19;
        v40 = *(v16 - 16);
        v20 = v18 ^ v17;
        v21 = v33;
        v22 = v33 >> 31;
        v23 = (v18 ^ v17) >> 31;
        if (v33 >> 31 == v33)
        {
LABEL_35:
          if (v23 != v20 || v34 < v39)
          {
            goto LABEL_51;
          }

          *&v37 = v34;
          v26 = 0;
          v27 = 0;
          if (v18 != v17)
          {
            goto LABEL_38;
          }

          goto LABEL_48;
        }
      }

      if (v23 != v20)
      {
        v24 = bswap64(v34);
        v25 = bswap64(v39);
        if (v24 != v25 || (v24 = bswap64(*(&v34 + 1)), v25 = bswap64(*(&v39 + 1)), v24 != v25) || (v24 = bswap32(v35), v25 = bswap32(v40), v24 != v25))
        {
          v30 = v24 < v25 ? -1 : 1;
          if (v30 < 0)
          {
            goto LABEL_51;
          }
        }
      }

      v37 = v34;
      v38 = v35;
      v26 = v22 ^ v21;
      v27 = v26 >> 31;
      if (v18 != v17)
      {
LABEL_38:
        if (v27 != v26)
        {
          v28 = bswap64(*v19);
          v29 = bswap64(v37);
          if (v28 != v29 || (v28 = bswap64(*(v19 + 1)), v29 = bswap64(*(&v37 + 1)), v28 != v29) || (v28 = bswap32(*(v19 + 4)), v29 = bswap32(v38), v28 != v29))
          {
            v13 = v28 < v29 ? -1 : 1;
            if (v13 < 0)
            {
LABEL_56:
              v31 = v4 + i;
              v32 = v21 >> 31;
              if (*(v4 + i) != v21)
              {
                goto LABEL_57;
              }

LABEL_54:
              if (v32 == v21)
              {
                *(v31 + 8) = v34;
              }

              else
              {
                *(v31 + 8) = v34;
                *(v31 + 24) = v35;
              }

              goto LABEL_6;
            }
          }
        }

        goto LABEL_50;
      }

LABEL_48:
      if (v27 != v26 || *v19 < v37)
      {
        goto LABEL_56;
      }

LABEL_50:
      v31 = v4 + i;
      if (v36 >= *(v4 + i - 8))
      {
        goto LABEL_53;
      }

LABEL_51:
      v10 = *v14;
    }

    v21 = v33;
    v31 = v4;
LABEL_53:
    v32 = v21 >> 31;
    if (*v31 == v21)
    {
      goto LABEL_54;
    }

LABEL_57:
    if (v32 == v21)
    {
      *(v31 + 8) = v34;
    }

    else
    {
      *(v31 + 8) = v34;
      *(v31 + 24) = v35;
    }

    *v31 = v32 ^ v21;
LABEL_6:
    *(v31 + 32) = v36;
LABEL_7:
    v5 = (v9 + 10);
    v7 += 40;
    v8 = v9;
    if (v9 + 10 != a2)
    {
      continue;
    }

    return result;
  }
}

uint64_t sub_10021F10C(uint64_t result, int *a2, uint64_t a3)
{
  if (result == a2)
  {
    return result;
  }

  v4 = result;
  v5 = result + 40;
  if ((result + 40) == a2)
  {
    return result;
  }

  while (2)
  {
    v7 = v5;
    result = sub_10021DA7C(a3, v5, v4);
    if (!result)
    {
      goto LABEL_7;
    }

    v8 = *v7;
    v9 = *v7 >> 31;
    if (v8 >> 31 == v8)
    {
      *&v26 = *(v4 + 48);
      v9 = *v7;
    }

    else
    {
      v26 = *(v4 + 48);
      v27 = *(v4 + 64);
    }

    v25 = v9 ^ v8;
    v28 = *(v4 + 72);
    while (1)
    {
      v11 = *v4;
      if (v8 == *v4)
      {
        if (v8 == v8 >> 31)
        {
          *(v4 + 48) = *(v4 + 8);
        }

        else
        {
          *(v4 + 48) = *(v4 + 8);
          *(v4 + 64) = *(v4 + 24);
        }
      }

      else
      {
        if (v11 >> 31 == v11)
        {
          *(v4 + 48) = *(v4 + 8);
        }

        else
        {
          *(v4 + 48) = *(v4 + 8);
          *(v4 + 64) = *(v4 + 24);
        }

        *(v4 + 40) = (v11 >> 31) ^ v11;
      }

      *(v4 + 72) = *(v4 + 32);
      v12 = *(v4 - 40);
      v13 = v12 >> 31;
      if (v12 >> 31 == v12)
      {
        *&v31 = *(v4 - 32);
        v14 = 0;
        v15 = v25;
        v16 = v25 >> 31;
        v17 = 0;
        if (v25 >> 31 == v25)
        {
          goto LABEL_34;
        }
      }

      else
      {
        v32 = *(v4 - 16);
        v31 = *(v4 - 32);
        v14 = v13 ^ v12;
        v15 = v25;
        v16 = v25 >> 31;
        v17 = (v13 ^ v12) >> 31;
        if (v25 >> 31 == v25)
        {
LABEL_34:
          if (v17 != v14 || v26 < v31)
          {
            goto LABEL_50;
          }

          *&v29 = v26;
          v20 = 0;
          v21 = 0;
          if (v13 == v12)
          {
            goto LABEL_47;
          }

          goto LABEL_37;
        }
      }

      if (v17 != v14)
      {
        v18 = bswap64(v26);
        v19 = bswap64(v31);
        if (v18 != v19 || (v18 = bswap64(*(&v26 + 1)), v19 = bswap64(*(&v31 + 1)), v18 != v19) || (v18 = bswap32(v27), v19 = bswap32(v32), v18 != v19))
        {
          v24 = v18 < v19 ? -1 : 1;
          if (v24 < 0)
          {
            goto LABEL_50;
          }
        }
      }

      v29 = v26;
      v30 = v27;
      v20 = v16 ^ v15;
      v21 = (v16 ^ v15) >> 31;
      if (v13 == v12)
      {
LABEL_47:
        if (v21 != v20 || *(v4 - 32) < v29)
        {
          break;
        }

        goto LABEL_49;
      }

LABEL_37:
      if (v21 != v20)
      {
        v22 = bswap64(*(v4 - 32));
        v23 = bswap64(v29);
        if (v22 != v23 || (v22 = bswap64(*(v4 - 24)), v23 = bswap64(*(&v29 + 1)), v22 != v23) || (v22 = bswap32(*(v4 - 16)), v23 = bswap32(v30), v22 != v23))
        {
          v10 = v22 < v23 ? -1 : 1;
          if (v10 < 0)
          {
            break;
          }
        }
      }

LABEL_49:
      if (v28 >= *(v4 - 8))
      {
        break;
      }

LABEL_50:
      v8 = *v4;
      v4 -= 40;
    }

    if (*v4 == v15)
    {
      if (v16 == v15)
      {
        *(v4 + 8) = v26;
      }

      else
      {
        *(v4 + 24) = v27;
        *(v4 + 8) = v26;
      }
    }

    else
    {
      if (v16 == v15)
      {
        *(v4 + 8) = v26;
      }

      else
      {
        *(v4 + 24) = v27;
        *(v4 + 8) = v26;
      }

      *v4 = v16 ^ v15;
    }

    *(v4 + 32) = v28;
LABEL_7:
    v5 = (v7 + 10);
    v4 = v7;
    if (v7 + 10 != a2)
    {
      continue;
    }

    return result;
  }
}

unint64_t sub_10021F4A8(unint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = a2;
  v7 = a1 + 8;
  v6 = *a1;
  v8 = *a1 >> 31;
  if (v6 >> 31 == v6)
  {
    *&v69 = *v7;
    v8 = v6;
  }

  else
  {
    v69 = *v7;
    v70 = *(a1 + 24);
  }

  v9 = v8 ^ v6;
  v10 = *(a1 + 32);
  v68 = v9;
  v71 = v10;
  if (sub_10021DA7C(a3, &v68, a2 - 40))
  {
    v11 = a1;
    do
    {
      v11 += 40;
    }

    while ((sub_10021DA7C(a3, &v68, v11) & 1) == 0);
  }

  else
  {
    v12 = a1 + 40;
    do
    {
      v11 = v12;
      if (v12 >= v4)
      {
        break;
      }

      v13 = sub_10021DA7C(a3, &v68, v12);
      v12 = v11 + 40;
    }

    while (!v13);
  }

  if (v11 < v4)
  {
    do
    {
      v4 -= 40;
    }

    while ((sub_10021DA7C(a3, &v68, v4) & 1) != 0);
  }

  if (v11 < v4)
  {
    v14 = *v11;
    do
    {
      v16 = (v11 + 8);
      v15 = *(v11 + 8);
      if (v14 >> 31 == v14)
      {
        v17 = *v4;
        if (v14 == *v4)
        {
          v18 = 0;
          *v16 = *(v4 + 8);
          v19 = 0;
          if (*v4)
          {
            goto LABEL_22;
          }

          goto LABEL_31;
        }

        v18 = 0;
      }

      else
      {
        v74 = *(v11 + 16);
        LODWORD(v75) = *(v11 + 24);
        v18 = (v14 >> 31) ^ v14;
        v17 = *v4;
        if (v14 == *v4)
        {
          v20 = *(v4 + 8);
          *(v11 + 24) = *(v4 + 24);
          *v16 = v20;
          v19 = v18 >> 31;
          if (*v4 != v18)
          {
            goto LABEL_22;
          }

          goto LABEL_31;
        }
      }

      v22 = (v17 >> 31) ^ v17;
      if (v17 >> 31 == v17)
      {
        *(v11 + 8) = *(v4 + 8);
        *v11 = v22;
        v19 = v18 >> 31;
        if (*v4 != v18)
        {
          goto LABEL_22;
        }
      }

      else
      {
        v24 = *(v4 + 8);
        *(v11 + 24) = *(v4 + 24);
        *v16 = v24;
        *v11 = v22;
        v19 = v18 >> 31;
        if (*v4 != v18)
        {
LABEL_22:
          v21 = v19 ^ v18;
          if (v19 == v18)
          {
            *(v4 + 8) = v15;
          }

          else
          {
            v23 = v74;
            *(v4 + 8) = v15;
            *(v4 + 16) = v23;
            *(v4 + 24) = v75;
          }

          *v4 = v21;
          goto LABEL_34;
        }
      }

LABEL_31:
      if (v19 == v18)
      {
        *(v4 + 8) = v15;
      }

      else
      {
        v25 = v74;
        *(v4 + 8) = v15;
        *(v4 + 16) = v25;
        *(v4 + 24) = v75;
      }

LABEL_34:
      v26 = *(v11 + 32);
      *(v11 + 32) = *(v4 + 32);
      *(v4 + 32) = v26;
      v27 = v68 >> 31;
      while (1)
      {
        while (1)
        {
          v11 += 40;
          v28 = (v11 + 8);
          v14 = *v11;
          v29 = *v11 >> 31;
          if (v29 == *v11)
          {
            break;
          }

          v34 = *v28;
          v76 = *(v11 + 24);
          v75 = v34;
          v30 = v29 ^ v14;
          v31 = (v29 ^ v14) >> 31;
          if (v27 == v68)
          {
            goto LABEL_44;
          }

LABEL_38:
          if (v31 != v30)
          {
            v32 = bswap64(v69);
            v33 = bswap64(v75);
            if (v32 != v33 || (v32 = bswap64(*(&v69 + 1)), v33 = bswap64(*(&v75 + 1)), v32 != v33) || (v32 = bswap32(v70), v33 = bswap32(v76), v32 != v33))
            {
              v40 = v32 < v33 ? -1 : 1;
              if (v40 < 0)
              {
                goto LABEL_73;
              }
            }
          }

          v72 = v69;
          v73 = v70;
          v36 = v27 ^ v68;
          v37 = (v27 ^ v68) >> 31;
          if (v29 == v14)
          {
            goto LABEL_60;
          }

LABEL_50:
          if (v37 != v36)
          {
            v38 = bswap64(*v28);
            v39 = bswap64(v72);
            if (v38 != v39 || (v38 = bswap64(*(v11 + 16)), v39 = bswap64(*(&v72 + 1)), v38 != v39) || (v38 = bswap32(*(v11 + 24)), v39 = bswap32(v73), v38 != v39))
            {
              v41 = v38 < v39 ? -1 : 1;
              if (v41 < 0)
              {
                continue;
              }
            }
          }

          goto LABEL_35;
        }

        *&v75 = *v28;
        v30 = 0;
        v31 = 0;
        if (v27 != v68)
        {
          goto LABEL_38;
        }

LABEL_44:
        if (v31 != v30 || v69 < v75)
        {
          break;
        }

        *&v72 = v69;
        v36 = 0;
        v37 = 0;
        if (v29 != v14)
        {
          goto LABEL_50;
        }

LABEL_60:
        if (v37 == v36 && *v28 >= v72)
        {
LABEL_35:
          if (v71 < *(v11 + 32))
          {
            goto LABEL_73;
          }
        }
      }

      do
      {
LABEL_73:
        while (1)
        {
          v4 -= 40;
          v43 = (v4 + 8);
          v44 = *v4;
          v45 = *v4 >> 31;
          if (v45 != *v4)
          {
            break;
          }

          *&v75 = *v43;
          v46 = 0;
          v47 = 0;
          if (v27 == v68)
          {
            goto LABEL_81;
          }

LABEL_75:
          if (v47 != v46)
          {
            v48 = bswap64(v69);
            v49 = bswap64(v75);
            if (v48 != v49 || (v48 = bswap64(*(&v69 + 1)), v49 = bswap64(*(&v75 + 1)), v48 != v49) || (v48 = bswap32(v70), v49 = bswap32(v76), v48 != v49))
            {
              v56 = v48 < v49 ? -1 : 1;
              if (v56 < 0)
              {
                continue;
              }
            }
          }

          v72 = v69;
          v73 = v70;
          v52 = v27 ^ v68;
          v53 = (v27 ^ v68) >> 31;
          if (v45 != v44)
          {
            goto LABEL_87;
          }

LABEL_97:
          if (v53 != v52 || *v43 < v72)
          {
            goto LABEL_15;
          }

LABEL_99:
          if (v71 >= *(v4 + 32))
          {
            goto LABEL_15;
          }
        }

        v50 = *v43;
        v76 = *(v4 + 24);
        v75 = v50;
        v46 = v45 ^ v44;
        v47 = (v45 ^ v44) >> 31;
        if (v27 != v68)
        {
          goto LABEL_75;
        }

LABEL_81:
        ;
      }

      while (v47 != v46 || v69 < v75);
      *&v72 = v69;
      v52 = 0;
      v53 = 0;
      if (v45 == v44)
      {
        goto LABEL_97;
      }

LABEL_87:
      if (v53 == v52)
      {
        goto LABEL_99;
      }

      v54 = bswap64(*v43);
      v55 = bswap64(v72);
      if (v54 == v55)
      {
        v54 = bswap64(*(v4 + 16));
        v55 = bswap64(*(&v72 + 1));
        if (v54 == v55)
        {
          v54 = bswap32(*(v4 + 24));
          v55 = bswap32(v73);
          if (v54 == v55)
          {
            goto LABEL_99;
          }
        }
      }

      v42 = v54 < v55 ? -1 : 1;
      if ((v42 & 0x80000000) == 0)
      {
        goto LABEL_99;
      }

LABEL_15:
      ;
    }

    while (v11 < v4);
  }

  v57 = *(v11 - 40);
  if (v11 - 40 != a1)
  {
    if (*a1 == v57)
    {
      v58 = (v11 - 32);
      if (v57 == v57 >> 31)
      {
        *v7 = *v58;
      }

      else
      {
        v60 = *v58;
        *(v7 + 16) = *(v11 - 16);
        *v7 = v60;
      }
    }

    else
    {
      v59 = (v11 - 32);
      if (v57 >> 31 == v57)
      {
        *(a1 + 8) = *v59;
      }

      else
      {
        v61 = *v59;
        *(v7 + 16) = *(v11 - 16);
        *v7 = v61;
      }

      *a1 = (v57 >> 31) ^ v57;
    }

    *(a1 + 32) = *(v11 - 8);
    v57 = *(v11 - 40);
  }

  v62 = v68;
  if (v57 == v68)
  {
    v63 = (v11 - 32);
    if (v57 == v57 >> 31)
    {
      *v63 = v69;
    }

    else
    {
      v65 = v69;
      *(v11 - 16) = v70;
      *v63 = v65;
    }
  }

  else
  {
    v64 = (v11 - 32);
    if (v68 >> 31 == v68)
    {
      *v64 = v69;
    }

    else
    {
      v66 = v69;
      *(v11 - 16) = v70;
      *v64 = v66;
    }

    *(v11 - 40) = (v62 >> 31) ^ v62;
  }

  *(v11 - 8) = v71;
  return v11;
}

int *sub_10021FB88(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v7 = (a1 + 8);
  v6 = *a1;
  v8 = *a1 >> 31;
  if (v6 >> 31 == v6)
  {
    *&v73 = *v7;
    v8 = v6;
  }

  else
  {
    v73 = *v7;
    v74 = *(a1 + 24);
  }

  v9 = 0;
  v10 = *(a1 + 32);
  v72 = v8 ^ v6;
  v75 = v10;
  do
  {
    v11 = sub_10021DA7C(a3, a1 + v9 + 40, &v72);
    v9 += 40;
  }

  while ((v11 & 1) != 0);
  v12 = (a1 + v9);
  if (v9 == 40)
  {
    do
    {
      if (v12 >= a2)
      {
        break;
      }

      a2 -= 40;
    }

    while ((sub_10021DA7C(a3, a2, &v72) & 1) == 0);
  }

  else
  {
    do
    {
      a2 -= 40;
    }

    while (!sub_10021DA7C(a3, a2, &v72));
  }

  if (v12 < a2)
  {
    v13 = *v12;
    v14 = a1 + v9;
    v15 = a2;
    while (1)
    {
      v17 = (v14 + 8);
      v16 = *(v14 + 8);
      if (v13 >> 31 == v13)
      {
        v18 = *v15;
        if (v13 == *v15)
        {
          v19 = 0;
          *v17 = *(v15 + 8);
          v20 = 0;
          if (*v15)
          {
            goto LABEL_20;
          }

          goto LABEL_29;
        }

        v19 = 0;
      }

      else
      {
        v78 = *(v14 + 16);
        LODWORD(v79) = *(v14 + 24);
        v19 = (v13 >> 31) ^ v13;
        v18 = *v15;
        if (v13 == *v15)
        {
          v21 = *(v15 + 8);
          *(v14 + 24) = *(v15 + 24);
          *v17 = v21;
          v20 = v19 >> 31;
          if (*v15 != v19)
          {
            goto LABEL_20;
          }

          goto LABEL_29;
        }
      }

      v23 = (v18 >> 31) ^ v18;
      if (v18 >> 31 == v18)
      {
        *(v14 + 8) = *(v15 + 8);
        *v14 = v23;
        v20 = v19 >> 31;
        if (*v15 != v19)
        {
          goto LABEL_20;
        }
      }

      else
      {
        v25 = *(v15 + 8);
        *(v14 + 24) = *(v15 + 24);
        *v17 = v25;
        *v14 = v23;
        v20 = v19 >> 31;
        if (*v15 != v19)
        {
LABEL_20:
          v22 = v20 ^ v19;
          if (v20 == v19)
          {
            *(v15 + 8) = v16;
          }

          else
          {
            v24 = v78;
            *(v15 + 8) = v16;
            *(v15 + 16) = v24;
            *(v15 + 24) = v79;
          }

          *v15 = v22;
          goto LABEL_32;
        }
      }

LABEL_29:
      if (v20 == v19)
      {
        *(v15 + 8) = v16;
      }

      else
      {
        v26 = v78;
        *(v15 + 8) = v16;
        *(v15 + 16) = v26;
        *(v15 + 24) = v79;
      }

LABEL_32:
      v27 = *(v14 + 32);
      *(v14 + 32) = *(v15 + 32);
      *(v15 + 32) = v27;
      v28 = v72 >> 31;
      do
      {
        while (1)
        {
          v14 += 40;
          if (v28 == v72)
          {
            *&v79 = v73;
            v30 = v72;
          }

          else
          {
            v79 = v73;
            v80 = v74;
            v30 = v72 >> 31;
          }

          v31 = v30 ^ v72;
          v32 = (v14 + 8);
          v13 = *v14;
          v33 = *v14 >> 31;
          v34 = v31 >> 31;
          if (v33 != *v14)
          {
            break;
          }

          if (v34 == v31)
          {
            v35 = *v32;
            if (v35 >= v79)
            {
              *&v76 = v35;
              v36 = 0;
              v37 = 0;
              if (v28 == v72)
              {
                goto LABEL_33;
              }

LABEL_56:
              if (v37 != v36)
              {
                v42 = bswap64(v73);
                v43 = bswap64(v76);
                if (v42 != v43 || (v42 = bswap64(*(&v73 + 1)), v43 = bswap64(*(&v76 + 1)), v42 != v43) || (v42 = bswap32(v74), v43 = bswap32(v77), v42 != v43))
                {
                  v44 = v42 < v43 ? -1 : 1;
                  if (v44 < 0)
                  {
                    goto LABEL_66;
                  }
                }
              }

LABEL_38:
              if (*(v14 + 32) >= v75)
              {
                goto LABEL_66;
              }
            }
          }
        }

        if (v34 == v31)
        {
          break;
        }

        v38 = bswap64(*v32);
        v39 = bswap64(v79);
        if (v38 == v39)
        {
          v38 = bswap64(*(v14 + 16));
          v39 = bswap64(*(&v79 + 1));
          if (v38 == v39)
          {
            v38 = bswap32(*(v14 + 24));
            v39 = bswap32(v80);
            if (v38 == v39)
            {
              break;
            }
          }
        }

        v40 = v38 < v39 ? -1 : 1;
      }

      while (v40 < 0);
      v41 = *v32;
      v77 = *(v14 + 24);
      v76 = v41;
      v36 = v33 ^ v13;
      v37 = (v33 ^ v13) >> 31;
      if (v28 != v72)
      {
        goto LABEL_56;
      }

LABEL_33:
      if (v37 == v36 && v73 >= v76)
      {
        goto LABEL_38;
      }

LABEL_66:
      while (2)
      {
        while (2)
        {
          v15 -= 40;
          if (v28 == v72)
          {
            *&v79 = v73;
            v45 = v72;
          }

          else
          {
            v79 = v73;
            v80 = v74;
            v45 = v72 >> 31;
          }

          v46 = v45 ^ v72;
          v48 = (v15 + 8);
          v47 = *v15;
          v49 = *v15 >> 31;
          v50 = v46 >> 31;
          if (v49 == *v15)
          {
            if (v50 != v46 || *v48 < v79)
            {
              goto LABEL_13;
            }

            *&v76 = *v48;
            v51 = 0;
            v52 = 0;
            if (v28 != v72)
            {
              goto LABEL_73;
            }

LABEL_87:
            if (v52 != v51 || v73 < v76)
            {
              continue;
            }

            goto LABEL_65;
          }

          break;
        }

        if (v50 == v46 || (v55 = bswap64(*v48), v56 = bswap64(v79), v55 == v56) && (v55 = bswap64(*(v15 + 16)), v56 = bswap64(*(&v79 + 1)), v55 == v56) && (v55 = bswap32(*(v15 + 24)), v56 = bswap32(v80), v55 == v56) || (v55 < v56 ? (v57 = -1) : (v57 = 1), (v57 & 0x80000000) == 0))
        {
          v58 = *v48;
          v77 = *(v15 + 24);
          v76 = v58;
          v51 = v49 ^ v47;
          v52 = v51 >> 31;
          if (v28 == v72)
          {
            goto LABEL_87;
          }

LABEL_73:
          if (v52 != v51)
          {
            v53 = bswap64(v73);
            v54 = bswap64(v76);
            if (v53 != v54 || (v53 = bswap64(*(&v73 + 1)), v54 = bswap64(*(&v76 + 1)), v53 != v54) || (v53 = bswap32(v74), v54 = bswap32(v77), v53 != v54))
            {
              v60 = v53 < v54 ? -1 : 1;
              if (v60 < 0)
              {
                continue;
              }
            }
          }

LABEL_65:
          if (*(v15 + 32) < v75)
          {
            break;
          }

          continue;
        }

        break;
      }

LABEL_13:
      if (v14 >= v15)
      {
        goto LABEL_99;
      }
    }
  }

  v14 = a1 + v9;
LABEL_99:
  result = (v14 - 40);
  v62 = *(v14 - 40);
  if (v14 - 40 != a1)
  {
    if (*a1 == v62)
    {
      v63 = (v14 - 32);
      if (v62 == v62 >> 31)
      {
        *v7 = *v63;
      }

      else
      {
        v65 = *v63;
        *(v7 + 4) = *(v14 - 16);
        *v7 = v65;
      }
    }

    else
    {
      v64 = (v14 - 32);
      if (v62 >> 31 == v62)
      {
        *(a1 + 8) = *v64;
      }

      else
      {
        v66 = *v64;
        *(v7 + 4) = *(v14 - 16);
        *v7 = v66;
      }

      *a1 = (v62 >> 31) ^ v62;
    }

    *(a1 + 32) = *(v14 - 8);
    v62 = *(v14 - 40);
  }

  v67 = v72;
  if (v62 == v72)
  {
    v68 = (v14 - 32);
    if (v62 == v62 >> 31)
    {
      *v68 = v73;
    }

    else
    {
      v70 = v73;
      *(v14 - 16) = v74;
      *v68 = v70;
    }
  }

  else
  {
    v69 = (v14 - 32);
    if (v72 >> 31 == v72)
    {
      *v69 = v73;
    }

    else
    {
      v71 = v73;
      *(v14 - 16) = v74;
      *v69 = v71;
    }

    *result = (v67 >> 31) ^ v67;
  }

  *(v14 - 8) = v75;
  return result;
}

BOOL sub_100220244(uint64_t a1, _DWORD *a2, uint64_t a3)
{
  v6 = 0xCCCCCCCCCCCCCCCDLL * ((a2 - a1) >> 3);
  if (v6 > 2)
  {
    switch(v6)
    {
      case 3:
        sub_10021DCB0(a1, a1 + 40, (a2 - 10), a3);
        return 1;
      case 4:
        sub_10021E36C(a1, a1 + 40, a1 + 80, (a2 - 10), a3);
        return 1;
      case 5:
        sub_10021E7B8(a1, a1 + 40, a1 + 80, a1 + 120, (a2 - 10), a3);
        return 1;
    }
  }

  else
  {
    if (v6 < 2)
    {
      return 1;
    }

    if (v6 == 2)
    {
      v7 = a2 - 10;
      if (sub_10021DA7C(a3, (a2 - 10), a1))
      {
        v8 = *a1;
        v9 = *a1 >> 31;
        v11 = (a1 + 8);
        v10 = *(a1 + 8);
        if (v9 == *a1)
        {
          v12 = *v7;
          if (v8 == *v7)
          {
            v13 = 0;
            *v11 = *(a2 - 4);
            goto LABEL_50;
          }

          v13 = 0;
        }

        else
        {
          v40 = *(a1 + 16);
          LODWORD(v41) = *(a1 + 24);
          v13 = v9 ^ v8;
          v12 = *v7;
          if (v8 == *v7)
          {
            v31 = *(a2 - 2);
            *(a1 + 24) = *(a2 - 4);
            *v11 = v31;
            goto LABEL_50;
          }
        }

        v33 = a2 - 8;
        if (v12 >> 31 == v12)
        {
          *(a1 + 8) = *v33;
        }

        else
        {
          v34 = *v33;
          *(a1 + 24) = *(a2 - 4);
          *v11 = v34;
        }

        *a1 = (v12 >> 31) ^ v12;
LABEL_50:
        v35 = v13 >> 31;
        if (*v7 == v13)
        {
          if (v35 == v13)
          {
            *(a2 - 4) = v10;
          }

          else
          {
            v37 = v40;
            *(a2 - 4) = v10;
            *(a2 - 3) = v37;
            *(a2 - 4) = v41;
          }
        }

        else
        {
          v36 = v35 ^ v13;
          if (v35 == v13)
          {
            *(a2 - 4) = v10;
          }

          else
          {
            v38 = v40;
            *(a2 - 4) = v10;
            *(a2 - 3) = v38;
            *(a2 - 4) = v41;
          }

          *(a2 - 10) = v36;
        }

        v39 = *(a1 + 32);
        *(a1 + 32) = *(a2 - 2);
        *(a2 - 2) = v39;
      }

      return 1;
    }
  }

  sub_10021DCB0(a1, a1 + 40, a1 + 80, a3);
  v14 = (a1 + 120);
  if ((a1 + 120) == a2)
  {
    return 1;
  }

  v15 = 0;
  v16 = 0;
  v17 = a1 + 80;
  while (1)
  {
    if (!sub_10021DA7C(a3, v14, v17))
    {
      goto LABEL_18;
    }

    v19 = v14 + 2;
    v18 = *v14;
    v20 = *v14 >> 31;
    if (v18 >> 31 == v18)
    {
      *&v41 = *v19;
      v20 = v18;
    }

    else
    {
      v41 = *v19;
      v42 = v14[6];
    }

    v21 = v20 ^ v18;
    v22 = v14[8];
    LODWORD(v40) = v21;
    v43 = v22;
    v23 = v15;
    do
    {
      v24 = a1 + v23;
      v25 = *(a1 + v23 + 120);
      v26 = *(a1 + v23 + 80);
      if (v25 == v26)
      {
        if (v25 == v25 >> 31)
        {
          *(v24 + 128) = *(v24 + 88);
        }

        else
        {
          *(v24 + 128) = *(v24 + 88);
          *(v24 + 144) = *(v24 + 104);
        }
      }

      else
      {
        if (v26 >> 31 == v26)
        {
          *(v24 + 128) = *(v24 + 88);
        }

        else
        {
          *(v24 + 128) = *(v24 + 88);
          *(v24 + 144) = *(v24 + 104);
        }

        *(v24 + 120) = (v26 >> 31) ^ v26;
      }

      v27 = a1 + v23;
      *(a1 + v23 + 152) = *(a1 + v23 + 112);
      if (v23 == -80)
      {
        v28 = a1;
        v29 = *a1;
        v30 = v40;
        if (*a1 != v40)
        {
          goto LABEL_35;
        }

LABEL_38:
        if (v29 == v29 >> 31)
        {
          *(v28 + 8) = v41;
        }

        else
        {
          *(v28 + 8) = v41;
          *(v28 + 24) = v42;
        }

        goto LABEL_17;
      }

      v23 -= 40;
    }

    while ((sub_10021DA7C(a3, &v40, v27 + 40) & 1) != 0);
    v28 = a1 + v23 + 120;
    v29 = *v28;
    v30 = v40;
    if (*v28 == v40)
    {
      goto LABEL_38;
    }

LABEL_35:
    if (v30 >> 31 == v30)
    {
      *(v28 + 8) = v41;
    }

    else
    {
      *(v28 + 8) = v41;
      *(v28 + 24) = v42;
    }

    *v28 = (v30 >> 31) ^ v30;
LABEL_17:
    *(v28 + 32) = v43;
    if (++v16 == 8)
    {
      return v14 + 10 == a2;
    }

LABEL_18:
    v17 = v14;
    v15 += 40;
    v14 += 10;
    if (v14 == a2)
    {
      return 1;
    }
  }
}

uint64_t sub_10022065C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a3 - 2;
  if (a3 >= 2)
  {
    v5 = a4;
    v6 = result;
    v7 = v4 >> 1;
    if ((v4 >> 1) >= (0xCCCCCCCCCCCCCCCDLL * ((a4 - result) >> 3)))
    {
      v10 = (0x999999999999999ALL * ((a4 - result) >> 3)) | 1;
      v11 = result + 40 * v10;
      v12 = 0x999999999999999ALL * ((a4 - result) >> 3) + 2;
      if (v12 < a3 && sub_10021DA7C(a2, result + 40 * v10, v11 + 40))
      {
        v11 += 40;
        v10 = v12;
      }

      result = sub_10021DA7C(a2, v11, v5);
      if ((result & 1) == 0)
      {
        v14 = (v5 + 8);
        v13 = *v5;
        v15 = *v5 >> 31;
        if (v13 >> 31 == v13)
        {
          *&v27 = *v14;
          v15 = v13;
        }

        else
        {
          v27 = *v14;
          v28 = *(v5 + 24);
        }

        v16 = v15 ^ v13;
        v17 = *(v5 + 32);
        v26 = v16;
        v29 = v17;
        do
        {
          v18 = v11;
          v19 = *v11;
          if (*v5 == *v11)
          {
            if (*v5 == *v5 >> 31)
            {
              *(v5 + 8) = *(v11 + 8);
            }

            else
            {
              v20 = *(v11 + 8);
              *(v5 + 24) = *(v11 + 24);
              *(v5 + 8) = v20;
            }
          }

          else
          {
            if (v19 >> 31 == v19)
            {
              *(v5 + 8) = *(v11 + 8);
            }

            else
            {
              v21 = *(v11 + 8);
              *(v5 + 24) = *(v11 + 24);
              *(v5 + 8) = v21;
            }

            *v5 = (v19 >> 31) ^ v19;
          }

          *(v5 + 32) = *(v11 + 32);
          if (v7 < v10)
          {
            break;
          }

          v22 = (2 * v10) | 1;
          v11 = v6 + 40 * v22;
          v10 = 2 * v10 + 2;
          if (v10 >= a3)
          {
            v10 = v22;
          }

          else if (sub_10021DA7C(a2, v6 + 40 * v22, v11 + 40))
          {
            v11 += 40;
          }

          else
          {
            v10 = v22;
          }

          result = sub_10021DA7C(a2, v11, &v26);
          v5 = v18;
        }

        while (!result);
        if (*v18 == v26)
        {
          if (*v18 == *v18 >> 31)
          {
            *(v18 + 8) = v27;
          }

          else
          {
            v24 = v27;
            *(v18 + 24) = v28;
            *(v18 + 8) = v24;
          }
        }

        else
        {
          v23 = (v26 >> 31) ^ v26;
          if (v26 >> 31 == v26)
          {
            *(v18 + 8) = v27;
          }

          else
          {
            v25 = v27;
            *(v18 + 24) = v28;
            *(v18 + 8) = v25;
          }

          *v18 = v23;
        }

        *(v18 + 32) = v29;
      }
    }
  }

  return result;
}

uint64_t sub_1002208F8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 >= 2)
  {
    v6 = *result;
    v7 = *result;
    if (*result >> 31 != *result)
    {
      v34 = *(result + 16);
      v35 = *(result + 24);
      v7 = v6 >> 31;
    }

    v30 = v7;
    v8 = 0;
    v31 = *(result + 8);
    v33 = *(result + 32);
    v9 = (a4 - 2) >> 1;
    v29 = result;
    v10 = result;
    do
    {
      v12 = v10;
      v13 = v10 + 40 * v8;
      v10 = v13 + 40;
      v14 = 2 * v8;
      v8 = (2 * v8) | 1;
      v15 = v14 + 2;
      if (v14 + 2 < a4)
      {
        v16 = v13 + 80;
        result = sub_10021DA7C(a3, v13 + 40, v13 + 80);
        if (result)
        {
          v10 = v16;
          v8 = v15;
        }
      }

      v17 = *v10;
      if (*v12 == *v10)
      {
        if (*v12 == *v12 >> 31)
        {
          *(v12 + 8) = *(v10 + 8);
        }

        else
        {
          v18 = *(v10 + 8);
          *(v12 + 24) = *(v10 + 24);
          *(v12 + 8) = v18;
        }
      }

      else
      {
        if (v17 >> 31 == v17)
        {
          *(v12 + 8) = *(v10 + 8);
        }

        else
        {
          v11 = *(v10 + 8);
          *(v12 + 24) = *(v10 + 24);
          *(v12 + 8) = v11;
        }

        *v12 = (v17 >> 31) ^ v17;
      }

      *(v12 + 32) = *(v10 + 32);
    }

    while (v8 <= v9);
    v19 = v30 ^ v6;
    v20 = *v10;
    if (v10 == a2 - 40)
    {
      v23 = v19 >> 31;
      if (v20 == v19)
      {
        *(v10 + 8) = v31;
        if (v23 != v19)
        {
          *(v10 + 16) = v34;
          *(v10 + 24) = v35;
        }
      }

      else
      {
        *(v10 + 8) = v31;
        if (v23 != v19)
        {
          *(v10 + 16) = v34;
          *(v10 + 24) = v35;
        }

        *v10 = v23 ^ v19;
      }

      *(v10 + 32) = v33;
    }

    else
    {
      v21 = *(a2 - 40);
      if (v20 == v21)
      {
        v22 = (a2 - 32);
        if (v20 == v20 >> 31)
        {
          *(v10 + 8) = *v22;
        }

        else
        {
          v25 = *v22;
          *(v10 + 24) = *(a2 - 16);
          *(v10 + 8) = v25;
        }
      }

      else
      {
        v24 = (a2 - 32);
        if (v21 >> 31 == v21)
        {
          *(v10 + 8) = *v24;
        }

        else
        {
          v26 = *v24;
          *(v10 + 24) = *(a2 - 16);
          *(v10 + 8) = v26;
        }

        *v10 = (v21 >> 31) ^ v21;
      }

      *(v10 + 32) = *(a2 - 8);
      v27 = v19 >> 31;
      if (*(a2 - 40) == v19)
      {
        v28 = v29;
        *(a2 - 32) = v31;
        if (v27 != v19)
        {
          *(a2 - 24) = v34;
          *(a2 - 16) = v35;
        }
      }

      else
      {
        v28 = v29;
        *(a2 - 32) = v31;
        if (v27 != v19)
        {
          *(a2 - 24) = v34;
          *(a2 - 16) = v35;
        }

        *(a2 - 40) = v27 ^ v19;
      }

      *(a2 - 8) = v33;
      return sub_100220C44(v28, v10 + 40, a3, 0xCCCCCCCCCCCCCCCDLL * ((v10 + 40 - v28) >> 3));
    }
  }

  return result;
}

uint64_t sub_100220C44(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 >= 2)
  {
    v6 = result;
    v7 = (a4 - 2) >> 1;
    v8 = result + 40 * v7;
    v9 = a2 - 40;
    result = sub_10021DA7C(a3, v8, a2 - 40);
    if (result)
    {
      v10 = *(a2 - 40);
      v11 = v10 >> 31;
      v12 = (a2 - 32);
      if (v10 >> 31 == v10)
      {
        *&v21 = *v12;
        v11 = v10;
      }

      else
      {
        v21 = *v12;
        v22 = *(a2 - 16);
      }

      v13 = v11 ^ v10;
      v14 = *(a2 - 8);
      v20 = v13;
      v23 = v14;
      do
      {
        v15 = v8;
        v16 = *v8;
        if (*v9 == *v8)
        {
          if (*v9 == *v9 >> 31)
          {
            *(v9 + 8) = *(v8 + 8);
          }

          else
          {
            v17 = *(v8 + 8);
            *(v9 + 24) = *(v8 + 24);
            *(v9 + 8) = v17;
          }
        }

        else
        {
          if (v16 >> 31 == v16)
          {
            *(v9 + 8) = *(v8 + 8);
          }

          else
          {
            v18 = *(v8 + 8);
            *(v9 + 24) = *(v8 + 24);
            *(v9 + 8) = v18;
          }

          *v9 = (v16 >> 31) ^ v16;
        }

        *(v9 + 32) = *(v8 + 32);
        if (!v7)
        {
          break;
        }

        v7 = (v7 - 1) >> 1;
        v8 = v6 + 40 * v7;
        result = sub_10021DA7C(a3, v8, &v20);
        v9 = v15;
      }

      while ((result & 1) != 0);
      v19 = v20;
      if (*v15 == v20)
      {
        if (*v15 == *v15 >> 31)
        {
          *(v15 + 8) = v21;
        }

        else
        {
          *(v15 + 8) = v21;
          *(v15 + 24) = v22;
        }
      }

      else
      {
        if (v20 >> 31 == v20)
        {
          *(v15 + 8) = v21;
        }

        else
        {
          *(v15 + 8) = v21;
          *(v15 + 24) = v22;
        }

        *v15 = (v19 >> 31) ^ v19;
      }

      *(v15 + 32) = v23;
    }
  }

  return result;
}

void sub_100220E40(void *a1@<X0>, _DWORD *a2@<X1>, uint64_t a3@<X2>, _DWORD *a4@<X3>, void *a5@<X8>)
{
  v6 = a1[1];
  v7 = a1[2];
  if (0x333333333333333 - v7 < a3 - v7 + v6)
  {
    goto LABEL_14;
  }

  v9 = v7 >> 61;
  v10 = 8 * v7;
  if (v9 > 4)
  {
    v11 = -1;
  }

  else
  {
    v11 = v10;
  }

  v12 = v10 / 5;
  if (v9)
  {
    v12 = v11;
  }

  v13 = v6 + a3;
  if (v13 > 0x333333333333333)
  {
LABEL_14:
    sub_10021D108("get_next_capacity, allocator's max size reached");
  }

  if (v12 >= 0x333333333333333)
  {
    v12 = 0x333333333333333;
  }

  if (v13 <= v12)
  {
    v17 = v12;
  }

  else
  {
    v17 = v13;
  }

  v18 = a2 - *a1;
  v19 = operator new(40 * v17);
  sub_100220F3C(a1, v19, v17, a2, a3, a4);
  *a5 = &v18[*a1];
}

void sub_100220F3C(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4, uint64_t a5, _DWORD *a6)
{
  v10 = *a1;
  v11 = *(a1 + 8);
  v12 = a2;
  if (*a1 != a4)
  {
    v13 = *a1;
    v12 = a2;
    do
    {
      v16 = v13 + 2;
      v15 = *v13;
      if (v15 == v15 >> 31)
      {
        *(v12 + 8) = *v16;
        v14 = v15;
      }

      else
      {
        v17 = *v16;
        *(v12 + 24) = v13[6];
        *(v12 + 8) = v17;
        v14 = *v13;
        v15 = *v13 >> 31;
      }

      *v12 = v14 ^ v15;
      *(v12 + 32) = v13[8];
      v13 += 10;
      v12 += 40;
    }

    while (v13 != a4);
  }

  v18 = &v10[10 * v11];
  if (a5)
  {
    v19 = v12 + 8;
    v20 = a5;
    do
    {
      v23 = a6 + 2;
      v22 = *a6;
      if (v22 == v22 >> 31)
      {
        *v19 = *v23;
        v21 = v22;
      }

      else
      {
        v24 = *v23;
        *(v19 + 16) = a6[6];
        *v19 = v24;
        v21 = *a6;
        v22 = *a6 >> 31;
      }

      *(v19 - 8) = v21 ^ v22;
      *(v19 + 24) = a6[8];
      a6 += 10;
      v19 += 40;
      --v20;
    }

    while (v20);
  }

  if (v18 != a4)
  {
    v25 = v12 + 40 * a5 + 8;
    do
    {
      v28 = a4 + 2;
      v27 = *a4;
      if (v27 == v27 >> 31)
      {
        *v25 = *v28;
        v26 = v27;
      }

      else
      {
        v29 = *v28;
        *(v25 + 16) = a4[6];
        *v25 = v29;
        v26 = *a4;
        v27 = *a4 >> 31;
      }

      *(v25 - 8) = v26 ^ v27;
      *(v25 + 24) = a4[8];
      a4 += 10;
      v25 += 40;
    }

    while (a4 != v18);
  }

  if (v10)
  {
    operator delete(*a1);
  }

  v30 = *(a1 + 8) + a5;
  *a1 = a2;
  *(a1 + 8) = v30;
  *(a1 + 16) = a3;
}

void sub_1002210E0(uint64_t *a1@<X1>, void *a2@<X2>, uint64_t a3@<X3>, void *a4@<X8>)
{
  v4 = *a1;
  if (*a2 != *a1)
  {
    v5 = 0xCCCCCCCCCCCCCCCDLL * ((*a2 - *a1) >> 3);
    v6 = *a3;
    v7 = *a3 >> 31;
    v10 = *(a3 + 8);
    v8 = (a3 + 8);
    v9 = v10;
    if (v7 == v6)
    {
      do
      {
        v11 = v5 >> 1;
        v12 = v4 + 40 * (v5 >> 1);
        if (*v12 == *v12 >> 31 && *(v12 + 8) < v9)
        {
          v4 = v12 + 40;
          *a1 = v12 + 40;
          v11 = v5 + ~v11;
        }

        v5 = v11;
      }

      while (v11);
    }

    else if ((v7 ^ v6) == (v7 ^ v6) >> 31)
    {
      do
      {
        v13 = v5 >> 1;
        v14 = v4 + 40 * (v5 >> 1);
        v21 = *(v8 + 4);
        if (*v14 == *v14 >> 31 && *(v14 + 8) < *v8)
        {
          v4 = v14 + 40;
          *a1 = v14 + 40;
          v13 = v5 + ~v13;
        }

        v5 = v13;
      }

      while (v13);
    }

    else
    {
      do
      {
        v15 = v5 >> 1;
        v16 = v4 + 40 * (v5 >> 1);
        v20 = *v8;
        if (*v16 == *v16 >> 31 || ((v17 = bswap64(*(v16 + 8)), v18 = bswap64(v20), v17 != v18) || (v17 = bswap64(*(v16 + 16)), v18 = bswap64(*(&v20 + 1)), v17 != v18) || (v17 = bswap32(*(v16 + 24)), v18 = bswap32(*(v8 + 4)), v17 != v18)) && (v17 < v18 ? (v19 = -1) : (v19 = 1), v19 < 0))
        {
          v4 = v16 + 40;
          *a1 = v16 + 40;
          v15 = v5 + ~v15;
        }

        v5 = v15;
      }

      while (v15);
    }
  }

  *a4 = v4;
}

uint64_t sub_1002212BC(uint64_t a1, uint64_t a2, int *a3)
{
  v3 = 0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 8) - *a1) >> 1);
  v4 = v3 + 1;
  if (v3 + 1 > 0x1999999999999999)
  {
    sub_10000FC84();
  }

  if (0x999999999999999ALL * ((*(a1 + 16) - *a1) >> 1) > v4)
  {
    v4 = 0x999999999999999ALL * ((*(a1 + 16) - *a1) >> 1);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 16) - *a1) >> 1) >= 0xCCCCCCCCCCCCCCCLL)
  {
    v7 = 0x1999999999999999;
  }

  else
  {
    v7 = v4;
  }

  if (v7)
  {
    if (v7 <= 0x1999999999999999)
    {
      operator new();
    }

    sub_10000D444();
  }

  v18 = &v17;
  if (*a2 != *a2 >> 31)
  {
    sub_10017910C();
  }

  sub_10021AAE0(&v15, *(a2 + 8));
  v8 = 10 * v3;
  v9 = *a3;
  v10 = v15;
  *(v8 + 4) = v16;
  *v8 = v10;
  *(v8 + 6) = v9;
  v11 = *a1;
  v12 = *(a1 + 8) - *a1;
  v13 = (10 * v3 - v12);
  memcpy(v13, *a1, v12);
  *a1 = v13;
  *(a1 + 8) = 10 * v3 + 10;
  *(a1 + 16) = 0;
  if (v11)
  {
    operator delete(v11);
  }

  return 10 * v3 + 10;
}

void sub_100221430(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

char *sub_100221448(char **a1, _DWORD *a2, int *a3)
{
  v3 = 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 3);
  v4 = v3 + 1;
  if (v3 + 1 > 0x666666666666666)
  {
    sub_10000FC84();
  }

  if (0x999999999999999ALL * ((a1[2] - *a1) >> 3) > v4)
  {
    v4 = 0x999999999999999ALL * ((a1[2] - *a1) >> 3);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 3) >= 0x333333333333333)
  {
    v6 = 0x666666666666666;
  }

  else
  {
    v6 = v4;
  }

  if (v6)
  {
    if (v6 <= 0x666666666666666)
    {
      operator new();
    }

    sub_10000D444();
  }

  v8 = (8 * ((a1[1] - *a1) >> 3));
  v10 = a2 + 2;
  v9 = *a2;
  v7 = *a2 >> 31;
  if (v7 == *a2)
  {
    *(8 * ((a1[1] - *a1) >> 3) + 8) = *v10;
    v7 = v9;
  }

  else
  {
    *(8 * ((a1[1] - *a1) >> 3) + 8) = *v10;
    v8[6] = a2[6];
  }

  v11 = *a1;
  v12 = a1[1];
  v13 = v8 - (v12 - *a1);
  *v8 = v7 ^ v9;
  v8[8] = *a3;
  v14 = (v8 + 10);
  if (v12 != v11)
  {
    v15 = 40 * v3 - 8 * ((v12 - v11) >> 3) + 8;
    v16 = v13;
    do
    {
      v20 = v11 + 8;
      v19 = *v11;
      if (v19 == v19 >> 31)
      {
        *v15 = *v20;
        v18 = v19;
      }

      else
      {
        v17 = *v20;
        *(v15 + 16) = *(v11 + 6);
        *v15 = v17;
        v18 = *v11;
        v19 = *v11 >> 31;
      }

      *(v15 - 8) = v18 ^ v19;
      *(v16 + 8) = *(v11 + 8);
      v11 += 40;
      v16 += 40;
      v15 += 40;
    }

    while (v11 != v12);
    v11 = *a1;
  }

  *a1 = v13;
  a1[1] = v14;
  a1[2] = 0;
  if (v11)
  {
    operator delete(v11);
  }

  return v14;
}

uint64_t sub_100221628(uint64_t result, int *a2, uint64_t *a3, uint64_t a4, char a5)
{
  v7 = result;
LABEL_2:
  v207 = a2 - 8;
  v8 = v7;
LABEL_3:
  while (1)
  {
    v7 = v8;
    v9 = (a2 - v8) >> 5;
    if (v9 <= 2)
    {
      break;
    }

    switch(v9)
    {
      case 3:
        return sub_100222C40(v8, v8 + 32, v207, a3);
      case 4:
        return sub_100223328(v8, v8 + 32, v8 + 64, v207, a3);
      case 5:
        return sub_100223774(v8, v8 + 32, v8 + 64, v8 + 96, v207, a3);
    }

LABEL_10:
    if (v9 <= 23)
    {
      if (a5)
      {
        if (v8 != a2)
        {
          v103 = v8 + 32;
          if ((v8 + 32) != a2)
          {
            v104 = 0;
            v105 = v8;
            do
            {
              v170 = v103;
              v171 = sub_100219500(*a3, v103);
              result = sub_100219500(*a3, v105);
              v172 = a2;
              if (v171 < result)
              {
                v173 = *v170;
                v174 = *v170 >> 31;
                if (v173 >> 31 == v173)
                {
                  *&v215 = *(v105 + 40);
                  v174 = v173;
                }

                else
                {
                  v215 = *(v105 + 40);
                  v216 = *(v105 + 56);
                }

                LODWORD(v214) = v174 ^ v173;
                v175 = v104;
                while (1)
                {
                  v176 = v8 + v175;
                  v177 = *(v8 + v175 + 32);
                  v178 = *(v8 + v175);
                  if (v177 == v178)
                  {
                    if (v177 == v177 >> 31)
                    {
                      *(v176 + 40) = *(v176 + 8);
                    }

                    else
                    {
                      *(v176 + 40) = *(v176 + 8);
                      *(v176 + 56) = *(v176 + 24);
                    }
                  }

                  else
                  {
                    if (v178 >> 31 == v178)
                    {
                      *(v176 + 40) = *(v176 + 8);
                    }

                    else
                    {
                      *(v176 + 40) = *(v176 + 8);
                      *(v176 + 56) = *(v176 + 24);
                    }

                    *(v176 + 32) = (v178 >> 31) ^ v178;
                  }

                  if (!v175)
                  {
                    break;
                  }

                  v179 = sub_100219500(*a3, &v214);
                  result = sub_100219500(*a3, v8 + v175 - 32);
                  v175 -= 32;
                  if (v179 >= result)
                  {
                    v180 = v8 + v175 + 32;
                    v181 = *v180;
                    v182 = v214;
                    v172 = a2;
                    if (*v180 != v214)
                    {
                      goto LABEL_276;
                    }

LABEL_279:
                    if (v181 == v181 >> 31)
                    {
                      *(v180 + 8) = v215;
                    }

                    else
                    {
                      v183 = v215;
                      *(v180 + 24) = v216;
                      *(v180 + 8) = v183;
                    }

                    goto LABEL_259;
                  }
                }

                v180 = v8;
                v181 = *v8;
                v182 = v214;
                v172 = a2;
                if (*v8 == v214)
                {
                  goto LABEL_279;
                }

LABEL_276:
                if (v182 >> 31 == v182)
                {
                  *(v180 + 8) = v215;
                }

                else
                {
                  v169 = v215;
                  *(v180 + 24) = v216;
                  *(v180 + 8) = v169;
                }

                *v180 = (v182 >> 31) ^ v182;
              }

LABEL_259:
              v103 = (v170 + 8);
              v104 += 32;
              v105 = v170;
            }

            while (v170 + 8 != v172);
          }
        }
      }

      else if (v8 != a2)
      {
        v184 = v8 + 32;
        if ((v8 + 32) != a2)
        {
          v185 = v8 - 32;
          do
          {
            v187 = v184;
            v188 = sub_100219500(*a3, v184);
            result = sub_100219500(*a3, v7);
            if (v188 < result)
            {
              v189 = *v187;
              v190 = *v187 >> 31;
              if (v189 >> 31 == v189)
              {
                *&v215 = *(v7 + 40);
                v190 = v189;
              }

              else
              {
                v215 = *(v7 + 40);
                v216 = *(v7 + 56);
              }

              LODWORD(v214) = v190 ^ v189;
              v191 = v185;
              do
              {
                v192 = *(v191 + 64);
                v193 = *(v191 + 32);
                if (v192 == v193)
                {
                  if (v192 == v192 >> 31)
                  {
                    *(v191 + 72) = *(v191 + 40);
                  }

                  else
                  {
                    *(v191 + 72) = *(v191 + 40);
                    *(v191 + 88) = *(v191 + 56);
                  }
                }

                else
                {
                  if (v193 >> 31 == v193)
                  {
                    *(v191 + 72) = *(v191 + 40);
                  }

                  else
                  {
                    *(v191 + 72) = *(v191 + 40);
                    *(v191 + 88) = *(v191 + 56);
                  }

                  *(v191 + 64) = (v193 >> 31) ^ v193;
                }

                v194 = sub_100219500(*a3, &v214);
                result = sub_100219500(*a3, v191);
                v191 -= 32;
              }

              while (v194 < result);
              v195 = *(v191 + 64);
              if (v195 == v214)
              {
                if (v195 == v195 >> 31)
                {
                  *(v191 + 72) = v215;
                }

                else
                {
                  v197 = v215;
                  *(v191 + 88) = v216;
                  *(v191 + 72) = v197;
                }
              }

              else
              {
                v196 = (v214 >> 31) ^ v214;
                if (v214 >> 31 == v214)
                {
                  *(v191 + 72) = v215;
                }

                else
                {
                  v186 = v215;
                  *(v191 + 88) = v216;
                  *(v191 + 72) = v186;
                }

                *(v191 + 64) = v196;
              }
            }

            v184 = (v187 + 8);
            v185 += 32;
            v7 = v187;
          }

          while (v187 + 8 != a2);
        }
      }

      return result;
    }

    if (!a4)
    {
      if (v8 == a2)
      {
        return result;
      }

      v106 = (v9 - 2) >> 1;
      v208 = v106;
      do
      {
        v108 = v106;
        if (v208 >= v106)
        {
          v109 = (2 * v106) | 1;
          v110 = v7 + 32 * v109;
          if (2 * v106 + 2 < v9)
          {
            v111 = sub_100219500(*a3, v7 + 32 * v109);
            if (v111 < sub_100219500(*a3, v110 + 32))
            {
              v110 += 32;
              v109 = 2 * v108 + 2;
            }
          }

          v112 = sub_100219500(*a3, v110);
          v113 = v7 + 32 * v108;
          result = sub_100219500(*a3, v113);
          if (v112 >= result)
          {
            v115 = (v113 + 8);
            v114 = *v113;
            v116 = *v113 >> 31;
            if (v114 >> 31 == v114)
            {
              *&v215 = *v115;
              v116 = v114;
            }

            else
            {
              v117 = *v115;
              v216 = *(v113 + 24);
              v215 = v117;
            }

            LODWORD(v214) = v116 ^ v114;
            do
            {
              v118 = v110;
              v119 = *v110;
              if (*v113 == *v110)
              {
                if (*v113 == *v113 >> 31)
                {
                  *(v113 + 8) = *(v110 + 8);
                }

                else
                {
                  v120 = *(v110 + 8);
                  *(v113 + 24) = *(v110 + 24);
                  *(v113 + 8) = v120;
                }
              }

              else
              {
                if (v119 >> 31 == v119)
                {
                  *(v113 + 8) = *(v110 + 8);
                }

                else
                {
                  v121 = *(v110 + 8);
                  *(v113 + 24) = *(v110 + 24);
                  *(v113 + 8) = v121;
                }

                *v113 = (v119 >> 31) ^ v119;
              }

              if (v208 < v109)
              {
                break;
              }

              v122 = (2 * v109) | 1;
              v110 = v7 + 32 * v122;
              v109 = 2 * v109 + 2;
              if (v109 >= v9)
              {
                v109 = v122;
              }

              else
              {
                v123 = sub_100219500(*a3, v7 + 32 * v122);
                if (v123 >= sub_100219500(*a3, v110 + 32))
                {
                  v109 = v122;
                }

                else
                {
                  v110 += 32;
                }
              }

              v124 = sub_100219500(*a3, v110);
              result = sub_100219500(*a3, &v214);
              v113 = v118;
            }

            while (v124 >= result);
            if (*v118 == v214)
            {
              if (*v118 == *v118 >> 31)
              {
                *(v118 + 8) = v215;
              }

              else
              {
                v126 = v215;
                *(v118 + 24) = v216;
                *(v118 + 8) = v126;
              }
            }

            else
            {
              v125 = (v214 >> 31) ^ v214;
              if (v214 >> 31 == v214)
              {
                *(v118 + 8) = v215;
              }

              else
              {
                v107 = v215;
                *(v118 + 24) = v216;
                *(v118 + 8) = v107;
              }

              *v118 = v125;
            }
          }
        }

        v106 = v108 - 1;
      }

      while (v108);
      while (2)
      {
        v204 = *(v7 + 8);
        v209 = a2;
        v211 = *v7;
        if (*v7 >> 31 == *v7)
        {
          v206 = *v7;
        }

        else
        {
          v206 = *v7 >> 31;
          v212 = *(v7 + 16);
          v213 = *(v7 + 24);
        }

        v128 = 0;
        v129 = v7;
        do
        {
          v131 = v129;
          v132 = v129 + 32 * v128;
          v129 = v132 + 32;
          v133 = 2 * v128;
          v128 = (2 * v128) | 1;
          v134 = v133 + 2;
          if (v133 + 2 < v9)
          {
            v135 = sub_100219500(*a3, v132 + 32);
            v136 = v132 + 64;
            result = sub_100219500(*a3, v136);
            if (v135 < result)
            {
              v129 = v136;
              v128 = v134;
            }
          }

          v137 = *v129;
          if (*v131 == *v129)
          {
            if (*v131 == *v131 >> 31)
            {
              *(v131 + 8) = *(v129 + 8);
            }

            else
            {
              v138 = *(v129 + 8);
              *(v131 + 24) = *(v129 + 24);
              *(v131 + 8) = v138;
            }
          }

          else
          {
            if (v137 >> 31 == v137)
            {
              *(v131 + 8) = *(v129 + 8);
            }

            else
            {
              v130 = *(v129 + 8);
              *(v131 + 24) = *(v129 + 24);
              *(v131 + 8) = v130;
            }

            *v131 = (v137 >> 31) ^ v137;
          }
        }

        while (v128 <= ((v9 - 2) >> 1));
        v139 = v206 ^ v211;
        v140 = v209 - 8;
        v141 = *v129;
        a2 = v209 - 8;
        if (v129 == v209 - 8)
        {
          v145 = v139 >> 31;
          if (v141 == v139)
          {
            *(v129 + 8) = v204;
            if (v145 != v139)
            {
              *(v129 + 16) = v212;
              *(v129 + 24) = v213;
            }
          }

          else
          {
            *(v129 + 8) = v204;
            if (v145 != v139)
            {
              *(v129 + 16) = v212;
              *(v129 + 24) = v213;
            }

            *v129 = v145 ^ v139;
          }

          goto LABEL_192;
        }

        v142 = *v140;
        if (v141 == *v140)
        {
          v143 = v209 - 6;
          if (v141 == v141 >> 31)
          {
            *(v129 + 8) = *v143;
            v144 = v139 >> 31;
            if (*v140 != v139)
            {
              break;
            }

LABEL_229:
            if (v144 == v139)
            {
              *(v209 - 3) = v204;
              v152 = (v129 + 32 - v7) >> 5;
              v127 = v152 < 2;
              v150 = v152 - 2;
              if (!v127)
              {
                goto LABEL_233;
              }

LABEL_192:
              v127 = v9-- <= 2;
              if (v127)
              {
                return result;
              }

              continue;
            }

            *(v209 - 3) = v204;
            *(v209 - 2) = v213;
            *(v209 - 2) = v212;
            v153 = (v129 + 32 - v7) >> 5;
            v127 = v153 < 2;
            v150 = v153 - 2;
            if (v127)
            {
              goto LABEL_192;
            }

LABEL_233:
            v154 = v150 >> 1;
            v155 = v7 + 32 * (v150 >> 1);
            v156 = sub_100219500(*a3, v155);
            result = sub_100219500(*a3, v129);
            if (v156 < result)
            {
              v158 = (v129 + 8);
              v157 = *v129;
              v159 = *v129 >> 31;
              if (v157 >> 31 == v157)
              {
                *&v215 = *v158;
                v159 = v157;
              }

              else
              {
                v160 = *v158;
                v216 = *(v129 + 24);
                v215 = v160;
              }

              LODWORD(v214) = v159 ^ v157;
              do
              {
                v161 = v155;
                v162 = *v155;
                if (*v129 == *v155)
                {
                  if (*v129 == *v129 >> 31)
                  {
                    *(v129 + 8) = *(v155 + 8);
                  }

                  else
                  {
                    v163 = *(v155 + 8);
                    *(v129 + 24) = *(v155 + 24);
                    *(v129 + 8) = v163;
                  }
                }

                else
                {
                  if (v162 >> 31 == v162)
                  {
                    *(v129 + 8) = *(v155 + 8);
                  }

                  else
                  {
                    v164 = *(v155 + 8);
                    *(v129 + 24) = *(v155 + 24);
                    *(v129 + 8) = v164;
                  }

                  *v129 = (v162 >> 31) ^ v162;
                }

                if (!v154)
                {
                  break;
                }

                v154 = (v154 - 1) >> 1;
                v155 = v7 + 32 * v154;
                v165 = sub_100219500(*a3, v155);
                result = sub_100219500(*a3, &v214);
                v129 = v161;
              }

              while (v165 < result);
              if (*v161 == v214)
              {
                if (*v161 == *v161 >> 31)
                {
                  *(v161 + 8) = v215;
                }

                else
                {
                  v167 = v215;
                  *(v161 + 24) = v216;
                  *(v161 + 8) = v167;
                }
              }

              else
              {
                v166 = (v214 >> 31) ^ v214;
                if (v214 >> 31 == v214)
                {
                  *(v161 + 8) = v215;
                }

                else
                {
                  v168 = v215;
                  *(v161 + 24) = v216;
                  *(v161 + 8) = v168;
                }

                *v161 = v166;
              }
            }

            goto LABEL_192;
          }

          v148 = *v143;
          *(v129 + 24) = *(v209 - 2);
          *(v129 + 8) = v148;
          v144 = v139 >> 31;
          if (*v140 == v139)
          {
            goto LABEL_229;
          }
        }

        else
        {
          v146 = (v142 >> 31) ^ v142;
          v147 = v209 - 6;
          if (v142 >> 31 == v142)
          {
            *(v129 + 8) = *v147;
            *v129 = v146;
            v144 = v139 >> 31;
            if (*v140 == v139)
            {
              goto LABEL_229;
            }
          }

          else
          {
            v151 = *v147;
            *(v129 + 24) = *(v209 - 2);
            *(v129 + 8) = v151;
            *v129 = v146;
            v144 = v139 >> 31;
            if (*v140 == v139)
            {
              goto LABEL_229;
            }
          }
        }

        break;
      }

      *(v209 - 3) = v204;
      if (v144 != v139)
      {
        *(v209 - 2) = v213;
        *(v209 - 2) = v212;
      }

      *(v209 - 8) = v144 ^ v139;
      v149 = (v129 + 32 - v7) >> 5;
      v127 = v149 < 2;
      v150 = v149 - 2;
      if (v127)
      {
        goto LABEL_192;
      }

      goto LABEL_233;
    }

    v10 = v8 + 32 * (v9 >> 1);
    if (v9 < 0x81)
    {
      sub_100222C40(v8 + 32 * (v9 >> 1), v8, v207, a3);
      goto LABEL_19;
    }

    sub_100222C40(v8, v8 + 32 * (v9 >> 1), v207, a3);
    sub_100222C40(v8 + 32, v10 - 32, (a2 - 16), a3);
    sub_100222C40(v8 + 64, v10 + 32, (a2 - 24), a3);
    sub_100222C40(v10 - 32, v8 + 32 * (v9 >> 1), v10 + 32, a3);
    v11 = *v8;
    v12 = *v8 >> 31;
    v14 = (v8 + 8);
    v13 = *(v8 + 8);
    if (v12 == *v8)
    {
      v15 = *v10;
      if (v11 == *v10)
      {
        v16 = 0;
        *v14 = *(v10 + 8);
        v17 = 0;
        if (!*v10)
        {
          goto LABEL_16;
        }

        goto LABEL_66;
      }

      v16 = 0;
    }

    else
    {
      v214 = *(v8 + 16);
      LODWORD(v215) = *(v8 + 24);
      v16 = v12 ^ v11;
      v15 = *v10;
      if (v11 == *v10)
      {
        v49 = *(v10 + 8);
        *(v8 + 24) = *(v10 + 24);
        *v14 = v49;
        v17 = v16 >> 31;
        if (*v10 == v16)
        {
          goto LABEL_16;
        }

        goto LABEL_66;
      }
    }

    v57 = (v15 >> 31) ^ v15;
    if (v15 >> 31 == v15)
    {
      *(v8 + 8) = *(v10 + 8);
      *v8 = v57;
      v17 = v16 >> 31;
      if (*v10 == v16)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v60 = *(v10 + 8);
      *(v8 + 24) = *(v10 + 24);
      *v14 = v60;
      *v8 = v57;
      v17 = v16 >> 31;
      if (*v10 == v16)
      {
LABEL_16:
        *(v10 + 8) = v13;
        if (v17 != v16)
        {
          v58 = v214;
          *(v10 + 24) = v215;
          *(v10 + 16) = v58;
        }

        goto LABEL_19;
      }
    }

LABEL_66:
    *(v10 + 8) = v13;
    if (v17 != v16)
    {
      v59 = v214;
      *(v10 + 24) = v215;
      *(v10 + 16) = v59;
    }

    *v10 = v17 ^ v16;
LABEL_19:
    --a4;
    if ((a5 & 1) == 0)
    {
      v18 = sub_100219500(*a3, v8 - 32);
      if (v18 >= sub_100219500(*a3, v8))
      {
        v62 = (v8 + 8);
        v61 = *v8;
        v63 = *v8 >> 31;
        if (v61 >> 31 == v61)
        {
          *&v215 = *v62;
          v63 = v61;
        }

        else
        {
          v64 = *v62;
          v216 = *(v8 + 24);
          v215 = v64;
        }

        LODWORD(v214) = v63 ^ v61;
        v65 = sub_100219500(*a3, &v214);
        result = sub_100219500(*a3, v207);
        if (v65 >= result)
        {
          v67 = v8 + 32;
          do
          {
            v8 = v67;
            if (v67 >= a2)
            {
              break;
            }

            v68 = sub_100219500(*a3, &v214);
            result = sub_100219500(*a3, v8);
            v67 = v8 + 32;
          }

          while (v68 >= result);
        }

        else
        {
          do
          {
            v66 = sub_100219500(*a3, &v214);
            v8 += 32;
            result = sub_100219500(*a3, v8);
          }

          while (v66 >= result);
        }

        v69 = a2;
        if (v8 < a2)
        {
          v69 = a2;
          do
          {
            v70 = sub_100219500(*a3, &v214);
            v69 -= 32;
            result = sub_100219500(*a3, v69);
          }

          while (v70 < result);
        }

        while (1)
        {
          if (v8 >= v69)
          {
            v83 = (v8 - 32);
            if (v8 - 32 != v7)
            {
              v84 = *v83;
              if (*v7 == *v83)
              {
                v85 = (v8 - 24);
                if (*v7 == *v7 >> 31)
                {
                  *v62 = *v85;
                }

                else
                {
                  v87 = *v85;
                  *(v7 + 24) = *(v8 - 8);
                  *v62 = v87;
                }
              }

              else
              {
                v86 = (v8 - 24);
                if (v84 >> 31 == v84)
                {
                  *(v7 + 8) = *v86;
                }

                else
                {
                  v88 = *v86;
                  *(v7 + 24) = *(v8 - 8);
                  *v62 = v88;
                }

                *v7 = (v84 >> 31) ^ v84;
              }
            }

            v89 = *v83;
            if (*v83 == v214)
            {
              v90 = (v8 - 24);
              if (v89 == v89 >> 31)
              {
                *v90 = v215;
              }

              else
              {
                v93 = v215;
                *(v8 - 8) = v216;
                *v90 = v93;
              }

              a5 = 0;
            }

            else
            {
              v91 = (v214 >> 31) ^ v214;
              v92 = (v8 - 24);
              if (v214 >> 31 == v214)
              {
                *v92 = v215;
              }

              else
              {
                v94 = v215;
                *(v8 - 8) = v216;
                *v92 = v94;
              }

              *v83 = v91;
              a5 = 0;
            }

            goto LABEL_3;
          }

          v71 = *v8;
          v72 = *v8 >> 31;
          v74 = (v8 + 8);
          v73 = *(v8 + 8);
          if (v72 == *v8)
          {
            v75 = *v69;
            if (v71 == *v69)
            {
              v76 = 0;
              *v74 = *(v69 + 8);
              v77 = 0;
              if (!*v69)
              {
                goto LABEL_106;
              }

              goto LABEL_110;
            }

            v76 = 0;
          }

          else
          {
            v212 = *(v8 + 16);
            v213 = *(v8 + 24);
            v76 = v72 ^ v71;
            v75 = *v69;
            if (v71 == *v69)
            {
              v78 = *(v69 + 8);
              *(v8 + 24) = *(v69 + 24);
              *v74 = v78;
              v77 = v76 >> 31;
              if (*v69 == v76)
              {
                goto LABEL_106;
              }

              goto LABEL_110;
            }
          }

          v79 = (v75 >> 31) ^ v75;
          if (v75 >> 31 == v75)
          {
            *(v8 + 8) = *(v69 + 8);
            *v8 = v79;
            v77 = v76 >> 31;
            if (*v69 == v76)
            {
              goto LABEL_106;
            }
          }

          else
          {
            v82 = *(v69 + 8);
            *(v8 + 24) = *(v69 + 24);
            *v74 = v82;
            *v8 = v79;
            v77 = v76 >> 31;
            if (*v69 == v76)
            {
LABEL_106:
              *(v69 + 8) = v73;
              if (v77 != v76)
              {
                *(v69 + 16) = v212;
                *(v69 + 24) = v213;
              }

              goto LABEL_119;
            }
          }

LABEL_110:
          *(v69 + 8) = v73;
          if (v77 != v76)
          {
            *(v69 + 16) = v212;
            *(v69 + 24) = v213;
          }

          *v69 = v77 ^ v76;
          do
          {
LABEL_119:
            v80 = sub_100219500(*a3, &v214);
            v8 += 32;
          }

          while (v80 >= sub_100219500(*a3, v8));
          do
          {
            v81 = sub_100219500(*a3, &v214);
            v69 -= 32;
            result = sub_100219500(*a3, v69);
          }

          while (v81 < result);
        }
      }
    }

    v20 = (v8 + 8);
    v19 = *v8;
    v21 = *v8 >> 31;
    if (v19 >> 31 == v19)
    {
      *&v215 = *v20;
      v21 = v19;
    }

    else
    {
      v22 = *v20;
      v216 = *(v8 + 24);
      v215 = v22;
    }

    v23 = 0;
    LODWORD(v214) = v21 ^ v19;
    do
    {
      v24 = sub_100219500(*a3, v8 + v23 + 32);
      v23 += 32;
    }

    while (v24 < sub_100219500(*a3, &v214));
    v25 = v8 + v23;
    v26 = a2;
    if (v23 == 32)
    {
      v26 = a2;
      do
      {
        if (v25 >= v26)
        {
          break;
        }

        v26 -= 32;
        v28 = sub_100219500(*a3, v26);
      }

      while (v28 >= sub_100219500(*a3, &v214));
    }

    else
    {
      do
      {
        v26 -= 32;
        v27 = sub_100219500(*a3, v26);
      }

      while (v27 >= sub_100219500(*a3, &v214));
    }

    v8 = v7 + v23;
    if (v25 < v26)
    {
      v29 = v26;
      do
      {
        v30 = *v8;
        v31 = *v8 >> 31;
        v33 = (v8 + 8);
        v32 = *(v8 + 8);
        if (v31 == *v8)
        {
          v34 = *v29;
          if (v30 == *v29)
          {
            v35 = 0;
            *v33 = *(v29 + 8);
            v36 = 0;
            if (*v29)
            {
              goto LABEL_41;
            }

            goto LABEL_37;
          }

          v35 = 0;
        }

        else
        {
          v212 = *(v8 + 16);
          v213 = *(v8 + 24);
          v35 = v31 ^ v30;
          v34 = *v29;
          if (v30 == *v29)
          {
            v37 = *(v29 + 8);
            *(v8 + 24) = *(v29 + 24);
            *v33 = v37;
            v36 = v35 >> 31;
            if (*v29 != v35)
            {
              goto LABEL_41;
            }

            goto LABEL_37;
          }
        }

        v38 = (v34 >> 31) ^ v34;
        if (v34 >> 31 == v34)
        {
          *(v8 + 8) = *(v29 + 8);
          *v8 = v38;
          v36 = v35 >> 31;
          if (*v29 != v35)
          {
            goto LABEL_41;
          }
        }

        else
        {
          v41 = *(v29 + 8);
          *(v8 + 24) = *(v29 + 24);
          *v33 = v41;
          *v8 = v38;
          v36 = v35 >> 31;
          if (*v29 != v35)
          {
LABEL_41:
            *(v29 + 8) = v32;
            if (v36 != v35)
            {
              *(v29 + 16) = v212;
              *(v29 + 24) = v213;
            }

            *v29 = v36 ^ v35;
            goto LABEL_50;
          }
        }

LABEL_37:
        *(v29 + 8) = v32;
        if (v36 != v35)
        {
          *(v29 + 16) = v212;
          *(v29 + 24) = v213;
        }

        do
        {
LABEL_50:
          v8 += 32;
          v39 = sub_100219500(*a3, v8);
        }

        while (v39 < sub_100219500(*a3, &v214));
        do
        {
          v29 -= 32;
          v40 = sub_100219500(*a3, v29);
        }

        while (v40 >= sub_100219500(*a3, &v214));
      }

      while (v8 < v29);
    }

    v42 = (v8 - 32);
    if (v8 - 32 == v7)
    {
      goto LABEL_70;
    }

    v43 = *v42;
    if (*v7 == *v42)
    {
      v44 = (v8 - 24);
      if (*v7 == *v7 >> 31)
      {
        *v20 = *v44;
        v45 = *v42;
        v46 = v214;
        if (*v42 == v214)
        {
          goto LABEL_71;
        }

        goto LABEL_75;
      }

      v50 = *v44;
      *(v7 + 24) = *(v8 - 8);
      *v20 = v50;
LABEL_70:
      v45 = *v42;
      v46 = v214;
      if (*v42 == v214)
      {
        goto LABEL_71;
      }

      goto LABEL_75;
    }

    v47 = (v43 >> 31) ^ v43;
    v48 = (v8 - 24);
    if (v43 >> 31 == v43)
    {
      *(v7 + 8) = *v48;
      *v7 = v47;
      v45 = *v42;
      v46 = v214;
      if (*v42 == v214)
      {
        goto LABEL_71;
      }
    }

    else
    {
      v53 = *v48;
      *(v7 + 24) = *(v8 - 8);
      *v20 = v53;
      *v7 = v47;
      v45 = *v42;
      v46 = v214;
      if (*v42 == v214)
      {
LABEL_71:
        v51 = (v8 - 24);
        if (v45 == v45 >> 31)
        {
          *v51 = v215;
        }

        else
        {
          v52 = v215;
          *(v8 - 8) = v216;
          *v51 = v52;
        }

        goto LABEL_79;
      }
    }

LABEL_75:
    v54 = (v8 - 24);
    if (v46 >> 31 == v46)
    {
      *v54 = v215;
    }

    else
    {
      v55 = v215;
      *(v8 - 8) = v216;
      *v54 = v55;
    }

    *v42 = (v46 >> 31) ^ v46;
LABEL_79:
    if (v25 >= v26)
    {
      v56 = sub_100223CE8(v7, (v8 - 32), a3);
      result = sub_100223CE8(v8, a2, a3);
      if (result)
      {
        a2 = (v8 - 32);
        if (v56)
        {
          return result;
        }

        goto LABEL_2;
      }

      if (v56)
      {
        continue;
      }
    }

    result = sub_100221628(v7, v8 - 32, a3, a4, a5 & 1);
    a5 = 0;
  }

  if (v9 < 2)
  {
    return result;
  }

  if (v9 != 2)
  {
    goto LABEL_10;
  }

  v95 = sub_100219500(*a3, v207);
  result = sub_100219500(*a3, v8);
  if (v95 >= result)
  {
    return result;
  }

  v96 = *v8;
  v97 = *v8 >> 31;
  v99 = (v8 + 8);
  v98 = *(v8 + 8);
  if (v97 != *v8)
  {
    v214 = *(v8 + 16);
    LODWORD(v215) = *(v8 + 24);
    v102 = v97 ^ v96;
    v100 = a2;
    v101 = *v207;
    if (v96 == *v207)
    {
      v198 = *(a2 - 6);
      *(v8 + 24) = *(a2 - 2);
      *v99 = v198;
      goto LABEL_314;
    }

LABEL_310:
    v199 = v100 - 6;
    if (v101 >> 31 == v101)
    {
      *(v8 + 8) = *v199;
    }

    else
    {
      v200 = *v199;
      *(v8 + 24) = *(v100 - 2);
      *v99 = v200;
    }

    *v8 = (v101 >> 31) ^ v101;
    goto LABEL_314;
  }

  v100 = a2;
  v101 = *v207;
  v102 = 0;
  if (v96 != *v207)
  {
    goto LABEL_310;
  }

  *v99 = *(a2 - 3);
LABEL_314:
  v201 = v102 >> 31;
  if (*v207 == v102)
  {
    *(v100 - 3) = v98;
    if (v201 != v102)
    {
      v202 = v214;
      *(v100 - 2) = v215;
      *(v100 - 2) = v202;
    }
  }

  else
  {
    *(v100 - 3) = v98;
    if (v201 != v102)
    {
      v203 = v214;
      *(v100 - 2) = v215;
      *(v100 - 2) = v203;
    }

    *(v100 - 8) = v201 ^ v102;
  }

  return result;
}

uint64_t sub_100222C40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_100219500(*a4, a2);
  v9 = sub_100219500(*a4, a1);
  v10 = sub_100219500(*a4, a3);
  result = sub_100219500(*a4, a2);
  if (v8 < v9)
  {
    if (v10 < result)
    {
      v12 = *a1;
      v13 = *a1 >> 31;
      v14 = *(a1 + 8);
      if (v13 == *a1)
      {
        v15 = *a3;
        if (v12 == *a3)
        {
          v16 = 0;
          *(a1 + 8) = *(a3 + 8);
          v17 = 0;
          if (!*a3)
          {
            goto LABEL_6;
          }

LABEL_21:
          v32 = v17 ^ v16;
          if (v17 == v16)
          {
LABEL_22:
            *(a3 + 8) = v14;
LABEL_61:
            *a3 = v32;
            return result;
          }

LABEL_60:
          *(a3 + 8) = v14;
          *(a3 + 16) = v60;
          *(a3 + 24) = v61;
          goto LABEL_61;
        }

        v16 = 0;
      }

      else
      {
        v60 = *(a1 + 16);
        v61 = *(a1 + 24);
        v16 = v13 ^ v12;
        v15 = *a3;
        if (v12 == *a3)
        {
          v31 = *(a3 + 8);
          *(a1 + 24) = *(a3 + 24);
          *(a1 + 8) = v31;
          v17 = v16 >> 31;
          if (*a3 != v16)
          {
            goto LABEL_21;
          }

          goto LABEL_6;
        }
      }

      v35 = (v15 >> 31) ^ v15;
      if (v15 >> 31 == v15)
      {
        *(a1 + 8) = *(a3 + 8);
        *a1 = v35;
        v17 = v16 >> 31;
        if (*a3 != v16)
        {
          goto LABEL_21;
        }
      }

      else
      {
        v53 = *(a3 + 8);
        *(a1 + 24) = *(a3 + 24);
        *(a1 + 8) = v53;
        *a1 = v35;
        v17 = v16 >> 31;
        if (*a3 != v16)
        {
          goto LABEL_21;
        }
      }

LABEL_6:
      if (v17 == v16)
      {
LABEL_7:
        *(a3 + 8) = v14;
        return result;
      }

      goto LABEL_89;
    }

    v25 = *a1;
    v26 = *a1 >> 31;
    v27 = *(a1 + 8);
    if (v26 == *a1)
    {
      v28 = *a2;
      if (v25 == *a2)
      {
        v29 = 0;
        *(a1 + 8) = *(a2 + 8);
        v30 = 0;
        if (!*a2)
        {
          goto LABEL_17;
        }

LABEL_29:
        *(a2 + 8) = v27;
        if (v30 != v29)
        {
          *(a2 + 16) = v60;
          *(a2 + 24) = v61;
        }

        *a2 = v30 ^ v29;
LABEL_55:
        v46 = sub_100219500(*a4, a3);
        result = sub_100219500(*a4, a2);
        if (v46 >= result)
        {
          return result;
        }

        v47 = *a2;
        v48 = *a2 >> 31;
        v49 = (a2 + 8);
        v14 = *(a2 + 8);
        if (v48 == *a2)
        {
          v50 = *a3;
          if (v47 == *a3)
          {
            v51 = 0;
            *v49 = *(a3 + 8);
            v52 = 0;
            if (*a3)
            {
              goto LABEL_59;
            }

LABEL_88:
            if (v52 == v51)
            {
              goto LABEL_7;
            }

LABEL_89:
            *(a3 + 8) = v14;
            *(a3 + 16) = v60;
            *(a3 + 24) = v61;
            return result;
          }

          v51 = 0;
        }

        else
        {
          v60 = *(a2 + 16);
          v61 = *(a2 + 24);
          v51 = v48 ^ v47;
          v50 = *a3;
          if (v47 == *a3)
          {
            v57 = *(a3 + 8);
            *(a2 + 24) = *(a3 + 24);
            *v49 = v57;
            v52 = v51 >> 31;
            if (*a3 == v51)
            {
              goto LABEL_88;
            }

            goto LABEL_59;
          }
        }

        if (v50 >> 31 == v50)
        {
          *(a2 + 8) = *(a3 + 8);
        }

        else
        {
          v59 = *(a3 + 8);
          *(a2 + 24) = *(a3 + 24);
          *v49 = v59;
        }

        *a2 = (v50 >> 31) ^ v50;
        v52 = v51 >> 31;
        if (*a3 == v51)
        {
          goto LABEL_88;
        }

LABEL_59:
        v32 = v52 ^ v51;
        if (v52 == v51)
        {
          goto LABEL_22;
        }

        goto LABEL_60;
      }

      v29 = 0;
    }

    else
    {
      v60 = *(a1 + 16);
      v61 = *(a1 + 24);
      v29 = v26 ^ v25;
      v28 = *a2;
      if (v25 == *a2)
      {
        v34 = *(a2 + 8);
        *(a1 + 24) = *(a2 + 24);
        *(a1 + 8) = v34;
        v30 = v29 >> 31;
        if (*a2 != v29)
        {
          goto LABEL_29;
        }

LABEL_17:
        *(a2 + 8) = v27;
        if (v30 != v29)
        {
          *(a2 + 16) = v60;
          *(a2 + 24) = v61;
        }

        goto LABEL_55;
      }
    }

    v37 = (v28 >> 31) ^ v28;
    if (v28 >> 31 == v28)
    {
      *(a1 + 8) = *(a2 + 8);
      *a1 = v37;
      v30 = v29 >> 31;
      if (*a2 != v29)
      {
        goto LABEL_29;
      }
    }

    else
    {
      v55 = *(a2 + 8);
      *(a1 + 24) = *(a2 + 24);
      *(a1 + 8) = v55;
      *a1 = v37;
      v30 = v29 >> 31;
      if (*a2 != v29)
      {
        goto LABEL_29;
      }
    }

    goto LABEL_17;
  }

  if (v10 >= result)
  {
    return result;
  }

  v18 = *a2;
  v19 = *a2 >> 31;
  v21 = (a2 + 8);
  v20 = *(a2 + 8);
  if (v19 != *a2)
  {
    v60 = *(a2 + 16);
    v61 = *(a2 + 24);
    v23 = v19 ^ v18;
    v22 = *a3;
    if (v18 == *a3)
    {
      v33 = *(a3 + 8);
      *(a2 + 24) = *(a3 + 24);
      *v21 = v33;
      v24 = v23 >> 31;
      if (*a3 != v23)
      {
        goto LABEL_25;
      }

LABEL_12:
      *(a3 + 8) = v20;
      if (v24 != v23)
      {
        *(a3 + 16) = v60;
        *(a3 + 24) = v61;
      }

      goto LABEL_47;
    }

LABEL_36:
    v36 = (v22 >> 31) ^ v22;
    if (v22 >> 31 == v22)
    {
      *(a2 + 8) = *(a3 + 8);
      *a2 = v36;
      v24 = v23 >> 31;
      if (*a3 != v23)
      {
        goto LABEL_25;
      }
    }

    else
    {
      v54 = *(a3 + 8);
      *(a2 + 24) = *(a3 + 24);
      *v21 = v54;
      *a2 = v36;
      v24 = v23 >> 31;
      if (*a3 != v23)
      {
        goto LABEL_25;
      }
    }

    goto LABEL_12;
  }

  v22 = *a3;
  if (v18 != *a3)
  {
    v23 = 0;
    goto LABEL_36;
  }

  v23 = 0;
  *v21 = *(a3 + 8);
  v24 = 0;
  if (!*a3)
  {
    goto LABEL_12;
  }

LABEL_25:
  *(a3 + 8) = v20;
  if (v24 != v23)
  {
    *(a3 + 16) = v60;
    *(a3 + 24) = v61;
  }

  *a3 = v24 ^ v23;
LABEL_47:
  v38 = sub_100219500(*a4, a2);
  result = sub_100219500(*a4, a1);
  if (v38 >= result)
  {
    return result;
  }

  v39 = *a1;
  v40 = *a1 >> 31;
  v42 = (a1 + 8);
  v41 = *(a1 + 8);
  if (v40 != *a1)
  {
    v60 = *(a1 + 16);
    v61 = *(a1 + 24);
    v44 = v40 ^ v39;
    v43 = *a2;
    if (v39 == *a2)
    {
      v56 = *v21;
      *(a1 + 24) = *(a2 + 24);
      *v42 = v56;
      v45 = v44 >> 31;
      if (*a2 != v44)
      {
        goto LABEL_51;
      }

LABEL_84:
      if (v45 == v44)
      {
        *v21 = v41;
      }

      else
      {
        *(a2 + 8) = v41;
        *(a2 + 16) = v60;
        *(a2 + 24) = v61;
      }

      return result;
    }

LABEL_75:
    if (v43 >> 31 == v43)
    {
      *(a1 + 8) = *v21;
    }

    else
    {
      v58 = *v21;
      *(a1 + 24) = *(a2 + 24);
      *v42 = v58;
    }

    *a1 = (v43 >> 31) ^ v43;
    v45 = v44 >> 31;
    if (*a2 != v44)
    {
      goto LABEL_51;
    }

    goto LABEL_84;
  }

  v43 = *a2;
  if (v39 != *a2)
  {
    v44 = 0;
    goto LABEL_75;
  }

  v44 = 0;
  *v42 = *v21;
  v45 = 0;
  if (!*a2)
  {
    goto LABEL_84;
  }

LABEL_51:
  *(a2 + 8) = v41;
  if (v45 != v44)
  {
    *(a2 + 16) = v60;
    *(a2 + 24) = v61;
  }

  *a2 = v45 ^ v44;
  return result;
}

uint64_t sub_100223328(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  sub_100222C40(a1, a2, a3, a5);
  v10 = sub_100219500(*a5, a4);
  result = sub_100219500(*a5, a3);
  if (v10 >= result)
  {
    return result;
  }

  v12 = *a3;
  v13 = *a3 >> 31;
  v15 = (a3 + 8);
  v14 = *(a3 + 8);
  if (v13 == *a3)
  {
    v16 = *a4;
    if (v12 == *a4)
    {
      v17 = 0;
      *v15 = *(a4 + 8);
      v18 = 0;
      if (!*a4)
      {
        goto LABEL_17;
      }

      goto LABEL_8;
    }

    v17 = 0;
  }

  else
  {
    v43 = *(a3 + 16);
    v44 = *(a3 + 24);
    v17 = v13 ^ v12;
    v16 = *a4;
    if (v12 == *a4)
    {
      v19 = *(a4 + 8);
      *(a3 + 24) = *(a4 + 24);
      *v15 = v19;
      v18 = v17 >> 31;
      if (*a4 == v17)
      {
        goto LABEL_17;
      }

      goto LABEL_8;
    }
  }

  v20 = (v16 >> 31) ^ v16;
  if (v16 >> 31 == v16)
  {
    *(a3 + 8) = *(a4 + 8);
    *a3 = v20;
    v18 = v17 >> 31;
    if (*a4 == v17)
    {
LABEL_17:
      *(a4 + 8) = v14;
      if (v18 != v17)
      {
        *(a4 + 16) = v43;
        *(a4 + 24) = v44;
      }

      goto LABEL_19;
    }
  }

  else
  {
    v21 = *(a4 + 8);
    *(a3 + 24) = *(a4 + 24);
    *v15 = v21;
    *a3 = v20;
    v18 = v17 >> 31;
    if (*a4 == v17)
    {
      goto LABEL_17;
    }
  }

LABEL_8:
  *(a4 + 8) = v14;
  if (v18 != v17)
  {
    *(a4 + 16) = v43;
    *(a4 + 24) = v44;
  }

  *a4 = v18 ^ v17;
LABEL_19:
  v22 = sub_100219500(*a5, a3);
  result = sub_100219500(*a5, a2);
  if (v22 >= result)
  {
    return result;
  }

  v23 = *a2;
  v24 = *a2 >> 31;
  v26 = (a2 + 8);
  v25 = *(a2 + 8);
  if (v24 == *a2)
  {
    v27 = *a3;
    if (v23 == *a3)
    {
      v28 = 0;
      *v26 = *v15;
      v29 = 0;
      if (!*a3)
      {
        goto LABEL_35;
      }

      goto LABEL_26;
    }

    v28 = 0;
  }

  else
  {
    v43 = *(a2 + 16);
    v44 = *(a2 + 24);
    v28 = v24 ^ v23;
    v27 = *a3;
    if (v23 == *a3)
    {
      v30 = *v15;
      *(a2 + 24) = *(a3 + 24);
      *v26 = v30;
      v29 = v28 >> 31;
      if (*a3 == v28)
      {
        goto LABEL_35;
      }

      goto LABEL_26;
    }
  }

  v31 = (v27 >> 31) ^ v27;
  if (v27 >> 31 == v27)
  {
    *(a2 + 8) = *v15;
    *a2 = v31;
    v29 = v28 >> 31;
    if (*a3 == v28)
    {
LABEL_35:
      if (v29 == v28)
      {
        *v15 = v25;
      }

      else
      {
        *(a3 + 8) = v25;
        *(a3 + 16) = v43;
        *(a3 + 24) = v44;
      }

      goto LABEL_38;
    }
  }

  else
  {
    v32 = *v15;
    *(a2 + 24) = *(a3 + 24);
    *v26 = v32;
    *a2 = v31;
    v29 = v28 >> 31;
    if (*a3 == v28)
    {
      goto LABEL_35;
    }
  }

LABEL_26:
  *(a3 + 8) = v25;
  if (v29 != v28)
  {
    *(a3 + 16) = v43;
    *(a3 + 24) = v44;
  }

  *a3 = v29 ^ v28;
LABEL_38:
  v33 = sub_100219500(*a5, a2);
  result = sub_100219500(*a5, a1);
  if (v33 >= result)
  {
    return result;
  }

  v34 = *a1;
  v35 = *a1 >> 31;
  v37 = (a1 + 8);
  v36 = *(a1 + 8);
  if (v35 == *a1)
  {
    v38 = *a2;
    if (v34 == *a2)
    {
      v39 = 0;
      *v37 = *v26;
      v40 = 0;
      if (!*a2)
      {
LABEL_54:
        if (v40 == v39)
        {
          *v26 = v36;
        }

        else
        {
          *(a2 + 8) = v36;
          *(a2 + 16) = v43;
          *(a2 + 24) = v44;
        }

        return result;
      }

      goto LABEL_45;
    }

    v39 = 0;
  }

  else
  {
    v43 = *(a1 + 16);
    v44 = *(a1 + 24);
    v39 = v35 ^ v34;
    v38 = *a2;
    if (v34 == *a2)
    {
      v41 = *v26;
      *(a1 + 24) = *(a2 + 24);
      *v37 = v41;
      v40 = v39 >> 31;
      if (*a2 == v39)
      {
        goto LABEL_54;
      }

      goto LABEL_45;
    }
  }

  if (v38 >> 31 == v38)
  {
    *(a1 + 8) = *v26;
  }

  else
  {
    v42 = *v26;
    *(a1 + 24) = *(a2 + 24);
    *v37 = v42;
  }

  *a1 = (v38 >> 31) ^ v38;
  v40 = v39 >> 31;
  if (*a2 == v39)
  {
    goto LABEL_54;
  }

LABEL_45:
  *(a2 + 8) = v36;
  if (v40 != v39)
  {
    *(a2 + 16) = v43;
    *(a2 + 24) = v44;
  }

  *a2 = v40 ^ v39;
  return result;
}

uint64_t sub_100223774(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  sub_100223328(a1, a2, a3, a4, a6);
  v12 = sub_100219500(*a6, a5);
  result = sub_100219500(*a6, a4);
  if (v12 >= result)
  {
    return result;
  }

  v14 = *a4;
  v15 = *a4 >> 31;
  v17 = (a4 + 8);
  v16 = *(a4 + 8);
  if (v15 == *a4)
  {
    v18 = *a5;
    if (v14 == *a5)
    {
      v19 = 0;
      *v17 = *(a5 + 8);
      v20 = 0;
      if (!*a5)
      {
        goto LABEL_17;
      }

      goto LABEL_8;
    }

    v19 = 0;
  }

  else
  {
    v55 = *(a4 + 16);
    v56 = *(a4 + 24);
    v19 = v15 ^ v14;
    v18 = *a5;
    if (v14 == *a5)
    {
      v21 = *(a5 + 8);
      *(a4 + 24) = *(a5 + 24);
      *v17 = v21;
      v20 = v19 >> 31;
      if (*a5 == v19)
      {
        goto LABEL_17;
      }

      goto LABEL_8;
    }
  }

  v22 = (v18 >> 31) ^ v18;
  if (v18 >> 31 == v18)
  {
    *(a4 + 8) = *(a5 + 8);
    *a4 = v22;
    v20 = v19 >> 31;
    if (*a5 == v19)
    {
LABEL_17:
      *(a5 + 8) = v16;
      if (v20 != v19)
      {
        *(a5 + 16) = v55;
        *(a5 + 24) = v56;
      }

      goto LABEL_19;
    }
  }

  else
  {
    v23 = *(a5 + 8);
    *(a4 + 24) = *(a5 + 24);
    *v17 = v23;
    *a4 = v22;
    v20 = v19 >> 31;
    if (*a5 == v19)
    {
      goto LABEL_17;
    }
  }

LABEL_8:
  *(a5 + 8) = v16;
  if (v20 != v19)
  {
    *(a5 + 16) = v55;
    *(a5 + 24) = v56;
  }

  *a5 = v20 ^ v19;
LABEL_19:
  v24 = sub_100219500(*a6, a4);
  result = sub_100219500(*a6, a3);
  if (v24 >= result)
  {
    return result;
  }

  v25 = *a3;
  v26 = *a3 >> 31;
  v28 = (a3 + 8);
  v27 = *(a3 + 8);
  if (v26 == *a3)
  {
    v29 = *a4;
    if (v25 == *a4)
    {
      v30 = 0;
      *v28 = *v17;
      v31 = 0;
      if (!*a4)
      {
        goto LABEL_35;
      }

      goto LABEL_26;
    }

    v30 = 0;
  }

  else
  {
    v55 = *(a3 + 16);
    v56 = *(a3 + 24);
    v30 = v26 ^ v25;
    v29 = *a4;
    if (v25 == *a4)
    {
      v32 = *v17;
      *(a3 + 24) = *(a4 + 24);
      *v28 = v32;
      v31 = v30 >> 31;
      if (*a4 == v30)
      {
        goto LABEL_35;
      }

      goto LABEL_26;
    }
  }

  v33 = (v29 >> 31) ^ v29;
  if (v29 >> 31 == v29)
  {
    *(a3 + 8) = *v17;
    *a3 = v33;
    v31 = v30 >> 31;
    if (*a4 == v30)
    {
LABEL_35:
      if (v31 == v30)
      {
        *v17 = v27;
      }

      else
      {
        *(a4 + 8) = v27;
        *(a4 + 16) = v55;
        *(a4 + 24) = v56;
      }

      goto LABEL_38;
    }
  }

  else
  {
    v34 = *v17;
    *(a3 + 24) = *(a4 + 24);
    *v28 = v34;
    *a3 = v33;
    v31 = v30 >> 31;
    if (*a4 == v30)
    {
      goto LABEL_35;
    }
  }

LABEL_26:
  *(a4 + 8) = v27;
  if (v31 != v30)
  {
    *(a4 + 16) = v55;
    *(a4 + 24) = v56;
  }

  *a4 = v31 ^ v30;
LABEL_38:
  v35 = sub_100219500(*a6, a3);
  result = sub_100219500(*a6, a2);
  if (v35 >= result)
  {
    return result;
  }

  v36 = *a2;
  v37 = *a2 >> 31;
  v39 = (a2 + 8);
  v38 = *(a2 + 8);
  if (v37 != *a2)
  {
    v55 = *(a2 + 16);
    v56 = *(a2 + 24);
    v41 = v37 ^ v36;
    v40 = *a3;
    if (v36 == *a3)
    {
      v43 = *v28;
      *(a2 + 24) = *(a3 + 24);
      *v39 = v43;
      v42 = v41 >> 31;
      if (*a3 == v41)
      {
        goto LABEL_54;
      }

      goto LABEL_45;
    }

LABEL_48:
    if (v40 >> 31 == v40)
    {
      *(a2 + 8) = *v28;
    }

    else
    {
      v44 = *v28;
      *(a2 + 24) = *(a3 + 24);
      *v39 = v44;
    }

    *a2 = (v40 >> 31) ^ v40;
    v42 = v41 >> 31;
    if (*a3 == v41)
    {
      goto LABEL_54;
    }

    goto LABEL_45;
  }

  v40 = *a3;
  if (v36 != *a3)
  {
    v41 = 0;
    goto LABEL_48;
  }

  v41 = 0;
  *v39 = *v28;
  v42 = 0;
  if (!*a3)
  {
LABEL_54:
    if (v42 == v41)
    {
      *v28 = v38;
    }

    else
    {
      *(a3 + 8) = v38;
      *(a3 + 16) = v55;
      *(a3 + 24) = v56;
    }

    goto LABEL_57;
  }

LABEL_45:
  *(a3 + 8) = v38;
  if (v42 != v41)
  {
    *(a3 + 16) = v55;
    *(a3 + 24) = v56;
  }

  *a3 = v42 ^ v41;
LABEL_57:
  v45 = sub_100219500(*a6, a2);
  result = sub_100219500(*a6, a1);
  if (v45 >= result)
  {
    return result;
  }

  v46 = *a1;
  v47 = *a1 >> 31;
  v49 = (a1 + 8);
  v48 = *(a1 + 8);
  if (v47 == *a1)
  {
    v50 = *a2;
    if (v46 == *a2)
    {
      v51 = 0;
      *v49 = *v39;
      goto LABEL_68;
    }

    v51 = 0;
  }

  else
  {
    v55 = *(a1 + 16);
    v56 = *(a1 + 24);
    v51 = v47 ^ v46;
    v50 = *a2;
    if (v46 == *a2)
    {
      v52 = *v39;
      *(a1 + 24) = *(a2 + 24);
      *v49 = v52;
      goto LABEL_68;
    }
  }

  if (v50 >> 31 == v50)
  {
    *(a1 + 8) = *v39;
  }

  else
  {
    v53 = *v39;
    *(a1 + 24) = *(a2 + 24);
    *v49 = v53;
  }

  *a1 = (v50 >> 31) ^ v50;
LABEL_68:
  v54 = v51 >> 31;
  if (*a2 == v51)
  {
    if (v54 == v51)
    {
      *v39 = v48;
    }

    else
    {
      *(a2 + 8) = v48;
      *(a2 + 16) = v55;
      *(a2 + 24) = v56;
    }
  }

  else
  {
    *(a2 + 8) = v48;
    if (v54 != v51)
    {
      *(a2 + 16) = v55;
      *(a2 + 24) = v56;
    }

    *a2 = v54 ^ v51;
  }

  return result;
}

BOOL sub_100223CE8(uint64_t a1, _DWORD *a2, uint64_t *a3)
{
  v6 = (a2 - a1) >> 5;
  if (v6 > 2)
  {
    switch(v6)
    {
      case 3:
        sub_100222C40(a1, a1 + 32, (a2 - 8), a3);
        return 1;
      case 4:
        sub_100223328(a1, a1 + 32, a1 + 64, (a2 - 8), a3);
        return 1;
      case 5:
        sub_100223774(a1, a1 + 32, a1 + 64, a1 + 96, (a2 - 8), a3);
        return 1;
    }
  }

  else
  {
    if (v6 < 2)
    {
      return 1;
    }

    if (v6 == 2)
    {
      v7 = a2 - 8;
      v8 = sub_100219500(*a3, (a2 - 8));
      if (v8 < sub_100219500(*a3, a1))
      {
        v9 = *a1;
        v10 = *a1 >> 31;
        v12 = (a1 + 8);
        v11 = *(a1 + 8);
        if (v10 == *a1)
        {
          v13 = *v7;
          if (v9 == *v7)
          {
            v14 = 0;
            *v12 = *(a2 - 3);
            goto LABEL_51;
          }

          v14 = 0;
        }

        else
        {
          v40 = *(a1 + 16);
          LODWORD(v41) = *(a1 + 24);
          v14 = v10 ^ v9;
          v13 = *v7;
          if (v9 == *v7)
          {
            v33 = *(a2 - 6);
            *(a1 + 24) = *(a2 - 2);
            *v12 = v33;
LABEL_51:
            v36 = v14 >> 31;
            if (*v7 == v14)
            {
              if (v36 == v14)
              {
                *(a2 - 3) = v11;
              }

              else
              {
                v38 = v40;
                *(a2 - 3) = v11;
                *(a2 - 2) = v38;
                *(a2 - 2) = v41;
              }
            }

            else
            {
              v37 = v36 ^ v14;
              if (v36 == v14)
              {
                *(a2 - 3) = v11;
              }

              else
              {
                v39 = v40;
                *(a2 - 3) = v11;
                *(a2 - 2) = v39;
                *(a2 - 2) = v41;
              }

              *(a2 - 8) = v37;
            }

            return 1;
          }
        }

        v34 = a2 - 6;
        if (v13 >> 31 == v13)
        {
          *(a1 + 8) = *v34;
        }

        else
        {
          v35 = *v34;
          *(a1 + 24) = *(a2 - 2);
          *v12 = v35;
        }

        *a1 = (v13 >> 31) ^ v13;
        goto LABEL_51;
      }

      return 1;
    }
  }

  v15 = a1 + 64;
  sub_100222C40(a1, a1 + 32, a1 + 64, a3);
  v16 = (a1 + 96);
  if ((a1 + 96) == a2)
  {
    return 1;
  }

  v17 = 0;
  v18 = 0;
  while (1)
  {
    v19 = sub_100219500(*a3, v16);
    if (v19 >= sub_100219500(*a3, v15))
    {
      goto LABEL_18;
    }

    v21 = v16 + 2;
    v20 = *v16;
    v22 = *v16 >> 31;
    if (v20 >> 31 == v20)
    {
      *&v41 = *v21;
      v22 = v20;
    }

    else
    {
      v41 = *v21;
      v42 = v16[6];
    }

    LODWORD(v40) = v22 ^ v20;
    v23 = v17;
    do
    {
      v24 = a1 + v23;
      v25 = *(a1 + v23 + 96);
      v26 = *(a1 + v23 + 64);
      if (v25 == v26)
      {
        if (v25 == v25 >> 31)
        {
          *(v24 + 104) = *(v24 + 72);
        }

        else
        {
          *(v24 + 104) = *(v24 + 72);
          *(v24 + 120) = *(v24 + 88);
        }
      }

      else
      {
        if (v26 >> 31 == v26)
        {
          *(v24 + 104) = *(v24 + 72);
        }

        else
        {
          *(v24 + 104) = *(v24 + 72);
          *(v24 + 120) = *(v24 + 88);
        }

        *(v24 + 96) = (v26 >> 31) ^ v26;
      }

      if (v23 == -64)
      {
        v29 = a1;
        v30 = *a1;
        v31 = v40;
        if (*a1 != v40)
        {
          goto LABEL_35;
        }

LABEL_38:
        if (v30 == v30 >> 31)
        {
          *(v29 + 8) = v41;
        }

        else
        {
          *(v29 + 8) = v41;
          *(v29 + 24) = v42;
        }

        goto LABEL_17;
      }

      v27 = sub_100219500(*a3, &v40);
      v28 = sub_100219500(*a3, a1 + v23 + 32);
      v23 -= 32;
    }

    while (v27 < v28);
    v29 = a1 + v23 + 96;
    v30 = *v29;
    v31 = v40;
    if (*v29 == v40)
    {
      goto LABEL_38;
    }

LABEL_35:
    if (v31 >> 31 == v31)
    {
      *(v29 + 8) = v41;
    }

    else
    {
      *(v29 + 8) = v41;
      *(v29 + 24) = v42;
    }

    *v29 = (v31 >> 31) ^ v31;
LABEL_17:
    if (++v18 == 8)
    {
      return v16 + 8 == a2;
    }

LABEL_18:
    v15 = v16;
    v17 += 32;
    v16 += 8;
    if (v16 == a2)
    {
      return 1;
    }
  }
}

unsigned int *sub_10022411C(int *a1, unsigned int *a2)
{
  v2 = a2;
  if (a1 != a2)
  {
    v3 = a1 + 8;
    v2 = a2;
    if (a1 + 8 != a2)
    {
      v4 = a1 + 10;
      v5 = *a1;
      do
      {
        v7 = a1;
        a1 = v3;
        v8 = v5 ^ (v5 >> 31);
        v5 = *(v4 - 2);
        if (v8 == ((v5 >> 31) ^ v5))
        {
          if (v5 >> 31 == v5)
          {
            if (*(v4 - 4) == *v4)
            {
              v7 = v4 - 10;
              v2 = a2;
              if (v7 != a2)
              {
                goto LABEL_19;
              }

              return v2;
            }
          }

          else if (*(v4 - 4) == *v4 && *(v4 - 3) == *(v4 + 1) && *(v4 - 4) == v4[4])
          {
            goto LABEL_18;
          }
        }

        v3 += 8;
        v6 = v4 + 6;
        v4 += 8;
      }

      while (v6 != a2);
      v7 = a2;
LABEL_18:
      v2 = a2;
      if (v7 != a2)
      {
LABEL_19:
        if (v7 + 16 != a2)
        {
          v11 = v7 + 18;
          v12 = *v7;
          while (1)
          {
            v13 = *(v11 - 2);
            v16 = v13 >> 31;
            v17 = (v13 >> 31) ^ v13;
            if ((v12 ^ (v12 >> 31)) != v17)
            {
              break;
            }

            if (v16 == v13)
            {
              if (*(v7 + 1) != *v11)
              {
                break;
              }
            }

            else if (*(v7 + 1) != *v11 || *(v7 + 2) != *(v11 + 1) || v7[6] != v11[4])
            {
              break;
            }

            v13 = v12;
            v14 = v7;
LABEL_22:
            v15 = v11 + 6;
            v11 += 8;
            v12 = v13;
            v7 = v14;
            if (v15 == a2)
            {
              return v14 + 8;
            }
          }

          v14 = v7 + 8;
          if (v7[8] == v13)
          {
            if (v16 == v13)
            {
              *(v7 + 5) = *v11;
            }

            else
            {
              v20 = *v11;
              v7[14] = v11[4];
              *(v7 + 10) = v20;
            }
          }

          else
          {
            if (v16 == v13)
            {
              *(v7 + 5) = *v11;
            }

            else
            {
              v21 = *v11;
              v7[14] = v11[4];
              *(v7 + 10) = v21;
            }

            *v14 = v17;
            v13 = (v13 >> 31) ^ v13;
          }

          goto LABEL_22;
        }

        v14 = v7;
        return v14 + 8;
      }
    }
  }

  return v2;
}

void sub_1002242DC(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_1002242DC(a1, *a2);
    sub_1002242DC(a1, a2[1]);
    v4 = a2[9];
    if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
      v5 = a2;
    }

    else
    {
      v5 = a2;
    }

    operator delete(v5);
  }
}

std::string *sub_100224398@<X0>(std::string::value_type *__s@<X0>, std::string *a2@<X8>)
{
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  return std::string::assign(a2, __s);
}

void sub_1002243CC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_100224408(std::__shared_weak_count *a1)
{
  a1->__vftable = off_1004432F0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_10022445C(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}

uint64_t *sub_1002244DC(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 8);
  result = (a1 + 8);
  v4 = v5;
  if (v5)
  {
    v6 = *a3;
    v7 = *a3 >> 31;
    v10 = *(a3 + 8);
    v8 = (a3 + 8);
    v9 = v10;
    if (v7 != v6)
    {
      if ((v7 ^ v6) != (v7 ^ v6) >> 31)
      {
        while (1)
        {
          v11 = v4;
          v15 = *(v4 + 8);
          v16 = v15 >> 31;
          if (v15 >> 31 == v15)
          {
            break;
          }

          v29 = *(v11 + 5);
          if ((v16 ^ v15) == (v16 ^ v15) >> 31 || (v17 = bswap64(*v8), v18 = bswap64(v29), v17 == v18) && (v17 = bswap64(*(v8 + 1)), v18 = bswap64(*(&v29 + 1)), v17 == v18) && (v17 = bswap32(*(v8 + 4)), v18 = bswap32(*(v11 + 14)), v17 == v18) || (v17 < v18 ? (v19 = -1) : (v19 = 1), (v19 & 0x80000000) == 0))
          {
LABEL_32:
            v30 = *v8;
            if (v16 != v15)
            {
              v20 = bswap64(v11[5]);
              v21 = bswap64(v30);
              if (v20 == v21)
              {
                v20 = bswap64(v11[6]);
                v21 = bswap64(*(&v30 + 1));
                if (v20 == v21)
                {
                  v20 = bswap32(*(v11 + 14));
                  v21 = bswap32(*(v8 + 4));
                  if (v20 == v21)
                  {
                    goto LABEL_40;
                  }
                }
              }

              v14 = v20 < v21 ? -1 : 1;
              if ((v14 & 0x80000000) == 0)
              {
                goto LABEL_40;
              }
            }

            result = v11 + 1;
            v4 = v11[1];
            if (!v4)
            {
              goto LABEL_40;
            }
          }

          else
          {
            v4 = *v11;
            result = v11;
            if (!*v11)
            {
              goto LABEL_40;
            }
          }
        }

        v28 = v11[5];
        goto LABEL_32;
      }

      while (1)
      {
        v11 = v4;
        v22 = *(v4 + 8);
        v23 = v22 >> 31;
        if (v22 >> 31 == v22)
        {
          v31 = v11[5];
LABEL_52:
          v34 = *(v8 + 4);
          if (v23 != v22)
          {
            goto LABEL_40;
          }

          if (v11[5] >= *v8)
          {
            goto LABEL_40;
          }

          result = v11 + 1;
          v4 = v11[1];
          if (!v4)
          {
            goto LABEL_40;
          }
        }

        else
        {
          v32 = *(v11 + 5);
          if ((v23 ^ v22) == (v23 ^ v22) >> 31)
          {
            goto LABEL_52;
          }

          v24 = bswap64(*v8);
          v25 = bswap64(v32);
          if (v24 == v25)
          {
            v24 = bswap64(*(v8 + 1));
            v25 = bswap64(*(&v32 + 1));
            if (v24 == v25)
            {
              v24 = bswap32(*(v8 + 4));
              v25 = bswap32(*(v11 + 14));
              if (v24 == v25)
              {
                goto LABEL_52;
              }
            }
          }

          v26 = v24 < v25 ? -1 : 1;
          if ((v26 & 0x80000000) == 0)
          {
            goto LABEL_52;
          }

          v4 = *v11;
          result = v11;
          if (!*v11)
          {
            goto LABEL_40;
          }
        }
      }
    }

    while (1)
    {
      v11 = v4;
      v12 = *(v4 + 8);
      v13 = v12 >> 31;
      if (v12 >> 31 == v12)
      {
        break;
      }

      v27 = *(v11 + 5);
      v33 = *(v11 + 14);
      if ((v13 ^ v12) == (v13 ^ v12) >> 31)
      {
LABEL_9:
        if (v9 < v27)
        {
          goto LABEL_5;
        }

        if (v13 != v12)
        {
          goto LABEL_40;
        }

        if (v11[5] >= v9)
        {
          goto LABEL_40;
        }

        result = v11 + 1;
        v4 = v11[1];
        if (!v4)
        {
          goto LABEL_40;
        }
      }

      else
      {
LABEL_5:
        v4 = *v11;
        result = v11;
        if (!*v11)
        {
          goto LABEL_40;
        }
      }
    }

    *&v27 = v11[5];
    goto LABEL_9;
  }

  v11 = result;
LABEL_40:
  *a2 = v11;
  return result;
}

uint64_t *sub_100224828(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v2 = (a1 + 8);
  v3 = v4;
  if (!v4)
  {
    return v2;
  }

  v5 = *a2;
  v6 = *a2 >> 31;
  v9 = *(a2 + 8);
  v7 = (a2 + 8);
  v8 = v9;
  if (v6 == v5)
  {
    v10 = v2;
    do
    {
      while (*(v3 + 8) != *(v3 + 8) >> 31)
      {
        v10 = v3;
        v3 = *v3;
        if (!v3)
        {
          goto LABEL_33;
        }
      }

      v11 = v3[5];
      v12 = v11 >= v8;
      v13 = v11 < v8;
      if (v12)
      {
        v10 = v3;
      }

      v3 = v3[v13];
    }

    while (v3);
  }

  else if ((v6 ^ v5) == (v6 ^ v5) >> 31)
  {
    v10 = v2;
    do
    {
      while (1)
      {
        v27 = *v7;
        v28 = *(v7 + 4);
        if (*(v3 + 8) == *(v3 + 8) >> 31)
        {
          break;
        }

        v10 = v3;
        v3 = *v3;
        if (!v3)
        {
          goto LABEL_33;
        }
      }

      v14 = v3[5];
      v12 = v14 >= v27;
      v15 = v14 < v27;
      if (v12)
      {
        v10 = v3;
      }

      v3 = v3[v15];
    }

    while (v3);
  }

  else
  {
    v10 = v2;
    do
    {
      while (1)
      {
        v27 = *v7;
        v28 = *(v7 + 4);
        if (*(v3 + 8) != *(v3 + 8) >> 31)
        {
          break;
        }

        v3 = v3[1];
        if (!v3)
        {
          goto LABEL_33;
        }
      }

      v16 = bswap64(v3[5]);
      v17 = bswap64(v27);
      if (v16 == v17 && (v16 = bswap64(v3[6]), v17 = bswap64(*(&v27 + 1)), v16 == v17) && (v16 = bswap32(*(v3 + 14)), v17 = bswap32(v28), v16 == v17))
      {
        v18 = 0;
      }

      else if (v16 < v17)
      {
        v18 = -1;
      }

      else
      {
        v18 = 1;
      }

      v19 = (v3 + ((v18 >> 28) & 8));
      if (v18 >= 0)
      {
        v10 = v3;
      }

      v3 = *v19;
    }

    while (*v19);
  }

LABEL_33:
  if (v10 == v2)
  {
    return v2;
  }

  v20 = *(v10 + 8);
  if (v20 >> 31 == v20)
  {
    *&v27 = v10[5];
    v21 = 0;
    v22 = 0;
    if (v6 != v5)
    {
LABEL_36:
      if (v22 != v21)
      {
        v23 = bswap64(*v7);
        v24 = bswap64(v27);
        if (v23 == v24 && (v23 = bswap64(*(v7 + 1)), v24 = bswap64(*(&v27 + 1)), v23 == v24) && (v23 = bswap32(*(v7 + 4)), v24 = bswap32(v28), v23 == v24))
        {
          v25 = 0;
        }

        else
        {
          v25 = v23 < v24 ? -1 : 1;
        }

        if (v25 < 0)
        {
          return v2;
        }
      }

      return v10;
    }
  }

  else
  {
    v27 = *(v10 + 5);
    v28 = *(v10 + 14);
    v21 = (v20 >> 31) ^ v20;
    v22 = v21 >> 31;
    if (v6 != v5)
    {
      goto LABEL_36;
    }
  }

  if (v22 != v21 || v8 < v27)
  {
    return v2;
  }

  return v10;
}

void sub_100224AB8()
{
  if ((byte_10045B0B8 & 1) == 0)
  {
    byte_10045B0B8 = 1;
    sub_10000CB40(qword_10045B0A8);

    __cxa_atexit(sub_10000CEB0, qword_10045B0A8, &_mh_execute_header);
  }
}

void sub_100224B28()
{
  if ((byte_10045B0D0 & 1) == 0)
  {
    byte_10045B0D0 = 1;
    sub_10000CF5C(qword_10045B0C0);

    __cxa_atexit(sub_10000CEB0, qword_10045B0C0, &_mh_execute_header);
  }
}

void sub_100224B98(uint64_t a1, __int128 *a2)
{
  *a1 = off_100443340;
  v2 = *a2;
  v3 = a2[1];
  *(a1 + 40) = *(a2 + 4);
  *(a1 + 24) = v3;
  *(a1 + 8) = v2;
  operator new();
}

void sub_100224D74(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

uint64_t sub_100224D90(uint64_t a1)
{
  *a1 = off_100443340;
  std::mutex::~mutex((a1 + 224));
  v2 = *(a1 + 200);
  if (v2)
  {
    v3 = *(a1 + 208);
    v4 = *(a1 + 200);
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 8);
        if (v5)
        {
          std::__shared_weak_count::__release_weak(v5);
        }

        v3 -= 16;
      }

      while (v3 != v2);
      v4 = *(a1 + 200);
    }

    *(a1 + 208) = v2;
    operator delete(v4);
  }

  if (*(a1 + 160) == 1)
  {
    *(a1 + 160) = 0;
  }

  v6 = *(a1 + 136);
  if (v6)
  {
    *(a1 + 144) = v6;
    operator delete(v6);
  }

  v7 = *(a1 + 128);
  if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
    if (*(a1 + 96) != 1)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  if (*(a1 + 96) == 1)
  {
LABEL_16:
    *(a1 + 96) = 0;
  }

LABEL_17:
  v8 = *(a1 + 88);
  if (v8 && !atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v8->__on_zero_shared)(v8);
    std::__shared_weak_count::__release_weak(v8);
  }

  v9 = *(a1 + 72);
  *(a1 + 72) = 0;
  if (v9)
  {
    sub_100045C70(v9);
    operator delete();
  }

  v10 = *(a1 + 64);
  *(a1 + 64) = 0;
  if (v10)
  {
    sub_100225A00(a1 + 64, v10);
  }

  v11 = *(a1 + 56);
  if (!v11 || atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return a1;
  }

  (v11->__on_zero_shared)(v11);
  std::__shared_weak_count::__release_weak(v11);
  return a1;
}

void sub_100224F88(uint64_t a1)
{
  sub_100224D90(a1);

  operator delete();
}

void sub_100224FC0(uint64_t a1, uint64_t *a2)
{
  v4 = sub_100381F24(*(a1 + 48));
  if (v4)
  {
    v5 = *a2;
    if ((*(a1 + 96) & 1) == 0)
    {
      *(a1 + 96) = 1;
      *(a1 + 104) = v5;
      return;
    }

    v6 = *(a1 + 104);
    if (!*(a1 + 96) || v5 != v6)
    {
      if (v5 < v6)
      {
        if (qword_10045B050 != -1)
        {
          sub_100385F84();
        }

        v7 = qword_10045B058;
        if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_INFO))
        {
          v8 = *a2;
          *buf = 134218240;
          *&buf[4] = v8;
          v24 = 2048;
          v25 = v6;
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "WARNING: Event timestamp of %lld is before heading filter's last tnanos %lld: ~=!no stack trace!.\n\nEvent log =", buf, 0x16u);
        }

        return;
      }

      v9 = v4;
      v10 = 2;
      v22 = 2;
      v11 = *(a1 + 72);
      v12 = sub_100118234(a2);
      v13 = sub_100045FC8(v11, v12);
      if ((v13 - 1) >= 2)
      {
        v14 = 0;
        if (!v13)
        {
          v10 = 0;
          v22 = 0;
        }
      }

      else
      {
        v14 = 1;
        v22 = 1;
        v10 = 1;
      }

      v15 = *(a1 + 112);
      v16 = v10;
      if (v15 != 2)
      {
        if (v15 || !v14)
        {
LABEL_21:
          v17 = *(v9 + 8);
          *buf = v17;
          v18 = *(a1 + 144);
          if (v18 >= *(a1 + 152))
          {
            v19 = sub_100225B2C(a1 + 136, (a1 + 104), a2, buf, &v22);
          }

          else
          {
            sub_1002C0CC0(*(a1 + 144), (a1 + 104), a2, v10, v17);
            v19 = v18 + 32;
            *(a1 + 144) = v18 + 32;
          }

          *(a1 + 144) = v19;
          v20 = *(v19 - 32);
          if (*(a1 + 160) == 1)
          {
            *(a1 + 180) = *(v19 - 20);
            *(a1 + 168) = v20;
          }

          else
          {
            *(a1 + 184) = *(v19 - 16);
            *(a1 + 168) = v20;
            *(a1 + 160) = 1;
          }

          v21 = *a2;
          if ((*(a1 + 96) & 1) == 0)
          {
            *(a1 + 96) = 1;
          }

          *(a1 + 104) = v21;
          return;
        }

        v16 = 1;
      }

      *(a1 + 112) = v16;
      goto LABEL_21;
    }
  }
}

uint64_t sub_100225228(uint64_t a1, uint64_t a2)
{
  sub_100322264(&v5, a2);
  sub_100224FC0(a1, &v5);
  return (*(**(a1 + 48) + 104))(*(a1 + 48), a2);
}

void sub_100225294(uint64_t a1, uint64_t a2)
{
  sub_100322264(&v7, a2);
  sub_100224FC0(a1, &v7);
  (*(**(a1 + 48) + 96))(*(a1 + 48), a2);
  sub_100381F44(*(a1 + 48), &v5);
  v4 = v6;
  if (v6)
  {
    if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
    }
  }
}

double sub_10022536C(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 32);
  if (result == 0.0)
  {
    *(a2 + 24) = 0;
  }

  else
  {
    result = result * -1.83787707;
    *(a2 + 24) = result * (0xCCCCCCCCCCCCCCCDLL * ((*(a2 + 8) - *a2) >> 3));
  }

  return result;
}

double sub_1002253C0(uint64_t a1, uint64_t *a2)
{
  sub_100224FC0(a1, a2);
  if (*(a1 + 40) != 1 || !*(a1 + 80))
  {
    return 0.0;
  }

  v3 = sub_100381F3C(*(a1 + 48));
  v4 = *(a1 + 64);
  v5 = sub_100380A9C(v4);
  sub_100380AF0(v4);
  v6 = *(a1 + 80);

  return sub_1002AEA84(v3, v5, v6);
}

void sub_10022546C(uint64_t *a1, uint64_t a2)
{
  sub_100322264(&v11, a2);
  sub_100224FC0(a1, &v11);
  (*(*a1[6] + 24))(a1[6], a2);
  sub_100381E9C(a1[6], v12);
  if (v12[0] == 1)
  {
    v4 = a1[9];
    v5 = sub_100118234(&v11);
    v6 = v13;
    v7 = v14;
    v8 = v15;
    sub_100045CE8(v4, v5, v6, v7, v8);
  }

  v9 = a1[8];
  v10 = sub_100381F34(a1[6]);
  sub_1003805B0(v9, a2, v10);
}

float sub_100225570(uint64_t a1, uint64_t a2)
{
  sub_100322264(&v10, a2);
  if (v10 < 0)
  {
    sub_1003846E0(__p, v12);
    sub_10003F5D0(__p);
  }

  sub_100224FC0(a1, &v10);
  (*(**(a1 + 48) + 144))(*(a1 + 48), a2);
  sub_100381E9C(*(a1 + 48), v12);
  if (LOBYTE(v12[0]) == 1)
  {
    v5 = *(a1 + 72);
    v6 = sub_100118234(&v10);
    v7 = *&v12[1];
    v8 = *&v12[2];
    v9 = *&v12[3];
    sub_100045CE8(v5, v6, v7, v8, v9);
  }

  return result;
}

void sub_100225688(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1002256B4(uint64_t a1, uint64_t a2)
{
  sub_100380A84(*(a1 + 64), a2);
  if (*(a2 + 80))
  {
    v4 = *(a2 + 32);
    v5 = *(a2 + 24);
    if (v5 >= 10)
    {
      sub_100380A8C(*(a1 + 64), *(a2 + 32) / v5);
    }
  }
}

void sub_100225794(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1002257E0(uint64_t a1)
{
  v1 = *(a1 + 64);
  sub_100380A9C(v1);
  sub_100380AF0(v1);
  operator new();
}

void sub_1002258B8(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = a2;
  sub_100224FC0(a1, &v5);
  if (*(a1 + 136) == *(a1 + 144))
  {
    sub_1002C0CDC(a3);
  }

  else
  {
    sub_1002C0D04((a1 + 136), a3);
    *(a1 + 144) = *(a1 + 136);
  }
}

void sub_100225984(std::__shared_weak_count *a1)
{
  a1->__vftable = off_1004434A0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_100225A00(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    if (*(a2 + 120) == 1)
    {
      *(a2 + 120) = 0;
    }

    v3 = *(a2 + 104);
    if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
    }

    v4 = *(a2 + 64);
    if (v4)
    {
      v5 = *(a2 + 72);
      v6 = *(a2 + 64);
      if (v5 != v4)
      {
        v7 = v5 - 12;
        v8 = v5 - 12;
        v9 = v5 - 12;
        do
        {
          v10 = *v9;
          v9 -= 12;
          (*v10)(v8);
          v7 -= 12;
          v11 = v8 == v4;
          v8 = v9;
        }

        while (!v11);
        v6 = *(a2 + 64);
      }

      *(a2 + 72) = v4;
      operator delete(v6);
    }

    v12 = *(a2 + 24);
    if (v12)
    {
      *(a2 + 32) = v12;
      operator delete(v12);
    }

    operator delete();
  }
}

uint64_t sub_100225B2C(uint64_t a1, void *a2, void *a3, double *a4, int *a5)
{
  v5 = (*(a1 + 8) - *a1) >> 5;
  v6 = v5 + 1;
  if ((v5 + 1) >> 59)
  {
    sub_10000FC84();
  }

  v8 = *(a1 + 16) - *a1;
  if (v8 >> 4 > v6)
  {
    v6 = v8 >> 4;
  }

  if (v8 >= 0x7FFFFFFFFFFFFFE0)
  {
    v9 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v9 = v6;
  }

  if (v9)
  {
    if (!(v9 >> 59))
    {
      operator new();
    }

    sub_10000D444();
  }

  v10 = sub_1002C0CC0(32 * v5, a2, a3, *a5, *a4);
  v11 = v10 + 32;
  v12 = *a1;
  v13 = *(a1 + 8) - *a1;
  v14 = v10 - v13;
  memcpy((v10 - v13), *a1, v13);
  *a1 = v14;
  *(a1 + 8) = v11;
  *(a1 + 16) = 0;
  if (v12)
  {
    operator delete(v12);
  }

  return v11;
}

void sub_100225C38(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_100225C70(std::__shared_weak_count *a1)
{
  a1->__vftable = off_1004434F0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_100225CC4(uint64_t result)
{
  if (*(result + 48) == 1)
  {
    *(result + 48) = 0;
  }

  return result;
}

void sub_100225CDC()
{
  if ((byte_10045B0B8 & 1) == 0)
  {
    byte_10045B0B8 = 1;
    sub_10000CB40(qword_10045B0A8);

    __cxa_atexit(sub_10000CEB0, qword_10045B0A8, &_mh_execute_header);
  }
}

void sub_100225D4C()
{
  if ((byte_10045B0D0 & 1) == 0)
  {
    byte_10045B0D0 = 1;
    sub_10000CF5C(qword_10045B0C0);

    __cxa_atexit(sub_10000CEB0, qword_10045B0C0, &_mh_execute_header);
  }
}

uint64_t sub_100225DBC(uint64_t result, uint64_t a2, char a3, double a4)
{
  *result = 0;
  *(result + 8) = 0;
  *(result + 16) = 0;
  *result = *a2;
  *(result + 16) = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = 0;
  *(result + 40) = 0;
  *(result + 24) = *(a2 + 24);
  v4 = *(a2 + 48);
  *(result + 40) = *(a2 + 40);
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 24) = 0;
  *(result + 48) = v4;
  *(result + 56) = a4;
  *(result + 64) = a3;
  return result;
}

void sub_100225E0C()
{
  if ((byte_10045B0B8 & 1) == 0)
  {
    byte_10045B0B8 = 1;
    sub_10000CB40(qword_10045B0A8);

    __cxa_atexit(sub_10000CEB0, qword_10045B0A8, &_mh_execute_header);
  }
}

void sub_100225E7C()
{
  if ((byte_10045B0D0 & 1) == 0)
  {
    byte_10045B0D0 = 1;
    sub_10000CF5C(qword_10045B0C0);

    __cxa_atexit(sub_10000CEB0, qword_10045B0C0, &_mh_execute_header);
  }
}

uint64_t sub_100225EEC(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v2 = result;
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
      return v2;
    }
  }

  return result;
}

uint64_t sub_100225F64(uint64_t a1, void *a2, int a3, uint64_t a4, uint64_t *a5)
{
  *a1 = off_100443540;
  v6 = a2[1];
  *(a1 + 8) = *a2;
  v7 = a1 + 8;
  *(a1 + 16) = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 24) = a3;
  *(a1 + 32) = *a4;
  *a4 = 0;
  *(a4 + 8) = 0;
  v8 = *a5;
  v9 = a5[1];
  *(a1 + 48) = *a5;
  *(a1 + 56) = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
    v8 = *(a1 + 48);
  }

  (*(*v8 + 32))(v8, v7);
  return a1;
}

void sub_100226028(_Unwind_Exception *a1)
{
  sub_10002BB1C(v3);
  sub_10002BB1C(v2);
  sub_10002BB1C(v1);
  _Unwind_Resume(a1);
}

void *sub_10022604C(void *a1)
{
  *a1 = off_100443540;
  v2 = a1[6];
  if (v2)
  {
    (*(*v2 + 40))(v2, a1 + 1);
  }

  v3 = a1[7];
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
  }

  v4 = a1[5];
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
  }

  v5 = a1[2];
  if (!v5 || atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return a1;
  }

  (v5->__on_zero_shared)(v5);
  std::__shared_weak_count::__release_weak(v5);
  return a1;
}

void sub_1002261AC(void *a1)
{
  sub_10022604C(a1);

  operator delete();
}

void sub_1002261E4(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v6 = *(a1 + 24);
  v7 = *(a1 + 40);
  v14.n128_u64[0] = *(a1 + 32);
  v14.n128_u64[1] = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  v8 = sub_1002551EC(v15, v6, &v14);
  v9 = v14.n128_u64[1];
  if (v14.n128_u64[1] && !atomic_fetch_add((v14.n128_u64[1] + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v9->__on_zero_shared)(v9, v8);
    std::__shared_weak_count::__release_weak(v9);
  }

  (*(**(a1 + 48) + 16))(*(a1 + 48), a1 + 8, a2, v15, v8);
  v10 = (a3[1] - *a3) >> 4;
  v12 = (a2[1] - *a2) >> 5;
  v13 = v10;
  if (v10 != v12)
  {
    sub_100014A08(v18, "");
    sub_10022679C("unexpected number of radio map entries returned, ", &v20);
    sub_100181374(&v13, &v21);
    sub_1002267EC(" expecting, ", &v22);
    sub_100181374(&v12, &v23);
    sub_1000E661C(v18, &v20, 4);
    if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v23.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v22.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_13:
        if ((SHIBYTE(v21.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_14;
        }

        goto LABEL_19;
      }
    }

    else if ((SHIBYTE(v22.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_13;
    }

    operator delete(v22.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v21.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_14:
      if ((SHIBYTE(v20.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_20;
    }

LABEL_19:
    operator delete(v21.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v20.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_15:
      if ((v19 & 0x80000000) == 0)
      {
        goto LABEL_16;
      }

LABEL_21:
      operator delete(v18[0]);
LABEL_16:
      sub_10003F5D0(&__p);
    }

LABEL_20:
    operator delete(v20.__r_.__value_.__l.__data_);
    if ((v19 & 0x80000000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_21;
  }

  v11 = v16;
  if (v16)
  {
    if (!atomic_fetch_add(&v16->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v11->__on_zero_shared)(v11);
      std::__shared_weak_count::__release_weak(v11);
    }
  }
}

void sub_100226464(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  sub_100048F1C(v27);
  sub_100225EEC(&a13);
  _Unwind_Resume(a1);
}

void sub_1002264B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  while (1)
  {
    v23 = *(v22 - 1);
    v22 -= 3;
    if (v23 < 0)
    {
      operator delete(*v22);
    }

    if (v22 == &a22)
    {
      JUMPOUT(0x100226480);
    }
  }
}

void sub_1002264DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_100225EEC(va);
  _Unwind_Resume(a1);
}

void sub_1002264F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10002BB1C(va);
  _Unwind_Resume(a1);
}

void sub_100226504(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 24);
  v5 = *(a1 + 40);
  v11.n128_u64[0] = *(a1 + 32);
  v11.n128_u64[1] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  v6 = sub_1002551EC(v12, v4, &v11);
  v7 = v11.n128_u64[1];
  if (v11.n128_u64[1] && !atomic_fetch_add((v11.n128_u64[1] + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7, v6);
    std::__shared_weak_count::__release_weak(v7);
    v8 = *(a1 + 48);
    v9 = *(a2 + 24);
    if (!v9)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v8 = *(a1 + 48);
    v9 = *(a2 + 24);
    if (!v9)
    {
LABEL_8:
      v15 = v9;
      goto LABEL_12;
    }
  }

  if (v9 != a2)
  {
    v9 = (*(*v9 + 16))(v9, v6);
    goto LABEL_8;
  }

  v15 = v14;
  (*(*v9 + 24))(v9, v14, v6);
LABEL_12:
  (*(*v8 + 24))(v8, a1 + 8, v12, v14, v6);
  if (v15 == v14)
  {
    (*(*v15 + 32))(v15);
    v10 = v13;
    if (!v13)
    {
      return;
    }

    goto LABEL_18;
  }

  if (v15)
  {
    (*(*v15 + 40))(v15);
  }

  v10 = v13;
  if (v13)
  {
LABEL_18:
    if (!atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v10->__on_zero_shared)(v10);
      std::__shared_weak_count::__release_weak(v10);
    }
  }
}

void sub_10022673C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_100225EEC(va);
  _Unwind_Resume(a1);
}

void sub_100226750(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  sub_10022683C(va1);
  sub_100225EEC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100226780@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 40);
  *a2 = *(result + 32);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

std::string *sub_10022679C@<X0>(std::string::value_type *__s@<X0>, std::string *a2@<X8>)
{
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  return std::string::assign(a2, __s);
}

void sub_1002267D0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

std::string *sub_1002267EC@<X0>(std::string::value_type *__s@<X0>, std::string *a2@<X8>)
{
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  return std::string::assign(a2, __s);
}

void sub_100226820(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10022683C(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
    return a1;
  }

  else
  {
    if (v2)
    {
      (*(*v2 + 40))(v2);
    }

    return a1;
  }
}

void sub_1002268C8()
{
  if ((byte_10045B0B8 & 1) == 0)
  {
    byte_10045B0B8 = 1;
    sub_10000CB40(qword_10045B0A8);

    __cxa_atexit(sub_10000CEB0, qword_10045B0A8, &_mh_execute_header);
  }
}

void sub_100226938()
{
  if ((byte_10045B0D0 & 1) == 0)
  {
    byte_10045B0D0 = 1;
    sub_10000CF5C(qword_10045B0C0);

    __cxa_atexit(sub_10000CEB0, qword_10045B0C0, &_mh_execute_header);
  }
}

double sub_1002269A8(uint64_t a1)
{
  *(a1 + 16) = 0;
  *a1 = off_1004435A0;
  *(a1 + 8) = a1 + 16;
  *(a1 + 24) = 0;
  *(a1 + 32) = a1 + 32;
  *(a1 + 40) = a1 + 32;
  *(a1 + 48) = xmmword_1003D9450;
  *(a1 + 64) = 0;
  result = 0.0;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 1065353216;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 1065353216;
  return result;
}

void sub_100226A08(uint64_t a1@<X0>, uint64_t ***a2@<X1>, void *a3@<X2>, void **a4@<X8>)
{
  if (sub_100231A58(a1 + 64, a2))
  {
    *a4 = 0;
    a4[1] = 0;
    a4[2] = 0;
    sub_100226D1C(a4, (a3[1] - *a3) >> 5);
    v8 = sub_100231A7C(a1 + 64, a2);
    v9 = *a3;
    v10 = a3[1];
    if (*a3 != v10)
    {
      v11 = v8;
      do
      {
        v13 = v9 + 2;
        v12 = *v9;
        v14 = *v9 >> 31;
        if (v12 >> 31 == v12)
        {
          *&v25 = *v13;
          v14 = v12;
        }

        else
        {
          v15 = *v13;
          v26 = v9[6];
          v25 = v15;
        }

        v24 = v14 ^ v12;
        v27 = v11;
        sub_100226EBC(a1 + 8, &v24, &v22);
        v16 = a4[1];
        if (v16 >= a4[2])
        {
          v17 = sub_1002286C0(a4, &v22);
        }

        else
        {
          *v16 = 0;
          if (v22 == 1)
          {
            *(v16 + 8) = v23;
            v23 = 0uLL;
            *v16 = 1;
          }

          v17 = v16 + 24;
        }

        a4[1] = v17;
        if (v22 == 1)
        {
          v18 = *(&v23 + 1);
          if (*(&v23 + 1))
          {
            if (!atomic_fetch_add((*(&v23 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
            {
              (v18->__on_zero_shared)(v18);
              std::__shared_weak_count::__release_weak(v18);
            }
          }
        }

        v9 += 8;
      }

      while (v9 != v10);
    }
  }

  else
  {
    v20 = *a3;
    v19 = a3[1];
    LOBYTE(v24) = 0;
    a4[1] = 0;
    a4[2] = 0;
    *a4 = 0;
    v22 = a4;
    LOBYTE(v23) = 0;
    v21 = v19 - v20;
    if (v21)
    {
      if ((v21 >> 5) < 0xAAAAAAAAAAAAAABLL)
      {
        operator new();
      }

      sub_10000FC84();
    }
  }
}

void sub_100226CD0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void **);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  sub_10022823C(va);
  sub_100192074(va1);
  _Unwind_Resume(a1);
}

void sub_100226CEC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100192074(va);
  sub_1001812AC(v2);
  _Unwind_Resume(a1);
}

void *sub_100226D1C(void *result, unint64_t a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((result[2] - *result) >> 3) < a2)
  {
    if (a2 < 0xAAAAAAAAAAAAAABLL)
    {
      v2 = result[1] - *result;
      operator new();
    }

    sub_10000FC84();
  }

  return result;
}

uint64_t sub_100226EBC@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = (result + 8);
  v5 = *(result + 8);
  if (!v5)
  {
    goto LABEL_11;
  }

  v7 = result;
  v8 = (result + 8);
  do
  {
    result = sub_100228314(v7, (v5 + 4), a2);
    if (result)
    {
      v9 = 1;
    }

    else
    {
      v9 = 0;
    }

    if (!result)
    {
      v8 = v5;
    }

    v5 = v5[v9];
  }

  while (v5);
  if (v8 == v4 || (result = sub_100228314(v7, a2, (v8 + 4)), (result & 1) != 0))
  {
LABEL_11:
    v10 = 0;
  }

  else
  {
    result = v8[11];
    if (*(v7 + 32) != result)
    {
      v12 = *result;
      v11 = *(result + 8);
      *(v12 + 8) = v11;
      *v11 = v12;
      --*(v7 + 40);
      operator delete(result);
      operator new();
    }

    v13 = v8[10];
    *(a3 + 8) = v8[9];
    *(a3 + 16) = v13;
    if (v13)
    {
      v14 = (v13 + 8);
      v10 = 1;
      atomic_fetch_add_explicit(v14, 1uLL, memory_order_relaxed);
    }

    else
    {
      v10 = 1;
    }
  }

  *a3 = v10;
  return result;
}

void sub_100227104(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10002BB1C(va);
  _Unwind_Resume(a1);
}

void sub_100227118(uint64_t a1, uint64_t ***a2, uint64_t *a3, void *a4)
{
  v6 = (a3[1] - *a3) >> 5;
  v37 = (a4[1] - *a4) >> 4;
  v38 = v6;
  if (v6 != v37)
  {
    sub_1000474A4(buf, "");
    sub_1000BDA70("macs and radioMaps do not match 1-to-1, macs,", &v39);
    sub_100181374(&v38, &v40);
    sub_1002267EC(",radiomaps, ", &v41);
    sub_100181374(&v37, &v42);
    sub_1000E661C(buf, &v39, 4);
    if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v42.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v41.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_57:
        if ((SHIBYTE(v40.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_58;
        }

        goto LABEL_63;
      }
    }

    else if ((SHIBYTE(v41.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_57;
    }

    operator delete(v41.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v40.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_58:
      if ((SHIBYTE(v39.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_59;
      }

      goto LABEL_64;
    }

LABEL_63:
    operator delete(v40.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v39.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_59:
      if ((SHIBYTE(v47) & 0x80000000) == 0)
      {
        goto LABEL_60;
      }

LABEL_65:
      operator delete(*buf);
LABEL_60:
      sub_1000BC6D8(&__p);
    }

LABEL_64:
    operator delete(v39.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v47) & 0x80000000) == 0)
    {
      goto LABEL_60;
    }

    goto LABEL_65;
  }

  v35 = sub_100231B70(a1 + 64, a2);
  v7 = *a3;
  if (a3[1] != *a3)
  {
    v8 = 0;
    v9 = (a1 + 16);
    do
    {
      v10 = (v7 + 32 * v8);
      v13 = *v10;
      v12 = v10 + 2;
      v11 = v13;
      v14 = v13 >> 31;
      if (v13 >> 31 == v13)
      {
        v39.__r_.__value_.__l.__size_ = *v12;
        LODWORD(v39.__r_.__value_.__l.__data_) = 0;
        LODWORD(v40.__r_.__value_.__r.__words[1]) = v35;
        v15 = *v9;
        if (!*v9)
        {
          goto LABEL_48;
        }
      }

      else
      {
        v16 = *v12;
        LODWORD(v40.__r_.__value_.__l.__data_) = v12[4];
        *&v39.__r_.__value_.__r.__words[1] = v16;
        LODWORD(v39.__r_.__value_.__l.__data_) = v14 ^ v11;
        LODWORD(v40.__r_.__value_.__r.__words[1]) = v35;
        v15 = *v9;
        if (!*v9)
        {
LABEL_48:
          if (v8 >= (a4[1] - *a4) >> 4)
          {
            sub_1000BFF58();
          }

          sub_100227668(a1 + 8, &v39);
          goto LABEL_4;
        }
      }

      v17 = v9;
      do
      {
        v18 = SLODWORD(v39.__r_.__value_.__l.__data_) >> 31;
        if (SLODWORD(v39.__r_.__value_.__l.__data_) >> 31 == LODWORD(v39.__r_.__value_.__l.__data_))
        {
          *&v47 = v39.__r_.__value_.__l.__size_;
          v19 = 0;
          v20 = *(v15 + 8);
          v21 = v20 >> 31;
          v22 = 0;
          if (v20 >> 31 == v20)
          {
            goto LABEL_20;
          }
        }

        else
        {
          v47 = *&v39.__r_.__value_.__r.__words[1];
          data = v40.__r_.__value_.__l.__data_;
          v19 = v18 ^ LODWORD(v39.__r_.__value_.__l.__data_);
          v20 = *(v15 + 8);
          v21 = v20 >> 31;
          v22 = (v18 ^ LODWORD(v39.__r_.__value_.__l.__data_)) >> 31;
          if (v20 >> 31 == v20)
          {
LABEL_20:
            if (v22 != v19 || v15[5] < v47)
            {
              goto LABEL_10;
            }

            *&v44 = v15[5];
            v25 = 0;
            v26 = 0;
            if (v18 == LODWORD(v39.__r_.__value_.__l.__data_))
            {
              goto LABEL_33;
            }

            goto LABEL_23;
          }
        }

        if (v22 != v19)
        {
          v23 = bswap64(v15[5]);
          v24 = bswap64(v47);
          if (v23 != v24 || (v23 = bswap64(v15[6]), v24 = bswap64(*(&v47 + 1)), v23 != v24) || (v23 = bswap32(*(v15 + 14)), v24 = bswap32(data), v23 != v24))
          {
            v29 = v23 < v24 ? -1 : 1;
            if (v29 < 0)
            {
LABEL_10:
              ++v15;
              goto LABEL_11;
            }
          }
        }

        v44 = *(v15 + 5);
        v45 = *(v15 + 14);
        v25 = v21 ^ v20;
        v26 = v25 >> 31;
        if (v18 == LODWORD(v39.__r_.__value_.__l.__data_))
        {
LABEL_33:
          if (v26 != v25 || v39.__r_.__value_.__l.__size_ < v44)
          {
            goto LABEL_35;
          }

          goto LABEL_40;
        }

LABEL_23:
        if (v26 != v25)
        {
          v27 = bswap64(v39.__r_.__value_.__l.__size_);
          v28 = bswap64(v44);
          if (v27 != v28 || (v27 = bswap64(v39.__r_.__value_.__r.__words[2]), v28 = bswap64(*(&v44 + 1)), v27 != v28) || (v27 = bswap32(v40.__r_.__value_.__l.__data_), v28 = bswap32(v45), v27 != v28))
          {
            v30 = v27 < v28 ? -1 : 1;
            if (v30 < 0)
            {
LABEL_35:
              v17 = v15;
              goto LABEL_11;
            }
          }
        }

LABEL_40:
        v31 = sub_10023189C(v15 + 16, &v40.__r_.__value_.__r.__words[1]);
        if (v31)
        {
          v32 = 8;
        }

        else
        {
          v32 = 0;
        }

        if (!v31)
        {
          v17 = v15;
        }

        v15 = (v15 + v32);
LABEL_11:
        v15 = *v15;
      }

      while (v15);
      if (v17 == v9 || sub_100228314(a1 + 8, &v39, (v17 + 4)))
      {
        goto LABEL_48;
      }

      if (qword_10045B080 != -1)
      {
        sub_100385F98();
      }

      v33 = qword_10045B088;
      if (os_log_type_enabled(qword_10045B088, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_ERROR, "attempting to insert a mac,locationId pair that already exists in the cache", buf, 2u);
      }

LABEL_4:
      ++v8;
      v7 = *a3;
    }

    while (v8 < (a3[1] - *a3) >> 5);
  }
}

void sub_100227608(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a32 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100227638(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  while (1)
  {
    v16 = *(v15 - 1);
    v15 -= 3;
    if (v16 < 0)
    {
      operator delete(*v15);
    }

    if (v15 == &a15)
    {
      JUMPOUT(0x100227620);
    }
  }
}

BOOL sub_100227668(uint64_t a1, uint64_t a2)
{
  v4 = a1 + 8;
  v5 = *(a1 + 8);
  if (!v5)
  {
    goto LABEL_11;
  }

  v6 = a1 + 8;
  do
  {
    v7 = sub_100228314(a1, v5 + 32, a2);
    if (v7)
    {
      v8 = 8;
    }

    else
    {
      v8 = 0;
    }

    if (!v7)
    {
      v6 = v5;
    }

    v5 = *(v5 + v8);
  }

  while (v5);
  if (v6 == v4 || (result = sub_100228314(a1, a2, v6 + 32)))
  {
LABEL_11:
    if (*(a1 + 16) >= *(a1 + 48))
    {
      sub_1002288B4(a1);
    }

    operator new();
  }

  return result;
}

void sub_100227870(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10002BB1C(va);
  _Unwind_Resume(a1);
}

void sub_100227884(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v4 = (a3[1] - *a3) >> 5;
  v5 = a4[1] - *a4;
  v11 = v5 >> 4;
  v12 = v4;
  if (v4 != v5 >> 4)
  {
    sub_1000474A4(&__p, "");
    sub_1000BDA70("macs and radioMaps do not match 1-to-1, macs,", &v17);
    sub_100181374(&v12, &v18);
    sub_1002267EC(",radiomaps, ", &v19);
    sub_100181374(&v11, &v20);
    sub_1000E661C(&__p, &v17, 4);
    if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v20.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v19.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_22:
        if ((SHIBYTE(v18.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_23;
        }

        goto LABEL_28;
      }
    }

    else if ((SHIBYTE(v19.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_22;
    }

    operator delete(v19.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v18.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_23:
      if ((SHIBYTE(v17.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_24;
      }

      goto LABEL_29;
    }

LABEL_28:
    operator delete(v18.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v17.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_24:
      if ((SHIBYTE(v16) & 0x80000000) == 0)
      {
        goto LABEL_25;
      }

LABEL_30:
      operator delete(__p);
LABEL_25:
      sub_1000BC6D8(&v13);
    }

LABEL_29:
    operator delete(v17.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v16) & 0x80000000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_30;
  }

  memset(&v17, 0, sizeof(v17));
  __p = 0;
  v15 = 0;
  v16 = 0;
  if (v5)
  {
    if ((v5 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_10000FC84();
  }

  v6 = a4[1];
  if (v6 != *a4)
  {
    if (!(((v6 - *a4) >> 4) >> 59))
    {
      operator new();
    }

    sub_10000FC84();
  }

  (*(*a1 + 32))(a1, a2, &__p, &v17);
  if (__p)
  {
    v15 = __p;
    operator delete(__p);
  }

  v7 = v17.__r_.__value_.__r.__words[0];
  if (v17.__r_.__value_.__r.__words[0])
  {
    size = v17.__r_.__value_.__l.__size_;
    v9 = v17.__r_.__value_.__r.__words[0];
    if (v17.__r_.__value_.__l.__size_ != v17.__r_.__value_.__r.__words[0])
    {
      do
      {
        v10 = *(size - 8);
        if (v10 && !atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v10->__on_zero_shared)(v10);
          std::__shared_weak_count::__release_weak(v10);
        }

        size -= 16;
      }

      while (size != v7);
      v9 = v17.__r_.__value_.__r.__words[0];
    }

    v17.__r_.__value_.__l.__size_ = v7;
    operator delete(v9);
  }
}

void sub_100227EE4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a18 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_100227F28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  while (1)
  {
    v20 = *(v19 - 1);
    v19 -= 3;
    if (v20 < 0)
    {
      operator delete(*v19);
    }

    if (v19 == &a19)
    {
      JUMPOUT(0x100227F04);
    }
  }
}

void sub_100227F54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, void *a19)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_100048F1C(&a19);
  _Unwind_Resume(a1);
}

void sub_100227F88(void *a1)
{
  v2 = a1 + 2;
  sub_100228180((a1 + 1), a1[2]);
  *v2 = 0;
  v2[1] = 0;
  *(v2 - 1) = v2;
  if (v2[4])
  {
    v3 = v2 + 2;
    v4 = a1[5];
    v5 = *(a1[4] + 8);
    v6 = *v4;
    *(v6 + 8) = v5;
    *v5 = v6;
    a1[6] = 0;
    if (v4 != v3)
    {
      do
      {
        v7 = v4[1];
        operator delete(v4);
        v4 = v7;
      }

      while (v7 != v3);
    }
  }
}

uint64_t sub_100228000(uint64_t a1)
{
  *a1 = off_1004435A0;
  sub_1001F324C((a1 + 64));
  if (*(a1 + 48))
  {
    v2 = *(a1 + 40);
    v3 = *(*(a1 + 32) + 8);
    v4 = *v2;
    *(v4 + 8) = v3;
    *v3 = v4;
    *(a1 + 48) = 0;
    if (v2 != (a1 + 32))
    {
      do
      {
        v5 = v2[1];
        operator delete(v2);
        v2 = v5;
      }

      while (v5 != (a1 + 32));
    }
  }

  sub_100228180(a1 + 8, *(a1 + 16));
  return a1;
}

void sub_100228098(uint64_t a1)
{
  *a1 = off_1004435A0;
  sub_1001F324C((a1 + 64));
  if (*(a1 + 48))
  {
    v2 = *(a1 + 40);
    v3 = *(*(a1 + 32) + 8);
    v4 = *v2;
    *(v4 + 8) = v3;
    *v3 = v4;
    *(a1 + 48) = 0;
    if (v2 != (a1 + 32))
    {
      do
      {
        v5 = v2[1];
        operator delete(v2);
        v2 = v5;
      }

      while (v5 != (a1 + 32));
    }
  }

  sub_100228180(a1 + 8, *(a1 + 16));

  operator delete();
}

void sub_100228180(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_100228180(a1, *a2);
    sub_100228180(a1, a2[1]);
    v4 = a2[10];
    if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
      v5 = a2;
    }

    else
    {
      v5 = a2;
    }

    operator delete(v5);
  }
}

void ***sub_10022823C(void ***a1)
{
  if ((a1[1] & 1) == 0)
  {
    v2 = *a1;
    v3 = **a1;
    if (v3)
    {
      v4 = v2[1];
      v5 = **a1;
      if (v4 != v3)
      {
        v6 = v2[1];
        do
        {
          v7 = *(v6 - 24);
          v6 -= 24;
          if (v7 == 1)
          {
            v8 = *(v4 - 1);
            if (v8 && !atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              (v8->__on_zero_shared)(v8);
              std::__shared_weak_count::__release_weak(v8);
            }

            *v6 = 0;
          }

          v4 = v6;
        }

        while (v6 != v3);
        v5 = **a1;
      }

      v2[1] = v3;
      operator delete(v5);
    }
  }

  return a1;
}

BOOL sub_100228314(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = (a3 + 8);
  v4 = *a3;
  v5 = *a3 >> 31;
  if (v4 >> 31 == v4)
  {
    *&v22 = *v3;
    v6 = *a3;
  }

  else
  {
    v22 = *v3;
    v23 = *(a3 + 24);
    v6 = v4 >> 31;
  }

  v7 = v6 ^ v4;
  v8 = (a2 + 8);
  v9 = *a2 >> 31;
  v10 = (v6 ^ v4) >> 31;
  if (v9 != *a2)
  {
    if (v10 == v7 || (v16 = bswap64(*v8), v17 = bswap64(v22), v16 == v17) && (v16 = bswap64(*(a2 + 16)), v17 = bswap64(*(&v22 + 1)), v16 == v17) && (v16 = bswap32(*(a2 + 24)), v17 = bswap32(v23), v16 == v17) || (v16 < v17 ? (v19 = -1) : (v19 = 1), (v19 & 0x80000000) == 0))
    {
      v20 = *v8;
      v21 = *(a2 + 24);
      v11 = v9 ^ *a2;
      v12 = v11 >> 31;
      if (v5 != v4)
      {
        goto LABEL_8;
      }

      goto LABEL_24;
    }

    return 1;
  }

  if (v10 != v7 || *v8 < v22)
  {
    return 1;
  }

  *&v20 = *v8;
  v11 = 0;
  v12 = 0;
  if (v5 != v4)
  {
LABEL_8:
    if (v12 == v11)
    {
      goto LABEL_32;
    }

    v13 = bswap64(*v3);
    v14 = bswap64(v20);
    if (v13 == v14 && (v13 = bswap64(*(a3 + 16)), v14 = bswap64(*(&v20 + 1)), v13 == v14) && (v13 = bswap32(*(a3 + 24)), v14 = bswap32(v21), v13 == v14))
    {
      v15 = 0;
    }

    else
    {
      v15 = v13 < v14 ? -1 : 1;
    }

    if ((v15 & 0x80000000) == 0)
    {
      goto LABEL_32;
    }

    return 0;
  }

LABEL_24:
  if (v12 != v11 || *v3 < v20)
  {
    return 0;
  }

LABEL_32:

  return sub_10023189C((a2 + 32), (a3 + 32));
}

uint64_t sub_10022855C(uint64_t a1, uint64_t a2)
{
  v4 = (a1 + 8);
  v3 = *(a1 + 8);
  if (!v3)
  {
    goto LABEL_7;
  }

  while (1)
  {
    while (1)
    {
      v6 = v3;
      if (!sub_100228314(a1, a2, (v3 + 4)))
      {
        break;
      }

      v3 = *v6;
      v4 = v6;
      if (!*v6)
      {
        goto LABEL_7;
      }
    }

    if (!sub_100228314(a1, (v6 + 4), a2))
    {
      break;
    }

    v4 = v6 + 1;
    v3 = v6[1];
    if (!v3)
    {
      goto LABEL_7;
    }
  }

  if (!*v4)
  {
LABEL_7:
    operator new();
  }

  return *v4;
}