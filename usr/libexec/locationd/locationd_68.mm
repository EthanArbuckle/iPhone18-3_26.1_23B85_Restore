uint64_t sub_10047A16C(uint64_t a1)
{
  if (*(a1 + 40))
  {
    if (qword_1025D48A0 != -1)
    {
      sub_10188E118();
    }

    v2 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
    {
      v3 = sub_1000137E0();
      v4 = *(*(a1 + 24) + 132);
      v23 = 134218240;
      *v24 = v3;
      *&v24[8] = 1024;
      v25 = v4;
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEBUG, "Aggregating records start %f, count ~%d", &v23, 0x12u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10188E12C();
    }

    v5 = (*(**(a1 + 24) + 32))(*(a1 + 24), a1);
    if (qword_1025D48A0 != -1)
    {
      sub_10188E228();
    }

    v6 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
    {
      v7 = sub_1000137E0();
      v8 = *(*(a1 + 24) + 132);
      v23 = 134218240;
      *v24 = v7;
      *&v24[8] = 1024;
      v25 = v8;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "Aggregating records stop %f, count ~%d", &v23, 0x12u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10188E250();
    }

    v9 = *(a1 + 24);
    v10 = *(v9 + 132);
    if (sub_10047C8FC(v9, a1) * 1.2 < v10)
    {
      if (qword_1025D48A0 != -1)
      {
        sub_10188E228();
      }

      v11 = qword_1025D48A8;
      if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEFAULT))
      {
        v12 = *(a1 + 24);
        v13 = *(v12 + 132);
        v14 = sub_10047C8FC(v12, a1);
        v23 = 67109376;
        *v24 = v13;
        *&v24[4] = 1024;
        *&v24[6] = v14;
        _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEFAULT, "#Warning Number of records after aggregation is %d and it greatly exceeds the number of records estimated to be needed %d", &v23, 0xEu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_10188E34C(a1 + 24, a1, v15, v16, v17, v18, v19, v20);
      }
    }

    return v5;
  }

  else
  {
    v22 = *(**(a1 + 24) + 32);

    return v22();
  }
}

void sub_10047A478(void *a1, uint64_t a2, _DWORD *a3, int *a4)
{
  if (*a3 == 1)
  {
    if (qword_1025D4590 != -1)
    {
      sub_10188BE6C();
    }

    v6 = qword_1025D4598;
    if (os_log_type_enabled(qword_1025D4598, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *a4;
      v14.n128_u32[0] = 67240192;
      v14.n128_u32[1] = v7;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEFAULT, "Watch wrist state updated,onwrist,%{public}d", &v14, 8u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10188E474(a4);
    }

    Current = CFAbsoluteTimeGetCurrent();
    v9 = *a4 == 1;
    v10 = a1[34];
    if (!v10 || (v11 = v10 - 1, v12 = v11 + a1[33], v13 = *(a1[30] + ((v12 >> 5) & 0x7FFFFFFFFFFFFF8)), *(v13 + 16 * v12 + 8) != v9) && (*(v13 + 16 * (v11 + *(a1 + 264))) + 60.0 <= Current || (a1[34] = v11, sub_1001151D0(a1 + 29, 1), !a1[34])))
    {
      v14.n128_f64[0] = Current;
      v14.n128_u8[8] = v9;
      sub_10047A604(a1 + 29, &v14);
    }
  }
}

__n128 sub_10047A604(void *a1, __n128 *a2)
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
    sub_10047CA00(a1);
    v5 = a1[1];
    v7 = a1[5] + a1[4];
  }

  result = *a2;
  *(*(v5 + ((v7 >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * v7) = *a2;
  ++a1[5];
  return result;
}

void sub_10047A690(_BYTE *a1, void *a2)
{
  v9 = a2;
  if ((a1[108] & 1) == 0)
  {
    v4 = *(a1 + 11);
    if (!v4)
    {
      goto LABEL_9;
    }

    v5 = (a1 + 80);
    v6 = a1 + 88;
    do
    {
      if (*(v4 + 32) >= a2)
      {
        v6 = v4;
      }

      v4 = *(v4 + 8 * (*(v4 + 32) < a2));
    }

    while (v4);
    if (v6 != a1 + 88 && *(v6 + 8) <= a2)
    {
      while (*(v6 + 7))
      {
        *buf = *(*(v6 + 5) + 28);
        (*(*a1 + 112))(a1, a2, buf);
      }

      sub_1001132D0(v5, &v9);
    }

    else
    {
LABEL_9:
      if (qword_1025D47F0 != -1)
      {
        sub_10188DDEC();
      }

      v7 = qword_1025D47F8;
      if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_FAULT))
      {
        v8 = a1 + 8;
        if (a1[31] < 0)
        {
          v8 = *v8;
        }

        *buf = 136446466;
        v11 = v8;
        v12 = 1026;
        v13 = a2;
        _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_FAULT, "%{public}s; client %{public}d does not exist", buf, 0x12u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_10188E564(a1, a2);
      }
    }
  }
}

uint64_t sub_10047A834(uint64_t a1, uint64_t a2, int a3, void *a4)
{
  v7 = sub_100109F14(a4);
  if (v7)
  {
    v10 = a3;
    return (*(*a1 + 96))(a1, a2, &v10, v7);
  }

  else
  {
    v9 = a3;
    return (*(*a1 + 88))(a1, a2, &v9);
  }
}

uint64_t sub_10047A9C0(uint64_t a1)
{
  result = *(a1 + 48);
  if (!result)
  {
    v3 = objc_alloc_init(CLNotifierServiceAdapter);
    *(a1 + 48) = v3;
    [(CLNotifierServiceAdapter *)v3 setValid:1];
    [*(a1 + 48) setAdaptedNotifier:a1];
    return *(a1 + 48);
  }

  return result;
}

uint64_t sub_10047AA3C(char *a1, void *a2, int *a3, char *a4)
{
  v32 = a2;
  if (a1[108])
  {
    return 0;
  }

  v7 = *(a1 + 11);
  if (v7)
  {
    v10 = a1 + 88;
    do
    {
      if (*(v7 + 8) >= a2)
      {
        v10 = v7;
      }

      v7 = *&v7[8 * (*(v7 + 8) < a2)];
    }

    while (v7);
    if (v10 != a1 + 88 && *(v10 + 8) <= a2)
    {
      v31 = v10;
      v14 = *a3;
      v17 = *(v10 + 6);
      v16 = v10 + 48;
      v15 = v17;
      if (!v17)
      {
        goto LABEL_25;
      }

      v18 = v16;
      do
      {
        if (*(v15 + 7) >= v14)
        {
          v18 = v15;
        }

        v15 = *&v15[8 * (*(v15 + 7) < v14)];
      }

      while (v15);
      if (v18 == v16 || v14 < *(v18 + 7))
      {
LABEL_25:
        v18 = v16;
      }

      v19 = *(a1 + 8);
      if (!v19)
      {
        goto LABEL_33;
      }

      v20 = a1 + 64;
      do
      {
        if (*(v19 + 8) >= v14)
        {
          v20 = v19;
        }

        v19 = *&v19[8 * (*(v19 + 8) < v14)];
      }

      while (v19);
      if (v20 != a1 + 64 && v14 >= *(v20 + 8))
      {
        v30 = v20;
        v27 = *(v20 + 7);
        v28 = *a4;
        *buf = &v32;
        *(sub_100007FA0((v20 + 40), &v32) + 32) = v28;
        *buf = 0;
        if (v18 == v16 && (*(*a1 + 128))(a1, a3, buf))
        {
          sub_10047CD20();
        }

        if (v27)
        {
          goto LABEL_37;
        }
      }

      else
      {
LABEL_33:
        v21 = (a1 + 56);
        v30 = a1 + 64;
        v22 = byte_1025D5B89;
        v29 = v14;
        *buf = &v29;
        *(sub_100024014((a1 + 56), &v29) + 80) = v22;
        v29 = *a3;
        *buf = &v29;
        v23 = sub_100024014((a1 + 56), &v29);
        v24 = v23[9];
        v23[8] = 0;
        v23[9] = 0;
        if (v24)
        {
          sub_100008080(v24);
        }

        v25 = *a4;
        v29 = *a3;
        *buf = &v29;
        v26 = sub_100024014(v21, &v29);
        *buf = &v32;
        *(sub_100007FA0((v26 + 5), &v32) + 32) = v25;
      }

      (*(*a1 + 168))(a1, a3);
LABEL_37:
      if (v18 == v16)
      {
        *buf = *a3;
        sub_1003C9410((v31 + 40), buf);
      }

      return 1;
    }
  }

  if (qword_1025D47F0 != -1)
  {
    sub_10188DDEC();
  }

  v11 = qword_1025D47F8;
  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_FAULT))
  {
    v12 = a1 + 8;
    if (a1[31] < 0)
    {
      v12 = *v12;
    }

    *buf = 136446466;
    *&buf[4] = v12;
    v34 = 1026;
    v35 = a2;
    _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_FAULT, "%{public}s; client %{public}d does not exist", buf, 0x12u);
  }

  v13 = sub_10000A100(121, 0);
  result = 0;
  if (v13)
  {
    sub_10188E66C(a1, a2);
    return 0;
  }

  return result;
}

BOOL sub_10047ADF4(uint64_t a1, void *a2, int *a3)
{
  v5 = *(a1 + 88);
  if (!v5)
  {
    goto LABEL_8;
  }

  v6 = a1 + 88;
  do
  {
    if (*(v5 + 32) >= a2)
    {
      v6 = v5;
    }

    v5 = *(v5 + 8 * (*(v5 + 32) < a2));
  }

  while (v5);
  if (v6 != a1 + 88 && *(v6 + 32) <= a2)
  {
    v13 = *(v6 + 48);
    v11 = v6 + 48;
    v12 = v13;
    if (!v13)
    {
      goto LABEL_24;
    }

    v14 = *a3;
    v15 = v11;
    do
    {
      if (*(v12 + 28) >= v14)
      {
        v15 = v12;
      }

      v12 = *(v12 + 8 * (*(v12 + 28) < v14));
    }

    while (v12);
    if (v15 == v11 || v14 < *(v15 + 28))
    {
LABEL_24:
      v15 = v11;
    }

    return v15 != v11;
  }

  else
  {
LABEL_8:
    if (qword_1025D47F0 != -1)
    {
      sub_10188DDEC();
    }

    v7 = qword_1025D47F8;
    if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_FAULT))
    {
      v8 = (a1 + 8);
      if (*(a1 + 31) < 0)
      {
        v8 = *v8;
      }

      v16 = 136446466;
      v17 = v8;
      v18 = 1026;
      v19 = a2;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_FAULT, "%{public}s; client %{public}d does not exist", &v16, 0x12u);
    }

    v9 = sub_10000A100(121, 0);
    result = 0;
    if (v9)
    {
      sub_10188E774(a1, a2);
      return 0;
    }
  }

  return result;
}

uint64_t sub_10047AF88(char *a1, int a2, int *a3)
{
  v23 = a2;
  v3 = a1[108];
  if ((v3 & 1) == 0)
  {
    v5 = *(a1 + 11);
    if (v5)
    {
      v7 = a1 + 88;
      do
      {
        if (*(v5 + 32) >= a2)
        {
          v7 = v5;
        }

        v5 = *(v5 + 8 * (*(v5 + 32) < a2));
      }

      while (v5);
      if (v7 != a1 + 88 && *(v7 + 8) <= a2)
      {
        v10 = *(v7 + 6);
        v8 = v7 + 48;
        v9 = v10;
        if (v10)
        {
          v11 = *a3;
          v12 = v8;
          do
          {
            if (*(v9 + 7) >= v11)
            {
              v12 = v9;
            }

            v9 = *&v9[8 * (*(v9 + 7) < v11)];
          }

          while (v9);
          if (v12 != v8 && v11 >= *(v12 + 7))
          {
            LODWORD(__p[0]) = *a3;
            sub_10004E6E0((v8 - 8), __p);
            v13 = *(a1 + 8);
            if (!v13)
            {
              goto LABEL_23;
            }

            v14 = *a3;
            v15 = a1 + 64;
            do
            {
              if (*(v13 + 32) >= v14)
              {
                v15 = v13;
              }

              v13 = *(v13 + 8 * (*(v13 + 32) < v14));
            }

            while (v13);
            if (v15 != a1 + 64 && v14 >= *(v15 + 8))
            {
              sub_10004E6E0((v15 + 40), &v23);
              if (!*(v15 + 7))
              {
                (*(*a1 + 176))(a1, a3);
              }
            }

            else
            {
LABEL_23:
              if (qword_1025D47F0 != -1)
              {
                sub_10188DE00();
              }

              v16 = qword_1025D47F8;
              if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_FAULT))
              {
                v17 = a1 + 8;
                if (a1[31] < 0)
                {
                  v17 = *v17;
                }

                (*(*a1 + 160))(__p, a1, a3);
                if (v33 >= 0)
                {
                  v18 = __p;
                }

                else
                {
                  v18 = __p[0];
                }

                *buf = 136446466;
                *&buf[4] = v17;
                v25 = 2082;
                v26 = v18;
                _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_FAULT, "%{public}s; notification %{public}s not found", buf, 0x16u);
                if (v33 < 0)
                {
                  operator delete(__p[0]);
                }
              }

              if (sub_10000A100(121, 0))
              {
                bzero(__p, 0x65CuLL);
                if (qword_1025D47F0 != -1)
                {
                  sub_10188DE00();
                }

                v20 = a1 + 8;
                if (a1[31] < 0)
                {
                  v20 = *v20;
                }

                (*(*a1 + 160))(buf, a1, a3);
                if (v27 >= 0)
                {
                  v21 = buf;
                }

                else
                {
                  v21 = *buf;
                }

                v28 = 136446466;
                v29 = v20;
                v30 = 2082;
                v31 = v21;
                v22 = _os_log_send_and_compose_impl();
                if (v27 < 0)
                {
                  operator delete(*buf);
                }

                sub_100152C7C("Generic", 1, 0, 0, "virtual BOOL CLNotifier<CLHealthAssessmentNotifier_Type::Notification, CLHealthAssessmentNotifier_Type::NotificationData, char, char>::unregisterForNotification(int, const Notification_T &) [Notification_T = CLHealthAssessmentNotifier_Type::Notification, NotificationData_T = CLHealthAssessmentNotifier_Type::NotificationData, NotificationInfo_T = char, RegistrationInfo_T = char]", "%s\n", v22);
                if (v22 != __p)
                {
                  free(v22);
                }
              }
            }
          }
        }
      }
    }
  }

  return v3 ^ 1u;
}

void sub_10047B458(uint64_t a1, int *a2, uint64_t a3, int a4)
{
  if ((*(a1 + 108) & 1) == 0)
  {
    v4 = *(a1 + 64);
    if (!v4)
    {
      goto LABEL_9;
    }

    v5 = *a2;
    v6 = a1 + 64;
    do
    {
      if (*(v4 + 32) >= v5)
      {
        v6 = v4;
      }

      v4 = *(v4 + 8 * (*(v4 + 32) < v5));
    }

    while (v4);
    if (v6 == a1 + 64 || v5 < *(v6 + 32))
    {
LABEL_9:
      v9 = v10;
      memset(v10, 0, 32);
      sub_100248B84(buf, a2, &v9);
      sub_10047D8C8();
    }

    if (a4)
    {
      operator new();
    }

    v7 = *(v6 + 72);
    *(v6 + 64) = 0;
    *(v6 + 72) = 0;
    if (v7)
    {
      sub_100008080(v7);
    }

    if (*(v6 + 56))
    {
      sub_10047D460();
    }
  }
}

void sub_10047B928(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_101865570(va);
  sub_101864718(v9 - 144);
  _Unwind_Resume(a1);
}

void sub_10047B954(uint64_t a1)
{
  if (*(a1 + 108) == 1)
  {
    if (qword_1025D47F0 != -1)
    {
      sub_10188DDEC();
    }

    v2 = qword_1025D47F8;
    if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
    {
      v3 = (a1 + 8);
      if (*(a1 + 31) < 0)
      {
        v3 = *v3;
      }

      *buf = 136315138;
      v20 = v3;
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEBUG, "%s; already shutdown; not listing clients", buf, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10188E990(a1);
    }
  }

  else
  {
    if (qword_1025D47F0 != -1)
    {
      sub_10188DDEC();
    }

    v4 = qword_1025D47F8;
    if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
    {
      v5 = (a1 + 8);
      if (*(a1 + 31) < 0)
      {
        v5 = *v5;
      }

      v6 = *(a1 + 96);
      *buf = 136315394;
      v20 = v5;
      v21 = 2048;
      v22[0] = v6;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "%s; listing clients, num clients: %zu", buf, 0x16u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10188E87C(a1);
    }

    v7 = *(a1 + 80);
    if (v7 != (a1 + 88))
    {
      do
      {
        v8 = v7[5];
        if (v8 != v7 + 6)
        {
          do
          {
            if (qword_1025D47F0 != -1)
            {
              sub_10188DE00();
            }

            v9 = qword_1025D47F8;
            if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
            {
              v10 = (a1 + 8);
              if (*(a1 + 31) < 0)
              {
                v10 = *(a1 + 8);
              }

              v11 = *(v7 + 8);
              v12 = *(v8 + 7);
              *buf = 136315650;
              v20 = v10;
              v21 = 1024;
              LODWORD(v22[0]) = v11;
              WORD2(v22[0]) = 1024;
              *(v22 + 6) = v12;
              _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "%s; clients, id: %d, notification: %d", buf, 0x18u);
            }

            if (sub_10000A100(121, 2))
            {
              bzero(buf, 0x65CuLL);
              if (qword_1025D47F0 != -1)
              {
                sub_10188DE00();
              }

              v16 = _os_log_send_and_compose_impl();
              sub_100152C7C("Generic", 1, 0, 2, "virtual void CLNotifier<CLHealthAssessmentNotifier_Type::Notification, CLHealthAssessmentNotifier_Type::NotificationData, char, char>::listClients() [Notification_T = CLHealthAssessmentNotifier_Type::Notification, NotificationData_T = CLHealthAssessmentNotifier_Type::NotificationData, NotificationInfo_T = char, RegistrationInfo_T = char]", "%s\n", v16);
              if (v16 != buf)
              {
                free(v16);
              }
            }

            v13 = v8[1];
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
                v14 = v8[2];
                v15 = *v14 == v8;
                v8 = v14;
              }

              while (!v15);
            }

            v8 = v14;
          }

          while (v14 != v7 + 6);
        }

        v17 = v7[1];
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
            v18 = v7[2];
            v15 = *v18 == v7;
            v7 = v18;
          }

          while (!v15);
        }

        v7 = v18;
      }

      while (v18 != (a1 + 88));
    }
  }
}

void sub_10047BD74(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_10047BD74(a1, *a2);
    sub_10047BD74(a1, a2[1]);
    sub_1018646D4((a2 + 4));

    operator delete(a2);
  }
}

void *sub_10047BE3C(void *a1, unsigned __int8 *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_102456030;
  sub_1011B01B8(a1 + 3, *a2);
  return a1;
}

void sub_10047BEBC(std::__shared_weak_count *a1)
{
  a1->__vftable = off_102456030;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void *sub_10047BF38(void *a1)
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
    sub_10045E858(a1, v9);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v10 = *v4;
  a1[1] = v4 + 1;
  return sub_10045E430(a1, &v10);
}

void sub_10047C0C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10047C10C(uint64_t a1, double *a2)
{
  v5 = a1 + 112;
  v4 = *(a1 + 112);
  v6 = a1 + 72;
  *&v18[1] = a1 + 112;
  (*(v4 + 16))(a1 + 112);
  v19 = 256;
  v18[0] = *a2;
  if (sub_10009CB48(v6, v18))
  {
    if (sub_100099160(v6))
    {
      (*(*a1 + 80))(a1, a2, 0);
    }

    else if ((*(a1 + 128) & 1) == 0)
    {
      v12 = *(a1 + 216);
      if (v12 > *(a1 + 272))
      {
        ++*(a1 + 208);
        *(a1 + 216) = v12 - 1;
        sub_10047C698(a1 + 176, 1);
        if (qword_1025D4200 != -1)
        {
          sub_10188EA94();
        }

        v13 = qword_1025D4208;
        if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_DEBUG, "Maximum number of entries exceeded, throwing out oldest entry.", buf, 2u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_10188EABC(buf);
          v17 = _os_log_send_and_compose_impl();
          sub_100152C7C("Generic", 1, 0, 2, "void CLActivityRecorderDb<ParkinsonsResult, CLActivityDB::ClassBDataProtectionPolicy>::addSuspectRecord(const T &) [T = ParkinsonsResult, DataProtectionPolicy = CLActivityDB::ClassBDataProtectionPolicy]", "%s\n", v17);
          if (v17 != buf)
          {
            free(v17);
          }
        }
      }

      if (qword_1025D4270 != -1)
      {
        sub_10188EB00();
      }

      v14 = qword_1025D4278;
      if (os_log_type_enabled(qword_1025D4278, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_DEBUG, "Buffer was added to since db was inaccesible.", buf, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_10188EB28(buf);
        v16 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "void CLActivityRecorderDb<ParkinsonsResult, CLActivityDB::ClassBDataProtectionPolicy>::addSuspectRecord(const T &) [T = ParkinsonsResult, DataProtectionPolicy = CLActivityDB::ClassBDataProtectionPolicy]", "%s\n", v16);
        if (v16 != buf)
        {
          free(v16);
        }
      }

      v7 = sub_10047C5E8((a1 + 176), a2);
    }
  }

  else
  {
    if (qword_1025D4200 != -1)
    {
      sub_10188EA94();
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
        sub_10188EA94();
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

void sub_10047C5B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_1017EC98C(va);
  _Unwind_Resume(a1);
}

__n128 sub_10047C5E8(void *a1, uint64_t a2)
{
  v4 = a1[2];
  v5 = a1[1];
  v6 = 85 * ((v4 - v5) >> 3) - 1;
  if (v4 == v5)
  {
    v6 = 0;
  }

  v7 = a1[5] + a1[4];
  if (v6 == v7)
  {
    sub_10047C728(a1);
    v5 = a1[1];
    v7 = a1[5] + a1[4];
  }

  v8 = *(v5 + 8 * (v7 / 0x55)) + 48 * (v7 % 0x55);
  result = *a2;
  v10 = *(a2 + 32);
  *(v8 + 16) = *(a2 + 16);
  *(v8 + 32) = v10;
  *v8 = result;
  ++a1[5];
  return result;
}

uint64_t sub_10047C698(uint64_t a1, int a2)
{
  v2 = *(a1 + 32);
  if (v2 < 0x55)
  {
    a2 = 1;
  }

  if (v2 < 0xAA)
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
    *(a1 + 32) -= 85;
  }

  return v4 ^ 1u;
}

void *sub_10047C728(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x55;
  v3 = v1 - 85;
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
    sub_10045E858(a1, v9);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v10 = *v4;
  a1[1] = v4 + 1;
  return sub_10045E430(a1, &v10);
}

void sub_10047C8B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10047C8FC(uint64_t a1, double **a2)
{
  v3 = *a2;
  v2 = a2[1];
  v4 = (*a2)[1];
  v5 = *(a1 + 136);
  if (v4 <= v5)
  {
    v4 = *(a1 + 136);
  }

  v6 = v3 + 3;
  if (v3 + 3 == v2)
  {
    v7 = 0;
  }

  else
  {
    LODWORD(v7) = 0;
    v8 = *v3;
    do
    {
      v9 = *v6;
      v10 = v6[1];
      v6 += 3;
      v7 = (v7 + ((v9 - v8) / v4));
      if (v10 <= v5)
      {
        v4 = *(a1 + 136);
      }

      else
      {
        v4 = v10;
      }

      v8 = v9;
    }

    while (v6 != v2);
  }

  if (v4 != 1.79769313e308)
  {
    if (qword_1025D4200 != -1)
    {
      sub_10188EB6C();
    }

    v11 = qword_1025D4208;
    if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_DEFAULT))
    {
      *v13 = 0;
      _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEFAULT, "#Warning No expiration rule was added so the number of records will be unbounded.", v13, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10188EB80();
    }
  }

  return v7;
}

void *sub_10047CA00(void *a1)
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
    sub_10045E858(a1, v9);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v10 = *v4;
  a1[1] = v4 + 1;
  return sub_10045E430(a1, &v10);
}

void sub_10047CB88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10047CBD4(uint64_t **a1, uint64_t a2)
{
  v3 = a1 + 1;
  v4 = a1[1];
  if (v4)
  {
    do
    {
      while (1)
      {
        v3 = v4;
        if (*(a2 + 28) >= *(v4 + 7))
        {
          break;
        }

        v4 = *v4;
        v5 = v3;
        if (!*v3)
        {
          goto LABEL_8;
        }
      }

      v4 = v4[1];
    }

    while (v4);
    v5 = v3 + 1;
  }

  else
  {
    v5 = a1 + 1;
  }

LABEL_8:
  sub_10002393C(a1, v3, v5, a2);
  return a2;
}

void *sub_10047CC44(uint64_t a1)
{
  result = *(a1 + 16);
  if (result)
  {
    v3 = *result;
    if (*result == a1)
    {
      *result = 0;
      while (1)
      {
        v4 = result[1];
        if (!v4)
        {
          break;
        }

        do
        {
          result = v4;
          v4 = *v4;
        }

        while (v4);
      }
    }

    else
    {
      for (result[1] = 0; v3; v3 = result[1])
      {
        do
        {
          result = v3;
          v3 = *v3;
        }

        while (v3);
      }
    }
  }

  return result;
}

uint64_t sub_10047CC98(uint64_t a1)
{
  sub_1003C93BC(*a1, *(a1 + 16));
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = v2[2];
    if (v3)
    {
      do
      {
        v2 = v3;
        v3 = v3[2];
      }

      while (v3);
      *(a1 + 8) = v2;
    }

    sub_1003C93BC(*a1, v2);
  }

  return a1;
}

_BYTE *sub_10047CDCC(_BYTE *result, uint64_t a2, uint64_t *a3, void *a4)
{
  if ((result[108] & 1) == 0)
  {
    v7 = result;
    v8 = *(*a2 + 32);
    LODWORD(v12) = *(*a3 + 32);
    v9 = sub_10047CEE4(a4);
    v10 = *a3;
    v13 = (*a2 + 32);
    v11 = sub_100007FA0(v10 + 40, v13);
    result = (*(*v7 + 192))(v7, v8, &v12, v9, v10 + 80, v11 + 4);
    if (result)
    {
      return [*(*a2 + 64) onNotification:*(*a3 + 32) withData:{a4, v12}];
    }
  }

  return result;
}

uint64_t sub_10047CEC4(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    operator delete();
  }

  return result;
}

id sub_10047CEE4(void *a1)
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {

    return sub_10047CF80(a1);
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {

      return sub_10047D158(a1);
    }

    else
    {
      return 0;
    }
  }
}

