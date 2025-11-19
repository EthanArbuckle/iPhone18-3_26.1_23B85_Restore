void sub_100178F78(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, std::__shared_weak_count *a16)
{
  sub_100008080(a15);
  std::__shared_weak_count::__release_weak(a16);
  _Unwind_Resume(a1);
}

void *sub_100178FC8(uint64_t a1, unint64_t *a2)
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

void sub_1001790A4(uint64_t a1, int a2)
{
  v2 = *(a1 + 16);
  v3 = v2 + 80 * a2;
  v6 = *(v3 + 32);
  v4 = v3 + 32;
  v5 = v6;
  v7 = *(v4 - 16);
  if (v7 <= 0.0)
  {
    if (v5 != (v4 + 8))
    {
      do
      {
        *(v5 + 11) = 1;
        v17 = v5[1];
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
            v18 = v5[2];
            v15 = *v18 == v5;
            v5 = v18;
          }

          while (!v15);
        }

        v5 = v18;
      }

      while (v18 != (v4 + 8));
    }
  }

  else if (v5 != (v2 + 80 * a2 + 40))
  {
    do
    {
      if (v7 <= 0.0)
      {
        if (qword_1025D4200 != -1)
        {
          sub_1019894E8();
        }

        v10 = qword_1025D4208;
        if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_FAULT))
        {
          v11 = *(*(a1 + 16) + 80 * a2 + 16);
          *buf = 134217984;
          v20 = v11;
          _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_FAULT, "CLMotionNotifier::updateSamplePeriod UpdateInterval:%f", buf, 0xCu);
        }

        if (sub_10000A100(121, 0))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1025D4200 != -1)
          {
            sub_1019894E8();
          }

          v16 = _os_log_send_and_compose_impl();
          sub_100152C7C("Generic", 1, 0, 0, "void CLMotionNotifier::updateSamplePeriods(int)", "%s\n", v16);
          if (v16 != buf)
          {
            free(v16);
          }
        }
      }

      v12 = *(a1 + 16);
      v7 = *(v12 + 80 * a2 + 16);
      *(v5 + 11) = llround(*(v5 + 6) / v7);
      v13 = v5[1];
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
          v14 = v5[2];
          v15 = *v14 == v5;
          v5 = v14;
        }

        while (!v15);
      }

      v5 = v14;
    }

    while (v14 != (v12 + 80 * a2 + 40));
  }
}

uint64_t sub_100179350(uint64_t a1, double a2)
{
  v3 = rint(a2 * 1000000.0);
  if (v3 >= 1000000)
  {
    v3 = 1000000;
  }

  if (v3 <= 10000)
  {
    v4 = 10000;
  }

  else
  {
    v4 = v3;
  }

  v5 = [[NSNumber alloc] initWithLong:v4];
  (*(*a1 + 16))(a1, @"BatchInterval", v5);

  return v4;
}

void *sub_100179400(uint64_t a1)
{
  *buf = &v4;
  v1 = sub_1000583C0((a1 + 288), &v4)[3];
  if (!v1)
  {
    if (qword_1025D4790 != -1)
    {
      sub_1001456E8();
    }

    v2 = qword_1025D4798;
    if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_INFO))
    {
      *buf = 68289282;
      *&buf[4] = 0;
      v6 = 2082;
      v7 = "";
      v8 = 2082;
      v9 = "21CLHeadingSubscription" & 0x7FFFFFFFFFFFFFFFLL;
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Creating subscription due to demand, type:%{public, location:escape_only}s}", buf, 0x1Cu);
    }

    operator new();
  }

  if (!result)
  {
    sub_1019F0E54();
  }

  return result;
}

uint64_t sub_100179604(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v6 = sub_10005C6F0(a1, a2, a3, a4, a5);
  *v6 = off_1024C3450;
  *(v6 + 48) = 0;
  *(v6 + 56) = 0;
  *(v6 + 64) = 0xBFF0000000000000;
  *(v6 + 104) = xmmword_101C7C270;
  *(v6 + 120) = unk_101C7C280;
  *(v6 + 136) = xmmword_101C7C290;
  *(v6 + 72) = xmmword_101C7C250;
  *(v6 + 88) = unk_101C7C260;
  *(v6 + 152) = 0xFFFFFFFF00000000;
  *(v6 + 160) = 0x3F947AE147AE147BLL;
  *(v6 + 168) = 0;
  if ((sub_10017973C() & 1) == 0)
  {
    *(a1 + 160) = 0x3F9999999999999ALL;
  }

  *(a1 + 56) = sub_100177B18() & 1;
  return a1;
}

void sub_1001796C0(_Unwind_Exception *a1)
{
  v3 = *(v1 + 168);
  *(v1 + 168) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(v1 + 48);
  *(v1 + 48) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  sub_100114E74(v1);
  _Unwind_Resume(a1);
}

unint64_t sub_10017973C()
{
  if ((sub_100023B30() & 0x20) != 0)
  {
    return 1;
  }

  else
  {
    return (sub_100023B30() >> 4) & 1;
  }
}

void *sub_100179768(void *a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  *a1 = off_1025019A0;
  v9 = a5;
  *a1 = off_102476D68;
  a1[1] = v9;
  a1[2] = a3;
  a1[3] = a4;
  v10 = a2;
  a1[5] = 0;
  a1[4] = v10;
  a1[6] = 0;
  v14[0] = 0;
  v14[1] = v14;
  v14[2] = 0x2020000000;
  v15 = 0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 3221225472;
  aBlock[2] = sub_10084E154;
  aBlock[3] = &unk_10245AE50;
  aBlock[4] = v14;
  a1[5] = _Block_copy(aBlock);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1001FAD2C;
  v12[3] = &unk_10245AE78;
  v12[4] = v14;
  a1[6] = _Block_copy(v12);
  _Block_object_dispose(v14, 8);
  return a1;
}

uint64_t sub_1001798F0(uint64_t a1)
{
  *a1 = off_1024B57C8;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0;
  *(a1 + 56) = 0;
  *(a1 + 48) = 0xBFF0000000000000;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0xBFF0000000000000;
  *(a1 + 88) = 0x600000000;
  *(a1 + 96) = -3.53369517e72;
  *(a1 + 104) = 0;
  *(a1 + 108) = -1;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0;
  *(a1 + 228) = 0u;
  *(a1 + 184) = 0x8000000080000000;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 6;
  *(a1 + 276) = 0;
  *(a1 + 244) = 0u;
  *(a1 + 257) = 0u;
  sub_10017BD98(a1 + 400);
  return a1;
}

void sub_1001799C0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 79) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

void sub_1001799DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = _os_activity_create(dword_100000000, "CL: Incoming message", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v6, &state);

  if (qword_1025D4790 != -1)
  {
    sub_1001456E8();
  }

  v7 = qword_1025D4798;
  if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_DEFAULT))
  {
    v8 = CLConnectionMessage::name(*a3);
    if (*(v8 + 23) >= 0)
    {
      v9 = v8;
    }

    else
    {
      v9 = *v8;
    }

    v10 = *(a2 + 72);
    *buf = 68290050;
    v18 = 0;
    v19 = 2082;
    v20 = "";
    v21 = 2082;
    v22 = "activity";
    v23 = 2082;
    v24 = v9;
    v25 = 2050;
    v26 = a2;
    v27 = 1026;
    v28 = v10;
    _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Incoming message, event:%{public, location:escape_only}s, name:%{public, location:escape_only}s, this:%{public}p, registrationReceived:%{public}hhd}", buf, 0x36u);
  }

  if ((*(a2 + 72) & 1) != 0 || *(a1 + 32) == 1)
  {
    v11 = sub_100179400(a2);
    v12 = *(a3 + 8);
    v14 = *a3;
    v15 = v12;
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v13 = *(a1 + 24);
    if (!v13)
    {
      sub_1000CF05C();
    }

    (*(*v13 + 48))(v13, v11, &v14);
    if (v15)
    {
      sub_100008080(v15);
    }
  }

  os_activity_scope_leave(&state);
}

void sub_100179BEC(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v3 = *a3;
  *a3 = 0;
  *(a3 + 1) = 0;
  sub_10017B020(a1 + 8, a2, &v3);
  if (*(&v3 + 1))
  {
    sub_100008080(*(&v3 + 1));
  }
}

void sub_100179C34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100008080(a10);
  }

  _Unwind_Resume(exception_object);
}

double sub_100179C54(uint64_t a1, int a2, double *a3)
{
  result = 0.0;
  if (!a2)
  {
    v14 = v3;
    v15 = v4;
    v7 = *a3;
    if (*a3 <= 0.0)
    {
      *(a1 + 28) = 0;
      (*(*a1 + 56))(a1, v7);
      [*(*(a1 + 40) + 16) unregister:*(*(a1 + 40) + 8) forNotification:0];
      *(a1 + 48) = 0;
    }

    else
    {
      sub_100179E9C();
      if (sub_100008074() && !*(a1 + 88))
      {
        context.version = 0;
        context.info = a1;
        memset(&context.retain, 0, 24);
        v8 = CFRunLoopTimerCreate(kCFAllocatorDefault, 1.79769313e308, 1.79769313e308, 0, 0, sub_1009E89E8, &context);
        *(a1 + 56) = v8;
        if (v8)
        {
          sub_100011660();
          v9 = sub_10018D3EC();
          CFRunLoopAddTimer(v9, *(a1 + 56), kCFRunLoopCommonModes);
        }

        else
        {
          if (qword_1025D42E0 != -1)
          {
            sub_1019AA328();
          }

          v10 = qword_1025D42E8;
          if (os_log_type_enabled(qword_1025D42E8, OS_LOG_TYPE_FAULT))
          {
            *v12 = 0;
            _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_FAULT, "Could not create timer", v12, 2u);
          }

          if (sub_10000A100(121, 0))
          {
            sub_1019AA5B4();
          }
        }

        v11 = sub_100179E9C();
        *(a1 + 72) = (*(*v11 + 56))(v11);
      }

      *(a1 + 48) = 1;
      if ((*(a1 + 64) & 1) == 0)
      {
        sub_100179ED4(a1);
      }
    }

    return *(a1 + 32);
  }

  return result;
}

double sub_100179E14(uint64_t a1, int a2, double *a3)
{
  sub_100179C54(a1, a2, a3);
  if (!a2)
  {
    if (*a3 <= 0.0)
    {
      if (*(a1 + 184) == 1)
      {
        sub_1009BC1B0(a1);
      }

      if (*(a1 + 192))
      {
        v7 = &unk_101CD19C8;
      }

      else
      {
        v7 = a3;
      }

      v6 = a1;
    }

    else
    {
      v6 = a1;
      v7 = a3;
    }

    sub_10017A050(v6, v7);
  }

  result = *a3;
  *(a1 + 264) = *a3;
  return result;
}

uint64_t sub_100179E9C()
{
  if (qword_10265E460 != -1)
  {
    sub_101A6DD40();
  }

  return qword_102637D38;
}

uint64_t sub_100179ED4(uint64_t a1)
{
  v2 = (a1 + 83);
  if (*(a1 + 83) == 1)
  {
    v3 = *(a1 + 84);
  }

  else
  {
    v3 = *(a1 + 72) > 0.0 && CFAbsoluteTimeGetCurrent() - *(a1 + 72) < 432000.0;
  }

  if (qword_1025D42E0 != -1)
  {
    sub_1019AA394();
  }

  v4 = qword_1025D42E8;
  if (os_log_type_enabled(qword_1025D42E8, OS_LOG_TYPE_DEBUG))
  {
    v5 = *v2;
    v7[0] = 67109376;
    v7[1] = v3 & 1;
    v8 = 1024;
    v9 = v5;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "Cover attached,%d,forced,%d", v7, 0xEu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1019AA6B4((v3 & 1), v2);
  }

  [*(*(a1 + 40) + 16) register:*(*(a1 + 40) + 8) forNotification:0 registrationInfo:0];
  return (*(*a1 + 48))(a1, v3 & 1);
}

uint64_t sub_10017A050(uint64_t a1, uint64_t *a2)
{
  if (qword_1025D42E0 != -1)
  {
    sub_10199C694();
  }

  v4 = qword_1025D42E8;
  if (os_log_type_enabled(qword_1025D42E8, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *a2;
    *buf = 134349056;
    *&buf[4] = v5;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEFAULT, "Setting compass update interval to %{public}f", buf, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10199CA90(a2);
  }

  if (*(a1 + 136))
  {
    v6 = sub_100023B30();
    v7 = (a1 + 168);
    if ((v6 & 0x20) != 0)
    {
      v8 = (a1 + 168);
    }

    else
    {
      v8 = (a1 + 152);
    }

    if ((v6 & 0x20) != 0)
    {
      v7 = (a1 + 152);
    }
  }

  else
  {
    v7 = (a1 + 168);
    v8 = (a1 + 152);
  }

  if (*v7)
  {
    sub_10017A1F4(*v7, 0.0);
  }

  if (!*v8)
  {
    v9 = sub_1009B38EC();
    sub_101860780(v9);
  }

  return sub_10017A1F4(*v8, *a2);
}

uint64_t sub_10017A1F4(uint64_t a1, double a2)
{
  v2 = rint(a2 * 1000000.0);
  if (a2 < 0.0)
  {
    v3 = 0;
  }

  else
  {
    v3 = v2;
  }

  return sub_10017A214(a1, v3);
}

uint64_t sub_10017A214(uint64_t a1, uint64_t a2)
{
  v4 = [[NSNumber alloc] initWithLong:a2];
  (*(*a1 + 16))(a1, @"ReportInterval", v4);

  return a2;
}

uint64_t sub_10017A294(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();

  return pthread_dependency_fulfill_np();
}

BOOL sub_10017A2DC(void *a1, uint64_t a2, uint64_t a3, char *a4)
{
  v8 = (*(*a3 + 24))(a3);
  v9 = *a4;
  v10 = *a4 * v8;
  v29 = v10;
  if (v9 == 0.0)
  {
    if (qword_1025D4200 != -1)
    {
      sub_1019893E4();
    }

    v11 = qword_1025D4208;
    if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_FAULT, "Requested update interval cannot be == 0.0 and dispatcher cannot be NULL. Use interval < 0.0 for spectator.", buf, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1019893F8();
    }
  }

  else
  {
    if (v9 < 0.0)
    {
      operator new();
    }

    v12 = a1[2];
    if (v10 > 0.0 && ((v13 = v12 + 80 * a2, v15 = *(v13 + 8), v14 = (v13 + 8), v16 = v15, v10 < v15) || v16 <= 0.0))
    {
      *v14 = v10;
      v18 = (*(*a1 + 24))(a1, a2, &v29);
      v12 = a1[2];
      *(v12 + 80 * a2 + 24) = v18;
      v17 = *a4;
      v10 = v29;
    }

    else
    {
      v17 = v9;
    }

    v19 = (v12 + 80 * a2);
    if (v17 < *v19 || *v19 <= 0.0)
    {
      *v19 = v17;
      v23 = (*(*a1 + 16))(a1, a2, a4);
      v24 = a1[2] + 80 * a2;
      *(v24 + 16) = v23;
      *buf = a3;
      *v31 = dword_100000000;
      *&v31[8] = v17;
      *&v31[16] = v10;
      sub_100178FC8(v24 + 32, buf);
      sub_1001790A4(a1, a2);
    }

    else
    {
      if (v19[2] <= 0.0)
      {
        if (qword_1025D4200 != -1)
        {
          sub_1019894E8();
        }

        v20 = qword_1025D4208;
        if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_FAULT))
        {
          *buf = 0;
          _os_log_impl(dword_100000000, v20, OS_LOG_TYPE_FAULT, "CLMotionNotifier::addDispatcherPrivate UpdateInterval is zero!", buf, 2u);
        }

        if (sub_10000A100(121, 0))
        {
          sub_101989510();
        }
      }

      v21 = a1[2] + 80 * a2;
      v22 = llround(*a4 / *(v21 + 16));
      *buf = a3;
      *v31 = 0;
      *&v31[4] = v22;
      *&v31[8] = v17;
      *&v31[16] = v10;
      sub_100178FC8(v21 + 32, buf);
    }

    (*(*a1 + 40))(a1, a2, *(a1[2] + 80 * a2 + 48) - 1);
    if (qword_1025D4200 != -1)
    {
      sub_1019894E8();
    }

    v25 = qword_1025D4208;
    if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_DEBUG))
    {
      v26 = *a4;
      v27 = 0.0;
      if (*a4 > 0.0)
      {
        v27 = 1.0 / v26;
      }

      *buf = 67109632;
      *&buf[4] = a2;
      *v31 = 2048;
      *&v31[2] = v26;
      *&v31[10] = 2048;
      *&v31[12] = v27;
      _os_log_impl(dword_100000000, v25, OS_LOG_TYPE_DEBUG, "CLMotionNotifier::addDispatcherPrivate Added dispatcher for notification:%d, Update Interval:%f(%.1fHz)", buf, 0x1Cu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101989600(a4);
    }
  }

  return v9 != 0.0;
}

BOOL sub_10017A754(uint64_t a1)
{
  result = sub_10017A2DC(*(a1 + 40), *(a1 + 64), *(a1 + 48), (a1 + 56));
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

void sub_10017A794(uint64_t a1, uint64_t a2)
{
  if (CFRunLoopGetCurrent() == *qword_102637700)
  {
    v4 = objc_autoreleasePoolPush();
    (*(a2 + 16))(a2);

    objc_autoreleasePoolPop(v4);
  }

  else
  {
    inited = pthread_dependency_init_np();
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_10017A294;
    v5[3] = &unk_10244FAF0;
    v5[4] = a2;
    v5[5] = &v6;
    sub_100042800(inited, v5);
    pthread_dependency_wait_np();
  }
}

id sub_10017A884(uint64_t a1, void *a2)
{
  if (qword_1025D42E0 != -1)
  {
    sub_10199C694();
  }

  v4 = qword_1025D42E8;
  if (os_log_type_enabled(qword_1025D42E8, OS_LOG_TYPE_DEFAULT))
  {
    v6[0] = 67240192;
    v6[1] = a2;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEFAULT, "Compass for AOP started. CoverAttached %{public}d", v6, 8u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10199C6A8(a2);
  }

  *(a1 + 272) = a2;
  return [*(*(a1 + 296) + 16) register:*(*(a1 + 296) + 8) forNotification:31 registrationInfo:0];
}

id sub_10017A97C(uint64_t a1, int a2, void *a3)
{
  result = sub_10017AF7C(a3);
  if (result)
  {
    v6 = a2;
    return (*(a1 + 24))(0, &v6, result, *(a1 + 32));
  }

  return result;
}

id sub_10017A9CC(void *a1)
{
  v2 = [a1 binaryVersion];
  [a1 sizeOfType];
  if (v2)
  {
    if (getenv("_INTERSILO_UNIT_TEST"))
    {
      if (qword_1025D41A0 != -1)
      {
        dispatch_once(&qword_1025D41A0, &stru_102504520);
      }

      v3 = qword_1025D41A8;
      if (os_log_type_enabled(qword_1025D41A8, OS_LOG_TYPE_ERROR))
      {
        *buf = 134218498;
        v8 = v2;
        v9 = 2048;
        v10 = 0;
        v11 = 2080;
        v12 = "N31CLGeomagneticModelProvider_Type16NotificationDataE" & 0x7FFFFFFFFFFFFFFFLL;
        _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_ERROR, "Mismatch of versions between encoded (%llu) and decoded (%llu) objects! This is possibly because the version has changed on one side and possibly broken ABI compatibility. Please update your type for %s accordingly", buf, 0x20u);
      }

      if (!sub_10000A100(121, 0))
      {
        return 0;
      }

      bzero(buf, 0x65CuLL);
      if (qword_1025D41A0 == -1)
      {
LABEL_20:
        v6 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 0, "const Object_T *safeDecoder(CLCppContainer *, Callback) [Object_T = CLGeomagneticModelProvider_Type::NotificationData, Callback = (lambda at /Library/Caches/com.apple.xbs/Sources/CoreLocation/Shared/Intersilo/CLCppContainer.h:250:46)]", "%s\n", v6);
        if (v6 != buf)
        {
          free(v6);
        }

        return 0;
      }
    }

    else
    {
      if (qword_1025D41A0 != -1)
      {
        dispatch_once(&qword_1025D41A0, &stru_102504520);
      }

      v5 = qword_1025D41A8;
      if (os_log_type_enabled(qword_1025D41A8, OS_LOG_TYPE_FAULT))
      {
        *buf = 134218498;
        v8 = v2;
        v9 = 2048;
        v10 = 0;
        v11 = 2080;
        v12 = "N31CLGeomagneticModelProvider_Type16NotificationDataE" & 0x7FFFFFFFFFFFFFFFLL;
        _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_FAULT, "Mismatch of versions between encoded (%llu) and decoded (%llu) objects! This is possibly because the version has changed on one side and possibly broken ABI compatibility. Please update your type for %s accordingly", buf, 0x20u);
      }

      if (!sub_10000A100(121, 0))
      {
        return 0;
      }

      bzero(buf, 0x65CuLL);
      if (qword_1025D41A0 == -1)
      {
        goto LABEL_20;
      }
    }

    dispatch_once(&qword_1025D41A0, &stru_102504520);
    goto LABEL_20;
  }

  return [a1 cppObjectPtr];
}

uint64_t sub_10017AE20(uint64_t a1, int *a2, _OWORD *a3)
{
  v5 = *(a1 + 64);
  v3 = a1 + 64;
  v4 = v5;
  if (!v5)
  {
    return 0;
  }

  v6 = *a2;
  v7 = v3;
  do
  {
    if (*(v4 + 32) >= v6)
    {
      v7 = v4;
    }

    v4 = *(v4 + 8 * (*(v4 + 32) < v6));
  }

  while (v4);
  if (v7 == v3)
  {
    return 0;
  }

  if (v6 < *(v7 + 32))
  {
    return 0;
  }

  v8 = *(v7 + 64);
  if (!v8)
  {
    return 0;
  }

  v9 = *v8;
  v10 = v8[1];
  v11 = v8[3];
  a3[2] = v8[2];
  a3[3] = v11;
  *a3 = v9;
  a3[1] = v10;
  return 1;
}

