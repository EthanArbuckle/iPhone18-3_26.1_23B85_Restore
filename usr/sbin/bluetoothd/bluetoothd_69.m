void sub_1004EA7F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, atomic_uint *a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, char a18)
{
  if (a13)
  {
    sub_10000C808(a13);
  }

  sub_1000088CC(&a18);
  _Unwind_Resume(a1);
}

uint64_t sub_1004EA89C(uint64_t a1, int a2, void *a3)
{
  v28[0] = 0;
  v28[1] = 0;
  sub_100007F88(v28, a1 + 40);
  v7 = *(a1 + 360);
  if (v7 != *(a1 + 368))
  {
    while (1)
    {
      v8 = *v7;
      if (a3)
      {
        *a3 = v8;
      }

      if (*(v8 + 16) == a2)
      {
        goto LABEL_39;
      }

      __p = 0;
      v26 = 0;
      v27 = 0;
      sub_100007F20(&__p, (*v7 + 104));
      v9 = __p;
      v10 = __p;
      if (__p == v26)
      {
        break;
      }

      while (*(*v10 + 16) != a2)
      {
        v10 += 8;
        if (v10 == v26)
        {
          goto LABEL_8;
        }
      }

      v17 = 0;
      v3 = *v10;
      if (__p)
      {
        goto LABEL_31;
      }

LABEL_32:
      if (!v17)
      {
        v8 = v3;
        goto LABEL_39;
      }

      if (++v7 == *(a1 + 368))
      {
        goto LABEL_34;
      }
    }

LABEL_8:
    v22 = 0;
    v23 = 0;
    v24 = 0;
    sub_100007F20(&v22, (*v7 + 136));
    v11 = v22;
    if (v22 == v23)
    {
      v17 = 1;
      if (v22)
      {
LABEL_29:
        v23 = v11;
        operator delete(v11);
      }
    }

    else
    {
      while (1)
      {
        v12 = *v11;
        if (*(*v11 + 16) == a2)
        {
          break;
        }

        v12 = *(v12 + 96);
        if (*(v12 + 16) == a2)
        {
          break;
        }

        v19 = 0;
        v20 = 0;
        v21 = 0;
        sub_100007F20(&v19, (*v11 + 104));
        v13 = v19;
        if (v19 == v20)
        {
          v16 = 0;
          v15 = 1;
          if (v19)
          {
LABEL_17:
            v20 = v19;
            operator delete(v19);
          }
        }

        else
        {
          while (1)
          {
            v14 = *(*v13 + 16);
            v15 = v14 != a2;
            if (v14 == a2)
            {
              break;
            }

            v13 += 8;
            if (v13 == v20)
            {
              v16 = 0;
              if (v19)
              {
                goto LABEL_17;
              }

              goto LABEL_18;
            }
          }

          v16 = 1;
          v3 = *v13;
          if (v19)
          {
            goto LABEL_17;
          }
        }

LABEL_18:
        if (!v15)
        {
          goto LABEL_28;
        }

        v11 += 8;
        if (v11 == v23)
        {
          v16 = 8;
          goto LABEL_28;
        }
      }

      v16 = 1;
      v3 = v12;
LABEL_28:
      v11 = v22;
      v17 = (v16 & 7) == 0;
      if (v22)
      {
        goto LABEL_29;
      }
    }

    v9 = __p;
    if (!__p)
    {
      goto LABEL_32;
    }

LABEL_31:
    v26 = v9;
    operator delete(v9);
    goto LABEL_32;
  }

LABEL_34:
  if (a3 && *a3)
  {
    v8 = 0;
    *a3 = 0;
  }

  else
  {
    v8 = 0;
  }

LABEL_39:
  sub_1000088CC(v28);
  return v8;
}

void sub_1004EAACC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, char a19)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_1000088CC(&a19);
  _Unwind_Resume(a1);
}

void *sub_1004EAB10(int64x2_t *a1, char *a2, uint64_t a3)
{
  v4 = a1[2].u64[0];
  v5 = a1->i64[1];
  v6 = (v5 + 8 * (v4 >> 8));
  if (a1[1].i64[0] == v5)
  {
    v7 = 0;
  }

  else
  {
    v7 = *v6 + 16 * v4;
  }

  v33 = v6;
  v34 = v7;
  if (a3 == v7)
  {
    v8 = 0;
  }

  else
  {
    v8 = ((a3 - *a2) >> 4) + 32 * (a2 - v6) - ((v7 - *v6) >> 4);
  }

  v9 = sub_1004F2DB4(&v33, v8);
  v11 = v9;
  v12 = v10;
  v13 = a1[2].i64[1];
  if (v8 <= (v13 - 1) >> 1)
  {
    v18 = (v10 - *v9) >> 4;
    if (v18 < 0)
    {
      v27 = 254 - v18;
      v20 = &v9[-(v27 >> 8)];
      v21 = *v20 + 16 * ~v27;
    }

    else
    {
      v19 = v18 + 1;
      v20 = &v9[v19 >> 8];
      v21 = *v20 + 16 * v19;
    }

    memset(&v35, 0, 32);
    sub_1004F2EE0(v33, v34, v9, v10, v20, v21, &v35);
    a1[2] = vaddq_s64(a1[2], xmmword_1008A6430);
    sub_1004F2E10(a1, 1);
  }

  else
  {
    v14 = (v10 - *v9) >> 4;
    if (v14 < 0)
    {
      v22 = 254 - v14;
      v16 = &v9[-(v22 >> 8)];
      v17 = &(*v16)[16 * ~v22];
    }

    else
    {
      v15 = v14 + 1;
      v16 = &v9[v15 >> 8];
      v17 = &(*v16)[16 * v15];
    }

    v23 = a1[2].i64[0] + v13;
    v24 = a1->i64[1];
    v25 = (v24 + 8 * (v23 >> 8));
    if (a1[1].i64[0] == v24)
    {
      v26 = 0;
    }

    else
    {
      v26 = &(*v25)[16 * v23];
    }

    v35.n128_u64[0] = v11;
    v35.n128_u64[1] = v12;
    sub_1004F305C(v16, v17, v25, v26, &v35);
    --a1[2].i64[1];
    sub_1004F2E70(a1, 1);
  }

  v28 = a1[2].u64[0];
  v29 = a1->i64[1];
  v30 = (v29 + 8 * (v28 >> 8));
  if (a1[1].i64[0] == v29)
  {
    v31 = 0;
  }

  else
  {
    v31 = *v30 + 16 * v28;
  }

  v35.n128_u64[0] = v30;
  v35.n128_u64[1] = v31;
  return sub_1004F2DB4(&v35, v8);
}

uint64_t sub_1004EAD08(uint64_t *a1, unsigned __int8 *src)
{
  v4 = a1[1];
  if (v4 >= a1[2])
  {
    result = sub_1004F31A8(a1, src);
  }

  else
  {
    uuid_copy(a1[1], src);
    *(v4 + 16) = *(src + 4);
    result = v4 + 20;
    a1[1] = v4 + 20;
  }

  a1[1] = result;
  return result;
}

uint64_t sub_1004EAD78(uint64_t a1, int *a2, uint64_t *a3)
{
  v28[0] = 0;
  v28[1] = 0;
  sub_100007F88(v28, a1 + 40);
  v6 = sub_1004E98F0(a1, *a2);
  if (v6)
  {
    v25 = 0;
    v26 = 0;
    v27 = 0;
    sub_100007F20(&v25, (v6 + 136));
    v7 = v25;
    if (v25 != v26)
    {
      v8 = (a1 + 416);
      do
      {
        v22 = 0;
        v23 = 0;
        v24 = 0;
        sub_100007F20(&v22, (*v7 + 104));
        v9 = v22;
        if (v22 != v23)
        {
          do
          {
            v10 = *(*v9 + 8);
            v11 = *(v10 + 20);
            *dst = *(v10 + 4);
            v31 = v11;
            sub_10000D03C(&v29, dst);
            *dst = xmmword_1008A9C4C;
            v31 = 0;
            if (sub_10004E15C(&v29, dst))
            {
              v12 = *v8;
              if (*v8)
              {
                v13 = *v9;
                v14 = v8;
                do
                {
                  v15 = v12[4];
                  v16 = v15 >= v13;
                  v17 = v15 < v13;
                  if (v16)
                  {
                    v14 = v12;
                  }

                  v12 = v12[v17];
                }

                while (v12);
                if (v14 != v8 && v13 >= v14[4])
                {
                  v19 = v14[5];
                  v18 = v14[6];
                  while (v19 != v18)
                  {
                    if (*(v19 + 16))
                    {
                      v20 = *(*v7 + 16);
                      uuid_copy(dst, v19);
                      v31 = v20;
                      sub_1004EAD08(a3, dst);
                      v18 = v14[6];
                    }

                    v19 += 18;
                  }
                }
              }
            }

            v9 += 8;
          }

          while (v9 != v23);
          v9 = v22;
        }

        if (v9)
        {
          v23 = v9;
          operator delete(v9);
        }

        v7 += 8;
      }

      while (v7 != v26);
      v7 = v25;
    }

    if (v7)
    {
      v26 = v7;
      operator delete(v7);
    }
  }

  sub_1000088CC(v28);
  return v6;
}

uint64_t sub_1004EAFD4(uint64_t a1)
{
  v14[0] = 0;
  v14[1] = 0;
  sub_100007F88(v14, a1 + 40);
  if (*(a1 + 32) == 1)
  {
    if (qword_100B50F78 != -1)
    {
      sub_10083A29C();
    }

    if (!sub_100580A38(qword_100B50F70))
    {
      v13 = 0;
      sub_1000216B4(&v13);
      if (sub_1002B9EB0())
      {
        v2 = qword_100BCE910;
        if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_INFO))
        {
          LOWORD(v12.__r_.__value_.__l.__data_) = 0;
          _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Compacting database!", &v12, 2u);
        }

        v4 = *(a1 + 360);
        v3 = *(a1 + 368);
        while (v4 != v3)
        {
          v5 = *v4;
          if (*v4 != *(a1 + 112) && v5 != *(a1 + 128))
          {
            sub_1002D945C(*(v5 + 8));
            v3 = *(a1 + 368);
          }

          ++v4;
        }

        sub_1002B9704();
        sub_100022214(&v13);
        sub_1004E9DB8(a1, 0, (*(*(a1 + 128) + 48) + 1), 0xFFFFu);
        sub_10008E0A0(a1 + 408, *(a1 + 416));
        *(a1 + 416) = 0;
        *(a1 + 424) = 0;
        *(a1 + 408) = a1 + 416;
        v7 = *(a1 + 360);
        v6 = *(a1 + 368);
        while (v7 != v6)
        {
          v8 = *v7;
          if (*v7 != *(a1 + 112) && v8 != *(a1 + 128))
          {
            v9 = sub_1004E7FE0(a1, *v7, 1);
            if (v9)
            {
              v10 = qword_100BCE910;
              if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_ERROR))
              {
                sub_1006E3698(v8, &v12);
                sub_10083A33C(&v12, buf, v9, v10);
              }

              break;
            }

            v6 = *(a1 + 368);
          }

          ++v7;
        }
      }

      sub_10002249C(&v13);
    }
  }

  return sub_1000088CC(v14);
}

void sub_1004EB1E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  sub_10002249C(&a15);
  sub_1000088CC(&a16);
  _Unwind_Resume(a1);
}

uint64_t sub_1004EB220(uint64_t a1, unsigned __int8 *a2, unsigned int a3)
{
  v6 = sub_10007C324(a1 + 232, a2);
  v7 = sub_10007C324(a1 + 256, a2);
  v8 = a1 + 240 == v6;
  if (a1 + 240 == v6)
  {
    v9 = 0;
  }

  else
  {
    v9 = a3;
  }

  if (a1 + 264 != v7)
  {
    v8 = 0;
  }

  return v8 | v9;
}

uint64_t sub_1004EB290(uint64_t a1, unsigned int *a2, uint64_t a3, uint64_t a4, int *a5)
{
  v24[0] = 0;
  v24[1] = 0;
  sub_100007F88(v24, a1 + 40);
  if (*(a1 + 32) != 1)
  {
    return sub_1000088CC(v24);
  }

  v10 = *(a1 + 392);
  if (v10)
  {
    v11 = *a2;
    v12 = a1 + 392;
    do
    {
      v13 = *(v10 + 32);
      v14 = v13 >= v11;
      v15 = v13 < v11;
      if (v14)
      {
        v12 = v10;
      }

      v10 = *(v10 + 8 * v15);
    }

    while (v10);
    if (v12 != a1 + 392 && v11 >= *(v12 + 32))
    {
      if (*(v12 + 44) != 1)
      {
        v23 = 0;
        sub_1000216B4(&v23);
        v18 = *(v12 + 48);
        v19 = *a2;
        v20 = sub_10000C5F8(a4);
        v21 = sub_10000C5E0(a4);
        v18(v19, a3, v20, v21);
LABEL_23:
        sub_10002249C(&v23);
        sub_10002717C((a1 + 384), v12);
        operator delete(v12);
        return sub_1000088CC(v24);
      }

      if (a3)
      {
        v16 = sub_1004EA89C(a1, *a5, 0);
        if (v16)
        {
LABEL_18:
          v23 = 0;
          sub_1000216B4(&v23);
          if (v16)
          {
            v17 = *(v16 + 8);
          }

          else
          {
            v17 = 0;
          }

          (*(v12 + 48))(*a2, a3, v17);
          goto LABEL_23;
        }

        if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_ERROR))
        {
          sub_10083A3C0();
        }
      }

      v16 = 0;
      goto LABEL_18;
    }
  }

  if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_ERROR))
  {
    sub_10083A438();
  }

  return sub_1000088CC(v24);
}

void sub_1004EB450(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

void sub_1004EB480(uint64_t a1, uint64_t a2, void *a3, int a4)
{
  v7 = a3;
  v38[0] = 0;
  v38[1] = 0;
  sub_100007F88(v38, a1 + 40);
  if (*(a1 + 32))
  {
    v8 = *(a1 + 464);
    v9 = *(a1 + 440);
    v10 = *(a1 + 448);
    v11 = (v9 + 8 * (v8 >> 8));
    if (v10 == v9)
    {
      v12 = 0;
    }

    else
    {
      v12 = (*v11 + 16 * v8);
    }

LABEL_5:
    v13 = v12 - 512;
    while (1)
    {
      v14 = v10 == v9 ? 0 : *(v9 + (((*(a1 + 472) + v8) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(a1 + 472) + v8);
      if (v12 == v14)
      {
        break;
      }

      if (*v12 == a2)
      {
        if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_ERROR))
        {
          sub_100018384(a2, &v40);
          sub_10083A4B0();
        }

        goto LABEL_22;
      }

      v12 += 2;
      v13 += 2;
      if (*v11 == v13)
      {
        v15 = v11[1];
        ++v11;
        v12 = v15;
        goto LABEL_5;
      }
    }

    v16 = sub_1004EA89C(a1, a4, 0);
    v17 = v16;
    if (v16 && (v18 = *(v16 + 8), v19 = *(v18 + 20), *&v40.__r_.__value_.__l.__data_ = *(v18 + 4), LODWORD(v40.__r_.__value_.__r.__words[2]) = v19, sub_10000D03C(v39, &v40), *&v40.__r_.__value_.__l.__data_ = xmmword_1008A9C60, LODWORD(v40.__r_.__value_.__r.__words[2]) = 0, sub_10004E15C(v39, &v40)))
    {
      sub_100007F20(&v40, v17 + 13);
      size = v40.__r_.__value_.__l.__size_;
      v20 = v40.__r_.__value_.__r.__words[0];
      if (v40.__r_.__value_.__r.__words[0] == v40.__r_.__value_.__l.__size_)
      {
        goto LABEL_34;
      }

      v22 = v40.__r_.__value_.__r.__words[0];
      while (1)
      {
        v23 = *(*v22 + 8);
        v24 = *(v23 + 20);
        *&v40.__r_.__value_.__l.__data_ = *(v23 + 4);
        LODWORD(v40.__r_.__value_.__r.__words[2]) = v24;
        sub_10000D03C(v39, &v40);
        *&v40.__r_.__value_.__l.__data_ = xmmword_1008A9C4C;
        LODWORD(v40.__r_.__value_.__r.__words[2]) = 0;
        if (sub_10004E15C(v39, &v40))
        {
          break;
        }

        v22 += 8;
        if (v22 == size)
        {
          goto LABEL_34;
        }
      }

      v26 = *v22;
      if (!*v22)
      {
LABEL_34:
        if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_ERROR))
        {
          sub_1006E3698(v17, &v40);
          sub_10083A558();
        }
      }

      else
      {
        if ([v7 count])
        {
          operator new();
        }

        v27 = (a1 + 416);
        v28 = *(a1 + 416);
        if (!v28)
        {
          goto LABEL_44;
        }

        v29 = (a1 + 416);
        do
        {
          v30 = v28[4];
          v31 = v30 >= v26;
          v32 = v30 < v26;
          if (v31)
          {
            v29 = v28;
          }

          v28 = v28[v32];
        }

        while (v28);
        if (v29 == v27 || v26 < v29[4])
        {
LABEL_44:
          v29 = (a1 + 416);
        }

        v36 = +[NSMutableArray array];
        if (v29 != v27)
        {
          v34 = v29[5];
          v33 = v29[6];
          while (v34 != v33)
          {
            if (*(v34 + 16))
            {
              v35 = sub_10004DF60(v34);
              [v36 addObject:v35];

              v33 = v29[6];
            }

            v34 += 18;
          }
        }

        if ([v36 count])
        {
          operator new();
        }

        if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_ERROR))
        {
          sub_1006E3698(v26, &v40);
          sub_10083A504();
        }
      }
    }

    else
    {
      if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_ERROR))
      {
        sub_10083A5AC();
      }

      v20 = 0;
    }

    if (*(a1 + 104))
    {
      v25 = sub_100007EE8();
      v37[0] = _NSConcreteStackBlock;
      v37[1] = 3221225472;
      v37[2] = sub_1004EC6CC;
      v37[3] = &unk_100AE0860;
      v37[4] = a1;
      v37[5] = a2;
      sub_10000CA94(v25, v37);
    }

    sub_1000088CC(v38);
    if (v20)
    {
      operator delete(v20);
    }
  }

  else
  {
LABEL_22:
    sub_1000088CC(v38);
  }
}

void sub_1004EB920(_Unwind_Exception *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);

  sub_1000088CC(va);
  if (v10)
  {
    operator delete(v10);
  }

  _Unwind_Resume(a1);
}

__n128 sub_1004EB9E0(void *a1, __n128 *a2)
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
    sub_1004F332C(a1);
    v5 = a1[1];
    v7 = a1[5] + a1[4];
  }

  result = *a2;
  *(*(v5 + ((v7 >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * v7) = *a2;
  ++a1[5];
  return result;
}

void sub_1004EBA6C(uint64_t a1)
{
  if (*(a1 + 480) == 1)
  {
    v1 = qword_100BCE910;
    if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "Not sending updates as TX queue is full", buf, 2u);
    }

    return;
  }

  v3 = *(a1 + 464);
  v4 = *(a1 + 440);
  v5 = *(a1 + 448);
  v6 = (v4 + 8 * (v3 >> 8));
  if (v5 == v4)
  {
    v7 = 0;
  }

  else
  {
    v7 = (*v6 + 16 * v3);
  }

  v76 = (a1 + 416);
  v72 = a1 + 544;
  while (1)
  {
    if (v5 == v4)
    {
      v9 = 0;
    }

    else
    {
      v8 = *(a1 + 472) + *(a1 + 464);
      v9 = *(v4 + ((v8 >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * v8;
    }

    if (v7 == v9)
    {
      return;
    }

    v10 = v7[1];
    v70 = *v7;
    v74 = *(a1 + 328);
    v75 = *(v10 + 16);
    v73 = v10;
    if (v75 != v74)
    {
      v11 = *v76;
      if (!*v76)
      {
        goto LABEL_21;
      }

      v12 = v76;
      do
      {
        v13 = v11[4];
        v14 = v13 >= v75;
        v15 = v13 < v75;
        if (v14)
        {
          v12 = v11;
        }

        v11 = v11[v15];
      }

      while (v11);
      if (v12 == v76 || v75 < v12[4])
      {
LABEL_21:
        v16 = qword_100BCE910;
        if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_ERROR))
        {
          sub_10083A61C(&v84, v85, v16);
        }

        v71 = sub_1004EAB10((a1 + 432), v6, v7);
        v7 = v17;
        if (v73)
        {
          *(v73 + 24) = &off_100AE0A78;
          v18 = *(v73 + 32);
          if (v18)
          {
            sub_10000C808(v18);
          }

          operator delete();
        }

        if (*(a1 + 104))
        {
          v19 = sub_100007EE8();
          v83[0] = _NSConcreteStackBlock;
          v83[1] = 3221225472;
          v83[2] = sub_1004EF7E0;
          v83[3] = &unk_100AE0860;
          v83[4] = a1;
          v83[5] = v70;
          sub_10000CA94(v19, v83);
        }

        goto LABEL_120;
      }
    }

    v68 = v7;
    v71 = v6;
    v69 = [*v10 mutableCopy];
    v20 = +[NSMutableArray array];
    v81 = 0u;
    v82 = 0u;
    v79 = 0u;
    v80 = 0u;
    obj = v69;
    v21 = [obj countByEnumeratingWithState:&v79 objects:v90 count:16];
    if (v21)
    {
      break;
    }

LABEL_112:

    [obj removeObjectsInArray:v20];
    if (![obj count])
    {
      sub_1004EAB10((a1 + 432), v71, v68);
      *(v73 + 24) = &off_100AE0A78;
      v64 = *(v73 + 32);
      if (v64)
      {
        sub_10000C808(v64);
      }

      operator delete();
    }

    v62 = [obj copy];
    v63 = *v73;
    *v73 = v62;

    if (v68 + 16 - *v71 == 4096)
    {
      v7 = *(v71 + 1);
      v71 += 8;
    }

    else
    {
      v7 = (v68 + 16);
    }

LABEL_120:
    v4 = *(a1 + 440);
    v5 = *(a1 + 448);
    v6 = v71;
  }

  v22 = *v80;
LABEL_31:
  v23 = 0;
  while (1)
  {
    if (*v80 != v22)
    {
      objc_enumerationMutation(obj);
    }

    v24 = *(*(&v79 + 1) + 8 * v23);
    if (qword_100B50F78 != -1)
    {
      sub_10083A29C();
    }

    if (!sub_100052A90(qword_100B50F70, v24))
    {
      v28 = qword_100BCE910;
      if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v87 = v24;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Dropping update of device %{public}@ as it is no longer connected", buf, 0xCu);
      }

      goto LABEL_66;
    }

    if (![*(a1 + 488) containsObject:v24])
    {
      break;
    }

    v25 = qword_100BCE910;
    if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v87 = v24;
      v26 = v25;
      v27 = "Skipping update of device %{public}@ as it is being stalled";
LABEL_40:
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, v27, buf, 0xCu);
    }

LABEL_67:
    if (++v23 == v21)
    {
      v61 = [obj countByEnumeratingWithState:&v79 objects:v90 count:16];
      v21 = v61;
      if (v61)
      {
        goto LABEL_31;
      }

      goto LABEL_112;
    }
  }

  if (v75 != v74)
  {
    v29 = v76;
    v30 = *v76;
    if (!*v76)
    {
      goto LABEL_53;
    }

    v31 = *(v73 + 16);
    v32 = v76;
    do
    {
      v33 = v30[4];
      v14 = v33 >= v31;
      v34 = v33 < v31;
      if (v14)
      {
        v32 = v30;
      }

      v30 = v30[v34];
    }

    while (v30);
    v29 = v76;
    if (v32 == v76 || v31 < v32[4])
    {
LABEL_53:
      v32 = v29;
    }

    for (i = v32[5]; i != v32[6]; i += 18)
    {
      v36 = sub_10004DF60(i);
      v37 = [v36 isEqual:v24];

      if (v37)
      {
        if (*(i + 16) == 2)
        {
          goto LABEL_69;
        }

        if (*(i + 16))
        {
          v44 = 1;
          goto LABEL_76;
        }

        break;
      }
    }

LABEL_64:
    v41 = qword_100BCE910;
    if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v87 = v24;
      _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "Dropping update of device %{public}@ as it is no longer subscribed", buf, 0xCu);
    }

    goto LABEL_66;
  }

  for (j = *(a1 + 336); ; j += 20)
  {
    if (j == *(a1 + 344))
    {
      goto LABEL_64;
    }

    v39 = sub_10004DF60(j);
    v40 = [v39 isEqual:v24];

    if (v40)
    {
      break;
    }
  }

LABEL_69:
  v42 = [*(a1 + 504) objectForKey:v24];
  if (v42)
  {

LABEL_72:
    v43 = qword_100BCE910;
    if (!os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_67;
    }

    *buf = 138543362;
    v87 = v24;
    v26 = v43;
    v27 = "Skipping update of device %{public}@ as we're still waiting on an indication response";
    goto LABEL_40;
  }

  if ([*(a1 + 496) containsObject:v24])
  {
    goto LABEL_72;
  }

  v44 = 0;
LABEL_76:
  sub_10004DFB4(buf, v24);
  v45 = sub_10004E34C(a1 + 536, buf);
  v46 = qword_100BCE910;
  if (v72 == v45)
  {
    if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v87 = v24;
      _os_log_error_impl(&_mh_execute_header, v46, OS_LOG_TYPE_ERROR, "Dropping update of device %{public}@ as we have no ATT session", buf, 0xCu);
    }

