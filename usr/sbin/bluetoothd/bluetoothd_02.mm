uint64_t sub_100021BDC(uint64_t a1, unsigned int a2)
{
  v26[0] = 0;
  v26[1] = 0;
  sub_100007F88(v26, &unk_100BCE708);
  v4 = sub_10000C7D0();
  if (sub_10002221C(v4, a2))
  {
    if (!sub_10002220C(&stru_100BCE778, v26, 0x3A98uLL))
    {
      if ((sub_100018C6C() & 1) == 0 && *(a1 + 384) == 0xFFFF)
      {
        if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
        {
          v12 = sub_10000C7D0();
          v13 = sub_100020304(v12, a2);
          sub_100848A80(v13, v43);
        }

        v41 = 0u;
        v42 = 0u;
        v39 = 0u;
        v40 = 0u;
        v37 = 0u;
        v38 = 0u;
        v35 = 0u;
        v36 = 0u;
        v33 = 0u;
        v34 = 0u;
        v31 = 0u;
        v32 = 0u;
        v29 = 0u;
        v30 = 0u;
        *buf = 0u;
        v28 = 0u;
        v25 = 0;
        sub_1000216B4(&v25);
        v14 = sub_10000C7D0();
        v15 = sub_100020304(v14, a2);
        sub_100304ACC(buf, 256, "VSC stall detected, %s (0x%x)", v16, v17, v18, v19, v20, v15);
        sub_1001C4B04(buf);
        sub_100022214(&v25);
        sub_10000801C(v26);
        v21 = sub_10000C7D0();
        v22 = sub_100020304(v21, a2);
        sub_100007E30(&v24, v22);
        sub_100007E30(v23, "");
        sub_1005A24D4(a1, 3602, &v24, 1, 3, a2, v23);
      }

      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
      {
        v5 = sub_10000C7D0();
        v6 = sub_100020304(v5, a2);
        sub_100848AC4(v6, buf);
      }
    }
  }

  else
  {
    v7 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_INFO))
    {
      v8 = sub_10000C7D0();
      v9 = sub_100020304(v8, a2);
      *buf = 136446210;
      *&buf[4] = v9;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%{public}s completed prior to waiting", buf, 0xCu);
    }
  }

  v10 = dword_100BCE7A8;
  sub_1000088CC(v26);
  return v10;
}

void sub_100021E28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, int a24, __int16 a25, char a26, char a27, char a28)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  sub_10002249C(&a27);
  sub_1000088CC(&a28);
  _Unwind_Resume(a1);
}

void sub_100021E94()
{
  v29 = 0;
  v30 = 0;
  v28 = 0;
  if (dword_100B5FC74)
  {
    v0 = sub_10002242C(dword_100B5FC74);
    dword_100B5FC74 = 0;
    if (v0)
    {
      v1 = v0;
      if (sub_10000C240())
      {
        sub_10000AF54("%! (%d)", v2, v3, v4, v5, v6, v7, v8, v1);
        v9 = sub_10000C050(0x2Eu);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          sub_100813DD4();
        }
      }
    }
  }

  if (word_100B5FC70)
  {
    sub_100016250(&v28);
    v10 = word_100B5FC70;
    if (word_100B5FC70)
    {
      v11 = v28;
      v12 = qword_100B5FC80;
      v13 = 32 * word_100B5FC70 - 32;
      v14 = -1;
      do
      {
        v15 = *(v12 + v13);
        v16 = v15 >= v11;
        v17 = v15 - v11;
        if (v17 != 0 && v16)
        {
          if (v17 < v14)
          {
            v14 = v17;
          }
        }

        else
        {
          v30 = v12 + v13;
          LOWORD(v29) = 32;
          ++byte_100B5FC78;
          sub_1000228C0(sub_1002580D0, &v29, 0);
          sub_1000224D4(v10 - 1);
          v12 = qword_100B5FC80;
        }

        --v10;
        v13 -= 32;
      }

      while ((v10 + 1) > 1);
      if (word_100B5FC70)
      {
        v18 = sub_10002195C(sub_100258174, 0, (10 * v14) | 1u, &dword_100B5FC74);
        if (v18)
        {
          v19 = v18;
          if (sub_10000C240())
          {
            sub_10000AF54("%! (%d)", v20, v21, v22, v23, v24, v25, v26, v19);
            v27 = sub_10000C050(0x2Eu);
            if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
            {
              sub_100813DD4();
            }
          }
        }
      }
    }
  }
}

uint64_t sub_10002206C()
{
  pthread_setname_np("StackLoop");
  if (byte_100B5ACD8 == 1)
  {
    v1.tv_sec = 0;
    v1.tv_nsec = 0;
    do
    {
      pthread_mutex_lock(&stru_100B5AD18);
      do
      {
        if (!dword_100B5ACE0)
        {
          break;
        }

        if (byte_100B5AD70)
        {
          break;
        }

        v1.tv_sec = dword_100B5ACE0 / 0x3E8uLL;
        v1.tv_nsec = 1000000 * (dword_100B5ACE0 % 0x3E8u);
      }

      while (pthread_cond_timedwait_relative_np(&stru_100B5ACE8, &stru_100B5AD18, &v1) != 60);
      dword_100B5ACE0 = -1;
      pthread_mutex_unlock(&stru_100B5AD18);
      sub_1000031B0();
      sub_1000228CC();
      sub_10000C198();
    }

    while ((byte_100B5ACD8 & 1) != 0);
  }

  return 0;
}

BOOL sub_100022168(pthread_cond_t *a1, pthread_mutex_t *a2, unint64_t a3)
{
  v6.tv_sec = a3 / 0x3E8;
  v6.tv_nsec = 1000000 * (a3 % 0x3E8);
  v3 = pthread_cond_timedwait_relative_np(a1, a2, &v6);
  v4 = v3;
  if (v3 && v3 != 60 && os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_FAULT))
  {
    sub_10081E674();
  }

  return v4 != 60;
}

uint64_t sub_100022244(unsigned int a1)
{
  if (a1 > 0x42)
  {
    return 769;
  }

  else
  {
    return dword_1008A45D0[a1];
  }
}

uint64_t sub_100022264(int a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  if (!word_100B5FC70)
  {
    return 0;
  }

  v7 = 0;
  v8 = 0;
  v9 = a3 >> 10;
  while (1)
  {
    v10 = qword_100B5FC80;
    v11 = qword_100B5FC80 + v7;
    if ((*(qword_100B5FC80 + v7 + 8) == a1 || *(v11 + 9) == a1) && *(v11 + 4) == a3 && (v9 < 0x3F || !off_100B5FC88 || (off_100B5FC88)(a2, a3, *(qword_100B5FC80 + v7 + 10), *(qword_100B5FC80 + v7 + 11))))
    {
      break;
    }

    ++v8;
    v7 += 32;
    if (v8 >= word_100B5FC70)
    {
      return 0;
    }
  }

  v13 = *(v10 + v7 + 16);
  *a4 = *(v10 + v7);
  a4[1] = v13;
  byte_100B5FC78 = 0;
  sub_1000224D4(v8);
  sub_100021E94();
  return 1;
}

BOOL sub_100022388(uint64_t *a1, int a2, int a3)
{
  if (a2 != 64803 && a2 != 64745)
  {
    return 1;
  }

  if (*(a1 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
    return 1;
  }

  v3 = *(a1 + 6);
  if (*(a1 + 5) <= v3)
  {
    return 1;
  }

  if (*(a1 + 14) != 1)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 810, "(*pBs).__RWFlag == BYTESTREAM_READ");
  }

  v4 = *a1;
  *(a1 + 6) = v3 + 1;
  return *(v4 + v3) == a3;
}

uint64_t sub_10002242C(uint64_t a1)
{
  if (!sub_10002260C(a1))
  {
    return 1001;
  }

  if (*(qword_100B6D1A8 + 24 * WORD1(a1) + 8) == sub_100304DB8)
  {
    sub_1000C52F4(a1);
    return sub_10002249C(v3);
  }

  else
  {
    sub_10002256C(a1 >> 16);
    return 0;
  }
}

_BYTE *sub_10002249C(_BYTE *a1)
{
  if (*a1 == 1)
  {
    *a1 = 0;
    sub_10000C198();
  }

  return a1;
}

uint64_t sub_1000224D4(int a1)
{
  v2 = word_100B5FC70;
  if (word_100B5FC70 <= a1)
  {
    sub_1000D660C();
    v2 = word_100B5FC70;
  }

  if (!v2)
  {
    sub_1000D660C();
    v2 = word_100B5FC70;
  }

  if (v2 <= a1)
  {
    return 640;
  }

  v3 = v2 - 1;
  word_100B5FC70 = v3;
  if (a1 < v3)
  {
    v4 = v3;
    v5 = (qword_100B5FC80 + 32 * a1 + 32);
    v6 = v4 - a1;
    do
    {
      v7 = v5[1];
      *(v5 - 2) = *v5;
      *(v5 - 1) = v7;
      v5 += 2;
      --v6;
    }

    while (v6);
  }

  return 0;
}

void sub_10002256C(int a1)
{
  v1 = a1;
  v2 = qword_100B6D1A8 + 24 * a1;
  if (*(v2 + 8))
  {
    if (*(v2 + 6) >= 9u)
    {
      v3 = *(v2 + 16);
      if (v3)
      {
        sub_10000C1E8(v3);
      }
    }
  }

  *(v2 + 8) = 0;
  *v2 = 0;
  if (word_100B6D198 == v1 && (word_100B6D198 & 0x80000000) == 0)
  {
    do
    {
      if (*(qword_100B6D1A8 + 24 * v1 + 8))
      {
        break;
      }

      word_100B6D198 = --v1;
    }

    while ((v1 & 0x8000) == 0);
  }
}

BOOL sub_10002260C(unsigned int a1)
{
  v1 = a1;
  v2 = HIWORD(a1);
  if (!qword_100B6D1A8)
  {
    sub_1000D660C();
  }

  if (v2 < word_100B6D19C && (v3 = (qword_100B6D1A8 + 24 * v2), *v3 >= 2u))
  {
    return *(v3 + 2) == v1;
  }

  else
  {
    return 0;
  }
}

void sub_100022690(uint64_t a1, int a2)
{
  v5 = 0;
  sub_100016250(&v5);
  v4 = (SWORD2(v5) + 99) / 100 + 10 * v5;
  if (!a1)
  {
    sub_1000D660C();
  }

  *(a1 + 2) = v4 + a2;
  if (!word_100B6D198 || a2 <= (word_100B6D1A0 - v4))
  {
    word_100B6D1A0 = v4 + a2;
    if (off_100B6D1B0)
    {
      off_100B6D1B0((100 * a2));
    }
  }
}

uint64_t sub_100022748(int a1, unsigned int a2)
{
  v10[0] = 0;
  v10[1] = 0;
  sub_100007F88(v10, &unk_100BCE708);
  if (a1)
  {
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
    {
      v4 = sub_10000C7D0();
      v5 = sub_100020304(v4, a2);
      sub_1008489DC(v5, v11);
    }
  }

  else if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEBUG))
  {
    v6 = sub_10000C7D0();
    v7 = sub_100020304(v6, a2);
    sub_100848A30(v7, v11);
  }

  v8 = sub_10000C7D0();
  sub_100022684(v8, a2);
  dword_100BCE7A8 = a1;
  sub_10002286C(&stru_100BCE778);
  return sub_1000088CC(v10);
}

void sub_10002286C(pthread_cond_t *a1)
{
  if (pthread_cond_broadcast(a1))
  {
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_FAULT))
    {
      sub_10081E674();
    }
  }
}

uint64_t sub_1000228CC()
{
  if (!qword_100B6D1A8)
  {
    sub_1000D660C();
  }

  if (byte_100B6D188 == 1)
  {
    sub_1000D660C();
  }

  v15 = 0;
  v16 = 0;
  byte_100B6D188 = 1;
  v17 = 0;
  sub_100016250(&v17);
  v0 = word_100B6D198;
  if (word_100B6D198 < 0)
  {
    byte_100B6D188 = 0;
LABEL_28:
    v2 = 0;
    byte_100B6D190 = 0;
    return v2;
  }

  LOWORD(v1) = 0;
  v2 = 0;
  v3 = (SWORD2(v17) + 99) / 100 + 10 * v17;
  v4 = qword_100B6D1A8;
  do
  {
    v5 = v4 + 24 * v1;
    v6 = *(v5 + 8);
    if (v6 && (*(v5 + 2) - v3) <= 0)
    {
      *v5 = 1;
      v7 = *(v5 + 6);
      if (*(v5 + 6))
      {
        LOWORD(v15) = *(v5 + 6);
        v8 = (v5 + 16);
        if (v7 >= 9)
        {
          v8 = *v8;
        }

        v16 = v8;
        v9 = &v15;
      }

      else
      {
        v9 = 0;
      }

      v6(v9);
      ++v2;
      sub_10002256C(v1);
      v4 = qword_100B6D1A8;
      v0 = word_100B6D198;
    }

    v1 = (v1 + 1);
  }

  while (v1 <= v0);
  if ((v0 & 0x8000) == 0)
  {
    v10 = (v0 + 1);
    v11 = (qword_100B6D1A8 + 8);
    v12 = -1;
    do
    {
      if (*v11)
      {
        v13 = *(v11 - 3);
        if ((v13 - v3) < v12)
        {
          word_100B6D1A0 = *(v11 - 3);
          v12 = v13 - v3;
        }
      }

      v11 += 3;
      --v10;
    }

    while (v10);
    if (v12 != 0xFFFF && off_100B6D1B0)
    {
      off_100B6D1B0(100 * v12);
    }
  }

  byte_100B6D188 = 0;
  if (!v2)
  {
    goto LABEL_28;
  }

  return v2;
}

uint64_t sub_100022AA0()
{
  if (dword_100B5F8BC)
  {
    if (byte_100B5F8B8 == 1 && byte_100BCE141 != 0)
    {
      return sub_10001FA7C();
    }
  }

  return result;
}

void sub_100022AD0(uint64_t a1, void (*a2)(uint64_t))
{
  if (a1 && sub_10000C240() && (sub_10000AF54("status %d, hlCb 0x%x", v4, v5, v6, v7, v8, v9, v10, a1), v11 = sub_10000C050(0x54u), os_log_type_enabled(v11, OS_LOG_TYPE_ERROR)))
  {
    sub_10080F604();
    if (!a2)
    {
      return;
    }
  }

  else if (!a2)
  {
    return;
  }

  a2(a1);
}

void sub_100022B5C(uint64_t a1)
{
  (*(*a1 + 24))(a1, 1);

  sub_10004DFB8(a1, 5, 0, 0);
}

void sub_100022BC4(uint64_t a1)
{
  if (*(a1 + 90) == 1)
  {
    v2 = qword_100BCE950;
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
    {
      v3 = (a1 + 56);
      if (*(a1 + 79) < 0)
      {
        v3 = *v3;
      }

      *buf = 136446210;
      v7 = v3;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "On-Demand-Install app XPC ended: %{public}s", buf, 0xCu);
    }
  }

  if (*(a1 + 128))
  {
    v4 = sub_100007EE8();
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_100023A8C;
    v5[3] = &unk_100ADF8F8;
    v5[4] = a1;
    sub_10000D334(v4, v5);
    *(a1 + 128) = 0;
  }
}

uint64_t sub_100022CE4(uint64_t a1, unint64_t a2, char a3)
{
  v4 = (a1 + 232);
  v3 = *(a1 + 232);
  if (v3)
  {
    v78 = (a1 + 224);
    v82 = (a1 + 232);
    do
    {
      v7 = v3[4];
      v8 = v7 >= a2;
      v9 = v7 < a2;
      if (v8)
      {
        v4 = v3;
      }

      v3 = v3[v9];
    }

    while (v3);
    if (v4 != v82 && v4[4] <= a2)
    {
      v11 = qword_100BCE988;
      if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEFAULT))
      {
        sub_100018384(a2, __p);
        v12 = (SBYTE7(v110) & 0x80u) == 0 ? __p : __p[0];
        *buf = 136446210;
        *&buf[4] = v12;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Unregistering session %{public}s", buf, 0xCu);
        if (SBYTE7(v110) < 0)
        {
          operator delete(__p[0]);
        }
      }

      v13 = *(v4[5] + 88);
      v80 = v4[5];
      v81 = v13;
      v79 = *(v80 + 104);
      v14 = a2;
      if ((a3 & 1) == 0)
      {
        if (*(v80 + 24) == 1 && *(v80 + 96))
        {
          v15 = (*(*v80 + 40))();
        }

        else
        {
          v15 = 0;
        }

        v16 = qword_100BCE988;
        if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEFAULT))
        {
          v17 = *(a1 + 344);
          LODWORD(__p[0]) = 138543362;
          *(__p + 4) = v17;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "bundle ID's not allowed to use bluetooth %{public}@", __p, 0xCu);
        }

        if (*(v80 + 96))
        {
          v103 = 0u;
          v104 = 0u;
          v101 = 0u;
          v102 = 0u;
          v18 = *(a1 + 344);
          v19 = [v18 countByEnumeratingWithState:&v101 objects:v116 count:16];
          if (v19)
          {
            v20 = *v102;
            while (2)
            {
              for (i = 0; i != v19; i = i + 1)
              {
                if (*v102 != v20)
                {
                  objc_enumerationMutation(v18);
                }

                v22 = *(*(&v101 + 1) + 8 * i);
                if ([v22 isEqualToString:*(v80 + 88)])
                {
                  v23 = qword_100BCE9E0;
                  if (os_log_type_enabled(qword_100BCE9E0, OS_LOG_TYPE_DEFAULT))
                  {
                    LODWORD(__p[0]) = 138543362;
                    *(__p + 4) = v22;
                    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Removing restorable bundle %{public}@ because user disabled TCC access to bluetooth", __p, 0xCu);
                  }

                  [*(a1 + 296) removeObject:*(v80 + 88)];
                  if ((*(*v80 + 40))(v80))
                  {
                    v24 = qword_100BCE9E0;
                    if (os_log_type_enabled(qword_100BCE9E0, OS_LOG_TYPE_DEFAULT))
                    {
                      sub_100018384(a2, __p);
                      v25 = (SBYTE7(v110) & 0x80u) == 0 ? __p : __p[0];
                      *buf = 136446210;
                      *&buf[4] = v25;
                      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Removing restorable session %{public}s due to TCC change", buf, 0xCu);
                      if (SBYTE7(v110) < 0)
                      {
                        operator delete(__p[0]);
                      }
                    }
                  }

                  v14 = a2;
                  goto LABEL_52;
                }
              }

              v19 = [v18 countByEnumeratingWithState:&v101 objects:v116 count:16];
              if (v19)
              {
                continue;
              }

              break;
            }
          }

          v14 = a2;
          if (v15)
          {
            goto LABEL_47;
          }
        }

        else if (v15)
        {
LABEL_47:
          v26 = qword_100BCE9E0;
          if (os_log_type_enabled(qword_100BCE9E0, OS_LOG_TYPE_DEFAULT))
          {
            v27 = *(v80 + 88);
            LODWORD(__p[0]) = 138543362;
            *(__p + 4) = v27;
            _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Session %{public}@ is restorable, persisting", __p, 0xCu);
          }

          if ((*(*v80 + 16))(v80) == 3)
          {
            *(v80 + 192) = 0;
          }

          *(v80 + 120) = 0;
          *(v80 + 38) = 0;
LABEL_145:

          return 0;
        }
      }

LABEL_52:
      v28 = (*(*v4[5] + 16))(v4[5]);
      v29 = v4[5];
      if (v28)
      {
        v30 = (*(*v29 + 16))(v4[5]);
        v31 = v4[5];
        if (v30 != 1)
        {
          if ((*(*v31 + 16))(v4[5]) != 3)
          {
            v76 = 0;
            goto LABEL_102;
          }

          v72 = v4[5];
          v76 = [*(v72 + 208) count] != 0;
          [*(v72 + 216) removeAllObjects];
LABEL_101:
          v14 = a2;
LABEL_102:
          sub_1000787AC(a1, v14);
          v57 = sub_10000EE80();
          (*(*v57 + 8))(v57, v14, v81);
          v111 = 0;
          *__p = 0u;
          v110 = 0u;
          sub_100018384(v14, buf);
          sub_100078B70(__p, buf, *(v4[5] + 129));
          v58 = v80;
          if (v108 < 0)
          {
            operator delete(*buf);
          }

          if (qword_100B541F8 != -1)
          {
            sub_1008237D4();
            v58 = v80;
          }

          sub_10000EFDC();
          sub_100078BCC(a1);
          sub_10002717C(v78, v4);
          operator delete(v4);
          if (v58)
          {
            (*(*v58 + 8))(v58);
          }

          v59 = *v78;
          if (*v78 == v82)
          {
LABEL_117:
            v63 = [*(a1 + 320) objectForKeyedSubscript:v81];
            v64 = v63;
            if (v63)
            {
              [v63 removeObject:v79];
              [*(a1 + 320) setObject:v64 forKeyedSubscript:v81];
              v65 = qword_100BCE988;
              if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138543618;
                *&buf[4] = v81;
                v106 = 2112;
                v107 = v79;
                _os_log_impl(&_mh_execute_header, v65, OS_LOG_TYPE_DEFAULT, "Application %{public}@ for user %@ is no longer interested in FindMy devices", buf, 0x16u);
              }
            }
          }

          else
          {
            while (![*(v59[5] + 88) isEqualToString:v81] || (objc_msgSend(*(v59[5] + 104), "isEqual:", v79) & 1) == 0)
            {
              v60 = v59[1];
              if (v60)
              {
                do
                {
                  v61 = v60;
                  v60 = *v60;
                }

                while (v60);
              }

              else
              {
                do
                {
                  v61 = v59[2];
                  v62 = *v61 == v59;
                  v59 = v61;
                }

                while (!v62);
              }

              v59 = v61;
              if (v61 == v82)
              {
                goto LABEL_117;
              }
            }
          }

          v66 = a2;
          if (*(a1 + 178) == 1)
          {
            v67 = *v78;
            if (*v78 == v82)
            {
LABEL_131:
              v71 = 0;
            }

            else
            {
              while (1)
              {
                v68 = v67[5];
                if (*(v68 + 24) == 1)
                {
                  if (*(v68 + 96))
                  {
                    break;
                  }
                }

                v69 = v67[1];
                if (v69)
                {
                  do
                  {
                    v70 = v69;
                    v69 = *v69;
                  }

                  while (v69);
                }

                else
                {
                  do
                  {
                    v70 = v67[2];
                    v62 = *v70 == v67;
                    v67 = v70;
                  }

                  while (!v62);
                }

                v67 = v70;
                if (v70 == v82)
                {
                  goto LABEL_131;
                }
              }

              v71 = 1;
            }

            *(a1 + 178) = v71;
          }

          if (!*(a1 + 240))
          {
            word_100B541DA = 1;
          }

          if (qword_100B50B88 != -1)
          {
            sub_100823874();
            v66 = a2;
          }

          v73 = qword_100B50B80;
          v74 = sub_100011794(v66);
          sub_100079604(v73, v74);
          if (v76)
          {
            sub_1000C39CC(a1);
          }

          if (SHIBYTE(v110) < 0)
          {
            operator delete(__p[1]);
          }

          goto LABEL_145;
        }

        if (*(v31 + 202) == 1)
        {
          if (qword_100B50C68 != -1)
          {
            sub_1008237FC();
            v14 = a2;
          }

          sub_1000689C0(off_100B50C60, v14);
        }

        sub_1003ADCD4(a1, v14);
        v83 = [*(v31 + 80) allKeys];
        [*(v31 + 80) removeAllObjects];
        v87 = 0u;
        v88 = 0u;
        v85 = 0u;
        v86 = 0u;
        v32 = v83;
        v33 = [v32 countByEnumeratingWithState:&v85 objects:v112 count:16];
        if (v33)
        {
          v34 = *v86;
          do
          {
            v35 = 0;
            do
            {
              if (*v86 != v34)
              {
                objc_enumerationMutation(v32);
              }

              v36 = *(*(&v85 + 1) + 8 * v35);
              if (qword_100B508B0 != -1)
              {
                sub_100823824();
              }

              v37 = off_100B508A8;
              v38 = sub_1003ADBEC(a1, v36);
              sub_1007489DC(v37, v36, v38, 1);
              v35 = v35 + 1;
            }

            while (v33 != v35);
            v33 = [v32 countByEnumeratingWithState:&v85 objects:v112 count:16];
          }

          while (v33);
        }

        v76 = 0;
      }

      else
      {
        if (*(v29 + 280) == 1)
        {
          sub_100023D10(v4[5], v14);
        }

        *__p = 0u;
        v110 = 0u;
        sub_100075C6C(v29, v14, 0, v79, 0, __p, 0, v81);
        if (qword_100B50900 != -1)
        {
          sub_10082384C();
          v14 = a2;
        }

        sub_100078044(qword_100B508F8, v14);
        [*(v29 + 232) removeAllObjects];
        v39 = [*(v29 + 224) count];
        v76 = v39 != 0;
        if (v39)
        {
          v99 = 0u;
          v100 = 0u;
          v97 = 0u;
          v98 = 0u;
          v40 = v29;
          v41 = *(v29 + 224);
          v42 = [v41 countByEnumeratingWithState:&v97 objects:v115 count:16];
          if (v42)
          {
            v43 = *v98;
            do
            {
              for (j = 0; j != v42; j = j + 1)
              {
                if (*v98 != v43)
                {
                  objc_enumerationMutation(v41);
                }

                v45 = *(*(&v97 + 1) + 8 * j);
                sub_1003AD8C8(a1, v45);
              }

              v42 = [v41 countByEnumeratingWithState:&v97 objects:v115 count:16];
            }

            while (v42);
          }

          v29 = v40;
        }

        [*(v29 + 312) removeAllObjects];
        v75 = [*(v29 + 80) allKeys];
        v84 = v29;
        [*(v29 + 80) removeAllObjects];
        v95 = 0u;
        v96 = 0u;
        v93 = 0u;
        v94 = 0u;
        v32 = v75;
        v46 = [v32 countByEnumeratingWithState:&v93 objects:v114 count:16];
        if (v46)
        {
          v47 = *v94;
          do
          {
            v48 = 0;
            do
            {
              if (*v94 != v47)
              {
                objc_enumerationMutation(v32);
              }

              v49 = *(*(&v93 + 1) + 8 * v48);
              if (qword_100B508B0 != -1)
              {
                sub_100823824();
              }

              v50 = off_100B508A8;
              v51 = sub_1003ADBEC(a1, v49);
              sub_1007489DC(v50, v49, v51, 0);
              v48 = v48 + 1;
            }

            while (v46 != v48);
            v46 = [v32 countByEnumeratingWithState:&v93 objects:v114 count:16];
          }

          while (v46);
        }

        sub_1000782D0(a1, a2);
        v52 = *(v84 + 368);
        if (v52 && [v52 count])
        {
          v91 = 0u;
          v92 = 0u;
          v89 = 0u;
          v90 = 0u;
          v53 = *(v84 + 368);
          v54 = [v53 countByEnumeratingWithState:&v89 objects:v113 count:16];
          if (v54)
          {
            v55 = *v90;
            do
            {
              for (k = 0; k != v54; k = k + 1)
              {
                if (*v90 != v55)
                {
                  objc_enumerationMutation(v53);
                }

                sub_1005010D0(v84, *(*(&v89 + 1) + 8 * k), 0, 0);
              }

              v54 = [v53 countByEnumeratingWithState:&v89 objects:v113 count:16];
            }

            while (v54);
          }

          [*(v84 + 368) removeAllObjects];
        }
      }

      goto LABEL_101;
    }
  }

  if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_ERROR))
  {
    sub_10082389C();
  }

  return 1;
}