_BYTE *sub_10017AE84(_BYTE *result, uint64_t a2, uint64_t *a3, void *a4)
{
  if ((result[108] & 1) == 0)
  {
    v7 = result;
    v8 = *(*a2 + 32);
    LODWORD(v12) = *(*a3 + 32);
    v9 = sub_10017AF7C(a4);
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

id sub_10017AF7C(void *a1)
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {

    return sub_101855AF8(a1);
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {

      return sub_10017A9CC(a1);
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_10017B020(uint64_t a1, uint64_t a2, CLConnectionMessage **a3)
{
  v6 = (*(*a2 + 16))(a2);
  DictionaryOfClasses = CLConnectionMessage::getDictionaryOfClasses(*a3, v6);
  sub_100005548(v15, DictionaryOfClasses);
  v14 = 0;
  if (sub_10001CB4C(v15, "kCLConnectionMessageSubscribeKey", &v14))
  {
    v8 = *a1;
    v9 = *(a1 + 8);
    v10 = (a2 + (v9 >> 1));
    if (v9)
    {
      v8 = *(*v10 + v8);
    }

    v8(v10, v14, v15);
  }

  else
  {
    if (qword_1025D4790 != -1)
    {
      sub_101AECAB4();
    }

    v11 = qword_1025D4798;
    if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289026;
      v17 = 0;
      v18 = 2082;
      v19 = "";
      _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Couldn't get value for kCLConnectionMessageSubscribeKey key}", buf, 0x12u);
      if (qword_1025D4790 != -1)
      {
        sub_101AECAB4();
      }
    }

    v12 = qword_1025D4798;
    if (os_signpost_enabled(qword_1025D4798))
    {
      *buf = 68289026;
      v17 = 0;
      v18 = 2082;
      v19 = "";
      _os_signpost_emit_with_name_impl(dword_100000000, v12, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Couldn't get value for kCLConnectionMessageSubscribeKey key", "{msg%{public}.0s:Couldn't get value for kCLConnectionMessageSubscribeKey key}", buf, 0x12u);
    }
  }

  return sub_100005DA4(v15);
}

void sub_10017B250(uint64_t a1, int a2, uint64_t a3)
{
  v6 = objc_alloc_init(NSAutoreleasePool);
  v21 = 0xBFF0000000000000;
  sub_1000B9370(a3, "kCLConnectionMessageHeadingFilterKey", &v21);
  if (*(a1 + 56) == 1)
  {
    if (a2)
    {
      *(a1 + 64) = v21;
      if (qword_1025D42E0 != -1)
      {
        sub_101AECA48();
      }

      v7 = qword_1025D42E8;
      if (os_log_type_enabled(qword_1025D42E8, OS_LOG_TYPE_DEBUG))
      {
        v8 = *(a1 + 24);
        v9 = *(a1 + 64);
        buf[0] = 138412546;
        *&buf[1] = v8;
        v29 = 2048;
        v30 = v9;
        _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEBUG, "client '%@' subscribing to compass filter %.2f", buf, 0x16u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101AECA70(buf);
        v16 = *(a1 + 24);
        v17 = *(a1 + 64);
        v24 = 138412546;
        v25 = v16;
        v26 = 2048;
        v27 = v17;
        v18 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "void CLHeadingSubscription::handleRequestHeading(BOOL, const CLNameValuePair &)", "%s\n", v18);
        if (v18 != buf)
        {
          free(v18);
        }
      }

      if (!*(a1 + 168))
      {
        v22 = @"ClientName";
        v23 = [*(a1 + 24) description];
        [NSDictionary dictionaryWithObjects:&v23 forKeys:&v22 count:1];
        [*(a1 + 8) silo];
        operator new();
      }

      if (!*(a1 + 48))
      {
        operator new();
      }
    }

    else
    {
      if (qword_1025D42E0 != -1)
      {
        sub_101AECA48();
      }

      v10 = qword_1025D42E8;
      if (os_log_type_enabled(qword_1025D42E8, OS_LOG_TYPE_DEBUG))
      {
        v11 = *(a1 + 24);
        buf[0] = 138412290;
        *&buf[1] = v11;
        _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEBUG, "client '%@' unsubscribing from compass", buf, 0xCu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101AECA70(buf);
        v19 = *(a1 + 24);
        v24 = 138412290;
        v25 = v19;
        v20 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "void CLHeadingSubscription::handleRequestHeading(BOOL, const CLNameValuePair &)", "%s\n", v20);
        if (v20 != buf)
        {
          free(v20);
        }
      }

      if (*(a1 + 168))
      {
        v12 = sub_10017C3BC();
        sub_10095D9F8(v12, 0, *(a1 + 168));
        v13 = *(a1 + 168);
        *(a1 + 168) = 0;
        if (v13)
        {
          (*(*v13 + 8))(v13);
        }
      }

      v14 = *(a1 + 48);
      if (v14)
      {
        sub_100E0BB64(v14);
        sub_100E0C2A0(*(a1 + 48));
        v15 = *(a1 + 48);
        *(a1 + 48) = 0;
        if (v15)
        {
          (*(*v15 + 8))(v15);
        }
      }
    }
  }

  *(a1 + 104) = xmmword_101C7C270;
  *(a1 + 120) = unk_101C7C280;
  *(a1 + 136) = xmmword_101C7C290;
  *(a1 + 152) = 0xFFFFFFFF00000000;
  *(a1 + 72) = xmmword_101C7C250;
  *(a1 + 88) = unk_101C7C260;
  sub_1000F3B70(a1);
}

uint64_t sub_10017B81C(uint64_t a1, uint64_t a2, int a3, void *a4)
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

uint64_t sub_10017B8D0(uint64_t a1, int a2, int *a3, char *a4)
{
  v33 = a2;
  if (*(a1 + 108))
  {
    return 0;
  }

  v7 = *(a1 + 88);
  if (v7)
  {
    v10 = a1 + 88;
    do
    {
      if (*(v7 + 32) >= a2)
      {
        v10 = v7;
      }

      v7 = *(v7 + 8 * (*(v7 + 32) < a2));
    }

    while (v7);
    if (v10 != a1 + 88 && *(v10 + 32) <= a2)
    {
      *v34 = v10;
      v14 = *a3;
      v17 = *(v10 + 48);
      v16 = v10 + 48;
      v15 = v17;
      if (!v17)
      {
        goto LABEL_25;
      }

      v18 = v16;
      do
      {
        if (*(v15 + 28) >= v14)
        {
          v18 = v15;
        }

        v15 = *(v15 + 8 * (*(v15 + 28) < v14));
      }

      while (v15);
      if (v18 == v16 || v14 < *(v18 + 28))
      {
LABEL_25:
        v18 = v16;
      }

      v19 = *(a1 + 64);
      if (!v19)
      {
        goto LABEL_33;
      }

      v20 = a1 + 64;
      do
      {
        if (*(v19 + 32) >= v14)
        {
          v20 = v19;
        }

        v19 = *(v19 + 8 * (*(v19 + 32) < v14));
      }

      while (v19);
      if (v20 != a1 + 64 && v14 >= *(v20 + 32))
      {
        v32 = v20;
        v27 = *(v20 + 56);
        v28 = *a4;
        *buf = &v33;
        *(sub_100007FA0(v20 + 40, &v33) + 32) = v28;
        v38 = 0u;
        v39 = 0u;
        memset(buf, 0, sizeof(buf));
        if (v18 == v16 && (*(*a1 + 128))(a1, a3, buf))
        {
          sub_10017AD6C();
        }

        if (v27)
        {
          goto LABEL_37;
        }
      }

      else
      {
LABEL_33:
        v21 = a1 + 56;
        v32 = a1 + 64;
        v22 = byte_10262F5B1;
        v31 = v14;
        *buf = &v31;
        *(sub_100024014(a1 + 56, &v31) + 80) = v22;
        v31 = *a3;
        *buf = &v31;
        v23 = sub_100024014(a1 + 56, &v31);
        v24 = v23[9];
        v23[8] = 0;
        v23[9] = 0;
        if (v24)
        {
          sub_100008080(v24);
        }

        v25 = *a4;
        v31 = *a3;
        *buf = &v31;
        v26 = sub_100024014(v21, &v31);
        *buf = &v33;
        *(sub_100007FA0((v26 + 5), &v33) + 32) = v25;
      }

      (*(*a1 + 168))(a1, a3);
LABEL_37:
      if (v18 == v16)
      {
        *buf = *a3;
        sub_1003C9410(*v34 + 40, buf);
      }

      return 1;
    }
  }

  if (qword_1025D47F0 != -1)
  {
    dispatch_once(&qword_1025D47F0, &stru_1025044A8);
  }

  v11 = qword_1025D47F8;
  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_FAULT))
  {
    v12 = (a1 + 8);
    if (*(a1 + 31) < 0)
    {
      v12 = *v12;
    }

    *buf = 136446466;
    *&buf[4] = v12;
    *&buf[12] = 1026;
    *&buf[14] = a2;
    _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_FAULT, "%{public}s; client %{public}d does not exist", buf, 0x12u);
  }

  v13 = sub_10000A100(121, 0);
  result = 0;
  if (v13)
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D47F0 != -1)
    {
      dispatch_once(&qword_1025D47F0, &stru_1025044A8);
    }

    v29 = (a1 + 8);
    if (*(a1 + 31) < 0)
    {
      v29 = *v29;
    }

    *v34 = 136446466;
    *&v34[4] = v29;
    v35 = 1026;
    v36 = a2;
    v30 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 0, "virtual BOOL CLNotifier<CLGeomagneticModelProvider_Type::Notification, CLGeomagneticModelProvider_Type::NotificationData>::registerForNotification(int, const Notification_T &, const RegistrationInfo_T &) [Notification_T = CLGeomagneticModelProvider_Type::Notification, NotificationData_T = CLGeomagneticModelProvider_Type::NotificationData, NotificationInfo_T = char, RegistrationInfo_T = char]", "%s\n", v30);
    if (v30 != buf)
    {
      free(v30);
    }

    return 0;
  }

  return result;
}

uint64_t sub_10017BD98(uint64_t a1)
{
  *a1 = 1542;
  *(a1 + 4) = 0;
  *(a1 + 20) = 0;
  *(a1 + 12) = 0;
  *(a1 + 28) = xmmword_101D028B0;
  *(a1 + 44) = 0u;
  *(a1 + 60) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 1065353216;
  *(a1 + 96) = 0;
  v3 = 0;
  v4 = &v3;
  *(sub_100E0C488((a1 + 56), &v3) + 5) = 0;
  v3 = 1;
  v4 = &v3;
  *(sub_100E0C488((a1 + 56), &v3) + 5) = 0;
  v3 = 2;
  v4 = &v3;
  *(sub_100E0C488((a1 + 56), &v3) + 5) = 0;
  v3 = 3;
  v4 = &v3;
  *(sub_100E0C488((a1 + 56), &v3) + 5) = 0;
  v3 = 4;
  v4 = &v3;
  *(sub_100E0C488((a1 + 56), &v3) + 5) = 0;
  v3 = 5;
  v4 = &v3;
  *(sub_100E0C488((a1 + 56), &v3) + 5) = 0;
  v3 = 6;
  v4 = &v3;
  *(sub_100E0C488((a1 + 56), &v3) + 5) = 0;
  return a1;
}

uint64_t sub_10017BF6C(uint64_t a1)
{
  Current = CFAbsoluteTimeGetCurrent();
  v3 = *(a1 + 88);
  if (v3 == 1.79769313e308)
  {
    return 2;
  }

  if (v3 >= Current + -1800.0)
  {
    return v3 <= Current;
  }

  return 0;
}

uint64_t sub_10017BFC8()
{
  v0 = sub_10017BFF4();
  v1 = sub_10017BF6C(v0);
  if (v1 == 2)
  {
    return 2;
  }

  else
  {
    return v1 == 1;
  }
}

uint64_t sub_10017BFF4()
{
  if (qword_10265D700 != -1)
  {
    sub_101A38468();
  }

  return qword_102637B50;
}

uint64_t sub_10017C02C()
{
  if (qword_10265C390 != -1)
  {
    sub_1019D3688();
  }

  return qword_1026377D8;
}

uint64_t sub_10017C064(uint64_t a1, uint64_t *a2)
{
  v4 = sub_100177B18();
  if (v4)
  {
    if (!*(a1 + 80))
    {
      v5 = sub_1009B38EC();
      sub_101860780(v5);
    }

    if (qword_1025D42D0 != -1)
    {
      sub_1019D3708();
    }

    v6 = qword_1025D42D8;
    if (os_log_type_enabled(qword_1025D42D8, OS_LOG_TYPE_INFO))
    {
      v7 = *a2;
      *buf = 134349056;
      *&buf[4] = v7;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_INFO, "Setting magnetometer update and batch interval to %{public}f", buf, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1019D3730(a2);
    }

    sub_10017A1F4(*(a1 + 80), *a2);
    sub_100179350(*(a1 + 80), *a2);
  }

  return v4 & 1;
}

uint64_t sub_10017C3BC()
{
  if (qword_10265BE70 != -1)
  {
    sub_1019AA314();
  }

  return qword_102637750;
}

uint64_t sub_10017C3F4(uint64_t result, int a2, unint64_t a3, unint64_t a4)
{
  if (!a2 && a3 < a4)
  {
    v4 = result;
    if ((*(result + 184) & 1) == 0)
    {
      result = sub_10017C53C(result, 0);
      v5 = result;
      v7 = v6;
      if (result != v6)
      {
        while (1)
        {
          v8 = (*(*v5[4] + 32))(v5[4]);
          objc_opt_class();
          result = objc_opt_isKindOfClass();
          if (result)
          {
            v9 = [v8 objectForKeyedSubscript:@"ClientName"];
            objc_opt_class();
            result = objc_opt_isKindOfClass();
            if (result)
            {
              result = [v9 isEqualToString:@"com.apple.NanoMaps"];
              if (result)
              {
                break;
              }
            }
          }

          v10 = v5[1];
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
              v11 = v5[2];
              v12 = *v11 == v5;
              v5 = v11;
            }

            while (!v12);
          }

          v5 = v11;
          if (v11 == v7)
          {
            v5 = v7;
            break;
          }
        }
      }

      *(v4 + 184) = v5 != v7;
    }
  }

  return result;
}

double sub_10017C55C(uint64_t a1, int a2, uint64_t *a3)
{
  if (a2)
  {
    if (qword_1025D42D0 != -1)
    {
      sub_1002DDE14();
    }

    v4 = qword_1025D42D8;
    if (os_log_type_enabled(qword_1025D42D8, OS_LOG_TYPE_FAULT))
    {
      v11[0] = 67240192;
      v11[1] = a2;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_FAULT, "Unrecognized magnetometer notification %{public}d", v11, 8u);
    }

    v5 = 0;
    if (sub_10000A100(121, 0))
    {
      sub_1019D3844();
    }
  }

  else
  {
    sub_10017C064(a1, a3);
    if (*a3 > 0.0 && !*(a1 + 40))
    {
      *(a1 + 48) = 0;
      *(a1 + 56) = 0;
      operator new();
    }

    if (*a3 <= 0.0 && *(a1 + 40))
    {
      v8 = sub_10017C774();
      sub_10095D9F8(v8, 0, *(a1 + 40));
      v9 = *(a1 + 40);
      if (v9)
      {
        (*(*v9 + 8))(v9);
      }

      *(a1 + 40) = 0;
    }

    v5 = *a3;
  }

  return *&v5;
}

uint64_t sub_10017C774()
{
  if (qword_10265EA18 != -1)
  {
    sub_101A82218();
  }

  return qword_102637D58;
}

uint64_t sub_10017C7AC(char a1)
{
  result = qword_102636F38;
  if (!qword_102636F38)
  {
    v3 = sub_100011660();
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_1005A8AEC;
    v4[3] = &unk_1024610B0;
    v5 = a1;
    sub_10017A794(v3, v4);
    return qword_102636F38;
  }

  return result;
}

uint64_t sub_10017C838(uint64_t a1, uint64_t a2)
{
  v9 = 0;
  memset(v8, 0, sizeof(v8));
  sub_1000B0BE8(a1, v8);
  v3 = v8[0];
  ++*(a2 + 496);
  if (CLMotionActivity::isTypeInVehicle())
  {
    if (DWORD1(v8[0]) == 2)
    {
      v4 = 6;
    }

    else
    {
      v4 = 3;
    }

    goto LABEL_10;
  }

  isTypePedestrian = CLMotionActivity::isTypePedestrian();
  if (v3 == 100 || isTypePedestrian)
  {
    v4 = 2;
    goto LABEL_10;
  }

  if (CLMotionActivity::isTypeStatic())
  {
    v4 = 1;
LABEL_10:
    v7 = v4;
LABEL_11:
    v10 = &v7;
    result = sub_100E0C488((a2 + 456), &v7);
    ++*(result + 20);
    return result;
  }

  if (CLMotionActivity::isTypeUnclassifiedMoving())
  {
    v7 = 0;
    goto LABEL_11;
  }

  if (CLMotionActivity::isTypeCycling())
  {
    v4 = 4;
    goto LABEL_10;
  }

  result = CLMotionActivity::isTypeIndoorActivity();
  if (result)
  {
    v4 = 5;
    goto LABEL_10;
  }

  return result;
}

uint64_t sub_10017C960(uint64_t a1)
{
  v2 = *(a1 + 32);
  memset(v10, 0, sizeof(v10));
  v3 = 0uLL;
  *(v2 + 40) = 0;
  *(v2 + 48) = 0xBFF0000000000000;
  if (*(v2 + 79) < 0)
  {
    operator delete(*(v2 + 56));
    v3 = 0uLL;
  }

  *(v2 + 56) = 0;
  *(v2 + 64) = 0;
  *(v2 + 72) = 0;
  *(v2 + 80) = 0xBFF0000000000000;
  *(v2 + 88) = 0x600000000;
  *(v2 + 96) = -3.53369517e72;
  *(v2 + 104) = 0xFFFFFFFF00000000;
  *(v2 + 112) = v3;
  *(v2 + 128) = v3;
  *(v2 + 144) = v3;
  *(v2 + 160) = v3;
  *(v2 + 176) = 0;
  *(v2 + 184) = 0x8000000080000000;
  *(v2 + 192) = v3;
  *(v2 + 208) = v3;
  *(v2 + 224) = 6;
  v4 = v10[0];
  v5 = v10[1];
  *(v2 + 257) = v10[2];
  *(v2 + 241) = v5;
  *(v2 + 225) = v4;
  *(v2 + 273) = 0;
  *(v2 + 276) = 0;
  *(v2 + 328) = 6;
  sub_10017BD98(v10);
  v6 = v10[1];
  *(v2 + 400) = v10[0];
  *(v2 + 416) = v6;
  *(v2 + 432) = v10[2];
  *(v2 + 448) = v11;
  sub_100BE1788(v2 + 456, v12);
  *(v2 + 496) = v13;
  sub_1004906DC(v12);
  if (qword_1025D42E0 != -1)
  {
    sub_101A95D38();
  }

  v7 = qword_1025D42E8;
  if (os_log_type_enabled(qword_1025D42E8, OS_LOG_TYPE_DEBUG))
  {
    v8 = *(a1 + 40);
    if (*(v8 + 23) < 0)
    {
      v8 = *v8;
    }

    LODWORD(v10[0]) = 136315138;
    *(v10 + 4) = v8;
    _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEBUG, "starting metric session (CompassSession) for %s", v10, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101A95D60();
  }

  *(v2 + 40) = 1;
  *(v2 + 48) = CFAbsoluteTimeGetCurrent();
  std::string::operator=((v2 + 56), *(a1 + 40));
  sub_10017C3BC();
  *(v2 + 276) = sub_10017BFC8();
  if (!*(v2 + 8))
  {
    operator new();
  }

  if (!*(v2 + 16))
  {
    operator new();
  }

  result = sub_100023B30();
  if ((result & 0x10) != 0)
  {
    if (!*(v2 + 24))
    {
      operator new();
    }

    if (!*(v2 + 32))
    {
      operator new();
    }
  }

  return result;
}

void sub_10017CDA8(_BYTE *a1, int a2, void *a3)
{
  sub_100011660();
  sub_10001160C();
  if (a2 > 34)
  {
    if (a2 > 42)
    {
      if (a2 == 43)
      {
        if (a3)
        {
          if (a1[1815])
          {
            return;
          }

          a1[1815] = 1;
          v17 = 310;
        }

        else
        {
          if (!a1[1815])
          {
            return;
          }

          a1[1815] = 0;
          v17 = 54;
        }

        *buf = v17;
        sub_100F66F7C((a1 + 192), buf, 0);
        return;
      }

      if (a2 != 44)
      {
        if (a2 != 45)
        {
          return;
        }

        if (a3)
        {
          if (a1[1817])
          {
            return;
          }

          a1[1817] = 1;
          v12 = 312;
        }

        else
        {
          if (!a1[1817])
          {
            return;
          }

          a1[1817] = 0;
          v12 = 56;
        }

        *buf = v12;
        sub_100F67324((a1 + 192), buf, 0);
        return;
      }

      if (a3)
      {
        if (a1[1816])
        {
          return;
        }

        a1[1816] = 1;
        v19 = 311;
      }

      else
      {
        if (!a1[1816])
        {
          return;
        }

        a1[1816] = 0;
        v19 = 55;
      }

      *buf = v19;
      sub_100F67150((a1 + 192), buf, 0);
    }

    else
    {
      if (a2 != 35)
      {
        if (a2 != 40)
        {
          if (a2 != 41)
          {
            return;
          }

          if (a3)
          {
            if (a1[1814])
            {
              return;
            }

            a1[1814] = 1;
            v10 = 308;
          }

          else
          {
            if (!a1[1814])
            {
              return;
            }

            a1[1814] = 0;
            v10 = 52;
          }

          *buf = v10;
          sub_100F66DA8((a1 + 192), buf, 0);
          return;
        }

        if (a3)
        {
          if (a1[1813])
          {
            return;
          }

          a1[1813] = 1;
          v18 = 305;
        }

        else
        {
          if (!a1[1813])
          {
            return;
          }

          a1[1813] = 0;
          v18 = 49;
        }

        *buf = v18;
        sub_100F66BD4((a1 + 192), buf, 0);
        return;
      }

      if (qword_1025D4210 != -1)
      {
        sub_10027BA68();
      }

      v13 = qword_1025D4218;
      if (os_log_type_enabled(qword_1025D4218, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67240192;
        v23 = a3;
        _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_DEFAULT, "kNotificationPedometerPathStraightness, numberOfSpectators = %{public}d", buf, 8u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101ADB584(a3);
      }
    }
  }

  else
  {
    if (a2 > 6)
    {
      switch(a2)
      {
        case 7:
          if (a1[861])
          {
            return;
          }

          v14 = *(*a1 + 200);
          v16 = a1;
          v15 = a3 != 0;

          break;
        case 31:
          if (a3)
          {
            if (a1[1419])
            {
              return;
            }

            v14 = *(*a1 + 544);
            v16 = a1;
            v15 = 1;
          }

          else
          {
            if (!a1[1419])
            {
              return;
            }

            v14 = *(*a1 + 544);
            v16 = a1;
            v15 = 0;
          }

          break;
        case 34:
          if (a3)
          {
            if (a1[1420])
            {
              return;
            }

            a1[1420] = 1;
            buf[1] = 1;
            if (qword_1025D4210 != -1)
            {
              sub_10027BA68();
            }

            v11 = qword_1025D4218;
            if (os_log_type_enabled(qword_1025D4218, OS_LOG_TYPE_INFO))
            {
              *v21 = 0;
              _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_INFO, "Turning on AOP SPL", v21, 2u);
            }

            if (sub_10000A100(121, 2))
            {
              sub_101ADB674();
            }
          }

          else
          {
            if (!a1[1420])
            {
              return;
            }

            a1[1420] = 0;
            buf[1] = 0;
            if (qword_1025D4210 != -1)
            {
              sub_10027BA68();
            }

            v20 = qword_1025D4218;
            if (os_log_type_enabled(qword_1025D4218, OS_LOG_TYPE_INFO))
            {
              *v21 = 0;
              _os_log_impl(dword_100000000, v20, OS_LOG_TYPE_INFO, "Turning off AOP SPL", v21, 2u);
            }

            if (sub_10000A100(121, 2))
            {
              sub_101ADB750();
            }
          }

          sub_100F62314((a1 + 192), buf, 0);
          return;
        default:
          return;
      }

      v14(v16, v15);
      return;
    }

    if (a2)
    {
      if (a2 == 2)
      {
        if (!a3)
        {
          return;
        }

        v6 = (a1 + 840);
        v7 = a1;
        v8 = 2;
        v9 = 16;
      }

      else
      {
        if (a2 != 4 || !a3 || a1[283] != 1 || a1[859] != 1)
        {
          return;
        }

        v6 = (a1 + 284);
        v7 = a1;
        v8 = 4;
        v9 = 60;
      }
    }

    else
    {
      if (!a3 || a1[859] != 1)
      {
        return;
      }

      v6 = (a1 + 680);
      v7 = a1;
      v8 = 0;
      v9 = 160;
    }

    sub_100013B00(v7, v8, v6, v9);
  }
}

void sub_10017D388(uint64_t a1, uint64_t a2)
{
  v4 = sub_100011660();
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10017C960;
  v5[3] = &unk_10245D2A8;
  v5[4] = a1;
  v5[5] = a2;
  sub_10017A794(v4, v5);
}

void sub_10017D408(uint64_t a1, uint64_t *a2, __int128 *a3)
{
  v3 = *a2;
  v4 = *a3;
  *a3 = 0;
  *(a3 + 1) = 0;
  sub_1001799DC(a1 + 8, v3, &v4);
  if (*(&v4 + 1))
  {
    sub_100008080(*(&v4 + 1));
  }
}

void sub_10017D454(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100008080(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_10017D46C(uint64_t a1)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a1 + 760) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_101941E94();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v7 = 1;
    v2 = _os_activity_create(dword_100000000, "CL: CLGnssController::sendGnssBandChangeNotification", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v2, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_101941EA8();
    }

    v3 = qword_1025D47F8;
    if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68289538;
      v9 = 0;
      v10 = 2082;
      v11 = "";
      v12 = 2082;
      v13 = "activity";
      v14 = 2050;
      v15 = a1;
      _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLGnssController::sendGnssBandChangeNotification, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v7 = 0;
  }

  v4 = [*(a1 + 760) silo];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100177B14;
  v5[3] = &unk_102449A78;
  v5[4] = a1;
  [v4 sync:v5];
  if (v7 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

uint64_t sub_10017D670(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = 0;
  v11 = 0;
  v12 = 0;
  __asm { FMOV            V0.2D, #-1.0 }

  v9 = _Q0;
  return (*(*a1 + 96))(a1, a2, a3, &v9);
}

uint64_t sub_10017D6C4(uint64_t a1)
{
  result = *(a1 + 3912);
  if (result)
  {
    return (*(*result + 32))();
  }

  return result;
}

uint64_t sub_10017D6F4(uint64_t a1)
{
  v1 = (a1 + 8);
  (*(*(a1 + 8) + 16))(a1 + 8);
  v2 = v1[28];
  if (v2)
  {
    (*(*v2 + 56))(v2);
  }

  return (*(*v1 + 24))(v1);
}

void sub_10017D7A4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1017EC98C(va);
  _Unwind_Resume(a1);
}

void sub_10017D7BC(uint64_t a1, void *a2)
{
  if (qword_1025D4650 != -1)
  {
    sub_1003115AC();
  }

  v4 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
  {
    v5[0] = 67240192;
    v5[1] = a2;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "L5Context,AccHigh,%{public}d", v5, 8u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101A6559C(a2);
  }

  if (*(a1 + 52) != a2)
  {
    *(a1 + 52) = a2;
    sub_10017DC7C(a1);
  }
}

uint64_t sub_10017D8B4(uint64_t a1, int *a2)
{
  if (!*a2)
  {
    if (qword_1025D4650 != -1)
    {
      sub_101A772C8();
    }

    v4 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEFAULT, "#wigo,on,GnssProviderInternal", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101A793CC();
    }
  }

  if (sub_1000F4588())
  {
    v5 = *a2;
    if (*a2 <= 34)
    {
      if (v5 > 28)
      {
        if (v5 == 29)
        {
          sub_100801AF4((a1 + 120), 1);
        }

        else if (v5 == 34)
        {
          sub_10017EC94(a1 + 120, 1);
        }
      }

      else if (v5)
      {
        if (v5 == 28)
        {
          sub_100801F78((a1 + 120), 1);
        }
      }

      else
      {
        if (qword_1025D4650 != -1)
        {
          sub_101A773B8();
        }

        v11 = qword_1025D4658;
        if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEBUG, "Start location in location notification", buf, 2u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_101A79678();
        }

        sub_10017DE58(a1, a2);
        sub_1001B5324(a1);
        *buf = *a2;
        v12 = sub_10000608C(a1, buf, 1);
        sub_1001C5AB8(a1, 1, v12, a2);
      }
    }

    else if (v5 <= 37)
    {
      if (v5 == 35)
      {
        sub_100254280((a1 + 120), 1);
      }

      else if (v5 == 37)
      {
        sub_10080250C(a1 + 120, 1);
      }
    }

    else
    {
      switch(v5)
      {
        case '&':
          sub_1008022D0(a1 + 120, 1);
          break;
        case ',':
          sub_10027CEC4(a1 + 120, 1);
          break;
        case '-':
          if (qword_1025D4650 != -1)
          {
            sub_101A773B8();
          }

          v6 = qword_1025D4658;
          if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEFAULT, "kNotificationGNSSStatusIndication registered", buf, 2u);
          }

          if (sub_10000A100(121, 2))
          {
            sub_101A7959C();
          }

          v7 = *(a1 + 32);
          if (v7)
          {
            block[0] = _NSConcreteStackBlock;
            block[1] = 3221225472;
            block[2] = sub_100D63D48;
            block[3] = &unk_102449A78;
            block[4] = a1;
            dispatch_async([objc_msgSend(v7 "silo")], block);
          }

          break;
      }
    }
  }

  else
  {
    if (qword_1025D4650 != -1)
    {
      sub_101A773B8();
    }

    v8 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_FAULT))
    {
      v9 = *a2;
      *buf = 67240192;
      v15 = v9;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_FAULT, "Internal registeration for notification,%{public}d,failed", buf, 8u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_101A794A8(a2);
    }
  }

  return 1;
}

