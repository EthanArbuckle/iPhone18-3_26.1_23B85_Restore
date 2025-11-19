void sub_1001138F8(uint64_t a1)
{
  sub_100113930(a1);

  operator delete();
}

uint64_t sub_100113930(uint64_t a1)
{
  *a1 = off_102463DA8;
  v2 = (a1 + 8);
  [*(a1 + 16) forget:*(a1 + 8)];

  [*v2 invalidate];
  *v2 = 0;
  *(a1 + 16) = 0;
  return a1;
}

void sub_1001139A0(_BYTE *a1, void *a2)
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
        sub_1018E43B0();
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
        sub_1018E4960(a1, a2);
      }
    }
  }
}

uint64_t sub_100113B44(char *a1, int a2, int *a3)
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
              sub_10011753C((v15 + 40), &v23);
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
                sub_1018E43C4();
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
                  sub_1018E43C4();
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

                sub_100152C7C("Generic", 1, 0, 0, "virtual BOOL CLNotifier<CLCompanionNotifier_Type::Notification, CLCompanionNotifier_Type::NotificationData, char, CLCompanionNotifier_Type::RegistrationInfo>::unregisterForNotification(int, const Notification_T &) [Notification_T = CLCompanionNotifier_Type::Notification, NotificationData_T = CLCompanionNotifier_Type::NotificationData, NotificationInfo_T = char, RegistrationInfo_T = CLCompanionNotifier_Type::RegistrationInfo]", "%s\n", v22);
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

void *sub_100113EE8(void *a1, void *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFFLL) + 8) ^ HIDWORD(*a2));
  v4 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v3 >> 47) ^ v3);
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (v4 >> 47));
  v6 = vcnt_s8(v2);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = v5;
    if (v5 >= *&v2)
    {
      v7 = v5 % *&v2;
    }
  }

  else
  {
    v7 = v5 & (*&v2 - 1);
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8)
  {
    return 0;
  }

  result = *v8;
  if (*v8)
  {
    do
    {
      v10 = result[1];
      if (v10 == v5)
      {
        if (result[2] == *a2)
        {
          return result;
        }
      }

      else
      {
        if (v6.u32[0] > 1uLL)
        {
          if (v10 >= *&v2)
          {
            v10 %= *&v2;
          }
        }

        else
        {
          v10 &= *&v2 - 1;
        }

        if (v10 != v7)
        {
          return 0;
        }
      }

      result = *result;
    }

    while (result);
  }

  return result;
}

uint64_t *sub_10011400C(uint64_t **a1, uint64_t a2)
{
  v3 = sub_10045E8A0(a1, a2);
  if (*(a2 + 63) < 0)
  {
    operator delete(*(a2 + 40));
  }

  operator delete(a2);
  return v3;
}

uint64_t sub_100114050(char *a1, int a2, int *a3)
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
              sub_1001134E4((v15 + 40), &v23);
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
                sub_10196199C();
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
                  sub_10196199C();
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

                sub_100152C7C("Generic", 1, 0, 0, "virtual BOOL CLNotifier<CLFenceManager_Type::Notification, CLFenceManager_Type::NotificationData, char, std::string>::unregisterForNotification(int, const Notification_T &) [Notification_T = CLFenceManager_Type::Notification, NotificationData_T = CLFenceManager_Type::NotificationData, NotificationInfo_T = char, RegistrationInfo_T = std::string]", "%s\n", v22);
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

uint64_t sub_1001143F4(uint64_t a1)
{
  *a1 = off_10247C8E8;
  v2 = (a1 + 8);
  [*(a1 + 16) forget:*(a1 + 8)];

  [*v2 invalidate];
  *v2 = 0;
  *(a1 + 16) = 0;
  return a1;
}

void sub_100114464(uint64_t a1)
{
  sub_10011449C(a1);

  operator delete();
}

uint64_t sub_10011449C(uint64_t a1)
{
  *a1 = off_1024D35F0;
  v2 = (a1 + 8);
  [*(a1 + 16) forget:*(a1 + 8)];

  [*v2 invalidate];
  *v2 = 0;
  *(a1 + 16) = 0;
  return a1;
}

void sub_10011450C(_BYTE *a1, void *a2)
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
        sub_10192947C();
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
        sub_101929A24(a1, a2);
      }
    }
  }
}

uint64_t sub_1001146B0(uint64_t result, uint64_t a2)
{
  v4 = a2;
  if (*(result + 248) == 1)
  {
    v2 = result;
    v3 = (*(*a2 + 24))(a2);
    sub_100114754((v2 + 24), &v3);
    sub_100114860((v2 + 160), &v4);
    return (*(*v2 + 48))(v2);
  }

  return result;
}

uint64_t sub_100114754(uint64_t **a1, int *a2)
{
  v3 = sub_1001147D0(a1, a2);
  if (v3 == v4)
  {
    return 0;
  }

  v6 = v3;
  v7 = v4;
  v5 = 0;
  do
  {
    v8 = sub_10045E8A0(a1, v6);
    operator delete(v6);
    ++v5;
    v6 = v8;
  }

  while (v8 != v7);
  return v5;
}

uint64_t *sub_1001147D0(uint64_t a1, int *a2)
{
  v2 = (a1 + 8);
  v3 = *(a1 + 8);
  if (!v3)
  {
    return v2;
  }

  v4 = *a2;
  while (1)
  {
    v5 = *(v3 + 7);
    if (v4 >= v5)
    {
      break;
    }

    v2 = v3;
LABEL_7:
    v3 = *v3;
    if (!v3)
    {
      return v2;
    }
  }

  if (v5 < v4)
  {
    ++v3;
    goto LABEL_7;
  }

  v7 = *v3;
  result = v3;
  if (*v3)
  {
    result = v3;
    do
    {
      if (*(v7 + 7) >= v4)
      {
        result = v7;
      }

      v7 = v7[*(v7 + 7) < v4];
    }

    while (v7);
  }

    ;
  }

  return result;
}

uint64_t *sub_100114860(void *a1, void *a2)
{
  result = sub_100113EE8(a1, a2);
  if (result)
  {
    sub_1005465E4(a1, result);
    return 1;
  }

  return result;
}

void sub_100114898(uint64_t a1)
{
  *a1 = off_1024CAC08;
  sub_10004DAD8(a1, 0xFFFFFFFFLL);

  *(a1 + 216) = 0;
  *(a1 + 176) = 0;
  Current = CFAbsoluteTimeGetCurrent();
  if (*(a1 + 312) == 1)
  {
    v3 = Current;
    if (qword_1025D4790 != -1)
    {
      sub_100312440();
    }

    v4 = qword_1025D4798;
    if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_DEBUG))
    {
      v5 = *(a1 + 24);
      *v20 = 68289282;
      *&v20[8] = 2082;
      *&v20[10] = "";
      *&v20[18] = 2114;
      *&v20[20] = v5;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:ending metric session (LocationUpdateSession), Client:%{public, location:escape_only}@}", v20, 0x1Cu);
    }

    *(a1 + 376) = v3;
    *(a1 + 432) = *(a1 + 236);
    if (*(a1 + 58) == 1)
    {
      *(a1 + 504) = *(a1 + 504) + v3 - *(a1 + 64);
    }

    v6 = sub_1001EC310();
    sub_1001F262C(v6, (a1 + 312));
    memset(v20, 0, sizeof(v20));
    v7 = 0uLL;
    *(a1 + 312) = 0;
    *(a1 + 320) = 0xBFF0000000000000;
    v8 = (a1 + 328);
    if (*(a1 + 351) < 0)
    {
      operator delete(*v8);
      v7 = 0uLL;
    }

    *v8 = v7;
    *(a1 + 344) = v7;
    *(a1 + 360) = 1000;
    *(a1 + 372) = 0;
    *(a1 + 364) = 0;
    *(a1 + 376) = 0xBFF0000000000000;
    *(a1 + 384) = 0;
    *(a1 + 392) = 0xBFF0000000000000;
    __asm { FMOV            V0.2D, #-1.0 }

    *(a1 + 400) = _Q0;
    *(a1 + 416) = _Q0;
    *(a1 + 432) = 0;
    *(a1 + 496) = *&v20[63];
    *(a1 + 504) = 0xBFF0000000000000;
    v14 = *&v20[48];
    *(a1 + 465) = *&v20[32];
    *(a1 + 481) = v14;
    v15 = *&v20[16];
    *(a1 + 433) = *v20;
    *(a1 + 449) = v15;
  }

  [*(a1 + 576) invalidate];

  *(a1 + 576) = 0;
  if (*(a1 + 88) == 1)
  {
    [*(a1 + 72) releaseAccuracyEnablementAssertionForClient:*(a1 + 48)];
  }

  *(a1 + 72) = 0;
  *(a1 + 168) = 0;
  v16 = sub_100114CE4(a1, 0);
  [v16 invalidate:1];

  v17 = *(a1 + 112);
  if (v17)
  {
    [v17 invalidate];

    *(a1 + 112) = 0;
  }

  [*(a1 + 280) invalidate];

  *(a1 + 280) = 0;
  v18 = *(a1 + 136);
  *(a1 + 136) = 0;
  if (v18)
  {
    (*(*v18 + 8))(v18);
  }

  v19 = *(a1 + 160);
  *(a1 + 160) = 0;
  if (v19)
  {
    (*(*v19 + 8))(v19);
  }

  [*(a1 + 48) setValid:0];

  *(a1 + 48) = 0;
  sub_1001130E4((a1 + 552));
}

void sub_100114CD8(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10037EA9C(a1);
}

uint64_t sub_100114CE4(uint64_t a1, uint64_t a2)
{
  v5 = (a1 + 96);
  v4 = *(a1 + 96);
  if (a2)
  {
    if (v4)
    {
      sub_101B13734((a1 + 96));
    }
  }

  else if (!v4)
  {
    return 0;
  }

  if (qword_1025D47A0 != -1)
  {
    sub_101B13524();
  }

  v6 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
  {
    v7 = *(a1 + 96);
    v9[0] = 68290562;
    v9[1] = 0;
    v10 = 2082;
    v11 = "";
    v12 = 2082;
    v13 = "state_transition";
    v14 = 2082;
    v15 = "DaemonClient";
    v16 = 2050;
    v17 = a1;
    v18 = 2082;
    v19 = "visibilityAssertion";
    v20 = 2050;
    v21 = v7;
    v22 = 2050;
    v23 = a2;
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:state transition, event:%{public, location:escape_only}s, state:%{public, location:escape_only}s, id:%{public}p, property:%{public, location:escape_only}s, old:%{public}p, new:%{public}p}", v9, 0x4Eu);
  }

  result = *v5;
  *v5 = a2;
  return result;
}

uint64_t sub_100114E74(uint64_t a1)
{
  *a1 = off_1024BE7F0;

  return a1;
}

uint64_t sub_100114ED0(uint64_t *a1, uint64_t a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    sub_10014588C();

    operator delete();
  }

  return result;
}

void sub_100114F1C(void *a1)
{
  sub_100114F54(a1);

  operator delete();
}

uint64_t sub_100114F54(void *a1)
{
  *a1 = off_1024575E0;
  sub_100005DA4(a1 + 9);
  v2 = a1[7];
  a1[7] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = a1[6];
  a1[6] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return sub_100114E74(a1);
}

void sub_100115008(uint64_t a1)
{
  sub_1001143F4(a1);

  operator delete();
}

double sub_100115040(char **a1, char *__src, char **a3, char *a4, uint64_t a5)
{
  if (a1 == a3)
  {
    v7 = *a5;
    v8 = *(a5 + 8);
    v9 = __src;
  }

  else
  {
    v11 = a1 + 1;
    sub_100115104(__src, *(a5 + 8), *a1 + 4096, *a5, &v15);
    for (i = v16; ; i = v16)
    {
      *a5 = i;
      if (v11 == a3)
      {
        break;
      }

      v13 = *v11++;
      sub_100115104(v13, *(a5 + 8), v13 + 4096, *a5, &v15);
    }

    v9 = *v11;
    v7 = *a5;
    v8 = *(a5 + 8);
  }

  sub_100115104(v9, v8, a4, v7, &v15);
  result = *&v16;
  *a5 = v16;
  return result;
}

char *sub_100115104@<X0>(char *__src@<X0>, char *__dst@<X3>, char *a3@<X1>, void **a4@<X2>, char **a5@<X8>)
{
  v6 = a4;
  if (__src != a3)
  {
    v9 = __src;
    v6 = a4 + 1;
    v10 = *a4;
    while (1)
    {
      v11 = v10 - __dst + 4096;
      v12 = (a3 - v9) >> 4 >= v11 >> 4 ? v11 >> 4 : (a3 - v9) >> 4;
      if (v12)
      {
        __src = memmove(__dst, v9, 16 * v12);
      }

      v9 += 16 * v12;
      if (v9 == a3)
      {
        break;
      }

      v13 = *v6++;
      v10 = v13;
      __dst = v13;
    }

    __dst += 16 * v12;
    if (*(v6 - 1) + 4096 == __dst)
    {
      __dst = *v6;
    }

    else
    {
      --v6;
    }
  }

  *a5 = a3;
  a5[1] = v6;
  a5[2] = __dst;
  return __src;
}

uint64_t sub_1001151D0(void *a1, int a2)
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

float sub_100115240(float a1, float a2, float a3, float a4)
{
  v7 = a4 / 57.296;
  v8 = sinf(a4 / 57.296);
  v9 = a1;
  v10 = (v9 * -0.000101 + 0.019993) * sinf(v7 + v7) + v8 * (1.914602 - v9 * (v9 * 0.000014 + 0.004817));
  v11 = v10 + sinf(v7 * 3.0) * 0.000289;
  v12 = (v11 + a3) + -0.00569;
  v13 = v9 * -1934.136 + 125.04;
  *&v12 = v12 + sinf(v13 / 57.296) * -0.00478;
  v14 = sinf(a2 / 57.296);
  v15 = sinf(*&v12 / 57.296);
  return asinf(v14 * v15) * 57.296;
}

float sub_10011536C(float a1, float a2, float a3, float a4)
{
  v8 = tanf((a2 * 0.5) / 57.296);
  v9 = v8 * tanf((a2 / 57.296) * 0.5);
  v10 = 0.016708634 - a1 * (a1 * 0.0000001267 + 0.000042037);
  v11 = a4 / 57.296;
  v12 = sinf(v11);
  v13 = __sincosf_stret((a3 / 57.296) + (a3 / 57.296));
  v14 = ((((v10 * -2.0) * v12) + (v9 * v13.__sinval)) + ((v12 * ((v10 * 4.0) * v9)) * v13.__cosval)) + v9 * -0.5 * v9 * sinf((a3 / 57.296) * 4.0);
  v15 = v14 + v10 * -1.25 * v10 * sinf(v11 + v11);
  return (v15 * 57.296) * 4.0;
}

uint64_t sub_1001154A0(uint64_t a1, uint64_t a2)
{
  result = sub_100062F64(a1 - 352);
  if ((result & 1) == 0)
  {

    return sub_1001154F4(a1 + 256, a2);
  }

  return result;
}

uint64_t sub_1001154F4(uint64_t a1, uint64_t a2)
{
  v4 = objc_alloc_init(CLPIndoorEvent);
  [v4 setType:12];
  [v4 setOutdoorUpdate:objc_alloc_init(CLPOutdoorUpdate)];
  [objc_msgSend(v4 "outdoorUpdate")];
  [objc_msgSend(v4 "outdoorUpdate")];
  [objc_msgSend(v4 "outdoorUpdate")];
  [objc_msgSend(v4 "outdoorUpdate")];
  [objc_msgSend(v4 "outdoorUpdate")];
  [*(a1 + 48) addObject:v4];

  return sub_100063090(a1);
}

void sub_1001155EC(uint64_t a1, const CLMotionActivity *a2, int *a3, uint64_t a4)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a4 + 32) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_101BC0EDC();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v11 = 1;
    v8 = _os_activity_create(dword_100000000, "CL: CLVehicleStateNotifier::onMotionStateUpdate", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v8, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_101BC0EF0();
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
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLVehicleStateNotifier::onMotionStateUpdate, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v11 = 0;
  }

  sub_1001157B8(a4, v7, a2, a3);
  if (v11 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

void sub_1001157B8(uint64_t a1, uint64_t a2, const CLMotionActivity *a3, int *a4)
{
  if (a3->type == 9)
  {
    sub_100115824(a1, a4);
  }

  else if (a3->type == 1)
  {
    sub_101335640(a1, a4, a3);
  }

  sub_100115A7C(a1);

  sub_100115F40(a1);
}

void sub_100115824(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 20) <= 150.0 && vabdd_f64(CFAbsoluteTimeGetCurrent(), *(a2 + 76)) <= 30.0)
  {
    if (*(a1 + 1104) == 1)
    {
      v4 = *(a1 + 1232) + 60.0;
      if (v4 < sub_100117154(*(a1 + 1240), *(a1 + 1248), *(a2 + 4), *(a2 + 12)))
      {
        if (qword_1025D4250 != -1)
        {
          sub_101BC09A8();
        }

        v5 = qword_1025D4258;
        if (os_log_type_enabled(qword_1025D4258, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEFAULT, "VEHICULAR: too far from center of DNDLOI", buf, 2u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_101BC11F4();
        }

        sub_101335AC8(a1);
      }
    }

    else
    {
      v6 = (a1 + 1256);
      if (sub_100117154(*(a1 + 1256), *(a1 + 1264), *(a2 + 4), *(a2 + 12)) >= 10.0 || *(a1 + 1209) != 1 || *(a1 + 1264) == kCLLocationCoordinate2DInvalid.longitude || *v6 == kCLLocationCoordinate2DInvalid.latitude)
      {
        *v6 = *(a2 + 4);
        if (*(a1 + 1152) == 2 || (*(a1 + 1208) & 1) != 0 || (*(a1 + 1209) & 1) == 0)
        {

          sub_1013362E8(a1, a2);
        }
      }

      else
      {
        if (qword_1025D4250 != -1)
        {
          sub_101BC09A8();
        }

        v7 = qword_1025D4258;
        if (os_log_type_enabled(qword_1025D4258, OS_LOG_TYPE_DEBUG))
        {
          *v8 = 0;
          _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEBUG, "VEHICULAR: skipping repeated nearby location", v8, 2u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_101BC1110();
        }
      }
    }
  }
}

uint64_t sub_100115A5C(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    operator delete();
  }

  return result;
}

void sub_100115A7C(uint64_t a1)
{
  v2 = sub_100115ED8(a1);
  v24 = v2;
  if (v2)
  {
    v3 = 1;
  }

  else
  {
    v3 = sub_1001CF1EC(v2, (a1 + 936), (a1 + 144));
  }

  if (*(a1 + 144) <= 0.0 || *(a1 + 152) >= 0.0)
  {
    v4 = 0;
    v5 = v3;
  }

  else
  {
    v4 = *(a1 + 1136) == 2;
    if (*(a1 + 1136) == 2)
    {
      v5 = 2;
    }

    else
    {
      v5 = v3;
    }
  }

  if (CLMotionActivity::isTypeInVehicle())
  {
    v6 = *(a1 + 1032) & 0x1F;
  }

  else
  {
    v6 = 0;
  }

  if (*(a1 + 144) > 0.0 && *(a1 + 152) < 0.0)
  {
    v7 = v6 | 0x10;
  }

  else
  {
    v7 = v6;
  }

  v9 = *(a1 + 1272) == 1 || *(a1 + 1280) == 1;
  v10 = *(a1 + 1152);
  if (v5 != *(a1 + 1144) || v3 != v10 || (v10 = v3, v7 != *(a1 + 1160)) || (v10 = v3, *(a1 + 1168) != v9))
  {
    if (*(a1 + 1136) == 3)
    {
      if (v3 != 2 || v10 == 2)
      {
        if (*(a1 + 144) > 0.0 && *(a1 + 152) < 0.0)
        {
          v12 = 0;
        }

        else
        {
          v12 = 2;
        }

        if (v10 != 2 || v3 == 2)
        {
          v11 = 0;
        }

        else
        {
          v11 = v12;
        }
      }

      else
      {
        v11 = 1;
      }
    }

    else
    {
      v11 = 2;
    }

    sub_101335D3C(a1, v11);
    *(a1 + 1144) = v5;
    *(a1 + 1152) = v3;
    *(a1 + 1160) = v7;
    *(a1 + 1168) = v9;
    p_info = &OBJC_METACLASS___CLMotionHintLoggerAdapter.info;
    if (qword_1025D4250 != -1)
    {
      sub_101BC09A8();
    }

    v15 = &OBJC_METACLASS___CLMotionHintLoggerAdapter.info;
    v16 = qword_1025D4258;
    if (os_log_type_enabled(qword_1025D4258, OS_LOG_TYPE_DEFAULT))
    {
      v17 = *(a1 + 1104);
      v18 = *(a1 + 1208);
      v19 = sub_100125670(*(a1 + 1112));
      v20 = *(a1 + 1140);
      *buf = 134350848;
      v26 = v3;
      v27 = 2050;
      v28 = v7;
      v29 = 1026;
      v30 = v24;
      v31 = 1026;
      v32 = v17;
      p_info = &OBJC_METACLASS___CLMotionHintLoggerAdapter.info;
      v15 = &OBJC_METACLASS___CLMotionHintLoggerAdapter.info;
      v33 = 1026;
      v34 = v18;
      v35 = 1026;
      v36 = v19;
      v37 = 1026;
      v38 = v20;
      v39 = 1026;
      v40 = v4;
      _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_DEFAULT, "VEHICULAR: state, %{public}lu, hints, %{public}lu, fpSuppress, %{public}u, inDNDLOI, %{public}u, inFastSuppressionRange, %{public}u, wifiPowered, %{public}u, disableFpSuppressDnD, %{public}u, dndOverride, %{public}u", buf, 0x3Au);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4250 != -1)
      {
        sub_101BC0F18();
      }

      sub_100125670(*(a1 + 1112));
      v23 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "void CLVehicleStateNotifier::updateVehicularDnd()", "%s\n", v23);
      if (v23 != buf)
      {
        free(v23);
      }

      p_info = (&OBJC_METACLASS___CLMotionHintLoggerAdapter + 32);
      v15 = (&OBJC_METACLASS___CLMotionHintLoggerAdapter + 32);
    }

    v21 = *(a1 + 1576);
    if (v21)
    {
      sub_100C1E72C(v21, v5, v9, v7);
      if (sub_100C1E5FC(*(a1 + 1576)))
      {
        AnalyticsSendEvent();
        if (p_info[74] != -1)
        {
          sub_101BC0F18();
        }

        v22 = v15[75];
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v26 = @"com.apple.carexperience.vehiclestate";
          _os_log_impl(dword_100000000, v22, OS_LOG_TYPE_DEFAULT, "VEHICULAR: submitted metrics, %@", buf, 0xCu);
        }

        if (sub_10000A100(121, 2))
        {
          sub_101BC12D8();
        }
      }
    }

    sub_1013351D0(a1);
    sub_101336A84(a1);
  }
}

uint64_t sub_100115ED8(uint64_t a1)
{
  if (*(a1 + 1292))
  {
    v1 = 1;
  }

  else if (((*(a1 + 1104) & 1) != 0 || *(a1 + 1208) == 1) && sub_100125670(*(a1 + 1112)))
  {
    v1 = *(a1 + 1140) ^ 1;
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

void sub_100115F40(uint64_t a1)
{
  v2 = sub_100115ED8(a1);
  v3 = v2;
  if (v2)
  {
    if (qword_1025D4250 != -1)
    {
      sub_101BC09A8();
    }

    v4 = qword_1025D4258;
    if (os_log_type_enabled(qword_1025D4258, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "[MotionCues] suppressed vehicular", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101BC13D8();
    }

    v5 = 1;
  }

  else
  {
    v5 = sub_1001CF1EC(v2, (a1 + 936), (a1 + 144));
  }

  if (CLMotionActivity::isTypeInVehicle())
  {
    v6 = *(a1 + 1032) & 0x1F;
  }

  else
  {
    v6 = 0;
  }

  if (*(a1 + 144) > 0.0 && *(a1 + 152) < 0.0)
  {
    v7 = v6 | 0x10;
  }

  else
  {
    v7 = v6;
  }

  v9 = *(a1 + 1272) == 1 || *(a1 + 1280) == 1;
  if (v5 != *(a1 + 1184) || v7 != *(a1 + 1192) || *(a1 + 1200) != v9)
  {
    if (*(a1 + 1136) == 3)
    {
      v10 = *(a1 + 1152);
      if (v5 != 2 || v10 == 2)
      {
        if (*(a1 + 144) > 0.0 && *(a1 + 152) < 0.0)
        {
          v12 = 0;
        }

        else
        {
          v12 = 2;
        }

        if (v10 != 2 || v5 == 2)
        {
          v11 = 0;
        }

        else
        {
          v11 = v12;
        }
      }

      else
      {
        v11 = 1;
      }
    }

    else
    {
      v11 = 2;
    }

    sub_101335D3C(a1, v11);
    *(a1 + 1184) = v5;
    *(a1 + 1192) = v7;
    *(a1 + 1200) = v9;
    if (qword_1025D4250 != -1)
    {
      sub_101BC0F18();
    }

    v14 = qword_1025D4258;
    if (os_log_type_enabled(qword_1025D4258, OS_LOG_TYPE_DEFAULT))
    {
      v15 = *(a1 + 1104);
      v16 = *(a1 + 1208);
      v17 = sub_100125670(*(a1 + 1112));
      v18 = *(a1 + 1140);
      *buf = 134350592;
      v21 = v5;
      v22 = 2050;
      v23 = v7;
      v24 = 1026;
      v25 = v3;
      v26 = 1026;
      v27 = v15;
      v28 = 1026;
      v29 = v16;
      v30 = 1026;
      v31 = v17;
      v32 = 1026;
      v33 = v18;
      _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_DEFAULT, "[MotionCues] VEHICULAR: motionCues, state, %{public}lu, hints, %{public}lu, fpSuppress, %{public}u, inDNDLOI, %{public}u, inFastSuppressionRange, %{public}u, wifiPowered, %{public}u, disableFpSuppressDnD, %{public}u", buf, 0x34u);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4250 != -1)
      {
        sub_101BC0F18();
      }

      sub_100125670(*(a1 + 1112));
      v19 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "void CLVehicleStateNotifier::updateMotionCues()", "%s\n", v19);
      if (v19 != buf)
      {
        free(v19);
      }
    }

    sub_101336920(a1);
  }
}

void sub_1001162D8(uint64_t a1, int *a2)
{
  v4 = *(a1 + 64);
  v2 = a1 + 64;
  v3 = v4;
  if (v4)
  {
    v5 = *a2;
    v6 = v2;
    do
    {
      if (*(v3 + 32) >= v5)
      {
        v6 = v3;
      }

      v3 = *(v3 + 8 * (*(v3 + 32) < v5));
    }

    while (v3);
    if (v6 != v2 && v5 >= *(v6 + 32))
    {
      v7 = *(v6 + 72);
      *(v6 + 64) = 0;
      *(v6 + 72) = 0;
      if (v7)
      {
        sub_100008080(v7);
      }
    }
  }
}

uint64_t sub_100116328(uint64_t a1, int a2, int *a3, uint64_t a4)
{
  v19 = a2;
  if (*a3)
  {
    if (qword_1025D47B0 != -1)
    {
      sub_101A83044();
    }

    v6 = qword_1025D47B8;
    if (os_log_type_enabled(qword_1025D47B8, OS_LOG_TYPE_INFO))
    {
      *buf = &v19;
      v7 = [objc_msgSend(sub_1000488C8(a1 + 80 &v19)[8]];
      v8 = *a3;
      *buf = 68289538;
      *&buf[4] = 0;
      v21 = 2082;
      v22 = "";
      v23 = 2082;
      v24 = v7;
      v25 = 2050;
      v26 = v8;
      v9 = "{msg%{public}.0s:notifying, client:%{public, location:escape_only}s, notification:%{public, location:CLLocationProvider_Type::Notification}lld}";
      v10 = v6;
      v11 = 38;
LABEL_10:
      _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_INFO, v9, buf, v11);
    }
  }

  else
  {
    if (qword_1025D47B0 != -1)
    {
      sub_101A83044();
    }

    v13 = qword_1025D47B8;
    if (os_log_type_enabled(qword_1025D47B8, OS_LOG_TYPE_INFO))
    {
      *buf = &v19;
      v14 = [objc_msgSend(sub_1000488C8(a1 + 80 &v19)[8]];
      v15 = *(a4 + 20);
      v16 = *(a4 + 96);
      v17 = *(a4 + 512);
      *buf = 68290050;
      *&buf[4] = 0;
      v21 = 2082;
      v22 = "";
      v23 = 2082;
      v24 = v14;
      v25 = 2050;
      v26 = v15;
      v27 = 2050;
      v28 = v16;
      v29 = 2050;
      v30 = v17;
      v9 = "{msg%{public}.0s:notifying location, client:%{public, location:escape_only}s, accuracy:%{public}f, type:%{public, location:CLLocationType}lld, origin device:%{public, location:CLClientLocationOriginDevice}lld}";
      v10 = v13;
      v11 = 58;
      goto LABEL_10;
    }
  }

  return 1;
}

void sub_10011652C(uint64_t a1)
{
  sub_100106C38(a1, v11);
  *(a1 + 128) = *v11;
  *(a1 + 144) = v11[16];
  *(a1 + 184) = CFAbsoluteTimeGetCurrent();
  *v11 = 0;
  if (sub_10000608C(a1, v11, 1) && (*(a1 + 248) & 1) != 0)
  {
    *(a1 + 288) = 1;
    if (*(a1 + 144))
    {
      v2 = 3;
    }

    else
    {
      v2 = 4;
    }

    sub_100106DDC(a1, v2);
    sub_100106D34(a1, 1);
    if (*(a1 + 249) == 1)
    {
      v3 = *(a1 + 128);
    }

    else
    {
      *(a1 + 128) = 0x7FF0000000000000;
      v3 = INFINITY;
    }

    v7 = *(a1 + 184) + *(a1 + 120);
    if (vabdd_f64(v7, *(a1 + 160)) < v3)
    {
      sub_100106E44(a1);
      v8 = *(a1 + 128);
      v9 = INFINITY;
      if (v8 != INFINITY)
      {
        v10 = *(a1 + 160);
LABEL_22:
        v9 = v8 + v10;
        goto LABEL_23;
      }

      goto LABEL_23;
    }

    if (vabdd_f64(v7, *(a1 + 168)) < *(a1 + 136))
    {
      sub_100106E44(a1);
      v8 = *(a1 + 168);
      v9 = -INFINITY;
      if (v8 != -INFINITY)
      {
        v10 = *(a1 + 136);
        goto LABEL_22;
      }

LABEL_23:
      sub_100109578(a1, v9);
      return;
    }

    sub_100FE8EB8(a1);
  }

  else
  {
    if (*(a1 + 288) == 1)
    {
      if (qword_1025D47A0 != -1)
      {
        sub_101AFD408();
      }

      v4 = off_1025D47A8;
      if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
      {
        *v11 = 0;
        v5 = sub_10000608C(a1, v11, 1);
        v6 = *(a1 + 248);
        *v11 = 68289538;
        *&v11[8] = 2082;
        *&v11[10] = "";
        v12 = 1026;
        v13 = v5 != 0;
        v14 = 1026;
        v15 = v6;
        _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#Awareness Shutting down, hasClients:%{public}hhd, bigSwitch:%{public}hhd}", v11, 0x1Eu);
      }

      sub_100FE80C4(a1);
    }

    *(a1 + 288) = 0;
  }
}

void sub_100116760(uint64_t a1, int *a2, uint64_t a3, int a4)
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
      sub_100FEA440(buf, a2, &v9);
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
      sub_100116C94();
    }
  }
}