id sub_10047CF80(void *a1)
{
  v2 = [a1 binaryVersion];
  [a1 sizeOfType];
  if (!v2)
  {
    return sub_10047D35C(&v6, a1);
  }

  if (getenv("_INTERSILO_UNIT_TEST"))
  {
    if (qword_1025D41A0 != -1)
    {
      sub_10188EC5C();
    }

    v3 = qword_1025D41A8;
    if (os_log_type_enabled(qword_1025D41A8, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218498;
      v8 = v2;
      v9 = 2048;
      v10 = 0;
      v11 = 2080;
      v12 = 0x8000000101C78F78 & 0x7FFFFFFFFFFFFFFFLL;
      _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_ERROR, "Mismatch of versions between encoded (%llu) and decoded (%llu) objects! This is possibly because the version has changed on one side and possibly broken ABI compatibility. Please update your type for %s accordingly", buf, 0x20u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_10188EC70();
    }
  }

  else
  {
    if (qword_1025D41A0 != -1)
    {
      sub_10188EC5C();
    }

    v5 = qword_1025D41A8;
    if (os_log_type_enabled(qword_1025D41A8, OS_LOG_TYPE_FAULT))
    {
      *buf = 134218498;
      v8 = v2;
      v9 = 2048;
      v10 = 0;
      v11 = 2080;
      v12 = 0x8000000101C78F78 & 0x7FFFFFFFFFFFFFFFLL;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_FAULT, "Mismatch of versions between encoded (%llu) and decoded (%llu) objects! This is possibly because the version has changed on one side and possibly broken ABI compatibility. Please update your type for %s accordingly", buf, 0x20u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_10188ED78();
    }
  }

  return 0;
}

id sub_10047D158(void *a1)
{
  v2 = [a1 binaryVersion];
  [a1 sizeOfType];
  if (v2)
  {
    if (getenv("_INTERSILO_UNIT_TEST"))
    {
      if (qword_1025D41A0 != -1)
      {
        sub_10188EC5C();
      }

      v3 = qword_1025D41A8;
      if (os_log_type_enabled(qword_1025D41A8, OS_LOG_TYPE_ERROR))
      {
        v6 = 134218498;
        v7 = v2;
        v8 = 2048;
        v9 = 0;
        v10 = 2080;
        v11 = 0x8000000101C78F78 & 0x7FFFFFFFFFFFFFFFLL;
        _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_ERROR, "Mismatch of versions between encoded (%llu) and decoded (%llu) objects! This is possibly because the version has changed on one side and possibly broken ABI compatibility. Please update your type for %s accordingly", &v6, 0x20u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_10188EE80();
      }
    }

    else
    {
      if (qword_1025D41A0 != -1)
      {
        sub_10188EC5C();
      }

      v5 = qword_1025D41A8;
      if (os_log_type_enabled(qword_1025D41A8, OS_LOG_TYPE_FAULT))
      {
        v6 = 134218498;
        v7 = v2;
        v8 = 2048;
        v9 = 0;
        v10 = 2080;
        v11 = 0x8000000101C78F78 & 0x7FFFFFFFFFFFFFFFLL;
        _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_FAULT, "Mismatch of versions between encoded (%llu) and decoded (%llu) objects! This is possibly because the version has changed on one side and possibly broken ABI compatibility. Please update your type for %s accordingly", &v6, 0x20u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_10188EF88();
      }
    }

    return 0;
  }

  else
  {

    return [a1 cppObjectPtr];
  }
}

id sub_10047D35C(uint64_t a1, void *a2)
{
  if (![a2 cppObjectPtr] && objc_msgSend(objc_msgSend(a2, "compatibilityInfo"), "isEqual:", &off_10254E948))
  {
    if ([objc_msgSend(a2 "serialized")] != 8)
    {
      sub_10188F090();
    }

    [a2 setCppObjectPtr:{objc_msgSend(objc_msgSend(a2, "serialized"), "bytes")}];
  }

  return [a2 cppObjectPtr];
}

void sub_10047D404(std::__shared_weak_count *a1)
{
  a1->__vftable = off_102456100;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_10047D50C(void *a1, int *a2, void *a3)
{
  if ((*(a1 + 108) & 1) == 0)
  {
    v5 = a1 + 8;
    v4 = a1[8];
    if (v4)
    {
      v8 = *a2;
      v9 = (a1 + 8);
      do
      {
        if (*(v4 + 32) >= v8)
        {
          v9 = v4;
        }

        v4 = *(v4 + 8 * (*(v4 + 32) < v8));
      }

      while (v4);
      if (v9 != v5 && v8 >= *(v9 + 32))
      {
        v37 = v9;
        v10 = sub_10047CEE4(a3);
        (*(*a1 + 184))(a1, a2, v10, v9 + 80);
        v11 = *(v9 + 40);
        if (v11 != (v9 + 48))
        {
          v12 = a1 + 11;
          v13 = a1 + 1;
          do
          {
            v14 = *v12;
            if (!*v12)
            {
              goto LABEL_18;
            }

            v15 = *(v11 + 7);
            v16 = a1 + 11;
            do
            {
              if (*(v14 + 32) >= v15)
              {
                v16 = v14;
              }

              v14 = *(v14 + 8 * (*(v14 + 32) < v15));
            }

            while (v14);
            if (v16 != v12 && (v17 = *(v16 + 8), v15 >= v17))
            {
              v36 = v16;
              sub_10047CDCC(a1, &v36, &v37, a3);
              v21 = a1[8];
              if (!v21)
              {
                return;
              }

              v22 = *a2;
              v23 = v5;
              do
              {
                if (*(v21 + 32) >= v22)
                {
                  v23 = v21;
                }

                v21 = *(v21 + 8 * (*(v21 + 32) < v22));
              }

              while (v21);
              if (v23 == v5 || v22 < *(v23 + 32))
              {
                return;
              }

              v37 = v23;
              v25 = *(v23 + 48);
              v11 = (v23 + 48);
              v24 = v25;
              if (v25)
              {
                v26 = v11;
                v27 = v24;
                do
                {
                  if (*(v27 + 28) >= v17)
                  {
                    v26 = v27;
                  }

                  v27 = *(v27 + 8 * (*(v27 + 28) < v17));
                }

                while (v27);
                if (v26 == v11 || v17 < *(v26 + 7))
                {
                  do
                  {
                    v28 = *(v24 + 28);
                    v29 = v17 < v28;
                    v30 = v17 >= v28;
                    if (v29)
                    {
                      v11 = v24;
                    }

                    v24 = *(v24 + 8 * v30);
                  }

                  while (v24);
                }

                else
                {
                  v31 = v26[1];
                  if (v31)
                  {
                    do
                    {
                      v11 = v31;
                      v31 = *v31;
                    }

                    while (v31);
                  }

                  else
                  {
                    do
                    {
                      v11 = v26[2];
                      v32 = *v11 == v26;
                      v26 = v11;
                    }

                    while (!v32);
                  }
                }
              }
            }

            else
            {
LABEL_18:
              v36 = a1 + 11;
              if (qword_1025D47F0 != -1)
              {
                sub_10188DE00();
              }

              v18 = qword_1025D47F8;
              if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_FAULT))
              {
                v19 = a1 + 1;
                if (*(a1 + 31) < 0)
                {
                  v19 = *v13;
                }

                v20 = *(v11 + 7);
                *buf = 136446466;
                v43 = v19;
                v44 = 1026;
                v45 = v20;
                _os_log_impl(dword_100000000, v18, OS_LOG_TYPE_FAULT, "%{public}s; unknown client %{public}d", buf, 0x12u);
              }

              if (sub_10000A100(121, 0))
              {
                bzero(buf, 0x65CuLL);
                if (qword_1025D47F0 != -1)
                {
                  sub_10188DE00();
                }

                v33 = a1 + 1;
                if (*(a1 + 31) < 0)
                {
                  v33 = *v13;
                }

                v34 = *(v11 + 7);
                v38 = 136446466;
                v39 = v33;
                v40 = 1026;
                v41 = v34;
                v35 = _os_log_send_and_compose_impl();
                sub_100152C7C("Generic", 1, 0, 0, "void CLNotifier<CLHealthAssessmentNotifier_Type::Notification, CLHealthAssessmentNotifier_Type::NotificationData, char, char>::invokeClientsWithData(const Notification_T &, CLCppContainer *) [Notification_T = CLHealthAssessmentNotifier_Type::Notification, NotificationData_T = CLHealthAssessmentNotifier_Type::NotificationData, NotificationInfo_T = char, RegistrationInfo_T = char]", "%s\n", v35);
                if (v35 != buf)
                {
                  free(v35);
                }
              }
            }
          }

          while (v11 != (v37 + 48));
        }
      }
    }
  }
}

__n128 sub_10047D9B0(__n128 *a1, __n128 *a2)
{
  v2 = a2->n128_u32[0];
  a1->n128_u64[1] = a2->n128_u64[1];
  v3 = a2 + 1;
  v4 = a2[1].n128_u64[0];
  a1->n128_u32[0] = v2;
  a1[1].n128_u64[0] = v4;
  v5 = a1 + 1;
  v6 = a2[1].n128_u64[1];
  a1[1].n128_u64[1] = v6;
  if (v6)
  {
    *(v4 + 16) = v5;
    a2->n128_u64[1] = v3;
    v3->n128_u64[0] = 0;
    a2[1].n128_u64[1] = 0;
  }

  else
  {
    a1->n128_u64[1] = v5;
  }

  result = a2[2];
  a1[2] = result;
  a2[2].n128_u64[0] = 0;
  a2[2].n128_u64[1] = 0;
  a1[3].n128_u8[0] = a2[3].n128_u8[0];
  return result;
}

void *sub_10047DA08(void *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  sub_100D9A240(a1, *a2, (a2 + 8));
  return a1;
}

uint64_t sub_10047DA60(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    operator delete();
  }

  return result;
}

void sub_10047DA9C(uint64_t a1, char *a2, int a3, uint64_t a4, int a5, uint64_t a6, float a7, uint64_t a8, __int128 *a9, __int128 *a10)
{
  *(a1 + 8) = 0u;
  v18 = (a1 + 8);
  *(a1 + 56) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 24) = 0u;
  *a1 = off_102450C98;
  sub_1003FFA38((a1 + 8));
  *v18 = &off_102450CC8;
  *a1 = off_102456150;
  *(a1 + 72) = off_102456188;
  sub_101052EEC(a1 + 72, a2, a5, a1, a7, a6, 7, 12000);
  *a1 = off_102456150;
  *(a1 + 72) = off_102456188;
  *(a1 + 176) = a4;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 0;
  sub_10000EC00((a1 + 224), a2);
  if (*(a9 + 23) < 0)
  {
    sub_100007244((a1 + 248), *a9, *(a9 + 1));
  }

  else
  {
    v19 = *a9;
    *(a1 + 264) = *(a9 + 2);
    *(a1 + 248) = v19;
  }

  if (*(a10 + 23) < 0)
  {
    sub_100007244((a1 + 272), *a10, *(a10 + 1));
  }

  else
  {
    v20 = *a10;
    *(a1 + 288) = *(a10 + 2);
    *(a1 + 272) = v20;
  }

  *(a1 + 296) = -1;
  *(a1 + 304) = -1;
  *(a1 + 308) = 0;
  *(a1 + 320) = 0;
  *(a1 + 328) = 0;
  *(a1 + 312) = 0;
  *(a1 + 336) = 0;
  sub_100DD42E4((a1 + 344), 0, 0);
  if (a3)
  {
    operator new();
  }

  operator new();
}

void sub_10047DEF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19)
{
  if (*(v19 + 271) < 0)
  {
    operator delete(*(v19 + 248));
  }

  if (*(v19 + 247) < 0)
  {
    operator delete(*(v19 + 224));
  }

  sub_1001E56E8(&__p);
  v23 = *(v19 + 192);
  *(v19 + 192) = 0;
  if (v23)
  {
    (*(*v23 + 24))(v23);
  }

  v24 = *v21;
  *v21 = 0;
  if (v24)
  {
    (*(*v24 + 8))(v24);
  }

  sub_1010532A4(a9);
  *v19 = a10;
  sub_1003FFCFC(v20);
  _Unwind_Resume(a1);
}

uint64_t sub_10047E054(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (*(a1 + 176) && (sub_100099160(a1 + 72) & 1) == 0)
  {
    sub_100EA58B0(*(a1 + 176));
  }

  if (!(*(*(a1 + 72) + 24))())
  {
    return 0;
  }

  v3 = *(**(a1 + 184) + 24);

  return v3();
}

uint64_t sub_10047E110(uint64_t a1, uint64_t *a2, double *a3, int *a4)
{
  v8 = sub_100008880(*a2);
  v9 = sqlite3_step(v8);
  if (v9 == 101)
  {
    return 1;
  }

  v10 = v9;
  if (v9 == 100)
  {
    sub_10047E248(a1, a2, a3, a4);
    return 0;
  }

  else
  {
    if (qword_1025D4530 != -1)
    {
      sub_10188F214();
    }

    v12 = qword_1025D4538;
    if (os_log_type_enabled(qword_1025D4538, OS_LOG_TYPE_FAULT))
    {
      v13[0] = 67109120;
      v13[1] = v10;
      _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_FAULT, "[DB] getMostRecentTimeWithCode - Result was error: %d", v13, 8u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_10188F228(v10);
    }

    return 2;
  }
}

void sub_10047E248(uint64_t a1, uint64_t *a2, double *a3, int *a4)
{
  v8 = sub_100008880(*a2);
  *a4 = sqlite3_column_int(v8, *(a1 + 304));
  v9 = sub_100008880(*a2);
  *a3 = sqlite3_column_double(v9, *(a1 + 296));
}

uint64_t sub_10047E2A4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100099160(a1 + 9);
  if (result)
  {
    sub_10003848C(&v28);
    v6 = sub_100038730(v29, "SELECT * FROM ", 14);
    (*(*a1 + 32))(__p, a1);
    if ((v27 & 0x80u) == 0)
    {
      v7 = __p;
    }

    else
    {
      v7 = __p[0];
    }

    if ((v27 & 0x80u) == 0)
    {
      v8 = v27;
    }

    else
    {
      v8 = __p[1];
    }

    v9 = sub_100038730(v6, v7, v8);
    v10 = sub_100038730(v9, " WHERE ", 7);
    v11 = sub_100038730(v10, "recordID", 8);
    v12 = sub_100038730(v11, " LIKE '%", 8);
    v13 = *(a3 + 23);
    if (v13 >= 0)
    {
      v14 = a3;
    }

    else
    {
      v14 = *a3;
    }

    if (v13 >= 0)
    {
      v15 = *(a3 + 23);
    }

    else
    {
      v15 = *(a3 + 8);
    }

    v16 = sub_100038730(v12, v14, v15);
    v17 = sub_100038730(v16, "%' OR ", 6);
    v18 = sub_100038730(v17, "recordID", 8);
    v19 = sub_100038730(v18, " IS NULL OR ", 12);
    v20 = sub_100038730(v19, "recordID", 8);
    sub_100038730(v20, " = '' ORDER BY ROWID DESC LIMIT 1", 33);
    if (v27 < 0)
    {
      operator delete(__p[0]);
    }

    v21 = a1[10];
    if ((v32 & 0x10) != 0)
    {
      v23 = v31;
      if (v31 < v30)
      {
        v31 = v30;
        v23 = v30;
      }

      v24 = v29[6];
    }

    else
    {
      if ((v32 & 8) == 0)
      {
        v22 = 0;
        v27 = 0;
        goto LABEL_29;
      }

      v24 = v29[3];
      v23 = v29[5];
    }

    v22 = v23 - v24;
    if ((v23 - v24) >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_100061080();
    }

    if (v22 >= 0x17)
    {
      operator new();
    }

    v27 = v23 - v24;
    if (v22)
    {
      memmove(__p, v24, v22);
    }

LABEL_29:
    *(__p + v22) = 0;
    if ((v27 & 0x80u) == 0)
    {
      v25 = __p;
    }

    else
    {
      v25 = __p[0];
    }

    sub_1000388D8(v21, v25);
  }

  return result;
}

void sub_10047E698(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17)
{
  if (v17)
  {
    sub_101880BC0();
  }

  sub_10026C504(&a17);
  _Unwind_Resume(a1);
}

uint64_t sub_10047E6E4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100099160(a1 + 9);
  if (result)
  {
    sub_10003848C(&v28);
    v6 = sub_100038730(v29, "SELECT * FROM ", 14);
    (*(*a1 + 32))(__p, a1);
    if ((v27 & 0x80u) == 0)
    {
      v7 = __p;
    }

    else
    {
      v7 = __p[0];
    }

    if ((v27 & 0x80u) == 0)
    {
      v8 = v27;
    }

    else
    {
      v8 = __p[1];
    }

    v9 = sub_100038730(v6, v7, v8);
    v10 = sub_100038730(v9, " WHERE ", 7);
    v11 = sub_100038730(v10, "recordID", 8);
    v12 = sub_100038730(v11, " LIKE '%", 8);
    v13 = *(a3 + 23);
    if (v13 >= 0)
    {
      v14 = a3;
    }

    else
    {
      v14 = *a3;
    }

    if (v13 >= 0)
    {
      v15 = *(a3 + 23);
    }

    else
    {
      v15 = *(a3 + 8);
    }

    v16 = sub_100038730(v12, v14, v15);
    v17 = sub_100038730(v16, "%' OR ", 6);
    v18 = sub_100038730(v17, "recordID", 8);
    v19 = sub_100038730(v18, " IS NULL OR ", 12);
    v20 = sub_100038730(v19, "recordID", 8);
    sub_100038730(v20, " = '' ORDER BY ROWID ASC LIMIT 1", 32);
    if (v27 < 0)
    {
      operator delete(__p[0]);
    }

    v21 = a1[10];
    if ((v32 & 0x10) != 0)
    {
      v23 = v31;
      if (v31 < v30)
      {
        v31 = v30;
        v23 = v30;
      }

      v24 = v29[6];
    }

    else
    {
      if ((v32 & 8) == 0)
      {
        v22 = 0;
        v27 = 0;
        goto LABEL_29;
      }

      v24 = v29[3];
      v23 = v29[5];
    }

    v22 = v23 - v24;
    if ((v23 - v24) >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_100061080();
    }

    if (v22 >= 0x17)
    {
      operator new();
    }

    v27 = v23 - v24;
    if (v22)
    {
      memmove(__p, v24, v22);
    }

LABEL_29:
    *(__p + v22) = 0;
    if ((v27 & 0x80u) == 0)
    {
      v25 = __p;
    }

    else
    {
      v25 = __p[0];
    }

    sub_1000388D8(v21, v25);
  }

  return result;
}

void sub_10047EAD8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17)
{
  if (v17)
  {
    sub_101880BC0();
  }

  sub_10026C504(&a17);
  _Unwind_Resume(a1);
}

uint64_t sub_10047EB24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (sub_100099160(a1 + 72))
  {
    sub_10003848C(&v33);
    v5 = sub_100038730(v34, "SELECT * FROM ", 14);
    (*(*a1 + 32))(__p, a1);
    if ((v32 & 0x80u) == 0)
    {
      v6 = __p;
    }

    else
    {
      v6 = __p[0];
    }

    if ((v32 & 0x80u) == 0)
    {
      v7 = v32;
    }

    else
    {
      v7 = __p[1];
    }

    v8 = sub_100038730(v5, v6, v7);
    v9 = sub_100038730(v8, " WHERE ", 7);
    v10 = *(a1 + 271);
    if (v10 >= 0)
    {
      v11 = a1 + 248;
    }

    else
    {
      v11 = *(a1 + 248);
    }

    if (v10 >= 0)
    {
      v12 = *(a1 + 271);
    }

    else
    {
      v12 = *(a1 + 256);
    }

    v13 = sub_100038730(v9, v11, v12);
    v14 = sub_100038730(v13, " > ? AND (", 10);
    v15 = sub_100038730(v14, "recordID", 8);
    v16 = sub_100038730(v15, " LIKE '%", 8);
    v17 = *(a3 + 23);
    if (v17 >= 0)
    {
      v18 = a3;
    }

    else
    {
      v18 = *a3;
    }

    if (v17 >= 0)
    {
      v19 = *(a3 + 23);
    }

    else
    {
      v19 = *(a3 + 8);
    }

    v20 = sub_100038730(v16, v18, v19);
    v21 = sub_100038730(v20, "%' OR ", 6);
    v22 = sub_100038730(v21, "recordID", 8);
    v23 = sub_100038730(v22, " IS NULL OR ", 12);
    v24 = sub_100038730(v23, "recordID", 8);
    sub_100038730(v24, " = '') ORDER BY ROWID ASC LIMIT ", 32);
    std::ostream::operator<<();
    if (v32 < 0)
    {
      operator delete(__p[0]);
    }

    v25 = *(a1 + 80);
    if ((v37 & 0x10) != 0)
    {
      v27 = v36;
      if (v36 < v35)
      {
        v36 = v35;
        v27 = v35;
      }

      v28 = v34[6];
    }

    else
    {
      if ((v37 & 8) == 0)
      {
        v26 = 0;
        v32 = 0;
        goto LABEL_36;
      }

      v28 = v34[3];
      v27 = v34[5];
    }

    v26 = v27 - v28;
    if ((v27 - v28) >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_100061080();
    }

    if (v26 >= 0x17)
    {
      operator new();
    }

    v32 = v27 - v28;
    if (v26)
    {
      memmove(__p, v28, v26);
    }

LABEL_36:
    *(__p + v26) = 0;
    if ((v32 & 0x80u) == 0)
    {
      v29 = __p;
    }

    else
    {
      v29 = __p[0];
    }

    sub_1000388D8(v25, v29);
  }

  return 0;
}

void sub_10047F05C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  sub_10026C504(&a18);
  _Unwind_Resume(a1);
}

id sub_10047F0D0(uint64_t a1, uint64_t *a2)
{
  if (!*a2)
  {
    return 0;
  }

  if (*(a1 + 300) == -1)
  {
    return 0;
  }

  v4 = sub_100008880(*a2);
  if (sqlite3_step(v4) != 100)
  {
    return 0;
  }

  v5 = sub_100008880(*a2);
  v6 = sqlite3_column_blob(v5, *(a1 + 300));
  v7 = sub_100008880(*a2);
  v8 = sqlite3_column_bytes(v7, *(a1 + 300));
  if (!v6 || !v8)
  {
    return 0;
  }

  v9 = [[NSData alloc] initWithBytes:v6 length:v8];

  return v9;
}

uint64_t sub_10047F18C(uint64_t a1)
{
  result = sub_100099160(a1 + 72);
  if (result)
  {
    sub_10003848C(&v19);
    v3 = sub_100038730(v20, "DELETE FROM ", 12);
    (*(*a1 + 32))(__p, a1);
    if ((v18 & 0x80u) == 0)
    {
      v4 = __p;
    }

    else
    {
      v4 = __p[0];
    }

    if ((v18 & 0x80u) == 0)
    {
      v5 = v18;
    }

    else
    {
      v5 = __p[1];
    }

    v6 = sub_100038730(v3, v4, v5);
    v7 = sub_100038730(v6, " WHERE ", 7);
    v8 = *(a1 + 271);
    if (v8 >= 0)
    {
      v9 = a1 + 248;
    }

    else
    {
      v9 = *(a1 + 248);
    }

    if (v8 >= 0)
    {
      v10 = *(a1 + 271);
    }

    else
    {
      v10 = *(a1 + 256);
    }

    v11 = sub_100038730(v7, v9, v10);
    sub_100038730(v11, " < ?", 4);
    if (v18 < 0)
    {
      operator delete(__p[0]);
    }

    v12 = *(a1 + 80);
    if ((v23 & 0x10) != 0)
    {
      v14 = v22;
      if (v22 < v21)
      {
        v22 = v21;
        v14 = v21;
      }

      v15 = v20[6];
    }

    else
    {
      if ((v23 & 8) == 0)
      {
        v13 = 0;
        v18 = 0;
        goto LABEL_29;
      }

      v15 = v20[3];
      v14 = v20[5];
    }

    v13 = v14 - v15;
    if ((v14 - v15) >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_100061080();
    }

    if (v13 >= 0x17)
    {
      operator new();
    }

    v18 = v14 - v15;
    if (v13)
    {
      memmove(__p, v15, v13);
    }

LABEL_29:
    *(__p + v13) = 0;
    if ((v18 & 0x80u) == 0)
    {
      v16 = __p;
    }

    else
    {
      v16 = __p[0];
    }

    sub_1000388D8(v12, v16);
  }

  return result;
}

void sub_10047F534(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  sub_10026C504(&a17);
  _Unwind_Resume(a1);
}

uint64_t sub_10047F580(uint64_t a1)
{
  v2 = v12;
  (*(*a1 + 32))(v12);
  if (v13 < 0)
  {
    v2 = v12[0];
  }

  if (strcmp(v2, "VO2MaxInputHistory") || (*(*(a1 + 176) + 148) & 1) != 0)
  {
    if (sub_100099160(*(a1 + 184)) && sub_100099160(a1 + 72))
    {
      sub_1001E573C((a1 + 200));
      memset(v11, 0, sizeof(v11));
      sub_101053C60(*(a1 + 184), v2, (a1 + 200), v11);
    }

    if (qword_1025D4530 != -1)
    {
      sub_10188F338();
    }

    v3 = qword_1025D4538;
    if (os_log_type_enabled(qword_1025D4538, OS_LOG_TYPE_DEFAULT))
    {
      v4 = sub_100099160(*(a1 + 184));
      v5 = sub_100099160(a1 + 72);
      *buf = 67109376;
      *&buf[4] = v4;
      *&buf[8] = 1024;
      *&buf[10] = v5;
      _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEFAULT, "[DB] One of the DBs is not accessible. Hot: %d, Cold %d", buf, 0xEu);
    }

    if (!sub_10000A100(121, 2))
    {
      goto LABEL_22;
    }

    sub_10188F360(buf);
    v6 = sub_100099160(*(a1 + 184));
    v7 = sub_100099160(a1 + 72);
    __p = 67109376;
    __p_4 = v6;
    v16 = 1024;
    v17 = v7;
    v8 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "BOOL CMHealthColdStorageDb::validateTableFormat()", "%s\n", v8);
    if (v8 == buf)
    {
      goto LABEL_22;
    }

LABEL_21:
    free(v8);
    goto LABEL_22;
  }

  if (qword_1025D4530 != -1)
  {
    sub_10188F338();
  }

  v9 = qword_1025D4538;
  if (os_log_type_enabled(qword_1025D4538, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_INFO, "[DB] VO2MaxInputHistory table not yet ready for sync since deduplication is not complete", buf, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10188F360(buf);
    LOWORD(__p) = 0;
    v8 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "BOOL CMHealthColdStorageDb::validateTableFormat()", "%s\n", v8);
    if (v8 != buf)
    {
      goto LABEL_21;
    }
  }

LABEL_22:
  if (v13 < 0)
  {
    operator delete(v12[0]);
  }

  return 0;
}

