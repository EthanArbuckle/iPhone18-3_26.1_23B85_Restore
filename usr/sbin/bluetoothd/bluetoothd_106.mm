void sub_1007AFF64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29)
{
  STACK[0x2D0] = a27;
  *(&STACK[0x2D0] + *(a27 - 24)) = a28;
  STACK[0x2E0] = a29;
  if (SLOBYTE(STACK[0x33F]) < 0)
  {
    operator delete(STACK[0x328]);
  }

  std::locale::~locale(&STACK[0x2F0]);
  std::iostream::~basic_iostream();
  std::ios::~ios();
  _Unwind_Resume(a1);
}

void sub_1007B0238(id a1, id a2, id a3, BOOL *a4)
{
  v6 = qword_100BCE918;
  if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 141558787;
    v8 = 1752392040;
    v9 = 2113;
    v10 = a2;
    v11 = 2160;
    v12 = 1752392040;
    v13 = 2113;
    v14 = a3;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "statedump:       %{private, mask.hash}@ --> %{private, mask.hash}@", &v7, 0x2Au);
  }
}

void sub_1007B0310(uint64_t a1)
{
  v2 = qword_100BCE918;
  if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "statedump: BLE Scan Configuration Stat:", buf, 2u);
  }

  sub_1007B0FB8(a1);
  Current = CFAbsoluteTimeGetCurrent();
  v4 = 0;
  v5 = qword_100BCE918;
  v6 = 1;
  do
  {
    v7 = v6;
    v8 = a1 + 2392 + 176 * v4;
    if (Current >= *v8)
    {
      v9 = Current - *v8;
    }

    else
    {
      v9 = 0.0;
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v10 = "screen off";
      if (v7)
      {
        v10 = "screen on";
      }

      *buf = 136315138;
      v33 = *&v10;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "statedump: \t=================== LE Scan Configuration Stats when %s ===================", buf, 0xCu);
      v5 = qword_100BCE918;
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v33 = v9;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "statedump: \tBLE Scan Configuration Stats started %f sec ago", buf, 0xCu);
      v5 = qword_100BCE918;
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(v8 + 88);
      *buf = 67109120;
      LODWORD(v33) = v11;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "statedump: \tBLE Scan Configuration Count: %u", buf, 8u);
      v5 = qword_100BCE918;
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v12 = *(v8 + 92);
      *buf = 67109120;
      LODWORD(v33) = v12;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "statedump: \tBLE Scan Configuration Count hasParamUpdate : %u", buf, 8u);
      v5 = qword_100BCE918;
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v13 = *(v8 + 96);
      *buf = 67109120;
      LODWORD(v33) = v13;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "statedump: \tBLE Scan Configuration Count needFWScanRestart : %u", buf, 8u);
      v5 = qword_100BCE918;
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v14 = *(v8 + 104);
      *buf = 67109120;
      LODWORD(v33) = v14;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "statedump: \tBLE Scan Configuration Count needNoFWScanRestart : %u", buf, 8u);
      v5 = qword_100BCE918;
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v15 = *(v8 + 124);
      *buf = 67109120;
      LODWORD(v33) = v15;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "statedump: \tBLE Scan Configuration Count hasMatchingRuleUpdate : %u", buf, 8u);
      v5 = qword_100BCE918;
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v16 = *(v8 + 120);
      *buf = 67109120;
      LODWORD(v33) = v16;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "statedump: \tBLE Scan Configuration Count hasMatchingAddressUpdate : %u", buf, 8u);
      v5 = qword_100BCE918;
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v17 = *(v8 + 116);
      *buf = 67109120;
      LODWORD(v33) = v17;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "statedump: \tBLE Scan Configuration Count hasPCFUpdate : %u", buf, 8u);
      v5 = qword_100BCE918;
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v18 = *(v8 + 112);
      *buf = 67109120;
      LODWORD(v33) = v18;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "statedump: \tBLE Scan Configuration Count hasZoneUpdate : %u", buf, 8u);
      v5 = qword_100BCE918;
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v19 = *(v8 + 128);
      *buf = 67109120;
      LODWORD(v33) = v19;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "statedump: \tBLE Scan Configuration Count hasAdvMatchBufUpdate : %u", buf, 8u);
      v5 = qword_100BCE918;
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v20 = *(v8 + 132);
      *buf = 67109120;
      LODWORD(v33) = v20;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "statedump: \tBLE Scan Configuration Min: %u ms", buf, 8u);
      v5 = qword_100BCE918;
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v21 = *(v8 + 134);
      *buf = 67109120;
      LODWORD(v33) = v21;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "statedump: \tBLE Scan Configuration Max: %u ms", buf, 8u);
      v5 = qword_100BCE918;
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v22 = *(v8 + 136);
      *buf = 67109120;
      LODWORD(v33) = v22;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "statedump: \tBLE Scan Configuration Average: %u ms", buf, 8u);
      v5 = qword_100BCE918;
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v23 = *(v8 + 138);
      *buf = 67109120;
      LODWORD(v33) = v23;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "statedump: \tBLE Scan Configuration 5 Percentile: %u ms", buf, 8u);
      v5 = qword_100BCE918;
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v24 = *(v8 + 140);
      *buf = 67109120;
      LODWORD(v33) = v24;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "statedump: \tBLE Scan Configuration 25 Percentile: %u ms", buf, 8u);
      v5 = qword_100BCE918;
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v25 = *(v8 + 142);
      *buf = 67109120;
      LODWORD(v33) = v25;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "statedump: \tBLE Scan Configuration 50 Percentile: %u ms", buf, 8u);
      v5 = qword_100BCE918;
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v26 = *(v8 + 144);
      *buf = 67109120;
      LODWORD(v33) = v26;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "statedump: \tBLE Scan Configuration 75 Percentile: %u ms", buf, 8u);
      v5 = qword_100BCE918;
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v27 = *(v8 + 146);
      *buf = 67109120;
      LODWORD(v33) = v27;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "statedump: \tBLE Scan Configuration 95 Percentile: %u ms", buf, 8u);
      v5 = qword_100BCE918;
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v28 = *(v8 + 156);
      *buf = 67109120;
      LODWORD(v33) = v28;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "statedump: \tBLE Scan Configuration Average HeySiri UseCase: %u ms", buf, 8u);
      v5 = qword_100BCE918;
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v29 = *(v8 + 148);
      *buf = 67109120;
      LODWORD(v33) = v29;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "statedump: \tBLE Scan Configuration Count HeySiri UseCase: %u", buf, 8u);
      v5 = qword_100BCE918;
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v30 = *(v8 + 168);
      *buf = 67109120;
      LODWORD(v33) = v30;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "statedump: \tBLE Scan Configuration Average Sharing UseCases: %u ms", buf, 8u);
      v5 = qword_100BCE918;
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v31 = *(v8 + 160);
      *buf = 67109120;
      LODWORD(v33) = v31;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "statedump: \tBLE Scan Configuration Count Sharing UseCase: %u", buf, 8u);
      v5 = qword_100BCE918;
    }

    v6 = 0;
    v4 = 1;
  }

  while ((v7 & 1) != 0);
}

void sub_1007B0A7C(uint64_t a1)
{
  v2 = qword_100BCE918;
  v3 = off_100B0D748;
  v4 = -1632;
  do
  {
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *v3;
      v6 = a1 + v4;
      v7 = *(a1 + v4 + 1792);
      v8 = *(a1 + v4 + 1793);
      v9 = *(a1 + v4 + 1794);
      v10 = *(a1 + v4 + 1796);
      v11 = *(a1 + v4 + 1797);
      v12 = *(a1 + v4 + 1798);
      if (*(a1 + v4 + 1799))
      {
        v13 = "YES";
      }

      else
      {
        v13 = "NO";
      }

      if (*(v6 + 1800))
      {
        v14 = "YES";
      }

      else
      {
        v14 = "NO";
      }

      v15 = *(v6 + 1804);
      v16 = *(v6 + 1805);
      v17 = *(v6 + 1806);
      v18 = *(v6 + 1808);
      *buf = 138546434;
      v20 = v5;
      v21 = 1024;
      v22 = v7;
      v23 = 1024;
      v24 = v8;
      v25 = 1024;
      v26 = v9;
      v27 = 1024;
      v28 = v10;
      v29 = 1024;
      v30 = v11;
      v31 = 1024;
      v32 = v12;
      v33 = 2082;
      v34 = v13;
      v35 = 2082;
      v36 = v14;
      v37 = 1024;
      v38 = v15;
      v39 = 1024;
      v40 = v16;
      v41 = 1024;
      v42 = v17;
      v43 = 2048;
      v44 = v18;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "statedump: ADVBUFF(%{public}@): mask:0x%x advADType:0x%x advCompanyID:0x%x advType:0x%x minPayloadSize:%d buffEntries:%d created:%{public}s enabled:%{public}s expectedEntries:%d statusMask:0x%x overflows:%d enabledTS:%f", buf, 0x60u);
      v2 = qword_100BCE918;
    }

    ++v3;
    v4 += 544;
  }

  while (v4);
}

void sub_1007B0C38(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (v5)
  {
    if (a3)
    {
      v6 = [NSData dataWithBytes:a3 length:16];
      [*(a1 + 2112) setObject:v6 forKeyedSubscript:v5];
    }

    else if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_ERROR))
    {
      sub_100874598();
    }
  }

  else if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_ERROR))
  {
    sub_1008722CC();
  }
}

void sub_1007B0D18(uint64_t a1, uint64_t a2)
{
  v3 = a2 + 1;
  v4 = *(a1 + 2112);
  v5 = sub_100063D0C();
  [v4 removeObjectForKey:v5];

  if (qword_100B508F0 != -1)
  {
    sub_100874548();
  }

  LODWORD(v15) = *v3;
  WORD2(v15) = *(v3 + 4);
  v6 = sub_1000E6554(off_100B508E8, &v15, 1);
  if (v6)
  {
    v15 = 0;
    v16 = 0;
    v17 = 0;
    if (!sub_1000DFC04(v6, &v15))
    {
      goto LABEL_32;
    }

    v7 = v15;
    v8 = 0xAAAAAAAAAAAAAAABLL * ((v16 - v15) >> 3);
    if (v8 < 4)
    {
      goto LABEL_32;
    }

    v9 = v15 + 3;
    if (SHIBYTE(v15[3].__r_.__value_.__r.__words[2]) < 0)
    {
      if (v15[3].__r_.__value_.__l.__size_ <= 1)
      {
        goto LABEL_14;
      }

      v9 = v9->__r_.__value_.__r.__words[0];
    }

    else if (HIBYTE(v15[3].__r_.__value_.__r.__words[2]) <= 1u)
    {
      goto LABEL_14;
    }

    v10 = [NSString stringWithUTF8String:v9];
    if ([v10 length])
    {
      [*(a1 + 2112) removeObjectForKey:v10];
    }

    v7 = v15;
    v8 = 0xAAAAAAAAAAAAAAABLL * ((v16 - v15) >> 3);
LABEL_14:
    if (v8 < 9)
    {
      goto LABEL_32;
    }

    v11 = &v7[8];
    if (SHIBYTE(v7[8].__r_.__value_.__r.__words[2]) < 0)
    {
      if (v7[8].__r_.__value_.__l.__size_ <= 1)
      {
        goto LABEL_23;
      }

      v11 = v11->__words[0];
    }

    else if (HIBYTE(v7[8].__r_.__value_.__r.__words[2]) <= 1u)
    {
      goto LABEL_23;
    }

    v12 = [NSString stringWithUTF8String:v11];
    if ([v12 length])
    {
      [*(a1 + 2112) removeObjectForKey:v12];
    }

    v7 = v15;
    v8 = 0xAAAAAAAAAAAAAAABLL * ((v16 - v15) >> 3);
LABEL_23:
    if (v8 >= 0xA)
    {
      v13 = &v7[9];
      if ((SHIBYTE(v7[9].__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        if (HIBYTE(v7[9].__r_.__value_.__r.__words[2]) <= 1u)
        {
          goto LABEL_32;
        }

LABEL_29:
        v14 = [NSString stringWithUTF8String:v13];
        if ([v14 length])
        {
          [*(a1 + 2112) removeObjectForKey:v14];
        }

        goto LABEL_32;
      }

      if (v7[9].__r_.__value_.__l.__size_ > 1)
      {
        v13 = v13->__words[0];
        goto LABEL_29;
      }
    }

LABEL_32:
    v18 = &v15;
    sub_1000161FC(&v18);
  }
}

void sub_1007B0F70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  a12 = &a9;
  sub_1000161FC(&a12);
  _Unwind_Resume(a1);
}

void sub_1007B0FB8(uint64_t a1)
{
  v1 = 0;
  v27 = a1 + 2392;
  v2 = 1;
  do
  {
    v3 = v2;
    v4 = v27 + 176 * v1;
    v5 = *(v4 + 88);
    if (v5)
    {
      v29 = v2;
      v6 = 0;
      v7 = 0;
      v8 = 0;
      v9 = 0;
      v10 = 0;
      v11 = 0;
      v12 = 0;
      v13 = 0;
      v34 = v5 / 0x14;
      v33 = v5 >> 2;
      v32 = v5 >> 1;
      v31 = (3 * v5) >> 2;
      v30 = 19 * v5 / 0x14;
      v28 = v4;
      v14 = v4 + 8;
      v15 = qword_100BCE918;
      v16 = 10;
      do
      {
        v35 = v12;
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          v17 = *(v14 + 4 * v6);
          *buf = 67109376;
          v37 = v6;
          v38 = 1024;
          v39 = v17;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "statedump: \tBLE Scan Configuration Count Bucket %d Count: %u", buf, 0xEu);
          v15 = qword_100BCE918;
        }

        v18 = *(v14 + 4 * v6);
        v12 = v35 + ((v16 * v18) >> 1);
        v13 += v18;
        if (v11)
        {
          v19 = 0;
        }

        else
        {
          v19 = v13 >= v34;
        }

        if (v19)
        {
          v11 = v6;
        }

        if (v10)
        {
          v20 = 0;
        }

        else
        {
          v20 = v13 >= v33;
        }

        if (v20)
        {
          v10 = v6;
        }

        if (v9)
        {
          v21 = 0;
        }

        else
        {
          v21 = v13 >= v32;
        }

        if (v21)
        {
          v9 = v6;
        }

        if (v8)
        {
          v22 = 0;
        }

        else
        {
          v22 = v13 >= v31;
        }

        if (v22)
        {
          v8 = v6;
        }

        if (v7)
        {
          v23 = 0;
        }

        else
        {
          v23 = v13 >= v30;
        }

        if (v23)
        {
          v7 = v6;
        }

        ++v6;
        v16 += 20;
      }

      while (v6 != 20);
      *(v28 + 138) = 10 * v11 + 5;
      *(v28 + 140) = 10 * v10 + 5;
      *(v28 + 142) = 10 * v9 + 5;
      *(v28 + 144) = 10 * v8 + 5;
      *(v28 + 146) = 10 * v7 + 5;
      v24 = *(v28 + 88);
      *(v28 + 136) = v12 / v24;
      v25 = *(v28 + 148);
      if (v25)
      {
        *(v28 + 156) = *(v28 + 152) / v25;
      }

      v26 = *(v28 + 160);
      v3 = v29;
      if (v26)
      {
        *(v28 + 168) = *(v28 + 164) / v26;
      }

      *(v28 + 100) = 100 * *(v28 + 96) / v24;
      *(v28 + 108) = 100 * *(v28 + 104) / v24;
    }

    v2 = 0;
    v1 = 1;
  }

  while ((v3 & 1) != 0);
}

void sub_1007B1248(uint64_t a1)
{
  v2 = qword_100BCE918;
  if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Send BLE Scan Configuration Daily Stat for Metric", buf, 2u);
  }

  sub_1007B0FB8(a1);
  v3 = 0;
  v4 = 1;
  do
  {
    v5 = v4;
    v6 = objc_opt_new();
    v7 = v6;
    if (v5)
    {
      v8 = @"ScreenOff";
    }

    else
    {
      v8 = @"ScreenOn";
    }

    [v6 setObject:v8 forKeyedSubscript:@"ScreenState"];
    v9 = a1 + 2392 + 176 * v3;
    v10 = [NSNumber numberWithUnsignedInt:*(v9 + 88)];
    [v7 setObject:v10 forKeyedSubscript:@"ScanConfigCount"];

    v11 = [NSNumber numberWithUnsignedInt:*(v9 + 92)];
    [v7 setObject:v11 forKeyedSubscript:@"ScanConfigCountHasParamsUpdate"];

    v12 = [NSNumber numberWithUnsignedChar:*(v9 + 100)];
    [v7 setObject:v12 forKeyedSubscript:@"ScanConfigPercentageNeedFWScanRestart"];

    v13 = [NSNumber numberWithUnsignedChar:*(v9 + 108)];
    [v7 setObject:v13 forKeyedSubscript:@"ScanConfigPercentageNeedNoFWScanRestart"];

    v14 = [NSNumber numberWithUnsignedInt:*(v9 + 124)];
    [v7 setObject:v14 forKeyedSubscript:@"ScanConfigCountHasMatchingRuleRequested"];

    v15 = [NSNumber numberWithUnsignedInt:*(v9 + 120)];
    [v7 setObject:v15 forKeyedSubscript:@"ScanConfigCountHasMatchingAddressRequested"];

    v16 = [NSNumber numberWithUnsignedInt:*(v9 + 116)];
    [v7 setObject:v16 forKeyedSubscript:@"ScanConfigCountHasPCFRequested"];

    v17 = [NSNumber numberWithUnsignedInt:*(v9 + 112)];
    [v7 setObject:v17 forKeyedSubscript:@"ScanConfigCountHasZoneRequested"];

    v18 = [NSNumber numberWithUnsignedInt:*(v9 + 128)];
    [v7 setObject:v18 forKeyedSubscript:@"ScanConfigCountHasAdvMatchBufRequested"];

    v19 = [NSNumber numberWithUnsignedShort:*(v9 + 132)];
    [v7 setObject:v19 forKeyedSubscript:@"ScanConfigTimeMin"];

    v20 = [NSNumber numberWithUnsignedShort:*(v9 + 134)];
    [v7 setObject:v20 forKeyedSubscript:@"ScanConfigTimeMax"];

    v21 = [NSNumber numberWithUnsignedShort:*(v9 + 136)];
    [v7 setObject:v21 forKeyedSubscript:@"ScanConfigTimeAvg"];

    v22 = [NSNumber numberWithUnsignedShort:*(v9 + 138)];
    [v7 setObject:v22 forKeyedSubscript:@"ScanConfigTimePercentile5"];

    v23 = [NSNumber numberWithUnsignedShort:*(v9 + 140)];
    [v7 setObject:v23 forKeyedSubscript:@"ScanConfigTimePercentile25"];

    v24 = [NSNumber numberWithUnsignedShort:*(v9 + 142)];
    [v7 setObject:v24 forKeyedSubscript:@"ScanConfigTimePercentile50"];

    v25 = [NSNumber numberWithUnsignedShort:*(v9 + 144)];
    [v7 setObject:v25 forKeyedSubscript:@"ScanConfigTimePercentile75"];

    v26 = [NSNumber numberWithUnsignedShort:*(v9 + 146)];
    [v7 setObject:v26 forKeyedSubscript:@"ScanConfigTimePercentile95"];

    v27 = [NSNumber numberWithUnsignedShort:*(v9 + 156)];
    [v7 setObject:v27 forKeyedSubscript:@"ScanConfigTimeAvgHeySiriUseCase"];

    v28 = [NSNumber numberWithUnsignedInt:*(v9 + 148)];
    [v7 setObject:v28 forKeyedSubscript:@"ScanConfigCountHeySiriUseCase"];

    v29 = [NSNumber numberWithUnsignedShort:*(v9 + 168)];
    [v7 setObject:v29 forKeyedSubscript:@"ScanConfigTimeAvgSharingUseCase"];

    v30 = [NSNumber numberWithUnsignedInt:*(v9 + 160)];
    [v7 setObject:v30 forKeyedSubscript:@"ScanConfigCountSharingUseCase"];

    v31 = sub_10000F034();
    (*(*v31 + 328))(v31, v7);

    v4 = 0;
    v3 = 1;
  }

  while ((v5 & 1) != 0);
  sub_10079CA64(a1);
}

__n128 sub_1007B1794(uint64_t a1, uint64_t a2)
{
  v4 = a1 + 2780;
  v5 = qword_100BCE918;
  if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
  {
    *v24 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Get BLE Scan Stat for Metric", v24, 2u);
  }

  Current = CFAbsoluteTimeGetCurrent();
  v7 = *(a1 + 2760);
  v8 = ((Current - v7) * 1000.0);
  if (Current < v7)
  {
    v8 = 0;
  }

  *a2 = v8;
  *(a2 + 4) = *v4;
  *(a2 + 20) = *(v4 + 16);
  *(a2 + 36) = *(v4 + 32);
  *(a2 + 52) = *(a1 + 2768);
  *(a2 + 60) = *(a1 + 2776);
  v9 = vdupq_n_s64(0x408F400000000000uLL);
  v10 = vuzp1q_s32(vcvtq_u64_f64(vmulq_f64(*(v4 + 84), v9)), vcvtq_u64_f64(vmulq_f64(*(v4 + 100), v9)));
  *(a2 + 64) = vuzp1q_s32(vcvtq_u64_f64(vmulq_f64(*(v4 + 52), v9)), vcvtq_u64_f64(vmulq_f64(*(v4 + 68), v9)));
  *(a2 + 80) = v10;
  v11 = vuzp1q_s32(vcvtq_u64_f64(vmulq_f64(*(v4 + 148), v9)), vcvtq_u64_f64(vmulq_f64(*(v4 + 164), v9)));
  *(a2 + 96) = vuzp1q_s32(vcvtq_u64_f64(vmulq_f64(*(v4 + 116), v9)), vcvtq_u64_f64(vmulq_f64(*(v4 + 132), v9)));
  *(a2 + 112) = v11;
  v12 = vuzp1q_s32(vcvtq_u64_f64(vmulq_f64(*(v4 + 212), v9)), vcvtq_u64_f64(vmulq_f64(*(v4 + 228), v9)));
  *(a2 + 128) = vuzp1q_s32(vcvtq_u64_f64(vmulq_f64(*(v4 + 180), v9)), vcvtq_u64_f64(vmulq_f64(*(v4 + 196), v9)));
  *(a2 + 144) = v12;
  v14 = *(v4 + 244);
  v13 = (v4 + 244);
  v15 = vuzp1q_s32(vcvtq_u64_f64(vmulq_f64(v14, v9)), vcvtq_u64_f64(vmulq_f64(v13[1], v9)));
  v16 = v13[2];
  v17 = v13[3];
  v13 += 2;
  *(a2 + 160) = v15;
  *(a2 + 176) = vuzp1q_s32(vcvtq_u64_f64(vmulq_f64(v16, v9)), vcvtq_u64_f64(vmulq_f64(v17, v9)));
  v18 = v13[2];
  v19 = v13[3];
  v13 += 2;
  v20 = vuzp1q_s32(vcvtq_u64_f64(vmulq_f64(v18, v9)), vcvtq_u64_f64(vmulq_f64(v19, v9)));
  v21 = v13[2];
  v22 = v13[3];
  *(a2 + 192) = v20;
  *(a2 + 208) = vuzp1q_s32(vcvtq_u64_f64(vmulq_f64(v21, v9)), vcvtq_u64_f64(vmulq_f64(v22, v9)));
  *(a2 + 224) = vmovn_s64(vcvtq_u64_f64(vmulq_f64(*(a1 + 3152), v9)));
  sub_10079CB54(a1);
  return result;
}

void sub_1007B19B8(uint64_t a1)
{
  v2 = sub_100007EE8();
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1007B1F54;
  v3[3] = &unk_100ADF8F8;
  v3[4] = a1;
  sub_10000CA94(v2, v3);
}

void sub_1007B1B10(void **a1)
{
  v1 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v1)
    {
      do
      {
        v5 = *(v3 - 12);
        v3 -= 96;
      }

      while (v3 != v1);
      v4 = *a1;
    }

    a1[1] = v1;
    operator delete(v4);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

uint64_t sub_1007B1B74(uint64_t a1, void *a2, void *a3, char a4, char a5)
{
  *a1 = a4 & 1;
  *(a1 + 1) = (a4 & 2) != 0;
  *(a1 + 2) = 0;
  *(a1 + 3) = a5;
  sub_10000CB74((a1 + 8), a2);
  *(a1 + 40) = 0;
  *(a1 + 32) = a1 + 40;
  *(a1 + 48) = 0;
  sub_10000CB74((a1 + 56), a3);
  *(a1 + 145) = 0;
  *(a1 + 148) = 0;
  *(a1 + 166) = 0;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  *(a1 + 170) = 0;
  *(a1 + 174) = 0;
  *(a1 + 176) = 0;
  *(a1 + 184) = 0;
  *(a1 + 192) = 0;
  *(a1 + 208) = 0;
  *(a1 + 216) = 0;
  *(a1 + 224) = 0;
  *(a1 + 200) = 0;
  *(a1 + 248) = 0u;
  *(a1 + 440) = 0;
  *(a1 + 236) = 0;
  *(a1 + 228) = 0;
  *(a1 + 237) = 257;
  *(a1 + 239) = 0;
  *(a1 + 243) = 8;
  *(a1 + 320) = 256;
  *(a1 + 264) = 0u;
  *(a1 + 280) = 0u;
  *(a1 + 296) = 0u;
  *(a1 + 322) = 0;
  *(a1 + 326) = 1;
  *(a1 + 336) = 0;
  *(a1 + 327) = 0;
  *(a1 + 359) = 0;
  *(a1 + 344) = 0;
  *(a1 + 352) = 0;
  *(a1 + 367) = 1;
  *(a1 + 368) = 0;
  *(a1 + 448) = 0;
  *(a1 + 392) = 0u;
  *(a1 + 408) = 0u;
  *(a1 + 376) = 0u;
  *(a1 + 424) = 0;
  *(a1 + 432) = a1 + 440;
  *(a1 + 456) = 1;
  *(a1 + 472) = 0;
  *(a1 + 480) = 0;
  *(a1 + 488) = 0;
  *(a1 + 464) = 0;
  *(a1 + 560) = 0;
  *(a1 + 544) = 0u;
  *(a1 + 528) = 0u;
  *(a1 + 512) = 0u;
  *(a1 + 496) = 0u;
  v7 = +[NSMutableArray array];
  v8 = *(a1 + 112);
  *(a1 + 112) = v7;

  *(a1 + 4) = 0;
  v9 = +[NSSet set];
  v10 = *(a1 + 176);
  *(a1 + 176) = v9;

  sub_10000CEDC(a1 + 32, *(a1 + 40));
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 32) = a1 + 40;
  return a1;
}