void sub_100116C68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_101865570(va);
  sub_101864718(v9 - 144);
  _Unwind_Resume(a1);
}

BOOL sub_100116D68(uint64_t a1, const char *a2, const void *a3)
{
  v5 = CFStringCreateWithCString(kCFAllocatorDefault, a2, 0x8000100u);
  v6 = sub_100116DD4(a1, v5, a3);
  if (v5)
  {
    CFRelease(v5);
  }

  return v6;
}

BOOL sub_100116DD4(uint64_t a1, const __CFString *a2, const void *a3)
{
  v5 = CFNumberCreate(kCFAllocatorDefault, kCFNumberFloat64Type, a3);
  if (v5)
  {
    (*(*a1 + 896))(a1, a2, v5);
    CFRelease(v5);
  }

  else
  {
    if (qword_1025D48A0 != -1)
    {
      sub_1018A9CF4();
    }

    v6 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_FAULT))
    {
      sub_1000238CC(a2, __p);
      v7 = v10 >= 0 ? __p : __p[0];
      *buf = 136446210;
      v12 = v7;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_FAULT, "could not create cf type for key %{public}s", buf, 0xCu);
      if (v10 < 0)
      {
        operator delete(__p[0]);
      }
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018AB70C();
    }
  }

  return v5 != 0;
}

id sub_100116F50(void *a1)
{
  v2 = [a1 binaryVersion];
  [a1 sizeOfType];
  if (v2)
  {
    if (getenv("_INTERSILO_UNIT_TEST"))
    {
      if (qword_1025D41A0 != -1)
      {
        sub_1018D6618();
      }

      v3 = qword_1025D41A8;
      if (os_log_type_enabled(qword_1025D41A8, OS_LOG_TYPE_ERROR))
      {
        v6 = 134218498;
        v7 = v2;
        v8 = 2048;
        v9 = 0;
        v10 = 2080;
        v11 = 0x8000000101C80000 & 0x7FFFFFFFFFFFFFFFLL;
        _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_ERROR, "Mismatch of versions between encoded (%llu) and decoded (%llu) objects! This is possibly because the version has changed on one side and possibly broken ABI compatibility. Please update your type for %s accordingly", &v6, 0x20u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_1018D682C();
      }
    }

    else
    {
      if (qword_1025D41A0 != -1)
      {
        sub_1018D6618();
      }

      v5 = qword_1025D41A8;
      if (os_log_type_enabled(qword_1025D41A8, OS_LOG_TYPE_FAULT))
      {
        v6 = 134218498;
        v7 = v2;
        v8 = 2048;
        v9 = 0;
        v10 = 2080;
        v11 = 0x8000000101C80000 & 0x7FFFFFFFFFFFFFFFLL;
        _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_FAULT, "Mismatch of versions between encoded (%llu) and decoded (%llu) objects! This is possibly because the version has changed on one side and possibly broken ABI compatibility. Please update your type for %s accordingly", &v6, 0x20u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_1018D692C();
      }
    }

    return 0;
  }

  else
  {

    return [a1 cppObjectPtr];
  }
}

uint64_t sub_100117158(uint64_t a1, int *a2)
{
  if (qword_1025D4620 != -1)
  {
    sub_101A60CCC();
  }

  v4 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
  {
    v5 = *a2;
    *buf = 67240192;
    LODWORD(v16) = v5;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "CellLoc, registerForNotificationInternal, notification, %{public}d", buf, 8u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101A60F5C(a2);
  }

  sub_1000F4588();
  if (*a2 <= 4 && ((1 << *a2) & 0x19) != 0)
  {
    [objc_msgSend(objc_msgSend(*(a1 + 32) "vendor")];
    if (qword_1025D4620 != -1)
    {
      sub_101A60DCC();
    }

    v6 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
    {
      v7 = sub_100048D98(*a2);
      *buf = 136446210;
      v16 = v7;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEFAULT, "CellFlow, locreq, %{public}s", buf, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101A61048(a2);
    }

    v8 = *(a1 + 136);
    sub_1001CBE2C(buf, @"kCellInfoNotification");
    [*(v8 + 16) register:*(v8 + 8) forNotification:sub_10006E830(buf) registrationInfo:0];
    v9 = *(a1 + 136);
    sub_1001CBE2C(buf, @"kTimingAdvanceInfoNotification");
    [*(v9 + 16) register:*(v9 + 8) forNotification:sub_10006E830(buf) registrationInfo:0];
    v10 = *(a1 + 136);
    sub_1001CBE2C(buf, @"kCLCellularTransmitStateNotification");
    [*(v10 + 16) register:*(v10 + 8) forNotification:sub_10006E830(buf) registrationInfo:0];
    v11 = *(a1 + 136);
    sub_1001CBE2C(buf, @"kCellMonitorRefreshResultNotification");
    [*(v11 + 16) register:*(v11 + 8) forNotification:sub_10006E830(buf) registrationInfo:0];
    [*(*(a1 + 144) + 16) register:*(*(a1 + 144) + 8) forNotification:3 registrationInfo:0];
    [*(*(a1 + 144) + 16) register:*(*(a1 + 144) + 8) forNotification:0 registrationInfo:0];
    if (!*a2)
    {
      sub_1001CBE30(a1, "register");
      *buf = 0;
      v12 = sub_10000608C(a1, buf, 1);
      if (qword_1025D4620 != -1)
      {
        sub_101A60DCC();
      }

      v13 = qword_1025D4628;
      if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
      {
        *buf = 67240192;
        LODWORD(v16) = v12;
        _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_DEBUG, "UclpMetric, registrant, %{public}d", buf, 8u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101A6114C(v12);
      }

      AnalyticsSendEventLazy();
      if (*(a1 + 3504) == 0.0)
      {
        *(a1 + 3504) = CFAbsoluteTimeGetCurrent();
      }

      ++*(a1 + 3480);
    }
  }

  return 1;
}

uint64_t sub_10011753C(uint64_t a1, int *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = a1 + 8;
  do
  {
    if (*(v2 + 32) >= v3)
    {
      v4 = v2;
    }

    v2 = *(v2 + 8 * (*(v2 + 32) < v3));
  }

  while (v2);
  if (v4 == a1 + 8 || v3 < *(v4 + 32))
  {
    return 0;
  }

  sub_10045E8A0(a1, v4);
  operator delete(v4);
  return 1;
}

void sub_1001175C0(uint64_t a1, unsigned int *a2, int **a3, uint64_t a4)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a4 + 32) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_101919BEC();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v11 = 1;
    v8 = _os_activity_create(dword_100000000, "CL: CLFilteredLocationController::onLocationNotification", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v8, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_101919C00();
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
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLFilteredLocationController::onLocationNotification, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v11 = 0;
  }

  sub_10011778C(a4, v7, a2, a3);
  if (v11 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

void sub_10011778C(uint64_t a1, uint64_t a2, unsigned int *a3, int **a4)
{
  v6 = *a3;
  v27 = v6;
  if (v6 <= 2)
  {
    v27 = 0;
    if (*(a1 + 1032) >= 0.0 && *(a1 + 1040) >= 15.0)
    {
      v7 = sub_1000EEEC0(a1, a4);
      if (v7 < CFAbsoluteTimeGetCurrent() + 15.0)
      {
        if (qword_1025D47A0 != -1)
        {
          sub_101919C50();
        }

        v8 = off_1025D47A8;
        if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
        {
          LODWORD(buf[0]) = 134217984;
          *(buf + 4) = v7 - CFAbsoluteTimeGetCurrent();
          _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEBUG, "leaving location as it would turn on in %.3fs anyway", buf, 0xCu);
        }

        if (sub_10000A100(121, 2))
        {
          sub_10191A804();
        }

        return;
      }

      if (qword_1025D47A0 != -1)
      {
        sub_101919C50();
      }

      v9 = off_1025D47A8;
      if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
      {
        LODWORD(buf[0]) = 134217984;
        *(buf + 4) = v7 - CFAbsoluteTimeGetCurrent();
        _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "turning off location requests and re-scheduling for %.3fs later", buf, 0xCu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_10191A6F4();
      }

      v10 = a1 + 168;
      [*(*(a1 + 168) + 16) unregister:*(*(a1 + 168) + 8) forNotification:0];
      [*(*v10 + 16) unregister:*(*v10 + 8) forNotification:1];
      [*(*v10 + 16) unregister:*(*v10 + 8) forNotification:2];
      LODWORD(v25[0]) = 0;
      *&buf[0] = v25;
      *(sub_100007FA0(a1 + 1048, v25) + 32) = 0;
      LODWORD(v25[0]) = 1;
      *&buf[0] = v25;
      *(sub_100007FA0(a1 + 1048, v25) + 32) = 0;
      LODWORD(v25[0]) = 2;
      *&buf[0] = v25;
      *(sub_100007FA0(a1 + 1048, v25) + 32) = 0;
      [*(a1 + 1024) setNextFireTime:v7];
      v11 = [objc_msgSend(*(a1 + 32) "vendor")];
      v12 = *(a1 + 1104);
      if (v12 && (AbsoluteTime = CFDateGetAbsoluteTime(v12), AbsoluteTime < CFAbsoluteTimeGetCurrent()))
      {
        v14 = [v11 syncgetRegisterPowerKeepAlive:1 client:a1 dbgMessage:@"CLFilteredLocationController::onLocationNotification"];
        sub_10070FF98(a1);
        if (v14)
        {
          [v11 syncgetRegisterPowerKeepAlive:0 client:a1 dbgMessage:@"CLFilteredLocationController::onLocationNotification"];
        }
      }

      else
      {
        sub_10070FF98(a1);
      }
    }

    v6 = 0;
  }

  if (sub_10001CF3C())
  {
    sub_100022008(buf, a4);
    v15 = *(a1 + 1112);
    v25[6] = buf[6];
    v25[7] = buf[7];
    v26[0] = v29[0];
    *(v26 + 12) = *(v29 + 12);
    v25[2] = buf[2];
    v25[3] = buf[3];
    v25[4] = buf[4];
    v25[5] = buf[5];
    v25[0] = buf[0];
    v25[1] = buf[1];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3321888768;
    v16[2] = sub_100710054;
    v16[3] = &unk_10246CB68;
    v16[4] = a1;
    v24 = v6;
    sub_100022008(&v17, buf);
    [v15 checkAuthorizationforLocation:v25 withReply:v16];

    if (v22)
    {
      sub_100008080(v22);
    }

    if (v21 < 0)
    {
      operator delete(__p);
    }

    if (v19)
    {
      sub_100008080(v19);
    }

    if (v18)
    {
      sub_100008080(v18);
    }

    if (v34)
    {
      sub_100008080(v34);
    }

    if (v33 < 0)
    {
      operator delete(v32);
    }

    if (v31)
    {
      sub_100008080(v31);
    }

    if (v30)
    {
      sub_100008080(v30);
    }
  }

  else
  {
    (*(*a1 + 152))(a1, &v27, a4, 1, 0xFFFFFFFFLL, 0);
    sub_100117C60(a1 + 184, &v27, a4);
  }
}

void sub_100117C20(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10037EA9C(a1);
  }

  _Unwind_Resume(a1);
}

void sub_100117C60(uint64_t a1, _DWORD *a2, int **a3)
{
  [*(a1 + 8) silo];
  if (*(a1 + 24) == 1)
  {
    if (*a2 >= 6u)
    {
      if (*a2 == 22)
      {
        if (qword_1025D4620 != -1)
        {
          sub_101B4363C();
        }

        v6 = qword_1025D4628;
        if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
        {
          v7 = *(a1 + 832);
          v8 = sub_10030D934(a3[101]);
          v9[0] = 67240448;
          v9[1] = v7;
          v10 = 2050;
          v11 = v8;
          _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "#LastConfLoc,Received kNotificationWifiLocationBatched,num,%{public}u,size,%{public}lu,not caching locations(no-op)", v9, 0x12u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_101B43650(a1, a3);
        }
      }
    }

    else
    {

      sub_100107534(a1, a3, (a3 + 20), 0);
    }
  }
}

uint64_t sub_100117DD4(uint64_t a1, uint64_t a2)
{
  [*(a1 + 8) silo];
  result = 0;
  v4 = *(a2 + 20);
  if (v4 <= 100.0 && v4 >= 0.0)
  {
    if (sub_100020608(*(a2 + 4), *(a2 + 12)))
    {
      if (sub_100020608(*(a2 + 100), *(a2 + 108)))
      {
        if (sub_10002807C(*(a2 + 4), *(a2 + 12)))
        {
          if (qword_1025D4620 != -1)
          {
            sub_101B4363C();
          }

          v5 = qword_1025D4628;
          if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_ERROR, "#LastConfLoc,Skipping new location with coordinate in null-island", buf, 2u);
          }

          result = sub_10000A100(121, 0);
          if (result)
          {
            sub_101B4386C();
            return 0;
          }
        }

        else if (sub_10002807C(*(a2 + 100), *(a2 + 108)))
        {
          if (qword_1025D4620 != -1)
          {
            sub_101B4363C();
          }

          v8 = qword_1025D4628;
          if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_ERROR))
          {
            *v9 = 0;
            _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_ERROR, "#LastConfLoc,Skipping new location with rawCoordinate in null-island", v9, 2u);
          }

          result = sub_10000A100(121, 0);
          if (result)
          {
            sub_101B43788();
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
        if (qword_1025D4620 != -1)
        {
          sub_101B4363C();
        }

        v7 = qword_1025D4628;
        if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_ERROR))
        {
          *v11 = 0;
          _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_ERROR, "#LastConfLoc,Skipping new location with invalid rawCoordinate", v11, 2u);
        }

        result = sub_10000A100(121, 0);
        if (result)
        {
          sub_101B43950();
          return 0;
        }
      }
    }

    else
    {
      if (qword_1025D4620 != -1)
      {
        sub_101B4363C();
      }

      v6 = qword_1025D4628;
      if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_ERROR))
      {
        *v12 = 0;
        _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_ERROR, "#LastConfLoc,Skipping new location with invalid coordinate", v12, 2u);
      }

      result = sub_10000A100(121, 0);
      if (result)
      {
        sub_101B43A34();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_10011802C(uint64_t a1, uint64_t a2, int a3)
{
  [*(a1 + 8) silo];
  Current = CFAbsoluteTimeGetCurrent();
  v7 = (a1 + 104);
  v8 = *(a1 + 104);
  if (Current < v8)
  {
    if (qword_1025D4620 != -1)
    {
      sub_101B4363C();
    }

    v9 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
    {
      v10 = *v7;
      *buf = 134349056;
      *&buf[4] = v10;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "#LastConfLoc,#Warning Last confident location is in future,timestamp,%{public}.3f", buf, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101B43B18((a1 + 104));
    }

    *(a1 + 28) = 0xFFFF;
    *(a1 + 32) = 0u;
    *(a1 + 48) = xmmword_101C75BF0;
    __asm { FMOV            V0.2D, #-1.0 }

    *(a1 + 64) = _Q0;
    *(a1 + 80) = _Q0;
    *(a1 + 96) = _Q0;
    *(a1 + 112) = 0;
    *(a1 + 116) = 0xBFF0000000000000;
    *(a1 + 124) = 0u;
    *(a1 + 140) = 0;
    *(a1 + 144) = 0xBFF0000000000000;
    *(a1 + 152) = 0x7FFFFFFF;
    *(a1 + 156) = 0;
    *(a1 + 164) = 0u;
    *(a1 + 180) = 0;
    sub_100021ED8(buf);
    memcpy((a1 + 184), buf, 0x201uLL);
    v15 = v42;
    v42 = 0u;
    v16 = *(a1 + 712);
    *(a1 + 704) = v15;
    if (v16)
    {
      sub_100008080(v16);
      v17 = *(&v42 + 1);
      v18 = v48[0];
      *(a1 + 784) = v47;
      *(a1 + 800) = v18;
      *(a1 + 809) = *(v48 + 9);
      v19 = v44;
      *(a1 + 720) = v43;
      *(a1 + 736) = v19;
      v20 = v46;
      *(a1 + 752) = v45;
      *(a1 + 768) = v20;
      if (v17)
      {
        sub_100008080(v17);
      }
    }

    else
    {
      v21 = v48[0];
      *(a1 + 784) = v47;
      *(a1 + 800) = v21;
      *(a1 + 809) = *(v48 + 9);
      v22 = v44;
      *(a1 + 720) = v43;
      *(a1 + 736) = v22;
      v23 = v46;
      *(a1 + 752) = v45;
      *(a1 + 768) = v23;
    }

    v8 = *v7;
  }

  v24 = *(a2 + 76);
  if (v24 < v8)
  {
    if (qword_1025D4620 != -1)
    {
      sub_101B43C10();
    }

    v25 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
    {
      v26 = *(a2 + 76);
      v27 = *(a1 + 104);
      v28 = *(a2 + 20);
      v29 = *(a1 + 48);
      *buf = 134350080;
      *&buf[4] = v26;
      *&buf[12] = 2050;
      *&buf[14] = v27;
      *&buf[22] = 2050;
      *&buf[24] = v27 - v26;
      *&buf[32] = 2050;
      *&buf[34] = v28;
      *&buf[42] = 2050;
      *&buf[44] = v29;
      _os_log_impl(dword_100000000, v25, OS_LOG_TYPE_DEBUG, "#LastConfLoc,Skipping new location with an older timestamp,%{public}.3f,cached,%{public}.3f,diff,%{public}.3f,hunc,%{public}.2f,cached_hunc,%{public}.2f", buf, 0x34u);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4620 != -1)
      {
        sub_101B43C10();
      }

      v40 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "BOOL CLLastConfidentLocation::isPreviousLocationPreferred(const CLDaemonLocation &, BOOL)", "%s\n", v40);
      if (v40 != buf)
      {
        free(v40);
      }
    }

    return 1;
  }

  v32 = *(a1 + 48);
  v31 = (a1 + 48);
  if (v32 < 65.0)
  {
    v34 = *(a2 + 20);
    v33 = (a2 + 20);
    v35 = v34 >= 65.0 ? 1 : a3;
    if (v24 < v8 + 10.0 && v35 != 0)
    {
      if (qword_1025D4620 != -1)
      {
        sub_101B43C10();
      }

      v37 = qword_1025D4628;
      if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
      {
        v38 = *v33;
        v39 = *v31;
        *buf = 134349312;
        *&buf[4] = v38;
        *&buf[12] = 2050;
        *&buf[14] = v39;
        _os_log_impl(dword_100000000, v37, OS_LOG_TYPE_DEBUG, "#LastConfLoc,Skipping new location since cached location is more confident,hunc,%{public}.2f,cached_hunc,%{public}.2f", buf, 0x16u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101B43C38(v33, v31);
      }

      return 1;
    }
  }

  return 0;
}

void sub_1001184A8(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4)
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
    v8 = _os_activity_create(dword_100000000, "CL: CLStreamingAwareLocationProvider::onLocalLocationNotification", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
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
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLStreamingAwareLocationProvider::onLocalLocationNotification, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v11 = 0;
  }

  sub_100118674(a4, v7, a2, a3);
  if (v11 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

uint64_t sub_100118674(uint64_t a1, uint64_t a2, _DWORD *a3, uint64_t a4)
{
  if (qword_1025D47B0 != -1)
  {
    sub_101A83044();
  }

  v7 = qword_1025D47B8;
  if (os_log_type_enabled(qword_1025D47B8, OS_LOG_TYPE_INFO))
  {
    v8 = *a3;
    v12[0] = 68289282;
    v12[1] = 0;
    v13 = 2082;
    v14 = "";
    v15 = 2050;
    v16 = v8;
    _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Received local notification, notification:%{public, location:CLLocationProvider_Type::Notification}lld}", v12, 0x1Cu);
  }

  v9 = *(a1 + 128);
  Current = CFAbsoluteTimeGetCurrent();
  return sub_10011877C(v9, 0, a3, a4, Current);
}

uint64_t sub_10011877C(uint64_t a1, unsigned int a2, _DWORD *a3, uint64_t a4, double a5)
{
  v8 = a2;
  v48 = a2;
  if (*a3 >= 3u)
  {
    if (*a3 != 9)
    {
      goto LABEL_16;
    }

    if (qword_1025D47B0 != -1)
    {
      sub_101A7D5D0();
    }

    v13 = qword_1025D47B8;
    if (os_log_type_enabled(qword_1025D47B8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289282;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      *&buf[18] = 2050;
      *&buf[20] = v8;
      _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Source no longer available, source:%{public, location:CLStreamingAwareLocationProviderStateMachine::LocationSource}lld}", buf, 0x1Cu);
    }

    *buf = &v48;
    v11 = sub_1000B91DC(a1 + 40, &v48);
    v12 = 1;
  }

  else
  {
    if (qword_1025D47B0 != -1)
    {
      sub_101A7D5D0();
    }

    v10 = qword_1025D47B8;
    if (os_log_type_enabled(qword_1025D47B8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289282;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      *&buf[18] = 2050;
      *&buf[20] = v8;
      _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Source now available, source:%{public, location:CLStreamingAwareLocationProviderStateMachine::LocationSource}lld}", buf, 0x1Cu);
    }

    if (*(a4 + 96) == 1)
    {
      *buf = &v48;
      v11 = sub_1000B91DC(a1 + 40, &v48);
      v12 = 3;
    }

    else
    {
      *buf = &v48;
      v11 = sub_1000B91DC(a1 + 40, &v48);
      v12 = 2;
    }
  }

  *(v11 + 8) = v12;
  v8 = v48;
LABEL_16:
  if (v8 == 1)
  {
    v14 = (a1 + 64);
    v15 = a1 + 40;
    v16 = (a1 + 72);
    if (*(a1 + 72) - *(a1 + 64) < 0x2CDuLL)
    {
      *buf = &v48;
      v20 = sub_1000B91DC(v15, &v48);
      v22 = *(a1 + 72);
      v21 = *(a1 + 80);
      if (v22 >= v21)
      {
        v24 = *v14;
        v25 = v22 - *v14;
        v26 = (v25 >> 2) + 1;
        if (v26 >> 62)
        {
          sub_10028C64C();
        }

        v27 = v21 - v24;
        if (v27 >> 1 > v26)
        {
          v26 = v27 >> 1;
        }

        v28 = v27 >= 0x7FFFFFFFFFFFFFFCLL;
        v29 = 0x3FFFFFFFFFFFFFFFLL;
        if (!v28)
        {
          v29 = v26;
        }

        if (v29)
        {
          sub_1000B85D0(a1 + 64, v29);
        }

        v30 = (4 * (v25 >> 2));
        *v30 = *(v20 + 8);
        v23 = v30 + 1;
        memcpy(0, v24, v25);
        v31 = *(a1 + 64);
        *(a1 + 64) = 0;
        *(a1 + 72) = v23;
        *(a1 + 80) = 0;
        if (v31)
        {
          operator delete(v31);
        }
      }

      else
      {
        *v22 = *(v20 + 8);
        v23 = v22 + 4;
      }

      *(a1 + 72) = v23;
      v19 = 180;
    }

    else
    {
      *buf = &v48;
      v17 = sub_1000B91DC(v15, &v48);
      v18 = *(a1 + 88);
      *(*(a1 + 64) + 4 * (v18 % 180)) = *(v17 + 8);
      v19 = v18 + 1;
    }

    *(a1 + 88) = v19;
    if (qword_1025D47B0 != -1)
    {
      sub_101A7D564();
    }

    v32 = qword_1025D47B8;
    if (os_log_type_enabled(qword_1025D47B8, OS_LOG_TYPE_DEBUG))
    {
      v33 = *v16;
      if (*v14 == *v16)
      {
        v40 = 0;
        v34 = 0;
        v37 = 0;
        v43 = 0;
      }

      else
      {
        v34 = 0;
        v35 = *v14;
        do
        {
          v36 = *v35;
          v35 += 4;
          if (v36 == 3)
          {
            ++v34;
          }
        }

        while (v35 != v33);
        v37 = 0;
        v38 = *v14;
        do
        {
          v39 = *v38;
          v38 += 4;
          if (v39 == 2)
          {
            ++v37;
          }
        }

        while (v38 != v33);
        v40 = 0;
        v41 = *v14;
        do
        {
          v42 = *v41;
          v41 += 4;
          if (v42 == 1)
          {
            ++v40;
          }
        }

        while (v41 != v33);
        v43 = 0;
        v44 = *v14;
        do
        {
          v45 = *v44;
          v44 += 4;
          if (!v45)
          {
            ++v43;
          }
        }

        while (v44 != v33);
      }

      v46 = (v33 - *v14) >> 2;
      *buf = 134350080;
      *&buf[4] = v34;
      *&buf[12] = 2050;
      *&buf[14] = v37;
      *&buf[22] = 2050;
      *&buf[24] = v40;
      v50 = 2050;
      v51 = v43;
      v52 = 2050;
      v53 = v46;
      _os_log_impl(dword_100000000, v32, OS_LOG_TYPE_DEBUG, "Companion Availability Statistics,ahq,%{public}ld,a,%{public}ld,ua,%{public}ld,uk,%{public}ld,s,%{public}zu", buf, 0x34u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101A7D8DC((a1 + 64), (a1 + 72));
    }
  }

  (*(*a1 + 96))(a1, a5);
  return (*(*a1 + 104))(a1, v48, a3, a4, a5);
}

uint64_t sub_100118CD4(uint64_t a1, unsigned int a2)
{
  if (a2 == 39)
  {
    v2 = 0;
  }

  else
  {
    v2 = a2;
  }

  if (a2 < 6)
  {
    v2 = 0;
  }

  v4 = v2;
  return (*(*(a1 - 120) + 152))();
}

uint64_t sub_100118D68(uint64_t a1, __int128 *a2)
{
  *&v24[24] = 0;
  v11 = sub_100040914(a1, *(a1 + 352));
  v4 = a2[11];
  v22 = a2[10];
  v23 = v4;
  *v24 = a2[12];
  *&v24[14] = *(a2 + 206);
  v5 = a2[7];
  v18 = a2[6];
  v19 = v5;
  v6 = a2[9];
  v20 = a2[8];
  v21 = v6;
  v7 = a2[3];
  v14 = a2[2];
  v15 = v7;
  v8 = a2[5];
  v16 = a2[4];
  v17 = v8;
  v9 = a2[1];
  v12 = *a2;
  v13 = v9;
  return sub_100013B00(a1, 51, &v11, 232);
}

void sub_100118E40(uint64_t a1, void *a2)
{
  if ([a2 referenceFrame] == 1)
  {
    v4 = sub_10000B1F8();
    sub_10000B230(buf);
    sub_10000B324(v4, buf[0].i8);
    v8[0] = 24;
    buf[0].i32[0] = 24;
    buf[0].i32[1] = sub_10000AD98(v8);
    v9 = 21;
    v8[0] = 21;
    v8[1] = sub_10000AD98(&v9);
    v5 = sub_10000AE98();
    sub_100118FBC(v5, buf, v8, a2);
    v6 = *(a1 + 304);
    if (v6)
    {
      sub_10011A2B8(v6, a2);
    }
  }

  else
  {
    if (qword_1025D4600 != -1)
    {
      sub_1002976C8();
    }

    v7 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_FAULT))
    {
      buf[0].i32[0] = 67240192;
      buf[0].i32[1] = [a2 referenceFrame];
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_FAULT, "LocationController,onBackgroundInertialOdometryState, unsupported reference frame: %{public}d", buf, 8u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018FBC80(a2);
    }
  }
}

