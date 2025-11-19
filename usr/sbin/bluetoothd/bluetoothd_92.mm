id sub_1006A3020(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = *v15;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        v11 = [v10 deviceUUID];
        v12 = [v11 isEqual:v5];

        if (v12)
        {
          v7 = v10;
          goto LABEL_11;
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v7;
}

uint64_t sub_1006A31A8(uint64_t a1)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v1 = *(a1 + 48);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1006A45A8;
  v4[3] = &unk_100B069E8;
  v4[4] = &v5;
  [v1 enumerateKeysAndObjectsUsingBlock:v4];
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

void sub_1006A3250(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1006A3268(uint64_t a1, void *a2)
{
  v3 = a2;
  v18[0] = 0;
  v18[1] = v18;
  v18[2] = 0x3032000000;
  v18[3] = sub_100042420;
  v18[4] = sub_100042680;
  v19 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v4 = qword_100BCEA48;
  if (os_log_type_enabled(qword_100BCEA48, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [v3 rssiIncreaseScanThreshold];
    v6 = *(a1 + 48);
    *buf = 67109378;
    v21 = v5;
    v22 = 2114;
    v23 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "getMinThresholdForAllSessionAskingIncreaseScanParams: %d in %{public}@", buf, 0x12u);
  }

  if (*(a1 + 18) == 1)
  {
    if ((*(a1 + 64) & 1) != 0 || ![v3 rssiIncreaseScanThreshold])
    {
      v7 = *(a1 + 48);
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_1006A46D8;
      v10[3] = &unk_100B06A10;
      v11 = v3;
      v12 = v18;
      v13 = &v14;
      [v7 enumerateKeysAndObjectsUsingBlock:v10];
      v8 = *(v15 + 24);
    }

    else
    {
      v8 = 1;
      *(v15 + 24) = 1;
    }
  }

  else
  {
    v8 = 0;
  }

  _Block_object_dispose(&v14, 8);
  _Block_object_dispose(v18, 8);

  return v8 & 1;
}

void sub_1006A3460(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, id a26)
{
  _Block_object_dispose(&a17, 8);
  _Block_object_dispose(&a21, 8);

  _Unwind_Resume(a1);
}

uint64_t sub_1006A34AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = qword_100BCEA48;
  if (os_log_type_enabled(qword_100BCEA48, OS_LOG_TYPE_DEFAULT))
  {
    v14 = [*(a1 + 56) count];
    v15 = *(a1 + 19);
    v16 = *(a1 + 20);
    v20 = 134218496;
    v21 = v14;
    v22 = 1024;
    v23 = v15;
    v24 = 1024;
    v25 = v16;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "startTrackingForNewDevice - tracked devices: %lu, total: %d, remaining: %d", &v20, 0x18u);
  }

  if (a3)
  {
    v17 = sub_10000C7D0();
    result = (*(*v17 + 832))(v17, 1, a3, a4, a5, a6, a7);
    if (!result)
    {
      *(a1 + 64) = 1;
    }
  }

  else
  {
    v19 = qword_100BCEA48;
    if (os_log_type_enabled(qword_100BCEA48, OS_LOG_TYPE_DEFAULT))
    {
      v20 = 67109120;
      LODWORD(v21) = 0;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "rssiIncreaseScanThreshold is not configured %d", &v20, 8u);
    }

    return 1;
  }

  return result;
}

id sub_1006A3648(uint64_t a1, void *a2)
{
  v3 = a2;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = sub_100042420;
  v18 = sub_100042680;
  v19 = 0;
  v4 = qword_100BCEA48;
  if (os_log_type_enabled(qword_100BCEA48, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 48);
    *buf = 138543618;
    v21 = v3;
    v22 = 2114;
    v23 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "anySessionTrackingThisDevice: %{public}@ in %{public}@", buf, 0x16u);
  }

  v6 = *(a1 + 48);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1006A4510;
  v10[3] = &unk_100B069C0;
  v12 = &v14;
  v13 = a1;
  v11 = v3;
  v7 = v3;
  [v6 enumerateKeysAndObjectsUsingBlock:v10];
  v8 = v15[5];

  _Block_object_dispose(&v14, 8);

  return v8;
}

void sub_1006A37F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id a22)
{
  _Block_object_dispose(&a17, 8);

  _Unwind_Resume(a1);
}

uint64_t sub_1006A3824(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, char a8, char a9, unsigned __int8 a10, unsigned __int8 a11)
{
  v18 = a2;
  if ([*(a1 + 56) count] == *(a1 + 19))
  {
    v19 = qword_100BCEA48;
    if (os_log_type_enabled(qword_100BCEA48, OS_LOG_TYPE_ERROR))
    {
      v28 = [*(a1 + 56) count];
      v29 = *(a1 + 19);
      v30 = *(a1 + 20);
      *buf = 134218496;
      v33 = v28;
      v34 = 1024;
      v35 = v29;
      v36 = 1024;
      v37 = v30;
      _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "startTrackingForNewDevice - maxed out tracked devices: %lu, total: %d, remaining: %d", buf, 0x18u);
    }

    v20 = 4;
  }

  else
  {
    if (qword_100B508D0 != -1)
    {
      sub_10085E028();
    }

    v21 = sub_100046458(off_100B508C8, v18, 0);
    v22 = sub_10000C7D0();
    *(&v31 + 3) = __PAIR16__(a11, a10);
    BYTE2(v31) = a9;
    BYTE1(v31) = a8;
    LOBYTE(v31) = a7;
    v20 = (*(*v22 + 824))(v22, v21, a3, a1 + 19, a1 + 20, a4, a5, a6, v31);
    if (!v20)
    {
      [*(a1 + 56) addObject:v18];
    }

    v23 = qword_100BCEA48;
    if (os_log_type_enabled(qword_100BCEA48, OS_LOG_TYPE_DEFAULT))
    {
      v24 = [*(a1 + 56) count];
      v25 = *(a1 + 19);
      v26 = *(a1 + 20);
      *buf = 134218496;
      v33 = v24;
      v34 = 1024;
      v35 = v25;
      v36 = 1024;
      v37 = v26;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "startTrackingForNewDevice - tracked devices: %lu, total: %d, remaining: %d", buf, 0x18u);
    }
  }

  return v20;
}

void sub_1006A3AA4(void *a1, uint64_t a2)
{
  v4 = qword_100BCEA48;
  if (os_log_type_enabled(qword_100BCEA48, OS_LOG_TYPE_DEFAULT))
  {
    v5 = (a1[4] - a1[3]) >> 3;
    v22 = 134217984;
    v23 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "addSessionToTrackingSessions: number of currently tracking sessions %lu", &v22, 0xCu);
  }

  if (a2)
  {
    v6 = a1[3];
    v8 = a1[4];
    v7 = a1 + 3;
    v9 = v6;
    if (v6 != v8)
    {
      while (*v9 != a2)
      {
        if (++v9 == v8)
        {
          goto LABEL_9;
        }
      }
    }

    if (v9 == v8)
    {
LABEL_9:
      v10 = a1[5];
      if (v8 >= v10)
      {
        v11 = v8 - v6;
        if ((v11 + 1) >> 61)
        {
          sub_1000C7698();
        }

        v12 = v10 - v6;
        v13 = v12 >> 2;
        if (v12 >> 2 <= (v11 + 1))
        {
          v13 = v11 + 1;
        }

        if (v12 >= 0x7FFFFFFFFFFFFFF8)
        {
          v14 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v14 = v13;
        }

        if (v14)
        {
          sub_100008108((a1 + 3), v14);
        }

        v15 = (8 * v11);
        *v15 = a2;
        v8 = (8 * v11 + 8);
        v16 = a1[3];
        v17 = a1[4] - v16;
        v18 = v15 - v17;
        memcpy(v15 - v17, v16, v17);
        v19 = a1[3];
        a1[3] = v18;
        a1[4] = v8;
        a1[5] = 0;
        if (v19)
        {
          operator delete(v19);
        }
      }

      else
      {
        *v8++ = a2;
      }

      a1[4] = v8;
    }

    v20 = qword_100BCEA48;
    if (os_log_type_enabled(qword_100BCEA48, OS_LOG_TYPE_DEFAULT))
    {
      v21 = (v8 - *v7) >> 3;
      v22 = 134217984;
      v23 = v21;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Currently tracking sessions: %lu", &v22, 0xCu);
    }
  }
}

void sub_1006A3C98(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v7 = a3;
  v8 = v7;
  if (*(a1 + 16) & 1) != 0 || (*(a1 + 18))
  {
    if (a2)
    {
      if (v7)
      {
        if (a4 < 0x65)
        {
          sub_100018384(a2, __p);
          if (v40 >= 0)
          {
            v16 = __p;
          }

          else
          {
            v16 = *__p;
          }

          v17 = [NSString stringWithUTF8String:v16];
          if (SHIBYTE(v40) < 0)
          {
            operator delete(*__p);
          }

          v18 = qword_100BCEA48;
          if (v17)
          {
            if (os_log_type_enabled(qword_100BCEA48, OS_LOG_TYPE_DEFAULT))
            {
              v19 = *(a1 + 48);
              v20 = *(a1 + 56);
              *__p = 138544386;
              *&__p[4] = v17;
              v38 = 2114;
              v39 = v8;
              v40 = 1024;
              v41 = a4;
              v42 = 2114;
              v43 = v19;
              v44 = 2114;
              v45 = v20;
              _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "stopTracking for session: %{public}@ for device %{public}@ for type %d with current requests %{public}@ and devices %{public}@", __p, 0x30u);
            }

            v21 = [*(a1 + 48) objectForKeyedSubscript:v17];
            v22 = sub_1006A3020(v21, v21, v8);
            v23 = v22;
            if (v22)
            {
              v24 = [v22 appleTypes];
              v25 = [NSNumber numberWithUnsignedChar:a4];
              v26 = [v24 containsObject:v25];

              if (v26)
              {
                v27 = [v23 appleTypes];
                v28 = [NSNumber numberWithUnsignedChar:a4];
                [v27 removeObject:v28];
              }

              v29 = [v23 appleTypes];
              v30 = [v29 count] == 0;

              if (v30)
              {
                [v21 removeObject:v23];
                v31 = sub_1006A3648(a1, v8);
                if (!v31)
                {
                  v32 = qword_100BCEA48;
                  if (os_log_type_enabled(qword_100BCEA48, OS_LOG_TYPE_DEFAULT))
                  {
                    *__p = 0;
                    _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "No other session is tracking this device - stop tracking", __p, 2u);
                  }

                  sub_1006A4174(a1, v8);
                }
              }
            }

            if (![v21 count])
            {
              v33 = qword_100BCEA48;
              if (os_log_type_enabled(qword_100BCEA48, OS_LOG_TYPE_DEFAULT))
              {
                *__p = 0;
                _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "This session is not tracking any devices, remove session ID from tracking requests", __p, 2u);
              }

              [*(a1 + 48) removeObjectForKey:v17];
              sub_1006A42E4(a1, v17);
            }

            v34 = qword_100BCEA48;
            if (os_log_type_enabled(qword_100BCEA48, OS_LOG_TYPE_DEFAULT))
            {
              v35 = *(a1 + 48);
              v36 = *(a1 + 56);
              *__p = 138543618;
              *&__p[4] = v35;
              v38 = 2114;
              v39 = v36;
              _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "Now tracking requests: %{public}@ with currently tracking devices: %{public}@", __p, 0x16u);
            }
          }

          else if (os_log_type_enabled(qword_100BCEA48, OS_LOG_TYPE_ERROR))
          {
            sub_10085E070();
          }
        }

        else
        {
          v9 = qword_100BCEA48;
          if (os_log_type_enabled(qword_100BCEA48, OS_LOG_TYPE_ERROR))
          {
            sub_10085E0A4(a4, v9, v10, v11, v12, v13, v14, v15);
          }
        }
      }

      else if (os_log_type_enabled(qword_100BCEA48, OS_LOG_TYPE_ERROR))
      {
        sub_10085E110();
      }
    }

    else if (os_log_type_enabled(qword_100BCEA48, OS_LOG_TYPE_ERROR))
    {
      sub_10085E144();
    }
  }

  else if (os_log_type_enabled(qword_100BCEA48, OS_LOG_TYPE_ERROR))
  {
    sub_10085E03C();
  }
}

void sub_1006A4174(uint64_t a1, void *a2)
{
  v3 = a2;
  if (qword_100B508D0 != -1)
  {
    sub_10085E028();
  }

  v4 = sub_100046458(off_100B508C8, v3, 0);
  v5 = sub_10000C7D0();
  (*(*v5 + 840))(v5, v4, a1 + 19, a1 + 20);
  [*(a1 + 56) removeObject:v3];
  v6 = qword_100BCEA48;
  if (os_log_type_enabled(qword_100BCEA48, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [*(a1 + 56) count];
    v8 = *(a1 + 19);
    v9 = *(a1 + 20);
    v10 = 134218496;
    v11 = v7;
    v12 = 1024;
    v13 = v8;
    v14 = 1024;
    v15 = v9;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "stopTrackingForDevice - tracked devices: %lu, total: %d, remaining: %d", &v10, 0x18u);
  }
}

void sub_1006A42E4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = qword_100BCEA48;
  if (os_log_type_enabled(qword_100BCEA48, OS_LOG_TYPE_DEFAULT))
  {
    v5 = (*(a1 + 32) - *(a1 + 24)) >> 3;
    *__p = 138543618;
    *&__p[4] = v3;
    v15 = 2048;
    v16 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "removeSessionFromTrackingSessions %{public}@, number of currently tracking sessions: %lu", __p, 0x16u);
  }

  if (v3)
  {
    v6 = *(a1 + 24);
    if (v6 != *(a1 + 32))
    {
      v7 = (v6 + 1);
      while (1)
      {
        sub_100018384(*v6, __p);
        if (v17 >= 0)
        {
          v8 = __p;
        }

        else
        {
          v8 = *__p;
        }

        v9 = [NSString stringWithUTF8String:v8];
        if (v17 < 0)
        {
          operator delete(*__p);
        }

        if ([v9 isEqualToString:v3])
        {
          break;
        }

        ++v6;
        v7 += 8;
        if (v6 == *(a1 + 32))
        {
          goto LABEL_17;
        }
      }

      v10 = *(a1 + 32);
      v11 = v10 - v7;
      if (v10 != v7)
      {
        memmove(v7 - 8, v7, v10 - v7);
      }

      *(a1 + 32) = &v7[v11 - 8];

LABEL_17:
      v12 = qword_100BCEA48;
      if (os_log_type_enabled(qword_100BCEA48, OS_LOG_TYPE_DEFAULT))
      {
        v13 = (*(a1 + 32) - *(a1 + 24)) >> 3;
        *__p = 134217984;
        *&__p[4] = v13;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Now tracking sessions: %lu", __p, 0xCu);
      }
    }
  }
}

void sub_1006A4510(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v9 = a3;
  v6 = sub_1006A3020(v9, v9, *(a1 + 32));
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  if (*(*(*(a1 + 40) + 8) + 40))
  {
    *a4 = 1;
  }
}

void sub_1006A45A8(uint64_t a1, uint64_t a2, void *a3)
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v4 = a3;
  v5 = [v4 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v5)
  {
    v6 = *v9;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v4);
        }

        if ([*(*(&v8 + 1) + 8 * i) rssiIncreaseScanThreshold])
        {
          *(*(*(a1 + 32) + 8) + 24) = 1;
          goto LABEL_11;
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:
}

void sub_1006A46D8(uint64_t a1, uint64_t a2, void *a3)
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = a3;
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = *v11;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v10 + 1) + 8 * i);
        if ([v8 rssiIncreaseScanThreshold])
        {
          v9 = [v8 rssiIncreaseScanThreshold];
          if (v9 < [*(a1 + 32) rssiIncreaseScanThreshold])
          {
            objc_storeStrong((*(*(a1 + 40) + 8) + 40), v8);
            *(*(*(a1 + 48) + 8) + 24) = 1;
          }
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  [*(a1 + 32) setRssiIncreaseScanThreshold:{objc_msgSend(*(*(*(a1 + 40) + 8) + 40), "rssiIncreaseScanThreshold")}];
  [*(a1 + 32) setRssiIncreaseScanWindowThreshold:{objc_msgSend(*(*(*(a1 + 40) + 8) + 40), "rssiIncreaseScanWindowThreshold")}];
  [*(a1 + 32) setRssiIncreaseScanIntervalThreshold:{objc_msgSend(*(*(*(a1 + 40) + 8) + 40), "rssiIncreaseScanIntervalThreshold")}];
  [*(a1 + 32) setRssiIncreaseScanTimeoutThreshold:{objc_msgSend(*(*(*(a1 + 40) + 8) + 40), "rssiIncreaseScanTimeoutThreshold")}];
  [*(a1 + 32) setSensorTimeoutBetweenIncreaseScan:{objc_msgSend(*(*(*(a1 + 40) + 8) + 40), "sensorTimeoutBetweenIncreaseScan")}];
}

uint64_t sub_1006A48DC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = qword_100BCEA48;
  if (os_log_type_enabled(qword_100BCEA48, OS_LOG_TYPE_DEFAULT))
  {
    v5 = (*(a1 + 32) - *(a1 + 24)) >> 3;
    *__p = 138543618;
    *&__p[4] = v3;
    v13 = 2048;
    v14 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "sessionFromSessionIDString: %{public}@ from tracking sessions: %lu", __p, 0x16u);
  }

  if (!v3 || (v6 = *(a1 + 24), v6 == *(a1 + 32)))
  {
LABEL_12:
    v7 = 0;
  }

  else
  {
    while (1)
    {
      v7 = *v6;
      sub_100018384(*v6, __p);
      v8 = v15 >= 0 ? __p : *__p;
      v9 = [NSString stringWithUTF8String:v8];
      if (v15 < 0)
      {
        operator delete(*__p);
      }

      v10 = [v9 isEqualToString:v3];

      if (v10)
      {
        break;
      }

      if (++v6 == *(a1 + 32))
      {
        goto LABEL_12;
      }
    }
  }

  return v7;
}

void sub_1006A4A8C(uint64_t a1, void *a2, int a3, char a4)
{
  v7 = a2;
  v8 = qword_100BCEA48;
  if (os_log_type_enabled(qword_100BCEA48, OS_LOG_TYPE_DEFAULT))
  {
    if ((a3 - 1) > 2)
    {
      v9 = @"Not Set";
    }

    else
    {
      v9 = off_100B06BE8[(a3 - 1)];
    }

    v10 = *(a1 + 48);
    *buf = 138543874;
    v19 = v7;
    v20 = 2114;
    v21 = v9;
    v22 = 2114;
    v23 = v10;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "leSensorStateChanged received %{public}@ with state: %{public}@ with currently tracked requests %{public}@", buf, 0x20u);
  }

  v11 = *(a1 + 48);
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1006A4C24;
  v13[3] = &unk_100B06A88;
  v14 = v7;
  v15 = a1;
  v16 = a3;
  v17 = a4;
  v12 = v7;
  [v11 enumerateKeysAndObjectsUsingBlock:v13];
}

void sub_1006A4C24(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = sub_1006A48DC(*(a1 + 40), v5);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1006A4D10;
  v9[3] = &unk_100B06A60;
  v8 = *(a1 + 32);
  v12 = *(a1 + 48);
  v10 = v8;
  v11 = v7;
  [v6 enumerateObjectsUsingBlock:v9];
}

void sub_1006A4D10(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 deviceUUID];
  v5 = [v4 isEqual:*(a1 + 32)];

  if (v5)
  {
    v6 = [v3 currentState];
    [v3 setCurrentState:*(a1 + 48)];
    if (v6 == 2)
    {
      if ((*(a1 + 48) | 2) != 3)
      {
        goto LABEL_19;
      }
    }

    else if ((v6 & 0xFFFFFFFD) != 1 || *(a1 + 48) != 2)
    {
      goto LABEL_19;
    }

    v7 = [v3 appleTypes];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_1006A4FC8;
    v18[3] = &unk_100B06A38;
    v12 = *(a1 + 32);
    v8 = v12;
    v19 = v12;
    v20 = *(a1 + 48);
    [v7 enumerateObjectsUsingBlock:v18];

    if (*(a1 + 49) == 1)
    {
      v16 = &off_100AE0A78;
      v17 = 0;
      v9 = sub_100432718();
      p_p = &__p;
      sub_100614BB8(*(a1 + 40), &__p);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      v11 = *(a1 + 32);
      v13 = &off_100AE0A78;
      v14 = v17;
      if (v17)
      {
        sub_10000C69C(v17);
      }

      (*(*v9 + 40))(v9, 7, p_p, v11, &v13);
      v13 = &off_100AE0A78;
      if (v14)
      {
        sub_10000C808(v14);
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      v16 = &off_100AE0A78;
      if (v17)
      {
        sub_10000C808(v17);
      }
    }
  }

LABEL_19:
}

void sub_1006A4F40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, atomic_uint *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (a20)
  {
    sub_10000C808(a20);
  }

  _Unwind_Resume(a1);
}

void sub_1006A4FC8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (qword_100B512F8 != -1)
  {
    sub_10085E214();
    v3 = v4;
  }

  sub_1003B73C8(off_100B512F0, *(a1 + 40), *(a1 + 32), *(a1 + 48), [v3 intValue]);
}

void sub_1006A5078(uint64_t a1)
{
  v2 = qword_100BCEA48;
  if (os_log_type_enabled(qword_100BCEA48, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v8) = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "statedump: ------------------ Sensor Tracking Manager -------------------", &v8, 2u);
    v2 = qword_100BCEA48;
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 48) count];
    v4 = (*(a1 + 32) - *(a1 + 24)) >> 3;
    v8 = 134218240;
    v9 = v3;
    v10 = 2048;
    v11 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "statedump: Tracking Requests: %lu %lu", &v8, 0x16u);
  }

  [*(a1 + 48) enumerateKeysAndObjectsUsingBlock:&stru_100B06AC8];
  v5 = qword_100BCEA48;
  if (os_log_type_enabled(qword_100BCEA48, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [*(a1 + 56) count];
    v8 = 134217984;
    v9 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "statedump: Total Devices currently tracked: %lu", &v8, 0xCu);
  }

  [*(a1 + 56) enumerateObjectsUsingBlock:&stru_100B06B48];
  v7 = qword_100BCEA48;
  if (os_log_type_enabled(qword_100BCEA48, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v8) = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "statedump: ------------------ Sensor Tracking Manager END -------------------", &v8, 2u);
  }
}

void sub_1006A522C(id a1, NSString *a2, NSMutableSet *a3, BOOL *a4)
{
  v5 = a3;
  v6 = qword_100BCEA48;
  if (os_log_type_enabled(qword_100BCEA48, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543362;
    v8 = a2;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "statedump: --------- %{public}@ ---------", &v7, 0xCu);
  }

  [(NSMutableSet *)v5 enumerateObjectsUsingBlock:&stru_100B06B08];
}

void sub_1006A530C(id a1, TrackingDevice *a2, BOOL *a3)
{
  v3 = a2;
  v4 = qword_100BCEA48;
  if (os_log_type_enabled(qword_100BCEA48, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [(TrackingDevice *)v3 deviceUUID];
    v11 = 138543362;
    v12 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "statedump: \tDevice: %{public}@", &v11, 0xCu);

    v4 = qword_100BCEA48;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(TrackingDevice *)v3 appleTypes];
    v7 = [v6 allObjects];
    v11 = 138543362;
    v12 = v7;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "statedump: \tTypes: %{public}@", &v11, 0xCu);

    v4 = qword_100BCEA48;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [(TrackingDevice *)v3 currentState]- 1;
    if (v8 > 2)
    {
      v9 = @"Not Set";
    }

    else
    {
      v9 = off_100B06BE8[v8];
    }

    v11 = 138543362;
    v12 = v9;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "statedump: \tCurrentState: %{public}@", &v11, 0xCu);
    v4 = qword_100BCEA48;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [(TrackingDevice *)v3 timeoutValue];
    v11 = 67109120;
    LODWORD(v12) = v10;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "statedump: \tTimeout: %d", &v11, 8u);
  }
}

void sub_1006A5540(id a1, NSUUID *a2, BOOL *a3)
{
  v3 = a2;
  if (qword_100B508D0 != -1)
  {
    sub_10085E028();
  }

  sub_100046458(off_100B508C8, v3, 0);
  v4 = qword_100BCEA48;
  if (os_log_type_enabled(qword_100BCEA48, OS_LOG_TYPE_DEFAULT))
  {
    v5 = sub_100063D0C();
    v6 = 138543618;
    v7 = v3;
    v8 = 2114;
    v9 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "statedump: \tDevice: %{public}@ - %{public}@", &v6, 0x16u);
  }
}

uint64_t sub_1006A5810(uint64_t a1, uint64_t a2)
{
  *a1 = a2;
  v4 = sub_10000C798();
  v5 = (*(*v4 + 56))(v4, 2);
  if (v5)
  {
    LOBYTE(v5) = sub_100540A94(a2);
  }

  *(a1 + 8) = v5;
  return a1;
}

uint64_t sub_1006A587C(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (*(a1 + 8) == 1)
  {
    v6 = sub_100432410();
    if (a2 <= 2)
    {
      if (a2 == 1)
      {
        v10 = sub_100540CA8(*a1);
        LOWORD(result) = (*(*v6 + 16))(v6, 4294967294, v10);
      }

      else if (a2 == 2)
      {
        v8 = sub_1005411F4(*a1, 0);
        v9 = sub_100540CA8(*a1);
        LOWORD(result) = (*(*v6 + 16))(v6, v8, v9);
      }

      else
      {
        LOWORD(result) = 0;
      }
    }

    else if ((a2 - 3) >= 5)
    {
      if (a2 == 8)
      {
        LODWORD(result) = sub_100540CA8(*a1);
        if (result)
        {
          LOWORD(result) = (*(*v6 + 32))(v6);
        }
      }

      else
      {
        LOWORD(result) = a2 == 11;
      }
    }

    else
    {
      LODWORD(result) = sub_100540C18(*a1);
      if (result)
      {
        LOWORD(result) = (*(*v6 + 24))(v6, a2);
        if (a3 < result)
        {
          LOWORD(result) = a3;
        }
      }
    }
  }

  else
  {
    LOWORD(result) = 0;
  }

  return result;
}

