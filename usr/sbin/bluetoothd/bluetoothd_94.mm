uint64_t sub_1006C4B78(uint64_t a1, uint64_t a2)
{
  if (!a2 || !sub_10054FD60(a2))
  {
    return 0;
  }

  if (qword_100B508F0 != -1)
  {
    sub_100861A8C();
  }

  v2 = off_100B508E8;

  return sub_10056E240(v2);
}

void sub_1006C4BD8(uint64_t a1)
{
  if (sub_1000E2140(*(a1 + 32), 12) && (*(a1 + 48) - 501) <= 1)
  {
    sub_1000BE6F8((*(a1 + 32) + 128), __p);
    if (v8 >= 0)
    {
      v2 = __p;
    }

    else
    {
      v2 = __p[0];
    }

    v3 = [NSString stringWithUTF8String:v2];
    if (v8 < 0)
    {
      operator delete(__p[0]);
    }

    v9[0] = @"CommandType";
    v4 = [NSString stringWithUTF8String:*(a1 + 40)];
    v9[1] = @"BTAddress";
    v10[0] = v4;
    v10[1] = v3;
    v5 = [NSDictionary dictionaryWithObjects:v10 forKeys:v9 count:2];

    v6 = +[NSDistributedNotificationCenter defaultCenter];
    [v6 postNotificationName:@"com.apple.BTavrcp.CommandReceived" object:0 userInfo:v5];
  }
}

void sub_1006C4D28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  v17 = v15;

  _Unwind_Resume(a1);
}

void sub_1006C4D84(uint64_t a1, uint64_t a2, unsigned int a3, int a4)
{
  v15 = 6488;
  if (qword_100B508F0 != -1)
  {
    sub_100861A8C();
  }

  LODWORD(__p[0]) = *a2;
  WORD2(__p[0]) = *(a2 + 4);
  v7 = sub_1000E6554(off_100B508E8, __p, 1);
  v8 = qword_100BCE930;
  if (os_log_type_enabled(qword_100BCE930, OS_LOG_TYPE_DEFAULT))
  {
    v9 = "unknown";
    if (a4 == 3)
    {
      v9 = "supported events";
    }

    if (a4 == 2)
    {
      v10 = "company ID";
    }

    else
    {
      v10 = v9;
    }

    sub_1000E5A58(v7, __p);
    if (v14 >= 0)
    {
      v11 = __p;
    }

    else
    {
      v11 = __p[0];
    }

    *buf = 136446466;
    v17 = v10;
    v18 = 2082;
    v19 = v11;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Received 'get capabilities' (%{public}s) request from device %{public}s", buf, 0x16u);
    if (v14 < 0)
    {
      operator delete(__p[0]);
    }
  }

  if (a4 == 2)
  {
    v12 = sub_100205578(a2, a3, 1, &v15);
  }

  else
  {
    if (a4 == 3)
    {
      sub_100206658(a2, a3, 7, &unk_1008C4D48);
      return;
    }

    v12 = sub_100205418(a2, a3, 16, 3306);
  }

  if (v12)
  {
    if (os_log_type_enabled(qword_100BCE930, OS_LOG_TYPE_ERROR))
    {
      sub_100861D64();
    }
  }
}