void sub_100480140(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a25 < 0)
  {
    operator delete(a20);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1004801D0(uint64_t a1, char *a2)
{
  if (!sub_10060A6D8(*(a1 + 80), a2))
  {
    return 1;
  }

  if (!strcmp(a2, "SmoothedGaitMetricsHistory"))
  {
    __p = "";
    v7 = 5;
    v8 = 0;
    v9 = 0;
    v11 = 0;
    sub_100611268(*(a1 + 80), a2, "numGaitMetrics", &__p);
  }

  if (strcmp(a2, "VO2MaxInputHistory"))
  {
    return 1;
  }

  sub_10000EC00(&__p, a2);
  v4 = sub_100480D5C(a1, &__p);
  if (v10 < 0)
  {
    operator delete(__p);
  }

  return v4;
}

void sub_100480344(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100480360(uint64_t a1, const char *a2, uint64_t *a3)
{
  if (sub_10060A6D8(*(a1 + 80), a2))
  {
    v6 = *a3;
    v5 = a3[1];
    v7 = v5 - *a3;
    if (v7 != 48)
    {
      v8 = 0;
      v9 = 0;
      v10 = 0xAAAAAAAAAAAAAAABLL * (v7 >> 4);
      do
      {
        if (v10 <= v9)
        {
          sub_10046F324();
        }

        if (*(v6 + v8 + 8) != 5)
        {
          v13 = 0;
          v14 = 5;
          v15 = 0;
          v16 = 0;
          v17 = 0;
          sub_100611268(*(a1 + 80), a2, *(v6 + v8), &v13);
        }

        ++v9;
        v10 = 0xAAAAAAAAAAAAAAABLL * ((v5 - v6) >> 4);
        v8 += 48;
      }

      while (v10 - 1 > v9);
    }
  }

  else
  {
    if (qword_1025D4530 != -1)
    {
      sub_10188F214();
    }

    v11 = qword_1025D4538;
    if (os_log_type_enabled(qword_1025D4538, OS_LOG_TYPE_DEBUG))
    {
      buf[0] = 136446210;
      *&buf[1] = a2;
      _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEBUG, "%{public}s table doesn't even exist", buf, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10188F488(a2);
    }
  }
}

uint64_t sub_100480D5C(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 112);
  v4 = a1 + 112;
  v6 = v4 - 40;
  v23 = v4;
  (*(v5 + 16))();
  v24 = 256;
  if (sub_100099160(v6))
  {
    v7 = *(a2 + 23) >= 0 ? a2 : *a2;
    if (sub_10060A6D8(*(a1 + 80), v7))
    {
      CFAbsoluteTimeGetCurrent();
      sub_10003848C(&v18);
      v8 = sub_100038730(v19, "DELETE FROM ", 12);
      v9 = *(a2 + 23);
      if (v9 >= 0)
      {
        v10 = a2;
      }

      else
      {
        v10 = *a2;
      }

      if (v9 >= 0)
      {
        v11 = *(a2 + 23);
      }

      else
      {
        v11 = *(a2 + 8);
      }

      sub_100038730(v8, v10, v11);
      v12 = *(a1 + 80);
      if ((v22 & 0x10) != 0)
      {
        v14 = v21;
        if (v21 < v20)
        {
          v21 = v20;
          v14 = v20;
        }

        v15 = v19[6];
      }

      else
      {
        if ((v22 & 8) == 0)
        {
          v13 = 0;
          v26 = 0;
          goto LABEL_26;
        }

        v15 = v19[3];
        v14 = v19[5];
      }

      v13 = v14 - v15;
      if ((v14 - v15) >= 0x7FFFFFFFFFFFFFF8)
      {
        sub_100061080();
      }

      if (v13 >= 0x17)
      {
        operator new();
      }

      v26 = v14 - v15;
      if (v13)
      {
        memmove(&__dst, v15, v13);
      }

LABEL_26:
      *(&__dst + v13) = 0;
      if (v26 >= 0)
      {
        p_dst = &__dst;
      }

      else
      {
        p_dst = __dst;
      }

      sub_1000388D8(v12, p_dst);
    }
  }

  (*(*v23 + 24))(v23);
  return 0;
}

void sub_100481274(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, char a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, void *__p, uint64_t a54, int a55, __int16 a56, char a57, char a58)
{
  if (v58)
  {
    (*(*v58 + 8))(v58);
  }

  sub_10026C504(&a11);
  sub_1017EC98C(&a46);
  _Unwind_Resume(a1);
}

uint64_t sub_100481310(uint64_t a1, uint64_t a2, uint64_t *a3, double a4)
{
  v8 = (a1 + 184);
  if ((sub_100099160(*(a1 + 184)) & 1) == 0 && (sub_100099160(a1 + 72) & 1) == 0 && MKBGetDeviceLockState() == 3)
  {
    sub_100EA58B0(*(a1 + 176));
    (*(**(a1 + 184) + 24))(*(a1 + 184));
    (*(*(a1 + 72) + 24))(a1 + 72);
  }

  if (sub_100099160(*v8) && (v9 = a1 + 72, sub_100099160(a1 + 72)))
  {
    if (sub_10047F580(a1))
    {
      *&v75 = -1.0;
      if (sub_10047E2A4(a1, &v75, a2))
      {
        if (qword_1025D4530 != -1)
        {
          sub_10188F214();
        }

        p_info = &OBJC_METACLASS___CLMotionHintLoggerAdapter.info;
        v11 = qword_1025D4538;
        if (os_log_type_enabled(qword_1025D4538, OS_LOG_TYPE_INFO))
        {
          v12 = v75;
          (*(*a1 + 32))(__p, a1);
          v13 = __p[23] >= 0 ? __p : *__p;
          *buf = 134218242;
          *&buf[4] = v12;
          *&buf[12] = 2080;
          *&buf[14] = v13;
          _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_INFO, "[DB] Found most recent time %f for %s", buf, 0x16u);
          if ((__p[23] & 0x80000000) != 0)
          {
            operator delete(*__p);
          }
        }

        if (sub_10000A100(121, 2))
        {
          bzero(__p, 0x65CuLL);
          if (qword_1025D4530 != -1)
          {
            sub_10188F338();
          }

          v57 = *&v75;
          (*(*a1 + 32))(buf, a1);
          if ((buf[23] & 0x80u) == 0)
          {
            v58 = buf;
          }

          else
          {
            v58 = *buf;
          }

          *v83 = 134218242;
          *&v83[4] = v57;
          *&v83[12] = 2080;
          *&v83[14] = v58;
          v59 = _os_log_send_and_compose_impl();
          if (buf[23] < 0)
          {
            operator delete(*buf);
          }

          sub_100152C7C("Generic", 1, 0, 2, "CMError CMHealthColdStorageDb::syncFromHot(CFAbsoluteTime, const std::string &, std::shared_ptr<CLHealthColdStorageStats>)", "%s\n", v59);
          v14 = v57;
          if (v59 != __p)
          {
            free(v59);
          }
        }

        else
        {
          v14 = *&v75;
        }

        v74 = -1.0;
        sub_10047E6E4(a1, &v74, a2);
        v15 = a4 > 0.0;
        if (v14 <= 0.0)
        {
          v15 = 0;
        }

        if (v15 && v14 < a4)
        {
          if (qword_1025D4530 != -1)
          {
            sub_10188F338();
          }

          v16 = qword_1025D4538;
          if (os_log_type_enabled(qword_1025D4538, OS_LOG_TYPE_INFO))
          {
            *__p = 0;
            _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_INFO, "[DB] Deleting all old records.", __p, 2u);
          }

          if (sub_10000A100(121, 2))
          {
            sub_10188F7AC();
          }

          sub_10105499C((a1 + 72));
        }

        else
        {
          if (v74 >= a4)
          {
            v15 = 0;
          }

          if (v15)
          {
            if (qword_1025D4530 != -1)
            {
              sub_10188F338();
            }

            v21 = qword_1025D4538;
            if (os_log_type_enabled(qword_1025D4538, OS_LOG_TYPE_INFO))
            {
              *__p = 0;
              _os_log_impl(dword_100000000, v21, OS_LOG_TYPE_INFO, "[DB] Deleting all old records preceding delete request.", __p, 2u);
            }

            if (sub_10000A100(121, 2))
            {
              sub_10188F6C8();
            }

            sub_10047F18C(a1);
          }
        }

        if (!*(a1 + 132))
        {
          *(a1 + 132) = (*(*(a1 + 72) + 48))(a1 + 72);
        }

        if (v14 >= a4)
        {
          v22 = v14;
        }

        else
        {
          v22 = a4;
        }

        memset(buf, 0, 24);
        sub_1004826B0(a1, buf);
        Current = CFAbsoluteTimeGetCurrent();
        v24 = *(a1 + 184);
        (*(*a1 + 32))(v83, a1);
        memset(__p, 0, 24);
        sub_100390144(__p, v83, &v84, 1uLL);
        v70 = buf[23];
        if (buf[23] < 0)
        {
          sub_100007244(__dst, *buf, *&buf[8]);
        }

        else
        {
          *__dst = *buf;
          *&__dst[16] = *&buf[16];
        }

        v81 = 0uLL;
        v82 = 0;
        sub_100390144(&v81, __dst, &v80, 1uLL);
        v25 = (a1 + 248);
        if (*(a1 + 271) < 0)
        {
          v25 = *v25;
        }

        sub_101053C70(a1 + 72, v24, __p, &v81, v25, v22);
        *v76 = &v81;
        sub_1001E56E8(v76);
        if ((__dst[23] & 0x80000000) != 0)
        {
          operator delete(*__dst);
        }

        *&v81 = __p;
        sub_1001E56E8(&v81);
        if (v83[23] < 0)
        {
          operator delete(*v83);
        }

        v26 = (*(*v9 + 48))(a1 + 72);
        if (*(a1 + 308) == 1)
        {
          if (qword_1025D4530 != -1)
          {
            sub_10188F338();
          }

          v27 = qword_1025D4538;
          if (os_log_type_enabled(qword_1025D4538, OS_LOG_TYPE_DEFAULT))
          {
            v28 = *(a1 + 308);
            *__p = 67109376;
            *&__p[4] = v28;
            *&__p[8] = 1024;
            *&__p[10] = 730;
            _os_log_impl(dword_100000000, v27, OS_LOG_TYPE_DEFAULT, "Cold Storage Max expiration enabled %d, expiration in days set to %d", __p, 0xEu);
          }

          if (sub_10000A100(121, 2))
          {
            sub_10188F360(__p);
            v63 = *(a1 + 308);
            *v83 = 67109376;
            *&v83[4] = v63;
            *&v83[8] = 1024;
            *&v83[10] = 730;
            v64 = _os_log_send_and_compose_impl();
            sub_100152C7C("Generic", 1, 0, 2, "CMError CMHealthColdStorageDb::syncFromHot(CFAbsoluteTime, const std::string &, std::shared_ptr<CLHealthColdStorageStats>)", "%s\n", v64);
            if (v64 != __p)
            {
              free(v64);
            }
          }

          v19 = 100;
          v29 = 730;
        }

        else
        {
          (*(*a1 + 32))(__p, a1);
          v30 = sub_10001A2EC(qword_102656368, __p);
          if ((__p[23] & 0x80000000) != 0)
          {
            operator delete(*__p);
          }

          if (v30)
          {
            v29 = *(v30 + 10);
            v19 = 100;
          }

          else
          {
            if (qword_1025D4530 != -1)
            {
              sub_10188F338();
            }

            v31 = qword_1025D4538;
            if (os_log_type_enabled(qword_1025D4538, OS_LOG_TYPE_FAULT))
            {
              (*(*a1 + 32))(__p, a1);
              v32 = __p[23] >= 0 ? __p : *__p;
              *v83 = 136315138;
              *&v83[4] = v32;
              _os_log_impl(dword_100000000, v31, OS_LOG_TYPE_FAULT, "No expiration set for db, %s", v83, 0xCu);
              if ((__p[23] & 0x80000000) != 0)
              {
                operator delete(*__p);
              }
            }

            if (sub_10000A100(121, 0))
            {
              sub_10188F360(__p);
              (*(*a1 + 32))(v83, a1);
              if ((v83[23] & 0x80u) == 0)
              {
                v68 = v83;
              }

              else
              {
                v68 = *v83;
              }

              LODWORD(v81) = 136315138;
              *(&v81 + 4) = v68;
              v69 = _os_log_send_and_compose_impl();
              if (v83[23] < 0)
              {
                operator delete(*v83);
              }

              sub_100152C7C("Generic", 1, 0, 0, "CMError CMHealthColdStorageDb::syncFromHot(CFAbsoluteTime, const std::string &, std::shared_ptr<CLHealthColdStorageStats>)", "%s\n", v69);
              if (v69 != __p)
              {
                free(v69);
              }
            }

            v29 = 0;
            v19 = 103;
          }
        }

        if (qword_1025D4530 != -1)
        {
          sub_10188F338();
        }

        v33 = qword_1025D4538;
        if (os_log_type_enabled(qword_1025D4538, OS_LOG_TYPE_DEBUG))
        {
          (*(*a1 + 32))(v83, a1);
          if ((v83[23] & 0x80u) == 0)
          {
            v34 = v83;
          }

          else
          {
            v34 = *v83;
          }

          v35 = *(a1 + 308);
          *__p = 136315650;
          *&__p[4] = v34;
          *&__p[12] = 1024;
          *&__p[14] = v29;
          *&__p[18] = 1024;
          *&__p[20] = v35;
          _os_log_impl(dword_100000000, v33, OS_LOG_TYPE_DEBUG, "Cold Storage expiration for db, %s, set to %d days, enableMaxExpiration, %d", __p, 0x18u);
          if (v83[23] < 0)
          {
            operator delete(*v83);
          }

          p_info = &OBJC_METACLASS___CLMotionHintLoggerAdapter.info;
        }

        if (sub_10000A100(121, 2))
        {
          sub_10188F360(__p);
          (*(*a1 + 32))(&v81, a1);
          if (v82 >= 0)
          {
            v60 = &v81;
          }

          else
          {
            v60 = v81;
          }

          v61 = *(a1 + 308);
          *v83 = 136315650;
          *&v83[4] = v60;
          *&v83[12] = 1024;
          *&v83[14] = v29;
          *&v83[18] = 1024;
          *&v83[20] = v61;
          v62 = _os_log_send_and_compose_impl();
          if (SHIBYTE(v82) < 0)
          {
            operator delete(v81);
          }

          sub_100152C7C("Generic", 1, 0, 2, "CMError CMHealthColdStorageDb::syncFromHot(CFAbsoluteTime, const std::string &, std::shared_ptr<CLHealthColdStorageStats>)", "%s\n", v62);
          if (v62 != __p)
          {
            free(v62);
          }

          p_info = (&OBJC_METACLASS___CLMotionHintLoggerAdapter + 32);
        }

        *__p = v29 * 86400.0;
        *&__p[8] = 0x7FEFFFFFFFFFFFFFLL;
        __p[16] = 1;
        memset(v83, 0, sizeof(v83));
        sub_100485D9C(v83, __p, &__p[24], 1uLL);
        v36 = (*(*v9 + 16))(a1 + 72, v83);
        if (qword_1025D4530 != -1)
        {
          sub_10188F338();
        }

        v37 = p_info[167];
        if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
        {
          (*(*a1 + 32))(&v81, a1);
          v38 = SHIBYTE(v82);
          v39 = v81;
          v40 = CFAbsoluteTimeGetCurrent();
          v41 = *(a1 + 132);
          v42 = v40 - Current;
          v43 = &v81;
          if (v38 < 0)
          {
            v43 = v39;
          }

          *__p = 68290306;
          *&__p[8] = 2082;
          *&__p[10] = "";
          *&__p[18] = 2082;
          *&__p[20] = v43;
          v87 = 2050;
          v88 = v42;
          v89 = 1026;
          v90 = v41;
          v91 = 1026;
          v92 = v26;
          v93 = 1026;
          v94 = v36;
          _os_log_impl(dword_100000000, v37, OS_LOG_TYPE_INFO, "{msg%{public}.0s:copyTablesFromOtherDatabase, tableName:%{public, location:escape_only}s, duration:%{public}.5f, recordCountInitial:%{public}d, recordCountAfterSync:%{public}d, recordCountAfterPurge:%{public}d}", __p, 0x38u);
          if (SHIBYTE(v82) < 0)
          {
            operator delete(v81);
          }
        }

        if (v36 >= 0)
        {
          v44 = v26 - v36;
        }

        else
        {
          v44 = 0;
        }

        (*(*a1 + 32))(__p, a1);
        if (__p[23] >= 0)
        {
          v45 = __p;
        }

        else
        {
          v45 = *__p;
        }

        v46 = [NSString stringWithUTF8String:v45];
        if ((__p[23] & 0x80000000) != 0)
        {
          operator delete(*__p);
        }

        v47 = *a3;
        v48 = a3[1];
        v73[0] = v47;
        v73[1] = v48;
        if (v48)
        {
          atomic_fetch_add_explicit(&v48->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        sub_100482A64(a1, v73, v26 - *(a1 + 132), v44);
        if (v48)
        {
          sub_100008080(v48);
        }

        *(a1 + 132) = v36;
        v49 = [(NSString *)v46 stringByAppendingString:@"CKSyncStartTime"];
        v72 = 0.0;
        v50 = sub_1000206B4();
        sub_100023B78(v50, v49, &v72);
        if (*(a1 + 336))
        {
          if (qword_1025D4530 != -1)
          {
            sub_10188F338();
          }

          v51 = qword_1025D4538;
          if (os_log_type_enabled(qword_1025D4538, OS_LOG_TYPE_DEFAULT))
          {
            *__p = 134217984;
            *&__p[4] = a4;
            _os_log_impl(dword_100000000, v51, OS_LOG_TYPE_DEFAULT, "[CloudKit] marked as dirty, start Time for cloud sync : %f", __p, 0xCu);
          }

          if (sub_10000A100(121, 2))
          {
            sub_10188F360(__p);
            LODWORD(v81) = 134217984;
            *(&v81 + 4) = a4;
            v65 = _os_log_send_and_compose_impl();
            sub_100152C7C("Generic", 1, 0, 2, "CMError CMHealthColdStorageDb::syncFromHot(CFAbsoluteTime, const std::string &, std::shared_ptr<CLHealthColdStorageStats>)", "%s\n", v65);
            if (v65 != __p)
            {
              free(v65);
            }
          }

          v72 = a4;
        }

        v81 = 0uLL;
        v82 = 0;
        v71 = 0;
        sub_10047EB24(a1, &v81, a2);
        v52 = v81;
        if (v81 != *(&v81 + 1))
        {
          if (*(&v81 + 1) - v81 == 2000)
          {
            if (qword_1025D4530 != -1)
            {
              sub_10188F338();
            }

            v53 = qword_1025D4538;
            if (os_log_type_enabled(qword_1025D4538, OS_LOG_TYPE_DEFAULT))
            {
              (*(*a1 + 32))(__p, a1);
              v54 = __p[23] >= 0 ? __p : *__p;
              *__dst = 136315394;
              *&__dst[4] = v54;
              *&__dst[12] = 2048;
              *&__dst[14] = v71;
              _os_log_impl(dword_100000000, v53, OS_LOG_TYPE_DEFAULT, "[DB] Max records fetch limit reached for %s, latest record time %f", __dst, 0x16u);
              if ((__p[23] & 0x80000000) != 0)
              {
                operator delete(*__p);
              }
            }

            if (sub_10000A100(121, 2))
            {
              sub_10188F360(__p);
              (*(*a1 + 32))(__dst, a1);
              if (__dst[23] >= 0)
              {
                v66 = __dst;
              }

              else
              {
                v66 = *__dst;
              }

              *v76 = 136315394;
              *&v76[4] = v66;
              v77 = 2048;
              v78 = v71;
              v67 = _os_log_send_and_compose_impl();
              if ((__dst[23] & 0x80000000) != 0)
              {
                operator delete(*__dst);
              }

              sub_100152C7C("Generic", 1, 0, 2, "CMError CMHealthColdStorageDb::syncFromHot(CFAbsoluteTime, const std::string &, std::shared_ptr<CLHealthColdStorageStats>)", "%s\n", v67);
              if (v67 != __p)
              {
                free(v67);
              }
            }
          }

          sub_100482B3C(a1);
          sub_100485E68((a1 + 312), *(a1 + 320), v81, *(&v81 + 1), (*(&v81 + 1) - v81) >> 2);
          v55 = sub_1000206B4();
          sub_100116DD4(v55, v49, &v71);
          v56 = sub_1000206B4();
          (*(*v56 + 944))(v56);
          v52 = v81;
        }

        *(a1 + 336) = 0;
        if (v52)
        {
          *(&v81 + 1) = v52;
          operator delete(v52);
        }

        if (*v83)
        {
          *&v83[8] = *v83;
          operator delete(*v83);
        }

        if (v70 < 0)
        {
          operator delete(*buf);
        }
      }

      else
      {
        return 112;
      }
    }

    else
    {
      return 103;
    }
  }

  else
  {
    if (qword_1025D4530 != -1)
    {
      sub_10188F214();
    }

    v17 = qword_1025D4538;
    if (os_log_type_enabled(qword_1025D4538, OS_LOG_TYPE_DEFAULT))
    {
      v18 = sub_100099160(*(a1 + 184));
      *__p = 67109376;
      *&__p[4] = v18;
      *&__p[8] = 1024;
      *&__p[10] = sub_100099160(a1 + 72);
      _os_log_impl(dword_100000000, v17, OS_LOG_TYPE_DEFAULT, "[DB] One of the DBs is not accessible. Hot: %d, Cold %d", __p, 0xEu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10188F594(v8, a1);
    }

    return 109;
  }

  return v19;
}

void sub_100482558(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, void *__p, uint64_t a43, int a44, __int16 a45, char a46, char a47, uint64_t a48, uint64_t a49, uint64_t a50, int a51, __int16 a52, char a53, char a54)
{
  if (a47 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1004826B0(uint64_t result, uint64_t a2)
{
  v2 = result;
  if (*(a2 + 23) < 0)
  {
    **a2 = 0;
    *(a2 + 8) = 0;
  }

  else
  {
    *a2 = 0;
    *(a2 + 23) = 0;
  }

  if (*(result + 200) == *(result + 208))
  {
    return result;
  }

  sub_10003848C(v26);
  v3 = *(v2 + 200);
  v4 = *(v2 + 208) - v3;
  if (v4)
  {
    v5 = 0;
    v6 = 0;
    v7 = 0xAAAAAAAAAAAAAAABLL * (v4 >> 3);
    do
    {
      v8 = (v3 + v5);
      v9 = *(v3 + v5 + 23);
      v10 = v9;
      if ((v9 & 0x80u) == 0)
      {
        v11 = v9;
      }

      else
      {
        v11 = v8[1];
      }

      v12 = *(v2 + 295);
      v13 = v12;
      if ((v12 & 0x80u) != 0)
      {
        v12 = *(v2 + 280);
      }

      if (v11 != v12 || (v10 >= 0 ? (v14 = v8) : (v14 = *v8), v13 >= 0 ? (v15 = (v2 + 272)) : (v15 = *(v2 + 272)), memcmp(v14, v15, v11)))
      {
        if (v6 == v7 - 1 || v6 == v7 - 2 && v7 - 1 == *(v2 + 304))
        {
          if (v10 >= 0)
          {
            v16 = v8;
          }

          else
          {
            v16 = *v8;
          }

          sub_100038730(&v27, v16, v11);
        }

        else
        {
          if (v10 >= 0)
          {
            v17 = v8;
          }

          else
          {
            v17 = *v8;
          }

          v18 = sub_100038730(&v27, v17, v11);
          sub_100038730(v18, ",", 1);
        }
      }

      ++v6;
      v3 = *(v2 + 200);
      v7 = 0xAAAAAAAAAAAAAAABLL * ((*(v2 + 208) - v3) >> 3);
      v5 += 24;
    }

    while (v7 > v6);
  }

  if ((v34 & 0x10) != 0)
  {
    v20 = v33;
    if (v33 < v30)
    {
      v33 = v30;
      v20 = v30;
    }

    locale = v29[4].__locale_;
    goto LABEL_39;
  }

  if ((v34 & 8) != 0)
  {
    locale = v29[1].__locale_;
    v20 = v29[3].__locale_;
LABEL_39:
    v19 = v20 - locale;
    if ((v20 - locale) >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_100061080();
    }

    if (v19 >= 0x17)
    {
      operator new();
    }

    HIBYTE(v25) = v20 - locale;
    if (v19)
    {
      memmove(&__dst, locale, v19);
    }

    goto LABEL_45;
  }

  v19 = 0;
  HIBYTE(v25) = 0;
LABEL_45:
  *(&__dst + v19) = 0;
  if (*(a2 + 23) < 0)
  {
    operator delete(*a2);
  }

  *a2 = __dst;
  *(a2 + 16) = v25;
  v27 = v22;
  if (v32 < 0)
  {
    operator delete(__p);
  }

  std::locale::~locale(v29);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_100482A4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_10026C504(va);
  _Unwind_Resume(a1);
}

void sub_100482A64(uint64_t a1, uint64_t *a2, int a3, int a4)
{
  v4 = *a2;
  if (*a2)
  {
    v11 = a1 + 224;
    v7 = sub_1004872D4(v4 + 24, (a1 + 224));
    v8 = *(v7 + 60) - a4;
    *(v7 + 56) += a3;
    *(v7 + 60) = v8;
  }

  else
  {
    if (qword_1025D4530 != -1)
    {
      sub_10188F214();
    }

    v9 = qword_1025D4538;
    if (os_log_type_enabled(qword_1025D4538, OS_LOG_TYPE_DEBUG))
    {
      *v10 = 0;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "[Database] ColdStorageStats not initialized.", v10, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10188F890();
    }
  }
}

void sub_100482B3C(uint64_t *a1)
{
  if (sub_100099160(a1 + 9))
  {
    sub_100144A84(a1[10]);
    sub_10003848C(buf);
    v2 = sub_100038730(v17, "UPDATE ", 7);
    (*(*a1 + 32))(__p, a1);
    if ((v15 & 0x80u) == 0)
    {
      v3 = __p;
    }

    else
    {
      v3 = __p[0];
    }

    if ((v15 & 0x80u) == 0)
    {
      v4 = v15;
    }

    else
    {
      v4 = __p[1];
    }

    v5 = sub_100038730(v2, v3, v4);
    v6 = sub_100038730(v5, " SET ", 5);
    v7 = sub_100038730(v6, "recordID", 8);
    sub_100038730(v7, " = ? WHERE ROWID = ?", 20);
    if (v15 < 0)
    {
      operator delete(__p[0]);
    }

    v8 = a1[10];
    if ((v20 & 0x10) != 0)
    {
      v11 = v19;
      if (v19 < v18)
      {
        v19 = v18;
        v11 = v18;
      }

      v12 = v17[6];
    }

    else
    {
      if ((v20 & 8) == 0)
      {
        v9 = 0;
        v15 = 0;
        goto LABEL_29;
      }

      v12 = v17[3];
      v11 = v17[5];
    }

    v9 = v11 - v12;
    if ((v11 - v12) >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_100061080();
    }

    if (v9 >= 0x17)
    {
      operator new();
    }

    v15 = v11 - v12;
    if (v9)
    {
      memmove(__p, v12, v9);
    }

LABEL_29:
    *(__p + v9) = 0;
    if ((v15 & 0x80u) == 0)
    {
      v13 = __p;
    }

    else
    {
      v13 = __p[0];
    }

    sub_1000388D8(v8, v13);
  }

  if (qword_1025D4530 != -1)
  {
    sub_10188F214();
  }

  v10 = qword_1025D4538;
  if (os_log_type_enabled(qword_1025D4538, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_ERROR, "[DB] Unable to update UUID on records.", buf, 2u);
  }

  if (sub_10000A100(121, 0))
  {
    sub_10188F970();
  }
}

void sub_100483038(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, char a30)
{
  if (v30)
  {
    (*(*v30 + 8))(v30);
  }

  sub_10026C504(&a30);
  _Unwind_Resume(a1);
}

uint64_t sub_1004830FC(void *a1, uint64_t a2, void *a3)
{
  if (a3)
  {
    *a3 = 0;
  }

  if (a1[20])
  {
    if (sub_100099160(a1 + 9))
    {
      sub_10003848C(buf);
      v5 = sub_100038730((&v24 + 2), "SELECT * FROM ", 14);
      (*(*a1 + 32))(__p, a1);
      if ((v21 & 0x80u) == 0)
      {
        v6 = __p;
      }

      else
      {
        v6 = __p[0];
      }

      if ((v21 & 0x80u) == 0)
      {
        v7 = v21;
      }

      else
      {
        v7 = __p[1];
      }

      v8 = sub_100038730(v5, v6, v7);
      v9 = sub_100038730(v8, " WHERE ", 7);
      v10 = sub_100038730(v9, "recordID", 8);
      sub_100038730(v10, " = ?", 4);
      if (v21 < 0)
      {
        operator delete(__p[0]);
      }

      v11 = a1[10];
      if ((v31 & 0x10) != 0)
      {
        v16 = v30;
        if (v30 < v29)
        {
          v30 = v29;
          v16 = v29;
        }

        v17 = __src;
      }

      else
      {
        if ((v31 & 8) == 0)
        {
          v12 = 0;
          v21 = 0;
          goto LABEL_36;
        }

        v17 = v26;
        v16 = v27;
      }

      v12 = v16 - v17;
      if (v16 - v17 > 0x7FFFFFFFFFFFFFF7)
      {
        sub_100061080();
      }

      if (v12 >= 0x17)
      {
        operator new();
      }

      v21 = v16 - v17;
      if (v12)
      {
        memmove(__p, v17, v12);
      }

LABEL_36:
      *(__p + v12) = 0;
      if ((v21 & 0x80u) == 0)
      {
        v18 = __p;
      }

      else
      {
        v18 = __p[0];
      }

      sub_1000388D8(v11, v18);
    }

    if (qword_1025D4530 != -1)
    {
      sub_10188F214();
    }

    v13 = qword_1025D4538;
    if (os_log_type_enabled(qword_1025D4538, OS_LOG_TYPE_ERROR))
    {
      (*(*a1 + 32))(__p, a1);
      v14 = (v21 & 0x80u) == 0 ? __p : __p[0];
      *buf = 136315394;
      *&buf[4] = v14;
      v23 = 2080;
      v24 = a2;
      _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_ERROR, "[DB] getRecordDataForID since db is not accessible for %s, recordID=%s", buf, 0x16u);
      if (v21 < 0)
      {
        operator delete(__p[0]);
      }
    }

    if (sub_10000A100(121, 0))
    {
      bzero(__p, 0x65CuLL);
      if (qword_1025D4530 != -1)
      {
        sub_10188F338();
      }

      (*(*a1 + 32))(buf, a1);
      v19 = _os_log_send_and_compose_impl();
      if (v25 < 0)
      {
        operator delete(*buf);
      }

      sub_100152C7C("Generic", 1, 0, 0, "BOOL CMHealthColdStorageDb::getRecordDataForID(const char *, NSData **, NSData **)", "%s\n", v19);
      if (v19 != __p)
      {
        free(v19);
      }
    }
  }

  return 0;
}

void sub_100483E90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  if (a16)
  {
    (*(*a16 + 8))(a16);
  }

  sub_10026C504(&STACK[0x6F0]);
  _Unwind_Resume(a1);
}

uint64_t sub_100483FA4(void *a1, void *a2, void *a3)
{
  v5 = [objc_msgSend(a2 "recordName")];

  return sub_1004830FC(a1, v5, a3);
}

uint64_t sub_100484000(void *a1)
{
  sub_10003848C(v20);
  v2 = sub_100038730(&v21, "UPDATE ", 7);
  (*(*a1 + 32))(__p, a1);
  if ((v19 & 0x80u) == 0)
  {
    v3 = __p;
  }

  else
  {
    v3 = __p[0];
  }

  if ((v19 & 0x80u) == 0)
  {
    v4 = v19;
  }

  else
  {
    v4 = __p[1];
  }

  v5 = sub_100038730(v2, v3, v4);
  v6 = sub_100038730(v5, " SET ", 5);
  v7 = sub_100038730(v6, "systemFields", 12);
  v8 = sub_100038730(v7, " = ? WHERE ", 11);
  v9 = sub_100038730(v8, "recordID", 8);
  sub_100038730(v9, " = ?", 4);
  if (v19 < 0)
  {
    operator delete(__p[0]);
  }

  v10 = a1[10];
  if ((v28 & 0x10) != 0)
  {
    v12 = v27;
    if (v27 < v24)
    {
      v27 = v24;
      v12 = v24;
    }

    locale = v23[4].__locale_;
  }

  else
  {
    if ((v28 & 8) == 0)
    {
      v11 = 0;
      v19 = 0;
      goto LABEL_22;
    }

    locale = v23[1].__locale_;
    v12 = v23[3].__locale_;
  }

  v11 = v12 - locale;
  if ((v12 - locale) >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_100061080();
  }

  if (v11 >= 0x17)
  {
    operator new();
  }

  v19 = v12 - locale;
  if (v11)
  {
    memmove(__p, locale, v11);
  }

LABEL_22:
  *(__p + v11) = 0;
  if ((v19 & 0x80u) == 0)
  {
    v14 = __p;
  }

  else
  {
    v14 = __p[0];
  }

  a1[43] = sub_100614C1C(v10, v14);
  a1[44] = v15;
  if (v19 < 0)
  {
    operator delete(__p[0]);
  }

  v21 = v16;
  if (v26 < 0)
  {
    operator delete(v25);
  }

  std::locale::~locale(v23);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_100484338(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_10026C504(&a15);
  _Unwind_Resume(a1);
}

uint64_t sub_100484370(uint64_t a1, void *a2, void *a3)
{
  v5 = a1;
  if (!sub_100099160(a1 + 72))
  {
    goto LABEL_15;
  }

  sub_10000FF38(v14, "CMHealthColdStorageDb.updateLocalSystemFieldsForRecord", 0);
  if (!sub_100DD42EC((v5 + 344)))
  {
    sub_100484000(v5);
  }

  if (!sub_100DD42EC((v5 + 344)))
  {
    if (qword_1025D4530 != -1)
    {
      sub_10188F338();
    }

    v10 = qword_1025D4538;
    if (os_log_type_enabled(qword_1025D4538, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_ERROR, "[DB] SQL update statement is invalid.", buf, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_10188F360(buf);
      v13 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 0, "BOOL CMHealthColdStorageDb::updateLocalSystemFieldsForRecord(CKRecordID *, NSData *)", "%s\n", v13);
      if (v13 != buf)
      {
        free(v13);
      }
    }

    goto LABEL_14;
  }

  sub_100144CA0((v5 + 344), buf);
  if (!*buf)
  {
LABEL_14:
    sub_10001A420(v14);
LABEL_15:
    LOBYTE(v5) = 0;
    return v5 & 1;
  }

  v6 = sub_100008880(*buf);
  if (sub_100617DF4(v6, 1, a3) && (v7 = sub_100008880(*buf), sub_10003DDD8(v7, 2, [objc_msgSend(a2 "recordName")])))
  {
    v5 = *(v5 + 80);
    v8 = sub_100008880(*buf);
    LOBYTE(v5) = sub_1001A3DEC(v5, v8);
    v9 = 0;
  }

  else
  {
    v9 = 1;
  }

  v12 = *buf;
  *buf = 0;
  if (v12)
  {
    (*(*v12 + 8))(v12);
  }

  sub_10001A420(v14);
  if (v9)
  {
    goto LABEL_15;
  }

  return v5 & 1;
}

void sub_1004845D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_10001A420(va);
  _Unwind_Resume(a1);
}

void sub_100484620(void *a1, void *a2)
{
  if (!a2)
  {
    return;
  }

  sub_10000EC00(v97, [objc_msgSend(objc_msgSend(a2 "recordID")]);
  if (a1[20])
  {
    sub_10000FF38(v96, "CMHealthColdStorageDb.handleFetchedRecord", 0);
    (*(*a1 + 32))(v94, a1);
    if (v95 >= 0)
    {
      v4 = v94;
    }

    else
    {
      v4 = v94[0];
    }

    if (!sub_10060A6D8(a1[10], v4) && (sub_10047F580(a1) & 1) == 0)
    {
      if (qword_1025D4530 != -1)
      {
        sub_10188F338();
      }

      v10 = qword_1025D4538;
      if (os_log_type_enabled(qword_1025D4538, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_ERROR, "[DB] unable to create table when handling fetched records", buf, 2u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_10188F360(buf);
        LOWORD(v84[0]) = 0;
        v11 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 0, "void CMHealthColdStorageDb::handleFetchedRecord(CKRecord *)", "%s\n", v11);
        if (v11 != buf)
        {
          free(v11);
        }
      }

LABEL_114:
      if (v95 < 0)
      {
        operator delete(v94[0]);
      }

      sub_10001A420(v96);
      goto LABEL_117;
    }

    sub_10000EC00(&v93, [objc_msgSend(a1[20] "columns")]);
    sub_10003848C(v84);
    v82 = 0;
    v81 = 0;
    v83 = 0;
    sub_1004854AC(v77, &v93, 8);
    v75 = 0uLL;
    v76 = 0;
    for (i = 1; ; ++i)
    {
      v6 = sub_100485630(v77, &v75, 0x2Cu);
      if ((*(v6 + *(*v6 - 24) + 32) & 5) != 0)
      {
        break;
      }

      sub_100038730(&v85, "?,", 2);
      sub_1003CDE18(&v81, &v75);
    }

    sub_100038730(&v85, "?,?", 3);
    if ((v92 & 0x10) != 0)
    {
      v8 = v91;
      if (v91 < v88)
      {
        v91 = v88;
        v8 = v88;
      }

      locale = v87[4].__locale_;
    }

    else
    {
      if ((v92 & 8) == 0)
      {
        v7 = 0;
        v74 = 0;
LABEL_31:
        *(__dst + v7) = 0;
        sub_10003848C(v64);
        v63 = 0;
        if (sub_1004830FC(a1, [objc_msgSend(objc_msgSend(a2 "recordID")], &v63))
        {
          if (v63)
          {
            v12 = sub_100038730(&v65, "UPDATE ", 7);
            (*(*a1 + 32))(buf, a1);
            if ((v103 & 0x80u) == 0)
            {
              v13 = buf;
            }

            else
            {
              v13 = *buf;
            }

            if ((v103 & 0x80u) == 0)
            {
              v14 = v103;
            }

            else
            {
              v14 = *&buf[8];
            }

            v15 = sub_100038730(v12, v13, v14);
            sub_100038730(v15, " SET ", 5);
            if (v103 < 0)
            {
              operator delete(*buf);
            }

            v16 = v81;
            for (j = v82; v16 != j; v16 += 24)
            {
              v18 = *(v16 + 23);
              if (v18 >= 0)
              {
                v19 = v16;
              }

              else
              {
                v19 = *v16;
              }

              if (v18 >= 0)
              {
                v20 = *(v16 + 23);
              }

              else
              {
                v20 = *(v16 + 8);
              }

              v21 = sub_100038730(&v65, v19, v20);
              sub_100038730(v21, "=?, ", 4);
            }

            v22 = sub_100038730(&v65, "recordID", 8);
            v23 = sub_100038730(v22, "=?, ", 4);
            v24 = sub_100038730(v23, "systemFields", 12);
            sub_100038730(v24, "=?", 2);
            v25 = sub_100038730(&v65, " WHERE ", 7);
            v26 = sub_100038730(v25, "recordID", 8);
            v27 = sub_100038730(v26, " = ", 3);
            v28 = sub_100038730(v27, "", 1);
            v29 = [objc_msgSend(objc_msgSend(a2 "recordID")];
            v30 = strlen(v29);
            v31 = sub_100038730(v28, v29, v30);
            sub_100038730(v31, "", 1);
          }

          else
          {
            v38 = sub_100038730(&v65, "INSERT INTO ", 12);
            (*(*a1 + 32))(buf, a1);
            if ((v103 & 0x80u) == 0)
            {
              v39 = buf;
            }

            else
            {
              v39 = *buf;
            }

            if ((v103 & 0x80u) == 0)
            {
              v40 = v103;
            }

            else
            {
              v40 = *&buf[8];
            }

            v41 = sub_100038730(v38, v39, v40);
            v42 = sub_100038730(v41, "( ", 2);
            if ((v93.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v43 = &v93;
            }

            else
            {
              v43 = v93.__r_.__value_.__r.__words[0];
            }

            if ((v93.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              size = HIBYTE(v93.__r_.__value_.__r.__words[2]);
            }

            else
            {
              size = v93.__r_.__value_.__l.__size_;
            }

            v45 = sub_100038730(v42, v43, size);
            v46 = sub_100038730(v45, ",", 1);
            v47 = sub_100038730(v46, "recordID", 8);
            v48 = sub_100038730(v47, ",", 1);
            v49 = sub_100038730(v48, "systemFields", 12);
            v50 = sub_100038730(v49, ") VALUES(", 12);
            if ((v74 & 0x80u) == 0)
            {
              v51 = __dst;
            }

            else
            {
              v51 = __dst[0];
            }

            if ((v74 & 0x80u) == 0)
            {
              v52 = v74;
            }

            else
            {
              v52 = __dst[1];
            }

            v53 = sub_100038730(v50, v51, v52);
            sub_100038730(v53, ")", 1);
            if (v103 < 0)
            {
              operator delete(*buf);
            }
          }

          v54 = a1[10];
          if ((v72 & 0x10) != 0)
          {
            v56 = v71;
            if (v71 < v68)
            {
              v71 = v68;
              v56 = v68;
            }

            v57 = v67[4].__locale_;
          }

          else
          {
            if ((v72 & 8) == 0)
            {
              v55 = 0;
              v103 = 0;
              goto LABEL_98;
            }

            v57 = v67[1].__locale_;
            v56 = v67[3].__locale_;
          }

          v55 = v56 - v57;
          if ((v56 - v57) > 0x7FFFFFFFFFFFFFF7)
          {
            sub_100061080();
          }

          if (v55 >= 0x17)
          {
            operator new();
          }

          v103 = v56 - v57;
          if (v55)
          {
            memmove(buf, v57, v55);
          }

LABEL_98:
          buf[v55] = 0;
          if ((v103 & 0x80u) == 0)
          {
            v58 = buf;
          }

          else
          {
            v58 = *buf;
          }

          sub_1000388D8(v54, v58);
        }

        if (qword_1025D4530 != -1)
        {
          sub_10188F338();
        }

        v32 = qword_1025D4538;
        if (os_log_type_enabled(qword_1025D4538, OS_LOG_TYPE_ERROR))
        {
          v33 = v97;
          if (v98 < 0)
          {
            v33 = v97[0];
          }

          v34 = v94;
          if (v95 < 0)
          {
            v34 = v94[0];
          }

          *buf = 136315394;
          *&buf[4] = v33;
          *&buf[12] = 2080;
          *&buf[14] = v34;
          _os_log_impl(dword_100000000, v32, OS_LOG_TYPE_ERROR, "[DB] Unable to verify if fetched record exists, ignore record=%s, for table %s", buf, 0x16u);
        }

        if (sub_10000A100(121, 0))
        {
          sub_10188F360(buf);
          v35 = v97;
          if (v98 < 0)
          {
            v35 = v97[0];
          }

          v36 = v94;
          if (v95 < 0)
          {
            v36 = v94[0];
          }

          v99[0] = 136315394;
          *&v99[1] = v35;
          v100 = 2080;
          v101 = v36;
          v37 = _os_log_send_and_compose_impl();
          sub_100152C7C("Generic", 1, 0, 0, "void CMHealthColdStorageDb::handleFetchedRecord(CKRecord *)", "%s\n", v37);
          if (v37 != buf)
          {
            free(v37);
          }
        }

        v62 = v60;
        v65 = v60;
        if (v70 < 0)
        {
          operator delete(__p);
        }

        std::locale::~locale(v67);
        std::iostream::~basic_iostream();
        std::ios::~ios();
        if (v74 < 0)
        {
          operator delete(__dst[0]);
        }

        if (SHIBYTE(v76) < 0)
        {
          operator delete(v75);
        }

        if (v80 < 0)
        {
          operator delete(v79[7].__locale_);
        }

        std::locale::~locale(v79);
        std::istream::~istream();
        std::ios::~ios();
        *buf = &v81;
        sub_1001E56E8(buf);
        v84[0] = v59;
        *(v84 + *(v59 - 3)) = v61;
        v85 = v62;
        if (v90 < 0)
        {
          operator delete(v89);
        }

        std::locale::~locale(v87);
        std::iostream::~basic_iostream();
        std::ios::~ios();
        if (SHIBYTE(v93.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v93.__r_.__value_.__l.__data_);
        }

        goto LABEL_114;
      }

      locale = v87[1].__locale_;
      v8 = v87[3].__locale_;
    }

    v7 = v8 - locale;
    if ((v8 - locale) > 0x7FFFFFFFFFFFFFF7)
    {
      sub_100061080();
    }

    if (v7 >= 0x17)
    {
      operator new();
    }

    v74 = v8 - locale;
    if (v7)
    {
      memmove(__dst, locale, v7);
    }

    goto LABEL_31;
  }

LABEL_117:
  if (v98 < 0)
  {
    operator delete(v97[0]);
  }
}

void sub_10048536C(_Unwind_Exception *a1)
{
  if (SLOBYTE(STACK[0x3D7]) < 0)
  {
    operator delete(STACK[0x3C0]);
  }

  sub_10001A420(&STACK[0x3D8]);
  if (SLOBYTE(STACK[0x3FF]) < 0)
  {
    operator delete(STACK[0x3E8]);
  }

  _Unwind_Resume(a1);
}

void (__cdecl ***sub_1004854AC(void (__cdecl ***a1)(std::istringstream *__hidden this), const std::string *a2, int a3))(std::istringstream *__hidden this)
{
  a1[21] = 0;
  *a1 = v7;
  *(*(v7 - 3) + a1) = v6;
  a1[1] = 0;
  v8 = (*(*a1 - 3) + a1);
  std::ios_base::init(v8, a1 + 2);
  v8[1].__vftable = 0;
  v8[1].__fmtflags_ = -1;
  sub_100487200((a1 + 2), a2, a3 | 8);
  return a1;
}

void sub_100485608(_Unwind_Exception *a1)
{
  std::istream::~istream();
  std::ios::~ios();
  _Unwind_Resume(a1);
}

void *sub_100485630(void *a1, uint64_t a2, unsigned __int8 a3)
{
  std::istream::sentry::sentry();
  if (v11 != 1)
  {
    return a1;
  }

  if (*(a2 + 23) < 0)
  {
    **a2 = 0;
    *(a2 + 8) = 0;
  }

  else
  {
    *a2 = 0;
    *(a2 + 23) = 0;
  }

  v6 = 0;
  while (1)
  {
    v7 = *(a1 + *(*a1 - 24) + 40);
    v8 = v7[3];
    if (v8 != v7[4])
    {
      v7[3] = v8 + 1;
      LOBYTE(v7) = *v8;
      goto LABEL_9;
    }

    LODWORD(v7) = (*(*v7 + 80))(v7);
    if (v7 == -1)
    {
      break;
    }

LABEL_9:
    if (v7 == a3)
    {
      v9 = 0;
      goto LABEL_17;
    }

    std::string::push_back(a2, v7);
    --v6;
    if (*(a2 + 23) < 0 && *(a2 + 8) == 0x7FFFFFFFFFFFFFF7)
    {
      v9 = 4;
      goto LABEL_17;
    }
  }

  if (v6)
  {
    v9 = 2;
  }

  else
  {
    v9 = 6;
  }

LABEL_17:
  std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | v9);
  return a1;
}

void sub_100485794(void *a1)
{
  __cxa_begin_catch(a1);
  v2 = *v1;
  *(v1 + *(*v1 - 24) + 32) |= 1u;
  if ((*(v1 + *(v2 - 24) + 36) & 1) == 0)
  {
    __cxa_end_catch();
    JUMPOUT(0x100485754);
  }

  __cxa_rethrow();
}

BOOL sub_100485824(uint64_t a1)
{
  v2 = a1 + 112;
  v3 = a1 + 72;
  (*(*(a1 + 112) + 16))(a1 + 112);
  if (sub_100099160(v3))
  {
    Current = CFAbsoluteTimeGetCurrent();
    if (qword_102656398 != -1)
    {
      sub_10188FA60();
    }

    v5 = dword_102656390;
    v6 = sub_1001B16EC(*(a1 + 80), dword_102656390);
    v7 = v6 == 0;
    v8 = CFAbsoluteTimeGetCurrent();
    if (qword_1025D4530 != -1)
    {
      sub_10188F214();
    }

    v9 = qword_1025D4538;
    if (os_log_type_enabled(qword_1025D4538, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134349568;
      v13 = v8 - Current;
      v14 = 2050;
      v15 = v6;
      v16 = 1026;
      v17 = v5;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEFAULT, "[DB] Time taken for incrementalVacuum, %{public}.2f ReduceFreePagesStatus, %{public}lu, incrementalVacuumPageLimit : %{public}d", buf, 0x1Cu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10188F360(buf);
      v10 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "BOOL CMHealthColdStorageDb::performIncrementalDbVacuum()", "%s\n", v10);
      if (v10 != buf)
      {
        free(v10);
      }
    }
  }

  else
  {
    v7 = 0;
  }

  (*(*v2 + 24))(v2);
  return v7;
}

void sub_100485AAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1017EC98C(va);
  _Unwind_Resume(a1);
}

void sub_100485AEC(uint64_t a1)
{
  sub_100487424(a1);

  operator delete();
}

char *sub_100485B24@<X0>(char *result@<X0>, uint64_t a2@<X8>)
{
  if (result[247] < 0)
  {
    return sub_100007244(a2, *(result + 28), *(result + 29));
  }

  *a2 = *(result + 14);
  *(a2 + 16) = *(result + 30);
  return result;
}

void sub_100485B54(uint64_t a1)
{
  sub_100487424(a1 - 72);

  operator delete();
}

char *sub_100485B90@<X0>(char *result@<X0>, uint64_t a2@<X8>)
{
  if (result[175] < 0)
  {
    return sub_100007244(a2, *(result + 19), *(result + 20));
  }

  *a2 = *(result + 152);
  *(a2 + 16) = *(result + 21);
  return result;
}

void sub_100485BE8(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x555555555555556)
  {
    operator new();
  }

  sub_1001D0818();
}

void *sub_100485C40(void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_100485D18(result, a2);
  }

  return result;
}

void sub_100485CFC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_100485D18(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    sub_100485D54(a1, a2);
  }

  sub_10028C64C();
}

void sub_100485D54(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  sub_1001D0818();
}

uint64_t sub_100485D9C(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_100485E1C(result, a4);
  }

  return result;
}

void sub_100485E00(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_100485E1C(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    sub_10013E290(a1, a2);
  }

  sub_10028C64C();
}

char *sub_100485E68(void *a1, char *__dst, char *__src, char *a4, uint64_t a5)
{
  v5 = __dst;
  if (a5 < 1)
  {
    return v5;
  }

  v7 = __src;
  v10 = a1[1];
  v9 = a1[2];
  if (a5 > (v9 - v10) >> 2)
  {
    v11 = *a1;
    v12 = a5 + (&v10[-*a1] >> 2);
    if (v12 >> 62)
    {
      sub_10028C64C();
    }

    v13 = __dst - v11;
    v14 = v9 - v11;
    if (v14 >> 1 > v12)
    {
      v12 = v14 >> 1;
    }

    if (v14 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v15 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = v12;
    }

    v16 = v13 >> 2;
    if (v15)
    {
      sub_1000B85D0(a1, v15);
    }

    v33 = 4 * v16;
    v34 = 4 * a5;
    v35 = (4 * v16);
    do
    {
      v36 = *v7++;
      *v35++ = v36;
      v34 -= 4;
    }

    while (v34);
    memcpy((v33 + 4 * a5), v5, a1[1] - v5);
    v37 = *a1;
    v38 = v33 + 4 * a5 + a1[1] - v5;
    a1[1] = v5;
    v39 = v5 - v37;
    v40 = (v33 - (v5 - v37));
    memcpy(v40, v37, v39);
    v41 = *a1;
    *a1 = v40;
    a1[1] = v38;
    a1[2] = 0;
    if (v41)
    {
      operator delete(v41);
    }

    return (4 * v16);
  }

  v17 = (v10 - __dst) >> 2;
  if (v17 >= a5)
  {
    v22 = &__dst[4 * a5];
    v23 = &v10[-4 * a5];
    v24 = a1[1];
    while (v23 < v10)
    {
      v25 = *v23;
      v23 += 4;
      *v24++ = v25;
    }

    a1[1] = v24;
    if (v10 != v22)
    {
      memmove(&__dst[4 * a5], __dst, v10 - v22);
    }

    v30 = 4 * a5;
    v31 = v5;
    v32 = v7;
    goto LABEL_34;
  }

  v18 = &__src[v10 - __dst];
  v19 = a1[1];
  v20 = v19;
  while (v18 != a4)
  {
    v21 = *v18;
    v18 += 4;
    *v20 = v21;
    v20 += 4;
    v19 += 4;
  }

  a1[1] = v19;
  if (v17 >= 1)
  {
    v26 = &__dst[4 * a5];
    v27 = &v19[-4 * a5];
    v28 = v19;
    while (v27 < v10)
    {
      v29 = *v27;
      v27 += 4;
      *v28 = v29;
      v28 += 4;
    }

    a1[1] = v28;
    if (v20 != v26)
    {
      memmove(&__dst[4 * a5], __dst, v19 - v26);
    }

    if (v10 != v5)
    {
      v31 = v5;
      v32 = v7;
      v30 = v10 - v5;
LABEL_34:
      memmove(v31, v32, v30);
    }
  }

  return v5;
}

uint64_t sub_100486068(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a1 = *a2;
  *(a1 + *(v3 - 24)) = a2[3];
  if (*(a1 + 103) < 0)
  {
    operator delete(*(a1 + 80));
  }

  std::locale::~locale((a1 + 24));

  return std::istream::~istream();
}

unsigned __int8 *sub_1004861C8(unsigned __int8 *a1, const char *a2, _DWORD *a3, unsigned __int8 a4)
{
  *a1 = 0;
  *(a1 + 1) = *a3;
  v6 = a1 + 4;
  a1[8] = a4;
  v7 = sub_100011660();
  sub_100185AC0(v7, buf);
  *a1 = sub_10005BBE4(*buf, a2, v6);
  if (*&buf[8])
  {
    sub_100008080(*&buf[8]);
  }

  sub_10003848C(v34);
  std::ostream::operator<<();
  if ((a1[8] & 1) == 0)
  {
    if (*a1)
    {
      if (qword_1025D4200 != -1)
      {
        sub_10188FA74();
      }

      v10 = qword_1025D4208;
      if (!os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_48;
      }

      v11 = *a1;
      if ((v44 & 0x10) != 0)
      {
        v20 = v43;
        if (v43 < v40)
        {
          v43 = v40;
          v20 = v40;
        }

        v21 = __src;
      }

      else
      {
        if ((v44 & 8) == 0)
        {
          v12 = 0;
          BYTE3(v49) = 0;
LABEL_44:
          __dst[v12] = 0;
          v24 = __dst;
          if (SBYTE3(v49) < 0)
          {
            v24 = *__dst;
          }

          *buf = 136315650;
          *&buf[4] = a2;
          *&buf[12] = 1024;
          *&buf[14] = v11;
          v51 = 2080;
          v52 = v24;
          _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEFAULT, "motion default,%s,set,%d,value,%s", buf, 0x1Cu);
          if (SBYTE3(v49) < 0)
          {
            operator delete(*__dst);
          }

LABEL_48:
          if (!sub_10000A100(121, 2))
          {
            goto LABEL_67;
          }

          sub_10188FA9C(buf);
          v25 = *a1;
          sub_10003DD04(&v35, __p);
          if (v33 >= 0)
          {
            v26 = __p;
          }

          else
          {
            v26 = __p[0];
          }

          *__dst = 136315650;
          *&__dst[4] = a2;
          v46 = 1024;
          v47 = v25;
          v48 = 2080;
          v49 = v26;
          v16 = _os_log_send_and_compose_impl();
          if (v33 < 0)
          {
            operator delete(__p[0]);
          }

          goto LABEL_75;
        }

        v21 = v37;
        v20 = v38;
      }

      v12 = v20 - v21;
      if (v20 - v21 > 0x7FFFFFFFFFFFFFF7)
      {
        sub_100061080();
      }

      if (v12 >= 0x17)
      {
        operator new();
      }

      BYTE3(v49) = v20 - v21;
      if (v12)
      {
        memmove(__dst, v21, v12);
      }

      goto LABEL_44;
    }

    if (qword_1025D4200 != -1)
    {
      sub_10188FA74();
    }

    v17 = qword_1025D4208;
    if (!os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_INFO))
    {
LABEL_66:
      if (!sub_10000A100(121, 2))
      {
        goto LABEL_67;
      }

      sub_10188FA9C(buf);
      v30 = *a1;
      sub_10003DD04(&v35, __p);
      if (v33 >= 0)
      {
        v31 = __p;
      }

      else
      {
        v31 = __p[0];
      }

      *__dst = 136315650;
      *&__dst[4] = a2;
      v46 = 1024;
      v47 = v30;
      v48 = 2080;
      v49 = v31;
      v16 = _os_log_send_and_compose_impl();
      if (v33 < 0)
      {
        operator delete(__p[0]);
      }

LABEL_75:
      sub_100152C7C("Generic", 1, 0, 2, "CLMotionDefaultsWrite<int>::CLMotionDefaultsWrite(const char *, const T &, const BOOL) [T = int]", "%s\n", v16);
      if (v16 == buf)
      {
        goto LABEL_67;
      }

      goto LABEL_76;
    }

    v18 = *a1;
    if ((v44 & 0x10) != 0)
    {
      v22 = v43;
      if (v43 < v40)
      {
        v43 = v40;
        v22 = v40;
      }

      v23 = __src;
    }

    else
    {
      if ((v44 & 8) == 0)
      {
        v19 = 0;
        BYTE3(v49) = 0;
LABEL_62:
        __dst[v19] = 0;
        v27 = __dst;
        if (SBYTE3(v49) < 0)
        {
          v27 = *__dst;
        }

        *buf = 136315650;
        *&buf[4] = a2;
        *&buf[12] = 1024;
        *&buf[14] = v18;
        v51 = 2080;
        v52 = v27;
        _os_log_impl(dword_100000000, v17, OS_LOG_TYPE_INFO, "motion default,%s,set,%d,value,%s", buf, 0x1Cu);
        if (SBYTE3(v49) < 0)
        {
          operator delete(*__dst);
        }

        goto LABEL_66;
      }

      v23 = v37;
      v22 = v38;
    }

    v19 = v22 - v23;
    if (v22 - v23 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_100061080();
    }

    if (v19 >= 0x17)
    {
      operator new();
    }

    BYTE3(v49) = v22 - v23;
    if (v19)
    {
      memmove(__dst, v23, v19);
    }

    goto LABEL_62;
  }

  if (*a1)
  {
    if (qword_1025D4200 != -1)
    {
      sub_10188FA74();
    }

    v8 = qword_1025D4208;
    if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *a1;
      *buf = 136315394;
      *&buf[4] = a2;
      *&buf[12] = 1024;
      *&buf[14] = v9;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEFAULT, "motion default,%s,set,%d", buf, 0x12u);
    }

    if (sub_10000A100(121, 2))
    {
      goto LABEL_23;
    }
  }

  else
  {
    if (qword_1025D4200 != -1)
    {
      sub_10188FA74();
    }

    v13 = qword_1025D4208;
    if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_INFO))
    {
      v14 = *a1;
      *buf = 136315394;
      *&buf[4] = a2;
      *&buf[12] = 1024;
      *&buf[14] = v14;
      _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_INFO, "motion default,%s,set,%d", buf, 0x12u);
    }

    if (sub_10000A100(121, 2))
    {
LABEL_23:
      sub_10188FA9C(buf);
      v15 = *a1;
      *__dst = 136315394;
      *&__dst[4] = a2;
      v46 = 1024;
      v47 = v15;
      v16 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "CLMotionDefaultsWrite<int>::CLMotionDefaultsWrite(const char *, const T &, const BOOL) [T = int]", "%s\n", v16);
      if (v16 == buf)
      {
        goto LABEL_67;
      }