uint64_t sub_1006A5A08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6, uint64_t a7)
{
  if (*(a1 + 8) != 1)
  {
    goto LABEL_20;
  }

  v14 = sub_100432410();
  v15 = v14;
  if (a2 <= 6)
  {
    if ((a2 - 3) >= 3)
    {
      if (a2 == 1)
      {
        v21 = sub_100540CA8(*a1);
        result = (*(*v15 + 40))(v15, 4294967294, v21, a3, a4, a5, a7);
      }

      else
      {
        if (a2 != 2)
        {
          goto LABEL_20;
        }

        v16 = sub_1005411F4(*a1, 0);
        v17 = sub_100540CA8(*a1);
        result = (*(*v15 + 40))(v15, v16, v17, a3, a4, a5, a7);
      }

      goto LABEL_19;
    }

    goto LABEL_11;
  }

  switch(a2)
  {
    case 7:
LABEL_11:
      v19 = sub_100540C18(*a1);
      if (a4 < a6 && v19)
      {
        v20 = a6 - a4;
        if ((a6 - a4) >= a5)
        {
          v20 = a5;
        }

        result = (*(*v15 + 48))(v15, a2, a4, v20);
        break;
      }

LABEL_20:
      operator new();
    case 8:
      if (!sub_100540CA8(*a1))
      {
        goto LABEL_20;
      }

      result = (*(*v15 + 56))(v15, a4, a5);
      break;
    case 0xB:
      result = (*(*v14 + 64))(v14);
      break;
    default:
      goto LABEL_20;
  }

LABEL_19:
  if (!result)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1006A5C5C(uint64_t a1, uint64_t a2, int a3)
{
  if (*(a1 + 8) != 1)
  {
    return 0;
  }

  v6 = sub_100432410();
  v7 = v6;
  if (a2 > 6)
  {
    if (a2 != 7)
    {
      if (a2 != 8 || !sub_100540CA8(*a1))
      {
        return 0;
      }

      v10 = *(*v7 + 56);

      return v10(v7, (a3 - 1), 1);
    }
  }

  else if ((a2 - 3) >= 3)
  {
    if (a2 == 2)
    {
      v8 = *(*v6 + 80);

      return v8();
    }

    return 0;
  }

  if (!sub_100540C18(*a1))
  {
    return 0;
  }

  v11 = *(*v7 + 48);

  return v11(v7, a2, (a3 - 1), 1);
}

uint64_t sub_1006A5DE8(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (*(a1 + 8) != 1)
  {
    return 0;
  }

  v11 = sub_100432410();
  if (a2 != 2)
  {
    return 0;
  }

  v12 = v11;
  if (*(a3 + 23) < 0)
  {
    sub_100008904(__p, *a3, *(a3 + 8));
  }

  else
  {
    *__p = *a3;
    v16 = *(a3 + 16);
  }

  v13 = (*(*v12 + 88))(v12, __p, a4, a5, a6);
  if (SHIBYTE(v16) < 0)
  {
    operator delete(__p[0]);
  }

  return v13;
}

void sub_1006A5ECC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1006A5EE8(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (*(a1 + 8) != 1)
  {
    return 0;
  }

  v13 = sub_100432410();
  if (a2 != 2)
  {
    return 0;
  }

  v14 = v13;
  if (*(a3 + 23) < 0)
  {
    sub_100008904(__p, *a3, *(a3 + 8));
  }

  else
  {
    *__p = *a3;
    v18 = *(a3 + 16);
  }

  v15 = (*(*v14 + 96))(v14, __p, a4, a5, a6, a7);
  if (SHIBYTE(v18) < 0)
  {
    operator delete(__p[0]);
  }

  return v15;
}

void sub_1006A5FDC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1006A5FF8(uint64_t a1)
{
  if (*(a1 + 8) != 1)
  {
    return 0;
  }

  v2 = *(*sub_100432410() + 104);

  return v2();
}

uint64_t sub_1006A6064(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) != 1)
  {
    return 0;
  }

  v3 = sub_100432498();
  if (a2 > 8)
  {
    return 0;
  }

  v4 = 0;
  if (((1 << a2) & 0x1BC) != 0)
  {
    return (**v3)(v3, a2, 0);
  }

  return v4;
}

uint64_t sub_1006A6104(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) != 1)
  {
    return 0;
  }

  v3 = sub_100432498();
  if (a2 == 8 || a2 == 2)
  {
    return (*(*v3 + 8))(v3, a2);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1006A6188(uint64_t a1)
{
  if (*(a1 + 8) != 1)
  {
    return 0;
  }

  v1 = sub_100432498();
  return (*(*v1 + 16))(v1);
}

void sub_1006A61E4(uint64_t a1)
{
  sub_1006A6298(a1);

  operator delete();
}

uint64_t sub_1006A622C(uint64_t a1, size_t count)
{
  *a1 = off_100B06C40;
  *(a1 + 8) = count;
  *(a1 + 16) = 0;
  if (count)
  {
    *(a1 + 16) = malloc_type_calloc(count, 8uLL, 0x2004093837F09uLL);
  }

  return a1;
}

uint64_t sub_1006A6298(uint64_t a1)
{
  *a1 = off_100B06C40;
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = *(a1 + 8);
    if (*(a1 + 8))
    {
      v4 = 0;
      do
      {
        v5 = *(*(a1 + 16) + 8 * v4);
        if (v5)
        {
          (*(*v5 + 8))(v5);
          v3 = *(a1 + 8);
        }

        ++v4;
      }

      while (v4 < v3);
      v2 = *(a1 + 16);
    }

    free(v2);
  }

  return a1;
}

uint64_t sub_1006A6344(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) <= a2)
  {
    return 0;
  }

  v2 = a2;
  result = *(*(a1 + 16) + 8 * a2);
  if (!result)
  {
    *(*(a1 + 16) + 8 * a2) = (*(*a1 + 24))(a1, a2);
    return *(*(a1 + 16) + 8 * v2);
  }

  return result;
}

uint64_t sub_1006A63C8(uint64_t a1, unsigned int a2)
{
  if (*(a1 + 8) <= a2)
  {
    v4 = qword_100BCE978;
    if (os_log_type_enabled(qword_100BCE978, OS_LOG_TYPE_FAULT))
    {
      sub_10085E228(v4);
    }
  }

  v5 = *(a1 + 16);
  result = *(v5 + 8 * a2);
  if (result)
  {
    result = (*(*result + 8))(result);
    v5 = *(a1 + 16);
  }

  *(v5 + 8 * a2) = 0;
  return result;
}

uint64_t sub_1006A6460(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 776);
  if (v2 > 7)
  {
    switch(v2)
    {
      case 8:
        operator new();
      case 16:
        operator new();
      case 32:
        v12 = 0;
        v11 = 0u;
        memset(v10, 0, sizeof(v10));
        v8 = 0u;
        *__p = 0u;
        v6 = 0u;
        *v7 = 0u;
        v4 = 0u;
        *v5 = 0u;
        sub_1000DE474(&v4 + 1);
        BYTE2(v5[0]) = 0;
        BYTE4(v5[0]) = 0;
        BYTE2(v7[0]) = 0;
        BYTE4(v7[0]) = 0;
        DWORD1(v10[1]) = 0;
        v6 = 0uLL;
        v5[1] = 0;
        LOBYTE(v7[0]) = 0;
        v8 = 0uLL;
        v7[1] = 0;
        LOBYTE(__p[0]) = 0;
        memset(v10, 0, 19);
        __p[1] = 0;
        BYTE8(v10[1]) = 1;
        *(&v10[1] + 14) = 0;
        *(&v10[1] + 9) = 0;
        v11 = 0uLL;
        *(&v10[2] + 1) = 0;
        LOBYTE(v12) = 0;
        *(&v12 + 2) = 0;
        operator new();
    }
  }

  else
  {
    switch(v2)
    {
      case 1:
        goto LABEL_5;
      case 2:
        operator new();
      case 4:
LABEL_5:
        operator new();
    }
  }

  if (os_log_type_enabled(qword_100BCE978, OS_LOG_TYPE_ERROR))
  {
    sub_10085E2AC();
  }

  return 0;
}

double sub_1006A6738(uint64_t a1)
{
  *&result = 0x200000000;
  *(a1 + 8) = 0x200000000;
  *a1 = off_100B06C70;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 16) = 0;
  *(a1 + 40) = 1;
  return result;
}

uint64_t sub_1006A6774(uint64_t a1)
{
  *a1 = off_100B06C70;
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  return a1;
}

void sub_1006A67C4(uint64_t a1)
{
  *a1 = off_100B06C70;
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  operator delete();
}

uint64_t sub_1006A6834(uint64_t a1)
{
  if (qword_100B508A0 != -1)
  {
    sub_10085E2E0();
  }

  v9[0] = 0;
  v9[1] = 0;
  v10 = 0;
  sub_100574D30(off_100B50898, &__p);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  sub_100007E30(v9, p_p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  std::operator+<char>();
  v3 = std::string::append(&__p, "");
  v4 = v3->__r_.__value_.__r.__words[0];
  v11[0] = v3->__r_.__value_.__l.__size_;
  *(v11 + 7) = *(&v3->__r_.__value_.__r.__words[1] + 7);
  v5 = HIBYTE(v3->__r_.__value_.__r.__words[2]);
  v3->__r_.__value_.__l.__size_ = 0;
  v3->__r_.__value_.__r.__words[2] = 0;
  v3->__r_.__value_.__r.__words[0] = 0;
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  v6 = v11[0];
  *(a1 + 16) = v4;
  *(a1 + 24) = v6;
  *(a1 + 31) = *(v11 + 7);
  *(a1 + 39) = v5;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v10) < 0)
  {
    operator delete(v9[0]);
  }

  return 1;
}

void sub_1006A6974(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

void sub_1006A69C4(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  sub_100007E30(&v26, "\r\n");
  if (*(a1 + 40) == 1)
  {
    v4 = "+CGMI: ";
  }

  else
  {
    v4 = "+GMI: ";
  }

  v5 = std::string::append(&v26, v4);
  v6 = *&v5->__r_.__value_.__l.__data_;
  v27.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v27.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  v9 = *(a1 + 16);
  v8 = a1 + 16;
  v7 = v9;
  v10 = *(v8 + 23);
  if (v10 >= 0)
  {
    v11 = v8;
  }

  else
  {
    v11 = v7;
  }

  if (v10 >= 0)
  {
    v12 = *(v8 + 23);
  }

  else
  {
    v12 = *(v8 + 8);
  }

  v13 = std::string::append(&v27, v11, v12);
  v14 = *&v13->__r_.__value_.__l.__data_;
  v28.__r_.__value_.__r.__words[2] = v13->__r_.__value_.__r.__words[2];
  *&v28.__r_.__value_.__l.__data_ = v14;
  v13->__r_.__value_.__l.__size_ = 0;
  v13->__r_.__value_.__r.__words[2] = 0;
  v13->__r_.__value_.__r.__words[0] = 0;
  sub_100007E30(v24, "\r\n");
  if ((v25 & 0x80u) == 0)
  {
    v15 = v24;
  }

  else
  {
    v15 = v24[0];
  }

  if ((v25 & 0x80u) == 0)
  {
    v16 = v25;
  }

  else
  {
    v16 = v24[1];
  }

  v17 = std::string::append(&v28, v15, v16);
  v18 = *&v17->__r_.__value_.__l.__data_;
  v29.__r_.__value_.__r.__words[2] = v17->__r_.__value_.__r.__words[2];
  *&v29.__r_.__value_.__l.__data_ = v18;
  v17->__r_.__value_.__l.__size_ = 0;
  v17->__r_.__value_.__r.__words[2] = 0;
  v17->__r_.__value_.__r.__words[0] = 0;
  sub_100007E30(__p, "\r\nOK\r\n");
  if ((v23 & 0x80u) == 0)
  {
    v19 = __p;
  }

  else
  {
    v19 = __p[0];
  }

  if ((v23 & 0x80u) == 0)
  {
    v20 = v23;
  }

  else
  {
    v20 = __p[1];
  }

  v21 = std::string::append(&v29, v19, v20);
  *a2 = *v21;
  v21->__r_.__value_.__l.__size_ = 0;
  v21->__r_.__value_.__r.__words[2] = 0;
  v21->__r_.__value_.__r.__words[0] = 0;
  if (v23 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v29.__r_.__value_.__l.__data_);
  }

  if (v25 < 0)
  {
    operator delete(v24[0]);
  }

  if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v28.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v27.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v26.__r_.__value_.__l.__data_);
  }
}

void sub_1006A6B70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (*(v33 - 25) < 0)
  {
    operator delete(*(v33 - 48));
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (*(v33 - 57) < 0)
  {
    operator delete(*(v33 - 80));
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  _Unwind_Resume(exception_object);
}

double sub_1006A6C0C(uint64_t a1)
{
  *&result = 0x200000001;
  *(a1 + 8) = 0x200000001;
  *a1 = off_100B06CA0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 16) = 0;
  *(a1 + 40) = 1;
  return result;
}

uint64_t sub_1006A6C48(uint64_t a1)
{
  *a1 = off_100B06CA0;
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  return a1;
}

void sub_1006A6C98(uint64_t a1)
{
  *a1 = off_100B06CA0;
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  operator delete();
}

uint64_t sub_1006A6D08(uint64_t a1)
{
  if (qword_100B508A0 != -1)
  {
    sub_10085E2E0();
  }

  sub_100574C2C(off_100B50898, __p);
  if (v5 >= 0)
  {
    v2 = __p;
  }

  else
  {
    v2 = __p[0];
  }

  std::string::assign((a1 + 16), v2);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return 1;
}

void sub_1006A6D88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1006A6DA4(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  sub_100007E30(&v26, "\r\n");
  if (*(a1 + 40) == 1)
  {
    v4 = "+CGMM: ";
  }

  else
  {
    v4 = "+GMM: ";
  }

  v5 = std::string::append(&v26, v4);
  v6 = *&v5->__r_.__value_.__l.__data_;
  v27.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v27.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  v9 = *(a1 + 16);
  v8 = a1 + 16;
  v7 = v9;
  v10 = *(v8 + 23);
  if (v10 >= 0)
  {
    v11 = v8;
  }

  else
  {
    v11 = v7;
  }

  if (v10 >= 0)
  {
    v12 = *(v8 + 23);
  }

  else
  {
    v12 = *(v8 + 8);
  }

  v13 = std::string::append(&v27, v11, v12);
  v14 = *&v13->__r_.__value_.__l.__data_;
  v28.__r_.__value_.__r.__words[2] = v13->__r_.__value_.__r.__words[2];
  *&v28.__r_.__value_.__l.__data_ = v14;
  v13->__r_.__value_.__l.__size_ = 0;
  v13->__r_.__value_.__r.__words[2] = 0;
  v13->__r_.__value_.__r.__words[0] = 0;
  sub_100007E30(v24, "\r\n");
  if ((v25 & 0x80u) == 0)
  {
    v15 = v24;
  }

  else
  {
    v15 = v24[0];
  }

  if ((v25 & 0x80u) == 0)
  {
    v16 = v25;
  }

  else
  {
    v16 = v24[1];
  }

  v17 = std::string::append(&v28, v15, v16);
  v18 = *&v17->__r_.__value_.__l.__data_;
  v29.__r_.__value_.__r.__words[2] = v17->__r_.__value_.__r.__words[2];
  *&v29.__r_.__value_.__l.__data_ = v18;
  v17->__r_.__value_.__l.__size_ = 0;
  v17->__r_.__value_.__r.__words[2] = 0;
  v17->__r_.__value_.__r.__words[0] = 0;
  sub_100007E30(__p, "\r\nOK\r\n");
  if ((v23 & 0x80u) == 0)
  {
    v19 = __p;
  }

  else
  {
    v19 = __p[0];
  }

  if ((v23 & 0x80u) == 0)
  {
    v20 = v23;
  }

  else
  {
    v20 = __p[1];
  }

  v21 = std::string::append(&v29, v19, v20);
  *a2 = *v21;
  v21->__r_.__value_.__l.__size_ = 0;
  v21->__r_.__value_.__r.__words[2] = 0;
  v21->__r_.__value_.__r.__words[0] = 0;
  if (v23 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v29.__r_.__value_.__l.__data_);
  }

  if (v25 < 0)
  {
    operator delete(v24[0]);
  }

  if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v28.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v27.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v26.__r_.__value_.__l.__data_);
  }
}

void sub_1006A6F50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (*(v33 - 25) < 0)
  {
    operator delete(*(v33 - 48));
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (*(v33 - 57) < 0)
  {
    operator delete(*(v33 - 80));
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  _Unwind_Resume(exception_object);
}

double sub_1006A6FE4(uint64_t a1)
{
  *&result = 0x200000002;
  *(a1 + 8) = 0x200000002;
  *a1 = off_100B06CD0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 16) = 0;
  *(a1 + 40) = 1;
  return result;
}

uint64_t sub_1006A701C(uint64_t a1)
{
  *a1 = off_100B06CD0;
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  return a1;
}

void sub_1006A706C(uint64_t a1)
{
  *a1 = off_100B06CD0;
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  operator delete();
}

uint64_t sub_1006A70DC(uint64_t a1)
{
  v9 = 0;
  v2 = sub_10000E92C();
  sub_100007E30(v7, "HFP");
  sub_100007E30(__p, "HideGeneralRevision");
  (*(*v2 + 72))(v2, v7, __p, &v9);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  if (v8 < 0)
  {
    operator delete(v7[0]);
  }

  if (v9 == 1)
  {
    std::string::assign((a1 + 16), "Unknown");
  }

  else
  {
    if (qword_100B508A0 != -1)
    {
      sub_10085E2F4();
    }

    sub_100574CAC(off_100B50898, v7);
    if (v8 >= 0)
    {
      v3 = v7;
    }

    else
    {
      v3 = v7[0];
    }

    std::string::assign((a1 + 16), v3);
    if (v8 < 0)
    {
      operator delete(v7[0]);
    }
  }

  return 1;
}

void sub_1006A71FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1006A7234(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  sub_100007E30(&v26, "\r\n");
  if (*(a1 + 40) == 1)
  {
    v4 = "+CGMR: ";
  }

  else
  {
    v4 = "+GMR: ";
  }

  v5 = std::string::append(&v26, v4);
  v6 = *&v5->__r_.__value_.__l.__data_;
  v27.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v27.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  v9 = *(a1 + 16);
  v8 = a1 + 16;
  v7 = v9;
  v10 = *(v8 + 23);
  if (v10 >= 0)
  {
    v11 = v8;
  }

  else
  {
    v11 = v7;
  }

  if (v10 >= 0)
  {
    v12 = *(v8 + 23);
  }

  else
  {
    v12 = *(v8 + 8);
  }

  v13 = std::string::append(&v27, v11, v12);
  v14 = *&v13->__r_.__value_.__l.__data_;
  v28.__r_.__value_.__r.__words[2] = v13->__r_.__value_.__r.__words[2];
  *&v28.__r_.__value_.__l.__data_ = v14;
  v13->__r_.__value_.__l.__size_ = 0;
  v13->__r_.__value_.__r.__words[2] = 0;
  v13->__r_.__value_.__r.__words[0] = 0;
  sub_100007E30(v24, "\r\n");
  if ((v25 & 0x80u) == 0)
  {
    v15 = v24;
  }

  else
  {
    v15 = v24[0];
  }

  if ((v25 & 0x80u) == 0)
  {
    v16 = v25;
  }

  else
  {
    v16 = v24[1];
  }

  v17 = std::string::append(&v28, v15, v16);
  v18 = *&v17->__r_.__value_.__l.__data_;
  v29.__r_.__value_.__r.__words[2] = v17->__r_.__value_.__r.__words[2];
  *&v29.__r_.__value_.__l.__data_ = v18;
  v17->__r_.__value_.__l.__size_ = 0;
  v17->__r_.__value_.__r.__words[2] = 0;
  v17->__r_.__value_.__r.__words[0] = 0;
  sub_100007E30(__p, "\r\nOK\r\n");
  if ((v23 & 0x80u) == 0)
  {
    v19 = __p;
  }

  else
  {
    v19 = __p[0];
  }

  if ((v23 & 0x80u) == 0)
  {
    v20 = v23;
  }

  else
  {
    v20 = __p[1];
  }

  v21 = std::string::append(&v29, v19, v20);
  *a2 = *v21;
  v21->__r_.__value_.__l.__size_ = 0;
  v21->__r_.__value_.__r.__words[2] = 0;
  v21->__r_.__value_.__r.__words[0] = 0;
  if (v23 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v29.__r_.__value_.__l.__data_);
  }

  if (v25 < 0)
  {
    operator delete(v24[0]);
  }

  if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v28.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v27.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v26.__r_.__value_.__l.__data_);
  }
}

void sub_1006A73E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (*(v33 - 25) < 0)
  {
    operator delete(*(v33 - 48));
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (*(v33 - 57) < 0)
  {
    operator delete(*(v33 - 80));
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  _Unwind_Resume(exception_object);
}

double sub_1006A7474(uint64_t a1)
{
  *&result = 0x200000003;
  *(a1 + 8) = 0x200000003;
  *a1 = off_100B06D00;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 16) = 0;
  *(a1 + 40) = 1;
  return result;
}

uint64_t sub_1006A74B0(uint64_t a1)
{
  *a1 = off_100B06D00;
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  return a1;
}

void sub_1006A7500(uint64_t a1)
{
  *a1 = off_100B06D00;
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  operator delete();
}

BOOL sub_1006A7570()
{
  if (qword_100B54080 != -1)
  {
    sub_10085E31C();
  }

  return sub_1006FCD8C(off_100B54078) == 0;
}

void sub_1006A75C0(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if ((*(a1 + 39) & 0x8000000000000000) != 0)
  {
    if (*(a1 + 24))
    {
      goto LABEL_3;
    }
  }

  else if (*(a1 + 39))
  {
LABEL_3:
    sub_100007E30(&v24, "\r\n");
    if (*(a1 + 40) == 1)
    {
      v4 = "+CGSN: ";
    }

    else
    {
      v4 = "+GSN: ";
    }

    v5 = std::string::append(&v24, v4);
    v6 = *&v5->__r_.__value_.__l.__data_;
    v25.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
    *&v25.__r_.__value_.__l.__data_ = v6;
    v5->__r_.__value_.__l.__size_ = 0;
    v5->__r_.__value_.__r.__words[2] = 0;
    v5->__r_.__value_.__r.__words[0] = 0;
    v7 = *(a1 + 39);
    if (v7 >= 0)
    {
      v8 = (a1 + 16);
    }

    else
    {
      v8 = *(a1 + 16);
    }

    if (v7 >= 0)
    {
      v9 = *(a1 + 39);
    }

    else
    {
      v9 = *(a1 + 24);
    }

    v10 = std::string::append(&v25, v8, v9);
    v11 = *&v10->__r_.__value_.__l.__data_;
    v26.__r_.__value_.__r.__words[2] = v10->__r_.__value_.__r.__words[2];
    *&v26.__r_.__value_.__l.__data_ = v11;
    v10->__r_.__value_.__l.__size_ = 0;
    v10->__r_.__value_.__r.__words[2] = 0;
    v10->__r_.__value_.__r.__words[0] = 0;
    sub_100007E30(v22, "\r\n");
    if ((v23 & 0x80u) == 0)
    {
      v12 = v22;
    }

    else
    {
      v12 = v22[0];
    }

    if ((v23 & 0x80u) == 0)
    {
      v13 = v23;
    }

    else
    {
      v13 = v22[1];
    }

    v14 = std::string::append(&v26, v12, v13);
    v15 = *&v14->__r_.__value_.__l.__data_;
    v27.__r_.__value_.__r.__words[2] = v14->__r_.__value_.__r.__words[2];
    *&v27.__r_.__value_.__l.__data_ = v15;
    v14->__r_.__value_.__l.__size_ = 0;
    v14->__r_.__value_.__r.__words[2] = 0;
    v14->__r_.__value_.__r.__words[0] = 0;
    sub_100007E30(__p, "\r\nOK\r\n");
    if ((v21 & 0x80u) == 0)
    {
      v16 = __p;
    }

    else
    {
      v16 = __p[0];
    }

    if ((v21 & 0x80u) == 0)
    {
      v17 = v21;
    }

    else
    {
      v17 = __p[1];
    }

    v18 = std::string::append(&v27, v16, v17);
    v19 = *&v18->__r_.__value_.__l.__data_;
    *(a2 + 16) = *(&v18->__r_.__value_.__l + 2);
    *a2 = v19;
    v18->__r_.__value_.__l.__size_ = 0;
    v18->__r_.__value_.__r.__words[2] = 0;
    v18->__r_.__value_.__r.__words[0] = 0;
    if (v21 < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v27.__r_.__value_.__l.__data_);
    }

    if (v23 < 0)
    {
      operator delete(v22[0]);
    }

    if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v26.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v25.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v24.__r_.__value_.__l.__data_);
    }

    return;
  }

  sub_100007E30(a2, "\r\nERROR\r\n");
}

