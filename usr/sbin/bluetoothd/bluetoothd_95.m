void sub_1006D6A50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1006D6D44(uint64_t a1)
{
  *a1 = off_100B085A8;
  sub_100044BBC(a1 + 8);
  *(a1 + 120) = 0;
  *(a1 + 112) = a1 + 120;
  *(a1 + 72) = 0;
  *(a1 + 96) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = a1 + 96;
  *(a1 + 104) = 0;
  *(a1 + 128) = 0;
  sub_100044BBC(a1 + 136);
  *(a1 + 200) = 0;
  *(a1 + 208) = 0;
  *(a1 + 240) = 0;
  *(a1 + 232) = 0;
  *(a1 + 216) = 0;
  *(a1 + 224) = a1 + 232;
  return a1;
}

void sub_1006D6DEC(_Unwind_Exception *a1)
{
  sub_10000CEDC(v2, *v4);
  sub_10000CEDC(v3, *v5);
  sub_10007A068(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_1006D6E1C(uint64_t a1)
{
  *a1 = off_100B085A8;
  sub_1006D703C(a1, 0);
  v13[0] = 0;
  v13[1] = 0;
  sub_100007F88(v13, a1 + 8);
  v2 = *(a1 + 88);
  if (v2 != (a1 + 96))
  {
    do
    {
      v3 = v2[5];
      if (v3)
      {
        nullsub_21(v3);
        operator delete();
      }

      v4 = v2[1];
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
          v5 = v2[2];
          v6 = *v5 == v2;
          v2 = v5;
        }

        while (!v6);
      }

      v2 = v5;
    }

    while (v5 != (a1 + 96));
  }

  v7 = *(a1 + 112);
  if (v7 != (a1 + 120))
  {
    do
    {
      v8 = v7[5];
      if (v8)
      {
        sub_1006D9A14(v7[5], *(v8 + 8));
        operator delete();
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
          v6 = *v10 == v7;
          v7 = v10;
        }

        while (!v6);
      }

      v7 = v10;
    }

    while (v10 != (a1 + 120));
  }

  sub_10000CEDC(a1 + 224, *(a1 + 232));
  *(a1 + 232) = 0;
  *(a1 + 240) = 0;
  *(a1 + 224) = a1 + 232;
  sub_1000088CC(v13);
  sub_10000CEDC(a1 + 224, *(a1 + 232));
  v11 = *(a1 + 200);
  if (v11)
  {
    *(a1 + 208) = v11;
    operator delete(v11);
  }

  sub_10007A068(a1 + 136);
  sub_10000CEDC(a1 + 112, *(a1 + 120));
  sub_10000CEDC(a1 + 88, *(a1 + 96));
  sub_10007A068(a1 + 8);
  return a1;
}

void sub_1006D6FE8(_Unwind_Exception *a1)
{
  sub_10000CEDC(v1 + 224, *(v1 + 232));
  v3 = *(v1 + 200);
  if (v3)
  {
    *(v1 + 208) = v3;
    operator delete(v3);
  }

  sub_10007A068(v1 + 136);
  sub_10000CEDC(v1 + 112, *(v1 + 120));
  sub_10000CEDC(v1 + 88, *(v1 + 96));
  sub_10007A068(v1 + 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1006D703C(uint64_t a1, unint64_t a2)
{
  v12[0] = 0;
  v12[1] = 0;
  sub_100007F88(v12, a1 + 8);
  if (*(a1 + 72) == 1)
  {
    if (a2)
    {
      v4 = *(a1 + 232);
      if (v4)
      {
        v5 = a1 + 232;
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
        if (v5 != a1 + 232 && *(v5 + 32) <= a2 && *(v5 + 40) == 1)
        {
          *(v5 + 40) = 0;
        }
      }
    }

    else
    {
      v9 = qword_100BCE940;
      if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_DEFAULT))
      {
        v11[0] = 0;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Stopping pairing agent...", v11, 2u);
      }

      if (*(a1 + 80))
      {
        sub_10000801C(v12);
        sub_1006D78F0(a1, 161);
        sub_100007FB8(v12);
      }

      *(a1 + 72) = 0;
      sub_10000801C(v12);
      if (qword_100B50F88 != -1)
      {
        sub_100863144();
      }

      sub_1006DF5BC(off_100B50F80);
    }

    sub_1006D7574(a1, 1u, 0, 0, a2);
  }

  sub_1000088CC(v12);
  return 0;
}

void sub_1006D719C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

void sub_1006D71B4(uint64_t a1)
{
  sub_1006D6E1C(a1);

  operator delete();
}

uint64_t sub_1006D71EC(uint64_t a1, unint64_t a2, __int128 *a3, uint64_t a4)
{
  v14[1] = 0;
  v15 = a2;
  v14[0] = 0;
  sub_100007F88(v14, a1 + 8);
  v13[0] = 0;
  v13[1] = 0;
  sub_100007F88(v13, a1 + 136);
  v8 = *(a1 + 200);
  v9 = *(a1 + 208);
  v10 = a3[1];
  v17 = *a3;
  v18 = v10;
  v19 = a3[2];
  if (v8 != v9)
  {
    while (*v8 != a2 || memcmp(&v17, v8 + 1, 0x30uLL))
    {
      v8 += 9;
      if (v8 == v9)
      {
        goto LABEL_7;
      }
    }
  }

  if (v8 == v9)
  {
LABEL_7:
    v11 = a3[1];
    v17 = *a3;
    v18 = v11;
    v19 = a3[2];
    v16 = a2;
    v20 = -1;
    v21 = a4;
    sub_1006D9A70((a1 + 200), &v16);
  }

  v16 = &v15;
  *(sub_1005702E4(a1 + 224, &v15) + 40) = 0;
  sub_1000088CC(v13);
  sub_1000088CC(v14);
  return 0;
}

void sub_1006D7328(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1006D734C(uint64_t a1, unint64_t a2)
{
  v11[0] = 0;
  v11[1] = 0;
  sub_100007F88(v11, a1 + 136);
  v4 = sub_1006D9D98(*(a1 + 200), *(a1 + 208), a2);
  if (v4 != *(a1 + 208))
  {
    *(a1 + 208) = v4;
  }

  v5 = *(a1 + 232);
  if (v5)
  {
    v6 = a1 + 232;
    do
    {
      v7 = *(v5 + 32);
      v8 = v7 >= a2;
      v9 = v7 < a2;
      if (v8)
      {
        v6 = v5;
      }

      v5 = *(v5 + 8 * v9);
    }

    while (v5);
    if (v6 != a1 + 232 && *(v6 + 32) <= a2)
    {
      if (*(v6 + 40) == 1)
      {
        sub_1006D703C(a1, a2);
      }

      sub_10002717C((a1 + 224), v6);
      operator delete(v6);
    }
  }

  sub_1000088CC(v11);
  return 0;
}

uint64_t sub_1006D7488(uint64_t a1, unint64_t a2)
{
  v11[0] = 0;
  v11[1] = 0;
  sub_100007F88(v11, a1 + 8);
  v4 = *(a1 + 232);
  if (!v4)
  {
    goto LABEL_9;
  }

  v5 = a1 + 232;
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
  if (v5 != a1 + 232 && *(v5 + 32) <= a2)
  {
    if (*(v5 + 40))
    {
      v9 = 160;
    }

    else
    {
      *(v5 + 40) = 1;
      if ((*(a1 + 72) & 1) == 0)
      {
        *(a1 + 72) = 1;
        *(a1 + 80) = 0;
      }

      sub_10000801C(v11);
      sub_1006D7574(a1, 0, 0, 0, a2);
      v9 = 0;
    }
  }

  else
  {
LABEL_9:
    v9 = 7;
  }

  sub_1000088CC(v11);
  return v9;
}

uint64_t sub_1006D7574(uint64_t a1, unsigned int a2, uint64_t a3, int a4, uint64_t a5)
{
  if (a2 > 3)
  {
    v9 = "unknown";
  }

  else
  {
    v9 = off_100B08778[a2];
  }

  v10 = qword_100BCE940;
  if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_INFO))
  {
    *buf = 136446466;
    *&buf[4] = v9;
    *&buf[12] = 1024;
    *&buf[14] = a4;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Sending '%{public}s' event with result %d", buf, 0x12u);
  }

  v18[0] = 0;
  v18[1] = 0;
  sub_100007F88(v18, a1 + 136);
  v11 = *(a1 + 200);
  v12 = *(a1 + 208);
  if (v11 == v12)
  {
    if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_ERROR))
    {
      sub_1008631E4();
    }

    v16 = 106;
  }

  else
  {
    memset(buf, 0, sizeof(buf));
    sub_1006DA118(buf, v11, v12, 0x8E38E38E38E38E39 * ((v12 - v11) >> 3));
    sub_10000801C(v18);
    v13 = *buf;
    if (*buf != *&buf[8])
    {
      do
      {
        if (v13[1] && (!a5 || *v13 == a5))
        {
          if (a3)
          {
            if (qword_100B508F0 != -1)
            {
              sub_10086316C();
            }

            v14 = sub_10056A4C4(off_100B508E8, *v13, a3);
          }

          else
          {
            v14 = 4294901761;
          }

          if (qword_100B50B88 != -1)
          {
            sub_100863194();
          }

          if (sub_100076290(qword_100B50B80, *v13) && v14)
          {
            if (qword_100B540D0 != -1)
            {
              sub_1008631BC();
            }

            operator new();
          }

          sub_100007FB8(v18);
          v15 = sub_1006D9D98(*(a1 + 200), *(a1 + 208), *v13);
          if (v15 != *(a1 + 208))
          {
            *(a1 + 208) = v15;
          }

          sub_10000801C(v18);
        }

        v13 += 9;
      }

      while (v13 != *&buf[8]);
      v13 = *buf;
    }

    if (v13)
    {
      *&buf[8] = v13;
      operator delete(v13);
    }

    v16 = 0;
  }

  sub_1000088CC(v18);
  return v16;
}

void sub_1006D78B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12)
{
  if (__p)
  {
    a12 = __p;
    operator delete(__p);
  }

  sub_1000088CC(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_1006D78F0(uint64_t a1, int a2)
{
  v9[0] = 0;
  v9[1] = 0;
  sub_100007F88(v9, a1 + 8);
  if (*(a1 + 72))
  {
    v4 = *(a1 + 80);
    if (v4)
    {
      *(a1 + 80) = 0;
      sub_10000801C(v9);
      v5 = sub_1006D7574(a1, 3u, v4, a2, 0);
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v6 = qword_100BCE940;
    if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Pairing agent is not started - ignoring pairing attempt", v8, 2u);
    }

    v5 = 162;
  }

  sub_1000088CC(v9);
  return v5;
}

void sub_1006D79CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1006D79E0(uint64_t a1, uint64_t a2)
{
  v13[0] = 0;
  v13[1] = 0;
  sub_100007F88(v13, a1 + 8);
  if (*(a1 + 72))
  {
    v4 = *(a1 + 80);
    if (v4)
    {
      v5 = v4 == a2;
    }

    else
    {
      v5 = 1;
    }

    if (!v5)
    {
      sub_10000801C(v13);
      v6 = qword_100BCE940;
      if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_DEFAULT))
      {
        sub_1000E5A58(*(a1 + 80), __p);
        if (v12 >= 0)
        {
          v7 = __p;
        }

        else
        {
          v7 = __p[0];
        }

        *buf = 136446210;
        v15 = v7;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Pairing already in progress for device %{public}s", buf, 0xCu);
        if (v12 < 0)
        {
          operator delete(__p[0]);
        }
      }

      sub_1006D78F0(a1, 161);
      sub_100007FB8(v13);
    }

    *(a1 + 80) = a2;
    sub_10000801C(v13);
    v8 = sub_1006D7574(a1, 2u, a2, 0, 0);
  }

  else
  {
    v9 = qword_100BCE940;
    if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(__p[0]) = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Pairing agent is not started - ignoring pairing attempt", __p, 2u);
    }

    v8 = 162;
  }

  sub_1000088CC(v13);
  return v8;
}

void sub_1006D7B84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1006D7BA4(uint64_t a1)
{
  v5[0] = 0;
  v5[1] = 0;
  sub_100007F88(v5, a1 + 8);
  if ((*(a1 + 72) & 1) == 0)
  {
    if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_ERROR))
    {
      sub_100863218();
    }

    goto LABEL_8;
  }

  v2 = *(a1 + 80);
  if (!v2)
  {
    if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_ERROR))
    {
      sub_10086324C();
    }

LABEL_8:
    v3 = 162;
    goto LABEL_9;
  }

  sub_10000801C(v5);
  v3 = sub_1006D7C80(a1, v2);
LABEL_9:
  sub_1000088CC(v5);
  return v3;
}

uint64_t sub_1006D7C80(uint64_t a1, uint64_t a2)
{
  v4 = qword_100BCE940;
  if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000E5A58(a2, &__p);
    v5 = v16 >= 0 ? &__p : __p;
    *buf = 136446210;
    *&buf[4] = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Sending 'pincode request' pairing event for device %{public}s", buf, 0xCu);
    if (SHIBYTE(v16) < 0)
    {
      operator delete(__p);
    }
  }

  *buf = 0uLL;
  sub_100007F88(buf, a1 + 136);
  v6 = *(a1 + 200);
  v7 = *(a1 + 208);
  if (v6 == v7)
  {
    if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_ERROR))
    {
      sub_1008631E4();
    }

    v12 = 106;
  }

  else
  {
    __p = 0;
    v15 = 0;
    v16 = 0;
    sub_1006DA118(&__p, v6, v7, 0x8E38E38E38E38E39 * ((v7 - v6) >> 3));
    sub_10000801C(buf);
    v8 = __p;
    if (__p != v15)
    {
      do
      {
        if (v8[2])
        {
          if (a2)
          {
            if (qword_100B508F0 != -1)
            {
              sub_10086316C();
            }

            v9 = sub_10056A4C4(off_100B508E8, *v8, a2);
          }

          else
          {
            v9 = 4294901761;
          }

          if (qword_100B50B88 != -1)
          {
            sub_100863194();
          }

          if (sub_100076290(qword_100B50B80, *v8))
          {
            v10 = v9 == 0;
          }

          else
          {
            v10 = 1;
          }

          if (!v10)
          {
            if (qword_100B540D0 != -1)
            {
              sub_1008631BC();
            }

            operator new();
          }

          sub_100007FB8(buf);
          v11 = sub_1006D9D98(*(a1 + 200), *(a1 + 208), *v8);
          if (v11 != *(a1 + 208))
          {
            *(a1 + 208) = v11;
          }

          sub_10000801C(buf);
        }

        v8 += 9;
      }

      while (v8 != v15);
      v8 = __p;
    }

    if (v8)
    {
      v15 = v8;
      operator delete(v8);
    }

    v12 = 0;
  }

  sub_1000088CC(buf);
  return v12;
}

void sub_1006D7FB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_1000088CC(&a13);
  _Unwind_Resume(a1);
}

uint64_t sub_1006D7FEC(uint64_t a1, uint64_t a2, int a3)
{
  v9[0] = 0;
  v9[1] = 0;
  sub_100007F88(v9, a1 + 8);
  if ((*(a1 + 72) & 1) == 0)
  {
    if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_ERROR))
    {
      sub_100863218();
    }

    goto LABEL_8;
  }

  v6 = *(a1 + 80);
  if (!v6)
  {
    if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_ERROR))
    {
      sub_10086324C();
    }

LABEL_8:
    v7 = 162;
    goto LABEL_9;
  }

  sub_10000801C(v9);
  v7 = sub_1006D80DC(a1, v6, a2, a3);
LABEL_9:
  sub_1000088CC(v9);
  return v7;
}

uint64_t sub_1006D80DC(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v7 = qword_100BCE940;
  if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_DEFAULT))
  {
    v8 = a4 ? "numeric comparison" : "user confirmation";
    sub_1000E5A58(a2, &__p);
    v9 = v20 >= 0 ? &__p : __p;
    *buf = 136446466;
    *&buf[4] = v8;
    *&buf[12] = 2082;
    *&buf[14] = v9;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Sending '%{public}s request' pairing event for device %{public}s", buf, 0x16u);
    if (SHIBYTE(v20) < 0)
    {
      operator delete(__p);
    }
  }

  *buf = 0;
  *&buf[8] = 0;
  sub_100007F88(buf, a1 + 136);
  v10 = *(a1 + 200);
  v11 = *(a1 + 208);
  if (v10 == v11)
  {
    if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_ERROR))
    {
      sub_1008631E4();
    }

    v16 = 106;
  }

  else
  {
    __p = 0;
    v19 = 0;
    v20 = 0;
    sub_1006DA118(&__p, v10, v11, 0x8E38E38E38E38E39 * ((v11 - v10) >> 3));
    sub_10000801C(buf);
    v12 = __p;
    if (__p != v19)
    {
      do
      {
        if (v12[2])
        {
          if (a2)
          {
            if (qword_100B508F0 != -1)
            {
              sub_10086316C();
            }

            v13 = sub_10056A4C4(off_100B508E8, *v12, a2);
          }

          else
          {
            v13 = 4294901761;
          }

          if (qword_100B50B88 != -1)
          {
            sub_100863194();
          }

          if (sub_100076290(qword_100B50B80, *v12))
          {
            v14 = v13 == 0;
          }

          else
          {
            v14 = 1;
          }

          if (!v14)
          {
            if (qword_100B540D0 != -1)
            {
              sub_1008631BC();
            }

            operator new();
          }

          sub_100007FB8(buf);
          v15 = sub_1006D9D98(*(a1 + 200), *(a1 + 208), *v12);
          if (v15 != *(a1 + 208))
          {
            *(a1 + 208) = v15;
          }

          sub_10000801C(buf);
        }

        v12 += 9;
      }

      while (v12 != v19);
      v12 = __p;
    }

    if (v12)
    {
      v19 = v12;
      operator delete(v12);
    }

    v16 = 0;
  }

  sub_1000088CC(buf);
  return v16;
}

void sub_1006D8438(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_1000088CC(&a13);
  _Unwind_Resume(a1);
}

uint64_t sub_1006D8474(uint64_t a1)
{
  v5[0] = 0;
  v5[1] = 0;
  sub_100007F88(v5, a1 + 8);
  if ((*(a1 + 72) & 1) == 0)
  {
    if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_ERROR))
    {
      sub_100863218();
    }

    goto LABEL_8;
  }

  v2 = *(a1 + 80);
  if (!v2)
  {
    if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_ERROR))
    {
      sub_10086324C();
    }

LABEL_8:
    v3 = 162;
    goto LABEL_9;
  }

  sub_10000801C(v5);
  v3 = sub_1006D855C(a1, v2);
LABEL_9:
  sub_1000088CC(v5);
  return v3;
}

uint64_t sub_1006D855C(uint64_t a1, uint64_t a2)
{
  v4 = qword_100BCE940;
  if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000E5A58(a2, &__p);
    v5 = v16 >= 0 ? &__p : __p;
    *buf = 136446210;
    *&buf[4] = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Sending 'passkey display request' pairing event for device %{public}s", buf, 0xCu);
    if (SHIBYTE(v16) < 0)
    {
      operator delete(__p);
    }
  }

  *buf = 0uLL;
  sub_100007F88(buf, a1 + 136);
  v6 = *(a1 + 200);
  v7 = *(a1 + 208);
  if (v6 == v7)
  {
    if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_ERROR))
    {
      sub_1008631E4();
    }

    v12 = 106;
  }

  else
  {
    __p = 0;
    v15 = 0;
    v16 = 0;
    sub_1006DA118(&__p, v6, v7, 0x8E38E38E38E38E39 * ((v7 - v6) >> 3));
    sub_10000801C(buf);
    v8 = __p;
    if (__p != v15)
    {
      do
      {
        if (v8[2])
        {
          if (a2)
          {
            if (qword_100B508F0 != -1)
            {
              sub_10086316C();
            }

            v9 = sub_10056A4C4(off_100B508E8, *v8, a2);
          }

          else
          {
            v9 = 4294901761;
          }

          if (qword_100B50B88 != -1)
          {
            sub_100863194();
          }

          if (sub_100076290(qword_100B50B80, *v8))
          {
            v10 = v9 == 0;
          }

          else
          {
            v10 = 1;
          }

          if (!v10)
          {
            if (qword_100B540D0 != -1)
            {
              sub_1008631BC();
            }

            operator new();
          }

          sub_100007FB8(buf);
          v11 = sub_1006D9D98(*(a1 + 200), *(a1 + 208), *v8);
          if (v11 != *(a1 + 208))
          {
            *(a1 + 208) = v11;
          }

          sub_10000801C(buf);
        }

        v8 += 9;
      }

      while (v8 != v15);
      v8 = __p;
    }

    if (v8)
    {
      v15 = v8;
      operator delete(v8);
    }

    v12 = 0;
  }

  sub_1000088CC(buf);
  return v12;
}

void sub_1006D888C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_1000088CC(&a13);
  _Unwind_Resume(a1);
}

uint64_t sub_1006D88C8(uint64_t **a1, unsigned __int8 *a2)
{
  v20[0] = 0;
  v20[1] = 0;
  sub_100007F88(v20, (a1 + 1));
  v4 = a1[12];
  if (v4)
  {
    v5 = (a1 + 12);
    do
    {
      v6 = v4[4];
      v7 = v6 >= a2;
      v8 = v6 < a2;
      if (v7)
      {
        v5 = v4;
      }

      v4 = v4[v8];
    }

    while (v4);
    if (v5 != (a1 + 12) && v5[4] <= a2)
    {
      v9 = v5[5];
      if (v9)
      {
        nullsub_21(v9);
        operator delete();
      }

      sub_10002717C(a1 + 11, v5);
      operator delete(v5);
    }
  }

  v12 = a1[15];
  v11 = (a1 + 15);
  v10 = v12;
  if (v12)
  {
    v13 = (v11 - 1);
    v14 = v11;
    do
    {
      v15 = v10[4];
      v7 = v15 >= a2;
      v16 = v15 < a2;
      if (v7)
      {
        v14 = v10;
      }

      v10 = v10[v16];
    }

    while (v10);
    if (v14 != v11 && v14[4] <= a2)
    {
      v17 = v14[5];
      if (v17)
      {
        sub_1006D9A14(v14[5], *(v17 + 8));
        operator delete();
      }

      sub_10002717C(v13, v14);
      operator delete(v14);
    }
  }

  sub_10000801C(v20);
  if (qword_100B50F88 != -1)
  {
    sub_100863144();
  }

  v18 = sub_1006E0DBC(off_100B50F80, a2);
  sub_1000088CC(v20);
  return v18;
}

uint64_t sub_1006D8A50(uint64_t a1)
{
  if (*(a1 + 72) != 1)
  {
    return 0;
  }

  if (qword_100B50F88 != -1)
  {
    sub_100863280();
  }

  v2 = off_100B50F80;

  return sub_1006DF5BC(v2);
}

void sub_1006D8AA8(uint64_t a1, unint64_t a2)
{
  v12[1] = 0;
  v12[2] = a2;
  v12[0] = 0;
  sub_100007F88(v12, a1 + 8);
  v6 = *(a1 + 96);
  v5 = (a1 + 96);
  v4 = v6;
  if (v6)
  {
    v7 = v5;
    do
    {
      v8 = v4[4];
      v9 = v8 >= a2;
      v10 = v8 < a2;
      if (v9)
      {
        v7 = v4;
      }

      v4 = v4[v10];
    }

    while (v4);
    if (v7 != v5 && v7[4] <= a2)
    {
      v11 = v7[5];
      if (v11)
      {
        nullsub_21(v11);
        operator delete();
      }

      sub_10002717C(v5 - 1, v7);
      operator delete(v7);
    }
  }

  operator new();
}

uint64_t sub_1006D8C30(uint64_t a1, unint64_t a2, __n128 *a3)
{
  v15[0] = 0;
  v15[1] = 0;
  sub_100007F88(v15, a1 + 8);
  v8 = *(a1 + 96);
  v7 = a1 + 96;
  v6 = v8;
  if (!v8)
  {
    goto LABEL_9;
  }

  v9 = v7;
  do
  {
    v10 = *(v6 + 32);
    v11 = v10 >= a2;
    v12 = v10 < a2;
    if (v11)
    {
      v9 = v6;
    }

    v6 = *(v6 + 8 * v12);
  }

  while (v6);
  if (v9 != v7 && *(v9 + 32) <= a2)
  {
    sub_1006E5F04(a3, *(v9 + 40));
    v13 = 0;
  }

  else
  {
LABEL_9:
    v13 = 1;
  }

  sub_1000088CC(v15);
  return v13;
}

uint64_t sub_1006D8CE8(uint64_t a1, uint64_t a2, int a3)
{
  if (qword_100B50F88 != -1)
  {
    sub_100863280();
  }

  v5 = off_100B50F80;

  return sub_1006DFC84(v5, a2, a3);
}

uint64_t sub_1006D8D44(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v17[0] = 0;
  v17[1] = 0;
  sub_100007F88(v17, a1 + 8);
  v8 = *(a1 + 120);
  v7 = a1 + 120;
  v6 = v8;
  if (!v8)
  {
    goto LABEL_11;
  }

  v9 = v7;
  do
  {
    v10 = *(v6 + 32);
    v11 = v10 >= a2;
    v12 = v10 < a2;
    if (v11)
    {
      v9 = v6;
    }

    v6 = *(v6 + 8 * v12);
  }

  while (v6);
  if (v9 == v7 || *(v9 + 32) > a2 || (v13 = *(v9 + 40), v14 = sub_1006D9E8C(v13, a3), v13 + 8 == v14))
  {
LABEL_11:
    v15 = 0;
  }

  else
  {
    v15 = *(v14 + 48);
  }

  sub_1000088CC(v17);
  return v15;
}

uint64_t sub_1006D8E0C(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v16[1] = 0;
  v16[2] = a2;
  v16[0] = 0;
  sub_100007F88(v16, a1 + 8);
  v8 = *(a1 + 120);
  v7 = a1 + 120;
  v6 = v8;
  if (!v8)
  {
    goto LABEL_9;
  }

  v9 = v7;
  do
  {
    v10 = *(v6 + 32);
    v11 = v10 >= a2;
    v12 = v10 < a2;
    if (v11)
    {
      v9 = v6;
    }

    v6 = *(v6 + 8 * v12);
  }

  while (v6);
  if (v9 == v7 || *(v9 + 32) > a2)
  {
LABEL_9:
    operator new();
  }

  v15 = *(v9 + 40);
  v16[4] = a3;
  v13 = sub_1006D9F10(v15, a3);
  ++*(v13 + 48);
  return sub_1000088CC(v16);
}

