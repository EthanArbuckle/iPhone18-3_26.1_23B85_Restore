void sub_100789384(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1000088CC(&a9);

  _Unwind_Resume(a1);
}

uint64_t sub_1007893AC(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v7)
  {
    if (v8 && [v8 length] < 0x401)
    {
      if ([v9 length] <= 0x400)
      {
        v11 = sub_10004B1D8(a1, v7);
        if (v11)
        {
          v13[0] = 0;
          v13[1] = 0;
          sub_100007F88(v13, (a1 + 12));
          if (sub_10077C454(v11, v8, v9))
          {
            sub_10000801C(v13);
            sub_10004DFB4(v14, v7);
            sub_1000C7A50(a1, v14);
          }

          sub_1000088CC(v13);
          v10 = 0;
        }

        else
        {
          if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_ERROR))
          {
            sub_100873884();
          }

          v10 = 2;
        }
      }

      else
      {
        v10 = 11;
      }
    }

    else
    {
      if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_ERROR))
      {
        sub_100873848();
      }

      v10 = 10;
    }
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_ERROR))
    {
      sub_10085A73C();
    }

    v10 = 1;
  }

  return v10;
}

void sub_100789558(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1000088CC(va);

  _Unwind_Resume(a1);
}

void sub_100789594(void *a1, void *a2, const std::string *a3)
{
  v5 = a2;
  v7[0] = 0;
  v7[1] = 0;
  sub_100007F88(v7, (a1 + 12));
  v6 = sub_10004B1D8(a1, v5);
  if (v6)
  {
    std::string::operator=((v6 + 208), a3);
    sub_10004DFB4(v8, v5);
    sub_1000C7A50(a1, v8);
  }

  sub_1000088CC(v7);
}

BOOL sub_100789678(uint64_t a1, void *a2)
{
  v3 = a2;
  v8[0] = 0;
  v8[1] = 0;
  sub_100007F88(v8, a1 + 96);
  v4 = sub_10004B1D8(a1, v3);
  if (v4)
  {
    v5 = *(v4 + 231);
    if (v5 < 0)
    {
      v5 = *(v4 + 216);
    }

    v6 = v5 != 0;
  }

  else
  {
    v6 = 0;
  }

  sub_1000088CC(v8);

  return v6;
}

void sub_1007896F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1000088CC(&a9);

  _Unwind_Resume(a1);
}

id sub_100789714(uint64_t a1, const void **a2)
{
  v26[0] = 0;
  v26[1] = 0;
  sub_100007F88(v26, a1 + 96);
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v5 = *(a1 + 176);
  v6 = [v5 countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (!v6)
  {
    goto LABEL_31;
  }

  v7 = *v23;
  do
  {
    v8 = 0;
    do
    {
      if (*v23 != v7)
      {
        objc_enumerationMutation(v5);
      }

      v9 = *(*(&v22 + 1) + 8 * v8);
      v10 = [*(a1 + 176) objectForKey:{v9, __p[0]}];
      __p[0] = 0;
      __p[1] = 0;
      v21 = 0;
      if (v10[231] < 0)
      {
        sub_100008904(__p, *(v10 + 26), *(v10 + 27));
      }

      else
      {
        *__p = *(v10 + 13);
        v21 = *(v10 + 28);
      }

      v11 = HIBYTE(v21);
      if (v21 >= 0)
      {
        v12 = HIBYTE(v21);
      }

      else
      {
        v12 = __p[1];
      }

      if (!v12)
      {
        goto LABEL_23;
      }

      v13 = *(a2 + 23);
      v14 = v13;
      if (v13 < 0)
      {
        v13 = a2[1];
      }

      if (v13 != v12 || (v14 >= 0 ? (v15 = a2) : (v15 = *a2), v21 >= 0 ? (v16 = __p) : (v16 = __p[0]), memcmp(v15, v16, v12)))
      {
LABEL_23:
        v17 = 1;
        if ((v11 & 0x80) == 0)
        {
          goto LABEL_25;
        }

LABEL_24:
        operator delete(__p[0]);
        goto LABEL_25;
      }

      v2 = v9;
      v17 = 0;
      if (v21 < 0)
      {
        goto LABEL_24;
      }

LABEL_25:
      if (!v17)
      {
        goto LABEL_32;
      }

      v8 = v8 + 1;
    }

    while (v6 != v8);
    v18 = [v5 countByEnumeratingWithState:&v22 objects:v27 count:16];
    v6 = v18;
  }

  while (v18);
LABEL_31:
  v2 = 0;
LABEL_32:

  sub_1000088CC(v26);

  return v2;
}

void sub_100789908(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);

  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100789938(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = 0;
  v7[1] = 0;
  sub_100007F88(v7, a1 + 96);
  v4 = sub_10004B1D8(a1, v3);
  if (v4)
  {
    v5 = *(v4 + 256);
  }

  else
  {
    v5 = 0;
  }

  sub_1000088CC(v7);

  return v5;
}

void sub_1007899A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1000088CC(&a9);

  _Unwind_Resume(a1);
}

void sub_1007899C4(uint64_t a1, void *a2, __int16 a3)
{
  v5 = a2;
  v7[0] = 0;
  v7[1] = 0;
  sub_100007F88(v7, a1 + 96);
  v6 = sub_10004B1D8(a1, v5);
  if (v6)
  {
    *(v6 + 256) = a3;
  }

  sub_1000088CC(v7);
}

void sub_100789A30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1000088CC(&a9);

  _Unwind_Resume(a1);
}

void sub_100789A50(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    sub_100785D40(a1, 1);
  }
}

uint64_t sub_100789A60(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = 0;
  v7[1] = 0;
  sub_100007F88(v7, a1 + 96);
  v4 = sub_10004B1D8(a1, v3);
  if (v4)
  {
    v5 = *(v4 + 258);
  }

  else
  {
    v5 = 0;
  }

  sub_1000088CC(v7);

  return v5;
}

void sub_100789ACC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1000088CC(&a9);

  _Unwind_Resume(a1);
}

void sub_100789AEC(uint64_t a1, void *a2, int a3)
{
  v5 = a2;
  v7[0] = 0;
  v7[1] = 0;
  sub_100007F88(v7, a1 + 96);
  if ((a3 - 1) >= 7 && os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_FAULT))
  {
    sub_1008738C0();
  }

  v6 = sub_10004B1D8(a1, v5);
  if (v6)
  {
    *(v6 + 258) = a3;
  }

  sub_1000088CC(v7);
}

void sub_100789B90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1000088CC(&a9);

  _Unwind_Resume(a1);
}

uint64_t sub_100789BB0(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = 0;
  v7[1] = 0;
  sub_100007F88(v7, a1 + 96);
  v4 = sub_10004B1D8(a1, v3);
  if (v4)
  {
    v5 = *(v4 + 259);
  }

  else
  {
    v5 = 0;
  }

  sub_1000088CC(v7);

  return v5;
}

void sub_100789C1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1000088CC(&a9);

  _Unwind_Resume(a1);
}

void sub_100789C3C(uint64_t a1, void *a2, unsigned int a3)
{
  v5 = a2;
  v7[0] = 0;
  v7[1] = 0;
  sub_100007F88(v7, a1 + 96);
  if (a3 >= 4 && os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_FAULT))
  {
    sub_100873930();
  }

  v6 = sub_10004B1D8(a1, v5);
  if (v6)
  {
    *(v6 + 259) = a3;
  }

  sub_1000088CC(v7);
}

void sub_100789CDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1000088CC(&a9);

  _Unwind_Resume(a1);
}

uint64_t sub_100789CFC(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = 0;
  v7[1] = 0;
  sub_100007F88(v7, a1 + 96);
  v4 = sub_10004B1D8(a1, v3);
  if (v4)
  {
    v5 = *(v4 + 264);
  }

  else
  {
    v5 = 0;
  }

  sub_1000088CC(v7);

  return v5 & 1;
}

void sub_100789D68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1000088CC(&a9);

  _Unwind_Resume(a1);
}

void sub_100789D88(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v14[0] = 0;
  v14[1] = 0;
  sub_100007F88(v14, a1 + 96);
  v6 = qword_100BCE900;
  if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_DEBUG))
  {
    sub_1008739A0(a3, v6, v7, v8, v9, v10, v11, v12);
  }

  v13 = sub_10004B1D8(a1, v5);
  if (v13)
  {
    *(v13 + 264) = a3;
  }

  sub_1000088CC(v14);
}

void sub_100789E20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1000088CC(&a9);

  _Unwind_Resume(a1);
}

uint64_t sub_100789E40(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = 0;
  v7[1] = 0;
  sub_100007F88(v7, a1 + 96);
  v4 = sub_10004B1D8(a1, v3);
  if (v4)
  {
    v5 = *(v4 + 265);
  }

  else
  {
    v5 = 0;
  }

  sub_1000088CC(v7);

  return v5 & 1;
}

void sub_100789EAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1000088CC(&a9);

  _Unwind_Resume(a1);
}

void sub_100789ECC(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v16[0] = 0;
  v16[1] = 0;
  sub_100007F88(v16, a1 + 96);
  v6 = qword_100BCE900;
  if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_DEBUG))
  {
    sub_100873A10(a3, v6, v7, v8, v9, v10, v11, v12);
  }

  v13 = sub_10004B1D8(a1, v5);
  if (v13)
  {
    *(v13 + 265) = a3;
    if (*(v13 + 164) == 1 && a3 != 0)
    {
      if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_DEBUG))
      {
        sub_100873A80();
      }

      if (qword_100B508B0 != -1)
      {
        sub_100873014();
      }

      v15 = off_100B508A8;
      sub_10004DFB4(v17, v5);
      sub_10076684C(v15, v17);
    }
  }

  sub_1000088CC(v16);
}

void sub_100789FF8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1000088CC(va);

  _Unwind_Resume(a1);
}

uint64_t sub_10078A024(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = 0;
  v7[1] = 0;
  sub_100007F88(v7, a1 + 96);
  v4 = sub_10004B1D8(a1, v3);
  if (v4)
  {
    v5 = *(v4 + 266);
  }

  else
  {
    v5 = 0;
  }

  sub_1000088CC(v7);

  return v5 & 1;
}

void sub_10078A090(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1000088CC(&a9);

  _Unwind_Resume(a1);
}

void sub_10078A0B0(uint64_t a1, void *a2, char a3)
{
  v5 = a2;
  v7[0] = 0;
  v7[1] = 0;
  sub_100007F88(v7, a1 + 96);
  v6 = sub_10004B1D8(a1, v5);
  if (v6)
  {
    *(v6 + 266) = a3;
  }

  sub_1000088CC(v7);
}

void sub_10078A11C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1000088CC(&a9);

  _Unwind_Resume(a1);
}

uint64_t sub_10078A13C(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = 0;
  v7[1] = 0;
  sub_100007F88(v7, a1 + 96);
  v4 = sub_10004B1D8(a1, v3);
  if (v4)
  {
    v5 = *(v4 + 385);
  }

  else
  {
    v5 = 0;
  }

  sub_1000088CC(v7);

  return v5;
}

void sub_10078A1A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1000088CC(&a9);

  _Unwind_Resume(a1);
}

void sub_10078A1C8(uint64_t a1, void *a2, char a3)
{
  v5 = a2;
  v7[0] = 0;
  v7[1] = 0;
  sub_100007F88(v7, a1 + 96);
  v6 = sub_10004B1D8(a1, v5);
  if (v6)
  {
    *(v6 + 385) = a3;
  }

  sub_1000088CC(v7);
}

void sub_10078A234(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1000088CC(&a9);

  _Unwind_Resume(a1);
}

void sub_10078A254(uint64_t a1, void *a2, char a3)
{
  v5 = a2;
  v7[0] = 0;
  v7[1] = 0;
  sub_100007F88(v7, a1 + 96);
  v6 = sub_10004B1D8(a1, v5);
  if (v6)
  {
    *(v6 + 384) = a3;
  }

  sub_1000088CC(v7);
}

void sub_10078A2C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1000088CC(&a9);

  _Unwind_Resume(a1);
}

uint64_t sub_10078A2E0(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = 0;
  v7[1] = 0;
  sub_100007F88(v7, a1 + 96);
  v4 = sub_10004B1D8(a1, v3);
  if (v4)
  {
    v5 = *(v4 + 394);
  }

  else
  {
    v5 = 0;
  }

  sub_1000088CC(v7);

  return v5;
}

void sub_10078A34C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1000088CC(&a9);

  _Unwind_Resume(a1);
}

void sub_10078A36C(uint64_t a1, void *a2, __int16 a3)
{
  v5 = a2;
  v7[0] = 0;
  v7[1] = 0;
  sub_100007F88(v7, a1 + 96);
  v6 = sub_10004B1D8(a1, v5);
  if (v6)
  {
    *(v6 + 394) = a3;
  }

  sub_1000088CC(v7);
}

void sub_10078A3D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1000088CC(&a9);

  _Unwind_Resume(a1);
}

uint64_t sub_10078A3F8(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = 0;
  v7[1] = 0;
  sub_100007F88(v7, a1 + 96);
  v4 = sub_10004B1D8(a1, v3);
  if (v4)
  {
    v5 = *(v4 + 396);
  }

  else
  {
    v5 = 0;
  }

  sub_1000088CC(v7);

  return v5 & 1;
}

void sub_10078A464(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1000088CC(&a9);

  _Unwind_Resume(a1);
}

void sub_10078A484(uint64_t a1, void *a2, char a3)
{
  v5 = a2;
  v7[0] = 0;
  v7[1] = 0;
  sub_100007F88(v7, a1 + 96);
  v6 = sub_10004B1D8(a1, v5);
  if (v6)
  {
    *(v6 + 396) = a3;
  }

  sub_1000088CC(v7);
}

void sub_10078A4F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1000088CC(&a9);

  _Unwind_Resume(a1);
}

void sub_10078A510(uint64_t a1, void *a2, char a3)
{
  v23[0] = 0;
  v23[1] = 0;
  v16 = a2;
  sub_100007F88(v23, a1 + 96);
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v4 = v16;
  v5 = [v4 countByEnumeratingWithState:&v19 objects:v28 count:16];
  if (v5)
  {
    v17 = *v20;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v20 != v17)
        {
          objc_enumerationMutation(v4);
        }

        v7 = *(*(&v19 + 1) + 8 * i);
        v8 = objc_autoreleasePoolPush();
        v9 = [v4 objectForKeyedSubscript:v7];
        v10 = [v9 unsignedLongLongValue];

        v11 = qword_100BCE900;
        if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_INFO))
        {
          v12 = sub_100063D0C();
          *buf = 138543618;
          v25 = v7;
          v26 = 2114;
          v27 = v12;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Attempting to load paired device %{public}@ (%{public}@) from the device cache", buf, 0x16u);
        }

        v13 = sub_10041FE60(*(a1 + 256), v7, v10, a3);
        if (v13)
        {
          sub_100099554(a1, v13);
        }

        v14 = qword_100BCE900;
        if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_DEFAULT))
        {
          v15 = sub_100063D0C();
          *buf = 138543362;
          v25 = v15;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "could not find (%{public}@) in the paired devices database", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v8);
      }

      v5 = [v4 countByEnumeratingWithState:&v19 objects:v28 count:16];
    }

    while (v5);
  }

  sub_1000088CC(v23);
}

void sub_10078A7DC(_Unwind_Exception *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);

  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

BOOL sub_10078A840(uint64_t a1, const unsigned __int8 *a2, uint64_t a3)
{
  v4 = *(a1 + 256);
  v5 = sub_10004DF60(a2);
  v6 = sub_1004200D8(v4, v5, a3) != 0;

  return v6;
}

void sub_10078A8AC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v9[0] = 0;
  v9[1] = 0;
  sub_100007F88(v9, a1 + 96);
  v7 = sub_10004B1D8(a1, v5);
  v8 = *(v7 + 8);
  *(v7 + 8) = v6;

  sub_1000088CC(v9);
}

void sub_10078A924(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1000088CC(&a9);

  _Unwind_Resume(a1);
}

id sub_10078A948(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = 0;
  v6[1] = 0;
  sub_100007F88(v6, a1 + 96);
  v4 = *(sub_10004B1D8(a1, v3) + 8);
  sub_1000088CC(v6);

  return v4;
}

void sub_10078A9C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1000088CC(&a9);

  _Unwind_Resume(a1);
}

void sub_10078A9E0(uint64_t a1@<X0>, void *a2@<X1>, unsigned __int8 *a3@<X8>)
{
  v5 = a2;
  v18[0] = 0;
  v18[1] = 0;
  sub_100007F88(v18, a1 + 96);
  v23[0] = 0;
  v23[1] = 0;
  sub_10004DFB4(v23, v5);
  v6 = sub_10078AD6C(v23);
  if (!v6)
  {
    if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_ERROR))
    {
      sub_100873D3C();
    }

    goto LABEL_27;
  }

  v7 = *(a1 + 192);
  if (v7)
  {
    v8 = a1 + 192;
    do
    {
      v9 = *(v7 + 32);
      v10 = v9 >= v6;
      v11 = v9 < v6;
      if (v10)
      {
        v8 = v7;
      }

      v7 = *(v7 + 8 * v11);
    }

    while (v7);
    if (v8 != a1 + 192 && v6 >= *(v8 + 32))
    {
      v15 = sub_10004DF60((v8 + 40));
      v16 = [v5 isEqual:v15];

      if (v16)
      {
        sub_10004ADAC(a1, (v8 + 40));
      }

      if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_ERROR))
      {
        v17 = sub_100063D0C();
        sub_1000D67B4((v8 + 40), buf);
        sub_1008730A0();
      }

LABEL_27:
      uuid_clear(a3);
      goto LABEL_28;
    }
  }

  v12 = sub_10009A778(*(a1 + 256), v5);
  v13 = qword_100BCE900;
  if (!v12)
  {
    if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_DEBUG))
    {
      sub_100063D0C();
      objc_claimAutoreleasedReturnValue();
      sub_100873CF4();
    }

    operator new();
  }

  if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_DEFAULT))
  {
    v14 = sub_100063D0C();
    *buf = 138543618;
    v20 = v14;
    v21 = 2114;
    v22 = v5;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Address %{public}@ is already associated with device %{public}@", buf, 0x16u);
  }

  if ([*(a1 + 176) objectForKey:v5] && os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_FAULT))
  {
    sub_100063D0C();
    objc_claimAutoreleasedReturnValue();
    sub_100873140();
  }

  sub_10004DFB4(a3, *v12);
LABEL_28:
  sub_1000088CC(v18);
}

void sub_10078ACE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1000088CC(&a9);

  _Unwind_Resume(a1);
}

unint64_t sub_10078AD6C(const void *a1)
{
  *&v2[3] = 0;
  *v2 = 0;
  if (sub_1001BBFC4(a1, 16, v2, 7))
  {
    return 0;
  }

  else
  {
    return (v2[1] << 40) | (v2[2] << 32) | (v2[3] << 24) | (v2[4] << 16) | (v2[5] << 8) | v2[6] | (v2[0] << 48);
  }
}

void sub_10078ADE4(uint64_t a1, const unsigned __int8 *a2, uint64_t a3)
{
  if ((a3 & 0xFF000000000000) != 0)
  {
    v6 = qword_100BCE900;
    if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_FAULT))
    {
      memset(out, 0, 37);
      uuid_unparse_upper(a2, out);
      sub_100007E30(__p, out);
      if (v11 >= 0)
      {
        v9 = __p;
      }

      else
      {
        v9 = __p[0];
      }

      *out = 136446210;
      *&out[4] = v9;
      _os_log_fault_impl(&_mh_execute_header, v6, OS_LOG_TYPE_FAULT, "Trying to remove duplicates of an address that is not public for device %{public}s", out, 0xCu);
      if (v11 < 0)
      {
        operator delete(__p[0]);
      }
    }
  }

  v7 = *(a1 + 256);
  v8 = sub_10004DF60(a2);
  sub_10041FFC8(v7, a3, v8);
}

uint64_t sub_10078AF34(uint64_t a1, const unsigned __int8 *a2)
{
  v8[0] = 0;
  v8[1] = 0;
  sub_100007F88(v8, a1 + 96);
  v4 = sub_10004DF60(a2);
  v5 = sub_10004B1D8(a1, v4);

  if (v5)
  {
    v6 = *(v5 + 24);
  }

  else
  {
    v6 = 0;
  }

  sub_1000088CC(v8);
  return v6;
}

uint64_t sub_10078AFD0(uint64_t a1, unsigned __int8 *a2, unint64_t a3, int a4)
{
  v26[1] = 0;
  v27 = a3;
  v26[0] = 0;
  sub_100007F88(v26, a1 + 96);
  v8 = sub_10004DF60(a2);
  v9 = sub_10004B1D8(a1, v8);

  if (v9)
  {
    if (BYTE6(a3) && (BYTE6(a3) != 1 || (~a3 & 0xC00000000000) != 0) && os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_FAULT))
    {
      sub_1000D67B4(a2, v25);
      sub_100873DAC();
    }

    v10 = *(v9 + 24);
    if (v10)
    {
      if (v10 != *(v9 + 16))
      {
        v11 = *(a1 + 192);
        if (v11)
        {
          v12 = (a1 + 192);
          do
          {
            v13 = v11[4];
            v14 = v13 >= a3;
            v15 = v13 < a3;
            if (v14)
            {
              v12 = v11;
            }

            v11 = v11[v15];
          }

          while (v11);
          if (v12 != (a1 + 192) && v12[4] <= a3)
          {
            sub_10002717C((a1 + 184), v12);
            operator delete(v12);
          }
        }
      }
    }

    v16 = qword_100BCE900;
    if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_INFO))
    {
      v17 = sub_100063D0C();
      memset(out, 0, 37);
      uuid_unparse_upper(a2, out);
      sub_100007E30(__p, out);
      if (v24 >= 0)
      {
        v18 = __p;
      }

      else
      {
        v18 = __p[0];
      }

      *buf = 138543618;
      v29 = v17;
      v30 = 2082;
      v31 = v18;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "Now using resolved address %{public}@ for resolvable device %{public}s", buf, 0x16u);
      if (v24 < 0)
      {
        operator delete(__p[0]);
      }
    }

    *(v9 + 24) = a3;
    if (a4)
    {
      sub_1000C7A50(a1, a2);
    }

    else
    {
      v19 = qword_100BCE900;
      if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_DEFAULT))
      {
        memset(out, 0, 37);
        uuid_unparse_upper(a2, out);
        sub_100007E30(__p, out);
        if (v24 >= 0)
        {
          v20 = __p;
        }

        else
        {
          v20 = __p[0];
        }

        *buf = 136446210;
        v29 = v20;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Warning: Not persisting device %{public}s to database", buf, 0xCu);
        if (v24 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }

    *out = &v27;
    v21 = sub_100774770(a1 + 184, &v27);
    uuid_copy(v21 + 40, a2);
  }

  return sub_1000088CC(v26);
}

void sub_10078B2E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

BOOL sub_10078B32C(uint64_t a1, void *a2, _DWORD *a3)
{
  v5 = a2;
  v9[0] = 0;
  v9[1] = 0;
  sub_100007F88(v9, a1 + 96);
  v6 = sub_10004B1D8(a1, v5);
  if (v6)
  {
    *a3 = *(v6 + 128);
  }

  v7 = v6 != 0;
  sub_1000088CC(v9);

  return v7;
}

void sub_10078B3A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1000088CC(&a9);

  _Unwind_Resume(a1);
}

uint64_t sub_10078B3C8(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = 0;
  v7[1] = 0;
  sub_100007F88(v7, a1 + 96);
  v4 = sub_10004B1D8(a1, v3);
  if (v4)
  {
    v5 = *(v4 + 476);
  }

  else
  {
    v5 = 0;
  }

  sub_1000088CC(v7);

  return v5;
}

void sub_10078B434(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1000088CC(&a9);

  _Unwind_Resume(a1);
}

void sub_10078B454(uint64_t a1, void *a2, char a3)
{
  v5 = a2;
  v7[0] = 0;
  v7[1] = 0;
  sub_100007F88(v7, a1 + 96);
  v6 = sub_10004B1D8(a1, v5);
  if (v6)
  {
    *(v6 + 476) = a3;
    sub_10004B5C4(v6, a3);
  }

  sub_1000088CC(v7);
}

void sub_10078B4E8(uint64_t a1, void *a2, char a3)
{
  v5 = a2;
  v7[0] = 0;
  v7[1] = 0;
  sub_100007F88(v7, a1 + 96);
  v6 = sub_10004B1D8(a1, v5);
  if (v6)
  {
    *(v6 + 163) = a3;
  }

  sub_1000088CC(v7);
}

void sub_10078B554(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1000088CC(&a9);

  _Unwind_Resume(a1);
}

void sub_10078B574(uint64_t a1, void *a2, int a3, uint64_t a4)
{
  v7 = a2;
  v18[0] = 0;
  v18[1] = 0;
  sub_100007F88(v18, a1 + 96);
  v8 = sub_10004B1D8(a1, v7);
  v9 = v8;
  if (v8)
  {
    sub_10077BBC0(v8, a3, a4);
    if (a3)
    {
      sub_100007E30(__p, "DoNotAutoConnect");
      v10 = sub_1000463C8(v9 + 176, __p);
      v11 = v9 + 184;
      if (v17 < 0)
      {
        operator delete(__p[0]);
      }

      if (v11 != v10)
      {
        sub_10078380C(a1, v7, @"DoNotAutoConnect");
      }
    }

    else if (*(v9 + 488) == 1)
    {
      v12 = sub_100007EE8();
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_10078B718;
      v13[3] = &unk_100AE1200;
      v15 = a1;
      v14 = v7;
      sub_10008E008(v12, 1000, v13);
    }
  }

  sub_1000088CC(v18);
}

void sub_10078B6D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  sub_1000088CC(v22 - 64);

  _Unwind_Resume(a1);
}

void sub_10078B718(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = qword_100BCE900;
  if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    v5 = 138543362;
    v6 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "deleting pending device %{public}@", &v5, 0xCu);
  }

  sub_100782C70(v2, *(a1 + 32));
}

void sub_10078B7E0(uint64_t a1, void *a2, char a3)
{
  v5 = a2;
  v7[0] = 0;
  v7[1] = 0;
  sub_100007F88(v7, a1 + 96);
  v6 = sub_10004B1D8(a1, v5);
  if (v6)
  {
    *(v6 + 165) = a3;
  }

  sub_1000088CC(v7);
}

void sub_10078B84C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1000088CC(&a9);

  _Unwind_Resume(a1);
}

void sub_10078B86C(uint64_t a1, void *a2, _BYTE *a3, _BYTE *a4, char *a5)
{
  v9 = a2;
  v13[0] = 0;
  v13[1] = 0;
  sub_100007F88(v13, a1 + 96);
  v10 = sub_10004B1D8(a1, v9);
  if (v10)
  {
    *a3 = *(v10 + 165);
    *a4 = *(v10 + 529);
    if (*(v10 + 528))
    {
      v11 = *(v10 + 520) == 0;
    }

    else
    {
      v11 = 1;
    }

    v12 = !v11;
    *a5 = v12;
  }

  sub_1000088CC(v13);
}

void sub_10078B90C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1000088CC(&a9);

  _Unwind_Resume(a1);
}

uint64_t sub_10078B92C(uint64_t a1)
{
  v16[0] = 0;
  v16[1] = 0;
  sub_100007F88(v16, a1 + 96);
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = *(a1 + 176);
  v3 = [v2 countByEnumeratingWithState:&v12 objects:v17 count:16];
  if (v3)
  {
    v4 = *v13;
    do
    {
      v5 = 0;
      do
      {
        if (*v13 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = [*(a1 + 176) objectForKey:{*(*(&v12 + 1) + 8 * v5), v12}];
        v7 = *(v6 + 528);
        v8 = v6[65];
        v9 = v8;
        if (v7)
        {
          v10 = v8 == 0;
        }

        else
        {
          v10 = 1;
        }

        if (!v10)
        {
          sub_10077A220(v6, 1);
        }

        v5 = v5 + 1;
      }

      while (v3 != v5);
      v3 = [v2 countByEnumeratingWithState:&v12 objects:v17 count:16];
    }

    while (v3);
  }

  return sub_1000088CC(v16);
}

void sub_10078BA78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);

  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