void sub_1006C4F78(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (qword_100B508F0 != -1)
  {
    sub_100861A8C();
  }

  LODWORD(__p[0]) = *a2;
  WORD2(__p[0]) = *(a2 + 4);
  v5 = sub_1000E6554(off_100B508E8, __p, 1);
  v6 = qword_100BCE930;
  if (os_log_type_enabled(qword_100BCE930, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000E5A58(v5, __p);
    v7 = v9 >= 0 ? __p : __p[0];
    *buf = 136446210;
    v11 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Received 'list player attributes' request from device %{public}s", buf, 0xCu);
    if (v9 < 0)
    {
      operator delete(__p[0]);
    }
  }

  if (sub_1002066BC(a2, a3, 2, &unk_1008C4D4F))
  {
    if (os_log_type_enabled(qword_100BCE930, OS_LOG_TYPE_ERROR))
    {
      sub_100861DCC();
    }
  }
}

void sub_1006C50E4(uint64_t a1, uint64_t a2, unsigned int a3, int a4)
{
  if (qword_100B508F0 != -1)
  {
    sub_100861A8C();
  }

  LODWORD(__p[0]) = *a2;
  WORD2(__p[0]) = *(a2 + 4);
  v7 = sub_1000E6554(off_100B508E8, __p, 1);
  v8 = qword_100BCE930;
  if (os_log_type_enabled(qword_100BCE930, OS_LOG_TYPE_DEFAULT))
  {
    v9 = "unsupported";
    if (a4 == 3)
    {
      v9 = "shuffle mode";
    }

    if (a4 == 2)
    {
      v10 = "repeat mode";
    }

    else
    {
      v10 = v9;
    }

    sub_1000E5A58(v7, __p);
    if (v22 >= 0)
    {
      v11 = __p;
    }

    else
    {
      v11 = __p[0];
    }

    *buf = 136446466;
    v24 = v10;
    v25 = 2082;
    v26 = v11;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Received 'list player attribute value' (%{public}s) request from device %{public}s", buf, 0x16u);
    if (v22 < 0)
    {
      operator delete(__p[0]);
    }
  }

  if (a4 > 2)
  {
    if (a4 == 3)
    {
      v12 = &unk_1008C4D54;
      v13 = a2;
      v14 = a3;
      v15 = 3;
      v16 = 2;
      goto LABEL_22;
    }

    if (a4 != 4)
    {
      goto LABEL_23;
    }
  }

  else if (a4 >= 2)
  {
    if (a4 == 2)
    {
      v12 = &unk_1008C4D51;
      v13 = a2;
      v14 = a3;
      v15 = 2;
      v16 = 3;
LABEL_22:
      v20 = sub_100206710(v13, v14, v15, v16, v12);
      goto LABEL_25;
    }

LABEL_23:
    v17 = a2;
    v18 = a3;
    v19 = 3306;
    goto LABEL_24;
  }

  v17 = a2;
  v18 = a3;
  v19 = 3301;
LABEL_24:
  v20 = sub_100205418(v17, v18, 18, v19);
LABEL_25:
  if (v20)
  {
    if (os_log_type_enabled(qword_100BCE930, OS_LOG_TYPE_ERROR))
    {
      sub_100861E34();
    }
  }
}

void sub_1006C5300(uint64_t a1, uint64_t a2, char a3, unsigned int a4, const void *a5)
{
  if (qword_100B508F0 != -1)
  {
    sub_100861A8C();
  }

  *buf = *a2;
  LOWORD(v27) = *(a2 + 4);
  v10 = sub_1000E6554(off_100B508E8, buf, 1);
  v24 = 0;
  v25 = v10;
  v23 = 0;
  sub_10000C704(&v23, a5, a4);
  v11 = qword_100BCE930;
  if (os_log_type_enabled(qword_100BCE930, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000E5A58(v10, __p);
    v12 = "s";
    if (a4 == 1)
    {
      v12 = "";
    }

    *buf = 67109634;
    if (v22 >= 0)
    {
      v13 = __p;
    }

    else
    {
      v13 = __p[0];
    }

    v27 = a4;
    v28 = 2082;
    v29 = v12;
    v30 = 2082;
    v31 = v13;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Received 'get player attribute value' (%u value%{public}s) request from device %{public}s", buf, 0x1Cu);
    if (v22 < 0)
    {
      operator delete(__p[0]);
    }
  }

  v14 = *(*sub_10056E904(a1 + 344, &v25) + 8);
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3321888768;
  v15[2] = sub_1006C55D4;
  v15[3] = &unk_100B07B18;
  v19 = a4;
  v16 = &off_100AE0A78;
  v17 = v24;
  if (v24)
  {
    sub_10000C69C(v24);
  }

  v18 = v25;
  v20 = a3;
  (*(*v14 + 16))(v14, v15);
  v16 = &off_100AE0A78;
  if (v17)
  {
    sub_10000C808(v17);
  }

  v23 = &off_100AE0A78;
  if (v24)
  {
    sub_10000C808(v24);
  }
}

void sub_1006C5578(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, atomic_uint *a21)
{
  if (a21)
  {
    sub_10000C808(a21);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_1006C55D4(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v29 = 0;
  if (!*(a1 + 56))
  {
    LOBYTE(__p[0]) = 0;
    sub_1000216B4(__p);
    v9 = 3301;
LABEL_25:
    v23 = sub_100205418(*(a1 + 48) + 128, *(a1 + 57), 19, v9);
    goto LABEL_28;
  }

  v5 = a4;
  v6 = a3;
  v7 = 0;
  v8 = 0;
  v25 = a3 - 1;
  v26 = a4 - 1;
  v9 = 3301;
  do
  {
    if (v8 >= 2u)
    {
      LOBYTE(__p[0]) = 0;
      sub_1000216B4(__p);
      goto LABEL_27;
    }

    v10 = sub_10072502C(a1 + 32, v7);
    if (v10 > 2)
    {
      if (v10 != 3)
      {
        if (v10 == 4)
        {
LABEL_13:
          v9 = 3301;
          goto LABEL_21;
        }

LABEL_20:
        v9 = 3306;
        goto LABEL_21;
      }

      v18 = sub_10072502C(a1 + 32, v7);
      v19 = &buf[2 * v8 - 4];
      *v19 = v18;
      v19[1] = v5;
      ++v8;
      v20 = qword_100BCE930;
      if (!os_log_type_enabled(qword_100BCE930, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_21;
      }

      v21 = off_100B07B00[v26];
      sub_1000E5A58(*(a1 + 48), __p);
      v22 = __p;
      if (v28 < 0)
      {
        v22 = __p[0];
      }

      *buf = 136446466;
      v31 = v21;
      v32 = 2082;
      v33 = v22;
      v16 = v20;
      v17 = "Sending shuffle mode status '%{public}s' to device %{public}s";
    }

    else
    {
      if (v10 < 2)
      {
        goto LABEL_13;
      }

      if (v10 != 2)
      {
        goto LABEL_20;
      }

      v11 = sub_10072502C(a1 + 32, v7);
      v12 = &buf[2 * v8 - 4];
      *v12 = v11;
      v12[1] = v6;
      ++v8;
      v13 = qword_100BCE930;
      if (!os_log_type_enabled(qword_100BCE930, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_21;
      }

      v14 = off_100B07AE8[v25];
      sub_1000E5A58(*(a1 + 48), __p);
      v15 = __p;
      if (v28 < 0)
      {
        v15 = __p[0];
      }

      *buf = 136446466;
      v31 = v14;
      v32 = 2082;
      v33 = v15;
      v16 = v13;
      v17 = "Sending repeat mode status '%{public}s' to device %{public}s";
    }

    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, v17, buf, 0x16u);
    if (v28 < 0)
    {
      operator delete(__p[0]);
    }

LABEL_21:
    ++v7;
  }

  while (v7 < *(a1 + 56));
  LOBYTE(__p[0]) = 0;
  sub_1000216B4(__p);
  if (!v8)
  {
    goto LABEL_25;
  }

LABEL_27:
  v23 = sub_100206764(*(a1 + 48) + 128, *(a1 + 57), v8, &v29);
LABEL_28:
  if (v23 && os_log_type_enabled(qword_100BCE930, OS_LOG_TYPE_ERROR))
  {
    sub_100861E9C();
  }

  return sub_10002249C(__p);
}

void sub_1006C58C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_10002249C(va);
  _Unwind_Resume(a1);
}

void sub_1006C58E0(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int a4, uint64_t a5)
{
  if (qword_100B508F0 != -1)
  {
    sub_100861A8C();
  }

  *buf = *a2;
  *&buf[4] = *(a2 + 4);
  v9 = sub_1000E6554(off_100B508E8, buf, 1);
  v34 = v9;
  v10 = qword_100BCE930;
  if (os_log_type_enabled(qword_100BCE930, OS_LOG_TYPE_DEFAULT))
  {
    v11 = a4 == 1 ? "" : "s";
    sub_1000E5A58(v9, v35);
    v12 = v38 >= 0 ? v35 : *v35;
    *buf = 67109634;
    *&buf[4] = a4;
    *&buf[8] = 2082;
    *&buf[10] = v11;
    v40 = 2082;
    v41 = v12;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Received 'set player attribute value' (%d value%{public}s) request from device %{public}s", buf, 0x1Cu);
    if (v38 < 0)
    {
      operator delete(*v35);
      if (a4)
      {
        goto LABEL_12;
      }

LABEL_37:
      v18 = 3301;
      goto LABEL_38;
    }
  }

  if (!a4)
  {
    goto LABEL_37;
  }

LABEL_12:
  v32 = a3;
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v16 = a4;
  v17 = (a5 + 1);
  v18 = 3301;
  do
  {
    v19 = *(v17 - 1);
    if (v19 > 2)
    {
      if (v19 == 3)
      {
        v15 = *v17;
        if ((v15 - 1) <= 1)
        {
          v24 = qword_100BCE930;
          if (os_log_type_enabled(qword_100BCE930, OS_LOG_TYPE_DEFAULT))
          {
            v25 = off_100B07B00[(v15 - 1)];
            *buf = 136446210;
            *&buf[4] = v25;
            v22 = v24;
            v23 = "Setting shuffle mode to '%{public}s'";
            goto LABEL_24;
          }

LABEL_25:
          ++v13;
          goto LABEL_27;
        }
      }

      else if (v19 == 4)
      {
LABEL_20:
        v18 = 3301;
        goto LABEL_27;
      }
    }

    else
    {
      if (v19 < 2)
      {
        goto LABEL_20;
      }

      v14 = *v17;
      if ((v14 - 1) <= 2)
      {
        v20 = qword_100BCE930;
        if (os_log_type_enabled(qword_100BCE930, OS_LOG_TYPE_DEFAULT))
        {
          v21 = off_100B07AE8[(v14 - 1)];
          *buf = 136446210;
          *&buf[4] = v21;
          v22 = v20;
          v23 = "Setting repeat mode to '%{public}s'";
LABEL_24:
          _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, v23, buf, 0xCu);
          goto LABEL_25;
        }

        goto LABEL_25;
      }
    }

    v18 = 3306;
LABEL_27:
    v17 += 2;
    --v16;
  }

  while (v16);
  v26 = v13 == 0;
  a3 = v32;
  if (!v26)
  {
    v27 = sub_10056E904(a1 + 344, &v34);
    (*(**(*v27 + 8) + 40))(*(*v27 + 8), v14, v15);
    v28 = sub_100205418(a2, v32, 20, 0);
    if (v28)
    {
      v29 = v28;
      v30 = qword_100BCE930;
      if (os_log_type_enabled(qword_100BCE930, OS_LOG_TYPE_ERROR))
      {
        sub_1000E5A58(v34, buf);
        if (SBYTE3(v41) >= 0)
        {
          v31 = buf;
        }

        else
        {
          v31 = *buf;
        }

        *v35 = 136446466;
        *&v35[4] = v31;
        v36 = 1024;
        v37 = v29;
        _os_log_error_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "Failed to respond to set attribute value request on device %{public}s - result was %{bluetooth:OI_STATUS}u", v35, 0x12u);
        if (SBYTE3(v41) < 0)
        {
          operator delete(*buf);
        }
      }
    }

    return;
  }

LABEL_38:
  if (os_log_type_enabled(qword_100BCE930, OS_LOG_TYPE_ERROR))
  {
    sub_100861F04();
  }

  if (sub_100205418(a2, a3, 20, v18) && os_log_type_enabled(qword_100BCE930, OS_LOG_TYPE_ERROR))
  {
    sub_100861F6C();
  }
}

uint64_t sub_1006C5CE4(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int a4)
{
  if (qword_100B508F0 != -1)
  {
    sub_100861A8C();
  }

  __p[0] = *a2;
  LOWORD(__p[1]) = *(a2 + 4);
  v7 = sub_1000E6554(off_100B508E8, __p, 1);
  v13 = v7;
  if (a4 <= 0xC && ((1 << a4) & 0x1F06) != 0)
  {
    operator new();
  }

  if (a4 - 1 >= 0xD)
  {
    v8 = 3306;
  }

  else
  {
    v8 = 3301;
  }

  v9 = qword_100BCE930;
  if (os_log_type_enabled(qword_100BCE930, OS_LOG_TYPE_ERROR))
  {
    if (a4 - 1 >= 0xD)
    {
      v11 = "invalid";
    }

    else
    {
      v11 = "unimplemented";
    }

    sub_1000E5A58(v7, buf);
    if (v15 >= 0)
    {
      v12 = buf;
    }

    else
    {
      v12 = *buf;
    }

    __p[0] = 136446722;
    *&__p[1] = v11;
    v17 = 1024;
    v18 = a4;
    v19 = 2082;
    v20 = v12;
    _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Received notification registration request for %{public}s event %d from device %{public}s", __p, 0x1Cu);
    if (v15 < 0)
    {
      operator delete(*buf);
    }
  }

  return sub_100205418(a2, a3, 49, v8);
}

uint64_t sub_1006C62D4(uint64_t a1, unsigned int a2, int a3, unint64_t a4, int *a5)
{
  v25[0] = 0;
  v25[1] = 0;
  sub_100007F88(v25, a1 + 280);
  v10 = *(a1 + 352);
  if (!v10)
  {
    goto LABEL_28;
  }

  v11 = a1 + 352;
  do
  {
    v12 = *(v10 + 32);
    v13 = v12 >= a4;
    v14 = v12 < a4;
    if (v13)
    {
      v11 = v10;
    }

    v10 = *(v10 + 8 * v14);
  }

  while (v10);
  if (v11 != a1 + 352 && *(v11 + 32) <= a4)
  {
    v15 = *a5;
    v24 = *(a5 + 2);
    v23 = v15;
    v16 = *(a5 + 6);
    if (a3)
    {
      operator delete();
    }

    sub_10000801C(v25);
    v32 = 0;
    v33 = 0;
    v34 = 0;
    v17 = qword_100BCE930;
    if (os_log_type_enabled(qword_100BCE930, OS_LOG_TYPE_DEFAULT))
    {
      v18 = a2 > 4 ? "unknown" : (&off_100B07FC0)[a2];
      sub_1000E5A58(a4, __p);
      *buf = 136446722;
      v19 = v22 >= 0 ? __p : __p[0];
      v27 = "interim";
      v28 = 2082;
      v29 = v18;
      v30 = 2082;
      v31 = v19;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Sending %{public}s notification for playback state '%{public}s' to device %{public}s", buf, 0x20u);
      if (v22 < 0)
      {
        operator delete(__p[0]);
      }
    }

    LOBYTE(v32) = 1;
    LOBYTE(v33) = a2;
    if (a2 <= 2)
    {
      sub_1003641E4(8);
    }

    buf[0] = 0;
    sub_1000216B4(buf);
    sub_100206868(&v23, v16, &v32, 0);
    sub_100022214(buf);
    sub_10002249C(buf);
  }

  else
  {
LABEL_28:
    if (os_log_type_enabled(qword_100BCE930, OS_LOG_TYPE_ERROR))
    {
      sub_1000E5A58(a4, buf);
      sub_100861FD4();
    }
  }

  return sub_1000088CC(v25);
}

void sub_1006C6538(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

const char *sub_1006C6574(unsigned int a1)
{
  if (a1 > 4)
  {
    return "unknown";
  }

  else
  {
    return (&off_100B07FC0)[a1];
  }
}

uint64_t sub_1006C65A0(uint64_t a1, uint64_t a2, int a3, unint64_t a4, int *a5)
{
  v24[0] = 0;
  v24[1] = 0;
  sub_100007F88(v24, a1 + 280);
  v10 = *(a1 + 352);
  if (!v10)
  {
    goto LABEL_23;
  }

  v11 = a1 + 352;
  do
  {
    v12 = *(v10 + 32);
    v13 = v12 >= a4;
    v14 = v12 < a4;
    if (v13)
    {
      v11 = v10;
    }

    v10 = *(v10 + 8 * v14);
  }

  while (v10);
  if (v11 != a1 + 352 && *(v11 + 32) <= a4)
  {
    v15 = *a5;
    v23 = *(a5 + 2);
    v22 = v15;
    v16 = *(a5 + 6);
    if (a3)
    {
      operator delete();
    }

    sub_10000801C(v24);
    v31 = 0;
    v32 = 0;
    v33 = 0;
    v17 = qword_100BCE930;
    if (os_log_type_enabled(qword_100BCE930, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000E5A58(a4, __p);
      *buf = 136446722;
      v18 = v21 >= 0 ? __p : __p[0];
      v26 = "interim";
      v27 = 2048;
      v28 = a2;
      v29 = 2082;
      v30 = v18;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Sending %{public}s notification for track ID [%llu] to device %{public}s", buf, 0x20u);
      if (v21 < 0)
      {
        operator delete(__p[0]);
      }
    }

    LOBYTE(v31) = 2;
    v32 = a2;
    buf[0] = 0;
    sub_1000216B4(buf);
    sub_100206868(&v22, v16, &v31, 0);
    sub_100022214(buf);
    sub_10002249C(buf);
  }

  else
  {
LABEL_23:
    if (os_log_type_enabled(qword_100BCE930, OS_LOG_TYPE_ERROR))
    {
      sub_1000E5A58(a4, buf);
      sub_100861FD4();
    }
  }

  return sub_1000088CC(v24);
}

void sub_1006C67D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1006C6810(uint64_t a1, int a2, int a3, int a4, unint64_t a5, int *a6)
{
  v29[0] = 0;
  v29[1] = 0;
  sub_100007F88(v29, a1 + 280);
  v12 = *(a1 + 352);
  if (!v12)
  {
    goto LABEL_23;
  }

  v13 = a1 + 352;
  do
  {
    v14 = *(v12 + 32);
    v15 = v14 >= a5;
    v16 = v14 < a5;
    if (v15)
    {
      v13 = v12;
    }

    v12 = *(v12 + 8 * v16);
  }

  while (v12);
  if (v13 != a1 + 352 && *(v13 + 32) <= a5)
  {
    v17 = *a6;
    v28 = *(a6 + 2);
    v27 = v17;
    v18 = *(a6 + 6);
    if (a4)
    {
      operator delete();
    }

    sub_10000801C(v29);
    v26 = 196610;
    BYTE1(v26) = a2;
    HIBYTE(v26) = a3;
    v38 = 0;
    v39 = 0;
    v40 = 0;
    v19 = qword_100BCE930;
    if (os_log_type_enabled(qword_100BCE930, OS_LOG_TYPE_DEFAULT))
    {
      v20 = off_100B07AE8[a2 - 1];
      v21 = off_100B07B00[a3 - 1];
      sub_1000E5A58(a5, __p);
      *buf = 136446978;
      v22 = v25 >= 0 ? __p : __p[0];
      v31 = "interim";
      v32 = 2082;
      v33 = v20;
      v34 = 2082;
      v35 = v21;
      v36 = 2082;
      v37 = v22;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Sending %{public}s notification for player settings '%{public}s'/'%{public}s' to device %{public}s", buf, 0x2Au);
      if (v25 < 0)
      {
        operator delete(__p[0]);
      }
    }

    LOBYTE(v38) = 8;
    v39 = &v26;
    LOBYTE(v40) = 2;
    buf[0] = 0;
    sub_1000216B4(buf);
    sub_100206868(&v27, v18, &v38, 0);
    sub_100022214(buf);
    sub_10002249C(buf);
  }

  else
  {
LABEL_23:
    if (os_log_type_enabled(qword_100BCE930, OS_LOG_TYPE_ERROR))
    {
      sub_1000E5A58(a5, buf);
      sub_100861FD4();
    }
  }

  return sub_1000088CC(v29);
}

void sub_1006C6A90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1006C6AD0(uint64_t a1, int a2, unint64_t a3, int *a4)
{
  v21[0] = 0;
  v21[1] = 0;
  sub_100007F88(v21, a1 + 280);
  v8 = *(a1 + 352);
  if (!v8)
  {
    goto LABEL_23;
  }

  v9 = a1 + 352;
  do
  {
    v10 = *(v8 + 32);
    v11 = v10 >= a3;
    v12 = v10 < a3;
    if (v11)
    {
      v9 = v8;
    }

    v8 = *(v8 + 8 * v12);
  }

  while (v8);
  if (v9 != a1 + 352 && *(v9 + 32) <= a3)
  {
    v13 = *a4;
    v19 = *(a4 + 2);
    v18 = v13;
    v14 = *(a4 + 6);
    if (a2)
    {
      operator delete();
    }

    sub_10000801C(v21);
    memset(v20, 0, sizeof(v20));
    v15 = qword_100BCE930;
    if (os_log_type_enabled(qword_100BCE930, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000E5A58(a3, __p);
      v16 = v23 >= 0 ? __p : __p[0];
      *buf = 136446466;
      v25 = "interim";
      v26 = 2082;
      v27 = v16;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Sending %{public}s notification for now playing content to device %{public}s", buf, 0x16u);
      if (v23 < 0)
      {
        operator delete(__p[0]);
      }
    }

    LOBYTE(v20[0]) = 9;
    LOBYTE(__p[0]) = 0;
    sub_1000216B4(__p);
    sub_100206868(&v18, v14, v20, 0);
    sub_100022214(__p);
    sub_10002249C(__p);
  }

  else
  {
LABEL_23:
    if (os_log_type_enabled(qword_100BCE930, OS_LOG_TYPE_ERROR))
    {
      sub_1000E5A58(a3, v20);
      sub_100861FD4();
    }
  }

  return sub_1000088CC(v21);
}

void sub_1006C6CEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1006C6D2C(uint64_t a1, int a2, unint64_t a3, int *a4)
{
  v21[0] = 0;
  v21[1] = 0;
  sub_100007F88(v21, a1 + 280);
  v8 = *(a1 + 352);
  if (!v8)
  {
    goto LABEL_23;
  }

  v9 = a1 + 352;
  do
  {
    v10 = *(v8 + 32);
    v11 = v10 >= a3;
    v12 = v10 < a3;
    if (v11)
    {
      v9 = v8;
    }

    v8 = *(v8 + 8 * v12);
  }

  while (v8);
  if (v9 != a1 + 352 && *(v9 + 32) <= a3)
  {
    v13 = *a4;
    v19 = *(a4 + 2);
    v18 = v13;
    v14 = *(a4 + 6);
    if (a2)
    {
      operator delete();
    }

    sub_10000801C(v21);
    memset(v20, 0, sizeof(v20));
    v15 = qword_100BCE930;
    if (os_log_type_enabled(qword_100BCE930, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000E5A58(a3, __p);
      v16 = v23 >= 0 ? __p : __p[0];
      *buf = 136446466;
      v25 = "interim";
      v26 = 2082;
      v27 = v16;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Sending %{public}s notification for available players to device %{public}s", buf, 0x16u);
      if (v23 < 0)
      {
        operator delete(__p[0]);
      }
    }

    LOBYTE(v20[0]) = 10;
    LOBYTE(__p[0]) = 0;
    sub_1000216B4(__p);
    sub_100206868(&v18, v14, v20, 0);
    sub_100022214(__p);
    sub_10002249C(__p);
  }

  else
  {
LABEL_23:
    if (os_log_type_enabled(qword_100BCE930, OS_LOG_TYPE_ERROR))
    {
      sub_1000E5A58(a3, v20);
      sub_100861FD4();
    }
  }

  return sub_1000088CC(v21);
}

void sub_1006C6F48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1006C6F88(uint64_t a1, int a2, __int16 a3, int a4, unint64_t a5, int *a6)
{
  v26[0] = 0;
  v26[1] = 0;
  sub_100007F88(v26, a1 + 280);
  v12 = *(a1 + 352);
  if (!v12)
  {
    goto LABEL_23;
  }

  v13 = a1 + 352;
  do
  {
    v14 = *(v12 + 32);
    v15 = v14 >= a5;
    v16 = v14 < a5;
    if (v15)
    {
      v13 = v12;
    }

    v12 = *(v12 + 8 * v16);
  }

  while (v12);
  if (v13 != a1 + 352 && *(v13 + 32) <= a5)
  {
    v17 = *a6;
    v25 = *(a6 + 2);
    v24 = v17;
    v18 = *(a6 + 6);
    if (a4)
    {
      operator delete();
    }

    sub_10000801C(v26);
    v33 = 0;
    v34 = 0;
    v35 = 0;
    v19 = qword_100BCE930;
    if (os_log_type_enabled(qword_100BCE930, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000E5A58(a5, __p);
      *buf = 136446722;
      v20 = v23 >= 0 ? __p : __p[0];
      v28 = "interim";
      v29 = 1024;
      v30 = a2;
      v31 = 2082;
      v32 = v20;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Sending %{public}s notification for player addressed %u to device %{public}s", buf, 0x1Cu);
      if (v23 < 0)
      {
        operator delete(__p[0]);
      }
    }

    LOBYTE(v33) = 11;
    LOWORD(v34) = a2;
    WORD1(v34) = a3;
    buf[0] = 0;
    sub_1000216B4(buf);
    sub_100206868(&v24, v18, &v33, 0);
    sub_100022214(buf);
    sub_10002249C(buf);
  }

  else
  {
LABEL_23:
    if (os_log_type_enabled(qword_100BCE930, OS_LOG_TYPE_ERROR))
    {
      sub_1000E5A58(a5, buf);
      sub_100861FD4();
    }
  }

  return sub_1000088CC(v26);
}

void sub_1006C71C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1006C7208(uint64_t a1, int a2, int a3, unint64_t a4, int *a5)
{
  v24[0] = 0;
  v24[1] = 0;
  sub_100007F88(v24, a1 + 280);
  v10 = *(a1 + 352);
  if (!v10)
  {
    goto LABEL_23;
  }

  v11 = a1 + 352;
  do
  {
    v12 = *(v10 + 32);
    v13 = v12 >= a4;
    v14 = v12 < a4;
    if (v13)
    {
      v11 = v10;
    }

    v10 = *(v10 + 8 * v14);
  }

  while (v10);
  if (v11 != a1 + 352 && *(v11 + 32) <= a4)
  {
    v15 = *a5;
    v23 = *(a5 + 2);
    v22 = v15;
    v16 = *(a5 + 6);
    if (a3)
    {
      operator delete();
    }

    sub_10000801C(v24);
    v31 = 0;
    v32 = 0;
    v33 = 0;
    v17 = qword_100BCE930;
    if (os_log_type_enabled(qword_100BCE930, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000E5A58(a4, __p);
      *buf = 136446722;
      v18 = v21 >= 0 ? __p : __p[0];
      v26 = "interim";
      v27 = 1024;
      v28 = a2;
      v29 = 2082;
      v30 = v18;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Sending %{public}s notification for uidCounter %u to device %{public}s", buf, 0x1Cu);
      if (v21 < 0)
      {
        operator delete(__p[0]);
      }
    }

    LOBYTE(v31) = 12;
    LOWORD(v32) = a2;
    buf[0] = 0;
    sub_1000216B4(buf);
    sub_100206868(&v22, v16, &v31, 0);
    sub_100022214(buf);
    sub_10002249C(buf);
  }

  else
  {
LABEL_23:
    if (os_log_type_enabled(qword_100BCE930, OS_LOG_TYPE_ERROR))
    {
      sub_1000E5A58(a4, buf);
      sub_100861FD4();
    }
  }

  return sub_1000088CC(v24);
}

void sub_1006C7438(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1006C7478(uint64_t a1, uint64_t a2, char a3)
{
  if (qword_100B508F0 != -1)
  {
    sub_100861A8C();
  }

  LODWORD(__p[0]) = *a2;
  WORD2(__p[0]) = *(a2 + 4);
  v6 = sub_1000E6554(off_100B508E8, __p, 1);
  v15 = v6;
  v7 = qword_100BCE930;
  if (os_log_type_enabled(qword_100BCE930, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000E5A58(v6, __p);
    if (v14 >= 0)
    {
      v8 = __p;
    }

    else
    {
      v8 = __p[0];
    }

    *buf = 136446210;
    v17 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Received 'get play status' request from device %{public}s", buf, 0xCu);
    if (v14 < 0)
    {
      operator delete(__p[0]);
    }
  }

  v9 = *(*sub_10056E904(a1 + 344, &v15) + 8);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1006C7634;
  v11[3] = &unk_100B07B48;
  v11[4] = v15;
  v12 = a3;
  return (*(*v9 + 32))(v9, v11);
}

_BYTE *sub_1006C7634(uint64_t a1, uint64_t a2, int a3, int a4, unsigned int a5)
{
  v15[1] = a4;
  v15[0] = a3;
  v15[2] = a5;
  v9 = qword_100BCE930;
  if (os_log_type_enabled(qword_100BCE930, OS_LOG_TYPE_INFO))
  {
    v10 = a5 > 4 ? "unknown" : (&off_100B07FC0)[a5];
    sub_1000E5A58(*(a1 + 32), __p);
    v11 = v14 >= 0 ? __p : __p[0];
    *buf = 136446978;
    v17 = v10;
    v18 = 1024;
    v19 = a4;
    v20 = 1024;
    v21 = a3;
    v22 = 2082;
    v23 = v11;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Sending current play status (%{public}s - %u of %ums) to device %{public}s", buf, 0x22u);
    if (v14 < 0)
    {
      operator delete(__p[0]);
    }
  }

  buf[0] = 0;
  sub_1000216B4(buf);
  if (sub_1002067B8(*(a1 + 32) + 128, *(a1 + 40), v15) && os_log_type_enabled(qword_100BCE930, OS_LOG_TYPE_ERROR))
  {
    sub_100862028();
  }

  return sub_10002249C(buf);
}

void sub_1006C77C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_10002249C(va);
  _Unwind_Resume(a1);
}

void sub_1006C77E4(uint64_t a1, uint64_t a2, unsigned int a3, int a4)
{
  v5 = a3;
  v22[0] = 0;
  v22[1] = 0;
  v8 = sub_1002068C4(a2, a3, a4, v22);
  if (qword_100B508F0 != -1)
  {
    sub_100862090();
  }

  LODWORD(__p[0]) = *a2;
  WORD2(__p[0]) = *(a2 + 4);
  v9 = sub_1000E6554(off_100B508E8, __p, 1);
  v21 = v9;
  v10 = qword_100BCE930;
  if (os_log_type_enabled(qword_100BCE930, OS_LOG_TYPE_INFO))
  {
    sub_1000E5A58(v9, __p);
    v11 = v20 >= 0 ? __p : __p[0];
    *buf = 67109378;
    *v24 = a4;
    *&v24[4] = 2082;
    *&v24[6] = v11;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Received 'continue' command for PDU 0x%x from device %{public}s", buf, 0x12u);
    if (v20 < 0)
    {
      operator delete(__p[0]);
    }
  }

  if (v8 != 3304)
  {
    if (v8)
    {
      v17 = qword_100BCE930;
      if (os_log_type_enabled(qword_100BCE930, OS_LOG_TYPE_ERROR))
      {
        sub_1000E5A58(v9, __p);
        v18 = v20 >= 0 ? __p : __p[0];
        *buf = 136446466;
        *v24 = v18;
        *&v24[8] = 1024;
        *&v24[10] = v8;
        _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "Failed to continue response for device %{public}s - result was %{bluetooth:OI_STATUS}u", buf, 0x12u);
        if (v20 < 0)
        {
          v16 = __p[0];
LABEL_15:
          operator delete(v16);
        }
      }
    }

    else
    {
      __p[0] = &v21;
      v12 = sub_10041F204(a1 + 480, &v21);
      LOBYTE(__p[0]) = v5;
      BYTE1(__p[0]) = a4;
      v13 = sub_1006CF450((v12 + 5), __p);
      __p[0] = &v21;
      v14 = sub_10041F204(a1 + 480, &v21);
      if (v14 + 6 != v13)
      {
        if (a4 == 32)
        {
          sub_1006C41AC(v14, v13[5]);
        }

        __p[0] = &v21;
        v15 = sub_10041F204(a1 + 480, &v21);
        sub_10002717C(v15 + 5, v13);
        v16 = v13;
        goto LABEL_15;
      }
    }
  }
}

uint64_t sub_1006C7A8C(uint64_t a1, uint64_t a2, unsigned int a3, int a4)
{
  if (qword_100B508F0 != -1)
  {
    sub_100861A8C();
  }

  LODWORD(__p[0]) = *a2;
  WORD2(__p[0]) = *(a2 + 4);
  v8 = sub_1000E6554(off_100B508E8, __p, 1);
  v18 = v8;
  v9 = qword_100BCE930;
  if (os_log_type_enabled(qword_100BCE930, OS_LOG_TYPE_INFO))
  {
    sub_1000E5A58(v8, __p);
    v10 = v17 >= 0 ? __p : __p[0];
    *buf = 67109378;
    v20 = a4;
    v21 = 2082;
    v22 = v10;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Received 'abort' command for PDU 0x%x from device %{public}s", buf, 0x12u);
    if (v17 < 0)
    {
      operator delete(__p[0]);
    }
  }

  __p[0] = &v18;
  v11 = sub_10041F204(a1 + 480, &v18);
  LOBYTE(__p[0]) = a3;
  BYTE1(__p[0]) = a4;
  v12 = sub_1006CF450((v11 + 5), __p);
  __p[0] = &v18;
  v13 = sub_10041F204(a1 + 480, &v18);
  if (v13 + 6 != v12)
  {
    if (a4 == 32)
    {
      sub_1006C41AC(v13, v12[5]);
    }

    __p[0] = &v18;
    v14 = sub_10041F204(a1 + 480, &v18);
    sub_10002717C(v14 + 5, v12);
    operator delete(v12);
  }

  return sub_100205418(a2, a3, 65, 0);
}

uint64_t sub_1006C7C98(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  if (qword_100B508F0 != -1)
  {
    sub_100861A8C();
  }

  LODWORD(__p[0]) = *a2;
  WORD2(__p[0]) = *(a2 + 4);
  v8 = sub_1000E6554(off_100B508E8, __p, 1);
  v17 = v8;
  v9 = qword_100BCE930;
  if (os_log_type_enabled(qword_100BCE930, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000E5A58(v8, __p);
    if (v16 >= 0)
    {
      v10 = __p;
    }

    else
    {
      v10 = __p[0];
    }

    *buf = 67109378;
    v19 = a4;
    v20 = 2082;
    v21 = v10;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Received 'SetAddressedPlayer' request (id - %u) from device %{public}s", buf, 0x12u);
    if (v16 < 0)
    {
      operator delete(__p[0]);
    }
  }

  v11 = *(*sub_10056E904(a1 + 344, &v17) + 8);
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1006C7E68;
  v13[3] = &unk_100B07B68;
  v13[4] = a1;
  v13[5] = v17;
  v14 = a3;
  return (*(*v11 + 104))(v11, a4, v13);
}

_BYTE *sub_1006C7E68(uint64_t a1, int a2)
{
  v17 = 0x1000060581900;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v4 = qword_100BCE930;
  if (os_log_type_enabled(qword_100BCE930, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000E5A58(*(a1 + 40), __p);
    v5 = v9 >= 0 ? __p : __p[0];
    *buf = 67109378;
    v14 = a2;
    v15 = 2082;
    v16 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Sending 'SetAddressedPlayer' response (result - %02x) to device %{public}s", buf, 0x12u);
    if (v9 < 0)
    {
      operator delete(__p[0]);
    }
  }

  HIBYTE(v17) = a2;
  if (a2 == 4)
  {
    v6 = 9;
  }

  else
  {
    v6 = 10;
  }

  LOBYTE(v10) = v6;
  *(&v10 + 1) = 9;
  BYTE3(v10) = 0;
  v11 = &v17;
  LOWORD(v12) = 8;
  LOBYTE(__p[0]) = 0;
  sub_1000216B4(__p);
  if (sub_100208F8C(*(a1 + 40) + 128, *(a1 + 48), &v10) && os_log_type_enabled(qword_100BCE930, OS_LOG_TYPE_ERROR))
  {
    sub_1008620B8();
  }

  return sub_10002249C(__p);
}

uint64_t sub_1006C800C(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  if (qword_100B508F0 != -1)
  {
    sub_100861A8C();
  }

  LODWORD(__p[0]) = *a2;
  WORD2(__p[0]) = *(a2 + 4);
  v8 = sub_1000E6554(off_100B508E8, __p, 1);
  v17 = v8;
  v9 = qword_100BCE930;
  if (os_log_type_enabled(qword_100BCE930, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000E5A58(v8, __p);
    if (v16 >= 0)
    {
      v10 = __p;
    }

    else
    {
      v10 = __p[0];
    }

    *buf = 67109378;
    v19 = a4;
    v20 = 2082;
    v21 = v10;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Received 'SetBrowsedPlayer' request (id - %u) from device %{public}s", buf, 0x12u);
    if (v16 < 0)
    {
      operator delete(__p[0]);
    }
  }

  v11 = *(*sub_10056E904(a1 + 344, &v17) + 8);
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1006C81DC;
  v13[3] = &unk_100B07B88;
  v13[4] = v17;
  v14 = a3;
  return (*(*v11 + 112))(v11, a4, v13);
}

_BYTE *sub_1006C81DC(uint64_t a1, int a2, __int16 a3, int a4, uint64_t a5)
{
  if (a2 == 4)
  {
    v10 = *(a5 + 8);
    v11 = 13;
    while (v10 != a5)
    {
      v12 = *(v10 + 39);
      if (v12 < 0)
      {
        v12 = *(v10 + 24);
      }

      v11 += v12 + 2;
      v10 = *(v10 + 8);
    }
  }

  else
  {
    v11 = 4;
  }

  v13 = qword_100BCE930;
  v14 = os_log_type_enabled(qword_100BCE930, OS_LOG_TYPE_DEFAULT);
  if (v14)
  {
    sub_1000E5A58(*(a1 + 32), v37);
    v15 = v11;
    if (v38 >= 0)
    {
      v16 = v37;
    }

    else
    {
      v16 = v37[0];
    }

    *buf = 67109890;
    v40 = a2;
    v41 = 1024;
    v42 = a4;
    v43 = 1024;
    v44 = v11;
    v45 = 2082;
    v46 = v16;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Sending 'SetBrowsedPlayer' response (result - %02x, nbItems - %u, length - %u) to device %{public}s", buf, 0x1Eu);
    if (v38 < 0)
    {
      operator delete(v37[0]);
    }
  }

  else
  {
    v15 = v11;
  }

  __chkstk_darwin(v14, v11);
  v18 = &v37[-1] - v17;
  bzero(&v37[-1] - v17, v19);
  *v18 = 112;
  v18[2] = v15 - 3;
  v18[1] = (v15 - 3) >> 8;
  v18[3] = a2;
  if (a2 == 4)
  {
    v18[5] = a3;
    v18[4] = HIBYTE(a3);
    v18[9] = a4;
    v18[8] = BYTE1(a4);
    v18[7] = BYTE2(a4);
    v18[6] = HIBYTE(a4);
    *(v18 + 5) = 27136;
    v20 = *(a5 + 8);
    v18[12] = *(a5 + 16);
    if (v20 == a5)
    {
      v26 = 13;
    }

    else
    {
      v21 = 13;
      do
      {
        v22 = *(v20 + 39);
        if ((v22 & 0x8000000000000000) != 0)
        {
          v25 = &v18[v21];
          v25[1] = *(v20 + 24);
          *v25 = BYTE1(*(v20 + 24));
          v24 = v21 + 2;
          memcpy(&v18[(v21 + 2)], *(v20 + 16), *(v20 + 24));
          v22 = *(v20 + 24);
        }

        else
        {
          v23 = &v18[v21];
          v23[1] = v22;
          *v23 = 0;
          v24 = v21 + 2;
          memcpy(&v18[(v21 + 2)], (v20 + 16), v22);
        }

        v21 = v24 + v22;
        v20 = *(v20 + 8);
      }

      while (v20 != a5);
      v26 = (v24 + v22);
    }
  }

  else
  {
    v26 = 4;
  }

  if (v26 != v15)
  {
    v27 = qword_100BCE930;
    if (os_log_type_enabled(qword_100BCE930, OS_LOG_TYPE_FAULT))
    {
      sub_100862120(v27, v28, v29, v30, v31, v32, v33, v34);
    }
  }

  buf[0] = 0;
  sub_1000216B4(buf);
  if (sub_100208FE8(*(a1 + 32) + 128, *(a1 + 40), v18, v11) && os_log_type_enabled(qword_100BCE930, OS_LOG_TYPE_ERROR))
  {
    sub_100862198();
  }

  return sub_10002249C(buf);
}

uint64_t sub_1006C84F0(uint64_t a1, uint64_t a2, char a3, uint64_t a4, int a5, uint64_t *a6)
{
  if (qword_100B508F0 != -1)
  {
    sub_100861A8C();
  }

  *buf = *a2;
  LOWORD(v25) = *(a2 + 4);
  v12 = sub_1000E6554(off_100B508E8, buf, 1);
  v23 = v12;
  v13 = *a6;
  v14 = qword_100BCE930;
  if (os_log_type_enabled(qword_100BCE930, OS_LOG_TYPE_DEFAULT))
  {
    if (a5)
    {
      v15 = "down";
    }

    else
    {
      v15 = "up";
    }

    sub_1000E5A58(v12, __p);
    if (v22 >= 0)
    {
      v16 = __p;
    }

    else
    {
      v16 = __p[0];
    }

    *buf = 136315650;
    v25 = v15;
    v26 = 1024;
    v27 = a4;
    v28 = 2082;
    v29 = v16;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Received 'ChangePath(%s)' request (uidCounter - %u) from device %{public}s", buf, 0x1Cu);
    if (v22 < 0)
    {
      operator delete(__p[0]);
    }
  }

  v17 = *(*sub_10056E904(a1 + 344, &v23) + 8);
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_1006C8710;
  v19[3] = &unk_100B07BA8;
  v19[4] = v23;
  v20 = a3;
  return (*(*v17 + 120))(v17, a4, a5 == 0, v13, v19);
}

_BYTE *sub_1006C8710(uint64_t a1, int a2, unsigned int a3)
{
  if (a2 == 4)
  {
    v6 = 8;
  }

  else
  {
    v6 = 4;
  }

  v7 = qword_100BCE930;
  v8 = os_log_type_enabled(qword_100BCE930, OS_LOG_TYPE_DEFAULT);
  if (v8)
  {
    sub_1000E5A58(*(a1 + 32), v24);
    v10 = v25 >= 0 ? v24 : v24[0];
    *buf = 67109634;
    v27 = a2;
    v28 = 1024;
    v29 = a3;
    v30 = 2082;
    v31 = v10;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Sending 'ChangePath' response (result - %02x, nbItems - %u) to device %{public}s", buf, 0x18u);
    if (v25 < 0)
    {
      operator delete(v24[0]);
    }
  }

  __chkstk_darwin(v8, v9);
  v12 = &v24[-1] - v11;
  bzero(&v24[-1] - v11, v6);
  *v12 = 114;
  v12[2] = v6 - 3;
  v12[3] = a2;
  if (a2 == 4)
  {
    *(v12 + 1) = bswap32(a3);
    v13 = 8;
  }

  else
  {
    v13 = 4;
  }

  if (v13 != v6)
  {
    v14 = qword_100BCE930;
    if (os_log_type_enabled(qword_100BCE930, OS_LOG_TYPE_FAULT))
    {
      sub_100862120(v14, v15, v16, v17, v18, v19, v20, v21);
    }
  }

  buf[0] = 0;
  sub_1000216B4(buf);
  if (sub_100208FE8(*(a1 + 32) + 128, *(a1 + 40), v12, v6) && os_log_type_enabled(qword_100BCE930, OS_LOG_TYPE_ERROR))
  {
    sub_100862200();
  }

  return sub_10002249C(buf);
}

void *sub_1006C8924(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8)
{
  if (qword_100B508F0 != -1)
  {
    sub_100861A8C();
  }

  *buf = *a2;
  LOWORD(v28) = *(a2 + 4);
  v14 = sub_1000E6554(off_100B508E8, buf, 1);
  v26 = v14;
  v15 = qword_100BCE930;
  if (os_log_type_enabled(qword_100BCE930, OS_LOG_TYPE_DEFAULT))
  {
    v16 = a4 > 3 ? "Unknown" : (&off_100B08028)[a4];
    sub_1000E5A58(v14, __p);
    v17 = v25 >= 0 ? __p : __p[0];
    *buf = 136315906;
    v28 = v16;
    v29 = 1024;
    v30 = a5;
    v31 = 1024;
    v32 = a6;
    v33 = 2082;
    v34 = v17;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Received 'GetFolderItems(%s)' request (startItem - %u, endItem - %u) from device %{public}s", buf, 0x22u);
    if (v25 < 0)
    {
      operator delete(__p[0]);
    }
  }

  if (a4 > 3)
  {
    *buf = 167837809;
    return sub_100208FE8(a2, a3, buf, 4uLL);
  }

  else
  {
    v18 = *(*sub_10056E904(a1 + 344, &v26) + 8);
    sub_1006C8BB8(a8, a7, buf);
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_1006C8E84;
    v22[3] = &unk_100B07BC8;
    v22[4] = a1;
    v22[5] = v26;
    v23 = a3;
    (*(*v18 + 128))(v18, a4, a5, a6, buf, v22);
    return sub_100028EB4(buf);
  }
}

void sub_1006C8B9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_100028EB4(va);
  _Unwind_Resume(a1);
}

void sub_1006C8BB8(uint64_t a1@<X1>, int a2@<W2>, void *a3@<X8>)
{
  *a3 = a3;
  a3[1] = a3;
  a3[2] = 0;
  if (!a2)
  {
    operator new();
  }

  if (a1)
  {
    operator new();
  }
}

void sub_1006C8E84(uint64_t a1, int a2, __int16 a3, uint64_t a4)
{
  v5 = *(a1 + 32);
  v6 = *(v5 + 512);
  if (!v6)
  {
    goto LABEL_9;
  }

  v7 = a4;
  v10 = v5 + 512;
  v11 = *(a1 + 40);
  v12 = v5 + 512;
  do
  {
    v13 = *(v6 + 32);
    v14 = v13 >= v11;
    v15 = v13 < v11;
    if (v14)
    {
      v12 = v6;
    }

    v6 = *(v6 + 8 * v15);
  }

  while (v6);
  if (v12 != v10 && v11 >= *(v12 + 32))
  {
    if (a2 == 4)
    {
      v17 = *(a4 + 8);
      if (v17 == a4)
      {
        v18 = 0;
        LOWORD(v19) = 8;
        v17 = a4;
      }

      else
      {
        v18 = 0;
        v19 = *(v12 + 40);
        v20 = 8;
        while (1)
        {
          v21 = (*(**(v17 + 16) + 16))(*(v17 + 16));
          v22 = v21 + v20;
          if (v17 != *(v7 + 8) && v19 < v22)
          {
            break;
          }

          ++v18;
          v17 = *(v17 + 8);
          v20 += v21;
          if (v17 == v7)
          {
            v17 = v7;
            LOWORD(v19) = v22;
            goto LABEL_24;
          }
        }

        if (v19 >= v20)
        {
          LOWORD(v19) = v20;
        }

        else if (v18 == 1)
        {
          v18 = 1;
        }

        else
        {
          v46 = qword_100BCE930;
          if (os_log_type_enabled(qword_100BCE930, OS_LOG_TYPE_FAULT))
          {
            sub_100862268(v46, v47, v48, v49, v50, v51, v52, v53);
          }
        }
      }
    }

    else
    {
      v17 = 0;
      v18 = 0;
      LOWORD(v19) = 4;
    }

LABEL_24:
    v23 = qword_100BCE930;
    v24 = os_log_type_enabled(qword_100BCE930, OS_LOG_TYPE_DEFAULT);
    if (v24)
    {
      sub_1000E5A58(*(a1 + 40), v56);
      v25 = v19;
      v26 = v56;
      if (v57 < 0)
      {
        v26 = *v56;
      }

      *buf = 67109890;
      *&buf[4] = a2;
      *&buf[8] = 1024;
      *&buf[10] = v18;
      *&buf[14] = 1024;
      LODWORD(v59[0]) = v19;
      WORD2(v59[0]) = 2082;
      *(v59 + 6) = v26;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Sending 'GetFolderItems' response (result - %02x, nbItems - %u, length - %u) to device %{public}s", buf, 0x1Eu);
      if (v57 < 0)
      {
        operator delete(*v56);
      }
    }

    else
    {
      v25 = v19;
    }

    v54[1] = v54;
    __chkstk_darwin(v24, v19);
    v28 = v54 - v27;
    bzero(v54 - v27, v29);
    *v28 = 113;
    v28[2] = v25 - 3;
    v28[1] = (v25 - 3) >> 8;
    v28[3] = a2;
    if (a2 == 4)
    {
      v28[5] = a3;
      v28[4] = HIBYTE(a3);
      v28[7] = v18;
      v28[6] = HIBYTE(v18);
      v31 = 8;
      *&v30 = 136315138;
      v55 = v30;
      do
      {
        v7 = *(v7 + 8);
        if (v7 == v17)
        {
          break;
        }

        v32 = qword_100BCE930;
        if (os_log_type_enabled(qword_100BCE930, OS_LOG_TYPE_DEFAULT))
        {
          v33 = *(v7 + 16);
          if (*(v33 + 47) < 0)
          {
            sub_100008904(buf, *(v33 + 24), *(v33 + 32));
          }

          else
          {
            *buf = *(v33 + 24);
            v59[0] = *(v33 + 40);
          }

          v34 = buf;
          if (v59[0] < 0)
          {
            v34 = *buf;
          }

          *v56 = v55;
          *&v56[4] = v34;
          _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "Sending item %s", v56, 0xCu);
          if (SHIBYTE(v59[0]) < 0)
          {
            operator delete(*buf);
          }
        }

        v35 = *(v7 + 16);
        v36 = v19 >= v31 ? v19 - v31 : 0;
        if ((*(*v35 + 24))(*(v7 + 16)) > v36)
        {
          break;
        }

        v37 = (*(*v35 + 32))(v35, &v28[v31], v36);
        v31 += v37;
      }

      while (v37);
    }

    else
    {
      v31 = 4;
    }

    if (v31 > v19)
    {
      v38 = qword_100BCE930;
      if (os_log_type_enabled(qword_100BCE930, OS_LOG_TYPE_FAULT))
      {
        sub_1008622E0(v38, v39, v40, v41, v42, v43, v44, v45);
      }
    }

    buf[0] = 0;
    sub_1000216B4(buf);
    if (sub_100208FE8(*(a1 + 40) + 128, *(a1 + 48), v28, v31) && os_log_type_enabled(qword_100BCE930, OS_LOG_TYPE_ERROR))
    {
      sub_100862358();
    }

    sub_10002249C(buf);
  }

  else
  {
LABEL_9:
    v16 = qword_100BCE930;
    if (os_log_type_enabled(qword_100BCE930, OS_LOG_TYPE_ERROR))
    {
      sub_1008623C0((a1 + 40), v16);
    }
  }
}

void *sub_1006C9348(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t *a5, uint64_t a6, int a7, uint64_t a8)
{
  if (qword_100B508F0 != -1)
  {
    sub_100861A8C();
  }

  *buf = *a2;
  LOWORD(v29) = *(a2 + 4);
  v14 = sub_1000E6554(off_100B508E8, buf, 1);
  v27 = v14;
  v15 = qword_100BCE930;
  if (os_log_type_enabled(qword_100BCE930, OS_LOG_TYPE_DEFAULT))
  {
    v16 = a4 > 3 ? "Unknown" : (&off_100B08028)[a4];
    sub_1000E5A58(v14, __p);
    v17 = v26 >= 0 ? __p : __p[0];
    *buf = 136315650;
    v29 = v16;
    v30 = 1024;
    v31 = a6;
    v32 = 2082;
    v33 = v17;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Received 'GetItemAttributes(%s)' request (uidCounter - %u) from device %{public}s", buf, 0x1Cu);
    if (v26 < 0)
    {
      operator delete(__p[0]);
    }
  }

  if ((a4 - 1) > 2)
  {
    *buf = 167837811;
    return sub_100208FE8(a2, a3, buf, 4uLL);
  }

  else
  {
    v18 = *a5;
    v19 = *(*sub_10056E904(a1 + 344, &v27) + 8);
    sub_1006C8BB8(a8, a7, buf);
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_1006C95DC;
    v23[3] = &unk_100B07BE8;
    v23[4] = a1;
    v23[5] = v27;
    v24 = a3;
    (*(*v19 + 136))(v19, a4, v18, a6, buf, v23);
    return sub_100028EB4(buf);
  }
}

void sub_1006C95C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_100028EB4(va);
  _Unwind_Resume(a1);
}

void sub_1006C95DC(uint64_t a1, int a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = *(v4 + 512);
  if (!v5)
  {
    goto LABEL_9;
  }

  v8 = *(a1 + 40);
  v9 = v4 + 512;
  do
  {
    v10 = *(v5 + 32);
    v11 = v10 >= v8;
    v12 = v10 < v8;
    if (v11)
    {
      v9 = v5;
    }

    v5 = *(v5 + 8 * v12);
  }

  while (v5);
  if (v9 == v4 + 512 || v8 < *(v9 + 32))
  {
LABEL_9:
    v13 = qword_100BCE930;
    if (os_log_type_enabled(qword_100BCE930, OS_LOG_TYPE_ERROR))
    {
      sub_100862534((a1 + 40), v13);
    }

    return;
  }

  if (a2 != 4)
  {
    v18 = 0;
    v15 = 0;
    LOWORD(v16) = 4;
    goto LABEL_29;
  }

  v14 = *(a3 + 8);
  if (v14 == a3)
  {
    v15 = 0;
    LOWORD(v16) = 5;
    v18 = a3;
    goto LABEL_29;
  }

  v15 = 0;
  v16 = *(v9 + 40);
  v17 = 5;
  v18 = *(a3 + 8);
  while (1)
  {
    v19 = *(v18 + 16);
    if (*(v19 + 4) == 8 && v8 != *(v4 + 528))
    {
      goto LABEL_21;
    }

    v20 = *(v19 + 31);
    if (v20 < 0)
    {
      v20 = *(v19 + 16);
    }

    if (v18 != v14 && v16 < (v17 + v20 + 8))
    {
      break;
    }

    ++v15;
    v17 += v20 + 8;
LABEL_21:
    v18 = *(v18 + 8);
    if (v18 == a3)
    {
      v18 = a3;
LABEL_28:
      LOWORD(v16) = v17;
      goto LABEL_29;
    }
  }

  if (v16 >= v17)
  {
    goto LABEL_28;
  }

  if (v15 == 1)
  {
    v15 = 1;
  }

  else
  {
    v48 = qword_100BCE930;
    if (os_log_type_enabled(qword_100BCE930, OS_LOG_TYPE_FAULT))
    {
      sub_100862454(v48, v49, v50, v51, v52, v53, v54, v55);
    }
  }

LABEL_29:
  v21 = qword_100BCE930;
  v22 = os_log_type_enabled(qword_100BCE930, OS_LOG_TYPE_DEFAULT);
  if (v22)
  {
    sub_1000E5A58(*(a1 + 40), v58);
    v23 = v16;
    if (v61 >= 0)
    {
      v24 = v58;
    }

    else
    {
      v24 = *v58;
    }

    *buf = 67109890;
    *&buf[4] = a2;
    *&buf[8] = 1024;
    *&buf[10] = v15;
    *&buf[14] = 1024;
    LODWORD(v63[0]) = v16;
    WORD2(v63[0]) = 2082;
    *(v63 + 6) = v24;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Sending 'GetItemAttributes' response (result - %02x, nbAttributes - %u, length - %u) to device %{public}s", buf, 0x1Eu);
    if (v61 < 0)
    {
      operator delete(*v58);
    }
  }

  else
  {
    v23 = v16;
  }

  v56[1] = v56;
  __chkstk_darwin(v22, v16);
  v26 = v56 - v25;
  bzero(v56 - v25, v27);
  *v26 = 115;
  v26[2] = v23 - 3;
  v26[1] = (v23 - 3) >> 8;
  v26[3] = a2;
  if (a2 == 4)
  {
    v26[4] = v15;
    v29 = *(a3 + 8);
    v30 = 5;
    if (v29 != v18)
    {
      *&v28 = 136315394;
      v57 = v28;
      do
      {
        v31 = *(v29 + 16);
        v32 = *(v31 + 4);
        if (v32 != 8 || *(a1 + 40) == *(v4 + 528))
        {
          v33 = qword_100BCE930;
          v34 = os_log_type_enabled(qword_100BCE930, OS_LOG_TYPE_DEFAULT);
          if (v34)
          {
            v35 = sub_1006C9A88(v34, v32);
            if (*(v31 + 31) < 0)
            {
              sub_100008904(buf, *(v31 + 8), *(v31 + 16));
            }

            else
            {
              v36 = *(v31 + 8);
              v63[0] = *(v31 + 24);
              *buf = v36;
            }

            v37 = buf;
            if (v63[0] < 0)
            {
              v37 = *buf;
            }

            *v58 = v57;
            *&v58[4] = v35;
            v59 = 2080;
            v60 = v37;
            _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "Sending '%s' attribute: %s", v58, 0x16u);
            if (SHIBYTE(v63[0]) < 0)
            {
              operator delete(*buf);
            }

            v31 = *(v29 + 16);
          }

          v38 = v16 >= v30 ? v16 - v30 : 0;
          v39 = sub_10043CEF4(v31, &v26[v30], v38);
          v30 += v39;
          if (!v39)
          {
            break;
          }
        }

        v29 = *(v29 + 8);
      }

      while (v29 != v18);
    }
  }

  else
  {
    v30 = 4;
  }

  if (v30 > v16)
  {
    v40 = qword_100BCE930;
    if (os_log_type_enabled(qword_100BCE930, OS_LOG_TYPE_FAULT))
    {
      sub_1008622E0(v40, v41, v42, v43, v44, v45, v46, v47);
    }
  }

  buf[0] = 0;
  sub_1000216B4(buf);
  if (sub_100208FE8(*(a1 + 40) + 128, *(a1 + 48), v26, v30) && os_log_type_enabled(qword_100BCE930, OS_LOG_TYPE_ERROR))
  {
    sub_1008624CC();
  }

  sub_10002249C(buf);
}

const char *sub_1006C9A88(uint64_t a1, int a2)
{
  if ((a2 - 1) > 7)
  {
    return "Unknown";
  }

  else
  {
    return (&off_100B07FE8)[a2 - 1];
  }
}

void sub_1006C9AB0(uint64_t a1, uint64_t a2, unsigned int a3, int a4, unsigned int a5, const void *a6)
{
  if (qword_100B508F0 != -1)
  {
    sub_100861A8C();
  }

  LODWORD(__dst[0]) = *a2;
  WORD2(__dst[0]) = *(a2 + 4);
  v12 = sub_1000E6554(off_100B508E8, __dst, 1);
  v24 = 0;
  v25 = v12;
  __dst[0] = 0;
  __dst[1] = 0;
  if (a5 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v24) = a5;
  if (a5)
  {
    memcpy(__dst, a6, a5);
  }

  *(__dst + a5) = 0;
  v13 = qword_100BCE930;
  if (os_log_type_enabled(qword_100BCE930, OS_LOG_TYPE_DEFAULT))
  {
    v14 = SHIBYTE(v24);
    v15 = __dst[0];
    sub_1000E5A58(v25, __p);
    v16 = __dst;
    if (v14 < 0)
    {
      v16 = v15;
    }

    if (v22 >= 0)
    {
      v17 = __p;
    }

    else
    {
      v17 = __p[0];
    }

    *buf = 136315394;
    v27 = v16;
    v28 = 2082;
    v29 = v17;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Received 'Search(%s)' request from device %{public}s", buf, 0x16u);
    if (v22 < 0)
    {
      operator delete(__p[0]);
    }
  }

  if (a4 == 106)
  {
    v18 = *(*sub_10056E904(a1 + 344, &v25) + 8);
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_1006C9D74;
    v19[3] = &unk_100B07C08;
    v19[4] = v25;
    v20 = a3;
    (*(*v18 + 144))(v18, __dst, v19);
  }

  else
  {
    LODWORD(__p[0]) = 16842880;
    sub_100208FE8(a2, a3, __p, 4uLL);
  }

  if (SHIBYTE(v24) < 0)
  {
    operator delete(__dst[0]);
  }
}

void sub_1006C9D48(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_1006C9D74(uint64_t a1, int a2, __int16 a3, int a4)
{
  v5 = HIBYTE(a3);
  if (a2 == 4)
  {
    v8 = 10;
  }

  else
  {
    v8 = 4;
  }

  v9 = qword_100BCE930;
  v10 = os_log_type_enabled(qword_100BCE930, OS_LOG_TYPE_DEFAULT);
  if (v10)
  {
    sub_1000E5A58(*(a1 + 32), v26);
    v12 = v27 >= 0 ? v26 : v26[0];
    *buf = 67109634;
    v29 = a2;
    v30 = 1024;
    v31 = a4;
    v32 = 2082;
    v33 = v12;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Sending 'Search' response (result - %02x, nbItems - %u) to device %{public}s", buf, 0x18u);
    if (v27 < 0)
    {
      operator delete(v26[0]);
    }
  }

  __chkstk_darwin(v10, v11);
  v14 = &v26[-1] - v13;
  bzero(&v26[-1] - v13, v8);
  *v14 = 128;
  v14[2] = v8 - 3;
  v14[3] = a2;
  if (a2 == 4)
  {
    v14[5] = v5;
    v14[4] = 0;
    v14[9] = a4;
    v14[8] = BYTE1(a4);
    v14[7] = BYTE2(a4);
    v15 = 10;
    v14[6] = HIBYTE(a4);
  }

  else
  {
    v15 = 4;
  }

  if (v15 != v8)
  {
    v16 = qword_100BCE930;
    if (os_log_type_enabled(qword_100BCE930, OS_LOG_TYPE_FAULT))
    {
      sub_100862120(v16, v17, v18, v19, v20, v21, v22, v23);
    }
  }

  buf[0] = 0;
  sub_1000216B4(buf);
  if (sub_100208FE8(*(a1 + 32) + 128, *(a1 + 40), v14, v8) && os_log_type_enabled(qword_100BCE930, OS_LOG_TYPE_ERROR))
  {
    sub_1008625C8();
  }

  return sub_10002249C(buf);
}

uint64_t sub_1006C9FAC(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  if (qword_100B508F0 != -1)
  {
    sub_100861A8C();
  }

  LODWORD(__p[0]) = *a2;
  WORD2(__p[0]) = *(a2 + 4);
  v8 = sub_1000E6554(off_100B508E8, __p, 1);
  v18 = v8;
  v9 = qword_100BCE930;
  if (os_log_type_enabled(qword_100BCE930, OS_LOG_TYPE_DEFAULT))
  {
    v10 = a4 > 3 ? "Unknown" : (&off_100B08028)[a4];
    sub_1000E5A58(v8, __p);
    v11 = v17 >= 0 ? __p : __p[0];
    *buf = 136315394;
    v20 = v10;
    v21 = 2082;
    v22 = v11;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Received 'GetTotalNumberOfItems(%s)' request from device %{public}s", buf, 0x16u);
    if (v17 < 0)
    {
      operator delete(__p[0]);
    }
  }

  if (a4 > 3)
  {
    LODWORD(__p[0]) = 167837813;
    return sub_100208FE8(a2, a3, __p, 4uLL);
  }

  else
  {
    v12 = *(*sub_10056E904(a1 + 344, &v18) + 8);
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_1006CA1D0;
    v14[3] = &unk_100B07C08;
    v14[4] = v18;
    v15 = a3;
    return (*(*v12 + 152))(v12, a4, v14);
  }
}

_BYTE *sub_1006CA1D0(uint64_t a1, int a2, __int16 a3, int a4)
{
  v5 = HIBYTE(a3);
  if (a2 == 4)
  {
    v8 = 10;
  }

  else
  {
    v8 = 4;
  }

  v9 = qword_100BCE930;
  v10 = os_log_type_enabled(qword_100BCE930, OS_LOG_TYPE_DEFAULT);
  if (v10)
  {
    sub_1000E5A58(*(a1 + 32), v26);
    v12 = v27 >= 0 ? v26 : v26[0];
    *buf = 67109634;
    v29 = a2;
    v30 = 1024;
    v31 = a4;
    v32 = 2082;
    v33 = v12;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Sending 'GetTotalNumberOfItems' response (result - %02x, nbItems - %u) to device %{public}s", buf, 0x18u);
    if (v27 < 0)
    {
      operator delete(v26[0]);
    }
  }

  __chkstk_darwin(v10, v11);
  v14 = &v26[-1] - v13;
  bzero(&v26[-1] - v13, v8);
  *v14 = 117;
  v14[2] = v8 - 3;
  v14[3] = a2;
  if (a2 == 4)
  {
    v14[5] = v5;
    v14[4] = 0;
    v14[9] = a4;
    v14[8] = BYTE1(a4);
    v14[7] = BYTE2(a4);
    v15 = 10;
    v14[6] = HIBYTE(a4);
  }

  else
  {
    v15 = 4;
  }

  if (v15 != v8)
  {
    v16 = qword_100BCE930;
    if (os_log_type_enabled(qword_100BCE930, OS_LOG_TYPE_FAULT))
    {
      sub_100862120(v16, v17, v18, v19, v20, v21, v22, v23);
    }
  }

  buf[0] = 0;
  sub_1000216B4(buf);
  if (sub_100208FE8(*(a1 + 32) + 128, *(a1 + 40), v14, v8) && os_log_type_enabled(qword_100BCE930, OS_LOG_TYPE_ERROR))
  {
    sub_100862630();
  }

  return sub_10002249C(buf);
}

uint64_t sub_1006CA408(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t *a5, uint64_t a6)
{
  if (qword_100B508F0 != -1)
  {
    sub_100861A8C();
  }

  *buf = *a2;
  *&buf[4] = *(a2 + 4);
  v12 = sub_1000E6554(off_100B508E8, buf, 1);
  v21 = v12;
  v13 = qword_100BCE930;
  if (os_log_type_enabled(qword_100BCE930, OS_LOG_TYPE_DEFAULT))
  {
    v14 = a4 > 3 ? "Unknown" : (&off_100B08028)[a4];
    sub_1000E5A58(v12, __p);
    v15 = v23 >= 0 ? __p : __p[0];
    *buf = 136315650;
    *&buf[4] = v14;
    *&buf[12] = 1024;
    *&buf[14] = a6;
    *&buf[18] = 2082;
    *&buf[20] = v15;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Received 'PlayItem(%s)' request (uidCounter - %u) from device %{public}s", buf, 0x1Cu);
    if (v23 < 0)
    {
      operator delete(__p[0]);
    }
  }

  if ((a4 - 1) > 2)
  {
    __p[0] = 0xA01000074581900;
    *buf = 2314;
    *&buf[8] = __p;
    *&buf[16] = 8;
    return sub_100208F8C(a2, a3, buf);
  }

  else
  {
    v16 = *a5;
    v17 = *(*sub_10056E904(a1 + 344, &v21) + 8);
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_1006CA678;
    v19[3] = &unk_100B07B68;
    v19[4] = a1;
    v19[5] = v21;
    v20 = a3;
    return (*(*v17 + 160))(v17, a4, v16, a6, v19);
  }
}

_BYTE *sub_1006CA678(uint64_t a1, int a2)
{
  v17 = 0x1000074581900;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v4 = qword_100BCE930;
  if (os_log_type_enabled(qword_100BCE930, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000E5A58(*(a1 + 40), __p);
    v5 = v9 >= 0 ? __p : __p[0];
    *buf = 67109378;
    v14 = a2;
    v15 = 2082;
    v16 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Sending 'play item' response (result - %02x) to device %{public}s", buf, 0x12u);
    if (v9 < 0)
    {
      operator delete(__p[0]);
    }
  }

  HIBYTE(v17) = a2;
  if (a2 == 4)
  {
    v6 = 9;
  }

  else
  {
    v6 = 10;
  }

  LOBYTE(v10) = v6;
  *(&v10 + 1) = 9;
  BYTE3(v10) = 0;
  v11 = &v17;
  LOWORD(v12) = 8;
  LOBYTE(__p[0]) = 0;
  sub_1000216B4(__p);
  if (sub_100208F8C(*(a1 + 40) + 128, *(a1 + 48), &v10) && os_log_type_enabled(qword_100BCE930, OS_LOG_TYPE_ERROR))
  {
    sub_100862698();
  }

  return sub_10002249C(__p);
}

void sub_1006CA81C(uint64_t a1, uint64_t a2, __int16 a3, char *a4)
{
  if (qword_100B508F0 != -1)
  {
    sub_100861A8C();
  }

  LODWORD(v27[0]) = *a2;
  WORD2(v27[0]) = *(a2 + 4);
  v8 = sub_1000E6554(off_100B508E8, v27, 1);
  v28 = 0;
  v29 = v8;
  v27[0] = 0;
  v27[1] = 0;
  sub_100007E30(v27, a4);
  v9 = qword_100BCE930;
  if (os_log_type_enabled(qword_100BCE930, OS_LOG_TYPE_DEFAULT))
  {
    v10 = SHIBYTE(v28);
    v11 = v27[0];
    sub_1000E5A58(v8, __p);
    v12 = v27;
    if (v10 < 0)
    {
      v12 = v11;
    }

    if (v26 >= 0)
    {
      v13 = __p;
    }

    else
    {
      v13 = __p[0];
    }

    *buf = 136315394;
    *&buf[4] = v12;
    *&buf[12] = 2082;
    *&buf[14] = v13;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Received 'GetImageProperties(%s)' request from device %{public}s", buf, 0x16u);
    if (v26 < 0)
    {
      operator delete(__p[0]);
    }
  }

  *buf = 0;
  *&buf[8] = 0;
  sub_100007F88(buf, a1 + 280);
  v14 = *(a1 + 352);
  if (!v14)
  {
    goto LABEL_30;
  }

  v15 = a1 + 352;
  do
  {
    v16 = *(v14 + 32);
    v17 = v16 >= v8;
    v18 = v16 < v8;
    if (v17)
    {
      v15 = v14;
    }

    v14 = *(v14 + 8 * v18);
  }

  while (v14);
  if (v15 != a1 + 352 && v8 >= *(v15 + 32))
  {
    v19 = *(*sub_10056E904(a1 + 344, &v29) + 8);
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3321888768;
    v20[2] = sub_1006CAB50;
    v20[3] = &unk_100B07C28;
    v20[4] = a1;
    if (SHIBYTE(v28) < 0)
    {
      sub_100008904(&v21, v27[0], v27[1]);
    }

    else
    {
      v21 = *v27;
      v22 = v28;
    }

    v23 = v29;
    v24 = a3;
    (*(*v19 + 168))(v19, v27, v20);
    if (SHIBYTE(v22) < 0)
    {
      operator delete(v21);
    }
  }

  else
  {
LABEL_30:
    if (os_log_type_enabled(qword_100BCE930, OS_LOG_TYPE_ERROR))
    {
      sub_1000E5A58(v8, __p);
      sub_100862700();
    }
  }

  sub_1000088CC(buf);
  if (SHIBYTE(v28) < 0)
  {
    operator delete(v27[0]);
  }
}

void sub_1006CAAFC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  sub_1000088CC(v31 - 112);
  if (a31 < 0)
  {
    operator delete(a26);
  }

  _Unwind_Resume(a1);
}

void sub_1006CAB50(uint64_t a1, unsigned int a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v6 = qword_100BCE930;
  if (*(*(a1 + 32) + 528))
  {
    if (os_log_type_enabled(qword_100BCE930, OS_LOG_TYPE_DEFAULT))
    {
      if (a2 > 2)
      {
        v11 = "UNKNOWN";
      }

      else
      {
        v11 = (&off_100B08048)[a2];
      }

      v12 = (a1 + 40);
      if (*(a1 + 63) < 0)
      {
        v12 = *v12;
      }

      sub_1000E5A58(*(a1 + 64), __p);
      if (v16 >= 0)
      {
        v13 = __p;
      }

      else
      {
        v13 = __p[0];
      }

      *buf = 136315650;
      v18 = v11;
      v19 = 2080;
      v20 = v12;
      v21 = 2082;
      v22 = v13;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Sending 'GetImageProperties' response (result - %s, handle - %s) to device %{public}s", buf, 0x20u);
      if (v16 < 0)
      {
        operator delete(__p[0]);
      }
    }

    buf[0] = 0;
    sub_1000216B4(buf);
    v14 = (a1 + 40);
    if (*(a1 + 63) < 0)
    {
      v14 = *v14;
    }

    if (sub_1001A7C40(*(a1 + 72), v14, *a3, *a4, *a5, a3[1] - *a3))
    {
      if (os_log_type_enabled(qword_100BCE930, OS_LOG_TYPE_ERROR))
      {
        sub_100862754();
      }
    }

    sub_10002249C(buf);
  }

  else if (os_log_type_enabled(qword_100BCE930, OS_LOG_TYPE_ERROR))
  {
    sub_1008627BC(a1, v6);
  }
}

void sub_1006CAD2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_10002249C(va);
  _Unwind_Resume(a1);
}

void sub_1006CAD48(uint64_t a1, uint64_t a2, __int16 a3, char *a4, uint64_t a5, uint64_t a6)
{
  if (qword_100B508F0 != -1)
  {
    sub_100861A8C();
  }

  *buf = *a2;
  LOWORD(v35) = *(a2 + 4);
  v12 = sub_1000E6554(off_100B508E8, buf, 1);
  v32 = 0;
  v33 = v12;
  v31[0] = 0;
  v31[1] = 0;
  sub_100007E30(v31, a4);
  v13 = qword_100BCE930;
  if (os_log_type_enabled(qword_100BCE930, OS_LOG_TYPE_DEFAULT))
  {
    v14 = SHIBYTE(v32);
    v15 = v31[0];
    sub_1000E5A58(v12, __p);
    v16 = v31;
    if (v14 < 0)
    {
      v16 = v15;
    }

    if (v30 >= 0)
    {
      v17 = __p;
    }

    else
    {
      v17 = __p[0];
    }

    *buf = 136315906;
    v35 = v16;
    v36 = 1024;
    v37 = a5;
    v38 = 1024;
    v39 = a6;
    v40 = 2082;
    v41 = v17;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Received 'GetImage(%s)' request (width - %d, height - %d) from device %{public}s", buf, 0x22u);
    if (v30 < 0)
    {
      operator delete(__p[0]);
    }
  }

  __p[0] = 0;
  __p[1] = 0;
  sub_100007F88(__p, a1 + 280);
  v18 = *(a1 + 352);
  if (!v18)
  {
    goto LABEL_30;
  }

  v19 = a1 + 352;
  do
  {
    v20 = *(v18 + 32);
    v21 = v20 >= v12;
    v22 = v20 < v12;
    if (v21)
    {
      v19 = v18;
    }

    v18 = *(v18 + 8 * v22);
  }

  while (v18);
  if (v19 != a1 + 352 && v12 >= *(v19 + 32))
  {
    v23 = *(*sub_10056E904(a1 + 344, &v33) + 8);
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3321888768;
    v24[2] = sub_1006CB0A0;
    v24[3] = &unk_100B07C58;
    v24[4] = a1;
    if (SHIBYTE(v32) < 0)
    {
      sub_100008904(&v25, v31[0], v31[1]);
    }

    else
    {
      v25 = *v31;
      v26 = v32;
    }

    v27 = v33;
    v28 = a3;
    (*(*v23 + 176))(v23, v31, a5, a6, v24);
    if (SHIBYTE(v26) < 0)
    {
      operator delete(v25);
    }
  }

  else
  {
LABEL_30:
    if (os_log_type_enabled(qword_100BCE930, OS_LOG_TYPE_ERROR))
    {
      sub_1000E5A58(v12, buf);
      sub_100862700();
    }
  }

  sub_1000088CC(__p);
  if (SHIBYTE(v32) < 0)
  {
    operator delete(v31[0]);
  }
}

void sub_1006CB04C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  sub_1000088CC(&a23);
  if (a31 < 0)
  {
    operator delete(a26);
  }

  _Unwind_Resume(a1);
}

void sub_1006CB0A0(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4)
{
  v5 = qword_100BCE930;
  if (*(*(a1 + 32) + 528))
  {
    if (os_log_type_enabled(qword_100BCE930, OS_LOG_TYPE_DEFAULT))
    {
      if (a2 > 2)
      {
        v9 = "UNKNOWN";
      }

      else
      {
        v9 = (&off_100B08048)[a2];
      }

      v10 = (a1 + 40);
      if (*(a1 + 63) < 0)
      {
        v10 = *v10;
      }

      sub_1000E5A58(*(a1 + 64), __p);
      if (v13 >= 0)
      {
        v11 = __p;
      }

      else
      {
        v11 = __p[0];
      }

      *buf = 136315906;
      v15 = v9;
      v16 = 2080;
      v17 = v10;
      v18 = 2048;
      v19 = a4;
      v20 = 2082;
      v21 = v11;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Sending 'GetImage' response (result - %s, handle - %s, length - %zu) to device %{public}s", buf, 0x2Au);
      if (v13 < 0)
      {
        operator delete(__p[0]);
      }
    }

    buf[0] = 0;
    sub_1000216B4(buf);
    if (sub_1001A7E38(*(a1 + 72), a3, a4))
    {
      if (os_log_type_enabled(qword_100BCE930, OS_LOG_TYPE_ERROR))
      {
        sub_100862850();
      }
    }

    sub_10002249C(buf);
  }

  else if (os_log_type_enabled(qword_100BCE930, OS_LOG_TYPE_ERROR))
  {
    sub_1008628B8(a1, v5);
  }
}

void sub_1006CB264(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_10002249C(va);
  _Unwind_Resume(a1);
}

void sub_1006CB280(uint64_t a1, uint64_t a2, __int16 a3, char *a4)
{
  if (qword_100B508F0 != -1)
  {
    sub_100861A8C();
  }

  LODWORD(v22[0]) = *a2;
  WORD2(v22[0]) = *(a2 + 4);
  v8 = sub_1000E6554(off_100B508E8, v22, 1);
  v24 = v8;
  v22[0] = 0;
  v22[1] = 0;
  v23 = 0;
  sub_100007E30(v22, a4);
  v9 = qword_100BCE930;
  if (os_log_type_enabled(qword_100BCE930, OS_LOG_TYPE_DEFAULT))
  {
    v10 = SHIBYTE(v23);
    v11 = v22[0];
    sub_1000E5A58(v8, __p);
    v12 = v22;
    if (v10 < 0)
    {
      v12 = v11;
    }

    if (v21 >= 0)
    {
      v13 = __p;
    }

    else
    {
      v13 = __p[0];
    }

    *buf = 136315394;
    v26 = v12;
    v27 = 2082;
    v28 = v13;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Received 'GetLinkedThumbnail(%s)' request from device %{public}s", buf, 0x16u);
    if (v21 < 0)
    {
      operator delete(__p[0]);
    }
  }

  v14 = *(*sub_10056E904(a1 + 344, &v24) + 8);
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3321888768;
  v15[2] = sub_1006CB514;
  v15[3] = &unk_100B07C58;
  v15[4] = a1;
  if (SHIBYTE(v23) < 0)
  {
    sub_100008904(&v16, v22[0], v22[1]);
  }

  else
  {
    v16 = *v22;
    v17 = v23;
  }

  v18 = v24;
  v19 = a3;
  (*(*v14 + 184))(v14, v22, v15);
  if (SHIBYTE(v17) < 0)
  {
    operator delete(v16);
  }

  if (SHIBYTE(v23) < 0)
  {
    operator delete(v22[0]);
  }
}

void sub_1006CB4D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a31 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1006CB514(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4)
{
  v5 = qword_100BCE930;
  if (*(*(a1 + 32) + 528))
  {
    if (os_log_type_enabled(qword_100BCE930, OS_LOG_TYPE_DEFAULT))
    {
      if (a2 > 2)
      {
        v9 = "UNKNOWN";
      }

      else
      {
        v9 = (&off_100B08048)[a2];
      }

      v10 = (a1 + 40);
      if (*(a1 + 63) < 0)
      {
        v10 = *v10;
      }

      sub_1000E5A58(*(a1 + 64), __p);
      if (v13 >= 0)
      {
        v11 = __p;
      }

      else
      {
        v11 = __p[0];
      }

      *buf = 136315906;
      v15 = v9;
      v16 = 2080;
      v17 = v10;
      v18 = 2048;
      v19 = a4;
      v20 = 2082;
      v21 = v11;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Sending 'GetLinkedThumbnail' response (result - %s, handle - %s, length - %zu) to device %{public}s", buf, 0x2Au);
      if (v13 < 0)
      {
        operator delete(__p[0]);
      }
    }

    buf[0] = 0;
    sub_1000216B4(buf);
    if (sub_1001A7F10(*(a1 + 72), a3, a4))
    {
      if (os_log_type_enabled(qword_100BCE930, OS_LOG_TYPE_ERROR))
      {
        sub_10086294C();
      }
    }

    sub_10002249C(buf);
  }

  else if (os_log_type_enabled(qword_100BCE930, OS_LOG_TYPE_ERROR))
  {
    sub_1008629B4(a1, v5);
  }
}

void sub_1006CB6D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_10002249C(va);
  _Unwind_Resume(a1);
}

void sub_1006CB6F4(uint64_t a1, uint64_t a2, char a3, uint64_t a4, unsigned int a5, const void *a6)
{
  if (qword_100B508F0 != -1)
  {
    sub_100861A8C();
  }

  *buf = *a2;
  *&buf[4] = *(a2 + 4);
  v11 = sub_1000E6554(off_100B508E8, buf, 1);
  v26 = 0;
  v27 = v11;
  v25 = &off_100AE0A78;
  v12 = qword_100BCE930;
  v13 = os_log_type_enabled(qword_100BCE930, OS_LOG_TYPE_DEFAULT);
  if (a5)
  {
    if (v13)
    {
      sub_1000E5A58(v11, __p);
      v14 = "s";
      if (a5 == 1)
      {
        v14 = "";
      }

      *buf = 67109634;
      *&buf[4] = a5;
      if (v29 >= 0)
      {
        v15 = __p;
      }

      else
      {
        v15 = *__p;
      }

      *v31 = 2080;
      *&v31[2] = v14;
      v32 = 2082;
      v33 = v15;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Received 'get element attributes' (%d attribute%s) request from device %{public}s", buf, 0x1Cu);
      if (v29 < 0)
      {
        operator delete(*__p);
      }
    }

    sub_10000C704(buf, a6, 4 * a5);
    sub_10000AE20(&v25, buf);
  }

  else
  {
    if (v13)
    {
      sub_1000E5A58(v11, buf);
      v16 = SBYTE3(v33) >= 0 ? buf : *buf;
      *__p = 136446210;
      *&__p[4] = v16;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Received 'get element attributes' (all attributes) request from device %{public}s", __p, 0xCu);
      if (SBYTE3(v33) < 0)
      {
        operator delete(*buf);
      }
    }

    if (*(a1 + 528) == v11)
    {
      LOBYTE(a5) = 8;
    }

    else
    {
      LOBYTE(a5) = 7;
    }

    if (*(a1 + 528) == v11)
    {
      v17 = 32;
    }

    else
    {
      v17 = 28;
    }

    sub_10000C704(buf, &unk_1008C4D58, v17);
    sub_10000AE20(&v25, buf);
  }

  *buf = &off_100AE0A78;
  if (*v31)
  {
    sub_10000C808(*v31);
  }

  v18 = *(*sub_10056E904(a1 + 344, &v27) + 8);
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3321888768;
  v19[2] = sub_1006CBAEC;
  v19[3] = &unk_100B07C88;
  v19[4] = a1;
  v23 = a5;
  v20 = &off_100AE0A78;
  v21 = v26;
  if (v26)
  {
    sub_10000C69C(v26);
  }

  v22 = v27;
  v24 = a3;
  (*(*v18 + 24))(v18, v19);
  v20 = &off_100AE0A78;
  if (v21)
  {
    sub_10000C808(v21);
  }

  v25 = &off_100AE0A78;
  if (v26)
  {
    sub_10000C808(v26);
  }
}

void sub_1006CBA70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, atomic_uint *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  if (a19)
  {
    sub_10000C808(a19);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_1006CBAEC(uint64_t a1, uint64_t a2, int *a3)
{
  v44 = *(a1 + 32);
  v5 = malloc_type_calloc(8uLL, 0x18uLL, 0x1010040D8983CCAuLL);
  if (!*(a1 + 64))
  {
    v45 = 0;
    sub_1000216B4(&v45);
    goto LABEL_86;
  }

  v6 = 0;
  v7 = 0;
  do
  {
    v8 = *(sub_10000C5F8(a1 + 40) + 4 * v6);
    if (v8 <= 4)
    {
      if (v8 <= 2)
      {
        if (v8 == 1)
        {
          if (*(a3 + 39) >= 0)
          {
            v9 = (a3 + 4);
          }

          else
          {
            v9 = *(a3 + 2);
          }

          v24 = qword_100BCE930;
          if (os_log_type_enabled(qword_100BCE930, OS_LOG_TYPE_DEFAULT))
          {
            sub_1000E5A58(*(a1 + 56), __p);
            v25 = __p;
            if (v47 < 0)
            {
              v25 = __p[0];
            }

            *buf = 136315394;
            *v49 = v9;
            *&v49[8] = 2082;
            *&v49[10] = v25;
            v12 = v24;
            v13 = "Sending attribute 'title: %s' to device %{public}s";
            goto LABEL_71;
          }

LABEL_73:
          v32 = &v5[24 * v7];
          *v32 = v8;
          *(v32 + 2) = 106;
          if (v9)
          {
            v37 = strlen(v9);
            if (v37 >= 0x100)
            {
              v38 = 256;
            }

            else
            {
              v38 = v37;
            }

            v39 = malloc_type_malloc(v38 + 1, 0x100004077774924uLL);
            *(v32 + 1) = v39;
            strlcpy(v39, v9, v38 + 1);
            goto LABEL_80;
          }

          v33 = malloc_type_malloc(0xBuLL, 0x100004077774924uLL);
          *(v32 + 1) = v33;
          goto LABEL_79;
        }

        if (v8 == 2)
        {
          if (*(a3 + 63) >= 0)
          {
            v9 = (a3 + 10);
          }

          else
          {
            v9 = *(a3 + 5);
          }

          v10 = qword_100BCE930;
          if (os_log_type_enabled(qword_100BCE930, OS_LOG_TYPE_DEFAULT))
          {
            sub_1000E5A58(*(a1 + 56), __p);
            v11 = __p;
            if (v47 < 0)
            {
              v11 = __p[0];
            }

            *buf = 136315394;
            *v49 = v9;
            *&v49[8] = 2082;
            *&v49[10] = v11;
            v12 = v10;
            v13 = "Sending attribute 'artist: %s' to device %{public}s";
LABEL_71:
            _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, v13, buf, 0x16u);
            if (v47 < 0)
            {
              operator delete(__p[0]);
            }

            goto LABEL_73;
          }

          goto LABEL_73;
        }

LABEL_62:
        v34 = qword_100BCE930;
        if (os_log_type_enabled(qword_100BCE930, OS_LOG_TYPE_ERROR))
        {
          LODWORD(__p[0]) = 67109120;
          HIDWORD(__p[0]) = v8;
          _os_log_error_impl(&_mh_execute_header, v34, OS_LOG_TYPE_ERROR, "Request for unknown attribute attributeID %d", __p, 8u);
        }

        goto LABEL_81;
      }

      if (v8 == 3)
      {
        if (*(a3 + 87) >= 0)
        {
          v9 = (a3 + 16);
        }

        else
        {
          v9 = *(a3 + 8);
        }

        v28 = qword_100BCE930;
        if (os_log_type_enabled(qword_100BCE930, OS_LOG_TYPE_DEFAULT))
        {
          sub_1000E5A58(*(a1 + 56), __p);
          v29 = __p;
          if (v47 < 0)
          {
            v29 = __p[0];
          }

          *buf = 136315394;
          *v49 = v9;
          *&v49[8] = 2082;
          *&v49[10] = v29;
          v12 = v28;
          v13 = "Sending attribute 'album: %s' to device %{public}s";
          goto LABEL_71;
        }

        goto LABEL_73;
      }

      v16 = *a3;
      v17 = qword_100BCE930;
      if (os_log_type_enabled(qword_100BCE930, OS_LOG_TYPE_DEFAULT))
      {
        sub_1000E5A58(*(a1 + 56), __p);
        v18 = __p;
        if (v47 < 0)
        {
          v18 = __p[0];
        }

        *buf = 67109378;
        *v49 = v16;
        *&v49[4] = 2082;
        *&v49[6] = v18;
        v19 = v17;
        v20 = "Sending attribute 'track number: %u' to device %{public}s";
LABEL_58:
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, v20, buf, 0x12u);
        if (v47 < 0)
        {
          operator delete(__p[0]);
        }

        goto LABEL_60;
      }

      goto LABEL_60;
    }

    if (v8 <= 6)
    {
      if (v8 != 5)
      {
        if (*(a3 + 111) >= 0)
        {
          v9 = (a3 + 22);
        }

        else
        {
          v9 = *(a3 + 11);
        }

        v14 = qword_100BCE930;
        if (os_log_type_enabled(qword_100BCE930, OS_LOG_TYPE_DEFAULT))
        {
          sub_1000E5A58(*(a1 + 56), __p);
          v15 = __p;
          if (v47 < 0)
          {
            v15 = __p[0];
          }

          *buf = 136315394;
          *v49 = v9;
          *&v49[8] = 2082;
          *&v49[10] = v15;
          v12 = v14;
          v13 = "Sending attribute 'genre: %s' to device %{public}s";
          goto LABEL_71;
        }

        goto LABEL_73;
      }

      v16 = a3[1];
      v26 = qword_100BCE930;
      if (os_log_type_enabled(qword_100BCE930, OS_LOG_TYPE_DEFAULT))
      {
        sub_1000E5A58(*(a1 + 56), __p);
        v27 = __p;
        if (v47 < 0)
        {
          v27 = __p[0];
        }

        *buf = 67109378;
        *v49 = v16;
        *&v49[4] = 2082;
        *&v49[6] = v27;
        v19 = v26;
        v20 = "Sending attribute 'total tracks: %u' to device %{public}s";
        goto LABEL_58;
      }

LABEL_60:
      v32 = &v5[24 * v7];
      *v32 = v8;
      *(v32 + 2) = 106;
      v33 = malloc_type_malloc(0xBuLL, 0x100004077774924uLL);
      *(v32 + 1) = v33;
      if (v16)
      {
        snprintf(v33, 0xBuLL, "%u", v16);
LABEL_80:
        *(v32 + 4) = strlen(*(v32 + 1));
        ++v7;
        goto LABEL_81;
      }

LABEL_79:
      *v33 = 0;
      goto LABEL_80;
    }

    if (v8 == 7)
    {
      v16 = a3[2];
      v30 = qword_100BCE930;
      if (!os_log_type_enabled(qword_100BCE930, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_60;
      }

      sub_1000E5A58(*(a1 + 56), __p);
      v31 = __p;
      if (v47 < 0)
      {
        v31 = __p[0];
      }

      *buf = 67109378;
      *v49 = v16;
      *&v49[4] = 2082;
      *&v49[6] = v31;
      v19 = v30;
      v20 = "Sending attribute 'playing time: %ums' to device %{public}s";
      goto LABEL_58;
    }

    if (v8 != 8)
    {
      goto LABEL_62;
    }

    v21 = *(a1 + 56);
    if (v21 == *(v44 + 528))
    {
      if (*(a3 + 135) >= 0)
      {
        v9 = (a3 + 28);
      }

      else
      {
        v9 = *(a3 + 14);
      }

      v35 = qword_100BCE930;
      if (os_log_type_enabled(qword_100BCE930, OS_LOG_TYPE_DEFAULT))
      {
        sub_1000E5A58(v21, __p);
        v36 = __p;
        if (v47 < 0)
        {
          v36 = __p[0];
        }

        *buf = 136315394;
        *v49 = v9;
        *&v49[8] = 2082;
        *&v49[10] = v36;
        v12 = v35;
        v13 = "Sending attribute 'image handle: %s' to device %{public}s";
        goto LABEL_71;
      }

      goto LABEL_73;
    }

    v22 = qword_100BCE930;
    if (os_log_type_enabled(qword_100BCE930, OS_LOG_TYPE_ERROR))
    {
      sub_1000E5A58(v21, __p);
      v23 = __p;
      if (v47 < 0)
      {
        v23 = __p[0];
      }

      *buf = 136446210;
      *v49 = v23;
      _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "Ignoring 'image handle' attribute request as device %{public}s did not establish BIP", buf, 0xCu);
      if (v47 < 0)
      {
        operator delete(__p[0]);
      }
    }

LABEL_81:
    ++v6;
  }

  while (v6 < *(a1 + 64) && v7 < 8u);
  v45 = 0;
  sub_1000216B4(&v45);
  if (v7)
  {
    v40 = sub_100206814(*(a1 + 56) + 128, *(a1 + 65), v7, v5);
    goto LABEL_87;
  }

LABEL_86:
  v40 = sub_100205418(*(a1 + 56) + 128, *(a1 + 65), 32, 3306);
LABEL_87:
  if (!v40)
  {
    goto LABEL_94;
  }

  if (v40 != 3304)
  {
    v40 = os_log_type_enabled(qword_100BCE930, OS_LOG_TYPE_ERROR);
    if (v40)
    {
      sub_1000E5A58(*(a1 + 56), __p);
      sub_100862A48();
    }

LABEL_94:
    sub_1006C41AC(v40, v5);
    return sub_10002249C(&v45);
  }

  v41 = qword_100BCE930;
  if (os_log_type_enabled(qword_100BCE930, OS_LOG_TYPE_INFO))
  {
    LOWORD(__p[0]) = 0;
    _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_INFO, "Message too big, sent only the first chunk of data. Wait for next request from CT", __p, 2u);
  }

  __p[0] = (a1 + 56);
  v42 = sub_10041F204(v44 + 480, (a1 + 56));
  buf[0] = *(a1 + 65);
  buf[1] = 32;
  __p[0] = buf;
  *(sub_1006CF4E0((v42 + 5), buf) + 40) = v5;
  return sub_10002249C(&v45);
}

void sub_1006CC390(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, int a5, uint64_t a6, int a7)
{
  if (qword_100B508F0 != -1)
  {
    sub_100861A8C();
  }

  v68 = *a2;
  v69 = *(a2 + 4);
  v12 = sub_1000E6554(off_100B508E8, &v68, 1);
  v55 = 0;
  v56 = v12;
  v53 = 0;
  v54 = 0;
  bzero(&v68, 0x201uLL);
  if (a7)
  {
    if (a7 != 3301)
    {
      v15 = qword_100BCE930;
      if (!os_log_type_enabled(qword_100BCE930, OS_LOG_TYPE_ERROR))
      {
        return;
      }

      sub_1000E5A58(v12, __p);
      if (__p[23] >= 0)
      {
        v39 = __p;
      }

      else
      {
        v39 = *__p;
      }

      *buf = 67109634;
      *&buf[4] = a5;
      *&buf[8] = 2082;
      *&buf[10] = v39;
      *&buf[18] = 1024;
      *&buf[20] = a7;
      v17 = "Received invalid response for PDU 0x%02x from device %{public}s - result was %{bluetooth:OI_STATUS}u";
      goto LABEL_73;
    }

    v13 = qword_100BCE930;
    if (os_log_type_enabled(qword_100BCE930, OS_LOG_TYPE_ERROR))
    {
      sub_1000E5A58(v12, buf);
      v38 = (buf[23] & 0x80u) == 0 ? buf : *buf;
      *__p = 67109378;
      *&__p[4] = a5;
      *&__p[8] = 2082;
      *&__p[10] = v38;
      _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Received 'not implemented' response for PDU 0x%02x from device %{public}s", __p, 0x12u);
      if (buf[23] < 0)
      {
        operator delete(*buf);
      }
    }
  }

  v14 = sub_100204684(a4, a5, &v53, &v68);
  if (v14)
  {
    v15 = qword_100BCE930;
    if (!os_log_type_enabled(qword_100BCE930, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    sub_1000E5A58(v56, __p);
    if (__p[23] >= 0)
    {
      v16 = __p;
    }

    else
    {
      v16 = *__p;
    }

    *buf = 67109634;
    *&buf[4] = a5;
    *&buf[8] = 2082;
    *&buf[10] = v16;
    *&buf[18] = 1024;
    *&buf[20] = v14;
    v17 = "Failed to unmarshal response for PDU 0x%02x from device %{public}s - result was %{bluetooth:OI_STATUS}u";
LABEL_73:
    _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, v17, buf, 0x18u);
    if ((__p[23] & 0x80000000) != 0)
    {
      v36 = *__p;
      goto LABEL_75;
    }

    return;
  }

  switch(a5)
  {
    case 80:
      if (*a4 != 9)
      {
        v37 = qword_100BCE930;
        if (os_log_type_enabled(qword_100BCE930, OS_LOG_TYPE_ERROR))
        {
          sub_100862A98(&v56, v37);
        }

        return;
      }

      *buf = 0;
      *&buf[8] = 0;
      sub_100007F88(buf, a1 + 392);
      v27 = v54;
      *__p = &v56;
      *(sub_1005C468C(a1 + 456, &v56) + 10) = v27;
      if (qword_100B50AE0 != -1)
      {
        sub_10086188C();
      }

      LOBYTE(v28) = v54;
      sub_1004DAA9C(qword_100B50AD8, v56, *a4, v28 / 127.0);
      goto LABEL_44;
    case 49:
      v21 = *v54;
      if (v21 == 13)
      {
        if ((*a4 | 2) != 0xF)
        {
          v42 = sub_1000DAB84();
          v46[0] = _NSConcreteStackBlock;
          v46[1] = 3221225472;
          v46[2] = sub_1006CCEC0;
          v46[3] = &unk_100ADF8F8;
          v46[4] = v56;
          sub_10000CA94(v42, v46);
          return;
        }

        v22 = v54[8];
        v23 = qword_100BCE930;
        if (os_log_type_enabled(qword_100BCE930, OS_LOG_TYPE_DEFAULT))
        {
          sub_1000E5A58(v56, __p);
          v24 = __p[23] >= 0 ? __p : *__p;
          *buf = 67109634;
          *&buf[4] = v22;
          *&buf[8] = 1024;
          *&buf[10] = (3302700 * v22) >> 22;
          *&buf[14] = 2082;
          *&buf[16] = v24;
          _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Received notification for absolute volume 0x%02x (~%d%%) from device %{public}s", buf, 0x18u);
          if ((__p[23] & 0x80000000) != 0)
          {
            operator delete(*__p);
          }
        }

        v51[0] = 0;
        v51[1] = 0;
        sub_100007F88(v51, a1 + 392);
        *buf = &v56;
        *(sub_1005C468C(a1 + 456, &v56) + 10) = v22;
        sub_10000801C(v51);
        v66 = 0;
        v65 = 0u;
        memset(v64, 0, sizeof(v64));
        v62 = 0u;
        v63 = 0u;
        v60 = 0u;
        v61 = 0u;
        memset(buf, 0, sizeof(buf));
        sub_1000DE474(&buf[1]);
        buf[18] = 0;
        buf[20] = 0;
        BYTE2(v61) = 0;
        BYTE4(v61) = 0;
        HIDWORD(v64[2]) = 0;
        v60 = 0uLL;
        *&buf[24] = 0;
        LOBYTE(v61) = 0;
        v62 = 0uLL;
        *(&v61 + 1) = 0;
        LOBYTE(v63) = 0;
        v64[0] = 0;
        v64[1] = 0;
        *(&v63 + 1) = 0;
        *(&v64[1] + 7) = 0;
        LOBYTE(v64[3]) = 1;
        *(&v64[3] + 6) = 0;
        *(&v64[3] + 1) = 0;
        v65 = 0uLL;
        v64[5] = 0;
        LOBYTE(v66) = 0;
        *(&v66 + 2) = 0;
        if (sub_100536A18(v56, buf) && BYTE10(v65) == 1)
        {
          v25 = qword_100BCE930;
          if (os_log_type_enabled(qword_100BCE930, OS_LOG_TYPE_DEFAULT))
          {
            sub_1000E5A58(v56, v57);
            v26 = v58 >= 0 ? v57 : v57[0];
            *__p = 67109634;
            *&__p[4] = v22;
            *&__p[8] = 1024;
            *&__p[10] = (3302700 * v22) >> 22;
            *&__p[14] = 2082;
            *&__p[16] = v26;
            _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Ignoring notification for absolute volume 0x%02x (~%d%%) from device %{public}s", __p, 0x18u);
            if (v58 < 0)
            {
              operator delete(v57[0]);
            }
          }
        }

        else
        {
          v40 = *a4;
          v41 = sub_1000DAB84();
          v48[0] = _NSConcreteStackBlock;
          v48[1] = 3221225472;
          v48[2] = sub_1006CCE54;
          v48[3] = &unk_100AF2A50;
          v48[4] = v56;
          v49 = v22;
          v50 = v40;
          sub_10000CA94(v41, v48);
        }

        if (*a4 == 13)
        {
          v47 = 0;
          if (sub_100204414(a2, &v47, 13))
          {
            if (os_log_type_enabled(qword_100BCE930, OS_LOG_TYPE_ERROR))
            {
              sub_1000E5A58(v56, __p);
              sub_100862B2C();
            }
          }
        }

        if (SHIBYTE(v64[1]) < 0)
        {
          operator delete(*(&v63 + 1));
        }

        if (SHIBYTE(v62) < 0)
        {
          operator delete(*(&v61 + 1));
        }

        if (SHIBYTE(v60) < 0)
        {
          operator delete(*&buf[24]);
        }

        nullsub_21(&buf[1]);
        v29 = v51;
LABEL_88:
        sub_1000088CC(v29);
        return;
      }

      v30 = qword_100BCE930;
      if (!os_log_type_enabled(qword_100BCE930, OS_LOG_TYPE_ERROR))
      {
        return;
      }

      sub_1000E5A58(v56, buf);
      if ((buf[23] & 0x80u) == 0)
      {
        v33 = buf;
      }

      else
      {
        v33 = *buf;
      }

      *__p = 67109378;
      *&__p[4] = v21;
      *&__p[8] = 2082;
      *&__p[10] = v33;
      v32 = "Received notification with unknown id 0x%02x from device %{public}s";
      break;
    case 16:
      if (*a4 == 12 && v54 == 3)
      {
        v18 = BYTE1(v54);
        if (!BYTE1(v54))
        {
          return;
        }

        v19 = v55;
        while (1)
        {
          v20 = *v19++;
          if (v20 == 13)
          {
            break;
          }

          if (!--v18)
          {
            return;
          }
        }

        v43 = qword_100BCE930;
        if (os_log_type_enabled(qword_100BCE930, OS_LOG_TYPE_DEFAULT))
        {
          sub_1000E5A58(v56, buf);
          v44 = (buf[23] & 0x80u) == 0 ? buf : *buf;
          *__p = 136446210;
          *&__p[4] = v44;
          _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "Registering for absolute volume change notifications on device %{public}s", __p, 0xCu);
          if (buf[23] < 0)
          {
            operator delete(*buf);
          }
        }

        LOBYTE(v51[0]) = 0;
        if (sub_100204414(a2, v51, 13))
        {
          if (os_log_type_enabled(qword_100BCE930, OS_LOG_TYPE_ERROR))
          {
            sub_100862B7C();
          }

          return;
        }

        *buf = 0;
        *&buf[8] = 0;
        sub_100007F88(buf, a1 + 392);
        *__p = &v56;
        *(sub_1005C468C(a1 + 456, &v56) + 10) = 30;
        sub_10000801C(buf);
        v45 = sub_1000DAB84();
        v52[0] = _NSConcreteStackBlock;
        v52[1] = 3221225472;
        v52[2] = sub_1006CCDFC;
        v52[3] = &unk_100ADF8F8;
        v52[4] = v56;
        sub_10000CA94(v45, v52);
LABEL_44:
        v29 = buf;
        goto LABEL_88;
      }

      v30 = qword_100BCE930;
      if (!os_log_type_enabled(qword_100BCE930, OS_LOG_TYPE_ERROR))
      {
        return;
      }

      sub_1000E5A58(v56, buf);
      if ((buf[23] & 0x80u) == 0)
      {
        v34 = buf;
      }

      else
      {
        v34 = *buf;
      }

      v35 = *a4;
      *__p = 136446466;
      *&__p[4] = v34;
      *&__p[12] = 1024;
      *&__p[14] = v35;
      v32 = "Received error response for get capabilities request from device %{public}s - response was 0x%02x";
      break;
    default:
      v30 = qword_100BCE930;
      if (!os_log_type_enabled(qword_100BCE930, OS_LOG_TYPE_ERROR))
      {
        return;
      }

      sub_1000E5A58(v56, buf);
      if ((buf[23] & 0x80u) == 0)
      {
        v31 = buf;
      }

      else
      {
        v31 = *buf;
      }

      *__p = 67109378;
      *&__p[4] = a5;
      *&__p[8] = 2082;
      *&__p[10] = v31;
      v32 = "Received response for unsupported PDU 0x%02x from device %{public}s";
      break;
  }

  _os_log_error_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, v32, __p, 0x12u);
  if (buf[23] < 0)
  {
    v36 = *buf;
LABEL_75:
    operator delete(v36);
  }
}

void sub_1006CCDAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37)
{
  sub_100320BE8(&a37);
  sub_1000088CC(&a22);
  _Unwind_Resume(a1);
}

uint64_t sub_1006CCDFC(uint64_t a1)
{
  if (qword_100B50AE0 != -1)
  {
    sub_100862BE4();
  }

  v2 = qword_100B50AD8;
  v3 = *(a1 + 32);

  return sub_1004DA8A4(v2, v3, 1);
}

uint64_t sub_1006CCE54(uint64_t a1)
{
  if (qword_100B50AE0 != -1)
  {
    sub_100862BE4();
  }

  v2 = qword_100B50AD8;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40) / 127.0;
  v5 = *(a1 + 44);

  return sub_1004DAA9C(v2, v3, v5, v4);
}

