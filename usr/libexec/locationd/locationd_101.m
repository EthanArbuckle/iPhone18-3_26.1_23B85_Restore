void sub_100759F60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100008080(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_100759FB0(id a1)
{
  v3 = 0;
  sub_10001CAF4(&buf);
  v1 = sub_1000B9370(buf, "minAllowedAlsCacheAgeToIncrementAlsDatabaseCacheAge", &v3);
  if (*(&buf + 1))
  {
    sub_100008080(*(&buf + 1));
  }

  if (v1)
  {
    if (qword_1025D4620 != -1)
    {
      sub_10192A6A4();
    }

    v2 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 134349056;
      *(&buf + 4) = v3;
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEFAULT, "#Warning defaults write minAllowedAlsCacheAgeToIncrementAlsDatabaseCacheAge to %{public}.1f", &buf, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10192A93C();
    }

    qword_102659A10 = v3;
    LOBYTE(dword_102659A18) = 1;
  }
}

void sub_10075A0D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100008080(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_10075A0F4(id a1)
{
  v3 = 0;
  sub_10001CAF4(&buf);
  v1 = sub_1000B9370(buf, "maxAllowedDistanceToIncrementAlsDatabaseCacheAge", &v3);
  if (*(&buf + 1))
  {
    sub_100008080(*(&buf + 1));
  }

  if (v1)
  {
    if (qword_1025D4620 != -1)
    {
      sub_10192A6A4();
    }

    v2 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 134349056;
      *(&buf + 4) = v3;
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEFAULT, "#Warning defaults write maxAllowedDistanceToIncrementAlsDatabaseCacheAge to %{public}.1f", &buf, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10192AA28();
    }

    qword_102659A58 = v3;
    LOBYTE(dword_102659A60) = 1;
  }
}

void sub_10075A218(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100008080(a12);
  }

  _Unwind_Resume(exception_object);
}

NSDictionary *sub_10075A238(uint64_t a1)
{
  v2 = @"alsDatabaseCacheAgeExtendedInDays";
  v3 = [NSNumber numberWithDouble:*(a1 + 32)];
  return [NSDictionary dictionaryWithObjects:&v3 forKeys:&v2 count:1];
}

void sub_10075A2BC()
{
  if ((atomic_load_explicit(&qword_1025D4918, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_1025D4918))
    {
      v0 = 256;
      qword_1025D4908 = 0;
      unk_1025D4910 = 0;
      qword_1025D4900 = 0;
      sub_10015D8A0(&qword_1025D4900, &v0, &v1, 2);
      __cxa_atexit(sub_10037DED4, &qword_1025D4900, dword_100000000);
      __cxa_guard_release(&qword_1025D4918);
    }
  }
}

