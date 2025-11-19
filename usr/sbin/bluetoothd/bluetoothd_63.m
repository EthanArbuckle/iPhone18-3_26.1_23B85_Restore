void sub_100471690(_Unwind_Exception *a1)
{
  sub_1000088CC(v3 - 104);
  if (*(v3 - 65) < 0)
  {
    operator delete(*(v3 - 88));
  }

  _Unwind_Resume(a1);
}

void sub_1004716E4(uint64_t a1, void *a2)
{
  v3 = a2;
  v28 = 0;
  v26 = 0;
  v27 = 0;
  v25 = 0;
  v4 = sub_1004329F8();
  (*(*v4 + 24))(v4, &v28, &v27, &v26, &v25);
  v5 = [NSNumber numberWithUnsignedLongLong:v28];
  [v3 setObject:v5 forKey:@"BasebandScanPrepTimeMs"];

  v6 = [NSNumber numberWithUnsignedLongLong:v27];
  [v3 setObject:v6 forKey:@"BasebandScanTimeMs"];

  v7 = [NSNumber numberWithUnsignedLongLong:v26];
  [v3 setObject:v7 forKey:@"BasebandTimeMs"];

  v23 = 0;
  v24 = 0;
  v22 = 0;
  v21 = 0;
  __p = 0;
  v19 = 0;
  v20 = 0;
  v8 = sub_1004329F8();
  (*(*v8 + 32))(v8, &v24, &v23, &v22, &v21, &__p);
  v9 = [NSNumber numberWithUnsignedLongLong:v24];
  [v3 setObject:v9 forKey:@"BasebandScanPrepTimeMs"];

  v10 = [NSNumber numberWithUnsignedLongLong:v23];
  [v3 setObject:v10 forKey:@"BasebandScanTimeMS"];

  v11 = [NSNumber numberWithUnsignedLongLong:v22];
  [v3 setObject:v11 forKey:@"BasebandTimeMs"];

  v12 = [NSNumber numberWithUnsignedChar:v21];
  [v3 setObject:v12 forKey:@"Status"];

  v13 = HIBYTE(v20);
  if (v20 < 0)
  {
    v13 = v19;
  }

  if (v13)
  {
    v14 = [NSString alloc];
    if (v20 >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    v16 = [v14 initWithUTF8String:p_p];
    if (v16)
    {
      [v3 setObject:v16 forKey:@"Reason"];
    }
  }

  v17 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v30 = v3;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Fast Connect Metrics: %@", buf, 0xCu);
  }

  sub_10003BA40(a1, 0x59u, v3);
  if (SHIBYTE(v20) < 0)
  {
    operator delete(__p);
  }
}

void sub_1004719E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_100471A78(uint64_t a1, void *a2, int a3)
{
  v22 = @"GAPAPairingMetricUniqueIdSalt";
  v5 = [NSArray arrayWithObjects:&v22 count:1];
  v19 = 0;
  v6 = [CBUserController readPrefKeys:v5 source:8 error:&v19];
  v7 = v19;
  v8 = [v6 objectForKeyedSubscript:@"GAPAPairingMetricUniqueIdSalt"];

  v9 = qword_100BCE8D8;
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = CUPrintNSError();
    *buf = 138412546;
    *v21 = v10;
    *&v21[8] = 2112;
    *&v21[10] = v8;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "GAPAPairingMetricUniqueIdSalt from readPrefKeys %@ %@", buf, 0x16u);
  }

  if (!v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [v8 length] == a3)
  {
    v11 = v8;
    memcpy(a2, [v8 bytes], objc_msgSend(v8, "length"));
    v12 = 0;
  }

  else
  {
    arc4random_buf(a2, a3);
    v13 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_INFO))
    {
      *buf = 68157954;
      *v21 = 16;
      *&v21[4] = 2096;
      *&v21[6] = a2;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "Make fresh GAPAPairingMetricUniqueIdSalt %.16P", buf, 0x12u);
    }

    v14 = [NSData dataWithBytes:a2 length:a3];
    v18 = v7;
    v15 = [CBUserController writePrefKey:@"GAPAPairingMetricUniqueIdSalt" value:v14 source:8 error:&v18];
    v12 = v18;

    if ((v15 & 1) == 0)
    {
      v16 = qword_100BCE8D8;
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v17 = CUPrintNSError();
        sub_10082D8B8(v17, buf);
      }
    }
  }
}

void sub_100471D9C(uint64_t a1, int *a2, int a3, int a4, int a5, __int128 *a6, void *a7, void *a8, void *a9)
{
  v16 = a7;
  v23 = a8;
  v17 = a9;
  v18 = sub_100066098();
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3321888768;
  v24[2] = sub_100471F64;
  v24[3] = &unk_100AF6A00;
  v28 = a1;
  v19 = *a2;
  v31 = a3;
  v34 = v19;
  v35 = *(a2 + 2);
  v20 = v16;
  v25 = v20;
  if (*(a6 + 23) < 0)
  {
    sub_100008904(&__p, *a6, *(a6 + 1));
  }

  else
  {
    __p = *a6;
    v30 = *(a6 + 2);
  }

  v32 = a5;
  v33 = a4;
  v21 = v23;
  v26 = v21;
  v22 = v17;
  v27 = v22;
  sub_10000CA94(v18, v24);

  if (SHIBYTE(v30) < 0)
  {
    operator delete(__p);
  }
}

void sub_100471F64(uint64_t a1)
{
  v2 = *(a1 + 56);
  v3 = *(a1 + 88);
  if (v3)
  {
    v31 = CUPrintFlags32();
    NSAppendPrintF_safe();
    v4 = 0;

    v5 = *(a1 + 88) & 3;
  }

  else
  {
    v5 = 0;
    v4 = 0;
  }

  v41 = v4;
  v7 = (a1 + 100);
  v6 = *(a1 + 100);
  v53[1] = 0;
  v53[0] = 0;
  data = v6;
  v52 = *(a1 + 104);
  sub_100471A78(v3, v53, 16);
  *md = 0;
  v49 = 0;
  v50 = 0;
  CC_SHA1(&data, 0x16u, md);
  v40 = [NSData dataWithBytes:md length:20];
  *buf = *(a1 + 100);
  LOWORD(v45) = *(a1 + 104);
  v8 = sub_10047261C(v2, buf, 0);
  *buf = *(a1 + 100);
  LOWORD(v45) = *(a1 + 104);
  v42 = sub_10047261C(v2, buf, 1u);
  *buf = *(a1 + 100);
  LOWORD(v45) = *(a1 + 104);
  v9 = sub_10047261C(v2, buf, 2u);
  *buf = *(a1 + 100);
  LOWORD(v45) = *(a1 + 104);
  v10 = sub_10047261C(v2, buf, 3u);
  *buf = *(a1 + 100);
  LOWORD(v45) = *(a1 + 104);
  v11 = sub_10047261C(v2, buf, 4u);
  *buf = *(a1 + 100);
  LOWORD(v45) = *(a1 + 104);
  v12 = sub_10047261C(v2, buf, 5u);
  *buf = *(a1 + 100);
  LOWORD(v45) = *(a1 + 104);
  v13 = sub_10047261C(v2, buf, 6u);
  v14 = v13;
  if (v13)
  {
    v38 = v13 - v42;
    LODWORD(v39) = v13 - v12;
    HIDWORD(v39) = v12 - v11;
    v15 = (v11 - v10);
    v16 = (v10 - v9);
    v17 = v9 - v42;
  }

  else
  {
    v42 = 0;
    v17 = 0;
    v16 = 0;
    v15 = 0;
    v39 = 0;
    v38 = 0;
  }

  v46[0] = @"Flags";
  v46[1] = @"StartSession";
  v18 = *(a1 + 32);
  v47[0] = v41;
  v47[1] = v18;
  v46[2] = @"State";
  v37 = [NSNumber numberWithUnsignedInt:v5, v31];
  v47[2] = v37;
  v46[3] = @"FWVersion";
  v19 = (a1 + 64);
  if (*(a1 + 87) < 0)
  {
    v19 = *v19;
  }

  v36 = [NSString stringWithUTF8String:v19];
  v47[3] = v36;
  v46[4] = @"PID";
  v35 = [NSNumber numberWithUnsignedInt:*(a1 + 92)];
  v47[4] = v35;
  v46[5] = @"VID";
  v20 = [NSNumber numberWithUnsignedInt:*(a1 + 96)];
  v21 = *(a1 + 40);
  v22 = *(a1 + 48);
  v34 = v20;
  v47[5] = v20;
  v47[6] = v21;
  v46[6] = @"PrimaryIdentificationHash";
  v46[7] = @"SecondaryIdentificationHash";
  v47[7] = v22;
  v47[8] = v40;
  v46[8] = @"UniqueIdentificationHash";
  v46[9] = @"TimingNonAuthTotalMS";
  v33 = [NSNumber numberWithUnsignedInt:v8];
  v47[9] = v33;
  v46[10] = @"Timing_A_AuthSupportedTotalMS";
  v43 = [NSNumber numberWithUnsignedInt:v42];
  v47[10] = v43;
  v46[11] = @"Timing_B_AuthGetACRTOTADurationMS";
  v32 = [NSNumber numberWithUnsignedInt:v17];
  v47[11] = v32;
  v46[12] = @"Timing_C_AuthACRTReceivedDurationMS";
  v23 = [NSNumber numberWithUnsignedInt:v16];
  v47[12] = v23;
  v46[13] = @"Timing_D_AuthChallengeOTADurationMS";
  v24 = [NSNumber numberWithUnsignedInt:v15];
  v47[13] = v24;
  v46[14] = @"Timing_E_AuthResponseReceivedDurationMS";
  v25 = [NSNumber numberWithUnsignedInt:HIDWORD(v39)];
  v47[14] = v25;
  v46[15] = @"Timing_F_AuthResultDurationMS";
  v26 = [NSNumber numberWithUnsignedInt:v39];
  v47[15] = v26;
  v46[16] = @"Timing_G_AuthDurationMS";
  v27 = [NSNumber numberWithUnsignedInt:v38];
  v47[16] = v27;
  v46[17] = @"Timing_H_AuthTotalMS";
  v28 = [NSNumber numberWithUnsignedInt:v14];
  v47[17] = v28;
  v29 = [NSDictionary dictionaryWithObjects:v47 forKeys:v46 count:18];

  v30 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v45 = v29;
    _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "GAPA result metric %@", buf, 0xCu);
  }

  sub_10003BA40(v2, 0x5Bu, v29);
  sub_1000E5700((v2 + 432), v7);
}

uint64_t sub_10047261C(uint64_t a1, unsigned int *a2, unsigned int a3)
{
  if (sub_100480530(a1 + 432, a2))
  {
    *v16 = a2;
    v6 = sub_1004805A0(a1 + 432, a2);
    v9 = *(v6 + 48);
    v7 = v6 + 48;
    v8 = v9;
    if (v9)
    {
      v10 = v7;
      do
      {
        v11 = *(v8 + 28);
        v12 = v11 >= a3;
        v13 = v11 < a3;
        if (v12)
        {
          v10 = v8;
        }

        v8 = *(v8 + 8 * v13);
      }

      while (v8);
      if (v10 != v7 && *(v10 + 28) <= a3)
      {
        return *(v10 + 32);
      }
    }
  }

  else
  {
    v15 = qword_100BCE8D8;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_1000BE6F8(a2, v16);
      sub_10082D90C(v16, v17);
    }
  }

  return 0;
}

_BYTE *sub_100472748(_BYTE *result, uint64_t a2)
{
  v3 = result;
  if (*(a2 + 87) < 0)
  {
    result = sub_100008904(result + 64, *(a2 + 64), *(a2 + 72));
  }

  else
  {
    v4 = *(a2 + 64);
    *(result + 10) = *(a2 + 80);
    *(result + 4) = v4;
  }

  v5 = *(a2 + 100);
  *(v3 + 52) = *(a2 + 104);
  *(v3 + 25) = v5;
  return result;
}

void sub_1004727A4(uint64_t a1)
{
  if (*(a1 + 87) < 0)
  {
    operator delete(*(a1 + 64));
  }
}

uint64_t sub_1004727B8(uint64_t a1, unsigned int *a2, unsigned int a3, int a4)
{
  v15 = a3;
  if (sub_100480530(a1 + 408, a2))
  {
    v16 = 0;
    sub_100016250(&v16);
    v8 = v16;
    v9 = SWORD2(v16);
    v16 = a2;
    v10 = sub_100480130(a1 + 408, a2);
    v11 = v9 - *(v10 + 48) + 1000 * (v8 - *(v10 + 40));
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
    {
      sub_10082D97C();
    }

    v11 = 0;
  }

  v16 = a2;
  result = sub_1004805A0(a1 + 432, a2);
  v13 = *(result + 48);
  if (!v13)
  {
LABEL_13:
    v16 = &v15;
    result = sub_100480654(result + 40, &v15);
    *(result + 32) = v11;
    return result;
  }

  while (1)
  {
    v14 = *(v13 + 28);
    if (v14 <= a3)
    {
      break;
    }

LABEL_10:
    v13 = *v13;
    if (!v13)
    {
      goto LABEL_13;
    }
  }

  if (v14 < a3)
  {
    ++v13;
    goto LABEL_10;
  }

  if (a4)
  {
    goto LABEL_13;
  }

  return result;
}

void sub_100472918(uint64_t a1, __int128 *a2, void *a3, uint64_t a4, char a5, char a6)
{
  v11 = a3;
  v12 = sub_100066098();
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3321888768;
  v14[2] = sub_100472A58;
  v14[3] = &unk_100AF6A38;
  v16 = a1;
  if (*(a2 + 23) < 0)
  {
    sub_100008904(&__p, *a2, *(a2 + 1));
  }

  else
  {
    __p = *a2;
    v18 = *(a2 + 2);
  }

  v13 = v11;
  v15 = v13;
  v19 = a4;
  v20 = a5;
  v21 = a6;
  sub_10000CA94(v12, v14);

  if (SHIBYTE(v18) < 0)
  {
    operator delete(__p);
  }
}

void sub_100472A28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_100472A58(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    v4 = (a1 + 48);
    if (*(a1 + 71) < 0)
    {
      v4 = *v4;
    }

    *buf = 136315138;
    *&buf[4] = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Start monitoring for connection %s", buf, 0xCu);
  }

  v9[0] = 0;
  v9[1] = 0;
  sub_100007F88(v9, v2 + 240);
  if (!sub_100480060(v2 + 384, (a1 + 48)))
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    *buf = 0u;
    *&buf[8] = *(a1 + 32);
    *&v11 = @"Outgoing";
    *(&v11 + 1) = @"NA";
    *&v12 = @"Pending";
    *(&v12 + 1) = @"NA";
    *&v13 = 0;
    *&v14 = 0;
    *(&v13 + 1) = [NSNumber numberWithInteger:*(a1 + 72)];
    *(&v14 + 1) = mach_absolute_time();
    WORD4(v15) = *(a1 + 80);
    *(&v15 + 10) = -1;
    BYTE14(v15) = 0;
    v5 = [&off_100B342E8 mutableCopy];
    v6 = v16;
    *&v16 = v5;

    v9[3] = a1 + 48;
    v7 = sub_100480728(v2 + 384, (a1 + 48));
    sub_10044ACB8(v7 + 56, buf);
  }

  sub_10000801C(v9);
  return sub_1000088CC(v9);
}

void sub_100472C48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, id a13)
{
  sub_10044AD64(&a13);
  sub_1000088CC(&a9);
  _Unwind_Resume(a1);
}

_BYTE *sub_100472C74(_BYTE *result, uint64_t a2)
{
  if (*(a2 + 71) < 0)
  {
    return sub_100008904(result + 48, *(a2 + 48), *(a2 + 56));
  }

  v2 = *(a2 + 48);
  *(result + 8) = *(a2 + 64);
  *(result + 3) = v2;
  return result;
}

void sub_100472CA0(uint64_t a1)
{
  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }
}

void sub_100472CB4(uint64_t a1, char a2, char a3, char a4, char a5)
{
  Current = CFAbsoluteTimeGetCurrent();
  v11 = sub_100066098();
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100472D74;
  v12[3] = &unk_100AE0880;
  v12[4] = a1;
  v13 = a5;
  v14 = a2;
  v15 = a3;
  v16 = a4;
  *&v12[5] = Current;
  sub_10000CA94(v11, v12);
}

double sub_100472D74(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(a1 + 48) == 1)
  {
    if (*(v2 + 456))
    {
      (*(*v2 + 424))(*(a1 + 32), *(a1 + 49), *(a1 + 50), *(a1 + 51), 0);
    }

    *(v2 + 456) = *(a1 + 49);
    *(v2 + 464) = *(a1 + 40);
    v3 = sub_100480898(v2 + 472, (v2 + 456));
    v13 = *(v3 + 42);
    v14 = *(v3 + 23);
    v4 = v3[7];
    v5 = v3[6] + 1;
    v6 = *(a1 + 50);
    v7 = sub_100480898(v2 + 472, (v2 + 456));
    *(v7 + 20) = v6;
    *(v7 + 42) = v13;
    *(v7 + 23) = v14;
    v7[6] = v5;
    v7[7] = v4;
  }

  else if (*(v2 + 456))
  {
    v9 = sub_100480898(v2 + 472, (v2 + 456));
    v12 = *(v9 + 5);
    v10 = (v9[7] + (*(a1 + 40) - *(v2 + 464)) * 1000.0);
    v11 = sub_100480898(v2 + 472, (v2 + 456));
    result = *&v12;
    *(v11 + 5) = v12;
    v11[7] = v10;
  }

  return result;
}

void sub_100472F0C(uint64_t a1, char a2)
{
  v4 = sub_100066098();
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100472F90;
  v5[3] = &unk_100AE15D8;
  v5[4] = a1;
  v6 = a2;
  sub_10000CA94(v4, v5);
}

void sub_100472F90(uint64_t a1)
{
  if (*(a1 + 40) == 1)
  {
    v1 = *(a1 + 32);
    ++*(v1 + 584);
    v2 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_INFO))
    {
      v3 = *(v1 + 584);
      v4 = 138478083;
      v5 = @"fNearbyActionNoWakePrecisionFindingDailyUsage";
      v6 = 2048;
      v7 = v3;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Set %{private}@ to: %tu", &v4, 0x16u);
    }
  }
}

void sub_100473064(uint64_t a1, double a2, float a3, float a4)
{
  v8 = sub_100066098();
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100473104;
  v9[3] = &unk_100AEC130;
  v9[4] = a1;
  *&v9[5] = a2;
  v10 = a3;
  v11 = a4;
  sub_10000CA94(v8, v9);
}

void sub_100473104(uint64_t a1)
{
  v16 = *(a1 + 32);
  v15 = +[NSDate date];
  [v15 timeIntervalSinceReferenceDate];
  LODWORD(v3) = 86400;
  if (rint(v2 - *(a1 + 40)) < 86400)
  {
    [v15 timeIntervalSinceReferenceDate];
    v3 = rint(v4 - *(a1 + 40));
  }

  v5 = +[NSCalendar currentCalendar];
  v6 = [v5 components:224 fromDate:v15];

  v7 = [v6 hour];
  v8 = [v6 minute];
  v9 = [v6 second];
  if (v3 >= 1)
  {
    v10 = 0;
    v11 = (3600 * v7 + 60 * v8 + v9 - v3 + 86400) % 86400;
    v12 = v11 / 3600;
    do
    {
      if (v3 >= 3600 * ((v12 + v10) % 24) - v11 + 3600)
      {
        v13 = 3600 * ((v12 + v10) % 24) - v11 + 3600;
      }

      else
      {
        v13 = v3;
      }

      sub_10047333C(v16, ((v12 + v10) % 24), v13, *(a1 + 48), *(a1 + 52));
      if (v10 > 0x16)
      {
        break;
      }

      v11 = (v13 + v11) % 86400;
      ++v10;
      v14 = __OFSUB__(v3, v13);
      LODWORD(v3) = v3 - v13;
    }

    while (!((v3 < 0) ^ v14 | (v3 == 0)));
  }
}

void sub_10047333C(uint64_t a1, unsigned int a2, unsigned int a3, float a4, float a5)
{
  v17 = a2;
  v6 = a4 > -1.0 || a2 > 0x17;
  if (!v6 && (a3 - 3600) >= 0xF1F1u)
  {
    *buf = &v17;
    v10 = sub_100480970(a1 + 496, &v17);
    v11 = v10[8];
    v12 = v11 + a3;
    v13 = ((a3 * a4) + (v10[9] * v11)) / v12;
    v14 = ((a3 * a5) + (v10[10] * v11)) / v12;
    *buf = &v17;
    v15 = sub_100480970(a1 + 496, &v17);
    v15[8] = v12;
    v15[9] = v13;
    v15[10] = v14;
    v16 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 67109888;
      *&buf[4] = v17;
      v19 = 2048;
      v20 = v12;
      v21 = 2048;
      v22 = v13;
      v23 = 2048;
      v24 = v14;
      _os_log_debug_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, "reportNearbyInfoV2DensityBubbleHourly: hour %u cum seconds %.1f avg rssi %.1f avg mps %.1f", buf, 0x26u);
    }
  }
}

void sub_1004734C8(uint64_t a1)
{
  v2 = sub_100066098();
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100473544;
  v3[3] = &unk_100ADF8F8;
  v3[4] = a1;
  sub_10000CA94(v2, v3);
}

void sub_100473558(uint64_t a1, char a2)
{
  v4 = sub_100066098();
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1004735DC;
  v5[3] = &unk_100AE15D8;
  v5[4] = a1;
  v6 = a2;
  sub_10000CA94(v4, v5);
}

uint64_t sub_1004735DC(uint64_t result)
{
  v1 = *(result + 32);
  if (*(result + 40) == 1)
  {
    ++*(v1 + 600);
  }

  else
  {
    ++*(v1 + 596);
  }

  return result;
}

void sub_10047360C(uint64_t a1, char a2, uint64_t a3, double a4)
{
  v8 = sub_100066098();
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000C5A64;
  v9[3] = &unk_100AEB3F0;
  v10 = a2;
  v9[4] = a1;
  v9[5] = a3;
  *&v9[6] = a4;
  sub_10000CA94(v8, v9);
}

void sub_1004736AC(uint64_t a1, uint64_t *a2)
{
  v4 = sub_100066098();
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3321888768;
  v5[2] = sub_100473788;
  v5[3] = &unk_100AF6A68;
  v5[4] = a1;
  memset(v6, 0, sizeof(v6));
  sub_10003E428(v6, *a2, a2[1], 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3));
  sub_10000CA94(v4, v5);
  v7 = v6;
  sub_1000161FC(&v7);
}

void sub_100473770(_Unwind_Exception *a1)
{
  *(v2 - 40) = v1;
  sub_1000161FC((v2 - 40));
  _Unwind_Resume(a1);
}

void *sub_100473788(void *result)
{
  v1 = result[5];
  v2 = result[6];
  if (v1 != v2)
  {
    v3 = result[4];
    do
    {
      result = sub_100480A48(v3 + 1040, v1);
      ++result[7];
      v1 += 3;
    }

    while (v1 != v2);
  }

  return result;
}

uint64_t sub_100473800(uint64_t a1, uint64_t a2)
{
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  v2 = a1 + 40;
  *(v2 + 16) = 0;
  return sub_10003E428(v2, *(a2 + 40), *(a2 + 48), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 48) - *(a2 + 40)) >> 3));
}