uint64_t sub_1006CCEC0(uint64_t a1)
{
  if (qword_100B50AE0 != -1)
  {
    sub_100862BE4();
  }

  v2 = qword_100B50AD8;
  v3 = *(a1 + 32);

  return sub_1004DA8A4(v2, v3, 0);
}

void sub_1006CCF18(float a1, uint64_t a2, uint64_t a3)
{
  v18 = 0;
  v5 = sub_10000E92C();
  sub_100007E30(buf, "PTS");
  sub_100007E30(__p, "AVRCPControllerHack");
  v6 = (*(*v5 + 72))(v5, buf, __p, &v18);
  if (v24 < 0)
  {
    operator delete(*__p);
  }

  if (SHIBYTE(v29) < 0)
  {
    operator delete(*buf);
  }

  v18 = v6;
  if (a3)
  {
    v7 = v6 ^ 1;
    if (a1 != 0.0)
    {
      v7 = 1;
    }

    if (v7)
    {
      v12 = qword_100BCE930;
      if (os_log_type_enabled(qword_100BCE930, OS_LOG_TYPE_DEFAULT))
      {
        sub_1000E5A58(a3, __p);
        v13 = v24 >= 0 ? __p : *__p;
        *buf = 67109634;
        *&buf[4] = (a1 * 127.0);
        v26 = 1024;
        v27 = (a1 * 100.0);
        v28 = 2082;
        v29 = v13;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Setting absolute volume to 0x%02x (~%d%%) on device %{public}s", buf, 0x18u);
        if (v24 < 0)
        {
          operator delete(*__p);
        }
      }

      buf[0] = 0;
      sub_1000216B4(buf);
      v10 = sub_1001A55F0(a3 + 128, (a1 * 127.0));
      v11 = buf;
    }

    else
    {
      LOBYTE(v16[0]) = 0;
      v8 = qword_100BCE930;
      if (os_log_type_enabled(qword_100BCE930, OS_LOG_TYPE_DEFAULT))
      {
        sub_1000E5A58(a3, buf);
        v9 = SHIBYTE(v29) >= 0 ? buf : *buf;
        *__p = 136446210;
        *&__p[4] = v9;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Setting absolute volume to zero (muted) on device %{public}s", __p, 0xCu);
        if (SHIBYTE(v29) < 0)
        {
          operator delete(*buf);
        }
      }

      v19[0] = 0;
      sub_1000216B4(v19);
      if (sub_1001A53C0(a3 + 128, v16, 67) && os_log_type_enabled(qword_100BCE930, OS_LOG_TYPE_ERROR))
      {
        sub_1000E5A58(a3, buf);
        sub_100862BF8();
      }

      v10 = sub_1001A53C0(a3 + 128, v16, 195);
      if (v10 && os_log_type_enabled(qword_100BCE930, OS_LOG_TYPE_ERROR))
      {
        sub_1000E5A58(a3, __p);
        sub_100862C48();
      }

      v11 = v19;
    }

    sub_10002249C(v11);
    if (v10)
    {
      v14 = qword_100BCE930;
      if (os_log_type_enabled(qword_100BCE930, OS_LOG_TYPE_ERROR))
      {
        sub_1000E5A58(a3, v16);
        if (v17 >= 0)
        {
          v15 = v16;
        }

        else
        {
          v15 = v16[0];
        }

        *v19 = 136446466;
        v20 = v15;
        v21 = 1024;
        v22 = v10;
        _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Failed to set absolute volume on device %{public}s - result was %{bluetooth:OI_STATUS}u", v19, 0x12u);
        if (v17 < 0)
        {
          operator delete(v16[0]);
        }
      }
    }
  }
}