uint64_t sub_10075C184(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v52) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          [objc_msgSend(a2 "data")];
          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v52 & 0x7F) << v5;
        if ((v52 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v10 = v6++ >= 9;
        if (v10)
        {
          v11 = 0;
          goto LABEL_15;
        }
      }

      v11 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v11 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v12 = v11 >> 3;
      if ((v11 >> 3) <= 4)
      {
        if (v12 > 2)
        {
          if (v12 == 3)
          {
            v52 = 0;
            v34 = [a2 position] + 8;
            if (v34 >= [a2 position] && (v35 = objc_msgSend(a2, "position") + 8, v35 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
            }

            else
            {
              [a2 _setError];
            }

            v47 = v52;
            v48 = 16;
          }

          else
          {
            if (v12 != 4)
            {
              goto LABEL_80;
            }

            v52 = 0;
            v21 = [a2 position] + 8;
            if (v21 >= [a2 position] && (v22 = objc_msgSend(a2, "position") + 8, v22 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
            }

            else
            {
              [a2 _setError];
            }

            v47 = v52;
            v48 = 8;
          }

          *(a1 + v48) = v47;
        }

        else
        {
          if (v12 == 1)
          {
            v29 = 0;
            v30 = 0;
            v31 = 0;
            while (1)
            {
              LOBYTE(v52) = 0;
              v32 = [a2 position] + 1;
              if (v32 >= [a2 position] && (v33 = objc_msgSend(a2, "position") + 1, v33 <= objc_msgSend(a2, "length")))
              {
                [objc_msgSend(a2 "data")];
                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v31 |= (v52 & 0x7F) << v29;
              if ((v52 & 0x80) == 0)
              {
                break;
              }

              v29 += 7;
              v10 = v30++ >= 9;
              if (v10)
              {
                v28 = 0;
                goto LABEL_91;
              }
            }

            if ([a2 hasError])
            {
              v28 = 0;
            }

            else
            {
              v28 = v31;
            }

LABEL_91:
            v46 = 24;
LABEL_96:
            *(a1 + v46) = v28;
            goto LABEL_109;
          }

          if (v12 != 2)
          {
            goto LABEL_80;
          }

          v15 = 0;
          v16 = 0;
          v17 = 0;
          while (1)
          {
            LOBYTE(v52) = 0;
            v18 = [a2 position] + 1;
            if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v17 |= (v52 & 0x7F) << v15;
            if ((v52 & 0x80) == 0)
            {
              break;
            }

            v15 += 7;
            v10 = v16++ >= 9;
            if (v10)
            {
              LOBYTE(v20) = 0;
              goto LABEL_83;
            }
          }

          v20 = (v17 != 0) & ~[a2 hasError];
LABEL_83:
          *(a1 + 48) = v20;
        }
      }

      else
      {
        if (v12 <= 6)
        {
          if (v12 == 5)
          {
            v38 = 0;
            v39 = 0;
            v40 = 0;
            *(a1 + 52) |= 0x10u;
            while (1)
            {
              LOBYTE(v52) = 0;
              v41 = [a2 position] + 1;
              if (v41 >= [a2 position] && (v42 = objc_msgSend(a2, "position") + 1, v42 <= objc_msgSend(a2, "length")))
              {
                [objc_msgSend(a2 "data")];
                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v40 |= (v52 & 0x7F) << v38;
              if ((v52 & 0x80) == 0)
              {
                break;
              }

              v38 += 7;
              v10 = v39++ >= 9;
              if (v10)
              {
                v28 = 0;
                goto LABEL_95;
              }
            }

            if ([a2 hasError])
            {
              v28 = 0;
            }

            else
            {
              v28 = v40;
            }

LABEL_95:
            v46 = 44;
          }

          else
          {
            if (v12 != 6)
            {
LABEL_80:
              result = PBReaderSkipValueWithTag();
              if (!result)
              {
                return result;
              }

              goto LABEL_109;
            }

            v23 = 0;
            v24 = 0;
            v25 = 0;
            *(a1 + 52) |= 8u;
            while (1)
            {
              LOBYTE(v52) = 0;
              v26 = [a2 position] + 1;
              if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
              {
                [objc_msgSend(a2 "data")];
                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v25 |= (v52 & 0x7F) << v23;
              if ((v52 & 0x80) == 0)
              {
                break;
              }

              v23 += 7;
              v10 = v24++ >= 9;
              if (v10)
              {
                v28 = 0;
                goto LABEL_87;
              }
            }

            if ([a2 hasError])
            {
              v28 = 0;
            }

            else
            {
              v28 = v25;
            }

LABEL_87:
            v46 = 40;
          }

          goto LABEL_96;
        }

        switch(v12)
        {
          case 7:
            *(a1 + 52) |= 2u;
            LODWORD(v52) = 0;
            v36 = [a2 position] + 4;
            if (v36 >= [a2 position] && (v37 = objc_msgSend(a2, "position") + 4, v37 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
            }

            else
            {
              [a2 _setError];
            }

            v49 = v52;
            v50 = 32;
            break;
          case 8:
            *(a1 + 52) |= 4u;
            LODWORD(v52) = 0;
            v43 = [a2 position] + 4;
            if (v43 >= [a2 position] && (v44 = objc_msgSend(a2, "position") + 4, v44 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
            }

            else
            {
              [a2 _setError];
            }

            v49 = v52;
            v50 = 36;
            break;
          case 9:
            *(a1 + 52) |= 1u;
            LODWORD(v52) = 0;
            v13 = [a2 position] + 4;
            if (v13 >= [a2 position] && (v14 = objc_msgSend(a2, "position") + 4, v14 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
            }

            else
            {
              [a2 _setError];
            }

            v49 = v52;
            v50 = 28;
            break;
          default:
            goto LABEL_80;
        }

        *(a1 + v50) = v49;
      }

LABEL_109:
      v51 = [a2 position];
    }

    while (v51 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void *sub_10075D45C(void *a1, uint64_t a2, uint64_t a3)
{
  sub_1004582A8(v6, a3);
  sub_1006E94E4(a1, a2, v6);
  sub_100458228(v6);
  *a1 = off_10246F130;
  return a1;
}

void sub_10075D4F8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100458228(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10075D518(uint64_t result, double a2)
{
  if (*(result + 40) > a2)
  {
    a2 = *(result + 40);
  }

  *(result + 40) = a2;
  return result;
}

void sub_10075D52C()
{
  v2 = 0;
  v0 = 0;
  v1 = 0;
  operator new();
}

__n128 sub_10075D740(uint64_t a1, uint64_t a2)
{
  *a2 = off_10246F180;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

double sub_10075D778(uint64_t a1, uint64_t a2, double *a3)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  result = *v3 + *(a2 + 16) * *a3;
  *v3 = result;
  *v4 = (*v4 | *(a2 + 28)) & 1;
  **(a1 + 24) = (**(a1 + 24) | *(a2 + 29)) & 1;
  return result;
}

uint64_t sub_10075D7C0(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10075D80C()
{
  v0 = sub_10001A3E8();
  result = (**v0)(v0);
  if (result)
  {
    operator new();
  }

  return result;
}

uint64_t sub_10075D89C()
{
  if (qword_102659A70 != -1)
  {
    sub_10192AB14();
  }

  return qword_1026372A0;
}

const void *sub_10075D8D8(const void *a1)
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(DarwinNotifyCenter, a1, sub_10075D954, @"com.apple.locationd.FlickGesturePrefsChanged", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  v3 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(v3, a1, sub_10075D9D0, @"CLFlickGestureMaxGestureLengthSyncNotification", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  return a1;
}

void sub_10075D954(uint64_t a1, uint64_t a2)
{
  v3 = sub_100011660();
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10075DD78;
  v4[3] = &unk_102449A78;
  v4[4] = a2;
  sub_100042800(v3, v4);
}

void sub_10075D9D4()
{
  *buf = 0;
  sub_1004861C8(v5, "FlickMaxGestureLength", buf, 0);
  v0 = v6;
  CFPreferencesSetValue(@"FlickMaxGestureLength", [NSNumber numberWithInt:v6], @"com.apple.locationd", @"mobile", kCFPreferencesCurrentHost);
  v1 = CFPreferencesSynchronize(@"com.apple.locationd", @"mobile", kCFPreferencesCurrentHost);
  v2 = objc_alloc_init(NPSManager);
  v9 = @"FlickMaxGestureLength";
  [v2 synchronizeUserDefaultsDomain:@"com.apple.locationd" keys:{+[NSSet setWithArray:](NSSet, "setWithArray:", +[NSArray arrayWithObjects:count:](NSArray, "arrayWithObjects:count:", &v9, 1))}];

  if (v1)
  {
    if (qword_1025D41F0 != -1)
    {
      sub_10192AB28();
    }

    v3 = qword_1025D41F8;
    if (os_log_type_enabled(qword_1025D41F8, OS_LOG_TYPE_INFO))
    {
      *buf = 67240192;
      v8 = v0;
      _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_INFO, "[CLFlickGestureControlCompanion] FlickMaxGestureLength preferences synchronized: %{public}d.", buf, 8u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10192AB50(v0);
    }
  }

  else
  {
    if (qword_1025D41F0 != -1)
    {
      sub_10192AB28();
    }

    v4 = qword_1025D41F8;
    if (os_log_type_enabled(qword_1025D41F8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_ERROR, "[CLFlickGestureControlCompanion] FlickMaxGestureLength preferences failed to sync.", buf, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_10192AC64();
    }
  }
}

void sub_10075DBF0()
{
  if (CFPreferencesSynchronize(@"com.apple.locationd", @"mobile", kCFPreferencesCurrentHost))
  {
    *buf = 0;
    sub_1004861C8(v2, "FlickMaxGestureLength", buf, 0);
    if (qword_1025D41F0 != -1)
    {
      sub_10192AB28();
    }

    v0 = qword_1025D41F8;
    if (os_log_type_enabled(qword_1025D41F8, OS_LOG_TYPE_INFO))
    {
      *buf = 67240192;
      v4 = v2[1];
      _os_log_impl(dword_100000000, v0, OS_LOG_TYPE_INFO, "[CLFlickGestureControlCompanion] Received PreferenceChangedNotification: %{public}d", buf, 8u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10192AD5C(v2);
    }
  }

  else
  {
    if (qword_1025D41F0 != -1)
    {
      sub_10192AE74();
    }

    v1 = qword_1025D41F8;
    if (os_log_type_enabled(qword_1025D41F8, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v2[0]) = 0;
      _os_log_impl(dword_100000000, v1, OS_LOG_TYPE_ERROR, "[CLFlickGestureControlCompanion] Failed to received PreferenceChangedNotification", v2, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_10192AE88();
    }
  }
}

uint64_t sub_10075DDAC(uint64_t a1)
{
  v2 = *(a1 + 104);
  *(a1 + 104) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  sub_10075DE38((a1 + 96));
  if (*(a1 + 87) < 0)
  {
    operator delete(*(a1 + 64));
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

uint64_t *sub_10075DE38(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    sub_1008F5A20();
    operator delete();
  }

  return a1;
}

void sub_10075DE84(char *__dst, __int128 *a2, __int128 *a3)
{
  if (*(a2 + 23) < 0)
  {
    sub_100007244(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v5 = *a2;
    *(__dst + 2) = *(a2 + 2);
    *__dst = v5;
  }

  if (*(a3 + 23) < 0)
  {
    sub_100007244(__dst + 24, *a3, *(a3 + 1));
  }

  else
  {
    v6 = *a3;
    *(__dst + 5) = *(a3 + 2);
    *(__dst + 24) = v6;
  }

  *(__dst + 6) = 0x100000002;
  *(__dst + 28) = 0;
  if (*(a3 + 23) < 0)
  {
    sub_100007244(__dst + 64, *a3, *(a3 + 1));
  }

  else
  {
    v7 = *a3;
    *(__dst + 10) = *(a3 + 2);
    *(__dst + 4) = v7;
  }

  *(__dst + 11) = 0;
  operator new();
}

void sub_10075E0DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  v20 = *(v18 + 104);
  *(v18 + 104) = 0;
  if (v20)
  {
    (*(*v20 + 8))(v20);
  }

  sub_10075DE38((v18 + 96));
  if (*(v18 + 87) < 0)
  {
    operator delete(*(v18 + 64));
  }

  if (*(v18 + 47) < 0)
  {
    operator delete(*(v18 + 24));
  }

  if (*(v18 + 23) < 0)
  {
    operator delete(*v18);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10075E1AC(uint64_t a1)
{
  v2 = *(a1 + 104);
  if (!v2 || !sub_100023B68(v2))
  {
    sub_100760430();
  }

  result = sub_1008F60FC(*(a1 + 96));
  if ((result & 1) == 0)
  {
    v4 = *(a1 + 96);

    return sub_1008F6078(v4);
  }

  return result;
}

uint64_t sub_10075E260(uint64_t a1)
{
  result = *(a1 + 104);
  if (result)
  {
    return sub_100023B68(result);
  }

  return result;
}

uint64_t sub_10075E274(uint64_t a1)
{
  v1 = *(a1 + 104);
  if (v1 && sub_100023B68(v1))
  {
    operator new();
  }

  if (qword_1025D4630 != -1)
  {
    sub_10192AFEC();
  }

  v2 = qword_1025D4638;
  if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_INFO))
  {
    LOWORD(v4.__r_.__value_.__l.__data_) = 0;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_INFO, "not connected to wifi #tile header table", &v4, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10192B000();
  }

  return 0;
}

void sub_10075E8C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *__p, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47)
{
  if (v47)
  {
    (*(*v47 + 8))(v47);
  }

  if (a40 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10075E9B0(uint64_t a1)
{
  v2 = *(a1 + 104);
  if (v2 && sub_100023B68(v2))
  {
    *(&v21.__r_.__value_.__s + 23) = 12;
    strcpy(&v21, "DELETE FROM ");
    v3 = *(a1 + 23);
    if (v3 >= 0)
    {
      v4 = a1;
    }

    else
    {
      v4 = *a1;
    }

    if (v3 >= 0)
    {
      v5 = *(a1 + 23);
    }

    else
    {
      v5 = *(a1 + 8);
    }

    v6 = std::string::append(&v21, v4, v5);
    v7 = *&v6->__r_.__value_.__l.__data_;
    v22.__r_.__value_.__r.__words[2] = v6->__r_.__value_.__r.__words[2];
    *&v22.__r_.__value_.__l.__data_ = v7;
    v6->__r_.__value_.__l.__size_ = 0;
    v6->__r_.__value_.__r.__words[2] = 0;
    v6->__r_.__value_.__r.__words[0] = 0;
    v8 = std::string::append(&v22, " WHERE ", 7uLL);
    v9 = *&v8->__r_.__value_.__l.__data_;
    v23.__r_.__value_.__r.__words[2] = v8->__r_.__value_.__r.__words[2];
    *&v23.__r_.__value_.__l.__data_ = v9;
    v8->__r_.__value_.__l.__size_ = 0;
    v8->__r_.__value_.__r.__words[2] = 0;
    v8->__r_.__value_.__r.__words[0] = 0;
    v10 = std::string::append(&v23, "TileX", 5uLL);
    v11 = *&v10->__r_.__value_.__l.__data_;
    v24.__r_.__value_.__r.__words[2] = v10->__r_.__value_.__r.__words[2];
    *&v24.__r_.__value_.__l.__data_ = v11;
    v10->__r_.__value_.__l.__size_ = 0;
    v10->__r_.__value_.__r.__words[2] = 0;
    v10->__r_.__value_.__r.__words[0] = 0;
    v12 = std::string::append(&v24, " = ? AND ", 9uLL);
    v13 = *&v12->__r_.__value_.__l.__data_;
    v25.__r_.__value_.__r.__words[2] = v12->__r_.__value_.__r.__words[2];
    *&v25.__r_.__value_.__l.__data_ = v13;
    v12->__r_.__value_.__l.__size_ = 0;
    v12->__r_.__value_.__r.__words[2] = 0;
    v12->__r_.__value_.__r.__words[0] = 0;
    v14 = std::string::append(&v25, "TileY", 5uLL);
    v15 = *&v14->__r_.__value_.__l.__data_;
    v28.__r_.__value_.__r.__words[2] = v14->__r_.__value_.__r.__words[2];
    *&v28.__r_.__value_.__l.__data_ = v15;
    v14->__r_.__value_.__l.__size_ = 0;
    v14->__r_.__value_.__r.__words[2] = 0;
    v14->__r_.__value_.__r.__words[0] = 0;
    v16 = std::string::append(&v28, " = ? ", 5uLL);
    v17 = *&v16->__r_.__value_.__l.__data_;
    v27 = v16->__r_.__value_.__r.__words[2];
    v26 = v17;
    v16->__r_.__value_.__l.__size_ = 0;
    v16->__r_.__value_.__r.__words[2] = 0;
    v16->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v28.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v25.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v24.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v23.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v22.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v21.__r_.__value_.__l.__data_);
    }

    if (v27 >= 0)
    {
      v18 = &v26;
    }

    else
    {
      v18 = v26;
    }

    sub_1000388D8(*(a1 + 104), v18);
  }

  if (qword_1025D4630 != -1)
  {
    sub_10192AFEC();
  }

  v19 = qword_1025D4638;
  if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_INFO))
  {
    LOWORD(v28.__r_.__value_.__l.__data_) = 0;
    _os_log_impl(dword_100000000, v19, OS_LOG_TYPE_INFO, "not connected to wifi #tile header table", &v28, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10192B0E4();
  }

  return 0;
}

void sub_10075EE28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, void *__p, uint64_t a38, int a39, __int16 a40, char a41, char a42)
{
  if (v42)
  {
    (*(*v42 + 8))(v42);
  }

  if (*(v43 - 121) < 0)
  {
    operator delete(*(v43 - 144));
  }

  _Unwind_Resume(exception_object);
}

void sub_10075EF10(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  *a2 = 0;
  a2[144] = 0;
  v3 = *(a1 + 104);
  if (v3 && sub_100023B68(v3))
  {
    *(&v38.__r_.__value_.__s + 23) = 7;
    strcpy(&v38, "SELECT ");
    sub_1002365D8(__p);
    if ((v37 & 0x80u) == 0)
    {
      v4 = __p;
    }

    else
    {
      v4 = __p[0];
    }

    if ((v37 & 0x80u) == 0)
    {
      v5 = v37;
    }

    else
    {
      v5 = __p[1];
    }

    v6 = std::string::append(&v38, v4, v5);
    v7 = *&v6->__r_.__value_.__l.__data_;
    v39.__r_.__value_.__r.__words[2] = v6->__r_.__value_.__r.__words[2];
    *&v39.__r_.__value_.__l.__data_ = v7;
    v6->__r_.__value_.__l.__size_ = 0;
    v6->__r_.__value_.__r.__words[2] = 0;
    v6->__r_.__value_.__r.__words[0] = 0;
    v35 = 6;
    strcpy(__s, " FROM ");
    v8 = std::string::append(&v39, __s, 6uLL);
    v9 = *&v8->__r_.__value_.__l.__data_;
    v40.__r_.__value_.__r.__words[2] = v8->__r_.__value_.__r.__words[2];
    *&v40.__r_.__value_.__l.__data_ = v9;
    v8->__r_.__value_.__l.__size_ = 0;
    v8->__r_.__value_.__r.__words[2] = 0;
    v8->__r_.__value_.__r.__words[0] = 0;
    v10 = *(a1 + 23);
    if (v10 >= 0)
    {
      v11 = a1;
    }

    else
    {
      v11 = *a1;
    }

    if (v10 >= 0)
    {
      v12 = *(a1 + 23);
    }

    else
    {
      v12 = *(a1 + 8);
    }

    v13 = std::string::append(&v40, v11, v12);
    v14 = *&v13->__r_.__value_.__l.__data_;
    v41.__r_.__value_.__r.__words[2] = v13->__r_.__value_.__r.__words[2];
    *&v41.__r_.__value_.__l.__data_ = v14;
    v13->__r_.__value_.__l.__size_ = 0;
    v13->__r_.__value_.__r.__words[2] = 0;
    v13->__r_.__value_.__r.__words[0] = 0;
    v33 = 7;
    strcpy(v32, " WHERE ");
    v15 = std::string::append(&v41, v32, 7uLL);
    v16 = *&v15->__r_.__value_.__l.__data_;
    v42.__r_.__value_.__r.__words[2] = v15->__r_.__value_.__r.__words[2];
    *&v42.__r_.__value_.__l.__data_ = v16;
    v15->__r_.__value_.__l.__size_ = 0;
    v15->__r_.__value_.__r.__words[2] = 0;
    v15->__r_.__value_.__r.__words[0] = 0;
    v17 = std::string::append(&v42, "TileX", 5uLL);
    v18 = *&v17->__r_.__value_.__l.__data_;
    v43.__r_.__value_.__r.__words[2] = v17->__r_.__value_.__r.__words[2];
    *&v43.__r_.__value_.__l.__data_ = v18;
    v17->__r_.__value_.__l.__size_ = 0;
    v17->__r_.__value_.__r.__words[2] = 0;
    v17->__r_.__value_.__r.__words[0] = 0;
    v31 = 7;
    strcpy(v30, "=? AND ");
    v19 = std::string::append(&v43, v30, 7uLL);
    v20 = *&v19->__r_.__value_.__l.__data_;
    v44.__r_.__value_.__r.__words[2] = v19->__r_.__value_.__r.__words[2];
    *&v44.__r_.__value_.__l.__data_ = v20;
    v19->__r_.__value_.__l.__size_ = 0;
    v19->__r_.__value_.__r.__words[2] = 0;
    v19->__r_.__value_.__r.__words[0] = 0;
    v21 = std::string::append(&v44, "TileY", 5uLL);
    v22 = *&v21->__r_.__value_.__l.__data_;
    v27.__r_.__value_.__r.__words[2] = v21->__r_.__value_.__r.__words[2];
    *&v27.__r_.__value_.__l.__data_ = v22;
    v21->__r_.__value_.__l.__size_ = 0;
    v21->__r_.__value_.__r.__words[2] = 0;
    v21->__r_.__value_.__r.__words[0] = 0;
    v29 = 2;
    strcpy(v28, "=?");
    v23 = std::string::append(&v27, v28, 2uLL);
    v24 = *&v23->__r_.__value_.__l.__data_;
    v46 = v23->__r_.__value_.__r.__words[2];
    v45 = v24;
    v23->__r_.__value_.__l.__size_ = 0;
    v23->__r_.__value_.__r.__words[2] = 0;
    v23->__r_.__value_.__r.__words[0] = 0;
    if (v29 < 0)
    {
      operator delete(*v28);
    }

    if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v27.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v44.__r_.__value_.__l.__data_);
    }

    if (v31 < 0)
    {
      operator delete(*v30);
    }

    if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v43.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v42.__r_.__value_.__l.__data_);
    }

    if (v33 < 0)
    {
      operator delete(*v32);
    }

    if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v41.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v40.__r_.__value_.__l.__data_);
    }

    if (v35 < 0)
    {
      operator delete(*__s);
    }

    if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v39.__r_.__value_.__l.__data_);
    }

    if (v37 < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v38.__r_.__value_.__l.__data_);
    }

    if (v46 >= 0)
    {
      v25 = &v45;
    }

    else
    {
      v25 = v45;
    }

    sub_1000388D8(*(a1 + 104), v25);
  }

  if (qword_1025D4630 != -1)
  {
    sub_10192AFEC();
  }

  v26 = qword_1025D4638;
  if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_INFO))
  {
    LOWORD(v27.__r_.__value_.__l.__data_) = 0;
    _os_log_impl(dword_100000000, v26, OS_LOG_TYPE_INFO, "not connected to wifi #tile header table", &v27, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10192B1C8();
  }
}

void sub_10075F544(_Unwind_Exception *a1)
{
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  if (*(v2 - 169) < 0)
  {
    operator delete(*(v2 - 192));
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10075F6F8(uint64_t a1)
{
  v2 = *(a1 + 104);
  if (v2 && sub_100023B68(v2))
  {
    *(&v13.__r_.__value_.__s + 23) = 21;
    strcpy(&v13, "SELECT COUNT(*) FROM ");
    v3 = *(a1 + 23);
    if (v3 >= 0)
    {
      v4 = a1;
    }

    else
    {
      v4 = *a1;
    }

    if (v3 >= 0)
    {
      v5 = *(a1 + 23);
    }

    else
    {
      v5 = *(a1 + 8);
    }

    v6 = std::string::append(&v13, v4, v5);
    v7 = *&v6->__r_.__value_.__l.__data_;
    v16.__r_.__value_.__r.__words[2] = v6->__r_.__value_.__r.__words[2];
    *&v16.__r_.__value_.__l.__data_ = v7;
    v6->__r_.__value_.__l.__size_ = 0;
    v6->__r_.__value_.__r.__words[2] = 0;
    v6->__r_.__value_.__r.__words[0] = 0;
    v8 = std::string::append(&v16, ";", 1uLL);
    v9 = *&v8->__r_.__value_.__l.__data_;
    v15 = v8->__r_.__value_.__r.__words[2];
    *__p = v9;
    v8->__r_.__value_.__l.__size_ = 0;
    v8->__r_.__value_.__r.__words[2] = 0;
    v8->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v16.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v13.__r_.__value_.__l.__data_);
    }

    if (v15 >= 0)
    {
      v10 = __p;
    }

    else
    {
      v10 = __p[0];
    }

    sub_1000388D8(*(a1 + 104), v10);
  }

  if (qword_1025D4630 != -1)
  {
    sub_10192AFEC();
  }

  v11 = qword_1025D4638;
  if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_INFO))
  {
    LOWORD(v16.__r_.__value_.__l.__data_) = 0;
    _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_INFO, "not connected to wifi #tile header table", &v16, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10192B2AC();
  }

  return 0;
}

void sub_10075FA14(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (v30)
  {
    (*(*v30 + 8))(v30);
  }

  if (a23 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10075FAA0(uint64_t a1, int a2)
{
  sub_10000EC00(&__p, "AccessTimestamp");
  v4 = sub_10075FB30(a1, a2, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v4;
}

void sub_10075FB14(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10075FB30(uint64_t a1, int a2, std::string *this)
{
  if (std::string::compare(this, "AccessTimestamp") && std::string::compare(this, "GizmoSyncTimestamp"))
  {
    sub_10192B390();
  }

  v5 = *(a1 + 104);
  if (v5 && sub_100023B68(v5))
  {
    *(&v31.__r_.__value_.__s + 23) = 7;
    strcpy(&v31, "UPDATE ");
    v6 = *(a1 + 23);
    if (v6 >= 0)
    {
      v7 = a1;
    }

    else
    {
      v7 = *a1;
    }

    if (v6 >= 0)
    {
      v8 = *(a1 + 23);
    }

    else
    {
      v8 = *(a1 + 8);
    }

    v9 = std::string::append(&v31, v7, v8);
    v10 = *&v9->__r_.__value_.__l.__data_;
    v32.__r_.__value_.__r.__words[2] = v9->__r_.__value_.__r.__words[2];
    *&v32.__r_.__value_.__l.__data_ = v10;
    v9->__r_.__value_.__l.__size_ = 0;
    v9->__r_.__value_.__r.__words[2] = 0;
    v9->__r_.__value_.__r.__words[0] = 0;
    v11 = std::string::append(&v32, " SET ", 5uLL);
    v12 = *&v11->__r_.__value_.__l.__data_;
    v33.__r_.__value_.__r.__words[2] = v11->__r_.__value_.__r.__words[2];
    *&v33.__r_.__value_.__l.__data_ = v12;
    v11->__r_.__value_.__l.__size_ = 0;
    v11->__r_.__value_.__r.__words[2] = 0;
    v11->__r_.__value_.__r.__words[0] = 0;
    v13 = SHIBYTE(this->__r_.__value_.__r.__words[2]);
    if (v13 >= 0)
    {
      v14 = this;
    }

    else
    {
      v14 = this->__r_.__value_.__r.__words[0];
    }

    if (v13 >= 0)
    {
      size = HIBYTE(this->__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = this->__r_.__value_.__l.__size_;
    }

    v16 = std::string::append(&v33, v14, size);
    v17 = *&v16->__r_.__value_.__l.__data_;
    v34.__r_.__value_.__r.__words[2] = v16->__r_.__value_.__r.__words[2];
    *&v34.__r_.__value_.__l.__data_ = v17;
    v16->__r_.__value_.__l.__size_ = 0;
    v16->__r_.__value_.__r.__words[2] = 0;
    v16->__r_.__value_.__r.__words[0] = 0;
    v18 = std::string::append(&v34, " = ? WHERE ", 0xBuLL);
    v19 = *&v18->__r_.__value_.__l.__data_;
    v35.__r_.__value_.__r.__words[2] = v18->__r_.__value_.__r.__words[2];
    *&v35.__r_.__value_.__l.__data_ = v19;
    v18->__r_.__value_.__l.__size_ = 0;
    v18->__r_.__value_.__r.__words[2] = 0;
    v18->__r_.__value_.__r.__words[0] = 0;
    v20 = std::string::append(&v35, "TileX", 5uLL);
    v21 = *&v20->__r_.__value_.__l.__data_;
    v36.__r_.__value_.__r.__words[2] = v20->__r_.__value_.__r.__words[2];
    *&v36.__r_.__value_.__l.__data_ = v21;
    v20->__r_.__value_.__l.__size_ = 0;
    v20->__r_.__value_.__r.__words[2] = 0;
    v20->__r_.__value_.__r.__words[0] = 0;
    v22 = std::string::append(&v36, " = ? AND ", 9uLL);
    v23 = *&v22->__r_.__value_.__l.__data_;
    v37.__r_.__value_.__r.__words[2] = v22->__r_.__value_.__r.__words[2];
    *&v37.__r_.__value_.__l.__data_ = v23;
    v22->__r_.__value_.__l.__size_ = 0;
    v22->__r_.__value_.__r.__words[2] = 0;
    v22->__r_.__value_.__r.__words[0] = 0;
    v24 = std::string::append(&v37, "TileY", 5uLL);
    v25 = *&v24->__r_.__value_.__l.__data_;
    v40.__r_.__value_.__r.__words[2] = v24->__r_.__value_.__r.__words[2];
    *&v40.__r_.__value_.__l.__data_ = v25;
    v24->__r_.__value_.__l.__size_ = 0;
    v24->__r_.__value_.__r.__words[2] = 0;
    v24->__r_.__value_.__r.__words[0] = 0;
    v26 = std::string::append(&v40, " = ?", 4uLL);
    v27 = *&v26->__r_.__value_.__l.__data_;
    v39 = v26->__r_.__value_.__r.__words[2];
    __p = v27;
    v26->__r_.__value_.__l.__size_ = 0;
    v26->__r_.__value_.__r.__words[2] = 0;
    v26->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v40.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v37.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v36.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v35.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v34.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v33.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v32.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v31.__r_.__value_.__l.__data_);
    }

    if (v39 >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    sub_1000388D8(*(a1 + 104), p_p);
  }

  if (qword_1025D4630 != -1)
  {
    sub_10192AFEC();
  }

  v29 = qword_1025D4638;
  if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_INFO))
  {
    LOWORD(v40.__r_.__value_.__l.__data_) = 0;
    _os_log_impl(dword_100000000, v29, OS_LOG_TYPE_INFO, "not connected to wifi #tile header table", &v40, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10192B59C();
  }

  return 0;
}

void sub_100760280(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, uint64_t a37, uint64_t a38, void *__p, uint64_t a40, int a41, __int16 a42, char a43, char a44)
{
  if (v44)
  {
    (*(*v44 + 8))(v44);
  }

  if (a44 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1007603A0(uint64_t a1, int a2)
{
  sub_10000EC00(&__p, "GizmoSyncTimestamp");
  v4 = sub_10075FB30(a1, a2, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v4;
}

void sub_100760414(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100760828(_Unwind_Exception *a1)
{
  *v2 = 0;
  (*(*v1 + 8))(v1);
  _Unwind_Resume(a1);
}

void sub_1007608BC(uint64_t a1)
{
  v3 = 0;
  v4 = 0;
  v5 = 0;
  sub_10000EC00(buf, "SELECT NAME FROM sqlite_master WHERE type='table' AND name LIKE 'wifi_tile_%'");
  if (v7 >= 0)
  {
    v2 = buf;
  }

  else
  {
    v2 = *buf;
  }

  sub_1000388D8(*(a1 + 104), v2);
}

void sub_100760BC4()
{
  qword_102659A78 = "TileX";
  dword_102659A80 = 1;
  word_102659A84 = 1;
  byte_102659A88 = 0;
  byte_102659AA0 = 0;
  qword_102659AA8 = "TileY";
  dword_102659AB0 = 1;
  word_102659AB4 = 1;
  byte_102659AB8 = 0;
  byte_102659AD0 = 0;
  qword_102659AD8 = "SouthwestLatitude";
  dword_102659AE0 = 2;
  word_102659AE4 = 0;
  byte_102659AE8 = 0;
  byte_102659B00 = 0;
  qword_102659B08 = "SouthwestLongitude";
  dword_102659B10 = 2;
  word_102659B14 = 0;
  byte_102659B18 = 0;
  byte_102659B30 = 0;
  qword_102659B38 = "DeltaLatitude";
  dword_102659B40 = 2;
  word_102659B44 = 0;
  byte_102659B48 = 0;
  byte_102659B60 = 0;
  qword_102659B68 = "DeltaLongitude";
  dword_102659B70 = 2;
  word_102659B74 = 0;
  byte_102659B78 = 0;
  byte_102659B90 = 0;
  qword_102659B98 = "Altitude";
  dword_102659BA0 = 2;
  word_102659BA4 = 0;
  byte_102659BA8 = 0;
  byte_102659BC0 = 0;
  qword_102659BC8 = "MinimumAltitude";
  dword_102659BD0 = 2;
  word_102659BD4 = 0;
  byte_102659BD8 = 0;
  byte_102659BF0 = 0;
  qword_102659BF8 = "MaximumAltitude";
  dword_102659C00 = 2;
  word_102659C04 = 0;
  byte_102659C08 = 0;
  byte_102659C20 = 0;
  qword_102659C28 = "GenerationTimestamp";
  dword_102659C30 = 1;
  word_102659C34 = 0;
  byte_102659C38 = 0;
  byte_102659C50 = 0;
  qword_102659C58 = "ExpirationAge";
  dword_102659C60 = 1;
  word_102659C64 = 0;
  byte_102659C68 = 0;
  byte_102659C80 = 0;
  qword_102659C88 = "Version";
  dword_102659C90 = 1;
  word_102659C94 = 0;
  byte_102659C98 = 0;
  byte_102659CB0 = 0;
  qword_102659CB8 = "Flags";
  dword_102659CC0 = 1;
  word_102659CC4 = 0;
  byte_102659CC8 = 0;
  byte_102659CE0 = 0;
  qword_102659CE8 = "NumberOfIndexEntries";
  dword_102659CF0 = 1;
  word_102659CF4 = 0;
  byte_102659CF8 = 0;
  byte_102659D10 = 0;
  qword_102659D18 = "AccessTimestamp";
  dword_102659D20 = 1;
  word_102659D24 = 0;
  byte_102659D28 = 0;
  byte_102659D40 = 0;
  qword_102659D48 = "GizmoSyncTimestamp";
  dword_102659D50 = 1;
  word_102659D54 = 0;
  byte_102659D58 = 0;
  byte_102659D70 = 0;
  qword_102659D78 = "NumberOfInputPoints";
  dword_102659D80 = 1;
  word_102659D84 = 0;
  byte_102659D88 = 0;
  byte_102659DA0 = 0;
  qword_102659DA8 = 0;
  dword_102659DB0 = 5;
  word_102659DB4 = 0;
  byte_102659DB8 = 0;
  byte_102659DD0 = 0;
}

void sub_100760E4C(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    sub_100008080(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100760E80(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    sub_100008080(v2);
  }

  return a1;
}

uint64_t sub_100760EB0@<X0>(uint64_t **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  return sub_100F0B8C4(*a1, a2, a3);
}

void sub_100760EE4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

double sub_100760F00(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 88) + *(a2 + 56);
  v4 = *(a2 + 80);
  v5 = *(a1 + 120) + *(a2 + 88);
  *v12 = 0;
  v10 = 0u;
  v11 = 0u;
  *&v12[8] = *(a2 + 40);
  *&v12[24] = v3;
  v13 = *(a2 + 64);
  *&v14 = v4;
  *(&v14 + 1) = v5;
  uuid_copy(&v11 + 8, (a1 + 16));
  sub_100F0C790(*a1, &v10);
  v6 = *&v12[16];
  *(a1 + 64) = *v12;
  *(a1 + 80) = v6;
  v7 = v14;
  *(a1 + 96) = v13;
  *(a1 + 112) = v7;
  result = *&v10;
  v9 = v11;
  *(a1 + 32) = v10;
  *(a1 + 48) = v9;
  return result;
}

void sub_100760FC4(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  if (v3 == 1)
  {

    uuid_parse("00000000-0000-0000-0000-000000000000", (a1 + 16));
  }

  else if (!v3)
  {
    uuid_copy((a1 + 16), (a2 + 64));

    sub_100761048(a1);
  }
}

void sub_100761048(uint64_t a1)
{
  __p = 0;
  v11 = 0;
  v12 = 0;
  Current = CFAbsoluteTimeGetCurrent();
  if (sub_100F0D184(*a1, 1, &__p) != 100 || __p == v11)
  {
    v22 = 0;
    v20 = 0u;
    v21 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0;
  }

  else
  {
    v3 = *(v11 - 5);
    v20 = *(v11 - 6);
    v21 = v3;
    v22 = *(v11 - 8);
    v4 = *(v11 - 24);
    v13 = *(v11 - 40);
    v14 = v4;
    v15 = *(v11 - 1);
  }

  *buf = v20;
  v17 = v21;
  *&v18 = v22;
  *(&v18 + 1) = Current;
  *v19 = Current;
  *&v19[8] = v13;
  *&v19[24] = v14;
  *&v19[40] = v15;
  uuid_copy(&v17 + 8, (a1 + 16));
  sub_100F0C790(*a1, buf);
  v5 = *v19;
  *(a1 + 64) = v18;
  *(a1 + 80) = v5;
  v6 = *&v19[32];
  *(a1 + 96) = *&v19[16];
  *(a1 + 112) = v6;
  v7 = v17;
  *(a1 + 32) = *buf;
  *(a1 + 48) = v7;
  if (qword_1025D43C0 != -1)
  {
    sub_10192B764();
  }

  v8 = qword_1025D43C8;
  if (os_log_type_enabled(qword_1025D43C8, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_INFO, "Setting up first session entry", buf, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10192B78C(buf);
    v9 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "void CLSkiDataStore::setupFirstEntry()", "%s\n", v9);
    if (v9 != buf)
    {
      free(v9);
    }
  }

  if (__p)
  {
    v11 = __p;
    operator delete(__p);
  }
}

void sub_100761284(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100761344(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_10189B1B8(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10076135C(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 24))();
  }

  return result;
}

uint64_t sub_10076138C(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void *sub_1007613CC(void *result, uint64_t a2)
{
  *result = off_10246F2F8;
  result[1] = a2;
  return result;
}

id sub_1007613EC(uint64_t a1)
{
  v1 = [objc_msgSend(*(a1 + 8) "vendor")];

  return [v1 syncgetCellTransmitStatus];
}

id sub_100761424(uint64_t a1)
{
  v1 = [objc_msgSend(*(a1 + 8) "vendor")];

  return [v1 syncgetRegistrationStatus];
}

id sub_10076145C(uint64_t a1, uint64_t a2)
{
  v3 = [objc_msgSend(*(a1 + 8) "vendor")];

  return [v3 syncgetRegistrationStatusForSim:a2];
}

id sub_1007614A4(uint64_t a1)
{
  v1 = [objc_msgSend(*(a1 + 8) "vendor")];

  return [v1 syncgetIsRegisteredOnCell];
}

id sub_1007614DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [objc_msgSend(*(a1 + 8) "vendor")];

  return [v5 syncgetServingCells:a2 addNeighborCells:a3];
}

id sub_10076152C(uint64_t a1)
{
  v1 = [objc_msgSend(*(a1 + 8) "vendor")];

  return [v1 syncgetRadioAccessTechnology];
}

id sub_100761564(uint64_t a1, uint64_t a2)
{
  v3 = [objc_msgSend(*(a1 + 8) "vendor")];

  return [v3 syncgetRadioAccessTechnologyForSim:a2];
}

id sub_1007615AC(uint64_t a1)
{
  v1 = [objc_msgSend(*(a1 + 8) "vendor")];

  return [v1 syncgetRefreshCellMonitor];
}

id sub_1007615E4(uint64_t a1, uint64_t a2)
{
  v3 = [objc_msgSend(*(a1 + 8) "vendor")];

  return [v3 syncgetRefreshCellMonitorForSim:a2];
}

id sub_10076162C(uint64_t a1, uint64_t a2)
{
  v3 = [objc_msgSend(*(a1 + 8) "vendor")];

  return [v3 syncgetServingGsmCell:a2];
}

id sub_100761674(uint64_t a1, uint64_t a2)
{
  v3 = [objc_msgSend(*(a1 + 8) "vendor")];

  return [v3 syncgetSignalStrength:a2];
}

id sub_1007616BC(uint64_t a1, uint64_t a2)
{
  v3 = [objc_msgSend(*(a1 + 8) "vendor")];

  return [v3 syncgetSignalStrengthForSim:a2];
}

id sub_100761704(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [objc_msgSend(*(a1 + 8) "vendor")];

  return [v5 fetchSignalStrengthMeasurementForSim:a2 withReply:a3];
}

id sub_10076175C(uint64_t a1, uint64_t a2)
{
  v3 = [objc_msgSend(*(a1 + 8) "vendor")];

  return [v3 fetchIratStreamingInfoWithReply:a2];
}

double sub_1007617AC(uint64_t a1, uint64_t a2)
{
  v3 = [objc_msgSend(objc_msgSend(*(a1 + 8) "vendor")];
  if (v3)
  {
    sub_10000EC00(&v5, [v3 UTF8String]);
    if (*(a2 + 23) < 0)
    {
      operator delete(*a2);
    }

    result = *&v5;
    *a2 = v5;
    *(a2 + 16) = v6;
  }

  return result;
}

void sub_100761820(uint64_t a1, uint64_t a2)
{
  v5 = 0;
  [objc_msgSend(objc_msgSend(*(a1 + 8) "vendor")];
  if (v5)
  {
    sub_10000EC00(&v3, [v5 UTF8String]);
    if (*(a2 + 23) < 0)
    {
      operator delete(*a2);
    }

    *a2 = v3;
    *(a2 + 16) = v4;
  }

  else if (*(a2 + 23) < 0)
  {
    **a2 = 0;
    *(a2 + 8) = 0;
  }

  else
  {
    *a2 = 0;
    *(a2 + 23) = 0;
  }
}

id sub_1007618CC(uint64_t a1, uint64_t a2)
{
  v3 = [objc_msgSend(*(a1 + 8) "vendor")];

  return [v3 syncgetCopyServingOperatorForSim:a2];
}

void sub_100761914(uint64_t a1, uint64_t a2)
{
  v5 = 0;
  [objc_msgSend(objc_msgSend(*(a1 + 8) "vendor")];
  if (v5)
  {
    sub_10000EC00(&v3, [v5 UTF8String]);
    if (*(a2 + 23) < 0)
    {
      operator delete(*a2);
    }

    *a2 = v3;
    *(a2 + 16) = v4;
  }

  else if (*(a2 + 23) < 0)
  {
    **a2 = 0;
    *(a2 + 8) = 0;
  }

  else
  {
    *a2 = 0;
    *(a2 + 23) = 0;
  }
}

id sub_1007619C0(uint64_t a1, uint64_t a2)
{
  v3 = [objc_msgSend(*(a1 + 8) "vendor")];

  return [v3 syncgetCopyServingProviderFromCarrierBundleForSim:a2];
}

id sub_100761A08(uint64_t a1, __int128 *a2, __int128 *a3)
{
  v6 = [CLLocation alloc];
  v7 = a3[7];
  v21 = a3[6];
  v22 = v7;
  v23[0] = a3[8];
  *(v23 + 12) = *(a3 + 140);
  v8 = a3[3];
  v17 = a3[2];
  v18 = v8;
  v9 = a3[5];
  v19 = a3[4];
  v20 = v9;
  v10 = a3[1];
  v15 = *a3;
  v16 = v10;
  v11 = [v6 initWithClientLocation:&v15];
  v12 = [objc_msgSend(*(a1 + 8) "vendor")];
  v13 = a2[1];
  v17 = *a2;
  v18 = v13;
  *&v15 = _NSConcreteStackBlock;
  *(&v15 + 1) = 3221225472;
  *&v16 = sub_1007621D8;
  *(&v16 + 1) = &unk_10246F3F8;
  return [v12 setLocation_GSM:v11 forCell:{objc_msgSend(&v15, "copy")}];
}

id sub_100761B0C(uint64_t a1, __int128 *a2, __int128 *a3)
{
  v6 = [CLLocation alloc];
  v7 = a3[7];
  v21 = a3[6];
  v22 = v7;
  v23[0] = a3[8];
  *(v23 + 12) = *(a3 + 140);
  v8 = a3[3];
  v17 = a3[2];
  v18 = v8;
  v9 = a3[5];
  v19 = a3[4];
  v20 = v9;
  v10 = a3[1];
  v15 = *a3;
  v16 = v10;
  v11 = [v6 initWithClientLocation:&v15];
  v12 = [objc_msgSend(*(a1 + 8) "vendor")];
  v13 = a2[1];
  v17 = *a2;
  v18 = v13;
  *&v15 = _NSConcreteStackBlock;
  *(&v15 + 1) = 3221225472;
  *&v16 = sub_1007621E4;
  *(&v16 + 1) = &unk_10246F418;
  return [v12 setLocation_SCDMA:v11 forCell:{objc_msgSend(&v15, "copy")}];
}

id sub_100761C10(uint64_t a1, __int128 *a2, __int128 *a3)
{
  v6 = [CLLocation alloc];
  v7 = a3[7];
  v22 = a3[6];
  v23 = v7;
  v24[0] = a3[8];
  *(v24 + 12) = *(a3 + 140);
  v8 = a3[3];
  v18 = a3[2];
  v19 = v8;
  v9 = a3[5];
  v20 = a3[4];
  v21 = v9;
  v10 = a3[1];
  v16 = *a3;
  v17 = v10;
  v11 = [v6 initWithClientLocation:&v16];
  v12 = [objc_msgSend(*(a1 + 8) "vendor")];
  v13 = a2[3];
  v20 = a2[2];
  v21 = v13;
  v22 = a2[4];
  *&v23 = *(a2 + 10);
  v14 = a2[1];
  v18 = *a2;
  v19 = v14;
  *&v16 = _NSConcreteStackBlock;
  *(&v16 + 1) = 3221225472;
  *&v17 = sub_1007621F0;
  *(&v17 + 1) = &unk_10246F438;
  return [v12 setLocation_LTE:v11 forCell:{objc_msgSend(&v16, "copy")}];
}

void sub_100761D2C(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  v6 = [CLLocation alloc];
  v7 = a3[7];
  v54[6] = a3[6];
  v54[7] = v7;
  v55[0] = a3[8];
  *(v55 + 12) = *(a3 + 140);
  v8 = a3[3];
  v54[2] = a3[2];
  v54[3] = v8;
  v9 = a3[5];
  v54[4] = a3[4];
  v54[5] = v9;
  v10 = a3[1];
  v54[0] = *a3;
  v54[1] = v10;
  v11 = [v6 initWithClientLocation:v54];
  v12 = [objc_msgSend(*(a1 + 8) "vendor")];
  LODWORD(v25) = *a2;
  v27 = 0;
  v28 = 0;
  v26 = 0;
  sub_10038EB38(&v26, *(a2 + 8), *(a2 + 16), (*(a2 + 16) - *(a2 + 8)) >> 2);
  v13 = *(a2 + 208);
  v39 = *(a2 + 192);
  v40[0] = v13;
  *(v40 + 12) = *(a2 + 220);
  v14 = *(a2 + 144);
  v35 = *(a2 + 128);
  v36 = v14;
  v15 = *(a2 + 176);
  v37 = *(a2 + 160);
  v38 = v15;
  v16 = *(a2 + 80);
  v31 = *(a2 + 64);
  v32 = v16;
  v17 = *(a2 + 112);
  v33 = *(a2 + 96);
  v34 = v17;
  v18 = *(a2 + 48);
  v29 = *(a2 + 32);
  v30 = v18;
  if (*(a2 + 263) < 0)
  {
    sub_100007244(__p, *(a2 + 240), *(a2 + 248));
  }

  else
  {
    *__p = *(a2 + 240);
    v42 = *(a2 + 256);
  }

  v19 = *(a2 + 408);
  v51 = *(a2 + 392);
  v52 = v19;
  v20 = *(a2 + 344);
  v47 = *(a2 + 328);
  v48 = v20;
  v21 = *(a2 + 376);
  v49 = *(a2 + 360);
  v50 = v21;
  v22 = *(a2 + 280);
  v43 = *(a2 + 264);
  v44 = v22;
  v23 = *(a2 + 312);
  v45 = *(a2 + 296);
  v46 = v23;
  v53 = *(a2 + 424);
  v24 = sub_100761EF8(&v25);
  [v12 setLocation_CDMA:v11 forCell:{v24, v25}];
  if (SHIBYTE(v42) < 0)
  {
    operator delete(__p[0]);
  }

  if (v26)
  {
    v27 = v26;
    operator delete(v26);
  }
}

void sub_100761ECC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

id sub_100761EF8(int *a1)
{
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3321888768;
  v15[2] = sub_100762214;
  v15[3] = &unk_10246F458;
  v16 = *a1;
  v18 = 0;
  v19 = 0;
  v17 = 0;
  sub_10038EB38(&v17, *(a1 + 1), *(a1 + 2), (*(a1 + 2) - *(a1 + 1)) >> 2);
  v2 = *(a1 + 13);
  v30 = *(a1 + 12);
  v31[0] = v2;
  *(v31 + 12) = *(a1 + 55);
  v3 = *(a1 + 9);
  v26 = *(a1 + 8);
  v27 = v3;
  v4 = *(a1 + 11);
  v28 = *(a1 + 10);
  v29 = v4;
  v5 = *(a1 + 5);
  v22 = *(a1 + 4);
  v23 = v5;
  v6 = *(a1 + 7);
  v24 = *(a1 + 6);
  v25 = v6;
  v7 = *(a1 + 3);
  v20 = *(a1 + 2);
  v21 = v7;
  if (*(a1 + 263) < 0)
  {
    sub_100007244(__p, *(a1 + 30), *(a1 + 31));
  }

  else
  {
    *__p = *(a1 + 15);
    v33 = *(a1 + 32);
  }

  v8 = *(a1 + 102);
  v42 = *(a1 + 98);
  v43 = v8;
  v9 = *(a1 + 86);
  v38 = *(a1 + 82);
  v39 = v9;
  v10 = *(a1 + 94);
  v40 = *(a1 + 90);
  v41 = v10;
  v11 = *(a1 + 70);
  v34 = *(a1 + 66);
  v35 = v11;
  v12 = *(a1 + 78);
  v36 = *(a1 + 74);
  v37 = v12;
  v44 = a1[106];
  v13 = [v15 copy];
  if (SHIBYTE(v33) < 0)
  {
    operator delete(__p[0]);
  }

  if (v17)
  {
    v18 = v17;
    operator delete(v17);
  }

  return v13;
}

void sub_100762060(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

id sub_10076208C(uint64_t a1, __int128 *a2, __int128 *a3)
{
  v6 = [CLLocation alloc];
  v7 = a3[7];
  v23 = a3[6];
  v24 = v7;
  v25[0] = a3[8];
  *(v25 + 12) = *(a3 + 140);
  v8 = a3[3];
  v19 = a3[2];
  v20 = v8;
  v9 = a3[5];
  v21 = a3[4];
  v22 = v9;
  v10 = a3[1];
  v17 = *a3;
  v18 = v10;
  v11 = [v6 initWithClientLocation:&v17];
  v12 = [objc_msgSend(*(a1 + 8) "vendor")];
  v13 = a2[3];
  v21 = a2[2];
  v22 = v13;
  v14 = a2[5];
  v23 = a2[4];
  v24 = v14;
  v15 = a2[1];
  v19 = *a2;
  v20 = v15;
  *&v17 = _NSConcreteStackBlock;
  *(&v17 + 1) = 3221225472;
  *&v18 = sub_1007624A4;
  *(&v18 + 1) = &unk_10246F488;
  return [v12 setLocation_NR:v11 forCell:{objc_msgSend(&v17, "copy")}];
}

id sub_1007621A0(uint64_t a1)
{
  v1 = [objc_msgSend(*(a1 + 8) "vendor")];

  return [v1 syncgetIsAssociated];
}

__n128 sub_1007621D8@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = *(a1 + 32);
  v3 = *(a1 + 48);
  *a2 = result;
  *(a2 + 16) = v3;
  return result;
}

__n128 sub_1007621E4@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = *(a1 + 32);
  v3 = *(a1 + 48);
  *a2 = result;
  *(a2 + 16) = v3;
  return result;
}

__n128 sub_1007621F0@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 80);
  *(a2 + 32) = *(a1 + 64);
  *(a2 + 48) = v2;
  *(a2 + 64) = *(a1 + 96);
  *(a2 + 80) = *(a1 + 112);
  result = *(a1 + 32);
  v4 = *(a1 + 48);
  *a2 = result;
  *(a2 + 16) = v4;
  return result;
}

__n128 sub_100762214@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = *(a1 + 32);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  sub_10038EB38(a2 + 8, *(a1 + 40), *(a1 + 48), (*(a1 + 48) - *(a1 + 40)) >> 2);
  v4 = *(a1 + 240);
  *(a2 + 192) = *(a1 + 224);
  *(a2 + 208) = v4;
  *(a2 + 220) = *(a1 + 252);
  v5 = *(a1 + 176);
  *(a2 + 128) = *(a1 + 160);
  *(a2 + 144) = v5;
  v6 = *(a1 + 208);
  *(a2 + 160) = *(a1 + 192);
  *(a2 + 176) = v6;
  v7 = *(a1 + 112);
  *(a2 + 64) = *(a1 + 96);
  *(a2 + 80) = v7;
  v8 = *(a1 + 144);
  *(a2 + 96) = *(a1 + 128);
  *(a2 + 112) = v8;
  v9 = *(a1 + 80);
  *(a2 + 32) = *(a1 + 64);
  *(a2 + 48) = v9;
  if (*(a1 + 295) < 0)
  {
    sub_100007244((a2 + 240), *(a1 + 272), *(a1 + 280));
  }

  else
  {
    *(a2 + 240) = *(a1 + 272);
    *(a2 + 256) = *(a1 + 288);
  }

  *(a2 + 424) = *(a1 + 456);
  v10 = *(a1 + 440);
  *(a2 + 392) = *(a1 + 424);
  *(a2 + 408) = v10;
  v11 = *(a1 + 376);
  *(a2 + 328) = *(a1 + 360);
  *(a2 + 344) = v11;
  v12 = *(a1 + 408);
  *(a2 + 360) = *(a1 + 392);
  *(a2 + 376) = v12;
  v13 = *(a1 + 312);
  *(a2 + 264) = *(a1 + 296);
  *(a2 + 280) = v13;
  result = *(a1 + 344);
  *(a2 + 296) = *(a1 + 328);
  *(a2 + 312) = result;
  return result;
}

void sub_100762300(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 16) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

__n128 sub_10076231C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  *(a1 + 40) = 0;
  v5 = a1 + 40;
  *(a1 + 32) = v4;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  sub_10038EB38(a1 + 40, *(a2 + 40), *(a2 + 48), (*(a2 + 48) - *(a2 + 40)) >> 2);
  *(v5 + 24) = *(a2 + 64);
  v6 = *(a2 + 80);
  v7 = *(a2 + 96);
  v8 = *(a2 + 112);
  *(v5 + 88) = *(a2 + 128);
  *(v5 + 72) = v8;
  *(v5 + 56) = v7;
  *(v5 + 40) = v6;
  v9 = *(a2 + 144);
  v10 = *(a2 + 160);
  v11 = *(a2 + 176);
  *(v5 + 152) = *(a2 + 192);
  *(v5 + 136) = v11;
  *(v5 + 120) = v10;
  *(v5 + 104) = v9;
  v12 = *(a2 + 208);
  v13 = *(a2 + 224);
  v14 = *(a2 + 240);
  *(v5 + 212) = *(a2 + 252);
  *(v5 + 200) = v14;
  *(v5 + 184) = v13;
  *(v5 + 168) = v12;
  if (*(a2 + 295) < 0)
  {
    sub_100007244((v5 + 232), *(a2 + 272), *(a2 + 280));
  }

  else
  {
    v15 = *(a2 + 272);
    *(v5 + 248) = *(a2 + 288);
    *(v5 + 232) = v15;
  }

  v16 = *(a2 + 296);
  v17 = *(a2 + 328);
  *(a1 + 312) = *(a2 + 312);
  *(a1 + 328) = v17;
  *(a1 + 296) = v16;
  v18 = *(a2 + 344);
  v19 = *(a2 + 360);
  v20 = *(a2 + 392);
  *(a1 + 376) = *(a2 + 376);
  *(a1 + 392) = v20;
  *(a1 + 344) = v18;
  *(a1 + 360) = v19;
  result = *(a2 + 408);
  v22 = *(a2 + 424);
  v23 = *(a2 + 440);
  *(a1 + 456) = *(a2 + 456);
  *(a1 + 424) = v22;
  *(a1 + 440) = v23;
  *(a1 + 408) = result;
  return result;
}

void sub_100762430(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 48) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

void sub_10076244C(uint64_t a1)
{
  if (*(a1 + 295) < 0)
  {
    operator delete(*(a1 + 272));
  }

  v2 = *(a1 + 40);
  if (v2)
  {
    *(a1 + 48) = v2;

    operator delete(v2);
  }
}

__n128 sub_1007624A4@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 80);
  *(a2 + 32) = *(a1 + 64);
  *(a2 + 48) = v2;
  v3 = *(a1 + 112);
  *(a2 + 64) = *(a1 + 96);
  *(a2 + 80) = v3;
  result = *(a1 + 32);
  v5 = *(a1 + 48);
  *a2 = result;
  *(a2 + 16) = v5;
  return result;
}

void sub_100762E60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *__p, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, void *a47, uint64_t a48, int a49, __int16 a50, char a51, char a52)
{
  if (a40 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

id sub_100762F00(uint64_t a1)
{
  if (qword_1025D4750 != -1)
  {
    sub_10192B7E4();
  }

  v2 = qword_1025D4758;
  if (os_log_type_enabled(qword_1025D4758, OS_LOG_TYPE_DEFAULT))
  {
    v4[0] = 68289026;
    v4[1] = 0;
    v5 = 2082;
    v6 = "";
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:reverting to cheap location only}", v4, 0x12u);
  }

  return [*(a1 + 32) requestLocationWithDesiredAccuracy:kCLLocationAccuracyBystander];
}

void sub_100762FE0(id a1, NSString *a2, NSDictionary *a3)
{
  if (a3 && [(NSDictionary *)a3 count])
  {
    v36 = 0;
    p_info = &OBJC_METACLASS___CLMotionHintLoggerAdapter.info;
    if ([(NSDictionary *)a3 objectForKeyedSubscript:@"com.apple.RegulatoryDomain.peer_status.countryCodes"])
    {
      obj = [NSJSONSerialization JSONObjectWithData:[(NSDictionary *)a3 objectForKeyedSubscript:@"com.apple.RegulatoryDomain.peer_status.countryCodes"] options:0 error:&v36];
      if (v36)
      {
        if (qword_1025D4750 != -1)
        {
          sub_100260318();
        }

        v5 = qword_1025D4758;
        if (os_log_type_enabled(qword_1025D4758, OS_LOG_TYPE_ERROR))
        {
          *buf = 68289282;
          v38 = 0;
          v39 = 2082;
          v40 = "";
          v41 = 2114;
          v42 = v36;
          _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:Failed to deserialize list of countries. Will attempt to fall back to single entry, error:%{public, location:escape_only}@}", buf, 0x1Cu);
          if (qword_1025D4750 != -1)
          {
            sub_100260318();
          }
        }

        v6 = qword_1025D4758;
        v7 = os_signpost_enabled(qword_1025D4758);
        v8 = v36;
        if (v7)
        {
          *buf = 68289282;
          v38 = 0;
          v39 = 2082;
          v40 = "";
          v41 = 2114;
          v42 = v36;
          _os_signpost_emit_with_name_impl(dword_100000000, v6, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Failed to deserialize list of countries. Will attempt to fall back to single entry", "{msg%{public}.0s:Failed to deserialize list of countries. Will attempt to fall back to single entry, error:%{public, location:escape_only}@}", buf, 0x1Cu);
          v8 = v36;
        }

        if (v8)
        {
          v54 = [[NSString alloc] initWithData:-[NSDictionary objectForKeyedSubscript:](a3 encoding:{"objectForKeyedSubscript:", @"com.apple.RegulatoryDomain.peer_status.countryCode", 4}];
          obj = [NSArray arrayWithObjects:&v54 count:1];
        }
      }
    }

    else
    {
      obj = 0;
    }

    v35 = 0;
    [-[NSDictionary objectForKeyedSubscript:](a3 objectForKeyedSubscript:{@"com.apple.RegulatoryDomain.peer_status.priority", "getBytes:length:", &v35, 4}];
    v34 = 0.0;
    [-[NSDictionary objectForKeyedSubscript:](a3 objectForKeyedSubscript:{@"com.apple.RegulatoryDomain.peer_status.timestamp", "getBytes:length:", &v34, 8}];
    v9 = [NSDate dateWithTimeIntervalSinceReferenceDate:v34];
    v33 = 0;
    [-[NSDictionary objectForKeyedSubscript:](a3 objectForKeyedSubscript:{@"com.apple.RegulatoryDomain.peer_status.isDisputed", "getBytes:length:", &v33, 1}];
    v10 = +[NSMutableArray array];
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v11 = [(NSArray *)obj countByEnumeratingWithState:&v29 objects:v53 count:16];
    if (v11)
    {
      v13 = v11;
      v14 = *v30;
      *&v12 = 68290562;
      v24 = v12;
      do
      {
        v15 = 0;
        v26 = v13;
        do
        {
          if (*v30 != v14)
          {
            objc_enumerationMutation(obj);
          }

          v16 = *(*(&v29 + 1) + 8 * v15);
          v17 = +[NSMutableDictionary dictionary];
          [v17 setObject:v16 forKeyedSubscript:@"com.apple.RegulatoryDomain.peer_status.countryCode"];
          [v17 setObject:+[NSNumber numberWithUnsignedInt:](NSNumber forKeyedSubscript:{"numberWithUnsignedInt:", v35), @"com.apple.RegulatoryDomain.peer_status.priority"}];
          [v17 setObject:v9 forKeyedSubscript:@"com.apple.RegulatoryDomain.peer_status.timestamp"];
          [v17 setObject:+[NSNumber numberWithBool:](NSNumber forKeyedSubscript:{"numberWithBool:", v33), @"com.apple.RegulatoryDomain.peer_status.isDisputed"}];
          [v10 addObject:v17];
          if (qword_1025D4750 != -1)
          {
            sub_100260318();
          }

          v18 = p_info[235];
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            v19 = v9;
            v20 = [(NSString *)a2 UTF8String];
            v21 = [v16 UTF8String];
            v22 = v34;
            v28 = v35;
            v23 = [NSNumber numberWithBool:v33];
            *buf = v24;
            v38 = 0;
            v39 = 2082;
            v40 = "";
            v41 = 2082;
            v42 = v20;
            v9 = v19;
            v13 = v26;
            v43 = 2082;
            v44 = v21;
            v45 = 2114;
            v46 = v9;
            v47 = 2050;
            v48 = v22;
            p_info = (&OBJC_METACLASS___CLMotionHintLoggerAdapter + 32);
            v49 = 2050;
            v50 = v28;
            v51 = 2114;
            v52 = v23;
            _os_log_impl(dword_100000000, v18, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:received a peer update, forwarding..., deviceID:%{public, location:escape_only}s, country:%{public, location:escape_only}s, timestamp:%{public, location:escape_only}@, timestampVal:%{public}f, priority:%{public}lu, disputed?:%{public, location:escape_only}@}", buf, 0x4Eu);
          }

          v15 = v15 + 1;
        }

        while (v13 != v15);
        v13 = [(NSArray *)obj countByEnumeratingWithState:&v29 objects:v53 count:16];
      }

      while (v13);
    }

    RDUpdateCountryCodeFromPeerInfo();
  }

  else
  {

    _RDUpdateCountryCodeFromPeer(a2, 0);
  }
}

id sub_100763514(uint64_t a1)
{
  if (qword_1025D4750 != -1)
  {
    sub_10192B7E4();
  }

  v2 = qword_1025D4758;
  if (os_log_type_enabled(qword_1025D4758, OS_LOG_TYPE_DEFAULT))
  {
    [*(a1 + 32) timeToActiveGiveup];
    v7[0] = 68289282;
    v7[1] = 0;
    v8 = 2082;
    v9 = "";
    v10 = 1026;
    v11 = v3;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:timeout elapsed with no locations for current country, requesting low-cost active update, duration:%{public}d}", v7, 0x18u);
  }

  [*(a1 + 32) requestLocationWithDesiredAccuracy:kCLLocationAccuracyKilometer];
  v4 = *(a1 + 32);
  v5 = v4[4];
  [v4 timeToActiveGiveup];
  return [v5 setNextFireDelay:?];
}

void sub_100764DB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  [*(a1 + 32) handleResponseFromPossibleTerritoriesFetch:a2 withError:a3];

  *(*(*(a1 + 48) + 8) + 40) = 0;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  obj = [*(a1 + 32) previousCountries];
  v4 = [obj countByEnumeratingWithState:&v14 objects:v21 count:16];
  if (v4)
  {
    v5 = *v15;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v15 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(a1 + 32);
        v8 = [*(*(&v14 + 1) + 8 * i) UTF8String];
        v9 = strlen(v8);
        if (v9 >= 0x7FFFFFFFFFFFFFF8)
        {
          sub_100061080();
        }

        v10 = v9;
        if (v9 >= 0x17)
        {
          operator new();
        }

        v20 = v9;
        if (v9)
        {
          memmove(&__dst, v8, v9);
        }

        *(&v19[-4] + v10) = 0;
        v11 = sub_10001A2EC((v7 + 96), &__dst);
        if (v20 < 0)
        {
          operator delete(__dst);
        }

        if (v11)
        {
          if (*(a1 + 56) == 1)
          {
            [*(a1 + 32) revGeoForAdminArea:*(a1 + 40)];
          }

          return;
        }
      }

      v4 = [obj countByEnumeratingWithState:&v14 objects:v21 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  if (qword_1025D4750 != -1)
  {
    sub_100260318();
  }

  v12 = qword_1025D4758;
  if (os_log_type_enabled(qword_1025D4758, OS_LOG_TYPE_INFO))
  {
    __dst = 68289026;
    v19[0] = 2082;
    *&v19[1] = "";
    _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_INFO, "{msg%{public}.0s:no reason to expensively check territories right now}", &__dst, 0x12u);
  }
}

void sub_1007666B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1007666C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  [*(a1 + 32) handleRevGeocodeCompletionForPlacemarks:a2 withError:a3];
  [+[NSDate now](NSDate timeIntervalSince1970];
  *(*(a1 + 32) + 296) = v4;

  *(*(*(a1 + 40) + 8) + 40) = 0;
}

const void **sub_100767180(void *a1, const void **a2)
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

  if (!sub_100019DF4(a1, v11 + 2, a2))
  {
    goto LABEL_17;
  }

  return v11;
}

void *sub_1007673F8(uint64_t a1, uint64_t a2)
{
  result = sub_10132F5EC(a1, a2);
  *result = off_10246F5B0;
  return result;
}

void sub_100767BC4(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a4 + 32) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_10192BA9C();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v11 = 1;
    v8 = _os_activity_create(dword_100000000, "CL: CLOdometerNotifierWatch::onCompanionNotification", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v8, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_10192BAB0();
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
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLOdometerNotifierWatch::onCompanionNotification, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v11 = 0;
  }

  sub_100769604(a4, v7, a2, a3);
  if (v11 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

void sub_100767D90(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 32);
  v4 = [*(v3 + 32) silo];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3321888768;
  v7[2] = sub_100767E50;
  v7[3] = &unk_10246F7B8;
  v6 = *a2;
  v5 = a2[1];
  v7[4] = v3;
  v7[5] = v6;
  v8 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  [v4 async:v7];
  if (v8)
  {
    sub_100008080(v8);
  }
}

void sub_100767E38(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_100008080(a16);
  }

  _Unwind_Resume(exception_object);
}

void sub_100767E50(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 48);
  v4[0] = *(a1 + 40);
  v4[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  sub_100767EDC(v2, v4);
  if (v3)
  {

    sub_100008080(v3);
  }
}

void sub_100767EC4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_100008080(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100767EDC(uint64_t result, __int128 ***a2)
{
  v2 = **a2;
  if (v2 != (*a2)[1])
  {
    v4 = result;
    do
    {
      v5 = v2[1];
      v22 = *v2;
      v23 = v5;
      v24 = *(v2 + 4);
      v20 = *(v2 + 44);
      v21 = *(v2 + 15);
      v18 = 0u;
      v19 = 0u;
      v16 = 0u;
      v17 = 0u;
      v14 = 0u;
      v15 = 0u;
      v12 = 0u;
      v13 = 0u;
      v7[0] = v22;
      v7[1] = v5;
      v8 = v24;
      v9 = 1;
      v11 = v21;
      v10 = v20;
      v6 = 8;
      result = (*(*v4 + 152))(v4, &v6, v7, 0, 0xFFFFFFFFLL, 0);
      v2 += 4;
    }

    while (v2 != (*a2)[1]);
  }

  return result;
}

void sub_100767FEC(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 32);
  v4 = [*(v3 + 32) silo];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3321888768;
  v7[2] = sub_1007680AC;
  v7[3] = &unk_10246F808;
  v6 = *a2;
  v5 = a2[1];
  v7[4] = v3;
  v7[5] = v6;
  v8 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  [v4 async:v7];
  if (v8)
  {
    sub_100008080(v8);
  }
}

void sub_100768094(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_100008080(a16);
  }

  _Unwind_Resume(exception_object);
}

void sub_1007680AC(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 48);
  v4[0] = *(a1 + 40);
  v4[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_100768138(v2, v4);
  if (v3)
  {

    sub_100008080(v3);
  }
}

void sub_100768120(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_100008080(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_100768138(uint64_t a1, uint64_t **a2)
{
  v2 = *a2;
  if (*a2)
  {
    v3 = *v2;
    v4 = v2[1];
    if (*v2 != v4)
    {
      do
      {
        v6 = *(v3 + 8);
        v11 = *v3;
        v7 = v11;
        v24 = 0u;
        v25 = 0u;
        v22 = 0u;
        v23 = 0u;
        v20 = 0u;
        v21 = 0u;
        v18 = 0u;
        v19 = 0u;
        v16 = 0u;
        v17 = 0u;
        v15 = 0u;
        v12 = v6;
        v13 = 1;
        v14[0] = sub_1007697FC(a1 + 1472, &v11);
        v14[1] = v8;
        LODWORD(v11) = 5;
        (*(*a1 + 152))(a1, &v11, v14, 0, 0xFFFFFFFFLL, 0);
        v9 = objc_autoreleasePoolPush();
        v10 = objc_alloc_init(ALActivityLog);
        [(ALActivityLog *)v10 setTimestamp:v7];
        [(ALActivityLog *)v10 setCoarseElevation:objc_alloc_init(ALCMCoarseElevation)];
        [(ALCMCoarseElevation *)[(ALActivityLog *)v10 coarseElevation] setElevationAscended:v6];
        [(ALCMCoarseElevation *)[(ALActivityLog *)v10 coarseElevation] setSource:1];
        [-[CLServiceVendor proxyForService:](+[CLServiceVendor sharedInstance](CLServiceVendor "sharedInstance")];
        objc_autoreleasePoolPop(v9);
        v3 += 16;
      }

      while (v3 != v4);
    }
  }
}

uint64_t sub_1007682C4(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(result + 40) = *(a2 + 40);
  *(result + 48) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1007682E0(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    sub_100008080(v1);
  }
}

void sub_1007682F0(unsigned __int8 *a1, int a2)
{
  if (qword_1025D4390 != -1)
  {
    sub_10192BAD8();
  }

  v4 = qword_1025D4398;
  if (os_log_type_enabled(qword_1025D4398, OS_LOG_TYPE_DEFAULT))
  {
    v5 = a1[945];
    v6[0] = 67240448;
    v6[1] = v5;
    v7 = 1026;
    v8 = a2;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEFAULT, "Update location authorization, current, %{public}d, new, %{public}d", v6, 0xEu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10192BAEC();
  }

  if (a1[945] != a2)
  {
    sub_100768820(a1);
    sub_1007679B0(a1);
    a1[945] = a2;
    (*(*a1 + 216))(a1);
  }
}

void sub_10076842C(float *a1, uint64_t a2)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a2 + 32) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_10192BA9C();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v7 = 1;
    v4 = _os_activity_create(dword_100000000, "CL: CLOdometerNotifierWatch::onFlightSegment", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v4, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_10192BAB0();
    }

    v5 = qword_1025D47F8;
    if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68289538;
      v9 = 0;
      v10 = 2082;
      v11 = "";
      v12 = 2082;
      v13 = "activity";
      v14 = 2050;
      v15 = a2;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLOdometerNotifierWatch::onFlightSegment, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v7 = 0;
  }

  sub_10076AE54(a2, a1);
  if (v7 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

uint64_t sub_1007685F4(uint64_t a1)
{
  *a1 = off_10246F678;
  *(a1 + 112) = off_10246F798;
  sub_100768820(a1);
  if (sub_100023ED4(0))
  {
    v2 = sub_100023ED4(0);
    sub_10095D9F8(v2, 28, *(a1 + 1552));
    v3 = *(a1 + 1552);
    *(a1 + 1552) = 0;
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }
  }

  v4 = *(a1 + 1272);
  *(a1 + 1272) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  *(a1 + 1616) = 0;
  v5 = *(a1 + 1552);
  *(a1 + 1552) = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  v6 = *(a1 + 1544);
  *(a1 + 1544) = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  v7 = *(a1 + 1536);
  *(a1 + 1536) = 0;
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  v8 = *(a1 + 1528);
  *(a1 + 1528) = 0;
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  v9 = *(a1 + 1520);
  *(a1 + 1520) = 0;
  if (v9)
  {
    (*(*v9 + 8))(v9);
  }

  sub_100B55830(a1 + 1280);
  v10 = *(a1 + 1272);
  *(a1 + 1272) = 0;
  if (v10)
  {
    (*(*v10 + 8))(v10);
  }

  return sub_1004D2C5C(a1);
}

uint64_t sub_100768820(uint64_t a1)
{
  sub_1004D3510(a1);
  v2 = *(a1 + 1520);
  *(a1 + 1520) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(a1 + 1536);
  *(a1 + 1536) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  [*(a1 + 1248) releaseAccuracyEnablementAssertionForClient:CLISP_ME_TOKEN];

  *(a1 + 1248) = 0;
  result = *(a1 + 1544);
  if (result)
  {
    *(a1 + 1544) = 0;
    v5 = *(*result + 8);

    return v5();
  }

  return result;
}

void sub_100768918(uint64_t a1)
{
  sub_1007685F4(a1);

  operator delete();
}

void sub_100768950(uint64_t a1)
{
  sub_1007685F4(a1 - 112);

  operator delete();
}

id sub_10076898C(uint64_t a1, char a2)
{
  v2 = *(a1 + 40);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100768A04;
  v4[3] = &unk_102460CC8;
  v4[4] = a1;
  v5 = a2;
  return [v2 async:v4];
}

id sub_100768A04(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(a1 + 40) == 1)
  {
    if (qword_1025D4310 != -1)
    {
      sub_10192BC00();
    }

    v2 = qword_1025D4318;
    if (os_log_type_enabled(qword_1025D4318, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEFAULT, "Enabling kNotificationOdometerUpdateElevation from companion", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10192BCF8();
    }

    v7 = 3;
    return [*(*(v1 + 1272) + 16) register:*(*(v1 + 1272) + 8) forNotification:sub_1005F585C(&v7) registrationInfo:0];
  }

  else
  {
    if (qword_1025D4310 != -1)
    {
      sub_10192BC00();
    }

    v4 = qword_1025D4318;
    if (os_log_type_enabled(qword_1025D4318, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEFAULT, "Disabling kNotificationOdometerUpdateElevation from companion", v6, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10192BC14();
    }

    v5 = 3;
    return [*(*(v1 + 1272) + 16) unregister:*(*(v1 + 1272) + 8) forNotification:sub_1005F585C(&v5)];
  }
}

void sub_100768B58(uint64_t a1)
{
  v2 = sub_100023ED4(0);
  v9[0] = 5;
  if (sub_10000608C(a1, v9, 1))
  {
    if (*(a1 + 1609) == 1)
    {
      if (v2)
      {
        v4 = *(v2 + 72);
        v3 = v2 + 72;
        if ((*(v4 + 16))(v3))
        {
          if ((sub_100023B30() & 0x2000000000) != 0)
          {
            (*(*v3 + 40))(v3, 1);
          }
        }
      }

      v9[0] = 5;
      [*(*(a1 + 1272) + 16) register:*(*(a1 + 1272) + 8) forNotification:sub_1005F585C(v9) registrationInfo:0];
      if (qword_1025D4310 != -1)
      {
        sub_10192BDDC();
      }

      v5 = qword_1025D4318;
      if (os_log_type_enabled(qword_1025D4318, OS_LOG_TYPE_INFO))
      {
        LOWORD(v9[0]) = 0;
        _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_INFO, "CoarseElevation,phone,1,watch,1", v9, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_10192BFCC();
      }

      return;
    }

    if ((*(a1 + 1241) & 1) != 0 || !v2)
    {
      if (!v2)
      {
LABEL_33:
        v9[0] = 5;
        [*(*(a1 + 1272) + 16) register:*(*(a1 + 1272) + 8) forNotification:sub_1005F585C(v9) registrationInfo:0];
        if (qword_1025D4310 != -1)
        {
          sub_10192BDDC();
        }

        v8 = qword_1025D4318;
        if (os_log_type_enabled(qword_1025D4318, OS_LOG_TYPE_INFO))
        {
          LOWORD(v9[0]) = 0;
          _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_INFO, "CoarseElevation,src,phone,1,watch,0", v9, 2u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_10192BEE8();
        }

        return;
      }
    }

    else if ((*(*(v2 + 72) + 16))(v2 + 72) && (sub_100023B30() & 0x2000000000) != 0)
    {
      (*(*(v2 + 72) + 40))(v2 + 72, 1);
      v9[0] = 5;
      [*(*(a1 + 1272) + 16) unregister:*(*(a1 + 1272) + 8) forNotification:sub_1005F585C(v9)];
      if (qword_1025D4310 != -1)
      {
        sub_10192BDDC();
      }

      v7 = qword_1025D4318;
      if (os_log_type_enabled(qword_1025D4318, OS_LOG_TYPE_INFO))
      {
        LOWORD(v9[0]) = 0;
        _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_INFO, "CoarseElevation,src,phone,0,watch,1", v9, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_10192BE04();
      }

      return;
    }

    (*(*(v2 + 72) + 40))(v2 + 72, 0);
    goto LABEL_33;
  }

  if (v2)
  {
    (*(*(v2 + 72) + 40))(v2 + 72, 0);
  }

  v9[0] = 5;
  [*(*(a1 + 1272) + 16) unregister:*(*(a1 + 1272) + 8) forNotification:sub_1005F585C(v9)];
  if (qword_1025D4310 != -1)
  {
    sub_10192BDDC();
  }

  v6 = qword_1025D4318;
  if (os_log_type_enabled(qword_1025D4318, OS_LOG_TYPE_INFO))
  {
    LOWORD(v9[0]) = 0;
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_INFO, "CoarseElevation,src,phone,0,watch,0", v9, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10192C0B0();
  }
}

void sub_100768F38(unsigned __int8 *a1)
{
  sub_100186FE0(a1);

  sub_100768B58(a1);
}

void sub_100768F70(uint64_t a1, int *a2, uint64_t a3, uint64_t a4)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a4 + 32) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_10192BA9C();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v11 = 1;
    v8 = _os_activity_create(dword_100000000, "CL: CLOdometerNotifierWatch::onLocationNotification", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v8, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_10192BAB0();
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
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLOdometerNotifierWatch::onLocationNotification, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v11 = 0;
  }

  sub_100769AF8(a4, v7, a2, a3);
  if (v11 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

void sub_10076913C(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a4 + 32) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_10192BA9C();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v11 = 1;
    v8 = _os_activity_create(dword_100000000, "CL: CLOdometerNotifierWatch::onRhythmicGnssModeOfOperationStatusNotification", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v8, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_10192BAB0();
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
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLOdometerNotifierWatch::onRhythmicGnssModeOfOperationStatusNotification, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v11 = 0;
  }

  sub_10076B174(a4, v7, a2, a3);
  if (v11 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

void sub_100769308(uint64_t a1)
{
  if (qword_1025D4390 != -1)
  {
    sub_10192BAD8();
  }

  v2 = qword_1025D4398;
  if (os_log_type_enabled(qword_1025D4398, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_INFO, "Enable GPS; Start GPS subscription", buf, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10192C194();
  }

  v3 = *(a1 + 1544);
  if (v3)
  {
    [*(v3 + 16) register:*(v3 + 8) forNotification:41 registrationInfo:0];
  }

  if (*(a1 + 1256) == 1)
  {
    if (qword_1025D4390 != -1)
    {
      sub_10192C278();
    }

    v4 = qword_1025D4398;
    if (os_log_type_enabled(qword_1025D4398, OS_LOG_TYPE_INFO))
    {
      *v5 = 0;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_INFO, "Switching to GPS leech, rhythmic waking mode", v5, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10192C2A0();
    }

    [*(a1 + 1248) releaseAccuracyEnablementAssertionForClient:CLISP_ME_TOKEN];
    [*(*(a1 + 1520) + 16) unregister:*(*(a1 + 1520) + 8) forNotification:0];
    [*(*(a1 + 1520) + 16) register:*(*(a1 + 1520) + 8) forNotification:5 registrationInfo:0];
    [*(*(a1 + 1536) + 16) register:*(*(a1 + 1536) + 8) forNotification:23 registrationInfo:0];
    sub_100B55994(a1 + 1280, 1);
  }

  else
  {
    [*(*(a1 + 1520) + 16) unregister:*(*(a1 + 1520) + 8) forNotification:5];
    [*(*(a1 + 1536) + 16) unregister:*(*(a1 + 1536) + 8) forNotification:23];
    [*(*(a1 + 1520) + 16) register:*(*(a1 + 1520) + 8) forNotification:0 registrationInfo:0];
    sub_100B55994(a1 + 1280, -1);
    [*(a1 + 1248) takeAccuracyEnablementAssertionForClient:CLISP_ME_TOKEN withDesiredAccuracy:-1.0];
  }

  *(a1 + 1240) = 1;
}

_BYTE *sub_1007694F0(_BYTE *result)
{
  if (result[1240] == 1)
  {
    v7 = v1;
    v8 = v2;
    v3 = result;
    if (qword_1025D4390 != -1)
    {
      sub_10192BAD8();
    }

    v4 = qword_1025D4398;
    if (os_log_type_enabled(qword_1025D4398, OS_LOG_TYPE_INFO))
    {
      *v6 = 0;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_INFO, "Disable GPS; Stop GPS subscription", v6, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10192C384();
    }

    [*(*(v3 + 190) + 16) unregister:*(*(v3 + 190) + 8) forNotification:0];
    [*(*(v3 + 190) + 16) unregister:*(*(v3 + 190) + 8) forNotification:5];
    [*(*(v3 + 192) + 16) unregister:*(*(v3 + 192) + 8) forNotification:23];
    sub_100B55994((v3 + 1280), -1);
    result = [*(v3 + 156) releaseAccuracyEnablementAssertionForClient:CLISP_ME_TOKEN];
    v5 = *(v3 + 193);
    if (v5)
    {
      result = [*(v5 + 16) unregister:*(v5 + 8) forNotification:41];
    }

    v3[1240] = 0;
    v3[1257] = 0;
  }

  return result;
}

void sub_100769604(uint64_t a1, uint64_t a2, _DWORD *a3, uint64_t a4)
{
  if (*a3 == 6)
  {
    v9 = (*a4 & *(a4 + 1)) & *(a4 + 16) & 1;
    if (*(a1 + 1241) != v9)
    {
      *(a1 + 1241) = v9;

      sub_100768B58(a1);
    }
  }

  else if (*a3 == 8)
  {
    LODWORD(v11[0]) = 5;
    if (!sub_10000608C(a1, v11, 1) || *(a1 + 1609) == 1 && (sub_100023B30() & 0x2000000000) != 0)
    {
      LODWORD(v11[0]) = 5;
      [*(*(a1 + 1272) + 16) unregister:*(*(a1 + 1272) + 8) forNotification:sub_1005F585C(v11)];
    }

    else
    {
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
      v12 = 0u;
      v11[0] = sub_1007697FC(a1 + 1472, a4);
      v11[1] = v6;
      v10 = 5;
      (*(*a1 + 152))(a1, &v10, v11, 0, 0xFFFFFFFFLL, 0);
      v7 = objc_autoreleasePoolPush();
      v8 = objc_alloc_init(ALActivityLog);
      [(ALActivityLog *)v8 setTimestamp:*a4];
      [(ALActivityLog *)v8 setCoarseElevation:objc_alloc_init(ALCMCoarseElevation)];
      [(ALCMCoarseElevation *)[(ALActivityLog *)v8 coarseElevation] setElevationAscended:*(a4 + 8)];
      [(ALCMCoarseElevation *)[(ALActivityLog *)v8 coarseElevation] setSource:*(a4 + 12)];
      [-[CLServiceVendor proxyForService:](+[CLServiceVendor sharedInstance](CLServiceVendor "sharedInstance")];
      objc_autoreleasePoolPop(v7);
    }
  }
}

uint64_t sub_1007697FC(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a1 + 32);
  if (*a2 > v5)
  {
    v6 = *(a2 + 12);
    v7 = a1 + 16 * (v6 != 0);
    v8 = *(a2 + 8) - *(v7 + 8);
    if ((v8 & 0x80000000) != 0)
    {
      v8 = *(v7 + 8) - *(a2 + 8);
    }

    if (v6 == *(a1 + 44))
    {
      v9 = *(a1 + 40);
      if (v8 >= 0x12C)
      {
        v8 = 300;
      }

      *(a1 + 32) = v4;
      *(a1 + 40) = v9 + v8;
    }

    else
    {
      if (v4 - *v7 <= 200.0)
      {
        if (v8 >= 0x12C)
        {
          v8 = 300;
        }

        v12 = fmin(v4 - v5, 180.0) * v8 / 180.0;
        v13 = *(a1 + 40);
        *(a1 + 32) = v4;
        v11 = v13 + v12;
      }

      else
      {
        v10 = *(a1 + 40);
        if (v8 >= 0xC8)
        {
          v8 = 200;
        }

        *(a1 + 32) = v4;
        v11 = v10 + v8;
      }

      *(a1 + 40) = v11;
      *(a1 + 44) = v6;
    }
  }

  *(a1 + 16 * (*(a2 + 12) != 0)) = *a2;
  sub_10001A3E8();
  if (sub_100328630())
  {
    if (qword_1025D4310 != -1)
    {
      sub_10192BC00();
    }

    v14 = qword_1025D4318;
    if (os_log_type_enabled(qword_1025D4318, OS_LOG_TYPE_DEFAULT))
    {
      v15 = *a2;
      v16 = *(a2 + 8);
      v17 = *(a2 + 12);
      v18 = *(a1 + 32);
      v19 = *(a1 + 40);
      v20 = *(a1 + 44);
      *buf = 134219264;
      v24 = v15;
      v25 = 1024;
      v26 = v16;
      v27 = 1024;
      v28 = v17;
      v29 = 2048;
      v30 = v18;
      v31 = 1024;
      v32 = v19;
      v33 = 1024;
      v34 = v20;
      _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_DEFAULT, "onCoarseElevation,startTime,%.3f,ascended,%d,source,%d,fused,startTime,%.3f,ascended,%d,source,%d", buf, 0x2Eu);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4310 != -1)
      {
        sub_10192BDDC();
      }

      v22 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "CLCoarseElevationChangeEntry CLCoarseElevationFusion::feedSample(const CLCoarseElevationChangeEntry &)", "%s\n", v22);
      if (v22 != buf)
      {
        free(v22);
      }
    }
  }

  return *(a1 + 32);
}

void sub_100769AF8(unsigned __int8 *a1, uint64_t a2, int *a3, uint64_t a4)
{
  v7 = *a3;
  if (*a3 <= 12)
  {
    if (v7)
    {
      if (v7 == 5)
      {

        sub_100769DF8(a1, 1);
        return;
      }

      goto LABEL_10;
    }

    v8 = 1;
LABEL_17:
    v11 = *(a4 + 808);
    if (v11 && sub_10030D934(v11) >= 2)
    {
      if (qword_1025D4390 != -1)
      {
        sub_10192BAD8();
      }

      v12 = (a4 + 808);
      v13 = qword_1025D4398;
      if (os_log_type_enabled(qword_1025D4398, OS_LOG_TYPE_DEBUG))
      {
        v14 = sub_10030D934(*v12);
        *buf = 134349056;
        v19 = v14;
        _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_DEBUG, "Location batch notification size %{public}ld", buf, 0xCu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_10192C468(v12);
      }

      if (sub_10030D934(*v12))
      {
        v15 = 0;
        do
        {
          sub_10030E2C0(*v12, v15, v17);
          sub_10030D6E4(*v12, v15, buf);
          sub_100769E84(a1, v17, buf);
          if (v20)
          {
            sub_100008080(v20);
          }

          ++v15;
        }

        while (v15 < sub_10030D934(*v12));
      }
    }

    else
    {
      sub_100769E84(a1, a4, a4 + 160);
    }

    sub_100769DF8(a1, v8);
    return;
  }

  if (v7 != 13)
  {
    if (v7 != 23)
    {
LABEL_10:
      if (qword_1025D4390 != -1)
      {
        sub_10192BAD8();
      }

      v9 = qword_1025D4398;
      if (os_log_type_enabled(qword_1025D4398, OS_LOG_TYPE_ERROR))
      {
        v10 = *a3;
        *buf = 67240192;
        LODWORD(v19) = v10;
        _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_ERROR, "#Warning Received unhandled location provider notification, %{public}d", buf, 8u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_10192C57C();
      }

      return;
    }

    v8 = 2;
    goto LABEL_17;
  }

  v16 = sub_1004D2FB8(a1);

  sub_1007682F0(a1, v16);
}

void sub_100769DD8(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 528);
  if (v3)
  {
    sub_100008080(v3);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_100769DF8(_BYTE *result, int a2)
{
  if (result[1259] == 1)
  {
    v6 = v2;
    v7 = v3;
    memset(v5, 0, sizeof(v5));
    v4 = 9;
    LODWORD(v5[0]) = a2;
    return (*(*result + 152))(result, &v4, v5, 0, 0xFFFFFFFFLL, 0);
  }

  return result;
}

void sub_100769E84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = (a3 + 360);
  if (sub_100ACCA54())
  {
    v7 = sub_100ACCA54();
    Current = CFAbsoluteTimeGetCurrent();
    v9 = *(a3 + 24);
    *buf = Current;
    *&buf[8] = v9;
    *&buf[16] = *(a2 + 4);
    *v90 = *(a2 + 20);
    v10 = *v6;
    *&v90[8] = v6[1];
    v90[24] = 0;
    *v92 = v10;
    v92[16] = 0;
    sub_100ACCB2C(v7, buf);
  }

  if (qword_1025D4310 != -1)
  {
    sub_10192BDDC();
  }

  v11 = qword_1025D4318;
  if (os_log_type_enabled(qword_1025D4318, OS_LOG_TYPE_DEBUG))
  {
    v12 = *(a3 + 352);
    *buf = 68289283;
    *&buf[4] = 0;
    *&buf[8] = 2082;
    *&buf[10] = "";
    *&buf[18] = 1025;
    *&buf[20] = v12;
    _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLElevationAWDAggregator, Origin Device:%{private}d}", buf, 0x18u);
  }

  if (sub_1000DA93C())
  {
    v13 = sub_1000DA93C();
    sub_101243018(v13, *(a2 + 4), *(a2 + 12), *(a3 + 376), *(a3 + 384));
  }

  v14 = *a3;
  if ((*(a2 + 96) | 2) != 3 || !sub_10164CEAC(*(a3 + 616)) || v14 < 0.0)
  {
    goto LABEL_15;
  }

  if (*(a1 + 1257))
  {
    v15 = *(a3 + 8);
    if (*&v15 < 0.0 || *(&v15 + 1) < 0.0)
    {
LABEL_15:
      if (v14 < 0.0)
      {
        *(a1 + 1040) = 0xFFEFFFFFFFFFFFFFLL;
        *(a1 + 1080) = 0;
        *(a1 + 1048) = 0u;
        *(a1 + 1064) = 0u;
        *(a1 + 1088) = xmmword_101C8CF30;
        *(a1 + 1104) = 0xFFEFFFFFFFFFFFFFLL;
        *(a1 + 1224) = 0;
        *(a1 + 1112) = 0u;
        *(a1 + 1128) = 0u;
        *(a1 + 1144) = 0u;
        *(a1 + 1160) = 0u;
        *(a1 + 1176) = 0u;
        *(a1 + 1192) = 0u;
        *(a1 + 1208) = 0u;
        *(a1 + 1257) = 0;
        if (qword_1025D4390 != -1)
        {
          sub_10192C278();
        }

        v16 = qword_1025D4398;
        if (os_log_type_enabled(qword_1025D4398, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_DEFAULT, "Invalid odometer detected, clearing cached odometer entry", buf, 2u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_10192C688();
        }
      }

      if (qword_1025D4390 != -1)
      {
        sub_10192C278();
      }

      v17 = qword_1025D4398;
      if (os_log_type_enabled(qword_1025D4398, OS_LOG_TYPE_DEFAULT))
      {
        v18 = *(a2 + 76);
        v19 = *(a2 + 28);
        v21 = *a3;
        v20 = *(a3 + 8);
        v22 = *(a2 + 44);
        v23 = *(a2 + 52);
        v24 = *(a3 + 16);
        v25 = *(a3 + 24);
        v26 = *(a3 + 352);
        v27 = *(a2 + 96);
        v28 = *(a3 + 616);
        *buf = 134286337;
        *&buf[4] = v20;
        *&buf[12] = 2050;
        *&buf[14] = v18;
        *&buf[22] = 2049;
        *&buf[24] = v19;
        *v90 = 2049;
        *&v90[2] = v21;
        *&v90[10] = 2050;
        *&v90[12] = v24;
        *&v90[20] = 2049;
        *&v90[22] = v22;
        v91 = 2050;
        *v92 = v23;
        *&v92[8] = 2050;
        *&v92[10] = v25;
        v93 = 2049;
        v94 = v22;
        v95 = 1026;
        v96 = v26;
        v97 = 1026;
        v98 = v27;
        v99 = 1026;
        v100 = v28;
        _os_log_impl(dword_100000000, v17, OS_LOG_TYPE_DEFAULT, "Drop entry! distance, %{private}.8f, startTime, %{public}.8f, gps altitude, %{private}.8f, odometer, %{private}.8f, accuracy, %{public}.8f, gpsSpeed, %{private}.8f, gpsSpeedAccuracy, %{public}.8f, timestampGps, %{public}.8f, rawSpeed, %{private}.8f, originDevice, %{public}d, locationType, %{public}d, batchedLocationFixType, %{public}d", buf, 0x6Eu);
      }

      if (sub_10000A100(121, 2))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1025D4390 != -1)
        {
          sub_10192C278();
        }

        v38 = *(a2 + 76);
        v39 = *(a2 + 28);
        v41 = *a3;
        v40 = *(a3 + 8);
        v42 = *(a2 + 44);
        v43 = *(a2 + 52);
        v44 = *(a3 + 16);
        v45 = *(a3 + 24);
        v46 = *(a3 + 352);
        v47 = *(a2 + 96);
        v48 = *(a3 + 616);
        v65 = 134286337;
        v66 = v40;
        v67 = 2050;
        v68 = v38;
        v69 = 2049;
        v70 = v39;
        v71 = 2049;
        v72 = v41;
        v73 = 2050;
        v74 = v44;
        v75 = 2049;
        v76 = v42;
        v77 = 2050;
        v78 = v43;
        v79 = 2050;
        v80 = v45;
        v81 = 2049;
        v82 = v42;
        v83 = 1026;
        v84 = v46;
        v85 = 1026;
        v86 = v47;
        v87 = 1026;
        v88 = v48;
        v49 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "void CLOdometerNotifierWatch::notifyLocation(const CLDaemonLocation &, const CLDaemonLocationPrivate &)", "%s\n", v49);
        if (v49 != buf)
        {
          free(v49);
        }
      }

      return;
    }
  }

  else
  {
    *(a1 + 1257) = 1;
    v15 = *(a3 + 8);
  }

  v63 = 0u;
  *&v62[16] = 0u;
  *v62 = 0u;
  *&v61[32] = 0u;
  *&v61[16] = 0u;
  *v61 = 0u;
  v50 = *(a2 + 76);
  v51 = v15;
  v29 = *(a2 + 44);
  v52 = *(a2 + 28);
  v53 = v29;
  v30 = *a3;
  v54 = v29;
  v55 = v30;
  v31 = *(a3 + 24);
  v56 = *(a2 + 52);
  v57 = v31;
  v58 = *(a3 + 344);
  v32 = *(a3 + 352);
  v59 = 0;
  v60 = v32;
  *v61 = *(a2 + 96);
  v33 = *(a3 + 496);
  v34 = *v6;
  *&v61[8] = v6[1];
  *&v61[24] = v33;
  v35 = *(a2 + 68);
  *&v61[40] = *(a2 + 60) * 0.0174532924;
  *v62 = v35;
  *&v62[8] = v34;
  v36 = *(a1 + 948);
  *&v62[24] = *(a3 + 616);
  *&v62[28] = v36;
  LOBYTE(v63) = *(a3 + 288);
  DWORD2(v63) = *(a3 + 276);
  v64 = *(a3 + 280);
  v37 = CFAbsoluteTimeGetCurrent();
  if (sub_10076A7BC(a1 + 1040, (a1 + 1232), &v50, v37))
  {
    sub_1002A2FA4(a1, &v50);
  }
}

