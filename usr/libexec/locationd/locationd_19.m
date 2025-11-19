void sub_10013E220(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_1016B2138(va);
  _Unwind_Resume(a1);
}

_DWORD *sub_10013E25C(_DWORD *result, _BYTE *a2)
{
  *a2 = 0;
  v2 = *result - 2;
  if (v2 <= 0xA && ((0x6FFu >> v2) & 1) != 0)
  {
    *a2 = byte_101DB5C90[v2];
  }

  return result;
}

void sub_10013E290(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_1001D0818();
}

uint64_t sub_10013E2E8(uint64_t result, void *a2, uint64_t a3)
{
  for (i = a2[2]; i; i = *i)
  {
    for (j = i[5]; j; j = *j)
    {
      j[3] = 0;
      *(j + 11) = 0;
    }
  }

  v7 = *(result + 152);
  for (k = *(result + 160); v7 != k; v7 += 44)
  {
    if (*(v7 + 173) != 1)
    {
      continue;
    }

    v18 = 0;
    v19 = 0;
    sub_100285D0C(v7, &v19, &v18);
    v20 = &v19;
    v9 = sub_1002C83F4(a2, &v19);
    v10 = v18;
    v17 = v18;
    v20 = &v17;
    v11 = sub_1002C8778(v9 + 3, &v17);
    v20 = (*v7 | (v10 << 32));
    result = sub_1002C8668(a3, &v20);
    *(v11 + 5) = v10;
    if ((*(v7 + 12) & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || *(v7 + 13) <= 0.0)
    {
      v13 = *(v7 + 15);
      if (v13 == -1)
      {
        goto LABEL_14;
      }

      v12 = 0;
      v14 = *(v7 + 16);
      if (v14 == -1 || v13 > v14)
      {
        goto LABEL_16;
      }

      if ((*(v7 + 17) & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
LABEL_14:
        v12 = 0;
      }

      else
      {
        v12 = *(v7 + 18) > 0.0;
      }
    }

    else
    {
      v12 = 1;
    }

LABEL_16:
    v15 = *(v7 + 8);
    if (v15 > 0xA || ((1 << v15) & 0x68D) == 0)
    {
      *(v11 + 6) = v7[42];
      if (!v12)
      {
        continue;
      }

      v16 = 1;
      goto LABEL_20;
    }

    *(v11 + 7) = v7[42];
    if (v12)
    {
      v16 = 2;
LABEL_20:
      *(v11 + 11) |= v16;
    }
  }

  return result;
}

uint64_t sub_10013E4CC(uint64_t a1, uint64_t *a2)
{
  sub_10013E618(a1, a2);
  sub_10013874C(a2);
  v4 = *(a1 + 40);
  if (v4 == 1)
  {
    if (qword_1025D4650 != -1)
    {
      sub_1002981B4();
    }

    v5 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 24);
      v10 = 134349056;
      v11 = v6;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEFAULT, "#gpsd,dumping svinfo cache,sz,%{public}zu", &v10, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1017760F8();
    }

    v7 = *(a1 + 16);
    if (v7)
    {
      v8 = a2[1];
      do
      {
        if (v8 >= a2[2])
        {
          v8 = sub_1002854C8(a2, (v7 + 3));
        }

        else
        {
          sub_100285AB8(v8, (v7 + 3));
          v8 += 144;
        }

        a2[1] = v8;
        v7 = *v7;
      }

      while (v7);
    }
  }

  return v4;
}

void sub_10013E618(void *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  if (*a2 != v3)
  {
    do
    {
      v12 = sub_10027F24C(v2);
      if (v12)
      {
        v13 = &v12;
        v5 = sub_100284B98(a1, &v12);
        v6 = *v2;
        *(v5 + 40) = *(v2 + 16);
        *(v5 + 3) = v6;
        sub_10007057C((v5 + 6), (v2 + 24));
        v7 = *(v2 + 48);
        *(v2 + 48) = 0;
        v8 = v5[9];
        v5[9] = v7;
        if (v8)
        {
          operator delete();
        }

        v9 = *(v2 + 56);
        v10 = *(v2 + 72);
        v11 = *(v2 + 88);
        *(v5 + 64) = *(v2 + 104);
        *(v5 + 6) = v10;
        *(v5 + 7) = v11;
        *(v5 + 5) = v9;
        sub_10007057C((v5 + 17), (v2 + 112));
        *(v5 + 160) = *(v2 + 136);
      }

      v2 += 144;
    }

    while (v2 != v3);
  }
}

uint64_t sub_10013E724(uint64_t a1)
{
  v1 = *(a1 + 112);
  v2 = *(a1 + 120);
  if (v1 == v2)
  {
    v3 = 0;
    return v3 != 0;
  }

  v3 = 0;
  do
  {
    v3 += *(v1 + 173);
    v1 += 176;
  }

  while (v1 != v2);
  if (v3 > 4)
  {
    return 4;
  }

  if (v3 == 4)
  {
    return 3;
  }

  if (v3 <= 2)
  {
    return v3 != 0;
  }

  return 2;
}

void sub_10013E784(uint64_t a1, uint64_t a2)
{
  v5 = (a1 + 248);
  v6 = a1 + 240;
  sub_1003C93BC(a1 + 240, *(a1 + 248));
  *v5 = 0;
  v5[1] = 0;
  *(v5 - 1) = v5;
  if ((sub_10001CF3C() & 1) == 0)
  {
    v49[0] = 0;
    v49[1] = 0;
    v48 = v49;
    v8 = *(a2 + 112);
    v9 = *(a2 + 120);
    if (v8 != v9)
    {
      do
      {
        if (*(v8 + 173) == 1)
        {
          LODWORD(v7) = *(v8 + 168);
          if (*&v7 > 0.0)
          {
            v10 = *(v8 + 8);
            if (v10 != 4 && (sub_1002C8BB0(v10) & 1) != 0)
            {
              v11 = v49[0];
              if (!v49[0])
              {
                goto LABEL_15;
              }

              v12 = *(v8 + 8);
              v13 = v49;
              do
              {
                v14 = *(v11 + 32);
                v15 = v14 >= v12;
                v16 = v14 < v12;
                if (v15)
                {
                  v13 = v11;
                }

                v11 = v11[v16];
              }

              while (v11);
              if (v13 != v49 && v12 >= *(v13 + 32))
              {
                v20 = v13[6];
                v19 = v13[7];
                if (v20 >= v19)
                {
                  v22 = v13[5];
                  v23 = v20 - v22;
                  v24 = (v20 - v22) >> 2;
                  v25 = v24 + 1;
                  if ((v24 + 1) >> 62)
                  {
                    sub_10028C64C();
                  }

                  v26 = v19 - v22;
                  if (v26 >> 1 > v25)
                  {
                    v25 = v26 >> 1;
                  }

                  v15 = v26 >= 0x7FFFFFFFFFFFFFFCLL;
                  v27 = 0x3FFFFFFFFFFFFFFFLL;
                  if (!v15)
                  {
                    v27 = v25;
                  }

                  if (v27)
                  {
                    sub_1000B85D0((v13 + 5), v27);
                  }

                  v28 = (v20 - v22) >> 2;
                  v29 = (4 * v24);
                  v30 = (4 * v24 - 4 * v28);
                  *v29 = *(v8 + 168);
                  v21 = v29 + 1;
                  memcpy(v30, v22, v23);
                  v31 = v13[5];
                  v13[5] = v30;
                  v13[6] = v21;
                  v13[7] = 0;
                  if (v31)
                  {
                    operator delete(v31);
                  }
                }

                else
                {
                  LODWORD(v7) = *(v8 + 168);
                  *v20 = LODWORD(v7);
                  v21 = v20 + 4;
                }

                v13[6] = v21;
              }

              else
              {
LABEL_15:
                v50 = (v8 + 8);
                v17 = sub_1002CCA8C(&v48, (v8 + 8));
                sub_1002982C8(v17 + 5, 0x10uLL);
                __src = *(v8 + 168);
                v50 = (v8 + 8);
                v18 = sub_1002CCA8C(&v48, (v8 + 8));
                sub_1002AF13C(v18 + 5, &__src, &v48, 1uLL);
              }
            }
          }
        }

        v8 += 176;
      }

      while (v8 != v9);
      v32 = v48;
      if (v48 != v49)
      {
        do
        {
          v34 = v32[5];
          v33 = v32[6];
          if (v34 == v33)
          {
            v35 = 0;
          }

          else
          {
            v35 = 0;
            LODWORD(v7) = *(a1 + 292);
            v36 = v32[5];
            do
            {
              v37 = *v36++;
              if (v37 >= *&v7)
              {
                ++v35;
              }
            }

            while (v36 != v33);
          }

          v38 = v33 - v34;
          if (v38 >= *(a1 + 276))
          {
            if (v38 >= 7)
            {
              v40 = 126 - 2 * __clz(v38);
              v41 = v34 == v33 ? 0 : v40;
              sub_1002CCB64(v32[5], v32[6], &v50, v41, 1, v7);
              v42 = (v32[5] + 3);
              if (v42 != v32[6])
              {
                v32[6] = v42;
              }
            }

            v2 = sub_1002C8CAC(v32 + 5);
            v34 = v32[5];
            v33 = v32[6];
            v39 = dword_100000000;
          }

          else
          {
            v39 = 0;
            LODWORD(v2) &= 0xFFFFFF00;
          }

          v50 = v32 + 4;
          v43 = sub_1002C8BCC(v6, v32 + 32);
          *(v43 + 40) = BYTE4(v39);
          *(v43 + 8) = (v33 - v34) >> 2;
          *(v43 + 9) = v39 | LODWORD(v2);
          *(v43 + 11) = v35;
          v44 = v32[1];
          if (v44)
          {
            do
            {
              v45 = v44;
              v44 = *v44;
            }

            while (v44);
          }

          else
          {
            do
            {
              v45 = v32[2];
              v46 = *v45 == v32;
              v32 = v45;
            }

            while (!v46);
          }

          v32 = v45;
        }

        while (v45 != v49);
      }
    }

    sub_10013F494(&v48, v49[0]);
  }
}

void sub_10013EC84(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100311054(va);
  _Unwind_Resume(a1);
}

double sub_10013ECA4(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  *(a1 + 32) = *(a2 + 4);
  *a1 = v2;
  *(a1 + 16) = v3;
  v4 = *(a2 + 56);
  v5 = *(a2 + 72);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 72) = v5;
  *(a1 + 56) = v4;
  v6 = *(a2 + 88);
  v7 = *(a2 + 104);
  v8 = *(a2 + 120);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 120) = v8;
  *(a1 + 104) = v7;
  *(a1 + 88) = v6;
  *(a1 + 152) = 0;
  result = 0.0;
  *(a1 + 160) = 0u;
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 168) = *(a2 + 21);
  *(a2 + 21) = 0;
  *(a2 + 152) = 0u;
  *(a1 + 192) = 0;
  *(a1 + 176) = 0u;
  *(a1 + 176) = a2[11];
  *(a1 + 192) = *(a2 + 24);
  *(a2 + 24) = 0;
  a2[11] = 0u;
  *(a1 + 216) = 0;
  *(a1 + 200) = 0u;
  *(a1 + 200) = *(a2 + 200);
  *(a1 + 216) = *(a2 + 27);
  *(a2 + 27) = 0;
  *(a2 + 200) = 0u;
  v10 = a2[14];
  a2[14] = 0u;
  *(a1 + 224) = v10;
  v11 = a2[15];
  a2[15] = 0u;
  *(a1 + 240) = v11;
  v12 = a2[16];
  a2[16] = 0u;
  *(a1 + 256) = v12;
  *(a1 + 272) = 0;
  *(a1 + 280) = 0u;
  *(a1 + 272) = a2[17];
  *(a1 + 288) = *(a2 + 36);
  *(a2 + 36) = 0;
  a2[17] = 0u;
  return result;
}

uint64_t sub_10013ED9C(uint64_t a1)
{
  v2 = *(a1 + 272);
  if (v2)
  {
    *(a1 + 280) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 264);
  *(a1 + 264) = 0;
  if (v3)
  {
    operator delete();
  }

  v4 = *(a1 + 256);
  *(a1 + 256) = 0;
  if (v4)
  {
    operator delete();
  }

  v5 = *(a1 + 248);
  *(a1 + 248) = 0;
  if (v5)
  {
    operator delete();
  }

  v6 = *(a1 + 240);
  *(a1 + 240) = 0;
  if (v6)
  {
    operator delete();
  }

  v7 = *(a1 + 232);
  *(a1 + 232) = 0;
  if (v7)
  {
    operator delete();
  }

  v8 = *(a1 + 224);
  *(a1 + 224) = 0;
  if (v8)
  {
    operator delete();
  }

  v9 = *(a1 + 200);
  if (v9)
  {
    *(a1 + 208) = v9;
    operator delete(v9);
  }

  v11 = (a1 + 176);
  sub_10013EEBC(&v11);
  v11 = (a1 + 152);
  sub_100140784(&v11);
  return a1;
}

void sub_10013EEBC(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_10013874C(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_10013EF14(uint64_t *a1)
{
  sub_1001407D8(a1);

  operator delete();
}

void sub_10013EF4C(uint64_t *a1)
{
  sub_1001409A0(a1);

  operator delete();
}

void sub_10013EF84(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = off_1024A89F0;
  sub_100140A38(a1);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);

  operator delete();
}

void sub_10013EFEC(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = off_1024A8888;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);

  operator delete();
}

void sub_10013F040(uint64_t a1)
{
  v1 = *(a1 + 32);
  if ([*(v1 + 120) isMonitoring])
  {
    sub_101159490(v1, 1, 0x64);
  }

  if (sub_100099160(*(v1 + 168) + 72))
  {
    Current = CFAbsoluteTimeGetCurrent();
    sub_1000E46CC(v1, 1);
    if (vabdd_f64(Current, *(v1 + 248)) > *(v1 + 264))
    {
      if (qword_1025D4350 != -1)
      {
        sub_101B47B2C();
      }

      v3 = qword_1025D4358;
      if (os_log_type_enabled(qword_1025D4358, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(__p) = 0;
        _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEBUG, "Aggregating gyro sensor recorder samples.", &__p, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101B480B0();
      }

      v7[0] = *(v1 + 272);
      v7[1] = 0x7FEFFFFFFFFFFFFFLL;
      v8 = 0;
      v5 = 0;
      v6 = 0;
      __p = 0;
      sub_100485D9C(&__p, v7, &v9, 1uLL);
      (*(**(v1 + 168) + 32))(*(v1 + 168), &__p);
      *(v1 + 248) = Current;
      if (__p)
      {
        v5 = __p;
        operator delete(__p);
      }
    }
  }
}

void sub_10013F1D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10013F1F8(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 176);
  v4 = *(a2 + 184);
  if (v3 != v4)
  {
    v6 = result;
    v7 = a3 + 8;
    do
    {
      v8 = *v3 & 0xFFFFFFFD;
      v14 = 0;
      result = sub_100285D0C(v3, &v14 + 1, &v14);
      if (!v8)
      {
        break;
      }

      v13 = *v3 | (v14 << 32);
      result = sub_100280E54(a3, &v13);
      if (v7 == result)
      {
        break;
      }

      v9 = *(v3 + 16);
      if (v9 > 2)
      {
        if (v9 == 3)
        {
          ++v6[307];
        }

        else if (v9 == 4)
        {
          ++v6[305];
        }
      }

      else if (v9 == 1)
      {
        ++v6[306];
      }

      else if (v9 == 2)
      {
        ++v6[304];
      }

      v10 = *(v3 + 14);
      v11 = *(v3 + 15);
      while (v10 != v11)
      {
        if (*v10 && (*(v10 + 16) & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
        {
          v12 = *(v10 + 4);
          if (v12 >= 2)
          {
            if (v12 == 2)
            {
              ++v6[302];
            }
          }

          else
          {
            ++v6[303];
          }
        }

        v10 += 32;
      }

      v3 += 36;
    }

    while (v3 != v4);
  }

  return result;
}

uint64_t sub_10013F360(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 152);
  v3 = *(a2 + 160);
  if (v2 != v3)
  {
    v4 = ((*(a2 + 16) - *(result + 80)) * 1000.0);
    do
    {
      v5 = v2[8];
      if (v5 <= 4)
      {
        if (v5 == 1)
        {
          if (!*result && v2[9] == 1)
          {
            *result = v4;
          }

          if (!*(result + 16) && v2[12] == 1)
          {
            *(result + 16) = v4;
          }
        }

        else if (v5 == 4)
        {
          if (!*(result + 4) && v2[9] == 1)
          {
            *(result + 4) = v4;
          }

          if (!*(result + 20) && v2[13] == 1)
          {
            *(result + 20) = v4;
          }
        }
      }

      else if (v5 - 5 >= 2)
      {
        if (v5 == 8)
        {
          if (!*(result + 8) && v2[9] == 1)
          {
            *(result + 8) = v4;
          }

          if (!*(result + 24) && v2[12] == 1)
          {
            *(result + 24) = v4;
          }
        }
      }

      else
      {
        if (!*(result + 12) && v2[9] == 1)
        {
          *(result + 12) = v4;
        }

        if (!*(result + 28) && v2[12] == 1)
        {
          *(result + 28) = v4;
        }
      }

      v2 += 176;
    }

    while (v2 != v3);
  }

  return result;
}

void sub_10013F494(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_10013F494(a1, *a2);
    sub_10013F494(a1, a2[1]);
    v4 = a2[5];
    if (v4)
    {
      a2[6] = v4;
      operator delete(v4);
    }

    operator delete(a2);
  }
}

void sub_10013F4F8(_DWORD *a1, uint64_t a2, double a3)
{
  v27[0] = 0;
  v27[1] = 0;
  v26 = v27;
  v5 = *(a2 + 152);
  for (i = *(a2 + 160); v5 != i; v5 += 176)
  {
    if (*(v5 + 173) == 1)
    {
      v7 = sub_1002CD0DC(*(v5 + 8), *v5);
      v24 = v7;
      v25 = BYTE4(v7);
      if ((v7 & 0x100000000) != 0)
      {
        v27[3] = &v24;
        v8 = sub_1002C8DC0(&v26, &v24);
        v9 = v8;
        v11 = v8[6];
        v10 = v8[7];
        if (v11 >= v10)
        {
          v13 = v8[5];
          v14 = v11 - v13;
          v15 = (v11 - v13) >> 2;
          v16 = v15 + 1;
          if ((v15 + 1) >> 62)
          {
            sub_10028C64C();
          }

          v17 = v10 - v13;
          if (v17 >> 1 > v16)
          {
            v16 = v17 >> 1;
          }

          v18 = v17 >= 0x7FFFFFFFFFFFFFFCLL;
          v19 = 0x3FFFFFFFFFFFFFFFLL;
          if (!v18)
          {
            v19 = v16;
          }

          if (v19)
          {
            sub_1000B85D0((v8 + 5), v19);
          }

          v20 = (v11 - v13) >> 2;
          v21 = (4 * v15);
          v22 = (4 * v15 - 4 * v20);
          *v21 = *(v5 + 168);
          v12 = v21 + 1;
          memcpy(v22, v13, v14);
          v23 = v9[5];
          v9[5] = v22;
          v9[6] = v12;
          v9[7] = 0;
          if (v23)
          {
            operator delete(v23);
          }
        }

        else
        {
          *v11 = *(v5 + 168);
          v12 = v11 + 4;
        }

        v9[6] = v12;
        sub_1002C8E98(a1, v5, v24);
      }
    }
  }

  sub_10013F6E4(a1, &v26, a3);
  if (*(a2 + 81) == 1 && *(a2 + 80) == 1)
  {
    ++a1[627];
  }

  sub_10013F494(&v26, v27[0]);
}