uint64_t sub_1006CD320(uint64_t a1, uint64_t a2, __int16 *a3)
{
  v3 = sub_1001F2EFC(a2, xmmword_1008C4D28, xmmword_1008C4D28, a3);
  if (v3 && os_log_type_enabled(qword_100BCE930, OS_LOG_TYPE_ERROR))
  {
    sub_100862C98();
  }

  return v3;
}

uint64_t sub_1006CD38C(uint64_t a1, uint64_t a2, __int16 *a3, __int16 *a4)
{
  sub_10057C6D0(a2, 3);
  sub_10057C6D0(a2, 2);
  sub_10057C70C(a2, 104);
  sub_10057C6D0(a2, 16);
  sub_10057C6D0(a2, 2);
  sub_10057C70C(a2, 103);
  v11 = 0;
  v10 = 0;
  v9 = 0;
  v7 = sub_1000C0D40(*a3, &v9, &v11, &v10);
  if (v7)
  {
    if (os_log_type_enabled(qword_100BCE930, OS_LOG_TYPE_ERROR))
    {
      sub_100862CD4();
    }
  }

  else
  {
    sub_10057C6D0(a2, 1);
    sub_10057C6D0(a2, 7);
    sub_10057C70C(a2, *a3);
    sub_10057C70C(a2, v9);
    sub_10057C70C(a2, v11);
    sub_10057C6D0(a2, v10);
  }

  if (*a4)
  {
    v7 = sub_1000C0D40(*a4, &v9, &v11, &v10);
    if (v7)
    {
      if (os_log_type_enabled(qword_100BCE930, OS_LOG_TYPE_ERROR))
      {
        sub_100862D10();
      }
    }

    else
    {
      sub_10057C6D0(a2, 17);
      sub_10057C6D0(a2, 7);
      sub_10057C70C(a2, *a4);
      sub_10057C70C(a2, v9);
      sub_10057C70C(a2, v11);
      sub_10057C6D0(a2, v10);
    }
  }

  return v7;
}