uint64_t sub_100023A8C(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (qword_100B53FD8 != -1)
  {
    sub_10085AD8C();
  }

  sub_100023B0C(qword_100B53FD0, *(v1 + 128));
  if (qword_100B512F8 != -1)
  {
    sub_1000C10B4();
  }

  v2 = off_100B512F0;
  v3 = *(v1 + 128);

  return sub_100022CE4(v2, v3, 0);
}

void sub_100023B0C(uint64_t a1, unint64_t a2)
{
  if (!a2 && os_log_type_enabled(qword_100BCE970, OS_LOG_TYPE_FAULT))
  {
    sub_100836674();
  }

  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = (a1 + 32);
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
    if (v5 != (a1 + 32) && v5[4] <= a2)
    {
      v9 = v5[5];
      *(v9 + 32) = 1;
      v10 = *(v9 + 8);
      if (*(v9 + 16) == v10)
      {
LABEL_30:
        sub_10002717C((a1 + 24), v5);
        operator delete(v5);
        sub_1004CDAE0(v9);
        operator delete();
      }

      while (1)
      {
        v11 = *v10;
        v19 = v11;
        if (*(v11 + 4))
        {
          v12 = *(v11 + 120);
          if (v12 == *(v11 + 128))
          {
            goto LABEL_23;
          }

          do
          {
            if (*(v12 + 18) == 1)
            {
              sub_1004C8290(a1, a2, *(v11 + 2), (v12 + 2));
              v11 = v19;
            }

            v12 += 26;
          }

          while (v12 != *(v11 + 128));
          if (v12 == *(v11 + 120))
          {
LABEL_23:
            v16 = *(v9 + 16);
            v17 = v16 - (v10 + 1);
            if (v16 != v10 + 1)
            {
              memmove(v10, v10 + 1, v16 - (v10 + 1));
            }

            v15 = (v10 + v17);
            *(v9 + 16) = v10 + v17;
            if (v19)
            {
              v18 = *(v19 + 120);
              if (v18)
              {
                *(v19 + 128) = v18;
                operator delete(v18);
              }

              operator delete();
            }

            goto LABEL_29;
          }
        }

        else if (sub_1004C6904(a1, v11) != 10)
        {
          goto LABEL_23;
        }

        sub_1000C2484(a1 + 96, &v19);
        v13 = *(v9 + 16);
        v14 = v13 - (v10 + 1);
        if (v13 != v10 + 1)
        {
          memmove(v10, v10 + 1, v13 - (v10 + 1));
        }

        v15 = (v10 + v14);
        *(v9 + 16) = v10 + v14;
LABEL_29:
        if (v10 == v15)
        {
          goto LABEL_30;
        }
      }
    }
  }
}

id sub_100023D10(uint64_t a1, unint64_t a2)
{
  *(a1 + 357) = 0;
  if (qword_100B51078 != -1)
  {
    sub_10083AE3C();
  }

  sub_100023EC0(off_100B51070, a2, 1, 1, 0);
  *(a1 + 280) = 0;
  v4 = *(a1 + 320);

  return [v4 removeAllObjects];
}

uint64_t sub_100023D84(uint64_t a1, __int128 *a2, char a3, int a4)
{
  *a1 = 3;
  v7 = a1 + 8;
  if (*(a2 + 23) < 0)
  {
    sub_100008904(v7, *a2, *(a2 + 1));
  }

  else
  {
    v8 = *a2;
    *(v7 + 16) = *(a2 + 2);
    *v7 = v8;
  }

  *(a1 + 32) = a3;
  *(a1 + 36) = a4;
  return a1;
}

uint64_t *sub_100023DF0(uint64_t a1, unsigned int *a2)
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
      v5 = *(v2 + 28);
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

uint64_t sub_100023EC0(uint64_t a1, unint64_t a2, int a3, int a4, char a5)
{
  if (!*(a1 + 1984))
  {
    return 105;
  }

  v5 = *(a1 + 2072);
  if (!v5)
  {
    return 401;
  }

  v7 = (a1 + 2072);
  do
  {
    v8 = v5[4];
    v9 = v8 >= a2;
    v10 = v8 < a2;
    if (v9)
    {
      v7 = v5;
    }

    v5 = v5[v10];
  }

  while (v5);
  if (v7 == (a1 + 2072) || v7[4] > a2)
  {
    return 401;
  }

  v62 = v7[5];
  v77 = 0;
  v75 = 0u;
  v76 = 0u;
  sub_100018384(a2, __p);
  sub_100023D84(&v75, __p, *(v62 + 81), *(v62 + 120));
  v12 = a1;
  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }

  if (qword_100B541F8 != -1)
  {
    sub_1008756E0();
    v12 = a1;
  }

  sub_10000EFDC();
  if (*(v12 + 4426) == 1)
  {
    v13 = qword_100BCE918;
    if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_ERROR))
    {
      sub_100018384(a2, &buf);
      v54 = SHIBYTE(v83);
      p_buf = buf;
      v56 = v73;
      sub_100025284(a2, v73);
      if (v54 >= 0)
      {
        p_buf = &buf;
      }

      if (v74 < 0)
      {
        v56 = v73[0];
      }

      v57 = sub_10002F16C(*(*(v62 + 8) + 192));
      *__p = 136446722;
      *&__p[4] = p_buf;
      *&__p[12] = 2082;
      *&__p[14] = v56;
      *&__p[22] = 2082;
      v79 = v57;
      _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "WILLSLEEP violation! Session %{public}s(%{public}s) %{public}s asking to stop scan", __p, 0x20u);
      if (v74 < 0)
      {
        operator delete(v73[0]);
      }

      if (SHIBYTE(v83) < 0)
      {
        operator delete(buf);
      }
    }
  }

  v14 = sub_100032B14(v62);
  v15 = [v14 cuFilteredArrayUsingBlock:&stru_100B0CF90];
  v59 = [NSMutableSet setWithArray:v15];

  if (sub_100028FA8(v62))
  {
    v16 = [NSNumber numberWithUnsignedInt:sub_100028FA8(v62)];
    [v59 addObject:v16];
  }

  v71 = 0u;
  v72 = 0u;
  v69 = 0u;
  v70 = 0u;
  v17 = v59;
  v18 = [v17 countByEnumeratingWithState:&v69 objects:v81 count:16];
  if (v18)
  {
    v19 = *v70;
    do
    {
      v20 = 0;
      do
      {
        if (*v70 != v19)
        {
          objc_enumerationMutation(v17);
        }

        v21 = *(*(&v69 + 1) + 8 * v20);
        if (qword_100B50910 != -1)
        {
          sub_100874420();
        }

        v22 = off_100B50908;
        [v21 longLongValue];
        nullsub_21(v22);
        v20 = v20 + 1;
      }

      while (v18 != v20);
      v18 = [v17 countByEnumeratingWithState:&v69 objects:v81 count:16];
    }

    while (v18);
  }

  if (sub_100024BA4(v62))
  {
    *(a1 + 1859) = 1;
  }

  if (sub_100024BCC(v62))
  {
    *(a1 + 1861) = 1;
  }

  if (sub_100024B9C(v62))
  {
    *(a1 + 1860) = 1;
  }

  v23 = sub_100024BE0(v62);
  if (v23[1] != *v23 || sub_10007F648(v62))
  {
    *(a1 + 1862) = 1;
  }

  if (sub_100028FB4(v62))
  {
    *(a1 + 1863) = 1;
  }

  v24 = *(v62 + 8);
  v25 = *(v24 + 88);
  v26 = *(v24 + 96);
  if (v25 != v26)
  {
    do
    {
      if (*(v25 + 64) == 1)
      {
        v27 = *(v25 + 8);
        v28 = sub_1000C76A8(a1, v27);
        if ((v28 & 0xFFFFFFFD) != 0)
        {
          v29 = qword_100BCE918;
          if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_ERROR))
          {
            *__p = 67109376;
            *&__p[4] = v27;
            *&__p[8] = 1024;
            *&__p[10] = v28;
            _os_log_error_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "Failed to destroy a match table for type %d with error %d", __p, 0xEu);
          }
        }
      }

      v25 += 96;
    }

    while (v25 != v26);
    v24 = *(v62 + 8);
  }

  if (*(v24 + 172))
  {
    v30 = qword_100BCEA38;
    if (os_log_type_enabled(qword_100BCEA38, OS_LOG_TYPE_DEFAULT))
    {
      sub_100018384(a2, __p);
      v31 = __p[23] >= 0 ? __p : *__p;
      LODWORD(buf) = 136446210;
      *(&buf + 4) = v31;
      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "session %{public}s no longer needs to do Exposure Notification", &buf, 0xCu);
      if ((__p[23] & 0x80000000) != 0)
      {
        operator delete(*__p);
      }
    }

    sub_10079F1D0(a1);
    *(a1 + 2312) = 0;
    *(a1 + 2328) = 0u;
    *(a1 + 2344) = 0u;
    *(a1 + 2360) = 0u;
    if (*(a1 + 1255) == 1)
    {
      sub_10079DECC(a1, 2);
    }
  }

  if (*(a1 + 1988) == 2)
  {
    v32 = *(*(v62 + 8) + 3);
  }

  else
  {
    v32 = 1;
  }

  v33 = sub_10000C798();
  v34 = (*(*v33 + 872))(v33);
  if (v34 && (byte_100BC7CC6 & 1) == 0)
  {
    if (qword_100B50910 != -1)
    {
      sub_100874420();
    }

    v51 = sub_100028FC8();
    v36 = (v51 & 0xFFFFFFFD) != 1;
    if ((sub_10002904C(a1, v62) & 1) == 0 && *(*(v62 + 8) + 240) != 1 || v51 == 2 && (v52 = sub_10000C7D0(), !(*(*v52 + 3176))(v52)))
    {
      v36 = 0;
    }

    if ((byte_100BC7CC7 & 1) != 0 || (v34 = sub_1000292A4(a1, v62), v34))
    {
      v53 = sub_10000C7D0();
      v34 = (*(*v53 + 3184))(v53);
      v35 = v34 | v36;
    }

    else
    {
      v35 = 0;
    }
  }

  else
  {
    v35 = 0;
    v36 = 0;
  }

  v68 = 0;
  if (sub_100025638(v34, v62, &v68))
  {
    v37 = sub_10000C7D0();
    if (sub_1004106BC(v37))
    {
      v38 = sub_10000C7D0();
      (*(*v38 + 1576))(v38, 0, 0, 0, 0, 0);
    }

    v66[0] = _NSConcreteStackBlock;
    v66[1] = 3221225472;
    v66[2] = sub_1007A6558;
    v66[3] = &unk_100B0CF50;
    v67 = v68;
    sub_10000D058(a1 + 1896, v66);
  }

  sub_100025888(a1, a2, v36, v35 & 1);
  v39 = *(v62 + 8);
  if ((a5 & 1) == 0 && (*(v39 + 228) || *(v39 + 232)) && *(v39 + 236) == 1)
  {
    buf = 0uLL;
    v83 = 0;
    *__p = a2;
    *&__p[8] = 0;
    *&__p[16] = 0;
    LODWORD(v79) = 0;
    v65[0] = _NSConcreteStackBlock;
    v65[1] = 3221225472;
    v65[2] = sub_1007A66C8;
    v65[3] = &unk_100B0CFB0;
    v65[4] = a1;
    v80[0] = objc_retainBlock(v65);
    sub_1007A658C(&buf, __p);

    if (qword_100B50910 != -1)
    {
      sub_100874420();
    }

    v40 = off_100B50908;
    memset(v64, 0, sizeof(v64));
    sub_1007B28B4(v64, buf, *(&buf + 1), 0xCCCCCCCCCCCCCCCDLL * ((*(&buf + 1) - buf) >> 3));
    sub_1005BEE4C(v40, v64);
    *__p = v64;
    sub_100084EB8(__p);
    *__p = &buf;
    sub_100084EB8(__p);
    v39 = *(v62 + 8);
  }

  if (*(v39 + 192) == 22)
  {
    sub_1000C572C("** LeObserver ** End of HeySiri Scan");
  }

  v41 = a3 & v32;
  (*(*v62 + 8))(v62);
  sub_10002717C((a1 + 2064), v7);
  operator delete(v7);
  v42 = qword_100BCE918;
  if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
  {
    sub_100018384(a2, &buf);
    v43 = SHIBYTE(v83);
    v44 = buf;
    sub_100025284(a2, v73);
    v45 = &buf;
    if (v43 < 0)
    {
      v45 = v44;
    }

    v46 = v73[0];
    v47 = "NO";
    if (v74 >= 0)
    {
      v46 = v73;
    }

    *__p = 136446978;
    *&__p[4] = v45;
    if (a3)
    {
      v48 = "YES";
    }

    else
    {
      v48 = "NO";
    }

    *&__p[12] = 2082;
    *&__p[14] = v46;
    if (v41)
    {
      v47 = "YES";
    }

    *&__p[22] = 2082;
    v79 = v48;
    LOWORD(v80[0]) = 2082;
    *(v80 + 2) = v47;
    _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "Received 'stop scan' request from session %{public}s (%{public}s) updateScanParams:%{public}s shouldUpdateState:%{public}s", __p, 0x2Au);
    if (v74 < 0)
    {
      operator delete(v73[0]);
    }

    if (SHIBYTE(v83) < 0)
    {
      operator delete(buf);
    }
  }

  if (!sub_10002529C(a1) && a4 && (_os_feature_enabled_impl() & 1) == 0)
  {
    v49 = qword_100BCE918;
    if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
    {
      *__p = 0;
      _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEFAULT, "ADVBUFF Legacy mode", __p, 2u);
    }

    if (!sub_10002529C(a1))
    {
      sub_10079DECC(a1, 0);
      sub_10079DECC(a1, 1);
      sub_100067CB0(a1);
    }
  }

  if (v41)
  {
    *(a1 + 1856) = 1;
    sub_100017DE0(a1, 0);
  }

  else
  {
    v50 = qword_100BCE918;
    if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
    {
      *__p = 0;
      _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEFAULT, "Not updating state", __p, 2u);
    }
  }

  if (SHIBYTE(v76) < 0)
  {
    operator delete(*(&v75 + 1));
  }

  return 0;
}

void sub_100024A00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, void *__p, uint64_t a43, int a44, __int16 a45, char a46, char a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, int a52, __int16 a53, char a54, char a55, uint64_t a56, uint64_t a57)
{
  sub_100084EB8(&a50);
  a50 = v57 - 128;
  sub_100084EB8(&a50);

  if (a47 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

BOOL sub_100024B14(uint64_t a1)
{
  v1 = *(a1 + 88);
  v2 = *(a1 + 96);
  if (v1 == v2)
  {
    return 0;
  }

  v3 = v1 + 96;
  do
  {
    v4 = *(v3 - 40);
    v5 = [v4 count];
    v6 = v5 != 0;

    if (v5)
    {
      v7 = 1;
    }

    else
    {
      v7 = v3 == v2;
    }

    v3 += 96;
  }

  while (!v7);
  return v6;
}

BOOL sub_100024BEC(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 232);
  v2 = a1 + 232;
  v3 = v4;
  if (!v4)
  {
    return 0;
  }

  v5 = v2;
  do
  {
    v6 = *(v3 + 32);
    v7 = v6 >= a2;
    v8 = v6 < a2;
    if (v7)
    {
      v5 = v3;
    }

    v3 = *(v3 + 8 * v8);
  }

  while (v3);
  return v5 != v2 && *(v5 + 32) <= a2 && (v9 = *(v5 + 40)) != 0 && *(v9 + 24) == 1 && *(v9 + 96) != 0;
}

id sub_100024C58(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 548);
  v21 = *(a1 + 556);
  if (*(a1 + 544))
  {
    v5 = @"On";
  }

  else
  {
    v5 = @"Off";
  }

  if (v4 == 3)
  {
    v5 = @"WiFiAssociatedBand6GHz";
  }

  if (v4 == 2)
  {
    v5 = @"WiFiAssociatedBand5GHz";
  }

  if (v4 == 1)
  {
    v6 = @"WiFiAssociatedBand2GHz";
  }

  else
  {
    v6 = v5;
  }

  v7 = *(a1 + 528);
  v8 = *(a1 + 531);
  v9 = *(a1 + 529);
  v10 = *(a1 + 530);
  v11 = [NSMutableDictionary dictionaryWithDictionary:v3];
  v12 = [NSNumber numberWithBool:v4 == 1];
  [v11 setObject:v12 forKeyedSubscript:@"WiFiAssociated2GHz"];

  v13 = [NSNumber numberWithUnsignedChar:v7];
  [v11 setObject:v13 forKeyedSubscript:@"NumberOfClassicDevicesConnected"];

  v14 = [NSNumber numberWithUnsignedInt:v9];
  [v11 setObject:v14 forKeyedSubscript:@"NumberOfLEDevicesConnected"];

  v15 = [NSNumber numberWithUnsignedChar:v8];
  [v11 setObject:v15 forKeyedSubscript:@"NumberOfClassicHIDDevicesConnected"];

  v16 = [NSNumber numberWithUnsignedInt:v10];
  [v11 setObject:v16 forKeyedSubscript:@"NumberOfLEHIDDevicesConnected"];

  [v11 setObject:v6 forKeyedSubscript:@"WiFiState"];
  v17 = *(a1 + 540) - 1;
  if (v17 > 2)
  {
    v18 = @"Unknown";
  }

  else
  {
    v18 = *(&off_100AF73E0 + v17);
  }

  [v11 setObject:v18 forKeyedSubscript:@"SmartCoverState"];
  v19 = [NSNumber numberWithInt:v21];
  [v11 setObject:v19 forKeyedSubscript:@"WiFiM1M4HandshakeCount"];

  return v11;
}

uint64_t *sub_100024F04(uint64_t *result, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2;
  if (*a2)
  {
    v4 = a2[1];
    if (!v4)
    {
      v3 = a2;
      goto LABEL_7;
    }

    do
    {
      v3 = v4;
      v4 = *v4;
    }

    while (v4);
  }

  v2 = v3[1];
  if (v2)
  {
LABEL_7:
    v6 = 0;
    v5 = v3[2];
    *(v2 + 16) = v5;
    goto LABEL_8;
  }

  v5 = v3[2];
  v6 = 1;
LABEL_8:
  v7 = *v5;
  if (*v5 == v3)
  {
    *v5 = v2;
    if (v3 == result)
    {
      v7 = 0;
      result = v2;
    }

    else
    {
      v7 = v5[1];
    }
  }

  else
  {
    v5[1] = v2;
  }

  v8 = *(v3 + 24);
  if (v3 != a2)
  {
    v9 = a2[2];
    v3[2] = v9;
    v9[*v9 != a2] = v3;
    v11 = *a2;
    v10 = a2[1];
    *(v11 + 16) = v3;
    *v3 = v11;
    v3[1] = v10;
    if (v10)
    {
      *(v10 + 16) = v3;
    }

    *(v3 + 24) = *(a2 + 24);
    if (result == a2)
    {
      result = v3;
    }
  }

  if (!result || !v8)
  {
    return result;
  }

  if (!v6)
  {
    *(v2 + 24) = 1;
    return result;
  }

  while (1)
  {
    v12 = v7[2];
    v13 = *v12;
    if (*v12 == v7)
    {
      break;
    }

    if ((v7[3] & 1) == 0)
    {
      *(v7 + 24) = 1;
      *(v12 + 24) = 0;
      v14 = v12[1];
      v15 = *v14;
      v12[1] = *v14;
      if (v15)
      {
        *(v15 + 16) = v12;
      }

      v16 = v12[2];
      v14[2] = v16;
      v16[*v16 != v12] = v14;
      *v14 = v12;
      v12[2] = v14;
      if (result == *v7)
      {
        result = v7;
      }

      v7 = *(*v7 + 8);
    }

    v17 = *v7;
    if (*v7 && *(v17 + 24) != 1)
    {
      v18 = v7[1];
      if (!v18)
      {
        goto LABEL_55;
      }

LABEL_54:
      if (*(v18 + 24) == 1)
      {
LABEL_55:
        *(v17 + 24) = 1;
        *(v7 + 24) = 0;
        v26 = v17[1];
        *v7 = v26;
        if (v26)
        {
          *(v26 + 16) = v7;
        }

        v27 = v7[2];
        v17[2] = v27;
        v27[*v27 != v7] = v17;
        v17[1] = v7;
        v7[2] = v17;
        v18 = v7;
      }

      else
      {
        v17 = v7;
      }

      v28 = v17[2];
      *(v17 + 24) = *(v28 + 24);
      *(v28 + 24) = 1;
      *(v18 + 24) = 1;
      v29 = *(v28 + 8);
      v30 = *v29;
      *(v28 + 8) = *v29;
      if (v30)
      {
        *(v30 + 16) = v28;
      }

      v31 = *(v28 + 16);
      v29[2] = v31;
      v31[*v31 != v28] = v29;
      *v29 = v28;
      goto LABEL_72;
    }

    v18 = v7[1];
    if (v18 && *(v18 + 24) != 1)
    {
      goto LABEL_54;
    }

    *(v7 + 24) = 0;
    v19 = v7[2];
    if (v19 == result || (v19[3] & 1) == 0)
    {
      goto LABEL_52;
    }

LABEL_49:
    v7 = *(v19[2] + 8 * (*v19[2] == v19));
  }

  if ((v7[3] & 1) == 0)
  {
    *(v7 + 24) = 1;
    *(v12 + 24) = 0;
    v20 = v13[1];
    *v12 = v20;
    if (v20)
    {
      *(v20 + 16) = v12;
    }

    v21 = v12[2];
    v13[2] = v21;
    v21[*v21 != v12] = v13;
    v13[1] = v12;
    v12[2] = v13;
    v22 = v7[1];
    if (result == v22)
    {
      result = v7;
    }

    v7 = *v22;
  }

  v23 = *v7;
  if (*v7 && *(v23 + 24) != 1)
  {
    goto LABEL_68;
  }

  v24 = v7[1];
  if (!v24 || *(v24 + 24) == 1)
  {
    *(v7 + 24) = 0;
    v19 = v7[2];
    if (*(v19 + 24) != 1 || v19 == result)
    {
LABEL_52:
      *(v19 + 24) = 1;
      return result;
    }

    goto LABEL_49;
  }

  if (!v23)
  {
    goto LABEL_65;
  }

  if (v23[3])
  {
    v24 = v7[1];
LABEL_65:
    *(v24 + 24) = 1;
    *(v7 + 24) = 0;
    v32 = *v24;
    v7[1] = *v24;
    if (v32)
    {
      *(v32 + 16) = v7;
    }

    v33 = v7[2];
    v24[2] = v33;
    v33[*v33 != v7] = v24;
    *v24 = v7;
    v7[2] = v24;
    v23 = v7;
  }

  else
  {
LABEL_68:
    v24 = v7;
  }

  v28 = v24[2];
  *(v24 + 24) = *(v28 + 24);
  *(v28 + 24) = 1;
  *(v23 + 24) = 1;
  v29 = *v28;
  v34 = *(*v28 + 8);
  *v28 = v34;
  if (v34)
  {
    *(v34 + 16) = v28;
  }

  v35 = *(v28 + 16);
  v29[2] = v35;
  v35[*v35 != v28] = v29;
  v29[1] = v28;
LABEL_72:
  *(v28 + 16) = v29;
  return result;
}

