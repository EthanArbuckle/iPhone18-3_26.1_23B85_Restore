void sub_100579614(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100579638(unsigned __int16 *a1, unint64_t a2)
{
  if (*(a1 + 1) <= a2)
  {
    if (qword_1025D48A0 != -1)
    {
      dispatch_once(&qword_1025D48A0, &stru_10245FEA8);
    }

    v7 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_FAULT))
    {
      v8 = *(a1 + 1);
      *buf = 134218240;
      v11 = a2;
      v12 = 1024;
      v13 = v8;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_FAULT, "Assertion failed: i < fCapacity, file /Library/Caches/com.apple.xbs/Sources/CoreLocation/Oscar/CMQueue.h, line 233,i,%zu,capacity,%u.", buf, 0x12u);
    }

    if (sub_10000A100(121, 0))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D48A0 != -1)
      {
        dispatch_once(&qword_1025D48A0, &stru_10245FEA8);
      }

      v9 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 0, "const T &CMQueue<CLCatherineNotifier_Type::NotificationData>::operator[](const size_t) const [T = CLCatherineNotifier_Type::NotificationData]", "%s\n", v9);
      if (v9 != buf)
      {
        free(v9);
      }
    }
  }

  v4 = *a1 + a2;
  v5 = *(a1 + 1);
  if (v4 < v5)
  {
    v5 = 0;
  }

  return &a1[88 * (v4 - v5) + 4];
}

void sub_100579838(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x1745D1745D1745ELL)
  {
    operator new();
  }

  sub_1001D0818();
}

void sub_100579894(uint64_t a1@<X0>, int a2@<W1>, const void **a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  if (a5 >= a4 && *(a1 + 66))
  {
    v10 = 0;
    do
    {
      if (a2)
      {
        v11 = (sub_100579ABC((a1 + 64), v10) + 8);
      }

      else
      {
        v11 = sub_100579ABC((a1 + 64), v10);
      }

      v12 = *v11;
      if (*v11 >= a4)
      {
        if (v12 > a5)
        {
          return;
        }

        if (v12 >= a4 && v12 < a5)
        {
          v14 = sub_100579ABC((a1 + 64), v10);
          v28 = *(v14 + 16);
          v29 = *(v14 + 32);
          v30 = *(v14 + 48);
          v15 = a3[1];
          v16 = a3[2];
          if (v15 >= v16)
          {
            v21 = *a3;
            v22 = v15 - *a3;
            v23 = 0x6DB6DB6DB6DB6DB7 * (v22 >> 3) + 1;
            if (v23 > 0x492492492492492)
            {
              sub_10028C64C();
            }

            v24 = 0x6DB6DB6DB6DB6DB7 * ((v16 - v21) >> 3);
            if (2 * v24 > v23)
            {
              v23 = 2 * v24;
            }

            if (v24 >= 0x249249249249249)
            {
              v23 = 0x492492492492492;
            }

            if (v23)
            {
              sub_100579CBC(a3, v23);
            }

            v25 = 8 * (v22 >> 3);
            *v25 = *v14;
            *(v25 + 16) = v28;
            *(v25 + 32) = v29;
            *(v25 + 48) = v30;
            v20 = v25 + 56;
            v26 = v25 - v22;
            memcpy((v25 - v22), v21, v22);
            v27 = *a3;
            *a3 = v26;
            a3[1] = v20;
            a3[2] = 0;
            if (v27)
            {
              operator delete(v27);
            }
          }

          else
          {
            v17 = *v14;
            v18 = *(v14 + 16);
            v19 = *(v14 + 32);
            *(v15 + 6) = *(v14 + 48);
            *(v15 + 1) = v18;
            *(v15 + 2) = v19;
            *v15 = v17;
            v20 = (v15 + 56);
          }

          a3[1] = v20;
        }
      }

      ++v10;
    }

    while (v10 < *(a1 + 66));
  }
}

void sub_100579A98(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100579ABC(unsigned __int16 *a1, unint64_t a2)
{
  if (*(a1 + 1) <= a2)
  {
    if (qword_1025D48A0 != -1)
    {
      dispatch_once(&qword_1025D48A0, &stru_10245FEA8);
    }

    v7 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_FAULT))
    {
      v8 = *(a1 + 1);
      *buf = 134218240;
      v11 = a2;
      v12 = 1024;
      v13 = v8;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_FAULT, "Assertion failed: i < fCapacity, file /Library/Caches/com.apple.xbs/Sources/CoreLocation/Oscar/CMQueue.h, line 233,i,%zu,capacity,%u.", buf, 0x12u);
    }

    if (sub_10000A100(121, 0))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D48A0 != -1)
      {
        dispatch_once(&qword_1025D48A0, &stru_10245FEA8);
      }

      v9 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 0, "const T &CMQueue<CLAccessoryDMFeatures>::operator[](const size_t) const [T = CLAccessoryDMFeatures]", "%s\n", v9);
      if (v9 != buf)
      {
        free(v9);
      }
    }
  }

  v4 = *a1 + a2;
  v5 = *(a1 + 1);
  if (v4 < v5)
  {
    v5 = 0;
  }

  return &a1[28 * (v4 - v5) + 4];
}

void sub_100579CBC(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x492492492492493)
  {
    operator new();
  }

  sub_1001D0818();
}

void sub_100579D18(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  if (a2 == 1)
  {
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
    if (a5 >= a4 && *(a1 + 66))
    {
      v9 = 0;
      do
      {
        if (*sub_100579F4C((a1 + 64), v9) >= a4)
        {
          if (*sub_100579F4C((a1 + 64), v9) > a5)
          {
            return;
          }

          if (*sub_100579F4C((a1 + 64), v9) >= a4 && *sub_100579F4C((a1 + 64), v9) < a5)
          {
            v10 = sub_100579F4C((a1 + 64), v9);
            v24 = v10[2];
            v25 = v10[3];
            v26 = v10[4];
            v22 = *v10;
            v23 = v10[1];
            v12 = *(a3 + 8);
            v11 = *(a3 + 16);
            if (v12 >= v11)
            {
              v14 = *a3;
              v15 = v12 - *a3;
              v16 = 0xCCCCCCCCCCCCCCCDLL * (v15 >> 4) + 1;
              if (v16 > 0x333333333333333)
              {
                sub_10028C64C();
              }

              v17 = 0xCCCCCCCCCCCCCCCDLL * ((v11 - v14) >> 4);
              if (2 * v17 > v16)
              {
                v16 = 2 * v17;
              }

              if (v17 >= 0x199999999999999)
              {
                v18 = 0x333333333333333;
              }

              else
              {
                v18 = v16;
              }

              if (v18)
              {
                sub_10057A14C(a3, v18);
              }

              v19 = (16 * (v15 >> 4));
              v19[2] = v24;
              v19[3] = v25;
              v19[4] = v26;
              *v19 = v22;
              v19[1] = v23;
              v13 = v19 + 5;
              v20 = v19 - v15;
              memcpy(v19 - v15, v14, v15);
              v21 = *a3;
              *a3 = v20;
              *(a3 + 8) = v13;
              *(a3 + 16) = 0;
              if (v21)
              {
                operator delete(v21);
              }
            }

            else
            {
              memmove(*(a3 + 8), v10, 0x50uLL);
              v13 = (v12 + 80);
            }

            *(a3 + 8) = v13;
          }
        }

        ++v9;
      }

      while (v9 < *(a1 + 66));
    }
  }

  else
  {
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
  }
}

void sub_100579F28(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100579F4C(unsigned __int16 *a1, unint64_t a2)
{
  if (*(a1 + 1) <= a2)
  {
    if (qword_1025D48A0 != -1)
    {
      dispatch_once(&qword_1025D48A0, &stru_10245FEA8);
    }

    v7 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_FAULT))
    {
      v8 = *(a1 + 1);
      *buf = 134218240;
      v11 = a2;
      v12 = 1024;
      v13 = v8;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_FAULT, "Assertion failed: i < fCapacity, file /Library/Caches/com.apple.xbs/Sources/CoreLocation/Oscar/CMQueue.h, line 233,i,%zu,capacity,%u.", buf, 0x12u);
    }

    if (sub_10000A100(121, 0))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D48A0 != -1)
      {
        dispatch_once(&qword_1025D48A0, &stru_10245FEA8);
      }

      v9 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 0, "const T &CMQueue<CMDataProvider::Types::CMDPOdometer>::operator[](const size_t) const [T = CMDataProvider::Types::CMDPOdometer]", "%s\n", v9);
      if (v9 != buf)
      {
        free(v9);
      }
    }
  }

  v4 = *a1 + a2;
  v5 = *(a1 + 1);
  if (v4 < v5)
  {
    v5 = 0;
  }

  return &a1[40 * (v4 - v5) + 4];
}

void sub_10057A14C(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x333333333333334)
  {
    operator new();
  }

  sub_1001D0818();
}

void sub_10057A1A4(uint64_t a1@<X0>, int a2@<W1>, const void **a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  if (a2 == 1)
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    if (a5 >= a4 && *(a1 + 66))
    {
      v9 = 0;
      do
      {
        if (*(sub_10057A3A8((a1 + 64), v9) + 8) >= a4)
        {
          if (*(sub_10057A3A8((a1 + 64), v9) + 8) > a5)
          {
            return;
          }

          if (*(sub_10057A3A8((a1 + 64), v9) + 8) >= a4 && *(sub_10057A3A8((a1 + 64), v9) + 8) < a5)
          {
            v10 = sub_10057A3A8((a1 + 64), v9);
            v24 = v10[1];
            v25 = v10[2];
            v26 = v10[3];
            v11 = a3[1];
            v12 = a3[2];
            if (v11 >= v12)
            {
              v17 = *a3;
              v18 = v11 - *a3;
              v19 = v18 >> 6;
              v20 = (v18 >> 6) + 1;
              if (v20 >> 58)
              {
                sub_10028C64C();
              }

              v21 = v12 - v17;
              if (v21 >> 5 > v20)
              {
                v20 = v21 >> 5;
              }

              if (v21 >= 0x7FFFFFFFFFFFFFC0)
              {
                v20 = 0x3FFFFFFFFFFFFFFLL;
              }

              if (v20)
              {
                sub_100098AAC(a3, v20);
              }

              v22 = (v19 << 6);
              *v22 = *v10;
              v22[1] = v24;
              v22[2] = v25;
              v22[3] = v26;
              v16 = (v19 << 6) + 64;
              memcpy(0, v17, v18);
              v23 = *a3;
              *a3 = 0;
              a3[1] = v16;
              a3[2] = 0;
              if (v23)
              {
                operator delete(v23);
              }
            }

            else
            {
              v13 = *v10;
              v14 = v10[1];
              v15 = v10[3];
              *(v11 + 2) = v10[2];
              *(v11 + 3) = v15;
              *v11 = v13;
              *(v11 + 1) = v14;
              v16 = (v11 + 64);
            }

            a3[1] = v16;
          }
        }

        ++v9;
      }

      while (v9 < *(a1 + 66));
    }
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
  }
}

void sub_10057A384(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10057A3A8(unsigned __int16 *a1, unint64_t a2)
{
  if (*(a1 + 1) <= a2)
  {
    if (qword_1025D48A0 != -1)
    {
      dispatch_once(&qword_1025D48A0, &stru_10245FEA8);
    }

    v7 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_FAULT))
    {
      v8 = *(a1 + 1);
      *buf = 134218240;
      v11 = a2;
      v12 = 1024;
      v13 = v8;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_FAULT, "Assertion failed: i < fCapacity, file /Library/Caches/com.apple.xbs/Sources/CoreLocation/Oscar/CMQueue.h, line 233,i,%zu,capacity,%u.", buf, 0x12u);
    }

    if (sub_10000A100(121, 0))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D48A0 != -1)
      {
        dispatch_once(&qword_1025D48A0, &stru_10245FEA8);
      }

      v9 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 0, "const T &CMQueue<CLElevationChangeEntry>::operator[](const size_t) const [T = CLElevationChangeEntry]", "%s\n", v9);
      if (v9 != buf)
      {
        free(v9);
      }
    }
  }

  v4 = *a1 + a2;
  v5 = *(a1 + 1);
  if (v4 < v5)
  {
    v5 = 0;
  }

  return &a1[32 * (v4 - v5) + 4];
}

void sub_10057A5A4(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  if (a2 == 1)
  {
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
    if (a5 >= a4 && *(a1 + 66))
    {
      v9 = 0;
      do
      {
        if (*sub_10057A810((a1 + 64), v9) >= a4)
        {
          if (*sub_10057A810((a1 + 64), v9) > a5)
          {
            return;
          }

          if (*sub_10057A810((a1 + 64), v9) >= a4 && *sub_10057A810((a1 + 64), v9) < a5)
          {
            v10 = sub_10057A810((a1 + 64), v9);
            memcpy(v22, v10, sizeof(v22));
            v12 = *(a3 + 8);
            v11 = *(a3 + 16);
            if (v12 >= v11)
            {
              v14 = *a3;
              v15 = v12 - *a3;
              v16 = 0x86BCA1AF286BCA1BLL * (v15 >> 4) + 1;
              if (v16 > 0xD79435E50D7943)
              {
                sub_10028C64C();
              }

              v17 = 0x86BCA1AF286BCA1BLL * ((v11 - v14) >> 4);
              if (2 * v17 > v16)
              {
                v16 = 2 * v17;
              }

              if (v17 >= 0x6BCA1AF286BCA1)
              {
                v18 = 0xD79435E50D7943;
              }

              else
              {
                v18 = v16;
              }

              if (v18)
              {
                sub_10057AA10(a3, v18);
              }

              v19 = (16 * (v15 >> 4));
              memcpy(v19, v22, 0x130uLL);
              v13 = v19 + 304;
              v20 = &v19[-v15];
              memcpy(v20, v14, v15);
              v21 = *a3;
              *a3 = v20;
              *(a3 + 8) = v13;
              *(a3 + 16) = 0;
              if (v21)
              {
                operator delete(v21);
              }
            }

            else
            {
              memmove(*(a3 + 8), v10, 0x130uLL);
              v13 = (v12 + 304);
            }

            *(a3 + 8) = v13;
          }
        }

        ++v9;
      }

      while (v9 < *(a1 + 66));
    }
  }

  else
  {
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
  }
}

void sub_10057A7EC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10057A810(unsigned __int16 *a1, unint64_t a2)
{
  if (*(a1 + 1) <= a2)
  {
    if (qword_1025D48A0 != -1)
    {
      dispatch_once(&qword_1025D48A0, &stru_10245FEA8);
    }

    v7 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_FAULT))
    {
      v8 = *(a1 + 1);
      *buf = 134218240;
      v11 = a2;
      v12 = 1024;
      v13 = v8;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_FAULT, "Assertion failed: i < fCapacity, file /Library/Caches/com.apple.xbs/Sources/CoreLocation/Oscar/CMQueue.h, line 233,i,%zu,capacity,%u.", buf, 0x12u);
    }

    if (sub_10000A100(121, 0))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D48A0 != -1)
      {
        dispatch_once(&qword_1025D48A0, &stru_10245FEA8);
      }

      v9 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 0, "const T &CMQueue<CLMotionStateMediator_Type::NotificationData>::operator[](const size_t) const [T = CLMotionStateMediator_Type::NotificationData]", "%s\n", v9);
      if (v9 != buf)
      {
        free(v9);
      }
    }
  }

  v4 = *a1 + a2;
  v5 = *(a1 + 1);
  if (v4 < v5)
  {
    v5 = 0;
  }

  return &a1[152 * (v4 - v5) + 4];
}

void sub_10057AA10(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xD79435E50D7944)
  {
    operator new();
  }

  sub_1001D0818();
}

void sub_10057AA6C(uint64_t a1@<X0>, int a2@<W1>, const void **a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  if (a2 == 1)
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    if (a5 >= a4 && *(a1 + 66))
    {
      v9 = 0;
      do
      {
        if (*sub_10057AC58((a1 + 64), v9) >= a4)
        {
          if (*sub_10057AC58((a1 + 64), v9) > a5)
          {
            return;
          }

          if (*sub_10057AC58((a1 + 64), v9) >= a4 && *sub_10057AC58((a1 + 64), v9) < a5)
          {
            v10 = sub_10057AC58((a1 + 64), v9);
            v22 = v10[1];
            v11 = a3[1];
            v12 = a3[2];
            if (v11 >= v12)
            {
              v15 = *a3;
              v16 = v11 - *a3;
              v17 = v16 >> 5;
              v18 = (v16 >> 5) + 1;
              if (v18 >> 59)
              {
                sub_10028C64C();
              }

              v19 = v12 - v15;
              if (v19 >> 4 > v18)
              {
                v18 = v19 >> 4;
              }

              if (v19 >= 0x7FFFFFFFFFFFFFE0)
              {
                v18 = 0x7FFFFFFFFFFFFFFLL;
              }

              if (v18)
              {
                sub_10057AE54(a3, v18);
              }

              v20 = (32 * v17);
              *v20 = *v10;
              v20[1] = v22;
              v14 = 32 * v17 + 32;
              memcpy(0, v15, v16);
              v21 = *a3;
              *a3 = 0;
              a3[1] = v14;
              a3[2] = 0;
              if (v21)
              {
                operator delete(v21);
              }
            }

            else
            {
              v13 = v10[1];
              *v11 = *v10;
              *(v11 + 1) = v13;
              v14 = (v11 + 32);
            }

            a3[1] = v14;
          }
        }

        ++v9;
      }

      while (v9 < *(a1 + 66));
    }
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
  }
}

void sub_10057AC34(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10057AC58(unsigned __int16 *a1, unint64_t a2)
{
  if (*(a1 + 1) <= a2)
  {
    if (qword_1025D48A0 != -1)
    {
      dispatch_once(&qword_1025D48A0, &stru_10245FEA8);
    }

    v7 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_FAULT))
    {
      v8 = *(a1 + 1);
      *buf = 134218240;
      v11 = a2;
      v12 = 1024;
      v13 = v8;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_FAULT, "Assertion failed: i < fCapacity, file /Library/Caches/com.apple.xbs/Sources/CoreLocation/Oscar/CMQueue.h, line 233,i,%zu,capacity,%u.", buf, 0x12u);
    }

    if (sub_10000A100(121, 0))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D48A0 != -1)
      {
        dispatch_once(&qword_1025D48A0, &stru_10245FEA8);
      }

      v9 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 0, "const T &CMQueue<CLRawHR>::operator[](const size_t) const [T = CLRawHR]", "%s\n", v9);
      if (v9 != buf)
      {
        free(v9);
      }
    }
  }

  v4 = *a1 + a2;
  v5 = *(a1 + 1);
  if (v4 < v5)
  {
    v5 = 0;
  }

  return &a1[16 * (v4 - v5) + 4];
}

void sub_10057AE54(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  sub_1001D0818();
}

void sub_10057AE9C(uint64_t a1@<X0>, int a2@<W1>, uint64_t *a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  if (a2 == 1)
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    if (a5 >= a4 && *(a1 + 66))
    {
      v9 = 0;
      do
      {
        if (*sub_10057B060((a1 + 64), v9) >= a4)
        {
          if (*sub_10057B060((a1 + 64), v9) > a5)
          {
            return;
          }

          if (*sub_10057B060((a1 + 64), v9) >= a4 && *sub_10057B060((a1 + 64), v9) < a5)
          {
            v10 = sub_10057B060((a1 + 64), v9);
            v11 = *v10;
            v19 = *(v10 + 8);
            v18 = v11;
            sub_10057B61C(&v20, v10 + 16);
            v12 = a3[1];
            if (v12 >= a3[2])
            {
              v17 = sub_10057B260(a3, &v18);
            }

            else
            {
              v13 = v18;
              *(v12 + 8) = v19;
              *v12 = v13;
              *(v12 + 16) = v20;
              v14 = v21;
              *(v12 + 24) = v21;
              v15 = v12 + 24;
              v16 = v22;
              *(v12 + 32) = v22;
              if (v16)
              {
                *(v14 + 2) = v15;
                v20 = &v21;
                v21 = 0;
                v22 = 0;
              }

              else
              {
                *(v12 + 16) = v15;
              }

              v17 = v12 + 40;
            }

            a3[1] = v17;
            sub_10001AF44(&v20, v21);
          }
        }

        ++v9;
      }

      while (v9 < *(a1 + 66));
    }
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
  }
}

void sub_10057B030(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, char *a13)
{
  sub_10001AF44(v13 + 16, a13);
  sub_10057833C(&a10);
  _Unwind_Resume(a1);
}

uint64_t sub_10057B060(unsigned __int16 *a1, unint64_t a2)
{
  if (*(a1 + 1) <= a2)
  {
    if (qword_1025D48A0 != -1)
    {
      dispatch_once(&qword_1025D48A0, &stru_10245FEA8);
    }

    v7 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_FAULT))
    {
      v8 = *(a1 + 1);
      *buf = 134218240;
      v11 = a2;
      v12 = 1024;
      v13 = v8;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_FAULT, "Assertion failed: i < fCapacity, file /Library/Caches/com.apple.xbs/Sources/CoreLocation/Oscar/CMQueue.h, line 233,i,%zu,capacity,%u.", buf, 0x12u);
    }

    if (sub_10000A100(121, 0))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D48A0 != -1)
      {
        dispatch_once(&qword_1025D48A0, &stru_10245FEA8);
      }

      v9 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 0, "const T &CMQueue<imufm::CMIMUFoundationModelAdaptorResult>::operator[](const size_t) const [T = imufm::CMIMUFoundationModelAdaptorResult]", "%s\n", v9);
      if (v9 != buf)
      {
        free(v9);
      }
    }
  }

  v4 = *a1 + a2;
  v5 = *(a1 + 1);
  if (v4 < v5)
  {
    v5 = 0;
  }

  return &a1[20 * (v4 - v5) + 4];
}

uint64_t sub_10057B260(uint64_t *a1, uint64_t *a2)
{
  v2 = 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x666666666666666)
  {
    sub_10028C64C();
  }

  if (0x999999999999999ALL * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x999999999999999ALL * ((a1[2] - *a1) >> 3);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 3) >= 0x333333333333333)
  {
    v6 = 0x666666666666666;
  }

  else
  {
    v6 = v3;
  }

  v22 = a1;
  if (v6)
  {
    sub_10057B3C8(a1, v6);
  }

  v7 = 40 * v2;
  v19 = 0;
  v20 = v7;
  *(&v21 + 1) = 0;
  v8 = *a2;
  *(v7 + 8) = *(a2 + 2);
  *v7 = v8;
  *(v7 + 16) = a2[2];
  v9 = a2 + 3;
  v10 = a2[3];
  *(40 * v2 + 0x18) = v10;
  v11 = 40 * v2 + 24;
  v12 = a2[4];
  *(v7 + 32) = v12;
  if (v12)
  {
    *(v10 + 16) = v11;
    a2[2] = v9;
    *v9 = 0;
    a2[4] = 0;
  }

  else
  {
    *(40 * v2 + 0x10) = v11;
  }

  *&v21 = v7 + 40;
  v13 = a1[1];
  v14 = v7 + *a1 - v13;
  sub_10057B420(a1, *a1, v13, v14);
  v15 = *a1;
  *a1 = v14;
  v16 = a1[2];
  v18 = v21;
  *(a1 + 1) = v21;
  *&v21 = v15;
  *(&v21 + 1) = v16;
  v19 = v15;
  v20 = v15;
  sub_10057B59C(&v19);
  return v18;
}

void sub_10057B3B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_10057B59C(va);
  _Unwind_Resume(a1);
}

void sub_10057B3C8(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x666666666666667)
  {
    operator new();
  }

  sub_1001D0818();
}

uint64_t sub_10057B420(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18 = a4;
  v17 = a4;
  v15[0] = a1;
  v15[1] = &v17;
  v15[2] = &v18;
  if (a2 == a3)
  {
    v16 = 1;
  }

  else
  {
    v5 = 0;
    do
    {
      v6 = a4 + v5;
      v7 = *(a2 + v5);
      *(v6 + 8) = *(a2 + v5 + 8);
      *v6 = v7;
      *(v6 + 16) = *(a2 + v5 + 16);
      v8 = (a2 + v5 + 24);
      v9 = *v8;
      *(a4 + v5 + 24) = *v8;
      v10 = a4 + v5 + 24;
      v11 = *(a2 + v5 + 32);
      *(v6 + 32) = v11;
      if (v11)
      {
        *(v9 + 16) = v10;
        *(a2 + v5 + 16) = v8;
        *v8 = 0;
        *(a2 + v5 + 32) = 0;
      }

      else
      {
        *(v6 + 16) = v10;
      }

      v5 += 40;
    }

    while (a2 + v5 != a3);
    v18 = a4 + v5;
    v16 = 1;
    if (a2 != a3)
    {
      v12 = a2 + 16;
      do
      {
        sub_10001AF44(v12, *(v12 + 8));
        v13 = v12 + 24;
        v12 += 40;
      }

      while (v13 != a3);
    }
  }

  return sub_10057B518(v15);
}

uint64_t sub_10057B518(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_10057B550(a1);
  }

  return a1;
}

void sub_10057B550(uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  if (v1 != v2)
  {
    do
    {
      v3 = v1 - 40;
      sub_10001AF44(v1 - 24, *(v1 - 16));
      v1 = v3;
    }

    while (v3 != v2);
  }
}