void sub_10013F6E4(uint64_t a1, void *a2, double a3)
{
  v190[0] = 0;
  v190[1] = 0;
  v189 = v190;
  v5 = (a2 + 1);
  v4 = *a2;
  if (*a2 != a2 + 1)
  {
    do
    {
      v6 = *(v4 + 5);
      v7 = *(v4 + 6);
      v8 = 126 - 2 * __clz(v7 - v6);
      if (v7 == v6)
      {
        v9 = 0;
      }

      else
      {
        v9 = v8;
      }

      sub_1002CCB64(v6, v7, buf, v9, 1, a3);
      v10 = sub_10014066C(&v189, v4 + 8);
      v11 = *(v4 + 5);
      v12 = *(v4 + 6) == v11;
      v13 = (*(v4 + 6) - v11) >> 2;
      *v10 = v13;
      if (!v12)
      {
        if (v13 >= 5)
        {
          v14 = 5;
        }

        else
        {
          v14 = v13;
        }

        v15 = v10 + 1;
        if (v14 <= 1)
        {
          v14 = 1;
        }

        do
        {
          v16 = *v11++;
          LODWORD(a3) = v16;
          *v15++ = v16;
          --v14;
        }

        while (v14);
      }

      v17 = *(v4 + 1);
      if (v17)
      {
        do
        {
          v18 = v17;
          v17 = *v17;
        }

        while (v17);
      }

      else
      {
        do
        {
          v18 = *(v4 + 2);
          v12 = *v18 == v4;
          v4 = v18;
        }

        while (!v12);
      }

      v4 = v18;
    }

    while (v18 != v5);
  }

  *buf = 0;
  v19 = sub_10014066C(&v189, buf);
  *buf = 1;
  v186 = sub_10014066C(&v189, buf);
  *buf = 4;
  v185 = sub_10014066C(&v189, buf);
  *buf = 2;
  v184 = sub_10014066C(&v189, buf);
  *buf = 3;
  v20 = sub_10014066C(&v189, buf);
  *buf = 5;
  v21 = sub_10014066C(&v189, buf);
  *buf = 6;
  v22 = sub_10014066C(&v189, buf);
  *buf = 7;
  v23 = sub_10014066C(&v189, buf);
  *buf = 8;
  v24 = sub_10014066C(&v189, buf);
  *buf = 9;
  v25 = sub_10014066C(&v189, buf);
  if (qword_1025D4650 != -1)
  {
    sub_1016C8BF0();
  }

  v26 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
  {
    v27 = *v19;
    v28 = *(v19 + 3);
    v29 = *(v19 + 2);
    v30 = *(v19 + 4);
    v31 = *(v19 + 5);
    v32 = *v186;
    v33 = *(v186 + 2);
    v34 = *(v186 + 3);
    v35 = *(v186 + 4);
    v36 = *(v186 + 5);
    v37 = *v185;
    v39 = *(v185 + 2);
    v38 = *(v185 + 3);
    v41 = *(v185 + 4);
    v40 = *(v185 + 5);
    v42 = *v184;
    v44 = *(v184 + 2);
    v43 = *(v184 + 3);
    v46 = *(v184 + 4);
    v45 = *(v184 + 5);
    v47 = *v20;
    v49 = *(v20 + 2);
    v48 = *(v20 + 3);
    v150 = *(v20 + 4);
    v152 = *(v20 + 5);
    v50 = *v21;
    v154 = *(v21 + 2);
    v158 = *(v21 + 3);
    v162 = *(v21 + 4);
    v164 = *(v21 + 5);
    v51 = *v22;
    v166 = *(v22 + 2);
    v170 = *(v22 + 3);
    v172 = *(v22 + 4);
    v52 = *v23;
    v176 = *(v22 + 5);
    v178 = *(v23 + 2);
    v182 = *(v23 + 3);
    v53 = *v24;
    v54 = *v25;
    *buf = 134364160;
    v56 = *(v23 + 4);
    v55 = *(v23 + 5);
    v57 = *(v24 + 2);
    v58 = *(v24 + 3);
    v59 = *(v24 + 4);
    v149 = *(v24 + 5);
    v160 = *(v25 + 2);
    v168 = *(v25 + 3);
    v174 = *(v25 + 4);
    v180 = *(v25 + 5);
    *&buf[14] = v29;
    v60 = *(v19 + 6);
    v61 = *(v186 + 6);
    v62 = *(v185 + 6);
    v63 = *(v184 + 6);
    v64 = *(v20 + 6);
    v65 = *(v21 + 6);
    v66 = *(v22 + 6);
    LODWORD(v29) = *(v23 + 6);
    v67 = *(v24 + 6);
    v156 = *(v25 + 6);
    v313 = v28;
    v315 = v30;
    v317 = v31;
    v319 = v60;
    v323 = v33;
    v325 = v34;
    v327 = v35;
    v329 = v36;
    v331 = v61;
    v335 = v39;
    v337 = v38;
    v339 = v41;
    v341 = v40;
    v343 = v62;
    v347 = v44;
    v349 = v43;
    v351 = v46;
    v353 = v45;
    v355 = v63;
    v359 = v49;
    v361 = v48;
    v363 = v150;
    v365 = v152;
    v367 = v64;
    v371 = v154;
    v373 = v158;
    v375 = v162;
    v377 = v164;
    v379 = v65;
    v383 = v166;
    v385 = v170;
    v387 = v172;
    v389 = v176;
    v391 = v66;
    v395 = v178;
    v397 = v182;
    v399 = v56;
    v401 = v55;
    v403 = *&v29;
    v407 = v57;
    v409 = v58;
    v411 = v59;
    v413 = v149;
    v415 = v67;
    v419 = v160;
    v421 = v168;
    v423 = v174;
    v425 = v180;
    v427 = v156;
    *&buf[4] = v27;
    *&buf[12] = 2050;
    v312 = 2050;
    v314 = 2050;
    v316 = 2050;
    v318 = 2050;
    v320 = 2050;
    v321 = v32;
    v322 = 2050;
    v324 = 2050;
    v326 = 2050;
    v328 = 2050;
    v330 = 2050;
    v332 = 2050;
    v333 = v37;
    v334 = 2050;
    v336 = 2050;
    v338 = 2050;
    v340 = 2050;
    v342 = 2050;
    v344 = 2050;
    v345 = v42;
    v346 = 2050;
    v348 = 2050;
    v350 = 2050;
    v352 = 2050;
    v354 = 2050;
    v356 = 2050;
    v357 = v47;
    v358 = 2050;
    v360 = 2050;
    v362 = 2050;
    v364 = 2050;
    v366 = 2050;
    v368 = 2050;
    v369 = v50;
    v370 = 2050;
    v372 = 2050;
    v374 = 2050;
    v376 = 2050;
    v378 = 2050;
    v380 = 2050;
    v381 = v51;
    v382 = 2050;
    v384 = 2050;
    v386 = 2050;
    v388 = 2050;
    v390 = 2050;
    v392 = 2050;
    v393 = v52;
    v394 = 2050;
    v396 = 2050;
    v398 = 2050;
    v400 = 2050;
    v402 = 2050;
    v404 = 2050;
    v405 = v53;
    v406 = 2050;
    v408 = 2050;
    v410 = 2050;
    v412 = 2050;
    v414 = 2050;
    v416 = 2050;
    v417 = v54;
    v418 = 2050;
    v420 = 2050;
    v422 = 2050;
    v424 = 2050;
    v426 = 2050;
    _os_log_impl(dword_100000000, v26, OS_LOG_TYPE_DEFAULT, "#track_status,L1,count,%{public}zu,cn0,%{public}.1f,%{public}.1f,%{public}.1f,%{public}.1f,%{public}.1f,Q1,count,%{public}zu,cn0,%{public}.1f,%{public}.1f,%{public}.1f,%{public}.1f,%{public}.1f,G1,count,%{public}zu,cn0,%{public}.1f,%{public}.1f,%{public}.1f,%{public}.1f,%{public}.1f,E1,count,%{public}zu,cn0,%{public}.1f,%{public}.1f,%{public}.1f,%{public}.1f,%{public}.1f,B1,count,%{public}zu,cn0,%{public}.1f,%{public}.1f,%{public}.1f,%{public}.1f,%{public}.1f,L5,count,%{public}zu,cn0,%{public}.1f,%{public}.1f,%{public}.1f,%{public}.1f,%{public}.1f,Q5,count,%{public}zu,cn0,%{public}.1f,%{public}.1f,%{public}.1f,%{public}.1f,%{public}.1f,E5a,count,%{public}zu,cn0,%{public}.1f,%{public}.1f,%{public}.1f,%{public}.1f,%{public}.1f,B2a,count,%{public}zu,cn0,%{public}.1f,%{public}.1f,%{public}.1f,%{public}.1f,%{public}.1f,NL5,count,%{public}zu,cn0,%{public}.1f,%{public}.1f,%{public}.1f,%{public}.1f,%{public}.1f", buf, 0x25Au);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1016C8DD8(buf);
    v107 = *v19;
    v108 = *(v19 + 3);
    v109 = *(v19 + 2);
    v110 = *(v19 + 4);
    v111 = *(v19 + 5);
    v112 = *v186;
    v113 = *(v186 + 2);
    v114 = *(v186 + 3);
    v115 = *(v186 + 4);
    v116 = *(v186 + 5);
    v117 = *v185;
    v119 = *(v185 + 2);
    v118 = *(v185 + 3);
    v121 = *(v185 + 4);
    v120 = *(v185 + 5);
    v122 = *v184;
    v124 = *(v184 + 2);
    v123 = *(v184 + 3);
    v126 = *(v184 + 4);
    v125 = *(v184 + 5);
    v127 = *v20;
    v129 = *(v20 + 2);
    v128 = *(v20 + 3);
    v153 = *(v20 + 4);
    v155 = *(v20 + 5);
    v130 = *v21;
    v157 = *(v21 + 2);
    v161 = *(v21 + 3);
    v163 = *(v21 + 4);
    v131 = *v22;
    v165 = *(v21 + 5);
    v167 = *(v22 + 2);
    v171 = *(v22 + 3);
    v175 = *(v22 + 4);
    v177 = *(v22 + 5);
    v132 = *v23;
    v179 = *(v23 + 2);
    v183 = *(v23 + 3);
    v133 = *v24;
    v134 = *v25;
    v191 = 134364160;
    v136 = *(v23 + 4);
    v135 = *(v23 + 5);
    v137 = *(v24 + 2);
    v138 = *(v24 + 3);
    v139 = *(v24 + 4);
    v151 = *(v24 + 5);
    v159 = *(v25 + 2);
    v169 = *(v25 + 3);
    v173 = *(v25 + 4);
    v181 = *(v25 + 5);
    v194 = v109;
    v140 = *(v19 + 6);
    v141 = *(v186 + 6);
    v142 = *(v185 + 6);
    v143 = *(v184 + 6);
    v144 = *(v20 + 6);
    v145 = *(v21 + 6);
    v146 = *(v22 + 6);
    LODWORD(v109) = *(v23 + 6);
    v147 = *(v24 + 6);
    v187 = *(v25 + 6);
    v196 = v108;
    v198 = v110;
    v200 = v111;
    v202 = v140;
    v206 = v113;
    v208 = v114;
    v210 = v115;
    v212 = v116;
    v214 = v141;
    v218 = v119;
    v220 = v118;
    v222 = v121;
    v224 = v120;
    v226 = v142;
    v230 = v124;
    v232 = v123;
    v234 = v126;
    v236 = v125;
    v238 = v143;
    v242 = v129;
    v244 = v128;
    v246 = v153;
    v248 = v155;
    v250 = v144;
    v254 = v157;
    v256 = v161;
    v258 = v163;
    v260 = v165;
    v262 = v145;
    v266 = v167;
    v268 = v171;
    v270 = v175;
    v272 = v177;
    v274 = v146;
    v278 = v179;
    v280 = v183;
    v282 = v136;
    v284 = v135;
    v286 = *&v109;
    v290 = v137;
    v292 = v138;
    v294 = v139;
    v296 = v151;
    v298 = v147;
    v302 = v159;
    v304 = v169;
    v306 = v173;
    v308 = v181;
    v310 = v187;
    v192 = v107;
    v193 = 2050;
    v195 = 2050;
    v197 = 2050;
    v199 = 2050;
    v201 = 2050;
    v203 = 2050;
    v204 = v112;
    v205 = 2050;
    v207 = 2050;
    v209 = 2050;
    v211 = 2050;
    v213 = 2050;
    v215 = 2050;
    v216 = v117;
    v217 = 2050;
    v219 = 2050;
    v221 = 2050;
    v223 = 2050;
    v225 = 2050;
    v227 = 2050;
    v228 = v122;
    v229 = 2050;
    v231 = 2050;
    v233 = 2050;
    v235 = 2050;
    v237 = 2050;
    v239 = 2050;
    v240 = v127;
    v241 = 2050;
    v243 = 2050;
    v245 = 2050;
    v247 = 2050;
    v249 = 2050;
    v251 = 2050;
    v252 = v130;
    v253 = 2050;
    v255 = 2050;
    v257 = 2050;
    v259 = 2050;
    v261 = 2050;
    v263 = 2050;
    v264 = v131;
    v265 = 2050;
    v267 = 2050;
    v269 = 2050;
    v271 = 2050;
    v273 = 2050;
    v275 = 2050;
    v276 = v132;
    v277 = 2050;
    v279 = 2050;
    v281 = 2050;
    v283 = 2050;
    v285 = 2050;
    v287 = 2050;
    v288 = v133;
    v289 = 2050;
    v291 = 2050;
    v293 = 2050;
    v295 = 2050;
    v297 = 2050;
    v299 = 2050;
    v300 = v134;
    v301 = 2050;
    v303 = 2050;
    v305 = 2050;
    v307 = 2050;
    v309 = 2050;
    v148 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "void CLGnssAWD::updateCn0AndSignalCountSessionStats(MapSignalTypeToCn0Vector &)", "%s\n", v148);
    if (v148 != buf)
    {
      free(v148);
    }
  }

  if (*(a1 + 2472) == 1)
  {
    v68 = 40;
    v69 = &unk_101DB5DE8;
    do
    {
      *buf = v69;
      v70 = sub_1002CD1A0(a1 + 312, v69);
      *buf = v69;
      v71 = sub_1002C8DC0(a2, v69);
      v72 = v71[6] - v71[5];
      v73 = v72 >> 2;
      v74 = v72 >> 2;
      if (v73 < 0xD)
      {
        v75 = 6;
      }

      else
      {
        v75 = 7;
      }

      if (v73 < 9)
      {
        v75 = 5;
      }

      if (v73 >= 5)
      {
        LODWORD(v74) = v75;
      }

      v191 = v74;
      *buf = &v191;
      v76 = sub_1003E3DEC((v70 + 5), &v191);
      ++v76[5];
      ++v69;
      v68 -= 4;
    }

    while (v68);
    do
    {
      *buf = &unk_101DB5DE8 + v68;
      v77 = sub_1002CD1A0(a1 + 336, (&unk_101DB5DE8 + v68));
      v78 = sub_10014066C(&v189, (&unk_101DB5DE8 + v68));
      v79 = (v78 + 1);
      v80 = 20;
      do
      {
        if (*v79 > 0.0)
        {
          v191 = sub_1002C8FE0(v78, v79);
          *buf = &v191;
          v78 = sub_1003E3DEC((v77 + 5), &v191);
          ++v78[5];
        }

        ++v79;
        v80 -= 4;
      }

      while (v80);
      v68 += 4;
    }

    while (v68 != 40);
    v81 = *a2;
    if (*a2 != v5)
    {
      v82 = (a1 + 1272);
      do
      {
        v83 = v81[8];
        v84 = *v82;
        if (!*v82)
        {
          goto LABEL_47;
        }

        v85 = a1 + 1272;
        do
        {
          if (*(v84 + 32) >= v83)
          {
            v85 = v84;
          }

          v84 = *(v84 + 8 * (*(v84 + 32) < v83));
        }

        while (v84);
        if (v85 == v82 || v83 < *(v85 + 32))
        {
LABEL_47:
          *buf = v81[8];
          *&buf[8] = 0;
          sub_1002928BC(a1 + 1264, buf);
          *buf = v81[8];
          *&buf[4] = 0;
          sub_101081A3C(a1 + 1312, buf);
        }

        v86 = *sub_1003DD9F8(a1 + 1264, v81 + 8);
        v88 = *(v81 + 5);
        v87 = *(v81 + 6);
        v89 = *sub_1001FD038(a1 + 1312, v81 + 8);
        *sub_1003DD9F8(a1 + 1264, v81 + 8) = (((v87 - v88) >> 2) + v86 * v89) / (v89 + 1);
        v90 = sub_1001FD038(a1 + 1312, v81 + 8);
        ++*v90;
        v91 = *(v81 + 1);
        if (v91)
        {
          do
          {
            v92 = v91;
            v91 = *v91;
          }

          while (v91);
        }

        else
        {
          do
          {
            v92 = *(v81 + 2);
            v12 = *v92 == v81;
            v81 = v92;
          }

          while (!v12);
        }

        v81 = v92;
      }

      while (v92 != v5);
    }

    v93 = v189;
    if (v189 != v190)
    {
      v94 = (a1 + 1248);
      do
      {
        v95 = *(v93 + 8);
        v96 = *v94;
        if (!*v94)
        {
          goto LABEL_63;
        }

        v97 = a1 + 1248;
        do
        {
          if (*(v96 + 32) >= v95)
          {
            v97 = v96;
          }

          v96 = *(v96 + 8 * (*(v96 + 32) < v95));
        }

        while (v96);
        if (v97 == v94 || v95 < *(v97 + 32))
        {
LABEL_63:
          *buf = *(v93 + 8);
          *&buf[8] = 0;
          sub_1002928BC(a1 + 1240, buf);
          *buf = *(v93 + 8);
          *&buf[4] = 0;
          sub_101081A3C(a1 + 1288, buf);
        }

        v98 = v93[5];
        if (v98)
        {
          if (v98 >= 5)
          {
            v99 = 5;
          }

          else
          {
            v99 = v93[5];
          }

          v100 = (v93 + 6);
          do
          {
            v101 = *sub_1003DD9F8(a1 + 1240, v93 + 8);
            v102 = *v100;
            v103 = *sub_1001FD038(a1 + 1288, v93 + 8);
            *sub_1003DD9F8(a1 + 1240, v93 + 8) = (v102 + v101 * v103) / (v103 + 1);
            v104 = sub_1001FD038(a1 + 1288, v93 + 8);
            ++*v104;
            ++v100;
            --v99;
          }

          while (v99);
        }

        v105 = v93[1];
        if (v105)
        {
          do
          {
            v106 = v105;
            v105 = *v105;
          }

          while (v105);
        }

        else
        {
          do
          {
            v106 = v93[2];
            v12 = *v106 == v93;
            v93 = v106;
          }

          while (!v12);
        }

        v93 = v106;
      }

      while (v106 != v190);
    }
  }

  sub_100140738(v190[0]);
}

uint64_t *sub_10014066C(uint64_t a1, int *a2)
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
      v5 = *(v2 + 32);
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
      return v4 + 5;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

void sub_100140738(void *a1)
{
  if (a1)
  {
    sub_100140738(*a1);
    sub_100140738(a1[1]);

    operator delete(a1);
  }
}

void sub_100140784(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_10030290C(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_1001407D8(uint64_t *a1)
{
  *a1 = off_1024A94B8;
  v2 = a1 + 13;
  sub_100140854(a1);
  sub_100027438(v2);
  sub_100027438(a1 + 6);
  sub_100027438(a1 + 3);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void *sub_100140854(void *result)
{
  if (qword_102637D30 != result)
  {
    v1 = result;
    v2 = result[1];
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    v3 = v1[2];
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }

    v4 = v1[9];
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }

    result = v1[12];
    if (result)
    {
      v5 = *(*result + 8);

      return v5();
    }
  }

  return result;
}

void sub_10014094C(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = off_1024A9440;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);

  operator delete();
}

void sub_1001409A0(uint64_t *a1)
{
  *a1 = off_1024A8A68;
  if (qword_102637C80 != a1)
  {
    v2 = a1[1];
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }
  }

  sub_100027438(a1 + 2);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void *sub_100140A38(void *result)
{
  if (qword_102637C78 != result)
  {
    v1 = result;
    v2 = result[2];
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    v3 = v1[3];
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }

    result = v1[4];
    if (result)
    {
      v4 = *(*result + 8);

      return v4();
    }
  }

  return result;
}

void sub_100140B04(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = off_1024A8900;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);

  operator delete();
}

void sub_100140B58(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = off_1024A9260;
  sub_100140BC0(a1);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);

  operator delete();
}

void *sub_100140BC0(void *result)
{
  if (qword_102637D08 != result)
  {
    v1 = result;
    v2 = result[1];
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    v3 = v1[2];
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }

    v4 = v1[3];
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }

    v5 = v1[4];
    if (v5)
    {
      (*(*v5 + 8))(v5);
    }

    result = v1[5];
    if (result)
    {
      v6 = *(*result + 8);

      return v6();
    }
  }

  return result;
}

void sub_100140CE4(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = off_1024A8D38;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);

  operator delete();
}

id sub_100140D38(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_1000137E0();

  return sub_100140D74(v1, 0, v2);
}

id sub_100140D74(id result, int a2, double a3)
{
  v5 = result;
  if (a2)
  {
    result = [*(result + 81) setNextFireDelay:1.0];
  }

  if (v5[632] != a2)
  {
    v5[632] = a2;
    if (v5[528] == 1)
    {
      v9 = off_102491200;
      v12 = a2;
      Current = CFAbsoluteTimeGetCurrent();
      v11 = a3;
      v6 = sub_10015ADF4();
      sub_1010CF5BC(v6, &v9);
      sub_10152D354(v13);
      sub_1015556D4(v13);
      v15 |= 1u;
      *&v13[87] = Current;
      v7 = v14;
      *(v14 + 20) |= 1u;
      *(v7 + 8) = a3;
      v8 = v14;
      *(v14 + 20) |= 2u;
      *(v8 + 16) = a2;
      if (qword_102637F48 != -1)
      {
        sub_101B7BC8C();
      }

      if (qword_102637F50)
      {
        sub_1017F73BC(qword_102637F50, v13);
      }

      sub_101532FA8(v13);
    }

    HIDWORD(v13[0]) = 0;
    *(v13 + 1) = 0;
    LOBYTE(v13[0]) = a2;
    *&v13[1] = a3;
    LODWORD(v9) = 6;
    return (*(*v5 + 152))(v5, &v9, v13, 1, 0xFFFFFFFFLL, 0);
  }

  return result;
}

void sub_100140F28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_101532FA8(va);
  _Unwind_Resume(a1);
}

void sub_100140F48(uint64_t a1, _DWORD *a2, char *a3)
{
  if (*a2 == 5)
  {
    v4 = *a3;
    *(a1 + 1416) = *a3;
    goto LABEL_5;
  }

  if (*a2 == 6)
  {
    *(a1 + 1417) = *a3;
    v4 = *(a1 + 1416);
LABEL_5:
    v13 = 25;
    if (v4)
    {
      v5 = 1;
    }

    else
    {
      v5 = *(a1 + 1417);
    }

    HIBYTE(v13) = v5 & 1;
    if (qword_1025D4200 != -1)
    {
      sub_101AD9AD8();
    }

    v6 = qword_1025D4208;
    if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_INFO))
    {
      v7 = *(a1 + 1417);
      v8 = *(a1 + 1416);
      *buf = 67109632;
      v21 = v7;
      v22 = 1024;
      v23 = v8;
      v24 = 1024;
      v25 = v5 & 1;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_INFO, "Sending induced motion: touch, %d, vibe, %d, sum, %d", buf, 0x14u);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4200 != -1)
      {
        sub_101AD9CD8();
      }

      v10 = *(a1 + 1417);
      v11 = *(a1 + 1416);
      v14 = 67109632;
      v15 = v10;
      v16 = 1024;
      v17 = v11;
      v18 = 1024;
      v19 = v5 & 1;
      v12 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "void CLMotionCoprocessor::onInducedMotionNotification(const CLMotionState_Type::Notification &, const CLMotionState_Type::NotificationData &)", "%s\n", v12);
      if (v12 != buf)
      {
        free(v12);
      }
    }

    sub_1001411EC(a1 + 192, &v13, 0);
    return;
  }

  if (qword_1025D4200 != -1)
  {
    sub_101AD9AD8();
  }

  v9 = qword_1025D4208;
  if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_FAULT))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_FAULT, "Unhandled notification from CLMotionState in CLMotionCoprocessor.", buf, 2u);
  }

  if (sub_10000A100(121, 0))
  {
    sub_101ADF884();
  }
}

void sub_1001411EC(uint64_t a1, __int16 *a2, void *aBlock)
{
  if (*(a1 + 8))
  {
    v8[0] = 0;
    v8[1] = v8;
    v8[2] = 0x3812000000;
    v8[3] = sub_100F669F0;
    v8[4] = nullsub_1747;
    v8[5] = &unk_10238AE8B;
    v9 = *a2;
    if (aBlock)
    {
      v4 = _Block_copy(aBlock);
    }

    else
    {
      v4 = 0;
    }

    v6 = *a1;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10014133C;
    v7[3] = &unk_102462080;
    v7[5] = v8;
    v7[6] = a1;
    v7[4] = v4;
    dispatch_async(v6, v7);
    _Block_object_dispose(v8, 8);
  }

  else if (aBlock)
  {
    v5 = *(aBlock + 2);

    v5(aBlock, 0);
  }
}

void sub_100141318(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__n128 sub_100141330(__n128 *a1, __n128 *a2)
{
  result = a2[3];
  a1[3] = result;
  return result;
}

void sub_10014133C(void *a1)
{
  v2 = a1[6];
  *(*(a1[5] + 8) + 48) = 25;
  v3 = sub_1000B93E4(v2, *(a1[5] + 8) + 48, 2);
  v4 = a1[4];
  if (v4)
  {
    (*(v4 + 16))(v4, v3);
    v5 = a1[4];

    _Block_release(v5);
  }
}

void sub_1001413C0(uint64_t a1, float a2, double a3)
{
  sub_1001414A8(a1, a2, a3);
  if (*(a1 + 48) == 1)
  {
    v5 = sub_10014179C(a1, 20.0);
    v6 = sub_10014179C(a1, 0.0);
    if (v5 != -9999.0)
    {
      v7 = v6 == -9999.0;
      v8 = vabds_f32(v5, v6);
      if (!v7 && v8 < 1.0)
      {
        sub_10014170C(a1, a3 + -4.0);
        *(a1 + 48) = 0;
        *(a1 + 56) = a3;
      }
    }
  }

  else if (*(a1 + 49) == 1)
  {
    v10 = sub_10014179C(a1, 0.0);
    v11 = sub_1001418C0(a1);
    if (v10 != -9999.0)
    {
      v7 = v11 == -9999.0;
      v12 = vabds_f32(v10, v11);
      if (!v7 && v12 >= 3.0)
      {
        *(a1 + 48) = 1;
      }
    }
  }
}

uint64_t sub_1001414A8(uint64_t a1, float a2, double a3)
{
  sub_100141534(a1, a3);
  v7.n128_f64[0] = a3;
  v7.n128_u32[2] = sub_1000A6C00(a2 * 1000.0, 101320.0);
  sub_100141680(a1, &v7);
  result = sub_10014170C(a1, a3 + -44.0);
  *(a1 + 49) = result != 0;
  return result;
}

void sub_100141534(uint64_t a1, double a2)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    v5 = v2 + *(a1 + 32) - 1;
    v6 = *(a1 + 8);
    v7 = (*(v6 + ((v5 >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * v5);
    if (vabdd_f64(a2, *v7) <= 44.0)
    {
      for (i = *v7 + 1.0; i < a2; i = *v7 + 1.0)
      {
        *v7 = i;
        v14.n128_u32[2] = -971228160;
        v14.n128_f64[0] = i;
        v13 = *(a1 + 40) + *(a1 + 32) - 1;
        v14.n128_u32[2] = *(*(*(a1 + 8) + ((v13 >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * v13 + 8);
        sub_100141680(a1, &v14);
      }
    }

    else
    {
      *(a1 + 48) = 0;
      v8 = *(a1 + 16);
      *(a1 + 40) = 0;
      v9 = (v8 - v6) >> 3;
      if (v9 >= 3)
      {
        do
        {
          operator delete(*v6);
          v10 = *(a1 + 16);
          v6 = (*(a1 + 8) + 8);
          *(a1 + 8) = v6;
          v9 = (v10 - v6) >> 3;
        }

        while (v9 > 2);
      }

      if (v9 == 1)
      {
        v11 = 128;
      }

      else
      {
        if (v9 != 2)
        {
          return;
        }

        v11 = 256;
      }

      *(a1 + 32) = v11;
    }
  }
}

__n128 sub_100141680(void *a1, __n128 *a2)
{
  v4 = a1[2];
  v5 = a1[1];
  v6 = 32 * (v4 - v5) - 1;
  if (v4 == v5)
  {
    v6 = 0;
  }

  v7 = a1[5] + a1[4];
  if (v6 == v7)
  {
    sub_1008DC7E4(a1);
    v5 = a1[1];
    v7 = a1[5] + a1[4];
  }

  result = *a2;
  *(*(v5 + ((v7 >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * v7) = *a2;
  ++a1[5];
  return result;
}

uint64_t sub_10014170C(void *a1, double a2)
{
  v2 = a1[5];
  if (!v2)
  {
    return 0;
  }

  v5 = 0;
  do
  {
    v6 = a1[4];
    if (*(*(a1[1] + ((v6 >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * v6) >= a2)
    {
      break;
    }

    a1[4] = v6 + 1;
    a1[5] = v2 - 1;
    sub_100014444(a1, 1);
    v5 = (v5 + 1);
    v2 = a1[5];
  }

  while (v2);
  return v5;
}

float sub_10014179C(void *a1, double a2)
{
  v2 = a1[5];
  if (!v2)
  {
    return -9999.0;
  }

  v3 = a1[4];
  v4 = v3 + v2;
  v5 = v3 + v2 - 1;
  v6 = a1[1];
  v7 = a1[2];
  v8 = *(*(v6 + ((v5 >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * v5) - a2;
  v9 = (v6 + 8 * (v4 >> 8));
  if (v7 == v6)
  {
    v10 = 0;
  }

  else
  {
    v10 = *v9 + 16 * v4;
  }

  v12 = 0;
  v13 = v8 + -4.0;
  v14 = 0.0;
  while (1)
  {
    v15 = v7 == v6 ? 0 : *(v6 + 8 * (v3 >> 8)) + 16 * a1[4];
    if (v15 == v10)
    {
      break;
    }

    if (v10 == *v9)
    {
      v18 = *--v9;
      v17 = v18;
      v19 = *(v18 + 4080);
      if (v19 <= v8)
      {
        if (v19 < v13)
        {
          break;
        }

        v14 = v14 + ((*(v17 + 4088) - v14) / ++v12);
      }

      v10 = *v9 + 4096;
    }

    else
    {
      v16 = *(v10 - 16);
      if (v16 <= v8)
      {
        if (v16 < v13)
        {
          break;
        }

        v14 = v14 + ((*(v10 - 8) - v14) / ++v12);
      }
    }

    v10 -= 16;
  }

  result = -9999.0;
  if (v12)
  {
    return v14;
  }

  return result;
}

float sub_1001418C0(void *a1)
{
  v1 = a1[5];
  if (!v1)
  {
    return -9999.0;
  }

  v2 = 0;
  v3 = a1[4];
  v4 = a1[1];
  v5 = a1[2];
  v6 = (v4 + 8 * (v3 >> 8));
  v7 = *v6;
  v8 = *v6 + 16 * v3;
  v9 = *v8 + 20.0;
  if (v5 == v4)
  {
    v8 = 0;
  }

  v10 = v3 + v1;
  v11 = 0.0;
LABEL_5:
  v12 = v7 - v8 + 4096;
  while (1)
  {
    v13 = v5 == v4 ? 0 : *(v4 + 8 * (v10 >> 8)) + 16 * v10;
    if (v8 == v13 || *v8 > v9)
    {
      break;
    }

    v11 = v11 + ((*(v8 + 8) - v11) / ++v2);
    v8 += 16;
    v12 -= 16;
    if (!v12)
    {
      v14 = v6[1];
      ++v6;
      v7 = v14;
      v8 = v14;
      goto LABEL_5;
    }
  }

  result = -9999.0;
  if (v2)
  {
    return v11;
  }

  return result;
}

void sub_100141990(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = *a2;
  v5 = *a3;
  v4 = *(a3 + 8);
  *a3 = 0;
  *(a3 + 8) = 0;
  v6 = _os_activity_create(dword_100000000, "CL: kCLConnectionMessageTrackRunInfoEnabled", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v6, &state);

  if (qword_1025D4790 != -1)
  {
    sub_1001456E8();
  }

  v7 = qword_1025D4798;
  if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(v3 + 72);
    *buf = 68290050;
    v12 = 0;
    v13 = 2082;
    v14 = "";
    v15 = 2082;
    v16 = "activity";
    v17 = 2050;
    v18 = v3;
    v19 = 1026;
    v20 = 1;
    v21 = 1026;
    v22 = v8;
    _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:kCLConnectionMessageTrackRunInfoEnabled, event:%{public, location:escape_only}s, this:%{public}p, registrationRequired:%{public}hhd, registrationReceived:%{public}hhd}", buf, 0x32u);
  }

  if (*(v3 + 72) != 1)
  {
    os_activity_scope_leave(&state);
    if (!v4)
    {
      return;
    }

    goto LABEL_11;
  }

  v9[0] = v5;
  v9[1] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  sub_100141B88(v3, v9);
  if (v4)
  {
    sub_100008080(v4);
    os_activity_scope_leave(&state);
LABEL_11:
    sub_100008080(v4);
    return;
  }

  os_activity_scope_leave(&state);
}

void sub_100141B88(uint64_t a1, CLConnectionMessage **a2)
{
  v4 = objc_alloc_init(NSAutoreleasePool);
  sub_10000EC00(buf, "com.apple.locationd.private_info");
  v5 = (*(*a1 + 40))(a1, buf);
  v6 = v5;
  if (SBYTE3(v14) < 0)
  {
    operator delete(*buf);
    if (v6)
    {
      goto LABEL_3;
    }
  }

  else if (v5)
  {
LABEL_3:
    v7 = [CLConnectionMessage::getDictionary(*a2) objectForKeyedSubscript:@"kCLConnectionMessageEnabledKey"];
    if (!v7 || (sub_1000700DC(v7, (a1 + 280)) & 1) == 0)
    {
      if (qword_1025D47A0 != -1)
      {
        sub_1019EED30();
      }

      v8 = off_1025D47A8;
      if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_FAULT))
      {
        *buf = 136446210;
        *&buf[4] = "kCLConnectionMessageEnabledKey";
        _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_FAULT, "Couldn't get value for key %{public}s", buf, 0xCu);
      }

      if (sub_10000A100(121, 0))
      {
        sub_1019EEDB0(buf);
        v9 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 0, "void CLDaemonClient::handleMessageTrackRunInfoEnabled(std::shared_ptr<CLConnectionMessage>)", "%s\n", v9);
        if (v9 != buf)
        {
          free(v9);
        }
      }
    }

    goto LABEL_17;
  }

  if (qword_1025D4790 != -1)
  {
    sub_1001456E8();
  }

  v10 = qword_1025D4798;
  if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_DEFAULT))
  {
    v11 = *(a1 + 48);
    *buf = 68289282;
    *&buf[4] = 0;
    *&buf[8] = 2082;
    *&buf[10] = "";
    v13 = 2114;
    v14 = v11;
    _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#Warning Client does not have appropriate entitlement to enable track run info, ClientKeyPath:%{public, location:escape_only}@}", buf, 0x1Cu);
  }

LABEL_17:
}

void sub_100141E78(uint64_t a1, CLConnectionMessage **a2)
{
  v4 = objc_alloc_init(NSAutoreleasePool);
  if (([*(a1 + 16) isAuthorizedForServiceType:12] & 1) == 0)
  {
    if (qword_1025D47A0 != -1)
    {
      sub_101B13524();
    }

    v7 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
    {
      v8 = *(a1 + 24);
      *buf = 138412290;
      *&buf[4] = v8;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEBUG, "%@ with CorrectiveCompensation enabled attempting allowsMapCorrection.", buf, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101B13430(buf);
      v9 = *(a1 + 24);
      v25 = 138412290;
      v26 = v9;
      v10 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "void CLLocationSubscription::handleMessageAllowsMapCorrection(std::shared_ptr<CLConnectionMessage>)", "%s\n", v10);
      goto LABEL_35;
    }

    goto LABEL_24;
  }

  if ([*(a1 + 176) objectForKeyedSubscript:@"kCLConnectionMessageDesiredAccuracyKey"])
  {
    [objc_msgSend(*(a1 + 176) objectForKeyedSubscript:{@"kCLConnectionMessageDesiredAccuracyKey", "doubleValue"}];
    v6 = v5;
  }

  else
  {
    v6 = -1.0;
  }

  v24 = 1;
  v11 = [CLConnectionMessage::getDictionary(*a2) objectForKeyedSubscript:@"kCLConnectionMessageAllowsMapCorrectionKey"];
  if (v11 && (sub_1000700DC(v11, &v24) & 1) != 0)
  {
    if (*(a1 + 193) == v24)
    {
      goto LABEL_24;
    }

    *(a1 + 193) = v24;
    sub_10000EC00(buf, "kCLConnectionMessageLocation");
    if (sub_10004B3BC(a1))
    {
      v12 = (v6 < 100.0) & (*(a1 + 194) | *(a1 + 193));
      if (SHIBYTE(v39) < 0)
      {
        operator delete(*buf);
      }

      if (v12)
      {
        v13 = sub_10004D8F4(a1);
        [*(*v13 + 16) register:*(*v13 + 8) forNotification:17 registrationInfo:0];
        v14 = 1;
        goto LABEL_28;
      }
    }

    else if (SHIBYTE(v39) < 0)
    {
      operator delete(*buf);
    }

    v16 = sub_10004D8F4(a1);
    [*(*v16 + 16) unregister:*(*v16 + 8) forNotification:17];
    v14 = 0;
LABEL_28:
    if (qword_1025D4790 != -1)
    {
      sub_101B133E0();
    }

    v17 = qword_1025D4798;
    if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_DEBUG))
    {
      v18 = *(a1 + 24);
      v19 = *(a1 + 44);
      v20 = *(a1 + 193);
      *buf = 138413314;
      *&buf[4] = v18;
      v36 = 1024;
      v37 = v19;
      v38 = 1024;
      v39 = v20;
      v40 = 2048;
      v41 = v6;
      v42 = 1024;
      v43 = v14;
      _os_log_impl(dword_100000000, v17, OS_LOG_TYPE_DEBUG, "CLMM,Client,'%@',pid,%u,allowsMapCorrection,%d,desiredAccuracy,%lf,kNotificationMapMatching,%d", buf, 0x28u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101B134E0(buf);
      v21 = *(a1 + 24);
      v22 = *(a1 + 44);
      v23 = *(a1 + 193);
      v25 = 138413314;
      v26 = v21;
      v27 = 1024;
      v28 = v22;
      v29 = 1024;
      v30 = v23;
      v31 = 2048;
      v32 = v6;
      v33 = 1024;
      v34 = v14;
      v10 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "void CLLocationSubscription::handleMessageAllowsMapCorrection(std::shared_ptr<CLConnectionMessage>)", "%s\n", v10);
      goto LABEL_35;
    }

    goto LABEL_24;
  }

  if (qword_1025D47A0 != -1)
  {
    sub_101B13408();
  }

  v15 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_FAULT))
  {
    *buf = 136446210;
    *&buf[4] = "kCLConnectionMessageAllowsMapCorrectionKey";
    _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_FAULT, "Couldn't get value for key %{public}s", buf, 0xCu);
  }

  if (sub_10000A100(121, 0))
  {
    sub_101B13430(buf);
    v25 = 136446210;
    v26 = "kCLConnectionMessageAllowsMapCorrectionKey";
    v10 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 0, "void CLLocationSubscription::handleMessageAllowsMapCorrection(std::shared_ptr<CLConnectionMessage>)", "%s\n", v10);
LABEL_35:
    if (v10 != buf)
    {
      free(v10);
    }
  }

LABEL_24:
}