void sub_10047385C(uint64_t a1)
{
  v76 = 0;
  v74 = 0u;
  v75 = 0u;
  v72 = 0u;
  v73 = 0u;
  v70 = 0u;
  v71 = 0u;
  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  if (qword_100B51078 != -1)
  {
    sub_10082DAF8();
  }

  *&v1 = sub_1007B1794(off_100B51070, &v62).n128_u64[0];
  v77[0] = @"fTimewindowMsec";
  v61 = [NSNumber numberWithUnsignedLong:v62, v1];
  v78[0] = v61;
  v77[1] = @"fNumAdvsMaincoreElnaOn";
  v60 = [NSNumber numberWithUnsignedLong:DWORD1(v62)];
  v78[1] = v60;
  v77[2] = @"fNumAdvsBeforeFilteringMaincoreElnaOn";
  v59 = [NSNumber numberWithUnsignedLong:DWORD2(v62)];
  v78[2] = v59;
  v77[3] = @"fTotalScanningTimeMaincoreElnaOn";
  v58 = [NSNumber numberWithUnsignedLong:HIDWORD(v62)];
  v78[3] = v58;
  v77[4] = @"fNumAdvsMaincoreElnaBypass";
  v57 = [NSNumber numberWithUnsignedLong:v63];
  v78[4] = v57;
  v77[5] = @"fNumAdvsBeforeFilteringMaincoreElnaBypass";
  v56 = [NSNumber numberWithUnsignedLong:DWORD1(v63)];
  v78[5] = v56;
  v77[6] = @"fTotalScanningTimeMaincoreElnaBypass";
  v55 = [NSNumber numberWithUnsignedLong:DWORD2(v63)];
  v78[6] = v55;
  v77[7] = @"fNumAdvsScancoreElnaOn";
  v54 = [NSNumber numberWithUnsignedLong:HIDWORD(v63)];
  v78[7] = v54;
  v77[8] = @"fNumAdvsBeforeFilteringScancoreElnaOn";
  v53 = [NSNumber numberWithUnsignedLong:v64];
  v78[8] = v53;
  v77[9] = @"fTotalScanningTimeScancoreElnaOn";
  v52 = [NSNumber numberWithUnsignedLong:DWORD1(v64)];
  v78[9] = v52;
  v77[10] = @"fNumAdvsScancoreElnaBypass";
  v51 = [NSNumber numberWithUnsignedLong:DWORD2(v64)];
  v78[10] = v51;
  v77[11] = @"fNumAdvsBeforeFilteringScancoreElnaBypass";
  v50 = [NSNumber numberWithUnsignedLong:HIDWORD(v64)];
  v78[11] = v50;
  v77[12] = @"fTotalScanningTimeScancoreElnaBypass";
  v49 = [NSNumber numberWithUnsignedLong:v65];
  v78[12] = v49;
  v77[13] = @"fNumRangeScanRequests";
  v48 = [NSNumber numberWithUnsignedLong:DWORD1(v65)];
  v78[13] = v48;
  v77[14] = @"fNumPriorityCriticalScanRequests";
  v47 = [NSNumber numberWithUnsignedLong:DWORD2(v65)];
  v78[14] = v47;
  v77[15] = @"fNumScanRequests";
  v46 = [NSNumber numberWithUnsignedLong:HIDWORD(v65)];
  v78[15] = v46;
  v77[16] = @"fTotalTimeVeryHighPassiveInternal";
  v45 = [NSNumber numberWithUnsignedLong:v66];
  v78[16] = v45;
  v77[17] = @"fTotalTimeVeryHighPassiveExternal";
  v44 = [NSNumber numberWithUnsignedLong:DWORD1(v66)];
  v78[17] = v44;
  v77[18] = @"fTotalTimeVeryHighPassiveCombined";
  v43 = [NSNumber numberWithUnsignedLong:DWORD2(v66)];
  v78[18] = v43;
  v77[19] = @"fTotalTimeVeryHighActiveInternal";
  v42 = [NSNumber numberWithUnsignedLong:HIDWORD(v66)];
  v78[19] = v42;
  v77[20] = @"fTotalTimeVeryHighActiveExternal";
  v41 = [NSNumber numberWithUnsignedLong:v67];
  v78[20] = v41;
  v77[21] = @"fTotalTimeVeryHighActiveCombined";
  v40 = [NSNumber numberWithUnsignedLong:DWORD1(v67)];
  v78[21] = v40;
  v77[22] = @"fTotalTimeHighPassiveInternal";
  v39 = [NSNumber numberWithUnsignedLong:DWORD2(v67)];
  v78[22] = v39;
  v77[23] = @"fTotalTimeHighPassiveExternal";
  v38 = [NSNumber numberWithUnsignedLong:HIDWORD(v67)];
  v78[23] = v38;
  v77[24] = @"fTotalTimeHighPassiveCombined";
  v37 = [NSNumber numberWithUnsignedLong:v68];
  v78[24] = v37;
  v77[25] = @"fTotalTimeHighActiveInternal";
  v36 = [NSNumber numberWithUnsignedLong:DWORD1(v68)];
  v78[25] = v36;
  v77[26] = @"fTotalTimeHighActiveExternal";
  v35 = [NSNumber numberWithUnsignedLong:DWORD2(v68)];
  v78[26] = v35;
  v77[27] = @"fTotalTimeHighActiveCombined";
  v34 = [NSNumber numberWithUnsignedLong:HIDWORD(v68)];
  v78[27] = v34;
  v77[28] = @"fTotalTimeMediumHighPassiveInternal";
  v33 = [NSNumber numberWithUnsignedLong:v69];
  v78[28] = v33;
  v77[29] = @"fTotalTimeMediumHighPassiveExternal";
  v32 = [NSNumber numberWithUnsignedLong:DWORD1(v69)];
  v78[29] = v32;
  v77[30] = @"fTotalTimeMediumHighPassiveCombined";
  v31 = [NSNumber numberWithUnsignedLong:DWORD2(v69)];
  v78[30] = v31;
  v77[31] = @"fTotalTimeMediumHighActiveInternal";
  v30 = [NSNumber numberWithUnsignedLong:HIDWORD(v69)];
  v78[31] = v30;
  v77[32] = @"fTotalTimeMediumHighActiveExternal";
  v29 = [NSNumber numberWithUnsignedLong:v70];
  v78[32] = v29;
  v77[33] = @"fTotalTimeMediumHighActiveCombined";
  v28 = [NSNumber numberWithUnsignedLong:DWORD1(v70)];
  v78[33] = v28;
  v77[34] = @"fTotalTimeMediumPassiveInternal";
  v27 = [NSNumber numberWithUnsignedLong:DWORD2(v70)];
  v78[34] = v27;
  v77[35] = @"fTotalTimeMediumPassiveExternal";
  v26 = [NSNumber numberWithUnsignedLong:HIDWORD(v70)];
  v78[35] = v26;
  v77[36] = @"fTotalTimeMediumPassiveCombined";
  v25 = [NSNumber numberWithUnsignedLong:v71];
  v78[36] = v25;
  v77[37] = @"fTotalTimeMediumActiveInternal";
  v24 = [NSNumber numberWithUnsignedLong:DWORD1(v71)];
  v78[37] = v24;
  v77[38] = @"fTotalTimeMediumActiveExternal";
  v23 = [NSNumber numberWithUnsignedLong:DWORD2(v71)];
  v78[38] = v23;
  v77[39] = @"fTotalTimeMediumActiveCombined";
  v22 = [NSNumber numberWithUnsignedLong:HIDWORD(v71)];
  v78[39] = v22;
  v77[40] = @"fTotalTimeMediumLowPassiveInternal";
  v21 = [NSNumber numberWithUnsignedLong:v72];
  v78[40] = v21;
  v77[41] = @"fTotalTimeMediumLowPassiveExternal";
  v20 = [NSNumber numberWithUnsignedLong:DWORD1(v72)];
  v78[41] = v20;
  v77[42] = @"fTotalTimeMediumLowPassiveCombined";
  v19 = [NSNumber numberWithUnsignedLong:DWORD2(v72)];
  v78[42] = v19;
  v77[43] = @"fTotalTimeMediumLowActiveInternal";
  v18 = [NSNumber numberWithUnsignedLong:HIDWORD(v72)];
  v78[43] = v18;
  v77[44] = @"fTotalTimeMediumLowActiveExternal";
  v17 = [NSNumber numberWithUnsignedLong:v73];
  v78[44] = v17;
  v77[45] = @"fTotalTimeMediumLowActiveCombined";
  v16 = [NSNumber numberWithUnsignedLong:v73];
  v78[45] = v16;
  v77[46] = @"fTotalTimeLowPassiveInternal";
  v15 = [NSNumber numberWithUnsignedLong:DWORD2(v73)];
  v78[46] = v15;
  v77[47] = @"fTotalTimeLowPassiveExternal";
  v14 = [NSNumber numberWithUnsignedLong:HIDWORD(v73)];
  v78[47] = v14;
  v77[48] = @"fTotalTimeLowPassiveCombined";
  v2 = [NSNumber numberWithUnsignedLong:v74];
  v78[48] = v2;
  v77[49] = @"fTotalTimeLowActiveInternal";
  v3 = [NSNumber numberWithUnsignedLong:DWORD1(v74)];
  v78[49] = v3;
  v77[50] = @"fTotalTimeLowActiveExternal";
  v4 = [NSNumber numberWithUnsignedLong:DWORD2(v74)];
  v78[50] = v4;
  v77[51] = @"fTotalTimeLowActiveCombined";
  v5 = [NSNumber numberWithUnsignedLong:HIDWORD(v74)];
  v78[51] = v5;
  v77[52] = @"fTotalTimeVeryLowPassiveInternal";
  v6 = [NSNumber numberWithUnsignedLong:v75];
  v78[52] = v6;
  v77[53] = @"fTotalTimeVeryLowPassiveExternal";
  v7 = [NSNumber numberWithUnsignedLong:DWORD1(v75)];
  v78[53] = v7;
  v77[54] = @"fTotalTimeVeryLowPassiveCombined";
  v8 = [NSNumber numberWithUnsignedLong:DWORD2(v75)];
  v78[54] = v8;
  v77[55] = @"fTotalTimeVeryLowActiveInternal";
  v9 = [NSNumber numberWithUnsignedLong:HIDWORD(v75)];
  v78[55] = v9;
  v77[56] = @"fTotalTimeVeryLowActiveExternal";
  v10 = [NSNumber numberWithUnsignedLong:v76];
  v78[56] = v10;
  v77[57] = @"fTotalTimeVeryLowActiveCombined";
  v11 = [NSNumber numberWithUnsignedLong:v76];
  v78[57] = v11;
  v12 = [NSDictionary dictionaryWithObjects:v78 forKeys:v77 count:58];

  sub_10003BA40(a1, 0x69u, v12);
}

void sub_1004746B4(uint64_t a1)
{
  v2 = sub_100066098();
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100474D00;
  v3[3] = &unk_100ADF8F8;
  v3[4] = a1;
  sub_10000CA94(v2, v3);
}

void sub_100474730(uint64_t a1)
{
  v2 = sub_100066098();
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100476A08;
  v3[3] = &unk_100ADF8F8;
  v3[4] = a1;
  sub_10000CA94(v2, v3);
}

void sub_1004747AC(uint64_t a1)
{
  v2 = sub_100066098();
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100476CB4;
  v3[3] = &unk_100ADF8F8;
  v3[4] = a1;
  sub_10000CA94(v2, v3);
}

void sub_100474828(uint64_t a1)
{
  v2 = sub_100066098();
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100476DEC;
  v3[3] = &unk_100ADF8F8;
  v3[4] = a1;
  sub_10000CA94(v2, v3);
}

void sub_1004748A4(uint64_t a1)
{
  v2 = sub_100066098();
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100477038;
  v3[3] = &unk_100ADF8F8;
  v3[4] = a1;
  sub_10000CA94(v2, v3);
}

void sub_100474920(uint64_t a1)
{
  v2 = sub_100066098();
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1004771A4;
  v3[3] = &unk_100ADF8F8;
  v3[4] = a1;
  sub_10000CA94(v2, v3);
}

void sub_10047499C(uint64_t a1)
{
  v2 = sub_100066098();
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1004772DC;
  v3[3] = &unk_100ADF8F8;
  v3[4] = a1;
  sub_10000CA94(v2, v3);
}

void sub_100474A18(uint64_t a1)
{
  v2 = sub_100066098();
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10047C6C4;
  v3[3] = &unk_100ADF8F8;
  v3[4] = a1;
  sub_10000CA94(v2, v3);
}

void sub_100474A94(uint64_t a1)
{
  v2 = sub_100066098();
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10047C9B0;
  v3[3] = &unk_100ADF8F8;
  v3[4] = a1;
  sub_10000CA94(v2, v3);
}

void sub_100474B10(uint64_t a1)
{
  v2 = sub_100066098();
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1004776BC;
  v3[3] = &unk_100ADF8F8;
  v3[4] = a1;
  sub_10000CA94(v2, v3);
}

void sub_100474B8C(uint64_t a1)
{
  v2 = sub_100066098();
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10047E500;
  v3[3] = &unk_100ADF8F8;
  v3[4] = a1;
  sub_10000CA94(v2, v3);
}

void sub_100474C08(uint64_t a1)
{
  v2 = sub_100066098();
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10047E6F0;
  v3[3] = &unk_100ADF8F8;
  v3[4] = a1;
  sub_10000CA94(v2, v3);
}

void sub_100474C84(uint64_t a1)
{
  v2 = sub_100066098();
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10047E8E0;
  v3[3] = &unk_100ADF8F8;
  v3[4] = a1;
  sub_10000CA94(v2, v3);
}

uint64_t sub_100474D08(uint64_t a1)
{
  v2 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Sending all day BT metrics to CoreAnalytics", buf, 2u);
  }

  v177[1] = 0;
  v177[0] = 0;
  v151 = a1;
  sub_100007F88(v177, a1 + 176);
  v175 = 0u;
  v176 = 0u;
  v173 = 0u;
  v174 = 0u;
  v3 = *(a1 + 304);
  v4 = 0;
  v5 = [v3 countByEnumeratingWithState:&v173 objects:v185 count:16];
  if (v5)
  {
    v129 = 0;
    v6 = *v174;
    do
    {
      v7 = 0;
      v129 += v5;
      do
      {
        if (*v174 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [*(v151 + 304) objectForKeyedSubscript:*(*(&v173 + 1) + 8 * v7)];
        v9 = [v8 isEqual:&__kCFBooleanTrue];

        v4 += v9;
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v173 objects:v185 count:16];
    }

    while (v5);
  }

  else
  {
    v129 = 0;
  }

  v171 = 0u;
  v172 = 0u;
  v169 = 0u;
  v170 = 0u;
  v10 = *(v151 + 312);
  v11 = [v10 countByEnumeratingWithState:&v169 objects:v184 count:16];
  if (!v11)
  {
    v134 = 0;
    v139 = 0;
    v143 = 0;
    v147 = 0;
    v13 = 0.0;
    v14 = 0.0;
    v15 = 0.0;
    v16 = 0.0;
    v17 = 0.0;
    goto LABEL_34;
  }

  v134 = 0;
  v139 = 0;
  v143 = 0;
  v147 = 0;
  v12 = *v170;
  v13 = 0.0;
  v14 = 0.0;
  v15 = 0.0;
  v16 = 0.0;
  v17 = 0.0;
  do
  {
    for (i = 0; i != v11; i = i + 1)
    {
      if (*v170 != v12)
      {
        objc_enumerationMutation(v10);
      }

      v19 = *(*(&v169 + 1) + 8 * i);
      v20 = [*(v151 + 312) objectForKeyedSubscript:v19];
      v21 = [v20 count] > 1;

      if (v21)
      {
        v22 = [*(v151 + 312) objectForKeyedSubscript:v19];
        v23 = [v22 objectAtIndexedSubscript:0];
        v24 = [v23 isEqualToString:@"isAppleDevice"];

        if (v24)
        {
          v25 = [*(v151 + 312) objectForKeyedSubscript:v19];
          v26 = [v25 objectAtIndexedSubscript:1];
          [v26 doubleValue];
          ++v143;
          v17 = v17 + v27;
          goto LABEL_28;
        }

        v28 = [*(v151 + 312) objectForKeyedSubscript:v19];
        v29 = [v28 objectAtIndexedSubscript:0];
        v30 = [v29 isEqualToString:@"BTResourceManagerconnectionUseCaseDigitalCarKey"];

        if (v30)
        {
          v25 = [*(v151 + 312) objectForKeyedSubscript:v19];
          v26 = [v25 objectAtIndexedSubscript:1];
          [v26 doubleValue];
          ++v139;
          v16 = v16 + v31;
          goto LABEL_28;
        }

        v32 = [*(v151 + 312) objectForKeyedSubscript:v19];
        v33 = [v32 objectAtIndexedSubscript:0];
        v34 = [v33 isEqualToString:@"BTResourceManagerconnectionUseCaseThirdPartyApp"];

        if (v34)
        {
          v25 = [*(v151 + 312) objectForKeyedSubscript:v19];
          v26 = [v25 objectAtIndexedSubscript:1];
          [v26 doubleValue];
          ++v134;
          v15 = v15 + v35;
          goto LABEL_28;
        }

        v36 = [*(v151 + 312) objectForKeyedSubscript:v19];
        v37 = [v36 objectAtIndexedSubscript:0];
        v38 = [v37 isEqualToString:@"AccessDigitalHomeKey"];

        if (v38)
        {
          v25 = [*(v151 + 312) objectForKeyedSubscript:v19];
          v26 = [v25 objectAtIndexedSubscript:1];
          [v26 doubleValue];
          v14 = v14 + v39;
LABEL_28:
        }

        v40 = [*(v151 + 312) objectForKeyedSubscript:v19];
        v41 = [v40 objectAtIndexedSubscript:1];
        [v41 doubleValue];
        v43 = v42;

        ++v147;
        v13 = v13 + v43;
        continue;
      }

      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
      {
        sub_10082DB0C(&v167, v168);
      }
    }

    v11 = [v10 countByEnumeratingWithState:&v169 objects:v184 count:16];
  }

  while (v11);
LABEL_34:

  sub_10000801C(v177);
  v44 = v151;
  if (qword_100B512C8 != -1)
  {
    sub_10082DB48();
    v44 = v151;
  }

  v128 = sub_10000EE78(off_100B512C0);
  v165 = 0u;
  v166 = 0u;
  v163 = 0u;
  v164 = 0u;
  v45 = [*(v44 + 368) allKeys];
  v46 = 0;
  v47 = 0;
  v48 = [v45 countByEnumeratingWithState:&v163 objects:v183 count:16];
  if (!v48)
  {
    obj = 0;
    v132 = 0;
    goto LABEL_54;
  }

  obj = 0;
  v132 = 0;
  v49 = *v164;
  while (2)
  {
    v50 = 0;
    while (2)
    {
      if (*v164 != v49)
      {
        objc_enumerationMutation(v45);
      }

      v51 = *(*(&v163 + 1) + 8 * v50);
      if ([v51 isEqualToString:@"A1603"])
      {
        v52 = [*(v151 + 368) objectForKeyedSubscript:v51];
        v53 = [v52 objectAtIndexedSubscript:0];
        v46 = [v53 unsignedIntValue];
        goto LABEL_49;
      }

      if ([v51 isEqualToString:@"A2051"])
      {
        v52 = [*(v151 + 368) objectForKeyedSubscript:v51];
        v53 = [v52 objectAtIndexedSubscript:0];
        v47 = [v53 unsignedIntValue];
        goto LABEL_49;
      }

      if ([v51 isEqualToString:@"A3085"])
      {
        v52 = [*(v151 + 368) objectForKeyedSubscript:v51];
        v53 = [v52 objectAtIndexedSubscript:0];
        obj = [v53 unsignedIntValue];
        goto LABEL_49;
      }

      if ([v51 isEqualToString:@"A2538"])
      {
        v52 = [*(v151 + 368) objectForKeyedSubscript:v51];
        v53 = [v52 objectAtIndexedSubscript:0];
        v132 = [v53 unsignedIntValue];
LABEL_49:
      }

      if (v48 != ++v50)
      {
        continue;
      }

      break;
    }

    v48 = [v45 countByEnumeratingWithState:&v163 objects:v183 count:16];
    if (v48)
    {
      continue;
    }

    break;
  }

LABEL_54:

  v162 = 0;
  v54 = sub_10000E92C();
  sub_100007E30(buf, "BtMetricsCache");
  sub_100007E30(__p, "FirmwareErrorCount");
  (*(*v54 + 128))(v54, buf, __p, &v162);
  if (v159 < 0)
  {
    operator delete(__p[0]);
  }

  if (v161 < 0)
  {
    operator delete(*buf);
  }

  v157 = 0;
  v55 = sub_10000E92C();
  sub_100007E30(buf, "BtMetricsCache");
  sub_100007E30(__p, "LastBtPowerOnTimeStamp");
  (*(*v55 + 104))(v55, buf, __p, &v157);
  if (v159 < 0)
  {
    operator delete(__p[0]);
  }

  if (v161 < 0)
  {
    operator delete(*buf);
  }

  v56 = sub_10000E92C();
  sub_100007E30(buf, "BtMetricsCache");
  sub_100007E30(__p, "BtPowerOnDuration");
  (*(*v56 + 104))(v56, buf, __p, &v157 + 4);
  if (v159 < 0)
  {
    operator delete(__p[0]);
  }

  if (v161 < 0)
  {
    operator delete(*buf);
  }

  if (*&v157 == 0.0)
  {
    v57 = *(&v157 + 1);
  }

  else
  {
    v57 = CFAbsoluteTimeGetCurrent() - *&v157 + *(&v157 + 1);
    *(&v157 + 1) = v57;
  }

  if (v57 == 0.0)
  {
    v58 = 0.0;
  }

  else
  {
    v58 = (v57 / 3600.0);
  }

  v181[0] = @"NumberOfA2DPSessionPerDay";
  v124 = [NSNumber numberWithUnsignedShort:*(v151 + 134)];
  v182[0] = v124;
  v181[1] = @"NumberOfAppleLEPencilPairedDeviceCount";
  v123 = [NSNumber numberWithUnsignedShort:*(v151 + 568)];
  v182[1] = v123;
  v181[2] = @"NumberOfAppleLEPencilSessionPerDay";
  v122 = [NSNumber numberWithUnsignedInt:v47 + v46 + obj + v132];
  v182[2] = v122;
  v181[3] = @"NumberOfClassicLocalPairedDeviceCount";
  v121 = [NSNumber numberWithInt:*(v151 + 560) - *(v151 + 564)];
  v182[3] = v121;
  v181[4] = @"NumberOfHFPSessionPerDay";
  v120 = [NSNumber numberWithUnsignedShort:*(v151 + 136)];
  v182[4] = v120;
  v181[5] = @"NumberOfLECloudPairedDeviceCount";
  v119 = [NSNumber numberWithUnsignedShort:*(v151 + 566)];
  v182[5] = v119;
  v181[6] = @"NumberOfLELocalPairedDeviceCount";
  v118 = [NSNumber numberWithInt:*(v151 + 562) - *(v151 + 566)];
  v182[6] = v118;
  v181[7] = @"NumberOfLEPairedDeviceCount";
  v117 = [NSNumber numberWithUnsignedShort:*(v151 + 562)];
  v182[7] = v117;
  v181[8] = @"NumberOfMagicPairedDeviceCount";
  v116 = [NSNumber numberWithUnsignedShort:*(v151 + 564)];
  v182[8] = v116;
  v181[9] = @"NumberOfPairedDeviceCount";
  v115 = [NSNumber numberWithUnsignedShort:*(v151 + 560)];
  v182[9] = v115;
  v181[10] = @"NumberCTKDPairedDeviceCount";
  v114 = [NSNumber numberWithUnsignedShort:*(v151 + 570)];
  v182[10] = v114;
  v181[11] = @"MaxClassicDeviceCount";
  v113 = [NSNumber numberWithUnsignedShort:v129];
  v182[11] = v113;
  v181[12] = @"MaxAppleClassicDeviceCount";
  v112 = [NSNumber numberWithUnsignedShort:v4];
  v182[12] = v112;
  v181[13] = @"MaxLEDeviceCount";
  v111 = [NSNumber numberWithUnsignedShort:v147];
  v182[13] = v111;
  v181[14] = @"MaxLEThirdPartyDeviceCount";
  v126 = [NSNumber numberWithUnsignedShort:v134];
  v182[14] = v126;
  v181[15] = @"MaxCarKeyDeviceCount";
  v140 = [NSNumber numberWithUnsignedShort:v139];
  v182[15] = v140;
  v181[16] = @"MaxAppleLEDeviceCount";
  v144 = [NSNumber numberWithUnsignedShort:v143];
  v182[16] = v144;
  v181[17] = @"PowerState";
  v110 = [NSNumber numberWithBool:v128 == 1];
  v182[17] = v110;
  v181[18] = @"TotalNumberOfDeviceCount";
  v148 = [NSNumber numberWithInt:v147 + v129];
  v182[18] = v148;
  v181[19] = @"TotalAppleLESessionDurationInSec";
  v130 = [NSNumber numberWithDouble:v17];
  v182[19] = v130;
  v181[20] = @"TotalCarKeyDeviceDurationInSec";
  v109 = [NSNumber numberWithDouble:v16];
  v182[20] = v109;
  v181[21] = @"TotalHomeKeyDeviceDurationInSec";
  v108 = [NSNumber numberWithDouble:v14];
  v182[21] = v108;
  v181[22] = @"TotalLEDeviceDurationInSec";
  v107 = [NSNumber numberWithDouble:v13];
  v182[22] = v107;
  v181[23] = @"TotalLEThirdPartyAppSessionDurationInSec";
  v59 = [NSNumber numberWithDouble:v15];
  v182[23] = v59;
  v181[24] = @"ClassicReadDeviceNameFromFlashSuccessDailyCount";
  v60 = [NSNumber numberWithUnsignedInt:*(v151 + 600)];
  v182[24] = v60;
  v181[25] = @"ClassicReadDeviceNameFromFlashFailureDailyCount";
  v61 = [NSNumber numberWithUnsignedInt:*(v151 + 596)];
  v182[25] = v61;
  v181[26] = @"NumberOfApplePencilV1ConnectionsCount";
  v62 = [NSNumber numberWithUnsignedInt:v46];
  v182[26] = v62;
  v181[27] = @"NumberOfApplePencilV2ConnectionsCount";
  v63 = [NSNumber numberWithUnsignedInt:v47];
  v182[27] = v63;
  v181[28] = @"NumberOfApplePencilV3ConnectionsCount";
  v64 = [NSNumber numberWithUnsignedInt:obj];
  v182[28] = v64;
  v181[29] = @"NumberOfApplePencilV4ConnectionsCount";
  v65 = [NSNumber numberWithUnsignedInt:v132];
  v182[29] = v65;
  v181[30] = @"PowerOnDurationInHours";
  v66 = [NSNumber numberWithDouble:v58];
  v182[30] = v66;
  v181[31] = @"TotalNumberOfDailyFirmwareErrorCount";
  v67 = [NSNumber numberWithUnsignedInt:v162];
  v182[31] = v67;
  v135 = [NSDictionary dictionaryWithObjects:v182 forKeys:v181 count:32];

  v68 = v151;
  sub_10003BA40(v151, 0x50u, v135);
  if (*(v151 + 116))
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1004769C4;
    block[3] = &unk_100ADF8F8;
    block[4] = v151;
    if (qword_100B6D8F0 != -1)
    {
      dispatch_once(&qword_100B6D8F0, block);
    }

    v179[0] = @"AutoDateTimeEnabled";
    v69 = [NSNumber numberWithBool:*(v151 + 578)];
    v180[0] = v69;
    v179[1] = @"AverageReferenceTimeDelta";
    v145 = [NSNumber numberWithInt:*(v151 + 104)];
    v180[1] = v145;
    v179[2] = @"AverageReferenceTimeUncertainty";
    v141 = [NSNumber numberWithInt:*(v151 + 108)];
    v180[2] = v141;
    v179[3] = @"AverageReferenceTimeReliability";
    obja = [NSNumber numberWithInt:*(v151 + 112)];
    v180[3] = obja;
    v179[4] = @"numberOfAuthAndIntegrityTagsProcessed";
    v133 = [NSNumber numberWithUnsignedShort:*(v151 + 116)];
    v180[4] = v133;
    v179[5] = @"numberOfAuthAndIntegrityTagsResolved";
    v131 = [NSNumber numberWithUnsignedShort:*(v151 + 118)];
    v180[5] = v131;
    v179[6] = @"NumberOfAuthTagsResolvedAndIntegrityNotResolved";
    v149 = [NSNumber numberWithUnsignedShort:*(v151 + 120)];
    v180[6] = v149;
    v179[7] = @"NumberOfResolvedAuthTagsDecryptionFailed";
    v127 = [NSNumber numberWithUnsignedShort:*(v151 + 122)];
    v180[7] = v127;
    v179[8] = @"NumberOfResolvedAuthIntegrityTagsCurrentWindow";
    v125 = [NSNumber numberWithUnsignedShort:*(v151 + 124)];
    v180[8] = v125;
    v179[9] = @"NumberOfResolvedAuthIntegrityTagsPreviousWindow";
    v70 = [NSNumber numberWithUnsignedShort:*(v151 + 126)];
    v180[9] = v70;
    v179[10] = @"NumberOfResolvedAuthIntegrityTagsNextWindow";
    v71 = [NSNumber numberWithUnsignedShort:*(v151 + 128)];
    v180[10] = v71;
    v179[11] = @"percentageOfAuthAndIntegrityTagsResolved";
    v72 = [NSNumber numberWithDouble:(*(v151 + 118) / *(v151 + 116)) * 100.0];
    v180[11] = v72;
    v179[12] = @"percentageOfAuthTagsResolvedAndIntegrityNotResolved";
    v73 = [NSNumber numberWithDouble:(*(v151 + 120) / *(v151 + 116)) * 100.0];
    v180[12] = v73;
    v179[13] = @"percentageOfResolvedAuthTagsDecryptionFailed";
    v74 = [NSNumber numberWithDouble:(*(v151 + 122) / *(v151 + 116)) * 100.0];
    v180[13] = v74;
    v179[14] = @"percentageOfResolvedAuthIntegrityTagsCurrentWindow";
    if (*(v151 + 118))
    {
      v75 = (*(v151 + 124) / *(v151 + 118)) * 100.0;
    }

    else
    {
      v75 = 0.0;
    }

    v76 = [NSNumber numberWithDouble:v75];
    v180[14] = v76;
    v179[15] = @"percentageOfResolvedAuthIntegrityTagsPreviousWindow";
    if (*(v151 + 118))
    {
      v77 = (*(v151 + 126) / *(v151 + 118)) * 100.0;
    }

    else
    {
      v77 = 0.0;
    }

    v78 = [NSNumber numberWithDouble:v77];
    v180[15] = v78;
    v179[16] = @"percentageOfResolvedAuthIntegrityTagsNextWindow";
    if (*(v151 + 118))
    {
      v79 = (*(v151 + 128) / *(v151 + 118)) * 100.0;
    }

    else
    {
      v79 = 0.0;
    }

    v80 = v69;
    v81 = [NSNumber numberWithDouble:v79];
    v180[16] = v81;
    v82 = [NSDictionary dictionaryWithObjects:v180 forKeys:v179 count:17];

    sub_10003BA40(v151, 0x44u, v82);
    v68 = v151;
  }

  v150 = objc_alloc_init(NSMutableDictionary);
  v154 = 0u;
  v155 = 0u;
  v152 = 0u;
  v153 = 0u;
  v83 = [*(v68 + 336) allKeys];
  objb = v83;
  v84 = [v83 countByEnumeratingWithState:&v152 objects:v178 count:16];
  if (v84)
  {
    v85 = 0;
    LODWORD(v86) = 0;
    v142 = *v153;
    do
    {
      v87 = 0;
      v146 = v84;
      do
      {
        if (*v153 != v142)
        {
          objc_enumerationMutation(objb);
        }

        v88 = *(*(&v152 + 1) + 8 * v87);
        [v150 setObject:v88 forKeyedSubscript:@"ServiceType"];
        v89 = [*(v151 + 336) objectForKeyedSubscript:v88];
        v90 = [v89 objectAtIndexedSubscript:0];
        v91 = [v90 unsignedIntValue];
        v92 = [*(v151 + 336) objectForKeyedSubscript:v88];
        v93 = [v92 objectAtIndexedSubscript:1];
        v94 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", 100 * v91 / [v93 unsignedIntValue]);
        [v150 setObject:v94 forKeyedSubscript:@"ConnectionSuccessPercentagePerDay"];

        v95 = [*(v151 + 336) objectForKeyedSubscript:v88];
        v96 = [v95 objectAtIndexedSubscript:1];
        [v150 setObject:v96 forKeyedSubscript:@"TotalConnectionPerDay"];

        v97 = [*(v151 + 336) objectForKeyedSubscript:v88];
        v98 = [v97 objectAtIndexedSubscript:0];
        LODWORD(v95) = [v98 unsignedIntValue];

        v99 = [*(v151 + 336) objectForKeyedSubscript:v88];
        v100 = [v99 objectAtIndexedSubscript:1];
        LODWORD(v98) = [v100 unsignedIntValue];

        sub_10003BA40(v151, 0x83u, v150);
        v85 += v95;
        v86 = (v98 + v86);
        v87 = v87 + 1;
      }

      while (v146 != v87);
      v84 = [objb countByEnumeratingWithState:&v152 objects:v178 count:16];
    }

    while (v84);

    v101 = v151;
    if (v86)
    {
      [v150 setObject:@"Overall" forKeyedSubscript:@"ServiceType"];
      v102 = [NSNumber numberWithUnsignedInt:100 * v85 / v86];
      [v150 setObject:v102 forKeyedSubscript:@"ConnectionSuccessPercentagePerDay"];

      v103 = [NSNumber numberWithUnsignedInt:v86];
      [v150 setObject:v103 forKeyedSubscript:@"TotalConnectionPerDay"];

      v101 = v151;
      sub_10003BA40(v151, 0x83u, v150);
    }
  }

  else
  {

    v101 = v151;
  }

  *(v101 + 104) = 0;
  *(v101 + 112) = 0;
  *(v101 + 120) = 0;
  *(v101 + 128) = 0;
  *(v101 + 136) = 0;
  [*(v101 + 304) removeAllObjects];
  [*(v101 + 312) removeAllObjects];
  [*(v101 + 328) removeAllObjects];
  [*(v101 + 336) removeAllObjects];
  [*(v101 + 344) removeAllObjects];
  [*(v101 + 368) removeAllObjects];
  v104 = [*(v101 + 376) removeAllObjects];
  *(v101 + 596) = 0;
  sub_100446DB8(v104, 1);
  sub_10046F320(v105, 1, v128 == 1);

  return sub_1000088CC(v177);
}