void **sub_10057B59C(void **a1)
{
  sub_10057B5D0(a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_10057B5D0(uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 40;
    sub_10001AF44(i - 24, *(i - 16));
  }
}

void *sub_10057B61C(void *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  sub_10057B674(a1, *a2, (a2 + 8));
  return a1;
}

void *sub_10057B674(void *result, void **a2, void **a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = sub_10057B6FC(v5, (v5 + 1), v4 + 4);
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

void *sub_10057B6FC(void *a1, uint64_t a2, void **a3)
{
  result = *sub_100249FD8(a1, a2, &v5, &v4, a3);
  if (!result)
  {
    sub_10057B780();
  }

  return result;
}

void sub_10057B81C(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_1002E4F74(v3, v2);
  _Unwind_Resume(a1);
}

void sub_10057B838()
{
  if ((atomic_load_explicit(&qword_1025D5F78, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1025D5F78))
  {
    __cxa_atexit(sub_1004C707C, &xmmword_1025D5F68, dword_100000000);

    __cxa_guard_release(&qword_1025D5F78);
  }
}

uint64_t sub_10057B8B0()
{
  v1[0] = xmmword_101C7F244;
  v1[1] = unk_101C7F254;
  v1[2] = xmmword_101C7F264;
  v2 = 0x90000000DLL;
  qword_102656EE8 = 0;
  unk_102656EF0 = 0;
  qword_102656EE0 = 0;
  sub_1004579D4(&qword_102656EE0, v1, &v3, 0xEuLL);
  return __cxa_atexit(sub_1004F4E20, &qword_102656EE0, dword_100000000);
}

double sub_10057B96C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 8) = a2;
  *(a1 + 16) = a3;
  *a1 = &off_10245FED8;
  result = 0.0;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  return result;
}

void *sub_10057B9A4(void *a1)
{
  *a1 = &off_10245FED8;
  if (qword_1025D4790 != -1)
  {
    sub_1018C6634();
  }

  v2 = qword_1025D4798;
  if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_DEFAULT))
  {
    (*(*a1 + 24))(__p, a1);
    v3 = __p[0];
    if (v11 >= 0)
    {
      v3 = __p;
    }

    v4 = a1 + 3;
    if (*(a1 + 47) < 0)
    {
      v4 = *v4;
    }

    *buf = 68289538;
    v13 = 0;
    v14 = 2082;
    v15 = "";
    v16 = 2082;
    v17 = v3;
    v18 = 2082;
    v19 = v4;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLGnssExtensions,releasing assertion, client:%{public, location:escape_only}s, reason:%{public, location:escape_only}s}", buf, 0x26u);
    if (v11 < 0)
    {
      operator delete(__p[0]);
    }
  }

  if (a1[10])
  {
    if (qword_1025D4790 != -1)
    {
      sub_1018C6648();
    }

    v5 = qword_1025D4798;
    if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEFAULT, "#wigo,off,CLGnssExtensions", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018C6670(buf);
      LOWORD(__p[0]) = 0;
      v9 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "virtual CLDaemonGnssExtensionsClient::~CLDaemonGnssExtensionsClient()", "%s\n", v9);
      if (v9 != buf)
      {
        free(v9);
      }
    }

    AnalyticsSendEventLazy();
    [*(a1[10] + 16) unregister:*(a1[10] + 8) forNotification:0];
    v6 = a1[10];
    a1[10] = 0;
    if (v6)
    {
      (*(*v6 + 8))(v6);
    }
  }

  v7 = a1[9];
  a1[9] = 0;
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  if (*(a1 + 71) < 0)
  {
    operator delete(a1[6]);
  }

  if (*(a1 + 47) < 0)
  {
    operator delete(a1[3]);
  }

  sub_100143A80(a1);
  return a1;
}

void sub_10057BCB4(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10037EA9C(a1);
}

void sub_10057BCD0(void *a1)
{
  sub_10057B9A4(a1);

  operator delete();
}

void sub_10057BD08(uint64_t a1, uint64_t a2)
{
  v3 = &off_10254EB10;
  v4 = a2;
  v2 = [NSDictionary dictionaryWithObjects:&v4 forKeys:&v3 count:1];
  sub_10057D480();
}

void sub_10057BEE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15)
{
  if (a15)
  {
    sub_100008080(a15);
  }

  _Unwind_Resume(exception_object);
}

void sub_10057BF18(uint64_t a1, uint64_t a2)
{
  v4 = CLConnectionMessage::name(*a2);
  if (*(v4 + 23) < 0 && *(v4 + 8) == 40 && !memcmp(*v4, "kCLConnectionMessageGnssExtensionsClient", 0x28uLL))
  {
    if (qword_1025D4790 != -1)
    {
      sub_1018C6634();
    }

    v8 = qword_1025D4798;
    if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289538;
      v13 = 0;
      v14 = 2082;
      v15 = "";
      v16 = 2082;
      v17 = "kCLConnectionMessageGnssExtensionsClient";
      v18 = 2050;
      v19 = a1;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLGnssExtensions, message:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }

    v9 = *a2;
    v10 = *(a2 + 8);
    v11[0] = v9;
    v11[1] = v10;
    if (v10)
    {
      atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
    }

    sub_10057C128(a1, v11);
    if (v10)
    {
      sub_100008080(v10);
    }
  }

  else
  {
    if (qword_1025D4790 != -1)
    {
      sub_1018C6634();
    }

    v5 = qword_1025D4798;
    if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_DEFAULT))
    {
      v6 = CLConnectionMessage::name(*a2);
      if (*(v6 + 23) >= 0)
      {
        v7 = v6;
      }

      else
      {
        v7 = *v6;
      }

      *buf = 68289282;
      v13 = 0;
      v14 = 2082;
      v15 = "";
      v16 = 2082;
      v17 = v7;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#Warning,CLGnssExtensions,unrecognized message, message:%{public, location:escape_only}s}", buf, 0x1Cu);
    }
  }
}

void sub_10057C128(uint64_t a1, CLConnectionMessage **a2)
{
  if ((*(a1 + 47) & 0x8000000000000000) != 0)
  {
    if (*(a1 + 32))
    {
LABEL_3:
      if (qword_1025D4790 != -1)
      {
        sub_1018C6634();
      }

      v4 = qword_1025D4798;
      if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_INFO))
      {
        (*(*a1 + 24))(__p, a1);
        if (v31 >= 0)
        {
          v5 = __p;
        }

        else
        {
          v5 = __p[0];
        }

        buf = 68289282;
        buf_8 = 2082;
        buf_10 = "";
        v35 = 2082;
        v36 = v5;
        _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_INFO, "{msg%{public}.0s:CLGnssExtensions, assertion already taken by:%{public, location:escape_only}s}", &buf, 0x1Cu);
        if (SHIBYTE(v31) < 0)
        {
          operator delete(__p[0]);
        }
      }

      sub_10057BD08(a1, @"Assertion already taken");
    }
  }

  else if (*(a1 + 47))
  {
    goto LABEL_3;
  }

  sub_10000EC00(&buf, "com.apple.locationd.gnss-extensions");
  v6 = sub_10057CC78(a1, &buf);
  v7 = v6;
  if ((SBYTE3(v36) & 0x80000000) == 0)
  {
    if (v6)
    {
      goto LABEL_15;
    }

LABEL_23:
    if (qword_1025D4790 != -1)
    {
      sub_1018C6648();
    }

    v16 = qword_1025D4798;
    if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_INFO))
    {
      (*(*a1 + 24))(__p, a1);
      v17 = v31 >= 0 ? __p : __p[0];
      buf = 68289282;
      buf_8 = 2082;
      buf_10 = "";
      v35 = 2082;
      v36 = v17;
      _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_INFO, "{msg%{public}.0s:CLGnssExtensions,not entitled,ignoring, client:%{public, location:escape_only}s}", &buf, 0x1Cu);
      if (SHIBYTE(v31) < 0)
      {
        operator delete(__p[0]);
      }
    }

    sub_10057BD08(a1, @"missing entitlement: com.apple.locationd.gnss-extensions");
  }

  operator delete(buf);
  if ((v7 & 1) == 0)
  {
    goto LABEL_23;
  }

LABEL_15:
  Dictionary = CLConnectionMessage::getDictionary(*a2);
  v9 = Dictionary;
  if (Dictionary)
  {
    v10 = [Dictionary objectForKeyedSubscript:@"kCLConnectionMessagePurposeKey"];
    v11 = [v9 objectForKeyedSubscript:@"kCLConnectionMessageBundleIdentifierKey"];
    v12 = [v9 objectForKeyedSubscript:@"kCLConnectionMessageBundlePathKey"];
    if (v11)
    {
      v13 = v12;
      if (v12)
      {
        if (v10)
        {
          if ([v10 length])
          {
            v14 = [v10 UTF8String];
            v15 = (a1 + 24);
            sub_100006044((a1 + 24), v14);
            if ([v11 length])
            {
              sub_10000EC00(&__str, [v11 UTF8String]);
              sub_100034EE4(&__str, &buf);
              sub_100037ACC(&buf, __p);
            }

            else
            {
              if (![v13 length])
              {
                if (qword_1025D4790 != -1)
                {
                  sub_1018C6648();
                }

                v27 = qword_1025D4798;
                if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_INFO))
                {
                  (*(*a1 + 24))(__p, a1);
                  if (v31 >= 0)
                  {
                    v28 = __p;
                  }

                  else
                  {
                    v28 = __p[0];
                  }

                  if (*(a1 + 47) < 0)
                  {
                    v15 = *v15;
                  }

                  buf = 68289538;
                  buf_8 = 2082;
                  buf_10 = "";
                  v35 = 2082;
                  v36 = v28;
                  v37 = 2082;
                  v38 = v15;
                  _os_log_impl(dword_100000000, v27, OS_LOG_TYPE_INFO, "{msg%{public}.0s:CLGnssExtensions,no beneficiary,request denined, requested by:%{public, location:escape_only}s, reason:%{public, location:escape_only}s}", &buf, 0x26u);
                  if (SHIBYTE(v31) < 0)
                  {
                    operator delete(__p[0]);
                  }
                }

                sub_10057BD08(a1, @"null beneficiary client key");
              }

              sub_10000EC00(&__str, [v13 UTF8String]);
              sub_1000E1C7C(&__str, &buf);
              sub_100037ACC(&buf, __p);
            }

            if (*(a1 + 71) < 0)
            {
              operator delete(*(a1 + 48));
            }

            *(a1 + 48) = *__p;
            *(a1 + 64) = v31;
            HIBYTE(v31) = 0;
            LOBYTE(__p[0]) = 0;
            sub_100039BE8(&buf);
            if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__str.__r_.__value_.__l.__data_);
            }

            sub_100D64EF4();
          }

          if (qword_1025D4790 != -1)
          {
            sub_1018C6648();
          }

          v25 = qword_1025D4798;
          if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_INFO))
          {
            (*(*a1 + 24))(__p, a1);
            v26 = v31 >= 0 ? __p : __p[0];
            buf = 68289282;
            buf_8 = 2082;
            buf_10 = "";
            v35 = 2082;
            v36 = v26;
            _os_log_impl(dword_100000000, v25, OS_LOG_TYPE_INFO, "{msg%{public}.0s:CLGnssExtensions,empty reason,request denined, requested by:%{public, location:escape_only}s}", &buf, 0x1Cu);
            if (SHIBYTE(v31) < 0)
            {
              operator delete(__p[0]);
            }
          }

          sub_10057BD08(a1, @"empty reason");
        }

        if (qword_1025D4790 != -1)
        {
          sub_1018C6648();
        }

        v23 = qword_1025D4798;
        if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_INFO))
        {
          (*(*a1 + 24))(__p, a1);
          v24 = v31 >= 0 ? __p : __p[0];
          buf = 68289282;
          buf_8 = 2082;
          buf_10 = "";
          v35 = 2082;
          v36 = v24;
          _os_log_impl(dword_100000000, v23, OS_LOG_TYPE_INFO, "{msg%{public}.0s:CLGnssExtensions,missing reason,request denined, requested by:%{public, location:escape_only}s}", &buf, 0x1Cu);
          if (SHIBYTE(v31) < 0)
          {
            operator delete(__p[0]);
          }
        }

        sub_10057BD08(a1, @"missing reason");
      }

      if (qword_1025D4790 != -1)
      {
        sub_1018C6648();
      }

      v21 = qword_1025D4798;
      if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_INFO))
      {
        (*(*a1 + 24))(__p, a1);
        v22 = v31 >= 0 ? __p : __p[0];
        buf = 68289282;
        buf_8 = 2082;
        buf_10 = "";
        v35 = 2082;
        v36 = v22;
        _os_log_impl(dword_100000000, v21, OS_LOG_TYPE_INFO, "{msg%{public}.0s:CLGnssExtensions,missing bundlePath,request denined, requested by:%{public, location:escape_only}s}", &buf, 0x1Cu);
        if (SHIBYTE(v31) < 0)
        {
          operator delete(__p[0]);
        }
      }

      sub_10057BD08(a1, @"missing bundlePath");
    }

    if (qword_1025D4790 != -1)
    {
      sub_1018C6648();
    }

    v19 = qword_1025D4798;
    if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_INFO))
    {
      (*(*a1 + 24))(__p, a1);
      v20 = v31 >= 0 ? __p : __p[0];
      buf = 68289282;
      buf_8 = 2082;
      buf_10 = "";
      v35 = 2082;
      v36 = v20;
      _os_log_impl(dword_100000000, v19, OS_LOG_TYPE_INFO, "{msg%{public}.0s:CLGnssExtensions,missing bundleID,request denined, requested by:%{public, location:escape_only}s}", &buf, 0x1Cu);
      if (SHIBYTE(v31) < 0)
      {
        operator delete(__p[0]);
      }
    }

    sub_10057BD08(a1, @"missing bundleID");
  }

  if (qword_1025D4790 != -1)
  {
    sub_1018C6648();
  }

  v18 = qword_1025D4798;
  if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_ERROR))
  {
    LOWORD(buf) = 0;
    _os_log_impl(dword_100000000, v18, OS_LOG_TYPE_ERROR, "GnssExtension dictionary empty", &buf, 2u);
  }

  if (sub_10000A100(121, 0))
  {
    sub_1018C6798();
  }
}

void sub_10057CC28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  sub_100039BE8(&a20);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10057CC78(uint64_t a1, uint64_t *a2)
{
  isEntitled = CLConnection::isEntitled();
  if (qword_1025D4790 != -1)
  {
    sub_1018C6634();
  }

  v5 = qword_1025D4798;
  if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_INFO))
  {
    (*(*a1 + 24))(__p, a1);
    if (v10 >= 0)
    {
      v6 = __p;
    }

    else
    {
      v6 = __p[0];
    }

    if (*(a2 + 23) >= 0)
    {
      v7 = a2;
    }

    else
    {
      v7 = *a2;
    }

    *buf = 68289794;
    v12 = 0;
    v13 = 2082;
    v14 = "";
    v15 = 2082;
    v16 = v6;
    v17 = 2082;
    v18 = v7;
    v19 = 1026;
    v20 = isEntitled;
    _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_INFO, "{msg%{public}.0s:CLGnssExtensions, requested by:%{public, location:escape_only}s, entitlement:%{public, location:escape_only}s, entitled:%{public}hhd}", buf, 0x2Cu);
    if (v10 < 0)
    {
      operator delete(__p[0]);
    }
  }

  return isEntitled;
}

void sub_10057CDE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a4 + 16) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_1018C6888();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v11 = 1;
    v8 = _os_activity_create(dword_100000000, "CL: CLDaemonGnssExtensionsClient::onGnssLocationNotification", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v8, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_1018C689C();
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
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLDaemonGnssExtensionsClient::onGnssLocationNotification, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v11 = 0;
  }

  sub_10057D0F8(a4, v6, v7, a3);
  if (v11 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

NSDictionary *sub_10057CFB4(unsigned int *a1)
{
  v2 = *a1;
  if (v2 < 6)
  {
    v3 = v2 + 1;
  }

  else
  {
    v3 = 0;
  }

  v4 = [NSNumber numberWithLong:v3];
  v5 = [NSNumber numberWithInt:a1[1]];
  LODWORD(v6) = a1[2];
  v7 = [NSNumber numberWithFloat:v6];
  LODWORD(v8) = a1[3];
  v9 = [NSNumber numberWithFloat:v8];
  LODWORD(v10) = a1[4];
  v11 = [NSNumber numberWithFloat:v10];
  LODWORD(v12) = a1[5];
  return [NSDictionary dictionaryWithObjectsAndKeys:v4, @"satSystem", v5, @"satId", v7, @"elevationDeg", v9, @"azimuthDeg", v11, @"l1Cn0", [NSNumber numberWithFloat:v12], @"l5Cn0", [NSNumber numberWithBool:*(a1 + 24)], @"isTracked", [NSNumber numberWithBool:*(a1 + 25)], @"isPhaseTracked", 0];
}

void sub_10057D0F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a4 + 680);
  if (qword_1025D4790 != -1)
  {
    sub_1018C6634();
  }

  v6 = qword_1025D4798;
  if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_DEFAULT))
  {
    buf[0] = 67240192;
    buf[1] = v5 != 0;
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEFAULT, "CLGnssExtensions, onGnssLocationNotification, %{public}d", buf, 8u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018C68C4(v5 != 0);
  }

  if (v5)
  {
    v7 = +[NSMutableArray array];
    v8 = *(a4 + 680);
    v9 = *v8;
    v10 = *(v8 + 8);
    while (v9 != v10)
    {
      *buf = *v9;
      *&buf[3] = *(v9 + 12);
      [v7 addObject:sub_10057CFB4(buf)];
      v9 = (v9 + 28);
    }

    v12[0] = @"type";
    v12[1] = @"version";
    v13[0] = &off_10254EB28;
    v13[1] = &off_10254EB40;
    v12[2] = @"data";
    v13[2] = v7;
    [NSDictionary dictionaryWithObjects:v13 forKeys:v12 count:3];
    sub_10057D5C4();
  }
}

void sub_10057D3E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15)
{
  if (a15)
  {
    sub_100008080(a15);
  }

  _Unwind_Resume(exception_object);
}

void *sub_10057D4F4(void *a1, char *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_102451BF8;
  sub_10057D550((a1 + 3), a2);
  return a1;
}

uint64_t sub_10057D550(uint64_t a1, char *a2)
{
  sub_10000EC00(&__p, a2);
  CLConnectionMessage::CLConnectionMessage();
  if (v5 < 0)
  {
    operator delete(__p);
  }

  return a1;
}

void sub_10057D5A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_10057D638(void *a1, char *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_102451BF8;
  sub_10057D694((a1 + 3), a2);
  return a1;
}

uint64_t sub_10057D694(uint64_t a1, char *a2)
{
  sub_10000EC00(&__p, a2);
  CLConnectionMessage::CLConnectionMessage();
  if (v5 < 0)
  {
    operator delete(__p);
  }

  return a1;
}

void sub_10057D6EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10057D86C(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100582898;
  block[3] = &unk_102447418;
  block[4] = a1;
  if (qword_102656F08 != -1)
  {
    dispatch_once(&qword_102656F08, block);
  }

  return qword_102636F30;
}

uint64_t sub_10057DBB8(uint64_t a1)
{
  if ((atomic_load_explicit(&qword_102656F18, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_102656F18))
  {
    v11 = sub_10001A3E8();
    byte_102656F10 = sub_1007198D4(v11);
    __cxa_guard_release(&qword_102656F18);
  }

  if ((byte_102656F10 & 1) == 0)
  {
    return 0;
  }

  if ((*(a1 + 160) & 1) == 0)
  {
    if (qword_1025D48A0 != -1)
    {
      sub_100248B5C();
    }

    v2 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
    {
      v3 = *(a1 + 160);
      *buf = 68289282;
      v14 = 0;
      v15 = 2082;
      v16 = "";
      v17 = 1026;
      v18 = v3;
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:DaemonNotReady for CT SPI, fDaemonReady:%{public}hhd}", buf, 0x18u);
    }
  }

  if (!*(a1 + 144))
  {
    if (qword_1025D48A0 != -1)
    {
      sub_1018C6BA0();
    }

    v8 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEBUG, "currently not connected to telephony service", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018C6CB4();
    }

    return 0;
  }

  v4 = sub_10057E534(a1);
  if (!v4)
  {
    if (qword_1025D48A0 != -1)
    {
      sub_1018C6BA0();
    }

    v9 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_FAULT, "Can't get camp only state", buf, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018C6BC8();
    }

    return 0;
  }

  sub_100005548(buf, v4);
  v12 = 0;
  v5 = sub_1000052CC(buf, @"kCTCampOnly", &v12);
  v6 = v12;
  CFRelease(v4);
  if (v6 == 1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0;
  }

  sub_100005DA4(buf);
  return v7;
}

void sub_10057DEB4(uint64_t a1, uint64_t a2)
{
  if ((sub_1000733FC() & 1) != 0 || (sub_1000734AC() & 1) != 0 || sub_100718F78())
  {
    if (qword_1025D4620 != -1)
    {
      sub_1018C6DA0();
    }

    v3 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
    {
      v4 = *(a2 + 24);
      v5 = *a2;
      v6 = *(a2 + 32);
      *buf = 134349568;
      *&buf[4] = v4;
      *&buf[12] = 1026;
      *&buf[14] = v5;
      *&buf[18] = 1026;
      *&buf[20] = v6;
      _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEBUG, "#timingadvance,currentTimeStamp,%{public}.3f,lte_ta_val,%{public}d,isLte,%{public}d", buf, 0x18u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018C6F0C(a2);
    }
  }

  else if (sub_10006FB70())
  {
    if (qword_1025D4620 != -1)
    {
      sub_1018C6DA0();
    }

    v19 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
    {
      v20 = *(a2 + 24);
      v21 = *a2;
      v22 = *(a2 + 4);
      v23 = *(a2 + 32);
      v24 = *(a2 + 8);
      v25 = *(a2 + 12);
      v26 = *(a2 + 16);
      v27 = *(a2 + 33);
      *buf = 134350848;
      *&buf[4] = v20;
      *&buf[12] = 1026;
      *&buf[14] = v21;
      *&buf[18] = 1026;
      *&buf[20] = v22;
      *&buf[24] = 1026;
      *&buf[26] = v23;
      *&buf[30] = 1026;
      LODWORD(v34) = v24;
      WORD2(v34) = 1026;
      *(&v34 + 6) = v25;
      WORD5(v34) = 1026;
      HIDWORD(v34) = v26;
      LOWORD(v35) = 1026;
      *(&v35 + 2) = v27;
      _os_log_impl(dword_100000000, v19, OS_LOG_TYPE_DEBUG, "#timingadvance,currentTimeStamp,%{public}.3f,lte_ta_val,%{public}d,lte_connection_state,%{public}d,isLte,%{public}d,nr5g_ta_val,%{public}d,nr5g_connection_state,%{public}d,nr5g_ta_offset,%{public}d,isNr,%{public}d", buf, 0x36u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018C6DB4(a2);
    }
  }

  cf = sub_1004FD6BC(a2);
  v7 = sub_1004FD6F8((a2 + 24));
  v8 = sub_1004FD6BC((a2 + 8));
  v9 = sub_1001CF0F0((a2 + 32));
  v10 = sub_1001CF0F0((a2 + 33));
  v11 = sub_1000F3034((a2 + 36));
  v12 = sub_1000F3034((a2 + 40));
  v13 = sub_1000F3034((a2 + 44));
  v14 = sub_1000F3034((a2 + 48));
  v15 = sub_1000F3034((a2 + 52));
  v30 = sub_1000F3034((a2 + 56));
  v31 = sub_1000F3034((a2 + 60));
  v16 = sub_1000F3034((a2 + 64));
  v17 = cf;
  if (cf && v7 && v8 && v9 && v10)
  {
    v36 = *&off_1024603C8;
    v37 = *&off_1024603D8;
    v38 = @"kTimingAdvanceNR_CI_Key";
    *buf = *&off_102460388;
    *&buf[16] = *&off_102460398;
    v34 = *&off_1024603A8;
    v35 = *&off_1024603B8;
    values[0] = cf;
    values[1] = v8;
    values[2] = v7;
    values[3] = v9;
    values[4] = v10;
    values[5] = v11;
    values[6] = v12;
    values[7] = v13;
    values[8] = v14;
    values[9] = v15;
    values[10] = v30;
    values[11] = v31;
    values[12] = v16;
    v18 = CFDictionaryCreate(0, buf, values, 13, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    (*(*a1 + 256))();
    v17 = cf;
  }

  else if (!cf)
  {
    goto LABEL_18;
  }

  CFRelease(v17);
LABEL_18:
  if (v7)
  {
    CFRelease(v7);
  }

  if (v8)
  {
    CFRelease(v8);
  }

  if (v9)
  {
    CFRelease(v9);
  }

  if (v10)
  {
    CFRelease(v10);
  }

  if (v11)
  {
    CFRelease(v11);
  }

  if (v12)
  {
    CFRelease(v12);
  }

  if (v13)
  {
    CFRelease(v13);
  }

  if (v14)
  {
    CFRelease(v14);
  }

  if (v15)
  {
    CFRelease(v15);
  }

  if (v30)
  {
    CFRelease(v30);
  }

  if (v31)
  {
    CFRelease(v31);
  }

  if (v16)
  {
    CFRelease(v16);
  }
}

void sub_10057E33C(uint64_t a1, unsigned int a2, unsigned int a3)
{
  if (*(a1 + 152))
  {
    if (qword_1025D48A0 != -1)
    {
      sub_100248B5C();
    }

    v6 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
    {
      v8 = 68289538;
      v9 = 0;
      v10 = 2082;
      v11 = "";
      v12 = 1026;
      v13 = a2;
      v14 = 1026;
      v15 = a3;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLTelephonyService assertCommCenter, client:%{public}d, level:%{public}d}", &v8, 0x1Eu);
    }

    sub_100F694F4(*(a1 + 152), a2, a3);
  }

  else
  {
    if (qword_1025D48A0 != -1)
    {
      sub_100248B5C();
    }

    v7 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
    {
      v8 = 68289538;
      v9 = 0;
      v10 = 2082;
      v11 = "";
      v12 = 1026;
      v13 = a2;
      v14 = 1026;
      v15 = a3;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLTelephonyService assert skipped, client:%{public}d, level:%{public}d}", &v8, 0x1Eu);
    }
  }
}