void sub_100142420(uint64_t a1, unsigned int a2)
{
  if ([*(a1 + 16) isAuthorizedForServiceType:12])
  {
    v4 = *(a1 + 232);
    if (v4 == 5)
    {
      v5 = 29;
    }

    else
    {
      v5 = 28;
    }

    v6 = v4 < 3 || v4 == 4;
    v7 = v6;
    if (v6)
    {
      v8 = 50;
    }

    else
    {
      v8 = v5;
    }

    if (a2 < 3 || a2 == 4)
    {
      v10 = 50;
      v9 = 1;
    }

    else
    {
      v9 = 0;
      if (a2 == 5)
      {
        v10 = 29;
      }

      else
      {
        v10 = 28;
      }
    }

    if (v10 != v8)
    {
      if ((v7 & 1) == 0)
      {
        v13 = sub_10004D8F4(a1);
        [*(*v13 + 16) unregister:*(*v13 + 8) forNotification:v8];
      }

      if ((v9 & 1) == 0)
      {
        v14 = sub_10004D8F4(a1);
        [*(*v14 + 16) register:*(*v14 + 8) forNotification:v10 registrationInfo:0];
      }
    }

    *(a1 + 232) = a2;
    if (*(a1 + 208) != 1.79769313e308)
    {
      v15 = (a2 == 4 || a2 == 2) && ([*(a1 + 16) inUseLevelIsAtLeast:5] & 1) != 0;

      sub_1000F3B0C(a1, v15);
    }
  }

  else
  {
    if (qword_1025D47A0 != -1)
    {
      sub_101B13524();
    }

    v11 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
    {
      v12 = *(a1 + 24);
      v16 = 138412290;
      v17 = v12;
      _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEBUG, "%@ with CorrectiveCompensation enabled attempting setActivityType", &v16, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101B13538();
    }
  }
}

void sub_100142820(uint64_t a1, double a2)
{
  if (*(a1 + 64) < a2)
  {
    v4 = (a1 + 32);
    do
    {
      v5 = *(a1 + 48);
      v6 = *(a1 + 52);
      v7 = *(a1 + 56);
      if (qword_1025D4620 != -1)
      {
        sub_1019E3F70();
      }

      v8 = v6 + v5 + v7;
      v9 = qword_1025D4628;
      if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
      {
        v10 = *(a1 + 16);
        v11 = *(a1 + 40);
        v12 = *(a1 + 48);
        v13 = *(a1 + 52);
        v14 = *(a1 + 56);
        *buf = 134350336;
        v57 = v10;
        v58 = 2050;
        v59 = v11;
        v60 = 1026;
        v61 = v12;
        v62 = 1026;
        v63 = v13;
        v64 = 1026;
        v65 = v14;
        v66 = 1026;
        v67 = v8;
        _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEFAULT, "TaMetric, daily, unique, %{public}ld, detected, %{public}ld, suspicious, %{public}d, %{public}d, %{public}d, %{public}d", buf, 0x2Eu);
      }

      if (sub_10000A100(121, 2))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1025D4620 != -1)
        {
          sub_1019E3F70();
        }

        v27 = *(a1 + 16);
        v28 = *(a1 + 40);
        v29 = *(a1 + 48);
        v30 = *(a1 + 52);
        v31 = *(a1 + 56);
        *__dst = 134350336;
        *&__dst[4] = v27;
        *&__dst[12] = 2050;
        *&__dst[14] = v28;
        *&__dst[22] = 1026;
        v49 = v29;
        v50 = 1026;
        v51 = v30;
        v52 = 1026;
        v53 = v31;
        v54 = 1026;
        v55 = v8;
        v32 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "void CLTrackingAvoidanceMetrics::checkToSend(CFAbsoluteTime)", "%s\n", v32);
        if (v32 != buf)
        {
          free(v32);
        }
      }

      if ((*(a1 + 76) & 1) == 0)
      {
        v36 = _NSConcreteStackBlock;
        v37 = 3221225472;
        v38 = sub_100ACC264;
        v39 = &unk_10247D368;
        v40 = a1;
        v41 = v8;
        AnalyticsSendEventLazy();
      }

      if (*(a1 + 40))
      {
        v15 = *(a1 + 24);
        if (v15 != v4)
        {
          do
          {
            if (*(v15 + 55) < 0)
            {
              sub_100007244(__dst, v15[4], v15[5]);
            }

            else
            {
              *__dst = *(v15 + 2);
              *&__dst[16] = v15[6];
            }

            v49 = *(v15 + 14);
            if (qword_1025D4620 != -1)
            {
              sub_1019E3F70();
            }

            v16 = qword_1025D4628;
            if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
            {
              v17 = __dst;
              if (__dst[23] < 0)
              {
                v17 = *__dst;
              }

              *buf = 136380931;
              v57 = v17;
              v58 = 1026;
              LODWORD(v59) = v49;
              _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_DEFAULT, "TaMetric, detecteddaily, id, %{private}s, detections, %{public}d", buf, 0x12u);
            }

            if (sub_10000A100(121, 2))
            {
              sub_1019E4378(buf);
              v21 = __dst;
              if (__dst[23] < 0)
              {
                v21 = *__dst;
              }

              v44 = 136380931;
              v45 = v21;
              v46 = 1026;
              v47 = v49;
              v22 = _os_log_send_and_compose_impl();
              sub_100152C7C("Generic", 1, 0, 2, "void CLTrackingAvoidanceMetrics::checkToSend(CFAbsoluteTime)", "%s\n", v22);
              if (v22 != buf)
              {
                free(v22);
              }
            }

            if ((*(a1 + 76) & 1) == 0)
            {
              if ((__dst[23] & 0x80000000) != 0)
              {
                sub_100007244(&__p, *__dst, *&__dst[8]);
              }

              else
              {
                __p = *__dst;
                v34 = *&__dst[16];
              }

              v35 = v49;
              AnalyticsSendEventLazy();
              if (SHIBYTE(v34) < 0)
              {
                operator delete(__p);
              }
            }

            if ((__dst[23] & 0x80000000) != 0)
            {
              operator delete(*__dst);
            }

            v18 = v15[1];
            if (v18)
            {
              do
              {
                v19 = v18;
                v18 = *v18;
              }

              while (v18);
            }

            else
            {
              do
              {
                v19 = v15[2];
                v20 = *v19 == v15;
                v15 = v19;
              }

              while (!v20);
            }

            v15 = v19;
          }

          while (v19 != v4);
        }
      }

      if (*(a1 + 80) < a2)
      {
        if (qword_1025D4620 != -1)
        {
          sub_1019E3F70();
        }

        v23 = qword_1025D4628;
        if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
        {
          v24 = *(a1 + 88);
          *buf = 67240192;
          LODWORD(v57) = v24;
          _os_log_impl(dword_100000000, v23, OS_LOG_TYPE_DEFAULT, "TaMetric, weekly, numberOfAlertsPerWeek, %{public}d", buf, 8u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_1019E44BC(v43, (a1 + 88));
        }

        if ((*(a1 + 76) & 1) == 0)
        {
          AnalyticsSendEventLazy();
        }

        *(a1 + 80) = *(a1 + 80) + 604800.0;
        *(a1 + 88) = 0;
      }

      if (*(a1 + 96) < a2)
      {
        if (qword_1025D4620 != -1)
        {
          sub_1019E3F70();
        }

        v25 = qword_1025D4628;
        if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
        {
          v26 = *(a1 + 104);
          *buf = 67240192;
          LODWORD(v57) = v26;
          _os_log_impl(dword_100000000, v25, OS_LOG_TYPE_DEFAULT, "TaMetric, monthly, numberOfAlertsPerMonth, %{public}d", buf, 8u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_1019E45C4(v42, (a1 + 104));
        }

        if ((*(a1 + 76) & 1) == 0)
        {
          AnalyticsSendEventLazy();
        }

        *(a1 + 96) = *(a1 + 96) + 2592000.0;
        *(a1 + 104) = 0;
      }

      sub_100AC7928(a1, 1);
    }

    while (*(a1 + 64) < a2);
    sub_100AC7D78(a1, "sent", a2);
  }
}

void sub_100142FC8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, void *__p, uint64_t a59, int a60, __int16 a61, char a62, char a63)
{
  if (a63 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100143010(uint64_t a1, __int128 *a2, double a3)
{
  if (*(a1 + 262))
  {
    v8 = *a2;
    v6 = a3;
    v7 = 5;
    sub_10131A434(a1, &v6);
    if (qword_1025D4760 != -1)
    {
      sub_101B52FC8();
    }

    v4 = qword_1025D4768;
    if (os_log_type_enabled(qword_1025D4768, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134283777;
      v10 = *(&v8 + 1);
      v11 = 2048;
      v12 = a3;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "CLOutdoorEstimatorController_feedCMAlsModelOutput,alsModelOutputEvidence,%{private}f,currentTime,%f", buf, 0x16u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101B539B0();
    }
  }

  else
  {
    if (qword_1025D4760 != -1)
    {
      sub_101B52ED8();
    }

    v5 = qword_1025D4768;
    if (os_log_type_enabled(qword_1025D4768, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v6) = 0;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEBUG, "CLOutdoorEstimatorController,CLOutdoorEstimatorTurnOffCMAlsModelOutput", &v6, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101B538DC();
    }
  }
}

double sub_100143194(double *a1)
{
  result = -1.0;
  if (*a1 > 0.0)
  {
    v7 = v1;
    v8 = v2;
    v5 = sub_10000B1F8();
    v6 = 0;
    return sub_10001A6B0(v5, &v6) - *a1;
  }

  return result;
}

void sub_1001431E8(uint64_t *a1, __objc2_class_ro **a2)
{
  v2 = a1[109];
  if (!v2)
  {
    goto LABEL_9;
  }

  v3 = a2;
  v4 = a1;
  p_info = a1 + 109;
  do
  {
    v6 = v2[4];
    v7 = v6 >= a2;
    v8 = v6 < a2;
    if (v7)
    {
      p_info = v2;
    }

    v2 = v2[v8];
  }

  while (v2);
  if (p_info == a1 + 109 || p_info[4] > a2)
  {
LABEL_9:
    p_info = &OBJC_METACLASS___CLMotionHintLoggerAdapter.info;
    if (qword_1025D47A0 != -1)
    {
      sub_10028840C();
    }

    v3 = &OBJC_METACLASS___CLMotionHintLoggerAdapter.info;
    v9 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      *&buf[4] = 0;
      v17 = 2082;
      v18 = "";
      v19 = 2082;
      v20 = "assert";
      v21 = 2081;
      v22 = "iter != fGenericClients.end()";
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:No client found for the connection, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D47A0 != -1)
      {
        sub_10192D4D0();
      }
    }

    v10 = off_1025D47A8;
    if (os_signpost_enabled(off_1025D47A8))
    {
      *buf = 68289539;
      *&buf[4] = 0;
      v17 = 2082;
      v18 = "";
      v19 = 2082;
      v20 = "assert";
      v21 = 2081;
      v22 = "iter != fGenericClients.end()";
      _os_signpost_emit_with_name_impl(dword_100000000, v10, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "No client found for the connection", "{msg%{public}.0s:No client found for the connection, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D47A0 != -1)
      {
        sub_10192D4D0();
      }
    }

    v4 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      *&buf[4] = 0;
      v17 = 2082;
      v18 = "";
      v19 = 2082;
      v20 = "assert";
      v21 = 2081;
      v22 = "iter != fGenericClients.end()";
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_INFO, "{msg%{public}.0s:No client found for the connection, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np();
    __break(1u);
  }

  v11 = p_info[5];
  if (qword_1025D47A0 != -1)
  {
    sub_10028840C();
  }

  v12 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
  {
    CLConnection::getName(buf, v3);
    v13 = SBYTE3(v20) >= 0 ? buf : *buf;
    *v14 = 136446210;
    v15 = v13;
    _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_DEFAULT, "Client %{public}s disconnected", v14, 0xCu);
    if (SBYTE3(v20) < 0)
    {
      operator delete(*buf);
    }
  }

  if (sub_10000A100(121, 2))
  {
    sub_10192F800(v3);
  }

  sub_10045E8A0(v4 + 108, p_info);
  operator delete(p_info);
  if (v11)
  {
    (*(*v11 + 8))(v11);
  }
}

void sub_100143584(uint64_t a1)
{
  sub_10014393C(a1);

  operator delete();
}

id sub_1001435BC(void *a1)
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  return sub_10031162C(a1);
}

void sub_100143684(uint64_t a1, int a2, uint64_t a3, double a4)
{
  sub_100142820(a1, a4);
  if (a2)
  {
    sub_1000F2BC4(a1, a3);
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  if (qword_1025D4620 != -1)
  {
    sub_1019E43BC();
  }

  v10 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
  {
    v11 = a3;
    if (*(a3 + 23) < 0)
    {
      v11 = *a3;
    }

    v12 = "owned";
    v13 = *(a1 + 16);
    *buf = 136381443;
    v17 = v11;
    v14 = "add";
    if (a2)
    {
      v12 = "wild";
    }

    v18 = 2081;
    v19 = v12;
    if ((v9 & 1) == 0)
    {
      v14 = "skip";
    }

    v20 = 2080;
    v21 = v14;
    v22 = 2050;
    v23 = v13;
    _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEBUG, "TaMetricEvent, onAvengerAdvertisement, id, %{private}s, %{private}s, %s, %{public}ld", buf, 0x2Au);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4620 != -1)
    {
      sub_1019E3F70();
    }

    v15 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "void CLTrackingAvoidanceMetrics::handleOnAdvertisement(BOOL, std::string, CFAbsoluteTime)", "%s\n", v15);
    if (v15 != buf)
    {
      free(v15);
    }
  }

  if (v9)
  {
    sub_100AC7D78(a1, "unique", a4);
  }
}

void *sub_10014393C(uint64_t a1)
{
  *a1 = off_1024AF7D8;
  if (_os_feature_enabled_impl())
  {
    v2 = sub_1001435BC(*(a1 + 32));
    v3 = v2;
    if (v2)
    {
      if (sub_10014578C(v2))
      {
        if (SHIBYTE(v3->__r_.__value_.__r.__words[2]) < 0)
        {
          sub_100007244(__p, v3->__r_.__value_.__l.__data_, v3->__r_.__value_.__l.__size_);
        }

        else
        {
          v4 = *&v3->__r_.__value_.__l.__data_;
          v9 = v3->__r_.__value_.__r.__words[2];
          *__p = v4;
        }

        if (v9 >= 0)
        {
          v5 = __p;
        }

        else
        {
          v5 = __p[0];
        }

        v6 = [NSString stringWithUTF8String:v5, __p[0], __p[1], v9];
        if (SHIBYTE(v9) < 0)
        {
          operator delete(__p[0]);
        }

        [*(a1 + 56) inUseAssertionInvalidatedDueToWatchConnectivityForClientKey:v6];
      }
    }
  }

  [*(a1 + 32) invalidate];

  [*(a1 + 24) setValid:0];
  *(a1 + 24) = 0;

  *(a1 + 48) = 0;
  *(a1 + 56) = 0;

  *(a1 + 64) = 0;
  return sub_100143A80(a1);
}

void *sub_100143A80(void *a1)
{
  *a1 = off_102455948;
  v2 = a1[1];
  if (v2)
  {
    CLConnection::deferredDelete(v2);
    a1[1] = 0;
  }

  return a1;
}

NSDictionary *sub_100143B54(uint64_t a1)
{
  v3[0] = @"logSequenceID";
  v4[0] = [NSNumber numberWithUnsignedLongLong:(CFAbsoluteTimeGetCurrent() * 1000000.0)];
  v3[1] = @"timestamp";
  v4[1] = [NSNumber numberWithUnsignedLongLong:*(*(a1 + 32) + 1)];
  v3[2] = @"temperature";
  v4[2] = [NSNumber numberWithDouble:*(*(a1 + 32) + 9)];
  v3[3] = @"biasX";
  v4[3] = [NSNumber numberWithDouble:*(*(a1 + 32) + 13)];
  v3[4] = @"biasY";
  v4[4] = [NSNumber numberWithDouble:*(*(a1 + 32) + 17)];
  v3[5] = @"biasZ";
  v4[5] = [NSNumber numberWithDouble:*(*(a1 + 32) + 21)];
  v3[6] = @"biasUncertaintyX";
  v4[6] = [NSNumber numberWithDouble:*(*(a1 + 32) + 25)];
  v3[7] = @"biasUncertaintyY";
  v4[7] = [NSNumber numberWithDouble:*(*(a1 + 32) + 29)];
  v3[8] = @"biasUncertaintyZ";
  v4[8] = [NSNumber numberWithDouble:*(*(a1 + 32) + 33)];
  v3[9] = @"dynamicBiasX";
  v4[9] = [NSNumber numberWithDouble:*(*(a1 + 32) + 37)];
  v3[10] = @"dynamicBiasY";
  v4[10] = [NSNumber numberWithDouble:*(*(a1 + 32) + 41)];
  v3[11] = @"dynamicBiasZ";
  v4[11] = [NSNumber numberWithDouble:*(*(a1 + 32) + 45)];
  v3[12] = @"temperatureFitUncertaintyX";
  v4[12] = [NSNumber numberWithDouble:*(*(a1 + 32) + 49)];
  v3[13] = @"temperatureFitUncertaintyY";
  v4[13] = [NSNumber numberWithDouble:*(*(a1 + 32) + 53)];
  v3[14] = @"temperatureFitUncertaintyZ";
  v4[14] = [NSNumber numberWithDouble:*(*(a1 + 32) + 57)];
  return [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:15];
}

uint64_t sub_100143DF0(uint64_t a1, uint64_t a2)
{
  v5 = a1 + 112;
  v4 = *(a1 + 112);
  v6 = a1 + 72;
  *&v18[1] = a1 + 112;
  (*(v4 + 16))(a1 + 112);
  v19 = 256;
  v18[0] = *(a2 + 24);
  if (sub_10009CB48(v6, v18))
  {
    if (sub_100099160(v6))
    {
      (*(*a1 + 80))(a1, a2, 0);
    }

    else if ((*(a1 + 128) & 1) == 0)
    {
      v12 = *(a1 + 216);
      if (v12 > *(a1 + 288))
      {
        ++*(a1 + 208);
        *(a1 + 216) = v12 - 1;
        sub_1000AACB0(a1 + 176, 1);
        if (qword_1025D4200 != -1)
        {
          sub_1019A9E88();
        }

        v13 = qword_1025D4208;
        if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_DEBUG, "Maximum number of entries exceeded, throwing out oldest entry.", buf, 2u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_1019A9EB0(buf);
          v17 = _os_log_send_and_compose_impl();
          sub_100152C7C("Generic", 1, 0, 2, "void CLActivityRecorderDb<CLSignificantElevation>::addSuspectRecord(const T &) [T = CLSignificantElevation, DataProtectionPolicy = CLActivityDB::ClassCDataProtectionPolicy]", "%s\n", v17);
          if (v17 != buf)
          {
            free(v17);
          }
        }
      }

      if (qword_1025D4270 != -1)
      {
        sub_1019A9EF4();
      }

      v14 = qword_1025D4278;
      if (os_log_type_enabled(qword_1025D4278, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_DEBUG, "Buffer was added to since db was inaccesible.", buf, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1019A9F1C(buf);
        v16 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "void CLActivityRecorderDb<CLSignificantElevation>::addSuspectRecord(const T &) [T = CLSignificantElevation, DataProtectionPolicy = CLActivityDB::ClassCDataProtectionPolicy]", "%s\n", v16);
        if (v16 != buf)
        {
          free(v16);
        }
      }

      v7 = sub_1009E2980((a1 + 176), a2);
    }
  }

  else
  {
    if (qword_1025D4200 != -1)
    {
      sub_1019A9E88();
    }

    v8 = qword_1025D4208;
    if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_ERROR))
    {
      v9 = (a1 + 88);
      if (*(a1 + 111) < 0)
      {
        v9 = *v9;
      }

      *buf = 68289538;
      v21 = 0;
      v22 = 2082;
      v23 = "";
      v24 = 1026;
      v25 = v18[0];
      v26 = 2082;
      v27 = v9;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:CL database error, record contains invalid time, invalid time:%{public}d, name:%{public, location:escape_only}s}", buf, 0x22u);
      if (qword_1025D4200 != -1)
      {
        sub_1019A9E88();
      }
    }

    v10 = qword_1025D4208;
    if (os_signpost_enabled(qword_1025D4208))
    {
      v11 = (a1 + 88);
      if (*(a1 + 111) < 0)
      {
        v11 = *v11;
      }

      *buf = 68289538;
      v21 = 0;
      v22 = 2082;
      v23 = "";
      v24 = 1026;
      v25 = v18[0];
      v26 = 2082;
      v27 = v11;
      _os_signpost_emit_with_name_impl(dword_100000000, v10, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "CL database error, record contains invalid time", "{msg%{public}.0s:CL database error, record contains invalid time, invalid time:%{public}d, name:%{public, location:escape_only}s}", buf, 0x22u);
    }
  }

  return (*(*v5 + 24))(v5, v7);
}