void sub_1006A77AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (*(v33 - 25) < 0)
  {
    operator delete(*(v33 - 48));
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (*(v33 - 57) < 0)
  {
    operator delete(*(v33 - 80));
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1006A7840(uint64_t a1, uint64_t a2, int a3, char *__s)
{
  *(a1 + 8) = 4;
  *(a1 + 12) = a3;
  *a1 = off_100B06D30;
  *(a1 + 16) = 1;
  *(a1 + 24) = 0;
  *(a1 + 32) = a2;
  if (a3 == 2)
  {
    __p = 0;
    v28 = 0;
    v29 = 0;
    sub_100007E30(&__p, __s);
    v5 = &dword_100BC6F50;
    v6 = 5;
    while (1)
    {
      v7 = *(v5 + 31);
      v8 = v29 >= 0 ? HIBYTE(v29) : v28;
      v9 = v29 >= 0 ? &__p : __p;
      v10 = v7 >= 0 ? *(v5 + 31) : *(v5 + 2);
      v11 = v7 >= 0 ? v5 + 2 : *(v5 + 1);
      v12 = v10 >= v8 ? v8 : v10;
      v13 = memcmp(v9, v11, v12);
      if (v10 == v8 && v13 == 0)
      {
        break;
      }

      std::operator+<char>();
      v15 = std::string::append(&v25, "");
      v26 = *v15;
      v15->__r_.__value_.__l.__size_ = 0;
      v15->__r_.__value_.__r.__words[2] = 0;
      v15->__r_.__value_.__r.__words[0] = 0;
      v16 = SHIBYTE(v26.__r_.__value_.__r.__words[2]);
      size = v26.__r_.__value_.__l.__size_;
      v18 = v26.__r_.__value_.__r.__words[0];
      v19 = HIBYTE(v29);
      if (v29 >= 0)
      {
        p_p = &__p;
      }

      else
      {
        v19 = v28;
        p_p = __p;
      }

      if ((v26.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v21 = v26.__r_.__value_.__r.__words[0];
      }

      else
      {
        size = SHIBYTE(v26.__r_.__value_.__r.__words[2]);
        v21 = &v26;
      }

      if (size >= v19)
      {
        v22 = v19;
      }

      else
      {
        v22 = size;
      }

      v23 = size == v19;
      if (memcmp(p_p, v21, v22))
      {
        v23 = 0;
      }

      if (v16 < 0)
      {
        operator delete(v18);
      }

      if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v25.__r_.__value_.__l.__data_);
      }

      if (v23)
      {
        break;
      }

      v5 += 8;
      if (!--v6)
      {
        goto LABEL_41;
      }
    }

    *(a1 + 16) = *v5;
LABEL_41:
    if (SHIBYTE(v29) < 0)
    {
      operator delete(__p);
    }
  }

  return a1;
}

void sub_1006A7A0C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a24 < 0)
  {
    operator delete(a19);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1006A7A5C(uint64_t a1)
{
  v1 = *(a1 + 12);
  if (v1 == 2)
  {
    v4 = *(a1 + 16);
    if (v4 != 1)
    {
      *(*(a1 + 32) + 776) = v4;
      return 1;
    }

    return 0;
  }

  if (v1 == 1)
  {
    *(a1 + 16) = *(*(a1 + 32) + 776);
    return 1;
  }

  if (v1)
  {
    return 0;
  }

  v2 = *(a1 + 20);
  v3 = vadd_s32(v2, 0x500000005);
  v2.i32[0] |= 0x3Eu;
  v2.i32[1] = v3.i32[1];
  *(a1 + 20) = v2;
  return 1;
}

void sub_1006A7AC4(_DWORD *a1@<X0>, std::string *a2@<X8>)
{
  memset(&v28, 0, sizeof(v28));
  v4 = a1[3];
  if (v4 <= 1)
  {
    if (v4)
    {
      if (v4 == 1)
      {
        sub_100007E30(&__p, "\r\n");
        if ((v27 & 0x80u) == 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = __p;
        }

        if ((v27 & 0x80u) == 0)
        {
          v6 = v27;
        }

        else
        {
          v6 = v26;
        }

        std::string::append(&v28, p_p, v6);
        if (v27 < 0)
        {
          operator delete(__p);
        }

        std::string::append(&v28, "+CSCS: ");
        v7 = &qword_100BC6F40;
        v8 = 6;
        do
        {
          if (a1[4] == *(v7 - 4))
          {
            v9 = *(v7 + 15);
            if (v9 >= 0)
            {
              v10 = (v7 - 1);
            }

            else
            {
              v10 = *(v7 - 1);
            }

            if (v9 >= 0)
            {
              v11 = *(v7 + 15);
            }

            else
            {
              v11 = *v7;
            }

            std::string::append(&v28, v10, v11);
          }

          v7 += 4;
          --v8;
        }

        while (v8);
      }
    }

    else
    {
      sub_100007E30(&__p, "\r\n");
      if ((v27 & 0x80u) == 0)
      {
        v13 = &__p;
      }

      else
      {
        v13 = __p;
      }

      if ((v27 & 0x80u) == 0)
      {
        v14 = v27;
      }

      else
      {
        v14 = v26;
      }

      std::string::append(&v28, v13, v14);
      if (v27 < 0)
      {
        operator delete(__p);
      }

      std::string::append(&v28, "+CSCS: (");
      v15 = 0;
      v16 = &qword_100BC6F40;
      v17 = 6;
      do
      {
        if ((*(v16 - 2) & a1[5]) != 0)
        {
          if (v15)
          {
            std::string::append(&v28, ",");
          }

          v18 = *(v16 + 15);
          if (v18 >= 0)
          {
            v19 = (v16 - 1);
          }

          else
          {
            v19 = *(v16 - 1);
          }

          if (v18 >= 0)
          {
            v20 = *(v16 + 15);
          }

          else
          {
            v20 = *v16;
          }

          std::string::append(&v28, v19, v20);
          ++v15;
        }

        v16 += 4;
        --v17;
      }

      while (v17);
      std::string::append(&v28, ")");
    }

    goto LABEL_47;
  }

  v12 = "\r\nERROR\r\n";
  if (v4 == 2)
  {
    if (a1[4] != 1)
    {
      v12 = "\r\nOK\r\n";
    }

    goto LABEL_66;
  }

  if (v4 == 3)
  {
LABEL_66:
    sub_100007E30(a2, v12);
    goto LABEL_67;
  }

LABEL_47:
  sub_100007E30(&__p, "\r\n");
  if ((v27 & 0x80u) == 0)
  {
    v21 = &__p;
  }

  else
  {
    v21 = __p;
  }

  if ((v27 & 0x80u) == 0)
  {
    v22 = v27;
  }

  else
  {
    v22 = v26;
  }

  std::string::append(&v28, v21, v22);
  if (v27 < 0)
  {
    operator delete(__p);
  }

  sub_100007E30(&__p, "\r\nOK\r\n");
  if ((v27 & 0x80u) == 0)
  {
    v23 = &__p;
  }

  else
  {
    v23 = __p;
  }

  if ((v27 & 0x80u) == 0)
  {
    v24 = v27;
  }

  else
  {
    v24 = v26;
  }

  std::string::append(&v28, v23, v24);
  if (v27 < 0)
  {
    operator delete(__p);
  }

  *a2 = v28;
  memset(&v28, 0, sizeof(v28));
LABEL_67:
  if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v28.__r_.__value_.__l.__data_);
  }
}

void sub_1006A7D88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

double sub_1006A7DE0(void *a1)
{
  *&result = 0x200000005;
  a1[1] = 0x200000005;
  *a1 = off_100B06D60;
  a1[3] = 0;
  a1[4] = 0;
  a1[2] = 0;
  return result;
}

uint64_t sub_1006A7E14(uint64_t a1)
{
  *a1 = off_100B06D60;
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  return a1;
}

void sub_1006A7E64(uint64_t a1)
{
  *a1 = off_100B06D60;
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  operator delete();
}

BOOL sub_1006A7ED4()
{
  if (qword_100B54080 != -1)
  {
    sub_10085E31C();
  }

  return sub_1006FCD64(off_100B54078) == 0;
}

void sub_1006A7F24(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if ((*(a1 + 39) & 0x8000000000000000) != 0)
  {
    if (*(a1 + 24))
    {
      goto LABEL_3;
    }
  }

  else if (*(a1 + 39))
  {
LABEL_3:
    sub_100007E30(&v23, "\r\n");
    v4 = std::string::append(&v23, "+CIMI: ");
    v5 = *&v4->__r_.__value_.__l.__data_;
    v24.__r_.__value_.__r.__words[2] = v4->__r_.__value_.__r.__words[2];
    *&v24.__r_.__value_.__l.__data_ = v5;
    v4->__r_.__value_.__l.__size_ = 0;
    v4->__r_.__value_.__r.__words[2] = 0;
    v4->__r_.__value_.__r.__words[0] = 0;
    v6 = *(a1 + 39);
    if (v6 >= 0)
    {
      v7 = (a1 + 16);
    }

    else
    {
      v7 = *(a1 + 16);
    }

    if (v6 >= 0)
    {
      v8 = *(a1 + 39);
    }

    else
    {
      v8 = *(a1 + 24);
    }

    v9 = std::string::append(&v24, v7, v8);
    v10 = *&v9->__r_.__value_.__l.__data_;
    v25.__r_.__value_.__r.__words[2] = v9->__r_.__value_.__r.__words[2];
    *&v25.__r_.__value_.__l.__data_ = v10;
    v9->__r_.__value_.__l.__size_ = 0;
    v9->__r_.__value_.__r.__words[2] = 0;
    v9->__r_.__value_.__r.__words[0] = 0;
    sub_100007E30(v21, "\r\n");
    if ((v22 & 0x80u) == 0)
    {
      v11 = v21;
    }

    else
    {
      v11 = v21[0];
    }

    if ((v22 & 0x80u) == 0)
    {
      v12 = v22;
    }

    else
    {
      v12 = v21[1];
    }

    v13 = std::string::append(&v25, v11, v12);
    v14 = *&v13->__r_.__value_.__l.__data_;
    v26.__r_.__value_.__r.__words[2] = v13->__r_.__value_.__r.__words[2];
    *&v26.__r_.__value_.__l.__data_ = v14;
    v13->__r_.__value_.__l.__size_ = 0;
    v13->__r_.__value_.__r.__words[2] = 0;
    v13->__r_.__value_.__r.__words[0] = 0;
    sub_100007E30(__p, "\r\nOK\r\n");
    if ((v20 & 0x80u) == 0)
    {
      v15 = __p;
    }

    else
    {
      v15 = __p[0];
    }

    if ((v20 & 0x80u) == 0)
    {
      v16 = v20;
    }

    else
    {
      v16 = __p[1];
    }

    v17 = std::string::append(&v26, v15, v16);
    v18 = *&v17->__r_.__value_.__l.__data_;
    *(a2 + 16) = *(&v17->__r_.__value_.__l + 2);
    *a2 = v18;
    v17->__r_.__value_.__l.__size_ = 0;
    v17->__r_.__value_.__r.__words[2] = 0;
    v17->__r_.__value_.__r.__words[0] = 0;
    if (v20 < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v26.__r_.__value_.__l.__data_);
    }

    if (v22 < 0)
    {
      operator delete(v21[0]);
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

    return;
  }

  sub_100007E30(a2, "\r\nERROR\r\n");
}

void sub_1006A80FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (*(v33 - 25) < 0)
  {
    operator delete(*(v33 - 48));
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (*(v33 - 57) < 0)
  {
    operator delete(*(v33 - 80));
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1006A8190(uint64_t result, int a2)
{
  *(result + 8) = 7;
  *(result + 12) = a2;
  *result = off_100B06D90;
  return result;
}

void sub_1006A81D8(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 12);
  if (v3 > 1)
  {
    if (v3 == 2)
    {
      v12 = "\r\nOK\r\n";
      goto LABEL_42;
    }
  }

  else
  {
    if (!v3)
    {
      sub_100007E30(&v27, "\r\n");
      v13 = std::string::append(&v27, "+CREG: 1");
      v14 = *&v13->__r_.__value_.__l.__data_;
      v28.__r_.__value_.__r.__words[2] = v13->__r_.__value_.__r.__words[2];
      *&v28.__r_.__value_.__l.__data_ = v14;
      v13->__r_.__value_.__l.__size_ = 0;
      v13->__r_.__value_.__r.__words[2] = 0;
      v13->__r_.__value_.__r.__words[0] = 0;
      sub_100007E30(&v24, "\r\n");
      if ((v26 & 0x80u) == 0)
      {
        v15 = &v24;
      }

      else
      {
        v15 = v24;
      }

      if ((v26 & 0x80u) == 0)
      {
        v16 = v26;
      }

      else
      {
        v16 = v25;
      }

      v17 = std::string::append(&v28, v15, v16);
      v18 = *&v17->__r_.__value_.__l.__data_;
      v29.__r_.__value_.__r.__words[2] = v17->__r_.__value_.__r.__words[2];
      *&v29.__r_.__value_.__l.__data_ = v18;
      v17->__r_.__value_.__l.__size_ = 0;
      v17->__r_.__value_.__r.__words[2] = 0;
      v17->__r_.__value_.__r.__words[0] = 0;
      sub_100007E30(&__p, "\r\nOK\r\n");
      if ((v23 & 0x80u) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p;
      }

      if ((v23 & 0x80u) == 0)
      {
        v11 = v23;
      }

      else
      {
        v11 = v22;
      }

      goto LABEL_30;
    }

    if (v3 == 1)
    {
      sub_100007E30(&v27, "\r\n");
      v4 = std::string::append(&v27, "+CREG: 1,1");
      v5 = *&v4->__r_.__value_.__l.__data_;
      v28.__r_.__value_.__r.__words[2] = v4->__r_.__value_.__r.__words[2];
      *&v28.__r_.__value_.__l.__data_ = v5;
      v4->__r_.__value_.__l.__size_ = 0;
      v4->__r_.__value_.__r.__words[2] = 0;
      v4->__r_.__value_.__r.__words[0] = 0;
      sub_100007E30(&v24, "\r\n");
      if ((v26 & 0x80u) == 0)
      {
        v6 = &v24;
      }

      else
      {
        v6 = v24;
      }

      if ((v26 & 0x80u) == 0)
      {
        v7 = v26;
      }

      else
      {
        v7 = v25;
      }

      v8 = std::string::append(&v28, v6, v7);
      v9 = *&v8->__r_.__value_.__l.__data_;
      v29.__r_.__value_.__r.__words[2] = v8->__r_.__value_.__r.__words[2];
      *&v29.__r_.__value_.__l.__data_ = v9;
      v8->__r_.__value_.__l.__size_ = 0;
      v8->__r_.__value_.__r.__words[2] = 0;
      v8->__r_.__value_.__r.__words[0] = 0;
      sub_100007E30(&__p, "\r\nOK\r\n");
      if ((v23 & 0x80u) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p;
      }

      if ((v23 & 0x80u) == 0)
      {
        v11 = v23;
      }

      else
      {
        v11 = v22;
      }

LABEL_30:
      v19 = std::string::append(&v29, p_p, v11);
      v20 = *&v19->__r_.__value_.__l.__data_;
      *(a2 + 16) = *(&v19->__r_.__value_.__l + 2);
      *a2 = v20;
      v19->__r_.__value_.__l.__size_ = 0;
      v19->__r_.__value_.__r.__words[2] = 0;
      v19->__r_.__value_.__r.__words[0] = 0;
      if (v23 < 0)
      {
        operator delete(__p);
      }

      if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v29.__r_.__value_.__l.__data_);
      }

      if (v26 < 0)
      {
        operator delete(v24);
      }

      if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v28.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v27.__r_.__value_.__l.__data_);
      }

      return;
    }
  }

  v12 = "\r\nERROR\r\n";
LABEL_42:

  sub_100007E30(a2, v12);
}

void sub_1006A8438(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (*(v33 - 25) < 0)
  {
    operator delete(*(v33 - 48));
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1006A84C8(uint64_t result, int a2)
{
  *(result + 8) = 8;
  *(result + 12) = a2;
  *result = off_100B06DC0;
  *(result + 24) = 0;
  *(result + 32) = 0;
  *(result + 16) = 0;
  return result;
}

uint64_t sub_1006A84F8(uint64_t a1)
{
  *a1 = off_100B06DC0;
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  return a1;
}

void sub_1006A8548(uint64_t a1)
{
  *a1 = off_100B06DC0;
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  operator delete();
}

BOOL sub_1006A85B8(uint64_t a1)
{
  memset(__p, 0, sizeof(__p));
  sub_100007E30(&__p[1], "");
  if (qword_100B54080 != -1)
  {
    sub_10085E330();
  }

  v2 = sub_1006FCDB4(off_100B54078);
  if (!v2)
  {
    if (SHIBYTE(__p[3]) < 0)
    {
      sub_100008904(&v4, __p[1], __p[2]);
    }

    else
    {
      v4 = *&__p[1];
      v5 = __p[3];
    }

    if (*(a1 + 39) < 0)
    {
      operator delete(*(a1 + 16));
    }

    *(a1 + 16) = v4;
    *(a1 + 32) = v5;
  }

  if (SHIBYTE(__p[3]) < 0)
  {
    operator delete(__p[1]);
  }

  return v2 == 0;
}

void sub_1006A8698(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_1006A86B8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  v6 = sub_100007E30(a3, "\r\nERROR\r\n");
  v8 = *(a1 + 12);
  if (v8 > 1)
  {
    if (v8 == 2)
    {
      sub_100007E30(&v34, "\r\nOK\r\n");
      goto LABEL_45;
    }

    if (v8 != 3)
    {
      return result;
    }
  }

  else if (v8)
  {
    if (v8 == 1)
    {
      v9 = sub_1006A6460(v6, a2);
      sub_100007E30(&v31, "\r\n");
      v10 = std::string::append(&v31, "+COPS: 0,0,");
      v11 = *&v10->__r_.__value_.__l.__data_;
      v32.__r_.__value_.__r.__words[2] = v10->__r_.__value_.__r.__words[2];
      *&v32.__r_.__value_.__l.__data_ = v11;
      v10->__r_.__value_.__l.__size_ = 0;
      v10->__r_.__value_.__r.__words[2] = 0;
      v10->__r_.__value_.__r.__words[0] = 0;
      sub_10039BE10(v9, (a1 + 16), &v30);
      if ((v30.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v12 = &v30;
      }

      else
      {
        v12 = v30.__r_.__value_.__r.__words[0];
      }

      if ((v30.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v30.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v30.__r_.__value_.__l.__size_;
      }

      v14 = std::string::append(&v32, v12, size);
      v15 = *&v14->__r_.__value_.__l.__data_;
      v33.__r_.__value_.__r.__words[2] = v14->__r_.__value_.__r.__words[2];
      *&v33.__r_.__value_.__l.__data_ = v15;
      v14->__r_.__value_.__l.__size_ = 0;
      v14->__r_.__value_.__r.__words[2] = 0;
      v14->__r_.__value_.__r.__words[0] = 0;
      sub_100007E30(v28, "\r\n");
      if ((v29 & 0x80u) == 0)
      {
        v16 = v28;
      }

      else
      {
        v16 = v28[0];
      }

      if ((v29 & 0x80u) == 0)
      {
        v17 = v29;
      }

      else
      {
        v17 = v28[1];
      }

      v18 = std::string::append(&v33, v16, v17);
      v19 = *&v18->__r_.__value_.__l.__data_;
      v34.__r_.__value_.__r.__words[2] = v18->__r_.__value_.__r.__words[2];
      *&v34.__r_.__value_.__l.__data_ = v19;
      v18->__r_.__value_.__l.__size_ = 0;
      v18->__r_.__value_.__r.__words[2] = 0;
      v18->__r_.__value_.__r.__words[0] = 0;
      sub_100007E30(__p, "\r\nOK\r\n");
      if ((v27 & 0x80u) == 0)
      {
        v20 = __p;
      }

      else
      {
        v20 = __p[0];
      }

      if ((v27 & 0x80u) == 0)
      {
        v21 = v27;
      }

      else
      {
        v21 = __p[1];
      }

      v22 = std::string::append(&v34, v20, v21);
      v23 = v22->__r_.__value_.__r.__words[0];
      v35[0] = v22->__r_.__value_.__l.__size_;
      *(v35 + 7) = *(&v22->__r_.__value_.__r.__words[1] + 7);
      v24 = HIBYTE(v22->__r_.__value_.__r.__words[2]);
      v22->__r_.__value_.__l.__size_ = 0;
      v22->__r_.__value_.__r.__words[2] = 0;
      v22->__r_.__value_.__r.__words[0] = 0;
      if (*(a3 + 23) < 0)
      {
        operator delete(*a3);
      }

      v25 = v35[0];
      *a3 = v23;
      *(a3 + 8) = v25;
      *(a3 + 15) = *(v35 + 7);
      *(a3 + 23) = v24;
      if (v27 < 0)
      {
        operator delete(__p[0]);
      }

      if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v34.__r_.__value_.__l.__data_);
      }

      if (v29 < 0)
      {
        operator delete(v28[0]);
      }

      if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v33.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v30.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v32.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v31.__r_.__value_.__l.__data_);
      }

      if (v9)
      {
        (*(*v9 + 8))(v9);
      }
    }

    return result;
  }

  sub_100007E30(&v34, "\r\nERROR\r\n");
LABEL_45:
  if (*(a3 + 23) < 0)
  {
    operator delete(*a3);
  }

  result = *&v34.__r_.__value_.__l.__data_;
  *a3 = v34;
  return result;
}

void sub_1006A89B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, uint64_t a39, void *a40, uint64_t a41, int a42, __int16 a43, char a44, char a45)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (*(v46 - 73) < 0)
  {
    operator delete(*(v46 - 96));
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (a45 < 0)
  {
    operator delete(a40);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (a38 < 0)
  {
    operator delete(a33);
  }

  if (a32 < 0)
  {
    operator delete(a27);
  }

  if (*(v45 + 23) < 0)
  {
    operator delete(*v45);
  }

  _Unwind_Resume(exception_object);
}

double sub_1006A8A84(void *a1)
{
  *&result = 0x200000009;
  a1[1] = 0x200000009;
  *a1 = off_100B06DF0;
  return result;
}

void sub_1006A8AD0(std::string *a1@<X8>)
{
  sub_100007E30(&v15, "\r\n");
  v2 = std::string::append(&v15, "+CPAS: READY");
  v3 = *&v2->__r_.__value_.__l.__data_;
  v16.__r_.__value_.__r.__words[2] = v2->__r_.__value_.__r.__words[2];
  *&v16.__r_.__value_.__l.__data_ = v3;
  v2->__r_.__value_.__l.__size_ = 0;
  v2->__r_.__value_.__r.__words[2] = 0;
  v2->__r_.__value_.__r.__words[0] = 0;
  sub_100007E30(v13, "\r\n");
  if ((v14 & 0x80u) == 0)
  {
    v4 = v13;
  }

  else
  {
    v4 = v13[0];
  }

  if ((v14 & 0x80u) == 0)
  {
    v5 = v14;
  }

  else
  {
    v5 = v13[1];
  }

  v6 = std::string::append(&v16, v4, v5);
  v7 = *&v6->__r_.__value_.__l.__data_;
  v17.__r_.__value_.__r.__words[2] = v6->__r_.__value_.__r.__words[2];
  *&v17.__r_.__value_.__l.__data_ = v7;
  v6->__r_.__value_.__l.__size_ = 0;
  v6->__r_.__value_.__r.__words[2] = 0;
  v6->__r_.__value_.__r.__words[0] = 0;
  sub_100007E30(__p, "\r\nOK\r\n");
  if ((v12 & 0x80u) == 0)
  {
    v8 = __p;
  }

  else
  {
    v8 = __p[0];
  }

  if ((v12 & 0x80u) == 0)
  {
    v9 = v12;
  }

  else
  {
    v9 = __p[1];
  }

  v10 = std::string::append(&v17, v8, v9);
  *a1 = *v10;
  v10->__r_.__value_.__l.__size_ = 0;
  v10->__r_.__value_.__r.__words[2] = 0;
  v10->__r_.__value_.__r.__words[0] = 0;
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v17.__r_.__value_.__l.__data_);
  }

  if (v14 < 0)
  {
    operator delete(v13[0]);
  }

  if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v16.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v15.__r_.__value_.__l.__data_);
  }
}

void sub_1006A8C18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (*(v33 - 25) < 0)
  {
    operator delete(*(v33 - 48));
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  _Unwind_Resume(exception_object);
}

double sub_1006A8C94(void *a1)
{
  *&result = 0x20000000ALL;
  a1[1] = 0x20000000ALL;
  *a1 = off_100B06E20;
  return result;
}

void sub_1006A8CE0(std::string *a1@<X8>)
{
  sub_100007E30(&v15, "\r\n");
  v2 = std::string::append(&v15, "+CPIN: READY");
  v3 = *&v2->__r_.__value_.__l.__data_;
  v16.__r_.__value_.__r.__words[2] = v2->__r_.__value_.__r.__words[2];
  *&v16.__r_.__value_.__l.__data_ = v3;
  v2->__r_.__value_.__l.__size_ = 0;
  v2->__r_.__value_.__r.__words[2] = 0;
  v2->__r_.__value_.__r.__words[0] = 0;
  sub_100007E30(v13, "\r\n");
  if ((v14 & 0x80u) == 0)
  {
    v4 = v13;
  }

  else
  {
    v4 = v13[0];
  }

  if ((v14 & 0x80u) == 0)
  {
    v5 = v14;
  }

  else
  {
    v5 = v13[1];
  }

  v6 = std::string::append(&v16, v4, v5);
  v7 = *&v6->__r_.__value_.__l.__data_;
  v17.__r_.__value_.__r.__words[2] = v6->__r_.__value_.__r.__words[2];
  *&v17.__r_.__value_.__l.__data_ = v7;
  v6->__r_.__value_.__l.__size_ = 0;
  v6->__r_.__value_.__r.__words[2] = 0;
  v6->__r_.__value_.__r.__words[0] = 0;
  sub_100007E30(__p, "\r\nOK\r\n");
  if ((v12 & 0x80u) == 0)
  {
    v8 = __p;
  }

  else
  {
    v8 = __p[0];
  }

  if ((v12 & 0x80u) == 0)
  {
    v9 = v12;
  }

  else
  {
    v9 = __p[1];
  }

  v10 = std::string::append(&v17, v8, v9);
  *a1 = *v10;
  v10->__r_.__value_.__l.__size_ = 0;
  v10->__r_.__value_.__r.__words[2] = 0;
  v10->__r_.__value_.__r.__words[0] = 0;
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v17.__r_.__value_.__l.__data_);
  }

  if (v14 < 0)
  {
    operator delete(v13[0]);
  }

  if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v16.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v15.__r_.__value_.__l.__data_);
  }
}

void sub_1006A8E28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (*(v33 - 25) < 0)
  {
    operator delete(*(v33 - 48));
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1006A8EA4(uint64_t a1)
{
  *(a1 + 8) = 0x20000000BLL;
  *a1 = off_100B06E50;
  sub_100007E30((a1 + 16), "0,0");
  return a1;
}

uint64_t sub_1006A8EFC(uint64_t a1)
{
  *a1 = off_100B06E50;
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  return a1;
}

void sub_1006A8F4C(uint64_t a1)
{
  *a1 = off_100B06E50;
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  operator delete();
}

uint64_t sub_1006A8FBC(uint64_t a1)
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
  v7 = 0;
  v2 = sub_100017E6C();
  (*(*v2 + 104))(v2, &v7 + 1, &v7);
  v3 = std::ostream::operator<<();
  sub_100007774(v3);
  std::ostream::operator<<();
  std::stringbuf::str();
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  *(a1 + 16) = v5;
  *(a1 + 32) = v6;
  if (SHIBYTE(v11) < 0)
  {
    operator delete(__p[1]);
  }

  std::locale::~locale(v9);
  std::ostream::~ostream();
  std::ios::~ios();
  return 1;
}

