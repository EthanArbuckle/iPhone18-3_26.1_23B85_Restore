uint64_t sub_100067CB0(uint64_t a1)
{
  v1 = *(a1 + 1800);
  if (v1)
  {
    v3 = qword_100BCE918;
    if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "fADVBufferPeriodicDrainTimer destroyed!", v5, 2u);
      v1 = *(a1 + 1800);
    }

    dispatch_source_cancel(v1);
    dispatch_release(*(a1 + 1800));
    *(a1 + 1800) = 0;
  }

  return 0;
}

void sub_100067D48(uint64_t a1)
{
  if (qword_100BC7D18 != -1)
  {
    sub_100874E70();
  }

  v2 = qword_100BCE918;
  if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "ADVBUFF readNextADVBuffer", buf, 2u);
  }

  if (sub_10002529C(a1))
  {
    sub_1007A35C0(a1);
    v3 = 0;
    v4 = a1 + 1793;
    v5 = (a1 + 169);
    v6 = off_100B0D748;
    *&v7 = 138413058;
    v48 = v7;
    do
    {
      v8 = qword_100BCE918;
      if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_INFO))
      {
        v9 = v6[v3];
        v10 = *v5;
        v11 = *(v4 + v3);
        *buf = 138412802;
        v53 = v9;
        v54 = 1024;
        *v55 = v10;
        *&v55[4] = 1024;
        *&v55[6] = v11;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "ADVBUFF(%@): pendingDraining:%d fObjectDiscoveryBuffersToRead:%d", buf, 0x18u);
      }

      if (*(v4 + v3) == 1 && *v5 == 1)
      {
        *(v4 + v3) = 0;
        v12 = qword_100BCE918;
        if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_INFO))
        {
          v13 = v6[v3];
          v14 = v5[3];
          v15 = v5[2];
          *buf = 138412802;
          v53 = v13;
          v54 = 1024;
          *v55 = v14;
          *&v55[4] = 1024;
          *&v55[6] = v15;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "ADVBUFF(%@): expectedEntries=%d readInProgress:%d", buf, 0x18u);
        }

        if (v5[3] == 255)
        {
          v16 = qword_100BCE918;
        }

        else
        {
          v16 = qword_100BCE918;
          if (v5[2] != 1)
          {
            if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_INFO))
            {
              v45 = v6[v3];
              *buf = 138412290;
              v53 = v45;
              _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "ADVBUFF(%@): Already reading ADV Buffer", buf, 0xCu);
            }

LABEL_57:
            v46 = qword_100BCE918;
            if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_INFO))
            {
              v47 = v6[v3];
              *buf = 138412546;
              v53 = v47;
              v54 = 1024;
              *v55 = v3;
              _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_INFO, "ADVBUFF(%@): waiting for buffer %d events", buf, 0x12u);
            }

            return;
          }
        }

        if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
        {
          v17 = v6[v3];
          *buf = 138412290;
          v53 = v17;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "ADVBUFF(%@): Pausing ADV Buffers", buf, 0xCu);
        }

        v18 = v6;
        if (sub_1007A1858(a1, v3, 0))
        {
          v19 = qword_100BCE918;
          if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_INFO))
          {
            v20 = v6[v3];
            *buf = 138412290;
            v53 = v20;
            _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "ADVBUFF(%@): could not disable ADV buffering", buf, 0xCu);
          }
        }

        else
        {
          v5[2] = 1;
          sub_100067CB0(a1);
          sub_1007A3658(a1);
          sub_1007A37B8(a1, v3);
          v21 = qword_100BCE918;
          if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_INFO))
          {
            v22 = v6[v3];
            *buf = 138412290;
            v53 = v22;
            _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "ADVBUFF(%@): Trying to read", buf, 0xCu);
          }

          *(a1 + 1796) = v3;
          v23 = sub_1007A3920(a1, v3);
          if (v3 == 1)
          {
            v24 = @"NearOwner";
          }

          else
          {
            v24 = @"Wild";
          }

          [*(a1 + 152) setObject:v24 forKeyedSubscript:{@"AdvertisementBufferType", v48}];
          if (v5[3] == 255)
          {
            v25 = 0;
          }

          else
          {
            v25 = v5[3];
          }

          v26 = [NSNumber numberWithInt:v25];
          [*(a1 + 152) setObject:v26 forKeyedSubscript:@"CurrentCapacityAtDrain"];

          v27 = [NSNumber numberWithInt:100];
          [*(a1 + 152) setObject:v27 forKeyedSubscript:@"MaxCapacity"];

          v28 = mach_continuous_time() * dword_100BC7D10 / *algn_100BC7D14 / 0x3B9ACA00;
          v29 = *(v5 + 15);
          if (v29)
          {
            v30 = v28 - v29;
          }

          else
          {
            v30 = 0;
          }

          v31 = qword_100BCE918;
          if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEBUG))
          {
            v41 = v18[v3];
            v42 = *(v5 + 15);
            *buf = v48;
            v53 = v41;
            v54 = 2048;
            *v55 = v42;
            *&v55[8] = 2048;
            v56 = v28;
            v57 = 2048;
            v58 = v30;
            _os_log_debug_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEBUG, "ADVBUFF(%@): lastReadTimeStamp:%llu now:%llu delta:%llu", buf, 0x2Au);
          }

          *(v5 + 15) = v28;
          v32 = [NSNumber numberWithUnsignedLongLong:v30];
          [*(a1 + 152) setObject:v32 forKeyedSubscript:@"TimeSinceLastDrainInSeconds"];

          v33 = sub_10000F034();
          (*(*v33 + 400))(v33, *(a1 + 152));
          if (v3)
          {
            if (v3 == 1)
            {
              v34 = sub_10000F034();
              (*(*v34 + 624))(v34);
            }
          }

          else
          {
            v35 = sub_10000F034();
            (*(*v35 + 632))(v35);
          }

          v36 = qword_100BCE918;
          v6 = v18;
          if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_INFO))
          {
            v37 = v18[v3];
            v38 = v5[3];
            *buf = 138412802;
            v53 = v37;
            v54 = 1024;
            *v55 = v23;
            *&v55[4] = 1024;
            *&v55[6] = v38;
            _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_INFO, "ADVBUFF(%@): ReadADVBuffer returned %d, fADVBufferExpectedEntries:%d", buf, 0x18u);
          }

          if (v23 && os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_FAULT))
          {
            sub_100874E84(&v50, v51);
            v6 = v18;
          }

          if (v5[3] != 255)
          {
            goto LABEL_57;
          }

          v5[2] = 0;
        }

        if ((_os_feature_enabled_impl() & 1) == 0)
        {
          sub_100068514();
        }

        v39 = qword_100BCE918;
        v6 = v18;
        if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_INFO))
        {
          v40 = v18[v3];
          *buf = 138412290;
          v53 = v40;
          _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_INFO, "ADVBUFF(%@): trying to read the next buffer", buf, 0xCu);
        }
      }

      ++v3;
      v5 += 544;
    }

    while (v3 != 3);
    if (_os_feature_enabled_impl())
    {
      v43 = sub_100007EE8();
      v49[0] = _NSConcreteStackBlock;
      v49[1] = 3221225472;
      v49[2] = sub_1007A3CDC;
      v49[3] = &unk_100ADF8F8;
      v49[4] = a1;
      sub_10000CA94(v43, v49);
    }

    sub_10007AB18(a1);
  }
}

void sub_100068514()
{
  v0 = qword_100BCE918;
  if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_DEFAULT, "ADVBUFF Sending empty event", buf, 2u);
  }

  *buf = 0;
  v2 = 0;
  v3 = 0;
  operator new();
}

void sub_1000688C4(uint64_t a1, void (***a2)(void, uint64_t, void, uint64_t, uint64_t, void, void ***, const __CFString *))
{
  v3 = *(a1 + 32);
  v5[0] = 0;
  v5[1] = 0;
  v4 = v5;
  (**a2)(a2, v3, 0, a1 + 40, a1 + 56, 0, &v4, @"default");
  sub_10000CEDC(&v4, v5[0]);
}

void *sub_100068968(void *a1, const void ***a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  sub_1000860FC(a1, *a2, a2 + 1);
  return a1;
}

uint64_t sub_1000689C0(uint64_t a1, unint64_t a2)
{
  v22[1] = 0;
  v23 = a2;
  v22[0] = 0;
  sub_100007F88(v22, a1 + 64);
  v4 = *(a1 + 16920);
  if (!v4)
  {
    goto LABEL_39;
  }

  v5 = a1 + 16920;
  do
  {
    v6 = *(v4 + 32);
    v7 = v6 >= a2;
    v8 = v6 < a2;
    if (v7)
    {
      v5 = v4;
    }

    v4 = *(v4 + 8 * v8);
  }

  while (v4);
  if (v5 != a1 + 16920 && *(v5 + 32) <= a2)
  {
    v11 = qword_100BCE9A8;
    if (os_log_type_enabled(qword_100BCE9A8, OS_LOG_TYPE_DEFAULT))
    {
      sub_100018384(a2, __p);
      v12 = v21 >= 0 ? __p : __p[0];
      *buf = 136446210;
      *&buf[4] = v12;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Received 'stop advertising' request from session %{public}s", buf, 0xCu);
      if (v21 < 0)
      {
        operator delete(__p[0]);
      }
    }

    if (*(a1 + 17172) == 1)
    {
      v13 = qword_100BCE9A8;
      if (os_log_type_enabled(qword_100BCE9A8, OS_LOG_TYPE_ERROR))
      {
        sub_100018384(a2, __p);
        v15 = v21;
        v16 = __p[0];
        sub_100025284(a2, buf);
        v17 = __p;
        if (v15 < 0)
        {
          v17 = v16;
        }

        if (v25 >= 0)
        {
          v18 = buf;
        }

        else
        {
          v18 = *buf;
        }

        *v26 = 136446466;
        v27 = v17;
        v28 = 2082;
        v29 = v18;
        _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "WILLSLEEP violation! Session %{public}s(%{public}s) asking to stop advertising", v26, 0x16u);
        if (v25 < 0)
        {
          operator delete(*buf);
        }

        if (v21 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }

    sub_100069664(a1, a2);
    __p[0] = &v23;
    if (*(sub_1000866FC(a1 + 16912, &v23)[6] + 440))
    {
      if (qword_100B50910 != -1)
      {
        sub_10086AEE8();
      }

      nullsub_21(off_100B50908);
    }

    sub_100069110(a1, v23);
    if (*(a1 + 49) == 1)
    {
      v14 = *(a1 + 56);
      v19[0] = _NSConcreteStackBlock;
      v19[1] = 3221225472;
      v19[2] = sub_10008D2D8;
      v19[3] = &unk_100ADF8F8;
      v19[4] = a1;
      sub_10000CA94(v14, v19);
    }

    v9 = 0;
  }

  else
  {
LABEL_39:
    if (os_log_type_enabled(qword_100BCE9A8, OS_LOG_TYPE_ERROR))
    {
      sub_100018384(a2, __p);
      sub_10086B710();
    }

    v9 = 123;
  }

  sub_1000088CC(v22);
  return v9;
}

void sub_100068CF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  sub_1000088CC(&a21);
  _Unwind_Resume(a1);
}

uint64_t sub_100068D34(void *a1, uint64_t a2)
{
  v33[0] = 0;
  v33[1] = 0;
  sub_100007F88(v33, (a1 + 8));
  v31 = 0;
  v32[0] = 0;
  v32[1] = 0;
  sub_1000690B8(&v31, (a1 + 2114));
  v4 = v31;
  if (v31 != v32)
  {
    do
    {
      if (v4[4] == a2)
      {
        *(v4[6] + 320) = 0;
      }

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
    }

    while (v6 != v32);
  }

  v8 = a1 + 2117;
  for (i = a1[2118]; i != v8; i = i[1])
  {
    if (i[2] == a2)
    {
      if (os_log_type_enabled(qword_100BCE9B0, OS_LOG_TYPE_DEBUG))
      {
        sub_100018384(a2, v30);
        sub_10086B6B4();
      }

      v11 = *i;
      v10 = i[1];
      *(v11 + 8) = v10;
      *v10 = v11;
      --a1[2119];
      operator delete(i);
      v12 = v31;
      if (v31 != v32)
      {
        do
        {
          if (v12[4] == a2)
          {
            *(v12[6] + 320) = 0;
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
              v7 = *v14 == v12;
              v12 = v14;
            }

            while (!v7);
          }

          v12 = v14;
        }

        while (v14 != v32);
      }

      break;
    }
  }

  if (os_log_type_enabled(qword_100BCE9B0, OS_LOG_TYPE_DEBUG))
  {
    sub_10086B598();
  }

  v15 = a1[2118];
  if (v15 != v8)
  {
    v16 = a1 + 2115;
    do
    {
      v17 = *v16;
      if (!*v16)
      {
        goto LABEL_37;
      }

      v18 = v15[2];
      v19 = a1 + 2115;
      do
      {
        v20 = v17[4];
        v21 = v20 >= v18;
        v22 = v20 < v18;
        if (v21)
        {
          v19 = v17;
        }

        v17 = v17[v22];
      }

      while (v17);
      if (v19 == v16 || v18 < v19[4])
      {
LABEL_37:
        v19 = a1 + 2115;
      }

      v23 = qword_100BCE9B0;
      if (os_log_type_enabled(qword_100BCE9B0, OS_LOG_TYPE_DEBUG))
      {
        sub_100018384(v19[4], __p);
        if (v29 >= 0)
        {
          v24 = __p;
        }

        else
        {
          v24 = __p[0];
        }

        *buf = 136446210;
        v35 = v24;
        _os_log_debug_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEBUG, "   %{public}s", buf, 0xCu);
        if (v29 < 0)
        {
          operator delete(__p[0]);
        }
      }

      v15 = v15[1];
    }

    while (v15 != v8);
  }

  v25 = a1[7];
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_10008CFF8;
  v27[3] = &unk_100ADF8F8;
  v27[4] = a1;
  sub_10000CA94(v25, v27);
  sub_10008667C(&v31, v32[0]);
  return sub_1000088CC(v33);
}

void sub_100069080(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va1, a14);
  va_start(va, a14);
  v15 = va_arg(va1, void);
  v17 = va_arg(va1, void *);
  v18 = va_arg(va1, void);
  sub_10008667C(va, v17);
  sub_1000088CC(va1);
  _Unwind_Resume(a1);
}

void *sub_1000690B8(void *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  sub_100086888(a1, *a2, (a2 + 8));
  return a1;
}

uint64_t sub_100069110(uint64_t a1, unint64_t a2)
{
  v23 = a2;
  v3 = *(a1 + 16920);
  if (!v3)
  {
    goto LABEL_9;
  }

  v5 = (a1 + 16920);
  do
  {
    v6 = v3[4];
    v7 = v6 >= a2;
    v8 = v6 < a2;
    if (v7)
    {
      v5 = v3;
    }

    v3 = v3[v8];
  }

  while (v3);
  if (v5 != (a1 + 16920) && v5[4] <= a2)
  {
    *buf = &v23;
    v11 = sub_1000866FC(a1 + 16912, &v23);
    v12 = v11;
    v13 = *(v11 + 48);
    if (*(v13 + 308) == 1)
    {
      v14 = *(v13 + 264);
      if (*(a1 + 17009 + v14) == 1)
      {
        v15 = sub_1002B2310(*(v13 + 264));
        v16 = sub_10000C7D0();
        v11 = (*(*v16 + 3472))(v16, v15, 0, 1);
        if ((v11 & 0xFFFFFFFD) != 0)
        {
          v11 = os_log_type_enabled(qword_100BCE9A8, OS_LOG_TYPE_ERROR);
          if (v11)
          {
            sub_10086AAB8();
          }
        }

        v13 = *(v12 + 48);
        *(a1 + 17009 + *(v13 + 264)) = 0;
      }

      else
      {
        v17 = qword_100BCE9A8;
        v11 = os_log_type_enabled(qword_100BCE9A8, OS_LOG_TYPE_ERROR);
        if (v11)
        {
          *buf = 67109120;
          *&buf[4] = v14;
          _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "Cannot disable ObjectLocator response on handle %d", buf, 8u);
          v13 = *(v12 + 48);
        }
      }
    }

    if (*(v13 + 409) == 1)
    {
      v18 = *(v13 + 264);
      if (*(a1 + 17014 + v18) == 1)
      {
        v19 = 0;
        *(a1 + 17014 + v18) = 0;
        do
        {
          v20 = *(a1 + 17014 + v19);
          if (v20)
          {
            break;
          }
        }

        while (v19++ != 4);
        if ((v20 & 1) == 0)
        {
          sub_10072B234(a1, 0);
        }
      }

      else
      {
        v22 = qword_100BCE9A8;
        v11 = os_log_type_enabled(qword_100BCE9A8, OS_LOG_TYPE_DEFAULT);
        if (v11)
        {
          *buf = 67109120;
          *&buf[4] = v18;
          _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "setLEAdvTxPowerIncrease on advertising handle is already disabled on handle %d", buf, 8u);
        }
      }
    }

    sub_100069590(v11, v12 + 40);
    sub_100069410((a1 + 16912), v5);
    sub_100068D34(a1, v23);
    return 0;
  }

  else
  {
LABEL_9:
    v9 = qword_100BCE9A8;
    if (os_log_type_enabled(qword_100BCE9A8, OS_LOG_TYPE_ERROR))
    {
      sub_10086AB2C(a2, v9);
    }

    return 3;
  }
}

uint64_t *sub_100069410(uint64_t **a1, uint64_t *a2)
{
  v3 = sub_10002717C(a1, a2);
  a2[5] = &off_100AE0AB8;
  v4 = a2[6];
  if (v4)
  {
    sub_10000C808(v4);
  }

  operator delete(a2);
  return v3;
}

uint64_t sub_100069470(uint64_t a1, unint64_t a2, uint64_t (*a3)(void))
{
  result = 162;
  if (a1 && a2)
  {
    if (!a3)
    {
      return 101;
    }

    if (a2 < 3)
    {
      return 0;
    }

    v7 = 2;
    do
    {
      if (*(a1 + v7) == 1)
      {
        if ((v7 + 16) >= a2)
        {
          return 162;
        }

        v8 = 0;
        LODWORD(v9) = v7 + 1;
        v10 = 16;
      }

      else
      {
        v9 = (v7 + 1);
        if (v9 >= a2)
        {
          return 162;
        }

        v10 = *(a1 + v9) & 0x1F;
        if (v10 == 31)
        {
          v11 = (v7 + 2);
          if (v11 >= a2)
          {
            return 162;
          }

          v10 = *(a1 + v11) + 31;
          v8 = 2;
        }

        else
        {
          v8 = 1;
        }

        if ((v10 + v7 + v8) > a2)
        {
          return 162;
        }
      }

      v12 = a3();
      result = 0;
      v7 = (v9 + v10 + v8);
    }

    while (v7 < a2 && v12);
  }

  return result;
}

void sub_100069590(uint64_t a1, uint64_t a2)
{
  if (os_log_type_enabled(qword_100BCE9A8, OS_LOG_TYPE_DEBUG))
  {
    sub_10086B5D4();
  }

  v3 = sub_10000C5E0(*(a2 + 8) + 48);
  v4 = sub_10000C5F8(*(a2 + 8) + 48);
  if (v3 >= 3 && sub_100069470(v4 + 2, v3 - 2, sub_100086910) && os_log_type_enabled(qword_100BCE9A8, OS_LOG_TYPE_ERROR))
  {
    sub_10086B64C();
  }
}

uint64_t sub_100069664(uint64_t a1, unint64_t a2)
{
  v45[1] = 0;
  v46 = a2;
  v45[0] = 0;
  sub_100007F88(v45, a1 + 64);
  v4 = *(a1 + 16920);
  if (v4)
  {
    v5 = a1 + 16920;
    do
    {
      v6 = *(v4 + 32);
      v7 = v6 >= a2;
      v8 = v6 < a2;
      if (v7)
      {
        v5 = v4;
      }

      v4 = *(v4 + 8 * v8);
    }

    while (v4);
    if (v5 != a1 + 16920 && *(v5 + 32) <= a2)
    {
      v42 = +[NSMutableDictionary dictionary];
      __p[0] = &v46;
      v9 = sub_1000866FC(a1 + 16912, &v46);
      v10 = v9[6];
      if (*(v10 + 72) != *(v10 + 64))
      {
        v41 = +[NSMutableString string];
        v11 = v9[6];
        v12 = *(v11 + 64);
        if (v12 == *(v11 + 72))
        {
          v14 = 0;
          v13 = 0;
        }

        else
        {
          v13 = 0;
          v14 = 0;
          do
          {
            sub_10003B85C(v12, __p);
            if (v44 >= 0)
            {
              v15 = __p;
            }

            else
            {
              v15 = __p[0];
            }

            v16 = [NSString stringWithUTF8String:v15];
            v17 = [NSString stringWithFormat:@"%@ ", v16];
            [v41 appendString:v17];

            if (SHIBYTE(v44) < 0)
            {
              operator delete(__p[0]);
            }

            v19 = *v12;
            v12 += 20;
            v18 = v19;
            if (v19 == 16)
            {
              ++v14;
            }

            if (v18 == 2)
            {
              ++v13;
            }
          }

          while (v12 != *(v9[6] + 72));
        }

        v20 = [NSNumber numberWithUnsignedShort:v14];
        [v42 setObject:v20 forKeyedSubscript:@"NumberOf128bitUUID"];

        v21 = [NSNumber numberWithUnsignedShort:v13];
        [v42 setObject:v21 forKeyedSubscript:@"NumberOf16bitUUID"];

        [v42 setObject:v41 forKeyedSubscript:@"ServiceUUID"];
        v10 = v9[6];
      }

      if (*(v10 + 39) < 0)
      {
        sub_100008904(__p, *(v10 + 16), *(v10 + 24));
      }

      else
      {
        *__p = *(v10 + 16);
        v44 = *(v10 + 32);
      }

      v22 = HIBYTE(v44);
      if (v44 < 0)
      {
        v22 = __p[1];
      }

      v23 = [NSNumber numberWithBool:v22 != 0];
      [v42 setObject:v23 forKeyedSubscript:@"HasName"];

      if (SHIBYTE(v44) < 0)
      {
        operator delete(__p[0]);
      }

      v24 = [NSNumber numberWithBool:*(v9[6] + 337)];
      [v42 setObject:v24 forKeyedSubscript:@"AppInForegroundAtStart"];

      v25 = [NSNumber numberWithUnsignedLongLong:sub_1000269D4() - *(v9[6] + 400)];
      [v42 setObject:v25 forKeyedSubscript:@"DurationInMS"];

      v26 = [NSNumber numberWithBool:*(*(v5 + 48) + 408)];
      [v42 setObject:v26 forKeyedSubscript:@"SupportsBackgrounding"];

      v27 = [NSNumber numberWithUnsignedInt:*(v46 + 140)];
      [v42 setObject:v27 forKeyedSubscript:@"ClientType"];

      if (qword_100B512F8 != -1)
      {
        sub_10086ACE4();
      }

      if (sub_100026F14(off_100B512F0, v46))
      {
        if (qword_100B512F8 != -1)
        {
          sub_10086ACE4();
        }

        v28 = sub_100024BEC(off_100B512F0, v46);
      }

      else
      {
        v28 = 0;
      }

      v29 = [NSNumber numberWithBool:v28];
      [v42 setObject:v29 forKeyedSubscript:@"SupportsStateRestoration"];

      if (qword_100B512F8 != -1)
      {
        sub_10086ACE4();
      }

      if (sub_100026F14(off_100B512F0, v46))
      {
        if (qword_100B512F8 != -1)
        {
          sub_10086ACE4();
        }

        v30 = sub_10006E254(off_100B512F0, v46) == 16;
      }

      else
      {
        v30 = 0;
      }

      v31 = [NSNumber numberWithBool:v30];
      [v42 setObject:v31 forKeyedSubscript:@"AppInForegroundAtStop"];

      __p[0] = 0;
      __p[1] = 0;
      v44 = 0;
      sub_100068968(__p, (*(v5 + 48) + 416));
      v32 = __p[0];
      if (__p[0] != &__p[1])
      {
        do
        {
          v33 = v32 + 4;
          if (*(v32 + 55) < 0)
          {
            v33 = *v33;
          }

          v34 = [NSString stringWithUTF8String:v33];
          [v42 setObject:v34 forKeyedSubscript:@"BundleID"];

          v35 = qword_100BCE9A8;
          if (os_log_type_enabled(qword_100BCE9A8, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v48 = v42;
            _os_log_debug_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEBUG, "Sending LEAdvSession :%@", buf, 0xCu);
          }

          v36 = sub_10000F034();
          (*(*v36 + 336))(v36, v42);
          v37 = v32[1];
          if (v37)
          {
            do
            {
              v38 = v37;
              v37 = *v37;
            }

            while (v37);
          }

          else
          {
            do
            {
              v38 = v32[2];
              v39 = *v38 == v32;
              v32 = v38;
            }

            while (!v39);
          }

          v32 = v38;
        }

        while (v38 != &__p[1]);
      }

      sub_10004B61C(__p, __p[1]);
    }
  }

  return sub_1000088CC(v45);
}