void sub_100118FBC(uint64_t a1, int32x4_t *a2, int *a3, void *a4)
{
  if (*(a1 + 16))
  {
    if (vmaxv_u16(vmovn_s32(vceqzq_s32(*a2))))
    {
      if (qword_1025D4600 != -1)
      {
        sub_100287074();
      }

      v6 = qword_1025D4608;
      if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
      {
        if (a2->i32[0])
        {
          v7 = a2->i32[1] == 0;
        }

        else
        {
          v7 = 1;
        }

        v8 = !v7;
        if (*a3)
        {
          v9 = a3[1] == 0;
        }

        else
        {
          v9 = 1;
        }

        v10 = !v9;
        *buf = 67109376;
        *v71 = v8;
        *&v71[4] = 1024;
        *&v71[6] = v10;
        _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "#locctl,#rec,recordMessage,InertialOdometry,silo entry invalid,from_valid,%d,to_valid,%d", buf, 0xEu);
      }

      if (sub_10000A100(121, 2))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1025D4600 != -1)
        {
          sub_1018D8CDC();
        }

        if (a2->i32[0])
        {
          v11 = a2->i32[1] == 0;
        }

        else
        {
          v11 = 1;
        }

        v12 = !v11;
        if (*a3)
        {
          v13 = a3[1] == 0;
        }

        else
        {
          v13 = 1;
        }

        v14 = !v13;
        v65[0] = 67109376;
        v65[1] = v12;
        v66 = 1024;
        v67 = v14;
        v15 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "void CLLocationControllerRecorder::recordMessage(const CLLocationControllerRecorder_Types::Silo &, const CLLocationControllerRecorder_Types::Silo &, const CMOdometry *)", "%s\n", v15);
        if (v15 != buf)
        {
          free(v15);
        }
      }
    }

    else
    {
      sub_10000AED0(v65);
      v18 = sub_10000B1F8();
      sub_10000AED4(v18, v61);
      v60 = 4;
      sub_10000AFE4(v65, &v60, a2->i32, a3, v61);
      v69 |= 2u;
      v19 = v68;
      if (!v68)
      {
        operator new();
      }

      *(v68 + 492) |= 0x800u;
      v20 = *(v19 + 352);
      if (!v20)
      {
        operator new();
      }

      *(v20 + 200) |= 0x80000u;
      v21 = *(v20 + 152);
      if (!v21)
      {
        operator new();
      }

      *(v21 + 28) |= 1u;
      *(v21 + 8) = -1;
      if (!sub_100437D64(1u))
      {
        __assert_rtn("set_notification_type", "CLPLocationController.pb.h", 13462, "::CLP::LogEntry::PrivateData::InertialOdometryNotification_NotificationType_IsValid(value)");
      }

      v22 = *(v21 + 28);
      *(v21 + 12) = 1;
      *(v21 + 28) = v22 | 6;
      v23 = *(v21 + 16);
      if (!v23)
      {
        operator new();
      }

      v24 = v23[5];
      v25 = v23[4];
      if (v25 >= v24)
      {
        if (v24 == v23[6])
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v23 + 2), v24 + 1);
          v24 = v23[5];
        }

        v23[5] = v24 + 1;
        sub_10011A6E0();
      }

      v26 = *(v23 + 1);
      v23[4] = v25 + 1;
      sub_1001199E4(a4, *(v26 + 8 * v25));
      v27 = sub_10000BFC0(a1);
      if (*(a1 + 8) == 1)
      {
        v28 = v27;
        if (qword_1025D4600 != -1)
        {
          sub_1018D8CDC();
        }

        v29 = qword_1025D4608;
        if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
        {
          sub_101322EE0(&v60, v62);
          if (v62[23] >= 0)
          {
            v30 = v62;
          }

          else
          {
            v30 = *v62;
          }

          LODWORD(v53[0]) = a2->i32[0];
          sub_1013230DC(v53, v58);
          if (v59 >= 0)
          {
            v31 = v58;
          }

          else
          {
            v31 = v58[0];
          }

          v55 = *a3;
          v32 = __p;
          sub_1013230DC(&v55, __p);
          if (v57 < 0)
          {
            v32 = __p[0];
          }

          v33 = sub_10000B1F8();
          v34 = sub_100125220(v33);
          *buf = 67110146;
          *v71 = v28;
          *&v71[4] = 2080;
          *&v71[6] = v30;
          *&v71[14] = 2080;
          *&v71[16] = v31;
          *&v71[24] = 2080;
          *&v71[26] = v32;
          v72 = 2050;
          v73 = v34;
          _os_log_impl(dword_100000000, v29, OS_LOG_TYPE_DEBUG, "#locctl,#rec,recordMessage,InertialOdometry,success,%d,message_type,%s,from,%s,to,%s,propagation_us,%{public}.3f", buf, 0x30u);
          if (v57 < 0)
          {
            operator delete(__p[0]);
          }

          if (v59 < 0)
          {
            operator delete(v58[0]);
          }

          if ((v62[23] & 0x80000000) != 0)
          {
            operator delete(*v62);
          }
        }

        if (sub_10000A100(121, 2))
        {
          sub_1018D8D04(buf);
          sub_101322EE0(&v60, v58);
          if (v59 >= 0)
          {
            v41 = v58;
          }

          else
          {
            v41 = v58[0];
          }

          v55 = a2->i32[0];
          v42 = __p;
          sub_1013230DC(&v55, __p);
          if (v57 < 0)
          {
            v42 = __p[0];
          }

          v52 = *a3;
          v43 = v53;
          sub_1013230DC(&v52, v53);
          if (v54 < 0)
          {
            v43 = v53[0];
          }

          v44 = sub_10000B1F8();
          v45 = sub_100125220(v44);
          *v62 = 67110146;
          *&v62[4] = v28;
          *&v62[8] = 2080;
          *&v62[10] = v41;
          *&v62[18] = 2080;
          *&v62[20] = v42;
          *&v62[28] = 2080;
          *&v62[30] = v43;
          v63 = 2050;
          v64 = v45;
          v46 = _os_log_send_and_compose_impl();
          if (v54 < 0)
          {
            operator delete(v53[0]);
          }

          if (v57 < 0)
          {
            operator delete(__p[0]);
          }

          if (v59 < 0)
          {
            operator delete(v58[0]);
          }

          sub_100152C7C("Generic", 1, 0, 2, "void CLLocationControllerRecorder::recordMessage(const CLLocationControllerRecorder_Types::Silo &, const CLLocationControllerRecorder_Types::Silo &, const CMOdometry *)", "%s\n", v46);
          if (v46 != buf)
          {
            free(v46);
          }
        }

        if (qword_1025D4600 != -1)
        {
          sub_1018D8CDC();
        }

        v35 = qword_1025D4608;
        if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
        {
          v36 = [a4 description];
          v37 = sub_10000B1F8();
          *v62 = 0;
          v38 = sub_10001A6B0(v37, v62);
          v39 = sub_10000B1F8();
          v40 = sub_100125220(v39);
          *buf = 138543874;
          *v71 = v36;
          *&v71[8] = 2050;
          *&v71[10] = v38;
          *&v71[18] = 2050;
          *&v71[20] = v40;
          _os_log_impl(dword_100000000, v35, OS_LOG_TYPE_DEBUG, "#locctl,#rec,#pbio CMOdometry, %{public}@, now, %{public}.3f, propagation_us, %{public}.3f", buf, 0x20u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_1018D8D04(buf);
          v47 = [a4 description];
          v48 = sub_1000281DC();
          v49 = sub_10000B1F8();
          v50 = sub_100125220(v49);
          *v62 = 138543874;
          *&v62[4] = v47;
          *&v62[12] = 2050;
          *&v62[14] = v48;
          *&v62[22] = 2050;
          *&v62[24] = v50;
          v51 = _os_log_send_and_compose_impl();
          sub_100152C7C("Generic", 1, 0, 2, "void CLLocationControllerRecorder::recordMessage(const CLLocationControllerRecorder_Types::Silo &, const CLLocationControllerRecorder_Types::Silo &, const CMOdometry *)", "%s\n", v51);
          if (v51 != buf)
          {
            free(v51);
          }
        }
      }

      sub_10000CE1C(v65);
    }
  }
}

void *sub_100119958(void *result)
{
  *result = &off_1024B49C0;
  result[1] = 0;
  result[2] = 0;
  result[3] = 0;
  return result;
}

uint64_t sub_10011997C(uint64_t result)
{
  *(result + 8) = 0;
  *(result + 16) = 0;
  *result = off_1024B4948;
  *(result + 24) = 0;
  *(result + 32) = 0;
  return result;
}

double sub_1001199A8(uint64_t a1)
{
  *a1 = off_102454750;
  *(a1 + 88) = 0;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 70) = 0u;
  return result;
}

void sub_1001199E4(void *a1, uint64_t a2)
{
  if (a2)
  {
    [a1 timestamp];
    *(a2 + 92) |= 2u;
    *(a2 + 16) = v4;
    [a1 rotationArbitraryToTrueNorth];
    if (v5 != 0.0)
    {
      *(a2 + 92) |= 0x40000u;
      *(a2 + 80) = v5;
    }

    if ([a1 deltaPositionX])
    {
      [objc_msgSend(a1 "deltaPositionX")];
      *(a2 + 92) |= 8u;
      *(a2 + 28) = v6;
    }

    if ([a1 deltaPositionY])
    {
      [objc_msgSend(a1 "deltaPositionY")];
      *(a2 + 92) |= 0x10u;
      *(a2 + 32) = v7;
    }

    if ([a1 deltaPositionZ])
    {
      [objc_msgSend(a1 "deltaPositionZ")];
      *(a2 + 92) |= 0x20u;
      *(a2 + 36) = v8;
    }

    if ([a1 deltaVelocityX])
    {
      [objc_msgSend(a1 "deltaVelocityX")];
      *(a2 + 92) |= 0x40u;
      *(a2 + 40) = v9;
    }

    if ([a1 deltaVelocityY])
    {
      [objc_msgSend(a1 "deltaVelocityY")];
      *(a2 + 92) |= 0x80u;
      *(a2 + 44) = v10;
    }

    if ([a1 deltaVelocityZ])
    {
      [objc_msgSend(a1 "deltaVelocityZ")];
      *(a2 + 92) |= 0x100u;
      *(a2 + 48) = v11;
    }

    if ([a1 quaternionX])
    {
      [objc_msgSend(a1 "quaternionX")];
      *(a2 + 92) |= 0x200u;
      *(a2 + 52) = v12;
    }

    if ([a1 quaternionY])
    {
      [objc_msgSend(a1 "quaternionY")];
      *(a2 + 92) |= 0x400u;
      *(a2 + 56) = v13;
    }

    if ([a1 quaternionZ])
    {
      [objc_msgSend(a1 "quaternionZ")];
      *(a2 + 92) |= 0x800u;
      *(a2 + 60) = v14;
    }

    if ([a1 quaternionW])
    {
      [objc_msgSend(a1 "quaternionW")];
      *(a2 + 92) |= 0x1000u;
      *(a2 + 64) = v15;
    }

    v22[0] = [a1 referenceFrame];
    v16 = sub_100119D90(v22);
    if (!sub_10041ECEC(v16))
    {
      sub_101882FD0();
    }

    *(a2 + 92) |= 0x2000u;
    *(a2 + 68) = v16;
    v22[0] = [a1 staticFlag];
    v17 = sub_100119EA8(v22);
    if (!sub_10041ECF8(v17))
    {
      sub_101882FFC();
    }

    *(a2 + 92) |= 0x20000u;
    *(a2 + 76) = v17;
    v18 = [a1 isDOTBiasChangePossible];
    *(a2 + 92) |= 0x80000u;
    *(a2 + 75) = v18;
    v19 = [a1 isMounted];
    *(a2 + 92) |= 0x100000u;
    *(a2 + 84) = v19;
    v20 = [a1 isZUPT];
    *(a2 + 92) |= 0x200000u;
    *(a2 + 85) = v20;
  }

  else
  {
    if (qword_1025D4730 != -1)
    {
      sub_101B83560();
    }

    v21 = qword_1025D4738;
    if (os_log_type_enabled(qword_1025D4738, OS_LOG_TYPE_FAULT))
    {
      LOWORD(v22[0]) = 0;
      _os_log_impl(dword_100000000, v21, OS_LOG_TYPE_FAULT, "ConvertCMOdometryStateToProtobuf,invalid pMsg pointer", v22, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_101B8C9FC();
    }
  }
}

uint64_t sub_100119D90(uint64_t *a1)
{
  if (*a1 == 1)
  {
    return 1;
  }

  if (*a1 == 8)
  {
    return 2;
  }

  if (qword_1025D4730 != -1)
  {
    sub_101B83560();
  }

  v3 = qword_1025D4738;
  if (os_log_type_enabled(qword_1025D4738, OS_LOG_TYPE_ERROR))
  {
    v4 = *a1;
    v6[0] = 67240192;
    v6[1] = v4;
    _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_ERROR, "ConvertCMInertialOdometryReferenceFrameTypeToProtobuf,unhandled type,%{public}d", v6, 8u);
  }

  v5 = sub_10000A100(121, 0);
  result = 0;
  if (v5)
  {
    sub_101B8C824(a1);
    return 0;
  }

  return result;
}

uint64_t sub_100119EA8(uint64_t *a1)
{
  if (*a1 < 3)
  {
    return *a1 + 1;
  }

  if (qword_1025D4730 != -1)
  {
    sub_101B83560();
  }

  v3 = qword_1025D4738;
  if (os_log_type_enabled(qword_1025D4738, OS_LOG_TYPE_ERROR))
  {
    v4 = *a1;
    v6[0] = 67240192;
    v6[1] = v4;
    _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_ERROR, "ConvertCMInertialOdometryStaticIndicatorTypeToProtobuf,unhandled type,%{public}d", v6, 8u);
  }

  v5 = sub_10000A100(121, 0);
  result = 0;
  if (v5)
  {
    sub_101B8C910(a1);
    return 0;
  }

  return result;
}

uint64_t sub_100119FB0(uint64_t a1, unsigned int a2)
{
  LOBYTE(v3) = *(a1 + 28);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_26;
  }

  if (*(a1 + 28))
  {
    v5 = *(a1 + 8);
    if ((v5 & 0x80000000) != 0)
    {
      v4 = 11;
      if ((v3 & 2) == 0)
      {
        goto LABEL_19;
      }
    }

    else if (v5 >= 0x80)
    {
      v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5, a2) + 1;
      v3 = *(a1 + 28);
      if ((v3 & 2) == 0)
      {
        goto LABEL_19;
      }
    }

    else
    {
      v4 = 2;
      if ((v3 & 2) == 0)
      {
        goto LABEL_19;
      }
    }
  }

  else
  {
    v4 = 0;
    if ((*(a1 + 28) & 2) == 0)
    {
      goto LABEL_19;
    }
  }

  v6 = *(a1 + 12);
  if ((v6 & 0x80000000) != 0)
  {
    v7 = 11;
  }

  else if (v6 >= 0x80)
  {
    v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6, a2) + 1;
    v3 = *(a1 + 28);
  }

  else
  {
    v7 = 2;
  }

  v4 = (v7 + v4);
LABEL_19:
  if ((v3 & 4) != 0)
  {
    v8 = *(a1 + 16);
    if (!v8)
    {
      v8 = *(qword_102637EE8 + 16);
    }

    v9 = sub_10011A4C0(v8, a2);
    v11 = v9;
    if (v9 >= 0x80)
    {
      v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9, v10);
    }

    else
    {
      v12 = 1;
    }

    v4 = (v4 + v11 + v12 + 1);
  }

LABEL_26:
  *(a1 + 24) = v4;
  return v4;
}

uint64_t sub_10011A0AC(uint64_t result, const wireless_diagnostics::google::protobuf::MessageLite *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 28);
  if ((v6 & 1) == 0)
  {
    if ((v6 & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(2, *(v5 + 12), a2, a4);
    if ((*(v5 + 28) & 4) == 0)
    {
      return result;
    }

    goto LABEL_7;
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(1, *(result + 8), a2, a4);
  v6 = *(v5 + 28);
  if ((v6 & 2) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if ((v6 & 4) == 0)
  {
    return result;
  }

LABEL_7:
  v7 = *(v5 + 16);
  if (!v7)
  {
    v7 = *(qword_102637EE8 + 16);
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(3, v7, a2, a4);
}

void sub_10011A148(wireless_diagnostics::google::protobuf::MessageLite *this)
{
  *this = &off_1024B49C0;
  if (qword_102637EE8 != this)
  {
    v2 = *(this + 2);
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

void sub_10011A1D4(uint64_t *a1)
{
  sub_10011A260(a1);

  operator delete();
}

void sub_10011A20C(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = off_102454750;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);

  operator delete();
}

void sub_10011A260(uint64_t *a1)
{
  *a1 = off_1024B4948;
  sub_100027438(a1 + 1);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_10011A2B8(uint64_t a1, void *a2)
{
  v11 = 0.0;
  v4 = sub_10000B1F8();
  sub_10000AED4(v4, v10);
  if (sub_100125300(v10, &v11))
  {
    if (qword_1025D4600 != -1)
    {
      sub_101AB30B4();
    }

    v5 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_INFO))
    {
      [a2 rotationArbitraryToTrueNorth];
      *buf = 134349056;
      v13 = v6;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_INFO, "#pbio CLProactiveInertialOdometryManager::onBackgroundInertialOdometryState, CMOdometry::rotationArbitraryToTrueNorth, %{public}.3f", buf, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101AB3418();
    }

    [a2 timestamp];
    v9 = v7 + v11;
    sub_10011F14C(a1, &v9, a2, buf);
    sub_10011F8F0(a1, buf);
  }

  else
  {
    if (qword_1025D4600 != -1)
    {
      sub_101AB30B4();
    }

    v8 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v13 = *&a2;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_INFO, "#pbio cannot compute fMachContinuousToCFAbsoluteOffset_s, discarding sample %@", buf, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101AB3320(a2);
    }
  }
}

uint64_t sub_10011A4C0(uint64_t a1, unsigned int a2)
{
  v3 = *(a1 + 16);
  if (v3 >= 1)
  {
    v4 = 0;
    do
    {
      v5 = sub_10011A540(*(*(a1 + 8) + 8 * v4), a2);
      v6 = v5;
      if (v5 >= 0x80)
      {
        v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5, a2);
      }

      else
      {
        v7 = 1;
      }

      v3 = (v6 + v3 + v7);
      ++v4;
    }

    while (v4 < *(a1 + 16));
  }

  *(a1 + 32) = v3;
  return v3;
}

uint64_t sub_10011A540(unsigned int *a1, unsigned int a2)
{
  v3 = a1[23];
  if (v3)
  {
    v4 = ((v3 << 31) >> 31) & 9;
    if ((v3 & 2) != 0)
    {
      v4 += 9;
    }

    if ((v3 & 4) != 0)
    {
      v4 += 5;
    }

    if ((v3 & 8) != 0)
    {
      v4 += 5;
    }

    if ((v3 & 0x10) != 0)
    {
      v4 += 5;
    }

    if ((v3 & 0x20) != 0)
    {
      v4 += 5;
    }

    if ((v3 & 0x40) != 0)
    {
      v4 += 5;
    }

    if ((v3 & 0x80) != 0)
    {
      result = v4 + 5;
    }

    else
    {
      result = v4;
    }
  }

  else
  {
    result = 0;
  }

  if ((v3 & 0xFF00) != 0)
  {
    v6 = result + 5;
    if ((v3 & 0x100) == 0)
    {
      v6 = result;
    }

    if ((v3 & 0x200) != 0)
    {
      v6 += 5;
    }

    if ((v3 & 0x400) != 0)
    {
      v6 += 5;
    }

    if ((v3 & 0x800) != 0)
    {
      v6 += 5;
    }

    if ((v3 & 0x1000) != 0)
    {
      v7 = v6 + 5;
    }

    else
    {
      v7 = v6;
    }

    if ((v3 & 0x2000) != 0)
    {
      v8 = a1[17];
      if ((v8 & 0x80000000) != 0)
      {
        v9 = 11;
      }

      else if (v8 >= 0x80)
      {
        v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v8, a2) + 1;
        v3 = a1[23];
      }

      else
      {
        v9 = 2;
      }

      v7 += v9;
    }

    v10 = ((v3 >> 13) & 2) + v7;
    if ((v3 & 0x8000) != 0)
    {
      result = v10 + 3;
    }

    else
    {
      result = v10;
    }
  }

  if ((v3 & 0xFF0000) != 0)
  {
    if ((v3 & 0x10000) != 0)
    {
      v11 = result + 3;
    }

    else
    {
      v11 = result;
    }

    if ((v3 & 0x20000) != 0)
    {
      v12 = a1[19];
      if ((v12 & 0x80000000) != 0)
      {
        v13 = 12;
      }

      else if (v12 >= 0x80)
      {
        v13 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v12, a2) + 2;
        v3 = a1[23];
      }

      else
      {
        v13 = 3;
      }

      v11 += v13;
    }

    v14 = v11 + 6;
    if ((v3 & 0x40000) == 0)
    {
      v14 = v11;
    }

    if ((v3 & 0x80000) != 0)
    {
      v14 += 3;
    }

    if ((v3 & 0x100000) != 0)
    {
      v14 += 3;
    }

    if ((v3 & 0x200000) != 0)
    {
      result = v14 + 3;
    }

    else
    {
      result = v14;
    }
  }

  a1[22] = result;
  return result;
}

uint64_t sub_10011A744(uint64_t result, wireless_diagnostics::google::protobuf::MessageLite *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  if (*(result + 16) >= 1)
  {
    v5 = result;
    v6 = 0;
    do
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, *(*(v5 + 8) + 8 * v6++), a2, a4);
    }

    while (v6 < *(v5 + 16));
  }

  return result;
}

uint64_t sub_10011A7A8(uint64_t result, int a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 92);
  if (v6)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(1, a2, *(result + 8), a3);
    v6 = *(v5 + 92);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_26;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(2, a2, *(v5 + 16), a3);
  v6 = *(v5 + 92);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_27;
  }

LABEL_26:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(3, a2, *(v5 + 24), a3);
  v6 = *(v5 + 92);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_28;
  }

LABEL_27:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(4, a2, *(v5 + 28), a3);
  v6 = *(v5 + 92);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_29;
  }

LABEL_28:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(5, a2, *(v5 + 32), a3);
  v6 = *(v5 + 92);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_30;
  }

LABEL_29:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(6, a2, *(v5 + 36), a3);
  v6 = *(v5 + 92);
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_31;
  }

LABEL_30:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(7, a2, *(v5 + 40), a3);
  v6 = *(v5 + 92);
  if ((v6 & 0x80) == 0)
  {
LABEL_9:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_32;
  }

LABEL_31:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(8, a2, *(v5 + 44), a3);
  v6 = *(v5 + 92);
  if ((v6 & 0x100) == 0)
  {
LABEL_10:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_33;
  }

LABEL_32:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(9, a2, *(v5 + 48), a3);
  v6 = *(v5 + 92);
  if ((v6 & 0x200) == 0)
  {
LABEL_11:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_34;
  }

LABEL_33:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(0xA, a2, *(v5 + 52), a3);
  v6 = *(v5 + 92);
  if ((v6 & 0x400) == 0)
  {
LABEL_12:
    if ((v6 & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_35;
  }

LABEL_34:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(0xB, a2, *(v5 + 56), a3);
  v6 = *(v5 + 92);
  if ((v6 & 0x800) == 0)
  {
LABEL_13:
    if ((v6 & 0x1000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_36;
  }

LABEL_35:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(0xC, a2, *(v5 + 60), a3);
  v6 = *(v5 + 92);
  if ((v6 & 0x1000) == 0)
  {
LABEL_14:
    if ((v6 & 0x2000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_37;
  }

LABEL_36:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(0xD, a2, *(v5 + 64), a3);
  v6 = *(v5 + 92);
  if ((v6 & 0x2000) == 0)
  {
LABEL_15:
    if ((v6 & 0x4000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_38;
  }

LABEL_37:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0xE, *(v5 + 68), a2, a4);
  v6 = *(v5 + 92);
  if ((v6 & 0x4000) == 0)
  {
LABEL_16:
    if ((v6 & 0x8000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_39;
  }

LABEL_38:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0xF, *(v5 + 72), a2, a4);
  v6 = *(v5 + 92);
  if ((v6 & 0x8000) == 0)
  {
LABEL_17:
    if ((v6 & 0x10000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_40;
  }

LABEL_39:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0x10, *(v5 + 73), a2, a4);
  v6 = *(v5 + 92);
  if ((v6 & 0x10000) == 0)
  {
LABEL_18:
    if ((v6 & 0x20000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_41;
  }

LABEL_40:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0x11, *(v5 + 74), a2, a4);
  v6 = *(v5 + 92);
  if ((v6 & 0x20000) == 0)
  {
LABEL_19:
    if ((v6 & 0x40000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_42;
  }

LABEL_41:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0x12, *(v5 + 76), a2, a4);
  v6 = *(v5 + 92);
  if ((v6 & 0x40000) == 0)
  {
LABEL_20:
    if ((v6 & 0x80000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_43;
  }

LABEL_42:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(0x13, a2, *(v5 + 80), a3);
  v6 = *(v5 + 92);
  if ((v6 & 0x80000) == 0)
  {
LABEL_21:
    if ((v6 & 0x100000) == 0)
    {
      goto LABEL_22;
    }

LABEL_44:
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0x15, *(v5 + 84), a2, a4);
    if ((*(v5 + 92) & 0x200000) == 0)
    {
      return result;
    }

    goto LABEL_45;
  }

LABEL_43:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0x14, *(v5 + 75), a2, a4);
  v6 = *(v5 + 92);
  if ((v6 & 0x100000) != 0)
  {
    goto LABEL_44;
  }

LABEL_22:
  if ((v6 & 0x200000) == 0)
  {
    return result;
  }

LABEL_45:
  v7 = *(v5 + 85);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0x16, v7, a2, a4);
}

void sub_10011AA48(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  sub_10011A148(a1);

  operator delete();
}

void sub_10011AA80(uint64_t a1)
{
  v2 = *(a1 + 784);
  v3 = *(a1 + 672) - v2;
  if (v3 <= *(a1 + 56) || v3 >= *(a1 + 64) || *(a1 + 770) == 1 || *(a1 + 882) == 1 || *(a1 + 769) || *(a1 + 881) || (*(a1 + 774) & 4) == 0 || (*(a1 + 886) & 4) == 0 || *(a1 + 1104) != 1 || *(a1 + 1096) > v2)
  {
    sub_10011FA30(a1, a1 + 776, a1 + 664);
    v4 = 0;
    v6 = v5 * v5 + *(a1 + 1064);
    v7 = *(a1 + 1072);
  }

  else
  {
    sub_10011FA30(a1, a1 + 776, a1 + 664);
    v7 = v14;
    *(a1 + 1072) = v14;
    v15 = v14 + *(a1 + 1056);
    if (v15 < 0.0 || v15 >= 6.28318531)
    {
      v15 = fmod(v15, 6.28318531);
      if (v15 < 0.0)
      {
        v15 = v15 + 6.28318531;
      }
    }

    *(a1 + 1056) = v15;
    v6 = *(a1 + 1064);
    v4 = 1;
  }

  v8 = *(a1 + 672);
  v9 = (v8 - *(a1 + 1088)) * (*(a1 + 72) + *(a1 + 80) * fabs(v7));
  v10 = v6 + v9;
  *(a1 + 1064) = v10;
  *(a1 + 1080) = v9;
  *(a1 + 1088) = v8;
  if (v10 >= 6.28318531)
  {
    v11 = 0;
    *(a1 + 1064) = 0x401921FB54442D18;
  }

  else
  {
    v11 = 1;
  }

  *(a1 + 1105) = v11;
  if (v9 <= 1.57079633)
  {
    v12 = 1;
  }

  else
  {
    v12 = 0;
    *(a1 + 1080) = 0x3FF921FB54442D18;
  }

  *(a1 + 1106) = v12;
  v13 = *(a1 + 664);

  sub_10011AFE4(a1, v4, v13);
}

void sub_10011AC40(float *a1)
{
  if ((atomic_load_explicit(&qword_10265C6C8, memory_order_acquire) & 1) == 0)
  {
    sub_1019EA904();
  }

  v2 = sub_10011E6AC(a1);
  if (v4 <= sqrtf((v3 * v3) + (v2 * v2)))
  {
    v5 = -1.0;
  }

  else
  {
    v5 = 1.0;
  }

  v21 = 0x3F80000000000000;
  v22 = 0;
  v6 = sub_10011E6AC(a1);
  v8 = v7;
  v9 = 0;
  v10 = (v7 * v7) + (v6 * v6);
  v12 = v11 * v5;
  v13 = (v11 * -0.0) + (v8 * v5);
  v14 = 0.0;
  v15 = (v11 * 0.0) - (v6 * v5);
  v16 = (v8 * -0.0) + (v6 * 0.0);
  *v20 = v13;
  *&v20[1] = v15;
  *&v20[2] = v16;
  do
  {
    v14 = v14 + (*&v20[v9] * *&v20[v9]);
    ++v9;
  }

  while (v9 != 3);
  v17 = sqrtf(v14);
  if (v17 > *&dword_10265C6BC)
  {
    v18 = -atan2f(sqrtf(v10), v12) / v17;
    v23[0] = v13 * v18;
    v23[1] = v15 * v18;
    v23[2] = v16 * v18;
    sub_10011AD94(&v19, v23);
    sub_10011AE4C(v19.f32, v23, -1.0);
    sub_10011FB70(v23, &v21);
  }
}

double sub_10011AD94(float32x4_t *a1, float *a2)
{
  v4 = 0;
  v5 = 0.0;
  do
  {
    v5 = v5 + (a2[v4] * a2[v4]);
    ++v4;
  }

  while (v4 != 3);
  v6 = sqrtf(v5);
  v7 = 0.5;
  v8 = v6 * 0.5;
  if ((v6 * 0.5) > 0.0)
  {
    v7 = (sinf(v6 * 0.5) / v8) * 0.5;
  }

  a1->f32[0] = v7 * *a2;
  a1->f32[1] = v7 * a2[1];
  a1->f32[2] = v7 * a2[2];
  v9.f32[0] = cosf(v8);
  a1->i32[3] = v9.i32[0];

  *&result = sub_10011E648(a1, v9).u64[0];
  return result;
}

float sub_10011AE4C@<S0>(float *a1@<X0>, float *a2@<X8>, float a3@<S0>)
{
  v4 = a1[2];
  v3 = a1[3];
  v5 = v3 + v3;
  v6 = *a1;
  v7 = a1[1];
  v8 = v7 + v7;
  v9 = v3 * (v3 + v3);
  v10 = ((v7 + v7) * v7) + -1.0;
  v11 = ((v4 + v4) * v4) + -1.0;
  v12 = (v6 + v6) * v7;
  v13 = (v6 + v6) * v4;
  v14 = v3 * (v6 + v6);
  v15 = v8 * v4;
  v16 = v3 * v8;
  v17 = v5 * v4;
  v18 = v9 + (((v6 + v6) * v6) + -1.0);
  v19 = v12 - (v17 * a3);
  v20 = v13 + (v16 * a3);
  v21 = v12 + (v17 * a3);
  v22 = v9 + v10;
  v23 = v15 - (v14 * a3);
  v24 = v13 - (v16 * a3);
  result = v15 + (v14 * a3);
  *a2 = v18;
  a2[1] = v19;
  a2[2] = v20;
  a2[3] = v21;
  a2[4] = v22;
  a2[5] = v23;
  a2[6] = v24;
  a2[7] = result;
  a2[8] = v9 + v11;
  return result;
}

float sub_10011AECC(uint64_t a1, void *a2, unint64_t a3)
{
  if (a2 >= 3)
  {
    sub_101895A3C(a2);
  }

  if (a3 >= 3)
  {
    sub_101895B68(a3);
  }

  return *(a1 + 4 * (a2 + 3 * a3));
}

uint64_t sub_10011AF30(uint64_t a1, unint64_t a2)
{
  if (a2 >= 3)
  {
    sub_101895910(a2);
  }

  return a1 + 4 * a2;
}

float sub_10011AF6C(uint64_t a1, unint64_t a2)
{
  if (a2 >= 3)
  {
    sub_101895EEC(a2);
  }

  return *(a1 + 4 * a2);
}

float sub_10011AFA8(float *a1, float a2, float a3, float a4)
{
  v5[0] = a2;
  v5[1] = a3;
  v5[2] = a4;
  sub_10011AE4C(a1, v6, -1.0);
  return sub_10011FB70(v6, v5);
}

void sub_10011AFE4(uint64_t a1, int a2, double a3)
{
  if (qword_1025D4600 != -1)
  {
    sub_1003121A4();
  }

  v6 = qword_1025D4608;
  if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
  {
    v7 = *(a1 + 1105);
    if (v7 == 1)
    {
      v8 = *(a1 + 1056);
      v9 = *(a1 + 1064);
    }

    else
    {
      v8 = 0;
      v9 = 0xBFF0000000000000;
    }

    v10 = *(a1 + 1088);
    v11 = *(a1 + 1106);
    if (v11 == 1)
    {
      v12 = *(a1 + 1072);
      v13 = *(a1 + 1080);
    }

    else
    {
      v12 = 0;
      v13 = 0xBFF0000000000000;
    }

    *buf = 134351104;
    v16 = a3;
    v17 = 2050;
    v18 = v10;
    v19 = 1026;
    v20 = v7;
    v21 = 2050;
    v22 = v8;
    v23 = 2050;
    v24 = v9;
    v25 = 1026;
    v26 = v11;
    v27 = 2050;
    v28 = v12;
    v29 = 2050;
    v30 = v13;
    v31 = 1026;
    v32 = a2;
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "#pbio,course-filter,timestamp,%{public}.3f,fMachContinuousTimeOfFilterState,%{public}.3f,isCourseEstimateValid,%{public}d,course_rad,%{public}.3f,courseUnertainty_rad2,%{public}.3f,isDeltaCourseEstimateValid,%{public}d,deltaCourse_rad,%{public}.3f,deltaCourseUncertainty_rad2,%{public}.3f,didUpdate,%{public}d", buf, 0x50u);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4600 != -1)
    {
      sub_1019DC4B0();
    }

    v14 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "void CLBackgroundInertialOdometryCalibrationEstimator::printCourseEstimate(const CFTimeInterval, const BOOL)", "%s\n", v14);
    if (v14 != buf)
    {
      free(v14);
    }
  }
}

void *sub_10011B29C(void *result, __int128 *a2)
{
  v2 = (result[6] + 112 * result[4]);
  v4 = a2[4];
  v3 = a2[5];
  v5 = a2[3];
  *(v2 + 95) = *(a2 + 95);
  v2[4] = v4;
  v2[5] = v3;
  v2[3] = v5;
  v6 = *a2;
  v7 = a2[2];
  v2[1] = a2[1];
  v2[2] = v7;
  *v2 = v6;
  v9 = result[6];
  v8 = result[7];
  v10 = v8 - v9;
  if (v8 == v9)
  {
    v14 = 0;
    v12 = result + 5;
    v17 = result[5];
    result[4] = 0;
    if (v17)
    {
      goto LABEL_10;
    }

    v16 = 0;
    goto LABEL_9;
  }

  v11 = 0x6DB6DB6DB6DB6DB7 * (v10 >> 4);
  v12 = result + 5;
  v13 = result[5];
  v14 = (result[4] + 1) % v11;
  result[4] = v14;
  if (v14 + 1 == v11)
  {
    v15 = 0;
  }

  else
  {
    v15 = v14 + 1;
  }

  if (v15 == v13)
  {
    v16 = (v15 + 1) % v11;
LABEL_9:
    *v12 = v16;
  }

LABEL_10:
  v18 = *result;
  v19 = result[1];
  if (*result != v19)
  {
    v20 = (v14 + 1) % (0x6DB6DB6DB6DB6DB7 * (v10 >> 4));
    do
    {
      if (*(v18 + 56) == v14)
      {
        if (v8 == v9)
        {
          v21 = 0;
        }

        else
        {
          v21 = v20;
        }

        *(v18 + 56) = v21;
      }

      v18 += 64;
    }

    while (v18 != v19);
  }

  return result;
}

float64x2_t sub_10011B3A8(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 1107) == 1)
  {
    if (*(a1 + 1106))
    {
      v2 = 64;
    }

    else
    {
      v2 = 0;
    }

    v3 = *(a2 + 110) & 0x9F | v2;
    if (*(a1 + 1105))
    {
      v4 = 32;
    }

    else
    {
      v4 = 0;
    }

    *(a2 + 110) = v4 | v3;
    result = *(a1 + 1072);
    *(a2 + 88) = vcvt_hight_f32_f64(vcvt_f32_f64(*(a1 + 1056)), result);
  }

  return result;
}

void sub_10011B400(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x24924924924924ALL)
  {
    operator new();
  }

  sub_1001D0818();
}

void sub_10011B45C(uint64_t a1, uint64_t *a2)
{
  if (qword_1025D4600 != -1)
  {
    sub_1002F9794();
  }

  v4 = qword_1025D4608;
  if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_INFO))
  {
    v5 = 0x6DB6DB6DB6DB6DB7 * ((a2[1] - *a2) >> 4);
    LODWORD(__p[0]) = 134349056;
    *(__p + 4) = v5;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_INFO, "#pbio forwarding %{public}zu samples to consumers", __p, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101AB3210(a2);
  }

  if (*(a1 + 48) == 1 && *(a1 + 64))
  {
    memset(__p, 0, sizeof(__p));
    sub_10011B644(__p, *a2, a2[1], 0x6DB6DB6DB6DB6DB7 * ((a2[1] - *a2) >> 4));
    v7 = __p[1];
    for (i = __p[0]; i != v7; i += 112)
    {
      sub_10011B710(*(a1 + 64), i);
      sub_10011BAAC(i);
    }

    sub_10011B8FC(*(a1 + 8), __p);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }
  }

  else
  {
    sub_10011B8FC(*(a1 + 8), a2);
  }
}