uint64_t sub_10057E534(uint64_t a1)
{
  result = *(a1 + 144);
  if (result)
  {
    v2 = _CTServerConnectionCopyRegistrationInfo();
    v3 = v2;
    v4 = HIDWORD(v2);
    if (HIDWORD(v2))
    {
      v5 = 0;
    }

    else
    {
      v5 = v2 == 0;
    }

    if (!v5)
    {
      if (qword_1025D48A0 != -1)
      {
        sub_1018C6BA0();
      }

      v6 = qword_1025D48A8;
      if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_FAULT))
      {
        *buf = 67240448;
        v8 = v3;
        v9 = 1026;
        v10 = v4;
        _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_FAULT, "Registration dictionary copy returned: %{public}d %{public}d", buf, 0xEu);
      }

      if (sub_10000A100(121, 0))
      {
        sub_1018C7030(v3, v4);
      }
    }

    return 0;
  }

  return result;
}

id sub_10057E700(uint64_t a1, uint64_t a2)
{
  if (qword_1025D48A0 != -1)
  {
    sub_100248B5C();
  }

  v4 = qword_1025D48A8;
  if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
  {
    v6[0] = 68289026;
    v6[1] = 0;
    v7 = 2082;
    v8 = "";
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#irat CLTelephonyService fetching Irat-StreamingInfo}", v6, 0x12u);
  }

  return sub_100F699BC(*(a1 + 152), a2);
}

uint64_t sub_10057E81C(uint64_t a1, uint64_t *a2)
{
  if (qword_1025D48A0 != -1)
  {
    sub_100248B5C();
  }

  v4 = qword_1025D48A8;
  if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "CELL_LOC: getting detected cells", buf, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018C713C();
  }

  theArray = 0;
  v49 = 0;
  v46 = 0;
  v47 = 0;
  v48 = 0;
  v6 = *a2;
  for (i = a2[1]; i != v6; sub_1000720CC(i))
  {
    i -= 696;
  }

  a2[1] = v6;
  if ((*(a1 + 160) & 1) == 0)
  {
    if (qword_1025D48A0 != -1)
    {
      sub_1018C6BA0();
    }

    v7 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
    {
      v8 = *(a1 + 160);
      *buf = 68289282;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      *&buf[18] = 1026;
      *&buf[20] = v8;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:DaemonNotReady for CT SPI, fDaemonReady:%{public}hhd}", buf, 0x18u);
    }
  }

  if (*(a1 + 144))
  {
    v9 = _CTServerConnectionCellMonitorCopyCellInfo();
    if (v49)
    {
      v10 = theArray == 0;
    }

    else
    {
      v10 = 1;
    }

    v11 = !v10 && v9 == 0;
    v12 = v11;
    v44 = v12;
    if (v11)
    {
      Count = CFArrayGetCount(theArray);
      if (qword_1025D48A0 != -1)
      {
        sub_1018C6BA0();
      }

      v14 = qword_1025D48A8;
      if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
      {
        *buf = 67109120;
        *&buf[4] = Count;
        _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_DEBUG, "CELL_LOC: processing %d dictionaries (detected)", buf, 8u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1018C7228(buf);
        *v55 = 67109120;
        *&v55[4] = Count;
        v43 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "BOOL CLTelephonyService::getDetectedCells(std::vector<CLCell> &)", "%s\n", v43);
        if (v43 != buf)
        {
          free(v43);
        }
      }

      if (Count >= 1)
      {
        v15 = 0;
        v16 = kCTCellMonitorDerivedMCC;
        do
        {
          ValueAtIndex = CFArrayGetValueAtIndex(theArray, v15);
          v18 = CFGetTypeID(ValueAtIndex);
          if (v18 == CFDictionaryGetTypeID())
          {
            v45 = ValueAtIndex;
            if (CFDictionaryContainsKey(ValueAtIndex, v16))
            {
              if (qword_1025D48A0 != -1)
              {
                sub_1018C6BA0();
              }

              v19 = qword_1025D48A8;
              if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
              {
                *buf = 0;
                _os_log_impl(dword_100000000, v19, OS_LOG_TYPE_DEBUG, "CELL_LOC: derivedMCC dictionary", buf, 2u);
              }

              if (sub_10000A100(121, 2))
              {
                sub_1018C7228(buf);
                *v55 = 0;
                v26 = _os_log_send_and_compose_impl();
                sub_100152C7C("Generic", 1, 0, 2, "BOOL CLTelephonyService::getDetectedCells(std::vector<CLCell> &)", "%s\n", v26);
                if (v26 != buf)
                {
                  free(v26);
                }
              }

              sub_100585A08(&v45, &v46);
            }

            else
            {
              sub_10006BCBC(v55, &v45);
              if (*&v55[4] == 2)
              {
                sub_100586008(a2, v55);
              }

              if (qword_1025D48A0 != -1)
              {
                sub_1018C6BA0();
              }

              v22 = qword_1025D48A8;
              if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
              {
                sub_10123DED0(v55, buf);
                v23 = buf;
                if (buf[23] < 0)
                {
                  v23 = *buf;
                }

                *v51 = 136315138;
                *&v51[4] = v23;
                _os_log_impl(dword_100000000, v22, OS_LOG_TYPE_DEBUG, "CELL_LOC: Adding cell, %s", v51, 0xCu);
                if ((buf[23] & 0x80000000) != 0)
                {
                  operator delete(*buf);
                }
              }

              if (sub_10000A100(121, 2))
              {
                sub_1018C7228(buf);
                sub_10123DED0(v55, v51);
                v27 = v51;
                if (v52 < 0)
                {
                  v27 = *v51;
                }

                v53 = 136315138;
                v54 = v27;
                v28 = _os_log_send_and_compose_impl();
                if (v52 < 0)
                {
                  operator delete(*v51);
                }

                sub_100152C7C("Generic", 1, 0, 2, "BOOL CLTelephonyService::getDetectedCells(std::vector<CLCell> &)", "%s\n", v28);
                if (v28 != buf)
                {
                  free(v28);
                }
              }

              if (v63 < 0)
              {
                operator delete(__p);
              }

              if (v60)
              {
                v61 = v60;
                operator delete(v60);
              }
            }
          }

          else
          {
            if (qword_1025D48A0 != -1)
            {
              sub_1018C6BA0();
            }

            v20 = qword_1025D48A8;
            if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_FAULT))
            {
              TypeID = CFDictionaryGetTypeID();
              *buf = 134349056;
              *&buf[4] = TypeID;
              _os_log_impl(dword_100000000, v20, OS_LOG_TYPE_FAULT, "CELL_LOC: Invalid dictionary %{public}ld", buf, 0xCu);
            }

            if (sub_10000A100(121, 0))
            {
              sub_1018C7228(buf);
              v24 = CFDictionaryGetTypeID();
              *v55 = 134349056;
              *&v55[4] = v24;
              v25 = _os_log_send_and_compose_impl();
              sub_100152C7C("Generic", 1, 0, 0, "BOOL CLTelephonyService::getDetectedCells(std::vector<CLCell> &)", "%s\n", v25);
              if (v25 != buf)
              {
                free(v25);
              }
            }
          }

          ++v15;
        }

        while (Count != v15);
      }

      if (v47 != v46)
      {
        for (j = *a2; j != a2[1]; j += 696)
        {
          if ((*(j + 8) - 3) <= 2)
          {
            sub_10123F038(j, &v46);
            if (qword_1025D48A0 != -1)
            {
              sub_1018C6BA0();
            }

            v33 = qword_1025D48A8;
            if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
            {
              sub_10123DED0(j, buf);
              v34 = buf[23] >= 0 ? buf : *buf;
              *v55 = 136315138;
              *&v55[4] = v34;
              _os_log_impl(dword_100000000, v33, OS_LOG_TYPE_DEBUG, "CELL_LOC: Updating Cell, %s", v55, 0xCu);
              if ((buf[23] & 0x80000000) != 0)
              {
                operator delete(*buf);
              }
            }

            if (sub_10000A100(121, 2))
            {
              sub_1018C7228(buf);
              sub_10123DED0(j, v55);
              v35 = v55;
              if (SHIBYTE(v57) < 0)
              {
                v35 = *v55;
              }

              *v51 = 136315138;
              *&v51[4] = v35;
              v36 = _os_log_send_and_compose_impl();
              if (SHIBYTE(v57) < 0)
              {
                operator delete(*v55);
              }

              sub_100152C7C("Generic", 1, 0, 2, "BOOL CLTelephonyService::getDetectedCells(std::vector<CLCell> &)", "%s\n", v36);
              if (v36 != buf)
              {
                free(v36);
              }
            }
          }
        }
      }
    }

    else
    {
      if (qword_1025D48A0 != -1)
      {
        sub_1018C6BA0();
      }

      v30 = qword_1025D48A8;
      if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109888;
        *&buf[4] = v9;
        *&buf[8] = 1024;
        *&buf[10] = HIDWORD(v9);
        *&buf[14] = 2048;
        *&buf[16] = theArray;
        v65 = 1024;
        v66 = v49;
        _os_log_impl(dword_100000000, v30, OS_LOG_TYPE_DEFAULT, "#Warning CELL_LOC: _CTServerConnectionCellMonitorCopyCellInfo failed err(%d,%d) cellsArray(%p) valid(%d)", buf, 0x1Eu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1018C7228(buf);
        *v55 = 67109888;
        *&v55[4] = v9;
        *&v55[8] = 1024;
        *&v55[10] = HIDWORD(v9);
        v56 = 2048;
        v57 = theArray;
        v58 = 1024;
        v59 = v49;
        v31 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "BOOL CLTelephonyService::getDetectedCells(std::vector<CLCell> &)", "%s\n", v31);
        if (v31 != buf)
        {
          free(v31);
        }
      }
    }

    if (theArray)
    {
      CFRelease(theArray);
    }

    if (qword_1025D48A0 != -1)
    {
      sub_1018C6BA0();
    }

    v37 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
    {
      v38 = 0x66FD0EB66FD0EB67 * ((a2[1] - *a2) >> 3);
      *buf = 134217984;
      *&buf[4] = v38;
      _os_log_impl(dword_100000000, v37, OS_LOG_TYPE_DEBUG, "CELL_LOC: detected cells,%lu", buf, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018C7228(buf);
      v40 = 0x66FD0EB66FD0EB67 * ((a2[1] - *a2) >> 3);
      *v55 = 134217984;
      *&v55[4] = v40;
      v41 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "BOOL CLTelephonyService::getDetectedCells(std::vector<CLCell> &)", "%s\n", v41);
      if (v41 != buf)
      {
        free(v41);
      }
    }
  }

  else
  {
    if (qword_1025D48A0 != -1)
    {
      sub_1018C6BA0();
    }

    v29 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v29, OS_LOG_TYPE_DEBUG, "currently not connected to telephony service", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018C7228(buf);
      *v55 = 0;
      v42 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "BOOL CLTelephonyService::getDetectedCells(std::vector<CLCell> &)", "%s\n", v42);
      if (v42 != buf)
      {
        free(v42);
      }
    }

    v44 = 0;
  }

  if (v46)
  {
    v47 = v46;
    operator delete(v46);
  }

  return v44;
}

void sub_10057F4AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10057F5A0(uint64_t a1)
{
  v1 = sub_10058517C(a1);
  if (v1)
  {
    return sub_100584F18(v1, 0);
  }

  else
  {
    return 11;
  }
}

uint64_t sub_10057F614(uint64_t a1, int a2)
{
  v2 = sub_100913868(a1 + 176, a2);
  v3 = [(__CFString *)v2 length];
  if (!v3)
  {
    return 11;
  }

  return sub_100584F18(v3, v2);
}

uint64_t sub_10057F70C(uint64_t a1, int a2)
{
  v3 = sub_100913858(a1 + 176, a2);
  v4 = sub_1000ED2E4(v3);
  v5 = v4;
  if (v4 <= 3 && v4 != 2)
  {
    if (sub_10057DBB8(a1))
    {
      return 7;
    }

    else
    {
      return v5;
    }
  }

  return v5;
}

uint64_t sub_10057F7E8(uint64_t a1, int a2)
{
  if (qword_1025D4600 != -1)
  {
    sub_1018C726C();
  }

  v4 = qword_1025D4608;
  if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
  {
    *v6 = 0;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "CLTelephonyService, Refresh Cell Monitor", v6, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018C7364();
  }

  sub_1001CCDA8(a1 + 176, a2);
  return 1;
}

void sub_10057F918(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_10057F934(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 160) & 1) == 0)
  {
    if (qword_1025D48A0 != -1)
    {
      sub_100248B5C();
    }

    v4 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
    {
      v5 = *(a1 + 160);
      *buf = 68289282;
      *&buf[4] = 0;
      v12 = 2082;
      v13 = "";
      v14 = 1026;
      v15 = v5;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:DaemonNotReady for CT SPI, fDaemonReady:%{public}hhd}", buf, 0x18u);
    }
  }

  if (!*(a1 + 144))
  {
    if (qword_1025D48A0 != -1)
    {
      sub_1018C6BA0();
    }

    v8 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEBUG, "currently not connected to telephony service", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018C752C();
    }

    return 0;
  }

  *buf = 0;
  if (_CTServerConnectionCopyOperatorName())
  {
    if (qword_1025D48A0 != -1)
    {
      sub_1018C6BA0();
    }

    v6 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_FAULT))
    {
      *v10 = 0;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_FAULT, "_CTServerConnectionCopyOperatorName failed", v10, 2u);
    }

    v7 = 0;
    if (sub_10000A100(121, 0))
    {
      sub_1018C7448();
      v7 = 0;
    }

    goto LABEL_23;
  }

  if (!*buf)
  {
    return 0;
  }

  v7 = sub_100005A24(*buf, a2);
LABEL_23:
  if (*buf)
  {
    CFRelease(*buf);
  }

  return v7;
}

void sub_10057FC08(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10057FCA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_10057FCBC(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 160) & 1) == 0)
  {
    if (qword_1025D48A0 != -1)
    {
      sub_100248B5C();
    }

    v4 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
    {
      v5 = *(a1 + 160);
      *buf = 68289282;
      *&buf[4] = 0;
      v12 = 2082;
      v13 = "";
      v14 = 1026;
      v15 = v5;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:DaemonNotReady for CT SPI, fDaemonReady:%{public}hhd}", buf, 0x18u);
    }
  }

  if (!*(a1 + 144))
  {
    if (qword_1025D48A0 != -1)
    {
      sub_1018C6BA0();
    }

    v8 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEBUG, "currently not connected to telephony service", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018C76F4();
    }

    return 0;
  }

  *buf = 0;
  if (_CTServerConnectionCopyProviderNameUsingCarrierBundle())
  {
    if (qword_1025D48A0 != -1)
    {
      sub_1018C6BA0();
    }

    v6 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_FAULT))
    {
      *v10 = 0;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_FAULT, "_CTServerConnectionCopyProviderNameUsingCarrierBundle failed", v10, 2u);
    }

    v7 = 0;
    if (sub_10000A100(121, 0))
    {
      sub_1018C7610();
      v7 = 0;
    }

    goto LABEL_23;
  }

  if (!*buf)
  {
    return 0;
  }

  v7 = sub_100005A24(*buf, a2);
LABEL_23:
  if (*buf)
  {
    CFRelease(*buf);
  }

  return v7;
}

BOOL sub_10057FF4C(uint64_t a1)
{
  if ((*(a1 + 160) & 1) == 0)
  {
    if (qword_1025D48A0 != -1)
    {
      sub_100248B5C();
    }

    v2 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
    {
      v3 = *(a1 + 160);
      HIDWORD(v10) = 68289282;
      v11 = 0;
      v12 = 2082;
      v13 = "";
      v14 = 1026;
      v15 = v3;
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:DaemonNotReady for CT SPI, fDaemonReady:%{public}hhd}", &v10 + 4, 0x18u);
    }
  }

  if (*(a1 + 144))
  {
    v10 = 0;
    SignalStrength = _CTServerConnectionGetSignalStrength();
    v5 = SignalStrength == 0;
    if (SignalStrength)
    {
      if (qword_1025D48A0 != -1)
      {
        sub_1018C6BA0();
      }

      v6 = qword_1025D48A8;
      if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_FAULT))
      {
        *v9 = 0;
        _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_FAULT, "_CTServerConnectionGetSignalStrength failed", v9, 2u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_1018C77D8();
      }
    }
  }

  else
  {
    if (qword_1025D48A0 != -1)
    {
      sub_1018C6BA0();
    }

    v7 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
    {
      WORD2(v10) = 0;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEBUG, "currently not connected to telephony service", &v10 + 4, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018C78BC();
    }

    return 0;
  }

  return v5;
}

BOOL sub_100580340(uint64_t a1, char *cStr)
{
  if ((*(a1 + 160) & 1) == 0)
  {
    if (qword_1025D48A0 != -1)
    {
      sub_100248B5C();
    }

    v4 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
    {
      v5 = *(a1 + 160);
      v12[0] = 68289282;
      v12[1] = 0;
      v13 = 2082;
      v14 = "";
      v15 = 1026;
      v16 = v5;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:DaemonNotReady for CT SPI, fDaemonReady:%{public}hhd}", v12, 0x18u);
    }
  }

  if (*(a1 + 144))
  {
    v6 = sub_100053C00(cStr);
    v7 = _CTServerConnectionResetModemWithCrashLogs();
    v8 = v7 == 0;
    if (v7)
    {
      if (qword_1025D48A0 != -1)
      {
        sub_1018C6BA0();
      }

      v9 = qword_1025D48A8;
      if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_FAULT))
      {
        LOWORD(v12[0]) = 0;
        _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_FAULT, "_CTServerConnectionResetModemWithCrashLogs failed", v12, 2u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_1018C79C8();
        if (!v6)
        {
          return v8;
        }

        goto LABEL_14;
      }
    }

    if (v6)
    {
LABEL_14:
      CFRelease(v6);
    }
  }

  else
  {
    if (qword_1025D48A0 != -1)
    {
      sub_1018C6BA0();
    }

    v10 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v12[0]) = 0;
      _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEBUG, "currently not connected to telephony service", v12, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018C7AAC();
    }

    return 0;
  }

  return v8;
}

BOOL sub_1005805A4(uint64_t a1, char *cStr)
{
  if ((*(a1 + 160) & 1) == 0)
  {
    if (qword_1025D48A0 != -1)
    {
      sub_100248B5C();
    }

    v4 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
    {
      v5 = *(a1 + 160);
      v12[0] = 68289282;
      v12[1] = 0;
      v13 = 2082;
      v14 = "";
      v15 = 1026;
      v16 = v5;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:DaemonNotReady for CT SPI, fDaemonReady:%{public}hhd}", v12, 0x18u);
    }
  }

  if (*(a1 + 144))
  {
    v6 = sub_100053C00(cStr);
    v7 = _CTServerConnectionDumpBasebandState();
    v8 = v7 == 0;
    if (v7)
    {
      if (qword_1025D48A0 != -1)
      {
        sub_1018C6BA0();
      }

      v9 = qword_1025D48A8;
      if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_FAULT))
      {
        LOWORD(v12[0]) = 0;
        _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_FAULT, "_CTServerConnectionDumpBasebandState failed", v12, 2u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_1018C7B90();
        if (!v6)
        {
          return v8;
        }

        goto LABEL_14;
      }
    }

    if (v6)
    {
LABEL_14:
      CFRelease(v6);
    }
  }

  else
  {
    if (qword_1025D48A0 != -1)
    {
      sub_1018C6BA0();
    }

    v10 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v12[0]) = 0;
      _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEBUG, "currently not connected to telephony service", v12, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018C7C74();
    }

    return 0;
  }

  return v8;
}

uint64_t sub_1005807FC(uint64_t a1, uint64_t *a2, int a3)
{
  if (!sub_100585E1C(a1, a2, a3) || a2[1] != *a2)
  {
    return 1;
  }

  if (qword_1025D48A0 != -1)
  {
    sub_100248B5C();
  }

  v5 = qword_1025D48A8;
  if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEFAULT, "#Warning CELL_LOC: can't figure out the serving cell", v6, 2u);
  }

  result = sub_10000A100(121, 2);
  if (result)
  {
    sub_1018C7D58();
    return 0;
  }

  return result;
}

uint64_t sub_1005808E8(uint64_t a1, uint64_t a2)
{
  if (!(*(*a1 + 224))(a1) || !(*(*a1 + 232))(a1, a2 + 4))
  {
    return 0;
  }

  v4 = *(*a1 + 240);

  return v4(a1, a2 + 8, a2 + 12);
}

uint64_t sub_100580A20(unsigned int a1)
{
  v2 = sub_1000649A0();
  if (a1)
  {
    v3 = 255;
  }

  else
  {
    v3 = 0;
  }

  if (a1 >= 2)
  {
    v4 = 255;
  }

  else
  {
    v4 = a1;
  }

  if (v2)
  {
    return v4;
  }

  else
  {
    return v3;
  }
}

BOOL sub_100580A60(unsigned int a1)
{
  v2 = sub_1000649A0();
  v3 = 1;
  if (a1)
  {
    v3 = 2;
  }

  if (a1 > 1)
  {
    v3 = 0;
  }

  if (v2)
  {
    return v3;
  }

  else
  {
    return a1 == 0;
  }
}

uint64_t sub_100580AA8(uint64_t a1)
{
  if (a1 == 2)
  {
    v1 = 1;
  }

  else
  {
    v1 = 255;
  }

  if (a1 == 1)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_100580AC0(int a1)
{
  v1 = 1;
  if (a1 == 1)
  {
    v1 = 2;
  }

  if (a1 == 255)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_100580AD8(int a1)
{
  if (a1 == 255)
  {
    v1 = 255;
  }

  else
  {
    v1 = 0;
  }

  if ((a1 - 2) >= 2)
  {
    return v1;
  }

  else
  {
    return 1;
  }
}

uint64_t sub_100580AF8(uint64_t result)
{
  if (result != 1)
  {
    if (result == 255)
    {
      return result;
    }

    if (result != 3)
    {
      return 0;
    }
  }

  return 1;
}

int *sub_100580B20(int *a1, int a2, __int128 *a3, __int128 *a4, uint64_t a5)
{
  *a1 = a2;
  if (*(a3 + 23) < 0)
  {
    sub_100007244(a1 + 8, *a3, *(a3 + 1));
  }

  else
  {
    v8 = *a3;
    *(a1 + 3) = *(a3 + 2);
    *(a1 + 2) = v8;
  }

  *(a1 + 32) = 1;
  if (*(a4 + 23) < 0)
  {
    sub_100007244(a1 + 40, *a4, *(a4 + 1));
  }

  else
  {
    v9 = *a4;
    *(a1 + 7) = *(a4 + 2);
    *(a1 + 10) = v9;
  }

  *(a1 + 64) = 1;
  sub_10004FD18(a1 + 18);
  *(a1 + 88) = 1;
  sub_10004FD18(a1 + 24);
  *(a1 + 112) = 1;
  sub_10004FD18(a1 + 30);
  *(a1 + 136) = 1;
  if (!sub_100185B50(a5, @"Location", a1 + 9))
  {
    if (qword_1025D4870 != -1)
    {
      sub_1018C7FD0();
    }

    v10 = qword_1025D4878;
    if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *a1;
      *buf = 67240192;
      v21 = v11;
      _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEFAULT, "#BundleInfo,constructor,unable to get location dict,descriptor,%{public}d", buf, 8u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018C7FE4(buf);
      v17 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "CLTelephonyService_Type::BundleInfo::BundleInfo(BundleDescriptor, const std::string &, const std::string &, const CLNameValuePair &)", "%s\n", v17);
      if (v17 != buf)
      {
        free(v17);
      }
    }
  }

  if (!sub_100185B50(a5, @"SUPL", a1 + 12))
  {
    if (qword_1025D4870 != -1)
    {
      sub_1018C8028();
    }

    v12 = qword_1025D4878;
    if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_DEFAULT))
    {
      v13 = *a1;
      *buf = 67240192;
      v21 = v13;
      _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_DEFAULT, "#BundleInfo,constructor,unable to get SUPL dict,descriptor,%{public}d", buf, 8u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018C7FE4(buf);
      v18 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "CLTelephonyService_Type::BundleInfo::BundleInfo(BundleDescriptor, const std::string &, const std::string &, const CLNameValuePair &)", "%s\n", v18);
      if (v18 != buf)
      {
        free(v18);
      }
    }
  }

  if (!sub_100185B50(a5, @"LocationSecondaryOverlay", a1 + 15))
  {
    if (qword_1025D4870 != -1)
    {
      sub_1018C8028();
    }

    v14 = qword_1025D4878;
    if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_DEFAULT))
    {
      v15 = *a1;
      *buf = 67240192;
      v21 = v15;
      _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_DEFAULT, "#BundleInfo,constructor,unable to get secondary settings dict,descriptor,%{public}d", buf, 8u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018C7FE4(buf);
      v19 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "CLTelephonyService_Type::BundleInfo::BundleInfo(BundleDescriptor, const std::string &, const std::string &, const CLNameValuePair &)", "%s\n", v19);
      if (v19 != buf)
      {
        free(v19);
      }
    }
  }

  return a1;
}

void sub_100580FB8(_Unwind_Exception *a1)
{
  sub_100005DA4(v1 + 120);
  sub_100005DA4(v1 + 96);
  sub_100005DA4(v1 + 72);
  if (*(v1 + 63) < 0)
  {
    operator delete(*(v1 + 40));
  }

  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(a1);
}