LABEL_76:
      free(v16);
    }
  }

LABEL_67:
  v34[2] = v28;
  if (v42 < 0)
  {
    operator delete(v41);
  }

  std::locale::~locale(&v36);
  std::iostream::~basic_iostream();
  std::ios::~ios();
  return a1;
}

void sub_100486ACC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_10026C504(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100486B1C(uint64_t a1, const void **a2, uint64_t a3)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  if (a3)
  {
    v5 = 32 * a3;
    do
    {
      sub_100486B94(a1, a2);
      a2 += 4;
      v5 -= 32;
    }

    while (v5);
  }

  return a1;
}

const void **sub_100486B94(void *a1, const void **a2)
{
  v4 = sub_100007070(a1, a2);
  v5 = v4;
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_18;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v6)
    {
      v9 = v4 % *&v6;
    }
  }

  else
  {
    v9 = (*&v6 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_18:
    sub_100486DF4();
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v5)
    {
      break;
    }

    if (v8 > 1)
    {
      if (v12 >= *&v6)
      {
        v12 %= *&v6;
      }
    }

    else
    {
      v12 &= *&v6 - 1;
    }

    if (v12 != v9)
    {
      goto LABEL_18;
    }

LABEL_17:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_18;
    }
  }

  if (!sub_100019DF4(a1, v11 + 2, a2))
  {
    goto LABEL_17;
  }

  return v11;
}