void sub_10078BAB0(uint64_t a1, void *a2, int a3)
{
  v5 = a2;
  v7[0] = 0;
  v7[1] = 0;
  sub_100007F88(v7, a1 + 96);
  v6 = sub_10004B1D8(a1, v5);
  if (v6)
  {
    sub_10077BC08(v6, a3);
  }

  sub_1000088CC(v7);
}

uint64_t sub_10078BB40(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = 0;
  v7[1] = 0;
  sub_100007F88(v7, a1 + 96);
  v4 = sub_10004B1D8(a1, v3);
  if (v4)
  {
    v5 = *(v4 + 168);
  }

  else
  {
    v5 = 0;
  }

  sub_1000088CC(v7);

  return v5;
}

void sub_10078BBAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1000088CC(&a9);

  _Unwind_Resume(a1);
}

void sub_10078BBCC(uint64_t a1, void *a2, __int16 a3)
{
  v5 = a2;
  v7[0] = 0;
  v7[1] = 0;
  sub_100007F88(v7, a1 + 96);
  v6 = sub_10004B1D8(a1, v5);
  if (v6)
  {
    *(v6 + 172) = a3;
  }

  sub_1000088CC(v7);
}

void sub_10078BC38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1000088CC(&a9);

  _Unwind_Resume(a1);
}

uint64_t sub_10078BC58(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = 0;
  v7[1] = 0;
  sub_100007F88(v7, a1 + 96);
  v4 = sub_10004B1D8(a1, v3);
  if (v4)
  {
    v5 = *(v4 + 172);
  }

  else
  {
    v5 = 0;
  }

  sub_1000088CC(v7);

  return v5;
}

void sub_10078BCC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1000088CC(&a9);

  _Unwind_Resume(a1);
}

void sub_10078BCE4(uint64_t a1, void *a2, char a3)
{
  v5 = a2;
  v7[0] = 0;
  v7[1] = 0;
  sub_100007F88(v7, a1 + 96);
  v6 = sub_10004B1D8(a1, v5);
  if (v6)
  {
    *(v6 + 232) = a3;
  }

  sub_1000088CC(v7);
}

void sub_10078BD50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1000088CC(&a9);

  _Unwind_Resume(a1);
}

void sub_10078BD70(uint64_t a1, void *a2, char a3)
{
  v5 = a2;
  v7[0] = 0;
  v7[1] = 0;
  sub_100007F88(v7, a1 + 96);
  v6 = sub_10004B1D8(a1, v5);
  if (v6)
  {
    *(v6 + 233) = a3;
  }

  sub_1000088CC(v7);
}

void sub_10078BDDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1000088CC(&a9);

  _Unwind_Resume(a1);
}

uint64_t sub_10078BDFC(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = 0;
  v7[1] = 0;
  sub_100007F88(v7, a1 + 96);
  v4 = sub_10004B1D8(a1, v3);
  if (v4)
  {
    v5 = *(v4 + 233);
  }

  else
  {
    v5 = 0;
  }

  sub_1000088CC(v7);

  return v5 & 1;
}

void sub_10078BE68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1000088CC(&a9);

  _Unwind_Resume(a1);
}

void sub_10078BE88(uint64_t a1, void *a2, __int16 a3)
{
  v5 = a2;
  v7[0] = 0;
  v7[1] = 0;
  sub_100007F88(v7, a1 + 96);
  v6 = sub_10004B1D8(a1, v5);
  if (v6)
  {
    *(v6 + 352) = a3;
  }

  sub_1000088CC(v7);
}

void sub_10078BEF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1000088CC(&a9);

  _Unwind_Resume(a1);
}

uint64_t sub_10078BF14(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = 0;
  v7[1] = 0;
  sub_100007F88(v7, a1 + 96);
  v4 = sub_10004B1D8(a1, v3);
  if (v4)
  {
    v5 = *(v4 + 352);
  }

  else
  {
    v5 = 0;
  }

  sub_1000088CC(v7);

  return v5;
}

void sub_10078BF80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1000088CC(&a9);

  _Unwind_Resume(a1);
}

void sub_10078BFA0(uint64_t a1, void *a2, int a3)
{
  v5 = a2;
  v7[0] = 0;
  v7[1] = 0;
  sub_100007F88(v7, a1 + 96);
  v6 = sub_10004B1D8(a1, v5);
  if (v6)
  {
    *(v6 + 372) = a3;
  }

  sub_1000088CC(v7);
}

void sub_10078C00C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1000088CC(&a9);

  _Unwind_Resume(a1);
}

void sub_10078C02C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v8[0] = 0;
  v8[1] = 0;
  sub_100007F88(v8, a1 + 96);
  v7 = sub_10004B1D8(a1, v5);
  if (v7)
  {
    objc_storeStrong((v7 + 376), a3);
  }

  sub_1000088CC(v8);
}

void sub_10078C0AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1000088CC(&a9);

  _Unwind_Resume(a1);
}

id sub_10078C0D0(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = 0;
  v7[1] = 0;
  sub_100007F88(v7, a1 + 96);
  v4 = sub_10004B1D8(a1, v3);
  if (v4)
  {
    v5 = *(v4 + 376);
  }

  else
  {
    v5 = 0;
  }

  sub_1000088CC(v7);

  return v5;
}

void sub_10078C154(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1000088CC(&a9);

  _Unwind_Resume(a1);
}

id sub_10078C174(uint64_t a1, void *a2)
{
  v3 = a2;
  v10[0] = 0;
  v10[1] = 0;
  sub_100007F88(v10, a1 + 96);
  v4 = *(sub_10004B1D8(a1, v3) + 376);
  v5 = v4;
  if (v4 && [v4 count])
  {
    v6 = [v5 componentsJoinedByString:{@", "}];
  }

  else
  {
    v7 = sub_100788D8C(a1, v3);
    v6 = [NSString stringWithUTF8String:sub_10002E6D4(v7)];
  }

  v8 = v6;

  sub_1000088CC(v10);

  return v8;
}

void sub_10078C24C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1000088CC(&a9);

  _Unwind_Resume(a1);
}

void sub_10078C27C(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v11[0] = 0;
  v11[1] = 0;
  sub_100007F88(v11, a1 + 96);
  v10 = sub_10004B1D8(a1, v7);
  if (v10)
  {
    sub_1007796C8(v10, v8, v9);
  }

  sub_1000088CC(v11);
}

void sub_10078C334(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v8[0] = 0;
  v8[1] = 0;
  sub_100007F88(v8, a1 + 96);
  v7 = sub_10004B1D8(a1, v5);
  if (v7)
  {
    sub_100779798(v7, v6);
  }

  sub_1000088CC(v8);
}

id sub_10078C3D4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v10[0] = 0;
  v10[1] = 0;
  sub_100007F88(v10, a1 + 96);
  v7 = sub_10004B1D8(a1, v5);
  if (v7)
  {
    v8 = sub_1007799F4(v7, v6);
  }

  else
  {
    v8 = 0;
  }

  sub_1000088CC(v10);

  return v8;
}

void sub_10078C484(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v11[0] = 0;
  v11[1] = 0;
  sub_100007F88(v11, a1 + 96);
  v10 = sub_10004B1D8(a1, v7);
  if (v10)
  {
    sub_100779AA0(v10, v8, v9);
  }

  sub_1000088CC(v11);
}

void sub_10078C53C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v8[0] = 0;
  v8[1] = 0;
  sub_100007F88(v8, a1 + 96);
  v7 = sub_10004B1D8(a1, v5);
  if (v7)
  {
    sub_100779B70(v7, v6);
  }

  sub_1000088CC(v8);
}

id sub_10078C5DC(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = 0;
  v7[1] = 0;
  sub_100007F88(v7, a1 + 96);
  v4 = sub_10004B1D8(a1, v3);
  if (v4)
  {
    v5 = sub_100779C04(v4);
  }

  else
  {
    v5 = 0;
  }

  sub_1000088CC(v7);

  return v5;
}

id sub_10078C680(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v9[0] = 0;
  v9[1] = 0;
  sub_100007F88(v9, a1 + 96);
  v6 = sub_10004B1D8(a1, v5);
  if (v6)
  {
    v7 = sub_100779E70(v6, a3);
  }

  else
  {
    v7 = 0;
  }

  sub_1000088CC(v9);

  return v7;
}

void sub_10078C720(uint64_t a1, void *a2, char a3, int a4, unsigned int a5)
{
  v9 = a2;
  v16[0] = 0;
  v16[1] = 0;
  sub_100007F88(v16, a1 + 96);
  v10 = sub_10004B1D8(a1, v9);
  if (v10)
  {
    v15 = 0;
    sub_1000D42DC(&v15 + 1, &v15);
    v11 = qword_100BCE900;
    if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543874;
      v18 = v9;
      v19 = 1024;
      v20 = HIDWORD(v15);
      v21 = 1024;
      v22 = a5;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Device %{public}@ set last connected time to %d s offset %d ms", buf, 0x18u);
    }

    if (a4 == 1)
    {
      *(v10 + 144) = HIDWORD(v15);
    }

    else if (a4 == 2)
    {
      v12 = *(a1 + 164) + 1;
      *(a1 + 164) = v12;
      v13 = HIDWORD(v15);
      v14 = HIDWORD(v15) - a5 / 0x3E8;
      *(v10 + 136) = v12;
      *(v10 + 140) = v14;
      if ((a3 & 1) == 0)
      {
        *(v10 + 152) = 1000 * v13 - a5 + v15 / 1000;
      }
    }

    sub_10004DFB4(buf, v9);
    sub_1000C7A50(a1, buf);
  }

  sub_1000088CC(v16);
}

void sub_10078C8D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1000088CC(va);

  _Unwind_Resume(a1);
}

void sub_10078C908(uint64_t a1, void *a2, int a3)
{
  v5 = a2;
  v7[0] = 0;
  v7[1] = 0;
  sub_100007F88(v7, a1 + 96);
  v6 = sub_10004B1D8(a1, v5);
  if (v6)
  {
    *(v6 + 260) = a3;
  }

  sub_1000088CC(v7);
}

void sub_10078C974(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1000088CC(&a9);

  _Unwind_Resume(a1);
}

void sub_10078C994(uint64_t a1, void *a2)
{
  v3 = a2;
  v11[0] = 0;
  v11[1] = 0;
  sub_100007F88(v11, a1 + 96);
  v4 = sub_10004B1D8(a1, v3);
  if (v4)
  {
    *__str = 0;
    sub_100016250(__str);
    v5 = *__str;
    v6 = *&__str[4];
    *(v4 + 240) = *__str;
    *(v4 + 248) = v6;
    v7 = qword_100BCE900;
    if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_DEBUG))
    {
      v18 = 0u;
      v19 = 0u;
      *__str = 0u;
      v17 = 0u;
      snprintf(__str, 0x3FuLL, "%0llu.%0llu", v5, v6);
      sub_100007E30(__p, __str);
      if (v10 >= 0)
      {
        v8 = __p;
      }

      else
      {
        v8 = __p[0];
      }

      *buf = 138543618;
      v13 = v3;
      v14 = 2080;
      v15 = v8;
      _os_log_debug_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "device %{public}@ added to filter accept list at %s", buf, 0x16u);
      if (v10 < 0)
      {
        operator delete(__p[0]);
      }
    }
  }

  sub_1000088CC(v11);
}

void sub_10078CAF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_1000088CC(va);

  _Unwind_Resume(a1);
}

void sub_10078CB20(uint64_t a1, void *a2)
{
  v3 = a2;
  v11[0] = 0;
  v11[1] = 0;
  sub_100007F88(v11, a1 + 96);
  v4 = sub_10004B1D8(a1, v3);
  if (v4)
  {
    *(v4 + 240) = 0;
    *(v4 + 248) = 0;
    v5 = qword_100BCE900;
    if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_DEBUG))
    {
      *__str = 0;
      sub_100016250(__str);
      v6 = *__str;
      v7 = *&__str[4];
      v18 = 0u;
      v19 = 0u;
      *__str = 0u;
      v17 = 0u;
      snprintf(__str, 0x3FuLL, "%0llu.%0llu", v6, v7);
      sub_100007E30(__p, __str);
      if (v10 >= 0)
      {
        v8 = __p;
      }

      else
      {
        v8 = __p[0];
      }

      *buf = 138543618;
      v13 = v3;
      v14 = 2080;
      v15 = v8;
      _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "resetDeviceAddedToFilterAcceptListTime for device %{public}@ at %s", buf, 0x16u);
      if (v10 < 0)
      {
        operator delete(__p[0]);
      }
    }
  }

  sub_1000088CC(v11);
}

void sub_10078CC7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_1000088CC(va);

  _Unwind_Resume(a1);
}

void sub_10078CCAC(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = a2;
  v7[0] = 0;
  v7[1] = 0;
  sub_100007F88(v7, a1 + 96);
  v6 = sub_10004B1D8(a1, v5);
  if (v6)
  {
    *a3 = *(v6 + 240);
  }

  else
  {
    *a3 = 0;
    *(a3 + 8) = 0;
  }

  sub_1000088CC(v7);
}

void sub_10078CD24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1000088CC(&a9);

  _Unwind_Resume(a1);
}

void sub_10078CD44(void *a1, void *a2, char a3)
{
  v5 = a2;
  v7[0] = 0;
  v7[1] = 0;
  sub_100007F88(v7, (a1 + 12));
  v6 = sub_10004B1D8(a1, v5);
  if (v6)
  {
    *(v6 + 162) = a3;
    sub_10004DFB4(v8, v5);
    sub_1000C7A50(a1, v8);
  }

  sub_1000088CC(v7);
}

void sub_10078CDF4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1000088CC(va);

  _Unwind_Resume(a1);
}

void sub_10078CE20(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 520);
  v5 = *(a2 + 528);
  v6 = *(a2 + 544);
  v9 = v4;
  if (v4)
  {
    v7 = v5 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    v8 = *(a2 + 532);
    sub_100779F0C(a2, 0, 0, 0);
    sub_100779F0C(a1, v5, v9, v8);
  }

  *(a1 + 544) = v6;
}

void sub_10078CED4(uint64_t a1, void *a2, char a3)
{
  v4 = a2;
  v7 = v4;
  if (qword_100B508D0 == -1)
  {
    v5 = v4;
  }

  else
  {
    sub_100873544();
    v5 = v7;
  }

  v6 = sub_10004B1D8(off_100B508C8, v5);
  if (v6)
  {
    *(v6 + 237) = a3;
  }
}

uint64_t sub_10078CF60(uint64_t a1, void *a2)
{
  v2 = a2;
  if (qword_100B508D0 != -1)
  {
    sub_100873544();
  }

  v3 = sub_10004B1D8(off_100B508C8, v2);
  if (v3)
  {
    v4 = *(v3 + 237);
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

void sub_10078CFD4(uint64_t a1, void *a2)
{
  v2 = a2;
  v5 = v2;
  if (qword_100B508D0 == -1)
  {
    v3 = v2;
  }

  else
  {
    sub_100873544();
    v3 = v5;
  }

  v4 = sub_10004B1D8(off_100B508C8, v3);
  if (v4)
  {
    sub_10077894C(v4);
  }
}

id sub_10078D05C(uint64_t a1)
{
  v2 = +[NSMutableArray array];
  v18[0] = 0;
  v18[1] = 0;
  sub_100007F88(v18, a1 + 96);
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = *(a1 + 176);
  v4 = [v3 countByEnumeratingWithState:&v14 objects:v19 count:16];
  if (v4)
  {
    v5 = *v15;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v15 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v14 + 1) + 8 * i);
        v8 = [*(a1 + 176) objectForKey:v7];
        sub_100007E30(__p, "HasBuiltinServices");
        v9 = sub_1000463C8((v8 + 176), __p);
        if (v13 < 0)
        {
          operator delete(__p[0]);
        }

        if (v8 + 184 != v9)
        {
          [v2 addObject:v7];
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v14 objects:v19 count:16];
    }

    while (v4);
  }

  sub_10000801C(v18);
  v10 = [v2 indexesOfObjectsPassingTest:&stru_100B0C7B0];
  [v2 removeObjectsAtIndexes:v10];

  sub_1000088CC(v18);

  return v2;
}

void sub_10078D224(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24)
{
  sub_1000088CC(&a24);

  _Unwind_Resume(a1);
}

BOOL sub_10078D28C(id a1, NSUUID *a2, unint64_t a3, BOOL *a4)
{
  v4 = a2;
  if (qword_100B508C0 != -1)
  {
    sub_100873308();
  }

  v5 = sub_10004EE74(off_100B508B8, v4);

  return !v5;
}

void sub_10078D2F4(uint64_t a1, void *a2, __int32 a3)
{
  v4 = a2;
  if (qword_100B508D0 != -1)
  {
    sub_100873544();
  }

  v5 = sub_10004B1D8(off_100B508C8, v4);
  if (v5)
  {
    sub_100778910(v5, a3);
  }

  else
  {
    v6 = qword_100BCE900;
    if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138543362;
      v8 = v4;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "updateRSSIStatForDevice - device not available %{public}@", &v7, 0xCu);
    }
  }
}

void sub_10078D3F4(uint64_t a1, void *a2, __int32 a3)
{
  v4 = a2;
  if (qword_100B508D0 != -1)
  {
    sub_100873544();
  }

  v5 = sub_10004B1D8(off_100B508C8, v4);
  if (v5)
  {
    sub_10077892C(v5, a3);
  }

  else
  {
    v6 = qword_100BCE900;
    if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138543362;
      v8 = v4;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "updatePERStatForDevice - device not available %{public}@", &v7, 0xCu);
    }
  }
}

void sub_10078D4F4(uint64_t a1, void *a2, char a3)
{
  v5 = a2;
  v7[0] = 0;
  v7[1] = 0;
  sub_100007F88(v7, a1 + 96);
  v6 = sub_10004B1D8(a1, v5);
  if (v6)
  {
    *(v6 + 611) = a3;
  }

  sub_1000088CC(v7);
}

void sub_10078D560(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1000088CC(&a9);

  _Unwind_Resume(a1);
}

uint64_t sub_10078D580(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = 0;
  v7[1] = 0;
  sub_100007F88(v7, a1 + 96);
  v4 = sub_10004B1D8(a1, v3);
  if (v4)
  {
    v5 = *(v4 + 611);
  }

  else
  {
    v5 = 0;
  }

  sub_1000088CC(v7);

  return v5 & 1;
}

void sub_10078D5EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1000088CC(&a9);

  _Unwind_Resume(a1);
}

void sub_10078D60C(uint64_t a1, void *a2, __int16 a3)
{
  v4 = a2;
  if (qword_100B508D0 != -1)
  {
    sub_100873544();
  }

  *(sub_10004B1D8(off_100B508C8, v4) + 32) = a3;
  v5 = sub_100017F4C();
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10078D704;
  v7[3] = &unk_100AEF498;
  v6 = v4;
  v8 = v6;
  v9 = a3;
  sub_10000CA94(v5, v7);
}

uint64_t sub_10078D704()
{
  v0 = *(*sub_1000154A8() + 88);

  return v0();
}

void sub_10078D764(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_10078D05C(a1);
  if ([v4 indexOfObject:v3] != 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = [*(a1 + 176) objectForKey:v3];
    sub_100007E30(__p, "HasBuiltinServices");
    v6 = sub_1000463C8((v5 + 176), __p);
    v7 = v5 + 184;
    if (v11 < 0)
    {
      operator delete(__p[0]);
    }

    if (v7 != v6)
    {
      sub_100007E30(v8, "DoNotAutoConnect");
      sub_10078787C(a1, v3, v8);
      if (v9 < 0)
      {
        operator delete(v8[0]);
      }
    }
  }
}

void sub_10078D84C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_10078D898(uint64_t a1, void *a2, char a3)
{
  v5 = a2;
  v7[0] = 0;
  v7[1] = 0;
  sub_100007F88(v7, a1 + 96);
  v6 = sub_10004B1D8(a1, v5);
  if (v6)
  {
    *(v6 + 234) = a3;
  }

  sub_1000088CC(v7);
}

void sub_10078D904(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1000088CC(&a9);

  _Unwind_Resume(a1);
}

uint64_t sub_10078D924(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = 0;
  v7[1] = 0;
  sub_100007F88(v7, a1 + 96);
  v4 = sub_10004B1D8(a1, v3);
  if (v4)
  {
    v5 = *(v4 + 234);
  }

  else
  {
    v5 = 0;
  }

  sub_1000088CC(v7);

  return v5 & 1;
}

void sub_10078D990(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1000088CC(&a9);

  _Unwind_Resume(a1);
}

void sub_10078D9B0(uint64_t a1, void *a2, char a3)
{
  v5 = a2;
  v7[0] = 0;
  v7[1] = 0;
  sub_100007F88(v7, a1 + 96);
  v6 = sub_10004B1D8(a1, v5);
  if (v6)
  {
    *(v6 + 235) = a3;
  }

  sub_1000088CC(v7);
}

void sub_10078DA1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1000088CC(&a9);

  _Unwind_Resume(a1);
}

uint64_t sub_10078DA3C(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = 0;
  v7[1] = 0;
  sub_100007F88(v7, a1 + 96);
  v4 = sub_10004B1D8(a1, v3);
  if (v4)
  {
    v5 = *(v4 + 235);
  }

  else
  {
    v5 = 0;
  }

  sub_1000088CC(v7);

  return v5 & 1;
}

void sub_10078DAA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1000088CC(&a9);

  _Unwind_Resume(a1);
}

void sub_10078DAC8(uint64_t a1, void *a2, int a3)
{
  v5 = a2;
  v9[0] = 0;
  v9[1] = 0;
  sub_100007F88(v9, a1 + 96);
  v6 = sub_10004B1D8(a1, v5);
  if (v6)
  {
    v7 = *(v6 + 236);
    if (v7 != a3)
    {
      *(v6 + 236) = a3;
      v8 = qword_100BCE900;
      if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543874;
        v11 = v5;
        v12 = 1024;
        v13 = v7;
        v14 = 1024;
        v15 = a3;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "AutoReconnectEnabled changed - device %{public}@ enabled updated from %d to %d", buf, 0x18u);
      }
    }
  }

  sub_1000088CC(v9);
}

void sub_10078DBD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1000088CC(&a9);

  _Unwind_Resume(a1);
}

uint64_t sub_10078DBF8(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = 0;
  v7[1] = 0;
  sub_100007F88(v7, a1 + 96);
  v4 = sub_10004B1D8(a1, v3);
  if (v4)
  {
    v5 = *(v4 + 236);
  }

  else
  {
    v5 = 0;
  }

  sub_1000088CC(v7);

  return v5 & 1;
}

void sub_10078DC64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1000088CC(&a9);

  _Unwind_Resume(a1);
}

void sub_10078DC84(uint64_t a1, void *a2, char a3)
{
  v5 = a2;
  v15[0] = 0;
  v15[1] = 0;
  sub_100007F88(v15, a1 + 96);
  v6 = sub_10004B1D8(a1, v5);
  if (v6)
  {
    if (!*(v6 + 64))
    {
      *(v6 + 238) = a3;
    }

    *v13 = 0u;
    v14 = 0u;
    LODWORD(v13[0]) = *(a1 + 296);
    sub_100007F20(&v13[1], (a1 + 304));
    sub_10000801C(v15);
    v9 = v13[0];
    __dst = 0;
    v12 = 0;
    __p = 0;
    if (v14 != v13[1])
    {
      sub_1000080CC(&__p, (v14 - v13[1]) >> 3);
    }

    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10078DE44;
    v7[3] = &unk_100B0C738;
    v8 = v5;
    sub_1000D3CD8(&v9, v7);
    if (__p)
    {
      __dst = __p;
      operator delete(__p);
    }

    if (v13[1])
    {
      *&v14 = v13[1];
      operator delete(v13[1]);
    }
  }

  sub_1000088CC(v15);
}

void sub_10078DDE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a20)
  {
    operator delete(a20);
  }

  sub_1000088CC(v22 - 48);

  _Unwind_Resume(a1);
}

void sub_10078DE78(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = 0;
  v5[1] = 0;
  sub_100007F88(v5, a1 + 96);
  v4 = sub_10004B1D8(a1, v3);
  if (v4)
  {
    sub_100779458(v4, 1);
  }

  sub_1000088CC(v5);
}

BOOL sub_10078DEFC(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = 0;
  v7[1] = 0;
  sub_100007F88(v7, a1 + 96);
  v4 = sub_10004B1D8(a1, v3);
  if (v4)
  {
    v5 = sub_1000E3BD0(v4);
  }

  else
  {
    v5 = 0;
  }

  sub_1000088CC(v7);

  return v5;
}

void sub_10078DF8C(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = 0;
  v5[1] = 0;
  sub_100007F88(v5, a1 + 96);
  v4 = sub_10004B1D8(a1, v3);
  if (v4)
  {
    sub_1007794F4(v4, 1);
  }

  sub_1000088CC(v5);
}

void sub_10078E010(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = 0;
  v5[1] = 0;
  sub_100007F88(v5, a1 + 96);
  v4 = sub_10004B1D8(a1, v3);
  if (v4)
  {
    sub_100779590(v4, 1);
  }

  sub_1000088CC(v5);
}

void sub_10078E094(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = 0;
  v5[1] = 0;
  sub_100007F88(v5, a1 + 96);
  v4 = sub_10004B1D8(a1, v3);
  if (v4)
  {
    sub_10077962C(v4, 1);
  }

  sub_1000088CC(v5);
}

uint64_t sub_10078E118(uint64_t a1)
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = *(a1 + 176);
  v3 = 0;
  v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = *v9;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v3 += *([*(a1 + 176) objectForKey:{*(*(&v8 + 1) + 8 * i), v8}] + 237);
      }

      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  return v3;
}

uint64_t sub_10078E278(uint64_t a1)
{
  v2 = qword_100BCE900;
  if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Clearing all records of all devices", buf, 2u);
  }

  *buf = 0;
  v16 = 0;
  sub_100007F88(buf, a1 + 96);
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = *(a1 + 176);
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v17 count:16];
  if (v4)
  {
    v5 = *v12;
    do
    {
      v6 = 0;
      do
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = [*(a1 + 176) objectForKey:{*(*(&v11 + 1) + 8 * v6), v11}];
        if (v7)
        {
          sub_1000D3BB8(v7);
          operator delete();
        }

        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v3 countByEnumeratingWithState:&v11 objects:v17 count:16];
    }

    while (v4);
  }

  [*(a1 + 176) removeAllObjects];
  sub_100028EB4((a1 + 208));
  [*(a1 + 288) removeAllObjects];
  v9 = *(a1 + 192);
  v8 = (a1 + 192);
  sub_10000CEDC((v8 - 1), v9);
  *v8 = 0;
  v8[1] = 0;
  *(v8 - 1) = v8;
  sub_100420304(v8[8]);
  return sub_1000088CC(buf);
}