const __CFString *sub_100581034(_DWORD *a1)
{
  if ((*a1 - 2) < 2)
  {
    return @"kSlotTwo";
  }

  if (*a1 != 255)
  {
    return @"kSlotOne";
  }

  if (qword_1025D4870 != -1)
  {
    sub_1018C7FD0();
  }

  v3 = qword_1025D4878;
  if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_ERROR))
  {
    if (*a1 == 255)
    {
      v4 = 255;
    }

    else
    {
      v4 = 0;
    }

    if ((*a1 - 2) < 2)
    {
      v4 = 1;
    }

    v5[0] = 67240192;
    v5[1] = v4;
    _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_ERROR, "#BundleInfo,getKeyForSim,unexpected sim,%{public}d", v5, 8u);
  }

  if (sub_10000A100(121, 0))
  {
    sub_1018C8050(a1);
  }

  return 0;
}

const __CFString *sub_10058115C(int *a1)
{
  v1 = *a1;
  if (*a1 == 1 || v1 == 3)
  {
    return @"Operator";
  }

  if (v1 != 255)
  {
    return @"Carrier";
  }

  if (qword_1025D4870 != -1)
  {
    sub_1018C7FD0();
  }

  v5 = qword_1025D4878;
  if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_ERROR))
  {
    v6 = *a1;
    if (*a1 != 1)
    {
      if (v6 == 255)
      {
LABEL_17:
        v7[0] = 67240192;
        v7[1] = v6;
        _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_ERROR, "#BundleInfo,getKeyForBundleType,unexpected bundle type,%{public}d", v7, 8u);
        goto LABEL_18;
      }

      if (v6 != 3)
      {
        v6 = 0;
        goto LABEL_17;
      }
    }

    v6 = 1;
    goto LABEL_17;
  }

LABEL_18:
  if (sub_10000A100(121, 0))
  {
    sub_1018C8150(a1);
  }

  return 0;
}

void sub_10058128C(int *a1, int *cf1, const __CFDictionary *a3)
{
  if (CFEqual(cf1, @"Location"))
  {

    sub_10058148C(a1, a3);
  }

  else if (CFEqual(cf1, @"SUPL"))
  {

    sub_1005814EC(a1, a3);
  }

  else if (CFEqual(cf1, @"LocationSecondaryOverlay"))
  {

    sub_10058154C(a1, a3);
  }

  else
  {
    if (qword_1025D4870 != -1)
    {
      sub_1018C7FD0();
    }

    v6 = qword_1025D4878;
    if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_ERROR))
    {
      v7 = *a1;
      v8 = 138478083;
      v9 = cf1;
      v10 = 1026;
      v11 = v7;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_ERROR, "#BundleInfo,setDict,called with unexpected dictName,%{private}@,descriptor,%{public}d", &v8, 0x12u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018C8254(cf1, a1);
    }
  }
}

uint64_t sub_10058148C(uint64_t a1, const __CFDictionary *a2)
{
  *(a1 + 88) = 1;
  sub_100005548(v4, a2);
  sub_1004F9A30(a1 + 72, v4);
  return sub_100005DA4(v4);
}

uint64_t sub_1005814EC(uint64_t a1, const __CFDictionary *a2)
{
  *(a1 + 112) = 1;
  sub_100005548(v4, a2);
  sub_1004F9A30(a1 + 96, v4);
  return sub_100005DA4(v4);
}

uint64_t sub_10058154C(uint64_t a1, const __CFDictionary *a2)
{
  *(a1 + 136) = 1;
  sub_100005548(v4, a2);
  sub_1004F9A30(a1 + 120, v4);
  return sub_100005DA4(v4);
}

const __CFString *sub_1005815AC(uint64_t a1, void *a2)
{
  if (qword_1025D4870 != -1)
  {
    sub_1018C7FD0();
  }

  v4 = qword_1025D4878;
  if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_DEBUG))
  {
    v5 = *a1;
    *buf = 67240192;
    v23 = v5;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "#BundleInfo,writeToDict,descriptor,%{public}d", buf, 8u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018C836C(a1);
  }

  result = sub_100581034(a1);
  if (result)
  {
    v7 = result;
    result = sub_10058115C(a1);
    if (result)
    {
      v8 = result;
      v9 = (a1 + 8);
      if (*(a1 + 31) < 0)
      {
        v9 = *v9;
      }

      v10 = [NSString stringWithUTF8String:v9];
      v11 = (a1 + 40);
      if (*(a1 + 63) < 0)
      {
        v11 = *v11;
      }

      v12 = [NSString stringWithUTF8String:v11];
      v13 = sub_10007005C(a1 + 72);
      v14 = CFPropertyListCreateDeepCopy(kCFAllocatorDefault, v13, 1uLL);
      v15 = sub_10007005C(a1 + 96);
      v16 = CFPropertyListCreateDeepCopy(kCFAllocatorDefault, v15, 1uLL);
      v17 = sub_10007005C(a1 + 120);
      v20[0] = @"kBundleIDKey";
      v20[1] = @"kBundleVersionKey";
      v21[0] = v10;
      v21[1] = v12;
      v20[2] = @"Location";
      v20[3] = @"SUPL";
      v21[2] = v14;
      v21[3] = v16;
      v20[4] = @"LocationSecondaryOverlay";
      v21[4] = CFPropertyListCreateDeepCopy(kCFAllocatorDefault, v17, 1uLL);
      v18 = [NSDictionary dictionaryWithObjects:v21 forKeys:v20 count:5];
      v19 = [a2 objectForKey:v7];
      if (!v19)
      {
        v19 = objc_alloc_init(NSMutableDictionary);
        [a2 setObject:v19 forKey:v7];
      }

      return [v19 setObject:v18 forKey:v8];
    }
  }

  return result;
}

void sub_100581810(uint64_t a1, void *a2)
{
  sub_100582020(a1);
  if (qword_1025D4870 != -1)
  {
    sub_1018C7FD0();
  }

  v4 = qword_1025D4878;
  if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_DEBUG))
  {
    v5 = *a1;
    LODWORD(v43) = 67240192;
    HIDWORD(v43) = v5;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "#BundleInfo,readFromDict,descriptor,%{public}d", &v43, 8u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018C8460(a1);
  }

  v6 = sub_100581034(a1);
  if (v6)
  {
    v7 = sub_10058115C(a1);
    if (v7)
    {
      v8 = [a2 objectForKey:v6];
      if (v8)
      {
        v9 = [v8 objectForKey:v7];
        v10 = v9;
        if (v9)
        {
          v11 = [v9 objectForKey:@"kBundleIDKey"];
          if (v11)
          {
            sub_100006044((a1 + 8), [v11 UTF8String]);
            v12 = [v10 objectForKey:@"Location"];
            if (v12)
            {
              DeepCopy = CFPropertyListCreateDeepCopy(kCFAllocatorDefault, v12, 1uLL);
              sub_1004F98D4(&v43, DeepCopy);
              sub_1004F9A30(a1 + 72, &v43);
              sub_100005DA4(&v43);
              CFRelease(DeepCopy);
              v14 = [v10 objectForKey:@"SUPL"];
              if (v14)
              {
                v15 = CFPropertyListCreateDeepCopy(kCFAllocatorDefault, v14, 1uLL);
                sub_1004F98D4(&v43, v15);
                sub_1004F9A30(a1 + 96, &v43);
                sub_100005DA4(&v43);
                CFRelease(v15);
                v16 = [v10 objectForKey:@"LocationSecondaryOverlay"];
                if (v16)
                {
                  v17 = CFPropertyListCreateDeepCopy(kCFAllocatorDefault, v16, 1uLL);
                  sub_1004F98D4(&v43, v17);
                  sub_1004F9A30(a1 + 120, &v43);
                  sub_100005DA4(&v43);
                  CFRelease(v17);
                  v18 = [v10 objectForKey:@"kBundleVersionKey"];
                  if (v18)
                  {
                    sub_100006044((a1 + 40), [v18 UTF8String]);
                    return;
                  }

                  if (qword_1025D4870 != -1)
                  {
                    sub_1018C8028();
                  }

                  v37 = qword_1025D4878;
                  if (!os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_ERROR))
                  {
                    goto LABEL_116;
                  }

                  v38 = *a1;
                  if ((*a1 - 2) >= 2)
                  {
                    v39 = *a1;
                    if (v38 == 255)
                    {
                      goto LABEL_109;
                    }

                    v39 = 0;
                  }

                  else
                  {
                    v39 = 1;
                  }

                  if (v38 == 1)
                  {
LABEL_104:
                    v42 = 1;
LABEL_115:
                    LODWORD(v43) = 67240448;
                    HIDWORD(v43) = v39;
                    v44 = 1026;
                    v45 = v42;
                    _os_log_impl(dword_100000000, v37, OS_LOG_TYPE_ERROR, "#BundleInfo,readFromDict,no entry for bundle Version,sim,%{public}d,bundle type,%{public}d", &v43, 0xEu);
LABEL_116:
                    if (sub_10000A100(121, 0))
                    {
                      sub_1018C855C();
                    }

                    return;
                  }

                  if (v38 != 255)
                  {
                    if (v38 != 3)
                    {
                      v42 = 0;
                      goto LABEL_115;
                    }

                    goto LABEL_104;
                  }

LABEL_109:
                  v42 = 255;
                  goto LABEL_115;
                }

                if (qword_1025D4870 != -1)
                {
                  sub_1018C8028();
                }

                v33 = qword_1025D4878;
                if (!os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_112;
                }

                v34 = *a1;
                if ((*a1 - 2) >= 2)
                {
                  v35 = *a1;
                  if (v34 == 255)
                  {
                    goto LABEL_98;
                  }

                  v35 = 0;
                }

                else
                {
                  v35 = 1;
                }

                if (v34 == 1)
                {
LABEL_93:
                  v41 = 1;
LABEL_111:
                  LODWORD(v43) = 67240448;
                  HIDWORD(v43) = v35;
                  v44 = 1026;
                  v45 = v41;
                  _os_log_impl(dword_100000000, v33, OS_LOG_TYPE_ERROR, "#BundleInfo,readFromDict,no entry for secondary settings dict,sim,%{public}d,bundle type,%{public}d", &v43, 0xEu);
LABEL_112:
                  if (sub_10000A100(121, 0))
                  {
                    sub_1018C869C();
                  }

                  return;
                }

                if (v34 != 255)
                {
                  if (v34 != 3)
                  {
                    v41 = 0;
                    goto LABEL_111;
                  }

                  goto LABEL_93;
                }

LABEL_98:
                v41 = 255;
                goto LABEL_111;
              }

              if (qword_1025D4870 != -1)
              {
                sub_1018C8028();
              }

              v29 = qword_1025D4878;
              if (!os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_107;
              }

              v30 = *a1;
              if ((*a1 - 2) >= 2)
              {
                v31 = *a1;
                if (v30 == 255)
                {
                  goto LABEL_87;
                }

                v31 = 0;
              }

              else
              {
                v31 = 1;
              }

              if (v30 == 1)
              {
LABEL_82:
                v40 = 1;
LABEL_106:
                LODWORD(v43) = 67240448;
                HIDWORD(v43) = v31;
                v44 = 1026;
                v45 = v40;
                _os_log_impl(dword_100000000, v29, OS_LOG_TYPE_ERROR, "#BundleInfo,readFromDict,no entry for SUPL dict,sim,%{public}d,bundle type,%{public}d", &v43, 0xEu);
LABEL_107:
                if (sub_10000A100(121, 0))
                {
                  sub_1018C87DC();
                }

                return;
              }

              if (v30 != 255)
              {
                if (v30 != 3)
                {
                  v40 = 0;
                  goto LABEL_106;
                }

                goto LABEL_82;
              }

LABEL_87:
              v40 = 255;
              goto LABEL_106;
            }

            if (qword_1025D4870 != -1)
            {
              sub_1018C8028();
            }

            v26 = qword_1025D4878;
            if (!os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_96;
            }

            v27 = *a1;
            if ((*a1 - 2) >= 2)
            {
              v28 = *a1;
              if (v27 == 255)
              {
                goto LABEL_76;
              }

              v28 = 0;
            }

            else
            {
              v28 = 1;
            }

            if (v27 == 1)
            {
LABEL_70:
              v36 = 1;
LABEL_95:
              LODWORD(v43) = 67240448;
              HIDWORD(v43) = v28;
              v44 = 1026;
              v45 = v36;
              _os_log_impl(dword_100000000, v26, OS_LOG_TYPE_ERROR, "#BundleInfo,readFromDict,no entry for location dict,sim,%{public}d,bundle type,%{public}d", &v43, 0xEu);
LABEL_96:
              if (sub_10000A100(121, 0))
              {
                sub_1018C891C();
              }

              return;
            }

            if (v27 != 255)
            {
              if (v27 != 3)
              {
                v36 = 0;
                goto LABEL_95;
              }

              goto LABEL_70;
            }

LABEL_76:
            v36 = 255;
            goto LABEL_95;
          }

          if (qword_1025D4870 != -1)
          {
            sub_1018C8028();
          }

          v23 = qword_1025D4878;
          if (!os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_85;
          }

          v24 = *a1;
          if ((*a1 - 2) >= 2)
          {
            v25 = *a1;
            if (v24 == 255)
            {
              goto LABEL_60;
            }

            v25 = 0;
          }

          else
          {
            v25 = 1;
          }

          if (v24 == 1)
          {
LABEL_54:
            v32 = 1;
LABEL_84:
            LODWORD(v43) = 67240448;
            HIDWORD(v43) = v25;
            v44 = 1026;
            v45 = v32;
            _os_log_impl(dword_100000000, v23, OS_LOG_TYPE_ERROR, "#BundleInfo,readFromDict,no entry for bundle ID,sim,%{public}d,bundle type,%{public}d", &v43, 0xEu);
LABEL_85:
            if (sub_10000A100(121, 0))
            {
              sub_1018C8A5C();
            }

            return;
          }

          if (v24 != 255)
          {
            if (v24 != 3)
            {
              v32 = 0;
              goto LABEL_84;
            }

            goto LABEL_54;
          }

LABEL_60:
          v32 = 255;
          goto LABEL_84;
        }

        if (qword_1025D4870 != -1)
        {
          sub_1018C8028();
        }

        v21 = qword_1025D4878;
        if (!os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_63;
        }

        v22 = *a1;
        if (*a1 != 1)
        {
          if (v22 == 255)
          {
LABEL_62:
            LODWORD(v43) = 67240192;
            HIDWORD(v43) = v22;
            _os_log_impl(dword_100000000, v21, OS_LOG_TYPE_ERROR, "#BundleInfo,readFromDict,no entry for this bundle type,%{public}d", &v43, 8u);
LABEL_63:
            if (sub_10000A100(121, 0))
            {
              sub_1018C8B9C();
            }

            return;
          }

          if (v22 != 3)
          {
            v22 = 0;
            goto LABEL_62;
          }
        }

        v22 = 1;
        goto LABEL_62;
      }

      if (qword_1025D4870 != -1)
      {
        sub_1018C8028();
      }

      v19 = qword_1025D4878;
      if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_ERROR))
      {
        v20 = *a1;
        if ((*a1 - 2) >= 2)
        {
          if (v20 != 255)
          {
            v20 = 0;
          }
        }

        else
        {
          v20 = 1;
        }

        LODWORD(v43) = 67240192;
        HIDWORD(v43) = v20;
        _os_log_impl(dword_100000000, v19, OS_LOG_TYPE_ERROR, "#BundleInfo,readFromDict,no entry for this sim,%{public}d", &v43, 8u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_1018C8CA8();
      }
    }
  }
}

uint64_t sub_100582020(uint64_t a1)
{
  sub_10058AA50(&v3, *a1);
  *a1 = v3;
  std::string::operator=((a1 + 8), &v4);
  *(a1 + 32) = v5;
  std::string::operator=((a1 + 40), &v6);
  *(a1 + 64) = v7;
  sub_1004F9A30(a1 + 72, v8);
  *(a1 + 88) = v8[16];
  sub_1004F9A30(a1 + 96, v9);
  *(a1 + 112) = v9[16];
  sub_1004F9A30(a1 + 120, v10);
  *(a1 + 136) = v10[16];
  return sub_10058AB28(&v3);
}

void sub_100582908(uint64_t a1, void *a2)
{
  v4 = sub_100582DB4(a1, "CLTelephonyService", a2);
  *v4 = off_102460258;
  *(v4 + 112) = 0;
  v5 = (v4 + 112);
  *(v4 + 120) = 0;
  *(v4 + 128) = 0;
  *(v4 + 136) = -1;
  *(v4 + 144) = 0;
  v6 = (v4 + 144);
  *(v4 + 152) = 0;
  *(v4 + 160) = 0;
  __asm { FMOV            V0.2S, #-1.0 }

  *(v4 + 164) = _D0;
  sub_100909D14(v4 + 176, a2);
  *(a1 + 736) = 0;
  *(a1 + 704) = 0u;
  *(a1 + 720) = 0u;
  sub_100582E60(a1);
  v12 = [*(a1 + 40) newTimer];
  *(a1 + 112) = v12;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_1005831D8;
  v18[3] = &unk_102449A78;
  v18[4] = a1;
  [v12 setHandler:v18];
  if (!*v6 && !sub_100583724(a1))
  {
    [*v5 setNextFireDelay:1.0];
  }

  LocalCenter = CFNotificationCenterGetLocalCenter();
  CFNotificationCenterAddObserver(LocalCenter, a1, sub_100583230, @"com.apple.locationd.DumpDiagnostics", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  sub_10001A3E8();
  *(a1 + 172) = sub_1000559EC();
  if (qword_1025D4620 != -1)
  {
    sub_100244210();
  }

  v14 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
  {
    v15 = *(a1 + 172);
    *buf = 67109120;
    *&buf[4] = v15;
    _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_DEBUG, "CELL_LOC: fHardwareType, %d", buf, 8u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018C923C(buf);
    v16 = *(a1 + 172);
    v19 = 67109120;
    v20 = v16;
    v17 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "CLTelephonyService::CLTelephonyService(id<CLIntersiloUniverse>)", "%s\n", v17);
    if (v17 != buf)
    {
      free(v17);
    }
  }

  operator new();
}

void sub_100582D1C(_Unwind_Exception *a1)
{
  v4 = *(v1 + 728);
  *(v1 + 728) = 0;
  if (v4)
  {
    operator delete();
  }

  v5 = *(v1 + 712);
  *(v1 + 712) = 0;
  if (v5)
  {
    operator delete();
  }

  sub_100909E60(v1 + 176);
  sub_10058345C(v2);
  sub_1005834B0(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_100582DB4(uint64_t a1, char *a2, void *a3)
{
  *a1 = off_102460648;
  sub_10000EC00((a1 + 8), a2);
  *(a1 + 32) = a3;
  *(a1 + 40) = [a3 silo];
  *(a1 + 48) = 0;
  *(a1 + 64) = 0;
  *(a1 + 56) = a1 + 64;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = a1 + 88;
  *(a1 + 104) = 0;
  *(a1 + 108) = 0;
  return a1;
}

void sub_100582E44(_Unwind_Exception *exception_object)
{
  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

void sub_100582E60(CFRunLoopSourceRef *a1)
{
  *connect = 0;
  v2 = IOServiceMatching("AppleBaseband");
  MatchingService = IOServiceGetMatchingService(kIOMainPortDefault, v2);
  if (MatchingService)
  {
    v4 = MatchingService;
    v5 = IOServiceOpen(MatchingService, mach_task_self_, 0, &connect[1]);
    if (v5)
    {
      v6 = v5;
      if (qword_1025D48A0 != -1)
      {
        sub_1018C6BA0();
      }

      v7 = qword_1025D48A8;
      if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
      {
        *buf = 67109120;
        LODWORD(v20) = v6;
        _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEBUG, "Could not open service (%#x)", buf, 8u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1018C9280(v6);
      }
    }

    else
    {
      v9 = IONotificationPortCreate(kIOMainPortDefault);
      if (v9)
      {
        v10 = v9;
        v11 = IOServiceAddInterestNotification(v9, v4, "IOGeneralInterest", sub_10027A4C8, a1, connect);
        if (v11)
        {
          v12 = v11;
          if (qword_1025D48A0 != -1)
          {
            sub_1018C6BA0();
          }

          v13 = qword_1025D48A8;
          if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
          {
            *buf = 67109120;
            LODWORD(v20) = v12;
            _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_DEBUG, "Could not add interest notification on service: %#x", buf, 8u);
          }

          if (sub_10000A100(121, 2))
          {
            sub_1018C9378(v12);
          }
        }

        else
        {
          RunLoopSource = IONotificationPortGetRunLoopSource(v10);
          a1[15] = RunLoopSource;
          if (RunLoopSource)
          {
            v16 = sub_100107858();
            CFRunLoopAddSource(v16, a1[15], kCFRunLoopCommonModes);
          }

          else
          {
            if (qword_1025D48A0 != -1)
            {
              sub_1018C6BA0();
            }

            v17 = qword_1025D48A8;
            if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
            {
              *buf = 0;
              _os_log_impl(dword_100000000, v17, OS_LOG_TYPE_DEBUG, "Could not create run loop source", buf, 2u);
            }

            if (sub_10000A100(121, 2))
            {
              sub_1018C9470();
            }
          }
        }
      }

      else
      {
        if (qword_1025D48A0 != -1)
        {
          sub_1018C6BA0();
        }

        v14 = qword_1025D48A8;
        if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_DEBUG, "Could not create notification port", buf, 2u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_1018C9554();
        }
      }
    }
  }

  else
  {
    if (qword_1025D48A0 != -1)
    {
      sub_100248B5C();
    }

    v8 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315138;
      v20 = "AppleBaseband";
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEBUG, "Could not find %s service", buf, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018C9638();
    }
  }
}

id sub_1005831D8(id result)
{
  v1 = *(result + 4);
  if (!*(v1 + 144))
  {
    result = sub_100583724(*(result + 4));
    if ((result & 1) == 0)
    {
      v2 = *(v1 + 112);

      return [v2 setNextFireDelay:1.0];
    }
  }

  return result;
}

void sub_100583230(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a2 + 32) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_1018C9738();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v15 = 1;
    v10 = _os_activity_create(dword_100000000, "CL: CLTelephonyService::onDumpDiagnostics", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v10, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_1018C974C();
    }

    v11 = qword_1025D47F8;
    if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68289538;
      v17 = 0;
      v18 = 2082;
      v19 = "";
      v20 = 2082;
      v21 = "activity";
      v22 = 2050;
      v23 = a2;
      _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLTelephonyService::onDumpDiagnostics, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v15 = 0;
  }

  v12 = [*(a2 + 32) silo];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10058AB84;
  v13[3] = &unk_10244FF80;
  v13[4] = a2;
  v13[5] = a1;
  v13[6] = a3;
  v13[7] = a4;
  v13[8] = a5;
  [v12 sync:v13];
  if (v15 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

uint64_t *sub_10058345C(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    sub_1003C93BC(v1 + 8, *(v1 + 16));
    operator delete();
  }

  return result;
}

uint64_t sub_1005834B0(uint64_t a1)
{
  *a1 = off_102460648;
  [*(a1 + 48) invalidate];

  sub_10018F070(a1 + 80, *(a1 + 88));
  sub_10047BD74(a1 + 56, *(a1 + 64));
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

uint64_t sub_100583534(void *a1)
{
  *a1 = off_102460258;
  v2 = a1[91];
  a1[91] = 0;
  if (v2)
  {
    operator delete();
  }

  v3 = a1[89];
  a1[89] = 0;
  if (v3)
  {
    operator delete();
  }

  sub_100909E60(a1 + 22);
  sub_10058345C(a1 + 19);

  return sub_1005834B0(a1);
}

void sub_1005835CC(void *a1)
{
  sub_100583534(a1);

  operator delete();
}

uint64_t sub_100583604(uint64_t a1)
{
  if (*(a1 + 120))
  {
    v2 = sub_100107858();
    CFRunLoopRemoveSource(v2, *(a1 + 120), kCFRunLoopCommonModes);
    *(a1 + 120) = 0;
  }

  [*(a1 + 112) invalidate];

  *(a1 + 112) = 0;
  v3 = *(a1 + 720);
  if (v3)
  {
    [v3 shutdown];
    v4 = *(a1 + 712);
    *(a1 + 712) = 0;
    if (v4)
    {
      operator delete();
    }

    *(a1 + 720) = 0;
  }

  v5 = *(a1 + 736);
  if (v5)
  {
    [v5 shutdown];
    v6 = *(a1 + 728);
    *(a1 + 728) = 0;
    if (v6)
    {
      operator delete();
    }

    *(a1 + 736) = 0;
  }

  return sub_1005836D8(a1);
}

uint64_t sub_1005836D8(uint64_t a1)
{
  *(a1 + 136) = -1;
  v2 = *(a1 + 128);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 128) = 0;
  }

  v3 = *(a1 + 144);
  if (v3)
  {
    CFRelease(v3);
    *(a1 + 144) = 0;
  }

  return 1;
}