void sub_100144298(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_1017EC98C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1001442CC(uint64_t a1, uint64_t a2)
{
  result = sub_100143DF0(*(a1 + 24), a2);
  if ((*(a1 + 41) & 1) == 0)
  {
    result = sub_100099160(*(a1 + 24) + 72);
    if (result)
    {
      *(a1 + 41) = 1;

      return sub_1009E0DA0(a1);
    }
  }

  return result;
}

id *sub_100144334(uint64_t a1, __int128 *a2, char a3)
{
  v28[0] = os_transaction_create();
  v28[1] = 0;
  if (*(a1 + 248) > 0.0 && (*(*a1 + 136))(a1, a1 + 224, a2))
  {
    (*(*a1 + 72))(a1, a1 + 224, a2);
    return sub_10001A420(v28);
  }

  if ((a3 & 1) == 0)
  {
    sub_100144A84(*(a1 + 80));
  }

  v6 = (*(*a1 + 104))(a1, v37);
  if (v6 == 1)
  {
    (*(*a1 + 120))(a1, a2, 1);
  }

  else
  {
    if (v6)
    {
      if (qword_1025D4200 != -1)
      {
        sub_101AEE538();
      }

      v14 = qword_1025D4208;
      if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_FAULT, "Failed to insert record due to failure from reading the most recent entry.", buf, 2u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_101AEE560(buf);
        LOWORD(v29) = 0;
        v15 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 0, "virtual void CLActivityRecorderDb<CLSignificantElevation>::sanitizeAndStoreRecordUL(const T &, BOOL) [T = CLSignificantElevation, DataProtectionPolicy = CLActivityDB::ClassCDataProtectionPolicy]", "%s\n", v15);
        if (v15 != buf)
        {
          free(v15);
        }
      }

      goto LABEL_41;
    }

    v7 = *(a2 + 3);
    v8 = v38;
    v9 = v7 - v38;
    if (v7 - v38 < 0.0)
    {
      v9 = -(v7 - v38);
    }

    if (v9 > 604800.0)
    {
      if (qword_1025D4200 != -1)
      {
        sub_101AEE538();
      }

      v10 = qword_1025D4208;
      if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_DEFAULT))
      {
        v11 = *(a2 + 3);
        *buf = 134349312;
        v34 = v38;
        v35 = 2050;
        v36 = v11;
        _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEFAULT, "#Notice Potential CM database inconsistency, time jump %{public}lf %{public}lf", buf, 0x16u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101AEE560(buf);
        v23 = *(a2 + 3);
        v29 = 134349312;
        v30 = v38;
        v31 = 2050;
        v32 = v23;
        v24 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "virtual void CLActivityRecorderDb<CLSignificantElevation>::sanitizeAndStoreRecordUL(const T &, BOOL) [T = CLSignificantElevation, DataProtectionPolicy = CLActivityDB::ClassCDataProtectionPolicy]", "%s\n", v24);
        if (v24 != buf)
        {
          free(v24);
        }
      }

      CLWriteStackshot();
      v7 = *(a2 + 3);
      v8 = v38;
    }

    if (v7 < v8)
    {
      if (v8 - v7 < 10.0)
      {
        if (qword_1025D4200 != -1)
        {
          sub_101AEE538();
        }

        v12 = qword_1025D4208;
        if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_INFO))
        {
          v13 = *(a2 + 3);
          *buf = 134217984;
          v34 = v13;
          _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_INFO, "Entry being recorded has a startTime in the recent past.  Deleting records after %f.", buf, 0xCu);
        }

        if (sub_10000A100(121, 2))
        {
          sub_101AEE560(buf);
          v25 = *(a2 + 3);
          v29 = 134217984;
          v30 = v25;
          v26 = _os_log_send_and_compose_impl();
          sub_100152C7C("Generic", 1, 0, 2, "virtual void CLActivityRecorderDb<CLSignificantElevation>::sanitizeAndStoreRecordUL(const T &, BOOL) [T = CLSignificantElevation, DataProtectionPolicy = CLActivityDB::ClassCDataProtectionPolicy]", "%s\n", v26);
          if (v26 != buf)
          {
            free(v26);
          }
        }

        (*(*a1 + 88))(a1, a2);
        goto LABEL_40;
      }

      v16 = *(a1 + 136);
      if (qword_1025D4200 != -1)
      {
        sub_101AEE538();
      }

      v17 = v7 - v8 - v16;
      v18 = qword_1025D4208;
      if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_INFO))
      {
        *buf = 134217984;
        v34 = v17;
        _os_log_impl(dword_100000000, v18, OS_LOG_TYPE_INFO, "Entry being recorded has a startTime in the substantial past.  Shift records by %f.", buf, 0xCu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101AEE560(buf);
        v29 = 134217984;
        v30 = v17;
        v27 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "virtual void CLActivityRecorderDb<CLSignificantElevation>::sanitizeAndStoreRecordUL(const T &, BOOL) [T = CLSignificantElevation, DataProtectionPolicy = CLActivityDB::ClassCDataProtectionPolicy]", "%s\n", v27);
        if (v27 != buf)
        {
          free(v27);
        }
      }

      (*(*a1 + 96))(a1, v17);
    }

    (*(*a1 + 144))(a1, v37, a1 + 224, a2);
    (*(*a1 + 120))(a1, a2, 1);
  }

LABEL_40:
  v19 = *a2;
  v20 = a2[1];
  v21 = a2[3];
  *(a1 + 256) = a2[2];
  *(a1 + 272) = v21;
  *(a1 + 224) = v19;
  *(a1 + 240) = v20;
LABEL_41:
  if ((a3 & 1) == 0)
  {
    sub_1001454E0(*(a1 + 80));
  }

  return sub_10001A420(v28);
}

void sub_100144A50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10001A420(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100144A84(uint64_t a1)
{
  sub_10003926C(*(a1 + 16));
  v2 = sqlite3_exec(*(a1 + 8), "BEGIN TRANSACTION", 0, 0, 0);
  v7 = v2;
  if (qword_1025D4850 != -1)
  {
    sub_1018E57D4();
  }

  v3 = off_1025D4858;
  if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_DEBUG))
  {
    v4 = (a1 + 96);
    if (*(a1 + 119) < 0)
    {
      v4 = *v4;
    }

    v5 = *(a1 + 120);
    *buf = 68290050;
    v9 = 0;
    v10 = 2082;
    v11 = "";
    v12 = 2082;
    v13 = v4;
    v14 = 1026;
    v15 = v5;
    v16 = 1040;
    v17 = 4;
    v18 = 2098;
    v19 = &v7;
    _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:beginTransaction, path:%{public, location:escape_only}s, count:%{public}d, rc:%{public, location:SqliteResult}.*P}", buf, 0x32u);
    v2 = v7;
  }

  ++*(a1 + 120);
  return v2;
}

uint64_t sub_100144BF4(uint64_t a1, uint64_t a2)
{
  if (!sub_100099160(a1 + 72))
  {
    return 2;
  }

  sub_100144CA0((a1 + 464), &v7);
  v4 = sub_100144D90(&v7, a2);
  v5 = v7;
  v7 = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  return v4;
}

void sub_100144C84(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    sub_101880BC0();
  }

  _Unwind_Resume(exception_object);
}

void *sub_100144CA0@<X0>(void *result@<X0>, void *a2@<X8>)
{
  if (*result && result[1])
  {
    operator new();
  }

  *a2 = 0;
  return result;
}

void *sub_100144D28(void *a1, uint64_t a2, uint64_t a3)
{
  *a1 = off_1024B27E8;
  a1[1] = a2;
  a1[2] = a3;
  sub_100039264(a2);
  *a1 = off_1024B2828;
  return a1;
}

uint64_t sub_100144D90(uint64_t *a1, uint64_t a2)
{
  v4 = sub_100008880(*a1);
  v5 = sqlite3_step(v4);
  if (v5 == 101)
  {
    return 1;
  }

  if (v5 != 100)
  {
    return 2;
  }

  v6 = sub_100008880(*a1);
  *a2 = sqlite3_column_int(v6, 0);
  v7 = sub_100008880(*a1);
  *(a2 + 24) = sqlite3_column_double(v7, 1);
  v8 = sub_100008880(*a1);
  *(a2 + 32) = sqlite3_column_double(v8, 2);
  v9 = sub_100008880(*a1);
  *(a2 + 40) = sqlite3_column_int(v9, 3);
  v10 = sub_100008880(*a1);
  *(a2 + 44) = sqlite3_column_int(v10, 4);
  v11 = sub_100008880(*a1);
  v12 = sqlite3_column_double(v11, 5);
  result = 0;
  *(a2 + 48) = v12;
  return result;
}

void *sub_100144E5C(uint64_t a1)
{
  *a1 = off_1024B2828;
  v2 = sqlite3_reset(*(a1 + 16));
  if (v2)
  {
    sub_10060A6E4(*(a1 + 8), "sqlite3_reset()", v2, *(a1 + 16));
    sub_100608EB0(*(a1 + 8), v2);
  }

  v3 = sqlite3_clear_bindings(*(a1 + 16));
  if (v3)
  {
    sub_10060A6E4(*(a1 + 8), "sqlite3_clear_bindings()", v3, *(a1 + 16));
    sub_100608EB0(*(a1 + 8), v3);
  }

  return sub_1000393EC(a1);
}

void sub_100144F10(uint64_t a1)
{
  sub_100144E5C(a1);

  operator delete();
}

void sub_100144F48(uint64_t a1, uint64_t a2)
{
  if (sub_100099160(a1 + 72))
  {
    sub_10014521C(a1, a2, v30);
    if (v4 == 2)
    {
      if (qword_1025D4310 != -1)
      {
        sub_101AEEACC();
      }

      v5 = qword_1025D4318;
      if (os_log_type_enabled(qword_1025D4318, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_FAULT, "Error setting elevation offsets.", buf, 2u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_101AEEAF4();
      }
    }

    else
    {
      v28 = 0u;
      *v29 = 0u;
      *buf = 0u;
      v27 = 0u;
      v6 = *(a2 + 48);
      v7 = vadd_s32(*(a1 + 568), *(a2 + 40));
      v9 = *(a2 + 24);
      v8 = *(a2 + 32);
      *(&v27 + 1) = v9;
      *&v28 = v8;
      v19 = v7;
      *(&v28 + 1) = v7;
      v29[0] = v6;
      if (!v4)
      {
        if (v9 < v31)
        {
          v9 = v31;
        }

        *(&v27 + 1) = v9;
      }

      sub_100144CA0((a1 + 448), &v20);
      v10 = sub_100008880(v20);
      if (sub_1001A3BD4(v10, 1, v9))
      {
        v11 = sub_100008880(v20);
        if (sub_1001A3BD4(v11, 2, v8))
        {
          v12 = sub_100008880(v20);
          if (sub_1001452C8(v12, 3, v19.i32[0]))
          {
            v13 = sub_100008880(v20);
            if (sub_1001452C8(v13, 4, v19.i32[1]))
            {
              v14 = sub_100008880(v20);
              if (sub_1001A3BD4(v14, 5, v6))
              {
                v15 = *(a1 + 80);
                v16 = sub_100008880(v20);
                sub_1001A3DEC(v15, v16);
                if (*(a1 + 512))
                {
                  if (*(a1 + 520) && *(a2 + 56) == 1)
                  {
                    *buf = sub_100616934(*(a1 + 80));
                    sub_100655C7C(a1, &buf[4]);
                    v17 = *(a1 + 512);
                    v21[0] = _NSConcreteStackBlock;
                    v21[1] = 3221225472;
                    v22 = *buf;
                    v23 = v27;
                    v24 = v28;
                    v25 = *v29;
                    v21[2] = sub_100FAD4DC;
                    v21[3] = &unk_102485918;
                    v21[4] = a1;
                    [v17 async:v21];
                  }
                }
              }
            }
          }
        }
      }

      v18 = v20;
      v20 = 0;
      if (v18)
      {
        (*(*v18 + 8))(v18);
      }
    }
  }
}

void sub_1001451F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a11)
  {
    sub_101880BC0();
  }

  _Unwind_Resume(exception_object);
}

double sub_10014521C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = (*(*a1 + 104))(a1, a3);
  result = *(a1 + 552);
  if (result == 1.79769313e308 || *(a2 + 24) < result)
  {
    v9 = (a1 + 528);
    if (v6 == 1)
    {
      result = 0.0;
      *(a1 + 560) = 0u;
      *(a1 + 576) = 0u;
      *v9 = 0u;
      *(a1 + 544) = 0u;
    }

    else if (!v6)
    {
      result = *(a3 + 40);
      *(a1 + 560) = 0;
      *v9 = 0u;
      *(a1 + 544) = 0u;
      *(a1 + 568) = result;
      *(a1 + 576) = 0u;
    }
  }

  return result;
}

BOOL sub_1001452C8(sqlite3_stmt *a1, int a2, int a3)
{
  v6 = sqlite3_bind_int(a1, a2, a3);
  v11 = v6;
  if (v6)
  {
    if (qword_1025D4850 != -1)
    {
      sub_1018E57D4();
    }

    v7 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_FAULT))
    {
      *buf = 68290307;
      v13 = 0;
      v14 = 2082;
      v15 = "";
      v16 = 1025;
      v17 = a3;
      v18 = 1026;
      v19 = a2;
      v20 = 1040;
      v21 = 4;
      v22 = 2098;
      v23 = &v11;
      v24 = 2081;
      v25 = sqlite3_sql(a1);
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Could not bind, value:%{private}u, index:%{public}d, rc:%{public, location:SqliteResult}.*P, query:%{private, location:escape_only}s}", buf, 0x38u);
      if (qword_1025D4850 != -1)
      {
        sub_1018E57E8();
      }
    }

    v8 = off_1025D4858;
    if (os_signpost_enabled(off_1025D4858))
    {
      v9 = sqlite3_sql(a1);
      *buf = 68290307;
      v13 = 0;
      v14 = 2082;
      v15 = "";
      v16 = 1025;
      v17 = a3;
      v18 = 1026;
      v19 = a2;
      v20 = 1040;
      v21 = 4;
      v22 = 2098;
      v23 = &v11;
      v24 = 2081;
      v25 = v9;
      _os_signpost_emit_with_name_impl(dword_100000000, v8, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Could not bind", "{msg%{public}.0s:Could not bind, value:%{private}u, index:%{public}d, rc:%{public, location:SqliteResult}.*P, query:%{private, location:escape_only}s}", buf, 0x38u);
    }
  }

  return v6 == 0;
}

uint64_t sub_1001454E0(uint64_t a1)
{
  v6 = sqlite3_exec(*(a1 + 8), "END TRANSACTION", 0, 0, 0);
  --*(a1 + 120);
  if (qword_1025D4850 != -1)
  {
    sub_1018E57D4();
  }

  v2 = off_1025D4858;
  if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_DEBUG))
  {
    v3 = (a1 + 96);
    if (*(a1 + 119) < 0)
    {
      v3 = *v3;
    }

    v4 = *(a1 + 120);
    *buf = 68290050;
    v8 = 0;
    v9 = 2082;
    v10 = "";
    v11 = 2082;
    v12 = v3;
    v13 = 1026;
    v14 = v4;
    v15 = 1040;
    v16 = 4;
    v17 = 2098;
    v18 = &v6;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:endTransaction, path:%{public, location:escape_only}s, count:%{public}d, rc:%{public, location:SqliteResult}.*P}", buf, 0x32u);
  }

  if (*(a1 + 120))
  {
    sub_1018E5B50();
  }

  sub_1000393C8(*(a1 + 16));
  return v6;
}

id sub_10014567C(uint64_t a1, uint64_t a2)
{
  result = [*(*(a1 + 40) + 136) BOOLForKey:@"isSystemService" atKeyPath:a2 defaultValue:0];
  if ((result & 1) == 0)
  {
    v5 = *(a1 + 32);

    return [v5 addObject:a2];
  }

  return result;
}

uint64_t sub_100145710(char *a1, int a2, int *a3)
{
  if ((*a3 - 1) > 1)
  {

    return sub_1000489F4(a1, a2, a3);
  }

  else
  {
    v7 = v3;
    v8 = v4;
    v6 = 0;
    return sub_1000489F4(a1, a2, &v6);
  }
}

uint64_t sub_100145758(char *a1, int a2, int *a3)
{
  v4 = sub_100145710(a1, a2, a3);
  sub_1000438DC(a1);
  return v4;
}

id sub_100145898(uint64_t a1, void *a2, void *a3)
{
  v3 = *(a1 + 32);
  if (*(v3 + 32))
  {
    sub_101A827E4();
  }

  if (!a3)
  {
    sub_101A8295C();
  }

  *(v3 + 32) = a2;
  result = a3;
  *(v3 + 48) = result;
  return result;
}

void sub_100145A9C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100008080(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_100145AD0(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = *a2;
  v5 = *a3;
  v4 = *(a3 + 8);
  *a3 = 0;
  *(a3 + 8) = 0;
  v6 = _os_activity_create(dword_100000000, "CL: kCLConnectionMessageGyroBiasEstimation", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v6, &state);

  if (qword_1025D4790 != -1)
  {
    sub_1001456E8();
  }

  v7 = qword_1025D4798;
  if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(v3 + 72);
    *buf = 68290050;
    v12 = 0;
    v13 = 2082;
    v14 = "";
    v15 = 2082;
    v16 = "activity";
    v17 = 2050;
    v18 = v3;
    v19 = 1026;
    v20 = 0;
    v21 = 1026;
    v22 = v8;
    _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:kCLConnectionMessageGyroBiasEstimation, event:%{public, location:escape_only}s, this:%{public}p, registrationRequired:%{public}hhd, registrationReceived:%{public}hhd}", buf, 0x32u);
  }

  v9[0] = v5;
  v9[1] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  sub_100145CA8(v3, v9);
  if (v4)
  {
    sub_100008080(v4);
    os_activity_scope_leave(&state);
    sub_100008080(v4);
  }

  else
  {
    os_activity_scope_leave(&state);
  }
}

uint64_t sub_100145CA8(uint64_t a1, CLConnectionMessage **a2)
{
  Dictionary = CLConnectionMessage::getDictionary(*a2);
  sub_100005548(v8, Dictionary);
  v7 = 0;
  if (sub_10001CB4C(v8, "kCLConnectionMessageSubscribeKey", &v7))
  {
    sub_100145E88(a1, v7, v8);
  }

  else
  {
    if (qword_1025D47A0 != -1)
    {
      sub_1019EED30();
    }

    v4 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_FAULT))
    {
      *buf = 136446210;
      v12 = "kCLConnectionMessageSubscribeKey";
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_FAULT, "Couldn't get value for key %{public}s", buf, 0xCu);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1019EEDB0(buf);
      v9 = 136446210;
      v10 = "kCLConnectionMessageSubscribeKey";
      v6 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 0, "void CLDaemonClient::handleMessageGyroBiasEstimation(std::shared_ptr<CLConnectionMessage>)", "%s\n", v6);
      if (v6 != buf)
      {
        free(v6);
      }
    }
  }

  return sub_100005DA4(v8);
}

void sub_100145E68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_100005DA4(va);
  _Unwind_Resume(a1);
}

void sub_100145E88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = objc_alloc_init(NSAutoreleasePool);
  if (qword_1025D42F0 != -1)
  {
    sub_1019EF834();
  }

  v7 = off_1025D42F8;
  if (os_log_type_enabled(off_1025D42F8, OS_LOG_TYPE_INFO))
  {
    v8 = *(a1 + 48);
    *buf = 138543618;
    v31 = v8;
    v32 = 1026;
    v33 = a2;
    _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_INFO, "CLDaemonClient received GyroBiasEstimation request,client,%{public}@,subscribe,%{public}d", buf, 0x12u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1019EEE30(buf);
    v18 = *(a1 + 48);
    v26 = 138543618;
    v27 = v18;
    v28 = 1026;
    v29 = a2;
    v19 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "void CLDaemonClient::handleRequestGyroBiasEstimation(BOOL, const CLNameValuePair &)", "%s\n", v19);
    if (v19 != buf)
    {
      free(v19);
    }
  }

  (*(*a1 + 32))(a1, "kCLConnectionMessageGyroBiasEstimation", a2);
  if (a2)
  {
    v25 = 0;
    if (sub_10001CB4C(a3, "kCLConnectionMessageBuildGYTTKey", &v25))
    {
      if (v25)
      {
        [objc_msgSend(objc_msgSend(*(a1 + 24) "vendor")];
      }
    }

    else
    {
      if (qword_1025D42F0 != -1)
      {
        sub_1019EEE08();
      }

      v11 = off_1025D42F8;
      if (os_log_type_enabled(off_1025D42F8, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_FAULT, "isBuildingGYTT not set", buf, 2u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_1019EEE30(buf);
        LOWORD(v26) = 0;
        v22 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 0, "void CLDaemonClient::handleRequestGyroBiasEstimation(BOOL, const CLNameValuePair &)", "%s\n", v22);
        if (v22 != buf)
        {
          free(v22);
        }
      }

      v25 = 0;
    }

    if (qword_1025D42F0 != -1)
    {
      sub_1019EEE08();
    }

    v12 = off_1025D42F8;
    if (os_log_type_enabled(off_1025D42F8, OS_LOG_TYPE_INFO))
    {
      *buf = 67240192;
      LODWORD(v31) = v25;
      _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_INFO, "CLDaemonClient got gyro bias estimation subscription request,isBuildingGYTT,%{public}d", buf, 8u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1019EEE30(buf);
      v26 = 67240192;
      LODWORD(v27) = v25;
      v21 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "void CLDaemonClient::handleRequestGyroBiasEstimation(BOOL, const CLNameValuePair &)", "%s\n", v21);
      if (v21 != buf)
      {
        free(v21);
      }
    }

    v14 = *(a1 + 408);
    v13 = *(a1 + 416);
    if (v13)
    {
      atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
      atomic_fetch_add_explicit(&v13->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      sub_100008080(v13);
    }

    v15 = *(a1 + 32);
    v16 = sub_100146590();
    v17 = v25;
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3321888768;
    v23[2] = sub_100146C9C;
    v23[3] = &unk_102494F40;
    v23[4] = v15;
    v23[5] = a1;
    v23[6] = v14;
    v24 = v13;
    if (v13)
    {
      atomic_fetch_add_explicit(&v13->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    sub_1001464F8(v16, a1, v17, v23);
    *(a1 + 276) = 1;
    if (v24)
    {
      std::__shared_weak_count::__release_weak(v24);
    }

    if (v13)
    {
      std::__shared_weak_count::__release_weak(v13);
    }
  }

  else
  {
    if (qword_1025D42F0 != -1)
    {
      sub_1019EEE08();
    }

    v9 = off_1025D42F8;
    if (os_log_type_enabled(off_1025D42F8, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_INFO, "CLDaemonClient got gyro bias estimation unsubscription request", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1019EEE30(buf);
      LOWORD(v26) = 0;
      v20 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "void CLDaemonClient::handleRequestGyroBiasEstimation(BOOL, const CLNameValuePair &)", "%s\n", v20);
      if (v20 != buf)
      {
        free(v20);
      }
    }

    v10 = sub_100146590();
    sub_1001464F8(v10, a1, 0, 0);
    *(a1 + 276) = 0;
  }
}

void sub_1001464F8(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v8 = sub_100011660();
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10014679C;
  v9[3] = &unk_102499FB8;
  v9[5] = a1;
  v9[6] = a2;
  v10 = a3;
  v9[4] = a4;
  sub_10017A794(v8, v9);
}

uint64_t sub_100146590()
{
  if (qword_102663A30 != -1)
  {
    sub_101B33684();
  }

  return qword_102638370;
}

void sub_1001465C8(uint64_t a1, uint64_t a2, int a3, void *a4)
{
  if ((*(a1 + 1065) & 1) == 0)
  {
    v8 = sub_1001467B0(a1, a2);
    if (a4 || (v8 & 1) != 0)
    {
      if (a4)
      {
        sub_1001468F0(a1, a2, a3, a4);
      }

      v10 = a1 + 1072;
      v11 = *(a1 + 1080);
      if (v11 == a1 + 1072)
      {
LABEL_17:
        *(a1 + 1008) = 0;
      }

      else
      {
        v12 = *(a1 + 1080);
        while ((*(v12 + 32) & 1) == 0)
        {
          v12 = *(v12 + 8);
          if (v12 == v10)
          {
            goto LABEL_17;
          }
        }

        *(a1 + 1008) = v12 != v10;
        if (v12 != v10)
        {
          *(a1 + 932) = 1105199104;
        }
      }

      if (*(a1 + 1024) == 1)
      {
        while (v11 != v10)
        {
          if ((*(v11 + 32) & 1) == 0)
          {
            goto LABEL_25;
          }

          v11 = *(v11 + 8);
        }

        v11 = a1 + 1072;
LABEL_25:
        *(a1 + 1025) = v11 != v10;
      }

      sub_100146D74(a1);
    }

    else
    {
      if (qword_1025D42F0 != -1)
      {
        sub_101B338A0();
      }

      v9 = off_1025D42F8;
      if (os_log_type_enabled(off_1025D42F8, OS_LOG_TYPE_INFO))
      {
        v13 = 134349056;
        v14 = a2;
        _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_INFO, "[CLGBE] Client instance %{public}p already unregistered", &v13, 0xCu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101B338B4();
      }
    }
  }
}

uint64_t sub_1001467B0(void *a1, uint64_t a2)
{
  v2 = a1[135];
  if (v2 == a1 + 134)
  {
    return 0;
  }

  while (v2[2] != a2)
  {
    v2 = v2[1];
    if (v2 == a1 + 134)
    {
      return 0;
    }
  }

  if (qword_1025D42F0 != -1)
  {
    sub_101B338A0();
  }

  v6 = off_1025D42F8;
  if (os_log_type_enabled(off_1025D42F8, OS_LOG_TYPE_INFO))
  {
    v9 = 134349056;
    v10 = a2;
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_INFO, "[CLGBE] Removing client %{public}p", &v9, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101B339A4();
  }

  _Block_release(v2[3]);
  v8 = *v2;
  v7 = v2[1];
  *(v8 + 8) = v7;
  *v7 = v8;
  --a1[136];
  operator delete(v2);
  return 1;
}

void sub_100146C9C(void *a1, _OWORD *a2)
{
  v11[0] = *a2;
  *(v11 + 12) = *(a2 + 12);
  v5 = a1 + 4;
  v3 = a1[4];
  v4 = v5[1];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3321888768;
  v8[2] = sub_100147598;
  v8[3] = &unk_102494F08;
  v7 = a1[6];
  v6 = a1[7];
  v8[4] = v4;
  v8[5] = v7;
  v9 = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v10[0] = v11[0];
  *(v10 + 12) = *(v11 + 12);
  [v3 async:v8];
  if (v9)
  {
    std::__shared_weak_count::__release_weak(v9);
  }
}

void sub_100146D5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    std::__shared_weak_count::__release_weak(a16);
  }

  _Unwind_Resume(exception_object);
}