void sub_10078E424(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);

  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10078E458(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v18 = a3;
  v25[0] = 0;
  v25[1] = 0;
  sub_100007F88(v25, a1 + 96);
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v6 = *(a1 + 176);
  v7 = [v6 countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v7)
  {
    v8 = *v22;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v22 != v8)
      {
        objc_enumerationMutation(v6);
      }

      v10 = [*(a1 + 176) objectForKey:*(*(&v21 + 1) + 8 * v9)];
      v11 = v10;
      if (v10[231] < 0)
      {
        sub_100008904(__p, *(v10 + 26), *(v10 + 27));
      }

      else
      {
        *__p = *(v10 + 13);
        v20 = *(v10 + 28);
      }

      if (SHIBYTE(v20) < 0)
      {
        v12 = __p[1];
        operator delete(__p[0]);
        if (v12)
        {
LABEL_13:
          if (v11[231] < 0)
          {
            sub_100008904(__p, *(v11 + 26), *(v11 + 27));
          }

          else
          {
            *__p = *(v11 + 13);
            v20 = *(v11 + 28);
          }

          if (v20 >= 0)
          {
            v13 = __p;
          }

          else
          {
            v13 = __p[0];
          }

          v14 = [NSString stringWithUTF8String:v13];
          v15 = [v5 isEqualToString:v14];

          if (SHIBYTE(v20) < 0)
          {
            operator delete(__p[0]);
          }

          if (v15)
          {
            (v18)[2](v18, v11);
            v16 = 1;
            goto LABEL_26;
          }
        }
      }

      else if (HIBYTE(v20))
      {
        goto LABEL_13;
      }

      if (v7 == ++v9)
      {
        v7 = [v6 countByEnumeratingWithState:&v21 objects:v26 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  v16 = 0;
LABEL_26:

  sub_1000088CC(v25);
  return v16;
}

void sub_10078E67C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  sub_1000088CC(&a26);

  _Unwind_Resume(a1);
}

void sub_10078E6EC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = qword_100BCE900;
  if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 138543618;
    *&v9[4] = v5;
    *&v9[12] = 2114;
    *&v9[14] = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "DIS for device %{public}@ DIS Manufacturer: %{public}@", v9, 0x16u);
  }

  *v9 = 0;
  *&v9[8] = 0;
  sub_100007F88(v9, a1 + 96);
  v8 = sub_10004B1D8(a1, v5);
  if (v8)
  {
    objc_storeStrong((v8 + 272), a3);
  }

  sub_1000088CC(v9);
}

void sub_10078E7FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1000088CC(&a9);

  _Unwind_Resume(a1);
}

id sub_10078E828(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = qword_100BCE900;
  if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(v8) = 138543362;
    *(&v8 + 4) = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "DIS manufacturer name for device %{public}@", &v8, 0xCu);
  }

  v8 = 0uLL;
  sub_100007F88(&v8, a1 + 96);
  v5 = sub_10004B1D8(a1, v3);
  if (v5)
  {
    v6 = *(v5 + 272);
  }

  else
  {
    v6 = 0;
  }

  sub_1000088CC(&v8);

  return v6;
}

void sub_10078E930(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1000088CC(&a9);

  _Unwind_Resume(a1);
}

void sub_10078E958(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = qword_100BCE900;
  if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 138543618;
    *&v9[4] = v5;
    *&v9[12] = 2114;
    *&v9[14] = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "DIS for device %{public}@ DIS Model number: %{public}@", v9, 0x16u);
  }

  *v9 = 0;
  *&v9[8] = 0;
  sub_100007F88(v9, a1 + 96);
  v8 = sub_10004B1D8(a1, v5);
  if (v8)
  {
    objc_storeStrong((v8 + 280), a3);
  }

  sub_1000088CC(v9);
}

void sub_10078EA68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1000088CC(&a9);

  _Unwind_Resume(a1);
}

void sub_10078EA94(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = qword_100BCE900;
  if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 138543618;
    *&v9[4] = v5;
    *&v9[12] = 2112;
    *&v9[14] = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "DIS for device %{public}@ DIS serial number: %@", v9, 0x16u);
  }

  *v9 = 0;
  *&v9[8] = 0;
  sub_100007F88(v9, a1 + 96);
  v8 = sub_10004B1D8(a1, v5);
  if (v8)
  {
    objc_storeStrong((v8 + 288), a3);
  }

  sub_1000088CC(v9);
}

void sub_10078EBA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1000088CC(&a9);

  _Unwind_Resume(a1);
}

void sub_10078EBD0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = qword_100BCE900;
  if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 138543618;
    *&v9[4] = v5;
    *&v9[12] = 2114;
    *&v9[14] = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "DIS for device %{public}@ DIS HW Revision: %{public}@", v9, 0x16u);
  }

  *v9 = 0;
  *&v9[8] = 0;
  sub_100007F88(v9, a1 + 96);
  v8 = sub_10004B1D8(a1, v5);
  if (v8)
  {
    objc_storeStrong((v8 + 296), a3);
  }

  sub_1000088CC(v9);
}

void sub_10078ECE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1000088CC(&a9);

  _Unwind_Resume(a1);
}

void sub_10078ED0C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = qword_100BCE900;
  if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 138543618;
    *&v9[4] = v5;
    *&v9[12] = 2114;
    *&v9[14] = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "DIS for device %{public}@ DIS FW Revision: %{public}@", v9, 0x16u);
  }

  *v9 = 0;
  *&v9[8] = 0;
  sub_100007F88(v9, a1 + 96);
  v8 = sub_10004B1D8(a1, v5);
  if (v8)
  {
    objc_storeStrong((v8 + 304), a3);
  }

  sub_1000088CC(v9);
}

void sub_10078EE1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1000088CC(&a9);

  _Unwind_Resume(a1);
}

void sub_10078EE48(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = qword_100BCE900;
  if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 138543618;
    *&v9[4] = v5;
    *&v9[12] = 2114;
    *&v9[14] = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "DIS for device %{public}@ DIS SW Revision: %{public}@", v9, 0x16u);
  }

  *v9 = 0;
  *&v9[8] = 0;
  sub_100007F88(v9, a1 + 96);
  v8 = sub_10004B1D8(a1, v5);
  if (v8)
  {
    objc_storeStrong((v8 + 312), a3);
  }

  sub_1000088CC(v9);
}

void sub_10078EF58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1000088CC(&a9);

  _Unwind_Resume(a1);
}

void sub_10078EF84(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = qword_100BCE900;
  if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 138543618;
    *&v9[4] = v5;
    *&v9[12] = 2114;
    *&v9[14] = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "DIS for device %{public}@ DIS systemID: %{public}@", v9, 0x16u);
  }

  *v9 = 0;
  *&v9[8] = 0;
  sub_100007F88(v9, a1 + 96);
  v8 = sub_10004B1D8(a1, v5);
  if (v8)
  {
    objc_storeStrong((v8 + 320), a3);
  }

  sub_1000088CC(v9);
}

void sub_10078F094(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1000088CC(&a9);

  _Unwind_Resume(a1);
}

void sub_10078F0C0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = qword_100BCE900;
  if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 138543618;
    *&v9[4] = v5;
    *&v9[12] = 2112;
    *&v9[14] = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "DIS for device %{public}@ DIS regulatory data: %@", v9, 0x16u);
  }

  *v9 = 0;
  *&v9[8] = 0;
  sub_100007F88(v9, a1 + 96);
  v8 = sub_10004B1D8(a1, v5);
  if (v8)
  {
    objc_storeStrong((v8 + 328), a3);
  }

  sub_1000088CC(v9);
}

void sub_10078F1D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1000088CC(&a9);

  _Unwind_Resume(a1);
}

void sub_10078F1FC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = qword_100BCE900;
  if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_DEFAULT))
  {
    *v12 = 138543618;
    *&v12[4] = v5;
    *&v12[12] = 2114;
    *&v12[14] = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "DIS for device %{public}@ DIS PNP ID: %{public}@", v12, 0x16u);
  }

  *v12 = 0;
  *&v12[8] = 0;
  sub_100007F88(v12, a1 + 96);
  v8 = sub_10004B1D8(a1, v5);
  v9 = v8;
  if (v8)
  {
    if (sub_1000E3BD0(v8))
    {
      v10 = *(v9 + 392);
      if (sub_10000F034())
      {
        v11 = sub_10000F034();
        (*(*v11 + 608))(v11, *(v9 + 256), v6, v10);
      }
    }

    objc_storeStrong((v9 + 336), a3);
    sub_10078F3A0(a1, v5);
  }

  sub_1000088CC(v12);
}

void sub_10078F370(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1000088CC(&a9);

  _Unwind_Resume(a1);
}

void sub_10078F3A0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_10004B1D8(a1, v3);
  v5 = v4;
  if (v4)
  {
    v6 = *(v4 + 336);
    v7 = v6;
    if (!v6)
    {
LABEL_32:

      goto LABEL_33;
    }

    v8 = [v6 bytes];
    v9 = *(v8 + 1);
    v10 = *(v8 + 3);
    if (v9 == 13706)
    {
      sub_100007E30(v22, "IsBLEGameController");
      sub_1007782B8(v5, v22);
      if (v23 < 0)
      {
        operator delete(v22[0]);
      }

      goto LABEL_31;
    }

    if (v9 != 1118)
    {
      goto LABEL_31;
    }

    if ((v10 - 2835) > 0xF || ((1 << (v10 - 19)) & 0xE001) == 0)
    {
      goto LABEL_31;
    }

    sub_100007E30(__p, "IsXboxBLEController");
    sub_1007782B8(v5, __p);
    if (v27 < 0)
    {
      operator delete(__p[0]);
    }

    sub_100007E30(v24, "IsBLEGameController");
    sub_1007782B8(v5, v24);
    if (v25 < 0)
    {
      operator delete(v24[0]);
    }

    if (v10 != 2835)
    {
LABEL_31:
      sub_10078FA14(a1, v3, v9, v10);
      goto LABEL_32;
    }

    v12 = *(v5 + 304);
    if (!v12)
    {
      if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_ERROR))
      {
        sub_100873E3C();
      }

      goto LABEL_30;
    }

    v13 = [@"5.5.2641" compare:v12 options:64];
    v14 = qword_100BCE900;
    v15 = os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_DEFAULT);
    if (v13 == 1)
    {
      if (v15)
      {
        *buf = 138543874;
        v29 = v12;
        v30 = 2114;
        v31 = @"5.5.2641";
        v32 = 2114;
        v33 = v3;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Firmware version: %{public}@ < minumum firmware version: %{public}@ for device %{public}@", buf, 0x20u);
      }

      sub_100007E30(v21, "XboxControllerRequiresFWUpdate");
      sub_1007782B8(v5, v21);
      if ((v21[23] & 0x80000000) == 0)
      {
        goto LABEL_29;
      }

      v16 = v21;
    }

    else
    {
      if (v15)
      {
        *buf = 138543874;
        v29 = v12;
        v30 = 2114;
        v31 = @"5.5.2641";
        v32 = 2114;
        v33 = v3;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Firmware version: %{public}@ >= minumum firmware version: %{public}@ for device %{public}@", buf, 0x20u);
      }

      sub_100007E30(v19, "XboxControllerRequiresFWUpdate");
      sub_100776C38((v5 + 176), v19);
      if ((v20 & 0x80000000) == 0)
      {
        goto LABEL_29;
      }

      v16 = v19;
    }

    operator delete(*v16);
LABEL_29:
    v17 = +[NSDistributedNotificationCenter defaultCenter];
    v18 = [NSNotification notificationWithName:@"com.apple.bluetooth.leDeviceFirmwareUpdateWarning" object:0];
    [v17 postNotification:v18];

LABEL_30:
    goto LABEL_31;
  }

LABEL_33:
}

void sub_10078F6F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, uint64_t a35, int a36, __int16 a37, char a38, char a39)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

id sub_10078F7A8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = qword_100BCE900;
  if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(v8) = 138543362;
    *(&v8 + 4) = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "DIS for device %{public}@", &v8, 0xCu);
  }

  v8 = 0uLL;
  sub_100007F88(&v8, a1 + 96);
  v5 = sub_10004B1D8(a1, v3);
  if (v5)
  {
    v6 = *(v5 + 336);
  }

  else
  {
    v6 = 0;
  }

  sub_1000088CC(&v8);

  return v6;
}

void sub_10078F8B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1000088CC(&a9);

  _Unwind_Resume(a1);
}

void sub_10078F8D8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = qword_100BCE900;
  if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 138412546;
    *&v9[4] = v5;
    *&v9[12] = 2112;
    *&v9[14] = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "DIS for device %@ DIS UDI: %@", v9, 0x16u);
  }

  *v9 = 0;
  *&v9[8] = 0;
  sub_100007F88(v9, a1 + 96);
  v8 = sub_10004B1D8(a1, v5);
  if (v8)
  {
    objc_storeStrong((v8 + 344), a3);
  }

  sub_1000088CC(v9);
}

void sub_10078F9E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1000088CC(&a9);

  _Unwind_Resume(a1);
}

void sub_10078FA14(uint64_t a1, void *a2, int a3, int a4)
{
  v7 = a2;
  v8 = &word_100BC7B7A;
  v9 = 5;
  do
  {
    if (*(v8 - 1) == a3 && *v8 == a4)
    {
      sub_100007E30(__p, "LEPhyDenylist");
      v10 = sub_10004EB40(a1, v7, __p);
      v11 = v10;
      if (v16 < 0)
      {
        operator delete(__p[0]);
        if (v11)
        {
          goto LABEL_12;
        }
      }

      else if (v10)
      {
        goto LABEL_12;
      }

      sub_100007E30(v13, "LEPhyDenylist");
      sub_10078787C(a1, v7, v13);
      if (v14 < 0)
      {
        operator delete(v13[0]);
      }

      v12 = qword_100BCE900;
      if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109376;
        v18 = a3;
        v19 = 1024;
        v20 = a4;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "LEPhyDenylist: set tag for VID = 0x%04x, PID = 0x%04x", buf, 0xEu);
      }
    }

LABEL_12:
    v8 += 16;
    --v9;
  }

  while (v9);
}

void sub_10078FBA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10078FBE8(uint64_t a1, void *a2)
{
  v3 = a2;
  sub_100007E30(__p, "LEPhyDenylist");
  v4 = sub_10004EB40(a1, v3, __p);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  return v4;
}

void sub_10078FC54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_10078FC7C(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  v5 = a2;
  v7[0] = 0;
  v7[1] = 0;
  sub_100007F88(v7, a1 + 96);
  v6 = sub_10004B1D8(a1, v5);
  if (v6)
  {
    sub_1000D4E98(v6);
  }

  else
  {
    sub_100007E30(a3, "");
  }

  sub_1000088CC(v7);
}

uint64_t sub_10078FD20(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = 0;
  v7[1] = 0;
  sub_100007F88(v7, a1 + 96);
  v4 = sub_10004B1D8(a1, v3);
  if (v4)
  {
    v5 = *(v4 + 355);
  }

  else
  {
    v5 = 0;
  }

  sub_1000088CC(v7);

  return v5;
}

void sub_10078FD8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1000088CC(&a9);

  _Unwind_Resume(a1);
}

void sub_10078FDAC(uint64_t a1, void *a2, char a3)
{
  v5 = a2;
  v7[0] = 0;
  v7[1] = 0;
  sub_100007F88(v7, a1 + 96);
  v6 = sub_10004B1D8(a1, v5);
  if (v6)
  {
    *(v6 + 355) = a3;
  }

  sub_1000088CC(v7);
}

void sub_10078FE18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1000088CC(&a9);

  _Unwind_Resume(a1);
}

uint64_t sub_10078FE38(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = 0;
  v7[1] = 0;
  sub_100007F88(v7, a1 + 96);
  v4 = sub_10004B1D8(a1, v3);
  if (v4)
  {
    v5 = *(v4 + 356);
  }

  else
  {
    v5 = 0;
  }

  sub_1000088CC(v7);

  return v5;
}

void sub_10078FEA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1000088CC(&a9);

  _Unwind_Resume(a1);
}

void sub_10078FEC4(uint64_t a1, void *a2, char a3)
{
  v5 = a2;
  v7[0] = 0;
  v7[1] = 0;
  sub_100007F88(v7, a1 + 96);
  v6 = sub_10004B1D8(a1, v5);
  if (v6)
  {
    *(v6 + 356) = a3;
  }

  sub_1000088CC(v7);
}

void sub_10078FF30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1000088CC(&a9);

  _Unwind_Resume(a1);
}

uint64_t sub_10078FF50(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = 0;
  v7[1] = 0;
  sub_100007F88(v7, a1 + 96);
  v4 = sub_10004B1D8(a1, v3);
  if (v4)
  {
    v5 = *(v4 + 354);
  }

  else
  {
    v5 = 0;
  }

  sub_1000088CC(v7);

  return v5;
}

void sub_10078FFBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1000088CC(&a9);

  _Unwind_Resume(a1);
}

void sub_10078FFDC(uint64_t a1, void *a2, char a3)
{
  v5 = a2;
  v7[0] = 0;
  v7[1] = 0;
  sub_100007F88(v7, a1 + 96);
  v6 = sub_10004B1D8(a1, v5);
  if (v6)
  {
    *(v6 + 354) = a3;
  }

  sub_1000088CC(v7);
}

void sub_100790048(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1000088CC(&a9);

  _Unwind_Resume(a1);
}

void sub_100790068(uint64_t a1, void *a2, char a3)
{
  v5 = a2;
  v7[0] = 0;
  v7[1] = 0;
  sub_100007F88(v7, a1 + 96);
  v6 = sub_10004B1D8(a1, v5);
  if (v6)
  {
    *(v6 + 358) = a3;
  }

  sub_1000088CC(v7);
}

void sub_1007900D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1000088CC(&a9);

  _Unwind_Resume(a1);
}

uint64_t sub_1007900F4(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = 0;
  v7[1] = 0;
  sub_100007F88(v7, a1 + 96);
  v4 = sub_10004B1D8(a1, v3);
  if (v4)
  {
    v5 = *(v4 + 358);
  }

  else
  {
    v5 = 0;
  }

  sub_1000088CC(v7);

  return v5 & 1;
}

void sub_100790160(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1000088CC(&a9);

  _Unwind_Resume(a1);
}

void sub_100790180(uint64_t a1, void *a2, char a3, int a4)
{
  v7 = a2;
  v9[0] = 0;
  v9[1] = 0;
  sub_100007F88(v9, a1 + 96);
  v8 = sub_10004B1D8(a1, v7);
  if (v8)
  {
    *(v8 + 386) = a3;
    *(v8 + 388) = a4;
  }

  sub_1000088CC(v9);
}

void sub_1007901F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1000088CC(&a9);

  _Unwind_Resume(a1);
}

void sub_100790214(uint64_t a1, void *a2, _BYTE *a3, _DWORD *a4)
{
  v7 = a2;
  v9[0] = 0;
  v9[1] = 0;
  sub_100007F88(v9, a1 + 96);
  v8 = sub_10004B1D8(a1, v7);
  if (v8)
  {
    *a3 = *(v8 + 386);
    *a4 = *(v8 + 388);
  }

  sub_1000088CC(v9);
}

void sub_100790290(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1000088CC(&a9);

  _Unwind_Resume(a1);
}

double sub_1007902B0(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = 0;
  v7[1] = 0;
  sub_100007F88(v7, a1 + 96);
  v4 = sub_10004B1D8(a1, v3);
  if (v4)
  {
    v5 = *(v4 + 400);
  }

  else
  {
    v5 = 0.0;
  }

  sub_1000088CC(v7);

  return v5;
}

void sub_100790324(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1000088CC(&a9);

  _Unwind_Resume(a1);
}

void sub_100790344(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v5 = a2;
  if (sub_100790420(a1, v5))
  {
    sub_1000AFD60(a1, v5, 2u, a3);
  }

  else
  {
    v6 = sub_100046458(a1, v5, 0);
    sub_100799588(a3, &v6, 1);
  }
}

BOOL sub_100790420(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = 0;
  v7[1] = 0;
  sub_100007F88(v7, a1 + 96);
  v4 = [*(a1 + 176) objectForKey:v3];
  if (v4)
  {
    v5 = sub_1000AF748(v4);
  }

  else
  {
    v5 = 0;
  }

  sub_1000088CC(v7);

  return v5;
}

id sub_1007904B0(uint64_t a1, void *a2)
{
  v3 = a2;
  v9[0] = 0;
  v9[1] = 0;
  sub_100007F88(v9, a1 + 96);
  v4 = [*(a1 + 176) objectForKey:v3];
  if (v4 && (v5 = v4[8]) != 0)
  {
    v6 = v5;
    v7 = [v5 userIdentifier];
  }

  else
  {
    v7 = 0;
  }

  sub_1000088CC(v9);

  return v7;
}

void sub_100790550(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1000088CC(&a9);

  _Unwind_Resume(a1);
}

id sub_10079057C(uint64_t a1, void *a2)
{
  v3 = a2;
  v19[0] = 0;
  v19[1] = 0;
  sub_100007F88(v19, a1 + 96);
  v14 = +[NSMutableArray array];
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = *(a1 + 288);
  v5 = [v4 countByEnumeratingWithState:&v15 objects:v20 count:16];
  if (v5)
  {
    v6 = *v16;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v16 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v15 + 1) + 8 * i);
        v9 = *([*(a1 + 176) objectForKey:v8] + 8);
        v10 = v9;
        if (v9)
        {
          v11 = [v9 groupIdentifier];
          v12 = [v11 isEqual:v3];

          if (v12)
          {
            [v14 addObject:v8];
          }
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v15 objects:v20 count:16];
    }

    while (v5);
  }

  sub_1000088CC(v19);

  return v14;
}

void sub_100790714(_Unwind_Exception *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);

  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

id sub_100790774(uint64_t a1, void *a2)
{
  v3 = a2;
  v9[0] = 0;
  v9[1] = 0;
  sub_100007F88(v9, a1 + 96);
  v4 = [*(a1 + 176) objectForKey:v3];
  if (v4 && (v5 = v4[8]) != 0)
  {
    v6 = v5;
    v7 = [v5 groupIdentifier];
  }

  else
  {
    v7 = 0;
  }

  sub_1000088CC(v9);

  return v7;
}

void sub_100790814(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1000088CC(&a9);

  _Unwind_Resume(a1);
}

id sub_100790840(uint64_t a1, void *a2)
{
  v3 = sub_100790774(a1, a2);
  if (v3)
  {
    v4 = sub_10079057C(a1, v3);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

id sub_1007908B4(uint64_t a1, void *a2)
{
  v3 = a2;
  v9[0] = 0;
  v9[1] = 0;
  sub_100007F88(v9, a1 + 96);
  v4 = [*(a1 + 176) objectForKey:v3];
  if (v4 && (v5 = v4[8]) != 0)
  {
    v6 = v5;
    v7 = [v5 partIdentifier];
  }

  else
  {
    v7 = 0;
  }

  sub_1000088CC(v9);

  return v7;
}

void sub_100790940(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1000088CC(&a9);

  _Unwind_Resume(a1);
}

id sub_10079096C(uint64_t a1, void *a2)
{
  v3 = a2;
  v9[0] = 0;
  v9[1] = 0;
  sub_100007F88(v9, a1 + 96);
  v4 = [*(a1 + 176) objectForKey:v3];
  if (v4 && (v5 = v4[8]) != 0)
  {
    v6 = v5;
    v7 = [v5 managedByFindMy];
  }

  else
  {
    v7 = 0;
  }

  sub_1000088CC(v9);

  return v7;
}

void sub_1007909F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1000088CC(&a9);

  _Unwind_Resume(a1);
}

void sub_100790A24(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = 0;
  v5[1] = 0;
  sub_100007F88(v5, a1 + 96);
  v4 = [*(a1 + 176) objectForKey:v3];
  if (v4)
  {
    sub_1007791B4(v4);
  }

  sub_1000088CC(v5);
}

void sub_100790AA4()
{
  if (qword_100B508F0 != -1)
  {
    sub_1000DAE38();
  }

  v29 = 0;
  __dst = 0;
  v31 = 0;
  sub_10056D908(off_100B508E8, 8212, &v29);
  v26 = 0;
  v27 = 0;
  v28 = 0;
  if (qword_100B508F0 != -1)
  {
    sub_100873EAC();
  }

  sub_10056D908(off_100B508E8, 8228, &v26);
  sub_10057EB60(&v29, __dst, v26, v27, (v27 - v26) >> 3);
  v23 = 0;
  v24 = 0;
  v25 = 0;
  if (qword_100B508F0 != -1)
  {
    sub_100873EAC();
  }

  sub_10056D908(off_100B508E8, 8219, &v23);
  sub_10057EB60(&v29, __dst, v23, v24, (v24 - v23) >> 3);
  v20 = 0;
  v21 = 0;
  v22 = 0;
  if (qword_100B508F0 != -1)
  {
    sub_100873EAC();
  }

  sub_10056D908(off_100B508E8, 8224, &v20);
  sub_10057EB60(&v29, __dst, v20, v21, (v21 - v20) >> 3);
  v0 = qword_100BCE900;
  if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 134217984;
    *(&buf + 4) = (__dst - v29) >> 3;
    _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_DEFAULT, "parseCurrentAACPInfo devices:%lu", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v37 = 0x4812000000;
  v38 = sub_1000424A8;
  v39 = sub_1000426B0;
  v40 = "";
  v42[0] = 0;
  v42[1] = 0;
  v41 = v42;
  v2 = v29;
  v1 = __dst;
  if (v29 != __dst)
  {
    do
    {
      v3 = *v2;
      if (!sub_1000E2140(*v2, 3))
      {
        break;
      }

      memset(&__p, 0, sizeof(__p));
      sub_1000E2D2C(v3, 3u, &v32);
      if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
      {
        size = v32.__r_.__value_.__l.__size_;
        operator delete(v32.__r_.__value_.__l.__data_);
        if (size >= 2)
        {
LABEL_17:
          sub_1000E2D2C(v3, 3u, &v32);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          __p = v32;
          memset(&__str, 0, sizeof(__str));
          sub_1000E2D2C(v3, 8u, &v32);
          if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
          {
            v5 = v32.__r_.__value_.__l.__size_;
            operator delete(v32.__r_.__value_.__l.__data_);
            if (v5 < 2)
            {
              goto LABEL_47;
            }
          }

          else if (HIBYTE(v32.__r_.__value_.__r.__words[2]) <= 1u)
          {
LABEL_47:
            v14 = sub_100017F4C();
            v17[0] = _NSConcreteStackBlock;
            v17[1] = 3221225472;
            v17[2] = sub_100791144;
            v17[3] = &unk_100ADF8F8;
            v17[4] = v3;
            sub_10000CA94(v14, v17);
            if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__str.__r_.__value_.__l.__data_);
            }

            goto LABEL_49;
          }

          sub_1000E2D2C(v3, 8u, &v32);
          if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__str.__r_.__value_.__l.__data_);
          }

          __str = v32;
          v6 = HIBYTE(v32.__r_.__value_.__r.__words[2]);
          if ((v32.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v6 = __str.__r_.__value_.__l.__size_;
          }

          if (!v6)
          {
            sub_1000E2D2C(v3, 9u, &v32);
            if ((v32.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v7 = SHIBYTE(v32.__r_.__value_.__r.__words[2]);
            }

            else
            {
              v7 = v32.__r_.__value_.__l.__size_;
            }

            if ((SHIBYTE(v32.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
            {
              operator delete(v32.__r_.__value_.__l.__data_);
            }

            if (v7 >= 2)
            {
              sub_1000E2D2C(v3, 9u, &v32);
              if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(__str.__r_.__value_.__l.__data_);
              }

              __str = v32;
            }
          }

          v8 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
          v9 = SHIBYTE(__str.__r_.__value_.__r.__words[2]);
          if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v8 = __str.__r_.__value_.__l.__size_;
          }

          if (v8)
          {
            v10 = qword_100BCE900;
            if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_INFO))
            {
              p_str = __str.__r_.__value_.__r.__words[0];
              if (v9 >= 0)
              {
                p_str = &__str;
              }

              p_p = &__p;
              if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
              {
                p_p = __p.__r_.__value_.__r.__words[0];
              }

              LODWORD(v32.__r_.__value_.__l.__data_) = 141558787;
              *(v32.__r_.__value_.__r.__words + 4) = 1752392040;
              WORD2(v32.__r_.__value_.__r.__words[1]) = 2081;
              *(&v32.__r_.__value_.__r.__words[1] + 6) = p_str;
              HIWORD(v32.__r_.__value_.__r.__words[2]) = 2160;
              v33 = 1752392040;
              v34 = 2081;
              v35 = p_p;
              _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "otherSN:%{private, mask.hash}s caseSN:%{private, mask.hash}s", &v32, 0x2Au);
            }

            v32.__r_.__value_.__r.__words[0] = &__p;
            v13 = sub_1007996BC(*(&buf + 1) + 48, &__p.__r_.__value_.__l.__data_);
            std::string::operator=((v13 + 56), &__str);
          }

          goto LABEL_47;
        }
      }

      else if (HIBYTE(v32.__r_.__value_.__r.__words[2]) > 1u)
      {
        goto LABEL_17;
      }