BOOL sub_100583724(uint64_t a1)
{
  v11 = 0;
  v12 = a1;
  v14 = 0;
  v15 = 0;
  v13 = 0;
  v2 = _CTServerConnectionCreate();
  *(a1 + 144) = v2;
  if (v2)
  {
    sub_100107858();
    _CTServerConnectionAddToRunLoop();
    _CTServerConnectionRegisterForNotification();
    _CTServerConnectionRegisterForNotification();
    _CTServerConnectionRegisterForNotification();
    _CTServerConnectionRegisterForNotification();
    _CTServerConnectionRegisterForNotification();
    _CTServerConnectionRegisterForNotification();
    _CTServerConnectionRegisterForNotification();
    if (sub_10071CCC0() || sub_10006FB38())
    {
      _CTServerConnectionRegisterForNotification();
    }

    sub_100583A88(a1);
    if (qword_1025D48A0 != -1)
    {
      sub_1018C6BA0();
    }

    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG) || sub_10000A100(121, 2))
    {
      cf = 0;
      sub_10000EC00(__p, "unknown");
      _CTServerConnectionCopyFirmwareVersion();
      if (cf)
      {
        sub_100005A24(cf, __p);
        CFRelease(cf);
        cf = 0;
      }

      if (qword_1025D48A0 != -1)
      {
        sub_1018C6BA0();
      }

      v3 = qword_1025D48A8;
      if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
      {
        v4 = __p;
        if (v9 < 0)
        {
          v4 = __p[0];
        }

        *buf = 136315138;
        v19 = v4;
        _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEBUG, "CT Version: %s", buf, 0xCu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1018C7228(buf);
        v6 = __p;
        if (v9 < 0)
        {
          v6 = __p[0];
        }

        v16 = 136315138;
        v17 = v6;
        v7 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "BOOL CLTelephonyService::setupTelephony()", "%s\n", v7);
        if (v7 != buf)
        {
          free(v7);
        }
      }

      if (v9 < 0)
      {
        operator delete(__p[0]);
      }
    }
  }

  return v2 != 0;
}

void sub_100583A60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100583A88(uint64_t a1)
{
  if (qword_1025D48A0 != -1)
  {
    sub_100248B5C();
  }

  v2 = qword_1025D48A8;
  if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
  {
    sub_1000238CC(@"kCLTelephonyServiceConnectedNotification", __p);
    v3 = v6 >= 0 ? __p : __p[0];
    *buf = 136315138;
    v8 = v3;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEBUG, "sending notification for %s", buf, 0xCu);
    if (v6 < 0)
    {
      operator delete(__p[0]);
    }
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018C97CC();
  }

  (*(*a1 + 264))(a1, @"kCLTelephonyServiceConnectedNotification", 0);
  sub_1001CCD00(a1);
  sub_100583BE8(a1);
  return 1;
}

void sub_100583BE8(uint64_t a1)
{
  *(a1 + 161) = 0;
  if (*(a1 + 144))
  {
    v6 = 0;
    v2 = _CTServerConnectionIsInHomeCountry();
    if (qword_1025D4600 != -1)
    {
      sub_1018C79A0();
    }

    v3 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
    {
      *buf = 67109120;
      v8 = v6;
      _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEBUG, "refreshInHomeCountry, inHC, %d", buf, 8u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018C98DC(&v6);
      if (v2)
      {
        goto LABEL_8;
      }
    }

    else if (v2)
    {
LABEL_8:
      if (qword_1025D4600 != -1)
      {
        sub_1018C79A0();
      }

      v4 = qword_1025D4608;
      if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_ERROR))
      {
        *buf = 67240448;
        v8 = v2;
        v9 = 1026;
        v10 = HIDWORD(v2);
        _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_ERROR, "_CTServerConnectionIsInHomeCountry failed (%{public}d, %{public}d)", buf, 0xEu);
      }

      if (sub_10000A100(121, 0))
      {
        sub_1018C99D0(v2, HIDWORD(v2));
      }

      goto LABEL_22;
    }

    *(a1 + 161) = v6 == 1;
    goto LABEL_22;
  }

  if (qword_1025D4600 != -1)
  {
    sub_1018C726C();
  }

  v5 = qword_1025D4608;
  if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEBUG, "no server connection available", buf, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018C9ADC();
  }

LABEL_22:
  sub_1005849E0(a1);
}

uint64_t sub_100583E04(uint64_t a1, int a2)
{
  *(a1 + 136) = -1;
  v4 = *(a1 + 128);
  if (v4)
  {
    CFRelease(v4);
    *(a1 + 128) = 0;
  }

  if (a2)
  {
    if (qword_1025D48A0 != -1)
    {
      sub_100248B5C();
    }

    v5 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
    {
      sub_1000238CC(@"kCLTelephonyServiceDisconnectedNotification", __p);
      v6 = v9 >= 0 ? __p : __p[0];
      *buf = 136315138;
      v11 = v6;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEBUG, "sending notification for %s", buf, 0xCu);
      if (v9 < 0)
      {
        operator delete(__p[0]);
      }
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018C9BC0();
    }

    (*(*a1 + 264))(a1, @"kCLTelephonyServiceDisconnectedNotification", 0);
  }

  return 1;
}

void sub_100583F74(uint64_t a1, float a2, float a3)
{
  if (qword_1025D4650 != -1)
  {
    sub_1018C9CD0();
  }

  v6 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "#imd,handleUplinkFreqBwUpdate", buf, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018C9CE4();
  }

  v13 = 1;
  *buf = a2;
  v7 = sub_1004FD6F8(buf);
  *buf = a3;
  v8 = sub_1004FD6F8(buf);
  v9 = sub_1001CF0F0(&v13);
  v10 = v9;
  if (v7 && v8 && v9)
  {
    *buf = *&off_102460370;
    v16 = @"kUplinkBwKey";
    values[0] = v9;
    values[1] = v7;
    values[2] = v8;
    v11 = CFDictionaryCreate(0, buf, values, 3, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    v12 = v11;
    (*(*a1 + 256))(a1, @"kUplinkFreqBwNotification", v11);
  }

  else if (!v7)
  {
    goto LABEL_13;
  }

  CFRelease(v7);
LABEL_13:
  if (v8)
  {
    CFRelease(v8);
  }

  if (v10)
  {
    CFRelease(v10);
  }
}

uint64_t sub_10058415C(uint64_t a1, const __CFDictionary *a2)
{
  if (qword_1025D4650 != -1)
  {
    sub_1018C9CD0();
  }

  v4 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    *&buf[4] = a2;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEFAULT, "#cts,notification,%{public}@", buf, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018C9DC8(a2);
  }

  sub_100005548(v25, a2);
  cf1 = 0;
  v5 = sub_10006EB64(v25, kKeyCTCellularTransmitState, &cf1);
  if (cf1)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  if (v6 == 1)
  {
    if (qword_1025D4650 != -1)
    {
      sub_1018C9ECC();
    }

    v7 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000238CC(cf1, buf);
      v8 = v31 >= 0 ? buf : *buf;
      *v27 = 136446210;
      *&v27[4] = v8;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEFAULT, "#cts,state,%{public}s", v27, 0xCu);
      if (v31 < 0)
      {
        operator delete(*buf);
      }
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018C9EF4(buf);
      sub_1000238CC(cf1, v27);
      if (v28 >= 0)
      {
        v18 = v27;
      }

      else
      {
        v18 = *v27;
      }

      LODWORD(values[0]) = 136446210;
      *(values + 4) = v18;
      v19 = _os_log_send_and_compose_impl();
      if (v28 < 0)
      {
        operator delete(*v27);
      }

      sub_100152C7C("Generic", 1, 0, 2, "void CLTelephonyService::notifyCellularTransmiteState(CFDictionaryRef)", "%s\n", v19);
      if (v19 != buf)
      {
        free(v19);
      }
    }

    values[0] = 0;
    keys = @"kCLCellularTransmitStateNotification";
    if (CFEqual(cf1, kCTCellularTransmitStateConnected))
    {
      if (qword_1025D4650 != -1)
      {
        sub_1018C9ECC();
      }

      v9 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "#cts,state,connected", buf, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1018C9EF4(buf);
        *v27 = 0;
        v20 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "void CLTelephonyService::notifyCellularTransmiteState(CFDictionaryRef)", "%s\n", v20);
        if (v20 != buf)
        {
          free(v20);
        }
      }

      buf[0] = 1;
      v10 = sub_1001CF0F0(buf);
    }

    else
    {
      if (!CFEqual(cf1, kCTCellularTransmitStateIdle))
      {
        if (qword_1025D4650 != -1)
        {
          sub_1018C9ECC();
        }

        v16 = qword_1025D4658;
        if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_DEBUG, "#cts,state,unknown", buf, 2u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_1018C9EF4(buf);
          *v27 = 0;
          v23 = _os_log_send_and_compose_impl();
          sub_100152C7C("Generic", 1, 0, 2, "void CLTelephonyService::notifyCellularTransmiteState(CFDictionaryRef)", "%s\n", v23);
          if (v23 != buf)
          {
            free(v23);
          }
        }

        goto LABEL_53;
      }

      if (qword_1025D4650 != -1)
      {
        sub_1018C9ECC();
      }

      v13 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_DEBUG, "#cts,state,idle", buf, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1018C9EF4(buf);
        *v27 = 0;
        v22 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "void CLTelephonyService::notifyCellularTransmiteState(CFDictionaryRef)", "%s\n", v22);
        if (v22 != buf)
        {
          free(v22);
        }
      }

      buf[0] = 0;
      v10 = sub_1001CF0F0(buf);
    }

    values[0] = v10;
    v14 = CFDictionaryCreate(0, &keys, values, 1, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    if (v14)
    {
      if (qword_1025D4650 != -1)
      {
        sub_1018C9ECC();
      }

      v15 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        *&buf[4] = v14;
        _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_DEFAULT, "#cts,state,notify,%{public}@", buf, 0xCu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1018C9EF4(buf);
        *v27 = 138543362;
        *&v27[4] = v14;
        v21 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "void CLTelephonyService::notifyCellularTransmiteState(CFDictionaryRef)", "%s\n", v21);
        if (v21 != buf)
        {
          free(v21);
        }
      }

      (*(*a1 + 256))(a1, @"kCLCellularTransmitStateNotification", v14);
      CFRelease(v14);
    }

LABEL_53:
    if (values[0])
    {
      CFRelease(values[0]);
    }

    return sub_100005DA4(v25);
  }

  if (qword_1025D4650 != -1)
  {
    sub_1018C9ECC();
  }

  v11 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEFAULT, "#Warning,#cts,state,keyNotPresent", buf, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018C9EF4(buf);
    *v27 = 0;
    v12 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "void CLTelephonyService::notifyCellularTransmiteState(CFDictionaryRef)", "%s\n", v12);
    if (v12 != buf)
    {
      free(v12);
    }
  }

  return sub_100005DA4(v25);
}

void sub_100584998(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_100005DA4(va);
  _Unwind_Resume(a1);
}

void sub_1005849E0(_BYTE *a1)
{
  v2 = sub_1001CF0F0(a1 + 161);
  values = v2;
  keys = @"kInHomeCountryKey";
  v3 = CFDictionaryCreate(0, &keys, &values, 1, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  v4 = v3;
  (*(*a1 + 256))(a1, @"kInHomeCountryLegacyNotification", v3);
  if (v2)
  {
    CFRelease(v2);
  }
}

uint64_t sub_100584AD4(void *a1, int *a2)
{
  if (a1[18])
  {
    sub_100072010(a2);
    _CTServerConnectionRegisterForNotification();
    if (qword_1025D4600 != -1)
    {
      sub_1018C726C();
    }

    v4 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
    {
      v5 = sub_100072010(a2);
      sub_1000238CC(v5, __p);
      v6 = v12 >= 0 ? __p : __p[0];
      *buf = 136315138;
      v14 = v6;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "CLTelephonyService,registerForNotificationInternal,%s", buf, 0xCu);
      if (SHIBYTE(v12) < 0)
      {
        operator delete(__p[0]);
      }
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018CA544(a2);
    }

    v7 = sub_100072010(a2);
    if (CFEqual(v7, @"kInHomeCountryLegacyNotification"))
    {
      sub_100583BE8(a1);
    }

    (*(*a1 + 160))(__p, a1, a2);
    if (SHIBYTE(v12) < 0)
    {
      sub_100007244(v9, __p[0], __p[1]);
    }

    else
    {
      *v9 = *__p;
      v10 = v12;
    }

    sub_100912988((a1 + 22), v9);
    if (SHIBYTE(v10) < 0)
    {
      operator delete(v9[0]);
    }

    if (SHIBYTE(v12) < 0)
    {
      operator delete(__p[0]);
    }
  }

  return 1;
}

void sub_100584CAC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100584CE8(void *a1, int *a2)
{
  if (a1[18])
  {
    sub_100072010(a2);
    _CTServerConnectionUnregisterForNotification();
    if (qword_1025D4600 != -1)
    {
      sub_1018C726C();
    }

    v4 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
    {
      v5 = sub_100072010(a2);
      sub_1000238CC(v5, __p);
      v6 = v11 >= 0 ? __p : __p[0];
      *buf = 136315138;
      v13 = v6;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "CLTelephonyService,unregisterForNotificationInternal,%s", buf, 0xCu);
      if (SHIBYTE(v11) < 0)
      {
        operator delete(__p[0]);
      }
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018CA658(a2);
    }

    (*(*a1 + 160))(__p, a1, a2);
    if (SHIBYTE(v11) < 0)
    {
      sub_100007244(v8, __p[0], __p[1]);
    }

    else
    {
      *v8 = *__p;
      v9 = v11;
    }

    sub_100912AC8((a1 + 22), v8);
    if (SHIBYTE(v9) < 0)
    {
      operator delete(v8[0]);
    }

    if (SHIBYTE(v11) < 0)
    {
      operator delete(__p[0]);
    }
  }

  return 1;
}

void sub_100584EA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_100584EDC@<W0>(int *a1@<X1>, uint64_t a2@<X8>)
{
  v3 = sub_100072010(a1);

  return sub_1000238CC(v3, a2);
}

uint64_t sub_100584F18(int a1, const __CFString *cf1)
{
  if (CFEqual(cf1, kCTRegistrationRadioAccessTechnologyGSM))
  {
    return 0;
  }

  if (CFEqual(cf1, kCTRegistrationRadioAccessTechnologyUTRAN2))
  {
    return 9;
  }

  if (CFEqual(cf1, kCTRegistrationRadioAccessTechnologyGSMCompact))
  {
    return 1;
  }

  if (CFEqual(cf1, kCTRegistrationRadioAccessTechnologyUTRAN))
  {
    return 2;
  }

  if (CFEqual(cf1, kCTRegistrationRadioAccessTechnologyCDMA1x))
  {
    return 3;
  }

  if (CFEqual(cf1, kCTRegistrationRadioAccessTechnologyCDMAEVDO))
  {
    return 4;
  }

  if (CFEqual(cf1, kCTRegistrationRadioAccessTechnologyCDMAHybrid) || CFEqual(cf1, kCTRegistrationRadioAccessTechnologyeHRPD))
  {
    return 5;
  }

  if (CFEqual(cf1, kCTRegistrationRadioAccessTechnologyLTE))
  {
    return 6;
  }

  if (CFEqual(cf1, kCTRegistrationRadioAccessTechnologyNR))
  {
    return 10;
  }

  if (!CFEqual(cf1, kCTRegistrationRadioAccessTechnologyUnknown))
  {
    if (qword_1025D48A0 != -1)
    {
      sub_100248B5C();
    }

    v4 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_FAULT))
    {
      sub_1000238CC(cf1, __p);
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
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_FAULT, "CELL_LOC: unknown registration technology, %{public}s", buf, 0xCu);
      if (v7 < 0)
      {
        operator delete(__p[0]);
      }
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018CAB10(cf1);
    }
  }

  return 11;
}

uint64_t sub_10058517C(uint64_t a1)
{
  if ((*(a1 + 160) & 1) == 0)
  {
    if (qword_1025D48A0 != -1)
    {
      sub_100248B5C();
    }

    v2 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
    {
      v3 = *(a1 + 160);
      v7[0] = 68289282;
      v7[1] = 0;
      v8 = 2082;
      v9 = "";
      v10 = 1026;
      v11 = v3;
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:DaemonNotReady for CT SPI, fDaemonReady:%{public}hhd}", v7, 0x18u);
    }
  }

  if (*(a1 + 144))
  {
    if (_CTServerConnectionGetRadioAccessTechnology())
    {
      if (qword_1025D48A0 != -1)
      {
        sub_1018C6BA0();
      }

      v4 = qword_1025D48A8;
      if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_FAULT))
      {
        LOWORD(v7[0]) = 0;
        _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_FAULT, "_CTServerConnectionGetRadioAccessTechnology failed", v7, 2u);
      }

      result = sub_10000A100(121, 0);
      if (result)
      {
        sub_1018CAC30();
        return 0;
      }
    }

    else
    {
      return 1;
    }
  }

  else
  {
    if (qword_1025D48A0 != -1)
    {
      sub_1018C6BA0();
    }

    v6 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v7[0]) = 0;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "currently not connected to telephony service", v7, 2u);
    }

    result = sub_10000A100(121, 2);
    if (result)
    {
      sub_1018CAD14();
      return 0;
    }
  }

  return result;
}

BOOL sub_100585368(uint64_t a1, SInt32 *a2)
{
  if ((*(a1 + 160) & 1) == 0)
  {
    if (qword_1025D48A0 != -1)
    {
      sub_100248B5C();
    }

    v4 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
    {
      v5 = *(a1 + 160);
      *buf = 68289282;
      *&buf[4] = 0;
      v13 = 2082;
      v14 = "";
      v15 = 1026;
      v16 = v5;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:DaemonNotReady for CT SPI, fDaemonReady:%{public}hhd}", buf, 0x18u);
    }
  }

  if (!*(a1 + 144))
  {
    if (qword_1025D48A0 != -1)
    {
      sub_1018C6BA0();
    }

    v9 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "currently not connected to telephony service", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018CAEDC();
    }

    return 0;
  }

  *buf = 0;
  v6 = _CTServerConnectionCopyCountryCode();
  v7 = v6 == 0;
  if (v6)
  {
    if (qword_1025D48A0 != -1)
    {
      sub_1018C6BA0();
    }

    v8 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_FAULT))
    {
      *v11 = 0;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_FAULT, "_CTServerConnectionCopyCountryCode failed", v11, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018CADF8();
    }

    goto LABEL_23;
  }

  if (!*buf)
  {
    return 0;
  }

  *a2 = CFStringGetIntValue(*buf);
LABEL_23:
  if (*buf)
  {
    CFRelease(*buf);
  }

  return v7;
}

BOOL sub_100585580(uint64_t a1, SInt32 *a2)
{
  if ((*(a1 + 160) & 1) == 0)
  {
    if (qword_1025D48A0 != -1)
    {
      sub_100248B5C();
    }

    v4 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
    {
      v5 = *(a1 + 160);
      *buf = 68289282;
      *&buf[4] = 0;
      v13 = 2082;
      v14 = "";
      v15 = 1026;
      v16 = v5;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:DaemonNotReady for CT SPI, fDaemonReady:%{public}hhd}", buf, 0x18u);
    }
  }

  if (!*(a1 + 144))
  {
    if (qword_1025D48A0 != -1)
    {
      sub_1018C6BA0();
    }

    v9 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "currently not connected to telephony service", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018CB0A4();
    }

    return 0;
  }

  *buf = 0;
  v6 = _CTServerConnectionCopyNetworkCode();
  v7 = v6 == 0;
  if (v6)
  {
    if (qword_1025D48A0 != -1)
    {
      sub_1018C6BA0();
    }

    v8 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_FAULT))
    {
      *v11 = 0;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_FAULT, "_CTServerConnectionCopyNetworkCode failed", v11, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018CAFC0();
    }

    goto LABEL_23;
  }

  if (!*buf)
  {
    return 0;
  }

  *a2 = CFStringGetIntValue(*buf);
LABEL_23:
  if (*buf)
  {
    CFRelease(*buf);
  }

  return v7;
}

uint64_t sub_100585798(uint64_t a1)
{
  if ((*(a1 + 160) & 1) == 0)
  {
    if (qword_1025D48A0 != -1)
    {
      sub_100248B5C();
    }

    v2 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
    {
      v3 = *(a1 + 160);
      v8[0] = 68289282;
      v8[1] = 0;
      v9 = 2082;
      v10 = "";
      v11 = 1026;
      v12 = v3;
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:DaemonNotReady for CT SPI, fDaemonReady:%{public}hhd}", v8, 0x18u);
    }
  }

  if (*(a1 + 144))
  {
    if (_CTServerConnectionGetLocationAreaCode())
    {
      if (qword_1025D48A0 != -1)
      {
        sub_1018C6BA0();
      }

      v4 = qword_1025D48A8;
      if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_FAULT))
      {
        LOWORD(v8[0]) = 0;
        _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_FAULT, "_CTServerConnectionGetLocationAreaCode failed", v8, 2u);
      }

      result = sub_10000A100(121, 0);
      if (result)
      {
        sub_1018CB188();
        return 0;
      }
    }

    else if (_CTServerConnectionGetCellID())
    {
      if (qword_1025D48A0 != -1)
      {
        sub_1018C6BA0();
      }

      v7 = qword_1025D48A8;
      if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_FAULT))
      {
        LOWORD(v8[0]) = 0;
        _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_FAULT, "_CTServerConnectionGetCellID failed", v8, 2u);
      }

      result = sub_10000A100(121, 0);
      if (result)
      {
        sub_1018CB26C();
        return 0;
      }
    }

    else
    {
      return 1;
    }
  }

  else
  {
    if (qword_1025D48A0 != -1)
    {
      sub_1018C6BA0();
    }

    v6 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v8[0]) = 0;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "currently not connected to telephony service", v8, 2u);
    }

    result = sub_10000A100(121, 2);
    if (result)
    {
      sub_1018CB350();
      return 0;
    }
  }

  return result;
}

uint64_t sub_100585A08(CFDictionaryRef *a1, const void **a2)
{
  v23 = 0;
  sub_100005548(v22, *a1);
  v3 = kCTCellMonitorDerivedMCC;
  v4 = sub_1004FEE20(v22);
  if (v4 >= 1)
  {
    for (i = 0; i != v4; ++i)
    {
      if (sub_1000052CC(v22, v3, &v23))
      {
        if (qword_1025D48A0 != -1)
        {
          sub_1018C6BA0();
        }

        v6 = qword_1025D48A8;
        if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
        {
          *buf = 67109632;
          v31 = i;
          v32 = 1024;
          v33 = v4;
          v34 = 1024;
          v35 = v23;
          _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "CELL_LOC: Adding MCC %d / %d : %d", buf, 0x14u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_1018C7228(buf);
          v24 = 67109632;
          v25 = i;
          v26 = 1024;
          v27 = v4;
          v28 = 1024;
          v29 = v23;
          v20 = _os_log_send_and_compose_impl();
          sub_100152C7C("Generic", 1, 0, 2, "static void CLTelephonyService::derivedMccFromMonitorDict(const CFDictionaryRef &, DerivedMccVector &)", "%s\n", v20);
          if (v20 != buf)
          {
            free(v20);
          }
        }

        v8 = a2[1];
        v7 = a2[2];
        if (v8 >= v7)
        {
          v12 = *a2;
          v13 = v8 - *a2;
          v14 = v13 >> 2;
          v15 = (v13 >> 2) + 1;
          if (v15 >> 62)
          {
            sub_10028C64C();
          }

          v16 = v7 - v12;
          if (v16 >> 1 > v15)
          {
            v15 = v16 >> 1;
          }

          v17 = v16 >= 0x7FFFFFFFFFFFFFFCLL;
          v18 = 0x3FFFFFFFFFFFFFFFLL;
          if (!v17)
          {
            v18 = v15;
          }

          if (v18)
          {
            sub_1000B85D0(a2, v18);
          }

          *(4 * v14) = v23;
          v9 = 4 * v14 + 4;
          memcpy(0, v12, v13);
          v19 = *a2;
          *a2 = 0;
          a2[1] = v9;
          a2[2] = 0;
          if (v19)
          {
            operator delete(v19);
          }
        }

        else
        {
          *v8 = v23;
          v9 = (v8 + 4);
        }

        a2[1] = v9;
      }

      else
      {
        if (qword_1025D48A0 != -1)
        {
          sub_1018C6BA0();
        }

        v10 = qword_1025D48A8;
        if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_FAULT))
        {
          *buf = 67240448;
          v31 = i;
          v32 = 1026;
          v33 = v4;
          _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_FAULT, "CELL_LOC: can't get MCC %{public}d / %{public}d", buf, 0xEu);
        }

        if (sub_10000A100(121, 0))
        {
          sub_1018C7228(buf);
          v24 = 67240448;
          v25 = i;
          v26 = 1026;
          v27 = v4;
          v11 = _os_log_send_and_compose_impl();
          sub_100152C7C("Generic", 1, 0, 0, "static void CLTelephonyService::derivedMccFromMonitorDict(const CFDictionaryRef &, DerivedMccVector &)", "%s\n", v11);
          if (v11 != buf)
          {
            free(v11);
          }
        }
      }
    }
  }

  return sub_100005DA4(v22);
}

void sub_100585DF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_100005DA4(va);
  _Unwind_Resume(a1);
}

BOOL sub_100585E1C(uint64_t a1, uint64_t *a2, int a3)
{
  if (qword_1025D48A0 != -1)
  {
    sub_100248B5C();
  }

  v6 = qword_1025D48A8;
  if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "CELL_LOC: getting current serving cell", buf, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018CB434();
  }

  cf = 0;
  v7 = a2[1];
  v8 = *a2;
  while (v7 != v8)
  {
    v7 -= 696;
    sub_1000720CC(v7);
  }

  a2[1] = v8;
  if (sub_10006CABC(a1, &cf))
  {
    v9 = sub_10006A604(a2, cf, a3);
  }

  else
  {
    v9 = 0;
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (qword_1025D48A0 != -1)
  {
    sub_1018C6BA0();
  }

  v10 = qword_1025D48A8;
  if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
  {
    v11 = 0x66FD0EB66FD0EB67 * ((a2[1] - *a2) >> 3);
    *buf = 134217984;
    v15 = v11;
    _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEBUG, "CELL_LOC: getting current serving cells %lu", buf, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018CB520(a2 + 1);
  }

  return v9;
}