uint64_t sub_100069EA4(uint64_t a1)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 40) = 0;
  *(a1 + 32) = a1 + 40;
  *(a1 + 48) = 0;
  *a1 = 0;
  *(a1 + 88) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 148) = 0;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 131) = 0u;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  *(a1 + 163) = 1;
  *(a1 + 248) = 0u;
  *(a1 + 174) = 0;
  *(a1 + 170) = 0;
  *(a1 + 192) = 0;
  *(a1 + 176) = 0;
  *(a1 + 184) = 0;
  *(a1 + 208) = 0;
  *(a1 + 216) = 0;
  *(a1 + 200) = 0;
  *(a1 + 224) = 0;
  *(a1 + 228) = 0;
  *(a1 + 236) = 0;
  *(a1 + 237) = 257;
  *(a1 + 239) = 0;
  *(a1 + 243) = 8;
  *(a1 + 320) = 0;
  *(a1 + 264) = 0u;
  *(a1 + 280) = 0u;
  *(a1 + 296) = 0u;
  *(a1 + 312) = 0;
  *(a1 + 321) = 1;
  *(a1 + 322) = 0;
  *(a1 + 326) = 1;
  *(a1 + 336) = 0;
  *(a1 + 327) = 0;
  *(a1 + 344) = 0;
  *(a1 + 352) = 0;
  *(a1 + 359) = 0;
  *(a1 + 367) = 1;
  *(a1 + 368) = 0;
  *(a1 + 440) = 0;
  *(a1 + 448) = 0;
  *(a1 + 376) = 0u;
  *(a1 + 392) = 0u;
  *(a1 + 408) = 0u;
  *(a1 + 424) = 0;
  *(a1 + 432) = a1 + 440;
  *(a1 + 456) = 1;
  *(a1 + 464) = 0;
  *(a1 + 472) = 0;
  *(a1 + 488) = 0;
  *(a1 + 480) = 0;
  *(a1 + 560) = 0;
  *(a1 + 544) = 0u;
  *(a1 + 528) = 0u;
  *(a1 + 512) = 0u;
  *(a1 + 496) = 0u;
  v2 = +[NSMutableArray array];
  v3 = *(a1 + 112);
  *(a1 + 112) = v2;

  *(a1 + 4) = 0;
  v4 = +[NSSet set];
  v5 = *(a1 + 176);
  *(a1 + 176) = v4;

  return a1;
}

void sub_10006A03C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  v16 = v12;
  a10 = v16;
  sub_1000161FC(&a10);
  v18 = *(v10 + 520);
  if (v18)
  {
    *(v10 + 528) = v18;
    operator delete(v18);
  }

  v19 = *(v15 + 248);
  if (v19)
  {
    *(v10 + 504) = v19;
    operator delete(v19);
  }

  sub_100138880(v15 + 72);

  sub_100018458(&a10);
  sub_10003B78C(&a10);

  v20 = *(v10 + 56);
  if (v20)
  {
    *(v10 + 64) = v20;
    operator delete(v20);
  }

  sub_10000CEDC(v11, *v14);
  v21 = *v13;
  if (*v13)
  {
    *(v10 + 16) = v21;
    operator delete(v21);
  }

  _Unwind_Resume(a1);
}

void sub_10006A0FC(int8x16_t *a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  *a4 = a2;
  switch(a2)
  {
    case 0x10:
      if (a3 == 1)
      {
        v8 = vrev64q_s8(*a1);
        v9 = vextq_s8(v8, v8, 8uLL);
      }

      else
      {
        v9 = *a1;
      }

      *(a4 + 4) = v9;
      break;
    case 4:
      if (a3 == 1)
      {
        v7 = a1->i32[0];
      }

      else
      {
        v7 = bswap32(a1->i32[0]);
      }

      *(a4 + 4) = v7;
      break;
    case 2:
      if (a3 == 1)
      {
        LOWORD(v6) = a1->i16[0];
      }

      else
      {
        v6 = bswap32(a1->u16[0]) >> 16;
      }

      *(a4 + 4) = v6;
      break;
    default:
      if (sub_10000C240())
      {
        sub_10000AF54("Invalid UUID length of %d when converting to LE_UUID", v10, v11, v12, v13, v14, v15, v16, a2);
        v17 = sub_10000C050(0x42u);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          sub_1000E09C0();
        }
      }

      *a4 = 16;
      break;
  }
}

void sub_10006B60C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, void *a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, id a45, uint64_t a46, char a47)
{
  _Block_object_dispose(&a37, 8);

  _Block_object_dispose(&a47, 8);
  _Unwind_Resume(a1);
}

void sub_10006BDFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, char a60)
{
  _Block_object_dispose(&a60, 8);

  _Unwind_Resume(a1);
}

void sub_10006C89C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29, void *__p, uint64_t a31)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10006C96C(uint64_t a1, __int16 a2)
{
  v4 = a2;
  sub_10006A0FC(&v4, 2, 1, &v5);
  *a1 = v5;
  *(a1 + 16) = v6;
  return a1;
}

BOOL sub_10006C9EC(uint64_t a1)
{
  if (!(*(*a1 + 8))(a1))
  {
    return 0;
  }

  v7 = 0;
  sub_100007E30(v5, "Scan");
  sub_100007E30(__p, "DisableRssiFilter");
  (*(*a1 + 72))(a1, v5, __p, &v7);
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  if (v6 < 0)
  {
    operator delete(v5[0]);
  }

  return (v7 & 1) != 0;
}

void sub_10006CAC8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

uint64_t sub_10006CAFC(uint64_t a1, uint64_t *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 5);
  v3 = v2 + 1;
  if (v2 + 1 > 0x2AAAAAAAAAAAAAALL)
  {
    sub_1000C7698();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 5) > v3)
  {
    v3 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 5);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 5) >= 0x155555555555555)
  {
    v6 = 0x2AAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  v16 = a1;
  if (v6)
  {
    sub_10006D780(a1, v6);
  }

  v13 = 0;
  v14 = 96 * v2;
  sub_100032A04(a1, 96 * v2, a2);
  v15 = 96 * v2 + 96;
  v7 = *(a1 + 8);
  v8 = 96 * v2 + *a1 - v7;
  sub_10006CC64(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = *(a1 + 16);
  v12 = v15;
  *(a1 + 8) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  sub_10006CC30(&v13);
  return v12;
}

void sub_10006CC1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_10006CC30(va);
  _Unwind_Resume(a1);
}

void **sub_10006CC30(void **a1)
{
  sub_10006CCEC(a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_10006CC64(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v8 = a2;
    do
    {
      sub_100032A04(a1, a4, v8);
      v8 += 12;
      a4 += 96;
    }

    while (v8 != a3);
    while (v6 != a3)
    {
      sub_1000326E8(a1, v6);
      v6 += 96;
    }
  }
}

void sub_10006CCEC(void *a1)
{
  v2 = a1[1];
  for (i = a1[2]; i != v2; i = a1[2])
  {
    v4 = a1[4];
    a1[2] = i - 96;
    sub_1000326E8(v4, i - 96);
  }
}

uint64_t sub_10006CD34(uint64_t a1)
{
  result = sub_10006CDA4(a1);
  if (result)
  {
    v3 = *(*a1 + 2848);

    return v3(a1);
  }

  return result;
}

uint64_t sub_10006CDA4(uint64_t a1)
{
  v1 = 1;
  if ((*(a1 + 800) - 3000) >= 0x3E8)
  {
    v2 = sub_1000271F0();
    v3 = v2 - 210;
    if ((v3 > 0x20 || v3 == 18) && (v2 > 0x39 || ((1 << v2) & 0x2E7FFDFE0700000) == 0) && (v2 - 158 > 0x2F || ((1 << (v2 + 98)) & 0xF00000041801) == 0))
    {
      return 0;
    }
  }

  return v1;
}

BOOL sub_10006CE48(uint64_t a1)
{
  v1 = *(a1 + 800);
  if (v1)
  {
    if (v1 > 0x7CF)
    {
      if (v1 - 3000 < 0x3E8)
      {
        return 1;
      }
    }

    else if (v1 > 0x12)
    {
      return 1;
    }
  }

  v2 = 1;
  v3 = sub_1000271F0();
  if ((v3 - 169) > 0x3A || ((1 << (v3 + 87)) & 0x7FE1E1E00000083) == 0)
  {
    return (v3 - 230) < 0xD;
  }

  return v2;
}

uint64_t sub_10006CED0(uint64_t a1)
{
  if (!MGGetBoolAnswer() || !sub_10006CDA4(a1))
  {
    return 0;
  }

  v2 = *(*a1 + 2848);

  return v2(a1);
}

uint64_t sub_10006D480(uint64_t a1)
{
  if ((*(*a1 + 2736))(a1) & 1) != 0 || ((*(*a1 + 2744))(a1))
  {
    return 1;
  }

  v3 = *(*a1 + 2760);

  return v3(a1);
}

void sub_10006D734(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x2AAAAAAAAAAAAABLL)
  {
    sub_10006D780(a1, a2);
  }

  sub_1000C7698();
}

void sub_10006D780(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x2AAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_1000C7698();
}

uint64_t sub_10006D7D8(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_10006D734(result, a4);
  }

  return result;
}

uint64_t sub_10006D850(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v4 = *(a2 + 24);
  *(a1 + 16) = &off_100AE0A78;
  *(a1 + 24) = v4;
  if (v4)
  {
    sub_10000C69C(v4);
  }

  v5 = *(a2 + 40);
  *(a1 + 32) = &off_100AE0A78;
  *(a1 + 40) = v5;
  if (v5)
  {
    sub_10000C69C(v5);
  }

  v6 = *(a2 + 48);
  *(a1 + 52) = *(a2 + 52);
  *(a1 + 48) = v6;
  *(a1 + 56) = *(a2 + 56);
  v7 = *(a2 + 64);
  *(a1 + 68) = *(a2 + 68);
  *(a1 + 64) = v7;
  *(a1 + 72) = *(a2 + 72);
  v8 = *(a2 + 88);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = v8;
  return a1;
}

void sub_10006D938(_Unwind_Exception *a1)
{
  *(v1 + 16) = v2;
  v4 = *(v1 + 24);
  if (v4)
  {
    sub_10000C808(v4);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10006DC08()
{

  return LogPrintF_safe();
}

void sub_10006DC24(void *a1, int a2, os_log_t log, const char *a4, uint8_t *a5)
{

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, a5, 8u);
}

void sub_10006DC40(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_impl(a1, v9, OS_LOG_TYPE_DEFAULT, a4, &a9, 0xCu);
}

void sub_10006DC7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);

  bzero(va, 0xA8uLL);
}

void sub_10006DCBC(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

_BYTE *sub_10006DD30(_BYTE *result, _BYTE *a2)
{
  *result = 0;
  *a2 = 0;
  return result;
}

void sub_10006DD84(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

void sub_10006DDE4(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0x12u);
}

void *sub_10006DE00(void *result, uint64_t a2, uint64_t a3, float a4)
{
  if (v4 >= 0)
  {
    v5 = result;
  }

  else
  {
    v5 = *result;
  }

  *a3 = a4;
  *(a3 + 4) = v5;
  *(a3 + 12) = 2114;
  *(a3 + 14) = a2;
  return result;
}

void *sub_10006DEA0(void *result, uint64_t a2, int a3, float a4)
{
  if (v4 >= 0)
  {
    v5 = result;
  }

  else
  {
    v5 = *result;
  }

  *a2 = a4;
  *(a2 + 4) = v5;
  *(a2 + 12) = 1024;
  *(a2 + 14) = a3;
  return result;
}

void sub_10006DEC4(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

void *sub_10006DF00(void *result, uint64_t a2, int a3, float a4)
{
  if (v4 >= 0)
  {
    v5 = result;
  }

  else
  {
    v5 = *result;
  }

  *a2 = a4;
  *(a2 + 4) = a3;
  *(a2 + 8) = 2082;
  *(a2 + 10) = v5;
  return result;
}

uint64_t sub_10006DF24(uint64_t result, void *a2, uint64_t a3, float a4)
{
  if (v4 >= 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = *a2;
  }

  *a3 = a4;
  *(a3 + 4) = result;
  *(a3 + 12) = 2082;
  *(a3 + 14) = v5;
  return result;
}

void sub_10006DF48(uint64_t a1@<X1>, uint64_t a2@<X8>, float a3@<S0>)
{
  *a1 = a3;
  *(a1 + 4) = 1752392040;
  *(a1 + 12) = 2081;
  *(a1 + 14) = a2;
}

void *sub_10006DF68(void *result, uint64_t a2, uint64_t a3, float a4)
{
  if (v4 >= 0)
  {
    v5 = result;
  }

  else
  {
    v5 = *result;
  }

  *a3 = a4;
  *(a3 + 4) = v5;
  *(a3 + 12) = 2112;
  *(a3 + 14) = a2;
  return result;
}

void sub_10006DF8C(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

uint64_t sub_10006DFE4(uint64_t result, uint64_t a2, uint64_t a3, float a4)
{
  *a3 = a4;
  *(a3 + 4) = 1752392040;
  *(a3 + 12) = 2081;
  *(a3 + 14) = result;
  *(a3 + 22) = 2112;
  *(a3 + 24) = a2;
  return result;
}

id sub_10006E0B8(id a1, NSNumber *a2)
{
  v2 = a2;
  if ([(NSNumber *)v2 integerValue]<= 0)
  {
    v3 = 0;
  }

  else
  {
    v3 = v2;
  }

  v4 = v3;

  return v3;
}

uint64_t sub_10006E108(uint64_t a1, __int128 *a2)
{
  v2 = 0x6DB6DB6DB6DB6DB7 * ((*(a1 + 8) - *a1) >> 4);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x249249249249249)
  {
    sub_1000C7698();
  }

  if (0xDB6DB6DB6DB6DB6ELL * ((*(a1 + 16) - *a1) >> 4) > v3)
  {
    v3 = 0xDB6DB6DB6DB6DB6ELL * ((*(a1 + 16) - *a1) >> 4);
  }

  if ((0x6DB6DB6DB6DB6DB7 * ((*(a1 + 16) - *a1) >> 4)) >= 0x124924924924924)
  {
    v6 = 0x249249249249249;
  }

  else
  {
    v6 = v3;
  }

  v16 = a1;
  if (v6)
  {
    sub_100056138(a1, v6);
  }

  v13 = 0;
  v14 = 112 * v2;
  sub_100018288(a1, 112 * v2, a2);
  v15 = (112 * v2 + 112);
  v7 = *(a1 + 8);
  v8 = 112 * v2 + *a1 - v7;
  sub_1000561C8(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = *(a1 + 16);
  v12 = v15;
  *(a1 + 8) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  sub_100056194(&v13);
  return v12;
}

void sub_10006E240(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_100056194(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10006E254(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 232);
  v2 = a1 + 232;
  v3 = v4;
  if (!v4)
  {
    return 1;
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
    return *(*(v5 + 40) + 129);
  }

  else
  {
    return 1;
  }
}

uint64_t sub_10006E2A0(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v18 = a2;
  if (!*(a1 + 1984))
  {
    return 105;
  }

  if (!sub_100070568(a1, a2))
  {
    v15 = a3;
    if (qword_100B512F8 != -1)
    {
      sub_100874358();
    }

    sub_100070518(off_100B512F0, a2);
    memset(v17, 0, sizeof(v17));
    sub_10000CB74(v17, (a3 + 8));
    memset(v16, 0, sizeof(v16));
    sub_10000CA3C(v16, a3 + 32);
    if (qword_100B512F8 != -1)
    {
      sub_1008756B8();
    }

    sub_10006E254(off_100B512F0, v18);
    v10 = *(a3 + 176);
    v11 = [v10 count] == 0;

    if (v11)
    {
      v12 = [NSSet setWithObject:@"com.apple.bluetooth"];
      objc_storeStrong((v15 + 176), v12);
    }

      ;
    }

    operator new();
  }

  v6 = qword_100BCE918;
  v7 = 0;
  if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
  {
    sub_100018384(a2, __p);
    if ((SBYTE7(v20) & 0x80u) == 0)
    {
      v8 = __p;
    }

    else
    {
      v8 = __p[0];
    }

    v9 = *(a1 + 2192);
    buf[0] = 136446466;
    *&buf[1] = v8;
    v22 = 1024;
    v23 = v9;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Rejecting the custom Scan for %{public}s for list type %d", buf, 0x12u);
    if (SBYTE7(v20) < 0)
    {
      operator delete(__p[0]);
    }

    return 0;
  }

  return v7;
}

void sub_10006FDBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, char a48, uint64_t a49, uint64_t a50, void *a51, uint64_t a52)
{
  if (SLOBYTE(STACK[0x347]) < 0)
  {
    operator delete(STACK[0x330]);
  }

  sub_10000CEDC(&a48, a49);
  if (a51)
  {
    a52 = a51;
    operator delete(a51);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10006FFC0(uint64_t a1, __int128 *a2, char a3, uint64_t a4, char a5, char a6)
{
  *a1 = 2;
  v11 = a1 + 8;
  if (*(a2 + 23) < 0)
  {
    sub_100008904(v11, *a2, *(a2 + 1));
  }

  else
  {
    v12 = *a2;
    *(v11 + 16) = *(a2 + 2);
    *v11 = v12;
  }

  *(a1 + 32) = a3;
  *(a1 + 40) = a4;
  *(a1 + 48) = a5;
  *(a1 + 49) = a6;
  return a1;
}

uint64_t sub_100070048(uint64_t a1, uint64_t *a2, int a3)
{
  v3 = *(a2 + 23);
  if ((v3 & 0x8000000000000000) != 0)
  {
    v3 = a2[1];
    if (!v3)
    {
      return 3;
    }

    a2 = *a2;
  }

  else if (!*(a2 + 23))
  {
    return 3;
  }

  if (v3 >= 9)
  {
    v3 = 9;
  }

  v4 = (a2 + v3);
  v5 = a2;
  v6 = v4;
  do
  {
    if (*v5 == 99)
    {
      v7 = &_mh_execute_header.magic + 1;
      while (v7 != 9)
      {
        if ((v5 + v7) == v4)
        {
          return (v6 == v4 || v6 != a2) && a3 != 32;
        }

        v8 = *(v5 + v7);
        v9 = aComApple_0[v7++];
        if (v8 != v9)
        {
          goto LABEL_10;
        }
      }

      v6 = v5;
    }

LABEL_10:
    v5 = (v5 + 1);
  }

  while (v5 != v4);
  return (v6 == v4 || v6 != a2) && a3 != 32;
}

uint64_t sub_1000700F8(uint64_t a1, unint64_t a2)
{
  v2 = *(a2 + 140) - 1;
  if (v2 < 5 && ((0x17u >> v2) & 1) != 0)
  {
    return 1;
  }

  v6 = *(a1 + 232);
  v4 = a1 + 232;
  v5 = v6;
  if (!v6)
  {
    return 0;
  }

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
  if (v7 == v4 || *(v7 + 32) > a2)
  {
    return 0;
  }

  v12 = [*(*(v7 + 40) + 88) lowercaseString];
  v3 = [v12 hasPrefix:@"com.apple."];

  return v3;
}

uint64_t sub_1000701B4(uint64_t a1, uint64_t a2, char a3, char a4, char a5)
{
  *a1 = &off_100B0D770;
  *(a1 + 8) = a2;
  *(a1 + 80) = a3;
  *(a1 + 81) = a4;
  *(a1 + 82) = a5;
  *(a1 + 88) = 0;
  *(a1 + 96) = 1;
  *(a1 + 112) = 0;
  *(a1 + 104) = a1 + 112;
  *(a1 + 120) = 0;
  *(a1 + 128) = a1 + 128;
  *(a1 + 160) = 0;
  *(a1 + 136) = a1 + 128;
  *(a1 + 144) = 0;
  *(a1 + 152) = a1 + 160;
  *(a1 + 168) = 0;
  *(a1 + 176) = 200;
  *(a1 + 178) = 0;
  *(a1 + 200) = 0;
  *(a1 + 192) = 0;
  *(a1 + 184) = a1 + 192;
  *(a1 + 208) = 3;
  *(a1 + 224) = 257;
  *(a1 + 232) = 0;
  *(a1 + 240) = 0;
  *(a1 + 248) = 0;
  v6 = sub_10000C798();
  if ((*(*v6 + 416))(v6))
  {
    *(a1 + 96) = 3;
  }

  v16 = 0;
  v7 = sub_10000E92C();
  sub_100007E30(buf, "LESCAN");
  sub_100007E30(__p, "MaxReportsInMap");
  v8 = (*(*v7 + 88))(v7, buf, __p, &v16);
  if (v16 > 0)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  if (v15 < 0)
  {
    operator delete(__p[0]);
  }

  if (v18 < 0)
  {
    operator delete(*buf);
  }

  v10 = qword_100BCE918;
  if (v9)
  {
    v11 = os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT);
    v12 = v16;
    if (v11)
    {
      *buf = 67109120;
      *&buf[4] = v16;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Warning: Using override value (%d) for max number of ADV reports in map", buf, 8u);
      v12 = v16;
      v10 = qword_100BCE918;
    }

    *(a1 + 176) = v12;
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    sub_100877788(v10);
  }

  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 216) = sub_1000269D4();
  *(a1 + 64) = *(a1 + 81) == 16;
  return a1;
}

uint64_t sub_1000704C8(uint64_t a1, unint64_t a2)
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
    v9 = *(*(v5 + 40) + 25);
  }

  else
  {
LABEL_9:
    v9 = 0;
  }

  return v9 & 1;
}

uint64_t sub_100070518(uint64_t a1, unint64_t a2)
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
    v9 = *(*(v5 + 40) + 24);
  }

  else
  {
LABEL_9:
    v9 = 0;
  }

  return v9 & 1;
}