uint64_t sub_1004769C4(uint64_t a1)
{
  v1 = *(a1 + 32);
  *(v1 + 578) = TMIsAutomaticTimeEnabled() != 0;

  return sub_10043F0B4(v1);
}

void sub_100476A08(uint64_t a1, __n128 a2)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 472);
  v4 = (v2 + 480);
  if (v3 != (v2 + 480))
  {
    a2.n128_u64[0] = 138412290;
    v17 = a2;
    do
    {
      v20[0] = @"NearbyActionType";
      v5 = *(v3 + 32);
      v6 = "?";
      if (v5 <= 0x5F)
      {
        v6 = off_100AF73F8[v5];
      }

      v7 = [NSString stringWithUTF8String:v6, *&v17];
      v21[0] = v7;
      v20[1] = @"NearbyActionTypeFlags";
      v8 = CUPrintFlags32();
      v21[1] = v8;
      v20[2] = @"NearbyActionTypeFlags2";
      v9 = CUPrintFlags32();
      v21[2] = v9;
      v20[3] = @"NearbyActionTypeCounter";
      v10 = [NSNumber numberWithUnsignedLongLong:v3[6]];
      v21[3] = v10;
      v20[4] = @"NearbyActionTypeDuration";
      v11 = [NSNumber numberWithUnsignedLongLong:v3[7]];
      v21[4] = v11;
      v12 = [NSDictionary dictionaryWithObjects:v21 forKeys:v20 count:5];

      v13 = qword_100BCE8D8;
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = v17.n128_u32[0];
        v19 = v12;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "sending NearbyActionDailyStats : %@", buf, 0xCu);
      }

      sub_10003BA40(v2, 0x7Eu, v12);

      v14 = v3[1];
      if (v14)
      {
        do
        {
          v15 = v14;
          v14 = *v14;
        }

        while (v14);
      }

      else
      {
        do
        {
          v15 = v3[2];
          v16 = *v15 == v3;
          v3 = v15;
        }

        while (!v16);
      }

      v3 = v15;
    }

    while (v15 != v4);
  }

  sub_10000CEDC(v2 + 472, *(v2 + 480));
  *(v2 + 480) = 0;
  *(v2 + 488) = 0;
  *(v2 + 472) = v4;
}

void sub_100476CB4(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(v1 + 584))
  {
    v7 = @"T26FindingSessionDailyCount";
    v2 = [NSNumber numberWithUnsignedInteger:?];
    v8 = v2;
    v3 = [NSDictionary dictionaryWithObjects:&v8 forKeys:&v7 count:1];

    v4 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_INFO))
    {
      v5 = 138412290;
      v6 = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "sending T26FindingSessionDailyCount: %@", &v5, 0xCu);
    }

    sub_10003BA40(v1, 0x85u, v3);
    *(v1 + 584) = 0;
  }
}

void sub_100476DEC(uint64_t a1, __n128 a2)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 496);
  v4 = (v2 + 504);
  if (v3 != (v2 + 504))
  {
    a2.n128_u64[0] = 138412290;
    v17 = a2;
    do
    {
      v20[0] = @"RefHour";
      v5 = [NSNumber numberWithUnsignedChar:*(v3 + 28), *&v17];
      v21[0] = v5;
      v20[1] = @"Duration";
      LODWORD(v6) = *(v3 + 8);
      v7 = [NSNumber numberWithFloat:v6];
      v21[1] = v7;
      v20[2] = @"RSSI";
      LODWORD(v8) = *(v3 + 9);
      v9 = [NSNumber numberWithFloat:v8];
      v21[2] = v9;
      v20[3] = @"MPS";
      LODWORD(v10) = *(v3 + 10);
      v11 = [NSNumber numberWithFloat:v10];
      v21[3] = v11;
      v12 = [NSDictionary dictionaryWithObjects:v21 forKeys:v20 count:4];

      v13 = qword_100BCE8D8;
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_INFO))
      {
        *buf = v17.n128_u32[0];
        v19 = v12;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "sending NearbyActionInfoV2DensityDailyStats : %@", buf, 0xCu);
      }

      sub_10003BA40(v2, 0x7Fu, v12);

      v14 = v3[1];
      if (v14)
      {
        do
        {
          v15 = v14;
          v14 = *v14;
        }

        while (v14);
      }

      else
      {
        do
        {
          v15 = v3[2];
          v16 = *v15 == v3;
          v3 = v15;
        }

        while (!v16);
      }

      v3 = v15;
    }

    while (v15 != v4);
  }

  sub_10000CEDC(v2 + 496, *(v2 + 504));
  *(v2 + 504) = 0;
  *(v2 + 512) = 0;
  *(v2 + 496) = v4;
}

void sub_100477038(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_10000C7D0();
  if ((*(*v2 + 2744))(v2) && *(v1 + 520))
  {
    v8 = @"AOPBTPrecisionFindingKeysCount";
    v3 = [NSNumber numberWithUnsignedInteger:?];
    v9 = v3;
    v4 = [NSDictionary dictionaryWithObjects:&v9 forKeys:&v8 count:1];

    v5 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_INFO))
    {
      v6 = 138412290;
      v7 = v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "sending AOPBTPrecisionFindingKeysUsage : %@", &v6, 0xCu);
    }

    sub_10003BA40(v1, 0x41u, v4);
    *(v1 + 520) = 0;
  }
}

void sub_1004771A4(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(v1 + 592))
  {
    v7 = @"GATTDiscoverServiceWithUUIDCacheMissDailyCount";
    v2 = [NSNumber numberWithUnsignedShort:?];
    v8 = v2;
    v3 = [NSDictionary dictionaryWithObjects:&v8 forKeys:&v7 count:1];

    v4 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 138412290;
      v6 = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "sending GattDailyStats : %@", &v5, 0xCu);
    }

    sub_10003BA40(v1, 0x5Cu, v3);
    *(v1 + 592) = 0;
  }
}

void sub_1004772DC(uint64_t a1)
{
  v1 = *(a1 + 32);
  memset(__s1, 0, sizeof(__s1));
  if (memcmp(__s1, v1 + 186, 0x30uLL))
  {
    v19[0] = @"TotalWildReports";
    v15 = [NSNumber numberWithUnsignedInt:v1[186]];
    v20[0] = v15;
    v19[1] = @"TotalNearOwnerReports";
    v14 = [NSNumber numberWithUnsignedInt:v1[187]];
    v20[1] = v14;
    v19[2] = @"TotalType18NearOwner";
    v13 = [NSNumber numberWithUnsignedInt:v1[188]];
    v20[2] = v13;
    v19[3] = @"TotalPoshNearOwnerApple";
    v12 = [NSNumber numberWithUnsignedInt:v1[189]];
    v20[3] = v12;
    v19[4] = @"TotalPoshNearOwnerNonApple";
    v11 = [NSNumber numberWithUnsignedInt:v1[190]];
    v20[4] = v11;
    v19[5] = @"TotalType18Wild";
    v2 = [NSNumber numberWithUnsignedInt:v1[191]];
    v20[5] = v2;
    v19[6] = @"TotalPoshWildApple";
    v3 = [NSNumber numberWithUnsignedInt:v1[192]];
    v20[6] = v3;
    v19[7] = @"TotalPoshWildNonApple";
    v4 = [NSNumber numberWithUnsignedInt:v1[193]];
    v20[7] = v4;
    v19[8] = @"TotalWildBufferReads";
    v5 = [NSNumber numberWithUnsignedInt:v1[194]];
    v20[8] = v5;
    v19[9] = @"TotalNearOwnerBufferReads";
    v6 = [NSNumber numberWithUnsignedInt:v1[195]];
    v20[9] = v6;
    v19[10] = @"MaxWildBufferReports";
    v7 = [NSNumber numberWithUnsignedInt:v1[196]];
    v20[10] = v7;
    v19[11] = @"MaxNearOwnerBufferReports";
    v8 = [NSNumber numberWithUnsignedInt:v1[197]];
    v20[11] = v8;
    v9 = [NSDictionary dictionaryWithObjects:v20 forKeys:v19 count:12];

    v10 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v18 = v9;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "sending AdvBufferFindMyDailyMetric : %@", buf, 0xCu);
    }

    sub_10003BA40(v1, 0x8Au, v9);
    *(v1 + 190) = 0u;
    *(v1 + 194) = 0u;
    *(v1 + 186) = 0u;
  }
}

void sub_1004776BC(uint64_t a1)
{
  v1 = 0;
  v2 = 0;
  v3 = *(a1 + 32);
  v4 = (v3 + 792);
  v5 = *(v3 + 792);
  v50[0] = v5 >> 1;
  v50[1] = (3 * v5) >> 2;
  v50[2] = 9 * v5 / 0xA;
  v50[3] = 19 * v5 / 0x14;
  v50[4] = 99 * v5 / 0x64;
  v47 = 0;
  v48 = 0;
  v49 = 0;
  v6 = *(v3 + 808);
  do
  {
    v7 = v50[v1];
    if (v7 > v6 && v2 <= 4)
    {
      do
      {
        v9 = v2 + 1;
        v6 += *(v3 + 812 + 4 * v2);
      }

      while (v7 > v6 && v2++ < 4);
      v2 = v9;
    }

    *(&v47 + v1++) = byte_1008A7CE5[v2];
  }

  while (v1 != 5);
  v11 = *(v3 + 860) + *(v3 + 856);
  v12 = v11 + *(v3 + 852);
  if (v12)
  {
    v13 = (v11 * 100.0) / v12;
  }

  else
  {
    v13 = 0.0;
  }

  *(v3 + 884) = v13;
  v45[0] = @"AdvPayload_Average";
  v42 = [NSNumber numberWithUnsignedInt:*(v3 + 804)];
  v46[0] = v42;
  v45[1] = @"ADVPayload_Max";
  v41 = [NSNumber numberWithUnsignedInt:*(v3 + 796)];
  v46[1] = v41;
  v45[2] = @"ADVPayload_Min";
  v40 = [NSNumber numberWithUnsignedInt:*(v3 + 800)];
  v46[2] = v40;
  v45[3] = @"AverageAdvertismentsReceived";
  v39 = [NSNumber numberWithUnsignedInt:*v4];
  v46[3] = v39;
  v45[4] = @"NumberOfAdvMode00";
  v38 = [NSNumber numberWithUnsignedInt:*(v3 + 828)];
  v46[4] = v38;
  v45[5] = @"NumberOfAdvMode01";
  v37 = [NSNumber numberWithUnsignedInt:*(v3 + 832)];
  v46[5] = v37;
  v45[6] = @"NumberOfAdvMode10";
  v36 = [NSNumber numberWithUnsignedInt:*(v3 + 836)];
  v46[6] = v36;
  v45[7] = @"NumberOfDirectedAdv";
  v35 = [NSNumber numberWithUnsignedInt:*(v3 + 840)];
  v46[7] = v35;
  v45[8] = @"NumberOfLE1MAdv";
  v34 = [NSNumber numberWithUnsignedInt:*(v3 + 844)];
  v46[8] = v34;
  v45[9] = @"NumberOfLE2MAdv";
  v33 = [NSNumber numberWithUnsignedInt:*(v3 + 848)];
  v46[9] = v33;
  v45[10] = @"AdvPayload_Median";
  v32 = [NSNumber numberWithUnsignedInt:v47];
  v46[10] = v32;
  v45[11] = @"AdvPayload_P75";
  v31 = [NSNumber numberWithUnsignedInt:HIDWORD(v47)];
  v46[11] = v31;
  v45[12] = @"AdvPayload_P90";
  v30 = [NSNumber numberWithUnsignedInt:v48];
  v46[12] = v30;
  v45[13] = @"AdvPayload_P95";
  v29 = [NSNumber numberWithUnsignedInt:HIDWORD(v48)];
  v46[13] = v29;
  v45[14] = @"AdvPayload_P99";
  v28 = [NSNumber numberWithUnsignedInt:v49];
  v46[14] = v28;
  v45[15] = @"PercentageOfExtAdv";
  LODWORD(v14) = *(v3 + 884);
  v27 = [NSNumber numberWithFloat:v14];
  v46[15] = v27;
  v45[16] = @"NumOfRxGoodLegacyAdv";
  v26 = [NSNumber numberWithUnsignedInt:*(v3 + 852)];
  v46[16] = v26;
  v45[17] = @"NumOfRxGoodExtAdv1MPHY";
  v25 = [NSNumber numberWithUnsignedInt:*(v3 + 856)];
  v46[17] = v25;
  v45[18] = @"NumOfRxGoodExtAdvCodedPHY";
  v24 = [NSNumber numberWithUnsignedInt:*(v3 + 860)];
  v46[18] = v24;
  v45[19] = @"NumOfRxGoodAuxAdv";
  v15 = [NSNumber numberWithUnsignedInt:*(v3 + 864)];
  v46[19] = v15;
  v45[20] = @"NumOfTxLegacyAdvScanRequest";
  v16 = [NSNumber numberWithUnsignedInt:*(v3 + 868)];
  v46[20] = v16;
  v45[21] = @"NumOfTxLegacyAdvConnRequest";
  v17 = [NSNumber numberWithUnsignedInt:*(v3 + 872)];
  v46[21] = v17;
  v45[22] = @"NumOfTxExtAdvScanRequest";
  v18 = [NSNumber numberWithUnsignedInt:*(v3 + 876)];
  v46[22] = v18;
  v45[23] = @"NumOfTxExtAdvConnRequest";
  v19 = [NSNumber numberWithUnsignedInt:*(v3 + 880)];
  v46[23] = v19;
  v45[24] = @"NumOfInternalAppReq";
  v20 = [NSNumber numberWithUnsignedInt:*(v3 + 888)];
  v46[24] = v20;
  v45[25] = @"NumOfExternalAppReq";
  v21 = [NSNumber numberWithUnsignedInt:*(v3 + 892)];
  v46[25] = v21;
  v22 = [NSDictionary dictionaryWithObjects:v46 forKeys:v45 count:26];

  v23 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v44 = v22;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "sending ExtAdvDailyMetric : %@", buf, 0xCu);
  }

  sub_10003BA40(v3, 0x8Bu, v22);
  *(v3 + 888) = 0;
  *(v3 + 856) = 0u;
  *(v3 + 872) = 0u;
  *(v3 + 824) = 0u;
  *(v3 + 840) = 0u;
  *v4 = 0u;
  *(v3 + 808) = 0u;
}

void sub_100477ECC(uint64_t a1, unsigned int *a2, int a3, uint64_t a4, unsigned int a5, uint8x8_t a6, uint8x8_t a7)
{
  if (a3 == 2)
  {
    v9 = @"Anomaly";
  }

  else
  {
    v9 = @"Normal";
  }

  v10 = *(a2 + 70);
  if (v10 > 0xC)
  {
    v11 = @"NA";
  }

  else
  {
    v11 = *(&off_100AF76F8 + v10);
  }

  v12 = *(a1 + 664);
  if (!v12)
  {
    goto LABEL_15;
  }

  v13 = a1 + 664;
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
  if (v13 == a1 + 664 || *(v13 + 32) > a5)
  {
LABEL_15:
    v108 = 0;
    v106 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v112 = 0;
    goto LABEL_16;
  }

  a6.i32[0] = *(v13 + 191);
  v32 = vmovl_u8(a6).u64[0];
  a7.i32[0] = *(v13 + 271);
  v33 = vmovl_u8(a7).u64[0];
  v34 = vceq_s16(v32, v33);
  v35 = vcgt_u16(v32, v33);
  v36 = vbic_s8(vsub_s16(vbic_s8(0x2000200020002, v35), v35), v34);
  if (*(v13 + 184))
  {
    v37 = 2;
  }

  else
  {
    v37 = 0;
  }

  if (*(v13 + 184))
  {
    v38 = 1;
  }

  else
  {
    v38 = 3;
  }

  if (*(v13 + 264))
  {
    v19 = v37;
  }

  else
  {
    v19 = v38;
  }

  if (*(v13 + 185))
  {
    v39 = 2;
  }

  else
  {
    v39 = 0;
  }

  if (*(v13 + 185))
  {
    v40 = 1;
  }

  else
  {
    v40 = 3;
  }

  if ((*(v13 + 265) & 1) == 0)
  {
    v39 = v40;
  }

  v108 = v39;
  if (*(v13 + 186))
  {
    v41 = 2;
  }

  else
  {
    v41 = 0;
  }

  if (*(v13 + 186))
  {
    v42 = 1;
  }

  else
  {
    v42 = 3;
  }

  if ((*(v13 + 266) & 1) == 0)
  {
    v41 = v42;
  }

  v106 = v41;
  v112 = v36;
  if (*(v13 + 187))
  {
    v43 = *(v13 + 189);
    v44 = *(v13 + 190);
    v45 = *(v13 + 188);
    if (*(v13 + 267))
    {
      v46 = *(v13 + 268);
      v47 = *(v13 + 269);
      v48 = *(v13 + 270);
      if (v45 & 1) != 0 && (v46)
      {
        v18 = 4;
      }

      else if (v43 & 1) != 0 && (v47)
      {
        v18 = 5;
      }

      else if (v44 & 1) != 0 && (v48)
      {
        v18 = 6;
      }

      else
      {
        if (v45 & 1) == 0 || (v46)
        {
          if (v43)
          {
            if (v47)
            {
              v18 = 0;
            }

            else
            {
              v18 = 8;
            }

            if ((v44 & 1) == 0 || (v47 & 1) == 0)
            {
              goto LABEL_91;
            }
          }

          else if ((v44 & 1) == 0)
          {
            v18 = 0;
            goto LABEL_91;
          }

          if (v48)
          {
            v18 = 0;
          }

          else
          {
            v18 = 9;
          }

          goto LABEL_91;
        }

        v18 = 7;
      }

LABEL_91:
      v17 = 2;
      goto LABEL_16;
    }

    if (*(v13 + 188))
    {
      v17 = 1;
      v18 = 1;
    }

    else
    {
      if (*(v13 + 189))
      {
        v18 = 2;
      }

      else if (*(v13 + 190))
      {
        v18 = 3;
      }

      else
      {
        v18 = 0;
      }

      v17 = 1;
    }
  }

  else
  {
    v18 = 0;
    if ((*(v13 + 267) | *(v13 + 187)))
    {
      v17 = 0;
    }

    else
    {
      v17 = 3;
    }
  }

LABEL_16:
  v20 = a2[2];
  v50 = v20 >> 4;
  v51 = v20 & 0xF;
  v49 = BYTE1(v20);
  v110 = NSPrintF_safe();
  v117[0] = @"AverageHIDLatencyInMSec";
  v99 = [NSNumber numberWithChar:*(a2 + 69), v49, v50, v51];
  v118[0] = v99;
  v117[1] = @"DisconnectReason";
  v98 = [NSNumber numberWithUnsignedInt:a2[7]];
  v118[1] = v98;
  v117[2] = @"HIDType";
  v101 = [NSNumber numberWithUnsignedChar:a4];
  v118[2] = v101;
  v117[3] = @"IsA2DPStreaming";
  if (qword_100B50910 != -1)
  {
    sub_10082C99C();
  }

  v100 = [NSNumber numberWithBool:*(off_100B50908 + 205)];
  v118[3] = v100;
  v117[4] = @"IsDeviceStatisticEnabled";
  v102 = [NSNumber numberWithBool:*(a2 + 12)];
  v118[4] = v102;
  v117[5] = @"IsHFPActive";
  if (qword_100B50910 != -1)
  {
    sub_10082C99C();
  }

  v103 = [NSNumber numberWithBool:*(off_100B50908 + 206)];
  v118[5] = v103;
  v117[6] = @"IsLEAStreaming";
  if (qword_100B50910 != -1)
  {
    sub_10082C99C();
  }

  v104 = [NSNumber numberWithBool:*(off_100B50908 + 207)];
  v118[6] = v104;
  v117[7] = @"NumberOfAppleMouseOrTrackpadConnected";
  if (qword_100B508F0 != -1)
  {
    sub_10082C960();
  }

  v97 = [NSNumber numberWithUnsignedInt:sub_10056D6E8(off_100B508E8)];
  v118[7] = v97;
  v117[8] = @"NumberOfAppleKeyboardConnected";
  if (qword_100B508F0 != -1)
  {
    sub_10082C960();
  }

  v105 = [NSNumber numberWithUnsignedInt:sub_10056D7F0(off_100B508E8)];
  v118[8] = v105;
  v117[9] = @"PER";
  v96 = [NSNumber numberWithInt:a2[6]];
  v118[9] = v96;
  v117[10] = @"PID";
  v95 = [NSNumber numberWithUnsignedInt:*a2];
  v118[10] = v95;
  v117[11] = @"RSSI";
  v94 = [NSNumber numberWithInt:a2[5]];
  v118[11] = v94;
  v117[12] = @"VID";
  v93 = [NSNumber numberWithUnsignedInt:a2[1]];
  v118[12] = v93;
  v118[13] = v110;
  v117[13] = @"FWVersion";
  v117[14] = @"DSniffOffset";
  v92 = [NSNumber numberWithUnsignedShort:*(a2 + 16)];
  v118[14] = v92;
  v117[15] = @"StatisticsCollectedInSeconds";
  v90 = [NSNumber numberWithUnsignedInt:a2[9]];
  v118[15] = v90;
  v117[16] = @"SniffIntervalServiced";
  v89 = [NSNumber numberWithUnsignedInt:a2[10]];
  v118[16] = v89;
  v117[17] = @"SniffIntervalServicedPercentage";
  v88 = [NSNumber numberWithChar:*(a2 + 44)];
  v118[17] = v88;
  v117[18] = @"SniffIntervalSkipped";
  v87 = [NSNumber numberWithUnsignedInt:a2[12]];
  v118[18] = v87;
  v117[19] = @"SniffIntervalSkippedPercentage";
  v86 = [NSNumber numberWithChar:*(a2 + 52)];
  v118[19] = v86;
  v117[20] = @"CentralSkipDenials";
  v85 = [NSNumber numberWithUnsignedInt:a2[16]];
  v118[20] = v85;
  v117[21] = @"CentralSkipDenialsPercentage";
  v84 = [NSNumber numberWithChar:*(a2 + 68)];
  v118[21] = v84;
  v117[22] = @"NoSync";
  v83 = [NSNumber numberWithUnsignedInt:a2[14]];
  v118[22] = v83;
  v117[23] = @"NoSyncPercentage";
  v82 = [NSNumber numberWithChar:*(a2 + 60)];
  v118[23] = v82;
  v118[24] = v11;
  v117[24] = @"MaxHIDLatencyInMSec";
  v117[25] = @"TotalAnomaliesInBins";
  v81 = [NSNumber numberWithUnsignedInt:a2[4]];
  v118[25] = v81;
  v117[26] = @"SniffInterval_Bin_00_7.5ms";
  v80 = [NSNumber numberWithUnsignedInt:a2[18]];
  v118[26] = v80;
  v117[27] = @"SniffInterval_Bin_01_11.25ms";
  v79 = [NSNumber numberWithUnsignedInt:a2[19]];
  v118[27] = v79;
  v117[28] = @"SniffInterval_Bin_02_15ms";
  v78 = [NSNumber numberWithUnsignedInt:a2[20]];
  v118[28] = v78;
  v117[29] = @"SniffInterval_Bin_03_22.5ms";
  v77 = [NSNumber numberWithUnsignedInt:a2[21]];
  v118[29] = v77;
  v117[30] = @"SniffInterval_Bin_04_30ms";
  v76 = [NSNumber numberWithUnsignedInt:a2[22]];
  v118[30] = v76;
  v117[31] = @"SniffInterval_Bin_05_45ms";
  v75 = [NSNumber numberWithUnsignedInt:a2[23]];
  v118[31] = v75;
  v117[32] = @"SniffInterval_Bin_06_60ms";
  v74 = [NSNumber numberWithUnsignedInt:a2[24]];
  v118[32] = v74;
  v117[33] = @"SniffInterval_Bin_07_90ms";
  v73 = [NSNumber numberWithUnsignedInt:a2[25]];
  v118[33] = v73;
  v117[34] = @"SniffInterval_Bin_08_120ms";
  v72 = [NSNumber numberWithUnsignedInt:a2[26]];
  v118[34] = v72;
  v117[35] = @"SniffInterval_Bin_09_150ms";
  v71 = [NSNumber numberWithUnsignedInt:a2[27]];
  v118[35] = v71;
  v117[36] = @"SniffInterval_Bin_10_500ms";
  v70 = [NSNumber numberWithUnsignedInt:a2[28]];
  v118[36] = v70;
  v117[37] = @"SniffInterval_Bin_11_750ms";
  v69 = [NSNumber numberWithUnsignedInt:a2[29]];
  v118[37] = v69;
  v117[38] = @"SniffInterval_Bin_12_>750ms";
  v68 = [NSNumber numberWithUnsignedInt:a2[30]];
  v118[38] = v68;
  v118[39] = v9;
  v117[39] = @"TriggerReason";
  v117[40] = @"ConnectedClassicDevice";
  v67 = [NSNumber numberWithUnsignedChar:v112.u8[0]];
  v118[40] = v67;
  v117[41] = @"ConnectedClassicHIDDevice";
  v66 = [NSNumber numberWithUnsignedChar:v112.u8[2]];
  v118[41] = v66;
  v117[42] = @"ConnectedLEDevice";
  v65 = [NSNumber numberWithUnsignedChar:v112.u8[4]];
  v118[42] = v65;
  v117[43] = @"ConnectedLEHIDDevice";
  v64 = [NSNumber numberWithUnsignedChar:v112.u8[6]];
  v118[43] = v64;
  v117[44] = @"A2DPSessionState";
  v63 = [NSNumber numberWithUnsignedChar:v19];
  v118[44] = v63;
  v117[45] = @"HFPSessionState";
  v109 = [NSNumber numberWithUnsignedChar:v108];
  v118[45] = v109;
  v117[46] = @"LEASessionState";
  v107 = [NSNumber numberWithUnsignedChar:v106];
  v118[46] = v107;
  v117[47] = @"WiFiPowerState";
  v62 = [NSNumber numberWithUnsignedChar:v17];
  v118[47] = v62;
  v117[48] = @"WiFiOnWhichBand";
  v61 = [NSNumber numberWithUnsignedChar:v18];
  v118[48] = v61;
  v117[49] = @"NumberOfRSSIIncreasedBetween03To05dBm";
  v60 = [NSNumber numberWithUnsignedInt:a2[31]];
  v118[49] = v60;
  v117[50] = @"NumberOfRSSIIncreasedBetween06To10dBm";
  v59 = [NSNumber numberWithUnsignedInt:a2[32]];
  v118[50] = v59;
  v117[51] = @"NumberOfRSSIIncreasedBetween11To15dBm";
  v58 = [NSNumber numberWithUnsignedInt:a2[33]];
  v118[51] = v58;
  v117[52] = @"NumberOfRSSIIncreasedBetween16To20dBm";
  v57 = [NSNumber numberWithUnsignedInt:a2[34]];
  v118[52] = v57;
  v117[53] = @"NumberOfRSSIIncreasedBetween21To25dBm";
  v56 = [NSNumber numberWithUnsignedInt:a2[35]];
  v118[53] = v56;
  v117[54] = @"NumberOfRSSIIncreasedBetween26To30dBm";
  v55 = [NSNumber numberWithUnsignedInt:a2[36]];
  v118[54] = v55;
  v117[55] = @"NumberOfRSSIIncreasedMoreThan30dBm";
  v54 = [NSNumber numberWithUnsignedInt:a2[37]];
  v118[55] = v54;
  v117[56] = @"NumberOfRSSIDecreasedBetween03To05dBm";
  v53 = [NSNumber numberWithUnsignedInt:a2[38]];
  v118[56] = v53;
  v117[57] = @"NumberOfRSSIDecreasedBetween06To10dBm";
  v52 = [NSNumber numberWithUnsignedInt:a2[39]];
  v118[57] = v52;
  v117[58] = @"NumberOfRSSIDecreasedBetween11To15dBm";
  v21 = [NSNumber numberWithUnsignedInt:a2[40]];
  v118[58] = v21;
  v117[59] = @"NumberOfRSSIDecreasedBetween16To20dBm";
  v22 = [NSNumber numberWithUnsignedInt:a2[41]];
  v118[59] = v22;
  v117[60] = @"NumberOfRSSIDecreasedBetween21To25dBm";
  v23 = [NSNumber numberWithUnsignedInt:a2[42]];
  v118[60] = v23;
  v117[61] = @"NumberOfRSSIDecreasedBetween26To30dBm";
  v24 = [NSNumber numberWithUnsignedInt:a2[43]];
  v118[61] = v24;
  v117[62] = @"NumberOfRSSIDecreasedMoreThan30dBm";
  v25 = [NSNumber numberWithUnsignedInt:a2[44]];
  v118[62] = v25;
  v117[63] = @"DeviceHighestRSSI";
  v26 = [NSNumber numberWithInt:a2[45]];
  v118[63] = v26;
  v117[64] = @"DeviceLowestRSSI";
  v27 = [NSNumber numberWithInt:a2[46]];
  v118[64] = v27;
  v117[65] = @"DeviceType";
  v116 = a2[47];
  v28 = [NSString stringWithUTF8String:sub_10056CB30(&v116)];
  v118[65] = v28;
  v117[66] = @"AppearanceValue";
  v29 = [NSNumber numberWithUnsignedShort:*(a2 + 96)];
  v118[66] = v29;
  v113 = [NSDictionary dictionaryWithObjects:v118 forKeys:v117 count:67];

  sub_10003BA40(a1, 0x61u, v113);
  if (a3 == 2)
  {
    v30 = [NSMutableDictionary dictionaryWithDictionary:v113];
    [v30 setObject:@"HIDLagDetected" forKeyedSubscript:@"_input"];
    v114[0] = _NSConcreteStackBlock;
    v114[1] = 3221225472;
    v114[2] = sub_100479298;
    v114[3] = &unk_100AF6AA0;
    v115 = objc_alloc_init(BTServicesClient);
    v31 = v115;
    [v31 diagnosticControl:v30 completion:v114];
  }
}