void sub_1006A91A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_1003B8618(va);
  _Unwind_Resume(a1);
}

void sub_1006A91B8(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  sub_100007E30(&v25, "\r\n");
  v4 = std::string::append(&v25, "+CBC: ");
  v5 = *&v4->__r_.__value_.__l.__data_;
  v26.__r_.__value_.__r.__words[2] = v4->__r_.__value_.__r.__words[2];
  *&v26.__r_.__value_.__l.__data_ = v5;
  v4->__r_.__value_.__l.__size_ = 0;
  v4->__r_.__value_.__r.__words[2] = 0;
  v4->__r_.__value_.__r.__words[0] = 0;
  v8 = *(a1 + 16);
  v7 = a1 + 16;
  v6 = v8;
  v9 = *(v7 + 23);
  if (v9 >= 0)
  {
    v10 = v7;
  }

  else
  {
    v10 = v6;
  }

  if (v9 >= 0)
  {
    v11 = *(v7 + 23);
  }

  else
  {
    v11 = *(v7 + 8);
  }

  v12 = std::string::append(&v26, v10, v11);
  v13 = *&v12->__r_.__value_.__l.__data_;
  v27.__r_.__value_.__r.__words[2] = v12->__r_.__value_.__r.__words[2];
  *&v27.__r_.__value_.__l.__data_ = v13;
  v12->__r_.__value_.__l.__size_ = 0;
  v12->__r_.__value_.__r.__words[2] = 0;
  v12->__r_.__value_.__r.__words[0] = 0;
  sub_100007E30(v23, "\r\n");
  if ((v24 & 0x80u) == 0)
  {
    v14 = v23;
  }

  else
  {
    v14 = v23[0];
  }

  if ((v24 & 0x80u) == 0)
  {
    v15 = v24;
  }

  else
  {
    v15 = v23[1];
  }

  v16 = std::string::append(&v27, v14, v15);
  v17 = *&v16->__r_.__value_.__l.__data_;
  v28.__r_.__value_.__r.__words[2] = v16->__r_.__value_.__r.__words[2];
  *&v28.__r_.__value_.__l.__data_ = v17;
  v16->__r_.__value_.__l.__size_ = 0;
  v16->__r_.__value_.__r.__words[2] = 0;
  v16->__r_.__value_.__r.__words[0] = 0;
  sub_100007E30(__p, "\r\nOK\r\n");
  if ((v22 & 0x80u) == 0)
  {
    v18 = __p;
  }

  else
  {
    v18 = __p[0];
  }

  if ((v22 & 0x80u) == 0)
  {
    v19 = v22;
  }

  else
  {
    v19 = __p[1];
  }

  v20 = std::string::append(&v28, v18, v19);
  *a2 = *v20;
  v20->__r_.__value_.__l.__size_ = 0;
  v20->__r_.__value_.__r.__words[2] = 0;
  v20->__r_.__value_.__r.__words[0] = 0;
  if (v22 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v28.__r_.__value_.__l.__data_);
  }

  if (v24 < 0)
  {
    operator delete(v23[0]);
  }

  if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v27.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v26.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v25.__r_.__value_.__l.__data_);
  }
}

void sub_1006A9350(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (*(v33 - 25) < 0)
  {
    operator delete(*(v33 - 48));
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (*(v33 - 57) < 0)
  {
    operator delete(*(v33 - 80));
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1006A93E4(uint64_t a1)
{
  *(a1 + 8) = 0x20000000CLL;
  *a1 = off_100B06E80;
  sub_100007E30((a1 + 16), "0");
  return a1;
}

uint64_t sub_1006A943C(uint64_t a1)
{
  *a1 = off_100B06E80;
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  return a1;
}

void sub_1006A948C(uint64_t a1)
{
  *a1 = off_100B06E80;
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  operator delete();
}

uint64_t sub_1006A94FC(uint64_t a1)
{
  v8 = 0;
  v7 = 0;
  *__s = 0;
  if (qword_100B54080 != -1)
  {
    sub_10085E31C();
  }

  sub_1006FCE04(off_100B54078);
  v2 = (v8 + 113) >> 1;
  v8 = v2;
  if (v2 <= 0)
  {
    v2 = 0;
    v8 = 0;
  }

  else if (v2 >= 0x20)
  {
    v2 = 31;
    v8 = 31;
  }

  sprintf(__s, "%2d", v2);
  v3 = (a1 + 16);
  std::string::assign((a1 + 16), __s);
  v4 = qword_100BCE978;
  if (os_log_type_enabled(qword_100BCE978, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a1 + 39) < 0)
    {
      v3 = *v3;
    }

    *buf = 67109634;
    v10 = v8;
    v11 = 2082;
    v12 = __s;
    v13 = 2082;
    v14 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Reporting signal quality %i (== %{public}s == %{public}s)", buf, 0x1Cu);
  }

  return 1;
}

void sub_1006A9664(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  sub_100007E30(&v27, "\r\n");
  v4 = std::string::append(&v27, "+CSQ: ");
  v5 = *&v4->__r_.__value_.__l.__data_;
  v28.__r_.__value_.__r.__words[2] = v4->__r_.__value_.__r.__words[2];
  *&v28.__r_.__value_.__l.__data_ = v5;
  v4->__r_.__value_.__l.__size_ = 0;
  v4->__r_.__value_.__r.__words[2] = 0;
  v4->__r_.__value_.__r.__words[0] = 0;
  v8 = *(a1 + 16);
  v7 = a1 + 16;
  v6 = v8;
  v9 = *(v7 + 23);
  if (v9 >= 0)
  {
    v10 = v7;
  }

  else
  {
    v10 = v6;
  }

  if (v9 >= 0)
  {
    v11 = *(v7 + 23);
  }

  else
  {
    v11 = *(v7 + 8);
  }

  v12 = std::string::append(&v28, v10, v11);
  v13 = *&v12->__r_.__value_.__l.__data_;
  v29.__r_.__value_.__r.__words[2] = v12->__r_.__value_.__r.__words[2];
  *&v29.__r_.__value_.__l.__data_ = v13;
  v12->__r_.__value_.__l.__size_ = 0;
  v12->__r_.__value_.__r.__words[2] = 0;
  v12->__r_.__value_.__r.__words[0] = 0;
  v14 = std::string::append(&v29, ",99");
  v15 = *&v14->__r_.__value_.__l.__data_;
  v30.__r_.__value_.__r.__words[2] = v14->__r_.__value_.__r.__words[2];
  *&v30.__r_.__value_.__l.__data_ = v15;
  v14->__r_.__value_.__l.__size_ = 0;
  v14->__r_.__value_.__r.__words[2] = 0;
  v14->__r_.__value_.__r.__words[0] = 0;
  sub_100007E30(v25, "\r\n");
  if ((v26 & 0x80u) == 0)
  {
    v16 = v25;
  }

  else
  {
    v16 = v25[0];
  }

  if ((v26 & 0x80u) == 0)
  {
    v17 = v26;
  }

  else
  {
    v17 = v25[1];
  }

  v18 = std::string::append(&v30, v16, v17);
  v19 = *&v18->__r_.__value_.__l.__data_;
  v31.__r_.__value_.__r.__words[2] = v18->__r_.__value_.__r.__words[2];
  *&v31.__r_.__value_.__l.__data_ = v19;
  v18->__r_.__value_.__l.__size_ = 0;
  v18->__r_.__value_.__r.__words[2] = 0;
  v18->__r_.__value_.__r.__words[0] = 0;
  sub_100007E30(__p, "\r\nOK\r\n");
  if ((v24 & 0x80u) == 0)
  {
    v20 = __p;
  }

  else
  {
    v20 = __p[0];
  }

  if ((v24 & 0x80u) == 0)
  {
    v21 = v24;
  }

  else
  {
    v21 = __p[1];
  }

  v22 = std::string::append(&v31, v20, v21);
  *a2 = *v22;
  v22->__r_.__value_.__l.__size_ = 0;
  v22->__r_.__value_.__r.__words[2] = 0;
  v22->__r_.__value_.__r.__words[0] = 0;
  if (v24 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v31.__r_.__value_.__l.__data_);
  }

  if (v26 < 0)
  {
    operator delete(v25[0]);
  }

  if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v30.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v29.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v28.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v27.__r_.__value_.__l.__data_);
  }
}

void sub_1006A9840(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (*(v40 - 41) < 0)
  {
    operator delete(*(v40 - 64));
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (*(v40 - 73) < 0)
  {
    operator delete(*(v40 - 96));
  }

  if (a40 < 0)
  {
    operator delete(a35);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1006A98EC(uint64_t a1, uint64_t a2, int a3, const char *a4)
{
  *(a1 + 8) = 13;
  *(a1 + 12) = a3;
  *a1 = off_100B06FA0;
  *(a1 + 16) = a2;
  *(a1 + 24) = 0;
  v6 = sub_10000C798();
  if ((*(*v6 + 56))(v6, 2) && *(a1 + 12) == 2)
  {
    if (*a4 == 34)
    {
      ++a4;
    }

    v7 = &off_100B06EA8;
    v8 = 15;
    while (strncmp(a4, *v7, 2uLL))
    {
      v7 += 2;
      if (!--v8)
      {
        return a1;
      }
    }

    *(a1 + 24) = *(v7 - 2);
  }

  return a1;
}

uint64_t sub_1006A99E4(uint64_t a1, void *a2)
{
  v4 = sub_10000C798();
  result = (*(*v4 + 56))(v4, 2);
  if (result)
  {
    v6 = *(a1 + 12);
    if (v6 > 1)
    {
      if (v6 == 2)
      {
        if (sub_1006AE3F8(a2, *(a1 + 16), *(a1 + 24)))
        {
          return 1;
        }

        *(a1 + 24) = 0;
      }
    }

    else
    {
      if (!v6)
      {
        return 1;
      }

      if (v6 == 1)
      {
        *(a1 + 24) = sub_1006AE590(a2, *(a1 + 16));
        *(a1 + 28) = sub_1006AE5C8(a2, *(a1 + 16));
        return 1;
      }
    }

    return 0;
  }

  return result;
}

void sub_1006A9AA8(_DWORD *a1@<X0>, std::string *a2@<X8>)
{
  v4 = sub_10000C798();
  if ((*(*v4 + 56))(v4, 2))
  {
    memset(&v18, 0, sizeof(v18));
    sub_100007E30(&v18, "\r\n");
    std::string::append(&v18, "+CPBS: ");
    v5 = a1[3];
    if (v5 <= 1)
    {
      if (!v5)
      {
        v9 = "(SM,ON,ME,DC,MC,RC)";
LABEL_20:
        std::string::append(&v18, v9);
        goto LABEL_21;
      }

      if (v5 == 1)
      {
        std::string::append(&v18, "");
        v6 = &off_100B06EA8;
        v7 = 15;
        while (a1[6] != *(v6 - 2))
        {
          v6 += 2;
          if (!--v7)
          {
            goto LABEL_19;
          }
        }

        std::string::append(&v18, *v6);
LABEL_19:
        std::string::append(&v18, ",");
        v20 = 0;
        *__str = 0;
        snprintf(__str, 0xCuLL, "%d", a1[7]);
        std::string::append(&v18, __str);
        std::string::append(&v18, ",");
        v14 = a1[7] + 100;
        v9 = __str;
        snprintf(__str, 0xCuLL, "%d", v14);
        goto LABEL_20;
      }

LABEL_21:
      sub_100007E30(&__p, "\r\n");
      if ((v17 & 0x80u) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p;
      }

      if ((v17 & 0x80u) == 0)
      {
        v11 = v17;
      }

      else
      {
        v11 = v16;
      }

      std::string::append(&v18, p_p, v11);
      if (v17 < 0)
      {
        operator delete(__p);
      }

      sub_100007E30(&__p, "\r\nOK\r\n");
      if ((v17 & 0x80u) == 0)
      {
        v12 = &__p;
      }

      else
      {
        v12 = __p;
      }

      if ((v17 & 0x80u) == 0)
      {
        v13 = v17;
      }

      else
      {
        v13 = v16;
      }

      std::string::append(&v18, v12, v13);
      if (v17 < 0)
      {
        operator delete(__p);
      }

      *a2 = v18;
      memset(&v18, 0, sizeof(v18));
      goto LABEL_42;
    }

    if (v5 == 2)
    {
      if (a1[6])
      {
        v8 = "\r\nOK\r\n";
      }

      else
      {
        if (os_log_type_enabled(qword_100BCE978, OS_LOG_TYPE_ERROR))
        {
          sub_10085E358();
        }

        v8 = "\r\n+CME ERROR: 22\r\n";
      }
    }

    else
    {
      if (v5 != 3)
      {
        goto LABEL_21;
      }

      v8 = "\r\nERROR\r\n";
    }

    sub_100007E30(a2, v8);
LABEL_42:
    if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v18.__r_.__value_.__l.__data_);
    }

    return;
  }

  sub_100007E30(a2, "\r\nERROR\r\n");
}

void sub_1006A9DA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1006A9DEC(uint64_t a1, uint64_t a2, int a3, const char *a4)
{
  *(a1 + 8) = 14;
  *(a1 + 12) = a3;
  *a1 = off_100B06FD0;
  *(a1 + 16) = a2;
  *(a1 + 24) = 0u;
  v6 = (a1 + 24);
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0;
  v7 = sub_10000C798();
  if (((*(*v7 + 56))(v7, 2) & 1) != 0 && *(a1 + 12) == 2)
  {
    v14 = 0;
    *__dst = 0;
    strlcpy(__dst, a4, 0xAuLL);
    HIBYTE(v14) = 0;
    v8 = strtok(__dst, ",");
    if (v8)
    {
      *v6 = atoi(v8);
      v9 = strtok(0, ",");
      if (!v9)
      {
        v11 = *v6;
        goto LABEL_8;
      }

      v10 = atoi(v9);
      v11 = *(a1 + 24);
      *(a1 + 28) = v10;
      if (v10 < v11)
      {
        *v6 = v10;
LABEL_8:
        *(a1 + 28) = v11;
      }
    }
  }

  return a1;
}

void sub_1006A9F38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  a10 = (v10 + 40);
  sub_1006AD258(&a10);
  _Unwind_Resume(a1);
}

uint64_t sub_1006A9F5C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C798();
  if (!(*(*v4 + 56))(v4, 2))
  {
    return 0;
  }

  v5 = *(a1 + 12);
  if (v5 != 2)
  {
    if (!v5)
    {
      v6 = *(a1 + 16);

      return sub_1006AE714(a2, v6, (a1 + 24), (a1 + 28), (a1 + 32), (a1 + 36));
    }

    return 0;
  }

  v8 = *(a1 + 24);
  v9 = *(a1 + 28);
  if (v9 - v8 > 0x32)
  {
    return 0;
  }

  v10 = *(a1 + 16);

  return sub_1006AE898(a2, v10, v8, v9, (a1 + 40));
}

_BYTE *sub_1006AA030@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v6 = sub_10000C798();
  if ((*(*v6 + 56))(v6, 2))
  {
    v62 = 0;
    v60 = 0u;
    v61 = 0u;
    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    memset(v49, 0, sizeof(v49));
    v7 = sub_100008760(&v48);
    v8 = *(a1 + 12);
    if (v8 <= 1)
    {
      if (!v8)
      {
        if (*(a1 + 28))
        {
          sub_100007E30(v44, "\r\n");
          v10 = sub_100007774(&v48);
          sub_100007774(v10);
          v11 = std::ostream::operator<<();
          sub_100007774(v11);
          v12 = std::ostream::operator<<();
          sub_100007774(v12);
          v13 = std::ostream::operator<<();
          sub_100007774(v13);
          v14 = std::ostream::operator<<();
        }

        else
        {
          sub_100007E30(v44, "\r\n");
          v40 = sub_100007774(&v48);
          v14 = sub_100007774(v40);
        }

        sub_100007E30(&__p, "\r\n");
        sub_100007774(v14);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v44[2]) < 0)
        {
          operator delete(v44[0]);
        }

        goto LABEL_140;
      }

      if (v8 != 1)
      {
LABEL_140:
        sub_100007E30(v44, "\r\nOK\r\n");
        sub_100007774(&v48);
        if (SHIBYTE(v44[2]) < 0)
        {
          operator delete(v44[0]);
        }

        std::stringbuf::str();
        goto LABEL_143;
      }

LABEL_15:
      sub_100007E30(a3, "\r\nERROR\r\n");
LABEL_143:
      if (SHIBYTE(v51) < 0)
      {
        operator delete(*(&v50 + 1));
      }

      std::locale::~locale(v49);
      std::ostream::~ostream();
      return std::ios::~ios();
    }

    if (v8 != 2)
    {
      if (v8 != 3)
      {
        goto LABEL_140;
      }

      goto LABEL_15;
    }

    if ((*(a1 + 28) - *(a1 + 24)) > 0x32)
    {
      goto LABEL_15;
    }

    v42 = sub_1006A6460(v7, a2);
    v46 = 0;
    if (sub_100541900(a2, &v46))
    {
      v15 = sub_100541720(a2);
      v16 = v46;
      if (v15)
      {
        v16 = v46 - 2;
        v46 -= 2;
      }

      *(v42 + 16) = v16;
    }

    v17 = *(a1 + 40);
    if (*(a1 + 48) == v17)
    {
      if (v42)
      {
        goto LABEL_139;
      }

      goto LABEL_140;
    }

    v18 = 0;
    v41 = a2;
LABEL_22:
    v45 = 0;
    memset(v44, 0, sizeof(v44));
    v19 = v17 + 72 * v18;
    LODWORD(v44[0]) = *v19;
    if (*(v19 + 31) < 0)
    {
      sub_100008904(&v44[1], *(v19 + 8), *(v19 + 16));
    }

    else
    {
      v20 = *(v19 + 8);
      v44[3] = *(v19 + 24);
      *&v44[1] = v20;
    }

    LODWORD(v44[4]) = *(v19 + 32);
    if (*(v19 + 63) < 0)
    {
      sub_100008904(&v44[5], *(v19 + 40), *(v19 + 48));
    }

    else
    {
      v21 = *(v19 + 40);
      v44[7] = *(v19 + 56);
      *&v44[5] = v21;
    }

    LODWORD(v45) = *(v19 + 64);
    sub_100007E30(&__p, "\r\n");
    v22 = sub_100007774(&v48);
    sub_100007774(v22);
    v23 = std::ostream::operator<<();
    sub_100007774(v23);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (LODWORD(v44[4]) == 2)
    {
      sub_100007774(&v48);
      goto LABEL_97;
    }

    memset(&__p, 0, sizeof(__p));
    if (SHIBYTE(v44[3]) < 0)
    {
      sub_100008904(&__p, v44[1], v44[2]);
    }

    else
    {
      __p = *&v44[1];
    }

    for (i = 0; ; i = v25 + 1)
    {
      v25 = i;
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        size = __p.__r_.__value_.__l.__size_;
        p_p = __p.__r_.__value_.__r.__words[0];
        if (__p.__r_.__value_.__l.__size_ <= i)
        {
          goto LABEL_87;
        }
      }

      else
      {
        if (i >= SHIBYTE(__p.__r_.__value_.__r.__words[2]))
        {
          size = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
          p_p = &__p;
LABEL_87:
          a2 = v41;
          if (size)
          {
            v33 = 0;
            while (memchr("1234567890#*+,", p_p->__r_.__value_.__s.__data_[v33], 0xEuLL))
            {
              if (size == ++v33)
              {
                goto LABEL_91;
              }
            }

            while (v33 != -1)
            {
              std::string::erase(&__p, v33, 1uLL);
              v38 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
              v39 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? HIBYTE(__p.__r_.__value_.__r.__words[2]) : __p.__r_.__value_.__l.__size_;
              if (!v39)
              {
                break;
              }

              v33 = 0;
              while (memchr("1234567890#*+,", v38->__r_.__value_.__s.__data_[v33], 0xEuLL))
              {
                if (v39 == ++v33)
                {
                  goto LABEL_91;
                }
              }
            }
          }

LABEL_91:
          if (!sub_10054152C(v41))
          {
            v34 = std::string::find(&__p, 44, 0);
            std::string::basic_string(&v43, &__p, 0, v34, v63);
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }

            __p = v43;
          }

          sub_100007774(&v48);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

LABEL_97:
          sub_100007774(&v48);
          if (LODWORD(v44[4]) <= 2)
          {
            sub_100007774(&v48);
          }

          memset(&__p, 0, sizeof(__p));
          if (SHIBYTE(v44[7]) < 0)
          {
            sub_100008904(&__p, v44[5], v44[6]);
          }

          else
          {
            __p = *&v44[5];
          }

          if (sub_100541720(a2) && (v45 - 1) < 3)
          {
            std::string::append(&__p, off_100B072F8[(v45 - 1)]);
          }

          if (*(v42 + 8))
          {
            v35 = sub_100007774(&v48);
            sub_10039BE10(v42, &__p, &v43);
            sub_100007774(v35);
          }

          else
          {
            v36 = sub_100007774(&v48);
            sub_10039BE10(v42, &__p, &v43);
            v37 = sub_100007774(v36);
            sub_100007774(v37);
          }

          if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v43.__r_.__value_.__l.__data_);
          }

          sub_100007E30(&v43, "\r\n");
          sub_100007774(&v48);
          if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v43.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v44[7]) < 0)
          {
            operator delete(v44[5]);
          }

          if (SHIBYTE(v44[3]) < 0)
          {
            operator delete(v44[1]);
          }

          ++v18;
          v17 = *(a1 + 40);
          if (v18 >= 0x8E38E38E38E38E39 * ((*(a1 + 48) - v17) >> 3))
          {
LABEL_139:
            (*(*v42 + 8))(v42);
            goto LABEL_140;
          }

          goto LABEL_22;
        }

        p_p = &__p;
      }

      v28 = p_p->__r_.__value_.__s.__data_[i];
      if (p_p->__r_.__value_.__s.__data_[i] < 0)
      {
        v29 = __maskrune(p_p->__r_.__value_.__s.__data_[i], 0x100uLL);
      }

      else
      {
        v29 = _DefaultRuneLocale.__runetype[p_p->__r_.__value_.__s.__data_[i]] & 0x100;
      }

      if (v29)
      {
        v30 = __tolower(v28);
        if (v30 > 0x63)
        {
          if (v30 > 0x66)
          {
            if (v30 > 0x69)
            {
              if (v30 > 0x6C)
              {
                if (v30 > 0x6F)
                {
                  if (v30 > 0x73)
                  {
                    if (v30 > 0x76)
                    {
                      if (v30 > 0x7A)
                      {
                        continue;
                      }

                      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                      {
                        v31 = &__p;
                      }

                      else
                      {
                        v31 = __p.__r_.__value_.__r.__words[0];
                      }

                      v32 = 57;
                    }

                    else
                    {
                      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                      {
                        v31 = &__p;
                      }

                      else
                      {
                        v31 = __p.__r_.__value_.__r.__words[0];
                      }

                      v32 = 56;
                    }
                  }

                  else
                  {
                    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                    {
                      v31 = &__p;
                    }

                    else
                    {
                      v31 = __p.__r_.__value_.__r.__words[0];
                    }

                    v32 = 55;
                  }
                }

                else
                {
                  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                  {
                    v31 = &__p;
                  }

                  else
                  {
                    v31 = __p.__r_.__value_.__r.__words[0];
                  }

                  v32 = 54;
                }
              }

              else
              {
                if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v31 = &__p;
                }

                else
                {
                  v31 = __p.__r_.__value_.__r.__words[0];
                }

                v32 = 53;
              }
            }

            else
            {
              if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v31 = &__p;
              }

              else
              {
                v31 = __p.__r_.__value_.__r.__words[0];
              }

              v32 = 52;
            }
          }

          else
          {
            if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v31 = &__p;
            }

            else
            {
              v31 = __p.__r_.__value_.__r.__words[0];
            }

            v32 = 51;
          }
        }

        else
        {
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v31 = &__p;
          }

          else
          {
            v31 = __p.__r_.__value_.__r.__words[0];
          }

          v32 = 50;
        }

        v31->__r_.__value_.__s.__data_[v25] = v32;
      }
    }
  }

  return sub_100007E30(a3, "\r\nERROR\r\n");
}