void sub_1006CD988(uint64_t a1, uint64_t a2)
{
  v4 = qword_100BCE930;
  if (os_log_type_enabled(qword_100BCE930, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000E5A58(a2, __p);
    if (v7 >= 0)
    {
      v5 = __p;
    }

    else
    {
      v5 = __p[0];
    }

    *buf = 136446210;
    v9 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Fast Connect AVRCP Report Connection attempt for %{public}s", buf, 0xCu);
    if (v7 < 0)
    {
      operator delete(__p[0]);
    }
  }

  sub_10057D9B0(a1, a2);
}

void sub_1006CDA84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = qword_100BCE930;
  if (os_log_type_enabled(qword_100BCE930, OS_LOG_TYPE_DEFAULT))
  {
    v8[0] = 67109120;
    v8[1] = a3;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Fast Connect AVRCP Setup Complete result %d", v8, 8u);
  }

  if (a3)
  {
    if (qword_100B50AA0 != -1)
    {
      sub_100861AA0();
    }

    v7 = sub_1000DD584(off_100B50A98, a3, 20000);
    sub_10057DA84(a1, a2, v7);
  }

  sub_10057DA84(a1, a2, 0);
}

uint64_t sub_1006CDBC8(uint64_t a1, unint64_t a2, unsigned int a3, unsigned int a4, int a5)
{
  v20[1] = 0;
  v21 = a2;
  v20[0] = 0;
  sub_100007F88(v20, a1 + 280);
  v10 = *(a1 + 352);
  if (v10)
  {
    v11 = a1 + 352;
    do
    {
      v12 = *(v10 + 32);
      v13 = v12 >= a2;
      v14 = v12 < a2;
      if (v13)
      {
        v11 = v10;
      }

      v10 = *(v10 + 8 * v14);
    }

    while (v10);
    if (v11 != a1 + 352 && *(v11 + 32) <= a2)
    {
      v15 = *sub_10056E904(a1 + 344, &v21);
      if (v15)
      {
        (*(*v15 + 64))(v15);
      }

      sub_100075DC4((a1 + 344), &v21);
    }
  }

  sub_10000801C(v20);
  v19 = 0;
  sub_1000216B4(&v19);
  if (a5)
  {
    v16 = qword_100BCE930;
    if (os_log_type_enabled(qword_100BCE930, OS_LOG_TYPE_DEFAULT))
    {
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "fastConnectCleanAVRCP OI_AVRCP_FastConnect_DisconnectTable", v18, 2u);
    }

    sub_100202F5C(v21 + 128);
  }

  sub_1001F3190(v21 + 128, a3, a4);
  sub_10002249C(&v19);
  return sub_1000088CC(v20);
}

void sub_1006CDD30(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1006CDD5C(uint64_t result, unint64_t a2)
{
  v12 = a2;
  v3 = *(result + 376);
  if (!v3)
  {
    goto LABEL_9;
  }

  v4 = result + 376;
  do
  {
    v5 = *(v3 + 32);
    v6 = v5 >= a2;
    v7 = v5 < a2;
    if (v6)
    {
      v4 = v3;
    }

    v3 = *(v3 + 8 * v7);
  }

  while (v3);
  if (v4 == result + 376 || *(v4 + 32) > a2)
  {
LABEL_9:
    v8 = qword_100BCE930;
    if (os_log_type_enabled(qword_100BCE930, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000E5A58(a2, __p);
      if (v11 >= 0)
      {
        v9 = __p;
      }

      else
      {
        v9 = __p[0];
      }

      *buf = 136446210;
      v14 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Workaround RemoteMediaInfo for device %{public}s created", buf, 0xCu);
      if (v11 < 0)
      {
        operator delete(__p[0]);
      }
    }

    operator new();
  }

  return result;
}

uint64_t sub_1006CDEF0(uint64_t result, unint64_t a2)
{
  v14 = a2;
  v2 = *(result + 376);
  if (v2)
  {
    v4 = result;
    v5 = result + 376;
    do
    {
      v6 = *(v2 + 32);
      v7 = v6 >= a2;
      v8 = v6 < a2;
      if (v7)
      {
        v5 = v2;
      }

      v2 = *(v2 + 8 * v8);
    }

    while (v2);
    if (v5 != result + 376 && *(v5 + 32) <= a2)
    {
      v9 = qword_100BCE930;
      if (os_log_type_enabled(qword_100BCE930, OS_LOG_TYPE_DEFAULT))
      {
        sub_1000E5A58(a2, __p);
        v10 = v13 >= 0 ? __p : __p[0];
        *buf = 136446210;
        v16 = v10;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Workaround RemoteMediaInfo for device %{public}s deleted", buf, 0xCu);
        if (v13 < 0)
        {
          operator delete(__p[0]);
        }
      }

      v11 = *sub_10056E904(v4 + 368, &v14);
      if (v11)
      {
        (*(*v11 + 64))(v11);
      }

      return sub_100075DC4((v4 + 368), &v14);
    }
  }

  return result;
}

uint64_t sub_1006CE05C(uint64_t a1, uint64_t a2)
{
  v10 = a2;
  result = sub_1000C0348(a2);
  if (result)
  {
    v5 = qword_100BCE930;
    if (os_log_type_enabled(qword_100BCE930, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000E5A58(a2, __p);
      if (v9 >= 0)
      {
        v6 = __p;
      }

      else
      {
        v6 = __p[0];
      }

      *buf = 136446210;
      v12 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Play command for device %{public}s forwarded", buf, 0xCu);
      if (v9 < 0)
      {
        operator delete(__p[0]);
      }
    }

    v7 = sub_10056E904(a1 + 368, &v10);
    return (*(**(*v7 + 8) + 8))(*(*v7 + 8), v10, 501);
  }

  return result;
}

void sub_1006CE198(uint64_t a1)
{
  sub_1006CF1B4(a1);

  operator delete();
}

void sub_1006CE1E0(uint64_t a1)
{
  sub_1006CF1B4(a1 - 256);

  operator delete();
}

uint64_t sub_1006CE21C(uint64_t a1)
{
  if (qword_100B541D0 != -1)
  {
    sub_100862DCC();
  }

  v2 = off_100B541C8;

  return sub_1006C3020(v2, a1);
}

void sub_1006CE270(uint64_t a1)
{
  if (qword_100B541D0 != -1)
  {
    sub_100862DCC();
  }

  v2 = off_100B541C8;

  sub_1006C3F34(v2, a1);
}

void sub_1006CE2CC(uint64_t a1, uint64_t a2)
{
  if (qword_100B541D0 != -1)
  {
    sub_100862DCC();
  }

  v4 = off_100B541C8;

  sub_1006C341C(v4, a1, a2);
}

void sub_1006CE328(uint64_t a1, int a2, int a3)
{
  if (qword_100B541D0 != -1)
  {
    sub_100862DCC();
  }

  v6 = off_100B541C8;

  sub_1006C3A34(v6, a1, a2, a3);
}

void sub_1006CE394(uint64_t a1, __int16 a2, int a3)
{
  if (qword_100B541D0 != -1)
  {
    sub_100862DCC();
  }

  v6 = off_100B541C8;

  sub_1006C3C20(v6, a1, a2, a3);
}

void sub_1006CE400(uint64_t a1)
{
  if (qword_100B541D0 != -1)
  {
    sub_100862DCC();
  }

  v2 = off_100B541C8;

  sub_1006C3DDC(v2, a1);
}

void sub_1006CE4BC(uint64_t a1, unsigned int a2, char a3)
{
  if (qword_100B541D0 != -1)
  {
    sub_100862DCC();
  }

  v6 = off_100B541C8;

  sub_1006C460C(v6, a1, a2, a3);
}

void sub_1006CE528(uint64_t a1, unsigned int a2, int a3)
{
  if (qword_100B541D0 != -1)
  {
    sub_100862DCC();
  }

  sub_1006C4D84(a1, a1, a2, a3);
}

void sub_1006CE58C(uint64_t a1, unsigned int a2)
{
  if (qword_100B541D0 != -1)
  {
    sub_100862DCC();
  }

  sub_1006C4F78(a1, a1, a2);
}

void sub_1006CE5E0(uint64_t a1, unsigned int a2, int a3)
{
  if (qword_100B541D0 != -1)
  {
    sub_100862DCC();
  }

  sub_1006C50E4(a1, a1, a2, a3);
}

void sub_1006CE644(uint64_t a1, char a2, unsigned int a3, const void *a4)
{
  if (qword_100B541D0 != -1)
  {
    sub_100862DCC();
  }

  v8 = off_100B541C8;

  sub_1006C5300(v8, a1, a2, a3, a4);
}

void sub_1006CE6B8(uint64_t a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  if (qword_100B541D0 != -1)
  {
    sub_100862DCC();
  }

  v8 = off_100B541C8;

  sub_1006C58E0(v8, a1, a2, a3, a4);
}

void sub_1006CE72C(uint64_t a1, char a2, uint64_t a3, uint64_t a4, const void *a5)
{
  v6 = a4;
  if (qword_100B541D0 != -1)
  {
    sub_100862DCC();
  }

  v9 = off_100B541C8;

  sub_1006CB6F4(v9, a1, a2, a4, v6, a5);
}

uint64_t sub_1006CE7A0(uint64_t a1, char a2)
{
  if (qword_100B541D0 != -1)
  {
    sub_100862DCC();
  }

  v4 = off_100B541C8;

  return sub_1006C7478(v4, a1, a2);
}

uint64_t sub_1006CE7FC(uint64_t a1, unsigned int a2, unsigned int a3)
{
  if (qword_100B541D0 != -1)
  {
    sub_100862DCC();
  }

  v6 = off_100B541C8;

  return sub_1006C5CE4(v6, a1, a2, a3);
}

void sub_1006CE868(uint64_t a1, unsigned int a2, int a3)
{
  if (qword_100B541D0 != -1)
  {
    sub_100862DCC();
  }

  v6 = off_100B541C8;

  sub_1006C77E4(v6, a1, a2, a3);
}

uint64_t sub_1006CE8DC(uint64_t a1, unsigned int a2, int a3)
{
  if (qword_100B541D0 != -1)
  {
    sub_100862DCC();
  }

  v6 = off_100B541C8;

  return sub_1006C7A8C(v6, a1, a2, a3);
}

uint64_t sub_1006CE948(uint64_t a1, char a2, uint64_t a3)
{
  if (qword_100B541D0 != -1)
  {
    sub_100862DCC();
  }

  v6 = off_100B541C8;

  return sub_1006C7C98(v6, a1, a2, a3);
}

uint64_t sub_1006CE9B4(uint64_t a1, char a2, uint64_t a3)
{
  if (qword_100B541D0 != -1)
  {
    sub_100862DCC();
  }

  v6 = off_100B541C8;

  return sub_1006C800C(v6, a1, a2, a3);
}

void *sub_1006CEA20(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7)
{
  if (qword_100B541D0 != -1)
  {
    sub_100862DCC();
  }

  v14 = off_100B541C8;

  return sub_1006C8924(v14, a1, a2, a3, a4, a5, a6, a7);
}

uint64_t sub_1006CEABC(uint64_t a1, char a2, uint64_t a3, int a4, uint64_t *a5)
{
  if (qword_100B541D0 != -1)
  {
    sub_100862DCC();
  }

  v10 = off_100B541C8;

  return sub_1006C84F0(v10, a1, a2, a3, a4, a5);
}

void *sub_1006CEB40(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t *a4, uint64_t a5, int a6, uint64_t a7)
{
  if (qword_100B541D0 != -1)
  {
    sub_100862DCC();
  }

  v14 = off_100B541C8;

  return sub_1006C9348(v14, a1, a2, a3, a4, a5, a6, a7);
}

void sub_1006CEBDC(uint64_t a1, unsigned int a2, int a3, unsigned int a4, const void *a5)
{
  if (qword_100B541D0 != -1)
  {
    sub_100862DCC();
  }

  v10 = off_100B541C8;

  sub_1006C9AB0(v10, a1, a2, a3, a4, a5);
}

uint64_t sub_1006CEC60(uint64_t a1, unsigned int a2, uint64_t a3)
{
  if (qword_100B541D0 != -1)
  {
    sub_100862DCC();
  }

  v6 = off_100B541C8;

  return sub_1006C9FAC(v6, a1, a2, a3);
}

uint64_t sub_1006CECCC(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  if (qword_100B541D0 != -1)
  {
    sub_100862DCC();
  }

  v10 = off_100B541C8;

  return sub_1006CA408(v10, a1, a2, a3, a4, a5);
}

void sub_1006CED50(uint64_t a1, __int16 a2, char *a3)
{
  if (qword_100B541D0 != -1)
  {
    sub_100862DCC();
  }

  v6 = off_100B541C8;

  sub_1006CA81C(v6, a1, a2, a3);
}

void sub_1006CEDBC(uint64_t a1, __int16 a2, char *a3, uint64_t a4, uint64_t a5)
{
  if (qword_100B541D0 != -1)
  {
    sub_100862DCC();
  }

  v10 = off_100B541C8;

  sub_1006CAD48(v10, a1, a2, a3, a4, a5);
}

void sub_1006CEE40(uint64_t a1, __int16 a2, char *a3)
{
  if (qword_100B541D0 != -1)
  {
    sub_100862DCC();
  }

  v6 = off_100B541C8;

  sub_1006CB280(v6, a1, a2, a3);
}

void sub_1006CEEAC()
{
  if (qword_100B541D0 != -1)
  {
    sub_100862DCC();
  }
}

void sub_1006CEED8(uint64_t a1, uint64_t a2, char *a3, int a4, uint64_t a5, int a6)
{
  if (qword_100B541D0 != -1)
  {
    sub_100862DCC();
  }

  v10 = off_100B541C8;

  sub_1006CC390(v10, a1, 0, a3, a4, 0, a6);
}

void sub_1006CEF54(uint64_t a1, uint64_t a2)
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
    sub_1006CEFE0((a1 + 8), v4, &v6);
    sub_1000C8CF0((a1 + 8));
  }

  os_unfair_lock_unlock(a1);
}

char *sub_1006CEFE0(void *a1, char *__src, char *a3)
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

void sub_1006CF17C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1006CF1B4(uint64_t a1)
{
  *a1 = off_100B07CC8;
  *(a1 + 256) = off_100B07D88;
  *(a1 + 264) = off_100B07DB0;
  *(a1 + 272) = &off_100B07DF8;
  sub_10000CEDC(a1 + 504, *(a1 + 512));
  sub_10037505C(a1 + 480, *(a1 + 488));
  sub_10000CEDC(a1 + 456, *(a1 + 464));
  sub_10007A068(a1 + 392);
  sub_10000CEDC(a1 + 368, *(a1 + 376));
  sub_10000CEDC(a1 + 344, *(a1 + 352));
  sub_10007A068(a1 + 280);

  return sub_10032F580(a1);
}

uint64_t *sub_1006CF450(uint64_t a1, unsigned __int8 *a2)
{
  v4 = *(a1 + 8);
  v2 = (a1 + 8);
  v3 = v4;
  if (!v4)
  {
    return v2;
  }

  v5 = *a2;
  v6 = a2[1];
  v7 = v2;
  do
  {
    v8 = *(v3 + 32);
    if (v8 >= v5)
    {
      if (v5 >= v8)
      {
        v9 = *(v3 + 33);
        v10 = v9 >= v6;
        v11 = v9 < v6;
        if (v10)
        {
          v7 = v3;
        }

        v3 += v11;
      }

      else
      {
        v7 = v3;
      }
    }

    else
    {
      ++v3;
    }

    v3 = *v3;
  }

  while (v3);
  if (v7 == v2)
  {
    return v2;
  }

  v12 = *(v7 + 32);
  if (v5 < v12 || v12 >= v5 && v6 < *(v7 + 33))
  {
    return v2;
  }

  return v7;
}

uint64_t sub_1006CF4E0(uint64_t a1, unsigned __int8 *a2)
{
  v4 = 0;
  v2 = *sub_1006CF580(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

uint64_t *sub_1006CF580(uint64_t a1, void *a2, unsigned __int8 *a3)
{
  v5 = *(a1 + 8);
  result = (a1 + 8);
  v4 = v5;
  if (v5)
  {
    v6 = *a3;
    v7 = a3[1];
    while (1)
    {
      while (1)
      {
        v8 = v4;
        v9 = *(v4 + 32);
        if (v6 >= v9)
        {
          break;
        }

LABEL_4:
        v4 = *v8;
        result = v8;
        if (!*v8)
        {
          goto LABEL_12;
        }
      }

      if (v9 >= v6)
      {
        v10 = *(v8 + 33);
        if (v7 < v10)
        {
          goto LABEL_4;
        }

        if (v10 >= v7)
        {
          goto LABEL_12;
        }
      }

      result = v8 + 1;
      v4 = v8[1];
      if (!v4)
      {
        goto LABEL_12;
      }
    }
  }

  v8 = result;
LABEL_12:
  *a2 = v8;
  return result;
}

void sub_1006CF5E8(id a1)
{
  qword_100BC7018 = os_log_create("com.apple.bluetooth", "CBSignpost");
  byte_100BC7020[0] = 1;
  qword_100BC7008[0] = os_signpost_id_generate(qword_100BC7018);
  byte_100BC7021 = 1;
  qword_100BC7010 = os_signpost_id_generate(qword_100BC7018);
  v1 = qword_100BC7018;
  if (os_log_type_enabled(qword_100BC7018, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "SingpostUtils initialized", v2, 2u);
  }
}

void sub_1006CF69C(void *a1)
{
  *a1 = &off_100B08090;
  a1[3] = 0;
  a1[2] = a1 + 3;
  a1[4] = 0;
  a1[6] = 0;
  a1[5] = a1 + 6;
  a1[9] = 0;
  a1[8] = a1 + 9;
  a1[7] = 0;
  a1[10] = 0;
  a1[12] = 0;
  a1[11] = a1 + 12;
  a1[13] = 0;
  a1[15] = 0;
  a1[14] = a1 + 15;
  a1[16] = 0;
  a1[19] = 0;
  a1[18] = 0;
  a1[17] = a1 + 18;
  a1[21] = 0;
  a1[20] = a1 + 21;
  a1[22] = 0;
  sub_100432840();
}

void sub_1006CF7A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void **a13, uint64_t a14)
{
  sub_10000CEDC(v20, *v17);
  sub_10000CEDC(v19, *v21);
  sub_10000CEDC(v18, *v16);
  sub_10000CEDC(a10, *v15);
  sub_10000CEDC(a11, *v14);
  sub_10000CEDC(a12, *v22);
  sub_10000CEDC(a14, *a13);
  _Unwind_Resume(a1);
}

uint64_t sub_1006CF80C(uint64_t a1)
{
  *a1 = &off_100B08090;
  (***(a1 + 8))(*(a1 + 8));
  v2 = *(a1 + 16);
  if (v2 != (a1 + 24))
  {
    do
    {
      if (v2[5])
      {
        operator delete();
      }

      v3 = v2[1];
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
          v4 = v2[2];
          v5 = *v4 == v2;
          v2 = v4;
        }

        while (!v5);
      }

      v2 = v4;
    }

    while (v4 != (a1 + 24));
  }

  v6 = *(a1 + 40);
  if (v6 != (a1 + 48))
  {
    do
    {
      if (v6[5])
      {
        operator delete();
      }

      v7 = v6[1];
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
          v8 = v6[2];
          v5 = *v8 == v6;
          v6 = v8;
        }

        while (!v5);
      }

      v6 = v8;
    }

    while (v8 != (a1 + 48));
  }

  v9 = *(a1 + 64);
  if (v9 != (a1 + 72))
  {
    do
    {
      if (v9[5])
      {
        operator delete();
      }

      v10 = v9[1];
      if (v10)
      {
        do
        {
          v11 = v10;
          v10 = *v10;
        }

        while (v10);
      }

      else
      {
        do
        {
          v11 = v9[2];
          v5 = *v11 == v9;
          v9 = v11;
        }

        while (!v5);
      }

      v9 = v11;
    }

    while (v11 != (a1 + 72));
  }

  v12 = *(a1 + 88);
  if (v12 != (a1 + 96))
  {
    do
    {
      if (v12[5])
      {
        operator delete();
      }

      v13 = v12[1];
      if (v13)
      {
        do
        {
          v14 = v13;
          v13 = *v13;
        }

        while (v13);
      }

      else
      {
        do
        {
          v14 = v12[2];
          v5 = *v14 == v12;
          v12 = v14;
        }

        while (!v5);
      }

      v12 = v14;
    }

    while (v14 != (a1 + 96));
  }

  v15 = *(a1 + 112);
  if (v15 != (a1 + 120))
  {
    do
    {
      if (v15[5])
      {
        operator delete();
      }

      v16 = v15[1];
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
          v17 = v15[2];
          v5 = *v17 == v15;
          v15 = v17;
        }

        while (!v5);
      }

      v15 = v17;
    }

    while (v17 != (a1 + 120));
  }

  v18 = *(a1 + 136);
  if (v18 != (a1 + 144))
  {
    do
    {
      if (v18[5])
      {
        operator delete();
      }

      v19 = v18[1];
      if (v19)
      {
        do
        {
          v20 = v19;
          v19 = *v19;
        }

        while (v19);
      }

      else
      {
        do
        {
          v20 = v18[2];
          v5 = *v20 == v18;
          v18 = v20;
        }

        while (!v5);
      }

      v18 = v20;
    }

    while (v20 != (a1 + 144));
  }

  v21 = *(a1 + 160);
  if (v21 != (a1 + 168))
  {
    do
    {
      if (v21[5])
      {
        operator delete();
      }

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
          v5 = *v23 == v21;
          v21 = v23;
        }

        while (!v5);
      }

      v21 = v23;
    }

    while (v23 != (a1 + 168));
  }

  sub_10000CEDC(a1 + 160, *(a1 + 168));
  sub_10000CEDC(a1 + 136, *(a1 + 144));
  sub_10000CEDC(a1 + 112, *(a1 + 120));
  sub_10000CEDC(a1 + 88, *(a1 + 96));
  sub_10000CEDC(a1 + 64, *(a1 + 72));
  sub_10000CEDC(a1 + 40, *(a1 + 48));
  sub_10000CEDC(a1 + 16, *(a1 + 24));
  return a1;
}