void sub_10011B5F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10011B61C(void *a1)
{
  v1 = a1[2];
  v2 = a1[1];
  v3 = (a1[3] + (v1 >> 1));
  if (v1)
  {
    return (*(*v3 + v2))();
  }

  else
  {
    return v2(v3);
  }
}

uint64_t sub_10011B644(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_10011B6C0(result, a4);
  }

  return result;
}

void sub_10011B6A4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_10011B6C0(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x24924924924924ALL)
  {
    sub_10011B400(a1, a2);
  }

  sub_10028C64C();
}

void sub_10011B710(uint64_t a1, uint64_t a2)
{
  v4 = (a2 + 8);
  v5 = *(a2 + 8);
  if (*(a1 + 1000) == 1 && *(a1 + 1024) == 1 && *(a1 + 1040) <= v5 && *(a1 + 1048) >= v5)
  {
    v6 = *(a1 + 1032);
    v7 = *(a2 + 110);
    v8 = *(a1 + 968) + (v5 - v6) * *(a1 + 976);
    v9 = vabdd_f64(v5, v6);
    v10 = *(a1 + 984) + v9 * 0.001142;
    *(a2 + 68) = v8;
    *(a2 + 72) = v10;
    *(a2 + 110) = v7 | 0x18;
    v11 = *(a1 + 1008);
    *(a2 + 76) = v11;
    v13 = v9 * 0.016;
    if (v13 < -40.0)
    {
      v13 = -40.0;
    }

    if (v13 > 40.0)
    {
      v13 = 40.0;
    }

    v12 = *(a1 + 1016);
    v14 = __exp10(v13 / 10.0) + v12;
    *(a2 + 80) = v14;
    *(a2 + 16) = v6;
  }

  else
  {
    if (qword_1025D4600 != -1)
    {
      sub_1003121A4();
    }

    v15 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
    {
      v16 = *v4;
      v17 = *(a1 + 1040);
      v18 = *(a1 + 1048);
      v19 = 134349568;
      v20 = v16;
      v21 = 2050;
      v22 = v17;
      v23 = 2050;
      v24 = v18;
      _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_DEBUG, "#pbio, CLBackgroundInertialOdometryNorthAlignment::SetCalibration, sample.timestamp, %{public}.3f, outside of calibration validity window, %{public}.3f, to , %{public}.3f. Not applying calibration.", &v19, 0x20u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1019DCAF0(v4, a1);
    }

    *(a2 + 110) &= 0xE7u;
  }
}

void sub_10011B8FC(uint64_t a1, uint64_t *a2)
{
  if (qword_1025D4600 != -1)
  {
    sub_1002976C8();
  }

  v4 = qword_1025D4608;
  if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_INFO))
  {
    v5 = sub_10000B1F8();
    v16 = 1;
    v6 = sub_10001A6B0(v5, &v16);
    v7 = a2[1];
    v8 = 0x6DB6DB6DB6DB6DB7 * ((v7 - *a2) >> 4);
    if (v7 == *a2)
    {
      v9 = 0xBFF0000000000000;
    }

    else
    {
      v9 = *(v7 - 104);
    }

    v10 = sub_10000B1F8();
    v11 = sub_100125220(v10);
    v16 = 134349824;
    v17 = v6;
    v18 = 2050;
    v19 = v8;
    v20 = 2050;
    v21 = v9;
    v22 = 2050;
    v23 = v11;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_INFO, "LocationController,got IO samples,now_mct,%{public}.3f,count,%{public}zu,last_sample_mct,%{public}.3f,propagation_us,%{public}.3f", &v16, 0x2Au);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018FBD88(a2);
  }

  v14 = *(a1 + 280);
  if (v14)
  {
    (*(*v14 + 520))(v14, a2);
  }

  v15 = *(a1 + 312);
  if (v15)
  {
    sub_100124B08(v15, a2, v12, v13);
  }

  sub_100124EAC(a1 + 800, a2);
}

BOOL sub_10011BAAC(uint64_t a1)
{
  v1 = *(a1 + 110) & 0x18;
  if (v1 == 24 && *(a1 + 104) == 1)
  {
    v3 = __sincosf_stret(*(a1 + 68));
    v4 = *(a1 + 76);
    v5 = *(a1 + 28);
    v6 = *(a1 + 32);
    *(a1 + 28) = v4 * ((v3.__cosval * v5) - (v3.__sinval * v6));
    *(a1 + 32) = v4 * ((v3.__cosval * v6) + (v3.__sinval * v5));
    *(a1 + 104) = 8;
  }

  return v1 == 24;
}

void sub_10011BB24(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = (a1 + 440);
  *(a2 + 8) = xmmword_101C75BF0;
  __asm { FMOV            V0.2D, #-1.0 }

  *(a2 + 24) = _Q0;
  *(a2 + 40) = _Q0;
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  *(a2 + 72) = _Q0;
  *(a2 + 88) = 0;
  v10 = *(a1 + 8);
  *a2 = v10;
  sub_100124394(a1, a2 + 8);
  sub_10011BC28(a1, a2 + 48);
  v11 = *(a1 + 456);
  *(a2 + 96) = *v4;
  *(a2 + 112) = v11;
  v12 = *(a1 + 392);
  *(a2 + 120) = *(a1 + 376);
  *(a2 + 136) = v12;
  *(a2 + 152) = *(a1 + 408);
  *(a2 + 160) = *(a1 + 432);
  *(a2 + 168) = v4[3];
  *(a2 + 200) = *(a1 + 520);
  *(a2 + 184) = *(a1 + 504);
  v13 = *(a1 + 544);
  *(a2 + 208) = *(a1 + 528);
  *(a2 + 224) = v13;
  v14 = *(a1 + 568);
  *(a2 + 240) = v14;
  v15 = *(a1 + 400);
  if (v15 <= 0.0)
  {
    v15 = 1.0;
  }

  *(a2 + 244) = *a1;
  *(a2 + 248) = v15;
  if (v10 < 0.0)
  {
    if (v14)
    {
      *a2 = *(a1 + 560);
    }
  }
}

double sub_10011BC28@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0xBFF0000000000000;
  __asm { FMOV            V0.2D, #-1.0 }

  *(a2 + 24) = _Q0;
  *(a2 + 40) = 0;
  result = *(a1 + 344);
  if (result >= 0.0 && *a1 == 8)
  {
    result = *(a1 + 400);
    if (result > 0.0)
    {
      v8 = 1.0 / result;
      v9 = v8 * *(a1 + 416);
      v10 = -(*(a1 + 424) * v8);
      v11 = *(a1 + 368);
      *a2 = *(a1 + 376);
      *(a2 + 8) = v10;
      *(a2 + 16) = v9;
      *(a2 + 24) = vdupq_n_s64(0x3FB70A3D70A3D70AuLL);
      result = 0.069;
      if (v11 >= 0.069)
      {
        result = v11;
      }

      *(a2 + 40) = result;
      if (*(a1 + 40) > 0.0)
      {
        v12 = *(a1 + 56);
        if (v12 >= 0.0)
        {
          v13 = *(a1 + 80);
          if (v13 <= 0.616850275 || v12 <= 5.0)
          {
            if (*(a1 + 608) == 1)
            {
              v14 = 1.0;
              if (*(a1 + 48) > 0.0)
              {
                v14 = *(a1 + 48);
              }

              result = *(a1 + 64) / v14 * (*(a1 + 64) / v14) + 0.09 + *(a1 + 72) / v14 * (*(a1 + 72) / v14);
              *(a2 + 24) = result;
              *(a2 + 32) = result;
            }
          }

          else
          {
            if (result < v13)
            {
              result = *(a1 + 80);
            }

            *(a2 + 40) = result;
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_10011BD44(uint64_t a1, uint64_t a2, double a3)
{
  if (*a2 > 0.0 && *(a2 + 240))
  {
    *v76 = *(a2 + 96);
    v77 = *(a2 + 112);
    if (*v76 <= 0.0 || v77 <= 0.0)
    {
      if (qword_1025D4770 != -1)
      {
        sub_1002F97A8();
      }

      v10 = qword_1025D4778;
      if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134349056;
        *&buf[4] = a3;
        _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEBUG, "#fusion,InertialOdometry relative altimeter not available,inflating altitude unc,applicabilityTime,%{public}.3f", buf, 0xCu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101A7B5F4(buf);
        *__p = 134349056;
        *&__p[4] = a3;
        v63 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::CLLCFusion::applyIODerivedMeas(IODerivedMeas &, const CFTimeInterval)", "%s\n", v63);
        if (v63 != buf)
        {
          free(v63);
        }
      }
    }

    else
    {
      if (qword_1025D4770 != -1)
      {
        sub_1002F97A8();
      }

      v6 = qword_1025D4778;
      if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134349825;
        *&buf[4] = v76[0];
        *&buf[12] = 2050;
        *&buf[14] = a3;
        *&buf[22] = 2049;
        *v84 = v76[1];
        *&v84[8] = 2050;
        *&v84[10] = v77;
        _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "#fusion,InertialOdometry relative altimeter meas update,IOTime_mct,%{public}.3f,applicabilityTime,%{public}.3f,VVel_mps,%{private}.2f,VVel_var,%{public}.2f", buf, 0x2Au);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101A7B5F4(buf);
        *__p = 134349825;
        *&__p[4] = v76[0];
        v79 = 2050;
        v80 = a3;
        v81 = 2049;
        *v82 = v76[1];
        *&v82[8] = 2050;
        *&v82[10] = v77;
        v64 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::CLLCFusion::applyIODerivedMeas(IODerivedMeas &, const CFTimeInterval)", "%s\n", v64);
        if (v64 != buf)
        {
          free(v64);
        }
      }

      v76[0] = *&a3;
    }

    for (i = *(a1 + 248); i; i = *i)
    {
      if (*v76 <= 0.0 || v77 <= 0.0)
      {
        sub_1006ED108((i + 25), *(a2 + 248));
      }

      else
      {
        sub_1000AF298((i + 25), v76);
      }
    }

    v12 = *(a1 + 224);
    if (v12 != (a1 + 232))
    {
      do
      {
        if (*v76 <= 0.0 || v77 <= 0.0)
        {
          sub_1006ED108((v12 + 29), *(a2 + 248));
        }

        else
        {
          sub_1000AF298((v12 + 29), v76);
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
            v15 = *v14 == v12;
            v12 = v14;
          }

          while (!v15);
        }

        v12 = v14;
      }

      while (v14 != (a1 + 232));
    }

    if (*(a1 + 1104))
    {
      if (*v76 <= 0.0 || v77 <= 0.0)
      {
        sub_1006ED108(a1 + 448, *(a2 + 248));
      }

      else
      {
        v16 = *(a1 + 816);
        if (v16 > *v76 && v16 - *v76 < 1.5)
        {
          if (qword_1025D4770 != -1)
          {
            sub_100224830();
          }

          v18 = qword_1025D4778;
          if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
          {
            *buf = 134349568;
            *&buf[4] = v16;
            *&buf[12] = 2050;
            *&buf[14] = v76[0];
            *&buf[22] = 2050;
            *v84 = v16 - *v76;
            _os_log_impl(dword_100000000, v18, OS_LOG_TYPE_DEBUG, "#fusion,adjust IO derived VVelMeas timestamp,latest selected hypothesis mct,%{public}.3f,is ahead of IO,mct,%{public}.3f,by dt_s,%{public}.3f", buf, 0x20u);
          }

          if (sub_10000A100(121, 2))
          {
            sub_101A7B5F4(buf);
            *__p = 134349568;
            *&__p[4] = v16;
            v79 = 2050;
            v80 = *v76;
            v81 = 2050;
            *v82 = v16 - *v76;
            v65 = _os_log_send_and_compose_impl();
            sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::CLLCFusion::applyIODerivedMeas(IODerivedMeas &, const CFTimeInterval)", "%s\n", v65);
            if (v65 != buf)
            {
              free(v65);
            }
          }

          *v76 = v16 + 0.001;
        }

        sub_1000AF298(a1 + 448, v76);
      }
    }

    v19 = (sub_1001252CC(a1 + 2424, a3, 6.0) & 1) != 0 || sub_100125258(a1 + 2424, a3, 6.0) || sub_1001255A0(a1 + 2424, a3, 6.0) || sub_1001254F8(a1 + 2424);
    v20 = *(a1 + 2824);
    v21 = a3 - v20 < 300.0 && v20 > 0.0;
    if (!sub_10011D140(a1 + 2424, a3, 6.0))
    {
      v22 = *(a1 + 2448) - 1;
      if (v22 < 0xA && ((0x21Fu >> v22) & 1) != 0)
      {
        v23 = 0;
        if (!v19)
        {
LABEL_99:
          v33 = *(a2 + 240);
          if (v33 > 3)
          {
LABEL_100:
            if (!sub_1001253BC(a1 + 2424, a3, -1.0))
            {
              goto LABEL_185;
            }

            v34 = *(a1 + 2224);
            if (v34 < 0.0 || v34 <= a3 && a3 - v34 > 2.0)
            {
              goto LABEL_185;
            }

            if ((*(a1 + 2232) - 1) > 1)
            {
              goto LABEL_185;
            }

            if (qword_1025D4770 != -1)
            {
              sub_100224830();
            }

            v35 = qword_1025D4778;
            if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
            {
              v36 = sub_100D6B9B0(*(a1 + 2232));
              sub_1001FCE40(a1 + 2424, __p);
              v37 = v81 >= 0 ? __p : *__p;
              *buf = 134349570;
              *&buf[4] = a3;
              *&buf[12] = 2082;
              *&buf[14] = v36;
              *&buf[22] = 2082;
              *v84 = v37;
              _os_log_impl(dword_100000000, v35, OS_LOG_TYPE_DEBUG, "#fusion,io_mct,%{public}.3f,override IO derived driving dynamics mode with moving-in-place,prevIO_contxt,%{public}s,motion activity,%{public}s", buf, 0x20u);
              if (SHIBYTE(v81) < 0)
              {
                operator delete(*__p);
              }
            }

            if (sub_10000A100(121, 2))
            {
              bzero(buf, 0x65CuLL);
              if (qword_1025D4770 != -1)
              {
                sub_100224830();
              }

              v73 = sub_100D6B9B0(*(a1 + 2232));
              sub_1001FCE40(a1 + 2424, v76);
              if (v77 >= 0.0)
              {
                v74 = v76;
              }

              else
              {
                v74 = v76[0];
              }

              *__p = 134349570;
              *&__p[4] = a3;
              v79 = 2082;
              v80 = *&v73;
              v81 = 2082;
              *v82 = v74;
              v75 = _os_log_send_and_compose_impl();
              if (SHIBYTE(v77) < 0)
              {
                operator delete(v76[0]);
              }

              sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::CLLCFusion::applyIODerivedMeas(IODerivedMeas &, const CFTimeInterval)", "%s\n", v75);
              if (v75 != buf)
              {
                free(v75);
              }
            }

            v38 = 2;
            goto LABEL_184;
          }

          if (v33 == 1)
          {
            goto LABEL_116;
          }

          v39 = *(a2 + 120);
          if (v39 <= 0.0 || (v40 = *(a2 + 144), v40 <= 0.0) || v39 <= a3 && a3 - v39 > 6.0)
          {
            if (qword_1025D4770 != -1)
            {
              sub_100224830();
            }

            v41 = qword_1025D4778;
            if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
            {
              v42 = *(a2 + 120);
              v43 = sub_100D6B9B0(*(a2 + 240));
              *buf = 134349570;
              *&buf[4] = v42;
              *&buf[12] = 2050;
              *&buf[14] = a3;
              *&buf[22] = 2082;
              *v84 = v43;
              _os_log_impl(dword_100000000, v41, OS_LOG_TYPE_DEBUG, "#fusion,IO ignored,expected valid IO derived GDistanceMove with mct,%{public}.3f,IO applicability time mct,%{public}.3f,IO_contxt,%{public}s", buf, 0x20u);
            }

            result = sub_10000A100(121, 2);
            if (!result)
            {
              goto LABEL_186;
            }

            sub_101A7B5F4(buf);
            v44 = *(a2 + 120);
            v45 = sub_100D6B9B0(*(a2 + 240));
            *__p = 134349570;
            *&__p[4] = v44;
            v79 = 2050;
            v80 = a3;
            v81 = 2082;
            *v82 = v45;
            v46 = _os_log_send_and_compose_impl();
            sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::CLLCFusion::applyIODerivedMeas(IODerivedMeas &, const CFTimeInterval)", "%s\n", v46);
            goto LABEL_130;
          }

          v56 = *(a2 + 244);
          if (v56 != 1)
          {
            if (v39 <= 0.0)
            {
              if (v56 == 8)
              {
                goto LABEL_185;
              }

LABEL_189:
              if (qword_1025D4770 != -1)
              {
                sub_100224830();
              }

              v62 = qword_1025D4778;
              if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_ERROR))
              {
                *buf = 134349056;
                *&buf[4] = a3;
                _os_log_impl(dword_100000000, v62, OS_LOG_TYPE_ERROR, "#fusion,#Error,IO derived meas not used,IO_mct,%{public}.3f", buf, 0xCu);
              }

              result = sub_10000A100(121, 0);
              if (!result)
              {
                goto LABEL_186;
              }

              sub_101A7B5F4(buf);
              *__p = 134349056;
              *&__p[4] = a3;
              v46 = _os_log_send_and_compose_impl();
              sub_100152C7C("Generic", 1, 0, 0, "BOOL cllcf::CLLCFusion::applyIODerivedMeas(IODerivedMeas &, const CFTimeInterval)", "%s\n", v46);
LABEL_130:
              if (v46 != buf)
              {
                free(v46);
              }

              result = 0;
              goto LABEL_186;
            }

            v57 = *(a2 + 128);
            if (v57 > 0.001)
            {
              if (v56 == 8)
              {
                if (v40 > 0.0 && v57 > 0.001)
                {
                  result = sub_100D6B9D4(a1, a2, a3);
LABEL_186:
                  *(a1 + 2232) = *(a2 + 240);
                  *(a1 + 2224) = *a2;
                  return result;
                }

LABEL_185:
                result = sub_10011D1C0(a1, a2, a3);
                goto LABEL_186;
              }

              goto LABEL_189;
            }
          }

LABEL_116:
          if (v21 || !v23 && (*(a2 + 184) <= 0.0 || *(a2 + 200) <= 0.0) && (*(a2 + 128) > 0.001 || !sub_100125608(a1 + 2424, a3, -1.0)) && ((v58 = *(a1 + 2224), v58 < 0.0) || v58 <= a3 && a3 - v58 > 2.0 || *(a1 + 2232) < 4u))
          {
            if (*(a2 + 240) < 4u)
            {
              goto LABEL_185;
            }

            goto LABEL_100;
          }

          if (qword_1025D4770 != -1)
          {
            sub_100224830();
          }

          v47 = qword_1025D4778;
          if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
          {
            v48 = *(a2 + 240);
            v49 = v48 > 5 ? "" : (&off_1024AE190)[v48];
            v59 = *(a1 + 2232);
            v60 = v59 > 5 ? "" : (&off_1024AE190)[v59];
            sub_1001FCE40(a1 + 2424, __p);
            v61 = v81 >= 0 ? __p : *__p;
            *buf = 134350082;
            *&buf[4] = a3;
            *&buf[12] = 2082;
            *&buf[14] = v49;
            *&buf[22] = 2082;
            *v84 = v60;
            *&v84[8] = 1026;
            *&v84[10] = v23;
            *&v84[14] = 2082;
            *&v84[16] = v61;
            _os_log_impl(dword_100000000, v47, OS_LOG_TYPE_DEBUG, "#fusion,io_mct,%{public}.3f,override IO derived non-driving dynamics mode with driving,IO_contxt,%{public}s,prevIO_contxt,%{public}s,isLikelyDriving,%{public}d,motion activity,%{public}s", buf, 0x30u);
            if (SHIBYTE(v81) < 0)
            {
              operator delete(*__p);
            }
          }

          if (!sub_10000A100(121, 2))
          {
LABEL_183:
            v38 = 5;
LABEL_184:
            *(a2 + 240) = v38;
            goto LABEL_185;
          }

          bzero(buf, 0x65CuLL);
          if (qword_1025D4770 != -1)
          {
            sub_100224830();
          }

          v70 = sub_100D6B9B0(*(a2 + 240));
          v71 = sub_100D6B9B0(*(a1 + 2232));
          sub_1001FCE40(a1 + 2424, v76);
          if (v77 >= 0.0)
          {
            v72 = v76;
          }

          else
          {
            v72 = v76[0];
          }

          *__p = 134350082;
          *&__p[4] = a3;
          v79 = 2082;
          v80 = *&v70;
          v81 = 2082;
          *v82 = v71;
          *&v82[8] = 1026;
          *&v82[10] = v23;
          *&v82[14] = 2082;
          *&v82[16] = v72;
          v32 = _os_log_send_and_compose_impl();
          if (SHIBYTE(v77) < 0)
          {
            operator delete(v76[0]);
          }

LABEL_217:
          sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::CLLCFusion::applyIODerivedMeas(IODerivedMeas &, const CFTimeInterval)", "%s\n", v32);
          if (v32 != buf)
          {
            free(v32);
          }

          goto LABEL_183;
        }

LABEL_71:
        v24 = (a2 + 184);
        v25 = *(a2 + 184);
        if (v25 > 0.0 && *(a2 + 200) > 0.0 && v25 >= 0.0 && (*(a1 + 183) & 1) == 0 && (v25 > a3 || a3 - v25 <= 6.0))
        {
          if (qword_1025D4770 != -1)
          {
            sub_100224830();
          }

          v50 = qword_1025D4778;
          if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
          {
            v51 = *v24;
            v52 = *(a1 + 2448);
            sub_1001FCE40(a1 + 2424, __p);
            v53 = v81 >= 0 ? __p : *__p;
            *buf = 134349826;
            *&buf[4] = v51;
            *&buf[12] = 2050;
            *&buf[14] = a3;
            *&buf[22] = 1026;
            *v84 = v52;
            *&v84[4] = 2082;
            *&v84[6] = v53;
            _os_log_impl(dword_100000000, v50, OS_LOG_TYPE_DEBUG, "#fusion,applying course-aiding,driving or cycling motion activity with valid IO course estimate,io_mct,%{public}.3f,most recent filter update time mct,%{public}.3f,currentDynamicsLevel,%{public}d,motion activity,%{public}s", buf, 0x26u);
            if (SHIBYTE(v81) < 0)
            {
              operator delete(*__p);
            }
          }

          if (sub_10000A100(121, 2))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1025D4770 != -1)
            {
              sub_100224830();
            }

            v66 = *v24;
            v67 = *(a1 + 2448);
            sub_1001FCE40(a1 + 2424, v76);
            if (v77 >= 0.0)
            {
              v68 = v76;
            }

            else
            {
              v68 = v76[0];
            }

            *__p = 134349826;
            *&__p[4] = v66;
            v79 = 2050;
            v80 = a3;
            v81 = 1026;
            *v82 = v67;
            *&v82[4] = 2082;
            *&v82[6] = v68;
            v69 = _os_log_send_and_compose_impl();
            if (SHIBYTE(v77) < 0)
            {
              operator delete(v76[0]);
            }

            sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::CLLCFusion::applyIODerivedMeas(IODerivedMeas &, const CFTimeInterval)", "%s\n", v69);
            if (v69 != buf)
            {
              free(v69);
            }
          }

          v54 = *(a1 + 2448);
          if ((v54 - 1) < 5 || v54 == 10)
          {
            sub_100125538(a1 + 2424, 7u, a3);
          }

          for (j = *(a1 + 248); j; j = *j)
          {
            *(j + 140) = 7;
          }

          if (*(a1 + 1104))
          {
            *(a1 + 808) = 7;
          }

          *buf = *v24;
          *&buf[16] = *(a2 + 200);
          *buf = a3;
          result = sub_1002A5A7C(a1, buf);
          goto LABEL_186;
        }

        if (*(a2 + 240) >= 4u || !v23)
        {
          goto LABEL_185;
        }

        if (qword_1025D4770 != -1)
        {
          sub_100224830();
        }

        v27 = qword_1025D4778;
        if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
        {
          v28 = sub_100D6B9B0(*(a2 + 240));
          sub_1001FCE40(a1 + 2424, __p);
          v29 = v81 >= 0 ? __p : *__p;
          *buf = 134349826;
          *&buf[4] = a3;
          *&buf[12] = 2082;
          *&buf[14] = v28;
          *&buf[22] = 1026;
          *v84 = 1;
          *&v84[4] = 2082;
          *&v84[6] = v29;
          _os_log_impl(dword_100000000, v27, OS_LOG_TYPE_DEBUG, "#fusion,io_mct,%{public}.3f,override IO derived non-driving dynamics mode with driving,IO_contxt,%{public}s,isLikelyDriving,%{public}d,motion activity,%{public}s", buf, 0x26u);
          if (SHIBYTE(v81) < 0)
          {
            operator delete(*__p);
          }
        }

        if (!sub_10000A100(121, 2))
        {
          goto LABEL_183;
        }

        bzero(buf, 0x65CuLL);
        if (qword_1025D4770 != -1)
        {
          sub_100224830();
        }

        v30 = sub_100D6B9B0(*(a2 + 240));
        sub_1001FCE40(a1 + 2424, v76);
        if (v77 >= 0.0)
        {
          v31 = v76;
        }

        else
        {
          v31 = v76[0];
        }

        *__p = 134349826;
        *&__p[4] = a3;
        v79 = 2082;
        v80 = *&v30;
        v81 = 1026;
        *v82 = 1;
        *&v82[4] = 2082;
        *&v82[6] = v31;
        v32 = _os_log_send_and_compose_impl();
        if (SHIBYTE(v77) < 0)
        {
          operator delete(v76[0]);
        }

        goto LABEL_217;
      }

      if ((sub_1002F8B34(a1 + 2424, a3, -1.0) & 1) == 0)
      {
        v23 = sub_1002F8B84(a1 + 2424, a3, -1.0);
        if (!v19)
        {
          goto LABEL_99;
        }

        goto LABEL_71;
      }
    }

    v23 = 1;
    if (!v19)
    {
      goto LABEL_99;
    }

    goto LABEL_71;
  }

  if (qword_1025D4770 != -1)
  {
    sub_1002F97A8();
  }

  v7 = qword_1025D4778;
  if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEBUG, "#fusion,IO derived meas not used,unknown IO derived motion context", buf, 2u);
  }

  result = sub_10000A100(121, 2);
  if (result)
  {
    sub_101A7B5F4(buf);
    *__p = 0;
    v9 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::CLLCFusion::applyIODerivedMeas(IODerivedMeas &, const CFTimeInterval)", "%s\n", v9);
    if (v9 != buf)
    {
      free(v9);
    }

    return 0;
  }

  return result;
}