uint64_t sub_10076A7BC(uint64_t a1, double *a2, uint64_t a3, double a4)
{
  if (qword_1025D4390 != -1)
  {
    sub_10192BAD8();
  }

  v8 = qword_1025D4398;
  if (os_log_type_enabled(qword_1025D4398, OS_LOG_TYPE_INFO))
  {
    v9 = *(a3 + 48);
    *buf = 134283521;
    v48 = v9;
    _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_INFO, "Incoming odometer, %{private}.8f", buf, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10192C76C(a3);
  }

  v10 = *(a1 + 64);
  if (v10 <= 0.0 || (v11 = *(a3 + 64), v11 <= 0.0))
  {
    v12 = *a3 - *a1;
  }

  else
  {
    v12 = v11 - v10;
  }

  if (v12 > 0.0 && *a3 + 15.0 >= a4)
  {
    if (*(a3 + 84) == *(a1 + 84) && *(a3 + 88) == *(a1 + 88))
    {
      v22 = *(a3 + 48);
      v23 = *(a1 + 48);
      if (v22 >= v23)
      {
        v31 = v22 - v23;
      }

      else
      {
        if (qword_1025D4390 != -1)
        {
          sub_10192C278();
        }

        v24 = qword_1025D4398;
        if (os_log_type_enabled(qword_1025D4398, OS_LOG_TYPE_DEFAULT))
        {
          v25 = *(a1 + 64);
          v26 = *(a3 + 64);
          v27 = *a1;
          v28 = *a3;
          v29 = *(a1 + 48);
          v30 = *(a3 + 48);
          *buf = 134350337;
          v48 = v25;
          v49 = 2050;
          v50 = v26;
          v51 = 2050;
          *v52 = v27;
          *&v52[8] = 2050;
          v53 = v28;
          v54 = 2049;
          v55 = v29;
          v56 = 2049;
          v57 = v30;
          _os_log_impl(dword_100000000, v24, OS_LOG_TYPE_DEFAULT, "Source may have reset. Gps,%{public}.2lf,%{public}.2lf,startTime,%{public}.2lf,%{public}.2lf,odometer,%{private}.2lf,%{private}.2lf", buf, 0x3Eu);
        }

        v31 = 0.0;
        if (sub_10000A100(121, 2))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1025D4390 != -1)
          {
            sub_10192C278();
          }

          v32 = _os_log_send_and_compose_impl();
          sub_100152C7C("Generic", 1, 0, 2, "static BOOL CLOdometerNotifierWatch::updateOdometerWithEntry(CLOdometerEntry &, double &, CLOdometerEntry &, CFAbsoluteTime)", "%s\n", v32);
          if (v32 != buf)
          {
            free(v32);
          }
        }
      }
    }

    else
    {
      if (qword_1025D4390 != -1)
      {
        sub_10192C278();
      }

      v33 = qword_1025D4398;
      if (os_log_type_enabled(qword_1025D4398, OS_LOG_TYPE_DEFAULT))
      {
        v34 = *(a1 + 48);
        v35 = *(a3 + 48);
        v36 = *(a1 + 88);
        v37 = *(a3 + 88);
        *buf = 134284289;
        v48 = v34;
        v49 = 2049;
        v50 = v35;
        v51 = 1026;
        *v52 = v36;
        *&v52[4] = 1026;
        *&v52[6] = v37;
        _os_log_impl(dword_100000000, v33, OS_LOG_TYPE_DEFAULT, "Odometer source change,previous,%{private}lf,current,%{private}lf,previousType,%{public}d,type,%{public}d", buf, 0x22u);
      }

      v31 = 0.0;
      if (sub_10000A100(121, 2))
      {
        sub_10192C870(a1, a3);
      }
    }

    v38 = *a3;
    v39 = *(a3 + 16);
    v40 = *(a3 + 48);
    *(a1 + 32) = *(a3 + 32);
    *(a1 + 48) = v40;
    *a1 = v38;
    *(a1 + 16) = v39;
    v41 = *(a3 + 64);
    v42 = *(a3 + 80);
    v43 = *(a3 + 112);
    *(a1 + 96) = *(a3 + 96);
    *(a1 + 112) = v43;
    *(a1 + 64) = v41;
    *(a1 + 80) = v42;
    v44 = *(a3 + 128);
    v45 = *(a3 + 144);
    v46 = *(a3 + 176);
    *(a1 + 160) = *(a3 + 160);
    *(a1 + 176) = v46;
    *(a1 + 128) = v44;
    *(a1 + 144) = v45;
    *a2 = v31 + *a2;
    *(a3 + 8) = v31;
    *(a3 + 48) = *a2;
    return 1;
  }

  else
  {
    if (qword_1025D4390 != -1)
    {
      sub_10192C278();
    }

    v13 = qword_1025D4398;
    if (os_log_type_enabled(qword_1025D4398, OS_LOG_TYPE_DEFAULT))
    {
      v14 = *(a1 + 64);
      v15 = *(a3 + 64);
      v16 = *a1;
      v17 = *a3;
      v18 = *(a1 + 48);
      v19 = *(a3 + 48);
      *buf = 134350337;
      v48 = v14;
      v49 = 2050;
      v50 = v15;
      v51 = 2050;
      *v52 = v16;
      *&v52[8] = 2050;
      v53 = v17;
      v54 = 2049;
      v55 = v18;
      v56 = 2049;
      v57 = v19;
      _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_DEFAULT, "#Warning Current odometer sample fails time check. Gps,%{public}.2lf,%{public}.2lf,startTime,%{public}.2lf,%{public}.2lf,odometer,%{private}.2lf,%{private}.2lf", buf, 0x3Eu);
    }

    result = sub_10000A100(121, 2);
    if (result)
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4390 != -1)
      {
        sub_10192C278();
      }

      v21 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "static BOOL CLOdometerNotifierWatch::updateOdometerWithEntry(CLOdometerEntry &, double &, CLOdometerEntry &, CFAbsoluteTime)", "%s\n", v21);
      if (v21 != buf)
      {
        free(v21);
      }

      return 0;
    }
  }

  return result;
}