void sub_100146D74(uint64_t a1)
{
  if (sub_100008074())
  {
    if (qword_1025D42F0 != -1)
    {
      sub_101B338A0();
    }

    v2 = off_1025D42F8;
    if (os_log_type_enabled(off_1025D42F8, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(a1 + 1025);
      v4 = *(a1 + 1008);
      v5 = *(a1 + 1088);
      *buf = 67240704;
      v13 = v3;
      v14 = 1026;
      v15 = v4;
      v16 = 2050;
      v17 = v5;
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEFAULT, "[CLGBE] SPUEnabled,%{public}d,BuildingGYTT,%{public}d,NumClients,%{public}lu", buf, 0x18u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101B33C60();
    }

    if (*(a1 + 1088))
    {
      if (*(a1 + 1025) == 1)
      {
        sub_100147000(a1);
        v6 = sub_100023ED4(0);
        (*(*(v6 + 136) + 16))();
      }

      if ((*(a1 + 1008) & 1) != 0 || (*(a1 + 1024) & 1) == 0)
      {
        sub_1010F6388(a1);
      }
    }

    if (*(a1 + 1024) == 1 && ((*(a1 + 1025) & 1) != 0 || (v7 = sub_100023ED4(0), (*(*(v7 + 136) + 16))(), (*(a1 + 1024) & 1) != 0)))
    {
      if (*(a1 + 1008))
      {
        return;
      }
    }

    else if (*(a1 + 1088))
    {
      return;
    }

    v9 = dispatch_time(0, 2000000000);
    v10 = *(a1 + 1016);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1010F6780;
    block[3] = &unk_102449A78;
    block[4] = a1;
    dispatch_after(v9, v10, block);
    return;
  }

  if (qword_1025D42F0 != -1)
  {
    sub_101B338A0();
  }

  v8 = off_1025D42F8;
  if (os_log_type_enabled(off_1025D42F8, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_INFO, "[CLGBE] Gyro not available", buf, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101B33B84();
  }
}

uint64_t sub_100147000(uint64_t result)
{
  if ((*(result + 1065) & 1) == 0)
  {
    if ((*(result + 1024) & 1) == 0)
    {
      sub_101B33704();
    }

    if (!*(result + 1032))
    {
      operator new();
    }
  }

  return result;
}

void sub_100147144(uint64_t a1, ...)
{
  va_start(va1, a1);
  va_start(va, a1);
  v1 = va_arg(va1, void);
  v3 = va_arg(va1, void);
  v4 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  sub_1010F9D48(va);
  sub_1010F9B48(va1);
  operator delete();
}

void sub_100147174(uint64_t a1, char *a2)
{
  LOBYTE(v6) = 21;
  HIBYTE(v6) = a2;
  if (qword_1025D42F0 != -1)
  {
    sub_101ADA680();
  }

  v4 = off_1025D42F8;
  if (os_log_type_enabled(off_1025D42F8, OS_LOG_TYPE_INFO))
  {
    v5 = "stopping";
    if (a2)
    {
      v5 = "starting";
    }

    *buf = 136446210;
    v8 = v5;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_INFO, "CLMotionCoprocessor %{public}s gyro bias and variance updates", buf, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101ADDA98(a2);
  }

  sub_100147290(a1 + 192, &v6, 0);
}

void sub_100147290(uint64_t a1, __int16 *a2, void *aBlock)
{
  if (*(a1 + 8))
  {
    v8[0] = 0;
    v8[1] = v8;
    v8[2] = 0x3812000000;
    v8[3] = sub_100F64110;
    v8[4] = nullsub_1726;
    v8[5] = &unk_10238AE8B;
    v9 = *a2;
    if (aBlock)
    {
      v4 = _Block_copy(aBlock);
    }

    else
    {
      v4 = 0;
    }

    v6 = *a1;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1001477E4;
    v7[3] = &unk_102462080;
    v7[5] = v8;
    v7[6] = a1;
    v7[4] = v4;
    dispatch_async(v6, v7);
    _Block_object_dispose(v8, 8);
  }

  else if (aBlock)
  {
    v5 = *(aBlock + 2);

    v5(aBlock, 0);
  }
}

void sub_1001473BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1001473E0(uint64_t a1, uint64_t a2)
{
  sub_10004FD18(v3);
  sub_100147630(a2, (a2 + 12), *(a2 + 24), v3);
  *buf = sub_10007005C(v3);
  sub_100147740();
}

void sub_100147574(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_100005DA4(va);
  _Unwind_Resume(a1);
}

__n128 sub_100147598(uint64_t a1)
{
  v2 = *(a1 + 32);
  v5[0] = *(a1 + 56);
  result = *(a1 + 68);
  *(v5 + 12) = result;
  v4 = *(a1 + 48);
  if (v4)
  {
    if (*(v4 + 8) != -1)
    {
      sub_1001473E0(v2, v5);
    }
  }

  return result;
}

BOOL sub_100147630(float *a1, float *a2, char a3, uint64_t a4)
{
  v9 = a3;
  v8 = *a1;
  sub_100116D68(a4, "kCLBiasXKey", &v8);
  v8 = a1[1];
  sub_100116D68(a4, "kCLBiasYKey", &v8);
  v8 = a1[2];
  sub_100116D68(a4, "kCLBiasZKey", &v8);
  v8 = *a2;
  sub_100116D68(a4, "kCLVarianceXKey", &v8);
  v8 = a2[1];
  sub_100116D68(a4, "kCLVarianceYKey", &v8);
  v8 = a2[2];
  sub_100116D68(a4, "kCLVarianceZKey", &v8);
  return sub_100043360(a4, "KCLDoingBiasEstimationKey", &v9);
}

void sub_1001477C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    sub_100008080(a13);
  }

  if (a11)
  {
    sub_100008080(a11);
  }

  _Unwind_Resume(exception_object);
}

void sub_1001477E4(void *a1)
{
  v2 = a1[6];
  *(*(a1[5] + 8) + 48) = 21;
  v3 = sub_1000B93E4(v2, *(a1[5] + 8) + 48, 2);
  v4 = a1[4];
  if (v4)
  {
    (*(v4 + 16))(v4, v3);
    v5 = a1[4];

    _Block_release(v5);
  }
}

uint64_t sub_1001478DC(uint64_t a1, char **a2)
{
  sub_10000EC00(&__p, *a2);
  CLConnectionMessage::CLConnectionMessage();
  if (v5 < 0)
  {
    operator delete(__p);
  }

  return a1;
}

void sub_100147938(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_100147954(void *a1, char **a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_102451BF8;
  sub_1001478DC((a1 + 3), a2);
  return a1;
}

void sub_1001479B0(uint64_t a1)
{
  if (*(a1 + 32))
  {
    if (qword_1025D47A0 != -1)
    {
      sub_101B13524();
    }

    v2 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
    {
      v3 = *(a1 + 48);
      v4 = *(a1 + 40);
      v5[0] = 68289538;
      v5[1] = 0;
      v6 = 2082;
      v7 = "";
      v8 = 1026;
      v9 = v3;
      v10 = 2114;
      v11 = v4;
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:Releasing process assertion, pid:%{public}u, clientKeyPath:%{public, location:escape_only}@}", v5, 0x22u);
    }

    [*(a1 + 32) invalidate];
  }
}

void sub_100147AB4(uint64_t a1)
{
  sub_100147E00(__stack_chk_guard, v6, v7, *v8, v8[4]);
  if (qword_1025D4360 != -1)
  {
    dispatch_once(&qword_1025D4360, &stru_10249AB30);
  }

  sub_100FE59C0(*(a1 + 168));
  sub_100FE5108(a1);
  sub_100148AD4();
  sub_100147CAC();
  v2 = sub_100152D8C();
  sub_100147DD8("Generic", v3, v4, v5, "void CLMotionSyncStoreCompanion::persistCachedValues()", "%s\n");
  if (v2 != a1)
  {
    free(v2);
  }
}

void sub_100147BD0()
{
  sub_100147E1C(__stack_chk_guard, v5, v6, v7, *v8, v8[4]);
  if (qword_1025D4360 != -1)
  {
    dispatch_once(&qword_1025D4360, &stru_10249AB30);
  }

  sub_100147CF0();
  sub_100147CC4();
  _os_log_send_and_compose_impl();
  sub_100147E38();
  sub_100147DD8("Generic", v2, v3, v4, "virtual void CLMotionSyncStoreCompanion::deviceUnlocked()", "%s\n");
  if (v0 != v1)
  {
    free(v0);
  }
}

void sub_100147DAC(void *a1, int a2, int a3, int a4, const char *a5, const char *a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint8_t buf)
{

  _os_signpost_emit_with_name_impl(a1, v13, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, a5, a6, &buf, 0x26u);
}

uint64_t sub_100147DD8(const char *a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5, char *a6)
{

  return sub_100152C7C(a1, 1, 0, 2, a5, a6);
}

void sub_100147E00(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, int a4, char a5)
{
  *(v5 - 40) = a1;

  bzero(&a5, 0x65CuLL);
}

void sub_100147E1C(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, int a5, char a6)
{
  *(v6 - 40) = a1;

  bzero(&a6, 0x65CuLL);
}

void sub_100147E44(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint8_t buf)
{

  _os_log_impl(a1, v13, OS_LOG_TYPE_FAULT, a4, &buf, 0x26u);
}

void sub_100147E64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, char a12)
{

  bzero(&a12, 0x65CuLL);
}

uint64_t sub_100147EC4(const char *a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5, char *a6)
{

  return sub_100152C7C(a1, 1, 0, 0, a5, a6);
}

uint64_t sub_100147EE0()
{

  return _os_log_send_and_compose_impl();
}

uint64_t sub_100147F08()
{

  return _os_log_send_and_compose_impl();
}

uint64_t sub_100147F90()
{

  return _os_log_send_and_compose_impl();
}

uint64_t sub_100147FFC(uint64_t result, float a2)
{
  *(v5 - 96) = a2;
  *(v5 - 92) = v3;
  *(v5 - 88) = 2082;
  *(v4 + 10) = result;
  *(v5 - 78) = 2114;
  *(v4 + 20) = v2;
  return result;
}

void sub_10014802C(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, int a4, char a5)
{
  *(v5 - 56) = a1;

  bzero(&a5, 0x65CuLL);
}

uint64_t sub_100148048(uint64_t result, float a2)
{
  *(v2 - 64) = a2;
  *(v2 - 60) = result;
  return result;
}

void sub_1001480C0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5, const char *a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_signpost_emit_with_name_impl(a1, v9, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, a5, a6, &a9, 0x26u);
}

void sub_100148100(uint64_t a1@<X8>, float a2@<S0>)
{
  *(v4 - 64) = a2;
  *(v3 + 4) = a1;
  *(v4 - 52) = 2048;
  *(v3 + 14) = v2;
}

uint64_t sub_100148154(uint64_t result, float a2)
{
  *(v3 - 64) = a2;
  *(v2 + 4) = result;
  return result;
}

void sub_10014816C(int a1@<W8>, float a2@<S0>)
{
  *(v2 - 64) = a2;
  *(v2 - 60) = a1;
  *(v2 - 56) = 1026;
}

void sub_100148180(uint64_t a1@<X8>)
{
  *(v2 + 4) = v1;
  *(v3 - 68) = 2048;
  *(v2 + 14) = 0;
  *(v3 - 58) = 2080;
  v2[3] = a1;
}

uint64_t sub_1001481AC()
{

  return _os_log_send_and_compose_impl();
}

void sub_1001481CC(uint64_t a1@<X8>, float a2@<S0>)
{
  *(v4 - 64) = a2;
  *(a1 + 4) = v2;
  *(v4 - 52) = 1026;
  *(a1 + 14) = v3;
}

uint64_t sub_10014820C(const char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char *a6)
{

  return sub_100152C7C(a1, 1, 0, 0, v6, a6);
}

uint64_t sub_10014822C(const char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char *a6)
{

  return sub_100152C7C(a1, 1, 0, 2, v6, a6);
}

void sub_10014824C(uint64_t a1@<X8>, float a2@<S0>)
{
  *(v5 - 64) = a2;
  *(v5 - 60) = v3;
  *(v5 - 56) = 1024;
  *(a1 + 10) = v4;
  *(v5 - 50) = 1024;
  *(v5 - 48) = v2;
}

void sub_100148278(float a1)
{
  *(v3 - 80) = a1;
  *(v2 + 4) = v1;
  *(v3 - 68) = 2048;
  *(v2 + 14) = 3;
}

uint64_t sub_1001482A0()
{

  return _os_log_send_and_compose_impl();
}

uint64_t sub_1001482EC()
{

  return _os_log_send_and_compose_impl();
}

BOOL sub_100148314()
{
  v1 = off_1025D47A8;

  return os_log_type_enabled(v1, OS_LOG_TYPE_FAULT);
}

uint64_t sub_100148334()
{

  return _os_log_send_and_compose_impl();
}

uint64_t sub_100148394()
{

  return _os_log_send_and_compose_impl();
}

uint64_t sub_1001483BC()
{

  return _os_log_send_and_compose_impl();
}

void sub_1001483DC(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 8u);
}

BOOL sub_1001483FC()
{

  return os_log_type_enabled(v0, OS_LOG_TYPE_ERROR);
}

void sub_100148414(uint64_t a1@<X8>, float a2@<S0>)
{
  *(v4 - 80) = a2;
  *(v3 + 4) = v2;
  *(v4 - 68) = 2048;
  *(v3 + 14) = 0;
  *(v4 - 58) = 2080;
  v3[3] = (a1 + 0x8000000000000000) & 0x7FFFFFFFFFFFFFFFLL;
}

uint64_t sub_1001484A0()
{

  return _os_log_send_and_compose_impl();
}

void sub_1001484C0(float a1)
{
  *(v4 - 64) = a1;
  *(v3 + 4) = v2;
  *(v4 - 52) = 2112;
  *(v3 + 14) = v1;
}

void sub_1001484F4(uint64_t a1@<X8>, float a2@<S0>)
{
  *(v3 - 80) = a2;
  *(v2 + 4) = a1;
  *(v3 - 68) = 2048;
  *(v2 + 14) = v4;
}

void sub_100148518(__int16 a1@<W8>)
{
  *(v4 + 14) = v1;
  *(v5 - 58) = a1;
  *(v4 + 24) = v3;
  *(v5 - 48) = 1024;
  *(v4 + 34) = v2;
}

void sub_100148570(float a1)
{
  *(v3 - 80) = a1;
  *(v2 + 4) = v1;
  *(v3 - 68) = 2048;
  *(v2 + 14) = 2;
}

void sub_100148598(float a1)
{
  *(v2 - 80) = a1;
  *(v1 + 4) = v4;
  *(v2 - 68) = 2050;
  *(v1 + 14) = v3;
}

BOOL sub_100148630()
{
  v1 = qword_1025D42D8;

  return os_log_type_enabled(v1, OS_LOG_TYPE_FAULT);
}

void sub_10014865C(uint64_t a1@<X8>, float a2@<S0>)
{
  *(v3 - 80) = a2;
  *(a1 + 4) = v2;
  *(v3 - 68) = 2050;
  *(a1 + 14) = v4;
}

uint64_t sub_100148680()
{

  return _os_log_send_and_compose_impl();
}

BOOL sub_1001486A8()
{
  v1 = qword_1025D4798;

  return os_log_type_enabled(v1, OS_LOG_TYPE_FAULT);
}

void sub_1001486C8(double a1, float a2)
{
  *(v3 - 64) = a2;
  *(v2 + 4) = a1;
  *(v3 - 52) = 1026;
}

uint64_t sub_1001486DC@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  *(v5 - 96) = 67109888;
  *(v5 - 92) = result;
  *(v5 - 88) = 2048;
  *(v4 + 10) = a2;
  *(v5 - 78) = 2048;
  *(v4 + 20) = a3;
  *(v5 - 68) = 2048;
  *(v4 + 30) = a4;
  return result;
}

void sub_100148714(uint64_t a1@<X8>, float a2@<S0>)
{
  *(v5 - 80) = a2;
  *(v4 + 4) = a1;
  *(v5 - 68) = 2048;
  *(v4 + 14) = v2;
  *(v5 - 58) = 2048;
  v4[3] = v3;
}

void sub_100148740(uint64_t a1@<X8>, float a2@<S0>)
{
  *(v5 - 80) = a2;
  *(v4 + 4) = a1;
  *(v5 - 68) = 2082;
  *(v4 + 14) = v2;
  *(v5 - 58) = 2082;
  v4[3] = v3;
}

uint64_t sub_10014876C()
{

  return _os_log_send_and_compose_impl();
}

void sub_100148794(void *a1, int a2, int a3, int a4, const char *a5, const char *a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint8_t buf)
{

  _os_signpost_emit_with_name_impl(a1, v13, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, a5, a6, &buf, 0x30u);
}

void sub_1001487C0(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint8_t buf)
{

  _os_log_impl(a1, v13, OS_LOG_TYPE_FAULT, a4, &buf, 0x30u);
}

void sub_1001487F4(float a1, uint64_t a2, uint64_t a3)
{
  *a3 = a1;
  *(a3 + 4) = 0;
  *(a3 + 8) = 2082;
}

void sub_100148814(uint64_t a1@<X8>, float a2@<S0>)
{
  *(v3 - 64) = a2;
  *(v3 - 60) = 3;
  *(v3 - 56) = 2048;
  *(v2 + 10) = a1;
}

void sub_10014883C(uint64_t a1@<X8>, float a2@<S0>)
{
  *(v4 - 64) = a2;
  *(v3 + 4) = a1;
  *(v4 - 52) = 1026;
  *(v3 + 14) = v2;
}

void sub_100148894(uint64_t a1@<X8>, float a2@<S0>)
{
  *(v4 - 96) = a2;
  *(v3 + 4) = v5;
  *(v4 - 84) = 2048;
  *(v3 + 14) = a1;
  *(v4 - 74) = 2048;
  v3[3] = v2;
}

uint64_t sub_1001488C0(uint64_t a1, void *a2, void *a3)
{

  return __cxa_atexit(&std::string::~string, a2, a3);
}

uint64_t sub_1001488E0(uint64_t result, float a2)
{
  *(v4 - 80) = a2;
  *(v3 + 4) = v2;
  *(v4 - 68) = 2081;
  *(v3 + 14) = result;
  return result;
}

void sub_100148944(uint64_t a1@<X8>, float a2@<S0>)
{
  *(v3 - 80) = a2;
  *(v2 + 4) = v4;
  *(v3 - 68) = 2053;
  *(v2 + 14) = a1;
}

void sub_100148968(float a1)
{
  *(v2 - 80) = a1;
  *(v1 + 4) = v4;
  *(v2 - 68) = 2053;
  *(v1 + 14) = v3;
}

void sub_1001489A0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

void sub_1001489EC(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint8_t buf)
{

  _os_log_impl(a1, v13, OS_LOG_TYPE_INFO, a4, &buf, 0x26u);
}

BOOL sub_100148A30()
{
  v1 = qword_1025D46D8;

  return os_log_type_enabled(v1, OS_LOG_TYPE_FAULT);
}

void sub_100148A50(int a1@<W8>, float a2@<S0>)
{
  *(v4 - 64) = a2;
  *(v4 - 60) = a1;
  *(v4 - 56) = 1026;
  *(v3 + 10) = v2;
}

void sub_100148A9C(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_impl(a1, v9, OS_LOG_TYPE_INFO, a4, &a9, 0x26u);
}

uint64_t sub_100148AE0(uint64_t result)
{
  *(v2 + 4) = v1;
  *(v3 - 68) = 2112;
  *(v2 + 14) = result;
  return result;
}

BOOL sub_100148B00()
{
  v1 = qword_1025D48A8;

  return os_log_type_enabled(v1, OS_LOG_TYPE_FAULT);
}

BOOL sub_100148B4C()
{
  v1 = qword_1025D41A8;

  return os_log_type_enabled(v1, OS_LOG_TYPE_FAULT);
}

uint64_t sub_100148B6C()
{

  return _os_log_send_and_compose_impl();
}

void sub_100148B84(uint64_t a1@<X8>, float a2@<S0>)
{
  *(v3 - 64) = a2;
  *(a1 + 4) = v2;
  *(v3 - 52) = 1026;
}

void sub_100148B98(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint8_t buf)
{

  _os_log_impl(a1, v11, OS_LOG_TYPE_FAULT, a4, &buf, 0x16u);
}

uint64_t sub_100148BC4(uint64_t result, float a2)
{
  *(v2 - 48) = a2;
  *(v2 - 44) = result;
  return result;
}

void sub_100148BDC(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, char a9)
{
  *(v9 - 40) = a1;

  bzero(&a9, 0x65CuLL);
}

uint64_t sub_100148C10(uint64_t result, float a2)
{
  *(v4 - 80) = a2;
  *(v4 - 76) = v2;
  *(v4 - 72) = 1025;
  *(v3 + 10) = result;
  return result;
}

BOOL sub_100148C34()
{
  v2 = *(v0 + 1960);

  return os_signpost_enabled(v2);
}

uint64_t sub_100148C70()
{

  return _os_log_send_and_compose_impl();
}

BOOL sub_100148C94()
{
  v1 = off_1025D4858;

  return os_log_type_enabled(v1, OS_LOG_TYPE_FAULT);
}

void sub_100148CB4(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_impl(a1, v9, OS_LOG_TYPE_FAULT, a4, &a9, 0x2Cu);
}

BOOL sub_100148CD4()
{
  v1 = qword_1025D48A8;

  return os_log_type_enabled(v1, OS_LOG_TYPE_FAULT);
}

void sub_100148D24(int a1@<W8>, float a2@<S0>)
{
  *(v4 - 64) = a2;
  *(v4 - 60) = a1;
  *(v4 - 56) = 1026;
  *(v3 + 10) = v2;
}

uint64_t sub_100148D48@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(v2 + 4) = a2;
  *(v3 - 52) = 2050;
  *(v2 + 14) = result;
  return result;
}

uint64_t sub_100148D74()
{

  return _os_log_send_and_compose_impl();
}

void sub_100148DAC(int a1@<W8>, float a2@<S0>)
{
  *(v3 - 64) = a2;
  *(v3 - 60) = a1;
  *(v3 - 56) = 1026;
  *(v2 + 10) = 2;
}

void sub_100148DE4(double a1, float a2)
{
  *(v3 - 96) = a2;
  *(v2 + 4) = v4;
  *(v3 - 84) = 2048;
  *(v2 + 14) = v5;
  *(v3 - 74) = 2048;
  *(v2 + 24) = a1;
}

BOOL sub_100148E10()
{
  v2 = *(v0 + 1640);

  return os_log_type_enabled(v2, OS_LOG_TYPE_INFO);
}

BOOL sub_100148EAC()
{
  v2 = *(v0 + 1592);

  return os_log_type_enabled(v2, OS_LOG_TYPE_INFO);
}

BOOL sub_100148EC8()
{
  v1 = qword_1025D4638;

  return os_log_type_enabled(v1, OS_LOG_TYPE_FAULT);
}

void sub_100148F38(int a1@<W8>, float a2@<S0>)
{
  *(v3 - 80) = a2;
  *(v3 - 76) = a1;
  *(v3 - 72) = 2048;
  *(v2 + 10) = v4;
}

BOOL sub_100148F5C()
{
  v2 = *(v0 + 568);

  return os_signpost_enabled(v2);
}

void sub_100148FA0(float a1)
{
  *(v2 - 80) = a1;
  *(v1 + 4) = v3;
  *(v2 - 68) = 2049;
}

uint64_t sub_100148FB4(uint64_t result, float a2)
{
  *(v6 - 96) = a2;
  *(v6 - 92) = v3;
  *(v6 - 88) = 1024;
  *(v4 + 10) = v5;
  *(v6 - 82) = 1024;
  *(v6 - 80) = v2;
  *(v6 - 76) = 2080;
  *(v4 + 22) = result;
  return result;
}

void sub_100149020(uint64_t a1@<X8>, float a2@<S0>)
{
  *(v5 - 80) = a2;
  *(v4 + 4) = v2;
  *(v5 - 68) = 2050;
  *(v4 + 14) = a1;
  *(v5 - 58) = 2050;
  v4[3] = v3;
}

uint64_t sub_10014904C()
{

  return _os_log_send_and_compose_impl();
}

void sub_100149064(int a1@<W8>, double a2@<D0>, float a3@<S1>)
{
  *(v4 - 64) = a3;
  *(v3 + 4) = a2;
  *(v4 - 52) = 1024;
  *(v3 + 14) = a1;
}

uint64_t sub_1001490A8()
{

  return _os_log_send_and_compose_impl();
}

BOOL sub_1001490C0()
{
  v2 = *(v0 + 1960);

  return os_log_type_enabled(v2, OS_LOG_TYPE_INFO);
}

void sub_1001490DC(uint64_t a1@<X8>, uint64_t a2, int a3, char a4)
{
  *(v4 - 40) = a1;

  bzero(&a4, 0x65CuLL);
}

void sub_100149108(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5, const char *a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_signpost_emit_with_name_impl(a1, v9, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, a5, a6, &a9, 0x26u);
}

void sub_100149134(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_impl(a1, v5, OS_LOG_TYPE_INFO, a4, a5, 0x26u);
}

BOOL sub_100149150()
{
  v1 = qword_1025D47F8;

  return os_log_type_enabled(v1, OS_LOG_TYPE_FAULT);
}