void sub_10011D134(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10037EA9C(a1);
}

BOOL sub_10011D140(uint64_t a1, double a2, double a3)
{
  v3 = *(a1 + 32);
  result = 0;
  if (v3 >= 0.0)
  {
    v4 = a3 >= 0.0 && v3 <= a2;
    v5 = !v4 || a2 - v3 <= a3;
    if (v5 && CLMotionActivity::isDriving((a1 + 40)) && (CLMotionActivity::isStatic((a1 + 40)) & 1) == 0 && ((CLMotionActivity::isVehicularHighConfidence((a1 + 40)) & 1) != 0 || *(a1 + 44) > 0))
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_10011D1C0(uint64_t a1, uint64_t a2, double a3)
{
  v68 = a3;
  if (*(a2 + 240))
  {
    if (qword_1025D4770 != -1)
    {
      sub_1002F97A8();
    }

    v5 = qword_1025D4778;
    if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEBUG, "#fusion,update with Uncalibrated IO", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101A7B5F4(buf);
      LOWORD(v69) = 0;
      v56 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::CLLCFusion::propagateHypothesesWithUnCalibratedIO(const IODerivedMeas &, const CFTimeInterval)", "%s\n", v56);
      if (v56 != buf)
      {
        free(v56);
      }
    }

    v6 = *a2;
    v67 = *a2;
    v7 = *(a2 + 240);
    if (v7 - 1 <= 1)
    {
      if (v7 == 2)
      {
        v8 = 2;
      }

      else
      {
        v8 = 1;
      }

      if (qword_1025D4770 != -1)
      {
        sub_100224830();
      }

      v9 = qword_1025D4778;
      if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
      {
        v10 = *(a1 + 2832);
        v11 = *(a2 + 240);
        v12 = *(a1 + 2448);
        v13 = sub_10011D140(a1 + 2424, *a2, 6.0);
        *buf = 134350592;
        v78 = v6;
        v79 = 2050;
        v80 = v68;
        v81 = 2050;
        *&v82 = v10;
        WORD4(v82) = 1026;
        *(&v82 + 10) = v11;
        HIWORD(v82) = 1026;
        *v83 = v8;
        *&v83[4] = 1026;
        *&v83[6] = v12;
        LOWORD(v84[0]) = 1026;
        *(v84 + 2) = v13;
        _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "#fusion,io_mct,%{public}.3f,io_applicableTime_mct,%{public}.3f,InertialOdometry derived zupt update,AccumStaticTime_s,%{public}.1f,IO_MotionState,%{public}d,IO_dynamicsMode,%{public}d,CM_dynamicsMode,%{public}d,CM_indicates_driving,%{public}d", buf, 0x38u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101A7B5F4(buf);
        v57 = *(a1 + 2832);
        v58 = *(a2 + 240);
        v59 = *(a1 + 2448);
        v60 = sub_10011D140(a1 + 2424, *a2, 6.0);
        v69 = 134350592;
        v70 = v6;
        v71 = 2050;
        v72 = v68;
        v73 = 2050;
        *&v74 = v57;
        WORD4(v74) = 1026;
        *(&v74 + 10) = v58;
        HIWORD(v74) = 1026;
        *v75 = v8;
        *&v75[4] = 1026;
        *&v75[6] = v59;
        LOWORD(v76[0]) = 1026;
        *(v76 + 2) = v60;
        v61 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::CLLCFusion::propagateHypothesesWithUnCalibratedIO(const IODerivedMeas &, const CFTimeInterval)", "%s\n", v61);
        if (v61 != buf)
        {
          free(v61);
        }
      }

      *(a1 + 2832) = *(a2 + 248) + *(a1 + 2832);
      sub_100125538(a1 + 2424, v8, v68);
      v14 = *(a1 + 224);
      if (v14 != (a1 + 232))
      {
        do
        {
          *(v14 + 148) = v8;
          if (!sub_1000AE380((v14 + 29), &v68, -1.0))
          {
            if (qword_1025D4770 != -1)
            {
              sub_100224830();
            }

            v15 = qword_1025D4778;
            if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
            {
              v16 = *(v14 + 220);
              *buf = 134349312;
              v78 = v67;
              v79 = 1026;
              LODWORD(v80) = v16;
              _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_DEBUG, "#fusion,io_mct,%{public}.3f,provider hypothesis zupt failed,hID,%{public}d", buf, 0x12u);
            }

            if (sub_10000A100(121, 2))
            {
              sub_101A7B5F4(buf);
              v20 = *(v14 + 220);
              v69 = 134349312;
              v70 = v67;
              v71 = 1026;
              LODWORD(v72) = v20;
              v21 = _os_log_send_and_compose_impl();
              sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::CLLCFusion::propagateHypothesesWithUnCalibratedIO(const IODerivedMeas &, const CFTimeInterval)", "%s\n", v21);
              if (v21 != buf)
              {
                free(v21);
              }
            }
          }

          v17 = v14[1];
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
              v18 = v14[2];
              v19 = *v18 == v14;
              v14 = v18;
            }

            while (!v19);
          }

          v14 = v18;
        }

        while (v18 != (a1 + 232));
      }

      for (i = *(a1 + 248); i; i = *i)
      {
        *(i + 140) = v8;
        if (!sub_1000AE380((i + 25), &v68, -1.0))
        {
          if (qword_1025D4770 != -1)
          {
            sub_100224830();
          }

          v39 = qword_1025D4778;
          if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
          {
            v40 = *(i + 212);
            *buf = 134349312;
            v78 = v67;
            v79 = 1026;
            LODWORD(v80) = v40;
            _os_log_impl(dword_100000000, v39, OS_LOG_TYPE_DEBUG, "#fusion,io_mct,%{public}.3f,fused hypothesis zupt failed,hID,%{public}d", buf, 0x12u);
          }

          if (sub_10000A100(121, 2))
          {
            sub_101A7B5F4(buf);
            v41 = *(i + 212);
            v69 = 134349312;
            v70 = v67;
            v71 = 1026;
            LODWORD(v72) = v41;
            v42 = _os_log_send_and_compose_impl();
            sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::CLLCFusion::propagateHypothesesWithUnCalibratedIO(const IODerivedMeas &, const CFTimeInterval)", "%s\n", v42);
            if (v42 != buf)
            {
              free(v42);
            }
          }
        }
      }

      if (*(a1 + 1104))
      {
        *(a1 + 808) = v8;
        if (!sub_1000AE380(a1 + 448, &v67, 1.5))
        {
          if (qword_1025D4770 != -1)
          {
            sub_100224830();
          }

          v43 = qword_1025D4778;
          if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
          {
            v44 = *(a1 + 1096);
            *buf = 134349312;
            v78 = v67;
            v79 = 1026;
            LODWORD(v80) = v44;
            _os_log_impl(dword_100000000, v43, OS_LOG_TYPE_DEBUG, "#fusion,io_mct,%{public}.3f,latest selected fused hypothesis zupt failed,hID,%{public}d", buf, 0x12u);
          }

          if (sub_10000A100(121, 2))
          {
            sub_101A7B5F4(buf);
            v45 = *(a1 + 1096);
            v69 = 134349312;
            v70 = v67;
            v71 = 1026;
            LODWORD(v72) = v45;
            v46 = _os_log_send_and_compose_impl();
            sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::CLLCFusion::propagateHypothesesWithUnCalibratedIO(const IODerivedMeas &, const CFTimeInterval)", "%s\n", v46);
            if (v46 != buf)
            {
              free(v46);
            }
          }
        }
      }

      return 1;
    }

    if ((v7 & 0xFFFFFFFA) != 0 && (*(a2 + 120) <= 0.0 || *(a2 + 144) <= 0.0 || *(a2 + 128) > 0.001))
    {
      if (*(a2 + 8) <= 0.0 || *(a2 + 24) <= 0.0 || *(a2 + 40) <= 0.0 || *(a2 + 16) >= 2.5)
      {
        v36 = v68;
        v35 = a1 + 2424;
        v37 = 5;
      }

      else
      {
        v36 = v68;
        v35 = a1 + 2424;
        v37 = 4;
      }
    }

    else
    {
      if (v7 <= 3 && (*(a2 + 128) >= 0.001 || sub_1001253BC(a1 + 2424, v6, 6.0) && *(a2 + 160) <= 0.3))
      {
        if (qword_1025D4770 != -1)
        {
          sub_100224830();
        }

        v47 = qword_1025D4778;
        if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
        {
          v48 = *(a2 + 240);
          v49 = *(a2 + 128);
          v50 = *(a2 + 160);
          v51 = *(a1 + 2448);
          *buf = 134350336;
          v78 = v6;
          v79 = 2050;
          v80 = v68;
          v81 = 1026;
          LODWORD(v82) = v48;
          WORD2(v82) = 2050;
          *(&v82 + 6) = v49;
          HIWORD(v82) = 2050;
          *v83 = v50;
          *&v83[8] = 1026;
          v84[0] = v51;
          _os_log_impl(dword_100000000, v47, OS_LOG_TYPE_DEBUG, "#fusion,io_mct,%{public}.3f,io_applicableTime_mct,%{public}.3f,uncalib IO data is not used,IOMotionState,%{public}d,GDisMoved_m,%{public}.3f,IOVVel,%{public}.3f,CM_dynamicsMode,%{public}d", buf, 0x36u);
        }

        result = sub_10000A100(121, 2);
        if (result)
        {
          sub_101A7B5F4(buf);
          v52 = *(a2 + 240);
          v53 = *(a2 + 128);
          v54 = *(a2 + 160);
          v55 = *(a1 + 2448);
          v69 = 134350336;
          v70 = v6;
          v71 = 2050;
          v72 = v68;
          v73 = 1026;
          LODWORD(v74) = v52;
          WORD2(v74) = 2050;
          *(&v74 + 6) = v53;
          HIWORD(v74) = 2050;
          *v75 = v54;
          *&v75[8] = 1026;
          v76[0] = v55;
          v24 = _os_log_send_and_compose_impl();
          sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::CLLCFusion::propagateHypothesesWithUnCalibratedIO(const IODerivedMeas &, const CFTimeInterval)", "%s\n", v24);
          goto LABEL_38;
        }

        return result;
      }

      v25 = *(a1 + 2448);
      v26 = v25 - 1;
      if ((((v25 - 1) < 0xA) & (0x21Fu >> (v25 - 1))) != 0)
      {
        v25 = 7;
      }

      if ((0x3BFu >> v26))
      {
        v27 = 6;
      }

      else
      {
        v27 = v25;
      }

      if (v26 <= 9)
      {
        v28 = v27;
      }

      else
      {
        v28 = v25;
      }

      if (*(a2 + 240) == 4)
      {
        v29 = v28;
      }

      else
      {
        v29 = v25;
      }

      if (qword_1025D4770 != -1)
      {
        sub_100224830();
      }

      v30 = qword_1025D4778;
      if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
      {
        v31 = *(a1 + 2448);
        v32 = sub_1001253BC(a1 + 2424, v6, 6.0);
        v33 = *(a2 + 160);
        v34 = *(a2 + 240);
        *buf = 134350592;
        v78 = v6;
        v79 = 2050;
        v80 = v68;
        v81 = 1026;
        LODWORD(v82) = v29;
        WORD2(v82) = 1026;
        *(&v82 + 6) = v31;
        WORD5(v82) = 1026;
        HIDWORD(v82) = v32;
        *v83 = 2050;
        *&v83[2] = v33;
        LOWORD(v84[0]) = 1026;
        *(v84 + 2) = v34;
        _os_log_impl(dword_100000000, v30, OS_LOG_TYPE_DEBUG, "#fusion,io_mct,%{public}.3f,io_applicableTime_mct,%{public}.3f,InertialOdometry derived dynamics Mode update,dynamicsMode,%{public}d,CM_dynamicsMode,%{public}d,CM_indicatesStationary,%{public}d,IO_VerticalDistMoved_m,%{public}.3f,IO_dynamicsMode,%{public}d", buf, 0x38u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101A7B5F4(buf);
        v62 = *(a1 + 2448);
        v63 = sub_1001253BC(a1 + 2424, v6, 6.0);
        v64 = *(a2 + 160);
        v65 = *(a2 + 240);
        v69 = 134350592;
        v70 = v6;
        v71 = 2050;
        v72 = v68;
        v73 = 1026;
        LODWORD(v74) = v29;
        WORD2(v74) = 1026;
        *(&v74 + 6) = v62;
        WORD5(v74) = 1026;
        HIDWORD(v74) = v63;
        *v75 = 2050;
        *&v75[2] = v64;
        LOWORD(v76[0]) = 1026;
        *(v76 + 2) = v65;
        v66 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::CLLCFusion::propagateHypothesesWithUnCalibratedIO(const IODerivedMeas &, const CFTimeInterval)", "%s\n", v66);
        if (v66 != buf)
        {
          free(v66);
        }
      }

      v35 = a1 + 2424;
      v36 = v6;
      v37 = v29;
    }

    sub_100125538(v35, v37, v36);
    sub_1000D0BB8(a1, &v68);
    return 1;
  }

  if (qword_1025D4770 != -1)
  {
    sub_1002F97A8();
  }

  v22 = qword_1025D4778;
  if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v22, OS_LOG_TYPE_DEBUG, "#fusion, unknown IO derived motion context skipped for uncalib IO", buf, 2u);
  }

  result = sub_10000A100(121, 2);
  if (result)
  {
    sub_101A7B5F4(buf);
    LOWORD(v69) = 0;
    v24 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::CLLCFusion::propagateHypothesesWithUnCalibratedIO(const IODerivedMeas &, const CFTimeInterval)", "%s\n", v24);
LABEL_38:
    if (v24 != buf)
    {
      free(v24);
    }

    return 0;
  }

  return result;
}

void sub_10011DEFC(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10037EA9C(a1);
  }

  _Unwind_Resume(a1);
}

void sub_10011DF14(uint64_t a1, char **a2)
{
  if (*(a1 + 1138) == 1)
  {
    v3 = *(a1 + 968) + *(a1 + 976);
    v4 = *(a1 + 944);
    v5 = (v4 + 8 * (v3 / 0x24));
    if (*(a1 + 952) == v4)
    {
      v6 = 0;
    }

    else
    {
      v6 = *v5 + 112 * (v3 % 0x24);
    }

    sub_1001244F0((a1 + 936), v5, v6, *a2, a2[1], 0x6DB6DB6DB6DB6DB7 * ((a2[1] - *a2) >> 4));
  }

  else
  {
    if (qword_1025D4650 != -1)
    {
      sub_10197D50C();
    }

    v7 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_ERROR))
    {
      v8 = (a1 + 1144);
      if (*(a1 + 1167) < 0)
      {
        v8 = *v8;
      }

      v9 = 136315138;
      v10 = v8;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_ERROR, "GPSODOM%s,CLIO,received IO samples despite usage being disallowed", &v9, 0xCu);
    }

    if (sub_10000A100(121, 0))
    {
      sub_10197D848(a1);
    }
  }

  sub_100930CD0(a1);
}

void sub_10011E08C(uint64_t a1, uint64_t *a2, double a3, __n128 a4)
{
  if (*(a1 + 16) == 1)
  {
    v5 = *a2;
    v6 = a2[1];
    a4.n128_u64[0] = 0;
    v7 = 0.0;
    while (v5 != v6)
    {
      if (*(v5 + 110))
      {
        v13 = a4;
        if (!sub_10011E37C(a1, v5))
        {
          return;
        }

        a4.n128_u64[1] = v13.n128_u64[1];
        a4.n128_u64[0] = vadd_f32(v13.n128_u64[0], *(v5 + 28));
        v7 = v7 + *(v5 + 36);
      }

      v5 += 112;
    }

    v14 = a4.n128_u64[0];
    *(a1 + 52) = vadd_f32(a4.n128_u64[0], *(a1 + 52));
    *(a1 + 60) = v7 + *(a1 + 60);
    if (qword_1025D4600 != -1)
    {
      sub_101B6824C();
    }

    v8 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
    {
      v9 = *(a1 + 52);
      v10 = *(a1 + 56);
      v11 = *(a1 + 60);
      *buf = 134350336;
      v16 = *&v14;
      v17 = 2050;
      v18 = *(&v14 + 1);
      v19 = 2050;
      v20 = v7;
      v21 = 2050;
      v22 = v9;
      v23 = 2050;
      v24 = v10;
      v25 = 2050;
      v26 = v11;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEBUG, "#CLProactiveLoc,rvo,IO,d_X,%{public}0.1f,d_Y,%{public}0.1f,d_Z,%{public}0.1f,cumulativeX,%{public}0.1f,cumulativeY,%{public}0.1f,cumulativeZ,%{public}0.1f", buf, 0x3Eu);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4600 != -1)
      {
        sub_101B67DC0();
      }

      v12 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "void CLProactiveLocationRoutineVisitOverride::feedIOSamples(const std::vector<CLPIOSample> &)", "%s\n", v12);
      if (v12 != buf)
      {
        free(v12);
      }
    }

    if ((fabsf(*(a1 + 52)) > 50.0 || fabsf(*(a1 + 56)) > 50.0) && *(a1 + 16) == 1)
    {
      sub_100274E44(a1);
    }
  }
}

uint64_t sub_10011E37C(uint64_t a1, uint64_t a2)
{
  v2 = (a1 + 64);
  v3 = *(a1 + 64);
  v4 = (a2 + 8);
  v5 = *(a2 + 8);
  if (v3 <= 0.0)
  {
    *v2 = v5;
    return 1;
  }

  v6 = v5 - v3;
  *v2 = v5;
  if (v5 - v3 > 0.0)
  {
    v7 = *(a2 + 28) / v6;
    v8 = *(a2 + 32) / v6;
    v9 = *(a2 + 36) / v6;
    if (v7 > 4.0 || v8 > 4.0 || v9 > 4.0)
    {
      if (qword_1025D4600 != -1)
      {
        sub_101B6824C();
      }

      v12 = qword_1025D4608;
      if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_ERROR))
      {
        *buf = 134349824;
        v19 = v7;
        v20 = 2050;
        v21 = v8;
        v22 = 2050;
        v23 = v9;
        v24 = 2050;
        v25 = v6;
        _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_ERROR, "#CLProactiveLoc,rvo,IOError,velX,%{public}0.2f,velY,%{public}0.2f,velZ,%{public}0.2f,timeDeltaSec,%{public}0.2f", buf, 0x2Au);
      }

      result = sub_10000A100(121, 0);
      if (result)
      {
        bzero(buf, 0x65CuLL);
        if (qword_1025D4600 != -1)
        {
          sub_101B67DC0();
        }

        v14 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 0, "BOOL CLProactiveLocationRoutineVisitOverride::shouldAcceptBIODeltaPositionSampleSet(const CLPIOSample &)", "%s\n", v14);
        if (v14 != buf)
        {
          free(v14);
        }

        return 0;
      }

      return result;
    }

    return 1;
  }

  if (qword_1025D4600 != -1)
  {
    sub_101B6824C();
  }

  v15 = qword_1025D4608;
  if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_ERROR))
  {
    v16 = *v4;
    v17 = *v2;
    *buf = 134349312;
    v19 = v16;
    v20 = 2050;
    v21 = v17;
    _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_ERROR, "#CLProactiveLoc,rvo,IOError,SampleSetRejected,SampleTimeError,currTime,%{public}0.2f,prevTime,%{public}0.2f", buf, 0x16u);
  }

  result = sub_10000A100(121, 0);
  if (result)
  {
    sub_101B68260(v4);
    return 0;
  }

  return result;
}

float32x4_t sub_10011E648(float32x4_t *a1, float32x4_t result)
{
  result.f32[0] = sqrtf((((a1->f32[1] * a1->f32[1]) + (a1->f32[0] * a1->f32[0])) + (a1->f32[2] * a1->f32[2])) + (a1->f32[3] * a1->f32[3]));
  v2 = result.f32[0] + -1.0;
  if ((result.f32[0] + -1.0) <= 0.0)
  {
    v2 = -(result.f32[0] + -1.0);
  }

  if (v2 >= 0.00000011921)
  {
    if (result.f32[0] == 0.0)
    {
      a1->i64[0] = 0;
      a1->i64[1] = 0x3F80000000000000;
    }

    else
    {
      result = vdivq_f32(*a1, vdupq_lane_s32(*result.f32, 0));
      *a1 = result;
    }
  }

  return result;
}

float sub_10011E6AC(float *a1)
{
  v1 = 0;
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[1];
  result = ((v3 * v4) - (*a1 * v2)) + ((v3 * v4) - (*a1 * v2));
  v6 = -(v3 * *a1) - (v4 * v2);
  v7 = (((v4 * v4) + (*a1 * *a1)) * 2.0) + -1.0;
  *v11 = result;
  *&v11[1] = v6 + v6;
  *&v11[2] = v7;
  v8 = 0.0;
  do
  {
    v8 = v8 + (*&v11[v1] * *&v11[v1]);
    ++v1;
  }

  while (v1 != 3);
  if (sqrtf(v8) > 0.00000011921)
  {
    v9 = 0;
    v10 = 0.0;
    do
    {
      v10 = v10 + (*&v11[v9] * *&v11[v9]);
      ++v9;
    }

    while (v9 != 3);
    return result / sqrtf(v10);
  }

  return result;
}

void sub_10011E75C(uint64_t a1, double *a2)
{
  Current = CFAbsoluteTimeGetCurrent();
  v5 = sub_1000081AC();
  if (qword_1025D4790 != -1)
  {
    sub_1018B3DA8();
  }

  v6 = Current - v5;
  v7 = qword_1025D4798;
  if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_INFO))
  {
    v8 = *a2;
    v9 = *(a2 + 1);
    v10 = *(a2 + 2);
    v11 = CFAbsoluteTimeGetCurrent();
    v12 = *a2;
    v13 = a2[1];
    if (*a2 > 0.0)
    {
      v12 = v6 + *a2;
    }

    if (v13 > 0.0)
    {
      v13 = v6 + v13;
    }

    v14 = a2[2];
    buf = 134285057;
    if (v14 > 0.0)
    {
      v14 = v6 + v14;
    }

    *buf_4 = v8;
    *&buf_4[8] = 2049;
    *&buf_4[10] = v9;
    *&buf_4[18] = 2049;
    *&buf_4[20] = v10;
    *&buf_4[28] = 2049;
    v36 = v11;
    *v37 = 2049;
    *&v37[2] = v12;
    v38 = 2049;
    *v39 = v13;
    *&v39[8] = 2049;
    v40 = v14;
    _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_INFO, "#CLGNSSStateQueryAssertion,daemon,sendGnssStatusUpdateToClient,gnssStart,%{private}.3lf,gnssStop,%{private}.3lf,gnssYield,%{private}.3lf,absoluteTime,%{private}.3lf,AbsoluteTimeOfGnssStart,%{private}.3lf,AbsoluteTimeOfGnssStop,%{private}.3lf,AbsoluteTimeOfYieldStop,%{private}.3lf", &buf, 0x48u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018B3FF0(a2, v6);
  }

  if (*(a1 + 8))
  {
    v15 = sub_1000081AC();
    v16 = *(a1 + 88);
    v17 = v15 - v16;
    v18 = v16 == 0.0 || v17 > *(a1 + 80) + -3.0;
    v21 = *a2;
    v20 = a2[1];
    v22 = a2[2];
    v23 = *(a1 + 48);
    v24 = v22 > *a2;
    v25 = *(a1 + 64);
    v26 = v25 > v23;
    if (qword_1025D4790 != -1)
    {
      sub_100249B74();
    }

    v27 = v24 ^ v26;
    v28 = v18 | v24 ^ v26;
    v29 = qword_1025D4798;
    if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_DEFAULT))
    {
      buf = 68290818;
      *buf_4 = 0;
      *&buf_4[4] = 2082;
      *&buf_4[6] = "";
      *&buf_4[14] = 2050;
      *&buf_4[16] = v17;
      *&buf_4[24] = 1026;
      *&buf_4[26] = v18;
      LOWORD(v36) = 1026;
      *(&v36 + 2) = v20 > v21;
      HIWORD(v36) = 1026;
      *v37 = v22 > v21;
      *&v37[4] = 1026;
      *&v37[6] = v25 > v23;
      v38 = 1026;
      *v39 = v27;
      *&v39[4] = 1026;
      *&v39[6] = v28 & 1;
      _os_log_impl(dword_100000000, v29, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#CLGNSSStateQueryAssertion,daemon,sendGnssStatusUpdateToClient, timeSinceLastUpdate:%{public}0.3f, isMinTimeLapsedBetween2UpdatesToClient:%{public}d, isLastSessionStopped:%{public}d, didLastSessionYield:%{public}d, didSessionYieldDuringLastUpdateToClient:%{public}d, isStatusChangedFromPreviousUpdateToClient:%{public}d, sendUpdateToCLient:%{public}d}", &buf, 0x40u);
    }

    if (v28)
    {
      v32[0] = @"kCLGNSSStateQueryAssertion_ResponseKey_LastGNSSStartKey";
      v33[0] = [NSNumber numberWithDouble:*a2];
      v32[1] = @"kCLGNSSStateQueryAssertion_ResponseKey_LastGNSSStopKey";
      v33[1] = [NSNumber numberWithDouble:a2[1]];
      v32[2] = @"kCLGNSSStateQueryAssertion_ResponseKey_LastGNSSYieldKey";
      v33[2] = [NSNumber numberWithDouble:a2[2]];
      v32[3] = @"kCLGNSSStateQueryAssertion_ResponseKey_PeriodicityKey";
      v33[3] = [NSNumber numberWithDouble:*(a1 + 80)];
      [NSDictionary dictionaryWithObjects:v33 forKeys:v32 count:4];
      if (qword_1025D4790 != -1)
      {
        sub_100249B74();
      }

      v30 = qword_1025D4798;
      if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf) = 0;
        _os_log_impl(dword_100000000, v30, OS_LOG_TYPE_DEFAULT, "#CLGNSSStateQueryAssertion,daemon,sendGnssStatusUpdateToClient sent to client", &buf, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1018B427C();
      }

      *(a1 + 88) = sub_1000081AC();
      *(a1 + 48) = *(a1 + 24);
      *(a1 + 64) = *(a1 + 40);
      [*(a1 + 96) setNextFireDelay:*(a1 + 80) interval:*(a1 + 80)];
      sub_100126974();
    }

    if (qword_1025D4790 != -1)
    {
      sub_100249B74();
    }

    v31 = qword_1025D4798;
    if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf) = 0;
      _os_log_impl(dword_100000000, v31, OS_LOG_TYPE_DEFAULT, "#CLGNSSStateQueryAssertion,daemon,sendGnssStatusUpdateToClient recently update sent to client", &buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018B4198();
    }
  }

  else
  {
    if (qword_1025D4790 != -1)
    {
      sub_100249B74();
    }

    v19 = qword_1025D4798;
    if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf) = 0;
      _os_log_impl(dword_100000000, v19, OS_LOG_TYPE_DEFAULT, "#CLGNSSStateQueryAssertion,daemon,sendGnssStatusUpdateToClient invalid connection", &buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018B4360();
    }
  }
}

