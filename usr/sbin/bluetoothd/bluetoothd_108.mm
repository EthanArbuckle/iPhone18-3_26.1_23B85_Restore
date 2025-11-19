void sub_1007D6B44(id *a1, void *a2)
{
  v3 = a2;
  v4 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "PurpleLocation::simulateLocationUpdate: country = %@", &v5, 0xCu);
  }

  sub_1007D5BA0(a1, v3);
}

void sub_1007D6C20(uint64_t a1, void *a2, char a3, char a4, char a5, char a6, char a7)
{
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1007D7280;
  v14[3] = &unk_100B0DD88;
  v15 = a2;
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v20 = a7;
  v13 = v15;
  sub_1007D71B4(a1 + 56, v14);
}

uint64_t sub_1007D6D04(uint64_t a1, uint64_t a2, int a3)
{
  v5 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 88);
    v12 = 138543362;
    v13 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Gaze: Current country code: %{public}@", &v12, 0xCu);
  }

  if (([*(a1 + 88) isEqualToString:@"CA"] & 1) != 0 || (objc_msgSend(*(a1 + 88), "isEqualToString:", @"US") & 1) != 0 || a3)
  {
    v7 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v12) = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Setting Gaze State to controller: On head", &v12, 2u);
    }

    v8 = 1;
  }

  else
  {
    v11 = qword_100BCE8D8;
    v8 = 0;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v12) = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Setting Gaze State to controller: On body", &v12, 2u);
      v8 = 0;
    }
  }

  v9 = sub_10000C7D0();
  return (*(*v9 + 72))(v9, 1, v8);
}

void sub_1007D6EB8(uint64_t a1, uint64_t a2)
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
    sub_1007D77DC((a1 + 8), v4, &v6);
    sub_1000C8CF0((a1 + 8));
  }

  os_unfair_lock_unlock(a1);
}

void sub_1007D6F54(uint64_t a1, uint64_t a2)
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
    sub_1007D79B0((a1 + 8), v4, &v6);
    sub_1000C8CF0((a1 + 8));
  }

  os_unfair_lock_unlock(a1);
}

void sub_1007D6FE0(uint64_t a1, void *a2, char a3, char a4, char a5)
{
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1007D7178;
  v10[3] = &unk_100B0DD60;
  v11 = a2;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v9 = v11;
  sub_1007D70AC(a1 + 24, v10);
}

void sub_1007D70AC(uint64_t a1, void *a2)
{
  v3 = a2;
  os_unfair_lock_lock(a1);
  v5 = 0;
  v6 = 0;
  v7 = 0;
  sub_100007F20(&v5, (a1 + 8));
  os_unfair_lock_unlock(a1);
  v4 = v5;
  if (v5 != v6)
  {
    do
    {
      v3[2](v3, *v4++);
    }

    while (v4 != v6);
    v4 = v5;
  }

  if (v4)
  {
    v6 = v4;
    operator delete(v4);
  }
}

void sub_1007D71B4(uint64_t a1, void *a2)
{
  v3 = a2;
  os_unfair_lock_lock(a1);
  v5 = 0;
  v6 = 0;
  v7 = 0;
  sub_100007F20(&v5, (a1 + 8));
  os_unfair_lock_unlock(a1);
  v4 = v5;
  if (v5 != v6)
  {
    do
    {
      v3[2](v3, *v4++);
    }

    while (v4 != v6);
    v4 = v5;
  }

  if (v4)
  {
    v6 = v4;
    operator delete(v4);
  }
}

void sub_1007D72C4(uint64_t a1)
{
  (*(*a1 + 24))(a1);

  sub_1007D6238();
}

void sub_1007D730C(uint64_t a1)
{
  (*(*(a1 - 8) + 24))();

  sub_1007D6238();
}

void sub_1007D736C(uint64_t a1, uint64_t a2)
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
    sub_1007D7438((a1 + 8), v6, &v7);
    sub_1000C8CF0((a1 + 8));
  }

  os_unfair_lock_unlock(a1);
}

char *sub_1007D7438(void *a1, char *__src, char *a3)
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

void sub_1007D75D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1007D760C(id a1)
{
  v1 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "Received RegulatoryDomain country code update notification", v3, 2u);
  }

  v2 = sub_1004327A0();
  (*(*v2 + 24))(v2);
}

void sub_1007D769C(uint64_t a1, uint64_t a2)
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
        goto LABEL_10;
      }
    }
  }

  if (v5 != v4)
  {
    v6 = v4 - (v5 + 8);
    if (v4 != v5 + 8)
    {
      memmove(v5, v5 + 8, v4 - (v5 + 8));
    }

    *(a1 + 16) = &v5[v6];
    sub_1000C8CF0((a1 + 8));
    if (*(a1 + 8) == *(a1 + 16))
    {
      (*(**(a1 + 32) + 8))(*(a1 + 32), a1);
    }
  }

LABEL_10:

  os_unfair_lock_unlock(a1);
}

char *sub_1007D77DC(void *a1, char *__src, char *a3)
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

void sub_1007D7978(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

char *sub_1007D79B0(void *a1, char *__src, char *a3)
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

void sub_1007D7B4C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1007D7C18(uint64_t a1)
{
  sub_1003FCA4C(a1 + 256);

  return sub_10032F580(a1);
}

uint64_t sub_1007D7C54(uint64_t a1)
{
  v1 = a1 - 256;
  sub_1003FCA4C(a1);

  return sub_10032F580(v1);
}

void sub_1007D7C8C(uint64_t a1)
{
  sub_1003FCA4C(a1 + 256);
  sub_10032F580(a1);

  operator delete();
}

uint64_t sub_1007D7CE4(uint64_t a1)
{
  v7 = 0u;
  v8 = 0u;
  v5 = 0u;
  v6 = 0u;
  *(a1 + 504) = 3;
  v4 = 0;
  sub_1000216B4(&v4);
  if (sub_1002EF24C(sub_1007D7E94, off_100B0DF80, 0x3EFu, 0x3B01u, (a1 + 504), &unk_100B0DFA8))
  {
    if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
    {
      sub_100879F3C();
    }

LABEL_10:
    v2 = 1;
    goto LABEL_11;
  }

  *&v7 = &unk_100B0DFD8;
  WORD4(v7) = 3;
  *&v8 = &unk_100B0DF50;
  WORD4(v8) = 1;
  *&v5 = &unk_100B0E020;
  WORD4(v5) = 3;
  *&v6 = &unk_100B0DF68;
  WORD4(v6) = 1;
  byte_100BC7D78 = 1;
  word_100BC7D7A = 1;
  dword_100BC7D80 = *(a1 + 504);
  if (sub_1002F7E1C(&v7, (a1 + 496)))
  {
    if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
    {
      sub_100879FAC();
    }

    goto LABEL_10;
  }

  v2 = sub_1002F7E1C(&v5, (a1 + 500));
  if (v2)
  {
    if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
    {
      sub_10087A01C();
    }

    goto LABEL_10;
  }

LABEL_11:
  sub_10002249C(&v4);
  return v2;
}

void sub_1007D7E94(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  if (qword_100B54ED0 != -1)
  {
    sub_10087A08C();
  }

  v6 = off_100B54EC8;

  sub_1007D843C(v6, a1, a4);
}

uint64_t sub_1007D7EF0(uint64_t a1)
{
  v4 = 0;
  sub_1000216B4(&v4);
  sub_1002F8018(*(a1 + 496));
  sub_1002F8018(*(a1 + 500));
  if (sub_1002EF558(*(a1 + 504)) == 101)
  {
    if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
    {
      sub_100865CCC();
    }

    v2 = 1;
  }

  else
  {
    v2 = 0;
  }

  sub_10002249C(&v4);
  return v2;
}

uint64_t sub_1007D7FBC(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    v21 = unk_100B0E078;
    v22 = unk_100B0E068;
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v4 = sub_10053BFB4(a2, &v21, 4u, &v18);
    if ((v4 & 1) != 0 || sub_10053BFB4(a2, &v22, 4u, &v18))
    {
      v6 = v18;
      v5 = v19;
      if (v18 != v19)
      {
        v7 = v18;
        while (1)
        {
          if (*v7 == 6 && *(v7 + 1) == 2)
          {
            v9 = v7[1];
            v10 = *v9 == 3 && *(v9 + 8) == 3;
            if (v10 && *(v9 + 16) == 1)
            {
              break;
            }
          }

          v7 += 2;
          if (v7 == v19)
          {
            v11 = -1;
            goto LABEL_26;
          }
        }

        v11 = *(v9 + 24);
LABEL_26:
        while (v6 != v5)
        {
          *buf = *v6;
          sub_10037D4F4(buf);
          ++v6;
          v5 = v19;
        }

        if (v11 != -1)
        {
          v14 = qword_100BCE8C8;
          if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_INFO))
          {
            sub_1000E5A58(a2, __p);
            if (v24 >= 0)
            {
              v15 = __p;
            }

            else
            {
              v15 = __p[0];
            }

            v16 = "Old WiAP UUID";
            *buf = 136446722;
            if (v4)
            {
              v16 = "New WiAP UUID";
            }

            *&buf[4] = v15;
            *&buf[12] = 1024;
            *&buf[14] = v11;
            v26 = 2082;
            v27 = v16;
            _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "Initiating outgoing Wireless IAP connection request to device %{public}s on rfcomm channel %d,  %{public}s", buf, 0x1Cu);
            if (v24 < 0)
            {
              operator delete(__p[0]);
            }
          }

          LOBYTE(__p[0]) = 0;
          sub_1000216B4(__p);
          *buf = 0;
          if (sub_1002EF8BC(sub_1007D8344, off_100B0DF80, a2 + 128, v11, 0x3EFu, 0x3B01u, buf, &unk_100B0DFA8))
          {
            if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
            {
              sub_10087A0A0();
            }

            v12 = 305;
          }

          else
          {
            sub_10057E218(a1, a2, *buf);
            v12 = 0;
          }

          sub_10002249C(__p);
          goto LABEL_45;
        }
      }

      if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
      {
        sub_10087A110();
      }
    }

    else
    {
      v13 = qword_100BCE8C8;
      if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
      {
        sub_1000E5A58(a2, buf);
        sub_100865D48(buf, __p, v13);
      }
    }

    v12 = 305;
LABEL_45:
    if (v18)
    {
      v19 = v18;
      operator delete(v18);
    }

    return v12;
  }

  if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
  {
    sub_10087A14C();
  }

  return 1;
}

void sub_1007D8300(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1007D8344(int a1, uint64_t a2, uint64_t a3)
{
  if (qword_100B54ED0 != -1)
  {
    sub_10087A08C();
  }

  v5 = off_100B54EC8;

  sub_1007D8654(v5, a1, a3);
}

uint64_t sub_1007D83A0(void *a1, unint64_t a2)
{
  v2 = sub_10057E30C(a1, a2);
  v5 = 0;
  sub_1000216B4(&v5);
  v3 = sub_1002EFF1C(v2, 1818);
  if (v3)
  {
    if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
    {
      sub_100851590();
    }

    v3 = 1;
  }

  sub_10002249C(&v5);
  return v3;
}

void sub_1007D843C(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (qword_100B508F0 != -1)
  {
    sub_10087A188();
  }

  LODWORD(__p[0]) = *a2;
  WORD2(__p[0]) = *(a2 + 4);
  v6 = sub_1000E6554(off_100B508E8, __p, 1);
  v7 = qword_100BCE8C8;
  if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000E5A58(v6, __p);
    v8 = v16 >= 0 ? __p : __p[0];
    *buf = 136446210;
    v18 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Received incoming connection attempt from device %{public}s", buf, 0xCu);
    if (v16 < 0)
    {
      operator delete(__p[0]);
    }
  }

  v9 = sub_10057DFAC(a1, v6);
  if (v9)
  {
    v10 = sub_1002EFBAC(sub_1007D8344, a3, v9);
    v11 = v9 ^ 1;
    if (v10)
    {
      v11 = 1;
    }

    if ((v11 & 1) == 0)
    {
      sub_10057E218(a1, v6, a3);
      sub_10057D9B0(a1, v6);
    }
  }

  else
  {
    v12 = qword_100BCE8C8;
    if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(__p[0]) = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Denying connection attempt", __p, 2u);
    }

    v10 = sub_1002EFBAC(sub_1007D8344, a3, v9);
  }

  v13 = v10;
  if (v10)
  {
    v14 = qword_100BCE8C8;
    if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
    {
      sub_100865EB8(v9, v13, v14);
    }
  }
}

void sub_1007D8654(void *a1, int a2, uint64_t a3)
{
  v5 = sub_10057E420(a1, a2);
  if (v5)
  {
    v6 = v5;
    if (a3)
    {
      v7 = qword_100BCE8C8;
      if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
      {
        sub_1000E5A58(v6, __p);
        v9 = v11 >= 0 ? __p : __p[0];
        *buf = 136446466;
        v13 = v9;
        v14 = 1024;
        v15 = a3;
        _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Connection to device %{public}s failed - result was %{bluetooth:OI_STATUS}u", buf, 0x12u);
        if (v11 < 0)
        {
          operator delete(__p[0]);
        }
      }

      if (qword_100B50AA0 != -1)
      {
        sub_10087A19C();
      }

      v8 = sub_1000DD584(off_100B50A98, a3, 20000);
      sub_10057DA84(a1, v6, v8);
    }

    sub_10057DA84(a1, v5, 0);
  }

  if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
  {
    sub_10087A27C();
  }
}

void sub_1007D8864(void *a1, int a2, uint64_t a3, int a4)
{
  v7 = sub_10057E420(a1, a2);
  if (v7)
  {

    sub_1003FD79C((a1 + 32), v7, a3, a4, 0);
  }

  else if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
  {
    sub_10087A2B8();
  }
}

void sub_1007D88F8(void *a1, int a2)
{
  v3 = sub_10057E420(a1, a2);
  if (v3)
  {

    sub_1003FD9B4((a1 + 32), v3);
  }

  else if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
  {
    sub_10087A2F4();
  }
}

BOOL sub_1007D896C(void *a1, unint64_t a2, char *a3, unsigned __int16 a4)
{
  v6 = sub_10057E30C(a1, a2);
  v9 = 0;
  sub_1000216B4(&v9);
  v7 = sub_1002EF8B0(sub_1007D8A38, v6, a3, a4);
  sub_100022214(&v9);
  if (v7 && os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
  {
    sub_10087A330();
  }

  sub_10002249C(&v9);
  return v7 == 0;
}

void sub_1007D8A38(int a1, uint64_t a2, uint64_t a3, int a4)
{
  if (a4 && os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
  {
    sub_10087A3A0();
  }

  if (qword_100B54ED0 != -1)
  {
    sub_10087A410();
  }

  sub_1007D88F8(off_100B54EC8, a1);
}

void sub_1007D8ACC(int a1)
{
  if (qword_100B54ED0 != -1)
  {
    sub_10087A08C();
  }

  v2 = off_100B54EC8;

  sub_1005272C0(v2, a1);
}

void sub_1007D8B28(int a1, uint64_t a2, int a3)
{
  if (qword_100B54ED0 != -1)
  {
    sub_10087A08C();
  }

  v6 = off_100B54EC8;

  sub_1007D8864(v6, a1, a2, a3);
}

void sub_1007D8E04(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = UserNotification;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_1007D9220(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v10 = v9;

  a9.super_class = UninstallObserver;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_1007D9D58(id a1)
{
  v1 = objc_opt_new();
  v2 = qword_100BC7D90;
  qword_100BC7D90 = v1;
}

void sub_1007DA030(uint64_t a1)
{
  v2 = (a1 + 32);
  v3 = [*(*(a1 + 32) + 40) objectForKey:*(a1 + 40)];
  v4 = [*(*v2 + 152) objectForKey:v2[1]];
  v5 = v4;
  v6 = *(a1 + 48);
  if ((v6 - 1) < 2)
  {
    if (v4)
    {
      [*(*(a1 + 32) + 152) removeObjectForKey:*(a1 + 40)];
    }

    if (v3 && [v3 isApp] && (objc_msgSend(v3, "isExtension") & 1) == 0)
    {
      [v3 setHasLiveActivityRunning:0];
      v7 = qword_100BCE8D8;
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v16 = v3;
        v17 = 2112;
        *v18 = v5;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "ACActivityStateEnded/ACActivityStateDismissed dispatching appSessionStateChanged %@ %@", buf, 0x16u);
      }

      v8 = *(*(a1 + 32) + 8);
      if (v8)
      {
        sub_100007E30(__p, [*(a1 + 40) UTF8String]);
        (**v8)(v8, __p, [v3 getAppState]);
        if (v14 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }

    goto LABEL_38;
  }

  if (v6 || v4)
  {
    goto LABEL_38;
  }

  v5 = [LiveActivityInfo liveActivityWithBundleID:*(a1 + 40) startedWithCBInForeground:0];
  if ([v3 getAppInternalState] == 16 && (objc_msgSend(v3, "isExtension") & 1) == 0)
  {
    if (!v3 || ![v3 isApp] || (objc_msgSend(v3, "isExtension") & 1) != 0)
    {
      goto LABEL_34;
    }

    [v3 setHasLiveActivityRunning:1];
    v9 = qword_100BCE8D8;
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
LABEL_33:

LABEL_34:
      [v5 setStartedWithCBInForeground:1];
      goto LABEL_35;
    }

    v10 = [v3 getAppInternalState];
    if (v10 <= 7)
    {
      if (v10 == 2)
      {
        v11 = "terminated";
        goto LABEL_32;
      }

      if (v10 == 4)
      {
        v11 = "suspended";
        goto LABEL_32;
      }
    }

    else
    {
      switch(v10)
      {
        case 8:
          v11 = "background-running";
          goto LABEL_32;
        case 16:
          v11 = "foreground-running";
          goto LABEL_32;
        case 32:
          v11 = "daemon";
LABEL_32:
          *buf = 136315906;
          v16 = v11;
          v17 = 1024;
          *v18 = [v3 getAppInternalState];
          *&v18[4] = 2112;
          *&v18[6] = v3;
          v19 = 2112;
          v20 = v5;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "ACActivityStateActive App state:%s(%d) %@ %@", buf, 0x26u);
          goto LABEL_33;
      }
    }

    v11 = "unknown";
    goto LABEL_32;
  }

LABEL_35:
  v12 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v16 = v5;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Registered Live Activity application - %@", buf, 0xCu);
  }

  [*(*(a1 + 32) + 152) setObject:v5 forKey:*(a1 + 40)];
LABEL_38:
}

void sub_1007DA790(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "LiveActivity monitor triggered", v5, 2u);
  }

  [*(a1 + 32) _handleActivityContentUpdate:v3];
}

void sub_1007DA8E4(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 40) objectForKey:*(a1 + 40)];
  if (!v2)
  {
    v3 = [*(*(a1 + 32) + 48) applicationStateForApplication:*(a1 + 40)];
    v4 = v3 != 0;
    v5 = *(a1 + 40);
    if (v5 && !v3)
    {
      v6 = [*(a1 + 40) containsString:@"."];
      v5 = *(a1 + 40);
      if (v6)
      {
        v4 = [*(a1 + 40) hasPrefix:@"com.apple"] ^ 1;
        v5 = *(a1 + 40);
      }

      else
      {
        v4 = 0;
      }
    }

    v2 = [AppInfo appInfoWithPID:*(a1 + 48) isApp:v4 isExtension:*(a1 + 52) bundleID:v5];
    v7 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v16 = v2;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Registered application - %@", buf, 0xCu);
    }

    if (v2 && *(a1 + 40))
    {
      [v2 setBundleID:?];
      [*(*(a1 + 32) + 40) setObject:v2 forKey:*(a1 + 40)];
      v8 = [*(*(a1 + 32) + 152) objectForKey:*(a1 + 40)];
      v9 = v8;
      if (v8 && [v8 startedWithCBInForeground])
      {
        [v2 setHasLiveActivityRunning:1];
      }
    }

    if (v4)
    {
      v10 = [*(*(a1 + 32) + 48) interestedBundleIDs];
      v11 = [NSMutableArray arrayWithArray:v10];

      if (*(a1 + 40))
      {
        [v11 addObject:?];
      }

      [*(*(a1 + 32) + 48) updateInterestedBundleIDs:v11 states:15];
      v12 = [*(*(a1 + 32) + 48) bundleInfoValueForKey:@"UIBackgroundModes" PID:*(a1 + 48)];
      if (v12)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v13[0] = _NSConcreteStackBlock;
          v13[1] = 3221225472;
          v13[2] = sub_1007DABF8;
          v13[3] = &unk_100B0E1C8;
          v14 = v2;
          [v12 enumerateObjectsUsingBlock:v13];
        }
      }
    }

    [*(a1 + 32) reconfigureRunningBoardProcessMonitor];
  }
}

void sub_1007DABF8(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([@"bluetooth-central" isEqualToString:?])
  {
    [*(a1 + 32) setSupportsBackgroundedCentrals:1];
  }

  else if ([@"bluetooth-peripheral" isEqualToString:v3])
  {
    [*(a1 + 32) setSupportsBackgroundedPeripherals:1];
  }
}

void sub_1007DAD2C(uint64_t a1)
{
  v2 = (a1 + 40);
  v3 = [*(*(a1 + 32) + 40) objectForKeyedSubscript:*(a1 + 40)];
  v4 = v3;
  if (v3)
  {
    if ([v3 isApp])
    {
      v5 = [*(*(a1 + 32) + 48) interestedBundleIDs];
      v6 = [NSMutableArray arrayWithArray:v5];

      [v6 removeObject:*v2];
      v7 = *(*(a1 + 32) + 48);
      if ([v6 count])
      {
        v8 = 15;
      }

      else
      {
        v8 = 0;
      }

      [v7 updateInterestedBundleIDs:v6 states:v8];
      v9 = [*(*(a1 + 32) + 88) objectForKeyedSubscript:*(a1 + 40)];
      if (v9)
      {
        v10 = qword_100BCE8D8;
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          v11 = [*v2 UTF8String];
          v18 = 136446210;
          v19 = v11;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Removing outstanding process assertion for unregistered application %{public}s", &v18, 0xCu);
        }

        [v9 invalidate];
        [*(*(a1 + 32) + 88) removeObjectForKey:*(a1 + 40)];
      }

      v12 = [*(*(a1 + 32) + 96) objectForKeyedSubscript:*(a1 + 40)];

      if (v12)
      {
        v13 = qword_100BCE8D8;
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          v14 = [*v2 UTF8String];
          v18 = 136446210;
          v19 = v14;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Removing (URGENT) outstanding process assertion for unregistered application %{public}s", &v18, 0xCu);
        }

        [v12 invalidate];
        [*(*(a1 + 32) + 96) removeObjectForKey:*(a1 + 40)];
      }
    }

    [*(a1 + 32) reconfigureRunningBoardProcessMonitor];
    v15 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 138412290;
      v19 = v4;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Unregistered application - %@", &v18, 0xCu);
    }

    [*(*(a1 + 32) + 40) removeObjectForKey:*(a1 + 40)];
    [*(*(a1 + 32) + 112) removeObjectForKey:*(a1 + 40)];
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_FAULT))
    {
      sub_10087A44C();
    }

    v16 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      v17 = *v2;
      v18 = 138543362;
      v19 = v17;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Cannot unregister application %{public}@ - info is empty", &v18, 0xCu);
    }
  }
}

void sub_1007DB168(void *a1)
{
  v2 = [*(a1[4] + 40) objectForKey:a1[5]];
  *(*(a1[6] + 8) + 24) = [v2 pid];
}

void sub_1007DB398(id *a1)
{
  v2 = [*(a1[4] + 5) objectForKey:a1[5]];
  v3 = v2;
  if (v2)
  {
    if ([v2 isApp])
    {
      if ([v3 isExtension])
      {
        v4 = qword_100BCE9E0;
        if (os_log_type_enabled(qword_100BCE9E0, OS_LOG_TYPE_DEFAULT))
        {
          v5 = a1[5];
          *v18 = 138543362;
          *&v18[4] = v5;
          v6 = "Application %{public}@ is an extension (not supported).";
LABEL_11:
          _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, v6, v18, 0xCu);
        }
      }

      else
      {
        v9 = +[NSMutableDictionary dictionary];
        if ([a1[6] count])
        {
          [v9 setObject:a1[6] forKey:@"UIApplicationLaunchOptionsBluetoothCentralsKey"];
        }

        if ([a1[7] count])
        {
          [v9 setObject:a1[7] forKey:@"UIApplicationLaunchOptionsBluetoothPeripheralsKey"];
        }

        v23[0] = BKSOpenApplicationOptionKeyActivateSuspended;
        v23[1] = BKSOpenApplicationOptionKeyPayloadOptions;
        v24[0] = &__kCFBooleanTrue;
        v24[1] = v9;
        v10 = [NSDictionary dictionaryWithObjects:v24 forKeys:v23 count:2];
        v11 = qword_100BCE9E0;
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          v12 = [v3 isAlive];
          v13 = a1[5];
          v14 = [v3 pid];
          v15 = "false";
          *v18 = 136315650;
          if (v12)
          {
            v15 = "true";
          }

          *&v18[4] = v15;
          v19 = 2112;
          v20 = v13;
          v21 = 1024;
          v22 = v14;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "launchApplication:{isAlive: %s, bundleId: %@, pid: %d}", v18, 0x1Cu);
        }

        if ([v3 pid] && (objc_msgSend(v3, "isAlive") & 1) != 0)
        {
          v16 = qword_100BCE9E0;
          if (os_log_type_enabled(qword_100BCE9E0, OS_LOG_TYPE_DEFAULT))
          {
            v17 = a1[5];
            *v18 = 138543362;
            *&v18[4] = v17;
            _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Application pending termination, delaying resurrection - %{public}@", v18, 0xCu);
          }

          [*(a1[4] + 14) setObject:v10 forKey:{a1[5], *v18}];
        }

        else
        {
          [a1[4] openBundle:a1[5] options:{v10, *v18}];
        }
      }
    }

    else
    {
      v4 = qword_100BCE9E0;
      if (os_log_type_enabled(qword_100BCE9E0, OS_LOG_TYPE_DEFAULT))
      {
        v8 = a1[5];
        *v18 = 138543362;
        *&v18[4] = v8;
        v6 = "Application %{public}@ is a daemon (not supported).";
        goto LABEL_11;
      }
    }
  }

  else
  {
    v7 = qword_100BCE8D8;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_10087A5C8([a1[5] UTF8String], v18);
    }
  }
}

void sub_1007DB9E0(uint64_t a1)
{
  if (qword_100B512F8 != -1)
  {
    sub_10087A63C();
  }

  v2 = off_100B512F0;
  v3 = *(a1 + 32);

  sub_1003BD38C(v2, v3);
}

void sub_1007DBA34(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    if (os_log_type_enabled(qword_100BCE9E0, OS_LOG_TYPE_ERROR))
    {
      sub_10087A650();
    }

    v7 = *(a1 + 56);
    v8 = *(a1 + 32);
    v9 = *(a1 + 40);
    v10 = *(v9 + 16);
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_1007DBCB0;
    v14[3] = &unk_100B0E218;
    v14[4] = v9;
    v15 = v8;
    v16 = *(a1 + 48);
    v17 = *(a1 + 64);
    dispatch_after(v7, v10, v14);
  }

  else if ([v5 isValid])
  {
    v11 = qword_100BCE9E0;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = *(a1 + 32);
      *buf = 138543618;
      v19 = v12;
      v20 = 1026;
      v21 = [v5 pid];
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Resurrected: %{public}@, pid: %{public}u", buf, 0x12u);
    }

    v13 = [*(*(a1 + 40) + 40) objectForKeyedSubscript:*(a1 + 32)];
    if (v13)
    {
      [v13 setPid:{objc_msgSend(v5, "pid")}];
      [*(a1 + 40) takeAssertionForProcess:*(a1 + 32) duration:10 isUrgent:0];
    }

    else if (os_log_type_enabled(qword_100BCE9E0, OS_LOG_TYPE_ERROR))
    {
      sub_10087A744();
    }
  }

  else if (os_log_type_enabled(qword_100BCE9E0, OS_LOG_TYPE_ERROR))
  {
    sub_10087A6D0();
  }
}