void sub_1006AAAC0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *__p, uint64_t a35, int a36, __int16 a37, char a38, char a39, uint64_t a40, char a41)
{
  if (a39 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  sub_1003B8618(&a41);
  _Unwind_Resume(a1);
}

uint64_t sub_1006AABB8(uint64_t result, int a2)
{
  *(result + 8) = 15;
  *(result + 12) = a2;
  *result = off_100B07000;
  *(result + 24) = 0;
  *(result + 32) = 0;
  *(result + 16) = 0;
  return result;
}

uint64_t sub_1006AABE8(uint64_t a1)
{
  *a1 = off_100B07000;
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  return a1;
}

void sub_1006AAC38(uint64_t a1)
{
  *a1 = off_100B07000;
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  operator delete();
}

uint64_t sub_1006AACA8(uint64_t a1)
{
  v2 = sub_10000C798();
  (*(*v2 + 48))(v2, a1 + 16, 1);
  return 1;
}

void sub_1006AACFC(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 12);
  if (v3 > 1)
  {
    if (v3 == 2)
    {
      v25 = "\r\nOK\r\n";
      goto LABEL_39;
    }
  }

  else if (v3 == 1)
  {
    sub_100007E30(&v30, "\r\n");
    v5 = std::string::append(&v30, "+CCLK: ");
    v6 = *&v5->__r_.__value_.__l.__data_;
    v31.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
    *&v31.__r_.__value_.__l.__data_ = v6;
    v5->__r_.__value_.__l.__size_ = 0;
    v5->__r_.__value_.__r.__words[2] = 0;
    v5->__r_.__value_.__r.__words[0] = 0;
    v9 = *(a1 + 16);
    v8 = a1 + 16;
    v7 = v9;
    v10 = *(v8 + 23);
    if (v10 >= 0)
    {
      v11 = v8;
    }

    else
    {
      v11 = v7;
    }

    if (v10 >= 0)
    {
      v12 = *(v8 + 23);
    }

    else
    {
      v12 = *(v8 + 8);
    }

    v13 = std::string::append(&v31, v11, v12);
    v14 = *&v13->__r_.__value_.__l.__data_;
    v32.__r_.__value_.__r.__words[2] = v13->__r_.__value_.__r.__words[2];
    *&v32.__r_.__value_.__l.__data_ = v14;
    v13->__r_.__value_.__l.__size_ = 0;
    v13->__r_.__value_.__r.__words[2] = 0;
    v13->__r_.__value_.__r.__words[0] = 0;
    v15 = std::string::append(&v32, "");
    v16 = *&v15->__r_.__value_.__l.__data_;
    v33.__r_.__value_.__r.__words[2] = v15->__r_.__value_.__r.__words[2];
    *&v33.__r_.__value_.__l.__data_ = v16;
    v15->__r_.__value_.__l.__size_ = 0;
    v15->__r_.__value_.__r.__words[2] = 0;
    v15->__r_.__value_.__r.__words[0] = 0;
    sub_100007E30(v28, "\r\n");
    if ((v29 & 0x80u) == 0)
    {
      v17 = v28;
    }

    else
    {
      v17 = v28[0];
    }

    if ((v29 & 0x80u) == 0)
    {
      v18 = v29;
    }

    else
    {
      v18 = v28[1];
    }

    v19 = std::string::append(&v33, v17, v18);
    v20 = *&v19->__r_.__value_.__l.__data_;
    v34.__r_.__value_.__r.__words[2] = v19->__r_.__value_.__r.__words[2];
    *&v34.__r_.__value_.__l.__data_ = v20;
    v19->__r_.__value_.__l.__size_ = 0;
    v19->__r_.__value_.__r.__words[2] = 0;
    v19->__r_.__value_.__r.__words[0] = 0;
    sub_100007E30(__p, "\r\nOK\r\n");
    if ((v27 & 0x80u) == 0)
    {
      v21 = __p;
    }

    else
    {
      v21 = __p[0];
    }

    if ((v27 & 0x80u) == 0)
    {
      v22 = v27;
    }

    else
    {
      v22 = __p[1];
    }

    v23 = std::string::append(&v34, v21, v22);
    v24 = *&v23->__r_.__value_.__l.__data_;
    *(a2 + 16) = *(&v23->__r_.__value_.__l + 2);
    *a2 = v24;
    v23->__r_.__value_.__l.__size_ = 0;
    v23->__r_.__value_.__r.__words[2] = 0;
    v23->__r_.__value_.__r.__words[0] = 0;
    if (v27 < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v34.__r_.__value_.__l.__data_);
    }

    if (v29 < 0)
    {
      operator delete(v28[0]);
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

    if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v30.__r_.__value_.__l.__data_);
    }

    return;
  }

  v25 = "\r\nERROR\r\n";
LABEL_39:

  sub_100007E30(a2, v25);
}

void sub_1006AAF38(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (*(v40 - 41) < 0)
  {
    operator delete(*(v40 - 64));
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (*(v40 - 73) < 0)
  {
    operator delete(*(v40 - 96));
  }

  if (a40 < 0)
  {
    operator delete(a35);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  _Unwind_Resume(exception_object);
}

double sub_1006AAFE4(void *a1)
{
  *&result = 0x200000010;
  a1[1] = 0x200000010;
  *a1 = off_100B07030;
  return result;
}

double sub_1006AB040(void *a1)
{
  *&result = 0x200000011;
  a1[1] = 0x200000011;
  *a1 = off_100B07060;
  return result;
}

void sub_1006AB08C(std::string *a1@<X8>)
{
  sub_100007E30(&v15, "\r\n");
  v2 = std::string::append(&v15, "+CGATT: 0");
  v3 = *&v2->__r_.__value_.__l.__data_;
  v16.__r_.__value_.__r.__words[2] = v2->__r_.__value_.__r.__words[2];
  *&v16.__r_.__value_.__l.__data_ = v3;
  v2->__r_.__value_.__l.__size_ = 0;
  v2->__r_.__value_.__r.__words[2] = 0;
  v2->__r_.__value_.__r.__words[0] = 0;
  sub_100007E30(v13, "\r\n");
  if ((v14 & 0x80u) == 0)
  {
    v4 = v13;
  }

  else
  {
    v4 = v13[0];
  }

  if ((v14 & 0x80u) == 0)
  {
    v5 = v14;
  }

  else
  {
    v5 = v13[1];
  }

  v6 = std::string::append(&v16, v4, v5);
  v7 = *&v6->__r_.__value_.__l.__data_;
  v17.__r_.__value_.__r.__words[2] = v6->__r_.__value_.__r.__words[2];
  *&v17.__r_.__value_.__l.__data_ = v7;
  v6->__r_.__value_.__l.__size_ = 0;
  v6->__r_.__value_.__r.__words[2] = 0;
  v6->__r_.__value_.__r.__words[0] = 0;
  sub_100007E30(__p, "\r\nOK\r\n");
  if ((v12 & 0x80u) == 0)
  {
    v8 = __p;
  }

  else
  {
    v8 = __p[0];
  }

  if ((v12 & 0x80u) == 0)
  {
    v9 = v12;
  }

  else
  {
    v9 = __p[1];
  }

  v10 = std::string::append(&v17, v8, v9);
  *a1 = *v10;
  v10->__r_.__value_.__l.__size_ = 0;
  v10->__r_.__value_.__r.__words[2] = 0;
  v10->__r_.__value_.__r.__words[0] = 0;
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v17.__r_.__value_.__l.__data_);
  }

  if (v14 < 0)
  {
    operator delete(v13[0]);
  }

  if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v16.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v15.__r_.__value_.__l.__data_);
  }
}

void sub_1006AB1D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (*(v33 - 25) < 0)
  {
    operator delete(*(v33 - 48));
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  _Unwind_Resume(exception_object);
}

double sub_1006AB250(void *a1)
{
  *&result = 0x200000012;
  a1[1] = 0x200000012;
  *a1 = off_100B07090;
  return result;
}

void sub_1006AB29C(std::string *a1@<X8>)
{
  sub_100007E30(&v15, "\r\n");
  v2 = std::string::append(&v15, "+VTS: (0,1,2,3,4,5,6,7,8,9,*,#),(0 - 600)");
  v3 = *&v2->__r_.__value_.__l.__data_;
  v16.__r_.__value_.__r.__words[2] = v2->__r_.__value_.__r.__words[2];
  *&v16.__r_.__value_.__l.__data_ = v3;
  v2->__r_.__value_.__l.__size_ = 0;
  v2->__r_.__value_.__r.__words[2] = 0;
  v2->__r_.__value_.__r.__words[0] = 0;
  sub_100007E30(v13, "\r\n");
  if ((v14 & 0x80u) == 0)
  {
    v4 = v13;
  }

  else
  {
    v4 = v13[0];
  }

  if ((v14 & 0x80u) == 0)
  {
    v5 = v14;
  }

  else
  {
    v5 = v13[1];
  }

  v6 = std::string::append(&v16, v4, v5);
  v7 = *&v6->__r_.__value_.__l.__data_;
  v17.__r_.__value_.__r.__words[2] = v6->__r_.__value_.__r.__words[2];
  *&v17.__r_.__value_.__l.__data_ = v7;
  v6->__r_.__value_.__l.__size_ = 0;
  v6->__r_.__value_.__r.__words[2] = 0;
  v6->__r_.__value_.__r.__words[0] = 0;
  sub_100007E30(__p, "\r\nOK\r\n");
  if ((v12 & 0x80u) == 0)
  {
    v8 = __p;
  }

  else
  {
    v8 = __p[0];
  }

  if ((v12 & 0x80u) == 0)
  {
    v9 = v12;
  }

  else
  {
    v9 = __p[1];
  }

  v10 = std::string::append(&v17, v8, v9);
  *a1 = *v10;
  v10->__r_.__value_.__l.__size_ = 0;
  v10->__r_.__value_.__r.__words[2] = 0;
  v10->__r_.__value_.__r.__words[0] = 0;
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v17.__r_.__value_.__l.__data_);
  }

  if (v14 < 0)
  {
    operator delete(v13[0]);
  }

  if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v16.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v15.__r_.__value_.__l.__data_);
  }
}

void sub_1006AB3E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (*(v33 - 25) < 0)
  {
    operator delete(*(v33 - 48));
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  _Unwind_Resume(exception_object);
}

double sub_1006AB460(void *a1)
{
  *&result = 0x200000013;
  a1[1] = 0x200000013;
  *a1 = off_100B070C0;
  return result;
}

uint64_t sub_1006AB4BC(uint64_t a1, const char *a2, uint64_t a3)
{
  *(a1 + 8) = 0x200000014;
  *a1 = off_100B070F0;
  *(a1 + 16) = a3;
  *(a1 + 32) = 0;
  v4 = (a1 + 32);
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  memset(v8, 0, sizeof(v8));
  *(a1 + 24) = 0;
  strlcpy(v8, a2, 0x100uLL);
  v5 = strtok(v8, ",");
  if (v5)
  {
    std::string::assign(v4, v5);
    v6 = strtok(0, ",");
    if (v6)
    {
      *(a1 + 56) = atoi(v6);
      *(a1 + 24) = 1;
    }

    else if (os_log_type_enabled(qword_100BCE978, OS_LOG_TYPE_ERROR))
    {
      sub_10085E38C();
    }
  }

  else if (os_log_type_enabled(qword_100BCE978, OS_LOG_TYPE_ERROR))
  {
    sub_10085E3FC();
  }

  return a1;
}

uint64_t sub_1006AB654(uint64_t a1)
{
  if (*(a1 + 24) == 1)
  {
    v2 = *(a1 + 16);
    v3 = *(a1 + 56);
    *(v2 + 582) = (v3 & 0x8000) != 0;
    v4 = qword_100BCE978;
    if (os_log_type_enabled(qword_100BCE978, OS_LOG_TYPE_DEFAULT))
    {
      v5 = "supported";
      if ((v3 & 0x8000) == 0)
      {
        v5 = "not supported";
      }

      v7 = 136446210;
      v8 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "AT XAPL Feature: Audio Input Config is %{public}s", &v7, 0xCu);
      v2 = *(a1 + 16);
    }

    *(v2 + 580) = 257;
    if (qword_100B508E0 != -1)
    {
      sub_10085E46C();
    }

    sub_1005184C0(off_100B508D8, *(a1 + 16));
  }

  return 1;
}

void sub_1006AB770(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 24) == 1)
  {
    if (*(a1 + 56) < 8)
    {
      goto LABEL_17;
    }

    if (qword_100B54090 != -1)
    {
      v13 = a1;
      sub_10085E494();
      a1 = v13;
    }

    if (sub_100389744(qword_100B54088, *(a1 + 16)))
    {
      v3 = qword_100BCE978;
      if (os_log_type_enabled(qword_100BCE978, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf.__r_.__value_.__l.__data_) = 0;
        _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "AT+APLSIRI response enabled", &buf, 2u);
      }

      sub_100007E30(&v17, "\r\n");
      v4 = std::string::insert(&v17, 0, "\r\n+XAPL=iPhone,15");
      v5 = *&v4->__r_.__value_.__l.__data_;
      buf.__r_.__value_.__r.__words[2] = v4->__r_.__value_.__r.__words[2];
      *&buf.__r_.__value_.__l.__data_ = v5;
      v4->__r_.__value_.__l.__size_ = 0;
      v4->__r_.__value_.__r.__words[2] = 0;
      v4->__r_.__value_.__r.__words[0] = 0;
      sub_100007E30(&__p, "\r\nOK\r\n");
      if ((v16 & 0x80u) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p;
      }

      if ((v16 & 0x80u) == 0)
      {
        v7 = v16;
      }

      else
      {
        v7 = v15;
      }
    }

    else
    {
LABEL_17:
      v8 = qword_100BCE978;
      if (os_log_type_enabled(qword_100BCE978, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf.__r_.__value_.__l.__data_) = 0;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "AT+APLSIRI response disabled", &buf, 2u);
      }

      sub_100007E30(&v17, "\r\n");
      v9 = std::string::insert(&v17, 0, "\r\n+XAPL=iPhone,7");
      v10 = *&v9->__r_.__value_.__l.__data_;
      buf.__r_.__value_.__r.__words[2] = v9->__r_.__value_.__r.__words[2];
      *&buf.__r_.__value_.__l.__data_ = v10;
      v9->__r_.__value_.__l.__size_ = 0;
      v9->__r_.__value_.__r.__words[2] = 0;
      v9->__r_.__value_.__r.__words[0] = 0;
      sub_100007E30(&__p, "\r\nOK\r\n");
      if ((v16 & 0x80u) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p;
      }

      if ((v16 & 0x80u) == 0)
      {
        v7 = v16;
      }

      else
      {
        v7 = v15;
      }
    }

    v11 = std::string::append(&buf, p_p, v7);
    v12 = *&v11->__r_.__value_.__l.__data_;
    *(a2 + 16) = *(&v11->__r_.__value_.__l + 2);
    *a2 = v12;
    v11->__r_.__value_.__l.__size_ = 0;
    v11->__r_.__value_.__r.__words[2] = 0;
    v11->__r_.__value_.__r.__words[0] = 0;
    if (v16 < 0)
    {
      operator delete(__p);
    }

    if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(buf.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v17.__r_.__value_.__l.__data_);
    }
  }

  else
  {

    sub_100007E30(a2, "\r\nERROR\r\n");
  }
}

void sub_1006AB9C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1006ABA20(uint64_t a1, const char *a2, uint64_t a3)
{
  *(a1 + 8) = 0x200000015;
  *a1 = off_100B07120;
  *(a1 + 16) = a3;
  *(a1 + 24) = 1;
  *(a1 + 28) = 0;
  memset(v12, 0, sizeof(v12));
  strlcpy(v12, a2, 0x100uLL);
  v4 = strtok(v12, ",");
  if (v4)
  {
    v5 = atoi(v4);
    v6 = strtok(0, ",");
    v7 = strtok(0, ",");
    if (v6 && v7)
    {
      while (1)
      {
        v8 = *v6;
        if ((v8 - 49) >= 5)
        {
          break;
        }

        v9 = *v7;
        v10 = *(a1 + 28);
        *(a1 + 32 + 4 * v10) = (v8 - 48);
        *(a1 + 288 + v10) = v9;
        ++*(a1 + 28);
        v6 = strtok(0, ",");
        v7 = strtok(0, ",");
        if (!v6 || !v7)
        {
          goto LABEL_13;
        }
      }

      if (os_log_type_enabled(qword_100BCE978, OS_LOG_TYPE_ERROR))
      {
        sub_10085E4A8();
      }
    }

LABEL_13:
    if (v5 != *(a1 + 28))
    {
      *(a1 + 24) = 0;
      if (os_log_type_enabled(qword_100BCE978, OS_LOG_TYPE_ERROR))
      {
        sub_10085E518();
      }
    }
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE978, OS_LOG_TYPE_ERROR))
    {
      sub_10085E588();
    }

    *(a1 + 24) = 0;
  }

  return a1;
}

BOOL sub_1006ABC40(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((*(v2 + 580) & 1) == 0)
  {
    result = os_log_type_enabled(qword_100BCE978, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    sub_10085E5F8();
    return 0;
  }

  if (*(a1 + 24) != 1 || sub_1000DFB74(v2, 0x80000u) == 4)
  {
    return 0;
  }

  if (*(a1 + 28) < 1)
  {
    return 1;
  }

  v4 = 0;
  v5 = a1 + 288;
  while (1)
  {
    v6 = *(v5 + 4 * v4 - 256);
    if (v6 <= 2)
    {
      break;
    }

    switch(v6)
    {
      case 3:
        v13 = qword_100BCE978;
        if (os_log_type_enabled(qword_100BCE978, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          v8 = buf;
          v9 = v13;
          v10 = "A65 rebooting";
          goto LABEL_29;
        }

        break;
      case 4:
        v12 = qword_100BCE978;
        if (os_log_type_enabled(qword_100BCE978, OS_LOG_TYPE_INFO))
        {
          v15 = 0;
          v8 = &v15;
          v9 = v12;
          v10 = "Button 1 action";
          goto LABEL_29;
        }

        break;
      case 5:
        v7 = qword_100BCE978;
        if (os_log_type_enabled(qword_100BCE978, OS_LOG_TYPE_INFO))
        {
          v14 = 0;
          v8 = &v14;
          v9 = v7;
          v10 = "Button 2 action";
LABEL_29:
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, v10, v8, 2u);
        }

        break;
      default:
        goto LABEL_35;
    }

LABEL_30:
    if (++v4 >= *(a1 + 28))
    {
      return 1;
    }
  }

  if (v6 == 1)
  {
    sub_10053F158(*(a1 + 16), (10 * *(v5 + v4) + 42) & 0xFE);
    if (qword_100B508E0 != -1)
    {
      sub_10085E46C();
    }

    sub_100518C44(off_100B508D8, *(a1 + 16));
    goto LABEL_30;
  }

  if (v6 == 2)
  {
    v11 = *(v5 + v4);
    if (v11 == 49)
    {
      sub_10053F320(*(a1 + 16), 1);
    }

    else if (v11 == 48)
    {
      sub_10053F320(*(a1 + 16), 0);
      if (qword_100B508E0 != -1)
      {
        sub_10085E46C();
      }

      sub_1005189F4(off_100B508D8, *(a1 + 16));
    }

    goto LABEL_30;
  }

LABEL_35:
  if (os_log_type_enabled(qword_100BCE978, OS_LOG_TYPE_ERROR))
  {
    sub_10085E62C();
  }

  result = 0;
  *(a1 + 24) = 0;
  return result;
}

_BYTE *sub_1006ABEC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if ((*(a2 + 580) & 1) == 0)
  {
    if (os_log_type_enabled(qword_100BCE978, OS_LOG_TYPE_ERROR))
    {
      sub_10085E5F8();
    }

    return sub_100007E30(a3, "\r\nERROR\r\n");
  }

  if (*(a1 + 24) != 1)
  {
    if (os_log_type_enabled(qword_100BCE978, OS_LOG_TYPE_ERROR))
    {
      sub_10085E660();
    }

    return sub_100007E30(a3, "\r\nERROR\r\n");
  }

  return sub_100007E30(a3, "\r\nOK\r\n");
}

uint64_t sub_1006ABF7C(uint64_t a1, const char *a2, uint64_t a3)
{
  *(a1 + 8) = 0x200000017;
  *a1 = off_100B07150;
  *(a1 + 16) = a3;
  *(a1 + 24) = 0;
  memset(v5, 0, sizeof(v5));
  strlcpy(v5, a2, 0x100uLL);
  if (LOBYTE(v5[0]) == 49)
  {
    *(a1 + 24) = 1;
  }

  return a1;
}

uint64_t sub_1006AC050(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(v1 + 580);
  if (v2)
  {
    *(v1 + 581) = *(a1 + 24);
  }

  else if (os_log_type_enabled(qword_100BCE978, OS_LOG_TYPE_ERROR))
  {
    sub_10085E694();
  }

  return v2;
}

_BYTE *sub_1006AC0B0@<X0>(uint64_t a1@<X1>, _BYTE *a2@<X8>)
{
  if (*(a1 + 580))
  {

    return sub_100007E30(a2, "\r\nOK\r\n");
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE978, OS_LOG_TYPE_ERROR))
    {
      sub_10085E694();
    }

    return sub_100007E30(a2, "\r\nERROR\r\n");
  }
}

std::string *sub_1006AC138(std::string *a1, const std::string::value_type *a2, std::string::size_type a3)
{
  a1->__r_.__value_.__l.__size_ = 0x200000016;
  a1->__r_.__value_.__r.__words[0] = off_100B07180;
  a1->__r_.__value_.__r.__words[2] = a3;
  a1[1].__r_.__value_.__r.__words[0] = 0;
  a1[1].__r_.__value_.__l.__size_ = 0;
  a1[1].__r_.__value_.__r.__words[2] = 0;
  std::string::assign(a1 + 1, a2);
  return a1;
}

void sub_1006AC1A4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 47) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1006AC1C4(uint64_t a1)
{
  v1 = *(*(a1 + 16) + 580);
  if ((v1 & 1) == 0 && os_log_type_enabled(qword_100BCE978, OS_LOG_TYPE_ERROR))
  {
    sub_10085E6C8();
  }

  return v1;
}

_BYTE *sub_1006AC218@<X0>(uint64_t a1@<X1>, _BYTE *a2@<X8>)
{
  if (*(a1 + 580))
  {

    return sub_100007E30(a2, "\r\nOK\r\n");
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE978, OS_LOG_TYPE_ERROR))
    {
      sub_10085E6C8();
    }

    return sub_100007E30(a2, "\r\nERROR\r\n");
  }
}

uint64_t sub_1006AC2A0(uint64_t a1, const char *a2, uint64_t a3)
{
  *(a1 + 8) = 0x200000018;
  *a1 = off_100B071B0;
  *(a1 + 16) = a3;
  memset(v12, 0, sizeof(v12));
  strlcpy(v12, a2, 0x100uLL);
  v4 = strtok(v12, ",");
  if (v4)
  {
    v5 = atoi(v4);
    v6 = strtok(0, ",");
    v7 = strtok(0, ",");
    if (v6 && v7)
    {
      while (1)
      {
        v8 = *v6;
        if ((v8 - 49) >= 3)
        {
          break;
        }

        v9 = *v7;
        v10 = *(a1 + 28);
        *(a1 + 32 + 4 * v10) = (v8 - 48);
        *(a1 + 288 + v10) = v9;
        ++*(a1 + 28);
        v6 = strtok(0, ",");
        v7 = strtok(0, ",");
        if (!v6 || !v7)
        {
          goto LABEL_13;
        }
      }

      if (os_log_type_enabled(qword_100BCE978, OS_LOG_TYPE_ERROR))
      {
        sub_10085E6FC();
      }
    }

LABEL_13:
    if (v5 != *(a1 + 28))
    {
      *(a1 + 24) = 0;
      if (os_log_type_enabled(qword_100BCE978, OS_LOG_TYPE_ERROR))
      {
        sub_10085E76C();
      }
    }
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE978, OS_LOG_TYPE_ERROR))
    {
      sub_10085E7DC();
    }

    *(a1 + 24) = 0;
  }

  return a1;
}

BOOL sub_1006AC4B4(uint64_t a1)
{
  if ((*(*(a1 + 16) + 580) & 1) == 0)
  {
    result = os_log_type_enabled(qword_100BCE978, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    sub_10085E84C();
    return 0;
  }

  if (*(a1 + 24) != 1)
  {
    return 0;
  }

  if (*(a1 + 28) < 1)
  {
    return 1;
  }

  v2 = 0;
  v3 = a1 + 288;
  while (1)
  {
    v4 = *(v3 + 4 * v2 - 256);
    if (v4 == 3)
    {
      v6 = qword_100BCE978;
      if (os_log_type_enabled(qword_100BCE978, OS_LOG_TYPE_INFO))
      {
        *v8 = 0;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "A65 rebooting", v8, 2u);
      }

      goto LABEL_19;
    }

    if (v4 == 2)
    {
      v5 = *(v3 + v2);
      if (v5 == 49)
      {
        sub_10053F320(*(a1 + 16), 1);
      }

      else if (v5 == 48)
      {
        sub_10053F320(*(a1 + 16), 0);
        if (qword_100B508E0 != -1)
        {
          sub_10085E46C();
        }

        sub_1005189F4(off_100B508D8, *(a1 + 16));
      }

      goto LABEL_19;
    }

    if (v4 != 1)
    {
      break;
    }

    sub_10053F158(*(a1 + 16), (10 * *(v3 + v2) + 42) & 0xFE);
    if (qword_100B508E0 != -1)
    {
      sub_10085E46C();
    }

    sub_100518C44(off_100B508D8, *(a1 + 16));
LABEL_19:
    if (++v2 >= *(a1 + 28))
    {
      return 1;
    }
  }

  if (os_log_type_enabled(qword_100BCE978, OS_LOG_TYPE_ERROR))
  {
    sub_10085E880();
  }

  result = 0;
  *(a1 + 24) = 0;
  return result;
}

_BYTE *sub_1006AC69C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if ((*(a2 + 580) & 1) == 0)
  {
    if (os_log_type_enabled(qword_100BCE978, OS_LOG_TYPE_ERROR))
    {
      sub_10085E5F8();
    }

    return sub_100007E30(a3, "\r\nERROR\r\n");
  }

  if (*(a1 + 24) != 1)
  {
    if (os_log_type_enabled(qword_100BCE978, OS_LOG_TYPE_ERROR))
    {
      sub_10085E660();
    }

    return sub_100007E30(a3, "\r\nERROR\r\n");
  }

  return sub_100007E30(a3, "\r\nOK\r\n");
}

double sub_1006AC758(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *&result = 0x200000019;
  *(a1 + 8) = 0x200000019;
  *a1 = off_100B071E0;
  *(a1 + 16) = a3;
  *(a1 + 24) = 0;
  return result;
}

uint64_t sub_1006AC78C(uint64_t a1)
{
  v1 = *(*(a1 + 16) + 580);
  if (v1)
  {
    if (qword_100B54090 != -1)
    {
      sub_10085E494();
    }

    *(a1 + 24) = sub_100389744(qword_100B54088, *(a1 + 16));
  }

  else if (os_log_type_enabled(qword_100BCE978, OS_LOG_TYPE_ERROR))
  {
    sub_10085E8B4();
  }

  return v1;
}