void sub_10076ADA4(uint64_t a1, int *a2)
{
  if (sub_100ACCA54())
  {
    v3 = sub_100ACCA54();
    v4 = *a2;

    sub_100ACCA90(v3, v4);
  }
}

_BYTE *sub_10076ADF0(_BYTE *result, _DWORD *a2, uint64_t a3)
{
  if (*a2 == 2)
  {
    v3 = *(a3 + 16);
    if ((v3 - 13) >= 2)
    {
      if (v3 == 15)
      {
        result[1256] = 0;
      }
    }

    else
    {
      result[1256] = *(a3 + 208) == 1;
    }

    return (*(*result + 216))();
  }

  return result;
}

id sub_10076AE54(uint64_t a1, float *a2)
{
  if (qword_1025D4390 != -1)
  {
    sub_10192BAD8();
  }

  v4 = qword_1025D4398;
  if (os_log_type_enabled(qword_1025D4398, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *a2;
    v6 = *(a2 + 1);
    v7 = a2[8];
    *buf = 134349568;
    v14 = v5;
    v15 = 2050;
    v16 = v6;
    v17 = 2050;
    v18 = v7;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEFAULT, "Received flight segment,start,%{public}f,end,%{public}f,rate,%{public}f", buf, 0x20u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10192C9A8();
  }

  v8 = &HKQuantityTypeIdentifierStairDescentSpeed;
  if (a2[8] > 0.0)
  {
    v8 = &HKQuantityTypeIdentifierStairAscentSpeed;
  }

  v9 = [HKQuantitySample quantitySampleWithType:[HKQuantityType quantityTypeForIdentifier:*v8] quantity:[HKQuantity quantityWithUnit:[HKUnit unitFromString:@"m/s"] doubleValue:fabsf(a2[8])] startDate:[NSDate dateWithTimeIntervalSinceReferenceDate:*a2] endDate:[NSDate dateWithTimeIntervalSinceReferenceDate:*(a2 + 1)] metadata:0];
  v10 = *(a1 + 1616);
  v12 = v9;
  return [v10 saveObjects:+[NSArray arrayWithObjects:count:](NSArray withCompletion:{"arrayWithObjects:count:", &v12, 1), &stru_10246F858}];
}

void sub_10076B034(id a1, BOOL a2, NSError *a3)
{
  if (a2)
  {
    if (qword_1025D4230 != -1)
    {
      sub_10192CAC8();
    }

    v3 = qword_1025D4238;
    if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_INFO))
    {
      LOWORD(v6) = 0;
      _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_INFO, "AscentDescentRate successfully pushed to HKHealthStore", &v6, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10192CBDC();
    }
  }

  else
  {
    if (qword_1025D4230 != -1)
    {
      sub_10192CAC8();
    }

    v5 = qword_1025D4238;
    if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_ERROR))
    {
      v6 = 138543362;
      v7 = a3;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_ERROR, "HKHealthStore, AscentDescentRate, saveObjects failed on, %{public}@", &v6, 0xCu);
    }

    if (sub_10000A100(121, 0))
    {
      sub_10192CADC(a3);
    }
  }
}

void sub_10076B174(_BYTE *a1, uint64_t a2, _DWORD *a3, uint64_t a4)
{
  if (*a3 == 41)
  {
    v13 = *(a4 + 1464);
    v5 = a1[1258];
    *buf = *(a4 + 1448);
    v12 = *buf;
    v15 = v13;
    v6 = sub_10164CEC4(v5, buf);
    *buf = v12;
    v15 = v13;
    v7 = sub_10164CEE4(buf);
    v8 = sub_10164CEF0(v6, v7);
    if (qword_1025D4390 != -1)
    {
      sub_10192C278();
    }

    v9 = qword_1025D4398;
    if (os_log_type_enabled(qword_1025D4398, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67240704;
      *&buf[4] = v6;
      *&buf[8] = 1026;
      *&buf[10] = v7;
      *&buf[14] = 1026;
      LODWORD(v15) = v8;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEFAULT, "Received operation status, isRhythmicActive, %{public}d, is1HzGnssActive, %{public}d, inRhythmicMode, %{public}d", buf, 0x14u);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4390 != -1)
      {
        sub_10192C278();
      }

      v11 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "void CLOdometerNotifierWatch::onRhythmicGnssModeOfOperationStatusNotification(int, const CLLocationProvider_Type::Notification &, const CLLocationProvider_Type::NotificationData &)", "%s\n", v11);
      if (v11 != buf)
      {
        free(v11);
      }
    }

    v10 = a1[1259];
    a1[1259] = v8;
    if ((v10 & 1) == 0)
    {
      if (v8)
      {
        sub_100769DF8(a1, 3);
      }
    }

    a1[1258] = v6;
  }
}

double sub_10076B4EC(uint64_t a1, double **a2)
{
  v2 = *a2;
  result = **a2;
  v4 = 0.0;
  while (v2 != a2[1])
  {
    v4 = v4 + v2[2];
    v2 += 3;
  }

  return result;
}