LABEL_49:
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      ++v2;
    }

    while (v2 != v1);
  }

  v15 = sub_100007EE8();
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10079119C;
  v16[3] = &unk_100AE1120;
  v16[4] = &buf;
  sub_10000CA94(v15, v16);
  _Block_object_dispose(&buf, 8);
  sub_100799608(&v41, v42[0]);
  if (v20)
  {
    v21 = v20;
    operator delete(v20);
  }

  if (v23)
  {
    v24 = v23;
    operator delete(v23);
  }

  if (v26)
  {
    v27 = v26;
    operator delete(v26);
  }

  if (v29)
  {
    __dst = v29;
    operator delete(v29);
  }
}

void sub_100791068(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, void *a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38, uint64_t a39, void *a40, uint64_t a41, uint64_t a42, void *a43, uint64_t a44)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  _Block_object_dispose((v45 - 192), 8);
  sub_100799608(v44 + 48, *(v45 - 136));
  if (a34)
  {
    operator delete(a34);
  }

  if (a37)
  {
    operator delete(a37);
  }

  if (a40)
  {
    operator delete(a40);
  }

  if (a43)
  {
    operator delete(a43);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_100791144(uint64_t a1)
{
  if (qword_100B508F0 != -1)
  {
    sub_1000DAE38();
  }

  v2 = off_100B508E8;
  v3 = *(a1 + 32);

  return sub_10056B15C(v2, v3, 15);
}

void sub_10079119C(uint64_t a1, __n128 a2)
{
  v2 = *(*(a1 + 32) + 8);
  if (v2[8])
  {
    v3 = v2[6];
    v4 = v2 + 7;
    if (v3 != v2 + 7)
    {
      a2.n128_u64[0] = 141559043;
      v17 = a2;
      do
      {
        v28[0] = 0;
        v28[1] = 0;
        if (qword_100B51078 != -1)
        {
          sub_1008733BC();
        }

        v5 = v3 + 7;
        v6 = off_100B51070;
        if (*(v3 + 79) < 0)
        {
          v5 = *v5;
        }

        v7 = [NSString stringWithUTF8String:v5, *&v17];
        v8 = sub_1000AFB14(v6, v7, v28);

        if (v8)
        {
          v9 = v3 + 4;
          v10 = qword_100BCE900;
          if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_INFO))
          {
            v11 = v3 + 4;
            if (*(v3 + 55) < 0)
            {
              v11 = *v9;
            }

            *buf = v17.n128_u32[0];
            v19 = 1752392040;
            v20 = 2081;
            v21 = v11;
            v22 = 2160;
            v23 = 1752392040;
            v24 = 1041;
            v25 = 16;
            v26 = 2097;
            v27 = v28;
            _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Setting %{private, mask.hash}s encryption key to %{private, mask.hash}.16P", buf, 0x30u);
          }

          if (qword_100B51078 != -1)
          {
            sub_1008733BC();
          }

          v12 = off_100B51070;
          if (*(v3 + 55) < 0)
          {
            v9 = *v9;
          }

          v13 = [NSString stringWithUTF8String:v9];
          sub_1007B0C38(v12, v13, v28);
        }

        v14 = v3[1];
        if (v14)
        {
          do
          {
            v15 = v14;
            v14 = *v14;
          }

          while (v14);
        }

        else
        {
          do
          {
            v15 = v3[2];
            v16 = *v15 == v3;
            v3 = v15;
          }

          while (!v16);
        }

        v3 = v15;
      }

      while (v15 != v4);
    }
  }
}

uint64_t sub_1007913E4(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!v3)
  {
    goto LABEL_24;
  }

  v4 = qword_100BCE900;
  if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    *&buf[4] = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Checking if device %{public}@ is Apple Device", buf, 0xCu);
  }

  *buf = 0uLL;
  sub_100007F88(buf, a1 + 96);
  v5 = sub_10004B1D8(a1, v3);
  if (!v5)
  {
LABEL_23:
    sub_1000088CC(buf);
LABEL_24:
    v15 = 0;
    goto LABEL_25;
  }

  v6 = *(v5 + 336);
  v7 = v6;
  if (v6 && [v6 length] >= 5)
  {
    v8 = v7;
    v9 = [v7 bytes];
    v10 = *v9;
    v11 = *(v9 + 1);
    if (v10 == 2 && v11 == 1452)
    {
      goto LABEL_20;
    }

    if (v10 == 1 && v11 == 76)
    {
      goto LABEL_20;
    }
  }

  if (qword_100B508D0 != -1)
  {
    sub_10087303C();
  }

  v12 = off_100B508C8;
  sub_100007E30(__p, "IsAppleWatch");
  if (sub_10004EB40(v12, v3, __p))
  {
    if (v18 < 0)
    {
      operator delete(__p[0]);
    }

    goto LABEL_20;
  }

  if (qword_100B508D0 != -1)
  {
    sub_10087303C();
  }

  v13 = sub_100788ED8(off_100B508C8, v3);
  v14 = v13;
  if (v18 < 0)
  {
    operator delete(__p[0]);
    if (v14)
    {
      goto LABEL_20;
    }

    goto LABEL_22;
  }

  if ((v13 & 1) == 0)
  {
LABEL_22:

    goto LABEL_23;
  }

LABEL_20:

  sub_1000088CC(buf);
  v15 = 1;
LABEL_25:

  return v15;
}

void sub_1007915DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  sub_1000088CC(&a16);

  _Unwind_Resume(a1);
}

uint64_t sub_10079162C(uint64_t a1)
{
  if (qword_100B508B0 != -1)
  {
    sub_100873ED4();
  }

  v2 = sub_100029630(off_100B508A8);
  v23[0] = 0;
  v23[1] = 0;
  sub_100007F88(v23, a1 + 96);
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v3 = v2;
  v4 = [v3 countByEnumeratingWithState:&v19 objects:v24 count:16];
  if (v4)
  {
    v5 = *v20;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v20 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v19 + 1) + 8 * i);
        sub_100007E30(v17, "A1603");
        if (sub_10004EB40(a1, v7, v17))
        {
          v8 = 1;
        }

        else
        {
          sub_100007E30(v15, "A2051");
          if (sub_10004EB40(a1, v7, v15))
          {
            v8 = 1;
          }

          else
          {
            sub_100007E30(v13, "A3085");
            if (sub_10004EB40(a1, v7, v13))
            {
              v8 = 1;
            }

            else
            {
              sub_100007E30(__p, "A2538");
              v8 = sub_10004EB40(a1, v7, __p);
              if (v12 < 0)
              {
                operator delete(__p[0]);
              }
            }

            if (v14 < 0)
            {
              operator delete(v13[0]);
            }
          }

          if (v16 < 0)
          {
            operator delete(v15[0]);
          }
        }

        if (v18 < 0)
        {
          operator delete(v17[0]);
        }

        if (v8)
        {
          v9 = 1;
          goto LABEL_27;
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v19 objects:v24 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v9 = 0;
LABEL_27:

  sub_1000088CC(v23);
  return v9;
}

void sub_10079187C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43)
{
  sub_1000088CC(&a43);

  _Unwind_Resume(a1);
}

uint64_t sub_100791918(uint64_t a1, void *a2, int a3, void *a4, int a5)
{
  v9 = a2;
  v10 = a4;
  v14[0] = 0;
  v14[1] = 0;
  sub_100007F88(v14, a1 + 96);
  v11 = sub_10004B1D8(a1, v9);
  if (v11)
  {
    v12 = sub_100779F0C(v11, a3, v10, a5);
  }

  else
  {
    v12 = 8;
  }

  sub_1000088CC(v14);

  return v12;
}

id sub_1007919F0(uint64_t a1, int a2)
{
  v15[0] = 0;
  v15[1] = 0;
  sub_100007F88(v15, a1 + 96);
  v4 = objc_opt_new();
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = *(a1 + 176);
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v16 count:16];
  if (v6)
  {
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        if (*([*(a1 + 176) objectForKey:{v9, v11}] + 133) == a2)
        {
          [v4 addObject:v9];
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v11 objects:v16 count:16];
    }

    while (v6);
  }

  sub_1000088CC(v15);

  return v4;
}

void sub_100791B50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);

  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100791B88(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = 0;
  v7[1] = 0;
  sub_100007F88(v7, a1 + 96);
  v4 = sub_10004B1D8(a1, v3);
  if (v4)
  {
    v5 = *(v4 + 532);
  }

  else
  {
    v5 = 0;
  }

  sub_1000088CC(v7);

  return v5;
}

void sub_100791BF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1000088CC(&a9);

  _Unwind_Resume(a1);
}

uint64_t sub_100791C14(uint64_t a1, void *a2, int a3)
{
  v5 = a2;
  v9[0] = 0;
  v9[1] = 0;
  sub_100007F88(v9, a1 + 96);
  v6 = sub_10004B1D8(a1, v5);
  if (v6)
  {
    v7 = sub_10077AF88(v6, a3);
  }

  else
  {
    v7 = 8;
  }

  sub_1000088CC(v9);

  return v7;
}

void sub_100791CB4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v8[0] = 0;
  v8[1] = 0;
  sub_100007F88(v8, a1 + 96);
  v7 = sub_10004B1D8(a1, v5);
  if (v7)
  {
    objc_storeStrong((v7 + 200), a3);
  }

  sub_1000088CC(v8);
}

void sub_100791D34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1000088CC(&a9);

  _Unwind_Resume(a1);
}

uint64_t sub_100791D58(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = 0;
  v7[1] = 0;
  sub_100007F88(v7, a1 + 96);
  v4 = sub_10004B1D8(a1, v3);
  if (v4)
  {
    v5 = sub_10077B344(v4);
  }

  else
  {
    v5 = 0;
  }

  sub_1000088CC(v7);

  return v5;
}

void sub_100791DE8(uint64_t a1, void *a2, _WORD *a3, char a4)
{
  v7 = a2;
  v21[0] = 0;
  v21[1] = 0;
  sub_100007F88(v21, a1 + 96);
  v8 = sub_10004B1D8(a1, v7);
  v9 = v8;
  if (v8)
  {
    sub_10077B704(v8, a4);
    sub_10077B8BC(v9, 0);
    v10 = a3[40];
    if ((v10 & 8) != 0)
    {
      v19 = 0;
      v20 = 0;
      sub_10000C704(&v19, a3 + 14, 0x10uLL);
      if (sub_10000C5E0(&v19))
      {
        v11 = sub_10000C5F8(&v19);
        v12 = [NSData dataWithBytes:v11 length:sub_10000C5E0(&v19)];
        sub_10077B8BC(v9, v12);
      }

      v19 = &off_100AE0A78;
      if (v20)
      {
        sub_10000C808(v20);
      }

      v10 = a3[40];
    }

    if ((v10 & 0x80) != 0)
    {
      v19 = 0;
      v20 = 0;
      sub_10000C704(&v19, a3 + 36, 7uLL);
      if (sub_10000C5E0(&v19))
      {
        v13 = *(sub_10000C5F8(&v19) + 1);
        v14 = *(sub_10000C5F8(&v19) + 2);
        v15 = *(sub_10000C5F8(&v19) + 3);
        v16 = *(sub_10000C5F8(&v19) + 4);
        v17 = *(sub_10000C5F8(&v19) + 5);
        v18 = *(sub_10000C5F8(&v19) + 6);
        v9[3] = (v13 << 40) | (v14 << 32) | (v15 << 24) | (v16 << 16) | (v17 << 8) | v18 | (*sub_10000C5F8(&v19) << 48);
      }

      v19 = &off_100AE0A78;
      if (v20)
      {
        sub_10000C808(v20);
      }
    }

    else
    {
      v9[3] = 0;
    }
  }

  sub_1000088CC(v21);
}

void sub_100791FE8(_Unwind_Exception *a1, uint64_t a2, atomic_uint *a3, ...)
{
  va_start(va, a3);

  if (a3)
  {
    sub_10000C808(a3);
  }

  sub_1000088CC(va);

  _Unwind_Resume(a1);
}

BOOL sub_100792058(uint64_t a1, void *a2, char a3, char a4, __int16 a5, __int16 a6, __int16 a7, char a8, char a9, char a10)
{
  v17 = a2;
  v21[0] = 0;
  v21[1] = 0;
  sub_100007F88(v21, a1 + 96);
  v18 = sub_10004B1D8(a1, v17);
  if (v18)
  {
    *(v18 + 566) = a3;
    *(v18 + 567) = a4;
    *(v18 + 568) = a5;
    *(v18 + 570) = a6;
    *(v18 + 572) = a7;
    *(v18 + 574) = a8;
    *(v18 + 575) = a9;
    *(v18 + 576) = a10;
  }

  v19 = v18 != 0;
  sub_1000088CC(v21);

  return v19;
}

void sub_100792118(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1000088CC(&a9);

  _Unwind_Resume(a1);
}

uint64_t sub_100792138(uint64_t a1, void *a2, _BYTE *a3, _BYTE *a4, _WORD *a5, _WORD *a6, _WORD *a7, _BYTE *a8, _BYTE *a9, _BYTE *a10)
{
  v17 = a2;
  v21[0] = 0;
  v21[1] = 0;
  sub_100007F88(v21, a1 + 96);
  v18 = sub_10004B1D8(a1, v17);
  if (v18)
  {
    v19 = sub_100792218(v18, a3, a4, a5, a6, a7, a8, a9, a10);
  }

  else
  {
    v19 = 0;
  }

  sub_1000088CC(v21);

  return v19;
}

void sub_1007921F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1000088CC(va);

  _Unwind_Resume(a1);
}

uint64_t sub_100792218(uint64_t a1, _BYTE *a2, _BYTE *a3, _WORD *a4, _WORD *a5, _WORD *a6, _BYTE *a7, _BYTE *a8, _BYTE *a9)
{
  v9 = *(a1 + 566) != 0;
  if (*(a1 + 566))
  {
    *a2 = *(a1 + 566);
  }

  if (*(a1 + 567))
  {
    *a3 = *(a1 + 567);
    v9 = 1;
  }

  if (*(a1 + 568))
  {
    *a4 = *(a1 + 568);
    v9 = 1;
  }

  if (*(a1 + 570))
  {
    *a5 = *(a1 + 570);
    v9 = 1;
  }

  if (*(a1 + 572))
  {
    *a6 = *(a1 + 572);
    v9 = 1;
  }

  if (*(a1 + 574))
  {
    *a7 = *(a1 + 574);
    v9 = 1;
  }

  if (*(a1 + 575))
  {
    *a8 = *(a1 + 575);
    v9 = 1;
  }

  if (*(a1 + 576))
  {
    *a9 = *(a1 + 576);
    return 1;
  }

  return v9;
}

uint64_t sub_1007922A8(uint64_t a1, int a2)
{
  Current = CFAbsoluteTimeGetCurrent();
  v19[0] = 0;
  v19[1] = 0;
  sub_100007F88(v19, a1 + 96);
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = *(a1 + 176);
  v6 = 0;
  v7 = [v5 countByEnumeratingWithState:&v15 objects:v20 count:16];
  if (v7)
  {
    v8 = Current - (60 * a2);
    v9 = *v16;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = [*(a1 + 176) objectForKey:{*(*(&v15 + 1) + 8 * i), v15}];
        v12 = v11[50];
        v13 = v12 <= 0.0 || v12 < v8;
        if (!v13 || !a2 || (v11[20] & 1) != 0)
        {
          ++v6;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v20 count:16];
    }

    while (v7);
  }

  sub_1000088CC(v19);
  return v6;
}

void sub_100792408(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);

  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

const char *sub_100792434(int a1)
{
  if (a1 <= 2703)
  {
    if (a1 > 2700)
    {
      if (a1 == 2701)
      {
        return "BT_ERROR_NAME_IS_UUID";
      }

      if (a1 == 2702)
      {
        return "BT_ERROR_NAME_IS_BDADDR";
      }

      return "BT_ERROR_NAME_START_OR_END_INVALID";
    }

    if (!a1)
    {
      return "BT_SUCCESS";
    }

    if (a1 == 2700)
    {
      return "BT_ERROR_NAME_EMPTY";
    }

    return "Unknown";
  }

  if (a1 > 2705)
  {
    switch(a1)
    {
      case 2706:
        return "BT_ERROR_NAME_LEXICON_TOO_MANY_INVALID_WORDS";
      case 2707:
        return "BT_ERROR_NAME_LEXICON_NO_VALID_WORD";
      case 2708:
        return "BT_ERROR_NAME_LEXICON_CAPITALIZED_WORDS";
    }

    return "Unknown";
  }

  if (a1 == 2704)
  {
    return "BT_ERROR_NAME_FAILED_TO_TOKENIZE";
  }

  else
  {
    return "BT_ERROR_NAME_LEXICON_FOUND_UNWANTED_WORDS";
  }
}

const char *sub_10079251C(int a1)
{
  if (a1 <= 2703)
  {
    if (a1 > 2700)
    {
      if (a1 == 2701)
      {
        return "NameIsUUID";
      }

      if (a1 == 2702)
      {
        return "NameIsBDADDR";
      }

      return "StartOrEndInvalid";
    }

    if (!a1)
    {
      return "Success";
    }

    if (a1 == 2700)
    {
      return "NameEmpty";
    }

    return "Unknown";
  }

  if (a1 > 2705)
  {
    switch(a1)
    {
      case 2706:
        return "LexiconTooManyInvalidWords";
      case 2707:
        return "LexiconNoValidWords";
      case 2708:
        return "LexiconCapitalizedWords";
    }

    return "Unknown";
  }

  if (a1 == 2704)
  {
    return "FailedToTokenize";
  }

  else
  {
    return "LexiconFailedToTokenize";
  }
}

uint64_t sub_100792604(void *a1, void *a2, int a3, uint64_t a4, unsigned __int16 *a5, _WORD *a6, _BYTE *a7, unsigned __int16 *a8, uint64_t a9)
{
  v13 = a2;
  if ([v13 length])
  {
    v14 = a1[42];
    if (!v14)
    {
      v15 = +[NSMutableCharacterSet whitespaceAndNewlineCharacterSet];
      v16 = a1[42];
      a1[42] = v15;

      v17 = a1[42];
      v18 = +[NSCharacterSet punctuationCharacterSet];
      [v17 formUnionWithCharacterSet:v18];

      v19 = a1[42];
      v20 = +[NSCharacterSet symbolCharacterSet];
      [v19 formUnionWithCharacterSet:v20];

      v14 = a1[42];
    }

    v21 = [v13 componentsSeparatedByCharactersInSet:v14];
    v22 = [NSSet setWithArray:v21];

    v23 = [v22 count];
    *a8 = v23;
    if (v23)
    {
      v24 = +[NSLocale currentLocale];
      v25 = [v24 localeIdentifier];

      v26 = [(__CFString *)v25 hasPrefix:@"en"];
      if (v26)
      {
        v27 = v25;
      }

      else
      {
        v27 = @"en";
      }

      v28 = v27;
      v29 = v28;
      if (!a1[43] && (a3 & 1) == 0)
      {
        v28 = sub_1007928E8(v28, v28);
        a1[43] = v28;
      }

      if (!(v26 & 1 | ((a3 & 1) == 0)) && !a1[44])
      {
        a1[44] = sub_1007928E8(v28, v25);
      }

      v30 = 43;
      if (a3)
      {
        v30 = 44;
      }

      v31 = a1[v30];
      if (v31)
      {
        v37[0] = _NSConcreteStackBlock;
        v37[1] = 3221225472;
        v37[2] = sub_100792A0C;
        v37[3] = &unk_100B0C7F8;
        v37[4] = a6;
        v37[5] = v31;
        v37[6] = a4;
        v37[7] = a9;
        v37[8] = a7;
        v37[9] = a5;
        [v22 enumerateObjectsUsingBlock:v37];
        if (*a7)
        {
          v32 = 2705;
        }

        else if (*a5 == *a8)
        {
          if (*a6)
          {
            v32 = 2708;
          }

          else
          {
            v32 = 2707;
          }
        }

        else
        {
          v32 = 0;
        }
      }

      else
      {
        v32 = 2704;
      }
    }

    else
    {
      v32 = 2704;
    }
  }

  else
  {
    v32 = 2700;
  }

  return v32;
}

uint64_t sub_1007928E8(uint64_t a1, void *a2)
{
  v2 = a2;
  v6[0] = kLXLexiconLocaleKey;
  v6[1] = kLXLexiconEnumerateCachedOnlyOTAPaths;
  v7[0] = v2;
  v7[1] = &__kCFBooleanTrue;
  v3 = [NSDictionary dictionaryWithObjects:v7 forKeys:v6 count:2];
  v4 = LXLexiconCreate();

  return v4;
}

void sub_100792A0C(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  if ([v3 rangeOfString:@"(?:^[A-Z][a-z]{3 options:{}$)", 1024}] != 0x7FFFFFFFFFFFFFFFLL)
  {
    ++**(a1 + 32);
  }

  v4 = v3;
  LXLexiconEnumerateEntriesForString();
  if ((v6[3] & 1) == 0)
  {
    ++**(a1 + 72);
  }

  _Block_object_dispose(&v5, 8);
}

void sub_100792B30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14)
{
  _Block_object_dispose((v15 - 64), 8);

  _Unwind_Resume(a1);
}

void sub_100792B5C(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v5 = LXEntryCopyString();
  **(a1 + 48) = LXEntryGetMetaFlags();
  if ([v5 caseInsensitiveCompare:*(a1 + 32)] && !**(a1 + 48))
  {
    std::string::assign(*(a1 + 56), [*(a1 + 32) UTF8String]);
  }

  else
  {
    if ((LXEntryGetMetaFlags() & 0x3800000) != 0)
    {
      std::string::assign(*(a1 + 56), [*(a1 + 32) UTF8String]);
      **(a1 + 64) = 1;
      *a3 = 1;
    }

    if ((LXEntryGetMetaFlags() & 0x86) == 0)
    {
      *(*(*(a1 + 40) + 8) + 24) = 1;
    }
  }
}

uint64_t sub_100792C6C(void *a1, void *a2, int a3)
{
  v5 = a2;
  if ([v5 length])
  {
    if ([v5 rangeOfString:@"(?:[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12})" options:1024] == 0x7FFFFFFFFFFFFFFFLL)
    {
      if ([v5 rangeOfString:@"(?:[0-9A-Fa-f]{2}_|-){5}[0-9A-Fa-f]{2}" options:1024] == 0x7FFFFFFFFFFFFFFFLL)
      {
        v6 = [NSCharacterSet characterSetWithCharactersInString:@"_.-"];
        v7 = [v5 rangeOfCharacterFromSet:v6];
        if (v7 && v7 != [v5 length] - 1)
        {
          v8 = 0;
        }

        else
        {
          v8 = 2703;
        }
      }

      else
      {
        v8 = 2702;
      }
    }

    else
    {
      v8 = 2701;
    }
  }

  else
  {
    v8 = 2700;
  }

  v37 = 0;
  v36 = 0;
  v35 = 0;
  v34 = 0;
  v32[0] = 0;
  v32[1] = 0;
  v33 = 0;
  sub_100007E30(v32, "");
  v9 = [NSRegularExpression regularExpressionWithPattern:@"([a-z])([A-Z0-9])" options:0 error:0];
  v10 = [v9 stringByReplacingMatchesInString:v5 options:0 range:0 withTemplate:{objc_msgSend(v5, "length"), @"$1 $2"}];
  if (!v8)
  {
    v8 = sub_100792604(a1, v10, 0, &v37, &v36, &v34, &v35, &v34 + 1, v32);
    if (v8)
    {
      if (a1[44])
      {
        v8 = sub_100792604(a1, v10, 1, &v37, &v36, &v34, &v35, &v34 + 1, v32);
      }
    }
  }

  v11 = sub_10000E92C();
  if ((*(*v11 + 160))(v11))
  {
    if (a3)
    {
      if (v8 == 2700)
      {
        goto LABEL_37;
      }

      v12 = qword_100BCE900;
      if (!os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_37;
      }

      v13 = v5;
      v14 = [v5 UTF8String];
      v15 = v37;
      sub_100793198(v37);
      v16 = sub_100792434(v8);
      if (v31 >= 0)
      {
        v17 = __p;
      }

      else
      {
        v17 = __p[0];
      }

      v18 = v32;
      if (v33 < 0)
      {
        v18 = v32[0];
      }

      *buf = 136317699;
      v39 = v14;
      v40 = 2112;
      *v41 = v10;
      *&v41[8] = 1024;
      *&v41[10] = v8;
      v42 = 2080;
      *v43 = v16;
      *&v43[8] = 1024;
      *&v43[10] = v15;
      v44 = 2080;
      *v45 = v17;
      *&v45[8] = 1024;
      *v46 = v36;
      *&v46[4] = 1024;
      *v47 = v34;
      *&v47[4] = 1024;
      *v48 = v35;
      *&v48[4] = 1024;
      *&v48[6] = HIWORD(v34);
      v49 = 2081;
      v50 = v18;
      v19 = "statedump: isDeviceNameValidForDisplay deviceName:%s newDeviceName:%@ result:%d(%s) flags:%d(%s) lexiconNonMatches:%d capitalizedCount:%d unwantedWord:%d tokenCount:%d outToken:%{private}s";
      v20 = v12;
      v21 = 88;
    }

    else
    {
      if (!v8)
      {
        goto LABEL_37;
      }

      if (v8 == 2700)
      {
        goto LABEL_37;
      }

      v22 = qword_100BCE900;
      if (!os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_37;
      }

      v23 = v5;
      v24 = [v5 UTF8String];
      v25 = v37;
      sub_100793198(v37);
      v26 = sub_100792434(v8);
      if (v31 >= 0)
      {
        v27 = __p;
      }

      else
      {
        v27 = __p[0];
      }

      v28 = v32;
      if (v33 < 0)
      {
        v28 = v32[0];
      }

      *buf = 136317443;
      v39 = v24;
      v40 = 1024;
      *v41 = v8;
      *&v41[4] = 2080;
      *&v41[6] = v26;
      v42 = 1024;
      *v43 = v25;
      *&v43[4] = 2080;
      *&v43[6] = v27;
      v44 = 1024;
      *v45 = v36;
      *&v45[4] = 1024;
      *&v45[6] = v34;
      *v46 = 1024;
      *&v46[2] = v35;
      *v47 = 1024;
      *&v47[2] = HIWORD(v34);
      *v48 = 2081;
      *&v48[2] = v28;
      v19 = "Warning: isDeviceNameValidForDisplay name:%s result:%d(%s) flags:%d(%s) lexiconNonMatches:%d capitalizedCount:%d unwantedWord:%d tokenCount:%d outToken:%{private}s";
      v20 = v22;
      v21 = 78;
    }

    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, v19, buf, v21);
    if (v31 < 0)
    {
      operator delete(__p[0]);
    }
  }

LABEL_37:

  if (SHIBYTE(v33) < 0)
  {
    operator delete(v32[0]);
  }

  return v8;
}