void sub_1007DBD60(uint64_t a1)
{
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  obj = *(a1 + 32);
  v2 = [obj countByEnumeratingWithState:&v14 objects:v24 count:16];
  if (v2)
  {
    v3 = *v15;
    do
    {
      for (i = 0; i != v2; i = i + 1)
      {
        if (*v15 != v3)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v14 + 1) + 8 * i);
        v6 = [v5 applicationIdentifier];
        v7 = [*(*(a1 + 40) + 40) objectForKey:v6];
        v8 = qword_100BCE9E0;
        if (os_log_type_enabled(qword_100BCE9E0, OS_LOG_TYPE_DEFAULT))
        {
          v9 = *(*(a1 + 40) + 40);
          *buf = 138543874;
          v19 = v6;
          v20 = 2112;
          v21 = v7;
          v22 = 2112;
          v23 = v9;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ %@ %@", buf, 0x20u);
        }

        v10 = qword_100BCE9E0;
        v11 = os_log_type_enabled(qword_100BCE9E0, OS_LOG_TYPE_DEFAULT);
        if (v7)
        {
          if (v11)
          {
            *buf = 138543362;
            v19 = v6;
            _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Application %{public}@ has been uninstalled!", buf, 0xCu);
          }

          if (*(*(a1 + 40) + 8))
          {
            block[0] = _NSConcreteStackBlock;
            block[1] = 3221225472;
            block[2] = sub_1007DC058;
            block[3] = &unk_100AE0B60;
            block[4] = *(a1 + 40);
            block[5] = v5;
            dispatch_async(&_dispatch_main_q, block);
          }
        }

        else if (v11)
        {
          *buf = 138543362;
          v19 = v6;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Unable To Uninstall %{public}@, AppInfo Not Found", buf, 0xCu);
        }

        [*(*(a1 + 40) + 152) removeObjectForKey:v6];
      }

      v2 = [obj countByEnumeratingWithState:&v14 objects:v24 count:16];
    }

    while (v2);
  }
}

void sub_1007DC058(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  v2 = [*(a1 + 40) applicationIdentifier];
  sub_100007E30(__p, [v2 UTF8String]);
  (*(*v1 + 16))(v1, __p, 2);
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1007DC0E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1007DC1D0(id a1, NSDictionary *a2)
{
  v3 = a2;
  v2 = +[BTAppInteraction instance];
  [v2 applicationStateChanged:v3];
}

void sub_1007DC250(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[RBSProcessStateDescriptor descriptor];
  [v4 setValues:23];
  v7 = FBSSceneVisibilityEndowmentNamespace;
  v5 = [NSArray arrayWithObjects:&v7 count:1];
  [v4 setEndowmentNamespaces:v5];

  [v3 setStateDescriptor:v4];
  [v3 setServiceClass:33];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1007DC3C8;
  v6[3] = &unk_100B0E288;
  v6[4] = *(a1 + 32);
  [v3 setUpdateHandler:v6];
  [v3 setPredicates:*(a1 + 40)];
}

void sub_1007DC4A0(uint64_t a1)
{
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEBUG))
  {
    sub_10087A7B8();
  }

  v2 = [*(a1 + 32) bundle];
  v3 = [v2 identifier];

  v4 = [*(a1 + 32) pid];
  if (v3 || ([*(a1 + 32) isDaemon] & 1) != 0)
  {
    v46 = 0;
    v47 = &v46;
    v48 = 0x3032000000;
    v49 = sub_100042544;
    v50 = sub_1000426CC;
    v51 = [*(*(a1 + 48) + 40) objectForKeyedSubscript:v3];
    v5 = v47[5];
    if (!v5)
    {
      v6 = *(*(a1 + 48) + 40);
      v44[0] = _NSConcreteStackBlock;
      v44[1] = 3221225472;
      v44[2] = sub_1007DD178;
      v44[3] = &unk_100B0E300;
      v45 = v4;
      v44[4] = &v46;
      [v6 enumerateKeysAndObjectsUsingBlock:v44];
      v5 = v47[5];
      if (!v5)
      {
        if (v3 && os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
        {
          sub_10087A8AC();
        }

        goto LABEL_163;
      }
    }

    if (![v5 isExtension] || (objc_msgSend(*(a1 + 40), "state"), v7 = objc_claimAutoreleasedReturnValue(), v8 = +[BTAppInteraction translateRunningBoardProcessState:overrideForeground:](BTAppInteraction, "translateRunningBoardProcessState:overrideForeground:", v7, objc_msgSend(v47[5], "isExtension")), v7, objc_msgSend(v47[5], "getAppState") == v8))
    {
LABEL_163:
      _Block_object_dispose(&v46, 8);

      goto LABEL_164;
    }

    v9 = [*(a1 + 40) previousState];
    v40 = +[BTAppInteraction translateRunningBoardProcessState:overrideForeground:](BTAppInteraction, "translateRunningBoardProcessState:overrideForeground:", v9, [v47[5] isExtension]);

    v10 = [*(a1 + 40) previousState];
    v11 = [v10 taskState];

    v12 = [*(a1 + 40) state];
    v13 = [v12 taskState];

    v14 = qword_100BCE8D8;
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
LABEL_40:

      if (([v47[5] monitorForDeath] & 1) == 0)
      {
        [v47[5] setMonitorForDeath:1];
        v20 = *(a1 + 32);
        v43[0] = _NSConcreteStackBlock;
        v43[1] = 3221225472;
        v43[2] = sub_1007DD20C;
        v43[3] = &unk_100B0E328;
        v43[4] = *(a1 + 48);
        [v20 monitorForDeath:v43];
      }

      [v47[5] setAppState:v8];
      v21 = [v47[5] getAppState];
      if ([v47[5] pid] == v4)
      {
        v22 = qword_100BCE8D8;
        if (!os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_INFO))
        {
LABEL_154:
          if (*(*(a1 + 48) + 8) && v8 != 2)
          {
            memset(buf, 0, 24);
            v37 = v3;
            sub_100007E30(buf, [v3 UTF8String]);
            v38 = *(*(a1 + 48) + 8);
            if ((buf[23] & 0x80000000) != 0)
            {
              sub_100008904(__p, *buf, *&buf[8]);
            }

            else
            {
              *__p = *buf;
              v42 = *&buf[16];
            }

            (**v38)(v38, __p, v8);
            if (SHIBYTE(v42) < 0)
            {
              operator delete(__p[0]);
            }

            if ((buf[23] & 0x80000000) != 0)
            {
              operator delete(*buf);
            }
          }

          goto LABEL_163;
        }

        if (v40 <= 7)
        {
          if (v40 == 2)
          {
            v23 = "terminated";
            goto LABEL_81;
          }

          if (v40 == 4)
          {
            v23 = "suspended";
            goto LABEL_81;
          }
        }

        else
        {
          switch(v40)
          {
            case 8:
              v23 = "background-running";
              goto LABEL_81;
            case 16:
              v23 = "foreground-running";
              goto LABEL_81;
            case 32:
              v23 = "daemon";
              goto LABEL_81;
          }
        }

        v23 = "unknown";
LABEL_81:
        if (v8 <= 7)
        {
          if (v8 == 2)
          {
            v33 = "terminated";
            goto LABEL_93;
          }

          if (v8 == 4)
          {
            v33 = "suspended";
            goto LABEL_93;
          }
        }

        else
        {
          switch(v8)
          {
            case 8:
              v33 = "background-running";
              goto LABEL_93;
            case 0x10:
              v33 = "foreground-running";
              goto LABEL_93;
            case 0x20:
              v33 = "daemon";
LABEL_93:
              *buf = 67109634;
              *&buf[4] = v4;
              *&buf[8] = 2080;
              *&buf[10] = v23;
              *&buf[18] = 2080;
              *&buf[20] = v33;
              _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "Process state updated. PID unchanged:%u %s to %s", buf, 0x1Cu);
              goto LABEL_154;
          }
        }

        v33 = "unknown";
        goto LABEL_93;
      }

      if (![v47[5] pid] && v4 && v21 != 2)
      {
        v24 = qword_100BCE8D8;
        if (!os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
        {
LABEL_114:

          [v47[5] setIsAlive:1];
          goto LABEL_154;
        }

        v25 = [v47[5] pid];
        if (v40 <= 7)
        {
          if (v40 == 2)
          {
            v26 = "terminated";
            goto LABEL_101;
          }

          if (v40 == 4)
          {
            v26 = "suspended";
            goto LABEL_101;
          }
        }

        else
        {
          switch(v40)
          {
            case 8:
              v26 = "background-running";
              goto LABEL_101;
            case 16:
              v26 = "foreground-running";
              goto LABEL_101;
            case 32:
              v26 = "daemon";
              goto LABEL_101;
          }
        }

        v26 = "unknown";
LABEL_101:
        if (v8 <= 7)
        {
          if (v8 == 2)
          {
            v34 = "terminated";
            goto LABEL_113;
          }

          if (v8 == 4)
          {
            v34 = "suspended";
            goto LABEL_113;
          }
        }

        else
        {
          switch(v8)
          {
            case 8:
              v34 = "background-running";
              goto LABEL_113;
            case 0x10:
              v34 = "foreground-running";
              goto LABEL_113;
            case 0x20:
              v34 = "daemon";
LABEL_113:
              *buf = 67109890;
              *&buf[4] = v25;
              *&buf[8] = 1024;
              *&buf[10] = v4;
              *&buf[14] = 2080;
              *&buf[16] = v26;
              *&buf[24] = 2080;
              *&buf[26] = v34;
              _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "Process state updated: Alive, PID changed:%u to %u, %s to %s", buf, 0x22u);
              goto LABEL_114;
          }
        }

        v34 = "unknown";
        goto LABEL_113;
      }

      if (v4)
      {
        v27 = qword_100BCE8D8;
        if (!os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
        {
LABEL_135:

          goto LABEL_154;
        }

        v28 = [v47[5] pid];
        if (v40 <= 7)
        {
          if (v40 == 2)
          {
            v29 = "terminated";
            goto LABEL_122;
          }

          if (v40 == 4)
          {
            v29 = "suspended";
            goto LABEL_122;
          }
        }

        else
        {
          switch(v40)
          {
            case 8:
              v29 = "background-running";
              goto LABEL_122;
            case 16:
              v29 = "foreground-running";
              goto LABEL_122;
            case 32:
              v29 = "daemon";
              goto LABEL_122;
          }
        }

        v29 = "unknown";
LABEL_122:
        if (v8 <= 7)
        {
          if (v8 == 2)
          {
            v35 = "terminated";
            goto LABEL_134;
          }

          if (v8 == 4)
          {
            v35 = "suspended";
            goto LABEL_134;
          }
        }

        else
        {
          switch(v8)
          {
            case 8:
              v35 = "background-running";
              goto LABEL_134;
            case 0x10:
              v35 = "foreground-running";
              goto LABEL_134;
            case 0x20:
              v35 = "daemon";
LABEL_134:
              *buf = 67109890;
              *&buf[4] = v28;
              *&buf[8] = 1024;
              *&buf[10] = v4;
              *&buf[14] = 2080;
              *&buf[16] = v29;
              *&buf[24] = 2080;
              *&buf[26] = v35;
              _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_INFO, "Process state updated: PID changed:%u to %u, %s to %s", buf, 0x22u);
              goto LABEL_135;
          }
        }

        v35 = "unknown";
        goto LABEL_134;
      }

      [v47[5] setPid:0];
      [v47[5] setIsAlive:0];
      v30 = qword_100BCE8D8;
      if (!os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
      {
LABEL_153:

        goto LABEL_154;
      }

      v31 = [v47[5] pid];
      if (v40 <= 7)
      {
        if (v40 == 2)
        {
          v32 = "terminated";
          goto LABEL_140;
        }

        if (v40 == 4)
        {
          v32 = "suspended";
          goto LABEL_140;
        }
      }

      else
      {
        switch(v40)
        {
          case 8:
            v32 = "background-running";
            goto LABEL_140;
          case 16:
            v32 = "foreground-running";
            goto LABEL_140;
          case 32:
            v32 = "daemon";
            goto LABEL_140;
        }
      }

      v32 = "unknown";
LABEL_140:
      if (v8 <= 7)
      {
        if (v8 == 2)
        {
          v36 = "terminated";
          goto LABEL_152;
        }

        if (v8 == 4)
        {
          v36 = "suspended";
          goto LABEL_152;
        }
      }

      else
      {
        switch(v8)
        {
          case 8:
            v36 = "background-running";
            goto LABEL_152;
          case 0x10:
            v36 = "foreground-running";
            goto LABEL_152;
          case 0x20:
            v36 = "daemon";
LABEL_152:
            *buf = 67109890;
            *&buf[4] = v31;
            *&buf[8] = 1024;
            *&buf[10] = 0;
            *&buf[14] = 2080;
            *&buf[16] = v32;
            *&buf[24] = 2080;
            *&buf[26] = v36;
            _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_INFO, "Process state updated: Terminated, PID changed:%u to %u, %s to %s", buf, 0x22u);
            goto LABEL_153;
        }
      }

      v36 = "unknown";
      goto LABEL_152;
    }

    v39 = v8;
    if (v40 <= 7)
    {
      if (v40 == 2)
      {
        v15 = "terminated";
        goto LABEL_27;
      }

      if (v40 == 4)
      {
        v15 = "suspended";
        goto LABEL_27;
      }
    }

    else
    {
      switch(v40)
      {
        case 8:
          v15 = "background-running";
          goto LABEL_27;
        case 16:
          v15 = "foreground-running";
          goto LABEL_27;
        case 32:
          v15 = "daemon";
          goto LABEL_27;
      }
    }

    v15 = "unknown";
LABEL_27:
    v16 = [BTAppInteraction RBSTaskStateToString:v11];
    if (v39 <= 7)
    {
      if (v39 == 2)
      {
        v17 = "terminated";
        goto LABEL_39;
      }

      if (v39 == 4)
      {
        v17 = "suspended";
        goto LABEL_39;
      }
    }

    else
    {
      switch(v39)
      {
        case 8:
          v17 = "background-running";
          goto LABEL_39;
        case 16:
          v17 = "foreground-running";
          goto LABEL_39;
        case 32:
          v17 = "daemon";
LABEL_39:
          v18 = [BTAppInteraction RBSTaskStateToString:v13];
          v19 = v47[5];
          *buf = 67110402;
          *&buf[4] = v4;
          *&buf[8] = 2080;
          *&buf[10] = v15;
          *&buf[18] = 2112;
          *&buf[20] = v16;
          *&buf[28] = 2080;
          *&buf[30] = v17;
          v53 = 2112;
          v54 = v18;
          v55 = 2112;
          v56 = v19;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "runningBoardApplicationStateChanged Process[%u] state updated %s(%@) to %s(%@) for %@", buf, 0x3Au);

          v8 = v39;
          goto LABEL_40;
      }
    }

    v17 = "unknown";
    goto LABEL_39;
  }

  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
  {
    sub_10087A83C();
  }

LABEL_164:
}

void sub_1007DD078(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, void *__p, uint64_t a35, int a36, __int16 a37, char a38, char a39)
{
  _Block_object_dispose(&a28, 8);

  _Unwind_Resume(a1);
}

void sub_1007DD178(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v7 = a3;
  v8 = *(a1 + 40);
  v9 = v7;
  if (v8 == [v7 pid])
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
    *a4 = 1;
  }
}

void sub_1007DD36C(uint64_t a1)
{
  v2 = [*(a1 + 32) bundle];
  v3 = [v2 identifier];

  v4 = [*(a1 + 32) pid];
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = sub_100042544;
  v26 = sub_1000426CC;
  v27 = [*(*(a1 + 40) + 40) objectForKeyedSubscript:v3];
  v5 = v23[5];
  if (v5 || (v6 = *(*(a1 + 40) + 40), v20[0] = _NSConcreteStackBlock, v20[1] = 3221225472, v20[2] = sub_1007DD6FC, v20[3] = &unk_100B0E300, v21 = v4, v20[4] = &v22, [v6 enumerateKeysAndObjectsUsingBlock:v20], (v5 = v23[5]) != 0))
  {
    if ([v5 isExtension])
    {
      v7 = [*(a1 + 48) status];
      v8 = [v7 domain];
      v9 = [v7 domain];
      [v23[5] setExitReasonDomain:v9];
      v10 = qword_100BCE8D8;
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = v23[5];
        v12 = v3;
        v13 = [v3 UTF8String];
        v14 = [v7 domain];
        v15 = "terminated";
        *buf = 138413058;
        v29 = v11;
        v30 = 2082;
        if (v8 == 10)
        {
          v15 = "killed by the user";
        }

        v31 = v13;
        v32 = 2082;
        v33 = v15;
        v34 = 1024;
        v35 = v14;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%@ Process %{public}s has been %{public}s with reason [%d]", buf, 0x26u);
      }

      if ([v23[5] isExtension])
      {
        v16 = *(*(a1 + 40) + 8);
        if (v16)
        {
          v17 = v3;
          sub_100007E30(__p, [v3 UTF8String]);
          (*(*v16 + 16))(v16, __p, v8 == 10);
          if (v19 < 0)
          {
            operator delete(__p[0]);
          }
        }
      }
    }
  }

  else if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
  {
    sub_10087A928();
  }

  _Block_object_dispose(&v22, 8);
}

void sub_1007DD684(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Block_object_dispose(&a22, 8);
  _Unwind_Resume(a1);
}

void sub_1007DD6FC(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v7 = a3;
  v8 = *(a1 + 40);
  v9 = v7;
  if (v8 == [v7 pid])
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
    *a4 = 1;
  }
}

void sub_1007DD988(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 40) objectForKey:*(a1 + 40)];
  v3 = v2;
  if (v2)
  {
    [v2 setIsApp:1];
    [v3 setSupportsBackgroundedCentrals:1];
  }

  else
  {
    v4 = qword_100BCE8D8;
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_10087A5C8([*(a1 + 40) UTF8String], &v5);
    }
  }
}

void sub_1007DDB14(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 40) objectForKey:*(a1 + 40)];
  v3 = v2;
  if (v2)
  {
    [v2 setIsApp:1];
    [v3 setSupportsBackgroundedPeripherals:1];
  }

  else
  {
    v4 = qword_100BCE8D8;
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_10087A5C8([*(a1 + 40) UTF8String], &v5);
    }
  }
}

void sub_1007DDCD8(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 40) objectForKey:*(a1 + 40)];
  v3 = v2;
  if (v2)
  {
    if ([v2 isApp])
    {
      if ([v3 isAlive])
      {
        if ([v3 getAppState] == 1)
        {
          v4 = [*(a1 + 32) translateApplicationState:{objc_msgSend(*(*(a1 + 32) + 48), "applicationStateForApplication:", *(a1 + 40))}];
        }

        else
        {
          v4 = [v3 getAppState];
        }

        *(*(*(a1 + 48) + 8) + 24) = v4;
        goto LABEL_18;
      }

      v7 = *(*(a1 + 48) + 8);
      v8 = 2;
    }

    else
    {
      if ([v3 isExtension])
      {
        v6 = qword_100BCE8D8;
        if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
        {
          sub_10087A9D4([*(a1 + 40) UTF8String], v9);
        }
      }

      v7 = *(*(a1 + 48) + 8);
      v8 = 32;
    }

    *(v7 + 24) = v8;
    goto LABEL_18;
  }

  v5 = qword_100BCE8D8;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    sub_10087A5C8([*(a1 + 40) UTF8String], v9);
  }

LABEL_18:
}

void sub_1007DDF14(uint64_t a1)
{
  v2 = BKSApplicationStateKey;
  v3 = [*(a1 + 32) objectForKeyedSubscript:BKSApplicationStateKey];
  v61 = [v3 intValue];

  v63 = [*(a1 + 32) objectForKeyedSubscript:BKSApplicationStateDisplayIDKey];
  v4 = [*(a1 + 32) objectForKeyedSubscript:BKSApplicationStateProcessIDKey];
  v5 = [v4 intValue];

  v6 = [*(a1 + 32) objectForKeyedSubscript:BKSApplicationStateExtensionKey];
  v58 = v5;
  v60 = [v6 BOOLValue];

  v7 = [*(*(a1 + 40) + 40) objectForKeyedSubscript:v63];
  v62 = v7;
  if (!v7)
  {
    if (!v63)
    {
      goto LABEL_116;
    }

    v21 = qword_100BCE9E0;
    if (!os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_80;
    }

    v22 = [*(a1 + 40) translateApplicationState:v61];
    if (v22 <= 7)
    {
      if (v22 == 2)
      {
        v23 = "terminated";
        goto LABEL_77;
      }

      if (v22 == 4)
      {
        v23 = "suspended";
        goto LABEL_77;
      }
    }

    else
    {
      switch(v22)
      {
        case 8:
          v23 = "background-running";
          goto LABEL_77;
        case 16:
          v23 = "foreground-running";
          goto LABEL_77;
        case 32:
          v23 = "daemon";
LABEL_77:
          v47 = "";
          *buf = 138413058;
          v77 = v63;
          v78 = 1024;
          if (v60)
          {
            v47 = " (Is an extension)";
          }

          *v79 = v58;
          *&v79[4] = 2080;
          *&v79[6] = v23;
          v80 = 2080;
          v81 = v47;
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "%@ [%d] is not in the application map. State: %s%s", buf, 0x26u);
LABEL_80:

          goto LABEL_115;
      }
    }

    v23 = "unknown";
    goto LABEL_77;
  }

  v8 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v77 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "applicationStateChanged %@", buf, 0xCu);
  }

  v59 = [*(a1 + 40) translateApplicationState:v61];
  v9 = *(a1 + 32);
  v10 = [v9 objectForKeyedSubscript:v2];
  v11 = [v10 intValue];

  if (v11 == 4)
  {
    [v9 objectForKeyedSubscript:BKSApplicationStateRunningReasonsKey];
    v74 = 0u;
    v75 = 0u;
    v72 = 0u;
    v12 = v73 = 0u;
    v13 = [v12 countByEnumeratingWithState:&v72 objects:buf count:16];
    if (v13)
    {
      v14 = *v73;
      v15 = BKSApplicationStateRunningReasonAssertionReasonKey;
      while (2)
      {
        for (i = 0; i != v13; i = i + 1)
        {
          if (*v73 != v14)
          {
            objc_enumerationMutation(v12);
          }

          v17 = [*(*(&v72 + 1) + 8 * i) objectForKeyedSubscript:v15];
          v18 = [v17 unsignedIntValue];

          if (v18 == 16 || v18 == 50004)
          {
            v20 = 1;
            goto LABEL_27;
          }
        }

        v13 = [v12 countByEnumeratingWithState:&v72 objects:buf count:16];
        v20 = 0;
        if (v13)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v20 = 0;
    }

LABEL_27:
  }

  else
  {
    v20 = 0;
  }

  if (([v62 isExtension] & 1) == 0 && v60 | v20)
  {
    v24 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      v77 = v63;
      v78 = 1024;
      *v79 = v60;
      *&v79[4] = 1024;
      *&v79[6] = v20;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Overriding bundle %@ state to foregroundRunning isExtension:%d isAssertionReasonWatchConnectivity:%d", buf, 0x18u);
    }

    v59 = 16;
  }

  if (v61 != 1)
  {
    if ([v62 pid])
    {
      v34 = qword_100BCE9E0;
      if (!os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
LABEL_88:

        goto LABEL_97;
      }

      v35 = v63;
      v36 = [v63 UTF8String];
      v37 = [v62 pid];
      if (v59 <= 7)
      {
        if (v59 == 2)
        {
          v38 = "terminated";
          goto LABEL_85;
        }

        if (v59 == 4)
        {
          v38 = "suspended";
          goto LABEL_85;
        }
      }

      else
      {
        switch(v59)
        {
          case 8:
            v38 = "background-running";
            goto LABEL_85;
          case 16:
            v38 = "foreground-running";
            goto LABEL_85;
          case 32:
            v38 = "daemon";
LABEL_85:
            v48 = [v62 isAlive];
            v49 = "false";
            *buf = 136446978;
            v77 = v36;
            v78 = 1024;
            if (v48)
            {
              v49 = "true";
            }

            *v79 = v37;
            *&v79[4] = 2082;
            *&v79[6] = v38;
            v80 = 2080;
            v81 = v49;
            _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "Application %{public}s is still at pid %d, with state %{public}s, isAlive: %s", buf, 0x26u);
            goto LABEL_88;
        }
      }

      v38 = "unknown";
      goto LABEL_85;
    }

    [v62 setPid:v58];
    v39 = qword_100BCE9E0;
    if (!os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
    {
LABEL_96:

      [*(a1 + 40) takeAssertionForProcess:v63 duration:10 isUrgent:0];
LABEL_97:
      v52 = qword_100BCE9E0;
      if (!os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_111;
      }

      v53 = v63;
      v54 = [v63 UTF8String];
      if (v59 <= 7)
      {
        if (v59 == 2)
        {
          v55 = "terminated";
          goto LABEL_110;
        }

        if (v59 == 4)
        {
          v55 = "suspended";
          goto LABEL_110;
        }
      }

      else
      {
        switch(v59)
        {
          case 8:
            v55 = "background-running";
            goto LABEL_110;
          case 16:
            v55 = "foreground-running";
            goto LABEL_110;
          case 32:
            v55 = "daemon";
LABEL_110:
            *buf = 136446466;
            v77 = v54;
            v78 = 2082;
            *v79 = v55;
            _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_DEFAULT, "State of application %{public}s is now %{public}s", buf, 0x16u);
LABEL_111:

            v7 = v62;
            if ([v62 isExtension])
            {
              goto LABEL_116;
            }

            [v62 setAppState:v59];
            if (!*(*(a1 + 40) + 8) || ([v62 isExtension] & 1) != 0)
            {
              goto LABEL_116;
            }

            v64[0] = _NSConcreteStackBlock;
            v64[1] = 3221225472;
            v64[2] = sub_1007DECC8;
            v64[3] = &unk_100AE2550;
            v56 = v62;
            v57 = *(a1 + 40);
            v65 = v56;
            v66 = v57;
            v67 = v63;
            dispatch_async(&_dispatch_main_q, v64);

LABEL_115:
            v7 = v62;
            goto LABEL_116;
        }
      }

      v55 = "unknown";
      goto LABEL_110;
    }

    v40 = v63;
    v41 = [v63 UTF8String];
    v42 = [v62 pid];
    if (v59 <= 7)
    {
      if (v59 == 2)
      {
        v43 = "terminated";
        goto LABEL_93;
      }

      if (v59 == 4)
      {
        v43 = "suspended";
        goto LABEL_93;
      }
    }

    else
    {
      switch(v59)
      {
        case 8:
          v43 = "background-running";
          goto LABEL_93;
        case 16:
          v43 = "foreground-running";
          goto LABEL_93;
        case 32:
          v43 = "daemon";
LABEL_93:
          v50 = [v62 isAlive];
          v51 = "false";
          *buf = 136446978;
          v77 = v41;
          v78 = 1024;
          if (v50)
          {
            v51 = "true";
          }

          *v79 = v42;
          *&v79[4] = 2082;
          *&v79[6] = v43;
          v80 = 2080;
          v81 = v51;
          _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "Application %{public}s is now at pid %d, with state %{public}s, isAlive: %s", buf, 0x26u);
          goto LABEL_96;
      }
    }

    v43 = "unknown";
    goto LABEL_93;
  }

  if ([v62 isExtension])
  {
    goto LABEL_97;
  }

  v25 = [*(a1 + 32) objectForKeyedSubscript:BKSApplicationStateExitReasonKey];
  v26 = [v25 unsignedIntValue];

  v27 = qword_100BCE9E0;
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    v28 = v63;
    v29 = [v63 UTF8String];
    v30 = "terminated";
    if (v26 == 1)
    {
      v30 = "killed by the user";
    }

    *buf = 136446466;
    v77 = v29;
    v78 = 2082;
    *v79 = v30;
    _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Application %{public}s has been %{public}s", buf, 0x16u);
  }

  [v62 setPid:0];
  if (*(*(a1 + 40) + 8))
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1007DEB5C;
    block[3] = &unk_100AE2470;
    v31 = v63;
    v71 = v26 == 1;
    v32 = *(a1 + 40);
    v69 = v31;
    v70 = v32;
    dispatch_async(&_dispatch_main_q, block);
  }

  if (v26 != 1)
  {
    v44 = [*(*(a1 + 40) + 112) objectForKey:v63];
    v45 = qword_100BCE9E0;
    v46 = os_log_type_enabled(qword_100BCE9E0, OS_LOG_TYPE_DEFAULT);
    if (v44)
    {
      if (v46)
      {
        *buf = 138543362;
        v77 = v63;
        _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "Found bundleID in launch queue, attempting to resurrect - %{public}@", buf, 0xCu);
      }

      [*(a1 + 40) openBundle:v63 options:v44 attempt:0];
      [*(*(a1 + 40) + 112) removeObjectForKey:v63];
    }

    else if (v46)
    {
      *buf = 138543362;
      v77 = v63;
      _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "BundleID not in launch queue - not resurrecting: %{public}@", buf, 0xCu);
    }

    goto LABEL_115;
  }

  v33 = qword_100BCE9E0;
  v7 = v62;
  if (os_log_type_enabled(qword_100BCE9E0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v77 = v63;
    _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "bundleID %{public}@ in launch queue but won't resurrect. Reason: killed by user.", buf, 0xCu);
  }