void sub_1006D8F20(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1006D8F34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = qword_100BCE940;
  if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68159490;
    *&buf[4] = 16;
    LOWORD(v19) = 2096;
    *(&v19 + 2) = a2;
    WORD5(v19) = 1040;
    HIDWORD(v19) = 16;
    v20 = 2096;
    v21 = a3;
    v22 = 1040;
    v23 = 16;
    v24 = 2096;
    v25 = a4;
    v26 = 1040;
    v27 = 16;
    v28 = 2096;
    v29 = a5;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Sending 'local OOB Data Ready' event C192:{private, mask.hash}%.16P R192:{private, mask.hash}%.16P C256:{private, mask.hash}%.16P R256:{private, mask.hash}%.16P", buf, 0x42u);
  }

  v17[0] = 0;
  v17[1] = 0;
  sub_100007F88(v17, a1 + 136);
  v11 = *(a1 + 200);
  v12 = *(a1 + 208);
  if (v11 == v12)
  {
    if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_ERROR))
    {
      sub_1008631E4();
    }

    v15 = 106;
  }

  else
  {
    *buf = 0;
    v19 = 0uLL;
    sub_1006DA118(buf, v11, v12, 0x8E38E38E38E38E39 * ((v12 - v11) >> 3));
    sub_10000801C(v17);
    v13 = *buf;
    if (*buf != v19)
    {
      do
      {
        if (v13[6])
        {
          if (qword_100B50B88 != -1)
          {
            sub_100863194();
          }

          if (sub_100076290(qword_100B50B80, *v13))
          {
            if (qword_100B540D0 != -1)
            {
              sub_1008631BC();
            }

            operator new();
          }

          sub_100007FB8(v17);
          v14 = sub_1006D9D98(*(a1 + 200), *(a1 + 208), *v13);
          if (v14 != *(a1 + 208))
          {
            *(a1 + 208) = v14;
          }

          sub_10000801C(v17);
        }

        v13 += 9;
      }

      while (v13 != v19);
      v13 = *buf;
    }

    if (v13)
    {
      *&v19 = v13;
      operator delete(v13);
    }

    v15 = 0;
  }

  sub_1000088CC(v17);
  return v15;
}

void sub_1006D924C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12)
{
  if (__p)
  {
    a12 = __p;
    operator delete(__p);
  }

  sub_1000088CC(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_1006D92D4(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a4)
{
  result = sub_1006D9344(a1, *(a1 + 40));
  if (result)
  {
    result = sub_1006D9344(a1, *(a1 + 56));
    if (result)
    {
      return sub_10051BAF0(a2, a3, *(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64), a4);
    }
  }

  return result;
}

BOOL sub_1006D9344(uint64_t a1, unint64_t a2)
{
  if (qword_100B50B88 != -1)
  {
    sub_100863294();
  }

  v3 = qword_100B50B80;

  return sub_100618944(v3, a2);
}

uint64_t sub_1006D93E8(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a4)
{
  result = sub_1006D9344(a1, *(a1 + 40));
  if (result)
  {
    result = sub_1006D9344(a1, *(a1 + 48));
    if (result)
    {
      return sub_10052CE3C(a2, a3, *(a1 + 40), *(a1 + 48), *(a1 + 56), a4);
    }
  }

  return result;
}

uint64_t sub_1006D94A0(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a4)
{
  result = sub_1006D9344(a1, *(a1 + 40));
  if (result)
  {
    result = sub_1006D9344(a1, *(a1 + 48));
    if (result)
    {
      return sub_10051BAF0(a2, a3, *(a1 + 40), *(a1 + 48), *(a1 + 56), -*(a1 + 60), a4);
    }
  }

  return result;
}

uint64_t sub_1006D9560(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a4)
{
  result = sub_1006D9344(a1, *(a1 + 40));
  if (result)
  {
    result = sub_1006D9344(a1, *(a1 + 48));
    if (result)
    {
      return sub_10052CE3C(a2, a3, *(a1 + 40), *(a1 + 48), *(a1 + 56), a4);
    }
  }

  return result;
}

uint64_t sub_1006D9618(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a4)
{
  result = sub_1006D9344(a1, *(a1 + 40));
  if (result)
  {
    return sub_10051BB5C(a2, a3, *(a1 + 40), a1 + 48, a1 + 64, a1 + 80, a1 + 96, a4);
  }

  return result;
}

void sub_1006D967C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 16) = 0;
  *(a2 + 8) = 0;
  v4 = (a2 + 8);
  memset(&v13, 0, sizeof(v13));
  sub_1003A5170(&v13, 0xCuLL);
  if ((v13.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v5 = &v13;
  }

  else
  {
    v5 = v13.__r_.__value_.__r.__words[0];
  }

  strcpy(v5, "\t\tfStarted: ");
  if (*(a1 + 72))
  {
    v6 = "YES";
  }

  else
  {
    v6 = "NO";
  }

  v7 = std::string::append(&v13, v6);
  v8 = *&v7->__r_.__value_.__l.__data_;
  v14.__r_.__value_.__r.__words[2] = v7->__r_.__value_.__r.__words[2];
  *&v14.__r_.__value_.__l.__data_ = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  v9 = std::string::append(&v14, "\n");
  v10 = v9->__r_.__value_.__r.__words[0];
  *v4 = v9->__r_.__value_.__l.__size_;
  *(v4 + 7) = *(&v9->__r_.__value_.__r.__words[1] + 7);
  v11 = HIBYTE(v9->__r_.__value_.__r.__words[2]);
  v9->__r_.__value_.__l.__size_ = 0;
  v9->__r_.__value_.__r.__words[2] = 0;
  v9->__r_.__value_.__r.__words[0] = 0;
  v12 = SHIBYTE(v14.__r_.__value_.__r.__words[2]);
  *a2 = v10;
  *(a2 + 23) = v11;
  if (v12 < 0)
  {
    operator delete(v14.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }
}

void sub_1006D979C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1006D97D0(unint64_t *a1)
{
  result = sub_1006D9344(a1, a1[2]);
  if (result)
  {
    v3 = a1[2];
    v4 = a1[3];
    v5 = a1[4];
    v6 = *(*a1 + 40);

    return v6(a1, v3, v4, v5);
  }

  return result;
}

uint64_t sub_1006D9844(unint64_t *a1)
{
  result = sub_1006D9344(a1, a1[2]);
  if (result)
  {
    v3 = a1[2];
    v4 = a1[3];
    v5 = a1[4];
    v6 = *(*a1 + 40);

    return v6(a1, v3, v4, v5);
  }

  return result;
}

uint64_t sub_1006D98B8(unint64_t *a1)
{
  result = sub_1006D9344(a1, a1[2]);
  if (result)
  {
    v3 = a1[2];
    v4 = a1[3];
    v5 = a1[4];
    v6 = *(*a1 + 40);

    return v6(a1, v3, v4, v5);
  }

  return result;
}

uint64_t sub_1006D992C(unint64_t *a1)
{
  result = sub_1006D9344(a1, a1[2]);
  if (result)
  {
    v3 = a1[2];
    v4 = a1[3];
    v5 = a1[4];
    v6 = *(*a1 + 40);

    return v6(a1, v3, v4, v5);
  }

  return result;
}

uint64_t sub_1006D99A0(unint64_t *a1)
{
  result = sub_1006D9344(a1, a1[2]);
  if (result)
  {
    v3 = a1[2];
    v4 = a1[3];
    v5 = a1[4];
    v6 = *(*a1 + 40);

    return v6(a1, v3, v4, v5);
  }

  return result;
}

void sub_1006D9A14(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_1006D9A14(a1, *a2);
    sub_1006D9A14(a1, a2[1]);
    nullsub_21(a2 + 28);

    operator delete(a2);
  }
}

uint64_t sub_1006D9A70(uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = sub_1006D9AE0(a1, a2);
  }

  else
  {
    *v3 = *a2;
    v4 = *(a2 + 8);
    v5 = *(a2 + 24);
    *(v3 + 40) = *(a2 + 40);
    *(v3 + 24) = v5;
    *(v3 + 8) = v4;
    *(v3 + 56) = *(a2 + 56);
    *(v3 + 64) = *(a2 + 64);
    result = v3 + 72;
  }

  a1[1] = result;
  return result;
}

uint64_t sub_1006D9AE0(uint64_t *a1, uint64_t a2)
{
  v2 = 0x8E38E38E38E38E39 * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x38E38E38E38E38ELL)
  {
    sub_1000C7698();
  }

  if (0x1C71C71C71C71C72 * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x1C71C71C71C71C72 * ((a1[2] - *a1) >> 3);
  }

  if (0x8E38E38E38E38E39 * ((a1[2] - *a1) >> 3) >= 0x1C71C71C71C71C7)
  {
    v6 = 0x38E38E38E38E38ELL;
  }

  else
  {
    v6 = v3;
  }

  v16 = a1;
  if (v6)
  {
    sub_1006D9D3C(a1, v6);
  }

  v7 = 72 * v2;
  __p = 0;
  v13 = v7;
  v15 = 0;
  *v7 = *a2;
  v8 = *(a2 + 8);
  v9 = *(a2 + 24);
  *(v7 + 40) = *(a2 + 40);
  *(v7 + 24) = v9;
  *(v7 + 8) = v8;
  *(v7 + 56) = *(a2 + 56);
  *(v7 + 64) = *(a2 + 64);
  v14 = 72 * v2 + 72;
  sub_1006D9CA4(a1, &__p);
  v10 = a1[1];
  if (v14 != v13)
  {
    v14 = (v14 - v13 - 72) % 0x48uLL + v13;
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v10;
}

void sub_1006D9C4C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_1006D9CA4(uint64_t *result, void *a2)
{
  v2 = *result;
  v3 = result[1];
  v4 = a2[1] + *result - v3;
  if (v3 != *result)
  {
    v5 = a2[1] + *result - v3;
    do
    {
      *v5 = *v2;
      v6 = *(v2 + 8);
      v7 = *(v2 + 24);
      *(v5 + 40) = *(v2 + 40);
      *(v5 + 24) = v7;
      *(v5 + 8) = v6;
      *(v5 + 56) = *(v2 + 56);
      *(v5 + 64) = *(v2 + 64);
      v2 += 72;
      v5 += 72;
    }

    while (v2 != v3);
    v2 = *result;
  }

  a2[1] = v4;
  *result = v4;
  result[1] = v2;
  a2[1] = v2;
  v8 = result[1];
  result[1] = a2[2];
  a2[2] = v8;
  v9 = result[2];
  result[2] = a2[3];
  a2[3] = v9;
  *a2 = a2[1];
  return result;
}

void sub_1006D9D3C(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x38E38E38E38E38FLL)
  {
    operator new();
  }

  sub_1000C7698();
}

uint64_t sub_1006D9D98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = a2;
  if (a1 != a2)
  {
    result = a1;
    while (*result != a3)
    {
      result += 72;
      if (result == a2)
      {
        result = a2;
        break;
      }
    }

    if (result != a2)
    {
      for (i = result + 72; i != a2; i += 72)
      {
        if (*i != a3)
        {
          *result = *i;
          v6 = *(i + 8);
          v7 = *(i + 24);
          *(result + 40) = *(i + 40);
          *(result + 24) = v7;
          *(result + 8) = v6;
          *(result + 56) = *(i + 56);
          *(result + 64) = *(i + 64);
          result += 72;
        }
      }
    }
  }

  return result;
}

uint64_t sub_1006D9E8C(uint64_t a1, uint64_t a2)
{
  v2 = a1 + 8;
  v3 = *(a1 + 8);
  if (!v3)
  {
    return v2;
  }

  v5 = a1 + 8;
  do
  {
    v6 = sub_1006E5F48(v3 + 28, a2);
    if (v6)
    {
      v7 = 8;
    }

    else
    {
      v7 = 0;
    }

    if (!v6)
    {
      v5 = v3;
    }

    v3 = *(v3 + v7);
  }

  while (v3);
  if (v5 == v2 || sub_1006E5F48(a2, v5 + 28))
  {
    return v2;
  }

  return v5;
}

uint64_t sub_1006D9F10(uint64_t a1, uint64_t a2)
{
  v7 = 0;
  v2 = *sub_1006D9FC4(a1, &v7, a2);
  if (!v2)
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
    sub_1006DA04C();
  }

  return v2;
}

void *sub_1006D9FC4(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v7 = v4;
        if (!sub_1006E5F48(a3, v4 + 28))
        {
          break;
        }

        v4 = *v7;
        v5 = v7;
        if (!*v7)
        {
          goto LABEL_9;
        }
      }

      if (!sub_1006E5F48(v7 + 28, a3))
      {
        break;
      }

      v5 = v7 + 1;
      v4 = v7[1];
    }

    while (v4);
  }

  else
  {
    v7 = (a1 + 8);
  }

LABEL_9:
  *a2 = v7;
  return v5;
}

char **sub_1006DA0CC(char **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      nullsub_21(v2 + 28);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t sub_1006DA118(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_1006DA1A4(result, a4);
  }

  return result;
}

void sub_1006DA1A4(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x38E38E38E38E38FLL)
  {
    sub_1006D9D3C(a1, a2);
  }

  sub_1000C7698();
}

uint64_t sub_1006DA32C(uint64_t a1)
{
  *a1 = off_100B087A8;
  *(a1 + 8) = off_100B08830;
  *(a1 + 16) = off_100B08850;
  *(a1 + 24) = off_100B08888;
  *(a1 + 32) = off_100B088B0;
  *(a1 + 40) = 0;
  sub_100044BBC(a1 + 48);
  *(a1 + 112) = 0;
  sub_100044BBC(a1 + 120);
  *(a1 + 184) = 0;
  *(a1 + 192) = 0;
  *(a1 + 200) = 0;
  sub_100044BBC(a1 + 208);
  *(a1 + 272) = 0;
  sub_100044BBC(a1 + 280);
  *(a1 + 344) = 0;
  *(a1 + 352) = 0;
  *(a1 + 408) = 0;
  *(a1 + 360) = 0;
  *(a1 + 368) = &off_100B08A40;
  *(a1 + 376) = 0;
  *(a1 + 384) = 0;
  *(a1 + 392) = 0;
  *(a1 + 400) = 0;
  sub_100044BBC(a1 + 416);
  *(a1 + 480) = 0;
  *(a1 + 488) = 0;
  *(a1 + 512) = 0u;
  *(a1 + 496) = 0;
  *(a1 + 504) = a1 + 512;
  sub_100044BBC(a1 + 536);
  *(a1 + 632) = 0;
  *(a1 + 600) = 0u;
  *(a1 + 616) = 0u;
  return a1;
}

void sub_1006DA490(_Unwind_Exception *a1)
{
  v4 = v2;
  sub_10000CEDC((v1 + 63), *v4);
  v6 = v1[60];
  if (v6)
  {
    v1[61] = v6;
    operator delete(v6);
  }

  sub_10007A068(v1 + 52);
  v7 = v1[43];
  if (v7)
  {
    v1[44] = v7;
    operator delete(v7);
  }

  sub_10007A068(v1 + 35);
  sub_10007A068(v3 + 3);
  v8 = *v3;
  if (*v3)
  {
    v1[24] = v8;
    operator delete(v8);
  }

  sub_10007A068(v1 + 15);
  sub_10007A068(v1 + 6);
  _Unwind_Resume(a1);
}

uint64_t sub_1006DA52C(uint64_t a1)
{
  *a1 = off_100B087A8;
  *(a1 + 8) = off_100B08830;
  *(a1 + 16) = off_100B08850;
  *(a1 + 24) = off_100B08888;
  *(a1 + 32) = off_100B088B0;
  v2 = *(a1 + 608);
  if (v2)
  {
    *(a1 + 616) = v2;
    operator delete(v2);
  }

  sub_10007A068(a1 + 536);
  sub_10000CEDC(a1 + 504, *(a1 + 512));
  v3 = *(a1 + 480);
  if (v3)
  {
    *(a1 + 488) = v3;
    operator delete(v3);
  }

  sub_10007A068(a1 + 416);
  v4 = *(a1 + 344);
  if (v4)
  {
    *(a1 + 352) = v4;
    operator delete(v4);
  }

  sub_10007A068(a1 + 280);
  sub_10007A068(a1 + 208);
  v5 = *(a1 + 184);
  if (v5)
  {
    *(a1 + 192) = v5;
    operator delete(v5);
  }

  sub_10007A068(a1 + 120);
  sub_10007A068(a1 + 48);
  return a1;
}

void sub_1006DA674(uint64_t a1)
{
  sub_1006DA52C(a1);

  operator delete();
}

void sub_1006DA6AC(uint64_t a1)
{
  sub_1006DA52C(a1 - 16);

  operator delete();
}

void sub_1006DA6E8(uint64_t a1, int *a2, uint64_t a3, int a4, _OWORD *a5, char a6)
{
  v12 = malloc_type_malloc(0x10uLL, 0x100004077774924uLL);
  v16 = *a2;
  v17 = *(a2 + 2);
  *v12 = *a5;
  v13 = *(a1 + 40);
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1006DA7C8;
  v14[3] = &unk_100B088D0;
  v15 = a4;
  v18 = a6;
  v14[4] = v12;
  v14[5] = a2;
  v14[6] = a3;
  sub_10000CA94(v13, v14);
}

_BYTE *sub_1006DA7C8(uint64_t a1)
{
  if (qword_100B508F0 != -1)
  {
    sub_1008632A8();
  }

  *buf = *(a1 + 60);
  *&buf[4] = *(a1 + 64);
  v2 = sub_1000E6554(off_100B508E8, buf, 1);
  v3 = qword_100BCE940;
  if (v2)
  {
    if (!os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_15;
    }

    sub_1000DEEA4(v2, __p);
    if (v25 >= 0)
    {
      v4 = __p;
    }

    else
    {
      v4 = __p[0];
    }

    goto LABEL_12;
  }

  if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_FAULT))
  {
    *buf = 0;
    _os_log_fault_impl(&_mh_execute_header, v3, OS_LOG_TYPE_FAULT, "Oh no, we have no device !", buf, 2u);
    v3 = qword_100BCE940;
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = "UNKNOWN";
LABEL_12:
    v5 = *(a1 + 56);
    v6 = *(a1 + 32);
    v7 = *(a1 + 66);
    *buf = 136316419;
    *&buf[4] = v4;
    v30 = 1024;
    v31 = v5;
    v32 = 2160;
    v33 = 1752392040;
    v34 = 1041;
    v35 = 16;
    v36 = 2097;
    v37 = v6;
    v38 = 1024;
    v39 = v7;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Classic SMP pairing completed to %s with status %d IRK:%{private, mask.hash}.16P useH7=%d", buf, 0x32u);
    if (v2 && v25 < 0)
    {
      operator delete(__p[0]);
    }
  }

LABEL_15:
  if (!*(a1 + 56))
  {
    v28 = 0uLL;
    v26 = 0uLL;
    v27 = 0;
    sub_1006D1B74(&v26);
    if (qword_100B512E8 != -1)
    {
      sub_1008632BC();
    }

    if (sub_1006E7E2C(off_100B512E0, v2, &v26))
    {
      if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_ERROR))
      {
        sub_1008632E4();
      }
    }

    else
    {
      v8 = sub_1006D1BC8(&v26);
      v23 = 0;
      sub_1000216B4(&v23);
      v9 = nullsub_21(&v26);
      v10 = sub_1006D1C18();
      LODWORD(v9) = sub_10029B850(v9, v10, &v28, *(a1 + 66));
      sub_100022214(&v23);
      if (v9)
      {
        if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_ERROR))
        {
          sub_100863354();
        }
      }

      else
      {
        v11 = v8;
        if (qword_100B508C0 != -1)
        {
          sub_1008633C4();
        }

        v12 = *(a1 + 40);
        v21 = *(a1 + 32);
        v22 = off_100B508B8;
        v13 = *v12;
        v14 = v12[1];
        v15 = v12[2];
        v16 = v12[3];
        v17 = v12[4];
        v18 = v12[5];
        v19 = *(a1 + 66);
        sub_1000DEEA4(v2, buf);
        sub_1007CB20C(v22, (v13 << 40) | (v14 << 32) | (v15 << 24) | (v16 << 16) | (v17 << 8) | v18, 1, &v28, v21, v19, v11 == 8, buf);
        if (SBYTE3(v33) < 0)
        {
          operator delete(*buf);
        }
      }

      sub_10002249C(&v23);
    }

    nullsub_21(&v26);
  }

  free(*(a1 + 32));
  buf[0] = 0;
  sub_1000216B4(buf);
  sub_100247BFC(*(a1 + 48), 3);
  return sub_10002249C(buf);
}

void sub_1006DAB6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a29 < 0)
  {
    operator delete(__p);
  }

  sub_10002249C(&a15);
  nullsub_21(&a19);
  _Unwind_Resume(a1);
}

void sub_1006DABCC(uint64_t a1)
{
  v1[0] = 0;
  v1[1] = 0;
  sub_100007F88(v1, a1 + 208);
  operator new();
}

uint64_t sub_1006DAD98(uint64_t a1)
{
  if (qword_100B50AA0 != -1)
  {
    sub_100863464();
  }

  sub_10007A3F0(off_100B50A98 + 64, a1 + 32);
  if (qword_100B512E8 != -1)
  {
    sub_1000DF9EC();
  }

  sub_1006E89A0(off_100B512E0, a1 + 16);
  if (qword_100B50B88 != -1)
  {
    sub_100863478();
  }

  sub_10007A3F0(qword_100B50B80 + 8, a1 + 8);
  if (qword_100B50F68 != -1)
  {
    sub_10086348C();
  }

  sub_10007A3F0(off_100B50F60 + 24, a1 + 24);
  v10[0] = 0;
  v10[1] = 0;
  sub_100007F88(v10, a1 + 48);
  v2 = *(a1 + 184);
  if (v2 != *(a1 + 192))
  {
    do
    {
      v3 = *v2;
      v4 = *(a1 + 112);
      if (v4)
      {
        sub_1006D734C(v4, *v2);
      }

      if (qword_100B50B88 != -1)
      {
        sub_1008633EC();
      }

      sub_1006189DC(qword_100B50B80, v3);
      ++v2;
    }

    while (v2 != *(a1 + 192));
    v2 = *(a1 + 184);
  }

  *(a1 + 192) = v2;
  v5 = *(a1 + 112);
  if (v5)
  {
    v6 = qword_100BCE940;
    if (!os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_DEFAULT) || (LOWORD(v9[0]) = 0, _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "PairingManager is terminating. Deleting fAgent!", v9, 2u), (v5 = *(a1 + 112)) != 0))
    {
      (*(*v5 + 8))(v5);
    }

    *(a1 + 112) = 0;
  }

  sub_10000801C(v10);
  v9[0] = 0;
  v9[1] = 0;
  sub_100007F88(v9, a1 + 208);
  *(a1 + 272) = 0;
  v7 = *(a1 + 40);
  if (v7)
  {
    sub_1005711C4(v7);
    operator delete();
  }

  *(a1 + 40) = 0;
  sub_1000088CC(v9);
  return sub_1000088CC(v10);
}

void sub_1006DAFB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1006DAFD4(uint64_t a1, uint64_t a2)
{
  v7[0] = 0;
  v7[1] = 0;
  sub_100007F88(v7, a1 + 120);
  if (a2)
  {
    v3 = *(a2 + 40);
    if (v3)
    {
      v4 = qword_100BCE940;
      if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_DEFAULT))
      {
        *v6 = 0;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Cancelling existing pairing timeout event", v6, 2u);
      }

      *(v3 + 9) = 1;
      *(a2 + 40) = 0;
    }
  }

  return sub_1000088CC(v7);
}

uint64_t sub_1006DB07C(uint64_t a1, uint64_t a2)
{
  v7[0] = 0;
  v7[1] = 0;
  sub_100007F88(v7, a1 + 120);
  if (a2)
  {
    sub_1006DAFD4(a1, a2);
    v4 = qword_100BCE940;
    if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Creating a new pairing timeout event", v6, 2u);
    }

    operator new();
  }

  if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_ERROR))
  {
    sub_1008634A0();
  }

  return sub_1000088CC(v7);
}

void sub_1006DB218(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1006DB230(void *a1, unint64_t a2, void *a3, unint64_t *a4)
{
  if (qword_100B50B88 != -1)
  {
    sub_100863478();
  }

  v8 = sub_1000117DC(qword_100B50B80, a2);
  v30[0] = 0;
  v30[1] = 0;
  sub_100007F88(v30, (a1 + 6));
  if (!a1[14])
  {
    v9 = qword_100BCE940;
    if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(__p[0]) = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "allocating fAgent", __p, 2u);
    }

    operator new();
  }

  if (qword_100B50B88 != -1)
  {
    sub_1008633EC();
  }

  v10 = sub_1006185D8(qword_100B50B80, a2);
  *a4 = v10;
  if (v10)
  {
    *a3 = a1[14];
    v12 = a1[24];
    v11 = a1[25];
    if (v12 >= v11)
    {
      v15 = a1[23];
      v16 = (v12 - v15) >> 3;
      if ((v16 + 1) >> 61)
      {
        sub_1000C7698();
      }

      v17 = v11 - v15;
      v18 = v17 >> 2;
      if (v17 >> 2 <= (v16 + 1))
      {
        v18 = v16 + 1;
      }

      if (v17 >= 0x7FFFFFFFFFFFFFF8)
      {
        v19 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v19 = v18;
      }

      if (v19)
      {
        sub_100008108((a1 + 23), v19);
      }

      v20 = (8 * v16);
      *v20 = *a4;
      v13 = 8 * v16 + 8;
      v21 = a1[23];
      v22 = a1[24] - v21;
      v23 = v20 - v22;
      memcpy(v20 - v22, v21, v22);
      v24 = a1[23];
      a1[23] = v23;
      a1[24] = v13;
      a1[25] = 0;
      if (v24)
      {
        operator delete(v24);
      }
    }

    else
    {
      *v12 = *a4;
      v13 = (v12 + 1);
    }

    a1[24] = v13;
    v25 = qword_100BCE940;
    v14 = 0;
    if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_DEFAULT))
    {
      if (v8)
      {
        sub_100018384(v8, __p);
        if (v29 >= 0)
        {
          v26 = __p;
        }

        else
        {
          v26 = __p[0];
        }

        *buf = 136446210;
        v32 = v26;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Creating pairing agent for session %{public}s", buf, 0xCu);
        if (v29 < 0)
        {
          operator delete(__p[0]);
        }
      }

      else
      {
        *buf = 136446210;
        v32 = "(NULL)";
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Creating pairing agent for session %{public}s", buf, 0xCu);
      }

      v14 = 0;
    }
  }

  else
  {
    v14 = 7;
  }

  sub_1000088CC(v30);
  return v14;
}