void sub_1006AC814(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(*(a1 + 16) + 580))
  {
    *__s = 0;
    sprintf(__s, "%1d", *(a1 + 24));
    sub_100007E30(&v19, "\r\n");
    v3 = std::string::append(&v19, "+APLSIRI:");
    v4 = *&v3->__r_.__value_.__l.__data_;
    v20.__r_.__value_.__r.__words[2] = v3->__r_.__value_.__r.__words[2];
    *&v20.__r_.__value_.__l.__data_ = v4;
    v3->__r_.__value_.__l.__size_ = 0;
    v3->__r_.__value_.__r.__words[2] = 0;
    v3->__r_.__value_.__r.__words[0] = 0;
    v5 = std::string::append(&v20, __s);
    v6 = *&v5->__r_.__value_.__l.__data_;
    v21.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
    *&v21.__r_.__value_.__l.__data_ = v6;
    v5->__r_.__value_.__l.__size_ = 0;
    v5->__r_.__value_.__r.__words[2] = 0;
    v5->__r_.__value_.__r.__words[0] = 0;
    sub_100007E30(v17, "\r\n");
    if ((v18 & 0x80u) == 0)
    {
      v7 = v17;
    }

    else
    {
      v7 = v17[0];
    }

    if ((v18 & 0x80u) == 0)
    {
      v8 = v18;
    }

    else
    {
      v8 = v17[1];
    }

    v9 = std::string::append(&v21, v7, v8);
    v10 = *&v9->__r_.__value_.__l.__data_;
    v22.__r_.__value_.__r.__words[2] = v9->__r_.__value_.__r.__words[2];
    *&v22.__r_.__value_.__l.__data_ = v10;
    v9->__r_.__value_.__l.__size_ = 0;
    v9->__r_.__value_.__r.__words[2] = 0;
    v9->__r_.__value_.__r.__words[0] = 0;
    sub_100007E30(__p, "\r\nOK\r\n");
    if ((v16 & 0x80u) == 0)
    {
      v11 = __p;
    }

    else
    {
      v11 = __p[0];
    }

    if ((v16 & 0x80u) == 0)
    {
      v12 = v16;
    }

    else
    {
      v12 = __p[1];
    }

    v13 = std::string::append(&v22, v11, v12);
    v14 = *&v13->__r_.__value_.__l.__data_;
    *(a2 + 16) = *(&v13->__r_.__value_.__l + 2);
    *a2 = v14;
    v13->__r_.__value_.__l.__size_ = 0;
    v13->__r_.__value_.__r.__words[2] = 0;
    v13->__r_.__value_.__r.__words[0] = 0;
    if (v16 < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v22.__r_.__value_.__l.__data_);
    }

    if (v18 < 0)
    {
      operator delete(v17[0]);
    }

    if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v21.__r_.__value_.__l.__data_);
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

  else
  {

    sub_100007E30(a2, "\r\nERROR\r\n");
  }
}

void sub_1006AC9E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (*(v33 - 25) < 0)
  {
    operator delete(*(v33 - 48));
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (*(v33 - 57) < 0)
  {
    operator delete(*(v33 - 80));
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1006ACA78(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  *(a1 + 8) = 0x20000001ALL;
  *a1 = off_100B07210;
  *(a1 + 16) = a3;
  *(a1 + 24) = 256;
  if (!a2 || (*(a3 + 580) & 1) == 0)
  {
    if (os_log_type_enabled(qword_100BCE978, OS_LOG_TYPE_ERROR))
    {
      sub_10085E8E8();
      if (!a2)
      {
        return a1;
      }
    }

    else if (!a2)
    {
      return a1;
    }
  }

  if (*a2 == 49)
  {
    *(a1 + 24) = 1;
  }

  return a1;
}

BOOL sub_1006ACB30(uint64_t a1)
{
  v2 = qword_100BCE978;
  if (os_log_type_enabled(qword_100BCE978, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a1 + 24))
    {
      v3 = "enabled";
    }

    else
    {
      v3 = "disabled";
    }

    v5 = 136315138;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Siri eyes free mode set to %s", &v5, 0xCu);
  }

  if (*(*(a1 + 16) + 580) == 1 && (*(a1 + 25) & 1) != 0)
  {
    if (qword_100B54090 != -1)
    {
      sub_10085E950();
    }

    sub_100389ED8(qword_100B54088, *(a1 + 16), *(a1 + 24));
    return 1;
  }

  else
  {
    result = os_log_type_enabled(qword_100BCE978, OS_LOG_TYPE_ERROR);
    if (result)
    {
      sub_10085E91C();
      return 0;
    }
  }

  return result;
}

_BYTE *sub_1006ACC68@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  if (*(*(a1 + 16) + 580) == 1 && (*(a1 + 25) & 1) != 0)
  {
    v3 = qword_100BCE978;
    if (os_log_type_enabled(qword_100BCE978, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Responding with AT_OK for APLEFM", v5, 2u);
    }

    return sub_100007E30(a2, "\r\nOK\r\n");
  }

  else
  {

    return sub_100007E30(a2, "\r\nERROR\r\n");
  }
}

uint64_t sub_1006ACD28(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  *(a1 + 8) = 0x20000001BLL;
  *a1 = off_100B07240;
  *(a1 + 16) = a3;
  *(a1 + 24) = 256;
  if (!a2 || (*(a3 + 580) & 1) == 0)
  {
    if (os_log_type_enabled(qword_100BCE978, OS_LOG_TYPE_ERROR))
    {
      sub_10085E978();
      if (!a2)
      {
        return a1;
      }
    }

    else if (!a2)
    {
      return a1;
    }
  }

  if (*a2 == 49)
  {
    *(a1 + 24) = 1;
  }

  return a1;
}

BOOL sub_1006ACDE0(uint64_t a1)
{
  if (*(*(a1 + 16) + 580) == 1 && (*(a1 + 25) & 1) != 0)
  {
    if (qword_100B54090 != -1)
    {
      v2 = a1;
      sub_10085E494();
      a1 = v2;
    }

    sub_100389F68(qword_100B54088, *(a1 + 16), *(a1 + 24));
    return 1;
  }

  else
  {
    result = os_log_type_enabled(qword_100BCE978, OS_LOG_TYPE_ERROR);
    if (result)
    {
      sub_10085E9AC();
      return 0;
    }
  }

  return result;
}

_BYTE *sub_1006ACE80@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  if (*(*(a1 + 16) + 580) == 1 && (*(a1 + 25) & 1) != 0)
  {
    v3 = qword_100BCE978;
    if (os_log_type_enabled(qword_100BCE978, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Responsding with AT_OK for APLNRSTAT", v5, 2u);
    }

    return sub_100007E30(a2, "\r\nOK\r\n");
  }

  else
  {

    return sub_100007E30(a2, "\r\nERROR\r\n");
  }
}

uint64_t sub_1006ACF40(uint64_t a1)
{
  *a1 = off_100B06FD0;
  v3 = (a1 + 40);
  sub_1006AD258(&v3);
  return a1;
}

void sub_1006ACF98(uint64_t a1)
{
  *a1 = off_100B06FD0;
  v1 = (a1 + 40);
  sub_1006AD258(&v1);
  operator delete();
}

uint64_t sub_1006AD004(uint64_t a1)
{
  *a1 = off_100B070F0;
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  return a1;
}

void sub_1006AD054(uint64_t a1)
{
  *a1 = off_100B070F0;
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  operator delete();
}

uint64_t sub_1006AD0F4(uint64_t a1)
{
  *a1 = off_100B07180;
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  return a1;
}

void sub_1006AD144(uint64_t a1)
{
  *a1 = off_100B07180;
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  operator delete();
}

uint64_t sub_1006AD214(uint64_t a1)
{
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

void sub_1006AD258(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v4 -= 72;
        sub_1006AD2E0(v1, v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void sub_1006AD2E0(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 63) < 0)
  {
    operator delete(*(a2 + 40));
  }

  if (*(a2 + 31) < 0)
  {
    v3 = *(a2 + 8);

    operator delete(v3);
  }
}

void sub_1006AD4D8()
{
  v0 = &qword_100BC6FD8;
  v1 = -192;
  do
  {
    if (*(v0 + 23) < 0)
    {
      operator delete(*v0);
    }

    v0 -= 4;
    v1 += 32;
  }

  while (v1);
}

void sub_1006AD51C()
{
  v0 = objc_autoreleasePoolPush();
  dword_100BC6F30 = 1;
  sub_100007E30(&qword_100BC6F38, "");
  dword_100BC6F50 = 2;
  sub_100007E30(qword_100BC6F58, "GSM");
  dword_100BC6F70 = 4;
  sub_100007E30(byte_100BC6F78, "ASCII");
  dword_100BC6F90 = 8;
  sub_100007E30(byte_100BC6F98, "8859-1");
  dword_100BC6FB0 = 16;
  sub_100007E30(byte_100BC6FB8, "UCS2");
  dword_100BC6FD0 = 32;
  sub_100007E30(&qword_100BC6FD8, "UTF-8");
  __cxa_atexit(sub_1006AD4D8, 0, &_mh_execute_header);

  objc_autoreleasePoolPop(v0);
}

void *sub_1006AD640(void *a1, uint64_t a2, uint64_t a3)
{
  *a1 = 0;
  v5 = *a3;
  if (*a3 > 1)
  {
    if (v5 == 2)
    {
      v6 = "CMD";
      goto LABEL_11;
    }

    if (v5 == 3)
    {
      return a1;
    }
  }

  else
  {
    if (!v5)
    {
      v6 = "TEST";
      goto LABEL_11;
    }

    if (v5 == 1)
    {
      v6 = "READ";
LABEL_11:
      v24 = 0;
      v22 = 0u;
      v23 = 0u;
      *__dst = 0u;
      v8 = *(a3 + 24);
      v9 = *(*(a3 + 32) + 8) - v8 + *(*(a3 + 32) + 18);
      if (v9 >= 1)
      {
        if (v9 >= 0x32)
        {
          v10 = qword_100BCE978;
          if (os_log_type_enabled(qword_100BCE978, OS_LOG_TYPE_INFO))
          {
            LOWORD(v15) = 0;
            _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Truncating data when copying into params", &v15, 2u);
            v8 = *(a3 + 24);
          }

          v9 = 49;
        }

        strncpy(__dst, v8, v9);
      }

      v11 = qword_100BCE978;
      if (os_log_type_enabled(qword_100BCE978, OS_LOG_TYPE_DEFAULT))
      {
        v12 = *(a3 + 8);
        v15 = 136446722;
        v16 = v6;
        v17 = 2082;
        v18 = v12;
        v19 = 2082;
        v20 = __dst;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Received AT %{public}s command %{public}s %{public}s", &v15, 0x20u);
      }

      v13 = *(a3 + 8);
      if (!strncmp(v13, "+CGMI", 5uLL))
      {
        operator new();
      }

      if (!strncmp(v13, "+CGMM", 5uLL))
      {
        operator new();
      }

      if (!strncmp(v13, "+CGMR", 5uLL))
      {
        operator new();
      }

      if (!strncmp(v13, "+CGSN", 5uLL))
      {
        operator new();
      }

      if (!strncmp(v13, "+CSCS", 5uLL))
      {
        operator new();
      }

      if (!strncmp(v13, "+CIMI", 5uLL))
      {
        operator new();
      }

      if (!strncmp(v13, "+GMI", 4uLL))
      {
        operator new();
      }

      if (!strncmp(v13, "+GMM", 4uLL))
      {
        operator new();
      }

      if (!strncmp(v13, "+GMR", 4uLL))
      {
        operator new();
      }

      if (!strncmp(v13, "+GSN", 4uLL))
      {
        operator new();
      }

      if (!strncmp(v13, "+CREG", 5uLL))
      {
        operator new();
      }

      if (!strncmp(v13, "+COPS", 5uLL))
      {
        operator new();
      }

      if (!strncmp(v13, "+CPAS", 5uLL))
      {
        operator new();
      }

      if (!strncmp(v13, "+CPIN", 5uLL))
      {
        operator new();
      }

      if (!strncmp(v13, "+CBC", 4uLL))
      {
        operator new();
      }

      if (!strncmp(v13, "+CSQ", 4uLL))
      {
        operator new();
      }

      if (!strncmp(v13, "+CPBS", 5uLL))
      {
        operator new();
      }

      if (!strncmp(v13, "+CPBR", 5uLL))
      {
        operator new();
      }

      if (strncmp(v13, "+CPBF", 5uLL) && strncmp(v13, "+CPBW", 5uLL))
      {
        if (!strncmp(v13, "+CCLK", 5uLL))
        {
          operator new();
        }

        if (!strncmp(v13, "+CMEE", 5uLL))
        {
          operator new();
        }

        if (!strncmp(v13, "+CGATT", 6uLL))
        {
          operator new();
        }

        if (!strncmp(v13, "+VTS", 4uLL))
        {
          operator new();
        }

        if (!strncmp(v13, "+VTD", 4uLL))
        {
          operator new();
        }

        if (!strncmp(v13, "+XAPL", 5uLL))
        {
          operator new();
        }

        if (!strncmp(v13, "+IPHONEACCEV", 0xCuLL))
        {
          operator new();
        }

        if (!strncmp(v13, "+IPHONEEV", 9uLL))
        {
          operator new();
        }

        if (!strncmp(v13, "+IPHONEACCINDICATOR", 0x13uLL))
        {
          operator new();
        }

        if (!strncmp(v13, "+IPHONEACCNAME", 0xEuLL))
        {
          operator new();
        }

        if (!strncmp(v13, "+APLSIRI", 8uLL))
        {
          operator new();
        }

        if (!strncmp(v13, "+APLNRSTAT", 0xAuLL))
        {
          operator new();
        }

        if (!strncmp(v13, "+APLEFM", 7uLL))
        {
          operator new();
        }
      }

      return a1;
    }
  }

  v7 = qword_100BCE978;
  if (os_log_type_enabled(qword_100BCE978, OS_LOG_TYPE_ERROR))
  {
    sub_10085EA24(v7);
  }

  return a1;
}

uint64_t *sub_1006AE18C(uint64_t *a1)
{
  v2 = *a1;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t sub_1006AE1DC(uint64_t a1, uint64_t a2)
{
  if (!*a1)
  {
    return 0;
  }

  if ((*(*a1 + 8) - 13) <= 1)
  {
    v4 = sub_10000C798();
    v5 = (*(*v4 + 56))(v4, 2);
    if (v5)
    {
      sub_1006AE29C(v5, a2);
    }
  }

  v6 = *(**a1 + 16);

  return v6();
}

void sub_1006AE29C(uint64_t a1, uint64_t a2)
{
  if ((sub_10053F074(a2) & 1) == 0)
  {
    v3 = qword_100BCE978;
    if (os_log_type_enabled(qword_100BCE978, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000E5A58(a2, __p);
      if (v6 >= 0)
      {
        v4 = __p;
      }

      else
      {
        v4 = __p[0];
      }

      *buf = 136446210;
      v8 = v4;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Device %{public}s now supports contact sync", buf, 0xCu);
      if (v6 < 0)
      {
        operator delete(__p[0]);
      }
    }

    sub_10054097C(a2);
    sub_10053E630(a2);
  }
}

void sub_1006AE3A4(uint64_t a1@<X1>, uint64_t a2@<X2>, char *a3@<X8>)
{
  if (a1 && *a2)
  {
    (*(**a2 + 24))();
  }

  else
  {
    a3[23] = 9;
    strcpy(a3, "\r\nERROR\r\n");
  }
}

BOOL sub_1006AE3F8(uint64_t a1, uint64_t a2, int a3)
{
  v3 = 1;
  *(a1 + 16) = 1;
  *(a1 + 20) = 0;
  *(a1 + 24) = 0;
  if (*a1 != a3)
  {
    v7 = *(a1 + 8);
    if (v7)
    {
      *a1 = 0;
      (*(*v7 + 8))(v7);
      *(a1 + 8) = 0;
      *(a1 + 16) = 1;
      *(a1 + 20) = 0;
      *(a1 + 24) = 0;
    }

    v8 = a3 - 1;
    if (a3 - 1) <= 0xE && ((0x7441u >> v8))
    {
      v9 = dword_1008C4CC0[v8];
      v13[0] = 0;
      v13[1] = 0;
      sub_1006A5878(v13, a2);
      v10 = sub_1006A5A08(v13, v9, 2, 0, 0xFFFFLL, 0x14u, 1);
      *(a1 + 8) = v10;
      v3 = v10 != 0;
      if (v10)
      {
        *a1 = a3;
      }

      else
      {
        v12 = qword_100BCE978;
        if (os_log_type_enabled(qword_100BCE978, OS_LOG_TYPE_ERROR))
        {
          sub_10085EA68(v12);
        }
      }
    }

    else
    {
      return 0;
    }
  }

  return v3;
}

uint64_t sub_1006AE52C(uint64_t a1)
{
  result = *(a1 + 8);
  if (result)
  {
    *a1 = 0;
    result = (*(*result + 8))(result);
    *(a1 + 8) = 0;
    *(a1 + 16) = 1;
    *(a1 + 20) = 0;
    *(a1 + 24) = 0;
  }

  return result;
}

uint64_t sub_1006AE590(void *a1, uint64_t a2)
{
  if (!a1[1])
  {
    sub_1006AE3F8(a1, a2, 11);
  }

  return *a1;
}

uint64_t sub_1006AE5C8(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  if (!v4)
  {
    sub_1006AE3F8(a1, a2, 11);
    v4 = *(a1 + 8);
    if (!v4)
    {
      return 0;
    }
  }

  v5 = (*(*v4 + 16))(v4);
  if (v5 >= 0x3E9)
  {
    sub_1000DEEA4(a2, __s1);
    if (v12 < 0)
    {
      v7 = *__s1;
      v8 = strncmp(*__s1, "MB PhoneSystem", 0xEuLL);
      operator delete(v7);
      if (v8)
      {
        return v5;
      }
    }

    else if (*__s1 != 0x656E6F685020424DLL || *&__s1[6] != 0x6D6574737953656ELL)
    {
      return v5;
    }

    v9 = qword_100BCE978;
    if (os_log_type_enabled(qword_100BCE978, OS_LOG_TYPE_DEFAULT))
    {
      *__s1 = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Restricting contacts to 1000 on kit matching MB PhoneSystem", __s1, 2u);
    }

    return 1000;
  }

  return v5;
}

uint64_t sub_1006AE714(uint64_t a1, uint64_t a2, _DWORD *a3, _DWORD *a4, _DWORD *a5, _DWORD *a6)
{
  if (!*(a1 + 8))
  {
    sub_1006AE3F8(a1, a2, 11);
  }

  v12 = sub_1006AE5C8(a1, a2);
  *a4 = v12;
  *a3 = v12 != 0;
  *a5 = 50;
  *a6 = 50;
  return 1;
}

uint64_t sub_1006AE79C(uint64_t a1, unsigned int a2)
{
  if (*(a1 + 16) <= a2)
  {
    v4 = *(a1 + 20);
  }

  else
  {
    v4 = 0;
    *(a1 + 16) = 1;
    *(a1 + 20) = 0;
    *(a1 + 24) = 0;
  }

  for (i = 1; ; i = 0)
  {
    while (1)
    {
      v6 = sub_1006A6344(*(a1 + 8), v4);
      if (!v6)
      {
        break;
      }

      if (*(a1 + 24) < (0x6DB6DB6DB6DB6DB7 * ((*(v6 + 240) - *(v6 + 232)) >> 3)))
      {
        v7 = *(a1 + 16);
        if (v7 == a2)
        {
          return 1;
        }

        *(a1 + 16) = v7 + 1;
        i = 1;
      }

      sub_1006A63C8(*(a1 + 8), *(a1 + 20));
      v4 = *(a1 + 20) + 1;
      *(a1 + 20) = v4;
    }

    if ((i & 1) == 0)
    {
      break;
    }

    v4 = 0;
    *(a1 + 20) = 0;
    ++*(a1 + 24);
  }

  return 0;
}

uint64_t sub_1006AE898(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int a4, uint64_t *a5)
{
  if (*(a1 + 8))
  {
    while (sub_1006AE79C(a1, a3))
    {
      v9 = sub_1006A6344(*(a1 + 8), *(a1 + 20));
      v37 = 0;
      v35 = 0u;
      *v36 = 0u;
      *v34 = 0u;
      sub_10042A6A4(v9, *(a1 + 24), v34);
      if ((SBYTE7(v35) & 0x80u) == 0)
      {
        v10 = v34;
      }

      else
      {
        v10 = v34[0];
      }

      v11 = *v10 != 43;
      if (DWORD2(v35) == 4)
      {
        v12 = 3;
      }

      else
      {
        v12 = 0;
      }

      if (DWORD2(v35) == 3)
      {
        v13 = 2;
      }

      else
      {
        v13 = v12;
      }

      if ((DWORD2(v35) - 1) < 2)
      {
        v14 = 1;
      }

      else
      {
        v14 = v13;
      }

      memset(&__dst, 0, sizeof(__dst));
      if (*(v9 + 39) < 0)
      {
        sub_100008904(&__dst, *(v9 + 16), *(v9 + 24));
      }

      else
      {
        __dst = *(v9 + 16);
      }

      size = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
      if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        size = __dst.__r_.__value_.__l.__size_;
      }

      if (size)
      {
        v16 = HIBYTE(v37);
        if (v37 < 0)
        {
          v16 = v36[1];
        }

        if (v16)
        {
          std::operator+<char>();
          v17 = std::string::append(&v32, ")");
          v18 = *&v17->__r_.__value_.__l.__data_;
          *&buf[16] = *(&v17->__r_.__value_.__l + 2);
          *buf = v18;
          v17->__r_.__value_.__l.__size_ = 0;
          v17->__r_.__value_.__r.__words[2] = 0;
          v17->__r_.__value_.__r.__words[0] = 0;
          if (buf[23] >= 0)
          {
            v19 = buf;
          }

          else
          {
            v19 = *buf;
          }

          if (buf[23] >= 0)
          {
            v20 = buf[23];
          }

          else
          {
            v20 = *&buf[8];
          }

          std::string::append(&__dst, v19, v20);
          if ((buf[23] & 0x80000000) != 0)
          {
            operator delete(*buf);
          }

          if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v32.__r_.__value_.__l.__data_);
          }
        }
      }

      v21 = qword_100BCE978;
      if (os_log_type_enabled(qword_100BCE978, OS_LOG_TYPE_INFO))
      {
        p_dst = &__dst;
        if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          p_dst = __dst.__r_.__value_.__r.__words[0];
        }

        v23 = *(a1 + 20);
        v24 = *(a1 + 24);
        *buf = 67109890;
        *&buf[4] = a3;
        *&buf[8] = 2082;
        *&buf[10] = p_dst;
        *&buf[18] = 1024;
        *&buf[20] = v23;
        v39 = 2048;
        v40 = v24;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "Found index #%u (%{public}s) at entry <%u,%zu>", buf, 0x22u);
      }

      if (SBYTE7(v35) < 0)
      {
        sub_100008904(v30, v34[0], v34[1]);
      }

      else
      {
        *v30 = *v34;
        v31 = v35;
      }

      if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
      {
        sub_100008904(&__p, __dst.__r_.__value_.__l.__data_, __dst.__r_.__value_.__l.__size_);
      }

      else
      {
        __p = __dst;
      }

      sub_1006AEDC4(buf, a3, v30, v11, &__p, v14);
      sub_1006AED3C(a5, buf);
      if (v42 < 0)
      {
        operator delete(v41);
      }

      if (SBYTE5(v40) < 0)
      {
        operator delete(*&buf[8]);
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v31) < 0)
      {
        operator delete(v30[0]);
      }

      sub_1006A63C8(*(a1 + 8), *(a1 + 20));
      if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__dst.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v37) < 0)
      {
        operator delete(v36[0]);
      }

      if (SBYTE7(v35) < 0)
      {
        operator delete(v34[0]);
      }

      if (++a3 > a4)
      {
        return 1;
      }
    }

    v25 = qword_100BCE978;
    if (os_log_type_enabled(qword_100BCE978, OS_LOG_TYPE_DEFAULT))
    {
      v26 = *(a1 + 20);
      v27 = *(a1 + 24);
      *buf = 67109632;
      *&buf[4] = a3;
      *&buf[8] = 1024;
      *&buf[10] = v26;
      *&buf[14] = 2048;
      *&buf[16] = v27;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Could not find entry for index #%u (curEntryIndex=%u, curNumberDepth=%zu)", buf, 0x18u);
    }
  }

  return 1;
}

void sub_1006AEC94(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, char a37)
{
  if (a35 < 0)
  {
    operator delete(__p);
  }

  sub_1000DA6C8(&a37);
  _Unwind_Resume(a1);
}

uint64_t sub_1006AED3C(uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = sub_1006AEE78(a1, a2);
  }

  else
  {
    *v3 = *a2;
    v4 = *(a2 + 8);
    *(v3 + 24) = *(a2 + 24);
    *(v3 + 8) = v4;
    *(a2 + 16) = 0;
    *(a2 + 24) = 0;
    *(a2 + 8) = 0;
    *(v3 + 32) = *(a2 + 32);
    v5 = *(a2 + 40);
    *(v3 + 56) = *(a2 + 56);
    *(v3 + 40) = v5;
    *(a2 + 48) = 0;
    *(a2 + 56) = 0;
    *(a2 + 40) = 0;
    *(v3 + 64) = *(a2 + 64);
    result = v3 + 72;
  }

  a1[1] = result;
  return result;
}

uint64_t sub_1006AEDC4(uint64_t a1, int a2, __int128 *a3, int a4, std::string *__str, int a6)
{
  *a1 = a2;
  if (*(a3 + 23) < 0)
  {
    sub_100008904((a1 + 8), *a3, *(a3 + 1));
  }

  else
  {
    v10 = *a3;
    *(a1 + 24) = *(a3 + 2);
    *(a1 + 8) = v10;
  }

  *(a1 + 32) = a4;
  std::string::basic_string((a1 + 40), __str, 0, 0x1F4uLL, &v12);
  *(a1 + 64) = a6;
  return a1;
}

void sub_1006AEE5C(_Unwind_Exception *exception_object)
{
  if (*(v2 + 31) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1006AEE78(uint64_t *a1, uint64_t a2)
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

  v19 = a1;
  if (v6)
  {
    sub_1006AEFF8(a1, v6);
  }

  v7 = 72 * v2;
  v16 = 0;
  v17 = v7;
  *(&v18 + 1) = 0;
  *v7 = *a2;
  v8 = *(a2 + 8);
  *(v7 + 24) = *(a2 + 24);
  *(v7 + 8) = v8;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 8) = 0;
  *(v7 + 32) = *(a2 + 32);
  v9 = *(a2 + 40);
  *(v7 + 56) = *(a2 + 56);
  *(v7 + 40) = v9;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  *(a2 + 40) = 0;
  *(v7 + 64) = *(a2 + 64);
  *&v18 = 72 * v2 + 72;
  v10 = a1[1];
  v11 = 72 * v2 + *a1 - v10;
  sub_1006AF054(a1, *a1, v10, v11);
  v12 = *a1;
  *a1 = v11;
  v13 = a1[2];
  v15 = v18;
  *(a1 + 1) = v18;
  *&v18 = v12;
  *(&v18 + 1) = v13;
  v16 = v12;
  v17 = v12;
  sub_1006AF108(&v16);
  return v15;
}