uint64_t sub_100070568(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v3 = *(a1 + 2192);
  if (v3 != 2)
  {
    if (v3 == 1)
    {
      v4 = *(a1 + 2200);
      v43 = *(a1 + 2208);
      if (v4 == v43)
      {
        v39 = 1;
        return v39 & 1;
      }

      v5 = 0;
      while (1)
      {
        __p[1] = 0;
        v49 = 0;
        __p[0] = 0;
        if (*(v4 + 23) < 0)
        {
          sub_100008904(__p, *v4, *(v4 + 1));
        }

        else
        {
          v6 = *v4;
          v49 = *(v4 + 2);
          *__p = v6;
        }

        sub_100018384(v2, &v45);
        v7 = v47;
        v8 = v47;
        v9 = v45;
        if ((v47 & 0x80u) == 0)
        {
          v10 = &v45;
        }

        else
        {
          v10 = v45;
        }

        if ((v47 & 0x80u) != 0)
        {
          v7 = v46;
        }

        v11 = HIBYTE(v49);
        if (v49 >= 0)
        {
          v12 = __p;
        }

        else
        {
          v12 = __p[0];
        }

        if (v49 >= 0)
        {
          v13 = HIBYTE(v49);
        }

        else
        {
          v13 = __p[1];
        }

        if (v13)
        {
          v14 = v10 + v7;
          if (v7 >= v13)
          {
            v41 = v45;
            v17 = *v12;
            v18 = v10;
            do
            {
              v19 = v7 - v13;
              if (v19 == -1)
              {
                break;
              }

              v20 = memchr(v18, v17, v19 + 1);
              if (!v20)
              {
                break;
              }

              v15 = v20;
              if (!memcmp(v20, v12, v13))
              {
                goto LABEL_30;
              }

              v18 = (v15 + 1);
              v7 = v14 - (v15 + 1);
            }

            while (v7 >= v13);
            v15 = v14;
LABEL_30:
            v9 = v41;
            v2 = a2;
          }

          else
          {
            v15 = v10 + v7;
          }

          v16 = v15 != v14 && v15 - v10 != -1;
          if ((v8 & 0x80000000) == 0)
          {
LABEL_38:
            if (v11 < 0)
            {
              goto LABEL_42;
            }

            goto LABEL_39;
          }
        }

        else
        {
          v16 = 1;
          if ((v47 & 0x80000000) == 0)
          {
            goto LABEL_38;
          }
        }

        operator delete(v9);
        if (v49 < 0)
        {
LABEL_42:
          operator delete(__p[0]);
        }

LABEL_39:
        v5 |= v16;
        v4 = (v4 + 24);
        if (v4 == v43)
        {
          v39 = v5 ^ 1;
          return v39 & 1;
        }
      }
    }

LABEL_85:
    v39 = 0;
    return v39 & 1;
  }

  v22 = *(a1 + 2200);
  v44 = *(a1 + 2208);
  if (v22 == v44)
  {
    goto LABEL_85;
  }

  do
  {
    __p[1] = 0;
    v49 = 0;
    __p[0] = 0;
    if (*(v22 + 23) < 0)
    {
      sub_100008904(__p, *v22, *(v22 + 1));
    }

    else
    {
      v23 = *v22;
      v49 = *(v22 + 2);
      *__p = v23;
    }

    sub_100018384(v2, &v45);
    v24 = v47;
    v25 = v47;
    v26 = v45;
    if ((v47 & 0x80u) == 0)
    {
      v27 = &v45;
    }

    else
    {
      v27 = v45;
    }

    if ((v47 & 0x80u) != 0)
    {
      v24 = v46;
    }

    v28 = HIBYTE(v49);
    if (v49 >= 0)
    {
      v29 = __p;
    }

    else
    {
      v29 = __p[0];
    }

    if (v49 >= 0)
    {
      v30 = HIBYTE(v49);
    }

    else
    {
      v30 = __p[1];
    }

    if (v30)
    {
      v31 = v27 + v24;
      if (v24 >= v30)
      {
        v33 = *v29;
        v34 = v27;
        do
        {
          v35 = v24 - v30;
          if (v35 == -1)
          {
            break;
          }

          v36 = memchr(v34, v33, v35 + 1);
          if (!v36)
          {
            break;
          }

          v32 = v36;
          if (!memcmp(v36, v29, v30))
          {
            goto LABEL_69;
          }

          v34 = (v32 + 1);
          v24 = v31 - (v32 + 1);
        }

        while (v24 >= v30);
        v32 = v31;
LABEL_69:
        v2 = a2;
      }

      else
      {
        v32 = v27 + v24;
      }

      v39 = v32 != v31 && v32 - v27 != -1;
      if (v25 < 0)
      {
LABEL_83:
        operator delete(v26);
        if ((v49 & 0x8000000000000000) == 0)
        {
          goto LABEL_78;
        }

        goto LABEL_84;
      }
    }

    else
    {
      v39 = 1;
      if (v47 < 0)
      {
        goto LABEL_83;
      }
    }

    if ((v28 & 0x80) == 0)
    {
      goto LABEL_78;
    }

LABEL_84:
    operator delete(__p[0]);
LABEL_78:
    v22 = (v22 + 24);
    if (v22 == v44)
    {
      v38 = 1;
    }

    else
    {
      v38 = v39;
    }
  }

  while ((v38 & 1) == 0);
  return v39 & 1;
}

void sub_10007086C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10007088C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_10000C798();
  if (((*(*v4 + 416))(v4) & 1) == 0)
  {
    v5 = *(a3 + 8);
    if (!*(v5 + 161))
    {
      if (*(v5 + 172) != 1)
      {
        operator new();
      }

      v6 = qword_100BCEA38;
      if (os_log_type_enabled(qword_100BCEA38, OS_LOG_TYPE_INFO))
      {
        *v7 = 0;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "ExposureNotification client does not have a decay timer", v7, 2u);
      }
    }
  }
}

void sub_1000709DC(void *a1, NSObject *a2)
{
  v4 = dispatch_time(0, 1000000 * a1[2]);
  v5 = (*(*a1 + 32))(a1);

  dispatch_after_f(v4, a2, a1, v5);
}

BOOL sub_100070A6C(uint64_t a1, _BYTE *a2)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    (*(*a2 + 24))(a2, v2);
  }

  else if (a2 && (a2[8] & 1) != 0)
  {
    (*(*a2 + 8))(a2);
  }

  return v2 != 0;
}

uint64_t sub_100070B10(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1[328] != 1)
  {
    v3 = *(a1 + 81);
    if (v3 != 16)
    {
      if (v3 != 32)
      {
        goto LABEL_10;
      }

      if (v1[1] == 1 && v1[144] == 1)
      {
        v2 = v1[160];
        return v2 & 1;
      }
    }

    if (*(a1 + 96) < 4)
    {
      v2 = 1;
      return v2 & 1;
    }

LABEL_10:
    v2 = 0;
    return v2 & 1;
  }

  v2 = v1[323];
  return v2 & 1;
}

id sub_1000711A0(id a1, NSNumber *a2)
{
  v2 = a2;
  if ([(NSNumber *)v2 integerValue]<= 0)
  {
    v3 = 0;
  }

  else
  {
    v3 = v2;
  }

  v4 = v3;

  return v3;
}

void sub_1000711F8(uint64_t a1)
{
  dispatch_assert_queue_V2(*a1);
  if (os_log_type_enabled(qword_100BCEA60, OS_LOG_TYPE_DEBUG))
  {
    sub_100844310();
  }

  if (*(a1 + 56) != *(a1 + 24))
  {
    sub_10057174C(a1);
  }

  v2 = *a1;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000712BC;
  block[3] = &unk_100ADF8F8;
  block[4] = a1;
  dispatch_async(v2, block);
}

uint64_t sub_1000712BC(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (os_log_type_enabled(qword_100BCEA60, OS_LOG_TYPE_DEBUG))
  {
    sub_100844350();
  }

  *(v1 + 56) = 0;
  sub_1000713C0((v1 + 32), *(v1 + 8), (v1 + 16));
  return sub_100071524(v1);
}

uint64_t **sub_1000713C0(uint64_t **result, void *a2, void *a3)
{
  v5 = result;
  if (result[2])
  {
    v6 = *result;
    v7 = result[1];
    *result = (result + 1);
    v7[2] = 0;
    result[1] = 0;
    result[2] = 0;
    if (v6[1])
    {
      v8 = v6[1];
    }

    else
    {
      v8 = v6;
    }

    v12 = result;
    v13 = v8;
    v14 = v8;
    if (v8)
    {
      v13 = sub_100083B10(v8);
      if (a2 != a3)
      {
        v9 = a2;
        do
        {
          v8[4] = v9[4];
          sub_10039D604(v5, v8);
          v8 = v13;
          v14 = v13;
          if (v13)
          {
            v13 = sub_100083B10(v13);
          }

          v10 = v9[1];
          if (v10)
          {
            do
            {
              a2 = v10;
              v10 = *v10;
            }

            while (v10);
          }

          else
          {
            do
            {
              a2 = v9[2];
              v11 = *a2 == v9;
              v9 = a2;
            }

            while (!v11);
          }

          if (!v8)
          {
            break;
          }

          v9 = a2;
        }

        while (a2 != a3);
      }
    }

    result = sub_100084E60(&v12);
  }

  if (a2 != a3)
  {
    sub_100071320();
  }

  return result;
}

void sub_100071510(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100084E60(va);
  _Unwind_Resume(a1);
}

void sub_100071524(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = (a1 + 16);
  if (v2 != (a1 + 16))
  {
    do
    {
      v4 = v2[4];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100071674;
      block[3] = &unk_100AE0860;
      block[4] = a1;
      block[5] = v4;
      dispatch_async(v4, block);
      v5 = v2[1];
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
          v6 = v2[2];
          v7 = *v6 == v2;
          v2 = v6;
        }

        while (!v7);
      }

      v2 = v6;
    }

    while (v6 != v3);
  }

  v8 = dispatch_time(0, 300000000000);
  v9 = *a1;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000711F0;
  v10[3] = &unk_100ADF8F8;
  v10[4] = a1;
  dispatch_after(v8, v9, v10);
}

void sub_100071674(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = **(a1 + 32);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1000716F0;
  v3[3] = &unk_100AE0860;
  v4 = v1;
  dispatch_async(v2, v3);
}

uint64_t sub_1000716F0(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (os_log_type_enabled(qword_100BCEA60, OS_LOG_TYPE_DEBUG))
  {
    sub_100844290(a1);
  }

  ++*(v2 + 56);
  return sub_100075DC4((v2 + 32), (a1 + 40));
}

void sub_100071760()
{
  v0 = 0;
  v1 = 0;
  v2 = 0;
  sub_1000629E8();
}

void sub_1000717C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, uint64_t a11)
{
  if (__p)
  {
    sub_1001132FC(&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t **sub_1000717E8(uint64_t **result, void *a2, void *a3)
{
  v5 = result;
  if (result[2])
  {
    v6 = *result;
    v7 = result[1];
    *result = (result + 1);
    v7[2] = 0;
    result[1] = 0;
    result[2] = 0;
    if (v6[1])
    {
      v8 = v6[1];
    }

    else
    {
      v8 = v6;
    }

    v13 = result;
    v14 = v8;
    v15 = v8;
    if (v8)
    {
      v14 = sub_100083B10(v8);
      if (a2 != a3)
      {
        v9 = a2;
        do
        {
          std::string::operator=((v8 + 4), (v9 + 4));
          v16 = 0;
          v10 = sub_1000869F8(v5, &v16, v15 + 4);
          sub_10000856C(v5, v16, v10, v15);
          v15 = v14;
          if (v14)
          {
            v14 = sub_100083B10(v14);
          }

          v11 = v9[1];
          if (v11)
          {
            do
            {
              a2 = v11;
              v11 = *v11;
            }

            while (v11);
          }

          else
          {
            do
            {
              a2 = v9[2];
              v12 = *a2 == v9;
              v9 = a2;
            }

            while (!v12);
          }

          v8 = v15;
          if (v15)
          {
            v12 = a2 == a3;
          }

          else
          {
            v12 = 1;
          }

          v9 = a2;
        }

        while (!v12);
      }
    }

    result = sub_1001132A4(&v13);
  }

  if (a2 != a3)
  {
    sub_100071760();
  }

  return result;
}

uint64_t sub_100071970(uint64_t a1, const void **a2)
{
  v4 = 0;
  v2 = *sub_1000867EC(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

id sub_100071A18(uint64_t a1)
{
  [*(a1 + 32) _stopAllAdvertisings];
  if ([*(*(a1 + 32) + 184) count])
  {
    v3 = 0;
    sub_1000216B4(&v3);
    sub_1002D24BC(0);
    sub_100022214(&v3);
    sub_10002249C(&v3);
  }

  return [*(a1 + 32) _tearDownStackSessions];
}

void sub_100072144(uint64_t a1, void (*a2)(uint64_t, uint64_t, uint64_t, uint64_t), uint64_t *a3)
{
  if (!a1)
  {
    if (*(a3 + 15))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
    }

    else
    {
      v16 = *(a3 + 5);
      v17 = *(a3 + 6);
      if (v16 > v17)
      {
        if (*(a3 + 14) == 1)
        {
          v18 = *a3;
          *(a3 + 6) = v17 + 1;
          if (v16 <= v17 + 1)
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 110, "ByteStream_NumReadBytesAvail(*pBs) >= 1");
          }

          v15 = *(v18 + v17);
          *(a3 + 6) = v17 + 2;
          if (v16 <= v17 + 2)
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 111, "ByteStream_NumReadBytesAvail(*pBs) >= 1");
          }

          v14 = *(v18 + v17 + 1);
          *(a3 + 6) = v17 + 3;
          v13 = *(v18 + v17 + 2);
          if (a2)
          {
            goto LABEL_6;
          }

          return;
        }

        v19 = "(*pBs).__RWFlag == BYTESTREAM_READ";
LABEL_18:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 109, v19);
      }
    }

    v19 = "ByteStream_NumReadBytesAvail(*pBs) >= 1";
    goto LABEL_18;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("status %d,  Byte 0x%x, Byte1 0x%x, Byte2 0x%x, hlCb 0x%x", v5, v6, v7, v8, v9, v10, v11, a1);
    v12 = sub_10000C050(0x54u);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }

  v13 = 0;
  v14 = 0;
  v15 = 0;
  if (a2)
  {
LABEL_6:
    a2(a1, v15, v14, v13);
  }
}

uint64_t sub_1000722BC(int a1, char a2, char a3, char a4)
{
  LOBYTE(xmmword_100B6D420) = a2;
  BYTE1(xmmword_100B6D420) = a3;
  v6 = *sub_10000C7D0();
  if ((*(v6 + 4152))())
  {
    BYTE2(xmmword_100B6D420) = a4;
  }

  if (qword_100B50AA0 != -1)
  {
    sub_100093618();
  }

  return sub_100022748(a1, 0xFCu);
}

uint64_t sub_10007236C(uint64_t a1)
{
  result = (*(**(a1 + 32) + 752))(*(a1 + 32), 1);
  **(a1 + 40) = BYTE2(xmmword_100B6D420);
  return result;
}

uint64_t sub_1000723D0()
{
  if (qword_100B6E328 != -1)
  {
    sub_1008312B0();
  }

  return byte_100B6E320;
}

void sub_100072408(uint64_t a1)
{
  v123 = *(a1 + 32);
  if (*(v123 + 2280) == 1)
  {
    v2 = sub_10000C7D0();
    v106 = (*(*v2 + 3304))(v2);
  }

  else
  {
    v106 = 0;
  }

  if ([*(v123 + 4408) count] && *(a1 + 40) == 1)
  {
    if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEBUG))
    {
      sub_100877304();
    }

    v136 = 0u;
    v137 = 0u;
    v134 = 0u;
    v135 = 0u;
    obj = *(v123 + 4408);
    v3 = [obj countByEnumeratingWithState:&v134 objects:v144 count:16];
    if (v3)
    {
      v4 = *v135;
LABEL_10:
      v5 = 0;
      while (1)
      {
        if (*v135 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v134 + 1) + 8 * v5);
        v7 = sub_10000C7D0();
        v8 = v6;
        if ((*(*v7 + 600))(v7, [v6 bytes], objc_msgSend(v6, "length"), 240))
        {
          break;
        }

        if (v3 == ++v5)
        {
          v3 = [obj countByEnumeratingWithState:&v134 objects:v144 count:16];
          if (v3)
          {
            goto LABEL_10;
          }

          break;
        }
      }
    }

    v9 = sub_10000C7D0();
    (*(*v9 + 624))(v9, 1);
    v10 = 1;
  }

  else
  {
    v10 = 0;
  }

  if (*(v123 + 4352))
  {
    if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEBUG))
    {
      sub_100877378();
    }

    if (v106)
    {
      v11 = malloc_type_malloc(8 * *(v123 + 4352), 0x100004000313F17uLL);
    }

    else
    {
      v11 = 0;
    }

    v12 = *(v123 + 4336);
    if (v12 != (v123 + 4344))
    {
      v13 = 0;
      if (v11)
      {
        v14 = v106;
      }

      else
      {
        v14 = 0;
      }

      do
      {
        if (v14)
        {
          v11[v13++] = v12[4];
        }

        else
        {
          v15 = sub_10000C7D0();
          (*(*v15 + 760))(v15, v12[4]);
        }

        v16 = v12[1];
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
            v17 = v12[2];
            v18 = *v17 == v12;
            v12 = v17;
          }

          while (!v18);
        }

        v12 = v17;
      }

      while (v17 != (v123 + 4344));
    }

    v19 = v106;
    if (!v11)
    {
      v19 = 0;
    }

    if (v19 == 1)
    {
      v20 = *(v123 + 4352);
      if (v20)
      {
        v21 = 0;
        v22 = 0;
        do
        {
          v23 = v20 - v22;
          if (v23 >= 25)
          {
            v24 = 25;
          }

          else
          {
            v24 = v23;
          }

          v25 = sub_10000C7D0();
          (*(*v25 + 784))(v25, v24, &v11[v21]);
          v22 += v24;
          v21 = v22;
          v20 = *(v123 + 4352);
        }

        while (v20 > v22);
      }

      free(v11);
    }

    v10 = 1;
  }

  if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEBUG))
  {
    sub_1008773EC();
  }

  if ([*(v123 + 4392) count])
  {
    if (v106)
    {
      v107 = malloc_type_malloc(62 * [*(v123 + 4392) count], 0x1000040A55EBD55uLL);
    }

    else
    {
      v107 = 0;
    }

    v132 = 0u;
    v133 = 0u;
    v130 = 0u;
    v131 = 0u;
    obja = *(v123 + 4392);
    v110 = [obja countByEnumeratingWithState:&v130 objects:v143 count:16];
    if (v110)
    {
      v111 = 0;
      v26 = v106;
      if (!v107)
      {
        v26 = 0;
      }

      v108 = v26;
      v109 = *v131;
LABEL_58:
      v27 = 0;
      while (1)
      {
        if (*v131 != v109)
        {
          objc_enumerationMutation(obja);
        }

        v121 = v27;
        v28 = *(*(&v130 + 1) + 8 * v27);
        memset(buf, 0, sizeof(buf));
        v29 = [v28 objectForKeyedSubscript:@"data"];
        v30 = v29;
        v31 = [v29 bytes];
        v32 = [v28 objectForKeyedSubscript:@"data"];
        sub_10000C704(buf, v31, [v32 length]);

        v140 = 0uLL;
        v33 = [v28 objectForKeyedSubscript:@"mask"];
        v34 = v33;
        v35 = [v33 bytes];
        v36 = [v28 objectForKeyedSubscript:@"mask"];
        sub_10000C704(&v140, v35, [v36 length]);

        v37 = [v28 objectForKeyedSubscript:@"rssi"];
        v119 = [v37 intValue];

        v38 = [v28 objectForKeyedSubscript:@"puckType"];
        v117 = [v38 unsignedIntValue];

        v39 = [v28 objectForKeyedSubscript:@"bypassFilterDuplicate"];
        v115 = [v39 unsignedIntValue];

        v40 = [v28 objectForKeyedSubscript:@"targetCore"];
        v41 = [v40 unsignedIntValue];

        v42 = [v28 objectForKeyedSubscript:@"rssithresholdOrder"];
        v43 = [v42 unsignedIntValue];

        v44 = [v28 objectForKeyedSubscript:@"matchAllDevices"];
        v45 = [v44 unsignedIntValue];

        v46 = [v28 objectForKeyedSubscript:@"address"];
        v47 = [v46 unsignedLongLongValue];

        v48 = [v28 objectForKeyedSubscript:@"report127dBm"];
        v49 = [v48 unsignedIntValue];
        v50 = v49 != 0;

        v51 = [v28 objectForKeyedSubscript:@"report27dBm"];
        v52 = [v51 unsignedIntValue];
        v53 = v52 != 0;

        if (v108)
        {
          v54 = &v107[62 * v111];
          *(v54 + 7) = 0u;
          *(v54 + 55) = 0;
          *(v54 + 39) = 0u;
          *(v54 + 23) = 0u;
          v55 = sub_10000C5F8(&v140);
          if (sub_10000C5E0(&v140) <= 0x19)
          {
            v56 = sub_10000C5E0(&v140);
          }

          else
          {
            v56 = 25;
          }

          memcpy(v54 + 32, v55, v56);
          v63 = sub_10000C5F8(buf);
          if (sub_10000C5E0(buf) <= 0x19)
          {
            v64 = sub_10000C5E0(buf);
          }

          else
          {
            v64 = 25;
          }

          memcpy(v54 + 7, v63, v64);
          *v54 = v45;
          *(v54 + 1) = 0;
          *(v54 + 5) = 0;
          v54[57] = v117;
          v54[58] = v119;
          v54[59] = v115;
          v54[60] = v41;
          v65 = v43 | 2;
          if (v49)
          {
            v65 = v43;
          }

          if (!v52)
          {
            v65 |= 4u;
          }

          v54[61] = v65;
          ++v111;
          v62 = 9;
        }

        else
        {
          v57 = sub_10000C7D0();
          v58 = sub_10000C5F8(buf);
          v59 = sub_10000C5E0(buf);
          v60 = sub_10000C5F8(&v140);
          v61 = sub_10000C5E0(&v140);
          BYTE4(v105) = v53;
          BYTE3(v105) = v50;
          BYTE2(v105) = v43;
          BYTE1(v105) = v41;
          LOBYTE(v105) = v115;
          if ((*(*v57 + 672))(v57, v58, v59, v60, v61, v119, v117, v45, v47, v105))
          {
            if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_ERROR))
            {
              sub_100877460(&v128, v129);
            }

            v62 = 8;
          }

          else
          {
            v62 = 0;
          }
        }

        *&v140 = &off_100AE0A78;
        if (*(&v140 + 1))
        {
          sub_10000C808(*(&v140 + 1));
        }

        *buf = &off_100AE0A78;
        if (*&buf[8])
        {
          sub_10000C808(*&buf[8]);
        }

        if (v62 != 9 && v62)
        {
          break;
        }

        v27 = v121 + 1;
        if (v110 == (v121 + 1))
        {
          v110 = [obja countByEnumeratingWithState:&v130 objects:v143 count:16];
          if (v110)
          {
            goto LABEL_58;
          }

          break;
        }
      }
    }

    if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEBUG))
    {
      sub_100876EC4();
    }

    v66 = sub_10000C7D0();
    (*(*v66 + 744))(v66, *(v123 + 4416));
    v67 = v106;
    if (!v107)
    {
      v67 = 0;
    }

    if (v67 == 1)
    {
      if ([*(v123 + 4392) count])
      {
        v68 = 0;
        v69 = 0;
        do
        {
          if (([*(v123 + 4392) count] - v69) <= 4)
          {
            v70 = [*(v123 + 4392) count] - v69;
          }

          else
          {
            v70 = 4;
          }

          v71 = sub_10000C7D0();
          (*(*v71 + 680))(v71, v70, 25, &v107[62 * v68]);
          v69 += v70;
          v68 = v69;
        }

        while ([*(v123 + 4392) count] > v69);
      }

      free(v107);
    }

    v10 = 1;
  }

  if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEBUG))
  {
    sub_100877494();
  }

  if (*(v123 + 4384) || [*(v123 + 4400) count])
  {
    v72 = sub_10000C7D0();
    (*(*v72 + 392))(v72, 1);
    v73 = *(v123 + 4368);
    v122 = (v123 + 4376);
    if (v73 != (v123 + 4376))
    {
      while (1)
      {
        v74 = sub_10000C798();
        v75 = (*(*v74 + 352))(v74);
        v76 = *(v73 + 48);
        v77 = *(v73 + 49);
        if (v77 >= 0)
        {
          v78 = -87;
        }

        else
        {
          v78 = *(v73 + 49);
        }

        v79 = qword_100BCE918;
        if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_INFO))
        {
          *buf = 67109120;
          *&buf[4] = v77;
          _os_log_impl(&_mh_execute_header, v79, OS_LOG_TYPE_INFO, "addScanFilterByUUID uuidFilterOptions.rssiThreshold %d", buf, 8u);
        }

        v80 = sub_10000C7D0();
        *buf = *(v73 + 28);
        v139 = *(v73 + 11);
        if ((*(*v80 + 408))(v80, buf, v75 & v76, v78, 1, 1))
        {
          break;
        }

        v81 = v73[1];
        if (v81)
        {
          do
          {
            v82 = v81;
            v81 = *v81;
          }

          while (v81);
        }

        else
        {
          do
          {
            v82 = v73[2];
            v18 = *v82 == v73;
            v73 = v82;
          }

          while (!v18);
        }

        v73 = v82;
        if (v82 == v122)
        {
          goto LABEL_119;
        }
      }

      v83 = qword_100BCE918;
      if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_ERROR))
      {
        sub_100877508(v73 + 28, v83);
      }
    }