BOOL sub_10002529C(uint64_t a1)
{
  v1 = *(a1 + 2064);
  v2 = (a1 + 2072);
  if (v1 == (a1 + 2072))
  {
    return 0;
  }

  do
  {
    result = *(*(v1[5] + 8) + 146) != 0;
    if (*(*(v1[5] + 8) + 146))
    {
      break;
    }

    v4 = v1[1];
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
        v5 = v1[2];
        v6 = *v5 == v1;
        v1 = v5;
      }

      while (!v6);
    }

    v1 = v5;
  }

  while (v5 != v2);
  return result;
}

void sub_100025308(uint64_t a1, char a2)
{
  *buf = 0;
  sub_100016250(buf);
  v4 = *buf;
  v5 = *&buf[4];
  v6 = *(a1 + 296);
  v7 = *(a1 + 304);
  *&buf[6] = 0;
  v20[0] = v6;
  v20[1] = v7;
  if ((sub_100306C80(buf, v20) & 0x80000000) != 0 || (v8 = v5 - v7 + 1000 * (v4 - v6), HIDWORD(v8)))
  {
    v9 = qword_100BCEAD0;
    if (os_log_type_enabled(qword_100BCEAD0, OS_LOG_TYPE_ERROR))
    {
      v18 = *(a1 + 304) + 1000 * *(a1 + 296);
      *buf = 134218240;
      *&buf[4] = v5 + 1000 * v4;
      v22 = 2048;
      v23 = v18;
      _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "readControllerStats: currentTime %llu fSetRxThresholdVSCTime %llu", buf, 0x16u);
    }

    v10 = 0;
    v11 = 0;
  }

  else
  {
    v10 = v8 / 0x3E8;
    v11 = v8 % 0x3E8;
  }

  sub_1005BB918(a1);
  if (a2)
  {
    if (*(a1 + 328) == 1 && (*(a1 + 248) || *(a1 + 272)))
    {
      v12 = qword_100BCEAD0;
      if (os_log_type_enabled(qword_100BCEAD0, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "readScanStatsWithThreshold", buf, 2u);
      }

      v13 = sub_10000C7D0();
      v14 = (*(*v13 + 4184))(v13, 0, 1);
      if (v14)
      {
        v15 = qword_100BCEAD0;
        if (os_log_type_enabled(qword_100BCEAD0, OS_LOG_TYPE_ERROR))
        {
          sub_10084AB58(v14, v15);
        }
      }
    }

    else
    {
      v16 = qword_100BCEAD0;
      if (os_log_type_enabled(qword_100BCEAD0, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        *&buf[4] = v11 + 1000 * v10;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Host generates scanRxThresholdVSE with values %llu", buf, 0xCu);
      }

      v17 = sub_100017F4C();
      v19[0] = _NSConcreteStackBlock;
      v19[1] = 3321888768;
      v19[2] = sub_1005BF450;
      v19[3] = &unk_100AFFA00;
      v19[4] = a1;
      v19[5] = v10;
      v19[6] = v11;
      sub_10000CA94(v17, v19);
    }
  }

  else
  {
    sub_1005BE8E4(a1);
  }
}

unint64_t sub_1000255F0(int a1)
{
  v1 = a1 - &unk_100B52368;
  if (v1 >> 5 >= 0xCF)
  {
    sub_1000D660C();
  }

  return v1 / 0x18uLL;
}

uint64_t sub_100025638(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v5 = sub_10000C798();
  v6 = (*(*v5 + 1016))(v5);
  v7 = 0;
  if (a2 && v6)
  {
    if (*(a2 + 8))
    {
      v8 = sub_100032B14(a2);
      if (sub_100028FA8(a2) == 589824)
      {
        *a3 = sub_100028FA8(a2);
LABEL_6:
        v7 = 1;
      }

      else
      {
        if (v8 && [v8 count])
        {
          v17 = 0u;
          v18 = 0u;
          v15 = 0u;
          v16 = 0u;
          v9 = v8;
          v10 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
          if (v10)
          {
            v11 = *v16;
            while (2)
            {
              for (i = 0; i != v10; i = i + 1)
              {
                if (*v16 != v11)
                {
                  objc_enumerationMutation(v9);
                }

                v13 = *(*(&v15 + 1) + 8 * i);
                if ([v13 longLongValue] == 589824)
                {
                  *a3 = [v13 longLongValue];

                  goto LABEL_6;
                }
              }

              v10 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
              if (v10)
              {
                continue;
              }

              break;
            }
          }
        }

        v7 = 0;
      }
    }

    else
    {
      return 0;
    }
  }

  return v7;
}

uint64_t sub_100025818(uint64_t a1)
{
  result = (*(*a1 + 352))(a1);
  if (result)
  {
    return (*(sub_10000C7D0() + 800) - 1) >= 0x16 && sub_1000271F0() - 123 < 0xFFFFFFFC;
  }

  return result;
}

void sub_100025888(uint64_t a1, unint64_t a2, unsigned int a3, unsigned int a4)
{
  v5 = *(a1 + 2072);
  if (!v5)
  {
    goto LABEL_9;
  }

  v6 = a1 + 2072;
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
  if (v6 != a1 + 2072 && *(v6 + 32) <= a2)
  {
    v15 = sub_100025F64(*(v6 + 40));
    v16 = [NSMutableDictionary dictionaryWithDictionary:v15];

    v50 = 0;
    v51 = 0;
    v52 = 0;
    if (qword_100B512F8 != -1)
    {
      sub_100874358();
    }

    sub_100026B1C(off_100B512F0, a2, &v50);
    v43 = +[NSMutableString string];
    v17 = v50;
    if (v50 == v51)
    {
      v19 = 0;
      v18 = 0;
    }

    else
    {
      v18 = 0;
      v19 = 0;
      do
      {
        sub_10003B85C(v17, __p);
        if (v49 >= 0)
        {
          v20 = __p;
        }

        else
        {
          v20 = __p[0];
        }

        v21 = [NSString stringWithUTF8String:v20];
        v22 = [NSString stringWithFormat:@"%@ ", v21];
        [v43 appendString:v22];

        if (v49 < 0)
        {
          operator delete(__p[0]);
        }

        v24 = *v17;
        v17 += 20;
        v23 = v24;
        if (v24 == 16)
        {
          ++v19;
        }

        if (v23 == 2)
        {
          ++v18;
        }
      }

      while (v17 != v51);
    }

    [v16 setObject:v43 forKeyedSubscript:@"DAPlistServiceUUID"];
    v25 = [NSNumber numberWithUnsignedShort:v18];
    [v16 setObject:v25 forKeyedSubscript:@"DAPlistNumberOf16bitUUID"];

    v26 = [NSNumber numberWithUnsignedShort:v19];
    [v16 setObject:v26 forKeyedSubscript:@"DAPlistNumberOf128bitUUID"];

    if (qword_100B512F8 != -1)
    {
      sub_1008756B8();
    }

    v27 = sub_100026E14(off_100B512F0, a2);
    if (qword_100B512F8 != -1)
    {
      sub_1008756B8();
    }

    if (sub_100026E6C(off_100B512F0, a2))
    {
      v28 = 2;
    }

    else
    {
      v28 = v27;
    }

    if (qword_100B512F8 != -1)
    {
      sub_1008756B8();
    }

    if (sub_100026EC0(off_100B512F0, a2))
    {
      v29 = 4;
    }

    else
    {
      v29 = v28;
    }

    v30 = [NSNumber numberWithUnsignedInt:v29];
    [v16 setObject:v30 forKeyedSubscript:@"DASessionType"];

    if (qword_100B512F8 != -1)
    {
      sub_1008756B8();
    }

    if (sub_100026F14(off_100B512F0, a2))
    {
      if (qword_100B512F8 != -1)
      {
        sub_1008756B8();
      }

      v31 = sub_100024BEC(off_100B512F0, a2);
    }

    else
    {
      v31 = 0;
    }

    v32 = [NSNumber numberWithBool:v31];
    [v16 setObject:v32 forKeyedSubscript:@"SupportsStateRestoration"];

    v33 = [NSNumber numberWithUnsignedInt:*(a2 + 140)];
    [v16 setObject:v33 forKeyedSubscript:@"ClientType"];

    v34 = [NSNumber numberWithBool:a3];
    [v16 setObject:v34 forKeyedSubscript:@"IsPrioritizedOverBT"];

    v35 = [NSNumber numberWithBool:a4];
    [v16 setObject:v35 forKeyedSubscript:@"IsPrioritizedOverWiFi"];

    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v36 = *(*(*(v6 + 40) + 8) + 176);
    v37 = [v36 countByEnumeratingWithState:&v44 objects:v57 count:16];
    if (v37)
    {
      v38 = *v45;
      do
      {
        for (i = 0; i != v37; i = i + 1)
        {
          if (*v45 != v38)
          {
            objc_enumerationMutation(v36);
          }

          [v16 setObject:*(*(&v44 + 1) + 8 * i) forKeyedSubscript:@"BundleID"];
          v40 = sub_10000F034();
          (*(*v40 + 320))(v40, v16, 90);
        }

        v37 = [v36 countByEnumeratingWithState:&v44 objects:v57 count:16];
      }

      while (v37);
    }

    if (v50)
    {
      v51 = v50;
      operator delete(v50);
    }
  }

  else
  {
LABEL_9:
    v10 = qword_100BCE918;
    if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
    {
      sub_100018384(a2, &v50);
      v11 = SHIBYTE(v52);
      v12 = v50;
      sub_100025284(a2, __p);
      v13 = &v50;
      if (v11 < 0)
      {
        v13 = v12;
      }

      if (v49 >= 0)
      {
        v14 = __p;
      }

      else
      {
        v14 = __p[0];
      }

      *buf = 136446466;
      v54 = v13;
      v55 = 2082;
      v56 = v14;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "sendSessionScanMetricStats could not find an agent for %{public}s(%{public}s)", buf, 0x16u);
      if (v49 < 0)
      {
        operator delete(__p[0]);
      }

      if (SHIBYTE(v52) < 0)
      {
        operator delete(v50);
      }
    }
  }
}

void sub_100025E64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

id sub_100025F64(uint64_t a1)
{
  sub_100026A8C(a1);
  *(a1 + 65) = *(a1 + 81) == 16;
  v2 = *(a1 + 104);
  if (v2 != (a1 + 112))
  {
    do
    {
      if (qword_100B508C0 != -1)
      {
        sub_100877898();
      }

      v3 = off_100B508B8;
      v4 = sub_10004DF60(v2 + 32);
      LODWORD(v3) = sub_10004EE74(v3, v4);

      if (v3)
      {
        ++*(a1 + 72);
      }

      v5 = *(v2 + 1);
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
          v6 = *(v2 + 2);
          v7 = *v6 == v2;
          v2 = v6;
        }

        while (!v7);
      }

      v2 = v6;
    }

    while (v6 != (a1 + 112));
  }

  v61 = +[NSMutableDictionary dictionary];
  v62 = +[NSMutableString string];
  v69 = 0;
  v70 = 0;
  v71 = 0;
  sub_10000CB74(&v69, (*(a1 + 8) + 8));
  v9 = v69;
  v8 = v70;
  if (v69 == v70)
  {
    v11 = 0;
    v10 = 0;
  }

  else
  {
    v10 = 0;
    v11 = 0;
    do
    {
      sub_10003B85C(v9, __p);
      if (v68 >= 0)
      {
        v12 = __p;
      }

      else
      {
        v12 = __p[0];
      }

      v13 = [NSString stringWithUTF8String:v12];
      v14 = [NSString stringWithFormat:@"%@ ", v13];
      [v62 appendString:v14];

      if (v68 < 0)
      {
        operator delete(__p[0]);
      }

      v16 = *v9;
      v9 += 20;
      v15 = v16;
      if (v16 == 16)
      {
        ++v11;
      }

      if (v15 == 2)
      {
        ++v10;
      }
    }

    while (v9 != v8);
  }

  v17 = *(a1 + 8);
  v18 = *(v17 + 88);
  v19 = *(v17 + 96);
  if (v18 == v19)
  {
    v20 = 0;
  }

  else
  {
    v20 = 0;
    do
    {
      v21 = *(v18 + 56);
      v22 = [v21 count];

      v20 += v22;
      v18 += 96;
    }

    while (v18 != v19);
  }

  [v61 setObject:v62 forKeyedSubscript:@"ServiceUUID"];
  v23 = [NSNumber numberWithUnsignedShort:v10];
  [v61 setObject:v23 forKeyedSubscript:@"NumberOf16bitUUID"];

  v24 = [NSNumber numberWithUnsignedShort:v11];
  [v61 setObject:v24 forKeyedSubscript:@"NumberOf128bitUUID"];

  v25 = [NSNumber numberWithUnsignedLong:0xAAAAAAAAAAAAAAABLL * ((*(*(a1 + 8) + 96) - *(*(a1 + 8) + 88)) >> 5)];
  [v61 setObject:v25 forKeyedSubscript:@"NumberOfPuckType"];

  v26 = [NSNumber numberWithUnsignedShort:v20];
  [v61 setObject:v26 forKeyedSubscript:@"NumberOfPeers"];

  v27 = [NSNumber numberWithUnsignedChar:*(*(a1 + 8) + 146)];
  [v61 setObject:v27 forKeyedSubscript:@"ObjectDiscoveryMask"];

  v28 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [*(*(a1 + 8) + 112) count] != 0);
  [v61 setObject:v28 forKeyedSubscript:@"HasZoneFilter"];

  v29 = [NSNumber numberWithBool:*(*(a1 + 8) + 172)];
  [v61 setObject:v29 forKeyedSubscript:@"isContactTracing"];

  v30 = [NSNumber numberWithUnsignedLongLong:*(a1 + 24)];
  [v61 setObject:v30 forKeyedSubscript:@"NumberOfEventsInBackground"];

  v31 = [NSNumber numberWithUnsignedLongLong:*(a1 + 32)];
  [v61 setObject:v31 forKeyedSubscript:@"NumberOfEventsInForeground"];

  v32 = [NSNumber numberWithUnsignedInt:*(a1 + 120)];
  [v61 setObject:v32 forKeyedSubscript:@"NumberOfUniqueDevicesFound"];

  v33 = [NSNumber numberWithUnsignedLongLong:*(a1 + 72)];
  [v61 setObject:v33 forKeyedSubscript:@"NumberOfUniquePairedDevicesFound"];

  v34 = [NSNumber numberWithBool:**(a1 + 8)];
  [v61 setObject:v34 forKeyedSubscript:@"AllowsDuplicates"];

  v35 = [NSNumber numberWithUnsignedLongLong:*(a1 + 40)];
  [v61 setObject:v35 forKeyedSubscript:@"TimeSpentInBackground"];

  v36 = [NSNumber numberWithUnsignedLongLong:*(a1 + 48)];
  [v61 setObject:v36 forKeyedSubscript:@"TimeSpentInForeground"];

  v37 = [NSNumber numberWithUnsignedLongLong:*(a1 + 56)];
  [v61 setObject:v37 forKeyedSubscript:@"DurationInMS"];

  v38 = [NSNumber numberWithBool:*(a1 + 64)];
  [v61 setObject:v38 forKeyedSubscript:@"AppInForegroundAtStart"];

  v39 = [NSNumber numberWithBool:*(a1 + 65)];
  [v61 setObject:v39 forKeyedSubscript:@"AppInForegroundAtStop"];

  v40 = [NSNumber numberWithBool:sub_10000D1C8(a1)];
  [v61 setObject:v40 forKeyedSubscript:@"AllowedInBackground"];

  v41 = [NSNumber numberWithBool:*(a1 + 82)];
  [v61 setObject:v41 forKeyedSubscript:@"ScreenState"];

  v42 = objc_alloc_init(NSMutableSet);
  v43 = *(a1 + 8);
  if (*(v43 + 192))
  {
    v44 = [NSNumber numberWithUnsignedInt:?];
    [v42 addObject:v44];

    v43 = *(a1 + 8);
  }

  v45 = *(v43 + 88);
  v46 = *(v43 + 96);
  while (v45 != v46)
  {
    v47 = *(v45 + 72);
    v63 = 0u;
    v64 = 0u;
    v65 = 0u;
    v66 = 0u;
    v48 = v47;
    v49 = [v48 countByEnumeratingWithState:&v63 objects:v72 count:16];
    if (v49)
    {
      v50 = *v64;
      do
      {
        for (i = 0; i != v49; i = i + 1)
        {
          if (*v64 != v50)
          {
            objc_enumerationMutation(v48);
          }

          if ([*(*(&v63 + 1) + 8 * i) longLongValue])
          {
            v52 = [NSNumber numberWithUnsignedInt:?];
            [v42 addObject:v52];
          }
        }

        v49 = [v48 countByEnumeratingWithState:&v63 objects:v72 count:16];
      }

      while (v49);
    }

    v45 += 96;
  }

  if ([v42 count])
  {
    v53 = [v42 allObjects];
    v54 = +[NSMutableArray array];
    v55 = [v53 sortedArrayUsingSelector:"compare:"];

    for (j = 0; j < [v55 count]; ++j)
    {
      v57 = [v55 objectAtIndex:j];
      v58 = +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", sub_10002FC04([v57 longLongValue]));
      [v54 addObject:v58];
    }

    v59 = [v54 componentsJoinedByString:{@", "}];
    [v61 setObject:v59 forKeyedSubscript:@"CBUseCase"];
  }

  else
  {
    v55 = [NSString stringWithUTF8String:"Unspecified"];
    [v61 setObject:v55 forKeyedSubscript:@"CBUseCase"];
  }

  if (v69)
  {
    v70 = v69;
    operator delete(v69);
  }

  return v61;
}

void sub_1000267BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *__p, uint64_t a28)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1000269D4()
{
  if (!dword_100B5B42C)
  {
    mach_timebase_info(&dword_100B5B428);
    v0 = dword_100B5B42C;
    v1 = dword_100B5B42C;
    v2 = dword_100B5B428;
    while (v2)
    {
      if (v2 > v1)
      {
        v3 = v2 % v1;
        v2 = v1;
        v1 = v3;
      }

      v4 = v1;
      v1 = v2;
      v5 = v4 == v2;
      v2 = v4;
      if (v5)
      {
        LODWORD(v1) = 1;
        break;
      }
    }

    v6 = dword_100B5B42C / v1;
    dword_100B5B428 /= v1;
    dword_100B5B42C /= v1;
    if ((v0 / v1) >> 1 >= 0x863)
    {
      sub_1000D660C();
      v6 = dword_100B5B42C;
    }

    dword_100B5B42C = 1000000 * v6;
  }

  return mach_continuous_time() * dword_100B5B428 / dword_100B5B42C;
}

uint64_t sub_100026A8C(uint64_t a1)
{
  result = sub_1000269D4();
  v3 = result - *(a1 + 216);
  *(a1 + 216) = result;
  *(a1 + 56) += v3;
  v4 = *(a1 + 81);
  if (v4 <= 0x20)
  {
    if (((1 << v4) & 0x100010002) != 0)
    {
      v5 = 48;
    }

    else
    {
      if (((1 << v4) & 0x110) == 0)
      {
        return result;
      }

      v5 = 40;
    }

    *(a1 + v5) += v3;
  }

  return result;
}

void sub_100026B1C(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  v6 = *(a1 + 232);
  v4 = a1 + 232;
  v5 = v6;
  a3[2] = 0;
  if (v6)
  {
    v7 = v4;
    do
    {
      v8 = *(v5 + 32);
      v9 = v8 >= a2;
      v10 = v8 < a2;
      if (v9)
      {
        v7 = v5;
      }

      v5 = *(v5 + 8 * v10);
    }

    while (v5);
    if (v7 != v4 && *(v7 + 32) <= a2 && !(*(**(v7 + 40) + 16))(*(v7 + 40)))
    {
      v11 = *(v7 + 40);
      if (v11)
      {
        v34 = 0u;
        v35 = 0u;
        v32 = 0u;
        v33 = 0u;
        obj = *(v11 + 200);
        v12 = [obj countByEnumeratingWithState:&v32 objects:v39 count:16];
        if (v12)
        {
          v13 = *v33;
          do
          {
            for (i = 0; i != v12; i = i + 1)
            {
              if (*v33 != v13)
              {
                objc_enumerationMutation(obj);
              }

              v15 = [[NSUUID alloc] initWithUUIDString:*(*(&v32 + 1) + 8 * i)];
              v38 = 0uLL;
              [v15 getUUIDBytes:&v38];
              sub_100065F40(&v36, &v38, 16);
              v17 = a3[1];
              v16 = a3[2];
              if (v17 >= v16)
              {
                v20 = 0xCCCCCCCCCCCCCCCDLL * ((v17 - *a3) >> 2);
                v21 = v20 + 1;
                if (v20 + 1 > 0xCCCCCCCCCCCCCCCLL)
                {
                  sub_1000C7698();
                }

                v22 = 0xCCCCCCCCCCCCCCCDLL * ((v16 - *a3) >> 2);
                if (2 * v22 > v21)
                {
                  v21 = 2 * v22;
                }

                if (v22 >= 0x666666666666666)
                {
                  v23 = 0xCCCCCCCCCCCCCCCLL;
                }

                else
                {
                  v23 = v21;
                }

                if (v23)
                {
                  sub_100018404(a3, v23);
                }

                v24 = 20 * v20;
                v25 = v36;
                *(v24 + 16) = v37;
                *v24 = v25;
                v26 = *a3;
                v27 = a3[1];
                v28 = 20 * v20 + *a3 - v27;
                if (*a3 != v27)
                {
                  v29 = v24 + *a3 - v27;
                  do
                  {
                    v30 = *v26;
                    *(v29 + 16) = v26[4];
                    *v29 = v30;
                    v29 += 20;
                    v26 += 5;
                  }

                  while (v26 != v27);
                  v26 = *a3;
                }

                v19 = v24 + 20;
                *a3 = v28;
                a3[1] = v24 + 20;
                a3[2] = 0;
                if (v26)
                {
                  operator delete(v26);
                }
              }

              else
              {
                v18 = v36;
                *(v17 + 16) = v37;
                *v17 = v18;
                v19 = v17 + 20;
              }

              a3[1] = v19;
            }

            v12 = [obj countByEnumeratingWithState:&v32 objects:v39 count:16];
          }

          while (v12);
        }
      }
    }
  }
}

void sub_100026DC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  v12 = *v10;
  if (*v10)
  {
    *(v10 + 8) = v12;
    operator delete(v12);
  }

  _Unwind_Resume(a1);
}

BOOL sub_100026E14(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 232);
  v2 = a1 + 232;
  v3 = v4;
  if (!v4)
  {
    return 0;
  }

  v5 = v2;
  do
  {
    v6 = *(v3 + 32);
    v7 = v6 >= a2;
    v8 = v6 < a2;
    if (v7)
    {
      v5 = v3;
    }

    v3 = *(v3 + 8 * v8);
  }

  while (v3);
  return v5 != v2 && *(v5 + 32) <= a2 && (v9 = *(v5 + 40)) != 0 && *(v9 + 472) != 0;
}