void sub_1004792A0(uint64_t a1, double *a2)
{
  v12[0] = @"HIDIntervalUpdated";
  v11[0] = @"_input";
  v11[1] = @"DeviceName";
  v3 = a2;
  if (*(a2 + 23) < 0)
  {
    v3 = *a2;
  }

  v4 = [NSString stringWithUTF8String:v3];
  v12[1] = v4;
  v11[2] = @"DeviceType";
  v5 = [NSNumber numberWithUnsignedChar:*(a2 + 24)];
  v12[2] = v5;
  v11[3] = @"Intervalms";
  v6 = [NSNumber numberWithDouble:a2[4]];
  v12[3] = v6;
  v7 = [NSDictionary dictionaryWithObjects:v12 forKeys:v11 count:4];

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100479488;
  v9[3] = &unk_100AF6AA0;
  v10 = objc_alloc_init(BTServicesClient);
  v8 = v10;
  [v8 diagnosticControl:v7 completion:v9];
}

uint64_t sub_100479490(uint64_t a1, void *a2)
{
  v2 = a2;
  if (qword_100B508D0 != -1)
  {
    sub_10082CC30();
  }

  v3 = off_100B508C8;
  sub_100007E30(v15, "A1603");
  if (sub_10004EB40(v3, v2, v15))
  {
    v4 = 1;
  }

  else
  {
    if (qword_100B508D0 != -1)
    {
      sub_10082CA78();
    }

    v5 = off_100B508C8;
    sub_100007E30(v13, "A2051");
    if (sub_10004EB40(v5, v2, v13))
    {
      v4 = 1;
    }

    else
    {
      if (qword_100B508D0 != -1)
      {
        sub_10082CA78();
      }

      v6 = off_100B508C8;
      sub_100007E30(v11, "A3085");
      if (sub_10004EB40(v6, v2, v11))
      {
        v4 = 1;
      }

      else
      {
        if (qword_100B508D0 != -1)
        {
          sub_10082CA78();
        }

        v7 = off_100B508C8;
        sub_100007E30(__p, "A2538");
        v4 = sub_10004EB40(v7, v2, __p);
        if (v10 < 0)
        {
          operator delete(__p[0]);
        }
      }

      if (v12 < 0)
      {
        operator delete(v11[0]);
      }
    }

    if (v14 < 0)
    {
      operator delete(v13[0]);
    }
  }

  if (v16 < 0)
  {
    operator delete(v15[0]);
  }

  return v4;
}

void sub_10047961C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (*(v27 - 33) < 0)
  {
    operator delete(*(v27 - 56));
  }

  _Unwind_Resume(a1);
}

void sub_10047968C(uint64_t a1, __int16 a2)
{
  v4 = sub_100066098();
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100479710;
  v5[3] = &unk_100AEB940;
  v5[4] = a1;
  v6 = a2;
  sub_10000CA94(v4, v5);
}

void sub_100479728(uint64_t a1, void *a2, __int16 a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int16 a9, char a10)
{
  v12 = a2;
  v13 = sub_100066098();
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100479814;
  v15[3] = &unk_100AE2880;
  v17 = a1;
  v14 = v12;
  v16 = v14;
  v18 = a3;
  v20 = a10;
  v19 = a9;
  sub_10000CA94(v13, v15);
}

void *sub_100479814(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(v2 + 992);
  if (v3 != (v2 + 1000))
  {
    while (![*(a1 + 32) isEqual:v3[4]])
    {
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
      if (v5 == (v2 + 1000))
      {
        goto LABEL_11;
      }
    }

    sub_1003C4E3C((v2 + 992), v3);
  }

LABEL_11:
  v7 = *(a1 + 48);
  v8 = *(a1 + 52);
  result = sub_100480D0C(v2 + 992, (a1 + 32));
  *(result + 10) = v7;
  *(result + 44) = v8;
  *(result + 45) = 0;
  return result;
}

void sub_100479910(uint64_t a1, char a2, char a3, uint64_t a4, char a5, char a6, char a7)
{
  v13 = sub_100066098();
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1004799C4;
  v14[3] = &unk_100AF2A50;
  v14[4] = a1;
  v15 = a3;
  v16 = a2;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  sub_10000CA94(v13, v14);
}

uint64_t sub_1004799C4(uint64_t result)
{
  v1 = *(result + 32);
  v1[530] = *(result + 40);
  v1[531] = *(result + 41);
  v1[532] = *(result + 42);
  v1[533] = *(result + 43);
  v1[534] = *(result + 44);
  return result;
}

void sub_100479A04(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100479A8C;
  block[3] = &unk_100ADF8F8;
  block[4] = a1;
  if (qword_100B6D8F8 != -1)
  {
    dispatch_once(&qword_100B6D8F8, block);
  }
}

void sub_100479A9C(uint64_t a1)
{
  v2 = sub_100066098();
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100479B18;
  v3[3] = &unk_100ADF8F8;
  v3[4] = a1;
  sub_10000CA94(v2, v3);
}

double sub_100479B18(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = 0.0;
  *(v1 + 536) = 0;
  *(v1 + 528) = 0;
  return result;
}

void sub_100479B34(uint64_t a1)
{
  v2 = sub_100066098();
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100479BB0;
  v3[3] = &unk_100ADF8F8;
  v3[4] = a1;
  sub_10000CA94(v2, v3);
}

double sub_100479BB0(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = 0.0;
  *(v1 + 536) = 0;
  *(v1 + 528) = 0;
  return result;
}

void sub_100479BCC(uint64_t a1, int a2)
{
  v4 = sub_100066098();
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100479C50;
  v5[3] = &unk_100ADF940;
  v5[4] = a1;
  v6 = a2;
  sub_10000CA94(v4, v5);
}

void sub_100479C68(uint64_t a1, int a2)
{
  v4 = sub_100066098();
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100479CEC;
  v5[3] = &unk_100ADF940;
  v5[4] = a1;
  v6 = a2;
  sub_10000CA94(v4, v5);
}

void sub_100479D04(uint64_t a1, uint64_t a2, int a3)
{
  v5 = sub_100066098();
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100479D88;
  v6[3] = &unk_100ADF940;
  v6[4] = a1;
  v7 = a3;
  sub_10000CA94(v5, v6);
}

uint64_t sub_100479D88(uint64_t result)
{
  if (!*(result + 40))
  {
    ++*(*(result + 32) + 529);
  }

  return result;
}

void sub_100479DB0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_100066098();
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100479E7C;
  v6[3] = &unk_100AE1200;
  v8 = a1;
  v5 = v3;
  v7 = v5;
  sub_10000CA94(v4, v6);
}

uint64_t *sub_100479E7C(uint64_t *result)
{
  v1 = result;
  v2 = result[5];
  if (*(v2 + 529))
  {
    --*(v2 + 529);
  }

  v3 = *(v2 + 992);
  if (v3 != (v2 + 1000))
  {
    while (1)
    {
      result = [v1[4] isEqual:v3[4]];
      if (result)
      {
        break;
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
      if (v5 == (v2 + 1000))
      {
        return result;
      }
    }

    return sub_1003C4E3C((v2 + 992), v3);
  }

  return result;
}

void sub_100479F40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100066098();
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100479FD0;
  v7[3] = &unk_100AEC130;
  v7[4] = a1;
  v7[5] = a2;
  v7[6] = a3;
  sub_10000CA94(v6, v7);
}

__n128 sub_100479FD0(uint64_t a1)
{
  result = *(a1 + 40);
  *(*(a1 + 32) + 544) = result;
  return result;
}

_BYTE *sub_100479FE8@<X0>(unsigned int a1@<W1>, _BYTE *a2@<X8>)
{
  if (a1 > 0xC)
  {
    v2 = "NA";
  }

  else
  {
    v2 = off_100AF7760[a1];
  }

  return sub_100007E30(a2, v2);
}

double sub_10047A010(uint64_t a1, unsigned int a2)
{
  result = 0.0;
  if (a2 <= 0xC)
  {
    return dbl_1008A80C8[a2];
  }

  return result;
}

void sub_10047A02C(uint64_t a1, uint64_t a2, __int16 a3)
{
  v6 = sub_100066098();
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10047A0BC;
  v7[3] = &unk_100AE0EF8;
  v7[4] = a1;
  v7[5] = a2;
  v8 = a3;
  sub_10000CA94(v6, v7);
}

uint64_t sub_10047A0CC(uint64_t result, uint64_t a2, unsigned int a3)
{
  v8 = a3;
  v3 = *(result + 664);
  if (v3)
  {
    v4 = result + 664;
    do
    {
      v5 = *(v3 + 32);
      v6 = v5 >= a3;
      v7 = v5 < a3;
      if (v6)
      {
        v4 = v3;
      }

      v3 = *(v3 + 8 * v7);
    }

    while (v3);
    if (v4 != result + 664 && *(v4 + 32) <= a3)
    {
      return sub_100480E04(result + 656, &v8);
    }
  }

  return result;
}

void sub_10047A134(uint64_t a1, __int16 a2, uint64_t a3, char a4, __int16 a5)
{
  v10 = sub_100066098();
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10047A1DC;
  v11[3] = &unk_100AEDA80;
  v12 = a2;
  v11[4] = a1;
  v11[5] = a3;
  v14 = a4;
  v13 = a5;
  sub_10000CA94(v10, v11);
}

double sub_10047A1F4(uint64_t a1, unsigned int a2, uint64_t a3, char a4, __int16 a5, uint8x8_t a6)
{
  v9 = a2;
  v38 = a2;
  v10 = *(a1 + 664);
  if (!v10)
  {
    goto LABEL_9;
  }

  v11 = a1 + 664;
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
  if (v11 != a1 + 664 && *(v11 + 32) <= a2)
  {
    v24 = *(v11 + 80);
    v42 = *(v11 + 64);
    v43[0] = v24;
    *(v43 + 9) = *(v11 + 89);
    v37 = *(v11 + 195);
    v40 = *(v11 + 264);
    v25.i32[1] = DWORD1(v40);
    v41 = *(v11 + 280);
    v26 = *(a1 + 573);
    v27 = *(a1 + 576);
    v28 = *(a1 + 544);
    v29 = *(a1 + 548);
    v30 = v29 == 1;
    v31 = v29 == 2;
    v32 = v29 == 3;
    v39 = &v38;
    v25.i32[0] = *(a1 + 528);
    v35 = vmovl_u8(v25).u64[0];
    v33 = sub_100480E88(a1 + 656, &v38);
    v33[6] = 0;
    v33[7] = 0;
    v33[5] = a3;
    v34 = v43[0];
    *(v33 + 4) = v42;
    *(v33 + 5) = v34;
    *(v33 + 89) = *(v43 + 9);
    *(v33 + 105) = a4;
    *(v33 + 53) = a5;
    *(v33 + 54) = v9;
    *(v33 + 110) = 0u;
    *(v33 + 126) = 0u;
    *(v33 + 142) = 0u;
    *(v33 + 158) = 0u;
    *(v33 + 21) = 0u;
    *(v33 + 92) = v26;
    *(v33 + 186) = v27;
    *(v33 + 187) = v28;
    *(v33 + 188) = v30;
    *(v33 + 189) = v31;
    *(v33 + 190) = v32;
    *(v33 + 191) = vuzp1_s8(vzip1_s16(v35, vext_s8(v35, vdup_lane_s16(v35, 2), 6uLL)), 0).u32[0];
    *(v33 + 195) = v37;
    *(v33 + 15) = 0u;
    *(v33 + 228) = 0u;
    *(v33 + 212) = 0u;
    *(v33 + 196) = 0u;
    v33[32] = 0x3E8FFFFFC18;
    result = *&v40;
    *(v33 + 33) = v40;
    v33[35] = v41;
  }

  else
  {
LABEL_9:
    v15 = *(a1 + 573);
    v16 = *(a1 + 576);
    v17 = *(a1 + 544);
    v18 = *(a1 + 548);
    v19 = v18 == 1;
    v20 = v18 == 2;
    v21 = v18 == 3;
    *&v42 = &v38;
    a6.i32[0] = *(a1 + 528);
    v36 = vmovl_u8(a6).u64[0];
    v22 = sub_100480E88(a1 + 656, &v38);
    v22[5] = a3;
    *(v22 + 3) = 0u;
    *(v22 + 4) = 0u;
    *(v22 + 5) = 0u;
    *(v22 + 89) = 0u;
    *(v22 + 105) = a4;
    *(v22 + 53) = a5;
    *(v22 + 54) = v9;
    *(v22 + 110) = 0u;
    *(v22 + 126) = 0u;
    *(v22 + 142) = 0u;
    *(v22 + 158) = 0u;
    *(v22 + 21) = 0u;
    *(v22 + 92) = v15;
    *(v22 + 186) = v16;
    *(v22 + 187) = v17;
    *(v22 + 188) = v19;
    *(v22 + 189) = v20;
    *(v22 + 190) = v21;
    *(v22 + 191) = vuzp1_s8(vzip1_s16(v36, vext_s8(v36, vdup_lane_s16(v36, 2), 6uLL)), 0).u32[0];
    *(v22 + 15) = 0u;
    *(v22 + 227) = 0u;
    *(v22 + 211) = 0u;
    *(v22 + 195) = 0u;
    *&result = 0x3E8FFFFFC18;
    v22[32] = 0x3E8FFFFFC18;
    v22[34] = 0;
    v22[35] = 0;
    v22[33] = 0;
  }

  return result;
}

void sub_10047A4C8(uint64_t a1, __int16 a2, int a3, int a4, int a5, int a6, int a7)
{
  v14 = sub_100066098();
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10047A584;
  v15[3] = &unk_100AF6B30;
  v15[4] = a1;
  v21 = a2;
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v20 = a7;
  sub_10000CA94(v14, v15);
}

double sub_10047A5A4(uint64_t a1, unsigned int a2, int a3, int a4, int a5, int a6, int a7, __int16 a8)
{
  v39 = a2;
  v14 = *(a1 + 664);
  if (!v14)
  {
    goto LABEL_9;
  }

  v15 = a1 + 664;
  do
  {
    v16 = *(v14 + 32);
    v17 = v16 >= a2;
    v18 = v16 < a2;
    if (v17)
    {
      v15 = v14;
    }

    v14 = *(v14 + 8 * v18);
  }

  while (v14);
  if (v15 != a1 + 664 && *(v15 + 32) <= a2)
  {
    v36 = *(v15 + 40);
    v37 = *(v15 + 56);
    v38 = *(v15 + 72);
    v32 = *(v15 + 224);
    v33 = *(v15 + 240);
    v34 = *(v15 + 256);
    v35 = *(v15 + 272);
    v28 = *(v15 + 160);
    v29 = *(v15 + 176);
    v30 = *(v15 + 192);
    v31 = *(v15 + 208);
    v24 = *(v15 + 96);
    v25 = *(v15 + 112);
    v26 = *(v15 + 128);
    v27 = *(v15 + 144);
    v22 = *(v15 + 282);
    v23 = *(v15 + 286);
    v40 = &v39;
    v21 = sub_100480E88(a1 + 656, &v39);
    *(v21 + 5) = v36;
    *(v21 + 7) = v37;
    v21[9] = v38;
    *(v21 + 20) = a3;
    *(v21 + 21) = a4;
    *(v21 + 22) = a5;
    *(v21 + 23) = a6;
    *(v21 + 14) = v32;
    *(v21 + 15) = v33;
    *(v21 + 16) = v34;
    *(v21 + 68) = v35;
    *(v21 + 10) = v28;
    *(v21 + 11) = v29;
    *(v21 + 12) = v30;
    *(v21 + 13) = v31;
    *(v21 + 6) = v24;
    *(v21 + 7) = v25;
    result = *&v26;
    *(v21 + 8) = v26;
    *(v21 + 9) = v27;
    *(v21 + 69) = a7;
    *(v21 + 140) = a8;
    *(v21 + 282) = v22;
    *(v21 + 143) = v23;
  }

  else
  {
LABEL_9:
    v19 = sub_100480E88(a1 + 656, &v39);
    v19[9] = 0;
    result = 0.0;
    *(v19 + 7) = 0u;
    *(v19 + 5) = 0u;
    *(v19 + 20) = a3;
    *(v19 + 21) = a4;
    *(v19 + 22) = a5;
    *(v19 + 23) = a6;
    *(v19 + 6) = 0u;
    *(v19 + 7) = 0u;
    *(v19 + 8) = 0u;
    *(v19 + 9) = 0u;
    *(v19 + 10) = 0u;
    *(v19 + 11) = 0u;
    *(v19 + 12) = 0u;
    *(v19 + 13) = 0u;
    *(v19 + 14) = 0u;
    *(v19 + 15) = 0u;
    *(v19 + 16) = 0u;
    *(v19 + 68) = 0;
    *(v19 + 69) = a7;
    *(v19 + 140) = a8;
    *(v19 + 282) = 0;
    *(v19 + 143) = 0;
  }

  return result;
}

void sub_10047A7A0(uint64_t a1, uint64_t a2, __int16 a3)
{
  v6 = sub_100066098();
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10047A830;
  v7[3] = &unk_100AE0EF8;
  v7[4] = a1;
  v7[5] = a2;
  v8 = a3;
  sub_10000CA94(v6, v7);
}

__n128 sub_10047A844(uint64_t a1, uint64_t a2, unsigned int a3, char a4)
{
  v5 = a3;
  v44 = a3;
  if (a3)
  {
LABEL_2:
    v6 = (a1 + 656);
    v7 = (a1 + 664);
    v8 = *(a1 + 664);
    if (!v8)
    {
      goto LABEL_10;
    }

    v9 = a1 + 664;
    do
    {
      v10 = *(v8 + 32);
      v11 = v10 >= v5;
      v12 = v10 < v5;
      if (v11)
      {
        v9 = v8;
      }

      v8 = *(v8 + 8 * v12);
    }

    while (v8);
    if (v9 != v7 && v5 >= *(v9 + 32))
    {
      v25 = *(v9 + 248);
      *&v50[48] = *(v9 + 232);
      *&v50[64] = v25;
      v52 = *(v9 + 280);
      v26 = *(v9 + 184);
      *&v49[64] = *(v9 + 168);
      *v50 = v26;
      v27 = *(v9 + 216);
      *&v50[16] = *(v9 + 200);
      *&v50[32] = v27;
      v28 = *(v9 + 120);
      *v49 = *(v9 + 104);
      *&v49[16] = v28;
      v29 = *(v9 + 152);
      *&v49[32] = *(v9 + 136);
      *&v49[48] = v29;
      v30 = *(v9 + 56);
      *buf = *(v9 + 40);
      *&buf[16] = v30;
      v31 = *(v9 + 88);
      v47 = *(v9 + 72);
      v48 = v31;
      v51 = *(v9 + 264);
      if (vmaxv_u16(vmovn_s32(vtstq_s32(*&v49[12], *&v49[12]))))
      {
        sub_10047ACA4(a1, buf, 1);
      }

      *&buf[8] = 0;
      *&buf[16] = 0;
      memset(&v49[6], 0, 74);
      if (a4)
      {
        *&v51 = *v50;
        BYTE8(v51) = v50[8];
        *(&v51 + 9) = *&v50[9];
      }

      else
      {
        memset(&v50[12], 0, 60);
        *&v50[72] = 0x3E8FFFFFC18;
      }

      v45 = &v44;
      v32 = sub_100480E88(v6, &v44);
      v33 = v47;
      result = v48;
      v34 = *&buf[16];
      *(v32 + 5) = *buf;
      v36 = *&v49[32];
      v35 = *&v49[48];
      v37 = *&v49[16];
      *(v32 + 13) = *v49;
      v39 = *&v50[16];
      v38 = *&v50[32];
      v40 = *v50;
      *(v32 + 21) = *&v49[64];
      v41 = v52;
      v43 = *&v50[64];
      v42 = v51;
      *(v32 + 29) = *&v50[48];
      *(v32 + 31) = v43;
      *(v32 + 33) = v42;
      *(v32 + 23) = v40;
      v32[35] = v41;
      *(v32 + 25) = v39;
      *(v32 + 27) = v38;
      *(v32 + 15) = v37;
      *(v32 + 17) = v36;
      *(v32 + 19) = v35;
      *(v32 + 7) = v34;
      *(v32 + 9) = v33;
      *(v32 + 11) = result;
    }

    else
    {
LABEL_10:
      v13 = qword_100BCE8D8;
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        *&buf[4] = "sendAccumulatedHIDLatencyStatsData";
        *&buf[12] = 1024;
        *&buf[14] = v5;
        *&buf[18] = 1024;
        *&buf[20] = v5;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%s -- Did not find stored HID Latency Statistics data for LM Handle %d (0x%04x)", buf, 0x18u);
      }

      v14 = qword_100BCE8D8;
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        *&buf[4] = "sendAccumulatedHIDLatencyStatsData";
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%s -- LM handle in the list: ", buf, 0xCu);
      }

      v16 = *v6;
      if (*v6 != v7)
      {
        do
        {
          v17 = qword_100BCE8D8;
          if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
          {
            v18 = *(v16 + 16);
            *buf = 136315394;
            *&buf[4] = "sendAccumulatedHIDLatencyStatsData";
            *&buf[12] = 1024;
            *&buf[14] = v18;
            _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%s -- LM Handle 0x%02x", buf, 0x12u);
          }

          v19 = v16[1];
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
              v20 = v16[2];
              v21 = *v20 == v16;
              v16 = v20;
            }

            while (!v21);
          }

          v16 = v20;
        }

        while (v20 != v7);
      }
    }

    return result;
  }

  if (a2)
  {
    v22 = *(a1 + 656);
    if (v22 != (a1 + 664))
    {
      while (v22[5] != a2)
      {
        v23 = v22[1];
        if (v23)
        {
          do
          {
            v24 = v23;
            v23 = *v23;
          }

          while (v23);
        }

        else
        {
          do
          {
            v24 = v22[2];
            v21 = *v24 == v22;
            v22 = v24;
          }

          while (!v21);
        }

        v22 = v24;
        if (v24 == (a1 + 664))
        {
          goto LABEL_41;
        }
      }

      v44 = *(v22 + 16);
      v5 = v44;
      if (v44)
      {
        goto LABEL_2;
      }
    }
  }

  else if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
  {
    sub_10082DC20();
  }

LABEL_41:
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
  {
    sub_10082DCA0();
  }

  return result;
}