void sub_1007B1D2C(_Unwind_Exception *a1)
{
  sub_10000CEDC(v2, *v3);
  v5 = *(v1 + 8);
  if (v5)
  {
    *(v1 + 16) = v5;
    operator delete(v5);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1007B1DF4(uint64_t a1)
{
  sub_10004B61C(a1 + 24, *(a1 + 32));
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void *sub_1007B1E34(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 + 8);
  *a1 = &off_100AE0A78;
  a1[1] = v5;
  if (v5)
  {
    sub_10000C69C(v5);
  }

  v6 = *(a3 + 8);
  a1[2] = &off_100AE0A78;
  a1[3] = v6;
  if (v6)
  {
    sub_10000C69C(v6);
  }

  return a1;
}

void sub_1007B1EBC(_Unwind_Exception *exception_object)
{
  *v1 = v2;
  v4 = v1[1];
  if (v4)
  {
    sub_10000C808(v4);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1007B1ED8(void *a1)
{
  a1[2] = &off_100AE0A78;
  v2 = a1[3];
  if (v2)
  {
    sub_10000C808(v2);
  }

  *a1 = &off_100AE0A78;
  v3 = a1[1];
  if (v3)
  {
    sub_10000C808(v3);
  }

  return a1;
}

void sub_1007B1FC8(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_1007B1FC8(a1, *a2);
    sub_1007B1FC8(a1, a2[1]);
    sub_1007B2028(a1, a2 + 4);

    operator delete(a2);
  }
}

void sub_1007B2028(uint64_t a1, void *a2)
{
  a2[2] = &off_100AE0A78;
  v3 = a2[3];
  if (v3)
  {
    sub_10000C808(v3);
  }

  *a2 = &off_100AE0A78;
  v4 = a2[1];
  if (v4)
  {

    sub_10000C808(v4);
  }
}

void sub_1007B20B4(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_1007B20B4(a1, *a2);
    sub_1007B20B4(a1, a2[1]);
    sub_1000C7584(a1, a2 + 4);

    operator delete(a2);
  }
}

uint64_t sub_1007B2558(void *a1, uint64_t *a2, unsigned __int8 *a3)
{
  v5 = 0;
  v6 = 0;
  v3 = *sub_100713678(a1, a2, &v6, &v5, a3);
  if (!v3)
  {
    operator new();
  }

  return v3;
}

uint64_t sub_1007B25FC(uint64_t a1, unsigned __int8 *a2)
{
  v4 = 0;
  v2 = *sub_10004E3C8(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

void sub_1007B273C(uint64_t *a1, void *a2)
{
  v5 = *a1;
  v4 = a1[1];
  v6 = a2[1] + *a1 - v4;
  if (v4 != *a1)
  {
    v7 = *a1;
    v8 = a2[1] + *a1 - v4;
    do
    {
      v9 = *v7;
      *(v8 + 12) = *(v7 + 12);
      *v8 = v9;
      v10 = *(v7 + 4);
      *(v7 + 4) = 0;
      *(v8 + 32) = v10;
      v7 = (v7 + 40);
      v8 += 40;
    }

    while (v7 != v4);
    do
    {

      v5 = (v5 + 40);
    }

    while (v5 != v4);
  }

  a2[1] = v6;
  v11 = *a1;
  *a1 = v6;
  a1[1] = v11;
  a2[1] = v11;
  v12 = a1[1];
  a1[1] = a2[2];
  a2[2] = v12;
  v13 = a1[2];
  a1[2] = a2[3];
  a2[3] = v13;
  *a2 = a2[1];
}

void sub_1007B2808(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x666666666666667)
  {
    operator new();
  }

  sub_1000C7698();
}

uint64_t sub_1007B2860(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 40;
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_1007B28B4(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_1007B292C(result, a4);
  }

  return result;
}

void sub_1007B292C(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x666666666666667)
  {
    sub_1007B2808(a1, a2);
  }

  sub_1000C7698();
}

void sub_1007B2978(uint64_t a1, void *__p)
{
  if (*(a1 + 8) == 1)
  {
    sub_1000C7584(*a1, __p + 4);
  }

  if (__p)
  {

    operator delete(__p);
  }
}

uint64_t sub_1007B29D4(uint64_t a1, const void **a2)
{
  v4 = 0;
  v2 = *sub_1000867EC(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

void *sub_1007B2B14(uint64_t a1, uint64_t a2)
{
  v2 = (a1 + 8);
  v3 = *(a1 + 8);
  if (!v3)
  {
    return v2;
  }

  v5 = (a1 + 8);
  do
  {
    if (sub_100725170((v3 + 4), a2))
    {
      ++v3;
    }

    else if (sub_100725170(a2, (v3 + 4)))
    {
      v5 = v3;
    }

    else
    {
      v6 = sub_100725170((v3 + 6), a2 + 16);
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

      v3 = (v3 + v7);
    }

    v3 = *v3;
  }

  while (v3);
  if (v5 == v2 || sub_100725170(a2, (v5 + 4)) || !sub_100725170((v5 + 4), a2) && sub_100725170(a2 + 16, (v5 + 6)))
  {
    return v2;
  }

  return v5;
}

uint64_t sub_1007B2BF0(uint64_t a1, uint64_t a2)
{
  v3 = 0;
  result = *sub_1007B2C94(a1, &v3, a2);
  if (!result)
  {
    sub_1007B2D5C();
  }

  return result;
}

void *sub_1007B2C94(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v7 = v4;
        if (!sub_100725170(a3, (v4 + 4)) && (sub_100725170((v7 + 4), a3) || !sub_100725170(a3 + 16, (v7 + 6))))
        {
          break;
        }

        v4 = *v7;
        v5 = v7;
        if (!*v7)
        {
          goto LABEL_13;
        }
      }

      if (!sub_100725170((v7 + 4), a3) && (sub_100725170(a3, (v7 + 4)) || !sub_100725170((v7 + 6), a3 + 16)))
      {
        break;
      }

      v5 = v7 + 1;
      v4 = v7[1];
    }

    while (v4);
  }

  else
  {
    v7 = (a1 + 8);
  }

LABEL_13:
  *a2 = v7;
  return v5;
}

void sub_1007B2DD8(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_1007B2E98(v3, v2);
  _Unwind_Resume(a1);
}

void *sub_1007B2DF4(void *a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = &off_100AE0A78;
  a1[1] = v4;
  if (v4)
  {
    sub_10000C69C(v4);
  }

  v5 = *(a2 + 24);
  a1[2] = &off_100AE0A78;
  a1[3] = v5;
  if (v5)
  {
    sub_10000C69C(v5);
  }

  return a1;
}

void sub_1007B2E7C(_Unwind_Exception *exception_object)
{
  *v1 = v2;
  v4 = v1[1];
  if (v4)
  {
    sub_10000C808(v4);
  }

  _Unwind_Resume(exception_object);
}

void sub_1007B2E98(uint64_t a1, void *__p)
{
  if (*(a1 + 8) == 1)
  {
    sub_1007B2028(*a1, __p + 4);
  }

  if (__p)
  {

    operator delete(__p);
  }
}

void sub_1007B2EF4(void ***a1)
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
        v4 -= 4;
        sub_1007B2028(v1, v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t sub_1007B2F7C(uint64_t a1, uint64_t a2)
{
  v2 = (*(a1 + 8) - *a1) >> 5;
  v3 = v2 + 1;
  if ((v2 + 1) >> 59)
  {
    sub_1000C7698();
  }

  v6 = *(a1 + 16) - *a1;
  if (v6 >> 4 > v3)
  {
    v3 = v6 >> 4;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFE0)
  {
    v7 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v17 = a1;
  if (v7)
  {
    sub_1007B308C(a1, v7);
  }

  v14 = 0;
  v15 = 32 * v2;
  sub_1007B2DF4((32 * v2), a2);
  v16 = (32 * v2 + 32);
  v8 = *(a1 + 8);
  v9 = (32 * v2 + *a1 - v8);
  sub_1007B30D4(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = *(a1 + 16);
  v13 = v16;
  *(a1 + 8) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  sub_1007B31FC(&v14);
  return v13;
}

void sub_1007B3078(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1007B31FC(va);
  _Unwind_Resume(a1);
}

void sub_1007B308C(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  sub_1000C7698();
}

void sub_1007B30D4(uint64_t a1, void *a2, void *a3, void *a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v8 = a2;
    do
    {
      sub_1007B3158(a4, v8);
      v8 += 32;
      a4 += 4;
    }

    while (v8 != a3);
    while (v6 != a3)
    {
      sub_1007B2028(a1, v6);
      v6 += 4;
    }
  }
}

void *sub_1007B3158(void *a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = &off_100AE0A78;
  a1[1] = v4;
  if (v4)
  {
    sub_10000C69C(v4);
  }

  v5 = *(a2 + 24);
  a1[2] = &off_100AE0A78;
  a1[3] = v5;
  if (v5)
  {
    sub_10000C69C(v5);
  }

  return a1;
}

void sub_1007B31E0(_Unwind_Exception *exception_object)
{
  *v1 = v2;
  v4 = v1[1];
  if (v4)
  {
    sub_10000C808(v4);
  }

  _Unwind_Resume(exception_object);
}

void **sub_1007B31FC(void **a1)
{
  sub_1007B3230(a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_1007B3230(void *a1)
{
  v2 = a1[1];
  for (i = a1[2]; i != v2; i = a1[2])
  {
    v4 = a1[4];
    a1[2] = i - 32;
    sub_1007B2028(v4, (i - 32));
  }
}

uint64_t sub_1007B3278(uint64_t **a1, uint64_t a2)
{
  v3 = sub_1007B2B14(a1, a2);
  if (a1 + 1 == v3)
  {
    return 0;
  }

  sub_1007B32C0(a1, v3);
  return 1;
}

uint64_t *sub_1007B32C0(uint64_t **a1, uint64_t *a2)
{
  v4 = sub_10002717C(a1, a2);
  sub_1007B2028(a1, a2 + 4);
  operator delete(a2);
  return v4;
}

void *sub_1007B330C(void *a1)
{
  if (a1 + 4 == sub_1007B3380(a1 + 1, 0, 0xC0uLL) && v2 == 0)
  {
    return *a1;
  }

  v4 = sub_1007B3360("bitset to_ullong overflow error");
  return sub_1007B3360(v4);
}

void *sub_1007B3380(void *result, unsigned int a2, unint64_t a3)
{
  if (a2)
  {
    v3 = 64 - a2;
    if (v3 >= a3)
    {
      v4 = a3;
    }

    else
    {
      v4 = 64 - a2;
    }

    if (((0xFFFFFFFFFFFFFFFFLL >> (64 - a2 - v4)) & (-1 << a2) & *result) != 0)
    {
      return result;
    }

    if (v3 >= a3)
    {
      result += (a2 + a3) >> 6;
      return result;
    }

    a3 -= v4;
    ++result;
  }

  if (a3 >= 0x40)
  {
    do
    {
      if (*result)
      {
        break;
      }

      ++result;
      a3 -= 64;
    }

    while (a3 > 0x3F);
  }

  return result;
}

void *sub_1007B3444(void *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  sub_100053674(a1, *a2, (a2 + 8));
  return a1;
}

void sub_1007B35E8()
{
  v0 = objc_autoreleasePoolPush();
  sub_100065F40(&unk_100BC7CA0, &xmmword_1008C5620, 16);

  objc_autoreleasePoolPop(v0);
}

uint64_t sub_1007B3660(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(*(a1 + 8) + 80) count] && objc_msgSend(*(*(a1 + 8) + 80), "containsObject:", v3))
  {
    v4 = qword_100BCE918;
    if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138543362;
      v8 = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Peer %{public}@ matched the peripheral filter", &v7, 0xCu);
    }

    v5 = 1;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t sub_1007B3760(uint64_t a1, const unsigned __int8 *a2, uint64_t a3)
{
  if (!*(*(a1 + 8) + 161))
  {
    return 0;
  }

  uuid_copy(dst, a2);
  memset(&dst[16], 0, 48);
  *__p = 0u;
  v28 = 0u;
  memset(v29, 0, sizeof(v29));
  v31 = 0;
  v32 = 0;
  v5 = sub_1007B5578(a1 + 184, dst);
  sub_1007B531C(&dst[16]);
  sub_1007B531C(__p);
  *dst = 0;
  sub_100016250(dst);
  v6 = *&dst[4];
  v7 = *&dst[4] + 1000 * *dst;
  v8 = v7 >= 0x3E8;
  v9 = v7 - 1000;
  if (v8)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  v11 = *(*(a3 + 8) + 216);
  if (v11 != 127)
  {
    *dst = *dst;
    *&dst[8] = v6;
    dst[16] = v11;
    sub_1007B420C((v5 + 48), dst);
    *(v5 + 96) += *(*(a3 + 8) + 216);
  }

  v12 = *(v5 + 88);
  if (!v12)
  {
    goto LABEL_17;
  }

  while (1)
  {
    v13 = *(*(v5 + 56) + 8 * ((v12 + *(v5 + 80) - 1) / 0xAAuLL)) + 24 * ((v12 + *(v5 + 80) - 1) % 0xAAuLL);
    *dst = 0;
    *dst = *v13;
    *&dst[4] = *(v13 + 8);
    LODWORD(__p[0]) = v10 / 0x3E8;
    HIDWORD(__p[0]) = v10 % 0x3E8;
    if (sub_100306C80(dst, __p) > 0)
    {
      break;
    }

    v14 = *(v5 + 88);
    *(v5 + 96) -= *(v13 + 16);
    *(v5 + 88) = v14 - 1;
    sub_1007B599C((v5 + 48), 1);
    v12 = *(v5 + 88);
    if (!v12)
    {
      goto LABEL_17;
    }
  }

  v15 = *(v5 + 88);
  if (v15 < 0xA)
  {
LABEL_17:
    result = 0;
    *(v5 + 100) = 0;
    return result;
  }

  v16 = *(v5 + 100);
  v17 = *(a3 + 8);
  v18 = *(v5 + 96) / v15;
  if (*(v17 + 42) == 1)
  {
    LOBYTE(v18) = v18 - *(v17 + 43);
  }

  if (*(v5 + 100))
  {
    if (byte_1008C5708[(v16 - 1)] >= v18)
    {
      if (v18 + 3 >= byte_1008C5708[v16])
      {
        goto LABEL_33;
      }

      v19 = 1;
    }

    else
    {
      v19 = -1;
    }

    v21 = v16 + v19;
    *(v5 + 100) = v16 + v19;
  }

  else
  {
    if (v18 == 127)
    {
      v21 = 0;
    }

    else
    {
      v21 = 0;
      do
      {
        *(v5 + 100) = ++v21;
      }

      while (byte_1008C5708[v21] > v18);
    }

    if (!v21)
    {
      goto LABEL_33;
    }
  }

  v22 = qword_100BCE918;
  LOBYTE(v16) = v21;
  if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
  {
    memset(dst, 0, 37);
    uuid_unparse_upper(a2, dst);
    sub_100007E30(__p, dst);
    if ((SBYTE7(v28) & 0x80u) == 0)
    {
      v23 = __p;
    }

    else
    {
      v23 = __p[0];
    }

    v24 = *(v5 + 100);
    *dst = 136446722;
    *&dst[4] = v23;
    *&dst[12] = 1024;
    *&dst[14] = v24;
    *&dst[18] = 1024;
    *&dst[20] = v18;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Device %{public}s is now at proximity level %u with an average RSSI of %d dB", dst, 0x18u);
    if (SBYTE7(v28) < 0)
    {
      operator delete(__p[0]);
    }

    LOBYTE(v16) = *(v5 + 100);
  }

LABEL_33:
  if ((v16 - 1) >= 3u)
  {
    v25 = qword_100BCE918;
    if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_FAULT))
    {
      *dst = 136446210;
      *&dst[4] = "(info.proximityLevel > 0) && (info.proximityLevel < kRSSIThresholdsSize)";
      _os_log_fault_impl(&_mh_execute_header, v25, OS_LOG_TYPE_FAULT, "Assertion failed: %{public}s", dst, 0xCu);
      LOBYTE(v16) = *(v5 + 100);
    }
  }

  if (*(*(a1 + 8) + 161) < v16)
  {
    return 0;
  }

  *(*(a3 + 8) + 218) = v16;
  return 1;
}

void sub_1007B3B94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1007B531C((v3 + 16));
  sub_1007B531C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1007B3BC0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v4 = *(v3 + 192);
  v5 = objc_retainBlock(*(v3 + 208));
  v6 = v5;
  if (v5)
  {
    v7 = (*(v5 + 2))(v5, v4, a2);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t sub_1007B3C3C(uint64_t a1, int a2, int a3, int a4)
{
  if (a4 == 1)
  {
    return a2 > a3;
  }

  if (!a4)
  {
    return a2 < a3;
  }

  v8 = qword_100BCE918;
  if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
  {
    v9[0] = 67109632;
    v9[1] = a2;
    v10 = 1024;
    v11 = a3;
    v12 = 1024;
    v13 = a4;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Warning: matchRssiThreshold rssi:%d threshold:%d thresholdOrder:%d - unsupported threshold order value, no RSSI filtering", v9, 0x14u);
  }

  return 1;
}

BOOL sub_1007B3D2C(uint64_t a1, unsigned __int8 *a2, size_t a3, size_t a4, unsigned __int8 *a5, unsigned __int8 *a6)
{
  v11 = qword_100BCE918;
  if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_INFO))
  {
    sub_10000C704(&v33, a2, a3);
    sub_10000C250(&v33, v35);
    if (v36 >= 0)
    {
      v12 = v35;
    }

    else
    {
      v12 = v35[0];
    }

    sub_10000C704(&v29, a6, a4);
    v13 = v31;
    sub_10000C250(&v29, v31);
    if (v32 < 0)
    {
      v13 = v31[0];
    }

    sub_10000C704(&v25, a5, a4);
    sub_10000C250(&v25, __p);
    if (v28 >= 0)
    {
      v14 = __p;
    }

    else
    {
      v14 = __p[0];
    }

    *buf = 136315650;
    v38 = v12;
    v39 = 2080;
    *v40 = v13;
    *&v40[8] = 2080;
    v41 = v14;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "matchMaskAndBlob data:%s blob:%s mask:%s", buf, 0x20u);
    if (v28 < 0)
    {
      operator delete(__p[0]);
    }

    v25 = &off_100AE0A78;
    if (v26)
    {
      sub_10000C808(v26);
    }

    if (v32 < 0)
    {
      operator delete(v31[0]);
    }

    v29 = &off_100AE0A78;
    if (v30)
    {
      sub_10000C808(v30);
    }

    if (v36 < 0)
    {
      operator delete(v35[0]);
    }

    v33 = &off_100AE0A78;
    if (v34)
    {
      sub_10000C808(v34);
    }
  }

  if (a3 < a4)
  {
    return 0;
  }

  if (!a4)
  {
    return 1;
  }

  v16 = 0;
  v17 = qword_100BCE918;
  v18 = a4 - 1;
  do
  {
    v19 = *(v16 + a2);
    v20 = *(v16 + a5);
    v21 = v20 & v19;
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v22 = *(v16 + a6);
      *buf = 134219008;
      v38 = v16;
      v39 = 1024;
      *v40 = v19;
      *&v40[4] = 1024;
      *&v40[6] = v20;
      LOWORD(v41) = 1024;
      *(&v41 + 2) = v22;
      HIWORD(v41) = 1024;
      v42 = v20 & v19;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "matchMaskAndBlob byteIndex:%zu data:0x%02X mask:0x%02X blob:0x%02X result:0x%02X", buf, 0x24u);
      v17 = qword_100BCE918;
    }

    v23 = *(v16 + a6);
    result = v21 == v23;
    v24 = v21 != v23 || v18 == v16;
    v16 = (v16 + 1);
  }

  while (!v24);
  return result;
}

void sub_1007B4038(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, atomic_uint *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, atomic_uint *a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, atomic_uint *a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a13)
  {
    sub_10000C808(a13);
  }

  if (a24 < 0)
  {
    operator delete(__p);
  }

  if (a18)
  {
    sub_10000C808(a18);
  }

  if (a32 < 0)
  {
    operator delete(a27);
  }

  if (a26)
  {
    sub_10000C808(a26);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1007B410C@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v2 = *(result + 120);
  for (i = *(result + 128); v2 != i; v2 += 112)
  {
    if (*(v2 + 104) == 2)
    {
      result = sub_100055FD8(a2, v2);
    }
  }

  return result;
}

void sub_1007B4174(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100018458(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1007B418C@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v2 = *(result + 120);
  for (i = *(result + 128); v2 != i; v2 += 112)
  {
    if (*(v2 + 104) == 3)
    {
      result = sub_100055FD8(a2, v2);
    }
  }

  return result;
}

void sub_1007B41F4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100018458(va);
  _Unwind_Resume(a1);
}

__n128 sub_1007B420C(void *a1, __n128 *a2)
{
  v4 = a1[4];
  if (!v4)
  {
    sub_1007B574C(a1);
    v4 = a1[4];
  }

  v5 = a1[1];
  v6 = (v5 + 8 * (v4 / 0xAA));
  v7 = *v6 + 24 * (v4 % 0xAA);
  if (a1[2] == v5)
  {
    v7 = 0;
  }

  if (v7 == *v6)
  {
    v7 = *(v6 - 1) + 4080;
  }

  result = *a2;
  *(v7 - 24) = *a2;
  *(v7 - 8) = a2[1].n128_u8[0];
  v9 = a1[5] + 1;
  a1[4] = v4 - 1;
  a1[5] = v9;
  return result;
}

void sub_1007B42A8(uint64_t a1)
{
  if ([*(*(a1 + 8) + 112) count])
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v2 = *(*(a1 + 8) + 112);
    v3 = [v2 countByEnumeratingWithState:&v17 objects:v23 count:16];
    if (v3)
    {
      v4 = *v18;
      do
      {
        for (i = 0; i != v3; i = i + 1)
        {
          if (*v18 != v4)
          {
            objc_enumerationMutation(v2);
          }

          v6 = *(*(&v17 + 1) + 8 * i);
          v7 = v6;
          v8 = [v6 bytes];
          v9 = [v6 length];
          if (v9)
          {
            v10 = v8 == 0;
          }

          else
          {
            v10 = 1;
          }

          if (v10)
          {
            v11 = qword_100BCE918;
            if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_ERROR))
            {
              sub_100877844(&v15, v16, v11);
            }
          }

          else
          {
            if (v9 >= 0x15)
            {
              v12 = 21;
            }

            else
            {
              v12 = v9;
            }

            v13 = qword_100BCE918;
            if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v22 = v6;
              _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Adding zone %@", buf, 0xCu);
            }

            v14 = sub_10000C7D0();
            if ((*(*v14 + 600))(v14, v8, v12, 240))
            {
              goto LABEL_22;
            }
          }
        }

        v3 = [v2 countByEnumeratingWithState:&v17 objects:v23 count:16];
      }

      while (v3);
    }

LABEL_22:
  }
}

uint64_t sub_1007B44D8(const unsigned __int8 **a1, unsigned int a2)
{
  v37 = 0;
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  *v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  memset(v24, 0, sizeof(v24));
  v22 = 0u;
  sub_100007AD0(&v22);
  v3 = qword_100BCE918;
  if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
  {
    v4 = a1[2];
    *buf = 134217984;
    *&buf[4] = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "statedump: _printAdvMap %lu items in map", buf, 0xCu);
  }

  v7 = *a1;
  v5 = a1 + 1;
  v6 = v7;
  if (v7 != v5)
  {
    do
    {
      v8 = qword_100BCE918;
      if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
      {
        memset(buf, 0, sizeof(buf));
        uuid_unparse_upper(v6 + 32, buf);
        sub_100007E30(__p, buf);
        v9 = v21;
        v10 = __p[0];
        sub_10004BA6C(*(v6 + 7));
        v11 = __p;
        if (v9 < 0)
        {
          v11 = v10;
        }

        v12 = buf;
        if (buf[23] < 0)
        {
          v12 = *buf;
        }

        v13 = (*(*(v6 + 7) + 8 * (a2 >> 6) + 168) & (1 << a2)) != 0;
        *v38 = 136315906;
        v39 = v11;
        v40 = 2080;
        v41 = v12;
        v42 = 1024;
        v43 = a2;
        v44 = 1024;
        v45 = v13;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "statedump:    %s:%s hasType(%d):%d", v38, 0x22u);
        if ((buf[23] & 0x80000000) != 0)
        {
          operator delete(*buf);
        }

        if (v21 < 0)
        {
          operator delete(__p[0]);
        }
      }

      v14 = *(v6 + 1);
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
          v15 = *(v6 + 2);
          v16 = *v15 == v6;
          v6 = v15;
        }

        while (!v16);
      }

      v6 = v15;
    }

    while (v15 != v5);
  }

  *&v23 = v17;
  if (SHIBYTE(v26) < 0)
  {
    operator delete(v25[1]);
  }

  std::locale::~locale(v24);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_1007B48AC(id a1)
{
  v1 = sub_10000E92C();
  sub_100007E30(v4, "LE");
  sub_100007E30(__p, "LeScanAgentDebugClearAdvDataCache");
  (*(*v1 + 72))(v1, v4, __p, &byte_100BC7D50);
  if (v3 < 0)
  {
    operator delete(__p[0]);
  }

  if (v5 < 0)
  {
    operator delete(v4[0]);
  }
}

void sub_1007B4950(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
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

void sub_1007B4984(uint64_t a1)
{
  v2 = qword_100BCE918;
  if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
  {
    v3 = "NO";
    if (*(a1 + 80))
    {
      v4 = "YES";
    }

    else
    {
      v4 = "NO";
    }

    v5 = *(a1 + 81);
    if (*(a1 + 83))
    {
      v3 = "YES";
    }

    *buf = 136446722;
    *&buf[4] = v4;
    *&buf[12] = 1024;
    *&buf[14] = v5;
    *&buf[18] = 2082;
    *&buf[20] = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "statedump: \t\tfSupportsBackgrounding:%{public}s fSessionState:%d, fhasEntitlementBTCentralBackground:%{public}s", buf, 0x1Cu);
    v2 = qword_100BCE918;
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 96);
    if (*(a1 + 88))
    {
      v7 = "YES";
    }

    else
    {
      v7 = "NO";
    }

    *buf = 136446466;
    *&buf[4] = v7;
    *&buf[12] = 1024;
    *&buf[14] = v6;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "statedump: \t\thasDecayTimer:%{public}s fCurrentScanLevel:%d", buf, 0x12u);
    v2 = qword_100BCE918;
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 120);
    v9 = *(a1 + 144);
    v10 = *(a1 + 176);
    *buf = 134218496;
    *&buf[4] = v8;
    *&buf[12] = 2048;
    *&buf[14] = v9;
    *&buf[22] = 1024;
    *&buf[24] = v10;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "statedump: \t\tfAdvDataMap.size:%lu fAdvLRUList.size:%lu fMaxNumOfReportsInMap:%d", buf, 0x1Cu);
    v2 = qword_100BCE918;
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v11 = *(a1 + 208);
    *buf = 67109120;
    *&buf[4] = v11;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "statedump: \t\tfScanAgentType:%d", buf, 8u);
  }

  if (*(a1 + 178) == 1)
  {
    v37 = 0;
    v38 = 0;
    v39 = 0;
    sub_1000AE7E4(&v37, a1 + 104);
    v34 = 0;
    v35 = 0;
    v36 = 0;
    sub_1007B5A14(&v34, a1 + 128);
    v31 = 0;
    v32 = 0;
    v33 = 0;
    sub_1007B5AA8(&v31, a1 + 152);
    v12 = qword_100BCE918;
    if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      *&buf[4] = v36;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "statedump: \t\t--- fAdvLRUList (size:%lu) ---------", buf, 0xCu);
    }

    for (i = v35; i != &v34; i = *(i + 8))
    {
      v14 = qword_100BCE918;
      if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
      {
        memset(buf, 0, 37);
        uuid_unparse_upper((i + 16), buf);
        sub_100007E30(__p, buf);
        v15 = v30 >= 0 ? __p : __p[0];
        *v40 = 136446210;
        v41 = v15;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "statedump: \t\t %{public}s", v40, 0xCu);
        if (v30 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }

    v16 = qword_100BCE918;
    if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      *&buf[4] = v33;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "statedump: \t\t--- fAdvLRUListMap (size:%lu) ---------", buf, 0xCu);
    }

    v17 = v31;
    if (v31 != &v32)
    {
      do
      {
        v18 = qword_100BCE918;
        if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
        {
          memset(buf, 0, 37);
          uuid_unparse_upper(v17 + 32, buf);
          sub_100007E30(__p, buf);
          v19 = v30 >= 0 ? __p : __p[0];
          *v40 = 136446210;
          v41 = v19;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "statedump: \t\t %{public}s", v40, 0xCu);
          if (v30 < 0)
          {
            operator delete(__p[0]);
          }
        }

        v20 = *(v17 + 1);
        if (v20)
        {
          do
          {
            v21 = v20;
            v20 = *v20;
          }

          while (v20);
        }

        else
        {
          do
          {
            v21 = *(v17 + 2);
            v22 = *v21 == v17;
            v17 = v21;
          }

          while (!v22);
        }

        v17 = v21;
      }

      while (v21 != &v32);
    }

    v23 = qword_100BCE918;
    if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      *&buf[4] = v39;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "statedump: \t\t--- fAdvDataMap (size:%lu) ---------", buf, 0xCu);
    }

    v24 = v37;
    if (v37 != &v38)
    {
      do
      {
        v25 = qword_100BCE918;
        if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
        {
          memset(buf, 0, 37);
          uuid_unparse_upper(v24 + 32, buf);
          sub_100007E30(__p, buf);
          v26 = v30 >= 0 ? __p : __p[0];
          *v40 = 136446210;
          v41 = v26;
          _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "statedump: \t\t %{public}s", v40, 0xCu);
          if (v30 < 0)
          {
            operator delete(__p[0]);
          }
        }

        v27 = *(v24 + 1);
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
            v28 = *(v24 + 2);
            v22 = *v28 == v24;
            v24 = v28;
          }

          while (!v22);
        }

        v24 = v28;
      }

      while (v28 != &v38);
    }

    sub_10000CEDC(&v31, v32);
    sub_100028EB4(&v34);
    sub_10002708C(&v37, v38);
  }
}