LABEL_119:
    v126 = 0u;
    v127 = 0u;
    v124 = 0u;
    v125 = 0u;
    objb = *(v123 + 4400);
    v84 = [objb countByEnumeratingWithState:&v124 objects:v142 count:16];
    if (v84)
    {
      v120 = *v125;
      while (2)
      {
        for (i = 0; i != v84; i = i + 1)
        {
          if (*v125 != v120)
          {
            objc_enumerationMutation(objb);
          }

          v86 = *(*(&v124 + 1) + 8 * i);
          v140 = 0uLL;
          v141 = 0;
          v87 = [v86 objectForKeyedSubscript:@"uuid"];
          v88 = v87;
          v89 = [v87 bytes];
          v90 = [v86 objectForKeyedSubscript:@"uuid"];
          sub_100065F40(&v140, v89, [v90 length]);

          v91 = [v86 objectForKeyedSubscript:@"allowDups"];
          v92 = [v91 BOOLValue];

          if (v122 == sub_10007C324(v123 + 4368, &v140))
          {
            v94 = sub_10000C798();
            v118 = (*(*v94 + 352))(v94);
            v95 = sub_10000C7D0();
            *buf = v140;
            v139 = v141;
            v116 = [v86 objectForKeyedSubscript:@"rssi"];
            v96 = [v116 intValue];
            v97 = [v86 objectForKeyedSubscript:@"data"];
            v98 = [v97 length];
            v99 = [v86 objectForKeyedSubscript:@"data"];
            v100 = v99;
            v101 = [v99 bytes];
            v102 = [v86 objectForKeyedSubscript:@"mask"];
            v103 = v102;
            LOBYTE(v104) = 1;
            LODWORD(v95) = (*(*v95 + 416))(v95, buf, v118 & v92, v96, 1, v98, v101, [v102 bytes], v104);

            if (v95)
            {
              if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_ERROR))
              {
                sub_10003B85C(&v140, buf);
                sub_100876F94();
              }

              goto LABEL_133;
            }
          }

          else
          {
            v93 = qword_100BCE918;
            if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              *&buf[4] = v86;
              _os_log_impl(&_mh_execute_header, v93, OS_LOG_TYPE_INFO, "Skip adding %@ as its uuid was already added without blob/mask", buf, 0xCu);
            }
          }
        }

        v84 = [objb countByEnumeratingWithState:&v124 objects:v142 count:16];
        if (v84)
        {
          continue;
        }

        break;
      }
    }

LABEL_133:

    v10 = 1;
  }

  sub_10008261C(v123, v10);
}

uint64_t sub_1000735B8(_DWORD *a1, int a2)
{
  v2 = a1[343];
  if (!a2)
  {
    if ((v2 & 0x40000) != 0)
    {
      v3 = v2 & 0xFFFBFFFF;
      goto LABEL_7;
    }

    return 0;
  }

  if ((v2 & 0x40000) != 0)
  {
    return 0;
  }

  v3 = v2 | 0x40000;
LABEL_7:
  a1[343] = v3;
  return (*(*a1 + 336))(a1, 1);
}

uint64_t sub_100073610(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, int a8, uint64_t a9, char a10, char a11, char a12, char a13, char a14)
{
  LODWORD(v15) = a3;
  v39 = 0;
  if ((*(*a1 + 4152))(a1))
  {
    if (v15 >= 0x16)
    {
      v15 = 22;
    }

    else
    {
      v15 = v15;
    }

    if (a5 >= 0x16)
    {
      v18 = 22;
    }

    else
    {
      v18 = a5;
    }
  }

  else
  {
    v19 = (*(*a1 + 4128))(a1);
    if (v19 >= v15)
    {
      v15 = v15;
    }

    else
    {
      v15 = v19;
    }

    v20 = (*(*a1 + 4128))(a1);
    if (v20 >= a5)
    {
      v18 = a5;
    }

    else
    {
      v18 = v20;
    }
  }

  v21 = v18;
  v22 = sub_10007390C(a1, a2, v15, a4, v18, a6, a7, a8, a9, a10, a11, a12, a13, a14, &v39);
  if (!v22)
  {
    if (!(*(*a1 + 4152))(a1))
    {
      return 0;
    }

    v23 = (*(*a1 + 4128))(a1);
    v22 = 0;
    if (a5 < 0x17 || a3 < 0x17 || v23 < 0x17)
    {
      return v22;
    }

    v38 = 0;
    v37 = 0;
    v36 = 0;
    __dst = 0;
    v24 = (a3 - v15) >= 3u ? 3 : (a3 - v15);
    memcpy(&__dst, (a2 + 22), v24);
    v25 = (a5 - v21) >= 3u ? 3 : (a5 - v21);
    memcpy(&v37, (a4 + 22), v25);
    if (!v37 && v38 == 0 && !__dst && v36 == 0)
    {
      return 0;
    }

    v22 = sub_1000C3340(a1, v39, &__dst, 3, &v37, 3);
    if (v22 && os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
    {
      sub_100827068();
    }
  }

  return v22;
}

uint64_t sub_10007390C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, uint64_t a7, int a8, uint64_t a9, char a10, char a11, char a12, char a13, char a14, uint64_t a15)
{
  LOBYTE(v21) = a12;
  v22 = sub_10000C798();
  if ((*(*v22 + 632))(v22) & 1) != 0 || (v27 = sub_10000C798(), ((*(*v27 + 416))(v27)) && (*(*a1 + 4120))(a1))
  {
    if ((*(a1 + 800) - 5000) >= 0x3E8)
    {
      v23 = a12 | 2;
      if (a13)
      {
        v23 = a12;
      }

      if (a14)
      {
        LOBYTE(v21) = v23;
      }

      else
      {
        LOBYTE(v21) = v23 | 4;
      }
    }

    if (a7 == 19 && (*(a1 + 1638) & 1) != 0)
    {
      v21 = *(a1 + 1640);
    }

    v24 = sub_10000C7D0();
    if ((*(*v24 + 4152))(v24))
    {
      v43[0] = _NSConcreteStackBlock;
      v43[1] = 3221225472;
      v43[2] = sub_1000750E8;
      v43[3] = &unk_100AF2410;
      v44 = a3;
      v43[4] = a2;
      v43[5] = a4;
      v45 = a5;
      v46 = a6;
      v47 = a7;
      v48 = a8;
      v43[6] = a9;
      v49 = a10;
      v50 = a11;
      v51 = v21;
      v42[0] = _NSConcreteStackBlock;
      v42[1] = 3221225472;
      v42[2] = sub_10007236C;
      v42[3] = &unk_100AE0860;
      v42[4] = a1;
      v42[5] = a15;
      v25 = v43;
      v26 = v42;
    }

    else
    {
      v33[0] = _NSConcreteStackBlock;
      v33[1] = 3221225472;
      v33[2] = sub_1003D6AEC;
      v33[3] = &unk_100AF2410;
      v34 = a3;
      v33[4] = a2;
      v33[5] = a4;
      v35 = a5;
      v36 = a6;
      v37 = a7;
      v38 = a8;
      v33[6] = a9;
      v39 = a10;
      v40 = a11;
      v41 = v21;
      v32[0] = _NSConcreteStackBlock;
      v32[1] = 3221225472;
      v32[2] = sub_1003D6B54;
      v32[3] = &unk_100ADF8F8;
      v32[4] = a1;
      v25 = v33;
      v26 = v32;
    }

    return sub_10002173C(a1, 252, 1, v25, v26);
  }

  else
  {
    v28 = *(*a1 + 640);

    return v28(a1, a2, a3, a4, a5, a6, a7, a8 == 2, a9);
  }
}

uint64_t sub_100073CB0(uint64_t a1)
{
  if (!_os_feature_enabled_impl())
  {
    return 0;
  }

  v2 = *(a1 + 800);
  if (!v2)
  {
    return 0;
  }

  if (v2 > 0x7CF)
  {
    if (v2 - 5000 > 0x3E7)
    {
      return 0;
    }
  }

  else if (v2 - 22 >= 4)
  {
    return 0;
  }

  v4 = *(*sub_10000C798() + 384);

  return v4();
}

uint64_t sub_100073D60(_DWORD *a1)
{
  v1 = 25;
  if ((a1[200] - 2001) >= 0x7CF)
  {
    if ((*(*a1 + 4152))(a1))
    {
      return 25;
    }

    else
    {
      return 22;
    }
  }

  return v1;
}

uint64_t sub_100073DCC(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    return 101;
  }

  if (off_100B607A0)
  {
    v2 = off_100B607A0(a1, a2);
    if (!v2)
    {
      return v2;
    }
  }

  else
  {
    v2 = 3601;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("VSC failed %!", v3, v4, v5, v6, v7, v8, v9, v2);
    v10 = sub_10000C050(0x54u);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }

  return v2;
}

uint64_t sub_100073E6C(uint64_t a1, unsigned int a2, unsigned int a3, char a4, char a5, char a6, unsigned int a7, uint64_t a8, uint64_t a9, uint64_t (*a10)())
{
  v61 = 0;
  v62 = 0;
  result = sub_10001FFD8(&v61);
  if (result)
  {
    return result;
  }

  if (HIBYTE(v62))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
    goto LABEL_77;
  }

  v19 = WORD2(v62);
  if (WORD1(v62) <= WORD2(v62))
  {
LABEL_77:
    v51 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_79;
  }

  if (BYTE6(v62) != 2)
  {
    v51 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_79:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 3314, v51);
  }

  ++WORD2(v62);
  *(v61 + v19) = 97;
  if (HIBYTE(v62))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
    goto LABEL_81;
  }

  v20 = WORD2(v62);
  if (WORD1(v62) <= WORD2(v62))
  {
LABEL_81:
    v52 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_83;
  }

  if (BYTE6(v62) != 2)
  {
    v52 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_83:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 3316, v52);
  }

  ++WORD2(v62);
  *(v61 + v20) = a3;
  if (HIBYTE(v62))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
    goto LABEL_85;
  }

  if (WORD1(v62) - WORD2(v62) <= 5)
  {
LABEL_85:
    v53 = "ByteStream_NumReadBytesAvail(bs) >= (6)";
    goto LABEL_87;
  }

  if (BYTE6(v62) != 2)
  {
    v53 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_87:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 3317, v53);
  }

  v21 = v61 + WORD2(v62);
  *(v21 + 4) = 0;
  *v21 = 0;
  v22 = WORD2(v62);
  v23 = WORD2(v62) + 6;
  WORD2(v62) += 6;
  if (HIBYTE(v62))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
    goto LABEL_89;
  }

  if (WORD1(v62) <= v23)
  {
LABEL_89:
    v54 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_91;
  }

  if (BYTE6(v62) != 2)
  {
    v54 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_91:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 3318, v54);
  }

  WORD2(v62) = v22 + 7;
  *(v61 + v23) = 2;
  if (HIBYTE(v62))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
    goto LABEL_93;
  }

  v24 = WORD2(v62);
  if (WORD1(v62) <= WORD2(v62))
  {
LABEL_93:
    v55 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_95;
  }

  if (BYTE6(v62) != 2)
  {
    v55 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_95:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 3319, v55);
  }

  ++WORD2(v62);
  *(v61 + v24) = 0;
  if (HIBYTE(v62))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
    goto LABEL_97;
  }

  v25 = WORD2(v62);
  if (WORD1(v62) <= WORD2(v62))
  {
LABEL_97:
    v56 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_99;
  }

  if (BYTE6(v62) != 2)
  {
    v56 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_99:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 3321, v56);
  }

  ++WORD2(v62);
  *(v61 + v25) = a4;
  if (HIBYTE(v62))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
    goto LABEL_101;
  }

  v26 = WORD2(v62);
  if (WORD1(v62) <= WORD2(v62))
  {
LABEL_101:
    v57 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_103;
  }

  if (BYTE6(v62) != 2)
  {
    v57 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_103:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 3322, v57);
  }

  ++WORD2(v62);
  *(v61 + v26) = a5;
  if (HIBYTE(v62))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
    goto LABEL_105;
  }

  v27 = WORD2(v62);
  if (WORD1(v62) <= WORD2(v62))
  {
LABEL_105:
    v58 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_107;
  }

  if (BYTE6(v62) != 2)
  {
    v58 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_107:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 3323, v58);
  }

  ++WORD2(v62);
  *(v61 + v27) = a6;
  if (a3 <= 1 && a2 != 2 && a2 != 16)
  {
    sub_1000D660C();
  }

  if (a8 && a7)
  {
    v28 = 0;
    while (!HIBYTE(v62))
    {
      v29 = WORD2(v62);
      if (WORD1(v62) <= WORD2(v62))
      {
        goto LABEL_70;
      }

      if (BYTE6(v62) != 2)
      {
        v49 = "(bs).__RWFlag == BYTESTREAM_WRITE";
        goto LABEL_71;
      }

      v30 = *(a8 + v28);
      ++WORD2(v62);
      *(v61 + v29) = v30;
      if (++v28 >= a7)
      {
        goto LABEL_37;
      }
    }

    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
LABEL_70:
    v49 = "ByteStream_NumReadBytesAvail(bs) >= 1";
LABEL_71:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 3330, v49);
  }

LABEL_37:
  v31 = v61;
  v32 = WORD2(v62);
  if (HIBYTE(v62))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
    v33 = 0;
  }

  else
  {
    v33 = WORD1(v62) - WORD2(v62);
  }

  v34 = 27 - a7;
  if (v33 < (27 - a7))
  {
    v59 = "ByteStream_NumReadBytesAvail(bs) >= ((27) - blobLen)";
    goto LABEL_110;
  }

  if (BYTE6(v62) != 2)
  {
    v59 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_110:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 3332, v59);
  }

  bzero((v31 + v32), v34);
  v35 = WORD2(v62) + v34;
  WORD2(v62) += v34;
  if (a9 && a7)
  {
    v36 = 0;
    do
    {
      if (HIBYTE(v62))
      {
        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
LABEL_74:
        v50 = "ByteStream_NumReadBytesAvail(bs) >= 1";
LABEL_75:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 3335, v50);
      }

      v37 = WORD2(v62);
      if (WORD1(v62) <= WORD2(v62))
      {
        goto LABEL_74;
      }

      if (BYTE6(v62) != 2)
      {
        v50 = "(bs).__RWFlag == BYTESTREAM_WRITE";
        goto LABEL_75;
      }

      v38 = *(a9 + v36);
      ++WORD2(v62);
      *(v61 + v37) = v38;
      ++v36;
    }

    while (v36 < a7);
    v35 = WORD2(v62);
  }

  v39 = v61;
  if (HIBYTE(v62))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
    v40 = 0;
  }

  else
  {
    v40 = WORD1(v62) - v35;
  }

  if (v40 < v34)
  {
    v60 = "ByteStream_NumReadBytesAvail(bs) >= ((27) - blobLen)";
    goto LABEL_113;
  }

  if (BYTE6(v62) != 2)
  {
    v60 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_113:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 3337, v60);
  }

  bzero((v39 + v35), v34);
  v44 = BYTE4(v62) + v34;
  WORD2(v62) += v34;
  if (a2)
  {
    v45 = a2;
    do
    {
      if (HIBYTE(v62))
      {
        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
LABEL_66:
        v48 = "ByteStream_NumReadBytesAvail(bs) >= 1";
LABEL_67:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 3340, v48);
      }

      v46 = WORD2(v62);
      if (WORD1(v62) <= WORD2(v62))
      {
        goto LABEL_66;
      }

      if (BYTE6(v62) != 2)
      {
        v48 = "(bs).__RWFlag == BYTESTREAM_WRITE";
        goto LABEL_67;
      }

      v47 = *(a1 - 1 + v45--);
      ++WORD2(v62);
      *(v61 + v46) = v47;
    }

    while ((v45 + 1) > 1);
    v44 = BYTE4(v62);
  }

  return sub_100020078(233, v61, v44, a10, sub_100022AD0, v41, v42, v43);
}

uint64_t sub_1000745EC(uint64_t a1, int a2)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1003D8008;
  v3[3] = &unk_100AF24D0;
  v4 = a2;
  return sub_10002173C(a1, 205, 1, v3, 0);
}

uint64_t sub_100074664(uint64_t (*a1)())
{
  v15 = 0;
  v16 = 0;
  result = sub_10001FFD8(&v15);
  if (!result)
  {
    if (HIBYTE(v16))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
    }

    else
    {
      v6 = WORD2(v16);
      if (WORD1(v16) > WORD2(v16))
      {
        if (BYTE6(v16) == 2)
        {
          ++WORD2(v16);
          *(v15 + v6) = 5;
          if (HIBYTE(v16))
          {
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
          }

          else
          {
            v7 = WORD2(v16);
            if (WORD1(v16) > WORD2(v16))
            {
              if (BYTE6(v16) == 2)
              {
                ++WORD2(v16);
                *(v15 + v7) = 2;
                if (HIBYTE(v16))
                {
                  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                }

                else if (WORD1(v16) - WORD2(v16) > 5)
                {
                  if (BYTE6(v16) == 2)
                  {
                    v8 = v15 + WORD2(v16);
                    *(v8 + 4) = 0;
                    *v8 = 0;
                    v9 = WORD2(v16);
                    v10 = WORD2(v16) + 6;
                    WORD2(v16) += 6;
                    if (HIBYTE(v16))
                    {
                      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                    }

                    else if (WORD1(v16) > v10)
                    {
                      if (BYTE6(v16) == 2)
                      {
                        WORD2(v16) = v9 + 7;
                        *(v15 + v10) = 2;
                        return sub_100020078(233, v15, BYTE4(v16), a1, sub_100022AD0, v3, v4, v5);
                      }

                      v14 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_31:
                      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 3219, v14);
                    }

                    v14 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                    goto LABEL_31;
                  }

                  v13 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_27:
                  sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 3218, v13);
                }

                v13 = "ByteStream_NumReadBytesAvail(bs) >= (6)";
                goto LABEL_27;
              }

              v12 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_23:
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 3217, v12);
            }
          }

          v12 = "ByteStream_NumReadBytesAvail(bs) >= 1";
          goto LABEL_23;
        }

        v11 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_19:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 3216, v11);
      }
    }

    v11 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_19;
  }

  return result;
}

uint64_t sub_1000748BC(const void *a1, int a2, const void *a3, int a4, char a5, char a6, int a7, char a8, char a9, char a10, char a11, char a12, char a13, char a14, __int16 a15, char a16, char a17, char a18, uint64_t (*a19)())
{
  v67 = 0;
  v68 = 0;
  result = sub_10001FFD8(&v67);
  if (!result)
  {
    if (a7)
    {
      if (HIBYTE(v68))
      {
        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
      }

      else
      {
        v28 = WORD2(v68);
        if (WORD1(v68) > WORD2(v68))
        {
          if (BYTE6(v68) == 2)
          {
            v29 = 55;
            goto LABEL_11;
          }

          v64 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_99:
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 3856, v64);
        }
      }

      v64 = "ByteStream_NumReadBytesAvail(bs) >= 1";
      goto LABEL_99;
    }

    if (HIBYTE(v68))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
    }

    else
    {
      v28 = WORD2(v68);
      if (WORD1(v68) > WORD2(v68))
      {
        if (BYTE6(v68) == 2)
        {
          v29 = 56;
LABEL_11:
          WORD2(v68) = v28 + 1;
          *(v67 + v28) = v29;
          if (HIBYTE(v68))
          {
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
          }

          else
          {
            v30 = WORD2(v68);
            if (WORD1(v68) > WORD2(v68))
            {
              if (BYTE6(v68) == 2)
              {
                ++WORD2(v68);
                *(v67 + v30) = a8;
                v66[0] = a14;
                v66[1] = a13;
                v66[2] = a12;
                v66[3] = a11;
                v66[4] = a10;
                v66[5] = a9;
                if (HIBYTE(v68))
                {
                  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                }

                else if (WORD1(v68) - WORD2(v68) > 5)
                {
                  if (BYTE6(v68) == 2)
                  {
                    sub_1000075EC((v67 + WORD2(v68)), v66, 6uLL);
                    v31 = WORD2(v68) + 6;
                    WORD2(v68) += 6;
                    v32 = v67;
                    if (HIBYTE(v68))
                    {
                      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                      v33 = 0;
                    }

                    else
                    {
                      v33 = WORD1(v68) - v31;
                    }

                    if (v33 < a2)
                    {
                      v55 = "ByteStream_NumReadBytesAvail(bs) >= (dataLen)";
                    }

                    else
                    {
                      if (BYTE6(v68) == 2)
                      {
                        memmove((v32 + v31), a1, a2);
                        v34 = WORD2(v68) + a2;
                        WORD2(v68) += a2;
                        v35 = v67;
                        if (HIBYTE(v68))
                        {
                          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                          v36 = 0;
                        }

                        else
                        {
                          v36 = WORD1(v68) - v34;
                        }

                        v37 = 22 - a2;
                        if (v36 < v37)
                        {
                          v56 = "ByteStream_NumReadBytesAvail(bs) >= (22 - dataLen)";
                        }

                        else
                        {
                          if (BYTE6(v68) == 2)
                          {
                            bzero((v35 + v34), v37);
                            v38 = WORD2(v68) + v37;
                            WORD2(v68) = v38;
                            v39 = v67;
                            if (HIBYTE(v68))
                            {
                              sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                              v40 = 0;
                            }

                            else
                            {
                              v40 = WORD1(v68) - v38;
                            }

                            if (v40 < a4)
                            {
                              v57 = "ByteStream_NumReadBytesAvail(bs) >= (maskLen)";
                            }

                            else
                            {
                              if (BYTE6(v68) == 2)
                              {
                                memmove((v39 + v38), a3, a4);
                                v41 = WORD2(v68) + a4;
                                WORD2(v68) += a4;
                                v42 = v67;
                                if (HIBYTE(v68))
                                {
                                  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                                  v43 = 0;
                                }

                                else
                                {
                                  v43 = WORD1(v68) - v41;
                                }

                                v44 = 22 - a4;
                                if (v43 < v44)
                                {
                                  v58 = "ByteStream_NumReadBytesAvail(bs) >= (22 - maskLen)";
                                }

                                else
                                {
                                  if (BYTE6(v68) == 2)
                                  {
                                    bzero((v42 + v41), v44);
                                    v48 = WORD2(v68) + v44;
                                    WORD2(v68) += v44;
                                    if (HIBYTE(v68))
                                    {
                                      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                                    }

                                    else if (WORD1(v68) > v48)
                                    {
                                      if (BYTE6(v68) == 2)
                                      {
                                        WORD2(v68) = v48 + 1;
                                        *(v67 + v48) = a5;
                                        if (HIBYTE(v68))
                                        {
                                          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                                        }

                                        else
                                        {
                                          v49 = WORD2(v68);
                                          if (WORD1(v68) > WORD2(v68))
                                          {
                                            if (BYTE6(v68) == 2)
                                            {
                                              ++WORD2(v68);
                                              *(v67 + v49) = a6;
                                              if (HIBYTE(v68))
                                              {
                                                sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                                              }

                                              else
                                              {
                                                v50 = WORD2(v68);
                                                if (WORD1(v68) > WORD2(v68))
                                                {
                                                  if (BYTE6(v68) == 2)
                                                  {
                                                    ++WORD2(v68);
                                                    *(v67 + v50) = a16;
                                                    if (HIBYTE(v68))
                                                    {
                                                      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                                                    }

                                                    else
                                                    {
                                                      v51 = WORD2(v68);
                                                      if (WORD1(v68) > WORD2(v68))
                                                      {
                                                        if (BYTE6(v68) == 2)
                                                        {
                                                          ++WORD2(v68);
                                                          *(v67 + v51) = a17;
                                                          if (HIBYTE(v68))
                                                          {
                                                            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                                                          }

                                                          else
                                                          {
                                                            v52 = WORD2(v68);
                                                            if (WORD1(v68) > WORD2(v68))
                                                            {
                                                              if (BYTE6(v68) == 2)
                                                              {
                                                                ++WORD2(v68);
                                                                *(v67 + v52) = a18;
                                                                return sub_100020078(233, v67, BYTE4(v68), a19, sub_100072144, v45, v46, v47);
                                                              }

                                                              v63 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_93:
                                                              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 3873, v63);
                                                            }
                                                          }

                                                          v63 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                                                          goto LABEL_93;
                                                        }

                                                        v62 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_89:
                                                        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 3872, v62);
                                                      }
                                                    }

                                                    v62 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                                                    goto LABEL_89;
                                                  }

                                                  v61 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_85:
                                                  sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 3871, v61);
                                                }
                                              }

                                              v61 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                                              goto LABEL_85;
                                            }

                                            v60 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_81:
                                            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 3870, v60);
                                          }
                                        }

                                        v60 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                                        goto LABEL_81;
                                      }

                                      v59 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_77:
                                      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 3869, v59);
                                    }

                                    v59 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                                    goto LABEL_77;
                                  }

                                  v58 = "(bs).__RWFlag == BYTESTREAM_WRITE";
                                }

                                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 3868, v58);
                              }

                              v57 = "(bs).__RWFlag == BYTESTREAM_WRITE";
                            }

                            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 3867, v57);
                          }

                          v56 = "(bs).__RWFlag == BYTESTREAM_WRITE";
                        }

                        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 3866, v56);
                      }

                      v55 = "(bs).__RWFlag == BYTESTREAM_WRITE";
                    }

                    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 3865, v55);
                  }

                  v54 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_61:
                  sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 3864, v54);
                }

                v54 = "ByteStream_NumReadBytesAvail(bs) >= OI_BD_ADDR_BYTE_SIZE";
                goto LABEL_61;
              }

              v53 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_57:
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 3861, v53);
            }
          }

          v53 = "ByteStream_NumReadBytesAvail(bs) >= 1";
          goto LABEL_57;
        }

        v65 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_101:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 3858, v65);
      }
    }

    v65 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_101;
  }

  return result;
}