void sub_10017DC7C(uint64_t a1)
{
  if (*(a1 + 51) == 1)
  {
    v2 = sub_1001BEC04();
    if ((v2 & 0x100000000) != 0)
    {
      v3 = v2;
      if (qword_1025D4650 != -1)
      {
        sub_1003115AC();
      }

      v4 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(__p) = 67240192;
        HIDWORD(__p) = v3;
        _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEFAULT, "L5Context,forcing L5 band use to %{public}d", &__p, 8u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101A651E0(v3, &__p);
        v3 = __p;
      }

      __p = 0;
      v6 = 0;
      v7 = 0;
      *a1 = v3;
      if (*(a1 + 32))
      {
        sub_100D09BCC(a1 + 8, v3);
        if (__p)
        {
          v6 = __p;
          operator delete(__p);
        }
      }
    }

    else if (sub_1001BED58())
    {

      sub_100D0947C(a1);
    }

    else
    {

      sub_1001B934C(a1);
    }
  }
}

void sub_10017DE34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10017DE58(uint64_t result, _DWORD *a2)
{
  if (!*a2)
  {
    v3 = result;
    v4 = sub_1000F44E4(result, 0);

    return sub_10017DEA4(v3 + 120, v4);
  }

  return result;
}

uint64_t sub_10017DEA4(uint64_t result, int *a2)
{
  v3 = result;
  if (*(result + 568) != a2 || !*(result + 640) || !*(result + 608))
  {
    if (qword_1025D4650 != -1)
    {
      sub_10194117C();
    }

    v4 = (v3 + 568);
    v5 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
    {
      v6 = *v4;
      v7[0] = 67240448;
      v7[1] = v6;
      v8 = 1026;
      v9 = a2;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEBUG, "OperatingModeFrom,%{public}d,OperatingModeTo,%{public}d", v7, 0xEu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101941D9C(v3 + 568, a2);
    }

    *(v3 + 648) = *v4;
    *(v3 + 656) = *(v3 + 576);
    sub_100806104((v3 + 664), v3 + 584);
    sub_100806104((v3 + 696), v3 + 616);
    sub_1007FD984(v3, a2);
    return sub_1001BF630(v3 + 2576, 15);
  }

  return result;
}

void sub_10017DFF8(uint64_t a1, __int32 a2, int *a3, uint64_t a4)
{
  v20.i32[2] = a2;
  v7 = sub_10000B1F8();
  sub_10000B230(&v20.i64[1] + 4);
  sub_10000B324(v7, (&v20.u64[1] + 4));
  v20.i32[3] = 15;
  v20.i32[0] = 15;
  v20.i32[1] = sub_10000AD98(&v20.i32[3]);
  v8 = sub_10000AE98();
  v20.i32[3] = 4;
  sub_10001E898(v8, &v20.i32[3], &v20, (a1 + 5220), &v20.i32[2], a3, a4);
  v9 = *a3;
  if (*a3 <= 40)
  {
    if (v9 == 11)
    {
      sub_1001B7EF4(a1, a4 + 824);
      return;
    }

    if (v9 == 26)
    {
      sub_10028497C(a1, a4);
      return;
    }

    goto LABEL_8;
  }

  if (v9 != 41)
  {
    if (v9 == 43)
    {
      sub_100675DCC(a1, a4);
      return;
    }

LABEL_8:
    if (qword_1025D4600 != -1)
    {
      sub_1018F7C0C();
    }

    v10 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
    {
      v11 = *(a4 + 96);
      v12 = *(a4 + 4);
      v13 = *(a4 + 12);
      v14 = *(a4 + 20);
      v15 = *a3;
      v20.i32[3] = 67241217;
      v21 = v11;
      v22 = 2053;
      v23 = v12;
      v24 = 2053;
      v25 = v13;
      v26 = 2050;
      v27 = v14;
      v28 = 1026;
      v29 = v15;
      _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEBUG, "onGpsNotification,locationType,%{public}d,lat,%{sensitive}.7lf,long,%{sensitive}.7lf,acc,%{public}.01lf,notification,%{public}d", &v20.u8[12], 0x2Cu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018FA6E0();
    }

    sub_10010CA08(a1, *(a1 + 336), v16, a3, a4);
    sub_1002B0B68(a1 + 800, a3, a4);
    v17 = *(a1 + 5960);
    if (v17)
    {
      sub_1002B0DB4(v17, a3, a4);
    }

    if (*(a1 + 784))
    {
      if (qword_1025D4600 != -1)
      {
        sub_1018F7C0C();
      }

      v18 = qword_1025D4608;
      if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
      {
        v20.i16[6] = 0;
        _os_log_impl(dword_100000000, v18, OS_LOG_TYPE_DEBUG, "#HST, Location Controller Updating with GPS location", &v20.u8[12], 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1018FA818();
      }

      sub_1002B14F0(*(a1 + 784), a4);
    }

    return;
  }

  sub_100182974(a1, a4);
  v19 = *(a1 + 280);
  if (v19)
  {
    (*(*v19 + 24))(v19, a3, a4);
  }
}

void sub_10017E2E0(__int32 a1, int *a2, uint64_t a3, uint64_t a4)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a4 + 32) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_1018741E8();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v11 = 1;
    v8 = _os_activity_create(dword_100000000, "CL: CLLocationController::onGpsNotification", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v8, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_1018741FC();
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
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLLocationController::onGpsNotification, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v11 = 0;
  }

  sub_10017DFF8(a4, a1, a2, a3);
  if (v11 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

uint64_t sub_10017E4BC(uint64_t result, int *a2)
{
  if (*a2 == 15 || *a2 == 0)
  {
    v3 = result;
    if (*(result + 336))
    {
      result = sub_100109DF4(result + 232, (result + 336));
      if (*(result + 911) == 1)
      {
        result = sub_100027514((v3 + 800));
        if ((result & 1) == 0)
        {
          __asm { FMOV            V0.2D, #-1.0 }

          sub_1000F44E4(v3, *a2);
          sub_10010A224(v3 + 256, (v3 + 336));
          sub_100109ECC();
        }
      }
    }
  }

  return result;
}

void sub_10017E59C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_10001A3E8();
  if (!sub_1000F4760())
  {
    return;
  }

  v6 = sub_1000184F4(a1, a2);
  v7 = [v6 clientAnchor];
  if (!v7)
  {
    goto LABEL_5;
  }

  sub_10000EC00(&__p, [v7 UTF8String]);
  v8 = sub_1005D7C24(qword_102659E68, &__p);
  v9 = v8;
  if ((v28[3] & 0x80000000) != 0)
  {
    operator delete(__p);
    if (v9)
    {
LABEL_5:
      if (qword_1025D47A0 != -1)
      {
        sub_10192D4D0();
      }

      v10 = off_1025D47A8;
      if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_ERROR))
      {
        __p = 68289282;
        v25 = 2082;
        v26 = "";
        v27 = 2114;
        *v28 = v6;
        _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:#SystemStatusAttribution attempting deattribution for attribution-unavailable client. Aborting deattribution, Client:%{public, location:escape_only}@}", &__p, 0x1Cu);
        if (qword_1025D47A0 != -1)
        {
          sub_10192D4D0();
        }
      }

      v11 = off_1025D47A8;
      if (os_signpost_enabled(off_1025D47A8))
      {
        __p = 68289282;
        v25 = 2082;
        v26 = "";
        v27 = 2114;
        *v28 = v6;
        v12 = "#SystemStatusAttribution attempting deattribution for attribution-unavailable client. Aborting deattribution";
        v13 = "{msg%{public}.0s:#SystemStatusAttribution attempting deattribution for attribution-unavailable client. Aborting deattribution, Client:%{public, location:escape_only}@}";
LABEL_12:
        _os_signpost_emit_with_name_impl(dword_100000000, v11, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, v12, v13, &__p, 0x1Cu);
        return;
      }

      return;
    }
  }

  else if (v8)
  {
    goto LABEL_5;
  }

  v14 = [objc_msgSend(*(a1 + 136) readonlyStoreAtKeyPath:{v6), "dictionary"}];
  v15 = sub_1000F70DC(v6, v14);
  if (!v15)
  {
    return;
  }

  if (v15 != 2)
  {
    goto LABEL_23;
  }

  v6 = qword_102659F08;
  if (*(a1 + 448) != 1)
  {
    if (qword_1025D47A0 != -1)
    {
      sub_10192D4D0();
    }

    v17 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
    {
      __p = 68289282;
      v25 = 2082;
      v26 = "";
      v27 = 2114;
      *v28 = v6;
      _os_log_impl(dword_100000000, v17, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#SystemStatusAttribution deattribution for System Service; defaulting to Traffic for record keeping, SystemService:%{public, location:escape_only}@}", &__p, 0x1Cu);
    }

LABEL_23:
    v16 = 1;
    goto LABEL_24;
  }

  v16 = 0;
LABEL_24:
  v18 = [*(a1 + 440) objectForKey:v6];
  v19 = v18;
  if (v18)
  {
    [v18 decrementAttributionCountForServiceType:a3];
    if (v16)
    {
      if (qword_1025D47A0 != -1)
      {
        sub_10192D4D0();
      }

      v20 = off_1025D47A8;
      if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
      {
        __p = 68289794;
        v25 = 2082;
        v26 = "";
        v27 = 1026;
        *v28 = a3;
        *&v28[4] = 2114;
        *&v28[6] = v6;
        v29 = 2114;
        v30 = v19;
        _os_log_impl(dword_100000000, v20, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#SystemStatusAttribution #AttributionRecord servicetype count decremented, ServiceType:%{public}d, Client:%{public, location:escape_only}@, Record:%{public, location:escape_only}@}", &__p, 0x2Cu);
      }

      if ([v19 totalAttributionCount])
      {
        return;
      }

      if (qword_1025D47A0 != -1)
      {
        sub_10192D4D0();
      }

      v21 = off_1025D47A8;
      if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
      {
        __p = 68289282;
        v25 = 2082;
        v26 = "";
        v27 = 2114;
        *v28 = v6;
        _os_log_impl(dword_100000000, v21, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#SystemStatusAttribution No subscriptions remaining after deattribution; removing AttributionRecord for client and ending system status attribution, Client:%{public, location:escape_only}@}", &__p, 0x1Cu);
      }
    }

    else if ([v19 totalAttributionCount])
    {
      return;
    }

    v23 = (sub_100031744(v14) & 6) == 0 || (sub_10001971C(a1, v6) & 1) == 0;
    sub_100251A28(a1, v6, v19, v23);
    return;
  }

  if (qword_1025D47A0 != -1)
  {
    sub_10192D4D0();
  }

  v22 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_ERROR))
  {
    __p = 68289282;
    v25 = 2082;
    v26 = "";
    v27 = 2114;
    *v28 = v6;
    _os_log_impl(dword_100000000, v22, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:#SystemStatusAttribution attempting to deattribute unattributed client. Aborting deattribution., Client:%{public, location:escape_only}@}", &__p, 0x1Cu);
    if (qword_1025D47A0 != -1)
    {
      sub_10192D4D0();
    }
  }

  v11 = off_1025D47A8;
  if (os_signpost_enabled(off_1025D47A8))
  {
    __p = 68289282;
    v25 = 2082;
    v26 = "";
    v27 = 2114;
    *v28 = v6;
    v12 = "#SystemStatusAttribution attempting to deattribute unattributed client. Aborting deattribution.";
    v13 = "{msg%{public}.0s:#SystemStatusAttribution attempting to deattribute unattributed client. Aborting deattribution., Client:%{public, location:escape_only}@}";
    goto LABEL_12;
  }
}

void sub_10017EADC(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

__n128 sub_10017EAEC(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1[19].n128_u8[8] == 1)
  {
    result.n128_u64[0] = v1[20].n128_u64[0];
    if (result.n128_f64[0] == *(a1 + 40))
    {
      if (qword_1025D4790 != -1)
      {
        sub_100312440();
      }

      v4 = qword_1025D4798;
      if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_DEBUG))
      {
        v5 = v1[1].n128_u64[1];
        v7[0] = 68289282;
        v7[1] = 0;
        v8 = 2082;
        v9 = "";
        v10 = 2114;
        v11 = v5;
        _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:received location system state of LocationUpdateSession, Client:%{public, location:escape_only}@}", v7, 0x1Cu);
      }

      v6 = *(a1 + 48);
      result = *v6;
      v1[23].n128_u64[0] = v6[1].n128_u64[0];
      v1[22] = result;
    }
  }

  return result;
}

double sub_10017EC04(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10017EAEC;
  v5[3] = &unk_10245D2F0;
  v5[4] = v2;
  result = *(a1 + 56);
  *&v5[5] = result;
  v5[6] = a2;
  v4 = *(a1 + 48);
  if (v4)
  {
    if (*(v4 + 8) != -1)
    {
      *&result = sub_10017EAEC(v5).n128_u64[0];
    }
  }

  return result;
}

void sub_10017EC94(uint64_t a1, void *a2)
{
  v2 = *(a1 + 1184);
  if (v2)
  {
    sub_10017D7BC(v2, a2);
  }
}

uint64_t sub_10017ECA4(uint64_t result)
{
  v1 = *(result + 682);
  if (*(result + 683) != v1)
  {
    v2 = result;
    *(result + 683) = v1;
    if (qword_1025D4600 != -1)
    {
      sub_101873CF0();
    }

    v3 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_INFO))
    {
      v4 = *(v2 + 682);
      *buf = 67240192;
      v10 = v4;
      _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_INFO, "#GPSPowerSavings,reporting state to powerlog,fThrottlingGps,%{public}d", buf, 8u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101873D04((v2 + 682));
    }

    v5 = *(v2 + 682);
    v6 = sub_10000B1F8();
    *buf = 0;
    v8[0] = [NSNumber numberWithDouble:sub_10001A6B0(v6, buf), @"eventCfTimeSec"];
    v7[1] = @"eventType";
    v8[1] = [NSNumber numberWithInt:6];
    v7[2] = @"eventStatus";
    v8[2] = [NSNumber numberWithInt:v5];
    return sub_10006FFF0([NSDictionary dictionaryWithObjects:v8 forKeys:v7 count:3], "GnssSession");
  }

  return result;
}

uint64_t sub_10017EE1C(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  if (!*a3)
  {
    if ((*(**(a1 + 24) + 200))(*(a1 + 24)) < 1)
    {
      if (![*(a1 + 8) state] && (objc_msgSend(*(a1 + 8), "locationGroupsLoaded") & 1) == 0)
      {
        if (qword_1025D4620 != -1)
        {
          sub_101869E48();
        }

        v5 = qword_1025D4628;
        if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
        {
          *v7 = 0;
          _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEBUG, "No more clients but availability tiles still loaded - clearing", v7, 2u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_10186D074();
        }

        [*(a1 + 8) clearLocationGroups];
      }
    }

    else
    {
      sub_10017EF60(a1, a2);
    }

    if ((*(**(a1 + 24) + 208))(*(a1 + 24)))
    {
      sub_10025DFCC(a1, 1);
    }
  }

  return 1;
}

void sub_10017EF60(uint64_t a1, uint64_t a2)
{
  if (qword_1025D4620 != -1)
  {
    sub_101869E48();
  }

  v4 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
  {
    v5 = (*(**(a1 + 24) + 200))(*(a1 + 24));
    v6 = sub_10037F018([*(a1 + 8) state]);
    *buf = 67109378;
    *&buf[4] = v5;
    v14 = 2080;
    v15 = v6;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "request start pipelined provider, we have %d clients, ProviderState::%s", buf, 0x12u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10186B5A8(a1);
  }

  v7 = [*(a1 + 8) state];
  [*(a1 + 8) setState:2];
  if (!v7)
  {
    if (qword_1025D4620 != -1)
    {
      sub_101869E5C();
    }

    v10 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEBUG, "was stopped, starting pipelined provider", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10186B6E8();
    }

LABEL_30:
    v11 = *(a1 + 8);
    v12[0] = 0;
    [v11 setLastIndoorError:v12];
    if (v12[0] == 1)
    {
      v12[0] = 0;
    }

    sub_10000EC00(buf, "startprovider");
    sub_10017F2F4(a1, 0, buf);
    if (v16 < 0)
    {
      operator delete(*buf);
    }

    sub_10000EC00(buf, "client/wake");
    sub_10018EA08(a1, a2, buf);
    goto LABEL_35;
  }

  if (v7 != 1)
  {
    if (v7 == 2)
    {
      if (qword_1025D4620 != -1)
      {
        sub_101869E5C();
      }

      v8 = qword_1025D4628;
      if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEBUG, "ignoring request to start provider - already running", buf, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_10186B8B0();
      }

      return;
    }

    goto LABEL_30;
  }

  if (qword_1025D4620 != -1)
  {
    sub_101869E5C();
  }

  v9 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "interrupting debounce - resuming provider", buf, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10186B7CC();
  }

  (*(**(a1 + 24) + 56))(*(a1 + 24));
  if (![*(a1 + 8) pipelinedSeeded])
  {
    sub_10000EC00(buf, "interrupting debounce");
    sub_100264D7C(a1, buf);
LABEL_35:
    if (v16 < 0)
    {
      operator delete(*buf);
    }
  }
}

void sub_10017F2C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

id sub_10017F2F4(uint64_t a1, void *a2, uint64_t *a3)
{
  v5 = (a1 + 8);
  if ([*(a1 + 8) pipelinedSeeded] == a2)
  {
    if (qword_1025D4620 != -1)
    {
      sub_101869E48();
    }

    v6 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_INFO))
    {
      v7 = sub_10017F5D4([*v5 pipelinedSeeded]);
      if (*(a3 + 23) >= 0)
      {
        v8 = a3;
      }

      else
      {
        v8 = *a3;
      }

      *buf = 136446466;
      v16 = v7;
      v17 = 2082;
      v18 = v8;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_INFO, "@IndoorSeed, same, %{public}s, %{public}s", buf, 0x16u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10186A234();
    }
  }

  else
  {
    if (qword_1025D4620 != -1)
    {
      sub_101869E48();
    }

    v9 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
    {
      v10 = sub_10017F5D4(a2);
      if (*(a3 + 23) >= 0)
      {
        v11 = a3;
      }

      else
      {
        v11 = *a3;
      }

      v12 = sub_10017F5D4([*v5 pipelinedSeeded]);
      *buf = 136446722;
      v16 = v10;
      v17 = 2082;
      v18 = v11;
      v19 = 2082;
      v20 = v12;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEFAULT, "@IndoorSeed, set, %{public}s, %{public}s, was, %{public}s", buf, 0x20u);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4620 != -1)
      {
        sub_101869E5C();
      }

      sub_10017F5D4(a2);
      sub_10017F5D4([*v5 pipelinedSeeded]);
      v14 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "void CLIndoorLogic::setSeedState(PipelinedSeeded, const std::string &)", "%s\n", v14);
      if (v14 != buf)
      {
        free(v14);
      }
    }
  }

  return [*v5 setPipelinedSeeded:a2];
}

const char *sub_10017F5D4(void *a1)
{
  if (a1 < 3)
  {
    return (&off_102446BC0)[a1];
  }

  if (qword_1025D4620 != -1)
  {
    sub_101869E48();
  }

  v3 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_FAULT))
  {
    v4[0] = 67240192;
    v4[1] = a1;
    _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_FAULT, "Corrupt PipelinedSeeded: got %{public}d", v4, 8u);
  }

  if (sub_10000A100(121, 0))
  {
    sub_10186A358(a1);
  }

  return "Unknown pipelinedSeeded";
}

void sub_10017F6FC(uint64_t a1)
{
  *(a1 + 50) = 1;
  if (qword_1025D4600 != -1)
  {
    sub_1018754D8();
  }

  v1 = qword_1025D4608;
  if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_INFO))
  {
    *v2 = 0;
    _os_log_impl(dword_100000000, v1, OS_LOG_TYPE_INFO, "#GPSPowerSavings,notification,session starting from location controller", v2, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018771B4();
  }
}

uint64_t sub_10017F798(uint64_t a1, int a2, unsigned int *a3, uint64_t a4)
{
  v24[0] = a2;
  v7 = sub_100044914(a1, a2, a3, a4);
  result = 1;
  if (v7 && !*a3)
  {
    v9 = *(a1 + 672);
    v10 = *(a1 + 696);
    v11 = (sub_10001CF04() & (*(a4 + 24) == 1)) == 0;
    v12 = 680;
    if (!v11)
    {
      v12 = 656;
    }

    sub_1003C9410(a1 + v12, v24);
    if (qword_1025D4620 != -1)
    {
      sub_101B1AFCC();
    }

    v13 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
    {
      v14 = *(a1 + 672);
      v15 = *(a1 + 696);
      v16 = *a3;
      *buf = 134349824;
      v33 = v14;
      v34 = 2050;
      v35 = v15;
      v36 = 1026;
      v37 = v24[0];
      v38 = 1026;
      v39 = v16;
      _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_DEFAULT, "regionalClients,%{public}lu, indoorClients,%{public}lu, client, %{public}d, notification,%{public}d", buf, 0x22u);
    }

    v17 = -v10;
    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4620 != -1)
      {
        sub_101B1AFCC();
      }

      v20 = *(a1 + 672);
      v21 = *(a1 + 696);
      v22 = *a3;
      v24[1] = 134349824;
      v25 = v20;
      v26 = 2050;
      v27 = v21;
      v28 = 1026;
      v29 = v24[0];
      v30 = 1026;
      v31 = v22;
      v23 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "virtual BOOL CLPipelineLocationProvider::registerForNotification(int, const CLLocationProvider_Type::Notification &, const CLLocationProvider_Type::RegInfo &)", "%s\n", v23);
      if (v23 != buf)
      {
        free(v23);
      }
    }

    v18.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
    v19 = *(a1 + 144);
    if (v9 != v17 || *(a1 + 672) == -*(a1 + 696))
    {
      sub_10025DEA4(v19, v18.__d_.__rep_);
      return 1;
    }

    else
    {
      return sub_10017EE1C(v19, v18.__d_.__rep_, a3);
    }
  }

  return result;
}

uint64_t sub_10017FA28(uint64_t a1, _DWORD *a2)
{
  if (*a2 == 28)
  {
    v3.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
    sub_1003813C0(*(a1 + 144), v3.__d_.__rep_);
  }

  return 1;
}

uint64_t sub_10017FA6C(uint64_t a1, uint64_t a2)
{
  if (![*(a1 + 16) pipelinedEnabled])
  {
    return 1;
  }

  if (![*(a1 + 8) wifiPowered])
  {
    return 2;
  }

  if (*[*(a1 + 8) latestPosition] != 1)
  {
    return 3;
  }

  [*(a1 + 8) latestNavModeEstimate];
  if (v4 == 2 && *(a1 + 40) != 1)
  {
    return 4;
  }

  if (*[*(a1 + 8) lastIndoorError] == 1)
  {
    v5 = [*(a1 + 8) lastIndoorError];
    if ((*v5 & 1) == 0)
    {
      sub_10186A448();
    }

    v6 = v5;
    v7 = sub_10025D130(a1) ? 300000000000 : [*(a1 + 16) errorBackoffDuration];
    if (v7 + *(v6 + 1) > a2)
    {
      return 5;
    }
  }

  if ([*(a1 + 8) isStreamingClientInFitnessSession])
  {
    return 6;
  }

  if ([*(a1 + 8) isVehicleConnected] && *(a1 + 40) != 1)
  {
    return 7;
  }

  if ([*(a1 + 8) isInVehicleNavigation] && *(a1 + 40) != 1)
  {
    return 8;
  }

  if ([*(a1 + 8) hasAtLeastOneClientWithCLActivityTypeFitness])
  {
    return 9;
  }

  if (sub_10018E9E4([*(a1 + 8) fitnessModeStateMachine]))
  {
    return 10;
  }

  return 0;
}