void sub_100486DD0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, uint64_t a11)
{
  if (__p)
  {
    sub_1003C9358(&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100486E98(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_1003C9358(v3, v2);
  _Unwind_Resume(a1);
}

void *sub_100486EBC(void *a1)
{
  *a1 = off_102456270;
  sub_1003FFCFC(a1 + 1);
  return a1;
}

void sub_100486F00(void *a1)
{
  *a1 = off_102456270;
  sub_1003FFCFC(a1 + 1);

  operator delete();
}

uint64_t sub_100486F64(uint64_t a1, char *a2, uint64_t a3, int a4, float a5)
{
  sub_10000EC00(__p, "");
  sub_101052EEC(a1, a2, a4, a3, a5, __p, 1, 0);
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }

  *a1 = off_1024562F0;
  sub_10000EC00((a1 + 104), a2);
  return a1;
}

void sub_10048704C(uint64_t a1)
{
  sub_1004870AC(a1);

  operator delete();
}

char *sub_100487084@<X0>(char *result@<X0>, uint64_t a2@<X8>)
{
  if (result[127] < 0)
  {
    return sub_100007244(a2, *(result + 13), *(result + 14));
  }

  *a2 = *(result + 104);
  *(a2 + 16) = *(result + 15);
  return result;
}

uint64_t sub_1004870AC(uint64_t a1)
{
  *a1 = off_1024562F0;
  if (*(a1 + 127) < 0)
  {
    operator delete(*(a1 + 104));
  }

  return sub_1010532A4(a1);
}

uint64_t sub_100487178(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_102456358;
  a2[1] = v2;
  return result;
}

uint64_t sub_1004871B4(uint64_t a1, uint64_t a2)
{
  if (sub_10004FCC4(a2, &off_1024563D8))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100487200(uint64_t a1, const std::string *a2, int a3)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = a3;
  std::string::operator=((a1 + 64), a2);
  sub_100038AF8(a1);
  return a1;
}

void sub_1004872AC(_Unwind_Exception *a1)
{
  if (*(v1 + 87) < 0)
  {
    operator delete(*v3);
  }

  *v1 = v2;
  std::locale::~locale((v1 + 8));
  _Unwind_Resume(a1);
}

uint64_t sub_1004872D4(uint64_t a1, void **a2)
{
  result = *sub_1000F2B3C(a1, &v3, a2);
  if (!result)
  {
    sub_10048736C();
  }

  return result;
}

void sub_100487408(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_1002E4F74(v3, v2);
  _Unwind_Resume(a1);
}

uint64_t sub_100487424(uint64_t a1)
{
  *a1 = off_102456150;
  v2 = a1 + 72;
  *(a1 + 72) = off_102456188;
  v3 = *(a1 + 312);
  if (v3)
  {
    *(a1 + 320) = v3;
    operator delete(v3);
  }

  if (*(a1 + 295) < 0)
  {
    operator delete(*(a1 + 272));
  }

  if (*(a1 + 271) < 0)
  {
    operator delete(*(a1 + 248));
  }

  if (*(a1 + 247) < 0)
  {
    operator delete(*(a1 + 224));
  }

  v7 = (a1 + 200);
  sub_1001E56E8(&v7);
  v4 = *(a1 + 192);
  *(a1 + 192) = 0;
  if (v4)
  {
    (*(*v4 + 24))(v4);
  }

  v5 = *(a1 + 184);
  *(a1 + 184) = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  sub_1010532A4(v2);
  *a1 = off_102450C98;
  sub_1003FFCFC((a1 + 8));
  return a1;
}

uint64_t sub_100487568()
{
  sub_10000EC00(v2, "SmoothedGaitMetricsHistory");
  v3 = 3;
  sub_10000EC00(v4, "ElevationGradeHistory");
  v5 = 3;
  sub_10000EC00(v6, "PredictedWalkDistanceBoutHistory");
  v7 = 28;
  sub_10000EC00(v8, "WalkingSpeedStrideCal");
  v9 = 28;
  sub_10000EC00(v10, "StrideCalHistory");
  v11 = 28;
  sub_10000EC00(v12, "MobilityBoutMetricsHistory");
  v13 = 90;
  sub_10000EC00(v14, "HRRecoveryInputHRHistory");
  v15 = 180;
  sub_10000EC00(v16, "HRRecoveryInputWRHistory");
  v17 = 180;
  sub_10000EC00(v18, "HRRecoverySessionHistory");
  v19 = 180;
  sub_10000EC00(v20, "VO2MaxInputHistory");
  v21 = 730;
  sub_10000EC00(v22, "VO2MaxHistory");
  v23 = 730;
  sub_10000EC00(v24, "VO2MaxSessionAttributesHistory");
  v25 = 730;
  sub_10000EC00(v26, "VO2MaxSummaryHistory");
  v27 = 730;
  sub_100486B1C(&unk_102656368, v2, 13);
  v0 = 52;
  do
  {
    if (*(&v2[v0 - 1] - 1) < 0)
    {
      operator delete(v2[v0 - 4]);
    }

    v0 -= 4;
  }

  while (v0 * 8);
  return __cxa_atexit(sub_10047DA98, &unk_102656368, dword_100000000);
}

void sub_100487788(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  v12 = (v10 + 407);
  v13 = -416;
  v14 = v12;
  while (1)
  {
    v15 = *v14;
    v14 -= 32;
    if (v15 < 0)
    {
      operator delete(*(v12 - 23));
    }

    v12 = v14;
    v13 += 32;
    if (!v13)
    {
      _Unwind_Resume(exception_object);
    }
  }
}

void sub_100487818(void *a1, unint64_t *a2)
{
  sub_1004879A4(a1);
  v4 = 0;
  v5 = *a2;
  a2[1] = *a2;
  do
  {
    v6 = a1[1];
    if (v6 == a1[2])
    {
      v7 = 0;
    }

    else
    {
      v7 = *(v6 + 4 * v4);
    }

    v8 = 1.6;
    if (v4)
    {
      if (v4 == 10)
      {
        v8 = *"33+A";
      }

      else
      {
        v8 = (v4 - 1) + 1.60000002 + 0.5;
      }
    }

    v9 = a2[2];
    if (v5 >= v9)
    {
      v10 = *a2;
      v11 = v5 - *a2;
      v12 = v11 >> 3;
      v13 = (v11 >> 3) + 1;
      if (v13 >> 61)
      {
        sub_10028C64C();
      }

      v14 = v9 - v10;
      if (v14 >> 2 > v13)
      {
        v13 = v14 >> 2;
      }

      if (v14 >= 0x7FFFFFFFFFFFFFF8)
      {
        v15 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v15 = v13;
      }

      if (v15)
      {
        sub_1000B9708(a2, v15);
      }

      v16 = 8 * v12;
      *v16 = v8;
      *(v16 + 4) = v7;
      v5 = 8 * v12 + 8;
      v17 = (v16 - 8 * (v11 >> 3));
      memcpy(v17, v10, v11);
      v18 = *a2;
      *a2 = v17;
      a2[1] = v5;
      a2[2] = 0;
      if (v18)
      {
        operator delete(v18);
      }
    }

    else
    {
      *v5 = v8;
      *(v5 + 4) = v7;
      v5 += 8;
    }

    a2[1] = v5;
    ++v4;
  }

  while (v4 != 11);
}

void *sub_1004879A4(void *result)
{
  if (*result == 1.79769313e308)
  {
    v1 = result;
    v2 = (result + 1);
    result[2] = result[1];
    v31 = 0;
    v26 = sub_1000206B4();
    v3 = sub_1003045C8(v26, @"FallMetMinuteTable", &v31);
    v4 = v31;
    if (v31)
    {
      v5 = v3;
    }

    else
    {
      v5 = 0;
    }

    if (v5 == 1)
    {
      v6 = objc_opt_class();
      v7 = [NSKeyedUnarchiver unarchivedObjectOfClasses:[NSSet setWithObjects:v6 fromData:objc_opt_class() error:0], v4, 0];
      v29 = 0u;
      v30 = 0u;
      v27 = 0u;
      v28 = 0u;
      v8 = [v7 countByEnumeratingWithState:&v27 objects:v33 count:16];
      if (v8)
      {
        v9 = *v28;
        do
        {
          for (i = 0; i != v8; i = i + 1)
          {
            if (*v28 != v9)
            {
              objc_enumerationMutation(v7);
            }

            v11 = [*(*(&v27 + 1) + 8 * i) longValue];
            v13 = v1[2];
            v12 = v1[3];
            if (v13 >= v12)
            {
              v15 = *v2;
              v16 = v13 - *v2;
              v17 = v16 >> 2;
              v18 = (v16 >> 2) + 1;
              if (v18 >> 62)
              {
                sub_10028C64C();
              }

              v19 = v12 - v15;
              if (v19 >> 1 > v18)
              {
                v18 = v19 >> 1;
              }

              v20 = v19 >= 0x7FFFFFFFFFFFFFFCLL;
              v21 = 0x3FFFFFFFFFFFFFFFLL;
              if (!v20)
              {
                v21 = v18;
              }

              if (v21)
              {
                sub_1000B85D0(v2, v21);
              }

              *(4 * v17) = v11;
              v14 = 4 * v17 + 4;
              memcpy(0, v15, v16);
              v22 = v1[1];
              v1[1] = 0;
              v1[2] = v14;
              v1[3] = 0;
              if (v22)
              {
                operator delete(v22);
              }
            }

            else
            {
              *v13 = v11;
              v14 = (v13 + 1);
            }

            v1[2] = v14;
          }

          v8 = [v7 countByEnumeratingWithState:&v27 objects:v33 count:16];
        }

        while (v8);
      }
    }

    v32 = 0;
    v23 = sub_1003045C8(v26, @"FallMetMinuteComputeTime", &v32);
    if (v32)
    {
      v24 = v23;
    }

    else
    {
      v24 = 0;
    }

    if (v24 == 1)
    {
      [+[NSKeyedUnarchiver unarchivedObjectOfClass:fromData:error:](NSKeyedUnarchiver unarchivedObjectOfClass:objc_opt_class() fromData:v32 error:{0), "timeIntervalSinceReferenceDate"}];
      *v1 = v25;
    }

    return sub_10048862C(v1);
  }

  return result;
}

void sub_100487C54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, int buf, int a24, __int128 a25)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    if (qword_1025D4330 != -1)
    {
      sub_10188FAE0();
    }

    v25 = qword_1025D4338;
    if (os_log_type_enabled(qword_1025D4338, OS_LOG_TYPE_ERROR))
    {
      buf = 68289026;
      a24 = 0;
      LOWORD(a25) = 2082;
      *(&a25 + 2) = "";
      _os_log_impl(dword_100000000, v25, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:MaxMETs,Failed to receive correct MET minutes from plist.}", &buf, 0x12u);
      if (qword_1025D4330 != -1)
      {
        sub_10188FAE0();
      }
    }

    v26 = qword_1025D4338;
    if (os_signpost_enabled(qword_1025D4338))
    {
      buf = 68289026;
      a24 = 0;
      LOWORD(a25) = 2082;
      *(&a25 + 2) = "";
      _os_signpost_emit_with_name_impl(dword_100000000, v26, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "MaxMETs,Failed to receive correct MET minutes from plist.", "{msg%{public}.0s:MaxMETs,Failed to receive correct MET minutes from plist.}", &buf, 0x12u);
    }

    objc_end_catch();
    JUMPOUT(0x100487BA8);
  }

  _Unwind_Resume(a1);
}

BOOL sub_100487D8C(double *a1, void *a2, double a3, double a4, double a5, double a6)
{
  if (a2 && [a2 count])
  {
    sub_1004879A4(a1);
    v11 = *a1;
    v74 = 0u;
    v75 = 0u;
    v76 = 0u;
    v77 = 0u;
    v12 = [a2 countByEnumeratingWithState:&v74 objects:v89 count:16];
    if (v12)
    {
      v13 = *v75;
      v64 = 68289539;
      while (2)
      {
        v14 = 0;
        do
        {
          if (*v75 != v13)
          {
            objc_enumerationMutation(a2);
          }

          v15 = *(*(&v74 + 1) + 8 * v14);
          [objc_msgSend(v15 startDate];
          if (v11 <= v16)
          {
            [objc_msgSend(v15 "averageIntensity")];
            if (v23 < 0.0)
            {
              if (qword_1025D4330 != -1)
              {
                sub_10188FAE0();
              }

              v55 = qword_1025D4338;
              if (os_log_type_enabled(qword_1025D4338, OS_LOG_TYPE_FAULT))
              {
                [objc_msgSend(v15 "startDate")];
                v57 = v56;
                [objc_msgSend(v15 "averageIntensity")];
                *buf = v64;
                *&buf[4] = 0;
                v79 = 2082;
                v80 = "";
                v81 = 2049;
                *v82 = v57;
                *&v82[8] = 1025;
                *v83 = v58;
                _os_log_impl(dword_100000000, v55, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:MaxMETs,Invalid MET minute input., MET Minute time_s:%{private}.09f, MET value:%{private}d}", buf, 0x22u);
                if (qword_1025D4330 != -1)
                {
                  sub_10188FAE0();
                }
              }

              v59 = qword_1025D4338;
              if (os_signpost_enabled(qword_1025D4338))
              {
                [objc_msgSend(v15 "startDate")];
                v61 = v60;
                [objc_msgSend(v15 "averageIntensity")];
                *buf = v64;
                *&buf[4] = 0;
                v79 = 2082;
                v80 = "";
                v81 = 2049;
                *v82 = v61;
                *&v82[8] = 1025;
                *v83 = v62;
                _os_signpost_emit_with_name_impl(dword_100000000, v59, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "MaxMETs,Invalid MET minute input.", "{msg%{public}.0s:MaxMETs,Invalid MET minute input., MET Minute time_s:%{private}.09f, MET value:%{private}d}", buf, 0x22u);
              }

              return 0;
            }

            [objc_msgSend(v15 "startDate")];
            v11 = v24 + 60.0;
          }

          else
          {
            if (qword_1025D4330 != -1)
            {
              sub_10188FAE0();
            }

            v17 = qword_1025D4338;
            if (os_log_type_enabled(qword_1025D4338, OS_LOG_TYPE_ERROR))
            {
              v18 = *a1;
              [objc_msgSend(v15 "startDate")];
              *buf = v64;
              *&buf[4] = 0;
              v79 = 2082;
              v80 = "";
              v81 = 2049;
              *v82 = v18;
              *&v82[8] = 2049;
              *v83 = v19;
              _os_log_impl(dword_100000000, v17, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:MaxMETs,Invalid MET minute input., MRU time_s:%{private}.09f, Input time_s:%{private}.09f}", buf, 0x26u);
              if (qword_1025D4330 != -1)
              {
                sub_10188FAE0();
              }
            }

            v20 = qword_1025D4338;
            if (os_signpost_enabled(qword_1025D4338))
            {
              v21 = *a1;
              [objc_msgSend(v15 "startDate")];
              *buf = v64;
              *&buf[4] = 0;
              v79 = 2082;
              v80 = "";
              v81 = 2049;
              *v82 = v21;
              *&v82[8] = 2049;
              *v83 = v22;
              _os_signpost_emit_with_name_impl(dword_100000000, v20, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "MaxMETs,Invalid MET minute input.", "{msg%{public}.0s:MaxMETs,Invalid MET minute input., MRU time_s:%{private}.09f, Input time_s:%{private}.09f}", buf, 0x26u);
            }
          }

          v14 = v14 + 1;
        }

        while (v12 != v14);
        v12 = [a2 countByEnumeratingWithState:&v74 objects:v89 count:16];
        if (v12)
        {
          continue;
        }

        break;
      }
    }

    __src = 0;
    v72 = 0;
    v73 = 0;
    if (a3 < a4)
    {
      v65 = -1.60000002;
      do
      {
        v69 = 0u;
        v70 = 0u;
        v67 = 0u;
        v68 = 0u;
        v25 = [a2 countByEnumeratingWithState:&v67 objects:v88 count:{16, *&v65}];
        v27 = a3 + a5;
        if (v25)
        {
          v28 = *v68;
          do
          {
            for (i = 0; i != v25; i = i + 1)
            {
              if (*v68 != v28)
              {
                objc_enumerationMutation(a2);
              }

              v30 = *(*(&v67 + 1) + 8 * i);
              [objc_msgSend(v30 "startDate")];
              if (a3 <= v31)
              {
                [objc_msgSend(v30 "startDate")];
                if (v32 < v27)
                {
                  [objc_msgSend(v30 "averageIntensity")];
                  if (v33 > 1.60000002)
                  {
                    [objc_msgSend(v30 "averageIntensity")];
                    v35 = v72;
                    if (v72 >= v73)
                    {
                      v37 = __src;
                      v38 = v72 - __src;
                      v39 = (v72 - __src) >> 3;
                      v40 = v39 + 1;
                      if ((v39 + 1) >> 61)
                      {
                        sub_10028C64C();
                      }

                      v41 = v73 - __src;
                      if ((v73 - __src) >> 2 > v40)
                      {
                        v40 = v41 >> 2;
                      }

                      if (v41 >= 0x7FFFFFFFFFFFFFF8)
                      {
                        v42 = 0x1FFFFFFFFFFFFFFFLL;
                      }

                      else
                      {
                        v42 = v40;
                      }

                      if (v42)
                      {
                        sub_1000B9708(&__src, v42);
                      }

                      *(8 * v39) = v34;
                      v36 = (8 * v39 + 8);
                      memcpy(0, v37, v38);
                      v43 = __src;
                      __src = 0;
                      v72 = v36;
                      v73 = 0;
                      if (v43)
                      {
                        operator delete(v43);
                      }
                    }

                    else
                    {
                      *v72 = v34;
                      v36 = v35 + 1;
                    }

                    v72 = v36;
                  }
                }
              }
            }

            v25 = [a2 countByEnumeratingWithState:&v67 objects:v88 count:16];
          }

          while (v25);
        }

        v44 = __src;
        v45 = v72 - __src;
        if (a6 >= 0.0)
        {
          v47 = v45 >> 3;
          v26 = 1.0;
          if (a6 <= 1.0)
          {
            v26 = v47 * a6;
            v46 = v26;
          }

          else
          {
            v46 = v47 - 1;
          }
        }

        else
        {
          v46 = 0;
        }

        if (v72 != __src)
        {
          v48 = (__src + 8 * v46);
          if (v48 != v72)
          {
            sub_1003E3EC0(__src, v48, v72, v26);
            v44 = __src;
          }

          v49 = v44[v46];
          if (qword_1025D4330 != -1)
          {
            sub_10188FAE0();
          }

          v50 = qword_1025D4338;
          if (os_log_type_enabled(qword_1025D4338, OS_LOG_TYPE_DEBUG))
          {
            *buf = 68290307;
            v79 = 2082;
            v80 = "";
            v81 = 1025;
            *v82 = v45 >> 3;
            *&v82[4] = 1025;
            *&v82[6] = v46;
            *v83 = 2049;
            *&v83[2] = v49;
            v84 = 2049;
            v85 = a3;
            v86 = 2049;
            v87 = a3 + a5;
            _os_log_impl(dword_100000000, v50, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:Processed mets values, count:%{private}d, index:%{private}d, mets value:%{private}f, start time_s:%{private}.09f, end time_s:%{private}.09f}", buf, 0x3Cu);
          }

          v51 = vcvtpd_u64_f64(v49 + v65);
          if (v51 >= 0xA)
          {
            v51 = 10;
          }

          ++*(*(a1 + 1) + 4 * v51);
          v44 = __src;
        }

        v72 = v44;
        a3 = a3 + a5;
      }

      while (v27 < a4);
    }

    *a1 = v11;
    v54 = sub_10048862C(a1);
    if (__src)
    {
      v72 = __src;
      operator delete(__src);
    }
  }

  else
  {
    if (qword_1025D4330 != -1)
    {
      sub_10188FC5C();
    }

    v52 = qword_1025D4338;
    if (os_log_type_enabled(qword_1025D4338, OS_LOG_TYPE_ERROR))
    {
      *buf = 68289026;
      *&buf[4] = 0;
      v79 = 2082;
      v80 = "";
      _os_log_impl(dword_100000000, v52, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:MaxMETs,Empty MET minutes input.}", buf, 0x12u);
      if (qword_1025D4330 != -1)
      {
        sub_10188FAE0();
      }
    }

    v53 = qword_1025D4338;
    if (os_signpost_enabled(qword_1025D4338))
    {
      *buf = 68289026;
      *&buf[4] = 0;
      v79 = 2082;
      v80 = "";
      _os_signpost_emit_with_name_impl(dword_100000000, v53, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "MaxMETs,Empty MET minutes input.", "{msg%{public}.0s:MaxMETs,Empty MET minutes input.}", buf, 0x12u);
    }

    v54 = 0;
    *a1 = a4;
  }

  return v54;
}

void sub_1004885F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_10048862C(uint64_t a1)
{
  if (!sub_1004889B8(a1))
  {
    v15 = 0;
    sub_100488B84((a1 + 8), 0xBuLL, &v15);
    *a1 = CFAbsoluteTimeGetCurrent() + -86400.0;
  }

  v2 = objc_opt_new();
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  while (v3 != v4)
  {
    v5 = *v3++;
    [v2 addObject:{+[NSNumber numberWithLong:](NSNumber, "numberWithLong:", v5)}];
  }

  [NSKeyedArchiver archivedDataWithRootObject:v2 requiringSecureCoding:1 error:0];
  v6 = sub_1000206B4();
  v7 = sub_1003046B4(v6);
  if ((v7 & 1) == 0)
  {
    if (qword_1025D4330 != -1)
    {
      sub_10188FAE0();
    }

    v8 = qword_1025D4338;
    if (os_log_type_enabled(qword_1025D4338, OS_LOG_TYPE_ERROR))
    {
      v15 = 68289026;
      v16 = 0;
      v17 = 2082;
      v18 = "";
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:MaxMETs,Failed to persist MET minutes stats}", &v15, 0x12u);
      if (qword_1025D4330 != -1)
      {
        sub_10188FAE0();
      }
    }

    v9 = qword_1025D4338;
    if (os_signpost_enabled(qword_1025D4338))
    {
      v15 = 68289026;
      v16 = 0;
      v17 = 2082;
      v18 = "";
      _os_signpost_emit_with_name_impl(dword_100000000, v9, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "MaxMETs,Failed to persist MET minutes stats", "{msg%{public}.0s:MaxMETs,Failed to persist MET minutes stats}", &v15, 0x12u);
    }
  }

  [NSKeyedArchiver archivedDataWithRootObject:[NSDate dateWithTimeIntervalSinceReferenceDate:*a1] requiringSecureCoding:1 error:0];
  v10 = sub_1000206B4();
  if (sub_1003046B4(v10))
  {
    if (v7)
    {
      v11 = sub_1000206B4();
      (*(*v11 + 944))(v11);
      return 1;
    }

    return 0;
  }

  if (qword_1025D4330 != -1)
  {
    sub_10188FAE0();
  }

  v13 = qword_1025D4338;
  if (os_log_type_enabled(qword_1025D4338, OS_LOG_TYPE_ERROR))
  {
    v15 = 68289026;
    v16 = 0;
    v17 = 2082;
    v18 = "";
    _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:MaxMETs,Failed to persist MET minutes stats compute time}", &v15, 0x12u);
    if (qword_1025D4330 != -1)
    {
      sub_10188FAE0();
    }
  }

  v14 = qword_1025D4338;
  result = os_signpost_enabled(qword_1025D4338);
  if (result)
  {
    v15 = 68289026;
    v16 = 0;
    v17 = 2082;
    v18 = "";
    _os_signpost_emit_with_name_impl(dword_100000000, v14, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "MaxMETs,Failed to persist MET minutes stats compute time", "{msg%{public}.0s:MaxMETs,Failed to persist MET minutes stats compute time}", &v15, 0x12u);
    return 0;
  }

  return result;
}