uint64_t sub_100026E6C(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 232);
  v2 = a1 + 232;
  v3 = v4;
  if (!v4)
  {
    goto LABEL_9;
  }

  v5 = v2;
  do
  {
    v6 = *(v3 + 32);
    v7 = v6 >= a2;
    v8 = v6 < a2;
    if (v7)
    {
      v5 = v3;
    }

    v3 = *(v3 + 8 * v8);
  }

  while (v3);
  if (v5 != v2 && *(v5 + 32) <= a2)
  {
    v9 = *(v5 + 40);
    if (v9)
    {
      LOBYTE(v9) = *(v9 + 481);
    }
  }

  else
  {
LABEL_9:
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_100026EC0(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 232);
  v2 = a1 + 232;
  v3 = v4;
  if (!v4)
  {
    goto LABEL_9;
  }

  v5 = v2;
  do
  {
    v6 = *(v3 + 32);
    v7 = v6 >= a2;
    v8 = v6 < a2;
    if (v7)
    {
      v5 = v3;
    }

    v3 = *(v3 + 8 * v8);
  }

  while (v3);
  if (v5 != v2 && *(v5 + 32) <= a2)
  {
    v9 = *(v5 + 40);
    if (v9)
    {
      LOBYTE(v9) = *(v9 + 482);
    }
  }

  else
  {
LABEL_9:
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

BOOL sub_100026F14(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 232);
  v2 = a1 + 232;
  v3 = v4;
  if (!v4)
  {
    goto LABEL_9;
  }

  v5 = v2;
  do
  {
    v6 = *(v3 + 32);
    v7 = v6 >= a2;
    v8 = v6 < a2;
    if (v7)
    {
      v5 = v3;
    }

    v3 = *(v3 + 8 * v8);
  }

  while (v3);
  if (v5 == v2 || *(v5 + 32) > a2)
  {
LABEL_9:
    v5 = v2;
  }

  return v5 != v2;
}

void sub_100026F5C(uint64_t a1)
{
  sub_100026F94(a1);

  operator delete();
}

uint64_t sub_100026F94(uint64_t a1)
{
  *a1 = &off_100B0D770;
  v2 = *(a1 + 8);
  if (v2)
  {
    sub_100028D78(v2);
    operator delete();
  }

  if (*(a1 + 255) < 0)
  {
    operator delete(*(a1 + 232));
  }

  sub_100027030(a1 + 184, *(a1 + 192));
  sub_10000CEDC(a1 + 152, *(a1 + 160));
  sub_100028EB4((a1 + 128));
  sub_10002708C(a1 + 104, *(a1 + 112));
  return a1;
}

void sub_100027030(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_100027030(a1, *a2);
    sub_100027030(a1, a2[1]);
    sub_1007B531C(a2 + 6);

    operator delete(a2);
  }
}

void sub_10002708C(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_10002708C(a1, *a2);
    sub_10002708C(a1, a2[1]);
    a2[6] = &off_100AE0AB8;
    v4 = a2[7];
    if (v4)
    {
      sub_10000C808(v4);
    }

    operator delete(a2);
  }
}

id sub_10002710C(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = (*(*(a1 + 32) + 16))();
  v3 = sub_100024C58(v1, v2);

  return v3;
}

uint64_t *sub_10002717C(uint64_t **a1, uint64_t *a2)
{
  v2 = a2[1];
  if (v2)
  {
    do
    {
      v3 = v2;
      v2 = *v2;
    }

    while (v2);
  }

  else
  {
    v4 = a2;
    do
    {
      v3 = v4[2];
      v5 = *v3 == v4;
      v4 = v3;
    }

    while (!v5);
  }

  if (*a1 == a2)
  {
    *a1 = v3;
  }

  v6 = a1[1];
  a1[2] = (a1[2] - 1);
  sub_100024F04(v6, a2);
  return v3;
}

uint64_t sub_1000271F0()
{
  if (MGIsDeviceOfType())
  {
    v0 = 0;
LABEL_267:
    dword_100B54640 = v0;
    return dword_100B54640;
  }

  if (MGIsDeviceOfType())
  {
    v0 = 2;
    goto LABEL_267;
  }

  if (MGIsDeviceOfType())
  {
    v0 = 1;
    goto LABEL_267;
  }

  if (MGIsDeviceOfType())
  {
    v0 = 3;
    goto LABEL_267;
  }

  if (MGIsDeviceOfType())
  {
    v0 = 4;
    goto LABEL_267;
  }

  if (MGIsDeviceOfType())
  {
    v0 = 5;
    goto LABEL_267;
  }

  if (MGIsDeviceOfType())
  {
    v0 = 6;
    goto LABEL_267;
  }

  if (MGIsDeviceOfType())
  {
    v0 = 8;
    goto LABEL_267;
  }

  if (MGIsDeviceOfType())
  {
    v0 = 7;
    goto LABEL_267;
  }

  if (MGIsDeviceOfType())
  {
    v0 = 9;
    goto LABEL_267;
  }

  if (MGIsDeviceOfType())
  {
    v0 = 10;
    goto LABEL_267;
  }

  if (MGIsDeviceOfType())
  {
    v0 = 11;
    goto LABEL_267;
  }

  if (MGIsDeviceOfType())
  {
    v0 = 12;
    goto LABEL_267;
  }

  if (MGIsDeviceOfType())
  {
    v0 = 13;
    goto LABEL_267;
  }

  if (MGIsDeviceOfType())
  {
    v0 = 14;
    goto LABEL_267;
  }

  if (MGIsDeviceOfType())
  {
    v0 = 15;
    goto LABEL_267;
  }

  if (MGIsDeviceOfType())
  {
    v0 = 16;
    goto LABEL_267;
  }

  if (MGIsDeviceOfType())
  {
    v0 = 17;
    goto LABEL_267;
  }

  if (MGIsDeviceOfType())
  {
    v0 = 18;
    goto LABEL_267;
  }

  if (MGIsDeviceOfType())
  {
    v0 = 19;
    goto LABEL_267;
  }

  if (MGIsDeviceOfType())
  {
    v0 = 28;
    goto LABEL_267;
  }

  if (MGIsDeviceOfType())
  {
    v0 = 21;
    goto LABEL_267;
  }

  if (MGIsDeviceOfType())
  {
    v0 = 22;
    goto LABEL_267;
  }

  if (MGIsDeviceOfType())
  {
    v0 = 20;
    goto LABEL_267;
  }

  if (MGIsDeviceOfType())
  {
    v0 = 29;
    goto LABEL_267;
  }

  if (MGIsDeviceOfType())
  {
    v0 = 30;
    goto LABEL_267;
  }

  if (MGIsDeviceOfType())
  {
    v0 = 31;
    goto LABEL_267;
  }

  if (MGIsDeviceOfType())
  {
    v0 = 32;
    goto LABEL_267;
  }

  if (MGIsDeviceOfType())
  {
    v0 = 33;
    goto LABEL_267;
  }

  if (MGIsDeviceOfType())
  {
    v0 = 34;
    goto LABEL_267;
  }

  if (MGIsDeviceOfType())
  {
    v0 = 35;
    goto LABEL_267;
  }

  if (MGIsDeviceOfType())
  {
    v0 = 36;
    goto LABEL_267;
  }

  if (MGIsDeviceOfType())
  {
    v0 = 37;
    goto LABEL_267;
  }

  if (MGIsDeviceOfType())
  {
    v0 = 38;
    goto LABEL_267;
  }

  if (MGIsDeviceOfType())
  {
    v0 = 39;
    goto LABEL_267;
  }

  if (MGIsDeviceOfType())
  {
    v0 = 40;
    goto LABEL_267;
  }

  if (MGIsDeviceOfType())
  {
    v0 = 41;
    goto LABEL_267;
  }

  if (MGIsDeviceOfType())
  {
    v0 = 42;
    goto LABEL_267;
  }

  if (MGIsDeviceOfType())
  {
    v0 = 43;
    goto LABEL_267;
  }

  if (MGIsDeviceOfType())
  {
    v0 = 44;
    goto LABEL_267;
  }

  if (MGIsDeviceOfType())
  {
    v0 = 45;
    goto LABEL_267;
  }

  if (MGIsDeviceOfType())
  {
    v0 = 46;
    goto LABEL_267;
  }

  if (MGIsDeviceOfType())
  {
    v0 = 47;
    goto LABEL_267;
  }

  if (MGIsDeviceOfType())
  {
    v0 = 48;
    goto LABEL_267;
  }

  if (MGIsDeviceOfType())
  {
    v0 = 49;
    goto LABEL_267;
  }

  if (MGIsDeviceOfType())
  {
    v0 = 50;
    goto LABEL_267;
  }

  if (MGIsDeviceOfType())
  {
    v0 = 51;
    goto LABEL_267;
  }

  if (MGIsDeviceOfType())
  {
    v0 = 56;
    goto LABEL_267;
  }

  if (MGIsDeviceOfType())
  {
    v0 = 64;
    goto LABEL_267;
  }

  if (MGIsDeviceOfType())
  {
    v0 = 65;
    goto LABEL_267;
  }

  if (MGIsDeviceOfType())
  {
    v0 = 68;
    goto LABEL_267;
  }

  if (MGIsDeviceOfType())
  {
    v0 = 69;
    goto LABEL_267;
  }

  if (MGIsDeviceOfType())
  {
    v0 = 82;
    goto LABEL_267;
  }

  if (MGIsDeviceOfType())
  {
    v0 = 83;
    goto LABEL_267;
  }

  if (MGIsDeviceOfType())
  {
    v0 = 84;
    goto LABEL_267;
  }

  if (MGIsDeviceOfType())
  {
    v0 = 85;
    goto LABEL_267;
  }

  if (MGIsDeviceOfType())
  {
    v0 = 86;
    goto LABEL_267;
  }

  if (MGIsDeviceOfType())
  {
    v0 = 87;
    goto LABEL_267;
  }

  if (MGIsDeviceOfType())
  {
    v0 = 88;
    goto LABEL_267;
  }

  if (MGIsDeviceOfType())
  {
    v0 = 89;
    goto LABEL_267;
  }

  if (MGIsDeviceOfType())
  {
    v0 = 110;
    goto LABEL_267;
  }

  if (MGIsDeviceOfType())
  {
    v0 = 111;
    goto LABEL_267;
  }

  if (MGIsDeviceOfType())
  {
    v0 = 116;
    goto LABEL_267;
  }

  if (MGIsDeviceOfType())
  {
    v0 = 117;
    goto LABEL_267;
  }

  if (MGIsDeviceOfType())
  {
    v0 = 66;
    goto LABEL_267;
  }

  if (MGIsDeviceOfType())
  {
    v0 = 67;
    goto LABEL_267;
  }

  if (MGIsDeviceOfType())
  {
    v0 = 62;
    goto LABEL_267;
  }

  if (MGIsDeviceOfType())
  {
    v0 = 63;
    goto LABEL_267;
  }

  if (MGIsDeviceOfType())
  {
    v0 = 60;
    goto LABEL_267;
  }

  if (MGIsDeviceOfType())
  {
    v0 = 61;
    goto LABEL_267;
  }

  if (MGIsDeviceOfType())
  {
    v0 = 58;
    goto LABEL_267;
  }

  if (MGIsDeviceOfType())
  {
    v0 = 59;
    goto LABEL_267;
  }

  if (MGIsDeviceOfType())
  {
    v0 = 96;
    goto LABEL_267;
  }

  if (MGIsDeviceOfType())
  {
    v0 = 97;
    goto LABEL_267;
  }

  if (MGIsDeviceOfType())
  {
    v0 = 98;
    goto LABEL_267;
  }

  if (MGIsDeviceOfType())
  {
    v0 = 99;
    goto LABEL_267;
  }

  if (MGIsDeviceOfType())
  {
    v0 = 100;
    goto LABEL_267;
  }

  if (MGIsDeviceOfType())
  {
    v0 = 101;
    goto LABEL_267;
  }

  if (MGIsDeviceOfType())
  {
    v0 = 102;
    goto LABEL_267;
  }

  if (MGIsDeviceOfType())
  {
    v0 = 104;
    goto LABEL_267;
  }

  if (MGIsDeviceOfType())
  {
    v0 = 106;
    goto LABEL_267;
  }

  if (MGIsDeviceOfType())
  {
    v0 = 108;
    goto LABEL_267;
  }

  if (MGIsDeviceOfType())
  {
    v0 = 103;
    goto LABEL_267;
  }

  if (MGIsDeviceOfType())
  {
    v0 = 105;
    goto LABEL_267;
  }

  if (MGIsDeviceOfType())
  {
    v0 = 107;
    goto LABEL_267;
  }

  if (MGIsDeviceOfType())
  {
    v0 = 109;
    goto LABEL_267;
  }

  if (MGIsDeviceOfType())
  {
    v0 = 26;
    goto LABEL_267;
  }

  if (MGIsDeviceOfType())
  {
    v0 = 27;
    goto LABEL_267;
  }

  if (MGIsDeviceOfType())
  {
    v0 = 148;
    goto LABEL_267;
  }

  if (MGIsDeviceOfType())
  {
    v0 = 157;
    goto LABEL_267;
  }

  if (MGIsDeviceOfType())
  {
    v0 = 160;
    goto LABEL_267;
  }

  if (MGIsDeviceOfType())
  {
    v0 = 123;
    goto LABEL_267;
  }

  if (MGIsDeviceOfType())
  {
    v0 = 124;
    goto LABEL_267;
  }

  if (MGIsDeviceOfType())
  {
    v0 = 126;
    goto LABEL_267;
  }

  if (MGIsDeviceOfType())
  {
    v0 = 147;
    goto LABEL_267;
  }

  if (MGIsDeviceOfType())
  {
    v0 = 119;
    goto LABEL_267;
  }

  if (MGIsDeviceOfType())
  {
    v0 = 120;
    goto LABEL_267;
  }

  if (MGIsDeviceOfType())
  {
    v0 = 121;
    goto LABEL_267;
  }

  if (MGIsDeviceOfType())
  {
    v0 = 122;
    goto LABEL_267;
  }

  if (MGIsDeviceOfType())
  {
    v0 = 134;
    goto LABEL_267;
  }

  if (MGIsDeviceOfType())
  {
    v0 = 135;
    goto LABEL_267;
  }

  if (MGIsDeviceOfType())
  {
    v0 = 136;
    goto LABEL_267;
  }

  if (MGIsDeviceOfType())
  {
    v0 = 137;
    goto LABEL_267;
  }

  if (MGIsDeviceOfType())
  {
    v0 = 138;
    goto LABEL_267;
  }

  if (MGIsDeviceOfType())
  {
    v0 = 139;
    goto LABEL_267;
  }

  if (MGIsDeviceOfType())
  {
    v0 = 140;
    goto LABEL_267;
  }

  if (MGIsDeviceOfType())
  {
    v0 = 141;
    goto LABEL_267;
  }

  if (MGIsDeviceOfType())
  {
    v0 = 74;
    goto LABEL_267;
  }

  if (MGIsDeviceOfType())
  {
    v0 = 76;
    goto LABEL_267;
  }

  if (MGIsDeviceOfType())
  {
    v0 = 78;
    goto LABEL_267;
  }

  if (MGIsDeviceOfType())
  {
    v0 = 80;
    goto LABEL_267;
  }

  if (MGIsDeviceOfType())
  {
    v0 = 75;
    goto LABEL_267;
  }

  if (MGIsDeviceOfType())
  {
    v0 = 77;
    goto LABEL_267;
  }

  if (MGIsDeviceOfType())
  {
    v0 = 79;
    goto LABEL_267;
  }

  if (MGIsDeviceOfType())
  {
    v0 = 81;
    goto LABEL_267;
  }

  if (MGIsDeviceOfType())
  {
    v0 = 90;
    goto LABEL_267;
  }

  if (MGIsDeviceOfType())
  {
    v0 = 91;
    goto LABEL_267;
  }

  if (MGIsDeviceOfType())
  {
    v0 = 92;
    goto LABEL_267;
  }

  if (MGIsDeviceOfType())
  {
    v0 = 93;
    goto LABEL_267;
  }

  if (MGIsDeviceOfType())
  {
    v0 = 112;
    goto LABEL_267;
  }

  if (MGIsDeviceOfType())
  {
    v0 = 113;
    goto LABEL_267;
  }

  if (MGIsDeviceOfType())
  {
    v0 = 132;
    goto LABEL_267;
  }

  if (MGIsDeviceOfType())
  {
    v0 = 133;
    goto LABEL_267;
  }

  if (MGIsDeviceOfType())
  {
    v0 = 114;
    goto LABEL_267;
  }

  if (MGIsDeviceOfType())
  {
    v0 = 115;
    goto LABEL_267;
  }

  if (MGIsDeviceOfType())
  {
    v0 = 127;
    goto LABEL_267;
  }

  if (MGIsDeviceOfType())
  {
    v0 = 128;
    goto LABEL_267;
  }

  if (MGIsDeviceOfType())
  {
    v0 = 129;
    goto LABEL_267;
  }

  if (MGIsDeviceOfType())
  {
    v0 = 130;
    goto LABEL_267;
  }

  if (MGIsDeviceOfType())
  {
    v0 = 143;
    goto LABEL_267;
  }

  if (MGIsDeviceOfType())
  {
    v0 = 144;
    goto LABEL_267;
  }

  if (MGIsDeviceOfType())
  {
    v0 = 145;
    goto LABEL_267;
  }

  if (MGIsDeviceOfType())
  {
    v0 = 146;
    goto LABEL_267;
  }

  return dword_100B54640;
}

void sub_100028B38(uint64_t a1, unsigned int a2, void *a3)
{
  v4 = a3;
  v5 = sub_100028CC0(v4, a2);
  v6 = v4;
  v7 = AnalyticsSendEventLazy();
  v8 = qword_100BCE8D8;
  if (v7)
  {
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEBUG))
    {
      sub_10082DA84();
    }
  }

  else if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v10 = v5;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "BT Stats for metric '%@' sent to CoreAnalytics with result 0", buf, 0xCu);
  }
}

id sub_100028CC0(uint64_t a1, unsigned int a2)
{
  v3 = sub_100028D54(a1, a2);
  v4 = @"com.apple.Bluetooth.";
  if (a2 == 72)
  {
    v4 = @"com.apple.";
  }

  v5 = [NSString stringWithFormat:@"%@%@", v4, v3];

  return v5;
}

const __CFString *sub_100028D54(uint64_t a1, unsigned int a2)
{
  if (a2 > 0x8B)
  {
    return @"Unknown";
  }

  else
  {
    return *(&off_100AF6F10 + a2);
  }
}

uint64_t sub_100028D78(uint64_t a1)
{
  v2 = *(a1 + 112);
  *(a1 + 112) = 0;

  v3 = *(a1 + 176);
  *(a1 + 176) = 0;

  v10 = (a1 + 544);
  sub_1000161FC(&v10);
  v4 = *(a1 + 520);
  if (v4)
  {
    *(a1 + 528) = v4;
    operator delete(v4);
  }

  v5 = *(a1 + 496);
  if (v5)
  {
    *(a1 + 504) = v5;
    operator delete(v5);
  }

  v10 = (a1 + 464);
  sub_10000CF30(&v10);
  sub_10000CEDC(a1 + 432, *(a1 + 440));
  v6 = *(a1 + 408);
  if (v6)
  {
    *(a1 + 416) = v6;
    operator delete(v6);
  }

  v10 = (a1 + 384);
  sub_10000CFB0(&v10);

  v10 = (a1 + 120);
  sub_100018458(&v10);

  v10 = (a1 + 88);
  sub_10003B78C(&v10);

  v7 = *(a1 + 56);
  if (v7)
  {
    *(a1 + 64) = v7;
    operator delete(v7);
  }

  sub_10000CEDC(a1 + 32, *(a1 + 40));
  v8 = *(a1 + 8);
  if (v8)
  {
    *(a1 + 16) = v8;
    operator delete(v8);
  }

  return a1;
}

void *sub_100028EB4(void *result)
{
  if (result[2])
  {
    v1 = result;
    result = result[1];
    v2 = *(*v1 + 8);
    v3 = *result;
    *(v3 + 8) = v2;
    *v2 = v3;
    v1[2] = 0;
    if (result != v1)
    {
      do
      {
        v4 = result[1];
        operator delete(result);
        result = v4;
      }

      while (v4 != v1);
    }
  }

  return result;
}

uint64_t sub_100028F18(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10049F864;
  block[3] = &unk_100ADF8F8;
  block[4] = a1;
  if (qword_100B6E698 != -1)
  {
    dispatch_once(&qword_100B6E698, block);
  }

  return byte_100B6E690;
}

uint64_t sub_100028FC8()
{
  if (qword_100B508F0 != -1)
  {
    sub_10084AAA4();
  }

  v0 = sub_100029A5C(off_100B508E8);
  if (qword_100B508D0 != -1)
  {
    sub_10084AAB8();
  }

  v1 = sub_100029738(off_100B508C8);
  if (v1)
  {
    v2 = 3;
  }

  else
  {
    v2 = 1;
  }

  if (v0)
  {
    return v2;
  }

  else
  {
    return 2 * (v1 != 0);
  }
}

uint64_t sub_10002904C(uint64_t a1, uint64_t a2)
{
  if (!a2 || !*(a2 + 8))
  {
    return 0;
  }

  v3 = sub_100028FA8(a2);
  if (sub_100029928(v3, v3))
  {
    v4 = qword_100BCE918;
    if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
    {
      v5 = sub_100028FA8(a2);
      *buf = 136315138;
      v23 = sub_10002F16C(v5);
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Scanning Prioritization over BT for useCase %s", buf, 0xCu);
    }

    return 1;
  }

  else
  {
    v7 = sub_100032B14(a2);
    v8 = v7;
    if (v7 && [v7 count])
    {
      v19 = 0u;
      v20 = 0u;
      v17 = 0u;
      v18 = 0u;
      v9 = v8;
      v6 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v6)
      {
        v10 = *v18;
        while (2)
        {
          for (i = 0; i != v6; ++i)
          {
            if (*v18 != v10)
            {
              objc_enumerationMutation(v9);
            }

            v12 = *(*(&v17 + 1) + 8 * i);
            v13 = [v12 longLongValue];
            if (sub_100029928(v13, v13))
            {
              v14 = qword_100BCE918;
              if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
              {
                v15 = sub_10002F16C([v12 longLongValue]);
                *buf = 136315138;
                v23 = v15;
                _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Scanning Prioritization over BT for useCase %s", buf, 0xCu);
              }

              v6 = 1;
              goto LABEL_23;
            }
          }

          v6 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
          if (v6)
          {
            continue;
          }

          break;
        }
      }

LABEL_23:
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

uint64_t sub_1000292A4(uint64_t a1, uint64_t a2)
{
  if (!a2 || !*(a2 + 8))
  {
    return 0;
  }

  v3 = sub_100028FA8(a2);
  if (sub_100029B58(v3, v3))
  {
    v4 = qword_100BCE918;
    if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
    {
      v5 = sub_100028FA8(a2);
      *buf = 136315138;
      v23 = sub_10002F16C(v5);
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Scanning Prioritization over WiFi for useCase %s", buf, 0xCu);
    }

    return 1;
  }

  else
  {
    v7 = sub_100032B14(a2);
    v8 = v7;
    if (v7 && [v7 count])
    {
      v19 = 0u;
      v20 = 0u;
      v17 = 0u;
      v18 = 0u;
      v9 = v8;
      v6 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v6)
      {
        v10 = *v18;
        while (2)
        {
          for (i = 0; i != v6; ++i)
          {
            if (*v18 != v10)
            {
              objc_enumerationMutation(v9);
            }

            v12 = *(*(&v17 + 1) + 8 * i);
            v13 = [v12 longLongValue];
            if (sub_100029B58(v13, v13))
            {
              v14 = qword_100BCE918;
              if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
              {
                v15 = sub_10002F16C([v12 longLongValue]);
                *buf = 136315138;
                v23 = v15;
                _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Scanning Prioritization over WiFi for useCase %s", buf, 0xCu);
              }

              v6 = 1;
              goto LABEL_23;
            }
          }

          v6 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
          if (v6)
          {
            continue;
          }

          break;
        }
      }

LABEL_23:
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

uint64_t sub_1000294FC(uint64_t a1, unsigned __int8 *a2)
{
  if (!a2)
  {
    return 0;
  }

  v11[0] = 0;
  v11[1] = 0;
  sub_100007F88(v11, a1 + 24);
  v4 = (a2[128] << 40) | (a2[129] << 32) | (a2[130] << 24) | (a2[131] << 16) | (a2[132] << 8) | a2[133];
  for (i = *(a1 + 136); i; i = *i)
  {
    v6 = i[4];
    if (v4 >= v6)
    {
      if (v6 >= v4)
      {
LABEL_14:
        v9 = 1;
        goto LABEL_15;
      }

      ++i;
    }
  }

  for (j = *(a1 + 160); j; j = *j)
  {
    v8 = j[4];
    if (v4 >= v8)
    {
      if (v8 >= v4)
      {
        goto LABEL_14;
      }

      ++j;
    }
  }

  v9 = 0;
LABEL_15:
  sub_1000088CC(v11);
  return v9;
}

uint64_t sub_1000295DC(unsigned __int8 *a1)
{
  if (qword_100B512E8 != -1)
  {
    sub_10084087C();
  }

  v2 = off_100B512E0;

  return sub_1000294FC(v2, a1);
}

id sub_100029630(uint64_t a1)
{
  v2 = +[NSMutableArray array];
  v10[0] = 0;
  v10[1] = 0;
  sub_100007F88(v10, a1 + 120);
  v3 = *(a1 + 384);
  v4 = (a1 + 392);
  if (v3 != (a1 + 392))
  {
    do
    {
      v5 = sub_10004DF60(v3 + 32);
      [v2 addObject:v5];

      v6 = *(v3 + 1);
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
          v7 = *(v3 + 2);
          v8 = *v7 == v3;
          v3 = v7;
        }

        while (!v8);
      }

      v3 = v7;
    }

    while (v7 != v4);
  }

  sub_1000088CC(v10);

  return v2;
}

uint64_t sub_100029738(uint64_t a1)
{
  if (qword_100B508B0 != -1)
  {
    sub_100873ED4();
  }

  v2 = sub_100029630(off_100B508A8);
  v19[0] = 0;
  v19[1] = 0;
  sub_100007F88(v19, a1 + 96);
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = v2;
  v4 = 0;
  v5 = [v3 countByEnumeratingWithState:&v15 objects:v20 count:16];
  if (v5)
  {
    v6 = *v16;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v16 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v15 + 1) + 8 * i);
        sub_100007E30(__p, "HasBuiltinServices");
        v9 = sub_10004EB40(a1, v8, __p);
        v10 = v9;
        if (v14 < 0)
        {
          operator delete(__p[0]);
          if (!v10)
          {
            continue;
          }

LABEL_12:
          v11 = sub_10004B1D8(a1, v8);
          v4 = (v4 + sub_1000E3BD0(v11));
          continue;
        }

        if (v9)
        {
          goto LABEL_12;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v15 objects:v20 count:16];
    }

    while (v5);
  }

  sub_1000088CC(v19);
  return v4;
}