LABEL_116:
}

void sub_1007DEB5C(uint64_t a1)
{
  v2 = qword_100BCE8D8;
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) UTF8String];
    v4 = "terminated";
    if (*(a1 + 48))
    {
      v4 = "killed by the user";
    }

    *buf = 136446466;
    v9 = v3;
    v10 = 2082;
    v11 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "applicationStateChanged Process %{public}s has been %{public}s", buf, 0x16u);
  }

  v5 = *(*(a1 + 40) + 8);
  sub_100007E30(__p, [*(a1 + 32) UTF8String]);
  (*(*v5 + 16))(v5, __p, *(a1 + 48));
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1007DECC8(uint64_t a1)
{
  v2 = [*(a1 + 32) getAppState];
  v3 = *(a1 + 48);
  v4 = *(*(a1 + 40) + 8);
  sub_100007E30(__p, [v3 UTF8String]);
  (**v4)(v4, __p, v2);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1007DED6C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1007DEE64(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 40) objectForKeyedSubscript:*(a1 + 40)];
  v3 = v2;
  if (v2)
  {
    v6 = v2;
    if ([v2 isExtension])
    {
      *(*(*(a1 + 48) + 8) + 24) = 0;
    }

    v4 = [v6 isApp];
    v3 = v6;
    if (v4)
    {
      if (*(a1 + 56) == 1)
      {
        v5 = [v6 supportsBackgroundedCentrals];
      }

      else
      {
        v5 = [v6 supportsBackgroundedPeripherals];
      }

      *(*(*(a1 + 48) + 8) + 24) = v5;
      v3 = v6;
    }
  }
}

void sub_1007DEFD4(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 40) objectForKeyedSubscript:*(a1 + 40)];
  if (([v2 isApp] & 1) == 0)
  {
    v9 = qword_100BCE8D8;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_10087AA18([*(a1 + 40) UTF8String], &v13);
    }

    goto LABEL_15;
  }

  if ([v2 isExtension])
  {
LABEL_15:
    v10 = 0;
    goto LABEL_16;
  }

  if (![v2 pid])
  {
    v3 = qword_100BCE8D8;
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_10087AA50([*(a1 + 40) UTF8String], v17);
    }
  }

  v4 = [*(*(a1 + 32) + 88) objectForKeyedSubscript:*(a1 + 40)];
  if (v4)
  {
    v5 = qword_100BCE8D8;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = *(a1 + 48);
      v7 = [*(a1 + 40) UTF8String];
      v13 = 134218242;
      v14 = v6;
      v15 = 2082;
      v16 = v7;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Attempting to add %lu seconds to process assertion for application %{public}s", &v13, 0x16u);
    }

    [v4 setSecondsLeft:{objc_msgSend(v4, "secondsLeft") + *(a1 + 48)}];
    if ([v4 secondsLeft] > 9)
    {
      v8 = 10;
    }

    else
    {
      v8 = [v4 secondsLeft];
    }

    [v4 setSecondsLeft:v8];
  }

  else
  {
    [*(a1 + 32) createAssertionForBundleID:*(a1 + 40) duration:*(a1 + 48) isUrgent:0 withPid:{objc_msgSend(v2, "pid")}];
  }

  if (*(a1 + 56) == 1 && [v2 requiresUrgentAssertion])
  {
    [*(a1 + 32) disableHIP];
    v11 = [*(*(a1 + 32) + 96) objectForKeyedSubscript:*(a1 + 40)];

    v10 = v11;
    if (v11)
    {
      v12 = qword_100BCE8D8;
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_INFO))
      {
        LOWORD(v13) = 0;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "(EE) Refreshing URGENT Process Assertion", &v13, 2u);
      }

      [v11 setSecondsLeft:3];
    }

    else
    {
      v10 = 0;
      [*(a1 + 32) createAssertionForBundleID:*(a1 + 40) duration:3 isUrgent:1 withPid:{objc_msgSend(v2, "pid")}];
    }
  }

  else
  {
    v10 = v4;
  }

LABEL_16:
}

void sub_1007DF6BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak(v22);
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

void sub_1007DF758(uint64_t a1)
{
  v3 = +[BTAppInteraction instance];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [v3 urgentAssertionInvalidationCallback:WeakRetained];
}

void sub_1007DF7DC(uint64_t a1)
{
  v3 = +[BTAppInteraction instance];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [v3 assertionInvalidationCallback:WeakRetained];
}

void sub_1007DF8F8(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 96);
  v7 = [*(a1 + 40) name];
  v3 = [v2 objectForKeyedSubscript:?];
  v4 = *(a1 + 40);

  if (v3 == v4)
  {
    v5 = *(a1 + 40);
    v6 = *(*(a1 + 32) + 96);
    v8 = [v5 name];
    [v6 removeObjectForKey:?];
  }
}

void sub_1007DFA60(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 88);
  v3 = [*(a1 + 40) name];
  v4 = [v2 objectForKeyedSubscript:v3];
  v5 = *(a1 + 40);

  if (v4 == v5)
  {
    v6 = qword_100BCE8D8;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = [*(a1 + 40) name];
      v11 = 136446210;
      v12 = [v7 UTF8String];
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Removing invalidated process assertion for application %{public}s", &v11, 0xCu);
    }

    v8 = *(a1 + 40);
    v9 = *(*(a1 + 32) + 88);
    v10 = [v8 name];
    [v9 removeObjectForKey:v10];
  }
}

void sub_1007DFDE8(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 88) keysOfEntriesPassingTest:&stru_100B0E3B8];
  v3 = *(*(a1 + 32) + 88);
  v4 = [v2 allObjects];
  [v3 removeObjectsForKeys:v4];

  v7 = [*(*(a1 + 32) + 96) keysOfEntriesPassingTest:&stru_100B0E3D8];

  v5 = *(*(a1 + 32) + 96);
  v6 = [v7 allObjects];
  [v5 removeObjectsForKeys:v6];

  if (![*(*(a1 + 32) + 88) count] && !objc_msgSend(*(*(a1 + 32) + 96), "count"))
  {
    [*(a1 + 32) invalidateAssertionTimer];
  }
}

BOOL sub_1007DFF30(id a1, NSString *a2, ProcessAssertion *a3, BOOL *a4)
{
  v4 = a3;
  [(ProcessAssertion *)v4 setSecondsLeft:[(ProcessAssertion *)v4 secondsLeft]- 1];
  v5 = [(ProcessAssertion *)v4 secondsLeft];
  if (!v5)
  {
    v6 = qword_100BCE8D8;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = [(ProcessAssertion *)v4 name];
      v9 = 136446210;
      v10 = [v7 UTF8String];
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Removing expired process assertion for application %{public}s", &v9, 0xCu);
    }

    [(ProcessAssertion *)v4 invalidate];
  }

  return v5 == 0;
}

BOOL sub_1007E006C(id a1, NSString *a2, ProcessAssertion *a3, BOOL *a4)
{
  v4 = a3;
  [(ProcessAssertion *)v4 setSecondsLeft:[(ProcessAssertion *)v4 secondsLeft]- 1];
  v5 = [(ProcessAssertion *)v4 secondsLeft];
  if (!v5)
  {
    [(ProcessAssertion *)v4 invalidate];
    v6 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_INFO))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "(EE) Expired URGENT Process Assertion", v8, 2u);
    }
  }

  return v5 == 0;
}

void sub_1007E02BC(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 40) objectForKey:*(a1 + 40)];
  v3 = v2;
  if (*(a1 + 48) != 1 || ([v2 isApp]) && !*(*(a1 + 32) + 64))
  {
    v4 = [[UserNotification alloc] initWithType:0 device:0 bundleID:*(a1 + 40)];
    v5 = *(a1 + 32);
    v6 = *(v5 + 64);
    *(v5 + 64) = v4;

    v7 = [LSApplicationProxy applicationProxyForIdentifier:*(a1 + 40)];
    v8 = [v7 localizedNameForContext:0];
    v22 = sub_100438B14(@"CLOSE", @"Close");
    v9 = sub_100438B14(@"SETTINGS", @"Settings");
    if (*(a1 + 49) == 1)
    {
      v10 = sub_100438B14(@"LE_DENYLIST_ENABLED_HEADER", @"Allow New Connections");
      v24 = 0;
      v11 = v8;
      if (!v8)
      {
        v11 = *(a1 + 40);
      }

      v12 = [NSString stringWithValidatedFormat:v10 validFormatSpecifiers:@"%@" error:&v24, v11];
      v13 = v24;

      if (v12)
      {
        v14 = sub_100438B14(@"LE_DENYLIST_ENABLED_BODY", &stru_100B0F9E0);
        v28[0] = kCFUserNotificationAlertHeaderKey;
        v28[1] = kCFUserNotificationAlertMessageKey;
        v29[0] = v12;
        v29[1] = v14;
        v28[2] = kCFUserNotificationDefaultButtonTitleKey;
        v28[3] = kCFUserNotificationAlternateButtonTitleKey;
        v29[2] = v22;
        v29[3] = v9;
        v28[4] = SBUserNotificationAllowMenuButtonDismissal;
        v29[4] = &__kCFBooleanTrue;
        v15 = [NSDictionary dictionaryWithObjects:v29 forKeys:v28 count:5];

        goto LABEL_13;
      }

      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
      {
        sub_10087ABA0();
      }
    }

    else
    {
      v16 = sub_100438B14(@"LE_POWER_OFF_HEADER", @"Power Off");
      v23 = 0;
      v17 = v8;
      if (!v8)
      {
        v17 = *(a1 + 40);
      }

      v12 = [NSString stringWithValidatedFormat:v16 validFormatSpecifiers:@"%@" error:&v23, v17];
      v13 = v23;

      if (v12)
      {
        v26[0] = kCFUserNotificationAlertHeaderKey;
        v26[1] = kCFUserNotificationDefaultButtonTitleKey;
        v27[0] = v12;
        v27[1] = v22;
        v26[2] = kCFUserNotificationAlternateButtonTitleKey;
        v26[3] = SBUserNotificationAllowMenuButtonDismissal;
        v27[2] = v9;
        v27[3] = &__kCFBooleanTrue;
        v15 = [NSDictionary dictionaryWithObjects:v27 forKeys:v26 count:4];
LABEL_13:
        v18 = CFUserNotificationCreate(kCFAllocatorDefault, 0.0, 0, 0, v15);
        if (v18)
        {
          [*(*(a1 + 32) + 64) setNotification:v18];
          CFRelease(v18);
          RunLoopSource = CFUserNotificationCreateRunLoopSource(kCFAllocatorDefault, v18, sub_1007E0848, 0);
          if (RunLoopSource)
          {
            [*(*(a1 + 32) + 64) setRunLoopSource:RunLoopSource];
            CFRelease(RunLoopSource);
          }

          else
          {
            v21 = qword_100BCE8D8;
            if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
            {
              sub_10087AB30([*(a1 + 40) UTF8String], v25);
            }
          }

          v13 = v15;
        }

        else
        {
          v20 = qword_100BCE8D8;
          if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
          {
            sub_10087AB68([*(a1 + 40) UTF8String], v25);
          }
        }

        goto LABEL_28;
      }

      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
      {
        sub_10087AAC0();
      }
    }

    v12 = 0;
LABEL_28:
  }
}

void sub_1007E0848(uint64_t a1, uint64_t a2)
{
  v4 = +[BTAppInteraction instance];
  [v4 powerAlertCallback:a1 flags:a2];
}

void sub_1007E0930(uint64_t a1)
{
  v2 = qword_100BCE8D8;
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(*(a1 + 32) + 64) bundleID];
    v4 = [v3 UTF8String];
    v5 = *(a1 + 40);
    v6 = "unknown";
    if (v5 == 1)
    {
      v6 = "settings";
    }

    if (v5)
    {
      v7 = v6;
    }

    else
    {
      v7 = "cancel";
    }

    v12 = 136446466;
    v13 = v4;
    v14 = 2082;
    v15 = v7;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "User responded to power notification callback for application %{public}s with %{public}s button", &v12, 0x16u);
  }

  if (*(a1 + 40) == 1)
  {
    v8 = +[LSApplicationWorkspace defaultWorkspace];
    v9 = [NSURL URLWithString:@"prefs:root=Bluetooth"];
    [v8 openSensitiveURL:v9 withOptions:0];
  }

  v10 = *(a1 + 32);
  v11 = *(v10 + 64);
  *(v10 + 64) = 0;
}

void sub_1007E0BA8(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 40) objectForKey:*(a1 + 40)];
  if ([v2 isApp])
  {
    v26 = [[UserNotification alloc] initWithType:*(a1 + 56) device:*(a1 + 48) bundleID:*(a1 + 40)];
    v3 = *(*(a1 + 32) + 72);
    v28[0] = _NSConcreteStackBlock;
    v28[1] = 3221225472;
    v28[2] = sub_1007E1274;
    v28[3] = &unk_100B0E400;
    v29 = *(a1 + 40);
    v4 = [v3 indexOfObjectPassingTest:v28];
    if (v4 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v24 = [*(*(a1 + 32) + 72) objectAtIndexedSubscript:v4];
      v5 = [(__CFString *)v24 device];
      if ([v5 isEqual:*(a1 + 48)])
      {
        v6 = *(a1 + 56) == 1;

        if (!v6)
        {
          log = qword_100BCE8D8;
          if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
          {
            v7 = [*(a1 + 40) UTF8String];
            *buf = 136446210;
            *&buf[4] = v7;
            _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "Suppressing duplicate notification for application %{public}s", buf, 0xCu);
          }

          goto LABEL_34;
        }
      }

      else
      {
      }

      [*(a1 + 32) cancelAppLaunchAlert:*(a1 + 40)];
    }

    if (*(a1 + 56) == 1)
    {
      v8 = @"APP_LAUNCH_HEADER_DISCONNECTED";
    }

    else
    {
      v8 = @"APP_LAUNCH_HEADER_GENERAL";
    }

    v24 = v8;
    log = sub_100438B14(v24, @"APP_LAUNCH_BODY");
    v9 = [(UserNotification *)v26 bundleID];
    v23 = [LSApplicationProxy applicationProxyForIdentifier:v9];

    v10 = [v23 localizedNameForContext:0];
    v11 = v10;
    if (!v10)
    {
      v11 = *(a1 + 40);
    }

    v12 = v11;
    if (qword_100B508D0 != -1)
    {
      sub_10087AC10();
    }

    sub_10004FFDC(off_100B508C8, *(a1 + 48), buf);
    if (v33 >= 0)
    {
      v13 = buf;
    }

    else
    {
      v13 = *buf;
    }

    v14 = [NSString stringWithUTF8String:v13];
    if (v33 < 0)
    {
      operator delete(*buf);
    }

    v27 = 0;
    v15 = [NSString stringWithValidatedFormat:log validFormatSpecifiers:@"%@%@" error:&v27, v14, v12];
    v22 = v27;
    if (!v15)
    {
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
      {
        sub_10087ACA8();
      }

      goto LABEL_33;
    }

    v21 = sub_100438B14(@"CLOSE", @"Close");
    v16 = sub_100438B14(@"VIEW", @"View");
    v30[0] = kCFUserNotificationAlertHeaderKey;
    v30[1] = kCFUserNotificationAlertMessageKey;
    v31[0] = v12;
    v31[1] = v15;
    v30[2] = kCFUserNotificationDefaultButtonTitleKey;
    v30[3] = kCFUserNotificationAlternateButtonTitleKey;
    v30[4] = kCFUserNotificationAlertTopMostKey;
    v30[5] = SBUserNotificationDontDismissOnUnlock;
    v31[4] = &__kCFBooleanTrue;
    v31[5] = &__kCFBooleanTrue;
    v30[6] = SBUserNotificationButtonTagForUnlockActionKey;
    v30[7] = SBUserNotificationSoundRepeatDurationKey;
    v31[2] = v16;
    v31[3] = v21;
    v31[6] = &off_100B33D20;
    v31[7] = &off_100B33D38;
    v30[8] = SBUserNotificationSystemSoundIDKey;
    v31[8] = &off_100B33D50;
    v17 = [NSDictionary dictionaryWithObjects:v31 forKeys:v30 count:9];
    v18 = CFUserNotificationCreate(kCFAllocatorDefault, 0.0, 0, 0, v17);
    if (v18)
    {
      [(UserNotification *)v26 setNotification:v18];
      CFRelease(v18);
      RunLoopSource = CFUserNotificationCreateRunLoopSource(kCFAllocatorDefault, v18, sub_1007E12C8, 0);
      if (RunLoopSource)
      {
        [(UserNotification *)v26 setRunLoopSource:RunLoopSource];
        CFRelease(RunLoopSource);
        [*(*(a1 + 32) + 72) addObject:v26];
LABEL_32:

LABEL_33:
LABEL_34:

        goto LABEL_35;
      }

      v20 = qword_100BCE8D8;
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        sub_10087AC38([*(a1 + 40) UTF8String], buf);
      }
    }

    else
    {
      v20 = qword_100BCE8D8;
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        sub_10087AC70([*(a1 + 40) UTF8String], buf);
      }
    }

    goto LABEL_32;
  }

LABEL_35:
}

id sub_1007E1274(uint64_t a1, void *a2)
{
  v3 = [a2 bundleID];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

void sub_1007E12C8(uint64_t a1, uint64_t a2)
{
  v4 = +[BTAppInteraction instance];
  [v4 appLaunchCallback:a1 flags:a2];
}

void sub_1007E13D4(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 72);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1007E149C;
  v4[3] = &unk_100B0E400;
  v5 = *(a1 + 40);
  v3 = [v2 indexOfObjectPassingTest:v4];
  if (v3 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [*(*(a1 + 32) + 72) removeObjectAtIndex:v3];
  }
}

id sub_1007E149C(uint64_t a1, void *a2)
{
  v3 = [a2 bundleID];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

void sub_1007E1568(void *a1)
{
  v2 = *(a1[4] + 72);
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_1007E18F0;
  v24[3] = &unk_100B0E420;
  v24[4] = a1[5];
  v3 = [v2 indexOfObjectPassingTest:v24];
  if (v3 == 0x7FFFFFFFFFFFFFFFLL)
  {
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
    {
      sub_10087AD18();
    }
  }

  else
  {
    v4 = [*(a1[4] + 72) objectAtIndexedSubscript:v3];
    v5 = qword_100BCE8D8;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [v4 bundleID];
      v7 = v6;
      v8 = [v6 UTF8String];
      v9 = a1[6];
      if (v9)
      {
        if (v9 == 1)
        {
          v10 = "cancel";
        }

        else
        {
          v11 = [&off_100B33D20 intValue];
          v10 = "unknown";
          if (v9 == v11)
          {
            v10 = "unlock";
          }
        }
      }

      else
      {
        v10 = "default";
      }

      *buf = 136446466;
      v26 = v8;
      v27 = 2082;
      v28 = v10;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "User responded to app launch notification callback for application %{public}s with %{public}s button", buf, 0x16u);
    }

    v12 = a1[6];
    if (!v12 || v12 == [&off_100B33D20 intValue])
    {
      v13 = qword_100BCE8D8;
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = [v4 bundleID];
        v15 = v14;
        v16 = [v14 UTF8String];
        *buf = 136446210;
        v26 = v16;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Attempting to launch application %{public}s", buf, 0xCu);
      }

      v17 = +[FBSOpenApplicationService serviceWithDefaultShellEndpoint];
      v18 = [v4 bundleID];
      v19 = _NSConcreteStackBlock;
      v20 = 3221225472;
      v21 = sub_1007E1924;
      v22 = &unk_100B0E448;
      v23 = v4;
      [v17 openApplication:v18 withOptions:0 completion:&v19];
    }

    [*(a1[4] + 72) removeObjectAtIndex:{v3, v19, v20, v21, v22}];
  }
}

void sub_1007E1924(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = qword_100BCE8D8;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = [*(a1 + 32) bundleID];
      v9 = [NSString stringWithFormat:@"Failed to launch application %@ with error %@", v8, v6];
      *buf = 136446210;
      v15 = [v9 UTF8String];
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%{public}s", buf, 0xCu);
    }
  }

  else
  {
    v10 = [v5 isValid];
    v11 = qword_100BCE8D8;
    v7 = v11;
    if (v10)
    {
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = [*(a1 + 32) bundleID];
        *buf = 136446466;
        v15 = [v12 UTF8String];
        v16 = 1026;
        v17 = [v5 pid];
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Launched application: %{public}s, pid: %{public}ul", buf, 0x12u);
      }
    }

    else if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v13 = [*(a1 + 32) bundleID];
      *buf = 136446210;
      v15 = [v13 UTF8String];
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Failed to lookup the process ID of %{public}s", buf, 0xCu);
    }
  }
}