const char *sub_10017FC28(void *a1)
{
  if (a1 < 0xB)
  {
    return (&off_102446BF0)[a1];
  }

  if (qword_1025D4620 != -1)
  {
    sub_101869E48();
  }

  v3 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_FAULT))
  {
    v4[0] = 67240192;
    v4[1] = a1;
    _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_FAULT, "Corrupt KeepOffReason (short): got %{public}d", v4, 8u);
  }

  if (sub_10000A100(121, 0))
  {
    sub_101870264(a1);
  }

  return "Unknown";
}

void sub_10017FD1C(uint64_t a1, uint64_t a2, _DWORD *a3, uint64_t a4)
{
  if (*a3 == 45)
  {
    *(a1 + 24) = *(a4 + 1488);
    v5 = (a1 + 24);
    *(a1 + 40) = *(a4 + 1504);
    if (qword_1025D4790 != -1)
    {
      sub_1018B3DA8();
    }

    v6 = qword_1025D4798;
    if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 24);
      v8 = *(a1 + 32);
      v9 = *(a1 + 40);
      *buf = 134284033;
      v13 = v7;
      v14 = 2049;
      v15 = v8;
      v16 = 2049;
      v17 = v9;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEFAULT, "#CLGNSSStateQueryAssertion,daemon,handleGnssStatusUpdateNotification,gnssStart,%{private}.3lf,gnssStop,%{private}.3lf,gnssYield,%{private}.3lf", buf, 0x20u);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4790 != -1)
      {
        sub_100249B74();
      }

      v11 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "void CLGNSSStateQueryAssertion::handleGnssStatusUpdateNotification(int, const CLLocationProvider_Type::Notification &, const CLLocationProvider_Type::NotificationData &)", "%s\n", v11);
      if (v11 != buf)
      {
        free(v11);
      }
    }

    sub_10011E75C(a1, v5);
  }

  else
  {
    if (qword_1025D4790 != -1)
    {
      sub_1018B3DA8();
    }

    v10 = qword_1025D4798;
    if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEFAULT, "#CLGNSSStateQueryAssertion,daemon,not handleGnssStatusUpdateNotification", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018B4574();
    }
  }
}

void sub_10017FF80(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a4 + 16) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_1018B4444();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v11 = 1;
    v8 = _os_activity_create(dword_100000000, "CL: CLGNSSStateQueryAssertion::handleGnssStatusUpdateNotification", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v8, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_1018B4458();
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
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLGNSSStateQueryAssertion::handleGnssStatusUpdateNotification, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v11 = 0;
  }

  sub_10017FD1C(a4, v7, a2, a3);
  if (v11 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

uint64_t sub_10018014C(uint64_t a1, uint64_t a2, int a3, void *a4)
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

uint64_t sub_10018022C(char *a1, void *a2, int *a3, char *a4)
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
          sub_1001805E4();
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
        v22 = byte_10262F699;
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
    sub_101A5A37C();
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
    sub_101A5B15C(a1, a2);
    return 0;
  }

  return result;
}

uint64_t sub_100180690(uint64_t a1, int *a2, void *a3)
{
  v5 = *(a1 + 64);
  v3 = a1 + 64;
  v4 = v5;
  if (!v5)
  {
    return 0;
  }

  v6 = *a2;
  v7 = v3;
  do
  {
    if (*(v4 + 32) >= v6)
    {
      v7 = v4;
    }

    v4 = *(v4 + 8 * (*(v4 + 32) < v6));
  }

  while (v4);
  if (v7 == v3)
  {
    return 0;
  }

  if (v6 < *(v7 + 32))
  {
    return 0;
  }

  v8 = *(v7 + 64);
  if (!v8)
  {
    return 0;
  }

  *a3 = *v8;
  return 1;
}

_BYTE *sub_1001806EC(_BYTE *result, uint64_t a2, uint64_t *a3, void *a4)
{
  if ((result[108] & 1) == 0)
  {
    v7 = result;
    v8 = *(*a2 + 32);
    LODWORD(v12) = *(*a3 + 32);
    v9 = sub_1001809E8(a4);
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

id sub_1001807E4(void *a1)
{
  v2 = [a1 binaryVersion];
  [a1 sizeOfType];
  if (v2)
  {
    if (getenv("_INTERSILO_UNIT_TEST"))
    {
      if (qword_1025D41A0 != -1)
      {
        sub_101A5B5A4();
      }

      v3 = qword_1025D41A8;
      if (os_log_type_enabled(qword_1025D41A8, OS_LOG_TYPE_ERROR))
      {
        v6 = 134218498;
        v7 = v2;
        v8 = 2048;
        v9 = 0;
        v10 = 2080;
        v11 = 0x8000000101CF7635 & 0x7FFFFFFFFFFFFFFFLL;
        _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_ERROR, "Mismatch of versions between encoded (%llu) and decoded (%llu) objects! This is possibly because the version has changed on one side and possibly broken ABI compatibility. Please update your type for %s accordingly", &v6, 0x20u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_101A5B5B8();
      }
    }

    else
    {
      if (qword_1025D41A0 != -1)
      {
        sub_101A5B5A4();
      }

      v5 = qword_1025D41A8;
      if (os_log_type_enabled(qword_1025D41A8, OS_LOG_TYPE_FAULT))
      {
        v6 = 134218498;
        v7 = v2;
        v8 = 2048;
        v9 = 0;
        v10 = 2080;
        v11 = 0x8000000101CF7635 & 0x7FFFFFFFFFFFFFFFLL;
        _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_FAULT, "Mismatch of versions between encoded (%llu) and decoded (%llu) objects! This is possibly because the version has changed on one side and possibly broken ABI compatibility. Please update your type for %s accordingly", &v6, 0x20u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_101A5B6C0();
      }
    }

    return 0;
  }

  else
  {

    return [a1 cppObjectPtr];
  }
}

id sub_1001809E8(void *a1)
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  return sub_1001807E4(a1);
}

id sub_100180A48(uint64_t a1, int a2, void *a3)
{
  result = sub_1001809E8(a3);
  if (result)
  {
    v6 = a2;
    return (*(a1 + 24))(0, &v6, result, *(a1 + 32));
  }

  return result;
}

void sub_100180A98(uint64_t a1, _DWORD *a2, char *a3, uint64_t a4)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a4 + 8) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_1019284A8();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v11 = 1;
    v8 = _os_activity_create(dword_100000000, "CL: CLGnssAssistanceSignalEnv::onSigEnvNotification", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v8, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_1019284BC();
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
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLGnssAssistanceSignalEnv::onSigEnvNotification, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v11 = 0;
  }

  sub_100180C64(a4, v7, a2, a3);
  if (v11 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

void sub_100180C64(uint64_t a1, uint64_t a2, _DWORD *a3, char *a4)
{
  if (!*a3)
  {
    if (qword_1025D4650 != -1)
    {
      sub_101928290();
    }

    v6 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
    {
      v7 = *(a1 + 48);
      v8 = *a4;
      v9[0] = 67240448;
      v9[1] = v7;
      v10 = 1026;
      v11 = v8;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "CLSE,priorSignalEnvironment,%{public}d,newSignalEnvironment,%{public}d", v9, 0xEu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101928790(a1, a4);
    }

    if (*(a1 + 48) != *a4)
    {
      *(a1 + 48) = *a4;
      sub_100180D80(a1);
    }
  }
}

uint64_t sub_100180D80(uint64_t result)
{
  if ((*(result + 64) & 1) == 0)
  {
    v2 = result;
    *(result + 56) = sub_1000081AC();
    v3 = *(v2 + 48);

    return sub_100180F48(v2 + 16, v3);
  }

  return result;
}

void sub_100180DCC(void *a1, void *a2)
{
  if (qword_1025D4650 != -1)
  {
    sub_10194117C();
  }

  v4 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
  {
    v10[0] = 68289282;
    v10[1] = 0;
    v11 = 2082;
    v12 = "";
    v13 = 1026;
    v14 = a2;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:GnssEvent, handleassistancesignalenv:%{public}d}", v10, 0x18u);
  }

  v5 = a1[124];
  if (v5)
  {
    sub_100180F9C(v5, a2);
  }

  v6 = a1[127];
  if (v6)
  {
    sub_100180FA4(v6, a2);
  }

  (*(**a1 + 104))(*a1, a2);
  v7 = a1[141];
  if (v7)
  {
    sub_1001514C4(v7, a2);
  }

  v8 = a1[148];
  if (v8)
  {
    sub_1001513C0(v8, a2);
  }

  sub_1001514CC(*a1 + 8, a2);
  v9 = a1[150];
  if (v9)
  {
    sub_100EABE18(v9, a2);
  }
}

uint64_t sub_100180F48(uint64_t a1, int a2)
{
  v4 = a2;
  v2 = *(a1 + 24);
  if (!v2)
  {
    sub_1000CF05C();
  }

  return (*(*v2 + 48))(v2, &v4);
}

uint64_t sub_100180FAC(uint64_t a1, int a2)
{
  sub_1001324C4(v7);
  if (!sub_100132484(0x14u))
  {
    __assert_rtn("set_type", "GpsdProtocol.pb.h", 5801, "::proto::gpsd::Request_Type_IsValid(value)");
  }

  v8 = 20;
  v10 |= 0x1004u;
  v4 = v9;
  if (!v9)
  {
    operator new();
  }

  if (a2 <= 2)
  {
    switch(a2)
    {
      case 0:
        if (sub_1001811C8(0))
        {
          v5 = 0;
          goto LABEL_25;
        }

        goto LABEL_28;
      case 1:
        if (sub_1001811C8(1u))
        {
          v5 = 1;
          goto LABEL_25;
        }

        goto LABEL_28;
      case 2:
        if (sub_1001811C8(2u))
        {
          v5 = 2;
LABEL_25:
          *(v4 + 16) |= 1u;
          *(v4 + 8) = v5;
          goto LABEL_26;
        }

        goto LABEL_28;
    }

    goto LABEL_26;
  }

  switch(a2)
  {
    case 3:
LABEL_23:
      if (sub_1001811C8(3u))
      {
        v5 = 3;
        goto LABEL_25;
      }

      goto LABEL_28;
    case 4:
      if (sub_10071B1C8())
      {
        if (sub_1001811C8(4u))
        {
          v5 = 4;
          goto LABEL_25;
        }

        goto LABEL_28;
      }

      goto LABEL_23;
    case 6:
      if (sub_1001811C8(6u))
      {
        v5 = 6;
        goto LABEL_25;
      }

LABEL_28:
      __assert_rtn("set_signal_environment_type", "GpsdProtocol.pb.h", 10214, "::proto::gnss::SignalEnvironmentType_IsValid(value)");
  }

LABEL_26:
  sub_10013256C(a1, v7);
  return sub_100133DCC(v7);
}

double sub_100181198(uint64_t a1)
{
  *a1 = off_1024B9078;
  *&result = 15;
  *(a1 + 8) = 15;
  *(a1 + 16) = 0;
  return result;
}

uint64_t sub_1001811E0(uint64_t a1, unsigned int a2)
{
  if (*(a1 + 16))
  {
    v4 = *(a1 + 8);
    if ((v4 & 0x80000000) != 0)
    {
      result = 11;
    }

    else if (v4 >= 0x80)
    {
      result = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v4, a2) + 1;
    }

    else
    {
      result = 2;
    }
  }

  else
  {
    result = 0;
  }

  *(a1 + 12) = result;
  return result;
}

uint64_t sub_10018123C(uint64_t result, int a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  if (*(result + 16))
  {
    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(1, *(result + 8), a2, a4);
  }

  return result;
}

void sub_100181258(unsigned __int8 *a1, int a2)
{
  if (qword_1025D47B0 != -1)
  {
    sub_101A7D5D0();
  }

  v4 = qword_1025D47B8;
  if (os_log_type_enabled(qword_1025D47B8, OS_LOG_TYPE_DEBUG))
  {
    v5 = a1[94];
    v8[0] = 67240448;
    v8[1] = v5;
    v9 = 1026;
    v10 = a2;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "#ilsa,StreamingAwareLocationProviderStateMachine,isLocationStreamingAllowed,old,%{public}d,new,%{public}d", v8, 0xEu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101A7D6D4(a1);
  }

  v6 = a1[94];
  a1[94] = a2;
  if (v6 != a2)
  {
    Current = CFAbsoluteTimeGetCurrent();
    (*(*a1 + 96))(a1, Current);
  }
}

void sub_100181388(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (qword_1025D47B0 != -1)
  {
    sub_101A83044();
  }

  v6 = qword_1025D47B8;
  if (os_log_type_enabled(qword_1025D47B8, OS_LOG_TYPE_DEBUG))
  {
    v7 = *(a4 + 1480);
    v9[0] = 68289282;
    v9[1] = 0;
    v10 = 2082;
    v11 = "";
    v12 = 1026;
    v13 = v7;
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#ilsa,CLStreamingAwareLocationProvider,onLocationStreamingControlStateNotification, allowStreaming:%{public}d}", v9, 0x18u);
  }

  v8 = *(a1 + 128);
  if (v8)
  {
    sub_100181258(v8, *(a4 + 1480));
  }
}

void sub_100181480(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a4 + 32) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_101A83080();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v11 = 1;
    v8 = _os_activity_create(dword_100000000, "CL: CLStreamingAwareLocationProvider::onLocationStreamingControlStateNotification", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v8, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_101A83094();
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
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLStreamingAwareLocationProvider::onLocationStreamingControlStateNotification, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v11 = 0;
  }

  sub_100181388(a4, v6, v7, a3);
  if (v11 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

uint64_t sub_100181644(char *a1, void *a2, int *a3, char *a4)
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
        memset(buf, 0, 20);
        if (v18 == v16 && (*(*a1 + 128))(a1, a3, buf))
        {
          sub_100521BAC();
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
        v22 = byte_1025D68E9;
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
    sub_1018B2978();
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
    *&buf[12] = 1026;
    *&buf[14] = a2;
    _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_FAULT, "%{public}s; client %{public}d does not exist", buf, 0x12u);
  }

  v13 = sub_10000A100(121, 0);
  result = 0;
  if (v13)
  {
    sub_1018B2A94(a1, a2);
    return 0;
  }

  return result;
}

uint64_t sub_100181A2C(uint64_t a1, uint64_t a2, int a3, void *a4)
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

uint64_t sub_100181AE0(char *a1, void *a2, int *a3, char *a4)
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
        bzero(buf, 0x658uLL);
        if (v18 == v16 && (*(*a1 + 128))(a1, a3, buf))
        {
          sub_1011AA184();
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
        v22 = byte_102632BB9;
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
    sub_101B593CC();
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
    sub_101B594E0(a1, a2);
    return 0;
  }

  return result;
}

id sub_100181EA0(uint64_t a1)
{
  v2 = [objc_msgSend(*(a1 + 32) "vendor")];
  v4 = 0;
  [v2 setGpsAssistantHasClients:sub_10000608C(a1 forNotification:{&v4, 1) != 0, 0}];
  v4 = 1;
  [v2 setGpsAssistantHasClients:sub_10000608C(a1 forNotification:{&v4, 1) != 0, 1}];
  v4 = 5;
  [v2 setGpsAssistantHasClients:sub_10000608C(a1 forNotification:{&v4, 1) != 0, 5}];
  v4 = 4;
  return [v2 setGpsAssistantHasClients:sub_10000608C(a1 forNotification:{&v4, 1) != 0, 4}];
}

uint64_t sub_100181F94(uint64_t a1, int *a2, uint64_t a3)
{
  v5 = *(a1 + 64);
  v3 = a1 + 64;
  v4 = v5;
  if (!v5)
  {
    return 0;
  }

  v6 = *a2;
  v7 = v3;
  do
  {
    if (*(v4 + 32) >= v6)
    {
      v7 = v4;
    }

    v4 = *(v4 + 8 * (*(v4 + 32) < v6));
  }

  while (v4);
  if (v7 == v3)
  {
    return 0;
  }

  if (v6 < *(v7 + 32))
  {
    return 0;
  }

  v8 = *(v7 + 64);
  if (!v8)
  {
    return 0;
  }

  v9 = *v8;
  *(a3 + 16) = *(v8 + 4);
  *a3 = v9;
  return 1;
}

void sub_100181FF8(_OWORD *a1, _OWORD *a2, char a3)
{
  if (*(a2 + 76) >= 0.0 && sub_100072814(a2))
  {
    v6 = *(a2 + 24);
    v7 = v6 == 11 || v6 == 4;
    if (v7 && (a3 & 1) == 0)
    {
      if (qword_1025D4650 != -1)
      {
        sub_10170CF60();
      }

      v8 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
      {
        v9 = *(a2 + 4);
        v10 = *(a2 + 12);
        v11 = *(a2 + 20);
        v12 = *(a2 + 24);
        v21 = 134546433;
        v22 = v9;
        v23 = 2053;
        v24 = v10;
        v25 = 2048;
        v26 = v11;
        v27 = 1024;
        v28 = v12;
        _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEBUG, "#imag,al,ref lat,%{sensitive}.7lf,lon,%{sensitive}.7lf,hUnc,%.1f,type,%d", &v21, 0x26u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_10170DF88(a2, a2 + 6);
      }

      v13 = a2[1];
      a1[5] = *a2;
      a1[6] = v13;
      v14 = a2[2];
      v15 = a2[3];
      v16 = a2[5];
      a1[9] = a2[4];
      a1[10] = v16;
      a1[7] = v14;
      a1[8] = v15;
      v17 = a2[6];
      v18 = a2[7];
      v19 = a2[8];
      *(a1 + 220) = *(a2 + 140);
      a1[12] = v18;
      a1[13] = v19;
      a1[11] = v17;
    }
  }

  else
  {
    if (qword_1025D4650 != -1)
    {
      sub_10170CF60();
    }

    v20 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v21) = 0;
      _os_log_impl(dword_100000000, v20, OS_LOG_TYPE_DEBUG, "#imag,al,ref loc invalid", &v21, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10170E0BC();
    }
  }
}

uint64_t sub_100182230(uint64_t a1, uint64_t a2, int a3, void *a4)
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

uint64_t sub_1001822E4(uint64_t a1, int *a2, void *__dst)
{
  v5 = *(a1 + 64);
  v3 = a1 + 64;
  v4 = v5;
  if (!v5)
  {
    return 0;
  }

  v6 = *a2;
  v7 = v3;
  do
  {
    if (*(v4 + 32) >= v6)
    {
      v7 = v4;
    }

    v4 = *(v4 + 8 * (*(v4 + 32) < v6));
  }

  while (v4);
  if (v7 == v3)
  {
    return 0;
  }

  if (v6 < *(v7 + 32))
  {
    return 0;
  }

  v8 = *(v7 + 64);
  if (!v8)
  {
    return 0;
  }

  memcpy(__dst, v8, 0x658uLL);
  return 1;
}

void sub_100182360(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(a1 + 661) = *(a1 + 664);
  *(a1 + 662) = *(a1 + 665);
  v5 = *(a4 + 1448);
  v6 = *(a4 + 1452);
  v7 = *(a4 + 1456);
  v8 = *(a4 + 1464);
  v9 = *(a4 + 1472);
  if (qword_1025D4650 != -1)
  {
    sub_10197D50C();
  }

  v10 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
  {
    v11 = (a1 + 1144);
    if (*(a1 + 1167) < 0)
    {
      v11 = *v11;
    }

    *buf = 136316674;
    v28 = v11;
    v29 = 1026;
    v30 = v5;
    v31 = 1026;
    v32 = v7;
    v33 = 1026;
    v34 = v8 & 1;
    v35 = 1026;
    v36 = (v8 >> 1) & 1;
    v37 = 1026;
    v38 = v6;
    v39 = 1026;
    v40 = v9;
    _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEFAULT, "GPSODOM%s,onRhythmicModeOfOperationNotification,modeOfOps,%{public}d,powerMode,%{public}d,1Hz,%{public}d,rhythmic,%{public}d,state,%{public}d,hasRhythmicClients,%{public}d", buf, 0x30u);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4650 != -1)
    {
      sub_10197CEB8();
    }

    v25 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "void CLGnssOdometer::onRhythmicModeOfOperationNotification(int, const CLLocationProvider_Type::Notification &, const CLLocationProvider_Type::NotificationData &)", "%s\n", v25);
    if (v25 != buf)
    {
      free(v25);
    }
  }

  *(a1 + 664) = v8 & 1;
  if (v5 == 1)
  {
    *(a1 + 665) = v9 & (v7 == 1);
  }

  if ((v8 & 2) != 0)
  {
    LOBYTE(v12) = 0;
  }

  else
  {
    v12 = (*(a1 + 736) >> 1) & 1;
  }

  *(a1 + 666) = v12;
  if (qword_1025D4650 != -1)
  {
    sub_10197CEB8();
  }

  v13 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
  {
    v14 = (a1 + 1144);
    if (*(a1 + 1167) < 0)
    {
      v14 = *v14;
    }

    v15 = *(a1 + 661);
    v16 = *(a1 + 664);
    v17 = *(a1 + 662);
    v18 = *(a1 + 665);
    v19 = *(a1 + 663);
    v20 = *(a1 + 666);
    v21 = *(a1 + 667);
    v22 = *(a1 + 668);
    *buf = 136317186;
    v28 = v14;
    v29 = 1026;
    v30 = v15;
    v31 = 1026;
    v32 = v16;
    v33 = 1026;
    v34 = v17;
    v35 = 1026;
    v36 = v18;
    v37 = 1026;
    v38 = v19;
    v39 = 1026;
    v40 = v20;
    v41 = 1026;
    v42 = v21;
    v43 = 1026;
    v44 = v22;
    _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_DEFAULT, "GPSODOM%s,1Hz before,%{public}d,after,%{public}d,Rhythmic before,%{public}d,after,%{public}d,RhythmicFixQualified before,%{public}d,after,%{public}d,LowPowerMode,%{public}d,InAWalkOrRunWorkout,%{public}d", buf, 0x3Cu);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4650 != -1)
    {
      sub_10197CEB8();
    }

    v26 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "void CLGnssOdometer::onRhythmicModeOfOperationNotification(int, const CLLocationProvider_Type::Notification &, const CLLocationProvider_Type::NotificationData &)", "%s\n", v26);
    if (v26 != buf)
    {
      free(v26);
    }
  }

  v23 = *(a1 + 24);
  if (v23)
  {
    sub_10014F998(v23, *(a1 + 664), *(a1 + 661), *(a1 + 665), *(a1 + 662), *(a1 + 666), *(a1 + 663), *(a1 + 667), *(a1 + 668));
  }

  *(a1 + 736) = v8;
  *(a1 + 728) = v7;
  *(a1 + 724) = v6;
  *(a1 + 744) = v9;
  if (*(a1 + 665) == 1 && *(a1 + 667) == 1)
  {
    v24 = *(a1 + 668);
  }

  else
  {
    v24 = 0;
  }

  *(a1 + 665) = v24 & 1;
}

uint64_t sub_100182868(uint64_t a1)
{
  if (*(a1 + 10) == 1 && *(a1 + 11) == 1)
  {
    if (qword_1025D4600 != -1)
    {
      sub_101A85004();
    }

    v2 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
    {
      *v6 = 0;
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEBUG, "#CLProactiveLoc,Warning reset interval requested but new value is ambigous", v6, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101A86C30();
    }
  }

  if (*(a1 + 10) == 1)
  {
    v3 = 72;
    if (*(a1 + 8))
    {
      v3 = 64;
    }

    v4 = *(a1 + v3);
  }

  else if (*(a1 + 11) != 1 || (v4 = *(a1 + 88), v4 <= 0.0))
  {
    v4 = *(a1 + 1000);
    if (v4 < 0.0)
    {
      return 0;
    }
  }

  *(a1 + 56) = v4;
  return 1;
}

void sub_100182974(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 1456) == 1)
  {
    v3 = *(a2 + 1472) & (*(a2 + 1448) == 1);
  }

  else
  {
    v3 = 0;
  }

  v4 = *(a1 + 1640);
  if (*(a2 + 1472))
  {
    if (v4)
    {
      if (qword_1025D4650 != -1)
      {
        sub_1018FA228();
      }

      v5 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEBUG, "GPSODOM,registering or re-registering for path straightness metric", buf, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1018FA520();
      }

      [*(*(a1 + 1640) + 16) register:*(*(a1 + 1640) + 8) forNotification:4 registrationInfo:0];
    }

    else
    {
      if (qword_1025D4600 != -1)
      {
        sub_1002976C8();
      }

      v7 = qword_1025D4608;
      if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_ERROR))
      {
        *v12 = 0;
        _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_ERROR, "fStepCountClient not instantiated. Cannot register for path straightness notifications", v12, 2u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_1018FA5FC();
      }
    }
  }

  else if (v4)
  {
    if (qword_1025D4650 != -1)
    {
      sub_1018FA228();
    }

    v6 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
    {
      *v11 = 0;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "GPSODOM,unregistering or re-unregistering for path straightness metric", v11, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018FA444();
    }

    [*(*(a1 + 1640) + 16) unregister:*(*(a1 + 1640) + 8) forNotification:4];
  }

  v8 = *(a1 + 304);
  if (v8)
  {
    v9 = sub_10000B1F8();
    v14 = 1;
    v10 = sub_10001A6B0(v9, &v14);
    sub_10014F93C(v8, v3, v10);
  }
}

void sub_100182B78(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = off_102452770;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);

  operator delete();
}