void sub_1007B4F9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, void *a21)
{
  sub_100028EB4(&a17);
  sub_10002708C(&a20, a21);
  _Unwind_Resume(a1);
}

id sub_1007B4FE8(uint64_t a1)
{
  v2 = +[NSMutableArray array];
  if ([*(*(a1 + 8) + 112) count])
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v3 = *(*(a1 + 8) + 112);
    v4 = [v3 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v4)
    {
      v5 = *v19;
      do
      {
        for (i = 0; i != v4; i = i + 1)
        {
          if (*v19 != v5)
          {
            objc_enumerationMutation(v3);
          }

          v7 = *(*(&v18 + 1) + 8 * i);
          v8 = v7;
          v9 = [v7 bytes];
          if ([v7 length])
          {
            v10 = v9 == 0;
          }

          else
          {
            v10 = 1;
          }

          if (v10)
          {
            v11 = qword_100BCE918;
            if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_ERROR))
            {
              sub_100877844(&v16, v17, v11);
            }
          }

          else if ([v7 length] < 0x16)
          {
            [v2 addObject:v7];
          }

          else
          {
            v12 = v7;
            v13 = +[NSData dataWithBytes:length:](NSData, "dataWithBytes:length:", [v7 bytes], 21);
            [v2 addObject:v13];
          }
        }

        v4 = [v3 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v4);
    }

    v14 = v2;
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

void *sub_1007B5230(uint64_t a1, unsigned __int8 *uu2)
{
  v10[0] = v10;
  v10[1] = v10;
  v10[2] = 0;
  v2 = *(a1 + 8);
  if (v2 != a1)
  {
    do
    {
      v5 = uuid_compare((v2 + 16), uu2);
      v6 = *(v2 + 8);
      if (!v5)
      {
        if (v6 == a1)
        {
          v8 = 1;
        }

        else
        {
          do
          {
            v7 = uuid_compare((v6 + 16), uu2);
            v8 = v7 == 0;
            if (v7)
            {
              break;
            }

            v6 = *(v6 + 8);
          }

          while (v6 != a1);
        }

        sub_100576EA8(v10, v10, a1, v2, v6);
        if (!v8)
        {
          v6 = *(v6 + 8);
        }
      }

      v2 = v6;
    }

    while (v6 != a1);
  }

  return sub_100028EB4(v10);
}

void sub_1007B5300(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100028EB4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1007B531C(void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  a1[5] = 0;
  v4 = v3 - v2;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v4 = v3 - v2;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v5 = 85;
  }

  else
  {
    if (v4 != 2)
    {
      goto LABEL_9;
    }

    v5 = 170;
  }

  a1[4] = v5;
LABEL_9:
  while (v2 != v3)
  {
    v6 = *v2++;
    operator delete(v6);
  }

  return sub_10035F858(a1);
}

uint64_t sub_1007B53C8(uint64_t **a1, unsigned __int8 *a2)
{
  v3 = sub_10004E34C(a1, a2);
  if (a1 + 1 == v3)
  {
    return 0;
  }

  v4 = v3;
  sub_10002717C(a1, v3);
  operator delete(v4);
  return 1;
}

uint64_t sub_1007B541C(uint64_t a1, const void **a2)
{
  v3 = 0;
  result = *sub_100044BC4(a1, &v3, a2);
  if (!result)
  {
    sub_1007B54C0();
  }

  return result;
}

void sub_1007B555C(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_1001132FC(v3, v2);
  _Unwind_Resume(a1);
}

uint64_t sub_1007B5578(uint64_t a1, unsigned __int8 *uu1)
{
  v7 = 0;
  v2 = *sub_10004A7D0(a1, &v7, uu1);
  if (!v2)
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
    sub_1007B5614();
  }

  return v2;
}

uint64_t sub_1007B568C(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_1007B531C(v2 + 6);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t sub_1007B56D8(uint64_t a1, uint64_t a2)
{
  uuid_copy(a1, a2);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 40) = *(a2 + 40);
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *(a1 + 48) = v4;
  *(a1 + 56) = *(a2 + 56);
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  v5 = *(a2 + 64);
  *(a1 + 68) = *(a2 + 68);
  *(a1 + 64) = v5;
  return a1;
}

const void **sub_1007B574C(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 16);
  v3 = v2 - v1;
  if (v2 == v1)
  {
    v4 = 0;
  }

  else
  {
    v4 = 170 * ((v2 - v1) >> 3) - 1;
  }

  v5 = *(a1 + 32);
  if ((v4 - (*(a1 + 40) + v5)) < 0xAA)
  {
    v7 = *(a1 + 24);
    v8 = *a1;
    v9 = &v7[-*a1];
    if (v3 < v9)
    {
      if (v1 != v8)
      {
        operator new();
      }

      operator new();
    }

    if (v7 == v8)
    {
      v10 = 1;
    }

    else
    {
      v10 = v9 >> 2;
    }

    v11[4] = a1;
    sub_100008108(a1, v10);
  }

  *(a1 + 32) = v5 + 170;
  v11[0] = *(v2 - 1);
  *(a1 + 16) = v2 - 8;
  return sub_1004F3608(a1, v11);
}