void sub_10047ACA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_10047B99C(a1, a2, a3);
  v6 = *(a2 + 65);
  if ((v6 - 1) > 1u)
  {
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
    {
      sub_10082DD34();
    }
  }

  else
  {
    if (a3 == 2)
    {
      memset(v26, 0, 250);
      bzero(v26, 0xFAuLL);
      sub_100479FE8(*(a2 + 29), &__p);
      if ((v23 & 0x8000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p;
      }

      sub_100304ACC(v26, 250, "HID Latency Statistics events indicated HID lag issue is detected with %s latency for connection handle 0x%04x, vid = %d (0x%04x), pid = %d (0x%04x)", v7, v8, v9, v10, v11, p_p);
      if (SBYTE1(v23) < 0)
      {
        operator delete(__p);
      }

      sub_1001C429C(v26);
      v13 = qword_100BCE8D8;
      v5 = os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT);
      if (v5)
      {
        v14 = *(a2 + 68);
        v15 = *(a2 + 44);
        v16 = *(a2 + 48);
        LODWORD(__p) = 67110144;
        HIDWORD(__p) = v14;
        v18 = 1024;
        v19 = v15;
        v20 = 1024;
        v21 = v15;
        v22 = 1024;
        v23 = v16;
        v24 = 1024;
        v25 = v16;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "HID Latency Statistics events indicated HID lag issue is detected on connection handle 0x%04x, vid = %d (0x%04x), pid = %d (0x%04x)", &__p, 0x20u);
      }

      v6 = *(a2 + 65);
      if (v6 == 1)
      {
        *(a2 + 28) = llround(sub_10047A010(v5, *(a2 + 29)));
      }
    }

    sub_10047B7EC(v5, a3, 0, v6, a2);
  }
}

void sub_10047AEA4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10047AEC8(uint64_t a1, unsigned __int16 *a2)
{
  if (a2)
  {
    v2 = *a2;
    v3 = *(a1 + 664);
    if (!v3)
    {
      goto LABEL_19;
    }

    v4 = a1 + 664;
    do
    {
      v5 = *(v3 + 32);
      v6 = v5 >= v2;
      v7 = v5 < v2;
      if (v6)
      {
        v4 = v3;
      }

      v3 = *(v3 + 8 * v7);
    }

    while (v3);
    if (v4 != a1 + 664 && v2 >= *(v4 + 32))
    {
      v8 = *(v4 + 120);
      *v19 = *(v4 + 104);
      *&v19[16] = v8;
      v9 = *(v4 + 248);
      v26 = *(v4 + 232);
      v27 = v9;
      v29 = *(v4 + 280);
      v10 = *(v4 + 184);
      v22 = *(v4 + 168);
      v23 = v10;
      v11 = *(v4 + 216);
      v24 = *(v4 + 200);
      v25 = v11;
      v12 = *(v4 + 152);
      v20 = *(v4 + 136);
      v21 = v12;
      v13 = *(v4 + 56);
      v18[0] = *(v4 + 40);
      v18[1] = v13;
      v14 = *(v4 + 88);
      v18[2] = *(v4 + 72);
      v18[3] = v14;
      v28 = *(v4 + 264);
      *&v19[6] = a2[1];
      *&v19[8] = *(a2 + 4);
      *&v19[12] = vmovl_u16(*(a2 + 5));
      v15 = (a2 + 13);
      for (i = 92; i != 144; i += 4)
      {
        v17 = *v15++;
        *(v18 + i) = v17;
      }

      sub_10047ACA4(a1, v18, 2);
    }

    else
    {
LABEL_19:
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
      {
        sub_10082DDBC();
      }
    }
  }

  else if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
  {
    sub_10082DE3C();
  }
}

void sub_10047B03C(uint64_t a1, __int128 *a2)
{
  if (a2)
  {
    v4 = malloc_type_malloc(0x30uLL, 0x1000040EED21634uLL);
    if (v4)
    {
      v5 = v4;
      v4[1] = 0u;
      v4[2] = 0u;
      *v4 = 0u;
      if ((*(sub_10000C7D0() + 800) - 1) >= 0x7CF)
      {
        v6 = *a2;
        v7 = a2[1];
        v5[2] = a2[2];
      }

      else
      {
        v6 = *a2;
        v7 = a2[1];
        *(v5 + 31) = *(a2 + 31);
      }

      *v5 = v6;
      v5[1] = v7;
      v8 = sub_100066098();
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v9[2] = sub_10047B178;
      v9[3] = &unk_100AE0860;
      v9[4] = a1;
      v9[5] = v5;
      sub_10000CA94(v8, v9);
    }

    else if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
    {
      sub_10082DEBC();
    }
  }

  else if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
  {
    sub_10082DF3C();
  }
}

void sub_10047B184(uint64_t a1, unsigned __int16 *a2)
{
  if (a2)
  {
    v4 = 0;
    v5 = 0;
    v6 = *a2;
    do
    {
      if (*(&a2[v4 + 6] + 1))
      {
        v7 = v4 == 10;
      }

      else
      {
        v7 = 1;
      }

      if (!v7)
      {
        v5 = v4;
      }

      ++v4;
    }

    while (v4 != 13);
    v8 = *(a1 + 680);
    v9 = sub_10047B294(a1, a2);
    v10 = v8 > v5 && !v9;
    if (v10 || (sub_10047A844(a1, 0, v6, v5 >= v8), v5 < v8))
    {
      sub_10047B338(a1, a2);
    }

    else
    {
      sub_10047AEC8(a1, a2);
    }

    free(a2);
  }

  else if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
  {
    sub_10082DFBC();
  }
}

BOOL sub_10047B294(uint64_t a1, unsigned __int16 *a2)
{
  if (a2)
  {
    v2 = *(a1 + 664);
    if (!v2)
    {
      return 0;
    }

    v3 = *a2;
    v4 = a1 + 664;
    do
    {
      v5 = *(v2 + 32);
      v6 = v5 >= v3;
      v7 = v5 < v3;
      if (v6)
      {
        v4 = v2;
      }

      v2 = *(v2 + 8 * v7);
    }

    while (v2);
    if (v4 == a1 + 664 || v3 < *(v4 + 32))
    {
      return 0;
    }

    return *(v4 + 112) + *(a2 + 4) > 0x708;
  }

  else
  {
    result = os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR);
    if (result)
    {
      sub_10082E03C();
      return 0;
    }
  }

  return result;
}

__n128 sub_10047B338(uint64_t a1, unsigned __int16 *a2)
{
  if (a2)
  {
    v4 = *a2;
    v57 = *a2;
    v5 = *(a1 + 664);
    if (!v5)
    {
      goto LABEL_21;
    }

    v6 = a1 + 664;
    do
    {
      v7 = *(v5 + 32);
      v8 = v7 >= v4;
      v9 = v7 < v4;
      if (v8)
      {
        v6 = v5;
      }

      v5 = *(v5 + 8 * v9);
    }

    while (v5);
    if (v6 != a1 + 664 && v4 >= *(v6 + 32))
    {
      v11 = *(v6 + 248);
      v53 = *(v6 + 232);
      v54 = v11;
      v56 = *(v6 + 280);
      v12 = *(v6 + 184);
      v49 = *(v6 + 168);
      v50 = v12;
      v13 = *(v6 + 216);
      v51 = *(v6 + 200);
      v52 = v13;
      v14 = *(v6 + 120);
      *v46 = *(v6 + 104);
      *&v46[16] = v14;
      v15 = *(v6 + 152);
      v47 = *(v6 + 136);
      v48 = v15;
      v16 = *(v6 + 56);
      v42 = *(v6 + 40);
      v43 = v16;
      v17 = *(v6 + 88);
      v44 = *(v6 + 72);
      v45 = v17;
      v55 = *(v6 + 264);
      *&v46[4] = v4;
      *&v46[6] = a2[1];
      v18.i32[0] = *(a2 + 4);
      v18.i32[1] = *(a2 + 5);
      v18.i32[2] = *(a2 + 7);
      v18.i32[3] = *(a2 + 9);
      *&v46[8] = vaddq_s32(*&v46[8], v18);
      *&v46[24] += *(a2 + 11);
      v19 = (a2 + 13);
      for (i = 92; i != 144; i += 4)
      {
        v21 = *v19++;
        *(&v42 + i) += v21;
      }

      v22 = sub_10000C7D0();
      if ((*(v22 + 800) - 1) >= 0x7CF)
      {
        v24 = *(a2 + 39);
        v25.i32[0] = 1;
        v25.i32[1] = v24;
        *&v43 = vadd_s32(*&v43, v25);
        sub_10047B620(v22, &v42, v24);
        HIDWORD(v50) = v24;
        v26 = HIDWORD(v42) + a2[23];
        DWORD2(v42) += a2[22];
        HIDWORD(v42) = v26;
      }

      LOWORD(v50) = *(a1 + 573);
      BYTE2(v50) = *(a1 + 576);
      BYTE3(v50) = *(a1 + 544);
      v27 = *(a1 + 548);
      BYTE4(v50) = v27 == 1;
      BYTE5(v50) = v27 == 2;
      BYTE6(v50) = v27 == 3;
      v23.i32[0] = *(a1 + 528);
      v28 = vmovl_u8(v23).u64[0];
      v29 = vzip1_s16(v28, vext_s8(v28, vdup_lane_s16(v28, 2), 6uLL));
      *(&v50 + 7) = vuzp1_s8(v29, v29).u32[0];
      v58 = &v57;
      v30 = sub_100480E88(a1 + 656, &v57);
      v31 = v44;
      result = v45;
      v32 = v43;
      *(v30 + 5) = v42;
      v34 = v47;
      v33 = v48;
      v35 = *&v46[16];
      *(v30 + 13) = *v46;
      v37 = v51;
      v36 = v52;
      v38 = v50;
      *(v30 + 21) = v49;
      v39 = v56;
      v41 = v54;
      v40 = v55;
      *(v30 + 29) = v53;
      *(v30 + 31) = v41;
      *(v30 + 33) = v40;
      *(v30 + 23) = v38;
      v30[35] = v39;
      *(v30 + 25) = v37;
      *(v30 + 27) = v36;
      *(v30 + 15) = v35;
      *(v30 + 17) = v34;
      *(v30 + 19) = v33;
      *(v30 + 7) = v32;
      *(v30 + 9) = v31;
      *(v30 + 11) = result;
    }

    else
    {
LABEL_21:
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
      {
        sub_10082E0BC();
      }
    }
  }

  else if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
  {
    sub_10082E13C();
  }

  return result;
}

void sub_10047B620(uint64_t a1, _DWORD *a2, int a3)
{
  if (a2)
  {
    if (a2[54] < a3)
    {
      a2[54] = a3;
    }

    if (a2[55] > a3)
    {
      a2[55] = a3;
    }

    v3 = a2[39];
    if (v3)
    {
      if (v3 >= a3)
      {
        v5 = v3 - a3;
        if ((v5 - 3) > 2u)
        {
          if ((v5 - 6) > 4)
          {
            if ((v5 - 11) > 4)
            {
              if ((v5 - 16) > 4)
              {
                if ((v5 - 21) > 4)
                {
                  if ((v5 - 26) > 4)
                  {
                    if (v5 >= 31)
                    {
                      ++a2[53];
                    }
                  }

                  else
                  {
                    ++a2[52];
                  }
                }

                else
                {
                  ++a2[51];
                }
              }

              else
              {
                ++a2[50];
              }
            }

            else
            {
              ++a2[49];
            }
          }

          else
          {
            ++a2[48];
          }
        }

        else
        {
          ++a2[47];
        }
      }

      else
      {
        v4 = a3 - v3;
        if ((v4 - 3) > 2u)
        {
          if ((v4 - 6) > 4)
          {
            if ((v4 - 11) > 4)
            {
              if ((v4 - 16) > 4)
              {
                if ((v4 - 21) > 4)
                {
                  if ((v4 - 26) > 4)
                  {
                    if (v4 >= 31)
                    {
                      ++a2[46];
                    }
                  }

                  else
                  {
                    ++a2[45];
                  }
                }

                else
                {
                  ++a2[44];
                }
              }

              else
              {
                ++a2[43];
              }
            }

            else
            {
              ++a2[42];
            }
          }

          else
          {
            ++a2[41];
          }
        }

        else
        {
          ++a2[40];
        }
      }
    }
  }
}

void sub_10047B7EC(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a5)
  {
    v39 = 0;
    v38 = 0u;
    v37 = 0u;
    v36 = 0u;
    v35 = 0u;
    *&v34[48] = 0u;
    *&v34[32] = 0u;
    *&v34[16] = 0u;
    *v34 = 0u;
    v33 = 0u;
    v32 = 0u;
    v31 = 0u;
    v29 = vrev64_s32(*(a5 + 44));
    *(&v32 + 1) = *(a5 + 72);
    v8 = *(a5 + 108);
    *&v34[12] = *(a5 + 92);
    *&v34[28] = v8;
    *&v34[44] = *(a5 + 124);
    v9 = *(a5 + 176);
    v35 = *(a5 + 160);
    v36 = v9;
    v10 = *(a5 + 208);
    v37 = *(a5 + 192);
    v11 = *(a5 + 52);
    v12 = *(a5 + 56);
    v13 = *(a5 + 32);
    v14 = *(a5 + 60);
    v15 = *(a5 + 64);
    v16 = *(a5 + 70);
    v17 = *(a5 + 24);
    v18 = *(a5 + 25);
    v20 = *(a5 + 80);
    v19 = *(a5 + 84);
    v21 = *(a5 + 26);
    v22 = *(a5 + 88);
    v23 = *(a5 + 27);
    v24 = *(a5 + 29);
    v25 = *(a5 + 140);
    v26 = *(a5 + 236);
    v27 = *(a5 + 240);
    v30 = v11;
    LOBYTE(v31) = v12;
    *(&v31 + 4) = __PAIR64__(v14, v13);
    HIDWORD(v31) = v15;
    LODWORD(v32) = a3;
    WORD2(v32) = v16;
    LOBYTE(v33) = v17;
    DWORD1(v33) = v20;
    BYTE8(v33) = v18;
    HIDWORD(v33) = v19;
    v34[0] = v21;
    *&v34[4] = v22;
    *&v34[8] = v23;
    v34[10] = v24;
    *&v34[60] = v25;
    v38 = v10;
    LODWORD(v39) = v26;
    WORD2(v39) = v27;
    if (sub_10000F034())
    {
      v28 = sub_10000F034();
      (*(*v28 + 512))(v28, &v29, a2, a4, *(a5 + 68));
    }
  }

  else if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
  {
    sub_10082E1BC();
  }
}

void sub_10047B99C(uint64_t a1, uint64_t a2, int a3)
{
  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = a2 + 92;
  v10 = 0.0;
  do
  {
    v11 = *(v9 + 4 * v6);
    if (v11)
    {
      if (a3 == 2 && v6 == 10)
      {
        v12 = 10;
      }

      else
      {
        *(a2 + 29) = v6;
        v12 = v6;
      }

      v10 = v10 + v11 * sub_10047A010(a1, v12);
      v8 += v11;
      if (v6 >= *(a1 + 680))
      {
        v13 = v11;
      }

      else
      {
        v13 = 0;
      }

      v7 += v13;
    }

    ++v6;
  }

  while (v6 != 13);
  v14 = v10 / v8;
  *(a2 + 28) = llround(v14);
  *(a2 + 32) = v7;
  *(a2 + 36) = v8;
  LOWORD(v14) = *(a2 + 66);
  HIDWORD(v15) = 1083129856;
  LODWORD(v15) = *(a2 + 72);
  v16 = 1000.0 / (*&v14 * 0.625) * v15;
  v17 = *(a2 + 76);
  if (v17)
  {
    v18 = llround(v17 / v16 * 100.0);
  }

  else
  {
    v18 = 0;
  }

  *(a2 + 24) = v18;
  v19 = *(a2 + 80);
  if (v19)
  {
    LOBYTE(v19) = llround(v19 / v16 * 100.0);
  }

  *(a2 + 25) = v19;
  v20 = *(a2 + 88);
  if (v20)
  {
    LOBYTE(v20) = llround(v20 / v16 * 100.0);
  }

  *(a2 + 27) = v20;
  v21 = *(a2 + 84);
  if (v21)
  {
    if (v21 <= v17)
    {
      v22 = llround((v21 / v17) * 100.0);
    }

    else
    {
      v22 = -1;
    }
  }

  else
  {
    v22 = 0;
  }

  *(a2 + 26) = v22;
  v23 = *(a2 + 16);
  if (v23)
  {
    v24 = *(a2 + 20) / v23;
    *(a2 + 60) = v24;
    if (v24)
    {
      *(a2 + 56) = 1;
    }
  }

  else
  {
    *(a2 + 60) = 0;
  }

  v25 = 0;
  v26 = *(a2 + 12);
  if (v26)
  {
    v27 = v26 + *(a2 + 8);
    if (v27)
    {
      v25 = llround(v26 * 100.0 / v27);
    }
  }

  *(a2 + 64) = v25;
}

void sub_10047BB9C(uint64_t a1, _OWORD *a2)
{
  if ((*(sub_10000C7D0() + 800) - 1) <= 0x7CE)
  {
    if (a2)
    {
      v4 = malloc_type_malloc(0xCEuLL, 0x100004047758063uLL);
      if (v4)
      {
        v5 = v4;
        *(v4 + 190) = 0u;
        v4[10] = 0u;
        v4[11] = 0u;
        v4[8] = 0u;
        v4[9] = 0u;
        v4[6] = 0u;
        v4[7] = 0u;
        v4[4] = 0u;
        v4[5] = 0u;
        v4[2] = 0u;
        v4[3] = 0u;
        *v4 = 0u;
        v4[1] = 0u;
        *v4 = *a2;
        v6 = a2[1];
        v7 = a2[2];
        v8 = a2[4];
        v4[3] = a2[3];
        v4[4] = v8;
        v4[1] = v6;
        v4[2] = v7;
        v9 = a2[5];
        v10 = a2[6];
        v11 = a2[8];
        v4[7] = a2[7];
        v4[8] = v11;
        v4[5] = v9;
        v4[6] = v10;
        v12 = a2[9];
        v13 = a2[10];
        v14 = a2[11];
        *(v4 + 190) = *(a2 + 190);
        v4[10] = v13;
        v4[11] = v14;
        v4[9] = v12;
        v15 = sub_100066098();
        v16[0] = _NSConcreteStackBlock;
        v16[1] = 3221225472;
        v16[2] = sub_10047BD10;
        v16[3] = &unk_100AE0860;
        v16[4] = a1;
        v16[5] = v5;
        sub_10000CA94(v15, v16);
      }

      else if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
      {
        sub_10082E23C();
      }
    }

    else if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
    {
      sub_10082E2BC();
    }
  }
}

void sub_10047BD1C(uint64_t a1, unsigned __int16 *a2)
{
  if (a2)
  {
    v4 = a2[102];
    v5 = a2[101];
    if (v4)
    {
      v6 = a2[9];
      if ((v6 + 127) >= 0x94u)
      {
        v6 = 0;
      }

      sub_10047BDFC(a1, v4, v6, *(a2 + 25), *(a2 + 27));
    }

    if (v5)
    {
      v7 = a2[8];
      if ((v7 + 127) >= 0x94u)
      {
        v7 = 0;
      }

      sub_10047BDFC(a1, v5, v7, a2[17], a2[18]);
    }

    free(a2);
  }

  else if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
  {
    sub_10082E33C();
  }
}

__n128 sub_10047BDFC(uint64_t a1, unsigned int a2, int a3, int a4, int a5)
{
  v49 = a2;
  v5 = *(a1 + 664);
  if (!v5)
  {
    goto LABEL_16;
  }

  v8 = a1 + 664;
  do
  {
    v9 = *(v5 + 32);
    v10 = v9 >= a2;
    v11 = v9 < a2;
    if (v10)
    {
      v8 = v5;
    }

    v5 = *(v5 + 8 * v11);
  }

  while (v5);
  if (v8 != a1 + 664 && *(v8 + 32) <= a2)
  {
    v13 = *(v8 + 248);
    v45 = *(v8 + 232);
    v46 = v13;
    v48 = *(v8 + 280);
    v14 = *(v8 + 184);
    v41 = *(v8 + 168);
    v42 = v14;
    v15 = *(v8 + 216);
    v43 = *(v8 + 200);
    v44 = v15;
    v16 = *(v8 + 120);
    v37 = *(v8 + 104);
    v38 = v16;
    v17 = *(v8 + 152);
    v39 = *(v8 + 136);
    v40 = v17;
    v18 = *(v8 + 56);
    v33 = *(v8 + 40);
    v34 = v18;
    v19 = *(v8 + 88);
    v35 = *(v8 + 72);
    v36 = v19;
    v47 = *(v8 + 264);
    DWORD2(v33) += a4;
    HIDWORD(v33) += a5;
    if (a3)
    {
      v20.i32[0] = 1;
      v20.i32[1] = a3;
      *&v34 = vadd_s32(*&v34, v20);
      sub_10047B620(a1, &v33, a3);
      HIDWORD(v42) = a3;
    }

    v50 = &v49;
    v21 = sub_100480E88(a1 + 656, &v49);
    v22 = v35;
    result = v36;
    v23 = v34;
    *(v21 + 5) = v33;
    v25 = v39;
    v24 = v40;
    v26 = v38;
    *(v21 + 13) = v37;
    v28 = v43;
    v27 = v44;
    v29 = v42;
    *(v21 + 21) = v41;
    v30 = v48;
    v32 = v46;
    v31 = v47;
    *(v21 + 29) = v45;
    *(v21 + 31) = v32;
    *(v21 + 33) = v31;
    *(v21 + 23) = v29;
    v21[35] = v30;
    *(v21 + 25) = v28;
    *(v21 + 27) = v27;
    *(v21 + 15) = v26;
    *(v21 + 17) = v25;
    *(v21 + 19) = v24;
    *(v21 + 7) = v23;
    *(v21 + 9) = v22;
    *(v21 + 11) = result;
  }

  else
  {
LABEL_16:
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
    {
      sub_10082E3BC();
    }
  }

  return result;
}

void sub_10047BFCC(uint64_t a1, __int16 a2, void *a3, __int16 a4)
{
  v7 = a3;
  v8 = sub_100066098();
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10047C0B0;
  v10[3] = &unk_100AE1228;
  v12 = a1;
  v13 = a2;
  v9 = v7;
  v11 = v9;
  v14 = a4;
  sub_10000CA94(v8, v10);
}

void sub_10047C0C4(uint64_t a1, unsigned int a2, void *a3, __int16 a4)
{
  v7 = a3;
  if (v7)
  {
    *(__dst + 3) = 0;
    __dst[0] = 0;
    v8 = v7;
    memcpy(__dst, [v8 bytes], objc_msgSend(v8, "length"));
    sub_10047A5A4(a1, a2, 0, *(__dst + 1), *(__dst + 3), 0, 0, a4);
    v7 = v8;
  }
}

void sub_10047C180(uint64_t a1, __int128 *a2)
{
  v4 = sub_100066098();
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v5 = a2[1];
  v7 = *a2;
  v6[2] = sub_10047C214;
  v6[3] = &unk_100AF6B50;
  v6[4] = a1;
  v8 = v5;
  v9 = *(a2 + 4);
  sub_10000CA94(v4, v6);
}

uint64_t sub_10047C214(uint64_t result)
{
  v1 = *(result + 32);
  v2 = v1[198];
  if (v2 != -1)
  {
    v3 = 0;
    v4 = *(result + 40);
    v5 = v1[199];
    if (v5 <= v4)
    {
      v5 = *(result + 40);
    }

    v1[199] = v5;
    v6 = v1[200];
    if (v6 >= v4)
    {
      v6 = v4;
    }

    v1[200] = v6;
    v7 = v1[201] * v2;
    v8 = v2 + 1;
    v1[198] = v8;
    v1[201] = (v4 + v7) / v8;
    while (v4 >= byte_1008A7CE5[v3])
    {
      if (++v3 == 5)
      {
        goto LABEL_11;
      }
    }

    ++v1[v3 + 202];
LABEL_11:
    v9 = *(result + 42);
    if (v9 == 2)
    {
      ++v1[209];
    }

    else if (v9 == 1)
    {
      ++v1[208];
    }

    else if (!*(result + 42))
    {
      ++v1[207];
    }

    if (*(result + 43))
    {
      ++v1[210];
    }

    if (*(result + 44) == 1)
    {
      ++v1[211];
    }

    else
    {
      ++v1[212];
    }
  }

  return result;
}

void sub_10047C320(uint64_t a1, __int128 *a2)
{
  v4 = sub_100066098();
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v5 = a2[1];
  v7 = *a2;
  v6[2] = sub_10047C3B4;
  v6[3] = &unk_100AF6B50;
  v6[4] = a1;
  v8 = v5;
  v9 = *(a2 + 4);
  sub_10000CA94(v4, v6);
}

int8x16_t sub_10047C3B4(int32x4_t *a1)
{
  v1 = a1[2].i64[0] + 852;
  v2 = *(a1[2].i64[0] + 868);
  v3.i64[0] = 0xFFFFFFFFLL;
  v3.i64[1] = 0xFFFFFFFFLL;
  *v1 = vorrq_s8(vaddq_s32(a1[3], *v1), vuzp1q_s32(vcgtq_u64(vaddl_u32(*a1[3].i8, *v1), v3), vcgtq_u64(vaddl_high_u32(a1[3], *v1), v3)));
  result = vorrq_s8(vaddq_s32(a1[4], v2), vuzp1q_s32(vcgtq_u64(vaddl_u32(*a1[4].i8, *v2.i8), v3), vcgtq_u64(vaddl_high_u32(a1[4], v2), v3)));
  *(v1 + 16) = result;
  return result;
}

void sub_10047C410(uint64_t a1, char a2)
{
  v4 = sub_100066098();
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10047C494;
  v5[3] = &unk_100AE15D8;
  v5[4] = a1;
  v6 = a2;
  sub_10000CA94(v4, v5);
}

uint64_t sub_10047C494(uint64_t result)
{
  v1 = *(result + 32);
  if (*(result + 40) == 1)
  {
    v2 = *(v1 + 892);
    v3 = __CFADD__(v2, 1);
    v4 = v2 + 1;
    if (v3)
    {
      v4 = -1;
    }

    *(v1 + 892) = v4;
  }

  else
  {
    v5 = *(v1 + 888);
    v3 = __CFADD__(v5, 1);
    v6 = v5 + 1;
    if (v3)
    {
      v6 = -1;
    }

    *(v1 + 888) = v6;
  }

  return result;
}

void sub_10047C4CC(uint64_t a1, __int128 *a2)
{
  v4 = sub_100066098();
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v5 = a2[1];
  v7 = *a2;
  v8 = v5;
  v6[2] = sub_10047C554;
  v6[3] = &unk_100AF6B70;
  v6[4] = a1;
  sub_10000CA94(v4, v6);
}

uint64_t sub_10047C554(uint64_t result)
{
  v1 = *(result + 32);
  v2 = *(v1 + 760);
  *(v1 + 744) = vaddq_s32(*(v1 + 744), *(result + 40));
  *(v1 + 760) = vaddq_s32(v2, *(result + 56));
  v3 = *(result + 40);
  if (v3 <= *(v1 + 784))
  {
    v3 = *(v1 + 784);
  }

  *(v1 + 784) = v3;
  v4 = *(result + 44);
  if (v4 <= *(v1 + 788))
  {
    v4 = *(v1 + 788);
  }

  *(v1 + 788) = v4;
  return result;
}

void sub_10047C5A4(uint64_t a1)
{
  v2 = sub_100066098();
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10047C620;
  v3[3] = &unk_100ADF8F8;
  v3[4] = a1;
  sub_10000CA94(v2, v3);
}

void sub_10047C634(uint64_t a1)
{
  v2 = sub_100066098();
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10047C6B0;
  v3[3] = &unk_100ADF8F8;
  v3[4] = a1;
  sub_10000CA94(v2, v3);
}