uint64_t sub_100182BCC(uint64_t result, unsigned int a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 28);
  if (v6)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(1, *(result + 8), a2, a4);
    v6 = *(v5 + 28);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(2, *(v5 + 16), a2, a4);
  v6 = *(v5 + 28);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

LABEL_10:
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(4, *(v5 + 20), a2, a4);
    if ((*(v5 + 28) & 0x10) == 0)
    {
      return result;
    }

    goto LABEL_11;
  }

LABEL_9:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(3, *(v5 + 12), a2, a4);
  v6 = *(v5 + 28);
  if ((v6 & 8) != 0)
  {
    goto LABEL_10;
  }

LABEL_5:
  if ((v6 & 0x10) == 0)
  {
    return result;
  }

LABEL_11:
  v7 = *(v5 + 17);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(5, v7, a2, a4);
}

BOOL sub_100182C90(_BOOL8 result, uint64_t a2)
{
  if (a2)
  {
    v3 = result;
    v4 = sub_100182FA8(result);
    if (!sub_10041ECEC(v4))
    {
      sub_101882688();
    }

    v5 = *(a2 + 28);
    *(a2 + 8) = v4;
    v6 = *(v3 + 4);
    *(a2 + 28) = v5 | 3;
    *(a2 + 16) = v6;
    v7 = sub_100182E84((v3 + 8));
    result = sub_1000183C8(v7);
    if (!result)
    {
      sub_1018826B4();
    }

    v8 = *(a2 + 28);
    *(a2 + 12) = v7;
    *(a2 + 20) = *(v3 + 16);
    v9 = *(v3 + 24);
    *(a2 + 28) = v8 | 0x1C;
    *(a2 + 17) = v9;
  }

  return result;
}

uint64_t sub_100182D24(uint64_t a1)
{
  *(a1 + 128) |= 0x1000u;
  if (!*(a1 + 88))
  {
    operator new();
  }

  return *(a1 + 88);
}

uint64_t sub_100182DA4(unsigned int *a1, unsigned int a2)
{
  v3 = a1[7];
  if (v3)
  {
    if (v3)
    {
      v6 = a1[2];
      if ((v6 & 0x80000000) != 0)
      {
        v4 = 11;
      }

      else if (v6 >= 0x80)
      {
        v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6, a2) + 1;
        v3 = a1[7];
      }

      else
      {
        v4 = 2;
      }
    }

    else
    {
      v4 = 0;
    }

    v7 = (v3 & 2) + v4;
    if ((v3 & 4) != 0)
    {
      v8 = a1[3];
      if ((v8 & 0x80000000) != 0)
      {
        v9 = 11;
      }

      else if (v8 >= 0x80)
      {
        v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v8, a2) + 1;
        v3 = a1[7];
      }

      else
      {
        v9 = 2;
      }

      v7 += v9;
    }

    if ((v3 & 8) != 0)
    {
      v10 = a1[5];
      if (v10 >= 0x80)
      {
        v11 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v10, a2) + 1;
        v3 = a1[7];
      }

      else
      {
        v11 = 2;
      }

      v7 += v11;
    }

    result = ((v3 >> 3) & 2) + v7;
  }

  else
  {
    result = 0;
  }

  a1[6] = result;
  return result;
}

uint64_t sub_100182E84(int *a1)
{
  if ((*a1 + 1) < 4)
  {
    return (*a1 + 2);
  }

  if (qword_1025D4730 != -1)
  {
    sub_101B83560();
  }

  v3 = qword_1025D4738;
  if (os_log_type_enabled(qword_1025D4738, OS_LOG_TYPE_DEBUG))
  {
    v4 = *a1;
    v5[0] = 67240192;
    v5[1] = v4;
    _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEBUG, "ConvertGnssRhythmicModeToProtobuf,unhandled type,%{public}d", v5, 8u);
  }

  result = sub_10000A100(121, 2);
  if (result)
  {
    sub_101B8B850(a1);
    return 0;
  }

  return result;
}

uint64_t sub_100182F78(uint64_t result)
{
  *result = off_102452770;
  *(result + 8) = &dword_100000000;
  *(result + 16) = 0;
  *(result + 20) = 0;
  *(result + 28) = 0;
  return result;
}

uint64_t sub_100182FA8(int *a1)
{
  v1 = *a1;
  if (v1 < 3)
  {
    return dword_101D7A830[v1];
  }

  if (qword_1025D4730 != -1)
  {
    sub_101B83560();
  }

  v4 = qword_1025D4738;
  if (os_log_type_enabled(qword_1025D4738, OS_LOG_TYPE_DEBUG))
  {
    v5 = *a1;
    v6[0] = 67240192;
    v6[1] = v5;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "ConvertGnssModeOfOperationToProtobuf,unhandled type,%{public}d", v6, 8u);
  }

  result = sub_10000A100(121, 2);
  if (result)
  {
    sub_101B8B75C(a1);
    return 0;
  }

  return result;
}

uint64_t *sub_1001830A0(uint64_t a1, int *a2)
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

uint64_t sub_1001831A8(uint64_t a1, unsigned int *a2)
{
  sub_1000F4588();
  if (*a2 > 0x16 || ((1 << *a2) & 0x400019) == 0)
  {
    if (qword_1025D4630 != -1)
    {
      sub_1018FC884();
    }

    v17 = qword_1025D4638;
    if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_DEBUG))
    {
      v18 = sub_100048D98(*a2);
      *buf = 136446210;
      v35 = v18;
      _os_log_impl(dword_100000000, v17, OS_LOG_TYPE_DEBUG, "@WifiLoc, miscregister, %{public}s", buf, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018FCF18(a2);
    }
  }

  else
  {
    if (qword_1025D4630 != -1)
    {
      sub_1018FC884();
    }

    v5 = qword_1025D4638;
    if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_DEFAULT))
    {
      v6 = sub_100048D98(*a2);
      *buf = 0;
      v7 = sub_10000608C(a1, buf, 1);
      *buf = 3;
      v8 = sub_10000608C(a1, buf, 1);
      *buf = 4;
      v9 = sub_10000608C(a1, buf, 1);
      *buf = 22;
      v10 = sub_10000608C(a1, buf, 1);
      *buf = 136447234;
      v35 = v6;
      v36 = 1026;
      v37 = v7;
      v38 = 1026;
      v39 = v8;
      v40 = 1026;
      v41 = v9;
      v42 = 1026;
      v43 = v10;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEFAULT, "@WifiLogic, entry, register, notification, %{public}s, lsb, %{public}d, %{public}d, %{public}d, %{public}d", buf, 0x24u);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4630 != -1)
      {
        sub_1018FC728();
      }

      v11 = sub_100048D98(*a2);
      v24 = 0;
      v12 = sub_10000608C(a1, &v24, 1);
      v24 = 3;
      v13 = sub_10000608C(a1, &v24, 1);
      v24 = 4;
      v14 = sub_10000608C(a1, &v24, 1);
      v24 = 22;
      v15 = sub_10000608C(a1, &v24, 1);
      v24 = 136447234;
      v25 = v11;
      v26 = 1026;
      v27 = v12;
      v28 = 1026;
      v29 = v13;
      v30 = 1026;
      v31 = v14;
      v32 = 1026;
      v33 = v15;
      v16 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "virtual BOOL CLWifiLocationProvider::registerForNotificationInternal(const CLLocationProvider_Type::Notification &)", "%s\n", v16);
      if (v16 != buf)
      {
        free(v16);
      }
    }
  }

  v24 = 0;
  v19 = *a2;
  if (!*a2)
  {
LABEL_23:
    (*(**(a1 + 120) + 32))(*(a1 + 120), 0);
    if (!*a2)
    {
      (*(**(a1 + 120) + 56))(*(a1 + 120), 7);
      if (qword_1025D4630 != -1)
      {
        sub_1018FC728();
      }

      v20 = qword_1025D4638;
      if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v20, OS_LOG_TYPE_DEFAULT, "@WifiEntry, register for odometer notification", buf, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1018FCB90(buf);
        v22 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "virtual BOOL CLWifiLocationProvider::registerForNotificationInternal(const CLLocationProvider_Type::Notification &)", "%s\n", v22);
        if (v22 != buf)
        {
          free(v22);
        }
      }
    }

    (*(**(a1 + 120) + 40))(*(a1 + 120), 3);
    (*(**(a1 + 120) + 40))(*(a1 + 120), 1);
    (*(**(a1 + 120) + 48))(*(a1 + 120), 3);
    (*(**(a1 + 120) + 48))(*(a1 + 120), 6);
    (*(**(a1 + 120) + 152))(*(a1 + 120), "CLWifiLocationProvider");
    *buf = *a2;
    sub_1001839B0(&v24, buf);
    sub_100105B70(v23, &v24);
    sub_1000FFE90();
  }

  if (v19 == 22)
  {
    (*(**(a1 + 120) + 24))(*(a1 + 120), 12);
    (*(**(a1 + 120) + 40))(*(a1 + 120), 3);
    (*(**(a1 + 120) + 40))(*(a1 + 120), 2);
    (*(**(a1 + 120) + 40))(*(a1 + 120), 1);
    (*(**(a1 + 120) + 48))(*(a1 + 120), 3);
    (*(**(a1 + 120) + 48))(*(a1 + 120), 6);
  }

  else if (v19 == 3)
  {
    goto LABEL_23;
  }

  sub_1001039FC(&v24);
  return 1;
}

id sub_100183950(uint64_t a1, uint64_t a2)
{
  v3 = [objc_msgSend(*(a1 + 88) "vendor")];
  v4 = [NSString stringWithUTF8String:a2];

  return [v3 resetRetryCounters:v4];
}

void sub_1001839B0(int *a1, int *a2)
{
  v4 = a2;
  if ((sub_100183A60(a1, &v4) & 1) == 0)
  {
    v5[2] = *a2;
    v5[0] = 25;
    sub_100103D88(a1, v5);
    sub_1001039FC(v5);
  }
}

void sub_100183A44(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1001039FC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100183A60(int *a1, int **a2)
{
  result = 0;
  v4 = *a1 ^ (*a1 >> 31);
  if (v4 >= 0x19)
  {
    if (v4 <= 29)
    {
      if ((v4 - 26) < 4)
      {
        return result;
      }

      if (v4 == 25)
      {
        a1[2] = **a2;
        return 1;
      }
    }

    else if (v4 > 34)
    {
      if (v4 > 38)
      {
        sub_10053508C();
      }
    }

    else if (v4 <= 31)
    {
      if (v4 != 30)
      {
        sub_10053508C();
      }
    }

    else if (v4 != 32 && v4 != 33)
    {
      sub_10053508C();
    }

    sub_10053508C();
  }

  return result;
}

void sub_100183F78(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36, char a37)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  sub_1005F3518(&a37);
  sub_1007BE994(v37);
  _Unwind_Resume(a1);
}

uint64_t sub_100183FE0(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 144);
  v5 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v5;
  if (v4 == 1)
  {
    if (*(a1 + 39) < 0)
    {
      operator delete(*(a1 + 16));
    }

    v6 = *(a2 + 16);
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 16) = v6;
    *(a2 + 39) = 0;
    *(a2 + 16) = 0;
    v7 = *(a2 + 100);
    v8 = *(a2 + 88);
    v9 = *(a2 + 72);
    *(a1 + 56) = *(a2 + 56);
    *(a1 + 72) = v9;
    *(a1 + 88) = v8;
    *(a1 + 100) = v7;
    *(a1 + 40) = *(a2 + 40);
    if (*(a1 + 143) < 0)
    {
      operator delete(*(a1 + 120));
    }

    v10 = *(a2 + 120);
    *(a1 + 136) = *(a2 + 136);
    *(a1 + 120) = v10;
    *(a2 + 143) = 0;
    *(a2 + 120) = 0;
  }

  else
  {
    v11 = *(a2 + 16);
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 16) = v11;
    *(a2 + 24) = 0;
    *(a2 + 32) = 0;
    *(a2 + 16) = 0;
    *(a1 + 40) = *(a2 + 40);
    v12 = *(a2 + 72);
    v13 = *(a2 + 88);
    v14 = *(a2 + 100);
    *(a1 + 56) = *(a2 + 56);
    *(a1 + 100) = v14;
    *(a1 + 88) = v13;
    *(a1 + 72) = v12;
    v15 = *(a2 + 120);
    *(a1 + 136) = *(a2 + 136);
    *(a1 + 120) = v15;
    *(a2 + 128) = 0;
    *(a2 + 136) = 0;
    *(a2 + 120) = 0;
    *(a1 + 144) = 1;
  }

  return a1;
}

uint64_t sub_100184100(uint64_t a1, uint64_t a2)
{
  if (qword_1025D4630 != -1)
  {
    sub_1018FC884();
  }

  v4 = qword_1025D4638;
  if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_DEBUG))
  {
    *v8 = 136446210;
    *&v8[4] = sub_100187DF4(a2);
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "@WifiLogic, entry, requestLocationUpdate, %{public}s", v8, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018FC97C(a2);
  }

  *v8 = *a2;
  v8[8] = *(a2 + 8);
  if (*(a2 + 39) < 0)
  {
    sub_100007244(v9, *(a2 + 16), *(a2 + 24));
  }

  else
  {
    *v9 = *(a2 + 16);
    v10 = *(a2 + 32);
  }

  v12 = *(a2 + 56);
  v13 = *(a2 + 72);
  v14[0] = *(a2 + 88);
  *(v14 + 12) = *(a2 + 100);
  v11 = *(a2 + 40);
  if (*(a2 + 143) < 0)
  {
    sub_100007244(__p, *(a2 + 120), *(a2 + 128));
  }

  else
  {
    *__p = *(a2 + 120);
    v16 = *(a2 + 136);
  }

  v18 = *v8;
  v19 = v8[8];
  v20 = *v9;
  v5 = v10;
  v9[0] = 0;
  v9[1] = 0;
  v10 = 0;
  *(v25 + 12) = *(v14 + 12);
  v24 = v13;
  v25[0] = v14[0];
  v22 = v11;
  v23 = v12;
  v21 = v5;
  v26 = v16;
  v25[2] = *__p;
  __p[1] = 0;
  v16 = 0;
  __p[0] = 0;
  v17 = 24;
  v6 = sub_1000FFE90(a1, &v17);
  sub_1001039FC(&v17);
  if (SHIBYTE(v16) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v10) < 0)
  {
    operator delete(v9[0]);
  }

  return v6 & 1;
}

void sub_100184328(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

NSDictionary *sub_100184364(unsigned int *a1)
{
  v3[0] = @"clients";
  v4[0] = [NSNumber numberWithInt:a1[8]];
  v4[1] = @"register";
  v3[1] = @"trigger";
  v3[2] = @"sum";
  v4[2] = [NSNumber numberWithInt:a1[9]];
  v3[3] = @"bin";
  v4[3] = [NSNumber numberWithInt:a1[10]];
  return [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:4];
}

void sub_100184438(uint64_t a1, uint64_t *a2)
{
  v10 = *a2;
  v11 = *(a2 + 8);
  if (*(a2 + 39) < 0)
  {
    sub_100007244(v12, a2[2], a2[3]);
  }

  else
  {
    *v12 = *(a2 + 1);
    v13 = a2[4];
  }

  v15 = *(a2 + 7);
  v16 = *(a2 + 9);
  v17[0] = *(a2 + 11);
  *(v17 + 12) = *(a2 + 100);
  v14 = *(a2 + 5);
  if (*(a2 + 143) < 0)
  {
    sub_100007244(__p, a2[15], a2[16]);
  }

  else
  {
    *__p = *(a2 + 15);
    v19 = a2[17];
  }

  sub_1001039FC(*a1);
  v4 = *a1;
  *(v4 + 16) = v11;
  *(v4 + 8) = v10;
  v5 = v13;
  *(v4 + 24) = *v12;
  *(v4 + 40) = v5;
  v12[0] = 0;
  v12[1] = 0;
  v13 = 0;
  *(v4 + 48) = v14;
  v6 = v16;
  v7 = v17[0];
  v8 = v15;
  *(v4 + 108) = *(v17 + 12);
  *(v4 + 80) = v6;
  *(v4 + 96) = v7;
  *(v4 + 64) = v8;
  v9 = v19;
  *(v4 + 128) = *__p;
  *(v4 + 144) = v9;
  __p[0] = 0;
  __p[1] = 0;
  v19 = 0;
  **a1 = *(a1 + 8);
  if (SHIBYTE(v19) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v13) < 0)
  {
    operator delete(v12[0]);
  }
}

void sub_100184598(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100185624(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41)
{
  sub_1005F3518(&__p);
  sub_1005F3518(&a41);
  sub_1007BE994(v41);
  _Unwind_Resume(a1);
}

uint64_t sub_10018576C(uint64_t a1, void **a2)
{
  v2 = *sub_1000F2B3C(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

const char *sub_100185818(unsigned int a1)
{
  if (a1 > 0xB)
  {
    return "na";
  }

  else
  {
    return off_10246B368[a1];
  }
}

void *sub_10018583C(void *a1, void *a2)
{
  v15[0] = *a2;
  v4 = sub_10018D3FC(v15);
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
    sub_100189DA0();
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

  v15[0] = v11[2];
  v13 = sub_10018D3FC(v15);
  v16 = *a2;
  if (v13 != sub_10018D3FC(&v16))
  {
    goto LABEL_17;
  }

  return v11;
}

void sub_100185A9C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void **__p, uint64_t a10)
{
  if (__p)
  {
    sub_10014E5FC(&a10, __p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100185AC0@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 32);
  *a2 = *(result + 24);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

BOOL sub_100185ADC(uint64_t a1, const char *a2, void *a3)
{
  v5 = CFStringCreateWithCString(kCFAllocatorDefault, a2, 0x8000100u);
  v6 = sub_100185B50(a1, v5, a3);
  if (v5)
  {
    CFRelease(v5);
  }

  return v6;
}

BOOL sub_100185B50(uint64_t a1, uint64_t a2, void *a3)
{
  cf = 0;
  if (!(*(*a1 + 904))(a1, a2, &cf))
  {
    return 0;
  }

  v6 = sub_1002D260C(cf, a3);
  if (!v6)
  {
    if (qword_1025D48A0 != -1)
    {
      sub_1018AA1FC();
    }

    v7 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_FAULT))
    {
      v8 = (*(*a1 + 840))(a1);
      *buf = 138412546;
      v18 = v8;
      v19 = 2112;
      v20 = a2;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_FAULT, "Unsupported type at %@:%@ (domain:key)", buf, 0x16u);
    }

    if (sub_10000A100(121, 0))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D48A0 != -1)
      {
        sub_1018AA1FC();
      }

      v10 = (*(*a1 + 840))(a1);
      v13 = 138412546;
      v14 = v10;
      v15 = 2112;
      v16 = a2;
      v11 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 0, "virtual BOOL CLNameValuePair::get(CFStringRef, CLNameValuePair &, int) const", "%s\n", v11);
      if (v11 != buf)
      {
        free(v11);
      }
    }
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v6;
}

void sub_100185DCC(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 520))
  {
    if (qword_1025D4620 != -1)
    {
      sub_10190BC08();
    }

    v2 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEBUG, "NETWORK: scheduleRetryTimer, retry timer already scheduled", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10190C498();
    }
  }

  else
  {
    v5 = sub_100186188(a1);
    if (v5)
    {
      v6 = 10.0;
      if (*(a1 + 532) == 1)
      {
        v6 = sub_1004E9660(*(a1 + 352), 8, 5);
      }

      v7 = [*(a1 + 40) newTimer];
      *(a1 + 520) = v7;
      v26[0] = _NSConcreteStackBlock;
      v26[1] = 3221225472;
      v26[2] = sub_1006DCCD8;
      v26[3] = &unk_102449A78;
      v26[4] = a1;
      [v7 setHandler:v26];
      [*(a1 + 520) setNextFireDelay:v6];
    }

    else
    {
      sub_10018646C(a1, "scheduleRetryTimer");
      v6 = -1.0;
    }

    if (qword_1025D4620 != -1)
    {
      sub_10190B63C();
    }

    v8 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
    {
      v9 = *(a1 + 520);
      v10 = *(a1 + 352);
      v11 = *(a1 + 432);
      v12 = *(a1 + 184);
      v13 = *(a1 + 224);
      v14 = *(a1 + 264);
      v15 = *(a1 + 304);
      v16 = *(a1 + 344);
      *buf = 136317698;
      v50 = a2;
      v51 = 2048;
      v52 = v9;
      v53 = 1024;
      v54 = v10;
      v55 = 2048;
      v56 = v11;
      v57 = 2048;
      v58 = v12;
      v59 = 2048;
      v60 = v13;
      v61 = 2048;
      v62 = v14;
      v63 = 2048;
      v64 = v15;
      v65 = 2048;
      v66 = v16;
      v67 = 2048;
      v68 = v6;
      v69 = 1024;
      v70 = v5;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEBUG, "NETWORK: scheduleRetryTimer, %s, %p, fQueryRetries, %d, pending, %lu, %lu, %lu, %lu, %lu, %lu, timerInterval, %.1lf, isTimerNeeded, %d", buf, 0x68u);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4620 != -1)
      {
        sub_10190B63C();
      }

      v17 = *(a1 + 520);
      v18 = *(a1 + 352);
      v19 = *(a1 + 432);
      v20 = *(a1 + 184);
      v21 = *(a1 + 224);
      v22 = *(a1 + 264);
      v23 = *(a1 + 304);
      v24 = *(a1 + 344);
      v27 = 136317698;
      v28 = a2;
      v29 = 2048;
      v30 = v17;
      v31 = 1024;
      v32 = v18;
      v33 = 2048;
      v34 = v19;
      v35 = 2048;
      v36 = v20;
      v37 = 2048;
      v38 = v21;
      v39 = 2048;
      v40 = v22;
      v41 = 2048;
      v42 = v23;
      v43 = 2048;
      v44 = v24;
      v45 = 2048;
      v46 = v6;
      v47 = 1024;
      v48 = v5;
      v25 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "void CLNetworkLocationProvider::scheduleRetryTimer(const char *)", "%s\n", v25);
      if (v25 != buf)
      {
        free(v25);
      }
    }
  }
}

uint64_t sub_100186188(uint64_t a1)
{
  v2 = vabdd_f64(CFAbsoluteTimeGetCurrent(), *(a1 + 360));
  if (*(a1 + 432) || *(a1 + 184) || *(a1 + 224) || *(a1 + 264) || *(a1 + 304) || (v3 = *(a1 + 344)) != 0)
  {
    LOBYTE(v3) = *(a1 + 528) == -1;
  }

  v4 = (*(a1 + 352) < 5) & v3;
  if (v2 <= 5400.0)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (qword_1025D4620 != -1)
  {
    sub_10190BC08();
  }

  v6 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
  {
    v7 = *(a1 + 352);
    v8 = *(a1 + 432);
    v9 = *(a1 + 184);
    v10 = *(a1 + 224);
    v11 = *(a1 + 264);
    v12 = *(a1 + 304);
    v13 = *(a1 + 344);
    v14 = *(a1 + 528);
    *buf = 67111424;
    v18 = v7;
    v19 = 2048;
    v20 = v8;
    v21 = 2048;
    v22 = v9;
    v23 = 2048;
    v24 = v10;
    v25 = 2048;
    v26 = v11;
    v27 = 2048;
    v28 = v12;
    v29 = 2048;
    v30 = v13;
    v31 = 1024;
    v32 = v14;
    v33 = 2048;
    v34 = v2;
    v35 = 1024;
    v36 = v5;
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "NETWORK: areQueryRetriesNeeded, fQueryRetries, %d, pending, %lu, %lu, %lu, %lu, %lu, %lu, currentRetry, %d, sinceRetrySequenceStart, %.2lf, needed, %d", buf, 0x5Au);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4620 != -1)
    {
      sub_10190B63C();
    }

    v16 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "BOOL CLNetworkLocationProvider::isRetryTimerNeeded()", "%s\n", v16);
    if (v16 != buf)
    {
      free(v16);
    }
  }

  return v5;
}

void sub_10018646C(uint64_t a1, void *a2)
{
  if (qword_1025D4620 != -1)
  {
    sub_10190BC08();
  }

  v4 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
  {
    v5 = *(a1 + 520);
    v6 = *(a1 + 352);
    v7 = *(a1 + 432);
    v8 = *(a1 + 184);
    v9 = *(a1 + 224);
    v10 = *(a1 + 264);
    v11 = *(a1 + 304);
    v12 = *(a1 + 344);
    v15 = 136317186;
    v16 = a2;
    v17 = 2048;
    v18 = v5;
    v19 = 1024;
    v20 = v6;
    v21 = 2048;
    v22 = v7;
    v23 = 2048;
    v24 = v8;
    v25 = 2048;
    v26 = v9;
    v27 = 2048;
    v28 = v10;
    v29 = 2048;
    v30 = v11;
    v31 = 2048;
    v32 = v12;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "NETWORK: cancelRetryTimer, %s, %p, fQueryRetries, %d, pending, %lu, %lu, %lu, %lu, %lu, %lu", &v15, 0x58u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10190E638(a2, a1);
  }

  v13 = *(a1 + 520);
  if (v13)
  {
    [v13 invalidate];

    *(a1 + 520) = 0;
  }

  else
  {
    if (qword_1025D4620 != -1)
    {
      sub_10190B63C();
    }

    v14 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v15) = 0;
      _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_DEBUG, "NETWORK: cancelRetryTimer, no retry timer", &v15, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10190E794();
    }
  }
}