void sub_100149184(int a1@<W8>, float a2@<S0>)
{
  *(v2 - 64) = a2;
  *(v2 - 60) = a1;
  *(v2 - 56) = 1024;
}

double sub_1001491AC(double a1, float a2)
{
  result = v3 - a1;
  *(v2 - 80) = a2;
  return result;
}

void sub_1001491B8(uint64_t a1@<X8>, float a2@<S0>)
{
  *(v2 - 80) = a2;
  *(v2 - 76) = 1;
  *(v2 - 72) = 1026;
  *(a1 + 10) = 1;
  *(v2 - 66) = 1026;
}

void sub_1001491D8(uint64_t a1@<X8>, uint64_t a2, int a3, char a4)
{
  *(v4 - 56) = a1;

  bzero(&a4, 0x65CuLL);
}

uint64_t sub_1001491F4(uint64_t result, float a2)
{
  *(v4 - 80) = a2;
  *(v3 + 4) = result;
  *(v4 - 68) = 1026;
  *(v3 + 14) = v2;
  return result;
}

BOOL sub_100149218()
{
  v1 = qword_1025D4658;

  return os_log_type_enabled(v1, OS_LOG_TYPE_FAULT);
}

BOOL sub_10014924C()
{
  v1 = qword_1025D4208;

  return os_log_type_enabled(v1, OS_LOG_TYPE_FAULT);
}

uint64_t sub_1001492C8(uint64_t result, float a2)
{
  *(v4 - 80) = a2;
  *(v4 - 76) = v2;
  *(v4 - 72) = 2082;
  *(v3 + 10) = result;
  return result;
}

void sub_1001492EC(double a1, float a2)
{
  *(v3 - 80) = a2;
  *(v2 + 4) = v4;
  *(v3 - 68) = 2048;
  *(v2 + 14) = a1;
}

void sub_100149310(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint8_t buf)
{

  _os_log_impl(a1, v13, OS_LOG_TYPE_FAULT, a4, &buf, 0x30u);
}

double sub_100149330()
{

  return sub_1000281DC();
}

BOOL sub_100149360()
{
  v2 = *(v0 + 1592);

  return os_signpost_enabled(v2);
}

void sub_100149388(int a1@<W8>, float a2@<S0>)
{
  *(v2 - 64) = a2;
  *(v2 - 60) = a1;
  *(v2 - 56) = 2049;
}

void sub_1001493BC(uint64_t *a1)
{
  sub_100147E00(__stack_chk_guard, v15, v16, *v17, v17[4]);
  if (qword_1025D48C0 != -1)
  {
    dispatch_once(&qword_1025D48C0, &stru_1024A4C18);
  }

  v2 = a1[9];
  v3 = a1[10];
  v4 = a1[12];
  if (*(a1 + 23) >= 0)
  {
    v5 = a1;
  }

  else
  {
    v5 = *a1;
  }

  v6 = *(a1 + 47);
  v9 = a1[3];
  v8 = a1 + 3;
  v7 = v9;
  if (v6 >= 0)
  {
    v10 = v8;
  }

  else
  {
    v10 = v7;
  }

  v18 = 136316675;
  v19 = "Fence";
  v20 = 1024;
  v21 = 1;
  v22 = 2053;
  v23 = v2;
  v24 = 2053;
  v25 = v3;
  v26 = 2048;
  v27 = v4;
  v28 = 2080;
  v29 = v5;
  v30 = 2080;
  v31 = v10;
  sub_100147CAC();
  v11 = _os_log_send_and_compose_impl();
  sub_100147DD8("LOCATION", v12, v13, v14, "BOOL CLFenceAuthorizationManager::addFence(const CLFenceManager_Type::Fence &)", "%s\n");
  if (v11 != &v18)
  {
    free(v11);
  }
}

void sub_100149534(uint64_t a1)
{
  sub_100147E00(__stack_chk_guard, v12, v13, *v14, v14[4]);
  if (qword_1025D4320 != -1)
  {
    dispatch_once(&qword_1025D4320, &stru_102499408);
  }

  v2 = *(a1 + 16);
  v3 = *(a1 + 4);
  v4 = *(a1 + 5);
  v5 = *(a1 + 6);
  v6 = *(a1 + 8);
  v7 = *(a1 + 10);
  v15 = 134350336;
  v16 = v2;
  v17 = 1026;
  v18 = v3;
  v19 = 1026;
  v20 = v4;
  v21 = 1026;
  v22 = v5;
  v23 = 1026;
  v24 = v6;
  v25 = 1026;
  v26 = v7;
  sub_100147CAC();
  v8 = _os_log_send_and_compose_impl();
  sub_100147DD8("Generic", v9, v10, v11, "void CLMotionLogger::onPencilDebug(const CLPencilDebug::Data *)", "%s\n");
  if (v8 != &v15)
  {
    free(v8);
  }
}

void sub_10014967C()
{
  sub_100147E1C(__stack_chk_guard, v2, v3, v4, *v5, v5[4]);
  if (qword_1025D4230 != -1)
  {
    dispatch_once(&qword_1025D4230, &stru_1024C9588);
  }

  sub_100147CF0();
  sub_100147CC4();
  v1 = _os_log_send_and_compose_impl();
  sub_100152C7C("Generic", 1, 0, 2, "void CLCaloriePalEstimator::querySources()_block_invoke", "%s\n", v1);
  if (v1 != v0)
  {
    free(v1);
  }
}

void sub_100149768(uint64_t a1@<X8>, float a2@<S0>)
{
  *(v6 - 96) = a2;
  *(v5 + 4) = a1;
  *(v6 - 84) = 2050;
  *(v5 + 14) = v2;
  *(v6 - 74) = 2050;
  v5[3] = v3;
  *(v6 - 64) = 2050;
  *(v5 + 34) = v4;
}

uint64_t sub_10014979C()
{

  return _os_log_send_and_compose_impl();
}

uint64_t sub_1001497C4()
{

  return _os_log_send_and_compose_impl();
}

void sub_1001497EC(int a1@<W8>, float a2@<S0>)
{
  *(v4 - 64) = a2;
  *(v3 + 4) = v2;
  *(v4 - 52) = 1024;
  *(v3 + 14) = a1;
}

void sub_100149810(uint64_t a1@<X8>, float a2@<S0>)
{
  *(v4 - 64) = a2;
  *(v3 + 4) = a1;
  *(v4 - 52) = 2050;
  *(v3 + 14) = v2;
}

void sub_100149834(float a1)
{
  *(v3 - 80) = a1;
  *(v2 + 4) = v1;
  *(v3 - 68) = 2048;
}

uint64_t sub_100149870@<X0>(uint64_t result@<X0>, int a2@<W8>, float a3@<S0>)
{
  *(v5 - 64) = a3;
  *(v4 + 4) = result;
  *(v5 - 52) = 1026;
  *(v4 + 14) = v3;
  *(v5 - 46) = 1026;
  *(v5 - 44) = a2;
  return result;
}

void sub_1001498B4(int a1@<W8>, float a2@<S0>)
{
  *(v4 - 64) = a2;
  *(v3 + 4) = v2;
  *(v4 - 52) = 1026;
  *(v3 + 14) = a1;
}

void sub_100149920(uint64_t a1@<X8>, float a2@<S0>)
{
  *(v4 - 64) = a2;
  *(a1 + 4) = v2;
  *(v4 - 52) = 1024;
  *(a1 + 14) = v3;
}

void sub_100149944(uint64_t a1@<X8>, float a2@<S0>)
{
  *(v3 - 80) = a2;
  *(a1 + 4) = v2;
  *(v3 - 68) = 2050;
}

void sub_100149958(int a1@<W8>, float a2@<S0>)
{
  *(v3 - 80) = a2;
  *(v2 + 4) = v4;
  *(v3 - 68) = 1024;
  *(v2 + 14) = a1;
}

void sub_100149994(float a1)
{
  *(v2 - 80) = a1;
  *(v1 + 4) = v4;
  *(v2 - 68) = 2048;
  *(v1 + 14) = v3;
}

void sub_1001499D4(uint64_t a1@<X8>, float a2@<S0>)
{
  *(v3 - 80) = a2;
  *(v2 + 4) = v4;
  *(v3 - 68) = 2050;
  *(v2 + 14) = a1;
}

void sub_1001499F8(int a1@<W8>, float a2@<S0>)
{
  *(v5 - 64) = a2;
  *(v5 - 60) = a1;
  *(v5 - 56) = 1024;
  *(v4 + 10) = v2;
  *(v5 - 50) = 1024;
  *(v5 - 48) = v3;
}

void sub_100149A24(int a1@<W8>, float a2@<S0>)
{
  *(v4 - 80) = a2;
  *(v3 + 4) = v5;
  *(v4 - 68) = 1024;
  *(v3 + 14) = a1;
  *(v4 - 62) = 1024;
  *(v4 - 60) = v2;
}

void sub_100149A50(uint64_t a1@<X8>, float a2@<S0>)
{
  *(v3 - 80) = a2;
  *(v2 + 4) = (a1 + 0x8000000000000000) & 0x7FFFFFFFFFFFFFFFLL;
  *(v3 - 68) = 2048;
}

void sub_100149A70(uint64_t a1@<X8>)
{
  *(a1 + 4) = v2;
  *(v3 - 52) = 2080;
  *(a1 + 14) = v1;
}

uint64_t sub_100149A90@<X0>(uint64_t result@<X0>, int a2@<W8>, float a3@<S0>)
{
  *(v4 - 64) = a3;
  *(v3 + 4) = result;
  *(v4 - 52) = 1026;
  *(v3 + 14) = a2;
  return result;
}

void sub_100149AB4(float a1)
{
  *(v4 - 64) = a1;
  *(v4 - 60) = v2;
  *(v4 - 56) = 1024;
  *(v3 + 10) = v1;
}

uint64_t sub_100149AD8()
{

  return _os_log_send_and_compose_impl();
}

uint64_t sub_100149AF8(uint64_t result, float a2)
{
  *(v3 - 80) = a2;
  *(v2 + 4) = result;
  *(v3 - 68) = 2048;
  *(v2 + 14) = v4;
  return result;
}

uint64_t sub_100149B1C()
{

  return _os_log_send_and_compose_impl();
}

void sub_100149B3C(float a1)
{
  *(v3 - 80) = a1;
  *(v2 + 4) = v1;
  *(v3 - 68) = 2048;
  *(v2 + 14) = v4;
}

void sub_100149B60(double a1, float a2)
{
  *(v4 - 64) = a2;
  *(v3 + 4) = v2;
  *(v4 - 52) = 2048;
  *(v3 + 14) = a1;
}

double sub_100149B84(float a1, float a2)
{
  result = a1;
  *(v3 - 96) = a2;
  *(v2 + 4) = v4;
  *(v3 - 84) = 2048;
  *(v2 + 14) = v5;
  *(v3 - 74) = 2048;
  *(v2 + 24) = result;
  return result;
}

void sub_100149BB4(float a1)
{
  *(v2 - 64) = a1;
  *(v2 - 60) = v1;
  *(v2 - 56) = 1026;
}

void sub_100149BC8(uint64_t a1@<X8>, float a2@<S0>)
{
  *(v4 - 64) = a2;
  *(v3 + 4) = a1;
  *(v4 - 52) = 2050;
  *(v3 + 14) = v2;
}

void sub_100149C48(int a1@<W8>)
{
  *(v2 + 4) = v1;
  *(v3 - 52) = 1026;
  *(v2 + 14) = a1;
}

uint64_t sub_100149C68(uint64_t result, float a2)
{
  v5 = v4 - 80;
  *(v4 - 80) = a2;
  *(v5 + 4) = v2;
  *(v4 - 68) = 1026;
  *(v5 + 14) = v3;
  *(v4 - 62) = 1026;
  *(v4 - 60) = result;
  return result;
}

void sub_100149C98(float a1, uint64_t a2, uint64_t a3)
{
  *a3 = a1;
  *(a3 + 4) = 0;
  *(a3 + 8) = 2082;
}

void sub_100149CAC(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>, float a4@<S2>)
{
  *(v5 - 80) = a4;
  *(v4 + 4) = a2;
  *(v5 - 68) = 2050;
  *(v4 + 14) = a1;
  *(v5 - 58) = 2048;
  *(v4 + 24) = a3;
}

void sub_100149CF8(uint64_t a1@<X8>, float a2@<S0>)
{
  *(v4 - 64) = a2;
  *(a1 + 4) = v2;
  *(v4 - 52) = 1026;
  *(a1 + 14) = v3;
}

void sub_100149D38(void *a1, int a2, int a3, int a4, const char *a5, const char *a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint8_t buf)
{

  _os_signpost_emit_with_name_impl(a1, v13, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, a5, a6, &buf, 0x2Cu);
}

double sub_100149D64(float a1, float a2)
{
  result = a1;
  *(v3 - 80) = a2;
  *(v2 + 4) = result;
  return result;
}

uint64_t sub_100149D80(uint64_t result, float a2)
{
  *(v4 - 80) = a2;
  *(v3 + 4) = v2;
  *(v4 - 68) = 2080;
  *(v3 + 14) = result;
  return result;
}

uint64_t sub_100149DA4(uint64_t result)
{
  *(v2 + 4) = v1;
  *(v3 - 52) = 1026;
  *(v2 + 14) = result;
  return result;
}

void sub_100149DC4(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

void sub_100149DE0(float a1)
{
  *(v4 - 64) = a1;
  *(v4 - 60) = v2;
  *(v4 - 56) = 2050;
  *(v3 + 10) = v1;
}

void sub_100149E04(int a1@<W8>)
{
  *(v3 - 60) = v1;
  *(v3 - 56) = 1026;
  *(v2 + 10) = a1;
}

void sub_100149E74(uint64_t a1@<X8>, float a2@<S0>)
{
  *(v3 - 64) = a2;
  *(a1 + 4) = v2;
  *(v3 - 52) = 1024;
}

void sub_100149E88(int a1@<W8>, float a2@<S0>)
{
  *(v3 - 64) = a2;
  *(v3 - 60) = a1;
  *(v3 - 56) = 1024;
  *(v2 + 10) = 50;
}

void sub_100149EF0(int a1@<W8>, float a2@<S0>)
{
  *(v8 - 80) = a2;
  *(v8 - 76) = a1;
  *(v8 - 72) = 1025;
  *(v7 + 10) = v2;
  *(v8 - 66) = 1025;
  *(v8 - 64) = v3;
  *(v8 - 60) = 1025;
  *(v7 + 22) = v4;
  *(v8 - 54) = 1025;
  *(v8 - 52) = v5;
  *(v8 - 48) = 1025;
  *(v7 + 34) = v6;
}

uint64_t sub_100149F48(uint64_t result, float a2)
{
  *(v4 - 80) = a2;
  *(v4 - 76) = v2;
  *(v4 - 72) = 2113;
  *(v3 + 10) = result;
  return result;
}

BOOL sub_100149F78()
{
  v1 = qword_1025D4638;

  return os_log_type_enabled(v1, OS_LOG_TYPE_FAULT);
}

uint64_t sub_100149FAC@<X0>(uint64_t result@<X0>, int a2@<W8>, float a3@<S0>)
{
  *(v12 - 176) = a3;
  *(v8 + 4) = v9;
  *(v12 - 164) = 2053;
  *(v8 + 14) = v10;
  *(v12 - 154) = 2050;
  *(v8 + 24) = v11;
  *(v12 - 144) = 2082;
  *(v8 + 34) = result;
  *(v12 - 134) = 1026;
  *(v12 - 132) = a2;
  *(v12 - 128) = 2050;
  *(v8 + 50) = v3;
  *(v12 - 118) = 2050;
  *(v8 + 60) = v4;
  *(v12 - 108) = 1026;
  *(v8 + 70) = v5;
  *(v12 - 102) = 2050;
  *(v8 + 76) = v6;
  *(v12 - 92) = 2049;
  *(v8 + 86) = v7;
  return result;
}

void sub_10014A020(uint64_t a1@<X8>, float a2@<S0>)
{
  *(v4 - 64) = a2;
  *(v3 + 4) = a1;
  *(v4 - 52) = 2048;
  *(v3 + 14) = v2;
}

void sub_10014A044(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint8_t buf)
{

  _os_log_impl(a1, v13, OS_LOG_TYPE_INFO, a4, &buf, 0x30u);
}

__n128 sub_10014A064@<Q0>(__n128 *a1@<X8>)
{
  __asm { FMOV            V0.2D, #1.0 }

  *a1 = result;
  a1[1].n128_u64[0] = 0x412E848000000000;
  return result;
}

void sub_10014A07C(float a1)
{
  *(v3 - 80) = a1;
  *(v2 + 4) = v4;
  *(v3 - 68) = 1026;
  *(v2 + 14) = v1;
}

void sub_10014A0A0(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  *(a1 + 10) = v3;
  *(a1 + 18) = v2;
  *(a1 + 20) = a2;
  *(a1 + 28) = v2;
}

uint64_t sub_10014A0B4(uint64_t result, float a2)
{
  *(v5 - 96) = a2;
  *(v4 + 4) = v2;
  *(v5 - 84) = 2114;
  *(v4 + 14) = v3;
  *(v5 - 74) = 2113;
  v4[3] = result;
  return result;
}

void sub_10014A0E4(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint8_t buf)
{

  _os_log_impl(a1, v11, OS_LOG_TYPE_FAULT, a4, &buf, 0xCu);
}

uint64_t sub_10014A104(uint64_t result, float a2)
{
  v4 = v3 - 64;
  *(v3 - 64) = a2;
  *(v4 + 4) = v2;
  *(v3 - 52) = 2048;
  *(v4 + 14) = result;
  return result;
}

void sub_10014A12C(int a1@<W8>, float a2@<S0>)
{
  *(v4 - 64) = a2;
  *(v4 - 60) = a1;
  *(v4 - 56) = 1024;
  *(v3 + 10) = v2;
}

void sub_10014A150(uint64_t a1@<X8>, float a2@<S0>)
{
  *(v4 - 64) = a2;
  *(v3 + 4) = a1;
  *(v4 - 52) = 2080;
  *(v3 + 14) = v2 + 377;
}

void sub_10014A178(float a1)
{
  *(v2 - 96) = a1;
  *(v1 + 4) = v3;
  *(v2 - 84) = 2048;
  *(v1 + 14) = v4;
  *(v2 - 74) = 2048;
  v1[3] = v3;
}

void sub_10014A1BC(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint8_t buf)
{

  _os_log_impl(a1, v13, OS_LOG_TYPE_INFO, a4, &buf, 0x2Cu);
}

void sub_10014A1DC(int a1@<W8>, float a2@<S0>)
{
  *(v4 - 64) = a2;
  *(v4 - 60) = a1;
  *(v4 - 56) = 2096;
  *(v3 + 10) = v2;
}

void sub_10014A200(uint64_t a1@<X8>, float a2@<S0>)
{
  *(v4 - 64) = a2;
  *(v3 + 4) = a1;
  *(v4 - 52) = 2049;
  *(v3 + 14) = v2;
}

uint64_t sub_10014A224()
{

  return _os_log_send_and_compose_impl();
}

void sub_10014A24C(int a1@<W8>, float a2@<S0>)
{
  *(v6 - 80) = a2;
  *(v6 - 76) = a1;
  *(v6 - 72) = 1024;
  *(v5 + 10) = v2;
  *(v6 - 66) = 1024;
  *(v6 - 64) = v3;
  *(v6 - 60) = 1024;
  *(v5 + 22) = v4;
}

uint64_t sub_10014A2DC@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>, float a3@<S0>)
{
  *(v6 - 96) = a3;
  *(v6 - 92) = v5;
  *(v6 - 88) = 1024;
  *(a2 + 10) = v4;
  *(v6 - 82) = 1024;
  *(v6 - 80) = (result >> 15) & 0x3FF;
  *(v6 - 76) = 1024;
  *(a2 + 22) = v3;
  *(v6 - 70) = 1024;
  *(v6 - 68) = v3 >> 26;
  *(v6 - 64) = 1024;
  *(a2 + 34) = (v3 >> 15) & 0x3FF;
  return result;
}

void sub_10014A340(int a1@<W8>)
{
  *(v3 - 60) = v1;
  *(v3 - 56) = 1024;
  *(v2 + 10) = a1;
}

void sub_10014A360()
{
  sub_100147E00(__stack_chk_guard, v7, v8, *v9, v9[4]);
  if (qword_1025D4320 != -1)
  {
    dispatch_once(&qword_1025D4320, &stru_102499408);
  }

  sub_100147D70();
  sub_100147CAC();
  v1 = _os_log_send_and_compose_impl();
  sub_100147DF4();
  sub_100152C7C(v2, v3, v4, 0, v5, v6, v1);
  if (v1 != v0)
  {
    free(v1);
  }
}

void sub_10014A460(int *a1)
{
  sub_100147E00(__stack_chk_guard, v8, v10, *v11, v11[4]);
  if (qword_1025D4200 != -1)
  {
    dispatch_once(&qword_1025D4200, &stru_1024992E8);
  }

  v12 = 138543362;
  v13 = a1;
  sub_100147D60();
  v9 = v2;
  sub_100147CAC();
  _os_log_send_and_compose_impl();
  sub_100147E38();
  sub_100147DF4();
  sub_100152C7C(v3, v4, v5, 0, v6, v7, v9);
  if (a1 != &v12)
  {
    free(a1);
  }
}

void sub_10014A55C()
{
  sub_100148B40();
  sub_100147E00(__stack_chk_guard, v5, v6, *v7, v7[4]);
  if (qword_1025D41A0 != -1)
  {
    dispatch_once(&qword_1025D41A0, &stru_10249C0E8);
  }

  sub_100148180(0x8000000101CEF894 & 0x7FFFFFFFFFFFFFFFLL);
  sub_100147CAC();
  _os_log_send_and_compose_impl();
  sub_100147E38();
  sub_100147EC4("Generic", v2, v3, v4, "const Object_T *safeDecoder(CLCppContainer *, Callback) [Object_T = CLOnBodyNotifier_Type::NotificationData, Callback = (lambda at /Library/Caches/com.apple.xbs/Sources/CoreLocation/Shared/Intersilo/CLCppContainer.h:241:46)]", "%s\n");
  if (v0 != v1)
  {
    free(v0);
  }
}

void sub_10014A684()
{
  sub_100147E1C(__stack_chk_guard, v5, v6, v7, *v8, v8[4]);
  if (qword_1025D4660 != -1)
  {
    dispatch_once(&qword_1025D4660, &stru_10249B3A0);
  }

  sub_100147CF0();
  sub_100147CC4();
  _os_log_send_and_compose_impl();
  sub_100147E38();
  sub_100147DD8("Generic", v2, v3, v4, "[CLUDPListenerHelper stopService]", "%s\n");
  if (v0 != v1)
  {
    free(v0);
  }
}

BOOL sub_10014A760()
{
  v2 = *(v0 + 1752);

  return os_log_type_enabled(v2, OS_LOG_TYPE_INFO);
}

uint64_t sub_10014A78C()
{

  return _os_log_send_and_compose_impl();
}

uint64_t sub_10014A7A4()
{

  return _os_log_send_and_compose_impl();
}

void sub_10014A7BC(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_impl(a1, v9, OS_LOG_TYPE_FAULT, a4, &a9, 0x26u);
}

uint64_t sub_10014A7DC()
{

  return sub_10000A100(121, 0);
}

uint64_t sub_10014A7F4(uint64_t result, float a2)
{
  *(v4 - 80) = a2;
  *(v4 - 76) = v2;
  *(v4 - 72) = 1024;
  *(v3 + 10) = result;
  return result;
}

BOOL sub_10014A848()
{
  v2 = *(v0 + 2216);

  return os_log_type_enabled(v2, OS_LOG_TYPE_INFO);
}

void sub_10014A864(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_impl(a1, v5, OS_LOG_TYPE_FAULT, a4, a5, 0x26u);
}

void sub_10014A88C(double a1, float a2)
{
  *(v3 - 80) = a2;
  *(v2 + 4) = v4;
  *(v3 - 68) = 2050;
  *(v2 + 14) = a1;
}

void sub_10014A8B0(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_impl(a1, v5, OS_LOG_TYPE_FAULT, a4, a5, 0x2Cu);
}

uint64_t sub_10014A8E4()
{

  return _os_log_send_and_compose_impl();
}

BOOL sub_10014A8FC()
{
  v2 = *(v0 + 728);

  return os_log_type_enabled(v2, OS_LOG_TYPE_INFO);
}

uint64_t sub_10014A918()
{

  return _os_log_send_and_compose_impl();
}

BOOL sub_10014A944()
{
  v2 = *(v0 + 2168);

  return os_log_type_enabled(v2, OS_LOG_TYPE_INFO);
}

void sub_10014A960(uint64_t a1@<X8>, float a2@<S0>)
{
  *(v3 - 96) = a2;
  *(v2 + 4) = a1;
  *(v3 - 84) = 2048;
}

BOOL sub_10014A974()
{
  v2 = *(v0 + 1640);

  return os_signpost_enabled(v2);
}

BOOL sub_10014A98C()
{
  v1 = qword_1025D4688;

  return os_log_type_enabled(v1, OS_LOG_TYPE_FAULT);
}

void sub_10014A9AC(double a1, float a2)
{
  v5 = v4 - 80;
  *(v4 - 80) = a2;
  *(v5 + 4) = v3;
  *(v4 - 68) = 2050;
  *(v5 + 14) = a1;
  *(v4 - 58) = 2117;
  *(v5 + 24) = v2;
}

void sub_10014A9E0(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint8_t buf)
{

  _os_log_impl(a1, v13, OS_LOG_TYPE_INFO, a4, &buf, 0x30u);
}

uint64_t sub_10014AA0C(uint64_t result)
{
  *(v4 + 4) = v3;
  *(v5 - 100) = 1026;
  *(v4 + 14) = v1;
  *(v5 - 94) = 2114;
  *(v4 + 20) = v2;
  *(v5 - 84) = 2114;
  *(v4 + 30) = result;
  return result;
}

void sub_10014AA58()
{
  sub_100147E1C(__stack_chk_guard, v2, v3, v4, *v5, v5[4]);
  if (qword_1025D4230 != -1)
  {
    dispatch_once(&qword_1025D4230, &stru_1024C9588);
  }

  sub_100147CF0();
  sub_100147CC4();
  v1 = _os_log_send_and_compose_impl();
  sub_100152C7C("Generic", 1, 0, 2, "void CLCaloriePalEstimator::setupPalUpdateTimer(BOOL)", "%s\n", v1);
  if (v1 != v0)
  {
    free(v1);
  }
}

void sub_10014AB48()
{
  sub_100147E00(__stack_chk_guard, v7, v8, *v9, v9[4]);
  if (qword_1025D4200 != -1)
  {
    dispatch_once(&qword_1025D4200, &stru_1024992E8);
  }

  sub_100147D70();
  sub_100147CAC();
  v1 = _os_log_send_and_compose_impl();
  sub_100147DF4();
  sub_100152C7C(v2, v3, v4, 0, v5, v6, v1);
  if (v1 != v0)
  {
    free(v1);
  }
}

uint64_t sub_10014AC74()
{

  return _os_log_send_and_compose_impl();
}

void sub_10014ACCC(uint64_t a1@<X8>, float a2@<S0>)
{
  *(v3 - 64) = a2;
  *(v2 + 4) = a1;
  *(v3 - 52) = 2048;
  *(v2 + 14) = 0x4024000000000000;
}

uint64_t sub_10014ACF4()
{

  return _os_log_send_and_compose_impl();
}

uint64_t sub_10014AD3C(uint64_t *a1)
{
  result = *a1;
  *a1 = 0;
  return result;
}

void sub_10014AD58(float a1)
{
  *(v3 - 80) = a1;
  *(v3 - 76) = v1;
  *(v3 - 72) = 2048;
  *(v2 + 10) = v4;
}

uint64_t sub_10014ADB4()
{

  return _os_log_send_and_compose_impl();
}

uint64_t sub_10014AE2C()
{

  return _os_log_send_and_compose_impl();
}

void sub_10014AEC8(uint64_t a1@<X8>, float a2@<S0>)
{
  *(v3 - 80) = a2;
  *(v2 + 4) = v4;
  *(v3 - 68) = 2048;
  *(v2 + 14) = a1;
}

void sub_10014AFA8(double a1, float a2)
{
  *(v3 - 80) = a2;
  *(v2 + 4) = a1;
  *(v3 - 68) = 2048;
  *(v2 + 14) = v4;
}

void sub_10014AFD0(float a1)
{
  *(v4 - 64) = a1;
  *(v4 - 60) = v2;
  *(v4 - 56) = 2080;
  *(v3 + 10) = v1;
}

uint64_t sub_10014AFF4()
{

  return _os_log_send_and_compose_impl();
}

uint64_t sub_10014B0A4@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, __int16 a3@<W8>)
{
  *(a2 + 10) = v3;
  *(a2 + 18) = a3;
  *(a2 + 20) = result;
  *(a2 + 28) = a3;
  return result;
}