LABEL_66:
    [v20 addObject:v24];
    goto LABEL_67;
  }

  if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v47 = "indication";
    if (v44)
    {
      v47 = "notification";
    }

    v87 = v47;
    v88 = 2114;
    v89 = v24;
    _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEFAULT, "Sending %{public}s to device %{public}@", buf, 0x16u);
  }

  v78 = 0;
  sub_1000216B4(&v78);
  v48 = *(v73 + 8);
  if (v48)
  {
    v49 = *(v45 + 48);
    v50 = *(v48 + 8);
    v51 = sub_10000C5F8(v73 + 24);
    v52 = sub_10000C5E0(v73 + 24);
    v53 = sub_1002D9A70(v49, v50, v44, v51, v52);
  }

  else
  {
    v53 = 114;
  }

  sub_100022214(&v78);
  if (!v53)
  {
    if ((v44 & 1) == 0)
    {
      if (v70)
      {
        v57 = [*(a1 + 504) objectForKey:v24];
        v58 = v57 == 0;

        if (!v58)
        {
          v59 = qword_100BCE910;
          if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_FAULT))
          {
            *buf = 138543362;
            v87 = v24;
            _os_log_fault_impl(&_mh_execute_header, v59, OS_LOG_TYPE_FAULT, "Already tracking indication for device %{public}@", buf, 0xCu);
          }
        }

        [*(a1 + 504) setObject:v70 forKey:v24];
      }

      else
      {
        if ([*(a1 + 496) containsObject:v24])
        {
          v60 = qword_100BCE910;
          if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_FAULT))
          {
            *buf = 138543362;
            v87 = v24;
            _os_log_fault_impl(&_mh_execute_header, v60, OS_LOG_TYPE_FAULT, "Already tracking services changed for device %{public}@", buf, 0xCu);
          }
        }

        [*(a1 + 496) addObject:v24];
      }
    }

LABEL_109:
    [v20 addObject:v24];
LABEL_110:
    sub_10002249C(&v78);
    goto LABEL_67;
  }

  if (v53 == 146)
  {
    v55 = qword_100BCE910;
    if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v87 = v24;
      _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEFAULT, "Stalling updates to device %{public}@ as it is performing an MTU exchange", buf, 0xCu);
    }

    if ([*(a1 + 488) containsObject:v24])
    {
      v56 = qword_100BCE910;
      if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_FAULT))
      {
        *buf = 138543362;
        v87 = v24;
        _os_log_fault_impl(&_mh_execute_header, v56, OS_LOG_TYPE_FAULT, "Already stalling device %{public}@", buf, 0xCu);
      }
    }

    [*(a1 + 488) addObject:v24];
    goto LABEL_110;
  }

  if (v53 != 410)
  {
    v54 = qword_100BCE910;
    if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v87 = v24;
      v88 = 1024;
      LODWORD(v89) = v53;
      _os_log_error_impl(&_mh_execute_header, v54, OS_LOG_TYPE_ERROR, "Failed to send update to device %{public}@ with result %{bluetooth:OI_STATUS}u", buf, 0x12u);
    }

    goto LABEL_109;
  }

  v65 = qword_100BCE910;
  if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v65, OS_LOG_TYPE_DEFAULT, "TX queue is full - stalling all updates", buf, 2u);
  }

  *(a1 + 480) = 1;
  [obj removeObjectsInArray:v20];
  v66 = [obj copy];
  v67 = *v73;
  *v73 = v66;

  sub_10002249C(&v78);
}

void sub_1004EC63C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, int a34, __int16 a35, char a36, char a37)
{
  sub_10002249C(&a37);

  _Unwind_Resume(a1);
}

uint64_t sub_1004EC6F8(uint64_t a1, unsigned int a2)
{
  v10[0] = 0;
  v10[1] = 0;
  sub_100007F88(v10, a1 + 40);
  v4 = *(a1 + 392);
  if (!v4)
  {
    goto LABEL_17;
  }

  v5 = a1 + 392;
  do
  {
    v6 = *(v4 + 32);
    v7 = v6 >= a2;
    v8 = v6 < a2;
    if (v7)
    {
      v5 = v4;
    }

    v4 = *(v4 + 8 * v8);
  }

  while (v4);
  if (v5 != a1 + 392 && *(v5 + 32) <= a2)
  {
    if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_ERROR))
    {
      sub_10083A65C();
    }

    sub_10002717C((a1 + 384), v5);
    operator delete(v5);
  }

  else
  {
LABEL_17:
    if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_ERROR))
    {
      sub_10083A6CC();
    }
  }

  return sub_1000088CC(v10);
}

uint64_t sub_1004EC7EC(uint64_t a1, uint64_t a2, int a3)
{
  v14[0] = 0;
  v14[1] = 0;
  sub_100007F88(v14, a1 + 40);
  v6 = sub_1004EC990(a1, a2);
  if (v6)
  {
    v7 = qword_100BCE910;
    if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109378;
      v16 = a3;
      v17 = 2114;
      v18 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "MTU is now %u for device %{public}@", buf, 0x12u);
    }

    if (*(a1 + 104))
    {
      v8 = sub_100007EE8();
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_1004ECA4C;
      v10[3] = &unk_100AF9820;
      v12 = a1;
      v11 = v6;
      v13 = a3;
      sub_10000CA94(v8, v10);
    }
  }

  return sub_1000088CC(v14);
}

void sub_1004EC958(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);

  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

id sub_1004EC990(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 536);
  if (v2 == (a1 + 544))
  {
LABEL_9:
    if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_ERROR))
    {
      sub_10083A73C();
    }

    v6 = 0;
  }

  else
  {
    while (*(v2 + 6) != a2)
    {
      v3 = *(v2 + 1);
      if (v3)
      {
        do
        {
          v4 = v3;
          v3 = *v3;
        }

        while (v3);
      }

      else
      {
        do
        {
          v4 = *(v2 + 2);
          v5 = *v4 == v2;
          v2 = v4;
        }

        while (!v5);
      }

      v2 = v4;
      if (v4 == (a1 + 544))
      {
        goto LABEL_9;
      }
    }

    v6 = sub_10004DF60(v2 + 32);
  }

  return v6;
}

uint64_t sub_1004ECA80(uint64_t a1, uint64_t a2)
{
  v15[0] = 0;
  v15[1] = 0;
  sub_100007F88(v15, a1 + 40);
  v4 = sub_1004EC990(a1, a2);
  if (v4)
  {
    if ([*(a1 + 496) containsObject:v4])
    {
      v5 = qword_100BCE910;
      if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        *&buf[4] = "indicationConfirmed";
        *&buf[12] = 2114;
        *&buf[14] = v4;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s - Server Indication - Device:%{public}@", buf, 0x16u);
      }

      [*(a1 + 496) removeObject:v4];
      v6 = *(a1 + 336);
      v7 = *(a1 + 344);
      while (v6 != v7)
      {
        memset(buf, 0, 20);
        uuid_copy(buf, v6);
        *&buf[16] = *(v6 + 16);
        v8 = sub_10004DF60(buf);
        [v4 isEqual:v8];

        v6 += 20;
      }
    }

    else
    {
      v9 = [*(a1 + 504) objectForKey:v4];
      v10 = qword_100BCE910;
      if (v9)
      {
        if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          *&buf[4] = "indicationConfirmed";
          *&buf[12] = 2114;
          *&buf[14] = v4;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%s - App Indication - Device:%{public}@", buf, 0x16u);
        }

        v11 = [*(a1 + 504) objectForKey:v4];
        [*(a1 + 504) removeObjectForKey:v4];
        if (*(a1 + 104))
        {
          v12 = sub_100007EE8();
          v14[0] = _NSConcreteStackBlock;
          v14[1] = 3221225472;
          v14[2] = sub_1004ECD3C;
          v14[3] = &unk_100AE0860;
          v14[4] = a1;
          v14[5] = v11;
          sub_10000CA94(v12, v14);
        }
      }

      else if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_ERROR))
      {
        sub_10083A770();
      }
    }

    sub_1004EBA6C(a1);
  }

  return sub_1000088CC(v15);
}

void sub_1004ECD00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);

  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1004ECD68(uint64_t a1, uint64_t a2)
{
  v8[0] = 0;
  v8[1] = 0;
  sub_100007F88(v8, a1 + 40);
  if (a2)
  {
    v4 = sub_1004EC990(a1, a2);
    if (v4)
    {
      v5 = qword_100BCE910;
      if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v10 = v4;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Received device %{public}@ ready event from stack", buf, 0xCu);
      }

      if ([*(a1 + 488) containsObject:v4])
      {
        [*(a1 + 488) removeObject:v4];
        sub_1004EBA6C(a1);
      }
    }
  }

  else
  {
    v6 = qword_100BCE910;
    if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Received update queue ready event from stack", buf, 2u);
    }

    *(a1 + 480) = 0;
    sub_1004EBA6C(a1);
  }

  return sub_1000088CC(v8);
}

uint64_t sub_1004ECEF4(uint64_t a1, uint64_t a2, unint64_t a3, int a4, void (*a5)(uint64_t, uint64_t, void))
{
  v23 = a2;
  v22[0] = 0;
  v22[1] = 0;
  sub_100007F88(v22, a1 + 40);
  v10 = a1 + 520;
  v11 = *(a1 + 520);
  if (!v11)
  {
    goto LABEL_9;
  }

  v12 = a1 + 520;
  do
  {
    v13 = *(v11 + 32);
    v14 = v13 >= a3;
    v15 = v13 < a3;
    if (v14)
    {
      v12 = v11;
    }

    v11 = *(v11 + 8 * v15);
  }

  while (v11);
  if (v12 == v10 || *(v12 + 32) > a3)
  {
LABEL_9:
    v12 = a1 + 520;
  }

  if (v12 != v10 || a4 == 0)
  {
    if (a4)
    {
      v17 = sub_1004EC990(a1, a3);
      if (v17)
      {
        if (*(a1 + 104))
        {
          v24 = &v23;
          v18 = sub_1004F3820(a1 + 384, &v23);
          *(v18 + 10) = 0;
          *(v18 + 44) = 1;
          *(v18 + 45) = 0;
          *(v18 + 47) = 0;
          v18[6] = a5;
          sub_100007EE8();
          operator new();
        }

        v20 = 242;
      }

      else
      {
        v20 = 14;
      }
    }

    else
    {
      v20 = 0;
    }
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_ERROR))
    {
      sub_10083A7F8();
    }

    v20 = 14;
  }

  if (v12 != v10)
  {
    sub_1004F2D24((a1 + 512), v12);
  }

  if (a5)
  {
    LOBYTE(v24) = 0;
    sub_1000216B4(&v24);
    a5(a2, v20, 0);
    sub_10002249C(&v24);
  }

  return sub_1000088CC(v22);
}

uint64_t sub_1004ED148(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v15 = 0;
  v16 = 0;
  v14[0] = 0;
  v14[1] = 0;
  sub_100007F88(v14, a1 + 40);
  if (*(a1 + 104) && sub_1004ED28C(a1, a2, &v15, &v16) && v15)
  {
    v6 = sub_1004EC990(a1, a3);
    if (v6)
    {
      v7 = *(v16 + 16);
      v8 = sub_100007EE8();
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_1004ED564;
      v10[3] = &unk_100AE1228;
      v12 = a1;
      v11 = v6;
      v13 = v7;
      sub_10000CA94(v8, v10);
    }
  }

  return sub_1000088CC(v14);
}

void sub_1004ED258(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);

  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1004ED28C(uint64_t a1, uint64_t a2, uint64_t *a3, void *a4)
{
  v30[0] = 0;
  v30[1] = 0;
  sub_100007F88(v30, a1 + 40);
  v9 = *(a1 + 360);
  if (v9 == *(a1 + 368))
  {
LABEL_46:
    if (a3)
    {
      *a3 = 0;
    }

    v4 = 0;
    if (a4)
    {
      *a4 = 0;
    }

    goto LABEL_53;
  }

LABEL_2:
  v10 = *v9;
  if (a4)
  {
    *a4 = v10;
  }

  if (*(v10 + 8) != a2)
  {
    __p = 0;
    v28 = 0;
    v29 = 0;
    sub_100007F20(&__p, (*v9 + 104));
    v11 = __p;
    v12 = __p;
    if (__p != v28)
    {
      do
      {
        if (*(*v12 + 8) == a2)
        {
          v19 = 0;
          if (a3)
          {
            *a3 = *v9;
          }

          v4 = *v12;
          goto LABEL_39;
        }

        v12 += 8;
      }

      while (v12 != v28);
    }

    v24 = 0;
    v25 = 0;
    v26 = 0;
    sub_100007F20(&v24, (*v9 + 136));
    v13 = v24;
    if (v24 == v25)
    {
      v19 = 1;
      if (v24)
      {
        goto LABEL_37;
      }

      goto LABEL_38;
    }

    while (1)
    {
      v14 = *v13;
      if (*(*v13 + 8) == a2)
      {
        v19 = 0;
        if (a3)
        {
          *a3 = *v9;
        }

        v4 = *v13;
LABEL_36:
        v13 = v24;
        if (v24)
        {
LABEL_37:
          v25 = v13;
          operator delete(v13);
        }

LABEL_38:
        v11 = __p;
LABEL_39:
        if (v11)
        {
          v28 = v11;
          operator delete(v11);
        }

        if (!v19)
        {
          goto LABEL_53;
        }

        if (++v9 == *(a1 + 368))
        {
          goto LABEL_46;
        }

        goto LABEL_2;
      }

      if (*(*(v14 + 96) + 8) == a2)
      {
        v19 = 0;
        if (a3)
        {
          *a3 = v14;
          v4 = *(*v13 + 96);
        }

        else
        {
          v4 = *(v14 + 96);
        }

        goto LABEL_36;
      }

      v21 = 0;
      v22 = 0;
      v23 = 0;
      sub_100007F20(&v21, (*v13 + 104));
      v15 = v21;
      v16 = v21;
      if (v21 == v22)
      {
        break;
      }

      while (*(*v16 + 8) != a2)
      {
        v16 += 8;
        if (v16 == v22)
        {
          goto LABEL_14;
        }
      }

      v18 = 0;
      if (!a3)
      {
        v17 = 1;
        v4 = *v16;
        if (!v21)
        {
          goto LABEL_19;
        }

LABEL_18:
        v22 = v15;
        operator delete(v15);
        goto LABEL_19;
      }

      *a3 = *v13;
      v4 = *v16;
      v17 = 1;
      if (v15)
      {
        goto LABEL_18;
      }

LABEL_19:
      if (!v18)
      {
        goto LABEL_35;
      }

      v13 += 8;
      if (v13 == v25)
      {
        v17 = 8;
LABEL_35:
        v19 = (v17 & 7) == 0;
        goto LABEL_36;
      }
    }

LABEL_14:
    v17 = 0;
    v18 = 1;
    if (!v21)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  if (a3)
  {
    *a3 = 0;
  }

  v4 = *v9;
LABEL_53:
  sub_1000088CC(v30);
  return v4;
}

void sub_1004ED520(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, char a19)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_1000088CC(&a19);
  _Unwind_Resume(a1);
}

void sub_1004ED598(void *a1, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, uint64_t, void, void))
{
  v40 = a3;
  v39 = a4;
  v37 = 0;
  v38 = 0;
  v36[0] = 0;
  v36[1] = 0;
  sub_100007F88(v36, (a1 + 5));
  v35 = 0;
  if (*(sub_10000C7D0() + 800) >> 3 >= 0x271u && *(sub_10000C7D0() + 800) >> 4 <= 0x176u && qword_100B6EF98 != -1)
  {
    sub_10083A82C();
  }

  v12 = sub_1004ED28C(a1, a2, &v38, &v37);
  if (v12 && v38)
  {
    if ((*(v38 + 72) & 2) == 0)
    {
      if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_ERROR))
      {
        sub_10083A8EC();
      }

      v13 = 0;
      v14 = 2;
      goto LABEL_14;
    }

    v13 = sub_1004EC990(a1, a5);
    if (!v13)
    {
      v14 = 14;
      goto LABEL_14;
    }

    if (v37 != a1[14] && v37 != a1[16] && v37 != a1[18])
    {
      if (a1[13])
      {
        v15 = *(v12 + 16);
        v34.__r_.__value_.__r.__words[0] = &v39;
        v16 = sub_1004F3820((a1 + 48), &v39);
        *(v16 + 10) = v15;
        *(v16 + 11) = 0;
        v16[6] = a6;
        sub_100007EE8();
        operator new();
      }

      v14 = 242;
      goto LABEL_14;
    }

    v17 = sub_10000E92C();
    sub_100007E30(&v34, "GATT");
    sub_100007E30(&__p, "DUMMY_DIS");
    (*(*v17 + 72))(v17, &v34, &__p, &v35);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v34.__r_.__value_.__l.__data_);
    }

    memset(&v34, 0, sizeof(v34));
    sub_100007E30(&v34, "Dummy Apple DIS");
    memset(&__p, 0, sizeof(__p));
    v18 = sub_10000E92C();
    sub_100007E30(&v32, "GATT");
    sub_100007E30(&buf, "DUMMY_DIS_NAME");
    v19 = (*(*v18 + 56))(v18, &v32, &buf, &__p);
    if (v42 < 0)
    {
      operator delete(buf);
    }

    if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v32.__r_.__value_.__l.__data_);
      if (!v19)
      {
        goto LABEL_33;
      }
    }

    else if (!v19)
    {
LABEL_33:
      if (v12 != a1[15])
      {
        if (v12 == a1[19])
        {
          if (v35 == 1)
          {
            memset(&v32, 0, sizeof(v32));
            sub_1004EE4EC(" MFGR Name", &v34.__r_.__value_.__l.__data_, &v32);
            v20 = a1[19];
            if ((v32.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v21 = &v32;
            }

            else
            {
              v21 = v32.__r_.__value_.__r.__words[0];
            }

            if ((v32.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              size = HIBYTE(v32.__r_.__value_.__r.__words[2]);
            }

            else
            {
              size = v32.__r_.__value_.__l.__size_;
            }

            goto LABEL_89;
          }
        }

        else if (v12 == a1[20])
        {
          if (v35 == 1)
          {
            memset(&v32, 0, sizeof(v32));
            sub_1004EE4EC(" Model Number", &v34.__r_.__value_.__l.__data_, &v32);
            v20 = a1[20];
            if ((v32.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v21 = &v32;
            }

            else
            {
              v21 = v32.__r_.__value_.__r.__words[0];
            }

            if ((v32.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              size = HIBYTE(v32.__r_.__value_.__r.__words[2]);
            }

            else
            {
              size = v32.__r_.__value_.__l.__size_;
            }

            goto LABEL_89;
          }
        }

        else
        {
          if (v12 == a1[21] && v35 == 1)
          {
            memset(&v32, 0, sizeof(v32));
            sub_1004EE4EC(" Serial Number", &v34.__r_.__value_.__l.__data_, &v32);
            v20 = a1[21];
            if ((v32.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v21 = &v32;
            }

            else
            {
              v21 = v32.__r_.__value_.__r.__words[0];
            }

            if ((v32.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              size = HIBYTE(v32.__r_.__value_.__r.__words[2]);
            }

            else
            {
              size = v32.__r_.__value_.__l.__size_;
            }

LABEL_89:
            sub_10000C704(&buf, v21, size);
            sub_10000AE20(v20 + 72, &buf);
            *&buf = &off_100AE0A78;
            if (*(&buf + 1))
            {
              sub_10000C808(*(&buf + 1));
            }

            if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v32.__r_.__value_.__l.__data_);
            }

            goto LABEL_131;
          }

          if (v12 == a1[22] && v35 == 1)
          {
            memset(&v32, 0, sizeof(v32));
            sub_1004EE4EC(" HW Revision", &v34.__r_.__value_.__l.__data_, &v32);
            v20 = a1[22];
            if ((v32.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v21 = &v32;
            }

            else
            {
              v21 = v32.__r_.__value_.__r.__words[0];
            }

            if ((v32.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              size = HIBYTE(v32.__r_.__value_.__r.__words[2]);
            }

            else
            {
              size = v32.__r_.__value_.__l.__size_;
            }

            goto LABEL_89;
          }

          if (v12 == a1[23] && v35 == 1)
          {
            memset(&v32, 0, sizeof(v32));
            sub_1004EE4EC(" FW Revision", &v34.__r_.__value_.__l.__data_, &v32);
            v20 = a1[23];
            if ((v32.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v21 = &v32;
            }

            else
            {
              v21 = v32.__r_.__value_.__r.__words[0];
            }

            if ((v32.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              size = HIBYTE(v32.__r_.__value_.__r.__words[2]);
            }

            else
            {
              size = v32.__r_.__value_.__l.__size_;
            }

            goto LABEL_89;
          }

          if (v12 == a1[24] && v35 == 1)
          {
            memset(&v32, 0, sizeof(v32));
            sub_1004EE4EC(" SW Revision", &v34.__r_.__value_.__l.__data_, &v32);
            v20 = a1[24];
            if ((v32.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v21 = &v32;
            }

            else
            {
              v21 = v32.__r_.__value_.__r.__words[0];
            }

            if ((v32.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              size = HIBYTE(v32.__r_.__value_.__r.__words[2]);
            }

            else
            {
              size = v32.__r_.__value_.__l.__size_;
            }

            goto LABEL_89;
          }

          v28 = a1[25];
          if (v12 == v28 && v35 == 1)
          {
            BYTE2(buf) = 26;
            LOWORD(buf) = 6682;
            sub_10000C704(&v32, &buf, 3uLL);
            sub_10000AE20(v28 + 72, &v32);
            goto LABEL_126;
          }

          v29 = a1[26];
          if (v12 == v29 && v35 == 1)
          {
            memset(&buf, 27, 3);
            sub_10000C704(&v32, &buf, 3uLL);
            sub_10000AE20(v29 + 72, &v32);
            goto LABEL_126;
          }

          v30 = a1[27];
          if (v12 == v30 && v35 == 1)
          {
            BYTE2(buf) = 28;
            LOWORD(buf) = 7196;
            sub_10000C704(&v32, &buf, 3uLL);
            sub_10000AE20(v30 + 72, &v32);
            goto LABEL_126;
          }

          v31 = a1[28];
          if (v12 == v31 && v35 == 1)
          {
            *&buf = 0x3837363534333231;
            sub_10000C704(&v32, &buf, 8uLL);
            sub_10000AE20(v31 + 72, &v32);
LABEL_126:
            v32.__r_.__value_.__r.__words[0] = &off_100AE0A78;
            if (v32.__r_.__value_.__l.__size_)
            {
              sub_10000C808(v32.__r_.__value_.__l.__size_);
            }
          }
        }

LABEL_131:
        if (!sub_10000C5F8(v12 + 72) && os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_FAULT))
        {
          sub_10083A8B0();
        }

        if (sub_10000C5E0(v12 + 72) >= a3)
        {
          if (sub_10000C5E0(v12 + 72) != a3)
          {
            operator new[]();
          }

          v14 = 0;
        }

        else
        {
          v14 = 7;
        }

        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v34.__r_.__value_.__l.__data_);
        }

        goto LABEL_14;
      }

      memset(&v32, 0, sizeof(v32));
      if (v35 & v19)
      {
        v23 = &v34;
      }

      else
      {
        if (qword_100B50F78 != -1)
        {
          sub_10083A29C();
        }

        if (!sub_100580920(qword_100B50F70, v13))
        {
          goto LABEL_66;
        }

        v23 = (a1 + 38);
      }

      std::string::operator=(&v32, v23);
LABEL_66:
      v24 = HIBYTE(v32.__r_.__value_.__r.__words[2]);
      if ((v32.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v24 = v32.__r_.__value_.__l.__size_;
      }

      if (!v24)
      {
        v25 = sub_10000C798();
        if ((*(*v25 + 16))(v25, &v32))
        {
          std::string::assign(&v32, "iDevice");
        }
      }

      if (*(sub_10000C7D0() + 800) >= 0x7D0u && *(sub_10000C7D0() + 800) <= 0xF9Fu && *(sub_10000C7D0() + 800) >= 0xBB8u)
      {
        if (qword_100B6EFA8 != -1)
        {
          sub_10083A888();
        }

        if (byte_100B6EFA0 == 1)
        {
          std::string::assign(&v32, "Apple Watch");
          v26 = qword_100BCE910;
          if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_DEFAULT))
          {
            v27 = &v32;
            if ((v32.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              v27 = v32.__r_.__value_.__r.__words[0];
            }

            LODWORD(buf) = 136315138;
            *(&buf + 4) = v27;
            _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Override Name to %s", &buf, 0xCu);
          }
        }
      }

      if (byte_100B6EF90 == 1)
      {
        std::string::assign(&v32, "Apple Watch");
      }

      v20 = a1[15];
      if ((v32.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v21 = &v32;
      }

      else
      {
        v21 = v32.__r_.__value_.__r.__words[0];
      }

      if ((v32.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v32.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v32.__r_.__value_.__l.__size_;
      }

      goto LABEL_89;
    }

    std::string::operator=(&v34, &__p);
    goto LABEL_33;
  }

  if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_ERROR))
  {
    sub_10083A854();
  }

  v13 = 0;
  v14 = 10;
LABEL_14:
  v34.__r_.__value_.__s.__data_[0] = 0;
  sub_1000216B4(&v34);
  a6(a4, v14, 0, 0);
  sub_10002249C(&v34);
  sub_1000088CC(v36);
}

void sub_1004EE07C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, atomic_uint *a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, char a29)
{
  if (a11)
  {
    sub_10000C808(a11);
  }

  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  sub_1000088CC(&a29);
  _Unwind_Resume(a1);
}

void sub_1004EE27C(id a1)
{
  v1 = sub_10000E92C();
  sub_100007E30(buf, "Device");
  sub_100007E30(__p, "MaskLocalNameAsAppleWatch");
  v2 = (*(*v1 + 72))(v1, buf, __p, &byte_100B6EF90);
  v3 = byte_100B6EF90;
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  v4 = v2 & v3;
  if (v9 < 0)
  {
    operator delete(*buf);
    if (!v4)
    {
      return;
    }
  }

  else if (!v4)
  {
    return;
  }

  v5 = qword_100BCE910;
  if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Mask as Apple Watch in gattDatabaseAccessedCb", buf, 2u);
  }
}

void sub_1004EE380(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

void sub_1004EE3B4(id a1)
{
  v1 = sub_10000E92C();
  sub_100007E30(buf, "Device");
  sub_100007E30(__p, "MaskCODandNameAsAppleWatch");
  v2 = (*(*v1 + 72))(v1, buf, __p, &byte_100B6EFA0);
  v3 = byte_100B6EFA0;
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  v4 = v2 & v3;
  if (v9 < 0)
  {
    operator delete(*buf);
    if (!v4)
    {
      return;
    }
  }

  else if (!v4)
  {
    return;
  }

  v5 = qword_100BCE910;
  if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Mask as Apple Watch", buf, 2u);
  }
}

void sub_1004EE4B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1004EE4EC@<X0>(char *__s@<X1>, const void **a2@<X0>, void *a3@<X8>)
{
  if (*(a2 + 23) >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    v6 = a2[1];
  }

  v7 = strlen(__s);
  a3[1] = 0;
  a3[2] = 0;
  *a3 = 0;
  result = sub_1003A5170(a3, v6 + v7);
  if (*(a3 + 23) < 0)
  {
    a3 = *a3;
  }

  if (v6)
  {
    if (*(a2 + 23) >= 0)
    {
      v9 = a2;
    }

    else
    {
      v9 = *a2;
    }

    result = memmove(a3, v9, v6);
  }

  v10 = a3 + v6;
  if (v7)
  {
    result = memmove(v10, __s, v7);
  }

  v10[v7] = 0;
  return result;
}

uint64_t sub_1004EE5B0(uint64_t a1, uint64_t a2, int a3, unsigned __int16 a4, uint64_t a5, unsigned int a6, unint64_t a7, void (*a8)(void, uint64_t, void, void))
{
  v46 = a6;
  v44 = 0;
  v45 = a7;
  v42[1] = 0;
  v43 = 0;
  v42[0] = 0;
  sub_100007F88(v42, a1 + 40);
  v15 = sub_1004ED28C(a1, a2, &v44, &v43);
  if (v15)
  {
    if (!v44)
    {
LABEL_5:
      if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_ERROR))
      {
        sub_10083A9EC();
      }

      v16 = 3;
      goto LABEL_11;
    }

    if (a8)
    {
      if ((*(v44 + 72) & 8) == 0)
      {
        goto LABEL_5;
      }
    }

    else if ((*(v44 + 72) & 4) == 0)
    {
      goto LABEL_5;
    }

    if (a3)
    {
      __p = 0;
      v40 = 0;
      v41 = 0;
      sub_100007F20(&__p, (v44 + 104));
      v18 = __p;
      if (__p == v40)
      {
        goto LABEL_29;
      }

      while (1)
      {
        v19 = *(*v18 + 8);
        v20 = *(v19 + 20);
        v48 = *(v19 + 4);
        LODWORD(v49) = v20;
        sub_10000D03C(&buf, &v48);
        v48 = xmmword_1008A4AD0;
        LODWORD(v49) = 0;
        if (sub_10004E15C(v21, &v48))
        {
          break;
        }

        v18 += 8;
        if (v18 == v40)
        {
          goto LABEL_29;
        }
      }

      if ((*(*v18 + 72) & 1) == 0)
      {
LABEL_29:
        if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_ERROR))
        {
          sub_10083A9B8();
        }

        v16 = 3;
LABEL_32:
        if (__p)
        {
          v40 = __p;
          operator delete(__p);
        }

        goto LABEL_11;
      }

      v48 = 0u;
      v49 = 0u;
      LODWORD(v48) = *(v15 + 16);
      WORD2(v48) = a4;
      v28 = *(a5 + 8);
      *(&v48 + 1) = &off_100AE0A78;
      *&v49 = v28;
      if (v28)
      {
        sub_10000C69C(v28);
      }

      BYTE8(v49) = 0;
      v29 = *(a1 + 520);
      if (v29)
      {
        v30 = a1 + 520;
        do
        {
          v31 = *(v29 + 32);
          v32 = v31 >= a7;
          v33 = v31 < a7;
          if (v32)
          {
            v30 = v29;
          }

          v29 = *(v29 + 8 * v33);
        }

        while (v29);
        if (v30 != a1 + 520 && *(v30 + 32) <= a7)
        {
          v47 = 0;
          v35 = *(v30 + 40);
          if (v35 == *(v30 + 48))
          {
            v36 = 0;
          }

          else
          {
            LODWORD(v36) = 0;
            do
            {
              v36 = v36 + sub_10000C5E0(v35 + 8);
              v35 += 32;
            }

            while (v35 != *(v30 + 48));
          }

          if ((sub_10000C5E0(a5) + v36) >= 0x201)
          {
            v37 = qword_100BCE910;
            if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_ERROR))
            {
              v38 = sub_10000C5E0(a5);
              sub_10083A954(v36, v38, &buf, v37);
            }

            v16 = 9;
            goto LABEL_50;
          }

          sub_1004EA89C(a1, **(v30 + 40), &v47);
          if (v47 != v43)
          {
            if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_ERROR))
            {
              sub_10083A920();
            }

            v16 = 244;
            goto LABEL_50;
          }
        }
      }

      buf.n128_u64[0] = &v45;
      v34 = sub_1004F38F4(a1 + 512, &v45);
      sub_1004F39C8((v34 + 5), &v48);
      v16 = 0;