void sub_100793124(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_100793198(int a1)
{
  v17 = 0;
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v7 = 0u;
  v8 = 0u;
  *__p = 0u;
  v6 = 0u;
  v3 = 0u;
  memset(v4, 0, sizeof(v4));
  sub_100008760(&v3);
  sub_100007774(&v3);
  if (a1)
  {
    sub_100007774(&v3);
  }

  if ((a1 & 2) != 0)
  {
    sub_100007774(&v3);
  }

  if ((a1 & 4) != 0)
  {
    sub_100007774(&v3);
  }

  if ((a1 & 8) != 0)
  {
    sub_100007774(&v3);
  }

  if ((a1 & 0x20) != 0)
  {
    sub_100007774(&v3);
  }

  if ((a1 & 0x40) != 0)
  {
    sub_100007774(&v3);
  }

  if ((a1 & 0x80) != 0)
  {
    sub_100007774(&v3);
  }

  if ((a1 & 0x200000) != 0)
  {
    sub_100007774(&v3);
  }

  if ((a1 & 0x400000) != 0)
  {
    sub_100007774(&v3);
  }

  if ((a1 & 0x800000) != 0)
  {
    sub_100007774(&v3);
  }

  if ((a1 & 0x1000000) != 0)
  {
    sub_100007774(&v3);
  }

  if ((a1 & 0x2000000) != 0)
  {
    sub_100007774(&v3);
  }

  if ((a1 & 0x4000000) != 0)
  {
    sub_100007774(&v3);
  }

  if ((a1 & 0x8000000) != 0)
  {
    sub_100007774(&v3);
  }

  if ((a1 & 0x10000000) != 0)
  {
    sub_100007774(&v3);
  }

  if ((a1 & 0x20000000) != 0)
  {
    sub_100007774(&v3);
  }

  sub_100007774(&v3);
  std::stringbuf::str();
  if (SHIBYTE(v6) < 0)
  {
    operator delete(__p[1]);
  }

  std::locale::~locale(v4);
  std::ostream::~ostream();
  return std::ios::~ios();
}

__CFString *sub_1007934C0(uint64_t a1, unsigned int a2, int a3)
{
  v3 = &stru_100B0F9E0;
  if (a2)
  {
    v6 = @"BT_GLOBAL_TCC_CENTER_LABEL_ONE_DEVICE";
    if (a3)
    {
      v6 = &stru_100B0F9E0;
    }

    v7 = v6;
    if (a2 <= 0x32)
    {
      if (a2 == 1)
      {
        v8 = @"%d device found";
LABEL_12:
        v11 = sub_100438B14(v7, v8);
        if (a2 >= 0x32)
        {
          v12 = 50;
        }

        else
        {
          v12 = a2;
        }

        v15 = 0;
        v3 = [NSString stringWithValidatedFormat:v11 validFormatSpecifiers:@"%d" error:&v15, v12];
        v13 = v15;

        goto LABEL_16;
      }

      v8 = @"%d devices found";
      v9 = @"BT_GLOBAL_TCC_CENTER_LABEL_MULTI_DEVICES";
    }

    else
    {
      v8 = @"More than %d devices found";
      v9 = @"BT_GLOBAL_TCC_CENTER_LABEL_MULTI_DEVICES_CAPPED";
    }

    if (a3)
    {
      v9 = &stru_100B0F9E0;
    }

    v10 = v9;

    v7 = v10;
    goto LABEL_12;
  }

LABEL_16:

  return v3;
}

double sub_10079360C(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v24 = v5;
  if ([v5 containsObject:v6])
  {
    v7 = v6;
    *a3 = v6;
    v8 = 1.5;
  }

  else
  {
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    obj = v5;
    v9 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
    if (v9)
    {
      v10 = *v27;
      v8 = 0.0;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v27 != v10)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v26 + 1) + 8 * i);
          for (j = 1; ; ++j)
          {
            v14 = [v12 length];
            v15 = [v6 length];
            v16 = v15 >= v14 ? v14 : v15;
            if (j >= v16)
            {
              break;
            }

            v17 = [v12 substringWithRange:{0, j}];
            v18 = [v6 substringWithRange:{0, j}];
            v19 = [v17 isEqualToString:v18];

            if ((v19 & 1) == 0)
            {
              break;
            }

            v20 = [v6 length];
            v21 = j / v20 + j / [v12 length];
            if (a3 && v21 > v8)
            {
              v22 = v12;
              *a3 = v12;
            }

            if (v21 >= v8)
            {
              v8 = v21;
            }
          }
        }

        v9 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
      }

      while (v9);
    }

    else
    {
      v8 = 0.0;
    }
  }

  return v8;
}

void sub_1007938A0(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v23 = 0;
  v22 = 0;
  sub_1000D42DC(&v23, &v22);
  Current = CFAbsoluteTimeGetCurrent();
  v5 = *(a1 + 140);
  if (v5)
  {
    v6 = v23 - v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = Current - v6;
  if (!v6)
  {
    v7 = 0.0;
  }

  if (!*(a1 + 164))
  {
    Current = v7;
  }

  if (*(a1 + 400) >= Current)
  {
    v8 = *(a1 + 400);
  }

  else
  {
    v8 = Current;
  }

  v9 = *(a1 + 584);
  v10 = *(a1 + 592);
  v11 = -127;
  if (v9 != v10)
  {
    do
    {
      v13 = *v9++;
      v12 = v13;
      if (v11 <= v13)
      {
        v11 = v12;
      }
    }

    while (v9 != v10);
    if (!v11)
    {
      v11 = *(a1 + 476);
    }
  }

  if ((*(a1 + 231) & 0x8000000000000000) != 0)
  {
    if (*(a1 + 216))
    {
      goto LABEL_19;
    }
  }

  else if (*(a1 + 231))
  {
LABEL_19:
    v14 = 1;
    goto LABEL_26;
  }

  sub_100007E30(__p, "HasTS");
  v14 = a1 + 184 != sub_1000463C8(a1 + 176, __p) || (*(a1 + 608) & 1) != 0 || *(a1 + 64) != 0;
  if (v21 < 0)
  {
    operator delete(__p[0]);
  }

LABEL_26:
  if (*(a1 + 127) < 0)
  {
    sub_100008904(v18, *(a1 + 104), *(a1 + 112));
  }

  else
  {
    *v18 = *(a1 + 104);
    v19 = *(a1 + 120);
  }

  v15 = *(a1 + 128);
  *a2 = v8;
  v16 = (a2 + 8);
  if (SHIBYTE(v19) < 0)
  {
    sub_100008904(v16, v18[0], v18[1]);
    v17 = SHIBYTE(v19);
    *(a2 + 32) = v11;
    *(a2 + 36) = v15;
    *(a2 + 40) = v14;
    if (v17 < 0)
    {
      operator delete(v18[0]);
    }
  }

  else
  {
    *v16 = *v18;
    *(a2 + 24) = v19;
    *(a2 + 32) = v11;
    *(a2 + 36) = v15;
    *(a2 + 40) = v14;
  }
}

void sub_100793A5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a14 < 0)
  {
    operator delete(a9);
  }

  _Unwind_Resume(exception_object);
}

id sub_100793A90(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v144 = objc_opt_new();
  if (_os_feature_enabled_impl())
  {
    Current = CFAbsoluteTimeGetCurrent();
    v146 = objc_opt_new();
    v4 = 0;
    v149[0] = 0;
    v149[1] = 0;
    v148 = v149;
    v5 = 0uLL;
    v198 = 0u;
    memset(v199, 0, sizeof(v199));
    do
    {
      *&v6 = &v199[v4 - 1];
      *(&v6 + 1) = &v199[v4] + 8;
      v7 = v6;
      vst3q_f64(v6, *(&v5 - 2));
      v4 += 3;
    }

    while (v4 != 6);
    v141 = objc_opt_new();
    for (i = 2700; i != 2709; ++i)
    {
      LODWORD(buf[0].__locale_) = i;
      __p[0] = buf;
      *(sub_100375190(&v148, buf) + 16) = 0;
    }

    v9 = *(a2 + 8);
    if (v9 == a2)
    {
      v140 = 0;
      v11 = 0.0;
      v10 = 0.0;
    }

    else
    {
      v140 = 0;
      v10 = 0.0;
      v11 = 0.0;
      do
      {
        if (*(v9 + 47) < 0)
        {
          sub_100008904(__p, *(v9 + 24), *(v9 + 32));
        }

        else
        {
          *__p = *(v9 + 24);
          __p[2] = *(v9 + 40);
        }

        if (SHIBYTE(__p[2]) >= 0)
        {
          v12 = __p;
        }

        else
        {
          v12 = __p[0];
        }

        v13 = [NSString stringWithUTF8String:v12];
        if (SHIBYTE(__p[2]) < 0)
        {
          operator delete(__p[0]);
        }

        LODWORD(v186[0]) = sub_100792C6C(a1, v13, 1);
        __p[0] = v186;
        v14 = sub_100375190(&v148, v186);
        ++*(v14 + 16);
        if (LODWORD(v186[0]) != 2700)
        {
          v15 = HIDWORD(v140);
          if (*(v9 + 52) == 1)
          {
            v15 = HIDWORD(v140) + 1;
          }

          HIDWORD(v140) = v15;
        }

        v16 = *(v9 + 16);
        if (v16 > 0.0)
        {
          v17 = Current - v16;
          v18 = v11 < v17 || v11 == 0.0;
          if (v18)
          {
            v11 = v17;
          }

          if (v10 == 0.0)
          {
            v10 = v17;
          }

          else if (v17 < v10)
          {
            v10 = v17;
          }
        }

        if ((LODWORD(v186[0]) - 2707) < 2 || !LODWORD(v186[0]))
        {
          v147 = 0;
          v19 = sub_10079360C(v141, v13, &v147);
          v20 = v147;
          v21 = v19;
          if (v21 >= 1.5)
          {
            v22 = qword_100BCE900;
            if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_DEFAULT))
            {
              sub_10079577C(v9 + 16);
              locale = buf;
              if (SHIBYTE(buf[2].__locale_) < 0)
              {
                locale = buf[0].__locale_;
              }

              LODWORD(__p[0]) = 136381443;
              *(__p + 4) = locale;
              WORD2(__p[1]) = 2048;
              *(&__p[1] + 6) = v21;
              HIWORD(__p[2]) = 2048;
              __p[3] = 0x3FF8000000000000;
              LOWORD(v171) = 2113;
              *(&v171 + 2) = v20;
              _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "_retrieveRecentDevicesInfo nameSimilarToReportedName %{private}s similarity %f > %f already reported as %{private}@", __p, 0x2Au);
              if (SHIBYTE(buf[2].__locale_) < 0)
              {
                operator delete(buf[0].__locale_);
              }
            }

            LOWORD(v140) = v140 + 1;
          }

          else
          {
            [v141 addObject:v13];
            if ((*(v9 + 56) & 1) != 0 || (v24 = v186[0]) == 0 || LODWORD(v186[0]) == 2707 || LODWORD(v186[0]) == 2708)
            {
              sub_100799900();
            }

            v25 = qword_100BCE900;
            if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_FAULT))
            {
              LODWORD(__p[0]) = 67109120;
              HIDWORD(__p[0]) = v24;
              _os_log_fault_impl(&_mh_execute_header, v25, OS_LOG_TYPE_FAULT, "_retrieveRecentDevicesInfo invalid code path sanityCheckResult:%d", __p, 8u);
            }
          }
        }

        v9 = *(v9 + 8);
      }

      while (v9 != a2);
    }

    v26 = sub_10000E92C();
    if ((*(*v26 + 160))(v26))
    {
      for (j = 0; j != 4; ++j)
      {
        v28 = &v199[-1] + 24 * j;
        for (k = *(v28 + 1); k != v28; k = *(k + 8))
        {
          v30 = qword_100BCE900;
          if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_DEFAULT))
          {
            v31 = "Unknown";
            if (j <= 4)
            {
              v31 = off_100B0C9E0[j];
            }

            sub_10079577C(k + 16);
            if (SHIBYTE(__p[2]) >= 0)
            {
              v32 = __p;
            }

            else
            {
              v32 = __p[0];
            }

            LODWORD(buf[0].__locale_) = 136315394;
            *(&buf[0].__locale_ + 4) = v31;
            WORD2(buf[1].__locale_) = 2080;
            *(&buf[1].__locale_ + 6) = v32;
            _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "_retrieveRecentDevicesInfo deviceBucket[%s]:%s", buf, 0x16u);
            if (SHIBYTE(__p[2]) < 0)
            {
              operator delete(__p[0]);
            }
          }
        }
      }
    }

    v33 = 0;
    v34 = 0;
    v197 = 0;
    v196 = 0;
    v186[0] = 0x200000000;
    v188 = 0u;
    v189 = 0u;
    v190 = 0u;
    *&v186[1] = Current;
    *&v186[2] = Current + -1800.0;
    v187 = 1;
    WORD2(v187) = *(a1 + 382);
    *&v188 = Current;
    *(&v188 + 1) = Current + -1800.0;
    LODWORD(v189) = 2;
    WORD2(v189) = WORD2(v187);
    *(&v189 + 1) = Current;
    *&v190 = Current + -1800.0;
    DWORD2(v190) = 3;
    WORD6(v190) = WORD2(v187);
    v191 = Current;
    v192 = Current + -1800.0;
    v194 = 0;
    v193 = 4;
    v35 = v186;
    v195 = 0;
    do
    {
      v36 = &v199[-1] + 24 * v33;
      v37 = *(v36 + 1);
      if (v37 != v36)
      {
        v145 = *(v35 + 2);
        do
        {
          v38 = *(v37 + 16);
          if (v38 > 0.0)
          {
            v39 = v35[2];
            if (v39 != 0.0)
            {
              v40 = v35[1];
              if (v38 <= v40 && v38 >= v39 && v40 != 0.0)
              {
                ++*(&v196 + v33);
                if (*(a1 + 382) > [v144 count])
                {
                  v42 = *(&v197 + v33);
                  if (v42 < v145)
                  {
                    *(&v197 + v33) = v42 + 1;
                    v43 = objc_opt_new();
                    if (*(v37 + 47) < 0)
                    {
                      sub_100008904(__p, *(v37 + 24), *(v37 + 32));
                    }

                    else
                    {
                      *__p = *(v37 + 24);
                      __p[2] = *(v37 + 40);
                    }

                    if (SHIBYTE(__p[2]) >= 0)
                    {
                      v44 = __p;
                    }

                    else
                    {
                      v44 = __p[0];
                    }

                    v45 = [NSString stringWithUTF8String:v44];
                    [v43 setObject:v45 forKeyedSubscript:@"mapLabelCalloutTitleKey"];

                    if (SHIBYTE(__p[2]) < 0)
                    {
                      operator delete(__p[0]);
                    }

                    v46 = *(v37 + 48);
                    if (v46 - 129 > 0xFFFFFF93)
                    {
                      v47 = 25;
                    }

                    else if (v46 <= -65)
                    {
                      if (v46 <= 0xB4)
                      {
                        v47 = 25;
                      }

                      else
                      {
                        v47 = 50;
                      }
                    }

                    else
                    {
                      v47 = 100;
                    }

                    v48 = [NSString stringWithFormat:@"%d", v47];
                    [v43 setObject:v48 forKeyedSubscript:@"mapLabelCalloutPercentageValue"];

                    v49 = [NSString stringWithFormat:@"%d", *(v37 + 48)];
                    [v43 setObject:v49 forKeyedSubscript:@"rssiValue"];

                    v50 = "Unknown";
                    if (v33 < 5)
                    {
                      v50 = off_100B0C9E0[v33];
                    }

                    v51 = [NSString stringWithUTF8String:v50];
                    [v43 setObject:v51 forKeyedSubscript:@"bucketName"];

                    if (v38 > 0.0)
                    {
                      v52 = [NSString stringWithFormat:@"%f", (Current - v38) / 60.0];
                      [v43 setObject:v52 forKeyedSubscript:@"seenMinutesAgo"];
                    }

                    [v144 addObject:v43];
                  }
                }
              }
            }
          }

          v37 = *(v37 + 8);
        }

        while (v37 != v36);
      }

      v35 = &v186[3 * ++v34];
      v33 = *v35;
    }

    while (v33 != 4);
    if ([v144 count] > *(a1 + 382) && os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_FAULT))
    {
      [v144 count];
      sub_100873F68();
    }

    [v146 setObject:&off_100B33C18 forKeyedSubscript:@"DeviceAgeThresholdMinutes"];
    v53 = &xpc_dictionary_set_uint64_ptr;
    v54 = [NSNumber numberWithInt:a3];
    [v146 setObject:v54 forKeyedSubscript:@"MetricSourceTrigger"];

    v55 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v144 count]);
    [v146 setObject:v55 forKeyedSubscript:@"TotalReported"];

    v56 = [NSNumber numberWithUnsignedLong:*(a2 + 16)];
    [v146 setObject:v56 forKeyedSubscript:@"DiscoveredDevices"];

    v57 = [NSNumber numberWithInt:*(a1 + 160)];
    [v146 setObject:v57 forKeyedSubscript:@"DBSize"];

    v58 = [NSNumber numberWithUnsignedShort:v197];
    [v146 setObject:v58 forKeyedSubscript:@"ReportedMyAppleDevicesCount"];

    v59 = [NSNumber numberWithUnsignedShort:WORD1(v197)];
    [v146 setObject:v59 forKeyedSubscript:@"ReportedOtherSanitizedLexicalCount"];

    v60 = [NSNumber numberWithUnsignedShort:WORD2(v197)];
    [v146 setObject:v60 forKeyedSubscript:@"ReportedOtherSanitizedCapitalizedCount"];

    v61 = [NSNumber numberWithUnsignedShort:HIWORD(v197)];
    [v146 setObject:v61 forKeyedSubscript:@"ReportedOtherSanitizedCount"];

    if (qword_100B50910 != -1)
    {
      sub_10087336C();
    }

    v62 = [NSNumber numberWithUnsignedInt:*(off_100B50908 + 128)];
    [v146 setObject:v62 forKeyedSubscript:@"ActiveScansCount"];

    v63 = [NSNumber numberWithUnsignedInt:*(a1 + 376)];
    [v146 setObject:v63 forKeyedSubscript:@"ActiveScansForNameSearchCount"];

    v64 = [NSNumber numberWithUnsignedShort:0];
    [v146 setObject:v64 forKeyedSubscript:@"ScanRSPNamesCount"];

    v65 = [NSNumber numberWithUnsignedShort:WORD2(v140)];
    [v146 setObject:v65 forKeyedSubscript:@"ADVNameCount"];

    v66 = [NSNumber numberWithDouble:v11];
    [v146 setObject:v66 forKeyedSubscript:@"OldestDeviceAgeSeconds"];

    v67 = [NSNumber numberWithDouble:v10];
    [v146 setObject:v67 forKeyedSubscript:@"NewestDeviceAgeSeconds"];

    v68 = [NSNumber numberWithUnsignedShort:v140];
    [v146 setObject:v68 forKeyedSubscript:@"DupNameDropCount"];

    v69 = [NSNumber numberWithUnsignedLong:*(a1 + 280)];
    [v146 setObject:v69 forKeyedSubscript:@"CachedEvictedCount"];

    [v146 setObject:&off_100B33C30 forKeyedSubscript:@"CachedEvictedMaxCount"];
    v185 = 0;
    v183 = 0u;
    v184 = 0u;
    v181 = 0u;
    v182 = 0u;
    v179 = 0u;
    v180 = 0u;
    v177 = 0u;
    v178 = 0u;
    v175 = 0u;
    v176 = 0u;
    *v173 = 0u;
    v174 = 0u;
    v171 = 0u;
    v172 = 0u;
    memset(__p, 0, sizeof(__p));
    sub_100008760(__p);
    v70 = 15;
    do
    {
      for (m = 0; m != 4; ++m)
      {
        v72 = "Unknown";
        if (m <= 4)
        {
          v72 = off_100B0C9E0[m];
        }

        v73 = [NSString stringWithFormat:@"Bucket%dMin%s", v70, v72];
        v74 = &v199[-1] + 24 * m;
        v75 = *(v74 + 1);
        if (v75 == v74)
        {
          v76 = 0;
        }

        else
        {
          v76 = 0;
          do
          {
            v77 = *(v75 + 16);
            v78 = v77 >= 0.0;
            if (Current < v77)
            {
              v78 = 0;
            }

            if (Current - v77 > (60 * v70))
            {
              v78 = 0;
            }

            v76 += v78;
            v75 = *(v75 + 8);
          }

          while (v75 != v74);
        }

        v79 = [v53[469] numberWithUnsignedShort:v76];
        [v146 setObject:v79 forKeyedSubscript:v73];

        v80 = sub_10000E92C();
        if ((*(*v80 + 160))(v80))
        {
          v81 = std::ostream::operator<<();
          v82 = sub_100007774(v81);
          v83 = v53;
          v84 = "Unknown";
          if (m <= 4)
          {
            v84 = off_100B0C9E0[m];
          }

          strlen(v84);
          v85 = sub_100007774(v82);
          v53 = v83;
          sub_100007774(v85);
          v86 = std::ostream::operator<<();
          sub_100007774(v86);
        }
      }

      v87 = v70 >= 0x2E;
      v70 = (v70 + 15);
    }

    while (!v87);
    v88 = v148;
    if (v148 != v149)
    {
      do
      {
        v89 = *(v88 + 28);
        v90 = [NSString stringWithFormat:@"NameError%s", sub_10079251C(v89)];
        v91 = [v53[469] numberWithUnsignedShort:WORD2(v89)];
        [v146 setObject:v91 forKeyedSubscript:v90];

        v92 = v88[1];
        if (v92)
        {
          do
          {
            v93 = v92;
            v92 = *v92;
          }

          while (v92);
        }

        else
        {
          do
          {
            v93 = v88[2];
            v18 = *v93 == v88;
            v88 = v93;
          }

          while (!v18);
        }

        v88 = v93;
      }

      while (v93 != v149);
    }

    v94 = sub_10000E92C();
    if ((*(*v94 + 160))(v94))
    {
      if (qword_100B50910 != -1)
      {
        sub_10087336C();
      }

      v169 = 0;
      v167 = 0u;
      v168 = 0u;
      v165 = 0u;
      v166 = 0u;
      v163 = 0u;
      v164 = 0u;
      v161 = 0u;
      v162 = 0u;
      v159 = 0u;
      v160 = 0u;
      *v157 = 0u;
      v158 = 0u;
      v155 = 0u;
      v156 = 0u;
      memset(buf, 0, sizeof(buf));
      sub_100008760(buf);
      [v144 count];
      [v144 count];
      v95 = std::ostream::operator<<();
      sub_100007774(v95);
      v96 = std::ostream::operator<<();
      v97 = sub_100007774(v96);
      v98 = *v97;
      *(v97 + *(*v97 - 24) + 24) = 5;
      *(v97 + *(v98 - 24) + 16) = 3;
      v99 = std::ostream::operator<<();
      sub_100007774(v99);
      v100 = std::ostream::operator<<();
      sub_100007774(v100);
      v101 = std::ostream::operator<<();
      v102 = sub_100007774(v101);
      v103 = *v102;
      *(v102 + *(*v102 - 24) + 24) = 5;
      *(v102 + *(v103 - 24) + 16) = 3;
      v104 = std::ostream::operator<<();
      sub_100007774(v104);
      v105 = 0;
      v106 = v199;
      do
      {
        v107 = sub_100007774(buf);
        v108 = "Unknown";
        if (v105 <= 4)
        {
          v108 = off_100B0C9E0[v105];
        }

        strlen(v108);
        v109 = sub_100007774(v107);
        sub_100007774(v109);
        v110 = std::ostream::operator<<();
        sub_100007774(v110);
        v111 = std::ostream::operator<<();
        sub_100007774(v111);
        std::ostream::operator<<();
        ++v105;
        v106 = (v106 + 24);
      }

      while (v105 != 4);
      sub_100007774(buf);
      sub_100007774(buf);
      std::ostream::operator<<();
      sub_100007774(buf);
      sub_100007774(buf);
      std::ostream::operator<<();
      sub_100007774(buf);
      std::ostream::operator<<();
      sub_100007774(buf);
      v112 = std::ostream::operator<<();
      sub_100007774(v112);
      std::ostream::operator<<();
      sub_100007774(buf);
      v113 = std::ostream::operator<<();
      sub_100007774(v113);
      std::ostream::operator<<();
      sub_100007774(buf);
      v114 = std::ostream::operator<<();
      sub_100007774(v114);
      v115 = std::ostream::operator<<();
      v116 = sub_100007774(v115);
      v117 = *v116;
      *(v116 + *(*v116 - 24) + 24) = 5;
      *(v116 + *(v117 - 24) + 16) = 3;
      v118 = std::ostream::operator<<();
      sub_100007774(v118);
      sub_100007774(buf);
      v119 = std::ostream::operator<<();
      sub_100007774(v119);
      v120 = std::ostream::operator<<();
      v121 = sub_100007774(v120);
      v122 = *v121;
      *(v121 + *(*v121 - 24) + 24) = 5;
      *(v121 + *(v122 - 24) + 16) = 3;
      v123 = std::ostream::operator<<();
      sub_100007774(v123);
      sub_100007774(buf);
      v124 = v148;
      if (v148 != v149)
      {
        do
        {
          v125 = sub_100792434(*(v124 + 7));
          strlen(v125);
          v126 = sub_100007774(buf);
          sub_100007774(v126);
          v127 = std::ostream::operator<<();
          v128 = sub_100007774(v127);
          v129 = *v128;
          *(v128 + *(*v128 - 24) + 24) = 5;
          *(v128 + *(v129 - 24) + 16) = 3;
          v130 = std::ostream::operator<<();
          sub_100007774(v130);
          v131 = v124[1];
          if (v131)
          {
            do
            {
              v132 = v131;
              v131 = *v131;
            }

            while (v131);
          }

          else
          {
            do
            {
              v132 = v124[2];
              v18 = *v132 == v124;
              v124 = v132;
            }

            while (!v18);
          }

          v124 = v132;
        }

        while (v132 != v149);
      }

      v133 = qword_100BCE900;
      if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_DEFAULT))
      {
        std::stringbuf::str();
        if (v151 >= 0)
        {
          v134 = v150;
        }

        else
        {
          v134 = *v150;
        }

        *v152 = 136315138;
        v153 = v134;
        _os_log_impl(&_mh_execute_header, v133, OS_LOG_TYPE_DEFAULT, "statedump: _retrieveRecentDevicesInfo stats reported: %s", v152, 0xCu);
        if (v151 < 0)
        {
          operator delete(*v150);
        }

        v133 = qword_100BCE900;
      }

      if (os_log_type_enabled(v133, OS_LOG_TYPE_DEFAULT))
      {
        std::stringbuf::str();
        if (v151 >= 0)
        {
          v135 = v150;
        }

        else
        {
          v135 = *v150;
        }

        *v152 = 136315138;
        v153 = v135;
        _os_log_impl(&_mh_execute_header, v133, OS_LOG_TYPE_DEFAULT, "statedump: _retrieveRecentDevicesInfo time buckets: %s", v152, 0xCu);
        if (v151 < 0)
        {
          operator delete(*v150);
        }

        v133 = qword_100BCE900;
      }

      if (os_log_type_enabled(v133, OS_LOG_TYPE_DEFAULT))
      {
        *v150 = 138477827;
        *&v150[4] = v144;
        _os_log_impl(&_mh_execute_header, v133, OS_LOG_TYPE_DEFAULT, "statedump: _retrieveRecentDevicesInfo return dict: %{private}@", v150, 0xCu);
      }

      if (SHIBYTE(v158) < 0)
      {
        operator delete(v157[1]);
      }

      std::locale::~locale(&buf[2]);
      std::ostream::~ostream();
      std::ios::~ios();
    }

    v136 = sub_10000F034();
    (*(*v136 + 736))(v136, v146);
    if (SHIBYTE(v174) < 0)
    {
      operator delete(v173[1]);
    }

    std::locale::~locale(&__p[2]);
    std::ostream::~ostream();
    std::ios::~ios();

    for (n = 72; n != -24; n -= 24)
    {
      sub_100798814((&v199[-1] + n));
    }

    sub_10000CEDC(&v148, v149[0]);
  }

  return v144;
}

void sub_100795510(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  sub_1003B8618(&a37);
  sub_1003B8618(&__p);

  for (i = 72; i != -24; i -= 24)
  {
    sub_100798814((v71 - 256 + i));
  }

  sub_10000CEDC(&a28, a29);

  _Unwind_Resume(a1);
}

uint64_t sub_10079577C(uint64_t a1)
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
  sub_100008760(&v8);
  sub_100007774(&v8);
  v2 = *(a1 + 36);
  if (v2 <= 2)
  {
    if (v2 == 1 || v2 == 2)
    {
      v3 = &v8;
      goto LABEL_11;
    }

LABEL_8:
    v3 = sub_100007774(&v8);
    goto LABEL_11;
  }

  if (v2 != 3)
  {
    if (v2 == 4)
    {
      v3 = &v8;
      goto LABEL_11;
    }

    goto LABEL_8;
  }

  v3 = &v8;