void sub_1006DB50C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1006DB54C(void *a1, unint64_t a2)
{
  if (qword_100B50B88 != -1)
  {
    sub_100863478();
  }

  v4 = sub_1000117DC(qword_100B50B80, a2);
  v5 = qword_100BCE940;
  if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_DEFAULT))
  {
    if (v4)
    {
      sub_100018384(v4, __p);
      if (v20 >= 0)
      {
        v6 = __p;
      }

      else
      {
        v6 = __p[0];
      }

      *buf = 136446210;
      v22 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Destroying pairing agent for session %{public}s", buf, 0xCu);
      if (v20 < 0)
      {
        operator delete(__p[0]);
      }
    }

    else
    {
      *buf = 136446210;
      v22 = "(NULL)";
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Destroying pairing agent for session %{public}s", buf, 0xCu);
    }
  }

  __p[0] = 0;
  __p[1] = 0;
  sub_100007F88(__p, (a1 + 6));
  v8 = a1[23];
  v7 = a1[24];
  if (v8 != v7)
  {
    v9 = (v8 + 1);
    while (1)
    {
      v10 = *v8;
      if (*v8 == a2)
      {
        break;
      }

      ++v8;
      v9 += 8;
      if (v8 == v7)
      {
        goto LABEL_23;
      }
    }

    v11 = a1[14];
    if (v11)
    {
      sub_1006D734C(v11, *v8);
    }

    if (qword_100B50B88 != -1)
    {
      sub_1008633EC();
    }

    sub_1006189DC(qword_100B50B80, v10);
    v12 = v9 - 8;
    v13 = a1[24];
    v14 = v13 - v9;
    if (v13 != v9)
    {
      memmove(v9 - 8, v9, v13 - v9);
    }

    v7 = &v12[v14];
    a1[24] = &v12[v14];
  }

LABEL_23:
  if (a1[14] && v7 == a1[23])
  {
    v15 = sub_10000E92C();
    if ((*(*v15 + 8))(v15))
    {
      v16 = qword_100BCE940;
      if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v22 = "destroyAgent";
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%s - deleting fAgent as fHandleList size is 0", buf, 0xCu);
      }
    }

    v17 = a1[14];
    if (v17)
    {
      (*(*v17 + 8))(v17);
    }

    a1[14] = 0;
  }

  sub_10000801C(__p);
  return sub_1000088CC(__p);
}

void sub_1006DB814(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1006DB834(void *a1, uint64_t a2)
{
  v7[0] = 0;
  v7[1] = 0;
  sub_100007F88(v7, (a1 + 6));
  for (i = a1[23]; ; ++i)
  {
    if (i == a1[24])
    {
      v5 = 0;
      goto LABEL_7;
    }

    if (*i == a2)
    {
      break;
    }
  }

  v5 = a1[14];
LABEL_7:
  sub_1000088CC(v7);
  return v5;
}

uint64_t sub_1006DB8AC(uint64_t a1)
{
  v4[0] = 0;
  v4[1] = 0;
  sub_100007F88(v4, a1 + 208);
  if ((*(a1 + 272) & 1) == 0)
  {
    sub_100570C90(*(a1 + 40), QOS_CLASS_USER_INITIATED);
    *(a1 + 272) = 1;
    *(a1 + 352) = *(a1 + 344);
    sub_10000801C(v4);
    v3 = 0;
    sub_1000216B4(&v3);
    sub_1002FCD94(1);
    sub_100022214(&v3);
    sub_10002249C(&v3);
  }

  return sub_1000088CC(v4);
}

void sub_1006DB93C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

void sub_1006DB96C(uint64_t a1)
{
  if (*(a1 + 528))
  {
    v1 = qword_100BCE940;
    if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "Classic SMP Disabled", buf, 2u);
    }
  }

  else
  {
    LOBYTE(__p[0]) = 0;
    sub_1000216B4(__p);
    v2 = sub_10024AE98(sub_1006DBCA4);
    sub_100022214(__p);
    v3 = qword_100BCE940;
    if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *&buf[4] = v2;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Classic_SMPInit returned %d", buf, 8u);
    }

    sub_10002249C(__p);
  }

  v17 = 0;
  v4 = sub_10000E92C();
  sub_100007E30(buf, "Pairing");
  sub_100007E30(__p, "DisableH7");
  v5 = (*(*v4 + 72))(v4, buf, __p, &v17);
  v6 = v17;
  if (v16 < 0)
  {
    operator delete(__p[0]);
  }

  v7 = v5 & v6;
  if (v19 < 0)
  {
    operator delete(*buf);
    if (!v7)
    {
      goto LABEL_16;
    }
  }

  else if (!v7)
  {
    goto LABEL_16;
  }

  v8 = qword_100BCE940;
  if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Warning: Disabling Classic SMP local H7 support!", buf, 2u);
  }

  sub_10024B4F8();
LABEL_16:
  v14 = 0;
  v9 = sub_10000E92C();
  sub_100007E30(buf, "Pairing");
  sub_100007E30(__p, "ForceReplyH7");
  v10 = (*(*v9 + 72))(v9, buf, __p, &v14);
  v11 = v14;
  if (v16 < 0)
  {
    operator delete(__p[0]);
  }

  v12 = v10 & v11;
  if (v19 < 0)
  {
    operator delete(*buf);
    if (!v12)
    {
      return;
    }
  }

  else if (!v12)
  {
    return;
  }

  v13 = qword_100BCE940;
  if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Warning: Forcing Classic SMP to reply with H7!", buf, 2u);
  }

  sub_10024B508();
}

void sub_1006DBC50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  _Unwind_Resume(exception_object);
}

void sub_1006DBCA4(uint64_t a1, int a2, _OWORD *a3, int a4)
{
  if (qword_100B508F0 != -1)
  {
    sub_1008632A8();
  }

  *buf = *a1;
  *&buf[4] = *(a1 + 4);
  v8 = sub_1000E6554(off_100B508E8, buf, 1);
  v9 = qword_100BCE940;
  if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_DEFAULT))
  {
    if (v8)
    {
      sub_1000DEEA4(v8, __p);
      if (v12 >= 0)
      {
        v10 = __p;
      }

      else
      {
        v10 = __p[0];
      }

      *buf = 136316419;
      *&buf[4] = v10;
      v14 = 1024;
      v15 = a2;
      v16 = 2160;
      v17 = 1752392040;
      v18 = 1041;
      v19 = 16;
      v20 = 2097;
      v21 = a3;
      v22 = 1024;
      v23 = a4;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "_Classic_SMP_PairingComplete device:%s status %d IRK:%{private, mask.hash}.16P useH7=%d", buf, 0x32u);
      if (v12 < 0)
      {
        operator delete(__p[0]);
      }
    }

    else
    {
      *buf = 136316419;
      *&buf[4] = "UNKNOWN";
      v14 = 1024;
      v15 = a2;
      v16 = 2160;
      v17 = 1752392040;
      v18 = 1041;
      v19 = 16;
      v20 = 2097;
      v21 = a3;
      v22 = 1024;
      v23 = a4;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "_Classic_SMP_PairingComplete device:%s status %d IRK:%{private, mask.hash}.16P useH7=%d", buf, 0x32u);
    }
  }

  *buf = 0;
  sub_10023DB58(a1, buf);
  sub_100246BB4(a1, 0);
  if (qword_100B50F88 != -1)
  {
    sub_1008634D4();
  }

  sub_1006DA6E8(off_100B50F80, a1, *buf, a2, a3, a4);
}

uint64_t sub_1006DBEFC(uint64_t a1)
{
  v2 = qword_100BCE940;
  if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "PairingManager::stackWillStop enter", buf, 2u);
  }

  v11[0] = 0;
  v11[1] = 0;
  sub_100007F88(v11, a1 + 208);
  if (*(a1 + 272) == 1)
  {
    *(a1 + 272) = 0;
    if ((*(a1 + 528) & 1) == 0)
    {
      buf[0] = 0;
      sub_1000216B4(buf);
      sub_10024B064();
      sub_100022214(buf);
      sub_10002249C(buf);
    }

    v10[0] = 0;
    v10[1] = 0;
    sub_100007F88(v10, a1 + 280);
    *buf = 0;
    v8 = 0;
    v9 = 0;
    sub_100007F20(buf, (a1 + 344));
    *(a1 + 352) = *(a1 + 344);
    sub_10000801C(v10);
    for (i = *buf; i != v8; ++i)
    {
      sub_1006DC0D4(a1, *i, 0xA1u);
    }

    sub_100571164(*(a1 + 40));
    sub_10000801C(v11);
    v4 = qword_100BCE940;
    if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "PairingManager::stackWillStop exit", v6, 2u);
    }

    if (*buf)
    {
      v8 = *buf;
      operator delete(*buf);
    }

    sub_1000088CC(v10);
  }

  return sub_1000088CC(v11);
}

uint64_t sub_1006DC0D4(uint64_t a1, unsigned __int8 *a2, unsigned int a3)
{
  v52[1] = 0;
  v53 = 0;
  v7 = (a2 + 128);
  v6 = a2[128];
  v8 = a2[129];
  v9 = a2[130];
  v10 = a2[131];
  v11 = a2[132];
  v12 = a2[133];
  v52[0] = 0;
  sub_100007F88(v52, a1 + 280);
  v47 = a3;
  sub_10056923C((a1 + 344), a2);
  v13 = *(a1 + 512);
  if (v13)
  {
    v14 = (a1 + 512);
    do
    {
      v15 = v13[4];
      v16 = v15 >= a2;
      v17 = v15 < a2;
      if (v16)
      {
        v14 = v13;
      }

      v13 = v13[v17];
    }

    while (v13);
    if (v14 != (a1 + 512) && v14[4] <= a2)
    {
      sub_1006DAFD4(a1, v14[5]);
      v18 = v14[5];
      if (v18)
      {
        (*(*v18 + 8))(v18);
      }

      sub_10002717C((a1 + 504), v14);
      operator delete(v14);
    }
  }

  sub_10000801C(v52);
  v51[0] = 0;
  v51[1] = 0;
  sub_100007F88(v51, a1 + 48);
  v19 = *(a1 + 112);
  v20 = v47;
  if (v19)
  {
    sub_1006D78F0(v19, v47);
  }

  v21 = (v6 << 40) | (v8 << 32) | (v9 << 24) | (v10 << 16) | (v11 << 8) | v12;
  if (v21)
  {
    v22 = qword_100BCE940;
    if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000E5A58(a2, __p);
      v23 = v56[3] >= 0 ? __p : *__p;
      *buf = 136446210;
      *&buf[4] = v23;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Pairing complete for device %{public}s", buf, 0xCu);
      if ((v56[3] & 0x80000000) != 0)
      {
        operator delete(*__p);
      }
    }

    v45 = v21;
    if (*(a1 + 272) == 1)
    {
      v50 = 0;
      sub_1000216B4(&v50);
      sub_1002FCBC0(v7, 0);
      v24 = sub_1002D3618(v21);
      v48 = v24;
      v49 = WORD2(v24);
      if (sub_10023DB58(&v48, &v53))
      {
        v46 = 0;
      }

      else
      {
        v46 = sub_100255544(v53);
      }

      v27 = sub_10025557C(v53);
      sub_100022214(&v50);
      sub_10053CE84(a2, 255);
      sub_10053CCBC(a2, 255);
      v28 = qword_100BCE940;
      if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_DEFAULT))
      {
        sub_1000E5A58(a2, buf);
        v29 = v62 >= 0 ? buf : *buf;
        *__p = 136446722;
        *&__p[4] = v29;
        *&__p[12] = 1024;
        *v55 = v46;
        *&v55[4] = 1024;
        *v56 = v27;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Device %{public}s ClassicSMPSupported:%d encryptionMode:%d", __p, 0x18u);
        if (v62 < 0)
        {
          operator delete(*buf);
        }
      }

      sub_10002249C(&v50);
      v26 = v27 == 2;
    }

    else
    {
      v25 = qword_100BCE940;
      v26 = 0;
      v46 = 0;
      if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_DEFAULT))
      {
        *__p = 0;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Stack shutting down, ignore pairing timeout", __p, 2u);
        v26 = 0;
        v46 = 0;
      }
    }

    v30 = qword_100BCE940;
    if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_DEFAULT))
    {
      v31 = v26;
      v32 = sub_10054E5F8(a2);
      v33 = *(a1 + 528);
      v34 = a2[1177];
      v35 = sub_1007774DC();
      *__p = 67110402;
      *&__p[4] = v47;
      *&__p[8] = 1024;
      *&__p[10] = v32;
      *v55 = 1024;
      *&v55[2] = v46;
      *v56 = 1024;
      *&v56[2] = v33;
      v20 = v47;
      v57 = 1024;
      v58 = v34;
      v59 = 2112;
      v60 = v35;
      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "pairingComplete result:%d device->isDerivedFromLE:%d connectionSupportsClassicSMP:%d fCTKDDisabled:%d isPendingClassicSMP:%d address:%@", __p, 0x2Au);

      v26 = v31;
    }

    if (v20 || *(a1 + 272) != 1 || (sub_10054E5F8(a2) & 1) != 0 || (*(a1 + 528) & 1) != 0 || ((v46 ^ 1) & 1) != 0)
    {
      goto LABEL_63;
    }

    if (a2[1177] == 1)
    {
      sub_100246BB4(v7, 1);
      v36 = qword_100BCE940;
      if (v26)
      {
        if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_DEFAULT))
        {
          sub_1000E5A58(a2, __p);
          v37 = v56[3] >= 0 ? __p : *__p;
          *buf = 136446210;
          *&buf[4] = v37;
          _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "Initiating Classic SMP with device %{public}s", buf, 0xCu);
          if ((v56[3] & 0x80000000) != 0)
          {
            operator delete(*__p);
          }
        }

        a2[1177] = 0;
        buf[0] = 0;
        sub_1000216B4(buf);
        v38 = sub_10024B0B4(v53);
        sub_100022214(buf);
        if (v38)
        {
          if (v38 == 4821)
          {
            v39 = qword_100BCE940;
            if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_DEFAULT))
            {
              *__p = 0;
              _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "Failed to start Classic SMP Pairing, waiting for other side to initiate", __p, 2u);
            }
          }

          else
          {
            if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_ERROR))
            {
              sub_100863530();
            }

            sub_1000618AC(buf);
            sub_100246BB4(v7, 0);
            sub_100022214(buf);
          }
        }

        v40 = buf;
        goto LABEL_62;
      }

      if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_ERROR))
      {
        sub_1008634FC();
      }

      __p[0] = 0;
      sub_1000216B4(__p);
      sub_100246BB4(v7, 0);
      sub_100022214(__p);
    }

    else
    {
      a2[1177] = 1;
      __p[0] = 0;
      sub_1000216B4(__p);
      sub_100246BB4(v7, 1);
      sub_100022214(__p);
    }

    v40 = __p;
LABEL_62:
    sub_10002249C(v40);
LABEL_63:
    *buf = 0uLL;
    if (qword_100B508D0 != -1)
    {
      sub_1008635A0();
    }

    sub_1000498D4(off_100B508C8, (a2[128] << 40) | (a2[129] << 32) | (a2[130] << 24) | (a2[131] << 16) | (a2[132] << 8) | a2[133], 1u, 0, 0, 0, buf);
    if (qword_100B508D0 != -1)
    {
      sub_1008635A0();
    }

    v41 = off_100B508C8;
    v42 = sub_10004DF60(buf);
    *(sub_10004B1D8(v41, v42) + 161) = 1;

    if (_os_feature_enabled_impl())
    {
      if (qword_100B508C0 != -1)
      {
        sub_1008633C4();
      }

      v43 = off_100B508B8;
      sub_100007E30(__p, "");
      sub_1007CB20C(v43, v45, 0, 0, 0, 0, 0, __p);
      if ((v56[3] & 0x80000000) != 0)
      {
        operator delete(*__p);
      }
    }
  }

  if (qword_100B50F68 != -1)
  {
    sub_100863414();
  }

  sub_100530B30(off_100B50F60);
  sub_1006DCDD0(a1, a2, v20);
  if (v20 && !sub_10053E610(a2))
  {
    if (qword_100B512E8 != -1)
    {
      sub_1008632BC();
    }

    sub_1006E877C(off_100B512E0, a2);
  }

  sub_1000088CC(v51);
  return sub_1000088CC(v52);
}

void sub_1006DC8A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  sub_1000088CC(&a15);
  sub_1000088CC(&a17);
  _Unwind_Resume(a1);
}

uint64_t sub_1006DC960(void *a1, uint64_t a2)
{
  v19[0] = 0;
  v19[1] = 0;
  sub_100007F88(v19, (a1 + 52));
  v4 = a1[60];
  v5 = a1[61];
  v6 = v4;
  if (v4 != v5)
  {
    while (*v6 != a2)
    {
      if (++v6 == v5)
      {
        goto LABEL_6;
      }
    }
  }

  if (v6 == v5)
  {
LABEL_6:
    v7 = a1[62];
    if (v5 >= v7)
    {
      v9 = v5 - v4;
      if ((v9 + 1) >> 61)
      {
        sub_1000C7698();
      }

      v10 = v7 - v4;
      v11 = v10 >> 2;
      if (v10 >> 2 <= (v9 + 1))
      {
        v11 = v9 + 1;
      }

      if (v10 >= 0x7FFFFFFFFFFFFFF8)
      {
        v12 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v12 = v11;
      }

      if (v12)
      {
        sub_100008108((a1 + 60), v12);
      }

      v13 = (8 * v9);
      *v13 = a2;
      v8 = 8 * v9 + 8;
      v14 = a1[60];
      v15 = a1[61] - v14;
      v16 = v13 - v15;
      memcpy(v13 - v15, v14, v15);
      v17 = a1[60];
      a1[60] = v16;
      a1[61] = v8;
      a1[62] = 0;
      if (v17)
      {
        operator delete(v17);
      }
    }

    else
    {
      *v5 = a2;
      v8 = (v5 + 1);
    }

    a1[61] = v8;
  }

  return sub_1000088CC(v19);
}

uint64_t sub_1006DCA90(uint64_t a1, uint64_t a2)
{
  v9[0] = 0;
  v9[1] = 0;
  sub_100007F88(v9, a1 + 416);
  v5 = *(a1 + 480);
  v4 = *(a1 + 488);
  if (v5 != v4)
  {
    v6 = *(a1 + 480);
    while (*v6 != a2)
    {
      v6 += 8;
      v5 += 8;
      if (v6 == v4)
      {
        v5 = *(a1 + 488);
        break;
      }
    }
  }

  if (v4 != v5)
  {
    v7 = (v4 - (v5 + 8));
    if (v4 != v5 + 8)
    {
      memmove(v5, v5 + 8, v4 - (v5 + 8));
    }

    *(a1 + 488) = &v7[v5];
  }

  return sub_1000088CC(v9);
}

BOOL sub_1006DCB34(uint64_t a1, uint64_t a2)
{
  if (qword_100B508E0 != -1)
  {
    sub_1008635C8();
  }

  if (!sub_100518294(off_100B508D8, a2))
  {
    return 0;
  }

  v4 = 0;
  if (qword_100B508E0 != -1)
  {
    sub_1008635C8();
  }

  return !sub_100518AF4(off_100B508D8, a2, &v4) && v4 == 1;
}

uint64_t sub_1006DCBD4(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  if (!a2)
  {
    return v2;
  }

  v17 = 0;
  v16 = 0u;
  *v14 = 0u;
  memset(v15, 0, sizeof(v15));
  *v12 = 0u;
  v13 = 0u;
  *v10 = 0u;
  v11 = 0u;
  v9 = 0u;
  sub_1000DE474(&v9 + 1);
  BYTE2(v10[0]) = 0;
  BYTE4(v10[0]) = 0;
  BYTE2(v12[0]) = 0;
  BYTE4(v12[0]) = 0;
  DWORD1(v15[1]) = 0;
  v11 = 0uLL;
  v10[1] = 0;
  LOBYTE(v12[0]) = 0;
  v13 = 0uLL;
  v12[1] = 0;
  LOBYTE(v14[0]) = 0;
  memset(v15, 0, 19);
  v14[1] = 0;
  BYTE8(v15[1]) = 1;
  *(&v15[1] + 14) = 0;
  *(&v15[1] + 9) = 0;
  v16 = 0uLL;
  *(&v15[2] + 1) = 0;
  LOBYTE(v17) = 0;
  *(&v17 + 2) = 0;
  if (sub_100536A18(v2, &v9) && (BYTE10(v15[1]) & 1) != 0 || sub_10053E610(v2))
  {
    __p = 0;
    v7 = 0;
    v8 = 0;
    if (sub_10009DB3C(a1, &__p))
    {
      v2 = 0;
      if (!__p)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v4 = __p;
      if (__p != v7)
      {
        v4 = __p;
        while (*v4 != v2)
        {
          if (++v4 == v7)
          {
            v4 = v7;
            break;
          }
        }
      }

      v2 = v7 != v4;
      if (!__p)
      {
        goto LABEL_16;
      }
    }

    v7 = __p;
    operator delete(__p);
  }

  else
  {
    v2 = 0;
  }

LABEL_16:
  if (SHIBYTE(v15[0]) < 0)
  {
    operator delete(v14[1]);
  }

  if (SHIBYTE(v13) < 0)
  {
    operator delete(v12[1]);
  }

  if (SHIBYTE(v11) < 0)
  {
    operator delete(v10[1]);
  }

  nullsub_21(&v9 + 1);
  return v2;
}

void sub_1006DCD94(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_100320BE8(&a13);
  _Unwind_Resume(a1);
}

uint64_t sub_1006DCDD0(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  v6 = qword_100BCE940;
  if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000E5A58(a2, &__p);
    v7 = v20 >= 0 ? &__p : __p;
    *buf = 136446466;
    *&buf[4] = v7;
    *&buf[12] = 1024;
    *&buf[14] = a3;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Sending 'pairing complete' event for device %{public}s with result %d", buf, 0x12u);
    if (SHIBYTE(v20) < 0)
    {
      operator delete(__p);
    }
  }

  *buf = 0;
  *&buf[8] = 0;
  sub_100007F88(buf, a1 + 416);
  __p = 0;
  v19 = 0;
  v20 = 0;
  sub_100007F20(&__p, (a1 + 480));
  sub_10000801C(buf);
  for (i = __p; i != v19; ++i)
  {
    (*(**i + 24))(*i, a2, a3);
  }

  if (!a3)
  {
    v9 = a2[128];
    v10 = a2[129];
    v11 = a2[130];
    v12 = a2[131];
    v13 = a2[132];
    v14 = a2[133];
    v15 = sub_100017F4C();
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_1006E1E3C;
    v17[3] = &unk_100ADF8F8;
    v17[4] = (v9 << 40) | (v10 << 32) | (v11 << 24) | (v12 << 16) | (v13 << 8) | v14;
    sub_10000CA94(v15, v17);
  }

  if (__p)
  {
    v19 = __p;
    operator delete(__p);
  }

  return sub_1000088CC(buf);
}

void sub_1006DCFDC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, char a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_1000088CC(&a17);
  _Unwind_Resume(a1);
}

void sub_1006DD2E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = qword_100BCE940;
  if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 141560835;
    v11 = 1752392040;
    v12 = 1041;
    v13 = 16;
    v14 = 2097;
    v15 = a2;
    v16 = 2160;
    v17 = 1752392040;
    v18 = 1041;
    v19 = 16;
    v20 = 2097;
    v21 = a3;
    v22 = 2160;
    v23 = 1752392040;
    v24 = 1041;
    v25 = 16;
    v26 = 2097;
    v27 = a4;
    v28 = 2160;
    v29 = 1752392040;
    v30 = 1041;
    v31 = 16;
    v32 = 2097;
    v33 = a5;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "PairingManager::localOOBDataGenerated C192:%{private, mask.hash}.16P R192:%{private, mask.hash}.16P C256:%{private, mask.hash}.16P R256:%{private, mask.hash}.16P", &v10, 0x6Au);
  }

  operator new();
}

void sub_1006DD488(uint64_t a1, uint64_t a2)
{
  v5[0] = 0;
  v5[1] = 0;
  sub_100007F88(v5, a1 + 208);
  v4[0] = 0;
  v4[1] = 0;
  sub_100007F88(v4, a1 + 280);
  __p[0] = *(a2 + 8);
  sub_1000C2484(a1 + 344, __p);
  operator new();
}

void sub_1006DDDC0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18, uint64_t a19, char a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  sub_100320BE8(&a33);
  nullsub_21(v38 - 112);
  sub_1000088CC(&a12);
  sub_10002249C(&a17);
  sub_1000088CC(&a18);
  sub_1000088CC(&a20);
  _Unwind_Resume(a1);
}