LABEL_50:
      *(&v48 + 1) = &off_100AE0A78;
      if (v49)
      {
        sub_10000C808(v49);
      }

      goto LABEL_32;
    }

    v22 = sub_1004EC990(a1, a7);
    if (v22)
    {
      v48 = 0u;
      v49 = 0u;
      LODWORD(v48) = *(v15 + 16);
      WORD2(v48) = a4;
      v23 = *(a5 + 8);
      *(&v48 + 1) = &off_100AE0A78;
      *&v49 = v23;
      if (v23)
      {
        sub_10000C69C(v23);
      }

      BYTE8(v49) = a8 == 0;
      __p = 0;
      v40 = 0;
      v41 = 0;
      if (*(a1 + 104))
      {
        if (a8 && (v24 = *(v15 + 16), v47 = &v46, v25 = sub_1004F3820(a1 + 384, &v46), *(v25 + 10) = v24, *(v25 + 11) = 0, v25[6] = a8, v26 = v40, v40 < v41))
        {
          sub_1004F3A0C(&__p, &v48);
          v27 = (v26 + 32);
        }

        else
        {
          v27 = sub_1004F3A90(&__p, &v48);
        }

        v40 = v27;
        sub_100007EE8();
        operator new();
      }

      v16 = 242;
      buf.n128_u64[0] = &__p;
      sub_1004F25AC(&buf);
      *(&v48 + 1) = &off_100AE0A78;
      if (v49)
      {
        sub_10000C808(v49);
      }
    }

    else
    {
      v16 = 14;
    }
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_ERROR))
    {
      sub_10083A854();
    }

    v16 = 10;
  }

LABEL_11:
  if (a8)
  {
    LOBYTE(v48) = 0;
    sub_1000216B4(&v48);
    a8(v46, v16, 0, 0);
    sub_10002249C(&v48);
  }

  return sub_1000088CC(v42);
}

void sub_1004EEAF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, atomic_uint *a21)
{
  if (a21)
  {
    sub_10000C808(a21);
  }

  if (__p)
  {
    operator delete(__p);
  }

  sub_1000088CC(&a12);
  _Unwind_Resume(a1);
}

uint64_t sub_1004EEBC4(void *a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, uint64_t, __int16 *, void))
{
  v27 = 0;
  v26[0] = 0;
  v26[1] = 0;
  sub_100007F88(v26, (a1 + 5));
  v12 = sub_1004EC990(a1, a5);
  if (!v12)
  {
    v20 = 0;
    v21 = 14;
    goto LABEL_31;
  }

  if (*(a1[41] + 8) == a2)
  {
    for (i = a1[42]; i != a1[43]; i += 20)
    {
      sub_10004DFB4(uu2, v12);
      if (!uuid_compare(i, uu2))
      {
        LOBYTE(v14) = 0;
        LOBYTE(v19) = 2;
        goto LABEL_23;
      }
    }
  }

  else
  {
    v13 = sub_1004ED28C(a1, a2, 0, 0);
    if (!v13)
    {
      if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_ERROR))
      {
        sub_10083A854();
      }

      v20 = 0;
      v21 = 10;
      goto LABEL_31;
    }

    v14 = a1[52];
    if (!v14)
    {
      LOBYTE(v19) = 0;
      goto LABEL_23;
    }

    v15 = a1 + 52;
    do
    {
      v16 = v14[4];
      v17 = v16 >= v13;
      v18 = v16 < v13;
      if (v17)
      {
        v15 = v14;
      }

      v14 = v14[v18];
    }

    while (v14);
    if (v15 != a1 + 52 && v13 >= v15[4])
    {
      for (j = v15[5]; j != v15[6]; j += 18)
      {
        sub_10004DFB4(uu2, v12);
        if (!uuid_compare(j, uu2))
        {
          v19 = *(j + 16);
          LODWORD(v14) = v19 >> 8;
          goto LABEL_23;
        }
      }
    }
  }

  LOBYTE(v19) = 0;
  LOBYTE(v14) = 0;
LABEL_23:
  if (a3 != 2)
  {
    if (a3 == 1)
    {
      v23 = &v27;
    }

    else
    {
      if (a3)
      {
        v20 = 0;
        v21 = 7;
        goto LABEL_31;
      }

      v23 = (&v27 + 1);
      LOBYTE(v27) = v19;
    }

    *v23 = v14;
  }

  v21 = 0;
  v20 = 2 - a3;
LABEL_31:
  uu2[0] = 0;
  sub_1000216B4(uu2);
  a6(a4, v21, &v27, v20);
  sub_10002249C(uu2);

  return sub_1000088CC(v26);
}

void sub_1004EEE54(void *a1, uint64_t a2, int a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, void (*a8)(uint64_t, uint64_t, void, void))
{
  v38 = 0;
  v39 = 0;
  v37[0] = 0;
  v37[1] = 0;
  sub_100007F88(v37, (a1 + 5));
  if (a3)
  {
    if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_ERROR))
    {
      sub_10083AAC8();
    }

    v16 = 0;
    v17 = 244;
    goto LABEL_15;
  }

  if (!a4 && sub_10000C5E0(a5) == 2)
  {
    v18 = sub_10072502C(a5, 0);
    v19 = sub_10072502C(a5, 1uLL);
    v20 = a1[41];
    if (*(v20 + 8) == a2)
    {
      v21 = a1[17];
      v38 = v21;
      v39 = v20;
      if (!v20)
      {
        goto LABEL_25;
      }
    }

    else
    {
      v39 = sub_1004ED28C(a1, a2, &v38, 0);
      v21 = v38;
      if (!v39)
      {
        goto LABEL_25;
      }
    }

    if (v21)
    {
      v22 = v18 | (v19 << 8);
      if (v22)
      {
        if (v22 == 2)
        {
          if ((*(v21 + 72) & 0x20) == 0)
          {
LABEL_36:
            if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_ERROR))
            {
              sub_10083AA54();
            }

            v16 = 0;
            v17 = 245;
            goto LABEL_15;
          }
        }

        else if (v22 != 1 || (*(v21 + 72) & 0x10) == 0)
        {
          goto LABEL_36;
        }
      }

      v16 = sub_1004EC990(a1, a7);
      if (!v16)
      {
        v17 = 14;
        goto LABEL_15;
      }

      if (v39 == a1[41])
      {
        for (i = a1[42]; ; i += 20)
        {
          v28 = a1[43];
          if (i == v28)
          {
            break;
          }

          sub_10004DFB4(src, v16);
          if (!uuid_compare(i, src))
          {
            v28 = a1[43];
            break;
          }
        }

        if (i == v28)
        {
          if (v22)
          {
            *src = 0;
            v42 = 0;
            v43 = 0;
            sub_10004DFB4(src, v16);
            v43 = 0;
            sub_1004E8F80(a1 + 42, src);
            if (qword_100B50F78 != -1)
            {
              sub_10083A29C();
            }

            if (sub_100580920(qword_100B50F70, v16))
            {
              if (qword_100B508D0 != -1)
              {
                sub_100839E0C();
              }

              sub_10078CD44(off_100B508C8, v16, 1);
            }
          }
        }

        else if (!v22)
        {
          sub_1004EF400((a1 + 42), i);
          if (qword_100B50F78 != -1)
          {
            sub_10083A29C();
          }

          if (sub_100580920(qword_100B50F70, v16))
          {
            if (qword_100B508D0 != -1)
            {
              sub_100839E0C();
            }

            sub_10078CD44(off_100B508C8, v16, 0);
          }
        }

        goto LABEL_68;
      }

      *src = &v39;
      v23 = sub_1004F38F4((a1 + 51), &v39);
      v25 = v23 + 5;
      v24 = v23[5];
      *src = 0;
      v42 = 0;
      LOWORD(v43) = 0;
      sub_10004DFB4(src, v16);
      LOWORD(v43) = v22;
      while (1)
      {
        v26 = v23[6];
        if (v24 == v26)
        {
          break;
        }

        sub_10004DFB4(uu2, v16);
        if (!uuid_compare(v24, uu2))
        {
          v26 = v23[6];
          break;
        }

        v24 += 18;
      }

      if (v24 == v26)
      {
        if (v22)
        {
          sub_1004F3D78(v25, src);
        }
      }

      else
      {
        if (v22)
        {
          uuid_copy(v24, src);
          *(v24 + 16) = v43;
LABEL_68:
          v17 = 0;
          goto LABEL_15;
        }

        sub_1004EF480(v25, v24);
      }

      if (a1[13])
      {
        v29 = *(v39 + 16);
        v30 = sub_100007EE8();
        v31[0] = _NSConcreteStackBlock;
        v31[1] = 3221225472;
        v31[2] = sub_1004EF500;
        v31[3] = &unk_100AF7CE0;
        v33 = a1;
        v35 = v22;
        v34 = v29;
        v32 = v16;
        v36 = v22 == 1;
        sub_10000CA94(v30, v31);
      }

      goto LABEL_68;
    }

LABEL_25:
    if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_ERROR))
    {
      sub_10083A854();
    }

    v16 = 0;
    v17 = 10;
    goto LABEL_15;
  }

  if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_ERROR))
  {
    sub_10083AA20();
  }

  v16 = 0;
  if (a4)
  {
    v17 = 7;
  }

  else
  {
    v17 = 13;
  }

LABEL_15:
  if (a8)
  {
    src[0] = 0;
    sub_1000216B4(src);
    a8(a6, v17, 0, 0);
    sub_10002249C(src);
  }

  sub_1000088CC(v37);
}

void sub_1004EF370(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);

  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uuid_t sub_1004EF400(uint64_t a1, uuid_t dst)
{
  v4 = *(a1 + 8);
  if (dst + 20 == v4)
  {
    v6 = dst;
  }

  else
  {
    v5 = dst;
    do
    {
      v6 = v5 + 20;
      uuid_copy(v5, v5 + 20);
      *(v5 + 4) = *(v5 + 9);
      v7 = v5 + 40;
      v5 += 20;
    }

    while (v7 != v4);
  }

  *(a1 + 8) = v6;
  return dst;
}

uuid_t sub_1004EF480(uint64_t a1, uuid_t dst)
{
  v4 = *(a1 + 8);
  if (dst + 18 == v4)
  {
    v6 = dst;
  }

  else
  {
    v5 = dst;
    do
    {
      v6 = v5 + 18;
      uuid_copy(v5, v5 + 18);
      *(v5 + 8) = *(v5 + 17);
      v7 = v5 + 36;
      v5 += 18;
    }

    while (v7 != v4);
  }

  *(a1 + 8) = v6;
  return dst;
}

uint64_t sub_1004EF500(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(*(a1 + 40) + 104);
  if (*(a1 + 52))
  {
    return (*(*v2 + 40))(*(*(a1 + 40) + 104), a1 + 48, v1, *(a1 + 54));
  }

  else
  {
    return (*(*v2 + 48))(*(*(a1 + 40) + 104), a1 + 48, v1);
  }
}

void sub_1004EF56C(uint64_t a1, void *a2)
{
  v3 = a2;
  v21[0] = 0;
  v21[1] = 0;
  sub_100007F88(v21, a1 + 40);
  [*(a1 + 496) removeObject:v3];
  [*(a1 + 504) removeObjectForKey:v3];
  [*(a1 + 488) removeObject:v3];
  if (qword_100B50F78 != -1)
  {
    sub_10083A29C();
  }

  if ((sub_100580920(qword_100B50F70, v3) & 1) == 0)
  {
    v4 = *(a1 + 336);
    if (v4 != *(a1 + 344))
    {
      v5 = -v4;
      while (1)
      {
        v6 = sub_10004DF60(v4);
        v7 = [v3 isEqual:v6];

        if (v7)
        {
          break;
        }

        v4 += 20;
        v5 -= 20;
        if (v4 == *(a1 + 344))
        {
          goto LABEL_12;
        }
      }

      v8 = -v5;
      v9 = *(a1 + 344);
      if (20 - v5 != v9)
      {
        do
        {
          uuid_copy(v8, (v8 + 20));
          *(v8 + 16) = *(v8 + 36);
          v8 += 20;
        }

        while (v8 + 20 != v9);
      }

      *(a1 + 344) = v8;
    }
  }

LABEL_12:
  v10 = *(a1 + 408);
  v11 = (a1 + 416);
  if (v10 != (a1 + 416))
  {
    do
    {
      v12 = v10[5];
      if (v12 != v10[6])
      {
        v13 = -v12;
        while (1)
        {
          v14 = sub_10004DF60(v12);
          v15 = [v3 isEqual:v14];

          if (v15)
          {
            break;
          }

          v12 += 18;
          v13 -= 18;
          if (v12 == v10[6])
          {
            goto LABEL_21;
          }
        }

        v16 = -v13;
        v17 = v10[6];
        if (18 - v13 != v17)
        {
          do
          {
            uuid_copy(v16, (v16 + 18));
            *(v16 + 16) = *(v16 + 34);
            v16 += 18;
          }

          while (v16 + 18 != v17);
        }

        v10[6] = v16;
      }

LABEL_21:
      v18 = v10[1];
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
          v19 = v10[2];
          v20 = *v19 == v10;
          v10 = v19;
        }

        while (!v20);
      }

      v10 = v19;
    }

    while (v19 != v11);
  }

  sub_1000088CC(v21);
}

void sub_1004EF838(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = a2;
  v7 = qword_100BCE910;
  if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    *&buf[4] = v6;
    *&buf[12] = 2048;
    *&buf[14] = a4;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "GattServer device %{public}@ connected for session %p", buf, 0x16u);
  }

  sub_10004DFB4(buf, v6);
  if (a1 + 544 != sub_10004E34C(a1 + 536, buf) && os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_FAULT))
  {
    sub_10083AAFC();
  }

  *buf = 0;
  *&buf[8] = 0;
  sub_100007F88(buf, a1 + 40);
  if (a4)
  {
    sub_10004DFB4(uu1, v6);
    *(sub_1004F3F98(a1 + 536, uu1) + 48) = a4;
  }

  else if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_ERROR))
  {
    sub_10083AB7C();
  }

  sub_10000801C(buf);
  if (qword_100B50F78 != -1)
  {
    sub_10083A29C();
  }

  if (sub_100580920(qword_100B50F70, v6))
  {
    sub_100007FB8(buf);
    sub_1004E9DB8(a1, v6, (*(*(a1 + 128) + 48) + 1), 0xFFFFu);
  }

  sub_1000088CC(buf);
}

void sub_1004EFA44(uint64_t a1, void *a2)
{
  v3 = a2;
  v18[0] = 0;
  v18[1] = 0;
  sub_100007F88(v18, a1 + 40);
  sub_10004DFB4(uu2, v3);
  v4 = sub_10004E34C(a1 + 536, uu2);
  if ((a1 + 544) == v4)
  {
    if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_ERROR))
    {
      sub_10083ABB0();
    }
  }

  else
  {
    sub_10002717C((a1 + 536), v4);
    operator delete(v4);
  }

  v5 = *(a1 + 408);
  if (v5 != (a1 + 416))
  {
    do
    {
      for (i = v5[5]; i != v5[6]; i += 18)
      {
        v7 = sub_10004DF60(i);
        v8 = [v3 isEqual:v7];

        if (v8)
        {
          if (*(i + 16))
          {
            v9 = *(v5[4] + 16);
            v10 = sub_100007EE8();
            v14[0] = _NSConcreteStackBlock;
            v14[1] = 3221225472;
            v14[2] = sub_1004EFCB8;
            v14[3] = &unk_100AE1228;
            v16 = a1;
            v17 = v9;
            v15 = v3;
            sub_10000CA94(v10, v14);
          }

          break;
        }
      }

      v11 = v5[1];
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
          v12 = v5[2];
          v13 = *v12 == v5;
          v5 = v12;
        }

        while (!v13);
      }

      v5 = v12;
    }

    while (v12 != (a1 + 416));
  }

  sub_1004EF56C(a1, v3);
  sub_1004EAFD4(a1);
  sub_1000088CC(v18);
}

void sub_1004EFCEC(uint64_t a1, void *a2, int a3)
{
  v5 = a2;
  v7[0] = 0;
  v7[1] = 0;
  sub_100007F88(v7, a1 + 40);
  if (!a3)
  {
    for (i = *(a1 + 336); i != *(a1 + 344); i += 20)
    {
      sub_10004DFB4(uu2, v5);
      if (!uuid_compare(i, uu2))
      {
        if (qword_100B508D0 != -1)
        {
          sub_100839E0C();
        }

        sub_10078CD44(off_100B508C8, v5, 1);
        break;
      }
    }
  }

  sub_1000088CC(v7);
}

void sub_1004EFDD8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1000088CC(va);

  _Unwind_Resume(a1);
}

void sub_1004EFE0C(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = 0;
  v5[1] = 0;
  sub_100007F88(v5, a1 + 40);
  if (qword_100B508B0 != -1)
  {
    sub_10083AC24();
  }

  v4 = off_100B508A8;
  sub_10004DFB4(v6, v3);
  if (!sub_100050290(v4, v6))
  {
    sub_1004EF56C(a1, v3);
  }

  sub_1000088CC(v5);
}

void sub_1004EFED4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1000088CC(va);

  _Unwind_Resume(a1);
}