void sub_10011EC78(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, std::__shared_weak_count *a22)
{
  if (a10)
  {
    sub_100008080(a10);
  }

  if (a22)
  {
    sub_100008080(a22);
  }

  _Unwind_Resume(exception_object);
}

void sub_10011ECA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a2 + 8) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_1016CC168();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v15 = 1;
    v10 = _os_activity_create(dword_100000000, "CL: CLGnssPowerLogger::onGnssPowerLogNotification", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v10, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_1016CC17C();
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
      _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLGnssPowerLogger::onGnssPowerLogNotification, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v15 = 0;
  }

  v12 = [*(a2 + 8) silo];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10011F144;
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

void sub_10011EED0(uint64_t a1)
{
  v2 = *(a1 + 16);
  Current = CFAbsoluteTimeGetCurrent();
  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  if (v4 == v5)
  {
    v9 = 0.0;
    v8 = 0.0;
    v7 = 0.0;
    v6 = 0.0;
  }

  else
  {
    v6 = 0.0;
    v7 = 0.0;
    v8 = 0.0;
    v9 = 0.0;
    do
    {
      v10 = v4[2];
      v6 = v6 + v4[1];
      v9 = v9 + v10;
      v8 = v8 + v4[3] * v10;
      v7 = v7 + v4[4];
      v4 += 5;
    }

    while (v4 != v5);
  }

  v11 = *(a1 + 16);
  if (qword_1025D4650 != -1)
  {
    sub_1016CC064();
  }

  v12 = Current - v11;
  v13 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
  {
    *buf = 68290562;
    v17 = 0;
    v18 = 2082;
    v19 = "";
    v20 = 2050;
    v21 = v2;
    v22 = 2050;
    v23 = v12;
    v24 = 2050;
    v25 = v9;
    v26 = 2050;
    v27 = v8 / v12;
    v28 = 2050;
    v29 = v7;
    v30 = 2050;
    v31 = v6;
    _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:composite power log, start:%{public}f, epoch_sec:%{public}f, active_sec:%{public}f, avg_pwr_mW:%{public}f, activeL5IntervalSec:%{public}f, actualMeasuredIntervalAsReturnedByTheGPS_s:%{public}f}", buf, 0x4Eu);
  }

  v15[0] = [NSNumber numberWithDouble:v2, @"intervalStartTime"];
  v14[1] = @"measuredInterval";
  v15[1] = [NSNumber numberWithDouble:v12];
  v14[2] = @"activeInterval";
  v15[2] = [NSNumber numberWithDouble:v9];
  v14[3] = @"activeL5IntervalSec";
  v15[3] = [NSNumber numberWithDouble:v7];
  v14[4] = @"averagePower";
  v15[4] = [NSNumber numberWithDouble:v8 / v12];
  sub_10006FFF0([NSDictionary dictionaryWithObjects:v15 forKeys:v14 count:5], "GnssPowerMetric");
  [*a1 setNextFireDelay:*(a1 + 48)];
  *(a1 + 16) = CFAbsoluteTimeGetCurrent();
  *(a1 + 32) = *(a1 + 24);
}

void sub_10011F14C(uint64_t a1@<X0>, uint64_t *a2@<X1>, void *a3@<X2>, uint64_t *a4@<X8>)
{
  a4[1] = 0;
  a4[2] = 0xBFF0000000000000;
  *(a4 + 3) = 0u;
  *(a4 + 5) = 0u;
  *(a4 + 7) = 0u;
  *(a4 + 9) = xmmword_101CE3F00;
  *(a4 + 11) = xmmword_101CE3F10;
  *(a4 + 52) = 257;
  *(a4 + 106) = 0;
  *(a4 + 110) = 0;
  *a4 = *a2;
  [a3 timestamp];
  a4[1] = v7;
  *(a4 + 6) = 1065353216;
  if ([a3 deltaPositionX] && objc_msgSend(a3, "deltaPositionY") && objc_msgSend(a3, "deltaPositionZ"))
  {
    *(a4 + 110) |= 1u;
    [objc_msgSend(a3 "deltaPositionX")];
    *(a4 + 7) = v8;
    [objc_msgSend(a3 "deltaPositionY")];
    *(a4 + 8) = v9;
    [objc_msgSend(a3 "deltaPositionZ")];
    *(a4 + 9) = v10;
  }

  if ([a3 deltaVelocityX] && objc_msgSend(a3, "deltaVelocityY") && objc_msgSend(a3, "deltaVelocityZ"))
  {
    *(a4 + 110) |= 2u;
    [objc_msgSend(a3 "deltaVelocityX")];
    *(a4 + 10) = v11;
    [objc_msgSend(a3 "deltaVelocityY")];
    *(a4 + 11) = v12;
    [objc_msgSend(a3 "deltaVelocityZ")];
    *(a4 + 12) = v13;
  }

  if ([a3 quaternionX] && objc_msgSend(a3, "quaternionY") && objc_msgSend(a3, "quaternionZ") && objc_msgSend(a3, "quaternionW"))
  {
    *(a4 + 110) |= 4u;
    [objc_msgSend(a3 "quaternionX")];
    *(a4 + 13) = v14;
    [objc_msgSend(a3 "quaternionY")];
    *(a4 + 14) = v15;
    [objc_msgSend(a3 "quaternionZ")];
    *(a4 + 15) = v16;
    [objc_msgSend(a3 "quaternionW")];
    *(a4 + 16) = v17;
    *(a4 + 105) = *(a1 + 49) ^ 1;
    *(a1 + 49) = 1;
  }

  else
  {
    *(a1 + 49) = 0;
  }

  [a3 rotationArbitraryToTrueNorth];
  *(a4 + 21) = v18;
  [a3 rotationArbitraryToTrueNorth];
  *(a4 + 110) = *(a4 + 110) & 0x7F | ((v19 != 0.0) << 7);
  if ([a3 referenceFrame] == 8)
  {
    v20 = 8;
  }

  else
  {
    v20 = 1;
  }

  *(a4 + 104) = v20;
  *(a4 + 106) = 0;
  v21 = [a3 staticFlag];
  if (v21 <= 2)
  {
    *(a4 + 106) = v21;
  }

  if ([a3 isZUPT])
  {
    v22 = 2;
  }

  else
  {
    v22 = 1;
  }

  *(a4 + 108) = v22;
  if ([a3 isDOTBiasChangePossible])
  {
    v23 = 2;
  }

  else
  {
    v23 = 1;
  }

  *(a4 + 109) = v23;
  if ([a3 isMounted])
  {
    v24 = 2;
  }

  else
  {
    v24 = 1;
  }

  *(a4 + 107) = v24;
  if (*(a1 + 50) == 1)
  {
    if (qword_1025D4600 != -1)
    {
      sub_1002F9794();
    }

    v25 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
    {
      v27 = *a4;
      v26 = a4[1];
      v47 = *(a4 + 8);
      v48 = *(a4 + 6);
      v49 = *(a4 + 9);
      v50 = *(a4 + 7);
      v28 = *(a4 + 10);
      v46 = *(a4 + 11);
      v29 = *(a4 + 12);
      v30 = *(a4 + 13);
      v31 = *(a4 + 14);
      v32 = *(a4 + 15);
      v33 = *(a4 + 16);
      v34 = *(a4 + 21);
      v35 = *(a4 + 105);
      v36 = *(a4 + 104);
      v37 = *(a4 + 106);
      v38 = *(a4 + 110);
      v39 = v38 & 1;
      v40 = (v38 >> 1) & 1;
      v51 = (v38 >> 2) & 1;
      v52 = v38 >> 7;
      v53 = *(a4 + 108);
      v54 = *(a4 + 109);
      v55 = *(a4 + 107);
      v41 = sub_10000B1F8();
      *buf = 0;
      v42 = sub_10001A6B0(v41, buf);
      v43 = sub_10000B1F8();
      *buf = 0;
      v44 = sub_10001A6B0(v43, buf) - *a4;
      *buf = 134355457;
      v57 = v27;
      v58 = 2050;
      v59 = v26;
      v60 = 2050;
      v61 = v48;
      v62 = 2049;
      v63 = v50;
      v64 = 2049;
      v65 = v47;
      v66 = 2049;
      v67 = v49;
      v68 = 2049;
      v69 = v28;
      v70 = 2049;
      v71 = v46;
      v72 = 2049;
      v73 = v29;
      v74 = 2049;
      v75 = v30;
      v76 = 2049;
      v77 = v31;
      v78 = 2049;
      v79 = v32;
      v80 = 2049;
      v81 = v33;
      v82 = 2049;
      v83 = v34;
      v84 = 258;
      v85 = v35;
      v86 = 258;
      v87 = v36;
      v88 = 258;
      v89 = v37;
      v90 = 1025;
      v91 = v39;
      v92 = 1025;
      v93 = v40;
      v94 = 1024;
      v95 = v51;
      v96 = 1025;
      v97 = v52;
      v98 = 257;
      v99 = v53;
      v100 = 257;
      v101 = v54;
      v102 = 257;
      v103 = v55;
      v104 = 2050;
      v105 = v42;
      v106 = 2050;
      v107 = v44;
      _os_log_impl(dword_100000000, v25, OS_LOG_TYPE_DEBUG, "#pbio CLPIOSample, userCfAbsoluteTimestamp_s, %{public}.3f, machContinuousTimestamp_s, %{public}.3f, sampleInterval_s, %{public}.3f, dPosX_m, %{private}+.3f, dPosY_m, %{private}+.3f, dPosZ_m, %{private}+.3f, dVelX_mps, %{private}+.3f, dVelY_mps, %{private}+.3f, dVelZ_mps, %{private}+.3f, qX, %{private}+.3f, qY, %{private}+.3f, qZ, %{private}+.3f, qW, %{private}+.3f, rotationToTrueNorthFromMagnetometer_rad, %{private}+.3f, referenceFrameContinuity, %{public}d, referenceFrame, %{public}d, staticFlag, %{public}d, isDeltaPositionValid, %{private}d, isRotationToTrueNorthFromMagnetometerValid, %{private}d, isDeltaVelocityValid, %d, isAttitudeValid, %{private}d, zuptIndicator, %{private}d, dotChangeIndicator, %{private}d, mountState, %{private}d,now, %{public}.3f, diffNowMinusSample, %{public}.3f", buf, 0xCCu);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4600 != -1)
      {
        sub_101AB30B4();
      }

      sub_1000281DC();
      sub_1000281DC();
      v45 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "CLPIOSample CLProactiveInertialOdometryManager::createCLPIOSample(const CFAbsoluteTime &, const CMOdometry *)", "%s\n", v45);
      if (v45 != buf)
      {
        free(v45);
      }
    }
  }
}

void sub_10011F8F0(uint64_t a1, double *a2)
{
  if (qword_1025D4600 != -1)
  {
    sub_1002F9794();
  }

  v4 = qword_1025D4608;
  if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_INFO))
  {
    v5 = *(a2 + 1);
    v6 = sub_10000B1F8();
    v8 = 1;
    v7 = sub_10001A6B0(v6, &v8) - a2[1];
    v8 = 134218240;
    v9 = v5;
    v10 = 1026;
    v11 = v7 < 2.0;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_INFO, "#pbio CLProactiveInertialOdometryManager::onCLPIOSample, machContinuousTimestamp_s, %.3f, isPromptSample, %{public}d", &v8, 0x12u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101AB3514(a2);
  }

  sub_10011FAE0(*(a1 + 64), a2);
  sub_10011B29C(*(a1 + 32), a2);
  sub_10002492C(a1);
}

void sub_10011FA30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((*(a2 + 110) & 4) != 0 && (*(a3 + 110) & 4) != 0)
  {
    v16 = *(a2 + 52);
    sub_10011E648(&v16, v16);
    v15 = *(a3 + 52);
    sub_10011E648(&v15, v15);
    sub_10011AC40(v16.f32);
    v7 = sub_10011AFA8(v16.f32, v4, v5, v6);
    v9 = v8;
    sub_10011AC40(v15.f32);
    v13 = sub_10011AFA8(v15.f32, v10, v11, v12);
    atan2(((v13 * v9) - (v7 * v14)), ((v9 * v14) + (v13 * v7)));
  }
}

double sub_10011FAE0(uint64_t a1, _OWORD *a2)
{
  v4 = *(a1 + 744);
  *(a1 + 840) = *(a1 + 728);
  *(a1 + 856) = v4;
  *(a1 + 871) = *(a1 + 759);
  v5 = *(a1 + 680);
  *(a1 + 776) = *(a1 + 664);
  *(a1 + 792) = v5;
  v6 = *(a1 + 712);
  *(a1 + 808) = *(a1 + 696);
  *(a1 + 824) = v6;
  v8 = a2[4];
  v7 = a2[5];
  v9 = a2[3];
  *(a1 + 759) = *(a2 + 95);
  *(a1 + 728) = v8;
  *(a1 + 744) = v7;
  *(a1 + 712) = v9;
  v11 = a2[1];
  v10 = a2[2];
  *(a1 + 664) = *a2;
  *(a1 + 680) = v11;
  *(a1 + 696) = v10;
  sub_10011AA80(a1);

  *&result = *&sub_10011B3A8(a1, a2);
  return result;
}

float sub_10011FB70(uint64_t a1, float *a2)
{
  v4 = 0;
  do
  {
    v5 = sub_10011AECC(a1, v4, 0) * *a2;
    *sub_10011AF30(&v11, v4) = v5;
    for (i = 1; i != 3; ++i)
    {
      v7 = sub_10011AECC(a1, v4, i);
      v8 = sub_10011AF6C(a2, i);
      v9 = sub_10011AF30(&v11, v4);
      *v9 = *v9 + (v7 * v8);
    }

    ++v4;
  }

  while (v4 != 3);
  return v11;
}