id sub_10047C6C4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = *(v1 + 984);
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = *v9;
    do
    {
      v5 = 0;
      do
      {
        if (*v9 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = [*(v1 + 984) objectForKey:{*(*(&v8 + 1) + 8 * v5), v8}];
        sub_10003BA40(v1, 0x4Au, v6);

        v5 = v5 + 1;
      }

      while (v3 != v5);
      v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v3);
  }

  return [*(v1 + 984) removeAllObjects];
}

void sub_10047C810(uint64_t a1, int a2, int a3)
{
  v6 = sub_100066098();
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10047C8A0;
  v7[3] = &unk_100AE0860;
  v7[4] = a1;
  v8 = a3;
  v9 = a2;
  sub_10000CA94(v6, v7);
}

void sub_10047C8A0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = @"Unknown";
  v3 = *(a1 + 40);
  if (v3 == 1)
  {
    v2 = @"Classic";
  }

  if (v3 == 2)
  {
    v2 = @"Le";
  }

  v4 = [NSString stringWithFormat:@"%@_%d", v2, *(a1 + 44)];
  v5 = *(v1 + 352);
  v8 = v4;
  v6 = [v5 objectForKey:?];
  v7 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v6 intValue] + 1);
  [v5 setObject:v7 forKey:v8];
}

void sub_10047C9B0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = objc_alloc_init(NSMutableDictionary);
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  obj = *(v1 + 352);
  v3 = [obj countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = *v11;
    do
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v11 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v10 + 1) + 8 * i);
        [v2 setObject:v6 forKeyedSubscript:@"Result"];
        v7 = [*(v1 + 352) objectForKeyedSubscript:v6];
        v8 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v7 unsignedIntValue]);
        [v2 setObject:v8 forKeyedSubscript:@"NumberOfDailyReports"];

        sub_10003BA40(v1, 0x54u, v2);
      }

      v3 = [obj countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v3);
  }

  [*(v1 + 352) removeAllObjects];
}

void sub_10047CB90(uint64_t a1, uint64_t a2, char a3, char a4)
{
  v8 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "reportEncryptionKeySizeStats", buf, 2u);
  }

  v9 = sub_100066098();
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10047CC74;
  v10[3] = &unk_100AE0EF8;
  v11 = a3;
  v12 = a4;
  v10[4] = a1;
  v10[5] = a2;
  sub_10000CA94(v9, v10);
}

void sub_10047CC74(uint64_t a1)
{
  v2 = *(a1 + 32);
  __p = 0;
  v9 = 0;
  v10 = 0;
  if (qword_100B50F88 != -1)
  {
    sub_10082C974();
  }

  sub_10009DB3C(off_100B50F80, &__p);
  v3 = __p;
  *(v2 + 608) = (v9 - __p) >> 3;
  if (*(a1 + 48) == 1)
  {
    ++*(v2 + 610);
    if (*(a1 + 49) == 1)
    {
      ++*(v2 + 612);
    }

    v4 = *(a1 + 40);
    v7 = (v4[128] << 40) | (v4[129] << 32) | (v4[130] << 24) | (v4[131] << 16) | (v4[132] << 8) | v4[133];
    v11 = &v7;
    if (!*(sub_100480FA0((v2 + 616), &v7) + 6))
    {
      v6 = 0;
      sub_1005379CC(*(a1 + 40), &v6);
      v5 = v6;
      v11 = &v7;
      *(sub_100480FA0((v2 + 616), &v7) + 6) = v5;
    }

    v3 = __p;
  }

  if (v3)
  {
    v9 = v3;
    operator delete(v3);
  }
}

void sub_10047CDC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10047CDE8(uint64_t a1)
{
  v2 = sub_100066098();
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10047CE64;
  v3[3] = &unk_100ADF8F8;
  v3[4] = a1;
  sub_10000CA94(v2, v3);
}

void sub_10047CE64(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = objc_alloc_init(NSMutableDictionary);
  v3 = [NSNumber numberWithUnsignedShort:*(v1 + 608)];
  [v2 setObject:v3 forKeyedSubscript:@"NumberOfDevices"];

  v4 = [NSNumber numberWithUnsignedShort:*(v1 + 610)];
  [v2 setObject:v4 forKeyedSubscript:@"NumberOfLowSecurityDevices"];

  v5 = [NSNumber numberWithUnsignedShort:*(v1 + 612)];
  [v2 setObject:v5 forKeyedSubscript:@"NumberOfEncryptionDowngrade"];

  for (i = *(v1 + 632); i; i = *i)
  {
    v7 = *(i + 6);
    v8 = sub_1007774DC();
    v9 = [NSString stringWithFormat:@"LowSecurityDevice_%@", v8];

    v10 = [NSNumber numberWithUnsignedInt:v7];
    [v2 setObject:v9 forKey:v10];
  }

  v11 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v13 = v2;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "sendEncryptionKeySizeDailyMetric : %@", buf, 0xCu);
  }

  sub_10003BA40(v1, 0x55u, v2);
}

void sub_10047D0A4(uint64_t a1, __int128 *a2)
{
  v5 = *a2;
  v6 = *(a2 + 4);
  v3 = sub_100066098();
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10047D130;
  v4[3] = &unk_100AF6B90;
  v4[4] = a1;
  sub_10000CA94(v3, v4);
}

void sub_10047D130(uint64_t a1)
{
  v2 = *(a1 + 32);
  v8 = objc_alloc_init(NSMutableDictionary);
  v3 = [NSNumber numberWithUnsignedInt:*(a1 + 40)];
  [v8 setObject:v3 forKeyedSubscript:@"Result"];

  v4 = [NSNumber numberWithUnsignedInt:*(a1 + 44)];
  [v8 setObject:v4 forKeyedSubscript:@"NumberOfBTConnections"];

  v5 = [NSNumber numberWithUnsignedInt:*(a1 + 48)];
  [v8 setObject:v5 forKeyedSubscript:@"BtConnectionDuration"];

  v6 = [NSNumber numberWithUnsignedInt:*(a1 + 52)];
  [v8 setObject:v6 forKeyedSubscript:@"NumberOfBTEntryCounter"];

  v7 = [NSNumber numberWithUnsignedInt:*(a1 + 56)];
  [v8 setObject:v7 forKeyedSubscript:@"NumberOfBTExitCounter"];

  sub_10003BA40(v2, 0x75u, v8);
}

void sub_10047D2B0(uint64_t a1, uint64_t a2, const void ***a3)
{
  v5 = sub_100066098();
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3321888768;
  v6[2] = sub_10047D370;
  v6[3] = &unk_100AF6BB0;
  v6[4] = a1;
  sub_100068968(v7, a3);
  sub_10000CA94(v5, v6);
  sub_10004B61C(v7, v7[1]);
}

uint64_t sub_10047D370(void *a1)
{
  v1 = a1[5];
  v17 = a1[4];
  v2 = a1 + 6;
  v3 = @"Unknown";
  if (v1 != a1 + 6)
  {
    do
    {
      v4 = (v1 + 4);
      if (*(v1 + 55) < 0)
      {
        v4 = *v4;
      }

      if (!strcmp(v4, "A1603"))
      {
        v3 = @"A1603";
      }

      else if (!strcmp(v4, "A2051"))
      {
        v3 = @"A2051";
      }

      else if (!strcmp(v4, "A3085"))
      {
        v3 = @"A3085";
      }

      else if (!strcmp(v4, "A2538"))
      {
        v3 = @"A2538";
      }

      v5 = v1[1];
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
          v6 = v1[2];
          v7 = *v6 == v1;
          v1 = v6;
        }

        while (!v7);
      }

      v1 = v6;
    }

    while (v6 != v2);
  }

  v18[0] = 0;
  v18[1] = 0;
  sub_100007F88(v18, v17 + 176);
  v8 = [*(v17 + 368) objectForKey:v3];

  if (v8)
  {
    v9 = [*(v17 + 368) objectForKeyedSubscript:v3];
    v10 = [v9 objectAtIndexedSubscript:0];
    v11 = [v10 unsignedIntValue];

    v12 = [NSNumber numberWithUnsignedInt:v11 + 1];
    v13 = [*(v17 + 368) objectForKeyedSubscript:v3];
    [v13 setObject:v12 atIndexedSubscript:0];
  }

  else if (([(__CFString *)v3 isEqualToString:@"Unknown"]& 1) == 0)
  {
    v14 = [NSMutableArray arrayWithObjects:&off_100B33888, 0];
    v15 = *(v17 + 376);
    *(v17 + 376) = v14;

    [*(v17 + 368) setObject:*(v17 + 376) forKeyedSubscript:v3];
  }

  sub_10000801C(v18);
  return sub_1000088CC(v18);
}

void sub_10047D5AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);

  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

void sub_10047D5FC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[NSProcessInfo processInfo];
  v5 = [v4 environment];
  v6 = [v5 objectForKeyedSubscript:@"XCTestConfigurationFilePath"];
  if (v6)
  {
  }

  else
  {
    v7 = _os_feature_enabled_impl();

    if (v7)
    {
      v8 = sub_100066098();
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v9[2] = sub_10047D750;
      v9[3] = &unk_100AE1200;
      v11 = a1;
      v10 = v3;
      sub_10000CA94(v8, v9);
    }
  }
}

void sub_10047D760(uint64_t a1, int a2)
{
  v4 = sub_100066098();
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10047D7E4;
  v5[3] = &unk_100ADF940;
  v5[4] = a1;
  v6 = a2;
  sub_10000CA94(v4, v5);
}

void sub_10047D7E4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v4 = objc_alloc_init(NSMutableDictionary);
  v3 = [NSNumber numberWithUnsignedInt:*(a1 + 40)];
  [v4 setObject:v3 forKeyedSubscript:@"ErrMask"];

  sub_10003BA40(v2, 0x46u, v4);
}

_DWORD *sub_10047D894(_DWORD *result, int a2)
{
  if (a2 > 3)
  {
    if (a2 > 5)
    {
      if (a2 == 6)
      {
        ++result[235];
      }

      else if (a2 == 7)
      {
        ++result[234];
      }
    }

    else if (a2 == 4)
    {
      ++result[232];
    }

    else
    {
      ++result[233];
    }
  }

  else if (a2 > 1)
  {
    if (a2 == 2)
    {
      ++result[230];
    }

    else
    {
      ++result[231];
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      ++result[229];
    }
  }

  else
  {
    ++result[228];
  }

  return result;
}

void sub_10047D968(_DWORD *a1, int a2)
{
  switch(a2)
  {
    case 10:
      ++a1[227];
      break;
    case 9:
      ++a1[226];
      v3 = qword_100BCE8D8;
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
      {
        v4 = a1[226];
        v39 = 67109120;
        v40 = v4;
        _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "DailyStatsCount fNum5GTo2GSwitch %d", &v39, 8u);
      }

      v5 = qword_100BCE8D8;
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
      {
        v6 = a1[225];
        v39 = 67109120;
        v40 = v6;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "DailyStatsCount fNum2GTo5GSwitch %d", &v39, 8u);
      }

      v7 = qword_100BCE8D8;
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
      {
        v8 = a1[227];
        v39 = 67109120;
        v40 = v8;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "DailyStatsCount fNum5GTo5GSwitch %d", &v39, 8u);
      }

      v9 = qword_100BCE8D8;
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
      {
        v10 = a1[229];
        v39 = 67109120;
        v40 = v10;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "DailyStatsCount fNumBT5GFailedCellular %d", &v39, 8u);
      }

      v11 = qword_100BCE8D8;
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
      {
        v12 = a1[230];
        v39 = 67109120;
        v40 = v12;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "DailyStatsCount fNumBT5GSwitchFailedSoftAP %d", &v39, 8u);
      }

      v13 = qword_100BCE8D8;
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
      {
        v14 = a1[231];
        v39 = 67109120;
        v40 = v14;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "DailyStatsCount fNumBT5GSwitchFailedUWB %d", &v39, 8u);
      }

      v15 = qword_100BCE8D8;
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
      {
        v16 = a1[232];
        v39 = 67109120;
        v40 = v16;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "DailyStatsCount fNumBT5GSwitchFailedWiFiP2P %d", &v39, 8u);
      }

      v17 = qword_100BCE8D8;
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
      {
        v18 = a1[233];
        v39 = 67109120;
        v40 = v18;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "DailyStatsCount fNumBT5GSwitchFailedLowWiFiRate %d", &v39, 8u);
      }

      v19 = qword_100BCE8D8;
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
      {
        v20 = a1[234];
        v39 = 67109120;
        v40 = v20;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "DailyStatsCount fNumBT5GSwitchFailedNoCommonBand %d", &v39, 8u);
      }

      v21 = qword_100BCE8D8;
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
      {
        v22 = a1[235];
        v39 = 67109120;
        v40 = v22;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "DailyStatsCount fNumBT5GSwitchFailedLowChannels %d", &v39, 8u);
      }

      v23 = qword_100BCE8D8;
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
      {
        v24 = a1[236];
        v39 = 67109120;
        v40 = v24;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "DailyStatsCount fNumBT5GSwitchFailedController %d", &v39, 8u);
      }

      v25 = qword_100BCE8D8;
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
      {
        v26 = a1[238];
        v39 = 67109120;
        v40 = v26;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "DailyStatsCount UNII1 Dwell time %d seconds", &v39, 8u);
      }

      v27 = qword_100BCE8D8;
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
      {
        v28 = a1[239];
        v39 = 67109120;
        v40 = v28;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "DailyStatsCount UNII3 Dwell time %d seconds", &v39, 8u);
      }

      v29 = qword_100BCE8D8;
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
      {
        v30 = a1[241];
        v39 = 67109120;
        v40 = v30;
        _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "DailyStatsCount UNII5A Dwell time %d seconds", &v39, 8u);
      }

      v31 = qword_100BCE8D8;
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
      {
        v32 = a1[242];
        v39 = 67109120;
        v40 = v32;
        _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "DailyStatsCount UNII5B Dwell time %d seconds", &v39, 8u);
      }

      v33 = qword_100BCE8D8;
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
      {
        v34 = a1[243];
        v39 = 67109120;
        v40 = v34;
        _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "DailyStatsCount UNII5C Dwell time %d seconds", &v39, 8u);
      }

      v35 = qword_100BCE8D8;
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
      {
        v36 = a1[244];
        v39 = 67109120;
        v40 = v36;
        _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "DailyStatsCount UNII5D Dwell time %d seconds", &v39, 8u);
      }

      v37 = qword_100BCE8D8;
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
      {
        v38 = a1[225];
        v39 = 67109120;
        v40 = v38;
        _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "DailyStatsCount numBTSwitchFailed %d", &v39, 8u);
      }

      break;
    case 8:
      ++a1[225];
      break;
  }
}

void sub_10047DF38(uint64_t a1)
{
  v2 = sub_100066098();
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10047DFB4;
  v3[3] = &unk_100ADF8F8;
  v3[4] = a1;
  sub_10000CA94(v2, v3);
}

double sub_10047DFB4(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(v1 + 900) || *(v1 + 912))
  {
    v2 = objc_alloc_init(NSMutableDictionary);
    v3 = [NSNumber numberWithUnsignedInt:*(v1 + 912)];
    [v2 setObject:v3 forKeyedSubscript:@"BT2GTo5GBandSwitchFailed"];

    v4 = [NSNumber numberWithUnsignedInt:*(v1 + 916)];
    [v2 setObject:v4 forKeyedSubscript:@"BT2GTo5GBandSwitchFailedWithCellular"];

    v5 = [NSNumber numberWithUnsignedInt:*(v1 + 920)];
    [v2 setObject:v5 forKeyedSubscript:@"BT2GTo5GBandSwitchFailedWithSoftAP"];

    v6 = [NSNumber numberWithUnsignedInt:*(v1 + 924)];
    [v2 setObject:v6 forKeyedSubscript:@"BT2GTo5GBandSwitchFailedWithUWB"];

    v7 = [NSNumber numberWithUnsignedInt:*(v1 + 928)];
    [v2 setObject:v7 forKeyedSubscript:@"BT2GTo5GBandSwitchFailedWithWiFiP2P"];

    v8 = [NSNumber numberWithUnsignedInt:*(v1 + 932)];
    [v2 setObject:v8 forKeyedSubscript:@"BT5GTo2GBandSwitchFailedWithLowWiFiRate"];

    v9 = [NSNumber numberWithUnsignedInt:*(v1 + 936)];
    [v2 setObject:v9 forKeyedSubscript:@"BTBandSwitchFailureWithBandMismatch"];

    v10 = [NSNumber numberWithUnsignedInt:*(v1 + 940)];
    [v2 setObject:v10 forKeyedSubscript:@"BTBandSwitchFailureWithInsufficientChanneOplConditions"];

    v11 = [NSNumber numberWithUnsignedInt:*(v1 + 900)];
    [v2 setObject:v11 forKeyedSubscript:@"NumberOfBT2GTo5GSwitch"];

    v12 = [NSNumber numberWithUnsignedInt:*(v1 + 904)];
    [v2 setObject:v12 forKeyedSubscript:@"NumberOfBT5GTo2GSwitch"];

    v13 = [NSNumber numberWithUnsignedInt:*(v1 + 908)];
    [v2 setObject:v13 forKeyedSubscript:@"NumberOfBT5GTo5GSwitch"];

    v14 = [NSNumber numberWithUnsignedInt:*(v1 + 952) / 0x3CuLL];
    [v2 setObject:v14 forKeyedSubscript:@"BandUNII_1DurationInMins"];

    v15 = [NSNumber numberWithUnsignedInt:*(v1 + 956) / 0x3CuLL];
    [v2 setObject:v15 forKeyedSubscript:@"BandUNII_3DurationInMins"];

    v16 = [NSNumber numberWithUnsignedInt:*(v1 + 964) / 0x3CuLL];
    [v2 setObject:v16 forKeyedSubscript:@"BandUNII_5ADurationInMins"];

    v17 = [NSNumber numberWithUnsignedInt:*(v1 + 968) / 0x3CuLL];
    [v2 setObject:v17 forKeyedSubscript:@"BandUNII_5BDurationInMins"];

    v18 = [NSNumber numberWithUnsignedInt:*(v1 + 972) / 0x3CuLL];
    [v2 setObject:v18 forKeyedSubscript:@"BandUNII_5CDurationInMins"];

    v19 = [NSNumber numberWithUnsignedInt:*(v1 + 976) / 0x3CuLL];
    [v2 setObject:v19 forKeyedSubscript:@"BandUNII_5CDurationInMins"];

    sub_10003BA40(v1, 0x47u, v2);
  }

  *(v1 + 976) = 0;
  result = 0.0;
  *(v1 + 944) = 0u;
  *(v1 + 960) = 0u;
  *(v1 + 912) = 0u;
  *(v1 + 928) = 0u;
  *(v1 + 896) = 0u;
  return result;
}

void sub_10047E3D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100066098();
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3321888768;
  v5[2] = sub_10047E4B4;
  v5[3] = &unk_100AF6BE0;
  v5[4] = a1;
  if (*(a2 + 23) < 0)
  {
    sub_100008904(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    v7 = *(a2 + 16);
  }

  sub_10000CA94(v4, v5);
  if (SHIBYTE(v7) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_10047E498(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10047E4B4(uint64_t a1)
{
  result = sub_100480A48(*(a1 + 32) + 1016, (a1 + 40));
  ++*(result + 56);
  return result;
}

double sub_10047E500(uint64_t a1, __n128 a2)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 1016);
  v4 = (v2 + 1024);
  if (v3 != (v2 + 1024))
  {
    a2.n128_u64[0] = 138412290;
    v14 = a2;
    do
    {
      v5 = v3 + 4;
      v17[0] = @"BundleId";
      if (*(v3 + 55) < 0)
      {
        v5 = *v5;
      }

      v6 = [NSString stringWithUTF8String:v5, *&v14];
      v17[1] = @"WakeCount";
      v18[0] = v6;
      v7 = [NSNumber numberWithLongLong:v3[7]];
      v18[1] = v7;
      v8 = [NSDictionary dictionaryWithObjects:v18 forKeys:v17 count:2];

      v9 = qword_100BCE8D8;
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = v14.n128_u32[0];
        v16 = v8;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "sending LEWakeDueToL2CapDataDailyStats : %@", buf, 0xCu);
      }

      sub_10003BA40(v2, 0x74u, v8);

      v10 = v3[1];
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
          v11 = v3[2];
          v12 = *v11 == v3;
          v3 = v11;
        }

        while (!v12);
      }

      v3 = v11;
    }

    while (v11 != v4);
  }

  sub_10004B61C(v2 + 1016, *(v2 + 1024));
  *(v2 + 1016) = v4;
  result = 0.0;
  *(v2 + 1024) = 0u;
  return result;
}

double sub_10047E6F0(uint64_t a1, __n128 a2)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 1040);
  v4 = (v2 + 1048);
  if (v3 != (v2 + 1048))
  {
    a2.n128_u64[0] = 138412290;
    v14 = a2;
    do
    {
      v5 = v3 + 4;
      v17[0] = @"LE_UUID";
      if (*(v3 + 55) < 0)
      {
        v5 = *v5;
      }

      v6 = [NSString stringWithUTF8String:v5, *&v14];
      v17[1] = @"WakeCount";
      v18[0] = v6;
      v7 = [NSNumber numberWithLongLong:v3[7]];
      v18[1] = v7;
      v8 = [NSDictionary dictionaryWithObjects:v18 forKeys:v17 count:2];

      v9 = qword_100BCE8D8;
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = v14.n128_u32[0];
        v16 = v8;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "sending LEWakeDueToDiscoveryDailyStats : %@", buf, 0xCu);
      }

      sub_10003BA40(v2, 0x73u, v8);

      v10 = v3[1];
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
          v11 = v3[2];
          v12 = *v11 == v3;
          v3 = v11;
        }

        while (!v12);
      }

      v3 = v11;
    }

    while (v11 != v4);
  }

  sub_10004B61C(v2 + 1040, *(v2 + 1048));
  *(v2 + 1040) = v4;
  result = 0.0;
  *v4 = 0u;
  return result;
}

void sub_10047E8E0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v8[0] = @"DailyDigitalHomeKeyConnectionAttemptCount";
  v2 = [NSNumber numberWithUnsignedLongLong:*(v1 + 696)];
  v8[1] = @"DailyDigitalHomeKeyConnectionSuccessCount";
  v9[0] = v2;
  v3 = [NSNumber numberWithUnsignedLongLong:*(v1 + 704)];
  v9[1] = v3;
  v4 = [NSDictionary dictionaryWithObjects:v9 forKeys:v8 count:2];

  v5 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "sending DigitalHomeKeyDailyStats : %@", &v6, 0xCu);
  }

  sub_10003BA40(v1, 0x52u, v4);
  *(v1 + 696) = 0;
  *(v1 + 704) = 0;
}

void sub_10047EA48(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    v4 = @"Unknown";
    if (v2)
    {
      v4 = v2;
    }

    v5 = 138412290;
    v6 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "reportBtPowerTableVersion: PowerTableVersion %@", &v5, 0xCu);
  }
}

void sub_10047EB04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100066098();
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10047EB94;
  v7[3] = &unk_100AEC130;
  v7[4] = a1;
  v7[5] = a2;
  v7[6] = a3;
  sub_10000CA94(v6, v7);
}

void sub_10047EB94(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = objc_alloc_init(NSMutableDictionary);
  if (*(a1 + 40))
  {
    v4 = [NSNumber numberWithUnsignedInt:?];
    [v3 setObject:v4 forKeyedSubscript:@"Appearance"];
  }

  if (*(a1 + 44))
  {
    v5 = [NSNumber numberWithUnsignedChar:?];
    [v3 setObject:v5 forKeyedSubscript:@"BatteryCount"];
  }

  if (*(a1 + 45))
  {
    v6 = [NSNumber numberWithUnsignedChar:?];
    [v3 setObject:v6 forKeyedSubscript:@"DeviceType"];
  }

  if (*(a1 + 48))
  {
    v7 = [NSNumber numberWithUnsignedInt:?];
    [v3 setObject:v7 forKeyedSubscript:@"ProductID"];
  }

  if (*(a1 + 52))
  {
    v8 = [NSNumber numberWithUnsignedChar:?];
    [v3 setObject:v8 forKeyedSubscript:@"Transport"];
  }

  if (*(a1 + 54))
  {
    v9 = [NSNumber numberWithUnsignedShort:?];
    [v3 setObject:v9 forKeyedSubscript:@"VendorID"];
  }

  v10 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412290;
    v12 = v3;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "sendDeviceBatteryMetric: %@", &v11, 0xCu);
  }

  sub_10003BA40(v2, 0x45u, v3);
}

void sub_10047EDD4(uint64_t a1, uint64_t a2)
{
  if (*a2 == 1)
  {
    *(a1 + 720) = *(a2 + 8);
  }

  else if (*(a1 + 720) != 0.0)
  {
    Current = CFAbsoluteTimeGetCurrent();
    v5 = *(a1 + 720);
    v6 = Current - v5;
    if (*(a2 + 16) <= v5)
    {
      v6 = 0.0;
    }

    *(a1 + 712) = *(a1 + 712) + v6;
    v7 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 712);
      v9 = 134217984;
      v10 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "updateLeConnectionScanDailyMetricsData TotalConnectionScanDuration %0.3f", &v9, 0xCu);
    }

    *(a1 + 720) = 0;
  }
}

void sub_10047EED4(uint64_t a1)
{
  sub_10047F614(a1);

  operator delete();
}

void sub_10047EF20(uint64_t a1)
{
  sub_10047F614(a1 - 16);

  operator delete();
}

void sub_10047EF68(uint64_t a1, uint64_t a2)
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
    sub_10047F034((a1 + 8), v6, &v7);
    sub_1000C8CF0((a1 + 8));
  }

  os_unfair_lock_unlock(a1);
}

char *sub_10047F034(void *a1, char *__src, char *a3)
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

void sub_10047F1D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10047F208(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 16);
  v5 = *(a2 + 32);
  v6 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v6;
  *(a1 + 16) = v4;
  *(a1 + 32) = v5;
  if (*(a2 + 103) < 0)
  {
    sub_100008904((a1 + 80), *(a2 + 80), *(a2 + 88));
  }

  else
  {
    v7 = *(a2 + 80);
    *(a1 + 96) = *(a2 + 96);
    *(a1 + 80) = v7;
  }

  if (*(a2 + 127) < 0)
  {
    sub_100008904((a1 + 104), *(a2 + 104), *(a2 + 112));
  }

  else
  {
    v8 = *(a2 + 104);
    *(a1 + 120) = *(a2 + 120);
    *(a1 + 104) = v8;
  }

  if (*(a2 + 151) < 0)
  {
    sub_100008904((a1 + 128), *(a2 + 128), *(a2 + 136));
  }

  else
  {
    v9 = *(a2 + 128);
    *(a1 + 144) = *(a2 + 144);
    *(a1 + 128) = v9;
  }

  if (*(a2 + 175) < 0)
  {
    sub_100008904((a1 + 152), *(a2 + 152), *(a2 + 160));
  }

  else
  {
    v10 = *(a2 + 152);
    *(a1 + 168) = *(a2 + 168);
    *(a1 + 152) = v10;
  }

  if (*(a2 + 199) < 0)
  {
    sub_100008904((a1 + 176), *(a2 + 176), *(a2 + 184));
  }

  else
  {
    v11 = *(a2 + 176);
    *(a1 + 192) = *(a2 + 192);
    *(a1 + 176) = v11;
  }

  if (*(a2 + 223) < 0)
  {
    sub_100008904((a1 + 200), *(a2 + 200), *(a2 + 208));
  }

  else
  {
    v12 = *(a2 + 200);
    *(a1 + 216) = *(a2 + 216);
    *(a1 + 200) = v12;
  }

  if (*(a2 + 247) < 0)
  {
    sub_100008904((a1 + 224), *(a2 + 224), *(a2 + 232));
  }

  else
  {
    v13 = *(a2 + 224);
    *(a1 + 240) = *(a2 + 240);
    *(a1 + 224) = v13;
  }

  v14 = *(a2 + 248);
  v15 = *(a2 + 264);
  *(a1 + 280) = *(a2 + 280);
  *(a1 + 264) = v15;
  *(a1 + 248) = v14;
  if (*(a2 + 311) < 0)
  {
    sub_100008904((a1 + 288), *(a2 + 288), *(a2 + 296));
  }

  else
  {
    v16 = *(a2 + 288);
    *(a1 + 304) = *(a2 + 304);
    *(a1 + 288) = v16;
  }

  *(a1 + 312) = *(a2 + 312);
  return a1;
}