void sub_1006CFB84(_Unwind_Exception *a1)
{
  sub_10000CEDC((v1 + 20), v1[21]);
  sub_10000CEDC((v1 + 17), v1[18]);
  sub_10000CEDC((v1 + 14), v1[15]);
  sub_10000CEDC((v1 + 11), v1[12]);
  sub_10000CEDC((v1 + 8), v1[9]);
  sub_10000CEDC((v1 + 5), v1[6]);
  sub_10000CEDC((v1 + 2), v1[3]);
  _Unwind_Resume(a1);
}

void sub_1006CFBE8(uint64_t a1)
{
  sub_1006CF80C(a1);

  operator delete();
}

void *sub_1006CFC20(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v13[0] = a3;
  v5 = *(a2 + 8);
  if (!v5)
  {
    goto LABEL_9;
  }

  v6 = a2 + 8;
  do
  {
    v7 = *(v5 + 32);
    v8 = v7 >= a3;
    v9 = v7 < a3;
    if (v8)
    {
      v6 = v5;
    }

    v5 = *(v5 + 8 * v9);
  }

  while (v5);
  if (v6 != a2 + 8 && *(v6 + 32) <= a3)
  {
    v12 = *(v6 + 40);
    v11 = (v6 + 40);
    result = v12;
    if (v12)
    {
      operator delete();
    }
  }

  else
  {
LABEL_9:
    v13[2] = v13;
    result = sub_10005E16C(a2, v13);
    v11 = result + 5;
  }

  *v11 = a4;
  return result;
}

void sub_1006CFCF8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v19 = 0;
  v20 = a4;
  v17 = &v18;
  v18 = 0;
  if (a3)
  {
    v14 = 0;
    v15 = 0;
    v16 = 0;
    sub_1006D0A7C(&v14, a1 + 16);
    sub_10000CEDC(a1 + 16, *(a1 + 24));
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
    *(a1 + 16) = a1 + 24;
    sub_10000CEDC(&v17, v18);
    v8 = v15;
    v17 = v14;
    v18 = v15;
    v19 = v16;
    if (v16)
    {
      v15[2] = &v18;
      v14 = &v15;
      v15 = 0;
      v16 = 0;
      v8 = 0;
    }

    else
    {
      v17 = &v18;
    }

    sub_10000CEDC(&v14, v8);
  }

  else
  {
    sub_1006CFC20(a1, a1 + 16, a4, a5);
    v14 = &v20;
    sub_10005E16C(&v17, &v20)[5] = a5;
  }

  v10 = v17;
  if (v17 != &v18)
  {
    do
    {
      if (qword_100B541D0 != -1)
      {
        sub_100862DF4();
      }

      (*(*off_100B541C8 + 120))(off_100B541C8, a2, a3, v10[4], v10[5]);
      v11 = v10[1];
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
          v12 = v10[2];
          v13 = *v12 == v10;
          v10 = v12;
        }

        while (!v13);
      }

      v10 = v12;
    }

    while (v12 != &v18);
  }

  sub_10000CEDC(&v17, v18);
}

void sub_1006CFEEC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v19 = 0;
  v20 = a4;
  v17 = &v18;
  v18 = 0;
  if (a3)
  {
    v14 = 0;
    v15 = 0;
    v16 = 0;
    sub_1006D0A7C(&v14, a1 + 40);
    sub_10000CEDC(a1 + 40, *(a1 + 48));
    *(a1 + 48) = 0;
    *(a1 + 56) = 0;
    *(a1 + 40) = a1 + 48;
    sub_10000CEDC(&v17, v18);
    v8 = v15;
    v17 = v14;
    v18 = v15;
    v19 = v16;
    if (v16)
    {
      v15[2] = &v18;
      v14 = &v15;
      v15 = 0;
      v16 = 0;
      v8 = 0;
    }

    else
    {
      v17 = &v18;
    }

    sub_10000CEDC(&v14, v8);
  }

  else
  {
    sub_1006CFC20(a1, a1 + 40, a4, a5);
    v14 = &v20;
    sub_10005E16C(&v17, &v20)[5] = a5;
  }

  v10 = v17;
  if (v17 != &v18)
  {
    do
    {
      if (qword_100B541D0 != -1)
      {
        sub_100862DF4();
      }

      (*(*off_100B541C8 + 128))(off_100B541C8, a2, a3, v10[4], v10[5]);
      v11 = v10[1];
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
          v12 = v10[2];
          v13 = *v12 == v10;
          v10 = v12;
        }

        while (!v13);
      }

      v10 = v12;
    }

    while (v12 != &v18);
  }

  sub_10000CEDC(&v17, v18);
}

void sub_1006D00E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6)
{
  v21 = 0;
  v22 = a5;
  v19 = &v20;
  v20 = 0;
  if (a4)
  {
    v16 = 0;
    v17 = 0;
    v18 = 0;
    sub_1006D0A7C(&v16, a1 + 64);
    sub_10000CEDC(a1 + 64, *(a1 + 72));
    *(a1 + 72) = 0;
    *(a1 + 80) = 0;
    *(a1 + 64) = a1 + 72;
    sub_10000CEDC(&v19, v20);
    v10 = v17;
    v19 = v16;
    v20 = v17;
    v21 = v18;
    if (v18)
    {
      v17[2] = &v20;
      v16 = &v17;
      v17 = 0;
      v18 = 0;
      v10 = 0;
    }

    else
    {
      v19 = &v20;
    }

    sub_10000CEDC(&v16, v10);
  }

  else
  {
    sub_1006CFC20(a1, a1 + 64, a5, a6);
    v16 = &v22;
    sub_10005E16C(&v19, &v22)[5] = a6;
  }

  v12 = v19;
  if (v19 != &v20)
  {
    do
    {
      if (qword_100B541D0 != -1)
      {
        sub_100862DF4();
      }

      (*(*off_100B541C8 + 136))(off_100B541C8, a2, a3, a4, v12[4], v12[5]);
      v13 = v12[1];
      if (v13)
      {
        do
        {
          v14 = v13;
          v13 = *v13;
        }

        while (v13);
      }

      else
      {
        do
        {
          v14 = v12[2];
          v15 = *v14 == v12;
          v12 = v14;
        }

        while (!v15);
      }

      v12 = v14;
    }

    while (v14 != &v20);
  }

  sub_10000CEDC(&v19, v20);
}

void sub_1006D02E4(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v17 = 0;
  v18 = a3;
  v15 = &v16;
  v16 = 0;
  if (a2)
  {
    v12 = 0;
    v13 = 0;
    v14 = 0;
    sub_1006D0A7C(&v12, a1 + 88);
    sub_10000CEDC(a1 + 88, *(a1 + 96));
    *(a1 + 96) = 0;
    *(a1 + 104) = 0;
    *(a1 + 88) = a1 + 96;
    sub_10000CEDC(&v15, v16);
    v6 = v13;
    v15 = v12;
    v16 = v13;
    v17 = v14;
    if (v14)
    {
      v13[2] = &v16;
      v12 = &v13;
      v13 = 0;
      v14 = 0;
      v6 = 0;
    }

    else
    {
      v15 = &v16;
    }

    sub_10000CEDC(&v12, v6);
  }

  else
  {
    sub_1006CFC20(a1, a1 + 88, a3, a4);
    v12 = &v18;
    sub_10005E16C(&v15, &v18)[5] = a4;
  }

  v8 = v15;
  if (v15 != &v16)
  {
    do
    {
      if (qword_100B541D0 != -1)
      {
        sub_100862DF4();
      }

      (*(*off_100B541C8 + 144))(off_100B541C8, a2, v8[4], v8[5]);
      v9 = v8[1];
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
          v10 = v8[2];
          v11 = *v10 == v8;
          v8 = v10;
        }

        while (!v11);
      }

      v8 = v10;
    }

    while (v10 != &v16);
  }

  sub_10000CEDC(&v15, v16);
}

void sub_1006D04C8(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v17 = 0;
  v18 = a3;
  v15 = &v16;
  v16 = 0;
  if (a2)
  {
    v12 = 0;
    v13 = 0;
    v14 = 0;
    sub_1006D0A7C(&v12, a1 + 112);
    sub_10000CEDC(a1 + 112, *(a1 + 120));
    *(a1 + 120) = 0;
    *(a1 + 128) = 0;
    *(a1 + 112) = a1 + 120;
    sub_10000CEDC(&v15, v16);
    v6 = v13;
    v15 = v12;
    v16 = v13;
    v17 = v14;
    if (v14)
    {
      v13[2] = &v16;
      v12 = &v13;
      v13 = 0;
      v14 = 0;
      v6 = 0;
    }

    else
    {
      v15 = &v16;
    }

    sub_10000CEDC(&v12, v6);
  }

  else
  {
    sub_1006CFC20(a1, a1 + 112, a3, a4);
    v12 = &v18;
    sub_10005E16C(&v15, &v18)[5] = a4;
  }

  v8 = v15;
  if (v15 != &v16)
  {
    do
    {
      if (qword_100B541D0 != -1)
      {
        sub_100862DF4();
      }

      (*(*off_100B541C8 + 152))(off_100B541C8, a2, v8[4], v8[5]);
      v9 = v8[1];
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
          v10 = v8[2];
          v11 = *v10 == v8;
          v8 = v10;
        }

        while (!v11);
      }

      v8 = v10;
    }

    while (v10 != &v16);
  }

  sub_10000CEDC(&v15, v16);
}

void sub_1006D06AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6)
{
  v21 = 0;
  v22 = a5;
  v19 = &v20;
  v20 = 0;
  if (a4)
  {
    v16 = 0;
    v17 = 0;
    v18 = 0;
    sub_1006D0A7C(&v16, a1 + 136);
    sub_10000CEDC(a1 + 136, *(a1 + 144));
    *(a1 + 144) = 0;
    *(a1 + 152) = 0;
    *(a1 + 136) = a1 + 144;
    sub_10000CEDC(&v19, v20);
    v10 = v17;
    v19 = v16;
    v20 = v17;
    v21 = v18;
    if (v18)
    {
      v17[2] = &v20;
      v16 = &v17;
      v17 = 0;
      v18 = 0;
      v10 = 0;
    }

    else
    {
      v19 = &v20;
    }

    sub_10000CEDC(&v16, v10);
  }

  else
  {
    sub_1006CFC20(a1, a1 + 136, a5, a6);
    v16 = &v22;
    sub_10005E16C(&v19, &v22)[5] = a6;
  }

  v12 = v19;
  if (v19 != &v20)
  {
    do
    {
      if (qword_100B541D0 != -1)
      {
        sub_100862DF4();
      }

      (*(*off_100B541C8 + 160))(off_100B541C8, a2, a3, a4, v12[4], v12[5]);
      v13 = v12[1];
      if (v13)
      {
        do
        {
          v14 = v13;
          v13 = *v13;
        }

        while (v13);
      }

      else
      {
        do
        {
          v14 = v12[2];
          v15 = *v14 == v12;
          v12 = v14;
        }

        while (!v15);
      }

      v12 = v14;
    }

    while (v14 != &v20);
  }

  sub_10000CEDC(&v19, v20);
}

void sub_1006D08B0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v19 = 0;
  v20 = a4;
  v17 = &v18;
  v18 = 0;
  if (a3)
  {
    v14 = 0;
    v15 = 0;
    v16 = 0;
    sub_1006D0A7C(&v14, a1 + 160);
    sub_10000CEDC(a1 + 160, *(a1 + 168));
    *(a1 + 168) = 0;
    *(a1 + 176) = 0;
    *(a1 + 160) = a1 + 168;
    sub_10000CEDC(&v17, v18);
    v8 = v15;
    v17 = v14;
    v18 = v15;
    v19 = v16;
    if (v16)
    {
      v15[2] = &v18;
      v14 = &v15;
      v15 = 0;
      v16 = 0;
      v8 = 0;
    }

    else
    {
      v17 = &v18;
    }

    sub_10000CEDC(&v14, v8);
  }

  else
  {
    sub_1006CFC20(a1, a1 + 160, a4, a5);
    v14 = &v20;
    sub_10005E16C(&v17, &v20)[5] = a5;
  }

  v10 = v17;
  if (v17 != &v18)
  {
    do
    {
      if (qword_100B541D0 != -1)
      {
        sub_100862DF4();
      }

      (*(*off_100B541C8 + 168))(off_100B541C8, a2, a3, v10[4], v10[5]);
      v11 = v10[1];
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
          v12 = v10[2];
          v13 = *v12 == v10;
          v10 = v12;
        }

        while (!v13);
      }

      v10 = v12;
    }

    while (v12 != &v18);
  }

  sub_10000CEDC(&v17, v18);
}

void *sub_1006D0A7C(void *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  sub_10038AC5C(a1, *a2, (a2 + 8));
  return a1;
}

uint64_t sub_1006D0B3C(uint64_t a1)
{
  *sub_100589578(a1, "RemoteService", 8) = &off_100B08108;
  if (qword_100B541D0 != -1)
  {
    sub_100862E1C();
  }

  sub_100589880(a1, off_100B541C8);
  return a1;
}

void sub_1006D0BD0(uint64_t a1)
{
  sub_100589670(a1);

  operator delete();
}

uint64_t sub_1006D0C08(uint64_t a1, uint64_t a2)
{
  v9 = xmmword_1008C4D90;
  v10 = xmmword_1008C4D80;
  v8 = xmmword_1008A9C00;
  if (sub_10053C3E8(a2))
  {
    if (sub_10053A020(a2, &v10, 9u))
    {
      v4 = 4;
      if (sub_10053A020(a2, &v9, 9u))
      {
        if (sub_10053A020(a2, &v8, 9u))
        {
          v4 = 4;
        }

        else
        {
          v4 = 1;
        }
      }
    }

    else
    {
      v4 = 1;
    }
  }

  else
  {
    v4 = 0;
  }

  v5 = *(a1 + 32);
  v11 = 0;
  sub_100016250(&v11);
  *&v7 = v11;
  *(&v7 + 1) = SWORD2(v11);
  return sub_100539554(a2, v5, v4, &v7, 0);
}

uint64_t sub_1006D0D64(unint64_t a1, __int128 *a2, uint64_t a3, unint64_t *a4)
{
  v10 = 0;
  if (qword_100B50F88 != -1)
  {
    sub_100862E30();
  }

  v8 = sub_1006DB230(off_100B50F80, a1, &v10, a4);
  if (!v8)
  {
    sub_1006D71EC(v10, *a4, a2, a3);
  }

  return v8;
}

uint64_t sub_1006D0DF4(unint64_t *a1)
{
  if (qword_100B50F88 != -1)
  {
    sub_100862E30();
  }

  sub_1006DB54C(off_100B50F80, *a1);
  *a1 = 0;
  return 0;
}

uint64_t sub_1006D0E44(unint64_t a1)
{
  if (qword_100B50F88 != -1)
  {
    sub_100862E30();
  }

  v2 = sub_1006DB834(off_100B50F80, a1);
  if (!v2)
  {
    return 7;
  }

  return sub_1006D7488(v2, a1);
}

uint64_t sub_1006D0EB4(unint64_t a1)
{
  if (qword_100B50F88 != -1)
  {
    sub_100862E30();
  }

  v2 = sub_1006DB834(off_100B50F80, a1);
  if (!v2)
  {
    return 7;
  }

  return sub_1006D703C(v2, a1);
}

uint64_t sub_1006D0F24(uint64_t a1)
{
  if (qword_100B50F88 != -1)
  {
    sub_100862E30();
  }

  v2 = sub_1006DB834(off_100B50F80, a1);
  if (!v2)
  {
    return 7;
  }

  return sub_1006D8A50(v2);
}

uint64_t sub_1006D0F90(uint64_t a1, unint64_t a2, char *a3)
{
  if (qword_100B50F88 != -1)
  {
    sub_100862E30();
  }

  v6 = sub_1006DB834(off_100B50F80, a1);
  if (v6)
  {
    v7 = v6;
    if (qword_100B508F0 != -1)
    {
      sub_100862E44();
    }

    v8 = sub_1000E41C0(off_100B508E8, a2);
    if (v8)
    {
      v9 = v8;
      v11[0] = 0;
      v11[1] = 0;
      v12 = 0;
      sub_1000DE474(v11);
      if (*a3)
      {
        sub_1006E5F20(v11, a3);
      }

      sub_1006D8AA8(v7, v9);
    }
  }

  return 7;
}

uint64_t sub_1006D10BC(uint64_t a1, unint64_t a2, int a3)
{
  if (qword_100B50F88 != -1)
  {
    sub_100862E30();
  }

  v6 = sub_1006DB834(off_100B50F80, a1);
  if (!v6)
  {
    return 7;
  }

  v7 = v6;
  if (qword_100B508F0 != -1)
  {
    sub_100862E44();
  }

  v8 = sub_1000E41C0(off_100B508E8, a2);
  if (!v8)
  {
    return 7;
  }

  return sub_1006D8CE8(v7, v8, a3);
}

uint64_t sub_1006D1178(uint64_t a1, unint64_t a2)
{
  if (qword_100B508D0 != -1)
  {
    sub_100862E58();
  }

  *uu = 0;
  v33 = 0;
  sub_1000E61D4(off_100B508C8, a2, uu);
  if (qword_100B508F0 != -1)
  {
    sub_100862E6C();
  }

  v4 = sub_1000E41C0(off_100B508E8, a2);
  if (qword_100B50F88 != -1)
  {
    sub_100862E94();
  }

  v5 = sub_1006DB834(off_100B50F80, a1);
  if (!v5)
  {
    v21 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      *v26 = 0;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "PairingAgent is NULL", v26, 2u);
    }

    return 7;
  }

  if (qword_100B50B88 != -1)
  {
    sub_100862EBC();
  }

  v6 = sub_1000117DC(qword_100B50B80, v5);
  v7 = sub_1000C0348(v4);
  if (v6)
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  if (!v8)
  {
    goto LABEL_35;
  }

  if (sub_100067238())
  {
    CTGreenTeaOsLogHandle = getCTGreenTeaOsLogHandle();
    v10 = CTGreenTeaOsLogHandle;
    if (CTGreenTeaOsLogHandle)
    {
      if (os_log_type_enabled(CTGreenTeaOsLogHandle, OS_LOG_TYPE_INFO))
      {
        sub_100018384(v6, v26);
        v11 = v27;
        v12 = *v26;
        sub_1000E5A58(v4, __p);
        v13 = v26;
        if (v11 < 0)
        {
          v13 = v12;
        }

        if (v25 >= 0)
        {
          v14 = __p;
        }

        else
        {
          v14 = __p[0];
        }

        *buf = 136446466;
        v29 = v13;
        v30 = 2082;
        v31 = v14;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Session %{public}s is asking to delete pairing for device %{public}s", buf, 0x16u);
        if (v25 < 0)
        {
          operator delete(__p[0]);
        }

        if (v27 < 0)
        {
          operator delete(*v26);
        }
      }
    }
  }

  v15 = qword_100BCE8D8;
  if (!os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    goto LABEL_35;
  }

  sub_100018384(v6, v26);
  v16 = v27;
  v17 = *v26;
  sub_1000E5A58(v4, __p);
  v18 = v26;
  if (v16 < 0)
  {
    v18 = v17;
  }

  if (v25 >= 0)
  {
    v19 = __p;
  }

  else
  {
    v19 = __p[0];
  }

  *buf = 136446466;
  v29 = v18;
  v30 = 2082;
  v31 = v19;
  _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Session %{public}s is asking to delete pairing for device %{public}s", buf, 0x16u);
  if (v25 < 0)
  {
    operator delete(__p[0]);
  }

  if (v27 < 0)
  {
    operator delete(*v26);
    if (v4)
    {
      return sub_1006D88C8(v5, v4);
    }
  }

  else
  {
LABEL_35:
    if (v4)
    {
      return sub_1006D88C8(v5, v4);
    }
  }

  if (uuid_is_null(uu))
  {
    return 7;
  }

  if (qword_100B508C0 != -1)
  {
    sub_100862EE4();
  }

  v22 = off_100B508B8;
  v23 = sub_10004DF60(uu);
  sub_1007C2AA4(v22, v23);

  return 0;
}