uint64_t sub_10014B0B8()
{

  return _os_log_send_and_compose_impl();
}

uint64_t sub_10014B0E4(uint64_t result, uint64_t a2, uint64_t a3)
{
  *(a3 + 10) = v4;
  *(a3 + 18) = 2114;
  *(a3 + 20) = result;
  *(a3 + 28) = 2114;
  *(a3 + 30) = a2;
  *(a3 + 38) = v3;
  return result;
}

void sub_10014B104(double a1, float a2)
{
  *(v4 - 80) = a2;
  *(v4 - 76) = v3;
  *(v4 - 72) = 2048;
  *(v2 + 10) = a1;
}

void sub_10014B128(uint64_t a1@<X8>)
{
  *(v2 + 4) = v1;
  *(v3 - 52) = 2048;
  *(v2 + 14) = a1;
}

void sub_10014B148(uint64_t a1@<X8>)
{
  *(v1 + 4) = a1;
  *(v2 - 68) = 2048;
  *(v1 + 14) = v3;
}

void sub_10014B190(uint64_t a1@<X8>, double a2@<D0>, float a3@<S1>)
{
  *(v4 - 80) = a3;
  *(v3 + 4) = a2;
  *(v4 - 68) = 2048;
  *(v3 + 14) = a1;
}

void sub_10014B1B4(float a1)
{
  *(v4 - 64) = a1;
  *(v4 - 60) = v2;
  *(v4 - 56) = 1025;
  *(v3 + 10) = v1;
}

uint64_t sub_10014B22C()
{

  return _os_log_send_and_compose_impl();
}

void sub_10014B288(int a1@<W8>, float a2@<S0>)
{
  *(v7 - 80) = a2;
  *(v7 - 76) = a1;
  *(v7 - 72) = 1024;
  *(v6 + 10) = v2;
  *(v7 - 66) = 1024;
  *(v7 - 64) = v3;
  *(v7 - 60) = 1024;
  *(v6 + 22) = v4;
  *(v7 - 54) = 2048;
  *(v6 + 28) = v5;
}

void sub_10014B2C8(float a1)
{
  *(v3 - 80) = a1;
  *(v2 + 4) = v1;
  *(v3 - 68) = 2048;
  *(v2 + 14) = 15;
}

void sub_10014B2F0(float a1)
{
  *(v4 - 80) = a1;
  *(v3 + 4) = v2;
  *(v4 - 68) = 2048;
  *(v3 + 14) = v1;
  *(v4 - 58) = 2048;
  v3[3] = v1;
}

uint64_t sub_10014B368(uint64_t result, float a2)
{
  *(v4 - 80) = a2;
  *(v4 - 76) = v3;
  *(v4 - 72) = 1024;
  *(v2 + 10) = (result >> 15) & 0x3FF;
  return result;
}

void sub_10014B3A8(uint64_t a1, uint64_t a2, ...)
{
  va_start(va, a2);

  bzero(va, 0x65CuLL);
}

BOOL sub_10014B3C4()
{
  v2 = *(v0 + 2216);

  return os_signpost_enabled(v2);
}

BOOL sub_10014B3DC()
{

  return os_log_type_enabled(v0, OS_LOG_TYPE_INFO);
}

BOOL sub_10014B3F4()
{

  return os_log_type_enabled(v0, OS_LOG_TYPE_FAULT);
}

void sub_10014B40C(double a1, float a2)
{
  *(v4 - 144) = a2;
  *(v3 + 4) = v2;
  *(v4 - 132) = 2050;
  *(v3 + 14) = v5;
  *(v4 - 122) = 2048;
  *(v3 + 24) = v6;
  *(v4 - 112) = 2050;
  *(v3 + 34) = v7;
  *(v4 - 102) = 2048;
  *(v3 + 44) = a1;
}

uint64_t sub_10014B44C()
{

  return _os_log_send_and_compose_impl();
}

BOOL sub_10014B464()
{
  v2 = *(v0 + 1624);

  return os_signpost_enabled(v2);
}

void sub_10014B47C(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, int a4, char a5)
{
  *(v5 - 72) = a1;

  bzero(&a5, 0x65CuLL);
}

BOOL sub_10014B498()
{
  v2 = *(v0 + 1192);

  return os_log_type_enabled(v2, OS_LOG_TYPE_INFO);
}

void sub_10014B508(uint64_t a1@<X8>, float a2@<S0>)
{
  *(v4 - 64) = a2;
  *(v3 + 4) = a1;
  *(v4 - 52) = 1024;
  *(v3 + 14) = v2;
}

void sub_10014B534(int a1@<W8>, float a2@<S0>)
{
  *(v2 - 80) = a2;
  *(v2 - 76) = a1;
  *(v2 - 72) = 1024;
}

uint64_t sub_10014B558@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, __int16 a4@<W8>)
{
  *(v5 - 74) = a4;
  v4[13] = result;
  *(v5 - 64) = a4;
  *(v4 + 114) = a2;
  *(v5 - 54) = a4;
  *(v4 + 124) = a3;
  return result;
}

uint64_t sub_10014B6E4(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
{
  while (1)
  {
    while (1)
    {
      v5 = *(this + 1);
      if (v5 >= *(this + 2) || (TagFallback = *v5, (TagFallback & 0x80000000) != 0))
      {
        TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(this);
        *(this + 8) = TagFallback;
        if (!TagFallback)
        {
          return 1;
        }
      }

      else
      {
        *(this + 8) = TagFallback;
        *(this + 1) = v5 + 1;
        if (!TagFallback)
        {
          return 1;
        }
      }

      v7 = TagFallback >> 3;
      v8 = TagFallback & 7;
      if (TagFallback >> 3 == 3)
      {
        break;
      }

      if (v7 == 2)
      {
        if (v8 != 2)
        {
          goto LABEL_16;
        }

        v13 = *(a1 + 32);
LABEL_24:
        *(a1 + 32) = v13 | 2;
        v15 = *(a1 + 8);
        if (!v15)
        {
          operator new();
        }

        v33 = 0;
        v16 = *(this + 1);
        if (v16 >= *(this + 2) || *v16 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v33))
          {
            return 0;
          }
        }

        else
        {
          v33 = *v16;
          *(this + 1) = v16 + 1;
        }

        v17 = *(this + 14);
        v18 = *(this + 15);
        *(this + 14) = v17 + 1;
        if (v17 >= v18)
        {
          return 0;
        }

        v19 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v33);
        if (!sub_10014BA50(v15, this, v20) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v19);
        v21 = *(this + 14);
        v22 = __OFSUB__(v21, 1);
        v23 = v21 - 1;
        if (v23 < 0 == v22)
        {
          *(this + 14) = v23;
        }

        v24 = *(this + 1);
        if (v24 < *(this + 2) && *v24 == 26)
        {
          *(this + 1) = v24 + 1;
LABEL_38:
          *(a1 + 32) |= 4u;
          v25 = *(a1 + 16);
          if (!v25)
          {
            operator new();
          }

          v34 = 0;
          v26 = *(this + 1);
          if (v26 >= *(this + 2) || *v26 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v34))
            {
              return 0;
            }
          }

          else
          {
            v34 = *v26;
            *(this + 1) = v26 + 1;
          }

          v27 = *(this + 14);
          v28 = *(this + 15);
          *(this + 14) = v27 + 1;
          if (v27 >= v28)
          {
            return 0;
          }

          v29 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v34);
          if (!sub_10014CA18(v25, this, v30) || *(this + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v29);
          v31 = *(this + 14);
          v22 = __OFSUB__(v31, 1);
          v32 = v31 - 1;
          if (v32 < 0 == v22)
          {
            *(this + 14) = v32;
          }

          if (*(this + 1) == *(this + 2) && (*(this + 11) || *(this + 6) == *(this + 10)))
          {
            *(this + 8) = 0;
            result = 1;
            *(this + 36) = 1;
            return result;
          }
        }
      }

      else
      {
        if (v7 != 1 || (TagFallback & 7) != 0)
        {
          goto LABEL_16;
        }

        v10 = *(this + 1);
        v9 = *(this + 2);
        if (v10 >= v9 || (v11 = *v10, v11 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 24));
          if (!result)
          {
            return result;
          }

          v12 = *(this + 1);
          v9 = *(this + 2);
        }

        else
        {
          *(a1 + 24) = v11;
          v12 = v10 + 1;
          *(this + 1) = v12;
        }

        v13 = *(a1 + 32) | 1;
        *(a1 + 32) = v13;
        if (v12 < v9 && *v12 == 18)
        {
          *(this + 1) = v12 + 1;
          goto LABEL_24;
        }
      }
    }

    if (v8 == 2)
    {
      goto LABEL_38;
    }

LABEL_16:
    if (v8 == 4)
    {
      return 1;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(this, TagFallback, a3) & 1) == 0)
    {
      return 0;
    }
  }
}

uint64_t sub_10014BA50(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
{
  while (1)
  {
    do
    {
      while (1)
      {
        while (1)
        {
          v5 = *(this + 1);
          if (v5 >= *(this + 2) || (TagFallback = *v5, (TagFallback & 0x80000000) != 0))
          {
            TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(this);
            *(this + 8) = TagFallback;
            if (!TagFallback)
            {
              return 1;
            }
          }

          else
          {
            *(this + 8) = TagFallback;
            *(this + 1) = v5 + 1;
            if (!TagFallback)
            {
              return 1;
            }
          }

          v7 = TagFallback >> 3;
          v8 = TagFallback & 7;
          if (TagFallback >> 3 != 3)
          {
            break;
          }

          if (v8 == 2)
          {
            goto LABEL_34;
          }

LABEL_16:
          if (v8 == 4)
          {
            return 1;
          }

          if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(this, TagFallback, a3) & 1) == 0)
          {
            return 0;
          }
        }

        if (v7 == 2)
        {
          break;
        }

        if (v7 != 1 || (TagFallback & 7) != 0)
        {
          goto LABEL_16;
        }

        v10 = *(this + 1);
        v9 = *(this + 2);
        if (v10 >= v9 || (v11 = *v10, v11 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 8));
          if (!result)
          {
            return result;
          }

          v12 = *(this + 1);
          v9 = *(this + 2);
        }

        else
        {
          *(a1 + 8) = v11;
          v12 = v10 + 1;
          *(this + 1) = v12;
        }

        *(a1 + 28) |= 1u;
        if (v12 < v9 && *v12 == 16)
        {
          v13 = v12 + 1;
          *(this + 1) = v13;
          goto LABEL_24;
        }
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_16;
      }

      v13 = *(this + 1);
      v9 = *(this + 2);
LABEL_24:
      v26 = 0;
      if (v13 >= v9 || (v15 = *v13, (v15 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v26);
        if (!result)
        {
          return result;
        }

        v15 = v26;
      }

      else
      {
        *(this + 1) = v13 + 1;
      }

      if (v15 <= 4)
      {
        *(a1 + 28) |= 2u;
        *(a1 + 12) = v15;
      }

      v16 = *(this + 1);
    }

    while (v16 >= *(this + 2) || *v16 != 26);
    *(this + 1) = v16 + 1;
LABEL_34:
    *(a1 + 28) |= 4u;
    v17 = *(a1 + 16);
    if (!v17)
    {
      operator new();
    }

    v27 = 0;
    v18 = *(this + 1);
    if (v18 >= *(this + 2) || *v18 < 0)
    {
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v27))
      {
        return 0;
      }
    }

    else
    {
      v27 = *v18;
      *(this + 1) = v18 + 1;
    }

    v19 = *(this + 14);
    v20 = *(this + 15);
    *(this + 14) = v19 + 1;
    if (v19 >= v20)
    {
      return 0;
    }

    v21 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v27);
    if (!sub_100D152C0(v17, this, v22) || *(this + 36) != 1)
    {
      return 0;
    }

    wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v21);
    v23 = *(this + 14);
    v24 = __OFSUB__(v23, 1);
    v25 = v23 - 1;
    if (v25 < 0 == v24)
    {
      *(this + 14) = v25;
    }

    if (*(this + 1) == *(this + 2) && (*(this + 11) || *(this + 6) == *(this + 10)))
    {
      *(this + 8) = 0;
      result = 1;
      *(this + 36) = 1;
      return result;
    }
  }
}

uint64_t sub_10014BD14(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
{
  do
  {
    while (1)
    {
      v5 = *(this + 1);
      if (v5 >= *(this + 2) || (TagFallback = *v5, (TagFallback & 0x80000000) != 0))
      {
        TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(this);
        *(this + 8) = TagFallback;
        if (!TagFallback)
        {
          return 1;
        }
      }

      else
      {
        *(this + 8) = TagFallback;
        *(this + 1) = v5 + 1;
        if (!TagFallback)
        {
          return 1;
        }
      }

      v7 = TagFallback & 7;
      if (TagFallback >> 3 == 2)
      {
        break;
      }

      if (TagFallback >> 3 != 1 || (TagFallback & 7) != 0)
      {
        goto LABEL_13;
      }

      v9 = *(this + 1);
      v8 = *(this + 2);
      if (v9 >= v8 || (v10 = *v9, v10 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this, (a1 + 8));
        if (!result)
        {
          return result;
        }

        v11 = *(this + 1);
        v8 = *(this + 2);
      }

      else
      {
        *(a1 + 8) = v10;
        v11 = v9 + 1;
        *(this + 1) = v11;
      }

      *(a1 + 28) |= 1u;
      if (v11 < v8 && *v11 == 17)
      {
        *(this + 1) = v11 + 1;
LABEL_21:
        v13 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v13) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 16) = v13;
        *(a1 + 28) |= 2u;
        if (*(this + 1) == *(this + 2) && (*(this + 11) || *(this + 6) == *(this + 10)))
        {
          *(this + 8) = 0;
          result = 1;
          *(this + 36) = 1;
          return result;
        }
      }
    }

    if (v7 == 1)
    {
      goto LABEL_21;
    }

LABEL_13:
    if (v7 == 4)
    {
      return 1;
    }
  }

  while ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(this, TagFallback, a3) & 1) != 0);
  return 0;
}

uint64_t sub_10014BE80(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
{
  do
  {
    while (1)
    {
      v5 = *(this + 1);
      if (v5 >= *(this + 2) || (TagFallback = *v5, (TagFallback & 0x80000000) != 0))
      {
        TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(this);
        *(this + 8) = TagFallback;
        if (!TagFallback)
        {
          return 1;
        }
      }

      else
      {
        *(this + 8) = TagFallback;
        *(this + 1) = v5 + 1;
        if (!TagFallback)
        {
          return 1;
        }
      }

      v7 = TagFallback >> 3;
      v8 = TagFallback & 7;
      if (TagFallback >> 3 == 3)
      {
        if (v8 == 1)
        {
          goto LABEL_28;
        }

        goto LABEL_16;
      }

      if (v7 == 2)
      {
        break;
      }

      if (v7 != 1 || (TagFallback & 7) != 0)
      {
        goto LABEL_16;
      }

      v10 = *(this + 1);
      v9 = *(this + 2);
      if (v10 >= v9 || (v11 = *v10, v11 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this, (a1 + 8));
        if (!result)
        {
          return result;
        }

        v12 = *(this + 1);
        v9 = *(this + 2);
      }

      else
      {
        *(a1 + 8) = v11;
        v12 = v10 + 1;
        *(this + 1) = v12;
      }

      *(a1 + 36) |= 1u;
      if (v12 < v9 && *v12 == 17)
      {
        *(this + 1) = v12 + 1;
LABEL_24:
        v15 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v15) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 16) = v15;
        *(a1 + 36) |= 2u;
        v14 = *(this + 1);
        if (v14 < *(this + 2) && *v14 == 25)
        {
          *(this + 1) = v14 + 1;
LABEL_28:
          v15 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v15) & 1) == 0)
          {
            return 0;
          }

          *(a1 + 24) = v15;
          *(a1 + 36) |= 4u;
          if (*(this + 1) == *(this + 2) && (*(this + 11) || *(this + 6) == *(this + 10)))
          {
            *(this + 8) = 0;
            result = 1;
            *(this + 36) = 1;
            return result;
          }
        }
      }
    }

    if (v8 == 1)
    {
      goto LABEL_24;
    }

LABEL_16:
    if (v8 == 4)
    {
      return 1;
    }
  }

  while ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(this, TagFallback, a3) & 1) != 0);
  return 0;
}

uint64_t sub_10014C048(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
{
  while (1)
  {
    while (1)
    {
      while (1)
      {
        while (1)
        {
          v5 = *(this + 1);
          if (v5 >= *(this + 2) || (TagFallback = *v5, (TagFallback & 0x80000000) != 0))
          {
            TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(this);
            *(this + 8) = TagFallback;
            if (!TagFallback)
            {
              return 1;
            }
          }

          else
          {
            *(this + 8) = TagFallback;
            *(this + 1) = v5 + 1;
            if (!TagFallback)
            {
              return 1;
            }
          }

          v7 = TagFallback >> 3;
          v8 = TagFallback & 7;
          if (TagFallback >> 3 > 2)
          {
            break;
          }

          if (v7 == 1)
          {
            if ((TagFallback & 7) != 0)
            {
              goto LABEL_20;
            }

            v11 = *(this + 1);
            v10 = *(this + 2);
            if (v11 >= v10 || (v12 = *v11, v12 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 32));
              if (!result)
              {
                return result;
              }

              v13 = *(this + 1);
              v10 = *(this + 2);
            }

            else
            {
              *(a1 + 32) = v12;
              v13 = v11 + 1;
              *(this + 1) = v13;
            }

            v9 = *(a1 + 40) | 1;
            *(a1 + 40) = v9;
            if (v13 < v10 && *v13 == 18)
            {
              *(this + 1) = v13 + 1;
              goto LABEL_28;
            }
          }

          else
          {
            if (v7 != 2 || v8 != 2)
            {
              goto LABEL_20;
            }

            v9 = *(a1 + 40);
LABEL_28:
            *(a1 + 40) = v9 | 2;
            v15 = *(a1 + 8);
            if (!v15)
            {
              operator new();
            }

            v42 = 0;
            v16 = *(this + 1);
            if (v16 >= *(this + 2) || *v16 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v42))
              {
                return 0;
              }
            }

            else
            {
              v42 = *v16;
              *(this + 1) = v16 + 1;
            }

            v17 = *(this + 14);
            v18 = *(this + 15);
            *(this + 14) = v17 + 1;
            if (v17 >= v18)
            {
              return 0;
            }

            v19 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v42);
            if (!sub_10014BA50(v15, this, v20) || *(this + 36) != 1)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v19);
            v21 = *(this + 14);
            v22 = __OFSUB__(v21, 1);
            v23 = v21 - 1;
            if (v23 < 0 == v22)
            {
              *(this + 14) = v23;
            }

            v24 = *(this + 1);
            if (v24 < *(this + 2) && *v24 == 26)
            {
              *(this + 1) = v24 + 1;
              goto LABEL_42;
            }
          }
        }

        if (v7 != 3)
        {
          break;
        }

        if (v8 != 2)
        {
          goto LABEL_20;
        }

LABEL_42:
        *(a1 + 40) |= 4u;
        v25 = *(a1 + 16);
        if (!v25)
        {
          operator new();
        }

        v43 = 0;
        v26 = *(this + 1);
        if (v26 >= *(this + 2) || *v26 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v43))
          {
            return 0;
          }
        }

        else
        {
          v43 = *v26;
          *(this + 1) = v26 + 1;
        }

        v27 = *(this + 14);
        v28 = *(this + 15);
        *(this + 14) = v27 + 1;
        if (v27 >= v28)
        {
          return 0;
        }

        v29 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v43);
        if (!sub_10014BE80(v25, this, v30) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v29);
        v31 = *(this + 14);
        v22 = __OFSUB__(v31, 1);
        v32 = v31 - 1;
        if (v32 < 0 == v22)
        {
          *(this + 14) = v32;
        }

        v33 = *(this + 1);
        if (v33 < *(this + 2) && *v33 == 34)
        {
          *(this + 1) = v33 + 1;
          goto LABEL_56;
        }
      }

      if (v7 != 4 || v8 != 2)
      {
        break;
      }

LABEL_56:
      *(a1 + 40) |= 8u;
      v34 = *(a1 + 24);
      if (!v34)
      {
        operator new();
      }

      v44 = 0;
      v35 = *(this + 1);
      if (v35 >= *(this + 2) || *v35 < 0)
      {
        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v44))
        {
          return 0;
        }
      }

      else
      {
        v44 = *v35;
        *(this + 1) = v35 + 1;
      }

      v36 = *(this + 14);
      v37 = *(this + 15);
      *(this + 14) = v36 + 1;
      if (v36 >= v37)
      {
        return 0;
      }

      v38 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v44);
      if (!sub_10014BE80(v34, this, v39) || *(this + 36) != 1)
      {
        return 0;
      }

      wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v38);
      v40 = *(this + 14);
      v22 = __OFSUB__(v40, 1);
      v41 = v40 - 1;
      if (v41 < 0 == v22)
      {
        *(this + 14) = v41;
      }

      if (*(this + 1) == *(this + 2) && (*(this + 11) || *(this + 6) == *(this + 10)))
      {
        *(this + 8) = 0;
        result = 1;
        *(this + 36) = 1;
        return result;
      }
    }

LABEL_20:
    if (v8 == 4)
    {
      return 1;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(this, TagFallback, a3) & 1) == 0)
    {
      return 0;
    }
  }
}

uint64_t sub_10014C4D0(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
{
  do
  {
    while (1)
    {
      while (1)
      {
        v5 = *(this + 1);
        if (v5 >= *(this + 2) || (TagFallback = *v5, (TagFallback & 0x80000000) != 0))
        {
          TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(this);
          *(this + 8) = TagFallback;
          if (!TagFallback)
          {
            return 1;
          }
        }

        else
        {
          *(this + 8) = TagFallback;
          *(this + 1) = v5 + 1;
          if (!TagFallback)
          {
            return 1;
          }
        }

        v7 = TagFallback >> 3;
        v8 = TagFallback & 7;
        if (TagFallback >> 3 > 4)
        {
          break;
        }

        if (TagFallback >> 3 > 2)
        {
          if (v7 != 3)
          {
            if (v7 != 4 || v8 != 5)
            {
              goto LABEL_37;
            }

            goto LABEL_53;
          }

          if (v8 != 5)
          {
            goto LABEL_37;
          }

LABEL_49:
          v21 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v21) & 1) == 0)
          {
            return 0;
          }

          *(a1 + 20) = v21;
          *(a1 + 52) |= 4u;
          v15 = *(this + 1);
          if (v15 < *(this + 2) && *v15 == 37)
          {
            *(this + 1) = v15 + 1;
LABEL_53:
            v21 = 0;
            if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v21) & 1) == 0)
            {
              return 0;
            }

            *(a1 + 24) = v21;
            *(a1 + 52) |= 8u;
            v16 = *(this + 1);
            if (v16 < *(this + 2) && *v16 == 45)
            {
              *(this + 1) = v16 + 1;
LABEL_57:
              v21 = 0;
              if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v21) & 1) == 0)
              {
                return 0;
              }

              *(a1 + 28) = v21;
              *(a1 + 52) |= 0x10u;
              v17 = *(this + 1);
              if (v17 < *(this + 2) && *v17 == 53)
              {
                *(this + 1) = v17 + 1;
LABEL_61:
                v21 = 0;
                if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v21) & 1) == 0)
                {
                  return 0;
                }

                *(a1 + 32) = v21;
                *(a1 + 52) |= 0x20u;
                v18 = *(this + 1);
                if (v18 < *(this + 2) && *v18 == 61)
                {
                  *(this + 1) = v18 + 1;
LABEL_65:
                  v21 = 0;
                  if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v21) & 1) == 0)
                  {
                    return 0;
                  }

                  *(a1 + 36) = v21;
                  *(a1 + 52) |= 0x40u;
                  v19 = *(this + 1);
                  if (v19 < *(this + 2) && *v19 == 69)
                  {
                    *(this + 1) = v19 + 1;
                    goto LABEL_69;
                  }
                }
              }
            }
          }
        }

        else
        {
          if (v7 != 1)
          {
            if (v7 != 2 || v8 != 5)
            {
              goto LABEL_37;
            }

            goto LABEL_45;
          }

          if ((TagFallback & 7) != 0)
          {
            goto LABEL_37;
          }

          v10 = *(this + 1);
          v9 = *(this + 2);
          if (v10 >= v9 || (v11 = *v10, v11 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this, (a1 + 8));
            if (!result)
            {
              return result;
            }

            v12 = *(this + 1);
            v9 = *(this + 2);
          }

          else
          {
            *(a1 + 8) = v11;
            v12 = v10 + 1;
            *(this + 1) = v12;
          }

          *(a1 + 52) |= 1u;
          if (v12 < v9 && *v12 == 21)
          {
            *(this + 1) = v12 + 1;
LABEL_45:
            v21 = 0;
            if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v21) & 1) == 0)
            {
              return 0;
            }

            *(a1 + 16) = v21;
            *(a1 + 52) |= 2u;
            v14 = *(this + 1);
            if (v14 < *(this + 2) && *v14 == 29)
            {
              *(this + 1) = v14 + 1;
              goto LABEL_49;
            }
          }
        }
      }

      if (TagFallback >> 3 <= 6)
      {
        break;
      }

      if (v7 == 7)
      {
        if (v8 != 5)
        {
          goto LABEL_37;
        }

        goto LABEL_65;
      }

      if (v7 == 8)
      {
        if (v8 != 5)
        {
          goto LABEL_37;
        }

LABEL_69:
        v21 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v21) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 40) = v21;
        *(a1 + 52) |= 0x80u;
        v20 = *(this + 1);
        if (v20 < *(this + 2) && *v20 == 77)
        {
          *(this + 1) = v20 + 1;
          goto LABEL_73;
        }
      }

      else
      {
        if (v7 != 9 || v8 != 5)
        {
          goto LABEL_37;
        }

LABEL_73:
        v21 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v21) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 44) = v21;
        *(a1 + 52) |= 0x100u;
        if (*(this + 1) == *(this + 2) && (*(this + 11) || *(this + 6) == *(this + 10)))
        {
          *(this + 8) = 0;
          result = 1;
          *(this + 36) = 1;
          return result;
        }
      }
    }

    if (v7 == 5)
    {
      if (v8 != 5)
      {
        goto LABEL_37;
      }

      goto LABEL_57;
    }

    if (v7 == 6 && v8 == 5)
    {
      goto LABEL_61;
    }