void sub_1007B5950(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  operator delete(v12);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1007B599C(void *a1, int a2)
{
  v3 = a1[1];
  v2 = a1[2];
  if (v2 == v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = 170 * ((v2 - v3) >> 3) - 1;
  }

  v5 = v4 - (a1[5] + a1[4]);
  if (v5 < 0xAA)
  {
    a2 = 1;
  }

  if (v5 < 0x154)
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

void *sub_1007B5A14(void *result, uint64_t a2)
{
  *result = result;
  result[1] = result;
  result[2] = 0;
  if (*(a2 + 8) != a2)
  {
    sub_10004B168();
  }

  return result;
}

void *sub_1007B5AA8(void *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  sub_1007B5B00(a1, *a2, (a2 + 8));
  return a1;
}

void *sub_1007B5B00(void *result, unsigned __int8 *a2, unsigned __int8 *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = sub_1007B5B88(v5, v5 + 1, v4 + 32);
      v6 = *(v4 + 1);
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
          v7 = *(v4 + 2);
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

uint64_t sub_1007B5B88(void *a1, uint64_t *a2, unsigned __int8 *uu2)
{
  v4 = 0;
  v5 = 0;
  result = *sub_1000AE8C4(a1, a2, &v5, &v4, uu2);
  if (!result)
  {
    sub_1007B5C18();
  }

  return result;
}

void sub_1007B5C88(_Unwind_Exception *a1)
{
  *v1 = 0;
  operator delete(v2);
  _Unwind_Resume(a1);
}

_OWORD *sub_1007B5D08(_OWORD *a1, uint64_t a2, int a3)
{
  if (a3 == 34)
  {
    v4 = 0;
    while (1)
    {
      v5 = *(a2 + v4);
      v6 = a1;
      if (v5 == 114)
      {
        goto LABEL_6;
      }

      if (v5 == 99)
      {
        break;
      }

LABEL_7:
      if (v4 >= 0x22)
      {
        a1[10] = 0u;
        a1[11] = 0u;
        a1[8] = 0u;
        a1[9] = 0u;
        a1[6] = 0u;
        a1[7] = 0u;
        a1[4] = 0u;
        a1[5] = 0u;
        a1[2] = 0u;
        a1[3] = 0u;
        return a1;
      }
    }

    v6 = a1 + 1;
LABEL_6:
    *v6 = *(a2 + 1 + v4);
    v4 += 17;
    goto LABEL_7;
  }

  if (os_log_type_enabled(qword_100BCE908, OS_LOG_TYPE_ERROR))
  {
    sub_100877A40();
  }

  return a1;
}

uint64_t sub_1007B5E24(uint64_t a1)
{
  *a1 = off_100B0D7D0;
  *(a1 + 8) = &off_100B0D830;
  *(a1 + 16) = &off_100B0D848;
  *(a1 + 24) = 0;
  *(a1 + 41) = 0;
  sub_100044BBC(a1 + 48);
  *(a1 + 120) = 0u;
  *(a1 + 112) = a1 + 120;
  *(a1 + 216) = 0;
  *(a1 + 424) = 1;
  *(a1 + 448) = 0u;
  *(a1 + 432) = 0;
  *(a1 + 440) = a1 + 448;
  *(a1 + 472) = 0u;
  *(a1 + 464) = a1 + 472;
  *(a1 + 496) = 0u;
  *(a1 + 488) = a1 + 496;
  *(a1 + 520) = 0u;
  *(a1 + 512) = a1 + 520;
  *(a1 + 568) = a1 + 576;
  *(a1 + 626) = 0;
  *(a1 + 628) = 0;
  *(a1 + 3750) = 0;
  *(a1 + 624) = 0;
  *(a1 + 592) = 0u;
  *(a1 + 608) = 0u;
  *(a1 + 576) = 0u;
  *(a1 + 3752) = 0u;
  *(a1 + 3768) = 6553625;
  *(a1 + 3784) = 0;
  v2 = sub_10000E92C();
  sub_100007E30(buf, "LE");
  sub_100007E30(__p, "CloudPair");
  if ((*(*v2 + 72))(v2, buf, __p, a1 + 424))
  {
    v3 = *(a1 + 424);
    if (v10 < 0)
    {
      operator delete(__p[0]);
    }

    if (v12 < 0)
    {
      operator delete(*buf);
      if (v3)
      {
        goto LABEL_14;
      }
    }

    else if (v3)
    {
      goto LABEL_14;
    }

    v4 = qword_100BCE908;
    if (os_log_type_enabled(qword_100BCE908, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Warning: Cloud pairing disabled by defaults write", buf, 2u);
    }
  }

  else
  {
    if (v10 < 0)
    {
      operator delete(__p[0]);
    }

    if (v12 < 0)
    {
      operator delete(*buf);
    }
  }

LABEL_14:
  v5 = sub_10000E92C();
  sub_100007E30(buf, "LE");
  sub_100007E30(__p, "LESecuredConnectionDebugKeys");
  if ((*(*v5 + 72))(v5, buf, __p, a1 + 624))
  {
    v6 = *(a1 + 624);
    if (v10 < 0)
    {
      operator delete(__p[0]);
    }

    if (v12 < 0)
    {
      operator delete(*buf);
      if (v6)
      {
        goto LABEL_28;
      }
    }

    else if (v6)
    {
      goto LABEL_28;
    }

    v7 = qword_100BCE908;
    if (os_log_type_enabled(qword_100BCE908, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Warning: Using LE 4.2 Secured Conenctions DEBUG KEYS !!!!!!!!", buf, 2u);
    }

    sub_1002E82E4(*(a1 + 624));
  }

  else
  {
    if (v10 < 0)
    {
      operator delete(__p[0]);
    }

    if (v12 < 0)
    {
      operator delete(*buf);
    }
  }

LABEL_28:
  if (qword_100B50AA0 != -1)
  {
    sub_100877AB0();
  }

  sub_100312650(off_100B50A98 + 64, a1);
  *(a1 + 3776) = 0;
  *(a1 + 552) = 0;
  *(a1 + 560) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  return a1;
}

void sub_1007B6198(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  v30 = *(v21 + 600);
  if (v30)
  {
    *(v21 + 608) = v30;
    operator delete(v30);
  }

  sub_10037505C(v22 + 456, *v28);
  sub_1007D0DFC(v22 + 400, *v27);
  sub_1007D0DFC(v22 + 376, *v26);
  sub_1007D0DFC(v22 + 352, *v25);
  sub_1007D0DFC(v22 + 328, *v24);
  sub_1007D0D78(v22, *v23);
  sub_10007A068(v21 + 48);

  _Unwind_Resume(a1);
}

uint64_t sub_1007B6268(uint64_t a1)
{
  *a1 = off_100B0D7D0;
  *(a1 + 8) = &off_100B0D830;
  *(a1 + 16) = &off_100B0D848;
  if (qword_100B50AA0 != -1)
  {
    sub_100877AD8();
  }

  sub_10007A3F0(off_100B50A98 + 64, a1);

  v2 = *(a1 + 600);
  if (v2)
  {
    *(a1 + 608) = v2;
    operator delete(v2);
  }

  sub_10037505C(a1 + 568, *(a1 + 576));
  sub_1007D0DFC(a1 + 512, *(a1 + 520));
  sub_1007D0DFC(a1 + 488, *(a1 + 496));
  sub_1007D0DFC(a1 + 464, *(a1 + 472));
  sub_1007D0DFC(a1 + 440, *(a1 + 448));
  sub_1007D0D78(a1 + 112, *(a1 + 120));
  sub_10007A068(a1 + 48);

  return a1;
}

void sub_1007B638C(_Unwind_Exception *a1)
{
  v3 = *(v1 + 600);
  if (v3)
  {
    *(v1 + 608) = v3;
    operator delete(v3);
  }

  sub_10037505C(v1 + 568, *(v1 + 576));
  sub_1007D0DFC(v1 + 512, *(v1 + 520));
  sub_1007D0DFC(v1 + 488, *(v1 + 496));
  sub_1007D0DFC(v1 + 464, *(v1 + 472));
  sub_1007D0DFC(v1 + 440, *(v1 + 448));
  sub_1007D0D78(v1 + 112, *(v1 + 120));
  sub_10007A068(v1 + 48);

  _Unwind_Resume(a1);
}

void sub_1007B6414(uint64_t a1)
{
  sub_1007B6268(a1);

  operator delete();
}

uint64_t sub_1007B644C(uint64_t a1)
{
  v4[0] = 0;
  v4[1] = 0;
  sub_100007F88(v4, a1 + 48);
  v2 = *(a1 + 3750);
  sub_1000088CC(v4);
  return v2;
}

uint64_t sub_1007B6494(uint64_t a1)
{
  v9 = 0;
  v8 = 0;
  v7 = 0;
  v2 = sub_1003CD83C(19, &v7, 6, &v9);
  if (v2 == -34019)
  {
    if (os_log_type_enabled(qword_100BCE908, OS_LOG_TYPE_ERROR))
    {
      sub_100877B98();
    }

    return 130;
  }

  v4 = v2;
  result = 103;
  if (!v4 && v9 == 6)
  {
    *(a1 + 240) = (v7 << 40) | (BYTE1(v7) << 32) | (BYTE2(v7) << 24) | (HIBYTE(v7) << 16) | (v8 << 8) | HIBYTE(v8) | 0x1000000000000;
    v5 = sub_1003CD83C(17, (a1 + 152), 16, &v9);
    if (v5 == -34019)
    {
      if (os_log_type_enabled(qword_100BCE908, OS_LOG_TYPE_ERROR))
      {
        sub_100877B5C();
      }

      return 130;
    }

    v6 = v5;
    result = 103;
    if (!v6 && v9 == 16)
    {
      result = sub_100240328((a1 + 152), 1, 0, (a1 + 224));
      if (result)
      {
        if (os_log_type_enabled(qword_100BCE908, OS_LOG_TYPE_ERROR))
        {
          sub_100877AEC();
        }

        return 130;
      }
    }
  }

  return result;
}

uint64_t sub_1007B661C(__n128 *a1)
{
  v10 = 0;
  v9 = 0;
  v8 = 1;
  arc4random_buf(&v9, 6uLL);
  LOBYTE(v9) = v9 | 0xC0;
  v2 = qword_100BCE908;
  if (os_log_type_enabled(qword_100BCE908, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Generating new non connectable identity address", v7, 2u);
  }

  if (sub_1003CDA10(0x13u, &v9, 6u))
  {
    v3 = qword_100BCE908;
    if (os_log_type_enabled(qword_100BCE908, OS_LOG_TYPE_FAULT))
    {
      *v7 = 0;
      _os_log_fault_impl(&_mh_execute_header, v3, OS_LOG_TYPE_FAULT, "Failed to set new non connectable static random address!", v7, 2u);
      v3 = qword_100BCE908;
    }

    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_100877BD4();
    }

    return 130;
  }

  a1[15].n128_u64[0] = (v9 << 40) | (BYTE1(v9) << 32) | (BYTE2(v9) << 24) | (HIBYTE(v9) << 16) | (v10 << 8) | HIBYTE(v10) | (v8 << 48);
  arc4random_buf(&a1[9].n128_i8[8], 0x10uLL);
  v4 = qword_100BCE908;
  if (os_log_type_enabled(qword_100BCE908, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Generating new non connectable identity root", v7, 2u);
  }

  if (sub_1003CDA10(0x11u, &a1[9].n128_u8[8], 0x10u))
  {
    v5 = qword_100BCE908;
    if (os_log_type_enabled(qword_100BCE908, OS_LOG_TYPE_FAULT))
    {
      *v7 = 0;
      _os_log_fault_impl(&_mh_execute_header, v5, OS_LOG_TYPE_FAULT, "Failed to set new non connectable identity root!", v7, 2u);
      v5 = qword_100BCE908;
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_100877C10();
    }

    return 130;
  }

  if (sub_100240328(&a1[9].n128_i8[8], 1, 0, &a1[14]))
  {
    if (os_log_type_enabled(qword_100BCE908, OS_LOG_TYPE_ERROR))
    {
      sub_100877AEC();
    }

    return 130;
  }

  sub_1003CDA10(0x12u, &a1[14], 0x10u);
  if (a1[2].n128_u8[9] == 1)
  {
    v7[0] = 0;
    sub_1000216B4(v7);
    sub_10029BA84(a1 + 14);
    sub_10002249C(v7);
  }

  return 0;
}

uint64_t sub_1007B68C0(uint64_t a1)
{
  v23[0] = 0;
  v23[1] = 0;
  sub_100007F88(v23, a1 + 48);
  v2 = sub_10000C798();
  v3 = (*(*v2 + 472))(v2);
  v4 = qword_100BCE908;
  if (os_log_type_enabled(qword_100BCE908, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v25 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "createTemporaryRootKeys in diagnostic mode :%d", buf, 8u);
  }

  if (v3)
  {
    arc4random_buf((a1 + 136), 0x10uLL);
    arc4random_buf((a1 + 168), 0x10uLL);
    if (sub_100240328((a1 + 136), 1, 0, (a1 + 184)))
    {
      if (os_log_type_enabled(qword_100BCE908, OS_LOG_TYPE_ERROR))
      {
        sub_100877C4C();
      }

LABEL_22:
      v6 = 130;
      goto LABEL_23;
    }

    if (sub_100240328((a1 + 136), 3, 0, (a1 + 200)))
    {
      if (os_log_type_enabled(qword_100BCE908, OS_LOG_TYPE_ERROR))
      {
        sub_100877CBC();
      }

      goto LABEL_22;
    }

    v22 = 0;
    v21 = 0;
    v20 = 1;
    arc4random_buf(&v21, 6uLL);
    v7 = v21 | 0xC0;
    LOBYTE(v21) = v21 | 0xC0;
    v8 = qword_100BCE908;
    if (os_log_type_enabled(qword_100BCE908, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "TTD: Generating new local static random", buf, 2u);
      v7 = v21;
    }

    *(a1 + 216) = (v7 << 40) | (BYTE1(v21) << 32) | (BYTE2(v21) << 24) | (HIBYTE(v21) << 16) | (v22 << 8) | HIBYTE(v22) | (v20 << 48);
    sub_1001BBFA0((a1 + 136), (a1 + 168));
    sub_1002DA398(*(a1 + 216));
    v19 = 0;
    v18 = 0;
    v17 = 1;
    arc4random_buf(&v18, 6uLL);
    v9 = v18 | 0xC0;
    LOBYTE(v18) = v18 | 0xC0;
    v10 = qword_100BCE908;
    if (os_log_type_enabled(qword_100BCE908, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "TTD: Generating new non connectable identity address", buf, 2u);
      v9 = v18;
    }

    *(a1 + 240) = (v9 << 40) | (BYTE1(v18) << 32) | (BYTE2(v18) << 24) | (HIBYTE(v18) << 16) | (v19 << 8) | HIBYTE(v19) | (v17 << 48);
    arc4random_buf((a1 + 152), 0x10uLL);
    v11 = qword_100BCE908;
    if (os_log_type_enabled(qword_100BCE908, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "TTD: Generating new non connectable identity root", buf, 2u);
    }

    if (sub_100240328((a1 + 152), 1, 0, (a1 + 224)))
    {
      if (os_log_type_enabled(qword_100BCE908, OS_LOG_TYPE_ERROR))
      {
        sub_100877D2C();
      }

      goto LABEL_22;
    }

    if (*(a1 + 41) == 1)
    {
      buf[0] = 0;
      sub_1000216B4(buf);
      sub_10029BA84((a1 + 224));
      sub_10002249C(buf);
    }

    v13 = qword_100BCE908;
    if (os_log_type_enabled(qword_100BCE908, OS_LOG_TYPE_DEFAULT))
    {
      sub_10004D9B0();
      v14 = v16 >= 0 ? &__p : __p;
      *buf = 68225283;
      v25 = 16;
      v26 = 2097;
      v27 = a1 + 184;
      v28 = 1041;
      v29 = 16;
      v30 = 2097;
      v31 = a1 + 200;
      v32 = 1041;
      v33 = 16;
      v34 = 2097;
      v35 = a1 + 136;
      v36 = 1041;
      v37 = 16;
      v38 = 2097;
      v39 = a1 + 168;
      v40 = 2080;
      v41 = v14;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "TTD: created temporary IRK=%{private}.16P DHK=%{private}.16P IR=%{private}.16P ER=%{private}.16P fLocalStaticRandomAddress:%s", buf, 0x4Cu);
      if (v16 < 0)
      {
        operator delete(__p);
      }
    }

    v6 = 0;
    *(a1 + 3750) = 1;
  }

  else
  {
    v5 = qword_100BCE908;
    if (os_log_type_enabled(qword_100BCE908, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "TTD: Not in Diagnostics mode, return", buf, 2u);
    }

    v6 = 152;
  }

LABEL_23:
  sub_1000088CC(v23);
  return v6;
}

void sub_1007B6DAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1007B6DE8(uint64_t a1)
{
  v28[0] = 0;
  v28[1] = 0;
  sub_100007F88(v28, a1 + 48);
  v27 = 0;
  v2 = sub_10000C798();
  v3 = (*(*v2 + 472))(v2);
  v4 = qword_100BCE908;
  if (os_log_type_enabled(qword_100BCE908, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v30 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "readRootKeys diagnostics mode:%d", buf, 8u);
  }

  if (v3)
  {
    v5 = sub_1007B68C0(a1);
    goto LABEL_96;
  }

  v6 = sub_1003CD83C(2, (a1 + 136), 16, &v27);
  if (v6 == -34019)
  {
    if (os_log_type_enabled(qword_100BCE908, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_37;
    }

    goto LABEL_95;
  }

  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = v27 == 16;
  }

  v8 = !v7;
  if (!v7)
  {
    arc4random_buf((a1 + 136), 0x10uLL);
    if (os_log_type_enabled(qword_100BCE908, OS_LOG_TYPE_ERROR))
    {
      sub_100877D9C();
    }

    if (sub_1003CDA10(2u, (a1 + 136), 0x10u))
    {
      v9 = qword_100BCE908;
      if (os_log_type_enabled(qword_100BCE908, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&_mh_execute_header, v9, OS_LOG_TYPE_FAULT, "Failed to set new identity root!", buf, 2u);
        v9 = qword_100BCE908;
      }

      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_100877DD8();
      }

      goto LABEL_95;
    }
  }

  v10 = sub_1003CD83C(1, (a1 + 168), 16, &v27);
  if (v10 == -34019)
  {
    if (os_log_type_enabled(qword_100BCE908, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_37;
    }

    goto LABEL_95;
  }

  if (v10 || v27 != 16)
  {
    arc4random_buf((a1 + 168), 0x10uLL);
    if (os_log_type_enabled(qword_100BCE908, OS_LOG_TYPE_ERROR))
    {
      sub_100877E14();
    }

    if (sub_1003CDA10(1u, (a1 + 168), 0x10u))
    {
      v11 = qword_100BCE908;
      if (os_log_type_enabled(qword_100BCE908, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&_mh_execute_header, v11, OS_LOG_TYPE_FAULT, "Failed to set new encryption root!", buf, 2u);
        v11 = qword_100BCE908;
      }

      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_100877E50();
      }

      goto LABEL_95;
    }

    v8 = 1;
  }

  v12 = sub_1003CD83C(5, (a1 + 312), 96, &v27);
  if (v12 == -34019)
  {
    if (os_log_type_enabled(qword_100BCE908, OS_LOG_TYPE_ERROR))
    {
LABEL_37:
      sub_1008781BC();
    }

LABEL_95:
    v5 = 130;
    goto LABEL_96;
  }

  if (v12 || v27 != 96)
  {
    buf[0] = 96;
    if (sub_100240E7C((a1 + 248), (a1 + 312)))
    {
      if (!os_log_type_enabled(qword_100BCE908, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_95;
      }

LABEL_45:
      sub_100877E8C();
      goto LABEL_95;
    }

    if (sub_1003CDA10(5u, (a1 + 312), 0x60u))
    {
      if (!os_log_type_enabled(qword_100BCE908, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_95;
      }
    }

    else
    {
      if (!sub_1003CDA10(6u, (a1 + 248), 0x40u))
      {
        goto LABEL_48;
      }

      if (!os_log_type_enabled(qword_100BCE908, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_95;
      }
    }

LABEL_80:
    sub_100877EC8();
    goto LABEL_95;
  }

  v13 = sub_1003CD83C(6, (a1 + 248), 64, &v27);
  if (v13 == -34019)
  {
    if (os_log_type_enabled(qword_100BCE908, OS_LOG_TYPE_ERROR))
    {
      sub_100877EFC();
    }

    goto LABEL_95;
  }

  if (v13 || v27 != 64)
  {
    buf[0] = 96;
    if (sub_100240E7C((a1 + 248), (a1 + 312)))
    {
      if (!os_log_type_enabled(qword_100BCE908, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_95;
      }

      goto LABEL_45;
    }

    if (sub_1003CDA10(5u, (a1 + 312), 0x60u))
    {
      if (!os_log_type_enabled(qword_100BCE908, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_95;
      }
    }

    else
    {
      if (!sub_1003CDA10(6u, (a1 + 248), 0x40u))
      {
        goto LABEL_48;
      }

      if (!os_log_type_enabled(qword_100BCE908, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_95;
      }
    }

    goto LABEL_80;
  }

LABEL_48:
  v14 = sub_1003CD83C(7, (a1 + 408), 16, &v27);
  if (v14 == -34019)
  {
    if (os_log_type_enabled(qword_100BCE908, OS_LOG_TYPE_ERROR))
    {
      sub_100878180();
    }

    goto LABEL_95;
  }

  if (v14 || v27 != 16)
  {
    arc4random_buf((a1 + 408), 0x10uLL);
    if (os_log_type_enabled(qword_100BCE908, OS_LOG_TYPE_ERROR))
    {
      sub_100877F38();
    }

    if (sub_1003CDA10(7u, (a1 + 408), 0x10u))
    {
      v15 = qword_100BCE908;
      if (os_log_type_enabled(qword_100BCE908, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&_mh_execute_header, v15, OS_LOG_TYPE_FAULT, "Failed to set new Cloud Nonce!", buf, 2u);
        v15 = qword_100BCE908;
      }

      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        sub_100877F74();
      }

      goto LABEL_95;
    }
  }

  if (sub_100240328((a1 + 136), 1, 0, (a1 + 184)))
  {
    if (os_log_type_enabled(qword_100BCE908, OS_LOG_TYPE_ERROR))
    {
      sub_100877FB0();
    }

    goto LABEL_95;
  }

  sub_1003CDA10(8u, (a1 + 184), 0x10u);
  if (sub_100240328((a1 + 136), 3, 0, (a1 + 200)))
  {
    if (os_log_type_enabled(qword_100BCE908, OS_LOG_TYPE_ERROR))
    {
      sub_100878020();
    }

    goto LABEL_95;
  }

  if (v8 && sub_1007B7738(a1))
  {
    if (os_log_type_enabled(qword_100BCE908, OS_LOG_TYPE_ERROR))
    {
      sub_100878144();
    }

    sub_1007B7834();
    v21 = sub_10000E92C();
    sub_100693F74(v21, 1);
  }

  v26 = 0;
  v25 = 0;
  v24 = 1;
  v16 = sub_1003CD83C(16, &v25, 6, &v27);
  if (v16 == -34019)
  {
    if (os_log_type_enabled(qword_100BCE908, OS_LOG_TYPE_ERROR))
    {
      sub_100878108();
    }

    goto LABEL_95;
  }

  if (v16 || v27 != 6)
  {
    arc4random_buf(&v25, 6uLL);
    LOBYTE(v25) = v25 | 0xC0;
    if (os_log_type_enabled(qword_100BCE908, OS_LOG_TYPE_ERROR))
    {
      sub_100878090();
    }

    if (sub_1003CDA10(0x10u, &v25, 6u))
    {
      v17 = qword_100BCE908;
      if (os_log_type_enabled(qword_100BCE908, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&_mh_execute_header, v17, OS_LOG_TYPE_FAULT, "Failed to set new local static random address!", buf, 2u);
        v17 = qword_100BCE908;
      }

      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        sub_1008780CC();
      }

      goto LABEL_95;
    }
  }

  *(a1 + 216) = (v25 << 40) | (BYTE1(v25) << 32) | (BYTE2(v25) << 24) | (HIBYTE(v25) << 16) | (v26 << 8) | HIBYTE(v26) | (v24 << 48);
  sub_1001BBFA0((a1 + 136), (a1 + 168));
  sub_1002DA398(*(a1 + 216));
  v5 = sub_1007B6494(a1);
  if (v5 != 130)
  {
    if (v5 != 103 || (v5 = sub_1007B661C(a1), !v5))
    {
      v19 = qword_100BCE908;
      if (os_log_type_enabled(qword_100BCE908, OS_LOG_TYPE_DEFAULT))
      {
        sub_10004D9B0();
        v20 = v23 >= 0 ? &__p : __p;
        *buf = 68225283;
        v30 = 16;
        v31 = 2097;
        v32 = a1 + 184;
        v33 = 1041;
        v34 = 16;
        v35 = 2097;
        v36 = a1 + 200;
        v37 = 1041;
        v38 = 16;
        v39 = 2097;
        v40 = a1 + 136;
        v41 = 1041;
        v42 = 16;
        v43 = 2097;
        v44 = a1 + 168;
        v45 = 2080;
        v46 = v20;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "IRK=%{private}.16P DHK=%{private}.16P IR=%{private}.16P ER=%{private}.16P fLocalStaticRandomAddress:%s", buf, 0x4Cu);
        if (v23 < 0)
        {
          operator delete(__p);
        }
      }

      *(a1 + 3750) = 1;
      sub_1007B78B0(a1);
      v5 = 0;
    }
  }

LABEL_96:
  sub_1000088CC(v28);
  return v5;
}

void sub_1007B7708(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

BOOL sub_1007B7738(uint64_t a1)
{
  v9[0] = 0;
  v9[1] = 0;
  sub_100007F88(v9, a1 + 48);
  if (!*(a1 + 456) || (v2 = *(a1 + 440), v2 == (a1 + 448)))
  {
    v4 = 0;
  }

  else
  {
    while (1)
    {
      v3 = sub_10004DF60(v2 + 32);
      v4 = sub_10004EE74(a1, v3);

      if (v4)
      {
        break;
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
      if (v6 == (a1 + 448))
      {
        goto LABEL_13;
      }
    }

    v4 = 1;
  }

LABEL_13:
  sub_1000088CC(v9);
  return v4;
}

void sub_1007B7834()
{
  v0 = sub_10000E92C();
  sub_100007E30(__p, "LeSecurityManager hit a keychain problem.");
  sub_100693FC4(v0, __p, 3172327085);
  if (v2 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1007B7894(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1007B78B0(uint64_t a1)
{
  *&size[1] = 0;
  if (sub_1003CD83C(11, (a1 + 32), 4, &size[1]) || *&size[1] != 4)
  {
    *(a1 + 32) = 144;
    v2 = qword_100BCEA20;
    if (os_log_type_enabled(qword_100BCEA20, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "readTEKsFromKeychain empty fEKRollingPeriod", buf, 2u);
    }

    sub_1003CDA10(0xBu, (a1 + 32), 4u);
  }

  v3 = +[NSMutableArray array];
  v4 = *(a1 + 24);
  *(a1 + 24) = v3;

  size[0] = 301;
  if (sub_1003CD83C(13, size, 2, &size[1]) || *&size[1] != 2)
  {
    v11 = sub_10000E92C();
    if ((*(*v11 + 176))(v11))
    {
      v12 = qword_100BCEA20;
      if (os_log_type_enabled(qword_100BCEA20, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "reading old TEK Keychain storage", buf, 2u);
      }
    }

    size[0] = 301;
    v51 = 0u;
    memset(v52, 0, sizeof(v52));
    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    memset(buf, 0, sizeof(buf));
    if (sub_1003CD83C(10, buf, 301, &size[1]) || *&size[1] != 301)
    {
      if (os_log_type_enabled(qword_100BCEA18, OS_LOG_TYPE_ERROR))
      {
        sub_100878234();
      }
    }

    else
    {
      v13 = buf[0];
      if (buf[0])
      {
        v14 = 1;
        do
        {
          *&size[3] = *&buf[v14];
          v34 = *&buf[v14 + 16];
          v35 = *(a1 + 32);
          v15 = *(a1 + 24);
          v16 = [NSData dataWithBytes:&size[3] length:21];
          [v15 addObject:v16];

          v14 += 20;
          --v13;
        }

        while (v13);
      }
    }

    sub_1007CCCD4(a1);
  }

  else if (size[0])
  {
    v5 = malloc_type_malloc(size[0], 0x100004077774924uLL);
    if (sub_1003CD83C(14, v5, size[0], &size[1]) || *&size[1] != size[0])
    {
      if (os_log_type_enabled(qword_100BCEA18, OS_LOG_TYPE_ERROR))
      {
        sub_1008781F8();
      }
    }

    else if (size[0])
    {
      v6 = 0;
      do
      {
        v7 = v5[v6];
        v8 = v6 + 1;
        v9 = *(a1 + 24);
        v10 = [NSData dataWithBytes:&v5[v6 + 1] length:v7];
        [v9 addObject:v10];

        v6 = v8 + v7;
      }

      while (v8 + v7 < size[0]);
    }

    free(v5);
  }

  sub_1007CD3F0(a1);
  if ([*(a1 + 24) count])
  {
    v17 = [*(a1 + 24) objectAtIndex:0];
    v18 = v17;
    v19 = *([v17 bytes] + 16);
    v20 = [*(a1 + 24) objectAtIndex:0];
    v21 = v20;
    v22 = *([v20 bytes] + 17);
    v23 = [*(a1 + 24) objectAtIndex:0];
    v24 = v23;
    v25 = *([v23 bytes] + 18);
    v26 = [*(a1 + 24) objectAtIndex:0];
    v27 = v26;
    *(a1 + 36) = v19 | (v22 << 8) | (v25 << 16) | (*([v26 bytes] + 19) << 24);
  }

  v28 = sub_10000E92C();
  if ((*(*v28 + 184))(v28))
  {
    v29 = qword_100BCEA20;
    if (os_log_type_enabled(qword_100BCEA20, OS_LOG_TYPE_INFO))
    {
      v30 = *(a1 + 24);
      v31 = *(a1 + 36);
      *buf = 138412546;
      *&buf[4] = v30;
      *&buf[12] = 1024;
      *&buf[14] = v31;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_INFO, "readTEKsFromKeychain fTEKArray %@ fENIntervalNumber=%d", buf, 0x12u);
    }
  }

  return 0;
}

void sub_1007B7DD4(uint64_t a1)
{
  v2 = sub_10000C798();
  if ((*(*v2 + 472))(v2))
  {
    if (os_log_type_enabled(qword_100BCE908, OS_LOG_TYPE_ERROR))
    {
      sub_100878338();
    }

    return;
  }

  v32 = +[NSMutableDictionary dictionary];
  v39[0] = 0;
  v39[1] = 0;
  sub_100007F88(v39, a1 + 48);
  v31 = sub_1003CCB64(*(a1 + 3768), 0);
  v3 = qword_100BCE908;
  if (os_log_type_enabled(qword_100BCE908, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [v31 count];
    v5 = [v31 count];
    v6 = "s";
    if (v5 == 1)
    {
      v6 = "";
    }

    *buf = 134218242;
    *&buf[4] = v4;
    *&buf[12] = 2082;
    *&buf[14] = v6;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Found %lu paired LE device%{public}s in local keychain", buf, 0x16u);
  }

  if (qword_100B508D0 != -1)
  {
    sub_100878270();
  }

  sub_10078A510(off_100B508C8, v31, 0);
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v7 = v31;
  v8 = [v7 countByEnumeratingWithState:&v35 objects:v44 count:16];
  if (v8)
  {
    v9 = *v36;
    do
    {
      v10 = 0;
      do
      {
        if (*v36 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v35 + 1) + 8 * v10);
        v12 = objc_autoreleasePoolPush();
        v13 = [v7 objectForKeyedSubscript:v11];
        v14 = [v13 unsignedLongLongValue];

        v15 = qword_100BCE908;
        if (os_log_type_enabled(qword_100BCE908, OS_LOG_TYPE_DEFAULT))
        {
          v16 = sub_100063D0C();
          *buf = 138543874;
          *&buf[4] = v16;
          *&buf[12] = 2114;
          *&buf[14] = v11;
          *&buf[22] = 2048;
          v43 = 0;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "MUC - BTAddr %{public}@, BTUUID %{public}@, HostAddr to use 0x%llx", buf, 0x20u);
        }

        if (sub_1007B849C(a1, v14, v11))
        {
          *uu = 0;
          v41 = 0;
          if (qword_100B508D0 != -1)
          {
            sub_100878270();
          }

          sub_1000498D4(off_100B508C8, v14, 0, 1u, 0, 0, uu);
          if (uuid_is_null(uu))
          {
            if (uuid_is_null(uu) && os_log_type_enabled(qword_100BCE908, OS_LOG_TYPE_FAULT))
            {
              sub_100063D0C();
              objc_claimAutoreleasedReturnValue();
              sub_1008782EC();
            }

            goto LABEL_27;
          }

          memset(buf, 0, sizeof(buf));
          if (qword_100B508D0 != -1)
          {
            sub_100878270();
          }

          v17 = off_100B508C8;
          v18 = sub_10004DF60(uu);
          sub_1000B006C(v17, v18, buf);

          if (buf[23] < 0)
          {
            if (*&buf[8])
            {
              v19 = *buf;
LABEL_36:
              v20 = [NSString stringWithUTF8String:v19, v31];
              v21 = sub_10004DF60(uu);
              [v32 setObject:v20 forKeyedSubscript:v21];
            }
          }

          else if (buf[23])
          {
            v19 = buf;
            goto LABEL_36;
          }

          if (qword_100B508D0 != -1)
          {
            sub_100878270();
          }

          v22 = off_100B508C8;
          sub_100007E30(__p, "_HIDEINSETTINGS_");
          v23 = sub_10004EB40(v22, v11, __p);
          v24 = v23;
          if (v34 < 0)
          {
            operator delete(__p[0]);
            if (!v24)
            {
              goto LABEL_46;
            }
          }

          else if (!v23)
          {
LABEL_46:
            if (buf[23] < 0)
            {
              operator delete(*buf);
            }

            goto LABEL_27;
          }

          if (qword_100B508D0 != -1)
          {
            sub_100878270();
          }

          sub_10078DC84(off_100B508C8, v11, 1);
          goto LABEL_46;
        }

        if (os_log_type_enabled(qword_100BCE908, OS_LOG_TYPE_ERROR))
        {
          sub_100063D0C();
          objc_claimAutoreleasedReturnValue();
          sub_100878298();
        }

        sub_1003CD6A0(v14, 0, 1);
LABEL_27:
        objc_autoreleasePoolPop(v12);
        v10 = v10 + 1;
      }

      while (v8 != v10);
      v25 = [v7 countByEnumeratingWithState:&v35 objects:v44 count:16];
      v8 = v25;
    }

    while (v25);
  }

  v26 = qword_100BCE908;
  if (os_log_type_enabled(qword_100BCE908, OS_LOG_TYPE_DEFAULT))
  {
    v27 = [v7 count];
    v28 = [v7 count];
    v29 = "s";
    v30 = *(a1 + 456);
    *buf = 134218498;
    if (v28 == 1)
    {
      v29 = "";
    }

    *&buf[4] = v27;
    *&buf[12] = 2082;
    *&buf[14] = v29;
    *&buf[22] = 2048;
    v43 = v30;
    _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Found %lu paired LE device%{public}s in synced keychain, total paired LE devices %lu", buf, 0x20u);
  }

  sub_1000088CC(v39);
}

void sub_1007B83CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, void *__p, uint64_t a37, int a38, __int16 a39, char a40, char a41)
{
  sub_1000088CC(&a28);

  _Unwind_Resume(a1);
}

uint64_t sub_1007B849C(uint64_t a1, unint64_t a2, void *a3)
{
  v5 = a3;
  v8[0] = 0;
  v8[1] = 0;
  sub_100007F88(v8, a1 + 48);
  *uu = 0;
  v10 = 0;
  if (qword_100B508D0 != -1)
  {
    sub_100878270();
  }

  sub_1000498D4(off_100B508C8, a2, 0, 1u, 0, 0, uu);
  if (!uuid_is_null(uu))
  {
    v7[0] = 0;
    v7[1] = 0;
    sub_1007B9990(a1, v7);
  }

  if (uuid_is_null(uu) && os_log_type_enabled(qword_100BCE908, OS_LOG_TYPE_FAULT))
  {
    sub_100063D0C();
    objc_claimAutoreleasedReturnValue();
    sub_100878374();
  }

  sub_1000088CC(v8);

  return 1;
}

void sub_1007B89BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, atomic_uint *a5, ...)
{
  va_start(va, a5);
  if (*(v6 - 121) < 0)
  {
    operator delete(*(v6 - 144));
  }

  if (a5)
  {
    sub_10000C808(a5);
  }

  sub_1000088CC(va);

  _Unwind_Resume(a1);
}

void sub_1007B8AAC(uint64_t a1)
{
  v1 = sub_10000C798();
  if ((*(*v1 + 472))(v1))
  {
    if (os_log_type_enabled(qword_100BCE908, OS_LOG_TYPE_ERROR))
    {
      sub_100878338();
    }
  }

  else
  {
    v2 = sub_10000C798();
    if ((*(*v2 + 384))(v2))
    {
      v41[0] = 0;
      v41[1] = 0;
      sub_100007F88(v41, a1 + 48);
      v33 = sub_1003CCB7C(*(a1 + 3770));
      v3 = qword_100BCE908;
      if (os_log_type_enabled(qword_100BCE908, OS_LOG_TYPE_DEFAULT))
      {
        v4 = [v33 count];
        v5 = [v33 count];
        v6 = "s";
        if (v5 == 1)
        {
          v6 = "";
        }

        *buf = 134218242;
        *&buf[4] = v4;
        *&buf[12] = 2082;
        *&buf[14] = v6;
        _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Found %lu paired LE device%{public}s in synchronized keychain", buf, 0x16u);
      }

      if (qword_100B508D0 != -1)
      {
        sub_100878270();
      }

      sub_10078A510(off_100B508C8, v33, 1);
      v39 = 0u;
      v40 = 0u;
      v37 = 0u;
      v38 = 0u;
      v7 = v33;
      v8 = [v7 countByEnumeratingWithState:&v37 objects:v50 count:16];
      if (v8)
      {
        v9 = *v38;
        do
        {
          v10 = 0;
          do
          {
            if (*v38 != v9)
            {
              objc_enumerationMutation(v7);
            }

            v11 = *(*(&v37 + 1) + 8 * v10);
            v12 = objc_autoreleasePoolPush();
            v13 = [v7 objectForKeyedSubscript:v11];
            v14 = [v13 unsignedLongLongValue];

            *uu = 0;
            v49 = 0;
            if (qword_100B508D0 != -1)
            {
              sub_100878270();
            }

            sub_1000498D4(off_100B508C8, v14, 0, 1u, 0, 0, uu);
            if (uuid_is_null(uu))
            {
              v15 = qword_100BCE908;
              if (os_log_type_enabled(qword_100BCE908, OS_LOG_TYPE_DEFAULT))
              {
                v16 = sub_100063D0C();
                *buf = 138543362;
                *&buf[4] = v16;
                _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Failed to retrieve UUID for paired address %{public}@, this is a synced key from another device, we don't really care about it on this device.", buf, 0xCu);
              }
            }

            else
            {
              v17 = sub_10004DF60(uu);
              v18 = [v11 isEqual:v17];

              if (v18)
              {
                sub_1007B849C(a1, v14, v11);
                if (!sub_10004EE74(a1, v11))
                {
                  if (qword_100B508D0 != -1)
                  {
                    sub_100878270();
                  }

                  v19 = off_100B508C8;
                  v20 = sub_10004DF60(uu);
                  v21 = sub_10004B1D8(v19, v20);
                  sub_10077B704(v21, 0);

                  v22 = qword_100BCE908;
                  if (os_log_type_enabled(qword_100BCE908, OS_LOG_TYPE_DEFAULT))
                  {
                    v23 = sub_100063D0C();
                    *buf = 138543618;
                    *&buf[4] = v11;
                    *&buf[12] = 2114;
                    *&buf[14] = v23;
                    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Device %{public}@ (%{public}@) is not really paired, its just a previously paired watch", buf, 0x16u);
                  }
                }
              }

              else
              {
                v24 = qword_100BCE908;
                if (os_log_type_enabled(qword_100BCE908, OS_LOG_TYPE_DEFAULT))
                {
                  v25 = sub_100063D0C();
                  memset(buf, 0, 37);
                  uuid_unparse_upper(uu, buf);
                  sub_100007E30(__p, buf);
                  v26 = __p;
                  if (v36 < 0)
                  {
                    v26 = __p[0];
                  }

                  *v42 = 138543874;
                  v43 = v11;
                  v44 = 2114;
                  v45 = v25;
                  v46 = 2082;
                  v47 = v26;
                  _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Device %{public}@ (%{public}@) UUID from keychain is different than in local database(%{public}s). Ignoring keychain copy.", v42, 0x20u);
                  if (v36 < 0)
                  {
                    operator delete(__p[0]);
                  }
                }
              }
            }

            objc_autoreleasePoolPop(v12);
            v10 = v10 + 1;
          }

          while (v8 != v10);
          v8 = [v7 countByEnumeratingWithState:&v37 objects:v50 count:16];
        }

        while (v8);
      }

      v27 = qword_100BCE908;
      if (os_log_type_enabled(qword_100BCE908, OS_LOG_TYPE_DEFAULT))
      {
        v28 = [v7 count];
        v29 = [v7 count];
        v30 = "s";
        v31 = *(a1 + 456);
        *buf = 134218498;
        if (v29 == 1)
        {
          v30 = "";
        }

        *&buf[4] = v28;
        *&buf[12] = 2082;
        *&buf[14] = v30;
        *&buf[22] = 2048;
        *&buf[24] = v31;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Found %lu paired LE device%{public}s in synced keychain, total paired LE devices %lu", buf, 0x20u);
      }

      sub_1000088CC(v41);
    }

    else
    {
      v32 = qword_100BCE908;
      if (os_log_type_enabled(qword_100BCE908, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "skipping synchronized keychain read since this is not a phone.", buf, 2u);
      }
    }
  }
}

BOOL sub_1007B9188(uint64_t a1, uint64_t a2, int a3)
{
  v5 = 0;
  v6 = 0;
  sub_1000AFFEC(*(a2 + 8), a3, &v5);
  v3 = sub_10000D26C(&v5);
  v5 = &off_100AE0A78;
  if (v6)
  {
    sub_10000C808(v6);
  }

  return !v3;
}

void sub_1007B91FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, atomic_uint *a10)
{
  if (a10)
  {
    sub_10000C808(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1007B9230(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  v38 = &off_100B01470;
  v39 = v3;
  if (v3)
  {
    sub_10000C69C(v3);
  }

  v4 = sub_1007B9188(v3, &v38, 0);
  v38 = &off_100B01470;
  if (v39)
  {
    sub_10000C808(v39);
  }

  v5 = *(a2 + 8);
  v36 = &off_100B01470;
  v37 = v5;
  if (v5)
  {
    sub_10000C69C(v5);
  }

  v6 = sub_1007B9188(v5, &v36, 3);
  v36 = &off_100B01470;
  if (v37)
  {
    sub_10000C808(v37);
  }

  v7 = *(a2 + 8);
  v34 = &off_100B01470;
  v35 = v7;
  if (v7)
  {
    sub_10000C69C(v7);
  }

  v8 = sub_1007B9188(v7, &v34, 4);
  v34 = &off_100B01470;
  if (v35)
  {
    sub_10000C808(v35);
  }

  v9 = *(a2 + 8);
  v32 = &off_100B01470;
  v33 = v9;
  if (v9)
  {
    sub_10000C69C(v9);
  }

  v10 = sub_1007B9188(v9, &v32, 5);
  v32 = &off_100B01470;
  if (v33)
  {
    sub_10000C808(v33);
  }

  v11 = *(a2 + 8);
  v30 = &off_100B01470;
  v31 = v11;
  if (v11)
  {
    sub_10000C69C(v11);
  }

  v12 = sub_1007B9188(v11, &v30, 9);
  v30 = &off_100B01470;
  if (v31)
  {
    sub_10000C808(v31);
  }

  v13 = *(a2 + 8);
  v28 = &off_100B01470;
  v29 = v13;
  if (v13)
  {
    sub_10000C69C(v13);
  }

  v14 = sub_1007B9188(v13, &v28, 9);
  v28 = &off_100B01470;
  if (v29)
  {
    sub_10000C808(v29);
  }

  v26 = 0;
  v27 = 0;
  sub_1000AFFEC(*(a2 + 8), 7, &v26);
  v15 = !sub_10000D26C(&v26) && (*sub_10000C5F8(&v26) == 2 || *sub_10000C5F8(&v26) == 3);
  v16 = qword_100BCE908;
  if (os_log_type_enabled(qword_100BCE908, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67110656;
    *&buf[4] = v10;
    LOWORD(v44) = 1024;
    *(&v44 + 2) = v12;
    HIWORD(v44) = 1024;
    v45 = v14;
    v46 = 1024;
    v47 = v4;
    v48 = 1024;
    v49 = v8;
    v50 = 1024;
    v51 = v6;
    v52 = 1024;
    v53 = v15;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "hasLocalLTK=%d hasLocalRAND=%d hasLocalEDIV=%d hasRemoteLTK=%d hasRemoteRand=%d hasRemoteEDIV=%d securedConnection=%d", buf, 0x2Cu);
  }

  if (!v15)
  {
    if (!v4 && !v8 && !v6)
    {
      v10 = v12 ^ v14 ^ 1u;
      goto LABEL_59;
    }

    *buf = 0;
    v44 = 0;
    sub_1000AFFEC(*(a2 + 8), 1, buf);
    if (sub_10000C5E0(buf) && *sub_10000C5F8(buf) == 16)
    {
      v42 = xmmword_1008A5090;
      v24 = 0;
      v25 = 0;
      sub_10000C704(&v24, &v42, 0x10uLL);
      sub_1000AFFEC(*(a2 + 8), 0, &v40);
      v17 = sub_1000AF598(&v24, &v40);
      v40 = &off_100AE0A78;
      if (v41)
      {
        sub_10000C808(v41);
      }

      if (v17)
      {
        if (os_log_type_enabled(qword_100BCE908, OS_LOG_TYPE_ERROR))
        {
          sub_100878424();
        }

        v24 = &off_100AE0A78;
        if (v25)
        {
          sub_10000C808(v25);
        }

        goto LABEL_56;
      }

      v40 = 0;
      v41 = 0;
      sub_1000075EC(&v40, &v42, 0x10uLL);
      v22 = 0;
      v23 = 0;
      sub_10000C704(&v22, &v40, 0x10uLL);
      sub_1000AFFEC(*(a2 + 8), 0, &v20);
      v18 = sub_1000AF598(&v22, &v20);
      v20 = &off_100AE0A78;
      if (v21)
      {
        sub_10000C808(v21);
      }

      if (v18 && os_log_type_enabled(qword_100BCE908, OS_LOG_TYPE_ERROR))
      {
        sub_100878424();
      }

      v22 = &off_100AE0A78;
      if (v23)
      {
        sub_10000C808(v23);
      }

      v24 = &off_100AE0A78;
      if (v25)
      {
        sub_10000C808(v25);
      }

      if (v18 || !v4)
      {
        goto LABEL_56;
      }
    }

    else if (!v4)
    {
LABEL_56:
      v10 = 0;
LABEL_57:
      *buf = &off_100AE0A78;
      if (v44)
      {
        sub_10000C808(v44);
      }

      goto LABEL_59;
    }

    v10 = v6 & v8;
    goto LABEL_57;
  }

LABEL_59:
  v26 = &off_100AE0A78;
  if (v27)
  {
    sub_10000C808(v27);
  }

  return v10;
}

void sub_1007B97D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, atomic_uint *a10, uint64_t a11, atomic_uint *a12, uint64_t a13, atomic_uint *a14, uint64_t a15, atomic_uint *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  if (a10)
  {
    sub_10000C808(a10);
  }

  if (a12)
  {
    sub_10000C808(a12);
  }

  if (a14)
  {
    sub_10000C808(a14);
  }

  *(v30 - 160) = &off_100AE0A78;
  v32 = *(v30 - 152);
  if (v32)
  {
    sub_10000C808(v32);
  }

  if (a16)
  {
    sub_10000C808(a16);
  }

  _Unwind_Resume(exception_object);
}

void sub_1007B9990(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3[0] = 0;
  v3[1] = 0;
  sub_100007F88(v3, a1 + 48);
  *a2 = 0;
  a2[1] = 0;
  operator new();
}

void sub_1007B9DE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22, uint64_t a23, void *__p, uint64_t a25)
{
  *v25 = v26;
  v28 = v25[1];
  if (v28)
  {
    sub_10000C808(v28);
  }

  sub_1000088CC(&a22);
  _Unwind_Resume(a1);
}

uint64_t sub_1007B9EFC(uint64_t a1, uint64_t a2, _WORD *a3)
{
  v12[0] = 0;
  v12[1] = 0;
  sub_100007F88(v12, a1 + 48);
  v5 = *(a2 + 8);
  if (!a3 || !v5)
  {
    v6 = qword_100BCE908;
    if (os_log_type_enabled(qword_100BCE908, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&_mh_execute_header, v6, OS_LOG_TYPE_FAULT, "Invalid params dict and keys should always be valid", buf, 2u);
      v5 = *(a2 + 8);
    }
  }

  *buf = 0;
  v11 = 0;
  sub_1000AFFEC(v5, 6, buf);
  if (!sub_10000D26C(buf))
  {
    sub_10004B788(buf, a3 + 22, 1uLL);
    sub_1000AFFEC(*(a2 + 8), 7, &v8);
    sub_10000AE20(buf, &v8);
    v8 = &off_100AE0A78;
    if (v9)
    {
      sub_10000C808(v9);
    }

    if (!sub_10000D26C(buf))
    {
      sub_10004B788(buf, a3 + 45, 1uLL);
      sub_1000AFFEC(*(a2 + 8), 5, &v8);
      sub_10000AE20(buf, &v8);
      v8 = &off_100AE0A78;
      if (v9)
      {
        sub_10000C808(v9);
      }

      if (!sub_10000D26C(buf))
      {
        sub_10004B788(buf, a3 + 14, 0x10uLL);
      }
    }

    a3[40] |= 8u;
  }

  sub_1000AFFEC(*(a2 + 8), 8, &v8);
  sub_10000AE20(buf, &v8);
  v8 = &off_100AE0A78;
  if (v9)
  {
    sub_10000C808(v9);
  }

  if (!sub_10000D26C(buf))
  {
    sub_10004B788(buf, a3 + 23, 2uLL);
    a3[40] |= 0x10u;
  }

  sub_1000AFFEC(*(a2 + 8), 9, &v8);
  sub_10000AE20(buf, &v8);
  v8 = &off_100AE0A78;
  if (v9)
  {
    sub_10000C808(v9);
  }

  if (!sub_10000D26C(buf))
  {
    sub_10004B788(buf, a3 + 24, 8uLL);
    a3[40] |= 0x20u;
  }

  sub_1000AFFEC(*(a2 + 8), 0, &v8);
  sub_10000AE20(buf, &v8);
  v8 = &off_100AE0A78;
  if (v9)
  {
    sub_10000C808(v9);
  }

  if (!sub_10000D26C(buf))
  {
    sub_10004B788(buf, a3, 0x10uLL);
    sub_1000AFFEC(*(a2 + 8), 1, &v8);
    sub_10000AE20(buf, &v8);
    v8 = &off_100AE0A78;
    if (v9)
    {
      sub_10000C808(v9);
    }

    if (!sub_10000D26C(buf))
    {
      sub_10004B788(buf, a3 + 8, 1uLL);
    }

    sub_1000AFFEC(*(a2 + 8), 2, &v8);
    sub_10000AE20(buf, &v8);
    v8 = &off_100AE0A78;
    if (v9)
    {
      sub_10000C808(v9);
    }

    if (!sub_10000D26C(buf))
    {
      sub_10004B788(buf, a3 + 17, 1uLL);
    }

    a3[40] |= 1u;
  }

  sub_1000AFFEC(*(a2 + 8), 3, &v8);
  sub_10000AE20(buf, &v8);
  v8 = &off_100AE0A78;
  if (v9)
  {
    sub_10000C808(v9);
  }

  if (!sub_10000D26C(buf))
  {
    sub_10004B788(buf, a3 + 9, 2uLL);
    a3[40] |= 2u;
  }

  sub_1000AFFEC(*(a2 + 8), 4, &v8);
  sub_10000AE20(buf, &v8);
  v8 = &off_100AE0A78;
  if (v9)
  {
    sub_10000C808(v9);
  }

  if (!sub_10000D26C(buf))
  {
    sub_10004B788(buf, a3 + 10, 8uLL);
    a3[40] |= 4u;
  }

  sub_1000AFFEC(*(a2 + 8), 10, &v8);
  sub_10000AE20(buf, &v8);
  v8 = &off_100AE0A78;
  if (v9)
  {
    sub_10000C808(v9);
  }

  if (!sub_10000D26C(buf))
  {
    sub_10004B788(buf, a3 + 28, 0x10uLL);
    a3[40] |= 0x40u;
  }

  sub_1000AFFEC(*(a2 + 8), 11, &v8);
  sub_10000AE20(buf, &v8);
  v8 = &off_100AE0A78;
  if (v9)
  {
    sub_10000C808(v9);
  }

  if (!sub_10000D26C(buf))
  {
    sub_10004B788(buf, a3 + 36, 7uLL);
    a3[40] |= 0x80u;
  }

  sub_1000AFFEC(*(a2 + 8), 16, &v8);
  sub_10000AE20(buf, &v8);
  v8 = &off_100AE0A78;
  if (v9)
  {
    sub_10000C808(v9);
  }

  if (!sub_10000D26C(buf))
  {
    sub_10004B788(buf, a3 + 79, 1uLL);
    a3[40] |= 0x100u;
  }

  *buf = &off_100AE0A78;
  if (v11)
  {
    sub_10000C808(v11);
  }

  return sub_1000088CC(v12);
}

void sub_1007BA51C(_Unwind_Exception *a1, uint64_t a2, atomic_uint *a3, uint64_t a4, atomic_uint *a5, ...)
{
  va_start(va, a5);
  if (a3)
  {
    sub_10000C808(a3);
  }

  if (a5)
  {
    sub_10000C808(a5);
  }

  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

void sub_1007BA60C(uint64_t a1)
{
  v2 = sub_10000C798();
  if ((*(*v2 + 472))(v2))
  {
    if (os_log_type_enabled(qword_100BCE908, OS_LOG_TYPE_ERROR))
    {
      sub_100878338();
    }
  }

  else
  {
    v3 = +[NSMutableSet set];
    if (*(a1 + 456))
    {
      v4 = *(a1 + 440);
      if (v4 != (a1 + 448))
      {
        do
        {
          v5 = sub_10004DF60(v4 + 32);
          [v3 addObject:v5];

          v6 = *(v4 + 1);
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
              v7 = *(v4 + 2);
              v8 = *v7 == v4;
              v4 = v7;
            }

            while (!v8);
          }

          v4 = v7;
        }

        while (v7 != (a1 + 448));
      }
    }

    sub_1007B8AAC(a1);
    if (*(a1 + 41) == 1)
    {
      v9 = *(a1 + 440);
      if (v9 != (a1 + 448))
      {
        do
        {
          v10 = sub_10004DF60(v9 + 32);
          v11 = [v3 containsObject:v10];

          v27 = 0;
          v28 = 0;
          sub_1000AFFEC(*(v9 + 7), 10, &v27);
          if (!sub_10000D26C(&v27))
          {
            v12 = sub_10004DF60(v9 + 32);
            v13 = sub_10004EE74(a1, v12) | v11;

            if ((v13 & 1) == 0)
            {
              v14 = sub_10000C7D0();
              if (qword_100B508D0 != -1)
              {
                sub_100878270();
              }

              v15 = off_100B508C8;
              v16 = sub_10004DF60(v9 + 32);
              v17 = sub_100046458(v15, v16, 0);
              v18 = sub_10000C5F8(&v27);
              v19 = (*(*v14 + 360))(v14, v17, v18, 1);

              v20 = sub_10004DF60(v9 + 32);
              sub_1007BA9FC(v20, v20, v19);

              sub_1000AFFEC(*(v9 + 7), 11, &v25);
              v21 = sub_10000C5F8(&v25);
              v22 = sub_10000C5F8(&v27);
              sub_1007BAA64(a1, v21, v22);
              v25 = &off_100AE0A78;
              if (v26)
              {
                sub_10000C808(v26);
              }
            }
          }

          v27 = &off_100AE0A78;
          if (v28)
          {
            sub_10000C808(v28);
          }

          v23 = *(v9 + 1);
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
              v24 = *(v9 + 2);
              v8 = *v24 == v9;
              v9 = v24;
            }

            while (!v8);
          }

          v9 = v24;
        }

        while (v24 != (a1 + 448));
      }
    }
  }
}

void sub_1007BA9FC(uint64_t a1, void *a2, int a3)
{
  v4 = a2;
  if (a3 && os_log_type_enabled(qword_100BCE908, OS_LOG_TYPE_ERROR))
  {
    sub_100878460();
  }
}

BOOL sub_1007BAA64(uint64_t a1, int *a2, _OWORD *a3)
{
  v6 = *(a2 + 1);
  v7 = *(a2 + 2);
  v8 = *(a2 + 3);
  v9 = *(a2 + 4);
  v10 = *(a2 + 5);
  v11 = *(a2 + 6);
  v12 = *a2;
  if (qword_100B508D0 != -1)
  {
    sub_1008784D0();
  }

  *uu = 0;
  v33 = 0;
  sub_1000498D4(off_100B508C8, (v6 << 40) | (v7 << 32) | (v8 << 24) | (v9 << 16) | (v10 << 8) | v11 | (v12 << 48), 0, 1u, 0, 0, uu);
  v13 = qword_100BCE908;
  if (os_log_type_enabled(qword_100BCE908, OS_LOG_TYPE_DEFAULT))
  {
    v14 = v25;
    sub_10004D9B0();
    if (v26 < 0)
    {
      v14 = v25[0];
    }

    if (uuid_is_null(uu))
    {
      *buf = 136446466;
      v29 = v14;
      v30 = 2082;
      v31 = "NONE";
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Adding %{public}s (%{public}s) to the cache.", buf, 0x16u);
    }

    else
    {
      memset(out, 0, 37);
      uuid_unparse_upper(uu, out);
      sub_100007E30(__p, out);
      if (v24 >= 0)
      {
        v15 = __p;
      }

      else
      {
        v15 = __p[0];
      }

      *buf = 136446466;
      v29 = v14;
      v30 = 2082;
      v31 = v15;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Adding %{public}s (%{public}s) to the cache.", buf, 0x16u);
      if (v24 < 0)
      {
        operator delete(__p[0]);
      }
    }

    if (v26 < 0)
    {
      operator delete(v25[0]);
    }
  }

  if (uuid_is_null(uu))
  {
    v16 = 0;
  }

  else
  {
    v17 = sub_10004DF60(uu);
    v18 = sub_10004EE74(a1, v17);

    v16 = !v18;
  }

  LOBYTE(__p[0]) = 0;
  sub_1000216B4(__p);
  v19 = sub_1002DC7B8(a2, a3, v16);
  sub_100022214(__p);
  v20 = qword_100BCE908;
  if (os_log_type_enabled(qword_100BCE908, OS_LOG_TYPE_DEFAULT))
  {
    sub_10004D9B0();
    if (v26 >= 0)
    {
      v21 = v25;
    }

    else
    {
      v21 = v25[0];
    }

    *out = 136447235;
    *&out[4] = v21;
    *&out[12] = 1041;
    *&out[14] = 16;
    *&out[18] = 2097;
    *&out[20] = a3;
    *&out[28] = 1024;
    *&out[30] = v16;
    *&out[34] = 1024;
    *&out[36] = v19;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Added %{public}s to the cache (irk=%{private}.16P, okToRePair=%d) status=%d", out, 0x28u);
    if (v26 < 0)
    {
      operator delete(v25[0]);
    }
  }

  sub_10002249C(__p);
  return v19 == 0;
}

uint64_t sub_1007BADEC(uint64_t a1)
{
  if (qword_100B508D0 != -1)
  {
    sub_1008784D0();
  }

  v2 = *(off_100B508C8 + 40);
  if (*(a1 + 3768) < v2)
  {
    *(a1 + 3768) = v2 - 25;
  }

  v41 = 0;
  v3 = sub_10000E92C();
  sub_100007E30(&buf, "LE");
  sub_100007E30(v39, "OverrideMaxLEPairedDevices");
  v4 = (*(*v3 + 88))(v3, &buf, v39, &v41);
  if (v41 > 0)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (v40 < 0)
  {
    operator delete(v39[0]);
  }

  if (v45 < 0)
  {
    operator delete(buf);
  }

  if (v5)
  {
    v6 = qword_100BCE908;
    v7 = os_log_type_enabled(qword_100BCE908, OS_LOG_TYPE_DEFAULT);
    v8 = v41;
    if (v7)
    {
      LODWORD(buf) = 67109120;
      HIDWORD(buf) = v41;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Warning: Overriding max number of allowed LE Paired devices to %d", &buf, 8u);
      v8 = v41;
    }

    *(a1 + 3768) = v8;
  }

  v9 = sub_10000E92C();
  sub_100007E30(&buf, "LE");
  sub_100007E30(v39, "OverrideMaxLESyncedDevices");
  v10 = (*(*v9 + 88))(v9, &buf, v39, &v41);
  if (v41 > 0)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  if (v40 < 0)
  {
    operator delete(v39[0]);
  }

  if (v45 < 0)
  {
    operator delete(buf);
  }

  v12 = qword_100BCE908;
  if (v11)
  {
    v13 = os_log_type_enabled(qword_100BCE908, OS_LOG_TYPE_DEFAULT);
    v14 = v41;
    if (v13)
    {
      LODWORD(buf) = 67109120;
      HIDWORD(buf) = v41;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Warning: Overriding max number of allowed LE Paired devices to %d", &buf, 8u);
      v14 = v41;
      v12 = qword_100BCE908;
    }

    *(a1 + 3770) = v14;
  }

  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v15 = *(a1 + 3768);
    v16 = *(a1 + 3770);
    LODWORD(buf) = 67109376;
    HIDWORD(buf) = v15;
    v43 = 1024;
    v44 = v16;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "We can have up to %d paired devices, %d synced LE devices", &buf, 0xEu);
  }

  v17 = sub_1007B6DE8(a1);
  if (v17)
  {
    sub_1007B7834();
    v32 = sub_10000E92C();
    sub_100007E30(v38, "");
    sub_100693260(v32, v17, v38, 1);
  }

  v37[0] = 0;
  v37[1] = 0;
  sub_100007F88(v37, a1 + 48);
  sub_1007B7DD4(a1);
  sub_1007B8AAC(a1);
  v18 = sub_10000C798();
  v19 = (*(*v18 + 480))(v18);
  *(a1 + 3749) = v19;
  sub_10029C370(v19 ^ 1u);
  if (*(a1 + 3749) == 1)
  {
    sub_1002E831C();
  }

  out_token = 0;
  v20 = *(sub_100007EE8() + 8);
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_1007BB468;
  handler[3] = &unk_100AF0BA0;
  handler[4] = a1;
  v21 = notify_register_dispatch("com.apple.mobile.keybagd.first_unlock", &out_token, v20, handler);
  v22 = qword_100BCE908;
  if (v21)
  {
    if (os_log_type_enabled(qword_100BCE908, OS_LOG_TYPE_ERROR))
    {
      sub_1008784E4();
    }
  }

  else if (os_log_type_enabled(qword_100BCE908, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf) = 0;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Successfully registered for MKB first unlock notification", &buf, 2u);
  }

  v23 = *(sub_100007EE8() + 8);
  v34[0] = _NSConcreteStackBlock;
  v34[1] = 3221225472;
  v34[2] = sub_1007BB5A8;
  v34[3] = &unk_100AF0BA0;
  v34[4] = a1;
  notify_register_dispatch("com.apple.purplebuddy.setupdone", &out_token, v23, v34);
  v33 = 0;
  v24 = sub_10000E92C();
  sub_100007E30(&buf, "CT");
  sub_100007E30(v39, "UseCTPrefixForCTCrypto");
  v25 = (*(*v24 + 72))(v24, &buf, v39, &v33);
  v26 = v33;
  if (v40 < 0)
  {
    operator delete(v39[0]);
  }

  v27 = v25 & v26;
  if (v45 < 0)
  {
    operator delete(buf);
    if (!v27)
    {
      goto LABEL_46;
    }
  }

  else if (!v27)
  {
    goto LABEL_46;
  }

  v28 = qword_100BCE908;
  if (os_log_type_enabled(qword_100BCE908, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf) = 0;
    _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Warning: using the CT- prefix instead of EN- prefix for ContactTracing", &buf, 2u);
  }

  *(a1 + 40) = 1;
LABEL_46:
  v29 = +[NSMutableArray array];
  v30 = *(a1 + 3784);
  *(a1 + 3784) = v29;

  sub_1007BB61C(a1);
  if (qword_100B508B0 != -1)
  {
    sub_100878554();
  }

  sub_100749B80(off_100B508A8, a1 + 16, 0);
  return sub_1000088CC(v37);
}

void sub_1007BB3C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (a29 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1007BB468(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = qword_100BCE908;
  if (os_log_type_enabled(qword_100BCE908, OS_LOG_TYPE_DEFAULT))
  {
    v5[0] = 67109120;
    v5[1] = MKBDeviceUnlockedSinceBoot();
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Received MKB first unlock notification. MKBDeviceUnlockedSinceBoot returns : %d", v5, 8u);
  }

  v3 = MKBDeviceUnlockedSinceBoot();
  v4 = qword_100BCE908;
  if (v3 != 1 && os_log_type_enabled(qword_100BCE908, OS_LOG_TYPE_FAULT))
  {
    LOWORD(v5[0]) = 0;
    _os_log_fault_impl(&_mh_execute_header, v4, OS_LOG_TYPE_FAULT, "Received MKB first unlock notification, but MKBDeviceUnlockedSinceBoot returns 0", v5, 2u);
    v4 = qword_100BCE908;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v5[0]) = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Received first unlock notification - loading keychain from synchronized again", v5, 2u);
  }

  sub_1007BA60C(v1);
}

void sub_1007BB5A8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = qword_100BCE908;
  if (os_log_type_enabled(qword_100BCE908, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Received setup done - loading keychain from synchrnized again", v3, 2u);
  }

  sub_1007BA60C(v1);
}

void sub_1007BB61C(uint64_t a1)
{
  bzero((a1 + 629), 0xC30uLL);
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v2 = sub_1000E2738();
  (**v2)(v2, &v11);
  v3 = v11;
  if (v11 == v12)
  {
    goto LABEL_12;
  }

  do
  {
    v4 = *v3;
    v18[0] = 0;
    v18[1] = 0;
    v5 = sub_1000E2738();
    v6 = (*(*v5 + 96))(v5, v4, 2, v18);
    v7 = qword_100BCE908;
    if (!os_log_type_enabled(qword_100BCE908, OS_LOG_TYPE_DEFAULT) || ((sub_1000E5A58(v4, __p), v10 >= 0) ? (v8 = __p) : (v8 = __p[0]), *buf = 136446466, v15 = v8, v16 = 1024, v17 = v6, _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Read IRK for device %{public}s : result %d", buf, 0x12u), (v10 & 0x80000000) == 0))
    {
      if (v6)
      {
        goto LABEL_10;
      }

LABEL_8:
      LOBYTE(__p[0]) = 0;
      *(__p + 1) = *(v4 + 128);
      *(__p + 5) = *(v4 + 132);
      sub_1007BE07C(a1, __p, v18);
      goto LABEL_10;
    }

    operator delete(__p[0]);
    if (!v6)
    {
      goto LABEL_8;
    }

LABEL_10:
    ++v3;
  }

  while (v3 != v12);
  v3 = v11;
LABEL_12:
  if (v3)
  {
    v12 = v3;
    operator delete(v3);
  }
}

void sub_1007BB80C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1007BB834(uint64_t a1)
{
  v2 = sub_10000C798();
  v3 = (*(*v2 + 88))(v2);
  v58[0] = 0;
  v58[1] = 0;
  sub_100007F88(v58, a1 + 48);
  v57 = 0;
  sub_1000216B4(&v57);
  if ((sub_1002D359C() & 1) == 0)
  {
    goto LABEL_102;
  }

  if (sub_1002E6FC8((a1 + 136), (a1 + 184), (a1 + 168), (a1 + 200), (a1 + 224)))
  {
    if (os_log_type_enabled(qword_100BCE908, OS_LOG_TYPE_ERROR))
    {
      sub_10087857C();
    }

    goto LABEL_102;
  }

  *(a1 + 184) = *sub_1002E8314();
  v56 = 0;
  v4 = sub_10000E92C();
  sub_100007E30(buf, "LE");
  sub_100007E30(__p, "ForceBoolIOCaps");
  v5 = (*(*v4 + 72))(v4, buf, __p, &v56);
  v6 = v56;
  if (v55 < 0)
  {
    operator delete(__p[0]);
  }

  v7 = v5 & v6;
  if (v60 < 0)
  {
    operator delete(*buf);
  }

  if (v7)
  {
    v8 = qword_100BCE908;
    if (os_log_type_enabled(qword_100BCE908, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v3 = 2;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Warning: Overriding LE security IO capabilities to YES/NO only - DEPRECATED - please move to modern defaults writes", buf, 2u);
    }

    else
    {
      v3 = 2;
    }
  }

  v53 = 0;
  v9 = sub_10000E92C();
  sub_100007E30(buf, "LE");
  sub_100007E30(__p, "InputCaps");
  v10 = (*(*v9 + 88))(v9, buf, __p, &v53);
  if (v55 < 0)
  {
    operator delete(__p[0]);
  }

  if (v60 < 0)
  {
    operator delete(*buf);
  }

  if (v10)
  {
    v11 = qword_100BCE908;
    if (os_log_type_enabled(qword_100BCE908, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *&buf[4] = v53;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Warning: Using override value (0x%02x) for LE input capabilities", buf, 8u);
    }

    v3 = v53;
  }

  v12 = sub_10000E92C();
  sub_100007E30(buf, "LE");
  sub_100007E30(__p, "OutputCaps");
  v13 = (*(*v12 + 88))(v12, buf, __p, &v53);
  if (v55 < 0)
  {
    operator delete(__p[0]);
  }

  if (v60 < 0)
  {
    operator delete(*buf);
    if (v13)
    {
      goto LABEL_25;
    }

LABEL_29:
    v15 = 32;
    goto LABEL_30;
  }

  if (!v13)
  {
    goto LABEL_29;
  }

LABEL_25:
  v14 = qword_100BCE908;
  if (os_log_type_enabled(qword_100BCE908, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = v53;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Warning: Using override value (0x%02x) for LE output capabilities", buf, 8u);
  }

  v15 = v53;
LABEL_30:
  v52 = 0;
  v16 = sub_10000E92C();
  sub_100007E30(buf, "LE");
  sub_100007E30(__p, "DisableSSP");
  v17 = (*(*v16 + 72))(v16, buf, __p, &v52);
  v18 = v52;
  if (v55 < 0)
  {
    operator delete(__p[0]);
  }

  v19 = v17 & v18;
  if (v60 < 0)
  {
    operator delete(*buf);
  }

  if (v19)
  {
    v20 = qword_100BCE908;
    if (os_log_type_enabled(qword_100BCE908, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Warning: LE secured connections disabled by defaults write", buf, 2u);
    }
  }

  v51 = 0;
  v21 = sub_10000E92C();
  sub_100007E30(buf, "LE");
  sub_100007E30(__p, "DisableH7");
  v22 = (*(*v21 + 72))(v21, buf, __p, &v51);
  v23 = v51;
  if (v55 < 0)
  {
    operator delete(__p[0]);
  }

  v24 = v22 & v23;
  if (v60 < 0)
  {
    operator delete(*buf);
    if (!v24)
    {
      goto LABEL_46;
    }
  }

  else if (!v24)
  {
    goto LABEL_46;
  }

  v25 = qword_100BCE908;
  if (os_log_type_enabled(qword_100BCE908, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Warning: Disabling LE SMP local H7 support!", buf, 2u);
  }

  sub_1002E82F4();
LABEL_46:
  v50 = 0;
  v26 = sub_10000E92C();
  sub_100007E30(buf, "LE");
  sub_100007E30(__p, "ForceReplyH7");
  v27 = (*(*v26 + 72))(v26, buf, __p, &v50);
  v28 = v50;
  if (v55 < 0)
  {
    operator delete(__p[0]);
  }

  v29 = v27 & v28;
  if (v60 < 0)
  {
    operator delete(*buf);
    if (!v29)
    {
      goto LABEL_55;
    }
  }

  else if (!v29)
  {
    goto LABEL_55;
  }

  v30 = qword_100BCE908;
  if (os_log_type_enabled(qword_100BCE908, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "Warning: Forcing LE SMP to reply with H7!", buf, 2u);
  }

  sub_1002E8304();
LABEL_55:
  v31 = sub_10000E92C();
  sub_100007E30(buf, "LE");
  sub_100007E30(__p, "OverrideInitiatorKeys");
  v32 = (*(*v31 + 88))(v31, buf, __p, &v53);
  if (v53 > 0)
  {
    v33 = v32;
  }

  else
  {
    v33 = 0;
  }

  if (v55 < 0)
  {
    operator delete(__p[0]);
  }

  if (v60 < 0)
  {
    operator delete(*buf);
    if (!v33)
    {
      goto LABEL_67;
    }
  }

  else if (!v33)
  {
    goto LABEL_67;
  }

  v34 = qword_100BCE908;
  v35 = os_log_type_enabled(qword_100BCE908, OS_LOG_TYPE_DEFAULT);
  v36 = v53;
  if (v35)
  {
    *buf = 67109120;
    *&buf[4] = v53;
    _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "Warning: Overriding initiator keys to 0x%0x", buf, 8u);
    v36 = v53;
  }

  sub_1002E82C0(v36);
LABEL_67:
  v37 = sub_10000E92C();
  sub_100007E30(buf, "LE");
  sub_100007E30(__p, "OverrideResponderKeys");
  v38 = (*(*v37 + 88))(v37, buf, __p, &v53);
  if (v53 > 0)
  {
    v39 = v38;
  }

  else
  {
    v39 = 0;
  }

  if (v55 < 0)
  {
    operator delete(__p[0]);
  }

  if (v60 < 0)
  {
    operator delete(*buf);
    if (!v39)
    {
      goto LABEL_79;
    }
  }

  else if (!v39)
  {
    goto LABEL_79;
  }

  v40 = qword_100BCE908;
  v41 = os_log_type_enabled(qword_100BCE908, OS_LOG_TYPE_DEFAULT);
  v42 = v53;
  if (v41)
  {
    *buf = 67109120;
    *&buf[4] = v53;
    _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "Warning: Overriding responder keys to 0x%0x", buf, 8u);
    v42 = v53;
  }

  sub_1002E82D8(v42);
LABEL_79:
  v43 = sub_10000E92C();
  sub_100007E30(buf, "LE");
  sub_100007E30(__p, "OverrideUsePublicAddress");
  v44 = (*(*v43 + 88))(v43, buf, __p, &v53);
  if (v55 < 0)
  {
    operator delete(__p[0]);
  }

  if (v60 < 0)
  {
    operator delete(*buf);
    if (!v44)
    {
      goto LABEL_88;
    }

LABEL_85:
    v45 = qword_100BCE908;
    if (os_log_type_enabled(qword_100BCE908, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *&buf[4] = v53;
      _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "Warning: Overriding use Public Address to %d", buf, 8u);
    }

    sub_1002E82CC(v53 != 0);
    goto LABEL_88;
  }

  if (v44)
  {
    goto LABEL_85;
  }

LABEL_88:
  qword_100B54FB8 = a1;
  if (sub_1002DB3B8(off_100B54FA0, v3, v15, (v52 & 1) == 0, 0))
  {
    if (os_log_type_enabled(qword_100BCE908, OS_LOG_TYPE_ERROR))
    {
      sub_1008785EC();
    }
  }

  else
  {
    qword_100B54FD8 = a1;
    sub_1002DB714(off_100B54FC0);
    if (v46)
    {
      if (os_log_type_enabled(qword_100BCE908, OS_LOG_TYPE_ERROR))
      {
        sub_10087865C();
      }
    }

    else
    {
      qword_100B54FF0 = a1;
      sub_1002DB89C(off_100B54FE0);
      if (v47)
      {
        if (os_log_type_enabled(qword_100BCE908, OS_LOG_TYPE_ERROR))
        {
          sub_1008786CC();
        }
      }

      else if (sub_1002D20C8(1))
      {
        if (os_log_type_enabled(qword_100BCE908, OS_LOG_TYPE_ERROR))
        {
          sub_10087873C();
        }
      }

      else
      {
        sub_100022214(&v57);
        *(a1 + 41) = 1;
        v48 = qword_100BCE908;
        if (os_log_type_enabled(qword_100BCE908, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, "LESecurityManager stackDidStart", buf, 2u);
        }
      }
    }
  }

LABEL_102:
  sub_10002249C(&v57);
  return sub_1000088CC(v58);
}

void sub_1007BC2D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, int a17, __int16 a18, char a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  sub_10002249C(&a20);
  sub_1000088CC(&a21);
  _Unwind_Resume(a1);
}

void sub_1007BC3AC(uint64_t a1, void *a2, int a3)
{
  v5 = a2;
  v6 = sub_100007EE8();
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1007BC480;
  v8[3] = &unk_100AE1228;
  v10 = a1;
  v7 = v5;
  v9 = v7;
  v11 = a3;
  sub_10000CA94(v6, v8);
}

void sub_1007BC480(uint64_t a1)
{
  v2 = *(a1 + 40);
  if ([*(v2 + 3784) containsObject:*(a1 + 32)])
  {
    v3 = qword_100BCE908;
    if (os_log_type_enabled(qword_100BCE908, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 32);
      *buf = 138543362;
      *&buf[4] = v4;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Device %{public}@ was pending BMS unpairing but got disconnected, lets complete unpairing", buf, 0xCu);
    }

    [*(v2 + 3784) removeObject:*(a1 + 32)];
    sub_1007BC6D8(v2, *(a1 + 32), 0);
  }

  else
  {
    v5 = *(a1 + 48);
    if (v5 == 182 || v5 == 179)
    {
      memset(buf, 0, sizeof(buf));
      v16 = 0;
      if (qword_100B508D0 != -1)
      {
        sub_1008784D0();
      }

      sub_1000B006C(off_100B508C8, *(a1 + 32), buf);
      v6 = HIBYTE(v16);
      v7 = SHIBYTE(v16);
      if (v16 < 0)
      {
        v6 = *&buf[8];
      }

      if (v6)
      {
        v8 = qword_100BCE8E8;
        if (os_log_type_enabled(qword_100BCE8E8, OS_LOG_TYPE_DEFAULT))
        {
          v9 = *buf;
          if (v7 >= 0)
          {
            v9 = buf;
          }

          *v13 = 136446210;
          v14 = v9;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Bad or missing keys, re-cloud pairing for device %{public}s", v13, 0xCu);
        }

        v10 = sub_1000E36A0();
        if (SHIBYTE(v16) < 0)
        {
          sub_100008904(__p, *buf, *&buf[8]);
        }

        else
        {
          *__p = *buf;
          v12 = v16;
        }

        (*(*v10 + 56))(v10, __p);
        if (SHIBYTE(v12) < 0)
        {
          operator delete(__p[0]);
        }
      }

      if (SHIBYTE(v16) < 0)
      {
        operator delete(*buf);
      }
    }
  }
}

void sub_1007BC69C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  _Unwind_Resume(exception_object);
}

void sub_1007BC6D8(uint64_t a1, void *a2, int a3)
{
  v5 = a2;
  v6 = *(a1 + 600);
  for (i = *(a1 + 608); v6 != i; ++v6)
  {
    v8 = *v6;
    v9 = sub_100007EE8();
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_1007C4410;
    v21[3] = &unk_100AE1200;
    v23 = v8;
    v22 = v5;
    sub_10000CA94(v9, v21);
  }

  if (qword_100B508D0 != -1)
  {
    sub_100878270();
  }

  v10 = off_100B508C8;
  sub_100007E30(__p, "PrivateModeDevice");
  v11 = sub_10004EB40(v10, v5, __p);
  v12 = v11;
  if (v20 < 0)
  {
    operator delete(__p[0]);
    if (!v12)
    {
      goto LABEL_14;
    }
  }

  else if (!v11)
  {
    goto LABEL_14;
  }

  v13 = qword_100BCE908;
  v14 = os_log_type_enabled(qword_100BCE908, OS_LOG_TYPE_DEFAULT);
  if (v14)
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Device being unpaired is tagged with private mode. Restart rotation of random address", buf, 2u);
  }

  *(a1 + 626) = 0;
  sub_1007C4298(v14, 0);
  if (qword_100B508D0 != -1)
  {
    sub_100878270();
  }

  sub_10078380C(off_100B508C8, v5, @"PrivateModeDevice");
LABEL_14:
  if (qword_100B508B0 != -1)
  {
    sub_100878554();
  }

  sub_10076E7B8(off_100B508A8, v5);
  if (a3)
  {
    if (qword_100B508B0 != -1)
    {
      sub_100878554();
    }

    v15 = off_100B508A8;
    sub_10004DFB4(buf, v5);
    sub_10074CD90(v15, buf, 5u);
    v16 = sub_100007EE8();
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_1007C443C;
    v17[3] = &unk_100ADF820;
    v18 = v5;
    sub_10000CA94(v16, v17);
  }
}

void sub_1007BC9F0(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = qword_100BCE908;
  if (os_log_type_enabled(qword_100BCE908, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543618;
    v8 = v5;
    v9 = 1024;
    v10 = a3;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Device %{public}@ disconnected without link ready with result: %d", &v7, 0x12u);
  }

  (*(*a1 + 64))(a1, v5, a3);
}

uint64_t sub_1007BCB08(uint64_t a1)
{
  v2 = qword_100BCE908;
  if (os_log_type_enabled(qword_100BCE908, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "LeSecurityManager::stackWillStop enter", buf, 2u);
  }

  *buf = 0;
  v17 = 0;
  sub_100007F88(buf, a1 + 48);
  v15 = 0;
  sub_1000216B4(&v15);
  if (sub_1002D359C())
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v3 = *(a1 + 3784);
    v4 = [v3 countByEnumeratingWithState:&v11 objects:v18 count:16];
    if (v4)
    {
      v5 = *v12;
      do
      {
        v6 = 0;
        do
        {
          if (*v12 != v5)
          {
            objc_enumerationMutation(v3);
          }

          v7 = *(*(&v11 + 1) + 8 * v6);
          sub_1007BC6D8(a1, v7, 0);

          v6 = v6 + 1;
        }

        while (v4 != v6);
        v4 = [v3 countByEnumeratingWithState:&v11 objects:v18 count:16];
      }

      while (v4);
    }

    [*(a1 + 3784) removeAllObjects];
    sub_1002DB960(off_100B54FE0);
    sub_1002DB7C8(off_100B54FC0);
    sub_1002DB600(off_100B54FA0);
    sub_1002D20C8(0);
    sub_100022214(&v15);
    *(a1 + 41) = 0;
    [*(a1 + 3760) removeAllObjects];
    sub_1007D0DFC(a1 + 464, *(a1 + 472));
    *(a1 + 464) = a1 + 472;
    *(a1 + 472) = 0u;
    sub_1007D0DFC(a1 + 488, *(a1 + 496));
    *(a1 + 488) = a1 + 496;
    *(a1 + 496) = 0u;
    sub_1007D0DFC(a1 + 512, *(a1 + 520));
    *(a1 + 512) = a1 + 520;
    *(a1 + 520) = 0u;
    sub_1007BCDBC(a1);
    v8 = qword_100BCE908;
    if (os_log_type_enabled(qword_100BCE908, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "LeSecurityManager::stackWillStop exit", v10, 2u);
    }
  }

  sub_10002249C(&v15);
  return sub_1000088CC(buf);
}

void sub_1007BCD70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, char a24)
{
  sub_10002249C(&a23);
  sub_1000088CC(&a24);
  _Unwind_Resume(a1);
}

uint64_t sub_1007BCDBC(uint64_t a1)
{
  v2 = qword_100BCE908;
  if (os_log_type_enabled(qword_100BCE908, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v4) = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Clearing default LTK security keys", &v4, 2u);
  }

  v4 = 0u;
  sub_100007F88(&v4, a1 + 48);
  *(a1 + 560) = 0;
  *(a1 + 536) = 0u;
  *(a1 + 552) = 0;
  return sub_1000088CC(&v4);
}

void sub_1007BCE58(uint64_t a1, unsigned __int8 *a2)
{
  v4 = ((a2[1] << 40) | (a2[2] << 32) | (a2[3] << 24) | (a2[4] << 16) | (a2[5] << 8) | a2[6] | (*a2 << 48));
  v5 = qword_100BCE908;
  if (os_log_type_enabled(qword_100BCE908, OS_LOG_TYPE_DEFAULT))
  {
    sub_10004D9B0();
    v6 = (SBYTE7(v92) & 0x80u) == 0 ? dst : *dst;
    *buf = 136446210;
    v82 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Deriving key for device %{public}s", buf, 0xCu);
    if (SBYTE7(v92) < 0)
    {
      operator delete(*dst);
    }
  }

  v79 = &off_100B01470;
  v80 = 0;
  v7 = *(a1 + 440);
  if (v7 != (a1 + 448))
  {
    v8 = 0;
    while (1)
    {
      sub_10000AE20(&v79, (v7 + 48));
      memset(dst, 0, sizeof(dst));
      uuid_copy(dst, v7 + 32);
      if (qword_100B508D0 != -1)
      {
        sub_100878270();
      }

      v9 = off_100B508C8;
      v10 = sub_10004DF60(dst);
      v11 = sub_100046458(v9, v10, 0);

      if (v4 == v11)
      {
        break;
      }

      v12 = *(v7 + 1);
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
          v13 = *(v7 + 2);
          v14 = *v13 == v7;
          v7 = v13;
        }

        while (!v14);
      }

      v8 |= v4 == v11;
      v7 = v13;
      if (v13 == (a1 + 448))
      {
        if ((v8 & 1) == 0)
        {
          goto LABEL_23;
        }

        break;
      }
    }

    v78 = 0;
    sub_1000216B4(&v78);
    v15 = sub_1000E5EA8(a2);
    sub_100022214(&v78);
    memset(uu, 0, sizeof(uu));
    uuid_clear(uu);
    if (v15)
    {
      if (qword_100B508B0 != -1)
      {
        sub_100878554();
      }

      sub_100748908(off_100B508A8, v15, uu);
    }

    else
    {
      if (qword_100B508D0 != -1)
      {
        sub_100878270();
      }

      sub_1000498D4(off_100B508C8, (a2[1] << 40) | (a2[2] << 32) | (a2[3] << 24) | (a2[4] << 16) | (a2[5] << 8) | a2[6] | (*a2 << 48), 0, 1u, 0, 0, dst);
      uuid_copy(uu, dst);
    }

    if (uuid_is_null(uu))
    {
LABEL_33:
      v76 = 0;
      v77 = 0;
      sub_1000AFFEC(v80, 16, &v76);
      v18 = sub_10000D26C(&v76);
      if (qword_100B508D0 != -1)
      {
        sub_100878270();
      }

      v19 = off_100B508C8;
      v20 = sub_10004DF60(uu);
      v21 = sub_100788ED8(v19, v20);

      v22 = !v18;
      v23 = qword_100BCE908;
      if (os_log_type_enabled(qword_100BCE908, OS_LOG_TYPE_DEFAULT))
      {
        *dst = 67109376;
        *&dst[4] = v21;
        *&dst[8] = 1024;
        *&dst[10] = v22;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "hasTS:%d hasLKLTK:%d", dst, 0xEu);
      }

      if (((v22 | v21) & 1) == 0)
      {
        v29 = qword_100BCE908;
        if (os_log_type_enabled(qword_100BCE908, OS_LOG_TYPE_DEFAULT))
        {
          sub_10004D9B0();
          v30 = (SBYTE7(v92) & 0x80u) == 0 ? dst : *dst;
          *buf = 136446210;
          v82 = v30;
          _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "Device %{public}s is not an Watch and does not have the LKLTK bit set, will not derive a link key for it.", buf, 0xCu);
          if (SBYTE7(v92) < 0)
          {
            operator delete(*dst);
          }
        }

        goto LABEL_66;
      }

      v96 = 0;
      v94 = 0u;
      v95 = 0u;
      v92 = 0u;
      v93 = 0u;
      *dst = 0u;
      v75 = 0;
      v90 = 0uLL;
      v88 = 0uLL;
      v89 = 0;
      sub_1006D1B74(&v88);
      sub_1007B9EFC(a1, &v79, dst);
      v74 = 0;
      sub_1000216B4(&v74);
      v24 = sub_1002DC1FC(&v90, &v75, dst);
      sub_100022214(&v74);
      if (v24 || (v75 & 0xFE) != 2)
      {
        v34 = qword_100BCE908;
        if (os_log_type_enabled(qword_100BCE908, OS_LOG_TYPE_ERROR))
        {
          sub_10004D9B0();
          v56 = v63 >= 0 ? &v62 : v62;
          *buf = 136446722;
          v82 = v56;
          v83 = 1024;
          v84 = v24;
          v85 = 1024;
          v86 = v75;
          _os_log_error_impl(&_mh_execute_header, v34, OS_LOG_TYPE_ERROR, "LE_Security_DeriveLinkKeyForAddress %{public}s with result %{bluetooth:OI_STATUS}u ltkType=%d ", buf, 0x18u);
          if (v63 < 0)
          {
            operator delete(v62);
          }
        }

        goto LABEL_65;
      }

      if (v75 == 2)
      {
        v25 = sub_10000C798();
        v26 = (*(*v25 + 368))(v25);
        if (v26)
        {
          goto LABEL_45;
        }

        if (qword_100B508D0 != -1)
        {
          sub_100878270();
        }

        v21 = off_100B508C8;
        v4 = sub_10004DF60(uu);
        sub_100007E30(__p, "IsAppleWatch");
        if (sub_10004EB40(v21, v4, __p))
        {
LABEL_45:
          v27 = 0;
        }

        else
        {
          if (qword_100B508D0 != -1)
          {
            sub_100878270();
          }

          v57 = off_100B508C8;
          v21 = sub_10004DF60(uu);
          if (!sub_100788ED8(v57, v21))
          {
            v28 = 4;
            v27 = 1;
            goto LABEL_47;
          }

          v27 = 1;
        }

        v28 = 7;
LABEL_47:
        sub_1006D1BAC(buf, &v90, v28);
        sub_1006D1B80(&v88, buf);
        nullsub_21(buf);
        if (v27)
        {
        }

        if ((v26 & 1) == 0)
        {
          if (v73 < 0)
          {
            operator delete(__p[0]);
          }
        }

LABEL_90:
        v40 = qword_100BCE908;
        if (os_log_type_enabled(qword_100BCE908, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "Calling PairingManager::getInstance()->leDevicePaired", buf, 2u);
        }

        if (qword_100B508D0 != -1)
        {
          sub_100878270();
        }

        v41 = off_100B508C8;
        v42 = sub_10004DF60(uu);
        sub_100007E30(v68, "IsAppleWatch");
        if (sub_10004EB40(v41, v42, v68))
        {
          v61 = 1;
        }

        else
        {
          if (qword_100B508D0 != -1)
          {
            sub_100878270();
          }

          v43 = off_100B508C8;
          v44 = sub_10004DF60(uu);
          v61 = sub_100788ED8(v43, v44);
        }

        if (v69 < 0)
        {
          operator delete(v68[0]);
        }

        if (qword_100B50F88 != -1)
        {
          sub_1008787AC();
        }

        v45 = off_100B50F80;
        v60 = a2[1];
        v46 = a2[2];
        v47 = a2[3];
        v48 = a2[4];
        v49 = a2[5];
        v50 = a2[6];
        v51 = *a2;
        sub_1006D1B80(&v87, &v88);
        v59 = v45;
        if (qword_100B508D0 != -1)
        {
          sub_100878270();
        }

        v52 = off_100B508C8;
        v53 = sub_10004DF60(uu);
        sub_10004FFDC(v52, v53, v66);
        sub_1006E03CC(v59, (v60 << 40) | (v46 << 32) | (v47 << 24) | (v48 << 16) | (v49 << 8) | v50 | (v51 << 48), &v87, v66, v61);
        if (v67 < 0)
        {
          operator delete(v66[0]);
        }

        nullsub_21(&v87);
        if (qword_100B508D0 != -1)
        {
          sub_100878270();
        }

        v54 = off_100B508C8;
        v55 = sub_10004DF60(uu);
        sub_100007E30(v64, "_CTKD_");
        sub_10078787C(v54, v55, v64);
        if (v65 < 0)
        {
          operator delete(v64[0]);
        }

LABEL_65:
        sub_10002249C(&v74);
        nullsub_21(&v88);
LABEL_66:
        v76 = &off_100AE0A78;
        if (v77)
        {
          sub_10000C808(v77);
        }

LABEL_73:
        sub_10002249C(&v78);
        goto LABEL_74;
      }

      v36 = sub_10000C798();
      v37 = (*(*v36 + 368))(v36);
      if (v37)
      {
        goto LABEL_82;
      }

      if (qword_100B508D0 != -1)
      {
        sub_100878270();
      }

      v21 = off_100B508C8;
      v4 = sub_10004DF60(uu);
      sub_100007E30(v70, "IsAppleWatch");
      if (sub_10004EB40(v21, v4, v70))
      {
LABEL_82:
        v38 = 0;
      }

      else
      {
        if (qword_100B508D0 != -1)
        {
          sub_100878270();
        }

        v58 = off_100B508C8;
        v21 = sub_10004DF60(uu);
        if (!sub_100788ED8(v58, v21))
        {
          v39 = 5;
          v38 = 1;
          goto LABEL_84;
        }

        v38 = 1;
      }

      v39 = 8;
LABEL_84:
      sub_1006D1BAC(buf, &v90, v39);
      sub_1006D1B80(&v88, buf);
      nullsub_21(buf);
      if (v38)
      {
      }

      if ((v37 & 1) == 0)
      {
        if (v71 < 0)
        {
          operator delete(v70[0]);
        }
      }

      goto LABEL_90;
    }

    memset(dst, 0, sizeof(dst));
    *&v92 = 0;
    if (qword_100B508D0 != -1)
    {
      sub_100878270();
    }

    v31 = off_100B508C8;
    v32 = sub_10004DF60(uu);
    sub_1000B006C(v31, v32, dst);

    v33 = BYTE7(v92);
    if (SBYTE7(v92) < 0)
    {
      if (!*&dst[8])
      {
        operator delete(*dst);
        goto LABEL_33;
      }
    }

    else if (!BYTE7(v92))
    {
      goto LABEL_33;
    }

    v35 = qword_100BCE908;
    if (os_log_type_enabled(qword_100BCE908, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "LE_Security_DeriveLinkKeyForAddress not applicable for cloud paired devices", buf, 2u);
      v33 = BYTE7(v92);
    }

    if (v33 < 0)
    {
      operator delete(*dst);
    }

    goto LABEL_73;
  }

LABEL_23:
  v16 = qword_100BCE908;
  if (os_log_type_enabled(qword_100BCE908, OS_LOG_TYPE_DEFAULT))
  {
    sub_10004D9B0();
    v17 = (SBYTE7(v92) & 0x80u) == 0 ? dst : *dst;
    *buf = 136446210;
    v82 = v17;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Could not find keys for device %{public}s", buf, 0xCu);
    if (SBYTE7(v92) < 0)
    {
      operator delete(*dst);
    }
  }

LABEL_74:
  v79 = &off_100B01470;
  if (v80)
  {
    sub_10000C808(v80);
  }
}