LABEL_11:
  sub_100007774(v3);
  v4 = sub_100007774(&v8);
  sub_100007774(v4);
  std::ostream::operator<<();
  v5 = sub_100007774(&v8);
  sub_100007774(v5);
  sub_100007774(&v8);
  if (*a1 <= 0.0)
  {
    sub_100007774(&v8);
  }

  else
  {
    CFAbsoluteTimeGetCurrent();
    v6 = std::ostream::operator<<();
    sub_100007774(v6);
  }

  std::stringbuf::str();
  if (SHIBYTE(v11) < 0)
  {
    operator delete(__p[1]);
  }

  std::locale::~locale(v9);
  std::ostream::~ostream();
  return std::ios::~ios();
}

id sub_100795AEC(void *a1, unsigned int a2)
{
  v4 = objc_opt_new();
  if (_os_feature_enabled_impl())
  {
    v14[0] = 0;
    v14[1] = 0;
    sub_100007F88(v14, (a1 + 12));
    v13[0] = v13;
    v13[1] = v13;
    v13[2] = 0;
    v5 = a1[27];
    if (v5 != a1 + 26)
    {
      v6 = a1[22];
      v7 = sub_10004DF60((v5 + 16));
      v8 = [v6 objectForKey:v7];

      sub_1007938A0(v8, &v12);
      operator new();
    }

    if (a1[34] != a1 + 33)
    {
      sub_100799900();
    }

    sub_1007999A8(v11, v13);
    v9 = sub_100793A90(a1, v11, a2);

    sub_100798814(v11);
    sub_100798814(v13);
    sub_1000088CC(v14);
    v4 = v9;
  }

  return v4;
}

void sub_100795CE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, char a24)
{
  sub_100798814(&a9);
  sub_100798814(&a21);
  sub_1000088CC(&a24);

  _Unwind_Resume(a1);
}

void sub_100795D54(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if (*(a1 + 360) == a2)
  {
    v14 = v5;
    v15 = v6;
    v11 = sub_100007EE8();
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100795E00;
    v12[3] = &unk_100AF6B90;
    v13 = a3;
    v12[4] = a1;
    v12[5] = a4;
    v12[6] = a5;
    sub_10000CA94(v11, v12);
  }
}

void sub_100795E00(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = 60 * arc4random_uniform(0xCu) + 720;
  *(v2 + 380) = v3;
  v4 = qword_100BCE900;
  if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 56);
    v6 = *(a1 + 40);
    v7 = *(a1 + 48);
    v11[0] = 67109888;
    v11[1] = v5;
    v12 = 2048;
    v13 = v6;
    v14 = 2048;
    v15 = v7;
    v16 = 1024;
    v17 = v3 / 0x3Cu;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[BTGlobalTCCNames] LeDeviceManager::leScanComplete result:%d totalRXTimeMS:%llu BtMCRxTimeMS%llu nextScan in %d hours", v11, 0x22u);
  }

  if (qword_100B50B88 != -1)
  {
    sub_1008734C0();
  }

  v8 = qword_100B50B80;
  v9 = sub_100011794(*(v2 + 360));
  v10 = sub_100079604(v8, v9);
  *(v2 + 360) = 0;
  if (v10)
  {
    if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_ERROR))
    {
      sub_100873FC4();
    }
  }
}

uint64_t sub_100795F74(uint64_t a1)
{
  if (qword_100B50910 != -1)
  {
    sub_1008734AC();
  }

  v2 = *(off_100B50908 + 63);
  if (v2 == 0.0)
  {
    v3 = 9999;
  }

  else
  {
    v3 = ((CFAbsoluteTimeGetCurrent() - v2) / 60.0);
  }

  v4 = qword_100BCE900;
  if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 383);
    v6 = *(a1 + 329);
    v7 = *(a1 + 384);
    v8 = *(a1 + 385);
    v9 = *(a1 + 376);
    v11[0] = 67110400;
    v11[1] = v5;
    v12 = 1024;
    v13 = v6;
    v14 = 1024;
    v15 = v7;
    v16 = 1024;
    v17 = v8;
    v18 = 1024;
    v19 = v9;
    v20 = 1024;
    v21 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[BTGlobalTCCNames] LeDeviceManager::checkForBTTCCNamesCache fScreenState:%d fStackStarted:%d fDeviceFirstUnlocked:%d fDeviceLocked:%d fNameSearchActiveScanCounter:%d LastActiveScanTime:%d minutes ago", v11, 0x26u);
  }

  return 0;
}

uint64_t sub_1007960B8(uint64_t a1)
{
  v2 = qword_100BCE900;
  if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(__p[0]) = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "[BTGlobalTCCNames] LeDeviceManager::startNameScan", __p, 2u);
  }

  if (*(a1 + 360))
  {
    if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_ERROR))
    {
      sub_100874044();
    }

    return 12;
  }

  v10 = 0;
  if (qword_100B50B88 != -1)
  {
    sub_1008734C0();
  }

  v3 = qword_100B50B80;
  sub_100007E30(__p, [*(a1 + 368) UTF8String]);
  v4 = sub_100044414(v3, __p);
  v5 = v4;
  if (v9 < 0)
  {
    operator delete(__p[0]);
    if (v5)
    {
LABEL_10:
      if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_ERROR))
      {
        sub_1008740B4();
      }

      return 12;
    }
  }

  else if (v4)
  {
    goto LABEL_10;
  }

  if (qword_100B50B88 != -1)
  {
    sub_1008734C0();
  }

  v7 = sub_1000117DC(qword_100B50B80, v10);
  *(a1 + 360) = v7;
  if (!v7)
  {
    if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_ERROR))
    {
      sub_1008740F0();
    }

    return 12;
  }

  if (*(a1 + 329) == 1)
  {
    operator new();
  }

  return 0;
}

uint64_t sub_100796320(uint64_t a1)
{
  v2 = qword_100BCE900;
  if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "[BTGlobalTCCNames] LeDeviceManager::stopNameScan", v7, 2u);
  }

  if (*(a1 + 360))
  {
    if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_ERROR))
    {
      sub_100874044();
    }

    return 12;
  }

  else
  {
    if (*(a1 + 329) == 1)
    {
      if (qword_100B51078 != -1)
      {
        sub_1008733BC();
      }

      if (sub_100023EC0(off_100B51070, *(a1 + 360), 1, 1, 0) && os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_ERROR))
      {
        sub_10087412C();
      }
    }

    if (qword_100B50B88 != -1)
    {
      sub_1008734C0();
    }

    v4 = qword_100B50B80;
    v5 = sub_100011794(*(a1 + 360));
    v3 = sub_100079604(v4, v5);
    if (v3 && os_log_type_enabled(qword_100BCEA18, OS_LOG_TYPE_ERROR))
    {
      sub_10087419C();
    }

    *(a1 + 360) = 0;
  }

  return v3;
}

uint64_t sub_1007964A4(uint64_t a1, void *a2)
{
  v3 = a2;
  v148[0] = 0;
  v148[1] = 0;
  sub_100007F88(v148, a1 + 96);
  v4 = sub_10004B1D8(a1, v3);
  *v246 = 0u;
  v247 = 0u;
  *v244 = 0u;
  memset(v245, 0, sizeof(v245));
  memset(v243, 0, sizeof(v243));
  v241 = 0u;
  *v242 = 0u;
  *v239 = 0u;
  v240 = 0u;
  memset(v238, 0, sizeof(v238));
  v236 = 0u;
  *__p = 0u;
  v234 = 0u;
  v235 = 0u;
  data = 0u;
  v233 = 0u;
  *&__dst[3] = 0;
  *__dst = 0;
  v144 = 0;
  v145 = 0;
  v146 = 0;
  *v230 = xmmword_1008A4D28;
  LODWORD(v231) = 0;
  sub_10000D03C(buf, v230);
  sub_10000CDB8(&v144, buf);
  v230[1] = 0;
  v230[0] = 0;
  v231 = 0;
  *v228 = xmmword_1008A4D3C;
  v229 = 0;
  sub_10000D03C(buf, v228);
  sub_10000CDB8(v230, buf);
  if (*(v4 + 357) == 1)
  {
    v5 = qword_100BCE900;
    if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Identification - metric has already been updated", buf, 2u);
    }

    v6 = 3;
    goto LABEL_240;
  }

  if (qword_100B50900 != -1)
  {
    sub_10087420C();
  }

  if (sub_10070BFF0(qword_100B508F8, v3, &v144, 1, 0, 0))
  {
    BYTE3(data) = 1;
  }

  else
  {
    if (qword_100B50900 != -1)
    {
      sub_10087420C();
    }

    if (!sub_10070BFF0(qword_100B508F8, v3, v230, 1, 0, 0))
    {
      v22 = qword_100BCE900;
      if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Identification - le metric only send for HIDs and GHSS, returning", buf, 2u);
      }

      v6 = 1;
      goto LABEL_240;
    }

    BYTE8(v247) = 1;
  }

  if (*(v4 + 359))
  {
    v7 = *(v4 + 24);
    if (v7)
    {
      *&v228[4] = 0;
      *v228 = 0;
      v8 = sub_1002D3618(v7);
      *v228 = v8;
      *&v228[4] = WORD2(v8);
      LOWORD(data) = v8;
      BYTE2(data) = BYTE2(v8);
      v9 = qword_100BCE900;
      if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 68289538;
        *&buf[4] = 6;
        *&buf[8] = 2098;
        *&buf[10] = v228;
        *&buf[18] = 1042;
        *&buf[20] = 3;
        *&buf[24] = 2098;
        p_data = &data;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Identification - device has resolved address %{public}.6P and OUI %{public}.3P", buf, 0x22u);
        v9 = qword_100BCE900;
      }

      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = BYTE6(v7) == 1;
        v11 = (v7 >> 40) & 0xC0;
        if (v11)
        {
          v12 = 0;
        }

        else
        {
          v12 = BYTE6(v7) == 1;
        }

        v13 = v11 != 128 && BYTE6(v7) == 1;
        *buf = 67110144;
        *&buf[4] = BYTE6(v7) == 0;
        if (BYTE6(v7))
        {
          v14 = v13;
        }

        else
        {
          v14 = 1;
        }

        *&buf[8] = 1024;
        v15 = v11 == 64 && BYTE6(v7) == 1;
        *&buf[10] = v15;
        *&buf[14] = 1024;
        if (v11 != 192)
        {
          v10 = 0;
        }

        *&buf[16] = v10;
        *&buf[20] = 1024;
        *&buf[22] = v12;
        LOWORD(p_data) = 1024;
        *(&p_data + 2) = v14;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Identification - le device has address type %d, %d, %d, %d, %d", buf, 0x20u);
      }

      LOWORD(data) = -1;
      BYTE2(data) = -1;
    }

    else
    {
      v7 = *(v4 + 16);
      if (BYTE6(v7))
      {
        v30 = qword_100BCE900;
        if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_DEFAULT))
        {
          v31 = BYTE6(v7) == 1;
          v32 = (v7 >> 40) & 0xC0;
          if (v32)
          {
            v33 = 0;
          }

          else
          {
            v33 = BYTE6(v7) == 1;
          }

          *buf = 67110144;
          *&buf[4] = 0;
          v34 = v32 == 64 && BYTE6(v7) == 1;
          *&buf[8] = 1024;
          *&buf[10] = v34;
          v35 = v32 == 192 && BYTE6(v7) == 1;
          *&buf[14] = 1024;
          *&buf[16] = v35;
          if (v32 == 128)
          {
            v31 = 0;
          }

          *&buf[20] = 1024;
          *&buf[22] = v33;
          LOWORD(p_data) = 1024;
          *(&p_data + 2) = v31;
          _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "Identification - le device has address type %d, %d, %d, %d, %d, can not generate metric", buf, 0x20u);
        }

        memset(buf, 0, 24);
        if (qword_100B508D0 != -1)
        {
          sub_10087303C();
        }

        sub_10004FFDC(off_100B508C8, v3, buf);
        v36 = std::string::compare(buf, "Arc Touch BT Mouse");
        if (v36)
        {
          *(v4 + 368) = 0;
        }

        else
        {
          v133 = qword_100BCE900;
          if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_DEFAULT))
          {
            *v228 = 0;
            _os_log_impl(&_mh_execute_header, v133, OS_LOG_TYPE_DEFAULT, "HIDIdentification - WAR for Arc Touch BT Mouse Identification", v228, 2u);
          }

          LOWORD(data) = -1;
          BYTE2(data) = -1;
        }

        if ((buf[23] & 0x80000000) != 0)
        {
          operator delete(*buf);
        }

        if (v36)
        {
          v6 = 2;
          goto LABEL_240;
        }
      }

      else
      {
        *&v228[4] = 0;
        *v228 = 0;
        v131 = sub_1002D3618(v7);
        *v228 = v131;
        *&v228[4] = WORD2(v131);
        LOWORD(data) = v131;
        BYTE2(data) = BYTE2(v131);
        v132 = qword_100BCE900;
        if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 68289538;
          *&buf[4] = 6;
          *&buf[8] = 2098;
          *&buf[10] = v228;
          *&buf[18] = 1042;
          *&buf[20] = 3;
          *&buf[24] = 2098;
          p_data = &data;
          _os_log_impl(&_mh_execute_header, v132, OS_LOG_TYPE_DEFAULT, "Identification - device has public address %{public}.6P and OUI %{public}.3P", buf, 0x22u);
        }
      }
    }

    if (qword_100B512F8 != -1)
    {
      sub_100872F74();
    }

    sub_1003ADE54(off_100B512F0, v3);
    v142 = 0u;
    v143 = 0u;
    v140 = 0u;
    v16 = v141 = 0u;
    v17 = [v16 countByEnumeratingWithState:&v140 objects:v227 count:16];
    if (v17)
    {
      v18 = *v141;
LABEL_38:
      v19 = 0;
      while (1)
      {
        if (*v141 != v18)
        {
          objc_enumerationMutation(v16);
        }

        v20 = *(*(&v140 + 1) + 8 * v19);
        if (([v20 isEqualToString:@"com.apple.BTLEServer"] & 1) == 0 && (objc_msgSend(v20, "isEqualToString:", @"com.apple.Preferences") & 1) == 0)
        {
          break;
        }

        if (v17 == ++v19)
        {
          v17 = [v16 countByEnumeratingWithState:&v140 objects:v227 count:16];
          if (v17)
          {
            goto LABEL_38;
          }

          goto LABEL_45;
        }
      }

      v136 = v20;

      if (!v136)
      {
        goto LABEL_58;
      }

      v23 = qword_100BCE900;
      if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        *&buf[4] = v136;
        *&buf[12] = 2114;
        *&buf[14] = v3;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "%{public}@ bundleid found for uuid %{public}@", buf, 0x16u);
      }

      v24 = v136;
      sub_100007E30(buf, [v136 UTF8String]);
      if (SHIBYTE(v238[0]) < 0)
      {
        operator delete(__p[0]);
      }

      *__p = *buf;
      v238[0] = *&buf[16];
    }

    else
    {
LABEL_45:

LABEL_58:
      v25 = qword_100BCE900;
      if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        *&buf[4] = v3;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "No bundleid found for uuid %{public}@", buf, 0xCu);
      }

      v136 = 0;
    }

    v26 = *(v4 + 336);
    v135 = v26;
    if (v26)
    {
      v27 = v26;
      memcpy(__dst, [v135 bytes], objc_msgSend(v135, "length"));
      v28 = __dst[0];
      v29 = *&__dst[1];
      DWORD2(v234) = __dst[0];
      HIDWORD(v234) = *&__dst[1];
      LODWORD(v235) = *&__dst[3];
      DWORD1(v235) = *&__dst[5];
    }

    else
    {
      v28 = DWORD2(v234);
      v29 = HIDWORD(v234);
    }

    if (v28 == 2 && v29 == 1452 || (v134 = 0, v28 == 1) && v29 == 76)
    {
      v37 = qword_100BCE900;
      if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "Overriding LE OUI for apple devices", buf, 2u);
        v28 = DWORD2(v234);
        v29 = HIDWORD(v234);
      }

      LOWORD(data) = 2560;
      BYTE2(data) = 39;
      v134 = 1;
    }

    if (v28 == 2 && v29 == 1118)
    {
      v38 = qword_100BCE900;
      if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "Overriding LE OUI for MSFT devices", buf, 2u);
      }

      LOWORD(data) = 7664;
      BYTE2(data) = -68;
    }

    if (qword_100B508D0 != -1)
    {
      sub_10087303C();
    }

    sub_10004FFDC(off_100B508C8, v3, buf);
    if (SBYTE7(v247) < 0)
    {
      operator delete(v246[0]);
    }

    *&v247 = *&buf[16];
    *v246 = *buf;
    v39 = buf[23];
    if (buf[23] >= 0)
    {
      v40 = v246;
    }

    else
    {
      v40 = v246[0];
    }

    if (buf[23] < 0)
    {
      v39 = v246[1];
    }

    buf[0] = 13;
    v41 = sub_100545740(v40, &v39[v40], buf);
    v42 = v246 + BYTE7(v247);
    if ((SBYTE7(v247) & 0x80u) == 0)
    {
      v43 = v246;
    }

    else
    {
      v42 = v246[0] + v246[1];
      v43 = v246[0];
    }

    std::string::erase(v246, v41 - v43, v42 - v41);
    v44 = BYTE7(v247);
    if ((SBYTE7(v247) & 0x80u) == 0)
    {
      v45 = v246;
    }

    else
    {
      v45 = v246[0];
    }

    if (SBYTE7(v247) < 0)
    {
      v44 = v246[1];
    }

    buf[0] = 10;
    v46 = sub_100545740(v45, &v44[v45], buf);
    v47 = v246 + BYTE7(v247);
    if ((SBYTE7(v247) & 0x80u) == 0)
    {
      v48 = v246;
    }

    else
    {
      v47 = v246[0] + v246[1];
      v48 = v246[0];
    }

    std::string::erase(v246, v46 - v48, v47 - v46);
    v49 = BYTE7(v247);
    if ((SBYTE7(v247) & 0x80u) == 0)
    {
      v50 = v246;
    }

    else
    {
      v50 = v246[0];
    }

    if (SBYTE7(v247) < 0)
    {
      v49 = v246[1];
    }

    buf[0] = 44;
    v51 = sub_100545740(v50, &v49[v50], buf);
    v52 = v246 + BYTE7(v247);
    if ((SBYTE7(v247) & 0x80u) == 0)
    {
      v53 = v246;
    }

    else
    {
      v52 = v246[0] + v246[1];
      v53 = v246[0];
    }

    std::string::erase(v246, v51 - v53, v52 - v51);
    v139 = 0;
    sub_1000216B4(&v139);
    *&v228[3] = 0;
    *v228 = 0;
    v54 = sub_10009A66C(v7);
    *v228 = v54;
    v228[6] = BYTE6(v54);
    *&v228[4] = WORD2(v54);
    if (sub_1000E5E28(v228, &data + 2, &data + 8, &data + 3) && os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_ERROR))
    {
      sub_100874234();
    }

    if (sub_10023DDEC(v228, &v236) && os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_ERROR))
    {
      sub_1008742A4();
    }

    sub_100022214(&v139);
    v55 = *(v4 + 272);
    v56 = v55 == 0;

    if (!v56)
    {
      v57 = *(v4 + 272);
      v58 = v57;
      sub_100007E30(buf, [v57 UTF8String]);
      if (SHIBYTE(v238[3]) < 0)
      {
        operator delete(v238[1]);
      }

      *&v238[1] = *buf;
      v238[3] = *&buf[16];
      buf[23] = 0;
      buf[0] = 0;
    }

    v59 = *(v4 + 280);
    v60 = v59 == 0;

    if (!v60)
    {
      v61 = *(v4 + 280);
      v62 = v61;
      sub_100007E30(buf, [v61 UTF8String]);
      if (SBYTE7(v240) < 0)
      {
        operator delete(v239[0]);
      }

      *v239 = *buf;
      *&v240 = *&buf[16];
      buf[23] = 0;
      buf[0] = 0;
    }

    v63 = *(v4 + 296);
    v64 = v63 == 0;

    if (!v64)
    {
      v65 = *(v4 + 296);
      v66 = v65;
      sub_100007E30(buf, [v65 UTF8String]);
      if (SHIBYTE(v243[0]) < 0)
      {
        operator delete(v242[0]);
      }

      *v242 = *buf;
      v243[0] = *&buf[16];
      buf[23] = 0;
      buf[0] = 0;
    }

    v67 = *(v4 + 304);
    v68 = v67 == 0;

    if (!v68)
    {
      v69 = *(v4 + 304);
      v70 = v69;
      sub_100007E30(buf, [v69 UTF8String]);
      if (SHIBYTE(v243[3]) < 0)
      {
        operator delete(v243[1]);
      }

      *&v243[1] = *buf;
      v243[3] = *&buf[16];
      buf[23] = 0;
      buf[0] = 0;
    }

    v71 = *(v4 + 312);
    v72 = v71 == 0;

    if (!v72)
    {
      v73 = *(v4 + 312);
      v74 = v73;
      sub_100007E30(buf, [v73 UTF8String]);
      if (SBYTE7(v245[0]) < 0)
      {
        operator delete(v244[0]);
      }

      *v244 = *buf;
      *&v245[0] = *&buf[16];
      buf[23] = 0;
      buf[0] = 0;
    }

    v75 = BYTE7(v247);
    if ((SBYTE7(v247) & 0x80u) == 0)
    {
      v76 = v246;
    }

    else
    {
      v76 = v246[0];
    }

    if (SBYTE7(v247) < 0)
    {
      v75 = v246[1];
    }

    buf[0] = 13;
    v77 = sub_100545740(v76, &v75[v76], buf);
    v78 = v246 + BYTE7(v247);
    if ((SBYTE7(v247) & 0x80u) == 0)
    {
      v79 = v246;
    }

    else
    {
      v78 = v246[0] + v246[1];
      v79 = v246[0];
    }

    std::string::erase(v246, v77 - v79, v78 - v77);
    v80 = BYTE7(v247);
    if ((SBYTE7(v247) & 0x80u) == 0)
    {
      v81 = v246;
    }

    else
    {
      v81 = v246[0];
    }

    if (SBYTE7(v247) < 0)
    {
      v80 = v246[1];
    }

    buf[0] = 10;
    v82 = sub_100545740(v81, &v80[v81], buf);
    v83 = v246 + BYTE7(v247);
    if ((SBYTE7(v247) & 0x80u) == 0)
    {
      v84 = v246;
    }

    else
    {
      v83 = v246[0] + v246[1];
      v84 = v246[0];
    }

    std::string::erase(v246, v82 - v84, v83 - v82);
    v85 = BYTE7(v247);
    if ((SBYTE7(v247) & 0x80u) == 0)
    {
      v86 = v246;
    }

    else
    {
      v86 = v246[0];
    }

    if (SBYTE7(v247) < 0)
    {
      v85 = v246[1];
    }

    buf[0] = 44;
    v87 = sub_100545740(v86, &v85[v86], buf);
    v88 = v246 + BYTE7(v247);
    if ((SBYTE7(v247) & 0x80u) == 0)
    {
      v89 = v246;
    }

    else
    {
      v88 = v246[0] + v246[1];
      v89 = v246[0];
    }

    std::string::erase(v246, v87 - v89, v88 - v87);
    v90 = HIBYTE(v238[0]);
    if (SHIBYTE(v238[0]) < 0)
    {
      v90 = __p[1];
    }

    v91 = HIBYTE(v238[3]);
    if (SHIBYTE(v238[3]) < 0)
    {
      v91 = v238[2];
    }

    v92 = &v91[v90];
    v93 = BYTE7(v240);
    if (SBYTE7(v240) < 0)
    {
      v93 = v239[1];
    }

    v94 = malloc_type_calloc(v93 + v92 + 80, 1uLL, 0x100004077774924uLL);
    v95 = v94;
    *v94 = data;
    v96 = v233;
    v97 = v234;
    v98 = v236;
    *(v94 + 3) = v235;
    *(v94 + 4) = v98;
    *(v94 + 1) = v96;
    *(v94 + 2) = v97;
    if (v134)
    {
      v99 = 80;
    }

    else
    {
      if (SHIBYTE(v238[0]) >= 0)
      {
        v100 = __p;
      }

      else
      {
        v100 = __p[0];
      }

      if (SHIBYTE(v238[0]) >= 0)
      {
        v101 = HIBYTE(v238[0]);
      }

      else
      {
        v101 = __p[1];
      }

      memcpy(v94 + 80, v100, v101);
      v102 = HIBYTE(v238[0]);
      if (SHIBYTE(v238[0]) < 0)
      {
        v102 = __p[1];
      }

      v99 = (v102 + 80);
    }

    if (SHIBYTE(v238[3]) >= 0)
    {
      v103 = &v238[1];
    }

    else
    {
      v103 = v238[1];
    }

    if (SHIBYTE(v238[3]) >= 0)
    {
      v104 = HIBYTE(v238[3]);
    }

    else
    {
      v104 = v238[2];
    }

    memcpy(&v95[v99], v103, v104);
    v105 = HIBYTE(v238[3]);
    if (SHIBYTE(v238[3]) < 0)
    {
      v105 = v238[2];
    }

    v106 = v105 + v99;
    if ((SBYTE7(v240) & 0x80u) == 0)
    {
      v107 = v239;
    }

    else
    {
      v107 = v239[0];
    }

    if ((SBYTE7(v240) & 0x80u) == 0)
    {
      v108 = BYTE7(v240);
    }

    else
    {
      v108 = v239[1];
    }

    memcpy(&v95[v106], v107, v108);
    v109 = BYTE7(v240);
    if (SBYTE7(v240) < 0)
    {
      v109 = v239[1];
    }

    v110 = v109 + v106;
    CC_SHA1(&data, v110, v245 + 8);
    v111 = qword_100BCE900;
    if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68157954;
      *&buf[4] = v110;
      *&buf[8] = 2098;
      *&buf[10] = &data;
      _os_log_impl(&_mh_execute_header, v111, OS_LOG_TYPE_DEFAULT, "Identification - LE raw serialized data dump {%{public}.*P}", buf, 0x12u);
      v111 = qword_100BCE900;
    }

    if (os_log_type_enabled(v111, OS_LOG_TYPE_DEFAULT))
    {
      v112 = &v240 + 8;
      if ((SBYTE7(v247) & 0x80u) == 0)
      {
        v113 = v246;
      }

      else
      {
        v113 = v246[0];
      }

      v114 = __p[0];
      if (SHIBYTE(v238[0]) >= 0)
      {
        v114 = __p;
      }

      if (v241 < 0)
      {
        v112 = *(&v240 + 1);
      }

      v115 = v238[1];
      if (SHIBYTE(v238[3]) >= 0)
      {
        v115 = &v238[1];
      }

      if ((SBYTE7(v240) & 0x80u) == 0)
      {
        v116 = v239;
      }

      else
      {
        v116 = v239[0];
      }

      v117 = v242;
      if (SHIBYTE(v243[0]) < 0)
      {
        v117 = v242[0];
      }

      v118 = &v243[1];
      if (SHIBYTE(v243[3]) < 0)
      {
        v118 = v243[1];
      }

      v119 = v244[0];
      if ((SBYTE7(v245[0]) & 0x80u) == 0)
      {
        v119 = v244;
      }

      *&buf[4] = 20;
      *&buf[20] = 3;
      p_data = &data;
      v152 = v113;
      v154 = WORD2(data);
      v156 = BYTE8(data);
      v158 = WORD3(data);
      v162 = &v236;
      *&buf[18] = 1042;
      v159 = 1042;
      v163 = 1042;
      v160 = 8;
      v164 = 8;
      *&buf[8] = 2098;
      *&buf[24] = 2098;
      v161 = 2098;
      v165 = 2098;
      v166 = &v236 + 8;
      v168 = HIDWORD(v235);
      v170 = WORD5(data);
      v172 = WORD6(data);
      v174 = HIWORD(data);
      v176 = v233;
      v178 = WORD1(v233);
      v180 = WORD2(v233);
      v182 = WORD3(v233);
      v184 = WORD4(v233);
      v186 = WORD5(v233);
      v188 = WORD6(v233);
      v190 = HIWORD(v233);
      v192 = v234;
      v194 = WORD1(v234);
      v196 = WORD2(v234);
      v198 = WORD3(v234);
      v202 = HIDWORD(v234);
      v200 = DWORD2(v234);
      v218 = v116;
      v220 = v117;
      v222 = v118;
      v226 = BYTE8(v247);
      v206 = DWORD1(v235);
      v204 = v235;
      v208 = DWORD2(v235);
      v210 = BYTE3(data);
      v212 = v114;
      v214 = v112;
      v216 = v115;
      v151 = 2082;
      v211 = 2082;
      v213 = 2082;
      v215 = 2082;
      v217 = 2082;
      v219 = 2082;
      v221 = 2082;
      v223 = 2082;
      v224 = v119;
      v153 = 1024;
      v155 = 1024;
      v157 = 1024;
      v167 = 1024;
      v169 = 1024;
      v171 = 1024;
      v173 = 1024;
      v175 = 1024;
      v177 = 1024;
      v179 = 1024;
      v181 = 1024;
      v183 = 1024;
      v185 = 1024;
      v187 = 1024;
      v189 = 1024;
      v191 = 1024;
      v193 = 1024;
      v195 = 1024;
      v197 = 1024;
      v199 = 1024;
      v201 = 1024;
      v203 = 1024;
      v205 = 1024;
      v207 = 1024;
      v209 = 1024;
      v225 = 1024;
      *buf = 68299266;
      *&buf[10] = v245 + 8;
      _os_log_impl(&_mh_execute_header, v111, OS_LOG_TYPE_DEFAULT, "Identification - generating LE metric {%{public}.20P, %{public}.3P, %{public}s, 0x%x, 0x%x, 0x%x, %{public}.8P, %{public}.8P, 0x%x, 0x%x, 0x%x, 0x%x, 0x%x, 0x%x, 0x%x, 0x%x, 0x%x, 0x%x, 0x%x, 0x%x, 0x%x, 0x%x, 0x%x, 0x%x, 0x%x, 0x%x, 0x%x, 0x%x, 0x%x, %d, %{public}s, %{public}s, %{public}s, %{public}s, %{public}s, %{public}s, %{public}s, %d}", buf, 0x12Eu);
    }

    free(v95);
    v120 = sub_10000E92C();
    if ((*(*v120 + 8))(v120) && (WORD1(v234) || BYTE3(data)))
    {
      v128 = qword_100BCE900;
      if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_DEFAULT))
      {
        v129 = sub_10000E92C();
        v130 = (*(*v129 + 8))(v129);
        *buf = 67109376;
        *&buf[4] = v130;
        *&buf[8] = 1024;
        *&buf[10] = BYTE3(data);
        _os_log_impl(&_mh_execute_header, v128, OS_LOG_TYPE_DEFAULT, "Identification - routing LE friendly name: internal %d, le hid service present %d", buf, 0xEu);
      }
    }

    else
    {
      v121 = qword_100BCE900;
      if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_DEFAULT))
      {
        v122 = sub_10000E92C();
        v123 = (*(*v122 + 8))(v122);
        *buf = 67109632;
        *&buf[4] = v123;
        *&buf[8] = 1024;
        *&buf[10] = BYTE3(data);
        *&buf[14] = 1024;
        *&buf[16] = BYTE8(v247);
        _os_log_impl(&_mh_execute_header, v121, OS_LOG_TYPE_DEFAULT, "Identification - clearing LE friendly name: internal %d, le hid service present %d, le ghs service present %d", buf, 0x14u);
      }

      if (SBYTE7(v247) < 0)
      {
        operator delete(v246[0]);
      }

      v246[0] = 0;
      v246[1] = 0;
      *&v247 = 0;
    }

    if (qword_100B508D0 != -1)
    {
      sub_10087303C();
    }

    v124 = off_100B508C8;
    sub_100007E30(v137, "LeIdentificationHashExist");
    sub_10078787C(v124, v3, v137);
    if (v138 < 0)
    {
      operator delete(v137[0]);
    }

    *(v4 + 357) = 1;
    v125 = [NSData dataWithBytes:v245 + 8 length:20];
    objc_storeStrong((v4 + 360), v125);

    sub_10000801C(v148);
    v126 = sub_10000F034();
    (*(*v126 + 232))(v126, &data);
    sub_10002249C(&v139);

    v6 = 0;
  }

  else
  {
    v21 = qword_100BCE900;
    if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Identification - DI not yet completed, returning", buf, 2u);
    }

    v6 = 4;
  }