void sub_1006AEFE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1006AF108(va);
  _Unwind_Resume(a1);
}

void sub_1006AEFF8(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x38E38E38E38E38FLL)
  {
    operator new();
  }

  sub_1000C7698();
}

void sub_1006AF054(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v7 = a2;
    do
    {
      *a4 = *v7;
      v8 = *(v7 + 8);
      *(a4 + 24) = *(v7 + 24);
      *(a4 + 8) = v8;
      *(v7 + 16) = 0;
      *(v7 + 24) = 0;
      *(v7 + 8) = 0;
      *(a4 + 32) = *(v7 + 32);
      v9 = *(v7 + 40);
      *(a4 + 56) = *(v7 + 56);
      *(a4 + 40) = v9;
      *(v7 + 48) = 0;
      *(v7 + 56) = 0;
      *(v7 + 40) = 0;
      *(a4 + 64) = *(v7 + 64);
      v7 += 72;
      a4 += 72;
    }

    while (v7 != a3);
    while (v5 != a3)
    {
      sub_1006AD2E0(a1, v5);
      v5 += 72;
    }
  }
}

void **sub_1006AF108(void **a1)
{
  sub_1006AF13C(a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_1006AF13C(void *a1)
{
  v2 = a1[1];
  for (i = a1[2]; i != v2; i = a1[2])
  {
    v4 = a1[4];
    a1[2] = i - 72;
    sub_1006AD2E0(v4, i - 72);
  }
}

uint64_t sub_1006AF184(uint64_t a1)
{
  *a1 = off_100B07320;
  v2 = *(a1 + 8);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  return a1;
}

BOOL sub_1006AF208(uint64_t a1, uint64_t a2, unsigned __int16 a3, _WORD *a4)
{
  *a4 = 0;
  v8 = *(a1 + 40);
  while (1)
  {
    v9 = *(a1 + 39);
    v10 = v9;
    if (*(a1 + 39) < 0)
    {
      v10 = *(a1 + 24);
    }

    if (v8 == v10)
    {
      break;
    }

    if (!a3)
    {
      goto LABEL_20;
    }

LABEL_14:
    if ((v9 & 0x80) != 0)
    {
      v9 = *(a1 + 24);
    }

    v13 = *(a1 + 40);
    v14 = v9 - v13;
    if (v14 >= a3)
    {
      v15 = a3;
    }

    else
    {
      v15 = v14;
    }

    std::string::copy((a1 + 16), (a2 + *a4), v15, v13);
    v8 = *(a1 + 40) + v15;
    *(a1 + 40) = v8;
    *a4 += v15;
    a3 -= v15;
  }

  *(a1 + 40) = 0;
  (*(*a1 + 16))(a1);
  v9 = *(a1 + 39);
  v11 = v9;
  if (*(a1 + 39) < 0)
  {
    v11 = *(a1 + 24);
  }

  if (v11)
  {
    v12 = a3 == 0;
  }

  else
  {
    v12 = 1;
  }

  if (!v12)
  {
    goto LABEL_14;
  }

LABEL_20:
  if ((v9 & 0x80) != 0)
  {
    v9 = *(a1 + 24);
  }

  return v9 != 0;
}

double sub_1006AF324(uint64_t a1, uint64_t a2, char a3, __int16 a4)
{
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = off_100B07348;
  *(a1 + 8) = a2;
  *(a1 + 48) = a3;
  *(a1 + 52) = 0;
  *(a1 + 56) = 0;
  *(a1 + 58) = a4;
  return result;
}

void sub_1006AF35C(uint64_t a1)
{
  v2 = *(a1 + 52);
  if (v2 > 1)
  {
    if (v2 == 2)
    {
LABEL_16:
      v7 = (a1 + 16);
      std::string::assign((a1 + 16), "</vCard-listing>\n");
      v8 = qword_100BCE978;
      if (os_log_type_enabled(qword_100BCE978, OS_LOG_TYPE_INFO))
      {
        if (*(a1 + 39) < 0)
        {
          v7 = *v7;
        }

        *buf = 136315138;
        *&buf[4] = v7;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Sending footer:\n\n%s", buf, 0xCu);
      }

      *(a1 + 52) = 3;
      return;
    }

    if (v2 == 3)
    {
      if (*(a1 + 39) < 0)
      {
        **(a1 + 16) = 0;
        *(a1 + 24) = 0;
      }

      else
      {
        *(a1 + 16) = 0;
        *(a1 + 39) = 0;
      }
    }
  }

  else
  {
    if (v2)
    {
      if (v2 != 1)
      {
        return;
      }

      v3 = sub_1006A6344(*(a1 + 8), *(a1 + 56));
      if (v3)
      {
        v4 = v3;
        v38 = 0;
        v36 = 0u;
        v37 = 0u;
        v34 = 0u;
        v35 = 0u;
        v32 = 0u;
        v33 = 0u;
        v30 = 0u;
        v31 = 0u;
        v28 = 0u;
        v29 = 0u;
        *v26 = 0u;
        v27 = 0u;
        *buf = 0u;
        memset(v25, 0, sizeof(v25));
        sub_100008760(buf);
        sub_100007774(buf);
        v9 = sub_100007774(buf);
        *(v9 + *(*v9 - 24) + 8) = *(v9 + *(*v9 - 24) + 8) & 0xFFFFFFB5 | 8;
        v10 = std::ostream::operator<<();
        *(v10 + *(*v10 - 24) + 8) = *(v10 + *(*v10 - 24) + 8) & 0xFFFFFFB5 | 2;
        sub_100007774(v10);
        memset(&v20, 0, sizeof(v20));
        if (*(v4 + 39) < 0)
        {
          sub_100008904(&v20, *(v4 + 16), *(v4 + 24));
        }

        else
        {
          v20 = *(v4 + 16);
        }

        v11 = HIBYTE(v20.__r_.__value_.__r.__words[2]);
        v12 = HIBYTE(v20.__r_.__value_.__r.__words[2]);
        size = v20.__r_.__value_.__l.__size_;
        if ((v20.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v14 = HIBYTE(v20.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v14 = v20.__r_.__value_.__l.__size_;
        }

        if (!v14 && *(a1 + 48) == 1)
        {
          v23 = 0;
          *__p = 0u;
          memset(__str, 0, sizeof(__str));
          sub_10042A6A4(v4, 0, __str);
          std::string::operator=(&v20, __str);
          if (SHIBYTE(v23) < 0)
          {
            operator delete(__p[0]);
          }

          if ((__str[23] & 0x80000000) != 0)
          {
            operator delete(*__str);
          }

          v11 = HIBYTE(v20.__r_.__value_.__r.__words[2]);
          size = v20.__r_.__value_.__l.__size_;
          v12 = HIBYTE(v20.__r_.__value_.__r.__words[2]);
        }

        if (v12 < 0)
        {
          v11 = size;
        }

        if (v11)
        {
          v15 = sub_100007774(buf);
          sub_10050DDC8(&v20, __str);
          v16 = sub_100007774(v15);
          sub_100007774(v16);
          if ((__str[23] & 0x80000000) != 0)
          {
            operator delete(*__str);
          }
        }

        sub_100007774(buf);
        std::stringbuf::str();
        v17 = (a1 + 16);
        if (*(a1 + 39) < 0)
        {
          operator delete(*v17);
        }

        *v17 = *__str;
        *(a1 + 32) = *&__str[16];
        v18 = qword_100BCE978;
        if (os_log_type_enabled(qword_100BCE978, OS_LOG_TYPE_INFO))
        {
          v19 = *(a1 + 56);
          if (*(a1 + 39) < 0)
          {
            v17 = *v17;
          }

          *__str = 67109378;
          *&__str[4] = v19;
          *&__str[8] = 2080;
          *&__str[10] = v17;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "Sending card #%u:\n\n%s", __str, 0x12u);
        }

        sub_1006A63C8(*(a1 + 8), *(a1 + 56));
        ++*(a1 + 56);
        if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v20.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v27) < 0)
        {
          operator delete(v26[1]);
        }

        std::locale::~locale(v25);
        std::ostream::~ostream();
        std::ios::~ios();
        return;
      }

      *(a1 + 52) = 2;
      goto LABEL_16;
    }

    v5 = (a1 + 16);
    std::string::assign((a1 + 16), "<?xml version=1.0?>\n<!DOCTYPE vcard-listing SYSTEM vcard-listing.dtd>\n<vCard-listing version=1.0>\n");
    v6 = qword_100BCE978;
    if (os_log_type_enabled(qword_100BCE978, OS_LOG_TYPE_INFO))
    {
      if (*(a1 + 39) < 0)
      {
        v5 = *v5;
      }

      *buf = 136315138;
      *&buf[4] = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Sending header:\n\n%s", buf, 0xCu);
    }

    *(a1 + 52) = 1;
  }
}

void sub_1006AF90C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  sub_1000DA6C8(&a16);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_1006AF990(uint64_t a1, uint64_t a2, int a3, int a4, uint64_t a5)
{
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = &off_100B07370;
  *(a1 + 8) = a2;
  *(a1 + 48) = a3;
  *(a1 + 52) = a4;
  *(a1 + 56) = 0;
  *(a1 + 58) = sub_10054152C(a5);
  return a1;
}

uint64_t sub_1006AFA04(uint64_t a1)
{
  result = sub_1006A6344(*(a1 + 8), *(a1 + 56));
  if (result)
  {
    (*(*result + 16))(v6);
    v3 = (a1 + 16);
    if (*(a1 + 39) < 0)
    {
      operator delete(*v3);
    }

    *v3 = *v6;
    *(a1 + 32) = *&v6[16];
    v4 = qword_100BCE978;
    if (os_log_type_enabled(qword_100BCE978, OS_LOG_TYPE_INFO))
    {
      v5 = *(a1 + 56);
      if (*(a1 + 39) < 0)
      {
        v3 = *v3;
      }

      *v6 = 67109378;
      *&v6[4] = v5;
      *&v6[8] = 2080;
      *&v6[10] = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Sending vCard #%u:\n\n%s", v6, 0x12u);
    }

    result = sub_1006A63C8(*(a1 + 8), *(a1 + 56));
    ++*(a1 + 56);
  }

  else if (*(a1 + 39) < 0)
  {
    **(a1 + 16) = 0;
    *(a1 + 24) = 0;
  }

  else
  {
    *(a1 + 16) = 0;
    *(a1 + 39) = 0;
  }

  return result;
}

void sub_1006AFB78(uint64_t a1)
{
  sub_1006AF184(a1);

  operator delete();
}

void sub_1006AFBB4(uint64_t a1)
{
  sub_1006AF184(a1);

  operator delete();
}

void sub_1006AFC30(id a1)
{
  v1 = objc_alloc_init(BluetoothAudiodConnection);
  v2 = qword_100BC6FF0;
  qword_100BC6FF0 = v1;
}

void sub_1006AFDCC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = BluetoothAudiodConnection;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_1006AFF0C(id a1)
{
  v1 = qword_100BCE950;
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "bluetoothaudiod invalidated", v2, 2u);
  }
}

void sub_1006B0000(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_1006B0190(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1006B02A8(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1006B0A04(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_1006B0B40(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

uint64_t sub_1006B0D34(uint64_t a1, uint64_t a2, io_service_t a3)
{
  *(a1 + 8) = 0;
  v5 = a1 + 8;
  v6 = CFUUIDGetConstantUUIDWithBytes(kCFAllocatorSystemDefault, 0x53u, 0xEAu, 0x67u, 0x34u, 0xC7u, 0xEu, 0x46u, 0x35u, 0x9Cu, 0xF5u, 0x4Fu, 0xAFu, 5u, 0xB4u, 0xF2u, 0x30u);
  v7 = CFUUIDGetConstantUUIDWithBytes(0, 0xC2u, 0x44u, 0xE8u, 0x58u, 0x10u, 0x9Cu, 0x11u, 0xD4u, 0x91u, 0xD4u, 0, 0x50u, 0xE4u, 0xC6u, 0x42u, 0x6Fu);
  v8 = IOCreatePlugInInterfaceForService(a3, v6, v7, a1, &theScore);
  if (!v8)
  {
    v10 = *a1;
    v11 = *(**a1 + 8);
    v12 = CFUUIDGetConstantUUIDWithBytes(kCFAllocatorSystemDefault, 0xA6u, 0x7Au, 0x69u, 0x95u, 0x23u, 0x6Bu, 0x44u, 0xDEu, 0x97u, 0xB5u, 0x27u, 0xB9u, 0xB1u, 0xE6u, 0x6Fu, 0x2Fu);
    v13 = CFUUIDGetUUIDBytes(v12);
    v11(v10, *&v13.byte0, *&v13.byte8, v5);
    v14 = *(a1 + 8);
    if (v14)
    {
      v8 = (*(*v14 + 64))(v14);
      if (v8)
      {
        if (os_log_type_enabled(qword_100BCEA68, OS_LOG_TYPE_ERROR))
        {
          sub_10085EAFC();
        }
      }

      else
      {
        *(a1 + 16) = (*(**(a1 + 8) + 88))(*(a1 + 8));
      }
    }

    else
    {
      if (os_log_type_enabled(qword_100BCEA68, OS_LOG_TYPE_ERROR))
      {
        sub_10085EB70();
      }

      return 0;
    }
  }

  return v8;
}

IOCFPlugInInterface **sub_1006B0F2C(uint64_t a1)
{
  result = *(a1 + 8);
  if (result)
  {
    ((*result)[1].QueryInterface)(result);
    result = *a1;
    if (*a1)
    {
      ((*result)->Release)(result);
      result = IODestroyPlugInInterface(*a1);
    }

    *(a1 + 8) = 0;
  }

  return result;
}

uint64_t sub_1006B0F80(uint64_t a1, char *a2, int a3)
{
  v4 = *(a1 + 8);
  if (!v4)
  {
    if (os_log_type_enabled(qword_100BCEA68, OS_LOG_TYPE_ERROR))
    {
      sub_10085EC9C();
    }

    return 0;
  }

  v5 = a2;
  if (!a2 || (v6 = a3) == 0)
  {
    if (os_log_type_enabled(qword_100BCEA68, OS_LOG_TYPE_ERROR))
    {
      sub_10085EC5C();
    }

    return 0;
  }

  (*(*v4 + 96))(v4);
  __chkstk_darwin();
  v8 = &v12[-v7];
  bzero(&v12[-v7], v9);
  v16 = 0;
  v10 = (*(**(a1 + 8) + 112))(*(a1 + 8), (*(a1 + 16) * v6), v8, &v16);
  if (v10)
  {
    if (os_log_type_enabled(qword_100BCEA68, OS_LOG_TYPE_ERROR))
    {
      sub_10085EBE8();
    }

    return 0;
  }

  else
  {
    v14 = 0;
    v15 = 0;
    v13 = 0;
    do
    {
      if (!(*(**(a1 + 8) + 128))(*(a1 + 8), v8, &v14, &v15, 0, 0))
      {
        break;
      }

      memcpy(v5, v15, *(a1 + 16));
      (*(**(a1 + 8) + 136))(*(a1 + 8), v8, v14, &v13);
      if (!v13)
      {
        v5 += *(a1 + 16);
        v10 = (v10 + 1);
      }

      --v6;
    }

    while (v6);
  }

  return v10;
}

uint64_t sub_1006B117C(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, unsigned int a5)
{
  v25[0] = 0;
  v25[1] = 0;
  sub_100007F88(v25, a1 + 8);
  v22 = 0;
  v23 = 0;
  v24 = 0;
  v10 = *(a1 + 80);
  v11 = (a1 + 88);
  if (v10 != v11)
  {
    do
    {
      v12 = v10[4];
      if (v12)
      {
        sub_1006B135C(&v22, v12);
      }

      v13 = v10[1];
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
          v14 = v10[2];
          v15 = *v14 == v10;
          v10 = v14;
        }

        while (!v15);
      }

      v10 = v14;
    }

    while (v14 != v11);
    v16 = v22;
    v17 = v23;
    if (v22 != v23)
    {
      do
      {
        v18 = *(v16 + 64);
        if (v18)
        {
          if (*(v18 + 160) == 1)
          {
            v19 = xpc_dictionary_create(0, 0, 0);
            v20 = v19;
            if (v19)
            {
              xpc_dictionary_set_uint64(v19, "kCBMsgArgID", *(v16 + 40));
              xpc_dictionary_set_uint64(v20, "kCBMsgArgAccessoryManagerID", a2);
              xpc_dictionary_set_uint64(v20, "kCBMsgArgEvent", a3);
              xpc_dictionary_set_uint64(v20, "kCBMsgArgBTDevice", a4);
              xpc_dictionary_set_uint64(v20, "kCBMsgArgState", a5);
              sub_100383144(*(v16 + 64), "kCBMsgIdAccessoryEvent", v20, 1);
            }
          }
        }

        v16 += 96;
      }

      while (v16 != v17);
      v16 = v22;
    }

    if (v16)
    {
      v23 = v16;
      operator delete(v16);
    }
  }

  return sub_1000088CC(v25);
}

void sub_1006B1334(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_1000088CC(&a13);
  _Unwind_Resume(a1);
}

void sub_1006B135C(uint64_t a1, _OWORD *a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v4 >= v5)
  {
    v11 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 5);
    v12 = v11 + 1;
    if (v11 + 1 > 0x2AAAAAAAAAAAAAALL)
    {
      sub_1000C7698();
    }

    v13 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 5);
    if (2 * v13 > v12)
    {
      v12 = 2 * v13;
    }

    if (v13 >= 0x155555555555555)
    {
      v14 = 0x2AAAAAAAAAAAAAALL;
    }

    else
    {
      v14 = v12;
    }

    if (v14)
    {
      sub_1006BA130(a1, v14);
    }

    v15 = 96 * v11;
    v16 = a2[1];
    *v15 = *a2;
    *(v15 + 16) = v16;
    v17 = a2[2];
    v18 = a2[3];
    v19 = a2[5];
    *(v15 + 64) = a2[4];
    *(v15 + 80) = v19;
    *(v15 + 32) = v17;
    *(v15 + 48) = v18;
    v10 = 96 * v11 + 96;
    v20 = *(a1 + 8) - *a1;
    v21 = v15 - v20;
    memcpy((v15 - v20), *a1, v20);
    v22 = *a1;
    *a1 = v21;
    *(a1 + 8) = v10;
    *(a1 + 16) = 0;
    if (v22)
    {
      operator delete(v22);
    }
  }

  else
  {
    v6 = a2[1];
    *v4 = *a2;
    v4[1] = v6;
    v7 = a2[2];
    v8 = a2[3];
    v9 = a2[5];
    v4[4] = a2[4];
    v4[5] = v9;
    v4[2] = v7;
    v4[3] = v8;
    v10 = (v4 + 6);
  }

  *(a1 + 8) = v10;
}

uint64_t sub_1006B1474(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, unsigned int a5, const void *a6, unsigned int a7)
{
  v30[0] = 0;
  v30[1] = 0;
  sub_100007F88(v30, a1 + 8);
  v27 = 0;
  v28 = 0;
  v29 = 0;
  v14 = *(a1 + 80);
  v15 = (a1 + 88);
  if (v14 != v15)
  {
    do
    {
      v16 = v14[4];
      if (v16)
      {
        sub_1006B135C(&v27, v16);
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

    while (v18 != v15);
    v20 = v27;
    v21 = v28;
    if (v27 != v28)
    {
      v22 = a5;
      do
      {
        v23 = *(v20 + 64);
        if (v23)
        {
          if (*(v23 + 160) == 1)
          {
            v24 = xpc_dictionary_create(0, 0, 0);
            v25 = v24;
            if (v24)
            {
              xpc_dictionary_set_uint64(v24, "kCBMsgArgID", *(v20 + 40));
              xpc_dictionary_set_uint64(v25, "kCBMsgArgAccessoryManagerID", a2);
              xpc_dictionary_set_uint64(v25, "kCBMsgArgBTDevice", a3);
              xpc_dictionary_set_uint64(v25, "kCBMsgArgSetupType", a4);
              xpc_dictionary_set_uint64(v25, "kCBMsgArgOPType", v22);
              xpc_dictionary_set_data(v25, "kCBMsgArgData", a6, a7);
              sub_100383144(*(v20 + 64), "kCBMsgIdAccessorySetupCommand", v25, 1);
            }
          }
        }

        v20 += 96;
      }

      while (v20 != v21);
      v20 = v27;
    }

    if (v20)
    {
      v28 = v20;
      operator delete(v20);
    }
  }

  return sub_1000088CC(v30);
}

void sub_1006B1648(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_1000088CC(&a13);
  _Unwind_Resume(a1);
}

uint64_t sub_1006B1670(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, const void *a6, unsigned int a7)
{
  bytes = a4;
  v30 = WORD2(a4);
  v28[0] = 0;
  v28[1] = 0;
  sub_100007F88(v28, a1 + 8);
  v25 = 0;
  v26 = 0;
  v27 = 0;
  v13 = *(a1 + 80);
  v14 = (a1 + 88);
  if (v13 != v14)
  {
    do
    {
      v15 = v13[4];
      if (v15)
      {
        sub_1006B135C(&v25, v15);
      }

      v16 = v13[1];
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
          v17 = v13[2];
          v18 = *v17 == v13;
          v13 = v17;
        }

        while (!v18);
      }

      v13 = v17;
    }

    while (v17 != v14);
    v19 = v25;
    v20 = v26;
    if (v25 != v26)
    {
      do
      {
        v21 = *(v19 + 64);
        if (v21)
        {
          if (*(v21 + 160) == 1)
          {
            v22 = xpc_dictionary_create(0, 0, 0);
            v23 = v22;
            if (v22)
            {
              xpc_dictionary_set_uint64(v22, "kCBMsgArgID", *(v19 + 40));
              xpc_dictionary_set_uint64(v23, "kCBMsgArgAccessoryManagerID", a2);
              xpc_dictionary_set_uint64(v23, "kCBMsgArgBTDevice", a3);
              xpc_dictionary_set_data(v23, "kCBMsgArgAddressBytes", &bytes, 6uLL);
              xpc_dictionary_set_uint64(v23, "kCBMsgArgRelayMsgType", a5);
              xpc_dictionary_set_data(v23, "kCBMsgArgData", a6, a7);
              sub_100383144(*(v19 + 64), "kCBMsgIdAccessoryRelayMsgRecv", v23, 1);
            }
          }
        }

        v19 += 96;
      }

      while (v19 != v20);
      v19 = v25;
    }

    if (v19)
    {
      v26 = v19;
      operator delete(v19);
    }
  }

  return sub_1000088CC(v28);
}

void sub_1006B1850(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, char a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_1000088CC(&a12);
  _Unwind_Resume(a1);
}

uint64_t sub_1006B1878(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, unsigned int a5, unsigned int a6)
{
  v27[0] = 0;
  v27[1] = 0;
  sub_100007F88(v27, a1 + 8);
  v24 = 0;
  v25 = 0;
  v26 = 0;
  v12 = *(a1 + 80);
  v13 = (a1 + 88);
  if (v12 != v13)
  {
    do
    {
      v14 = v12[4];
      if (v14)
      {
        sub_1006B135C(&v24, v14);
      }

      v15 = v12[1];
      if (v15)
      {
        do
        {
          v16 = v15;
          v15 = *v15;
        }

        while (v15);
      }

      else
      {
        do
        {
          v16 = v12[2];
          v17 = *v16 == v12;
          v12 = v16;
        }

        while (!v17);
      }

      v12 = v16;
    }

    while (v16 != v13);
    v18 = v24;
    v19 = v25;
    if (v24 != v25)
    {
      do
      {
        v20 = *(v18 + 64);
        if (v20)
        {
          if (*(v20 + 160) == 1)
          {
            v21 = xpc_dictionary_create(0, 0, 0);
            v22 = v21;
            if (v21)
            {
              xpc_dictionary_set_uint64(v21, "kCBMsgArgID", *(v18 + 40));
              xpc_dictionary_set_uint64(v22, "kCBMsgArgAccessoryManagerID", a2);
              xpc_dictionary_set_uint64(v22, "kCBMsgArgBTDevice", a3);
              xpc_dictionary_set_uint64(v22, "kCBMsgArgCmdReqType", a4);
              xpc_dictionary_set_uint64(v22, "kCBMsgArgResult", a5);
              xpc_dictionary_set_uint64(v22, "kCBMsgArgReason", a6);
              sub_100383144(*(v18 + 64), "kCBMsgIdAccessoryCommandStatus", v22, 1);
            }
          }
        }

        v18 += 96;
      }

      while (v18 != v19);
      v18 = v24;
    }

    if (v18)
    {
      v25 = v18;
      operator delete(v18);
    }
  }

  return sub_1000088CC(v27);
}

void sub_1006B1A48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_1000088CC(&a13);
  _Unwind_Resume(a1);
}