uint64_t sub_100075018(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v4 = 101;
  if (a4 <= a2 && a2 <= 0x16 && a1 && a3)
  {
    if (off_100B60738)
    {
      v4 = off_100B60738(a1, a2, a3);
      if (!v4)
      {
        return v4;
      }
    }

    else
    {
      v4 = 3601;
    }

    if (sub_10000C240())
    {
      sub_10000AF54("VSC failed %!", v5, v6, v7, v8, v9, v10, v11, v4);
      v12 = sub_10000C050(0x54u);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_10080F604();
      }
    }
  }

  return v4;
}

uint64_t sub_100075150(uint64_t a1, int a2)
{
  v9[0] = 0;
  v9[1] = 0;
  sub_100007F88(v9, a1 + 72);
  if (*(sub_10000C7D0() + 800) && *(sub_10000C7D0() + 800) <= 0x7CFu)
  {
    v4 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_INFO))
    {
      v5 = sub_100020304(a1, 233);
      *buf = 136446210;
      v11 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Sending: %{public}s", buf, 0xCu);
    }

    if (sub_100020164(a1, 233))
    {
      buf[0] = 0;
      sub_1000216B4(buf);
      v6 = sub_1000753F8();
      sub_100022214(buf);
      if (v6)
      {
        goto LABEL_7;
      }

      if (!a2)
      {
        goto LABEL_20;
      }

      if (qword_100B50AA0 != -1)
      {
        sub_100826FD0();
      }

      if (sub_100021BDC(off_100B50A98, 0xE9u))
      {
LABEL_7:
        v7 = 1;
      }

      else
      {
LABEL_20:
        v7 = 0;
        *(a1 + 1368) = 1;
      }

      sub_100022684(a1, 0xE9u);
      sub_10002249C(buf);
    }

    else
    {
      v7 = 2;
    }
  }

  else if (*(sub_10000C7D0() + 800) >> 3 < 0x271u || *(sub_10000C7D0() + 800) >> 4 > 0x176u)
  {
    *(a1 + 1372) |= 0x100000u;
    if ((*(*a1 + 336))(a1, 1))
    {
      *(a1 + 1372) &= ~0x100000u;
    }

    else
    {
      *(a1 + 1368) = 1;
    }

    *(a1 + 1376) |= 1u;
    (*(*a1 + 344))(a1, 1);
    v7 = 0;
  }

  else
  {
    v7 = 0;
    *(a1 + 1368) = 1;
  }

  sub_1000088CC(v9);
  return v7;
}

uint64_t sub_1000753F8()
{
  if (off_100B60698)
  {
    v0 = off_100B60698();
    if (!v0)
    {
      return v0;
    }
  }

  else
  {
    v0 = 3601;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("VSC failed %!", v1, v2, v3, v4, v5, v6, v7, v0);
    v8 = sub_10000C050(0x54u);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }

  return v0;
}

uint64_t sub_100075484(uint64_t (*a1)())
{
  v21 = 0;
  v22 = 0;
  result = sub_10001FFD8(&v21);
  if (!result)
  {
    if (HIBYTE(v22))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
    }

    else
    {
      v6 = WORD2(v22);
      if (WORD1(v22) > WORD2(v22))
      {
        if (BYTE6(v22) == 2)
        {
          ++WORD2(v22);
          *(v21 + v6) = 5;
          if (HIBYTE(v22))
          {
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
          }

          else
          {
            v7 = WORD2(v22);
            if (WORD1(v22) > WORD2(v22))
            {
              if (BYTE6(v22) == 2)
              {
                ++WORD2(v22);
                *(v21 + v7) = 0;
                if (HIBYTE(v22))
                {
                  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                }

                else if (WORD1(v22) - WORD2(v22) > 5)
                {
                  if (BYTE6(v22) == 2)
                  {
                    v8 = v21 + WORD2(v22);
                    *(v8 + 4) = 0;
                    *v8 = 0;
                    v9 = WORD2(v22);
                    v10 = WORD2(v22) + 6;
                    WORD2(v22) += 6;
                    if (HIBYTE(v22))
                    {
                      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                    }

                    else if (WORD1(v22) > v10)
                    {
                      if (BYTE6(v22) == 2)
                      {
                        WORD2(v22) = v9 + 7;
                        *(v21 + v10) = 2;
                        if (HIBYTE(v22))
                        {
                          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                        }

                        else
                        {
                          v11 = WORD2(v22);
                          if (WORD1(v22) > WORD2(v22))
                          {
                            if (BYTE6(v22) == 2)
                            {
                              ++WORD2(v22);
                              *(v21 + v11) = 4;
                              if (HIBYTE(v22))
                              {
                                sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                              }

                              else
                              {
                                v12 = WORD2(v22);
                                if (WORD1(v22) > WORD2(v22))
                                {
                                  if (BYTE6(v22) == 2)
                                  {
                                    ++WORD2(v22);
                                    *(v21 + v12) = 0;
                                    if (HIBYTE(v22))
                                    {
                                      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                                    }

                                    else if (WORD1(v22) - WORD2(v22) > 2)
                                    {
                                      if (BYTE6(v22) == 2)
                                      {
                                        v13 = v21 + WORD2(v22);
                                        *(v13 + 2) = 0;
                                        *v13 = 0;
                                        WORD2(v22) += 3;
                                        return sub_100020078(233, v21, BYTE4(v22), a1, sub_100022AD0, v3, v4, v5);
                                      }

                                      v20 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_52:
                                      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 3202, v20);
                                    }

                                    v20 = "ByteStream_NumReadBytesAvail(bs) >= (3)";
                                    goto LABEL_52;
                                  }

                                  v19 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_48:
                                  sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 3201, v19);
                                }
                              }

                              v19 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                              goto LABEL_48;
                            }

                            v18 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_44:
                            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 3200, v18);
                          }
                        }

                        v18 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                        goto LABEL_44;
                      }

                      v17 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_40:
                      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 3199, v17);
                    }

                    v17 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                    goto LABEL_40;
                  }

                  v16 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_36:
                  sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 3198, v16);
                }

                v16 = "ByteStream_NumReadBytesAvail(bs) >= (6)";
                goto LABEL_36;
              }

              v15 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_32:
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 3197, v15);
            }
          }

          v15 = "ByteStream_NumReadBytesAvail(bs) >= 1";
          goto LABEL_32;
        }

        v14 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_28:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 3196, v14);
      }
    }

    v14 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_28;
  }

  return result;
}

uint64_t sub_100075854(int a1)
{
  if (qword_100B50AA0 != -1)
  {
    sub_100093618();
  }

  return sub_100022748(a1, 0xE9u);
}

uint64_t sub_1000758A4(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v8 = *a2;
  v9 = *(a2 + 4);
  return (*(*a1 + 416))(a1, &v8, a3, a4, a5, 0, 0, 0, a6);
}

uint64_t sub_10007593C(uint64_t a1, __int128 *a2, char a3, char a4, char a5, char a6, uint64_t a7, uint64_t a8, unsigned __int8 a9)
{
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100075A0C;
  v10[3] = &unk_100AF22D0;
  v11 = *a2;
  v12 = *(a2 + 4);
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v10[4] = a1;
  v10[5] = a7;
  v10[6] = a8;
  v17 = a9;
  return sub_10002173C(a1, 234, a9, v10, 0);
}

uint64_t sub_100075A0C(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1[1368] != 1)
  {
    return 114;
  }

  v5[0] = 0;
  v5[1] = 0;
  v3 = sub_10007A930((a1 + 56), v5);
  if ((*(*v1 + 2824))(v1))
  {
    return sub_100073DCC(v5, v3);
  }

  if (!(*(*v1 + 2816))(v1))
  {
    return sub_1002A1DC0(v5);
  }

  if ((*(a1 + 79) || *(a1 + 40) || *(a1 + 48)) && os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
  {
    sub_100826FF8();
  }

  return sub_1002A1E58(v5);
}

uint64_t sub_100075BF0(uint64_t a1, int a2)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100081A70;
  v3[3] = &unk_100AF2210;
  v3[4] = a1;
  v4 = a2;
  return sub_10002173C(a1, 229, a2, v3, 0);
}

uint64_t sub_100075C6C(uint64_t a1, unint64_t a2, int a3, void *a4, uint64_t a5, __int128 *a6, uint64_t a7, void *a8)
{
  v14 = a4;
  v15 = a8;
  if (qword_100B508B0 != -1)
  {
    sub_10083AE50();
  }

  v16 = a6[1];
  v19[0] = *a6;
  v19[1] = v16;
  v17 = sub_100077998(off_100B508A8, a2, a3, v14, a5, v19, a7, v15);

  return v17;
}

id sub_100075D3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{

  return [v10 updateWithCBDevice:a10];
}

uint64_t sub_100075D84(uint64_t result, uint64_t a2, float a3)
{
  *result = a3;
  *(result + 4) = a2;
  *(result + 12) = 1024;
  return result;
}

void sub_100075D98(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_error_impl(a1, v4, OS_LOG_TYPE_ERROR, a4, v5, 0x16u);
}

uint64_t sub_100075DC4(uint64_t **a1, unint64_t *a2)
{
  v2 = a1[1];
  if (!v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = (a1 + 1);
  do
  {
    v5 = v2[4];
    v6 = v5 >= v3;
    v7 = v5 < v3;
    if (v6)
    {
      v4 = v2;
    }

    v2 = v2[v7];
  }

  while (v2);
  if (v4 == (a1 + 1) || v3 < v4[4])
  {
    return 0;
  }

  sub_10002717C(a1, v4);
  operator delete(v4);
  return 1;
}

uint64_t sub_100075E48(void *a1, uint64_t a2)
{
  v28[0] = 0;
  v28[1] = 0;
  sub_100007F88(v28, (a1 + 13));
  __p = 0;
  v26 = 0;
  v27 = 0;
  v5 = a1[21];
  for (i = a1[22]; v5 != i; i = a1[22])
  {
    v24[0] = *v5;
    if (qword_100B50B88 != -1)
    {
      sub_100844390();
    }

    if (sub_100076290(qword_100B50B80, v24[0]) == a2)
    {
      v6 = a1[22];
      v7 = v6 - (v5 + 1);
      if (v6 != v5 + 1)
      {
        memmove(v5, v5 + 1, v6 - (v5 + 1));
      }

      a1[22] = v5 + v7;
      sub_1000C2484(&__p, v24);
    }

    else
    {
      ++v5;
    }
  }

  sub_10000801C(v28);
  v24[0] = 0;
  v24[1] = 0;
  sub_100007F88(v24, (a1 + 24));
  v8 = __p;
  if (__p != v26)
  {
    v9 = 0;
    v10 = a1 + 81;
    v11 = a1 + 84;
    do
    {
      v12 = *v8;
      for (j = a1[33]; j != a1 + 32; j = *v14)
      {
        v22 = j[2];
        if (*v22 == v12)
        {
          sub_100571D90((a1 + 32), &v22);
          v15 = v22;
          if (v22)
          {
            v22[2] = 0;
            free(v15[1]);
            v15[1] = 0;
            v15[4] = 0;
            free(v15[3]);
            v15[3] = 0;
            operator delete();
          }

          v9 = 1;
          v14 = a1 + 33;
        }

        else
        {
          v14 = j + 1;
        }
      }

      v22 = 0;
      v23 = 0;
      sub_100007F88(&v22, (a1 + 73));
      v16 = a1 + 81;
      if (a1[82] != v10)
      {
        v16 = a1[82];
        while (v16[2] != v12)
        {
          v16 = v16[1];
          if (v16 == v10)
          {
            v16 = a1 + 81;
            break;
          }
        }
      }

      sub_10000801C(&v22);
      if (v16 != v10)
      {
        sub_100571E5C(a1, v12, 0);
      }

      sub_100007FB8(&v22);
      v17 = a1 + 84;
      if (a1[85] != v11)
      {
        v17 = a1[85];
        while (v17[2] != v12)
        {
          v17 = v17[1];
          if (v17 == v11)
          {
            v17 = a1 + 84;
            break;
          }
        }
      }

      sub_10000801C(&v22);
      if (v17 != v11)
      {
        sub_100572080(a1, v12, 0);
      }

      sub_1000088CC(&v22);
      ++v8;
    }

    while (v8 != v26);
    if (v9)
    {
      if (qword_100B50AA0 != -1)
      {
        sub_1008443B8();
      }

      sub_1005A4070(off_100B50A98);
      if (qword_100B50AC0 != -1)
      {
        sub_1008443E0();
      }

      sub_100598334();
    }
  }

  sub_10000801C(v24);
  for (k = __p; k != v26; ++k)
  {
    v19 = *k;
    v22 = 0;
    v23 = 0;
    sub_100007F88(&v22, (a1 + 53));
    v20 = sub_100576F84(a1[61], a1[62], v19);
    if (v20 != a1[62])
    {
      a1[62] = v20;
    }

    sub_10000801C(&v22);
    sub_1005722A4(a1, v19);
    sub_1005722A4(a1, v19);
    if (qword_100B50B88 != -1)
    {
      sub_100844390();
    }

    sub_1006189DC(qword_100B50B80, v19);
    if (qword_100B50B88 != -1)
    {
      sub_100844390();
    }

    sub_100618E84(qword_100B50B80, v19);
    sub_1000088CC(&v22);
  }

  sub_1000088CC(v24);
  if (__p)
  {
    v26 = __p;
    operator delete(__p);
  }

  return sub_1000088CC(v28);
}

void sub_100076234(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, char a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, char a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_1000088CC(&a17);
  _Unwind_Resume(a1);
}

uint64_t sub_100076290(uint64_t a1, unint64_t a2)
{
  v13[0] = 0;
  v13[1] = 0;
  sub_100007F88(v13, a1 + 40);
  if (!a2)
  {
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
    {
      sub_100853A40();
    }

    goto LABEL_13;
  }

  v6 = *(a1 + 152);
  v5 = a1 + 152;
  v4 = v6;
  if (!v6)
  {
    goto LABEL_13;
  }

  v7 = v5;
  do
  {
    v8 = *(v4 + 32);
    v9 = v8 >= a2;
    v10 = v8 < a2;
    if (v9)
    {
      v7 = v4;
    }

    v4 = *(v4 + 8 * v10);
  }

  while (v4);
  if (v7 == v5 || *(v7 + 32) > a2)
  {
LABEL_13:
    v11 = 0;
    goto LABEL_14;
  }

  v11 = *(v7 + 40);
LABEL_14:
  sub_1000088CC(v13);
  return v11;
}

uint64_t sub_100076348(void *a1, unint64_t a2)
{
  if (qword_100B50B88 != -1)
  {
    sub_100863478();
  }

  v4 = sub_1000117DC(qword_100B50B80, a2);
  v5 = sub_10000E92C();
  if ((*(*v5 + 8))(v5))
  {
    v6 = qword_100BCE940;
    if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_DEFAULT))
    {
      if (v4)
      {
        sub_100018384(v4, __p);
        if (v19 >= 0)
        {
          v7 = __p;
        }

        else
        {
          v7 = __p[0];
        }

        *buf = 136315394;
        v21 = "sessionDetached";
        v22 = 2082;
        v23 = v7;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s - session %{public}s is detaching", buf, 0x16u);
        if (v19 < 0)
        {
          operator delete(__p[0]);
        }
      }

      else
      {
        *buf = 136315394;
        v21 = "sessionDetached";
        v22 = 2082;
        v23 = "(NULL)";
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s - session %{public}s is detaching", buf, 0x16u);
      }
    }
  }

  __p[0] = 0;
  __p[1] = 0;
  sub_100007F88(__p, (a1 + 6));
  v8 = a1[23];
  if (v8 == a1[24])
  {
    goto LABEL_26;
  }

  do
  {
    v9 = *v8;
    if (qword_100B50B88 != -1)
    {
      sub_1008633EC();
    }

    if (sub_100076290(qword_100B50B80, v9) == a2)
    {
      v11 = a1[14];
      if (v11)
      {
        sub_1006D734C(v11, v9);
      }

      if (qword_100B50B88 != -1)
      {
        sub_1008633EC();
      }

      sub_1006189DC(qword_100B50B80, v9);
      v12 = a1[24];
      v13 = v12 - (v8 + 1);
      if (v12 != v8 + 1)
      {
        memmove(v8, v8 + 1, v12 - (v8 + 1));
      }

      v10 = (v8 + v13);
      a1[24] = v8 + v13;
    }

    else
    {
      ++v8;
      v10 = a1[24];
    }
  }

  while (v8 != v10);
  if (v10 == a1[23])
  {
LABEL_26:
    v14 = sub_10000E92C();
    if ((*(*v14 + 8))(v14))
    {
      v15 = qword_100BCE940;
      if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v21 = "sessionDetached";
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%s - deleting fAgent as fHandleList size is 0", buf, 0xCu);
      }
    }

    v16 = a1[14];
    if (v16)
    {
      (*(*v16 + 8))(v16);
    }

    a1[14] = 0;
  }

  return sub_1000088CC(__p);
}

uint64_t sub_1000766A0(uint64_t a1, unint64_t a2)
{
  if (qword_100B50B88 != -1)
  {
    sub_10084AF98();
  }

  v4 = sub_1000117DC(qword_100B50B80, a2);
  v5 = sub_10000E92C();
  if ((*(*v5 + 8))(v5))
  {
    v6 = qword_100BCE8F0;
    if (os_log_type_enabled(qword_100BCE8F0, OS_LOG_TYPE_DEFAULT))
    {
      if (v4)
      {
        sub_100018384(v4, __p);
        if (v18 >= 0)
        {
          v7 = __p;
        }

        else
        {
          v7 = __p[0];
        }

        *buf = 136315394;
        v20 = "sessionDetached";
        v21 = 2082;
        v22 = v7;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s - session %{public}s is detaching", buf, 0x16u);
        if (v18 < 0)
        {
          operator delete(__p[0]);
        }
      }

      else
      {
        *buf = 136315394;
        v20 = "sessionDetached";
        v21 = 2082;
        v22 = "(NULL)";
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s - session %{public}s is detaching", buf, 0x16u);
      }
    }
  }

  __p[0] = 0;
  __p[1] = 0;
  sub_100007F88(__p, a1 + 200);
  v8 = *(a1 + 264);
  if (v8 != (a1 + 272))
  {
    do
    {
      v9 = v8[4];
      if (qword_100B50B88 != -1)
      {
        sub_10084AED0();
      }

      if (sub_100076290(qword_100B50B80, v9) == a2)
      {
        v14 = v8[5];
        v13 = v8[6];
        if (v13)
        {
          atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        sub_1005CA2CC((a1 + 264), v8);
        v11 = *(a1 + 264);
        v16[0] = v14;
        v16[1] = v13;
        if (v13)
        {
          atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        sub_1005C6B78(a1, v16);
        if (v13)
        {
          sub_100117644(v13);
        }

        if (qword_100B50B88 != -1)
        {
          sub_10084AED0();
        }

        sub_1006189DC(qword_100B50B80, v9);
        if (v13)
        {
          sub_100117644(v13);
        }
      }

      else
      {
        v10 = v8[1];
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
            v11 = v8[2];
            v12 = *v11 == v8;
            v8 = v11;
          }

          while (!v12);
        }
      }

      v8 = v11;
    }

    while (v11 != (a1 + 272));
  }

  return sub_1000088CC(__p);
}

uint64_t sub_1000769B0(void *a1, uint64_t a2)
{
  v15[0] = 0;
  v15[1] = 0;
  sub_100007F88(v15, (a1 + 7));
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v4 = a1[29];
  if (v4 != a1[30])
  {
    do
    {
      v11 = *v4;
      if (qword_100B50B88 != -1)
      {
        sub_10083DBF0();
      }

      if (sub_100076290(qword_100B50B80, v11) == a2)
      {
        v5 = a1[30];
        v6 = v5 - (v4 + 1);
        if (v5 != v4 + 1)
        {
          memmove(v4, v4 + 1, v5 - (v4 + 1));
        }

        a1[30] = v4 + v6;
        sub_1000C2484(&v12, &v11);
      }

      else
      {
        ++v4;
      }
    }

    while (v4 != a1[30]);
    v7 = v12;
    if (v12 != v13)
    {
      do
      {
        v8 = *v7;
        v9 = sub_10051B544(a1[32], a1[33], *v7);
        if (v9 != a1[33])
        {
          a1[33] = v9;
        }

        if (qword_100B50B88 != -1)
        {
          sub_10083DBF0();
        }

        sub_1006189DC(qword_100B50B80, v8);
        if (qword_100B50B88 != -1)
        {
          sub_10083DBF0();
        }

        sub_100618E84(qword_100B50B80, v8);
        ++v7;
      }

      while (v7 != v13);
      v7 = v12;
    }

    if (v7)
    {
      v13 = v7;
      operator delete(v7);
    }
  }

  return sub_1000088CC(v15);
}

void sub_100076B70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_1000088CC(&a13);
  _Unwind_Resume(a1);
}