uint64_t sub_10076B518(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

double sub_10076B5EC(uint64_t a1, double **a2)
{
  v2 = a2[1];
  result = **a2;
  v4 = 0.0;
  if (*a2 != v2)
  {
    v5 = *a2;
    do
    {
      v4 = v4 + v5[2];
      v5 += 3;
    }

    while (v5 != v2);
  }

  return result;
}

uint64_t sub_10076B63C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10076B720(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10076B80C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_10076B858(void *a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  *a1 = off_1025019A0;
  v9 = a5;
  *a1 = off_10246FB40;
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
  aBlock[2] = sub_10076B9E0;
  aBlock[3] = &unk_10245AE50;
  aBlock[4] = v14;
  a1[5] = _Block_copy(aBlock);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10076B9F4;
  v12[3] = &unk_10245AE78;
  v12[4] = v14;
  a1[6] = _Block_copy(v12);
  _Block_object_dispose(v14, 8);
  return a1;
}

void sub_10076BA10(uint64_t a1)
{
  sub_10076BC14(a1);

  operator delete();
}

id sub_10076BA48(void *a1, int a2, void *__src, unint64_t a4)
{
  if (a4 >= 0x38)
  {
    v8 = 56;
  }

  else
  {
    v8 = a4;
  }

  memcpy(__dst, __src, v8);
  if (a4 >= 0x39)
  {
    if (qword_1025D4200 != -1)
    {
      sub_10192CCC0();
    }

    v9 = qword_1025D4208;
    if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315906;
      v24 = 0x8000000101C8D326 & 0x7FFFFFFFFFFFFFFFLL;
      v25 = 2048;
      v26 = 56;
      v27 = 2048;
      v28 = a4;
      v29 = 1024;
      v30 = a2;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "SIZE MISMATCH: %s=%lu vs sz=%zu notification=%d", buf, 0x26u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10192CCD4();
    }
  }

  v11 = a1[2];
  v10 = a1[3];
  v12 = a1[6];
  v13 = a1[4];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10076BC90;
  v15[3] = &unk_10246FB88;
  v15[4] = v12;
  v15[5] = v11;
  v16 = __dst[0];
  v17 = __dst[1];
  v18 = __dst[2];
  v19 = v22;
  v20 = v10;
  return [v13 async:v15];
}

uint64_t sub_10076BC14(uint64_t a1)
{
  *a1 = off_10246FB40;
  (*(*(a1 + 40) + 16))();
  _Block_release(*(a1 + 40));
  _Block_release(*(a1 + 48));

  return sub_1017E7D44(a1);
}

uint64_t sub_10076BC90(void *a1)
{
  result = (*(a1[4] + 16))();
  if (result)
  {
    v3 = a1[5];
    v4 = a1[13];

    return v3(a1 + 6, v4);
  }

  return result;
}

void sub_10076BCEC()
{
  if ((atomic_load_explicit(&qword_1025D53B0, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_1025D53B0))
    {
      v1 = 0x7FFFFFFF00000000;
      v0[2] = xmmword_101C8CF60;
      v0[3] = unk_101C8CF70;
      v0[4] = xmmword_101C8CF80;
      v0[0] = xmmword_101C8CF40;
      v0[1] = unk_101C8CF50;
      sub_1003DFE00(&qword_1025D5398, v0, 11);
      __cxa_atexit(sub_1003DD2C4, &qword_1025D5398, dword_100000000);
      __cxa_guard_release(&qword_1025D53B0);
    }
  }
}

uint64_t sub_10076BDE4()
{
  qword_102659DE8 = off_10246F940;
  qword_102659E00 = &qword_102659DE8;
  __cxa_atexit(sub_1003EE78C, &qword_102659DE8, dword_100000000);
  qword_102659E08 = off_10246F9C0;
  qword_102659E20 = &qword_102659E08;
  __cxa_atexit(sub_1003EE78C, &qword_102659E08, dword_100000000);
  qword_102659E28 = off_10246FA40;
  qword_102659E40 = &qword_102659E28;
  __cxa_atexit(sub_1003EE790, &qword_102659E28, dword_100000000);
  qword_102659E48 = off_10246FAC0;
  qword_102659E60 = &qword_102659E48;

  return __cxa_atexit(sub_1003EE790, &qword_102659E48, dword_100000000);
}

uint64_t sub_10076BF04(uint64_t a1, void *a2)
{
  *a1 = *a2;
  *(a1 + 8) = 0;
  sub_1010D0E00(a1 + 16);
  *(a1 + 61680) = 16;
  return a1;
}

uint64_t sub_10076BF40(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = sub_10076C6CC(a1, a2);
  if (!v5)
  {
    return v5;
  }

  v6 = *(a1 + 61680);
  if (v6)
  {
    *v71 = off_102450818;
    v7 = sub_1003FBD2C();
    if (qword_1025D43F0 != -1)
    {
      sub_10192CE04();
    }

    v8 = qword_1025D43F8;
    if (os_log_type_enabled(qword_1025D43F8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 67109120;
      *v52 = v7;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEBUG, "CNNWorkoutClass,%d", buf, 8u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10192CE2C(v7);
    }

    v6 = *(a1 + 61680);
  }

  if ((v6 & 0x10) != 0)
  {
    *v71 = off_1024865D0;
    memset(&v71[8], 0, 320);
    v72 = 0;
    v9 = sub_100A2A70C(v71, a1 + 16);
    if (qword_1025D43F0 != -1)
    {
      sub_10192CE04();
    }

    v10 = qword_1025D43F8;
    if (os_log_type_enabled(qword_1025D43F8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 67109120;
      *v52 = v9;
      _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEBUG, "GBTWorkoutClass,%d", buf, 8u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10192CF24(v9);
    }

    if ((*(a1 + 61680) & 0x100) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_20;
  }

  LODWORD(v9) = 5;
  if ((v6 & 0x100) != 0)
  {
LABEL_20:
    sub_10120C0E8(v71);
    v11 = sub_10120C130(v71, (a1 + 16));
    if (qword_1025D43F0 != -1)
    {
      sub_10192CE04();
    }

    v12 = qword_1025D43F8;
    if (os_log_type_enabled(qword_1025D43F8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 67109120;
      *v52 = v11;
      _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_DEBUG, "LRWorkoutClass,%d", buf, 8u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10192D01C(v11);
    }
  }

LABEL_26:
  if (v9 == 1)
  {
    if (*(a1 + 64) >= -48.0 && *(a1 + 276) <= 30.0 && *(a1 + 260) <= 0.5 && *(a1 + 124) <= 10.0)
    {
      LODWORD(v9) = 1;
    }

    else
    {
      LODWORD(v9) = 5;
    }
  }

  else if (!v9)
  {
    LODWORD(v9) = ~(sub_100023B30() >> 31) & 5;
  }

  a3[1] = sub_1003FBD0C(v9);
  *a3 = *(a1 + 8);
  if (qword_1025D43F0 != -1)
  {
    sub_10192CE04();
  }

  v13 = qword_1025D43F8;
  if (os_log_type_enabled(qword_1025D43F8, OS_LOG_TYPE_DEFAULT))
  {
    v14 = sub_1003FBD0C(v9);
    v16 = *a3;
    v15 = a3[1];
    *v71 = 67109888;
    *&v71[4] = v9;
    *&v71[8] = 2048;
    *&v71[10] = v14;
    *&v71[18] = 2048;
    *&v71[20] = v15;
    *&v71[28] = 2048;
    *&v71[30] = v16;
    _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_DEFAULT, "Tier2WorkoutClass,%d,CMWorkoutType,%ld,SmoothedCMWorkoutType,%ld,startTime,%f", v71, 0x26u);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(v71, 0x65CuLL);
    if (qword_1025D43F0 != -1)
    {
      sub_10192CE04();
    }

    v33 = sub_1003FBD0C(v9);
    v35 = *a3;
    v34 = a3[1];
    *buf = 67109888;
    *v52 = v9;
    *&v52[4] = 2048;
    *&v52[6] = v33;
    *&v52[14] = 2048;
    *&v52[16] = v34;
    *&v52[24] = 2048;
    *&v52[26] = v35;
    v36 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "BOOL CLWorkoutPredictorTier2Classifier::update(const CLWorkoutPredictorDMInput &, CLWorkoutClassifier_Type::WorkoutClassifierResult &)", "%s\n", v36);
    if (v36 != v71)
    {
      free(v36);
    }
  }

  sub_101221EEC(a1 + 16, v71);
  v17 = *&v71[16];
  *(a3 + 1) = *v71;
  *(a3 + 2) = v17;
  *(a3 + 3) = *&v71[32];
  *(a3 + 16) = *(a1 + 696);
  *(a3 + 17) = *(a1 + 700);
  if (qword_1025D43F0 != -1)
  {
    sub_10192CE04();
  }

  v18 = qword_1025D43F8;
  if (os_log_type_enabled(qword_1025D43F8, OS_LOG_TYPE_DEFAULT))
  {
    v19 = *(a3 + 7);
    v20 = *(a3 + 8);
    v21 = *(a3 + 9);
    v22 = *(a3 + 10);
    v23 = *(a3 + 11);
    v24 = *(a3 + 12);
    v25 = *(a3 + 13);
    v26 = *(a3 + 14);
    v27 = a3[2];
    v28 = *(a3 + 6);
    v29 = *(a3 + 16);
    v30 = *(a3 + 17);
    v31 = *a3;
    *v71 = 134221056;
    *&v71[4] = v19;
    *&v71[12] = 2048;
    *&v71[14] = v20;
    *&v71[22] = 2048;
    *&v71[24] = v21;
    *&v71[32] = 2048;
    *&v71[34] = v22;
    *&v71[42] = 2048;
    *&v71[44] = v23;
    *&v71[52] = 2048;
    *&v71[54] = v24;
    *&v71[62] = 2048;
    *&v71[64] = v25;
    *&v71[72] = 2048;
    *&v71[74] = v26;
    *&v71[82] = 2048;
    *&v71[84] = v27;
    *&v71[92] = 2048;
    *&v71[94] = v28;
    *&v71[102] = 2048;
    *&v71[104] = v29;
    *&v71[112] = 2048;
    *&v71[114] = v30;
    *&v71[122] = 2048;
    *&v71[124] = v31;
    _os_log_impl(dword_100000000, v18, OS_LOG_TYPE_DEFAULT, "XGBoostWorkoutPrediction,otherProb,%f,indoorCyclingProb,%f,outdoorCyclingProb,%f,swimmingProb,%f,runningProb,%f,walkingProb,%f,rowingProb,%f,ellipticalProb,%f,type,%ld,conf,%f,yawRange,%f,yawRangeStd,%f,startTime,%f", v71, 0x84u);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(v71, 0x65CuLL);
    if (qword_1025D43F0 != -1)
    {
      sub_10192CE04();
    }

    v37 = *(a3 + 7);
    v38 = *(a3 + 8);
    v39 = *(a3 + 9);
    v40 = *(a3 + 10);
    v41 = *(a3 + 11);
    v42 = *(a3 + 12);
    v43 = *(a3 + 13);
    v44 = *(a3 + 14);
    v45 = a3[2];
    v46 = *(a3 + 6);
    v47 = *(a3 + 16);
    v48 = *(a3 + 17);
    v49 = *a3;
    *buf = 134221056;
    *v52 = v37;
    *&v52[8] = 2048;
    *&v52[10] = v38;
    *&v52[18] = 2048;
    *&v52[20] = v39;
    *&v52[28] = 2048;
    *&v52[30] = v40;
    v53 = 2048;
    v54 = v41;
    v55 = 2048;
    v56 = v42;
    v57 = 2048;
    v58 = v43;
    v59 = 2048;
    v60 = v44;
    v61 = 2048;
    v62 = v45;
    v63 = 2048;
    v64 = v46;
    v65 = 2048;
    v66 = v47;
    v67 = 2048;
    v68 = v48;
    v69 = 2048;
    v70 = v49;
    v50 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "BOOL CLWorkoutPredictorTier2Classifier::update(const CLWorkoutPredictorDMInput &, CLWorkoutClassifier_Type::WorkoutClassifierResult &)", "%s\n", v50);
    if (v50 != v71)
    {
      free(v50);
    }
  }

  *(a1 + 8) = 0;
  return v5;
}

uint64_t sub_10076C6CC(int *a1, uint64_t a2)
{
  if (*(a1 + 1) == 0.0)
  {
    *(a1 + 1) = *(a2 + 48);
  }

  v26.i32[0] = sub_10011E6AC(a2);
  v26.i32[1] = v4;
  v27 = v5;
  v24 = *(a2 + 16);
  v25 = *(a2 + 24);
  v22 = *(a2 + 28);
  v23 = *(a2 + 36);
  v20 = 1065353216;
  v21 = 0;
  sub_100AEA854(a2, v18);
  v19[0] = sub_10011FB70(v18, &v24);
  v19[1] = v6;
  v19[2] = v7;
  sub_100AEA854(a2, v18);
  v17[0] = sub_10011FB70(v18, &v22);
  v17[1] = v8;
  v17[2] = v9;
  v10 = a1[1];
  if (!v10)
  {
    sub_10011E6AC(a2);
    v26.f32[1] = -v11;
    v24.f32[1] = -v24.f32[1];
    *&v22 = -*&v22;
    v10 = a1[1];
  }

  v12 = *a1;
  if (*a1 == v10)
  {
    v26.f32[0] = -sub_10011E6AC(a2);
    v24.f32[0] = -v24.f32[0];
    *(&v22 + 1) = -*(&v22 + 1);
    LODWORD(v20) = -1082130432;
    v12 = *a1;
  }

  if (v12 == 1)
  {
    v23 = -v23;
  }

  sub_100AEA854(a2, v18);
  v16[0] = sub_10011FB70(v18, &v20);
  v16[1] = v13;
  v16[2] = v14;
  return sub_1010D0FB8((a1 + 4), &v24, &v22, &v26, v19, v17, v16);
}

void sub_10076C854(char *a1, void *a2)
{
  *a1 = *a2;
  if (qword_1025D43F0 != -1)
  {
    sub_10192D114();
  }

  v3 = qword_1025D43F8;
  if (os_log_type_enabled(qword_1025D43F8, OS_LOG_TYPE_DEBUG))
  {
    v4 = *a1;
    v5 = *(a1 + 1);
    v6[0] = 67109376;
    v6[1] = v4;
    v7 = 1024;
    v8 = v5;
    _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEBUG, "DeviceOrientation,%d,%d", v6, 0xEu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10192D128(a1);
  }
}

void sub_10076C970(uint64_t a1)
{
  if (qword_1025D4240 != -1)
  {
    sub_10192D244();
  }

  v2 = qword_1025D4248;
  if (os_log_type_enabled(qword_1025D4248, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *a1;
    v4 = *(a1 + 8);
    v5 = *(a1 + 16);
    v6 = *(a1 + 20);
    v7 = *(a1 + 24);
    v8 = *(a1 + 28);
    v10 = *(a1 + 32);
    v9 = *(a1 + 36);
    v11 = *(a1 + 40);
    v12 = *(a1 + 44);
    v14 = *(a1 + 48);
    v13 = *(a1 + 52);
    v15 = 136321026;
    v16 = "startTime";
    v17 = 2048;
    v18 = v3;
    v19 = 2080;
    v20 = "endTime";
    v21 = 2048;
    v22 = v4;
    v23 = 2080;
    v24 = "avgInterCalibrationTime";
    v25 = 1024;
    v26 = v5;
    v27 = 2080;
    v28 = "pctTurnsRejected";
    v29 = 1024;
    v30 = v6;
    v31 = 2080;
    v32 = "poolLength";
    v33 = 1024;
    v34 = v7;
    v35 = 2080;
    v36 = "avgLapCorrection";
    v37 = 2048;
    v38 = v8;
    v39 = 2080;
    v40 = "numLaps";
    v41 = 1024;
    v42 = v10;
    v43 = 2080;
    v44 = "numLapInsertions";
    v45 = 1024;
    v46 = v9;
    v47 = 2080;
    v48 = "numLapsForConvergence";
    v49 = 1024;
    v50 = v11;
    v51 = 2080;
    v52 = "pctStrokesFailCurvature";
    v53 = 1024;
    v54 = v12;
    v55 = 2080;
    v56 = "pctStrokesFailMA";
    v57 = 1024;
    v58 = v14;
    v59 = 2080;
    v60 = "pctStrokesFailAccel";
    v61 = 1024;
    v62 = v13;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEFAULT, "SessionStats,%s,%f,%s,%f,%s,%u,%s,%u,%s,%u,%s,%f,%s,%u,%s,%u,%s,%u,%s,%u,%s,%u,%s,%u", &v15, 0xCEu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10192D258(a1);
  }
}

uint64_t sub_10076CBC8(uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    *(a1 + 8) = v2;
    operator delete(v2);
  }

  return a1;
}

CLClientManagerAuthorizationContext *sub_10076CBFC(uint64_t a1)
{
  LOBYTE(v3) = 0;
  qword_102659EB0 = [[CLClientManagerAuthorizationContext alloc] initWithInUseLevel:0 registrationResult:5 transientAwareRegistrationResult:5 serviceMaskTuple:*(a1 + 32) diagnosticMask:*(a1 + 40) authorizedForWidgetUpdates:0, v3];
  LOBYTE(v4) = 0;
  result = [[CLClientManagerAuthorizationContext alloc] initWithInUseLevel:0 registrationResult:4 transientAwareRegistrationResult:4 serviceMaskTuple:*(a1 + 32) diagnosticMask:*(a1 + 40) authorizedForWidgetUpdates:0, v4];
  qword_102659EB8 = result;
  return result;
}

BOOL sub_10076CC80(void *a1)
{
  if ((atomic_load_explicit(&qword_102659EF8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_102659EF8))
  {
    sub_10000EC00(&qword_102659EC8, "com.apple.NanoUniverse.AegirProxyApp");
    sub_10000EC00(byte_102659EE0, "com.apple.weather");
    __cxa_atexit(sub_10076CDFC, &qword_102659EC8, dword_100000000);
    __cxa_guard_release(&qword_102659EF8);
  }

  v2 = [objc_msgSend(a1 "clientAnchor")];
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v3 = "";
  }

  v4 = strlen(v3);
  v5 = &qword_102659EC8;
  v6 = 48;
  do
  {
    v7 = *(v5 + 23);
    if (v7 < 0)
    {
      if (v4 != v5[1])
      {
        goto LABEL_13;
      }

      if (v4 == -1)
      {
        sub_1003CC9DC();
      }

      v8 = *v5;
    }

    else
    {
      v8 = v5;
      if (v4 != v7)
      {
        goto LABEL_13;
      }
    }

    if (!memcmp(v8, v3, v4))
    {
      return v5 != &qword_102659EF8;
    }

LABEL_13:
    v5 += 3;
    v6 -= 24;
  }

  while (v6);
  v5 = &qword_102659EF8;
  return v5 != &qword_102659EF8;
}

void sub_10076CDC8(_Unwind_Exception *a1)
{
  if (byte_102659EDF < 0)
  {
    sub_10192D4C4();
  }

  __cxa_guard_abort(&qword_102659EF8);
  _Unwind_Resume(a1);
}

uint64_t sub_10076CDFC(uint64_t a1)
{
  for (i = 0; i != -48; i -= 24)
  {
    if (*(a1 + i + 47) < 0)
    {
      operator delete(*(a1 + i + 24));
    }
  }

  return a1;
}

uint64_t sub_10076D880(uint64_t a1)
{
  *a1 = off_10246FBF8;
  sub_1007ABE00(a1 + 16, *(a1 + 24));
  return a1;
}

void sub_10076D8CC(uint64_t a1)
{
  *a1 = off_10246FBF8;
  sub_1007ABE00(a1 + 16, *(a1 + 24));

  operator delete();
}

id sub_10076D938(uint64_t a1, void *a2, NSMutableDictionary *a3)
{
  v4 = a2;
  v6 = [a2 isValidCKP];
  if (a3 && v6)
  {
    v4 = sub_1000184F4(a1, v4);
    v7 = sub_10001971C(a1, v4);
    v8 = sub_1000199AC(*(a1 + 400), v4);
    a3 = [NSMutableDictionary dictionaryWithDictionary:a3];
    [(NSMutableDictionary *)a3 setObject:[NSNumber forKeyedSubscript:"numberWithBool:" numberWithBool:v7], @"BigSwitchState"];
    [(NSMutableDictionary *)a3 setObject:[NSNumber forKeyedSubscript:"numberWithUnsignedInt:" numberWithUnsignedInt:v8], @"InUseLevel"];
  }

  v9 = *(a1 + 1096);
  v10 = [v4 legacyClientKey];

  return [v9 setPersistentStoreDictionary:a3 forClient:v10];
}

void sub_10076DA34(uint64_t a1, unint64_t *a2)
{
  v2 = a2[1];
  v3 = *a2;
  v4 = v2;
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_100061098((a1 + 16), &v3);
  if (v4)
  {
    sub_100008080(v4);
  }
}

void sub_10076DA88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100008080(a10);
  }

  _Unwind_Resume(exception_object);
}

id sub_10076DAA0(void *a1)
{
  v2 = a1 + 3;
  sub_1007ABE00((a1 + 2), a1[3]);
  a1[2] = v2;
  a1[4] = 0;
  *v2 = 0;
  v3 = *(a1[1] + 136);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10076DB3C;
  v5[3] = &unk_10246FC30;
  v5[4] = a1;
  return [v3 iterateAllAnchorKeyPathsWithBlock:v5];
}

void sub_10076DB3C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  sub_10076DB98(v3, a2);
  sub_10076DC58(v3, a2);
  sub_10076DD18(v3, a2);

  sub_10076DDD8(v3, a2);
}

void sub_10076DB98(uint64_t a1, uint64_t a2)
{
  if (sub_1007ABEA0(a1, a2))
  {
    sub_10005A71C(*(a1 + 8), a2, &v6);
    if (sub_1007ABEA0(a1, a2))
    {
      v4 = v6;
      v5 = v7;
      if (v7)
      {
        atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      sub_1000E5AB0(a1 + 16, &v4);
      if (v5)
      {
        sub_100008080(v5);
      }
    }

    if (v7)
    {
      sub_100008080(v7);
    }
  }
}

void sub_10076DC2C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a10)
  {
    sub_100008080(a10);
  }

  if (a12)
  {
    sub_100008080(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_10076DC58(uint64_t a1, uint64_t a2)
{
  if (sub_1007AC13C(a1, a2))
  {
    sub_1007A8814(*(a1 + 8), a2, &v6);
    if (sub_1007AC13C(a1, a2))
    {
      v4 = v6;
      v5 = v7;
      if (v7)
      {
        atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      sub_1000E5AB0(a1 + 16, &v4);
      if (v5)
      {
        sub_100008080(v5);
      }
    }

    if (v7)
    {
      sub_100008080(v7);
    }
  }
}

void sub_10076DCEC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a10)
  {
    sub_100008080(a10);
  }

  if (a12)
  {
    sub_100008080(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_10076DD18(uint64_t a1, uint64_t a2)
{
  if (sub_1001D2A1C(a1, a2))
  {
    sub_1007AC208(*(a1 + 8), a2, &v6);
    if (sub_1001D2A1C(a1, a2))
    {
      v4 = v6;
      v5 = v7;
      if (v7)
      {
        atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      sub_1000E5AB0(a1 + 16, &v4);
      if (v5)
      {
        sub_100008080(v5);
      }
    }

    if (v7)
    {
      sub_100008080(v7);
    }
  }
}

void sub_10076DDAC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a10)
  {
    sub_100008080(a10);
  }

  if (a12)
  {
    sub_100008080(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_10076DDD8(uint64_t a1, uint64_t a2)
{
  if (sub_1007ACAC0(a1, a2))
  {
    sub_1000EA1BC(*(a1 + 8), a2, &v6);
    if (sub_1007ACAC0(a1, a2))
    {
      v4 = v6;
      v5 = v7;
      if (v7)
      {
        atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      sub_1000E5AB0(a1 + 16, &v4);
      if (v5)
      {
        sub_100008080(v5);
      }
    }

    if (v7)
    {
      sub_100008080(v7);
    }
  }
}

void sub_10076DE6C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a10)
  {
    sub_100008080(a10);
  }

  if (a12)
  {
    sub_100008080(a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10076DE98(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10076DF28;
  block[3] = &unk_102447418;
  block[4] = a1;
  if (qword_102659F00 != -1)
  {
    dispatch_once(&qword_102659F00, block);
  }

  return qword_1026372A8;
}

void sub_10076DF98(uint64_t a1, CLConnection *a2, CLConnectionMessage **a3, uint64_t a4)
{
  v8 = [NSSet setWithObjects:objc_opt_class(), 0];
  v9 = [CLConnectionMessage::getDictionaryOfClasses(*a3 v8)];
  v10 = sub_1000184F4(a1, [CLClientKeyPath clientKeyPathWithClientKey:v9]);
  UniqueRemotePid = CLConnection::getUniqueRemotePid(a2);
  if (sub_1007731C0(a1, v10, UniqueRemotePid))
  {
    v12 = *(a4 + 23);
    if (*(a4 + 23) < 0)
    {
      if (*(a4 + 8) != 19)
      {
        goto LABEL_20;
      }

      v14 = *a4;
    }

    else
    {
      v13 = a4;
      if (v12 == 14)
      {
        goto LABEL_70;
      }

      if (v12 == 17)
      {
LABEL_49:
        if (*a4 != 0x5064657469736956 || *(a4 + 8) != 0x76694C736563616CLL || *(a4 + 16) != 101)
        {
          goto LABEL_74;
        }

LABEL_57:
        operator new();
      }

      v14 = a4;
      if (v12 != 19)
      {
        goto LABEL_74;
      }
    }

    v16 = *v14;
    v17 = v14[1];
    v18 = *(v14 + 11);
    if (v16 == 0x6E6F697461636F4CLL && v17 == 0x4C72657461647055 && v18 == 0x6576694C72657461)
    {
      operator new();
    }

LABEL_20:
    v21 = *(a4 + 8);
    if ((v12 & 0x80) != 0 && v21 == 25)
    {
      if (**a4 == 0x6E6F697461636F4CLL && *(*a4 + 8) == 0x4872657461647055 && *(*a4 + 16) == 0x616369726F747369 && *(*a4 + 24) == 108)
      {
        operator new();
      }

      goto LABEL_74;
    }

    if ((v12 & 0x80) != 0 && v21 == 23)
    {
      if (**a4 == 0x5064657469736956 && *(*a4 + 8) == 0x736948736563616CLL && *(*a4 + 15) == 0x6C616369726F7473)
      {
        operator new();
      }

      goto LABEL_74;
    }

    if ((v12 & 0x80) != 0)
    {
      if (v21 != 14)
      {
        if (v21 != 17)
        {
          goto LABEL_74;
        }

        v29 = **a4 == 0x5064657469736956 && *(*a4 + 8) == 0x76694C736563616CLL;
        if (!v29 || *(*a4 + 16) != 101)
        {
          goto LABEL_74;
        }

        goto LABEL_57;
      }

      v13 = *a4;
    }

    else
    {
      v13 = a4;
      if (v12 != 14)
      {
        if (v12 != 17)
        {
LABEL_74:
          if (sub_100030AF8(a4, "BackgroundActivitySession"))
          {
            operator new();
          }

          if (sub_100030AF8(a4, "FullAccuracySession"))
          {
            operator new();
          }

          if (qword_1025D47A0 != -1)
          {
            sub_10028840C();
          }

          v34 = off_1025D47A8;
          if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_FAULT))
          {
            v35 = [v9 UTF8String];
            v36 = *(a4 + 23) >= 0 ? a4 : *a4;
            *buf = 68289538;
            *&buf[4] = 0;
            v41[0] = 2082;
            *&v41[1] = "";
            v42 = 2082;
            v43 = v35;
            v44 = 2082;
            v45 = v36;
            _os_log_impl(dword_100000000, v34, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:#locationUpdater unknnown DaemonIdentifiable client type, Client:%{public, location:escape_only}s, ClientType:%{public, location:escape_only}s}", buf, 0x26u);
            if (qword_1025D47A0 != -1)
            {
              sub_10192D4D0();
            }
          }

          v37 = off_1025D47A8;
          if (os_signpost_enabled(off_1025D47A8))
          {
            v38 = [v9 UTF8String];
            if (*(a4 + 23) >= 0)
            {
              v39 = a4;
            }

            else
            {
              v39 = *a4;
            }

            *buf = 68289538;
            *&buf[4] = 0;
            v41[0] = 2082;
            *&v41[1] = "";
            v42 = 2082;
            v43 = v38;
            v44 = 2082;
            v45 = v39;
            _os_signpost_emit_with_name_impl(dword_100000000, v37, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "#locationUpdater unknnown DaemonIdentifiable client type", "{msg%{public}.0s:#locationUpdater unknnown DaemonIdentifiable client type, Client:%{public, location:escape_only}s, ClientType:%{public, location:escape_only}s}", buf, 0x26u);
          }

          return;
        }

        goto LABEL_49;
      }
    }

LABEL_70:
    v31 = *v13;
    v32 = *(v13 + 6);
    if (v31 == 0x5365636976726553 && v32 == 0x6E6F697373655365)
    {
      operator new();
    }

    goto LABEL_74;
  }

  if (qword_1025D47A0 != -1)
  {
    sub_10028840C();
  }

  v15 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289794;
    *&buf[4] = 0;
    v41[0] = 2082;
    *&v41[1] = "";
    v42 = 2082;
    v43 = [v9 UTF8String];
    v44 = 2050;
    v45 = UniqueRemotePid;
    v46 = 1026;
    v47 = UniqueRemotePid;
    _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#warning Cannot create DaemonIdentifiableClient, IdentityToBeValidated:%{public, location:escape_only}s, ConnectedClientUniquePid:%{public}lld, ConnectedClientPid:%{public}d}", buf, 0x2Cu);
  }
}

void sub_10076E784(uint64_t a1, CLConnection *a2, CLConnectionMessage **a3)
{
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v12 = objc_opt_class();
  v13 = [NSSet setWithObjects:v4, v5, v6, v7, v8, v9, v10, v11, v12, objc_opt_class(), 0];
  v14 = [CLConnectionMessage::getDictionaryOfClasses(*a3 v13)];
  v15 = sub_1000184F4(a1, [CLClientKeyPath clientKeyPathWithClientKey:v14]);
  UniqueRemotePid = CLConnection::getUniqueRemotePid(a2);
  if (sub_1007731C0(a1, v15, UniqueRemotePid))
  {
    operator new();
  }

  if (qword_1025D47A0 != -1)
  {
    sub_10028840C();
  }

  v17 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
  {
    __p = 68289794;
    v21[0] = 2082;
    *&v21[1] = "";
    v21[5] = 2082;
    v22 = [v14 UTF8String];
    v23 = 2050;
    v24 = UniqueRemotePid;
    v25 = 1026;
    v26 = UniqueRemotePid;
    _os_log_impl(dword_100000000, v17, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#warning Cannot create DaemonIdentifiableMonitor, IdentityToBeValidated:%{public, location:escape_only}s, ConnectedClientUniquePid:%{public}lld, ConnectedClientPid:%{public}d}", &__p, 0x2Cu);
  }
}

void sub_10076EE38(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    sub_100008080(a13);
  }

  _Unwind_Resume(exception_object);
}

void sub_10076F1A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    sub_100008080(a13);
  }

  _Unwind_Resume(exception_object);
}

void sub_10076F508(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    sub_100008080(a13);
  }

  _Unwind_Resume(exception_object);
}

void sub_10076F870(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    sub_100008080(a13);
  }

  _Unwind_Resume(exception_object);
}

void sub_10076FBD8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    sub_100008080(a13);
  }

  _Unwind_Resume(exception_object);
}

void sub_10076FF40(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    sub_100008080(a13);
  }

  _Unwind_Resume(exception_object);
}

void sub_1007702A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    sub_100008080(a13);
  }

  _Unwind_Resume(exception_object);
}

void sub_100770610(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    sub_100008080(a13);
  }

  _Unwind_Resume(exception_object);
}

void sub_100770978(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    sub_100008080(a13);
  }

  _Unwind_Resume(exception_object);
}

void sub_100770CE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    sub_100008080(a13);
  }

  _Unwind_Resume(exception_object);
}

void sub_100771048(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    sub_100008080(a13);
  }

  _Unwind_Resume(exception_object);
}

void sub_1007713B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    sub_100008080(a13);
  }

  _Unwind_Resume(exception_object);
}

void sub_100771718(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    sub_100008080(a13);
  }

  _Unwind_Resume(exception_object);
}

void sub_10077174C(uint64_t a1, uint64_t a2)
{
  if (qword_1025D47A0 != -1)
  {
    sub_10028840C();
  }

  v4 = off_1025D47A8;
  v5 = os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    v6 = (a1 + 40);
    if (*(a1 + 63) < 0)
    {
      v6 = *v6;
    }

    v7 = CLConnectionMessage::name(*a2);
    if (*(v7 + 23) >= 0)
    {
      v8 = v7;
    }

    else
    {
      v8 = *v7;
    }

    *buf = 68289538;
    v13 = 0;
    v14 = 2082;
    v15 = "";
    v16 = 2082;
    v17 = v6;
    v18 = 2082;
    v19 = v8;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Received message from #CoreLocationAgent, User:%{public, location:escape_only}s, message:%{public, location:escape_only}s}", buf, 0x26u);
  }

  v9 = *a2;
  v10 = *(a2 + 8);
  v11[0] = v9;
  v11[1] = v10;
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
  }

  sub_1007718A8(v5, v11);
  if (v10)
  {
    sub_100008080(v10);
  }
}

void sub_1007718A8(uint64_t a1, CLConnectionMessage **a2)
{
  v3 = CLConnectionMessage::name(*a2);
  if (*(v3 + 23) < 0 && *(v3 + 8) == 38 && !memcmp(*v3, "kCLConnectionMessageAuthPromptResponse", 0x26uLL))
  {
    Dictionary = CLConnectionMessage::getDictionary(*a2);
    v15 = [Dictionary allKeys];
    if ([v15 containsObject:@"uuid"] && objc_msgSend(v15, "containsObject:", @"pid") && (objc_msgSend(v15, "containsObject:", @"response") & 1) != 0)
    {
      if (qword_1025D47A0 != -1)
      {
        sub_10028840C();
      }

      v16 = off_1025D47A8;
      if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_FAULT))
      {
        v17 = CLConnectionMessage::name(*a2);
        v18 = *(v17 + 23) >= 0 ? v17 : *v17;
        v24 = 68289538;
        v25 = 0;
        v26 = 2082;
        v27 = "";
        v28 = 2082;
        v29 = v18;
        v30 = 2114;
        v31 = Dictionary;
        _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:#AuthPrompt response from #CoreLocationAgent is not yet supported on this platform, message:%{public, location:escape_only}s, resposne:%{public, location:escape_only}@}", &v24, 0x26u);
        if (qword_1025D47A0 != -1)
        {
          sub_10192D4D0();
        }
      }

      v19 = off_1025D47A8;
      if (os_signpost_enabled(off_1025D47A8))
      {
        v20 = CLConnectionMessage::name(*a2);
        if (*(v20 + 23) >= 0)
        {
          v21 = v20;
        }

        else
        {
          v21 = *v20;
        }

        v24 = 68289538;
        v25 = 0;
        v26 = 2082;
        v27 = "";
        v28 = 2082;
        v29 = v21;
        v30 = 2114;
        v31 = Dictionary;
        v10 = "#AuthPrompt response from #CoreLocationAgent is not yet supported on this platform";
        v11 = "{msg%{public}.0s:#AuthPrompt response from #CoreLocationAgent is not yet supported on this platform, message:%{public, location:escape_only}s, resposne:%{public, location:escape_only}@}";
        v12 = v19;
        v13 = 38;
        goto LABEL_18;
      }
    }

    else
    {
      if (qword_1025D47A0 != -1)
      {
        sub_10028840C();
      }

      v22 = off_1025D47A8;
      if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_FAULT))
      {
        v24 = 68289282;
        v25 = 0;
        v26 = 2082;
        v27 = "";
        v28 = 2114;
        v29 = Dictionary;
        _os_log_impl(dword_100000000, v22, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:#AuthPrompt auth response from #CoreLocationAgent is malformed. Don't apply auth-response, resposne:%{public, location:escape_only}@}", &v24, 0x1Cu);
        if (qword_1025D47A0 != -1)
        {
          sub_10192D4D0();
        }
      }

      v23 = off_1025D47A8;
      if (os_signpost_enabled(off_1025D47A8))
      {
        v24 = 68289282;
        v25 = 0;
        v26 = 2082;
        v27 = "";
        v28 = 2114;
        v29 = Dictionary;
        v10 = "#AuthPrompt auth response from #CoreLocationAgent is malformed. Don't apply auth-response";
        v11 = "{msg%{public}.0s:#AuthPrompt auth response from #CoreLocationAgent is malformed. Don't apply auth-response, resposne:%{public, location:escape_only}@}";
        v12 = v23;
LABEL_17:
        v13 = 28;
LABEL_18:
        _os_signpost_emit_with_name_impl(dword_100000000, v12, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, v10, v11, &v24, v13);
      }
    }
  }

  else
  {
    if (qword_1025D47A0 != -1)
    {
      sub_10028840C();
    }

    v4 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_FAULT))
    {
      v5 = CLConnectionMessage::name(*a2);
      v6 = *(v5 + 23) >= 0 ? v5 : *v5;
      v24 = 68289282;
      v25 = 0;
      v26 = 2082;
      v27 = "";
      v28 = 2082;
      v29 = v6;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:#CoreLocationAgent defaultMessageHandler received un-handled messaeg, message:%{public, location:escape_only}s}", &v24, 0x1Cu);
      if (qword_1025D47A0 != -1)
      {
        sub_10192D4D0();
      }
    }

    v7 = off_1025D47A8;
    if (os_signpost_enabled(off_1025D47A8))
    {
      v8 = CLConnectionMessage::name(*a2);
      if (*(v8 + 23) >= 0)
      {
        v9 = v8;
      }

      else
      {
        v9 = *v8;
      }

      v24 = 68289282;
      v25 = 0;
      v26 = 2082;
      v27 = "";
      v28 = 2082;
      v29 = v9;
      v10 = "#CoreLocationAgent defaultMessageHandler received un-handled messaeg";
      v11 = "{msg%{public}.0s:#CoreLocationAgent defaultMessageHandler received un-handled messaeg, message:%{public, location:escape_only}s}";
      v12 = v7;
      goto LABEL_17;
    }
  }
}

void sub_100772054(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    sub_100008080(a13);
  }

  _Unwind_Resume(exception_object);
}

void sub_1007723BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    sub_100008080(a13);
  }

  _Unwind_Resume(exception_object);
}

void sub_100772724(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    sub_100008080(a13);
  }

  _Unwind_Resume(exception_object);
}

void sub_100772A8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    sub_100008080(a13);
  }

  _Unwind_Resume(exception_object);
}

void sub_100772DF4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    sub_100008080(a13);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100772E28(id *a1, uint64_t a2)
{
  v4 = sub_100018FC8(a1, a2, &xmmword_101CE6CD8);

  return sub_100033CDC(a1, a2, v4);
}