uint64_t sub_10011FC38(unsigned __int8 *a1, uint64_t a2)
{
  *(a1 + 52) = 0;
  *(a1 + 53) = 0;
  *(a1 + 43) = 0xBFF0000000000000;
  v4 = a1 + 376;
  *(a1 + 376) = xmmword_101C75BF0;
  *(a1 + 50) = 0;
  *(a1 + 51) = 0;
  *(a1 + 49) = 0xBFF0000000000000;
  __asm { FMOV            V1.2D, #-1.0 }

  *(a1 + 27) = _Q1;
  *(a1 + 28) = xmmword_101C76220;
  *(a1 + 142) = 0;
  *(a1 + 61) = 0;
  *(a1 + 62) = 0;
  *(a1 + 504) = xmmword_101C75BF0;
  *(a1 + 520) = _Q1;
  *(a1 + 536) = xmmword_101C76220;
  *(a1 + 552) = xmmword_101C76220;
  sub_1001233D0(a1, a2);
  if ((*(a2 + 110) & 3) == 0)
  {
    if (qword_1025D4770 != -1)
    {
      sub_10025BA60();
    }

    v34 = qword_1025D4778;
    if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
    {
      v35 = *(a2 + 8);
      *buf = 134349056;
      v324 = v35;
      _os_log_impl(dword_100000000, v34, OS_LOG_TYPE_DEBUG, "InertialOdometry,skipped IO sample with invalid PDR and VDR data,IO mct,%{public}.3f", buf, 0xCu);
    }

    if (!sub_10000A100(121, 2))
    {
      goto LABEL_42;
    }

    sub_1018D54AC(buf);
    v183 = *(a2 + 8);
    *__p = 134349056;
    *&__p[4] = v183;
    v182 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::LCFusionInertialOdometry::IOSampleUpdate(const CLPIOSample &)", "%s\n", v182);
    if (v182 == buf)
    {
      goto LABEL_42;
    }

LABEL_233:
    free(v182);
LABEL_42:
    v36 = sub_10000B1F8();
    *buf = 1;
    v37 = sub_10001A6B0(v36, buf);
    v38 = 1.0;
LABEL_43:
    v39 = a1;
LABEL_44:
    sub_1005BFEEC(v39, v37, v38);
    return 0;
  }

  v10 = *(a2 + 24);
  if (v10 <= 0.0 || v10 > 6.0 || *(a2 + 8) <= 0.0)
  {
    if (qword_1025D4770 != -1)
    {
      sub_10025BA60();
    }

    v31 = qword_1025D4778;
    if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
    {
      v32 = *(a2 + 8);
      v33 = *(a2 + 24);
      *buf = 134349312;
      v324 = v32;
      v325 = 2050;
      *v326 = v33;
      _os_log_impl(dword_100000000, v31, OS_LOG_TYPE_DEBUG, "InertialOdometry,skipped IO sample with invalid sample interval/timestamp,IO mct,%{public}.3f,sampleInterval_s,%{public}.3f", buf, 0x16u);
    }

    if (!sub_10000A100(121, 2))
    {
      goto LABEL_42;
    }

    sub_1018D54AC(buf);
    v180 = *(a2 + 8);
    v181 = *(a2 + 24);
    *__p = 134349312;
    *&__p[4] = v180;
    v310 = 2050;
    *v311 = v181;
    v182 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::LCFusionInertialOdometry::IOSampleUpdate(const CLPIOSample &)", "%s\n", v182);
    if (v182 == buf)
    {
      goto LABEL_42;
    }

    goto LABEL_233;
  }

  v11 = sub_10000B1F8();
  *buf = 1;
  v12 = sub_10001A6B0(v11, buf);
  v13 = v12;
  v14 = *(a2 + 8);
  if (v12 > 0.0 && (v12 - v14 < 0.0 || v12 - v14 > 1800.0))
  {
    if (qword_1025D4770 != -1)
    {
      sub_1018D5484();
    }

    v52 = qword_1025D4778;
    if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_ERROR))
    {
      *buf = 134349568;
      v324 = v13;
      v325 = 2050;
      *v326 = v14;
      *&v326[8] = 2050;
      *&v326[10] = v13 - v14;
      _os_log_impl(dword_100000000, v52, OS_LOG_TYPE_ERROR, "InertialOdometry,#Error,ignoring IO data,unexpected MCT time-tag of IO data,current mct,%{public}.3f,IO mct,%{public}.3f,IOMCTDeltaToCurrentMCT,%{public}.3f", buf, 0x20u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018D54AC(buf);
      *__p = 134349568;
      *&__p[4] = v13;
      v310 = 2050;
      *v311 = v14;
      *&v311[8] = 2050;
      *&v311[10] = v13 - v14;
      v189 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 0, "BOOL cllcf::LCFusionInertialOdometry::IOSampleUpdate(const CLPIOSample &)", "%s\n", v189);
      if (v189 != buf)
      {
        free(v189);
      }
    }

    v53 = sub_10000B1F8();
    *buf = 1;
    v37 = sub_10001A6B0(v53, buf);
    v38 = *(a2 + 24);
    goto LABEL_43;
  }

  v15 = *(a1 + 1);
  if (v15 > 0.0)
  {
    if (v15 >= v14)
    {
      if (qword_1025D4770 != -1)
      {
        sub_1018D5484();
      }

      v54 = qword_1025D4778;
      if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
      {
        v55 = *(a1 + 1);
        *buf = 134349568;
        v324 = v55;
        v325 = 2050;
        *v326 = v14;
        *&v326[8] = 2050;
        *&v326[10] = v14 - v55;
        _os_log_impl(dword_100000000, v54, OS_LOG_TYPE_DEBUG, "InertialOdometry,ignoring received overlapping IO data,prev IO mct,%{public}.3f,curr IO mct,%{public}.3f,dTime,%{public}.3f", buf, 0x20u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1018D54AC(buf);
        v190 = *(a1 + 1);
        *__p = 134349568;
        *&__p[4] = v190;
        v310 = 2050;
        *v311 = v14;
        *&v311[8] = 2050;
        *&v311[10] = v14 - v190;
        v191 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::LCFusionInertialOdometry::IOSampleUpdate(const CLPIOSample &)", "%s\n", v191);
        if (v191 != buf)
        {
          free(v191);
        }
      }

LABEL_73:
      v38 = *(a2 + 24);
      v39 = a1;
      v37 = v14;
      goto LABEL_44;
    }

    if ((!sub_1001253BC(*(a1 + 73), *(a2 + 8), 6.0) || !*(a2 + 106)) && vabdd_f64(v14, *(a1 + 1)) > 300.0)
    {
      if (qword_1025D4770 != -1)
      {
        sub_1018D5484();
      }

      v16 = qword_1025D4778;
      if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
      {
        v17 = *(a1 + 1);
        *buf = 134349568;
        v324 = v17;
        v325 = 2050;
        *v326 = v14;
        *&v326[8] = 2050;
        *&v326[10] = vabdd_f64(v14, v17);
        _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_DEBUG, "InertialOdometry,large gap in IO data while not static,resetting,prev IO mct,%{public}.3f,curr IO mct,%{public}.3f,dTime,%{public}.3f", buf, 0x20u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1018D54AC(buf);
        v233 = *(a1 + 1);
        *__p = 134349568;
        *&__p[4] = v233;
        v310 = 2050;
        *v311 = v14;
        *&v311[8] = 2050;
        *&v311[10] = vabdd_f64(v14, v233);
        v234 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::LCFusionInertialOdometry::IOSampleUpdate(const CLPIOSample &)", "%s\n", v234);
        if (v234 != buf)
        {
          free(v234);
        }
      }

      ++*(a1 + 150);
      sub_1005C0018(a1);
      sub_1005BF61C((a1 + 16), v14);
      sub_1005C0070(a1, v14);
    }

    if (*(a2 + 105) || *(a2 + 104) != *a1)
    {
      if (qword_1025D4770 != -1)
      {
        sub_1018D5484();
      }

      v18 = qword_1025D4778;
      if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
      {
        v19 = *(a1 + 1);
        v20 = *a1;
        v21 = *(a2 + 104);
        v22 = *(a2 + 105);
        *buf = 134350080;
        v324 = v19;
        v325 = 2050;
        *v326 = v14;
        *&v326[8] = 1026;
        *&v326[10] = v20;
        *&v326[14] = 1026;
        *&v326[16] = v21;
        *&v326[20] = 1026;
        *&v326[22] = v22;
        _os_log_impl(dword_100000000, v18, OS_LOG_TYPE_DEBUG, "InertialOdometry,IO reference frame discontinuity detected,prev IO mct,%{public}.3f,curr IO mct,%{public}.3f,prevRefF,%{public}d,currRefF,%{public}d,RefFrameContinuity,%{public}d", buf, 0x28u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1018D54AC(buf);
        v192 = *(a1 + 1);
        v193 = *a1;
        v194 = *(a2 + 104);
        v195 = *(a2 + 105);
        *__p = 134350080;
        *&__p[4] = v192;
        v310 = 2050;
        *v311 = v14;
        *&v311[8] = 1026;
        *&v311[10] = v193;
        *&v311[14] = 1026;
        *&v311[16] = v194;
        *&v311[20] = 1026;
        *&v311[22] = v195;
        v196 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::LCFusionInertialOdometry::IOSampleUpdate(const CLPIOSample &)", "%s\n", v196);
        if (v196 != buf)
        {
          free(v196);
        }
      }

      sub_1005C0018(a1);
      sub_1005BF61C((a1 + 16), v14);
      sub_1005C0070(a1, v14);
      *(a1 + 44) = 0xBFF0000000000000;
      *a1 = *(a2 + 104);
    }
  }

  *(a1 + 1) = v14;
  v23 = *(a2 + 24);
  v24 = 1.0;
  v25 = v23;
  if (v23 > 0.0)
  {
    v24 = 1.0 / v25;
  }

  LOBYTE(v26) = *(a2 + 110);
  if ((v26 & 1) == 0)
  {
    sub_1005BFEEC(a1, v14, v25);
    LOBYTE(v26) = *(a2 + 110);
    v27 = 0.0;
    v28 = 0.0;
    v29 = 0.0;
    v30 = 0.0;
    goto LABEL_52;
  }

  v27 = hypotf(*(a2 + 28), *(a2 + 32));
  v28 = *(a2 + 36);
  v29 = v24 * v27;
  v30 = v24 * v28;
  *(a1 + 54) = v28;
  *(a1 + 55) = v14;
  *(a1 + 56) = v24 * v28;
  *(a1 + 57) = 0x3FB70A3D70A3D70ALL;
  if (v24 * v27 > 9.0)
  {
    if (qword_1025D4770 != -1)
    {
      sub_1018D5484();
    }

    v41 = qword_1025D4778;
    if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
    {
      v42 = *(a1 + 1);
      v43 = *(a2 + 104);
      v44 = *(a2 + 110);
      v45 = *(a2 + 24);
      v46 = *(a2 + 28);
      v47 = *(a2 + 32);
      *buf = 134351104;
      v324 = v42;
      v325 = 2050;
      *v326 = v14;
      *&v326[8] = 1026;
      *&v326[10] = v43;
      *&v326[14] = 1026;
      *&v326[16] = v44 & 1;
      *&v326[20] = 2050;
      *&v326[22] = v45;
      *&v326[30] = 2050;
      *&v326[32] = v46;
      *&v326[40] = 2050;
      *&v326[42] = v47;
      *&v326[50] = 2050;
      *&v326[52] = v27;
      *&v326[60] = 1026;
      *&v326[62] = (v44 >> 5) & 1;
      _os_log_impl(dword_100000000, v41, OS_LOG_TYPE_DEBUG, "InertialOdometry,PDR,rejected dPos invalid/outlier sample;prev IO mct,%{public}.3f,curr IO mct,%{public}.3f,RefF,%{public}d,isValidDeltaPos,%{public}d,sampleInterval,%{public}.1f,dPosX_m,%{public}+.3f,dPosY_m,%{public}+.3f,dPosXYnorm,%{public}.3f,isCourseValid,%{public}d", buf, 0x50u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018D54AC(buf);
      v197 = *(a1 + 1);
      v198 = *(a2 + 104);
      v199 = *(a2 + 110);
      v200 = *(a2 + 24);
      v201 = *(a2 + 28);
      v202 = *(a2 + 32);
      *__p = 134351104;
      *&__p[4] = v197;
      v310 = 2050;
      *v311 = v14;
      *&v311[8] = 1026;
      *&v311[10] = v198;
      *&v311[14] = 1026;
      *&v311[16] = v199 & 1;
      *&v311[20] = 2050;
      *&v311[22] = v200;
      *&v311[30] = 2050;
      *&v311[32] = v201;
      *&v311[40] = 2050;
      *&v311[42] = v202;
      *&v311[50] = 2050;
      *&v311[52] = v27;
      *&v311[60] = 1026;
      *&v311[62] = (v199 >> 5) & 1;
      v203 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::LCFusionInertialOdometry::IOSampleUpdate(const CLPIOSample &)", "%s\n", v203);
      if (v203 != buf)
      {
        free(v203);
      }
    }

    ++*(a1 + 151);
    v26 = *(a2 + 110);
    if ((~v26 & 0x24) != 0)
    {
      goto LABEL_73;
    }
  }

LABEL_52:
  v50 = v24 * hypotf(*(a2 + 40), *(a2 + 44));
  if ((v26 & 2) == 0)
  {
    goto LABEL_82;
  }

  *(a1 + 62) = v50;
  if ((v26 & 4) == 0)
  {
    goto LABEL_82;
  }

  if (*(a2 + 107) != 2)
  {
    v51 = sub_100125258(*(a1 + 73), v14, 6.0);
    LOBYTE(v26) = *(a2 + 110);
    if (!v51 && ((*(a2 + 110) & 1) == 0 || v27 > 0.001))
    {
      goto LABEL_82;
    }
  }

  if ((v26 & 0x20) == 0)
  {
    if ((v26 & 0x40) == 0)
    {
      goto LABEL_60;
    }

LABEL_79:
    *(a1 + 66) = v14;
    *v48.i64 = *(a2 + 96);
    v49.i64[0] = 0x400921FB54442D18;
    if (fabs(*v48.i64) > 3.14159265)
    {
      v57.f64[0] = NAN;
      v57.f64[1] = NAN;
      v303 = *vbslq_s8(vnegq_f64(v57), v49, v48).i64;
      *v48.i64 = fmod(v303 + *v48.i64, 6.28318531) - v303;
    }

    *(a1 + 67) = v48.i64[0];
    *(a1 + 68) = *(a2 + 100);
    *(a1 + 69) = *(a2 + 24);
    if ((v26 & 0x20) == 0)
    {
      goto LABEL_82;
    }

    goto LABEL_131;
  }

  *(v4 + 16) = v14;
  v56 = *(a2 + 88);
  *v48.i64 = v56;
  if (v56 < 0.0 || *v48.i64 >= 6.28318531)
  {
    *v48.i64 = fmod(*v48.i64, 6.28318531);
    if (*v48.i64 < 0.0)
    {
      *v48.i64 = *v48.i64 + 6.28318531;
    }
  }

  *(a1 + 64) = v48.i64[0];
  *(a1 + 65) = *(a2 + 92);
  if ((v26 & 0x40) != 0)
  {
    goto LABEL_79;
  }

LABEL_60:
  if ((v26 & 0x20) == 0)
  {
    goto LABEL_82;
  }

LABEL_131:
  if (v50 > 0.3 || (v26 & 1) != 0 && v27 <= 0.001 || *(a2 + 107) == 2 && sub_10011D140(*(a1 + 73), v14, 6.0))
  {
    *(a1 + 142) = 5;
    *(a1 + 70) = v14;
    *(a1 + 72) = v14;
    if (qword_1025D4770 != -1)
    {
      sub_1018D5484();
    }

    v86 = qword_1025D4778;
    if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
    {
      v299 = *(a2 + 104);
      v87 = *(a2 + 110);
      v304 = v87 & 1;
      v291 = *(a2 + 36);
      v295 = *(a2 + 28);
      v88 = (v87 >> 1) & 1;
      v284 = *(a2 + 24);
      v285 = *(a2 + 40);
      v287 = *(a2 + 32);
      v289 = *(a2 + 44);
      v89 = *(a2 + 88) * 57.2957795;
      v90 = sqrtf(*(a2 + 92)) * 57.2957795;
      v91 = *(a2 + 96) * 57.2957795;
      v92 = *(a2 + 48);
      v93 = (v87 >> 5) & 1;
      v94 = (v87 >> 6) & 1;
      v95 = *(a2 + 100);
      v96 = *(a2 + 107) - 1;
      v97 = __p;
      sub_1001FCE40(*(a1 + 73), __p);
      if (v311[9] < 0)
      {
        v97 = *__p;
      }

      v98 = sub_1005C01DC(*(a1 + 142));
      *buf = 134354434;
      v324 = v14;
      v325 = 1026;
      *v326 = v299;
      *&v326[4] = 2050;
      *&v326[6] = v284;
      *&v326[14] = 1026;
      *&v326[16] = v304;
      *&v326[20] = 2050;
      *&v326[22] = v295;
      *&v326[30] = 2050;
      *&v326[32] = v287;
      *&v326[40] = 2050;
      *&v326[42] = v291;
      *&v326[50] = 1026;
      *&v326[52] = v88;
      *&v326[56] = 2050;
      *&v326[58] = v285;
      *&v326[66] = 2050;
      *v327 = v289;
      *&v327[8] = 2050;
      *v328 = v92;
      *&v328[8] = 2050;
      *v329 = v27;
      *&v329[8] = 2050;
      *v330 = v50;
      *&v330[8] = 1026;
      *&v330[10] = v93;
      *&v330[14] = 2050;
      *&v330[16] = v89;
      v331 = 2050;
      *v332 = v90;
      *&v332[8] = 1026;
      *&v332[10] = v94;
      *&v332[14] = 2050;
      *&v332[16] = v91;
      v333 = 2050;
      *v334 = v95;
      *&v334[8] = 1026;
      *v335 = v96;
      *&v335[4] = 2082;
      *&v335[6] = v97;
      v336 = 2082;
      *v337 = v98;
      _os_log_impl(dword_100000000, v86, OS_LOG_TYPE_DEBUG, "InertialOdometry,consumed IO sample VDR,mct,%{public}.3f,RefF,%{public}d,sampleInterval_s,%{public}.1f,isPDRValid,%{public}d,dPosXYZ_m,%{public}+.3f,%{public}+.3f,%{public}+.3f,isVDRValid,%{public}d,dVelXYZ_mps,%{public}+.3f,%{public}+.3f,%{public}+.3f,GDisMoved,%{public}.3f,GSpeedRate,%{public}+.3f,isIOCourseValid,%{public}d,Course_deg,%{public}.3f,CourseUnc_deg,%{public}.3f,isIOdtCourseValid,%{public}d,dtCourse_deg,%{public}.3f,dtCourseVar_rad2,%{public}.3f,IO_MountState,%{public}d,CM_Activity,%{public}s,IO_Context,%{public}s", buf, 0xC6u);
      if ((v311[9] & 0x80000000) != 0)
      {
        operator delete(*__p);
      }
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4770 != -1)
      {
        sub_1018D5484();
      }

      v235 = *(a2 + 104);
      v236 = *(a2 + 110);
      v237 = v236 & 1;
      v298 = *(a2 + 36);
      v302 = *(a2 + 28);
      v238 = (v236 >> 1) & 1;
      v286 = *(a2 + 24);
      v288 = *(a2 + 40);
      v290 = *(a2 + 32);
      v294 = *(a2 + 44);
      v239 = *(a2 + 88) * 57.2957795;
      v240 = sqrtf(*(a2 + 92)) * 57.2957795;
      v241 = *(a2 + 96) * 57.2957795;
      v242 = *(a2 + 48);
      v243 = (v236 >> 5) & 1;
      v244 = (v236 >> 6) & 1;
      v245 = *(a2 + 100);
      v246 = *(a2 + 107) - 1;
      v247 = v307;
      sub_1001FCE40(*(a1 + 73), v307);
      if (v308 < 0)
      {
        v247 = v307[0];
      }

      v248 = sub_1005C01DC(*(a1 + 142));
      *__p = 134354434;
      *&__p[4] = v14;
      v310 = 1026;
      *v311 = v235;
      *&v311[4] = 2050;
      *&v311[6] = v286;
      *&v311[14] = 1026;
      *&v311[16] = v237;
      *&v311[20] = 2050;
      *&v311[22] = v302;
      *&v311[30] = 2050;
      *&v311[32] = v290;
      *&v311[40] = 2050;
      *&v311[42] = v298;
      *&v311[50] = 1026;
      *&v311[52] = v238;
      *&v311[56] = 2050;
      *&v311[58] = v288;
      *&v311[66] = 2050;
      *v312 = v294;
      *&v312[8] = 2050;
      *v313 = v242;
      *&v313[8] = 2050;
      *v314 = v27;
      *&v314[8] = 2050;
      *v315 = v50;
      *&v315[8] = 1026;
      *&v315[10] = v243;
      *&v315[14] = 2050;
      *&v315[16] = v239;
      v316 = 2050;
      *v317 = v240;
      *&v317[8] = 1026;
      *&v317[10] = v244;
      *&v317[14] = 2050;
      *&v317[16] = v241;
      v318 = 2050;
      *v319 = v245;
      *&v319[8] = 1026;
      *v320 = v246;
      *&v320[4] = 2082;
      *&v320[6] = v247;
      v321 = 2082;
      *v322 = v248;
      v249 = _os_log_send_and_compose_impl();
      if (v308 < 0)
      {
        operator delete(v307[0]);
      }

      sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::LCFusionInertialOdometry::IOSampleUpdate(const CLPIOSample &)", "%s\n", v249);
      if (v249 != buf)
      {
        free(v249);
      }
    }

    sub_10028735C(a1, a2);
    return 1;
  }

LABEL_82:
  if (!sub_100125424(*(a1 + 73), v14, 6.0) && !sub_1001254F8(*(a1 + 73)))
  {
    if ((*(a2 + 110) & 1) == 0)
    {
      goto LABEL_111;
    }

    if ((*(a2 + 110) & 0x20) != 0 && *(a2 + 107) == 2 && sub_10011D140(*(a1 + 73), v14, 6.0))
    {
      if (*(a2 + 110))
      {
        sub_10028735C(a1, a2);
LABEL_218:
        *(a1 + 29) = *(a1 + 440);
        *(a1 + 60) = *(a1 + 57);
        return 1;
      }

LABEL_111:
      if (sub_100125608(*(a1 + 73), v14, 6.0) || sub_10020C700(*(a1 + 73)))
      {
        v80 = 3;
      }

      else
      {
        if (!sub_1001253BC(*(a1 + 73), v14, 6.0))
        {
          if (*(a1 + 62) > 0.3 || *(a2 + 107) == 2 || (*(a2 + 110) & 0x20) != 0 && !sub_1001253BC(*(a1 + 73), v14, 6.0) && (sub_1002F8B34(*(a1 + 73), v14, 6.0) & 1) == 0)
          {
            v179 = 5;
          }

          else
          {
            if (!sub_1002F8B34(*(a1 + 73), v14, 6.0))
            {
              *(a1 + 70) = 0xBFF0000000000000;
              *(a1 + 142) = 0;
              goto LABEL_115;
            }

            *(a1 + 142) = 3;
            if (*(a1 + 62) <= 0.1)
            {
LABEL_115:
              if (qword_1025D4770 != -1)
              {
                sub_1018D5484();
              }

              v81 = qword_1025D4778;
              if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
              {
                v82 = *(a1 + 62);
                v83 = __p;
                sub_1001FCE40(*(a1 + 73), __p);
                if (v311[9] < 0)
                {
                  v83 = *__p;
                }

                v84 = sub_1005C01DC(*(a1 + 142));
                *buf = 134349570;
                v324 = v82;
                v325 = 2082;
                *v326 = v83;
                *&v326[8] = 2082;
                *&v326[10] = v84;
                _os_log_impl(dword_100000000, v81, OS_LOG_TYPE_DEBUG, "InertialOdometry,PDR invalid,set motion state based on Motion Activity and/or IO delta-velocity,horizSpeedRate_mps2,%{public}.3f,CM_MotionActivity,%{public}s,IO_Context,%{public}s", buf, 0x20u);
                if ((v311[9] & 0x80000000) != 0)
                {
                  operator delete(*__p);
                }
              }

              if (sub_10000A100(121, 2))
              {
                bzero(buf, 0x65CuLL);
                if (qword_1025D4770 != -1)
                {
                  sub_1018D5484();
                }

                v256 = *(a1 + 62);
                v257 = v307;
                sub_1001FCE40(*(a1 + 73), v307);
                if (v308 < 0)
                {
                  v257 = v307[0];
                }

                v258 = sub_1005C01DC(*(a1 + 142));
                *__p = 134349570;
                *&__p[4] = v256;
                v310 = 2082;
                *v311 = v257;
                *&v311[8] = 2082;
                *&v311[10] = v258;
                v259 = _os_log_send_and_compose_impl();
                if (v308 < 0)
                {
                  operator delete(v307[0]);
                }

                sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::LCFusionInertialOdometry::IOSampleUpdate(const CLPIOSample &)", "%s\n", v259);
                if (v259 != buf)
                {
                  free(v259);
                }
              }

              *(a1 + 70) = v14;
              goto LABEL_218;
            }

            v179 = 4;
          }

          *(a1 + 142) = v179;
          *(a1 + 72) = v14;
          goto LABEL_115;
        }

        v80 = 2;
      }

      *(a1 + 142) = v80;
      goto LABEL_115;
    }

    *(a1 + 43) = v29;
    *(a1 + 26) = vcvtq_f64_f32(*(a2 + 28));
    *(a1 + 47) = v14;
    *(a1 + 48) = v27;
    *(a1 + 49) = 0x3FC70A3D70A3D70ALL;
    *(a1 + 50) = *(a2 + 24);
    *(a1 + 51) = 1;
    sub_100123544(a1 + 16, a2);
    v99 = *(a1 + 38);
    if (*(a1 + 39) != v99)
    {
      v100 = *(a1 + 41);
      v101 = (v99 + 8 * (v100 >> 8));
      v102 = *v101 + 16 * v100;
      v103 = *(v99 + (((*(a1 + 42) + v100) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (a1[336] + v100);
      while (v102 != v103)
      {
        v104 = *v102;
        v105 = *(v102 + 8);
        if (v105)
        {
          atomic_fetch_add_explicit(&v105->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if (v104)
        {
          sub_100123544(v104, a2);
        }

        if (v105)
        {
          sub_100008080(v105);
        }

        v102 += 16;
        if (v102 - *v101 == 4096)
        {
          v106 = v101[1];
          ++v101;
          v102 = v106;
        }
      }
    }

    if ((*(a2 + 110) & 8) != 0)
    {
      if (qword_1025D4770 != -1)
      {
        sub_1018D5484();
      }

      v145 = qword_1025D4778;
      if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
      {
        v146 = *(a2 + 104);
        v147 = *(a2 + 110);
        v148 = *(a2 + 24);
        v149 = *(a2 + 28);
        v150 = *(a2 + 32);
        v151 = *(a2 + 36);
        v152 = *(a2 + 40);
        v153 = *(a2 + 44);
        v154 = *(a2 + 48);
        v155 = *(a2 + 16);
        v156 = *(a2 + 68) * 57.2957795;
        v157 = *(a2 + 80);
        v158 = *(a2 + 107);
        v159 = *(a2 + 108);
        v160 = sqrtf(*(a2 + 72));
        v161 = *(a2 + 76);
        v162 = *(a2 + 109);
        *buf = 134354688;
        v324 = v14;
        v325 = 1026;
        *v326 = v146;
        *&v326[4] = 2050;
        *&v326[6] = v148;
        *&v326[14] = 1026;
        *&v326[16] = v147 & 1;
        *&v326[20] = 2050;
        *&v326[22] = v149;
        *&v326[30] = 2050;
        *&v326[32] = v150;
        *&v326[40] = 2050;
        *&v326[42] = v151;
        *&v326[50] = 1026;
        *&v326[52] = (v147 >> 1) & 1;
        *&v326[56] = 2050;
        *&v326[58] = v152;
        *&v326[66] = 2050;
        *v327 = v153;
        *&v327[8] = 2050;
        *v328 = v154;
        *&v328[8] = 2050;
        *v329 = v29;
        *&v329[8] = 2050;
        *v330 = v50;
        *&v330[8] = 2050;
        *&v330[10] = v155;
        *&v330[18] = 1026;
        *&v330[20] = (v147 >> 3) & 1;
        v331 = 1026;
        *v332 = (v147 >> 4) & 1;
        *&v332[4] = 2050;
        *&v332[6] = v156;
        *&v332[14] = 2050;
        *&v332[16] = v160 * 57.2957795;
        v333 = 2050;
        *v334 = v161;
        *&v334[8] = 2050;
        *v335 = sqrtf(v157);
        *&v335[8] = 1026;
        *&v335[10] = v158 - 1;
        v336 = 1026;
        *v337 = v159 - 1;
        *&v337[4] = 1026;
        *&v337[6] = v162 - 1;
        _os_log_impl(dword_100000000, v145, OS_LOG_TYPE_DEBUG, "InertialOdometry,consumed IO sample PDR,mct,%{public}.3f,RefF,%{public}d,sampleInterval_s,%{public}.1f,isPDRValid,%{public}d,dPosXYZ_m,%{public}+.3f,%{public}+.3f,%{public}+.3f,isVDRValid,%{public}d,dVelXYZ_mps,%{public}+.3f,%{public}+.3f,%{public}+.3f,GDis,%{public}.3f,GSpeedRate,%{public}+.3f,CalibApplicabilityMCT,%{public}.3f,yawCorrValid,%{public}d,SFValid,%{public}d,yawCorrDeg,%{public}+.2f,yawCorrUncDeg,%{public}.2f,SF,%{public}.3f,SF_unc,%{public}.3f,IO_MountState,%{public}d,IO_zuptFlag,%{public}d,IO_DOTBiasChangeFlag,%{public}d", buf, 0xC8u);
      }

      if (!sub_10000A100(121, 2))
      {
        goto LABEL_187;
      }

      sub_1018D54AC(buf);
      v260 = *(a2 + 104);
      v261 = *(a2 + 110);
      v262 = *(a2 + 24);
      v263 = *(a2 + 28);
      v264 = *(a2 + 32);
      v265 = *(a2 + 36);
      v266 = *(a2 + 40);
      v267 = *(a2 + 44);
      v268 = *(a2 + 48);
      v269 = *(a2 + 16);
      v270 = *(a2 + 68) * 57.2957795;
      v271 = *(a2 + 80);
      v272 = *(a2 + 107);
      v273 = sqrtf(*(a2 + 72));
      v274 = *(a2 + 76);
      v275 = *(a2 + 108);
      v276 = *(a2 + 109);
      *__p = 134354688;
      *&__p[4] = v14;
      v310 = 1026;
      *v311 = v260;
      *&v311[4] = 2050;
      *&v311[6] = v262;
      *&v311[14] = 1026;
      *&v311[16] = v261 & 1;
      *&v311[20] = 2050;
      *&v311[22] = v263;
      *&v311[30] = 2050;
      *&v311[32] = v264;
      *&v311[40] = 2050;
      *&v311[42] = v265;
      *&v311[50] = 1026;
      *&v311[52] = (v261 >> 1) & 1;
      *&v311[56] = 2050;
      *&v311[58] = v266;
      *&v311[66] = 2050;
      *v312 = v267;
      *&v312[8] = 2050;
      *v313 = v268;
      *&v313[8] = 2050;
      *v314 = v29;
      *&v314[8] = 2050;
      *v315 = v50;
      *&v315[8] = 2050;
      *&v315[10] = v269;
      *&v315[18] = 1026;
      *&v315[20] = (v261 >> 3) & 1;
      v316 = 1026;
      *v317 = (v261 >> 4) & 1;
      *&v317[4] = 2050;
      *&v317[6] = v270;
      *&v317[14] = 2050;
      *&v317[16] = v273 * 57.2957795;
      v318 = 2050;
      *v319 = v274;
      *&v319[8] = 2050;
      *v320 = sqrtf(v271);
      *&v320[8] = 1026;
      *&v320[10] = v272 - 1;
      v321 = 1026;
      *v322 = v275 - 1;
      *&v322[4] = 1026;
      *&v322[6] = v276 - 1;
      v126 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::LCFusionInertialOdometry::IOSampleUpdate(const CLPIOSample &)", "%s\n", v126);
      if (v126 == buf)
      {
        goto LABEL_187;
      }
    }

    else
    {
      if (qword_1025D4770 != -1)
      {
        sub_1018D5484();
      }

      v107 = qword_1025D4778;
      if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
      {
        v108 = *(a2 + 104);
        v109 = *(a2 + 110);
        v110 = *(a2 + 24);
        v111 = *(a2 + 28);
        v112 = *(a2 + 32);
        v113 = *(a2 + 36);
        v114 = *(a2 + 40);
        v115 = *(a2 + 44);
        v116 = *(a2 + 48);
        *buf = 134352128;
        v324 = v14;
        v325 = 1026;
        *v326 = v108;
        *&v326[4] = 2050;
        *&v326[6] = v110;
        *&v326[14] = 1026;
        *&v326[16] = v109 & 1;
        *&v326[20] = 2050;
        *&v326[22] = v111;
        *&v326[30] = 2050;
        *&v326[32] = v112;
        *&v326[40] = 2050;
        *&v326[42] = v113;
        *&v326[50] = 1026;
        *&v326[52] = (v109 >> 1) & 1;
        *&v326[56] = 2050;
        *&v326[58] = v114;
        *&v326[66] = 2050;
        *v327 = v115;
        *&v327[8] = 2050;
        *v328 = v116;
        *&v328[8] = 2050;
        *v329 = v29;
        *&v329[8] = 2050;
        *v330 = v50;
        _os_log_impl(dword_100000000, v107, OS_LOG_TYPE_DEBUG, "InertialOdometry,consumed IO sample PDR,mct,%{public}.3f,RefF,%{public}d,sampleInterval_s,%{public}.1f,isPDRValid,%{public}d,dPosXYZ_m,%{public}+.3f,%{public}+.3f,%{public}+.3f,isVDRValid,%{public}d,dVelXYZ_mps,%{public}+.3f,%{public}+.3f,%{public}+.3f,GDis,%{public}.3f,GSpeedRate,%{public}+.3f", buf, 0x78u);
      }

      if (!sub_10000A100(121, 2))
      {
        goto LABEL_187;
      }

      sub_1018D54AC(buf);
      v117 = *(a2 + 104);
      v118 = *(a2 + 110);
      v119 = *(a2 + 24);
      v120 = *(a2 + 28);
      v121 = *(a2 + 32);
      v122 = *(a2 + 36);
      v123 = *(a2 + 40);
      v124 = *(a2 + 44);
      v125 = *(a2 + 48);
      *__p = 134352128;
      *&__p[4] = v14;
      v310 = 1026;
      *v311 = v117;
      *&v311[4] = 2050;
      *&v311[6] = v119;
      *&v311[14] = 1026;
      *&v311[16] = v118 & 1;
      *&v311[20] = 2050;
      *&v311[22] = v120;
      *&v311[30] = 2050;
      *&v311[32] = v121;
      *&v311[40] = 2050;
      *&v311[42] = v122;
      *&v311[50] = 1026;
      *&v311[52] = (v118 >> 1) & 1;
      *&v311[56] = 2050;
      *&v311[58] = v123;
      *&v311[66] = 2050;
      *v312 = v124;
      *&v312[8] = 2050;
      *v313 = v125;
      *&v313[8] = 2050;
      *v314 = v29;
      *&v314[8] = 2050;
      *v315 = v50;
      v126 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::LCFusionInertialOdometry::IOSampleUpdate(const CLPIOSample &)", "%s\n", v126);
      if (v126 == buf)
      {
        goto LABEL_187;
      }
    }

    free(v126);
LABEL_187:
    sub_100123E78(a1, a2, v29);
    v163 = *(a1 + 58);
    if (v163 >= 0.0 && (v163 > v14 || v14 - v163 <= 2.0))
    {
      *(a1 + 61) = vabdd_f64(v30, *(a1 + 59));
    }

    if (v27 <= 0.001)
    {
      if (*(a2 + 106) || v50 <= 0.3 && *(v4 + 14) <= 0.3)
      {
        *(a1 + 142) = 1;
        ++*(a1 + 149);
      }

      else
      {
        *(a1 + 142) = 5;
        *(a1 + 72) = v14;
        if (qword_1025D4770 != -1)
        {
          sub_1018D5484();
        }

        v165 = qword_1025D4778;
        if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
        {
          v166 = *(a2 + 106);
          v167 = *(a2 + 24);
          v168 = *(a1 + 59);
          v169 = *(a1 + 61);
          v170 = *(a1 + 58);
          v171 = fabs(v14 - v170);
          if (v170 <= 0.0)
          {
            v171 = -1.0;
          }

          *buf = 134350848;
          v324 = v14;
          v325 = 1026;
          *v326 = v166;
          *&v326[4] = 2050;
          *&v326[6] = v167;
          *&v326[14] = 2050;
          *&v326[16] = v50;
          *&v326[24] = 2050;
          *&v326[26] = v168;
          *&v326[34] = 2050;
          *&v326[36] = v30;
          *&v326[44] = 2050;
          *&v326[46] = v169;
          *&v326[54] = 2050;
          *&v326[56] = v171;
          _os_log_impl(dword_100000000, v165, OS_LOG_TYPE_DEBUG, "InertialOdometry,PDR,VDR xcheck detected non-stationary,mct,%{public}.3f,staticFlag,%{public}d,sampleInterval_s,%{public}.1f,horizSpeedRate_mps2,%{public}+.3f,lastPDRVVel_mps,%{public}+.3f,currPDRVVel,%{public}+.3f,absChangeInDeltaAltitude_mps,%{public}.3f,VVel_dt_s,%{public}.3f", buf, 0x4Eu);
        }

        if (sub_10000A100(121, 2))
        {
          sub_1018D54AC(buf);
          v277 = *(a2 + 106);
          v278 = *(a2 + 24);
          v279 = *(a1 + 59);
          v280 = *(a1 + 61);
          v281 = *(a1 + 58);
          v282 = fabs(v14 - v281);
          if (v281 <= 0.0)
          {
            v282 = -1.0;
          }

          *__p = 134350848;
          *&__p[4] = v14;
          v310 = 1026;
          *v311 = v277;
          *&v311[4] = 2050;
          *&v311[6] = v278;
          *&v311[14] = 2050;
          *&v311[16] = v50;
          *&v311[24] = 2050;
          *&v311[26] = v279;
          *&v311[34] = 2050;
          *&v311[36] = v30;
          *&v311[44] = 2050;
          *&v311[46] = v280;
          *&v311[54] = 2050;
          *&v311[56] = v282;
          v283 = _os_log_send_and_compose_impl();
          sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::LCFusionInertialOdometry::IOSampleUpdate(const CLPIOSample &)", "%s\n", v283);
          if (v283 != buf)
          {
            free(v283);
          }
        }

        ++*(a1 + 148);
      }
    }

    else
    {
      if (v27 >= *(a2 + 24) * 0.25)
      {
        v164 = 3;
      }

      else
      {
        v164 = 2;
      }

      *(a1 + 142) = v164;
    }

    *(a1 + 70) = v14;
    if (qword_1025D4770 != -1)
    {
      sub_1018D5484();
    }

    v172 = qword_1025D4778;
    if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
    {
      v173 = *(a1 + 1);
      v174 = sub_1005C01DC(*(a1 + 142));
      v175 = *(a2 + 24);
      v176 = hypotf(*(a2 + 40), *(a2 + 44));
      v177 = *(a1 + 25) + *(a1 + 24);
      v178 = sub_1005BFCB0(a1 + 4);
      *buf = 134351362;
      v324 = v173;
      v325 = 2050;
      *v326 = v14;
      *&v326[8] = 2050;
      *&v326[10] = vabdd_f64(v14, v173);
      *&v326[18] = 2082;
      *&v326[20] = v174;
      *&v326[28] = 2050;
      *&v326[30] = v175;
      *&v326[38] = 2050;
      *&v326[40] = v176;
      *&v326[48] = 2050;
      *&v326[50] = v27;
      *&v326[58] = 2050;
      *&v326[60] = v28;
      *v327 = 2050;
      *&v327[2] = v177;
      *v328 = 2050;
      *&v328[2] = v178;
      _os_log_impl(dword_100000000, v172, OS_LOG_TYPE_DEBUG, "InertialOdometry,IO PDR cumsum,prev IO mct,%{public}.3f,curr IO mct,%{public}.3f,dTime,%{public}.3f,IO_Context,%{public}s,sampleInterval_s,%{public}.1f,HSpeed_mps,%{public}.3f,GDis_m,%{public}.3f,VDis_m,%{public}+.3f,CumSumGDistMoved_dt_s,%{public}.3f,CumSumGDist_m,%{public}.3f", buf, 0x66u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018D54AC(buf);
      v250 = *(a1 + 1);
      v251 = sub_1005C01DC(*(a1 + 142));
      v252 = *(a2 + 24);
      v253 = hypotf(*(a2 + 40), *(a2 + 44));
      v254 = *(a1 + 25) + *(a1 + 24);
      *__p = 134351362;
      *&__p[4] = v250;
      v310 = 2050;
      *v311 = v14;
      *&v311[8] = 2050;
      *&v311[10] = vabdd_f64(v14, v250);
      *&v311[18] = 2082;
      *&v311[20] = v251;
      *&v311[28] = 2050;
      *&v311[30] = v252;
      *&v311[38] = 2050;
      *&v311[40] = v253;
      *&v311[48] = 2050;
      *&v311[50] = v27;
      *&v311[58] = 2050;
      *&v311[60] = v28;
      *v312 = 2050;
      *&v312[2] = v254;
      *v313 = 2050;
      *&v313[2] = sub_1005BFCB0(a1 + 4);
      v255 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::LCFusionInertialOdometry::IOSampleUpdate(const CLPIOSample &)", "%s\n", v255);
      if (v255 != buf)
      {
        free(v255);
      }
    }

    goto LABEL_218;
  }

  if (qword_1025D4770 != -1)
  {
    sub_1018D5484();
  }

  v58 = qword_1025D4778;
  if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
  {
    v59 = sub_100125258(*(a1 + 73), v14, 6.0);
    v60 = sub_1001255A0(*(a1 + 73), v14, 6.0);
    v61 = sub_1001254F8(*(a1 + 73));
    v62 = *(a2 + 107) - 1;
    *buf = 134350080;
    v324 = v14;
    v325 = 1026;
    *v326 = v59;
    *&v326[4] = 1026;
    *&v326[6] = v60;
    *&v326[10] = 1026;
    *&v326[12] = v61;
    *&v326[16] = 1026;
    *&v326[18] = v62;
    _os_log_impl(dword_100000000, v58, OS_LOG_TYPE_DEBUG, "InertialOdometry,CM indicates non-pedestrian,IO mct,%{public}.3f,isVehicular,%{public}d,isCycling,%{public}d,isWorkoutCycling,%{public}d,IO_MountState,%{public}d", buf, 0x24u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018D54AC(buf);
    v184 = sub_100125258(*(a1 + 73), v14, 6.0);
    v185 = sub_1001255A0(*(a1 + 73), v14, 6.0);
    v186 = sub_1001254F8(*(a1 + 73));
    v187 = *(a2 + 107) - 1;
    *__p = 134350080;
    *&__p[4] = v14;
    v310 = 1026;
    *v311 = v184;
    *&v311[4] = 1026;
    *&v311[6] = v185;
    *&v311[10] = 1026;
    *&v311[12] = v186;
    *&v311[16] = 1026;
    *&v311[18] = v187;
    v188 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::LCFusionInertialOdometry::IOSampleUpdate(const CLPIOSample &)", "%s\n", v188);
    if (v188 != buf)
    {
      free(v188);
    }
  }

  v63 = *(a2 + 110);
  if ((v63 & 0x21) == 0)
  {
    if (qword_1025D4770 != -1)
    {
      sub_1018D5484();
    }

    v67 = qword_1025D4778;
    if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
    {
      v68 = *(a2 + 104);
      v69 = *(a2 + 110);
      v70 = *(a2 + 24);
      v71 = *(a2 + 28);
      v72 = *(a2 + 32);
      v73 = *(a2 + 36);
      v74 = *(a2 + 40);
      v75 = *(a2 + 44);
      v76 = *(a2 + 48);
      v77 = *(a2 + 107) - 1;
      v78 = *(a2 + 108) - 1;
      v79 = *(a2 + 109) - 1;
      *buf = 134352384;
      v324 = v14;
      v325 = 1026;
      *v326 = v68;
      *&v326[4] = 2050;
      *&v326[6] = v70;
      *&v326[14] = 1026;
      *&v326[16] = v69 & 1;
      *&v326[20] = 2050;
      *&v326[22] = v71;
      *&v326[30] = 2050;
      *&v326[32] = v72;
      *&v326[40] = 2050;
      *&v326[42] = v73;
      *&v326[50] = 1026;
      *&v326[52] = (v69 >> 1) & 1;
      *&v326[56] = 2050;
      *&v326[58] = v74;
      *&v326[66] = 2050;
      *v327 = v75;
      *&v327[8] = 2050;
      *v328 = v76;
      *&v328[8] = 1026;
      *v329 = v77;
      *&v329[4] = 1026;
      *&v329[6] = v78;
      *v330 = 1026;
      *&v330[2] = v79;
      _os_log_impl(dword_100000000, v67, OS_LOG_TYPE_DEBUG, "InertialOdometry,no valid PDR and IO course to verify CM non-pedestrian,curr IO mct,%{public}.3f,RefF,%{public}d,sampleInterval_s,%{public}.1f,isPDRValid,%{public}d,dPosX_m,%{public}+.3f,dPosY_m,%{public}+.3f,dPosZ_m,%{public}+.3f,isVDRValid,%{public}d,dVelX_m,%{public}+.3f,dVelY_m,%{public}+.3f,dVelZ_m,%{public}+.3f,IO_MountState,%{public}d,IO_zuptFlag,%{public}d,IO_DOTBiasChangeFlag,%{public}d", buf, 0x76u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018D54AC(buf);
      v204 = *(a2 + 104);
      v205 = *(a2 + 110);
      v206 = *(a2 + 24);
      v207 = *(a2 + 28);
      v208 = *(a2 + 32);
      v209 = *(a2 + 36);
      v210 = *(a2 + 40);
      v211 = *(a2 + 44);
      v212 = *(a2 + 48);
      v213 = *(a2 + 107) - 1;
      v214 = *(a2 + 108) - 1;
      v215 = *(a2 + 109) - 1;
      *__p = 134352384;
      *&__p[4] = v14;
      v310 = 1026;
      *v311 = v204;
      *&v311[4] = 2050;
      *&v311[6] = v206;
      *&v311[14] = 1026;
      *&v311[16] = v205 & 1;
      *&v311[20] = 2050;
      *&v311[22] = v207;
      *&v311[30] = 2050;
      *&v311[32] = v208;
      *&v311[40] = 2050;
      *&v311[42] = v209;
      *&v311[50] = 1026;
      *&v311[52] = (v205 >> 1) & 1;
      *&v311[56] = 2050;
      *&v311[58] = v210;
      *&v311[66] = 2050;
      *v312 = v211;
      *&v312[8] = 2050;
      *v313 = v212;
      *&v313[8] = 1026;
      *v314 = v213;
      *&v314[4] = 1026;
      *&v314[6] = v214;
      *v315 = 1026;
      *&v315[2] = v215;
      v216 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::LCFusionInertialOdometry::IOSampleUpdate(const CLPIOSample &)", "%s\n", v216);
      if (v216 != buf)
      {
        free(v216);
      }
    }

    *(a1 + 142) = 0;
    goto LABEL_181;
  }

  if (*(a2 + 110))
  {
    v64 = *(a1 + 58);
    if (v64 >= 0.0 && (v64 > v14 || v14 - v64 <= 2.0))
    {
      *(a1 + 61) = vabdd_f64(v30, *(a1 + 59));
    }

    *(a1 + 58) = v14;
    *(a1 + 59) = v30;
    *(a1 + 60) = 0x3FB70A3D70A3D70ALL;
    sub_10028735C(a1, a2);
    v63 = *(a2 + 110);
  }

  if ((v63 & 2) == 0)
  {
    if (qword_1025D4770 != -1)
    {
      sub_1018D5484();
    }

    v65 = qword_1025D4778;
    if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v65, OS_LOG_TYPE_DEBUG, "InertialOdometry,CM Motion Activity indicate non-pedestrian,cross-check with IO sample failed,reason: invalid IO delta velocity", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018D54AC(buf);
      *__p = 0;
      v66 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::LCFusionInertialOdometry::IOSampleUpdate(const CLPIOSample &)", "%s\n", v66);
      if (v66 != buf)
      {
        free(v66);
      }
    }

    return 1;
  }

  if (*(a2 + 108) == 2)
  {
    goto LABEL_125;
  }

  if (sub_1001253BC(*(a1 + 73), v14, 6.0))
  {
    v85 = 2;
    goto LABEL_145;
  }

  if (v50 > 0.3 && ((*(a2 + 110) & 1) == 0 || v29 < 0.25) || *(a2 + 107) == 2 || (*(a2 + 110) & 0x20) != 0)
  {
    v127 = 5;
    goto LABEL_175;
  }

  if (*(a2 + 106) != 1 && ((*(a2 + 110) & 1) == 0 || v50 > 0.001))
  {
    v127 = 4;
LABEL_175:
    *(a1 + 142) = v127;
    *(a1 + 72) = v14;
    goto LABEL_176;
  }

LABEL_125:
  v85 = 1;
LABEL_145:
  *(a1 + 142) = v85;
  *(a1 + 47) = v14;
  *(a1 + 24) = xmmword_101C7FE40;
  *(a1 + 50) = *(a2 + 24);
  *(a1 + 51) = 1;
LABEL_176:
  if (qword_1025D4770 != -1)
  {
    sub_1018D5484();
  }

  v128 = qword_1025D4778;
  if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
  {
    v129 = *(a2 + 104);
    v130 = *(a2 + 110);
    v131 = v130 & 1;
    v296 = *(a2 + 28);
    v300 = *(a2 + 32);
    v132 = *(a2 + 36);
    v133 = (v130 >> 1) & 1;
    v292 = *(a2 + 40);
    v134 = v29;
    v135 = *(a2 + 44);
    v305 = v50;
    v136 = *(a2 + 48);
    v137 = (v130 >> 5) & 1;
    v138 = *(a2 + 88) * 57.2957795;
    v139 = sqrtf(*(a2 + 92)) * 57.2957795;
    v140 = *(a2 + 96) * 57.2957795;
    v141 = sub_1005C01DC(*(a1 + 142));
    v142 = *(a2 + 107) - 1;
    v143 = *(a2 + 108) - 1;
    v144 = *(a2 + 109) - 1;
    *buf = 134353922;
    v324 = v14;
    v325 = 1026;
    *v326 = v129;
    *&v326[4] = 1026;
    *&v326[6] = v131;
    *&v326[10] = 2050;
    *&v326[12] = v296;
    *&v326[20] = 2050;
    *&v326[22] = v300;
    *&v326[30] = 2050;
    *&v326[32] = v132;
    *&v326[40] = 1026;
    *&v326[42] = v133;
    *&v326[46] = 2050;
    *&v326[48] = v292;
    *&v326[56] = 2050;
    *&v326[58] = v135;
    v29 = v134;
    *&v326[66] = 2050;
    *v327 = v136;
    v50 = v305;
    *&v327[8] = 2050;
    *v328 = v134;
    *&v328[8] = 2050;
    *v329 = v305;
    *&v329[8] = 1026;
    *v330 = v137;
    *&v330[4] = 2050;
    *&v330[6] = v138;
    *&v330[14] = 2050;
    *&v330[16] = v139;
    v331 = 2050;
    *v332 = v140;
    *&v332[8] = 2082;
    *&v332[10] = v141;
    *&v332[18] = 1026;
    *&v332[20] = v142;
    v333 = 1026;
    *v334 = v143;
    *&v334[4] = 1026;
    *&v334[6] = v144;
    _os_log_impl(dword_100000000, v128, OS_LOG_TYPE_DEBUG, "InertialOdometry,PDR vs VDR xcheck,IO mct,%{public}.3f,RefF,%{public}d,isPDRValid,%{public}d,dPosXYZ_m,%{public}+.3f,%{public}+.3f,%{public}+.3f,isVDRValid,%{public}d,dVelXYZ_mps,%{public}+.3f,%{public}+.3f,%{public}+.3f,GDis_m,%{public}.3f,GSpeedRate_mps2,%{public}+.3f,isIOCourseValid,%{public}d,Course_deg,%{public}.3f,CourseUnc_deg,%{public}.3f,dCourse_deg,%{public}+.3f,IO_Context,%{public}s,IO_MountState,%{public}d,IO_zuptFlag,%{public}d,IO_DOTBiasChangeFlag,%{public}d", buf, 0xAEu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018D54AC(buf);
    v217 = *(a2 + 104);
    v218 = *(a2 + 110);
    v219 = v218 & 1;
    v297 = *(a2 + 28);
    v301 = *(a2 + 32);
    v306 = v50;
    v220 = *(a2 + 36);
    v221 = (v218 >> 1) & 1;
    v293 = *(a2 + 40);
    v222 = *(a2 + 44);
    v223 = *(a2 + 48);
    v224 = (v218 >> 5) & 1;
    v225 = *(a2 + 88) * 57.2957795;
    v226 = sqrtf(*(a2 + 92)) * 57.2957795;
    v227 = *(a2 + 96) * 57.2957795;
    v228 = sub_1005C01DC(*(a1 + 142));
    v229 = *(a2 + 107) - 1;
    v230 = *(a2 + 108) - 1;
    v231 = *(a2 + 109) - 1;
    *__p = 134353922;
    *&__p[4] = v14;
    v310 = 1026;
    *v311 = v217;
    *&v311[4] = 1026;
    *&v311[6] = v219;
    *&v311[10] = 2050;
    *&v311[12] = v297;
    *&v311[20] = 2050;
    *&v311[22] = v301;
    *&v311[30] = 2050;
    *&v311[32] = v220;
    *&v311[40] = 1026;
    *&v311[42] = v221;
    *&v311[46] = 2050;
    *&v311[48] = v293;
    *&v311[56] = 2050;
    *&v311[58] = v222;
    *&v311[66] = 2050;
    *v312 = v223;
    *&v312[8] = 2050;
    *v313 = v29;
    *&v313[8] = 2050;
    *v314 = v306;
    *&v314[8] = 1026;
    *v315 = v224;
    *&v315[4] = 2050;
    *&v315[6] = v225;
    *&v315[14] = 2050;
    *&v315[16] = v226;
    v316 = 2050;
    *v317 = v227;
    *&v317[8] = 2082;
    *&v317[10] = v228;
    *&v317[18] = 1026;
    *&v317[20] = v229;
    v318 = 1026;
    *v319 = v230;
    *&v319[4] = 1026;
    *&v319[6] = v231;
    v232 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::LCFusionInertialOdometry::IOSampleUpdate(const CLPIOSample &)", "%s\n", v232);
    if (v232 != buf)
    {
      free(v232);
    }
  }

LABEL_181:
  *(a1 + 70) = v14;
  return 1;
}

void sub_1001227E0(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10037EA9C(a1);
}

uint64_t sub_1001227EC(uint64_t a1, double *a2)
{
  v4 = sub_10011FC38(*(a1 + 2168), a2);
  v5 = v4;
  if (*(a1 + 2904) == 1 && a2[1] > 0.0)
  {
    *__src = a2 + 1;
    v6 = sub_100D73858(a1 + 2920, a2 + 1);
    sub_10011BB24(*(a1 + 2168), __src);
    memmove(v6 + 23, __src, 0x100uLL);
    *(v6 + 440) = 1;
    return v5;
  }

  v7 = *(a1 + 248);
  if (v7)
  {
    v8 = -1.0;
    do
    {
      if (v7[71] > v8 && *(v7 + 214) != 0)
      {
        v8 = v7[71];
      }

      v7 = *v7;
    }

    while (v7);
  }

  else
  {
    v8 = -1.0;
  }

  v10 = a2[1];
  if (v10 <= 0.0 || (v8 > v10 ? (v11 = v8 - v10 <= 1.5) : (v11 = 1), !v11))
  {
    if (qword_1025D4770 != -1)
    {
      sub_1002F97A8();
    }

    v19 = qword_1025D4778;
    if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
    {
      *__src = 134349824;
      *&__src[4] = v10;
      v56 = 2050;
      v57 = v8;
      v58 = 2050;
      v59 = v8 - v10;
      v60 = 2050;
      v61 = 0x3FF8000000000000;
      _os_log_impl(dword_100000000, v19, OS_LOG_TYPE_DEBUG, "#fusion,ignoring stale/invalid IO sample,IO_mct,%{public}.3f,most recent filter update time mct,%{public}.3f,IO_delay_s,%{public}.3f,tolerance,%{public}.3f", __src, 0x2Au);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101A7B5F4(__src);
      v47 = 134349824;
      v48 = v10;
      v49 = 2050;
      v50 = v8;
      v51 = 2050;
      v52 = v8 - v10;
      v53 = 2050;
      v54 = 0x3FF8000000000000;
      v20 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::CLLCFusion::processIOSample(const CLPIOSample &)", "%s\n", v20);
      if (v20 != __src)
      {
        free(v20);
      }
    }

    return 0;
  }

  v12 = v8 + 0.001;
  if (v10 > v8)
  {
    v12 = a2[1];
  }

  v38 = v12;
  v13 = *(a1 + 2168);
  v14 = *(v13 + 560);
  v15 = *(v13 + 568);
  if (v14 <= 0.0 || v15 == 0)
  {
    if (qword_1025D4770 != -1)
    {
      sub_1002F97A8();
    }

    v17 = qword_1025D4778;
    if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
    {
      *__src = 134349312;
      *&__src[4] = v10;
      v56 = 1026;
      LODWORD(v57) = v14 > 0.0;
      _os_log_impl(dword_100000000, v17, OS_LOG_TYPE_DEBUG, "#fusion,invalid/unknown IO derived motion context from IO sample,IO mct,%{public}.3f,isValidContext,%{public}d", __src, 0x12u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101A7B5F4(__src);
      v47 = 134349312;
      v48 = v10;
      v49 = 1026;
      LODWORD(v50) = v14 > 0.0;
      v18 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::CLLCFusion::processIOSample(const CLPIOSample &)", "%s\n", v18);
      if (v18 != __src)
      {
        free(v18);
      }
    }

    goto LABEL_60;
  }

  if ((v4 & 1) == 0)
  {
LABEL_60:
    sub_1001FBBCC(a1, &v38);
    sub_1000DAAA0(a1, 1, v38);
    return 0;
  }

  if (v15 > 2 || (*(a1 + 2800) & 1) != 0 || *(a1 + 112) != 1 || vabdd_f64(sub_1000281DC(), *(a1 + 92)) >= *(a1 + 104) || *(a1 + 68) >= 5.0 || *(a1 + 60) < 4.0 || sub_1001253BC(a1 + 2424, v38, 6.0) && !sub_100D6B860(a1 + 2680, 6.0))
  {
    sub_10011BB24(*(a1 + 2168), &v47);
    if ((sub_10011BD44(a1, &v47, v38) & 1) == 0)
    {
      sub_1001FBBCC(a1, &v38);
    }

    if (*a2 > 0.0)
    {
      if (*(a1 + 1104))
      {
        v21 = vabdd_f64(*a2, *(a1 + 824));
        if (v21 > 2.0)
        {
          if (qword_1025D4770 != -1)
          {
            sub_100224830();
          }

          v22 = qword_1025D4778;
          if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
          {
            v23 = *a2;
            v24 = *(a1 + 824);
            *__src = 134349824;
            *&__src[4] = v10;
            v56 = 2050;
            v57 = v23;
            v58 = 2050;
            v59 = v24;
            v60 = 2050;
            v61 = *&v21;
            _os_log_impl(dword_100000000, v22, OS_LOG_TYPE_DEBUG, "#fusion,possible CFAbsoluteTime discontinuity detected,mct_now,%{public}.3f,IOSampleCfat,%{public}.3f,fusionStateCfat,%{public}.3f,deltaCfat_s,%{public}.3f", __src, 0x2Au);
          }

          if (sub_10000A100(121, 2))
          {
            sub_101A7B5F4(__src);
            v31 = *a2;
            v32 = *(a1 + 824);
            v39 = 134349824;
            v40 = v10;
            v41 = 2050;
            v42 = v31;
            v43 = 2050;
            v44 = v32;
            v45 = 2050;
            v46 = v21;
            v33 = _os_log_send_and_compose_impl();
            sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::CLLCFusion::processIOSample(const CLPIOSample &)", "%s\n", v33);
            if (v33 != __src)
            {
              free(v33);
            }
          }

          sub_100D6B904(a1);
        }
      }
    }

    v5 = 1;
    sub_1000DAAA0(a1, 1, v38);
  }

  else
  {
    if (qword_1025D4770 != -1)
    {
      sub_1002F97A8();
    }

    v26 = qword_1025D4778;
    if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_INFO))
    {
      v27 = *(a1 + 92);
      v28 = *(a1 + 60);
      v29 = *(a1 + 68);
      *__src = 134349825;
      *&__src[4] = v27;
      v56 = 2050;
      v57 = v14;
      v58 = 2049;
      v59 = v28;
      v60 = 2049;
      v61 = v29;
      _os_log_impl(dword_100000000, v26, OS_LOG_TYPE_INFO, "#fusion,locationTimestampCFAT,%{public}.3f,IOmct,%{public}.3f,InertialOdometry derived zupt rejected,speed,%{private}.2f,speedAcc,%{private}.2f", __src, 0x2Au);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101A7B5F4(__src);
      v34 = *(a1 + 92);
      v35 = *(a1 + 60);
      v36 = *(a1 + 68);
      v47 = 134349825;
      v48 = v34;
      v49 = 2050;
      v50 = v14;
      v51 = 2049;
      v52 = v35;
      v53 = 2049;
      v54 = v36;
      v37 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::CLLCFusion::processIOSample(const CLPIOSample &)", "%s\n", v37);
      if (v37 != __src)
      {
        free(v37);
      }
    }

    v5 = 0;
    v30 = *(a1 + 2168);
    *(v30 + 560) = 0xBFF0000000000000;
    *(v30 + 568) = 0;
  }

  return v5;
}

void sub_100122FD0(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10037EA9C(a1);
}

uint64_t sub_100122FDC(uint64_t a1, double **a2)
{
  v4 = sub_100123028(a1 + 456, a2);
  v5 = *(a1 + 3872);
  if (v5)
  {
    sub_10011DF14(v5, a2);
  }

  return v4;
}

uint64_t sub_100123028(uint64_t a1, double **a2)
{
  if ((*(a1 + 2884) & 1) == 0)
  {
    if (qword_1025D4770 != -1)
    {
      sub_1002F97A8();
    }

    v6 = qword_1025D4778;
    if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_ERROR, "#Error,Feed InertialOdometry,LC Fusion is not configured.", buf, 2u);
    }

    if (!sub_10000A100(121, 0))
    {
      goto LABEL_17;
    }

    sub_101A7B5F4(buf);
    v5 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 0, "BOOL cllcf::CLLCFusion::setIOSamples(const std::vector<CLPIOSample> &)", "%s\n", v5);
    goto LABEL_30;
  }

  if (*(a1 + 2880) != 4 || *(a1 + 2840) == 1)
  {
    sub_100272FF0(a1);
  }

  if (sub_100D6B41C(a1))
  {
    if (qword_1025D4770 != -1)
    {
      sub_1002F97A8();
    }

    v4 = qword_1025D4778;
    if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "#fusion,Feed InertialOdometry,IO sample(s) is ignored,detected likely in-flight Airplane Mode.", buf, 2u);
    }

    if (!sub_10000A100(121, 2))
    {
      goto LABEL_17;
    }

    goto LABEL_11;
  }

  v9 = *a2;
  v10 = a2[1];
  if (*a2 == v10)
  {
    if (qword_1025D4770 != -1)
    {
      sub_1002F97A8();
    }

    v11 = qword_1025D4778;
    if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEBUG, "#fusion,Feed InertialOdometry,no IO sample(s) provided.", buf, 2u);
    }

    if (!sub_10000A100(121, 2))
    {
      goto LABEL_17;
    }

LABEL_11:
    sub_101A7B5F4(buf);
    v5 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::CLLCFusion::setIOSamples(const std::vector<CLPIOSample> &)", "%s\n", v5);
LABEL_30:
    if (v5 != buf)
    {
      free(v5);
    }

LABEL_17:
    LOBYTE(v7) = 0;
    return v7 & 1;
  }

  v7 = 0;
  do
  {
    v7 |= sub_1001227EC(a1, v9);
    v9 += 14;
  }

  while (v9 != v10);
  return v7 & 1;
}

void sub_1001233C4(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10037EA9C(a1);
}

void sub_1001233D0(void *a1, uint64_t a2)
{
  v4 = *(a2 + 106);
  if (v4 == 2)
  {
    sub_10028D7E4((a1 + 2), *(a2 + 8));
    v13 = a1[38];
    if (a1[39] != v13)
    {
      v14 = a1[41];
      v15 = (v13 + 8 * (v14 >> 8));
      v16 = (*v15 + 16 * v14);
      v17 = *(v13 + (((a1[42] + v14) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(a1 + 336) + v14);
      while (v16 != v17)
      {
        v18 = *v16;
        v19 = v16[1];
        if (v19)
        {
          atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if (v18)
        {
          sub_10028D7E4(v18, *(a2 + 8));
        }

        if (v19)
        {
          sub_100008080(v19);
        }

        v16 += 2;
        if ((v16 - *v15) == 4096)
        {
          v20 = v15[1];
          ++v15;
          v16 = v20;
        }
      }
    }
  }

  else if (v4 == 1)
  {
    sub_100287154((a1 + 2), *(a2 + 8));
    v5 = a1[38];
    if (a1[39] != v5)
    {
      v6 = a1[41];
      v7 = (v5 + 8 * (v6 >> 8));
      v8 = (*v7 + 16 * v6);
      v9 = *(v5 + (((a1[42] + v6) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(a1 + 336) + v6);
      while (v8 != v9)
      {
        v10 = *v8;
        v11 = v8[1];
        if (v11)
        {
          atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if (v10)
        {
          sub_100287154(v10, *(a2 + 8));
        }

        if (v11)
        {
          sub_100008080(v11);
        }

        v8 += 2;
        if ((v8 - *v7) == 4096)
        {
          v12 = v7[1];
          ++v7;
          v8 = v12;
        }
      }
    }
  }
}

void sub_100123544(unsigned __int8 *a1, uint64_t a2)
{
  v2 = *(a1 + 1);
  v3 = *(a2 + 8);
  _NF = v2 > 0.0 && v3 < v2;
  if (!_NF && (*(a2 + 110) & 1) != 0)
  {
    v7 = *a1;
    if (v7 != *(a2 + 104))
    {
      sub_1005BF61C(a1, v3);
      v7 = *(a2 + 104);
      *a1 = v7;
    }

    if (v7 == 8)
    {
      v8 = *(a2 + 16);
      if (v8 > 0.0 && vabdd_f64(v8, *(a1 + 3)) > 2.22044605e-16)
      {
        *(a1 + 24) = xmmword_101C75BF0;
        __asm { FMOV            V0.2D, #-1.0 }

        *(a1 + 56) = _Q0;
        *(a1 + 8) = *(a2 + 72);
        *(a1 + 40) = xmmword_101C76220;
        *(a1 + 3) = *(a2 + 16);
        a1[72] = 0;
        if (qword_1025D4770 != -1)
        {
          sub_10025BA60();
        }

        v12 = qword_1025D4778;
        if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
        {
          v13 = a1 + 256;
          if (a1[279] < 0)
          {
            v13 = *v13;
          }

          v14 = *(a2 + 8);
          v15 = *(a2 + 16);
          *buf = 136446722;
          v62 = v13;
          v63 = 2050;
          v64 = v14;
          v65 = 2050;
          v66 = v15;
          _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_DEBUG, "#dPosIntg,id,%{public}s,feedDeltaPosition,mct,%{public}.3f,north-aligned calibrations changed at mct,%{public}.3f", buf, 0x20u);
        }

        if (sub_10000A100(121, 2))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1025D4770 != -1)
          {
            sub_1018D5484();
          }

          v56 = _os_log_send_and_compose_impl();
          sub_100152C7C("Generic", 1, 0, 2, "void cllcf::DeltaPositionIntegrator::feedDeltaPosition(const CLPIOSample &)", "%s\n", v56);
          if (v56 != buf)
          {
            free(v56);
          }
        }
      }
    }

    if (*(a1 + 3) > 0.0 && (*(a2 + 104) != 8 || *(a2 + 16) < 0.0))
    {
      *(a1 + 24) = xmmword_101C75BF0;
      __asm { FMOV            V0.2D, #-1.0 }

      *(a1 + 40) = _Q0;
      *(a1 + 56) = _Q0;
      a1[72] = 0;
      if (qword_1025D4770 != -1)
      {
        sub_1018D5484();
      }

      v17 = qword_1025D4778;
      if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
      {
        v18 = a1 + 256;
        if (a1[279] < 0)
        {
          v18 = *v18;
        }

        v19 = *(a2 + 8);
        *buf = 136446466;
        v62 = v18;
        v63 = 2050;
        v64 = v19;
        _os_log_impl(dword_100000000, v17, OS_LOG_TYPE_DEBUG, "#dPosIntg,id,%{public}s,feedDeltaPosition,mct,%{public}.3f,IO samples no longer come with calibration north-align estimates", buf, 0x16u);
      }

      if (sub_10000A100(121, 2))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1025D4770 != -1)
        {
          sub_1018D5484();
        }

        v55 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "void cllcf::DeltaPositionIntegrator::feedDeltaPosition(const CLPIOSample &)", "%s\n", v55);
        if (v55 != buf)
        {
          free(v55);
        }
      }
    }

    if (*(a2 + 109) == 2 && *(a1 + 3) > 0.0 && *(a1 + 5) >= 0.0)
    {
      a1[72] = 1;
      if (qword_1025D4770 != -1)
      {
        sub_1018D5484();
      }

      v20 = qword_1025D4778;
      if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
      {
        v21 = a1 + 256;
        if (a1[279] < 0)
        {
          v21 = *v21;
        }

        v22 = *(a2 + 8);
        *buf = 136446466;
        v62 = v21;
        v63 = 2050;
        v64 = v22;
        _os_log_impl(dword_100000000, v20, OS_LOG_TYPE_DEBUG, "#dPosIntg,id,%{public}s,feedDeltaPosition,mct,%{public}.3f,received IO sample with DOT Bias Change Possible", buf, 0x16u);
      }

      if (sub_10000A100(121, 2))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1025D4770 != -1)
        {
          sub_1018D5484();
        }

        v57 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "void cllcf::DeltaPositionIntegrator::feedDeltaPosition(const CLPIOSample &)", "%s\n", v57);
        if (v57 != buf)
        {
          free(v57);
        }
      }
    }

    v23 = *(a1 + 14);
    v24 = *(a2 + 8);
    if (v23 > 0.0 && *(a2 + 106) == 0 && v24 > v23)
    {
      *(a1 + 13) = v24 - v23 + *(a1 + 13);
      if (qword_1025D4770 != -1)
      {
        sub_1018D5484();
      }

      v27 = qword_1025D4778;
      if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
      {
        v28 = a1 + 256;
        if (a1[279] < 0)
        {
          v28 = *v28;
        }

        v29 = *(a2 + 8);
        v30 = *(a1 + 13);
        *buf = 136446722;
        v62 = v28;
        v63 = 2050;
        v64 = v29;
        v65 = 2050;
        v66 = v30;
        _os_log_impl(dword_100000000, v27, OS_LOG_TYPE_DEBUG, "#dPosIntg,id,%{public}s,feedDeltaPosition,mct,%{public}.3f,received IO sample non-static flag,accumStaticPeriods_s,%{public}.3f", buf, 0x20u);
      }

      if (sub_10000A100(121, 2))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1025D4770 != -1)
        {
          sub_1018D5484();
        }

        v54 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "void cllcf::DeltaPositionIntegrator::feedDeltaPosition(const CLPIOSample &)", "%s\n", v54);
        if (v54 != buf)
        {
          free(v54);
        }
      }

      *(a1 + 14) = 0xBFF0000000000000;
      v24 = *(a2 + 8);
    }

    v31 = (a1 + 144);
    v32 = *(a1 + 9);
    v33 = *(a1 + 31);
    v34.f32[0] = *(a2 + 28) + *(a1 + 30);
    *(a1 + 30) = v34.i32[0];
    v35 = *(a2 + 32) + v33;
    *(a1 + 31) = v35;
    v36 = *(a2 + 36) + *(a1 + 32);
    *(a1 + 32) = v36;
    v37 = *(a2 + 24);
    v38 = *(a1 + 2);
    v39 = v38 >= v24 || v38 <= 0.0;
    v40 = v24 - v38;
    if (v39)
    {
      v40 = v37;
    }

    *(a1 + 2) = v24;
    v41 = *(a1 + 22) + v40;
    *(a1 + 22) = v41;
    v42 = vmlaq_n_f64(v32, xmmword_101C7FE20, (v37 * v37));
    *v31 = v42;
    if (*(a2 + 104) == 8 && (v43 = *(a1 + 3), v43 > 0.0) && (v44 = *(a1 + 5), v44 >= 0.0))
    {
      *(a1 + 4) = vabdd_f64(v24, v43);
      v59 = v34.i32[0];
      v60 = v42;
      v58 = v35;
      v48 = v44 + hypotf(*(a2 + 28), *(a2 + 32));
      v49 = tan(sqrtf(*(a2 + 72)));
      v35 = v58;
      v34.i32[0] = v59;
      v42.f64[1] = v60.f64[1];
      v50 = v48 * v49;
      *(a1 + 6) = v50;
      v51 = -(v48 - v48 * sqrtf(*(a2 + 80)));
      *(a1 + 7) = fabs(v51);
      *(a1 + 5) = v48;
      v52 = v50 * v50;
      v53 = (v50 + v50) * (v50 + v50);
      if (!a1[72])
      {
        v53 = v52;
      }

      v45 = v51 * v51 + v60.f64[0] + v53;
      *(a1 + 18) = v45;
    }

    else
    {
      v45 = v42.f64[0];
    }

    v46 = *(a1 + 31);
    if (v46 > 0.0 && v41 >= v46)
    {
      *(a1 + 23) = v41 + *(a1 + 23);
      v34.f32[1] = v35;
      *(a1 + 132) = vadd_f32(v34, *(a1 + 132));
      *(a1 + 35) = v36 + *(a1 + 35);
      v42.f64[0] = v45;
      *(a1 + 10) = vaddq_f64(v42, *(a1 + 10));
      *(a1 + 15) = 0;
      *(a1 + 32) = 0;
      *(a1 + 22) = 0;
      v31->f64[0] = 0.0;
      *(a1 + 19) = 0;
    }

    v47 = *(a2 + 36);
    *(a1 + 24) = *(a2 + 28);
    *(a1 + 50) = v47;
    ++*(a1 + 10);
  }
}