uint64_t sub_100186644(uint64_t a1, uint64_t a2, int a3, void *a4)
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

uint64_t sub_1001866F8(uint64_t a1, uint64_t a2, int *a3)
{
  v4 = a2;
  v6 = (*(*a1 + 96))(a1, a2, a3, &unk_1025D6280);
  sub_100186B70(a1, v4, a3, 1);
  (*(*a1 + 216))(a1);
  return v6;
}

uint64_t sub_100186798(char *a1, void *a2, int *a3, char *a4)
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
        *&buf[0] = &v32;
        *(sub_100007FA0((v20 + 40), &v32) + 32) = v28;
        memset(buf, 0, sizeof(buf));
        if (v18 == v16 && (*(*a1 + 128))(a1, a3, buf))
        {
          sub_1004D48A0();
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
        v22 = byte_1025D8448;
        v29 = v14;
        *&buf[0] = &v29;
        *(sub_100024014((a1 + 56), &v29) + 80) = v22;
        v29 = *a3;
        *&buf[0] = &v29;
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
        *&buf[0] = &v29;
        v26 = sub_100024014(v21, &v29);
        *&buf[0] = &v32;
        *(sub_100007FA0((v26 + 5), &v32) + 32) = v25;
      }

      (*(*a1 + 168))(a1, a3);
LABEL_37:
      if (v18 == v16)
      {
        LODWORD(buf[0]) = *a3;
        sub_1003C9410((v31 + 40), buf);
      }

      return 1;
    }
  }

  if (qword_1025D47F0 != -1)
  {
    sub_10189A8E4();
  }

  v11 = qword_1025D47F8;
  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_FAULT))
  {
    v12 = a1 + 8;
    if (a1[31] < 0)
    {
      v12 = *v12;
    }

    LODWORD(buf[0]) = 136446466;
    *(buf + 4) = v12;
    WORD6(buf[0]) = 1026;
    *(buf + 14) = a2;
    _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_FAULT, "%{public}s; client %{public}d does not exist", buf, 0x12u);
  }

  v13 = sub_10000A100(121, 0);
  result = 0;
  if (v13)
  {
    sub_10189AD70(a1, a2);
    return 0;
  }

  return result;
}

void sub_100186B70(uint64_t a1, int a2, int *a3, int a4)
{
  v21 = a2;
  if (qword_1025D4390 != -1)
  {
    sub_10014E59C();
  }

  v7 = qword_1025D4398;
  if (os_log_type_enabled(qword_1025D4398, OS_LOG_TYPE_DEFAULT))
  {
    v8 = a4 ? "Registration" : "Unregistration";
    *buf = &v21;
    v9 = [objc_msgSend(sub_1000488C8(a1 + 80 &v21)[8]];
    v10 = *a3;
    *buf = *a3;
    v11 = sub_10000608C(a1, buf, 1);
    (*(*a1 + 160))(__p, a1, a3);
    v12 = v25 >= 0 ? __p : *__p;
    *buf = 136448770;
    *&buf[4] = "MotionOdometer";
    v44 = 2082;
    v45 = "action";
    v46 = 2082;
    v47 = v8;
    v48 = 2082;
    v49 = "client";
    v50 = 2082;
    v51 = v9;
    v52 = 2082;
    v53 = "notification";
    v54 = 1026;
    v55 = v10;
    v56 = 2082;
    v57 = "notificationClientCount";
    v58 = 1026;
    v59 = v11;
    v60 = 2082;
    v61 = "notificationString";
    v62 = 2082;
    v63 = v12;
    _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEFAULT, "%{public}s, %{public}s, %{public}s, %{public}s, %{public}s, %{public}s, %{public}d, %{public}s, %{public}d, %{public}s, %{public}s", buf, 0x68u);
    if (SHIBYTE(v25) < 0)
    {
      operator delete(*__p);
    }
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4390 != -1)
    {
      sub_10189A7B0();
    }

    if (a4)
    {
      v13 = "Registration";
    }

    else
    {
      v13 = "Unregistration";
    }

    *__p = &v21;
    v14 = [objc_msgSend(sub_1000488C8(a1 + 80 &v21)[8]];
    v15 = *a3;
    *__p = *a3;
    v16 = sub_10000608C(a1, __p, 1);
    (*(*a1 + 160))(v19, a1, a3);
    if (v20 >= 0)
    {
      v17 = v19;
    }

    else
    {
      v17 = v19[0];
    }

    *__p = 136448770;
    *&__p[4] = "MotionOdometer";
    v23 = 2082;
    v24 = "action";
    v25 = 2082;
    v26 = v13;
    v27 = 2082;
    v28 = "client";
    v29 = 2082;
    v30 = v14;
    v31 = 2082;
    v32 = "notification";
    v33 = 1026;
    v34 = v15;
    v35 = 2082;
    v36 = "notificationClientCount";
    v37 = 1026;
    v38 = v16;
    v39 = 2082;
    v40 = "notificationString";
    v41 = 2082;
    v42 = v17;
    v18 = _os_log_send_and_compose_impl();
    if (v20 < 0)
    {
      operator delete(v19[0]);
    }

    sub_100152C7C("Generic", 1, 0, 2, "void CLOdometerNotifier::logClient(int, const CLOdometerNotifier_Type::Notification &, BOOL)", "%s\n", v18);
    if (v18 != buf)
    {
      free(v18);
    }
  }
}

_BYTE *sub_100186FB0@<X0>(_DWORD *a1@<X1>, _BYTE *a2@<X8>)
{
  v3 = *a1 - 2;
  if (v3 > 5)
  {
    v4 = "Unknown";
  }

  else
  {
    v4 = *(&off_102459658 + v3);
  }

  return sub_10000EC00(a2, v4);
}

uint64_t sub_100186FE0(unsigned __int8 *a1)
{
  if (qword_1025D4390 != -1)
  {
    sub_10014E59C();
  }

  v2 = qword_1025D4398;
  if (os_log_type_enabled(qword_1025D4398, OS_LOG_TYPE_DEFAULT))
  {
    v3 = a1[945];
    v7[0] = 2;
    v4 = sub_10000608C(a1, v7, 1);
    v5 = a1[944];
    v7[0] = 67240704;
    v7[1] = v3;
    v8 = 1026;
    v9 = v4;
    v10 = 1026;
    v11 = v5;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEFAULT, "Updating odometer state, authorized, %{public}d, has active clients, %{public}d, workout distance controller, %{public}d", v7, 0x14u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10189AA0C(a1);
  }

  if (a1[945] == 1 && ((v7[0] = 2, sub_10000608C(a1, v7, 1)) || a1[944] == 1))
  {
    return (*(*a1 + 224))(a1);
  }

  else
  {
    return (*(*a1 + 232))(a1);
  }
}

uint64_t sub_100187178(unsigned __int8 *a1)
{
  sub_100186FE0(a1);
  result = sub_100023ED4(0);
  if (result)
  {
    v3 = result + 72;
    result = (*(*(result + 72) + 16))(result + 72);
    if (result)
    {
      v5 = 5;
      v4 = sub_10000608C(a1, &v5, 1) > 0;
      return (*(*v3 + 40))(v3, v4);
    }
  }

  return result;
}

_BYTE *sub_100187228(_BYTE *result)
{
  if (result[1040] == 1)
  {
    v8 = v1;
    v9 = v2;
    v3 = result;
    if (qword_1025D4390 != -1)
    {
      sub_101959820();
    }

    v4 = qword_1025D4398;
    if (os_log_type_enabled(qword_1025D4398, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "Disable GPS; Stop GPS subscription", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101959B48();
    }

    if (qword_1025D4650 != -1)
    {
      sub_101959A34();
    }

    v5 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEFAULT, "#wigo,off,OdometerNotifierCompanion", v6, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101959C34();
    }

    AnalyticsSendEventLazy();
    [*(*(v3 + 231) + 16) unregister:*(*(v3 + 231) + 8) forNotification:0];
    result = [*(*(v3 + 256) + 16) unregister:*(*(v3 + 256) + 8) forNotification:0];
    v3[1040] = 0;
  }

  return result;
}

uint64_t sub_100187378(uint64_t a1)
{
  result = (*(*(a1 - 72) + 192))();
  if (result)
  {
    return sub_100187460() != 0;
  }

  return result;
}

uint64_t sub_1001873C0()
{
  if (sub_10003FFF8() & 1) != 0 || (sub_1000F42C0())
  {
    v0 = 0;
  }

  else
  {
    v6 = 1;
    v1 = sub_100011660();
    sub_100185AC0(v1, &v4);
    v2 = sub_10001CB4C(v4, "OscarStepCounting", &v6);
    if (v5)
    {
      sub_100008080(v5);
    }

    v0 = v2 ^ 1 | v6;
  }

  return v0 & 1;
}

void sub_100187448(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_100008080(a11);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100187460()
{
  if (qword_10265A3C8 != -1)
  {
    sub_101949E34();
  }

  return qword_1026372C0;
}

void sub_100187498(uint64_t a1, char a2)
{
  v4 = sub_100011660();
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100187624;
  v5[3] = &unk_102460CC8;
  v5[4] = a1;
  v6 = a2;
  sub_100042800(v4, v5);
}

void sub_100187524(uint64_t a1, uint64_t a2)
{
  Current = CFRunLoopGetCurrent();
  sub_100011660();
  if (Current == sub_10018D3EC())
  {
    v6 = *(*a1 + 560);

    v6(a1, a2, 0, 0);
  }

  else
  {
    v5 = sub_100011660();
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1005AC12C;
    v7[3] = &unk_102460CC8;
    v7[4] = a1;
    v8 = a2;
    sub_100042800(v5, v7);
  }
}

uint64_t sub_100187624(uint64_t a1)
{
  v1 = *(a1 + 32);
  v1[245] = *(a1 + 40);
  return (*(*v1 + 552))(v1, 0);
}

void sub_100187664(uint64_t a1, char a2, NSObject *a3, id a4)
{
  sub_100011660();
  sub_10001160C();
  *(a1 + 246) = a2;
  if (qword_1025D4210 != -1)
  {
    sub_1018D1710();
  }

  v8 = qword_1025D4218;
  if (os_log_type_enabled(qword_1025D4218, OS_LOG_TYPE_INFO))
  {
    v9 = *(a1 + 218);
    v10 = *(a1 + 219);
    v11 = *(a1 + 223);
    v12 = *(a1 + 264);
    v13 = *(a1 + 220);
    v14 = *(a1 + 221);
    v15 = *(a1 + 222);
    v16 = *(a1 + 242);
    v17 = *(a1 + 243);
    v18 = *(a1 + 225);
    v19 = *(a1 + 226);
    v20 = *(a1 + 230);
    v21 = *(a1 + 224);
    v22 = *(a1 + 227);
    v23 = *(a1 + 245);
    v24 = *(a1 + 228);
    v25 = *(a1 + 255);
    v26 = *(a1 + 256);
    v27 = *(a1 + 257);
    v28 = *(a1 + 258);
    v29 = *(a1 + 259);
    v30 = *(a1 + 247);
    v31 = *(a1 + 267);
    v32 = *(a1 + 244);
    v40 = *(a1 + 271);
    v41 = *(a1 + 282);
    v42 = *(a1 + 272);
    *buf = 67181313;
    v45 = v9;
    v46 = 1025;
    v47 = v10;
    v48 = 1025;
    v49 = v11;
    v50 = 1025;
    v51 = v12;
    v52 = 1025;
    v53 = v13;
    v54 = 1025;
    v55 = v14;
    v56 = 1025;
    v57 = v15;
    v58 = 1026;
    v59 = v16;
    v60 = 1026;
    v61 = v17;
    v62 = 1026;
    v63 = v18;
    v64 = 1026;
    v65 = v19;
    v66 = 2050;
    v67 = v20;
    v68 = 1026;
    v69 = v21;
    v70 = 1026;
    v71 = v22;
    v72 = 1025;
    v73 = v23;
    v74 = 1026;
    v75 = v24;
    v76 = 1025;
    v77 = v25;
    v78 = 1025;
    v79 = v26;
    v80 = 1025;
    v81 = v27;
    v82 = 1025;
    v83 = v28;
    v84 = 1025;
    v85 = v29;
    v86 = 2050;
    v87 = v30;
    v88 = 1025;
    v89 = v31;
    v90 = 1025;
    v91 = v32;
    v92 = 1025;
    v93 = v40;
    v94 = 1025;
    v95 = v41;
    v96 = 1025;
    v97 = v42;
    _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_INFO, "Sending new config to SPU:enableActivity,%{private}u,enableStepCounting,%{private}u,enableOnBodyDetection,%{private}u,enableStepCountPeriodFast,%{private}uactivityForceCodeTransition,%{private}u,stepCountingForceCodeTransition,%{private}u,enableThreshold,%{private}u,disableDynamicBias,%{public}u,ignoreDynamicBias,%{public}u,ispEnable,%{public}u,ispMode,%{public}u,ISPUpdateIntervalOverride,%{public}f,stickyIsp,%{public}d,logLevel,%{public}d,enableCoarseElevation,%{private}d,proactiveRevisitTime,%{public}u,fallStatsMode,%{private}u,sensorRecordingActive,%{private}u,simulateEvent,%{private}u,userStudyPressureDataCollection,%{private}u,detectorEnabled,%{private}u,lastAckedAopTimestamp,%{public}llu,gateDynamicBiasOnChargerStatus,%{private}u,supportsOISImprovements,%{private}u,compassCoexDuringBasebandUse,%{private}u,enableComputeWhileStatic,%{private}u,magnetometer50HzODRUse,%{private}u", buf, 0xACu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018D2ED0(a1, v33, v34, v35, v36, v37, v38, v39);
    if (!a4)
    {
      goto LABEL_9;
    }
  }

  else if (!a4)
  {
    goto LABEL_9;
  }

  a4 = [a4 copy];
  if (a3)
  {
    dispatch_retain(a3);
  }

LABEL_9:
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 3221225472;
  aBlock[2] = sub_100187B50;
  aBlock[3] = &unk_102461BD0;
  aBlock[5] = a4;
  aBlock[6] = a1;
  aBlock[4] = a3;
  sub_100187950(a1 + 192, (a1 + 217), aBlock);
}

void sub_100187950(uint64_t a1, __int128 *a2, void *aBlock)
{
  if (*(a1 + 8))
  {
    v10[0] = 0;
    v10[1] = v10;
    v10[2] = 0x7812000000;
    v10[3] = sub_100187AAC;
    v10[4] = nullsub_79;
    v10[5] = &unk_10238AE8B;
    v4 = a2[3];
    v13 = a2[2];
    v14 = v4;
    v15 = *(a2 + 32);
    v5 = *a2;
    v12 = a2[1];
    v11 = v5;
    if (aBlock)
    {
      v6 = _Block_copy(aBlock);
    }

    else
    {
      v6 = 0;
    }

    v8 = *a1;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100187AD0;
    v9[3] = &unk_102462080;
    v9[5] = v10;
    v9[6] = a1;
    v9[4] = v6;
    dispatch_async(v8, v9);
    _Block_object_dispose(v10, 8);
  }

  else if (aBlock)
  {
    v7 = *(aBlock + 2);

    v7(aBlock, 0);
  }
}

void sub_100187A94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__n128 sub_100187AAC(uint64_t a1, uint64_t a2)
{
  *(a1 + 48) = *(a2 + 48);
  result = *(a2 + 64);
  v3 = *(a2 + 80);
  v4 = *(a2 + 96);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 80) = v3;
  *(a1 + 96) = v4;
  *(a1 + 64) = result;
  return result;
}

void sub_100187AD0(void *a1)
{
  v2 = a1[6];
  *(*(a1[5] + 8) + 48) = 6;
  v3 = sub_1000B93E4(v2, *(a1[5] + 8) + 48, 66);
  v4 = a1[4];
  if (v4)
  {
    (*(v4 + 16))(v4, v3);
    v5 = a1[4];

    _Block_release(v5);
  }
}

void sub_100187B50(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 48);
  v5 = sub_100011660();
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100187C70;
  v11[3] = &unk_102460CC8;
  v11[4] = v4;
  v12 = a2;
  sub_100042800(v5, v11);
  v6 = *(a1 + 40);
  if (v6)
  {
    if (*(a1 + 32))
    {
      v7 = [v6 copy];
      v8 = *(a1 + 32);
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v9[2] = sub_1005AC164;
      v9[3] = &unk_102461BA8;
      v9[4] = v7;
      v10 = a2;
      dispatch_async(v8, v9);
    }

    else
    {
      v6[2](v6, a2);
    }
  }
}

void sub_100187C70(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(a1 + 40) == 1)
  {
    if (*(v1 + 216) == 1)
    {
      if (qword_1025D4210 != -1)
      {
        sub_1018D1710();
      }

      v2 = qword_1025D4218;
      if (os_log_type_enabled(qword_1025D4218, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEFAULT, "Sending initial configuration.", buf, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1018D313C();
      }

      sub_100F547A4(v1);
    }
  }

  else
  {
    if (qword_1025D4210 != -1)
    {
      sub_1018D1768();
    }

    v3 = qword_1025D4218;
    if (os_log_type_enabled(qword_1025D4218, OS_LOG_TYPE_ERROR))
    {
      *v4 = 0;
      _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_ERROR, "Failed to configure motion coprocessor", v4, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018D3220();
    }

    sub_100F538BC(v1);
  }
}

void sub_100187DB8(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    sub_1000B9708(a1, a2);
  }

  sub_10028C64C();
}

const char *sub_100187DF4(_DWORD *a1)
{
  v1 = *a1 - 1;
  if (v1 > 6)
  {
    return "none";
  }

  else
  {
    return off_10246B3C8[v1];
  }
}

const char *sub_100187E20(int a1)
{
  if ((a1 - 1) > 6)
  {
    return "none";
  }

  else
  {
    return off_10246B3C8[a1 - 1];
  }
}

void sub_100187E50(void *a1@<X0>, uint64_t *a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v7 = a1[2];
  if (v7)
  {
    do
    {
      while (1)
      {
        v9 = vabdd_f64(a3, *(v7 + 72));
        if (v9 > a4)
        {
          break;
        }

        v7 = *v7;
        if (!v7)
        {
          goto LABEL_25;
        }
      }

      if (qword_1025D4630 != -1)
      {
        sub_101AA885C();
      }

      v10 = qword_1025D4638;
      if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_DEBUG))
      {
        *v25 = *(v7 + 16);
        sub_10018F0D0(&__p);
        v11 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
        LODWORD(buf.__r_.__value_.__l.__data_) = 136380931;
        *(buf.__r_.__value_.__r.__words + 4) = v11;
        WORD2(buf.__r_.__value_.__r.__words[1]) = 1026;
        *(&buf.__r_.__value_.__r.__words[1] + 6) = v9;
        _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEBUG, "@WifiAps, remove, %{private}s, age, %{public}d", &buf, 0x12u);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }

      if (sub_10000A100(121, 2))
      {
        sub_101AA8884(&__p);
        sub_10018F0D0(&buf);
        p_buf = &buf;
        if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          p_buf = buf.__r_.__value_.__r.__words[0];
        }

        *v25 = 136380931;
        *&v25[4] = p_buf;
        v26 = 1026;
        v27 = v9;
        v16 = _os_log_send_and_compose_impl();
        if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(buf.__r_.__value_.__l.__data_);
        }

        sub_100152C7C("Generic", 1, 0, 2, "CLWifiService_Type::AccessPointVector CL::Wifi1::Types::WifiScanHistory::removeAgedAccessPoints(cl::chrono::CFAbsoluteTimeClock::time_point, cl::chrono::secondsf)", "%s\n", v16);
        if (v16 != &__p)
        {
          free(v16);
        }
      }

      v12 = a2[1];
      if (v12 >= a2[2])
      {
        v13 = sub_10014E208(a2, v7 + 16);
      }

      else
      {
        sub_1001005C4(a2[1], v7 + 16);
        v13 = v12 + 88;
      }

      a2[1] = v13;
      v14 = *v7;
      sub_10014E5B0(a1, v7);
      v7 = v14;
    }

    while (v14);
  }

LABEL_25:
  if (qword_1025D4630 != -1)
  {
    sub_101AA885C();
  }

  v17 = qword_1025D4638;
  if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_DEFAULT))
  {
    v18 = a1[3];
    v19 = 0x2E8BA2E8BA2E8BA3 * ((a2[1] - *a2) >> 3);
    LODWORD(__p.__r_.__value_.__l.__data_) = 134349568;
    *(__p.__r_.__value_.__r.__words + 4) = v18;
    WORD2(__p.__r_.__value_.__r.__words[1]) = 2050;
    *(&__p.__r_.__value_.__r.__words[1] + 6) = v19;
    HIWORD(__p.__r_.__value_.__r.__words[2]) = 1026;
    v29 = a4;
    _os_log_impl(dword_100000000, v17, OS_LOG_TYPE_DEFAULT, "@WifiAps, history, %{public}lu, aged, %{public}lu, thresh, %{public}d", &__p, 0x1Cu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101AA8884(&__p);
    v20 = a1[3];
    v21 = 0x2E8BA2E8BA2E8BA3 * ((a2[1] - *a2) >> 3);
    LODWORD(buf.__r_.__value_.__l.__data_) = 134349568;
    *(buf.__r_.__value_.__r.__words + 4) = v20;
    WORD2(buf.__r_.__value_.__r.__words[1]) = 2050;
    *(&buf.__r_.__value_.__r.__words[1] + 6) = v21;
    HIWORD(buf.__r_.__value_.__r.__words[2]) = 1026;
    v24 = a4;
    v22 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "CLWifiService_Type::AccessPointVector CL::Wifi1::Types::WifiScanHistory::removeAgedAccessPoints(cl::chrono::CFAbsoluteTimeClock::time_point, cl::chrono::secondsf)", "%s\n", v22);
    if (v22 != &__p)
    {
      free(v22);
    }
  }
}

void sub_100188284(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_1000B96B4(va);
  _Unwind_Resume(a1);
}

void sub_10018839C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1007BE994(va);
  _Unwind_Resume(a1);
}