LABEL_240:
  if (v230[0])
  {
    v230[1] = v230[0];
    operator delete(v230[0]);
  }

  if (v144)
  {
    v145 = v144;
    operator delete(v144);
  }

  sub_1000E3D14(&data);
  sub_1000088CC(v148);

  return v6;
}

void sub_100797B10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{
  v37 = STACK[0x2B0];
  if (STACK[0x2B0])
  {
    STACK[0x2B8] = v37;
    operator delete(v37);
  }

  if (a31)
  {
    operator delete(a31);
  }

  sub_1000E3D14(&STACK[0x2D0]);
  sub_1000088CC(&a35);

  _Unwind_Resume(a1);
}

uint64_t sub_100797C68(uint64_t a1)
{
  v62[0] = 0;
  v62[1] = 0;
  sub_100007F88(v62, a1 + 96);
  v1 = qword_100BCE900;
  if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "statedump: ------------------ LE Device Manager -------------------", buf, 2u);
  }

  *buf = 0;
  sub_100016250(buf);
  v2 = qword_100BCE900;
  v3 = a1;
  if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "statedump: Devices:", buf, 2u);
  }

  v61[0] = 0;
  v61[1] = 0;
  v60 = v61;
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  obj = *(a1 + 176);
  v4 = [obj countByEnumeratingWithState:&v56 objects:v85 count:16];
  if (v4)
  {
    v5 = *v57;
    v41 = *v57;
    do
    {
      v6 = 0;
      v43 = v4;
      do
      {
        if (*v57 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v56 + 1) + 8 * v6);
        v8 = [*(v3 + 176) objectForKey:v7];
        v55 = *(v8 + 15);
        *v64 = sub_100788D8C(v3, v7);
        *buf = v64;
        v9 = *(sub_100773E70(&v60, v64) + 16);
        *v64 = *(v8 + 93);
        *buf = v64;
        *(sub_100773E70(&v60, v64) + 16) = v9 + 1;
        v10 = qword_100BCE900;
        if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_DEFAULT))
        {
          sub_1000D4514(v8);
          if (v65 >= 0)
          {
            v11 = v64;
          }

          else
          {
            v11 = *v64;
          }

          sub_100773740(&v55);
          log = v10;
          if (v54 >= 0)
          {
            v12 = &v53;
          }

          else
          {
            v12 = v53;
          }

          v13 = v8[358];
          v14 = *(v8 + 93);
          v15 = v8[355];
          v16 = v8[356];
          v45 = v8[488];
          v17 = sub_10077B344(v8);
          v18 = sub_10077B320(v17);
          sub_10077BCE0(v8);
          p_p = &__p;
          if (v52 < 0)
          {
            p_p = __p;
          }

          *buf = 138545667;
          *&buf[4] = v7;
          v67 = 2082;
          v68 = v11;
          v69 = 2082;
          v70 = v12;
          v71 = 1024;
          v72 = v13;
          v73 = 1024;
          v74 = v14;
          v75 = 1024;
          v76 = v15;
          v77 = 1024;
          v78 = v16;
          v79 = 1024;
          v80 = v45;
          v81 = 2080;
          v82 = v18;
          v83 = 2081;
          v84 = p_p;
          _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "statedump:    %{public}@ → %{public}s (added to WL %{public}s ago) disableDisconnect:%d useCase:%d scanDutyCycle screenON:%d screenOFF:%d pendingDelete:%d type:%s FindMy:%{private}s ", buf, 0x52u);
          if (v52 < 0)
          {
            operator delete(__p);
          }

          v5 = v41;
          v3 = a1;
          v4 = v43;
          if (v54 < 0)
          {
            operator delete(v53);
          }

          if (v65 < 0)
          {
            operator delete(*v64);
          }
        }

        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [obj countByEnumeratingWithState:&v56 objects:v85 count:16];
    }

    while (v4);
  }

  v20 = qword_100BCE900;
  if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "statedump:    useCase map:", buf, 2u);
  }

  v21 = v60;
  if (v60 != v61)
  {
    v22 = qword_100BCE900;
    do
    {
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        v23 = sub_10002E6D4(*(v21 + 7));
        v24 = *(v21 + 16);
        *buf = 136446466;
        *&buf[4] = v23;
        v67 = 1024;
        LODWORD(v68) = v24;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "statedump:    \tuseCase:%{public}s count:%d", buf, 0x12u);
        v22 = qword_100BCE900;
      }

      v25 = v21[1];
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
          v26 = v21[2];
          v27 = *v26 == v21;
          v21 = v26;
        }

        while (!v27);
      }

      v21 = v26;
    }

    while (v26 != v61);
  }

  sub_100420378(*(a1 + 256));
  if (_os_feature_enabled_impl())
  {
    v28 = sub_10000E92C();
    if ((*(*v28 + 160))(v28))
    {
      v29 = qword_100BCE900;
      if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "statedump: Device name check:", buf, 2u);
      }

      sub_100795AEC(a1, 1u);
      v49 = 0u;
      v50 = 0u;
      v47 = 0u;
      v30 = v48 = 0u;
      v31 = [v30 countByEnumeratingWithState:&v47 objects:v63 count:16];
      if (v31)
      {
        v32 = *v48;
        do
        {
          for (i = 0; i != v31; i = i + 1)
          {
            if (*v48 != v32)
            {
              objc_enumerationMutation(v30);
            }

            v34 = qword_100BCE900;
            if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_DEFAULT))
            {
              v35 = [*(*(&v47 + 1) + 8 * i) objectForKeyedSubscript:@"mapLabelCalloutTitleKey"];
              *buf = 138412290;
              *&buf[4] = v35;
              _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "statedump:    %@", buf, 0xCu);
            }
          }

          v31 = [v30 countByEnumeratingWithState:&v47 objects:v63 count:16];
        }

        while (v31);
      }

      v36 = qword_100BCE900;
      if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "statedump: evicted devices:", buf, 2u);
      }

      for (j = *(a1 + 272); j != a1 + 264; j = *(j + 8))
      {
        v38 = qword_100BCE900;
        if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_DEFAULT))
        {
          sub_10079577C(j + 16);
          if (v69 >= 0)
          {
            v39 = buf;
          }

          else
          {
            v39 = *buf;
          }

          *v64 = 136380675;
          *&v64[4] = v39;
          _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "statedump:    %{private}s", v64, 0xCu);
          if (SHIBYTE(v69) < 0)
          {
            operator delete(*buf);
          }
        }
      }
    }
  }

  sub_10000CEDC(&v60, v61[0]);
  return sub_1000088CC(v62);
}

void sub_100798404(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, char a46, uint64_t a47, uint64_t a48, char a49)
{
  sub_10000CEDC(&a46, a47);
  sub_1000088CC(&a49);
  _Unwind_Resume(a1);
}

uint64_t sub_1007984B8(uint64_t a1)
{
  v18[0] = 0;
  v18[1] = 0;
  sub_100007F88(v18, a1 + 96);
  v21 = 0uLL;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v2 = *(a1 + 176);
  v3 = [v2 countByEnumeratingWithState:&v14 objects:v20 count:16];
  if (v3)
  {
    v4 = *v15;
    do
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v15 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v14 + 1) + 8 * i);
        v7 = [*(a1 + 176) objectForKey:{v6, __p[0], __p[1], v12, v13, v14}];
        v19 = 0uLL;
        [v6 getUUIDBytes:&v19];
        v21 = v19;
        if (v7[164] == 1)
        {
          *(&v13 + 3) = 0;
          LODWORD(v13) = 0;
          v8 = sub_10009A66C(*(v7 + 3));
          LODWORD(v13) = v8;
          BYTE6(v13) = BYTE6(v8);
          WORD2(v13) = WORD2(v8);
          if (v7[127] < 0)
          {
            sub_100008904(__p, *(v7 + 13), *(v7 + 14));
          }

          else
          {
            *__p = *(v7 + 104);
            v12 = *(v7 + 15);
          }

          if (v12 >= 0)
          {
            v9 = __p;
          }

          else
          {
            v9 = __p[0];
          }

          sub_1001C4BCC(&v13, v9, &v21);
          if (SHIBYTE(v12) < 0)
          {
            operator delete(__p[0]);
          }
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v14 objects:v20 count:16];
    }

    while (v3);
  }

  return sub_1000088CC(v18);
}

uint64_t sub_1007986D0(uint64_t a1, uint64_t a2)
{
  v5[0] = 0;
  v5[1] = 0;
  sub_100007F88(v5, a1 + 96);
  sub_100798734(a1 + 296, a2);
  return sub_1000088CC(v5);
}

void sub_100798734(uint64_t a1, uint64_t a2)
{
  os_unfair_lock_lock(a1);
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 != v4)
  {
    while (*v5 != a2)
    {
      v5 += 8;
      if (v5 == v4)
      {
        goto LABEL_6;
      }
    }
  }

  if (v5 == v4)
  {
LABEL_6:
    v6 = a2;
    sub_100799AA4((a1 + 8), v4, &v6);
    sub_1000C8CF0((a1 + 8));
  }

  os_unfair_lock_unlock(a1);
}

void sub_1007987C4(uint64_t a1)
{
  sub_100798DFC(a1);

  operator delete();
}

void sub_100798814(void **a1)
{
  if (a1[2])
  {
    v2 = a1[1];
    v3 = *(*a1 + 1);
    v4 = *v2;
    v4[1] = v3;
    *v3 = v4;
    a1[2] = 0;
    if (v2 != a1)
    {
      do
      {
        v5 = v2[1];
        sub_100798878(a1, v2);
        v2 = v5;
      }

      while (v5 != a1);
    }
  }
}

void sub_100798878(int a1, void **__p)
{
  if (*(__p + 47) < 0)
  {
    operator delete(__p[3]);
  }

  operator delete(__p);
}

void sub_1007988BC(uint64_t a1, uint64_t a2)
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
    sub_100798988((a1 + 8), v6, &v7);
    sub_1000C8CF0((a1 + 8));
  }

  os_unfair_lock_unlock(a1);
}

char *sub_100798988(void *a1, char *__src, char *a3)
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

void sub_100798B24(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100798B5C(uint64_t a1, uint64_t a2)
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
    sub_100798C28((a1 + 8), v6, &v7);
    sub_1000C8CF0((a1 + 8));
  }

  os_unfair_lock_unlock(a1);
}

char *sub_100798C28(void *a1, char *__src, char *a3)
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

void sub_100798DC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100798DFC(uint64_t a1)
{
  *a1 = off_100B0C480;
  *(a1 + 8) = off_100B0C530;
  *(a1 + 16) = off_100B0C550;
  *(a1 + 24) = off_100B0C578;
  *(a1 + 32) = &off_100B0C5A8;
  *(a1 + 40) = &off_100B0C5C0;
  *(a1 + 48) = &off_100B0C5D8;
  *(a1 + 56) = &off_100B0C5F0;
  *(a1 + 64) = off_100B0C608;
  *(a1 + 72) = &off_100B0C668;

  v2 = *(a1 + 304);
  if (v2)
  {
    *(a1 + 312) = v2;
    operator delete(v2);
  }

  sub_100798814((a1 + 264));
  sub_10000CEDC(a1 + 232, *(a1 + 240));
  sub_100028EB4((a1 + 208));
  sub_10000CEDC(a1 + 184, *(a1 + 192));

  sub_10007A068(a1 + 96);
  return a1;
}

void *sub_100799588(void *a1, unint64_t *a2, uint64_t a3)
{
  a1[1] = 0;
  v4 = a1 + 1;
  a1[2] = 0;
  *a1 = a1 + 1;
  if (a3)
  {
    v6 = 8 * a3;
    do
    {
      sub_100775FF0(a1, v4, a2++);
      v6 -= 8;
    }

    while (v6);
  }

  return a1;
}

void sub_100799608(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_100799608(a1, *a2);
    sub_100799608(a1, a2[1]);
    sub_100799664((a2 + 4));

    operator delete(a2);
  }
}

void sub_100799664(uint64_t a1)
{
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

uint64_t sub_1007996BC(uint64_t a1, const void **a2)
{
  v7 = 0;
  v2 = *sub_1000867EC(a1, &v7, a2);
  if (!v2)
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
    sub_100799770();
  }

  return v2;
}

uint64_t sub_100799814(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_100799664(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t sub_100799860(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  if (a1 != a2)
  {
    v7 = *(a3 + 8);
    v5 = a3 + 8;
    v6 = v7;
    v8 = *(v5 + 23);
    if (v8 >= 0)
    {
      v9 = *(v5 + 23);
    }

    else
    {
      v9 = *(v5 + 8);
    }

    if (v8 >= 0)
    {
      v10 = v5;
    }

    else
    {
      v10 = v6;
    }

    while (1)
    {
      v11 = *(v3 + 47);
      v12 = v11;
      if ((v11 & 0x80u) != 0)
      {
        v11 = *(v3 + 32);
      }

      if (v11 == v9)
      {
        v13 = v12 >= 0 ? (v3 + 24) : *(v3 + 24);
        if (!memcmp(v13, v10, v9))
        {
          break;
        }
      }

      v3 = *(v3 + 8);
      if (v3 == a2)
      {
        return a2;
      }
    }
  }

  return v3;
}

void *sub_1007999A8(void *result, uint64_t a2)
{
  *result = result;
  result[1] = result;
  result[2] = 0;
  if (*(a2 + 8) != a2)
  {
    sub_100799900();
  }

  return result;
}

char *sub_100799AA4(void *a1, char *__src, char *a3)
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

void sub_100799C40(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100799C78(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 8u);
}

void sub_100799C94()
{
  v0 = &byte_100BC7BF7;
  v1 = -160;
  v2 = &byte_100BC7BF7;
  do
  {
    v3 = *v2;
    v2 -= 32;
    if (v3 < 0)
    {
      operator delete(*(v0 - 23));
    }

    v0 = v2;
    v1 += 32;
  }

  while (v1);
}

void sub_100799CDC()
{
  v0 = objc_autoreleasePoolPush();
  v1 = sub_100007E30(&qword_100BC7B60, "CORSAIR HARPOON");
  *(v1 + 6) = 454826846;
  sub_100007E30(v1 + 32, "CORSAIR IRONCLAW");
  dword_100BC7B98 = 454826828;
  sub_100007E30(byte_100BC7BA0, "DARK CORE RGB PRO SE");
  dword_100BC7BB8 = 461249308;
  sub_100007E30(byte_100BC7BC0, "DARK CORE RGB PRO");
  dword_100BC7BD8 = 454826880;
  sub_100007E30(byte_100BC7BE0, "KATAR PRO Wireless");
  dword_100BC7BF8 = 454826926;
  __cxa_atexit(sub_100799C94, 0, &_mh_execute_header);

  objc_autoreleasePoolPop(v0);
}

uint64_t sub_100799DF8(uint64_t a1)
{
  *a1 = &off_100B0D338;
  *(a1 + 8) = off_100B0D370;
  *(a1 + 16) = &off_100B0BB20;
  *(a1 + 24) = &off_100B0BB50;
  *(a1 + 32) = &off_100B0BB98;
  *(a1 + 40) = &off_100B0BB68;
  *(a1 + 48) = off_100B0D3E0;
  v2 = (a1 + 56);
  sub_100007E30(&__p, "LeObserver");
  sub_1005B0B68(v2, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  *a1 = off_100B0CA18;
  *(a1 + 8) = &off_100B0CB18;
  *(a1 + 16) = off_100B0CB88;
  *(a1 + 24) = &off_100B0CBB8;
  *(a1 + 32) = off_100B0CBD0;
  *(a1 + 40) = off_100B0CC30;
  *(a1 + 48) = off_100B0CC60;
  *(a1 + 56) = &off_100B0CD20;
  *(a1 + 112) = &off_100B0CD38;
  *(a1 + 120) = &off_100B0CD50;
  *(a1 + 128) = &off_100B0CD68;
  *(a1 + 136) = &off_100B0CD98;
  *(a1 + 152) = 0;
  *(a1 + 1792) = 1;
  *(a1 + 1818) = 0;
  *(a1 + 1824) = 0;
  *(a1 + 1840) = 0u;
  *(a1 + 1816) = 0;
  *(a1 + 1800) = 0u;
  *(a1 + 1832) = a1 + 1840;
  *(a1 + 1856) = 1;
  *(a1 + 1858) = 0;
  *(a1 + 1864) = -16777216;
  *(a1 + 1868) = 0;
  *(a1 + 1870) = 0;
  *(a1 + 1872) = 0;
  *(a1 + 1888) = 0;
  *(a1 + 1896) = 0;
  *(a1 + 1952) = 0;
  *(a1 + 1936) = 0u;
  *(a1 + 1968) = 0u;
  *(a1 + 1920) = 0;
  *(a1 + 1928) = 0;
  *(a1 + 1904) = 0u;
  *(a1 + 1960) = a1 + 1968;
  *(a1 + 1984) = 0;
  *(a1 + 2032) = 0u;
  *(a1 + 2024) = a1 + 2032;
  *(a1 + 2072) = 0u;
  *(a1 + 2048) = 0u;
  *(a1 + 2064) = a1 + 2072;
  *(a1 + 2096) = 0u;
  *(a1 + 2088) = a1 + 2096;
  *(a1 + 2128) = 0;
  *(a1 + 2112) = 0u;
  *(a1 + 2136) = 0u;
  *(a1 + 2152) = 300000;
  *(a1 + 2192) = 0;
  *(a1 + 2200) = 0u;
  *(a1 + 2216) = 0u;
  *(a1 + 2230) = 0u;
  *(a1 + 2276) = 1;
  *(a1 + 2279) = 0;
  *(a1 + 2324) = 0;
  *(a1 + 2376) = 0;
  *(a1 + 2384) = 0;
  *(a1 + 2304) = 0;
  *(a1 + 2288) = 0u;
  *(a1 + 3248) = 0x700000003;
  *(a1 + 3256) = 0;
  *(a1 + 3288) = 0;
  *(a1 + 3296) = 0;
  *(a1 + 4328) = 0;
  *(a1 + 4344) = 0u;
  *(a1 + 4336) = a1 + 4344;
  *(a1 + 4376) = 0u;
  *(a1 + 4368) = a1 + 4376;
  *(a1 + 4421) = 0;
  *(a1 + 4392) = 0u;
  *(a1 + 4408) = 0;
  *(a1 + 4422) = 1;
  *(a1 + 4425) = 1;
  v3 = +[NSMutableSet set];
  v4 = *(a1 + 3296);
  *(a1 + 3296) = v3;

  return a1;
}

void sub_10079A220(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15)
{
  sub_10000CEDC(v15 + v19, *(v15 + 4376));
  sub_10000CEDC(v15 + v18, *(v15 + 4344));

  sub_1000161FC(&a15);
  sub_1007B20B4(v15 + 2088, *(v15 + 2096));
  sub_10000CEDC(v15 + 2064, *(v15 + 2072));
  sub_1007B1FC8(v15 + 2024, *(v15 + 2032));
  sub_10000CEDC(v15 + 1960, *(v15 + 1968));
  v21 = *(v15 + 1936);
  if (v21)
  {
    *(v15 + 1944) = v21;
    operator delete(v21);
  }

  v22 = *v17;
  if (*v17)
  {
    *(v15 + 1912) = v22;
    operator delete(v22);
  }

  sub_10000CEDC(v15 + 1832, *(v15 + 1840));

  sub_1005B0D58(v16);
  _Unwind_Resume(a1);
}

void sub_10079A310(uint64_t a1)
{
  if (qword_100B512F8 != -1)
  {
    sub_100874358();
  }

  sub_1006D6828(off_100B512F0 + 192, a1);
  if (qword_100B50AA0 != -1)
  {
    sub_10087436C();
  }

  sub_100312650(off_100B50A98 + 64, a1 + 16);
  if (qword_100B50910 != -1)
  {
    sub_100874380();
  }

  sub_1005BB5D4(off_100B50908, a1 + 32);
  if (qword_100B508B0 != -1)
  {
    sub_100874394();
  }

  sub_100749B80(off_100B508A8, a1 + 48, 0);
  if (qword_100B51098 != -1)
  {
    sub_1008743A8();
  }

  sub_10048776C(qword_100B51090, a1 + 128);
  if (qword_100B508D0 != -1)
  {
    sub_1008743BC();
  }

  sub_1007986D0(off_100B508C8, a1 + 136);
  v2 = sub_100017E6C();
  sub_1007988BC(v2 + 1224, a1 + 120);
  v3 = sub_100017E6C();
  sub_100798B5C(v3 + 1184, a1 + 112);
  v4 = *sub_10000C798();
  if (((*(v4 + 440))() & 1) == 0)
  {
    v5 = sub_100017E6C();
    sub_100532818(v5 + 744, a1 + 24);
  }

  v6 = sub_100017E6C();
  (*(*v6 + 160))(v6, a1 + 144);
  v7 = *sub_10000E92C();
  *(a1 + 2192) = (*(v7 + 792))();
  v8 = sub_10000E92C();
  sub_100007E30(buf, "LE");
  sub_100007E30(__p, "EnableScanAgentPrints");
  v9 = (*(*v8 + 72))(v8, buf, __p, a1 + 4425);
  if (v164 < 0)
  {
    operator delete(__p[0]);
  }

  if ((v166[3] & 0x80000000) != 0)
  {
    operator delete(*buf);
  }

  if (v9)
  {
    v10 = qword_100BCE918;
    if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(a1 + 4425);
      *buf = 67109120;
      *&buf[4] = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "fEnableDebugScanAgent is now %d", buf, 8u);
    }
  }

  v12 = sub_10000E92C();
  sub_100007E30(buf, "ADVBUFF");
  sub_100007E30(__p, "UseDebugTypes");
  if ((*(*v12 + 72))(v12, buf, __p, a1 + 2128))
  {
    v13 = *(a1 + 2128);
    if (v164 < 0)
    {
      operator delete(__p[0]);
    }

    if ((v166[3] & 0x80000000) != 0)
    {
      operator delete(*buf);
      if (!v13)
      {
        goto LABEL_35;
      }
    }

    else if (!v13)
    {
      goto LABEL_35;
    }

    v14 = qword_100BCE918;
    if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Warning: Using debug types for ADV buffer", buf, 2u);
    }
  }

  else
  {
    if (v164 < 0)
    {
      operator delete(__p[0]);
    }

    if ((v166[3] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }
  }

LABEL_35:
  v162 = 0;
  v15 = sub_10000E92C();
  sub_100007E30(buf, "ADVBUFF");
  sub_100007E30(__p, "DisableENADVBuffers");
  v16 = (*(*v15 + 72))(v15, buf, __p, &v162);
  v17 = v162;
  if (v164 < 0)
  {
    operator delete(__p[0]);
  }

  v18 = v16 & v17;
  if ((v166[3] & 0x80000000) != 0)
  {
    operator delete(*buf);
    if (!v18)
    {
      goto LABEL_43;
    }
  }

  else if (!v18)
  {
    goto LABEL_43;
  }

  *(a1 + 1792) = 0;
  v19 = qword_100BCEA38;
  if (os_log_type_enabled(qword_100BCEA38, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Disabling EN ADV Buffers for this platform", buf, 2u);
  }

LABEL_43:
  v20 = sub_10000C7D0();
  v21 = (*(*v20 + 2840))(v20);
  *(a1 + 1816) = v21;
  *(a1 + 1818) = v21 | 0x100;
  if (v21)
  {
    v22 = 256;
    do
    {
      v161[0] = v22;
      *buf = v161;
      v23 = sub_1000BED44(a1 + 1832, v161);
      *(v23 + 14) = 255;
      *(v23 + 15) = v22;
      v23[4] = 0;
      v24 = qword_100BCE918;
      if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEBUG))
      {
        *buf = 67110144;
        *&buf[4] = v22;
        *&buf[8] = 1024;
        *&buf[10] = 255;
        *&buf[14] = 1024;
        *&buf[16] = 0;
        *v166 = 1024;
        *&v166[2] = 0;
        *v167 = 1024;
        *&v167[2] = 0;
        _os_log_debug_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEBUG, "MATCH TABLE Setting up table entry handle:%d type:%d length:%d created:%d enabled:%d", buf, 0x20u);
      }

      ++v22;
    }

    while (v22 < *(a1 + 1818));
  }

  *v161 = 0;
  v25 = sub_10000E92C();
  sub_100007E30(buf, "ADVBUFF");
  sub_100007E30(__p, "OverrideAPWakeDebounceTimerSeconds");
  v26 = (*(*v25 + 144))(v25, buf, __p, v161);
  if (*v161)
  {
    v27 = v26;
  }

  else
  {
    v27 = 0;
  }

  if (v164 < 0)
  {
    operator delete(__p[0]);
  }

  if ((v166[3] & 0x80000000) != 0)
  {
    operator delete(*buf);
    if (!v27)
    {
      goto LABEL_59;
    }
  }

  else if (!v27)
  {
    goto LABEL_59;
  }

  v28 = 1000 * *v161;
  *(a1 + 2152) = 1000 * *v161;
  v29 = qword_100BCE918;
  if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    *&buf[4] = v28;
    _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "Warning: Overriding fApWakeReadADVBuffersDebounceDelta with %llu seconds", buf, 0xCu);
  }