BOOL sub_1004889B8(uint64_t a1)
{
  if (*(a1 + 16) - *(a1 + 8) == 44 && *a1 != 1.79769313e308)
  {
    return 1;
  }

  if (qword_1025D4330 != -1)
  {
    sub_10188FC5C();
  }

  v2 = qword_1025D4338;
  if (os_log_type_enabled(qword_1025D4338, OS_LOG_TYPE_ERROR))
  {
    v3 = *a1;
    v4 = (*(a1 + 16) - *(a1 + 8)) >> 2;
    v9 = 68289539;
    v10 = 0;
    v11 = 2082;
    v12 = "";
    v13 = 2049;
    v14 = v4;
    v15 = 2049;
    v16 = v3;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:MaxMETs,Invalid MET minute table, table size:%{private}ld, compute time_s:%{private}.09f}", &v9, 0x26u);
    if (qword_1025D4330 != -1)
    {
      sub_10188FAE0();
    }
  }

  v5 = qword_1025D4338;
  result = os_signpost_enabled(qword_1025D4338);
  if (result)
  {
    v7 = *a1;
    v8 = (*(a1 + 16) - *(a1 + 8)) >> 2;
    v9 = 68289539;
    v10 = 0;
    v11 = 2082;
    v12 = "";
    v13 = 2049;
    v14 = v8;
    v15 = 2049;
    v16 = v7;
    _os_signpost_emit_with_name_impl(dword_100000000, v5, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "MaxMETs,Invalid MET minute table", "{msg%{public}.0s:MaxMETs,Invalid MET minute table, table size:%{private}ld, compute time_s:%{private}.09f}", &v9, 0x26u);
    return 0;
  }

  return result;
}

_DWORD *sub_100488B84(void *a1, unint64_t a2, int *a3)
{
  v5 = a1[2];
  result = *a1;
  if (a2 > (v5 - result) >> 2)
  {
    if (result)
    {
      a1[1] = result;
      operator delete(result);
      v5 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if (!(a2 >> 62))
    {
      v7 = v5 >> 1;
      if (v5 >> 1 <= a2)
      {
        v7 = a2;
      }

      if (v5 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v8 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v8 = v7;
      }

      sub_10038EBB4(a1, v8);
    }

    sub_10028C64C();
  }

  v9 = a1[1];
  v10 = (v9 - result) >> 2;
  if (v10 >= a2)
  {
    v11 = a2;
  }

  else
  {
    v11 = (v9 - result) >> 2;
  }

  if (v11)
  {
    v12 = 0;
    v13 = *a3;
    v14 = (v11 + 3) & 0xFFFFFFFFFFFFFFFCLL;
    v15 = vdupq_n_s64(v11 - 1);
    v16 = result + 2;
    do
    {
      v17 = vdupq_n_s64(v12);
      v18 = vmovn_s64(vcgeq_u64(v15, vorrq_s8(v17, xmmword_101C652A0)));
      if (vuzp1_s16(v18, *v15.i8).u8[0])
      {
        *(v16 - 2) = v13;
      }

      if (vuzp1_s16(v18, *&v15).i8[2])
      {
        *(v16 - 1) = v13;
      }

      if (vuzp1_s16(*&v15, vmovn_s64(vcgeq_u64(v15, vorrq_s8(v17, xmmword_101C65490)))).i32[1])
      {
        *v16 = v13;
        v16[1] = v13;
      }

      v12 += 4;
      v16 += 4;
    }

    while (v14 != v12);
  }

  v19 = a2 >= v10;
  v20 = a2 - v10;
  if (v20 != 0 && v19)
  {
    v21 = 0;
    v22 = v9 + 4 * v20;
    v23 = *a3;
    v24 = (4 * a2 - (v9 - result) - 4) >> 2;
    v25 = vdupq_n_s64(v24);
    v26 = (v9 + 8);
    do
    {
      v27 = vdupq_n_s64(v21);
      v28 = vmovn_s64(vcgeq_u64(v25, vorrq_s8(v27, xmmword_101C652A0)));
      if (vuzp1_s16(v28, *v25.i8).u8[0])
      {
        *(v26 - 2) = v23;
      }

      if (vuzp1_s16(v28, *&v25).i8[2])
      {
        *(v26 - 1) = v23;
      }

      if (vuzp1_s16(*&v25, vmovn_s64(vcgeq_u64(v25, vorrq_s8(v27, xmmword_101C65490)))).i32[1])
      {
        *v26 = v23;
        v26[1] = v23;
      }

      v21 += 4;
      v26 += 4;
    }

    while (((v24 + 4) & 0x7FFFFFFFFFFFFFFCLL) != v21);
    a1[1] = v22;
  }

  else
  {
    a1[1] = &result[a2];
  }

  return result;
}

uint64_t sub_100488FC0(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10048A1E0;
  block[3] = &unk_102447418;
  block[4] = a1;
  if (qword_1026563E8 != -1)
  {
    dispatch_once(&qword_1026563E8, block);
  }

  return qword_1026563F0;
}

void sub_100489218(id a1)
{
  if (objc_opt_class())
  {
    sub_10001A3E8();
    if (sub_10001CF3C())
    {
      byte_1026563D8 = 1;
    }
  }

  sub_10001CAF4(&v3);
  v5 = 0;
  v1 = sub_10001CB4C(v3, "EnableMultiClientStreaming", &v5);
  v2 = v1 & v5;
  if (v4)
  {
    sub_100008080(v4);
  }

  if (v2)
  {
    byte_1026563D8 = 1;
  }
}

void sub_1004892AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_100008080(a11);
  }

  _Unwind_Resume(exception_object);
}

void sub_1004892EC(_DWORD *a1)
{
  if ((a1[42] & 0x80000000) != 0)
  {
    if (qword_1025D47B0 != -1)
    {
      sub_10188FE2C();
    }

    v5 = qword_1025D47B8;
    if (os_log_type_enabled(qword_1025D47B8, OS_LOG_TYPE_FAULT))
    {
      v6 = a1[42];
      *buf = 68289795;
      v12 = 0;
      v13 = 2082;
      v14 = "";
      v15 = 1026;
      v16 = v6;
      v17 = 2082;
      v18 = "assert";
      v19 = 2081;
      v20 = "fDisablementAssertionCount >= 0";
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Assertion count must be non-negative, count:%{public}d, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x2Cu);
      if (qword_1025D47B0 != -1)
      {
        sub_10188FE40();
      }
    }

    v7 = qword_1025D47B8;
    if (os_signpost_enabled(qword_1025D47B8))
    {
      v8 = a1[42];
      *buf = 68289795;
      v12 = 0;
      v13 = 2082;
      v14 = "";
      v15 = 1026;
      v16 = v8;
      v17 = 2082;
      v18 = "assert";
      v19 = 2081;
      v20 = "fDisablementAssertionCount >= 0";
      _os_signpost_emit_with_name_impl(dword_100000000, v7, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Assertion count must be non-negative", "{msg%{public}.0s:Assertion count must be non-negative, count:%{public}d, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x2Cu);
      if (qword_1025D47B0 != -1)
      {
        sub_10188FE40();
      }
    }

    v9 = qword_1025D47B8;
    if (os_log_type_enabled(qword_1025D47B8, OS_LOG_TYPE_INFO))
    {
      v10 = a1[42];
      *buf = 68289795;
      v12 = 0;
      v13 = 2082;
      v14 = "";
      v15 = 1026;
      v16 = v10;
      v17 = 2082;
      v18 = "assert";
      v19 = 2081;
      v20 = "fDisablementAssertionCount >= 0";
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Assertion count must be non-negative, count:%{public}d, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x2Cu);
    }

    abort_report_np();
  }

  else if (qword_1025D47B0 == -1)
  {
    goto LABEL_3;
  }

  sub_10188FE2C();
LABEL_3:
  v2 = qword_1025D47B8;
  if (os_log_type_enabled(qword_1025D47B8, OS_LOG_TYPE_DEFAULT))
  {
    v3 = a1[42];
    *buf = 68289282;
    v12 = 0;
    v13 = 2082;
    v14 = "";
    v15 = 1026;
    v16 = v3;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Client took disablement assertion, before change:%{public}d}", buf, 0x18u);
  }

  v4 = a1[42];
  a1[42] = v4 + 1;
  if (!v4)
  {
    *buf = 9;
    (*(*a1 + 144))(a1, buf, 1, 0xFFFFFFFFLL);
    sub_10048B54C(a1);
  }
}

void sub_10048965C(_DWORD *a1)
{
  if (a1[42] <= 0)
  {
    if (qword_1025D47B0 != -1)
    {
      sub_10188FE2C();
    }

    v5 = qword_1025D47B8;
    if (os_log_type_enabled(qword_1025D47B8, OS_LOG_TYPE_FAULT))
    {
      v6 = a1[42];
      *buf = 68289795;
      v12 = 0;
      v13 = 2082;
      v14 = "";
      v15 = 1026;
      v16 = v6;
      v17 = 2082;
      v18 = "assert";
      v19 = 2081;
      v20 = "fDisablementAssertionCount > 0";
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Assertion count must be positive, count:%{public}d, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x2Cu);
      if (qword_1025D47B0 != -1)
      {
        sub_10188FE40();
      }
    }

    v7 = qword_1025D47B8;
    if (os_signpost_enabled(qword_1025D47B8))
    {
      v8 = a1[42];
      *buf = 68289795;
      v12 = 0;
      v13 = 2082;
      v14 = "";
      v15 = 1026;
      v16 = v8;
      v17 = 2082;
      v18 = "assert";
      v19 = 2081;
      v20 = "fDisablementAssertionCount > 0";
      _os_signpost_emit_with_name_impl(dword_100000000, v7, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Assertion count must be positive", "{msg%{public}.0s:Assertion count must be positive, count:%{public}d, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x2Cu);
      if (qword_1025D47B0 != -1)
      {
        sub_10188FE40();
      }
    }

    v9 = qword_1025D47B8;
    if (os_log_type_enabled(qword_1025D47B8, OS_LOG_TYPE_INFO))
    {
      v10 = a1[42];
      *buf = 68289795;
      v12 = 0;
      v13 = 2082;
      v14 = "";
      v15 = 1026;
      v16 = v10;
      v17 = 2082;
      v18 = "assert";
      v19 = 2081;
      v20 = "fDisablementAssertionCount > 0";
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Assertion count must be positive, count:%{public}d, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x2Cu);
    }

    abort_report_np();
  }

  else if (qword_1025D47B0 == -1)
  {
    goto LABEL_3;
  }

  sub_10188FE2C();
LABEL_3:
  v2 = qword_1025D47B8;
  if (os_log_type_enabled(qword_1025D47B8, OS_LOG_TYPE_DEFAULT))
  {
    v3 = a1[42];
    *buf = 68289282;
    v12 = 0;
    v13 = 2082;
    v14 = "";
    v15 = 1026;
    v16 = v3;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Client released disablement assertion, before change:%{public}d}", buf, 0x18u);
  }

  v4 = a1[42] - 1;
  a1[42] = v4;
  if (!v4)
  {
    *buf = 9;
    (*(*a1 + 120))(a1, buf);
    sub_10048B54C(a1);
  }
}

void sub_1004899CC(uint64_t a1)
{
  if ((*(a1 + 172) & 0x80000000) != 0)
  {
    if (qword_1025D47B0 != -1)
    {
      sub_10188FE2C();
    }

    v5 = qword_1025D47B8;
    if (os_log_type_enabled(qword_1025D47B8, OS_LOG_TYPE_FAULT))
    {
      v6 = *(a1 + 172);
      *buf = 68289795;
      v12 = 0;
      v13 = 2082;
      v14 = "";
      v15 = 1026;
      v16 = v6;
      v17 = 2082;
      v18 = "assert";
      v19 = 2081;
      v20 = "fEmergencyEnablementAssertionCount >= 0";
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Assertion count must be non-negative, count:%{public}d, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x2Cu);
      if (qword_1025D47B0 != -1)
      {
        sub_10188FE40();
      }
    }

    v7 = qword_1025D47B8;
    if (os_signpost_enabled(qword_1025D47B8))
    {
      v8 = *(a1 + 172);
      *buf = 68289795;
      v12 = 0;
      v13 = 2082;
      v14 = "";
      v15 = 1026;
      v16 = v8;
      v17 = 2082;
      v18 = "assert";
      v19 = 2081;
      v20 = "fEmergencyEnablementAssertionCount >= 0";
      _os_signpost_emit_with_name_impl(dword_100000000, v7, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Assertion count must be non-negative", "{msg%{public}.0s:Assertion count must be non-negative, count:%{public}d, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x2Cu);
      if (qword_1025D47B0 != -1)
      {
        sub_10188FE40();
      }
    }

    v9 = qword_1025D47B8;
    if (os_log_type_enabled(qword_1025D47B8, OS_LOG_TYPE_INFO))
    {
      v10 = *(a1 + 172);
      *buf = 68289795;
      v12 = 0;
      v13 = 2082;
      v14 = "";
      v15 = 1026;
      v16 = v10;
      v17 = 2082;
      v18 = "assert";
      v19 = 2081;
      v20 = "fEmergencyEnablementAssertionCount >= 0";
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Assertion count must be non-negative, count:%{public}d, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x2Cu);
    }

    abort_report_np();
  }

  else if (qword_1025D47B0 == -1)
  {
    goto LABEL_3;
  }

  sub_10188FE2C();
LABEL_3:
  v2 = qword_1025D47B8;
  if (os_log_type_enabled(qword_1025D47B8, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 172);
    *buf = 68289282;
    v12 = 0;
    v13 = 2082;
    v14 = "";
    v15 = 1026;
    v16 = v3;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Client took emergency enablement assertion, before change:%{public}d}", buf, 0x18u);
  }

  v4 = *(a1 + 172);
  *(a1 + 172) = v4 + 1;
  if (!v4)
  {
    if (*(a1 + 144))
    {
      sub_10048AA04(a1);
    }
  }
}

void sub_100489D08(uint64_t a1)
{
  if (*(a1 + 172) <= 0)
  {
    if (qword_1025D47B0 != -1)
    {
      sub_10188FE2C();
    }

    v5 = qword_1025D47B8;
    if (os_log_type_enabled(qword_1025D47B8, OS_LOG_TYPE_FAULT))
    {
      v6 = *(a1 + 172);
      *buf = 68289795;
      v12 = 0;
      v13 = 2082;
      v14 = "";
      v15 = 1026;
      v16 = v6;
      v17 = 2082;
      v18 = "assert";
      v19 = 2081;
      v20 = "fEmergencyEnablementAssertionCount > 0";
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Assertion count must be positive, count:%{public}d, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x2Cu);
      if (qword_1025D47B0 != -1)
      {
        sub_10188FE40();
      }
    }

    v7 = qword_1025D47B8;
    if (os_signpost_enabled(qword_1025D47B8))
    {
      v8 = *(a1 + 172);
      *buf = 68289795;
      v12 = 0;
      v13 = 2082;
      v14 = "";
      v15 = 1026;
      v16 = v8;
      v17 = 2082;
      v18 = "assert";
      v19 = 2081;
      v20 = "fEmergencyEnablementAssertionCount > 0";
      _os_signpost_emit_with_name_impl(dword_100000000, v7, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Assertion count must be positive", "{msg%{public}.0s:Assertion count must be positive, count:%{public}d, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x2Cu);
      if (qword_1025D47B0 != -1)
      {
        sub_10188FE40();
      }
    }

    v9 = qword_1025D47B8;
    if (os_log_type_enabled(qword_1025D47B8, OS_LOG_TYPE_INFO))
    {
      v10 = *(a1 + 172);
      *buf = 68289795;
      v12 = 0;
      v13 = 2082;
      v14 = "";
      v15 = 1026;
      v16 = v10;
      v17 = 2082;
      v18 = "assert";
      v19 = 2081;
      v20 = "fEmergencyEnablementAssertionCount > 0";
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Assertion count must be positive, count:%{public}d, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x2Cu);
    }

    abort_report_np();
  }

  else if (qword_1025D47B0 == -1)
  {
    goto LABEL_3;
  }

  sub_10188FE2C();
LABEL_3:
  v2 = qword_1025D47B8;
  if (os_log_type_enabled(qword_1025D47B8, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 172);
    *buf = 68289282;
    v12 = 0;
    v13 = 2082;
    v14 = "";
    v15 = 1026;
    v16 = v3;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Client released emergency enablement assertion, before change:%{public}d}", buf, 0x18u);
  }

  v4 = *(a1 + 172) - 1;
  *(a1 + 172) = v4;
  if (!v4)
  {
    if (*(a1 + 144))
    {
      sub_10048AA04(a1);
    }
  }
}

void sub_10048A064(uint64_t a1, void *a2, void *a3)
{
  if ([a2 isEqual:@"kCLLocationStreamingMessageTypeLocation"])
  {

    sub_10048D590(a1, a3);
  }

  else if ([a2 isEqual:@"kCLLocationStreamingMessageTypeAliveAgain"] && *(a1 + 144))
  {

    sub_10048AA04(a1);
  }
}

uint64_t sub_10048A158(uint64_t a1, int a2)
{
  if (a2)
  {
    v4 = 9;
    return (*(*a1 + 120))(a1, &v4);
  }

  else
  {
    v3 = 9;
    return (*(*a1 + 144))(a1, &v3, 1, 0xFFFFFFFFLL);
  }
}

void sub_10048A250(uint64_t a1, void *a2)
{
  v3 = sub_1006A597C(a1, "Streamed location provider", a2);
  *v3 = off_102456468;
  *(v3 + 120) = 0;
  *(v3 + 128) = 0;
  *(a1 + 136) = [objc_msgSend(*(v3 + 32) "vendor")];
  *(a1 + 144) = 0;
  *(a1 + 152) = [*(a1 + 40) newTimer];
  *(a1 + 160) = [*(a1 + 40) newTimer];
  *(a1 + 168) = 0;
  *(a1 + 174) = 0;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 1;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10048A930;
  v8[3] = &unk_102449A78;
  v8[4] = a1;
  [*(a1 + 152) setHandler:v8];
  [*(a1 + 152) setNextFireDelay:1.79769313e308];
  [*(a1 + 152) setFireInterval:30.0];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10048ACF8;
  v7[3] = &unk_102449A78;
  v7[4] = a1;
  [*(a1 + 160) setHandler:v7];
  sub_10001CAF4(buf);
  LOBYTE(v9) = 0;
  v4 = sub_10001CB4C(*buf, "EnableMultiClientStreaming", &v9);
  *(a1 + 180) = v4 & v9;
  if (*v11)
  {
    sub_100008080(*v11);
  }

  if (qword_1025D47B0 != -1)
  {
    sub_10188FE40();
  }

  v5 = qword_1025D47B8;
  if (os_log_type_enabled(qword_1025D47B8, OS_LOG_TYPE_INFO))
  {
    v6 = *(a1 + 180);
    *buf = 68289282;
    *&buf[4] = 0;
    *v11 = 2082;
    *&v11[2] = "";
    v12 = 1026;
    v13 = v6;
    _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_INFO, "{msg%{public}.0s:#Multiclient enabled?, fEnableMultiClientStreaming:%{public}hhd}", buf, 0x18u);
  }

  if (*(a1 + 180) == 1)
  {
    *(a1 + 192) = -[CLStreamedLocationProviderServerDiscoverer initOnQueue:]([CLStreamedLocationProviderServerDiscoverer alloc], "initOnQueue:", [*(a1 + 40) queue]);
    sub_100D8556C();
  }

  sub_100D64EF4();
}

void sub_10048A87C(_Unwind_Exception *a1)
{
  v4 = *(v1 + 128);
  *(v1 + 128) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *v2;
  *v2 = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  sub_1006A5E8C(v1);
  _Unwind_Resume(a1);
}

void sub_10048A930(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (qword_1025D47B0 != -1)
  {
    sub_10188FE2C();
  }

  v2 = qword_1025D47B8;
  if (os_log_type_enabled(qword_1025D47B8, OS_LOG_TYPE_DEFAULT))
  {
    v3[0] = 68289026;
    v3[1] = 0;
    v4 = 2082;
    v5 = "";
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Refreshing location request}", v3, 0x12u);
  }

  sub_10048AA04(v1);
}

void sub_10048AA04(uint64_t a1)
{
  if (sub_10048B1A0(a1))
  {
    v2 = objc_alloc_init(CLLocationStreamingMessage);
    [(CLLocationStreamingMessage *)v2 setMessageType:@"kCLLocationStreamingMessageTypeRequestLocation"];
    v3 = +[NSMutableDictionary dictionary];
    [v3 setObject:+[NSNumber numberWithUnsignedInt:](NSNumber forKeyedSubscript:{"numberWithUnsignedInt:", *(a1 + 144)), @"kCLLocationStreamingMessageGranularityKey"}];
    if (sub_10048CBA8(a1))
    {
      [v3 setObject:+[NSNumber numberWithBool:](NSNumber forKeyedSubscript:{"numberWithBool:", 1), @"kCLLocationStreamingMessageIncludeMotionKey"}];
    }

    v6 = 28;
    if (sub_10000608C(a1, &v6, 1))
    {
      [v3 setObject:&__kCFBooleanTrue forKeyedSubscript:@"kCLLocationStreamingMessageInFitnessSessionKey"];
    }

    v6 = 29;
    if (sub_10000608C(a1, &v6, 1))
    {
      [v3 setObject:&__kCFBooleanTrue forKeyedSubscript:@"kCLLocationStreamingMessageActivityTypeAirborneKey"];
    }

    v6 = 17;
    if (sub_10000608C(a1, &v6, 1))
    {
      [v3 setObject:&__kCFBooleanTrue forKeyedSubscript:@"kCLLocationStreamingMessageMapMatching"];
    }

    if (*(a1 + 172))
    {
      [v3 setObject:&__kCFBooleanTrue forKeyedSubscript:@"kCLLocationStreamingMessageEmergencyEnablementKey"];
    }

    [(CLLocationStreamingMessage *)v2 setPayload:v3];
    [(CLLocationStreamingMessage *)v2 setPriority:300];
    v7[0] = IDSSendMessageOptionTimeoutKey;
    v4 = [NSNumber numberWithDouble:30.0];
    v7[1] = IDSSendMessageOptionForceLocalDeliveryKey;
    v7[2] = IDSSendMessageOptionEncryptPayloadKey;
    v8[0] = v4;
    v8[1] = &__kCFBooleanTrue;
    v8[2] = &__kCFBooleanTrue;
    v8[3] = &__kCFBooleanTrue;
    v7[3] = IDSSendMessageOptionRequireBluetoothKey;
    v7[4] = IDSSendMessageOptionQueueOneIdentifierKey;
    v8[4] = @"kCLLocationStreamingMessageTypeRequestLocation";
    [(CLLocationStreamingMessage *)v2 setIdsOptions:[NSDictionary dictionaryWithObjects:v8 forKeys:v7 count:5]];
    [*(a1 + 136) sendMessage:v2];
  }

  else
  {
    if (qword_1025D47B0 != -1)
    {
      sub_10188FE2C();
    }

    v5 = qword_1025D47B8;
    if (os_log_type_enabled(qword_1025D47B8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v6) = 0;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEFAULT, "#ilsa,sendLocationRequest,streaming is not allowed,blocking location request", &v6, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10188FF18();
    }
  }
}

uint64_t sub_10048ACF8(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (qword_1025D47B0 != -1)
  {
    sub_10188FE2C();
  }

  v2 = qword_1025D47B8;
  if (os_log_type_enabled(qword_1025D47B8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEFAULT, "Location unavailable timer fired. Triggering kNotificationLocationUnavailable notification", buf, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101890008();
  }

  v4 = 9;
  return (*(*v1 + 144))(v1, &v4, 1, 0xFFFFFFFFLL);
}

void sub_10048ADCC(uint64_t a1, uint64_t a2, unsigned __int8 *a3, uint64_t a4)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a4 + 32) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_1018900F8();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v11 = 1;
    v8 = _os_activity_create(dword_100000000, "CL: CLStreamedLocationProvider::onLocationStreamingControlStateNotification", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v8, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_10189010C();
    }

    v9 = qword_1025D47F8;
    if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68289538;
      v13 = 0;
      v14 = 2082;
      v15 = "";
      v16 = 2082;
      v17 = "activity";
      v18 = 2050;
      v19 = a4;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLStreamedLocationProvider::onLocationStreamingControlStateNotification, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v11 = 0;
  }

  sub_10048B0A0(a4, v6, v7, a3);
  if (v11 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

uint64_t sub_10048AF90(uint64_t a1)
{
  v2 = *(a1 + 120);
  if (v2)
  {
    [*(v2 + 16) unregister:*(v2 + 8) forNotification:42];
    v3 = *(a1 + 120);
    *(a1 + 120) = 0;
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }
  }

  [*(a1 + 200) invalidate];

  *(a1 + 200) = 0;
  [*(a1 + 208) invalidate];

  *(a1 + 208) = 0;
  *(a1 + 192) = 0;
  [0 invalidateAndReleaseProbeClients];
  [*(a1 + 184) invalidate];

  *(a1 + 184) = 0;
  [*(a1 + 152) invalidate];

  *(a1 + 152) = 0;
  [*(a1 + 160) invalidate];

  *(a1 + 160) = 0;
  [*(a1 + 136) retireClient:CLISP_ME_TOKEN];

  *(a1 + 136) = 0;

  return sub_1006A5ED0(a1);
}