uint64_t sub_1006B1A70(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, const void *a5, size_t a6, uint64_t a7)
{
  v14 = qword_100BCE950;
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
  {
    *v32 = 134218752;
    *&v32[4] = a2;
    *&v32[12] = 2048;
    *&v32[14] = a3;
    *&v32[22] = 1024;
    v33 = a4;
    v34 = 2048;
    v35 = a6;
    _os_log_debug_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "BTAccessoryMsgHandler::BTAccessoryCustomCallbackHandler manager:%llX device:%llX type:%X dataSize:%zu", v32, 0x26u);
  }

  v29[0] = 0;
  v29[1] = 0;
  sub_100007F88(v29, a1 + 8);
  memset(v32, 0, sizeof(v32));
  v15 = *(a1 + 80);
  v16 = (a1 + 88);
  if (v15 != v16)
  {
    do
    {
      v17 = v15[4];
      if (v17)
      {
        sub_1006B135C(v32, v17);
      }

      v18 = v15[1];
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
          v19 = v15[2];
          v23 = *v19 == v15;
          v15 = v19;
        }

        while (!v23);
      }

      v15 = v19;
    }

    while (v19 != v16);
    v20 = *v32;
    v21 = *&v32[8];
    if (*v32 != *&v32[8])
    {
      do
      {
        v22 = *(v20 + 64);
        if (v22)
        {
          v23 = *(v22 + 160) == 1 && *(v20 + 48) == a4;
          if (v23)
          {
            v24 = qword_100BCE950;
            if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
            {
              v27 = *(v20 + 40);
              *buf = 134217984;
              v31 = v27;
              _os_log_debug_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEBUG, "BTAccessoryMsgHandler::BTAccessoryCustomCallbackHandler cbid:%llu", buf, 0xCu);
            }

            v25 = xpc_dictionary_create(0, 0, 0);
            v26 = v25;
            if (v25)
            {
              xpc_dictionary_set_uint64(v25, "kCBMsgArgID", *(v20 + 40));
              xpc_dictionary_set_uint64(v26, "kCBMsgArgAccessoryManagerID", a2);
              xpc_dictionary_set_uint64(v26, "kCBMsgArgBTDevice", a3);
              xpc_dictionary_set_uint64(v26, "kCBMsgArgCustomMessageType", a4);
              xpc_dictionary_set_data(v26, "kCBMsgArgData", a5, a6);
              xpc_dictionary_set_uint64(v26, "kCBMsgArgUserData", a7);
              sub_100383144(*(v20 + 64), "kCBMsgIdAccessoryCustomMessage", v26, 1);
            }
          }
        }

        v20 += 96;
      }

      while (v20 != v21);
      v20 = *v32;
    }

    if (v20)
    {
      *&v32[8] = v20;
      operator delete(v20);
    }
  }

  return sub_1000088CC(v29);
}

void sub_1006B1D74(uint64_t a1, int a2, uint64_t a3, int a4, uint64_t a5)
{
  if (a5)
  {
    if (qword_100B540D0 != -1)
    {
      sub_10085ECDC();
    }

    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1006B1E3C;
    v10[3] = &unk_100AF2780;
    v10[4] = a3;
    v10[5] = a1;
    v10[6] = a5;
    v11 = a2;
    v12 = a4;
    sub_100614A70(off_100B540C8, v10);
  }
}

void sub_1006B1E3C(uint64_t a1)
{
  if (qword_100B50B88 != -1)
  {
    sub_10085ECF0();
  }

  if (!sub_100618944(qword_100B50B80, *(a1 + 32)))
  {
    goto LABEL_14;
  }

  if (qword_100B50B88 != -1)
  {
    sub_10085ECF0();
  }

  if (sub_100618944(qword_100B50B80, *(a1 + 40)))
  {
    v3 = *(a1 + 40);
    v2 = *(a1 + 48);
    v4 = *(a1 + 32);
    v5 = *(a1 + 56);
    v6 = *(a1 + 60);

    sub_1006B117C(v2, v3, v5, v4, v6);
  }

  else
  {
LABEL_14:
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_10085ED04();
    }
  }
}

uint64_t sub_1006B1F08(uint64_t result, uint64_t a2, unsigned int a3, unsigned int a4, const void *a5, unsigned int a6, uint64_t a7)
{
  if (a7)
  {
    return sub_1006B1474(a7, result, a2, a3, a4, a5, a6);
  }

  return result;
}

uint64_t sub_1006B1F34(uint64_t result, uint64_t a2, uint64_t a3, unsigned int a4, const void *a5, unsigned int a6, uint64_t a7)
{
  if (a7)
  {
    return sub_1006B1670(a7, result, a2, a3 & 0xFFFFFFFFFFFFLL, a4, a5, a6);
  }

  return result;
}

uint64_t sub_1006B1F64(uint64_t result, uint64_t a2, unsigned int a3, unsigned int a4, unsigned int a5, uint64_t a6)
{
  if (a6)
  {
    return sub_1006B1878(a6, result, a2, a3, a4, a5);
  }

  return result;
}

uint64_t sub_1006B1F8C(uint64_t a1, uint64_t a2, unsigned int a3, const void *a4, size_t a5, uint64_t *a6)
{
  v12 = qword_100BCE950;
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
  {
    v15 = 134219008;
    v16 = a1;
    v17 = 2048;
    v18 = a2;
    v19 = 1024;
    v20 = a3;
    v21 = 2048;
    v22 = a5;
    v23 = 2048;
    v24 = a6;
    _os_log_debug_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "BTAccessoryMsgHandler::BTAccessoryCustomMessageCallback manager:%llX device:%llX type:%X dataSize:%zu userData:%p", &v15, 0x30u);
  }

  result = *a6;
  if (*a6)
  {
    v14 = *a6;
    if (a3 == 64)
    {
      v14 = a6[1];
    }

    return sub_1006B1A70(result, a1, a2, a3, a4, a5, v14);
  }

  return result;
}

void sub_1006B20B8(id a1)
{
  v78 = "kCBMsgIdAccessoryGetDefaultMsg";
  v79 = 30;
  v80 = &v78;
  v1 = sub_1006BA258(&xmmword_100BCEAD8, &v78);
  v1[4] = sub_1006B33D8;
  v1[5] = 0;
  v78 = "kCBMsgIdAccessoryAddCallbacksMsg";
  v79 = 32;
  v80 = &v78;
  v2 = sub_1006BA258(&xmmword_100BCEAD8, &v78);
  v2[4] = sub_1006B3524;
  v2[5] = 0;
  v78 = "kCBMsgIdAccessoryRemoveCallbacksMsg";
  v79 = 35;
  v80 = &v78;
  v3 = sub_1006BA258(&xmmword_100BCEAD8, &v78);
  v3[4] = sub_1006B3840;
  v3[5] = 0;
  v78 = "kCBMsgIdAccessoryRegisterDeviceMsg";
  v79 = 34;
  v80 = &v78;
  v4 = sub_1006BA258(&xmmword_100BCEAD8, &v78);
  v4[4] = sub_1006B3B0C;
  v4[5] = 0;
  v78 = "kCBMsgIdAccessoryPlugInDeviceMsg";
  v79 = 32;
  v80 = &v78;
  v5 = sub_1006BA258(&xmmword_100BCEAD8, &v78);
  v5[4] = sub_1006B3CC8;
  v5[5] = 0;
  v78 = "kCBMsgIdAccessoryUnplugDeviceMsg";
  v79 = 32;
  v80 = &v78;
  v6 = sub_1006BA258(&xmmword_100BCEAD8, &v78);
  v6[4] = sub_1006B3DB4;
  v6[5] = 0;
  v78 = "kCBMsgIdAccessoryGetDeviceStateMsg";
  v79 = 34;
  v80 = &v78;
  v7 = sub_1006BA258(&xmmword_100BCEAD8, &v78);
  v7[4] = sub_1006B3EA0;
  v7[5] = 0;
  v78 = "kCBMsgIdAccessoryGetDevicesMsg";
  v79 = 30;
  v80 = &v78;
  v8 = sub_1006BA258(&xmmword_100BCEAD8, &v78);
  v8[4] = sub_1006B3FB0;
  v8[5] = 0;
  v78 = "kCBMsgIdAccessoryGetDeviceBatteryLevelMsg";
  v79 = 41;
  v80 = &v78;
  v9 = sub_1006BA258(&xmmword_100BCEAD8, &v78);
  v9[4] = sub_1006B417C;
  v9[5] = 0;
  v78 = "kCBMsgIdAccessoryGetDeviceBatteryStatusMsg";
  v79 = 42;
  v80 = &v78;
  v10 = sub_1006BA258(&xmmword_100BCEAD8, &v78);
  v10[4] = sub_1006B428C;
  v10[5] = 0;
  v78 = "kCBMsgIdAccessoryGetTimeSyncIdMsg";
  v79 = 33;
  v80 = &v78;
  v11 = sub_1006BA258(&xmmword_100BCEAD8, &v78);
  v11[4] = sub_1006B4480;
  v11[5] = 0;
  v78 = "kCBMsgIdAccessoryIsAccessoryMsg";
  v79 = 31;
  v80 = &v78;
  v12 = sub_1006BA258(&xmmword_100BCEAD8, &v78);
  v12[4] = sub_1006B4590;
  v12[5] = 0;
  v78 = "kCBMsgIdAccessoryGenerateLinkKeyMsg";
  v79 = 35;
  v80 = &v78;
  v13 = sub_1006BA258(&xmmword_100BCEAD8, &v78);
  v13[4] = sub_1006B46A0;
  v13[5] = 0;
  v78 = "kCBMsgIdAccessorySetLinkKeyExMsg";
  v79 = 32;
  v80 = &v78;
  v14 = sub_1006BA258(&xmmword_100BCEAD8, &v78);
  v14[4] = sub_1006B4840;
  v14[5] = 0;
  v78 = "kCBMsgIdAccessorySetFirstSettingMsg";
  v79 = 35;
  v80 = &v78;
  v15 = sub_1006BA258(&xmmword_100BCEAD8, &v78);
  v15[4] = sub_1006B4A5C;
  v15[5] = 0;
  v78 = "kCBMsgIdAccessorySetSecondSettingMsg";
  v79 = 36;
  v80 = &v78;
  v16 = sub_1006BA258(&xmmword_100BCEAD8, &v78);
  v16[4] = sub_1006B4B60;
  v16[5] = 0;
  v78 = "kCBMsgIdAccessoryGetFirstSettingMsg";
  v79 = 35;
  v80 = &v78;
  v17 = sub_1006BA258(&xmmword_100BCEAD8, &v78);
  v17[4] = sub_1006B4C64;
  v17[5] = 0;
  v78 = "kCBMsgIdAccessorySetRemoteTimeSyncMsg";
  v79 = 37;
  v80 = &v78;
  v18 = sub_1006BA258(&xmmword_100BCEAD8, &v78);
  v18[4] = sub_1006B4D74;
  v18[5] = 0;
  v78 = "kCBMsgIdAccessoryGetSecondSettingMsg";
  v79 = 36;
  v80 = &v78;
  v19 = sub_1006BA258(&xmmword_100BCEAD8, &v78);
  v19[4] = sub_1006B4E78;
  v19[5] = 0;
  v78 = "kCBMsgIdAccessoryRegisterCustomMessageClientMsg";
  v79 = 47;
  v80 = &v78;
  v20 = sub_1006BA258(&xmmword_100BCEAD8, &v78);
  v20[4] = sub_1006B4F88;
  v20[5] = 0;
  v78 = "kCBMsgIdAccessoryDeregisterCustomMessageClientMsg";
  v79 = 49;
  v80 = &v78;
  v21 = sub_1006BA258(&xmmword_100BCEAD8, &v78);
  v21[4] = sub_1006B5374;
  v21[5] = 0;
  v78 = "kCBMsgIdAccessorySendCustomMessageMsg";
  v79 = 37;
  v80 = &v78;
  v22 = sub_1006BA258(&xmmword_100BCEAD8, &v78);
  v22[4] = sub_1006B564C;
  v22[5] = 0;
  v78 = "kCBMsgIdAccessorySimulateAACPMsg";
  v79 = 32;
  v80 = &v78;
  v23 = sub_1006BA258(&xmmword_100BCEAD8, &v78);
  v23[4] = sub_1006B5784;
  v23[5] = 0;
  v78 = "kCBMsgIdAccessoryGetDeviceDiagnosticsMsg";
  v79 = 40;
  v80 = &v78;
  v24 = sub_1006BA258(&xmmword_100BCEAD8, &v78);
  v24[4] = sub_1006B589C;
  v24[5] = 0;
  v78 = "kCBMsgIdAccessorySendRequestPeriodicallyMsg";
  v79 = 43;
  v80 = &v78;
  v25 = sub_1006BA258(&xmmword_100BCEAD8, &v78);
  v25[4] = sub_1006B5A38;
  v25[5] = 0;
  v78 = "kCBMsgIdAccessoryCancelRequestPeriodicallyMsg";
  v79 = 45;
  v80 = &v78;
  v26 = sub_1006BA258(&xmmword_100BCEAD8, &v78);
  v26[4] = sub_1006B5B5C;
  v26[5] = 0;
  v78 = "kCBMsgIdAccessorySendControlCommandMsg";
  v79 = 38;
  v80 = &v78;
  v27 = sub_1006BA258(&xmmword_100BCEAD8, &v78);
  v27[4] = sub_1006B5C60;
  v27[5] = 0;
  v78 = "kCBMsgIdAccessoryGetDoubleTapActionMsg";
  v79 = 38;
  v80 = &v78;
  v28 = sub_1006BA258(&xmmword_100BCEAD8, &v78);
  v28[4] = sub_1006B5D84;
  v28[5] = 0;
  v78 = "kCBMsgIdAccessoryGetControlCommandMsg";
  v79 = 37;
  v80 = &v78;
  v29 = sub_1006BA258(&xmmword_100BCEAD8, &v78);
  v29[4] = sub_1006B5E94;
  v29[5] = 0;
  v78 = "kCBMsgIdAccessoryGetDoubleTapActionExMsg";
  v79 = 40;
  v80 = &v78;
  v30 = sub_1006BA258(&xmmword_100BCEAD8, &v78);
  v30[4] = sub_1006B5FDC;
  v30[5] = 0;
  v78 = "kCBMsgIdAccessoryGetDoubleTapCapabilityMsg";
  v79 = 42;
  v80 = &v78;
  v31 = sub_1006BA258(&xmmword_100BCEAD8, &v78);
  v31[4] = sub_1006B6104;
  v31[5] = 0;
  v78 = "kCBMsgIdAccessoryGetInEarStatusMsg";
  v79 = 34;
  v80 = &v78;
  v32 = sub_1006BA258(&xmmword_100BCEAD8, &v78);
  v32[4] = sub_1006B6214;
  v32[5] = 0;
  v78 = "kCBMsgIdAccessoryGetFeatureCapabilityMsg";
  v79 = 40;
  v80 = &v78;
  v33 = sub_1006BA258(&xmmword_100BCEAD8, &v78);
  v33[4] = sub_1006B6340;
  v33[5] = 0;
  v78 = "kCBMsgIdAccessorySetDoubleTapActionMsg";
  v79 = 38;
  v80 = &v78;
  v34 = sub_1006BA258(&xmmword_100BCEAD8, &v78);
  v34[4] = sub_1006B6468;
  v34[5] = 0;
  v78 = "kCBMsgIdAccessorySetDoubleTapActionExMsg";
  v79 = 40;
  v80 = &v78;
  v35 = sub_1006BA258(&xmmword_100BCEAD8, &v78);
  v35[4] = sub_1006B656C;
  v35[5] = 0;
  v78 = "kCBMsgIdAccessoryGetSettingFeatureBitMaskMsg";
  v79 = 44;
  v80 = &v78;
  v36 = sub_1006BA258(&xmmword_100BCEAD8, &v78);
  v36[4] = sub_1006B6690;
  v36[5] = 0;
  v78 = "kCBMsgIdAccessoryGetAccessoryInfoMsg";
  v79 = 36;
  v80 = &v78;
  v37 = sub_1006BA258(&xmmword_100BCEAD8, &v78);
  v37[4] = sub_1006B67A0;
  v37[5] = 0;
  v78 = "kCBMsgIdAccessoryReadDeviceVersionInfoMsg";
  v79 = 41;
  v80 = &v78;
  v38 = sub_1006BA258(&xmmword_100BCEAD8, &v78);
  v38[4] = sub_1006B693C;
  v38[5] = 0;
  v78 = "kCBMsgIdAccessoryGetDeviceColorMsg";
  v79 = 34;
  v80 = &v78;
  v39 = sub_1006BA258(&xmmword_100BCEAD8, &v78);
  v39[4] = sub_1006B6D38;
  v39[5] = 0;
  v78 = "kCBMsgIdAccessoryGetWirelessSharingSpatialMsg";
  v79 = 45;
  v80 = &v78;
  v40 = sub_1006BA258(&xmmword_100BCEAD8, &v78);
  v40[4] = sub_1006B6E48;
  v40[5] = 0;
  v78 = "kCBMsgIdAccessorySetupCommandMsg";
  v79 = 32;
  v80 = &v78;
  v41 = sub_1006BA258(&xmmword_100BCEAD8, &v78);
  v41[4] = sub_1006B6F58;
  v41[5] = 0;
  v78 = "kCBMsgIdAccessorySendRelayMsgMsg";
  v79 = 32;
  v80 = &v78;
  v42 = sub_1006BA258(&xmmword_100BCEAD8, &v78);
  v42[4] = sub_1006B70A8;
  v42[5] = 0;
  v78 = "kCBMsgIdAccessoryUpdateConnPriorityListMsg";
  v79 = 42;
  v80 = &v78;
  v43 = sub_1006BA258(&xmmword_100BCEAD8, &v78);
  v43[4] = sub_1006B7254;
  v43[5] = 0;
  v78 = "kCBMsgIdAccessoryGetNonAppleHAEPairedDevicesMsg";
  v79 = 47;
  v80 = &v78;
  v44 = sub_1006BA258(&xmmword_100BCEAD8, &v78);
  v44[4] = sub_1006B7450;
  v44[5] = 0;
  v78 = "kCBMsgIdAccessorySmartRouteModeMsg";
  v79 = 34;
  v80 = &v78;
  v45 = sub_1006BA258(&xmmword_100BCEAD8, &v78);
  v45[4] = sub_1006B7638;
  v45[5] = 0;
  v78 = "kCBMsgIdAccessoryGetSmartRouteModeMsg";
  v79 = 37;
  v80 = &v78;
  v46 = sub_1006BA258(&xmmword_100BCEAD8, &v78);
  v46[4] = sub_1006B773C;
  v46[5] = 0;
  v78 = "kCBMsgIdAccessoryGetSmartRouteSupportMsg";
  v79 = 40;
  v80 = &v78;
  v47 = sub_1006BA258(&xmmword_100BCEAD8, &v78);
  v47[4] = sub_1006B784C;
  v47[5] = 0;
  v78 = "kCBMsgIdAccessorySetDeviceStateOnPeerSrcMsg";
  v79 = 43;
  v80 = &v78;
  v48 = sub_1006BA258(&xmmword_100BCEAD8, &v78);
  v48[4] = sub_1006B795C;
  v48[5] = 0;
  v78 = "kCBMsgIdAccessoryGetSpatialAudioPlatformSupportMsg";
  v79 = 50;
  v80 = &v78;
  v49 = sub_1006BA258(&xmmword_100BCEAD8, &v78);
  v49[4] = sub_1006B7AE4;
  v49[5] = 0;
  v78 = "kCBMsgIdAccessoryGetDeviceSoundProfileSupportMsg";
  v79 = 48;
  v80 = &v78;
  v50 = sub_1006BA258(&xmmword_100BCEAD8, &v78);
  v50[4] = sub_1006B7BF4;
  v50[5] = 0;
  v78 = "kCBMsgIdAccessoryGetDeviceSoundProfileAllowedMsg";
  v79 = 48;
  v80 = &v78;
  v51 = sub_1006BA258(&xmmword_100BCEAD8, &v78);
  v51[4] = sub_1006B7D10;
  v51[5] = 0;
  v78 = "kCBMsgIdAccessorySetDeviceSoundProfileAllowedMsg";
  v79 = 48;
  v80 = &v78;
  v52 = sub_1006BA258(&xmmword_100BCEAD8, &v78);
  v52[4] = sub_1006B7E30;
  v52[5] = 0;
  v78 = "kCBMsgIdAccessoryGetCallManagementConfigMsg";
  v79 = 43;
  v80 = &v78;
  v53 = sub_1006BA258(&xmmword_100BCEAD8, &v78);
  v53[4] = sub_1006B7F40;
  v53[5] = 0;
  v78 = "kCBMsgIdAccessoryGetFeatureProxCardStatusMsg";
  v79 = 44;
  v80 = &v78;
  v54 = sub_1006BA258(&xmmword_100BCEAD8, &v78);
  v54[4] = sub_1006B80D8;
  v54[5] = 0;
  v78 = "kCBMsgIdAccessorySetFeatureProxCardStatusMsg";
  v79 = 44;
  v80 = &v78;
  v55 = sub_1006BA258(&xmmword_100BCEAD8, &v78);
  v55[4] = sub_1006B81F4;
  v55[5] = 0;
  v78 = "kCBMsgIdAccessoryGetStereoHFPSupportMsg";
  v79 = 39;
  v80 = &v78;
  v56 = sub_1006BA258(&xmmword_100BCEAD8, &v78);
  v56[4] = sub_1006B8304;
  v56[5] = 0;
  v78 = "kCBMsgIdAccessoryGetAnnounceMessagesSupportMsg";
  v79 = 46;
  v80 = &v78;
  v57 = sub_1006BA258(&xmmword_100BCEAD8, &v78);
  v57[4] = sub_1006B8414;
  v57[5] = 0;
  v78 = "kCBMsgIdAccessoryGetAACPCapabilityBitsMsg";
  v79 = 41;
  v80 = &v78;
  v58 = sub_1006BA258(&xmmword_100BCEAD8, &v78);
  v58[4] = sub_1006B8524;
  v58[5] = 0;
  v78 = "kCBMsgIdAccessoryGetAACPCapabilityIntegerMsg";
  v79 = 44;
  v80 = &v78;
  v59 = sub_1006BA258(&xmmword_100BCEAD8, &v78);
  v59[4] = sub_1006B86C0;
  v59[5] = 0;
  v78 = "kCBMsgIdAccessorySensorStreamTimeSyncEnableMsg";
  v79 = 46;
  v80 = &v78;
  v60 = sub_1006BA258(&xmmword_100BCEAD8, &v78);
  v60[4] = sub_1006B87E8;
  v60[5] = 0;
  v78 = "kCBMsgIdAccessoryGetAnnounceCallsSupportMsg";
  v79 = 43;
  v80 = &v78;
  v61 = sub_1006BA258(&xmmword_100BCEAD8, &v78);
  v61[4] = sub_1006B88EC;
  v61[5] = 0;
  v78 = "kCBMsgIdAccessorySpatialAudioModeMsg";
  v79 = 36;
  v80 = &v78;
  v62 = sub_1006BA258(&xmmword_100BCEAD8, &v78);
  v62[4] = sub_1006B89FC;
  v62[5] = 0;
  v78 = "kCBMsgIdAccessoryGetSpatialAudioModeMsg";
  v79 = 39;
  v80 = &v78;
  v63 = sub_1006BA258(&xmmword_100BCEAD8, &v78);
  v63[4] = sub_1006B8B44;
  v63[5] = 0;
  v78 = "kCBMsgIdAccessorySpatialAudioAllowedMsg";
  v79 = 39;
  v80 = &v78;
  v64 = sub_1006BA258(&xmmword_100BCEAD8, &v78);
  v64[4] = sub_1006B8C98;
  v64[5] = 0;
  v78 = "kCBMsgIdAccessoryGetSpatialAudioAllowedMsg";
  v79 = 42;
  v80 = &v78;
  v65 = sub_1006BA258(&xmmword_100BCEAD8, &v78);
  v65[4] = sub_1006B8DA0;
  v65[5] = 0;
  v78 = "kCBMsgIdAccessoryGetAdaptiveLatencyJitterBufferLevelMsg";
  v79 = 55;
  v80 = &v78;
  v66 = sub_1006BA258(&xmmword_100BCEAD8, &v78);
  v66[4] = sub_1006B8EB0;
  v66[5] = 0;
  v78 = "kCBMsgIdAccessoryGetSpatialAudioActiveMsg";
  v79 = 41;
  v80 = &v78;
  v67 = sub_1006BA258(&xmmword_100BCEAD8, &v78);
  v67[4] = sub_1006B8FE8;
  v67[5] = 0;
  v78 = "kCBMsgIdAccessorySetIsHiddenMsg";
  v79 = 31;
  v80 = &v78;
  v68 = sub_1006BA258(&xmmword_100BCEAD8, &v78);
  v68[4] = sub_1006B90F8;
  v68[5] = 0;
  v78 = "kCBMsgIdAccessoryGetGyroInformationMsg";
  v79 = 38;
  v80 = &v78;
  v69 = sub_1006BA258(&xmmword_100BCEAD8, &v78);
  v69[4] = sub_1006B91FC;
  v69[5] = 0;
  v78 = "kCBMsgIdAccessoryGetSensorStreamingFrequencyMsg";
  v79 = 47;
  v80 = &v78;
  v70 = sub_1006BA258(&xmmword_100BCEAD8, &v78);
  v70[4] = sub_1006B932C;
  v70[5] = 0;
  v78 = "kCBMsgIdAccessoryGetCaseSerialNumbersForAppleProductIdMsg";
  v79 = 57;
  v80 = &v78;
  v71 = sub_1006BA258(&xmmword_100BCEAD8, &v78);
  v71[4] = sub_1006B943C;
  v71[5] = 0;
  v78 = "kCBMsgIdAccessoryGetCaseSerialNumbersForAppleProductIdsMsg";
  v79 = 58;
  v80 = &v78;
  v72 = sub_1006BA258(&xmmword_100BCEAD8, &v78);
  v72[4] = sub_1006B95D8;
  v72[5] = 0;
  v78 = "kCBMsgIdAccessoryGetPrimaryBudSideMsg";
  v79 = 37;
  v80 = &v78;
  v73 = sub_1006BA258(&xmmword_100BCEAD8, &v78);
  v73[4] = sub_1006B97C8;
  v73[5] = 0;
  v78 = "kCBMsgIdAccessoryGetHeadphoneFeatureValueMsg";
  v79 = 44;
  v80 = &v78;
  v74 = sub_1006BA258(&xmmword_100BCEAD8, &v78);
  v74[4] = sub_1006B98E0;
  v74[5] = 0;
  v78 = "kCBMsgIdAccessorySetHeadphoneFeatureValueMsg";
  v79 = 44;
  v80 = &v78;
  v75 = sub_1006BA258(&xmmword_100BCEAD8, &v78);
  v75[4] = sub_1006B9A08;
  v75[5] = 0;
  v78 = "kCBMsgIdAccessorySendAdaptiveVolumeMessageMsg";
  v79 = 45;
  v80 = &v78;
  v76 = sub_1006BA258(&xmmword_100BCEAD8, &v78);
  v76[4] = sub_1006B9B2C;
  v76[5] = 0;
  v78 = "kCBMsgIdAccessorySendPMEConfigMessageMsg";
  v79 = 40;
  v80 = &v78;
  v77 = sub_1006BA258(&xmmword_100BCEAD8, &v78);
  v77[4] = sub_1006B9C98;
  v77[5] = 0;
}