uint64_t sub_1006DDEBC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = a2[1];
  v9 = qword_100BCE940;
  if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000E5A58(v8, __p);
    v10 = v18;
    v11 = __p[0];
    v12 = (*(*a2 + 48))(a2);
    v13 = __p;
    if (v10 < 0)
    {
      v13 = v11;
    }

    v14 = "for self-initiated pairing to";
    *buf = 136315650;
    if (a3)
    {
      v14 = "for incoming pairing from";
    }

    *&buf[4] = v14;
    *&buf[12] = 2082;
    *&buf[14] = v13;
    *&buf[22] = 1024;
    v20 = v12;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Notifying 'pairing started' %s %{public}s for Auth type %d", buf, 0x1Cu);
    if (v18 < 0)
    {
      operator delete(__p[0]);
    }
  }

  __p[0] = 0;
  __p[1] = 0;
  sub_100007F88(__p, a1 + 416);
  memset(buf, 0, sizeof(buf));
  sub_100007F20(buf, (a1 + 480));
  sub_10000801C(__p);
  v15 = *buf;
  if (*buf != *&buf[8])
  {
    do
    {
      (*(**v15 + 16))(*v15, v8, a3, a4);
      ++v15;
    }

    while (v15 != *&buf[8]);
    v15 = *buf;
  }

  if (v15)
  {
    *&buf[8] = v15;
    operator delete(v15);
  }

  return sub_1000088CC(__p);
}

void sub_1006DE0A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1006DE0F8(uint64_t a1, uint64_t a2)
{
  v6[0] = 0;
  v6[1] = 0;
  sub_100007F88(v6, a1 + 208);
  v5[0] = 0;
  v5[1] = 0;
  sub_100007F88(v5, a1 + 280);
  __p = *(a2 + 8);
  sub_1000C2484(a1 + 344, &__p);
  operator new();
}

void sub_1006DE7B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va1, a6);
  va_start(va, a6);
  v7 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  sub_1000088CC(va);
  sub_1000088CC(va1);
  _Unwind_Resume(a1);
}

void sub_1006DE84C(uint64_t a1, uint64_t a2)
{
  v6[0] = 0;
  v6[1] = 0;
  sub_100007F88(v6, a1 + 208);
  v5[0] = 0;
  v5[1] = 0;
  sub_100007F88(v5, a1 + 280);
  __p = *(a2 + 8);
  sub_1000C2484(a1 + 344, &__p);
  operator new();
}

void sub_1006DEC24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va1, a6);
  va_start(va, a6);
  v7 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  sub_1000088CC(va);
  sub_1000088CC(va1);
  _Unwind_Resume(a1);
}

uint64_t sub_1006DECAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13[0] = 0;
  v13[1] = 0;
  sub_100007F88(v13, a1 + 208);
  v10 = qword_100BCE940;
  if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 141560835;
    *&buf[4] = 1752392040;
    *&buf[12] = 1041;
    *&buf[14] = 16;
    v15 = 2097;
    v16 = a2;
    v17 = 2160;
    v18 = 1752392040;
    v19 = 1041;
    v20 = 16;
    v21 = 2097;
    v22 = a3;
    v23 = 2160;
    v24 = 1752392040;
    v25 = 1041;
    v26 = 16;
    v27 = 2097;
    v28 = a4;
    v29 = 2160;
    v30 = 1752392040;
    v31 = 1041;
    v32 = 16;
    v33 = 2097;
    v34 = a5;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "PairingManager::notifyLocalOOBDataReady C192:%{private, mask.hash}.16P R192:%{private, mask.hash}.16P C256:%{private, mask.hash}.16P R256:%{private, mask.hash}.16P", buf, 0x6Au);
  }

  if (*(a1 + 272))
  {
    *buf = 0;
    *&buf[8] = 0;
    sub_100007F88(buf, a1 + 48);
    v11 = *(a1 + 112);
    if (v11)
    {
      sub_1006D8F34(v11, a2, a3, a4, a5);
    }

    else if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_ERROR))
    {
      sub_1008636C0();
    }

    sub_1000088CC(buf);
  }

  else if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_ERROR))
  {
    sub_10086379C();
  }

  return sub_1000088CC(v13);
}

void sub_1006DEE7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11)
{
  sub_1000088CC(&a11);
  sub_1000088CC(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_1006DEEA8(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  if (!a3)
  {
    v28 = 0;
    v8 = a2 + 128;
    v26 = *(a2 + 128);
    v27 = *(a2 + 132);
    v25 = sub_10023DB58(&v26, &v28);
    v54 = 0;
    v53 = 0u;
    memset(v52, 0, sizeof(v52));
    v50 = 0u;
    *v51 = 0u;
    v48 = 0u;
    *v49 = 0u;
    v46 = 0u;
    *v47 = 0u;
    sub_1000DE474(&v46 + 1);
    BYTE2(v47[0]) = 0;
    BYTE4(v47[0]) = 0;
    BYTE2(v49[0]) = 0;
    BYTE4(v49[0]) = 0;
    DWORD1(v52[1]) = 0;
    v48 = 0uLL;
    v47[1] = 0;
    LOBYTE(v49[0]) = 0;
    v50 = 0uLL;
    v49[1] = 0;
    LOBYTE(v51[0]) = 0;
    memset(v52, 0, 19);
    v51[1] = 0;
    BYTE8(v52[1]) = 1;
    *(&v52[1] + 14) = 0;
    *(&v52[1] + 9) = 0;
    v53 = 0uLL;
    *(&v52[2] + 1) = 0;
    LOBYTE(v54) = 0;
    *(&v54 + 2) = 0;
    if (sub_100536A18(a2, &v46) && BYTE2(v54) == 1)
    {
      v9 = qword_100BCE940;
      if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_DEFAULT))
      {
        sub_1000E5A58(a2, &__p);
        v10 = (v37 & 0x8000) == 0 ? &__p : __p;
        *buf = 136446210;
        *&buf[4] = v10;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Force No Clasic SMP support for device %{public}s", buf, 0xCu);
        if (SBYTE1(v37) < 0)
        {
          operator delete(__p);
        }
      }

      v11 = 1;
    }

    else
    {
      v11 = 0;
    }

    v12 = qword_100BCE940;
    if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_DEFAULT))
    {
      v24 = v8;
      v13 = *(a2 + 1177);
      v14 = *(a1 + 528);
      v15 = sub_1000295DC(a2);
      v16 = sub_1000E69B8(a1 + 344, a2);
      sub_1000BE6F8(&v26, buf);
      v17 = buf;
      if (v30 < 0)
      {
        v17 = *buf;
      }

      LODWORD(__p) = 67110914;
      HIDWORD(__p) = v25;
      v32 = 1024;
      v33 = a4;
      v34 = 1024;
      v35 = v13;
      v36 = 1024;
      v37 = v14;
      v38 = 1024;
      v39 = v15;
      v40 = 1024;
      v41 = v16;
      v42 = 1024;
      v43 = v11;
      v44 = 2082;
      v45 = v17;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "encryptionComplete status:%d encryptionMode:%d pendingClassicSMP:%d fCTKDDisabled=%d isPaired:%d isPairing:%d disableRemoteCTKDSupport:%d address:%{public}s", &__p, 0x36u);
      if (v30 < 0)
      {
        operator delete(*buf);
      }

      v8 = v24;
    }

    if (a4 == 2 && !v25 && ((v11 | *(a1 + 528)) & 1) == 0)
    {
      sub_100246BB4(v8, 1);
      if (*(a2 + 1177) == 1)
      {
        v18 = qword_100BCE940;
        if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_DEFAULT))
        {
          sub_1000E5A58(a2, &__p);
          v19 = (v37 & 0x8000) == 0 ? &__p : __p;
          *buf = 136446210;
          *&buf[4] = v19;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Initiating Classic SMP with device %{public}s", buf, 0xCu);
          if (SBYTE1(v37) < 0)
          {
            operator delete(__p);
          }
        }

        *(a2 + 1177) = 0;
        v20 = sub_10024B0B4(v28);
        if (v20)
        {
          if (v20 == 4821)
          {
            v21 = qword_100BCE940;
            if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_DEFAULT))
            {
              LOWORD(__p) = 0;
              _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Failed to start Classic SMP Pairing, waiting for other side to initiate", &__p, 2u);
            }
          }

          else
          {
            if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_ERROR))
            {
              sub_100863530();
            }

            sub_100246BB4(v8, 0);
          }
        }
      }

      else if (sub_1000E69B8(a1 + 344, a2) || (sub_1000295DC(a2) & 1) == 0)
      {
        *(a2 + 1177) = 1;
      }
    }

    if (SHIBYTE(v52[0]) < 0)
    {
      operator delete(v51[1]);
    }

    if (SHIBYTE(v50) < 0)
    {
      operator delete(v49[1]);
    }

    if (SHIBYTE(v48) < 0)
    {
      operator delete(v47[1]);
    }

    nullsub_21(&v46 + 1);
  }

  v22 = sub_10000F034();
  return (*(*v22 + 672))(v22, a3, 1);
}

void sub_1006DF35C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  sub_100320BE8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1006DF388(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v3 = a3;
  v16[1] = 0;
  v17 = a3;
  v16[0] = 0;
  sub_100007F88(v16, a1 + 280);
  v5 = sub_10056923C((a1 + 344), v3);
  if (v5 && os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_ERROR))
  {
    sub_1000E5A58(v3, v15);
    sub_1008637D0();
  }

  v6 = *(a1 + 512);
  if (!v6)
  {
    goto LABEL_22;
  }

  v7 = a1 + 512;
  do
  {
    v8 = *(v6 + 32);
    v9 = v8 >= v3;
    v10 = v8 < v3;
    if (v9)
    {
      v7 = v6;
    }

    v6 = *(v6 + 8 * v10);
  }

  while (v6);
  if (v7 != a1 + 512 && *(v7 + 32) <= v3 && (v11 = *(v7 + 40)) != 0)
  {
    v12 = qword_100BCE940;
    if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_DEFAULT))
    {
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "pairing timedout, rejecting pairing request", v14, 2u);
    }

    sub_100075DC4((a1 + 504), &v17);
    sub_1006DAFD4(a1, v11);
    (*(*v11 + 32))(v11);
    (*(*v11 + 8))(v11);
    v3 = v17;
  }

  else
  {
LABEL_22:
    if (v5 && os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_ERROR))
    {
      sub_1000E5A58(v3, v14);
      sub_100863824();
    }
  }

  sub_1006DC0D4(a1, v3, 0xA1u);
  return sub_1000088CC(v16);
}

void sub_1006DF594(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1006DF5BC(uint64_t a1)
{
  v14[0] = 0;
  v14[1] = 0;
  sub_100007F88(v14, a1 + 208);
  v2 = qword_100BCE940;
  if (*(a1 + 272))
  {
    if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Cancelling all currently pending pairing attempts", buf, 2u);
    }

    v13[0] = 0;
    v13[1] = 0;
    sub_100007F88(v13, a1 + 280);
    *buf = 0;
    v11 = 0;
    v12 = 0;
    sub_100007F20(buf, (a1 + 344));
    *(a1 + 352) = *(a1 + 344);
    sub_10000801C(v13);
    sub_10000801C(v14);
    v3 = *buf;
    if (*buf != v11)
    {
      do
      {
        v9 = *v3;
        sub_100007FB8(v13);
        *v15 = &v9;
        v4 = sub_10005E16C(a1 + 504, &v9)[5];
        if (v4)
        {
          v5 = qword_100BCE940;
          if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_DEFAULT))
          {
            *v15 = 0;
            _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Pairing cancelled, rejecting pairing request", v15, 2u);
          }

          (*(*v4 + 32))(v4);
        }

        sub_10000801C(v13);
        sub_1006DF814(v6, v9);
        sub_1006DC0D4(a1, v9, 0xA1u);
        ++v3;
      }

      while (v3 != v11);
      v3 = *buf;
    }

    if (v3)
    {
      v11 = v3;
      operator delete(v3);
    }

    sub_1000088CC(v13);
    v7 = 0;
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_ERROR))
    {
      sub_100863878();
    }

    v7 = 1;
  }

  sub_1000088CC(v14);
  return v7;
}

void sub_1006DF7D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, char a14, uint64_t a15, char a16)
{
  sub_1000088CC(&a14);
  sub_1000088CC(&a16);
  _Unwind_Resume(a1);
}

BOOL sub_1006DF814(uint64_t a1, uint64_t a2)
{
  v3 = qword_100BCE940;
  if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000E5A58(a2, __p);
    if (v8 >= 0)
    {
      v4 = __p;
    }

    else
    {
      v4 = __p[0];
    }

    *buf = 136446210;
    v10 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Blocking pairing for device %{public}s", buf, 0xCu);
    if (v8 < 0)
    {
      operator delete(__p[0]);
    }
  }

  LOBYTE(__p[0]) = 0;
  sub_1000216B4(__p);
  v5 = sub_1002FCC44(a2 + 128, 1) != 0;
  sub_10002249C(__p);
  return v5;
}

void sub_1006DF91C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10002249C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1006DF938(uint64_t a1, unint64_t a2, __n128 *a3)
{
  v6 = qword_100BCE940;
  v7 = os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_DEFAULT);
  if (v7)
  {
    sub_1006E5FB4(a3, v18);
    v8 = SBYTE7(v19);
    v9 = v18[0];
    sub_1000E5A58(a2, __p);
    v10 = v18;
    if (v8 < 0)
    {
      v10 = v9;
    }

    if (v24 >= 0)
    {
      v11 = __p;
    }

    else
    {
      v11 = __p[0];
    }

    *buf = 136315394;
    *&buf[4] = v10;
    *&buf[12] = 2082;
    *&buf[14] = v11;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Setting pincode %s for device %{public}s", buf, 0x16u);
    if (v24 < 0)
    {
      operator delete(__p[0]);
    }

    if (SBYTE7(v19) < 0)
    {
      operator delete(v18[0]);
    }
  }

  if (sub_1006DCB34(v7, a2))
  {
    return 0;
  }

  *buf = 0;
  *&buf[8] = 0;
  sub_100007F88(buf, a1 + 208);
  if (*(a1 + 272) == 1)
  {
    if (sub_1006E5FAC(a3) > 3)
    {
      __p[0] = 0;
      __p[1] = 0;
      sub_100007F88(__p, a1 + 280);
      if (sub_1000E69B8(a1 + 344, a2))
      {
        sub_10000801C(__p);
        v15 = *(a1 + 112);
        if (v15)
        {
          sub_1006D8D44(v15, a2, a3);
          sub_1006D8E0C(v15, a2, a3);
        }

        v22 = 0;
        v20 = 0u;
        v21 = 0u;
        *v18 = 0u;
        v19 = 0u;
        sub_1006E6AE0(v18, a2, 0);
        if (sub_10053E610(a2) && (v16 = sub_1000E2738(), v12 = (*(*v16 + 16))(v16, a2, a3), v12))
        {
          sub_1006E6C48(v18);
        }

        else
        {
          sub_1006E6BA8(v18, a3);
          v12 = 0;
        }

        sub_1006E6AE4(v18);
      }

      else
      {
        v12 = 0;
      }

      sub_1000088CC(__p);
    }

    else
    {
      v22 = 0;
      v20 = 0u;
      v21 = 0u;
      *v18 = 0u;
      v19 = 0u;
      sub_1006E6AE0(v18, a2, 0);
      v13 = qword_100BCE940;
      if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_ERROR))
      {
        v14 = sub_1006E5FAC(a3);
        sub_1008638AC(__p, v14, v13);
      }

      sub_1006E6C48(v18);
      sub_1006E6AE4(v18);
      v12 = 159;
    }
  }

  else
  {
    v12 = 0;
  }

  sub_1000088CC(buf);
  return v12;
}

void sub_1006DFC0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  sub_1000088CC(&a22);
  sub_1000088CC(v22 - 96);
  _Unwind_Resume(a1);
}

uint64_t sub_1006DFC84(uint64_t a1, uint64_t a2, int a3)
{
  v15[1] = 0;
  v16 = a2;
  v15[0] = 0;
  sub_100007F88(v15, a1 + 280);
  if (sub_1000E69B8(a1 + 344, a2))
  {
    __p[0] = &v16;
    v6 = sub_10005E16C(a1 + 504, &v16)[5];
    sub_1006DAFD4(a1, v6);
    sub_100075DC4((a1 + 504), &v16);
    sub_10000801C(v15);
    if (v6)
    {
      v7 = qword_100BCE940;
      v8 = os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_DEFAULT);
      if (a3)
      {
        if (v8)
        {
          sub_1000E5A58(v16, __p);
          if (v14 >= 0)
          {
            v9 = __p;
          }

          else
          {
            v9 = __p[0];
          }

          *buf = 136446210;
          v18 = v9;
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Rejecting SSP request for device %{public}s", buf, 0xCu);
          if (v14 < 0)
          {
            operator delete(__p[0]);
          }
        }

        (*(*v6 + 32))(v6);
      }

      else
      {
        if (v8)
        {
          sub_1000E5A58(v16, __p);
          v11 = v14 >= 0 ? __p : __p[0];
          *buf = 136446210;
          v18 = v11;
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Accepting SSP request for device %{public}s", buf, 0xCu);
          if (v14 < 0)
          {
            operator delete(__p[0]);
          }
        }

        (*(*v6 + 40))(v6);
      }

      (*(*v6 + 8))(v6);
      v10 = 0;
    }

    else
    {
      if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_ERROR))
      {
        sub_1000E5A58(v16, __p);
        sub_10086395C();
      }

      v10 = 1;
    }
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_ERROR))
    {
      sub_1000E5A58(a2, __p);
      sub_100863908();
    }

    v10 = 165;
  }

  sub_1000088CC(v15);
  return v10;
}

void sub_1006DFF48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

BOOL sub_1006DFF78(uint64_t a1, uint64_t a2)
{
  v3 = qword_100BCE940;
  if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000E5A58(a2, __p);
    if (v8 >= 0)
    {
      v4 = __p;
    }

    else
    {
      v4 = __p[0];
    }

    *buf = 136446210;
    v10 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Unblocking pairing for device %{public}s", buf, 0xCu);
    if (v8 < 0)
    {
      operator delete(__p[0]);
    }
  }

  LOBYTE(__p[0]) = 0;
  sub_1000216B4(__p);
  v5 = sub_1002FCC44(a2 + 128, 0) != 0;
  sub_10002249C(__p);
  return v5;
}

void sub_1006E0080(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10002249C(va);
  _Unwind_Resume(a1);
}

void sub_1006E009C(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v5 = sub_100017F4C();
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3321888768;
  v10[2] = sub_1006E0228;
  v10[3] = &unk_100AF6BE0;
  v10[4] = a2;
  if (*(a3 + 23) < 0)
  {
    sub_100008904(&v11, *a3, *(a3 + 1));
  }

  else
  {
    v11 = *a3;
    v12 = *(a3 + 2);
  }

  sub_10000CA94(v5, v10);
  v6 = sub_100007EE8();
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3321888768;
  v7[2] = sub_1006E02A8;
  v7[3] = &unk_100AF6BE0;
  v7[4] = a2;
  if (*(a3 + 23) < 0)
  {
    sub_100008904(__p, *a3, *(a3 + 1));
  }

  else
  {
    *__p = *a3;
    v9 = *(a3 + 2);
  }

  sub_10000CA94(v6, v7);
  if (SHIBYTE(v9) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v12) < 0)
  {
    operator delete(v11);
  }
}

void sub_1006E01F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  if (a30 < 0)
  {
    operator delete(a25);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1006E0228(uint64_t a1)
{
  if (qword_100B508F0 != -1)
  {
    sub_1008632A8();
  }

  v2 = sub_1000504C8(off_100B508E8, *(a1 + 32), 1);
  v5 = 0;
  sub_100016250(&v5);
  *&v4 = v5;
  *(&v4 + 1) = SWORD2(v5);
  return sub_100538494(v2, a1 + 40, &v4);
}

void sub_1006E02A8(uint64_t a1)
{
  if (qword_100B508D0 != -1)
  {
    sub_100863A64();
  }

  v5[0] = 0;
  v5[1] = 0;
  sub_1000498D4(off_100B508C8, *(a1 + 32), 1u, 0, 0, 0, v5);
  if (qword_100B508D0 != -1)
  {
    sub_1008635A0();
  }

  v2 = off_100B508C8;
  if (*(a1 + 63) < 0)
  {
    sub_100008904(__p, *(a1 + 40), *(a1 + 48));
  }

  else
  {
    *__p = *(a1 + 40);
    v4 = *(a1 + 56);
  }

  sub_100783194(v2, v5, __p, 2);
  if (SHIBYTE(v4) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1006E03A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1006E03CC(uint64_t a1, unint64_t a2, __n128 *a3, uint64_t a4, int a5)
{
  v10 = qword_100BCE940;
  if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 141558787;
    *&buf[4] = 1752392040;
    *&buf[12] = 1041;
    *&buf[14] = 16;
    *&buf[18] = 2097;
    *&buf[20] = nullsub_21(a3);
    v46 = 1024;
    v47 = sub_1006D1BC8(a3);
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "PairingManager::leDevicePaired LK:%{private, mask.hash}.16P LKype:%d", buf, 0x22u);
  }

  if (qword_100B508F0 != -1)
  {
    sub_100863610();
  }

  v11 = sub_1000504C8(off_100B508E8, a2, 1);
  v38 = 0;
  v37 = 0;
  if (qword_100B50AA0 != -1)
  {
    sub_10086343C();
  }

  sub_10009BE34(off_100B50A98, &v37);
  if ((sub_1000295DC(v11) & 1) == 0)
  {
    sub_1000DEEA4(v11, buf);
    if (buf[23] >= 0)
    {
      v12 = buf[23];
    }

    else
    {
      v12 = *&buf[8];
    }

    if ((buf[23] & 0x8000000000000000) != 0)
    {
      operator delete(*buf);
      if (v12)
      {
        goto LABEL_16;
      }
    }

    else if (v12)
    {
      goto LABEL_16;
    }

    *v39 = 0;
    sub_100016250(v39);
    *buf = *v39;
    *&buf[8] = *&v39[4];
    sub_100538494(v11, a4, buf);
    buf[0] = 0;
    sub_1000216B4(buf);
    sub_10023D3AC(sub_1006E0AF4, (v11 + 128));
    sub_10002249C(buf);
  }

LABEL_16:
  sub_10054E5F0(v11, 1);
  if (a5)
  {
    v13 = qword_100BCE940;
    if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_INFO))
    {
      sub_1000E5A58(v11, buf);
      v14 = buf[23] >= 0 ? buf : *buf;
      *v39 = 136380931;
      *&v39[4] = v14;
      v40 = 2049;
      v41 = v11;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "le pairing complete device %{private}s(%{private}p) isAppleWatch", v39, 0x16u);
      if ((buf[23] & 0x80000000) != 0)
      {
        operator delete(*buf);
      }
    }

    sub_100550394(v11, 1);
  }

  if (qword_100B512E8 != -1)
  {
    sub_1008632BC();
  }

  sub_1006E7F2C(off_100B512E0, v11, a3, 0);
  v44[0] = 0;
  v44[1] = 0;
  if (qword_100B508D0 != -1)
  {
    sub_1008635A0();
  }

  sub_1000498D4(off_100B508C8, a2, 1u, 0, 0, 0, v44);
  if (qword_100B508D0 != -1)
  {
    sub_1008635A0();
  }

  v15 = off_100B508C8;
  v16 = sub_10004DF60(v44);
  *(sub_10004B1D8(v15, v16) + 161) = 1;

  memset(buf, 0, 24);
  if (qword_100B508D0 != -1)
  {
    sub_1008635A0();
  }

  v17 = off_100B508C8;
  v18 = sub_10004DF60(v44);
  sub_100788FA0(v17, v18, buf);

  v35 = a1;
  v19 = *buf;
  if (*buf != &buf[8])
  {
    do
    {
      v20 = sub_1000BE4B4();
      v21 = v19 + 32;
      v22 = (*(*v20 + 792))(v20, v11, v19 + 32);
      v23 = qword_100BCE940;
      if (v22)
      {
        if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_ERROR))
        {
          if (v19[55] < 0)
          {
            v21 = *v21;
          }

          sub_1000E5A58(v11, v39);
          if (v42 >= 0)
          {
            v24 = v39;
          }

          else
          {
            v24 = *v39;
          }

          *v43 = 136446466;
          *&v43[4] = v21;
          *&v43[12] = 2082;
          *&v43[14] = v24;
          _os_log_error_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "Unable to set tag:%{public}s for valid classicDevice %{public}s after LE device paired", v43, 0x16u);
LABEL_48:
          if (v42 < 0)
          {
            operator delete(*v39);
          }
        }
      }

      else if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_DEFAULT))
      {
        if (v19[55] < 0)
        {
          v21 = *v21;
        }

        sub_1000E5A58(v11, v39);
        if (v42 >= 0)
        {
          v25 = v39;
        }

        else
        {
          v25 = *v39;
        }

        *v43 = 136446466;
        *&v43[4] = v21;
        *&v43[12] = 2082;
        *&v43[14] = v25;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Set tag:%{public}s for valid classicDevice %{public}s after LE device paired", v43, 0x16u);
        goto LABEL_48;
      }

      v26 = *(v19 + 1);
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
          v27 = *(v19 + 2);
          v28 = *v27 == v19;
          v19 = v27;
        }

        while (!v28);
      }

      v19 = v27;
    }

    while (v27 != &buf[8]);
  }

  *v43 = 0;
  *&v43[8] = 0;
  sub_100007F88(v43, v35 + 48);
  v29 = *(v35 + 112);
  if (v29)
  {
    sub_1006D78F0(v29, 0);
  }

  if (qword_100B50F68 != -1)
  {
    sub_100863414();
  }

  sub_100530B30(off_100B50F60);
  sub_1006DCDD0(v35, v11, 0);
  if (_os_feature_enabled_impl())
  {
    v36 = 0;
    v30 = sub_1000BE4B4();
    sub_100007E30(v39, "_PENDING_PRIVACY_SYNC_POPUP_");
    v31 = (*(*v30 + 784))(v30, v11, v39, &v36) == 0;
    v32 = v31 & v36;
    if (v42 < 0)
    {
      operator delete(*v39);
      if (!v32)
      {
        goto LABEL_68;
      }
    }

    else if ((v31 & v36) == 0)
    {
      goto LABEL_68;
    }

    v33 = qword_100BCE940;
    if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_DEFAULT))
    {
      *v39 = 0;
      _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "_CTKD_ device pending for contacts/favorites sync, popping up dialog", v39, 2u);
    }

    sub_1006E0C0C(v35, v11);
  }

LABEL_68:
  sub_1000088CC(v43);
  sub_10004B61C(buf, *&buf[8]);
  return 0;
}