LABEL_37:
    if (v8 == 4)
    {
      return 1;
    }
  }

  while ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(this, TagFallback, a3) & 1) != 0);
  return 0;
}

void sub_10014C8D8(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = off_1024A8F18;
  sub_10014C940(a1);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);

  operator delete();
}

void *sub_10014C940(void *result)
{
  if (qword_102637CD0 != result)
  {
    v1 = result;
    v2 = result[1];
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    result = v1[2];
    if (result)
    {
      v3 = *(*result + 8);

      return v3();
    }
  }

  return result;
}

void sub_10014C9E0(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  sub_10014CE90(a1);

  operator delete();
}

uint64_t sub_10014CA18(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
{
  do
  {
    while (1)
    {
      while (1)
      {
        v5 = *(this + 1);
        if (v5 >= *(this + 2) || (TagFallback = *v5, (TagFallback & 0x80000000) != 0))
        {
          TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(this);
          *(this + 8) = TagFallback;
          if (!TagFallback)
          {
            return 1;
          }
        }

        else
        {
          *(this + 8) = TagFallback;
          *(this + 1) = v5 + 1;
          if (!TagFallback)
          {
            return 1;
          }
        }

        v7 = TagFallback >> 3;
        v8 = TagFallback & 7;
        if (TagFallback >> 3 <= 2)
        {
          break;
        }

        if (v7 == 3)
        {
          if (v8 != 1)
          {
            goto LABEL_20;
          }

LABEL_32:
          v16 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v16) & 1) == 0)
          {
            return 0;
          }

          *(a1 + 24) = v16;
          *(a1 + 44) |= 4u;
          v15 = *(this + 1);
          if (v15 < *(this + 2) && *v15 == 33)
          {
            *(this + 1) = v15 + 1;
            goto LABEL_36;
          }
        }

        else
        {
          if (v7 != 4 || v8 != 1)
          {
            goto LABEL_20;
          }

LABEL_36:
          v16 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v16) & 1) == 0)
          {
            return 0;
          }

          *(a1 + 32) = v16;
          *(a1 + 44) |= 8u;
          if (*(this + 1) == *(this + 2) && (*(this + 11) || *(this + 6) == *(this + 10)))
          {
            *(this + 8) = 0;
            result = 1;
            *(this + 36) = 1;
            return result;
          }
        }
      }

      if (v7 != 1)
      {
        break;
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_20;
      }

      v10 = *(this + 1);
      v9 = *(this + 2);
      if (v10 >= v9 || (v11 = *v10, v11 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this, (a1 + 8));
        if (!result)
        {
          return result;
        }

        v12 = *(this + 1);
        v9 = *(this + 2);
      }

      else
      {
        *(a1 + 8) = v11;
        v12 = v10 + 1;
        *(this + 1) = v12;
      }

      *(a1 + 44) |= 1u;
      if (v12 < v9 && *v12 == 17)
      {
        *(this + 1) = v12 + 1;
LABEL_28:
        v16 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v16) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 16) = v16;
        *(a1 + 44) |= 2u;
        v14 = *(this + 1);
        if (v14 < *(this + 2) && *v14 == 25)
        {
          *(this + 1) = v14 + 1;
          goto LABEL_32;
        }
      }
    }

    if (v7 == 2 && v8 == 1)
    {
      goto LABEL_28;
    }

LABEL_20:
    if (v8 == 4)
    {
      return 1;
    }
  }

  while ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(this, TagFallback, a3) & 1) != 0);
  return 0;
}

uint64_t sub_10014CC44(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
{
  while (1)
  {
    while (1)
    {
      v5 = *(this + 1);
      if (v5 >= *(this + 2) || (TagFallback = *v5, (TagFallback & 0x80000000) != 0))
      {
        TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(this);
        *(this + 8) = TagFallback;
        if (!TagFallback)
        {
          return 1;
        }
      }

      else
      {
        *(this + 8) = TagFallback;
        *(this + 1) = v5 + 1;
        if (!TagFallback)
        {
          return 1;
        }
      }

      v7 = TagFallback & 7;
      if (TagFallback >> 3 != 2)
      {
        break;
      }

      if ((TagFallback & 7) == 0)
      {
        v11 = *(this + 1);
        v10 = *(this + 2);
        goto LABEL_28;
      }

LABEL_15:
      if (v7 == 4)
      {
        return 1;
      }

      if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(this, TagFallback, a3) & 1) == 0)
      {
        return 0;
      }
    }

    if (TagFallback >> 3 != 1 || v7 != 2)
    {
      goto LABEL_15;
    }

    *(a1 + 24) |= 1u;
    v8 = *(a1 + 8);
    if (!v8)
    {
      operator new();
    }

    v23 = 0;
    v9 = *(this + 1);
    if (v9 >= *(this + 2) || *v9 < 0)
    {
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v23))
      {
        return 0;
      }
    }

    else
    {
      v23 = *v9;
      *(this + 1) = v9 + 1;
    }

    v12 = *(this + 14);
    v13 = *(this + 15);
    *(this + 14) = v12 + 1;
    if (v12 >= v13)
    {
      return 0;
    }

    v14 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v23);
    if (!sub_10014BE80(v8, this, v15) || *(this + 36) != 1)
    {
      return 0;
    }

    wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v14);
    v16 = *(this + 14);
    v17 = __OFSUB__(v16, 1);
    v18 = v16 - 1;
    if (v18 < 0 == v17)
    {
      *(this + 14) = v18;
    }

    v19 = *(this + 1);
    v10 = *(this + 2);
    if (v19 < v10 && *v19 == 16)
    {
      v11 = v19 + 1;
      *(this + 1) = v11;
LABEL_28:
      if (v11 >= v10 || (v20 = *v11, v20 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 16));
        if (!result)
        {
          return result;
        }

        v21 = *(this + 1);
        v10 = *(this + 2);
      }

      else
      {
        *(a1 + 16) = v20;
        v21 = v11 + 1;
        *(this + 1) = v21;
      }

      *(a1 + 24) |= 2u;
      if (v21 == v10 && (*(this + 11) || *(this + 6) == *(this + 10)))
      {
        *(this + 8) = 0;
        result = 1;
        *(this + 36) = 1;
        return result;
      }
    }
  }
}

void sub_10014CE90(wireless_diagnostics::google::protobuf::MessageLite *this)
{
  *this = &off_1024A8E28;
  if (qword_102637CC0 != this)
  {
    v2 = *(this + 2);
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

void sub_10014CF1C(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = off_1024A8EA0;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);

  operator delete();
}

void sub_10014CF70(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = off_1024A8F90;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);

  operator delete();
}

void *sub_10014CFC4(void *result)
{
  if (qword_102637CE0 != result)
  {
    v1 = result;
    v2 = result[2];
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    result = v1[3];
    if (result)
    {
      v3 = *(*result + 8);

      return v3();
    }
  }

  return result;
}

void sub_10014D064(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = off_1024A9008;
  sub_10014CFC4(a1);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);

  operator delete();
}

void sub_10014D0CC(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = off_1024A9080;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);

  operator delete();
}

void *sub_10014D120(void *result)
{
  if (qword_102637CF0 != result)
  {
    v1 = result;
    v2 = result[1];
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    v3 = v1[2];
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }

    v4 = v1[3];
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }

    v5 = v1[4];
    if (v5)
    {
      (*(*v5 + 8))(v5);
    }

    result = v1[5];
    if (result)
    {
      v6 = *(*result + 8);

      return v6();
    }
  }

  return result;
}

void sub_10014D244(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = off_1024A90F8;
  sub_10014D120(a1);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);

  operator delete();
}

void sub_10014D2AC(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = off_1024A9170;
  sub_10014D314(a1);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);

  operator delete();
}

void *sub_10014D314(void *result)
{
  if (qword_102637CF8 != result)
  {
    v1 = result;
    v2 = result[1];
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    v3 = v1[2];
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }

    result = v1[3];
    if (result)
    {
      v4 = *(*result + 8);

      return v4();
    }
  }

  return result;
}

void sub_10014D3E0(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  sub_10014D418(a1);

  operator delete();
}

void sub_10014D418(wireless_diagnostics::google::protobuf::MessageLite *this)
{
  *this = &off_1024A91E8;
  if (qword_102637D00 != this)
  {
    v2 = *(this + 1);
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

void sub_10014D4A4(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = off_1024A92D8;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);

  operator delete();
}

uint64_t sub_10014D4F8(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
{
  while (1)
  {
    while (1)
    {
      while (1)
      {
        while (1)
        {
          v5 = *(this + 1);
          if (v5 >= *(this + 2) || (TagFallback = *v5, (TagFallback & 0x80000000) != 0))
          {
            TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(this);
            *(this + 8) = TagFallback;
            if (!TagFallback)
            {
              return 1;
            }
          }

          else
          {
            *(this + 8) = TagFallback;
            *(this + 1) = v5 + 1;
            if (!TagFallback)
            {
              return 1;
            }
          }

          v7 = TagFallback >> 3;
          v8 = TagFallback & 7;
          if (TagFallback >> 3 > 2)
          {
            break;
          }

          if (v7 != 1)
          {
            if (v7 != 2 || (TagFallback & 7) != 0)
            {
              goto LABEL_21;
            }

            v10 = *(this + 1);
            v9 = *(this + 2);
            goto LABEL_32;
          }

          if ((TagFallback & 7) != 0)
          {
            goto LABEL_21;
          }

          v12 = *(this + 1);
          v9 = *(this + 2);
          if (v12 >= v9 || (v13 = *v12, v13 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 8));
            if (!result)
            {
              return result;
            }

            v14 = *(this + 1);
            v9 = *(this + 2);
          }

          else
          {
            *(a1 + 8) = v13;
            v14 = v12 + 1;
            *(this + 1) = v14;
          }

          *(a1 + 40) |= 1u;
          if (v14 < v9 && *v14 == 16)
          {
            v10 = v14 + 1;
            *(this + 1) = v10;
LABEL_32:
            if (v10 >= v9 || (v16 = *v10, v16 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 12));
              if (!result)
              {
                return result;
              }

              v17 = *(this + 1);
              v9 = *(this + 2);
            }

            else
            {
              *(a1 + 12) = v16;
              v17 = v10 + 1;
              *(this + 1) = v17;
            }

            *(a1 + 40) |= 2u;
            if (v17 < v9 && *v17 == 24)
            {
              v11 = v17 + 1;
              *(this + 1) = v11;
              goto LABEL_40;
            }
          }
        }

        if (v7 != 3)
        {
          break;
        }

        if ((TagFallback & 7) != 0)
        {
          goto LABEL_21;
        }

        v11 = *(this + 1);
        v9 = *(this + 2);
LABEL_40:
        v38 = 0;
        if (v11 >= v9 || (v18 = *v11, (v18 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v38);
          if (!result)
          {
            return result;
          }

          v18 = v38;
        }

        else
        {
          *(this + 1) = v11 + 1;
        }

        if (v18 <= 5)
        {
          *(a1 + 40) |= 4u;
          *(a1 + 32) = v18;
        }

        v19 = *(this + 1);
        if (v19 < *(this + 2) && *v19 == 34)
        {
          *(this + 1) = v19 + 1;
LABEL_50:
          *(a1 + 40) |= 8u;
          v20 = *(a1 + 16);
          if (!v20)
          {
            operator new();
          }

          v39 = 0;
          v21 = *(this + 1);
          if (v21 >= *(this + 2) || *v21 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v39))
            {
              return 0;
            }
          }

          else
          {
            v39 = *v21;
            *(this + 1) = v21 + 1;
          }

          v22 = *(this + 14);
          v23 = *(this + 15);
          *(this + 14) = v22 + 1;
          if (v22 >= v23)
          {
            return 0;
          }

          v24 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v39);
          if (!sub_10014BD14(v20, this, v25) || *(this + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v24);
          v26 = *(this + 14);
          v27 = __OFSUB__(v26, 1);
          v28 = v26 - 1;
          if (v28 < 0 == v27)
          {
            *(this + 14) = v28;
          }

          v29 = *(this + 1);
          if (v29 < *(this + 2) && *v29 == 42)
          {
            *(this + 1) = v29 + 1;
            goto LABEL_64;
          }
        }
      }

      if (v7 != 4)
      {
        break;
      }

      if (v8 == 2)
      {
        goto LABEL_50;
      }

LABEL_21:
      if (v8 == 4)
      {
        return 1;
      }

      if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(this, TagFallback, a3) & 1) == 0)
      {
        return 0;
      }
    }

    if (v7 != 5 || v8 != 2)
    {
      goto LABEL_21;
    }

LABEL_64:
    *(a1 + 40) |= 0x10u;
    v30 = *(a1 + 24);
    if (!v30)
    {
      operator new();
    }

    v40 = 0;
    v31 = *(this + 1);
    if (v31 >= *(this + 2) || *v31 < 0)
    {
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v40))
      {
        return 0;
      }
    }

    else
    {
      v40 = *v31;
      *(this + 1) = v31 + 1;
    }

    v32 = *(this + 14);
    v33 = *(this + 15);
    *(this + 14) = v32 + 1;
    if (v32 >= v33)
    {
      return 0;
    }

    v34 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v40);
    if (!sub_10014BD14(v30, this, v35) || *(this + 36) != 1)
    {
      return 0;
    }

    wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v34);
    v36 = *(this + 14);
    v27 = __OFSUB__(v36, 1);
    v37 = v36 - 1;
    if (v37 < 0 == v27)
    {
      *(this + 14) = v37;
    }

    if (*(this + 1) == *(this + 2) && (*(this + 11) || *(this + 6) == *(this + 10)))
    {
      *(this + 8) = 0;
      result = 1;
      *(this + 36) = 1;
      return result;
    }
  }
}

uint64_t sub_10014D944(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
{
  while (1)
  {
    while (1)
    {
      while (1)
      {
        while (1)
        {
          v5 = *(this + 1);
          if (v5 >= *(this + 2) || (TagFallback = *v5, (TagFallback & 0x80000000) != 0))
          {
            TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(this);
            *(this + 8) = TagFallback;
            if (!TagFallback)
            {
              return 1;
            }
          }

          else
          {
            *(this + 8) = TagFallback;
            *(this + 1) = v5 + 1;
            if (!TagFallback)
            {
              return 1;
            }
          }

          v7 = TagFallback >> 3;
          v8 = TagFallback & 7;
          if (TagFallback >> 3 <= 3)
          {
            break;
          }

          if (v7 == 4)
          {
            if (v8 == 2)
            {
              goto LABEL_62;
            }

            goto LABEL_26;
          }

          if (v7 == 5)
          {
            if (v8 != 2)
            {
              goto LABEL_26;
            }

LABEL_76:
            *(a1 + 56) |= 0x10u;
            v43 = *(a1 + 32);
            if (!v43)
            {
              operator new();
            }

            v60 = 0;
            v44 = *(this + 1);
            if (v44 >= *(this + 2) || *v44 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v60))
              {
                return 0;
              }
            }

            else
            {
              v60 = *v44;
              *(this + 1) = v44 + 1;
            }

            v45 = *(this + 14);
            v46 = *(this + 15);
            *(this + 14) = v45 + 1;
            if (v45 >= v46)
            {
              return 0;
            }

            v47 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v60);
            if (!sub_10014BE80(v43, this, v48) || *(this + 36) != 1)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v47);
            v49 = *(this + 14);
            v22 = __OFSUB__(v49, 1);
            v50 = v49 - 1;
            if (v50 < 0 == v22)
            {
              *(this + 14) = v50;
            }

            v51 = *(this + 1);
            if (v51 < *(this + 2) && *v51 == 50)
            {
              *(this + 1) = v51 + 1;
              goto LABEL_90;
            }
          }

          else
          {
            if (v7 != 6 || v8 != 2)
            {
              goto LABEL_26;
            }

LABEL_90:
            *(a1 + 56) |= 0x20u;
            v52 = *(a1 + 40);
            if (!v52)
            {
              operator new();
            }

            v60 = 0;
            v53 = *(this + 1);
            if (v53 >= *(this + 2) || *v53 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v60))
              {
                return 0;
              }
            }

            else
            {
              v60 = *v53;
              *(this + 1) = v53 + 1;
            }

            v54 = *(this + 14);
            v55 = *(this + 15);
            *(this + 14) = v54 + 1;
            if (v54 >= v55)
            {
              return 0;
            }

            v56 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v60);
            if (!sub_10014BE80(v52, this, v57) || *(this + 36) != 1)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v56);
            v58 = *(this + 14);
            v22 = __OFSUB__(v58, 1);
            v59 = v58 - 1;
            if (v59 < 0 == v22)
            {
              *(this + 14) = v59;
            }

            if (*(this + 1) == *(this + 2) && (*(this + 11) || *(this + 6) == *(this + 10)))
            {
              *(this + 8) = 0;
              result = 1;
              *(this + 36) = 1;
              return result;
            }
          }
        }

        if (v7 != 1)
        {
          break;
        }

        if ((TagFallback & 7) != 0)
        {
          goto LABEL_26;
        }

        v10 = *(this + 1);
        v9 = *(this + 2);
        if (v10 >= v9 || (v11 = *v10, v11 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 48));
          if (!result)
          {
            return result;
          }

          v12 = *(this + 1);
          v9 = *(this + 2);
        }

        else
        {
          *(a1 + 48) = v11;
          v12 = v10 + 1;
          *(this + 1) = v12;
        }

        v13 = *(a1 + 56) | 1;
        *(a1 + 56) = v13;
        if (v12 < v9 && *v12 == 18)
        {
          *(this + 1) = v12 + 1;
          goto LABEL_34;
        }
      }

      if (v7 != 2)
      {
        break;
      }

      if (v8 != 2)
      {
        goto LABEL_26;
      }

      v13 = *(a1 + 56);
LABEL_34:
      *(a1 + 56) = v13 | 2;
      v15 = *(a1 + 8);
      if (!v15)
      {
        operator new();
      }

      v60 = 0;
      v16 = *(this + 1);
      if (v16 >= *(this + 2) || *v16 < 0)
      {
        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v60))
        {
          return 0;
        }
      }

      else
      {
        v60 = *v16;
        *(this + 1) = v16 + 1;
      }

      v17 = *(this + 14);
      v18 = *(this + 15);
      *(this + 14) = v17 + 1;
      if (v17 >= v18)
      {
        return 0;
      }

      v19 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v60);
      if (!sub_10014BA50(v15, this, v20) || *(this + 36) != 1)
      {
        return 0;
      }

      wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v19);
      v21 = *(this + 14);
      v22 = __OFSUB__(v21, 1);
      v23 = v21 - 1;
      if (v23 < 0 == v22)
      {
        *(this + 14) = v23;
      }

      v24 = *(this + 1);
      if (v24 < *(this + 2) && *v24 == 26)
      {
        *(this + 1) = v24 + 1;
LABEL_48:
        *(a1 + 56) |= 4u;
        v25 = *(a1 + 16);
        if (!v25)
        {
          operator new();
        }

        v60 = 0;
        v26 = *(this + 1);
        if (v26 >= *(this + 2) || *v26 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v60))
          {
            return 0;
          }
        }

        else
        {
          v60 = *v26;
          *(this + 1) = v26 + 1;
        }

        v27 = *(this + 14);
        v28 = *(this + 15);
        *(this + 14) = v27 + 1;
        if (v27 >= v28)
        {
          return 0;
        }

        v29 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v60);
        if (!sub_10014BE80(v25, this, v30) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v29);
        v31 = *(this + 14);
        v22 = __OFSUB__(v31, 1);
        v32 = v31 - 1;
        if (v32 < 0 == v22)
        {
          *(this + 14) = v32;
        }

        v33 = *(this + 1);
        if (v33 < *(this + 2) && *v33 == 34)
        {
          *(this + 1) = v33 + 1;
LABEL_62:
          *(a1 + 56) |= 8u;
          v34 = *(a1 + 24);
          if (!v34)
          {
            operator new();
          }

          v60 = 0;
          v35 = *(this + 1);
          if (v35 >= *(this + 2) || *v35 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v60))
            {
              return 0;
            }
          }

          else
          {
            v60 = *v35;
            *(this + 1) = v35 + 1;
          }

          v36 = *(this + 14);
          v37 = *(this + 15);
          *(this + 14) = v36 + 1;
          if (v36 >= v37)
          {
            return 0;
          }

          v38 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v60);
          if (!sub_10014BE80(v34, this, v39) || *(this + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v38);
          v40 = *(this + 14);
          v22 = __OFSUB__(v40, 1);
          v41 = v40 - 1;
          if (v41 < 0 == v22)
          {
            *(this + 14) = v41;
          }

          v42 = *(this + 1);
          if (v42 < *(this + 2) && *v42 == 42)
          {
            *(this + 1) = v42 + 1;
            goto LABEL_76;
          }
        }
      }
    }

    if (v7 == 3 && v8 == 2)
    {
      goto LABEL_48;
    }

LABEL_26:
    if (v8 == 4)
    {
      return 1;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(this, TagFallback, a3) & 1) == 0)
    {
      return 0;
    }
  }
}

uint64_t sub_10014DFFC(uint64_t a1, unsigned int a2)
{
  v3 = *(a1 + 64);
  if (v3)
  {
    if (v3)
    {
      v6 = *(a1 + 8);
      if (!v6)
      {
        v6 = *(qword_102637D88 + 8);
      }

      v7 = sub_1001F4208(v6, a2);
      v8 = v7;
      if (v7 >= 0x80)
      {
        v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v7, a2);
      }

      else
      {
        v9 = 1;
      }

      v4 = v8 + v9 + 1;
      v3 = *(a1 + 64);
    }

    else
    {
      v4 = 0;
    }

    if ((v3 & 2) != 0)
    {
      v4 += 9;
    }

    v10.i64[0] = 0x200000002;
    v10.i64[1] = 0x200000002;
    v5 = (vaddvq_s32(vandq_s8(vshlq_u32(vdupq_n_s32(v3), xmmword_101D01A20), v10)) + v4);
    if ((v3 & 0x40) != 0)
    {
      v11 = *(a1 + 28);
      if ((v11 & 0x80000000) != 0)
      {
        v12 = 11;
      }

      else if (v11 >= 0x80)
      {
        v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v11, a2) + 1;
        v3 = *(a1 + 64);
      }

      else
      {
        v12 = 2;
      }

      v5 = (v12 + v5);
    }

    if ((v3 & 0x80) != 0)
    {
      v13 = *(a1 + 32);
      if ((v13 & 0x80000000) != 0)
      {
        v14 = 11;
      }

      else if (v13 >= 0x80)
      {
        v14 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v13, a2) + 1;
        v3 = *(a1 + 64);
      }

      else
      {
        v14 = 2;
      }

      v5 = (v14 + v5);
    }
  }

  else
  {
    v5 = 0;
  }

  if ((v3 & 0xFF00) != 0)
  {
    if ((v3 & 0x100) != 0)
    {
      v15 = *(a1 + 36);
      if ((v15 & 0x80000000) != 0)
      {
        v16 = 11;
      }

      else if (v15 >= 0x80)
      {
        v16 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v15, a2) + 1;
        v3 = *(a1 + 64);
      }

      else
      {
        v16 = 2;
      }

      LODWORD(v5) = v16 + v5;
    }

    if ((v3 & 0x200) != 0)
    {
      v5 = (v5 + 9);
    }

    else
    {
      v5 = v5;
    }

    if ((v3 & 0x400) != 0)
    {
      v17 = *(a1 + 48);
      if ((v17 & 0x80000000) != 0)
      {
        v18 = 11;
      }

      else if (v17 >= 0x80)
      {
        v18 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v17, a2) + 1;
        v3 = *(a1 + 64);
      }

      else
      {
        v18 = 2;
      }

      v5 = (v18 + v5);
      if ((v3 & 0x800) == 0)
      {
LABEL_40:
        if ((v3 & 0x1000) == 0)
        {
          goto LABEL_60;
        }

        goto LABEL_54;
      }
    }

    else if ((v3 & 0x800) == 0)
    {
      goto LABEL_40;
    }

    v19 = *(a1 + 52);
    if ((v19 & 0x80000000) != 0)
    {
      v20 = 11;
    }

    else if (v19 >= 0x80)
    {
      v20 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v19, a2) + 1;
      v3 = *(a1 + 64);
    }

    else
    {
      v20 = 2;
    }

    v5 = (v20 + v5);
    if ((v3 & 0x1000) != 0)
    {
LABEL_54:
      v21 = *(a1 + 56);
      if ((v21 & 0x80000000) != 0)
      {
        v22 = 11;
      }

      else if (v21 >= 0x80)
      {
        v22 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v21, a2) + 1;
      }

      else
      {
        v22 = 2;
      }

      v5 = (v22 + v5);
    }
  }

LABEL_60:
  *(a1 + 60) = v5;
  return v5;
}