void sub_1000298D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24)
{
  sub_1000088CC(&a24);

  _Unwind_Resume(a1);
}

uint64_t sub_100029928(uint64_t a1, int a2)
{
  result = 1;
  if (((a2 - 131078) > 9 || ((1 << (a2 - 6)) & 0x203) == 0) && a2 != 22)
  {
    if (a2 == 265)
    {
      v5 = sub_10000C798();
      if ((*(*v5 + 352))(v5))
      {
        return 1;
      }

      v6 = sub_10000C798();
      if ((*(*v6 + 416))(v6))
      {
        return 1;
      }

      v7 = sub_10000C798();
      if ((*(*v7 + 456))(v7))
      {
        return 1;
      }

      else
      {
        v8 = *(*sub_10000C798() + 1000);

        return v8();
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_100029A5C(uint64_t a1)
{
  v10[0] = 0;
  v10[1] = 0;
  sub_100007F88(v10, a1 + 168);
  __p = 0;
  v8 = 0;
  v9 = 0;
  sub_100007F20(&__p, (a1 + 144));
  sub_10000801C(v10);
  v2 = __p;
  v3 = v8;
  if (__p == v8)
  {
    v4 = 0;
    if (!__p)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v4 = 0;
  do
  {
    v5 = *v2;
    if (sub_1000295DC(*v2) && sub_1000C0348(v5))
    {
      v4 = (v4 + sub_1000E2C08(v5));
    }

    ++v2;
  }

  while (v2 != v3);
  v2 = __p;
  if (__p)
  {
LABEL_8:
    v8 = v2;
    operator delete(v2);
  }

LABEL_9:
  sub_1000088CC(v10);
  return v4;
}

void sub_100029B28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_1000088CC(&a13);
  _Unwind_Resume(a1);
}

uint64_t sub_100029B58(uint64_t a1, int a2)
{
  if (a2 == 22)
  {
    v6 = *(*sub_10000C798() + 432);
  }

  else
  {
    if (a2 != 265)
    {
      return 0;
    }

    v2 = sub_10000C798();
    if ((*(*v2 + 352))(v2))
    {
      return 1;
    }

    v3 = sub_10000C798();
    if ((*(*v3 + 416))(v3))
    {
      return 1;
    }

    v4 = sub_10000C798();
    if ((*(*v4 + 456))(v4))
    {
      return 1;
    }

    v6 = *(*sub_10000C798() + 1000);
  }

  return v6();
}

const char *sub_100029CAC(int a1)
{
  if (a1 < 0x20000)
  {
    if (a1 <= 0x20000)
    {
      switch(a1)
      {
        case 65536:
          result = "FindMyAction";
          break;
        case 65537:
          result = "FindMyBackground";
          break;
        case 65538:
          result = "FindMyActionHELE";
          break;
        case 65539:
          result = "FindMyBackgroundHELE";
          break;
        case 65540:
          result = "FindMyActionTransient";
          break;
        case 65541:
          result = "FindMyBackgroundTransient";
          break;
        case 65542:
          result = "FindMyActionHELETransient";
          break;
        case 65543:
          result = "FindMyBackgroundHELETransient";
          break;
        case 65544:
          result = "FindMyNotOptedIn";
          break;
        case 65545:
          result = "FindMyOptedIn";
          break;
        case 65546:
          result = "FindMySepAlertsEnabled";
          break;
        case 65547:
          result = "FindMyTemporaryAggressiveLegacy";
          break;
        case 65548:
          result = "FindMyTemporaryLongAggressive";
          break;
        case 65549:
          result = "FindMyBTFindingUserInitiated";
          break;
        case 65550:
          result = "FindMyHELE";
          break;
        case 65551:
          result = "FindMyBeaconOnDemand";
          break;
        case 65552:
          result = "FindMyWildTimedScan";
          break;
        case 65553:
          result = "FindMyBackgroundLeechScan";
          break;
        case 65554:
          result = "FindMySnifferMode";
          break;
        case 65555:
          result = "FindMyUnpair";
          break;
        case 65556:
          result = "FindMyUnpairHELE";
          break;
        case 65557:
          result = "FindMyPlaySound";
          break;
        case 65558:
          result = "FindMyPlaySoundHELE";
          break;
        case 65559:
          result = "FindMyNotOptedInBeepOnMoveWaking";
          break;
        case 65560:
          result = "FindMyUTTransient";
          break;
        case 65561:
          result = "FindMyUTHELETransient";
          break;
        case 65562:
          result = "FindMyActionExtendedRange";
          break;
        case 65563:
          result = "FindMyActionExtendedRangeLE2M";
          break;
        case 65564:
          result = "FindMyActionExtendedRangeTransient";
          break;
        case 65565:
          result = "FindMyPlaySoundExtendedRange";
          break;
        case 65566:
          result = "FindMyPair";
          break;
        case 65567:
          result = "FindMyTemporaryAggressiveLegacyExtendedRange";
          break;
        default:
          JUMPOUT(0);
      }
    }

    else
    {
      result = "Unspecified";
      switch(a1)
      {
        case 0:
          return result;
        case 1:
          result = "HealthKit";
          break;
        case 2:
          result = "HomeKit";
          break;
        case 3:
          result = "FindMyObjectConnection";
          break;
        case 4:
          result = "FindMyObjectConnectionTransient";
          break;
        case 5:
          result = "MIDI";
          break;
        case 6:
          result = "Continuity";
          break;
        case 7:
          result = "InstantHotSpot";
          break;
        case 8:
          result = "NearBy";
          break;
        case 9:
          result = "Sharing";
          break;
        case 10:
          result = "HearingSupport";
          break;
        case 11:
          result = "Magnet";
          break;
        case 12:
          result = "HID";
          break;
        case 13:
          result = "LEA";
          break;
        case 14:
          result = "External";
          break;
        case 15:
          result = "ExternalMedical";
          break;
        case 16:
          result = "ExternalLock";
          break;
        case 17:
          result = "ExternalWatch";
          break;
        case 18:
          result = "SmartRouting";
          break;
        case 19:
          result = "DigitalID";
          break;
        case 20:
          result = "DigitalKey";
          break;
        case 21:
          result = "DigitalCarKey";
          break;
        case 22:
          result = "HeySiri";
          break;
        case 23:
          result = "ThirdPartyApp";
          break;
        case 24:
          result = "CNJ";
          break;
        default:
          switch(a1)
          {
            case 256:
              result = "DevicePresenceDetection";
              break;
            case 257:
              result = "AudioBox";
              break;
            case 258:
              result = "SIMTransfer";
              break;
            case 259:
              result = "ProximityScreenOnLeechScan";
              break;
            case 260:
              result = "MacMigrate";
              break;
            case 263:
              result = "HIDUARTService";
              break;
            case 264:
              result = "AccessibilitySwitchControlPairing";
              break;
            case 265:
              result = "BaseBandFastConnect";
              break;
            case 266:
              result = "SafetyAlerts";
              break;
            case 267:
              result = "LECarPlay";
              break;
            case 268:
              result = "TCCBluetooth";
              break;
            case 269:
              result = "AOPBufferLeech";
              break;
            case 270:
              result = "HighPriorityScanWiFi";
              break;
            default:
              return "?";
          }

          break;
      }
    }
  }

  else
  {
    if (a1 <= 0x80000)
    {
      if (a1 < 196608)
      {
        switch(a1)
        {
          case 131072:
            result = "SharingDefault";
            break;
          case 131073:
            result = "SharingPhoneAutoUnlock";
            break;
          case 131074:
            result = "SharingSiriWatchAuth";
            break;
          case 131075:
            result = "SharingMacAutoUnlock";
            break;
          case 131076:
            result = "SharingEDTScreenOn";
            break;
          case 131077:
            result = "SharingEDTWiFiDisabled";
            break;
          case 131078:
            result = "SharingEDTWombatEligibleAsDefaultCamera";
            break;
          case 131079:
            result = "SharingEDTWombatCameraPicker";
            break;
          case 131080:
            result = "SharingWombatBackground";
            break;
          case 131081:
            result = "SharingUniversalControl";
            break;
          case 131082:
            result = "SharingPeopleProximity";
            break;
          case 131083:
            result = "SharingEDTEnsembleOpenDisplayPrefs";
            break;
          case 131084:
            result = "SharingEDTNearbydMotionStopped";
            break;
          case 131085:
            result = "SharingDoubleBoostGenericScan";
            break;
          case 131086:
            result = "SharingEDTIncomingAdvertisement ";
            break;
          case 131087:
            result = "SharingEDTWombatStreamStart";
            break;
          case 131088:
            result = "SharingOYAutoUnlock";
            break;
          case 131090:
            result = "SharingAirDrop";
            break;
          case 131091:
            result = "SharingNearbyInvitationHost";
            break;
          case 131092:
            result = "SharingNearbyInvitationParticipant";
            break;
          case 131093:
            result = "SharingAirDropAskToAirDrop";
            break;
          case 131094:
            result = "SharingAirDropTempIdentity";
            break;
          case 131095:
            result = "SharingAirDropNeedsCLink";
            break;
          case 131096:
            result = "SharingRemoteWidgetUpdate";
            break;
          case 131097:
            result = "SharingCountryCodeUpdate";
            break;
          case 131098:
            result = "SharingMacPhoneAutoUnlock";
            break;
          case 131099:
            result = "SharingVisionProDiscovery";
            break;
          case 131100:
            result = "SharingVisionProStateChange";
            break;
          case 131101:
            result = "SharingContinuityScreen";
            break;
          case 131102:
            result = "SharingEDTRemoteDisplay";
            break;
          case 131103:
            result = "SharingHomePodSetup";
            break;
          default:
            return "?";
        }

        return result;
      }

      if (a1 > 393218)
      {
        if (a1 > 458752)
        {
          switch(a1)
          {
            case 0x70001:
              return "PrecisionFindingFindee";
            case 0x70002:
              return "SpatialHandoffHome";
            case 0x80000:
              return "ADPD";
          }
        }

        else
        {
          switch(a1)
          {
            case 393219:
              return "AppleIDSignIn";
            case 393220:
              return "AppleIDSignInSettings";
            case 458752:
              return "PrecisionFindingFinder";
          }
        }
      }

      else
      {
        if (a1 >= 393216)
        {
          if (a1 == 393216)
          {
            return "CaptiveNetworkJoin";
          }

          if (a1 == 393217)
          {
            return "UseCaseSIMTransfer";
          }

          return "MacSetup";
        }

        switch(a1)
        {
          case 196608:
            return "DigitalIDTSA";
          case 262144:
            return "DigitalCarKeyThirdParty";
          case 327680:
            return "RapportThirdParty";
        }
      }

      return "?";
    }

    if (a1 < 0x100000)
    {
      if (a1 <= 851968)
      {
        if (a1 >= 655360)
        {
          if (a1 <= 720896)
          {
            if (a1 == 655360)
            {
              return "AccessDigitalHomeKey";
            }

            if (a1 == 720896)
            {
              return "SoftwareUpdateBTWake";
            }
          }

          else
          {
            switch(a1)
            {
              case 720897:
                return "SofrwareUpdateOutboxControllerAuth";
              case 786432:
                return "ProxControlDeviceClose";
              case 851968:
                return "DCTProtocolTelephony";
            }
          }
        }

        else
        {
          if (a1 <= 524290)
          {
            if (a1 == 524289)
            {
              return "ADPDBuffer";
            }

            else
            {
              return "MicroLocation";
            }
          }

          switch(a1)
          {
            case 524291:
              return "MicroLocationLeech";
            case 589824:
              return "FindNearbyRemote";
            case 589825:
              return "FindNearbyPencil";
          }
        }
      }

      else if (a1 <= 983041)
      {
        if (a1 <= 917504)
        {
          if (a1 == 851969)
          {
            return "DCTProtocolDataAndTelephony";
          }

          if (a1 == 917504)
          {
            return "NearbyFaceTime";
          }
        }

        else
        {
          switch(a1)
          {
            case 917505:
              return "NearbyFaceTimeData";
            case 983040:
              return "SOSBeaconPartA";
            case 983041:
              return "SOSBeaconPartB";
          }
        }
      }

      else
      {
        if (a1 <= 983044)
        {
          if (a1 == 983042)
          {
            return "SOSBeaconPrecisionFindResponse";
          }

          if (a1 == 983043)
          {
            return "SOSBeaconPrecisionFindRequest";
          }

          return "SOSBeaconScan";
        }

        switch(a1)
        {
          case 983045:
            return "SOSBeaconActivateScan";
          case 983046:
            return "SOSBeaconActivateAdvA";
          case 983047:
            return "SOSBeaconActivateAdvB";
        }
      }

      return "?";
    }

    if (a1 <= 2147418111)
    {
      switch(a1)
      {
        case 1048576:
          return "DOS";
        case 1048577:
          return "DOD";
        case 1114112:
          return "ProximityServiceDeviceSetup";
      }

      return "?";
    }

    switch(a1)
    {
      case 2147418112:
        result = "InternalTestNoLockScan";
        break;
      case 2147418113:
        result = "InternalTestNoScreenOffScan";
        break;
      case 2147418114:
        result = "InternalTestScanWithNoDups";
        break;
      case 2147418115:
        result = "InternalTestScanWithDups";
        break;
      case 2147418116:
        result = "InternalTestScanFor20Seconds";
        break;
      case 2147418117:
        result = "InternalTestActiveScan";
        break;
      case 2147418118:
        result = "InternalTestUUIDScan";
        break;
      case 2147418119:
        result = "InternalTestScanFor10ClockSeconds";
        break;
      case 2147418120:
        result = "InternalTestScanBoost";
        break;
      case 2147418121:
        result = "InternalTestDiscoveryScanWithMRC";
        break;
      case 2147418122:
        result = "InternalTestAdvWithHigherPower";
        break;
      case 2147418123:
        result = "InternalTestScanLowDutyCycleMCOnly";
        break;
      case 2147418124:
        result = "InternalTestUUIDScanWithMinRSSI";
        break;
      case 2147418125:
        result = "InternalTestUUIDScanWithMinRSSIMediumLow";
        break;
      case 2147418126:
        result = "InternalTestAdvWithHigherPowerServiceDataConnectable";
        break;
      case 2147418127:
        result = "InternalTestAdvWithHigherPowerServiceDataNonConnectable";
        break;
      case 2147418128:
        result = "InternalTestAdvWithHigherPowerServiceDataS2";
        break;
      case 2147418129:
        result = "InternalTestAdvWithHigherPowerServiceDataS8";
        break;
      case 2147418130:
        result = "InternalTestDiscoveryScanCodedPHY";
        break;
      default:
        return "?";
    }
  }

  return result;
}

const char *sub_10002A744(int a1)
{
  if (a1 < 0x20000)
  {
    if (a1 <= 0x20000)
    {
      switch(a1)
      {
        case 65536:
          result = "FindMyAction";
          break;
        case 65537:
          result = "FindMyBackground";
          break;
        case 65538:
          result = "FindMyActionHELE";
          break;
        case 65539:
          result = "FindMyBackgroundHELE";
          break;
        case 65540:
          result = "FindMyActionTransient";
          break;
        case 65541:
          result = "FindMyBackgroundTransient";
          break;
        case 65542:
          result = "FindMyActionHELETransient";
          break;
        case 65543:
          result = "FindMyBackgroundHELETransient";
          break;
        case 65544:
          result = "FindMyNotOptedIn";
          break;
        case 65545:
          result = "FindMyOptedIn";
          break;
        case 65546:
          result = "FindMySepAlertsEnabled";
          break;
        case 65547:
          result = "FindMyTemporaryAggressiveLegacy";
          break;
        case 65548:
          result = "FindMyTemporaryLongAggressive";
          break;
        case 65549:
          result = "FindMyBTFindingUserInitiated";
          break;
        case 65550:
          result = "FindMyHELE";
          break;
        case 65551:
          result = "FindMyBeaconOnDemand";
          break;
        case 65552:
          result = "FindMyWildTimedScan";
          break;
        case 65553:
          result = "FindMyBackgroundLeechScan";
          break;
        case 65554:
          result = "FindMySnifferMode";
          break;
        case 65555:
          result = "FindMyUnpair";
          break;
        case 65556:
          result = "FindMyUnpairHELE";
          break;
        case 65557:
          result = "FindMyPlaySound";
          break;
        case 65558:
          result = "FindMyPlaySoundHELE";
          break;
        case 65559:
          result = "FindMyNotOptedInBeepOnMoveWaking";
          break;
        case 65560:
          result = "FindMyUTTransient";
          break;
        case 65561:
          result = "FindMyUTHELETransient";
          break;
        case 65562:
          result = "FindMyActionExtendedRange";
          break;
        case 65563:
          result = "FindMyActionExtendedRangeLE2M";
          break;
        case 65564:
          result = "FindMyActionExtendedRangeTransient";
          break;
        case 65565:
          result = "FindMyPlaySoundExtendedRange";
          break;
        case 65566:
          result = "FindMyPair";
          break;
        case 65567:
          result = "FindMyTemporaryAggressiveLegacyExtendedRange";
          break;
        default:
          JUMPOUT(0);
      }
    }

    else
    {
      result = "Unspecified";
      switch(a1)
      {
        case 0:
          return result;
        case 1:
          result = "HealthKit";
          break;
        case 2:
          result = "HomeKit";
          break;
        case 3:
          result = "FindMyObjectConnection";
          break;
        case 4:
          result = "FindMyObjectConnectionTransient";
          break;
        case 5:
          result = "MIDI";
          break;
        case 6:
          result = "Continuity";
          break;
        case 7:
          result = "InstantHotSpot";
          break;
        case 8:
          result = "NearBy";
          break;
        case 9:
          result = "Sharing";
          break;
        case 10:
          result = "HearingSupport";
          break;
        case 11:
          result = "Magnet";
          break;
        case 12:
          result = "HID";
          break;
        case 13:
          result = "LEA";
          break;
        case 14:
          result = "External";
          break;
        case 15:
          result = "ExternalMedical";
          break;
        case 16:
          result = "ExternalLock";
          break;
        case 17:
          result = "ExternalWatch";
          break;
        case 18:
          result = "SmartRouting";
          break;
        case 19:
          result = "DigitalID";
          break;
        case 20:
          result = "DigitalKey";
          break;
        case 21:
          result = "DigitalCarKey";
          break;
        case 22:
          result = "HeySiri";
          break;
        case 23:
          result = "ThirdPartyApp";
          break;
        case 24:
          result = "CNJ";
          break;
        default:
          switch(a1)
          {
            case 256:
              result = "DevicePresenceDetection";
              break;
            case 257:
              result = "AudioBox";
              break;
            case 258:
              result = "SIMTransfer";
              break;
            case 259:
              result = "ProximityScreenOnLeechScan";
              break;
            case 260:
              result = "MacMigrate";
              break;
            case 263:
              result = "HIDUARTService";
              break;
            case 264:
              result = "AccessibilitySwitchControlPairing";
              break;
            case 265:
              result = "BaseBandFastConnect";
              break;
            case 266:
              result = "SafetyAlerts";
              break;
            case 267:
              result = "LECarPlay";
              break;
            case 268:
              result = "TCCBluetooth";
              break;
            case 269:
              result = "AOPBufferLeech";
              break;
            case 270:
              result = "HighPriorityScanWiFi";
              break;
            default:
              return "?";
          }

          break;
      }
    }
  }

  else
  {
    if (a1 <= 0x80000)
    {
      if (a1 < 196608)
      {
        switch(a1)
        {
          case 131072:
            result = "SharingDefault";
            break;
          case 131073:
            result = "SharingPhoneAutoUnlock";
            break;
          case 131074:
            result = "SharingSiriWatchAuth";
            break;
          case 131075:
            result = "SharingMacAutoUnlock";
            break;
          case 131076:
            result = "SharingEDTScreenOn";
            break;
          case 131077:
            result = "SharingEDTWiFiDisabled";
            break;
          case 131078:
            result = "SharingEDTWombatEligibleAsDefaultCamera";
            break;
          case 131079:
            result = "SharingEDTWombatCameraPicker";
            break;
          case 131080:
            result = "SharingWombatBackground";
            break;
          case 131081:
            result = "SharingUniversalControl";
            break;
          case 131082:
            result = "SharingPeopleProximity";
            break;
          case 131083:
            result = "SharingEDTEnsembleOpenDisplayPrefs";
            break;
          case 131084:
            result = "SharingEDTNearbydMotionStopped";
            break;
          case 131085:
            result = "SharingDoubleBoostGenericScan";
            break;
          case 131086:
            result = "SharingEDTIncomingAdvertisement ";
            break;
          case 131087:
            result = "SharingEDTWombatStreamStart";
            break;
          case 131088:
            result = "SharingOYAutoUnlock";
            break;
          case 131090:
            result = "SharingAirDrop";
            break;
          case 131091:
            result = "SharingNearbyInvitationHost";
            break;
          case 131092:
            result = "SharingNearbyInvitationParticipant";
            break;
          case 131093:
            result = "SharingAirDropAskToAirDrop";
            break;
          case 131094:
            result = "SharingAirDropTempIdentity";
            break;
          case 131095:
            result = "SharingAirDropNeedsCLink";
            break;
          case 131096:
            result = "SharingRemoteWidgetUpdate";
            break;
          case 131097:
            result = "SharingCountryCodeUpdate";
            break;
          case 131098:
            result = "SharingMacPhoneAutoUnlock";
            break;
          case 131099:
            result = "SharingVisionProDiscovery";
            break;
          case 131100:
            result = "SharingVisionProStateChange";
            break;
          case 131101:
            result = "SharingContinuityScreen";
            break;
          case 131102:
            result = "SharingEDTRemoteDisplay";
            break;
          case 131103:
            result = "SharingHomePodSetup";
            break;
          default:
            return "?";
        }

        return result;
      }

      if (a1 > 393218)
      {
        if (a1 > 458752)
        {
          switch(a1)
          {
            case 0x70001:
              return "PrecisionFindingFindee";
            case 0x70002:
              return "SpatialHandoffHome";
            case 0x80000:
              return "ADPD";
          }
        }

        else
        {
          switch(a1)
          {
            case 393219:
              return "AppleIDSignIn";
            case 393220:
              return "AppleIDSignInSettings";
            case 458752:
              return "PrecisionFindingFinder";
          }
        }
      }

      else
      {
        if (a1 >= 393216)
        {
          if (a1 == 393216)
          {
            return "CaptiveNetworkJoin";
          }

          if (a1 == 393217)
          {
            return "UseCaseSIMTransfer";
          }

          return "MacSetup";
        }

        switch(a1)
        {
          case 196608:
            return "DigitalIDTSA";
          case 262144:
            return "DigitalCarKeyThirdParty";
          case 327680:
            return "RapportThirdParty";
        }
      }

      return "?";
    }

    if (a1 < 0x100000)
    {
      if (a1 <= 851968)
      {
        if (a1 >= 655360)
        {
          if (a1 <= 720896)
          {
            if (a1 == 655360)
            {
              return "AccessDigitalHomeKey";
            }

            if (a1 == 720896)
            {
              return "SoftwareUpdateBTWake";
            }
          }

          else
          {
            switch(a1)
            {
              case 720897:
                return "SofrwareUpdateOutboxControllerAuth";
              case 786432:
                return "ProxControlDeviceClose";
              case 851968:
                return "DCTProtocolTelephony";
            }
          }
        }

        else
        {
          if (a1 <= 524290)
          {
            if (a1 == 524289)
            {
              return "ADPDBuffer";
            }

            else
            {
              return "MicroLocation";
            }
          }

          switch(a1)
          {
            case 524291:
              return "MicroLocationLeech";
            case 589824:
              return "FindNearbyRemote";
            case 589825:
              return "FindNearbyPencil";
          }
        }
      }

      else if (a1 <= 983041)
      {
        if (a1 <= 917504)
        {
          if (a1 == 851969)
          {
            return "DCTProtocolDataAndTelephony";
          }

          if (a1 == 917504)
          {
            return "NearbyFaceTime";
          }
        }

        else
        {
          switch(a1)
          {
            case 917505:
              return "NearbyFaceTimeData";
            case 983040:
              return "SOSBeaconPartA";
            case 983041:
              return "SOSBeaconPartB";
          }
        }
      }

      else
      {
        if (a1 <= 983044)
        {
          if (a1 == 983042)
          {
            return "SOSBeaconPrecisionFindResponse";
          }

          if (a1 == 983043)
          {
            return "SOSBeaconPrecisionFindRequest";
          }

          return "SOSBeaconScan";
        }

        switch(a1)
        {
          case 983045:
            return "SOSBeaconActivateScan";
          case 983046:
            return "SOSBeaconActivateAdvA";
          case 983047:
            return "SOSBeaconActivateAdvB";
        }
      }

      return "?";
    }

    if (a1 <= 2147418111)
    {
      switch(a1)
      {
        case 1048576:
          return "DOS";
        case 1048577:
          return "DOD";
        case 1114112:
          return "ProximityServiceDeviceSetup";
      }

      return "?";
    }

    switch(a1)
    {
      case 2147418112:
        result = "InternalTestNoLockScan";
        break;
      case 2147418113:
        result = "InternalTestNoScreenOffScan";
        break;
      case 2147418114:
        result = "InternalTestScanWithNoDups";
        break;
      case 2147418115:
        result = "InternalTestScanWithDups";
        break;
      case 2147418116:
        result = "InternalTestScanFor20Seconds";
        break;
      case 2147418117:
        result = "InternalTestActiveScan";
        break;
      case 2147418118:
        result = "InternalTestUUIDScan";
        break;
      case 2147418119:
        result = "InternalTestScanFor10ClockSeconds";
        break;
      case 2147418120:
        result = "InternalTestScanBoost";
        break;
      case 2147418121:
        result = "InternalTestDiscoveryScanWithMRC";
        break;
      case 2147418122:
        result = "InternalTestAdvWithHigherPower";
        break;
      case 2147418123:
        result = "InternalTestScanLowDutyCycleMCOnly";
        break;
      case 2147418124:
        result = "InternalTestUUIDScanWithMinRSSI";
        break;
      case 2147418125:
        result = "InternalTestUUIDScanWithMinRSSIMediumLow";
        break;
      case 2147418126:
        result = "InternalTestAdvWithHigherPowerServiceDataConnectable";
        break;
      case 2147418127:
        result = "InternalTestAdvWithHigherPowerServiceDataNonConnectable";
        break;
      case 2147418128:
        result = "InternalTestAdvWithHigherPowerServiceDataS2";
        break;
      case 2147418129:
        result = "InternalTestAdvWithHigherPowerServiceDataS8";
        break;
      case 2147418130:
        result = "InternalTestDiscoveryScanCodedPHY";
        break;
      default:
        return "?";
    }
  }

  return result;
}

const char *sub_10002B1DC(int a1)
{
  if (a1 < 0x20000)
  {
    if (a1 <= 0x20000)
    {
      switch(a1)
      {
        case 65536:
          result = "FindMyAction";
          break;
        case 65537:
          result = "FindMyBackground";
          break;
        case 65538:
          result = "FindMyActionHELE";
          break;
        case 65539:
          result = "FindMyBackgroundHELE";
          break;
        case 65540:
          result = "FindMyActionTransient";
          break;
        case 65541:
          result = "FindMyBackgroundTransient";
          break;
        case 65542:
          result = "FindMyActionHELETransient";
          break;
        case 65543:
          result = "FindMyBackgroundHELETransient";
          break;
        case 65544:
          result = "FindMyNotOptedIn";
          break;
        case 65545:
          result = "FindMyOptedIn";
          break;
        case 65546:
          result = "FindMySepAlertsEnabled";
          break;
        case 65547:
          result = "FindMyTemporaryAggressiveLegacy";
          break;
        case 65548:
          result = "FindMyTemporaryLongAggressive";
          break;
        case 65549:
          result = "FindMyBTFindingUserInitiated";
          break;
        case 65550:
          result = "FindMyHELE";
          break;
        case 65551:
          result = "FindMyBeaconOnDemand";
          break;
        case 65552:
          result = "FindMyWildTimedScan";
          break;
        case 65553:
          result = "FindMyBackgroundLeechScan";
          break;
        case 65554:
          result = "FindMySnifferMode";
          break;
        case 65555:
          result = "FindMyUnpair";
          break;
        case 65556:
          result = "FindMyUnpairHELE";
          break;
        case 65557:
          result = "FindMyPlaySound";
          break;
        case 65558:
          result = "FindMyPlaySoundHELE";
          break;
        case 65559:
          result = "FindMyNotOptedInBeepOnMoveWaking";
          break;
        case 65560:
          result = "FindMyUTTransient";
          break;
        case 65561:
          result = "FindMyUTHELETransient";
          break;
        case 65562:
          result = "FindMyActionExtendedRange";
          break;
        case 65563:
          result = "FindMyActionExtendedRangeLE2M";
          break;
        case 65564:
          result = "FindMyActionExtendedRangeTransient";
          break;
        case 65565:
          result = "FindMyPlaySoundExtendedRange";
          break;
        case 65566:
          result = "FindMyPair";
          break;
        case 65567:
          result = "FindMyTemporaryAggressiveLegacyExtendedRange";
          break;
        default:
          JUMPOUT(0);
      }
    }

    else
    {
      result = "Unspecified";
      switch(a1)
      {
        case 0:
          return result;
        case 1:
          result = "HealthKit";
          break;
        case 2:
          result = "HomeKit";
          break;
        case 3:
          result = "FindMyObjectConnection";
          break;
        case 4:
          result = "FindMyObjectConnectionTransient";
          break;
        case 5:
          result = "MIDI";
          break;
        case 6:
          result = "Continuity";
          break;
        case 7:
          result = "InstantHotSpot";
          break;
        case 8:
          result = "NearBy";
          break;
        case 9:
          result = "Sharing";
          break;
        case 10:
          result = "HearingSupport";
          break;
        case 11:
          result = "Magnet";
          break;
        case 12:
          result = "HID";
          break;
        case 13:
          result = "LEA";
          break;
        case 14:
          result = "External";
          break;
        case 15:
          result = "ExternalMedical";
          break;
        case 16:
          result = "ExternalLock";
          break;
        case 17:
          result = "ExternalWatch";
          break;
        case 18:
          result = "SmartRouting";
          break;
        case 19:
          result = "DigitalID";
          break;
        case 20:
          result = "DigitalKey";
          break;
        case 21:
          result = "DigitalCarKey";
          break;
        case 22:
          result = "HeySiri";
          break;
        case 23:
          result = "ThirdPartyApp";
          break;
        case 24:
          result = "CNJ";
          break;
        default:
          switch(a1)
          {
            case 256:
              result = "DevicePresenceDetection";
              break;
            case 257:
              result = "AudioBox";
              break;
            case 258:
              result = "SIMTransfer";
              break;
            case 259:
              result = "ProximityScreenOnLeechScan";
              break;
            case 260:
              result = "MacMigrate";
              break;
            case 263:
              result = "HIDUARTService";
              break;
            case 264:
              result = "AccessibilitySwitchControlPairing";
              break;
            case 265:
              result = "BaseBandFastConnect";
              break;
            case 266:
              result = "SafetyAlerts";
              break;
            case 267:
              result = "LECarPlay";
              break;
            case 268:
              result = "TCCBluetooth";
              break;
            case 269:
              result = "AOPBufferLeech";
              break;
            case 270:
              result = "HighPriorityScanWiFi";
              break;
            default:
              return "?";
          }

          break;
      }
    }
  }

  else
  {
    if (a1 <= 0x80000)
    {
      if (a1 < 196608)
      {
        switch(a1)
        {
          case 131072:
            result = "SharingDefault";
            break;
          case 131073:
            result = "SharingPhoneAutoUnlock";
            break;
          case 131074:
            result = "SharingSiriWatchAuth";
            break;
          case 131075:
            result = "SharingMacAutoUnlock";
            break;
          case 131076:
            result = "SharingEDTScreenOn";
            break;
          case 131077:
            result = "SharingEDTWiFiDisabled";
            break;
          case 131078:
            result = "SharingEDTWombatEligibleAsDefaultCamera";
            break;
          case 131079:
            result = "SharingEDTWombatCameraPicker";
            break;
          case 131080:
            result = "SharingWombatBackground";
            break;
          case 131081:
            result = "SharingUniversalControl";
            break;
          case 131082:
            result = "SharingPeopleProximity";
            break;
          case 131083:
            result = "SharingEDTEnsembleOpenDisplayPrefs";
            break;
          case 131084:
            result = "SharingEDTNearbydMotionStopped";
            break;
          case 131085:
            result = "SharingDoubleBoostGenericScan";
            break;
          case 131086:
            result = "SharingEDTIncomingAdvertisement ";
            break;
          case 131087:
            result = "SharingEDTWombatStreamStart";
            break;
          case 131088:
            result = "SharingOYAutoUnlock";
            break;
          case 131090:
            result = "SharingAirDrop";
            break;
          case 131091:
            result = "SharingNearbyInvitationHost";
            break;
          case 131092:
            result = "SharingNearbyInvitationParticipant";
            break;
          case 131093:
            result = "SharingAirDropAskToAirDrop";
            break;
          case 131094:
            result = "SharingAirDropTempIdentity";
            break;
          case 131095:
            result = "SharingAirDropNeedsCLink";
            break;
          case 131096:
            result = "SharingRemoteWidgetUpdate";
            break;
          case 131097:
            result = "SharingCountryCodeUpdate";
            break;
          case 131098:
            result = "SharingMacPhoneAutoUnlock";
            break;
          case 131099:
            result = "SharingVisionProDiscovery";
            break;
          case 131100:
            result = "SharingVisionProStateChange";
            break;
          case 131101:
            result = "SharingContinuityScreen";
            break;
          case 131102:
            result = "SharingEDTRemoteDisplay";
            break;
          case 131103:
            result = "SharingHomePodSetup";
            break;
          default:
            return "?";
        }

        return result;
      }

      if (a1 > 393218)
      {
        if (a1 > 458752)
        {
          switch(a1)
          {
            case 0x70001:
              return "PrecisionFindingFindee";
            case 0x70002:
              return "SpatialHandoffHome";
            case 0x80000:
              return "ADPD";
          }
        }

        else
        {
          switch(a1)
          {
            case 393219:
              return "AppleIDSignIn";
            case 393220:
              return "AppleIDSignInSettings";
            case 458752:
              return "PrecisionFindingFinder";
          }
        }
      }

      else
      {
        if (a1 >= 393216)
        {
          if (a1 == 393216)
          {
            return "CaptiveNetworkJoin";
          }

          if (a1 == 393217)
          {
            return "UseCaseSIMTransfer";
          }

          return "MacSetup";
        }

        switch(a1)
        {
          case 196608:
            return "DigitalIDTSA";
          case 262144:
            return "DigitalCarKeyThirdParty";
          case 327680:
            return "RapportThirdParty";
        }
      }

      return "?";
    }

    if (a1 < 0x100000)
    {
      if (a1 <= 851968)
      {
        if (a1 >= 655360)
        {
          if (a1 <= 720896)
          {
            if (a1 == 655360)
            {
              return "AccessDigitalHomeKey";
            }

            if (a1 == 720896)
            {
              return "SoftwareUpdateBTWake";
            }
          }

          else
          {
            switch(a1)
            {
              case 720897:
                return "SofrwareUpdateOutboxControllerAuth";
              case 786432:
                return "ProxControlDeviceClose";
              case 851968:
                return "DCTProtocolTelephony";
            }
          }
        }

        else
        {
          if (a1 <= 524290)
          {
            if (a1 == 524289)
            {
              return "ADPDBuffer";
            }

            else
            {
              return "MicroLocation";
            }
          }

          switch(a1)
          {
            case 524291:
              return "MicroLocationLeech";
            case 589824:
              return "FindNearbyRemote";
            case 589825:
              return "FindNearbyPencil";
          }
        }
      }

      else if (a1 <= 983041)
      {
        if (a1 <= 917504)
        {
          if (a1 == 851969)
          {
            return "DCTProtocolDataAndTelephony";
          }

          if (a1 == 917504)
          {
            return "NearbyFaceTime";
          }
        }

        else
        {
          switch(a1)
          {
            case 917505:
              return "NearbyFaceTimeData";
            case 983040:
              return "SOSBeaconPartA";
            case 983041:
              return "SOSBeaconPartB";
          }
        }
      }

      else
      {
        if (a1 <= 983044)
        {
          if (a1 == 983042)
          {
            return "SOSBeaconPrecisionFindResponse";
          }

          if (a1 == 983043)
          {
            return "SOSBeaconPrecisionFindRequest";
          }

          return "SOSBeaconScan";
        }

        switch(a1)
        {
          case 983045:
            return "SOSBeaconActivateScan";
          case 983046:
            return "SOSBeaconActivateAdvA";
          case 983047:
            return "SOSBeaconActivateAdvB";
        }
      }

      return "?";
    }

    if (a1 <= 2147418111)
    {
      switch(a1)
      {
        case 1048576:
          return "DOS";
        case 1048577:
          return "DOD";
        case 1114112:
          return "ProximityServiceDeviceSetup";
      }

      return "?";
    }

    switch(a1)
    {
      case 2147418112:
        result = "InternalTestNoLockScan";
        break;
      case 2147418113:
        result = "InternalTestNoScreenOffScan";
        break;
      case 2147418114:
        result = "InternalTestScanWithNoDups";
        break;
      case 2147418115:
        result = "InternalTestScanWithDups";
        break;
      case 2147418116:
        result = "InternalTestScanFor20Seconds";
        break;
      case 2147418117:
        result = "InternalTestActiveScan";
        break;
      case 2147418118:
        result = "InternalTestUUIDScan";
        break;
      case 2147418119:
        result = "InternalTestScanFor10ClockSeconds";
        break;
      case 2147418120:
        result = "InternalTestScanBoost";
        break;
      case 2147418121:
        result = "InternalTestDiscoveryScanWithMRC";
        break;
      case 2147418122:
        result = "InternalTestAdvWithHigherPower";
        break;
      case 2147418123:
        result = "InternalTestScanLowDutyCycleMCOnly";
        break;
      case 2147418124:
        result = "InternalTestUUIDScanWithMinRSSI";
        break;
      case 2147418125:
        result = "InternalTestUUIDScanWithMinRSSIMediumLow";
        break;
      case 2147418126:
        result = "InternalTestAdvWithHigherPowerServiceDataConnectable";
        break;
      case 2147418127:
        result = "InternalTestAdvWithHigherPowerServiceDataNonConnectable";
        break;
      case 2147418128:
        result = "InternalTestAdvWithHigherPowerServiceDataS2";
        break;
      case 2147418129:
        result = "InternalTestAdvWithHigherPowerServiceDataS8";
        break;
      case 2147418130:
        result = "InternalTestDiscoveryScanCodedPHY";
        break;
      default:
        return "?";
    }
  }

  return result;
}

const char *sub_10002BC74(int a1)
{
  if (a1 < 0x20000)
  {
    if (a1 <= 0x20000)
    {
      switch(a1)
      {
        case 65536:
          result = "FindMyAction";
          break;
        case 65537:
          result = "FindMyBackground";
          break;
        case 65538:
          result = "FindMyActionHELE";
          break;
        case 65539:
          result = "FindMyBackgroundHELE";
          break;
        case 65540:
          result = "FindMyActionTransient";
          break;
        case 65541:
          result = "FindMyBackgroundTransient";
          break;
        case 65542:
          result = "FindMyActionHELETransient";
          break;
        case 65543:
          result = "FindMyBackgroundHELETransient";
          break;
        case 65544:
          result = "FindMyNotOptedIn";
          break;
        case 65545:
          result = "FindMyOptedIn";
          break;
        case 65546:
          result = "FindMySepAlertsEnabled";
          break;
        case 65547:
          result = "FindMyTemporaryAggressiveLegacy";
          break;
        case 65548:
          result = "FindMyTemporaryLongAggressive";
          break;
        case 65549:
          result = "FindMyBTFindingUserInitiated";
          break;
        case 65550:
          result = "FindMyHELE";
          break;
        case 65551:
          result = "FindMyBeaconOnDemand";
          break;
        case 65552:
          result = "FindMyWildTimedScan";
          break;
        case 65553:
          result = "FindMyBackgroundLeechScan";
          break;
        case 65554:
          result = "FindMySnifferMode";
          break;
        case 65555:
          result = "FindMyUnpair";
          break;
        case 65556:
          result = "FindMyUnpairHELE";
          break;
        case 65557:
          result = "FindMyPlaySound";
          break;
        case 65558:
          result = "FindMyPlaySoundHELE";
          break;
        case 65559:
          result = "FindMyNotOptedInBeepOnMoveWaking";
          break;
        case 65560:
          result = "FindMyUTTransient";
          break;
        case 65561:
          result = "FindMyUTHELETransient";
          break;
        case 65562:
          result = "FindMyActionExtendedRange";
          break;
        case 65563:
          result = "FindMyActionExtendedRangeLE2M";
          break;
        case 65564:
          result = "FindMyActionExtendedRangeTransient";
          break;
        case 65565:
          result = "FindMyPlaySoundExtendedRange";
          break;
        case 65566:
          result = "FindMyPair";
          break;
        case 65567:
          result = "FindMyTemporaryAggressiveLegacyExtendedRange";
          break;
        default:
          JUMPOUT(0);
      }
    }

    else
    {
      result = "Unspecified";
      switch(a1)
      {
        case 0:
          return result;
        case 1:
          result = "HealthKit";
          break;
        case 2:
          result = "HomeKit";
          break;
        case 3:
          result = "FindMyObjectConnection";
          break;
        case 4:
          result = "FindMyObjectConnectionTransient";
          break;
        case 5:
          result = "MIDI";
          break;
        case 6:
          result = "Continuity";
          break;
        case 7:
          result = "InstantHotSpot";
          break;
        case 8:
          result = "NearBy";
          break;
        case 9:
          result = "Sharing";
          break;
        case 10:
          result = "HearingSupport";
          break;
        case 11:
          result = "Magnet";
          break;
        case 12:
          result = "HID";
          break;
        case 13:
          result = "LEA";
          break;
        case 14:
          result = "External";
          break;
        case 15:
          result = "ExternalMedical";
          break;
        case 16:
          result = "ExternalLock";
          break;
        case 17:
          result = "ExternalWatch";
          break;
        case 18:
          result = "SmartRouting";
          break;
        case 19:
          result = "DigitalID";
          break;
        case 20:
          result = "DigitalKey";
          break;
        case 21:
          result = "DigitalCarKey";
          break;
        case 22:
          result = "HeySiri";
          break;
        case 23:
          result = "ThirdPartyApp";
          break;
        case 24:
          result = "CNJ";
          break;
        default:
          switch(a1)
          {
            case 256:
              result = "DevicePresenceDetection";
              break;
            case 257:
              result = "AudioBox";
              break;
            case 258:
              result = "SIMTransfer";
              break;
            case 259:
              result = "ProximityScreenOnLeechScan";
              break;
            case 260:
              result = "MacMigrate";
              break;
            case 263:
              result = "HIDUARTService";
              break;
            case 264:
              result = "AccessibilitySwitchControlPairing";
              break;
            case 265:
              result = "BaseBandFastConnect";
              break;
            case 266:
              result = "SafetyAlerts";
              break;
            case 267:
              result = "LECarPlay";
              break;
            case 268:
              result = "TCCBluetooth";
              break;
            case 269:
              result = "AOPBufferLeech";
              break;
            case 270:
              result = "HighPriorityScanWiFi";
              break;
            default:
              return "?";
          }

          break;
      }
    }
  }

  else
  {
    if (a1 <= 0x80000)
    {
      if (a1 < 196608)
      {
        switch(a1)
        {
          case 131072:
            result = "SharingDefault";
            break;
          case 131073:
            result = "SharingPhoneAutoUnlock";
            break;
          case 131074:
            result = "SharingSiriWatchAuth";
            break;
          case 131075:
            result = "SharingMacAutoUnlock";
            break;
          case 131076:
            result = "SharingEDTScreenOn";
            break;
          case 131077:
            result = "SharingEDTWiFiDisabled";
            break;
          case 131078:
            result = "SharingEDTWombatEligibleAsDefaultCamera";
            break;
          case 131079:
            result = "SharingEDTWombatCameraPicker";
            break;
          case 131080:
            result = "SharingWombatBackground";
            break;
          case 131081:
            result = "SharingUniversalControl";
            break;
          case 131082:
            result = "SharingPeopleProximity";
            break;
          case 131083:
            result = "SharingEDTEnsembleOpenDisplayPrefs";
            break;
          case 131084:
            result = "SharingEDTNearbydMotionStopped";
            break;
          case 131085:
            result = "SharingDoubleBoostGenericScan";
            break;
          case 131086:
            result = "SharingEDTIncomingAdvertisement ";
            break;
          case 131087:
            result = "SharingEDTWombatStreamStart";
            break;
          case 131088:
            result = "SharingOYAutoUnlock";
            break;
          case 131090:
            result = "SharingAirDrop";
            break;
          case 131091:
            result = "SharingNearbyInvitationHost";
            break;
          case 131092:
            result = "SharingNearbyInvitationParticipant";
            break;
          case 131093:
            result = "SharingAirDropAskToAirDrop";
            break;
          case 131094:
            result = "SharingAirDropTempIdentity";
            break;
          case 131095:
            result = "SharingAirDropNeedsCLink";
            break;
          case 131096:
            result = "SharingRemoteWidgetUpdate";
            break;
          case 131097:
            result = "SharingCountryCodeUpdate";
            break;
          case 131098:
            result = "SharingMacPhoneAutoUnlock";
            break;
          case 131099:
            result = "SharingVisionProDiscovery";
            break;
          case 131100:
            result = "SharingVisionProStateChange";
            break;
          case 131101:
            result = "SharingContinuityScreen";
            break;
          case 131102:
            result = "SharingEDTRemoteDisplay";
            break;
          case 131103:
            result = "SharingHomePodSetup";
            break;
          default:
            return "?";
        }

        return result;
      }

      if (a1 > 393218)
      {
        if (a1 > 458752)
        {
          switch(a1)
          {
            case 0x70001:
              return "PrecisionFindingFindee";
            case 0x70002:
              return "SpatialHandoffHome";
            case 0x80000:
              return "ADPD";
          }
        }

        else
        {
          switch(a1)
          {
            case 393219:
              return "AppleIDSignIn";
            case 393220:
              return "AppleIDSignInSettings";
            case 458752:
              return "PrecisionFindingFinder";
          }
        }
      }

      else
      {
        if (a1 >= 393216)
        {
          if (a1 == 393216)
          {
            return "CaptiveNetworkJoin";
          }

          if (a1 == 393217)
          {
            return "UseCaseSIMTransfer";
          }

          return "MacSetup";
        }

        switch(a1)
        {
          case 196608:
            return "DigitalIDTSA";
          case 262144:
            return "DigitalCarKeyThirdParty";
          case 327680:
            return "RapportThirdParty";
        }
      }

      return "?";
    }

    if (a1 < 0x100000)
    {
      if (a1 <= 851968)
      {
        if (a1 >= 655360)
        {
          if (a1 <= 720896)
          {
            if (a1 == 655360)
            {
              return "AccessDigitalHomeKey";
            }

            if (a1 == 720896)
            {
              return "SoftwareUpdateBTWake";
            }
          }

          else
          {
            switch(a1)
            {
              case 720897:
                return "SofrwareUpdateOutboxControllerAuth";
              case 786432:
                return "ProxControlDeviceClose";
              case 851968:
                return "DCTProtocolTelephony";
            }
          }
        }

        else
        {
          if (a1 <= 524290)
          {
            if (a1 == 524289)
            {
              return "ADPDBuffer";
            }

            else
            {
              return "MicroLocation";
            }
          }

          switch(a1)
          {
            case 524291:
              return "MicroLocationLeech";
            case 589824:
              return "FindNearbyRemote";
            case 589825:
              return "FindNearbyPencil";
          }
        }
      }

      else if (a1 <= 983041)
      {
        if (a1 <= 917504)
        {
          if (a1 == 851969)
          {
            return "DCTProtocolDataAndTelephony";
          }

          if (a1 == 917504)
          {
            return "NearbyFaceTime";
          }
        }

        else
        {
          switch(a1)
          {
            case 917505:
              return "NearbyFaceTimeData";
            case 983040:
              return "SOSBeaconPartA";
            case 983041:
              return "SOSBeaconPartB";
          }
        }
      }

      else
      {
        if (a1 <= 983044)
        {
          if (a1 == 983042)
          {
            return "SOSBeaconPrecisionFindResponse";
          }

          if (a1 == 983043)
          {
            return "SOSBeaconPrecisionFindRequest";
          }

          return "SOSBeaconScan";
        }

        switch(a1)
        {
          case 983045:
            return "SOSBeaconActivateScan";
          case 983046:
            return "SOSBeaconActivateAdvA";
          case 983047:
            return "SOSBeaconActivateAdvB";
        }
      }

      return "?";
    }

    if (a1 <= 2147418111)
    {
      switch(a1)
      {
        case 1048576:
          return "DOS";
        case 1048577:
          return "DOD";
        case 1114112:
          return "ProximityServiceDeviceSetup";
      }

      return "?";
    }

    switch(a1)
    {
      case 2147418112:
        result = "InternalTestNoLockScan";
        break;
      case 2147418113:
        result = "InternalTestNoScreenOffScan";
        break;
      case 2147418114:
        result = "InternalTestScanWithNoDups";
        break;
      case 2147418115:
        result = "InternalTestScanWithDups";
        break;
      case 2147418116:
        result = "InternalTestScanFor20Seconds";
        break;
      case 2147418117:
        result = "InternalTestActiveScan";
        break;
      case 2147418118:
        result = "InternalTestUUIDScan";
        break;
      case 2147418119:
        result = "InternalTestScanFor10ClockSeconds";
        break;
      case 2147418120:
        result = "InternalTestScanBoost";
        break;
      case 2147418121:
        result = "InternalTestDiscoveryScanWithMRC";
        break;
      case 2147418122:
        result = "InternalTestAdvWithHigherPower";
        break;
      case 2147418123:
        result = "InternalTestScanLowDutyCycleMCOnly";
        break;
      case 2147418124:
        result = "InternalTestUUIDScanWithMinRSSI";
        break;
      case 2147418125:
        result = "InternalTestUUIDScanWithMinRSSIMediumLow";
        break;
      case 2147418126:
        result = "InternalTestAdvWithHigherPowerServiceDataConnectable";
        break;
      case 2147418127:
        result = "InternalTestAdvWithHigherPowerServiceDataNonConnectable";
        break;
      case 2147418128:
        result = "InternalTestAdvWithHigherPowerServiceDataS2";
        break;
      case 2147418129:
        result = "InternalTestAdvWithHigherPowerServiceDataS8";
        break;
      case 2147418130:
        result = "InternalTestDiscoveryScanCodedPHY";
        break;
      default:
        return "?";
    }
  }

  return result;
}

const char *sub_10002C70C(int a1)
{
  if (a1 < 0x20000)
  {
    if (a1 <= 0x20000)
    {
      switch(a1)
      {
        case 65536:
          result = "FindMyAction";
          break;
        case 65537:
          result = "FindMyBackground";
          break;
        case 65538:
          result = "FindMyActionHELE";
          break;
        case 65539:
          result = "FindMyBackgroundHELE";
          break;
        case 65540:
          result = "FindMyActionTransient";
          break;
        case 65541:
          result = "FindMyBackgroundTransient";
          break;
        case 65542:
          result = "FindMyActionHELETransient";
          break;
        case 65543:
          result = "FindMyBackgroundHELETransient";
          break;
        case 65544:
          result = "FindMyNotOptedIn";
          break;
        case 65545:
          result = "FindMyOptedIn";
          break;
        case 65546:
          result = "FindMySepAlertsEnabled";
          break;
        case 65547:
          result = "FindMyTemporaryAggressiveLegacy";
          break;
        case 65548:
          result = "FindMyTemporaryLongAggressive";
          break;
        case 65549:
          result = "FindMyBTFindingUserInitiated";
          break;
        case 65550:
          result = "FindMyHELE";
          break;
        case 65551:
          result = "FindMyBeaconOnDemand";
          break;
        case 65552:
          result = "FindMyWildTimedScan";
          break;
        case 65553:
          result = "FindMyBackgroundLeechScan";
          break;
        case 65554:
          result = "FindMySnifferMode";
          break;
        case 65555:
          result = "FindMyUnpair";
          break;
        case 65556:
          result = "FindMyUnpairHELE";
          break;
        case 65557:
          result = "FindMyPlaySound";
          break;
        case 65558:
          result = "FindMyPlaySoundHELE";
          break;
        case 65559:
          result = "FindMyNotOptedInBeepOnMoveWaking";
          break;
        case 65560:
          result = "FindMyUTTransient";
          break;
        case 65561:
          result = "FindMyUTHELETransient";
          break;
        case 65562:
          result = "FindMyActionExtendedRange";
          break;
        case 65563:
          result = "FindMyActionExtendedRangeLE2M";
          break;
        case 65564:
          result = "FindMyActionExtendedRangeTransient";
          break;
        case 65565:
          result = "FindMyPlaySoundExtendedRange";
          break;
        case 65566:
          result = "FindMyPair";
          break;
        case 65567:
          result = "FindMyTemporaryAggressiveLegacyExtendedRange";
          break;
        default:
          JUMPOUT(0);
      }
    }

    else
    {
      result = "Unspecified";
      switch(a1)
      {
        case 0:
          return result;
        case 1:
          result = "HealthKit";
          break;
        case 2:
          result = "HomeKit";
          break;
        case 3:
          result = "FindMyObjectConnection";
          break;
        case 4:
          result = "FindMyObjectConnectionTransient";
          break;
        case 5:
          result = "MIDI";
          break;
        case 6:
          result = "Continuity";
          break;
        case 7:
          result = "InstantHotSpot";
          break;
        case 8:
          result = "NearBy";
          break;
        case 9:
          result = "Sharing";
          break;
        case 10:
          result = "HearingSupport";
          break;
        case 11:
          result = "Magnet";
          break;
        case 12:
          result = "HID";
          break;
        case 13:
          result = "LEA";
          break;
        case 14:
          result = "External";
          break;
        case 15:
          result = "ExternalMedical";
          break;
        case 16:
          result = "ExternalLock";
          break;
        case 17:
          result = "ExternalWatch";
          break;
        case 18:
          result = "SmartRouting";
          break;
        case 19:
          result = "DigitalID";
          break;
        case 20:
          result = "DigitalKey";
          break;
        case 21:
          result = "DigitalCarKey";
          break;
        case 22:
          result = "HeySiri";
          break;
        case 23:
          result = "ThirdPartyApp";
          break;
        case 24:
          result = "CNJ";
          break;
        default:
          switch(a1)
          {
            case 256:
              result = "DevicePresenceDetection";
              break;
            case 257:
              result = "AudioBox";
              break;
            case 258:
              result = "SIMTransfer";
              break;
            case 259:
              result = "ProximityScreenOnLeechScan";
              break;
            case 260:
              result = "MacMigrate";
              break;
            case 263:
              result = "HIDUARTService";
              break;
            case 264:
              result = "AccessibilitySwitchControlPairing";
              break;
            case 265:
              result = "BaseBandFastConnect";
              break;
            case 266:
              result = "SafetyAlerts";
              break;
            case 267:
              result = "LECarPlay";
              break;
            case 268:
              result = "TCCBluetooth";
              break;
            case 269:
              result = "AOPBufferLeech";
              break;
            case 270:
              result = "HighPriorityScanWiFi";
              break;
            default:
              return "?";
          }

          break;
      }
    }
  }

  else
  {
    if (a1 <= 0x80000)
    {
      if (a1 < 196608)
      {
        switch(a1)
        {
          case 131072:
            result = "SharingDefault";
            break;
          case 131073:
            result = "SharingPhoneAutoUnlock";
            break;
          case 131074:
            result = "SharingSiriWatchAuth";
            break;
          case 131075:
            result = "SharingMacAutoUnlock";
            break;
          case 131076:
            result = "SharingEDTScreenOn";
            break;
          case 131077:
            result = "SharingEDTWiFiDisabled";
            break;
          case 131078:
            result = "SharingEDTWombatEligibleAsDefaultCamera";
            break;
          case 131079:
            result = "SharingEDTWombatCameraPicker";
            break;
          case 131080:
            result = "SharingWombatBackground";
            break;
          case 131081:
            result = "SharingUniversalControl";
            break;
          case 131082:
            result = "SharingPeopleProximity";
            break;
          case 131083:
            result = "SharingEDTEnsembleOpenDisplayPrefs";
            break;
          case 131084:
            result = "SharingEDTNearbydMotionStopped";
            break;
          case 131085:
            result = "SharingDoubleBoostGenericScan";
            break;
          case 131086:
            result = "SharingEDTIncomingAdvertisement ";
            break;
          case 131087:
            result = "SharingEDTWombatStreamStart";
            break;
          case 131088:
            result = "SharingOYAutoUnlock";
            break;
          case 131090:
            result = "SharingAirDrop";
            break;
          case 131091:
            result = "SharingNearbyInvitationHost";
            break;
          case 131092:
            result = "SharingNearbyInvitationParticipant";
            break;
          case 131093:
            result = "SharingAirDropAskToAirDrop";
            break;
          case 131094:
            result = "SharingAirDropTempIdentity";
            break;
          case 131095:
            result = "SharingAirDropNeedsCLink";
            break;
          case 131096:
            result = "SharingRemoteWidgetUpdate";
            break;
          case 131097:
            result = "SharingCountryCodeUpdate";
            break;
          case 131098:
            result = "SharingMacPhoneAutoUnlock";
            break;
          case 131099:
            result = "SharingVisionProDiscovery";
            break;
          case 131100:
            result = "SharingVisionProStateChange";
            break;
          case 131101:
            result = "SharingContinuityScreen";
            break;
          case 131102:
            result = "SharingEDTRemoteDisplay";
            break;
          case 131103:
            result = "SharingHomePodSetup";
            break;
          default:
            return "?";
        }

        return result;
      }

      if (a1 > 393218)
      {
        if (a1 > 458752)
        {
          switch(a1)
          {
            case 0x70001:
              return "PrecisionFindingFindee";
            case 0x70002:
              return "SpatialHandoffHome";
            case 0x80000:
              return "ADPD";
          }
        }

        else
        {
          switch(a1)
          {
            case 393219:
              return "AppleIDSignIn";
            case 393220:
              return "AppleIDSignInSettings";
            case 458752:
              return "PrecisionFindingFinder";
          }
        }
      }

      else
      {
        if (a1 >= 393216)
        {
          if (a1 == 393216)
          {
            return "CaptiveNetworkJoin";
          }

          if (a1 == 393217)
          {
            return "UseCaseSIMTransfer";
          }

          return "MacSetup";
        }

        switch(a1)
        {
          case 196608:
            return "DigitalIDTSA";
          case 262144:
            return "DigitalCarKeyThirdParty";
          case 327680:
            return "RapportThirdParty";
        }
      }

      return "?";
    }

    if (a1 < 0x100000)
    {
      if (a1 <= 851968)
      {
        if (a1 >= 655360)
        {
          if (a1 <= 720896)
          {
            if (a1 == 655360)
            {
              return "AccessDigitalHomeKey";
            }

            if (a1 == 720896)
            {
              return "SoftwareUpdateBTWake";
            }
          }

          else
          {
            switch(a1)
            {
              case 720897:
                return "SofrwareUpdateOutboxControllerAuth";
              case 786432:
                return "ProxControlDeviceClose";
              case 851968:
                return "DCTProtocolTelephony";
            }
          }
        }

        else
        {
          if (a1 <= 524290)
          {
            if (a1 == 524289)
            {
              return "ADPDBuffer";
            }

            else
            {
              return "MicroLocation";
            }
          }

          switch(a1)
          {
            case 524291:
              return "MicroLocationLeech";
            case 589824:
              return "FindNearbyRemote";
            case 589825:
              return "FindNearbyPencil";
          }
        }
      }

      else if (a1 <= 983041)
      {
        if (a1 <= 917504)
        {
          if (a1 == 851969)
          {
            return "DCTProtocolDataAndTelephony";
          }

          if (a1 == 917504)
          {
            return "NearbyFaceTime";
          }
        }

        else
        {
          switch(a1)
          {
            case 917505:
              return "NearbyFaceTimeData";
            case 983040:
              return "SOSBeaconPartA";
            case 983041:
              return "SOSBeaconPartB";
          }
        }
      }

      else
      {
        if (a1 <= 983044)
        {
          if (a1 == 983042)
          {
            return "SOSBeaconPrecisionFindResponse";
          }

          if (a1 == 983043)
          {
            return "SOSBeaconPrecisionFindRequest";
          }

          return "SOSBeaconScan";
        }

        switch(a1)
        {
          case 983045:
            return "SOSBeaconActivateScan";
          case 983046:
            return "SOSBeaconActivateAdvA";
          case 983047:
            return "SOSBeaconActivateAdvB";
        }
      }

      return "?";
    }

    if (a1 <= 2147418111)
    {
      switch(a1)
      {
        case 1048576:
          return "DOS";
        case 1048577:
          return "DOD";
        case 1114112:
          return "ProximityServiceDeviceSetup";
      }

      return "?";
    }

    switch(a1)
    {
      case 2147418112:
        result = "InternalTestNoLockScan";
        break;
      case 2147418113:
        result = "InternalTestNoScreenOffScan";
        break;
      case 2147418114:
        result = "InternalTestScanWithNoDups";
        break;
      case 2147418115:
        result = "InternalTestScanWithDups";
        break;
      case 2147418116:
        result = "InternalTestScanFor20Seconds";
        break;
      case 2147418117:
        result = "InternalTestActiveScan";
        break;
      case 2147418118:
        result = "InternalTestUUIDScan";
        break;
      case 2147418119:
        result = "InternalTestScanFor10ClockSeconds";
        break;
      case 2147418120:
        result = "InternalTestScanBoost";
        break;
      case 2147418121:
        result = "InternalTestDiscoveryScanWithMRC";
        break;
      case 2147418122:
        result = "InternalTestAdvWithHigherPower";
        break;
      case 2147418123:
        result = "InternalTestScanLowDutyCycleMCOnly";
        break;
      case 2147418124:
        result = "InternalTestUUIDScanWithMinRSSI";
        break;
      case 2147418125:
        result = "InternalTestUUIDScanWithMinRSSIMediumLow";
        break;
      case 2147418126:
        result = "InternalTestAdvWithHigherPowerServiceDataConnectable";
        break;
      case 2147418127:
        result = "InternalTestAdvWithHigherPowerServiceDataNonConnectable";
        break;
      case 2147418128:
        result = "InternalTestAdvWithHigherPowerServiceDataS2";
        break;
      case 2147418129:
        result = "InternalTestAdvWithHigherPowerServiceDataS8";
        break;
      case 2147418130:
        result = "InternalTestDiscoveryScanCodedPHY";
        break;
      default:
        return "?";
    }
  }

  return result;
}

const char *sub_10002D1A4(int a1)
{
  if (a1 < 0x20000)
  {
    if (a1 <= 0x20000)
    {
      switch(a1)
      {
        case 65536:
          result = "FindMyAction";
          break;
        case 65537:
          result = "FindMyBackground";
          break;
        case 65538:
          result = "FindMyActionHELE";
          break;
        case 65539:
          result = "FindMyBackgroundHELE";
          break;
        case 65540:
          result = "FindMyActionTransient";
          break;
        case 65541:
          result = "FindMyBackgroundTransient";
          break;
        case 65542:
          result = "FindMyActionHELETransient";
          break;
        case 65543:
          result = "FindMyBackgroundHELETransient";
          break;
        case 65544:
          result = "FindMyNotOptedIn";
          break;
        case 65545:
          result = "FindMyOptedIn";
          break;
        case 65546:
          result = "FindMySepAlertsEnabled";
          break;
        case 65547:
          result = "FindMyTemporaryAggressiveLegacy";
          break;
        case 65548:
          result = "FindMyTemporaryLongAggressive";
          break;
        case 65549:
          result = "FindMyBTFindingUserInitiated";
          break;
        case 65550:
          result = "FindMyHELE";
          break;
        case 65551:
          result = "FindMyBeaconOnDemand";
          break;
        case 65552:
          result = "FindMyWildTimedScan";
          break;
        case 65553:
          result = "FindMyBackgroundLeechScan";
          break;
        case 65554:
          result = "FindMySnifferMode";
          break;
        case 65555:
          result = "FindMyUnpair";
          break;
        case 65556:
          result = "FindMyUnpairHELE";
          break;
        case 65557:
          result = "FindMyPlaySound";
          break;
        case 65558:
          result = "FindMyPlaySoundHELE";
          break;
        case 65559:
          result = "FindMyNotOptedInBeepOnMoveWaking";
          break;
        case 65560:
          result = "FindMyUTTransient";
          break;
        case 65561:
          result = "FindMyUTHELETransient";
          break;
        case 65562:
          result = "FindMyActionExtendedRange";
          break;
        case 65563:
          result = "FindMyActionExtendedRangeLE2M";
          break;
        case 65564:
          result = "FindMyActionExtendedRangeTransient";
          break;
        case 65565:
          result = "FindMyPlaySoundExtendedRange";
          break;
        case 65566:
          result = "FindMyPair";
          break;
        case 65567:
          result = "FindMyTemporaryAggressiveLegacyExtendedRange";
          break;
        default:
          JUMPOUT(0);
      }
    }

    else
    {
      result = "Unspecified";
      switch(a1)
      {
        case 0:
          return result;
        case 1:
          result = "HealthKit";
          break;
        case 2:
          result = "HomeKit";
          break;
        case 3:
          result = "FindMyObjectConnection";
          break;
        case 4:
          result = "FindMyObjectConnectionTransient";
          break;
        case 5:
          result = "MIDI";
          break;
        case 6:
          result = "Continuity";
          break;
        case 7:
          result = "InstantHotSpot";
          break;
        case 8:
          result = "NearBy";
          break;
        case 9:
          result = "Sharing";
          break;
        case 10:
          result = "HearingSupport";
          break;
        case 11:
          result = "Magnet";
          break;
        case 12:
          result = "HID";
          break;
        case 13:
          result = "LEA";
          break;
        case 14:
          result = "External";
          break;
        case 15:
          result = "ExternalMedical";
          break;
        case 16:
          result = "ExternalLock";
          break;
        case 17:
          result = "ExternalWatch";
          break;
        case 18:
          result = "SmartRouting";
          break;
        case 19:
          result = "DigitalID";
          break;
        case 20:
          result = "DigitalKey";
          break;
        case 21:
          result = "DigitalCarKey";
          break;
        case 22:
          result = "HeySiri";
          break;
        case 23:
          result = "ThirdPartyApp";
          break;
        case 24:
          result = "CNJ";
          break;
        default:
          switch(a1)
          {
            case 256:
              result = "DevicePresenceDetection";
              break;
            case 257:
              result = "AudioBox";
              break;
            case 258:
              result = "SIMTransfer";
              break;
            case 259:
              result = "ProximityScreenOnLeechScan";
              break;
            case 260:
              result = "MacMigrate";
              break;
            case 263:
              result = "HIDUARTService";
              break;
            case 264:
              result = "AccessibilitySwitchControlPairing";
              break;
            case 265:
              result = "BaseBandFastConnect";
              break;
            case 266:
              result = "SafetyAlerts";
              break;
            case 267:
              result = "LECarPlay";
              break;
            case 268:
              result = "TCCBluetooth";
              break;
            case 269:
              result = "AOPBufferLeech";
              break;
            case 270:
              result = "HighPriorityScanWiFi";
              break;
            default:
              return "?";
          }

          break;
      }
    }
  }

  else
  {
    if (a1 <= 0x80000)
    {
      if (a1 < 196608)
      {
        switch(a1)
        {
          case 131072:
            result = "SharingDefault";
            break;
          case 131073:
            result = "SharingPhoneAutoUnlock";
            break;
          case 131074:
            result = "SharingSiriWatchAuth";
            break;
          case 131075:
            result = "SharingMacAutoUnlock";
            break;
          case 131076:
            result = "SharingEDTScreenOn";
            break;
          case 131077:
            result = "SharingEDTWiFiDisabled";
            break;
          case 131078:
            result = "SharingEDTWombatEligibleAsDefaultCamera";
            break;
          case 131079:
            result = "SharingEDTWombatCameraPicker";
            break;
          case 131080:
            result = "SharingWombatBackground";
            break;
          case 131081:
            result = "SharingUniversalControl";
            break;
          case 131082:
            result = "SharingPeopleProximity";
            break;
          case 131083:
            result = "SharingEDTEnsembleOpenDisplayPrefs";
            break;
          case 131084:
            result = "SharingEDTNearbydMotionStopped";
            break;
          case 131085:
            result = "SharingDoubleBoostGenericScan";
            break;
          case 131086:
            result = "SharingEDTIncomingAdvertisement ";
            break;
          case 131087:
            result = "SharingEDTWombatStreamStart";
            break;
          case 131088:
            result = "SharingOYAutoUnlock";
            break;
          case 131090:
            result = "SharingAirDrop";
            break;
          case 131091:
            result = "SharingNearbyInvitationHost";
            break;
          case 131092:
            result = "SharingNearbyInvitationParticipant";
            break;
          case 131093:
            result = "SharingAirDropAskToAirDrop";
            break;
          case 131094:
            result = "SharingAirDropTempIdentity";
            break;
          case 131095:
            result = "SharingAirDropNeedsCLink";
            break;
          case 131096:
            result = "SharingRemoteWidgetUpdate";
            break;
          case 131097:
            result = "SharingCountryCodeUpdate";
            break;
          case 131098:
            result = "SharingMacPhoneAutoUnlock";
            break;
          case 131099:
            result = "SharingVisionProDiscovery";
            break;
          case 131100:
            result = "SharingVisionProStateChange";
            break;
          case 131101:
            result = "SharingContinuityScreen";
            break;
          case 131102:
            result = "SharingEDTRemoteDisplay";
            break;
          case 131103:
            result = "SharingHomePodSetup";
            break;
          default:
            return "?";
        }

        return result;
      }

      if (a1 > 393218)
      {
        if (a1 > 458752)
        {
          switch(a1)
          {
            case 0x70001:
              return "PrecisionFindingFindee";
            case 0x70002:
              return "SpatialHandoffHome";
            case 0x80000:
              return "ADPD";
          }
        }

        else
        {
          switch(a1)
          {
            case 393219:
              return "AppleIDSignIn";
            case 393220:
              return "AppleIDSignInSettings";
            case 458752:
              return "PrecisionFindingFinder";
          }
        }
      }

      else
      {
        if (a1 >= 393216)
        {
          if (a1 == 393216)
          {
            return "CaptiveNetworkJoin";
          }

          if (a1 == 393217)
          {
            return "UseCaseSIMTransfer";
          }

          return "MacSetup";
        }

        switch(a1)
        {
          case 196608:
            return "DigitalIDTSA";
          case 262144:
            return "DigitalCarKeyThirdParty";
          case 327680:
            return "RapportThirdParty";
        }
      }

      return "?";
    }

    if (a1 < 0x100000)
    {
      if (a1 <= 851968)
      {
        if (a1 >= 655360)
        {
          if (a1 <= 720896)
          {
            if (a1 == 655360)
            {
              return "AccessDigitalHomeKey";
            }

            if (a1 == 720896)
            {
              return "SoftwareUpdateBTWake";
            }
          }

          else
          {
            switch(a1)
            {
              case 720897:
                return "SofrwareUpdateOutboxControllerAuth";
              case 786432:
                return "ProxControlDeviceClose";
              case 851968:
                return "DCTProtocolTelephony";
            }
          }
        }

        else
        {
          if (a1 <= 524290)
          {
            if (a1 == 524289)
            {
              return "ADPDBuffer";
            }

            else
            {
              return "MicroLocation";
            }
          }

          switch(a1)
          {
            case 524291:
              return "MicroLocationLeech";
            case 589824:
              return "FindNearbyRemote";
            case 589825:
              return "FindNearbyPencil";
          }
        }
      }

      else if (a1 <= 983041)
      {
        if (a1 <= 917504)
        {
          if (a1 == 851969)
          {
            return "DCTProtocolDataAndTelephony";
          }

          if (a1 == 917504)
          {
            return "NearbyFaceTime";
          }
        }

        else
        {
          switch(a1)
          {
            case 917505:
              return "NearbyFaceTimeData";
            case 983040:
              return "SOSBeaconPartA";
            case 983041:
              return "SOSBeaconPartB";
          }
        }
      }

      else
      {
        if (a1 <= 983044)
        {
          if (a1 == 983042)
          {
            return "SOSBeaconPrecisionFindResponse";
          }

          if (a1 == 983043)
          {
            return "SOSBeaconPrecisionFindRequest";
          }

          return "SOSBeaconScan";
        }

        switch(a1)
        {
          case 983045:
            return "SOSBeaconActivateScan";
          case 983046:
            return "SOSBeaconActivateAdvA";
          case 983047:
            return "SOSBeaconActivateAdvB";
        }
      }

      return "?";
    }

    if (a1 <= 2147418111)
    {
      switch(a1)
      {
        case 1048576:
          return "DOS";
        case 1048577:
          return "DOD";
        case 1114112:
          return "ProximityServiceDeviceSetup";
      }

      return "?";
    }

    switch(a1)
    {
      case 2147418112:
        result = "InternalTestNoLockScan";
        break;
      case 2147418113:
        result = "InternalTestNoScreenOffScan";
        break;
      case 2147418114:
        result = "InternalTestScanWithNoDups";
        break;
      case 2147418115:
        result = "InternalTestScanWithDups";
        break;
      case 2147418116:
        result = "InternalTestScanFor20Seconds";
        break;
      case 2147418117:
        result = "InternalTestActiveScan";
        break;
      case 2147418118:
        result = "InternalTestUUIDScan";
        break;
      case 2147418119:
        result = "InternalTestScanFor10ClockSeconds";
        break;
      case 2147418120:
        result = "InternalTestScanBoost";
        break;
      case 2147418121:
        result = "InternalTestDiscoveryScanWithMRC";
        break;
      case 2147418122:
        result = "InternalTestAdvWithHigherPower";
        break;
      case 2147418123:
        result = "InternalTestScanLowDutyCycleMCOnly";
        break;
      case 2147418124:
        result = "InternalTestUUIDScanWithMinRSSI";
        break;
      case 2147418125:
        result = "InternalTestUUIDScanWithMinRSSIMediumLow";
        break;
      case 2147418126:
        result = "InternalTestAdvWithHigherPowerServiceDataConnectable";
        break;
      case 2147418127:
        result = "InternalTestAdvWithHigherPowerServiceDataNonConnectable";
        break;
      case 2147418128:
        result = "InternalTestAdvWithHigherPowerServiceDataS2";
        break;
      case 2147418129:
        result = "InternalTestAdvWithHigherPowerServiceDataS8";
        break;
      case 2147418130:
        result = "InternalTestDiscoveryScanCodedPHY";
        break;
      default:
        return "?";
    }
  }

  return result;
}

const char *sub_10002DC3C(int a1)
{
  if (a1 < 0x20000)
  {
    if (a1 <= 0x20000)
    {
      switch(a1)
      {
        case 65536:
          result = "FindMyAction";
          break;
        case 65537:
          result = "FindMyBackground";
          break;
        case 65538:
          result = "FindMyActionHELE";
          break;
        case 65539:
          result = "FindMyBackgroundHELE";
          break;
        case 65540:
          result = "FindMyActionTransient";
          break;
        case 65541:
          result = "FindMyBackgroundTransient";
          break;
        case 65542:
          result = "FindMyActionHELETransient";
          break;
        case 65543:
          result = "FindMyBackgroundHELETransient";
          break;
        case 65544:
          result = "FindMyNotOptedIn";
          break;
        case 65545:
          result = "FindMyOptedIn";
          break;
        case 65546:
          result = "FindMySepAlertsEnabled";
          break;
        case 65547:
          result = "FindMyTemporaryAggressiveLegacy";
          break;
        case 65548:
          result = "FindMyTemporaryLongAggressive";
          break;
        case 65549:
          result = "FindMyBTFindingUserInitiated";
          break;
        case 65550:
          result = "FindMyHELE";
          break;
        case 65551:
          result = "FindMyBeaconOnDemand";
          break;
        case 65552:
          result = "FindMyWildTimedScan";
          break;
        case 65553:
          result = "FindMyBackgroundLeechScan";
          break;
        case 65554:
          result = "FindMySnifferMode";
          break;
        case 65555:
          result = "FindMyUnpair";
          break;
        case 65556:
          result = "FindMyUnpairHELE";
          break;
        case 65557:
          result = "FindMyPlaySound";
          break;
        case 65558:
          result = "FindMyPlaySoundHELE";
          break;
        case 65559:
          result = "FindMyNotOptedInBeepOnMoveWaking";
          break;
        case 65560:
          result = "FindMyUTTransient";
          break;
        case 65561:
          result = "FindMyUTHELETransient";
          break;
        case 65562:
          result = "FindMyActionExtendedRange";
          break;
        case 65563:
          result = "FindMyActionExtendedRangeLE2M";
          break;
        case 65564:
          result = "FindMyActionExtendedRangeTransient";
          break;
        case 65565:
          result = "FindMyPlaySoundExtendedRange";
          break;
        case 65566:
          result = "FindMyPair";
          break;
        case 65567:
          result = "FindMyTemporaryAggressiveLegacyExtendedRange";
          break;
        default:
          JUMPOUT(0);
      }
    }

    else
    {
      result = "Unspecified";
      switch(a1)
      {
        case 0:
          return result;
        case 1:
          result = "HealthKit";
          break;
        case 2:
          result = "HomeKit";
          break;
        case 3:
          result = "FindMyObjectConnection";
          break;
        case 4:
          result = "FindMyObjectConnectionTransient";
          break;
        case 5:
          result = "MIDI";
          break;
        case 6:
          result = "Continuity";
          break;
        case 7:
          result = "InstantHotSpot";
          break;
        case 8:
          result = "NearBy";
          break;
        case 9:
          result = "Sharing";
          break;
        case 10:
          result = "HearingSupport";
          break;
        case 11:
          result = "Magnet";
          break;
        case 12:
          result = "HID";
          break;
        case 13:
          result = "LEA";
          break;
        case 14:
          result = "External";
          break;
        case 15:
          result = "ExternalMedical";
          break;
        case 16:
          result = "ExternalLock";
          break;
        case 17:
          result = "ExternalWatch";
          break;
        case 18:
          result = "SmartRouting";
          break;
        case 19:
          result = "DigitalID";
          break;
        case 20:
          result = "DigitalKey";
          break;
        case 21:
          result = "DigitalCarKey";
          break;
        case 22:
          result = "HeySiri";
          break;
        case 23:
          result = "ThirdPartyApp";
          break;
        case 24:
          result = "CNJ";
          break;
        default:
          switch(a1)
          {
            case 256:
              result = "DevicePresenceDetection";
              break;
            case 257:
              result = "AudioBox";
              break;
            case 258:
              result = "SIMTransfer";
              break;
            case 259:
              result = "ProximityScreenOnLeechScan";
              break;
            case 260:
              result = "MacMigrate";
              break;
            case 263:
              result = "HIDUARTService";
              break;
            case 264:
              result = "AccessibilitySwitchControlPairing";
              break;
            case 265:
              result = "BaseBandFastConnect";
              break;
            case 266:
              result = "SafetyAlerts";
              break;
            case 267:
              result = "LECarPlay";
              break;
            case 268:
              result = "TCCBluetooth";
              break;
            case 269:
              result = "AOPBufferLeech";
              break;
            case 270:
              result = "HighPriorityScanWiFi";
              break;
            default:
              return "?";
          }

          break;
      }
    }
  }

  else
  {
    if (a1 <= 0x80000)
    {
      if (a1 < 196608)
      {
        switch(a1)
        {
          case 131072:
            result = "SharingDefault";
            break;
          case 131073:
            result = "SharingPhoneAutoUnlock";
            break;
          case 131074:
            result = "SharingSiriWatchAuth";
            break;
          case 131075:
            result = "SharingMacAutoUnlock";
            break;
          case 131076:
            result = "SharingEDTScreenOn";
            break;
          case 131077:
            result = "SharingEDTWiFiDisabled";
            break;
          case 131078:
            result = "SharingEDTWombatEligibleAsDefaultCamera";
            break;
          case 131079:
            result = "SharingEDTWombatCameraPicker";
            break;
          case 131080:
            result = "SharingWombatBackground";
            break;
          case 131081:
            result = "SharingUniversalControl";
            break;
          case 131082:
            result = "SharingPeopleProximity";
            break;
          case 131083:
            result = "SharingEDTEnsembleOpenDisplayPrefs";
            break;
          case 131084:
            result = "SharingEDTNearbydMotionStopped";
            break;
          case 131085:
            result = "SharingDoubleBoostGenericScan";
            break;
          case 131086:
            result = "SharingEDTIncomingAdvertisement ";
            break;
          case 131087:
            result = "SharingEDTWombatStreamStart";
            break;
          case 131088:
            result = "SharingOYAutoUnlock";
            break;
          case 131090:
            result = "SharingAirDrop";
            break;
          case 131091:
            result = "SharingNearbyInvitationHost";
            break;
          case 131092:
            result = "SharingNearbyInvitationParticipant";
            break;
          case 131093:
            result = "SharingAirDropAskToAirDrop";
            break;
          case 131094:
            result = "SharingAirDropTempIdentity";
            break;
          case 131095:
            result = "SharingAirDropNeedsCLink";
            break;
          case 131096:
            result = "SharingRemoteWidgetUpdate";
            break;
          case 131097:
            result = "SharingCountryCodeUpdate";
            break;
          case 131098:
            result = "SharingMacPhoneAutoUnlock";
            break;
          case 131099:
            result = "SharingVisionProDiscovery";
            break;
          case 131100:
            result = "SharingVisionProStateChange";
            break;
          case 131101:
            result = "SharingContinuityScreen";
            break;
          case 131102:
            result = "SharingEDTRemoteDisplay";
            break;
          case 131103:
            result = "SharingHomePodSetup";
            break;
          default:
            return "?";
        }

        return result;
      }

      if (a1 > 393218)
      {
        if (a1 > 458752)
        {
          switch(a1)
          {
            case 0x70001:
              return "PrecisionFindingFindee";
            case 0x70002:
              return "SpatialHandoffHome";
            case 0x80000:
              return "ADPD";
          }
        }

        else
        {
          switch(a1)
          {
            case 393219:
              return "AppleIDSignIn";
            case 393220:
              return "AppleIDSignInSettings";
            case 458752:
              return "PrecisionFindingFinder";
          }
        }
      }

      else
      {
        if (a1 >= 393216)
        {
          if (a1 == 393216)
          {
            return "CaptiveNetworkJoin";
          }

          if (a1 == 393217)
          {
            return "UseCaseSIMTransfer";
          }

          return "MacSetup";
        }

        switch(a1)
        {
          case 196608:
            return "DigitalIDTSA";
          case 262144:
            return "DigitalCarKeyThirdParty";
          case 327680:
            return "RapportThirdParty";
        }
      }

      return "?";
    }

    if (a1 < 0x100000)
    {
      if (a1 <= 851968)
      {
        if (a1 >= 655360)
        {
          if (a1 <= 720896)
          {
            if (a1 == 655360)
            {
              return "AccessDigitalHomeKey";
            }

            if (a1 == 720896)
            {
              return "SoftwareUpdateBTWake";
            }
          }

          else
          {
            switch(a1)
            {
              case 720897:
                return "SofrwareUpdateOutboxControllerAuth";
              case 786432:
                return "ProxControlDeviceClose";
              case 851968:
                return "DCTProtocolTelephony";
            }
          }
        }

        else
        {
          if (a1 <= 524290)
          {
            if (a1 == 524289)
            {
              return "ADPDBuffer";
            }

            else
            {
              return "MicroLocation";
            }
          }

          switch(a1)
          {
            case 524291:
              return "MicroLocationLeech";
            case 589824:
              return "FindNearbyRemote";
            case 589825:
              return "FindNearbyPencil";
          }
        }
      }

      else if (a1 <= 983041)
      {
        if (a1 <= 917504)
        {
          if (a1 == 851969)
          {
            return "DCTProtocolDataAndTelephony";
          }

          if (a1 == 917504)
          {
            return "NearbyFaceTime";
          }
        }

        else
        {
          switch(a1)
          {
            case 917505:
              return "NearbyFaceTimeData";
            case 983040:
              return "SOSBeaconPartA";
            case 983041:
              return "SOSBeaconPartB";
          }
        }
      }

      else
      {
        if (a1 <= 983044)
        {
          if (a1 == 983042)
          {
            return "SOSBeaconPrecisionFindResponse";
          }

          if (a1 == 983043)
          {
            return "SOSBeaconPrecisionFindRequest";
          }

          return "SOSBeaconScan";
        }

        switch(a1)
        {
          case 983045:
            return "SOSBeaconActivateScan";
          case 983046:
            return "SOSBeaconActivateAdvA";
          case 983047:
            return "SOSBeaconActivateAdvB";
        }
      }

      return "?";
    }

    if (a1 <= 2147418111)
    {
      switch(a1)
      {
        case 1048576:
          return "DOS";
        case 1048577:
          return "DOD";
        case 1114112:
          return "ProximityServiceDeviceSetup";
      }

      return "?";
    }

    switch(a1)
    {
      case 2147418112:
        result = "InternalTestNoLockScan";
        break;
      case 2147418113:
        result = "InternalTestNoScreenOffScan";
        break;
      case 2147418114:
        result = "InternalTestScanWithNoDups";
        break;
      case 2147418115:
        result = "InternalTestScanWithDups";
        break;
      case 2147418116:
        result = "InternalTestScanFor20Seconds";
        break;
      case 2147418117:
        result = "InternalTestActiveScan";
        break;
      case 2147418118:
        result = "InternalTestUUIDScan";
        break;
      case 2147418119:
        result = "InternalTestScanFor10ClockSeconds";
        break;
      case 2147418120:
        result = "InternalTestScanBoost";
        break;
      case 2147418121:
        result = "InternalTestDiscoveryScanWithMRC";
        break;
      case 2147418122:
        result = "InternalTestAdvWithHigherPower";
        break;
      case 2147418123:
        result = "InternalTestScanLowDutyCycleMCOnly";
        break;
      case 2147418124:
        result = "InternalTestUUIDScanWithMinRSSI";
        break;
      case 2147418125:
        result = "InternalTestUUIDScanWithMinRSSIMediumLow";
        break;
      case 2147418126:
        result = "InternalTestAdvWithHigherPowerServiceDataConnectable";
        break;
      case 2147418127:
        result = "InternalTestAdvWithHigherPowerServiceDataNonConnectable";
        break;
      case 2147418128:
        result = "InternalTestAdvWithHigherPowerServiceDataS2";
        break;
      case 2147418129:
        result = "InternalTestAdvWithHigherPowerServiceDataS8";
        break;
      case 2147418130:
        result = "InternalTestDiscoveryScanCodedPHY";
        break;
      default:
        return "?";
    }
  }

  return result;
}

const char *sub_10002E6D4(int a1)
{
  if (a1 < 0x20000)
  {
    if (a1 <= 0x20000)
    {
      switch(a1)
      {
        case 65536:
          result = "FindMyAction";
          break;
        case 65537:
          result = "FindMyBackground";
          break;
        case 65538:
          result = "FindMyActionHELE";
          break;
        case 65539:
          result = "FindMyBackgroundHELE";
          break;
        case 65540:
          result = "FindMyActionTransient";
          break;
        case 65541:
          result = "FindMyBackgroundTransient";
          break;
        case 65542:
          result = "FindMyActionHELETransient";
          break;
        case 65543:
          result = "FindMyBackgroundHELETransient";
          break;
        case 65544:
          result = "FindMyNotOptedIn";
          break;
        case 65545:
          result = "FindMyOptedIn";
          break;
        case 65546:
          result = "FindMySepAlertsEnabled";
          break;
        case 65547:
          result = "FindMyTemporaryAggressiveLegacy";
          break;
        case 65548:
          result = "FindMyTemporaryLongAggressive";
          break;
        case 65549:
          result = "FindMyBTFindingUserInitiated";
          break;
        case 65550:
          result = "FindMyHELE";
          break;
        case 65551:
          result = "FindMyBeaconOnDemand";
          break;
        case 65552:
          result = "FindMyWildTimedScan";
          break;
        case 65553:
          result = "FindMyBackgroundLeechScan";
          break;
        case 65554:
          result = "FindMySnifferMode";
          break;
        case 65555:
          result = "FindMyUnpair";
          break;
        case 65556:
          result = "FindMyUnpairHELE";
          break;
        case 65557:
          result = "FindMyPlaySound";
          break;
        case 65558:
          result = "FindMyPlaySoundHELE";
          break;
        case 65559:
          result = "FindMyNotOptedInBeepOnMoveWaking";
          break;
        case 65560:
          result = "FindMyUTTransient";
          break;
        case 65561:
          result = "FindMyUTHELETransient";
          break;
        case 65562:
          result = "FindMyActionExtendedRange";
          break;
        case 65563:
          result = "FindMyActionExtendedRangeLE2M";
          break;
        case 65564:
          result = "FindMyActionExtendedRangeTransient";
          break;
        case 65565:
          result = "FindMyPlaySoundExtendedRange";
          break;
        case 65566:
          result = "FindMyPair";
          break;
        case 65567:
          result = "FindMyTemporaryAggressiveLegacyExtendedRange";
          break;
        default:
          JUMPOUT(0);
      }
    }

    else
    {
      result = "Unspecified";
      switch(a1)
      {
        case 0:
          return result;
        case 1:
          result = "HealthKit";
          break;
        case 2:
          result = "HomeKit";
          break;
        case 3:
          result = "FindMyObjectConnection";
          break;
        case 4:
          result = "FindMyObjectConnectionTransient";
          break;
        case 5:
          result = "MIDI";
          break;
        case 6:
          result = "Continuity";
          break;
        case 7:
          result = "InstantHotSpot";
          break;
        case 8:
          result = "NearBy";
          break;
        case 9:
          result = "Sharing";
          break;
        case 10:
          result = "HearingSupport";
          break;
        case 11:
          result = "Magnet";
          break;
        case 12:
          result = "HID";
          break;
        case 13:
          result = "LEA";
          break;
        case 14:
          result = "External";
          break;
        case 15:
          result = "ExternalMedical";
          break;
        case 16:
          result = "ExternalLock";
          break;
        case 17:
          result = "ExternalWatch";
          break;
        case 18:
          result = "SmartRouting";
          break;
        case 19:
          result = "DigitalID";
          break;
        case 20:
          result = "DigitalKey";
          break;
        case 21:
          result = "DigitalCarKey";
          break;
        case 22:
          result = "HeySiri";
          break;
        case 23:
          result = "ThirdPartyApp";
          break;
        case 24:
          result = "CNJ";
          break;
        default:
          switch(a1)
          {
            case 256:
              result = "DevicePresenceDetection";
              break;
            case 257:
              result = "AudioBox";
              break;
            case 258:
              result = "SIMTransfer";
              break;
            case 259:
              result = "ProximityScreenOnLeechScan";
              break;
            case 260:
              result = "MacMigrate";
              break;
            case 263:
              result = "HIDUARTService";
              break;
            case 264:
              result = "AccessibilitySwitchControlPairing";
              break;
            case 265:
              result = "BaseBandFastConnect";
              break;
            case 266:
              result = "SafetyAlerts";
              break;
            case 267:
              result = "LECarPlay";
              break;
            case 268:
              result = "TCCBluetooth";
              break;
            case 269:
              result = "AOPBufferLeech";
              break;
            case 270:
              result = "HighPriorityScanWiFi";
              break;
            default:
              return "?";
          }

          break;
      }
    }
  }

  else
  {
    if (a1 <= 0x80000)
    {
      if (a1 < 196608)
      {
        switch(a1)
        {
          case 131072:
            result = "SharingDefault";
            break;
          case 131073:
            result = "SharingPhoneAutoUnlock";
            break;
          case 131074:
            result = "SharingSiriWatchAuth";
            break;
          case 131075:
            result = "SharingMacAutoUnlock";
            break;
          case 131076:
            result = "SharingEDTScreenOn";
            break;
          case 131077:
            result = "SharingEDTWiFiDisabled";
            break;
          case 131078:
            result = "SharingEDTWombatEligibleAsDefaultCamera";
            break;
          case 131079:
            result = "SharingEDTWombatCameraPicker";
            break;
          case 131080:
            result = "SharingWombatBackground";
            break;
          case 131081:
            result = "SharingUniversalControl";
            break;
          case 131082:
            result = "SharingPeopleProximity";
            break;
          case 131083:
            result = "SharingEDTEnsembleOpenDisplayPrefs";
            break;
          case 131084:
            result = "SharingEDTNearbydMotionStopped";
            break;
          case 131085:
            result = "SharingDoubleBoostGenericScan";
            break;
          case 131086:
            result = "SharingEDTIncomingAdvertisement ";
            break;
          case 131087:
            result = "SharingEDTWombatStreamStart";
            break;
          case 131088:
            result = "SharingOYAutoUnlock";
            break;
          case 131090:
            result = "SharingAirDrop";
            break;
          case 131091:
            result = "SharingNearbyInvitationHost";
            break;
          case 131092:
            result = "SharingNearbyInvitationParticipant";
            break;
          case 131093:
            result = "SharingAirDropAskToAirDrop";
            break;
          case 131094:
            result = "SharingAirDropTempIdentity";
            break;
          case 131095:
            result = "SharingAirDropNeedsCLink";
            break;
          case 131096:
            result = "SharingRemoteWidgetUpdate";
            break;
          case 131097:
            result = "SharingCountryCodeUpdate";
            break;
          case 131098:
            result = "SharingMacPhoneAutoUnlock";
            break;
          case 131099:
            result = "SharingVisionProDiscovery";
            break;
          case 131100:
            result = "SharingVisionProStateChange";
            break;
          case 131101:
            result = "SharingContinuityScreen";
            break;
          case 131102:
            result = "SharingEDTRemoteDisplay";
            break;
          case 131103:
            result = "SharingHomePodSetup";
            break;
          default:
            return "?";
        }

        return result;
      }

      if (a1 > 393218)
      {
        if (a1 > 458752)
        {
          switch(a1)
          {
            case 0x70001:
              return "PrecisionFindingFindee";
            case 0x70002:
              return "SpatialHandoffHome";
            case 0x80000:
              return "ADPD";
          }
        }

        else
        {
          switch(a1)
          {
            case 393219:
              return "AppleIDSignIn";
            case 393220:
              return "AppleIDSignInSettings";
            case 458752:
              return "PrecisionFindingFinder";
          }
        }
      }

      else
      {
        if (a1 >= 393216)
        {
          if (a1 == 393216)
          {
            return "CaptiveNetworkJoin";
          }

          if (a1 == 393217)
          {
            return "UseCaseSIMTransfer";
          }

          return "MacSetup";
        }

        switch(a1)
        {
          case 196608:
            return "DigitalIDTSA";
          case 262144:
            return "DigitalCarKeyThirdParty";
          case 327680:
            return "RapportThirdParty";
        }
      }

      return "?";
    }

    if (a1 < 0x100000)
    {
      if (a1 <= 851968)
      {
        if (a1 >= 655360)
        {
          if (a1 <= 720896)
          {
            if (a1 == 655360)
            {
              return "AccessDigitalHomeKey";
            }

            if (a1 == 720896)
            {
              return "SoftwareUpdateBTWake";
            }
          }

          else
          {
            switch(a1)
            {
              case 720897:
                return "SofrwareUpdateOutboxControllerAuth";
              case 786432:
                return "ProxControlDeviceClose";
              case 851968:
                return "DCTProtocolTelephony";
            }
          }
        }

        else
        {
          if (a1 <= 524290)
          {
            if (a1 == 524289)
            {
              return "ADPDBuffer";
            }

            else
            {
              return "MicroLocation";
            }
          }

          switch(a1)
          {
            case 524291:
              return "MicroLocationLeech";
            case 589824:
              return "FindNearbyRemote";
            case 589825:
              return "FindNearbyPencil";
          }
        }
      }

      else if (a1 <= 983041)
      {
        if (a1 <= 917504)
        {
          if (a1 == 851969)
          {
            return "DCTProtocolDataAndTelephony";
          }

          if (a1 == 917504)
          {
            return "NearbyFaceTime";
          }
        }

        else
        {
          switch(a1)
          {
            case 917505:
              return "NearbyFaceTimeData";
            case 983040:
              return "SOSBeaconPartA";
            case 983041:
              return "SOSBeaconPartB";
          }
        }
      }

      else
      {
        if (a1 <= 983044)
        {
          if (a1 == 983042)
          {
            return "SOSBeaconPrecisionFindResponse";
          }

          if (a1 == 983043)
          {
            return "SOSBeaconPrecisionFindRequest";
          }

          return "SOSBeaconScan";
        }

        switch(a1)
        {
          case 983045:
            return "SOSBeaconActivateScan";
          case 983046:
            return "SOSBeaconActivateAdvA";
          case 983047:
            return "SOSBeaconActivateAdvB";
        }
      }

      return "?";
    }

    if (a1 <= 2147418111)
    {
      switch(a1)
      {
        case 1048576:
          return "DOS";
        case 1048577:
          return "DOD";
        case 1114112:
          return "ProximityServiceDeviceSetup";
      }

      return "?";
    }

    switch(a1)
    {
      case 2147418112:
        result = "InternalTestNoLockScan";
        break;
      case 2147418113:
        result = "InternalTestNoScreenOffScan";
        break;
      case 2147418114:
        result = "InternalTestScanWithNoDups";
        break;
      case 2147418115:
        result = "InternalTestScanWithDups";
        break;
      case 2147418116:
        result = "InternalTestScanFor20Seconds";
        break;
      case 2147418117:
        result = "InternalTestActiveScan";
        break;
      case 2147418118:
        result = "InternalTestUUIDScan";
        break;
      case 2147418119:
        result = "InternalTestScanFor10ClockSeconds";
        break;
      case 2147418120:
        result = "InternalTestScanBoost";
        break;
      case 2147418121:
        result = "InternalTestDiscoveryScanWithMRC";
        break;
      case 2147418122:
        result = "InternalTestAdvWithHigherPower";
        break;
      case 2147418123:
        result = "InternalTestScanLowDutyCycleMCOnly";
        break;
      case 2147418124:
        result = "InternalTestUUIDScanWithMinRSSI";
        break;
      case 2147418125:
        result = "InternalTestUUIDScanWithMinRSSIMediumLow";
        break;
      case 2147418126:
        result = "InternalTestAdvWithHigherPowerServiceDataConnectable";
        break;
      case 2147418127:
        result = "InternalTestAdvWithHigherPowerServiceDataNonConnectable";
        break;
      case 2147418128:
        result = "InternalTestAdvWithHigherPowerServiceDataS2";
        break;
      case 2147418129:
        result = "InternalTestAdvWithHigherPowerServiceDataS8";
        break;
      case 2147418130:
        result = "InternalTestDiscoveryScanCodedPHY";
        break;
      default:
        return "?";
    }
  }

  return result;
}