void sub_1006E0AF4(int a1, unsigned __int8 *a2, char *__s)
{
  if (!a1)
  {
    v3 = *a2;
    v4 = a2[1];
    v5 = a2[2];
    v6 = a2[3];
    v7 = a2[4];
    v8 = a2[5];
    v12[0] = 0;
    v12[1] = 0;
    v13 = 0;
    v9 = sub_100007E30(v12, __s);
    if (qword_100B50F88 != -1)
    {
      sub_1008634D4();
    }

    if (SHIBYTE(v13) < 0)
    {
      v9 = sub_100008904(__p, v12[0], v12[1]);
    }

    else
    {
      *__p = *v12;
      v11 = v13;
    }

    sub_1006E009C(v9, (v3 << 40) | (v4 << 32) | (v5 << 24) | (v6 << 16) | (v7 << 8) | v8, __p);
    if (SHIBYTE(v11) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v13) < 0)
    {
      operator delete(v12[0]);
    }
  }
}

void sub_1006E0BD8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1006E0C0C(uint64_t a1, uint64_t a2)
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  if (_os_feature_enabled_impl())
  {
    v4 = sub_100017F4C();
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1006E2AB0;
    v7[3] = &unk_100AE0EB8;
    v7[5] = a1;
    v7[6] = a2;
    v7[4] = &v8;
    sub_10000CA94(v4, v7);
  }

  v5 = *(v9 + 6);
  _Block_object_dispose(&v8, 8);
  return v5;
}

uint64_t sub_1006E0CF4(uint64_t a1, uint64_t a2)
{
  if (qword_100B508F0 != -1)
  {
    sub_1008632A8();
  }

  v4 = sub_1000504C8(off_100B508E8, a2, 1);
  if (v4)
  {
    v5 = v4;
    if (sub_1006E0D68(v4, v4))
    {
      sub_1006E0DBC(a1, v5);
    }
  }

  return 0;
}

uint64_t sub_1006E0D68(uint64_t a1, unsigned __int8 *a2)
{
  if (qword_100B512E8 != -1)
  {
    sub_1000DF9EC();
  }

  v3 = off_100B512E0;

  return sub_1000294FC(v3, a2);
}

uint64_t sub_1006E0DBC(uint64_t a1, unsigned __int8 *a2)
{
  if (qword_100B50950 != -1)
  {
    sub_100863A78();
  }

  v4 = *(off_100B50948 + 431);
  if (sub_1000DFB74(a2, 0x80000u) != 4)
  {
    goto LABEL_12;
  }

  if (qword_100B50950 != -1)
  {
    sub_100863A78();
  }

  if (sub_10033CFC4(off_100B50948, a2))
  {
    v5 = qword_100BCE960;
    if (!os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_19;
    }

    sub_1000E5A58(a2, __p);
    if (v14 >= 0)
    {
      v6 = __p;
    }

    else
    {
      v6 = __p[0];
    }

    *buf = 136446210;
    v16 = v6;
    v7 = "Easy Unpairing device %{public}s - Wait for Easy Unpair to complete before tearing down link";
  }

  else
  {
LABEL_12:
    v5 = qword_100BCE940;
    if (!os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_19;
    }

    sub_1000E5A58(a2, __p);
    if (v14 >= 0)
    {
      v8 = __p;
    }

    else
    {
      v8 = __p[0];
    }

    *buf = 136446210;
    v16 = v8;
    v7 = "Unpairing device %{public}s - defer unpairing";
  }

  _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, v7, buf, 0xCu);
  if (v14 < 0)
  {
    operator delete(__p[0]);
  }

LABEL_19:
  __p[0] = 0;
  __p[1] = 0;
  sub_100007F88(__p, a1 + 536);
  *(a1 + 600) = (a2[128] << 40) | (a2[129] << 32) | (a2[130] << 24) | (a2[131] << 16) | (a2[132] << 8) | a2[133];
  sub_10000801C(__p);
  if (a2[1016] == 1)
  {
    if (qword_100B508F0 != -1)
    {
      sub_100863610();
    }

    sub_10056E954(off_100B508E8);
  }

  v9 = *(a1 + 40);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1006E1060;
  v11[3] = &unk_100AEAF08;
  v11[4] = a1;
  v11[5] = a2;
  v12 = v4;
  sub_10008E008(v9, 500, v11);
  sub_1000088CC(__p);
  return 0;
}

uint64_t sub_1006E1070(uint64_t a1, unsigned __int8 *a2, unsigned int a3)
{
  if (*(a1 + 272))
  {
    v5 = a2[128];
    v6 = a2[129];
    v7 = a2[130];
    v8 = a2[131];
    v9 = a2[132];
    v27 = a2[133];
    v41 = 0uLL;
    v42 = 0;
    sub_1006D1B74(&v41);
    if (qword_100B512E8 != -1)
    {
      sub_1008632BC();
    }

    if (sub_1006E7E2C(off_100B512E0, a2, &v41))
    {
      v10 = qword_100BCE940;
      if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_DEFAULT))
      {
        sub_1000E5A58(a2, &__p);
        if (v35 >= 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = __p;
        }

        *buf = 136446210;
        *&buf[4] = p_p;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Device %{public}s -  already unpaired", buf, 0xCu);
        if (SHIBYTE(v35) < 0)
        {
          operator delete(__p);
        }
      }

      __p = 0;
      v34 = 0;
      sub_100007F88(&__p, a1 + 536);
      *(a1 + 600) = 0;
      sub_1000088CC(&__p);
    }

    else
    {
      sub_1006E171C(a1, a2, 0, a3);
      v14 = qword_100BCE940;
      if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_DEFAULT))
      {
        v15 = &__p;
        sub_1000E5A58(a2, &__p);
        if (v35 < 0)
        {
          v15 = __p;
        }

        if (qword_100B50950 != -1)
        {
          sub_100863A8C();
        }

        v16 = sub_10033D948(off_100B50948, a3);
        *buf = 136446466;
        *&buf[4] = v15;
        *&buf[12] = 2080;
        *&buf[14] = v16;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Unpairing device %{public}s - disconnecting and removing link key with unpair type - %s", buf, 0x16u);
        if (SHIBYTE(v35) < 0)
        {
          operator delete(__p);
        }
      }

      if (qword_100B50AC0 != -1)
      {
        sub_100863AB4();
      }

      sub_1005922D4(off_100B50AB8, a2, 1);
      sub_10054E5F0(a2, 0);
      __p = 0;
      v34 = &__p;
      v35 = 0x4012000000;
      v36 = sub_100042430;
      v37 = nullsub_28;
      v38 = "";
      v39[0] = 0;
      v39[1] = 0;
      if (qword_100B508D0 != -1)
      {
        sub_1008635A0();
      }

      v17 = (v5 << 40) | (v6 << 32) | (v7 << 24) | (v8 << 16) | (v9 << 8);
      sub_1000498D4(v39, off_100B508C8, v17 | v27, 0, 0, 0, 0);
      if (uuid_is_null(v34 + 48))
      {
        goto LABEL_39;
      }

      if (qword_100B508D0 != -1)
      {
        sub_1008635A0();
      }

      v18 = off_100B508C8;
      v19 = sub_10004DF60(v34 + 48);
      sub_100007E30(v30, "_CTKD_");
      v20 = sub_10004EB40(v18, v19, v30);
      if (v31 < 0)
      {
        operator delete(v30[0]);
      }

      if (!v20)
      {
LABEL_39:
        v25 = qword_100BCE940;
        if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_ERROR))
        {
          v26 = sub_1007774DC();
          sub_100863ADC(v26, v32, v25);
        }

        if (qword_100B508C0 != -1)
        {
          sub_1008633C4();
        }

        sub_1007CBD30(off_100B508B8, v17 | v27, 0);
      }

      else
      {
        if (qword_100B508D0 != -1)
        {
          sub_1008635A0();
        }

        v21 = off_100B508C8;
        v22 = sub_10004DF60(v34 + 48);
        v23 = sub_10004B1D8(v21, v22);
        v23[161] = 0;
        if ((v23[160] & 1) == 0)
        {
          v23[162] = 0;
        }

        if (qword_100B508C0 != -1)
        {
          sub_1008633C4();
        }

        sub_1007CBD30(off_100B508B8, v17 | v27, 1);
        v24 = sub_100007EE8();
        v29[0] = _NSConcreteStackBlock;
        v29[1] = 3221225472;
        v29[2] = sub_1006E1984;
        v29[3] = &unk_100B088F8;
        v29[4] = &__p;
        sub_10000CA94(v24, v29);
      }

      sub_10053E608(a2, 0);
      sub_10053CE84(a2, 255);
      sub_10053CCBC(a2, 255);
      if (qword_100B512E8 != -1)
      {
        sub_1008632BC();
      }

      sub_1006E877C(off_100B512E0, a2);
      if (qword_100B512E8 != -1)
      {
        sub_1008632BC();
      }

      if (sub_1006E8254(off_100B512E0, a2, a3))
      {
        sub_10053E608(a2, 1);
        if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_ERROR))
        {
          sub_100863B28();
        }
      }

      *buf = 0;
      *&buf[8] = 0;
      sub_100007F88(buf, a1 + 536);
      *(a1 + 600) = 0;
      sub_10000801C(buf);
      sub_1000088CC(buf);
      _Block_object_dispose(&__p, 8);
    }

    nullsub_21(&v41);
    return 0;
  }

  else
  {
    v12 = qword_100BCE940;
    if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_ERROR))
    {
      sub_100863B5C(a2, v12);
    }

    __p = 0;
    v34 = 0;
    sub_100007F88(&__p, a1 + 536);
    *(a1 + 600) = 0;
    sub_1000088CC(&__p);
    return 111;
  }
}

void sub_1006E167C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{
  _Block_object_dispose(&a24, 8);
  nullsub_21(v36 - 128);
  _Unwind_Resume(a1);
}

uint64_t sub_1006E171C(uint64_t a1, unsigned __int8 *a2, uint64_t a3, unsigned int a4)
{
  v8 = qword_100BCE940;
  if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000E5A58(a2, __p);
    v9 = v24 >= 0 ? __p : __p[0];
    *buf = 136446722;
    *&buf[4] = v9;
    *&buf[12] = 1024;
    *&buf[14] = a4;
    *&buf[18] = 1024;
    *&buf[20] = a3;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Sending 'device unpaired' event for device %{public}s with UnpairInitiatorType %d, result %d", buf, 0x18u);
    if (v24 < 0)
    {
      operator delete(__p[0]);
    }
  }

  __p[0] = 0;
  __p[1] = 0;
  sub_100007F88(__p, a1 + 416);
  memset(buf, 0, sizeof(buf));
  sub_100007F20(buf, (a1 + 480));
  sub_10000801C(__p);
  for (i = *buf; i != *&buf[8]; ++i)
  {
    v10 = (*(**i + 32))(*i, a2, a3);
  }

  v12 = a2[128];
  v13 = a2[129];
  v14 = a2[130];
  v15 = a2[131];
  v16 = a2[132];
  v17 = a2[133];
  v18 = sub_1006E1E98(v10, a4);
  v19 = sub_100017F4C();
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_1006E1F08;
  v21[3] = &unk_100AE15D8;
  v21[4] = (v12 << 40) | (v13 << 32) | (v14 << 24) | (v15 << 16) | (v16 << 8) | v17;
  v22 = v18;
  sub_10000CA94(v19, v21);
  if (*buf)
  {
    *&buf[8] = *buf;
    operator delete(*buf);
  }

  return sub_1000088CC(__p);
}

void sub_1006E1948(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20)
{
  if (__p)
  {
    a20 = __p;
    operator delete(__p);
  }

  sub_1000088CC(&a16);
  _Unwind_Resume(a1);
}

void sub_1006E1984(uint64_t a1)
{
  if (qword_100B50900 != -1)
  {
    sub_100863C14();
  }

  v2 = qword_100B508F8;
  v3 = sub_10004DF60((*(*(a1 + 32) + 8) + 48));
  sub_100707D50(v2, v3);
}

BOOL sub_1006E1A18()
{
  if (qword_100B512E8 != -1)
  {
    sub_1000DF9EC();
  }

  v1 = off_100B512E0;

  return sub_1006E7CFC(v1);
}

uint64_t sub_1006E1A5C(uint64_t result, unsigned __int8 *a2, char a3)
{
  v6 = a2;
  if ((a3 & 1) == 0)
  {
    v4 = result;
    v5[0] = 0;
    v5[1] = 0;
    sub_100007F88(v5, result + 280);
    if (!sub_1000E69B8(v4 + 344, a2))
    {
      sub_1000C2484(v4 + 344, &v6);
    }

    sub_10000801C(v5);
    sub_1006DC0D4(v4, v6, 0);
    return sub_1000088CC(v5);
  }

  return result;
}

void sub_1006E1ADC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1006E1B04(uint64_t a1)
{
  v7[0] = 0;
  v7[1] = 0;
  sub_100007F88(v7, a1 + 416);
  v4 = 0;
  v5 = 0;
  v6 = 0;
  sub_100007F20(&v4, (a1 + 480));
  sub_10000801C(v7);
  v2 = v4;
  if (v4 != v5)
  {
    do
    {
      (*(**v2 + 40))();
      v2 += 8;
    }

    while (v2 != v5);
    v2 = v4;
  }

  if (v2)
  {
    v5 = v2;
    operator delete(v2);
  }

  return sub_1000088CC(v7);
}

void sub_1006E1BB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_1000088CC(&a13);
  _Unwind_Resume(a1);
}

uint64_t sub_1006E1BF0(uint64_t a1, uint64_t a2)
{
  sub_1006E1C48(a1, a2, 1, 0);
  result = *(a1 + 112);
  if (result)
  {

    return sub_1006D79E0(result, a2);
  }

  return result;
}

uint64_t sub_1006E1C48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = qword_100BCE940;
  if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_DEFAULT))
  {
    v9 = a3 ? "incoming device" : "device";
    sub_1000E5A58(a2, &__p);
    v10 = v15 >= 0 ? &__p : __p;
    *buf = 136446466;
    *&buf[4] = v9;
    *&buf[12] = 2080;
    *&buf[14] = v10;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Sending 'pairing started' event for %{public}s %s", buf, 0x16u);
    if (SHIBYTE(v15) < 0)
    {
      operator delete(__p);
    }
  }

  *buf = 0;
  *&buf[8] = 0;
  sub_100007F88(buf, a1 + 416);
  __p = 0;
  v14 = 0;
  v15 = 0;
  sub_100007F20(&__p, (a1 + 480));
  sub_10000801C(buf);
  v11 = __p;
  if (__p != v14)
  {
    do
    {
      (*(**v11 + 16))(*v11, a2, a3, a4);
      ++v11;
    }

    while (v11 != v14);
    v11 = __p;
  }

  if (v11)
  {
    v14 = v11;
    operator delete(v11);
  }

  return sub_1000088CC(buf);
}

void sub_1006E1DFC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_1000088CC(&a13);
  _Unwind_Resume(a1);
}

uint64_t sub_1006E1E3C(uint64_t a1)
{
  if (qword_100B50910 != -1)
  {
    sub_100863C28();
  }

  v2 = off_100B50908;
  v3 = *(a1 + 32);

  return sub_1005BBCD4(v2, 1, v3, 1);
}

uint64_t sub_1006E1E98(uint64_t a1, unsigned int a2)
{
  if (a2 >= 4)
  {
    if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_ERROR))
    {
      sub_100863C3C();
    }

    LOBYTE(v2) = 0;
  }

  else
  {
    return (0xC9CBCAC8 >> (8 * (a2 & 0x1F)));
  }

  return v2;
}

uint64_t sub_1006E1F08(uint64_t a1)
{
  if (qword_100B50910 != -1)
  {
    sub_100863C28();
  }

  v2 = off_100B50908;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);

  return sub_1005BBCD4(v2, 0, v3, v4);
}

void *sub_1006E1F64(void *a1)
{
  *a1 = off_100B08928;
  v2 = a1[2];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

void sub_1006E1FD0(void *a1)
{
  *a1 = off_100B08928;
  v1 = a1[2];
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  operator delete();
}

void sub_1006E205C(uint64_t a1)
{
  if (qword_100B50F88 != -1)
  {
    sub_1008639B0();
  }

  v2 = off_100B50F80;
  v3 = *(a1 + 16);

  sub_1006DD488(v2, v3);
}

void *sub_1006E20B0(void *a1)
{
  *a1 = off_100B08960;
  v2 = a1[2];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

void sub_1006E211C(void *a1)
{
  *a1 = off_100B08960;
  v1 = a1[2];
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  operator delete();
}

void sub_1006E21A8(uint64_t a1)
{
  if (qword_100B50F88 != -1)
  {
    sub_1008639B0();
  }

  v2 = off_100B50F80;
  v3 = *(a1 + 16);

  sub_1006DE0F8(v2, v3);
}

void *sub_1006E21FC(void *a1)
{
  *a1 = off_100B08998;
  v2 = a1[2];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

void sub_1006E2268(void *a1)
{
  *a1 = off_100B08998;
  v1 = a1[2];
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  operator delete();
}

void sub_1006E22F4(uint64_t a1)
{
  if (qword_100B50F88 != -1)
  {
    sub_1008639B0();
  }

  v2 = off_100B50F80;
  v3 = *(a1 + 16);

  sub_1006DE84C(v2, v3);
}

uint64_t sub_1006E2360(uint64_t a1)
{
  if (qword_100B50F88 != -1)
  {
    sub_1008639B0();
  }

  v2 = off_100B50F80;

  return sub_1006DECAC(v2, a1 + 10, a1 + 26, a1 + 42, a1 + 58);
}

void sub_1006E23C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_100017F4C();
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1006E2440;
  v6[3] = &unk_100AE0860;
  v6[4] = a1;
  v6[5] = a3;
  sub_10000CA94(v5, v6);
}

void sub_1006E2440(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = *(v1 + 616);
  v4 = *(v3 - 8);
  *(v1 + 616) = v3 - 8;
  v5 = qword_100BCE940;
  if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000E5A58(v4, __p);
    v6 = v13 >= 0 ? __p : __p[0];
    *buf = 136315394;
    v15 = v6;
    v16 = 1024;
    v17 = v2 == 1;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "privacySyncAlertCB for device %s allow:%d", buf, 0x12u);
    if (v13 < 0)
    {
      operator delete(__p[0]);
      if (v4)
      {
        goto LABEL_7;
      }

LABEL_18:
      if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_ERROR))
      {
        sub_100863CAC();
      }

      goto LABEL_20;
    }
  }

  if (!v4)
  {
    goto LABEL_18;
  }

LABEL_7:
  if (qword_100B508F0 != -1)
  {
    sub_100863610();
  }

  sub_10056CAC0(off_100B508E8, v4, 0, v2 == 1, v2 == 1, v2 == 1, v2 == 1);
  buf[0] = 0;
  v7 = sub_1000BE4B4();
  sub_100007E30(__p, "_PENDING_PRIVACY_SYNC_POPUP_");
  v8 = (*(*v7 + 784))(v7, v4, __p, buf) == 0;
  v9 = v8 & buf[0];
  if (v13 < 0)
  {
    operator delete(__p[0]);
    if (!v9)
    {
      goto LABEL_20;
    }
  }

  else if ((v8 & buf[0]) == 0)
  {
    goto LABEL_20;
  }

  v10 = qword_100BCE940;
  if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(__p[0]) = 0;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "_CTKD_ device pending for contacts/favorites sync, removing tag", __p, 2u);
  }

  v11 = sub_1000BE4B4();
  sub_100007E30(__p, "_PENDING_PRIVACY_SYNC_POPUP_");
  (*(*v11 + 800))(v11, v4, __p);
  if (v13 < 0)
  {
    operator delete(__p[0]);
  }

LABEL_20:
  CFRelease(*(v1 + 632));
  *(v1 + 632) = 0;
}

void sub_1006E26E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1006E270C(uint64_t a1)
{
  if (*(a1 + 632))
  {
    return 0;
  }

  if (!*(*(a1 + 616) - 8))
  {
    if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_ERROR))
    {
      sub_100863D14();
    }

    return 0;
  }

  v3 = sub_100438B14(@"SYNC_CONTACTS_TITLE", @"Allow Contacts and Favorites Sync?");
  v4 = sub_100438B14(@"SYNC_ALLOW_BUTTON", @"Allow");
  v5 = sub_100438B14(@"SYNC_DISALLOW_BUTTON", @"Don’t Allow");
  v6 = sub_100438B14(@"SYNC_CONTACTS_MESSAGE", @"Your car may request your contacts, phone favorites, and recent phone calls over Bluetooth. Do you wish to allow this? CarPlay will work without syncing.");
  v15[0] = kCFUserNotificationAlertTopMostKey;
  v15[1] = SBUserNotificationAllowMenuButtonDismissal;
  v16[0] = &__kCFBooleanTrue;
  v16[1] = &__kCFBooleanTrue;
  v15[2] = SBUserNotificationDismissOnLock;
  v15[3] = kCFUserNotificationAlertHeaderKey;
  v16[2] = &__kCFBooleanTrue;
  v16[3] = v3;
  v7 = [NSDictionary dictionaryWithObjects:v16 forKeys:v15 count:4];
  v8 = [v7 mutableCopy];

  [v8 setObject:v6 forKey:kCFUserNotificationAlertMessageKey];
  [v8 setObject:v5 forKey:kCFUserNotificationDefaultButtonTitleKey];
  [v8 setObject:v4 forKey:kCFUserNotificationAlternateButtonTitleKey];
  v9 = CFUserNotificationCreate(kCFAllocatorDefault, 0.0, 0x10003uLL, 0, v8);
  *(a1 + 632) = v9;
  if (v9)
  {
    v1 = 0;
  }

  else
  {
    v10 = qword_100BCE940;
    if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_ERROR))
    {
      *v14 = 0;
      _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Failed to create Privacy Sync notification", v14, 2u);
      v9 = *(a1 + 632);
    }

    else
    {
      v9 = 0;
    }

    v1 = 1;
  }

  RunLoopSource = CFUserNotificationCreateRunLoopSource(kCFAllocatorDefault, v9, sub_1006E2A5C, 0);
  if (!RunLoopSource)
  {
    if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_ERROR))
    {
      sub_100863CE0();
    }

    CFRelease(*(a1 + 632));
    v1 = 1;
  }

  Main = CFRunLoopGetMain();
  CFRunLoopAddSource(Main, RunLoopSource, kCFRunLoopCommonModes);
  CFRelease(RunLoopSource);

  return v1;
}

void sub_1006E2A5C(uint64_t a1, uint64_t a2)
{
  if (qword_100B50F88 != -1)
  {
    sub_1008639B0();
  }

  v3 = off_100B50F80;

  sub_1006E23C0(v3, a2, a2);
}

uint64_t sub_1006E2AB0(void *a1)
{
  v2 = a1[5];
  sub_1000C2484(v2 + 608, a1 + 6);
  result = sub_1006E270C(v2);
  *(*(a1[4] + 8) + 24) = result;
  return result;
}

uint64_t sub_1006E2B0C(uint64_t a1, uint64_t a2)
{
  if (qword_100B50F88 != -1)
  {
    sub_1008639B0();
  }

  v3 = off_100B50F80;
  v4 = *(a1 + 24);

  return sub_1006DF388(v3, a2, v4);
}

double sub_1006E2B60@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v4 = sub_100007E30(a2, "");
  std::string::assign(v4, "\nPairingManager STATUS :{\n");
  v5 = (a2 + 8);
  if (*(a2 + 23) >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    v6 = *(a2 + 8);
  }

  memset(&v30, 0, sizeof(v30));
  v7 = &v30;
  sub_1003A5170(&v30, v6 + 16);
  if ((v30.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v7 = v30.__r_.__value_.__r.__words[0];
  }

  if (v6)
  {
    if (*(a2 + 23) >= 0)
    {
      v8 = a2;
    }

    else
    {
      v8 = *a2;
    }

    memmove(v7, v8, v6);
  }

  strcpy(v7 + v6, "\tfStackStarted: ");
  if (*(a1 + 272))
  {
    v9 = "YES";
  }

  else
  {
    v9 = "NO";
  }

  v10 = std::string::append(&v30, v9);
  v11 = *&v10->__r_.__value_.__l.__data_;
  v31.__r_.__value_.__r.__words[2] = v10->__r_.__value_.__r.__words[2];
  *&v31.__r_.__value_.__l.__data_ = v11;
  v10->__r_.__value_.__l.__size_ = 0;
  v10->__r_.__value_.__r.__words[2] = 0;
  v10->__r_.__value_.__r.__words[0] = 0;
  v12 = std::string::append(&v31, "\n");
  v13 = v12->__r_.__value_.__r.__words[0];
  *&__p = v12->__r_.__value_.__l.__size_;
  *(&__p + 7) = *(&v12->__r_.__value_.__r.__words[1] + 7);
  v14 = HIBYTE(v12->__r_.__value_.__r.__words[2]);
  v12->__r_.__value_.__l.__size_ = 0;
  v12->__r_.__value_.__r.__words[2] = 0;
  v12->__r_.__value_.__r.__words[0] = 0;
  if (*(a2 + 23) < 0)
  {
    operator delete(*a2);
  }

  *a2 = v13;
  *v5 = __p;
  *(a2 + 15) = *(&__p + 7);
  *(a2 + 23) = v14;
  if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v31.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v30.__r_.__value_.__l.__data_);
  }

  if (*(a2 + 23) >= 0)
  {
    v15 = *(a2 + 23);
  }

  else
  {
    v15 = *(a2 + 8);
  }

  memset(&v30, 0, sizeof(v30));
  v16 = &v30;
  sub_1003A5170(&v30, v15 + 12);
  if ((v30.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v16 = v30.__r_.__value_.__r.__words[0];
  }

  if (v15)
  {
    if (*(a2 + 23) >= 0)
    {
      v17 = a2;
    }

    else
    {
      v17 = *a2;
    }

    memmove(v16, v17, v15);
  }

  strcpy(v16 + v15, "\tfAgent : {\n");
  v18 = *(a1 + 112);
  if (v18)
  {
    sub_1006D967C(v18, &__p);
  }

  else
  {
    sub_100007E30(&__p, "\t\t(null)");
  }

  if ((v33 & 0x80u) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  if ((v33 & 0x80u) == 0)
  {
    v20 = v33;
  }

  else
  {
    v20 = *(&__p + 1);
  }

  v21 = std::string::append(&v30, p_p, v20);
  v22 = *&v21->__r_.__value_.__l.__data_;
  v31.__r_.__value_.__r.__words[2] = v21->__r_.__value_.__r.__words[2];
  *&v31.__r_.__value_.__l.__data_ = v22;
  v21->__r_.__value_.__l.__size_ = 0;
  v21->__r_.__value_.__r.__words[2] = 0;
  v21->__r_.__value_.__r.__words[0] = 0;
  v23 = std::string::append(&v31, "}\n");
  v24 = v23->__r_.__value_.__r.__words[0];
  v34[0] = v23->__r_.__value_.__l.__size_;
  *(v34 + 7) = *(&v23->__r_.__value_.__r.__words[1] + 7);
  v25 = HIBYTE(v23->__r_.__value_.__r.__words[2]);
  v23->__r_.__value_.__l.__size_ = 0;
  v23->__r_.__value_.__r.__words[2] = 0;
  v23->__r_.__value_.__r.__words[0] = 0;
  if (*(a2 + 23) < 0)
  {
    operator delete(*a2);
  }

  *a2 = v24;
  *v5 = v34[0];
  *(a2 + 15) = *(v34 + 7);
  *(a2 + 23) = v25;
  if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v31.__r_.__value_.__l.__data_);
  }

  if (v33 < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v30.__r_.__value_.__l.__data_);
  }

  if (*(a2 + 23) >= 0)
  {
    v26 = *(a2 + 23);
  }

  else
  {
    v26 = *(a2 + 8);
  }

  memset(&v31, 0, sizeof(v31));
  v27 = &v31;
  sub_1003A5170(&v31, v26 + 29);
  if ((v31.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v27 = v31.__r_.__value_.__r.__words[0];
  }

  if (v26)
  {
    if (*(a2 + 23) >= 0)
    {
      v28 = a2;
    }

    else
    {
      v28 = *a2;
    }

    memmove(v27, v28, v26);
  }

  strcpy(v27 + v26, "} END PairingManager STATUS\n\n");
  if (*(a2 + 23) < 0)
  {
    operator delete(*a2);
  }

  result = *&v31.__r_.__value_.__l.__data_;
  *a2 = v31;
  return result;
}