void sub_1007BD9CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, void *__p, uint64_t a35, int a36, __int16 a37, char a38, char a39, void *a40, uint64_t a41, int a42, __int16 a43, char a44, char a45, int a46, __int16 a47, char a48, uint64_t (**a49)(), atomic_uint *a50, int a51, __int16 a52, char a53, char a54, uint64_t a55, atomic_uint *a56, char a57, uint64_t a58, uint64_t a59, uint64_t a60, int a61, char a62)
{
  if (a39 < 0)
  {
    operator delete(__p);
  }

  sub_10002249C(&a48);
  nullsub_21(v64 - 248);
  a49 = &off_100AE0A78;
  if (a50)
  {
    sub_10000C808(a50);
  }

  sub_10002249C(&a54);
  a55 = a12;
  if (a56)
  {
    sub_10000C808(a56);
  }

  _Unwind_Resume(a1);
}

void sub_1007BDBFC(uint64_t a1, void *a2, int a3)
{
  v5 = a2;
  v22[0] = 0;
  v22[1] = 0;
  sub_100007F88(v22, a1 + 48);
  v6 = qword_100BCE908;
  if (os_log_type_enabled(qword_100BCE908, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    *&buf[4] = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Deriving key for device %{public}@", buf, 0xCu);
  }

  if (qword_100B508D0 != -1)
  {
    sub_100878270();
  }

  v7 = sub_100046458(off_100B508C8, v5, 0);
  v20 = 0;
  v21 = 0;
  sub_10004DFB4(buf, v5);
  v18 = buf;
  v8 = *(sub_1007D11F4(a1 + 440, buf) + 56);
  v20 = &off_100B01470;
  v21 = v8;
  if (v8)
  {
    sub_10000C69C(v8);
  }

  v9 = sub_10000C798();
  if ((((*(*v9 + 368))(v9) | a3 ^ 1) & 1) == 0)
  {
    v10 = qword_100BCE908;
    if (os_log_type_enabled(qword_100BCE908, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      *&buf[4] = v5;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Switching derivation method for device %{public}@", buf, 0xCu);
    }

    v18 = 0;
    v19 = 0;
    sub_1000AFFEC(v21, 16, &v18);
    __dst = 1;
    if (!sub_10000D26C(&v18))
    {
      sub_10004B788(&v18, &__dst, 1uLL);
    }

    v11 = qword_100BCE908;
    if (os_log_type_enabled(qword_100BCE908, OS_LOG_TYPE_DEFAULT))
    {
      if (__dst == 1)
      {
        v12 = "6";
      }

      else
      {
        v12 = "7";
      }

      *buf = 138543618;
      *&buf[4] = v5;
      *&buf[12] = 2080;
      *&buf[14] = v12;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Current key derivation method for device %{public}@ is H%s", buf, 0x16u);
      v11 = qword_100BCE908;
    }

    v13 = __dst;
    if (__dst == 2)
    {
      v14 = 1;
    }

    else
    {
      v14 = 2;
    }

    __dst = v14;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      if (v13 == 2)
      {
        v15 = "6";
      }

      else
      {
        v15 = "7";
      }

      *buf = 138543618;
      *&buf[4] = v5;
      *&buf[12] = 2080;
      *&buf[14] = v15;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "New key derivation method for device %{public}@ is H%s", buf, 0x16u);
    }

    v16 = v21;
    sub_10000C704(buf, &__dst, 1uLL);
    sub_100481BF4(v16, 16, buf);
    *buf = &off_100AE0A78;
    if (*&buf[8])
    {
      sub_10000C808(*&buf[8]);
    }

    v18 = &off_100AE0A78;
    if (v19)
    {
      sub_10000C808(v19);
    }
  }

  v17 = sub_10009A66C(v7);
  *buf = v17;
  buf[6] = BYTE6(v17);
  *&buf[4] = WORD2(v17);
  sub_1007BCE58(a1, buf);
  v20 = &off_100B01470;
  if (v21)
  {
    sub_10000C808(v21);
  }

  sub_1000088CC(v22);
}