void sub_1007E1CCC(uint64_t a1)
{
  if (!*(*(*(a1 + 40) + 8) + 40) || (v2 = *(*(a1 + 32) + 80), v3 = -[PairingNotification initWithType:passkey:device:]([PairingNotification alloc], "initWithType:passkey:device:", *(a1 + 56), *(a1 + 48), *(*(*(a1 + 40) + 8) + 40)), [v2 addObject:v3], v3, objc_msgSend(*(*(a1 + 32) + 80), "count") < 2))
  {
    if ([*(*(a1 + 32) + 80) count])
    {
      v6 = [*(*(a1 + 32) + 80) objectAtIndexedSubscript:0];
      v7 = v6;
      if (v6 && ![v6 notification])
      {
        buf = 0uLL;
        v74 = 0;
        if (qword_100B508D0 != -1)
        {
          sub_10087AD94();
        }

        v8 = off_100B508C8;
        v9 = [v7 device];
        sub_10004FFDC(v8, v9, v70);
        if ((v72 & 0x80u) == 0)
        {
          v10 = v72;
        }

        else
        {
          v10 = v71;
        }

        if (v10)
        {
          if (qword_100B508D0 != -1)
          {
            sub_10087AC10();
          }

          v11 = off_100B508C8;
          v12 = [v7 device];
          sub_10004FFDC(v11, v12, &buf);
        }

        else
        {
          if (qword_100B508D0 != -1)
          {
            sub_10087AC10();
          }

          v13 = off_100B508C8;
          v12 = [v7 device];
          sub_100046458(v13, v12, 0);
          v14 = sub_100063D0C();
          v15 = v14;
          sub_100007E30(&buf, [v14 UTF8String]);
        }

        if (v72 < 0)
        {
          operator delete(*v70);
        }

        v56 = sub_100438B14(@"PAIRING_TITLE", @"Pairing");
        v53 = sub_100438B14(@"CANCEL", @"Cancel");
        v52 = sub_100438B14(@"PAIR", @"Pair");
        if (v74 >= 0)
        {
          p_buf = &buf;
        }

        else
        {
          p_buf = buf;
        }

        v54 = [NSString stringWithUTF8String:p_buf];
        v55 = MGCopyAnswer();
        v68[0] = kCFUserNotificationAlertTopMostKey;
        v68[1] = SBUserNotificationAllowMenuButtonDismissal;
        v69[0] = &__kCFBooleanTrue;
        v69[1] = &__kCFBooleanTrue;
        v68[2] = SBUserNotificationDismissOnLock;
        v68[3] = kCFUserNotificationAlertHeaderKey;
        v69[2] = &__kCFBooleanTrue;
        v69[3] = v56;
        v17 = [NSDictionary dictionaryWithObjects:v69 forKeys:v68 count:4];
        dictionary = [v17 mutableCopy];

        v18 = sub_10000C798();
        v19 = (*(*v18 + 392))(v18);
        v20 = sub_10000C798();
        v21 = (*(*v20 + 296))(v20);
        if (qword_100B508D0 != -1)
        {
          sub_10087AC10();
        }

        v22 = off_100B508C8;
        v23 = [v7 device];
        v24 = sub_10078DEFC(v22, v23);

        v25 = [v7 pairingType];
        v26 = 0;
        v58 = &stru_100B0F9E0;
        if (v25 > 1)
        {
          if (v25 == 2)
          {
            v38 = sub_100438B14(@"PASSKEY_ENTRY_MESSAGE", @"Body");
            v60 = 0;
            v58 = [NSString stringWithValidatedFormat:v38 validFormatSpecifiers:@"%@%@%@%@" error:&v60, v54, v55, v54, v54];
            v26 = v60;

            if (!v58)
            {
              if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
              {
                sub_10087AE18();
              }

              goto LABEL_59;
            }

            v28 = v52;
            v27 = v53;
            v66[0] = kCFUserNotificationTextFieldTitlesKey;
            v66[1] = kCFUserNotificationKeyboardTypesKey;
            v67[0] = &stru_100B0F9E0;
            v67[1] = &off_100B33D68;
            v39 = [NSDictionary dictionaryWithObjects:v67 forKeys:v66 count:2];
            [(__CFDictionary *)dictionary addEntriesFromDictionary:v39];

LABEL_70:
            [(__CFDictionary *)dictionary setObject:v58 forKey:kCFUserNotificationAlertMessageKey];
            if (v28)
            {
              [(__CFDictionary *)dictionary setObject:v28 forKey:kCFUserNotificationDefaultButtonTitleKey];
            }

            if (v27)
            {
              [(__CFDictionary *)dictionary setObject:v27 forKey:kCFUserNotificationAlternateButtonTitleKey];
            }

            v47 = CFUserNotificationCreate(kCFAllocatorDefault, 0.0, 0x10003uLL, 0, dictionary);
            if (v47)
            {
              [v7 setNotification:v47];
              CFRelease(v47);
              RunLoopSource = CFUserNotificationCreateRunLoopSource(kCFAllocatorDefault, v47, sub_1007E2B5C, 0);
              if (RunLoopSource)
              {
                [v7 setRunLoopSource:RunLoopSource];
                CFRelease(RunLoopSource);
                goto LABEL_83;
              }

              v49 = qword_100BCE8D8;
              if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
              {
                v51 = [v7 device];
                sub_10087AFD8(v51, v70);
              }
            }

            else
            {
              v49 = qword_100BCE8D8;
              if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
              {
                v50 = [v7 device];
                sub_10087B020(v50, v70);
              }
            }

            [*(*(a1 + 32) + 80) removeObjectAtIndex:0];
LABEL_83:

            if (SHIBYTE(v74) < 0)
            {
              operator delete(buf);
            }

            goto LABEL_18;
          }

          v27 = 0;
          v28 = 0;
          if (v25 != 4)
          {
            goto LABEL_70;
          }

          v30 = sub_100438B14(@"NUMERIC_MESSAGE", @"Body");
          v59 = 0;
          v58 = +[NSString stringWithValidatedFormat:validFormatSpecifiers:error:](NSString, "stringWithValidatedFormat:validFormatSpecifiers:error:", v30, @"%@%@%06u%@", &v59, v54, v55, [v7 passkey], v54, v52, v53);
          v26 = v59;

          if (!v58)
          {
            if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
            {
              sub_10087ADA8();
            }

            goto LABEL_59;
          }

LABEL_69:
          v28 = v52;
          v27 = v53;
          goto LABEL_70;
        }

        if (v25)
        {
          v27 = 0;
          v28 = 0;
          if (v25 != 1)
          {
            goto LABEL_70;
          }

          v29 = sub_100438B14(@"PASSKEY_DISPLAY_MESSAGE", @"Body");
          v61 = 0;
          v58 = +[NSString stringWithValidatedFormat:validFormatSpecifiers:error:](NSString, "stringWithValidatedFormat:validFormatSpecifiers:error:", v29, @"%@%@%06u%@", &v61, v54, v55, [v7 passkey], v54, v52);
          v26 = v61;

          if (v58)
          {
            v28 = v53;
            v27 = 0;
            goto LABEL_70;
          }

          if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
          {
            sub_10087AE88();
          }

LABEL_59:
          v27 = 0;
          v28 = 0;
          v58 = 0;
          goto LABEL_83;
        }

        v31 = sub_100438B14(@"JUST_WORKS_MESSAGE", @"Body");
        v65 = 0;
        v58 = [NSString stringWithValidatedFormat:v31 validFormatSpecifiers:@"%@%@" error:&v65, v54, v55];
        v26 = v65;

        if (!v58)
        {
          if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
          {
            sub_10087AF68();
          }

          goto LABEL_59;
        }

        if ((v19 & v21 & v24) != 1)
        {
          goto LABEL_69;
        }

        v32 = qword_100BCE8D8;
        if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
        {
          *v70 = 0;
          _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "Pairing LE HID with old iPad. Show modified message", v70, 2u);
        }

        if (_os_feature_enabled_impl())
        {
          if (qword_100B508D0 != -1)
          {
            sub_10087AC10();
          }

          v33 = off_100B508C8;
          v34 = [v7 device];
          sub_10078380C(v33, v34, @"HIDDeviceUnknownBehavior");

          if (qword_100B508D0 != -1)
          {
            sub_10087AC10();
          }

          v35 = off_100B508C8;
          v36 = [v7 device];
          sub_100007E30(v64, "HIDDeviceKnownPoorBehavior");
          sub_10078787C(v35, v36, v64);
          if ((v64[23] & 0x80000000) == 0)
          {
            goto LABEL_65;
          }

          v37 = v64;
        }

        else
        {
          if (qword_100B508D0 != -1)
          {
            sub_10087AC10();
          }

          v40 = off_100B508C8;
          v36 = [v7 device];
          sub_100007E30(v63, "HIDDeviceUnknownBehavior");
          sub_10078787C(v40, v36, v63);
          if ((v63[23] & 0x80000000) == 0)
          {
            goto LABEL_65;
          }

          v37 = v63;
        }

        operator delete(*v37);
LABEL_65:

        v41 = MGGetBoolAnswer();
        v42 = @"WIFI";
        if (v41)
        {
          v42 = @"WLAN";
        }

        v43 = [NSString stringWithFormat:@"%@_JUST_WORKS_MESSAGE_HID_OLD", v42];
        v44 = sub_100438B14(v43, @"Body");
        v62 = v26;
        v45 = [NSString stringWithValidatedFormat:v44 validFormatSpecifiers:@"%@%@" error:&v62, v54, v55];
        v46 = v62;

        if (!v45)
        {
          if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
          {
            sub_10087AEF8();
          }

          v27 = 0;
          v28 = 0;
          v58 = 0;
          v26 = v46;
          goto LABEL_83;
        }

        v26 = v46;
        v58 = v45;
        goto LABEL_69;
      }
    }

    else
    {
      v7 = 0;
    }

LABEL_18:

    return;
  }

  v4 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_INFO))
  {
    v5 = *(*(*(a1 + 40) + 8) + 40);
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Waiting for current pairing prompt to go away before displaying prompt for device %@", &buf, 0xCu);
  }
}

void sub_1007E2920(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *a14, void *a15, void *a16, void *a17, void *a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (a35 < 0)
  {
    operator delete(__p);
  }

  if (*(v38 - 105) < 0)
  {
    operator delete(*(v38 - 128));
  }

  _Unwind_Resume(a1);
}

void sub_1007E2B5C(uint64_t a1, uint64_t a2)
{
  v4 = +[BTAppInteraction instance];
  [v4 pairingAlertCallback:a1 flags:a2];
}

void sub_1007E2C68(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = *(*(a1 + 40) + 80);
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1007E2D6C;
    v7[3] = &unk_100B059F8;
    v4 = v2;
    v5 = *(a1 + 40);
    v8 = v4;
    v9 = v5;
    [v3 enumerateObjectsUsingBlock:v7];
  }

  else
  {
    v6 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Clearing all active pairing notifications", buf, 2u);
    }

    [*(*(a1 + 40) + 80) removeAllObjects];
  }
}

void sub_1007E2D6C(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  v8 = [v7 device];
  v9 = [v8 isEqual:*(a1 + 32)];

  if (v9)
  {
    v10 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      v11 = "queued";
      v12 = *(a1 + 32);
      if (!a3)
      {
        v11 = "active";
      }

      v13 = 136446466;
      v14 = v11;
      v15 = 2112;
      v16 = v12;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Clearing %{public}s pairing notification for device %@", &v13, 0x16u);
    }

    [*(*(a1 + 40) + 80) removeObjectAtIndex:a3];
    *a4 = 1;
  }
}

void sub_1007E2F30(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 80);
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_1007E33A8;
  v23[3] = &unk_100B0E420;
  v23[4] = *(a1 + 40);
  v3 = [v2 indexOfObjectPassingTest:v23];
  if (v3 == 0x7FFFFFFFFFFFFFFFLL)
  {
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
    {
      sub_10087B090();
    }

    return;
  }

  v4 = [*(*(a1 + 32) + 80) objectAtIndexedSubscript:v3];
  v5 = [v4 pairingType];
  v6 = 0;
  v7 = 1;
  if (v5 > 1)
  {
    if (v5 == 2)
    {
      v13 = CFUserNotificationGetResponseValue(*(a1 + 40), kCFUserNotificationTextFieldValuesKey, 0);
      v8 = v13;
      if (v13)
      {
        [v4 setPasskey:{-[NSObject intValue](v13, "intValue")}];
      }

      v14 = qword_100BCE8D8;
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = [v4 device];
        v16 = [v4 passkey];
        v17 = *(a1 + 48);
        v18 = [v4 pairingType];
        v19 = "unknown";
        *buf = 138413314;
        v25 = v15;
        if (v17 == 1)
        {
          v19 = "cancel";
        }

        v27 = v16;
        v28 = 2082;
        v26 = 2048;
        if (!v17)
        {
          v19 = "pair";
        }

        v29 = v19;
        v30 = 2048;
        v31 = v17;
        v32 = 1024;
        v33 = v18;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "User responded to pairing notification for device %@ with passkey %lu and %{public}s (%ld) button for pairing type:%d", buf, 0x30u);
      }

      v6 = 0;
      goto LABEL_25;
    }

    if (v5 == 4)
    {
LABEL_10:
      v8 = qword_100BCE8D8;
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = [v4 device];
        v10 = *(a1 + 48);
        v11 = [v4 pairingType];
        v12 = "unknown";
        *buf = 138413058;
        v25 = v9;
        if (v10 == v7)
        {
          v12 = "cancel";
        }

        v26 = 2082;
        if (v10 == v6)
        {
          v12 = "pair";
        }

        v27 = v12;
        v28 = 2048;
        v29 = v10;
        v30 = 1024;
        LODWORD(v31) = v11;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "User responded to pairing notification for device %@ with %{public}s (%ld) button for pairing type:%d", buf, 0x26u);
      }

LABEL_25:
    }
  }

  else
  {
    if (!v5)
    {
      goto LABEL_10;
    }

    if (v5 == 1)
    {
      v7 = 0;
      v6 = 1;
      goto LABEL_10;
    }
  }

  if (qword_100B508C0 != -1)
  {
    sub_10087B068();
  }

  v20 = off_100B508B8;
  v21 = [v4 device];
  sub_1007BFA80(v20, v21, *(a1 + 48) == v6, [v4 passkey]);

  [*(*(a1 + 32) + 80) removeObjectAtIndex:v3];
  if ([*(*(a1 + 32) + 80) count] && *(*(a1 + 32) + 8))
  {
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_1007E33DC;
    v22[3] = &unk_100ADF820;
    v22[4] = *(a1 + 32);
    dispatch_async(&_dispatch_main_q, v22);
  }
}

void sub_1007E33DC(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 8);
  v4 = [*(v1 + 80) objectAtIndexedSubscript:0];
  v3 = [v4 device];
  (*(*v2 + 24))(v2, v3);
}

void sub_1007E3968(uint64_t a1)
{
  *(*(a1 + 32) + 32) = 1;
  v20 = 0;
  v2 = [CBAccessoryLogging getProductNameFromProductID:*(a1 + 48)];
  v3 = [NSString stringWithFormat:@"%@ Issue Detected", v2];
  alertHeader = sub_100438B14(@"TITLE", v3);

  v4 = [NSString stringWithFormat:@"An issue was detected with your %@. Do you wish to file a radar with AirWave?", v2];
  v5 = sub_100438B14(@"CONTENT", v4);

  v6 = sub_100438B14(@"OPEN_AIRWAVE", @"Open AirWave");
  v7 = sub_100438B14(@"NO_THANKS", @"No thanks");
  CFUserNotificationDisplayAlert(0.0, 1uLL, 0, 0, 0, alertHeader, v5, v6, v7, 0, &v20);
  if (v20)
  {
    if (v20 == 1)
    {
      v8 = qword_100BCE8D8;
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v9 = "displayAirWaveLaunchNotification: Dismissing crash log";
LABEL_10:
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, v9, buf, 2u);
      }
    }

    else
    {
      v8 = qword_100BCE8D8;
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v9 = "displayAirWaveLaunchNotification: No response";
        goto LABEL_10;
      }
    }
  }

  else
  {
    v10 = [NSURLComponents componentsWithString:@"wayfinder://"];
    [v10 setHost:@"debug"];
    v11 = objc_opt_new();
    v12 = [[NSString alloc] initWithFormat:@"%u", *(a1 + 52)];
    v13 = [NSURLQueryItem queryItemWithName:@"opcode" value:v12];
    [v11 addObject:v13];

    v14 = [NSURLQueryItem queryItemWithName:@"findMySerialNumber" value:*(a1 + 40)];
    [v11 addObject:v14];

    [v10 setQueryItems:v11];
    v15 = qword_100BCE8D8;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = [v10 string];
      *buf = 138543362;
      v22 = v16;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "displayAirWaveLaunchNotification: Launching AirWave with URL %{public}@", buf, 0xCu);
    }

    v17 = +[LSApplicationWorkspace defaultWorkspace];
    v18 = [v10 URL];
    [v17 openURL:v18 configuration:0 completionHandler:&stru_100B0E4B0];
  }

  *(*(a1 + 32) + 32) = 0;
}

void sub_1007E3DD8(id a1, NSDictionary *a2, NSError *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = qword_100BCE8D8;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [(NSError *)v5 description];
    v8 = 138412546;
    v9 = v4;
    v10 = 2112;
    v11 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "displayAirWaveLaunchNotification: AirWave launch result %@, error %@", &v8, 0x16u);
  }
}

void sub_1007E42C4(uint64_t a1)
{
  *(*(a1 + 32) + 32) = 1;
  v10 = 0;
  v2 = sub_100438B14(@"FILE_A_RADAR", @"File a Radar");
  v3 = sub_100438B14(@"NO_THANKS", @"No thanks");
  CFUserNotificationDisplayAlert(0.0, 1uLL, 0, 0, 0, *(a1 + 40), *(a1 + 48), v2, v3, 0, &v10);
  if (v10)
  {
    if (v10 == 1)
    {
      if (qword_100B51308 != -1)
      {
        sub_10087B1E8();
      }

      v4 = sub_1004B22F4(qword_100B51300, a1 + 64, 6, 1u);
      v5 = qword_100BCE8D8;
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        v12 = v4;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "showFoundAccessoryCrashAlert: Dismissing crash log (result = %d)", buf, 8u);
      }
    }

    else if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
    {
      sub_10087B210();
    }
  }

  else
  {
    if (qword_100B51308 != -1)
    {
      sub_10087B1E8();
    }

    v6 = sub_1004B22F4(qword_100B51300, a1 + 64, 5, 1u);
    v7 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v12 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "showFoundAccessoryCrashAlert: Requesting crash log (result = %d)", buf, 8u);
    }

    if (v6 == 312 || v6 == 12)
    {
      v8 = [NSString stringWithFormat:@"Crash retrieval failed as the connection to %@ has been lost.  You will be prompted again after you re-connect.", *(a1 + 56)];
      v9 = sub_100438B14(@"OK", @"OK");
      CFUserNotificationDisplayAlert(0.0, 1uLL, 0, 0, 0, @"No Longer Connected", v8, v9, 0, 0, &v10);
    }
  }

  *(*(a1 + 32) + 32) = 0;
}

void sub_1007E49B0(uint64_t a1)
{
  v5 = 0;
  v2 = sub_100438B14(@"FILE_A_RADAR", @"File a Radar");
  v3 = sub_100438B14(@"NO_THANKS", @"No thanks");
  CFUserNotificationDisplayAlert(0.0, 1uLL, 0, 0, 0, *(a1 + 32), *(a1 + 40), v2, v3, 0, &v5);
  if (!v5)
  {
    if (*(a1 + 72))
    {
      v4 = 1;
    }

    else
    {
      v4 = 2;
    }

    [*(a1 + 48) openTapToRadarWithAccessoryLogs:*(a1 + 56) reason:v4 pid:*(a1 + 64)];
  }
}

void sub_1007E4F5C(uint64_t a1)
{
  *(*(a1 + 32) + 32) = 1;
  v6 = 0;
  v2 = sub_100438B14(@"FILE_A_RADAR", @"File a Radar");
  v3 = sub_100438B14(@"NO_THANKS", @"No thanks");
  CFUserNotificationDisplayAlert(0.0, 1uLL, 0, 0, 0, *(a1 + 40), *(a1 + 48), v2, v3, 0, &v6);
  if (!v6)
  {
    if (qword_100B50950 != -1)
    {
      sub_10087B37C();
    }

    if (sub_100354C8C(off_100B50948, *(a1 + 76) | (*(a1 + 80) << 32)))
    {
      [*(a1 + 32) openTapToRadarWithAccessoryLogs:0 reason:*(a1 + 72) pid:*(a1 + 64)];
    }

    else
    {
      v4 = [NSString stringWithFormat:@"Your connection to the %@ does not exist not opening Tap-to-Radar.  Please re-connect your %@ and file a radar separately.", *(a1 + 56), *(a1 + 56)];;
      v5 = sub_100438B14(@"OK", @"OK");
      CFUserNotificationDisplayAlert(0.0, 1uLL, 0, 0, 0, @"No Longer Connected", v4, v5, 0, 0, &v6);
    }
  }

  *(*(a1 + 32) + 32) = 0;
}

void sub_1007E5B80(id a1, NSDictionary *a2, NSError *a3)
{
  v4 = a2;
  v5 = a3;
  if (v5 && os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
  {
    sub_10087B414();
  }
}

void sub_1007E5D04(uint64_t a1)
{
  v24 = 0;
  CFUserNotificationDisplayAlert(0.0, 1uLL, 0, 0, 0, @"Your device has BT Issues", @"File a radar now?", @"OK", @"Cancel", 0, &v24);
  if (v24)
  {
    return;
  }

  v2 = *(a1 + 64);
  switch(v2)
  {
    case 0:
      v8 = @"tap-to-radar://new?Title=BT%20Controller%20Crashed&Classification=Crash%2FHang%2FData%20Loss";
      goto LABEL_9;
    case 2:
      v6 = sub_1007E60E4(*(a1 + 32));
      v4 = [@"tap-to-radar://new?Title=" stringByAppendingString:v6];

      v5 = [v4 stringByAppendingString:@"&Classification=Security"];
      goto LABEL_7;
    case 1:
      v3 = sub_1007E60E4(*(a1 + 32));
      v4 = [@"tap-to-radar://new?Title=BT%20Controller%20Error%20Found%3A%20" stringByAppendingString:v3];

      v5 = [v4 stringByAppendingString:@"&Classification=Crash%2FHang%2FData%20Loss"];
LABEL_7:
      v7 = v5;

      v8 = v7;
LABEL_9:
      v9 = [(__CFString *)v8 stringByAppendingString:@"&ComponentID="];

      v10 = [v9 stringByAppendingString:*(a1 + 40)];

      v11 = [v10 stringByAppendingString:@"&ComponentName="];

      v12 = sub_1007E60E4(*(a1 + 48));
      v13 = [v11 stringByAppendingString:v12];

      v14 = [v13 stringByAppendingString:@"&ComponentVersion="];

      v15 = sub_1007E60E4(*(a1 + 56));
      v16 = [v14 stringByAppendingString:v15];

      v17 = qword_100BCE8D8;
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v18 = v16;
        v19 = [v16 UTF8String];
        *buf = 136446210;
        v26 = v19;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "btControllerTapToRadar: Launch TapToRadar URL : %{public}s", buf, 0xCu);
      }

      v20 = [NSURL URLWithString:v16];
      v21 = +[LSApplicationWorkspace defaultWorkspace];
      [v21 openURL:v20 configuration:0 completionHandler:&stru_100B0E568];

      return;
  }

  v22 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    v23 = *(a1 + 64);
    *buf = 67109120;
    LODWORD(v26) = v23;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Invalid Tap-To-Radar Type %d", buf, 8u);
  }
}

id sub_1007E60E4(void *a1)
{
  v1 = a1;
  v2 = [NSCharacterSet characterSetWithCharactersInString:@"0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"];
  v3 = [v1 stringByAddingPercentEncodingWithAllowedCharacters:v2];

  return v3;
}

void sub_1007E647C()
{
  v0 = objc_autoreleasePoolPush();
  qword_100BC7D88 = [NSSet setWithObjects:@"d84ce3142fa61cd22beef74189754af4c0e56f9a98fa18ff2d9c84610585c349", @"df9a4ebeed75ee796aa09fc2a011436ecdb0ad20a3b3391f10dc279bfe16dfcd", @"2974cb2f2c08e11b8e5d536ab9c8ec5e519d9149adf767f522a371a2a57889eb", @"5781d21efafa3958b73feb2132b454fb069ee116bb771fb7f6581a14bbc551a4", @"feff0aa949da2316fad76d3431dd87a1c59b13b8ce55f3a122251a1eb95e9b2b", @"c6f6ecfedcc9004f2a083b1c187e68e7d3159fee8be3377c8f08b41adaab6bf9", @"056b468ef4a7246bf08d91d27fb80d6641211385e46c49231344c556b726d338", 0];

  objc_autoreleasePoolPop(v0);
}

uint64_t sub_1007E651C()
{
  result = sub_1000154A8();
  if (result)
  {
    v1 = *(*result + 16);

    return v1();
  }

  return result;
}

uint64_t sub_1007E6570()
{
  result = sub_1000154A8();
  if (result)
  {
    v1 = *(*result + 40);

    return v1();
  }

  return result;
}

void *sub_1007E65E0(void *a1)
{
  v2 = (a1 + 1);
  *a1 = off_100B0E6B0;
  a1[1] = &off_100B0E7C0;
  a1[2] = 0;
  v3 = sub_100007EE8();
  sub_100321440(a1 + 24, a1, "com.apple.BTServer.le", *(v3 + 8));
  sub_100321480((a1 + 3));
  v4 = objc_opt_new();
  v5 = a1[2];
  a1[2] = v4;

  if (qword_100B50F78 != -1)
  {
    sub_10087B484();
  }

  sub_100580E68(qword_100B50F70, v2);
  return a1;
}

uint64_t sub_1007E66CC(uint64_t a1)
{
  *a1 = off_100B0E6B0;
  v2 = a1 + 8;
  *(a1 + 8) = &off_100B0E7C0;
  if (qword_100B50F78 != -1)
  {
    sub_10087B484();
  }

  sub_100580EFC(qword_100B50F70, v2);
  sub_10032147C(a1 + 24);

  return a1;
}

void sub_1007E6764(_Unwind_Exception *a1)
{
  sub_10032147C(v1 + 24);

  _Unwind_Resume(a1);
}

void sub_1007E6784(uint64_t a1)
{
  sub_1007E66CC(a1);

  operator delete();
}

void sub_1007E67C0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = xpc_dictionary_create(0, 0, 0);
  *uuid = 0;
  v6 = 0;
  [v3 getUUIDBytes:uuid];
  xpc_dictionary_set_uuid(v4, "kPeerIdentifier", uuid);
  sub_1003216CC(a1 + 24, "ConnectOnce", v4, 0);
}

void sub_1007E6898(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = xpc_dictionary_create(0, 0, 0);
  v5 = xpc_array_create(0, 0);
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v6 = v3;
  v7 = [v6 countByEnumeratingWithState:&v11 objects:v17 count:16];
  if (v7)
  {
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v11 + 1) + 8 * v9);
        *uuid = 0;
        v16 = 0;
        [v10 getUUIDBytes:{uuid, v11}];
        xpc_array_set_uuid(v5, 0xFFFFFFFFFFFFFFFFLL, uuid);
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v6 countByEnumeratingWithState:&v11 objects:v17 count:16];
    }

    while (v7);
  }

  xpc_dictionary_set_value(v4, "kPeerIdentifiers", v5);
  xpc_release(v5);
  sub_1003216CC(a1 + 24, "ConnectAlways", v4, 0);
}

void sub_1007E6A48(uint64_t a1, unsigned int a2, unsigned int a3)
{
  v6 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_uint64(v6, "kPiconetClock", a2);
  xpc_dictionary_set_uint64(v6, "kPiconetPhaseClock", a3);

  sub_1003216CC(a1 + 24, "NotifyPiconetClock", v6, 0);
}

void sub_1007E6AD4(uint64_t a1, void *a2)
{
  v3 = a2;
  if (_os_feature_enabled_impl())
  {
    sub_1007E6B50(a1, v3);
  }
}

void sub_1007E6B50(uint64_t a1, void *a2)
{
  v3 = a2;
  if (_os_feature_enabled_impl())
  {
    v4 = xpc_dictionary_create(0, 0, 0);
    *uuid = 0;
    v6 = 0;
    [v3 getUUIDBytes:uuid];
    xpc_dictionary_set_uuid(v4, "kPeerIdentifier", uuid);
    sub_1003216CC(a1 + 24, "CATTBatteryServiceDeviceConnected", v4, 0);
  }
}

void sub_1007E6C44(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = xpc_dictionary_create(0, 0, 0);
  *uuid = 0;
  v6 = 0;
  [v3 getUUIDBytes:uuid];
  xpc_dictionary_set_uuid(v4, "kPeerIdentifier", uuid);
  sub_1003216CC(a1 + 24, "DOAPDeviceConnected", v4, 0);
}

void sub_1007E6D18(uint64_t a1, void *a2)
{
  v3 = a2;
  v8 = v3;
  if (qword_100B508D0 == -1)
  {
    v4 = v3;
  }

  else
  {
    sub_10087B498();
    v4 = v8;
  }

  v5 = sub_100046458(off_100B508C8, v4, 0);
  if (qword_100B508F0 != -1)
  {
    sub_10087B4AC();
  }

  v6 = sub_1000504C8(off_100B508E8, v5, 0);
  if (v6 && sub_10053A440(v6))
  {
    sub_1007E6E14(a1, v8);
  }

  v7 = xpc_dictionary_create(0, 0, 0);
  sub_1003216CC(a1 + 24, "UARPDeviceConnected", v7, 0);
}

void sub_1007E6E14(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = xpc_dictionary_create(0, 0, 0);
  *uuid = 0;
  v6 = 0;
  [v3 getUUIDBytes:uuid];
  xpc_dictionary_set_uuid(v4, "kUARPDeviceUUID", uuid);
  sub_1003216CC(a1 + 24, "UARPAACPTransportChange", v4, 0);
}

void sub_1007E6EEC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = qword_100BCE900;
  if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Sending HRM connected xpc message", v6, 2u);
  }

  v5 = xpc_dictionary_create(0, 0, 0);
  sub_1003216CC(a1 + 24, "HRMDeviceConnected", v5, 0);
}