void sub_1006E2F20(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (*(v28 + 23) < 0)
  {
    operator delete(*v28);
  }

  _Unwind_Resume(exception_object);
}

void sub_1006E3698(void *a1@<X0>, std::string *a2@<X8>)
{
  *__str = 0u;
  memset(v25, 0, sizeof(v25));
  v22 = 0uLL;
  v23 = 0;
  v4 = a1[1];
  v5 = *(v4 + 20);
  *&v21.__r_.__value_.__l.__data_ = *(v4 + 4);
  LODWORD(v21.__r_.__value_.__r.__words[2]) = v5;
  sub_10000D03C(&v22, &v21);
  *&v21.__r_.__value_.__l.__data_ = xmmword_1008C4DC0;
  LODWORD(v21.__r_.__value_.__r.__words[2]) = 0;
  if (sub_10004E15C(&v22, &v21))
  {
    v6 = "Primary Service";
LABEL_21:
    v7 = *a1[1];
LABEL_22:
    snprintf(__str, 0x2CuLL, "0x%04X %-20s", v7, v6);
    goto LABEL_23;
  }

  LODWORD(v21.__r_.__value_.__r.__words[2]) = 0;
  *&v21.__r_.__value_.__l.__data_ = xmmword_1008C4DD4;
  if (sub_10004E15C(&v22, &v21))
  {
    v6 = "Secondary Service";
    goto LABEL_21;
  }

  LODWORD(v21.__r_.__value_.__r.__words[2]) = 0;
  *&v21.__r_.__value_.__l.__data_ = xmmword_1008C4DE8;
  if (sub_10004E15C(&v22, &v21))
  {
    v6 = "Included Service";
    goto LABEL_21;
  }

  LODWORD(v21.__r_.__value_.__r.__words[2]) = 0;
  *&v21.__r_.__value_.__l.__data_ = xmmword_1008C4DFC;
  if (sub_10004E15C(&v22, &v21))
  {
    v6 = "Characteristic";
    goto LABEL_21;
  }

  LODWORD(v21.__r_.__value_.__r.__words[2]) = 0;
  *&v21.__r_.__value_.__l.__data_ = xmmword_1008C4E10;
  if (sub_10004E15C(&v22, &v21))
  {
    v6 = "Characteristic Value";
    goto LABEL_21;
  }

  LODWORD(v21.__r_.__value_.__r.__words[2]) = 0;
  *&v21.__r_.__value_.__l.__data_ = xmmword_1008C4E24;
  if (sub_10004E15C(&v22, &v21))
  {
    v6 = "Extended Properties";
    goto LABEL_21;
  }

  LODWORD(v21.__r_.__value_.__r.__words[2]) = 0;
  *&v21.__r_.__value_.__l.__data_ = xmmword_1008C4E38;
  if (sub_10004E15C(&v22, &v21))
  {
    v6 = "User Description";
    goto LABEL_21;
  }

  LODWORD(v21.__r_.__value_.__r.__words[2]) = 0;
  *&v21.__r_.__value_.__l.__data_ = xmmword_1008C4E4C;
  if (sub_10004E15C(&v22, &v21))
  {
    v6 = "Client Configuration";
    goto LABEL_21;
  }

  LODWORD(v21.__r_.__value_.__r.__words[2]) = 0;
  *&v21.__r_.__value_.__l.__data_ = xmmword_1008C4E60;
  if (sub_10004E15C(&v22, &v21))
  {
    v6 = "Server Configuration";
    goto LABEL_21;
  }

  LODWORD(v21.__r_.__value_.__r.__words[2]) = 0;
  *&v21.__r_.__value_.__l.__data_ = xmmword_1008C4E74;
  if (sub_10004E15C(&v22, &v21))
  {
    v6 = "Format";
    goto LABEL_21;
  }

  LODWORD(v21.__r_.__value_.__r.__words[2]) = 0;
  *&v21.__r_.__value_.__l.__data_ = xmmword_1008C4E88;
  v15 = sub_10004E15C(&v22, &v21);
  v7 = *a1[1];
  if (v15)
  {
    v6 = "Aggregate Format";
    goto LABEL_22;
  }

  sub_10003B85C(&v21, &v22);
  if ((v21.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v16 = &v21;
  }

  else
  {
    v16 = v21.__r_.__value_.__r.__words[0];
  }

  snprintf(__str, 0x2CuLL, "0x%04X %-20s", v7, v16);
  if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v21.__r_.__value_.__l.__data_);
  }

LABEL_23:
  sub_100007E30(&v19, __str);
  v8 = std::string::append(&v19, " [ ");
  v9 = *&v8->__r_.__value_.__l.__data_;
  v20.__r_.__value_.__r.__words[2] = v8->__r_.__value_.__r.__words[2];
  *&v20.__r_.__value_.__l.__data_ = v9;
  v8->__r_.__value_.__l.__size_ = 0;
  v8->__r_.__value_.__r.__words[2] = 0;
  v8->__r_.__value_.__r.__words[0] = 0;
  (*(*a1 + 24))(__p, a1);
  if ((v18 & 0x80u) == 0)
  {
    v10 = __p;
  }

  else
  {
    v10 = __p[0];
  }

  if ((v18 & 0x80u) == 0)
  {
    v11 = v18;
  }

  else
  {
    v11 = __p[1];
  }

  v12 = std::string::append(&v20, v10, v11);
  v13 = *&v12->__r_.__value_.__l.__data_;
  v21.__r_.__value_.__r.__words[2] = v12->__r_.__value_.__r.__words[2];
  *&v21.__r_.__value_.__l.__data_ = v13;
  v12->__r_.__value_.__l.__size_ = 0;
  v12->__r_.__value_.__r.__words[2] = 0;
  v12->__r_.__value_.__r.__words[0] = 0;
  v14 = std::string::append(&v21, " ]");
  *a2 = *v14;
  v14->__r_.__value_.__l.__size_ = 0;
  v14->__r_.__value_.__r.__words[2] = 0;
  v14->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v21.__r_.__value_.__l.__data_);
  }

  if (v18 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v20.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v19.__r_.__value_.__l.__data_);
  }
}

void sub_1006E3AB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (a35 < 0)
  {
    operator delete(__p);
  }

  if (a16 < 0)
  {
    operator delete(a11);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  if (a22 < 0)
  {
    operator delete(a17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1006E3B24(_BYTE *a1)
{
  result = (*(*a1 + 32))(a1);
  a1[20] = result;
  return result;
}

BOOL sub_1006E3B6C(uint64_t a1, unsigned __int8 *a2, int a3)
{
  if (a3 == 2)
  {
    v3 = *a2;
    *(a1 + 72) = v3;
    *(a1 + 72) = v3 | (a2[1] << 8);
  }

  return a3 == 2;
}

uint64_t sub_1006E3B94(uint64_t a1)
{
  v24 = 0;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  *__p = 0u;
  v13 = 0u;
  v10 = 0u;
  memset(v11, 0, sizeof(v11));
  v9 = 0u;
  sub_100007AD0(&v9);
  v2 = *(a1 + 8);
  v3 = *(v2 + 20);
  v25 = *(v2 + 4);
  v26 = v3;
  sub_10000D03C(&v27, &v25);
  v25 = xmmword_1008C4E4C;
  v26 = 0;
  v5 = sub_10004E15C(v4, &v25);
  v6 = *(a1 + 72);
  if (v5)
  {
    if (!*(a1 + 72))
    {
      goto LABEL_9;
    }

    if (v6)
    {
      sub_100007774(&v10);
      v6 = *(a1 + 72);
    }

    if ((v6 & 2) != 0)
    {
      goto LABEL_9;
    }
  }

  else if (!*(a1 + 72) || (v6 & 1) != 0)
  {
LABEL_9:
    sub_100007774(&v10);
  }

  std::stringbuf::str();
  *&v10 = v7;
  if (SHIBYTE(v13) < 0)
  {
    operator delete(__p[1]);
  }

  std::locale::~locale(v11);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

uint64_t sub_1006E3E30(uint64_t a1, uint64_t a2, int a3)
{
  result = *(a1 + 72);
  if (result)
  {
    operator delete[]();
  }

  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  if (a3)
  {
    operator new[]();
  }

  return result;
}

uint64_t sub_1006E3EB8(void *a1)
{
  v23 = 0;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  *v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  memset(v10, 0, sizeof(v10));
  v8 = 0u;
  sub_100007AD0(&v8);
  LOBYTE(__p) = 34;
  v2 = sub_100007774(&v9);
  sub_1004860D0(a1, &__p);
  v3 = sub_100007774(v2);
  v24 = 34;
  sub_100007774(v3);
  if (v7 < 0)
  {
    operator delete(__p);
  }

  std::stringbuf::str();
  *&v9 = v4;
  if (SHIBYTE(v12) < 0)
  {
    operator delete(v11[1]);
  }

  std::locale::~locale(v10);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

BOOL sub_1006E4108(uint64_t a1, unsigned __int8 *a2, int a3)
{
  if (a3 == 2)
  {
    v3 = *a2;
    *(a1 + 72) = v3;
    *(a1 + 72) = v3 | (a2[1] << 8);
  }

  return a3 == 2;
}

uint64_t sub_1006E4130(uint64_t a1)
{
  v20 = 0;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  *__p = 0u;
  v9 = 0u;
  v6 = 0u;
  memset(v7, 0, sizeof(v7));
  v5 = 0u;
  sub_100007AD0(&v5);
  v2 = *(a1 + 72);
  if (!v2)
  {
    goto LABEL_5;
  }

  if (v2)
  {
    sub_100007774(&v6);
    v2 = *(a1 + 72);
  }

  if ((v2 & 2) != 0)
  {
LABEL_5:
    sub_100007774(&v6);
  }

  std::stringbuf::str();
  *&v6 = v3;
  if (SHIBYTE(v9) < 0)
  {
    operator delete(__p[1]);
  }

  std::locale::~locale(v7);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

BOOL sub_1006E433C(uint64_t a1, uint64_t a2, int a3)
{
  if (a3 == 7)
  {
    *(a1 + 72) = *a2;
    *(a1 + 73) = *(a2 + 1);
    *(a1 + 74) = *(a2 + 2);
    *(a1 + 76) = *(a2 + 4);
    *(a1 + 78) = *(a2 + 5);
  }

  return a3 == 7;
}

uint64_t sub_1006E4378()
{
  v22 = 0;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  *__p = 0u;
  v11 = 0u;
  v8 = 0u;
  memset(v9, 0, sizeof(v9));
  v7 = 0u;
  sub_100007AD0(&v7);
  v0 = v8;
  *(&v9[-1] + *(v8 - 24) + 8) = *(&v9[-1] + *(v8 - 24) + 8) & 0xFFFFFFB5 | 8;
  *(&v9[-1] + *(v0 - 24) + 8) |= 0x4000u;
  sub_100007774(&v8);
  v1 = std::ostream::operator<<();
  sub_100007774(v1);
  v2 = std::ostream::operator<<();
  sub_100007774(v2);
  v3 = std::ostream::operator<<();
  sub_100007774(v3);
  v4 = std::ostream::operator<<();
  sub_100007774(v4);
  std::ostream::operator<<();
  std::stringbuf::str();
  *&v8 = v5;
  if (SHIBYTE(v11) < 0)
  {
    operator delete(__p[1]);
  }

  std::locale::~locale(v9);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

uint64_t sub_1006E4624(uint64_t a1, uint64_t a2, int a3)
{
  result = *(a1 + 72);
  if (result)
  {
    operator delete[]();
  }

  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  if (a3)
  {
    operator new[]();
  }

  return result;
}

void sub_1006E46CC(uint64_t a1@<X0>, char *a2@<X8>)
{
  sub_10000C704(&v3, *(a1 + 72), *(a1 + 80));
  sub_10000C250(&v3, a2);
  v3 = &off_100AE0A78;
  if (v4)
  {
    sub_10000C808(v4);
  }
}

void sub_1006E473C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, atomic_uint *a10)
{
  if (a10)
  {
    sub_10000C808(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1006E4778(uint64_t a1)
{
  v29 = 0;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  *v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  memset(v16, 0, sizeof(v16));
  v14 = 0u;
  sub_100007AD0(&v14);
  v2 = sub_100007774(&v15);
  v31 = *(a1 + 76);
  v32 = *(a1 + 92);
  sub_10000D03C(&v30, &v31);
  v3 = __p;
  sub_10003B85C(v4, __p);
  if (v13 < 0)
  {
    v3 = __p[0];
  }

  strlen(v3);
  v5 = sub_100007774(v2);
  sub_100007774(v5);
  if (v13 < 0)
  {
    operator delete(__p[0]);
  }

  *(__p + 3) = 0;
  LODWORD(__p[0]) = 0;
  snprintf(__p, 7uLL, "0x%04X", *(a1 + 74));
  v6 = sub_100007774(&v15);
  strlen(__p);
  v7 = sub_100007774(v6);
  sub_100007774(v7);
  sub_100007774(&v15);
  v8 = *(a1 + 72);
  if (v8)
  {
    sub_100007774(&v15);
    v8 = *(a1 + 72);
  }

  if ((v8 & 2) != 0)
  {
    sub_100007774(&v15);
    v8 = *(a1 + 72);
  }

  if ((v8 & 4) != 0)
  {
    sub_100007774(&v15);
    v8 = *(a1 + 72);
  }

  if ((v8 & 8) != 0)
  {
    sub_100007774(&v15);
    v8 = *(a1 + 72);
  }

  if ((v8 & 0x10) != 0)
  {
    sub_100007774(&v15);
    v8 = *(a1 + 72);
  }

  if ((v8 & 0x20) != 0)
  {
    sub_100007774(&v15);
    v8 = *(a1 + 72);
  }

  if ((v8 & 0x40) != 0)
  {
    sub_100007774(&v15);
    v8 = *(a1 + 72);
  }

  if (v8 < 0)
  {
    sub_100007774(&v15);
  }

  sub_100007774(&v15);
  v9 = sub_100007774(&v15);
  sub_100007774(v9);
  std::stringbuf::str();
  *&v15 = v10;
  if (SHIBYTE(v18) < 0)
  {
    operator delete(v17[1]);
  }

  std::locale::~locale(v16);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

uint64_t sub_1006E4BC4(uint64_t a1)
{
  v24 = 0;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  *__p = 0u;
  v13 = 0u;
  v10 = 0u;
  memset(v11, 0, sizeof(v11));
  v9 = 0u;
  sub_100007AD0(&v9);
  v2 = sub_100007774(&v10);
  v28 = *(a1 + 76);
  v29 = *(a1 + 92);
  sub_10000D03C(&v27, &v28);
  v3 = __str;
  sub_10003B85C(v4, __str);
  if (SBYTE7(v26) < 0)
  {
    v3 = *__str;
  }

  strlen(v3);
  v5 = sub_100007774(v2);
  sub_100007774(v5);
  if (SBYTE7(v26) < 0)
  {
    operator delete(*__str);
  }

  *__str = 0u;
  v26 = 0u;
  snprintf(__str, 0x20uLL, "0x%04X - 0x%04X", *(a1 + 72), *(a1 + 74));
  v6 = sub_100007774(&v10);
  strlen(__str);
  sub_100007774(v6);
  std::stringbuf::str();
  *&v10 = v7;
  if (SHIBYTE(v13) < 0)
  {
    operator delete(__p[1]);
  }

  std::locale::~locale(v11);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_1006E4E80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1007FC91C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1006E4EBC(uint64_t a1)
{
  v33 = 0;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  *v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  memset(v20, 0, sizeof(v20));
  v18 = 0u;
  sub_100007AD0(&v18);
  v2 = sub_100007774(&v19);
  __str = *(a1 + 72);
  v36 = *(a1 + 88);
  sub_10000D03C(&v34, &__str);
  v3 = __p;
  sub_10003B85C(v4, __p);
  if (v17 < 0)
  {
    v3 = __p[0];
  }

  strlen(v3);
  v5 = sub_100007774(v2);
  sub_100007774(v5);
  if (v17 < 0)
  {
    operator delete(__p[0]);
  }

  *(__str.n128_u32 + 3) = 0;
  __str.n128_u32[0] = 0;
  snprintf(&__str, 7uLL, "0x%04X", *(a1 + 48));
  v6 = sub_100007774(&v19);
  strlen(&__str);
  v7 = sub_100007774(v6);
  sub_100007774(v7);
  sub_100007774(&v19);
  sub_100007774(&v19);
  if (*(a1 + 16))
  {
    v8 = sub_100007774(&v19);
    v9 = *v8;
    v10 = *v8;
    *(v8 + *(*v8 - 24) + 8) = *(v8 + *(*v8 - 24) + 8) & 0xFFFFFFB5 | 8;
    *(v8 + *(v10 - 24) + 8) |= 0x4000u;
    v11 = (v8 + *(v10 - 24));
    if (v11[1].__fmtflags_ == -1)
    {
      std::ios_base::getloc(v11);
      v12 = std::locale::use_facet(__p, &std::ctype<char>::id);
      v13 = (v12->__vftable[2].~facet_0)(v12, 32);
      std::locale::~locale(__p);
      v11[1].__fmtflags_ = v13;
      v9 = *v8;
    }

    v11[1].__fmtflags_ = 48;
    *(v8 + *(v9 - 24) + 24) = 8;
    std::ostream::operator<<();
  }

  std::stringbuf::str();
  *&v19 = v14;
  if (SHIBYTE(v22) < 0)
  {
    operator delete(v21[1]);
  }

  std::locale::~locale(v20);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void *sub_1006E5404(void *result)
{
  *result = off_100B08C60;
  if (result[9])
  {
    operator delete[]();
  }

  return result;
}

void sub_1006E5460(void *a1)
{
  *a1 = off_100B08C60;
  if (a1[9])
  {
    operator delete[]();
  }

  operator delete();
}

void *sub_1006E56A4(void *result)
{
  *result = off_100B08D08;
  if (result[9])
  {
    operator delete[]();
  }

  return result;
}

void sub_1006E5700(void *a1)
{
  *a1 = off_100B08D08;
  if (a1[9])
  {
    operator delete[]();
  }

  operator delete();
}

void *sub_1006E5804(void *a1)
{
  *a1 = off_100B08D40;
  a1[9] = &off_100AE0A78;
  v2 = a1[10];
  if (v2)
  {
    sub_10000C808(v2);
  }

  return a1;
}

void sub_1006E5870(void *a1)
{
  *a1 = off_100B08D40;
  a1[9] = &off_100AE0A78;
  v1 = a1[10];
  if (v1)
  {
    sub_10000C808(v1);
  }

  operator delete();
}

void sub_1006E596C(void *a1)
{
  sub_1006E5CB8(a1);

  operator delete();
}

void sub_1006E5ABC(void *a1)
{
  sub_1006E5D78(a1);

  operator delete();
}

uint64_t sub_1006E5B60(uint64_t a1, uint64_t a2)
{
  *a1 = off_100B08E00;
  v4 = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 8) = v4;
  *(a1 + 20) = *(a2 + 20);
  *a1 = off_100B08C60;
  *(a1 + 8) = a1 + 24;
  v5 = *(a2 + 24);
  v6 = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 40) = v6;
  *(a1 + 24) = v5;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  sub_1006E3E30(a1, *(a2 + 72), *(a2 + 80));
  *(a1 + 20) = *(a2 + 20);
  return a1;
}

uint64_t sub_1006E5C10(uint64_t a1, uint64_t a2)
{
  *a1 = off_100B08E00;
  v3 = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 8) = v3;
  *(a1 + 20) = *(a2 + 20);
  *a1 = off_100B08D08;
  *(a1 + 8) = a1 + 24;
  v4 = *(a2 + 24);
  v5 = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 40) = v5;
  *(a1 + 24) = v4;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  sub_1006E4624(a1, *(a2 + 72), *(a2 + 80));
  return a1;
}

void *sub_1006E5CB8(void *a1)
{
  *a1 = off_100B08D70;
  v3 = a1[13];
  v2 = a1[14];
  while (v3 != v2)
  {
    if (*v3)
    {
      (*(**v3 + 8))(*v3);
      v2 = a1[14];
    }

    ++v3;
  }

  v4 = a1[12];
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = a1[13];
  if (v5)
  {
    a1[14] = v5;
    operator delete(v5);
  }

  return a1;
}

void *sub_1006E5D78(void *a1)
{
  *a1 = off_100B08DD0;
  v3 = a1[13];
  v2 = a1[14];
  while (v3 != v2)
  {
    if (*v3)
    {
      (*(**v3 + 8))(*v3);
      v2 = a1[14];
    }

    ++v3;
  }

  v5 = a1[17];
  v4 = a1[18];
  while (v5 != v4)
  {
    if (*v5)
    {
      (*(**v5 + 8))(*v5);
      v4 = a1[18];
    }

    ++v5;
  }

  v6 = a1[21];
  if (v6)
  {
    a1[22] = v6;
    operator delete(v6);
  }

  v7 = a1[17];
  if (v7)
  {
    a1[18] = v7;
    operator delete(v7);
  }

  v8 = a1[13];
  if (v8)
  {
    a1[14] = v8;
    operator delete(v8);
  }

  return a1;
}

char *sub_1006E5E70(char *result, char *__s)
{
  result[16] = 0;
  if (__s)
  {
    v3 = result;
    v4 = strlen(__s);
    if (v4 <= 0x10uLL)
    {
      v5 = v4;
    }

    else
    {
      v5 = 16;
    }

    v3[16] = v5;

    return strncpy(v3, __s, v5);
  }

  return result;
}

char *sub_1006E5ED8(char *a1, char *a2)
{
  a1[16] = 0;
  sub_1006E5E70(a1, a2);
  return a1;
}

__n128 sub_1006E5F04(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  return result;
}

uint64_t sub_1006E5F48(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) < *(a2 + 16))
  {
    return 1;
  }

  v3 = bswap64(*a1);
  v4 = bswap64(*a2);
  if (v3 == v4 && (v3 = bswap64(*(a1 + 8)), v4 = bswap64(*(a2 + 8)), v3 == v4))
  {
    v5 = 0;
  }

  else if (v3 < v4)
  {
    v5 = -1;
  }

  else
  {
    v5 = 1;
  }

  return v5 >> 31;
}

unsigned __int8 *sub_1006E5FB4@<X0>(unsigned __int8 *__src@<X0>, _BYTE *a2@<X8>)
{
  v3 = __src[16];
  if (v3 >= 0x17)
  {
    operator new();
  }

  a2[23] = v3;
  if (v3)
  {
    __src = memcpy(a2, __src, v3);
  }

  a2[v3] = 0;
  return __src;
}

uint64_t sub_1006E6044(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 24) = 0;
  *(a1 + 16) = 0;
  *(a1 + 8) = a1 + 16;
  *(a1 + 128) = 0;
  *(a1 + 120) = 0;
  *(a1 + 112) = a1 + 120;
  *(a1 + 136) = 0;
  *(a1 + 32) = dispatch_workloop_create("XPCServer");
  return a1;
}

BOOL sub_1006E60A0(void *a1)
{
  a1[13] = 0;
  v2 = dispatch_workloop_create("com.apple.server.bluetooth.le.att.xpc");
  a1[5] = v2;
  a1[9] = sub_1006E618C(a1, "com.apple.server.bluetooth.le.att.xpc", v2);
  v3 = dispatch_workloop_create("com.apple.server.bluetooth.le.pipe.xpc");
  a1[6] = v3;
  a1[10] = sub_1006E618C(a1, "com.apple.server.bluetooth.le.pipe.xpc", v3);
  v4 = dispatch_workloop_create("com.apple.server.bluetooth.general.xpc");
  a1[7] = v4;
  a1[11] = sub_1006E618C(a1, "com.apple.server.bluetooth.general.xpc", v4);
  v5 = dispatch_workloop_create("com.apple.server.bluetooth.classic.xpc");
  a1[8] = v5;
  v6 = sub_1006E618C(a1, "com.apple.server.bluetooth.classic.xpc", v5);
  a1[12] = v6;
  if (!a1[9] || !a1[10])
  {
    return 0;
  }

  if (a1[11])
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 1;
  }

  return !v7;
}

_xpc_connection_s *sub_1006E618C(uint64_t a1, char *name, dispatch_queue_t targetq)
{
  mach_service = xpc_connection_create_mach_service(name, targetq, 1uLL);
  if (mach_service)
  {
    v6 = qword_100BCE950;
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v10 = name;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Registering XPC service %{public}s", buf, 0xCu);
    }

    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100011ED0;
    v8[3] = &unk_100B08E20;
    v8[4] = a1;
    v8[5] = name;
    xpc_connection_set_event_handler(mach_service, v8);
    xpc_connection_resume(mach_service);
  }

  return mach_service;
}

void sub_1006E62B4(uint64_t a1)
{
  os_unfair_lock_lock(a1);
  v1 = qword_100BCE950;
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "statedump: ------------------ XPC Server ------------------", buf, 2u);
  }

  v2 = *(a1 + 8);
  if (v2 != (a1 + 16))
  {
    do
    {
      v31 = 0;
      v29 = 0u;
      v30 = 0u;
      v27 = 0u;
      v28 = 0u;
      *buf = 0u;
      v26 = 0u;
      if (qword_100B50B88 != -1)
      {
        sub_100863ED8();
      }

      sub_1000ADBF0(qword_100B50B80, *(v2 + 8), buf, 0x64uLL);
      v3 = qword_100BCE950;
      if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
      {
        v4 = *(v2 + 10);
        *v21 = 136315394;
        v22 = buf;
        v23 = 1024;
        v24 = v4;
        _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "statedump: process:%s numOfConnections:%d", v21, 0x12u);
      }

      v5 = v2[1];
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
          v6 = v2[2];
          v7 = *v6 == v2;
          v2 = v6;
        }

        while (!v7);
      }

      v2 = v6;
    }

    while (v6 != (a1 + 16));
  }

  os_unfair_lock_unlock(a1);
  os_unfair_lock_lock((a1 + 136));
  memset(buf, 0, sizeof(buf));
  *&v26 = 0;
  sub_1006E676C(buf, (a1 + 112));
  os_unfair_lock_unlock((a1 + 136));
  if (v26)
  {
    v8 = qword_100BCE950;
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
    {
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "statedump: ", v21, 2u);
    }

    v9 = *buf;
    if (*buf != &buf[8])
    {
      v10 = qword_100BCE950;
      v11 = qword_100BCE950;
      do
      {
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          v12 = v9 + 32;
          if (v9[55] < 0)
          {
            v12 = *v12;
          }

          *v21 = 136315138;
          v22 = v12;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "statedump:     %s", v21, 0xCu);
          v10 = qword_100BCE950;
          v11 = qword_100BCE950;
        }

        v13 = *(v9 + 7);
        v14 = v10;
        if (v13 != v9 + 64)
        {
          do
          {
            if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
            {
              v15 = v13 + 32;
              if (v13[55] < 0)
              {
                v15 = *v15;
              }

              *v21 = 136315138;
              v22 = v15;
              _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "statedump:           %s", v21, 0xCu);
              v10 = qword_100BCE950;
              v11 = qword_100BCE950;
            }

            else
            {
              v11 = v14;
            }

            v16 = *(v13 + 1);
            if (v16)
            {
              do
              {
                v17 = v16;
                v16 = *v16;
              }

              while (v16);
            }

            else
            {
              do
              {
                v17 = *(v13 + 2);
                v7 = *v17 == v13;
                v13 = v17;
              }

              while (!v7);
            }

            v14 = v11;
            v13 = v17;
          }

          while (v17 != v9 + 64);
        }

        v18 = *(v9 + 1);
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
            v19 = *(v9 + 2);
            v7 = *v19 == v9;
            v9 = v19;
          }

          while (!v7);
        }

        v9 = v19;
      }

      while (v19 != &buf[8]);
    }
  }

  sub_10005889C(buf, *&buf[8]);
}