uint64_t sub_100076B98(uint64_t a1, uint64_t a2)
{
  v14[0] = 0;
  v14[1] = 0;
  sub_100007F88(v14, a1 + 96);
  v6 = *(a1 + 232);
  v4 = (a1 + 232);
  v5 = v6;
  if (v6 != (v4 + 1))
  {
    do
    {
      v7 = v5[4];
      if (qword_100B50B88 != -1)
      {
        sub_1008734C0();
      }

      v8 = sub_100076290(qword_100B50B80, v7);
      v9 = v5[1];
      if (v8 == a2)
      {
        v12 = v5;
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
            v10 = v12[2];
            v11 = *v10 == v12;
            v12 = v10;
          }

          while (!v11);
        }

        sub_10002717C(v4, v5);
        operator delete(v5);
        if (qword_100B50B88 != -1)
        {
          sub_1008734C0();
        }

        sub_1006189DC(qword_100B50B80, v7);
      }

      else if (v9)
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
          v10 = v5[2];
          v11 = *v10 == v5;
          v5 = v10;
        }

        while (!v11);
      }

      v5 = v10;
    }

    while (v10 != v4 + 1);
  }

  return sub_1000088CC(v14);
}

uint64_t sub_100076CF8(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(result + 32) = *(a2 + 32);
  *(result + 40) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_100076D14(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_100076D38(_BYTE *a1, int a2)
{
  v4 = qword_100BCE918;
  if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
  {
    v5 = "NO";
    if (a2)
    {
      v6 = "YES";
    }

    else
    {
      v6 = "NO";
    }

    if (a1[1865])
    {
      v7 = "YES";
    }

    else
    {
      v7 = "NO";
    }

    v8 = a1[1864];
    v9 = a1[1866];
    if (a1[1859])
    {
      v10 = "YES";
    }

    else
    {
      v10 = "NO";
    }

    v18 = 136447234;
    if (v8)
    {
      v11 = "YES";
    }

    else
    {
      v11 = "NO";
    }

    v19 = v6;
    v20 = 2082;
    if (v9)
    {
      v5 = "YES";
    }

    v21 = v7;
    v22 = 2082;
    v23 = v10;
    v24 = 2082;
    v25 = v11;
    v26 = 2082;
    v27 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Trying to remove scan filters with forceRemove=%{public}s fHaveZoneFilters:%{public}s fZoneScansHaveChanged:%{public}s fHaveUUIDFilters:%{public}s fHaveRuleFilters:%{public}s", &v18, 0x34u);
  }

  if (a1[1865] == 1)
  {
    if (a1[1859] & 1) != 0 || (a2)
    {
      goto LABEL_22;
    }
  }

  else if (a2)
  {
LABEL_22:
    v12 = sub_10000C7D0();
    (*(*v12 + 616))(v12);
    v13 = sub_10000C7D0();
    (*(*v13 + 624))(v13, 0);
    a1[1865] = 0;
    a1[1858] = 0;
  }

  if ((a1[1864] & 1) != 0 || a2)
  {
    v14 = sub_10000C7D0();
    (*(*v14 + 400))(v14, 1);
    a1[1864] = 0;
    a1[1858] = 0;
  }

  if ((a1[1866] & 1) != 0 || a2)
  {
    v15 = sub_10000C7D0();
    (*(*v15 + 632))(v15);
    v16 = sub_10000C7D0();
    (*(*v16 + 776))(v16, v17);
    a1[1866] = 0;
    a1[1858] = 0;
  }
}

uint64_t sub_100076FB4(uint64_t a1, int a2)
{
  if (*(a1 + 1368) != 1)
  {
    return 0;
  }

  if (*(sub_10000C7D0() + 800) && *(sub_10000C7D0() + 800) < 0x7D0u || *(sub_10000C7D0() + 800) >> 3 >= 0x271u && *(sub_10000C7D0() + 800) >> 4 <= 0x176u)
  {
    sub_10002173C(a1, 233, a2, &stru_100AF22B0, 0);
    *(a1 + 1368) = 0;
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100077398;
    v8[3] = &unk_100AF2210;
    v8[4] = a1;
    v9 = a2;
    return sub_10002173C(a1, 234, a2, v8, 0);
  }

  else
  {
    *(a1 + 1372) = vand_s8(*(a1 + 1372), 0xFFFFFFFEFFEFFFFFLL);
    if ((*(*a1 + 336))(a1, 1))
    {
      v4 = 0;
      *(a1 + 1372) |= 0x100000u;
    }

    else
    {
      *(a1 + 1368) = 0;
      v5 = qword_100BCE8D8;
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_INFO))
      {
        *buf = 136446210;
        v11 = sub_100020304(a1, 234);
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Sending: %{public}s", buf, 0xCu);
      }

      if (!sub_100020164(a1, 234))
      {
        return 2;
      }

      buf[0] = 0;
      sub_1000216B4(buf);
      v6 = sub_1000772BC();
      sub_100022214(buf);
      if (!v6)
      {
        if (a2)
        {
          if (qword_100B50AA0 != -1)
          {
            sub_100826FD0();
          }

          sub_100021BDC(off_100B50A98, 0xEAu);
        }

        *(a1 + 1368) = 1;
      }

      sub_100022684(a1, 0xEAu);
      sub_10002249C(buf);
      v4 = v6 != 0;
    }

    (*(*a1 + 344))(a1, 1);
  }

  return v4;
}

void sub_10007728C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_10002249C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000772BC()
{
  if (off_100B606A0)
  {
    v0 = off_100B606A0();
    if (!v0)
    {
      return v0;
    }
  }

  else
  {
    v0 = 3601;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("VSC failed %!", v1, v2, v3, v4, v5, v6, v7, v0);
    v8 = sub_10000C050(0x54u);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }

  return v0;
}

uint64_t sub_100077348(int a1)
{
  if (qword_100B50AA0 != -1)
  {
    sub_100093618();
  }

  return sub_100022748(a1, 0xE9u);
}

uint64_t sub_100077398(uint64_t a1)
{
  v1 = *(a1 + 32);
  if ((*(*v1 + 2824))(v1))
  {
    v4 = 0;
    return sub_100073DCC(&v4, 0);
  }

  else if ((*(*v1 + 2816))(v1))
  {
    v3 = 0;
    return sub_1002A1E58(&v3);
  }

  else
  {

    return sub_1002A1D34();
  }
}

uint64_t sub_1000774E4(int a1)
{
  if (qword_100B50AA0 != -1)
  {
    sub_100093618();
  }

  return sub_100022748(a1, 0xEAu);
}

uint64_t sub_100077534(uint64_t a1)
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_100077778;
  v2[3] = &unk_100ADF8F8;
  v2[4] = a1;
  return sub_10002173C(a1, 241, 1, &stru_100AF2530, v2);
}

uint64_t sub_1000775B0(uint64_t (*a1)())
{
  v8 = 0;
  v9 = 0;
  result = sub_10001FFD8(&v8);
  if (!result)
  {
    if (HIBYTE(v9))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
    }

    else
    {
      v6 = WORD2(v9);
      if (WORD1(v9) > WORD2(v9))
      {
        if (BYTE6(v9) == 2)
        {
          ++WORD2(v9);
          *(v8 + v6) = 30;
          return sub_100020078(233, v8, BYTE4(v9), a1, sub_100022AD0, v3, v4, v5);
        }

        v7 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_10:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 3728, v7);
      }
    }

    v7 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_10;
  }

  return result;
}

uint64_t sub_100077688()
{
  if (off_100B606F8)
  {
    v0 = off_100B606F8();
    if (!v0)
    {
      return v0;
    }
  }

  else
  {
    v0 = 3601;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("VSC failed %!", v1, v2, v3, v4, v5, v6, v7, v0);
    v8 = sub_10000C050(0x54u);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }

  return v0;
}

uint64_t sub_100077728(int a1)
{
  if (qword_100B50AA0 != -1)
  {
    sub_100093618();
  }

  return sub_100022748(a1, 0xF1u);
}

uint64_t sub_1000777A4(uint64_t (*a1)())
{
  v10 = 0;
  v11 = 0;
  result = sub_10001FFD8(&v10);
  if (!result)
  {
    if (HIBYTE(v11))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
    }

    else
    {
      v6 = WORD2(v11);
      if (WORD1(v11) > WORD2(v11))
      {
        if (BYTE6(v11) == 2)
        {
          ++WORD2(v11);
          *(v10 + v6) = 53;
          if (HIBYTE(v11))
          {
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
          }

          else
          {
            v7 = WORD2(v11);
            if (WORD1(v11) > WORD2(v11))
            {
              if (BYTE6(v11) == 2)
              {
                ++WORD2(v11);
                *(v10 + v7) = 2;
                return sub_100020078(233, v10, BYTE4(v11), a1, sub_100022AD0, v3, v4, v5);
              }

              v9 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_17:
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 3808, v9);
            }
          }

          v9 = "ByteStream_NumReadBytesAvail(bs) >= 1";
          goto LABEL_17;
        }

        v8 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_13:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 3807, v8);
      }
    }

    v8 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_13;
  }

  return result;
}

uint64_t sub_1000778F8()
{
  if (off_100B60728)
  {
    v0 = off_100B60728();
    if (!v0)
    {
      return v0;
    }
  }

  else
  {
    v0 = 3601;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("VSC failed %!", v1, v2, v3, v4, v5, v6, v7, v0);
    v8 = sub_10000C050(0x54u);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }

  return v0;
}

uint64_t sub_100077998(uint64_t a1, unint64_t a2, int a3, void *a4, uint64_t a5, __int128 *a6, uint64_t a7, void *a8)
{
  v50 = a2;
  v15 = a4;
  v16 = a8;
  *src = 0;
  v64 = 0;
  v17 = sub_10004DFB4(src, v15);
  if (!uuid_is_null(v17))
  {
    v49[0] = 0;
    v49[1] = 0;
    sub_100007F88(v49, a1 + 120);
    if (a1 + 392 == sub_10004E34C(a1 + 384, src) && a3)
    {
      if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_ERROR))
      {
        sub_10004DF60(src);
        objc_claimAutoreleasedReturnValue();
        sub_10086FA5C();
      }

      sub_10000801C(v49);
      v53[0] = _NSConcreteStackBlock;
      v53[1] = 3321888768;
      v53[2] = sub_100750B20;
      v53[3] = &unk_100B0B560;
      uuid_copy(v57, src);
      v20 = a6[1];
      v54 = *a6;
      v55 = v20;
      v19 = 312;
      v56 = 312;
      sub_10074063C(a1, v53);
      goto LABEL_68;
    }

    sub_10000801C(v49);
    if (!sub_100077F24(a1, a2, src) && os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_ERROR))
    {
      v21 = sub_10004DF60(src);
      sub_100077FE0(v16, v21, v52);
    }

    if (a3)
    {
      v51 = &v50;
      v22 = sub_100775308(a1 + 688, &v50);
      uuid_copy(v22 + 40, src);
      v51 = &v50;
      *(sub_10057EDF4(a1 + 712, &v50) + 20) = a5;
      v23 = sub_10000C7D0();
      v24 = *(a1 + 712);
      if (v24 != (a1 + 720))
      {
        do
        {
          if (*(v24 + 20) >= a5)
          {
            a5 = a5;
          }

          else
          {
            a5 = *(v24 + 20);
          }

          v25 = v24[1];
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
              v26 = v24[2];
              v27 = *v26 == v24;
              v24 = v26;
            }

            while (!v27);
          }

          v24 = v26;
        }

        while (v26 != (a1 + 720));
      }

      (*(*v23 + 2128))(v23, 1, a5, a7);
      goto LABEL_67;
    }

    v28 = *(a1 + 696);
    if (!v28)
    {
      goto LABEL_33;
    }

    v29 = (a1 + 696);
    do
    {
      v30 = v28[4];
      v31 = v30 >= a2;
      v32 = v30 < a2;
      if (v31)
      {
        v29 = v28;
      }

      v28 = v28[v32];
    }

    while (v28);
    if (v29 != (a1 + 696) && v29[4] <= a2)
    {
      sub_10002717C((a1 + 688), v29);
      operator delete(v29);
      v33 = 1;
    }

    else
    {
LABEL_33:
      v33 = 0;
    }

    v34 = (a1 + 712);
    v35 = (a1 + 720);
    v36 = *(a1 + 720);
    if (v36)
    {
      v37 = (a1 + 720);
      do
      {
        v38 = v36[4];
        v31 = v38 >= a2;
        v39 = v38 < a2;
        if (v31)
        {
          v37 = v36;
        }

        v36 = v36[v39];
      }

      while (v36);
      if (v37 != v35 && v37[4] <= a2)
      {
        sub_10002717C(v34, v37);
        operator delete(v37);
      }
    }

    v40 = *v34;
    if (*v34 == v35)
    {
      if (!v33)
      {
LABEL_67:
        v19 = 0;
LABEL_68:
        sub_1000088CC(v49);
        goto LABEL_69;
      }

      v41 = sub_10000C7D0();
      v45 = *v34;
      if (*v34 != v35)
      {
        do
        {
          if (*(v45 + 20) >= a5)
          {
            a5 = a5;
          }

          else
          {
            a5 = *(v45 + 20);
          }

          v46 = v45[1];
          if (v46)
          {
            do
            {
              v47 = v46;
              v46 = *v46;
            }

            while (v46);
          }

          else
          {
            do
            {
              v47 = v45[2];
              v27 = *v47 == v45;
              v45 = v47;
            }

            while (!v27);
          }

          v45 = v47;
        }

        while (v47 != v35);
      }
    }

    else
    {
      v41 = sub_10000C7D0();
      a5 = *(v40 + 20);
      v42 = *v34;
      if (*v34 != v35)
      {
        do
        {
          if (*(v42 + 20) >= a5)
          {
            a5 = a5;
          }

          else
          {
            a5 = *(v42 + 20);
          }

          v43 = v42[1];
          if (v43)
          {
            do
            {
              v44 = v43;
              v43 = *v43;
            }

            while (v43);
          }

          else
          {
            do
            {
              v44 = v42[2];
              v27 = *v44 == v42;
              v42 = v44;
            }

            while (!v27);
          }

          v42 = v44;
        }

        while (v44 != v35);
      }
    }

    (*(*v41 + 2128))(v41, v40 != v35, a5, a7);
    goto LABEL_67;
  }

  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_ERROR))
  {
    sub_10086FAA8();
  }

  v58[0] = _NSConcreteStackBlock;
  v58[1] = 3321888768;
  v58[2] = sub_100750A7C;
  v58[3] = &unk_100B0B560;
  uuid_copy(v62, src);
  v18 = a6[1];
  v59 = *a6;
  v60 = v18;
  v19 = 7;
  v61 = 7;
  sub_10074063C(a1, v58);
LABEL_69:

  return v19;
}

void sub_100077EE4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1000088CC(va);

  _Unwind_Resume(a1);
}

BOOL sub_100077F24(uint64_t a1, unint64_t a2, const unsigned __int8 *a3)
{
  v13[0] = 0;
  v13[1] = 0;
  sub_100007F88(v13, a1 + 120);
  v6 = *(a1 + 696);
  if (!v6)
  {
    goto LABEL_9;
  }

  v7 = a1 + 696;
  do
  {
    v8 = *(v6 + 32);
    v9 = v8 >= a2;
    v10 = v8 < a2;
    if (v9)
    {
      v7 = v6;
    }

    v6 = *(v6 + 8 * v10);
  }

  while (v6);
  if (v7 == a1 + 696 || *(v7 + 32) > a2)
  {
LABEL_9:
    v7 = a1 + 696;
  }

  v11 = uuid_compare((v7 + 40), a3) == 0;
  sub_1000088CC(v13);
  return v11;
}

void sub_100077FE0(uint64_t a1, void *a2, uint64_t a3)
{
  *a3 = 138543618;
  *(a3 + 4) = a1;
  *(a3 + 12) = 2114;
  *(a3 + 14) = a2;
  sub_100075D54();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);
}

uint64_t sub_100078044(uint64_t result, unint64_t a2)
{
  v10 = a2;
  v2 = *(result + 192);
  v9 = (result + 200);
  if (v2 != (result + 200))
  {
    do
    {
      v3 = v2[20];
      if (v3 != v2 + 21)
      {
        do
        {
          result = sub_100075DC4(v3 + 5, &v10);
          if (!v3[7])
          {
            operator new();
          }

          v4 = v3[1];
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
              v5 = v3[2];
              v6 = *v5 == v3;
              v3 = v5;
            }

            while (!v6);
          }

          v3 = v5;
        }

        while (v5 != v2 + 21);
      }

      v7 = v2[1];
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
          v8 = v2[2];
          v6 = *v8 == v2;
          v2 = v8;
        }

        while (!v6);
      }

      v2 = v8;
    }

    while (v8 != v9);
  }

  return result;
}

void sub_100078270(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v12 = a10;
  a10 = 0;
  if (v12)
  {
    sub_100713478(&a10, v12);
  }

  v13 = a11;
  a11 = 0;
  if (v13)
  {
    sub_100713478(&a11, v13);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000782D0(uint64_t a1, unint64_t a2)
{
  if (sub_10005D040(a1, a2, 0))
  {
    if (qword_100B51088 != -1)
    {
      sub_100823E14();
    }

    v3 = qword_100B51080;

    sub_100078364(v3, a2);
  }

  else if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_ERROR))
  {
    sub_100823E28();
  }
}

void sub_100078364(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) & 1) != 0 || (*(a1 + 18))
  {
    if (a2)
    {
      sub_100018384(a2, buf);
      if (v39 >= 0)
      {
        v4 = buf;
      }

      else
      {
        v4 = *buf;
      }

      v22 = [NSString stringWithUTF8String:v4];
      if (SHIBYTE(v39) < 0)
      {
        operator delete(*buf);
      }

      if (v22)
      {
        v5 = [*(a1 + 48) objectForKeyedSubscript:?];
        v6 = [v5 allObjects];

        v7 = qword_100BCEA48;
        if (os_log_type_enabled(qword_100BCEA48, OS_LOG_TYPE_DEFAULT))
        {
          v8 = *(a1 + 48);
          *buf = 138543874;
          *&buf[4] = v22;
          v37 = 2114;
          v38 = v6;
          v39 = 2114;
          v40 = v8;
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "stopTrackingForSession: %{public}@ for tracking devices %{public}@ from requests %{public}@", buf, 0x20u);
        }

        v32 = 0u;
        v33 = 0u;
        v30 = 0u;
        v31 = 0u;
        obj = v6;
        v9 = [obj countByEnumeratingWithState:&v30 objects:v35 count:16];
        if (v9)
        {
          v24 = *v31;
          do
          {
            v25 = v9;
            for (i = 0; i != v25; i = i + 1)
            {
              if (*v31 != v24)
              {
                objc_enumerationMutation(obj);
              }

              v11 = *(*(&v30 + 1) + 8 * i);
              v26 = 0u;
              v27 = 0u;
              v28 = 0u;
              v29 = 0u;
              v12 = [v11 appleTypes];
              v13 = [v12 allObjects];

              v14 = [v13 countByEnumeratingWithState:&v26 objects:v34 count:16];
              if (v14)
              {
                v15 = *v27;
                do
                {
                  for (j = 0; j != v14; j = j + 1)
                  {
                    if (*v27 != v15)
                    {
                      objc_enumerationMutation(v13);
                    }

                    v17 = *(*(&v26 + 1) + 8 * j);
                    v18 = [v11 deviceUUID];
                    sub_1006A3C98(a1, a2, v18, [v17 intValue]);
                  }

                  v14 = [v13 countByEnumeratingWithState:&v26 objects:v34 count:16];
                }

                while (v14);
              }
            }

            v9 = [obj countByEnumeratingWithState:&v30 objects:v35 count:16];
          }

          while (v9);
        }

        v19 = qword_100BCEA48;
        if (os_log_type_enabled(qword_100BCEA48, OS_LOG_TYPE_DEFAULT))
        {
          v20 = *(a1 + 48);
          v21 = *(a1 + 56);
          *buf = 138543618;
          *&buf[4] = v20;
          v37 = 2114;
          v38 = v21;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Now tracking %{public}@ with devices %{public}@", buf, 0x16u);
        }
      }

      else if (os_log_type_enabled(qword_100BCEA48, OS_LOG_TYPE_ERROR))
      {
        sub_10085E1AC();
      }
    }

    else if (os_log_type_enabled(qword_100BCEA48, OS_LOG_TYPE_ERROR))
    {
      sub_10085E1E0();
    }
  }

  else if (os_log_type_enabled(qword_100BCEA48, OS_LOG_TYPE_ERROR))
  {
    sub_10085E178();
  }
}

void sub_1000787AC(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 232);
  v3 = a1 + 232;
  v4 = v5;
  if (!v5)
  {
    goto LABEL_33;
  }

  v6 = v3;
  do
  {
    v7 = *(v4 + 32);
    v8 = v7 >= a2;
    v9 = v7 < a2;
    if (v8)
    {
      v6 = v4;
    }

    v4 = *(v4 + 8 * v9);
  }

  while (v4);
  if (v6 != v3 && *(v6 + 32) <= a2)
  {
    v10 = (*(**(v6 + 40) + 16))(*(v6 + 40));
    v11 = *(v6 + 40);
    if (v10 == 3)
    {
      if (v11 && *(v11 + 200))
      {
        if (qword_100B50F88 != -1)
        {
          sub_100823720();
        }

        sub_1006DB54C(off_100B50F80, *(v11 + 200));
        *(v11 + 200) = 0;
      }

      else if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_ERROR))
      {
        sub_100823EA0();
      }
    }

    else if (*(v11 + 32))
    {
      v12 = qword_100BCE988;
      if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEFAULT))
      {
        sub_100018384(a2, __p);
        if (v15 >= 0)
        {
          v13 = __p;
        }

        else
        {
          v13 = __p[0];
        }

        *buf = 136446210;
        v17 = v13;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Unregistering pairing agent for session %{public}s", buf, 0xCu);
        if (v15 < 0)
        {
          operator delete(__p[0]);
        }

        v11 = *(v6 + 40);
      }

      *(v11 + 32) = 0;
      if (qword_100B508C0 != -1)
      {
        sub_100823A38();
      }

      sub_1007C0C98(off_100B508B8, a2);
    }
  }

  else
  {
LABEL_33:
    if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_FAULT))
    {
      sub_100823EDC();
    }
  }
}

void sub_1000789C0(uint64_t **a1, unint64_t a2, void *a3)
{
  v15 = a2;
  v4 = a3;
  v14[0] = 0;
  v14[1] = 0;
  sub_100007F88(v14, (a1 + 1));
  __p = 0;
  v12 = 0;
  v13 = 0;
  sub_100007E30(&__p, [v4 UTF8String]);
  v5 = sub_10000EEB8((a1 + 12), &__p);
  v6 = v5;
  if (a1 + 13 != v5)
  {
    sub_100075DC4((v5 + 56), &v15);
    if (!v6[9])
    {
      ((*a1)[13])(a1, v15);
      sub_10002717C(a1 + 12, v6);
      sub_10039D44C((v6 + 4));
      operator delete(v6);
      v7 = objc_autoreleasePoolPush();
      v8 = +[BTAppInteraction instance];
      if (v13 >= 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p;
      }

      v10 = [NSString stringWithUTF8String:p_p, __p, v12, v13];
      [v8 unregisterApplication:v10];

      objc_autoreleasePoolPop(v7);
    }
  }

  if (SHIBYTE(v13) < 0)
  {
    operator delete(__p);
  }

  sub_1000088CC(v14);
}

void sub_100078B20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_1000088CC(&a15);

  _Unwind_Resume(a1);
}

uint64_t sub_100078B70(uint64_t a1, __int128 *a2, char a3)
{
  *a1 = 1;
  v5 = a1 + 8;
  if (*(a2 + 23) < 0)
  {
    sub_100008904(v5, *a2, *(a2 + 1));
  }

  else
  {
    v6 = *a2;
    *(v5 + 16) = *(a2 + 2);
    *v5 = v6;
  }

  *(a1 + 32) = a3;
  return a1;
}