void sub_1007E6FC8(uint64_t a1, unsigned int a2, uint64_t a3)
{
  if (*(a3 + 23) < 0)
  {
    sub_100008904(__p, *a3, *(a3 + 8));
  }

  else
  {
    *__p = *a3;
    v6 = *(a3 + 16);
  }

  sub_1007E7058(a1, a2, __p);
  if (SHIBYTE(v6) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1007E703C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1007E7058(uint64_t a1, unsigned int a2, const char *a3)
{
  v6 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_uint64(v6, "kEasyPairingVersion", a2);
  if (a3[23] < 0)
  {
    a3 = *a3;
  }

  xpc_dictionary_set_string(v6, "kCloudAccount", a3);

  sub_1003216CC(a1 + 24, "VersionInfoRequest", v6, 0);
}

void sub_1007E70F0(uint64_t a1, unsigned int a2, uint64_t a3, unsigned int a4)
{
  if (*(a3 + 23) < 0)
  {
    sub_100008904(__p, *a3, *(a3 + 8));
  }

  else
  {
    *__p = *a3;
    v8 = *(a3 + 16);
  }

  sub_1007E7190(a1, a2, __p, a4);
  if (SHIBYTE(v8) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1007E7174(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1007E7190(uint64_t a1, unsigned int a2, const char *a3, unsigned int a4)
{
  v8 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_uint64(v8, "kEasyPairingVersion", a2);
  if (a3[23] < 0)
  {
    a3 = *a3;
  }

  xpc_dictionary_set_string(v8, "kCloudAccount", a3);
  xpc_dictionary_set_uint64(v8, "kEasyPairingStatus", a4);

  sub_1003216CC(a1 + 24, "VersionInfoResponse", v8, 0);
}

void sub_1007E7248(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_100008904(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    v4 = *(a2 + 16);
  }

  sub_1007E72D4(a1, __p);
  if (SHIBYTE(v4) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1007E72B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1007E72D4(uint64_t a1, const char *a2)
{
  v4 = xpc_dictionary_create(0, 0, 0);
  v5 = v4;
  if (a2[23] < 0)
  {
    a2 = *a2;
  }

  xpc_dictionary_set_string(v4, "kDeviceAddress", a2);

  sub_1003216CC(a1 + 24, "ClassicPairStateRequest", v5, 0);
}

void sub_1007E7358(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (*(a2 + 23) < 0)
  {
    sub_100008904(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    v6 = *(a2 + 16);
  }

  sub_1007E73EC(a1, __p, a3);
  if (SHIBYTE(v6) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1007E73D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1007E73EC(uint64_t a1, const char *a2, unsigned int a3)
{
  v6 = xpc_dictionary_create(0, 0, 0);
  v7 = v6;
  if (a2[23] < 0)
  {
    a2 = *a2;
  }

  xpc_dictionary_set_string(v6, "kDeviceAddress", a2);
  xpc_dictionary_set_uint64(v7, "kDevicePairState", a3);

  sub_1003216CC(a1 + 24, "ClassicPairStateResponse", v7, 0);
}

void sub_1007E7488(uint64_t a1, uint64_t a2, const char *a3, const void *a4, unsigned int a5)
{
  if (*(a2 + 23) < 0)
  {
    sub_100008904(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    v10 = *(a2 + 16);
  }

  sub_1007E7534(a1, __p, a3, a4, a5);
  if (SHIBYTE(v10) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1007E7518(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1007E7534(uint64_t a1, const char *a2, const char *a3, const void *a4, unsigned int a5)
{
  v10 = xpc_dictionary_create(0, 0, 0);
  v11 = v10;
  if (a2[23] < 0)
  {
    a2 = *a2;
  }

  xpc_dictionary_set_string(v10, "kDeviceAddress", a2);
  xpc_dictionary_set_string(v11, "kDeviceName", a3);
  xpc_dictionary_set_data(v11, "kDeviceLinkKey", a4, a5);

  sub_1003216CC(a1 + 24, "StoreClassicLinkKeyRequest", v11, 0);
}

void sub_1007E75F8(uint64_t a1, uint64_t a2, const char *a3, const void *a4, unsigned int a5, unsigned int a6, unsigned int a7)
{
  if (*(a2 + 23) < 0)
  {
    sub_100008904(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    v14 = *(a2 + 16);
  }

  sub_1007E76BC(a1, __p, a3, a4, a5, a6, a7);
  if (SHIBYTE(v14) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1007E76A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1007E76BC(uint64_t a1, const char *a2, const char *a3, const void *a4, unsigned int a5, unsigned int a6, unsigned int a7)
{
  v14 = xpc_dictionary_create(0, 0, 0);
  v15 = v14;
  if (a2[23] < 0)
  {
    a2 = *a2;
  }

  xpc_dictionary_set_string(v14, "kDeviceAddress", a2);
  xpc_dictionary_set_string(v15, "kDeviceName", a3);
  xpc_dictionary_set_data(v15, "kDeviceLinkKey", a4, a5);
  xpc_dictionary_set_uint64(v15, "kDeviceServiceMask", a6);
  xpc_dictionary_set_uint64(v15, "kClassOfDeviceMask", a7);

  sub_1003216CC(a1 + 24, "StoreClassicLinkKeyRequestExtended", v15, 0);
}

void sub_1007E77B8(uint64_t a1, uint64_t a2, void *a3, const char *a4)
{
  v7 = a3;
  if (*(a2 + 23) < 0)
  {
    sub_100008904(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    v9 = *(a2 + 16);
  }

  sub_1007E7870(a1, __p, v7, a4);
  if (SHIBYTE(v9) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1007E7870(uint64_t a1, const char *a2, void *a3, const char *a4)
{
  v13 = a3;
  v7 = xpc_dictionary_create(0, 0, 0);
  v8 = v7;
  if (a2[23] < 0)
  {
    a2 = *a2;
  }

  xpc_dictionary_set_string(v7, "kDeviceAddress", a2);
  xpc_dictionary_set_string(v8, "kDeviceName", a4);
  v9 = [v13 objectForKey:@"kCfgMicSide"];
  xpc_dictionary_set_uint64(v8, "kClassicDeviceMicMode", [v9 intValue]);

  v10 = [v13 objectForKey:@"kCfgInEarMode"];
  xpc_dictionary_set_uint64(v8, "kClassicDeviceInEarEnable", [v10 BOOLValue]);

  v11 = [v13 objectForKey:@"kCfgDoubleTap"];
  xpc_dictionary_set_uint64(v8, "kClassicDeviceDoubleTapMode", [v11 intValue]);

  v12 = sub_1005B2A10(v13);
  xpc_dictionary_set_value(v8, "kClassicDeviceSettings", v12);
  xpc_release(v12);
  sub_1003216CC(a1 + 24, "StoreClassicDeviceSettings", v8, 0);
}

void sub_1007E7A14(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_100008904(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    v4 = *(a2 + 16);
  }

  sub_1007E7AA0(a1, __p);
  if (SHIBYTE(v4) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1007E7A84(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1007E7AA0(uint64_t a1, const char *a2)
{
  v4 = xpc_dictionary_create(0, 0, 0);
  v5 = v4;
  if (a2[23] < 0)
  {
    a2 = *a2;
  }

  xpc_dictionary_set_string(v4, "kDeviceAddress", a2);

  sub_1003216CC(a1 + 24, "ClassicDeviceUnexpectedDisconnection", v5, 0);
}

void sub_1007E7B24(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (*(a2 + 23) < 0)
  {
    sub_100008904(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    v6 = *(a2 + 16);
  }

  sub_1007E7BB8(a1, __p, a3);
  if (SHIBYTE(v6) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1007E7B9C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1007E7BB8(uint64_t a1, const char *a2, unsigned int a3)
{
  v6 = xpc_dictionary_create(0, 0, 0);
  v7 = v6;
  if (a2[23] < 0)
  {
    a2 = *a2;
  }

  xpc_dictionary_set_string(v6, "kDeviceAddress", a2);
  xpc_dictionary_set_uint64(v7, "kQuickDisconnectEnabled", a3);

  sub_1003216CC(a1 + 24, "ConnectClassicDevice", v7, 0);
}

void sub_1007E7C54(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (*(a2 + 23) < 0)
  {
    sub_100008904(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    v6 = *(a2 + 16);
  }

  sub_1007E7CE8(a1, __p, a3);
  if (SHIBYTE(v6) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1007E7CCC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1007E7CE8(uint64_t a1, const char *a2, unsigned int a3)
{
  v6 = xpc_dictionary_create(0, 0, 0);
  v7 = v6;
  if (a2[23] < 0)
  {
    a2 = *a2;
  }

  xpc_dictionary_set_string(v6, "kDeviceAddress", a2);
  xpc_dictionary_set_uint64(v7, "kPrimaryBudSide", a3);

  sub_1003216CC(a1 + 24, "NotifyPrimaryBudSide", v7, 0);
}

void sub_1007E7D88(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = xpc_dictionary_create(0, 0, 0);
  *uuid = 0;
  v6 = 0;
  [v3 getUUIDBytes:uuid];
  xpc_dictionary_set_uuid(v4, "kPeerIdentifier", uuid);
  sub_1003216CC(a1 + 24, "MFiAccessoryAuth", v4, 0);
}

void sub_1007E7E60(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = sub_1005B2A10(v4);
  sub_1003216CC(a1 + 24, "LaunchBTLEServerWithOptions", v3, 0);
}

void sub_1007E7ED4(uint64_t a1)
{
  v2 = xpc_dictionary_create(0, 0, 0);

  sub_1003216CC(a1 + 24, "PreWarmMFiAccessoryAuth", v2, 0);
}

void sub_1007E7F2C(uint64_t a1, void *a2, unsigned int a3, const void *a4)
{
  v7 = a2;
  v8 = xpc_dictionary_create(0, 0, 0);
  *uuid = 0;
  v10 = 0;
  [v7 getUUIDBytes:uuid];
  xpc_dictionary_set_uuid(v8, "kUARPDeviceUUID", uuid);
  xpc_dictionary_set_data(v8, "kUARPData", a4, a3);
  sub_1003216CC(a1 + 24, "UARPDataOverAACP", v8, 0);
}

void sub_1007E8028(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  if (*(a2 + 23) < 0)
  {
    sub_100008904(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    v10 = *(a2 + 16);
  }

  sub_1007E80F0(a1, __p, v7, v8);
  if (SHIBYTE(v10) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1007E80F0(uint64_t a1, const char *a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  v9 = xpc_dictionary_create(0, 0, 0);
  v10 = v9;
  if (a2[23] < 0)
  {
    a2 = *a2;
  }

  xpc_dictionary_set_string(v9, "kLeaDeviceAddress", a2);
  v11 = [v7 UUIDString];
  xpc_dictionary_set_string(v10, "kLeaDeviceIdentifier", [v11 UTF8String]);

  v12 = sub_1005B2B8C(v8);
  xpc_dictionary_set_value(v10, "kLeaDeviceTags", v12);
  xpc_release(v12);
  v13 = qword_100BCE900;
  if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_DEFAULT))
  {
    v14 = [v7 UUIDString];
    v15 = 136315138;
    v16 = [v14 UTF8String];
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Sending requestLeaEasyPairMsg: kLeaDeviceIdentifier = %s", &v15, 0xCu);
  }

  sub_1003216CC(a1 + 24, "LeaEasyPairRequest", v10, 0);
}

void sub_1007E82C0(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, const void *a5, const void *a6, const void *a7)
{
  if (*(a2 + 23) < 0)
  {
    sub_100008904(__dst, *a2, *(a2 + 8));
  }

  else
  {
    *__dst = *a2;
    v16 = *(a2 + 16);
  }

  if (*(a3 + 23) < 0)
  {
    sub_100008904(__p, *a3, *(a3 + 8));
  }

  else
  {
    *__p = *a3;
    v14 = *(a3 + 16);
  }

  sub_1007E83D4(a1, __dst, __p, a4, a5, a6, a7);
  if (SHIBYTE(v14) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v16) < 0)
  {
    operator delete(__dst[0]);
  }
}

void sub_1007E83A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1007E83D4(uint64_t a1, const char *a2, const char *a3, unsigned int a4, const void *a5, const void *a6, const void *a7)
{
  v14 = xpc_dictionary_create(0, 0, 0);
  v15 = v14;
  if (a2[23] < 0)
  {
    a2 = *a2;
  }

  xpc_dictionary_set_string(v14, "kLeaDeviceAddress", a2);
  if (a3[23] < 0)
  {
    a3 = *a3;
  }

  xpc_dictionary_set_string(v15, "kLeaDeviceName", a3);
  xpc_dictionary_set_uint64(v15, "kLeaDeviceEdiv", a4);
  xpc_dictionary_set_data(v15, "kLeaDeviceRand", a5, 8uLL);
  xpc_dictionary_set_data(v15, "kLeaDeviceLtk", a6, 0x10uLL);
  xpc_dictionary_set_data(v15, "kLeaDeviceIrk", a7, 0x10uLL);

  sub_1003216CC(a1 + 24, "LeaStoreBondingInfoRequest", v15, 0);
}

void sub_1007E84F8(uint64_t a1)
{
  if (qword_100B50F78 != -1)
  {
    sub_10087B484();
  }

  v2 = sub_100580A38(qword_100B50F70);

  sub_1007E8554(a1, v2);
}

void sub_1007E8554(uint64_t a1, BOOL a2)
{
  v4 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_BOOL(v4, "kPersist", a2);

  sub_1003216CC(a1 + 24, "PersistServerServices", v4, 0);
}

void sub_1007E85C8(uint64_t a1, const char *a2, unsigned int a3)
{
  v6 = xpc_dictionary_create(0, 0, 0);
  v7 = v6;
  if (a2[23] < 0)
  {
    a2 = *a2;
  }

  xpc_dictionary_set_string(v6, "kDeviceAddress", a2);
  xpc_dictionary_set_uint64(v7, "kStoreClassicLinkKeyResult", a3);

  sub_1003216CC(a1 + 24, "StoreClassicLinkKeyResponse", v7, 0);
}

void sub_1007E8664(uint64_t a1, const char *a2, unsigned int a3)
{
  v6 = qword_100BCE900;
  if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_DEFAULT))
  {
    v9[0] = 67109120;
    v9[1] = a3;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Sending LeaEasyPairResponse: status=%d", v9, 8u);
  }

  v7 = xpc_dictionary_create(0, 0, 0);
  v8 = v7;
  if (a2[23] < 0)
  {
    a2 = *a2;
  }

  xpc_dictionary_set_string(v7, "kLeaDeviceAddress", a2);
  xpc_dictionary_set_uint64(v8, "kLeaDevicePairState", a3);
  sub_1003216CC(a1 + 24, "LeaEasyPairResponse", v8, 0);
}

void sub_1007E8778(uint64_t a1, const char *a2, unsigned int a3)
{
  v6 = xpc_dictionary_create(0, 0, 0);
  v7 = v6;
  if (a2[23] < 0)
  {
    a2 = *a2;
  }

  xpc_dictionary_set_string(v6, "kLeaDeviceAddress", a2);
  xpc_dictionary_set_uint64(v7, "kLeaStoreBondingInfoResult", a3);

  sub_1003216CC(a1 + 24, "LeaStoreBondingInfoResponse", v7, 0);
}

void sub_1007E8814(uint64_t a1, const char *a2, void *a3)
{
  v6 = qword_100BCE900;
  if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446210;
    *&buf[4] = a2;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Received XPC message %{public}s", buf, 0xCu);
  }

  if (!strcmp(a2, "SetConnectionParameters"))
  {
    *buf = 0;
    *&buf[8] = 0;
    uuid = xpc_dictionary_get_uuid(a3, "kPeerIdentifier");
    uuid_copy(buf, uuid);
    v9 = xpc_dictionary_get_double(a3, "kMinInterval");
    v10 = xpc_dictionary_get_double(a3, "kPreferredInterval");
    v11 = xpc_dictionary_get_double(a3, "kMaxInterval");
    int64 = xpc_dictionary_get_int64(a3, "kMinCELength");
    v13 = xpc_dictionary_get_int64(a3, "kMaxCELength");
    v14 = xpc_dictionary_get_int64(a3, "kPreferredPeripheralLatency");
    v15 = xpc_dictionary_get_int64(a3, "kMaxPeripheralLatency");
    v16 = xpc_dictionary_get_int64(a3, "kTimeout");
    xpc_dictionary_get_int64(a3, "kMaxDeferment");
    if (qword_100B508B0 != -1)
    {
      sub_10087BC7C();
    }

    v17 = v9;
    v18 = v10;
    v19 = v11;
    sub_100767160(off_100B508A8, buf, int64, v13, v14, v15, v16, v17, v18, v19);
  }

  else if (!strcmp(a2, "AuthenticationDidSucceed"))
  {
    memset(dst, 0, sizeof(dst));
    v20 = xpc_dictionary_get_uuid(a3, "kPeerIdentifier");
    uuid_copy(dst, v20);
    v21 = xpc_dictionary_get_int64(a3, "kCertClass");
    memset(buf, 0, sizeof(buf));
    if (v21 == 0x7FFFFFFF)
    {
      strcpy(buf, "IsMFiAuthenticated");
    }

    else
    {
      snprintf(buf, 0x20uLL, "IsMFiAuthenticated_CertClass%02X", v21);
    }

    if (qword_100B508D0 != -1)
    {
      sub_10087B4E8();
    }

    v25 = off_100B508C8;
    v26 = sub_10004DF60(dst);
    sub_100007E30(__p, buf);
    sub_10078787C(v25, v26, __p);
    if (v297 < 0)
    {
      operator delete(__p[0]);
    }
  }

  else if (!strcmp(a2, "AuthenticationDidFail"))
  {
    *buf = 0;
    *&buf[8] = 0;
    v22 = xpc_dictionary_get_uuid(a3, "kPeerIdentifier");
    uuid_copy(buf, v22);
    if (qword_100B508D0 != -1)
    {
      sub_10087B4E8();
    }

    v23 = off_100B508C8;
    v24 = sub_10004DF60(buf);
    sub_10078380C(v23, v24, @"IsMFiAuthenticated");
  }

  else if (!strcmp(a2, "PeerIsUsingBuiltinService"))
  {
    *buf = 0;
    *&buf[8] = 0;
    v27 = xpc_dictionary_get_uuid(a3, "kPeerIdentifier");
    uuid_copy(buf, v27);
    if (qword_100B508D0 != -1)
    {
      sub_10087B4E8();
    }

    v28 = off_100B508C8;
    v29 = sub_10004DF60(buf);
    sub_100007E30(v294, "HasBuiltinServices");
    sub_10078787C(v28, v29, v294);
    if (v295 < 0)
    {
      operator delete(v294[0]);
    }
  }

  else if (!strcmp(a2, "PeerIsNotUsingBuiltinService"))
  {
    *buf = 0;
    *&buf[8] = 0;
    v30 = xpc_dictionary_get_uuid(a3, "kPeerIdentifier");
    uuid_copy(buf, v30);
    if (qword_100B508D0 != -1)
    {
      sub_10087B4E8();
    }

    v31 = off_100B508C8;
    v32 = sub_10004DF60(buf);
    sub_10078380C(v31, v32, @"HasBuiltinServices");
  }

  else
  {
    if (!strcmp(a2, "DisconnectClassicDevice"))
    {
      memset(buf, 0, 24);
      string = xpc_dictionary_get_string(a3, "kDeviceAddress");
      sub_100007E30(buf, string);
      *&v301[4] = 0;
      *v301 = 0;
      if (buf[23] >= 0)
      {
        v34 = buf;
      }

      else
      {
        v34 = *buf;
      }

      if (!sub_10009D0B4(v301, v34))
      {
        if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_ERROR))
        {
          sub_10087BBAC();
        }

        goto LABEL_127;
      }

      if (qword_100B508F0 != -1)
      {
        sub_10087B4C0();
      }

      v35 = sub_1000E6554(off_100B508E8, v301, 1);
      if (!v35)
      {
        v41 = qword_100BCE900;
        if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_ERROR))
        {
          sub_1000BE6F8(v301, dst);
          sub_10087BC08(dst, v303, v41);
        }

        goto LABEL_127;
      }

      if (qword_100B50F68 != -1)
      {
        sub_10087BBE0();
      }

      if (sub_1000C039C(off_100B50F60, v35))
      {
        if (qword_100B50AC0 != -1)
        {
          sub_10087B7E0();
        }

        sub_100593A4C(off_100B50AB8, v35, -1);
        goto LABEL_127;
      }

      v42 = qword_100BCE900;
      if (!os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_127;
      }

      sub_1000E5A58(v35, dst);
      if (v309 >= 0)
      {
        v43 = dst;
      }

      else
      {
        v43 = *dst;
      }

      *v303 = 136446210;
      *&v303[4] = v43;
      v44 = "Ignoring disconnection request as device %{public}s is not connected";
      v45 = v303;
      v46 = v42;
      v47 = 12;
      goto LABEL_93;
    }

    if (!strcmp(a2, "EnableBTSync"))
    {
      v36 = [[NSUUID alloc] initWithUUIDBytes:{xpc_dictionary_get_uuid(a3, "kPeerIdentifier")}];
      v37 = xpc_dictionary_get_int64(a3, "kPeriod");
      v38 = sub_10000C7D0();
      (*(*v38 + 936))(v38, v36, v37);

      return;
    }

    if (!strcmp(a2, "DevMgmtPipeConnected"))
    {
      v39 = [[NSUUID alloc] initWithUUIDBytes:{xpc_dictionary_get_uuid(a3, "kPeerIdentifier")}];
      if (qword_100B50910 != -1)
      {
        sub_10087BB84();
      }

      sub_1005BBE88(off_100B50908, 1);
      [*(a1 + 16) addObject:v39];
      if (qword_100B50950 != -1)
      {
        sub_10087B510();
      }

      sub_10033C6C0(off_100B50948, v39);
      if (qword_100B50920 != -1)
      {
        sub_10087B630();
      }

      sub_1006487F0(qword_100B50918, v39);
    }

    else
    {
      if (strcmp(a2, "DevMgmtPipeDisconnected"))
      {
        if (!strcmp(a2, "VersionInfoRequest"))
        {
          v49 = xpc_dictionary_get_int64(a3, "kEasyPairingVersion");
          memset(buf, 0, 24);
          v50 = xpc_dictionary_get_string(a3, "kCloudAccount");
          sub_100007E30(buf, v50);
          if (qword_100B53FC8 != -1)
          {
            sub_10087BB5C();
          }

          v51 = qword_100B53FC0;
          if ((buf[23] & 0x80000000) != 0)
          {
            sub_100008904(&__dst, *buf, *&buf[8]);
          }

          else
          {
            __dst = *buf;
          }

          sub_1003190A4(v51, v49, &__dst);
          if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_127;
          }

          v48 = __dst.__r_.__value_.__r.__words[0];
          goto LABEL_126;
        }

        if (!strcmp(a2, "VersionInfoResponse"))
        {
          v52 = xpc_dictionary_get_int64(a3, "kEasyPairingVersion");
          memset(buf, 0, 24);
          v53 = xpc_dictionary_get_string(a3, "kCloudAccount");
          sub_100007E30(buf, v53);
          v54 = xpc_dictionary_get_int64(a3, "kEasyPairingStatus");
          if (qword_100B53FC8 != -1)
          {
            sub_10087BB5C();
          }

          v55 = qword_100B53FC0;
          if ((buf[23] & 0x80000000) != 0)
          {
            sub_100008904(&v292, *buf, *&buf[8]);
          }

          else
          {
            v292 = *buf;
          }

          sub_100319540(v55, v52, &v292, v54);
          if ((SHIBYTE(v292.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_127;
          }

          v48 = v292.__r_.__value_.__r.__words[0];
          goto LABEL_126;
        }

        if (!strcmp(a2, "ClassicPairStateRequest"))
        {
          memset(buf, 0, 24);
          v56 = xpc_dictionary_get_string(a3, "kDeviceAddress");
          sub_100007E30(buf, v56);
          *&dst[4] = 0;
          *dst = 0;
          if (buf[23] >= 0)
          {
            v57 = buf;
          }

          else
          {
            v57 = *buf;
          }

          if (sub_10009D0B4(dst, v57))
          {
            if (qword_100B53FC8 != -1)
            {
              sub_10087BB5C();
            }

            sub_100319658(qword_100B53FC0, dst);
          }

          else if (os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_ERROR))
          {
            sub_10087BB28();
          }

          goto LABEL_127;
        }

        if (!strcmp(a2, "ClassicPairStateResponse"))
        {
          memset(buf, 0, 24);
          v58 = xpc_dictionary_get_string(a3, "kDeviceAddress");
          sub_100007E30(buf, v58);
          v59 = xpc_dictionary_get_int64(a3, "kDevicePairState");
          *&dst[4] = 0;
          *dst = 0;
          if (buf[23] >= 0)
          {
            v60 = buf;
          }

          else
          {
            v60 = *buf;
          }

          if (sub_10009D0B4(dst, v60))
          {
            if (qword_100B508F0 != -1)
            {
              sub_10087B4C0();
            }

            v61 = sub_1000E6554(off_100B508E8, dst, 1);
            if (qword_100B50950 != -1)
            {
              sub_10087B510();
            }

            sub_10033CE4C(off_100B50948, v61, v59);
          }

          else if (os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_ERROR))
          {
            sub_10087BAF4();
          }

          goto LABEL_127;
        }

        if (!strcmp(a2, "StoreClassicLinkKeyRequest"))
        {
          memset(buf, 0, 24);
          v63 = xpc_dictionary_get_string(a3, "kDeviceAddress");
          sub_100007E30(buf, v63);
          memset(dst, 0, sizeof(dst));
          v309 = 0;
          v64 = xpc_dictionary_get_string(a3, "kDeviceName");
          sub_100007E30(dst, v64);
          value = xpc_dictionary_get_value(a3, "kDeviceLinkKey");
          WORD2(v298) = 0;
          LODWORD(v298) = 0;
          if (buf[23] >= 0)
          {
            v66 = buf;
          }

          else
          {
            v66 = *buf;
          }

          if (!sub_10009D0B4(&v298, v66))
          {
            if (os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_ERROR))
            {
              sub_10087B978();
            }

            if ((buf[23] & 0x80000000) != 0)
            {
              sub_100008904(&v290, *buf, *&buf[8]);
            }

            else
            {
              v290 = *buf;
              v291 = *&buf[16];
            }

            sub_1007E85C8(a1, &v290, 1u);
            if ((SHIBYTE(v291) & 0x80000000) == 0)
            {
              goto LABEL_94;
            }

            v106 = v290;
            goto LABEL_310;
          }

          count = xpc_array_get_count(value);
          if (!value || count != 16)
          {
            if (os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_ERROR))
            {
              sub_10087BAC0();
            }

            if ((buf[23] & 0x80000000) != 0)
            {
              sub_100008904(&v288, *buf, *&buf[8]);
            }

            else
            {
              v288 = *buf;
              v289 = *&buf[16];
            }

            sub_1007E85C8(a1, &v288, 1u);
            if ((SHIBYTE(v289) & 0x80000000) == 0)
            {
              goto LABEL_94;
            }

            v106 = v288;
            goto LABEL_310;
          }

          v68 = 0;
          v307 = 0uLL;
          v305 = 0;
          v306 = 0;
          do
          {
            dst[v68 - 16] = xpc_array_get_int64(value, v68);
            ++v68;
          }

          while (v68 != 16);
          if (qword_100B508F0 != -1)
          {
            sub_10087B4C0();
          }

          v69 = sub_1000E6554(off_100B508E8, &v298, 1);
          v70 = v69;
          if (v307 != v305 || *(&v307 + 1) != v306)
          {
            memset(v301, 0, 20);
            sub_1006D1B74(v301);
            if (qword_100B512E8 != -1)
            {
              sub_10087B9AC();
            }

            if (sub_1006E7E2C(off_100B512E0, v70, v301) != 150)
            {
              goto LABEL_153;
            }

            if (qword_100B50AB0 != -1)
            {
              sub_10087B9D4();
            }

            if ((sub_1000E2570(off_100B50AA8, v70) & 1) == 0)
            {
              sub_1006D1BAC(v303, &v307, 5u);
              sub_1006D1B80(v301, v303);
              nullsub_21(v303);
              if (qword_100B512E8 != -1)
              {
                sub_10087B9AC();
              }

              v137 = sub_1006E7F2C(off_100B512E0, v70, v301, 0);
              if (v137)
              {
                v73 = 1;
              }

              else
              {
                v258[0] = 0;
                sub_100016250(v258);
                *v303 = SLODWORD(v258[0]);
                *&v303[8] = SWORD2(v258[0]);
                sub_100538494(v70, dst, v303);
                v73 = 0;
              }

              v194 = qword_100BCE960;
              if (os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_DEFAULT))
              {
                v195 = "Failed to store";
                if (!v137)
                {
                  v195 = "Successfully stored";
                }

                v196 = buf;
                if (buf[23] < 0)
                {
                  v196 = *buf;
                }

                *v303 = 136315394;
                *&v303[4] = v195;
                *&v303[12] = 2080;
                *&v303[14] = v196;
                _os_log_impl(&_mh_execute_header, v194, OS_LOG_TYPE_DEFAULT, "%s classic link key for address %s", v303, 0x16u);
              }
            }

            else
            {
LABEL_153:
              v72 = qword_100BCE960;
              v73 = 0;
              if (os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_DEFAULT))
              {
                if (qword_100B50AB0 != -1)
                {
                  sub_10087B9D4();
                }

                v74 = sub_1000E2570(off_100B50AA8, v70);
                v75 = buf;
                if (buf[23] < 0)
                {
                  v75 = *buf;
                }

                *v303 = 67109378;
                *&v303[4] = v74;
                *&v303[8] = 2080;
                *&v303[10] = v75;
                _os_log_impl(&_mh_execute_header, v72, OS_LOG_TYPE_DEFAULT, "Already stored classic link key (Magic Paired: %d) for address: %s", v303, 0x12u);
                v73 = 0;
              }
            }

            if ((buf[23] & 0x80000000) != 0)
            {
              sub_100008904(&v286, *buf, *&buf[8]);
            }

            else
            {
              v286 = *buf;
              v287 = *&buf[16];
            }

            sub_1007E85C8(a1, &v286, v73);
            if ((SHIBYTE(v287) & 0x80000000) == 0)
            {
              goto LABEL_541;
            }

            v197 = v286;
            goto LABEL_540;
          }

          if (v69 && sub_1000295DC(v69))
          {
            if (qword_100B50950 != -1)
            {
              sub_10087B510();
            }

            *(off_100B50948 + 431) = 2;
            if (qword_100B50AB0 != -1)
            {
              sub_10087B9D4();
            }

            v128 = sub_1000E2570(off_100B50AA8, v70);
            v129 = os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_ERROR);
            if (v128)
            {
              if (v129)
              {
                sub_10087BA58();
              }

              if (qword_100B50AB0 == -1)
              {
                goto LABEL_292;
              }

LABEL_662:
              sub_10087B9D4();
LABEL_292:
              sub_100558E48(off_100B50AA8, v70, 0);
              goto LABEL_94;
            }

            if (v129)
            {
              sub_10087B9FC();
            }

            if (qword_100B50F88 == -1)
            {
LABEL_481:
              sub_1006E0DBC(off_100B50F80, v70);
              goto LABEL_94;
            }

LABEL_663:
            sub_10087BA30();
            goto LABEL_481;
          }

          if (!os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_94;
          }
        }

        else
        {
          if (strcmp(a2, "StoreClassicLinkKeyRequestExtended"))
          {
            if (!strcmp(a2, "StoreClassicLinkKeyResponse"))
            {
              memset(buf, 0, 24);
              v92 = xpc_dictionary_get_string(a3, "kDeviceAddress");
              sub_100007E30(buf, v92);
              v93 = xpc_dictionary_get_int64(a3, "kStoreClassicLinkKeyResult");
              *&dst[4] = 0;
              *dst = 0;
              if (buf[23] >= 0)
              {
                v94 = buf;
              }

              else
              {
                v94 = *buf;
              }

              if (sub_10009D0B4(dst, v94))
              {
                if (qword_100B508F0 != -1)
                {
                  sub_10087B4C0();
                }

                v95 = sub_1000E6554(off_100B508E8, dst, 1);
                if (qword_100B50950 != -1)
                {
                  sub_10087B510();
                }

                sub_10033CF08(off_100B50948, v95, v93);
              }

              else if (os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_ERROR))
              {
                sub_10087B944();
              }

              goto LABEL_127;
            }

            if (!strcmp(a2, "StoreClassicDeviceSettings"))
            {
              memset(buf, 0, 24);
              v96 = xpc_dictionary_get_string(a3, "kDeviceAddress");
              sub_100007E30(buf, v96);
              WORD2(v307) = 0;
              LODWORD(v307) = 0;
              if (buf[23] >= 0)
              {
                v97 = buf;
              }

              else
              {
                v97 = *buf;
              }

              if (!sub_10009D0B4(&v307, v97))
              {
                if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_ERROR))
                {
                  sub_10087B870();
                }

                goto LABEL_127;
              }

              v98 = xpc_dictionary_get_int64(a3, "kClassicDeviceMicMode");
              v99 = xpc_dictionary_get_int64(a3, "kClassicDeviceInEarEnable");
              v100 = xpc_dictionary_get_int64(a3, "kClassicDeviceDoubleTapMode");
              v101 = xpc_dictionary_get_value(a3, "kClassicDeviceSettings");
              v253 = v101;
              if (v101)
              {
                v102 = sub_100050F18(v101);
                v103 = [v102 allKeys];
                v104 = [v103 containsObject:@"kCfgDoubleClickInt"];

                if (v104)
                {
                  v105 = [v102 objectForKey:@"kCfgDoubleClickInt"];
                  v255 = [v105 intValue];
                }

                else
                {
                  v255 = -1;
                }

                v138 = [v102 allKeys];
                v139 = [v138 containsObject:@"kCfgClickHold"];

                if (v139)
                {
                  v140 = [v102 objectForKey:@"kCfgClickHold"];
                  v257 = [v140 intValue];
                }

                else
                {
                  v257 = -1;
                }

                v141 = [v102 allKeys];
                v142 = [v141 containsObject:@"kCfgClickHoldInt"];

                if (v142)
                {
                  v143 = [v102 objectForKey:@"kCfgClickHoldInt"];
                  v254 = [v143 intValue];
                }

                else
                {
                  v254 = -1;
                }

                v144 = [v102 allKeys];
                v145 = [v144 containsObject:@"kCfgListenModeCfgs"];

                if (v145)
                {
                  v146 = [v102 objectForKey:@"kCfgListenModeCfgs"];
                  v256 = [v146 intValue];
                }

                else
                {
                  v256 = -1;
                }

                v147 = [v102 allKeys];
                v148 = [v147 containsObject:@"kCfgOneBudANCMode"];

                if (v148)
                {
                  v149 = [v102 objectForKey:@"kCfgOneBudANCMode"];
                  v252 = [v149 intValue];
                }

                else
                {
                  v252 = -1;
                }

                v150 = [v102 allKeys];
                v151 = [v150 containsObject:@"kCfgListenMode"];

                if (v151)
                {
                  v152 = [v102 objectForKey:@"kCfgListenMode"];
                  v136 = [v152 intValue];
                }

                else
                {
                  v136 = 0xFFFFFFFFLL;
                }
              }

              else
              {
                v136 = 0xFFFFFFFFLL;
                v252 = -1;
                v256 = -1;
                v257 = -1;
                v254 = -1;
                v255 = -1;
              }

              memset(dst, 0, sizeof(dst));
              v309 = 0;
              v153 = xpc_dictionary_get_string(a3, "kDeviceName");
              sub_100007E30(dst, v153);
              if (qword_100B508F0 != -1)
              {
                sub_10087B4C0();
              }

              v154 = sub_1000E6554(off_100B508E8, &v307, 1);
              v155 = v154;
              if (v154 && sub_1000295DC(v154))
              {
                if ((v99 != 0) != sub_1000E356C(v155) && sub_1000E2140(v155, 1))
                {
                  if (qword_100B50950 != -1)
                  {
                    sub_10087B510();
                  }

                  sub_10033DF90(off_100B50948, v155, v99 != 0, 3u);
                }

                if (sub_1000E3314(v155) != v98)
                {
                  if (qword_100B50950 != -1)
                  {
                    sub_10087B510();
                  }

                  sub_10033DA80(off_100B50948, v155, v98, 3u);
                }

                if (sub_1000E3188(v155) != v100 && sub_1000E2140(v155, 14))
                {
                  if (qword_100B50950 != -1)
                  {
                    sub_10087B510();
                  }

                  sub_10033DD54(off_100B50948, v155, BYTE1(v100), v100, 3);
                }

                sub_1000C23E0(v155, v303);
                v156 = sub_1000DA948(v303, dst);
                if (v304 < 0)
                {
                  operator delete(*v303);
                }

                if (!v156)
                {
                  v157 = qword_100BCE900;
                  if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_DEFAULT))
                  {
                    sub_1000C23E0(v155, v303);
                    if (v304 >= 0)
                    {
                      v158 = v303;
                    }

                    else
                    {
                      v158 = *v303;
                    }

                    v159 = dst;
                    if (v309 < 0)
                    {
                      v159 = *dst;
                    }

                    *v301 = 136315394;
                    *&v301[4] = v158;
                    *&v301[12] = 2080;
                    *&v301[14] = v159;
                    _os_log_impl(&_mh_execute_header, v157, OS_LOG_TYPE_DEFAULT, "StoreClassicDeviceSettings update Device name on Watch side only, oldName = %s, newName = %s", v301, 0x16u);
                    if (v304 < 0)
                    {
                      operator delete(*v303);
                    }
                  }

                  sub_100538D30(v155, dst, 0);
                  sub_1005397A4(v155, dst);
                }

                if (v253)
                {
                  if (v257 != -1 && sub_1000E06EC(v155) != v257 && sub_1000E2140(v155, 30))
                  {
                    if (qword_100B50950 != -1)
                    {
                      sub_10087B510();
                    }

                    sub_100331844(off_100B50948, v155, 22, v257, 3u);
                  }

                  v160 = sub_1000E2140(v155, 43);
                  v161 = v255 == -1 || v160;
                  if ((v161 & 1) == 0 && sub_100549334(v155) != v255 && (sub_1000E2140(v155, 29) || sub_1000E012C(v155, 128)))
                  {
                    if (qword_100B50950 != -1)
                    {
                      sub_10087B510();
                    }

                    sub_100331844(off_100B50948, v155, 23, v255, 3u);
                  }

                  v162 = sub_1000E2140(v155, 43);
                  v163 = v254 == -1 || v162;
                  if ((v163 & 1) == 0 && sub_10054937C(v155) != v254 && (sub_1000E2140(v155, 30) || sub_1000E012C(v155, 128)))
                  {
                    if (qword_100B50950 != -1)
                    {
                      sub_10087B510();
                    }

                    sub_100331844(off_100B50948, v155, 24, v254, 3u);
                  }

                  if (v256 != -1 && sub_1000E32CC(v155) != v256 && sub_1000E2140(v155, 28))
                  {
                    if (qword_100B50950 != -1)
                    {
                      sub_10087B510();
                    }

                    sub_100331844(off_100B50948, v155, 26, v256, 3u);
                  }

                  v164 = sub_1000E2140(v155, 43);
                  v165 = v252 == -1 || v164;
                  if ((v165 & 1) == 0 && v252 != sub_1005493C4(v155) && sub_1000E2140(v155, 16) && sub_1000E2140(v155, 1))
                  {
                    if (qword_100B50950 != -1)
                    {
                      sub_10087B510();
                    }

                    sub_100331844(off_100B50948, v155, 27, v252, 3u);
                  }

                  if (v136 != -1 && sub_1000E3284(v155) != v136 && sub_1000E2140(v155, 16) && sub_1000E2140(v155, 17))
                  {
                    if (qword_100B50950 != -1)
                    {
                      sub_10087B510();
                    }

                    sub_100331844(off_100B50948, v155, 13, v136, 3u);
                  }
                }
              }

              else
              {
                v166 = qword_100BCE900;
                if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_ERROR))
                {
                  sub_10087B8A4(&buf[23], buf, v166);
                }
              }

              goto LABEL_94;
            }

            if (!strcmp(a2, "ClassicDeviceUnexpectedDisconnection"))
            {
              memset(buf, 0, 24);
              v107 = xpc_dictionary_get_string(a3, "kDeviceAddress");
              sub_100007E30(buf, v107);
              *&v301[4] = 0;
              *v301 = 0;
              if (buf[23] >= 0)
              {
                v108 = buf;
              }

              else
              {
                v108 = *buf;
              }

              if (sub_10009D0B4(v301, v108))
              {
                if (qword_100B508F0 != -1)
                {
                  sub_10087B4C0();
                }

                v109 = sub_1000E6554(off_100B508E8, v301, 1);
                v110 = v109;
                if (v109 && sub_1000295DC(v109))
                {
                  v111 = qword_100BCE960;
                  if (os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_DEFAULT))
                  {
                    sub_1000E5A58(v110, dst);
                    v112 = SHIBYTE(v309);
                    v113 = *dst;
                    v114 = sub_1000C0348(v110);
                    v115 = dst;
                    v116 = "not";
                    if (v112 < 0)
                    {
                      v115 = v113;
                    }

                    if (v114)
                    {
                      v116 = "is";
                    }

                    *v303 = 136446466;
                    *&v303[4] = v115;
                    *&v303[12] = 2080;
                    *&v303[14] = v116;
                    _os_log_impl(&_mh_execute_header, v111, OS_LOG_TYPE_DEFAULT, "ClassicDeviceUnexpectedDisconnection: device %{public}s %s connected", v303, 0x16u);
                    if (SHIBYTE(v309) < 0)
                    {
                      operator delete(*dst);
                    }
                  }

                  if (sub_1000C0348(v110))
                  {
                    if (qword_100B50950 != -1)
                    {
                      sub_10087B510();
                    }

                    sub_10033D9F8(off_100B50948, v110);
                  }
                }

                else if (os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_ERROR))
                {
                  sub_10087B808();
                }
              }

              else if (os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_ERROR))
              {
                sub_10087B83C();
              }

              goto LABEL_127;
            }

            if (strcmp(a2, "ConnectClassicDevice"))
            {
              if (!strcmp(a2, "NotifyPrimaryBudSide"))
              {
                memset(buf, 0, 24);
                v130 = xpc_dictionary_get_string(a3, "kDeviceAddress");
                sub_100007E30(buf, v130);
                v131 = xpc_dictionary_get_int64(a3, "kPrimaryBudSide");
                *&dst[4] = 0;
                *dst = 0;
                if (buf[23] >= 0)
                {
                  v132 = buf;
                }

                else
                {
                  v132 = *buf;
                }

                if (sub_10009D0B4(dst, v132))
                {
                  if (qword_100B508F0 != -1)
                  {
                    sub_10087B4C0();
                  }

                  v133 = sub_1000E6554(off_100B508E8, dst, 1);
                  if (v133)
                  {
                    if (qword_100B50950 != -1)
                    {
                      sub_10087B510();
                    }

                    sub_10033E47C(off_100B50948, v133, v131);
                  }
                }

                else if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_ERROR))
                {
                  sub_10087B750();
                }

                goto LABEL_127;
              }

              if (strcmp(a2, "LeaEasyPairRequest"))
              {
                if (!strcmp(a2, "LeaEasyPairResponse"))
                {
                  memset(buf, 0, 24);
                  v172 = xpc_dictionary_get_string(a3, "kLeaDeviceAddress");
                  sub_100007E30(buf, v172);
                  v173 = xpc_dictionary_get_int64(a3, "kLeaDevicePairState");
                  v174 = qword_100BCE900;
                  if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_DEFAULT))
                  {
                    *dst = 0;
                    _os_log_impl(&_mh_execute_header, v174, OS_LOG_TYPE_DEFAULT, "Received LeaEasyPairResponse", dst, 2u);
                  }

                  *&dst[4] = 0;
                  *dst = 0;
                  if (buf[23] >= 0)
                  {
                    v175 = buf;
                  }

                  else
                  {
                    v175 = *buf;
                  }

                  if (sub_10009D0B4(dst, v175))
                  {
                    if (qword_100B50920 != -1)
                    {
                      sub_10087B630();
                    }

                    *v303 = *dst;
                    *&v303[4] = *&dst[4];
                    sub_100648B30(qword_100B50918, v303, v173);
                    goto LABEL_127;
                  }

                  v211 = qword_100BCE900;
                  if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_DEFAULT))
                  {
                    *v303 = 0;
                    v212 = "Received invalid device address on LeaEasyPairResponse";
LABEL_572:
                    _os_log_impl(&_mh_execute_header, v211, OS_LOG_TYPE_DEFAULT, v212, v303, 2u);
                  }

LABEL_127:
                  if ((buf[23] & 0x80000000) == 0)
                  {
                    return;
                  }

                  v62 = *buf;
                  goto LABEL_129;
                }

                if (strcmp(a2, "LeaStoreBondingInfoRequest"))
                {
                  if (strcmp(a2, "LeaStoreBondingInfoResponse"))
                  {
                    if (!strcmp(a2, "ANCSNotificationSourceRegistered"))
                    {
                      v222 = [[NSUUID alloc] initWithUUIDBytes:{xpc_dictionary_get_uuid(a3, "kPeerIdentifier")}];
                      v223 = qword_100BCE900;
                      if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_DEFAULT))
                      {
                        *buf = 138412290;
                        *&buf[4] = v222;
                        _os_log_impl(&_mh_execute_header, v223, OS_LOG_TYPE_DEFAULT, "Device %@ has subscribed to ANCSNotificationSource", buf, 0xCu);
                      }

                      if (qword_100B54CA0 != -1)
                      {
                        sub_10087B608();
                      }

                      sub_1006D39B0(off_100B54C98, v222);
                    }

                    else if (!strcmp(a2, "UARPDataOverAACP"))
                    {
                      v237 = [[NSString alloc] initWithUTF8String:{xpc_dictionary_get_string(a3, "kUARPDeviceUUID")}];
                      v238 = [[NSUUID alloc] initWithUUIDString:v237];
                      if (qword_100B508D0 != -1)
                      {
                        sub_10087B4E8();
                      }

                      v239 = sub_100046458(off_100B508C8, v238, 0);
                      if (qword_100B508F0 != -1)
                      {
                        sub_10087B4C0();
                      }

                      v240 = sub_1000504C8(off_100B508E8, v239, 1);
                      if (v240)
                      {
                        *buf = 0;
                        data = xpc_dictionary_get_data(a3, "kUARPData", buf);
                        if (data && *buf)
                        {
                          v242 = malloc_type_malloc(*buf, 0x100004077774924uLL);
                          v243 = v242;
                          if (v242)
                          {
                            memcpy(v242, data, *buf);
                            if (qword_100B50950 != -1)
                            {
                              sub_10087B510();
                            }

                            if (sub_100340394(off_100B50948, v240, *buf, v243) && os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_ERROR))
                            {
                              sub_10087B538();
                            }

                            free(v243);
                          }

                          else if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_ERROR))
                          {
                            sub_10087B56C();
                          }
                        }

                        else if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_ERROR))
                        {
                          sub_10087B5A0();
                        }
                      }

                      else if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_ERROR))
                      {
                        sub_10087B5D4();
                      }
                    }

                    else if (!strcmp(a2, "BatteryServiceNotification") && _os_feature_enabled_impl())
                    {
                      v7 = sub_100050F18(a3);
                      if (qword_100B508F0 != -1)
                      {
                        sub_10087B4C0();
                      }

                      sub_10056CB60(off_100B508E8, v7);
                    }

                    return;
                  }

                  memset(buf, 0, 24);
                  v218 = xpc_dictionary_get_string(a3, "kLeaDeviceAddress");
                  sub_100007E30(buf, v218);
                  v219 = xpc_dictionary_get_int64(a3, "kLeaStoreBondingInfoResult");
                  *&dst[4] = 0;
                  *dst = 0;
                  if (buf[23] >= 0)
                  {
                    v220 = buf;
                  }

                  else
                  {
                    v220 = *buf;
                  }

                  if (sub_10009D0B4(dst, v220))
                  {
                    if (qword_100B50920 != -1)
                    {
                      sub_10087B630();
                    }

                    *v303 = *dst;
                    *&v303[4] = *&dst[4];
                    sub_100648C58(qword_100B50918, v303, v219);
                    goto LABEL_127;
                  }

                  v211 = qword_100BCE900;
                  if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_DEFAULT))
                  {
                    *v303 = 0;
                    v212 = "Received invalid device address on LeaStoreBondingInfoResponse";
                    goto LABEL_572;
                  }

                  goto LABEL_127;
                }

                memset(buf, 0, 24);
                v198 = xpc_dictionary_get_string(a3, "kLeaDeviceAddress");
                sub_100007E30(buf, v198);
                memset(dst, 0, sizeof(dst));
                v309 = 0;
                v199 = xpc_dictionary_get_string(a3, "kLeaDeviceName");
                sub_100007E30(dst, v199);
                v200 = xpc_dictionary_get_int64(a3, "kLeaDeviceEdiv");
                v271 = 0;
                v270 = 0;
                if (buf[23] >= 0)
                {
                  v201 = buf;
                }

                else
                {
                  v201 = *buf;
                }

                if (sub_10009D0B4(&v270, v201))
                {
                  v298 = 0;
                  *&v301[8] = 0;
                  *v301 = 0;
                  v307 = 0uLL;
                  length = 0;
                  v202 = xpc_dictionary_get_data(a3, "kLeaDeviceRand", &length);
                  if (v202 && length == 8)
                  {
                    v298 = *v202;
                    v264 = 0;
                    v203 = xpc_dictionary_get_data(a3, "kLeaDeviceLtk", &v264);
                    if (v203 && v264 == 16)
                    {
                      *v301 = *v203;
                      v261 = 0;
                      v204 = xpc_dictionary_get_data(a3, "kLeaDeviceIrk", &v261);
                      if (v204 && v261 == 16)
                      {
                        v307 = *v204;
                        if (v200)
                        {
                          v205 = v270;
                          v206 = BYTE1(v270);
                          v207 = BYTE2(v270);
                          v208 = HIBYTE(v270);
                          v209 = v271;
                          v210 = HIBYTE(v271);
                          v305 = 0;
                          v306 = 0;
                          if (qword_100B508D0 != -1)
                          {
                            sub_10087B4E8();
                          }

                          sub_1000498D4(off_100B508C8, (v205 << 40) | (v206 << 32) | (v207 << 24) | (v208 << 16) | (v209 << 8) | v210, 0, 0, 0, 0, &v305);
                          v258[0] = 0;
                          v258[1] = 0;
                          operator new();
                        }

                        v246 = qword_100BCE900;
                        if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_DEFAULT))
                        {
                          *v303 = 0;
                          _os_log_impl(&_mh_execute_header, v246, OS_LOG_TYPE_DEFAULT, "Received LeaStoreBondingInfoRequest to trigger unpairing", v303, 2u);
                        }

                        *&v303[8] = 0;
                        *v303 = 0;
                        if (qword_100B508D0 != -1)
                        {
                          sub_10087B4E8();
                        }

                        sub_1000498D4(off_100B508C8, (v270 << 40) | (BYTE1(v270) << 32) | (BYTE2(v270) << 24) | (HIBYTE(v270) << 16) | (v271 << 8) | HIBYTE(v271), 0, 0, 0, 0, v303);
                        if (qword_100B508C0 != -1)
                        {
                          sub_10087B658();
                        }

                        v247 = off_100B508B8;
                        v248 = sub_10004DF60(v303);
                        LODWORD(v247) = sub_10004EE74(v247, v248);

                        if (v247)
                        {
                          if (qword_100B50920 != -1)
                          {
                            sub_10087B630();
                          }

                          LODWORD(v305) = v270;
                          WORD2(v305) = v271;
                          sub_100648E84(qword_100B50918, &v305);
                          if (qword_100B508C0 != -1)
                          {
                            sub_10087B658();
                          }

                          v249 = off_100B508B8;
                          v250 = sub_10004DF60(v303);
                          sub_1007C2AA4(v249, v250);

                          goto LABEL_94;
                        }

                        v251 = qword_100BCE900;
                        if (!os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_DEFAULT))
                        {
LABEL_94:
                          if ((SHIBYTE(v309) & 0x80000000) == 0)
                          {
                            goto LABEL_127;
                          }

                          v48 = *dst;
LABEL_126:
                          operator delete(v48);
                          goto LABEL_127;
                        }

                        LOWORD(v305) = 0;
                        v44 = "Device is already unpaired";
                        v45 = &v305;
                        v46 = v251;
                        v47 = 2;
LABEL_93:
                        _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEFAULT, v44, v45, v47);
                        goto LABEL_94;
                      }

                      if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_ERROR))
                      {
                        sub_10087B680();
                      }

                      if ((buf[23] & 0x80000000) != 0)
                      {
                        sub_100008904(&v259, *buf, *&buf[8]);
                      }

                      else
                      {
                        v259 = *buf;
                        v260 = *&buf[16];
                      }

                      sub_1007E8778(a1, &v259, 1u);
                      if ((SHIBYTE(v260) & 0x80000000) == 0)
                      {
                        goto LABEL_94;
                      }

                      v106 = v259;
                    }

                    else
                    {
                      if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_ERROR))
                      {
                        sub_10087B6B4();
                      }

                      if ((buf[23] & 0x80000000) != 0)
                      {
                        sub_100008904(&v262, *buf, *&buf[8]);
                      }

                      else
                      {
                        v262 = *buf;
                        v263 = *&buf[16];
                      }

                      sub_1007E8778(a1, &v262, 1u);
                      if ((SHIBYTE(v263) & 0x80000000) == 0)
                      {
                        goto LABEL_94;
                      }

                      v106 = v262;
                    }
                  }

                  else
                  {
                    if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_ERROR))
                    {
                      sub_10087B6E8();
                    }

                    if ((buf[23] & 0x80000000) != 0)
                    {
                      sub_100008904(&v265, *buf, *&buf[8]);
                    }

                    else
                    {
                      v265 = *buf;
                      v266 = *&buf[16];
                    }

                    sub_1007E8778(a1, &v265, 1u);
                    if ((SHIBYTE(v266) & 0x80000000) == 0)
                    {
                      goto LABEL_94;
                    }

                    v106 = v265;
                  }
                }

                else
                {
                  v221 = qword_100BCE900;
                  if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_DEFAULT))
                  {
                    *v303 = 0;
                    _os_log_impl(&_mh_execute_header, v221, OS_LOG_TYPE_DEFAULT, "Received invalid device address on LeaStoreBondingInfoRequest", v303, 2u);
                  }

                  if ((buf[23] & 0x80000000) != 0)
                  {
                    sub_100008904(&v268, *buf, *&buf[8]);
                  }

                  else
                  {
                    v268 = *buf;
                    v269 = *&buf[16];
                  }

                  sub_1007E8778(a1, &v268, 1u);
                  if ((SHIBYTE(v269) & 0x80000000) == 0)
                  {
                    goto LABEL_94;
                  }

                  v106 = v268;
                }