void sub_1006E6664(uint64_t a1)
{
  sub_10004B61C(a1 + 24, *(a1 + 32));
  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

uint64_t sub_1006E6720(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_1006E6664(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

void *sub_1006E676C(void *a1, const void ***a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  sub_1006E67C4(a1, *a2, a2 + 1);
  return a1;
}

uint64_t sub_1006E67C4(uint64_t result, const void **a2, const void ***a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = sub_1006E684C(v5, (v5 + 1), v4 + 4);
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

uint64_t sub_1006E684C(void *a1, uint64_t a2, const void **a3)
{
  v8 = 0;
  v9 = 0;
  v3 = *sub_100086A74(a1, a2, &v9, &v8, a3);
  if (!v3)
  {
    v5 = 0;
    v6 = 0;
    v7 = 0;
    sub_1006E68EC();
  }

  return v3;
}

void *sub_1006E6964(void *__dst, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_100008904(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    __dst[2] = *(a2 + 2);
    *__dst = v4;
  }

  sub_100068968(__dst + 3, a2 + 3);
  return __dst;
}

void sub_1006E69C0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1006E69DC(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 32);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *(a1 + 40) = 0;
  *a1 = off_100B08E70;
  *(a1 + 48) = *(a2 + 48);
  sub_1006E5F04((a1 + 50), (a2 + 50));
  return a1;
}

uint64_t sub_1006E6A50(uint64_t a1, uint64_t a2, char a3)
{
  v9 = 0;
  sub_100016250(&v9);
  v6 = v9;
  v7 = SWORD2(v9);
  *(a1 + 8) = a2;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = 1;
  *(a1 + 40) = 0;
  *a1 = off_100B08E70;
  *(a1 + 48) = a3;
  *(a1 + 49) = 0;
  sub_1000DE474(a1 + 50);
  return a1;
}

void *sub_1006E6AE4(void *a1)
{
  *a1 = off_100B08E70;
  nullsub_21(a1 + 50);
  return a1;
}

void sub_1006E6B28(void *a1)
{
  *a1 = off_100B08E70;
  nullsub_21(a1 + 50);

  operator delete();
}

uint64_t sub_1006E6B8C(uint64_t a1)
{
  *(a1 + 48) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 8) = 0;
  return sub_1006E5F18(a1 + 50);
}

_BYTE *sub_1006E6BA8(_BYTE *result, __n128 *a2)
{
  if ((result[49] & 1) == 0)
  {
    v3 = result;
    sub_1006E5F04((result + 50), a2);
    v3[49] = 1;
    v6 = 0;
    sub_1000216B4(&v6);
    v4 = *(v3 + 1);
    v5 = nullsub_21(a2);
    sub_1006E5FAC(a2);
    sub_1002FFB74(1, v4 + 128, v5);
    return sub_10002249C(&v6);
  }

  return result;
}

_BYTE *sub_1006E6C48(_BYTE *result)
{
  if ((result[49] & 1) == 0)
  {
    v1 = result;
    result[49] = 1;
    v2 = 0;
    sub_1000216B4(&v2);
    sub_1002FFB74(0, *(v1 + 1) + 128, 0);
    return sub_10002249C(&v2);
  }

  return result;
}

uint64_t sub_1006E6CC0(uint64_t a1, uint64_t a2, int a3, char a4, char a5)
{
  v13 = 0;
  sub_100016250(&v13);
  v10 = v13;
  v11 = SWORD2(v13);
  *(a1 + 8) = a2;
  *(a1 + 16) = v10;
  *(a1 + 24) = v11;
  *(a1 + 32) = 2;
  *(a1 + 40) = 0;
  *a1 = off_100B08EB8;
  *(a1 + 48) = a3;
  *(a1 + 52) = a4;
  *(a1 + 53) = a5;
  return a1;
}

__n128 sub_1006E6D5C(__n128 *a1, __n128 *a2)
{
  v2 = a2[2].n128_u32[0];
  a1->n128_u64[1] = a2->n128_u64[1];
  result = a2[1];
  a1[1] = result;
  a1[2].n128_u32[0] = v2;
  a1[2].n128_u64[1] = 0;
  a1->n128_u64[0] = off_100B08EB8;
  a1[3].n128_u32[0] = a2[3].n128_u32[0];
  a1[3].n128_u16[2] = a2[3].n128_u16[2];
  return result;
}

_BYTE *sub_1006E6DD8(uint64_t a1)
{
  v3 = 0;
  sub_1000216B4(&v3);
  sub_1002FE3C8(1, *(a1 + 8) + 128);
  return sub_10002249C(&v3);
}

_BYTE *sub_1006E6E40(uint64_t a1)
{
  v3 = 0;
  sub_1000216B4(&v3);
  sub_1002FE3C8(0, *(a1 + 8) + 128);
  return sub_10002249C(&v3);
}

uint64_t sub_1006E6EA0(uint64_t result)
{
  *(result + 8) = 0;
  *(result + 48) = 0;
  *(result + 52) = 1;
  return result;
}

uint64_t sub_1006E6EB4(uint64_t a1, uint64_t a2, int a3)
{
  v9 = 0;
  sub_100016250(&v9);
  v6 = v9;
  v7 = SWORD2(v9);
  *(a1 + 8) = a2;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = 3;
  *(a1 + 40) = 0;
  *a1 = off_100B08F00;
  *(a1 + 48) = a3;
  return a1;
}

__n128 sub_1006E6F38(__n128 *a1, __n128 *a2)
{
  v2 = a2[2].n128_u32[0];
  a1->n128_u64[1] = a2->n128_u64[1];
  result = a2[1];
  a1[1] = result;
  a1[2].n128_u32[0] = v2;
  a1[2].n128_u64[1] = 0;
  a1->n128_u64[0] = off_100B08F00;
  a1[3].n128_u32[0] = a2[3].n128_u32[0];
  return result;
}

uint64_t sub_1006E6F94(uint64_t result)
{
  *(result + 8) = 0;
  *(result + 48) = 0;
  return result;
}

_BYTE *sub_1006E6FA8(uint64_t a1)
{
  v3 = 0;
  sub_1000216B4(&v3);
  sub_1002FE734(*(a1 + 48) != 0, *(a1 + 8) + 128);
  return sub_10002249C(&v3);
}

_BYTE *sub_1006E7010(uint64_t a1)
{
  v3 = 0;
  sub_1000216B4(&v3);
  sub_1002FE734(0, *(a1 + 8) + 128);
  return sub_10002249C(&v3);
}

uint64_t sub_1006E707C(uint64_t a1)
{
  *a1 = off_100B08F48;
  *(a1 + 8) = off_100B08FA0;
  *(a1 + 16) = &off_100B08FC0;
  sub_100044BBC(a1 + 24);
  *(a1 + 88) = 0;
  sub_1000DE474(a1 + 89);
  *(a1 + 136) = 0;
  *(a1 + 128) = a1 + 136;
  *(a1 + 112) = 0;
  *(a1 + 144) = 0;
  *(a1 + 160) = 0;
  *(a1 + 152) = a1 + 160;
  *(a1 + 168) = 0;
  *(a1 + 184) = 0;
  *(a1 + 176) = a1 + 184;
  *(a1 + 208) = 0;
  *(a1 + 192) = 0;
  *(a1 + 200) = a1 + 208;
  *(a1 + 216) = 0;
  *(a1 + 232) = 0;
  *(a1 + 224) = a1 + 232;
  *(a1 + 240) = 0;
  sub_100044BBC(a1 + 248);
  *(a1 + 312) = 0;
  *(a1 + 320) = 0;
  *(a1 + 328) = 0;
  *(a1 + 334) = 0;
  sub_1006E5F20((a1 + 89), "0000");
  return a1;
}

void sub_1006E71D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, _Unwind_Exception *exception_object, uint64_t a11, uint64_t a12)
{
  v22 = *v15;
  if (*v15)
  {
    *(v12 + 320) = v22;
    operator delete(v22);
  }

  sub_10007A068(v13 + 120);
  sub_1006EC9B0(v18, *v14);
  sub_10000CEDC(v17, *v16);
  sub_1006EC9B0(a11, *v21);
  sub_10000CEDC(a12, *v20);
  sub_10000CEDC(v13, *v19);
  nullsub_21(v12 + 89);
  sub_10007A068(v12 + 24);
  _Unwind_Resume(a1);
}

uint64_t sub_1006E7254(uint64_t a1)
{
  *a1 = off_100B08F48;
  *(a1 + 8) = off_100B08FA0;
  *(a1 + 16) = &off_100B08FC0;
  v2 = *(a1 + 312);
  if (v2)
  {
    *(a1 + 320) = v2;
    operator delete(v2);
  }

  sub_10007A068(a1 + 248);
  sub_1006EC9B0(a1 + 224, *(a1 + 232));
  sub_10000CEDC(a1 + 200, *(a1 + 208));
  sub_1006EC9B0(a1 + 176, *(a1 + 184));
  sub_10000CEDC(a1 + 152, *(a1 + 160));
  sub_10000CEDC(a1 + 128, *(a1 + 136));
  nullsub_21(a1 + 89);
  sub_10007A068(a1 + 24);
  return a1;
}

void sub_1006E733C(uint64_t a1)
{
  sub_1006E7254(a1);

  operator delete();
}

double sub_1006E7374(uint64_t a1)
{
  if (qword_100B50B88 != -1)
  {
    sub_100863F00();
  }

  sub_10051ABE0(qword_100B50B80 + 8, a1 + 8);
  if (qword_100B50AA0 != -1)
  {
    sub_100863F14();
  }

  sub_100312650(off_100B50A98 + 64, a1 + 16);
  if (qword_100B50AB0 != -1)
  {
    sub_100863F28();
  }

  (**off_100B50AA8)(off_100B50AA8);
  result = 0.0;
  *(a1 + 375) = 0u;
  *(a1 + 391) = 0u;
  *(a1 + 343) = 0u;
  *(a1 + 359) = 0u;
  return result;
}

uint64_t sub_1006E7440(uint64_t a1)
{
  if (qword_100B50B88 != -1)
  {
    sub_100863F00();
  }

  sub_10007A3F0(qword_100B50B80 + 8, a1 + 8);
  if (qword_100B50AA0 != -1)
  {
    sub_100863F14();
  }

  sub_10007A3F0(off_100B50A98 + 64, a1 + 16);
  if (qword_100B50AB0 != -1)
  {
    sub_100863F28();
  }

  v2 = *(*off_100B50AA8 + 8);

  return v2();
}

uint64_t sub_1006E7508(uint64_t a1)
{
  v30[0] = 0;
  v30[1] = 0;
  sub_100007F88(v30, a1 + 24);
  if ((*(a1 + 88) & 1) == 0)
  {
    *(a1 + 88) = 1;
    if (qword_100B50AA0 != -1)
    {
      sub_100863F3C();
    }

    sub_10009BE34(off_100B50A98, a1 + 336);
    sub_10000CEDC(a1 + 128, *(a1 + 136));
    *(a1 + 136) = 0;
    *(a1 + 144) = 0;
    *(a1 + 128) = a1 + 136;
    v27 = 0;
    v28 = 0;
    v29 = 0;
    v2 = sub_1000E2738();
    (**v2)(v2, &v27);
    v3 = v27;
    if (v27 != v28)
    {
      do
      {
        v26 = *v3;
        v25 = (v26[8].n128_u8[0] << 40) | (v26[8].n128_u8[1] << 32) | (v26[8].n128_u8[2] << 24) | (v26[8].n128_u8[3] << 16) | (v26[8].n128_u8[4] << 8) | v26[8].n128_u8[5];
        v41 = 0uLL;
        v42 = 0;
        sub_1006D1B74(&v41);
        v4 = sub_1000E2738();
        v5 = (*(*v4 + 48))(v4, a1 + 336, v26, &v41);
        if (v5 || BYTE6(v25) && (BYTE6(v25) != 1 || (v25 & 0xC00000000000) == 0x800000000000))
        {
          v6 = qword_100BCE940;
          if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_ERROR))
          {
            v17 = (v25 & 0xC00000000000) != 0x800000000000 && BYTE6(v25) == 1;
            *buf = 67109376;
            *&buf[4] = v5;
            if (!BYTE6(v25))
            {
              v17 = 1;
            }

            v32 = 1024;
            v33 = v17;
            _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Not link key, result %d, BTAddressIsValid %d", buf, 0xEu);
          }
        }

        else
        {
          v7 = v26;
          *buf = &v25;
          sub_1006ECA74(a1 + 128, &v25)[5] = v7;
          *buf = &v26;
          v8 = sub_1006ECB44(a1 + 176, &v26);
          sub_1006D1B80((v8 + 5), &v41);
          v9 = sub_10042FE9C();
          sub_100416F50(v9, v26);
          *uu = 0;
          v40 = 0;
          if (qword_100B508D0 != -1)
          {
            sub_100863F64();
          }

          sub_1000498D4(off_100B508C8, (v26[8].n128_u8[0] << 40) | (v26[8].n128_u8[1] << 32) | (v26[8].n128_u8[2] << 24) | (v26[8].n128_u8[3] << 16) | (v26[8].n128_u8[4] << 8) | v26[8].n128_u8[5], 1u, 0, 0, 0, uu);
          if (!uuid_is_null(uu))
          {
            if (qword_100B508D0 != -1)
            {
              sub_100863F64();
            }

            v10 = off_100B508C8;
            v11 = sub_10004DF60(uu);
            v12 = sub_10004B1D8(v10, v11);

            if (v12)
            {
              *(v12 + 161) = 1;
            }

            if (qword_100B508D0 != -1)
            {
              sub_100863F64();
            }

            v13 = off_100B508C8;
            v14 = sub_10004DF60(uu);
            sub_100007E30(__p, "IsAppleWatch");
            if (sub_10004EB40(v13, v14, __p))
            {
              v15 = 1;
            }

            else
            {
              if (qword_100B508D0 != -1)
              {
                sub_100863F64();
              }

              v18 = off_100B508C8;
              v19 = sub_10004DF60(uu);
              v15 = sub_100788ED8(v18, v19);
            }

            if (v24 < 0)
            {
              operator delete(__p[0]);
            }

            if (v15)
            {
              v20 = qword_100BCE940;
              if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_INFO))
              {
                sub_1000E5A58(v26, buf);
                v21 = buf;
                if (v34 < 0)
                {
                  v21 = *buf;
                }

                *v35 = 136380931;
                v36 = v21;
                v37 = 2049;
                v38 = v26;
                _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "stackDidStart device %{private}s(%{private}p) isAppleWatch", v35, 0x16u);
                if (v34 < 0)
                {
                  operator delete(*buf);
                }
              }

              sub_100550394(v26, 1);
            }
          }
        }

        nullsub_21(&v41);
        ++v3;
      }

      while (v3 != v28);
    }

    *(a1 + 108) = 1;
    sub_1006E7AA4(a1);
    if (v27)
    {
      v28 = v27;
      operator delete(v27);
    }
  }

  return sub_1000088CC(v30);
}

void sub_1006E7A14(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, uint64_t a23, char a24)
{
  nullsub_21(v24 - 120);
  if (__p)
  {
    operator delete(__p);
  }

  sub_1000088CC(&a24);
  _Unwind_Resume(a1);
}

uint64_t sub_1006E7AA4(uint64_t a1)
{
  v7[0] = 0;
  v7[1] = 0;
  sub_100007F88(v7, a1 + 248);
  v4 = 0;
  v5 = 0;
  v6 = 0;
  sub_100007F20(&v4, (a1 + 312));
  sub_10000801C(v7);
  v2 = v4;
  if (v4 != v5)
  {
    do
    {
      (*(**v2 + 32))();
      v2 += 8;
    }

    while (v2 != v5);
    v2 = v4;
  }

  if (v2)
  {
    v5 = v2;
    operator delete(v2);
  }

  return sub_1000088CC(v7);
}

void sub_1006E7B58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_1000088CC(&a13);
  _Unwind_Resume(a1);
}

uint64_t sub_1006E7B90(uint64_t a1)
{
  v2 = qword_100BCE940;
  if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "SecurityManager::stackWillStop enter", buf, 2u);
  }

  *buf = 0;
  v12 = 0;
  sub_100007F88(buf, a1 + 24);
  v3 = *(a1 + 200);
  *(a1 + 88) = 0;
  v4 = (a1 + 208);
  if (v3 != (a1 + 208))
  {
    do
    {
      if (v3[5])
      {
        operator delete();
      }

      v5 = v3[1];
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
          v6 = v3[2];
          v7 = *v6 == v3;
          v3 = v6;
        }

        while (!v7);
      }

      v3 = v6;
    }

    while (v6 != v4);
  }

  sub_10000CEDC(a1 + 200, *(a1 + 208));
  *(a1 + 208) = 0;
  *(a1 + 216) = 0;
  *(a1 + 200) = v4;
  *(a1 + 343) = 0u;
  *(a1 + 359) = 0u;
  *(a1 + 375) = 0u;
  *(a1 + 391) = 0u;
  v8 = qword_100BCE940;
  if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "SecurityManager::stackWillStop exit", v10, 2u);
  }

  return sub_1000088CC(buf);
}

BOOL sub_1006E7CFC(uint64_t a1)
{
  v4[0] = 0;
  v4[1] = 0;
  sub_100007F88(v4, a1 + 24);
  if (*(a1 + 144))
  {
    v2 = 1;
  }

  else
  {
    v2 = *(a1 + 168) != 0;
  }

  sub_1000088CC(v4);
  return v2;
}

BOOL sub_1006E7D5C(uint64_t a1, uint64_t a2)
{
  v6[0] = 0;
  v6[1] = 0;
  sub_100007F88(v6, a1 + 24);
  v7[0] = 0;
  v7[1] = 0;
  v3 = sub_1000E2738();
  v4 = (*(*v3 + 96))(v3, a2, 0, v7) == 0;
  sub_1000088CC(v6);
  return v4;
}

uint64_t sub_1006E7E2C(uint64_t a1, unsigned __int8 *a2, __n128 *a3)
{
  v12[1] = 0;
  v13[0] = a2;
  v12[0] = 0;
  sub_100007F88(v12, a1 + 24);
  v6 = *(a1 + 136);
  if (v6)
  {
    v7 = (a2[128] << 40) | (a2[129] << 32) | (a2[130] << 24) | (a2[131] << 16) | (a2[132] << 8) | a2[133];
    do
    {
      v8 = v6[4];
      if (v7 >= v8)
      {
        if (v8 >= v7)
        {
          v13[2] = v13;
          v10 = sub_1006ECB44(a1 + 176, v13);
          sub_1006D1B80(a3, (v10 + 5));
          v9 = 0;
          goto LABEL_9;
        }

        ++v6;
      }

      v6 = *v6;
    }

    while (v6);
  }

  v9 = 150;
LABEL_9:
  sub_1000088CC(v12);
  return v9;
}

void sub_1006E7F18(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1006E7F2C(uint64_t a1, unsigned __int8 *a2, __n128 *a3, char a4)
{
  v21 = a2;
  v20[0] = 0;
  v20[1] = 0;
  sub_100007F88(v20, a1 + 24);
  v8 = sub_1000E2738();
  v9 = (*(*v8 + 56))(v8, a1 + 336, a2, a3, 0);
  if (!v9)
  {
    v22 = &v21;
    v10 = sub_1006ECB44(a1 + 176, &v21);
    sub_1006D1B80((v10 + 5), a3);
    v11 = v21;
    v12 = (*(v11 + 128) << 40) | (*(v11 + 129) << 32) | (v21[130] << 24) | (v21[131] << 16) | v21[133] | (v21[132] << 8);
    v19 = v12;
    for (i = *(a1 + 136); i; i = *i)
    {
      v14 = i[4];
      if (v12 >= v14)
      {
        if (v14 >= v12)
        {
          goto LABEL_8;
        }

        ++i;
      }
    }

    v22 = &v19;
    sub_1006ECA74(a1 + 128, &v19)[5] = v11;
LABEL_8:
    sub_10000801C(v20);
    v15 = sub_100017F4C();
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_1006E8100;
    v17[3] = &unk_100AE15D8;
    v17[4] = v21;
    v18 = a4;
    sub_10000CA94(v15, v17);
    v9 = 0;
  }

  sub_1000088CC(v20);
  return v9;
}

void sub_1006E80E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1006E8100(uint64_t a1)
{
  if (qword_100B512E8 != -1)
  {
    sub_100863F8C();
  }

  v2 = off_100B512E0;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);

  return sub_1006E8158(v2, v3, v4);
}

uint64_t sub_1006E8158(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11[0] = 0;
  v11[1] = 0;
  sub_100007F88(v11, a1 + 248);
  v8 = 0;
  v9 = 0;
  v10 = 0;
  sub_100007F20(&v8, (a1 + 312));
  sub_10000801C(v11);
  v6 = v8;
  if (v8 != v9)
  {
    do
    {
      (*(**v6 + 16))(*v6, a2, a3);
      ++v6;
    }

    while (v6 != v9);
    v6 = v8;
  }

  if (v6)
  {
    v9 = v6;
    operator delete(v6);
  }

  return sub_1000088CC(v11);
}

void sub_1006E8224(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_1000088CC(&a13);
  _Unwind_Resume(a1);
}

uint64_t sub_1006E8254(uint64_t a1, unsigned __int8 *a2, int a3)
{
  v16[1] = 0;
  v17 = a2;
  v16[0] = 0;
  sub_100007F88(v16, a1 + 24);
  v6 = sub_1000E2738();
  v7 = (*(*v6 + 64))(v6, a1 + 336, a2);
  if (v7)
  {
    v8 = qword_100BCE940;
    if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_DEFAULT))
    {
      if (a2)
      {
        sub_1000E5A58(a2, __p);
        if (v15 >= 0)
        {
          v9 = __p;
        }

        else
        {
          v9 = __p[0];
        }

        *buf = 136446466;
        v19 = v9;
        v20 = 1024;
        v21 = v7;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Failed to delete linkey for device %{public}s with error %d, but we'll keep unpairing", buf, 0x12u);
        if (v15 < 0)
        {
          operator delete(__p[0]);
        }
      }

      else
      {
        *buf = 136446466;
        v19 = "NULL";
        v20 = 1024;
        v21 = v7;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Failed to delete linkey for device %{public}s with error %d, but we'll keep unpairing", buf, 0x12u);
      }
    }
  }

  v10 = ((a2[128] << 40) | (a2[129] << 32) | (a2[130] << 24) | (a2[131] << 16) | (a2[132] << 8) | a2[133]);
  __p[0] = v10;
  for (i = *(a1 + 136); i; i = *i)
  {
    v12 = i[4];
    if (v10 >= v12)
    {
      if (v12 >= v10)
      {
        sub_100075DC4((a1 + 128), __p);
        break;
      }

      ++i;
    }
  }

  sub_1006ECDB0((a1 + 176), &v17);
  sub_1006E84E0(a1, v17);
  sub_10000801C(v16);
  if (!a3)
  {
    if (qword_100B50AB0 != -1)
    {
      sub_100863FA0();
    }

    sub_100558E48(off_100B50AA8, v17, 1);
  }

  sub_1006E8568(a1, v17);
  sub_1000088CC(v16);
  return 0;
}