void sub_10047F3B0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 247) < 0)
  {
    operator delete(*(v1 + 224));
  }

  if (*(v1 + 223) < 0)
  {
    operator delete(*(v1 + 200));
  }

  if (*(v1 + 199) < 0)
  {
    operator delete(*(v1 + 176));
  }

  if (*(v1 + 175) < 0)
  {
    operator delete(*(v1 + 152));
  }

  if (*(v1 + 151) < 0)
  {
    operator delete(*(v1 + 128));
  }

  if (*(v1 + 127) < 0)
  {
    operator delete(*(v1 + 104));
  }

  if (*(v1 + 103) < 0)
  {
    operator delete(*(v1 + 80));
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10047F45C(uint64_t a1, __int128 *a2)
{
  v4 = *a2;
  v5 = a2[1];
  *(a1 + 32) = *(a2 + 8);
  *a1 = v4;
  *(a1 + 16) = v5;
  *(a1 + 36) = *(a2 + 9);
  if (*(a2 + 63) < 0)
  {
    sub_100008904((a1 + 40), *(a2 + 5), *(a2 + 6));
  }

  else
  {
    v6 = *(a2 + 40);
    *(a1 + 56) = *(a2 + 7);
    *(a1 + 40) = v6;
  }

  if (*(a2 + 87) < 0)
  {
    sub_100008904((a1 + 64), *(a2 + 8), *(a2 + 9));
  }

  else
  {
    v7 = a2[4];
    *(a1 + 80) = *(a2 + 10);
    *(a1 + 64) = v7;
  }

  if (*(a2 + 111) < 0)
  {
    sub_100008904((a1 + 88), *(a2 + 11), *(a2 + 12));
  }

  else
  {
    v8 = *(a2 + 88);
    *(a1 + 104) = *(a2 + 13);
    *(a1 + 88) = v8;
  }

  if (*(a2 + 135) < 0)
  {
    sub_100008904((a1 + 112), *(a2 + 14), *(a2 + 15));
  }

  else
  {
    v9 = a2[7];
    *(a1 + 128) = *(a2 + 16);
    *(a1 + 112) = v9;
  }

  *(a1 + 136) = *(a2 + 136);
  v10 = *(a2 + 152);
  v11 = *(a2 + 168);
  v12 = *(a2 + 184);
  *(a1 + 200) = *(a2 + 50);
  *(a1 + 184) = v12;
  *(a1 + 168) = v11;
  *(a1 + 152) = v10;
  return a1;
}

void sub_10047F564(_Unwind_Exception *exception_object)
{
  if (*(v1 + 111) < 0)
  {
    operator delete(*(v1 + 88));
  }

  if (*(v1 + 87) < 0)
  {
    operator delete(*(v1 + 64));
  }

  if (*(v1 + 63) < 0)
  {
    operator delete(*(v1 + 40));
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10047F5B0(uint64_t a1)
{
  if (*(a1 + 135) < 0)
  {
    operator delete(*(a1 + 112));
  }

  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  if (*(a1 + 87) < 0)
  {
    operator delete(*(a1 + 64));
  }

  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }

  return a1;
}

uint64_t sub_10047F614(uint64_t a1)
{
  *a1 = off_100AF6290;
  *(a1 + 8) = &off_100AF66A0;
  *(a1 + 16) = off_100AF66B8;
  *(a1 + 24) = &off_100AF66F8;
  *(a1 + 32) = off_100AF6710;
  *(a1 + 40) = off_100AF6740;
  *(a1 + 48) = off_100AF67A0;
  *(a1 + 56) = &off_100AF67D0;
  *(a1 + 64) = off_100AF67E8;
  *(a1 + 72) = &off_100AF68A8;
  *(a1 + 80) = off_100AF68C0;
  sub_10000CEDC(a1 + 1064, *(a1 + 1072));
  sub_10004B61C(a1 + 1040, *(a1 + 1048));
  sub_10004B61C(a1 + 1016, *(a1 + 1024));
  sub_10005CFE4(a1 + 992, *(a1 + 1000));

  sub_10000CEDC(a1 + 656, *(a1 + 664));
  sub_1001392B8(a1 + 616);
  sub_10000CEDC(a1 + 496, *(a1 + 504));
  sub_10000CEDC(a1 + 472, *(a1 + 480));
  sub_10037505C(a1 + 432, *(a1 + 440));
  sub_10000CEDC(a1 + 408, *(a1 + 416));
  sub_10047F88C(a1 + 384, *(a1 + 392));

  sub_10007A068(a1 + 240);
  sub_10007A068(a1 + 176);

  return a1;
}

void sub_10047F88C(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_10047F88C(a1, *a2);
    sub_10047F88C(a1, a2[1]);
    sub_10047F8E8((a2 + 4));

    operator delete(a2);
  }
}

uint64_t sub_10047F8E8(uint64_t a1)
{
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void *sub_10047FF88(uint64_t a1, unint64_t *a2)
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

uint64_t sub_100480060(uint64_t a1, const void **a2)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    v5 = 1;
    do
    {
      if (!sub_1000A61B8(a1, a2, v2 + 4))
      {
        if (!sub_1000A61B8(a1, v2 + 4, a2))
        {
          return v5;
        }

        ++v2;
      }

      v2 = *v2;
    }

    while (v2);
  }

  return 0;
}

uint64_t sub_1004800D4(uint64_t **a1, const void **a2)
{
  v3 = sub_1000463C8(a1, a2);
  if (a1 + 1 == v3)
  {
    return 0;
  }

  v4 = v3;
  sub_10002717C(a1, v3);
  sub_10047F8E8((v4 + 4));
  operator delete(v4);
  return 1;
}

uint64_t sub_100480130(uint64_t a1, unsigned int *a2)
{
  v4 = 0;
  v2 = *sub_1004801D8(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

void *sub_1004801D8(uint64_t a1, void *a2, unsigned int *a3)
{
  v5 = *(a1 + 8);
  result = (a1 + 8);
  v4 = v5;
  if (v5)
  {
    v6 = bswap64(*a3 | (*(a3 + 2) << 32));
    do
    {
      while (1)
      {
        v7 = v4;
        if (v6 >= bswap64(*(v4 + 8) | (*(v4 + 18) << 32)))
        {
          break;
        }

        v4 = *v4;
        result = v7;
        if (!*v7)
        {
          goto LABEL_10;
        }
      }

      if (bswap64(*(v4 + 8) | (*(v4 + 18) << 32)) >= bswap64(*a3 | (*(a3 + 2) << 32)))
      {
        break;
      }

      result = v4 + 1;
      v4 = v4[1];
    }

    while (v4);
  }

  else
  {
    v7 = result;
  }

LABEL_10:
  *a2 = v7;
  return result;
}

uint64_t sub_100480260(uint64_t a1, const void **a2)
{
  v4 = 0;
  v2 = *sub_1000867EC(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

uint64_t sub_100480348(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_10047F8E8(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t *sub_100480394(uint64_t **a1, uint64_t a2)
{
  v3 = sub_10002717C(a1, a2);
  sub_10000CEDC(a2 + 40, *(a2 + 48));
  operator delete(a2);
  return v3;
}

uint64_t sub_1004803D4(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  result = a3[1];
  v4 = result - *a3;
  if (result != *a3)
  {
    v6 = v4 + 1;
    if (v4 == -1)
    {

      return sub_100480490(a2);
    }

    else
    {
      v8 = __clz(v6);
      v9 = 31;
      if (((v6 << v8) & 0x7FFFFFFF) != 0)
      {
        v9 = 32;
      }

      v10 = v9 - v8;
      v11 = v10 >> 5;
      if ((v10 & 0x1F) != 0)
      {
        ++v11;
      }

      if (v11 <= v10)
      {
        v12 = 0xFFFFFFFF >> -(v10 / v11);
      }

      else
      {
        v12 = 0;
      }

      do
      {
        v13 = sub_100480490(a2) & v12;
      }

      while (v13 >= v6);
      return *a3 + v13;
    }
  }

  return result;
}

uint64_t sub_100480490(uint64_t a1)
{
  v1 = *(a1 + 2496);
  v2 = (v1 + 1) % 0x270uLL;
  v3 = *(a1 + 4 * v2);
  if (v3)
  {
    v4 = -1727483681;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4 ^ *(a1 + 4 * ((v1 + 397) % 0x270uLL)) ^ ((v3 & 0x7FFFFFFE | *(a1 + 4 * v1) & 0x80000000) >> 1);
  *(a1 + 4 * v1) = v5;
  *(a1 + 2496) = v2;
  v6 = ((v5 ^ (v5 >> 11)) << 7) & 0x9D2C5680 ^ v5 ^ (v5 >> 11);
  return (v6 << 15) & 0xEFC60000 ^ v6 ^ (((v6 << 15) & 0xEFC60000 ^ v6) >> 18);
}

uint64_t sub_100480530(uint64_t a1, unsigned int *a2)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = bswap64(*a2 | (*(a2 + 2) << 32));
    result = 1;
    do
    {
      if (v3 >= bswap64(*(v2 + 8) | (*(v2 + 18) << 32)))
      {
        if (bswap64(*(v2 + 8) | (*(v2 + 18) << 32)) >= bswap64(*a2 | (*(a2 + 2) << 32)))
        {
          return result;
        }

        ++v2;
      }

      v2 = *v2;
    }

    while (v2);
  }

  return 0;
}

uint64_t sub_1004805A0(uint64_t a1, unsigned int *a2)
{
  v4 = 0;
  v2 = *sub_1004801D8(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

uint64_t *sub_100480654(uint64_t a1, unsigned __int8 *a2)
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

uint64_t sub_100480728(uint64_t a1, const void **a2)
{
  v7 = 0;
  v2 = *sub_1000867EC(a1, &v7, a2);
  if (!v2)
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
    sub_1004807DC();
  }

  return v2;
}

uint64_t *sub_100480898(uint64_t a1, unsigned __int8 *a2)
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

uint64_t *sub_100480970(uint64_t a1, unsigned __int8 *a2)
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

uint64_t sub_100480A48(uint64_t a1, const void **a2)
{
  v3 = 0;
  result = *sub_1000867EC(a1, &v3, a2);
  if (!result)
  {
    sub_100480AEC();
  }

  return result;
}

void sub_100480B88(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_1001132FC(v3, v2);
  _Unwind_Resume(a1);
}

void *sub_100480D0C(uint64_t a1, unint64_t *a2)
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

uint64_t sub_100480E04(uint64_t a1, unsigned __int16 *a2)
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
    v5 = *(v2 + 32);
    v6 = v5 >= v3;
    v7 = v5 < v3;
    if (v6)
    {
      v4 = v2;
    }

    v2 = *(v2 + 8 * v7);
  }

  while (v2);
  if (v4 == a1 + 8 || v3 < *(v4 + 32))
  {
    return 0;
  }

  sub_10002717C(a1, v4);
  operator delete(v4);
  return 1;
}

uint64_t *sub_100480E88(uint64_t a1, unsigned __int16 *a2)
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

void *sub_100480FA0(void *a1, unint64_t *a2)
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
    if (v2 >= *&v3)
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

  if (v7[2] != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

uint64_t sub_1004811D8(uint64_t a1)
{
  *(a1 + 16) = 0;
  *a1 = off_100AF7828;
  *(a1 + 8) = a1 + 16;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  sub_10002223C();
  return a1;
}

uint64_t sub_100481258(uint64_t a1)
{
  *a1 = off_100AF7828;
  sub_10002223C();
  sub_100484FDC(a1 + 8, *(a1 + 16));
  return a1;
}

void sub_1004812C4(uint64_t a1)
{
  sub_100481258(a1);

  operator delete();
}

uint64_t sub_1004812FC(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v5 = qword_100BCE940;
  v6 = os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_INFO);
  if (v4)
  {
    if (v6)
    {
      v7 = *(a1 + 24);
      v32 = 134217984;
      v33 = v7;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "getStoredDevices reading from local cache (%zu devices)", &v32, 0xCu);
    }

    v8 = *(a1 + 8);
    v9 = (a1 + 16);
    if (v8 != (a1 + 16))
    {
      do
      {
        v10 = (v8 + 4);
        LOWORD(v33) = 0;
        v32 = 0;
        if (*(v8 + 55) < 0)
        {
          v10 = *v10;
        }

        if (sub_10009D0B4(&v32, v10))
        {
          if (v32)
          {
LABEL_9:
            if (qword_100B508F0 != -1)
            {
              sub_10082E43C();
            }

            v11 = sub_1000E6554(off_100B508E8, &v32, 1);
            if (!sub_1000E69B8(a2, v11))
            {
              v13 = *(a2 + 8);
              v12 = *(a2 + 16);
              if (v13 >= v12)
              {
                v17 = (v13 - *a2) >> 3;
                if ((v17 + 1) >> 61)
                {
                  sub_1000C7698();
                }

                v18 = v12 - *a2;
                v19 = v18 >> 2;
                if (v18 >> 2 <= (v17 + 1))
                {
                  v19 = v17 + 1;
                }

                if (v18 >= 0x7FFFFFFFFFFFFFF8)
                {
                  v20 = 0x1FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v20 = v19;
                }

                if (v20)
                {
                  sub_100008108(a2, v20);
                }

                v21 = (8 * v17);
                *v21 = v11;
                v14 = 8 * v17 + 8;
                v22 = *(a2 + 8) - *a2;
                v23 = v21 - v22;
                memcpy(v21 - v22, *a2, v22);
                v24 = *a2;
                *a2 = v23;
                *(a2 + 8) = v14;
                *(a2 + 16) = 0;
                if (v24)
                {
                  operator delete(v24);
                }
              }

              else
              {
                *v13 = v11;
                v14 = (v13 + 1);
              }

              *(a2 + 8) = v14;
            }
          }

          else
          {
            v15 = 1;
            while (v15 != 6)
            {
              if (*(&v32 + v15++))
              {
                if ((v15 - 2) <= 4)
                {
                  goto LABEL_9;
                }

                break;
              }
            }
          }
        }

        v25 = v8[1];
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
            v26 = v8[2];
            v27 = *v26 == v8;
            v8 = v26;
          }

          while (!v27);
        }

        v8 = v26;
      }

      while (v26 != v9);
    }

    return 0;
  }

  else
  {
    if (v6)
    {
      LOWORD(v32) = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "getStoredDevices reading from keychain", &v32, 2u);
    }

    v28 = sub_1003CC154(a2);
    v30 = *a2;
    v29 = *(a2 + 8);
    while (v30 != v29)
    {
      sub_1004815C4(a1, *v30++);
    }

    *(a1 + 32) = 1;
  }

  return v28;
}

void sub_1004815C4(uint64_t a1, uint64_t a2)
{
  v19 = *(a2 + 128);
  v20 = *(a2 + 132);
  v17 = 0;
  v18 = 0;
  sub_1000BE6F8(&v19, __p);
  sub_100481C50(a1, __p, &v17);
  if (v16 < 0)
  {
    operator delete(__p[0]);
  }

  v4 = qword_100BCE940;
  if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000BE6F8(&v19, &v12);
    v5 = v14 >= 0 ? &v12 : v12;
    *buf = 136446210;
    v22 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Loading keys from keychain for device address %{public}s", buf, 0xCu);
    if (SHIBYTE(v14) < 0)
    {
      operator delete(v12);
    }
  }

  v12 = 0;
  v13 = 0;
  v14 = 0;
  *buf = 1;
  sub_10036F480(&v12, buf);
  *buf = 2;
  sub_10036F480(&v12, buf);
  *buf = 4;
  sub_10036F480(&v12, buf);
  *buf = 8;
  sub_10036F480(&v12, buf);
  *buf = 16;
  sub_10036F480(&v12, buf);
  *buf = 32;
  sub_10036F480(&v12, buf);
  *buf = 64;
  sub_10036F480(&v12, buf);
  *buf = 128;
  sub_10036F480(&v12, buf);
  *buf = 256;
  sub_10036F480(&v12, buf);
  *buf = 512;
  sub_10036F480(&v12, buf);
  *buf = 1024;
  sub_10036F480(&v12, buf);
  v6 = v18;
  v10 = off_100AF7948;
  v11 = v18;
  if (v18)
  {
    sub_10000C69C(v18);
  }

  v7 = 0;
  __dst = 0;
  v9 = 0;
  if (v13 != v12)
  {
    sub_1003A4F88(&v7, (v13 - v12) >> 2);
  }

  sub_100481974(v6, a2, &v10, &v7);
  if (v7)
  {
    __dst = v7;
    operator delete(v7);
  }

  v10 = off_100AF7948;
  if (v11)
  {
    sub_10000C808(v11);
  }

  if (v12)
  {
    v13 = v12;
    operator delete(v12);
  }

  v17 = off_100AF7948;
  if (v18)
  {
    sub_10000C808(v18);
  }
}

void sub_1004818A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, atomic_uint *a21)
{
  if (a21)
  {
    sub_10000C808(a21);
  }

  _Unwind_Resume(exception_object);
}

void sub_100481954(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x10048194CLL);
}

void sub_100481974(uint64_t a1, uint64_t a2, uint64_t a3, int **a4)
{
  v20 = *(a2 + 128);
  v21 = *(a2 + 132);
  cf = 0;
  v4 = *a4;
  v5 = a4[1];
  if (*a4 != v5)
  {
    do
    {
      v7 = *v4;
      v19 = 64;
      memset(v27, 0, sizeof(v27));
      sub_1000BE6F8(&v20, __p);
      if (SBYTE3(v24) >= 0)
      {
        v9 = __p;
      }

      else
      {
        v9 = *__p;
      }

      v10 = sub_1003CBA04(v7, v9, v27, &v19, &cf, v8);
      if (SBYTE3(v24) < 0)
      {
        operator delete(*__p);
      }

      v11 = v19;
      if (v10)
      {
        v12 = 1;
      }

      else
      {
        v12 = v19 == 0;
      }

      if (!v12)
      {
        v13 = qword_100BCE940;
        if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_DEBUG))
        {
          sub_1000BE6F8(&v20, v16);
          v15 = v16;
          if (v17 < 0)
          {
            v15 = v16[0];
          }

          *__p = 136446978;
          *&__p[4] = v15;
          *&__p[12] = 1024;
          *&__p[14] = v7;
          v23 = 2080;
          v24 = v27;
          v25 = 1024;
          v26 = v19;
          _os_log_debug_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "readKeyForDevice(%{public}s) aType:%d data:%s len:%d", __p, 0x22u);
          if (v17 < 0)
          {
            operator delete(v16[0]);
          }

          v11 = v19;
        }

        v14 = *(a3 + 8);
        sub_10000C704(__p, v27, v11 + 1);
        sub_100481BF4(v14, v7, __p);
        *__p = &off_100AE0A78;
        if (*&__p[8])
        {
          sub_10000C808(*&__p[8]);
        }
      }

      ++v4;
    }

    while (v4 != v5);
    if (cf)
    {
      CFRelease(cf);
    }
  }
}

void sub_100481B9C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, atomic_uint *a18, int a19, __int16 a20, char a21, char a22)
{
  if (a18)
  {
    sub_10000C808(a18);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100481BF4(uint64_t a1, int a2, uint64_t a3)
{
  v6 = a2;
  v7 = &v6;
  v4 = sub_100485118(a1 + 16, &v6);
  return sub_10000AE20((v4 + 5), a3);
}

void sub_100481C50(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = sub_10000EEB8(a1 + 8, a2);
  if (a1 + 16 == v5)
  {
    operator new();
  }

  *a3 = off_100AF7948;
  v6 = *(v5 + 64);
  a3[1] = v6;
  if (v6)
  {

    sub_10000C69C(v6);
  }
}

void sub_100481DE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, atomic_uint *a10)
{
  if (a10)
  {
    sub_10000C808(a10);
  }

  _Unwind_Resume(exception_object);
}

void *sub_100481DFC(void *a1)
{
  *a1 = off_100AF7948;
  v2 = a1[1];
  if (v2)
  {
    sub_10000C808(v2);
  }

  return a1;
}

void sub_100481E48(uint64_t a1)
{
  if (IsAppleInternalBuild())
  {
    v2 = *(a1 + 8);
    if (v2 != (a1 + 16))
    {
      do
      {
        v3 = v2[8];
        *v22 = off_100AF7948;
        v23 = v3;
        if (v3)
        {
          sub_10000C69C(v3);
        }

        v4 = qword_100BCE940;
        if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_DEFAULT))
        {
          v5 = v2 + 4;
          if (*(v2 + 55) < 0)
          {
            v5 = *v5;
          }

          LODWORD(buf) = 136315138;
          *(&buf + 4) = v5;
          _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "statedump:    %s", &buf, 0xCu);
          v4 = qword_100BCE940;
        }

        v6 = v23;
        if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
        {
          sub_1000AFFEC(v23, 1, &buf);
          v7 = sub_10000C5F8(&buf);
          *v25 = 136315138;
          v26 = v7;
          _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "statedump:       Pincode:\t       %s", v25, 0xCu);
          *&buf = &off_100AE0A78;
          if (*(&buf + 1))
          {
            sub_10000C808(*(&buf + 1));
          }

          v4 = qword_100BCE940;
          v6 = v23;
        }

        if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
        {
          sub_1000AFFEC(v6, 2, &buf);
          v8 = sub_10000C5F8(&buf);
          *v25 = 136315138;
          v26 = v8;
          _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "statedump:       Link key:       %s", v25, 0xCu);
          *&buf = &off_100AE0A78;
          if (*(&buf + 1))
          {
            sub_10000C808(*(&buf + 1));
          }

          v4 = qword_100BCE940;
          v6 = v23;
        }

        if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
        {
          sub_1000AFFEC(v6, 4, &buf);
          v9 = sub_10000C5F8(&buf);
          *v25 = 136315138;
          v26 = v9;
          _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "statedump:       Link key type:  %s", v25, 0xCu);
          *&buf = &off_100AE0A78;
          if (*(&buf + 1))
          {
            sub_10000C808(*(&buf + 1));
          }

          v4 = qword_100BCE940;
          v6 = v23;
        }

        if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
        {
          sub_1000AFFEC(v6, 8, &buf);
          v10 = sub_10000C5F8(&buf);
          *v25 = 136315138;
          v26 = v10;
          _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "statedump:       Local address:  %s", v25, 0xCu);
          *&buf = &off_100AE0A78;
          if (*(&buf + 1))
          {
            sub_10000C808(*(&buf + 1));
          }

          v4 = qword_100BCE940;
          v6 = v23;
        }

        if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
        {
          sub_1000AFFEC(v6, 16, &buf);
          v11 = sub_10000C5F8(&buf);
          *v25 = 136315138;
          v26 = v11;
          _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "statedump:       Magic IRK:      %s", v25, 0xCu);
          *&buf = &off_100AE0A78;
          if (*(&buf + 1))
          {
            sub_10000C808(*(&buf + 1));
          }

          v4 = qword_100BCE940;
          v6 = v23;
        }

        if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
        {
          sub_1000AFFEC(v6, 32, &buf);
          v12 = sub_10000C5F8(&buf);
          *v25 = 136315138;
          v26 = v12;
          _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "statedump:       Magic Enc:      %s", v25, 0xCu);
          *&buf = &off_100AE0A78;
          if (*(&buf + 1))
          {
            sub_10000C808(*(&buf + 1));
          }

          v4 = qword_100BCE940;
          v6 = v23;
        }

        if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
        {
          sub_1000AFFEC(v6, 64, &buf);
          v13 = sub_10000C5F8(&buf);
          *v25 = 136315138;
          v26 = v13;
          _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "statedump:       Magic Acc:      %s", v25, 0xCu);
          *&buf = &off_100AE0A78;
          if (*(&buf + 1))
          {
            sub_10000C808(*(&buf + 1));
          }

          v4 = qword_100BCE940;
          v6 = v23;
        }

        if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
        {
          sub_1000AFFEC(v6, 128, &buf);
          v14 = sub_10000C5F8(&buf);
          *v25 = 136315138;
          v26 = v14;
          _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "statedump:       Magic Hint:     %s", v25, 0xCu);
          *&buf = &off_100AE0A78;
          if (*(&buf + 1))
          {
            sub_10000C808(*(&buf + 1));
          }

          v4 = qword_100BCE940;
          v6 = v23;
        }

        if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
        {
          sub_1000AFFEC(v6, 256, &buf);
          v15 = sub_10000C5F8(&buf);
          *v25 = 136315138;
          v26 = v15;
          _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "statedump:       Magic Ratchet:   %s", v25, 0xCu);
          *&buf = &off_100AE0A78;
          if (*(&buf + 1))
          {
            sub_10000C808(*(&buf + 1));
          }

          v4 = qword_100BCE940;
          v6 = v23;
        }

        if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
        {
          sub_1000AFFEC(v6, 512, &buf);
          v16 = sub_10000C5F8(&buf);
          *v25 = 136315138;
          v26 = v16;
          _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "statedump:       Guest IRK:      %s", v25, 0xCu);
          *&buf = &off_100AE0A78;
          if (*(&buf + 1))
          {
            sub_10000C808(*(&buf + 1));
          }

          v4 = qword_100BCE940;
          v6 = v23;
        }

        if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
        {
          sub_1000AFFEC(v6, 1024, &buf);
          v17 = sub_10000C5F8(&buf);
          *v25 = 136315138;
          v26 = v17;
          _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "statedump:       Guest Enc:      %s", v25, 0xCu);
          *&buf = &off_100AE0A78;
          if (*(&buf + 1))
          {
            sub_10000C808(*(&buf + 1));
          }

          v6 = v23;
        }

        *v22 = off_100AF7948;
        if (v6)
        {
          sub_10000C808(v6);
        }

        v18 = v2[1];
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
            v19 = v2[2];
            v20 = *v19 == v2;
            v2 = v19;
          }

          while (!v20);
        }

        v2 = v19;
      }

      while (v19 != (a1 + 16));
    }
  }

  else
  {
    v21 = qword_100BCE940;
    if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_DEFAULT))
    {
      *v22 = 0;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "statedump:    Not authorized to view security keys.", v22, 2u);
    }
  }
}