uint64_t sub_1004EFF08(uint64_t a1)
{
  v96[0] = 0;
  v96[1] = 0;
  sub_100007F88(v96, a1 + 40);
  v1 = qword_100BCE910;
  if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "statedump: -------------------- GATT Server ---------------------", buf, 2u);
  }

  sub_1004E8FF0(a1);
  v2 = qword_100BCE910;
  if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "statedump: Client Config Descriptors:", buf, 2u);
    v2 = qword_100BCE910;
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "statedump:    GATT 'Service Changed':", buf, 2u);
  }

  v3 = *(a1 + 336);
  for (i = *(a1 + 344); v3 != i; v3 += 20)
  {
    v5 = qword_100BCE910;
    if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0u;
      memset(v103, 0, 21);
      uuid_unparse_upper(v3, buf);
      sub_100007E30(v100, buf);
      if (v100[23] >= 0)
      {
        v6 = v100;
      }

      else
      {
        v6 = *v100;
      }

      v7 = *(v3 + 16);
      v8 = *(v3 + 18);
      *v101 = 136446722;
      *&v101[4] = v6;
      *&v101[12] = 1024;
      *&v101[14] = v7;
      *&v101[18] = 1024;
      *&v101[20] = v8;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "statedump:       %{public}s - [0x%04x, 0x%04x]", v101, 0x18u);
      if ((v100[23] & 0x80000000) != 0)
      {
        operator delete(*v100);
      }

      i = *(a1 + 344);
    }
  }

  v9 = qword_100BCE910;
  if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "statedump:    User-specified:", buf, 2u);
  }

  v10 = *(a1 + 408);
  if (v10 != (a1 + 416))
  {
    v82 = 67109120;
    do
    {
      v11 = qword_100BCE910;
      if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_DEFAULT))
      {
        v12 = **(v10[4] + 8);
        *buf = 67109120;
        *&buf[4] = v12;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "statedump:       0x%04x", buf, 8u);
      }

      v13 = v10[5];
      v14 = v10[6];
      while (v13 != v14)
      {
        v15 = qword_100BCE910;
        if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0u;
          memset(v103, 0, 21);
          uuid_unparse_upper(v13, buf);
          sub_100007E30(v101, buf);
          if ((v101[23] & 0x80u) == 0)
          {
            v16 = v101;
          }

          else
          {
            v16 = *v101;
          }

          v17 = "Indicate";
          if (*(v13 + 16) == 1)
          {
            v17 = "Notify";
          }

          *v100 = 136446466;
          *&v100[4] = v16;
          *&v100[12] = 2082;
          *&v100[14] = v17;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "statedump:          %{public}s (%{public}s)", v100, 0x16u);
          if (v101[23] < 0)
          {
            operator delete(*v101);
          }

          v14 = v10[6];
        }

        v13 += 18;
      }

      v18 = v10[1];
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
          v19 = v10[2];
          v20 = *v19 == v10;
          v10 = v19;
        }

        while (!v20);
      }

      v10 = v19;
    }

    while (v19 != (a1 + 416));
  }

  v21 = qword_100BCE910;
  if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "statedump: Pending transactions:", buf, 2u);
    v21 = qword_100BCE910;
  }

  v22 = *(a1 + 384);
  if (v22 != (a1 + 392))
  {
    do
    {
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        v23 = *(v22 + 8);
        *buf = 67109120;
        *&buf[4] = v23;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "statedump:    Transaction #%d", buf, 8u);
        v21 = qword_100BCE910;
      }

      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        v24 = *(v22 + 10);
        *buf = 67109120;
        *&buf[4] = v24;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "statedump:       Attribute ID: 0x%0x", buf, 8u);
        v21 = qword_100BCE910;
      }

      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        if (*(v22 + 44))
        {
          v25 = "Execute Write";
        }

        else
        {
          v25 = "Read/Write";
        }

        *buf = 136446210;
        *&buf[4] = v25;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "statedump:       Type: %{public}s", buf, 0xCu);
        v21 = qword_100BCE910;
      }

      v26 = v22[1];
      if (v26)
      {
        do
        {
          v27 = v26;
          v26 = *v26;
        }

        while (v26);
      }

      else
      {
        do
        {
          v27 = v22[2];
          v20 = *v27 == v22;
          v22 = v27;
        }

        while (!v20);
      }

      v22 = v27;
    }

    while (v27 != (a1 + 392));
  }

  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "statedump: Update Queue:", buf, 2u);
    v21 = qword_100BCE910;
  }

  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a1 + 480))
    {
      v28 = "yes";
    }

    else
    {
      v28 = "no";
    }

    *buf = 136446210;
    *&buf[4] = v28;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "statedump:    TX full: %{public}s", buf, 0xCu);
    v21 = qword_100BCE910;
  }

  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "statedump:    Updates:", buf, 2u);
  }

  v29 = *(a1 + 464);
  v30 = *(a1 + 440);
  v31 = *(a1 + 448);
  v32 = (v30 + 8 * (v29 >> 8));
  if (v31 == v30)
  {
    v33 = 0;
  }

  else
  {
    v33 = (*v32 + 16 * v29);
  }

  while (1)
  {
    if (v31 == v30)
    {
      v35 = 0;
    }

    else
    {
      v34 = *(a1 + 472) + *(a1 + 464);
      v35 = *(v30 + ((v34 >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * v34;
    }

    if (v33 == v35)
    {
      break;
    }

    v36 = v33[1];
    v37 = qword_100BCE910;
    if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_DEFAULT))
    {
      if (*v33)
      {
        sub_100018384(*v33, buf);
        if (v103[0] >= 0)
        {
          v38 = buf;
        }

        else
        {
          v38 = *buf;
        }

        *v101 = 136446210;
        *&v101[4] = v38;
        _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "statedump:       %{public}s", v101, 0xCu);
        if (SHIBYTE(v103[0]) < 0)
        {
          operator delete(*buf);
        }
      }

      else
      {
        *v101 = 136446210;
        *&v101[4] = 0;
        _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "statedump:       %{public}s", v101, 0xCu);
      }

      v37 = qword_100BCE910;
    }

    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      v39 = **(*(v36 + 8) + 8);
      *buf = 67109120;
      *&buf[4] = v39;
      _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "statedump:          Characteristic handle: 0x%04x", buf, 8u);
      v37 = qword_100BCE910;
    }

    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      sub_10000C250(v36 + 24, buf);
      v40 = v103[0] >= 0 ? buf : *buf;
      *v101 = 136446210;
      *&v101[4] = v40;
      _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "statedump:          Value: %{public}s", v101, 0xCu);
      if (SHIBYTE(v103[0]) < 0)
      {
        operator delete(*buf);
      }
    }

    v33 += 2;
    if ((v33 - *v32) == 4096)
    {
      v41 = v32[1];
      ++v32;
      v33 = v41;
    }

    v30 = *(a1 + 440);
    v31 = *(a1 + 448);
  }

  v42 = qword_100BCE910;
  if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "statedump:    Stalled devices:", buf, 2u);
  }

  v94 = 0u;
  v95 = 0u;
  v92 = 0u;
  v93 = 0u;
  v43 = *(a1 + 488);
  v44 = [v43 countByEnumeratingWithState:&v92 objects:v99 count:16];
  if (v44)
  {
    v45 = *v93;
    do
    {
      for (j = 0; j != v44; j = j + 1)
      {
        if (*v93 != v45)
        {
          objc_enumerationMutation(v43);
        }

        v47 = qword_100BCE910;
        if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_DEFAULT))
        {
          v48 = *(*(&v92 + 1) + 8 * j);
          *buf = 138543362;
          *&buf[4] = v48;
          _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "statedump:       %{public}@", buf, 0xCu);
        }
      }

      v44 = [v43 countByEnumeratingWithState:&v92 objects:v99 count:16];
    }

    while (v44);
  }

  v49 = qword_100BCE910;
  if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEFAULT, "statedump:    Outstanding App Indications:", buf, 2u);
  }

  v90 = 0u;
  v91 = 0u;
  v88 = 0u;
  v89 = 0u;
  v50 = *(a1 + 504);
  v51 = [v50 countByEnumeratingWithState:&v88 objects:v98 count:16];
  if (v51)
  {
    v52 = *v89;
    do
    {
      for (k = 0; k != v51; k = k + 1)
      {
        if (*v89 != v52)
        {
          objc_enumerationMutation(v50);
        }

        v54 = *(*(&v88 + 1) + 8 * k);
        v55 = [*(a1 + 504) objectForKey:{v54, v82}];
        v56 = qword_100BCE910;
        if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_DEFAULT))
        {
          if (v55)
          {
            sub_100018384(v55, buf);
            v57 = buf;
            if (v103[0] < 0)
            {
              v57 = *buf;
            }

            *v101 = 136446466;
            *&v101[4] = v57;
            *&v101[12] = 2114;
            *&v101[14] = v54;
            _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_DEFAULT, "statedump:       %{public}s - %{public}@", v101, 0x16u);
            if (SHIBYTE(v103[0]) < 0)
            {
              operator delete(*buf);
            }
          }

          else
          {
            *v101 = 136446466;
            *&v101[4] = 0;
            *&v101[12] = 2114;
            *&v101[14] = v54;
            _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_DEFAULT, "statedump:       %{public}s - %{public}@", v101, 0x16u);
          }
        }
      }

      v51 = [v50 countByEnumeratingWithState:&v88 objects:v98 count:16];
    }

    while (v51);
  }

  v58 = qword_100BCE910;
  if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_DEFAULT, "statedump:    Outstanding Server Indications:", buf, 2u);
  }

  v86 = 0u;
  v87 = 0u;
  v84 = 0u;
  v85 = 0u;
  v59 = *(a1 + 496);
  v60 = [v59 countByEnumeratingWithState:&v84 objects:v97 count:16];
  if (v60)
  {
    v61 = *v85;
    do
    {
      for (m = 0; m != v60; m = m + 1)
      {
        if (*v85 != v61)
        {
          objc_enumerationMutation(v59);
        }

        v63 = qword_100BCE910;
        if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_DEFAULT))
        {
          v64 = *(*(&v84 + 1) + 8 * m);
          *buf = 138543362;
          *&buf[4] = v64;
          _os_log_impl(&_mh_execute_header, v63, OS_LOG_TYPE_DEFAULT, "statedump:       %{public}@", buf, 0xCu);
        }
      }

      v60 = [v59 countByEnumeratingWithState:&v84 objects:v97 count:16];
    }

    while (v60);
  }

  v65 = qword_100BCE910;
  if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v65, OS_LOG_TYPE_DEFAULT, "statedump: Prepared writes:", buf, 2u);
  }

  v66 = *(a1 + 512);
  if (v66 != (a1 + 520))
  {
    v67 = (a1 + 544);
    do
    {
      memset(v101, 0, 24);
      sub_100007E30(v101, "Unknown");
      v68 = *(a1 + 536);
      if (v68 != v67)
      {
        while (*(v68 + 6) != v66[4])
        {
          v69 = *(v68 + 1);
          if (v69)
          {
            do
            {
              v70 = v69;
              v69 = *v69;
            }

            while (v69);
          }

          else
          {
            do
            {
              v70 = *(v68 + 2);
              v20 = *v70 == v68;
              v68 = v70;
            }

            while (!v20);
          }

          v68 = v70;
          if (v70 == v67)
          {
            goto LABEL_148;
          }
        }

        *buf = 0u;
        memset(v103, 0, 21);
        uuid_unparse_upper(v68 + 32, buf);
        sub_100007E30(v100, buf);
        if (v101[23] < 0)
        {
          operator delete(*v101);
        }

        *v101 = *v100;
        *&v101[16] = *&v100[16];
      }

LABEL_148:
      v71 = qword_100BCE910;
      if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_DEFAULT))
      {
        v72 = v101;
        if ((v101[23] & 0x80u) != 0)
        {
          v72 = *v101;
        }

        *buf = 136446210;
        *&buf[4] = v72;
        _os_log_impl(&_mh_execute_header, v71, OS_LOG_TYPE_DEFAULT, "statedump:    %{public}s", buf, 0xCu);
      }

      v73 = v66[5];
      v74 = v66[6];
      while (v73 != v74)
      {
        v75 = qword_100BCE910;
        if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_DEFAULT))
        {
          v76 = *v73;
          v77 = *(v73 + 2);
          sub_10000C250((v73 + 2), v100);
          v78 = v100;
          if (v100[23] < 0)
          {
            v78 = *v100;
          }

          *buf = 67109634;
          *&buf[4] = v76;
          *&buf[8] = 1024;
          *&buf[10] = v77;
          *&buf[14] = 2082;
          v103[0] = v78;
          _os_log_impl(&_mh_execute_header, v75, OS_LOG_TYPE_DEFAULT, "statedump:       0x%0x @ %d [ %{public}s ]", buf, 0x18u);
          if ((v100[23] & 0x80000000) != 0)
          {
            operator delete(*v100);
          }

          v74 = v66[6];
        }

        v73 += 8;
      }

      if (v101[23] < 0)
      {
        operator delete(*v101);
      }

      v79 = v66[1];
      if (v79)
      {
        do
        {
          v80 = v79;
          v79 = *v79;
        }

        while (v79);
      }

      else
      {
        do
        {
          v80 = v66[2];
          v20 = *v80 == v66;
          v66 = v80;
        }

        while (!v20);
      }

      v66 = v80;
    }

    while (v80 != (a1 + 520));
  }

  return sub_1000088CC(v96);
}

void sub_1004F0F04(uint64_t a1, uint64_t a2)
{
  os_unfair_lock_lock(a1);
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = v4;
  if (v4 != v5)
  {
    while (*v6 != a2)
    {
      v6 += 8;
      if (v6 == v5)
      {
        v6 = *(a1 + 16);
        goto LABEL_6;
      }
    }
  }

  if (v6 == v5)
  {
LABEL_6:
    if (v4 == v5)
    {
      (***(a1 + 32))(*(a1 + 32), a1);
    }

    v7 = a2;
    sub_1004F0FD0((a1 + 8), v6, &v7);
    sub_1000C8CF0((a1 + 8));
  }

  os_unfair_lock_unlock(a1);
}

char *sub_1004F0FD0(void *a1, char *__src, char *a3)
{
  v4 = __src;
  v6 = a1[1];
  v7 = a1[2];
  if (v6 >= v7)
  {
    v10 = *a1;
    v11 = (&v6[-*a1] >> 3) + 1;
    if (v11 >> 61)
    {
      sub_1000C7698();
    }

    v12 = __src - v10;
    v13 = v7 - v10;
    if (v13 >> 2 > v11)
    {
      v11 = v13 >> 2;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFF8)
    {
      v14 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v11;
    }

    v15 = v12 >> 3;
    v29 = a1;
    if (v14)
    {
      sub_100008108(a1, v14);
    }

    v26 = 0;
    v27 = 8 * v15;
    v28 = (8 * v15);
    sub_1000DB838(&v26, a3);
    v16 = v27;
    memcpy(v28, v4, a1[1] - v4);
    v17 = *a1;
    v18 = v27;
    *&v28 = v28 + a1[1] - v4;
    a1[1] = v4;
    v19 = v4 - v17;
    v20 = (v18 - (v4 - v17));
    memcpy(v20, v17, v19);
    v21 = *a1;
    *a1 = v20;
    v22 = a1[2];
    *(a1 + 1) = v28;
    *&v28 = v21;
    *(&v28 + 1) = v22;
    v26 = v21;
    v27 = v21;
    if (v21)
    {
      operator delete(v21);
    }

    return v16;
  }

  else if (__src == v6)
  {
    *v6 = *a3;
    a1[1] = v6 + 8;
  }

  else
  {
    v8 = __src + 8;
    if (v6 < 8)
    {
      v9 = a1[1];
    }

    else
    {
      *v6 = *(v6 - 1);
      v9 = v6 + 8;
    }

    a1[1] = v9;
    if (v6 != v8)
    {
      memmove(__src + 8, __src, v6 - v8);
      v9 = a1[1];
    }

    v23 = v9 <= a3 || v4 > a3;
    v24 = 8;
    if (v23)
    {
      v24 = 0;
    }

    *v4 = *&a3[v24];
  }

  return v4;
}

void sub_1004F116C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1004F11A4(uint64_t a1, __int16 a2, uint64_t a3)
{
  *(a1 + 16) = 0;
  *a1 = off_100B08D40;
  *(a1 + 8) = a1 + 24;
  v5 = *(a3 + 8);
  *(a1 + 72) = &off_100AE0A78;
  *(a1 + 80) = v5;
  if (v5)
  {
    sub_10000C69C(v5);
  }

  *(a1 + 24) = a2;
  *(a1 + 26) = 0;
  *(a1 + 44) = 0;
  *(a1 + 28) = xmmword_1008A9C10;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 48) = 0;
  return a1;
}

__n128 sub_1004F1240(uint64_t a1, int a2, __int16 a3, __int16 a4, __int128 *a5)
{
  *(a1 + 16) = 0;
  *a1 = off_100B08DD0;
  *(a1 + 8) = a1 + 24;
  *(a1 + 96) = a2;
  *(a1 + 176) = 0;
  *(a1 + 184) = 0;
  *(a1 + 168) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 104) = 0;
  *(a1 + 128) = 0;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  *(a1 + 136) = 0;
  *(a1 + 160) = 0;
  v5 = &unk_1008A9C38;
  if (a2)
  {
    v5 = &xmmword_1008A9C24;
  }

  v6 = v5[1].n128_u32[0];
  result = *v5;
  v8 = *(a5 + 4);
  v9 = *a5;
  *(a1 + 24) = a3;
  *(a1 + 26) = 0;
  *(a1 + 28) = result;
  *(a1 + 44) = v6;
  *(a1 + 48) = a4;
  *(a1 + 58) = 0;
  *(a1 + 50) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = v9;
  *(a1 + 88) = v8;
  *(a1 + 92) = 0;
  return result;
}

uint64_t sub_1004F1320(uint64_t a1, uint64_t a2)
{
  *(a1 + 16) = *(a2 + 16);
  *a1 = off_100B08DD0;
  *(a1 + 8) = a1 + 24;
  *(a1 + 24) = *(a2 + 24);
  v3 = *(a2 + 40);
  v4 = *(a2 + 56);
  v5 = *(a2 + 72);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 72) = v5;
  *(a1 + 56) = v4;
  *(a1 + 40) = v3;
  v6 = *(a2 + 96);
  *(a1 + 168) = 0;
  *(a1 + 96) = v6;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  *(a1 + 176) = 0;
  *(a1 + 184) = 0;
  if (*(a2 + 104) != *(a2 + 112))
  {
    operator new();
  }

  *(a1 + 128) = *(a2 + 128);
  if (*(a2 + 136) != *(a2 + 144))
  {
    operator new();
  }

  *(a1 + 160) = *(a2 + 160);
  if (a1 != a2)
  {
    sub_10003A598((a1 + 168), *(a2 + 168), *(a2 + 176), 0xCCCCCCCCCCCCCCCDLL * ((*(a2 + 176) - *(a2 + 168)) >> 2));
  }

  return a1;
}

void sub_1004F1664(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10)
{
  v14 = *a10;
  if (*a10)
  {
    v10[22] = v14;
    operator delete(v14);
  }

  v15 = *v12;
  if (*v12)
  {
    v10[18] = v15;
    operator delete(v15);
  }

  v16 = *v11;
  if (*v11)
  {
    v10[14] = v16;
    operator delete(v16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1004F16CC(uint64_t a1, uint64_t a2)
{
  *(a1 + 16) = *(a2 + 16);
  *a1 = off_100B08D70;
  *(a1 + 8) = a1 + 24;
  *(a1 + 24) = *(a2 + 24);
  v4 = *(a2 + 40);
  v5 = *(a2 + 56);
  v6 = *(a2 + 72);
  v7 = *(a2 + 88);
  *(a1 + 96) = 0u;
  v8 = a1 + 96;
  *(a1 + 88) = v7;
  *(a1 + 72) = v6;
  *(a1 + 56) = v5;
  *(a1 + 40) = v4;
  *(a1 + 112) = 0u;
  if (*(a2 + 96))
  {
    operator new();
  }

  for (i = *(a2 + 104); i != *(a2 + 112); i += 8)
  {
    v10 = (*(**i + 16))();
    v12 = *(a1 + 112);
    v11 = *(a1 + 120);
    if (v12 >= v11)
    {
      v14 = *(v8 + 8);
      v15 = (v12 - v14) >> 3;
      if ((v15 + 1) >> 61)
      {
        sub_1000C7698();
      }

      v16 = v11 - v14;
      v17 = v16 >> 2;
      if (v16 >> 2 <= (v15 + 1))
      {
        v17 = v15 + 1;
      }

      if (v16 >= 0x7FFFFFFFFFFFFFF8)
      {
        v18 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v18 = v17;
      }

      if (v18)
      {
        sub_100008108(v8 + 8, v18);
      }

      v19 = (8 * v15);
      *v19 = v10;
      v13 = 8 * v15 + 8;
      v20 = *(a1 + 104);
      v21 = *(a1 + 112) - v20;
      v22 = v19 - v21;
      memcpy(v19 - v21, v20, v21);
      v23 = *(a1 + 104);
      *(a1 + 104) = v22;
      *(a1 + 112) = v13;
      *(a1 + 120) = 0;
      if (v23)
      {
        operator delete(v23);
      }
    }

    else
    {
      *v12 = v10;
      v13 = (v12 + 1);
    }

    *(a1 + 112) = v13;
  }

  *(a1 + 128) = *(a2 + 128);
  return a1;
}

uint64_t sub_1004F18D4(uint64_t a1, uint64_t a2)
{
  *(a1 + 16) = *(a2 + 16);
  *a1 = off_100B08D40;
  *(a1 + 8) = a1 + 24;
  v3 = *(a2 + 24);
  v4 = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 40) = v4;
  *(a1 + 24) = v3;
  v5 = *(a2 + 80);
  *(a1 + 72) = &off_100AE0A78;
  *(a1 + 80) = v5;
  if (v5)
  {
    sub_10000C69C(v5);
  }

  return a1;
}

void *sub_1004F1964(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v9 = a4;
  *a1 = v9;
  a1[1] = a2;
  a1[2] = a3;
  v10 = *(a5 + 8);
  a1[3] = &off_100AE0A78;
  a1[4] = v10;
  if (v10)
  {
    sub_10000C69C(v10);
  }

  return a1;
}

uint64_t sub_1004F1A18(uint64_t a1)
{
  if (qword_100B541E8 != -1)
  {
    sub_10083AC4C();
  }

  v2 = qword_100B541E0;
  v3 = *(a1 + 12);

  return sub_1004EC6F8(v2, v3);
}

uint64_t sub_1004F1AEC(uint64_t a1)
{
  if (qword_100B541E8 != -1)
  {
    sub_10083AC4C();
  }

  v2 = qword_100B541E0;
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);

  return sub_1004EC7EC(v2, v3, v4);
}

uint64_t sub_1004F1B5C(uint64_t a1)
{
  if (qword_100B541E8 != -1)
  {
    sub_10083AC4C();
  }

  v2 = qword_100B541E0;
  v3 = *(a1 + 16);

  return sub_1004ECA80(v2, v3);
}

uint64_t sub_1004F1BC8(uint64_t a1)
{
  if (qword_100B541E8 != -1)
  {
    sub_10083AC4C();
  }

  v2 = qword_100B541E0;
  v3 = *(a1 + 16);

  return sub_1004ECD68(v2, v3);
}

uint64_t sub_1004F1C1C(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, _DWORD *a5, char a6)
{
  v11 = a3;
  *(a1 + 8) = 1;
  *a1 = off_100AFA6B0;
  *(a1 + 16) = a2;
  v12 = v11;
  *(a1 + 32) = 0;
  *(a1 + 24) = v12;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  sub_1004F1DE8(a1 + 32, *a4, a4[1], (a4[1] - *a4) >> 5);
  *(a1 + 56) = *a5;
  *(a1 + 60) = a6;

  return a1;
}

uint64_t sub_1004F1CDC(uint64_t a1)
{
  *a1 = off_100AFA6B0;
  v3 = (a1 + 32);
  sub_1004F25AC(&v3);

  return a1;
}

void sub_1004F1D3C(uint64_t a1)
{
  *a1 = off_100AFA6B0;
  v2 = (a1 + 32);
  sub_1004F25AC(&v2);

  operator delete();
}

uint64_t sub_1004F1DE8(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_1004F1E48(result, a4);
  }

  return result;
}

void sub_1004F1E48(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    sub_1004F1E84(a1, a2);
  }

  sub_1000C7698();
}

void sub_1004F1E84(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  sub_1000C7698();
}

uint64_t sub_1004F1ECC(uint64_t a1, int *a2, int *a3, uint64_t a4)
{
  v4 = a4;
  if (a2 != a3)
  {
    v6 = a2;
    v7 = a4 + 8;
    do
    {
      v8 = *v6;
      *(v4 + 4) = *(v6 + 2);
      *v4 = v8;
      v9 = *(v6 + 2);
      *(v4 + 8) = &off_100AE0A78;
      *(v4 + 16) = v9;
      if (v9)
      {
        sub_10000C69C(v9);
      }

      *(v4 + 24) = *(v6 + 24);
      v6 += 8;
      v4 += 32;
      v7 += 32;
    }

    while (v6 != a3);
  }

  return v4;
}

uint64_t sub_1004F1F78(uint64_t a1)
{
  if (qword_100B541E8 != -1)
  {
    sub_10083AC4C();
  }

  v2 = qword_100B541E0;
  v3 = *(a1 + 12);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);

  return sub_1004ECEF4(v2, v3, v4, v5, v6);
}

uint64_t sub_1004F1FF4(uint64_t a1)
{
  if (qword_100B541E8 != -1)
  {
    sub_10083AC4C();
  }

  v2 = qword_100B541E0;
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);

  return sub_1004ED148(v2, v3, v4);
}

uint64_t sub_1004F2048(uint64_t a1, uint64_t a2, void *a3, _DWORD *a4, _WORD *a5, uint64_t a6, _DWORD *a7, char a8)
{
  v15 = a3;
  *(a1 + 8) = 1;
  *a1 = off_100AFA758;
  *(a1 + 16) = a2;
  v16 = v15;
  *(a1 + 24) = v16;
  *(a1 + 32) = *a4;
  *(a1 + 36) = *a5;
  v17 = *(a6 + 8);
  *(a1 + 40) = &off_100AE0A78;
  *(a1 + 48) = v17;
  if (v17)
  {
    sub_10000C69C(v17);
  }

  *(a1 + 56) = *a7;
  *(a1 + 60) = a8;

  return a1;
}

uint64_t sub_1004F2138(uint64_t a1)
{
  *a1 = off_100AFA758;
  *(a1 + 40) = &off_100AE0A78;
  v2 = *(a1 + 48);
  if (v2)
  {
    sub_10000C808(v2);
  }

  return a1;
}

void sub_1004F21AC(uint64_t a1)
{
  *a1 = off_100AFA758;
  *(a1 + 40) = &off_100AE0A78;
  v2 = *(a1 + 48);
  if (v2)
  {
    sub_10000C808(v2);
  }

  operator delete();
}

void sub_1004F2298(uint64_t a1)
{
  if (*(a1 + 10) == 1)
  {
    if (qword_100B541E8 != -1)
    {
      sub_10083AC4C();
    }

    v2 = qword_100B541E0;
    v3 = *(a1 + 16);
    v4 = *(a1 + 24);
    v5 = *(a1 + 28);
    v6 = *(a1 + 32);
    v7 = *(a1 + 40);

    sub_1004EEBC4(v2, v3, v4, v5, v6, v7);
  }

  else
  {
    if (qword_100B541E8 != -1)
    {
      sub_10083AC4C();
    }

    v8 = qword_100B541E0;
    v9 = *(a1 + 16);
    v10 = *(a1 + 24);
    v11 = *(a1 + 28);
    v12 = *(a1 + 32);
    v13 = *(a1 + 40);

    sub_1004ED598(v8, v9, v10, v11, v12, v13);
  }
}

uint64_t sub_1004F2350(uint64_t a1, char a2, uint64_t a3, char a4, __int16 a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9, char a10)
{
  *(a1 + 8) = 1;
  *a1 = &off_100AFA7C8;
  *(a1 + 10) = a2;
  *(a1 + 16) = a3;
  *(a1 + 24) = a4;
  *(a1 + 26) = a5;
  v13 = *(a6 + 8);
  *(a1 + 32) = &off_100AE0A78;
  *(a1 + 40) = v13;
  if (v13)
  {
    sub_10000C69C(v13);
  }

  *(a1 + 48) = a7;
  *(a1 + 56) = a8;
  *(a1 + 64) = a9;
  *(a1 + 72) = a10;
  return a1;
}

void *sub_1004F2400(void *a1)
{
  *a1 = &off_100AFA7C8;
  a1[4] = &off_100AE0A78;
  v2 = a1[5];
  if (v2)
  {
    sub_10000C808(v2);
  }

  return a1;
}

void sub_1004F246C(void *a1)
{
  *a1 = &off_100AFA7C8;
  a1[4] = &off_100AE0A78;
  v1 = a1[5];
  if (v1)
  {
    sub_10000C808(v1);
  }

  operator delete();
}

void sub_1004F24F8(uint64_t a1)
{
  if (*(a1 + 10) == 1)
  {
    if (qword_100B541E8 != -1)
    {
      sub_10083AC4C();
    }

    sub_1004EEE54(qword_100B541E0, *(a1 + 16), *(a1 + 24), *(a1 + 26), a1 + 32, *(a1 + 48), *(a1 + 56), *(a1 + 64));
  }

  else
  {
    if (qword_100B541E8 != -1)
    {
      sub_10083AC4C();
    }

    sub_1004EE5B0(qword_100B541E0, *(a1 + 16), *(a1 + 24), *(a1 + 26), a1 + 32, *(a1 + 48), *(a1 + 56), *(a1 + 64));
  }
}

void sub_1004F25AC(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_1004F2600(v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_1004F2600(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  if (v4 != a2)
  {
    v5 = v4 - 24;
    do
    {
      *(v4 - 24) = &off_100AE0A78;
      v6 = *(v4 - 16);
      if (v6)
      {
        sub_10000C808(v6);
      }

      v4 -= 32;
      v5 -= 32;
    }

    while (v4 != a2);
  }

  *(a1 + 8) = a2;
}

void sub_1004F2678(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_1004F2678(a1, *a2);
    sub_1004F2678(a1, a2[1]);
    sub_10000CEDC((a2 + 7), a2[8]);

    operator delete(a2);
  }
}

uint64_t sub_1004F26D8(void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  a1[5] = 0;
  v4 = v3 - v2;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v4 = v3 - v2;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v5 = 128;
  }

  else
  {
    if (v4 != 2)
    {
      goto LABEL_9;
    }

    v5 = 256;
  }

  a1[4] = v5;
LABEL_9:
  while (v2 != v3)
  {
    v6 = *v2++;
    operator delete(v6);
  }

  return sub_10035F858(a1);
}