LABEL_310:
                operator delete(v106);
                goto LABEL_94;
              }

              memset(buf, 0, 24);
              v167 = xpc_dictionary_get_string(a3, "kLeaDeviceAddress");
              sub_100007E30(buf, v167);
              memset(dst, 0, sizeof(dst));
              v309 = 0;
              v168 = xpc_dictionary_get_string(a3, "kLeaDeviceIdentifier");
              sub_100007E30(dst, v168);
              v169 = xpc_dictionary_get_value(a3, "kLeaDeviceTags");
              v170 = sub_10000C7D0();
              if (sub_10009BF08(v170) <= 1)
              {
                if ((buf[23] & 0x80000000) != 0)
                {
                  sub_100008904(&v278, *buf, *&buf[8]);
                }

                else
                {
                  v278 = *buf;
                  v279 = *&buf[16];
                }

                sub_1007E8664(a1, &v278, 3u);
                if ((SHIBYTE(v279) & 0x80000000) == 0)
                {
                  goto LABEL_94;
                }

                v106 = v278;
                goto LABEL_310;
              }

              *&v301[4] = 0;
              *v301 = 0;
              if (buf[23] >= 0)
              {
                v176 = buf;
              }

              else
              {
                v176 = *buf;
              }

              if (!sub_10009D0B4(v301, v176))
              {
                if (os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_ERROR))
                {
                  sub_10087B71C();
                }

                goto LABEL_94;
              }

              v177 = v301[0];
              v178 = v301[1];
              v179 = v301[2];
              v180 = v301[3];
              v181 = v301[4];
              v182 = v301[5];
              *&v303[8] = 0;
              *v303 = 0;
              if (qword_100B508D0 != -1)
              {
                sub_10087B4E8();
              }

              sub_1000498D4(off_100B508C8, (v177 << 40) | (v178 << 32) | (v179 << 24) | (v180 << 16) | (v181 << 8) | v182, 1u, 0, 0, 0, v303);
              if (qword_100B508C0 != -1)
              {
                sub_10087B658();
              }

              v183 = off_100B508B8;
              v184 = sub_10004DF60(v303);
              v185 = sub_10004EE74(v183, v184);

              if (v169)
              {
                v169 = sub_1005B2A14(v169);
              }

              v186 = [v169 objectEnumerator];
              if (v186)
              {
                v187 = 0;
                while (1)
                {
                  v188 = [v186 nextObject];

                  if (!v188)
                  {
                    break;
                  }

                  v187 = v188;
                  if (qword_100B508D0 != -1)
                  {
                    sub_10087B4E8();
                  }

                  v189 = off_100B508C8;
                  v190 = sub_10004DF60(v303);
                  v191 = v187;
                  sub_100007E30(v276, [v187 UTF8String]);
                  sub_10078787C(v189, v190, v276);
                  if (v277 < 0)
                  {
                    operator delete(v276[0]);
                  }
                }
              }

              if (v185)
              {
                if ((buf[23] & 0x80000000) != 0)
                {
                  sub_100008904(&v274, *buf, *&buf[8]);
                }

                else
                {
                  v274 = *buf;
                  v275 = *&buf[16];
                }

                sub_1007E8664(a1, &v274, 2u);
                if ((SHIBYTE(v275) & 0x80000000) == 0)
                {
                  goto LABEL_624;
                }

                v245 = &v274;
              }

              else
              {
                if ((buf[23] & 0x80000000) != 0)
                {
                  sub_100008904(&v272, *buf, *&buf[8]);
                }

                else
                {
                  v272 = *buf;
                  v273 = *&buf[16];
                }

                sub_1007E8664(a1, &v272, 1u);
                if ((SHIBYTE(v273) & 0x80000000) == 0)
                {
                  goto LABEL_624;
                }

                v245 = &v272;
              }

              operator delete(*v245);