uint64_t sub_100586008(uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = sub_10058ABF4(a1, a2);
  }

  else
  {
    sub_10007AEC8(a1, a2);
    result = v3 + 696;
  }

  a1[1] = result;
  return result;
}

BOOL sub_100586048(id a1, TUCall *a2)
{
  v3 = [(TUCall *)a2 status];
  if (v3 != 1)
  {
    LOBYTE(v3) = [(TUCall *)a2 status]== 2;
  }

  return v3;
}

uint64_t sub_100586090(uint64_t a1, void *a2, void *a3)
{
  *a1 = 0;
  *(a1 + 4) = 0x400000000;
  *(a1 + 12) = 256;
  *(a1 + 14) = 0;
  *(a1 + 16) = 255;
  if (!a3)
  {
    if (qword_1025D4660 != -1)
    {
      sub_1018CB63C();
    }

    v7 = qword_1025D4668;
    if (os_log_type_enabled(qword_1025D4668, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v26) = 0;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_ERROR, "#ctcl,#cterror,CLCTEmergencyMode,mode,nil", &v26, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018CBD2C();
    }

    return a1;
  }

  if (a2)
  {
    if ([a2 slotID] != 1 && objc_msgSend(a2, "slotID") != 2 && objc_msgSend(a2, "slotID"))
    {
      if (qword_1025D4660 != -1)
      {
        sub_1018CB63C();
      }

      v6 = qword_1025D4668;
      if (os_log_type_enabled(qword_1025D4668, OS_LOG_TYPE_ERROR))
      {
        v26 = 67109120;
        v27 = [a2 slotID];
        _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_ERROR, "#ctcl,#cterror,CLCTEmergencyMode,InvalidSubscriptionSlot,slot,%d", &v26, 8u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_1018CB650(a2);
      }

      return a1;
    }

    if (!sub_1000649A0() && [a2 slotID] == 2)
    {
      if (qword_1025D4660 != -1)
      {
        sub_1018CB63C();
      }

      v8 = qword_1025D4668;
      if (os_log_type_enabled(qword_1025D4668, OS_LOG_TYPE_ERROR))
      {
        v26 = 67109120;
        v27 = [a2 slotID];
        _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_ERROR, "#ctcl,#cterror,CLCTEmergencyMode,Unexpected CTSubscriptionSlot Info received %d", &v26, 8u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_1018CB748(a2);
      }

      return a1;
    }

    v9 = [a2 slotID];
  }

  else
  {
    if (qword_1025D4660 != -1)
    {
      sub_1018CB63C();
    }

    v10 = qword_1025D4668;
    if (os_log_type_enabled(qword_1025D4668, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v26) = 0;
      _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEFAULT, "#Warning,#ctcl,CLCTEmergencyMode,context,nil", &v26, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018CB840();
    }

    v9 = 0;
  }

  if ([a3 type] && objc_msgSend(a3, "type") != 1 && objc_msgSend(a3, "type") != 2 && objc_msgSend(a3, "type") != 3 && objc_msgSend(a3, "type") != 4 && objc_msgSend(a3, "type") != 5)
  {
    if (qword_1025D4660 != -1)
    {
      sub_1018CB924();
    }

    v22 = qword_1025D4668;
    if (os_log_type_enabled(qword_1025D4668, OS_LOG_TYPE_ERROR))
    {
      v23 = [a3 type];
      v26 = 67109120;
      v27 = v23;
      _os_log_impl(dword_100000000, v22, OS_LOG_TYPE_ERROR, "#ctcl,#cterror,CLCTEmergencyMode,InvalidEmergencyMode,emergencyMode,%d", &v26, 8u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018CB94C(a3);
    }

    return a1;
  }

  if ([a3 state] && objc_msgSend(a3, "state") != 1 && objc_msgSend(a3, "state") != 2 && objc_msgSend(a3, "state") != 3 && objc_msgSend(a3, "state") != 5 && objc_msgSend(a3, "state") != 4)
  {
    if (qword_1025D4660 != -1)
    {
      sub_1018CB924();
    }

    v24 = qword_1025D4668;
    if (os_log_type_enabled(qword_1025D4668, OS_LOG_TYPE_ERROR))
    {
      v25 = [a3 state];
      v26 = 67109120;
      v27 = v25;
      _os_log_impl(dword_100000000, v24, OS_LOG_TYPE_ERROR, "#ctcl,#cterror,CLCTEmergencyMode,InvalidEmergencyModeState,state,%d", &v26, 8u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018CBA44(a3);
    }

    return a1;
  }

  *a1 = [a3 enabled];
  if ([a3 isEmergencyText])
  {
    v11 = 1;
  }

  else
  {
    v11 = [a3 isStewieActive];
  }

  *(a1 + 12) = v11;
  *(a1 + 13) = [a3 isEmergencySetup];
  *(a1 + 14) = [a3 isStewieActive];
  if (sub_1000649A0())
  {
    if ((v9 - 1) > 1)
    {
      v12 = 255;
    }

    else
    {
      v12 = v9 != 1;
    }
  }

  else if (v9 == 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = 255;
  }

  *(a1 + 16) = v12;
  v13 = [a3 type];
  if (v13 > 2)
  {
    switch(v13)
    {
      case 3:
        v14 = 3;
        goto LABEL_75;
      case 4:
        v14 = 4;
        goto LABEL_75;
      case 5:
        v14 = 5;
        goto LABEL_75;
    }

LABEL_67:
    if (qword_1025D4660 != -1)
    {
      sub_1018CB924();
    }

    v15 = qword_1025D4668;
    if (os_log_type_enabled(qword_1025D4668, OS_LOG_TYPE_ERROR))
    {
      v16 = [a3 type];
      v26 = 67109120;
      v27 = v16;
      _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_ERROR, "#ctcl,#cterror,CLCTEmergencyMode,InvalidEmergencyModeType,%d", &v26, 8u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018CBB3C(a3);
    }

    goto LABEL_76;
  }

  if (v13)
  {
    if (v13 == 1)
    {
      v14 = 1;
      goto LABEL_75;
    }

    if (v13 == 2)
    {
      v14 = 2;
LABEL_75:
      *(a1 + 4) = v14;
      goto LABEL_76;
    }

    goto LABEL_67;
  }

  *(a1 + 4) = 0;
LABEL_76:
  v17 = [a3 state];
  if (v17 > 2)
  {
    switch(v17)
    {
      case 3:
        v18 = 3;
        goto LABEL_95;
      case 4:
        v18 = 5;
        goto LABEL_95;
      case 5:
        v18 = 4;
        goto LABEL_95;
    }
  }

  else
  {
    switch(v17)
    {
      case 0:
        *(a1 + 8) = 0;
        return a1;
      case 1:
        v18 = 1;
        goto LABEL_95;
      case 2:
        v18 = 2;
LABEL_95:
        *(a1 + 8) = v18;
        return a1;
    }
  }

  if (qword_1025D4660 != -1)
  {
    sub_1018CB924();
  }

  v19 = qword_1025D4668;
  if (os_log_type_enabled(qword_1025D4668, OS_LOG_TYPE_ERROR))
  {
    v20 = [a3 state];
    v26 = 67109120;
    v27 = v20;
    _os_log_impl(dword_100000000, v19, OS_LOG_TYPE_ERROR, "#ctcl,#cterror,CLCTEmergencyMode,InvalidEmergencyModeState,%d", &v26, 8u);
  }

  if (sub_10000A100(121, 0))
  {
    sub_1018CBC34(a3);
  }

  return a1;
}

uint64_t sub_10058679C(uint64_t a1, const __CFDictionary *a2)
{
  *a1 = 0;
  *(a1 + 4) = 0x400000000;
  *(a1 + 12) = 256;
  *(a1 + 14) = 0;
  *(a1 + 16) = 255;
  sub_100005548(v15, a2);
  v14 = 0;
  v13 = 0;
  v12 = 0;
  v11 = 0;
  if (!sub_10001CBC0(v15, @"kEmergencyModeEnabledKey", &v12 + 1) || !sub_10001CBC0(v15, @"kEmergencyTextKey", &v12) || !sub_1000052CC(v15, @"kSimInstanceKey", &v14) || !sub_1000052CC(v15, @"kEmergencyModeKey", &v14 + 1) || !sub_1000052CC(v15, @"kEmergencyModeStateKey", &v13) || !sub_10001CBC0(v15, @"kIsStewieActiveKey", &v11) || (sub_10001CBC0(v15, @"kEmergencySetupKey", &v11 + 1) & 1) == 0)
  {
    if (qword_1025D4870 != -1)
    {
      sub_1018C8028();
    }

    v6 = qword_1025D4878;
    if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_ERROR, "#clct,CLCTEmergencyMode, couldn't get value for  sim or  CLCTEmergencyMode", buf, 2u);
    }

    if (!sub_10000A100(121, 0))
    {
      goto LABEL_22;
    }

    sub_1018C7FE4(buf);
    LOWORD(v16) = 0;
    v5 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 0, "CLTelephonyService_Type::CLCTEmergencyMode::CLCTEmergencyMode(CFDictionaryRef)", "%s\n", v5);
    goto LABEL_38;
  }

  v3 = v14;
  if (v14 >= 2 && v14 != 255)
  {
    if (qword_1025D4870 != -1)
    {
      sub_1018C8028();
    }

    v10 = qword_1025D4878;
    if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v19 = v14;
      _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_ERROR, "#clct,CLCTEmergencyMode,InvalidSim,%d", buf, 8u);
    }

    if (!sub_10000A100(121, 0))
    {
      goto LABEL_22;
    }

    sub_1018C7FE4(buf);
    v16 = 67109120;
    v17 = v14;
    v5 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 0, "CLTelephonyService_Type::CLCTEmergencyMode::CLCTEmergencyMode(CFDictionaryRef)", "%s\n", v5);
    goto LABEL_38;
  }

  if (HIDWORD(v14) < 6)
  {
    v8 = v13;
    if (v13 < 6)
    {
      *(a1 + 4) = HIDWORD(v14);
      *(a1 + 8) = v8;
      *a1 = HIBYTE(v12);
      *(a1 + 12) = v12;
      *(a1 + 16) = v3;
      *(a1 + 13) = HIBYTE(v11);
      *(a1 + 14) = v11;
      goto LABEL_22;
    }

    if (qword_1025D4870 != -1)
    {
      sub_1018C8028();
    }

    v9 = qword_1025D4878;
    if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v19 = v13;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_ERROR, "#clct,CLCTEmergencyMode, Unexpected CLCTEmergencyModeState received %d", buf, 8u);
    }

    if (!sub_10000A100(121, 0))
    {
      goto LABEL_22;
    }

    sub_1018C7FE4(buf);
    v16 = 67109120;
    v17 = v13;
    v5 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 0, "CLTelephonyService_Type::CLCTEmergencyMode::CLCTEmergencyMode(CFDictionaryRef)", "%s\n", v5);
LABEL_38:
    if (v5 != buf)
    {
      free(v5);
    }

    goto LABEL_22;
  }

  if (qword_1025D4870 != -1)
  {
    sub_1018C8028();
  }

  v4 = qword_1025D4878;
  if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_ERROR))
  {
    *buf = 67109120;
    v19 = HIDWORD(v14);
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_ERROR, "#clct,CLCTEmergencyMode, Unexpected CLCTEmergencyModeType received %d", buf, 8u);
  }

  if (sub_10000A100(121, 0))
  {
    sub_1018C7FE4(buf);
    v16 = 67109120;
    v17 = HIDWORD(v14);
    v5 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 0, "CLTelephonyService_Type::CLCTEmergencyMode::CLCTEmergencyMode(CFDictionaryRef)", "%s\n", v5);
    goto LABEL_38;
  }

LABEL_22:
  sub_100005DA4(v15);
  return a1;
}

void sub_100586D6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_100005DA4(va);
  _Unwind_Resume(a1);
}

NSDictionary *sub_100586DA8(unsigned __int8 *a1)
{
  v3[0] = @"kEmergencyModeEnabledKey";
  v4[0] = [NSNumber numberWithBool:*a1];
  v3[1] = @"kEmergencyTextKey";
  v4[1] = [NSNumber numberWithBool:a1[12]];
  v3[2] = @"kSimInstanceKey";
  v4[2] = [NSNumber numberWithInt:*(a1 + 4)];
  v3[3] = @"kEmergencyModeKey";
  v4[3] = [NSNumber numberWithInt:*(a1 + 1)];
  v3[4] = @"kEmergencyModeStateKey";
  v4[4] = [NSNumber numberWithInt:*(a1 + 2)];
  v3[5] = @"kIsStewieActiveKey";
  v4[5] = [NSNumber numberWithBool:a1[14]];
  v3[6] = @"kEmergencySetupKey";
  v4[6] = [NSNumber numberWithBool:a1[13]];
  return [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:7];
}

_BYTE *sub_100586EDC@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *(a1 + 4);
  if (v4 > 5)
  {
    v5 = "UnknownMode";
  }

  else
  {
    v5 = (&off_1024607B0)[v4];
  }

  return sub_10000EC00(a2, v5);
}

_BYTE *sub_100586F0C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *(a1 + 8);
  if (v4 > 5)
  {
    v5 = "UnknownModeState";
  }

  else
  {
    v5 = (&off_1024607E0)[v4];
  }

  return sub_10000EC00(a2, v5);
}

uint64_t sub_100586F3C(uint64_t a1)
{
  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }

  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_100586F90(uint64_t a1, unsigned int a2, void *a3, void *a4)
{
  *(a1 + 64) = 0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  if (a3)
  {
    sub_100006044(a1, [a3 UTF8String]);
  }

  if (a4)
  {
    sub_100006044((a1 + 24), [a4 UTF8String]);
  }

  if (a2 != 255)
  {
    v7 = [CTXPCServiceSubscriptionContext alloc];
    v8 = sub_1000649A0();
    v9 = 1;
    if (a2)
    {
      v9 = 2;
    }

    if (a2 > 1)
    {
      v9 = 0;
    }

    if (v8)
    {
      v10 = v9;
    }

    else
    {
      v10 = a2 == 0;
    }

    v11 = [v7 initWithSlot:v10];
    sub_100006044((a1 + 48), [objc_msgSend(objc_msgSend(v11 "uuid")]);
  }

  return a1;
}

uint64_t sub_100587084(uint64_t a1, const __CFDictionary *a2)
{
  *(a1 + 48) = 0u;
  v3 = a1 + 48;
  *(a1 + 64) = 0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  sub_100005548(v9, a2);
  if (sub_100005050(v9, @"kImsiKey", a1))
  {
    if (sub_100005050(v9, @"kImeiKey", a1 + 24))
    {
      if (!sub_100005050(v9, @"kUuidKey", v3))
      {
        if (qword_1025D4870 != -1)
        {
          sub_1018C8028();
        }

        v4 = qword_1025D4878;
        if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_ERROR, "#clct,CLCTMobileEquipmentInfo, couldn't get value for uuid", buf, 2u);
        }

        if (sub_10000A100(121, 0))
        {
LABEL_22:
          sub_1018C7FE4(buf);
          v8 = _os_log_send_and_compose_impl();
          sub_100152C7C("Generic", 1, 0, 0, "CLTelephonyService_Type::CLCTMobileEquipmentInfo::CLCTMobileEquipmentInfo(CFDictionaryRef)", "%s\n", v8);
          if (v8 != buf)
          {
            free(v8);
          }
        }
      }
    }

    else
    {
      if (qword_1025D4870 != -1)
      {
        sub_1018C8028();
      }

      v6 = qword_1025D4878;
      if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_ERROR, "#clct,CLCTMobileEquipmentInfo, couldn't get value for imei", buf, 2u);
      }

      if (sub_10000A100(121, 0))
      {
        goto LABEL_22;
      }
    }
  }

  else
  {
    if (qword_1025D4870 != -1)
    {
      sub_1018C8028();
    }

    v5 = qword_1025D4878;
    if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_ERROR, "#clct,CLCTMobileEquipmentInfo, couldn't get value for imsi", buf, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      goto LABEL_22;
    }
  }

  sub_100005DA4(v9);
  return a1;
}

void sub_100587430(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_100005DA4(va);
  if (*(v5 + 71) < 0)
  {
    operator delete(*v6);
  }

  if (*(v5 + 47) < 0)
  {
    operator delete(*(v5 + 24));
  }

  if (*(v5 + 23) < 0)
  {
    operator delete(*v5);
  }

  _Unwind_Resume(a1);
}

NSDictionary *sub_100587494(uint64_t *a1)
{
  v6[0] = @"kImeiKey";
  v2 = a1 + 3;
  if (*(a1 + 47) < 0)
  {
    v2 = *v2;
  }

  v7[0] = [NSString stringWithUTF8String:v2];
  v6[1] = @"kImsiKey";
  v3 = a1;
  if (*(a1 + 23) < 0)
  {
    v3 = *a1;
  }

  v7[1] = [NSString stringWithUTF8String:v3];
  v6[2] = @"kUuidKey";
  v4 = a1 + 6;
  if (*(a1 + 71) < 0)
  {
    v4 = *v4;
  }

  v7[2] = [NSString stringWithUTF8String:v4];
  return [NSDictionary dictionaryWithObjects:v7 forKeys:v6 count:3];
}

std::string *sub_10058757C(std::string *a1, void *a2)
{
  *(sub_10000EC00(a1, "") + 6) = 0;
  if (a2)
  {
    if ([a2 registrationDisplayStatus])
    {
      sub_100006044(a1, [objc_msgSend(a2 "registrationDisplayStatus")]);
    }

    a1[1].__r_.__value_.__s.__data_[0] = [a2 isInHomeCountry];
    a1[1].__r_.__value_.__s.__data_[1] = [a2 changedDueToSimRemoval];
    a1[1].__r_.__value_.__s.__data_[2] = [a2 isRegistrationForcedHome];
    a1[1].__r_.__value_.__s.__data_[3] = [a2 isSatelliteSystem];
  }

  else
  {
    if (qword_1025D4870 != -1)
    {
      sub_1018C7FD0();
    }

    v4 = qword_1025D4878;
    if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_ERROR, "#clct,CLCTRegistrationDisplayStatus, status is null", buf, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018C7FE4(buf);
      v6 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 0, "CLTelephonyService_Type::CLCTRegistrationDisplayStatus::CLCTRegistrationDisplayStatus(CTRegistrationDisplayStatus *)", "%s\n", v6);
      if (v6 != buf)
      {
        free(v6);
      }
    }
  }

  return a1;
}

void sub_100587744(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_10058776C(_BYTE *a1, const __CFDictionary *a2)
{
  v4 = sub_10000EC00(a1, "");
  *(v4 + 6) = 0;
  v5 = v4 + 24;
  sub_100005548(v13, a2);
  if (sub_100005050(v13, @"kRegistrationStatusKey", a1))
  {
    if (sub_10001CBC0(v13, @"kRegistrationInHomeCountryKey", v5))
    {
      if (sub_10001CBC0(v13, @"kRegistrationChangedDueToSimRemovalKey", v5 + 1))
      {
        if (sub_10001CBC0(v13, @"kRegistrationIsForcedRegisteredHomeKey", v5 + 2))
        {
          if ((sub_10001CBC0(v13, @"kRegsitrationOnSatelliteSystemKey", v5 + 3) & 1) == 0)
          {
            if (qword_1025D4870 != -1)
            {
              sub_1018C8028();
            }

            v6 = qword_1025D4878;
            if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_ERROR, "#clct,CLCTRegistrationDisplayStatus, couldn't get value for isSatelliteSystem", buf, 2u);
            }

            if (sub_10000A100(121, 0))
            {
LABEL_36:
              sub_1018C7FE4(buf);
              v12 = _os_log_send_and_compose_impl();
              sub_100152C7C("Generic", 1, 0, 0, "CLTelephonyService_Type::CLCTRegistrationDisplayStatus::CLCTRegistrationDisplayStatus(CFDictionaryRef)", "%s\n", v12);
              if (v12 != buf)
              {
                free(v12);
              }
            }
          }
        }

        else
        {
          if (qword_1025D4870 != -1)
          {
            sub_1018C8028();
          }

          v10 = qword_1025D4878;
          if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_ERROR, "#clct,CLCTRegistrationDisplayStatus, couldn't get value for isRegistrationForcedHome", buf, 2u);
          }

          if (sub_10000A100(121, 0))
          {
            goto LABEL_36;
          }
        }
      }

      else
      {
        if (qword_1025D4870 != -1)
        {
          sub_1018C8028();
        }

        v9 = qword_1025D4878;
        if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_ERROR, "#clct,CLCTRegistrationDisplayStatus, couldn't get value for changedDueToSimRemoval", buf, 2u);
        }

        if (sub_10000A100(121, 0))
        {
          goto LABEL_36;
        }
      }
    }

    else
    {
      if (qword_1025D4870 != -1)
      {
        sub_1018C8028();
      }

      v8 = qword_1025D4878;
      if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_ERROR, "#clct,CLCTRegistrationDisplayStatus, couldn't get value for isInHomeCountry", buf, 2u);
      }

      if (sub_10000A100(121, 0))
      {
        goto LABEL_36;
      }
    }
  }

  else
  {
    if (qword_1025D4870 != -1)
    {
      sub_1018C8028();
    }

    v7 = qword_1025D4878;
    if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_ERROR, "#clct,CLCTRegistrationDisplayStatus, couldn't get value for registrationDisplayStatus", buf, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      goto LABEL_36;
    }
  }

  sub_100005DA4(v13);
  return a1;
}

void sub_100587D1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_100005DA4(va);
  if (*(v5 + 23) < 0)
  {
    operator delete(*v5);
  }

  _Unwind_Resume(a1);
}

NSDictionary *sub_100587D68(uint64_t *a1)
{
  v4[0] = @"kRegistrationStatusKey";
  v2 = a1;
  if (*(a1 + 23) < 0)
  {
    v2 = *a1;
  }

  v5[0] = [NSString stringWithUTF8String:v2];
  v4[1] = @"kRegistrationInHomeCountryKey";
  v5[1] = [NSNumber numberWithBool:*(a1 + 24)];
  v4[2] = @"kRegistrationChangedDueToSimRemovalKey";
  v5[2] = [NSNumber numberWithBool:*(a1 + 25)];
  v4[3] = @"kRegistrationIsForcedRegisteredHomeKey";
  v5[3] = [NSNumber numberWithBool:*(a1 + 26)];
  v4[4] = @"kRegsitrationOnSatelliteSystemKey";
  v5[4] = [NSNumber numberWithBool:*(a1 + 27)];
  return [NSDictionary dictionaryWithObjects:v5 forKeys:v4 count:5];
}

uint64_t sub_100587E74(uint64_t a1, int a2)
{
  v4 = a2 + 2;
  if (a2 + 2) < 0xD && ((0x1EF7u >> v4))
  {
    return dword_101C7F440[v4];
  }

  v8 = v2;
  v9 = v3;
  if (qword_1025D4870 != -1)
  {
    sub_1018C7FD0();
  }

  v6 = qword_1025D4878;
  if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_ERROR))
  {
    *v7 = 0;
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_ERROR, "#clct,CLCTDataStatus, invalid value for CTWirelessAccessTechnology", v7, 2u);
  }

  if (sub_10000A100(121, 0))
  {
    sub_1018CBE10();
  }

  return 4294967294;
}

uint64_t sub_100587F38(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  if (a2 >= 0x12)
  {
    if (a2 == 18)
    {
      v2 = 18;
    }

    else
    {
      v2 = 0;
    }

    if (qword_1025D4870 != -1)
    {
      sub_1018C7FD0();
    }

    v4 = qword_1025D4878;
    if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_ERROR))
    {
      *v5 = 0;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_ERROR, "#clct,CLCTDataStatus, invalid value for CTDataIndicatorStatus", v5, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018CBEF4();
    }
  }

  return v2;
}

uint64_t sub_100587FE4(uint64_t a1, void *a2)
{
  *a1 = 0;
  *(a1 + 4) = 0;
  *(a1 + 12) = 0;
  *(a1 + 16) = -2;
  *(a1 + 20) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  if (a2)
  {
    *a1 = [a2 attached];
    *(a1 + 12) = [a2 roamAllowed];
    *(a1 + 20) = [a2 dataPlanSignalingReductionOverride];
    *(a1 + 21) = [a2 cellularDataPossible];
    *(a1 + 24) = [a2 activeContexts];
    *(a1 + 28) = [a2 totalActiveContexts];
    *(a1 + 32) = [a2 inHomeCountry];
    v4 = [a2 radioTechnology];
    *(a1 + 16) = sub_100587E74(v4, v4);
    v5 = [a2 indicator];
    *(a1 + 4) = sub_100587F38(v5, v5);
    v6 = [a2 indicatorOverride];
    *(a1 + 8) = sub_100587F38(v6, v6);
  }

  else
  {
    if (qword_1025D4870 != -1)
    {
      sub_1018C7FD0();
    }

    v7 = qword_1025D4878;
    if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_ERROR))
    {
      *v9 = 0;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_ERROR, "#clct,CLCTDataStatus, status is null", v9, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018CBFD8();
    }
  }

  return a1;
}