void sub_1004F2784(uint64_t a1, char *a2)
{
  if (a2)
  {
    sub_1004F2784(a1, *a2);
    sub_1004F2784(a1, *(a2 + 1));
    v4 = (a2 + 40);
    sub_1004F25AC(&v4);
    operator delete(a2);
  }
}

uint64_t sub_1004F27E4(uint64_t a1, unsigned __int8 *a2)
{
  v4 = 0;
  v2 = *sub_1000994CC(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

uint64_t sub_1004F2A38(uint64_t *a1, uint64_t a2)
{
  v2 = 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 2);
  v3 = v2 + 1;
  if (v2 + 1 > 0xCCCCCCCCCCCCCCCLL)
  {
    sub_1000C7698();
  }

  if (0x999999999999999ALL * ((a1[2] - *a1) >> 2) > v3)
  {
    v3 = 0x999999999999999ALL * ((a1[2] - *a1) >> 2);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 2) >= 0x666666666666666)
  {
    v6 = 0xCCCCCCCCCCCCCCCLL;
  }

  else
  {
    v6 = v3;
  }

  v13 = a1;
  if (v6)
  {
    sub_1004F2C68(a1, v6);
  }

  __p = 0;
  v10 = 20 * v2;
  v11 = 20 * v2;
  v12 = 0;
  uuid_copy((20 * v2), a2);
  *(v10 + 16) = *(a2 + 16);
  v11 += 20;
  sub_1004F2BBC(a1, &__p);
  v7 = a1[1];
  if (v11 != v10)
  {
    v11 = (v11 - v10 - 20) % 0x14uLL + v10;
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v7;
}

void sub_1004F2B6C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1004F2BBC(uint64_t *a1, void *a2)
{
  v4 = a2[1];
  v5 = *a1;
  v6 = a1[1];
  v7 = v4 + *a1 - v6;
  if (v6 != *a1)
  {
    v8 = v4 + *a1 - v6;
    do
    {
      uuid_copy(v8, v5);
      *(v8 + 16) = *(v5 + 16);
      v5 += 20;
      v8 += 20;
    }

    while (v5 != v6);
    v5 = *a1;
  }

  a2[1] = v7;
  *a1 = v7;
  a1[1] = v5;
  a2[1] = v5;
  v9 = a1[1];
  a1[1] = a2[2];
  a2[2] = v9;
  v10 = a1[2];
  a1[2] = a2[3];
  a2[3] = v10;
  *a2 = a2[1];
}

void sub_1004F2C68(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xCCCCCCCCCCCCCCDLL)
  {
    operator new();
  }

  sub_1000C7698();
}

uint64_t *sub_1004F2D24(uint64_t **a1, uint64_t a2)
{
  v3 = sub_10002717C(a1, a2);
  v5 = (a2 + 40);
  sub_1004F25AC(&v5);
  operator delete(a2);
  return v3;
}

uint64_t *sub_1004F2D70(uint64_t **a1, uint64_t *a2)
{
  v3 = sub_10002717C(a1, a2);
  v4 = a2[5];
  if (v4)
  {
    a2[6] = v4;
    operator delete(v4);
  }

  operator delete(a2);
  return v3;
}

void *sub_1004F2DB4(uint64_t a1, uint64_t a2)
{
  result = *a1;
  if (a2)
  {
    v4 = a2 + ((*(a1 + 8) - *result) >> 4);
    if (v4 < 1)
    {
      result -= (255 - v4) >> 8;
    }

    else
    {
      result += v4 >> 8;
    }
  }

  return result;
}

uint64_t sub_1004F2E10(uint64_t a1, int a2)
{
  v2 = *(a1 + 32);
  if (v2 < 0x100)
  {
    a2 = 1;
  }

  if (v2 < 0x200)
  {
    v4 = a2;
  }

  else
  {
    v4 = 0;
  }

  if ((v4 & 1) == 0)
  {
    operator delete(**(a1 + 8));
    *(a1 + 8) += 8;
    *(a1 + 32) -= 256;
  }

  return v4 ^ 1u;
}

uint64_t sub_1004F2E70(void *a1, int a2)
{
  v3 = a1[1];
  v2 = a1[2];
  if (v2 == v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = 32 * (v2 - v3) - 1;
  }

  v5 = v4 - (a1[5] + a1[4]);
  if (v5 < 0x100)
  {
    a2 = 1;
  }

  if (v5 < 0x200)
  {
    v7 = a2;
  }

  else
  {
    v7 = 0;
  }

  if ((v7 & 1) == 0)
  {
    operator delete(*(v2 - 8));
    a1[2] -= 8;
  }

  return v7 ^ 1u;
}

__n128 sub_1004F2EE0@<Q0>(uint64_t *a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X3>, uint64_t a4@<X4>, uint64_t *a5@<X5>, uint64_t a6@<X6>, __n128 *a7@<X8>)
{
  if (a1 == a3)
  {
    v22 = 0;
    v23 = 0uLL;
    v11 = a2;
    v12 = a4;
    v13 = a5;
    v14 = a6;
  }

  else
  {
    v17 = a3 - 1;
    v16 = *a3;
    v22 = 0;
    v23 = 0uLL;
    v18 = a4;
    v13 = a5;
    v14 = a6;
    while (1)
    {
      sub_1004F2FD0(v16, v18, v13, v14, &v22);
      v14 = v23.n128_i64[1];
      v13 = v23.n128_u64[0];
      if (v17 == a1)
      {
        break;
      }

      v19 = *v17--;
      v16 = v19;
      v22 = 0;
      v23 = 0uLL;
      v18 = v19 + 4096;
    }

    v20 = *v17;
    v22 = 0;
    v23 = 0uLL;
    v12 = v20 + 4096;
    v11 = a2;
  }

  sub_1004F2FD0(v11, v12, v13, v14, &v22);
  result = v23;
  a7->n128_u64[0] = a3;
  a7->n128_u64[1] = a4;
  a7[1] = result;
  return result;
}

void sub_1004F2FD0(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X3>, uint64_t a4@<X4>, void *a5@<X8>)
{
  if (a1 == a2)
  {
    a2 = a1;
  }

  else
  {
    v5 = *a3;
    v6 = a2;
    while (1)
    {
      v7 = a4 - v5;
      if ((v6 - a1) >> 4 >= v7 >> 4)
      {
        v8 = v7 >> 4;
      }

      else
      {
        v8 = (v6 - a1) >> 4;
      }

      if (v8)
      {
        v9 = (v6 - 8);
        v10 = -16 * v8;
        do
        {
          *(a4 - 16) = *(v9 - 1);
          a4 -= 16;
          v11 = *v9;
          v9 -= 2;
          *(a4 + 8) = v11;
          v10 += 16;
        }

        while (v10);
      }

      v6 -= 16 * v8;
      if (v6 == a1)
      {
        break;
      }

      v12 = *--a3;
      v5 = v12;
      a4 = v12 + 4096;
    }

    if (*a3 + 4096 == a4)
    {
      v13 = a3[1];
      ++a3;
      a4 = v13;
    }
  }

  *a5 = a2;
  a5[1] = a3;
  a5[2] = a4;
}

double sub_1004F305C(char **a1, char *a2, char **a3, char *a4, uint64_t a5)
{
  if (a1 == a3)
  {
    v7 = *a5;
    v8 = *(a5 + 8);
  }

  else
  {
    v11 = a1 + 1;
    v10 = *a1;
    v7 = *a5;
    v8 = *(a5 + 8);
    v15 = 0;
    v16 = 0uLL;
    for (i = v10 + 4096; ; i = v13 + 4096)
    {
      sub_1004F3118(a2, i, v7, v8, &v15);
      v8 = *(&v16 + 1);
      v7 = v16;
      *a5 = v16;
      *(a5 + 8) = v8;
      if (v11 == a3)
      {
        break;
      }

      v13 = *v11++;
      a2 = v13;
      v15 = 0;
      v16 = 0uLL;
    }

    a2 = *v11;
  }

  v15 = 0;
  v16 = 0uLL;
  sub_1004F3118(a2, a4, v7, v8, &v15);
  result = *&v16;
  *a5 = v16;
  return result;
}

void sub_1004F3118(char *a1@<X1>, char *a2@<X2>, char **a3@<X3>, char *a4@<X4>, char **a5@<X8>)
{
  if (a1 == a2)
  {
    v8 = a1;
    goto LABEL_15;
  }

  v5 = *a3;
  while (1)
  {
    v6 = v5 - a4 + 4096;
    v7 = (a2 - a1) >> 4 >= v6 >> 4 ? v6 >> 4 : (a2 - a1) >> 4;
    if (v7)
    {
      break;
    }

LABEL_11:
    v9 = a3[1];
    ++a3;
    v5 = v9;
    a4 = v9;
  }

  v8 = &a1[16 * v7];
  do
  {
    *a4 = *a1;
    *(a4 + 1) = *(a1 + 1);
    a1 += 16;
    a4 += 16;
  }

  while (a1 != v8);
  if (v8 != a2)
  {
    a1 = v8;
    goto LABEL_11;
  }

  if (a4 == *a3 + 4096)
  {
    v10 = a3[1];
    ++a3;
    a4 = v10;
  }

LABEL_15:
  *a5 = v8;
  a5[1] = a3;
  a5[2] = a4;
}

uint64_t sub_1004F31A8(uint64_t *a1, uint64_t a2)
{
  v2 = 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 2);
  v3 = v2 + 1;
  if (v2 + 1 > 0xCCCCCCCCCCCCCCCLL)
  {
    sub_1000C7698();
  }

  if (0x999999999999999ALL * ((a1[2] - *a1) >> 2) > v3)
  {
    v3 = 0x999999999999999ALL * ((a1[2] - *a1) >> 2);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 2) >= 0x666666666666666)
  {
    v6 = 0xCCCCCCCCCCCCCCCLL;
  }

  else
  {
    v6 = v3;
  }

  v13 = a1;
  if (v6)
  {
    sub_1004F2C68(a1, v6);
  }

  __p = 0;
  v10 = 20 * v2;
  v11 = 20 * v2;
  v12 = 0;
  uuid_copy((20 * v2), a2);
  *(v10 + 16) = *(a2 + 16);
  v11 += 20;
  sub_1004F2BBC(a1, &__p);
  v7 = a1[1];
  if (v11 != v10)
  {
    v11 = (v11 - v10 - 20) % 0x14uLL + v10;
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v7;
}

void sub_1004F32DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1004F332C(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x100;
  v3 = v1 - 256;
  if (!v2)
  {
    v6 = a1[2];
    v7 = a1[3];
    v8 = v7 - *a1;
    if (v6 - a1[1] < v8)
    {
      if (v7 != v6)
      {
        operator new();
      }

      operator new();
    }

    if (v7 == *a1)
    {
      v9 = 1;
    }

    else
    {
      v9 = v8 >> 2;
    }

    v11 = a1;
    sub_100008108(a1, v9);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v10 = *v4;
  a1[1] = v4 + 1;
  return sub_1004F3500(a1, &v10);
}

void sub_1004F34B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *sub_1004F3500(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    v6 = &v5[-*result];
    if (v5 <= *result)
    {
      if (v4 == *result)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*result] >> 2;
      }

      sub_100008108(result, v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      result = memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = v3[1];
    }

    v4 = &v9[v10];
    v3[1] = &v5[8 * v7];
    v3[2] = &v9[v10];
  }

  *v4 = *a2;
  v3[2] += 8;
  return result;
}

const void **sub_1004F3608(const void **result, void *a2)
{
  v3 = result;
  v4 = result[1];
  if (v4 == *result)
  {
    v6 = result[2];
    v7 = result[3];
    if (v6 >= v7)
    {
      if (v7 == v4)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v7 - v4) >> 2;
      }

      sub_100008108(result, v9);
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      result = memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = v3[2];
    }

    v3[1] = v5;
    v3[2] = &v6[8 * v8];
  }

  else
  {
    v5 = result[1];
  }

  *(v5 - 1) = *a2;
  v3[1] = v3[1] - 8;
  return result;
}

const void **sub_1004F3714(const void **result, void *a2)
{
  v3 = result;
  v4 = result[1];
  if (v4 == *result)
  {
    v6 = result[2];
    v7 = result[3];
    if (v6 >= v7)
    {
      if (v7 == v4)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v7 - v4) >> 2;
      }

      sub_100008108(result[4], v9);
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      result = memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = v3[2];
    }

    v3[1] = v5;
    v3[2] = &v6[8 * v8];
  }

  else
  {
    v5 = result[1];
  }

  *(v5 - 1) = *a2;
  v3[1] = v3[1] - 8;
  return result;
}

uint64_t *sub_1004F3820(uint64_t a1, unsigned int *a2)
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
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

void *sub_1004F38F4(uint64_t a1, unint64_t *a2)
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

uint64_t sub_1004F39C8(uint64_t a1, int *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    v4 = sub_1004F3A90(a1, a2);
  }

  else
  {
    sub_1004F3A0C(a1, a2);
    v4 = v3 + 32;
  }

  *(a1 + 8) = v4;
  return v4 - 32;
}

void sub_1004F3A0C(uint64_t a1, int *a2)
{
  v4 = *(a1 + 8);
  v5 = *a2;
  *(v4 + 4) = *(a2 + 2);
  *v4 = v5;
  v6 = *(a2 + 2);
  *(v4 + 8) = &off_100AE0A78;
  *(v4 + 16) = v6;
  if (v6)
  {
    sub_10000C69C(v6);
  }

  *(v4 + 24) = *(a2 + 24);
  *(a1 + 8) = v4 + 32;
}

uint64_t sub_1004F3A90(uint64_t a1, int *a2)
{
  v2 = (*(a1 + 8) - *a1) >> 5;
  v3 = v2 + 1;
  if ((v2 + 1) >> 59)
  {
    sub_1000C7698();
  }

  v6 = *(a1 + 16) - *a1;
  if (v6 >> 4 > v3)
  {
    v3 = v6 >> 4;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFE0)
  {
    v7 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v22 = a1;
  if (v7)
  {
    sub_1004F1E84(a1, v7);
  }

  v8 = 32 * v2;
  v19 = 0;
  v20 = v8;
  v21 = v8;
  v9 = *a2;
  *(v8 + 4) = *(a2 + 2);
  *v8 = v9;
  v10 = *(a2 + 2);
  *(v8 + 8) = &off_100AE0A78;
  *(v8 + 16) = v10;
  v11 = v8;
  v12 = v8;
  if (v10)
  {
    sub_10000C69C(v10);
    v11 = v20;
    v12 = v21;
  }

  *(v8 + 24) = *(a2 + 24);
  *&v21 = v12 + 32;
  v13 = *(a1 + 8);
  v14 = v11 + *a1 - v13;
  sub_1004F3BE0(a1, *a1, v13, v14);
  v15 = *a1;
  *a1 = v14;
  v16 = *(a1 + 16);
  v18 = v21;
  *(a1 + 8) = v21;
  *&v21 = v15;
  *(&v21 + 1) = v16;
  v19 = v15;
  v20 = v15;
  sub_1004F3CC4(&v19);
  return v18;
}

void sub_1004F3BCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1004F3CC4(va);
  _Unwind_Resume(a1);
}

void sub_1004F3BE0(uint64_t a1, int *a2, int *a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v4 = a4;
    v6 = a2;
    v7 = a4 + 8;
    v8 = a2;
    do
    {
      v9 = *v8;
      *(v4 + 4) = *(v8 + 2);
      *v4 = v9;
      v10 = *(v8 + 2);
      *(v4 + 8) = &off_100AE0A78;
      *(v4 + 16) = v10;
      if (v10)
      {
        sub_10000C69C(v10);
      }

      *(v4 + 24) = *(v8 + 24);
      v8 += 8;
      v4 += 32;
      v7 += 32;
    }

    while (v8 != a3);
    if (v6 != a3)
    {
      v11 = v6 + 2;
      do
      {
        *(v6 + 1) = &off_100AE0A78;
        v12 = *(v6 + 2);
        if (v12)
        {
          sub_10000C808(v12);
        }

        v6 += 8;
        v11 += 8;
      }

      while (v6 != a3);
    }
  }
}

uint64_t sub_1004F3CC4(uint64_t a1)
{
  sub_1004F3CFC(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_1004F3CFC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  while (v2 != a2)
  {
    *(a1 + 16) = v2 - 32;
    *(v2 - 24) = &off_100AE0A78;
    v5 = *(v2 - 16);
    if (v5)
    {
      sub_10000C808(v5);
      v2 = *(a1 + 16);
    }

    else
    {
      v2 -= 32;
    }
  }
}

uint64_t sub_1004F3D78(uint64_t *a1, unsigned __int8 *src)
{
  v4 = a1[1];
  if (v4 >= a1[2])
  {
    v5 = sub_1004F3DEC(a1, src);
  }

  else
  {
    uuid_copy(a1[1], src);
    *(v4 + 16) = *(src + 8);
    v5 = v4 + 18;
    a1[1] = v4 + 18;
  }

  a1[1] = v5;
  return v5 - 18;
}

uint64_t sub_1004F3DEC(uint64_t *a1, uint64_t a2)
{
  v2 = 0x8E38E38E38E38E39 * ((a1[1] - *a1) >> 1);
  v3 = v2 + 1;
  if (v2 + 1 > 0xE38E38E38E38E38)
  {
    sub_1000C7698();
  }

  if (0x1C71C71C71C71C72 * ((a1[2] - *a1) >> 1) > v3)
  {
    v3 = 0x1C71C71C71C71C72 * ((a1[2] - *a1) >> 1);
  }

  if (0x8E38E38E38E38E39 * ((a1[2] - *a1) >> 1) >= 0x71C71C71C71C71CLL)
  {
    v6 = 0xE38E38E38E38E38;
  }

  else
  {
    v6 = v3;
  }

  v13 = a1;
  if (v6)
  {
    sub_1003C45E4(a1, v6);
  }

  __p = 0;
  v10 = 18 * v2;
  v11 = 18 * v2;
  v12 = 0;
  uuid_copy((18 * v2), a2);
  *(v10 + 16) = *(a2 + 16);
  v11 += 18;
  sub_1003C5314(a1, &__p);
  v7 = a1[1];
  if (v11 != v10)
  {
    v11 = (v11 - v10 - 18) % 0x12uLL + v10;
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v7;
}

void sub_1004F3F40(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1004F3F98(uint64_t a1, unsigned __int8 *uu1)
{
  v3 = 0;
  result = *sub_10004A7D0(a1, &v3, uu1);
  if (!result)
  {
    sub_1004F403C();
  }

  return result;
}

void sub_1004F40A8(_Unwind_Exception *a1)
{
  *v1 = 0;
  operator delete(v2);
  _Unwind_Resume(a1);
}

void sub_1004F4C94(uint64_t a1, void *a2)
{
  obj = *(a1 + 112);
  v4 = a2;
  objc_sync_enter(obj);
  [*(a1 + 112) addObject:v4];

  objc_sync_exit(obj);
}

void sub_1004F4D08(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id obj)
{
  objc_sync_exit(obj);

  _Unwind_Resume(a1);
}

void sub_1004F4D28(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v9[0] = @"kCBMsgArgDeviceUUID";
  v9[1] = @"kCBMsgArgAncsAuthorization";
  v10[0] = v5;
  v6 = [NSNumber numberWithBool:a3];
  v10[1] = v6;
  v7 = [NSDictionary dictionaryWithObjects:v10 forKeys:v9 count:2];

  if (!(*(*a1 + 16))(a1))
  {
    v8 = 117;
    goto LABEL_5;
  }

  if ((*(*a1 + 16))(a1) == 1)
  {
    v8 = 67;
LABEL_5:
    sub_100052C08(a1, v8, v7);
  }
}

void sub_1004F4E94(void *a1, uint64_t a2)
{
  v5 = @"kCBMsgArgRequiresTCC";
  v3 = [NSNumber numberWithBool:a2];
  v6 = v3;
  v4 = [NSDictionary dictionaryWithObjects:&v6 forKeys:&v5 count:1];

  sub_100052C08(a1, 3, v4);
}

id sub_1004F4F74(uint64_t a1)
{
  v2 = objc_alloc_init(NSMutableString);
  if ((*(*a1 + 16))(a1))
  {
    if ((*(*a1 + 16))(a1) == 1)
    {
      v3 = "Peripheral";
    }

    else
    {
      v4 = (*(*a1 + 16))(a1);
      v3 = "Unknown";
      if (v4 == 3)
      {
        v3 = "Classic";
      }
    }
  }

  else
  {
    v3 = "Central";
  }

  [v2 appendFormat:@"Type: %s\n", v3];
  sub_1004F5248((a1 + 8), __p);
  if (v14 >= 0)
  {
    v5 = __p;
  }

  else
  {
    v5 = __p[0];
  }

  [v2 appendFormat:@"Last foreground time: %s\n", v5];
  if (v14 < 0)
  {
    operator delete(__p[0]);
  }

  if (*(a1 + 24))
  {
    v6 = "Yes";
  }

  else
  {
    v6 = "No";
  }

  [v2 appendFormat:@"Supports backgrounding: %s\n", v6];
  v7 = *(a1 + 32);
  if (v7)
  {
    v8 = "Unknown";
    if (v7 == 1)
    {
      v8 = "Listener";
    }

    if (v7 == 2)
    {
      v9 = "Programmatic";
    }

    else
    {
      v9 = v8;
    }

    [v2 appendFormat:@"Pairing agent: %s\n", v9];
  }

  v10 = *(a1 + 129);
  if (v10 <= 7)
  {
    if (v10 == 2)
    {
      v11 = "terminated";
      goto LABEL_34;
    }

    if (v10 == 4)
    {
      v11 = "suspended";
      goto LABEL_34;
    }

LABEL_33:
    v11 = "unknown";
    goto LABEL_34;
  }

  if (v10 == 8)
  {
    v11 = "background-running";
    goto LABEL_34;
  }

  if (v10 == 16)
  {
    v11 = "foreground-running";
    goto LABEL_34;
  }

  if (v10 != 32)
  {
    goto LABEL_33;
  }

  v11 = "daemon";
LABEL_34:
  [v2 appendFormat:@"Execution state: %s\n", v11];
  if (!(*(*a1 + 16))(a1) && *(a1 + 73) == 1)
  {
    [v2 appendFormat:@"Session is a Extension\n"];
  }

  return v2;
}

void sub_1004F521C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

_BYTE *sub_1004F5248@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v6 = 0u;
  v7 = 0u;
  *__str = 0u;
  v5 = 0u;
  snprintf(__str, 0x3FuLL, "%0llu.%0llu", *a1, a1[1]);
  return sub_100007E30(a2, __str);
}

void sub_1004F52F4(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  v21 = 0;
  if (qword_100B508B0 != -1)
  {
    sub_10083AE50();
  }

  v9 = off_100B508A8;
  sub_10004DFB4(v24, v7);
  v10 = sub_1000C4FCC(v9, v24, &v21);
  if (v21)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  if (v11)
  {
    if (qword_100B508B0 != -1)
    {
      sub_10083AEE8();
    }

    v12 = off_100B508A8;
    sub_10004DFB4(v24, v7);
    if (!sub_10074E9A4(v12, v24) && os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_ERROR))
    {
      sub_10083AF10();
    }

    v13 = sub_1000B4EFC();
    v14 = v21;
    v15 = v8;
    v16 = sub_100373BD8(v13, v14, [v8 bytes], objc_msgSend(v8, "length"));
    if (v16 && os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_ERROR))
    {
      sub_10083AF80();
    }
  }

  else
  {
    v17 = qword_100BCE988;
    if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_ERROR))
    {
      sub_100018384(a2, v24);
      sub_10083AE64(v24, v7, buf, v17);
    }

    v16 = 312;
  }

  v18 = *(a1 + 120);
  v19 = xpc_dictionary_create(0, 0, 0);
  *uuid = 0;
  v23 = 0;
  [v7 getUUIDBytes:uuid];
  xpc_dictionary_set_uuid(v19, "kCBMsgArgDeviceUUID", uuid);
  xpc_dictionary_set_int64(v19, "kCBMsgArgResult", v16);
  if (v16)
  {
    v20 = 0;
  }

  else
  {
    v20 = [v8 length];
  }

  xpc_dictionary_set_int64(v19, "kCBMsgArgBytesSent", v20);
  if (v18)
  {
    sub_10004DFB8(v18 - 144, 145, v19, 1);
  }

  else
  {
    xpc_release(v19);
  }

  if (*(a1 + 352))
  {
    if (qword_100B512F8 != -1)
    {
      sub_10083AC60();
    }

    sub_1003B2518(off_100B512F0, *(a1 + 88), 1);
  }
}

uint64_t sub_1004F55E0(uint64_t a1)
{
  v1 = *(a1 + 120);
  if (v1)
  {
    LOBYTE(v1) = *(v1 + 28);
  }

  return v1 & 1;
}

void sub_1004F55F4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 120);
  if (v7 && *(v7 + 28) == 1)
  {
    v8 = qword_100BCE988;
    if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v11[0]) = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "sending data to upper layer", v11, 2u);
    }

    v9 = xpc_dictionary_create(0, 0, 0);
    v11[0] = 0;
    v11[1] = 0;
    [v5 getUUIDBytes:v11];
    xpc_dictionary_set_uuid(v9, "kCBMsgArgDeviceUUID", v11);
    v10 = v6;
    xpc_dictionary_set_data(v9, "kCBMsgArgObjectDiscoveryData", [v6 bytes], objc_msgSend(v6, "length"));
    sub_10004DFB8(v7 - 144, 146, v9, 1);
  }
}