void sub_1007BDFC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, atomic_uint *a11, uint64_t a12, atomic_uint *a13, char a14, uint64_t a15, uint64_t a16, uint64_t (**a17)(), atomic_uint *a18)
{
  a17 = &off_100AE0A78;
  if (a18)
  {
    sub_10000C808(a18);
  }

  if (a11)
  {
    sub_10000C808(a11);
  }

  if (a13)
  {
    sub_10000C808(a13);
  }

  sub_1000088CC(&a14);

  _Unwind_Resume(a1);
}

void sub_1007BE07C(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  v6 = 0;
  v7 = 0;
  v8 = a1 + 629;
  v9 = a1 + 629;
  do
  {
    v10 = *(a1 + v6 + 645) == *a2 && *(a1 + v6 + 648) == *(a2 + 3);
    if (v10 && *(a1 + v6 + 652) == 1)
    {
      v12 = a1 + v6;
      v13 = a1 + v6 + 629;
      if (*v13 == *a3 && *(v13 + 8) == *(a3 + 8))
      {
        v19 = qword_100BCE908;
        if (os_log_type_enabled(qword_100BCE908, OS_LOG_TYPE_ERROR))
        {
          sub_10004D9B0();
          v20 = v23 >= 0 ? &__p : __p;
          *buf = 136446723;
          v25 = v20;
          v26 = 1041;
          v27 = 16;
          v28 = 2097;
          v29 = a3;
          _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "address %{public}s Incorrect IRK %{private}.16P", buf, 0x1Cu);
          if (v23 < 0)
          {
            operator delete(__p);
          }
        }
      }

      else
      {
        *v13 = *a3;
        *(v12 + 652) = 1;
        if (*(a1 + 41) == 1)
        {
          sub_1007C40B0(a1, a2);
          v15 = *sub_10000C7D0();
          (*(v15 + 368))();
LABEL_22:
          sub_1007BAA64(a1, (v8 + 24 * v7 + 16), (v8 + 24 * v7));
          v16 = (a2[1] << 40) | (a2[2] << 32) | (a2[3] << 24) | (a2[4] << 16) | (a2[5] << 8) | a2[6] | (*a2 << 48);
          v17 = *sub_10000C7D0();
          v18 = (*(v17 + 360))();
          v21 = sub_1007C9980(a1, v16);
          sub_1007BA9FC(v21, v21, v18);
        }
      }

      return;
    }

    ++v7;
    v6 += 24;
  }

  while (v7 != 130);
  v7 = 0;
  while (*(v9 + 23))
  {
    ++v7;
    v9 += 24;
    if (v7 == 130)
    {
      if (os_log_type_enabled(qword_100BCE908, OS_LOG_TYPE_ERROR))
      {
        sub_1008787D4();
      }

      return;
    }
  }

  v11 = *a2;
  *(v9 + 19) = *(a2 + 3);
  *(v9 + 16) = v11;
  *v9 = *a3;
  *(v9 + 23) = 1;
  if (*(a1 + 41))
  {
    goto LABEL_22;
  }
}