LABEL_59:
  *(a1 + 2246) = 0;
  *(a1 + 2160) = 0u;
  *(a1 + 2176) = 0u;
  v160 = 0;
  *(a1 + 2248) = 0;
  *(a1 + 2252) = 0;
  *(a1 + 2258) = 0;
  *(a1 + 2260) = 0;
  *(a1 + 2265) = 0;
  *(a1 + 4360) = 0;
  *(a1 + 4432) = 0;
  v30 = sub_10000E92C();
  sub_100007E30(buf, "BLESCAN");
  sub_100007E30(__p, "IsMRCScanEnableOverride");
  v31 = (*(*v30 + 72))(v30, buf, __p, a1 + 2263);
  if (v164 < 0)
  {
    operator delete(__p[0]);
  }

  if ((v166[3] & 0x80000000) != 0)
  {
    operator delete(*buf);
    if (!v31)
    {
      goto LABEL_75;
    }
  }

  else if (!v31)
  {
    goto LABEL_75;
  }

  *(a1 + 2263) = 1;
  v32 = qword_100BCE918;
  if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446210;
    *&buf[4] = "Yes";
    _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "Overriding BLE Scan Parameters MRC Enable: %{public}s", buf, 0xCu);
  }

  v33 = sub_10000E92C();
  sub_100007E30(buf, "BLESCAN");
  sub_100007E30(__p, "IsMRCScanEnableOverrideValue");
  v34 = (*(*v33 + 72))(v33, buf, __p, a1 + 2264);
  if (v164 < 0)
  {
    operator delete(__p[0]);
  }

  if ((v166[3] & 0x80000000) != 0)
  {
    operator delete(*buf);
    if (!v34)
    {
      goto LABEL_75;
    }
  }

  else if (!v34)
  {
    goto LABEL_75;
  }

  *(a1 + 2264) = 1;
  v35 = qword_100BCE918;
  if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446210;
    *&buf[4] = "Yes";
    _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "Overriding BLE Scan Parameters MRC Enable value: %{public}s", buf, 0xCu);
  }

LABEL_75:
  v36 = sub_10000E92C();
  sub_100007E30(buf, "BLESCAN");
  sub_100007E30(__p, "IsScanParamsOverriden");
  if ((*(*v36 + 72))(v36, buf, __p, a1 + 2246))
  {
    v37 = *(a1 + 2246);
    if (v164 < 0)
    {
      operator delete(__p[0]);
    }

    if ((v166[3] & 0x80000000) != 0)
    {
      operator delete(*buf);
      if (!v37)
      {
        goto LABEL_219;
      }
    }

    else if (!v37)
    {
      goto LABEL_219;
    }

    v38 = qword_100BCE918;
    if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "Overriding BLE Scan Parameters.", buf, 2u);
    }

    v39 = sub_10000E92C();
    sub_100007E30(buf, "BLESCAN");
    sub_100007E30(__p, "Interval");
    v40 = (*(*v39 + 88))(v39, buf, __p, &v160 + 4);
    if (HIDWORD(v160))
    {
      v41 = v40;
    }

    else
    {
      v41 = 0;
    }

    if (v164 < 0)
    {
      operator delete(__p[0]);
    }

    if ((v166[3] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }

    if (v41)
    {
      v42 = HIDWORD(v160);
      *(a1 + 2248) = WORD2(v160);
      v43 = qword_100BCE918;
      if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        *&buf[4] = v42;
        _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "Overriding BLE Scan Parameters Interval %d.", buf, 8u);
      }
    }

    v44 = sub_10000E92C();
    sub_100007E30(buf, "BLESCAN");
    sub_100007E30(__p, "WindowMainCoreELNAOn");
    v45 = (*(*v44 + 88))(v44, buf, __p, &v160 + 4);
    if (HIDWORD(v160))
    {
      v46 = v45;
    }

    else
    {
      v46 = 0;
    }

    if (v164 < 0)
    {
      operator delete(__p[0]);
    }

    if ((v166[3] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }

    if (v46)
    {
      v47 = HIDWORD(v160);
      *(a1 + 2250) = WORD2(v160);
      v48 = qword_100BCE918;
      if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        *&buf[4] = v47;
        _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, "Overriding BLE Scan Parameters WindowMainCoreELNAOn %d.", buf, 8u);
      }
    }

    v49 = sub_10000E92C();
    sub_100007E30(buf, "BLESCAN");
    sub_100007E30(__p, "WindowMainCoreELNABypass");
    v50 = (*(*v49 + 88))(v49, buf, __p, &v160 + 4);
    if (HIDWORD(v160))
    {
      v51 = v50;
    }

    else
    {
      v51 = 0;
    }

    if (v164 < 0)
    {
      operator delete(__p[0]);
    }

    if ((v166[3] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }

    if (v51)
    {
      v52 = HIDWORD(v160);
      *(a1 + 2252) = WORD2(v160);
      v53 = qword_100BCE918;
      if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        *&buf[4] = v52;
        _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_DEFAULT, "Overriding BLE Scan Parameters WindowMainCoreELNABypass %d.", buf, 8u);
      }
    }

    v54 = sub_10000E92C();
    sub_100007E30(buf, "BLESCAN");
    sub_100007E30(__p, "IsScanCoreELNAOn");
    if ((*(*v54 + 72))(v54, buf, __p, a1 + 2258))
    {
      v55 = *(a1 + 2258);
      if (v164 < 0)
      {
        operator delete(__p[0]);
      }

      if ((v166[3] & 0x80000000) != 0)
      {
        operator delete(*buf);
      }

      if (v55)
      {
        v56 = qword_100BCE918;
        if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_DEFAULT, "Overriding BLE Scan Parameters ScanCore ELNA is On", buf, 2u);
        }
      }
    }

    else
    {
      if (v164 < 0)
      {
        operator delete(__p[0]);
      }

      if ((v166[3] & 0x80000000) != 0)
      {
        operator delete(*buf);
      }
    }

    v57 = sub_10000E92C();
    sub_100007E30(buf, "BLESCAN");
    sub_100007E30(__p, "WindowScanCore");
    v58 = (*(*v57 + 88))(v57, buf, __p, &v160 + 4);
    if (HIDWORD(v160))
    {
      v59 = v58;
    }

    else
    {
      v59 = 0;
    }

    if (v164 < 0)
    {
      operator delete(__p[0]);
    }

    if ((v166[3] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }

    if (v59)
    {
      v60 = HIDWORD(v160);
      *(a1 + 2260) = WORD2(v160);
      v61 = qword_100BCE918;
      if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        *&buf[4] = v60;
        _os_log_impl(&_mh_execute_header, v61, OS_LOG_TYPE_DEFAULT, "Overriding BLE Scan Parameters WindowScancore %d", buf, 8u);
      }
    }

    v159[0] = _NSConcreteStackBlock;
    v159[1] = 3221225472;
    v159[2] = sub_10079C5D4;
    v159[3] = &unk_100ADF8F8;
    v159[4] = a1;
    v62 = v159;
    if (qword_100BC7CB8 != -1)
    {
      dispatch_once(&qword_100BC7CB8, v62);
    }

    v63 = sub_10000E92C();
    sub_100007E30(buf, "BLESCAN");
    sub_100007E30(__p, "IsScanCoreELNAOn");
    if ((*(*v63 + 72))(v63, buf, __p, a1 + 2258))
    {
      v64 = *(a1 + 2258);
      if (v164 < 0)
      {
        operator delete(__p[0]);
      }

      if ((v166[3] & 0x80000000) != 0)
      {
        operator delete(*buf);
      }

      if (v64)
      {
        v65 = qword_100BCE918;
        if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v65, OS_LOG_TYPE_DEFAULT, "Overriding BLE Scan Parameters ScanCore ELNA is On", buf, 2u);
        }
      }
    }

    else
    {
      if (v164 < 0)
      {
        operator delete(__p[0]);
      }

      if ((v166[3] & 0x80000000) != 0)
      {
        operator delete(*buf);
      }
    }

    v66 = sub_10000E92C();
    sub_100007E30(buf, "BLESCAN");
    sub_100007E30(__p, "IsScanCoreConcurrent");
    if ((*(*v66 + 72))(v66, buf, __p, a1 + 2262))
    {
      v67 = *(a1 + 2262);
      if (v164 < 0)
      {
        operator delete(__p[0]);
      }

      if ((v166[3] & 0x80000000) != 0)
      {
        operator delete(*buf);
      }

      if (v67)
      {
        v68 = qword_100BCE918;
        if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v68, OS_LOG_TYPE_DEFAULT, "Overriding BLE Scan Parameters ScanCore Concurrent", buf, 2u);
        }
      }
    }

    else
    {
      if (v164 < 0)
      {
        operator delete(__p[0]);
      }

      if ((v166[3] & 0x80000000) != 0)
      {
        operator delete(*buf);
      }
    }

    v69 = sub_10000E92C();
    sub_100007E30(buf, "BLESCAN");
    sub_100007E30(__p, "IsScanParamsPhyOverride");
    v70 = (*(*v69 + 88))(v69, buf, __p, &v160);
    if (v164 < 0)
    {
      operator delete(__p[0]);
    }

    if ((v166[3] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }

    if (v70)
    {
      v71 = v160;
      *(a1 + 2265) = v160;
      *(a1 + 2266) = 1;
      v72 = qword_100BCE918;
      if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109376;
        *&buf[4] = 1;
        *&buf[8] = 1024;
        *&buf[10] = v71;
        _os_log_impl(&_mh_execute_header, v72, OS_LOG_TYPE_DEFAULT, "Overriding BLE Scan Parameters Phy Scan: %d:%d", buf, 0xEu);
      }
    }

    *(a1 + 2267) = 0;
    v73 = sub_10000E92C();
    sub_100007E30(buf, "BLESCAN");
    sub_100007E30(__p, "IsScanCoreCompensated");
    v74 = (*(*v73 + 72))(v73, buf, __p, a1 + 2270);
    if (v164 < 0)
    {
      operator delete(__p[0]);
    }

    if ((v166[3] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }

    if (v74)
    {
      *(a1 + 2267) = 1;
      v75 = qword_100BCE918;
      if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
      {
        if (*(a1 + 2270))
        {
          v76 = "Yes";
        }

        else
        {
          v76 = "No";
        }

        *buf = 136446210;
        *&buf[4] = v76;
        _os_log_impl(&_mh_execute_header, v75, OS_LOG_TYPE_DEFAULT, "Overriding BLE Scan Parameters ScanCore Compensated: %{public}s", buf, 0xCu);
      }
    }

    *(a1 + 2268) = 0;
    v77 = sub_10000E92C();
    sub_100007E30(buf, "BLESCAN");
    sub_100007E30(__p, "ScanCoreCompensationPercent");
    v78 = (*(*v77 + 88))(v77, buf, __p, &v160 + 4);
    if (v164 < 0)
    {
      operator delete(__p[0]);
    }

    if ((v166[3] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }

    if (v78)
    {
      v79 = HIDWORD(v160);
      if (HIDWORD(v160) > 0x64)
      {
        v80 = qword_100BCE918;
        if (!os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_194;
        }

        *buf = 67109120;
        *&buf[4] = v79;
        v81 = "Overriding BLE ScanCore Compensation Percent %d failed (0<= ScanCoreCompensationPercent <=100)";
      }

      else
      {
        *(a1 + 2268) = 1;
        *(a1 + 2272) = v79;
        v80 = qword_100BCE918;
        if (!os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_194;
        }

        *buf = 67109120;
        *&buf[4] = v79;
        v81 = "Overriding BLE ScanCore Compensation Percent %d";
      }

      _os_log_impl(&_mh_execute_header, v80, OS_LOG_TYPE_DEFAULT, v81, buf, 8u);
    }

LABEL_194:
    *(a1 + 2269) = 0;
    v82 = sub_10000E92C();
    sub_100007E30(buf, "BLESCAN");
    sub_100007E30(__p, "ScanCoreCoexQueryPeriod");
    v83 = (*(*v82 + 88))(v82, buf, __p, &v160 + 4);
    if (v164 < 0)
    {
      operator delete(__p[0]);
    }

    if ((v166[3] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }

    if (!v83)
    {
      goto LABEL_204;
    }

    v84 = HIDWORD(v160);
    if (HIDWORD(v160) > 4 || HIDWORD(v160) == 3)
    {
      v85 = qword_100BCE918;
      if (!os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
      {
LABEL_204:
        v87 = qword_100BCE918;
        if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
        {
          v88 = *(a1 + 2248);
          v89 = *(a1 + 2250);
          v90 = *(a1 + 2252);
          v91 = *(a1 + 2260);
          v92 = v91 * 0.625;
          if (*(a1 + 2258))
          {
            v93 = v91 * 0.625;
          }

          else
          {
            v93 = 0.0;
          }

          if (*(a1 + 2258))
          {
            v94 = *(a1 + 2260);
          }

          else
          {
            v94 = 0;
          }

          if (*(a1 + 2258))
          {
            v91 = 0;
            v92 = 0.0;
          }

          v95 = "No";
          if (*(a1 + 2262))
          {
            v96 = "Yes";
          }

          else
          {
            v96 = "No";
          }

          v97 = *(a1 + 2272);
          if (*(a1 + 2267))
          {
            v95 = "Yes";
          }

          v98 = *(a1 + 2274);
          v99 = *(a1 + 2263);
          v100 = *(a1 + 2264);
          v101 = *(a1 + 2265);
          *buf = 67113218;
          *&buf[4] = v88;
          *&buf[8] = 2048;
          *&buf[10] = v88 * 0.625;
          *&buf[18] = 1024;
          *v166 = v89;
          *&v166[4] = 1024;
          *v167 = v90;
          *&v167[4] = 1024;
          v168 = v94;
          v169 = 1024;
          v170 = v91;
          v171 = 2048;
          v172 = v89 * 0.625;
          v173 = 2048;
          v174 = v90 * 0.625;
          v175 = 2048;
          v176 = v93;
          v177 = 2048;
          v178 = v92;
          v179 = 2082;
          v180 = v96;
          v181 = 2082;
          v182 = v95;
          v183 = 1024;
          v184 = v97;
          v185 = 1024;
          v186 = v98;
          v187 = 1024;
          v188 = v99;
          v189 = 1024;
          v190 = v100;
          v191 = 1024;
          v192 = v101;
          _os_log_impl(&_mh_execute_header, v87, OS_LOG_TYPE_DEFAULT, "Overriding BLE Scan Parameters Interval %d(%.2fms) Window %d/%d/%d/%d(%.2fms/%.2fms/%.2fms/%.2fms) Concurrent %{public}s Compensation %{public}s percent %d period %d MRC:%d:%d ScanPhy:%d", buf, 0x84u);
        }

        goto LABEL_219;
      }

      *buf = 67109120;
      *&buf[4] = v84;
      v86 = "Overriding BLE ScanCore Query Period %d failed (period must be in {0, 1, 2, 4}";
    }

    else
    {
      *(a1 + 2269) = 1;
      *(a1 + 2274) = v84;
      v85 = qword_100BCE918;
      if (!os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_204;
      }

      *buf = 67109120;
      *&buf[4] = v84;
      v86 = "Overriding BLE ScanCore Query Period %d";
    }

    _os_log_impl(&_mh_execute_header, v85, OS_LOG_TYPE_DEFAULT, v86, buf, 8u);
    goto LABEL_204;
  }

  if (v164 < 0)
  {
    operator delete(__p[0]);
  }

  if ((v166[3] & 0x80000000) != 0)
  {
    operator delete(*buf);
  }

LABEL_219:
  v158 = 0;
  v102 = sub_10000E92C();
  sub_100007E30(buf, "BLESCAN");
  sub_100007E30(__p, "IsScanCompensationDisabled");
  v103 = (*(*v102 + 72))(v102, buf, __p, &v158);
  v104 = v158;
  if (v164 < 0)
  {
    operator delete(__p[0]);
  }

  v105 = v103 & v104;
  if ((v166[3] & 0x80000000) != 0)
  {
    operator delete(*buf);
    if (!v105)
    {
      goto LABEL_228;
    }
  }

  else if (!v105)
  {
    goto LABEL_228;
  }

  v106 = qword_100BCE918;
  if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v106, OS_LOG_TYPE_DEFAULT, "Disable ScanCore Compensation", buf, 2u);
  }

  *(a1 + 2276) = 0;
LABEL_228:
  v107 = sub_10000E92C();
  sub_100007E30(buf, "BLESCAN");
  sub_100007E30(__p, "ApplyRSSIOffset");
  v108 = (a1 + 2324);
  if (!(*(*v107 + 88))(v107, buf, __p, a1 + 2324) || (v109 = *v108) == 0 || v109 > 127)
  {
    if (v164 < 0)
    {
      operator delete(__p[0]);
    }

    if ((v166[3] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }

    goto LABEL_242;
  }

  if (v164 < 0)
  {
    operator delete(__p[0]);
  }

  if ((v166[3] & 0x80000000) != 0)
  {
    operator delete(*buf);
  }

  if (v109 < -128)
  {
LABEL_242:
    *v108 = 0;
    goto LABEL_243;
  }

  v110 = qword_100BCE918;
  if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
  {
    v111 = *v108;
    *buf = 67109120;
    *&buf[4] = v111;
    _os_log_impl(&_mh_execute_header, v110, OS_LOG_TYPE_DEFAULT, "Warning: Applying RSSI offset of %d", buf, 8u);
  }

LABEL_243:
  *(a1 + 2277) = 0;
  v112 = sub_10000E92C();
  sub_100007E30(buf, "BLESCAN");
  sub_100007E30(__p, "IsScanCoreDebug");
  if ((*(*v112 + 72))(v112, buf, __p, a1 + 2277))
  {
    v113 = *(a1 + 2277);
    if (v164 < 0)
    {
      operator delete(__p[0]);
    }

    if ((v166[3] & 0x80000000) != 0)
    {
      operator delete(*buf);
      if (!v113)
      {
        goto LABEL_256;
      }
    }

    else if (!v113)
    {
      goto LABEL_256;
    }

    v114 = qword_100BCE918;
    if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v114, OS_LOG_TYPE_DEFAULT, "Enabling ScanCore Debug prints", buf, 2u);
    }
  }

  else
  {
    if (v164 < 0)
    {
      operator delete(__p[0]);
    }

    if ((v166[3] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }
  }

LABEL_256:
  xpc_set_event_stream_handler("com.apple.alarm", 0, &stru_100B0CDC8);
  v115 = sub_10000E92C();
  sub_100007E30(buf, "SCANDEBUG");
  sub_100007E30(__p, "DebugControllerConfigDispatchSequence");
  if ((*(*v115 + 72))(v115, buf, __p, a1 + 4421))
  {
    v116 = *(a1 + 4421);
    if (v164 < 0)
    {
      operator delete(__p[0]);
    }

    if ((v166[3] & 0x80000000) != 0)
    {
      operator delete(*buf);
      if (!v116)
      {
        goto LABEL_269;
      }
    }

    else if (!v116)
    {
      goto LABEL_269;
    }

    v117 = qword_100BCE918;
    if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v117, OS_LOG_TYPE_DEFAULT, "fDebugControllerConfigDispatchSequence is true, dispatching config after serial config", buf, 2u);
    }
  }

  else
  {
    if (v164 < 0)
    {
      operator delete(__p[0]);
    }

    if ((v166[3] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }
  }

LABEL_269:
  v118 = sub_10000E92C();
  sub_100007E30(buf, "SCANDEBUG");
  sub_100007E30(__p, "ForceDispatchInsteadOfSerialConfig");
  if ((*(*v118 + 72))(v118, buf, __p, a1 + 4422))
  {
    v119 = *(a1 + 4422);
    if (v164 < 0)
    {
      operator delete(__p[0]);
    }

    if ((v166[3] & 0x80000000) != 0)
    {
      operator delete(*buf);
      if (v119)
      {
        goto LABEL_282;
      }
    }

    else if (v119)
    {
      goto LABEL_282;
    }

    v120 = qword_100BCE918;
    if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v120, OS_LOG_TYPE_DEFAULT, "fForceDispatchInsteadOfSerialConfig is false, Forcing disable dispatch config", buf, 2u);
    }
  }

  else
  {
    if (v164 < 0)
    {
      operator delete(__p[0]);
    }

    if ((v166[3] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }
  }

LABEL_282:
  v121 = sub_10000E92C();
  sub_100007E30(buf, "SCANDEBUG");
  sub_100007E30(__p, "DebugScanConfigSequence");
  v122 = (*(*v121 + 72))(v121, buf, __p, &byte_100BC7CC4);
  v123 = byte_100BC7CC4;
  if (v164 < 0)
  {
    operator delete(__p[0]);
  }

  v124 = v122 & v123;
  if ((v166[3] & 0x80000000) != 0)
  {
    operator delete(*buf);
    if (!v124)
    {
      goto LABEL_290;
    }
  }

  else if (!v124)
  {
    goto LABEL_290;
  }

  v125 = qword_100BCE918;
  if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v125, OS_LOG_TYPE_DEFAULT, "gSniffScanDebug is true", buf, 2u);
  }

LABEL_290:
  v126 = sub_10000E92C();
  sub_100007E30(buf, "SCANDEBUG");
  sub_100007E30(__p, "DebugScanConfigHeySiri");
  v127 = (*(*v126 + 72))(v126, buf, __p, &byte_100BC7CC5);
  v128 = byte_100BC7CC5;
  if (v164 < 0)
  {
    operator delete(__p[0]);
  }

  v129 = v127 & v128;
  if ((v166[3] & 0x80000000) != 0)
  {
    operator delete(*buf);
    if (!v129)
    {
      goto LABEL_298;
    }
  }

  else if (!v129)
  {
    goto LABEL_298;
  }

  v130 = qword_100BCE918;
  if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v130, OS_LOG_TYPE_DEFAULT, "gSniffScanHeysiriDebug is true", buf, 2u);
  }

LABEL_298:
  v131 = sub_10000E92C();
  sub_100007E30(buf, "BLESCAN");
  sub_100007E30(__p, "DisablePrioritizationOverBT");
  v132 = (*(*v131 + 72))(v131, buf, __p, &byte_100BC7CC6);
  v133 = byte_100BC7CC6;
  if (v164 < 0)
  {
    operator delete(__p[0]);
  }

  v134 = v132 & v133;
  if ((v166[3] & 0x80000000) != 0)
  {
    operator delete(*buf);
    if (!v134)
    {
      goto LABEL_306;
    }
  }

  else if (!v134)
  {
    goto LABEL_306;
  }

  v135 = qword_100BCE918;
  if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v135, OS_LOG_TYPE_DEFAULT, "Disable Scan Prioritization over BT.", buf, 2u);
  }

LABEL_306:
  v136 = sub_10000E92C();
  sub_100007E30(buf, "BLESCAN");
  sub_100007E30(__p, "PrioritizationOverWiFiEnabled");
  v137 = (*(*v136 + 72))(v136, buf, __p, &byte_100BC7CC7);
  v138 = byte_100BC7CC7;
  if (v164 < 0)
  {
    operator delete(__p[0]);
  }

  v139 = v137 & v138;
  if ((v166[3] & 0x80000000) != 0)
  {
    operator delete(*buf);
    if (!v139)
    {
      goto LABEL_314;
    }
  }

  else if (!v139)
  {
    goto LABEL_314;
  }

  v140 = qword_100BCE918;
  if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v140, OS_LOG_TYPE_DEFAULT, "Scan Prioritization over WiFi is supported.", buf, 2u);
  }

LABEL_314:
  *(a1 + 2278) = 0;
  v141 = sub_10000E92C();
  sub_100007E30(buf, "BLESCAN");
  sub_100007E30(__p, "forcePassiveScan");
  if ((*(*v141 + 72))(v141, buf, __p, a1 + 2278))
  {
    v142 = *(a1 + 2278);
    if (v164 < 0)
    {
      operator delete(__p[0]);
    }

    if ((v166[3] & 0x80000000) != 0)
    {
      operator delete(*buf);
      if (!v142)
      {
        goto LABEL_331;
      }
    }

    else if (!v142)
    {
      goto LABEL_331;
    }

    v143 = sub_10000E92C();
    sub_100007E30(buf, "BLESCAN");
    sub_100007E30(__p, "forcePassiveScanEnable");
    (*(*v143 + 72))(v143, buf, __p, a1 + 2279);
    if (v164 < 0)
    {
      operator delete(__p[0]);
    }

    if ((v166[3] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }

    v144 = qword_100BCE918;
    if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
    {
      v145 = *(a1 + 2278);
      v146 = *(a1 + 2279);
      *buf = 67109376;
      *&buf[4] = v145;
      *&buf[8] = 1024;
      *&buf[10] = v146;
      _os_log_impl(&_mh_execute_header, v144, OS_LOG_TYPE_DEFAULT, "Overriding BLE Scan Parameters to force passive scan to %d force to : %d", buf, 0xEu);
    }
  }

  else
  {
    if (v164 < 0)
    {
      operator delete(__p[0]);
    }

    if ((v166[3] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }
  }

LABEL_331:
  *(a1 + 2280) = 0;
  v147 = sub_10000E92C();
  sub_100007E30(buf, "BLESCAN");
  sub_100007E30(__p, "enableMatchingRuleAndAddressBatched");
  if ((*(*v147 + 72))(v147, buf, __p, a1 + 2280))
  {
    v148 = *(a1 + 2280);
    if (v164 < 0)
    {
      operator delete(__p[0]);
    }

    if ((v166[3] & 0x80000000) != 0)
    {
      operator delete(*buf);
      if (!v148)
      {
        goto LABEL_344;
      }
    }

    else if (!v148)
    {
      goto LABEL_344;
    }

    v149 = qword_100BCE918;
    if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v149, OS_LOG_TYPE_DEFAULT, "Overriding BLE Scan Parameters to enable matching rules batched", buf, 2u);
    }
  }

  else
  {
    if (v164 < 0)
    {
      operator delete(__p[0]);
    }

    if ((v166[3] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }
  }

LABEL_344:
  *(a1 + 2344) = 0u;
  *(a1 + 2360) = 0u;
  *(a1 + 2328) = 0u;
  *(a1 + 2312) = 0;
  *(a1 + 2744) = 0;
  *(a1 + 2751) = 0;
  sub_10079CA64(a1);
  sub_10079CB54(a1);
  *(a1 + 3240) = 0;
  sub_10079CC0C(a1);
  sub_10079CC8C(a1);
  sub_10079CE3C(a1);
  v150 = +[NSMutableArray array];
  v151 = *(a1 + 4392);
  *(a1 + 4392) = v150;

  v152 = +[NSMutableArray array];
  v153 = *(a1 + 4400);
  *(a1 + 4400) = v152;

  v154 = +[NSMutableArray array];
  v155 = *(a1 + 4408);
  *(a1 + 4408) = v154;

  v156 = +[NSMutableDictionary dictionary];
  v157 = *(a1 + 2112);
  *(a1 + 2112) = v156;
}