void sub_100078BCC(uint64_t a1)
{
  if (*(a1 + 178) == 1)
  {
    v2 = +[NSMutableDictionary dictionary];
    v3 = +[NSMutableDictionary dictionary];
    v4 = +[NSMutableDictionary dictionary];
    v5 = *(a1 + 224);
    if (v5 != (a1 + 232))
    {
      do
      {
        v6 = (*(*v5[5] + 16))(v5[5]);
        v7 = v5[5];
        if (v6)
        {
          if ((*(*v7 + 16))(v5[5]) == 1)
          {
            v8 = v5[5];
            if (*(v8 + 24) == 1 && *(v8 + 96) && (*(*v8 + 40))(v5[5]))
            {
              v9 = (*(*v8 + 48))(v8);
              if (v9)
              {
                v10 = [NSString stringWithFormat:@"%@ - %@", *(v8 + 88), *(v8 + 96)];
                [v4 setObject:v9 forKey:v10];
                goto LABEL_15;
              }

              goto LABEL_16;
            }
          }
        }

        else if (*(v7 + 24) == 1 && *(v7 + 96) && (*(*v7 + 40))(v5[5]))
        {
          v9 = (*(*v7 + 48))(v7);
          if (v9)
          {
            v10 = [NSString stringWithFormat:@"%@ - %@", *(v7 + 88), *(v7 + 96)];
            [v3 setObject:v9 forKey:v10];
LABEL_15:
          }

LABEL_16:
        }

        v11 = v5[1];
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
            v12 = v5[2];
            v13 = *v12 == v5;
            v5 = v12;
          }

          while (!v13);
        }

        v5 = v12;
      }

      while (v12 != (a1 + 232));
    }

    if ([v3 count])
    {
      [v2 setObject:v3 forKey:@"centralSessions"];
    }

    if ([v4 count])
    {
      [v2 setObject:v4 forKey:@"peripheralSessions"];
    }

    v14 = [v2 count];
    v15 = qword_100BCE9E0;
    v16 = os_log_type_enabled(qword_100BCE9E0, OS_LOG_TYPE_DEFAULT);
    if (v14)
    {
      if (v16)
      {
        v17 = sub_1003B40F0();
        v18 = [v17 absoluteString];
        *buf = 138412290;
        v24 = v18;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Writing restoration data to %@", buf, 0xCu);
      }

      v19 = sub_1003B40F0();
      [v2 writeToURL:v19 error:0];
    }

    else
    {
      if (v16)
      {
        v20 = sub_1003B40F0();
        v21 = [v20 absoluteString];
        *buf = 138412290;
        v24 = v21;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "No more restorable session data, removing restoration data at %@", buf, 0xCu);
      }

      v19 = +[NSFileManager defaultManager];
      v22 = sub_1003B40F0();
      [v19 removeItemAtURL:v22 error:0];
    }
  }
}

uint64_t sub_100079088(uint64_t a1)
{
  *a1 = off_100AFA978;
  sub_100079384(a1);
  sub_100079384(a1);
  v2 = *(a1 + 224);
  *(a1 + 224) = 0;

  v3 = *(a1 + 232);
  *(a1 + 232) = 0;

  v4 = *(a1 + 384);
  *(a1 + 384) = 0;

  v5 = *(a1 + 312);
  *(a1 + 312) = 0;

  sub_100079450(a1 + 288, *(a1 + 296));
  *(a1 + 296) = 0;
  *(a1 + 304) = 0;
  *(a1 + 288) = a1 + 296;
  sub_1000794B4(a1 + 424, *(a1 + 432));
  *(a1 + 432) = 0;
  *(a1 + 440) = 0;
  *(a1 + 424) = a1 + 432;
  v6 = *(a1 + 320);
  *(a1 + 320) = 0;

  v7 = *(a1 + 376);
  if (v7)
  {
    (*(*v7 + 8))(v7);
    *(a1 + 376) = 0;
  }

  v8 = *(a1 + 416);
  if (v8)
  {
    dispatch_source_cancel(v8);
    dispatch_release(*(a1 + 416));
    *(a1 + 416) = 0;
  }

  sub_10005CFE4(a1 + 392, *(a1 + 400));
  *(a1 + 400) = 0;
  *(a1 + 408) = 0;
  *(a1 + 392) = a1 + 400;
  if (*(a1 + 352) >= 1)
  {
    if (qword_100B512F8 != -1)
    {
      sub_10083AC88();
    }

    sub_1003B2518(off_100B512F0, *(a1 + 88), 0);
  }

  sub_1000794B4(a1 + 424, *(a1 + 432));
  sub_10005CFE4(a1 + 392, *(a1 + 400));

  sub_100079450(a1 + 288, *(a1 + 296));
  sub_100079510(a1 + 248, *(a1 + 256));

  return sub_10007956C(a1);
}

void sub_100079290(_Unwind_Exception *a1)
{
  sub_1000794B4(v1 + 424, *(v1 + 432));
  sub_10005CFE4(v1 + 392, *(v1 + 400));

  sub_100079450(v1 + 288, *(v1 + 296));
  sub_100079510(v1 + 248, *(v1 + 256));

  sub_10007956C(v1);
  _Unwind_Resume(a1);
}

void sub_10007934C(uint64_t a1)
{
  sub_100079088(a1);

  operator delete();
}

void sub_100079384(uint64_t a1)
{
  if (*(a1 + 472))
  {
    v2 = sub_100007EE8();
    if (sub_10057127C(v2))
    {
      [*(a1 + 472) setEventHandler:0];
      [*(a1 + 472) invalidate];
      v3 = *(a1 + 472);
      *(a1 + 472) = 0;
    }

    else
    {
      v4 = sub_100007EE8();
      v5[0] = _NSConcreteStackBlock;
      v5[1] = 3221225472;
      v5[2] = sub_100500034;
      v5[3] = &unk_100ADF8F8;
      v5[4] = a1;
      sub_10000D334(v4, v5);
    }
  }
}

void sub_100079450(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_100079450(a1, *a2);
    sub_100079450(a1, a2[1]);

    operator delete(a2);
  }
}

void sub_1000794B4(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_1000794B4(a1, *a2);
    sub_1000794B4(a1, a2[1]);
    sub_100506390((a2 + 4));

    operator delete(a2);
  }
}

void sub_100079510(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_100079510(a1, *a2);
    sub_100079510(a1, a2[1]);

    operator delete(a2);
  }
}

uint64_t sub_10007956C(uint64_t a1)
{
  *a1 = off_100AFA8C0;
  v2 = *(a1 + 80);
  *(a1 + 80) = 0;

  v3 = *(a1 + 112);
  *(a1 + 112) = 0;

  sub_10005CFE4(a1 + 160, *(a1 + 168));
  sub_10005CFE4(a1 + 136, *(a1 + 144));

  return a1;
}

uint64_t sub_100079604(uint64_t a1, unint64_t a2)
{
  v14[0] = 0;
  v14[1] = 0;
  sub_100007F88(v14, a1 + 40);
  if (*(a1 + 108))
  {
    if (a2)
    {
      v4 = sub_1000117DC(a1, a2);
      v5 = qword_100BCE8D8;
      if (v4)
      {
        if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218240;
          v16 = v4;
          v17 = 2048;
          v18 = a2;
          _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Detach session: %p, session handle: %p", buf, 0x16u);
        }

        sub_10000801C(v14);
        sub_1000798B0(a1, v4);
        sub_100007FB8(v14);
        v6 = *(a1 + 120);
        if (v6 != a1 + 128)
        {
          while (*(v6 + 56) != v4)
          {
            v7 = *(v6 + 8);
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
                v8 = *(v6 + 16);
                v9 = *v8 == v6;
                v6 = v8;
              }

              while (!v9);
            }

            v6 = v8;
            if (v8 == (a1 + 128))
            {
              goto LABEL_28;
            }
          }

          v11 = qword_100BCE8D8;
          if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
          {
            v12 = (v6 + 32);
            if (*(v6 + 55) < 0)
            {
              v12 = *v12;
            }

            *buf = 134218242;
            v16 = v4;
            v17 = 2082;
            v18 = v12;
            _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Erasing session %p from SessionMap for %{public}s", buf, 0x16u);
          }

          sub_100079DEC((a1 + 120), v6);
        }

LABEL_28:
        sub_100079E30(v4);
        sub_100079E80(a1, a2);
        sub_10007A064(v4);
        operator delete();
      }

      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
      {
        sub_100853938();
      }
    }

    else if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
    {
      sub_10085396C();
    }

    v10 = 7;
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
    {
      sub_100853904();
    }

    v10 = 1;
  }

  sub_1000088CC(v14);
  return v10;
}

void sub_1000798B0(uint64_t a1, uint64_t a2)
{
  v4 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    sub_100018384(a2, __p);
    if (v8 >= 0)
    {
      v5 = __p;
    }

    else
    {
      v5 = __p[0];
    }

    *buf = 136446210;
    v10 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Sending 'session detached' event for session %{public}s", buf, 0xCu);
    if (v8 < 0)
    {
      operator delete(__p[0]);
    }
  }

  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000799E4;
  v6[3] = &unk_100B023E8;
  v6[4] = a2;
  sub_1000116C8(a1 + 8, v6);
}

uint64_t sub_1000799E4(uint64_t a1, uint64_t a2)
{
  v3 = sub_100011794(*(a1 + 32));
  v4 = *(*a2 + 8);

  return v4(a2, v3);
}

uint64_t sub_100079A48(uint64_t a1, uint64_t a2)
{
  v14[0] = 0;
  v14[1] = 0;
  sub_100007F88(v14, a1 + 48);
  v6 = *(a1 + 112);
  v4 = (a1 + 112);
  v5 = v6;
  if (v6 != (v4 + 1))
  {
    do
    {
      v7 = v5[4];
      if (qword_100B50B88 != -1)
      {
        sub_100843820();
      }

      v8 = sub_100076290(qword_100B50B80, v7);
      v9 = v5[1];
      if (v8 == a2)
      {
        v12 = v5;
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
            v10 = v12[2];
            v11 = *v10 == v12;
            v12 = v10;
          }

          while (!v11);
        }

        sub_10002717C(v4, v5);
        operator delete(v5);
        if (qword_100B50B88 != -1)
        {
          sub_100843820();
        }

        sub_1006189DC(qword_100B50B80, v7);
      }

      else if (v9)
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
          v10 = v5[2];
          v11 = *v10 == v5;
          v5 = v10;
        }

        while (!v11);
      }

      v5 = v10;
    }

    while (v10 != v4 + 1);
  }

  return sub_1000088CC(v14);
}

uint64_t sub_100079BB8(uint64_t a1, uint64_t a2)
{
  v6[0] = 0;
  v6[1] = 0;
  sub_100007F88(v6, a1 + 320);
  v4 = sub_100079C2C(*(a1 + 384), *(a1 + 392), a2);
  sub_100079CA4((a1 + 384), v4, *(a1 + 392));
  return sub_1000088CC(v6);
}

uint64_t sub_100079C2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = a2;
  if (a1 != a2)
  {
    result = a1;
    while (*result != a3)
    {
      result += 32;
      if (result == a2)
      {
        result = a2;
        break;
      }
    }

    if (result != a2)
    {
      for (i = result + 32; i != a2; i += 32)
      {
        if (*i != a3)
        {
          v6 = *(i + 8);
          *result = *i;
          *(result + 8) = v6;
          *(result + 16) = *(i + 16);
          *(result + 24) = *(i + 24);
          result += 32;
        }
      }
    }
  }

  return result;
}

uint64_t sub_100079CA4(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a3 != a2)
  {
    v3 = a1[1];
    if (a3 == v3)
    {
      v9 = a2;
    }

    else
    {
      v4 = *a1;
      v5 = -*a1;
      v6 = *a1 + a2;
      v7 = *a1 + a3;
      do
      {
        v8 = v6 + v5;
        *v8 = *(v7 + v5);
        *(v8 + 16) = *(v7 + v5 + 16);
        *(v8 + 24) = *(v7 + v5 + 24);
        v6 += 32;
        v7 += 32;
      }

      while (v7 + v5 != v3);
      v9 = v6 - v4;
    }

    a1[1] = v9;
  }

  return a2;
}

void sub_100079D28(void *a1, uint64_t a2)
{
  v2 = a1[113];
  v3 = a1[114];
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v4 = a1[32];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3321888768;
  block[2] = sub_10007A0D0;
  block[3] = &unk_100B02DD8;
  block[4] = v2;
  v6 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v7 = a2;
  dispatch_async(v4, block);
  if (v6)
  {
    std::__shared_weak_count::__release_weak(v6);
  }

  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }
}

uint64_t *sub_100079DEC(uint64_t **a1, uint64_t a2)
{
  v3 = sub_10002717C(a1, a2);
  if (*(a2 + 55) < 0)
  {
    operator delete(*(a2 + 32));
  }

  operator delete(a2);
  return v3;
}

uint64_t sub_100079E30(uint64_t a1)
{
  v3[0] = 0;
  v3[1] = 0;
  sub_100007F88(v3, a1);
  *(a1 + 72) = 1;
  *(a1 + 64) = 0;
  *(a1 + 137) = 0;
  return sub_1000088CC(v3);
}

void sub_100079E80(void *a1, unint64_t a2)
{
  if (a2)
  {
    v4 = a1 + 19;
    v3 = a1[19];
    if (v3)
    {
      v6 = (a1 + 18);
      v7 = a1 + 19;
      do
      {
        v8 = v3[4];
        v9 = v8 >= a2;
        v10 = v8 < a2;
        if (v9)
        {
          v7 = v3;
        }

        v3 = v3[v10];
      }

      while (v3);
      if (v7 != v4 && v7[4] <= a2)
      {
        sub_10002717C(a1 + 18, v7);
        operator delete(v7);
        v11 = *v6;
        if (*v6 != v4)
        {
          do
          {
            if (v11[5] == a2)
            {
              v11[5] = 0;
            }

            v12 = v11[1];
            if (v12)
            {
              do
              {
                v13 = v12;
                v12 = *v12;
              }

              while (v12);
            }

            else
            {
              do
              {
                v13 = v11[2];
                v14 = *v13 == v11;
                v11 = v13;
              }

              while (!v14);
            }

            v11 = v13;
          }

          while (v13 != v4);
        }

        v17 = a1[22];
        v16 = a1 + 22;
        v15 = v17;
        if (!v17)
        {
          goto LABEL_28;
        }

        v18 = v16;
        do
        {
          v19 = v15[4];
          v9 = v19 >= a2;
          v20 = v19 < a2;
          if (v9)
          {
            v18 = v15;
          }

          v15 = v15[v20];
        }

        while (v15);
        if (v18 == v16 || v18[4] > a2)
        {
LABEL_28:
          v18 = v16;
        }

        sub_10002717C(v16 - 1, v18);

        operator delete(v18);
      }
    }
  }
}

uint64_t sub_100079FD0(uint64_t a1)
{
  v3[0] = 0;
  v3[1] = 0;
  sub_100007F88(v3, a1);
  sub_1000088CC(v3);
  sub_10000CEDC(a1 + 104, *(a1 + 112));
  if (*(a1 + 103) < 0)
  {
    operator delete(*(a1 + 80));
  }

  return sub_10007A068(a1);
}

void sub_10007A034(_Unwind_Exception *a1)
{
  sub_10000CEDC(v1 + 104, *(v1 + 112));
  if (*(v1 + 103) < 0)
  {
    operator delete(*(v1 + 80));
  }

  sub_10007A068(v1);
  _Unwind_Resume(a1);
}

pthread_mutex_t *sub_10007A06C(pthread_mutex_t *a1)
{
  if (pthread_mutex_destroy(a1) && os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_FAULT))
  {
    sub_10081E434();
  }

  return a1;
}

void sub_10007A0D0(void *a1)
{
  v2 = a1[5];
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = a1[4];
      if (v5)
      {
        sub_1003A6370(v5, a1[6]);
      }

      sub_100117644(v4);
    }
  }
}

uint64_t sub_10007A148(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_10007A174(uint64_t a1)
{
  *a1 = off_100B041A0;
  *(a1 + 144) = off_100B04378;
  *(a1 + 152) = off_100B044B8;
  v2 = a1 + 160;
  *(a1 + 160) = &off_100B044F0;
  v3 = a1 + 208;
  v4 = *(a1 + 208);
  v5 = (a1 + 216);
  if (v4 != (a1 + 216))
  {
    do
    {
      v6 = v4[6];
      if (v6 != v4 + 7)
      {
        do
        {
          v7 = v6[4];
          if (v7)
          {
            (*(*v7 + 8))(v7);
          }

          v8 = v6[1];
          if (v8)
          {
            do
            {
              v9 = v8;
              v8 = *v8;
            }

            while (v8);
          }

          else
          {
            do
            {
              v9 = v6[2];
              v10 = *v9 == v6;
              v6 = v9;
            }

            while (!v10);
          }

          v6 = v9;
        }

        while (v9 != v4 + 7);
      }

      v11 = v4[1];
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
          v12 = v4[2];
          v10 = *v12 == v4;
          v4 = v12;
        }

        while (!v10);
      }

      v4 = v12;
    }

    while (v12 != v5);
  }

  if (qword_100B54770 != -1)
  {
    sub_10085650C();
  }

  sub_10007A3F0(off_100B54768 + 176, v2);
  v16 = (a1 + 288);
  sub_1000161FC(&v16);
  v13 = *(a1 + 264);
  if (v13)
  {
    *(a1 + 272) = v13;
    operator delete(v13);
  }

  v14 = *(a1 + 240);
  if (v14)
  {
    *(a1 + 248) = v14;
    operator delete(v14);
  }

  sub_10007A490(v3, *(a1 + 216));
  return sub_10007A588(a1);
}

void sub_10007A368(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  a10 = (v10 + 288);
  sub_1000161FC(&a10);
  v13 = *(v10 + 264);
  if (v13)
  {
    *(v10 + 272) = v13;
    operator delete(v13);
  }

  sub_100856520(v10);

  sub_10007A490(v11, *(v10 + 216));
  sub_10007A588(v10);
  _Unwind_Resume(a1);
}

void sub_10007A3B8(uint64_t a1)
{
  sub_10007A174(a1);

  operator delete();
}

void sub_10007A3F0(uint64_t a1, uint64_t a2)
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
        goto LABEL_9;
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
  }

LABEL_9:

  os_unfair_lock_unlock(a1);
}

void sub_10007A490(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_10007A490(a1, *a2);
    sub_10007A490(a1, a2[1]);
    sub_10000CEDC((a2 + 6), a2[7]);

    operator delete(a2);
  }
}

void sub_10007A4F0(uint64_t a1)
{
  os_unfair_lock_lock(a1);
  v2 = *(a1 + 16);
  if (!v2)
  {
    os_unfair_lock_unlock(a1);
    sub_10007A8EC(a1);

    operator delete();
  }

  dispatch_set_finalizer_f(v2, sub_10007A888);
  sub_10007A668(a1);

  os_unfair_lock_unlock(a1);
}

uint64_t sub_10007A588(uint64_t a1)
{
  *a1 = &off_100AEE4E0;
  v2 = *(a1 + 32);
  if (v2)
  {
    sub_10007A4F0(v2);
  }

  if (qword_100B54110 != -1)
  {
    sub_1008209FC();
  }

  sub_10007A6A0(qword_100B54108, *(a1 + 40));

  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  return a1;
}

void sub_10007A62C(_Unwind_Exception *a1)
{
  if (*(v1 + 79) < 0)
  {
    operator delete(*(v1 + 56));
  }

  _Unwind_Resume(a1);
}

void sub_10007A668(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    dispatch_source_cancel(v2);
    dispatch_release(*(a1 + 16));
    *(a1 + 16) = 0;
  }
}

void sub_10007A6A0(uint64_t a1, int a2)
{
  v2 = *(a1 + 32);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10007A718;
  v3[3] = &unk_100ADF940;
  v3[4] = a1;
  v4 = a2;
  dispatch_async(v2, v3);
}

void sub_10007A718(uint64_t a1)
{
  v2 = *(a1 + 32);
  os_unfair_lock_lock(v2);
  v3 = *(v2 + 16);
  if (!v3)
  {
    goto LABEL_8;
  }

  v4 = *(a1 + 40);
  v5 = v2 + 16;
  do
  {
    if (*(v3 + 32) >= v4)
    {
      v5 = v3;
    }

    v3 = *(v3 + 8 * (*(v3 + 32) < v4));
  }

  while (v3);
  if (v5 == v2 + 16 || v4 < *(v5 + 32))
  {
LABEL_8:
    v6 = qword_100BCE950;
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_FAULT))
    {
      sub_100863E40(v6);
    }

    v5 = v2 + 16;
  }

  v7 = *(v5 + 40);
  if (!v7)
  {
    v9 = qword_100BCE950;
    if (!os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_FAULT))
    {
      *(v5 + 40) = -1;
      goto LABEL_16;
    }

    v10 = 136446210;
    v11 = "clientInfo.numConnections > 0";
    _os_log_fault_impl(&_mh_execute_header, v9, OS_LOG_TYPE_FAULT, "Assertion failed: %{public}s", &v10, 0xCu);
    v7 = *(v5 + 40);
  }

  v8 = v7 - 1;
  *(v5 + 40) = v8;
  if (!v8)
  {
    dispatch_release(*(v5 + 48));
    sub_10002717C((v2 + 8), v5);
    operator delete(v5);
  }

LABEL_16:
  os_unfair_lock_unlock(v2);
}

void sub_10007A888(os_unfair_lock_s *a1)
{
  os_unfair_lock_lock(a1);
  os_unfair_lock_unlock(a1);
  if (a1)
  {
    sub_10007A8EC(a1);

    operator delete();
  }
}

uint64_t sub_10007A8EC(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2)
  {
    dispatch_release(v2);
    *(a1 + 56) = 0;
  }

  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  return a1;
}

uint64_t sub_10007A930(unsigned __int8 *a1, _BYTE *a2)
{
  if (!*a1)
  {
    return 0;
  }

  sub_10007A978(a2, a1, 0);
  return *a1;
}

void sub_10007A978(_BYTE *a1, unsigned __int8 *a2, int a3)
{
  v4 = *a2;
  switch(v4)
  {
    case 16:
      if (a3 == 1)
      {
        *a1 = a2[19];
        a1[1] = a2[18];
        a1[2] = a2[17];
        a1[3] = a2[16];
        a1[4] = a2[15];
        a1[5] = a2[14];
        a1[6] = a2[13];
        a1[7] = a2[12];
        a1[8] = a2[11];
        a1[9] = a2[10];
        a1[10] = a2[9];
        a1[11] = a2[8];
        a1[12] = a2[7];
        a1[13] = a2[6];
        a1[14] = a2[5];
        a1[15] = a2[4];
      }

      else
      {
        *a1 = *(a2 + 4);
      }

      break;
    case 4:
      v7 = *(a2 + 1);
      if (a3 == 1)
      {
        *a1 = v7;
        a1[1] = BYTE1(*(a2 + 1));
        a1[2] = *(a2 + 3);
        a1[3] = a2[7];
      }

      else
      {
        a1[3] = v7;
        a1[2] = BYTE1(*(a2 + 1));
        a1[1] = *(a2 + 3);
        *a1 = a2[7];
      }

      break;
    case 2:
      v5 = *(a2 + 2);
      if (a3 == 1)
      {
        *a1 = v5;
        v6 = a2[5];
      }

      else
      {
        *a1 = HIBYTE(v5);
        v6 = a2[4];
      }

      a1[1] = v6;
      break;
    default:
      if (sub_10000C240())
      {
        sub_10000AF54("Invalid UUID length of %d when copying to array", v8, v9, v10, v11, v12, v13, v14, *a2);
        v15 = sub_10000C050(0x42u);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          sub_1000E09C0();
        }
      }

      break;
  }
}