void sub_1007BE43C(uint64_t a1)
{
  v25 = +[NSMutableDictionary dictionary];
  v30[0] = 0;
  v30[1] = 0;
  sub_100007F88(v30, a1 + 48);
  v24 = sub_1003CCB64(*(a1 + 3768), 0);
  v2 = qword_100BCE908;
  if (os_log_type_enabled(qword_100BCE908, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [v24 count];
    v4 = [v24 count];
    v5 = "s";
    if (v4 == 1)
    {
      v5 = "";
    }

    *buf = 134218242;
    *&buf[4] = v3;
    *&buf[12] = 2082;
    *&buf[14] = v5;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "init cloud - found %lu paired LE device%{public}s in local keychain", buf, 0x16u);
  }

  if (qword_100B508D0 != -1)
  {
    sub_100878270();
  }

  sub_10078A510(off_100B508C8, v24, 0);
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v6 = v24;
  v7 = [v6 countByEnumeratingWithState:&v26 objects:v34 count:16];
  if (v7)
  {
    v8 = *v27;
    do
    {
      v9 = 0;
      do
      {
        if (*v27 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v26 + 1) + 8 * v9);
        v11 = objc_autoreleasePoolPush();
        v12 = [v6 objectForKeyedSubscript:v10];
        v13 = [v12 unsignedLongLongValue];

        if (sub_1007B849C(a1, v13, v10))
        {
          *uu = 0;
          v33 = 0;
          if (qword_100B508D0 != -1)
          {
            sub_100878270();
          }

          sub_1000498D4(off_100B508C8, v13, 0, 1u, 0, 0, uu);
          if (!uuid_is_null(uu))
          {
            memset(buf, 0, 24);
            if (qword_100B508D0 != -1)
            {
              sub_100878270();
            }

            v14 = off_100B508C8;
            v15 = sub_10004DF60(uu);
            sub_1000B006C(v14, v15, buf);

            if ((buf[23] & 0x80000000) == 0)
            {
              if (!buf[23])
              {
                goto LABEL_28;
              }

              v16 = buf;
              goto LABEL_26;
            }

            if (*&buf[8])
            {
              v16 = *buf;
LABEL_26:
              v17 = [NSString stringWithUTF8String:v16, v24];
              v18 = sub_10004DF60(uu);
              [v25 setObject:v17 forKeyedSubscript:v18];

              if ((buf[23] & 0x80000000) == 0)
              {
                goto LABEL_28;
              }
            }

            operator delete(*buf);
            goto LABEL_28;
          }

          if (uuid_is_null(uu) && os_log_type_enabled(qword_100BCE908, OS_LOG_TYPE_FAULT))
          {
            sub_100063D0C();
            objc_claimAutoreleasedReturnValue();
            sub_1008782EC();
          }
        }

LABEL_28:
        objc_autoreleasePoolPop(v11);
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v6 countByEnumeratingWithState:&v26 objects:v34 count:16];
    }

    while (v7);
  }

  v19 = *(a1 + 424);
  v20 = qword_100BCE908;
  v21 = os_log_type_enabled(qword_100BCE908, OS_LOG_TYPE_DEFAULT);
  if (v19 == 1)
  {
    if (v21)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "CloudPairing is Enabled", buf, 2u);
    }

    v22 = *(a1 + 432);
    if (v22)
    {
      goto LABEL_37;
    }

    v23 = qword_100BCE908;
    if (os_log_type_enabled(qword_100BCE908, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Initialize CloudPairing", buf, 2u);
    }

    v22 = sub_1000E36A0();
    *(a1 + 432) = v22;
    if (v22)
    {
LABEL_37:
      (**v22)(v22, v25);
    }
  }

  else if (v21)
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "CloudPairing is Disabled", buf, 2u);
  }

  sub_1000088CC(v30);
}

void sub_1007BE8CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  sub_1000088CC(&a19);

  _Unwind_Resume(a1);
}

uint64_t sub_1007BE978(void *a1)
{
  v62[0] = 0;
  v62[1] = 0;
  sub_100007F88(v62, (a1 + 6));
  sub_1007BF2A0();
  v2 = a1[55];
  v55 = (a1 + 56);
  if (v2 != (a1 + 56))
  {
    do
    {
      v3 = objc_autoreleasePoolPush();
      *buf = 0;
      *&buf[8] = 0;
      sub_1000AFFEC(*(v2 + 7), 10, buf);
      if (!sub_10000D26C(buf))
      {
        v4 = sub_10000C7D0();
        if (qword_100B508D0 != -1)
        {
          sub_100878270();
        }

        v5 = off_100B508C8;
        v6 = sub_10004DF60(v2 + 32);
        v7 = sub_100046458(v5, v6, 0);
        v8 = sub_10000C5F8(buf);
        v9 = (*(*v4 + 360))(v4, v7, v8, 1);

        sub_1000AFFEC(*(v2 + 7), 11, dst);
        v10 = sub_10000C5F8(dst);
        v11 = sub_10000C5F8(buf);
        sub_1007BAA64(a1, v10, v11);
        *dst = &off_100AE0A78;
        if (*&dst[8])
        {
          sub_10000C808(*&dst[8]);
        }

        v12 = sub_10004DF60(v2 + 32);
        sub_1007BA9FC(v12, v12, v9);
      }

      *buf = &off_100AE0A78;
      if (*&buf[8])
      {
        sub_10000C808(*&buf[8]);
      }

      objc_autoreleasePoolPop(v3);
      v13 = *(v2 + 1);
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
          v14 = *(v2 + 2);
          v15 = *v14 == v2;
          v2 = v14;
        }

        while (!v15);
      }

      v2 = v14;
    }

    while (v14 != v55);
    v2 = a1[55];
  }

  if (v2 != v55)
  {
    *&v1 = 138543362;
    v53 = v1;
    do
    {
      v16 = objc_autoreleasePoolPush();
      memset(dst, 0, sizeof(dst));
      uuid_copy(dst, v2 + 32);
      if (qword_100B508D0 != -1)
      {
        sub_100878270();
      }

      v17 = off_100B508C8;
      v18 = sub_10004DF60(dst);
      sub_100007E30(__p, "_CTKD_");
      v19 = sub_10004EB40(v17, v18, __p);
      if (v61 < 0)
      {
        operator delete(__p[0]);
      }

      if (qword_100B508D0 != -1)
      {
        sub_100878270();
      }

      v20 = off_100B508C8;
      v21 = sub_10004DF60(dst);
      v22 = sub_100788ED8(v20, v21);

      if (qword_100B508D0 != -1)
      {
        sub_100878270();
      }

      v23 = off_100B508C8;
      v24 = sub_10004DF60(dst);
      sub_100007E30(v58, "IsAppleWatch");
      v25 = sub_10004EB40(v23, v24, v58);
      if (v59 < 0)
      {
        operator delete(v58[0]);
      }

      v26 = qword_100BCE908;
      if (os_log_type_enabled(qword_100BCE908, OS_LOG_TYPE_INFO))
      {
        v27 = sub_10004DF60(dst);
        *buf = 138544130;
        *&buf[4] = v27;
        *&buf[12] = 1024;
        *&buf[14] = v19;
        *&buf[18] = 1024;
        *&buf[20] = v22;
        *&buf[24] = 1024;
        *&buf[26] = v25;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, "%{public}@ CTKDTag:%d hasTSTag:%d isAppleWatchTag:%d", buf, 0x1Eu);
      }

      if (!(v19 & 1 | (((v22 | v25) & 1) == 0)))
      {
        v28 = qword_100BCE908;
        if (os_log_type_enabled(qword_100BCE908, OS_LOG_TYPE_DEFAULT))
        {
          v29 = sub_10004DF60(dst);
          *buf = v53;
          *&buf[4] = v29;
          _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Upgrading device %{public}@ to the new CTKD derived LK", buf, 0xCu);
        }

        if (qword_100B508D0 != -1)
        {
          sub_100878270();
        }

        v30 = off_100B508C8;
        v31 = sub_10004DF60(dst);
        v32 = sub_100046458(v30, v31, 0);

        *&buf[3] = 0;
        *buf = 0;
        v33 = sub_10009A66C(v32);
        *buf = v33;
        buf[6] = BYTE6(v33);
        *&buf[4] = WORD2(v33);
        sub_1007BCE58(a1, buf);
      }

      objc_autoreleasePoolPop(v16);
      v34 = *(v2 + 1);
      if (v34)
      {
        do
        {
          v35 = v34;
          v34 = *v34;
        }

        while (v34);
      }

      else
      {
        do
        {
          v35 = *(v2 + 2);
          v15 = *v35 == v2;
          v2 = v35;
        }

        while (!v15);
      }

      v2 = v35;
    }

    while (v35 != v55);
  }

  sub_1002DB10C();
  v36 = a1[71];
  if (v36 != a1 + 72)
  {
    do
    {
      v37 = v36[5];
      if (v37 != (v36 + 6))
      {
        do
        {
          v38 = objc_autoreleasePoolPush();
          memset(uu, 0, sizeof(uu));
          uuid_copy(uu, v37 + 32);
          if (!uuid_is_null(uu))
          {
            if (qword_100B508D0 != -1)
            {
              sub_100878270();
            }

            v39 = off_100B508C8;
            v40 = sub_10004DF60(uu);
            v41 = sub_100046458(v39, v40, 0);

            memset(v57, 0, 7);
            v42 = sub_10009A66C(v41);
            v57[0] = v42;
            BYTE2(v57[1]) = BYTE6(v42);
            LOWORD(v57[1]) = WORD2(v42);
            v56 = 0;
            sub_1000216B4(&v56);
            if (uuid_is_null(uu))
            {
              v43 = 0;
            }

            else
            {
              v43 = v57;
            }

            if (sub_1002DB144(v43, 1))
            {
              v44 = qword_100BCE908;
              if (os_log_type_enabled(qword_100BCE908, OS_LOG_TYPE_ERROR))
              {
                memset(buf, 0, 37);
                uuid_unparse_upper(uu, buf);
                sub_100007E30(dst, buf);
                v47 = dst;
                if (v64 < 0)
                {
                  v47 = *dst;
                }

                *v65 = 136446210;
                v66 = v47;
                _os_log_error_impl(&_mh_execute_header, v44, OS_LOG_TYPE_ERROR, "Failed to re-enable OOB pairing for device %{public}s", v65, 0xCu);
                if (v64 < 0)
                {
                  operator delete(*dst);
                }
              }
            }

            sub_10002249C(&v56);
          }

          objc_autoreleasePoolPop(v38);
          v45 = *(v37 + 1);
          if (v45)
          {
            do
            {
              v46 = v45;
              v45 = *v45;
            }

            while (v45);
          }

          else
          {
            do
            {
              v46 = *(v37 + 2);
              v15 = *v46 == v37;
              v37 = v46;
            }

            while (!v15);
          }

          v37 = v46;
        }

        while (v46 != v36 + 6);
      }

      v48 = v36[1];
      if (v48)
      {
        do
        {
          v49 = v48;
          v48 = *v48;
        }

        while (v48);
      }

      else
      {
        do
        {
          v49 = v36[2];
          v15 = *v49 == v36;
          v36 = v49;
        }

        while (!v15);
      }

      v36 = v49;
    }

    while (v49 != a1 + 72);
  }

  v50 = +[NSMutableArray array];
  v51 = a1[470];
  a1[470] = v50;

  sub_1007BB61C(a1);
  sub_1007BE43C(a1);
  if (sub_1002D359C())
  {
    if (qword_100B508D0 != -1)
    {
      sub_100878270();
    }

    sub_100785D40(off_100B508C8, 0);
  }

  return sub_1000088CC(v62);
}

_BYTE *sub_1007BF2A0()
{
  v0 = qword_100BCE908;
  if (os_log_type_enabled(qword_100BCE908, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_DEFAULT, "Clearing address resolving cache", buf, 2u);
  }

  v2 = 0;
  sub_1000216B4(&v2);
  sub_1002DCA94();
  sub_100022214(&v2);
  return sub_10002249C(&v2);
}

uint64_t sub_1007BF33C(uint64_t a1, uint64_t a2)
{
  v5[0] = 0;
  v5[1] = 0;
  sub_100007F88(v5, a1 + 48);
  *(a1 + 592) = a2;
  return sub_1000088CC(v5);
}

uint64_t sub_1007BF384(void *a1, uint64_t a2)
{
  v19[0] = 0;
  v19[1] = 0;
  sub_100007F88(v19, (a1 + 6));
  v4 = a1[75];
  v5 = a1[76];
  v6 = v4;
  if (v4 != v5)
  {
    while (*v6 != a2)
    {
      if (++v6 == v5)
      {
        goto LABEL_6;
      }
    }
  }

  if (v6 == v5)
  {
LABEL_6:
    v7 = a1[77];
    if (v5 >= v7)
    {
      v9 = v5 - v4;
      if ((v9 + 1) >> 61)
      {
        sub_1000C7698();
      }

      v10 = v7 - v4;
      v11 = v10 >> 2;
      if (v10 >> 2 <= (v9 + 1))
      {
        v11 = v9 + 1;
      }

      if (v10 >= 0x7FFFFFFFFFFFFFF8)
      {
        v12 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v12 = v11;
      }

      if (v12)
      {
        sub_100008108((a1 + 75), v12);
      }

      v13 = (8 * v9);
      *v13 = a2;
      v8 = 8 * v9 + 8;
      v14 = a1[75];
      v15 = a1[76] - v14;
      v16 = v13 - v15;
      memcpy(v13 - v15, v14, v15);
      v17 = a1[75];
      a1[75] = v16;
      a1[76] = v8;
      a1[77] = 0;
      if (v17)
      {
        operator delete(v17);
      }
    }

    else
    {
      *v5 = a2;
      v8 = (v5 + 1);
    }

    a1[76] = v8;
  }

  return sub_1000088CC(v19);
}

uint64_t sub_1007BF4C0(uint64_t a1, uint64_t a2)
{
  v9[0] = 0;
  v9[1] = 0;
  sub_100007F88(v9, a1 + 48);
  v4 = *(a1 + 600);
  v5 = *(a1 + 608);
  if (v4 != v5)
  {
    v6 = *(a1 + 600);
    while (*v6 != a2)
    {
      v6 += 8;
      v4 += 8;
      if (v6 == v5)
      {
        v4 = *(a1 + 608);
        break;
      }
    }
  }

  if (v5 != v4)
  {
    v7 = (v5 - (v4 + 8));
    if (v5 != v4 + 8)
    {
      memmove(v4, v4 + 8, v5 - (v4 + 8));
    }

    *(a1 + 608) = &v7[v4];
  }

  return sub_1000088CC(v9);
}

void sub_1007BF568(uint64_t a1, void *a2, int a3, int a4, int a5)
{
  v9 = a2;
  if (*(a1 + 3750) & 1) != 0 || os_log_type_enabled(qword_100BCE908, OS_LOG_TYPE_FAULT) && (sub_100878850())
  {
    if (*(a1 + 41) == 1)
    {
      sub_100364300(19, 0, v9);
      v10 = qword_100BCE908;
      if (os_log_type_enabled(qword_100BCE908, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138544130;
        v22 = v9;
        v23 = 1024;
        v24 = a3;
        v25 = 1024;
        v26 = a4;
        v27 = 1024;
        v28 = a5;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Initiating pairing to device %{public}@ useMITM=%d distributeIRK=%d disableCTKD=%d", buf, 0x1Eu);
      }

      v20 = 0;
      if (qword_100B508B0 != -1)
      {
        sub_100878554();
      }

      v11 = off_100B508A8;
      sub_10004DFB4(buf, v9);
      if (sub_1000C4FCC(v11, buf, &v20))
      {
        v12 = *(a1 + 456);
        if (v12 >= *(a1 + 3768))
        {
          v17 = qword_100BCE908;
          if (os_log_type_enabled(qword_100BCE908, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 134217984;
            v22 = v12;
            _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Ignoring pairing request as there are too many paired devices (%lu)", buf, 0xCu);
          }

          v19 = 0;
          sub_1000216B4(&v19);
          sub_10029C4C0(v20, 4835);
          sub_100022214(&v19);
          if (qword_100B508B0 != -1)
          {
            sub_100878554();
          }

          v18 = off_100B508A8;
          sub_10004DFB4(buf, v9);
          sub_10074CD90(v18, buf, 8u);
          v16 = &v19;
        }

        else
        {
          if (a5)
          {
            v13 = qword_100BCE908;
            v14 = os_log_type_enabled(qword_100BCE908, OS_LOG_TYPE_DEFAULT);
            if (v14)
            {
              *buf = 138543362;
              v22 = v9;
              _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Disabling CTKD for device %{public}@", buf, 0xCu);
            }

            sub_1007BF8F0(v14, v9, 1);
          }

          buf[0] = 0;
          sub_1000216B4(buf);
          if ((a4 & 1) == 0)
          {
            sub_1002E82C0(1);
          }

          v15 = sub_1002D2100(v20, a3);
          sub_100022214(buf);
          if (v15 && os_log_type_enabled(qword_100BCE908, OS_LOG_TYPE_ERROR))
          {
            sub_100878940();
          }

          v16 = buf;
        }

        sub_10002249C(v16);
      }

      else if (os_log_type_enabled(qword_100BCE908, OS_LOG_TYPE_ERROR))
      {
        sub_1008788D0();
      }
    }
  }

  else if (os_log_type_enabled(qword_100BCE908, OS_LOG_TYPE_ERROR))
  {
    sub_100878894();
  }
}

void sub_1007BF8A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10002249C(va);

  _Unwind_Resume(a1);
}

void sub_1007BF8F0(uint64_t a1, void *a2, int a3)
{
  v4 = a2;
  v5 = qword_100BCE908;
  if (os_log_type_enabled(qword_100BCE908, OS_LOG_TYPE_DEFAULT))
  {
    v6 = "enable";
    if (a3)
    {
      v6 = "disable";
    }

    *buf = 136446466;
    v10 = v6;
    v11 = 2114;
    v12 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Warning: Trying to %{public}s CTKD for device %{public}@", buf, 0x16u);
  }

  v8 = 0;
  if (qword_100B508B0 != -1)
  {
    sub_100878554();
  }

  v7 = off_100B508A8;
  sub_10004DFB4(buf, v4);
  if (sub_1000C4FCC(v7, buf, &v8))
  {
    buf[0] = 0;
    sub_1000216B4(buf);
    sub_1002E832C(v8, a3);
    sub_10002249C(buf);
  }

  else if (os_log_type_enabled(qword_100BCE908, OS_LOG_TYPE_ERROR))
  {
    sub_1008789B0();
  }
}

void sub_1007BFA54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10002249C(va);

  _Unwind_Resume(a1);
}

void sub_1007BFA80(uint64_t a1, void *a2, int a3, unsigned int a4)
{
  v7 = a2;
  if (*(a1 + 3750) & 1) != 0 || os_log_type_enabled(qword_100BCE908, OS_LOG_TYPE_FAULT) && (sub_100878850())
  {
    if (*(a1 + 41) == 1)
    {
      if (qword_100B508D0 != -1)
      {
        sub_100878270();
      }

      v8 = sub_100046458(off_100B508C8, v7, 0);
      v9 = sub_10009A66C(v8);
      v15 = v9;
      v17 = BYTE6(v9);
      v16 = WORD2(v9);
      if (a3)
      {
        v10 = qword_100BCE908;
        v11 = os_log_type_enabled(qword_100BCE908, OS_LOG_TYPE_DEFAULT);
        if (a4)
        {
          if (v11)
          {
            v12 = sub_100063D0C();
            *buf = 67109634;
            *v19 = a4;
            *&v19[4] = 2114;
            *&v19[6] = v7;
            *&v19[14] = 2114;
            *&v19[16] = v12;
            _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Accepting pairing request with passkey %u from device %{public}@ (%{public}@)", buf, 0x1Cu);
          }
        }

        else if (v11)
        {
          v14 = sub_100063D0C();
          *buf = 138543618;
          *v19 = v7;
          *&v19[8] = 2114;
          *&v19[10] = v14;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Accepting pairing request from device %{public}@(%{public}@)", buf, 0x16u);
        }

        buf[0] = 0;
        sub_1000216B4(buf);
        if (sub_1002DF950(&v15, a4))
        {
          if (os_log_type_enabled(qword_100BCE908, OS_LOG_TYPE_ERROR))
          {
            sub_100878A90();
          }

          sub_1002DF704(&v15);
        }
      }

      else
      {
        v13 = qword_100BCE908;
        if (os_log_type_enabled(qword_100BCE908, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          *v19 = v7;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Rejecting pairing request from device %{public}@", buf, 0xCu);
        }

        buf[0] = 0;
        sub_1000216B4(buf);
        if (sub_1002DF704(&v15) && os_log_type_enabled(qword_100BCE908, OS_LOG_TYPE_ERROR))
        {
          sub_100878A20();
        }
      }

      sub_10002249C(buf);
    }
  }

  else if (os_log_type_enabled(qword_100BCE908, OS_LOG_TYPE_ERROR))
  {
    sub_100878894();
  }
}

void sub_1007BFDAC(uint64_t a1, unint64_t a2, void *a3, int a4, uint64_t a5)
{
  v46 = a2;
  v8 = a3;
  if (*(a1 + 3750) & 1) != 0 || os_log_type_enabled(qword_100BCE908, OS_LOG_TYPE_FAULT) && (sub_100878850())
  {
    if (*(a1 + 41) == 1)
    {
      if (qword_100B508D0 != -1)
      {
        sub_100878270();
      }

      v9 = sub_100046458(off_100B508C8, v8, 0);
      v10 = sub_10009A66C(v9);
      v43 = v10;
      v45 = BYTE6(v10);
      v44 = WORD2(v10);
      if (a4)
      {
        v42[0] = 0;
        v42[1] = 0;
        sub_100007F88(v42, a1 + 48);
        v41 = 0;
        sub_1000216B4(&v41);
        *uu = &v46;
        v11 = sub_10041F204(a1 + 568, &v46);
        sub_10004DFB4(uu, v8);
        v12 = sub_10004E34C((v11 + 5), uu);
        if ((v11 + 6 == v12 || (v13 = *(v12 + 48)) == 0) && ((uuid_clear(uu), v14 = sub_10004E34C((v11 + 5), uu), v11 + 6 == v14) || (v13 = *(v14 + 48)) == 0))
        {
          v33 = qword_100BCE908;
          if (os_log_type_enabled(qword_100BCE908, OS_LOG_TYPE_DEFAULT))
          {
            v34 = sub_100063D0C();
            *uu = 138543618;
            *&uu[4] = v8;
            *&uu[12] = 2114;
            *&uu[14] = v34;
            _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "Accepting out-of-band pairing request from device %{public}@ (%{public}@) with remote keys", uu, 0x16u);
          }

          v28 = sub_1002E7A68(&v43, a5, (a5 + 16), 0);
        }

        else
        {
          v15 = v13[1];
          *uu = *v13;
          *&uu[16] = v15;
          v16 = *(a5 + 8);
          v24 = *a5 == *uu;
          v17 = v13[2];
          v18 = v13[3];
          v19 = v13[5];
          v54 = v13[4];
          v55 = v19;
          v52 = v17;
          v53 = v18;
          v20 = v13[7];
          v56 = v13[6];
          v57 = v20;
          v21 = v13[11];
          v23 = v13[8];
          v22 = v13[9];
          v60 = v13[10];
          v61 = v21;
          v24 = v24 && v16 == *&uu[8];
          v58 = v23;
          v59 = v22;
          if (v24 && (*(a5 + 16) == *&uu[16] ? (v25 = *(a5 + 24) == *&uu[24]) : (v25 = 0), v25))
          {
            v37 = qword_100BCE908;
            if (os_log_type_enabled(qword_100BCE908, OS_LOG_TYPE_DEFAULT))
            {
              v38 = sub_100063D0C();
              *buf = 138543618;
              v48 = v8;
              v49 = 2114;
              v50 = v38;
              _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "Accepting out-of-band pairing request from device %{public}@ (%{public}@) with locally generated key bundle", buf, 0x16u);
            }

            v28 = sub_1002E7A68(&v43, 0, 0, uu);
          }

          else
          {
            v26 = qword_100BCE908;
            if (os_log_type_enabled(qword_100BCE908, OS_LOG_TYPE_DEFAULT))
            {
              v27 = sub_100063D0C();
              *buf = 138543618;
              v48 = v8;
              v49 = 2114;
              v50 = v27;
              _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Accepting out-of-band pairing request from device %{public}@ (%{public}@) with locally generated key bundle for 2-way OOB", buf, 0x16u);
            }

            v28 = sub_1002E7A68(&v43, a5, (a5 + 16), uu);
          }
        }

        v35 = v28;
        if (v28)
        {
          v36 = qword_100BCE908;
          if (os_log_type_enabled(qword_100BCE908, OS_LOG_TYPE_ERROR))
          {
            v40 = sub_100063D0C();
            *uu = 138543874;
            *&uu[4] = v8;
            *&uu[12] = 2114;
            *&uu[14] = v40;
            *&uu[22] = 1024;
            *&uu[24] = v35;
            _os_log_error_impl(&_mh_execute_header, v36, OS_LOG_TYPE_ERROR, "Failed to accept pairing for device %{public}@ (%{public}@) with result %{bluetooth:OI_STATUS}u - cancelling...", uu, 0x1Cu);
          }

          sub_1002DF704(&v43);
        }

        sub_10002249C(&v41);
        sub_1000088CC(v42);
      }

      else
      {
        v29 = qword_100BCE908;
        if (os_log_type_enabled(qword_100BCE908, OS_LOG_TYPE_DEFAULT))
        {
          v30 = sub_100063D0C();
          *uu = 138543618;
          *&uu[4] = v8;
          *&uu[12] = 2114;
          *&uu[14] = v30;
          _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "Rejecting out-of-band pairing request from device %{public}@ (%{public}@)", uu, 0x16u);
        }

        buf[0] = 0;
        sub_1000216B4(buf);
        v31 = sub_1002DF704(&v43);
        if (v31)
        {
          v32 = qword_100BCE908;
          if (os_log_type_enabled(qword_100BCE908, OS_LOG_TYPE_ERROR))
          {
            v39 = sub_100063D0C();
            *uu = 138543874;
            *&uu[4] = v8;
            *&uu[12] = 2114;
            *&uu[14] = v39;
            *&uu[22] = 1024;
            *&uu[24] = v31;
            _os_log_error_impl(&_mh_execute_header, v32, OS_LOG_TYPE_ERROR, "Failed to cancel pairing to device %{public}@ (%{public}@) with result %{bluetooth:OI_STATUS}u", uu, 0x1Cu);
          }
        }

        sub_10002249C(buf);
      }
    }
  }

  else if (os_log_type_enabled(qword_100BCE908, OS_LOG_TYPE_ERROR))
  {
    sub_100878894();
  }
}

void sub_1007C0318(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, char a14)
{
  sub_10002249C(&a13);
  sub_1000088CC(&a14);

  _Unwind_Resume(a1);
}

uint64_t sub_1007C0394(uint64_t a1, uint64_t a2, void *a3)
{
  v7[2] = a2;
  v4 = a3;
  memset(v8, 0, sizeof(v8));
  v7[0] = 0;
  v7[1] = 0;
  sub_100007F88(v7, a1 + 48);
  v6 = 0;
  sub_1000216B4(&v6);
  if (!sub_1002E78E8(v8))
  {
    operator new();
  }

  if (os_log_type_enabled(qword_100BCE908, OS_LOG_TYPE_ERROR))
  {
    sub_100878B00();
  }

  sub_10002249C(&v6);
  sub_1000088CC(v7);

  return 0;
}