void sub_1006E84BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1006E84E0(uint64_t result, unsigned __int8 *a2)
{
  v2 = (a2[128] << 40) | (a2[129] << 32) | (a2[130] << 24) | (a2[131] << 16) | (a2[132] << 8) | a2[133];
  v5 = v2;
  for (i = *(result + 160); i; i = *i)
  {
    v4 = i[4];
    if (v2 >= v4)
    {
      if (v4 >= v2)
      {
        return sub_100075DC4((result + 152), &v5);
      }

      ++i;
    }
  }

  return result;
}

uint64_t sub_1006E8568(uint64_t a1, uint64_t a2)
{
  v9[0] = 0;
  v9[1] = 0;
  sub_100007F88(v9, a1 + 248);
  v6 = 0;
  v7 = 0;
  v8 = 0;
  sub_100007F20(&v6, (a1 + 312));
  sub_10000801C(v9);
  v4 = v6;
  if (v6 != v7)
  {
    do
    {
      (*(**v4 + 24))(*v4, a2);
      ++v4;
    }

    while (v4 != v7);
    v4 = v6;
  }

  if (v4)
  {
    v7 = v4;
    operator delete(v4);
  }

  return sub_1000088CC(v9);
}

void sub_1006E8624(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_1000088CC(&a13);
  _Unwind_Resume(a1);
}

uint64_t sub_1006E8654(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8[0] = 0;
  v8[1] = 0;
  sub_100007F88(v8, a1 + 24);
  v5 = sub_1000E2738();
  v6 = (*(*v5 + 8))(v5, a2, a3);
  sub_1000088CC(v8);
  return v6;
}

uint64_t sub_1006E86E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8[0] = 0;
  v8[1] = 0;
  sub_100007F88(v8, a1 + 24);
  v5 = sub_1000E2738();
  v6 = (*(*v5 + 16))(v5, a2, a3);
  sub_1000088CC(v8);
  return v6;
}

uint64_t sub_1006E877C(uint64_t a1, uint64_t a2)
{
  v6[0] = 0;
  v6[1] = 0;
  sub_100007F88(v6, a1 + 24);
  v3 = sub_1000E2738();
  v4 = (*(*v3 + 24))(v3, a2);
  sub_1000088CC(v6);
  return v4;
}

uint64_t sub_1006E8808(uint64_t a1, int a2)
{
  v4 = sub_10000C798();
  if (!(*(*v4 + 368))(v4))
  {
    return 2;
  }

  result = 0;
  *(a1 + 108) = a2;
  return result;
}

uint64_t sub_1006E8870(void *a1, uint64_t a2)
{
  v19[0] = 0;
  v19[1] = 0;
  sub_100007F88(v19, (a1 + 31));
  v4 = a1[39];
  v5 = a1[40];
  v6 = v4;
  if (v4 != v5)
  {
    while (*v6 != a2)
    {
      if (++v6 == v5)
      {
        goto LABEL_6;
      }
    }
  }

  if (v6 == v5)
  {
LABEL_6:
    v7 = a1[41];
    if (v5 >= v7)
    {
      v9 = v5 - v4;
      if ((v9 + 1) >> 61)
      {
        sub_1000C7698();
      }

      v10 = v7 - v4;
      v11 = v10 >> 2;
      if (v10 >> 2 <= (v9 + 1))
      {
        v11 = v9 + 1;
      }

      if (v10 >= 0x7FFFFFFFFFFFFFF8)
      {
        v12 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v12 = v11;
      }

      if (v12)
      {
        sub_100008108((a1 + 39), v12);
      }

      v13 = (8 * v9);
      *v13 = a2;
      v8 = 8 * v9 + 8;
      v14 = a1[39];
      v15 = a1[40] - v14;
      v16 = v13 - v15;
      memcpy(v13 - v15, v14, v15);
      v17 = a1[39];
      a1[39] = v16;
      a1[40] = v8;
      a1[41] = 0;
      if (v17)
      {
        operator delete(v17);
      }
    }

    else
    {
      *v5 = a2;
      v8 = (v5 + 1);
    }

    a1[40] = v8;
  }

  return sub_1000088CC(v19);
}

uint64_t sub_1006E89A0(uint64_t a1, uint64_t a2)
{
  v9[0] = 0;
  v9[1] = 0;
  sub_100007F88(v9, a1 + 248);
  v5 = *(a1 + 312);
  v4 = *(a1 + 320);
  if (v5 != v4)
  {
    v6 = *(a1 + 312);
    while (*v6 != a2)
    {
      v6 += 8;
      v5 += 8;
      if (v6 == v4)
      {
        v5 = *(a1 + 320);
        break;
      }
    }
  }

  if (v4 != v5)
  {
    v7 = (v4 - (v5 + 8));
    if (v4 != v5 + 8)
    {
      memmove(v5, v5 + 8, v4 - (v5 + 8));
    }

    *(a1 + 320) = &v7[v5];
  }

  return sub_1000088CC(v9);
}

void sub_1006E8A44(uint64_t a1, __int128 *a2, __int128 *a3, __int128 *a4, __int128 *a5)
{
  v19[0] = 0;
  v19[1] = 0;
  sub_100007F88(v19, a1 + 24);
  v10 = (a1 + 343);
  v11 = &xmmword_100BC7038;
  if (a2)
  {
    v12 = a2;
  }

  else
  {
    v12 = &xmmword_100BC7038;
  }

  *v10 = *v12;
  v13 = (a1 + 359);
  if (a3)
  {
    v14 = a3;
  }

  else
  {
    v14 = &xmmword_100BC7038;
  }

  *v13 = *v14;
  v15 = (a1 + 375);
  if (a4)
  {
    v16 = a4;
  }

  else
  {
    v16 = &xmmword_100BC7038;
  }

  *v15 = *v16;
  v17 = (a1 + 391);
  if (a5)
  {
    v11 = a5;
  }

  *v17 = *v11;
  v18 = qword_100BCE940;
  if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 141560835;
    v21 = 1752392040;
    v22 = 1041;
    v23 = 16;
    v24 = 2097;
    v25 = v10;
    v26 = 2160;
    v27 = 1752392040;
    v28 = 1041;
    v29 = 16;
    v30 = 2097;
    v31 = v13;
    v32 = 2160;
    v33 = 1752392040;
    v34 = 1041;
    v35 = 16;
    v36 = 2097;
    v37 = v15;
    v38 = 2160;
    v39 = 1752392040;
    v40 = 1041;
    v41 = 16;
    v42 = 2097;
    v43 = v17;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Received local OOB Data from the controller C192:%{private, mask.hash}.16P R192:%{private, mask.hash}.16P C256:%{private, mask.hash}.16P R256:%{private, mask.hash}.16P", buf, 0x6Au);
  }

  if (qword_100B50F88 != -1)
  {
    sub_100863FC8();
  }

  sub_1006DD2E8(off_100B50F80, v10, v13, v15, v17);
}

uint64_t sub_1006E8C38(uint64_t a1, unsigned __int8 *a2)
{
  v9[0] = 0;
  v9[1] = 0;
  sub_100007F88(v9, a1 + 24);
  v4 = (a2[128] << 40) | (a2[129] << 32) | (a2[130] << 24) | (a2[131] << 16) | (a2[132] << 8) | a2[133];
  v8 = v4;
  for (i = *(a1 + 160); i; i = *i)
  {
    v6 = i[4];
    if (v4 >= v6)
    {
      if (v6 >= v4)
      {
        return sub_1000088CC(v9);
      }

      ++i;
    }
  }

  v9[3] = &v8;
  sub_1006ECA74(a1 + 152, &v8)[5] = a2;
  return sub_1000088CC(v9);
}

void sub_1006E8D00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1006E8D14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[0] = 0;
  v10[1] = 0;
  sub_100007F88(v10, a1 + 24);
  v7 = sub_1000E2738();
  v8 = (*(*v7 + 88))(v7, a2, a3, a4);
  sub_1000088CC(v10);
  return v8;
}

__n128 sub_1006E8DB8(uint64_t a1, uint64_t a2, __n128 *a3, uint64_t a4, uint64_t a5)
{
  result.n128_u64[0] = 0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  if (!a4 || !a5 || *a4 == xmmword_100BC7038)
  {
    goto LABEL_15;
  }

  if (!a2 || *a5 == xmmword_100BC7038)
  {
    if (*a5 != xmmword_100BC7038)
    {
LABEL_14:
      v6 = 2;
      goto LABEL_25;
    }

LABEL_15:
    if (a2)
    {
      v6 = 0;
      if (!a3 || *a2 == xmmword_100BC7038)
      {
LABEL_25:
        *(a1 + 64) = v6;
        if (!a2)
        {
          goto LABEL_31;
        }

        goto LABEL_26;
      }

      if (a3->n128_u64[0] != xmmword_100BC7038 || a3->n128_u64[1] != *(&xmmword_100BC7038 + 1))
      {
        v8 = 1;
        goto LABEL_23;
      }
    }

    v6 = 0;
    goto LABEL_25;
  }

  v6 = 2;
  if (!a3 || *a2 == xmmword_100BC7038)
  {
    goto LABEL_25;
  }

  if (a3->n128_u64[0] == xmmword_100BC7038 && a3->n128_u64[1] == *(&xmmword_100BC7038 + 1))
  {
    goto LABEL_14;
  }

  v8 = 3;
LABEL_23:
  *(a1 + 64) = v8;
LABEL_26:
  if (*a2 != xmmword_100BC7038 || *(a2 + 8) != *(&xmmword_100BC7038 + 1))
  {
    result = *a2;
    *a1 = *a2;
  }

LABEL_31:
  if (a3)
  {
    if (a3->n128_u64[0] != xmmword_100BC7038 || a3->n128_u64[1] != *(&xmmword_100BC7038 + 1))
    {
      result = *a3;
      *(a1 + 16) = *a3;
    }
  }

  if (a4)
  {
    if (*a4 != xmmword_100BC7038 || *(a4 + 8) != *(&xmmword_100BC7038 + 1))
    {
      result = *a4;
      *(a1 + 32) = *a4;
    }
  }

  if (a5)
  {
    if (*a5 != xmmword_100BC7038 || *(a5 + 8) != *(&xmmword_100BC7038 + 1))
    {
      result = *a5;
      *(a1 + 48) = *a5;
    }
  }

  return result;
}

void sub_1006E8F3C(uint64_t a1, __int128 *a2, __int128 *a3)
{
  if (qword_100B512E8 != -1)
  {
    sub_100863F8C();
  }

  v5 = off_100B512E0;

  sub_1006E8A44(v5, a2, a3, 0, 0);
}

void sub_1006E8FA0(uint64_t a1, __int128 *a2, __int128 *a3, __int128 *a4, __int128 *a5)
{
  if (qword_100B512E8 != -1)
  {
    sub_100863F8C();
  }

  v9 = off_100B512E0;

  sub_1006E8A44(v9, a2, a3, a4, a5);
}

uint64_t sub_1006E9014(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v18 = a2;
  v16 = *(a2 + 128);
  v17 = *(a2 + 132);
  v11 = qword_100BCE940;
  if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000BE6F8(&v16, __p);
    v12 = v15 >= 0 ? __p : __p[0];
    *buf = 136449283;
    *&buf[4] = v12;
    v20 = 2160;
    v21 = 1752392040;
    v22 = 1041;
    v23 = 16;
    v24 = 2097;
    v25 = a3;
    v26 = 2160;
    v27 = 1752392040;
    v28 = 1041;
    v29 = 16;
    v30 = 2097;
    v31 = a4;
    v32 = 2160;
    v33 = 1752392040;
    v34 = 1041;
    v35 = 16;
    v36 = 2097;
    v37 = a5;
    v38 = 2160;
    v39 = 1752392040;
    v40 = 1041;
    v41 = 16;
    v42 = 2097;
    v43 = a6;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Setting OOB Data for device %{public}s C192:%{private, mask.hash}.16P R192:%{private, mask.hash}.16P C256:%{private, mask.hash}.16P R256:%{private, mask.hash}.16P", buf, 0x74u);
    if (v15 < 0)
    {
      operator delete(__p[0]);
    }
  }

  *buf = &v18;
  if (!sub_10005E16C(a1 + 200, &v18)[5])
  {
    sub_10000C7D0();
    operator new();
  }

  if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_ERROR))
  {
    sub_100863FF0();
  }

  return 177;
}

uint64_t sub_1006E9450(uint64_t a1, unint64_t a2)
{
  v10 = a2;
  v8 = *(a2 + 128);
  v9 = *(a2 + 132);
  v3 = qword_100BCE940;
  if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000BE6F8(&v8, __p);
    v4 = v7 >= 0 ? __p : __p[0];
    *buf = 136446210;
    v12 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Clearing OOB Data for device %{public}s", buf, 0xCu);
    if (v7 < 0)
    {
      operator delete(__p[0]);
    }
  }

  __p[0] = &v10;
  if (sub_10005E16C(a1 + 200, &v10)[5])
  {
    operator delete();
  }

  sub_100075DC4((a1 + 200), &v10);
  return 0;
}

uint64_t sub_1006E9590(uint64_t a1)
{
  v2 = qword_100BCE940;
  if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Initiating read local OOB data from local controller", buf, 2u);
  }

  if (*(a1 + 88) == 1)
  {
    v3 = *(sub_10000C7D0() + 800);
    v13 = 0;
    sub_1000216B4(&v13);
    if ((v3 - 11) > 0x7C4)
    {
      v11 = sub_1002FCDA0(sub_1006E8F3C, v4, v5, v6, v7, v8, v9, v10);
      if (v11)
      {
        if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_ERROR))
        {
          sub_100864030();
        }

        goto LABEL_12;
      }
    }

    else
    {
      v11 = sub_1002FCE2C(sub_1006E8FA0, v4, v5, v6, v7, v8, v9, v10);
      if (v11)
      {
        if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_ERROR))
        {
          sub_1008640A0();
        }

LABEL_12:
        v11 = 1;
      }
    }

    sub_10002249C(&v13);
    return v11;
  }

  return 111;
}

void sub_1006E96DC(uint64_t a1, unint64_t a2)
{
  v13 = a2;
  v11 = *(a2 + 128);
  v12 = *(a2 + 132);
  v3 = qword_100BCE940;
  if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000BE6F8(&v11, __p);
    v4 = v19 >= 0 ? __p : *__p;
    *buf = 136446210;
    *&buf[4] = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "OOB Data requested for device %{public}s", buf, 0xCu);
    if (SHIBYTE(v19) < 0)
    {
      operator delete(*__p);
    }
  }

  v10[0] = 0;
  v10[1] = 0;
  sub_100007F88(v10, a1 + 248);
  *__p = &v13;
  v5 = sub_10005E16C(a1 + 200, &v13)[5];
  if (v5 && *(v5 + 64))
  {
    v6 = qword_100BCE940;
    if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000BE6F8(&v11, buf);
      if (v15 >= 0)
      {
        v7 = buf;
      }

      else
      {
        v7 = *buf;
      }

      *__p = 136449283;
      *&__p[4] = v7;
      v17 = 2160;
      v18 = 1752392040;
      v19 = 1041;
      v20 = 16;
      v21 = 2097;
      v22 = v5;
      v23 = 2160;
      v24 = 1752392040;
      v25 = 1041;
      v26 = 16;
      v27 = 2097;
      v28 = v5 + 16;
      v29 = 2160;
      v30 = 1752392040;
      v31 = 1041;
      v32 = 16;
      v33 = 2097;
      v34 = v5 + 32;
      v35 = 2160;
      v36 = 1752392040;
      v37 = 1041;
      v38 = 16;
      v39 = 2097;
      v40 = v5 + 48;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "OOB data found for device %{public}s C192:%{private, mask.hash}.16P R192:%{private, mask.hash}.16P C256:%{private, mask.hash}.16P R256:%{private, mask.hash}.16P", __p, 0x74u);
      if (v15 < 0)
      {
        operator delete(*buf);
      }
    }

    sub_1002FEE28(1, v13 + 128, v5, v5 + 16, v5 + 32, v5 + 48);
    sub_1000088CC(v10);
  }

  else
  {
    sub_1000088CC(v10);
    v8 = qword_100BCE940;
    if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000BE6F8(&v11, __p);
      v9 = v19 >= 0 ? __p : *__p;
      *buf = 136446210;
      *&buf[4] = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "No OOB data found for device %{public}s", buf, 0xCu);
      if (SHIBYTE(v19) < 0)
      {
        operator delete(*__p);
      }
    }

    sub_1002FEE28(0, v13 + 128, 0, 0, 0, 0);
  }
}

uint64_t sub_1006E9A10(uint64_t a1, uint64_t a2)
{
  v4 = qword_100BCE940;
  if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "oobDataForDeviceAvailable", buf, 2u);
  }

  if (qword_100B508F0 != -1)
  {
    sub_100864110();
  }

  *buf = *a2;
  *&buf[4] = *(a2 + 4);
  v5 = sub_1000E6554(off_100B508E8, buf, 1);
  if (!v5)
  {
    return 0;
  }

  v6 = qword_100BCE940;
  if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 141558531;
    *&buf[4] = 1752392040;
    *&buf[12] = 1041;
    *&buf[14] = 6;
    v19 = 2097;
    v20 = a2;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "oobDataForDeviceAvailable device %{private, mask.hash}.6P is valid", buf, 0x1Cu);
  }

  *buf = 0;
  *&buf[8] = 0;
  sub_100007F88(buf, a1 + 248);
  v9 = *(a1 + 208);
  v8 = a1 + 208;
  v7 = v9;
  if (!v9)
  {
    goto LABEL_16;
  }

  v10 = v8;
  do
  {
    v11 = *(v7 + 32);
    v12 = v11 >= v5;
    v13 = v11 < v5;
    if (v12)
    {
      v10 = v7;
    }

    v7 = *(v7 + 8 * v13);
  }

  while (v7);
  if (v10 != v8 && v5 >= *(v10 + 32))
  {
    v14 = *(*(v10 + 40) + 64);
  }

  else
  {
LABEL_16:
    v14 = 0;
  }

  v15 = qword_100BCE940;
  if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_DEFAULT))
  {
    v17[0] = 67109120;
    v17[1] = v14;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "oobDataForDeviceAvailable = %d", v17, 8u);
  }

  sub_1000088CC(buf);
  return v14;
}

uint64_t sub_1006E9C24(uint64_t a1)
{
  v2 = qword_100BCE940;
  if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "statedump: ----------------- Security Manager ------------------", buf, 2u);
    v2 = qword_100BCE940;
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    sub_1006E5FB4((a1 + 89), buf);
    if ((v25 & 0x80000000) == 0)
    {
      v3 = buf;
    }

    else
    {
      v3 = *buf;
    }

    *v26 = 136315138;
    v27 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "statedump: Default pincode: %s", v26, 0xCu);
    if (SBYTE3(v25) < 0)
    {
      operator delete(*buf);
    }

    v2 = qword_100BCE940;
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "statedump: Paired devices:", buf, 2u);
  }

  v4 = *(a1 + 128);
  if (v4 != (a1 + 136))
  {
    do
    {
      v5 = qword_100BCE940;
      if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_DEFAULT))
      {
        sub_1000E5A58(v4[5], buf);
        v6 = (v25 & 0x80000000) == 0 ? buf : *buf;
        *v26 = 136446210;
        v27 = v6;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "statedump:    Device %{public}s", v26, 0xCu);
        if (SBYTE3(v25) < 0)
        {
          operator delete(*buf);
        }
      }

      v7 = v4[1];
      if (v7)
      {
        do
        {
          v8 = v7;
          v7 = *v7;
        }

        while (v7);
      }

      else
      {
        do
        {
          v8 = v4[2];
          v9 = *v8 == v4;
          v4 = v8;
        }

        while (!v9);
      }

      v4 = v8;
    }

    while (v8 != (a1 + 136));
  }

  v10 = qword_100BCE940;
  if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "statedump: Generated local OOB data:", buf, 2u);
    v10 = qword_100BCE940;
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 141558531;
    *&buf[4] = 1752392040;
    v22 = 1041;
    v23 = 16;
    v24 = 2097;
    v25 = a1 + 343;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "statedump: \tC192:%{private, mask.hash}.16P", buf, 0x1Cu);
    v10 = qword_100BCE940;
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 141558531;
    *&buf[4] = 1752392040;
    v22 = 1041;
    v23 = 16;
    v24 = 2097;
    v25 = a1 + 359;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "statedump: \tR192:%{private, mask.hash}.16P", buf, 0x1Cu);
    v10 = qword_100BCE940;
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 141558531;
    *&buf[4] = 1752392040;
    v22 = 1041;
    v23 = 16;
    v24 = 2097;
    v25 = a1 + 375;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "statedump:    C256:%{private, mask.hash}.16P", buf, 0x1Cu);
    v10 = qword_100BCE940;
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 141558531;
    *&buf[4] = 1752392040;
    v22 = 1041;
    v23 = 16;
    v24 = 2097;
    v25 = a1 + 391;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "statedump:    R256:%{private, mask.hash}.16P", buf, 0x1Cu);
    v10 = qword_100BCE940;
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "statedump: OOB data for devices:", buf, 2u);
    v10 = qword_100BCE940;
  }

  v11 = *(a1 + 200);
  if (v11 != (a1 + 208))
  {
    do
    {
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        sub_1000E5A58(v11[4], buf);
        v12 = buf;
        if ((v25 & 0x80000000) != 0)
        {
          v12 = *buf;
        }

        *v26 = 136446210;
        v27 = v12;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "statedump:    %{public}s:", v26, 0xCu);
        if (SBYTE3(v25) < 0)
        {
          operator delete(*buf);
        }

        v10 = qword_100BCE940;
      }

      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v13 = v11[5];
        *buf = 141558531;
        *&buf[4] = 1752392040;
        v22 = 1041;
        v23 = 16;
        v24 = 2097;
        v25 = v13;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "statedump:      C192:%{private, mask.hash}.16P", buf, 0x1Cu);
        v10 = qword_100BCE940;
      }

      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v14 = v11[5] + 16;
        *buf = 141558531;
        *&buf[4] = 1752392040;
        v22 = 1041;
        v23 = 16;
        v24 = 2097;
        v25 = v14;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "statedump:      R192:%{private, mask.hash}.16P", buf, 0x1Cu);
        v10 = qword_100BCE940;
      }

      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v15 = v11[5] + 32;
        *buf = 141558531;
        *&buf[4] = 1752392040;
        v22 = 1041;
        v23 = 16;
        v24 = 2097;
        v25 = v15;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "statedump:      C256:%{private, mask.hash}.16P", buf, 0x1Cu);
        v10 = qword_100BCE940;
      }

      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v16 = v11[5] + 48;
        *buf = 141558531;
        *&buf[4] = 1752392040;
        v22 = 1041;
        v23 = 16;
        v24 = 2097;
        v25 = v16;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "statedump:      R256:%{private, mask.hash}.16P", buf, 0x1Cu);
        v10 = qword_100BCE940;
      }

      v17 = v11[1];
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
          v18 = v11[2];
          v9 = *v18 == v11;
          v11 = v18;
        }

        while (!v9);
      }

      v11 = v18;
    }

    while (v18 != (a1 + 208));
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "statedump: Security keys:", buf, 2u);
  }

  v19 = sub_1000E2738();
  return (*(*v19 + 184))(v19);
}

uint64_t sub_1006EA328(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5)
{
  v22[0] = 0;
  v22[1] = 0;
  sub_100007F88(v22, a1 + 24);
  if (!*(a1 + 112))
  {
    *(a1 + 120) = a2;
    error = 0;
    if (*(a4 + 23) >= 0)
    {
      v10 = a4;
    }

    else
    {
      v10 = *a4;
    }

    v11 = CFStringCreateWithCString(kCFAllocatorDefault, v10, 0x600u);
    if (*(a5 + 23) >= 0)
    {
      v12 = a5;
    }

    else
    {
      v12 = *a5;
    }

    v13 = CFStringCreateWithCString(kCFAllocatorDefault, v12, 0x600u);
    v14 = CFStringCreateWithCString(kCFAllocatorDefault, "Allow", 0x600u);
    v15 = CFStringCreateWithCString(kCFAllocatorDefault, "Don't Allow", 0x600u);
    keys[0] = kCFUserNotificationAlertHeaderKey;
    keys[1] = kCFUserNotificationAlertMessageKey;
    keys[2] = kCFUserNotificationAlternateButtonTitleKey;
    keys[3] = kCFUserNotificationDefaultButtonTitleKey;
    values[0] = v11;
    values[1] = v13;
    values[2] = v14;
    values[3] = v15;
    v16 = CFDictionaryCreate(kCFAllocatorDefault, keys, values, 4, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    v17 = CFUserNotificationCreate(kCFAllocatorDefault, a3, 3uLL, &error, v16);
    *(a1 + 112) = v17;
    RunLoopSource = CFUserNotificationCreateRunLoopSource(kCFAllocatorDefault, v17, sub_1006EA56C, 0);
    if (RunLoopSource)
    {
      Main = CFRunLoopGetMain();
      CFRunLoopAddSource(Main, RunLoopSource, kCFRunLoopCommonModes);
      CFRelease(RunLoopSource);
    }

    else
    {
      CFUserNotificationCancel(v17);
      CFRelease(v17);
    }

    CFRelease(v16);
    CFRelease(v11);
    CFRelease(v13);
  }

  return sub_1000088CC(v22);
}