BOOL sub_1001883C8(void *a1, double *a2)
{
  v2 = a1[2];
  if (a1[3] == v2)
  {
    return 0;
  }

  v3 = a1[5];
  v4 = (v2 + 8 * (v3 >> 8));
  v5 = (*v4 + 16 * v3);
  v6 = *(v2 + (((a1[6] + v3) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(a1 + 48) + v3);
  if (v5 == v6)
  {
    return 0;
  }

  v7 = 1.79769313e308;
  v8 = -1.79769313e308;
  do
  {
    v9 = v5[1];
    if (v9 >= *a2 + -30.0 && v9 <= *a2)
    {
      if (*v5 > v8)
      {
        v8 = *v5;
      }

      if (*v5 < v7)
      {
        v7 = *v5;
      }
    }

    v5 += 2;
    if ((v5 - *v4) == 4096)
    {
      v11 = v4[1];
      ++v4;
      v5 = v11;
    }
  }

  while (v5 != v6);
  return v8 != -1.79769313e308 && v7 != 1.79769313e308 && vabdd_f64(v8, v7) < 2.5;
}

void *sub_10018849C(void *result, void *a2)
{
  if (a2)
  {
    v3 = result;
    result = sub_100103C94(result);
    if (result)
    {
      v4 = a2[2];
      if (v4)
      {
        while (1)
        {
          v7 = v4[2];
          v6 = *nullsub_34(v3);
          if (sub_100195A00(&v7, &v6))
          {
            break;
          }

          v4 = *v4;
          if (!v4)
          {
            goto LABEL_8;
          }
        }

        sub_10014E5B0(a2, v4);
      }

LABEL_8:
      v5 = nullsub_34(v3);
      return sub_10018583C(a2, v5);
    }
  }

  return result;
}

void *sub_100188540(void *a1, void *a2)
{
  v4 = sub_10018D3FC(a2);
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
    operator new();
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

  if (!sub_100195A00(v11 + 2, a2))
  {
    goto LABEL_17;
  }

  return v11;
}

void sub_1001887C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1001887E4(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    sub_1001D0818();
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  *(a1 + 8) = 0;
}

void sub_1001889E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, uint64_t a11)
{
  if (__p)
  {
    sub_1002E4F74(&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100188A04(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  if (*(a2 + 39) < 0)
  {
    sub_100007244((a1 + 16), *(a2 + 16), *(a2 + 24));
  }

  else
  {
    v4 = *(a2 + 16);
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 16) = v4;
  }

  v5 = *(a2 + 40);
  v6 = *(a2 + 56);
  v7 = *(a2 + 72);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 72) = v7;
  *(a1 + 56) = v6;
  *(a1 + 40) = v5;
  return a1;
}

char *sub_100188A84@<X0>(char *result@<X0>, uint64_t a2@<X8>)
{
  if (result[39] < 0)
  {
    return sub_100007244(a2, *(result + 2), *(result + 3));
  }

  *a2 = *(result + 1);
  *(a2 + 16) = *(result + 4);
  return result;
}

void sub_100188AAC(uint64_t a1, int a2, unsigned int a3, double a4)
{
  if (*(a1 + 56) == a2)
  {
    if (qword_1025D4620 != -1)
    {
      sub_10190A3AC();
    }

    v5 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
    {
      if ((a2 - 1) > 4)
      {
        v6 = "none";
      }

      else
      {
        v6 = off_10246B340[a2 - 1];
      }

      *buf = 136446210;
      *&buf[4] = v6;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEBUG, "WifiStep, same, %{public}s", buf, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10190A510();
    }
  }

  else
  {
    if (qword_1025D4620 != -1)
    {
      sub_10190A3AC();
    }

    v10 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
    {
      if ((a2 - 1) > 4)
      {
        v11 = "none";
      }

      else
      {
        v11 = off_10246B340[a2 - 1];
      }

      v12 = *(a1 + 56) - 1;
      if (v12 > 4)
      {
        v13 = "none";
      }

      else
      {
        v13 = off_10246B340[v12];
      }

      *buf = 136446722;
      *&buf[4] = v11;
      *&buf[12] = 2082;
      *&buf[14] = v13;
      *&buf[22] = 2082;
      v44 = sub_100185818(a3);
      _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEFAULT, "WifiFlow, step, %{public}s, from, %{public}s, donereason, %{public}s", buf, 0x20u);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4620 != -1)
      {
        sub_10190A4C0();
      }

      sub_100185818(a3);
      v41 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "void CLWifiLocationUpdateRequest::updateStep(Step, CFAbsoluteTime, DoneReason)", "%s\n", v41);
      if (v41 != buf)
      {
        free(v41);
      }
    }

    *(a1 + 56) = a2;
    if (a2 == 5)
    {
      *(a1 + 60) = a3;
      v20 = *(a1 + 64);
      v19 = *(a1 + 72);
      v21 = a4 - v20;
      *(a1 + 96) = a4 - v20;
      if (v19 <= 0.0)
      {
        v22 = -1.0;
      }

      else
      {
        v22 = v20 - v19;
      }

      *(a1 + 72) = v20;
      v23 = *(a1 + 80);
      v24 = ">5s";
      if (v23 == -1.0)
      {
        v25 = "na";
      }

      else if (v23 <= 0.5)
      {
        v25 = "0.5s";
      }

      else if (v23 <= 1.0)
      {
        v25 = "1s";
      }

      else if (v23 <= 2.0)
      {
        v25 = "2s";
      }

      else if (v23 > 5.0)
      {
        v25 = ">5s";
      }

      else
      {
        v25 = "5s";
      }

      v26 = *(a1 + 88);
      if (v26 == -1.0)
      {
        v27 = "na";
      }

      else if (v26 <= 0.5)
      {
        v27 = "0.5s";
      }

      else if (v26 <= 1.0)
      {
        v27 = "1s";
      }

      else if (v26 <= 2.0)
      {
        v27 = "2s";
      }

      else if (v26 > 5.0)
      {
        v27 = ">5s";
      }

      else
      {
        v27 = "5s";
      }

      if (v21 <= 5.0)
      {
        v24 = "5s";
      }

      if (v21 <= 2.0)
      {
        v24 = "2s";
      }

      if (v21 <= 1.0)
      {
        v24 = "1s";
      }

      if (v21 <= 0.5)
      {
        v24 = "0.5s";
      }

      if (v21 == -1.0)
      {
        v28 = "na";
      }

      else
      {
        v28 = v24;
      }

      if (v22 == -1.0)
      {
        v29 = "na";
      }

      else if (v22 <= 4.0)
      {
        v29 = "4s";
      }

      else if (v22 <= 7.0)
      {
        v29 = "7s";
      }

      else if (v22 <= 60.0)
      {
        v29 = "1m";
      }

      else if (v22 <= 840.0)
      {
        v29 = "14m";
      }

      else if (v22 <= 960.0)
      {
        v29 = "16m";
      }

      else if (v22 <= 1800.0)
      {
        v29 = "30m";
      }

      else if (v22 > 3600.0)
      {
        v29 = ">1h";
      }

      else
      {
        v29 = "1h";
      }

      if (qword_1025D4630 != -1)
      {
        sub_10190A4E8();
      }

      v30 = qword_1025D4638;
      if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_DEBUG))
      {
        v31 = v28;
        v32 = (a1 + 120);
        v33 = v27;
        if (*(a1 + 143) < 0)
        {
          v32 = *v32;
        }

        v34 = v25;
        v35 = *(a1 + 112) - 1;
        if (v35 > 6)
        {
          v36 = "none";
        }

        else
        {
          v36 = off_10246B3C8[v35];
        }

        v37 = sub_100185818(a3);
        v38 = *(a1 + 104);
        if (v38 == 2)
        {
          v39 = "strong";
        }

        else if (v38)
        {
          v39 = "weak";
        }

        else if (*(a1 + 108))
        {
          v39 = "empty";
        }

        else
        {
          v39 = "unknown";
        }

        v40 = *(a1 + 109);
        *buf = 136448258;
        *&buf[4] = v32;
        *&buf[12] = 2082;
        *&buf[14] = v36;
        *&buf[22] = 2082;
        v44 = v37;
        v45 = 2082;
        v46 = v39;
        v47 = 2082;
        v48 = v34;
        v49 = 2082;
        v50 = v33;
        v51 = 2082;
        v52 = v31;
        v53 = 2082;
        v54 = v29;
        v55 = 1026;
        v56 = v40;
        _os_log_impl(dword_100000000, v30, OS_LOG_TYPE_DEBUG, "WlpMetric, request, %{public}s, %{public}s, done, %{public}s, fix, %{public}s, tt, %{public}s, %{public}s, durint, %{public}s, %{public}s, als, %{public}d", buf, 0x58u);
      }

      if (sub_10000A100(121, 2))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1025D4630 != -1)
        {
          sub_10190A4E8();
        }

        sub_100185818(a3);
        v42 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "void CLWifiLocationUpdateRequest::updateStep(Step, CFAbsoluteTime, DoneReason)", "%s\n", v42);
        if (v42 != buf)
        {
          free(v42);
        }
      }

      if (*(a1 + 110) == 1)
      {
        AnalyticsSendEventLazy();
      }
    }

    else if (a2 == 1)
    {
      *(a1 + 64) = a4;
      __asm { FMOV            V0.2D, #-1.0 }

      *(a1 + 80) = _Q0;
      *(a1 + 104) = 0;
      *(a1 + 60) = -1;
      *(a1 + 96) = 0xBFF0000000000000;
      *(a1 + 108) = 1;
      *(a1 + 112) = *a1;
      if (*(a1 + 39) < 0)
      {
        sub_100007244(buf, *(a1 + 16), *(a1 + 24));
      }

      else
      {
        *buf = *(a1 + 16);
        *&buf[16] = *(a1 + 32);
      }

      if (*(a1 + 143) < 0)
      {
        operator delete(*(a1 + 120));
      }

      *(a1 + 120) = *buf;
      *(a1 + 136) = *&buf[16];
    }
  }
}

const char *sub_100189408(int a1)
{
  v1 = "2.4GHz";
  if (a1 == 1)
  {
    v1 = "stage1+5GHz";
  }

  if (a1 == 2)
  {
    return "stage2+5GHz";
  }

  else
  {
    return v1;
  }
}

uint64_t sub_100189434(unsigned int *a1)
{
  v1 = *a1;
  if (v1 > 2)
  {
    return 0;
  }

  else
  {
    return qword_101CD3B30[v1] | qword_101CD3B48[v1] | 0xC0000000000;
  }
}

void sub_100189480(void **a1, double a2)
{
  sub_100187E50(*a1, &v4, a2, 30.0);
  if (qword_1025D4630 != -1)
  {
    sub_101A66C70();
  }

  v2 = qword_1025D4638;
  if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134349312;
    *&buf[4] = 0x2E8BA2E8BA2E8BA3 * ((v5 - v4) >> 3);
    v11 = 2050;
    v12 = 30;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEBUG, "remove old APs from scan history, count, %{public}ld, max_secs, %{public}lld", buf, 0x16u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101A66C2C(buf);
    v6 = 134349312;
    v7 = 0x2E8BA2E8BA2E8BA3 * ((v5 - v4) >> 3);
    v8 = 2050;
    v9 = 30;
    v3 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "static void CL::Wifi1::Policies::PrePositionCalculationStateUpdate::HandleEvent::removeOldApsFromWifiScanHistory(cl::chrono::CFAbsoluteTimeClock::time_point, std::shared_ptr<Types::WifiScanHistory>)", "%s\n", v3);
    if (v3 != buf)
    {
      free(v3);
    }
  }

  *buf = &v4;
  sub_1000B96B4(buf);
}

void sub_100189668(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void **a19)
{
  a19 = &a12;
  sub_1000B96B4(&a19);
  _Unwind_Resume(a1);
}

void sub_100189690(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 143) < 0)
  {
    operator delete(*(a2 + 120));
  }

  if (*(a2 + 39) < 0)
  {
    v3 = *(a2 + 16);

    operator delete(v3);
  }
}

void sub_1001899D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va2, a3);
  va_start(va1, a3);
  va_start(va, a3);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  va_copy(va2, va1);
  v12 = va_arg(va2, void);
  v14 = va_arg(va2, void);
  v15 = va_arg(va2, void);
  v16 = va_arg(va2, void);
  v17 = va_arg(va2, void);
  sub_1004906DC(va);
  sub_1001056A0(va1);
  sub_100103B14(va2);
  sub_1007BE994(v3);
  _Unwind_Resume(a1);
}

double sub_100189A2C(uint64_t a1)
{
  v2 = 1.0;
  if (!sub_1001883B8((a1 + 6096)))
  {
    v3 = *(a1 + 3296);
    v7 = *(a1 + 6440);
    if ((*(*v3 + 16))(v3, &v7))
    {
      if (qword_1025D4630 != -1)
      {
        sub_101AAE0EC();
      }

      v4 = qword_1025D4638;
      v2 = 30.0;
      if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_DEBUG))
      {
        v7 = 68289282;
        v8 = 2082;
        v9 = "";
        v10 = 2050;
        v11 = 0x403E000000000000;
        v5 = "{msg%{public}.0s:elevation is steady, max_ap_age_s:%{public}.09f}";
LABEL_11:
        _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, v5, &v7, 0x1Cu);
      }
    }

    else
    {
      if (qword_1025D4630 != -1)
      {
        sub_101AAE0EC();
      }

      v4 = qword_1025D4638;
      v2 = 5.0;
      if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_DEBUG))
      {
        v7 = 68289282;
        v8 = 2082;
        v9 = "";
        v10 = 2050;
        v11 = 0x4014000000000000;
        v5 = "{msg%{public}.0s:elevation is not steady, max_ap_age_s:%{public}.09f}";
        goto LABEL_11;
      }
    }
  }

  return v2;
}

void sub_100189BD4(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 1065353216;
  for (i = *(a1 + 16); i; i = *i)
  {
    v8 = vabdd_f64(a3, i[9]);
    if (v8 <= a4)
    {
      sub_10018583C(a2, i + 2);
    }

    else
    {
      if (qword_1025D4630 != -1)
      {
        sub_101AAE0EC();
      }

      v9 = qword_1025D4638;
      if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_DEBUG))
      {
        sub_1000ECD9C(&__p);
        p_p = &__p;
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          p_p = __p.__r_.__value_.__r.__words[0];
        }

        *buf = 68289539;
        v13 = 0;
        v14 = 2082;
        v15 = "";
        v16 = 2081;
        v17 = p_p;
        v18 = 2050;
        v19 = v8;
        _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:filtering out access point from calculation based on scan timestamp, mac:%{private, location:escape_only}s, age_seconds_s:%{public}.09f}", buf, 0x26u);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }
    }
  }
}

void sub_100189E1C(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_10014E5FC(v3, v2);
  _Unwind_Resume(a1);
}

void *sub_100189E48(void *a1, void *a2)
{
  v4 = sub_10018D3FC(a2);
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
    sub_10018A0B0();
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

  if (!sub_100195A00(v11 + 2, a2))
  {
    goto LABEL_17;
  }

  return v11;
}

void sub_10018A08C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, uint64_t a11)
{
  if (__p)
  {
    sub_1002E4F74(&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10018A13C(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_1002E4F74(v3, v2);
  _Unwind_Resume(a1);
}

uint64_t sub_10018A158(uint64_t a1, void *a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 8) = *a3;
  if (*(a3 + 31) < 0)
  {
    sub_100007244((a1 + 16), *(a3 + 8), *(a3 + 16));
  }

  else
  {
    v5 = *(a3 + 8);
    *(a1 + 32) = *(a3 + 24);
    *(a1 + 16) = v5;
  }

  v6 = *(a3 + 32);
  v7 = *(a3 + 48);
  v8 = *(a3 + 64);
  *(a1 + 88) = *(a3 + 80);
  *(a1 + 72) = v8;
  *(a1 + 56) = v7;
  *(a1 + 40) = v6;
  return a1;
}

void sub_10018A1D4(uint64_t a1, uint64_t *a2)
{
  sub_10018A278(a1);
  v4 = *a2;
  *a2 = 0;
  v5 = *a1;
  *a1 = v4;
  if (v5)
  {
    operator delete(v5);
  }

  v8 = a2[2];
  v7 = a2 + 2;
  v6 = v8;
  v9 = *(v7 - 1);
  *(a1 + 16) = v8;
  *(a1 + 8) = v9;
  *(v7 - 1) = 0;
  v10 = v7[1];
  *(a1 + 24) = v10;
  *(a1 + 32) = *(v7 + 4);
  if (v10)
  {
    v11 = *(v6 + 8);
    v12 = *(a1 + 8);
    if ((v12 & (v12 - 1)) != 0)
    {
      if (v11 >= v12)
      {
        v11 %= v12;
      }
    }

    else
    {
      v11 &= v12 - 1;
    }

    *(*a1 + 8 * v11) = a1 + 16;
    *v7 = 0;
    v7[1] = 0;
  }
}

void sub_10018A278(uint64_t a1)
{
  if (*(a1 + 24))
  {
    sub_1001056DC(a1, *(a1 + 16));
    *(a1 + 16) = 0;
    v2 = *(a1 + 8);
    if (v2)
    {
      for (i = 0; i != v2; ++i)
      {
        *(*a1 + 8 * i) = 0;
      }
    }

    *(a1 + 24) = 0;
  }
}

void sub_10018A344(_Unwind_Exception *a1)
{
  *v1 = 0;
  operator delete(v2);
  _Unwind_Resume(a1);
}

void *sub_10018A35C(void *a1, void *a2)
{
  v4 = sub_10018D3FC((a2 + 2));
  a2[1] = v4;
  v5 = sub_10018A4A0(a1, v4, a2 + 2);
  sub_1007BE1F4(a1, a2, v5);
  return a2;
}

void sub_10018A3B0(uint64_t a1, size_t __n)
{
  if (__n == 1)
  {
    prime = 2;
  }

  else
  {
    prime = __n;
    if ((__n & (__n - 1)) != 0)
    {
      prime = std::__next_prime(__n);
    }
  }

  v4 = *(a1 + 8);
  if (prime > *&v4)
  {
    goto LABEL_6;
  }

  if (prime < *&v4)
  {
    v5 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
    if (*&v4 < 3uLL || (v6 = vcnt_s8(v4), v6.i16[0] = vaddlv_u8(v6), v6.u32[0] > 1uLL))
    {
      v5 = std::__next_prime(v5);
    }

    else
    {
      v7 = 1 << -__clz(v5 - 1);
      if (v5 >= 2)
      {
        v5 = v7;
      }
    }

    if (prime <= v5)
    {
      prime = v5;
    }

    if (prime < *&v4)
    {
LABEL_6:

      sub_1001887E4(a1, prime);
    }
  }
}

void *sub_10018A4A0(uint64_t a1, unint64_t a2, void *a3)
{
  v6 = *(a1 + 8);
  v7 = (*(a1 + 24) + 1);
  v8 = *(a1 + 32);
  if (!v6 || (v8 * v6) < v7)
  {
    v9 = 1;
    if (v6 >= 3)
    {
      v9 = (v6 & (v6 - 1)) != 0;
    }

    v10 = v9 | (2 * v6);
    v11 = vcvtps_u32_f32(v7 / v8);
    if (v10 <= v11)
    {
      v12 = v11;
    }

    else
    {
      v12 = v10;
    }

    sub_10018A3B0(a1, v12);
    v6 = *(a1 + 8);
  }

  v13 = vcnt_s8(v6);
  v13.i16[0] = vaddlv_u8(v13);
  v14 = v13.u32[0];
  if (v13.u32[0] > 1uLL)
  {
    v15 = a2;
    if (v6 <= a2)
    {
      v15 = a2 % v6;
    }
  }

  else
  {
    v15 = (v6 - 1) & a2;
  }

  v16 = *(*a1 + 8 * v15);
  if (v16)
  {
    v17 = *v16;
    if (*v16)
    {
      v18 = 0;
      do
      {
        v19 = v17[1];
        if (v14 > 1)
        {
          v20 = v17[1];
          if (v19 >= v6)
          {
            v20 = v19 % v6;
          }
        }

        else
        {
          v20 = v19 & (v6 - 1);
        }

        if (v20 != v15)
        {
          break;
        }

        v21 = v19 == a2 && sub_100195A00(v17 + 2, a3);
        if ((v18 & (v21 != (v18 & 1))) != 0)
        {
          break;
        }

        v18 |= v21 != (v18 & 1);
        v16 = *v16;
        v17 = *v16;
      }

      while (*v16);
    }
  }

  return v16;
}

void sub_10018A690(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_1002E4F74(v3, v2);
  _Unwind_Resume(a1);
}

void sub_10018A914(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, char a56)
{
  sub_1007BE994(&a56);
  sub_1004906DC(&a37);
  sub_1007BE994(&STACK[0x1AF8]);
  _Unwind_Resume(a1);
}

unint64_t sub_10018A95C(uint64_t a1)
{
  if (sub_100103C94(a1) && (sub_10018A9B8(a1) & 1) == 0)
  {
    v4 = sub_10018D3FC(a1);
    v3 = v4 & 0xFFFFFFFFFFFFFF00;
    v2 = v4;
  }

  else
  {
    v2 = 0;
    v3 = 0;
  }

  return v3 | v2;
}

void sub_10018B858(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *__p, uint64_t a35, int a36, __int16 a37, char a38, char a39, char a40, void *a41, uint64_t a42, void *a43, uint64_t a44)
{
  if (a39 < 0)
  {
    operator delete(__p);
  }

  sub_1003C93BC(&a40, a41);
  if (a43)
  {
    a44 = a43;
    operator delete(a43);
  }

  sub_1007BE994(v44);
  _Unwind_Resume(a1);
}

uint64_t sub_10018B8F4(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_100187DB8(result, a4);
  }

  return result;
}

void sub_10018B950(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_10018B994(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, double **a4@<X8>, double a5@<D0>)
{
  v10 = a1[7];
  v71 = a1 + 7;
  (*(v10 + 16))();
  a4[1] = 0;
  v11 = (a4 + 1);
  v73 = 256;
  a4[2] = 0;
  *a4 = (a4 + 1);
  if (*a2 == a2[1])
  {
    goto LABEL_56;
  }

  v55 = a1;
  (*(*a1 + 32))(buf, a1, a2);
  sub_1003C93BC(a4, a4[1]);
  v12 = *&buf[8];
  *a4 = *buf;
  a4[1] = v12;
  v13 = *&buf[16];
  a4[2] = *&buf[16];
  if (v13)
  {
    *(v12 + 2) = v11;
    *buf = &buf[8];
    *&buf[8] = 0;
    *&buf[16] = 0;
    v12 = 0;
  }

  else
  {
    *a4 = v11;
  }

  sub_1003C93BC(buf, v12);
  v53 = *(a4 + 4);
  v14 = *(a3 + 112);
  v68 = *(a3 + 96);
  v69 = v14;
  *v70 = *(a3 + 128);
  *&v70[12] = *(a3 + 140);
  v15 = *(a3 + 48);
  *&v67[32] = *(a3 + 32);
  *&v67[48] = v15;
  v16 = *(a3 + 80);
  *&v67[64] = *(a3 + 64);
  *&v67[80] = v16;
  v17 = *(a3 + 20) <= 0.0;
  v18 = *(a3 + 16);
  *v67 = *a3;
  *&v67[16] = v18;
  if (v17 || a5 - *(a3 + 76) >= (3600.0 >> 1))
  {
    v19 = *a4;
    if (*a4 != v11)
    {
      while (1)
      {
        if (!sub_1001E4BB4((v19 + 5)))
        {
          v20 = v19[9];
          if (v20 > 0.0 && a5 - a5 < (3600.0 >> 1))
          {
            break;
          }
        }

        v22 = *(v19 + 1);
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
            v23 = *(v19 + 2);
            _ZF = *v23 == v19;
            v19 = v23;
          }

          while (!_ZF);
        }

        v19 = v23;
        if (v23 == v11)
        {
          goto LABEL_25;
        }
      }

      v25 = *(v19 + 3);
      v68 = 0uLL;
      memset(v70, 0, 25);
      *&v67[4] = v25;
      *&v67[20] = v20;
      *&v67[28] = xmmword_101C76220;
      __asm { FMOV            V0.2D, #-1.0 }

      *&v67[44] = _Q0;
      *&v67[60] = _Q0;
      *&v67[76] = a5;
      *v67 = 0xFFFF;
      *&v67[84] = 0;
      *&v67[88] = 0xBFF0000000000000;
      *(&v69 + 4) = 0xBFF0000000000000;
      LODWORD(v69) = 0;
      HIDWORD(v69) = 0x7FFFFFFF;
      *&v70[25] = v78;
      v70[27] = BYTE2(v78);
      if (qword_1025D4620 != -1)
      {
        sub_101B825A8();
      }

      v29 = qword_1025D4628;
      if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v29, OS_LOG_TYPE_INFO, "@TileSearch, wifi, use ALS results for location hint", buf, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101B825D0(buf);
        v57[0] = 0;
        v46 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "virtual std::map<CLMacAddress, CLWifiAPLocation> CLWifiAccessPointLocationService::findLocationsOfMacAddresses(const std::vector<CLMacAddress> &, const CLDaemonLocation &, cl::chrono::CFAbsoluteTimeClock::time_point) const", "%s\n", v46);
        if (v46 != buf)
        {
          free(v46);
        }
      }
    }
  }

LABEL_25:
  sub_100197FEC(a1 + 13, a2, (a1 + 1), &v65, a5);
  v31 = *a2;
  v30 = a2[1];
  if (0xAAAAAAAAAAAAAAABLL * ((v66 - v65) >> 3) != (v30 - *a2) >> 3)
  {
    if (qword_1025D4600 != -1)
    {
      goto LABEL_79;
    }

    while (1)
    {
      v47 = qword_1025D4608;
      if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_ERROR))
      {
        v48 = (a2[1] - *a2) >> 3;
        *buf = 134349312;
        *&buf[4] = v48;
        *&buf[12] = 2050;
        *&buf[14] = 0xAAAAAAAAAAAAAAABLL * ((v66 - v65) >> 3);
        _os_log_impl(dword_100000000, v47, OS_LOG_TYPE_ERROR, "expecting equal length, input, %{public}lu, output, %{public}lu", buf, 0x16u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_101B82780(buf);
        v51 = (a2[1] - *a2) >> 3;
        v78 = 134349312;
        *v79 = v51;
        *&v79[8] = 2050;
        v80 = 0xAAAAAAAAAAAAAAABLL * ((v66 - v65) >> 3);
        v52 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 0, "virtual std::map<CLMacAddress, CLWifiAPLocation> CLWifiAccessPointLocationService::findLocationsOfMacAddresses(const std::vector<CLMacAddress> &, const CLDaemonLocation &, cl::chrono::CFAbsoluteTimeClock::time_point) const", "%s\n", v52);
        if (v52 != buf)
        {
          free(v52);
        }
      }

      if (qword_1025D4600 != -1)
      {
        sub_101B82758();
      }

      v49 = qword_1025D4608;
      if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_FAULT))
      {
        *buf = 68289539;
        *&buf[4] = 0;
        *&buf[8] = 2082;
        *&buf[10] = "";
        *&buf[18] = 2082;
        *&buf[20] = "assert";
        v83 = 2081;
        v84 = "0";
        _os_log_impl(dword_100000000, v49, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:input-output lengths are not equal, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
        if (qword_1025D4600 != -1)
        {
          sub_101B82758();
        }
      }

      v50 = qword_1025D4608;
      if (os_signpost_enabled(qword_1025D4608))
      {
        *buf = 68289539;
        *&buf[4] = 0;
        *&buf[8] = 2082;
        *&buf[10] = "";
        *&buf[18] = 2082;
        *&buf[20] = "assert";
        v83 = 2081;
        v84 = "0";
        _os_signpost_emit_with_name_impl(dword_100000000, v50, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "input-output lengths are not equal", "{msg%{public}.0s:input-output lengths are not equal, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
        if (qword_1025D4600 != -1)
        {
          sub_101B82758();
        }
      }

      a2 = qword_1025D4608;
      if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_INFO))
      {
        *buf = 68289539;
        *&buf[4] = 0;
        *&buf[8] = 2082;
        *&buf[10] = "";
        *&buf[18] = 2082;
        *&buf[20] = "assert";
        v83 = 2081;
        v84 = "0";
        _os_log_impl(dword_100000000, a2, OS_LOG_TYPE_INFO, "{msg%{public}.0s:input-output lengths are not equal, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      }

      abort_report_np();
      __break(1u);
LABEL_79:
      sub_101B82758();
    }
  }

  v64[0] = 0;
  v64[1] = 0;
  v62[1] = 0;
  v63 = v64;
  v61 = v62;
  v62[0] = 0;
  if (v30 != v31)
  {
    v32 = 0;
    v33 = 0;
    v34 = 0;
    v54 = 0;
    while (1)
    {
      v35 = v65 + v33;
      if (*(v65 + v33 + 20))
      {
        v36 = *(v35 + 6);
        v37 = *(v35 + 12);
        if (v11 == sub_100198C70(a4, (v31 + v32)))
        {
          break;
        }
      }

LABEL_36:
      ++v34;
      v31 = *a2;
      v32 += 8;
      v33 += 24;
      if (v34 >= (a2[1] - *a2) >> 3)
      {
        goto LABEL_46;
      }
    }

    v60 = v37;
    sub_100B4EA5C(v57, 0, v37, SHIDWORD(v37));
    sub_100236990(&v61, v57);
    if (v64 == sub_101267218(&v63, &v60))
    {
      sub_101077FB0(*(v55 + 96), &v78);
      if ((v81 & 1) == 0)
      {
        if (qword_1025D4620 != -1)
        {
          sub_101B825A8();
        }

        v39 = qword_1025D4628;
        if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_FAULT))
        {
          *buf = 67174913;
          *&buf[4] = v60;
          *&buf[8] = 1025;
          *&buf[10] = HIDWORD(v60);
          _os_log_impl(dword_100000000, v39, OS_LOG_TYPE_FAULT, "tile header missing from returned mac, x, %{private}d, y, %{private}d", buf, 0xEu);
        }

        if (sub_10000A100(121, 0))
        {
          sub_101B825D0(buf);
          v74 = 67174913;
          v75 = v60;
          v76 = 1025;
          v77 = HIDWORD(v60);
          v40 = _os_log_send_and_compose_impl();
          sub_100152C7C("Generic", 1, 0, 0, "virtual std::map<CLMacAddress, CLWifiAPLocation> CLWifiAccessPointLocationService::findLocationsOfMacAddresses(const std::vector<CLMacAddress> &, const CLDaemonLocation &, cl::chrono::CFAbsoluteTimeClock::time_point) const", "%s\n", v40);
          if (v40 != buf)
          {
            free(v40);
          }
        }

        goto LABEL_34;
      }

      sub_10126728C(&v63, &v60);
      ++v54;
    }

    v38 = sub_101260624(&v63, &v60);
    sub_100EAD364(&v78, *(v31 + v32), (v36 >> 12) & 0xFFF, v36 & 0xFFF, HIBYTE(v36) & 0xF, v36 >> 28);
    sub_101260664(v38, &v78, buf);
    sub_100197BD4(a4, (v31 + v32));