LABEL_624:

              goto LABEL_94;
            }

            memset(dst, 0, sizeof(dst));
            v309 = 0;
            v117 = xpc_dictionary_get_string(a3, "kDeviceAddress");
            sub_100007E30(dst, v117);
            v118 = xpc_dictionary_get_int64(a3, "kQuickDisconnectEnabled");
            WORD2(v307) = 0;
            LODWORD(v307) = 0;
            if (v309 >= 0)
            {
              v119 = dst;
            }

            else
            {
              v119 = *dst;
            }

            if (!sub_10009D0B4(&v307, v119))
            {
              if (v307)
              {
LABEL_325:
                if (os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_ERROR))
                {
                  sub_10087B750();
                }

                goto LABEL_330;
              }

              v192 = 1;
              while (v192 != 6)
              {
                if (dst[v192++ - 16])
                {
                  if ((v192 - 2) > 4)
                  {
                    break;
                  }

                  goto LABEL_325;
                }
              }
            }

            if (qword_100B508F0 != -1)
            {
              sub_10087B4C0();
            }

            v120 = sub_1000E6554(off_100B508E8, &v307, 0);
            v121 = v120;
            if (v120 && sub_1000295DC(v120))
            {
              v122 = qword_100BCE960;
              if (os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_DEFAULT))
              {
                sub_1000E5A58(v121, v303);
                v123 = v304;
                v124 = *v303;
                v125 = sub_1000C0348(v121);
                v126 = v303;
                if (v123 < 0)
                {
                  v126 = v124;
                }

                *buf = 136446722;
                *&buf[4] = v126;
                if (v125)
                {
                  v127 = "is";
                }

                else
                {
                  v127 = "not";
                }

                *&buf[12] = 2080;
                *&buf[14] = v127;
                *&buf[22] = 1024;
                *&buf[24] = v118 != 0;
                _os_log_impl(&_mh_execute_header, v122, OS_LOG_TYPE_DEFAULT, "ConnectClassicDevice: device %{public}s %s connected with QuickDisconnectEnabled %d", buf, 0x1Cu);
                if (v304 < 0)
                {
                  operator delete(*v303);
                }
              }

              if (sub_1000C0348(v121))
              {
                if (v118)
                {
                  if (qword_100B50AC0 != -1)
                  {
                    sub_10087B7E0();
                  }

                  sub_100595470(off_100B50AB8, &v307);
                }

                else
                {
                  v229 = sub_10000C798();
                  if ((*(*v229 + 384))(v229))
                  {
                    v230 = [*(a1 + 16) firstObject];
                    if (v230)
                    {
                      if (qword_100B508D0 != -1)
                      {
                        sub_10087B4E8();
                      }

                      v231 = sub_100046458(off_100B508C8, v230, 0);
                      LOBYTE(v305) = BYTE5(v231);
                      BYTE1(v305) = BYTE4(v231);
                      BYTE2(v305) = BYTE3(v231);
                      BYTE3(v305) = BYTE2(v231);
                      BYTE4(v305) = BYTE1(v231);
                      BYTE5(v305) = v231;
                      v232 = qword_100BCE960;
                      if (os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_DEFAULT))
                      {
                        sub_1000E5A58(v121, v303);
                        v233 = v304;
                        v234 = *v303;
                        sub_1000BE6F8(&v305, v301);
                        v235 = v303;
                        if (v233 < 0)
                        {
                          v235 = v234;
                        }

                        if (v302 >= 0)
                        {
                          v236 = v301;
                        }

                        else
                        {
                          v236 = *v301;
                        }

                        *buf = 136446723;
                        *&buf[4] = v235;
                        *&buf[12] = 2160;
                        *&buf[14] = 1752392040;
                        *&buf[22] = 2081;
                        *&buf[24] = v236;
                        _os_log_impl(&_mh_execute_header, v232, OS_LOG_TYPE_DEFAULT, "ConnectClassicDevice: already in triangle, device %{public}s, peerSource %{private, mask.hash}s", buf, 0x20u);
                        if (v302 < 0)
                        {
                          operator delete(*v301);
                        }

                        if (v304 < 0)
                        {
                          operator delete(*v303);
                        }
                      }

                      if (qword_100B50950 != -1)
                      {
                        sub_10087B510();
                      }

                      sub_1003382B0(off_100B50948, v121, 0);
                    }

                    else if (os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_ERROR))
                    {
                      sub_10087B7AC();
                    }
                  }

                  else
                  {
                    v244 = qword_100BCE960;
                    if (os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 0;
                      _os_log_impl(&_mh_execute_header, v244, OS_LOG_TYPE_DEFAULT, "Device already connected ignoring connect classic request", buf, 2u);
                    }
                  }
                }
              }

              else
              {
                if (qword_100B508A0 != -1)
                {
                  sub_10087B784();
                }

                if (sub_100574ECC())
                {
                  v213 = qword_100BCE960;
                  if (os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_DEFAULT))
                  {
                    sub_1000E5A58(v121, buf);
                    v214 = buf[23] >= 0 ? buf : *buf;
                    *v303 = 136446466;
                    *&v303[4] = v214;
                    *&v303[12] = 2080;
                    *&v303[14] = "enabled";
                    _os_log_impl(&_mh_execute_header, v213, OS_LOG_TYPE_DEFAULT, "Ignoring ConnectClassicDevice msg for %{public}s, Denylist is %s", v303, 0x16u);
                    if ((buf[23] & 0x80000000) != 0)
                    {
                      operator delete(*buf);
                    }
                  }
                }

                else
                {
                  v299 = @"wxAddress";
                  v224 = [NSNumber numberWithUnsignedLongLong:sub_100508798((v121 + 128))];
                  v300 = v224;
                  v225 = [NSDictionary dictionaryWithObjects:&v300 forKeys:&v299 count:1];

                  v226 = qword_100BCE960;
                  if (os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_DEFAULT))
                  {
                    sub_1000E5A58(v121, buf);
                    v227 = buf[23] >= 0 ? buf : *buf;
                    *v303 = 136446210;
                    *&v303[4] = v227;
                    _os_log_impl(&_mh_execute_header, v226, OS_LOG_TYPE_DEFAULT, "ConnectClassicDevice: Sending notification to ask SR to connect for device %{public}s,", v303, 0xCu);
                    if ((buf[23] & 0x80000000) != 0)
                    {
                      operator delete(*buf);
                    }
                  }

                  v228 = +[NSDistributedNotificationCenter defaultCenter];
                  [v228 postNotificationName:@"com.apple.BTServer.TriangleRecoveryInitiated" object:0 userInfo:v225];
                }
              }
            }

            else if (os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_ERROR))
            {
              sub_10087B808();
            }

LABEL_330:
            if ((SHIBYTE(v309) & 0x80000000) == 0)
            {
              return;
            }

            v62 = *dst;
LABEL_129:
            operator delete(v62);
            return;
          }

          memset(buf, 0, 24);
          v76 = xpc_dictionary_get_string(a3, "kDeviceAddress");
          sub_100007E30(buf, v76);
          memset(dst, 0, sizeof(dst));
          v309 = 0;
          v77 = xpc_dictionary_get_string(a3, "kDeviceName");
          sub_100007E30(dst, v77);
          v78 = xpc_dictionary_get_value(a3, "kDeviceLinkKey");
          v79 = xpc_dictionary_get_int64(a3, "kDeviceServiceMask");
          v80 = xpc_dictionary_get_int64(a3, "kClassOfDeviceMask");
          WORD2(v298) = 0;
          LODWORD(v298) = 0;
          if (buf[23] >= 0)
          {
            v81 = buf;
          }

          else
          {
            v81 = *buf;
          }

          if (!sub_10009D0B4(&v298, v81))
          {
            if (os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_ERROR))
            {
              sub_10087B978();
            }

            if ((buf[23] & 0x80000000) != 0)
            {
              sub_100008904(&v284, *buf, *&buf[8]);
            }

            else
            {
              v284 = *buf;
              v285 = *&buf[16];
            }

            sub_1007E85C8(a1, &v284, 1u);
            if ((SHIBYTE(v285) & 0x80000000) == 0)
            {
              goto LABEL_94;
            }

            v106 = v284;
            goto LABEL_310;
          }

          v82 = xpc_array_get_count(v78);
          if (!v78 || v82 != 16)
          {
            if (os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_ERROR))
            {
              sub_10087BAC0();
            }

            if ((buf[23] & 0x80000000) != 0)
            {
              sub_100008904(v282, *buf, *&buf[8]);
            }

            else
            {
              *v282 = *buf;
              v283 = *&buf[16];
            }

            sub_1007E85C8(a1, v282, 1u);
            if ((SHIBYTE(v283) & 0x80000000) == 0)
            {
              goto LABEL_94;
            }

            v106 = v282[0];
            goto LABEL_310;
          }

          v83 = 0;
          v307 = 0uLL;
          v305 = 0;
          v306 = 0;
          do
          {
            dst[v83 - 16] = xpc_array_get_int64(v78, v83);
            ++v83;
          }

          while (v83 != 16);
          if (qword_100B508F0 != -1)
          {
            sub_10087B4C0();
          }

          v84 = sub_1000E6554(off_100B508E8, &v298, 1);
          v70 = v84;
          if (v307 != v305 || *(&v307 + 1) != v306)
          {
            if (v80)
            {
              if (qword_100B508F0 != -1)
              {
                sub_10087B4C0();
              }

              sub_10056B7FC(off_100B508E8, v70, v80);
            }

            if (v79)
            {
              v86 = 0;
              do
              {
                v87 = 1 << v86;
                if ((v79 & (1 << v86)) != 0)
                {
                  *v301 = 0;
                  sub_100016250(v301);
                  *v303 = *v301;
                  *&v303[8] = *&v301[4];
                  sub_100539554(v70, v79 & v87, 4, v303, 0);
                }

                if (v86 > 0x1E)
                {
                  break;
                }

                v79 &= ~v87;
                ++v86;
              }

              while (v79);
            }

            memset(v301, 0, 20);
            sub_1006D1B74(v301);
            if (qword_100B512E8 != -1)
            {
              sub_10087B9AC();
            }

            if (sub_1006E7E2C(off_100B512E0, v70, v301) != 150)
            {
              goto LABEL_191;
            }

            if (qword_100B50AB0 != -1)
            {
              sub_10087B9D4();
            }

            if ((sub_1000E2570(off_100B50AA8, v70) & 1) == 0)
            {
              sub_1006D1BAC(v303, &v307, 5u);
              sub_1006D1B80(v301, v303);
              nullsub_21(v303);
              if (qword_100B512E8 != -1)
              {
                sub_10087B9AC();
              }

              v171 = sub_1006E7F2C(off_100B512E0, v70, v301, 0);
              if (v171)
              {
                v89 = 1;
              }

              else
              {
                v258[0] = 0;
                sub_100016250(v258);
                *v303 = SLODWORD(v258[0]);
                *&v303[8] = SWORD2(v258[0]);
                sub_100538494(v70, dst, v303);
                v89 = 0;
              }

              v215 = qword_100BCE960;
              if (os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_DEFAULT))
              {
                v216 = "Failed to store";
                if (!v171)
                {
                  v216 = "Successfully stored";
                }

                v217 = buf;
                if (buf[23] < 0)
                {
                  v217 = *buf;
                }

                *v303 = 136315394;
                *&v303[4] = v216;
                *&v303[12] = 2080;
                *&v303[14] = v217;
                _os_log_impl(&_mh_execute_header, v215, OS_LOG_TYPE_DEFAULT, "%s classic link key for address %s", v303, 0x16u);
              }
            }

            else
            {
LABEL_191:
              v88 = qword_100BCE960;
              v89 = 0;
              if (os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_DEFAULT))
              {
                if (qword_100B50AB0 != -1)
                {
                  sub_10087B9D4();
                }

                v90 = sub_1000E2570(off_100B50AA8, v70);
                v91 = buf;
                if (buf[23] < 0)
                {
                  v91 = *buf;
                }

                *v303 = 67109378;
                *&v303[4] = v90;
                *&v303[8] = 2080;
                *&v303[10] = v91;
                _os_log_impl(&_mh_execute_header, v88, OS_LOG_TYPE_DEFAULT, "Already stored classic link key (Magic Paired: %d) for address: %s", v303, 0x12u);
                v89 = 0;
              }
            }

            if ((buf[23] & 0x80000000) != 0)
            {
              sub_100008904(v280, *buf, *&buf[8]);
            }

            else
            {
              *v280 = *buf;
              v281 = *&buf[16];
            }

            sub_1007E85C8(a1, v280, v89);
            if ((SHIBYTE(v281) & 0x80000000) == 0)
            {
              goto LABEL_541;
            }

            v197 = v280[0];
LABEL_540:
            operator delete(v197);
LABEL_541:
            nullsub_21(v301);
            goto LABEL_94;
          }

          if (v84 && sub_1000295DC(v84))
          {
            if (qword_100B50950 != -1)
            {
              sub_10087B510();
            }

            *(off_100B50948 + 431) = 2;
            if (qword_100B50AB0 != -1)
            {
              sub_10087B9D4();
            }

            v134 = sub_1000E2570(off_100B50AA8, v70);
            v135 = os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_ERROR);
            if (v134)
            {
              if (v135)
              {
                sub_10087BA58();
              }

              if (qword_100B50AB0 == -1)
              {
                goto LABEL_292;
              }

              goto LABEL_662;
            }

            if (v135)
            {
              sub_10087B9FC();
            }

            if (qword_100B50F88 == -1)
            {
              goto LABEL_481;
            }

            goto LABEL_663;
          }

          if (!os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_94;
          }
        }

        sub_10087BA8C();
        goto LABEL_94;
      }

      v40 = [[NSUUID alloc] initWithUUIDBytes:{xpc_dictionary_get_uuid(a3, "kPeerIdentifier")}];
      if (qword_100B50910 != -1)
      {
        sub_10087BB84();
      }

      sub_1005BBE88(off_100B50908, 0);
      [*(a1 + 16) removeObject:v40];
      if (qword_100B50950 != -1)
      {
        sub_10087B510();
      }

      sub_10033CB4C(off_100B50948, v40);
      if (qword_100B50920 != -1)
      {
        sub_10087B630();
      }

      sub_100648960(qword_100B50918, v40);
    }
  }
}

void sub_1007EC364(_Unwind_Exception *a1)
{
  if (*(v2 - 185) < 0)
  {
    operator delete(*(v2 - 208));
  }

  if (*(v2 - 153) < 0)
  {
    operator delete(*(v2 - 176));
  }

  _Unwind_Resume(a1);
}

void sub_1007EC970(uint64_t a1)
{
  if (qword_100B512C8 != -1)
  {
    sub_10087BCA4();
  }

  if (sub_10000EE78(off_100B512C0) == 1)
  {
    if (qword_100B508D0 != -1)
    {
      sub_10087B498();
    }

    v5 = sub_10078D05C(off_100B508C8);
    if ([v5 count])
    {
      sub_1007E6898(a1, v5);
    }

    if (qword_100B50F78 != -1)
    {
      sub_10087B484();
    }

    if (sub_100580A38(qword_100B50F70))
    {
      sub_1007E8554(a1, 1);
    }

    v2 = sub_1007ECB84();
    if (v2)
    {
      (*(*a1 + 56))(a1, v2);
    }

    v3 = sub_1007ECEA0();
    if (v3)
    {
      (*(*a1 + 64))(a1, v3);
    }

    if (_os_feature_enabled_impl())
    {
      v4 = sub_1007ED0E4();
      if (v2)
      {
        (*(*a1 + 48))(a1, v4);
      }
    }
  }
}

void sub_1007ECB84()
{
  memset(v1, 0, sizeof(v1));
  if (qword_100B50F68 != -1)
  {
    sub_10087BCB8();
  }

  sub_1000ADA24(off_100B50F60, v1);
  memset(__p, 0, sizeof(__p));
  v2 = xmmword_1008A4E40;
  v3 = 1729713604;
  sub_10000D03C(&v4, &v2);
  sub_100018404(__p, 1uLL);
}

void sub_1007ECE48(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a12)
  {
    operator delete(a12);
  }

  _Unwind_Resume(exception_object);
}

id sub_1007ECEA0()
{
  v10 = 0;
  v11 = 0;
  v12 = 0;
  if (qword_100B50F68 != -1)
  {
    sub_10087BCB8();
  }

  sub_1000ADA24(off_100B50F60, &v10);
  v1 = v10;
  v2 = v11;
  if (v10 == v11)
  {
    v0 = 0;
    if (v10)
    {
LABEL_17:
      v11 = v1;
      operator delete(v1);
    }
  }

  else
  {
    while (1)
    {
      if (sub_1000E2140(*v1, 23))
      {
        v16[0] = 0;
        v16[1] = 0;
        if (qword_100B508D0 != -1)
        {
          sub_10087B4E8();
        }

        sub_1000CC438(off_100B508C8, (*v1 + 128), v16);
        __p = 0;
        v8 = 0;
        v9 = 0;
        v13 = xmmword_1008A4E54;
        v14 = 2027922698;
        sub_10000D03C(&v15, &v13);
        sub_100099EA8(&__p, &v15, 1uLL);
        if (qword_100B50900 != -1)
        {
          sub_10087BCCC();
        }

        v3 = qword_100B508F8;
        v4 = sub_10004DF60(v16);
        v5 = sub_10070BFF0(v3, v4, &__p, 1, 0, 1);

        if (v5)
        {
          v0 = sub_10004DF60(v16);
        }

        if (__p)
        {
          v8 = __p;
          operator delete(__p);
        }

        if (v5)
        {
          break;
        }
      }

      v1 += 8;
      if (v1 == v2)
      {
        v0 = 0;
        break;
      }
    }

    v1 = v10;
    if (v10)
    {
      goto LABEL_17;
    }
  }

  return v0;
}