void sub_1004F576C(uint64_t a1)
{
  if (*(a1 + 408))
  {
    v2 = *(a1 + 416);
    if (v2)
    {
      dispatch_suspend(v2);
    }

    else
    {
      v5 = sub_100007EE8();
      v6 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, *(v5 + 8));
      *(a1 + 416) = v6;
      handler[0] = _NSConcreteStackBlock;
      handler[1] = 3221225472;
      handler[2] = sub_1004F58F0;
      handler[3] = &unk_100ADF8F8;
      handler[4] = a1;
      dispatch_source_set_event_handler(v6, handler);
    }

    v7 = *(a1 + 392);
    v8 = -1;
    if (v7 != (a1 + 400))
    {
      do
      {
        if (v8 >= v7[5])
        {
          v8 = v7[5];
        }

        v9 = v7[1];
        if (v9)
        {
          do
          {
            v10 = v9;
            v9 = *v9;
          }

          while (v9);
        }

        else
        {
          do
          {
            v10 = v7[2];
            v11 = *v10 == v7;
            v7 = v10;
          }

          while (!v11);
        }

        v7 = v10;
      }

      while (v10 != (a1 + 400));
    }

    dispatch_source_set_timer(*(a1 + 416), v8, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
    dispatch_resume(*(a1 + 416));
  }

  else
  {
    v3 = qword_100BCE988;
    if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "No delayed connection", buf, 2u);
    }

    v4 = *(a1 + 416);
    if (v4)
    {
      dispatch_source_cancel(v4);
      dispatch_release(*(a1 + 416));
      *(a1 + 416) = 0;
    }
  }
}

void sub_1004F58F8(uint64_t a1)
{
  v2 = dispatch_time(0, 0);
  v21 = 0;
  v22 = 0;
  v23 = 0;
  v4 = *(a1 + 392);
  if (v4 != (a1 + 400))
  {
    v5 = v2;
    *&v3 = 134218498;
    v17 = v3;
    do
    {
      if (v4[5] <= v5)
      {
        v20 = v4[4];
        v6 = [*(a1 + 384) objectForKeyedSubscript:v20];
        v7 = v4[6];
        v8 = qword_100BCE988;
        if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEFAULT))
        {
          v9 = [v6 delay];
          v10 = v20;
          sub_100018384(v7, __p);
          v11 = __p;
          if (v19 < 0)
          {
            v11 = __p[0];
          }

          *buf = v17;
          *&buf[4] = v9;
          v25 = 2114;
          v26 = v10;
          v27 = 2082;
          v28 = v11;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "delayed connection (%ld seconds) passed, connecting to device %{public}@ session %{public}s now", buf, 0x20u);
          if (v19 < 0)
          {
            operator delete(__p[0]);
          }
        }

        [v6 setDelay:{0, v17}];
        sub_1004F5B74(a1, v7, v20, v6);
        sub_1004F8224(&v21, &v20);
      }

      v12 = v4[1];
      if (v12)
      {
        do
        {
          v13 = v12;
          v12 = *v12;
        }

        while (v12);
      }

      else
      {
        do
        {
          v13 = v4[2];
          v14 = *v13 == v4;
          v4 = v13;
        }

        while (!v14);
      }

      v4 = v13;
    }

    while (v13 != (a1 + 400));
    v15 = v21;
    v16 = v22;
    while (v15 != v16)
    {
      sub_100506598(a1 + 392, v15);
      [*(a1 + 384) removeObjectForKey:*v15++];
    }
  }

  sub_1004F576C(a1);
  *buf = &v21;
  sub_100506518(buf);
}

void sub_1004F5B28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, void **a19)
{
  a19 = &a16;
  sub_100506518(&a19);
  _Unwind_Resume(a1);
}

void sub_1004F5B74(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v5 = a3;
  v190 = v5;
  v175 = a4;
  v189 = 0xFFFF;
  if (qword_100B50F78 != -1)
  {
    sub_10083AFF4();
  }

  v6 = qword_100B50F70;
  sub_10004DFB4(buf, v5);
  sub_1005807A8(v6, buf, &v189);
  if (v189 == 0xFFFF || v189 == 2)
  {
    if ((*(a1 + 128) & 1) == 0)
    {
      if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_ERROR))
      {
        sub_10083B008();
      }

      if (qword_100B512F8 != -1)
      {
        sub_10083AC60();
      }

      sub_1003B1434(off_100B512F0, a2, a1, v190, 341, 0);
      goto LABEL_391;
    }

    if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEBUG))
    {
      sub_10083B078();
    }

    v7 = *(a1 + 120);
    if (v7 && *(v7 - 64) >= 1)
    {
      if (qword_100B54208 != -1)
      {
        sub_10083AD7C();
      }

      if (sub_100067048(qword_100B54200, 1uLL, *(a1 + 88)))
      {
        v8 = [v175 connectionUseCase];
        v9 = [v175 useCaseList];
        v10 = v9;
        v11 = v8;
        if (v9 && [v9 count])
        {
          if ([v10 count] == 1)
          {
            v12 = [v10 objectAtIndexedSubscript:0];
            v13 = [v12 longLongValue] != 0;

            if (!v13 && v11 == 0)
            {
              goto LABEL_17;
            }
          }
        }

        else if (!v8)
        {
LABEL_17:
          if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_ERROR))
          {
            sub_10083B0E8();
          }

          if (qword_100B512F8 != -1)
          {
            sub_10083AC60();
          }

          sub_1003B1434(off_100B512F0, a2, a1, v190, 348, 0);

          goto LABEL_391;
        }
      }
    }
  }

  [*(a1 + 312) addObject:v190];
  if (qword_100B508D0 != -1)
  {
    sub_10083B158();
  }

  v14 = off_100B508C8;
  v15 = v190;
  sub_100007E30(__p, "_FORCE_GATT_SERVICES_DISCOVERY_");
  v16 = sub_10004EB40(v14, v15, __p);
  v17 = v16;
  if (v188 < 0)
  {
    operator delete(__p[0]);
    if (!v17)
    {
      goto LABEL_42;
    }
  }

  else if (!v16)
  {
    goto LABEL_42;
  }

  v18 = qword_100BCE988;
  if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Forcing GATT rediscovery later on, deleting cache database", buf, 2u);
  }

  if (qword_100B50900 != -1)
  {
    sub_10083B180();
  }

  sub_100707D50(qword_100B508F8, v190);
  if (qword_100B508D0 != -1)
  {
    sub_10083B158();
  }

  sub_10078380C(off_100B508C8, v190, @"_FORCE_GATT_SERVICES_DISCOVERY_");
LABEL_42:
  if (*(a1 + 44) == 1)
  {
    if (qword_100B54208 != -1)
    {
      sub_10083AD7C();
    }

    sub_1007F0AC8(qword_100B54200, a2, v190, v175);
  }

  if ([v175 resetDisconnectionHistory])
  {
    v19 = qword_100BCE988;
    if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      *&buf[4] = v190;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Trigger resetDisconnectionHistory %{public}@ ", buf, 0xCu);
    }

    if (qword_100B508B0 != -1)
    {
      sub_10083AEE8();
    }

    v20 = off_100B508A8;
    v21 = [v190 UUIDString];
    v22 = v21;
    sub_100007E30(v185, [v21 UTF8String]);
    sub_100769EEC(v20, v185);
    if (v186 < 0)
    {
      operator delete(v185[0]);
    }
  }

  v23 = [*(a1 + 224) objectForKey:v190];
  v24 = v23 == 0;

  if (v24)
  {
    v27 = *(a1 + 296);
    if (v27)
    {
      v28 = v190;
      v29 = a1 + 296;
      do
      {
        v30 = *(v27 + 32);
        v31 = v30 >= v190;
        v32 = v30 < v190;
        if (v31)
        {
          v29 = v27;
        }

        v27 = *(v27 + 8 * v32);
      }

      while (v27);
      if (v29 != a1 + 296 && v190 >= *(v29 + 32))
      {
        v58 = qword_100BCE988;
        if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          *&buf[4] = v28;
          _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_DEFAULT, "FindMy Device %{public}@ already parked until new keys become available", buf, 0xCu);
        }

        goto LABEL_391;
      }
    }

    if (qword_100B508D0 != -1)
    {
      sub_10083B158();
    }

    v33 = sub_1000500A0(off_100B508C8, v190);
    if (v33)
    {
      if (qword_100B508D0 != -1)
      {
        sub_10083B158();
      }

      sub_1000AFD60(off_100B508C8, v190, 2u, buf);
      v34 = *&buf[16] == 0;
      sub_10000CEDC(buf, *&buf[8]);

      if (v34)
      {
        v59 = qword_100BCE988;
        if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          *&buf[4] = v190;
          _os_log_impl(&_mh_execute_header, v59, OS_LOG_TYPE_DEFAULT, "Device %{public}@ is FindMy but has no valid addresses/keys", buf, 0xCu);
        }

        v60 = v175;
        *buf = &v190;
        v61 = sub_100506788(a1 + 288, &v190);
        objc_storeStrong(v61 + 5, a4);
        v61[6] = a2;
        [*(a1 + 224) setObject:v60 forKey:v190];

        goto LABEL_391;
      }
    }

    if ([v175 isLatencyCritical])
    {
      v35 = qword_100BCE988;
      if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        *&buf[4] = v190;
        _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "Latency Critical Action: LE Connection for device %{public}@", buf, 0xCu);
      }

      sub_1004F8318(a1);
    }

    if (qword_100B508B0 != -1)
    {
      sub_10083AEE8();
    }

    v171 = sub_100029630(off_100B508A8);
    v36 = v175;
    if (qword_100B54208 != -1)
    {
      sub_10083AD7C();
      v36 = v175;
    }

    v37 = sub_1007F0440(qword_100B54200, [v36 connectionUseCase]);
    if (qword_100B54208 != -1)
    {
      sub_10083AD7C();
      v36 = v175;
    }

    v38 = sub_1007F024C(qword_100B54200, [v36 connectionUseCase]);
    if (v37 >= v38)
    {
      v48 = qword_100BCE988;
      if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEFAULT))
      {
        v49 = [v175 connectionUseCase];
        *buf = 67109376;
        *&buf[4] = v49;
        *&buf[8] = 1024;
        *&buf[10] = v37;
        _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, "Exceeded max connection limit for use case:%d for counter: %d", buf, 0xEu);
      }

      v183 = 0u;
      v184 = 0u;
      v181 = 0u;
      v182 = 0u;
      v50 = v172;
      v51 = [v50 countByEnumeratingWithState:&v181 objects:v196 count:16];
      if (v51)
      {
        v52 = *v182;
        do
        {
          v53 = 0;
          do
          {
            if (*v182 != v52)
            {
              objc_enumerationMutation(v50);
            }

            v54 = *(*(&v181 + 1) + 8 * v53);
            if (qword_100B508D0 != -1)
            {
              sub_10083B158();
            }

            v55 = sub_100788D8C(off_100B508C8, v54);
            if (v55 == [v175 connectionUseCase])
            {
              if (qword_100B54208 != -1)
              {
                sub_10083AD7C();
              }

              if (sub_1007F0440(qword_100B54200, [v175 connectionUseCase]) >= v38)
              {
                v56 = qword_100BCE988;
                if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEFAULT))
                {
                  v57 = [v175 connectionUseCase];
                  *buf = 138543618;
                  *&buf[4] = v54;
                  *&buf[12] = 1024;
                  *&buf[14] = v57;
                  _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_DEFAULT, "Exceeded max connection :device %{public}@ for use case:%d", buf, 0x12u);
                }
              }
            }

            v53 = v53 + 1;
          }

          while (v51 != v53);
          v51 = [v50 countByEnumeratingWithState:&v181 objects:v196 count:16];
        }

        while (v51);
      }

      if (qword_100B512F8 != -1)
      {
        sub_10083AC60();
      }

      sub_1003B1434(off_100B512F0, a2, a1, v190, 336, 0);
      goto LABEL_390;
    }

    v39 = v175;
    if ([v175 delay] >= 1)
    {
      v40 = qword_100BCE988;
      if (*(a1 + 24) == 1)
      {
        if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEFAULT))
        {
          v41 = v190;
          v42 = [v175 delay];
          *buf = 138543618;
          *&buf[4] = v41;
          *&buf[12] = 2048;
          *&buf[14] = v42;
          _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "Add delayed connection to device %{public}@ with %ld seconds delay.", buf, 0x16u);
          v39 = v175;
        }

        v43 = dispatch_time(0, 1000000000 * [v39 delay]);
        *buf = &v190;
        v44 = sub_100506860(a1 + 392, &v190);
        v44[5] = v43;
        v44[6] = a2;
        [*(a1 + 384) setObject:v175 forKey:v190];
        sub_1004F576C(a1);
        goto LABEL_390;
      }

      if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_ERROR))
      {
        sub_10083B1D0();
        v39 = v175;
      }
    }

    sub_1004F8610(a1, v190, v39);
    sub_1004F8AC8(a1, v190, v175);
    sub_1004F8C80(a1, a2, v190, v175);
    if (qword_100B508D0 != -1)
    {
      sub_10083B158();
    }

    v62 = off_100B508C8;
    v63 = v190;
    sub_100018384(a2, buf);
    v64 = buf[23];
    v65 = *buf;
    v66 = +[NSString defaultCStringEncoding];
    if (v64 >= 0)
    {
      v67 = buf;
    }

    else
    {
      v67 = v65;
    }

    v68 = [NSString stringWithCString:v67 encoding:v66];
    v69 = [v175 clientBundleID];
    sub_10078C27C(v62, v63, v68, v69);

    if (buf[23] < 0)
    {
      operator delete(*buf);
    }

    sub_1004F915C(v70, v190, v175);
    if (qword_100B508D0 != -1)
    {
      sub_10083B158();
    }

    sub_10078A1C8(off_100B508C8, v190, [v175 minRSSILevelForConnection]);
    v71 = qword_100BCE988;
    if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEFAULT))
    {
      v72 = [v175 minRSSILevelForConnection];
      *buf = 67109378;
      *&buf[4] = v72;
      *&buf[8] = 2114;
      *&buf[10] = v190;
      _os_log_impl(&_mh_execute_header, v71, OS_LOG_TYPE_DEFAULT, "Setting minimum RSSI level for connection to %d for device %{public}@", buf, 0x12u);
    }

    v73 = qword_100BCE9B8;
    if (os_log_type_enabled(qword_100BCE9B8, OS_LOG_TYPE_DEFAULT))
    {
      v74 = *(a1 + 88);
      *buf = 138543618;
      *&buf[4] = v190;
      *&buf[12] = 2114;
      *&buf[14] = v74;
      _os_log_impl(&_mh_execute_header, v73, OS_LOG_TYPE_DEFAULT, "App connecting - {cbuuid: %{public}@, bundle: %{public}@}", buf, 0x16u);
    }

    v75 = [v175 connectionUseCase];
    v76 = qword_100BCE988;
    if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEFAULT))
    {
      v77 = sub_10002B1DC(v75);
      v78 = *(a1 + 88);
      *buf = 136446722;
      *&buf[4] = v77;
      *&buf[12] = 2114;
      *&buf[14] = v190;
      *&buf[22] = 2114;
      *&buf[24] = v78;
      _os_log_impl(&_mh_execute_header, v76, OS_LOG_TYPE_DEFAULT, "BLE Connecting %{public}s %{public}@ for %{public}@", buf, 0x20u);
      v76 = qword_100BCE988;
    }

    if (os_signpost_enabled(v76))
    {
      v79 = sub_10002B1DC(v75);
      v80 = *(a1 + 88);
      *buf = 136446722;
      *&buf[4] = v79;
      *&buf[12] = 2114;
      *&buf[14] = v190;
      *&buf[22] = 2114;
      *&buf[24] = v80;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v76, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "BTSignPost", "BLE Connecting %{public}s %{public}@ for %{public}@", buf, 0x20u);
    }

    if (qword_100B508D0 != -1)
    {
      sub_10083B158();
    }

    v81 = v175;
    v82 = off_100B508C8;
    v83 = v190;
    Current = CFAbsoluteTimeGetCurrent();
    sub_100786CD8(v82, v83, Current);
    v85 = qword_100BCE988;
    if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEFAULT))
    {
      v86 = v190;
      sub_100018384(a2, uu1);
      v87 = v195 >= 0 ? uu1 : *uu1;
      *buf = 138543874;
      *&buf[4] = v86;
      *&buf[12] = 2082;
      *&buf[14] = v87;
      *&buf[22] = 2114;
      v81 = v175;
      *&buf[24] = v175;
      _os_log_impl(&_mh_execute_header, v85, OS_LOG_TYPE_DEFAULT, "Connecting device %{public}@ for session %{public}s with options %{public}@", buf, 0x20u);
      if (v195 < 0)
      {
        operator delete(*uu1);
      }
    }

    if (*(a1 + 28) == 1)
    {
      v88 = [*(a1 + 88) hasPrefix:@"com.apple."];
      v89 = v75 ? 1 : v88;
      if ((v89 & 1) == 0)
      {
        if (qword_100B508D0 != -1)
        {
          sub_10083B158();
          v81 = v175;
        }

        sub_1007893AC(off_100B508C8, v190, @"LAST_CONNECTED_APP_BUNDLE_ID", *(a1 + 88));
      }
    }

    v90 = [v81 ctkdChosenTransport];
    v91 = v90;
    if (v189 == 1 && v90 != 1)
    {
      v92 = qword_100BCE988;
      if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        *&buf[4] = v190;
        *&buf[12] = 1024;
        *&buf[14] = 1;
        _os_log_impl(&_mh_execute_header, v92, OS_LOG_TYPE_DEFAULT, "Device %{public}@ is connected to CATT transport=%d", buf, 0x12u);
      }

      [*(a1 + 224) setObject:v175 forKey:v190];
      if (qword_100B512F8 != -1)
      {
        sub_10083AC60();
      }

      sub_1003B1434(off_100B512F0, a2, a1, v190, 0, 0);
      goto LABEL_390;
    }

    if (qword_100B508B0 != -1)
    {
      sub_10083AEE8();
    }

    v93 = off_100B508A8;
    sub_10004DFB4(buf, v190);
    if (sub_100050290(v93, buf))
    {
      goto LABEL_178;
    }

    if (qword_100B508B0 != -1)
    {
      sub_10083AEE8();
    }

    v94 = off_100B508A8;
    sub_10004DFB4(uu1, v190);
    if (sub_10074738C(v94, uu1))
    {
LABEL_178:
      if (([v175 disableLeGATT] & 1) == 0)
      {
        if (qword_100B508D0 != -1)
        {
          sub_10083B158();
        }

        if (sub_10078D924(off_100B508C8, v190))
        {
          if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_ERROR))
          {
            sub_10083B20C();
          }

          if (qword_100B512F8 != -1)
          {
            sub_10083AC60();
          }

          sub_1003B1434(off_100B512F0, a2, a1, v190, 117, 0);
        }
      }
    }

    v95 = [v175 connectionUseCase] & 0xFFFF0000;
    if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEBUG))
    {
      sub_10083B27C();
    }

    if (qword_100B508D0 != -1)
    {
      sub_10083B158();
    }

    sub_10078D9B0(off_100B508C8, v190, v95 == 589824);
    if (qword_100B508D0 != -1)
    {
      sub_10083B158();
    }

    v96 = sub_100046458(off_100B508C8, v190, 0);
    v97 = 0;
    if ((v96 & 0xFF000000000000) == 0 && (v96 & 0xFFFFFFFFFFFFLL) != 0)
    {
      if (qword_100B508F0 != -1)
      {
        sub_10083B2F4();
      }

      v98 = sub_1000504C8(off_100B508E8, v96, 0);
      v99 = v98;
      if (v98 && sub_1000C0348(v98))
      {
        v100 = sub_1005399A0(v99);
        if (v91 == 1)
        {
          v97 = 0;
        }

        else
        {
          v97 = v100;
        }
      }

      else
      {
        v97 = 0;
      }
    }

    if (v75 == 65541)
    {
      v101 = qword_100BCE988;
      if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEFAULT))
      {
        v102 = *(a1 + 88);
        *buf = 138543618;
        *&buf[4] = v102;
        *&buf[12] = 2114;
        *&buf[14] = v190;
        _os_log_impl(&_mh_execute_header, v101, OS_LOG_TYPE_DEFAULT, "AudioQualityOptimizer - found client for CI optimization{bundleID: %{public}@, device:%{public}@}", buf, 0x16u);
      }

      if (qword_100B508D0 != -1)
      {
        sub_10083B158();
      }

      sub_100787764(off_100B508C8, v190, 1);
    }

    if (qword_100B512F8 != -1)
    {
      sub_10083AC60();
    }

    if ((sub_1003C0350(off_100B512F0, v190) | v97))
    {
      sub_1004F9298(a1, v190);
      goto LABEL_232;
    }

    sub_100018384(a2, buf);
    if (sub_1003D2140(buf, "com.apple.bluetoothd", 0) == -1)
    {
      v104 = 0;
    }

    else
    {
      if (qword_100B508D0 != -1)
      {
        sub_10083B158();
      }

      sub_1000B006C(off_100B508C8, v190, uu1);
      v103 = *&uu1[8];
      if (v195 >= 0)
      {
        v103 = v195;
      }

      v104 = v103 != 0;
      if ((v195 & 0x8000000000000000) != 0)
      {
        operator delete(*uu1);
      }
    }

    if (buf[23] < 0)
    {
      operator delete(*buf);
    }

    if (v104)
    {
      if (qword_100B508B0 != -1)
      {
        sub_10083AEE8();
      }

      v105 = off_100B508A8;
      sub_10004DFB4(buf, v190);
      sub_10074EA18(v105, buf);
    }

    v106 = v175;
    if ([v175 requiresLowLatency])
    {
      if (qword_100B508B0 != -1)
      {
        sub_10083AEE8();
        v106 = v175;
      }

      v107 = off_100B508A8;
      sub_10004DFB4(buf, v190);
      sub_10074EA18(v107, buf);
    }

    if ([v106 opportunistic])
    {
      goto LABEL_232;
    }

    if (qword_100B508B0 != -1)
    {
      sub_10083AEE8();
    }

    v115 = sub_10074A128(off_100B508A8, v190);
    v116 = v115;
    if (v115 <= 201)
    {
      if (!v115)
      {
LABEL_232:
        v108 = [v175 temporaryLTK];
        if (!v108)
        {
          goto LABEL_281;
        }

        v109 = [v175 temporaryLTK];
        v110 = [v109 length] == 0;

        if (v110)
        {
          goto LABEL_281;
        }

        v111 = qword_100BCE988;
        if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          *&buf[4] = v190;
          _os_log_impl(&_mh_execute_header, v111, OS_LOG_TYPE_DEFAULT, "setting up temporary LTK for device %{public}@", buf, 0xCu);
        }

        if (qword_100B508D0 != -1)
        {
          sub_10083B158();
        }

        v112 = v175;
        if (sub_1007868F4(off_100B508C8, v190))
        {
          if (qword_100B508D0 != -1)
          {
            sub_10083B158();
            v112 = v175;
          }

          v113 = off_100B508C8;
          sub_10004DFB4(buf, v190);
          v114 = sub_10078AF34(v113, buf);
        }

        else
        {
          if (qword_100B508D0 != -1)
          {
            sub_10083B158();
            v112 = v175;
          }

          v114 = sub_100046458(off_100B508C8, v190, 0);
        }

        v121 = v114;
        if (qword_100B508D0 != -1)
        {
          sub_10083B158();
          v112 = v175;
        }

        sub_1000AFD60(off_100B508C8, v190, 2u, buf);
        if (!*&buf[8])
        {
LABEL_272:
          sub_10000CEDC(buf, *&buf[8]);
          v124 = qword_100BCE988;
          if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            *&buf[4] = v190;
            _os_log_impl(&_mh_execute_header, v124, OS_LOG_TYPE_DEFAULT, "setting up temporary LTK for device %@", buf, 0xCu);
          }

          v125 = [v112 temporaryLTK];
          v126 = [v125 length];

          buf[0] = v126;
          uu1[0] = 2;
          if (qword_100B508C0 != -1)
          {
            sub_10083B37C();
          }

          v127 = off_100B508B8;
          v128 = [v175 temporaryLTK];
          v129 = v128;
          v130 = [v128 bytes];
          v131 = [v175 temporaryLTK];
          sub_1007C6A30(v127, v121, 5, v130, [v131 length]);

          if (qword_100B508C0 != -1)
          {
            sub_10083B37C();
          }

          sub_1007C6A30(off_100B508B8, v121, 6, buf, 1u);
          if (qword_100B508C0 != -1)
          {
            sub_10083B37C();
          }

          sub_1007C6A30(off_100B508B8, v121, 7, uu1, 1u);
          goto LABEL_281;
        }

        v122 = *&buf[8];
        while (1)
        {
          v123 = v122[4];
          if (v121 >= v123)
          {
            if (v123 >= v121)
            {
              sub_10000CEDC(buf, *&buf[8]);
              v153 = qword_100BCE988;
              if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEFAULT))
              {
                v154 = v190;
                sub_10004D9B0();
                v155 = (buf[23] & 0x80u) == 0 ? buf : *buf;
                *uu1 = 138412546;
                *&uu1[4] = v154;
                *&uu1[12] = 2080;
                *&uu1[14] = v155;
                _os_log_impl(&_mh_execute_header, v153, OS_LOG_TYPE_DEFAULT, "Ignoring temporary LTK for device %@ with address %s as we already have extra addresses and LTK's set up", uu1, 0x16u);
                if (buf[23] < 0)
                {
                  operator delete(*buf);
                }
              }

LABEL_281:
              v132 = [v175 temporaryIRK];
              if (v132)
              {
                v133 = [v175 temporaryIdentityAddress];
                v134 = v133 == 0;

                if (!v134)
                {
                  v135 = qword_100BCE988;
                  if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 138543362;
                    *&buf[4] = v190;
                    _os_log_impl(&_mh_execute_header, v135, OS_LOG_TYPE_DEFAULT, "setting up temporary IRK for device %{public}@", buf, 0xCu);
                  }

                  v136 = [v175 temporaryIdentityAddress];
                  v137 = sub_100777FF4(v136);

                  v179[0] = 0;
                  v138 = sub_1002D3618(v137);
                  *&v179[1] = v138;
                  v180 = WORD2(v138);
                  v139 = [v175 temporaryIRK];
                  v140 = [v139 length];

                  if (v140 == 16)
                  {
                    v193 = 0uLL;
                    v141 = [v175 temporaryIRK];
                    v142 = v141;
                    v193 = *[v141 bytes];

                    if (qword_100B508C0 != -1)
                    {
                      sub_10083B37C();
                    }

                    sub_1007CA114(off_100B508B8, v179, &v193, v190);
                    if (qword_100B508D0 != -1)
                    {
                      sub_10083B158();
                    }

                    v143 = off_100B508C8;
                    sub_10004DFB4(buf, v190);
                    sub_10078AFD0(v143, buf, v137, 0);
                    if (qword_100B508B0 != -1)
                    {
                      sub_10083AEE8();
                    }

                    v144 = off_100B508A8;
                    sub_10004DFB4(buf, v190);
                    if (sub_10074738C(v144, buf))
                    {
                      if (qword_100B508B0 != -1)
                      {
                        sub_10083AEE8();
                      }

                      v145 = sub_1004F935C(off_100B508A8, v190);
                      v146 = qword_100BCE988;
                      if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEFAULT))
                      {
                        sub_10004D9B0();
                        v147 = buf[23];
                        v148 = *buf;
                        sub_10004D9B0();
                        v149 = buf;
                        if (v147 < 0)
                        {
                          v149 = v148;
                        }

                        if (v195 >= 0)
                        {
                          v150 = uu1;
                        }

                        else
                        {
                          v150 = *uu1;
                        }

                        LODWORD(v191.__r_.__value_.__l.__data_) = 136446466;
                        *(v191.__r_.__value_.__r.__words + 4) = v149;
                        WORD2(v191.__r_.__value_.__r.__words[1]) = 2082;
                        *(&v191.__r_.__value_.__r.__words[1] + 6) = v150;
                        _os_log_impl(&_mh_execute_header, v146, OS_LOG_TYPE_DEFAULT, "Connecting address %{public}s, temp address %{public}s", &v191, 0x16u);
                        if (v195 < 0)
                        {
                          operator delete(*uu1);
                        }

                        if (buf[23] < 0)
                        {
                          operator delete(*buf);
                        }
                      }

                      v151 = qword_100BCE988;
                      if (v145 && v137 && v137 != v145)
                      {
                        if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEFAULT))
                        {
                          *buf = 0;
                          _os_log_impl(&_mh_execute_header, v151, OS_LOG_TYPE_DEFAULT, "Update connecting address to temp resolved address", buf, 2u);
                        }

                        *&buf[8] = 0;
                        *&buf[16] = 0;
                        *buf = &buf[8];
                        sub_10004DFB4(uu1, v190);
                        sub_100506A24(buf, uu1);
                        if (qword_100B508B0 != -1)
                        {
                          sub_10083AEE8();
                        }

                        v152 = off_100B508A8;
                        sub_100506B30(v178, buf);
                        sub_10074713C(v152, v178);
                        sub_10000CEDC(v178, v178[1]);
                        sub_10000CEDC(buf, *&buf[8]);
                      }

                      else if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEBUG))
                      {
                        sub_10004D9B0();
                        sub_10083B3E0();
                      }
                    }

                    goto LABEL_342;
                  }

                  if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_ERROR))
                  {
                    sub_10083B3A4();
                  }