void sub_10048B0A0(unsigned __int8 *a1, uint64_t a2, uint64_t a3, unsigned __int8 *a4)
{
  if (qword_1025D4650 != -1)
  {
    sub_101890134();
  }

  v6 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
  {
    v7 = a1[216];
    v8 = a4[1480];
    v9[0] = 67240448;
    v9[1] = v7;
    v10 = 1026;
    v11 = v8;
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEFAULT, "#ilsa,CLStreamedLocationProvider,onLocationStreamingControlStateNotification,allowStreaming,old,%{public}d,new,%{public}d", v9, 0xEu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101890148(a1, a4);
  }

  a1[216] = a4[1480];
}

uint64_t sub_10048B1A0(unsigned __int8 *a1)
{
  if (qword_1025D47B0 != -1)
  {
    sub_10188FE2C();
  }

  v2 = qword_1025D47B8;
  if (os_log_type_enabled(qword_1025D47B8, OS_LOG_TYPE_DEFAULT))
  {
    v3 = a1[216];
    v5[0] = 67240192;
    v5[1] = v3;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEFAULT, "#ilsa,CLStreamedLocationProvider,isLocationStreamingAllowed,%{public}d", v5, 8u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101890260(a1);
  }

  return a1[216];
}

uint64_t sub_10048B280(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  if (*a2 > 0x27)
  {
    goto LABEL_9;
  }

  if (((1 << v2) & 0x8000000238) != 0)
  {
    return 1;
  }

  if (((1 << v2) & 7) != 0)
  {
    sub_10048B54C(a1);
    return 1;
  }

  if (((1 << v2) & 0x30020000) == 0)
  {
LABEL_9:
    if (qword_1025D47B0 != -1)
    {
      sub_10188FE2C();
    }

    v4 = qword_1025D47B8;
    if (os_log_type_enabled(qword_1025D47B8, OS_LOG_TYPE_FAULT))
    {
      v5 = *a2;
      *buf = 68289795;
      v12 = 0;
      v13 = 2082;
      v14 = "";
      v15 = 2050;
      v16 = v5;
      v17 = 2082;
      v18 = "assert";
      v19 = 2081;
      v20 = "false";
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Unexpected registration, notification:%{public, location:CLLocationProvider_Type::Notification}lld, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x30u);
      if (qword_1025D47B0 != -1)
      {
        goto LABEL_19;
      }
    }

    while (1)
    {
      v6 = qword_1025D47B8;
      if (os_signpost_enabled(qword_1025D47B8))
      {
        v7 = *a2;
        *buf = 68289795;
        v12 = 0;
        v13 = 2082;
        v14 = "";
        v15 = 2050;
        v16 = v7;
        v17 = 2082;
        v18 = "assert";
        v19 = 2081;
        v20 = "false";
        _os_signpost_emit_with_name_impl(dword_100000000, v6, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Unexpected registration", "{msg%{public}.0s:Unexpected registration, notification:%{public, location:CLLocationProvider_Type::Notification}lld, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x30u);
        if (qword_1025D47B0 != -1)
        {
          sub_10188FE40();
        }
      }

      v8 = qword_1025D47B8;
      if (os_log_type_enabled(qword_1025D47B8, OS_LOG_TYPE_INFO))
      {
        v9 = *a2;
        *buf = 68289795;
        v12 = 0;
        v13 = 2082;
        v14 = "";
        v15 = 2050;
        v16 = v9;
        v17 = 2082;
        v18 = "assert";
        v19 = 2081;
        v20 = "false";
        _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Unexpected registration, notification:%{public, location:CLLocationProvider_Type::Notification}lld, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x30u);
      }

      abort_report_np();
LABEL_19:
      sub_10188FE40();
    }
  }

  if (*(a1 + 144))
  {
    sub_10048AA04(a1);
  }

  return 1;
}

void sub_10048B54C(uint64_t a1)
{
  if (*(a1 + 168) || (v3 = qword_1026563B0) == 0)
  {
    v2 = 0;
  }

  else
  {
    v2 = 0;
    do
    {
      v8[0] = *(v3 + 16);
      if (sub_10000608C(a1, v8, 1))
      {
        v2 = *(v3 + 20);
      }

      v3 = *v3;
    }

    while (v3);
  }

  v4 = *(a1 + 144);
  if (v4 != v2)
  {
    if (v4)
    {
      if (!v2)
      {
        [*(a1 + 160) setNextFireDelay:1.79769313e308];
        v8[0] = 0;
        (*(*a1 + 120))(a1, v8);
        v8[0] = 1;
        (*(*a1 + 120))(a1, v8);
        v8[0] = 2;
        (*(*a1 + 120))(a1, v8);
      }
    }

    else
    {
      [*(a1 + 160) setNextFireDelay:5.0];
    }

    if (*(a1 + 180) == 1)
    {
      sub_10048C4C0(a1, v2);
    }

    *(a1 + 144) = v2;
    v5 = 30.0;
    if (!v2)
    {
      v5 = 1.79769313e308;
    }

    [*(a1 + 152) setNextFireDelay:v5];
    if (qword_1025D47B0 != -1)
    {
      sub_10188FE40();
    }

    v6 = qword_1025D47B8;
    if (os_log_type_enabled(qword_1025D47B8, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 144);
      v8[0] = 68289282;
      v8[1] = 0;
      v9 = 2082;
      v10 = "";
      v11 = 2050;
      v12 = v7;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Changing requested granularity, granularity:%{public, location:CLLocationStreamingGranularity}lld}", v8, 0x1Cu);
    }

    sub_10048AA04(a1);
  }
}

uint64_t sub_10048B794(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  if (*a2 > 0x27)
  {
    goto LABEL_9;
  }

  if (((1 << v2) & 0x8000000238) != 0)
  {
    return 1;
  }

  if (((1 << v2) & 7) != 0)
  {
    sub_10048B54C(a1);
    return 1;
  }

  if (((1 << v2) & 0x30020000) == 0)
  {
LABEL_9:
    if (qword_1025D47B0 != -1)
    {
      sub_10188FE2C();
    }

    v4 = qword_1025D47B8;
    if (os_log_type_enabled(qword_1025D47B8, OS_LOG_TYPE_FAULT))
    {
      v5 = *a2;
      *buf = 68289795;
      v12 = 0;
      v13 = 2082;
      v14 = "";
      v15 = 2050;
      v16 = v5;
      v17 = 2082;
      v18 = "assert";
      v19 = 2081;
      v20 = "false";
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Unexpected registration, notification:%{public, location:CLLocationProvider_Type::Notification}lld, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x30u);
      if (qword_1025D47B0 != -1)
      {
        goto LABEL_19;
      }
    }

    while (1)
    {
      v6 = qword_1025D47B8;
      if (os_signpost_enabled(qword_1025D47B8))
      {
        v7 = *a2;
        *buf = 68289795;
        v12 = 0;
        v13 = 2082;
        v14 = "";
        v15 = 2050;
        v16 = v7;
        v17 = 2082;
        v18 = "assert";
        v19 = 2081;
        v20 = "false";
        _os_signpost_emit_with_name_impl(dword_100000000, v6, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Unexpected registration", "{msg%{public}.0s:Unexpected registration, notification:%{public, location:CLLocationProvider_Type::Notification}lld, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x30u);
        if (qword_1025D47B0 != -1)
        {
          sub_10188FE40();
        }
      }

      v8 = qword_1025D47B8;
      if (os_log_type_enabled(qword_1025D47B8, OS_LOG_TYPE_INFO))
      {
        v9 = *a2;
        *buf = 68289795;
        v12 = 0;
        v13 = 2082;
        v14 = "";
        v15 = 2050;
        v16 = v9;
        v17 = 2082;
        v18 = "assert";
        v19 = 2081;
        v20 = "false";
        _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Unexpected registration, notification:%{public, location:CLLocationProvider_Type::Notification}lld, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x30u);
      }

      abort_report_np();
LABEL_19:
      sub_10188FE40();
    }
  }

  if (*(a1 + 144))
  {
    sub_10048AA04(a1);
  }

  return 1;
}

void sub_10048BA60(uint64_t a1, uint64_t a2)
{
  v2 = (a2 + 96);
  if ((*(a2 + 96) & 0xFFFFFFF7) == 1)
  {
    if (qword_1025D47B0 != -1)
    {
      sub_10188FE2C();
    }

    v4 = qword_1025D47B8;
    if (os_log_type_enabled(qword_1025D47B8, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a2 + 4);
      v6 = *(a2 + 12);
      v7 = *(a2 + 20);
      v8 = *(a2 + 44);
      v9 = *(a2 + 60);
      v10 = *(a2 + 96);
      v11 = *(a2 + 28);
      v12 = *(a2 + 36);
      v13 = *(a2 + 144);
      v14 = *(a2 + 52);
      v15 = *(a2 + 68);
      v16 = *(a2 + 140);
      v17 = *(a2 + 76);
      v18 = 134548737;
      v19 = v5;
      v20 = 2053;
      v21 = v6;
      v22 = 2050;
      v23 = v7;
      v24 = 2049;
      v25 = v8;
      v26 = 2049;
      v27 = v9;
      v28 = 1026;
      v29 = v10;
      v30 = 2049;
      v31 = v11;
      v32 = 2050;
      v33 = v12;
      v34 = 2049;
      v35 = v13;
      v36 = 2049;
      v37 = v14;
      v38 = 2049;
      v39 = v15;
      v40 = 1025;
      v41 = v16;
      v42 = 2050;
      v43 = v17;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEFAULT, "@ClxStreamed, Send, ll, %{sensitive}.7f, %{sensitive}.7f, acc, %{public}.2f, speed, %{private}.1f, course, %{private}.1f, type, %{public}d, alt, %{private}.1f, altunc, %{public}.1f,ellipsoidalAlt,%{private}.1f,speedUnc,%{private}.1f,courseUnc,%{private}.1f,signalEnv,%{private}d,timestamp,%{public}.3f", &v18, 0x7Cu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101890484(a2, v2);
    }
  }
}

id sub_10048BBFC(uint64_t a1)
{
  if (*(a1 + 200))
  {
    if (qword_1025D47B0 != -1)
    {
      sub_10188FE2C();
    }

    v2 = qword_1025D47B8;
    if (os_log_type_enabled(qword_1025D47B8, OS_LOG_TYPE_ERROR))
    {
      *buf = 68289026;
      v8 = 0;
      v9 = 2082;
      v10 = "";
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:#Multiclient attempting to create retry discovery timer while another one still exists}", buf, 0x12u);
      if (qword_1025D47B0 != -1)
      {
        sub_10188FE40();
      }
    }

    v3 = qword_1025D47B8;
    if (os_signpost_enabled(qword_1025D47B8))
    {
      *buf = 68289026;
      v8 = 0;
      v9 = 2082;
      v10 = "";
      _os_signpost_emit_with_name_impl(dword_100000000, v3, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "#Multiclient attempting to create retry discovery timer while another one still exists", "{msg%{public}.0s:#Multiclient attempting to create retry discovery timer while another one still exists}", buf, 0x12u);
    }

    [*(a1 + 200) invalidate];

    *(a1 + 200) = 0;
  }

  v4 = [*(a1 + 40) newTimer];
  *(a1 + 200) = v4;
  [v4 setNextFireDelay:1.79769313e308];
  [*(a1 + 200) setFireInterval:5.0];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10048BDE0;
  v6[3] = &unk_102449A78;
  v6[4] = a1;
  return [*(a1 + 200) setHandler:v6];
}

id sub_10048BDE8(uint64_t a1)
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10048C648;
  v7[3] = &unk_1024565A0;
  v7[4] = a1;
  if (*(a1 + 181))
  {
    if (qword_1025D47B0 != -1)
    {
      sub_10188FE40();
    }

    v2 = qword_1025D47B8;
    if (os_log_type_enabled(qword_1025D47B8, OS_LOG_TYPE_DEFAULT))
    {
      buf = 68289026;
      v9 = 2082;
      v10 = "";
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#Multiclient looking for candidate streaming sources}", &buf, 0x12u);
    }

    v3 = *(a1 + 192);
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_10016C7E4;
    v6[3] = &unk_1024565C8;
    v6[4] = v7;
    v6[5] = a1;
    return [v3 findCandidateServersWithCompletion:v6];
  }

  else
  {
    if (qword_1025D47B0 != -1)
    {
      sub_10188FE40();
    }

    v5 = qword_1025D47B8;
    if (os_log_type_enabled(qword_1025D47B8, OS_LOG_TYPE_INFO))
    {
      buf = 68289026;
      v9 = 2082;
      v10 = "";
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_INFO, "{msg%{public}.0s:#Multiclient skipping discovery because first unlock has yet to happen, but will retry in case we get unlocked}", &buf, 0x12u);
    }

    return [*(a1 + 200) setNextFireDelay:5.0];
  }
}

id sub_10048BFD8(uint64_t a1)
{
  if (*(a1 + 208))
  {
    if (qword_1025D47B0 != -1)
    {
      sub_10188FE2C();
    }

    v2 = qword_1025D47B8;
    if (os_log_type_enabled(qword_1025D47B8, OS_LOG_TYPE_ERROR))
    {
      *buf = 68289026;
      v8 = 0;
      v9 = 2082;
      v10 = "";
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:#Multiclient attempting to create reassert timer while another one still exists}", buf, 0x12u);
      if (qword_1025D47B0 != -1)
      {
        sub_10188FE40();
      }
    }

    v3 = qword_1025D47B8;
    if (os_signpost_enabled(qword_1025D47B8))
    {
      *buf = 68289026;
      v8 = 0;
      v9 = 2082;
      v10 = "";
      _os_signpost_emit_with_name_impl(dword_100000000, v3, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "#Multiclient attempting to create reassert timer while another one still exists", "{msg%{public}.0s:#Multiclient attempting to create reassert timer while another one still exists}", buf, 0x12u);
    }

    [*(a1 + 208) invalidate];

    *(a1 + 208) = 0;
  }

  v4 = [*(a1 + 40) newTimer];
  *(a1 + 208) = v4;
  [v4 setNextFireDelay:1.79769313e308];
  [*(a1 + 208) setFireInterval:15.0];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10048C1BC;
  v6[3] = &unk_102449A78;
  v6[4] = a1;
  return [*(a1 + 208) setHandler:v6];
}

_DWORD *sub_10048C1BC(uint64_t a1)
{
  result = *(a1 + 32);
  if (result[36] == 3)
  {
    return sub_10048C1D8(result, 0);
  }

  return result;
}

id sub_10048C1D8(uint64_t a1, uint64_t a2)
{
  v4 = +[NSMutableDictionary dictionary];
  [v4 setObject:+[NSNumber numberWithUnsignedInteger:](NSNumber forKeyedSubscript:{"numberWithUnsignedInteger:", a2), @"kCLLocationStreamingMessageRapportLocationStreamingActionKey"}];
  if (sub_10048CBA8(a1))
  {
    v5 = [NSNumber numberWithBool:1];
  }

  else
  {
    v5 = &__kCFBooleanFalse;
  }

  [v4 setObject:v5 forKeyedSubscript:@"kCLLocationStreamingMessageIncludeMotionKey"];
  v13 = 28;
  if (sub_10000608C(a1, &v13, 1))
  {
    v6 = &__kCFBooleanTrue;
  }

  else
  {
    v6 = &__kCFBooleanFalse;
  }

  [v4 setObject:v6 forKeyedSubscript:@"kCLLocationStreamingMessageInFitnessSessionKey"];
  v13 = 29;
  if (sub_10000608C(a1, &v13, 1))
  {
    v7 = &__kCFBooleanTrue;
  }

  else
  {
    v7 = &__kCFBooleanFalse;
  }

  [v4 setObject:v7 forKeyedSubscript:@"kCLLocationStreamingMessageActivityTypeAirborneKey"];
  if (*(a1 + 172))
  {
    v8 = &__kCFBooleanTrue;
  }

  else
  {
    v8 = &__kCFBooleanFalse;
  }

  [v4 setObject:v8 forKeyedSubscript:@"kCLLocationStreamingMessageEmergencyEnablementKey"];
  v13 = 17;
  if (sub_10000608C(a1, &v13, 1))
  {
    v9 = &__kCFBooleanTrue;
  }

  else
  {
    v9 = &__kCFBooleanFalse;
  }

  [v4 setObject:v9 forKeyedSubscript:@"kCLLocationStreamingMessageMapMatching"];
  v10 = *(a1 + 184);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10048CC78;
  v12[3] = &unk_1024565E8;
  v12[4] = a2;
  return [v10 sendRequestID:@"com.apple.locationd.rapport.stream-request" request:v4 destinationID:RPDestinationIdentifierDirectPeer options:0 responseHandler:v12];
}

void sub_10048C3D4(uint64_t a1, uint64_t a2, _DWORD *a3, uint64_t a4)
{
  if (*a3 == 1 && *(a4 + 4) == 1)
  {
    if (qword_1025D47B0 != -1)
    {
      sub_10188FE2C();
    }

    v5 = qword_1025D47B8;
    if (os_log_type_enabled(qword_1025D47B8, OS_LOG_TYPE_DEFAULT))
    {
      v6[0] = 68289026;
      v6[1] = 0;
      v7 = 2082;
      v8 = "";
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#Multiclient got first unlock notification, now we can stream!}", v6, 0x12u);
    }

    *(a1 + 181) = 1;
  }
}

void sub_10048C4C0(id *a1, int a2)
{
  if (a2 == 3)
  {
    if (qword_1025D47B0 != -1)
    {
      sub_10188FE2C();
    }

    v3 = qword_1025D47B8;
    if (os_log_type_enabled(qword_1025D47B8, OS_LOG_TYPE_INFO))
    {
      v5 = 68289026;
      v6 = 0;
      v7 = 2082;
      v8 = "";
      _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_INFO, "{msg%{public}.0s:#Multiclient want to get best possible accuracy, and will request from nearby devices}", &v5, 0x12u);
    }

    sub_10048BBFC(a1);
    sub_10048BDE8(a1);
  }

  else
  {
    if (qword_1025D47B0 != -1)
    {
      sub_10188FE2C();
    }

    v4 = qword_1025D47B8;
    if (os_log_type_enabled(qword_1025D47B8, OS_LOG_TYPE_INFO))
    {
      v5 = 68289026;
      v6 = 0;
      v7 = 2082;
      v8 = "";
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_INFO, "{msg%{public}.0s:#Multiclient no longer need to stream because granularity no longer Best}", &v5, 0x12u);
    }

    [a1[25] invalidate];

    a1[25] = 0;
    [a1[24] invalidateAndReleaseProbeClients];
    [a1[23] invalidate];

    a1[23] = 0;
  }
}

BOOL sub_10048C648(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  if (qword_1025D47B0 != -1)
  {
    sub_10188FE2C();
  }

  v4 = qword_1025D47B8;
  if (os_log_type_enabled(qword_1025D47B8, OS_LOG_TYPE_INFO))
  {
    *buf = 68289283;
    v14 = 0;
    v15 = 2082;
    v16 = "";
    v17 = 2081;
    v18 = [a2 UTF8String];
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_INFO, "{msg%{public}.0s:#Multiclient registering a server, effectiveID:%{private, location:escape_only}s}", buf, 0x1Cu);
  }

  v5 = [*(v3 + 192) deviceWithEffectiveID:a2];
  if (v5)
  {
    [*(v3 + 200) invalidate];

    *(v3 + 200) = 0;
    v6 = *(v3 + 40);
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10048C8DC;
    v12[3] = &unk_102449BC0;
    v12[4] = v5;
    v12[5] = v3;
    [v6 afterInterval:v12 async:1.0];
  }

  else
  {
    if (qword_1025D47B0 != -1)
    {
      sub_10188FE40();
    }

    v7 = qword_1025D47B8;
    if (os_log_type_enabled(qword_1025D47B8, OS_LOG_TYPE_ERROR))
    {
      v8 = [a2 UTF8String];
      *buf = 68289283;
      v14 = 0;
      v15 = 2082;
      v16 = "";
      v17 = 2081;
      v18 = v8;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:#Multiclient failed to find any already-discovered device with ID, id:%{private, location:escape_only}s}", buf, 0x1Cu);
      if (qword_1025D47B0 != -1)
      {
        sub_10188FE40();
      }
    }

    v9 = qword_1025D47B8;
    if (os_signpost_enabled(qword_1025D47B8))
    {
      v10 = [a2 UTF8String];
      *buf = 68289283;
      v14 = 0;
      v15 = 2082;
      v16 = "";
      v17 = 2081;
      v18 = v10;
      _os_signpost_emit_with_name_impl(dword_100000000, v9, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "#Multiclient failed to find any already-discovered device with ID", "{msg%{public}.0s:#Multiclient failed to find any already-discovered device with ID, id:%{private, location:escape_only}s}", buf, 0x1Cu);
    }
  }

  return v5 != 0;
}

void sub_10048C8E8(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 184))
  {
    if (qword_1025D47B0 != -1)
    {
      sub_10188FE2C();
    }

    v2 = qword_1025D47B8;
    if (os_log_type_enabled(qword_1025D47B8, OS_LOG_TYPE_ERROR))
    {
      buf = 68289026;
      v12 = 2082;
      v13 = "";
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:#Multiclient attempting to re-register streaming link, but we already have one}", &buf, 0x12u);
      if (qword_1025D47B0 != -1)
      {
        sub_10188FE40();
      }
    }

    v3 = qword_1025D47B8;
    if (os_signpost_enabled(qword_1025D47B8))
    {
      buf = 68289026;
      v12 = 2082;
      v13 = "";
      _os_signpost_emit_with_name_impl(dword_100000000, v3, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "#Multiclient attempting to re-register streaming link, but we already have one", "{msg%{public}.0s:#Multiclient attempting to re-register streaming link, but we already have one}", &buf, 0x12u);
    }
  }

  else
  {
    if (!a2)
    {
      sub_101890634();
    }

    *(a1 + 184) = objc_alloc_init(RPCompanionLinkClient);
    [*(a1 + 184) setDispatchQueue:{objc_msgSend(*(a1 + 40), "queue")}];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10048CFD4;
    v10[3] = &unk_102449A78;
    v10[4] = a1;
    [*(a1 + 184) setInvalidationHandler:v10];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10048D0B4;
    v9[3] = &unk_102449A78;
    v9[4] = a1;
    [*(a1 + 184) setDisconnectHandler:v9];
    sub_10001A3E8();
    if (sub_100717D04())
    {
      [*(a1 + 184) setFlags:1];
      v6 = 0x380000103C04;
    }

    else
    {
      v6 = 65538;
    }

    [*(a1 + 184) setControlFlags:v6];
    [*(a1 + 184) setDestinationDevice:a2];
    v7 = *(a1 + 184);
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_10048D1A8;
    v8[3] = &unk_102449B88;
    v8[4] = a1;
    [v7 activateWithCompletion:v8];
  }
}

uint64_t sub_10048CBA8(uint64_t a1)
{
  v1 = qword_1026563B0;
  if (!qword_1026563B0)
  {
    return 0;
  }

  while (1)
  {
    v9 = *(v1 + 16);
    v10 = &v9;
    v3 = sub_100024014(a1 + 56, &v9);
    v4 = v3[5];
    if (v4 != v3 + 6)
    {
      break;
    }

LABEL_10:
    v1 = *v1;
    if (!v1)
    {
      return 0;
    }
  }

  while ((*(v4 + 57) & 1) == 0)
  {
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
    if (v6 == v3 + 6)
    {
      goto LABEL_10;
    }
  }

  return 1;
}

void sub_10048CC78(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (a4 || ![a2 objectForKeyedSubscript:@"kCLLocationStreamingMessageRapportLocationStreamingActionKey"])
  {
    if (qword_1025D47B0 != -1)
    {
      sub_10188FE2C();
    }

    v6 = qword_1025D47B8;
    if (os_log_type_enabled(qword_1025D47B8, OS_LOG_TYPE_ERROR))
    {
      v17 = 68289539;
      v18 = 0;
      v19 = 2082;
      v20 = "";
      v21 = 2114;
      v22 = a4;
      v23 = 2113;
      v24 = a2;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:#Multiclient failed to send streaming action event, error:%{public, location:escape_only}@, resp:%{private, location:escape_only}@}", &v17, 0x26u);
      if (qword_1025D47B0 != -1)
      {
        sub_10188FE40();
      }
    }

    v7 = qword_1025D47B8;
    if (os_signpost_enabled(qword_1025D47B8))
    {
      v17 = 68289539;
      v18 = 0;
      v19 = 2082;
      v20 = "";
      v21 = 2114;
      v22 = a4;
      v23 = 2113;
      v24 = a2;
      v8 = "#Multiclient failed to send streaming action event";
      v9 = "{msg%{public}.0s:#Multiclient failed to send streaming action event, error:%{public, location:escape_only}@, resp:%{private, location:escape_only}@}";
      v10 = v7;
      v11 = 38;
LABEL_9:
      _os_signpost_emit_with_name_impl(dword_100000000, v10, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, v8, v9, &v17, v11);
    }
  }

  else
  {
    v13 = [objc_msgSend(a2 objectForKeyedSubscript:{@"kCLLocationStreamingMessageRapportLocationStreamingActionKey", "intValue"}];
    if (*(a1 + 32) == v13)
    {
      if (qword_1025D47B0 != -1)
      {
        sub_10188FE2C();
      }

      v14 = qword_1025D47B8;
      if (os_log_type_enabled(qword_1025D47B8, OS_LOG_TYPE_INFO))
      {
        v17 = 68289282;
        v18 = 0;
        v19 = 2082;
        v20 = "";
        v21 = 2050;
        v22 = v13;
        _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_INFO, "{msg%{public}.0s:#Multiclient action OK, action:%{public, location:CLLocationMultiStreamingAction}lld}", &v17, 0x1Cu);
      }

      return;
    }

    if (qword_1025D47B0 != -1)
    {
      sub_10188FE2C();
    }

    v15 = qword_1025D47B8;
    if (os_log_type_enabled(qword_1025D47B8, OS_LOG_TYPE_ERROR))
    {
      v17 = 68289282;
      v18 = 0;
      v19 = 2082;
      v20 = "";
      v21 = 2050;
      v22 = v13;
      _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:#Multiclient unexpected action returned in response to request, action:%{public, location:CLLocationMultiStreamingAction}lld}", &v17, 0x1Cu);
      if (qword_1025D47B0 != -1)
      {
        sub_10188FE40();
      }
    }

    v16 = qword_1025D47B8;
    if (os_signpost_enabled(qword_1025D47B8))
    {
      v17 = 68289282;
      v18 = 0;
      v19 = 2082;
      v20 = "";
      v21 = 2050;
      v22 = v13;
      v8 = "#Multiclient unexpected action returned in response to request";
      v9 = "{msg%{public}.0s:#Multiclient unexpected action returned in response to request, action:%{public, location:CLLocationMultiStreamingAction}lld}";
      v10 = v16;
      v11 = 28;
      goto LABEL_9;
    }
  }
}