void sub_1004825BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, atomic_uint *a12, uint64_t a13, uint64_t a14)
{
  if (a12)
  {
    sub_10000C808(a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100482664(uint64_t a1, uint64_t a2, char *a3)
{
  v11 = *(a2 + 128);
  v12 = *(a2 + 132);
  sub_1000BE6F8(&v11, &__p);
  v5 = sub_10000EEB8(a1 + 8, &__p);
  if (v10 < 0)
  {
    operator delete(__p);
  }

  if (a1 + 16 == v5)
  {
    return 155;
  }

  __p = 0;
  v9 = 0;
  sub_1000AFFEC(*(v5 + 64), 1, &__p);
  if (sub_10000D26C(&__p))
  {
    __p = &off_100AE0A78;
    if (v9)
    {
      sub_10000C808(v9);
    }

    return 155;
  }

  v7 = sub_10000C5F8(&__p);
  sub_1006E5F20(a3, v7);
  __p = &off_100AE0A78;
  if (v9)
  {
    sub_10000C808(v9);
  }

  return 0;
}

void sub_100482778(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, atomic_uint *a10, int a11, __int16 a12, char a13, char a14)
{
  if (a10)
  {
    sub_10000C808(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1004827CC(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  v24 = *(a2 + 128);
  v25 = *(a2 + 132);
  v22 = 0;
  v23 = 0;
  sub_1000BE6F8(&v24, __n_1);
  sub_100481C50(a1, __n_1, &v22);
  if (v21 < 0)
  {
    operator delete(__n_1[0]);
  }

  sub_1000BE6F8(&v24, __dst);
  v5 = SBYTE7(v27);
  v6 = __dst[0];
  sub_1006E5FB4(a3, buf);
  if (v5 >= 0)
  {
    v7 = __dst;
  }

  else
  {
    v7 = v6;
  }

  if ((v32 & 0x80u) == 0)
  {
    v8 = buf;
  }

  else
  {
    v8 = *buf;
  }

  v9 = sub_1003CAA00(1, v7, v8, 0);
  if (v32 < 0)
  {
    operator delete(*buf);
  }

  if (SBYTE7(v27) < 0)
  {
    operator delete(__dst[0]);
    if (v9)
    {
      goto LABEL_25;
    }
  }

  else if (v9)
  {
    goto LABEL_25;
  }

  sub_1006E5FB4(a3, __dst);
  if ((SBYTE7(v27) & 0x80u) == 0)
  {
    v10 = SBYTE7(v27);
  }

  else
  {
    v10 = __dst[1];
  }

  if ((SBYTE7(v27) & 0x8000000000000000) != 0)
  {
    operator delete(__dst[0]);
  }

  if (v10 <= 0x40)
  {
    v28 = 0u;
    v29 = 0u;
    *__dst = 0u;
    v27 = 0u;
    v11 = buf;
    sub_1006E5FB4(a3, buf);
    if ((v32 & 0x80u) != 0)
    {
      v11 = *buf;
    }

    sub_1006E5FB4(a3, &__p);
    if ((__n & 0x8000000000000000) != 0)
    {
      memcpy(__dst, v11, v18);
      operator delete(__p);
    }

    else
    {
      memcpy(__dst, v11, __n);
    }

    if (v32 < 0)
    {
      operator delete(*buf);
    }

    v15 = v23;
    sub_1006E5FB4(a3, buf);
    v16 = v32;
    if ((v32 & 0x80u) != 0)
    {
      v16 = v31;
    }

    sub_10000C704(&__p, __dst, v16 + 1);
    sub_100481BF4(v15, 1, &__p);
    __p = &off_100AE0A78;
    if (v18)
    {
      sub_10000C808(v18);
    }

    if (v32 < 0)
    {
      operator delete(*buf);
    }

    v13 = 0;
    goto LABEL_28;
  }

LABEL_25:
  v12 = qword_100BCE940;
  if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_ERROR))
  {
    sub_1006E5FB4(a3, __dst);
    sub_10082E464(__dst, buf, v12);
  }

  v13 = 159;
LABEL_28:
  v22 = off_100AF7948;
  if (v23)
  {
    sub_10000C808(v23);
  }

  return v13;
}

void sub_100482A84(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, atomic_uint *a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, atomic_uint *a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a11)
  {
    sub_10000C808(a11);
  }

  if (*(v27 - 41) < 0)
  {
    operator delete(*(v27 - 64));
  }

  if (a20)
  {
    sub_10000C808(a20);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100482B78(uint64_t a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4)
{
  v49 = *(a3 + 128);
  v50 = *(a3 + 132);
  v57 = 0uLL;
  sub_1000BE6F8(&v49, __p);
  v8 = sub_10000EEB8(a1 + 8, __p);
  if (SHIBYTE(v48) < 0)
  {
    operator delete(__p[0]);
  }

  if (a1 + 16 == v8)
  {
    return 150;
  }

  v45 = 0;
  v46 = 0;
  sub_1000AFFEC(*(v8 + 64), 2, &v45);
  if (sub_10000D26C(&v45))
  {
    v9 = 1;
    goto LABEL_54;
  }

  __p[0] = 0;
  __p[1] = 0;
  v48 = 0;
  v10 = sub_10000C5F8(&v45);
  v11 = strlen(v10);
  if (v11 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_1000C7698();
  }

  v12 = v11;
  if (v11 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v48) = v11;
  if (v11)
  {
    memmove(__p, v10, v11);
  }

  *(__p + v12) = 0;
  if (v48 >= 0)
  {
    v13 = __p;
  }

  else
  {
    v13 = __p[0];
  }

  if ((sub_1000E2AB8(v13, &v57, 16) & 1) == 0)
  {
    v23 = qword_100BCE940;
    if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_ERROR))
    {
      sub_1000E5A58(a3, &v51);
      v30 = v52;
      v31 = v51.n128_u64[0];
      v32 = sub_10000C5F8(&v45);
      v33 = &v51;
      if (v30 < 0)
      {
        v33 = v31;
      }

      *buf = 136446466;
      v54 = v33;
      v55 = 2080;
      v56 = v32;
      v28 = "Failed to parse malformed link key for device %{public}s - data was %s";
      goto LABEL_40;
    }

LABEL_33:
    v9 = 0;
    a4 = 151;
    goto LABEL_52;
  }

  sub_1000AFFEC(*(v8 + 64), 4, &v51);
  sub_10000AE20(&v45, &v51);
  v51.n128_u64[0] = &off_100AE0A78;
  if (v51.n128_u64[1])
  {
    sub_10000C808(v51.n128_u64[1]);
  }

  if (!sub_10000D26C(&v45))
  {
    v14 = sub_10000C5F8(&v45);
    if (!strcmp(v14, "Combo"))
    {
      v29 = 0;
    }

    else
    {
      v15 = sub_10000C5F8(&v45);
      if (!strcmp(v15, "Local"))
      {
        v29 = 1;
      }

      else
      {
        v16 = sub_10000C5F8(&v45);
        if (!strcmp(v16, "Remote"))
        {
          v29 = 2;
        }

        else
        {
          v17 = sub_10000C5F8(&v45);
          if (!strcmp(v17, "DebugCombo"))
          {
            v29 = 3;
          }

          else
          {
            v18 = sub_10000C5F8(&v45);
            if (!strcmp(v18, "UnAuthenticated"))
            {
              v29 = 4;
            }

            else
            {
              v19 = sub_10000C5F8(&v45);
              if (!strcmp(v19, "Authenticated"))
              {
                v29 = 5;
              }

              else
              {
                v20 = sub_10000C5F8(&v45);
                if (!strcmp(v20, "ChangedCombo"))
                {
                  v29 = 6;
                }

                else
                {
                  v21 = sub_10000C5F8(&v45);
                  if (!strcmp(v21, "UnAuthComboP256"))
                  {
                    v29 = 7;
                  }

                  else
                  {
                    v22 = sub_10000C5F8(&v45);
                    if (strcmp(v22, "AuthComboP256"))
                    {
                      v23 = qword_100BCE940;
                      if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_ERROR))
                      {
                        sub_1000E5A58(a3, &v51);
                        v24 = v52;
                        v25 = v51.n128_u64[0];
                        v26 = sub_10000C5F8(&v45);
                        v27 = &v51;
                        if (v24 < 0)
                        {
                          v27 = v25;
                        }

                        *buf = 136446466;
                        v54 = v27;
                        v55 = 2080;
                        v56 = v26;
                        v28 = "Invalid link key type for device %{public}s - %s";
LABEL_40:
                        _os_log_error_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, v28, buf, 0x16u);
                        if (v52 < 0)
                        {
                          operator delete(v51.n128_u64[0]);
                        }

                        goto LABEL_33;
                      }

                      goto LABEL_33;
                    }

                    v29 = 8;
                  }
                }
              }
            }
          }
        }
      }
    }

    sub_1000AFFEC(*(v8 + 64), 8, &v51);
    sub_10000AE20(&v45, &v51);
    v51.n128_u64[0] = &off_100AE0A78;
    if (v51.n128_u64[1])
    {
      sub_10000C808(v51.n128_u64[1]);
    }

    if (!sub_10000D26C(&v45))
    {
      sub_1000BE6F8(a2, &v51);
      v35 = v52;
      v36 = v51.n128_u64[0];
      v37 = sub_10000C5F8(&v45);
      if (v35 >= 0)
      {
        v38 = &v51;
      }

      else
      {
        v38 = v36;
      }

      v39 = strcmp(v38, v37);
      if (v52 < 0)
      {
        operator delete(v51.n128_u64[0]);
      }

      if (v39)
      {
        v40 = qword_100BCE940;
        if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_ERROR))
        {
          sub_1000BE6F8(a2, &v51);
          v41 = v52;
          v42 = v51.n128_u64[0];
          v43 = sub_10000C5F8(&v45);
          v44 = &v51;
          if (v41 < 0)
          {
            v44 = v42;
          }

          *buf = 136315394;
          v54 = v44;
          v55 = 2080;
          v56 = v43;
          _os_log_error_impl(&_mh_execute_header, v40, OS_LOG_TYPE_ERROR, "We have a link key for the wrong local device : %s != %s.", buf, 0x16u);
          if (v52 < 0)
          {
            operator delete(v51.n128_u64[0]);
          }
        }

        v9 = 0;
        a4 = 150;
      }

      else
      {
        sub_1006D1BAC(&v51, &v57, v29);
        sub_1006D1B80(a4, &v51);
        nullsub_21(&v51);
        v9 = 0;
        a4 = 0;
      }

      goto LABEL_52;
    }
  }

  v9 = 1;
LABEL_52:
  if (SHIBYTE(v48) < 0)
  {
    operator delete(__p[0]);
  }

LABEL_54:
  v45 = &off_100AE0A78;
  if (v46)
  {
    sub_10000C808(v46);
  }

  if (v9)
  {
    return 150;
  }

  return a4;
}

void sub_100483160(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, atomic_uint *a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  if (a17 < 0)
  {
    operator delete(a12);
  }

  if (a11)
  {
    sub_10000C808(a11);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100483274(uint64_t a1, unsigned __int8 *a2, uint64_t a3, _BYTE *a4, int a5)
{
  if (sub_1006D1BDC(a4))
  {
    v10 = *(*a1 + 64);

    return v10(a1, a2, a3);
  }

  v48 = *(a3 + 128);
  v49 = *(a3 + 132);
  v52 = 0u;
  v53 = 0u;
  *__str = 0u;
  v51 = 0u;
  v12 = nullsub_21(a4);
  v13 = sub_1006D1BC8(a4);
  if (v13 >= 9)
  {
    if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_ERROR))
    {
      sub_10082E4DC(a4);
    }

    v14 = "Unknown";
  }

  else
  {
    v14 = (&off_100AF7958)[v13];
  }

  v46 = 0;
  v47 = 0;
  sub_1000BE6F8(&v48, __p);
  sub_100481C50(a1, __p, &v46);
  if (v45 < 0)
  {
    operator delete(__p[0]);
  }

  sub_1000BE6F8(&v48, &v41);
  if (v43 >= 0)
  {
    v15 = &v41;
  }

  else
  {
    v15 = v41;
  }

  v16 = sub_1003CAA00(4, v15, v14, a5);
  v17 = v16;
  if (v43 < 0)
  {
    operator delete(v41);
    if (v17)
    {
LABEL_17:
      if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_ERROR))
      {
        sub_1000E5A58(a3, &v41);
        sub_10082E554();
      }

      goto LABEL_22;
    }
  }

  else if (v16)
  {
    goto LABEL_17;
  }

  v18 = v47;
  v19 = strlen(v14);
  sub_10000C704(&v41, v14, v19 + 1);
  sub_100481BF4(v18, 4, &v41);
  v41 = &off_100AE0A78;
  if (v42)
  {
    sub_10000C808(v42);
  }

LABEL_22:
  snprintf(__str, 0x3FuLL, "%02X-%02X-%02X-%02X-%02X-%02X-%02X-%02X-%02X-%02X-%02X-%02X-%02X-%02X-%02X-%02X", *v12, v12[1], v12[2], v12[3], v12[4], v12[5], v12[6], v12[7], v12[8], v12[9], v12[10], v12[11], v12[12], v12[13], v12[14], v12[15]);
  HIBYTE(v53) = 0;
  sub_1000BE6F8(&v48, &v38);
  if (v40 >= 0)
  {
    v20 = &v38;
  }

  else
  {
    v20 = v38;
  }

  v21 = sub_1003CAA00(2, v20, __str, a5);
  v22 = v21;
  if (v40 < 0)
  {
    operator delete(v38);
    if (v22)
    {
LABEL_27:
      if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_ERROR))
      {
        sub_1000E5A58(a3, &v38);
        sub_10082E5B0();
      }

      goto LABEL_32;
    }
  }

  else if (v21)
  {
    goto LABEL_27;
  }

  v23 = v47;
  v24 = strlen(__str);
  sub_10000C704(&v38, __str, v24 + 1);
  sub_100481BF4(v23, 2, &v38);
  v38 = &off_100AE0A78;
  if (v39)
  {
    sub_10000C808(v39);
  }

LABEL_32:
  sub_1000BE6F8(&v48, v36);
  v25 = v37;
  v26 = v36[0];
  sub_1000BE6F8(a2, &v33);
  if (v25 >= 0)
  {
    v27 = v36;
  }

  else
  {
    v27 = v26;
  }

  if (v35 >= 0)
  {
    v28 = &v33;
  }

  else
  {
    v28 = v33;
  }

  v29 = sub_1003CAA00(8, v27, v28, a5);
  if (v35 < 0)
  {
    operator delete(v33);
  }

  if ((v37 & 0x80000000) == 0)
  {
    if (v29)
    {
      goto LABEL_42;
    }

LABEL_45:
    v52 = 0u;
    v53 = 0u;
    *__str = 0u;
    v51 = 0u;
    sub_1000BE6F8(a2, v36);
    if ((v37 & 0x80u) == 0)
    {
      v30 = v36;
    }

    else
    {
      v30 = v36[0];
    }

    strlcpy(__str, v30, 0x40uLL);
    if (v37 < 0)
    {
      operator delete(v36[0]);
    }

    v31 = v47;
    sub_1000BE6F8(a2, v36);
    v32 = v37;
    if ((v37 & 0x80u) != 0)
    {
      v32 = v36[1];
    }

    sub_10000C704(&v33, __str, v32 + 1);
    sub_100481BF4(v31, 8, &v33);
    v33 = &off_100AE0A78;
    if (v34)
    {
      sub_10000C808(v34);
    }

    if (v37 < 0)
    {
      operator delete(v36[0]);
    }

    goto LABEL_56;
  }

  operator delete(v36[0]);
  if (!v29)
  {
    goto LABEL_45;
  }

LABEL_42:
  if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_ERROR))
  {
    sub_10082E60C();
  }

LABEL_56:
  v46 = off_100AF7948;
  if (v47)
  {
    sub_10000C808(v47);
  }

  return v29;
}

void sub_1004837EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36, uint64_t a37, uint64_t a38, int a39, __int16 a40, char a41, char a42, uint64_t a43, uint64_t a44, int a45, __int16 a46, char a47, char a48, void *a49, uint64_t a50, int a51, __int16 a52, char a53, char a54, uint64_t a55, atomic_uint *a56)
{
  if (a56)
  {
    sub_10000C808(a56);
  }

  _Unwind_Resume(exception_object);
}

void sub_100483950(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v17 = *(a2 + 128);
  v18 = *(a2 + 132);
  sub_1000BE6F8(&v17, __p);
  v7 = sub_10000EEB8(a1 + 8, __p);
  if (v16 < 0)
  {
    operator delete(__p[0]);
  }

  if ((a1 + 16) != v7)
  {
    for (; a3; --a3)
    {
      v8 = v7[8];
      v9 = *a4++;
      LODWORD(__p[0]) = v9;
      sub_10048548C(v8 + 16, __p);
    }

    v10 = v7[8];
    v11 = v10[4];
    if (v11 != 1)
    {
      if (v11)
      {
        return;
      }

      v12 = v10[3];
      goto LABEL_9;
    }

    v12 = v10[3];
    if (v12)
    {
      v13 = (v10 + 3);
      v14 = v10[3];
      do
      {
        if (v14[8] >= 8)
        {
          v13 = v14;
        }

        v14 = *&v14[2 * (v14[8] < 8)];
      }

      while (v14);
      if (v13 != (v10 + 3) && v13[8] <= 8)
      {
LABEL_9:
        sub_100046348((v10 + 2), v12);
        v10[3] = 0;
        v10[2] = v10 + 3;
        v10[4] = 0;
        sub_10048555C((a1 + 8), v7);
      }
    }
  }
}

void sub_100483A74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100483A90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(a3 + 128);
  v9 = *(a3 + 132);
  v10 = 0x400000002;
  sub_100483950(a1, a3, 2, &v10);
  sub_1000BE6F8(&v8, __p);
  if (v7 >= 0)
  {
    v3 = __p;
  }

  else
  {
    v3 = __p[0];
  }

  v4 = sub_1003CBC64(v3, 6u);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  return v4;
}

void sub_100483B4C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100483B70(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 128);
  v10 = *(a2 + 132);
  v8 = 1;
  v9 = v2;
  sub_100483950(a1, a2, 1, &v8);
  sub_1000BE6F8(&v9, __p);
  if (v7 >= 0)
  {
    v3 = __p;
  }

  else
  {
    v3 = __p[0];
  }

  v4 = sub_1003CBC64(v3, 1u);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  return v4;
}

void sub_100483BF4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100483C20(uint64_t a1, uint64_t a2, int a3, unsigned __int8 *a4)
{
  v21 = *(a2 + 128);
  v22 = *(a2 + 132);
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  *__str = 0u;
  v24 = 0u;
  v19 = 0;
  v20 = 0;
  sub_1000BE6F8(&v21, __p);
  sub_100481C50(a1, __p, &v19);
  if (v18 < 0)
  {
    operator delete(__p[0]);
  }

  snprintf(__str, 0x3FuLL, "%02X-%02X-%02X-%02X-%02X-%02X-%02X-%02X-%02X-%02X-%02X-%02X-%02X-%02X-%02X-%02X", *a4, a4[1], a4[2], a4[3], a4[4], a4[5], a4[6], a4[7], a4[8], a4[9], a4[10], a4[11], a4[12], a4[13], a4[14], a4[15]);
  HIBYTE(v26) = 0;
  if (a3)
  {
    v7 = 0;
    if (a3 != 1)
    {
      goto LABEL_23;
    }

    sub_1000BE6F8(&v21, &v14);
    if (v16 >= 0)
    {
      v8 = &v14;
    }

    else
    {
      v8 = v14;
    }

    v9 = sub_1003CAA00(1024, v8, __str, 1);
  }

  else
  {
    sub_1000BE6F8(&v21, &v14);
    if (v16 >= 0)
    {
      v10 = &v14;
    }

    else
    {
      v10 = v14;
    }

    v9 = sub_1003CAA00(512, v10, __str, 1);
  }

  v7 = v9;
  if (v16 < 0)
  {
    operator delete(v14);
    if (v7)
    {
      goto LABEL_23;
    }
  }

  else if (v9)
  {
    goto LABEL_23;
  }

  v11 = v20;
  v12 = strlen(__str);
  sub_10000C704(&v14, __str, v12 + 1);
  if (a3)
  {
    sub_100481BF4(v11, 1024, &v14);
  }

  else
  {
    sub_100481BF4(v11, 512, &v14);
  }

  v14 = &off_100AE0A78;
  if (v15)
  {
    sub_10000C808(v15);
  }

  v7 = 0;
LABEL_23:
  v19 = off_100AF7948;
  if (v20)
  {
    sub_10000C808(v20);
  }

  return v7;
}

void sub_100483EAC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, atomic_uint *a27, int a28, __int16 a29, char a30, char a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, uint64_t a38, atomic_uint *a39)
{
  if (a27)
  {
    sub_10000C808(a27);
  }

  if (a39)
  {
    sub_10000C808(a39);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100483F60(uint64_t a1, uint64_t a2, int a3)
{
  v16 = *(a2 + 128);
  v17 = *(a2 + 132);
  sub_1000BE6F8(&v16, &__p);
  v6 = sub_10000EEB8(a1 + 8, &__p);
  if (SHIBYTE(v24) < 0)
  {
    operator delete(__p);
  }

  if (a1 + 16 == v6)
  {
    return 150;
  }

  v14 = 0;
  v15 = 0;
  sub_1000AFFEC(*(v6 + 64), dword_1008A8130[a3], &v14);
  if (sub_10000D26C(&v14))
  {
    v7 = qword_100BCE940;
    if (!os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_INFO))
    {
      goto LABEL_21;
    }

    sub_1000E5A58(a2, buf);
    v8 = v19 >= 0 ? buf : *buf;
    LODWORD(__p) = 67109634;
    HIDWORD(__p) = a3;
    v21 = 2080;
    v22 = v8;
    v23 = 1024;
    v24 = 150;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Wireless Splitter call to retrieve key chain key data of type %d for device %s failed with result %d", &__p, 0x18u);
    if ((v19 & 0x80000000) == 0)
    {
      goto LABEL_21;
    }

    v9 = *buf;
    goto LABEL_20;
  }

  sub_10000C5F8(&v14);
  if (sub_10000C5E0(&v14))
  {
    v10 = 0;
    goto LABEL_22;
  }

  v11 = qword_100BCE940;
  if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000E5A58(a2, &__p);
    v12 = v24 >= 0 ? &__p : __p;
    *buf = 136315138;
    *&buf[4] = v12;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Wireless Splitter key was empty for device %s", buf, 0xCu);
    if (SHIBYTE(v24) < 0)
    {
      v9 = __p;
LABEL_20:
      operator delete(v9);
    }
  }

LABEL_21:
  v10 = 150;
LABEL_22:
  v14 = &off_100AE0A78;
  if (v15)
  {
    sub_10000C808(v15);
  }

  return v10;
}

void sub_1004841A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, atomic_uint *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a11)
  {
    sub_10000C808(a11);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100484208(uint64_t a1, uint64_t a2)
{
  v7 = *(a2 + 128);
  v8 = *(a2 + 132);
  v9 = 0x40000000200;
  sub_100483950(a1, a2, 2, &v9);
  sub_1000BE6F8(&v7, __p);
  if (v6 >= 0)
  {
    v2 = __p;
  }

  else
  {
    v2 = __p[0];
  }

  v3 = sub_1003CBC64(v2, 0x600u);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  return v3;
}

void sub_1004842C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1004842E4(uint64_t a1, uint64_t a2, int a3, unsigned __int8 *a4)
{
  v38 = *(a2 + 128);
  v39 = *(a2 + 132);
  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  *__str = 0u;
  v44 = 0u;
  if (a3 > 4)
  {
    return 3;
  }

  v36 = 0;
  v37 = 0;
  sub_1000BE6F8(&v38, __p);
  sub_100481C50(a1, __p, &v36);
  if (v35 < 0)
  {
    operator delete(__p[0]);
  }

  v9 = *a4;
  v10 = a4[1];
  v11 = a4[2];
  v12 = a4[4];
  if (a3 == 4)
  {
    snprintf(__str, 0x14uLL, "%02X-%02X-%02X-%02X-%02x", v9, v10, v11, a4[3], v12);
    BYTE4(v44) = 0;
    sub_1000BE6F8(&v38, buf);
    if (v42 >= 0)
    {
      v13 = buf;
    }

    else
    {
      v13 = *buf;
    }

    v14 = sub_1003CAA00(256, v13, __str, 0);
  }

  else
  {
    snprintf(__str, 0x3FuLL, "%02X-%02X-%02X-%02X-%02X-%02X-%02X-%02X-%02X-%02X-%02X-%02X-%02X-%02X-%02X-%02X", v9, v10, v11, a4[3], v12, a4[5], a4[6], a4[7], a4[8], a4[9], a4[10], a4[11], a4[12], a4[13], a4[14], a4[15]);
    HIBYTE(v46) = 0;
    if (a3 > 1)
    {
      if (a3 == 2)
      {
        sub_1000BE6F8(&v38, buf);
        if (v42 >= 0)
        {
          v20 = buf;
        }

        else
        {
          v20 = *buf;
        }

        v14 = sub_1003CAA00(16, v20, __str, 0);
      }

      else
      {
        sub_1000BE6F8(&v38, buf);
        if (v42 >= 0)
        {
          v24 = buf;
        }

        else
        {
          v24 = *buf;
        }

        v14 = sub_1003CAA00(32, v24, __str, 0);
      }
    }

    else if (a3)
    {
      sub_1000BE6F8(&v38, buf);
      if (v42 >= 0)
      {
        v23 = buf;
      }

      else
      {
        v23 = *buf;
      }

      v14 = sub_1003CAA00(128, v23, __str, 0);
    }

    else
    {
      sub_1000BE6F8(&v38, buf);
      if (v42 >= 0)
      {
        v17 = buf;
      }

      else
      {
        v17 = *buf;
      }

      v14 = sub_1003CAA00(64, v17, __str, 0);
    }
  }

  v4 = v14;
  if (SHIBYTE(v42) < 0)
  {
    operator delete(*buf);
    if (v4)
    {
      goto LABEL_12;
    }

LABEL_25:
    if (a3 <= 1)
    {
      if (a3)
      {
        v29 = v37;
        v30 = strlen(__str);
        sub_10000C704(buf, __str, v30 + 1);
        sub_100481BF4(v29, 128, buf);
      }

      else
      {
        v21 = v37;
        v22 = strlen(__str);
        sub_10000C704(buf, __str, v22 + 1);
        sub_100481BF4(v21, 64, buf);
      }
    }

    else if (a3 == 2)
    {
      v25 = v37;
      v26 = strlen(__str);
      sub_10000C704(buf, __str, v26 + 1);
      sub_100481BF4(v25, 16, buf);
    }

    else if (a3 == 3)
    {
      v18 = v37;
      v19 = strlen(__str);
      sub_10000C704(buf, __str, v19 + 1);
      sub_100481BF4(v18, 32, buf);
    }

    else
    {
      v27 = v37;
      v28 = strlen(__str);
      sub_10000C704(buf, __str, v28 + 1);
      sub_100481BF4(v27, 256, buf);
    }

    *buf = &off_100AE0A78;
    if (*&buf[8])
    {
      sub_10000C808(*&buf[8]);
    }

    goto LABEL_49;
  }

  if (!v14)
  {
    goto LABEL_25;
  }

LABEL_12:
  v15 = qword_100BCE940;
  if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_ERROR))
  {
    sub_1000E5A58(a2, v32);
    v16 = v33 >= 0 ? v32 : v32[0];
    *buf = 136446722;
    *&buf[4] = v16;
    *&buf[12] = 1024;
    *&buf[14] = v4;
    v41 = 1024;
    v42 = a3;
    _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Failed to write magicKey data for device %{public}s to keychain with result %d for keyType %d", buf, 0x18u);
    if (v33 < 0)
    {
      operator delete(v32[0]);
    }
  }

LABEL_49:
  v36 = off_100AF7948;
  if (v37)
  {
    sub_10000C808(v37);
  }

  return v4;
}

void sub_1004847B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, uint64_t a35, atomic_uint *a36, uint64_t a37, void *__p, atomic_uint *a39, int a40, __int16 a41, char a42, char a43)
{
  if (a39)
  {
    sub_10000C808(a39);
  }

  if (a36)
  {
    sub_10000C808(a36);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100484898(uint64_t a1, uint64_t a2)
{
  v7 = *(a2 + 128);
  v8 = *(a2 + 132);
  sub_100483950(a1, a2, 5, dword_1008A8138);
  sub_1000BE6F8(&v7, __p);
  if (v6 >= 0)
  {
    v2 = __p;
  }

  else
  {
    v2 = __p[0];
  }

  v3 = sub_1003CBC64(v2, 0x1F0u);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  return v3;
}