LABEL_390:

                  goto LABEL_391;
                }
              }

LABEL_342:
              if ([v175 connectionUseCase] == 21 || objc_msgSend(v175, "connectionUseCase") == 20 || objc_msgSend(v175, "connectionUseCase") == 655360)
              {
                if (qword_100B508C0 != -1)
                {
                  sub_10083B37C();
                }

                if (!sub_1007C9D64(off_100B508B8, v190))
                {
                  v160 = qword_100BCE988;
                  if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 138543362;
                    *&buf[4] = v190;
                    _os_log_impl(&_mh_execute_header, v160, OS_LOG_TYPE_DEFAULT, "fast IRK Resolution for device successful %{public}@", buf, 0xCu);
                  }
                }
              }

              v161 = v175;
              if (qword_100B508D0 != -1)
              {
                sub_10083B158();
                v161 = v175;
              }

              sub_10078D898(off_100B508C8, v190, [v161 disableLeGATT]);
LABEL_353:
              v162 = qword_100BCE9C0;
              if (os_log_type_enabled(qword_100BCE9C0, OS_LOG_TYPE_DEFAULT))
              {
                v163 = v190;
                if (qword_100B508D0 != -1)
                {
                  sub_10083B158();
                }

                v164 = &v191;
                sub_10004FFDC(off_100B508C8, v190, &v191);
                if ((v191.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                {
                  v164 = v191.__r_.__value_.__r.__words[0];
                }

                if (qword_100B508D0 != -1)
                {
                  sub_10083B158();
                }

                sub_100046458(off_100B508C8, v190, 1);
                v165 = sub_100777A3C();
                if (qword_100B508D0 != -1)
                {
                  sub_10083B158();
                }

                v166 = sub_1007868F4(off_100B508C8, v190);
                if (v166)
                {
                  if (qword_100B508D0 != -1)
                  {
                    sub_10083B158();
                  }

                  sub_100046458(off_100B508C8, v190, 0);
                  v167 = sub_100777A3C();
                }

                else
                {
                  v167 = &stru_100B0F9E0;
                }

                *buf = 138544386;
                *&buf[4] = v163;
                *&buf[12] = 2080;
                *&buf[14] = v164;
                *&buf[22] = 1024;
                *&buf[24] = 0;
                *&buf[28] = 2114;
                *&buf[30] = v165;
                *&buf[38] = 2114;
                *&buf[40] = v167;
                _os_log_impl(&_mh_execute_header, v162, OS_LOG_TYPE_DEFAULT, "Device connecting - {cbuuid: %{public}@, devicename: %s, result: %d, adv-addr: %{public}@, resolved-addr: %{public}@}", buf, 0x30u);
                if (v166)
                {
                }

                if (SHIBYTE(v191.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v191.__r_.__value_.__l.__data_);
                }
              }

              [*(a1 + 224) setObject:v175 forKey:v190];
              if ([v175 opportunistic])
              {
                if (qword_100B508B0 != -1)
                {
                  sub_10083AEE8();
                }

                v168 = off_100B508A8;
                sub_10004DFB4(buf, v190);
                if (sub_10074E724(v168, buf))
                {
                  if (qword_100B512F8 != -1)
                  {
                    sub_10083AC60();
                  }

                  v116 = 0;
                  goto LABEL_379;
                }
              }

              goto LABEL_380;
            }

            ++v122;
          }

          v122 = *v122;
          if (!v122)
          {
            goto LABEL_272;
          }
        }
      }

      if (v115 == 8)
      {
        if (qword_100B50F78 != -1)
        {
          sub_10083B1A8();
        }

        if (sub_100052A90(qword_100B50F70, v190))
        {
          goto LABEL_353;
        }
      }
    }

    else
    {
      switch(v115)
      {
        case 202:
          [*(a1 + 312) removeObject:v190];
          break;
        case 310:
          if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_ERROR))
          {
            sub_100018384(a2, buf);
            sub_10083B31C();
          }

          v158 = [*(a1 + 232) objectForKey:v190];
          v159 = v158 == 0;

          if (v159)
          {
            [*(a1 + 232) setObject:v175 forKey:v190];
          }

          goto LABEL_390;
        case 311:
          if (qword_100B508B0 != -1)
          {
            sub_10083AEE8();
          }

          v117 = off_100B508A8;
          sub_10004DFB4(buf, v190);
          if (sub_10074E724(v117, buf))
          {
            if (qword_100B512F8 != -1)
            {
              sub_10083AC60();
            }

            sub_1003B1434(off_100B512F0, a2, a1, v190, 0, 0);
            if (qword_100B508D0 != -1)
            {
              sub_10083B158();
            }

            v118 = off_100B508C8;
            v119 = v190;
            sub_100007E30(v176, "_CTKD_");
            v120 = sub_10004EB40(v118, v119, v176);
            if (v177 < 0)
            {
              operator delete(v176[0]);
            }

            if (v120)
            {
              if (qword_100B512F8 != -1)
              {
                sub_10083AC60();
              }

              sub_1003B5CA4(off_100B512F0, v190, 1, 0);
            }
          }

          goto LABEL_353;
      }
    }

    if ([v175 isLatencyCritical])
    {
      v156 = qword_100BCE988;
      if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        *&buf[4] = v190;
        _os_log_impl(&_mh_execute_header, v156, OS_LOG_TYPE_DEFAULT, "Latency Critical Action: Disable LE Connection for connect failure to device %{public}@", buf, 0xCu);
      }

      sub_1004F8514(a1);
    }

    if (qword_100B508B0 != -1)
    {
      sub_10083AEE8();
    }

    v157 = off_100B508A8;
    sub_10004DFB4(buf, v190);
    sub_10074EB78(v157, buf);
    if (qword_100B512F8 != -1)
    {
      sub_10083AC60();
    }

LABEL_379:
    sub_1003B1434(off_100B512F0, a2, a1, v190, v116, 0);
LABEL_380:
    memset(buf, 0, sizeof(buf));
    sub_100007E30(&v191, [*(a1 + 88) UTF8String]);
    sub_1005796A0(buf, &v191, *(a1 + 129), v190);
    if (SHIBYTE(v191.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v191.__r_.__value_.__l.__data_);
    }

    if (qword_100B541F8 != -1)
    {
      sub_10083B440();
    }

    sub_10000EFDC();
    v169 = sub_100432718();
    sub_100614BB8(a2, &v191);
    if ((v191.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v170 = &v191;
    }

    else
    {
      v170 = v191.__r_.__value_.__r.__words[0];
    }

    (**v169)(v169, v170, 1, v190);
    if (SHIBYTE(v191.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v191.__r_.__value_.__l.__data_);
    }

    sub_1003B169C(buf);
    goto LABEL_390;
  }

  if (v189 == 1)
  {
    if (qword_100B50F78 != -1)
    {
      sub_10083B1A8();
    }

    v26 = sub_100052A90(qword_100B50F70, v190);
  }

  else if (v189 == 2)
  {
    if (qword_100B508B0 != -1)
    {
      sub_10083AEE8();
    }

    v25 = off_100B508A8;
    sub_10004DFB4(buf, v190);
    v26 = sub_10074E724(v25, buf);
  }

  else
  {
    v26 = 0;
  }

  v45 = qword_100BCE988;
  if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_INFO) && ((v46 = v190, sub_100018384(a2, buf), (buf[23] & 0x80u) == 0) ? (v47 = buf) : (v47 = *buf), *uu1 = 138543618, *&uu1[4] = v46, *&uu1[12] = 2082, *&uu1[14] = v47, _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_INFO, "Attempting to add device %{public}@ more than once for session %{public}s", uu1, 0x16u), buf[23] < 0))
  {
    operator delete(*buf);
    if (!v26)
    {
      goto LABEL_391;
    }
  }

  else if (!v26)
  {
    goto LABEL_391;
  }

  if (qword_100B512F8 != -1)
  {
    sub_10083AC60();
  }

  sub_1003B1434(off_100B512F0, a2, a1, v190, 0, 0);
LABEL_391:
}

id sub_1004F8224(void *a1, id *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v8 = (v5 - *a1) >> 3;
    if ((v8 + 1) >> 61)
    {
      sub_1000C7698();
    }

    v9 = v4 - *a1;
    v10 = v9 >> 2;
    if (v9 >> 2 <= (v8 + 1))
    {
      v10 = v8 + 1;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF8)
    {
      v11 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v10;
    }

    v13[4] = a1;
    if (v11)
    {
      sub_1003138F4(a1, v11);
    }

    v12 = (8 * v8);
    v13[0] = 0;
    v13[1] = v12;
    v13[3] = 0;
    *v12 = *a2;
    v13[2] = v12 + 1;
    sub_100313844(a1, v13);
    v7 = a1[1];
    result = sub_10031393C(v13);
  }

  else
  {
    result = *a2;
    *v5 = result;
    v7 = v5 + 1;
  }

  a1[1] = v7;
  return result;
}

void sub_1004F8304(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10031393C(va);
  _Unwind_Resume(a1);
}

void sub_1004F8318(uint64_t a1)
{
  if (!*(a1 + 456))
  {
    *(a1 + 448) = 1;
    if (qword_100B51078 != -1)
    {
      sub_10083AE3C();
    }

    sub_1007AD898(off_100B51070, @"com.apple.bluetooth.LatencyCriticalAction");
    v2 = sub_100007EE8();
    v3 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, *(v2 + 8));
    *(a1 + 456) = v3;
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_1004F84A0;
    handler[3] = &unk_100ADF8F8;
    handler[4] = a1;
    dispatch_source_set_event_handler(v3, handler);
    v4 = *(a1 + 456);
    v5 = dispatch_time(0, 7500000000);
    dispatch_source_set_timer(v4, v5, 0xFFFFFFFFFFFFFFFFLL, 0);
    v6 = qword_100BCE988;
    if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 456);
      *buf = 138412290;
      v10 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Latency Critical Action: Timer Start - %@", buf, 0xCu);
    }

    dispatch_activate(*(a1 + 456));
  }
}

uint64_t sub_1004F84A0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = qword_100BCE988;
  if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Latency Critical Action: Timer expired!", v4, 2u);
  }

  return sub_1004F8514(v1);
}

uint64_t sub_1004F8514(uint64_t result)
{
  v1 = *(result + 456);
  if (v1)
  {
    v2 = result;
    v3 = qword_100BCE988;
    if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEFAULT))
    {
      v4 = 138412290;
      v5 = v1;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Latency Critical Action: Cancel timer: %@", &v4, 0xCu);
      v1 = *(v2 + 456);
    }

    dispatch_source_cancel(v1);
    dispatch_release(*(v2 + 456));
    *(v2 + 456) = 0;
    *(v2 + 448) = 0;
    if (qword_100B51078 != -1)
    {
      sub_10083AE14();
    }

    return sub_1007ADB50(off_100B51070, @"com.apple.bluetooth.LatencyCriticalAction");
  }

  return result;
}

void sub_1004F8610(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  v8 = *(a1 + 464);
  if (v8 != -1)
  {
    v9 = qword_100BCE988;
    if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v31 = v5;
      v32 = 1024;
      v33 = v8;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Overriding device %{public}@ coexConnectionPriority to %d", buf, 0x12u);
    }

    if (qword_100B508D0 != -1)
    {
      sub_10083B158();
    }

    sub_10078FFDC(off_100B508C8, v5, *(a1 + 464));
    goto LABEL_16;
  }

  if ([v6 connectionUseCase] != 21 && objc_msgSend(v7, "connectionUseCase") != 20 && objc_msgSend(v7, "connectionUseCase") != 655360)
  {
    v10 = 0;
    v12 = *(a1 + 129);
    if (v12 == 4 || v12 == 8)
    {
      goto LABEL_11;
    }

    if (qword_100B508D0 != -1)
    {
      sub_1000E74F4();
    }

    if ((sub_100788ED8(off_100B508C8, v5) & 1) == 0)
    {
      if (qword_100B508D0 != -1)
      {
        sub_1000E74F4();
      }

      v13 = off_100B508C8;
      sub_100007E30(__p, "A1603");
      if (sub_10004EB40(v13, v5, __p))
      {
        if (v29 < 0)
        {
          operator delete(__p[0]);
        }
      }

      else
      {
        if (qword_100B508D0 != -1)
        {
          sub_10083B158();
        }

        v14 = off_100B508C8;
        sub_100007E30(v26, "A2051");
        if (sub_10004EB40(v14, v5, v26))
        {
          v15 = 1;
        }

        else
        {
          if (qword_100B508D0 != -1)
          {
            sub_10083B158();
          }

          v16 = off_100B508C8;
          sub_100007E30(v24, "A3085");
          if (sub_10004EB40(v16, v5, v24))
          {
            v15 = 1;
          }

          else
          {
            if (qword_100B508D0 != -1)
            {
              sub_10083B158();
            }

            v17 = off_100B508C8;
            sub_100007E30(v22, "A2538");
            v15 = sub_10004EB40(v17, v5, v22);
            if (v23 < 0)
            {
              operator delete(v22[0]);
            }
          }

          if (v25 < 0)
          {
            operator delete(v24[0]);
          }
        }

        if (v27 < 0)
        {
          operator delete(v26[0]);
        }

        if (v29 < 0)
        {
          operator delete(__p[0]);
        }

        if ((v15 & 1) == 0)
        {
          if ([v7 connectionUseCase] == 19 || objc_msgSend(v7, "connectionUseCase") == 196608 || *(a1 + 129) == 32)
          {
            goto LABEL_54;
          }

          if (qword_100B508D0 != -1)
          {
            sub_10083B158();
          }

          v18 = off_100B508C8;
          sub_100007E30(v20, "_HID_DEVICE_");
          v19 = sub_10004EB40(v18, v5, v20);
          if (v21 < 0)
          {
            operator delete(v20[0]);
          }

          if (v19)
          {
LABEL_54:
            v10 = 1;
            goto LABEL_11;
          }

          if (*(a1 + 129) == 16)
          {
            v10 = 2;
            goto LABEL_11;
          }

          if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_ERROR))
          {
            sub_10083B468();
          }
        }
      }
    }
  }

  v10 = 0;
LABEL_11:
  v11 = qword_100BCE988;
  if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v31 = v5;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Device %{public}@ overriding wifi coex policy", buf, 0xCu);
  }

  if (qword_100B508D0 != -1)
  {
    sub_10083B158();
  }

  sub_10078FFDC(off_100B508C8, v5, v10);
LABEL_16:
}

void sub_1004F8A34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, uint64_t a35, int a36, __int16 a37, char a38, char a39)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1004F8AC8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (([*(a1 + 88) isEqualToString:@"com.teslamotors.TeslaApp"] & 1) != 0 || (objc_msgSend(*(a1 + 88), "isEqualToString:", @"com.teslamotors.enterpriseapp") & 1) != 0 || objc_msgSend(v6, "connectionUseCase") == 3 || objc_msgSend(v6, "connectionUseCase") == 4)
  {
    goto LABEL_9;
  }

  if (qword_100B508D0 != -1)
  {
    sub_1000E74F4();
  }

  if ((sub_100788ED8(off_100B508C8, v5) & 1) != 0 || [v6 waitForConnectionPoll])
  {
LABEL_9:
    if (qword_100B508D0 != -1)
    {
      sub_1000E74F4();
    }

    sub_10078A254(off_100B508C8, v5, 1);
    v7 = qword_100BCE988;
    if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138543362;
      v9 = v5;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Enabling Poll/Null check for device %{public}@", &v8, 0xCu);
    }
  }

  else
  {
    if (qword_100B508D0 != -1)
    {
      sub_1000E74F4();
    }

    sub_10078A254(off_100B508C8, v5, 0);
  }
}

void sub_1004F8C80(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  if ([v8 connectionUseCase])
  {
    v9 = [v8 connectionUseCase];
    v10 = v9;
    if (v9 != 23 && v9)
    {
      goto LABEL_29;
    }
  }

  else
  {
    LODWORD(v10) = 0;
  }

  if (([*(a1 + 88) isEqualToString:@"com.teslamotors.TeslaApp"] & 1) != 0 || (objc_msgSend(*(a1 + 88), "isEqualToString:", @"com.teslamotors.enterpriseapp") & 1) != 0 || objc_msgSend(*(a1 + 88), "hasPrefix:", @"com.rivian.ios.consumer"))
  {
    if (qword_100B508D0 != -1)
    {
      sub_1000E74F4();
    }

    if (sub_100788ED8(off_100B508C8, v7))
    {
      if (qword_100B508D0 != -1)
      {
        sub_1000E74F4();
      }

      sub_10078380C(off_100B508C8, v7, @"HasTS");
      if (qword_100B508D0 != -1)
      {
        sub_1000E74F4();
      }

      if ((sub_10078A024(off_100B508C8, v7) & 1) == 0)
      {
        if (qword_100B53FE8 != -1)
        {
          sub_10083B4A4();
        }

        v11 = qword_100B53FE0;
        sub_100007E30(v31, "HasTS");
        sub_100007E30(__p, "Tesla Tagged HasTS UnsetTag");
        sub_1005780BC(v11, v31, __p, 60.0);
        if (v30 < 0)
        {
          operator delete(__p[0]);
        }

        if (v32 < 0)
        {
          operator delete(v31[0]);
        }

        if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_ERROR))
        {
          sub_10083B4B8();
        }

        if (qword_100B508D0 != -1)
        {
          sub_10083B158();
        }

        sub_10078A0B0(off_100B508C8, v7, 1);
      }
    }

    v10 = 16;
  }

  else
  {
    if (qword_100B508D0 != -1)
    {
      sub_1000E74F4();
    }

    if (sub_100788ED8(off_100B508C8, v7))
    {
      v10 = 11;
    }

    else
    {
      if (qword_100B508D0 != -1)
      {
        sub_1000E74F4();
      }

      v25 = off_100B508C8;
      sub_100007E30(v27, "ANCSAuthorized");
      v26 = sub_10004EB40(v25, v7, v27);
      if (v28 < 0)
      {
        operator delete(v27[0]);
      }

      if (v26)
      {
        v10 = 23;
      }

      else
      {
        v10 = v10;
      }
    }
  }

LABEL_29:
  if (qword_100B508D0 != -1)
  {
    sub_10083B158();
  }

  sub_10078BFA0(off_100B508C8, v7, v10);
  if (qword_100B508D0 != -1)
  {
    sub_10083B158();
  }

  v12 = off_100B508C8;
  v13 = [v8 useCaseList];
  sub_10078C02C(v12, v7, v13);

  sub_100018384(a2, v31);
  v14 = v32;
  v15 = v31[0];
  v16 = +[NSString defaultCStringEncoding];
  if (v14 >= 0)
  {
    v17 = v31;
  }

  else
  {
    v17 = v15;
  }

  v18 = [NSString stringWithCString:v17 encoding:v16];
  if (v32 < 0)
  {
    operator delete(v31[0]);
  }

  v19 = [v8 useCaseList];
  if (v19 && ([v8 useCaseList], v20 = objc_claimAutoreleasedReturnValue(), v21 = objc_msgSend(v20, "count"), v20, v19, v21))
  {
    if (qword_100B508D0 != -1)
    {
      sub_10083B158();
    }

    v22 = off_100B508C8;
    v23 = [v8 useCaseList];
    sub_10078C484(v22, v7, v18, v23);
  }

  else
  {
    v24 = [NSNumber numberWithUnsignedInt:v10];
    v23 = [NSArray arrayWithObjects:v24, 0];

    if (qword_100B508D0 != -1)
    {
      sub_10083B158();
    }

    sub_10078C484(off_100B508C8, v7, v18, v23);
  }
}

void sub_1004F90AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1004F915C(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  if ([v5 minRSSILevelForConnection])
  {
    if (qword_100B508D0 != -1)
    {
      sub_1000E74F4();
    }

    sub_10078A1C8(off_100B508C8, v4, [v5 minRSSILevelForConnection]);
    v6 = qword_100BCE988;
    if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEFAULT))
    {
      v7[0] = 67109378;
      v7[1] = [v5 minRSSILevelForConnection];
      v8 = 2114;
      v9 = v4;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Setting minimum RSSI level for connection to %d for device %{public}@ requested in connectOptions", v7, 0x12u);
    }
  }
}

void sub_1004F9298(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = *(a1 + 376);
  if (!v3)
  {
    operator new();
  }

  sub_10042B5BC(v3, v4);
}

uint64_t sub_1004F935C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 360);
  v5 = (a1 + 368);
  if (v4 == v5)
  {
LABEL_9:
    v9 = 0;
  }

  else
  {
    while (1)
    {
      sub_10004DFB4(uu2, v3);
      if (!uuid_compare(v4 + 40, uu2))
      {
        break;
      }

      v6 = *(v4 + 1);
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
          v7 = *(v4 + 2);
          v8 = *v7 == v4;
          v4 = v7;
        }

        while (!v8);
      }

      v4 = v7;
      if (v7 == v5)
      {
        goto LABEL_9;
      }
    }

    v9 = *(v4 + 4);
  }

  return v9;
}