void sub_100772E74(uint64_t *a1, CLConnection *a2, uint64_t *a3)
{
  v3 = a1[106];
  if (!v3)
  {
    goto LABEL_9;
  }

  v7 = a1 + 106;
  do
  {
    v8 = *(v3 + 32);
    v9 = v8 >= a2;
    v10 = v8 < a2;
    if (v9)
    {
      v7 = v3;
    }

    v3 = *(v3 + 8 * v10);
  }

  while (v3);
  if (v7 == a1 + 106 || v7[4] > a2)
  {
LABEL_9:
    if (qword_1025D47A0 != -1)
    {
      sub_10028840C();
    }

    v11 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v18 = 0;
      v19 = 2082;
      v20 = "";
      v21 = 2082;
      v22 = "assert";
      v23 = 2081;
      v24 = "iter != fDaemonClients.end()";
      _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:recreateDaemonClientForConnectionWithRegistrationMessage must only be called with a connection for an active DC, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D47A0 != -1)
      {
        goto LABEL_28;
      }
    }

    while (1)
    {
      v12 = off_1025D47A8;
      if (os_signpost_enabled(off_1025D47A8))
      {
        *buf = 68289539;
        v18 = 0;
        v19 = 2082;
        v20 = "";
        v21 = 2082;
        v22 = "assert";
        v23 = 2081;
        v24 = "iter != fDaemonClients.end()";
        _os_signpost_emit_with_name_impl(dword_100000000, v12, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "recreateDaemonClientForConnectionWithRegistrationMessage must only be called with a connection for an active DC", "{msg%{public}.0s:recreateDaemonClientForConnectionWithRegistrationMessage must only be called with a connection for an active DC, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
        if (qword_1025D47A0 != -1)
        {
          sub_10192D4D0();
        }
      }

      v13 = off_1025D47A8;
      if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_INFO))
      {
        *buf = 68289539;
        v18 = 0;
        v19 = 2082;
        v20 = "";
        v21 = 2082;
        v22 = "assert";
        v23 = 2081;
        v24 = "iter != fDaemonClients.end()";
        _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_INFO, "{msg%{public}.0s:recreateDaemonClientForConnectionWithRegistrationMessage must only be called with a connection for an active DC, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      }

      abort_report_np();
      __break(1u);
LABEL_28:
      sub_10192D4D0();
    }
  }

  if (!sub_100B1FA08(v7[5]))
  {
    sub_10192E050();
  }

  sub_100112718(a1, a2);
  v14 = *a3;
  v15 = a3[1];
  v16[0] = v14;
  v16[1] = v15;
  if (v15)
  {
    atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_1000540D0(a1, a2, v16);
  if (v15)
  {

    sub_100008080(v15);
  }
}

void sub_1007731A0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_100008080(v1);
  }

  _Unwind_Resume(exception_object);
}

id sub_1007731C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1000184F4(a1, a2);
  v6 = [*(a1 + 360) objectForKey:v5];
  v7 = [v6 containsObject:{+[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", a3)}];
  if (v7)
  {
    if (qword_1025D47A0 != -1)
    {
      sub_10028840C();
    }

    v8 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 68289794;
      v15 = 0;
      v16 = 2082;
      v17 = "";
      v18 = 2114;
      v19 = v5;
      v20 = 2050;
      v21 = a3;
      v22 = 1026;
      v23 = a3;
      v9 = "{msg%{public}.0s:#identityValidation successful, Identity:%{public, location:escape_only}@, ConnectedClientUniquePid:%{public}lld, ConnectedClientPid:%{public}d}";
      v10 = v8;
      v11 = 44;
LABEL_10:
      _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEFAULT, v9, &v14, v11);
    }
  }

  else
  {
    if (qword_1025D47A0 != -1)
    {
      sub_10028840C();
    }

    v12 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 68290050;
      v15 = 0;
      v16 = 2082;
      v17 = "";
      v18 = 2114;
      v19 = v5;
      v20 = 2050;
      v21 = a3;
      v22 = 1026;
      v23 = a3;
      v24 = 2114;
      v25 = v6;
      v9 = "{msg%{public}.0s:#warning #identityValidation Identity invalid for connected client, Identity:%{public, location:escape_only}@, ConnectedClientUniquePid:%{public}lld, ConnectedClientPid:%{public}d, AllowedUniquePids:%{public, location:escape_only}@}";
      v10 = v12;
      v11 = 54;
      goto LABEL_10;
    }
  }

  return v7;
}

void sub_1007733A4(uint64_t a1, uint64_t a2, uint64_t *a3, unsigned int a4, void *a5, int a6)
{
  v29 = objc_alloc_init(NSAutoreleasePool);
  v11 = sub_1000184F4(a1, a2);
  if (([*(a1 + 136) dictionaryExistsAtKeyPath:v11] & 1) == 0)
  {
    if (qword_1025D47A0 != -1)
    {
      sub_10028840C();
    }

    v15 = off_1025D47A8;
    if (!os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_38;
    }

    if (*(a3 + 23) >= 0)
    {
      v16 = a3;
    }

    else
    {
      v16 = *a3;
    }

    *buf = 68289794;
    v31 = 0;
    v32 = 2082;
    v33 = "";
    v34 = 2114;
    v35 = v11;
    v36 = 2082;
    v37 = v16;
    v38 = 1026;
    v39 = a4;
    v17 = "{msg%{public}.0s:skip persisting #dic for rehydration. Client not found, Client:%{public, location:escape_only}@, dic:%{public, location:escape_only}s, dicType:%{public}d}";
LABEL_13:
    v18 = v15;
    v19 = 44;
LABEL_37:
    _os_log_impl(dword_100000000, v18, OS_LOG_TYPE_DEFAULT, v17, buf, v19);
    goto LABEL_38;
  }

  if (a6 && ![a5 count])
  {
    if (qword_1025D47A0 != -1)
    {
      sub_10028840C();
    }

    v15 = off_1025D47A8;
    if (!os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_38;
    }

    if (*(a3 + 23) >= 0)
    {
      v27 = a3;
    }

    else
    {
      v27 = *a3;
    }

    *buf = 68289794;
    v31 = 0;
    v32 = 2082;
    v33 = "";
    v34 = 2114;
    v35 = v11;
    v36 = 2082;
    v37 = v27;
    v38 = 1026;
    v39 = a4;
    v17 = "{msg%{public}.0s:skip persisting #dic for rehydration, payload is empty, Client:%{public, location:escape_only}@, dic:%{public, location:escape_only}s, dicType:%{public}d}";
    goto LABEL_13;
  }

  v12 = [[NSNumber numberWithUnsignedInt:?]];
  v13 = [objc_msgSend(*(a1 + 136) dictionaryForKey:@"DIC" atKeyPath:v11 defaultValue:{+[NSMutableDictionary dictionary](NSMutableDictionary, "dictionary")), "mutableCopy"}];
  if ([v13 objectForKeyedSubscript:v12])
  {
    v14 = [objc_msgSend(v13 objectForKeyedSubscript:{v12), "mutableCopy"}];
  }

  else
  {
    v14 = +[NSMutableDictionary dictionary];
  }

  v20 = v14;
  if (*(a3 + 23) >= 0)
  {
    v21 = a3;
  }

  else
  {
    v21 = *a3;
  }

  if (a6)
  {
    [v14 removeObjectForKey:{+[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", v21)}];
    if (*(a3 + 23) >= 0)
    {
      v22 = a3;
    }

    else
    {
      v22 = *a3;
    }

    [v20 setObject:a5 forKeyedSubscript:{+[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", v22)}];
  }

  else
  {
    [v14 removeObjectForKey:{+[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", v21)}];
  }

  if ([v20 count])
  {
    [v13 setObject:v20 forKeyedSubscript:v12];
  }

  else
  {
    [v13 removeObjectForKey:v12];
  }

  v23 = [v13 count];
  v24 = *(a1 + 136);
  if (v23)
  {
    [v24 setDictionary:v13 forKey:@"DIC" atKeyPath:v11];
  }

  else
  {
    [v24 removeValueForKey:@"DIC" atKeyPath:v11];
  }

  [*(a1 + 136) persist];
  if (qword_1025D47A0 != -1)
  {
    sub_10028840C();
  }

  v25 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a3 + 23) >= 0)
    {
      v26 = a3;
    }

    else
    {
      v26 = *a3;
    }

    *buf = 68290306;
    v31 = 0;
    v32 = 2082;
    v33 = "";
    v34 = 2114;
    v35 = v11;
    v36 = 2082;
    v37 = v26;
    v38 = 1026;
    v39 = a4;
    v40 = 1026;
    v41 = a6;
    v42 = 2114;
    v43 = a5;
    v17 = "{msg%{public}.0s:updated persistent-store for #dic rehydration, Client:%{public, location:escape_only}@, dic:%{public, location:escape_only}s, dicType:%{public}d, coming:%{public}hhd, RehydrationPayload:%{public, location:escape_only}@}";
    v18 = v25;
    v19 = 60;
    goto LABEL_37;
  }

LABEL_38:
}

void sub_100773810(uint64_t a1)
{
  v2 = *(a1 + 832);
  if (v2)
  {
    CLConnectionServer::~CLConnectionServer(v2);
    operator delete();
  }

  sub_10077387C(a1);
  v3 = *(a1 + 960);
  if (v3)
  {
    CLConnection::deferredDelete(v3);
    *(a1 + 960) = 0;
  }

  [*(a1 + 248) invalidate];

  *(a1 + 248) = 0;
}

void sub_10077387C(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 840);
  if (v3 != (a1 + 848))
  {
    do
    {
      v4 = v3[1];
      v5 = v3;
      if (v4)
      {
        do
        {
          v6 = v4;
          v4 = *v4;
        }

        while (v4);
      }

      else
      {
        do
        {
          v6 = v5[2];
          v7 = *v6 == v5;
          v5 = v6;
        }

        while (!v7);
      }

      sub_10011219C(a1, v3[4]);
      v3 = v6;
    }

    while (v6 != (a1 + 848));
  }

  objc_autoreleasePoolPop(v2);
}

void sub_100773918(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 136) registeredKeyPathForClientIdentifier:a2];
  if ([v3 isValidCKP])
  {
    v4 = *(a1 + 840);
    if (v4 != (a1 + 848))
    {
      do
      {
        v5 = v4[1];
        v6 = v4;
        if (v5)
        {
          do
          {
            v7 = v5;
            v5 = *v5;
          }

          while (v5);
        }

        else
        {
          do
          {
            v7 = v6[2];
            v8 = *v7 == v6;
            v6 = v7;
          }

          while (!v8);
        }

        v9 = v4[4];
        if ([sub_1000344B0(v4[5] 0)])
        {
          sub_10011219C(a1, v9);
        }

        v4 = v7;
      }

      while (v7 != (a1 + 848));
    }
  }
}

uint64_t sub_1007739D0(uint64_t a1, char a2, uint64_t *a3)
{
  v9 = a2;
  sub_10001CAF4(&v7);
  sub_1000434C8(v7, @"LocationServicesEnabledIn8.0", &v9);
  if (v8)
  {
    sub_100008080(v8);
  }

  sub_10001CAF4(&v7);
  sub_10054B380(v7);
  if (v8)
  {
    sub_100008080(v8);
  }

  sub_10054B43C(&v7, @"com.apple.locationd.notbackedup", 0, @"mobile");
  sub_1000434C8(&v7, @"LocationServicesEnabledIn8.0", &v9);
  sub_10054B380(&v7);
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.locationd/Prefs", 0, 0, 1u);
  sub_100773AF4(a1, a3, 1);
  return sub_10054B4D4(&v7);
}

void sub_100773AC8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100008080(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_100773AF4(uint64_t a1, uint64_t *a2, int a3)
{
  sub_1004E8744();
  v6 = sub_10003845C();
  v7 = sub_1004E8818();
  v8 = (a1 + 120);
  if ([*(a1 + 120) locationServicesEnabledStatus] != v6 || *(a1 + 824) != v7)
  {
    [*(a1 + 120) setLocationServicesEnabledStatus:v6];
    *(a1 + 824) = v7;
    if (qword_1025D47A0 != -1)
    {
      sub_10028840C();
    }

    v9 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
    {
      v10 = [*v8 locationServicesEnabledStatus];
      *buf = 67109376;
      *&buf[4] = v10;
      *&buf[8] = 1024;
      *&buf[10] = v7;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "GPS_NETWORK: currentStatus(%d) isGpsControlledByNetwork(%d)", buf, 0xEu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10192E3D4((a1 + 120), v7);
    }

    if (a3)
    {
      if (qword_1025D47A0 != -1)
      {
        sub_10192D4D0();
      }

      v11 = off_1025D47A8;
      if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 68289026;
        *&buf[4] = 0;
        *&buf[8] = 2082;
        *&buf[10] = "";
        _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#authsync sending kNotificationLocationServicesStatus}", buf, 0x12u);
      }

      [*(a1 + 1560) sendGlobalAuthStatus:sub_1000193E0()];
    }

    sub_100778254(a1);
    *v28 = 0u;
    memset(v29, 0, 19);
    v26 = 0u;
    *v27 = 0u;
    memset(buf, 0, sizeof(buf));
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    memset(__p, 0, 27);
    v34 = [*(a1 + 120) locationServicesEnabledStatus];
    *v35 = 4;
    (*(*a1 + 152))(a1, v35, buf, 1, 0xFFFFFFFFLL, 0);
    sub_10077387C(a1);
    for (i = *(a1 + 1016); i; i = *i)
    {
      v13 = i + 2;
      if (*(i + 39) < 0)
      {
        v13 = *v13;
      }

      v14 = [*(a1 + 136) registeredKeyPathForClientIdentifier:{+[CLClientKeyPath clientKeyPathWithClientKey:](CLClientKeyPath, "clientKeyPathWithClientKey:", +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", v13))}];
      if ([v14 isValidCKP])
      {
        v15 = sub_10004FEC8(a1, v14, &xmmword_101CE6CD8);
        sub_100034280(a1, v14, v15);
      }
    }

    v16 = *(a1 + 136);
    *v35 = _NSConcreteStackBlock;
    *v36 = 3221225472;
    *&v36[8] = sub_1007A51F0;
    *&v36[16] = &unk_1024704E8;
    v37 = a1;
    v38 = 0;
    [v16 iterateAllAnchorKeyPathsWithBlock:v35];
    sub_100774798(a1);
    sub_100774D9C(a1);
    v24[0] = &__kCFBooleanFalse;
    v21 = @"IsResetEvent";
    v22 = @"EventSource";
    if (*(a2 + 23) >= 0)
    {
      v17 = a2;
    }

    else
    {
      v17 = *a2;
    }

    v24[1] = [NSString stringWithUTF8String:v17, v21, v22];
    v23 = @"Enabled";
    v24[2] = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [*v8 locationServicesEnabledStatus] == 1);
    v18 = [NSDictionary dictionaryWithObjects:v24 forKeys:&v21 count:3];
    if (qword_1025D4890 != -1)
    {
      sub_10192E4F8();
    }

    v19 = qword_1025D4898;
    if (os_log_type_enabled(qword_1025D4898, OS_LOG_TYPE_DEBUG))
    {
      *v35 = 68289282;
      *v36 = 2082;
      *&v36[2] = "";
      *&v36[10] = 2114;
      *&v36[12] = v18;
      _os_log_impl(dword_100000000, v19, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#checkLocationServicesEnabledState #CoreAnalytics, Bigswitch Analytics:%{public, location:escape_only}@}", v35, 0x1Cu);
    }

    AnalyticsSendEvent();
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterPostNotification(DarwinNotifyCenter, CLAuthorizationStatusChangedNotification, 0, 0, 0);
    if (SHIBYTE(__p[2]) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v32) < 0)
    {
      operator delete(*(&v31 + 1));
    }

    if (SBYTE7(v31) < 0)
    {
      operator delete(v30);
    }

    if ((v29[15] & 0x80000000) != 0)
    {
      operator delete(v28[1]);
    }

    if (SHIBYTE(v28[0]) < 0)
    {
      operator delete(v27[0]);
    }

    if (SHIBYTE(v26) < 0)
    {
      operator delete(*&buf[24]);
    }

    if (buf[23] < 0)
    {
      operator delete(*buf);
    }
  }
}

void sub_100773FF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_100039BE8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100774024(uint64_t a1)
{
  v1 = *(a1 + 272);
  if (v1)
  {
    return *v1;
  }

  else
  {
    return 5;
  }
}

id sub_10077403C(uint64_t a1)
{
  result = +[CLClientKeyPath nullClientKeyPath];
  v3 = *(a1 + 272);
  if (v3)
  {
    return *(v3 + 8);
  }

  return result;
}

id sub_100774074(uint64_t a1, uint64_t a2)
{
  v3 = [-[NSArray objectAtIndexedSubscript:](sub_100019AB0(a1 a2)];
  if (qword_1025D47A0 != -1)
  {
    sub_10028840C();
  }

  v4 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
  {
    v6[0] = 68289538;
    v6[1] = 0;
    v7 = 2082;
    v8 = "";
    v9 = 2114;
    v10 = a2;
    v11 = 2050;
    v12 = v3;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:Client static registration result, Client:%{public, location:escape_only}@, registration:%{public, location:CLClientRegistrationResult}lld}", v6, 0x26u);
  }

  return v3;
}

id sub_10077417C(uint64_t a1)
{
  if (qword_1025D47A0 != -1)
  {
    sub_10028840C();
  }

  v2 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289026;
    v7 = 0;
    v8 = 2082;
    v9 = "";
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:checkVisitMonitoringStopped}", buf, 0x12u);
  }

  v3 = *(a1 + 136);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10077429C;
  v5[3] = &unk_10246FC30;
  v5[4] = a1;
  return [v3 iterateAllAnchorKeyPathsWithBlock:v5];
}

uint64_t sub_10077429C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v4 = *(v3 + 136);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1007743E8;
  v7[3] = &unk_10246FC80;
  v7[4] = v3;
  [v4 iterateIdentitiesRelatedToKeyPath:a2 withBlock:v7];
  if (qword_1025D47A0 != -1)
  {
    sub_10192D4D0();
  }

  v5 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289282;
    v9 = 0;
    v10 = 2082;
    v11 = "";
    v12 = 2114;
    v13 = a2;
    _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:stop visit monitoring for client, ckp:%{public, location:escape_only}@}", buf, 0x1Cu);
  }

  return sub_1007744DC(v3, a2, 6uLL);
}

uint64_t sub_1007743E8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  if (qword_1025D47A0 != -1)
  {
    sub_10028840C();
  }

  v4 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
  {
    v6[0] = 68289282;
    v6[1] = 0;
    v7 = 2082;
    v8 = "";
    v9 = 2114;
    v10 = a2;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:stop visit monitoring for related client, relatedCkp:%{public, location:escape_only}@}", v6, 0x1Cu);
  }

  return sub_1007744DC(v3, a2, 6uLL);
}

uint64_t sub_1007744DC(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v5 = [*(a1 + 136) registeredKeyPathForClientIdentifier:a2];
  result = [v5 isValidCKP];
  if (result)
  {
    v17 = 0;
    v18 = 0;
    sub_10004F9C8(a3, &v18, &v17);
    v7 = [*(a1 + 136) intForKey:v18 atKeyPath:v5 defaultValue:0xFFFFFFFFLL];
    v8 = [*(a1 + 136) intForKey:v17 atKeyPath:v5 defaultValue:0xFFFFFFFFLL];
    if (v7 != -1 && ((v9 = v7, v10 = v8, v8 == -1) || v10 < v9))
    {
      Current = CFAbsoluteTimeGetCurrent();
      if (qword_1025D47A0 != -1)
      {
        sub_10028840C();
      }

      v12 = off_1025D47A8;
      if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
      {
        v13 = off_10246FCA0[a3];
        *buf = 136447234;
        v30 = v13;
        v31 = 2050;
        v32 = v9;
        v33 = 2050;
        v34 = v10;
        v35 = 2114;
        v36 = v5;
        v37 = 2050;
        v38 = Current;
        _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_DEFAULT, "#warning %{public}s time started exists (%{public}.2f), but time stopped (%{public}.2f) doesn't exist or is earlier for %{public}@ - setting to %{public}.2f", buf, 0x34u);
      }

      if (sub_10000A100(121, 2))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1025D47A0 != -1)
        {
          sub_10192D4D0();
        }

        v15 = off_10246FCA0[a3];
        v19 = 136447234;
        v20 = v15;
        v21 = 2050;
        v22 = v9;
        v23 = 2050;
        v24 = v10;
        v25 = 2114;
        v26 = v5;
        v27 = 2050;
        v28 = Current;
        v16 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "BOOL CLClientManager::checkServiceStopped(CLClientKeyPath *, CLClientServiceType)", "%s\n", v16);
        if (v16 != buf)
        {
          free(v16);
        }
      }

      v14 = CFAbsoluteTimeGetCurrent();
      sub_10002FE04(a1, v5, a3, 0, 0, 0, v14);
      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

id sub_100774798(uint64_t a1)
{
  v2 = [objc_msgSend(*(a1 + 32) "vendor")];
  v3 = *(a1 + 136);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10077482C;
  v5[3] = &unk_10246FD68;
  v5[4] = v2;
  v5[5] = a1;
  return [v3 iterateAllAnchorKeyPathsWithBlock:v5];
}

uint64_t sub_10077482C(uint64_t a1, void *a2)
{
  v4 = 0;
  v5 = *(a1 + 40);
  do
  {
    v20 = 0;
    v21 = 0;
    v6 = sub_100774B5C(v4);
    sub_10004F9C8(v6, &v21, &v20);
    [*(v5 + 136) doubleForKey:v21 atKeyPath:a2 defaultValue:-1.0];
    v8 = v7;
    result = [*(v5 + 136) doubleForKey:v20 atKeyPath:a2 defaultValue:-1.0];
    if (v8 != -1.0)
    {
      v11 = v10;
      if (v10 == -1.0 || v10 < v8)
      {
        if (v4)
        {
          [objc_msgSend(objc_msgSend(*(v5 + 32) "vendor")];
        }

        else
        {
          result = [*(a1 + 32) syncgetHasMonitoredRegions:{objc_msgSend(a2, "legacyClientKey")}];
          if (result)
          {
            goto LABEL_17;
          }
        }

        Current = CFAbsoluteTimeGetCurrent();
        if (qword_1025D47A0 != -1)
        {
          sub_10192D4D0();
        }

        v14 = off_1025D47A8;
        if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
        {
          v15 = off_10246FCA0[sub_100774B5C(v4)];
          *buf = 136447234;
          v33 = v15;
          v34 = 2050;
          v35 = v8;
          v36 = 2050;
          v37 = v11;
          v38 = 2114;
          v39 = a2;
          v40 = 2050;
          v41 = Current;
          _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_DEFAULT, "#warning %{public}s region time started exists (%{public}.2f), but time stopped (%{public}.2f) doesn't exist or is earlier for %{public}@ - setting to %{public}.2f", buf, 0x34u);
        }

        if (sub_10000A100(121, 2))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1025D47A0 != -1)
          {
            sub_10192D4D0();
          }

          v18 = off_10246FCA0[sub_100774B5C(v4)];
          v22 = 136447234;
          v23 = v18;
          v24 = 2050;
          v25 = v8;
          v26 = 2050;
          v27 = v11;
          v28 = 2114;
          v29 = a2;
          v30 = 2050;
          v31 = Current;
          v19 = _os_log_send_and_compose_impl();
          sub_100152C7C("Generic", 1, 0, 2, "void CLClientManager::checkRegionsStopped()_block_invoke", "%s\n", v19);
          if (v19 != buf)
          {
            free(v19);
          }
        }

        v16 = sub_100774B5C(v4);
        v17 = CFAbsoluteTimeGetCurrent();
        result = sub_10002FE04(v5, a2, v16, 0, 0, 0, v17);
      }
    }

LABEL_17:
    ++v4;
  }

  while (v4 != 4);
  return result;
}

uint64_t sub_100774B5C(unsigned int a1)
{
  if (a1 >= 4)
  {
    if (qword_1025D47A0 != -1)
    {
      sub_10028840C();
    }

    v2 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v6 = 0;
      v7 = 2082;
      v8 = "";
      v9 = 2082;
      v10 = "assert";
      v11 = 2081;
      v12 = "kCLClientServiceMax != service";
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D47A0 != -1)
      {
        sub_10192D4D0();
      }
    }

    v3 = off_1025D47A8;
    if (os_signpost_enabled(off_1025D47A8))
    {
      *buf = 68289539;
      v6 = 0;
      v7 = 2082;
      v8 = "";
      v9 = 2082;
      v10 = "assert";
      v11 = 2081;
      v12 = "kCLClientServiceMax != service";
      _os_signpost_emit_with_name_impl(dword_100000000, v3, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Assertion failed", "{msg%{public}.0s:Assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D47A0 != -1)
      {
        sub_10192D4D0();
      }
    }

    v4 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v6 = 0;
      v7 = 2082;
      v8 = "";
      v9 = 2082;
      v10 = "assert";
      v11 = 2081;
      v12 = "kCLClientServiceMax != service";
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np();
  }

  return qword_101C8D908[a1];
}

void sub_100774D9C(uint64_t a1)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v7 = 0;
  v2 = *(a1 + 136);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100774E6C;
  v3[3] = &unk_10246FD90;
  v3[4] = &v4;
  v3[5] = a1;
  [v2 iterateAllAnchorKeyPathsWithBlock:v3];
  if (v5[6] >= 1)
  {
    sub_1001D2F14(a1);
  }

  _Block_object_dispose(&v4, 8);
}

void sub_100774E54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_100774E6C(uint64_t a1, void *a2)
{
  v4 = *(a1 + 40);
  result = [*(v4 + 136) hasValueForKey:@"RangeTimeStarted" atKeyPath:a2];
  if (result)
  {
    if (qword_1025D47A0 != -1)
    {
      sub_10028840C();
    }

    v6 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
    {
      v7[0] = 68289282;
      v7[1] = 0;
      v8 = 2082;
      v9 = "";
      v10 = 2114;
      v11 = [a2 legacyClientKey];
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:stop range for client, client:%{public, location:escape_only}@}", v7, 0x1Cu);
    }

    [*(v4 + 136) removeValueForKey:@"RangeTimeStarted" atKeyPath:a2];
    result = [*(v4 + 136) setDouble:@"RangeTimeStopped" forKey:a2 atKeyPath:CFAbsoluteTimeGetCurrent()];
    ++*(*(*(a1 + 32) + 8) + 24);
  }

  return result;
}

uint64_t sub_100774FC8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  sub_1007744DC(v3, a2, 0xBuLL);

  return sub_1007744DC(v3, a2, 3uLL);
}

void sub_100775014(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  v9 = sub_100033370(a1, a2);
  v10 = sub_10004FEC8(a1, v9, &xmmword_101CE6CD8);
  if ([(CLClientManagerAuthorizationContext *)v10 isAuthorizedForServiceTypeMask:4112])
  {
    if ([*(a1 + 120) locationRestricted])
    {
      if (qword_1025D47A0 != -1)
      {
        sub_10028840C();
      }

      v11 = off_1025D47A8;
      if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_INFO))
      {
        *buf = 68289282;
        v27 = 0;
        v28 = 2082;
        v29 = "";
        v30 = 2114;
        v31 = v9;
        _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_INFO, "{msg%{public}.0s:#transcriptSession skip prompting. Restrictions enabled, Client:%{public, location:escape_only}@}", buf, 0x1Cu);
      }

      v36 = NSDebugDescriptionErrorKey;
      v37 = @"Restrictions are enabled.  Changing authorization isn't allowed";
      (*(a5 + 16))(a5, 0, [NSError errorWithDomain:kCLErrorDomain code:18 userInfo:[NSDictionary dictionaryWithObjects:&v37 forKeys:&v36 count:1]]);
    }

    else if (*(a1 + 272))
    {
      if (qword_1025D47A0 != -1)
      {
        sub_10028840C();
      }

      v13 = off_1025D47A8;
      if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
      {
        v14 = *(a1 + 272);
        v15 = *(v14 + 1);
        v16 = *v14;
        *buf = 68289794;
        v27 = 0;
        v28 = 2082;
        v29 = "";
        v30 = 2114;
        v31 = v9;
        v32 = 2114;
        v33 = v15;
        v34 = 2050;
        v35 = v16;
        _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#transcriptSession skip prompting. InflightPromptAuthorizationRequest found., Client:%{public, location:escape_only}@, inflightClient:%{public, location:escape_only}@, inflightRequestType:%{public, location:CLClientManager_Type::AuthorizationRequestType}lld}", buf, 0x30u);
      }

      v24 = NSDebugDescriptionErrorKey;
      v25 = @"App is already presenting the user with an authorization prompt";
      (*(a5 + 16))(a5, 0, [NSError errorWithDomain:kCLErrorDomain code:18 userInfo:[NSDictionary dictionaryWithObjects:&v25 forKeys:&v24 count:1]]);
    }

    else
    {
      v23[0] = _NSConcreteStackBlock;
      v23[1] = 3221225472;
      v23[2] = sub_1007755BC;
      v23[3] = &unk_10246FDB8;
      v23[4] = a5;
      sub_10000EC00(__p, "");
      sub_10023C2AC(v22, a4, v9, v23, __p);
      v17 = sub_1007755CC(a1, v9, 0, v22, a3);
      sub_10023DF30(v22);
      if (v21 < 0)
      {
        operator delete(__p[0]);
        if (v17)
        {
          return;
        }
      }

      else if (v17)
      {
        return;
      }

      if (qword_1025D47A0 != -1)
      {
        sub_10192D4D0();
      }

      v18 = off_1025D47A8;
      if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_ERROR))
      {
        *buf = 68289282;
        v27 = 0;
        v28 = 2082;
        v29 = "";
        v30 = 2114;
        v31 = v9;
        _os_log_impl(dword_100000000, v18, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:#Warning Could not post #transcriptSession, Client:%{public, location:escape_only}@}", buf, 0x1Cu);
        if (qword_1025D47A0 != -1)
        {
          sub_10192D4D0();
        }
      }

      v19 = off_1025D47A8;
      if (os_signpost_enabled(off_1025D47A8))
      {
        *buf = 68289282;
        v27 = 0;
        v28 = 2082;
        v29 = "";
        v30 = 2114;
        v31 = v9;
        _os_signpost_emit_with_name_impl(dword_100000000, v19, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "#Warning Could not post #transcriptSession", "{msg%{public}.0s:#Warning Could not post #transcriptSession, Client:%{public, location:escape_only}@}", buf, 0x1Cu);
      }
    }
  }

  else
  {
    if (qword_1025D47A0 != -1)
    {
      sub_10028840C();
    }

    v12 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289538;
      v27 = 0;
      v28 = 2082;
      v29 = "";
      v30 = 2114;
      v31 = v9;
      v32 = 1026;
      LODWORD(v33) = [(CLClientManagerAuthorizationContext *)v10 registrationResult];
      _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#transcriptSession #Warning skip prompting .No point in prompting if the user doesn't want them to get access to precise current location , Client:%{public, location:escape_only}@, RegistrationResult:%{public}d}", buf, 0x22u);
    }

    v38 = NSDebugDescriptionErrorKey;
    v39 = @"Registration Result should be WIU or Always to enable Transcript Session";
    (*(a5 + 16))(a5, 0, [NSError errorWithDomain:kCLErrorDomain code:18 userInfo:[NSDictionary dictionaryWithObjects:&v39 forKeys:&v38 count:1]]);
  }
}