void sub_1007ED090(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

id sub_1007ED0E4()
{
  v10 = 0;
  v11 = 0;
  v12 = 0;
  if (qword_100B50F68 != -1)
  {
    sub_10087BCB8();
  }

  sub_1000ADA24(off_100B50F60, &v10);
  v1 = v10;
  v2 = v11;
  if (v10 == v11)
  {
    v0 = 0;
    if (v10)
    {
LABEL_18:
      v11 = v1;
      operator delete(v1);
    }
  }

  else
  {
    while (1)
    {
      if (sub_1005399A0(*v1) && (sub_100540848(*v1) & 1) == 0)
      {
        v16[0] = 0;
        v16[1] = 0;
        if (qword_100B508D0 != -1)
        {
          sub_10087B4E8();
        }

        sub_1000CC438(off_100B508C8, (*v1 + 128), v16);
        __p = 0;
        v8 = 0;
        v9 = 0;
        v13 = xmmword_1008A4D14;
        v14 = 0;
        sub_10000D03C(&v15, &v13);
        sub_100099EA8(&__p, &v15, 1uLL);
        if (qword_100B50900 != -1)
        {
          sub_10087BCCC();
        }

        v3 = qword_100B508F8;
        v4 = sub_10004DF60(v16);
        v5 = sub_10070BFF0(v3, v4, &__p, 1, 0, 1);

        if (v5)
        {
          v0 = sub_10004DF60(v16);
        }

        if (__p)
        {
          v8 = __p;
          operator delete(__p);
        }

        if (v5)
        {
          break;
        }
      }

      v1 += 8;
      if (v1 == v2)
      {
        v0 = 0;
        break;
      }
    }

    v1 = v10;
    if (v10)
    {
      goto LABEL_18;
    }
  }

  return v0;
}

void sub_1007ED2DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1007EDC0C(uint64_t a1)
{
  *a1 = &off_100B0EA28;
  *(a1 + 8) = 8;
  sub_100044BBC(a1 + 16);
  *(a1 + 88) = 0;
  *(a1 + 80) = a1 + 88;
  *(a1 + 96) = 0;
  *(a1 + 112) = 0;
  *(a1 + 104) = a1 + 112;
  *(a1 + 120) = 0;
  *(a1 + 136) = 0;
  *(a1 + 128) = a1 + 136;
  *(a1 + 144) = 0;
  *(a1 + 152) = 1;
  *(a1 + 154) = 1;
  *(a1 + 156) = 0;
  *(a1 + 160) = 0;
  sub_1007EDD10(a1);
  sub_1007EE538();
  sub_1007EF6BC();
  return a1;
}

void sub_1007EDCD4(_Unwind_Exception *a1)
{
  v8 = v5;
  sub_1007F1F9C(v4, *v7);
  sub_10005CFE4(v3, *v6);
  sub_10000CEDC(v2, *v8);
  sub_10007A068(v1 + 16);
  _Unwind_Resume(a1);
}

void sub_1007EDD10(uint64_t a1)
{
  v2 = qword_100BCE9F8;
  if (os_log_type_enabled(qword_100BCE9F8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "BTResourceManager LE initialized.", buf, 2u);
  }

  v3 = dword_100B550B8;
  v4 = 11;
  do
  {
    *__s = 0;
    v47 = 0;
    v48 = 0;
    sprintf(__s, "%d", *v3);
    v41 = 0;
    v5 = sub_10000E92C();
    sub_100007E30(buf, "BTResourceManager");
    sub_100007E30(__p, __s);
    v6 = (*(*v5 + 88))(v5, buf, __p, &v41);
    if (v40 < 0)
    {
      operator delete(__p[0]);
    }

    if (v45 < 0)
    {
      operator delete(*buf);
      if (!v6)
      {
        goto LABEL_12;
      }
    }

    else if (!v6)
    {
      goto LABEL_12;
    }

    v7 = qword_100BCE9F8;
    if (os_log_type_enabled(qword_100BCE9F8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446466;
      *&buf[4] = __s;
      v43 = 1024;
      v44 = v41;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Warning: Overriding BTResourceManager max connections for %{public}s usecase to %d", buf, 0x12u);
    }

LABEL_12:
    v8 = v41;
    *buf = v3;
    *(sub_100773E70(a1 + 80, v3++) + 16) = v8;
    --v4;
  }

  while (v4);
  LOBYTE(v41) = 0;
  v9 = sub_10000E92C();
  sub_100007E30(buf, "LE");
  sub_100007E30(__p, "DoNotEnforceAllowedList");
  v10 = (*(*v9 + 72))(v9, buf, __p, &v41);
  v11 = v41;
  if (v40 < 0)
  {
    operator delete(__p[0]);
  }

  v12 = v10 & v11;
  if (v45 < 0)
  {
    operator delete(*buf);
    if (!v12)
    {
      goto LABEL_21;
    }
  }

  else if (!v12)
  {
    goto LABEL_21;
  }

  *(a1 + 152) = 0;
  v13 = qword_100BCE9F8;
  if (os_log_type_enabled(qword_100BCE9F8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Warning: Overriding - Do Not Enforce Allowed List.", buf, 2u);
  }

LABEL_21:
  v14 = sub_10000E92C();
  sub_100007E30(buf, "LE");
  sub_100007E30(__p, "DebugAllowedList");
  v15 = (*(*v14 + 72))(v14, buf, __p, &v41);
  v16 = v41;
  if (v40 < 0)
  {
    operator delete(__p[0]);
  }

  v17 = v15 & v16;
  if (v45 < 0)
  {
    operator delete(*buf);
    if (!v17)
    {
      goto LABEL_29;
    }
  }

  else if (!v17)
  {
    goto LABEL_29;
  }

  *(a1 + 153) = 1;
  v18 = qword_100BCE9F8;
  if (os_log_type_enabled(qword_100BCE9F8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Warning: Overriding - Enable Debugging Allowed List.", buf, 2u);
  }

LABEL_29:
  *__s = 0;
  v19 = sub_10000E92C();
  sub_100007E30(buf, "LE");
  sub_100007E30(__p, "MaxConnPerBundleIDFromEndConnectingClient");
  v20 = (*(*v19 + 88))(v19, buf, __p, __s);
  if (*__s)
  {
    v21 = v20;
  }

  else
  {
    v21 = 0;
  }

  if (v40 < 0)
  {
    operator delete(__p[0]);
  }

  if (v45 < 0)
  {
    operator delete(*buf);
    if (!v21)
    {
      goto LABEL_40;
    }
  }

  else if (!v21)
  {
    goto LABEL_40;
  }

  v22 = *__s;
  *(a1 + 160) = *__s;
  v23 = qword_100BCE9F8;
  if (os_log_type_enabled(qword_100BCE9F8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = v22;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Warning: Overriding - MaxConnPerBundleIDFromEndConnectingClient %d", buf, 8u);
  }

LABEL_40:
  *__s = 0;
  *(a1 + 156) = 94;
  v24 = sub_10000E92C();
  sub_100007E30(buf, "LE");
  sub_100007E30(__p, "MaxConnPerBundleIDFromFindMyClient");
  v25 = (*(*v24 + 88))(v24, buf, __p, __s);
  if (*__s)
  {
    v26 = v25;
  }

  else
  {
    v26 = 0;
  }

  if (v40 < 0)
  {
    operator delete(__p[0]);
  }

  if (v45 < 0)
  {
    operator delete(*buf);
    if (!v26)
    {
      goto LABEL_51;
    }
  }

  else if (!v26)
  {
    goto LABEL_51;
  }

  v27 = *__s;
  *(a1 + 156) = *__s;
  v28 = qword_100BCE9F8;
  if (os_log_type_enabled(qword_100BCE9F8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = v27;
    _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Warning: Overriding - MaxConnPerBundleIDFromFindMyClient %d", buf, 8u);
  }

LABEL_51:
  *(a1 + 158) = 32;
  v29 = sub_10000E92C();
  sub_100007E30(buf, "LE");
  sub_100007E30(__p, "MaxConnPerBundleID");
  v30 = (*(*v29 + 88))(v29, buf, __p, __s);
  if (*__s)
  {
    v31 = v30;
  }

  else
  {
    v31 = 0;
  }

  if (v40 < 0)
  {
    operator delete(__p[0]);
  }

  if (v45 < 0)
  {
    operator delete(*buf);
    if (!v31)
    {
      goto LABEL_62;
    }
  }

  else if (!v31)
  {
    goto LABEL_62;
  }

  v32 = *__s;
  *(a1 + 158) = *__s;
  v33 = qword_100BCE9F8;
  if (os_log_type_enabled(qword_100BCE9F8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = v32;
    _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "Warning: Overriding - MaxConnPerBundleID %d", buf, 8u);
  }

LABEL_62:
  v34 = sub_10000E92C();
  sub_100007E30(buf, "LE");
  sub_100007E30(__p, "EnforceUseCaseRequiredList");
  v35 = (*(*v34 + 72))(v34, buf, __p, &v41);
  if (v40 < 0)
  {
    operator delete(__p[0]);
  }

  if (v45 < 0)
  {
    operator delete(*buf);
    if (!v35)
    {
      return;
    }
  }

  else if (!v35)
  {
    return;
  }

  v36 = v41;
  *(a1 + 154) = v41;
  v37 = qword_100BCE9F8;
  if (os_log_type_enabled(qword_100BCE9F8, OS_LOG_TYPE_DEFAULT))
  {
    v38 = "No";
    if (v36)
    {
      v38 = "Yes";
    }

    *buf = 136315138;
    *&buf[4] = v38;
    _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "Warning: Overriding - Enforce Use Case Required List: %s", buf, 0xCu);
  }
}

void sub_1007EE4CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (a25 < 0)
  {
    operator delete(a20);
  }

  _Unwind_Resume(exception_object);
}

void sub_1007EE538()
{
  +[NSMutableSet setWithObjects:]( NSMutableSet,  "setWithObjects:",  @"554d08b1bf41ced30d076c7ab17284e2afde2f14cf0606f41b106ebabaf98278",  @"602926fb95b65d8841071711217c956ada1917462051445917d89356ee415929",  @"3a58c9b9f34737fcb1e4ef2c5665843c6d833a2411d47bec0e7caa34ce401e89",  @"febeb2bb2afc79b90aee52b3c218ff6772ceb48b3a84caf9aa173247fbe203d9",  @"6420259b8b00972d9e54148c4399f3918bd184e67def3c308bc90db6e6426e525ad8dab6f1fa117db4bc3427c2853a4feceb05332a2bcd6fb5f3a55db03ff081",  @"15f62a1003c7f91a502a48d8b9d6b9e3234972eb2134266269da426531e0f142",  @"ec0f8fcfbb71cd4859bdcb14f4840f131b1d0931fda6846f637732a49598a49f",  @"f111edae553720e178bfd85db22cc7711b900410735da76b1604c416783fce17",  @"2249f03382b0392a6ca67e5bd4b724a0c7c1d69e4867dc9f26b66ec5fb1a2973",  @"207edf3223fd745f6cef4c884f5e28aa807d49a846b88973e5c71fbcde1de3d9",  @"ef8ff847079725c8fb3ef45a3ad4c69094b719d6eef6207cced996646cad9eb7",  @"358e413d1ec9ed3836bb8fe3f6c47ef03e29bc368636784543f2be232e66541d",  @"8b69e99aebb81c30fb34dc5074023e0f5bb05964ee28d7e43010537fba7d36e0",  @"bf4ce535225ad51bb284f2c4766a0fd74c536abac7a166d9830d3947f374de80",  @"63c4591131b2604f1ca83bf2ae7895f23c723a92106b3740a972b1b14613bc0f",  @"38fa5040af8b215d43372179eacbd6f725312c840059488b197711401d7ad5d4",  @"c097e6524326b43a007761497aca0a778b5581b035f4f0f9773d57156e9b38a0",  @"b96253cbfed55399a9e8b5820dbcf6abc5d9118ee105e2bdef0b201c3b3e9444",  @"24f2d03118a59d1daba966600ed07425b0d875d70c06be360d33fd4ca853af58",  @"23982ca925a8cd3342289446b7f42903ab99be060475efa8b0abc1a792effc29",  @"ae5179510709cdca4f1dde3264d1949698b408f426a98be526c4d14dffc26b91",  @"8e9dc135078197e06b8d8f944a5e651aba2504c63009f4143d5c0365324a5026",  @"ff31c07022e965aa2a54968917cd4f3d41e165e82d31a5fd22856c4217c28553",  @"7fad0ec0a107abc4276a86c201b1bc46d9ef1b0776cc75b71987505da768393d",  @"ea1d0f537acf0783b76af476c0ec5c3acac48b2a5432a73daa8c5afb42f19b0b",  @"a800fae19a5d4e1e92dd43934636be8787bf74e832a80bf2ea709062799acb94",  @"b35a741aeb42e57d2ac0dc685d585b208b97871bab036eaa2e6b9d9a8b89ae6e",  @"79f5c84c1c254c76b8d4ea7601499b7c3a67914dfd3e567704db4b9309ae4fb1",  @"06ccfb2f489cc5912a2cda502c69506b82cad5934895ea6ae535cab35c5bc9e3",  @"bb18ff323ebe7357070647660f905b6c4417447bdbcc79bea36ee4cf2c66b3d7",  @"a8885154121f858ca8518f612a1726949e3cf810ff24f61066fd79edf6ce7a88",  @"06fa9dee637f78720fe2778c92824a6dd80299f34646910a83029d23ca3399a4",  @"a09e4a534d554ffe8cf0544b591bf9f635ca605771f6a72ef93103fa38c41f95",  @"089f80bd091e54346dc645636f8f7b51c1d22ba623f3c0f8c05d17c34c92bc27",  @"ae98258fc9148e2a33ba48f0e2eaa82e813fdb86d010482101cae83f3d2a877d",  @"decfd0b0b0a0bfeaa333cce4c5ec9590f5f8274561d4347e9f1f6a29aa8f1d34",  @"ecc1d20a6f0e9ee4e7f384a0cdfe18050cee19a5c7c94adb6c94e12f647d24f2",  @"8cbd21794df7f1c16bbd5a267f976326a24bf9ddb3ac745bc4a854af006a50b7",  @"dfa8283074903b24529434aac683ac9d3853d95107f7fd3ee581f7c69ffc65dd",  @"e5457e14a88f3003c6c64edcaa85fbe18f7fd23e6385c9acb0f210bcd84e837e",  @"636c1f0ee6b0cccebbbfd5979ae5ecf09bcbe673df044883881fd69d313a9eac",  @"aaf648093c082f5b9999e9d8eaec9235503aa3963726641be8635701db151cfe",  @"15f6b2947dd7ad89fe858cbe80ee51c2c6c5e4625ad5d4e9b6de6c1b15db213b",  @"be0bcf7017deaa4c2f173c24718a2648f5c5e6b7a6b296df919775043acd7b73",  @"c1d1c54c3bb978737276ec2c974256db9e98e3878cf204c48ecc2bf6a3906e2a",  @"cdf1779ec4f156ca577a1e99372fe3227e2552dff8d533624ea5312c814e9c85",  @"619157a2665ca48dbd59740e7993884af9e9aefa23d42ca3beed72450a80130a",
    @"9234a514af8110d515b6a7b362afa91050b27ae2b3fcf310fa4f6e590a0c4210",
    @"c6538eb30a5e64df30159760d1c20dfb82cf10febdc237bfb3fbeaae8061e958",
    @"306dec84ac641c728a5e52b9257a536faaa292db3109b0c6c3b4b2a24999c1d8",
    @"723cf059e96372678a4c6ab6e38a54839d30b660e750e6b8cb8f61bb63437938",
    @"64b90991318f675b807c35b4ff35850a05967ee72b06176f5d1f57318bcc60e2",
    @"b86e6ba2c543374a4736569af4226371b78532514f935dd1122cdf84199d42b9",
    @"e2ae0f5a011d888eb0249f576a1f6d1cf0ab5953cf25e1451f1a476e86673b93",
    @"b27625a6780b68f433ec7012f3c75a73925c24a6a91868ceb99ac4a0ea0413e6",
    @"e64c7c5f0599df5b5800ec1771e2794491b06f49d43c00707c08c2a8d6fea059",
    @"97de29e787d6f164641fcc1a685baa8eb77cc27a1b350e75a1f0b70a0eb3204a",
    @"7abe9e90bfb16aecae19e551312117deb7622939758c83e1d65387f2fb4d94ee",
    @"546b9e29db47ebfb832d8aab0acc66bea1d4e1edf415371973ded7162c16d63e",
    @"954d5429cc098dc2f1de8f3b7b7555828b0e1fad89c315fec3f6dd9ffc5b81aa",
  v0 = @"a0e4ed5f7f57ef31adaa8e443aa30d5703b5eb7e4ccf0d4809388d975675c5da");
  v1 = qword_100BCED40;
  qword_100BCED40 = v0;

  v28 = 0;
  v29 = 0;
  v30 = 0;
  v2 = sub_10000E92C();
  sub_100007E30(&__dst, "LEAllowedBundleIDs");
  if ((*(*v2 + 48))(v2, &__dst, &v28))
  {
    v4 = v28;
    v3 = v29;
    if (SHIBYTE(v27) < 0)
    {
      operator delete(__dst);
    }

    if (v3 != v4)
    {
      v5 = v28;
      for (i = v29; v5 != i; v5 = (v5 + 24))
      {
        v27 = 0;
        __dst = 0uLL;
        if (*(v5 + 23) < 0)
        {
          sub_100008904(&__dst, *v5, *(v5 + 1));
        }

        else
        {
          v7 = *v5;
          v27 = *(v5 + 2);
          __dst = v7;
        }

        v8 = qword_100BCE9F8;
        if (os_log_type_enabled(qword_100BCE9F8, OS_LOG_TYPE_DEFAULT))
        {
          if (v27 >= 0)
          {
            p_dst = &__dst;
          }

          else
          {
            p_dst = __dst;
          }

          *buf = 136446210;
          v32 = p_dst;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Additional BundleID for allowedHashedBundleIDsSet by Overriding: %{public}s", buf, 0xCu);
        }

        v10 = [NSString alloc];
        if (v27 >= 0)
        {
          v11 = &__dst;
        }

        else
        {
          v11 = __dst;
        }

        v12 = [v10 initWithUTF8String:v11];
        v13 = CBGenerateObfuscatedSHA256HashedString();
        [qword_100BCED40 addObject:v13];

        if (SHIBYTE(v27) < 0)
        {
          operator delete(__dst);
        }
      }
    }
  }

  else if (SHIBYTE(v27) < 0)
  {
    operator delete(__dst);
  }

  v14 = sub_10000E92C();
  sub_100007E30(&__dst, "LEDisallowedBundleIDs");
  if ((*(*v14 + 48))(v14, &__dst, &v28))
  {
    v16 = v28;
    v15 = v29;
    if (SHIBYTE(v27) < 0)
    {
      operator delete(__dst);
    }

    if (v15 != v16)
    {
      v17 = v28;
      for (j = v29; v17 != j; v17 = (v17 + 24))
      {
        v27 = 0;
        __dst = 0uLL;
        if (*(v17 + 23) < 0)
        {
          sub_100008904(&__dst, *v17, *(v17 + 1));
        }

        else
        {
          v19 = *v17;
          v27 = *(v17 + 2);
          __dst = v19;
        }

        v20 = qword_100BCE9F8;
        if (os_log_type_enabled(qword_100BCE9F8, OS_LOG_TYPE_DEFAULT))
        {
          if (v27 >= 0)
          {
            v21 = &__dst;
          }

          else
          {
            v21 = __dst;
          }

          *buf = 136446210;
          v32 = v21;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "BundleID is removed from allowedHashedBundleIDsSet by Overriding: %{public}s", buf, 0xCu);
        }

        v22 = [NSString alloc];
        if (v27 >= 0)
        {
          v23 = &__dst;
        }

        else
        {
          v23 = __dst;
        }

        v24 = [v22 initWithUTF8String:v23];
        v25 = CBGenerateObfuscatedSHA256HashedString();
        [qword_100BCED40 removeObject:v25];

        if (SHIBYTE(v27) < 0)
        {
          operator delete(__dst);
        }
      }
    }
  }

  else if (SHIBYTE(v27) < 0)
  {
    operator delete(__dst);
  }

  *&__dst = &v28;
  sub_1000161FC(&__dst);
}

void sub_1007EF634(_Unwind_Exception *a1)
{
  if (*(v1 - 137) < 0)
  {
    operator delete(*(v1 - 160));
  }

  *(v1 - 160) = v1 - 136;
  sub_1000161FC((v1 - 160));
  _Unwind_Resume(a1);
}

void sub_1007EF6BC()
{
  v80 = 0;
  v81 = 0;
  v82 = 0;
  v0 = [NSMutableSet setWithObjects:@"f50eeeda9ef9e96cbfd2e255ecd185cedcaa7c023ad51d903de5405e4d94264c", @"7cd05bfaa85fc888b9ea05e891a98fb01ddd16ecadacddc789dd2e67dd008d81", 0];
  v1 = qword_100BCED48;
  qword_100BCED48 = v0;

  v2 = sub_10000E92C();
  sub_100007E30(__p, "AddLEUseCaseRequiredBundleIDsScan");
  if ((*(*v2 + 48))(v2, __p, &v80))
  {
    v4 = v80;
    v3 = v81;
    if (SHIBYTE(v79) < 0)
    {
      operator delete(__p[0]);
    }

    if (v3 != v4)
    {
      v5 = v80;
      for (i = v81; v5 != i; v5 = (v5 + 24))
      {
        __p[1] = 0;
        v79 = 0;
        __p[0] = 0;
        if (*(v5 + 23) < 0)
        {
          sub_100008904(__p, *v5, *(v5 + 1));
        }

        else
        {
          v7 = *v5;
          v79 = *(v5 + 2);
          *__p = v7;
        }

        v8 = qword_100BCE9F8;
        if (os_log_type_enabled(qword_100BCE9F8, OS_LOG_TYPE_DEFAULT))
        {
          if (v79 >= 0)
          {
            v9 = __p;
          }

          else
          {
            v9 = __p[0];
          }

          *buf = 136446210;
          v84 = v9;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Additional BundleID for useCaseRequiredHashedBundleIDsSet for Scanning by Overriding: %{public}s", buf, 0xCu);
        }

        v10 = [NSString alloc];
        if (v79 >= 0)
        {
          v11 = __p;
        }

        else
        {
          v11 = __p[0];
        }

        v12 = [v10 initWithUTF8String:v11];
        v13 = CBGenerateObfuscatedSHA256HashedString();
        [qword_100BCED48 addObject:v13];

        if (SHIBYTE(v79) < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  else if (SHIBYTE(v79) < 0)
  {
    operator delete(__p[0]);
  }

  v14 = sub_10000E92C();
  sub_100007E30(__p, "RemoveLEUseCaseRequiredBundleIDsScan");
  if ((*(*v14 + 48))(v14, __p, &v80))
  {
    v16 = v80;
    v15 = v81;
    if (SHIBYTE(v79) < 0)
    {
      operator delete(__p[0]);
    }

    if (v15 != v16)
    {
      v17 = v80;
      for (j = v81; v17 != j; v17 = (v17 + 24))
      {
        __p[1] = 0;
        v79 = 0;
        __p[0] = 0;
        if (*(v17 + 23) < 0)
        {
          sub_100008904(__p, *v17, *(v17 + 1));
        }

        else
        {
          v19 = *v17;
          v79 = *(v17 + 2);
          *__p = v19;
        }

        v20 = qword_100BCE9F8;
        if (os_log_type_enabled(qword_100BCE9F8, OS_LOG_TYPE_DEFAULT))
        {
          if (v79 >= 0)
          {
            v21 = __p;
          }

          else
          {
            v21 = __p[0];
          }

          *buf = 136446210;
          v84 = v21;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "BundleID is removed from useCaseRequiredHashedBundleIDsSet for Scanning by Overriding: %{public}s", buf, 0xCu);
        }

        v22 = [NSString alloc];
        if (v79 >= 0)
        {
          v23 = __p;
        }

        else
        {
          v23 = __p[0];
        }

        v24 = [v22 initWithUTF8String:v23];
        v25 = CBGenerateObfuscatedSHA256HashedString();
        [qword_100BCED48 removeObject:v25];

        if (SHIBYTE(v79) < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  else if (SHIBYTE(v79) < 0)
  {
    operator delete(__p[0]);
  }

  v26 = [NSMutableSet setWithObjects:@"f50eeeda9ef9e96cbfd2e255ecd185cedcaa7c023ad51d903de5405e4d94264c", @"7cd05bfaa85fc888b9ea05e891a98fb01ddd16ecadacddc789dd2e67dd008d81", 0];
  v27 = qword_100BCED50;
  qword_100BCED50 = v26;

  v28 = sub_10000E92C();
  sub_100007E30(__p, "AddLEUseCaseRequiredBundleIDsConnect");
  if ((*(*v28 + 48))(v28, __p, &v80))
  {
    v30 = v80;
    v29 = v81;
    if (SHIBYTE(v79) < 0)
    {
      operator delete(__p[0]);
    }

    if (v29 != v30)
    {
      v31 = v80;
      for (k = v81; v31 != k; v31 = (v31 + 24))
      {
        __p[1] = 0;
        v79 = 0;
        __p[0] = 0;
        if (*(v31 + 23) < 0)
        {
          sub_100008904(__p, *v31, *(v31 + 1));
        }

        else
        {
          v33 = *v31;
          v79 = *(v31 + 2);
          *__p = v33;
        }

        v34 = qword_100BCE9F8;
        if (os_log_type_enabled(qword_100BCE9F8, OS_LOG_TYPE_DEFAULT))
        {
          if (v79 >= 0)
          {
            v35 = __p;
          }

          else
          {
            v35 = __p[0];
          }

          *buf = 136446210;
          v84 = v35;
          _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "Additional BundleID for useCaseRequiredHashedBundleIDsSet for Connection by Overriding: %{public}s", buf, 0xCu);
        }

        v36 = [NSString alloc];
        if (v79 >= 0)
        {
          v37 = __p;
        }

        else
        {
          v37 = __p[0];
        }

        v38 = [v36 initWithUTF8String:v37];
        v39 = CBGenerateObfuscatedSHA256HashedString();
        [qword_100BCED50 addObject:v39];

        if (SHIBYTE(v79) < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  else if (SHIBYTE(v79) < 0)
  {
    operator delete(__p[0]);
  }

  v40 = sub_10000E92C();
  sub_100007E30(__p, "RemoveLEUseCaseRequiredBundleIDsConnect");
  if ((*(*v40 + 48))(v40, __p, &v80))
  {
    v42 = v80;
    v41 = v81;
    if (SHIBYTE(v79) < 0)
    {
      operator delete(__p[0]);
    }

    if (v41 != v42)
    {
      v43 = v80;
      for (m = v81; v43 != m; v43 = (v43 + 24))
      {
        __p[1] = 0;
        v79 = 0;
        __p[0] = 0;
        if (*(v43 + 23) < 0)
        {
          sub_100008904(__p, *v43, *(v43 + 1));
        }

        else
        {
          v45 = *v43;
          v79 = *(v43 + 2);
          *__p = v45;
        }

        v46 = qword_100BCE9F8;
        if (os_log_type_enabled(qword_100BCE9F8, OS_LOG_TYPE_DEFAULT))
        {
          if (v79 >= 0)
          {
            v47 = __p;
          }

          else
          {
            v47 = __p[0];
          }

          *buf = 136446210;
          v84 = v47;
          _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEFAULT, "BundleID is removed from useCaseRequiredHashedBundleIDsSet for Connection by Overriding: %{public}s", buf, 0xCu);
        }

        v48 = [NSString alloc];
        if (v79 >= 0)
        {
          v49 = __p;
        }

        else
        {
          v49 = __p[0];
        }

        v50 = [v48 initWithUTF8String:v49];
        v51 = CBGenerateObfuscatedSHA256HashedString();
        [qword_100BCED50 removeObject:v51];

        if (SHIBYTE(v79) < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  else if (SHIBYTE(v79) < 0)
  {
    operator delete(__p[0]);
  }

  v52 = [NSMutableSet setWithObjects:@"7cd05bfaa85fc888b9ea05e891a98fb01ddd16ecadacddc789dd2e67dd008d81", 0];
  v53 = qword_100BCED58;
  qword_100BCED58 = v52;

  v54 = sub_10000E92C();
  sub_100007E30(__p, "AddLEUseCaseRequiredBundleIDsAdv");
  if ((*(*v54 + 48))(v54, __p, &v80))
  {
    v56 = v80;
    v55 = v81;
    if (SHIBYTE(v79) < 0)
    {
      operator delete(__p[0]);
    }

    if (v55 != v56)
    {
      v57 = v80;
      for (n = v81; v57 != n; v57 = (v57 + 24))
      {
        __p[1] = 0;
        v79 = 0;
        __p[0] = 0;
        if (*(v57 + 23) < 0)
        {
          sub_100008904(__p, *v57, *(v57 + 1));
        }

        else
        {
          v59 = *v57;
          v79 = *(v57 + 2);
          *__p = v59;
        }

        v60 = qword_100BCE9F8;
        if (os_log_type_enabled(qword_100BCE9F8, OS_LOG_TYPE_DEFAULT))
        {
          if (v79 >= 0)
          {
            v61 = __p;
          }

          else
          {
            v61 = __p[0];
          }

          *buf = 136446210;
          v84 = v61;
          _os_log_impl(&_mh_execute_header, v60, OS_LOG_TYPE_DEFAULT, "Additional BundleID for useCaseRequiredHashedBundleIDsSet for Advertising by overriding: %{public}s", buf, 0xCu);
        }

        v62 = [NSString alloc];
        if (v79 >= 0)
        {
          v63 = __p;
        }

        else
        {
          v63 = __p[0];
        }

        v64 = [v62 initWithUTF8String:v63];
        v65 = CBGenerateObfuscatedSHA256HashedString();
        [qword_100BCED58 addObject:v65];

        if (SHIBYTE(v79) < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  else if (SHIBYTE(v79) < 0)
  {
    operator delete(__p[0]);
  }

  v66 = sub_10000E92C();
  sub_100007E30(__p, "RemoveLEUseCaseRequiredBundleIDsAdv");
  if ((*(*v66 + 48))(v66, __p, &v80))
  {
    v68 = v80;
    v67 = v81;
    if (SHIBYTE(v79) < 0)
    {
      operator delete(__p[0]);
    }

    if (v67 != v68)
    {
      v69 = v80;
      for (ii = v81; v69 != ii; v69 = (v69 + 24))
      {
        __p[1] = 0;
        v79 = 0;
        __p[0] = 0;
        if (*(v69 + 23) < 0)
        {
          sub_100008904(__p, *v69, *(v69 + 1));
        }

        else
        {
          v71 = *v69;
          v79 = *(v69 + 2);
          *__p = v71;
        }

        v72 = qword_100BCE9F8;
        if (os_log_type_enabled(qword_100BCE9F8, OS_LOG_TYPE_DEFAULT))
        {
          if (v79 >= 0)
          {
            v73 = __p;
          }

          else
          {
            v73 = __p[0];
          }

          *buf = 136446210;
          v84 = v73;
          _os_log_impl(&_mh_execute_header, v72, OS_LOG_TYPE_DEFAULT, "BundleID is removed from useCaseRequiredHashedBundleIDsSet for Advertising by overriding: %{public}s", buf, 0xCu);
        }

        v74 = [NSString alloc];
        if (v79 >= 0)
        {
          v75 = __p;
        }

        else
        {
          v75 = __p[0];
        }

        v76 = [v74 initWithUTF8String:v75];
        v77 = CBGenerateObfuscatedSHA256HashedString();
        [qword_100BCED58 removeObject:v77];

        if (SHIBYTE(v79) < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  else if (SHIBYTE(v79) < 0)
  {
    operator delete(__p[0]);
  }

  __p[0] = &v80;
  sub_1000161FC(__p);
}

void sub_1007F0120(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  __p = &a19;
  sub_1000161FC(&__p);
  _Unwind_Resume(a1);
}

uint64_t sub_1007F024C(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 88);
  if (v2)
  {
    v3 = a1 + 88;
    do
    {
      v4 = *(v2 + 28);
      v5 = v4 >= a2;
      v6 = v4 < a2;
      if (v5)
      {
        v3 = v2;
      }

      v2 = *(v2 + 8 * v6);
    }

    while (v2);
    if (v3 != a1 + 88 && *(v3 + 28) <= a2)
    {
      v7 = *(v3 + 32);
      if (v7)
      {
        return v7;
      }
    }
  }

  if (a2 - 20 < 2 || a2 == 655360)
  {
    return *(a1 + 8);
  }

  if ((a2 & 0xFFFF0000) == 0x10000 && dword_100B550B8 != a2)
  {
    v9 = -1;
    v10 = &dword_100B550BC;
    do
    {
      if (v9 == 9)
      {
        break;
      }

      v11 = *v10++;
      ++v9;
    }

    while (v11 != a2);
  }

  v12 = *(*sub_10000C7D0() + 4016);

  return v12();
}

uint64_t sub_1007F03B0(uint64_t a1, int a2)
{
  v3 = 0;
  v4 = 0;
  do
  {
    if (HIWORD(dword_100B550B8[v3]) == a2)
    {
      if (qword_100B508B0 != -1)
      {
        sub_10087BCF4();
      }

      v4 += sub_100756B64(off_100B508A8, dword_100B550B8[v3]);
    }

    ++v3;
  }

  while (v3 != 11);
  return v4;
}

uint64_t sub_1007F0440(uint64_t a1, int a2)
{
  if ((a2 & 0xFFFF0000) == 0x10000)
  {
    if (dword_100B550B8[0] == a2)
    {
LABEL_3:
      v3 = sub_1007F03B0(a1, 1);
      if (qword_100B508B0 == -1)
      {
        return (sub_100756B64(off_100B508A8, 3) + v3);
      }

      goto LABEL_18;
    }

    v5 = -1;
    v6 = &dword_100B550BC;
    while (v5 != 9)
    {
      v7 = *v6++;
      ++v5;
      if (v7 == a2)
      {
        if (v5 <= 9)
        {
          goto LABEL_3;
        }

        break;
      }
    }

    if (qword_100B508B0 == -1)
    {
      goto LABEL_15;
    }

LABEL_20:
    sub_10087BCF4();
    goto LABEL_15;
  }

  if (a2 == 3)
  {
    v3 = sub_1007F03B0(a1, 1);
    if (qword_100B508B0 == -1)
    {
      return (sub_100756B64(off_100B508A8, 3) + v3);
    }

LABEL_18:
    sub_10087BCF4();
    return (sub_100756B64(off_100B508A8, 3) + v3);
  }

  if (qword_100B508B0 != -1)
  {
    goto LABEL_20;
  }

LABEL_15:
  v8 = off_100B508A8;

  return sub_100756B64(v8, a2);
}