void sub_1004F9450(uint64_t a1, uint64_t a2, void *a3, int a4, int a5, unsigned int a6)
{
  v11 = a3;
  v57 = v11;
  if (*(a1 + 44) == 1 && (a4 & 1) == 0)
  {
    if (qword_100B54208 != -1)
    {
      sub_10083B4F4();
    }

    v12 = qword_100B54200;
    v13 = [*(a1 + 224) objectForKeyedSubscript:v11];
    sub_1007F1090(v12, a2, v11, v13);
  }

  [*(a1 + 80) removeObjectForKey:v11];
  v14 = *(a1 + 296);
  if (v14)
  {
    v15 = a1 + 296;
    do
    {
      v16 = *(v14 + 32);
      v17 = v16 >= v11;
      v18 = v16 < v11;
      if (v17)
      {
        v15 = v14;
      }

      v14 = *(v14 + 8 * v18);
    }

    while (v14);
    if (v15 != a1 + 296 && *(v15 + 32) <= v11)
    {
      sub_100506E64(a1 + 288, &v57);
      [*(a1 + 224) removeObjectForKey:v57];
      v11 = v57;
      goto LABEL_112;
    }
  }

  v19 = [*(a1 + 384) objectForKey:v11];

  if (!v19)
  {
    v24 = [*(a1 + 232) objectForKey:v11];
    if (v24)
    {
      v25 = qword_100BCE988;
      if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEFAULT))
      {
        sub_100018384(a2, buf);
        v26 = (SBYTE7(v62) & 0x80u) == 0 ? buf : *buf;
        LODWORD(v60.__r_.__value_.__l.__data_) = 138543618;
        *(v60.__r_.__value_.__r.__words + 4) = v11;
        WORD2(v60.__r_.__value_.__r.__words[1]) = 2082;
        *(&v60.__r_.__value_.__r.__words[1] + 6) = v26;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Device %{public}@ for session %{public}s is already disconnecting, removing it from the pending devices list", &v60, 0x16u);
        if (SBYTE7(v62) < 0)
        {
          operator delete(*buf);
        }
      }

      [*(a1 + 232) removeObjectForKey:v11];
    }

    v27 = [*(a1 + 224) objectForKeyedSubscript:v11];

    v28 = v27;
    if (!v27)
    {
      goto LABEL_111;
    }

    if ([v27 isLatencyCritical])
    {
      v29 = qword_100BCE988;
      if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        *&buf[4] = v11;
        _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "Latency Critical Action: Device %{public}@ disconnecting cancel timer", buf, 0xCu);
      }

      sub_1004F8514(a1);
    }

    v62 = 0u;
    v63 = 0u;
    *buf = 0u;
    sub_100007E30(&v60, [*(a1 + 88) UTF8String]);
    sub_1005796F0(buf, &v60, *(a1 + 129), v11);
    if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v60.__r_.__value_.__l.__data_);
    }

    if (qword_100B541F8 != -1)
    {
      sub_10083B440();
    }

    sub_10000EFDC();
    v30 = sub_100432718();
    sub_100614BB8(a2, &v60);
    if ((v60.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v31 = &v60;
    }

    else
    {
      v31 = v60.__r_.__value_.__r.__words[0];
    }

    (**v30)(v30, v31, 0, v11);
    if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v60.__r_.__value_.__l.__data_);
    }

    v32 = qword_100BCE988;
    if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEFAULT))
    {
      sub_100018384(a2, &v60);
      v33 = (v60.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v60 : v60.__r_.__value_.__r.__words[0];
      *v58 = 138543618;
      *&v58[4] = v11;
      *&v58[12] = 2082;
      *&v58[14] = v33;
      _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "Disconnecting device %{public}@ for session %{public}s", v58, 0x16u);
      if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v60.__r_.__value_.__l.__data_);
      }
    }

    [*(a1 + 224) removeObjectForKey:v11];
    v55 = a6;
    v56 = a4;
    v34 = a5;
    v35 = a2;
    sub_100018384(a2, &v60);
    v36 = HIBYTE(v60.__r_.__value_.__r.__words[2]);
    if ((v60.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v37 = &v60;
    }

    else
    {
      v37 = v60.__r_.__value_.__r.__words[0];
    }

    if ((v60.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = SHIBYTE(v60.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v60.__r_.__value_.__l.__size_;
    }

    if (size >= 20)
    {
      v40 = v37 + size;
      v41 = v37;
      while (1)
      {
        v42 = memchr(v41, 99, size - 19);
        if (!v42)
        {
LABEL_77:
          v39 = 0;
          goto LABEL_78;
        }

        v43 = *v42 == 0x6C7070612E6D6F63 && *(v42 + 1) == 0x6F7465756C622E65;
        if (v43 && *(v42 + 4) == 1684567151)
        {
          break;
        }

        v41 = (v42 + 1);
        size = v40 - v41;
        if (v40 - v41 < 20)
        {
          goto LABEL_77;
        }
      }

      v39 = 0;
      if (v42 != v40)
      {
        v43 = v42 - v37 == -1;
        v45 = v34;
        v47 = v55;
        v46 = v56;
        if (!v43)
        {
          if (qword_100B508D0 != -1)
          {
            sub_10083B158();
          }

          sub_1000B006C(off_100B508C8, v11, v58);
          v54 = *&v58[8];
          if (v59 >= 0)
          {
            v54 = v59;
          }

          v39 = v54 != 0;
          if ((v59 & 0x8000000000000000) != 0)
          {
            operator delete(*v58);
          }

          v36 = HIBYTE(v60.__r_.__value_.__r.__words[2]);
        }

LABEL_79:
        if (v36 < 0)
        {
          operator delete(v60.__r_.__value_.__l.__data_);
          if (!v39)
          {
LABEL_86:
            if ([v28 requiresLowLatency])
            {
              if (qword_100B508B0 != -1)
              {
                sub_10083AEE8();
              }

              v49 = off_100B508A8;
              sub_10004DFB4(&v60, v11);
              sub_10074EB78(v49, &v60);
            }

            v50 = qword_100BCE9B8;
            if (os_log_type_enabled(qword_100BCE9B8, OS_LOG_TYPE_DEFAULT))
            {
              v51 = *(a1 + 88);
              LODWORD(v60.__r_.__value_.__l.__data_) = 138543618;
              *(v60.__r_.__value_.__r.__words + 4) = v11;
              WORD2(v60.__r_.__value_.__r.__words[1]) = 2114;
              *(&v60.__r_.__value_.__r.__words[1] + 6) = v51;
              _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEFAULT, "App disconnecting - {cbuuid: %{public}@, bundle: %{public}@}", &v60, 0x16u);
            }

            if (qword_100B512F8 != -1)
            {
              sub_10083AC60();
            }

            sub_1003B5E7C(off_100B512F0, v35, a1, v11, v47, 0);
            if (v46)
            {
              if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_ERROR))
              {
                sub_10083B508();
              }

              if (v45)
              {
                v52 = qword_100BCE988;
                if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEFAULT))
                {
                  LODWORD(v60.__r_.__value_.__l.__data_) = 138543362;
                  *(v60.__r_.__value_.__r.__words + 4) = v11;
                  _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_DEFAULT, "Disconnecting Do Not Autoconnect device %{public}@ if with builtInServices", &v60, 0xCu);
                }

                if (qword_100B508D0 != -1)
                {
                  sub_10083B158();
                }

                sub_10078D764(off_100B508C8, v11);
              }

              if (qword_100B508B0 != -1)
              {
                sub_10083AEE8();
              }

              v53 = off_100B508A8;
              sub_10004DFB4(&v60, v11);
              sub_10074CD90(v53, &v60, 2u);
            }

            else
            {
              if (qword_100B512F8 != -1)
              {
                sub_10083AC60();
              }

              sub_1000C39CC(off_100B512F0);
            }

            if (SHIBYTE(v62) < 0)
            {
              operator delete(*&buf[8]);
            }

LABEL_111:
            [*(a1 + 312) removeObject:v11];

            goto LABEL_112;
          }
        }

        else if (!v39)
        {
          goto LABEL_86;
        }

        if (qword_100B508B0 != -1)
        {
          sub_10083AEE8();
        }

        v48 = off_100B508A8;
        sub_10004DFB4(&v60, v11);
        sub_10074EB78(v48, &v60);
        goto LABEL_86;
      }
    }

    else
    {
      v39 = 0;
    }

LABEL_78:
    v45 = v34;
    v47 = v55;
    v46 = v56;
    goto LABEL_79;
  }

  v20 = qword_100BCE988;
  if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    *&buf[4] = v11;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Removing delayed connection to device %{public}@", buf, 0xCu);
  }

  if (qword_100B512F8 != -1)
  {
    sub_10083AC60();
  }

  sub_1003B5E7C(off_100B512F0, a2, a1, v11, 0, 0);
  v21 = *(a1 + 392);
  if (v21 != (a1 + 400))
  {
    while ([v11 compare:v21[4]])
    {
      v22 = v21[1];
      if (v22)
      {
        do
        {
          v23 = v22;
          v22 = *v22;
        }

        while (v22);
      }

      else
      {
        do
        {
          v23 = v21[2];
          v43 = *v23 == v21;
          v21 = v23;
        }

        while (!v43);
      }

      v21 = v23;
      if (v23 == (a1 + 400))
      {
        goto LABEL_66;
      }
    }

    sub_100506598(a1 + 392, v21 + 4);
    v11 = v57;
  }

LABEL_66:
  [*(a1 + 384) removeObjectForKey:v11];
  sub_1004F576C(a1);
LABEL_112:
}

void sub_1004F9D04(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, char a24)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  sub_1003B169C(&a24);

  _Unwind_Resume(a1);
}

uint64_t sub_1004F9DBC(void *a1, void *a2)
{
  v3 = a2;
  if (a1[33])
  {
    __p = 0;
    v14 = 0;
    v15 = 0;
    v4 = a1[31];
    if (v4 != a1 + 32)
    {
      do
      {
        memset(v18, 0, sizeof(v18));
        v16 = *(v4 + 2);
        v17 = *(v4 + 12);
        *&v18[1] = v4[7];
        sub_10000CDB8(&__p, &v16);

        v5 = v4[1];
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
            v6 = v4[2];
            v7 = *v6 == v4;
            v4 = v6;
          }

          while (!v7);
        }

        v4 = v6;
      }

      while (v6 != a1 + 32);
    }

    v8 = a1[15];
    if (qword_100B50900 != -1)
    {
      sub_10083B180();
    }

    if (v8)
    {
      v9 = *(v8 + 40);
      v10 = *(v8 + 56);
    }

    else
    {
      v9 = 0;
      v10 = 0;
    }

    v11 = sub_10070BFF0(qword_100B508F8, v3, &__p, v9 & 1, v10, 1);
    if (__p)
    {
      v14 = __p;
      operator delete(__p);
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

void sub_1004F9F30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1004F9F98(uint64_t a1, unint64_t a2, void *a3, char a4)
{
  v6 = a3;
  if (qword_100B50F78 != -1)
  {
    sub_10083AFF4();
  }

  v12 = 0;
  v7 = qword_100B50F70;
  sub_10004DFB4(v13, v6);
  if (sub_1005807A8(v7, v13, &v12))
  {
    v8 = 0;
  }

  else
  {
    v8 = v12 == 1;
  }

  if (v8)
  {
    v10 = 11;
  }

  else
  {
    if (qword_100B508B0 != -1)
    {
      sub_10083AEE8();
    }

    v9 = off_100B508A8;
    sub_10004DFB4(v13, v6);
    v10 = sub_10074E798(v9, a2, v13, a4);
  }

  return v10;
}

uint64_t sub_1004FA0C0(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v8 = a3;
  v9 = a5;
  if (qword_100B508B0 != -1)
  {
    sub_10083AE50();
  }

  v10 = *(a4 + 16);
  v13[0] = *a4;
  v13[1] = v10;
  v14 = *(a4 + 32);
  v11 = sub_10074F748(off_100B508A8, a2, v8, v13, v9);

  return v11;
}

uint64_t sub_1004FA170(uint64_t a1, uint64_t a2, int a3, void *a4, int a5, uint64_t a6)
{
  v10 = a4;
  if (qword_100B508B0 != -1)
  {
    sub_10083AE50();
  }

  v11 = sub_100750514(off_100B508A8, a2, a3, v10, a5, a6);

  return v11;
}

uint64_t sub_1004FA208()
{
  if (qword_100B508B0 != -1)
  {
    sub_10083AE50();
  }

  return sub_100750E28();
}

uint64_t sub_1004FA25C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (qword_100B508B0 != -1)
  {
    sub_10083AE50();
  }

  v5 = sub_100750FDC(off_100B508A8, a2, v4);

  return v5;
}

uint64_t sub_1004FA2CC(uint64_t a1, unint64_t a2, void *a3, __int128 *a4)
{
  v6 = a3;
  if (qword_100B508B0 != -1)
  {
    sub_10083AE50();
  }

  v7 = a4[1];
  v10 = *a4;
  v11[0] = v7;
  *(v11 + 10) = *(a4 + 26);
  v8 = sub_100751160(off_100B508A8, a2, v6, &v10);

  return v8;
}

uint64_t sub_1004FA364(uint64_t a1, unint64_t a2, void *a3)
{
  v4 = a3;
  if (qword_100B508B0 != -1)
  {
    sub_10083AE50();
  }

  v5 = sub_100751474(off_100B508A8, a2, v4);

  return v5;
}

uint64_t sub_1004FA3D4(uint64_t a1, unint64_t a2, void *a3)
{
  v4 = a3;
  if (qword_100B508B0 != -1)
  {
    sub_10083AE50();
  }

  v5 = sub_1007515BC(off_100B508A8, a2, v4);

  return v5;
}

uint64_t sub_1004FA444(uint64_t a1, unint64_t a2, void *a3, __int128 *a4)
{
  v6 = a3;
  if (qword_100B508B0 != -1)
  {
    sub_10083AE50();
  }

  v7 = a4[1];
  v10 = *a4;
  v11[0] = v7;
  *(v11 + 10) = *(a4 + 26);
  v8 = sub_100751704(off_100B508A8, a2, v6, &v10);

  return v8;
}

uint64_t sub_1004FA510(uint64_t a1, unint64_t a2, void *a3, uint64_t a4)
{
  v6 = a3;
  if (qword_100B508B0 != -1)
  {
    sub_10083AE50();
  }

  v7 = sub_10075193C(off_100B508A8, a2, v6, a4);

  return v7;
}

uint64_t sub_1004FA590(uint64_t a1, unint64_t a2, void *a3)
{
  v4 = a3;
  if (qword_100B508B0 != -1)
  {
    sub_10083AE50();
  }

  v5 = sub_100751C14(off_100B508A8, a2, v4);

  return v5;
}

uint64_t sub_1004FA618(uint64_t a1, unint64_t a2, void *a3, _OWORD *a4)
{
  v6 = a3;
  if (qword_100B508B0 != -1)
  {
    sub_10083AE50();
  }

  v7 = a4[1];
  v10[0] = *a4;
  v10[1] = v7;
  v8 = sub_100751EC8(off_100B508A8, a2, v6, v10);

  return v8;
}

uint64_t sub_1004FA6A8(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (qword_100B508B0 != -1)
  {
    sub_10083AE50();
  }

  v5 = off_100B508A8;

  return sub_10075217C(v5, a2, a3);
}

uint64_t sub_1004FA704(uint64_t a1, unint64_t a2, void *a3)
{
  v4 = a3;
  if (qword_100B508B0 != -1)
  {
    sub_10083AE50();
  }

  v5 = sub_1007522E4(off_100B508A8, a2, v4);

  return v5;
}

uint64_t sub_1004FA79C(uint64_t a1, unint64_t a2)
{
  if (qword_100B508B0 != -1)
  {
    sub_10083AE50();
  }

  v3 = off_100B508A8;

  return sub_1007524C0(v3, a2);
}

uint64_t sub_1004FA7F0(uint64_t a1, unint64_t a2, void *a3)
{
  v4 = a3;
  if (qword_100B508B0 != -1)
  {
    sub_10083AE50();
  }

  v5 = sub_100752618(off_100B508A8, a2, v4);

  return v5;
}

uint64_t sub_1004FA860(uint64_t a1, unint64_t a2, void *a3, uint64_t a4)
{
  v6 = a3;
  if (qword_100B508B0 != -1)
  {
    sub_10083AE50();
  }

  v7 = sub_100752E78(off_100B508A8, a2, v6, a4);

  return v7;
}

BOOL sub_1004FA924(void *a1, char *__s)
{
  v4 = strlen(__s);
  v5 = *(a1 + 23);
  if ((v5 & 0x8000000000000000) == 0)
  {
    if (v4 != v5)
    {
      return 0;
    }

    return memcmp(a1, __s, v4) == 0;
  }

  if (v4 == a1[1])
  {
    if (v4 == -1)
    {
      sub_1000C7698();
    }

    a1 = *a1;
    return memcmp(a1, __s, v4) == 0;
  }

  return 0;
}

void sub_1004FA9A0(void *a1, void *a2, int a3)
{
  v5 = a2;
  v6 = qword_100BCE988;
  if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 138543618;
    *&v10[4] = v5;
    *&v10[12] = 1024;
    *&v10[14] = a3;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Device %{public}@ CL Ready with result %d", v10, 0x12u);
  }

  v7 = xpc_dictionary_create(0, 0, 0);
  *v10 = 0;
  *&v10[8] = 0;
  [v5 getUUIDBytes:v10];
  xpc_dictionary_set_uuid(v7, "kCBMsgArgDeviceUUID", v10);
  xpc_dictionary_set_int64(v7, "kCBMsgArgResult", a3);
  if (qword_100B508D0 != -1)
  {
    sub_10083B158();
  }

  v8 = sub_10005016C(off_100B508C8, v5);
  xpc_dictionary_set_int64(v7, "kCBMsgArgVisibleInSettings", v8 ^ 1u);
  v9 = sub_100050F18(v7);
  sub_100052C08(a1, 93, v9);

  xpc_release(v7);
}

void sub_1004FAB44(uint64_t a1, void *a2, int a3)
{
  v5 = a2;
  v69 = v5;
  v6 = qword_100BCE988;
  if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    *&buf[4] = v5;
    *&buf[12] = 1024;
    *&buf[14] = a3;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Device %{public}@ connected with result %d", buf, 0x12u);
  }

  if (v5)
  {
    v7 = *(a1 + 120);
    if (qword_100B508D0 != -1)
    {
      sub_10083B158();
    }

    if (sub_10004FF0C(off_100B508C8, v5, *(a1 + 88), *(a1 + 104)))
    {
      if (sub_100050B20(a1, v5))
      {
        xdict = xpc_dictionary_create(0, 0, 0);
        if (qword_100B508B0 != -1)
        {
          sub_10083AEE8();
        }

        v8 = off_100B508A8;
        sub_10004DFB4(buf, v5);
        v58 = sub_100050290(v8, buf);
        uuid[0] = 0;
        uuid[1] = 0;
        [v5 getUUIDBytes:uuid];
        v59 = [*(a1 + 224) objectForKeyedSubscript:v5];
        xpc_dictionary_set_uuid(xdict, "kCBMsgArgDeviceUUID", uuid);
        xpc_dictionary_set_int64(xdict, "kCBMsgArgResult", a3);
        if (!a3)
        {
          if (v7)
          {
            v9 = *(v7 + 24);
          }

          else
          {
            v9 = 0;
          }

          if (qword_100B508B0 != -1)
          {
            sub_10083AEE8();
          }

          v13 = off_100B508A8;
          sub_10004DFB4(buf, v5);
          v14 = sub_1000501F8(v13, buf);
          xpc_dictionary_set_int64(xdict, "kCBMsgArgConnectionRole", v14);
          if (qword_100B541E8 != -1)
          {
            sub_10083B878();
          }

          v15 = sub_1000503B8(qword_100B541E0, v5);
          xpc_dictionary_set_int64(xdict, "kCBMsgArgATTMTU", v15);
          if (v58)
          {
            v16 = 2;
          }

          else
          {
            v16 = 1;
          }

          xpc_dictionary_set_int64(xdict, "kCBMsgArgConnectionTransport", v16);
          if (v9)
          {
            if (qword_100B508B0 != -1)
            {
              sub_10083AEE8();
            }

            v17 = off_100B508A8;
            sub_10004DFB4(buf, v5);
            v18 = sub_100050304(v17, buf);
            xpc_dictionary_set_BOOL(xdict, "kCBMsgArgIsLinkEncrypted", v18);
          }

          if (v7 && *(v7 - 64) >= 1)
          {
            if (qword_100B508D0 != -1)
            {
              sub_10083B158();
            }

            v19 = sub_10005016C(off_100B508C8, v5);
            xpc_dictionary_set_int64(xdict, "kCBMsgArgVisibleInSettings", v19 ^ 1u);
          }

          if (v58)
          {
            v74 = 0;
            v72 = 0u;
            v73 = 0u;
            memset(buf, 0, sizeof(buf));
            if (qword_100B508B0 != -1)
            {
              sub_10083AEE8();
            }

            sub_100740410(off_100B508A8, v5, buf);
            if (*buf)
            {
              v20 = [v59 connectingClients];
              v21 = *&buf[8];
              *&buf[8] = v20;

              if (*(a1 + 472))
              {
                LODWORD(v74) = 1;
              }

              if (*(a1 + 481) == 1)
              {
                LODWORD(v74) = 2;
              }

              if (*(a1 + 482) == 1)
              {
                LODWORD(v74) = 4;
              }

              if (qword_100B508B0 != -1)
              {
                sub_10083AEE8();
              }

              v22 = off_100B508A8;
              v64[0] = *buf;
              v64[1] = *&buf[8];
              v65 = *&buf[16];
              v66 = v72;
              v67 = v73;
              v68 = v74;
              sub_100740538(v22, v5, v64);
            }

            if ((*(a1 + 481) & 1) != 0 || *(a1 + 482) == 1)
            {
              v23 = qword_100BCE988;
              if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEFAULT))
              {
                *v70 = 0;
                _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Disabling pairing with BT device for DA extenstions", v70, 2u);
              }

              v63 = 0;
              if (qword_100B508B0 != -1)
              {
                sub_10083AEE8();
              }

              v24 = off_100B508A8;
              sub_10004DFB4(v70, v5);
              if (sub_1000C4FCC(v24, v70, &v63))
              {
                v70[0] = 0;
                sub_1000216B4(v70);
                sub_1002DA3B0(v63, 0);
                sub_10002249C(v70);
              }
            }

            LODWORD(v63) = 0;
            if (qword_100B50F78 != -1)
            {
              sub_10083B1A8();
            }

            v25 = qword_100B50F70;
            sub_10004DFB4(v70, v5);
            if (!sub_1005807A8(v25, v70, &v63) && v63 == 1)
            {
              v26 = *(a1 + 376);
              if (v26)
              {
                sub_10042BDEC(v26, v5);
              }
            }
          }

          ++*(a1 + 352);
        }

        v27 = qword_100BCE9B8;
        if (os_log_type_enabled(qword_100BCE9B8, OS_LOG_TYPE_DEFAULT))
        {
          v28 = "classic";
          v29 = *(a1 + 88);
          *buf = 138544130;
          if (v58)
          {
            v28 = "le";
          }

          *&buf[4] = v5;
          *&buf[12] = 2114;
          *&buf[14] = v29;
          *&buf[22] = 2082;
          *&buf[24] = v28;
          LOWORD(v72) = 1024;
          *(&v72 + 2) = a3;
          _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "App ready - {cbuuid: %{public}@, bundle: %{public}@, transport: %{public}s, result: %d}", buf, 0x26u);
        }

        if (a3 != 341 && a3 != 348)
        {
          v30 = [v59 connectionUseCase];
          v31 = qword_100BCE988;
          if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEFAULT))
          {
            v32 = sub_10002B1DC(v30);
            v33 = *(a1 + 88);
            *buf = 136446722;
            *&buf[4] = v32;
            *&buf[12] = 2114;
            *&buf[14] = v5;
            *&buf[22] = 2114;
            *&buf[24] = v33;
            _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "BLE Connection Ready %{public}s %{public}@ for %{public}@", buf, 0x20u);
            v31 = qword_100BCE988;
          }

          if (os_signpost_enabled(v31))
          {
            v34 = sub_10002B1DC(v30);
            v35 = *(a1 + 88);
            *buf = 136446722;
            *&buf[4] = v34;
            *&buf[12] = 2114;
            *&buf[14] = v5;
            *&buf[22] = 2114;
            *&buf[24] = v35;
            _os_signpost_emit_with_name_impl(&_mh_execute_header, v31, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "BTSignPost", "BLE Connection Ready %{public}s %{public}@ for %{public}@", buf, 0x20u);
          }

          if (qword_100B508D0 != -1)
          {
            sub_10083B158();
          }

          v36 = off_100B508C8;
          Current = CFAbsoluteTimeGetCurrent();
          sub_100786E8C(v36, v5, Current);
        }

        if (qword_100B508D0 != -1)
        {
          sub_10083B158();
        }

        v38 = sub_1000500A0(off_100B508C8, v5);
        v40 = a3 == 315 && v38 != 0;

        if (v40)
        {
          v41 = qword_100BCE988;
          if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            *&buf[4] = v5;
            _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "Device %{public}@ is FindMy but has no valid addresses/keys, parking connection attempt until we get an update", buf, 0xCu);
          }

          if (!v59)
          {
            goto LABEL_103;
          }

          if (qword_100B512F8 != -1)
          {
            sub_10083AC60();
          }

          v42 = sub_1003BF57C(off_100B512F0, a1);
          if (!v42)
          {
            goto LABEL_103;
          }

          v43 = v59;
          *buf = &v69;
          v44 = sub_100506788(a1 + 288, &v69);
          objc_storeStrong(v44 + 5, v59);
          v44[6] = v42;
        }

        else
        {
          v45 = sub_100050F18(xdict);
          sub_100052C08(a1, 92, v45);

          v46 = [v59 connectionUseCase];
          v47 = [v5 UUIDString];
          v48 = v47;
          sub_100007E30(buf, [v47 UTF8String]);
          v49 = sub_10000EEB8(a1 + 424, buf);
          if (buf[23] < 0)
          {
            operator delete(*buf);
          }

          if (v46 != 655360 && v46 != 21 || a3 || a1 + 432 == v49)
          {
            goto LABEL_103;
          }

          v50 = *(v49 + 56);
          v51 = *(v49 + 58);
          v53 = *(v49 + 60);
          v52 = *(v49 + 64);
          v54 = *(v49 + 68);
          v55 = *(v49 + 72);
          v43 = *(v49 + 80);
          (*(**(a1 + 120) + 80))(*(a1 + 120), 0, v43, v50, v55, v53, v51, v52, v54);
          sub_1004FB6F8((a1 + 424), v49);
        }

LABEL_103:
        if (*(a1 + 352) >= 1)
        {
          if (qword_100B512F8 != -1)
          {
            sub_10083AC60();
          }

          sub_1003B2518(off_100B512F0, *(a1 + 88), 1);
        }

        sub_1004FB734(a1, v69);
        xpc_release(xdict);
        if (!a3)
        {
          *v70 = 0;
          LOWORD(v63) = 0;
          v62 = 0;
          v61 = 0;
          if (qword_100B508B0 != -1)
          {
            sub_10083AEE8();
          }

          v56 = off_100B508A8;
          sub_10004DFB4(buf, v69);
          if (!sub_100767968(v56, buf, v70, &v63, &v62 + 1, &v62, &v61))
          {
            v57 = *(a1 + 120);
            if (v57 != 0 && v58)
            {
              (*(*v57 + 224))(v57, 0, v69, *v70, v63, v61);
            }
          }
        }

        v5 = v69;
        goto LABEL_114;
      }

      if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_ERROR))
      {
        sub_10083B578();
      }
    }

    else
    {
      v10 = qword_100BCE988;
      if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_ERROR))
      {
        v11 = *(a1 + 88);
        v12 = *(a1 + 104);
        *buf = 138412802;
        *&buf[4] = v11;
        *&buf[12] = 2112;
        *&buf[14] = v12;
        *&buf[22] = 2112;
        *&buf[24] = v5;
        _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "App %@ for user %@ is not allowed to access %@", buf, 0x20u);
      }
    }
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_ERROR))
    {
      sub_10083B7A8();
    }

    v5 = 0;
  }

LABEL_114:
}