uint64_t sub_10058813C(uint64_t a1, const __CFDictionary *a2)
{
  *(a1 + 4) = 0;
  v3 = (a1 + 4);
  *(a1 + 12) = 0;
  v4 = (a1 + 12);
  *a1 = 0;
  *(a1 + 16) = -2;
  *(a1 + 20) = 0;
  v5 = (a1 + 20);
  *(a1 + 24) = 0;
  v6 = (a1 + 24);
  *(a1 + 32) = 0;
  v7 = (a1 + 32);
  sub_100005548(v23, a2);
  if ((sub_10001CBC0(v23, @"kDataAttachedKey", a1) & 1) == 0)
  {
    if (qword_1025D4870 != -1)
    {
      sub_1018C8028();
    }

    v9 = qword_1025D4878;
    if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_ERROR, "#clct,CLCTDataStatus, couldn't get value for attached", buf, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018C7FE4(buf);
      LOWORD(v22[0]) = 0;
      v10 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 0, "CLTelephonyService_Type::CLCTDataStatus::CLCTDataStatus(CFDictionaryRef)", "%s\n", v10);
      goto LABEL_72;
    }

    goto LABEL_70;
  }

  v22[0] = 0;
  if ((sub_1000052CC(v23, @"kDataIndicatorKey", v22) & 1) == 0)
  {
    if (qword_1025D4870 != -1)
    {
      sub_1018C8028();
    }

    v11 = qword_1025D4878;
    if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_ERROR, "#clct,CLCTDataStatus, couldn't get value for indicatorType", buf, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018C7FE4(buf);
      LOWORD(v21[0]) = 0;
      v10 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 0, "CLTelephonyService_Type::CLCTDataStatus::CLCTDataStatus(CFDictionaryRef)", "%s\n", v10);
      goto LABEL_72;
    }

    goto LABEL_70;
  }

  *v3 = v22[0];
  v21[0] = 0;
  if ((sub_1000052CC(v23, @"kDataIndicatorOverrideKey", v21) & 1) == 0)
  {
    if (qword_1025D4870 != -1)
    {
      sub_1018C8028();
    }

    v12 = qword_1025D4878;
    if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_ERROR, "#clct,CLCTDataStatus, couldn't get value for indicatorOverrideType", buf, 2u);
    }

    if (!sub_10000A100(121, 0))
    {
      goto LABEL_70;
    }

LABEL_34:
    sub_1018C7FE4(buf);
    LOWORD(v20[0]) = 0;
    v10 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 0, "CLTelephonyService_Type::CLCTDataStatus::CLCTDataStatus(CFDictionaryRef)", "%s\n", v10);
    goto LABEL_72;
  }

  *(a1 + 8) = v21[0];
  if ((sub_10001CBC0(v23, @"kDataRoamAllowedKey", v4) & 1) == 0)
  {
    if (qword_1025D4870 != -1)
    {
      sub_1018C8028();
    }

    v13 = qword_1025D4878;
    if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_ERROR, "#clct,CLCTDataStatus, couldn't get value for roamAllowed", buf, 2u);
    }

    if (!sub_10000A100(121, 0))
    {
      goto LABEL_70;
    }

    goto LABEL_34;
  }

  v20[0] = 0;
  if (sub_1000052CC(v23, @"kDataRadioAccessTechnologyKey", v20))
  {
    *(a1 + 16) = v20[0];
    if (sub_10001CBC0(v23, @"kDataPlanSignalingReductionOverrideKey", v5))
    {
      if (sub_10001CBC0(v23, @"kDataCellularDataPossibleKey", (a1 + 21)))
      {
        if (sub_1004FB850(v23, @"kDataActiveContextsKey", v6))
        {
          if (sub_1004FB850(v23, @"kDataTotalActiveContextsKey", (a1 + 28)))
          {
            if ((sub_10001CBC0(v23, @"kDataInHomeCountryKey", v7) & 1) == 0)
            {
              if (qword_1025D4870 != -1)
              {
                sub_1018C8028();
              }

              v8 = qword_1025D4878;
              if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_ERROR))
              {
                *buf = 0;
                _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_ERROR, "#clct,CLCTDataStatus, couldn't get value for totalActiveContexts", buf, 2u);
              }

              if (sub_10000A100(121, 0))
              {
LABEL_71:
                sub_1018C7FE4(buf);
                v10 = _os_log_send_and_compose_impl();
                sub_100152C7C("Generic", 1, 0, 0, "CLTelephonyService_Type::CLCTDataStatus::CLCTDataStatus(CFDictionaryRef)", "%s\n", v10);
LABEL_72:
                if (v10 != buf)
                {
                  free(v10);
                }
              }
            }
          }

          else
          {
            if (qword_1025D4870 != -1)
            {
              sub_1018C8028();
            }

            v18 = qword_1025D4878;
            if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_impl(dword_100000000, v18, OS_LOG_TYPE_ERROR, "#clct,CLCTDataStatus, couldn't get value for totalActiveContexts", buf, 2u);
            }

            if (sub_10000A100(121, 0))
            {
              goto LABEL_71;
            }
          }
        }

        else
        {
          if (qword_1025D4870 != -1)
          {
            sub_1018C8028();
          }

          v17 = qword_1025D4878;
          if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_impl(dword_100000000, v17, OS_LOG_TYPE_ERROR, "#clct,CLCTDataStatus, couldn't get value for activeContexts", buf, 2u);
          }

          if (sub_10000A100(121, 0))
          {
            goto LABEL_71;
          }
        }
      }

      else
      {
        if (qword_1025D4870 != -1)
        {
          sub_1018C8028();
        }

        v16 = qword_1025D4878;
        if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_ERROR, "#clct,CLCTDataStatus, couldn't get value for cellularDataPossible", buf, 2u);
        }

        if (sub_10000A100(121, 0))
        {
          goto LABEL_71;
        }
      }
    }

    else
    {
      if (qword_1025D4870 != -1)
      {
        sub_1018C8028();
      }

      v15 = qword_1025D4878;
      if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_ERROR, "#clct,CLCTDataStatus, couldn't get value for dataPlanSignalingReductionOverride", buf, 2u);
      }

      if (sub_10000A100(121, 0))
      {
        goto LABEL_71;
      }
    }
  }

  else
  {
    if (qword_1025D4870 != -1)
    {
      sub_1018C8028();
    }

    v14 = qword_1025D4878;
    if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_ERROR, "#clct,CLCTDataStatus, couldn't get value for radioTechnologyType", buf, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      goto LABEL_71;
    }
  }

LABEL_70:
  sub_100005DA4(v23);
  return a1;
}

void sub_100588C4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_100005DA4(va);
  _Unwind_Resume(a1);
}

NSDictionary *sub_100588CA0(unsigned __int8 *a1)
{
  v3[0] = @"kDataAttachedKey";
  v4[0] = [NSNumber numberWithBool:*a1];
  v3[1] = @"kDataIndicatorKey";
  v4[1] = [NSNumber numberWithInt:*(a1 + 1)];
  v3[2] = @"kDataIndicatorOverrideKey";
  v4[2] = [NSNumber numberWithInt:*(a1 + 2)];
  v3[3] = @"kDataRoamAllowedKey";
  v4[3] = [NSNumber numberWithBool:a1[12]];
  v3[4] = @"kDataRadioAccessTechnologyKey";
  v4[4] = [NSNumber numberWithInt:*(a1 + 4)];
  v3[5] = @"kDataPlanSignalingReductionOverrideKey";
  v4[5] = [NSNumber numberWithBool:a1[20]];
  v3[6] = @"kDataCellularDataPossibleKey";
  v4[6] = [NSNumber numberWithBool:a1[21]];
  v3[7] = @"kDataActiveContextsKey";
  v4[7] = [NSNumber numberWithUnsignedInt:*(a1 + 6)];
  v3[8] = @"kDataTotalActiveContextsKey";
  v4[8] = [NSNumber numberWithUnsignedInt:*(a1 + 7)];
  v3[9] = @"kDataInHomeCountryKey";
  v4[9] = [NSNumber numberWithBool:a1[32]];
  return [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:10];
}

uint64_t sub_100588E28(uint64_t a1, void *a2)
{
  *a1 = 0;
  if (a2)
  {
    *a1 = [a2 isRegisteredForSMS];
    *(a1 + 1) = [a2 isRegisteredForVoice];
  }

  else
  {
    if (qword_1025D4870 != -1)
    {
      sub_1018C7FD0();
    }

    v4 = qword_1025D4878;
    if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_ERROR))
    {
      *v6 = 0;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_ERROR, "#clct,CLCTImsRegStatus, status is null", v6, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018CC0BC();
    }
  }

  return a1;
}

BOOL *sub_100588EEC(BOOL *a1, const __CFDictionary *a2)
{
  *a1 = 0;
  v3 = a1 + 1;
  sub_100005548(v8, a2);
  if (sub_10001CBC0(v8, @"kIsRegisteredForSmsOverImsKey", a1))
  {
    if ((sub_10001CBC0(v8, @"kIsRegisteredForVoiceOverImsKey", v3) & 1) == 0)
    {
      if (qword_1025D4870 != -1)
      {
        sub_1018C8028();
      }

      v4 = qword_1025D4878;
      if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_ERROR, "#clct,CLCTImsRegStatus, couldn't get value for RegisteredForVoiceOverIms", buf, 2u);
      }

      if (sub_10000A100(121, 0))
      {
LABEL_15:
        sub_1018C7FE4(buf);
        v7 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 0, "CLTelephonyService_Type::CLCTImsRegStatus::CLCTImsRegStatus(CFDictionaryRef)", "%s\n", v7);
        if (v7 != buf)
        {
          free(v7);
        }
      }
    }
  }

  else
  {
    if (qword_1025D4870 != -1)
    {
      sub_1018C8028();
    }

    v5 = qword_1025D4878;
    if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_ERROR, "#clct,CLCTImsRegStatus, couldn't get value for RegisteredForSmsOverIms", buf, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      goto LABEL_15;
    }
  }

  sub_100005DA4(v8);
  return a1;
}

void sub_10058917C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_100005DA4(va);
  _Unwind_Resume(a1);
}

NSDictionary *sub_1005891A4(unsigned __int8 *a1)
{
  v4[0] = @"kIsRegisteredForSmsOverImsKey";
  v2 = [NSNumber numberWithBool:*a1];
  v4[1] = @"kIsRegisteredForVoiceOverImsKey";
  v5[0] = v2;
  v5[1] = [NSNumber numberWithBool:a1[1]];
  return [NSDictionary dictionaryWithObjects:v5 forKeys:v4 count:2];
}

uint64_t sub_100589248(uint64_t a1, void *a2)
{
  *a1 = 0;
  *(a1 + 2) = 0;
  if (a2)
  {
    *a1 = [objc_msgSend(a2 "userDataPreferred")];
    *(a1 + 1) = [objc_msgSend(a2 "userDefaultVoice")];
    *(a1 + 2) = [a2 isSimPresent];
  }

  else
  {
    if (qword_1025D4870 != -1)
    {
      sub_1018C7FD0();
    }

    v4 = qword_1025D4878;
    if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_ERROR))
    {
      *v6 = 0;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_ERROR, "#clct,CLCTXPCServiceSubscriptionContext, context is null", v6, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018CC1A0();
    }
  }

  return a1;
}

BOOL *sub_100589324(BOOL *a1, const __CFDictionary *a2)
{
  *a1 = 0;
  v3 = a1 + 1;
  a1[2] = 0;
  v4 = a1 + 2;
  sub_100005548(v10, a2);
  if (sub_10001CBC0(v10, @"kUserDataPreferredKey", a1))
  {
    if (sub_10001CBC0(v10, @"kUserDefaultVoiceKey", v3))
    {
      if ((sub_10001CBC0(v10, @"kSimPresentKey", v4) & 1) == 0)
      {
        if (qword_1025D4870 != -1)
        {
          sub_1018C8028();
        }

        v5 = qword_1025D4878;
        if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_ERROR, "#clct,CLCTXPCServiceSubscriptionContext, couldn't get value for isSimPresent", buf, 2u);
        }

        if (sub_10000A100(121, 0))
        {
LABEL_22:
          sub_1018C7FE4(buf);
          v9 = _os_log_send_and_compose_impl();
          sub_100152C7C("Generic", 1, 0, 0, "CLTelephonyService_Type::CLCTXPCServiceSubscriptionContext::CLCTXPCServiceSubscriptionContext(CFDictionaryRef)", "%s\n", v9);
          if (v9 != buf)
          {
            free(v9);
          }
        }
      }
    }

    else
    {
      if (qword_1025D4870 != -1)
      {
        sub_1018C8028();
      }

      v7 = qword_1025D4878;
      if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_ERROR, "#clct,CLCTXPCServiceSubscriptionContext, couldn't get value for userDefaultVoice", buf, 2u);
      }

      if (sub_10000A100(121, 0))
      {
        goto LABEL_22;
      }
    }
  }

  else
  {
    if (qword_1025D4870 != -1)
    {
      sub_1018C8028();
    }

    v6 = qword_1025D4878;
    if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_ERROR, "#clct,CLCTXPCServiceSubscriptionContext, couldn't get value for userDataPreferred", buf, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      goto LABEL_22;
    }
  }

  sub_100005DA4(v10);
  return a1;
}

void sub_1005896C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_100005DA4(va);
  _Unwind_Resume(a1);
}

NSDictionary *sub_1005896EC(unsigned __int8 *a1)
{
  v3[0] = @"kUserDataPreferredKey";
  v4[0] = [NSNumber numberWithBool:*a1];
  v3[1] = @"kUserDefaultVoiceKey";
  v4[1] = [NSNumber numberWithBool:a1[1]];
  v3[2] = @"kSimPresentKey";
  v4[2] = [NSNumber numberWithBool:a1[2]];
  return [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:3];
}

void sub_100589900(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  operator delete();
}

uint64_t sub_10058996C(uint64_t a1, uint64_t a2, uint64_t *a3, void *a4, uint64_t a5, uint64_t a6)
{
  *a1 = off_102460798;
  *(a1 + 8) = [[CLNotifierClientAdapter alloc] initWithClient:a1];
  *(a1 + 24) = a5;
  *(a1 + 32) = a6;
  if (*(a3 + 23) >= 0)
  {
    v12 = a3;
  }

  else
  {
    v12 = *a3;
  }

  v13 = [objc_msgSend(a4 "vendor")];
  *(a1 + 16) = v13;
  v14 = v13;
  if (a2)
  {
    [*(a1 + 16) setDelegateEntityName:a2];
  }

  [*(a1 + 16) registerDelegate:*(a1 + 8) inSilo:{objc_msgSend(a4, "silo")}];
  return a1;
}

void sub_100589A50(_BYTE *a1, void *a2)
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
        sub_1018C9738();
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
        sub_1018CC474(a1, a2);
      }
    }
  }
}

BOOL sub_100589CCC(uint64_t a1, void *a2, unsigned int *a3)
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
    v11 = sub_10006E830(a3);
    v14 = *(v6 + 48);
    v13 = v6 + 48;
    v12 = v14;
    if (!v14)
    {
      goto LABEL_24;
    }

    v15 = v13;
    do
    {
      if (*(v12 + 28) >= v11)
      {
        v15 = v12;
      }

      v12 = *(v12 + 8 * (*(v12 + 28) < v11));
    }

    while (v12);
    if (v15 == v13 || v11 < *(v15 + 28))
    {
LABEL_24:
      v15 = v13;
    }

    return v15 != v13;
  }

  else
  {
LABEL_8:
    if (qword_1025D47F0 != -1)
    {
      sub_1018C9738();
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
      sub_1018CC68C(a1, a2);
      return 0;
    }
  }

  return result;
}

uint64_t sub_100589E64(char *a1, int a2, unsigned int *a3)
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
        v8 = sub_10006E830(a3);
        v11 = *(v7 + 6);
        v10 = v7 + 48;
        v9 = v11;
        if (v11)
        {
          v12 = v10;
          do
          {
            if (*(v9 + 7) >= v8)
            {
              v12 = v9;
            }

            v9 = *&v9[8 * (*(v9 + 7) < v8)];
          }

          while (v9);
          if (v12 != v10 && v8 >= *(v12 + 7))
          {
            LODWORD(__p[0]) = sub_10006E830(a3);
            sub_10004E6E0((v10 - 8), __p);
            v13 = sub_10006E830(a3);
            v14 = *(a1 + 8);
            if (!v14)
            {
              goto LABEL_23;
            }

            v15 = a1 + 64;
            do
            {
              if (*(v14 + 32) >= v13)
              {
                v15 = v14;
              }

              v14 = *(v14 + 8 * (*(v14 + 32) < v13));
            }

            while (v14);
            if (v15 != a1 + 64 && v13 >= *(v15 + 8))
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
                sub_1018C974C();
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
                  sub_1018C974C();
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

                sub_100152C7C("Generic", 1, 0, 0, "virtual BOOL CLNotifier<CLTelephonyService_Type::Notification, CLTelephonyService_Type::NotificationData, char, char>::unregisterForNotification(int, const Notification_T &) [Notification_T = CLTelephonyService_Type::Notification, NotificationData_T = CLTelephonyService_Type::NotificationData, NotificationInfo_T = char, RegistrationInfo_T = char]", "%s\n", v22);
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

void sub_10058A21C(uint64_t a1, unsigned int *a2)
{
  v3 = sub_10006E830(a2);
  v6 = *(a1 + 64);
  v5 = a1 + 64;
  v4 = v6;
  if (v6)
  {
    v7 = v5;
    do
    {
      if (*(v4 + 32) >= v3)
      {
        v7 = v4;
      }

      v4 = *(v4 + 8 * (*(v4 + 32) < v3));
    }

    while (v4);
    if (v7 != v5 && v3 >= *(v7 + 32))
    {
      v8 = *(v7 + 72);
      *(v7 + 64) = 0;
      *(v7 + 72) = 0;
      if (v8)
      {

        sub_100008080(v8);
      }
    }
  }
}

uint64_t sub_10058A2A4(uint64_t a1, unsigned int *a2, const void **a3)
{
  v5 = sub_10006E830(a2);
  v8 = *(a1 + 64);
  v7 = a1 + 64;
  v6 = v8;
  if (!v8)
  {
    return 0;
  }

  v9 = v7;
  do
  {
    if (*(v6 + 32) >= v5)
    {
      v9 = v6;
    }

    v6 = *(v6 + 8 * (*(v6 + 32) < v5));
  }

  while (v6);
  if (v9 == v7)
  {
    return 0;
  }

  if (v5 < *(v9 + 32))
  {
    return 0;
  }

  v10 = *(v9 + 64);
  if (!v10)
  {
    return 0;
  }

  v11 = *v10;
  if (*v10)
  {
    CFRetain(*v10);
  }

  v12 = *a3;
  *a3 = v11;
  v14 = v12;
  sub_10006E914(&v14);
  return 1;
}

void sub_10058A3E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100008080(a12);
  }

  _Unwind_Resume(exception_object);
}

const void **sub_10058A3F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = 0;
  (*(*a1 + 152))(a1, a2, &v5, a3, a4, 0);
  return sub_10006E914(&v5);
}

void sub_10058A45C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10006E914(va);
  _Unwind_Resume(a1);
}

void sub_10058A470(uint64_t a1)
{
  if (*(a1 + 108) == 1)
  {
    if (qword_1025D47F0 != -1)
    {
      sub_1018C9738();
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
      sub_1018CC8B8(a1);
    }
  }

  else
  {
    if (qword_1025D47F0 != -1)
    {
      sub_1018C9738();
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
      sub_1018CC794(a1);
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
              sub_1018C974C();
            }

            v9 = qword_1025D47F8;
            if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
            {
              v10 = a1 + 8;
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
                sub_1018C974C();
              }

              v16 = _os_log_send_and_compose_impl();
              sub_100152C7C("Generic", 1, 0, 2, "virtual void CLNotifier<CLTelephonyService_Type::Notification, CLTelephonyService_Type::NotificationData, char, char>::listClients() [Notification_T = CLTelephonyService_Type::Notification, NotificationData_T = CLTelephonyService_Type::NotificationData, NotificationInfo_T = char, RegistrationInfo_T = char]", "%s\n", v16);
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

void sub_10058A834(uint64_t a1)
{
  sub_10058B0C4(a1);

  operator delete();
}

uint64_t *sub_10058A94C(uint64_t a1, int *a2)
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

uint64_t sub_10058AA50(uint64_t a1, int a2)
{
  *a1 = a2;
  sub_10000EC00((a1 + 8), [@"kBundleIDUnavailable" UTF8String]);
  *(a1 + 32) = 0;
  sub_10000EC00((a1 + 40), [@"kBundleVersionUnavailable" UTF8String]);
  *(a1 + 64) = 0;
  sub_10004FD18(a1 + 72);
  *(a1 + 88) = 0;
  sub_10004FD18(a1 + 96);
  *(a1 + 112) = 0;
  sub_10004FD18(a1 + 120);
  *(a1 + 136) = 0;
  return a1;
}

void sub_10058AAD4(_Unwind_Exception *a1)
{
  sub_100005DA4(v1 + 96);
  sub_100005DA4(v1 + 72);
  if (*(v1 + 63) < 0)
  {
    operator delete(*(v1 + 40));
  }

  if (*(v1 + 31) < 0)
  {
    operator delete(*(v1 + 8));
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10058AB28(uint64_t a1)
{
  sub_100005DA4(a1 + 120);
  sub_100005DA4(a1 + 96);
  sub_100005DA4(a1 + 72);
  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }

  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

uint64_t sub_10058ABF4(uint64_t *a1, uint64_t a2)
{
  v2 = 0x66FD0EB66FD0EB67 * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x5E293205E29320)
  {
    sub_10028C64C();
  }

  if (0xCDFA1D6CDFA1D6CELL * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0xCDFA1D6CDFA1D6CELL * ((a1[2] - *a1) >> 3);
  }

  if ((0x66FD0EB66FD0EB67 * ((a1[2] - *a1) >> 3)) >= 0x2F149902F14990)
  {
    v6 = 0x5E293205E29320;
  }

  else
  {
    v6 = v3;
  }

  v48 = a1;
  if (v6)
  {
    sub_100071EDC(a1, v6);
  }

  v7 = 696 * v2;
  v45 = 0;
  v46 = v7;
  v47 = (696 * v2);
  v8 = *(a2 + 16);
  v9 = *(a2 + 32);
  v10 = *(a2 + 48);
  *(v7 + 60) = *(a2 + 60);
  *(v7 + 32) = v9;
  *(v7 + 48) = v10;
  *(v7 + 16) = v8;
  *v7 = *a2;
  *(v7 + 80) = *(a2 + 80);
  v11 = 696 * v2;
  *(v11 + 88) = 0;
  *(v7 + 96) = 0;
  *(v7 + 104) = 0;
  sub_10038EB38(v11 + 88, *(a2 + 88), *(a2 + 96), (*(a2 + 96) - *(a2 + 88)) >> 2);
  *(v7 + 112) = *(a2 + 112);
  v12 = *(a2 + 128);
  v13 = *(a2 + 144);
  v14 = *(a2 + 176);
  *(v7 + 160) = *(a2 + 160);
  *(v7 + 176) = v14;
  *(v7 + 128) = v12;
  *(v7 + 144) = v13;
  v15 = *(a2 + 192);
  v16 = *(a2 + 208);
  v17 = *(a2 + 240);
  *(v7 + 224) = *(a2 + 224);
  *(v7 + 240) = v17;
  *(v7 + 192) = v15;
  *(v7 + 208) = v16;
  v18 = *(a2 + 256);
  v19 = *(a2 + 272);
  v20 = *(a2 + 288);
  *(v7 + 300) = *(a2 + 300);
  *(v7 + 272) = v19;
  *(v7 + 288) = v20;
  *(v7 + 256) = v18;
  if (*(a2 + 343) < 0)
  {
    sub_100007244((v7 + 320), *(a2 + 320), *(a2 + 328));
  }

  else
  {
    v21 = *(a2 + 320);
    *(v7 + 336) = *(a2 + 336);
    *(v7 + 320) = v21;
  }

  v22 = *(a2 + 344);
  v23 = *(a2 + 376);
  *(v7 + 360) = *(a2 + 360);
  *(v7 + 376) = v23;
  *(v7 + 344) = v22;
  v24 = *(a2 + 392);
  v25 = *(a2 + 408);
  v26 = *(a2 + 440);
  *(v7 + 424) = *(a2 + 424);
  *(v7 + 440) = v26;
  *(v7 + 392) = v24;
  *(v7 + 408) = v25;
  v27 = *(a2 + 456);
  v28 = *(a2 + 472);
  v29 = *(a2 + 488);
  *(v7 + 504) = *(a2 + 504);
  *(v7 + 472) = v28;
  *(v7 + 488) = v29;
  *(v7 + 456) = v27;
  v30 = *(a2 + 512);
  v31 = *(a2 + 528);
  v32 = *(a2 + 560);
  *(v7 + 544) = *(a2 + 544);
  *(v7 + 560) = v32;
  *(v7 + 512) = v30;
  *(v7 + 528) = v31;
  v33 = *(a2 + 576);
  v34 = *(a2 + 592);
  v35 = *(a2 + 624);
  *(v7 + 608) = *(a2 + 608);
  *(v7 + 624) = v35;
  *(v7 + 576) = v33;
  *(v7 + 592) = v34;
  v36 = *(a2 + 640);
  v37 = *(a2 + 656);
  v38 = *(a2 + 672);
  *(v7 + 688) = *(a2 + 688);
  *(v7 + 656) = v37;
  *(v7 + 672) = v38;
  *(v7 + 640) = v36;
  *&v47 = v47 + 696;
  v39 = a1[1];
  v40 = v46 + *a1 - v39;
  sub_10006F96C(a1, *a1, v39, v40);
  v41 = *a1;
  *a1 = v40;
  v42 = a1[2];
  v44 = v47;
  *(a1 + 1) = v47;
  *&v47 = v41;
  *(&v47 + 1) = v42;
  v45 = v41;
  v46 = v41;
  sub_10006FAE8(&v45);
  return v44;
}

void sub_10058AE4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  v7 = *v4;
  if (*v4)
  {
    *(v5 + 96) = v7;
    operator delete(v7);
  }

  sub_10006FAE8(va);
  _Unwind_Resume(a1);
}

void sub_10058B040(std::__shared_weak_count *a1)
{
  a1->__vftable = off_102460728;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_10058B0C4(uint64_t a1)
{
  *a1 = off_102460798;
  v2 = (a1 + 8);
  [*(a1 + 16) forget:*(a1 + 8)];

  [*v2 invalidate];
  *v2 = 0;
  *(a1 + 16) = 0;
  return a1;
}

const void **sub_10058B210(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    sub_10006E914(result);

    operator delete();
  }

  return result;
}

void sub_10058B254(uint64_t a1@<X8>, float a2@<S0>)
{
  *(v4 - 64) = a2;
  *(v4 - 60) = v2;
  *(v4 - 56) = 1026;
  *(a1 + 10) = v3;
}

BOOL sub_10058B2C0(const __CFString *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);

  return sub_1000238CC(a1, va);
}

double sub_10058B2D8(uint64_t a1)
{
  *(a1 + 56) = 0;
  *a1 = 0u;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 16) = 0xBFF0000000000000;
  result = NAN;
  *(a1 + 40) = -1;
  *(a1 + 48) = 0;
  *(a1 + 52) = 0;
  return result;
}