LABEL_34:
    if (v59 < 0)
    {
      operator delete(__p);
    }

    goto LABEL_36;
  }

  v54 = 0;
LABEL_46:
  sub_100198F4C(v55, &v61, *&qword_1026321A0, v56, a5);
  *buf = v56;
  sub_100199B08(buf);
  if (qword_1025D4620 != -1)
  {
    sub_101B825A8();
  }

  v41 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_INFO))
  {
    v42 = (a2[1] - *a2) >> 3;
    *buf = 67240704;
    *&buf[4] = v42;
    *&buf[8] = 1026;
    *&buf[10] = v54;
    *&buf[14] = 1026;
    *&buf[16] = v53;
    _os_log_impl(dword_100000000, v41, OS_LOG_TYPE_INFO, "@TileSearch, wifi, results, searched, %{public}d, in_tiles, %{public}d, ALS, %{public}d", buf, 0x14u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101B825D0(buf);
    v44 = (a2[1] - *a2) >> 3;
    v78 = 67240704;
    *v79 = v44;
    *&v79[4] = 1026;
    *&v79[6] = v54;
    LOWORD(v80) = 1026;
    *(&v80 + 2) = v53;
    v45 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "virtual std::map<CLMacAddress, CLWifiAPLocation> CLWifiAccessPointLocationService::findLocationsOfMacAddresses(const std::vector<CLMacAddress> &, const CLDaemonLocation &, cl::chrono::CFAbsoluteTimeClock::time_point) const", "%s\n", v45);
    if (v45 != buf)
    {
      free(v45);
    }
  }

  sub_100199BC0(*(v55 + 80), (a2[1] - *a2) >> 3, v53, v54);
  v43 = *(v55 + 312);
  if (v43)
  {
    sub_100197CEC(v43, a4);
  }

  sub_100199B5C(&v61, v62[0]);
  sub_1003C93BC(&v63, v64[0]);
  if (v65)
  {
    v66 = v65;
    operator delete(v65);
  }

  if ((v73 & 0x100) != 0)
  {
LABEL_56:
    if (v73)
    {
      pthread_mutex_unlock(v72);
    }

    else
    {
      (*(*v71 + 24))(v71);
    }
  }
}

void sub_10018C5E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, char a34, uint64_t a35, uint64_t a36, void *__p, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, char a61)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_1003C93BC(v61, *(v61 + 8));
  sub_1017EC98C(&a61);
  _Unwind_Resume(a1);
}

void sub_10018C6A8(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v7 = a1 + 7;
  v6 = a1[7];
  v19 = a1 + 7;
  (*(v6 + 16))(a1 + 7);
  v21 = 256;
  if (sub_1000735C0(v7[34]))
  {
    v8 = sub_101261010(a1);
    v9 = a1[41];
    sub_10000EC00(__p, "WifiAlsDatabase");
    sub_100BBF9F8(v9, __p, v8);
    if (v16 < 0)
    {
      operator delete(__p[0]);
    }
  }

  sub_10018D100(a1[11], a2, &v17);
  a3[2] = 0;
  a3[1] = 0;
  *a3 = a3 + 1;
  v10 = v17;
  if (v17 != v18)
  {
    do
    {
      sub_100197C98((v10 + 5), __p);
      sub_100197BD4(a3, v10 + 4);
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

    while (v12 != v18);
  }

  v14 = a1[39];
  if (v14)
  {
    sub_100197CEC(v14, a3);
  }

  sub_1003C93BC(&v17, v18[0]);
  if (HIBYTE(v21) == 1)
  {
    if (v21)
    {
      pthread_mutex_unlock(v20);
    }

    else
    {
      (*(*v19 + 24))(v19);
    }
  }
}

void sub_10018C860(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_1017EC98C(v25 - 72);
  _Unwind_Resume(a1);
}

void sub_10018C8C0(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  if (sub_10018E854(a1))
  {
    v4 = (a1 + 296);
    if (*(a1 + 319) < 0)
    {
      if (!*(a1 + 304))
      {
LABEL_14:
        if (qword_1025D4850 != -1)
        {
          sub_10190A820();
        }

        v6 = off_1025D4858;
        if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_FAULT))
        {
          *buf = 0;
          _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_FAULT, "#Warning fFindByMacAddressQuery is not initialized in CLWifiLocationDatabase!", buf, 2u);
        }

        if (sub_10000A100(121, 0))
        {
          sub_10190B02C();
        }

        goto LABEL_20;
      }

      v4 = *v4;
    }

    else if (!*(a1 + 319))
    {
      goto LABEL_14;
    }

    sub_1000388D8(a1 + 64, v4);
  }

  if (qword_1025D4850 != -1)
  {
    sub_10190A820();
  }

  v5 = off_1025D4858;
  if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEBUG, "#Warning Attempt to call findByMacAddress() without a backing database in CLWifiLocationDatabase!", buf, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10190AF48();
  }

LABEL_20:
  *a2 = 0;
  a2[200] = 0;
}

void sub_10018D070(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a26)
  {
    (*(*a26 + 8))(a26);
  }

  _Unwind_Resume(exception_object);
}

void sub_10018D100(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  a3[2] = 0;
  a3[1] = 0;
  *a3 = a3 + 1;
  v4 = *a2;
  v5 = *(a2 + 8);
  if (*a2 != v5)
  {
    do
    {
      sub_10018D200(*(a1 + 56), v10);
      if (v11[24] & 1) != 0 || (v7 = *(a1 + 48)) != 0 && (sub_10018C8C0(v7, v8), v10[10] = v8[10], *v11 = v9[0], *&v11[9] = *(v9 + 9), v10[6] = v8[6], v10[7] = v8[7], v10[8] = v8[8], v10[9] = v8[9], v10[2] = v8[2], v10[3] = v8[3], v10[4] = v8[4], v10[5] = v8[5], v10[0] = v8[0], v10[1] = v8[1], (BYTE8(v9[1])))
      {
        sub_100197AE4(a3, v4);
      }

      ++v4;
    }

    while (v4 != v5);
  }
}

unint64_t sub_10018D208(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  if (qword_10265EA10 != -1)
  {
    sub_10024767C();
  }

  os_unfair_lock_lock(&unk_10265E9E8);
  v7 = qword_10265E9F0;
  os_unfair_lock_unlock(&unk_10265E9E8);
  if (![v7 count])
  {
    sub_101A81F20();
  }

  v8 = [v7 objectForKeyedSubscript:a2];
  if (v8)
  {
    result = [v8 BOOLValue];
    if (result)
    {
      return result;
    }

    goto LABEL_6;
  }

  result = sub_10018D2D0(a2);
  if ((result & 1) == 0)
  {
LABEL_6:
    *a4 = 1;
    *(*(*(a1 + 32) + 8) + 24) = 0;
  }

  return result;
}

unint64_t sub_10018D2D0(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  if (qword_10265EA08 != -1)
  {
    sub_101A81F0C();
  }

  os_unfair_lock_lock(&unk_10265EA00);
  v2 = [qword_10265E9F8 objectForKey:a1];
  if (v2)
  {
    v3 = [v2 BOOLValue];
  }

  else
  {
    v4 = MGCopyAnswer();
    v5 = v4;
    if (v4)
    {
      v6 = CFGetTypeID(v4);
      v3 = v6 == CFBooleanGetTypeID() && CFBooleanGetValue(v5) != 0;
      CFRelease(v5);
      [qword_10265E9F8 setObject:+[NSNumber numberWithBool:](NSNumber forKey:{"numberWithBool:", v3), a1}];
    }

    else
    {
      v3 = 0;
    }
  }

  os_unfair_lock_unlock(&unk_10265EA00);
  return v3;
}

double sub_10018D404(uint64_t a1)
{
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  result = 6335439.33;
  *a1 = xmmword_101D16770;
  *(a1 + 32) = 0x3FF0000000000000;
  return result;
}

void sub_10018D420(uint64_t a1, int *a2, double *a3, uint64_t a4)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a4 + 32) "silo")];
  if (qword_1025D47F0 != -1)
  {
    dispatch_once(&qword_1025D47F0, &stru_1025044A8);
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v89 = 1;
    v7 = _os_activity_create(dword_100000000, "CL: CLGeomagneticModelProviderDaemon::onLocationNotification", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v7, &state);

    if (qword_1025D47F0 != -1)
    {
      dispatch_once(&qword_1025D47F0, &stru_1025044A8);
    }

    v8 = qword_1025D47F8;
    if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68289538;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      *&buf[18] = 2082;
      *&buf[20] = "activity";
      *&buf[28] = 2050;
      *&buf[30] = a4;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLGeomagneticModelProviderDaemon::onLocationNotification, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v89 = 0;
  }

  v9 = *a2;
  if (*a2 > 3)
  {
    if (v9 == 13)
    {
      v20 = sub_100B55A18(a4 + 176);
      if (qword_1025D42E0 != -1)
      {
        dispatch_once(&qword_1025D42E0, &stru_1025044C8);
      }

      v21 = qword_1025D42E8;
      if (os_log_type_enabled(qword_1025D42E8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67240192;
        *&buf[4] = v20;
        _os_log_impl(dword_100000000, v21, OS_LOG_TYPE_DEFAULT, "new location authorization status for geomagnetic model: %{public}d", buf, 8u);
      }

      if (sub_10000A100(121, 2))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1025D42E0 != -1)
        {
          dispatch_once(&qword_1025D42E0, &stru_1025044C8);
        }

        *v90 = 67240192;
        *&v90[4] = v20;
        v65 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "void CLGeomagneticModelProviderDaemon::onLocationNotification(int, const CLLocationProvider_Type::Notification &, const CLLocationProvider_Type::NotificationData &)", "%s\n", v65);
        if (v65 != buf)
        {
          free(v65);
        }
      }

      if ((v20 - 3) < 2)
      {
        sub_1002770FC(a4);
        sub_1002776FC(a4);
      }

      else if ((v20 - 1) <= 1)
      {
        sub_101853434(a4);
      }

      goto LABEL_34;
    }

    if (v9 != 4)
    {
      goto LABEL_34;
    }
  }

  else if (v9 && v9 != 2)
  {
    goto LABEL_34;
  }

  Current = CFAbsoluteTimeGetCurrent();
  if (*(a3 + 20) >= 0.0 && ((v11 = a3[11], v11 < 0.0) || Current <= v11 + *(a3 + 76) + *(a4 + 416)) && sub_10003845C() == 1)
  {
    sub_10018E568(a4);
    v12 = *(a4 + 168);
    if (v12 < 0.0 || *(a3 + 76) - v12 >= *(a4 + 416) * 0.5)
    {
      v22 = sub_101802D50();
      v23 = *(a3 + 4);
      v24 = *(a3 + 12);
      v25 = *(a3 + 28);
      if (sub_1005C0960(v90, v23, v24, v25, v22))
      {
        if (qword_1025D42E0 != -1)
        {
          dispatch_once(&qword_1025D42E0, &stru_1025044C8);
        }

        v26 = qword_1025D42E8;
        if (os_log_type_enabled(qword_1025D42E8, OS_LOG_TYPE_FAULT))
        {
          v27 = *(a3 + 76);
          *buf = 134349312;
          *&buf[4] = v27;
          *&buf[12] = 2050;
          *&buf[14] = v22;
          _os_log_impl(dword_100000000, v26, OS_LOG_TYPE_FAULT, "declination calculation failed @ %{public}lf (%{public}f)", buf, 0x16u);
        }

        if (sub_10000A100(121, 0))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1025D42E0 != -1)
          {
            dispatch_once(&qword_1025D42E0, &stru_1025044C8);
          }

          v66 = *(a3 + 76);
          v108 = 134349312;
          v109 = v66;
          v110 = 2050;
          v111 = v22;
          v67 = _os_log_send_and_compose_impl();
          sub_100152C7C("Generic", 1, 0, 0, "BOOL CLGeomagneticModelProviderDaemon::getGeomagneticField(const CLDaemonLocation &)", "%s\n", v67);
          if (v67 != buf)
          {
            free(v67);
          }
        }

        if (qword_1025D42E0 != -1)
        {
          dispatch_once(&qword_1025D42E0, &stru_1025044C8);
        }

        v28 = qword_1025D42E8;
        if (os_log_type_enabled(qword_1025D42E8, OS_LOG_TYPE_DEFAULT))
        {
          v29 = *(a3 + 4);
          v30 = *(a3 + 12);
          v31 = *(a3 + 28);
          *buf = 134546177;
          *&buf[4] = v29;
          *&buf[12] = 2053;
          *&buf[14] = v30;
          *&buf[22] = 2048;
          *&buf[24] = v31;
          _os_log_impl(dword_100000000, v28, OS_LOG_TYPE_DEFAULT, "#Warning no geomagnetic information available for <%{sensitive}+.8f,%{sensitive}+.8f,%+.3f>", buf, 0x20u);
        }

        if (sub_10000A100(121, 2))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1025D42E0 != -1)
          {
            dispatch_once(&qword_1025D42E0, &stru_1025044C8);
          }

          v32 = *(a3 + 4);
          v33 = *(a3 + 12);
          v34 = *(a3 + 28);
          *v90 = 134546177;
          *&v90[4] = v32;
          *&v90[12] = 2053;
          *&v90[14] = v33;
          *&v90[22] = 2048;
          v91 = v34;
          v14 = _os_log_send_and_compose_impl();
          sub_100152C7C("Generic", 1, 0, 2, "void CLGeomagneticModelProviderDaemon::setLocation(const CLDaemonLocation &)", "%s\n", v14);
          goto LABEL_79;
        }
      }

      else
      {
        v35 = vcvtq_f64_f32(*&v90[8]);
        *(a4 + 112) = vcvtq_f64_f32(*v90);
        *(a4 + 128) = v35;
        *(a4 + 144) = vcvtq_f64_f32(*&v90[16]);
        *(a4 + 160) = *&v91;
        *(a4 + 168) = *(a3 + 76);
        if (qword_1025D42E0 != -1)
        {
          dispatch_once(&qword_1025D42E0, &stru_1025044C8);
        }

        v36 = qword_1025D42E8;
        if (os_log_type_enabled(qword_1025D42E8, OS_LOG_TYPE_DEBUG))
        {
          v37 = *(a3 + 4);
          v38 = *(a3 + 12);
          v39 = *(a3 + 28);
          v40 = *(a3 + 76);
          v41 = *(a4 + 152);
          v42 = *(a4 + 160);
          v43 = v40 + *(a4 + 416);
          *buf = 134547201;
          *&buf[4] = v37;
          *&buf[12] = 2053;
          *&buf[14] = v38;
          *&buf[22] = 2048;
          *&buf[24] = v39;
          *&buf[32] = 2048;
          *&buf[34] = v40;
          v113 = 2048;
          v114 = v41;
          v115 = 2048;
          v116 = v42;
          v117 = 2048;
          v118 = v43;
          _os_log_impl(dword_100000000, v36, OS_LOG_TYPE_DEBUG, "geomagnetic information calculated for <%{sensitive}+.8f,%{sensitive}+.8f,%+.3f> @ %.3f, declination %f inclination %f will expire @ %.3f", buf, 0x48u);
        }

        if (sub_10000A100(121, 2))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1025D42E0 != -1)
          {
            dispatch_once(&qword_1025D42E0, &stru_1025044C8);
          }

          v68 = *(a3 + 4);
          v69 = *(a3 + 12);
          v70 = *(a3 + 28);
          v71 = *(a3 + 76);
          v72 = *(a4 + 152);
          v73 = *(a4 + 160);
          v74 = v71 + *(a4 + 416);
          *v90 = 134547201;
          *&v90[4] = v68;
          *&v90[12] = 2053;
          *&v90[14] = v69;
          *&v90[22] = 2048;
          v91 = v70;
          v92 = 2048;
          v93 = v71;
          v94 = 2048;
          v95 = v72;
          v96 = 2048;
          v97 = v73;
          v98 = 2048;
          v99 = v74;
          v75 = _os_log_send_and_compose_impl();
          sub_100152C7C("Generic", 1, 0, 2, "void CLGeomagneticModelProviderDaemon::setLocation(const CLDaemonLocation &)", "%s\n", v75);
          if (v75 != buf)
          {
            free(v75);
          }
        }

        if (qword_1025D42E0 != -1)
        {
          dispatch_once(&qword_1025D42E0, &stru_1025044C8);
        }

        v44 = qword_1025D42E8;
        if (os_log_type_enabled(qword_1025D42E8, OS_LOG_TYPE_DEBUG))
        {
          v45 = *(a3 + 4);
          v46 = *(a3 + 12);
          v47 = *(a3 + 28);
          v48 = *(a4 + 112);
          v49 = *(a4 + 120);
          v50 = *(a4 + 128);
          v51 = *(a4 + 136);
          v52 = *(a4 + 144);
          v53 = *(a4 + 152);
          v54 = *(a4 + 160);
          *buf = 136317699;
          *&buf[4] = "Compass-Geomagnetic";
          *&buf[12] = 2053;
          *&buf[14] = v45;
          *&buf[22] = 2053;
          *&buf[24] = v46;
          *&buf[32] = 2048;
          *&buf[34] = v47;
          v113 = 2048;
          v114 = v48;
          v115 = 2048;
          v116 = v49;
          v117 = 2048;
          v118 = v50;
          v119 = 2048;
          v120 = v51;
          v121 = 2048;
          v122 = v52;
          v123 = 2048;
          v124 = v53;
          v125 = 2048;
          v126 = v54;
          _os_log_impl(dword_100000000, v44, OS_LOG_TYPE_DEBUG, "Type,%s,lat,%{sensitive}+.8f,long,%{sensitive}+.8f,alt,%+.3f,x,%.3f,y,%.3f,z,%.3f,m,%.3f,h,%.3f,dec,%+.3f,inc,%+.3f,", buf, 0x70u);
        }

        if (sub_10000A100(121, 2))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1025D42E0 != -1)
          {
            dispatch_once(&qword_1025D42E0, &stru_1025044C8);
          }

          v76 = *(a3 + 4);
          v77 = *(a3 + 12);
          v78 = *(a3 + 28);
          v79 = *(a4 + 112);
          v80 = *(a4 + 120);
          v81 = *(a4 + 128);
          v82 = *(a4 + 136);
          v83 = *(a4 + 144);
          v84 = *(a4 + 152);
          v85 = *(a4 + 160);
          *v90 = 136317699;
          *&v90[4] = "Compass-Geomagnetic";
          *&v90[12] = 2053;
          *&v90[14] = v76;
          *&v90[22] = 2053;
          v91 = v77;
          v92 = 2048;
          v93 = v78;
          v94 = 2048;
          v95 = v79;
          v96 = 2048;
          v97 = v80;
          v98 = 2048;
          v99 = v81;
          v100 = 2048;
          v101 = v82;
          v102 = 2048;
          v103 = v83;
          v104 = 2048;
          v105 = v84;
          v106 = 2048;
          v107 = v85;
          v86 = _os_log_send_and_compose_impl();
          sub_100152C7C("Generic", 1, 0, 2, "void CLGeomagneticModelProviderDaemon::setLocation(const CLDaemonLocation &)", "%s\n", v86);
          if (v86 != buf)
          {
            free(v86);
          }
        }

        sub_1018531EC(a4);
        v56 = *(a4 + 160);
        v55 = *(a4 + 168);
        v57 = *(a4 + 136);
        v58 = *(a4 + 152);
        if (qword_1025D42E0 != -1)
        {
          dispatch_once(&qword_1025D42E0, &stru_1025044C8);
        }

        v59 = qword_1025D42E8;
        if (os_log_type_enabled(qword_1025D42E8, OS_LOG_TYPE_DEBUG))
        {
          *buf = 134349056;
          *&buf[4] = v55;
          _os_log_impl(dword_100000000, v59, OS_LOG_TYPE_DEBUG, "caching geomagnetic information @ %{public}.3f", buf, 0xCu);
        }

        if (sub_10000A100(121, 2))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1025D42E0 != -1)
          {
            dispatch_once(&qword_1025D42E0, &stru_1025044C8);
          }

          *v90 = 134349056;
          *&v90[4] = v55;
          v87 = _os_log_send_and_compose_impl();
          sub_100152C7C("Generic", 1, 0, 2, "void CLGeomagneticModelProviderDaemon::storeGeomagneticDataToCache()", "%s\n", v87);
          if (v87 != buf)
          {
            free(v87);
          }
        }

        v60 = sub_1000206B4();
        *buf = [NSNumber numberWithDouble:v55];
        *&buf[8] = [NSNumber numberWithDouble:round(v57)];
        *&buf[16] = [NSNumber numberWithDouble:round(v58)];
        *&buf[24] = [NSNumber numberWithDouble:round(v56)];
        [NSArray arrayWithObjects:buf count:4];
        sub_1003046B4(v60);
      }
    }

    else
    {
      if (qword_1025D42E0 != -1)
      {
        dispatch_once(&qword_1025D42E0, &stru_1025044C8);
      }

      v13 = qword_1025D42E8;
      if (os_log_type_enabled(qword_1025D42E8, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_DEBUG, "current location is still fresh, geomagnetic data is not re-calculated", buf, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1025D42E0 != -1)
        {
          dispatch_once(&qword_1025D42E0, &stru_1025044C8);
        }

        *v90 = 0;
        v14 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "void CLGeomagneticModelProviderDaemon::setLocation(const CLDaemonLocation &)", "%s\n", v14);
LABEL_79:
        if (v14 != buf)
        {
          free(v14);
        }
      }
    }
  }

  else
  {
    if (qword_1025D42E0 != -1)
    {
      dispatch_once(&qword_1025D42E0, &stru_1025044C8);
    }

    v15 = qword_1025D42E8;
    if (os_log_type_enabled(qword_1025D42E8, OS_LOG_TYPE_DEFAULT))
    {
      v16 = *(a3 + 4);
      v17 = *(a3 + 12);
      v18 = *(a3 + 28);
      v19 = *(a3 + 76);
      *buf = 134546433;
      *&buf[4] = v16;
      *&buf[12] = 2048;
      *&buf[14] = v17;
      *&buf[22] = 2048;
      *&buf[24] = v18;
      *&buf[32] = 2048;
      *&buf[34] = v19;
      _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_DEFAULT, "#Warning geomagnetic provider received a stale location <%{sensitive}+.8f,{sensitive}%+.8f,%+.3f> @ %.3f", buf, 0x2Au);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D42E0 != -1)
      {
        dispatch_once(&qword_1025D42E0, &stru_1025044C8);
      }

      v61 = *(a3 + 4);
      v62 = *(a3 + 12);
      v63 = *(a3 + 28);
      v64 = *(a3 + 76);
      *v90 = 134546433;
      *&v90[4] = v61;
      *&v90[12] = 2048;
      *&v90[14] = v62;
      *&v90[22] = 2048;
      v91 = v63;
      v92 = 2048;
      v93 = v64;
      v14 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "void CLGeomagneticModelProviderDaemon::setLocation(const CLDaemonLocation &)", "%s\n", v14);
      goto LABEL_79;
    }
  }

LABEL_34:
  if (v89 == 1)
  {
    os_activity_scope_leave(&state);
  }
}