void sub_1006D14FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1006D1530(uint64_t a1, int a2)
{
  if (qword_100B50F88 != -1)
  {
    sub_100862E30();
  }

  if (!sub_1006DB834(off_100B50F80, a1))
  {
    return 7;
  }

  if (a2 > 3)
  {
    return 3;
  }

  if (qword_100B512E8 != -1)
  {
    sub_100862F0C();
  }

  v5 = off_100B512E0;

  return sub_1006E8808(v5, a2);
}

uint64_t sub_1006D15D4(uint64_t a1, unint64_t a2)
{
  if (qword_100B50F88 != -1)
  {
    sub_100862E30();
  }

  v4 = sub_1006DB834(off_100B50F80, a1);
  if (qword_100B508F0 != -1)
  {
    sub_100862E44();
  }

  v5 = sub_1000E41C0(off_100B508E8, a2);
  if (!v4)
  {
    return 7;
  }

  v6 = v5;
  if (!v5)
  {
    return 7;
  }

  if (qword_100B512E8 != -1)
  {
    sub_100862F0C();
  }

  v7 = off_100B512E0;

  return sub_1006E9450(v7, v6);
}

uint64_t sub_1006D169C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (qword_100B50F88 != -1)
  {
    sub_100862E30();
  }

  v12 = sub_1006DB834(off_100B50F80, a1);
  if (qword_100B508F0 != -1)
  {
    sub_100862E44();
  }

  v13 = sub_1000E41C0(off_100B508E8, a2);
  v14 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 141560835;
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
    v34 = 2160;
    v35 = 1752392040;
    v36 = 1041;
    v37 = 16;
    v38 = 2097;
    v39 = a6;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "BTPairingAgentSetOOBDataForDevice C192:%{private, mask.hash}.16P R192:%{private, mask.hash}.16P C256:%{private, mask.hash}.16P R256:%{private, mask.hash}.16P", &v16, 0x6Au);
  }

  result = 7;
  if (v12 && v13)
  {
    if (qword_100B512E8 != -1)
    {
      sub_100862F20();
    }

    return sub_1006E9014(off_100B512E0, v13, a3, a4, a5, a6);
  }

  return result;
}

uint64_t sub_1006D1878(uint64_t a1)
{
  if (qword_100B50F88 != -1)
  {
    sub_100862E30();
  }

  if (!sub_1006DB834(off_100B50F80, a1))
  {
    return 7;
  }

  if (qword_100B512E8 != -1)
  {
    sub_100862F0C();
  }

  v2 = off_100B512E0;

  return sub_1006E9590(v2);
}

uint64_t sub_1006D1B74(uint64_t result)
{
  *result = 0;
  *(result + 8) = 0;
  *(result + 16) = 0;
  return result;
}

__n128 sub_1006D1B80(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  a1[1].n128_u32[0] = a2[1].n128_u32[0];
  return result;
}

uint64_t sub_1006D1B94(uint64_t result, _OWORD *a2, unsigned int a3)
{
  *result = *a2;
  if (a3 <= 8)
  {
    *(result + 16) = a3;
  }

  return result;
}

__n128 sub_1006D1BB0(__n128 *a1, __n128 *a2, unsigned __int32 a3)
{
  result = *a2;
  *a1 = *a2;
  a1[1].n128_u32[0] = a3;
  return result;
}

uint64_t sub_1006D1BC8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= 9)
  {
    return 4;
  }

  else
  {
    return v1;
  }
}

BOOL sub_1006D1BDC(_BYTE *a1)
{
  if (*a1)
  {
    return 0;
  }

  v2 = 0;
  do
  {
    v3 = v2;
    if (v2 == 15)
    {
      break;
    }

    ++v2;
  }

  while (!a1[v3 + 1]);
  return v3 > 0xE;
}

void *sub_1006D1D68(void *a1)
{
  *a1 = off_100B082E8;
  a1[1] = off_100B083A8;
  a1[2] = off_100B083D0;
  a1[3] = &off_100B08490;
  a1[4] = 0;
  a1[10] = 0;
  a1[7] = 0;
  a1[8] = 0;
  a1[6] = 0;
  v2 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_DEFAULT, -1);
  a1[5] = dispatch_queue_create("com.apple.AuthorizationManagerSerialQueue", v2);
  return a1;
}

void sub_1006D1E3C(uint64_t a1)
{
  if (qword_100B512F8 != -1)
  {
    sub_100862F48();
  }

  sub_1006D6828(off_100B512F0 + 192, a1 + 24);
  if (qword_100B508B0 != -1)
  {
    sub_100862F5C();
  }

  sub_100749B80(off_100B508A8, a1 + 16, 0);
  if (qword_100B508C0 != -1)
  {
    sub_100862F70();
  }

  sub_1007BF384(off_100B508B8, a1 + 8);
  if (qword_100B50AA0 != -1)
  {
    sub_100862F84();
  }

  v2 = off_100B50A98 + 64;

  sub_100312650(v2, a1);
}

void sub_1006D1F14(uint64_t a1)
{
  if (qword_100B512F8 != -1)
  {
    sub_100862F48();
  }

  sub_10007A3F0(off_100B512F0 + 192, a1 + 24);
  if (qword_100B508B0 != -1)
  {
    sub_100862F5C();
  }

  sub_100749C8C(off_100B508A8, a1 + 16);
  if (qword_100B508C0 != -1)
  {
    sub_100862F70();
  }

  sub_1007BF4C0(off_100B508B8, a1 + 8);
  if (qword_100B50AA0 != -1)
  {
    sub_100862F84();
  }

  sub_10007A3F0(off_100B50A98 + 64, a1);
  v2 = *(a1 + 40);

  dispatch_release(v2);
}

void sub_1006D1FF0(uint64_t a1)
{
  v1 = *(a1 + 40);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1006D2064;
  block[3] = &unk_100ADF8F8;
  block[4] = a1;
  dispatch_async(v1, block);
}

void sub_1006D2064(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = qword_100BCE9A0;
  if (os_log_type_enabled(qword_100BCE9A0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Received 'stackDidStart' listener", buf, 2u);
  }

  v3 = +[NSMutableArray array];
  v4 = *(v1 + 48);
  *(v1 + 48) = v3;

  v5 = +[NSMutableDictionary dictionary];
  v6 = *(v1 + 56);
  *(v1 + 56) = v5;

  v7 = *(v1 + 32);
  *(v1 + 32) = 0;

  *(v1 + 72) = 0;
  v25 = [NSArray arrayWithObjects:@"COGITO", @"LG Watch Sport 5148", @"HUAWEI WATCH 2 0738", @"LG Urbane A94D", @"fenix 5", @"ASUS ZenWatch3 3419", @"Polar Loop 2", @"Polar M600 761E", @"Charge 2", @"Gear Fit2 (98D9)", @"The Mission 4349", @"vívoactive3", @"Ionic", @"fenix 3", @"TicWatch Pro 1291", @"Moto 360 109D", @"Charge 3", @"Versa", 0];
  v24 = [NSNumber numberWithInt:1];
  v8 = [NSNumber numberWithInt:2];
  v9 = [NSNumber numberWithInt:3];
  v10 = [NSNumber numberWithInt:4];
  v30 = [NSNumber numberWithInt:5];
  v23 = [NSNumber numberWithInt:6];
  v22 = [NSNumber numberWithInt:7];
  v29 = [NSNumber numberWithInt:8];
  v21 = [NSNumber numberWithInt:9];
  v20 = [NSNumber numberWithInt:10];
  v19 = [NSNumber numberWithInt:11];
  v18 = [NSNumber numberWithInt:12];
  v28 = [NSNumber numberWithInt:13];
  v27 = [NSNumber numberWithInt:14];
  v11 = v8;
  v26 = [NSNumber numberWithInt:15];
  v12 = [NSNumber numberWithInt:16];
  v13 = [NSNumber numberWithInt:17];
  v14 = [NSNumber numberWithInt:18];
  v17 = [NSArray arrayWithObjects:v24, v11, v9, v10, v30, v23, v22, v29, v21, v20, v19, v18, v28, v27, v26, v12, v13, v14, 0];

  v15 = [[NSDictionary alloc] initWithObjects:v17 forKeys:v25];
  v16 = qword_100BC7030;
  qword_100BC7030 = v15;
}

void sub_1006D265C(uint64_t a1)
{
  v1 = *(a1 + 40);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1006D26D0;
  block[3] = &unk_100ADF8F8;
  block[4] = a1;
  dispatch_async(v1, block);
}

void sub_1006D26D0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = qword_100BCE9A0;
  if (os_log_type_enabled(qword_100BCE9A0, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Received 'stackWillStop' listener", v5, 2u);
  }

  [*(v1 + 48) removeAllObjects];
  [*(v1 + 56) removeAllObjects];
  v3 = *(v1 + 64);
  *(v1 + 64) = 0;

  v4 = qword_100BC7030;
  qword_100BC7030 = 0;

  sub_1006D2770(v1);
}

void sub_1006D2770(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = qword_100BCE9A0;
  v4 = os_log_type_enabled(qword_100BCE9A0, OS_LOG_TYPE_DEFAULT);
  if (v2)
  {
    if (v4)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Deregistering FrontBoard services", buf, 2u);
      v2 = *(a1 + 32);
    }

    [v2 setHandler:0];
    [*(a1 + 32) invalidate];
    v5 = *(a1 + 32);
    *(a1 + 32) = 0;
  }

  else if (v4)
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Unable to deregister FrontBoard services as fDisplayLayoutMonitor is NULL", v6, 2u);
  }
}

void sub_1006D2840(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 40);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1006D28D8;
  v6[3] = &unk_100AE1200;
  v7 = v3;
  v8 = a1;
  v5 = v3;
  dispatch_async(v4, v6);
}

void sub_1006D28D8(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = qword_100BCE9A0;
  if (os_log_type_enabled(qword_100BCE9A0, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    *buf = 138412290;
    v28 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Received 'lePairingCompleted' listener for device '%@'", buf, 0xCu);
  }

  if (qword_100B508D0 != -1)
  {
    sub_100862F98();
  }

  v5 = off_100B508C8;
  v6 = *(a1 + 32);
  sub_100007E30(__p, "RequiresANCSAuth");
  v7 = sub_10004EB40(v5, v6, __p);
  if (v25 < 0)
  {
    operator delete(__p[0]);
  }

  v8 = qword_100BCE9A0;
  v9 = os_log_type_enabled(qword_100BCE9A0, OS_LOG_TYPE_DEFAULT);
  if (v7)
  {
    if (v9)
    {
      v10 = *(a1 + 32);
      *buf = 138412290;
      v28 = v10;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Device '%@' has the tag 'RequiresANCSAuth', Check if the current bundleIdentifier is present in the device's bundle identifier list", buf, 0xCu);
    }

    v11 = sub_1006D2BF0(v2, *(a1 + 32));
    if (v11)
    {
      v12 = qword_100BCE9A0;
      if (os_log_type_enabled(qword_100BCE9A0, OS_LOG_TYPE_DEFAULT))
      {
        v13 = *(a1 + 32);
        *buf = 138412546;
        v28 = v13;
        v29 = 2112;
        v30 = v11;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "bundle identifier list for device '%@': %@", buf, 0x16u);
      }

      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      v14 = v11;
      v15 = [v14 countByEnumeratingWithState:&v20 objects:v26 count:16];
      if (v15)
      {
        v16 = *v21;
        while (2)
        {
          for (i = 0; i != v15; i = i + 1)
          {
            if (*v21 != v16)
            {
              objc_enumerationMutation(v14);
            }

            v18 = *(*(&v20 + 1) + 8 * i);
            if ([v18 isEqualToString:{*(v2 + 80), v20}])
            {
              *(v2 + 73) = 1;
              sub_1006D2DB4(v2, *(a1 + 32), v18);
              goto LABEL_25;
            }
          }

          v15 = [v14 countByEnumeratingWithState:&v20 objects:v26 count:16];
          if (v15)
          {
            continue;
          }

          break;
        }
      }

LABEL_25:
    }
  }

  else if (v9)
  {
    v19 = *(a1 + 32);
    *buf = 138412290;
    v28 = v19;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Device '%@' does not have the tag 'RequiresANCSAuth', not adding it to the authorization queue.", buf, 0xCu);
  }
}

id sub_1006D2BF0(uint64_t a1, void *a2)
{
  v3 = a2;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = *(a1 + 48);
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = *v15;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v14 + 1) + 8 * i);
        v9 = [v8 device];
        v10 = [v9 UUIDString];
        v11 = [v3 UUIDString];
        v12 = [v10 isEqualToString:v11];

        if (v12)
        {
          v5 = [v8 bundleIdentifiers];
          goto LABEL_11;
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v5;
}

void sub_1006D2DB4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 40);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1006D5050;
  block[3] = &unk_100AE25C8;
  v12 = v6;
  v13 = a1;
  v11 = v5;
  v8 = v6;
  v9 = v5;
  dispatch_async(v7, block);
}

void sub_1006D2E80(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 40);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1006D2F18;
  v6[3] = &unk_100AE1200;
  v7 = v3;
  v8 = a1;
  v5 = v3;
  dispatch_async(v4, v6);
}

void sub_1006D2F18(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = qword_100BCE9A0;
  if (os_log_type_enabled(qword_100BCE9A0, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    v5 = 138412290;
    v6 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Received 'leDeviceUnpaired' listener for device '%@'", &v5, 0xCu);
  }

  sub_1006D2FD8(v2, *(a1 + 32));
}

void sub_1006D2FD8(uint64_t a1, void *a2)
{
  v23 = a2;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = *(a1 + 48);
  v3 = [obj countByEnumeratingWithState:&v28 objects:v33 count:16];
  if (v3)
  {
    v4 = *v29;
    while (2)
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v29 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v28 + 1) + 8 * i);
        v7 = [v6 device];
        v8 = [v7 UUIDString];
        v9 = [v23 UUIDString];
        v10 = [v8 isEqualToString:v9];

        if (v10)
        {
          v26 = 0u;
          v27 = 0u;
          v24 = 0u;
          v25 = 0u;
          v11 = [v6 bundleIdentifiers];
          v12 = [v11 countByEnumeratingWithState:&v24 objects:v32 count:16];
          if (v12)
          {
            v13 = *v25;
            do
            {
              for (j = 0; j != v12; j = j + 1)
              {
                if (*v25 != v13)
                {
                  objc_enumerationMutation(v11);
                }

                v15 = *(*(&v24 + 1) + 8 * j);
                v16 = [*(a1 + 56) objectForKey:v15];
                v17 = v16 == 0;

                if (!v17)
                {
                  v18 = [*(a1 + 56) valueForKey:v15];
                  v19 = [v18 intValue];

                  v20 = *(a1 + 56);
                  if (v19 == 1)
                  {
                    [*(a1 + 56) removeObjectForKey:v15];
                  }

                  else
                  {
                    v21 = [NSNumber numberWithInt:v19 - 1];
                    [v20 setValue:v21 forKey:v15];
                  }
                }
              }

              v12 = [v11 countByEnumeratingWithState:&v24 objects:v32 count:16];
            }

            while (v12);
          }

          [*(a1 + 48) removeObject:v6];
          goto LABEL_22;
        }
      }

      v3 = [obj countByEnumeratingWithState:&v28 objects:v33 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_22:

  if (![*(a1 + 48) count])
  {
    [*(a1 + 56) removeAllObjects];
    sub_1006D2770(a1);
  }
}

void sub_1006D3304(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 40);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1006D339C;
  v6[3] = &unk_100AE1200;
  v7 = v3;
  v8 = a1;
  v5 = v3;
  dispatch_async(v4, v6);
}

void sub_1006D339C(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = qword_100BCE9A0;
  if (os_log_type_enabled(qword_100BCE9A0, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    *buf = 138412290;
    v21 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Received 'leLinkReady' listener for device '%@'", buf, 0xCu);
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  if (qword_100B508C0 != -1)
  {
    sub_100862FC0();
  }

  v5 = sub_10009DA04(off_100B508B8);
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = *v16;
    do
    {
      v8 = 0;
      do
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v15 + 1) + 8 * v8);
        if (qword_100B508D0 != -1)
        {
          sub_100862F98();
        }

        v10 = off_100B508C8;
        sub_100007E30(__p, "RequiresANCSAuth");
        v11 = sub_10004EB40(v10, v9, __p);
        v12 = v11;
        if (v14 < 0)
        {
          operator delete(__p[0]);
          if (!v12)
          {
            goto LABEL_17;
          }

LABEL_16:
          sub_1006D35C0(v2, v9, 0);
          goto LABEL_17;
        }

        if (v11)
        {
          goto LABEL_16;
        }

LABEL_17:
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
  }
}

void sub_1006D35C0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v21 = a1;
  v22 = a3;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v6 = *(a1 + 48);
  v7 = [(DeviceObject *)v6 countByEnumeratingWithState:&v23 objects:v31 count:16];
  if (v7)
  {
    v8 = *v24;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v24 != v8)
      {
        objc_enumerationMutation(v6);
      }

      v10 = *(*(&v23 + 1) + 8 * v9);
      v11 = [v10 device];
      v12 = [v11 UUIDString];
      v13 = [v5 UUIDString];
      v14 = [v12 isEqualToString:v13];

      if (v14)
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [(DeviceObject *)v6 countByEnumeratingWithState:&v23 objects:v31 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    v16 = qword_100BCE9A0;
    if (os_log_type_enabled(qword_100BCE9A0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v28 = v5;
      v29 = 2112;
      v30 = v22;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Device '%@' is present in the authorization queue, adding the bundleIdentifier '%@' to its list", buf, 0x16u);
    }

    if (v22)
    {
      v17 = [v10 bundleIdentifiers];
      v18 = [v17 containsObject:v22];

      v19 = qword_100BCE9A0;
      if ((v18 & 1) == 0)
      {
        if (os_log_type_enabled(qword_100BCE9A0, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          v28 = v22;
          v29 = 2112;
          v30 = v5;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Added the bundle identifier '%@' to device '%@' bundle identifier list", buf, 0x16u);
        }

        v20 = [v10 bundleIdentifiers];
        [v20 addObject:v22];

        goto LABEL_22;
      }
    }

    else
    {
      v19 = qword_100BCE9A0;
    }

    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v28 = v22;
      v29 = 2112;
      v30 = v5;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Bundle identifier '%@' already part of the device '%@' bundle identifier list", buf, 0x16u);
    }
  }

  else
  {
LABEL_9:

    v15 = qword_100BCE9A0;
    if (os_log_type_enabled(qword_100BCE9A0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v28 = v5;
      v29 = 2112;
      v30 = v22;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Device '%@' is not present in the authorization queue, creating device object and adding it to the queue for the bundleIdentifier '%@'", buf, 0x16u);
    }

    v6 = [[DeviceObject alloc] initWithDevice:v5 andBundleIdentifier:v22];
    [*(v21 + 48) addObject:v6];
  }

LABEL_22:

  if (!*(v21 + 32))
  {
    sub_1006D48B8(v21);
  }
}

void sub_1006D39B0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 40);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1006D3A48;
  v6[3] = &unk_100AE1200;
  v7 = v3;
  v8 = a1;
  v5 = v3;
  dispatch_async(v4, v6);
}

void sub_1006D3A48(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = qword_100BCE9A0;
  v4 = os_log_type_enabled(qword_100BCE9A0, OS_LOG_TYPE_DEFAULT);
  if (v4)
  {
    v5 = *(a1 + 32);
    *buf = 138412290;
    v34 = v5;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Received 'deviceSubscribedForANCSNotification' listener for device '%@'", buf, 0xCu);
  }

  if (sub_1006D3E6C(v4, *(a1 + 32)))
  {
    if (qword_100B508D0 != -1)
    {
      sub_100862F98();
    }

    v6 = off_100B508C8;
    v7 = *(a1 + 32);
    sub_100007E30(__p, "RequiresANCSAuth");
    v8 = sub_10004EB40(v6, v7, __p);
    if (v32 < 0)
    {
      operator delete(__p[0]);
    }

    v9 = qword_100BCE9A0;
    v10 = os_log_type_enabled(qword_100BCE9A0, OS_LOG_TYPE_DEFAULT);
    if (v8)
    {
      if (v10)
      {
        v11 = *(a1 + 32);
        *buf = 138412290;
        v34 = v11;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Device '%@' already has the tag 'RequiresANCSAuth'", buf, 0xCu);
      }
    }

    else
    {
      if (v10)
      {
        v12 = *(a1 + 32);
        *buf = 138412290;
        v34 = v12;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Device '%@' does not have the tag 'RequiresANCSAuth'. Setting the tag.", buf, 0xCu);
      }

      if (qword_100B508D0 != -1)
      {
        sub_100862F98();
      }

      v13 = off_100B508C8;
      v14 = *(a1 + 32);
      sub_100007E30(v29, "RequiresANCSAuth");
      sub_10078787C(v13, v14, v29);
      if (v30 < 0)
      {
        operator delete(v29[0]);
      }
    }

    if (qword_100B512F8 != -1)
    {
      sub_100862FE8();
    }

    sub_1003ADE54(off_100B512F0, *(a1 + 32));
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v15 = v26 = 0u;
    v16 = [v15 countByEnumeratingWithState:&v25 objects:v37 count:16];
    if (v16)
    {
      v17 = *v26;
LABEL_21:
      v18 = 0;
      while (1)
      {
        if (*v26 != v17)
        {
          objc_enumerationMutation(v15);
        }

        v19 = *(*(&v25 + 1) + 8 * v18);
        if (([v19 isEqualToString:{@"com.apple.BTLEServer", v25}] & 1) == 0)
        {
          break;
        }

        if (v16 == ++v18)
        {
          v16 = [v15 countByEnumeratingWithState:&v25 objects:v37 count:16];
          if (v16)
          {
            goto LABEL_21;
          }

          goto LABEL_27;
        }
      }

      v20 = v19;

      if (!v20)
      {
        goto LABEL_32;
      }

      v21 = qword_100BCE9A0;
      if (os_log_type_enabled(qword_100BCE9A0, OS_LOG_TYPE_DEFAULT))
      {
        v22 = *(a1 + 32);
        *buf = 138412546;
        v34 = v20;
        v35 = 2112;
        v36 = v22;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "%@ is interetsed in device %@", buf, 0x16u);
      }

      sub_1006D406C(v2, v20);
      sub_1006D35C0(v2, *(a1 + 32), v20);
    }

    else
    {
LABEL_27:

LABEL_32:
      v23 = qword_100BCE9A0;
      if (os_log_type_enabled(qword_100BCE9A0, OS_LOG_TYPE_DEFAULT))
      {
        v24 = *(a1 + 32);
        *buf = 138412290;
        v34 = v24;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "No session interetsed in device %@", buf, 0xCu);
      }

      v20 = 0;
      sub_1006D35C0(v2, *(a1 + 32), 0);
    }
  }
}

void sub_1006D3E10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1006D3E6C(uint64_t a1, void *a2)
{
  v2 = a2;
  if (qword_100B508D0 != -1)
  {
    sub_100863010();
  }

  v3 = off_100B508C8;
  sub_100007E30(v18, "ANCSAuthorized");
  if (sub_10004EB40(v3, v2, v18))
  {
    v4 = 1;
  }

  else
  {
    if (qword_100B508D0 != -1)
    {
      sub_100862F98();
    }

    v5 = off_100B508C8;
    sub_100007E30(__p, "ANCSUnauthorized");
    v4 = sub_10004EB40(v5, v2, __p);
    if (v17 < 0)
    {
      operator delete(__p[0]);
    }
  }

  if ((v19 & 0x80000000) == 0)
  {
    if (v4)
    {
      goto LABEL_21;
    }

LABEL_13:
    if (qword_100B508D0 != -1)
    {
      sub_100862F98();
    }

    v6 = off_100B508C8;
    sub_100007E30(v14, "IsHearingAid");
    v7 = sub_10004EB40(v6, v2, v14);
    v8 = v7;
    if (v15 < 0)
    {
      operator delete(v14[0]);
      if (v8)
      {
        goto LABEL_17;
      }
    }

    else if (v7)
    {
LABEL_17:
      if (qword_100B508D0 != -1)
      {
        sub_100862F98();
      }

      v9 = off_100B508C8;
      sub_100007E30(v12, "ANCSAuthorized");
      sub_10078787C(v9, v2, v12);
      if (v13 < 0)
      {
        operator delete(v12[0]);
      }

      goto LABEL_21;
    }

    v10 = 1;
    goto LABEL_24;
  }

  operator delete(v18[0]);
  if ((v4 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_21:
  v10 = 0;
LABEL_24:

  return v10;
}

void sub_1006D4004(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1006D406C(uint64_t a1, void *a2)
{
  v8 = a2;
  v3 = [*(a1 + 56) objectForKey:?];

  if (v3)
  {
    v4 = [*(a1 + 56) valueForKey:v8];
    v5 = [v4 intValue];

    v6 = *(a1 + 56);
    v7 = [NSNumber numberWithInt:v5 + 1];
    [v6 setValue:v7 forKey:v8];
  }

  else
  {
    v7 = [NSNumber numberWithInt:1];
    [*(a1 + 56) setValue:v7 forKey:v8];
  }
}

void sub_1006D4180(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 40);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1006D4248;
  block[3] = &unk_100AE25C8;
  v12 = v5;
  v13 = a1;
  v11 = v6;
  v8 = v5;
  v9 = v6;
  dispatch_async(v7, block);
}

void sub_1006D4248(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = qword_100BCE9A0;
  v4 = os_log_type_enabled(qword_100BCE9A0, OS_LOG_TYPE_DEFAULT);
  if (v4)
  {
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    *buf = 138412546;
    v21 = v5;
    v22 = 2112;
    v23 = v6;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Received 'appRequestedANCSAuthorizationForDevice' listener for device '%@' and bundleIdentifier '%@'", buf, 0x16u);
  }

  if (sub_1006D3E6C(v4, *(a1 + 32)))
  {
    sub_1006D406C(v2, *(a1 + 40));
    if (qword_100B508D0 != -1)
    {
      sub_100862F98();
    }

    v7 = off_100B508C8;
    v8 = *(a1 + 32);
    sub_100007E30(__p, "RequiresANCSAuth");
    v9 = sub_10004EB40(v7, v8, __p);
    if (v19 < 0)
    {
      operator delete(__p[0]);
    }

    v10 = qword_100BCE9A0;
    v11 = os_log_type_enabled(qword_100BCE9A0, OS_LOG_TYPE_DEFAULT);
    if (v9)
    {
      if (v11)
      {
        v12 = *(a1 + 32);
        *buf = 138412290;
        v21 = v12;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Device '%@' already has the tag 'RequiresANCSAuth'", buf, 0xCu);
      }
    }

    else
    {
      if (v11)
      {
        v13 = *(a1 + 32);
        *buf = 138412290;
        v21 = v13;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Device '%@' does not have the tag 'RequiresANCSAuth'. Setting the tag.", buf, 0xCu);
      }

      if (qword_100B508D0 != -1)
      {
        sub_100862F98();
      }

      v14 = off_100B508C8;
      v15 = *(a1 + 32);
      sub_100007E30(v16, "RequiresANCSAuth");
      sub_10078787C(v14, v15, v16);
      if (v17 < 0)
      {
        operator delete(v16[0]);
      }
    }

    sub_1006D35C0(v2, *(a1 + 32), *(a1 + 40));
  }
}

void sub_1006D4470(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(a9);
  }

  _Unwind_Resume(exception_object);
}

void sub_1006D44B4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 40);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1006D457C;
  block[3] = &unk_100AE25C8;
  v12 = v5;
  v13 = a1;
  v11 = v6;
  v8 = v5;
  v9 = v6;
  dispatch_async(v7, block);
}