void sub_10058B308(uint64_t a1, uint64_t a2)
{
  v4 = (a2 + 16);
  v3 = *(a2 + 16);
  if (v3 > 15)
  {
    if (v3 == 16)
    {
      *(a1 + 56) = 0;
    }

    else if (v3 == 17)
    {
      *(a1 + 56) = 1;
    }
  }

  else if (v3 == 13)
  {
    *a1 = 0u;
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
    *(a1 + 16) = 0xBFF0000000000000;
    *(a1 + 40) = -1;
    *(a1 + 48) = 0;
    *(a1 + 52) = 0;
    *(a1 + 56) = 1;
    *a1 = *a2;
    v5 = *(a2 + 176);
    v15[10] = *(a2 + 160);
    v15[11] = v5;
    v15[12] = *(a2 + 192);
    v16 = *(a2 + 208);
    v6 = *(a2 + 112);
    v15[6] = *(a2 + 96);
    v15[7] = v6;
    v7 = *(a2 + 144);
    v15[8] = *(a2 + 128);
    v15[9] = v7;
    v8 = *(a2 + 48);
    v15[2] = *(a2 + 32);
    v15[3] = v8;
    v9 = *(a2 + 80);
    v15[4] = *(a2 + 64);
    v15[5] = v9;
    v10 = *(a2 + 16);
    v15[0] = *a2;
    v15[1] = v10;
    v11 = sub_100BDFE34(v15);
    *(a1 + 40) = v11;
    sub_100BDFDAC(v11, v15);
    *(a1 + 49) = v15[0];
  }

  else if (v3 == 15)
  {
    if ((*(a1 + 40) & 0x80000000) == 0)
    {
      *(a1 + 8) = *(a2 + 8);
      sub_10058B520(a1);
    }

    *(a1 + 56) = 0;
    *a1 = 0u;
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
    *(a1 + 16) = 0xBFF0000000000000;
    *(a1 + 40) = -1;
    *(a1 + 48) = 0;
    *(a1 + 52) = 0;
  }

  if (qword_1025D4580 != -1)
  {
    sub_1018CCCFC();
  }

  v12 = qword_1025D4588;
  if (os_log_type_enabled(qword_1025D4588, OS_LOG_TYPE_DEBUG))
  {
    v13 = *v4;
    v14 = *(a1 + 56);
    LODWORD(v15[0]) = 67109376;
    DWORD1(v15[0]) = v13;
    WORD4(v15[0]) = 1024;
    *(v15 + 10) = v14;
    _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_DEBUG, "[CLNoMovement] analytics: eventType,%d,isCollectingSessionMetrics,%d", v15, 0xEu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018CCD24(v4, a1);
  }
}

void sub_10058B520(uint64_t a1)
{
  if (objc_opt_class() && ([+[MCProfileConnection sharedConnection](MCProfileConnection "sharedConnection")] & 1) != 0)
  {
    v18[0] = @"sessionDuration";
    v2 = llround((*(a1 + 8) - *a1) / 60.0);
    if (v2 >= 180)
    {
      v3 = 180;
    }

    else
    {
      v3 = v2;
    }

    v19[0] = [NSNumber numberWithInt:v3];
    v18[1] = @"timeToTriggerNoMovement";
    v4 = llround(*(a1 + 16) / 60.0);
    if (v4 >= 180)
    {
      v5 = 180;
    }

    else
    {
      v5 = v4;
    }

    v19[1] = [NSNumber numberWithInt:v5];
    v18[2] = @"averagePercentEpochsInNonTriggerWindows";
    v6 = ((*(a1 + 32) / *(a1 + 24)) * 100.0);
    if (v6 >= 100)
    {
      v7 = 100;
    }

    else
    {
      v7 = v6;
    }

    v19[2] = [NSNumber numberWithInt:v7];
    v18[3] = @"averagePercentEpochsInTriggerWindows";
    v8 = ((*(a1 + 36) / *(a1 + 24)) * 100.0);
    if (v8 >= 100)
    {
      v9 = 100;
    }

    else
    {
      v9 = v8;
    }

    v19[3] = [NSNumber numberWithInt:v9];
    v18[4] = @"percentValidHeadsetEpochs";
    v10 = (100.0 - (*(a1 + 28) / *(a1 + 24)) * 100.0);
    if (v10 >= 100)
    {
      v11 = 100;
    }

    else
    {
      v11 = v10;
    }

    v19[4] = [NSNumber numberWithInt:v11];
    v18[5] = @"hkWorkoutActivityType";
    v19[5] = [NSNumber numberWithInt:*(a1 + 40)];
    v18[6] = @"detectionType";
    v19[6] = [NSNumber numberWithInt:*(a1 + 44)];
    v18[7] = @"enteredNoMovementState";
    v19[7] = [NSNumber numberWithBool:*(a1 + 48)];
    v18[8] = @"shouldServeDetectionToClients";
    v19[8] = [NSNumber numberWithBool:*(a1 + 49)];
    v18[9] = @"numClients";
    v19[9] = [NSNumber numberWithInt:*(a1 + 52)];
    v12 = [NSDictionary dictionaryWithObjects:v19 forKeys:v18 count:10];
    if (qword_1025D4580 != -1)
    {
      sub_1018CCCFC();
    }

    v13 = qword_1025D4588;
    if (os_log_type_enabled(qword_1025D4588, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138543362;
      v17 = v12;
      _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_DEBUG, "[CLNoMovement] analytics: session metrics %{public}@", buf, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018CCE4C(v12);
    }

    AnalyticsSendEventLazy();
    if (qword_1025D4580 != -1)
    {
      sub_1018CCCFC();
    }

    v14 = qword_1025D4588;
    if (os_log_type_enabled(qword_1025D4588, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_INFO, "[CLNoMovement] analytics: uploaded phone session metrics", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018CCF5C();
    }
  }

  else
  {
    if (qword_1025D4580 != -1)
    {
      sub_1018CD04C();
    }

    v15 = qword_1025D4588;
    if (os_log_type_enabled(qword_1025D4588, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_INFO, "[CLNoMovement] analytics: no IHA authorization", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018CD060();
    }
  }
}

_DWORD *sub_10058B928(_DWORD *result, int a2, void *a3, unsigned int a4)
{
  if (*(result + 56) == 1)
  {
    v15 = v6;
    v16 = v5;
    v17 = v4;
    v12 = result;
    ++result[6];
    if (a2 == 3 && (a4 & 0x80000000) != 0)
    {
      ++result[7];
    }

    result = [a3 state];
    if (result == 2 && (v12[12] & 1) == 0)
    {
      v12[11] = [a3 detectionType];
      *(v12 + 48) = 1;
      result = [a3 startTime];
      *(v12 + 2) = v13 - *v12;
    }

    if ((a4 & 0x80000000) == 0)
    {
      v14 = a4;
      if (*(v12 + 48) == 1)
      {
        *(v12 + 9) = *(v12 + 9) + v14;
      }

      else
      {
        *(v12 + 8) = *(v12 + 8) + v14;
      }
    }
  }

  return result;
}

uint64_t sub_10058B9FC(uint64_t result, int a2)
{
  if (*(result + 56) == 1)
  {
    v2 = *(result + 52);
    if (v2 <= a2)
    {
      v2 = a2;
    }

    *(result + 52) = v2;
  }

  return result;
}

void sub_10058BBAC(id a1)
{
  sub_10001A3E8();
  if (sub_10001CF04())
  {
    byte_102656F40 = 1;
  }
}

void sub_10058BE38()
{
  if ((atomic_load_explicit(&qword_1025D5F78, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1025D5F78))
  {
    __cxa_atexit(sub_1004C707C, &xmmword_1025D5F68, dword_100000000);

    __cxa_guard_release(&qword_1025D5F78);
  }
}

float sub_10058BEB0(float **a1, int a2)
{
  v2 = a1[1];
  if (*a1 == v2)
  {
    v4 = 0.0;
    v3 = 0.0;
  }

  else
  {
    v3 = 0.0;
    v4 = 0.0;
    v5 = *a1;
    do
    {
      v7 = *v5;
      v6 = v5[1];
      v5 += 2;
      v3 = v3 + (v6 * v7);
      v4 = v4 + (v7 * v7);
    }

    while (v5 != v2);
  }

  v8 = 0;
  result = v3 / fmaxf(v4, 0.0001);
  if (a2 <= 1)
  {
    v10 = 1;
  }

  else
  {
    v10 = a2;
  }

  do
  {
    if (*a1 == v2)
    {
      v12 = 0.0;
      v11 = 0.0;
    }

    else
    {
      v11 = 0.0;
      v12 = 0.0;
      v13 = *a1;
      do
      {
        v15 = *v13;
        v14 = v13[1];
        v13 += 2;
        v16 = 1.0 / fmaxf(fabsf(v14 - (v15 * result)), 0.0001);
        v11 = v11 + ((v14 * v16) * v15);
        v12 = v12 + ((v15 * v16) * v15);
      }

      while (v13 != v2);
    }

    ++v8;
    result = v11 / fmaxf(v12, 0.0001);
  }

  while (v8 != v10);
  return result;
}

uint64_t sub_10058BF6C(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a1 - 8;
  }

  else
  {
    v2 = 0;
  }

  return sub_10058CC10(v2, a2);
}

double sub_10058BF7C(uint64_t a1)
{
  v1 = a1 - 8;
  if (!a1)
  {
    v1 = 0;
  }

  result = 0.0;
  *(v1 + 896) = 0;
  *(v1 + 904) = 0;
  return result;
}

int *sub_10058BF9C(int *result)
{
  if (result)
  {
    v1 = result - 2;
  }

  else
  {
    v1 = 0;
  }

  *(v1 + 112) = 0;
  v1[226] = 0;
  if (*(v1 + 23))
  {
    result = sub_100457AE8(v1 + 22, 0);
    v2 = *result;
  }

  else
  {
    v2 = 0;
  }

  v1[229] = v2;
  v1[230] = 0;
  return result;
}

uint64_t sub_10058BFF8(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a1 - 8;
  }

  else
  {
    v2 = 0;
  }

  return sub_10058CCF0(v2, a2);
}

double sub_10058C008(uint64_t a1)
{
  v1 = a1 - 8;
  if (!a1)
  {
    v1 = 0;
  }

  result = 0.0;
  *(v1 + 896) = 0;
  *(v1 + 904) = 0;
  return result;
}

uint64_t sub_10058C024(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a1 - 8;
  }

  else
  {
    v2 = 0;
  }

  return sub_10058CF70(v2, a2);
}

double sub_10058C034(uint64_t a1)
{
  *(a1 + 8) = &unk_102460890;
  *(a1 + 16) = 13;
  *(a1 + 24) = 512;
  *a1 = off_1024609D8;
  *(a1 + 28) = 1;
  *(a1 + 44) = 0xC00000000;
  *(a1 + 40) = 1031798784;
  *(a1 + 100) = 1;
  *(a1 + 120) = 6;
  *(a1 + 112) = 0;
  *(a1 + 148) = 1;
  *(a1 + 168) = 6;
  *(a1 + 160) = 0;
  *(a1 + 196) = 1;
  *(a1 + 216) = 47;
  *(a1 + 208) = 0;
  *(a1 + 408) = 1;
  *(a1 + 424) = 0x400000000;
  *(a1 + 420) = 0;
  *(a1 + 448) = off_10247E150;
  *(a1 + 456) = 0x4039000000000000;
  *(a1 + 464) = xmmword_101C7F490;
  *(a1 + 480) = 0;
  *(a1 + 504) = 0;
  *(a1 + 488) = 0u;
  *(a1 + 512) = 1;
  *(a1 + 528) = 0x4B00000000;
  *(a1 + 524) = 0;
  *(a1 + 840) = 0u;
  *(a1 + 856) = 0xC08F380000000000;
  *(a1 + 864) = 0xC08F380000000000;
  *(a1 + 872) = 0;
  *(a1 + 880) = 0;
  *(a1 + 888) = 0;
  result = 0.0;
  *(a1 + 896) = xmmword_101C7F4A0;
  *(a1 + 912) = 0;
  *(a1 + 916) = 0;
  return result;
}

uint64_t sub_10058C164(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v4 = *(a1 + 908);
  v5 = __OFSUB__(v4, 1);
  v6 = v4 - 1;
  if (v6 < 0 == v5)
  {
    result = 0;
    *(a1 + 908) = v6;
    return result;
  }

  v8 = *(a1 + 214);
  if (*(a1 + 216) != v8)
  {
    return 0;
  }

  if (*(a1 + 214))
  {
    v11 = 0;
    LODWORD(v12) = 0;
    do
    {
      v12 = *sub_1000C4370((a1 + 212), v11++) + v12;
    }

    while (v8 != v11);
    v13 = *(a1 + 216);
    v14 = 100 * v12;
  }

  else
  {
    v13 = 0;
    v14 = 0;
  }

  v15 = v14 / v13;
  if (v15 <= 19)
  {
    result = 0;
    *(a1 + 912) = 0;
    return result;
  }

  v16 = *(a1 + 912);
  *(a1 + 912) = v16 + 1;
  if (v15 < 0x4C)
  {
    return 0;
  }

  result = 0;
  if (v16 >= 46 && !*(a2 + 20))
  {
    result = 0;
    if ((*(a2 + 80) & 1) == 0 && *(a2 + 16) >= 5)
    {
      *a3 = v16 + 1 + (v13 * 0.2);
      return 1;
    }
  }

  return result;
}

uint64_t sub_10058C28C(uint64_t a1)
{
  v1 = *(a1 + 18);
  if (!*(a1 + 18))
  {
    return 0;
  }

  v3 = 0;
  LODWORD(v4) = 0;
  do
  {
    v4 = (*sub_1000C4370((a1 + 16), v3++) + v4);
  }

  while (v1 != v3);
  return v4;
}

uint64_t sub_10058C2F0(uint64_t a1, double *a2)
{
  *buf = 7;
  *&buf[8] = 8;
  v55 = 0;
  v56 = 0;
  __p = 0;
  sub_1004579D4(&__p, buf, &buf[12], 3uLL);
  sub_10090303C(a1 + 448, a2);
  v110[0] = xmmword_101C78400;
  v113 = 0;
  memset(&v110[1], 0, 96);
  v111 = 0u;
  memset(v112, 0, sizeof(v112));
  v114 = xmmword_101C78400;
  v115 = 0;
  v116 = 0;
  memset(v117, 0, sizeof(v117));
  v118 = 0;
  v120 = 0;
  v121 = 0;
  v119 = 0u;
  v122 = xmmword_101C78400;
  v123 = 0;
  v124 = 0;
  v125 = 0xFFEFFFFFFFFFFFFFLL;
  v136 = 0;
  v126 = 0u;
  v127 = 0u;
  v128 = 0u;
  v129 = 0u;
  v130 = 0u;
  v131 = 0;
  v132 = 0u;
  v133 = 0u;
  v134 = 0u;
  memset(v135, 0, sizeof(v135));
  v137 = 0u;
  v138 = 0xFFEFFFFFFFFFFFFFLL;
  v139 = 0;
  v140 = 0;
  v145 = 0;
  v146 = 0;
  v151 = 0;
  v143 = 0u;
  memset(v144, 0, sizeof(v144));
  v141 = 0u;
  v142 = 0u;
  v149 = 0;
  v147 = 0u;
  v148 = 0u;
  memset(v150, 0, sizeof(v150));
  v152 = 0xFFEFFFFFFFFFFFFFLL;
  v153 = 0u;
  v154 = 0u;
  v155 = 0u;
  v156 = 0u;
  v157 = 0u;
  v158 = 0u;
  v159 = 0u;
  v160 = 0u;
  v161 = 0u;
  v162 = 0u;
  v163 = 0u;
  v164 = 0u;
  v165 = 0u;
  v166 = 0u;
  v167 = 0u;
  v168 = 0u;
  v169 = 0u;
  v170 = 0u;
  v171 = 0u;
  v172 = 0u;
  v173 = 0xFFEFFFFFFFFFFFFFLL;
  v174 = 0u;
  v175 = 0u;
  v176 = 0u;
  v177 = 0u;
  v178 = 0xFFEFFFFFFFFFFFFFLL;
  v179 = 0;
  v180 = 0;
  v181 = 0;
  v182 = 0;
  v183 = 0xFFEFFFFFFFFFFFFFLL;
  v184 = 0u;
  v185 = 0x80000000800000;
  v186 = 0u;
  v187 = xmmword_101C78410;
  v188 = 0x80000000800000;
  v189 = 0u;
  v190 = 0u;
  v191 = 0;
  v192 = 0xFFEFFFFFFFFFFFFFLL;
  v193 = 0u;
  v194 = 0u;
  v195 = 0u;
  v196 = 0u;
  v197 = 0u;
  v198 = 0u;
  v199 = 0;
  v200 = 0xFFEFFFFFFFFFFFFFLL;
  v201 = 0;
  v202 = 0;
  v203 = 0xFFEFFFFFFFFFFFFFLL;
  v204 = 7;
  v205 = 0xFFEFFFFFFFFFFFFFLL;
  v206 = 0;
  v208 = 0;
  v207 = 0u;
  if (sub_1000C2B7C(a2, &__p, v110))
  {
    if (*&v186 >= *&v184)
    {
      v4 = *&v184;
    }

    else
    {
      v4 = *&v186;
    }

    v5 = v163 & 0xFD;
    v6 = DWORD2(v166) < 2 && v5 != 1;
    *buf = v6;
    sub_1000C42AC((a1 + 116), buf);
    *(a1 + 100) = 1;
    *buf = DWORD2(v166) < 2;
    sub_1000C42AC((a1 + 164), buf);
    *(a1 + 148) = 1;
    if (DWORD2(v166))
    {
      v7 = 0;
    }

    else
    {
      v7 = v5 != 1;
    }

    *buf = v7;
    sub_1000C42AC((a1 + 212), buf);
    v8 = v4 * 57.296;
    *(a1 + 196) = 1;
    v9 = *(a1 + 46);
    v10 = *(a1 + 48);
    v11 = *(a1 + 44);
    if (v11 + v9 >= v10)
    {
      v12 = *(a1 + 48);
    }

    else
    {
      v12 = 0;
    }

    *(a1 + 4 * (v11 + v9 - v12) + 52) = *(&v184 + 1) * 57.296;
    if (v10 <= v9)
    {
      if (v11 + 1 < v10)
      {
        LOWORD(v10) = 0;
      }

      *(a1 + 44) = v11 + 1 - v10;
    }

    else
    {
      *(a1 + 46) = v9 + 1;
    }

    *(a1 + 28) = 1;
    *buf = v8 > 10.0;
    sub_1000C42AC((a1 + 424), buf);
    *(a1 + 408) = 1;
    v13 = *(a1 + 118);
    if (*(a1 + 120) == v13 && *(a1 + 48) == *(a1 + 46) && *(a1 + 428) == *(a1 + 426))
    {
      v48 = 0.0;
      v47 = 0;
      v46 = 0u;
      v49 = xmmword_101C7F4B0;
      *v50 = 0xC08F380000000000;
      v50[8] = 0;
      *&v50[16] = 0;
      v50[24] = 0;
      v51 = 0;
      v52 = 0;
      v53 = 0;
      if (*(a1 + 28) == 1)
      {
        sub_100457CE4(a1 + 28);
        v13 = *(a1 + 118);
      }

      v14 = *(a1 + 36);
      v51 = v5 == 1;
      v15 = sqrt(v14);
      v16 = v14 <= 0.0;
      v17 = 0.0;
      if (!v16)
      {
        v17 = v15;
      }

      *&v46 = v8;
      *(&v46 + 1) = v17;
      HIDWORD(v47) = DWORD2(v166);
      v48 = *(&v111 + 1);
      if (v13)
      {
        v18 = 0;
        v19 = 0;
        v20 = v13;
        do
        {
          v19 += *sub_1000C4370((a1 + 116), v18++);
        }

        while (v20 != v18);
      }

      else
      {
        v19 = 0;
      }

      LODWORD(v47) = v19;
      v21 = *(a1 + 864);
      v49 = *(a1 + 848);
      *v50 = v21;
      *&v50[9] = *(a1 + 873);
      v22 = *(a1 + 166);
      if (*(a1 + 166))
      {
        v23 = 0;
        v24 = 0;
        do
        {
          v24 += *sub_1000C4370((a1 + 164), v23++);
        }

        while (v22 != v23);
      }

      else
      {
        v24 = 0;
      }

      v52 = v24;
      v25 = *(a1 + 426);
      if (*(a1 + 426))
      {
        v26 = 0;
        v27 = 0;
        do
        {
          v27 += *sub_1000C4370((a1 + 424), v26++);
        }

        while (v25 != v26);
      }

      else
      {
        v27 = 0;
      }

      v53 = v27;
      sub_1000CE87C(a1 + 8, 0, &v46);
      v45 = 0;
      if (sub_10058C164(a1, &v46, &v45))
      {
        *(a1 + 904) = v45;
        sub_1000CE87C(a1 + 8, 4, buf);
      }

      v44 = *(a1 + 24);
      if (qword_1025D43F0 != -1)
      {
        sub_1018CD370();
      }

      v28 = qword_1025D43F8;
      if (os_log_type_enabled(qword_1025D43F8, OS_LOG_TYPE_INFO))
      {
        v29 = *(a1 + 896);
        v30 = *(a1 + 900);
        v31 = *(a1 + 214);
        if (*(a1 + 214))
        {
          v32 = 0;
          v33 = 0;
          do
          {
            v33 += *sub_1000C4370((a1 + 212), v32++);
          }

          while (v31 != v32);
        }

        else
        {
          v33 = 0;
        }

        v34 = *(a1 + 904);
        v35 = *(a1 + 920);
        *buf = 67112448;
        *&buf[4] = v44;
        *&buf[8] = 1024;
        *&buf[10] = v29;
        v86 = 1024;
        v87 = v30;
        v88 = 1024;
        v89 = v33;
        v90 = 1024;
        v91 = v34;
        v92 = 2048;
        v93 = *(&v46 + 1);
        v94 = 2048;
        v95 = v46;
        v96 = 1024;
        v97 = v5 == 1;
        v98 = 1024;
        v99 = HIDWORD(v47);
        v100 = 2048;
        v101 = v48;
        v102 = 1024;
        v103 = v47;
        v104 = 2048;
        v105 = *v50;
        v106 = 1024;
        v107 = v50[8];
        v108 = 2048;
        v109 = v35;
        _os_log_impl(dword_100000000, v28, OS_LOG_TYPE_INFO, "IndoorPedStop,state,%d,headingCnt,%d,stepCount,%d,zeroStepCount,%d,likelyExitCount,%d,longStd,%f,shortStd,%f,rails,%d,currentSteps,%d,vm,%f,recentZeroSteps,%d,exertionDelta,%f,exertionIsLow,%d,headingDelta,%f", buf, 0x6Au);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1018CD398(buf);
        v38 = *(a1 + 896);
        v39 = *(a1 + 900);
        v40 = sub_10058C28C(a1 + 196);
        v41 = *(a1 + 904);
        v42 = *(a1 + 920);
        v57 = 67112448;
        v58 = v44;
        v59 = 1024;
        v60 = v38;
        v61 = 1024;
        v62 = v39;
        v63 = 1024;
        v64 = v40;
        v65 = 1024;
        v66 = v41;
        v67 = 2048;
        v68 = *(&v46 + 1);
        v69 = 2048;
        v70 = v46;
        v71 = 1024;
        v72 = v5 == 1;
        v73 = 1024;
        v74 = HIDWORD(v47);
        v75 = 2048;
        v76 = v48;
        v77 = 1024;
        v78 = v47;
        v79 = 2048;
        v80 = *v50;
        v81 = 1024;
        v82 = v50[8];
        v83 = 2048;
        v84 = v42;
        v43 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "virtual CLWorkoutPredictor_Type::WorkoutStopDetectionEvent CLTreadmillWorkoutStopModel::update(const CLWorkoutPredictorInputs &)", "%s\n", v43);
        if (v43 != buf)
        {
          free(v43);
        }
      }

      if (*(a1 + 24) == 4)
      {
        v36 = 1;
        goto LABEL_58;
      }
    }
  }

  else
  {
    BYTE1(v89) = 13;
    strcpy(buf, "TreadmillStop");
    sub_100F9942C(a2, buf, &__p);
    if (SBYTE1(v89) < 0)
    {
      operator delete(*buf);
    }
  }

  v36 = 0;
LABEL_58:
  if (__p)
  {
    v55 = __p;
    operator delete(__p);
  }

  return v36;
}