void sub_100775588(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  sub_10023DF30(&a16);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1007755CC(uint64_t a1, uint64_t a2, void *a3, unsigned int *a4, uint64_t a5)
{
  if (!sub_10001CF3C())
  {
    v12 = sub_1000184F4(a1, a2);
    v13 = sub_100033370(a1, v12);
    sub_1000F7D18(a1, v13, 1);
    if (&SBUserNotificationPendInSetupIfNotAllowedKey)
    {
      v14 = &SBUserNotificationHideOnClonedDisplay == 0;
    }

    else
    {
      v14 = 1;
    }

    if (v14 || &SBUserNotificationDismissOnLock == 0 || &SBUserNotificationDefaultButtonTag == 0 || &SBUserNotificationExtensionIdentifierKey == 0 || &SBUserNotificationExtensionItemsKey == 0)
    {
      return 0;
    }

    v19 = *a4;
    v20 = sub_100783B48(a1, v12, a3);
    if (v20)
    {
      v21 = v20;
      v140 = v19;
      if (qword_1025D47A0 != -1)
      {
        sub_10028840C();
      }

      v22 = off_1025D47A8;
      if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 68289538;
        *&buf[4] = 0;
        *&buf[8] = 2082;
        *&buf[10] = "";
        *&buf[18] = 2114;
        *&buf[20] = v12;
        v146 = 1026;
        LODWORD(v147) = v19;
        _os_log_impl(dword_100000000, v22, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#CUN Creating client user notification for client, Client:%{public, location:escape_only}@, requestType:%{public}d}", buf, 0x22u);
      }

      v139 = [NSMutableDictionary dictionaryWithDictionary:a5];
      if (*(a4 + 39) < 0)
      {
        sub_100007244(buf, *(a4 + 2), *(a4 + 3));
      }

      else
      {
        *buf = *(a4 + 1);
        *&buf[16] = *(a4 + 4);
      }

      if (buf[23] >= 0)
      {
        v27 = buf;
      }

      else
      {
        v27 = *buf;
      }

      v135 = [NSString stringWithUTF8String:v27];
      if ((buf[23] & 0x80000000) != 0)
      {
        operator delete(*buf);
      }

      errorPtr = 0;
      sub_10001A3E8();
      if (sub_10001CF04())
      {
        v28 = sub_100055734([v12 bundleId]);
        v29 = CFBundleCreate(kCFAllocatorDefault, v28);
        if (v29)
        {
          v30 = sub_100056238();
          v31 = sub_100055A24(v30, v29, @"NSLocationUsageDescriptionCarplay", 0);
          CFRelease(v29);
          if (v31)
          {
            CFRelease(v31);
          }
        }
      }

      v32 = _os_feature_enabled_impl();
      if (v32)
      {
        v33 = [*(a1 + 136) BOOLForKey:@"AuthorizationPromptOptionTypeNegative" atKeyPath:v12 defaultValue:0];
      }

      else
      {
        v33 = 0;
      }

      v34 = 0;
      v35 = 0;
      switch(v19)
      {
        case 0:
        case 10:
        case 15:
        case 17:
          goto LABEL_53;
        case 1:
        case 3:
          v131 = [NSString stringWithUTF8String:"com.apple.corelocation.CoreLocationTemporaryPreciseAuthPromptPlugin"];
          v47 = sub_100056238();
          format = sub_1007CB2E4(v47, @"LOCATION_CLIENT_PERMISSION_PLAIN_WHEN_IN_USE_TITLE");
          alloc = kCFAllocatorDefault;
          value = CFStringCreateStringWithValidatedFormat(kCFAllocatorDefault, 0, @"%@", format, &errorPtr, v21);
          v48 = sub_100056238();
          v49 = @"LOCATION_CLIENT_PERMISSION_WHENINUSE_BUTTON";
          if (v32)
          {
            v50 = @"LOCATION_CLIENT_PERMISSION_WHENINUSE_BUTTON";
          }

          else
          {
            v50 = @"LOCATION_CLIENT_PERMISSION_ONETIME_BUTTON";
          }

          if (v32)
          {
            v49 = @"LOCATION_CLIENT_PERMISSION_ONETIME_BUTTON";
            v51 = @"LOCATION_CLIENT_PERMISSION_NOT_THIS_TIME_BUTTON";
          }

          else
          {
            v51 = @"LOCATION_CLIENT_PERMISSION_NEVER_BUTTON";
          }

          if (v33)
          {
            v52 = @"LOCATION_CLIENT_PERMISSION_ONETIME_BUTTON";
          }

          else
          {
            v52 = v50;
          }

          if (v33)
          {
            v53 = @"LOCATION_CLIENT_PERMISSION_NOT_THIS_TIME_BUTTON";
          }

          else
          {
            v53 = v49;
          }

          if (v33)
          {
            v54 = @"LOCATION_CLIENT_PERMISSION_NEVER_BUTTON";
          }

          else
          {
            v54 = v51;
          }

          v35 = sub_1007CB2E4(v48, v52);
          v55 = sub_100056238();
          cf = sub_1007CB2E4(v55, v53);
          v56 = sub_100056238();
          v57 = sub_1007CB2E4(v56, v54);
          v58 = sub_1007841C0(a1, v12);
          if (v58)
          {
            v134 = sub_100784288(a1, v12, v58, 1, 0, v135);
            CFRelease(v58);
            v34 = 0;
            goto LABEL_131;
          }

          if (qword_1025D4790 != -1)
          {
            sub_10192DAA4();
          }

          v97 = qword_1025D4798;
          if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_FAULT))
          {
            *buf = 68289282;
            *&buf[4] = 0;
            *&buf[8] = 2082;
            *&buf[10] = "";
            *&buf[18] = 2114;
            *&buf[20] = v12;
            _os_log_impl(dword_100000000, v97, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:#AuthPrompt couldn't get bundle for client, ClientKeyPath:%{public, location:escape_only}@}", buf, 0x1Cu);
            if (qword_1025D4790 != -1)
            {
              sub_10192DAA4();
            }
          }

          v24 = qword_1025D4798;
          result = os_signpost_enabled(qword_1025D4798);
          if (result)
          {
            goto LABEL_238;
          }

          return result;
        case 2:
        case 4:
        case 5:
          v36 = sub_100056238();
          v37 = @"LOCATION_CLIENT_PERMISSION_WHENINUSE_BUTTON";
          if (!v32)
          {
            v37 = @"LOCATION_CLIENT_PERMISSION_ONETIME_BUTTON";
          }

          if (v33)
          {
            v38 = @"LOCATION_CLIENT_PERMISSION_ONETIME_BUTTON";
          }

          else
          {
            v38 = v37;
          }

          v35 = sub_1007CB2E4(v36, v38);
          v39 = sub_100056238();
          [(NSMutableDictionary *)v139 setObject:sub_1007CB2E4(v39 forKeyedSubscript:@"PRECISE_ON_PILL_BUTTON_TITLE"), @"PreciseButtonOnTitle"];
          v40 = sub_100056238();
          [(NSMutableDictionary *)v139 setObject:sub_1007CB2E4(v40 forKeyedSubscript:@"PRECISE_OFF_PILL_BUTTON_TITLE"), @"PreciseButtonOffTitle"];
          v41 = sub_100056238();
          [(NSMutableDictionary *)v139 setObject:sub_1007CB2E4(v41 forKeyedSubscript:@"ONLY_HERE_PILL_BUTTON_TITLE"), @"OnlyHereTitle"];
          v34 = 1;
          goto LABEL_60;
        case 6:
          v131 = [NSString stringWithUTF8String:"com.apple.corelocation.CoreLocationRepromptAlwaysAuthPromptPlugin"];
          v75 = [-[NSMutableDictionary objectForKey:](v139 objectForKey:{@"LocationCount", "unsignedLongValue"}];
          v76 = sub_100056238();
          if (v75)
          {
            format = sub_1007CB2E8(v76, @"LOCATION_CLIENT_PERMISSION_REPROMPT_OTHER");
            v77 = CFPreferencesCopyValue(@"AppleLanguages", @".GlobalPreferences", @"mobile", kCFPreferencesAnyHost);
            ValueAtIndex = CFArrayGetValueAtIndex(v77, 0);
            alloc = kCFAllocatorDefault;
            v79 = CFLocaleCreate(kCFAllocatorDefault, ValueAtIndex);
            value = CFStringCreateStringWithValidatedFormat(kCFAllocatorDefault, v79, @"%lu %@", format, &errorPtr, v75, v21);
          }

          else
          {
            format = sub_1007CB2E8(v76, @"LOCATION_REPROMPT_ALWAYS_TITLE");
            alloc = kCFAllocatorDefault;
            value = CFStringCreateStringWithValidatedFormat(kCFAllocatorDefault, 0, @"%@", format, &errorPtr, v21);
          }

          v101 = sub_100056238();
          v35 = sub_1007CB2E4(v101, @"LOCATION_CLIENT_PERMISSION_WHENINUSE_ONLY_BUTTON");
          v102 = sub_100056238();
          cf = sub_1007CB2E4(v102, @"LOCATION_CLIENT_PERMISSION_KEEP_ALWAYS_BUTTON");
          v134 = sub_100783DEC(a1, v12);
          goto LABEL_148;
        case 7:
        case 8:
          v59 = sub_100056238();
          format = sub_1007CB2E4(v59, @"LOCATION_CLIENT_PERMISSION_UPGRADE_WHENINUSE_ALWAYS");
          alloc = kCFAllocatorDefault;
          value = CFStringCreateStringWithValidatedFormat(kCFAllocatorDefault, 0, @"%@", format, &errorPtr, v21);
          v60 = sub_100056238();
          v35 = sub_1007CB2E4(v60, @"LOCATION_CLIENT_PERMISSION_KEEP_WHENINUSE_BUTTON");
          v61 = sub_100056238();
          cf = sub_1007CB2E4(v61, @"LOCATION_CLIENT_PERMISSION_ALWAYS_BUTTON");
          v134 = sub_100783DEC(a1, v12);
          goto LABEL_111;
        case 9:
          v131 = [NSString stringWithUTF8String:"com.apple.corelocation.CoreLocationTemporaryPreciseAuthPromptPlugin"];
          v67 = sub_100056238();
          format = sub_1007CB2E4(v67, @"LOCATION_CLIENT_PERMISSION_TEMPORARY_PRECISE_TITLE");
          alloc = kCFAllocatorDefault;
          value = CFStringCreateStringWithValidatedFormat(kCFAllocatorDefault, 0, @"%@", format, &errorPtr, v21);
          v68 = sub_100056238();
          v35 = sub_1007CB2E4(v68, @"LOCATION_CLIENT_PERMISSION_TEMPORARY_PRECISE_NO_BUTTON");
          v69 = sub_100056238();
          cf = sub_1007CB2E4(v69, @"LOCATION_CLIENT_PERMISSION_TEMPORARY_PRECISE_YES_BUTTON");
          v134 = [-[NSMutableDictionary objectForKey:](v139 objectForKey:{@"UsageDescription", "copy"}];
          if (v134 || !v135)
          {
            goto LABEL_100;
          }

          v70 = sub_1007841C0(a1, v12);
          v71 = v70;
          if (v70)
          {
            CFAutorelease(v70);
            v72 = [(__CFDictionary *)CFBundleGetInfoDictionary(v71) objectForKeyedSubscript:@"NSLocationTemporaryUsageDescriptionDictionary"];
            if (!v72)
            {
              sub_10023D820(a4, [NSString stringWithFormat:@"Info.plist is missing the %@ key", @"NSLocationTemporaryUsageDescriptionDictionary"]);
              return 0;
            }

            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              sub_10023D820(a4, [NSString stringWithFormat:@"Info.plist value for %@ key is not a dictionary", @"NSLocationTemporaryUsageDescriptionDictionary"]);
              return 0;
            }

            v73 = [v72 objectForKeyedSubscript:v135];
            if (!v73)
            {
              sub_10023D820(a4, @"The purposeKey provided isn't present in the app's Info.plist dictionary of temporary usage descriptions");
              return 0;
            }

            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              sub_10023D820(a4, @"The purposeKey provided names an entry in Info.plist which isn't a string");
              return 0;
            }

            v74 = sub_100056238();
            v134 = sub_100055A24(v74, v71, v135, 1);
            if (!v134)
            {
              v134 = [v73 copy];
            }

LABEL_100:
            [(NSMutableDictionary *)v139 setObject:@"UserLocationIsPrecise" forKeyedSubscript:@"UserLocationIsPrecise"];
            goto LABEL_148;
          }

          if (qword_1025D4790 != -1)
          {
            sub_10192DAA4();
          }

          v129 = qword_1025D4798;
          if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_FAULT))
          {
            *buf = 68289282;
            *&buf[4] = 0;
            *&buf[8] = 2082;
            *&buf[10] = "";
            *&buf[18] = 2114;
            *&buf[20] = v12;
            _os_log_impl(dword_100000000, v129, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:#AuthPrompt couldn't get bundle for client, ClientKeyPath:%{public, location:escape_only}@}", buf, 0x1Cu);
            if (qword_1025D4790 != -1)
            {
              sub_10192DAA4();
            }
          }

          v24 = qword_1025D4798;
          result = os_signpost_enabled(qword_1025D4798);
          if (!result)
          {
            return result;
          }

          goto LABEL_238;
        case 11:
LABEL_60:
          v131 = [NSString stringWithUTF8String:"com.apple.corelocation.CoreLocationVanillaWhenInUseAuthPromptPlugin"];
          v42 = sub_100056238();
          format = sub_1007CB2E4(v42, @"LOCATION_CLIENT_PERMISSION_WHENINUSE");
          alloc = kCFAllocatorDefault;
          value = CFStringCreateStringWithValidatedFormat(kCFAllocatorDefault, 0, @"%@", format, &errorPtr, v21);
          if ([*(a1 + 136) BOOLForKey:@"IsAppClip" atKeyPath:v12 defaultValue:0])
          {
            if (qword_1025D47A0 != -1)
            {
              sub_10192D4D0();
            }

            v43 = off_1025D47A8;
            if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_INFO))
            {
              *buf = 68289282;
              *&buf[4] = 0;
              *&buf[8] = 2082;
              *&buf[10] = "";
              *&buf[18] = 2114;
              *&buf[20] = v12;
              _os_log_impl(dword_100000000, v43, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Client is #appclip, Client:%{public, location:escape_only}@}", buf, 0x1Cu);
            }

            v44 = sub_100056238();
            cf = sub_1007CB2E4(v44, @"LOCATION_CLIENT_PERMISSION_WHENINUSE_UNTIL_TOMORROW_BUTTON");
            v45 = v33 | v32;
            if (v33)
            {
              v46 = @"LOCATION_CLIENT_PERMISSION_NEVER_BUTTON";
            }

            else
            {
              v46 = @"LOCATION_CLIENT_PERMISSION_NOT_THIS_TIME_BUTTON";
            }

            if (v45)
            {
LABEL_129:
              v98 = sub_100056238();
              v57 = sub_1007CB2E4(v98, v46);
              v99 = sub_1007841C0(a1, v12);
              if (v99)
              {
                v134 = sub_100784288(a1, v12, v99, 1, 0, v135);
                CFRelease(v99);
LABEL_131:
                *(a4 + 4) = v33;
LABEL_149:
                v86 = value;
                if (errorPtr)
                {
                  if (qword_1025D47A0 != -1)
                  {
                    sub_10192D4D0();
                  }

                  v112 = off_1025D47A8;
                  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_FAULT))
                  {
                    v113 = [-[__CFError localizedDescription](errorPtr "localizedDescription")];
                    *buf = 68289538;
                    *&buf[4] = 0;
                    *&buf[8] = 2082;
                    *&buf[10] = "";
                    *&buf[18] = 2114;
                    *&buf[20] = v12;
                    v146 = 2082;
                    v147 = v113;
                    _os_log_impl(dword_100000000, v112, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:#Error, couldn't create prompt for client due to error returned by CFStringCreateStringWithValidatedFormat., Client:%{public, location:escape_only}@, error:%{public, location:escape_only}s}", buf, 0x26u);
                    if (qword_1025D47A0 != -1)
                    {
                      sub_10192D4D0();
                    }
                  }

                  v114 = off_1025D47A8;
                  if (os_signpost_enabled(off_1025D47A8))
                  {
                    v115 = [-[__CFError localizedDescription](errorPtr "localizedDescription")];
                    *buf = 68289538;
                    *&buf[4] = 0;
                    *&buf[8] = 2082;
                    *&buf[10] = "";
                    *&buf[18] = 2114;
                    *&buf[20] = v12;
                    v146 = 2082;
                    v147 = v115;
                    _os_signpost_emit_with_name_impl(dword_100000000, v114, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "#Error, couldn't create prompt for client due to error returned by CFStringCreateStringWithValidatedFormat.", "{msg%{public}.0s:#Error, couldn't create prompt for client due to error returned by CFStringCreateStringWithValidatedFormat., Client:%{public, location:escape_only}@, error:%{public, location:escape_only}s}", buf, 0x26u);
                  }

                  return 0;
                }

                v85 = 32;
                if (v134)
                {
                  v136 = 32;
                  v130 = 0;
                }

                else
                {
LABEL_162:
                  value = v86;
                  v136 = v85;
                  if (qword_1025D47A0 != -1)
                  {
                    sub_10192D4D0();
                  }

                  v116 = off_1025D47A8;
                  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 68289538;
                    *&buf[4] = 0;
                    *&buf[8] = 2082;
                    *&buf[10] = "";
                    *&buf[18] = 2114;
                    *&buf[20] = v12;
                    v146 = 1026;
                    LODWORD(v147) = v140;
                    _os_log_impl(dword_100000000, v116, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#Warning, unable to copy purpose string from client, Client:%{public, location:escape_only}@, requestType:%{public}d}", buf, 0x22u);
                  }

                  if ([-[NSMutableDictionary objectForKeyedSubscript:](v139 objectForKeyedSubscript:{@"isAutoPrompting", "BOOLValue"}])
                  {
                    if (qword_1025D47A0 != -1)
                    {
                      sub_10192D4D0();
                    }

                    v117 = off_1025D47A8;
                    result = os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT);
                    if (result)
                    {
                      *buf = 68289538;
                      *&buf[4] = 0;
                      *&buf[8] = 2082;
                      *&buf[10] = "";
                      *&buf[18] = 2114;
                      *&buf[20] = v12;
                      v146 = 1026;
                      LODWORD(v147) = v140;
                      _os_log_impl(dword_100000000, v117, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#Warning #autoPrompt fail to createAndPostClientUserNotification - purpose(UsageDescription) is NULL, Client:%{public, location:escape_only}@, requestType:%{public}d}", buf, 0x22u);
                      return 0;
                    }

                    return result;
                  }

                  v134 = 0;
                  alloc = kCFAllocatorDefault;
                  v130 = 1;
                }

                Mutable = CFDictionaryCreateMutable(alloc, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
                CFDictionarySetValue(Mutable, SBUserNotificationPendInSetupIfNotAllowedKey, kCFBooleanTrue);
                if ((*(a1 + 232) & 1) == 0)
                {
                  CFDictionarySetValue(Mutable, SBUserNotificationHideOnClonedDisplay, kCFBooleanTrue);
                }

                if (value)
                {
                  CFDictionarySetValue(Mutable, kCFUserNotificationAlertHeaderKey, value);
                  CFRelease(value);
                }

                if (format)
                {
                  CFRelease(format);
                }

                if (v35)
                {
                  CFDictionarySetValue(Mutable, kCFUserNotificationAlternateButtonTitleKey, v35);
                  CFRelease(v35);
                }

                if (cf)
                {
                  CFDictionarySetValue(Mutable, kCFUserNotificationOtherButtonTitleKey, cf);
                  CFRelease(cf);
                }

                if (v57)
                {
                  CFDictionarySetValue(Mutable, kCFUserNotificationDefaultButtonTitleKey, v57);
                  CFRelease(v57);
                }

                if (v140 <= 0x13)
                {
                  if (((1 << v140) & 0xFEEBF) == 0)
                  {
                    if (((1 << v140) & 0x1100) == 0)
                    {
                      CFDictionarySetValue(Mutable, SBUserNotificationDismissOnLock, kCFBooleanTrue);
                    }

                    CFDictionarySetValue(Mutable, SBUserNotificationAllowedApplicationsKey, &off_1025543C0);
                    goto LABEL_204;
                  }

                  sub_10001A3E8();
                  if (!sub_10003FFF8() || ([objc_msgSend(v12 "clientAnchor")] & 1) == 0)
                  {
                    if (a3)
                    {
                      if (sub_10076CC80(v12))
                      {
                        CFDictionarySetValue(Mutable, kCFUserNotificationAlertTopMostKey, &__kCFBooleanTrue);
                        CFDictionarySetValue(Mutable, SBUserNotificationForcesModalAlertAppearance, &__kCFBooleanTrue);
                        CFDictionarySetValue(Mutable, SBUserNotificationDisplayActionButtonOnLockScreen, &__kCFBooleanTrue);
                      }
                    }

                    else if ([v12 bundleId] && (objc_msgSend(-[NSMutableDictionary objectForKeyedSubscript:](v139, "objectForKeyedSubscript:", @"IsWebClip"), "BOOLValue") & 1) == 0)
                    {
                      v144 = [v12 bundleId];
                      v119 = [NSArray arrayWithObjects:&v144 count:1];
                      CFDictionarySetValue(Mutable, SBUserNotificationAllowedApplicationsKey, v119);
                    }
                  }
                }

                if ((v140 - 13) <= 1)
                {
                  CFDictionarySetValue(Mutable, SBUserNotificationAllowInSetupKey, &__kCFBooleanTrue);
                  if (qword_1025D47A0 != -1)
                  {
                    sub_10192D4D0();
                  }

                  v120 = off_1025D47A8;
                  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_INFO))
                  {
                    *buf = 0;
                    _os_log_impl(dword_100000000, v120, OS_LOG_TYPE_INFO, "#CUN LocationButton prompt allowed during buddy-setup", buf, 2u);
                  }

                  if (sub_10000A100(121, 2))
                  {
                    sub_10192E520();
                  }
                }

LABEL_204:
                CFDictionarySetValue(Mutable, SBUserNotificationDefaultButtonTag, [NSNumber numberWithInt:v136]);
                CFDictionarySetValue(Mutable, SBUserNotificationButtonLayoutDirectionKey, [NSNumber numberWithInt:1]);
                if ((v34 & _os_feature_enabled_impl()) == 1)
                {
                  [(NSMutableDictionary *)v139 setObject:&__kCFBooleanTrue forKeyedSubscript:@"CLAuthPromptShowOnlyHerePill"];
                }

                if (v131 && sub_1004E87D0())
                {
                  v121 = +[NSExtensionItem extensionItemForDict:withName:withPayload:](NSExtensionItem, "extensionItemForDict:withName:withPayload:", [objc_msgSend(*(a1 + 136) readonlyStoreAtKeyPath:{v12), "dictionary"}], v21, v139);
                  v141 = 0;
                  v143 = v121;
                  v122 = [NSKeyedArchiver archivedDataWithRootObject:[NSArray arrayWithObjects:&v143 count:1] requiringSecureCoding:1 error:&v141];
                  if (v141)
                  {
                    if (qword_1025D47A0 != -1)
                    {
                      sub_10192D4D0();
                    }

                    v123 = off_1025D47A8;
                    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_INFO))
                    {
                      *buf = 68289283;
                      *&buf[4] = 0;
                      *&buf[8] = 2082;
                      *&buf[10] = "";
                      *&buf[18] = 2113;
                      *&buf[20] = v141;
                      _os_log_impl(dword_100000000, v123, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Failed archiving extension item, error:%{private, location:escape_only}@}", buf, 0x1Cu);
                    }
                  }

                  else
                  {
                    v124 = v122;
                    CFDictionarySetValue(Mutable, SBUserNotificationExtensionIdentifierKey, v131);
                    CFDictionarySetValue(Mutable, SBUserNotificationExtensionItemsKey, v124);
                  }
                }

                if ((v130 & 1) == 0)
                {
                  CFDictionarySetValue(Mutable, kCFUserNotificationAlertMessageKey, v134);
                  CFRelease(v134);
                }

                CFRelease(v21);
                sub_10001A3E8();
                if ((sub_10001CF04() & 1) != 0 || (sub_10001A3E8(), sub_10003FFF8()))
                {
                  if (_os_feature_enabled_impl() && _os_feature_enabled_impl())
                  {
                    v125 = TCCCopyIconResourcePathForService();
                    if (v125)
                    {
                      CFDictionarySetValue(Mutable, SBUserNotificationHeaderImagePath, v125);
                      if (qword_1025D47A0 != -1)
                      {
                        sub_10192D4D0();
                      }

                      v126 = off_1025D47A8;
                      if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
                      {
                        *buf = 68289538;
                        *&buf[4] = 0;
                        *&buf[8] = 2082;
                        *&buf[10] = "";
                        *&buf[18] = 2050;
                        *&buf[20] = v140;
                        v146 = 2114;
                        v147 = v125;
                        _os_log_impl(dword_100000000, v126, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#AuthPrompt Will use the icon in the prompt, promptType:%{public, location:CLClientManager_Type::AuthorizationRequestType}lld, iconPath:%{public, location:escape_only}@}", buf, 0x26u);
                      }

                      CFRelease(v125);
                    }

                    else
                    {
                      if (qword_1025D47A0 != -1)
                      {
                        sub_10192D4D0();
                      }

                      v127 = off_1025D47A8;
                      if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
                      {
                        *buf = 68289282;
                        *&buf[4] = 0;
                        *&buf[8] = 2082;
                        *&buf[10] = "";
                        *&buf[18] = 2050;
                        *&buf[20] = v140;
                        _os_log_impl(dword_100000000, v127, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#AuthPrompt Unable to get the icon for prompt, promptType:%{public, location:CLClientManager_Type::AuthorizationRequestType}lld}", buf, 0x1Cu);
                      }
                    }
                  }
                }

                [*(a1 + 40) currentLatchedAbsoluteTimestamp];
                result = sub_10078364C(v12, a4, Mutable, v128);
                if (result)
                {
                  sub_100783A10();
                }

                return result;
              }

              if (qword_1025D4790 != -1)
              {
                sub_10192DAA4();
              }

              v100 = qword_1025D4798;
              if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_FAULT))
              {
                *buf = 68289282;
                *&buf[4] = 0;
                *&buf[8] = 2082;
                *&buf[10] = "";
                *&buf[18] = 2114;
                *&buf[20] = v12;
                _os_log_impl(dword_100000000, v100, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:#AuthPrompt couldn't get bundle for client, ClientKeyPath:%{public, location:escape_only}@}", buf, 0x1Cu);
                if (qword_1025D4790 != -1)
                {
                  sub_10192DAA4();
                }
              }

              v24 = qword_1025D4798;
              result = os_signpost_enabled(qword_1025D4798);
              if (!result)
              {
                return result;
              }

LABEL_238:
              *buf = 68289282;
              *&buf[4] = 0;
              *&buf[8] = 2082;
              *&buf[10] = "";
              *&buf[18] = 2114;
              *&buf[20] = v12;
              v25 = "#AuthPrompt couldn't get bundle for client";
              v26 = "{msg%{public}.0s:#AuthPrompt couldn't get bundle for client, ClientKeyPath:%{public, location:escape_only}@}";
LABEL_38:
              _os_signpost_emit_with_name_impl(dword_100000000, v24, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, v25, v26, buf, 0x1Cu);
              return 0;
            }
          }

          else
          {
            v62 = sub_100056238();
            if (v33)
            {
              cf = sub_1007CB2E4(v62, @"LOCATION_CLIENT_PERMISSION_NOT_THIS_TIME_BUTTON");
            }

            else
            {
              if (v32)
              {
                cf = sub_1007CB2E4(v62, @"LOCATION_CLIENT_PERMISSION_ONETIME_BUTTON");
                v46 = @"LOCATION_CLIENT_PERMISSION_NOT_THIS_TIME_BUTTON";
                goto LABEL_129;
              }

              cf = sub_1007CB2E4(v62, @"LOCATION_CLIENT_PERMISSION_WHENINUSE_BUTTON");
            }
          }

          v46 = @"LOCATION_CLIENT_PERMISSION_NEVER_BUTTON";
          goto LABEL_129;
        case 12:
          v87 = sub_100056238();
          format = sub_1007CB2E4(v87, @"LOCATION_CLIENT_PERMISSION_INCIDENTAL_USE_MODE_TITLE");
          alloc = kCFAllocatorDefault;
          value = CFStringCreateStringWithValidatedFormat(kCFAllocatorDefault, 0, @"%@", format, &errorPtr, v21);
          v88 = sub_100056238();
          v35 = sub_1007CB2E4(v88, @"LOCATION_CLIENT_PERMISSION_INCIDENTAL_USE_MODE_NO_BUTTON");
          v89 = sub_100056238();
          cf = sub_1007CB2E4(v89, @"LOCATION_CLIENT_PERMISSION_INCIDENTAL_USE_MODE_YES_BUTTON");
          v90 = sub_100056238();
          v134 = sub_1007CB2E4(v90, @"LOCATION_CLIENT_PERMISSION_INCIDENTAL_USE_MODE_PURPOSE");