void sub_10007AB18(unsigned __int8 *a1)
{
  v2 = qword_100BCE918;
  if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_INFO))
  {
    v3 = sub_10003663C(a1);
    v4 = a1[144];
    v15 = 67109376;
    v16 = v3;
    v17 = 1024;
    v18 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "enableObjectDiscoveryADVBuffersIfNeeded objectDiscoveryHwAdvBufferOnly:%d fScreenState:%d", &v15, 0xEu);
  }

  if (sub_10003663C(a1) && (a1[144] & 1) == 0)
  {
    v5 = qword_100BCE918;
    if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
    {
      v6 = a1[172];
      v7 = a1[167];
      v8 = a1[168];
      v15 = 67109632;
      v16 = v6;
      v17 = 1024;
      v18 = v7;
      v19 = 1024;
      v20 = v8;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "exptectedEntries:%d created:%d enabled:%d", &v15, 0x14u);
    }

    if (a1[172] == 255 && a1[167] == 1 && (a1[168] & 1) == 0)
    {
      v9 = sub_1007A1858(a1, 0, 1);
      if (v9)
      {
        v10 = v9;
        v11 = qword_100BCE918;
        if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_INFO))
        {
          v15 = 67109120;
          v16 = v10;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "enableADVBuffering(Wild) failed with result %d", &v15, 8u);
        }
      }

      else
      {
        sub_1007A3658(a1);
      }
    }

    if (a1[716] == 255 && a1[711] == 1 && (a1[712] & 1) == 0)
    {
      v12 = sub_1007A1858(a1, 1, 1);
      if (v12)
      {
        v13 = v12;
        v14 = qword_100BCE918;
        if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_INFO))
        {
          v15 = 67109120;
          v16 = v13;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "enableADVBuffering(NO) failed with result %d", &v15, 8u);
        }
      }

      else
      {
        sub_1007A3658(a1);
      }
    }
  }
}

uint64_t sub_10007AD70(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1004961A0;
  block[3] = &unk_100ADF8F8;
  block[4] = a1;
  if (qword_100B6E3C8 != -1)
  {
    dispatch_once(&qword_100B6E3C8, block);
  }

  return byte_100B6E3C0;
}

void sub_10007AE00(uint64_t a1)
{
  if (*(a1 + 2744) == 0.0)
  {
    *(a1 + 2744) = CFAbsoluteTimeGetCurrent();
    v2 = *(a1 + 144);
    *(a1 + 2752) = v2;
    v3 = (a1 + 176 * v2);
    v4 = v3 + 598;
    ++v3[620];
    if (*(a1 + 1857) == 1)
    {
      ++v3[621];
      v5 = 24;
    }

    else
    {
      v5 = 26;
    }

    ++v4[v5];
    if (*(a1 + 1859) == 1)
    {
      ++v4[28];
    }

    if (*(a1 + 1860) == 1)
    {
      ++v4[30];
    }

    if (*(a1 + 1861) == 1)
    {
      ++v4[31];
    }

    if (*(a1 + 1862) == 1)
    {
      ++v4[29];
    }

    if (*(a1 + 1863) == 1)
    {
      ++v4[32];
    }

    if (*(a1 + 2753) == 1)
    {
      ++v4[37];
    }

    if (*(a1 + 2754) == 1)
    {
      ++v4[40];
    }
  }

  else if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEBUG))
  {
    sub_100874638();
  }
}

uint64_t sub_10007AFA4(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  v5 = 101;
  if (a2 <= 2 && a5 <= 0xF)
  {
    if (off_100B605D8)
    {
      v5 = off_100B605D8();
      if (!v5)
      {
        return v5;
      }
    }

    else
    {
      v5 = 3601;
    }

    if (sub_10000C240())
    {
      sub_10000AF54("VSC failed %!", v6, v7, v8, v9, v10, v11, v12, v5);
      v13 = sub_10000C050(0x54u);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        sub_10080F604();
      }
    }
  }

  return v5;
}

void sub_10007B044(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 1984))
  {
    if (a2)
    {
      if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_ERROR))
      {
        sub_1008765C0();
      }

      v34 = sub_10000E92C();
      sub_100007E30(v35, "");
      sub_100693260(v34, a2, v35, 1);
    }

    v37 = 0;
    v4 = sub_10000C798();
    if ((*(*v4 + 608))(v4))
    {
      v5 = sub_10000C7D0();
      (*(*v5 + 1016))(v5, &v37);
    }

    v6 = qword_100BCE918;
    if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 2120);
      *buf = 134218240;
      *&buf[4] = v7;
      *&buf[12] = 1024;
      *&buf[14] = v37;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Scanning stopped successfully.  %llu Advertising Events, %u dropped pkts", buf, 0x12u);
    }

    v8 = *(a1 + 1856);
    v9 = *(a1 + 1988);
    if ((v8 & 1) != 0 || v9 == 1)
    {
      v10 = v8 ^ 1;
      if (v9 == 1)
      {
        v11 = 1;
      }

      else
      {
        v11 = v10;
      }

      sub_100076D38(a1, v11);
    }

    sub_10007C438(a1, 1u);
    v12 = qword_100BCE918;
    if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
    {
      v13 = *(a1 + 1984);
      if (v13 > 4)
      {
        v14 = "UNKNOWN";
      }

      else
      {
        v14 = off_100B0D700[v13];
      }

      v16 = *(a1 + 1988);
      if (v16 > 3)
      {
        v17 = "UNKNOWN";
      }

      else
      {
        v17 = off_100B0D728[v16];
      }

      *buf = 136446466;
      *&buf[4] = v14;
      *&buf[12] = 2082;
      *&buf[14] = v17;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "handleScanStoppedEvent state=%{public}s observerState=%{public}s", buf, 0x16u);
    }

    v18 = *(a1 + 2088);
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x4812000000;
    v40 = sub_1000424E4;
    v41 = sub_1000426BC;
    v42 = "";
    v44[0] = 0;
    v44[1] = 0;
    v43 = v44;
    if (v18 != (a1 + 2096))
    {
      v19 = (a1 + 2072);
      do
      {
        memset(dst, 0, sizeof(dst));
        uuid_copy(dst, v18 + 32);
        v20 = *(a1 + 2064);
        if (v20 == v19)
        {
LABEL_41:
          sub_1000C73A4(*&buf[8] + 48, dst);
          v29 = *(v18 + 1);
          v30 = v18;
          if (v29)
          {
            do
            {
              v28 = v29;
              v29 = *v29;
            }

            while (v29);
          }

          else
          {
            do
            {
              v28 = *(v30 + 2);
              v26 = *v28 == v30;
              v30 = v28;
            }

            while (!v26);
          }

          sub_1000C7538((a1 + 2088), v18);
        }

        else
        {
          v21 = 0;
          while (1)
          {
            v22 = v20[5];
            v23 = sub_10004E34C(v22 + 104, dst);
            if (v22 + 112 != v23)
            {
              break;
            }

            v24 = v20[1];
            if (v24)
            {
              do
              {
                v25 = v24;
                v24 = *v24;
              }

              while (v24);
            }

            else
            {
              do
              {
                v25 = v20[2];
                v26 = *v25 == v20;
                v20 = v25;
              }

              while (!v26);
            }

            v21 |= v22 + 112 != v23;
            v20 = v25;
            if (v25 == v19)
            {
              if ((v21 & 1) == 0)
              {
                goto LABEL_41;
              }

              break;
            }
          }

          v27 = *(v18 + 1);
          if (v27)
          {
            do
            {
              v28 = v27;
              v27 = *v27;
            }

            while (v27);
          }

          else
          {
            do
            {
              v28 = *(v18 + 2);
              v26 = *v28 == v18;
              v18 = v28;
            }

            while (!v26);
          }
        }

        v18 = v28;
      }

      while (v28 != (a1 + 2096));
    }

    v31 = sub_100007EE8();
    v36[0] = _NSConcreteStackBlock;
    v36[1] = 3221225472;
    v36[2] = sub_100082094;
    v36[3] = &unk_100AE1120;
    v36[4] = buf;
    sub_10000CA94(v31, v36);
    v32 = *(a1 + 1988);
    if (v32 == 3)
    {
      v33 = 0;
    }

    else
    {
      if (v32 != 1)
      {
        sub_100016340(a1, 0);
        goto LABEL_54;
      }

      v33 = 2;
    }

    sub_1007A7444(a1, v33);
LABEL_54:
    _Block_object_dispose(buf, 8);
    sub_10000CEDC(&v43, v44[0]);
    return;
  }

  v15 = qword_100BCE918;
  if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Ignoring late scan stopped event", buf, 2u);
  }
}

void sub_10007B520(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10007B570()
{
  if (byte_100B6B210 == 1)
  {
    v0 = 0;
    byte_100B6B217 = 0;
  }

  else if (byte_100B6B212 == 1)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Scan is starting, can't stop it.", v1, v2, v3, v4, v5, v6, v7, v26);
      v8 = sub_10000C050(0x42u);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    return 118;
  }

  else if (!memcmp(&unk_100B6B1C8, "", 0x40uLL))
  {
    return 0;
  }

  else
  {
    v15 = byte_100B6B215;
    if (byte_100B6B215 == 1)
    {
      if (byte_100B6B216)
      {
        v15 = 2;
      }

      byte_100B6B1F8 = v15;
      if (byte_100B6B214 == 1 && (byte_100B6B218 & 1) == 0)
      {
        byte_100B6B1F9 = 3;
      }

      v16 = sub_10007AFA4(0, v15, BYTE14(xmmword_100B6B1E8), HIBYTE(xmmword_100B6B1E8), byte_100B6B1F9);
    }

    else if (byte_100B6B216)
    {
      v16 = sub_100018960(216, sub_10007BA58, v9, v10, v11, v12, v13, v14, 0);
    }

    else
    {
      v16 = sub_100018960(172, sub_10007BA58, v9, v10, v11, v12, v13, v14, 0);
    }

    v0 = v16;
    if (v16)
    {
      if (sub_10000C240())
      {
        sub_10000AF54("Could not stop the LE scan : %!", v17, v18, v19, v20, v21, v22, v23, v0);
        v24 = sub_10000C050(0x42u);
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          sub_10080F7A0();
        }
      }
    }

    else
    {
      byte_100B6B217 = 0;
      byte_100B6B210 = 1;
    }
  }

  return v0;
}

void sub_10007B768(uint64_t a1, unsigned int a2, char a3, double a4)
{
  if (a2 > 1)
  {
    goto LABEL_12;
  }

  v6 = *(a1 + 4432) + a4;
  *(a1 + 4432) = v6;
  if (v6 > 60.0)
  {
    v7 = qword_100BCE918;
    if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      *&buf[4] = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "ABC: Triggering High Duty Scans ABC, High/Very High Duty Scans have persisted for duration: %f seconds", buf, 0xCu);
    }

    if (qword_100B53FE8 != -1)
    {
      sub_1008776D8();
    }

    v8 = qword_100B53FE0;
    sub_100007E30(buf, "LeObserver");
    sub_100007E30(__p, "High Duty Scan Persisted");
    sub_1005780BC(v8, buf, __p, 0.0);
    if (v10 < 0)
    {
      operator delete(__p[0]);
    }

    if (v12 < 0)
    {
      operator delete(*buf);
    }
  }

  if ((a3 & 1) == 0)
  {
LABEL_12:
    *(a1 + 4432) = 0;
  }
}

void sub_10007B8C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

void sub_10007B8FC(uint64_t a1, int a2)
{
  v4 = sub_10000C798();
  if ((*(*v4 + 1048))(v4))
  {
    v5 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_INFO))
    {
      v6 = "NO";
      if (*(a1 + 1576))
      {
        v7 = "YES";
      }

      else
      {
        v7 = "NO";
      }

      if (a2)
      {
        v6 = "YES";
      }

      v8 = 136315394;
      v9 = v7;
      v10 = 2080;
      v11 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "SystemSettings::scanStateStable:%s->%s", &v8, 0x16u);
    }

    *(a1 + 1576) = a2;
    if (a2)
    {
      sub_1000A11BC(a1, 1);
    }
  }
}

void sub_10007BA58(uint64_t a1)
{
  v2 = qword_100B6B1E0;
  v23 = qword_100B6B1D8;
  v3 = qword_100B6B208;
  if (qword_100B6B208)
  {
    while (sub_10000C248(v3))
    {
      v4 = sub_1000BA5F8(qword_100B6B208);
      sub_1000BB054(qword_100B6B208, 0);
      sub_10000C1E8(v4[2]);
      sub_10000C1E8(v4);
      v3 = qword_100B6B208;
    }
  }

  if (byte_100B6B217 == 1)
  {
    *&v27[3] = 0;
    *v27 = 0;
    sub_1000841FC(v27);
    v26 = xmmword_100B6B1E8;
    v24 = WORD2(xmmword_100B6B1E8);
    v25 = WORD1(xmmword_100B6B1E8);
    if (byte_100B6B214 == 1)
    {
      if ((byte_100B6B215 & 1) == 0 && (byte_100B6B213 & 1) == 0)
      {
        goto LABEL_8;
      }
    }

    else if (!byte_100B6B213)
    {
LABEL_8:
      if (byte_100B6B216)
      {
        v12 = sub_100018960(215, sub_10008518C, v6, v7, v8, v9, v10, v11, v27[0]);
      }

      else
      {
        v12 = sub_100018960(171, sub_10008518C, v6, v7, v8, v9, v10, v11, xmmword_100B6B1E8);
      }

LABEL_27:
      v14 = v12;
      if (v12)
      {
LABEL_28:
        if (sub_10000C240())
        {
          sub_10000AF54("Could not restart a LE scan %!", v15, v16, v17, v18, v19, v20, v21, v14);
          v22 = sub_10000C050(0x42u);
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            sub_10080F7A0();
          }
        }

        xmmword_100B6B1E8 = 0u;
        *&byte_100B6B1F8 = 0u;
        unk_100B6B1C8 = 0u;
        *&qword_100B6B1D8 = 0u;
        goto LABEL_33;
      }

      goto LABEL_33;
    }

    if (byte_100B6B216)
    {
      v13 = 2;
    }

    else
    {
      v13 = 1;
    }

    byte_100B6B1F8 = v13;
    if (byte_100B6B218)
    {
      if (!WORD2(xmmword_100B6B1E8))
      {
        if (!WORD3(xmmword_100B6B1E8))
        {
          if (!(WORD4(xmmword_100B6B1E8) | WORD5(xmmword_100B6B1E8)))
          {
            v14 = 101;
            goto LABEL_28;
          }

          sub_100082BB4(0, v5, v6, v7, v8, v9, v10, v11);
LABEL_33:
          byte_100B6B217 = 0;
          byte_100B6B210 = 0;
          return;
        }

LABEL_32:
        sub_100084F40(0, v5, v6, v7, v8, v9, v10, v11);
        goto LABEL_33;
      }
    }

    else if (!WORD1(xmmword_100B6B1E8) || !WORD2(xmmword_100B6B1E8))
    {
      goto LABEL_32;
    }

    v12 = sub_10008395C(v27[0], BYTE13(xmmword_100B6B1E8), 1, &v26, &v25, &v24, v13, 1u);
    goto LABEL_27;
  }

  xmmword_100B6B1E8 = 0u;
  *&byte_100B6B1F8 = 0u;
  unk_100B6B1C8 = 0u;
  *&qword_100B6B1D8 = 0u;
  byte_100B6B210 = 0;
  if (v23)
  {

    v23(a1, v2);
  }
}

void sub_10007BD70(int a1)
{
  v2 = sub_100007EE8();
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10007BF3C;
  v3[3] = &unk_100AE0900;
  v4 = a1;
  sub_10000CA94(v2, v3);
}

void sub_10007BDEC(uint64_t a1, uint64_t a2)
{
  v4 = off_100B663D0;
  qword_100B663C0 = 0;
  off_100B663C8 = 0;
  off_100B663D0 = 0;
  byte_100B663D8 = 0;
  if ((byte_100B6A5CA & 1) == 0 && byte_100B6A5CB == 1)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("scan complete, we need to update our own address now", v5, v6, v7, v8, v9, v10, v11, *v13);
      v12 = sub_10000C050(0x42u);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *v13 = 136446210;
        *&v13[4] = sub_10000C0FC();
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, " %{public}s", v13, 0xCu);
      }
    }

    sub_1002CE968();
  }

  if (v4)
  {
    v4(a1, a2);
  }
}

uint64_t sub_10007BF04()
{
  if (qword_100B6E780 != -1)
  {
    sub_100831580();
  }

  return byte_100B6E778;
}

void sub_10007BF3C(uint64_t a1)
{
  if (qword_100B51078 != -1)
  {
    sub_100876628();
  }

  v2 = off_100B51070;
  v3 = *(a1 + 32);

  sub_10007B044(v2, v3);
}

uint64_t sub_10007BF90(uint64_t a1, uint64_t a2)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100076D24;
  v3[3] = &unk_100ADF8F8;
  v3[4] = a2;
  return sub_10002173C(a1, 216, 1, &stru_100AF25F0, v3);
}

uint64_t sub_10007C020()
{
  if (off_100B605F0)
  {
    v0 = off_100B605F0();
    if (!v0)
    {
      return v0;
    }
  }

  else
  {
    v0 = 3601;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("VSC failed %!", v1, v2, v3, v4, v5, v6, v7, v0);
    v8 = sub_10000C050(0x54u);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }

  return v0;
}

uint64_t sub_10007C0AC(uint64_t (*a1)())
{
  v7 = 0;
  v8 = 0;
  result = sub_10001FFD8(&v7);
  if (!result)
  {
    if (HIBYTE(v8))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
    }

    else if (WORD1(v8) - WORD2(v8) > 3)
    {
      if (BYTE6(v8) == 2)
      {
        *(v7 + WORD2(v8)) = 45;
        *(v7 + WORD2(v8) + 1) = 0;
        *(v7 + WORD2(v8) + 3) = 0;
        WORD2(v8) += 4;
        return sub_100020078(226, v7, BYTE4(v8), a1, sub_10007C214, v3, v4, v5);
      }

      v6 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_10:
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 6215, v6);
    }

    v6 = "ByteStream_NumReadBytesAvail(bs) >= 4";
    goto LABEL_10;
  }

  return result;
}

uint64_t sub_10007C1BC(int a1, int a2)
{
  dword_100B6D418 = a2;
  if (qword_100B50AA0 != -1)
  {
    sub_100093618();
  }

  return sub_100022748(a1, 0xD8u);
}

void sub_10007C214(uint64_t a1, void (*a2)(uint64_t, uint64_t), uint64_t a3)
{
  if (a1)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("status %!", v5, v6, v7, v8, v9, v10, v11, a1);
      v12 = sub_10000C050(0x54u);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_10080F604();
      }
    }

    v13 = 0;
    if (a2)
    {
      goto LABEL_6;
    }

    return;
  }

  if (*(a3 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
    goto LABEL_14;
  }

  v14 = *(a3 + 12);
  if (*(a3 + 10) - v14 <= 3)
  {
LABEL_14:
    v15 = "ByteStream_NumReadBytesAvail(*pBs) >= 4";
    goto LABEL_16;
  }

  if (*(a3 + 14) != 1)
  {
    v15 = "(*pBs).__RWFlag == BYTESTREAM_READ";
LABEL_16:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 885, v15);
  }

  v13 = *(*a3 + v14);
  *(a3 + 12) = v14 + 4;
  if (a2)
  {
LABEL_6:
    a2(a1, v13);
  }
}

uint64_t sub_10007C324(uint64_t a1, unsigned __int8 *a2)
{
  v2 = a1 + 8;
  v3 = *(a1 + 8);
  if (!v3)
  {
    return v2;
  }

  v5 = a1 + 8;
  do
  {
    v6 = sub_10007C3A8((v3 + 28), a2);
    if (v6)
    {
      v7 = 8;
    }

    else
    {
      v7 = 0;
    }

    if (!v6)
    {
      v5 = v3;
    }

    v3 = *(v3 + v7);
  }

  while (v3);
  if (v5 == v2 || sub_10007C3A8(a2, (v5 + 28)))
  {
    return v2;
  }

  return v5;
}

BOOL sub_10007C3A8(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == v3)
  {
    return memcmp(a1 + 4, a2 + 4, v2) >> 31;
  }

  else
  {
    return v2 < v3;
  }
}

uint64_t sub_10007C3E8(int a1)
{
  if (qword_100B50AA0 != -1)
  {
    sub_100093618();
  }

  return sub_100022748(a1, 0xFBu);
}

void sub_10007C438(uint64_t a1, unsigned int a2)
{
  v4 = qword_100BCE918;
  if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 1984);
    if (v5 > 4)
    {
      v6 = "UNKNOWN";
    }

    else
    {
      v6 = off_100B0D700[v5];
    }

    if (a2 > 4)
    {
      v7 = "UNKNOWN";
    }

    else
    {
      v7 = off_100B0D700[a2];
    }

    v8 = 136446978;
    v9 = v6;
    v10 = 1024;
    v11 = v5;
    v12 = 2082;
    v13 = v7;
    v14 = 1024;
    v15 = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Scan state change:  %{public}s(%d) --> %{public}s(%d)", &v8, 0x22u);
  }

  *(a1 + 1984) = a2;
}

uint64_t sub_10007C548(uint64_t a1)
{
  if (_os_feature_enabled_impl())
  {
    if (*(a1 + 167))
    {
      v2 = 2;
    }

    else
    {
      v2 = 0;
    }

    v3 = v2 | *(a1 + 711);
    v4 = *(a1 + 2064);
    if (v4 == (a1 + 2072))
    {
      LOWORD(v5) = 0;
    }

    else
    {
      v5 = 0;
      do
      {
        v6 = v4[5];
        if (*(*(v6 + 8) + 192))
        {
          if (sub_10007AF64(v6))
          {
            v7 = 2;
          }

          else
          {
            v7 = 0;
          }

          v5 |= v7 | sub_10007AF54(v4[5]);
        }

        v8 = v4[1];
        if (v8)
        {
          do
          {
            v9 = v8;
            v8 = *v8;
          }

          while (v8);
        }

        else
        {
          do
          {
            v9 = v4[2];
            v10 = *v9 == v4;
            v4 = v9;
          }

          while (!v10);
        }

        v4 = v9;
      }

      while (v9 != (a1 + 2072));
    }

    v13 = v5;
    v14 = v5 ^ v3;
    v15 = qword_100BCE918;
    if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
    {
      v17[0] = 67109632;
      v17[1] = v3;
      v18 = 1024;
      v19 = v13;
      v20 = 1024;
      v21 = v14;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "updateADVBufferConfig current:%02x new:%02x configChanged:%02x", v17, 0x14u);
    }

    if (v13 == v3)
    {
      return 0;
    }

    if ((v14 & 2) != 0)
    {
      if ((v13 & 2) == 0)
      {
        sub_10079DECC(a1, 0);
        if ((v14 & 1) == 0)
        {
          goto LABEL_42;
        }

        goto LABEL_33;
      }

      *(a1 + 170) = 0;
      if (sub_1007A5C6C(a1, 0) && os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_ERROR))
      {
        sub_100875790();
        if ((v14 & 1) == 0)
        {
LABEL_42:
          if ((*(a1 + 167) & 1) == 0 && (*(a1 + 711) & 1) == 0)
          {
            sub_100067CB0(a1);
          }

          return 0;
        }

LABEL_33:
        if (v13)
        {
          if ((v13 & 2) != 0 && (v16 = sub_10000C798(), (*(*v16 + 744))(v16) < 2))
          {
            if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_ERROR))
            {
              sub_1008757F8();
            }
          }

          else
          {
            *(a1 + 714) = 0;
            if (sub_1007A5C6C(a1, 1) && os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_ERROR))
            {
              sub_100875834();
            }
          }
        }

        else
        {
          sub_10079DECC(a1, 1);
        }

        goto LABEL_42;
      }
    }

    if ((v14 & 1) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_33;
  }

  v11 = qword_100BCE918;
  if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v17[0]) = 0;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "ADVBUFF cannot update ADV Buffer config when in Legacy mode", v17, 2u);
  }

  return 12;
}