id sub_10048CFD4(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (qword_1025D47B0 != -1)
  {
    sub_10188FE2C();
  }

  v2 = qword_1025D47B8;
  if (os_log_type_enabled(qword_1025D47B8, OS_LOG_TYPE_DEFAULT))
  {
    v4[0] = 68289026;
    v4[1] = 0;
    v5 = 2082;
    v6 = "";
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#Multiclient invalidating server streaming link}", v4, 0x12u);
  }

  sub_10048C1D8(v1, 1);
  return [*(v1 + 192) invalidateAndReleaseProbeClients];
}

uint64_t sub_10048D0B4(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (qword_1025D47A0 != -1)
  {
    sub_1018907C8();
  }

  v2 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
  {
    v4[0] = 68289026;
    v4[1] = 0;
    v5 = 2082;
    v6 = "";
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#Multiclient streamer got disconnected, invalidating connection and setup new discovery.}", v4, 0x12u);
  }

  [*(v1 + 192) invalidateAndReleaseProbeClients];
  [*(v1 + 184) invalidate];

  *(v1 + 184) = 0;
  return sub_10048C4C0(v1, *(v1 + 144));
}

void sub_10048D1A8(uint64_t a1, void *a2)
{
  if (a2)
  {
    if (qword_1025D47B0 != -1)
    {
      sub_10188FE2C();
    }

    v3 = qword_1025D47B8;
    if (os_log_type_enabled(qword_1025D47B8, OS_LOG_TYPE_ERROR))
    {
      *buf = 68289282;
      v19 = 0;
      v20 = 2082;
      v21 = "";
      v22 = 2114;
      v23 = a2;
      _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:#Multiclient failed to activate streaming link, error:%{public, location:escape_only}@}", buf, 0x1Cu);
      if (qword_1025D47B0 != -1)
      {
        sub_10188FE40();
      }
    }

    v4 = qword_1025D47B8;
    if (os_signpost_enabled(qword_1025D47B8))
    {
      *buf = 68289282;
      v19 = 0;
      v20 = 2082;
      v21 = "";
      v22 = 2114;
      v23 = a2;
      _os_signpost_emit_with_name_impl(dword_100000000, v4, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "#Multiclient failed to activate streaming link", "{msg%{public}.0s:#Multiclient failed to activate streaming link, error:%{public, location:escape_only}@}", buf, 0x1Cu);
    }
  }

  else
  {
    v5 = *(a1 + 32);
    if (qword_1025D47B0 != -1)
    {
      sub_10188FE2C();
    }

    v6 = qword_1025D47B8;
    if (os_log_type_enabled(qword_1025D47B8, OS_LOG_TYPE_INFO))
    {
      v7 = [objc_msgSend(objc_msgSend(*(v5 + 184) "destinationDevice")];
      *buf = 68289283;
      v19 = 0;
      v20 = 2082;
      v21 = "";
      v22 = 2081;
      v23 = v7;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_INFO, "{msg%{public}.0s:#Multiclient streaming client good to go!, remoteID:%{private, location:escape_only}s}", buf, 0x1Cu);
    }

    sub_10001A3E8();
    if (sub_100717D04())
    {
      v16[0] = RPOptionInterest;
      v16[1] = RPOptionAllowUnauthenticated;
      v17[0] = &__kCFBooleanTrue;
      v17[1] = &__kCFBooleanTrue;
      v8 = v17;
      v9 = v16;
      v10 = 2;
    }

    else
    {
      v14 = RPOptionInterest;
      v15 = &__kCFBooleanTrue;
      v8 = &v15;
      v9 = &v14;
      v10 = 1;
    }

    v11 = [NSDictionary dictionaryWithObjects:v8 forKeys:v9 count:v10];
    v12 = *(v5 + 184);
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_10048D4A0;
    v13[3] = &unk_102456608;
    v13[4] = v5;
    [v12 registerEventID:@"com.apple.locationd.rapport.stream-event" options:v11 handler:v13];
    sub_10048C1D8(v5, 0);
    sub_10048BFD8(v5);
    [*(v5 + 208) setNextFireDelay:15.0];
  }
}

void sub_10048D4A0(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  if (qword_1025D47B0 != -1)
  {
    sub_10188FE2C();
  }

  v4 = qword_1025D47B8;
  if (os_log_type_enabled(qword_1025D47B8, OS_LOG_TYPE_INFO))
  {
    v5[0] = 68289283;
    v5[1] = 0;
    v6 = 2082;
    v7 = "";
    v8 = 2113;
    v9 = a2;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_INFO, "{msg%{public}.0s:#Multiclient got a location from our client!, message:%{private, location:escape_only}@}", v5, 0x1Cu);
  }

  sub_10048D590(v3, a2);
}

void sub_10048D590(id *a1, void *a2)
{
  v4 = [objc_msgSend([NSKeyedUnarchiver alloc] initForReadingFromData:objc_msgSend(a2 error:{"objectForKeyedSubscript:", @"kCLLocationStreamingMessageLocationKey", 0), "decodeObjectOfClass:forKey:", objc_opt_class(), @"kCLLocationStreamingMessageLocationKey"}];
  v5 = [a2 objectForKeyedSubscript:@"kCLLocationStreamingMessageInMotionKey"];
  v6 = [a2 objectForKeyedSubscript:@"kCLLocationStreamingMessageLocationPrivateKey"];
  v7 = [a2 objectForKeyedSubscript:@"kCLLocationStreamingMessageLocationInternalKey"];
  if (v4)
  {
    v8 = v7;
    [v4 clientLocation];
    v9 = *&__src[88];
    [v4 clientLocation];
    if (*&__src[88] <= 0.0)
    {
      v10 = 15.0;
    }

    else
    {
      [v4 clientLocation];
      if (*&__src[96] == 1 || ([v4 clientLocation], v28 == 9))
      {
        if (*&__src[88] > 4.0)
        {
          v9 = 4.0;
        }
      }

      [v4 clientLocation];
      v10 = v9 + *&__src[76] - CFAbsoluteTimeGetCurrent();
    }

    if (v10 > 0.0)
    {
      sub_100021AFC(v27);
      v16 = [v4 clientLocation];
      v28 = *&__src[96];
      v29 = *&__src[112];
      *v30 = *&__src[128];
      *&v30[12] = *&__src[140];
      *&v27[32] = *&__src[32];
      *&v27[48] = *&__src[48];
      *&v27[64] = *&__src[64];
      *&v27[80] = *&__src[80];
      *v27 = *__src;
      *&v27[16] = *&__src[16];
      if (v5)
      {
        v16 = [v5 BOOLValue];
        if (v16)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }
      }

      else
      {
        v17 = 0;
      }

      v42 = v17;
      if (v6)
      {
        v20 = [[CLStreamedLocationPrivate alloc] initWithData:v6];
        if (v20)
        {
          [(CLStreamedLocationPrivate *)v20 daemonLocationPrivate];
          v21 = v62;
        }

        else
        {
          bzero(__src, 0x288uLL);
          v21 = 0uLL;
        }

        v26 = v21;
        memcpy(v31, __src, 0x201uLL);
        v62 = 0u;
        v16 = *(&v32 + 1);
        v32 = v26;
        if (!v16)
        {
          v37 = v67;
          v38[0] = v68[0];
          *(v38 + 9) = *(v68 + 9);
          v33 = v63;
          v34 = v64;
          v35 = v65;
          v36 = v66;
          if (!v8)
          {
            goto LABEL_33;
          }

          goto LABEL_32;
        }

        sub_100008080(v16);
        v16 = *(&v62 + 1);
        v37 = v67;
        v38[0] = v68[0];
        *(v38 + 9) = *(v68 + 9);
        v33 = v63;
        v34 = v64;
        v35 = v65;
        v36 = v66;
        if (*(&v62 + 1))
        {
          sub_100008080(*(&v62 + 1));
        }
      }

      if (!v8)
      {
LABEL_33:
        v31[88] = 2;
        sub_10048BA60(v16, v27);
        *__src = 9;
        (*(*a1 + 15))(a1, __src);
        if (qword_1025D4620 != -1)
        {
          sub_1018907DC();
        }

        v23 = qword_1025D4628;
        if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
        {
          *__src = 134548737;
          *&__src[4] = *&v27[4];
          *&__src[12] = 2053;
          *&__src[14] = *&v27[12];
          *&__src[22] = 2050;
          *&__src[24] = *&v27[20];
          *&__src[32] = 2049;
          *&__src[34] = *&v27[44];
          *&__src[42] = 2049;
          *&__src[44] = *&v27[60];
          *&__src[52] = 1026;
          *&__src[54] = v28;
          *&__src[58] = 2049;
          *&__src[60] = *&v27[28];
          *&__src[68] = 2050;
          *&__src[70] = *&v27[36];
          *&__src[78] = 2049;
          *&__src[80] = *&v30[16];
          *&__src[88] = 2049;
          *&__src[90] = *&v27[52];
          *&__src[98] = 2049;
          *&__src[100] = *&v27[68];
          *&__src[108] = 1025;
          *&__src[110] = *&v30[12];
          *&__src[114] = 2050;
          *&__src[116] = *&v27[76];
          _os_log_impl(dword_100000000, v23, OS_LOG_TYPE_DEFAULT, "@ClxStreamed, Fix, 1, ll, %{sensitive}.7f, %{sensitive}.7f, acc, %{public}.2f, speed, %{private}.1f, course, %{private}.1f, type, %{public}d, alt, %{private}.1f, altunc, %{public}.1f,ellipsoidalAlt,%{private}.1f,speedUnc,%{private}.1f,courseUnc,%{private}.1f,signalEnv,%{private}d,timestamp,%{public}.3f", __src, 0x7Cu);
        }

        if (sub_10000A100(121, 2))
        {
          sub_101890804(__src);
          *buf = 134548737;
          *v46 = *&v27[4];
          *&v46[8] = 2053;
          *&v46[10] = *&v27[12];
          *&v46[18] = 2050;
          *&v46[20] = *&v27[20];
          *&v46[28] = 2049;
          *&v46[30] = *&v27[44];
          *&v46[38] = 2049;
          *&v46[40] = *&v27[60];
          *&v46[48] = 1026;
          v47 = v28;
          v48 = 2049;
          v49 = *&v27[28];
          v50 = 2050;
          v51 = *&v27[36];
          v52 = 2049;
          v53 = *&v30[16];
          v54 = 2049;
          *v55 = *&v27[52];
          *&v55[8] = 2049;
          v56 = *&v27[68];
          v57 = 1025;
          v58 = *&v30[12];
          v59 = 2050;
          v60 = *&v27[76];
          v25 = _os_log_send_and_compose_impl();
          sub_100152C7C("Generic", 1, 0, 2, "void CLStreamedLocationProvider::handleLocationMessage(NSDictionary *)", "%s\n", v25);
          if (v25 != __src)
          {
            free(v25);
          }
        }

        *__src = 0;
        (*(*a1 + 19))(a1, __src, v27, 1, 0xFFFFFFFFLL, 0);
        [v4 clientLocation];
        if (*&__src[96] == 1)
        {
          v24 = 4.0;
        }

        else
        {
          [v4 clientLocation];
          v24 = 5.0;
          if (*&v55[6] == 9)
          {
            v24 = 4.0;
          }
        }

        if (v10 > v24)
        {
          v24 = v10;
        }

        [a1[20] setNextFireDelay:v24];

        if (v43)
        {
          sub_100008080(v43);
        }

        if (v41 < 0)
        {
          operator delete(__p);
        }

        if (v39)
        {
          sub_100008080(v39);
        }

        if (*(&v32 + 1))
        {
          sub_100008080(*(&v32 + 1));
        }

        return;
      }

LABEL_32:
      v22 = [[CLStreamedLocationInternal alloc] initWithData:v8];
      [(CLStreamedLocationInternal *)v22 mergeIntoDaemonLocation:v27];

      goto LABEL_33;
    }

    if (qword_1025D47B0 != -1)
    {
      sub_10188FE40();
    }

    v18 = qword_1025D47B8;
    if (os_log_type_enabled(qword_1025D47B8, OS_LOG_TYPE_DEFAULT))
    {
      [v4 clientLocation];
      v19 = *&__src[76];
      [v4 clientLocation];
      *buf = 68290050;
      *&v46[4] = 2082;
      *v46 = 0;
      *&v46[6] = "";
      *&v46[14] = 2050;
      *&v46[16] = v19;
      *&v46[24] = 2050;
      *&v46[26] = v9;
      *&v46[34] = 2050;
      *&v46[36] = v10;
      *&v46[44] = 1026;
      *&v46[46] = v28;
      v12 = "{msg%{public}.0s:Dropping expired location, timestamp:%{public}f, timeout:%{public}f, timeLeft:%{public}f, type:%{public}d}";
      v13 = buf;
      v14 = v18;
      v15 = 54;
      goto LABEL_22;
    }
  }

  else
  {
    if (qword_1025D47B0 != -1)
    {
      sub_10188FE2C();
    }

    v11 = qword_1025D47B8;
    if (os_log_type_enabled(qword_1025D47B8, OS_LOG_TYPE_DEFAULT))
    {
      *__src = 68289283;
      *&__src[8] = 2082;
      *&__src[10] = "";
      *&__src[18] = 2113;
      *&__src[20] = a2;
      v12 = "{msg%{public}.0s:Missing data, payload:%{private, location:escape_only}@}";
      v13 = __src;
      v14 = v11;
      v15 = 28;
LABEL_22:
      _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_DEFAULT, v12, v13, v15);
    }
  }
}

void sub_10048DD98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_100311054(va);
  _Unwind_Resume(a1);
}

void sub_10048E4D0(id a1, RPCompanionLinkDevice *a2)
{
  if ([(RPCompanionLinkDevice *)a2 model])
  {
    v3 = [-[RPCompanionLinkDevice model](a2 "model")];
  }

  else
  {
    v3 = "Unknown Model";
  }

  if ([(RPCompanionLinkDevice *)a2 name])
  {
    v4 = [-[RPCompanionLinkDevice name](a2 "name")];
  }

  else
  {
    v4 = "Unknown Name";
  }

  if (qword_1025D47B0 != -1)
  {
    sub_10188FE2C();
  }

  v5 = qword_1025D47B8;
  if (os_log_type_enabled(qword_1025D47B8, OS_LOG_TYPE_DEBUG))
  {
    v6 = ([(RPCompanionLinkDevice *)a2 statusFlags]>> 24) & 1;
    if (a2)
    {
      [(RPCompanionLinkDevice *)a2 operatingSystemVersion];
      v7 = v13;
      [(RPCompanionLinkDevice *)a2 operatingSystemVersion];
      v8 = v11;
    }

    else
    {
      v8 = 0;
      v7 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v10 = 0;
      v11 = 0;
      v12 = 0;
    }

    v9 = [-[RPCompanionLinkDevice effectiveIdentifier](a2 effectiveIdentifier];
    *buf = 68290563;
    v17 = 0;
    v18 = 2082;
    v19 = "";
    v20 = 2082;
    v21 = v3;
    v22 = 2081;
    v23 = v4;
    v24 = 1026;
    v25 = v6;
    v26 = 2050;
    v27 = v7;
    v28 = 2050;
    v29 = v8;
    v30 = 2082;
    v31 = v9;
    _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#Multiclient listener found nearby device, model:%{public, location:escape_only}s, name:%{private, location:escape_only}s, USB?:%{public}hhd, major:%{public}ld, minor:%{public}ld, effectiveID:%{public, location:escape_only}s}", buf, 0x4Au);
  }
}

void sub_10048E698(id a1, RPCompanionLinkDevice *a2)
{
  if ([(RPCompanionLinkDevice *)a2 model])
  {
    v3 = [-[RPCompanionLinkDevice model](a2 "model")];
  }

  else
  {
    v3 = "Unknown Model";
  }

  if ([(RPCompanionLinkDevice *)a2 name])
  {
    v4 = [-[RPCompanionLinkDevice name](a2 "name")];
  }

  else
  {
    v4 = "Unknown Name";
  }

  if (qword_1025D47B0 != -1)
  {
    sub_10188FE2C();
  }

  v5 = qword_1025D47B8;
  if (os_log_type_enabled(qword_1025D47B8, OS_LOG_TYPE_DEBUG))
  {
    v6[0] = 68289795;
    v6[1] = 0;
    v7 = 2082;
    v8 = "";
    v9 = 2082;
    v10 = v3;
    v11 = 2081;
    v12 = v4;
    v13 = 2082;
    v14 = [-[RPCompanionLinkDevice effectiveIdentifier](a2 "effectiveIdentifier")];
    _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#Multiclient listener lost contact with nearby device, model:%{public, location:escape_only}s, name:%{private, location:escape_only}s, effectiveID:%{public, location:escape_only}s}", v6, 0x30u);
  }
}

void sub_10048E7E4(id a1, NSError *a2)
{
  if (a2)
  {
    if (qword_1025D47B0 != -1)
    {
      sub_10188FE2C();
    }

    v3 = qword_1025D47B8;
    if (os_log_type_enabled(qword_1025D47B8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 68289282;
      v10 = 0;
      v11 = 2082;
      v12 = "";
      v13 = 2114;
      v14 = a2;
      v4 = "{msg%{public}.0s:#Multiclient failed to setup nearby device listener, error:%{public, location:escape_only}@}";
      v5 = v3;
      v6 = OS_LOG_TYPE_DEFAULT;
      v7 = 28;
LABEL_10:
      _os_log_impl(dword_100000000, v5, v6, v4, &v9, v7);
    }
  }

  else
  {
    if (qword_1025D47B0 != -1)
    {
      sub_10188FE2C();
    }

    v8 = qword_1025D47B8;
    if (os_log_type_enabled(qword_1025D47B8, OS_LOG_TYPE_INFO))
    {
      v9 = 68289026;
      v10 = 0;
      v11 = 2082;
      v12 = "";
      v4 = "{msg%{public}.0s:#Multiclient nearby device listener ready}";
      v5 = v8;
      v6 = OS_LOG_TYPE_INFO;
      v7 = 18;
      goto LABEL_10;
    }
  }
}

void sub_10048F630(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    if (qword_1025D47B0 != -1)
    {
      sub_10188FE2C();
    }

    v2 = qword_1025D47B8;
    if (os_log_type_enabled(qword_1025D47B8, OS_LOG_TYPE_ERROR))
    {
      *buf = 68289026;
      v12 = 0;
      v13 = 2082;
      v14 = "";
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:#Multiclient probe client failed to register}", buf, 0x12u);
      if (qword_1025D47B0 != -1)
      {
        sub_10188FE40();
      }
    }

    v3 = qword_1025D47B8;
    if (os_signpost_enabled(qword_1025D47B8))
    {
      *buf = 68289026;
      v12 = 0;
      v13 = 2082;
      v14 = "";
      _os_signpost_emit_with_name_impl(dword_100000000, v3, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "#Multiclient probe client failed to register", "{msg%{public}.0s:#Multiclient probe client failed to register}", buf, 0x12u);
    }
  }

  else
  {
    v5 = [objc_msgSend(*(a1 + 32) "destinationDevice")];
    v6 = [objc_msgSend(*(a1 + 32) "destinationDevice")];
    v7 = [*(a1 + 40) requestQ];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_10048F818;
    v8[3] = &unk_1024566F8;
    v8[4] = v5;
    v8[5] = v6;
    v8[6] = *(a1 + 32);
    v9 = *(a1 + 48);
    v10 = *(a1 + 64);
    dispatch_async(v7, v8);
  }
}

id sub_10048F818(uint64_t a1)
{
  if (qword_1025D47B0 != -1)
  {
    sub_10188FE2C();
  }

  v2 = qword_1025D47B8;
  if (os_log_type_enabled(qword_1025D47B8, OS_LOG_TYPE_INFO))
  {
    v3 = [*(a1 + 32) UTF8String];
    v4 = [*(a1 + 40) UTF8String];
    *buf = 68289539;
    v13 = 0;
    v14 = 2082;
    v15 = "";
    v16 = 2082;
    v17 = v3;
    v18 = 2081;
    v19 = v4;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_INFO, "{msg%{public}.0s:#Multiclient probing potential server, remote:%{public, location:escape_only}s, name:%{private, location:escape_only}s}", buf, 0x26u);
  }

  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10048F990;
  v9[3] = &unk_1024566D0;
  v10 = vextq_s8(*(a1 + 32), *(a1 + 32), 8uLL);
  v7 = *(a1 + 64);
  v11 = *(a1 + 72);
  return [v5 sendRequestID:@"com.apple.locationd.rapport.availability-interest" request:v6 destinationID:RPDestinationIdentifierDirectPeer options:v7 responseHandler:v9];
}

void sub_10048F990(id *a1, uint64_t a2, void *a3, void *a4)
{
  if (a4)
  {
    if (qword_1025D47B0 != -1)
    {
      sub_10188FE2C();
    }

    v5 = qword_1025D47B8;
    if (os_log_type_enabled(qword_1025D47B8, OS_LOG_TYPE_ERROR))
    {
      v16 = 68289282;
      v17 = 0;
      v18 = 2082;
      v19 = "";
      v20 = 2082;
      v21 = [objc_msgSend(a4 "description")];
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:#Multiclient error invoking interest request, error:%{public, location:escape_only}s}", &v16, 0x1Cu);
      if (qword_1025D47B0 != -1)
      {
        sub_10188FE40();
      }
    }

    v6 = qword_1025D47B8;
    if (os_signpost_enabled(qword_1025D47B8))
    {
      v7 = [objc_msgSend(a4 "description")];
      v16 = 68289282;
      v17 = 0;
      v18 = 2082;
      v19 = "";
      v20 = 2082;
      v21 = v7;
      _os_signpost_emit_with_name_impl(dword_100000000, v6, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "#Multiclient error invoking interest request", "{msg%{public}.0s:#Multiclient error invoking interest request, error:%{public, location:escape_only}s}", &v16, 0x1Cu);
    }
  }

  else
  {
    v11 = [a3 objectForKeyedSubscript:RPOptionSenderID];
    v12 = [NSMutableDictionary dictionaryWithDictionary:a2];
    [(NSMutableDictionary *)v12 addEntriesFromDictionary:a3];
    if (qword_1025D47B0 != -1)
    {
      sub_10188FE2C();
    }

    v13 = qword_1025D47B8;
    if (os_log_type_enabled(qword_1025D47B8, OS_LOG_TYPE_INFO))
    {
      v14 = [a1[4] UTF8String];
      v15 = [a1[5] UTF8String];
      v16 = 68289795;
      v17 = 0;
      v18 = 2082;
      v19 = "";
      v20 = 2081;
      v21 = v14;
      v22 = 2082;
      v23 = v15;
      v24 = 2114;
      v25 = v12;
      _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_INFO, "{msg%{public}.0s:#Multiclient received availability response, name:%{private, location:escape_only}s, remote:%{public, location:escape_only}s, resp:%{public, location:escape_only}@}", &v16, 0x30u);
    }

    [a1[6] setObject:v12 forKeyedSubscript:v11];
  }
}

void sub_10048FD50(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  operator delete();
}

uint64_t sub_10048FD80(void *a1)
{
  *a1 = off_102456468;
  v2 = a1[16];
  a1[16] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = a1[15];
  a1[15] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return sub_1006A5E8C(a1);
}

void sub_10048FE30(void *a1)
{
  *a1 = off_102456468;
  v2 = a1[16];
  a1[16] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = a1[15];
  a1[15] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  sub_1006A5E8C(a1);

  operator delete();
}

void sub_10048FF84(uint64_t a1)
{
  if (*(a1 + 108) == 1)
  {
    if (qword_1025D47F0 != -1)
    {
      sub_1018900F8();
    }

    v2 = qword_1025D47F8;
    if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
    {
      v3 = (a1 + 8);
      if (*(a1 + 31) < 0)
      {
        v3 = *v3;
      }

      *buf = 136315138;
      v20 = v3;
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEBUG, "%s; already shutdown; not listing clients", buf, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101890B90(a1);
    }
  }

  else
  {
    if (qword_1025D47F0 != -1)
    {
      sub_1018900F8();
    }

    v4 = qword_1025D47F8;
    if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
    {
      v5 = (a1 + 8);
      if (*(a1 + 31) < 0)
      {
        v5 = *v5;
      }

      v6 = *(a1 + 96);
      *buf = 136315394;
      v20 = v5;
      v21 = 2048;
      v22[0] = v6;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "%s; listing clients, num clients: %zu", buf, 0x16u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101890A70(a1);
    }

    v7 = *(a1 + 80);
    if (v7 != (a1 + 88))
    {
      do
      {
        v8 = v7[5];
        if (v8 != v7 + 6)
        {
          do
          {
            if (qword_1025D47F0 != -1)
            {
              sub_10189010C();
            }

            v9 = qword_1025D47F8;
            if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
            {
              v10 = (a1 + 8);
              if (*(a1 + 31) < 0)
              {
                v10 = *(a1 + 8);
              }

              v11 = *(v7 + 8);
              v12 = *(v8 + 7);
              *buf = 136315650;
              v20 = v10;
              v21 = 1024;
              LODWORD(v22[0]) = v11;
              WORD2(v22[0]) = 1024;
              *(v22 + 6) = v12;
              _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "%s; clients, id: %d, notification: %d", buf, 0x18u);
            }

            if (sub_10000A100(121, 2))
            {
              bzero(buf, 0x65CuLL);
              if (qword_1025D47F0 != -1)
              {
                sub_10189010C();
              }

              v16 = _os_log_send_and_compose_impl();
              sub_100152C7C("Generic", 1, 0, 2, "virtual void CLNotifier<CLLocationProvider_Type::Notification, CLLocationProvider_Type::NotificationData, char, CLLocationProvider_Type::RegInfo>::listClients() [Notification_T = CLLocationProvider_Type::Notification, NotificationData_T = CLLocationProvider_Type::NotificationData, NotificationInfo_T = char, RegistrationInfo_T = CLLocationProvider_Type::RegInfo]", "%s\n", v16);
              if (v16 != buf)
              {
                free(v16);
              }
            }

            v13 = v8[1];
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
                v14 = v8[2];
                v15 = *v14 == v8;
                v8 = v14;
              }

              while (!v15);
            }

            v8 = v14;
          }

          while (v14 != v7 + 6);
        }

        v17 = v7[1];
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
            v18 = v7[2];
            v15 = *v18 == v7;
            v7 = v18;
          }

          while (!v15);
        }

        v7 = v18;
      }

      while (v18 != (a1 + 88));
    }
  }
}

uint64_t sub_100490438(uint64_t a1, int *a2, uint64_t a3)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  if (a3)
  {
    v5 = 8 * a3;
    do
    {
      sub_1004904B0(a1, a2);
      a2 += 2;
      v5 -= 8;
    }

    while (v5);
  }

  return a1;
}

uint64_t *sub_1004904B0(void *a1, int *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v3 <= v2)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (*(v7 + 4) != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

uint64_t sub_1004906DC(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}