LABEL_111:
          v34 = 0;
          v57 = 0;
          v131 = 0;
          goto LABEL_149;
        case 13:
          v63 = sub_100056238();
          format = sub_1007CB2E4(v63, @"LOCATION_CLIENT_PERMISSION_PLAIN_TITLE_FOR_LOCATION_BUTTONS");
          v64 = sub_100056238();
          v134 = sub_1007CB2E4(v64, @"LOCATION_CLIENT_PERMISSION_EXPLANATION_FOR_LOCATION_BUTTONS");
          v65 = sub_100056238();
          v35 = sub_1007CB2E4(v65, @"LOCATION_CLIENT_PERMISSION_DENY_LOCATION_BUTTONS");
          v66 = sub_100056238();
          cf = sub_1007CB2E4(v66, @"LOCATION_CLIENT_PERMISSION_ALLOW_LOCATION_BUTTONS");
          v131 = [NSString stringWithUTF8String:"com.apple.corelocation.CoreLocationTemporaryPreciseAuthPromptPlugin"];
          alloc = kCFAllocatorDefault;
          value = CFStringCreateStringWithValidatedFormat(kCFAllocatorDefault, 0, @"%@", format, &errorPtr, v21);
          goto LABEL_148;
        case 14:
          v91 = sub_100056238();
          format = sub_1007CB2E4(v91, @"LOCATION_CLIENT_PERMISSION_TITLE_FOR_LOCATION_BUTTONS");
          v92 = sub_100056238();
          v134 = sub_1007CB2E4(v92, @"LOCATION_CLIENT_PERMISSION_EXPLANATION_FOR_LOCATION_BUTTONS");
          v93 = sub_100056238();
          v35 = sub_1007CB2E4(v93, @"LOCATION_CLIENT_PERMISSION_DENY_LOCATION_BUTTONS");
          v94 = sub_100056238();
          cf = sub_1007CB2E4(v94, @"LOCATION_CLIENT_PERMISSION_ALLOW_LOCATION_BUTTONS");
          v95 = sub_100056238();
          [(NSMutableDictionary *)v139 setObject:sub_1007CB2E4(v95 forKeyedSubscript:@"PRECISE_ON_PILL_BUTTON_TITLE"), @"PreciseButtonOnTitle"];
          v96 = sub_100056238();
          [(NSMutableDictionary *)v139 setObject:sub_1007CB2E4(v96 forKeyedSubscript:@"PRECISE_OFF_PILL_BUTTON_TITLE"), @"PreciseButtonOffTitle"];
          v131 = [NSString stringWithUTF8String:"com.apple.corelocation.CoreLocationVanillaWhenInUseAuthPromptPlugin"];
          alloc = kCFAllocatorDefault;
          value = CFStringCreateStringWithValidatedFormat(kCFAllocatorDefault, 0, @"%@", format, &errorPtr, v21);
          goto LABEL_148;
        case 16:
          v131 = [NSString stringWithUTF8String:"com.apple.corelocation.CoreLocationRepromptAlwaysAuthPromptPlugin"];
          v80 = sub_100056238();
          format = sub_1007CB2E8(v80, @"LOCATION_CLIENT_TRANSCRIPT_TITLE");
          alloc = kCFAllocatorDefault;
          value = CFStringCreateStringWithValidatedFormat(kCFAllocatorDefault, 0, @"%@", format, &errorPtr, v21);
          v134 = [-[NSMutableDictionary objectForKey:](v139 objectForKey:{@"UsageDescription", "copy"}];
          if (!v134)
          {
            v81 = sub_100056238();
            v82 = sub_1007CB2E8(v81, @"LOCATION_CLIENT_TRANSCRIPT_USAGE_DESCRIPTION");
            v134 = CFStringCreateStringWithValidatedFormat(kCFAllocatorDefault, 0, @"%@", v82, &errorPtr, v21);
            CFRelease(v82);
          }

          v83 = sub_100056238();
          v35 = sub_1007CB2E4(v83, @"LOCATION_CLIENT_TRANSCRIPT_YES_BUTTON");
          v84 = sub_100056238();
          cf = sub_1007CB2E4(v84, @"LOCATION_CLIENT_TRANSCRIPT_NO_BUTTON");
          goto LABEL_148;
        case 18:
          if (!_os_feature_enabled_impl())
          {
            goto LABEL_53;
          }

          if (sub_1004E87D0())
          {
            v131 = [NSString stringWithUTF8String:"com.apple.corelocation.CoreLocationLearnedRouteAuthPromptPlugin"];
          }

          else
          {
            v131 = 0;
          }

          v103 = sub_100056238();
          format = sub_1007CB2E4(v103, @"LOCATION_CLIENT_PERMISSION_TITLE_FOR_LEARNED_ROUTES_BUTTONS");
          alloc = kCFAllocatorDefault;
          value = CFStringCreateStringWithValidatedFormat(kCFAllocatorDefault, 0, @"%@", format, &errorPtr, v21);
          v104 = sub_100056238();
          v134 = sub_1007CB2E4(v104, @"LOCATION_CLIENT_PERMISSION_LEARNED_ROUTES_USAGE_DESCRIPTION");
          v105 = sub_100056238();
          v35 = sub_1007CB2E4(v105, @"LOCATION_CLIENT_PERMISSION_DENY_LEARNED_ROUTES_BUTTON");
          v106 = sub_100056238();
          cf = sub_1007CB2E4(v106, @"LOCATION_CLIENT_PERMISSION_ALLOW_LEARNED_ROUTES_BUTTON");
          goto LABEL_148;
        case 19:
          if (!_os_feature_enabled_impl())
          {
LABEL_53:
            CFRelease(v21);
            return 0;
          }

          if (sub_1004E87D0())
          {
            v131 = [NSString stringWithUTF8String:"com.apple.corelocation.CoreLocationVisitHistoryAuthPromptPlugin"];
          }

          else
          {
            v131 = 0;
          }

          v107 = sub_100056238();
          format = sub_1007CB2E4(v107, @"LOCATION_CLIENT_PERMISSION_TITLE_FOR_VISIT_HISTORY_BUTTONS");
          alloc = kCFAllocatorDefault;
          value = CFStringCreateStringWithValidatedFormat(kCFAllocatorDefault, 0, @"%@", format, &errorPtr, v21);
          v108 = sub_100056238();
          v109 = sub_1007CB2E4(v108, @"LOCATION_CLIENT_PERMISSION_VISIT_HISTORY_USAGE_DESCRIPTION");
          if (v109)
          {
            v134 = CFStringCreateStringWithValidatedFormat(kCFAllocatorDefault, 0, @"%@", v109, &errorPtr, v21);
            CFRelease(v109);
          }

          else
          {
            v134 = 0;
          }

          v110 = sub_100056238();
          v35 = sub_1007CB2E4(v110, @"LOCATION_CLIENT_PERMISSION_DENY_VISIT_HISTORY_BUTTON");
          v111 = sub_100056238();
          cf = sub_1007CB2E4(v111, @"LOCATION_CLIENT_PERMISSION_ALLOW_VISIT_HISTORY_BUTTON");
LABEL_148:
          v34 = 0;
          v57 = 0;
          goto LABEL_149;
        default:
          v34 = 0;
          v85 = 0;
          v57 = 0;
          v35 = 0;
          cf = 0;
          v131 = 0;
          format = 0;
          v86 = 0;
          goto LABEL_162;
      }
    }

    if (qword_1025D47A0 != -1)
    {
      sub_10028840C();
    }

    v23 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289282;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      *&buf[18] = 2114;
      *&buf[20] = v12;
      _os_log_impl(dword_100000000, v23, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:createClientUserNotification: BundleDisplayName nil, Client:%{public, location:escape_only}@}", buf, 0x1Cu);
      if (qword_1025D47A0 != -1)
      {
        sub_10192D4D0();
      }
    }

    v24 = off_1025D47A8;
    result = os_signpost_enabled(off_1025D47A8);
    if (!result)
    {
      return result;
    }

    *buf = 68289282;
    *&buf[4] = 0;
    *&buf[8] = 2082;
    *&buf[10] = "";
    *&buf[18] = 2114;
    *&buf[20] = v12;
    v25 = "createClientUserNotification: BundleDisplayName nil";
    v26 = "{msg%{public}.0s:createClientUserNotification: BundleDisplayName nil, Client:%{public, location:escape_only}@}";
    goto LABEL_38;
  }

  if (qword_1025D47A0 != -1)
  {
    sub_10028840C();
  }

  v10 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEFAULT, "#Pinning per-app prompts are not allowed when LocationPinning is enabled.", buf, 2u);
  }

  result = sub_10000A100(121, 2);
  if (result)
  {
    sub_10192E604();
    return 0;
  }

  return result;
}

void sub_100777308(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a30 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10077732C(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 136) registeredKeyPathForClientIdentifier:a2];
  if ([v3 isValidCKP])
  {
    if (v3)
    {
      [v3 cppClientKey];
    }

    else
    {
      __p[0] = 0;
      __p[1] = 0;
      v12 = 0;
    }

    v4 = sub_1005D7C24((a1 + 1000), __p);
    v5 = v4;
    if (SHIBYTE(v12) < 0)
    {
      operator delete(__p[0]);
      if (!v5)
      {
        return;
      }
    }

    else if (!v4)
    {
      return;
    }

    for (i = v5[7]; i; i = *i)
    {
      v7 = i[4];
      if (v7)
      {
        v8 = std::__shared_weak_count::lock(v7);
        if (v8)
        {
          v9 = v8;
          v10 = i[3];
          if (v10)
          {
            sub_1006E68CC(v10);
          }

          sub_100008080(v9);
        }
      }
    }

    sub_100546628((a1 + 1000), v5, __p);
    sub_100061108(__p);
  }
}

void sub_10077740C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100777438(uint64_t a1)
{
  for (i = *(a1 + 1016); i; i = *i)
  {
    for (j = i[7]; j; j = *j)
    {
      v4 = j[4];
      if (v4)
      {
        v5 = std::__shared_weak_count::lock(v4);
        if (v5)
        {
          v6 = v5;
          v7 = j[3];
          if (v7)
          {
            sub_1006E68CC(v7);
          }

          sub_100008080(v6);
        }
      }
    }
  }

  sub_1007AD694(a1 + 1000);
}

void sub_1007774D0(uint64_t a1, const void **a2)
{
  if (*(a2 + 23) >= 0)
  {
    v4 = a2;
  }

  else
  {
    v4 = *a2;
  }

  if (![objc_msgSend(*(a1 + 136) registeredKeyPathForClientIdentifier:{+[CLClientKeyPath clientKeyPathWithClientKey:](CLClientKeyPath, "clientKeyPathWithClientKey:", +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", v4))), "isValidCKP"}])
  {
    return;
  }

  v5 = sub_1005D7C24((a1 + 1000), a2);
  if (!v5)
  {
    return;
  }

  v6 = v5;
  v7 = sub_1007AD734(v5 + 5, a2 + 6);
  if (v7)
  {
    v8 = v7;
    v9 = v7[4];
    if (v9)
    {
      v10 = v7[3];
      atomic_fetch_add_explicit(&v9->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      v11 = std::__shared_weak_count::lock(v9);
      if (v11)
      {
        v12 = v11;
        if (v10)
        {
          sub_100008080(v11);

          std::__shared_weak_count::__release_weak(v9);
          return;
        }

        sub_1007AD848(v6 + 5, v8);
        sub_100008080(v12);
      }

      else
      {
        sub_1007AD848(v6 + 5, v8);
      }

      std::__shared_weak_count::__release_weak(v9);
    }

    else
    {
      sub_1007AD848(v6 + 5, v7);
    }
  }

  if (!v6[8])
  {
    sub_100546628((a1 + 1000), v6, v13);
    sub_100061108(v13);
  }
}

uint64_t sub_100777634(uint64_t a1, uint64_t a2, unsigned int a3, int a4)
{
  v7 = sub_100774B5C(a3);
  Current = CFAbsoluteTimeGetCurrent();

  return sub_10002FE04(a1, a2, v7, a4, 0, 0, Current);
}

uint64_t sub_10077769C(uint64_t a1, uint64_t a2, int a3)
{
  Current = CFAbsoluteTimeGetCurrent();

  return sub_10002FE04(a1, a2, 6uLL, a3, 0, 0, Current);
}

void sub_1007776F8(id *a1, uint64_t a2, double *a3)
{
  v6 = [a1[17] registeredKeyPathForClientIdentifier:a2];
  if ([v6 isValidCKP])
  {
    [a1[17] setDouble:@"TimeMissing" forKey:v6 atKeyPath:*a3];
    v7 = sub_100018FC8(a1, v6, &xmmword_101CE6CD8);

    sub_100033CDC(a1, v6, v7);
  }

  else
  {
    if (qword_1025D47A0 != -1)
    {
      sub_10028840C();
    }

    v8 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_FAULT))
    {
      v10 = 68289282;
      v11 = 0;
      v12 = 2082;
      v13 = "";
      v14 = 2114;
      v15 = a2;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:How can an app be missing if we don't have an entry for it?, Client:%{public, location:escape_only}@}", &v10, 0x1Cu);
      if (qword_1025D47A0 != -1)
      {
        sub_10192D4D0();
      }
    }

    v9 = off_1025D47A8;
    if (os_signpost_enabled(off_1025D47A8))
    {
      v10 = 68289282;
      v11 = 0;
      v12 = 2082;
      v13 = "";
      v14 = 2114;
      v15 = a2;
      _os_signpost_emit_with_name_impl(dword_100000000, v9, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "How can an app be missing if we don't have an entry for it?", "{msg%{public}.0s:How can an app be missing if we don't have an entry for it?, Client:%{public, location:escape_only}@}", &v10, 0x1Cu);
    }
  }
}

id sub_1007778FC(id *a1, uint64_t a2)
{
  v3 = [a1[17] registeredKeyPathForClientIdentifier:a2];
  result = [v3 isValidCKP];
  if (result)
  {
    [a1[17] removeValueForKey:@"TimeMissing" atKeyPath:v3];
    v5 = sub_100018FC8(a1, v3, &xmmword_101CE6CD8);

    return sub_100033CDC(a1, v3, v5);
  }

  return result;
}

id sub_100777988(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 136) registeredKeyPathForClientIdentifier:a2];
  result = [v3 isValidCKP];
  if (result)
  {
    v5 = *(a1 + 136);

    return [v5 intForKey:@"PromptedSettings" atKeyPath:v3 defaultValue:0];
  }

  return result;
}

id sub_1007779F4(uint64_t a1, uint64_t a2)
{
  v3 = sub_1000184F4(a1, a2);
  [*(a1 + 136) setInt:objc_msgSend(*(a1 + 136) forKey:"intForKey:atKeyPath:defaultValue:" atKeyPath:{@"PromptedSettings", v3, 0) + 1, @"PromptedSettings", v3}];
  [*(a1 + 136) persist];
  v4 = *(a1 + 136);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000352CC;
  v6[3] = &unk_10246FEF8;
  v6[4] = v3;
  v6[5] = a1;
  return [v4 iterateIdentitiesRelatedToKeyPath:v3 withBlock:v6];
}

void sub_100777AC4(uint64_t a1, char *a2, int a3, uint64_t a4)
{
  v8 = _os_activity_create(dword_100000000, "CL: #ClearClient", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v8, &v23);

  if (qword_1025D47A0 != -1)
  {
    sub_10192D4D0();
  }

  v9 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = a4;
    if (*(a4 + 23) < 0)
    {
      v10 = *a4;
    }

    *buf = 68290050;
    *&buf[4] = 0;
    v25 = 2082;
    v26 = "";
    v27 = 2082;
    v28 = "activity";
    v29 = 2114;
    v30 = a2;
    v31 = 1026;
    v32 = a3;
    v33 = 2082;
    v34 = v10;
    _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#ClearClient, event:%{public, location:escape_only}s, ckp:%{public, location:escape_only}@, localAuthorizationChange:%{public}hhd, reason:%{public, location:escape_only}s}", buf, 0x36u);
  }

  if ([a2 isValidCKP])
  {
    if ([*(a1 + 136) isKeyPathRegisteredSystemService:a2])
    {
      if (qword_1025D47A0 != -1)
      {
        sub_10192D4D0();
      }

      v11 = off_1025D47A8;
      if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_FAULT))
      {
        *buf = 68289282;
        *&buf[4] = 0;
        v25 = 2082;
        v26 = "";
        v27 = 2114;
        v28 = a2;
        _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:#ClearClient removing client entry for System Service, Client:%{public, location:escape_only}@}", buf, 0x1Cu);
        if (qword_1025D47A0 != -1)
        {
          sub_10192D4D0();
        }
      }

      v12 = off_1025D47A8;
      if (os_signpost_enabled(off_1025D47A8))
      {
        *buf = 68289282;
        *&buf[4] = 0;
        v25 = 2082;
        v26 = "";
        v27 = 2114;
        v28 = a2;
        _os_signpost_emit_with_name_impl(dword_100000000, v12, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "#ClearClient removing client entry for System Service", "{msg%{public}.0s:#ClearClient removing client entry for System Service, Client:%{public, location:escape_only}@}", buf, 0x1Cu);
      }

      goto LABEL_48;
    }

    if (qword_1025D47A0 != -1)
    {
      sub_10192D4D0();
    }

    v13 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289282;
      *&buf[4] = 0;
      v25 = 2082;
      v26 = "";
      v27 = 2114;
      v28 = a2;
      _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#ClearClient removing client entry, Client:%{public, location:escape_only}@}", buf, 0x1Cu);
    }

    sub_10077732C(a1, a2);
    if (a3)
    {
      v14 = [objc_msgSend(a2 "legacyClientKey")];
      v15 = v14 ? v14 : "";
      sub_10000EC00(buf, v15);
      sub_100778048(a1, buf, a4);
      if (SBYTE3(v28) < 0)
      {
        operator delete(*buf);
      }
    }

    v16 = [objc_msgSend(a2 "clientAnchor")];
    if (v16)
    {
      v17 = v16;
    }

    else
    {
      v17 = "";
    }

    sub_10000EC00(buf, v17);
    v18 = sub_1005D7C24(qword_102659E68, buf);
    v19 = v18;
    if (SBYTE3(v28) < 0)
    {
      operator delete(*buf);
      if (v19)
      {
        goto LABEL_31;
      }
    }

    else if (v18)
    {
LABEL_31:
      if (qword_1025D47A0 != -1)
      {
        sub_10192D4D0();
      }

      v20 = off_1025D47A8;
      if (!os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_46;
      }

      *buf = 68289282;
      *&buf[4] = 0;
      v25 = 2082;
      v26 = "";
      v27 = 2114;
      v28 = a2;
      v21 = "{msg%{public}.0s:#ClearClient attribution unavailable client, Client:%{public, location:escape_only}@}";
LABEL_45:
      _os_log_impl(dword_100000000, v20, OS_LOG_TYPE_DEFAULT, v21, buf, 0x1Cu);
LABEL_46:
      [*(a1 + 136) removeDictionaryAtKeyPath:a2];
      [*(a1 + 136) persist];
      sub_10000EC00(buf, "");
      sub_100018918(a1, a2, buf);
      if (SBYTE3(v28) < 0)
      {
        operator delete(*buf);
      }

      goto LABEL_48;
    }

    v22 = [*(a1 + 440) objectForKey:a2];
    if (v22)
    {
      sub_100251A28(a1, a2, v22, 1);
      if (qword_1025D47A0 != -1)
      {
        sub_10192D4D0();
      }

      v20 = off_1025D47A8;
      if (!os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_46;
      }

      *buf = 68289282;
      *&buf[4] = 0;
      v25 = 2082;
      v26 = "";
      v27 = 2114;
      v28 = a2;
      v21 = "{msg%{public}.0s:#ClearClient Completely removed attribution for client, Client:%{public, location:escape_only}@}";
    }

    else
    {
      if (qword_1025D47A0 != -1)
      {
        sub_10192D4D0();
      }

      v20 = off_1025D47A8;
      if (!os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_46;
      }

      *buf = 68289282;
      *&buf[4] = 0;
      v25 = 2082;
      v26 = "";
      v27 = 2114;
      v28 = a2;
      v21 = "{msg%{public}.0s:#ClearClient client is not attributed. No special deattribution needed, Client:%{public, location:escape_only}@}";
    }

    goto LABEL_45;
  }

LABEL_48:
  os_activity_scope_leave(&v23);
}

id sub_100778048(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  result = +[CLAuthSyncManager isSupported]_0();
  if (result)
  {
    v7 = objc_alloc_init(CLCompanionSyncAuthObject);
    if (*(a2 + 23) >= 0)
    {
      v8 = a2;
    }

    else
    {
      v8 = *a2;
    }

    [(CLCompanionSyncAuthObject *)v7 setClientKey:[NSString stringWithUTF8String:v8]];
    [(CLCompanionSyncAuthObject *)v7 setOperationType:3];
    if (qword_1025D47A0 != -1)
    {
      sub_10028840C();
    }

    v9 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
    {
      if (*(a3 + 23) >= 0)
      {
        v10 = a3;
      }

      else
      {
        v10 = *a3;
      }

      v13[0] = 68289538;
      v13[1] = 0;
      v14 = 2082;
      v15 = "";
      v16 = 2082;
      v17 = v10;
      v18 = 2114;
      v19 = [(CLCompanionSyncAuthObject *)v7 description];
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#authsync deleteObject, syncReason:%{public, location:escape_only}s, syncObject:%{public, location:escape_only}@}", v13, 0x26u);
    }

    v11 = *(a1 + 1560);
    if (*(a3 + 23) >= 0)
    {
      v12 = a3;
    }

    else
    {
      v12 = *a3;
    }

    return [v11 deleteObject:v7 withSyncSessionReason:{+[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", v12)}];
  }

  return result;
}

id sub_1007781D4(id *a1)
{
  sub_100777438(a1);
  [a1[17] clear];
  [a1[138] removeAllObjects];
  [a1[137] setClientsAuthorizationMap:{objc_msgSend(a1[138], "copy")}];
  [0 isValidCKP];
  v2 = a1[137];
  v3 = [0 legacyClientKey];

  return [v2 setPersistentStoreDictionary:0 forClient:v3];
}

id sub_100778254(uint64_t a1)
{
  [*(a1 + 1104) removeAllObjects];
  [0 isValidCKP];
  [*(a1 + 1096) setPersistentStoreDictionary:0 forClient:{objc_msgSend(0, "legacyClientKey")}];
  v2 = *(a1 + 136);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1007782FC;
  v4[3] = &unk_10246FC30;
  v4[4] = a1;
  return [v2 iterateAllAnchorKeyPathsWithBlock:v4];
}

uint64_t sub_1007782FC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v4 = sub_100018FC8(v3, a2, &xmmword_101CE6CD8);

  return sub_100033CDC(v3, a2, v4);
}

uint64_t sub_10077834C(uint64_t a1, void *a2)
{
  v2 = a2;
  if (([a2 isValidCKP] & 1) == 0 && !objc_msgSend(*(a1 + 1120), "count"))
  {
    if (qword_1025D47A0 != -1)
    {
      sub_10028840C();
    }

    v18 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v18, OS_LOG_TYPE_INFO, "#IncidentalPrompt skip prompting. No client for incidental prompt", buf, 2u);
    }

    result = sub_10000A100(121, 2);
    if (result)
    {
      sub_10192E6E8();
      return 0;
    }

    return result;
  }

  if (([v2 isValidCKP] & 1) == 0)
  {
    v2 = [*(a1 + 1120) lastObject];
  }

  v4 = sub_1000184F4(a1, v2);
  v5 = sub_10004306C([objc_msgSend(*(a1 + 136) readonlyStoreAtKeyPath:{v4), "dictionary"}]);
  if (v5 != 1)
  {
    v6 = v5;
    if (v5)
    {
      if (qword_1025D47A0 != -1)
      {
        sub_10028840C();
      }

      v12 = off_1025D47A8;
      result = os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_INFO);
      if (!result)
      {
        return result;
      }

      *buf = 68289538;
      v31 = 0;
      v32 = 2082;
      v33 = "";
      v34 = 2114;
      v35 = v4;
      v36 = 2050;
      v37 = v6;
      v11 = "{msg%{public}.0s:#IncidentalPrompt skip prompting. IncidentalUseMode should be UnDetermined, Client:%{public, location:escape_only}@, IncidentalUseMode:%{public, location:CLClientIncidentalUseMode}lld}";
      v13 = v12;
      v14 = OS_LOG_TYPE_INFO;
      v15 = 38;
      goto LABEL_49;
    }

    if (qword_1025D47A0 != -1)
    {
      sub_10028840C();
    }

    v7 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289282;
      v31 = 0;
      v32 = 2082;
      v33 = "";
      v34 = 2114;
      v35 = v4;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#IncidentalPrompt Ineligible marking as NotDetermined, Client:%{public, location:escape_only}@}", buf, 0x1Cu);
    }

    sub_10077A3D0(a1, 1, v4, 1);
  }

  v8 = sub_10004FEC8(a1, v4, &xmmword_101CE6CD8);
  if ([(CLClientManagerAuthorizationContext *)v8 registrationResult]!= 1)
  {
    if (qword_1025D47A0 != -1)
    {
      sub_10192D4D0();
    }

    v16 = off_1025D47A8;
    result = os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_INFO);
    if (!result)
    {
      return result;
    }

    v17 = [(CLClientManagerAuthorizationContext *)v8 registrationResult];
    *buf = 68289538;
    v31 = 0;
    v32 = 2082;
    v33 = "";
    v34 = 2114;
    v35 = v4;
    v36 = 1026;
    LODWORD(v37) = v17;
    v11 = "{msg%{public}.0s:#IncidentalPrompt skip prompting. Registration Result should be WIU, Client:%{public, location:escape_only}@, RegistrationResult:%{public}d}";
    v13 = v16;
    v14 = OS_LOG_TYPE_INFO;
    v15 = 34;
    goto LABEL_49;
  }

  if ([*(a1 + 120) locationRestricted])
  {
    if (qword_1025D47A0 != -1)
    {
      sub_10192D4D0();
    }

    v9 = off_1025D47A8;
    result = os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_INFO);
    if (result)
    {
      *buf = 68289282;
      v31 = 0;
      v32 = 2082;
      v33 = "";
      v34 = 2114;
      v35 = v4;
      v11 = "{msg%{public}.0s:#IncidentalPrompt skip prompting. Restrictions enabled, Client:%{public, location:escape_only}@}";
LABEL_48:
      v13 = v9;
      v14 = OS_LOG_TYPE_INFO;
      v15 = 28;
      goto LABEL_49;
    }

    return result;
  }

  if (([*(a1 + 1120) containsObject:v4] & 1) == 0)
  {
    if (qword_1025D47A0 != -1)
    {
      sub_10192D4D0();
    }

    v19 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_INFO))
    {
      *buf = 68289282;
      v31 = 0;
      v32 = 2082;
      v33 = "";
      v34 = 2114;
      v35 = v4;
      _os_log_impl(dword_100000000, v19, OS_LOG_TYPE_INFO, "{msg%{public}.0s:#IncidentalPrompt client queued, Client:%{public, location:escape_only}@}", buf, 0x1Cu);
    }

    [*(a1 + 1120) addObject:v4];
  }

  if (*(a1 + 1084))
  {
    if (!*(a1 + 272))
    {
      sub_10000EC00(__p, "");
      sub_10023C2AC(v29, 12, v4, 0, __p);
      v24 = sub_1007755CC(a1, v4, 0, v29, 0);
      sub_10023DF30(v29);
      if (v28 < 0)
      {
        operator delete(__p[0]);
      }

      if (v24)
      {
        return 1;
      }

      if (qword_1025D47A0 != -1)
      {
        sub_10192D4D0();
      }

      v25 = off_1025D47A8;
      if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_ERROR))
      {
        *buf = 68289282;
        v31 = 0;
        v32 = 2082;
        v33 = "";
        v34 = 2114;
        v35 = v4;
        _os_log_impl(dword_100000000, v25, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:#Warning Could not post #IncidentalUsePrompt, Client:%{public, location:escape_only}@}", buf, 0x1Cu);
        if (qword_1025D47A0 != -1)
        {
          sub_10192D4D0();
        }
      }

      v26 = off_1025D47A8;
      result = os_signpost_enabled(off_1025D47A8);
      if (result)
      {
        *buf = 68289282;
        v31 = 0;
        v32 = 2082;
        v33 = "";
        v34 = 2114;
        v35 = v4;
        _os_signpost_emit_with_name_impl(dword_100000000, v26, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "#Warning Could not post #IncidentalUsePrompt", "{msg%{public}.0s:#Warning Could not post #IncidentalUsePrompt, Client:%{public, location:escape_only}@}", buf, 0x1Cu);
        return 0;
      }

      return result;
    }

    if (qword_1025D47A0 != -1)
    {
      sub_10192D4D0();
    }

    v20 = off_1025D47A8;
    result = os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT);
    if (!result)
    {
      return result;
    }

    v21 = *(a1 + 272);
    v22 = *(v21 + 1);
    v23 = *v21;
    *buf = 68289794;
    v31 = 0;
    v32 = 2082;
    v33 = "";
    v34 = 2114;
    v35 = v4;
    v36 = 2114;
    v37 = v22;
    v38 = 2050;
    v39 = v23;
    v11 = "{msg%{public}.0s:#IncidentalPrompt skip prompting. InflightPromptAuthorizationRequest found., Client:%{public, location:escape_only}@, inflightClient:%{public, location:escape_only}@, inflightRequestType:%{public, location:CLClientManager_Type::AuthorizationRequestType}lld}";
    v13 = v20;
    v14 = OS_LOG_TYPE_DEFAULT;
    v15 = 48;
LABEL_49:
    _os_log_impl(dword_100000000, v13, v14, v11, buf, v15);
    return 0;
  }

  if (qword_1025D47A0 != -1)
  {
    sub_10192D4D0();
  }

  v9 = off_1025D47A8;
  result = os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_INFO);
  if (result)
  {
    *buf = 68289282;
    v31 = 0;
    v32 = 2082;
    v33 = "";
    v34 = 2114;
    v35 = v4;
    v11 = "{msg%{public}.0s:#IncidentalPrompt skip prompting. Not at homescreen., Client:%{public, location:escape_only}@}";
    goto LABEL_48;
  }

  return result;
}

void sub_100778A38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  sub_10023DF30(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

id sub_100778A6C(uint64_t a1, uint64_t *a2)
{
  v4 = a2;
  if (*(a2 + 23) < 0)
  {
    v4 = *a2;
  }

  v5 = [NSString stringWithUTF8String:v4];
  v6 = [*(a1 + 608) objectForKey:v5];
  if (v6)
  {
    [v6 doubleValue];
    Current = v7;
  }

  else
  {
    Current = CFAbsoluteTimeGetCurrent();
    [*(a1 + 608) setObject:+[NSNumber numberWithDouble:](NSNumber forKey:{"numberWithDouble:"), v5}];
  }

  v9 = +[NSMutableDictionary dictionary];
  v11 = qword_102659E90;
  for (i = qword_102659E98; v11 != i; ++v11)
  {
    v12 = *v11;
    v18 = 0;
    v19 = 0;
    sub_10004F9C8(v12, &v19, &v18);
    v13 = v19;
    if (qword_1025D47A0 != -1)
    {
      sub_10192D4D0();
    }

    v14 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
    {
      v15 = a2;
      if (*(a2 + 23) < 0)
      {
        v15 = *a2;
      }

      *buf = 68289794;
      v21 = 0;
      v22 = 2082;
      v23 = "";
      v24 = 2082;
      v25 = v15;
      v26 = 2050;
      v27 = v12;
      v28 = 1026;
      v29 = 1;
      _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#usesync munged starttime for watch, client:%{public, location:escape_only}s, service:%{public, location:CLClientServiceType}lld, isReceivingLocation:%{public}hhd}", buf, 0x2Cu);
    }

    [v9 setObject:+[NSNumber numberWithDouble:](NSNumber forKey:{"numberWithDouble:", Current), v13}];
  }

  sub_100778C94();
  return [*(a1 + 1552) client:v17 didChangeUsageData:v9];
}