void sub_1007C0694(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, __int16 a10, char a11, char a12, char a13)
{
  sub_10002249C(&a12);
  sub_1000088CC(&a13);

  _Unwind_Resume(a1);
}

void sub_1007C06E0(uint64_t a1, unint64_t a2, void *a3, char a4)
{
  v16 = a2;
  v6 = a3;
  v15[0] = 0;
  v15[1] = 0;
  sub_100007F88(v15, a1 + 48);
  *buf = &v16;
  v7 = sub_10041F204(a1 + 568, &v16);
  sub_10004DFB4(buf, v6);
  v17 = buf;
  v8 = sub_1007D134C((v7 + 5), buf);
  *(v8 + 56) = a4;
  if (a4)
  {
    v9 = qword_100BCE908;
    v10 = os_log_type_enabled(qword_100BCE908, OS_LOG_TYPE_DEFAULT);
    if (v6)
    {
      if (v10)
      {
        *buf = 138543362;
        *&buf[4] = v6;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Enabling out-of-band pairing for device %{public}@", buf, 0xCu);
      }

      if (qword_100B508D0 != -1)
      {
        sub_100878270();
      }

      v11 = sub_100046458(off_100B508C8, v6, 0);
    }

    else
    {
      if (v10)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Enabling out-of-band pairing for all devices", buf, 2u);
      }

      v11 = 0;
    }

    v13 = sub_10009A66C(v11);
    *buf = v13;
    buf[6] = BYTE6(v13);
    *&buf[4] = WORD2(v13);
    LOBYTE(v17) = 0;
    sub_1000216B4(&v17);
    if (v6)
    {
      v14 = buf;
    }

    else
    {
      v14 = 0;
    }

    if (sub_1002DB144(v14, 1) && os_log_type_enabled(qword_100BCE908, OS_LOG_TYPE_ERROR))
    {
      sub_100878B70();
    }

    sub_10002249C(&v17);
  }

  else
  {
    if (!*(v8 + 48))
    {
      sub_10004DFB4(buf, v6);
      v12 = sub_10004E34C((v7 + 5), buf);
      sub_10002717C(v7 + 5, v12);
      operator delete(v12);
    }

    sub_1007C0980(a1, v6);
  }

  sub_1000088CC(v15);
}

void sub_1007C0930(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1000088CC(va);

  _Unwind_Resume(a1);
}

void sub_1007C0980(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 568);
  if (v4 == (a1 + 576))
  {
LABEL_21:
    if (*(a1 + 41) != 1)
    {
      goto LABEL_39;
    }

    v22 = 0;
    sub_1000216B4(&v22);
    v14 = qword_100BCE908;
    v15 = os_log_type_enabled(qword_100BCE908, OS_LOG_TYPE_DEFAULT);
    if (v3)
    {
      if (v15)
      {
        *buf = 138543362;
        v24 = v3;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Disabling out-of-band pairing for device %{public}@", buf, 0xCu);
      }

      if (qword_100B508D0 != -1)
      {
        sub_100878270();
      }

      v16 = sub_100046458(off_100B508C8, v3, 0);
      v17 = sub_10009A66C(v16);
      *buf = v17;
      BYTE2(v24) = BYTE6(v17);
      LOWORD(v24) = WORD2(v17);
      v18 = sub_1002DB144(buf, 0);
      if (v18 != 120)
      {
        goto LABEL_35;
      }

      if (qword_100B508D0 != -1)
      {
        sub_100878270();
      }

      v19 = sub_100046458(off_100B508C8, v3, 1);
      v20 = sub_10009A66C(v19);
      *buf = v20;
      BYTE2(v24) = BYTE6(v20);
      LOWORD(v24) = WORD2(v20);
      v21 = sub_1002DB144(buf, 0);
    }

    else
    {
      if (v15)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Disabling out-of-band pairing for all devices", buf, 2u);
      }

      v21 = sub_1002DB144(0, 0);
    }

    v18 = v21;
LABEL_35:
    if (v18 && os_log_type_enabled(qword_100BCE908, OS_LOG_TYPE_ERROR))
    {
      sub_100878BE0();
    }

    sub_10002249C(&v22);
    goto LABEL_39;
  }

  v5 = 1;
  do
  {
    v6 = v4[5];
    if (v6 == (v4 + 6))
    {
      goto LABEL_14;
    }

    while (1)
    {
      v7 = sub_10004DF60(v6 + 32);
      if (![v3 isEqual:v7])
      {

        goto LABEL_8;
      }

      v8 = v6[56];

      if (v8)
      {
        break;
      }

LABEL_8:
      v9 = *(v6 + 1);
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
          v10 = *(v6 + 2);
          v11 = *v10 == v6;
          v6 = v10;
        }

        while (!v11);
      }

      v6 = v10;
      if (v10 == v4 + 6)
      {
        goto LABEL_14;
      }
    }

    v5 = 0;
LABEL_14:
    v12 = v4[1];
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
        v13 = v4[2];
        v11 = *v13 == v4;
        v4 = v13;
      }

      while (!v11);
    }

    v4 = v13;
  }

  while (v13 != (a1 + 576));
  if (v5)
  {
    goto LABEL_21;
  }

LABEL_39:
}

void sub_1007C0C54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13)
{
  sub_10002249C(&a13);

  _Unwind_Resume(a1);
}

uint64_t sub_1007C0C98(uint64_t a1, unint64_t a2)
{
  v16[0] = 0;
  v16[1] = 0;
  sub_100007F88(v16, a1 + 48);
  v4 = *(a1 + 576);
  if (v4)
  {
    v5 = a1 + 576;
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
    if (v5 != a1 + 576 && *(v5 + 32) <= a2)
    {
      v9 = *(v5 + 40);
      if (v9 != (v5 + 48))
      {
        do
        {
          memset(dst, 0, sizeof(dst));
          uuid_copy(dst, v9 + 32);
          if (*(v9 + 6))
          {
            operator delete();
          }

          v10 = *(v9 + 1);
          v11 = v9;
          if (v10)
          {
            do
            {
              v12 = v10;
              v10 = *v10;
            }

            while (v10);
          }

          else
          {
            do
            {
              v12 = *(v11 + 2);
              v13 = *v12 == v11;
              v11 = v12;
            }

            while (!v13);
          }

          sub_10002717C((v5 + 40), v9);
          operator delete(v9);
          v14 = sub_10004DF60(dst);
          sub_1007C0980(a1, v14);

          v9 = v12;
        }

        while (v12 != (v5 + 48));
      }

      sub_100480394((a1 + 568), v5);
    }
  }

  return sub_1000088CC(v16);
}

void sub_1007C0E1C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

id sub_1007C0E4C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, const std::string *a5)
{
  v26[0] = 0;
  v26[1] = 0;
  sub_100007F88(v26, a1 + 48);
  v10 = *(a1 + 456);
  if (v10 >= *(a1 + 3768))
  {
    v11 = qword_100BCE908;
    if (os_log_type_enabled(qword_100BCE908, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      *&buf[4] = v10;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Too many paired devices (%lu), but cloud paired devices are allowed", buf, 0xCu);
    }
  }

  *buf = 0uLL;
  sub_1000AFFEC(*(a4 + 8), 10, buf);
  *uu2 = 0;
  v28 = 0;
  if (qword_100B508D0 != -1)
  {
    sub_100878270();
  }

  v12 = off_100B508C8;
  if (sub_10000D26C(buf))
  {
    v13 = 0;
  }

  else
  {
    v13 = sub_10000C5F8(buf);
  }

  sub_1000498D4(v12, a2, 1u, 0, 0, v13, uu2);
  if (qword_100B508D0 != -1)
  {
    sub_100878270();
  }

  v14 = off_100B508C8;
  if (*(a3 + 23) < 0)
  {
    sub_100008904(__p, *a3, *(a3 + 8));
  }

  else
  {
    *__p = *a3;
    v25 = *(a3 + 16);
  }

  sub_100783194(v14, uu2, __p, 2);
  if (SHIBYTE(v25) < 0)
  {
    operator delete(__p[0]);
  }

  if (a1 + 472 != sub_10004E34C(a1 + 464, uu2))
  {
    v15 = qword_100BCE908;
    if (os_log_type_enabled(qword_100BCE908, OS_LOG_TYPE_FAULT))
    {
      sub_100878C50(v15, v16, v17);
    }
  }

  v26[3] = uu2;
  v18 = sub_1007D0F4C(a1 + 464, uu2);
  sub_10000AE20(v18 + 48, a4);
  if (qword_100B508D0 != -1)
  {
    sub_100878270();
  }

  v19 = off_100B508C8;
  v20 = sub_10004DF60(uu2);
  v21 = sub_100046458(v19, v20, 0);
  sub_1007C11A4(a1, v21, a2, 0, a5);

  v22 = sub_10004DF60(uu2);
  *buf = &off_100AE0A78;
  if (*&buf[8])
  {
    sub_10000C808(*&buf[8]);
  }

  sub_1000088CC(v26);

  return v22;
}

void sub_1007C112C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t (**a22)(), atomic_uint *a23)
{
  a22 = &off_100AE0A78;
  if (a23)
  {
    sub_10000C808(a23);
  }

  sub_1000088CC(&a16);
  _Unwind_Resume(a1);
}

void sub_1007C11A4(uint64_t a1, unint64_t a2, unint64_t a3, int a4, const std::string *a5)
{
  memset(uu, 0, sizeof(uu));
  uuid_clear(uu);
  if (*(a1 + 41) == 1)
  {
    v10 = sub_10009A66C(a2);
    *src = v10;
    src[6] = BYTE6(v10);
    *&src[4] = WORD2(v10);
    LOBYTE(v74) = 0;
    sub_1000216B4(&v74);
    v11 = sub_1000E5EA8(src);
    sub_100022214(&v74);
    if (v11)
    {
      if (qword_100B508B0 != -1)
      {
        sub_100878554();
      }

      sub_100748908(off_100B508A8, v11, uu);
    }

    sub_10002249C(&v74);
  }

  if (uuid_is_null(uu))
  {
    if (qword_100B508D0 != -1)
    {
      sub_100878270();
    }

    sub_1000498D4(off_100B508C8, a2, 0, 1u, 0, 0, src);
    uuid_copy(uu, src);
    if (uuid_is_null(uu))
    {
      if (qword_100B508D0 != -1)
      {
        sub_100878270();
      }

      sub_1000498D4(off_100B508C8, a3, 0, 1u, 0, 0, src);
      uuid_copy(uu, src);
    }
  }

  v12 = qword_100BCE908;
  if (os_log_type_enabled(qword_100BCE908, OS_LOG_TYPE_INFO))
  {
    v13 = sub_100063D0C();
    *src = 138543618;
    *&src[4] = v13;
    *&src[12] = 1024;
    *&src[14] = a4;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Device %{public}@ finished pairing with status  %{bluetooth:OI_STATUS}u", src, 0x12u);
  }

  if (!uuid_is_null(uu))
  {
    v69[0] = 0;
    v69[1] = 0;
    sub_100007F88(v69, a1 + 48);
    v56 = sub_10004E34C(a1 + 464, uu);
    if (a4)
    {
      if (a4 != 4832)
      {
        if (os_log_type_enabled(qword_100BCE908, OS_LOG_TYPE_ERROR))
        {
          sub_1000D67B4(uu, src);
          sub_100878DC4();
        }

        if (a4 == 4808 && a3)
        {
          buf = 0uLL;
          if (qword_100B508D0 != -1)
          {
            sub_100878270();
          }

          sub_1000498D4(off_100B508C8, a3, 0, 1u, 0, 0, &buf);
          if (uuid_is_null(&buf) && os_log_type_enabled(qword_100BCE908, OS_LOG_TYPE_FAULT))
          {
            sub_100878E40();
          }

          if (!uuid_is_null(&buf))
          {
            if (qword_100B508D0 != -1)
            {
              sub_100878270();
            }

            v52 = off_100B508C8;
            v53 = sub_10004DF60(uu);
            v54 = sub_10004DF60(&buf);
            sub_10078A8AC(v52, v53, v54);
          }
        }

        if ((a1 + 472) != v56)
        {
          sub_1007D1478((a1 + 464), v56);
        }

        if (qword_100B50900 != -1)
        {
          sub_100878E74();
        }

        sub_10070F8FC(qword_100B508F8, 0, uu);
      }

      if ((a1 + 472) != v56)
      {
        sub_1007D1478((a1 + 464), v56);
      }

      if (qword_100B508D0 != -1)
      {
        sub_100878270();
      }

      v16 = off_100B508C8;
      v17 = sub_10004DF60(uu);
      sub_100007E30(__p, "_UNPAIR_AFTER_DISCONNECTION_");
      sub_10078787C(v16, v17, __p);
      if (v68 < 0)
      {
        operator delete(__p[0]);
      }

      v18 = sub_10004DF60(uu);
      sub_1007C9134(a1, v18);

      sub_1007C8608(a1);
    }

    v19 = qword_100BCE908;
    if (os_log_type_enabled(qword_100BCE908, OS_LOG_TYPE_DEFAULT))
    {
      memset(src, 0, 37);
      uuid_unparse_upper(uu, src);
      sub_100007E30(&v74, src);
      v20 = v76 >= 0 ? &v74 : v74;
      LODWORD(buf) = 136446210;
      *(&buf + 4) = v20;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Pairing succeeded to device %{public}s", &buf, 0xCu);
      if (v76 < 0)
      {
        operator delete(v74);
      }
    }

    if (qword_100B508D0 != -1)
    {
      sub_100878270();
    }

    v21 = off_100B508C8;
    v22 = sub_10004DF60(uu);
    sub_100789594(v21, v22, a5);

    if (qword_100B508D0 != -1)
    {
      sub_100878270();
    }

    v23 = off_100B508C8;
    v24 = sub_10004DF60(uu);
    sub_10078C720(v23, v24, 1, 2, 0);

    sub_1007C7480(a1, uu);
    if ((a1 + 472) != v56)
    {
      v25 = v56[7];
      *&buf = &off_100B01470;
      *(&buf + 1) = v25;
      if (v25)
      {
        sub_10000C69C(v25);
      }

      if (a3)
      {
        sub_1000AFFEC(*(&buf + 1), 11, src);
        v26 = *(sub_10000C5F8(src) + 1);
        sub_1000AFFEC(*(&buf + 1), 11, &v74);
        v27 = *(sub_10000C5F8(&v74) + 2);
        sub_1000AFFEC(*(&buf + 1), 11, &v65);
        v55 = a3;
        v28 = *(sub_10000C5F8(&v65) + 3);
        sub_1000AFFEC(*(&buf + 1), 11, &v63);
        v29 = *(sub_10000C5F8(&v63) + 4);
        sub_1000AFFEC(*(&buf + 1), 11, &v71);
        v30 = *(sub_10000C5F8(&v71) + 5);
        sub_1000AFFEC(*(&buf + 1), 11, &v61);
        v31 = *(sub_10000C5F8(&v61) + 6);
        sub_1000AFFEC(*(&buf + 1), 11, &v59);
        v32 = v26 << 40;
        v33 = *sub_10000C5F8(&v59);
        v59 = &off_100AE0A78;
        if (v60)
        {
          sub_10000C808(v60);
        }

        v34 = v32 | (v27 << 32);
        v61 = &off_100AE0A78;
        if (v62)
        {
          sub_10000C808(v62);
        }

        v35 = v34 | (v28 << 24);
        v71 = &off_100AE0A78;
        if (v72)
        {
          sub_10000C808(v72);
        }

        v36 = v35 | (v29 << 16);
        v63 = &off_100AE0A78;
        if (v64)
        {
          sub_10000C808(v64);
        }

        v37 = v36 | (v30 << 8);
        v65 = &off_100AE0A78;
        if (v66)
        {
          sub_10000C808(v66);
        }

        v38 = v37 | v31;
        v74 = &off_100AE0A78;
        if (v75)
        {
          sub_10000C808(v75);
        }

        v39 = v38 | (v33 << 48);
        *src = &off_100AE0A78;
        if (*&src[8])
        {
          sub_10000C808(*&src[8]);
        }

        if (v39 != v55)
        {
          v40 = qword_100BCE908;
          if (os_log_type_enabled(qword_100BCE908, OS_LOG_TYPE_FAULT))
          {
            v41 = sub_100063D0C();
            v42 = sub_100063D0C();
            sub_100878CCC(v41, v42, &v74, v40);
          }
        }

        sub_1000AFFEC(*(&buf + 1), 10, src);
        v43 = sub_10000D26C(src);
        *src = &off_100AE0A78;
        if (*&src[8])
        {
          sub_10000C808(*&src[8]);
        }

        if (v43)
        {
          v44 = qword_100BCE908;
          if (os_log_type_enabled(qword_100BCE908, OS_LOG_TYPE_FAULT))
          {
            v45 = sub_100063D0C();
            sub_100878D54(v45, &v71, v44);
          }
        }

        if (qword_100B508D0 != -1)
        {
          sub_100878270();
        }

        sub_10078AFD0(off_100B508C8, uu, v55, 1);
        if (*(a1 + 41) == 1)
        {
          if (qword_100B508D0 != -1)
          {
            sub_100878270();
          }

          v46 = off_100B508C8;
          v47 = sub_10004DF60(uu);
          sub_100007E30(v57, "IsAppleWatch");
          if (sub_10004EB40(v46, v47, v57))
          {
            v48 = 1;
          }

          else
          {
            if (qword_100B508D0 != -1)
            {
              sub_100878270();
            }

            v49 = off_100B508C8;
            v50 = sub_10004DF60(uu);
            v48 = sub_100788ED8(v49, v50);
          }

          if (v58 < 0)
          {
            operator delete(v57[0]);
          }

          if (v48)
          {
            if (qword_100B508D0 != -1)
            {
              sub_100878270();
            }

            sub_10078ADE4(off_100B508C8, uu, v55);
            sub_100007EE8();
            operator new();
          }

          sub_100007EE8();
          operator new();
        }
      }

      *src = uu;
      v51 = sub_1007D0F4C(a1 + 440, uu);
      sub_10000AE20(v51 + 48, &buf);
      sub_1007D1478((a1 + 464), v56);
      sub_100007EE8();
      operator new();
    }

    *src = 0;
    *&src[8] = 0;
    operator new();
  }

  v14 = qword_100BCE908;
  if (os_log_type_enabled(qword_100BCE908, OS_LOG_TYPE_INFO))
  {
    v15 = sub_100063D0C();
    *src = 138543362;
    *&src[4] = v15;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "Device %{public}@ finished pairing but wasn't being tracked by device manager, ignoring this event", src, 0xCu);
  }
}

uint64_t sub_1007C2828(uint64_t a1, const void **a2)
{
  v22[0] = 0;
  v22[1] = 0;
  sub_100007F88(v22, a1 + 48);
  if ((*(a2 + 23) & 0x8000000000000000) != 0)
  {
    if (a2[1])
    {
      goto LABEL_3;
    }

LABEL_32:
    if (os_log_type_enabled(qword_100BCE908, OS_LOG_TYPE_FAULT))
    {
      sub_100878F1C();
    }

    goto LABEL_34;
  }

  if (!*(a2 + 23))
  {
    goto LABEL_32;
  }

LABEL_3:
  v4 = *(a1 + 440);
  if (v4 != (a1 + 448))
  {
    while (1)
    {
      memset(dst, 0, sizeof(dst));
      uuid_copy(dst, v4 + 32);
      if (qword_100B508D0 != -1)
      {
        sub_100878270();
      }

      v5 = off_100B508C8;
      v6 = sub_10004DF60(dst);
      sub_1000B006C(v5, v6, __p);
      v7 = v21;
      if ((v21 & 0x80u) == 0)
      {
        v8 = v21;
      }

      else
      {
        v8 = __p[1];
      }

      v9 = *(a2 + 23);
      v10 = v9;
      if (v9 < 0)
      {
        v9 = a2[1];
      }

      if (v8 != v9)
      {
        break;
      }

      if ((v21 & 0x80u) == 0)
      {
        v11 = __p;
      }

      else
      {
        v11 = __p[0];
      }

      if (v10 >= 0)
      {
        v12 = a2;
      }

      else
      {
        v12 = *a2;
      }

      v13 = memcmp(v11, v12, v8) == 0;
      if (v7 < 0)
      {
        goto LABEL_21;
      }

LABEL_22:

      if (v13)
      {
        v19 = sub_10004DF60(dst);
        sub_1007C2AA4(a1, v19);

        v17 = 1;
        goto LABEL_35;
      }

      v14 = *(v4 + 1);
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
          v15 = *(v4 + 2);
          v16 = *v15 == v4;
          v4 = v15;
        }

        while (!v16);
      }

      v4 = v15;
      if (v15 == (a1 + 448))
      {
        goto LABEL_29;
      }
    }

    v13 = 0;
    if ((v21 & 0x80000000) == 0)
    {
      goto LABEL_22;
    }

LABEL_21:
    operator delete(__p[0]);
    goto LABEL_22;
  }

LABEL_29:
  if (os_log_type_enabled(qword_100BCE908, OS_LOG_TYPE_ERROR))
  {
    sub_100878E9C();
  }

LABEL_34:
  v17 = 0;
LABEL_35:
  sub_1000088CC(v22);
  return v17;
}

void sub_1007C2A68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);

  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

void sub_1007C2AA4(uint64_t a1, void *a2)
{
  v3 = a2;
  if (sub_10004EE74(a1, v3))
  {
    v4 = qword_100BCE908;
    if (os_log_type_enabled(qword_100BCE908, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      *&buf[4] = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Unpairing device %{public}@", buf, 0xCu);
    }

    v38[0] = 0;
    v38[1] = 0;
    sub_100007F88(v38, a1 + 48);
    if (qword_100B508D0 != -1)
    {
      sub_100878270();
    }

    v5 = sub_100046458(off_100B508C8, v3, 0);
    v6 = sub_10009A66C(v5);
    v35 = v6;
    v37 = BYTE6(v6);
    v36 = WORD2(v6);
    if (sub_1007C33B4(a1, v3))
    {
      sub_10004DFB4(buf, v3);
      v7 = sub_10004E34C(a1 + 440, buf);
      v8 = v7[7];
      *buf = &off_100B01470;
      *&buf[8] = v8;
      if (v8)
      {
        sub_10000C69C(v8);
      }

      if (*(a1 + 41) == 1)
      {
        v40 = 0;
        v41 = 0;
        sub_1000AFFEC(*&buf[8], 10, &v40);
        v9 = sub_10000D26C(&v40);
        if (!v9)
        {
          sub_100007EE8();
          operator new();
        }

        sub_1007C40B0(v9, &v35);
        v40 = &off_100AE0A78;
        if (v41)
        {
          sub_10000C808(v41);
        }
      }

      sub_1007D1478((a1 + 440), v7);
      *buf = &off_100B01470;
      if (*&buf[8])
      {
        sub_10000C808(*&buf[8]);
      }
    }

    if (qword_100B508D0 != -1)
    {
      sub_100878270();
    }

    v10 = off_100B508C8;
    sub_10004DFB4(buf, v3);
    if (sub_10078A840(v10, buf, v5))
    {
      if (os_log_type_enabled(qword_100BCE908, OS_LOG_TYPE_ERROR))
      {
        sub_100063D0C();
        objc_claimAutoreleasedReturnValue();
        sub_100878F50();
      }
    }

    else
    {
      v17 = sub_10000C798();
      v18 = (*(*v17 + 384))(v17);
      sub_1003CD6A0(v5, 0, v18);
      v19 = qword_100BCE908;
      if (os_log_type_enabled(qword_100BCE908, OS_LOG_TYPE_DEFAULT))
      {
        v20 = *(a1 + 456);
        *buf = 134217984;
        *&buf[4] = v20;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Number of LE Paired devices:%lu", buf, 0xCu);
      }
    }

    if (qword_100B508D0 != -1)
    {
      sub_100878270();
    }

    v21 = off_100B508C8;
    sub_100007E30(__p, "_CTKD_");
    v22 = sub_10004EB40(v21, v3, __p);
    v23 = v22;
    if (v34 < 0)
    {
      operator delete(__p[0]);
      if (v23)
      {
        goto LABEL_37;
      }
    }

    else if (v22)
    {
LABEL_37:
      v24 = qword_100BCE908;
      if (os_log_type_enabled(qword_100BCE908, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Removing _CTKD_ Tag", buf, 2u);
      }

      if (qword_100B508D0 != -1)
      {
        sub_100878270();
      }

      sub_10078380C(off_100B508C8, v3, @"_CTKD_");
      if (qword_100B50F88 != -1)
      {
        sub_1008787AC();
      }

      sub_1006E0CF4(off_100B50F80, v5);
      goto LABEL_61;
    }

    if (_os_feature_enabled_impl())
    {
      if (qword_100B508D0 != -1)
      {
        sub_100878270();
      }

      v25 = sub_10078928C(off_100B508C8, v3, @"ASK_LINKED_RADIO_ADDRESS");
      if (qword_100B508D0 != -1)
      {
        sub_100878270();
      }

      v26 = off_100B508C8;
      sub_100007E30(v31, "DA_ASK_RETAIN_DEVICE");
      v27 = sub_10004EB40(v26, v3, v31);
      if (v32 < 0)
      {
        operator delete(v31[0]);
      }

      v28 = qword_100BCE908;
      if (os_log_type_enabled(qword_100BCE908, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        *&buf[4] = v25;
        *&buf[12] = 1024;
        *&buf[14] = v27;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "ASKLinkedRadioAddressString:%@ hasTag:%d", buf, 0x12u);
      }

      if (((v25 != 0) & v27) == 1)
      {
        v29 = sub_100777FF4(v25);
        if (qword_100B50F88 != -1)
        {
          sub_1008787AC();
        }

        sub_1006E0CF4(off_100B50F80, v29);
        if (qword_100B508D0 != -1)
        {
          sub_100878270();
        }

        sub_1007893AC(off_100B508C8, v3, @"ASK_LINKED_RADIO_ADDRESS", 0);
      }
    }

LABEL_61:
    if (qword_100B50900 != -1)
    {
      sub_100878E74();
    }

    v30 = qword_100B508F8;
    sub_10004DFB4(buf, v3);
    sub_10070FB80(v30, a1 + 8, buf);
  }

  v11 = [*(a1 + 3784) containsObject:v3];
  v12 = qword_100BCE908;
  v13 = os_log_type_enabled(qword_100BCE908, OS_LOG_TYPE_DEFAULT);
  if (v11)
  {
    if (v13)
    {
      *buf = 138543362;
      *&buf[4] = v3;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Device %{public}@ is still in the process of unpairing, ignore this request, wait for BMS to complete or a disconnection", buf, 0xCu);
    }
  }

  else
  {
    if (v13)
    {
      *buf = 138543362;
      *&buf[4] = v3;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Device %{public}@ isn't paired", buf, 0xCu);
    }

    sub_1007BC6D8(a1, v3, 0);
    sub_10004DFB4(buf, v3);
    v14 = sub_10004E34C(a1 + 440, buf);
    v15 = v14;
    if (a1 + 448 != v14)
    {
      v16 = *(v14 + 56);
      *buf = &off_100B01470;
      *&buf[8] = v16;
      if (v16)
      {
        sub_10000C69C(v16);
      }

      sub_1007D1478((a1 + 440), v15);
      *buf = &off_100B01470;
      if (*&buf[8])
      {
        sub_10000C808(*&buf[8]);
      }
    }
  }
}