void sub_1006D457C(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = qword_100BCE9A0;
  if (os_log_type_enabled(qword_100BCE9A0, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    v12 = 138412546;
    v13 = v4;
    v14 = 2112;
    v15 = v5;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Received 'appSessionChangedInterestInDevice' listener for device '%@' and bundleIdentifier '%@'", &v12, 0x16u);
  }

  v6 = sub_1006D4708(v2, *(a1 + 32));
  v7 = qword_100BCE9A0;
  v8 = os_log_type_enabled(qword_100BCE9A0, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    if (v8)
    {
      v9 = *(a1 + 32);
      v10 = *(a1 + 40);
      v12 = 138412546;
      v13 = v9;
      v14 = 2112;
      v15 = v10;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Device '%@ is present in authorization queue. Adding '%@' to the bundleIdentifier list for this device.", &v12, 0x16u);
    }

    sub_1006D406C(v2, *(a1 + 40));
    sub_1006D35C0(v2, *(a1 + 32), *(a1 + 40));
  }

  else if (v8)
  {
    v11 = *(a1 + 32);
    v12 = 138412290;
    v13 = v11;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Device '%@ is not present in authorization queue. Ignore appSessionChangedInterestInDevice listener", &v12, 0xCu);
  }
}

uint64_t sub_1006D4708(uint64_t a1, void *a2)
{
  v3 = a2;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = *(a1 + 48);
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = *v14;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = [*(*(&v13 + 1) + 8 * i) device];
        v9 = [v8 UUIDString];
        v10 = [v3 UUIDString];
        v11 = [v9 isEqualToString:v10];

        if (v11)
        {
          v5 = 1;
          goto LABEL_11;
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v5;
}

void sub_1006D48B8(uint64_t a1)
{
  v2 = qword_100BCE9A0;
  if (os_log_type_enabled(qword_100BCE9A0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Registering FrontBoard services", buf, 2u);
  }

  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1006D4990;
  v5[3] = &unk_100AF0538;
  v5[4] = a1;
  v3 = [[FBSDisplayLayoutMonitor alloc] initWithDisplayType:0 handler:v5];
  v4 = *(a1 + 32);
  *(a1 + 32) = v3;
}

void sub_1006D4998(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 40);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1006D4A30;
  v6[3] = &unk_100AE1200;
  v7 = v3;
  v8 = a1;
  v5 = v3;
  dispatch_async(v4, v6);
}

void sub_1006D4A30(uint64_t a1)
{
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v1 = *(a1 + 40);
  obj = [*(a1 + 32) elements];
  v2 = [obj countByEnumeratingWithState:&v25 objects:v33 count:16];
  if (v2)
  {
    v3 = *v26;
LABEL_3:
    v4 = 0;
    while (1)
    {
      if (*v26 != v3)
      {
        objc_enumerationMutation(obj);
      }

      v5 = *(*(&v25 + 1) + 8 * v4);
      v6 = [v5 bundleIdentifier];
      v7 = *(v1 + 80);
      *(v1 + 80) = v6;

      v8 = [v5 identifier];
      if ([v8 isEqualToString:@"com.apple.springboard.home-screen"])
      {
        break;
      }

      v9 = [v5 bundleIdentifier];
      v10 = [v9 isEqualToString:@"com.apple.Preferences"];

      if (v10)
      {
        goto LABEL_13;
      }

      v11 = *(v1 + 56);
      v12 = [v5 bundleIdentifier];
      v13 = [v11 objectForKey:v12];
      LOBYTE(v11) = v13 == 0;

      if ((v11 & 1) == 0)
      {
        v17 = [v5 bundleIdentifier];
        v15 = sub_1006D4E38(v1, v17);

        if (v15)
        {
          if (qword_100B508C0 != -1)
          {
            sub_100862FC0();
          }

          v18 = sub_10004EE74(off_100B508B8, v15);
          v19 = qword_100BCE9A0;
          v20 = os_log_type_enabled(qword_100BCE9A0, OS_LOG_TYPE_DEFAULT);
          if (v18)
          {
            if (v20)
            {
              v21 = [v5 bundleIdentifier];
              *buf = 138412290;
              v30 = v21;
              _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "User is in %@", buf, 0xCu);
            }

            v22 = [v5 bundleIdentifier];
            sub_1006D2DB4(v1, v15, v22);

            *(v1 + 72) = 256;
          }

          else if (v20)
          {
            v23 = [v5 bundleIdentifier];
            *buf = 138412546;
            v30 = v23;
            v31 = 2112;
            v32 = v15;
            _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "User is in %@ but the device '%@' is not paired yet. Not showing authorization alert", buf, 0x16u);
          }
        }

        goto LABEL_26;
      }

      *(v1 + 72) = 0;
      if (v2 == ++v4)
      {
        v2 = [obj countByEnumeratingWithState:&v25 objects:v33 count:16];
        if (v2)
        {
          goto LABEL_3;
        }

        goto LABEL_27;
      }
    }

LABEL_13:
    v14 = qword_100BCE9A0;
    if (os_log_type_enabled(qword_100BCE9A0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "User is in SpringBoard or Settings App.", buf, 2u);
    }

    if ([*(v1 + 48) count])
    {
      *(v1 + 72) = 1;
      v15 = [*(v1 + 48) objectAtIndexedSubscript:0];
      v16 = [v15 device];
      sub_1006D2DB4(v1, v16, 0);

LABEL_26:
    }
  }

LABEL_27:
}

id sub_1006D4E38(uint64_t a1, void *a2)
{
  v3 = a2;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v4 = *(a1 + 48);
  v5 = [v4 countByEnumeratingWithState:&v19 objects:v24 count:16];
  if (v5)
  {
    v6 = *v20;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v20 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v19 + 1) + 8 * i);
        v15 = 0u;
        v16 = 0u;
        v17 = 0u;
        v18 = 0u;
        v9 = [v8 bundleIdentifiers];
        v10 = [v9 countByEnumeratingWithState:&v15 objects:v23 count:16];
        if (v10)
        {
          v11 = *v16;
          while (2)
          {
            for (j = 0; j != v10; j = j + 1)
            {
              if (*v16 != v11)
              {
                objc_enumerationMutation(v9);
              }

              if ([*(*(&v15 + 1) + 8 * j) isEqualToString:v3])
              {
                v13 = [v8 device];

                goto LABEL_19;
              }
            }

            v10 = [v9 countByEnumeratingWithState:&v15 objects:v23 count:16];
            if (v10)
            {
              continue;
            }

            break;
          }
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v19 objects:v24 count:16];
      v13 = 0;
    }

    while (v5);
  }

  else
  {
    v13 = 0;
  }

LABEL_19:

  return v13;
}

void sub_1006D5050(void *a1)
{
  v2 = a1[6];
  v3 = qword_100BCE9A0;
  if (os_log_type_enabled(qword_100BCE9A0, OS_LOG_TYPE_DEFAULT))
  {
    v4 = a1[4];
    v5 = a1[5];
    *buf = 138412546;
    *&buf[4] = v4;
    *&buf[12] = 2112;
    *&buf[14] = v5;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "In showAuthorizationAlert %@ and bundle identifier '%@'", buf, 0x16u);
  }

  if (!*(v2 + 64))
  {
    v6 = qword_100BCE9A0;
    if (os_log_type_enabled(qword_100BCE9A0, OS_LOG_TYPE_DEFAULT))
    {
      v7 = a1[4];
      v8 = a1[5];
      *buf = 138412546;
      *&buf[4] = v7;
      *&buf[12] = 2112;
      *&buf[14] = v8;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Display ANCS Authorization alert for %@ and bundle identifier '%@'", buf, 0x16u);
    }

    v9 = [[UserNotification alloc] initWithType:5 device:a1[4] bundleID:a1[5]];
    v10 = *(v2 + 64);
    *(v2 + 64) = v9;

    memset(buf, 0, sizeof(buf));
    if (qword_100B508D0 != -1)
    {
      sub_100862F98();
    }

    v11 = off_100B508C8;
    v12 = [*(v2 + 64) device];
    sub_10004FFDC(v11, v12, __p);
    if ((v44 & 0x80u) == 0)
    {
      v13 = v44;
    }

    else
    {
      v13 = __p[1];
    }

    if (v13)
    {
      if (qword_100B508D0 != -1)
      {
        sub_100862F98();
      }

      v14 = off_100B508C8;
      v15 = [*(v2 + 64) device];
      sub_10004FFDC(v14, v15, buf);
    }

    else
    {
      if (qword_100B508D0 != -1)
      {
        sub_100862F98();
      }

      v16 = off_100B508C8;
      v15 = [*(v2 + 64) device];
      sub_100046458(v16, v15, 0);
      v17 = sub_100063D0C();
      v18 = v17;
      sub_100007E30(buf, [v17 UTF8String]);
    }

    if (v44 < 0)
    {
      operator delete(__p[0]);
    }

    v19 = sub_10000C798();
    if ((*(*v19 + 392))(v19))
    {
      v20 = @"IPAD";
    }

    else
    {
      v20 = @"IPHONE";
    }

    if ((buf[23] & 0x80u) == 0)
    {
      v21 = buf;
    }

    else
    {
      v21 = *buf;
    }

    v22 = [NSString stringWithUTF8String:v21];
    v23 = [@"ANCS_TITLE_" stringByAppendingString:v20];
    v40 = [@"ANCS_AUTHORIZATION_MESSAGE_" stringByAppendingString:v20];
    v24 = sub_100438B14(v23, v23);
    v42 = 0;
    v25 = [NSString stringWithValidatedFormat:v24 validFormatSpecifiers:@"%@" error:&v42, v22];
    v26 = v42;

    if (v25)
    {
      v27 = sub_100438B14(v40, v40);
      v41 = v26;
      v28 = [NSString stringWithValidatedFormat:v27 validFormatSpecifiers:@"%@" error:&v41, v22];
      v39 = v41;

      if (v28)
      {
        v38 = sub_100438B14(@"AUTHORIZE", @"Allow");
        v29 = sub_100438B14(@"UNAUTHORIZE", @"Don't Allow");
        v30 = v38;
        v31 = v29;
        v45[0] = kCFUserNotificationAlertTopMostKey;
        v45[1] = SBUserNotificationAllowMenuButtonDismissal;
        v46[0] = &__kCFBooleanTrue;
        v46[1] = &__kCFBooleanTrue;
        v45[2] = SBUserNotificationDismissOnLock;
        v45[3] = SBUserNotificationPendWhileKeyBagLockedKey;
        v46[2] = &__kCFBooleanTrue;
        v46[3] = &__kCFBooleanTrue;
        v45[4] = kCFUserNotificationAlertHeaderKey;
        v46[4] = v25;
        v32 = [NSDictionary dictionaryWithObjects:v46 forKeys:v45 count:5];
        v33 = [v32 mutableCopy];

        [v33 setObject:v28 forKey:kCFUserNotificationAlertMessageKey];
        [v33 setObject:v30 forKey:kCFUserNotificationDefaultButtonTitleKey];
        if (v31)
        {
          [v33 setObject:v31 forKey:kCFUserNotificationAlternateButtonTitleKey];
        }

        v34 = CFUserNotificationCreate(kCFAllocatorDefault, 0.0, 0x10003uLL, 0, v33);
        [*(v2 + 64) setNotification:v34];
        CFRelease(v34);
        RunLoopSource = CFUserNotificationCreateRunLoopSource(kCFAllocatorDefault, v34, sub_1006D5744, 0);
        [*(v2 + 64) setRunLoopSource:RunLoopSource];
        CFRelease(RunLoopSource);
      }

      else
      {
        v37 = qword_100BCE9A0;
        if (os_log_type_enabled(qword_100BCE9A0, OS_LOG_TYPE_ERROR))
        {
          sub_100863024(v39, v37);
        }
      }

      v26 = v39;
    }

    else
    {
      v36 = qword_100BCE9A0;
      if (os_log_type_enabled(qword_100BCE9A0, OS_LOG_TYPE_ERROR))
      {
        sub_100863024(v26, v36);
      }
    }

    if (buf[23] < 0)
    {
      operator delete(*buf);
    }
  }
}

void sub_1006D562C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1006D5744(uint64_t a1, uint64_t a2)
{
  if (qword_100B54CA0 != -1)
  {
    sub_10086309C();
  }

  v3 = *(off_100B54C98 + 5);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1006D57E0;
  v4[3] = &unk_100AE0860;
  v4[4] = off_100B54C98;
  v4[5] = a2;
  dispatch_async(v3, v4);
}

void sub_1006D57E0(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = qword_100BCE9A0;
  if (os_log_type_enabled(qword_100BCE9A0, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [*(v2 + 64) device];
    v5 = v4;
    v6 = *(a1 + 40);
    v7 = "unknown";
    if (v6 == 1)
    {
      v7 = "unauthorize";
    }

    *buf = 138412802;
    v31 = v4;
    if (!v6)
    {
      v7 = "authorize";
    }

    v32 = 2082;
    v33 = v7;
    v34 = 2048;
    v35 = v6;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "User responded to authorization notification for device %@ with %{public}s (%ld) button", buf, 0x20u);
  }

  v8 = *(a1 + 40);
  if (v8 == 1)
  {
    if (qword_100B508D0 != -1)
    {
      sub_100862F98();
    }

    v15 = off_100B508C8;
    v16 = [*(v2 + 64) device];
    sub_10078380C(v15, v16, @"RequiresANCSAuth");

    if (qword_100B508D0 != -1)
    {
      sub_100862F98();
    }

    v17 = off_100B508C8;
    v18 = [*(v2 + 64) device];
    sub_100007E30(v26, "ANCSUnauthorized");
    sub_10078787C(v17, v18, v26);
    if (v27 < 0)
    {
      operator delete(v26[0]);
    }

    v19 = [*(v2 + 64) device];
    sub_1006D2FD8(v2, v19);

    v14 = 1;
  }

  else if (v8)
  {
    v20 = qword_100BCE9A0;
    if (os_log_type_enabled(qword_100BCE9A0, OS_LOG_TYPE_ERROR))
    {
      sub_1008630B0(v20);
    }

    v14 = 0xFFFF;
  }

  else
  {
    if (qword_100B508D0 != -1)
    {
      sub_100862F98();
    }

    v9 = off_100B508C8;
    v10 = [*(v2 + 64) device];
    sub_10078380C(v9, v10, @"RequiresANCSAuth");

    if (qword_100B508D0 != -1)
    {
      sub_100862F98();
    }

    v11 = off_100B508C8;
    v12 = [*(v2 + 64) device];
    sub_100007E30(__p, "ANCSAuthorized");
    sub_10078787C(v11, v12, __p);
    if (v29 < 0)
    {
      operator delete(__p[0]);
    }

    v13 = [*(v2 + 64) device];
    sub_1006D2FD8(v2, v13);

    v14 = 0;
  }

  v21 = [*(v2 + 64) bundleID];
  v22 = [*(v2 + 64) device];
  sub_1006D5BFC(v2, v22, 0, 0xFFFF, v14);

  v23 = *(v2 + 64);
  *(v2 + 64) = 0;

  if ([*(v2 + 48) count])
  {
    if (*(v2 + 73) == 1)
    {
      v24 = sub_1006D4E38(v2, v21);
      if (v24)
      {
        sub_1006D2DB4(v2, v24, v21);
      }

      goto LABEL_32;
    }

    if (*(v2 + 72) == 1)
    {
      v24 = [*(v2 + 48) objectAtIndexedSubscript:0];
      v25 = [v24 device];
      sub_1006D2DB4(v2, v25, 0);

LABEL_32:
    }
  }
}

void sub_1006D5BFC(uint64_t a1, void *a2, int a3, int a4, int a5)
{
  v9 = a2;
  v10 = *(a1 + 40);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1006D5CB8;
  v12[3] = &unk_100B047E0;
  v13 = v9;
  v14 = a1;
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v11 = v9;
  dispatch_async(v10, v12);
}

void sub_1006D5CB8(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (qword_100B508D0 != -1)
  {
    sub_100863010();
  }

  v17 = 0;
  v18 = 0;
  v19 = 0;
  sub_10004FFDC(off_100B508C8, *(a1 + 32), &v17);
  if (SHIBYTE(v19) < 0)
  {
    if (v18)
    {
      v3 = v17;
      goto LABEL_8;
    }

LABEL_10:
    v7 = 0;
    goto LABEL_13;
  }

  if (!HIBYTE(v19))
  {
    goto LABEL_10;
  }

  v3 = &v17;
LABEL_8:
  v4 = +[NSString stringWithCString:encoding:](NSString, "stringWithCString:encoding:", v3, +[NSString defaultCStringEncoding]);
  v5 = [qword_100BC7030 objectForKey:v4];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 intValue];
  }

  else
  {
    v7 = 0xFFFF;
  }

LABEL_13:
  if (qword_100B508B0 != -1)
  {
    sub_1008630F4();
  }

  v8 = off_100B508A8;
  v9 = [*(v2 + 64) device];
  sub_10004DFB4(buf, v9);
  sub_100050290(v8, buf);

  v10 = qword_100BCE9A0;
  if (os_log_type_enabled(qword_100BCE9A0, OS_LOG_TYPE_DEFAULT))
  {
    v11 = &v17;
    if (v19 < 0)
    {
      v11 = v17;
    }

    v12 = *(a1 + 48);
    v13 = *(a1 + 52);
    v14 = *(a1 + 56);
    *buf = 136447490;
    *&buf[4] = v11;
    *&buf[12] = 1024;
    *&buf[14] = v12;
    *&buf[18] = 1024;
    *&buf[20] = v13;
    *&buf[24] = 1024;
    *&buf[26] = v14;
    *&buf[30] = 1024;
    LODWORD(v21) = v7;
    WORD2(v21) = 1024;
    *(&v21 + 6) = 0;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Push AWD stats ANCS for %{public}s : triggerLoc: %u, prevPermission: %u, currPermission: %u, deviceCategory = %u, connectedTransport = %u", buf, 0x2Au);
  }

  v21 = 0u;
  v22 = 0u;
  memset(buf, 0, sizeof(buf));
  if (v19 >= 0)
  {
    v15 = &v17;
  }

  else
  {
    v15 = v17;
  }

  sub_100007E30(&__p, v15);
  sub_1003C3DDC(buf, &__p, 1, *(a1 + 48), *(a1 + 52), *(a1 + 56), v7, 0, 0xFFFF);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (qword_100B541F8 != -1)
  {
    sub_10086311C();
  }

  sub_10000EFDC();
  if (buf[31] < 0)
  {
    operator delete(*&buf[8]);
  }

  if (SHIBYTE(v19) < 0)
  {
    operator delete(v17);
  }
}

void sub_1006D5F68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1006D5FE4(uint64_t a1)
{
  v31 = a1;
  v3 = qword_100BCE9A0;
  if (os_log_type_enabled(qword_100BCE9A0, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf) = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "statedump: ---------------- ANCS Authorization Manager ----------------", &buf, 2u);
    v3 = qword_100BCE9A0;
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [*(v31 + 48) count];
    LODWORD(buf) = 134217984;
    *(&buf + 4) = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "statedump: pendingAuthorizationDevicesQueue: %ld devices", &buf, 0xCu);
  }

  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  obj = *(v31 + 48);
  v5 = [obj countByEnumeratingWithState:&v44 objects:v54 count:16];
  if (v5)
  {
    v34 = *v45;
    do
    {
      v35 = v5;
      for (i = 0; i != v35; i = i + 1)
      {
        if (*v45 != v34)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v44 + 1) + 8 * i);
        v8 = qword_100BCE9A0;
        if (os_log_type_enabled(qword_100BCE9A0, OS_LOG_TYPE_DEFAULT))
        {
          if (qword_100B508D0 != -1)
          {
            sub_100862F98();
          }

          v9 = off_100B508C8;
          v10 = [v7 device];
          sub_10004FFDC(v9, v10, &buf);
          if ((v49 & 0x80u) == 0)
          {
            v11 = v49;
          }

          else
          {
            v11 = *(&buf + 1);
          }

          if (v11)
          {
            if (qword_100B508D0 != -1)
            {
              sub_100862F98();
            }

            v12 = off_100B508C8;
            v1 = [v7 device];
            sub_10004FFDC(v12, v1, __p);
            if (v43 >= 0)
            {
              v13 = __p;
            }

            else
            {
              v13 = __p[0];
            }
          }

          else
          {
            if (qword_100B508D0 != -1)
            {
              sub_100862F98();
            }

            v14 = off_100B508C8;
            v32 = [v7 device];
            sub_100046458(v14, v32, 0);
            v2 = sub_100063D0C();
            v13 = [v2 UTF8String];
          }

          v15 = [v7 device];
          *v50 = 136315394;
          v51 = v13;
          v52 = 2112;
          v53 = v15;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "statedump: Device: %s (%@)", v50, 0x16u);

          if (v11)
          {
            if (v43 < 0)
            {
              operator delete(__p[0]);
            }
          }

          else
          {
          }

          if (v49 < 0)
          {
            operator delete(buf);
          }

          v8 = qword_100BCE9A0;
        }

        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          v16 = [v7 bundleIdentifiers];
          LODWORD(buf) = 138412290;
          *(&buf + 4) = v16;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "statedump:    BundleIdentifiers: %@", &buf, 0xCu);

          v8 = qword_100BCE9A0;
        }

        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          if (qword_100B508D0 != -1)
          {
            sub_100862F98();
          }

          v17 = off_100B508C8;
          v18 = [v7 device];
          sub_100007E30(v40, "RequiresANCSAuth");
          v19 = sub_10004EB40(v17, v18, v40);
          v20 = "No";
          if (v19)
          {
            v20 = "Yes";
          }

          LODWORD(buf) = 136315138;
          *(&buf + 4) = v20;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "statedump:    RequiresANCSAuth: %s", &buf, 0xCu);
          if (v41 < 0)
          {
            operator delete(v40[0]);
          }

          v8 = qword_100BCE9A0;
        }

        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          if (qword_100B508D0 != -1)
          {
            sub_100862F98();
          }

          v21 = off_100B508C8;
          v22 = [v7 device];
          sub_100007E30(v38, "ANCSAuthorized");
          v23 = sub_10004EB40(v21, v22, v38);
          v24 = "No";
          if (v23)
          {
            v24 = "Yes";
          }

          LODWORD(buf) = 136315138;
          *(&buf + 4) = v24;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "statedump:    ANCSAuthorized: %s", &buf, 0xCu);
          if (v39 < 0)
          {
            operator delete(v38[0]);
          }

          v8 = qword_100BCE9A0;
        }

        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          if (qword_100B508D0 != -1)
          {
            sub_100862F98();
          }

          v25 = off_100B508C8;
          v26 = [v7 device];
          sub_100007E30(v36, "ANCSUnauthorized");
          v27 = sub_10004EB40(v25, v26, v36);
          v28 = "No";
          if (v27)
          {
            v28 = "Yes";
          }

          LODWORD(buf) = 136315138;
          *(&buf + 4) = v28;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "statedump:    ANCSUnauthorized: %s", &buf, 0xCu);
          if (v37 < 0)
          {
            operator delete(v36[0]);
          }
        }
      }

      v5 = [obj countByEnumeratingWithState:&v44 objects:v54 count:16];
    }

    while (v5);
  }

  v29 = qword_100BCE9A0;
  if (os_log_type_enabled(qword_100BCE9A0, OS_LOG_TYPE_DEFAULT))
  {
    v30 = *(v31 + 56);
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v30;
    _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "statedump:    appBundleIndentifiers: %@", &buf, 0xCu);
  }
}

void sub_1006D67C8(id *a1)
{
  sub_1006D6AC0(a1);

  operator delete();
}

void sub_1006D6828(uint64_t a1, uint64_t a2)
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
    sub_1006D68B4((a1 + 8), v4, &v6);
    sub_1000C8CF0((a1 + 8));
  }

  os_unfair_lock_unlock(a1);
}

char *sub_1006D68B4(void *a1, char *__src, char *a3)
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