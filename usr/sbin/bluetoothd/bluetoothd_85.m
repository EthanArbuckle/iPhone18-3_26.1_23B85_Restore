uint64_t sub_10061CE70(uint64_t a1, unint64_t a2)
{
  v12 = a2;
  if (a2)
  {
    v2 = *(a1 + 200);
    if (v2)
    {
      v3 = a1 + 192;
      v4 = a1 + 200;
      do
      {
        v5 = *(v2 + 32);
        v6 = v5 >= a2;
        v7 = v5 < a2;
        if (v6)
        {
          v4 = v2;
        }

        v2 = *(v2 + 8 * v7);
      }

      while (v2);
      if (v4 != a1 + 200 && *(v4 + 32) <= a2)
      {
        *buf = &v12;
        if (*sub_10005E16C(v3, &v12)[5])
        {
          Current = CFAbsoluteTimeGetCurrent();
          *buf = &v12;
          *(*sub_10005E16C(v3, &v12)[5] + 96) = Current;
          *buf = &v12;
          sub_10005E16C(v3, &v12);
          *buf = &v12;
          sub_10005E16C(v3, &v12);
          *buf = &v12;
          sub_10005E16C(v3, &v12);
          sub_10062EA28();
        }

        *buf = &v12;
        if (*(sub_10005E16C(v3, &v12)[5] + 24))
        {
          *buf = &v12;
          v9 = *(sub_10005E16C(v3, &v12)[5] + 24);
          if (v9)
          {
            sub_10047F5B0(v9);
            operator delete();
          }

          *buf = &v12;
          *(sub_10005E16C(v3, &v12)[5] + 24) = 0;
        }

        *buf = &v12;
        if (*(sub_10005E16C(v3, &v12)[5] + 32))
        {
          *buf = &v12;
          if (*(sub_10005E16C(v3, &v12)[5] + 32))
          {
            operator delete();
          }

          *buf = &v12;
          *(sub_10005E16C(v3, &v12)[5] + 32) = 0;
        }
      }
    }
  }

  result = sub_10000C7D0();
  if (*(result + 800) >= 0x7D0u)
  {
    result = sub_10000C7D0();
    if (*(result + 800) <= 0xF9Fu)
    {
      v11 = sub_10000C7D0();
      return (*(*v11 + 1272))(v11);
    }
  }

  return result;
}

void sub_10061D9D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_10061D9F4(void *result, unint64_t a2)
{
  v36 = a2;
  if (a2)
  {
    v2 = result;
    v3 = result[25];
    if (v3)
    {
      v4 = (result + 24);
      v5 = result + 25;
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
      if (v5 != result + 25 && v5[4] <= a2)
      {
        *buf = &v36;
        result = sub_10005E16C(v4, &v36);
        if (*(result[5] + 8))
        {
          v9 = sub_10000E92C();
          if ((*(*v9 + 8))(v9))
          {
            v10 = qword_100BCE8D0;
            if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
            {
              *buf = &v36;
              v11 = *(sub_10005E16C(v4, &v36)[5] + 108);
              v12 = v2[299];
              *buf = 67109376;
              *&buf[4] = v11;
              v38 = 1024;
              v39 = v12;
              _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "AudioQuality trigger %d, codec %u", buf, 0xEu);
            }

            v13 = sub_10000C798();
            if ((*(*v13 + 352))(v13))
            {
              *buf = &v36;
              v14 = sub_10005E16C(v4, &v36);
              if (*(v14[5] + 104))
              {
                v15 = v2[299];
                if ((v15 - 128) >= 2 && v15 != 255)
                {
                  sub_10062FB08(v14, v36);
                }
              }
            }

            *buf = &v36;
            *(sub_10005E16C(v4, &v36)[5] + 108) = 0;
          }

          v16 = v2[58];
          *buf = &v36;
          *(*(sub_10005E16C(v4, &v36)[5] + 8) + 232) = v16;
          *buf = &v36;
          v17 = sub_10005E16C(v4, &v36);
          std::string::assign((*(v17[5] + 8) + 136), "2.4G");
          *buf = &v36;
          *(*(sub_10005E16C(v4, &v36)[5] + 8) + 160) = 0;
          if (*(v36 + 1437) == 1)
          {
            *buf = &v36;
            v18 = sub_10005E16C(v4, &v36);
            std::string::assign((*(v18[5] + 8) + 136), "5G");
          }

          *buf = &v36;
          if (*(sub_10005E16C(v4, &v36)[5] + 40) == 1)
          {
            *buf = &v36;
            *(*(sub_10005E16C(v4, &v36)[5] + 8) + 160) = 1;
          }

          Current = CFAbsoluteTimeGetCurrent();
          *buf = &v36;
          *(*(sub_10005E16C(v4, &v36)[5] + 8) + 88) = Current;
          *buf = &v36;
          v20 = *(*(sub_10005E16C(v4, &v36)[5] + 8) + 88);
          *buf = &v36;
          v21 = v20 - *(*(sub_10005E16C(v4, &v36)[5] + 8) + 80);
          *buf = &v36;
          *(*(sub_10005E16C(v4, &v36)[5] + 8) + 164) = v21;
          *buf = &v36;
          *(*(sub_10005E16C(v4, &v36)[5] + 8) + 176) = v2[297];
          *buf = &v36;
          *(*(sub_10005E16C(v4, &v36)[5] + 8) + 180) = v2[298];
          v22 = sub_10000F034();
          *buf = &v36;
          v23 = sub_10005E16C(v4, &v36);
          (*(*v22 + 104))(v22, *(v23[5] + 8));
          if (_os_feature_enabled_impl())
          {
            if (qword_100B543A8 != -1)
            {
              sub_100853E98();
            }

            v24 = qword_100B543A0;
            v25 = v36;
            *buf = &v36;
            v26 = sub_10005E16C(v4, &v36);
            sub_100705F18(v24, v25, *(v26[5] + 8));
            v27 = qword_100BCE8D0;
            if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Sent HFP Info to AccessoryUsageSummary", buf, 2u);
            }
          }

          sub_100626598(v2, v36);
          v28 = sub_10000C798();
          if ((*(*v28 + 136))(v28))
          {
            *buf = &v36;
            if (*(*(sub_10005E16C(v4, &v36)[5] + 8) + 104))
            {
              *buf = &v36;
              v29 = *(*(sub_10005E16C(v4, &v36)[5] + 8) + 128);
              *buf = &v36;
              v30 = ((v29 / *(*(sub_10005E16C(v4, &v36)[5] + 8) + 104)) * 100.0);
            }

            else
            {
              v30 = 0;
            }

            *buf = &v36;
            if (*(*(sub_10005E16C(v4, &v36)[5] + 8) + 108))
            {
              *buf = &v36;
              v31 = *(*(sub_10005E16C(v4, &v36)[5] + 8) + 132);
              *buf = &v36;
              v32 = ((v31 / *(*(sub_10005E16C(v4, &v36)[5] + 8) + 108)) * 100.0);
            }

            else
            {
              v32 = 0;
            }

            v33 = sub_100432718();
            *buf = &v36;
            v34 = sub_10005E16C(v4, &v36);
            (*(*v33 + 24))(v33, *(*(v34[5] + 8) + 164), v30, (100 - v30), v32, (100 - v32));
          }

          *buf = &v36;
          v35 = *(sub_10005E16C(v4, &v36)[5] + 8);
          if (v35)
          {
            if (*(v35 + 159) < 0)
            {
              operator delete(*(v35 + 136));
            }

            operator delete();
          }

          *buf = &v36;
          result = sub_10005E16C(v4, &v36);
          *(result[5] + 8) = 0;
        }
      }
    }
  }

  return result;
}

uint64_t sub_10061E21C(uint64_t a1)
{
  *(a1 + 344) = 1;
  sub_10061BD18(a1);
  sub_10061C1F4(a1);
  v2 = *(sub_10000C7D0() + 800);
  if ((v2 - 1) > 0x7CE)
  {
    if ((v2 - 2000) <= 0x3E7)
    {
      sub_10061E5E4(a1, v2);
      sub_10061E890(a1, v2);
      sub_10061EB54(a1, v2);
    }
  }

  else if (v2 == 19 || v2 == 15)
  {
    v4 = sub_10000C798();
    if (((*(*v4 + 152))(v4) & 1) == 0)
    {
      *(a1 + 834) = 256;
      if (v2 == 19)
      {
        v5 = 97;
      }

      else
      {
        v5 = 81;
      }

      v6 = qword_100BCE8D0;
      if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Reading back ptb", buf, 2u);
      }

      v7 = sub_10000C7D0();
      (*(*v7 + 584))(v7, v5, a1 + 834, a1 + 408);
    }
  }

  v8 = sub_10000C798();
  if ((*(*v8 + 840))(v8, 1))
  {
    v9 = sub_100017E6C();
    sub_10063C550(v9 + 1024, a1 + 96);
    v10 = sub_100017E6C();
    (*(*v10 + 248))(v10);
    v11 = sub_100017E6C();
    sub_10063C050(v11 + 1064, a1 + 104);
    v12 = sub_100017E6C();
    sub_10063C7F0(v12 + 1104, a1 + 112);
  }

  v13 = sub_10000C798();
  if ((*(*v13 + 160))(v13))
  {
    v14 = sub_100017E6C();
    sub_1003128B0(v14 + 384, a1 + 136);
  }

  v15 = sub_10000C7D0();
  (*(*v15 + 72))(v15, 1, 0);
  if (sub_1005FCD2C())
  {
    v16 = sub_10000C798();
    if ((*(*v16 + 384))(v16))
    {
      v17 = +[NSNotificationCenter defaultCenter];
      v18 = +[AVAudioSession sharedInstance];
      v22[0] = _NSConcreteStackBlock;
      v22[1] = 3221225472;
      v22[2] = sub_1000C1F4C;
      v22[3] = &unk_100AFCD28;
      v22[4] = a1;
      v19 = [v17 addObserverForName:AVAudioSessionRouteChangeNotification object:v18 queue:0 usingBlock:v22];
      v20 = *(a1 + 240);
      *(a1 + 240) = v19;
    }
  }

  if (_os_feature_enabled_impl() && sub_1002418E0(sub_10061ED5C, 0) && os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_ERROR))
  {
    sub_100853EC0();
  }

  return sub_10061EEB4(a1, 0);
}

uint64_t sub_10061E5E4(_WORD *a1, int a2)
{
  v4 = qword_100BCE8D0;
  if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v12[0]) = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Reading back PPR power table for N1x1", v12, 2u);
  }

  if (a2 == 2000)
  {
    a1[418] = 10;
    v5 = sub_10000C7D0();
    return (*(*v5 + 584))(v5, 145, a1 + 418, a1 + 332);
  }

  else
  {
    v12[0] = 0;
    v12[1] = 0;
    v13 = 0;
    a1[418] = 18;
    v7 = *sub_10000C7D0();
    (*(v7 + 584))();
    a1[332] = *(v12 + 1);
    a1[418] = 18;
    v8 = *sub_10000C7D0();
    (*(v8 + 584))();
    a1[333] = *(v12 + 1);
    a1[418] = 18;
    v9 = *sub_10000C7D0();
    (*(v9 + 584))();
    a1[334] = *(v12 + 1);
    a1[418] = 18;
    v10 = *sub_10000C7D0();
    (*(v10 + 584))();
    a1[335] = *(v12 + 1);
    a1[418] = 18;
    v11 = *sub_10000C7D0();
    result = (*(v11 + 584))();
    a1[336] = *(v12 + 1);
    a1[418] = 10;
  }

  return result;
}

uint64_t sub_10061E890(uint64_t a1, int a2)
{
  v19 = 128;
  *(a1 + 838) = 0;
  v4 = qword_100BCE8D0;
  if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
  {
    *v18 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Reading back REG power table for N1x1", v18, 2u);
  }

  if (a2 != 2000)
  {
    v19 = 128;
    v8 = sub_10000C7D0();
    v9 = a1 + 674;
    result = (*(*v8 + 584))(v8, 154, &v19, a1 + 674);
    v10 = result;
    if (result)
    {
      v11 = 0;
    }

    else
    {
      v11 = v19;
    }

    v12 = v11;
    if (!result && (v11 & 0x80000000) == 0)
    {
      v13 = v19;
      v19 = (0x80 - v19);
      v14 = sub_10000C7D0();
      result = (*(*v14 + 584))(v14, 155, &v19, v9 + v13);
      if (result)
      {
        goto LABEL_25;
      }

      v12 = v19 + v13;
    }

    if (!v10 && (v12 & 0x80) == 0)
    {
      v19 = (0x80 - v12);
      v15 = sub_10000C7D0();
      result = (*(*v15 + 584))(v15, 156, &v19, v9 + v12);
      if (result)
      {
        goto LABEL_25;
      }

      v12 += v19;
    }

    if (v10 || (v12 & 0x80) != 0)
    {
LABEL_21:
      if (!v10 && (v12 & 0x80) == 0)
      {
        v19 = (0x80 - v12);
        v17 = sub_10000C7D0();
        result = (*(*v17 + 584))(v17, 162, &v19, v9 + v12);
        if (!result)
        {
          v12 += v19;
        }
      }

      goto LABEL_25;
    }

    v19 = (0x80 - v12);
    v16 = sub_10000C7D0();
    result = (*(*v16 + 584))(v16, 161, &v19, v9 + v12);
    if (!result)
    {
      v12 += v19;
      goto LABEL_21;
    }

LABEL_25:
    v7 = v12;
    goto LABEL_26;
  }

  v5 = sub_10000C7D0();
  result = (*(*v5 + 584))(v5, 146, &v19, a1 + 674);
  if (result)
  {
    return result;
  }

  v7 = v19;
LABEL_26:
  *(a1 + 838) = v7;
  return result;
}

uint64_t sub_10061EB54(uint64_t a1, int a2)
{
  v18 = 32;
  *(a1 + 840) = 0;
  v4 = qword_100BCE8D0;
  if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
  {
    *v17 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Reading back SAR power table for N1x1", v17, 2u);
  }

  if (a2 != 2000)
  {
    v18 = 32;
    v8 = sub_10000C7D0();
    v9 = a1 + 802;
    result = (*(*v8 + 584))(v8, 163, &v18, a1 + 802);
    v10 = result;
    if (result)
    {
      v11 = 0;
    }

    else
    {
      v11 = v18;
    }

    if (result)
    {
      v12 = 1;
    }

    else
    {
      v12 = v11 > 0x1Fu;
    }

    if (!v12)
    {
      v13 = v18;
      v18 = (32 - v18);
      v14 = sub_10000C7D0();
      result = (*(*v14 + 584))(v14, 164, &v18, v9 + v13);
      if (result)
      {
LABEL_21:
        v7 = v11;
        goto LABEL_22;
      }

      v11 = v18 + v13;
    }

    if (v10)
    {
      v15 = 1;
    }

    else
    {
      v15 = v11 > 0x1Fu;
    }

    if (!v15)
    {
      v18 = (32 - v11);
      v16 = sub_10000C7D0();
      result = (*(*v16 + 584))(v16, 165, &v18, v9 + v11);
      if (!result)
      {
        v11 += v18;
      }
    }

    goto LABEL_21;
  }

  v5 = sub_10000C7D0();
  result = (*(*v5 + 584))(v5, 147, &v18, a1 + 802);
  if (result)
  {
    return result;
  }

  v7 = v18;
LABEL_22:
  *(a1 + 840) = v7;
  return result;
}

void sub_10061ED5C(int a1, unsigned __int8 *a2, int a3, __int16 a4, uint64_t a5, uint64_t a6)
{
  v11 = sub_1000E1FE8(a2);
  if (!a1)
  {
    if ((a3 & 0xFFFFFFFD) != 0)
    {
      v12 = qword_100BCE8D0;
      if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
      {
        v14[0] = 67109120;
        v14[1] = a3;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "legacyModeChangeEvent received with invalid mode: %d", v14, 8u);
      }
    }

    else if (a2 && v11)
    {
      if (qword_100B50940 != -1)
      {
        sub_100853F30();
      }

      v13 = off_100B50938;

      sub_10063A7E4(v13, 0, a2, a3, a4, a6);
    }
  }
}

uint64_t sub_10061EEB4(uint64_t a1, char a2)
{
  v17 = 0;
  v16 = 0;
  v15 = 10;
  v4 = sub_10000C798();
  if (!(*(*v4 + 160))(v4))
  {
    return 2;
  }

  if (*(a1 + 880) == 6)
  {
    v5 = a2;
  }

  else
  {
    v5 = 1;
  }

  if ((v5 & 1) == 0)
  {
    v10 = sub_10000E92C();
    if ((*(*v10 + 400))(v10))
    {
      v11 = sub_10000E92C();
      v7 = (*(*v11 + 408))(v11);
    }

    else
    {
      v7 = 186;
    }

    v12 = sub_10000E92C();
    if ((*(*v12 + 416))(v12))
    {
      v13 = sub_10000E92C();
      v6 = (*(*v13 + 424))(v13);
    }

    else
    {
      v6 = 186;
    }

    *(a1 + 877) = 1;
    v8 = 3;
    goto LABEL_16;
  }

  v6 = 0;
  v7 = 0;
  v8 = 0;
  result = 0;
  if (*(a1 + 877))
  {
LABEL_16:
    v14 = sub_10000C7D0();
    result = (*(*v14 + 896))(v14, 4095, 9, v8, v7, v6, &v15, &v16);
    *(a1 + 877) = v5 ^ (result == 0);
  }

  return result;
}

void sub_10061F0DC(uint64_t a1)
{
  v2 = qword_100BCE8D0;
  if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "AudioLinkManager::stackWillStop enter", buf, 2u);
  }

  *(a1 + 344) = 0;
  v3 = *(a1 + 256);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10061F274;
  block[3] = &unk_100ADF8F8;
  block[4] = a1;
  dispatch_sync(v3, block);
  if (*(a1 + 240))
  {
    v4 = +[NSNotificationCenter defaultCenter];
    [v4 removeObserver:*(a1 + 240)];
  }

  v5 = qword_100BCE8D0;
  if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "AudioLinkManager::stackWillStop enter", buf, 2u);
  }

  if (_os_feature_enabled_impl() && sub_1002418F0(sub_10061ED5C) && os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_ERROR))
  {
    sub_100853F44();
  }
}

uint64_t sub_10061F274(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = *(v1 + 888);
  if (result)
  {
    v3 = (v1 + 888);
    result = (*(*result + 16))(result);
    *v3 = 0;
    v3[1] = 0;
  }

  return result;
}

void sub_10061F2D4(uint64_t a1, unint64_t a2)
{
  if ((*(sub_10000C7D0() + 800) - 1) >= 0x7CF)
  {
    v4 = *(a1 + 224);

    sub_10010E754(v4, a2);
  }
}

void sub_10061F338(uint64_t a1, uint64_t a2)
{
  *(a1 + 974) = 0u;
  *(a1 + 990) = 0u;
  *(a1 + 958) = 0u;
  v2 = *(a1 + 256);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10061F3BC;
  v3[3] = &unk_100AE0860;
  v3[4] = a1;
  v3[5] = a2;
  dispatch_async(v2, v3);
}

void sub_10061F3C8(uint64_t a1, uint64_t a2)
{
  v2 = a1 - 144;
  *(a1 + 830) = 0u;
  *(a1 + 846) = 0u;
  *(a1 + 814) = 0u;
  v3 = *(a1 + 112);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10061F3BC;
  v4[3] = &unk_100AE0860;
  v4[4] = v2;
  v4[5] = a2;
  dispatch_async(v3, v4);
}

void sub_10061F44C(uint64_t a1, char a2)
{
  v2 = *(a1 + 256);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10061F4C4;
  v3[3] = &unk_100AE15D8;
  v3[4] = a1;
  v4 = a2;
  dispatch_async(v2, v3);
}

uint64_t sub_10061F4C4(uint64_t result)
{
  v1 = *(result + 32);
  if (*(v1 + 208))
  {
    v2 = result;
    result = sub_10000C7D0();
    v3 = *(result + 800);
    if (v3 - 1 <= 0x7CE && (v3 != 15 ? (v4 = v3 >= 0x13) : (v4 = 1), v4))
    {
      v5 = *(*sub_10000C7D0() + 560);

      return v5();
    }

    else
    {
      v6 = *(v1 + 192);
      if (v6 != (v1 + 200))
      {
        do
        {
          sub_10061F5E4(v1, v6[4], *(v6[5] + 84), (v1 + 886));
          sub_10061F850(v1, *(v2 + 40), (v1 + 884), (v1 + 885));
          result = sub_10061F8D8(v1);
          v7 = v6[1];
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
              v8 = v6[2];
              v9 = *v8 == v6;
              v6 = v8;
            }

            while (!v9);
          }

          v6 = v8;
        }

        while (v8 != (v1 + 200));
      }
    }
  }

  return result;
}

void sub_10061F5E4(uint64_t a1, uint64_t a2, int a3, char *a4)
{
  v20 = 0;
  v7 = sub_10000E92C();
  sub_100007E30(buf, "ePA");
  sub_100007E30(__p, "ePAThreshold");
  v8 = (*(*v7 + 88))(v7, buf, __p, &v20);
  if (v19 < 0)
  {
    operator delete(__p[0]);
  }

  if ((v22 & 0x80000000) == 0)
  {
    if (v8)
    {
      goto LABEL_5;
    }

LABEL_8:
    v11 = sub_10000C798();
    if ((*(*v11 + 416))(v11))
    {
      v12 = -62;
LABEL_25:
      *a4 = v12;
      return;
    }

    if (a3 == 1)
    {
      v15 = sub_1000E2140(a2, 12);
      if (v15 || (sub_100627568(v15, a2) & 1) != 0)
      {
        v14 = -57;
        goto LABEL_22;
      }

      v16 = !sub_100537D2C(a2);
      v14 = -68;
      v17 = -73;
    }

    else
    {
      if (a3 != 2)
      {
LABEL_23:
        if (sub_1000271F0() != 162)
        {
          return;
        }

        v12 = *a4 + 12;
        goto LABEL_25;
      }

      v13 = sub_1000E2140(a2, 12);
      if (v13 || (sub_100627568(v13, a2) & 1) != 0)
      {
        v14 = -62;
LABEL_22:
        *a4 = v14;
        goto LABEL_23;
      }

      v16 = !sub_100537D2C(a2);
      v14 = -69;
      v17 = -74;
    }

    if (!v16)
    {
      v14 = v17;
    }

    goto LABEL_22;
  }

  operator delete(*buf);
  if (!v8)
  {
    goto LABEL_8;
  }

LABEL_5:
  v9 = v20;
  *a4 = v20;
  v10 = qword_100BCE8D0;
  if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = v9;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Warning: Setting user defined ePA threshold to %d dBm through defaults write", buf, 8u);
  }
}

void sub_10061F814(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10061F850(uint64_t a1, char a2, _BYTE *a3, _BYTE *a4)
{
  sub_10000C7D0();
  *a3 = sub_100411100();
  sub_10000C7D0();
  *a4 = sub_100410F60();
  sub_10000C7D0();
  if (sub_100410EE8() && (a2 & 1) == 0)
  {
    sub_10000C7D0();
    *a4 = sub_1004112E4();
  }

  result = sub_100630E30(a1);
  if (result)
  {
    result = sub_1000271F0();
    if (result == 162)
    {
      *a3 = 48;
    }
  }

  return result;
}

uint64_t sub_10061F8D8(uint64_t result)
{
  if ((*(result + 345) & 1) == 0)
  {
    v1 = result;
    if (*(sub_10000C7D0() + 800) >= 0x13u)
    {
      v10 = 0;
      v2 = sub_10000E92C();
      sub_100007E30(buf, "ePA");
      sub_100007E30(__p, "DisableReTxEPA");
      (*(*v2 + 72))(v2, buf, __p, &v10);
      if (v7 < 0)
      {
        operator delete(__p[0]);
      }

      if (v9 < 0)
      {
        operator delete(*buf);
      }

      if (v10 != 1)
      {
        v4 = 2;
        goto LABEL_12;
      }

      v3 = qword_100BCE8D0;
      v4 = 0;
      if (!os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
      {
LABEL_12:
        v5 = sub_10000C7D0();
        return (*(*v5 + 64))(v5, 1, v4, *(v1 + 884), *(v1 + 885), *(v1 + 886));
      }

      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Warning: Disabling ePA for retransmission policy through defaults write", buf, 2u);
    }

    v4 = 0;
    goto LABEL_12;
  }

  return result;
}

void sub_10061FA3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

void sub_10061FA70(uint64_t a1, char a2)
{
  v2 = *(a1 + 240);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10061F4C4;
  v3[3] = &unk_100AE15D8;
  v3[4] = a1 - 16;
  v4 = a2;
  dispatch_async(v2, v3);
}

void sub_10061FAEC(uint64_t a1, __int128 *a2, int *a3)
{
  v16[0] = 0;
  v16[1] = v16;
  v16[2] = 0x12012000000;
  v16[3] = sub_1000423BC;
  v16[4] = nullsub_27;
  v16[5] = "";
  *(v30 + 11) = *(a2 + 219);
  v4 = a2[13];
  v29 = a2[12];
  v30[0] = v4;
  v5 = a2[9];
  v25 = a2[8];
  v26 = v5;
  v6 = a2[10];
  v28 = a2[11];
  v27 = v6;
  v7 = a2[5];
  v21 = a2[4];
  v22 = v7;
  v8 = a2[6];
  v24 = a2[7];
  v23 = v8;
  v9 = a2[1];
  v17 = *a2;
  v18 = v9;
  v10 = a2[2];
  v20 = a2[3];
  v19 = v10;
  v14 = *a3;
  v15 = *(a3 + 2);
  if (qword_100B508F0 != -1)
  {
    sub_100853FB4();
  }

  v11 = sub_1000E6554(off_100B508E8, &v14, 0);
  v12 = *(a1 + 256);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10061FCC0;
  block[3] = &unk_100AE0EB8;
  block[5] = a1;
  block[6] = v11;
  block[4] = v16;
  dispatch_async(v12, block);
  _Block_object_dispose(v16, 8);
}

double sub_10061FCC0(void *a1, double result)
{
  v3 = a1 + 6;
  v2 = a1[6];
  if (v2)
  {
    v4 = a1[5];
    v5 = *(v4 + 200);
    if (v5)
    {
      v7 = v4 + 192;
      v8 = v4 + 200;
      do
      {
        v9 = *(v5 + 32);
        _CF = v9 >= v2;
        v11 = v9 < v2;
        if (_CF)
        {
          v8 = v5;
        }

        v5 = *(v5 + 8 * v11);
      }

      while (v5);
      if (v8 != v4 + 200 && v2 >= *(v8 + 32))
      {
        sub_10062098C(a1[5], v2, (*(a1[4] + 8) + 48));
        sub_10000C7D0();
        if (!sub_10041062C())
        {
          *(*(a1[4] + 8) + 225) = 0;
        }

        v12 = sub_10000C798();
        if ((*(*v12 + 144))(v12) && *(v4 + 872) != 3)
        {
          sub_100620E14(v4, a1[6], *(a1[4] + 8) + 48);
        }

        v13 = sub_10000E92C();
        v14 = (*(*v13 + 288))(v13);
        if ((v14 & 1) == 0 && *(v4 + 872) != 3)
        {
          sub_100620F24(v14, *(*(a1[4] + 8) + 49), (*(a1[4] + 8) + 213));
        }

        sub_100621088(v14, 0, *(a1[4] + 8) + 48);
        if (*sub_10005E16C(v7, v3)[5] && *(*(a1[4] + 8) + 66) <= *(*(a1[4] + 8) + 64))
        {
          v15 = *sub_10005E16C(v7, v3)[5];
          *(v15 + 424) += *(*(a1[4] + 8) + 54);
          ++*(v15 + 432);
          v16 = *sub_10005E16C(v7, v3)[5];
          v17 = *(*(a1[4] + 8) + 55);
          if (*(v16 + 436) > v17)
          {
            *(v16 + 436) = v17;
          }

          v18 = *sub_10005E16C(v7, v3)[5];
          v19 = *(*(a1[4] + 8) + 56);
          if (*(v18 + 440) < v19)
          {
            *(v18 + 440) = v19;
          }

          if (*(sub_10005E16C(v7, v3)[5] + 32))
          {
            v20 = *(*(a1[4] + 8) + 54);
            *(*(sub_10005E16C(v7, v3)[5] + 32) + 80) = v20;
            v22 = *(a1[4] + 8);
            if (*(v22 + 64))
            {
              LOWORD(v21) = *(v22 + 66);
              v23 = ((v21 * 100.0) / *(v22 + 64));
            }

            else
            {
              v23 = 0;
            }

            *(*(sub_10005E16C(v7, v3)[5] + 32) + 72) = v23;
          }

          v24 = *(v4 + 216);
          if (v24[8] == 1)
          {
            v25 = sub_10005E16C(v7, v3);
            *(*v25[5] + 444) |= 2u;
            v24 = *(v4 + 216);
          }

          if (v24[7] == 1)
          {
            sub_10005E16C(v7, v3);
            v24 = *(v4 + 216);
          }

          if (v24[5] == 1)
          {
            v26 = sub_10005E16C(v7, v3);
            *(*v26[5] + 444) |= 4u;
            v24 = *(v4 + 216);
          }

          if (v24[6] == 1)
          {
            v27 = sub_10005E16C(v7, v3);
            *(*v27[5] + 444) |= 8u;
            v24 = *(v4 + 216);
          }

          if (v24[1] == 1)
          {
            v28 = sub_10005E16C(v7, v3);
            *(*v28[5] + 444) |= 0x20u;
            v24 = *(v4 + 216);
          }

          if (v24[4] == 1)
          {
            v29 = sub_10005E16C(v7, v3);
            *(*v29[5] + 444) |= 0x80u;
            v24 = *(v4 + 216);
          }

          if (v24[3] == 1)
          {
            v30 = sub_10005E16C(v7, v3);
            *(*v30[5] + 444) |= 0x10u;
            v24 = *(v4 + 216);
          }

          if (v24[2] == 1)
          {
            v31 = sub_10005E16C(v7, v3);
            *(*v31[5] + 444) |= 0x40u;
          }

          v32 = *(a1[4] + 8);
          if (v32[32])
          {
            v33 = 100 * v32[33] / v32[32];
          }

          else
          {
            v33 = 0;
          }

          v34 = *(v32 + 245);
          v35 = 0.0;
          if (*(v32 + 245))
          {
            v36 = *(v32 + 243);
            if (v36)
            {
              v35 = v36 / v34;
            }
          }

          v73 = v35;
          if (*(sub_10005E16C(v7, v3)[5] + 72) == 1)
          {
            v37 = *v3;
            v38 = sub_10005E16C(v7, v3);
            sub_100621180(v4, v37, v33, *(v38[5] + 78));
          }

          sub_10011CCEC(*(v4 + 216), a1[6], v33, *(a1[4] + 8) + 48, 0);
          sub_10011FCA4(*(v4 + 216), a1[6], v33, *(a1[4] + 8) + 48);
          if (*(sub_10005E16C(v7, v3)[5] + 64) == 1)
          {
            v39 = *v3;
            v40 = sub_10005E16C(v7, v3);
            sub_1006215C4(v4, v39, v33, *(v40[5] + 78));
          }

          v41 = sub_10005E16C(v7, v3);
          *(*v41[5] + 104) += *(*(a1[4] + 8) + 60);
          v42 = *sub_10005E16C(v7, v3)[5];
          v43 = *(*(a1[4] + 8) + 64);
          *(v42 + 108) += v43;
          if (v43 <= 0x1D)
          {
            ++*(v42 + 520);
          }

          *(*sub_10005E16C(v7, v3)[5] + 388) = *(*(a1[4] + 8) + 54);
          v44 = sub_10005E16C(v7, v3);
          *(*v44[5] + 404) = vadd_s32(*(*v44[5] + 404), (v33 | 0x100000000));
          v45 = sub_10005E16C(v7, v3);
          __asm { FMOV            V1.2S, #1.0 }

          _D1.f32[0] = v73;
          *(*v45[5] + 416) = vadd_f32(_D1, *(*v45[5] + 416));
          v50 = *sub_10000E92C();
          if (((*(v50 + 288))() & 1) == 0)
          {
            v51 = *(a1[4] + 8);
            v52 = *(sub_10005E16C(v7, v3)[5] + 66);
            if (v52 >= *(sub_10005E16C(v7, v3)[5] + 68))
            {
              v53 = sub_10005E16C(v7, v3);
              v55 = 68;
            }

            else
            {
              v53 = sub_10005E16C(v7, v3);
              v55 = 66;
            }

            sub_100621AF0(v4, v51 + 48, *(v53[5] + v55), *v3, v54);
            if (qword_100B512B8 != -1)
            {
              sub_100853E48();
            }

            v56 = qword_100B512B0;
            v57 = a1[6];
            v58 = *(a1[4] + 8);
            v59 = *(sub_10005E16C(v7, v3)[5] + 66);
            if (v59 >= *(sub_10005E16C(v7, v3)[5] + 68))
            {
              v60 = sub_10005E16C(v7, v3);
              v61 = 68;
            }

            else
            {
              v60 = sub_10005E16C(v7, v3);
              v61 = 66;
            }

            v62 = *(v60[5] + v61);
            v63 = *(v4 + 216);
            v64 = sub_10005E16C(v7, v3);
            v65 = sub_10011D8D4(v63, *(*(v64[5] + 48) + 20), *v3);
            sub_10031A424(v56, v57, v58 + 48, v62, v65);
          }
        }

        if (!*sub_10005E16C(v7, v3)[5])
        {
          goto LABEL_73;
        }

        v66 = *(*(sub_10005E16C(v7, v3)[5] + 48) + 16);
        if (v66 < 0x97)
        {
          if (v66 == 150)
          {
            goto LABEL_73;
          }
        }

        else if (*(*sub_10005E16C(v7, v3)[5] + 312) <= 0x95u)
        {
LABEL_73:
          if (*(sub_10005E16C(v7, v3)[5] + 8))
          {
            sub_100622500(v4, a1[6], *(a1[4] + 8) + 48);
            v67 = *sub_10000E92C();
            if (((*(v67 + 288))() & 1) == 0)
            {
              sub_100622BCC(v4, *(a1[4] + 8) + 48, a1[6]);
              sub_10010EAA0(*(v4 + 224), a1[6], *(a1[4] + 8) + 48);
              if (qword_100B512B8 != -1)
              {
                sub_100853E48();
              }

              v68 = qword_100B512B0;
              v69 = a1[6];
              v70 = *(a1[4] + 8);
              v71 = sub_10005E16C(v7, v3);
              sub_10031A424(v68, v69, v70 + 48, 0, *(*(v71[5] + 48) + 16));
            }
          }

          if (*(sub_10005E16C(v7, v3)[5] + 80) == 1 && *(sub_10005E16C(v7, v3)[5] + 84) == 2)
          {
            v72 = sub_10000E92C();
            if ((*(*v72 + 8))(v72))
            {
              sub_10011E600(*(v4 + 216), *v3);
            }
          }

          return sub_100623278(v4, a1[6], *(a1[4] + 8) + 48);
        }

        *(*sub_10005E16C(v7, v3)[5] + 312) = v66;
        goto LABEL_73;
      }
    }
  }

  return result;
}

void sub_10062098C(uint64_t a1, unint64_t a2, _BYTE *a3)
{
  v43 = 0;
  v44 = a2;
  __p = 0;
  v42 = 0;
  v5 = sub_10000C7D0();
  v6 = sub_1004106D0(v5, 0xBB8u);
  v7 = a3 + 86;
  v8 = *(a1 + 958);
  if (v6)
  {
    if (v8 >= 2)
    {
      v7 = (a1 + 1006);
      v9 = (a1 + 1085);
      goto LABEL_7;
    }

LABEL_5:
    a3[233] = v8;
LABEL_16:
    v15 = 0;
    LOBYTE(v11) = 0;
    do
    {
      if ((a3[(v15 >> 3) + 76] >> (v15 & 7)))
      {
        sub_1000C89B4(&__p, &v7[v15]);
        LOBYTE(v11) = v11 + 1;
      }

      ++v15;
    }

    while (v15 != 79);
    if (v11)
    {
      v16 = 126 - 2 * __clz(v42 - __p);
      if (v42 == __p)
      {
        v17 = 0;
      }

      else
      {
        v17 = v16;
      }

      sub_10063EAD4(__p, v42, v17, 1);
      v18 = (ceil(vcvtd_n_f64_u32(v11, 1uLL)) + -1.0);
      v19 = __p;
      v20 = v42 - __p;
      if (v42 - __p <= v18 || (a3[229] = *(__p + v18), v21 = ceil(v11 * 0.75) + -1.0, v20 <= v21) || (a3[230] = v19[v21], v22 = ceil(v11 * 0.9) + -1.0, v20 <= v22))
      {
        sub_1000C7698();
      }

      LOBYTE(v14) = v19[v22];
    }

    else
    {
      LOBYTE(v14) = 0;
      LOBYTE(v11) = 0;
      *(a3 + 229) = 0;
    }

    v23 = 231;
    goto LABEL_38;
  }

  if (v8 <= 1)
  {
    goto LABEL_5;
  }

  v9 = (a1 + 959);
LABEL_7:
  if (!*v9)
  {
    LOBYTE(v8) = 0;
  }

  a3[233] = v8;
  if (!*v9)
  {
    goto LABEL_16;
  }

  v10 = 0;
  v11 = 0;
  do
  {
    v12 = a3[(v10 >> 3) + 76];
    sub_1000C89B4(&__p, &v7[v10]);
    v11 += (v12 >> (v10++ & 7)) & 1;
  }

  while (v10 != 79);
  v13 = 0;
  while (*v9)
  {
    sub_1000C89B4(&__p, v9);
    --v13;
    ++v9;
    if (v13 == -47)
    {
      v14 = 126;
      goto LABEL_31;
    }
  }

  v14 = 79 - v13;
LABEL_31:
  v24 = 126 - 2 * __clz(v42 - __p);
  if (v42 == __p)
  {
    v25 = 0;
  }

  else
  {
    v25 = v24;
  }

  sub_10063EAD4(__p, v42, v25, 1);
  v26 = (ceil(vcvtd_n_f64_u32(v14, 1uLL)) + -1.0);
  v27 = __p;
  v28 = v42 - __p;
  if (v42 - __p <= v26 || (a3[229] = *(__p + v26), v29 = ceil(v14 * 0.75) + -1.0, v28 <= v29) || (a3[230] = v27[v29], v30 = ceil(v14 * 0.9) + -1.0, v28 <= v30))
  {
    sub_1000C7698();
  }

  a3[231] = v27[v30];
  v23 = 234;
LABEL_38:
  a3[v23] = v14;
  a3[232] = v11;
  *(a1 + 958) = 0;
  if (v44)
  {
    v33 = *(a1 + 200);
    v32 = a1 + 200;
    v31 = v33;
    if (v33)
    {
      v34 = v32;
      do
      {
        v35 = *(v31 + 32);
        v36 = v35 >= v44;
        v37 = v35 < v44;
        if (v36)
        {
          v34 = v31;
        }

        v31 = *(v31 + 8 * v37);
      }

      while (v31);
      if (v34 != v32 && v44 >= *(v34 + 32))
      {
        v45 = &v44;
        if (*sub_10005E16C(v32 - 8, &v44)[5])
        {
          v45 = &v44;
          v38 = sub_10005E16C(v32 - 8, &v44);
          sub_100632DE8(v38, *v38[5], a3);
        }

        v45 = &v44;
        if (*(sub_10005E16C(v32 - 8, &v44)[5] + 8))
        {
          v45 = &v44;
          v39 = sub_10005E16C(v32 - 8, &v44);
          sub_100632DE8(v39, *(v39[5] + 8), a3);
        }

        v45 = &v44;
        if (*(sub_10005E16C(v32 - 8, &v44)[5] + 24))
        {
          v45 = &v44;
          v40 = sub_10005E16C(v32 - 8, &v44);
          sub_100632DE8(v40, *(v40[5] + 24), a3);
        }
      }
    }
  }

  if (__p)
  {
    v42 = __p;
    operator delete(__p);
  }
}

void sub_100620DE8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_100620E14(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v12 = a2;
  v13 = &v12;
  if (*sub_10005E16C(a1 + 192, &v12)[5])
  {
    v13 = &v12;
    v5 = sub_10005E16C(a1 + 192, &v12);
    v6 = *v5[5];
    if (v6)
    {
      v7 = (v6 + 36);
    }

    else
    {
      v7 = 0;
    }

    sub_100632DA0(v5, v7, a3);
  }

  v13 = &v12;
  if (*(sub_10005E16C(a1 + 192, &v12)[5] + 8))
  {
    v13 = &v12;
    v9 = sub_10005E16C(a1 + 192, &v12);
    v10 = *(v9[5] + 8);
    if (v10)
    {
      v11 = (v10 + 36);
    }

    else
    {
      v11 = 0;
    }

    *&result = sub_100632DA0(v9, v11, a3).u64[0];
  }

  return result;
}

double sub_100620F24(uint64_t a1, int a2, unsigned __int16 *a3)
{
  v5 = sub_10000C798();
  if ((*(*v5 + 144))(v5))
  {
    v7 = qword_100BCE8D0;
    if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
    {
      v8 = a3[2];
      v9 = (100 * (v8 >> 1));
      v10 = *a3;
      v11 = a3[1];
      v14[0] = 67111424;
      v12 = a3[3];
      v13 = a3[4];
      v14[1] = v8;
      v15 = 1024;
      v16 = a2;
      v17 = 2048;
      v18 = v9 / v10;
      v19 = 2048;
      v20 = v9 / v11;
      v21 = 1024;
      v22 = v8 >> 1;
      v23 = 1024;
      v24 = v8 - (v8 >> 1);
      v25 = 1024;
      v26 = v10;
      v27 = 1024;
      v28 = v11;
      v29 = 1024;
      v30 = v12;
      v31 = 1024;
      v32 = v13;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "DiversityReport:%3d switches in%3d sec. ReTx for {Ant0,Ant1} ~= {%3.0f%%,%3.0f%%} ((%2d ..%3d) / {%3d,%3d}). Good pkts b/w switches min =%3d, max =%3d", v14, 0x46u);
    }
  }

  return result;
}

void sub_100621088(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_10000C7D0();
  if (sub_1004106D0(v4, 0xBB8u))
  {
    v5 = qword_100BCE8D0;
    if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a3 + 217);
      v7 = *(a3 + 219);
      v8 = *(a3 + 221);
      v9 = *(a3 + 223);
      v10 = *(a3 + 225);
      v11 = *(a3 + 227);
      v12[0] = 67110400;
      v12[1] = v6;
      v13 = 1024;
      v14 = v7;
      v15 = 1024;
      v16 = v8;
      v17 = 1024;
      v18 = v9;
      v19 = 1024;
      v20 = v10;
      v21 = 1024;
      v22 = v11;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "A2DP Thread LinkQualityReport: a2dpReq %d, a2dpDenied %d, eScoReqInTxSlot %d, eScoDeniedInTxSlot %d, eScoReqInReTxWindow %d, eScoDeniedInReTxWindow %d", v12, 0x26u);
    }
  }
}

void *sub_100621180(uint64_t a1, unint64_t a2, unsigned int a3, int a4)
{
  v22 = a2;
  *buf = &v22;
  if (*(sub_10005E16C(a1 + 192, &v22)[5] + 76) < 0)
  {
    v12 = qword_100BCE8D0;
    if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *&buf[4] = a3;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "A2DP Link Adaptive Packet Type: Ignoring first retransmission rate report (%d%%)", buf, 8u);
    }

    goto LABEL_13;
  }

  *buf = &v22;
  result = sub_10005E16C(a1 + 192, &v22);
  if (*(*(result[5] + 48) + 2))
  {
    return result;
  }

  if (a3 <= 0x1D && !a4)
  {
    if (a3 <= 0xA)
    {
      *buf = &v22;
      result = sub_10005E16C(a1 + 192, &v22);
      if (*(result[5] + 79) == 1)
      {
        *buf = &v22;
        v8 = sub_10005E16C(a1 + 192, &v22);
        ++*(v8[5] + 76);
        *buf = &v22;
        result = sub_10005E16C(a1 + 192, &v22);
        if (*(result[5] + 76) >= 6)
        {
          v9 = qword_100BCE8D0;
          if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 67109378;
            *&buf[4] = a3;
            v24 = 2082;
            v25 = "No";
            _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "A2DP Link Adaptive Packet Type: Reverting to default support (%d%%) Purged %{public}s", buf, 0x12u);
          }

          v10 = sub_100630F58(a1, v22);
          v11 = sub_1000DAB84();
          v18[0] = _NSConcreteStackBlock;
          v18[1] = 3221225472;
          v18[2] = sub_100631128;
          v18[3] = &unk_100AF59D0;
          v19 = v10;
          sub_10000CA94(v11, v18);
          *buf = &v22;
          *(sub_10005E16C(a1 + 192, &v22)[5] + 79) = 0;
LABEL_22:
          *buf = &v22;
          v13 = a1 + 192;
          goto LABEL_14;
        }
      }

      return result;
    }

LABEL_13:
    *buf = &v22;
    v13 = a1 + 192;
LABEL_14:
    result = sub_10005E16C(v13, &v22);
    *(result[5] + 76) = 0;
    return result;
  }

  *buf = &v22;
  result = sub_10005E16C(a1 + 192, &v22);
  if ((*(result[5] + 79) & 1) == 0)
  {
    v14 = qword_100BCE8D0;
    if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
    {
      v15 = "No";
      if (a4)
      {
        v15 = "Yes";
      }

      *buf = 67109378;
      *&buf[4] = a3;
      v24 = 2082;
      v25 = v15;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "A2DP Link Adaptive Packet Type: Scaling back to 2Mbps Packets support (%d%%) Purged %{public}s", buf, 0x12u);
    }

    v16 = sub_100630F58(a1, v22);
    v17 = sub_1000DAB84();
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_1006310D0;
    v20[3] = &unk_100AF59D0;
    v21 = v16;
    sub_10000CA94(v17, v20);
    *buf = &v22;
    *(sub_10005E16C(a1 + 192, &v22)[5] + 79) = 1;
    goto LABEL_22;
  }

  return result;
}

void sub_1006215C4(void *a1, unint64_t a2, unsigned int a3, char a4)
{
  v29 = a2;
  *buf = &v29;
  v7 = *(sub_10005E16C((a1 + 24), &v29)[5] + 88) == 33023;
  v8 = a1[144];
  if ((a1[145] - v8) >> 3 <= v7)
  {
    if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_ERROR))
    {
      sub_100853FDC();
    }
  }

  else
  {
    v9 = *(v8 + 8 * v7);
    if (v9)
    {
      v10 = a1[25];
      if (!v10)
      {
        goto LABEL_51;
      }

      v11 = a1 + 25;
      do
      {
        v12 = v10[4];
        v13 = v12 >= v29;
        v14 = v12 < v29;
        if (v13)
        {
          v11 = v10;
        }

        v10 = v10[v14];
      }

      while (v10);
      if (v11 == a1 + 25 || v29 < v11[4])
      {
LABEL_51:
        if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_ERROR))
        {
          sub_10085405C();
        }

        return;
      }

      LOBYTE(v15) = *v9 - 1;
      if ((a4 & 1) == 0)
      {
        v16 = *(v9 + 1);
        if (*v16 <= a3)
        {
          if ((*v9 - 1) >= 2u)
          {
            v17 = -1;
            while (*v16 > a3 || v16[1] <= a3)
            {
              --v17;
              ++v16;
              if ((*v9 - 1) - 1 + v17 == -1)
              {
                goto LABEL_27;
              }
            }

            v15 = -v17;
          }
        }

        else
        {
          LOBYTE(v15) = 0;
        }
      }

LABEL_27:
      v18 = qword_100BCE8D0;
      if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEBUG))
      {
        *buf = &v29;
        v24 = *(sub_10005E16C((a1 + 24), &v29)[5] + 66);
        *buf = &v29;
        if (v24 >= *(sub_10005E16C((a1 + 24), &v29)[5] + 68))
        {
          *buf = &v29;
          v25 = sub_10005E16C((a1 + 24), &v29);
          v26 = 68;
        }

        else
        {
          *buf = &v29;
          v25 = sub_10005E16C((a1 + 24), &v29);
          v26 = 66;
        }

        v27 = *(v25[5] + v26);
        *buf = &v29;
        v28 = *(sub_10005E16C((a1 + 24), &v29)[5] + 66);
        *buf = 67109632;
        *&buf[4] = v27;
        v31 = 1024;
        v32 = v28;
        v33 = 1024;
        v34 = a3;
        _os_log_debug_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEBUG, "A2DP Link Adaptive Bitrate: currentRate: %3d currentIndexedRate: %3d reTransmissionStats: %3d", buf, 0x14u);
      }

      *buf = &v29;
      if (*(sub_10005E16C((a1 + 24), &v29)[5] + 66) <= *(*(v9 + 2) + 2 * v15))
      {
        *buf = &v29;
        if (*(sub_10005E16C((a1 + 24), &v29)[5] + 66) < *(*(v9 + 2) + 2 * v15))
        {
          *buf = &v29;
          v19 = sub_10005E16C((a1 + 24), &v29);
          v20 = *v9;
          if (*v9)
          {
            v21 = 0;
            v22 = *(v9 + 2);
            while (*(v22 + 2 * v21) > *(v19[5] + 66))
            {
              if (v20 == ++v21)
              {
                LODWORD(v21) = *v9;
                break;
              }
            }

            if (v21 >= 1 && v21 <= v20)
            {
              sub_1006314E4(a1, v29, *(v22 + 2 * v21 - 2));
            }
          }

          goto LABEL_43;
        }
      }

      else
      {
        *buf = &v29;
        if (*(sub_10005E16C((a1 + 24), &v29)[5] + 70) < 0)
        {
          v23 = qword_100BCE8D0;
          if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 67109120;
            *&buf[4] = a3;
            _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "A2DP Link Adaptive Bitrate: Ignoring first retransmission rate report (%d%%)", buf, 8u);
          }
        }

        else
        {
          sub_100631180(a1, v29, *(*(v9 + 2) + 2 * v15));
        }
      }

      *buf = &v29;
      *(sub_10005E16C((a1 + 24), &v29)[5] + 70) = 0;
LABEL_43:
      *buf = &v29;
      *(sub_10005E16C((a1 + 24), &v29)[5] + 78) = 0;
      return;
    }

    if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_ERROR))
    {
      sub_100854098();
    }
  }
}

void sub_100621AF0(uint64_t a1, uint64_t a2, int a3, uint64_t a4, float a5)
{
  if (*(a2 + 16))
  {
    LOWORD(a5) = *(a2 + 18);
    v9 = ((LODWORD(a5) * 100.0) / *(a2 + 16));
  }

  else
  {
    v9 = 0.0;
  }

  v10 = sub_10000C798();
  if (!(*(*v10 + 184))(v10) || (v11 = sub_10000C7D0(), !(*(*v11 + 2872))(v11)))
  {
    v25 = sub_10000C798();
    if ((*(*v25 + 184))(v25) && sub_100537B8C(a4))
    {
      v26 = qword_100BCE8D0;
      if (!os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
      {
        return;
      }

      v115 = a3;
      v27 = *(a2 + 2);
      v28 = *(a2 + 18);
      v29 = *(a2 + 16);
      v30 = *(a2 + 179);
      v97 = *(a2 + 229);
      v101 = *(a2 + 230);
      v107 = *(a2 + 231);
      v31 = 234;
      if (*(a2 + 233) < 2u)
      {
        v31 = 232;
      }

      v32 = *(a2 + v31);
      v85 = *(a2 + 14);
      v87 = *(a2 + 183);
      v89 = *(a2 + 9);
      v91 = *(a2 + 185);
      v93 = *(a2 + 6);
      v95 = *(a2 + 187);
      v99 = *(a2 + 195);
      v104 = *(a2 + 197);
      v111 = *(a2 + 177);
      sub_1000DEEA4(a4, __p);
      if (v119 >= 0)
      {
        v33 = __p;
      }

      else
      {
        v33 = __p[0];
      }

      *buf = 67114242;
      v121 = v27;
      v122 = 2048;
      v123 = v9;
      v124 = 1024;
      v125 = v28;
      v126 = 1024;
      v127 = v29;
      v128 = 1024;
      v129 = v30;
      v130 = 1024;
      v131 = v28 - v30;
      v132 = 1024;
      v133 = v89;
      v134 = 1024;
      v135 = v93;
      v136 = 1024;
      v137 = v97;
      v138 = 1024;
      v139 = v101;
      v140 = 1024;
      v141 = v107;
      v142 = 1024;
      v143 = v32;
      v144 = 1024;
      v145 = v85;
      v146 = 1024;
      *v147 = v87;
      *&v147[4] = 1024;
      *&v147[6] = v91;
      v148 = 1024;
      *v149 = v95;
      *&v149[4] = 1024;
      *&v149[6] = v99;
      v150 = 1024;
      v151 = v104;
      v152 = 1024;
      v153 = v115;
      v154 = 1024;
      v155 = v111;
      v156 = 2080;
      *v157 = v33;
      v22 = "A2DP LinkQualityReport: Handle = %d ReTx = %4.1f%% (%3d / %3d), NAK = %4d, NoSync = %4d, TxPwr = %2d dBm, RSSI = %4d, {50,75,90}th Noise = {%4d,%4d,%4d} for %2d ch, 2EDR pkts = %3d, 3EDR pkts = %3d, HDR4 pkts = %3d, HDR8 pkts = %3d, CoexDenial = %3d, CoexRequest = %3d, rate = %3d kbps Flow off = %d devicename = %s";
      v23 = v26;
      v24 = 136;
      goto LABEL_38;
    }

    v34 = sub_10000C798();
    v35 = (*(*v34 + 864))(v34);
    v36 = qword_100BCE8D0;
    v37 = os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT);
    if (v35)
    {
      if (!v37)
      {
        return;
      }

      v116 = a3;
      v38 = *(a2 + 2);
      v39 = *(a2 + 18);
      v40 = *(a2 + 16);
      v41 = *(a2 + 179);
      v42 = *(a2 + 9);
      v43 = *(a2 + 6);
      v44 = *(a2 + 229);
      v45 = *(a2 + 230);
      v46 = *(a2 + 231);
      v47 = 234;
      if (*(a2 + 233) < 2u)
      {
        v47 = 232;
      }

      v48 = *(a2 + v47);
      v49 = *(a2 + 14);
      v50 = *(a2 + 177);
      if (a4)
      {
        v51 = a4;
        v108 = *(a2 + 14);
        v112 = *(a2 + 177);
        v102 = *(a2 + 231);
        v105 = *(a2 + v47);
        v52 = *(a2 + 230);
        v53 = *(a2 + 9);
        sub_1000DEEA4(v51, __p);
        v54 = __p;
        if (v119 < 0)
        {
          v54 = __p[0];
        }

        *buf = 67112962;
        v121 = v38;
        v122 = 2048;
        v123 = v9;
        v124 = 1024;
        v125 = v39;
        v126 = 1024;
        v127 = v40;
        v128 = 1024;
        v129 = v41;
        v130 = 1024;
        v131 = v39 - v41;
        v132 = 1024;
        v133 = v53;
        v134 = 1024;
        v135 = v43;
        v136 = 1024;
        v137 = v44;
        v138 = 1024;
        v139 = v52;
        v140 = 1024;
        v141 = v102;
        v142 = 1024;
        v143 = v105;
        v144 = 1024;
        v145 = v108;
        v146 = 1024;
        *v147 = v116;
        *&v147[4] = 1024;
        *&v147[6] = v112;
        v148 = 2080;
        *v149 = v54;
        v22 = "A2DP LinkQualityReport: Handle = %d ReTx = %4.1f%% (%3d /%3d), NAK =%4d, NoSync =%4d, TxPwr =%2d dBm, RSSI =%4d, {50,75,90}th Noise = {%4d,%4d,%4d} for %2d ch, 2EDR pkts =%3d, rate = %3d kbps Flow off=%d devicename=%s";
        v23 = v36;
        v24 = 106;
        goto LABEL_38;
      }

      *buf = 67112962;
      v121 = v38;
      v122 = 2048;
      v123 = v9;
      v124 = 1024;
      v125 = v39;
      v126 = 1024;
      v127 = v40;
      v128 = 1024;
      v129 = v41;
      v130 = 1024;
      v131 = v39 - v41;
      v132 = 1024;
      v133 = v42;
      v134 = 1024;
      v135 = v43;
      v136 = 1024;
      v137 = v44;
      v138 = 1024;
      v139 = v45;
      v140 = 1024;
      v141 = v46;
      v142 = 1024;
      v143 = v48;
      v144 = 1024;
      v145 = v49;
      v146 = 1024;
      *v147 = v116;
      *&v147[4] = 1024;
      *&v147[6] = v50;
      v148 = 2080;
      *v149 = "(NULL)";
      v71 = "A2DP LinkQualityReport: Handle = %d ReTx = %4.1f%% (%3d /%3d), NAK =%4d, NoSync =%4d, TxPwr =%2d dBm, RSSI =%4d, {50,75,90}th Noise = {%4d,%4d,%4d} for %2d ch, 2EDR pkts =%3d, rate = %3d kbps Flow off=%d devicename=%s";
      v72 = v36;
      v73 = 106;
    }

    else
    {
      if (!v37)
      {
        return;
      }

      v117 = a3;
      v55 = *(a2 + 2);
      v56 = *(a2 + 18);
      v57 = *(a2 + 16);
      v58 = *(a2 + 9);
      v59 = *(a2 + 6);
      v60 = *(a2 + 229);
      v61 = *(a2 + 230);
      v62 = *(a2 + 231);
      v63 = 234;
      if (*(a2 + 233) < 2u)
      {
        v63 = 232;
      }

      v64 = *(a2 + v63);
      v65 = *(a2 + 14);
      v66 = *(a2 + 177);
      if (a4)
      {
        v67 = a4;
        v68 = *(a2 + 231);
        v109 = *(a2 + 14);
        v113 = *(a2 + 177);
        v69 = *(a2 + v63);
        sub_1000DEEA4(v67, __p);
        v70 = __p;
        if (v119 < 0)
        {
          v70 = __p[0];
        }

        *buf = 67112450;
        v121 = v55;
        v122 = 2048;
        v123 = v9;
        v124 = 1024;
        v125 = v56;
        v126 = 1024;
        v127 = v57;
        v128 = 1024;
        v129 = v58;
        v130 = 1024;
        v131 = v59;
        v132 = 1024;
        v133 = v60;
        v134 = 1024;
        v135 = v61;
        v136 = 1024;
        v137 = v68;
        v138 = 1024;
        v139 = v69;
        v140 = 1024;
        v141 = v109;
        v142 = 1024;
        v143 = v117;
        v144 = 1024;
        v145 = v113;
        v146 = 2080;
        *v147 = v70;
        v22 = "A2DP LinkQualityReport: Handle = %d ReTx = %4.1f%% (%3d /%3d), TxPwr =%2d dBm, RSSI =%4d, {50,75,90}th Noise = {%4d,%4d,%4d} for %2d ch, 2EDR pkts =%3d, rate = %3d kbps Flow off=%d devicename=%s";
        v23 = v36;
        v24 = 94;
        goto LABEL_38;
      }

      *buf = 67112450;
      v121 = v55;
      v122 = 2048;
      v123 = v9;
      v124 = 1024;
      v125 = v56;
      v126 = 1024;
      v127 = v57;
      v128 = 1024;
      v129 = v58;
      v130 = 1024;
      v131 = v59;
      v132 = 1024;
      v133 = v60;
      v134 = 1024;
      v135 = v61;
      v136 = 1024;
      v137 = v62;
      v138 = 1024;
      v139 = v64;
      v140 = 1024;
      v141 = v65;
      v142 = 1024;
      v143 = v117;
      v144 = 1024;
      v145 = v66;
      v146 = 2080;
      *v147 = "(NULL)";
      v71 = "A2DP LinkQualityReport: Handle = %d ReTx = %4.1f%% (%3d /%3d), TxPwr =%2d dBm, RSSI =%4d, {50,75,90}th Noise = {%4d,%4d,%4d} for %2d ch, 2EDR pkts =%3d, rate = %3d kbps Flow off=%d devicename=%s";
      v72 = v36;
      v73 = 94;
    }

    _os_log_impl(&_mh_execute_header, v72, OS_LOG_TYPE_DEFAULT, v71, buf, v73);
    return;
  }

  v12 = *(a2 + 6);
  *(a1 + 400) = *(a2 + 6);
  v13 = *(a1 + 404);
  if (v13)
  {
    *(a1 + 404) = v13 - 1;
  }

  v14 = qword_100BCE8D0;
  if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
  {
    v15 = *(a2 + 2);
    v16 = *(a2 + 18);
    v17 = *(a2 + 16);
    v114 = a3;
    v18 = *(a2 + 179);
    v81 = *(a2 + 230);
    v83 = *(a2 + 231);
    v19 = 234;
    if (*(a2 + 233) < 2u)
    {
      v19 = 232;
    }

    v20 = *(a2 + v19);
    v74 = *(a2 + 14);
    v75 = *(a2 + 9);
    v76 = *(a2 + 183);
    v77 = *(a2 + 185);
    v78 = *(a2 + 187);
    v79 = *(a2 + 229);
    v80 = *(a2 + 189);
    v82 = *(a2 + 191);
    v84 = *(a2 + 193);
    v86 = *(a2 + 195);
    v88 = *(a2 + 197);
    v90 = *(a2 + 199);
    v92 = *(a2 + 201);
    v94 = *(a2 + 203);
    v96 = *(a2 + 205);
    v98 = *(a2 + 207);
    v100 = *(a2 + 209);
    v103 = *(a2 + 211);
    v106 = *(a2 + 213);
    v110 = *(a2 + 177);
    sub_1000DEEA4(a4, __p);
    v121 = v15;
    v21 = __p[0];
    if (v119 >= 0)
    {
      v21 = __p;
    }

    v122 = 2048;
    *buf = 67117058;
    v123 = v9;
    v125 = v16;
    v124 = 1024;
    v126 = 1024;
    v127 = v17;
    v128 = 1024;
    v129 = v18;
    v130 = 1024;
    v131 = v16 - v18;
    v132 = 1024;
    v133 = v75;
    v134 = 1024;
    v135 = v12;
    v136 = 1024;
    v137 = v79;
    v138 = 1024;
    v139 = v81;
    v140 = 1024;
    v141 = v83;
    v142 = 1024;
    v143 = v20;
    v144 = 1024;
    v145 = v74;
    v146 = 1024;
    *v147 = v76;
    *&v147[4] = 1024;
    *&v147[6] = v77;
    v148 = 1024;
    *v149 = v78;
    *&v149[4] = 1024;
    *&v149[6] = v80;
    v150 = 1024;
    v151 = v82;
    v152 = 1024;
    v153 = v84;
    v154 = 1024;
    v155 = v86;
    v156 = 1024;
    *v157 = v88;
    *&v157[4] = 1024;
    *&v157[6] = v90;
    v158 = 1024;
    v159 = v92;
    v160 = 1024;
    v161 = v94;
    v162 = 1024;
    v163 = v96;
    v164 = 1024;
    v165 = v98;
    v166 = 1024;
    v167 = v100;
    v168 = 1024;
    v169 = v103;
    v170 = 1024;
    v171 = v106;
    v172 = 1024;
    v173 = v114;
    v174 = 1024;
    v175 = v110;
    v176 = 2080;
    v177 = v21;
    v22 = "A2DP LinkQualityReport: Handle = %d ReTx = %4.1f%% (%3d / %3d), NAK = %4d, NoSync = %4d, TxPwr = %2d dBm, RSSI = %4d, {50,75,90}th Noise = {%4d,%4d,%4d} for %2d ch, 2EDR pkts = %3d, 3EDRTx pkts = %3d, HDR4Tx pkts = %3d, HDR8Tx pkts = %3d,  1SlotTx pkts = %3d, 3SlotTx pkts = %3d, 5SlotTx pkts = %3d, CoexDenial = %3d, CoexRequest = %3d, 3EDRRx pkts = %3d, HDR4Rx pkts = %3d, HDR8Rx pkts = %3d, 1SlotRx pkts = %3d, 3SlotRx pkts = %3d, 5SlotRx pkts = %3d, TxFlush pkts =%3d, Tx2Flush pkts = %3d, rate = %3d kbps Flow off = %d devicename = %s";
    v23 = v14;
    v24 = 202;
LABEL_38:
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, v22, buf, v24);
    if (v119 < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void *sub_100622500(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v39 = a2;
  v40 = &v39;
  *(*(sub_10005E16C(a1 + 192, &v39)[5] + 8) + 168) = *(a3 + 6);
  v40 = &v39;
  v5 = *(sub_10005E16C(a1 + 192, &v39)[5] + 8);
  *(v5 + 192) += *(a3 + 6);
  ++*(v5 + 200);
  v40 = &v39;
  v6 = *(sub_10005E16C(a1 + 192, &v39)[5] + 8);
  v7 = *(a3 + 7);
  if (*(v6 + 204) > v7)
  {
    *(v6 + 204) = v7;
  }

  v40 = &v39;
  v8 = *(sub_10005E16C(a1 + 192, &v39)[5] + 8);
  v9 = *(a3 + 8);
  if (*(v8 + 208) < v9)
  {
    *(v8 + 208) = v9;
  }

  v40 = &v39;
  v10 = sub_10005E16C(a1 + 192, &v39);
  *(*(v10[5] + 8) + 96) += *(a3 + 34);
  v40 = &v39;
  v11 = sub_10005E16C(a1 + 192, &v39);
  *(*(v11[5] + 8) + 100) += *(a3 + 58);
  v40 = &v39;
  v12 = sub_10005E16C(a1 + 192, &v39);
  *(*(v12[5] + 8) + 104) += *(a3 + 46);
  v40 = &v39;
  v13 = sub_10005E16C(a1 + 192, &v39);
  *(*(v13[5] + 8) + 108) += *(a3 + 70);
  v40 = &v39;
  v14 = sub_10005E16C(a1 + 192, &v39);
  *(*(v14[5] + 8) + 112) += *(a3 + 40) + *(a3 + 28) + *(a3 + 50);
  v40 = &v39;
  v15 = sub_10005E16C(a1 + 192, &v39);
  *(*(v15[5] + 8) + 116) += *(a3 + 64) + 2 * *(a3 + 74);
  v40 = &v39;
  v16 = sub_10005E16C(a1 + 192, &v39);
  *(*(v16[5] + 8) + 120) += *(a3 + 36) + *(a3 + 32);
  v40 = &v39;
  v17 = sub_10005E16C(a1 + 192, &v39);
  *(*(v17[5] + 8) + 124) += *(a3 + 60) + *(a3 + 56);
  v40 = &v39;
  v18 = sub_10005E16C(a1 + 192, &v39);
  *(*(v18[5] + 8) + 128) += *(a3 + 44);
  v40 = &v39;
  v19 = sub_10005E16C(a1 + 192, &v39);
  *(*(v19[5] + 8) + 132) += *(a3 + 68);
  if (*(a3 + 70))
  {
    v40 = &v39;
    *(*(sub_10005E16C(a1 + 192, &v39)[5] + 8) + 216) = ((*(a3 + 70) * 100.0) / (*(a3 + 46) + *(a3 + 70)));
    v40 = &v39;
    v20 = sub_10005E16C(a1 + 192, &v39);
    LOWORD(v21) = *(a3 + 70);
    *(*(v20[5] + 8) + 220) = ((100 * (*(a3 + 60) + *(a3 + 56))) / v21);
  }

  v40 = &v39;
  result = sub_10005E16C(a1 + 192, &v39);
  if (*(*(result[5] + 8) + 237) == 1)
  {
    if (*(v39 + 1437) == 1)
    {
      v40 = &v39;
      v23 = sub_10005E16C(a1 + 192, &v39);
      ++*(*(v23[5] + 8) + 244);
    }

    else
    {
      v40 = &v39;
      v24 = sub_10005E16C(a1 + 192, &v39);
      ++*(*(v24[5] + 8) + 240);
    }

    v25 = *(a3 + 12);
    v40 = &v39;
    v26 = sub_10005E16C(a1 + 192, &v39);
    *(*(v26[5] + 8) + 248) += v25;
    v27 = *(a3 + 18);
    v40 = &v39;
    v28 = sub_10005E16C(a1 + 192, &v39);
    *(*(v28[5] + 8) + 256) += v27;
    v29 = *(a3 + 211);
    v40 = &v39;
    v30 = sub_10005E16C(a1 + 192, &v39);
    *(*(v30[5] + 8) + 264) += v29;
    v31 = *(a3 + 213);
    v40 = &v39;
    v32 = sub_10005E16C(a1 + 192, &v39);
    *(*(v32[5] + 8) + 272) += v31;
    v33 = *(a3 + 16);
    v40 = &v39;
    v34 = sub_10005E16C(a1 + 192, &v39);
    *(*(v34[5] + 8) + 280) += v33;
    v40 = &v39;
    v35 = *(*(sub_10005E16C(a1 + 192, &v39)[5] + 8) + 256);
    v40 = &v39;
    LODWORD(v33) = (v35 / *(*(sub_10005E16C(a1 + 192, &v39)[5] + 8) + 280) * 100.0);
    v40 = &v39;
    *(*(sub_10005E16C(a1 + 192, &v39)[5] + 8) + 216) = v33;
    v36 = *(a3 + 20);
    v40 = &v39;
    v37 = sub_10005E16C(a1 + 192, &v39);
    *(*(v37[5] + 8) + 288) += v36;
    v38 = *(a3 + 22);
    v40 = &v39;
    result = sub_10005E16C(a1 + 192, &v39);
    *(*(result[5] + 8) + 296) += v38;
  }

  return result;
}

void sub_100622BCC(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v63 = 0;
  v64 = 0;
  sub_1006360F0(a1, a3, &v64 + 1, &v64, &v63, &v63 + 1, a2);
  v5 = *sub_10000C7D0();
  v6 = (*(v5 + 2872))();
  v7 = qword_100BCE8D0;
  v8 = os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT);
  if (!v6)
  {
    if (!v8)
    {
      return;
    }

    v33 = *(a2 + 6);
    v34 = *(a2 + 9);
    v35 = HIDWORD(v64);
    v36 = *(a2 + 46);
    v37 = HIDWORD(v63);
    v38 = ((100 * (*(a2 + 40) + *(a2 + 28) + *(a2 + 50))) / v36);
    v39 = *(a2 + 70);
    v40 = ((100 * (*(a2 + 64) + *(a2 + 52) + *(a2 + 74))) / v39);
    v41 = ((100 * (*(a2 + 36) + *(a2 + 32))) / v36);
    v42 = ((100 * (*(a2 + 60) + *(a2 + 56))) / v39);
    v43 = *(a2 + 44);
    v44 = ((100 * (*(a2 + 68) + v43)) / (v39 + v36));
    v45 = ((v43 * 100.0) / v36);
    v46 = *(a2 + 229);
    v47 = *(a2 + 230);
    v48 = *(a2 + 231);
    v49 = *(a2 + 232);
    if (a3)
    {
      v50 = a3;
      v51 = v64;
      v58 = *(a2 + 231);
      v60 = *(a2 + 232);
      v52 = *(a2 + 6);
      sub_1000DEEA4(v50, __p);
      v53 = __p;
      if (v62 < 0)
      {
        v53 = __p[0];
      }

      *buf = 67113218;
      v66 = v52;
      v67 = 1024;
      v68 = v34;
      v69 = 1024;
      v70 = v35;
      v71 = 1024;
      v72 = v51;
      v73 = 1024;
      v74 = v37;
      v75 = 2048;
      v76 = v38;
      v77 = 2048;
      v78 = v40;
      v79 = 2048;
      v80 = v41;
      v81 = 2048;
      v82 = v42;
      v83 = 2048;
      v84 = v44;
      v85 = 2048;
      v86 = v45;
      v87 = 1024;
      v88 = v46;
      v89 = 1024;
      v90 = v47;
      v91 = 1024;
      v92 = v58;
      v93 = 1024;
      v94 = v36;
      v95 = 1024;
      v96 = v60;
      v97 = 2080;
      *v98 = v53;
      v30 = "HFP LinkQualityReport: RSSI =%4d, TxPower =%2d, PLC count = %u, Received SCO count = %u, AudioInput: %u, TX [TX: %4.1f%%, ReTX: %4.1f%%], RX [TX: %4.1f%%, ReTX: %4.1f%%] ,ePA Packets = %4.1f%%, ePA CallTime = %4.1f%%, 50/75/90th Noise = (%4d,%4d,%4d), eSCO scheduled pkts = %3d, for %2d ch devicename= %s";
      v31 = v7;
      v32 = 132;
      goto LABEL_12;
    }

    *buf = 67113218;
    v66 = v33;
    v67 = 1024;
    v68 = v34;
    v69 = 1024;
    v70 = HIDWORD(v64);
    v71 = 1024;
    v72 = v64;
    v73 = 1024;
    v74 = HIDWORD(v63);
    v75 = 2048;
    v76 = v38;
    v77 = 2048;
    v78 = v40;
    v79 = 2048;
    v80 = v41;
    v81 = 2048;
    v82 = v42;
    v83 = 2048;
    v84 = v44;
    v85 = 2048;
    v86 = v45;
    v87 = 1024;
    v88 = v46;
    v89 = 1024;
    v90 = v47;
    v91 = 1024;
    v92 = v48;
    v93 = 1024;
    v94 = v36;
    v95 = 1024;
    v96 = v49;
    v97 = 2080;
    *v98 = "(NULL)";
    v54 = "HFP LinkQualityReport: RSSI =%4d, TxPower =%2d, PLC count = %u, Received SCO count = %u, AudioInput: %u, TX [TX: %4.1f%%, ReTX: %4.1f%%], RX [TX: %4.1f%%, ReTX: %4.1f%%] ,ePA Packets = %4.1f%%, ePA CallTime = %4.1f%%, 50/75/90th Noise = (%4d,%4d,%4d), eSCO scheduled pkts = %3d, for %2d ch devicename= %s";
    v55 = v7;
    v56 = 132;
LABEL_16:
    _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEFAULT, v54, buf, v56);
    return;
  }

  if (!v8)
  {
    return;
  }

  v9 = *(a2 + 6);
  v10 = *(a2 + 9);
  v11 = HIDWORD(v64);
  v12 = *(a2 + 46);
  v13 = *(a2 + 70);
  v14 = ((100 * (*(a2 + 40) + *(a2 + 28) + *(a2 + 50))) / v12);
  v15 = ((100 * (*(a2 + 64) + *(a2 + 52) + *(a2 + 74))) / v13);
  v16 = ((100 * (*(a2 + 36) + *(a2 + 32))) / v12);
  v17 = *(a2 + 44);
  v18 = ((100 * (*(a2 + 60) + *(a2 + 56))) / v13);
  v19 = ((100 * (*(a2 + 68) + v17)) / (v13 + v12));
  v20 = ((v17 * 100.0) / v12);
  v21 = *(a2 + 229);
  v22 = *(a2 + 230);
  v23 = *(a2 + 231);
  v24 = *(a2 + 232);
  v25 = *(a2 + 215);
  if (!a3)
  {
    *buf = 67113474;
    v66 = v9;
    v67 = 1024;
    v68 = v10;
    v69 = 1024;
    v70 = HIDWORD(v64);
    v71 = 1024;
    v72 = v64;
    v73 = 1024;
    v74 = HIDWORD(v63);
    v75 = 2048;
    v76 = v14;
    v77 = 2048;
    v78 = v15;
    v79 = 2048;
    v80 = v16;
    v81 = 2048;
    v82 = v18;
    v83 = 2048;
    v84 = v19;
    v85 = 2048;
    v86 = v20;
    v87 = 1024;
    v88 = v21;
    v89 = 1024;
    v90 = v22;
    v91 = 1024;
    v92 = v23;
    v93 = 1024;
    v94 = v24;
    v95 = 1024;
    v96 = v25;
    v97 = 1024;
    *v98 = v12;
    *&v98[4] = 2080;
    *&v98[6] = "(NULL)";
    v54 = "HFP LinkQualityReport: RSSI =%4d, TxPower =%2d, PLC count = %u, Received SCO count = %u, AudioInput: %u, TX [TX: %4.1f%%, ReTX: %4.1f%%], RX [TX: %4.1f%%, ReTX: %4.1f%%] ,ePA Packets = %4.1f%%, ePA CallTime = %4.1f%%, 50/75/90th Noise = (%4d,%4d,%4d) for %2d ch, eSCONak pkts = %3d, eSCO scheduled pkts = %3d, devicename= %s";
    v55 = v7;
    v56 = 138;
    goto LABEL_16;
  }

  v26 = a3;
  v27 = HIDWORD(v63);
  v28 = v64;
  v57 = v24;
  v59 = v25;
  sub_1000DEEA4(v26, __p);
  v29 = __p;
  if (v62 < 0)
  {
    v29 = __p[0];
  }

  *buf = 67113474;
  v66 = v9;
  v67 = 1024;
  v68 = v10;
  v69 = 1024;
  v70 = v11;
  v71 = 1024;
  v72 = v28;
  v73 = 1024;
  v74 = v27;
  v75 = 2048;
  v76 = v14;
  v77 = 2048;
  v78 = v15;
  v79 = 2048;
  v80 = v16;
  v81 = 2048;
  v82 = v18;
  v83 = 2048;
  v84 = v19;
  v85 = 2048;
  v86 = v20;
  v87 = 1024;
  v88 = v21;
  v89 = 1024;
  v90 = v22;
  v91 = 1024;
  v92 = v23;
  v93 = 1024;
  v94 = v57;
  v95 = 1024;
  v96 = v59;
  v97 = 1024;
  *v98 = v12;
  *&v98[4] = 2080;
  *&v98[6] = v29;
  v30 = "HFP LinkQualityReport: RSSI =%4d, TxPower =%2d, PLC count = %u, Received SCO count = %u, AudioInput: %u, TX [TX: %4.1f%%, ReTX: %4.1f%%], RX [TX: %4.1f%%, ReTX: %4.1f%%] ,ePA Packets = %4.1f%%, ePA CallTime = %4.1f%%, 50/75/90th Noise = (%4d,%4d,%4d) for %2d ch, eSCONak pkts = %3d, eSCO scheduled pkts = %3d, devicename= %s";
  v31 = v7;
  v32 = 138;
LABEL_12:
  _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, v30, buf, v32);
  if (v62 < 0)
  {
    operator delete(__p[0]);
  }
}

double sub_100623278(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v23 = a2;
  v24 = &v23;
  if (*(sub_10005E16C(a1 + 192, &v23)[5] + 24))
  {
    v24 = &v23;
    if (*sub_10005E16C(a1 + 192, &v23)[5])
    {
      v24 = &v23;
      if (*(*(sub_10005E16C(a1 + 192, &v23)[5] + 24) + 180))
      {
        if (*(a3 + 16))
        {
          v6 = 100 * *(a3 + 18) / *(a3 + 16);
        }

        else
        {
          v6 = 0;
        }

        if (*(a3 + 197))
        {
          v7 = *(a3 + 195) / *(a3 + 197);
          if (!*(a3 + 195))
          {
            v7 = 0.0;
          }
        }

        else
        {
          v7 = 0.0;
        }

        v22 = v7;
        v24 = &v23;
        v8 = *(sub_10005E16C(a1 + 192, &v23)[5] + 24);
        *(v8 + 172) += v6;
        ++*(v8 + 148);
        v24 = &v23;
        v9 = *(sub_10005E16C(a1 + 192, &v23)[5] + 24);
        *(v9 + 176) += *(a3 + 6);
        ++*(v9 + 168);
        v24 = &v23;
        v10 = *(sub_10005E16C(a1 + 192, &v23)[5] + 24);
        v11 = *(a3 + 7);
        if (*(v10 + 160) > v11)
        {
          *(v10 + 160) = v11;
        }

        v24 = &v23;
        v12 = *(sub_10005E16C(a1 + 192, &v23)[5] + 24);
        v13 = *(a3 + 8);
        if (*(v12 + 156) < v13)
        {
          *(v12 + 156) = v13;
        }

        v24 = &v23;
        v14 = *(*sub_10005E16C(a1 + 192, &v23)[5] + 320);
        v24 = &v23;
        *(*(sub_10005E16C(a1 + 192, &v23)[5] + 24) + 188) = v14;
        v24 = &v23;
        v15 = sub_10005E16C(a1 + 192, &v23);
        __asm { FMOV            V1.2S, #1.0 }

        _D1.f32[0] = v22;
        *(*(v15[5] + 24) + 196) = vadd_f32(_D1, *(*(v15[5] + 24) + 196));
      }

      v24 = &v23;
      v21 = sub_10005E16C(a1 + 192, &v23);
      ++*(*(v21[5] + 24) + 184);
      v24 = &v23;
      if (*(*(sub_10005E16C(a1 + 192, &v23)[5] + 24) + 184) >= 0x3Cu)
      {
        return sub_1006235A0(a1, v23);
      }
    }
  }

  return result;
}

double sub_1006235A0(uint64_t a1, unint64_t a2)
{
  v13 = a2;
  v3 = qword_100BCE8D0;
  if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Trigger A2dpPacketFlush metrics", buf, 2u);
  }

  *buf = &v13;
  if (*(sub_10005E16C(a1 + 192, &v13)[5] + 80) == 1)
  {
    *buf = &v13;
    if (*(sub_10005E16C(a1 + 192, &v13)[5] + 84) == 2)
    {
      *buf = &v13;
      if (*(*(sub_10005E16C(a1 + 192, &v13)[5] + 24) + 180) >= 0xAu)
      {
        sub_10063AF08(a1, v13);
        v4 = sub_10000F034();
        *buf = &v13;
        v5 = sub_10005E16C(a1 + 192, &v13);
        (*(*v4 + 96))(v4, *(v5[5] + 24));
        if (_os_feature_enabled_impl())
        {
          if (qword_100B543A8 != -1)
          {
            sub_100853E98();
          }

          v6 = qword_100B543A0;
          v7 = v13;
          *buf = &v13;
          v8 = sub_10005E16C(a1 + 192, &v13);
          sub_100705B08(v6, v7, *v8[5]);
          v9 = qword_100BCE8D0;
          if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Sent A2DP Packet Flush Info to AccessoryUsageSummary", buf, 2u);
          }
        }

        *buf = &v13;
        if (*sub_10005E16C(a1 + 192, &v13)[5])
        {
          *buf = &v13;
          v10 = sub_10005E16C(a1 + 192, &v13);
          ++*(*v10[5] + 256);
        }
      }
    }
  }

  *buf = &v13;
  v11 = *(sub_10005E16C(a1 + 192, &v13)[5] + 24);
  *(v11 + 148) = 0;
  *(v11 + 156) = 4294967169;
  *(v11 + 168) = 0;
  *(v11 + 176) = 0;
  *(v11 + 184) = 0;
  result = NAN;
  *v11 = xmmword_1008AA9C0;
  *(v11 + 16) = xmmword_1008AA9D0;
  *(v11 + 32) = 0;
  return result;
}

void sub_10062388C(uint64_t a1, __int128 *a2, int *a3)
{
  v15[0] = 0;
  v15[1] = v15;
  v15[2] = 0x10C12000000;
  v15[3] = sub_100623A58;
  v15[4] = nullsub_506;
  v15[5] = "";
  v4 = a2[11];
  v26 = a2[10];
  v27 = v4;
  v28[0] = a2[12];
  *(v28 + 12) = *(a2 + 204);
  v5 = a2[7];
  v22 = a2[6];
  v23 = v5;
  v6 = a2[9];
  v24 = a2[8];
  v25 = v6;
  v7 = a2[3];
  v18 = a2[2];
  v19 = v7;
  v8 = a2[5];
  v20 = a2[4];
  v21 = v8;
  v9 = a2[1];
  v16 = *a2;
  v17 = v9;
  v13 = *a3;
  v14 = *(a3 + 2);
  if (qword_100B508F0 != -1)
  {
    sub_100853FB4();
  }

  v10 = sub_1000E6554(off_100B508E8, &v13, 0);
  v11 = *(a1 + 256);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100623AA0;
  block[3] = &unk_100AE0EB8;
  block[5] = a1;
  block[6] = v10;
  block[4] = v15;
  dispatch_async(v11, block);
  _Block_object_dispose(v15, 8);
}

__n128 sub_100623A58(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v2;
  v3 = *(a2 + 80);
  v4 = *(a2 + 96);
  v5 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v5;
  *(a1 + 80) = v3;
  *(a1 + 96) = v4;
  v6 = *(a2 + 144);
  v7 = *(a2 + 160);
  v8 = *(a2 + 192);
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 192) = v8;
  *(a1 + 144) = v6;
  *(a1 + 160) = v7;
  result = *(a2 + 208);
  v10 = *(a2 + 224);
  v11 = *(a2 + 240);
  *(a1 + 252) = *(a2 + 252);
  *(a1 + 224) = v10;
  *(a1 + 240) = v11;
  *(a1 + 208) = result;
  return result;
}

void sub_100623AA0(void *a1)
{
  v1 = a1[6];
  if (v1)
  {
    v3 = a1[5];
    v4 = *(v3 + 200);
    if (v4)
    {
      v5 = v3 + 200;
      do
      {
        v6 = *(v4 + 32);
        v7 = v6 >= v1;
        v8 = v6 < v1;
        if (v7)
        {
          v5 = v4;
        }

        v4 = *(v4 + 8 * v8);
      }

      while (v4);
      if (v5 != v3 + 200 && v1 >= *(v5 + 32))
      {
        v9 = sub_10000E92C();
        v10 = (*(*v9 + 288))(v9);
        if ((v10 & 1) == 0)
        {
          *(v3 + 958) = *(*(a1[4] + 8) + 220);
          v11 = *(a1[4] + 8);
          v12 = *(v11 + 221);
          v13 = *(v11 + 237);
          *(v3 + 990) = *(v11 + 252);
          *(v3 + 959) = v12;
          *(v3 + 975) = v13;
          v14 = a1[6];
          v15 = (*(a1[4] + 8) + 48);

          sub_100623B98(v10, v15, v14);
        }
      }
    }
  }
}

void sub_100623B98(uint64_t a1, unsigned __int16 *a2, uint64_t a3)
{
  v5 = [NSMutableString stringWithFormat:&stru_100B0F9E0];
  v6 = [NSMutableString stringWithFormat:&stru_100B0F9E0];
  v7 = [NSMutableString stringWithFormat:&stru_100B0F9E0];
  v8 = *(a2 + 172);
  if (v8)
  {
    [v5 appendString:@"ISM 2.4"];
    v8 = *(a2 + 172);
  }

  if ((v8 & 2) != 0)
  {
    [v5 appendString:@"UNII-1 "];
    v8 = *(a2 + 172);
  }

  if ((v8 & 4) != 0)
  {
    [v5 appendString:@"UNII-3 "];
    v8 = *(a2 + 172);
  }

  if ((v8 & 8) != 0)
  {
    [v5 appendString:@"UNII-4 "];
    v8 = *(a2 + 172);
  }

  if ((v8 & 0x10) != 0)
  {
    [v5 appendString:@"UNII-5A "];
    v8 = *(a2 + 172);
  }

  if ((v8 & 0x20) != 0)
  {
    [v5 appendString:@"UNII-5B "];
    v8 = *(a2 + 172);
  }

  if ((v8 & 0x40) != 0)
  {
    [v5 appendString:@"UNII-5C "];
    v8 = *(a2 + 172);
  }

  if (v8 < 0)
  {
    [v5 appendString:@"UNII-5D "];
  }

  for (i = 2; i != 12; ++i)
  {
    [v6 appendFormat:@"%02X ", *(a2 + i)];
  }

  do
  {
    [v7 appendFormat:@"%d ", *(a2 + i)];
    i += 2;
  }

  while (i != 172);
  v10 = qword_100BCE8D0;
  if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
  {
    v11 = *a2;
    sub_1000DEEA4(a3, __p);
    if (v14 >= 0)
    {
      v12 = __p;
    }

    else
    {
      v12 = __p[0];
    }

    *buf = 67110146;
    v16 = v11;
    v17 = 2112;
    v18 = v5;
    v19 = 2112;
    v20 = v6;
    v21 = 2112;
    v22 = v7;
    v23 = 2080;
    v24 = v12;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "A2DP HRB LinkQualityReport: Handle = %d, band = %@, AFH Channel Map: [%@], AFH Frequency Map: [%@], devicename = %s", buf, 0x30u);
    if (v14 < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_100623E5C(uint64_t a1, __int128 *a2, int *a3)
{
  v13[0] = 0;
  v13[1] = v13;
  v13[2] = 0xB212000000;
  v13[3] = sub_100623FE4;
  v13[4] = nullsub_507;
  v13[5] = "";
  v4 = a2[7];
  v20 = a2[6];
  v21 = v4;
  v22 = *(a2 + 64);
  v5 = a2[3];
  v16 = a2[2];
  v17 = v5;
  v6 = a2[5];
  v18 = a2[4];
  v19 = v6;
  v7 = a2[1];
  v14 = *a2;
  v15 = v7;
  v11 = *a3;
  v12 = *(a3 + 2);
  if (qword_100B508F0 != -1)
  {
    sub_100853FB4();
  }

  v8 = sub_1000E6554(off_100B508E8, &v11, 0);
  v9 = *(a1 + 256);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10062401C;
  v10[3] = &unk_100AE0EB8;
  v10[5] = a1;
  v10[6] = v8;
  v10[4] = v13;
  dispatch_async(v9, v10);
  _Block_object_dispose(v13, 8);
}

__n128 sub_100623FE4(uint64_t a1, uint64_t a2)
{
  *(a1 + 48) = *(a2 + 48);
  v2 = *(a2 + 64);
  v3 = *(a2 + 80);
  v4 = *(a2 + 112);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 112) = v4;
  *(a1 + 64) = v2;
  *(a1 + 80) = v3;
  result = *(a2 + 128);
  v6 = *(a2 + 144);
  v7 = *(a2 + 160);
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 144) = v6;
  *(a1 + 160) = v7;
  *(a1 + 128) = result;
  return result;
}

void sub_10062401C(void *a1)
{
  v1 = a1[6];
  if (v1)
  {
    v3 = a1[5];
    v4 = *(v3 + 200);
    if (v4)
    {
      v5 = v3 + 200;
      do
      {
        v6 = *(v4 + 32);
        v7 = v6 >= v1;
        v8 = v6 < v1;
        if (v7)
        {
          v5 = v4;
        }

        v4 = *(v4 + 8 * v8);
      }

      while (v4);
      if (v5 != v3 + 200 && v1 >= *(v5 + 32))
      {
        v9 = sub_10000E92C();
        v10 = (*(*v9 + 288))(v9);
        if ((v10 & 1) == 0)
        {
          *(v3 + 958) = *(*(a1[4] + 8) + 50);
          v11 = *(a1[4] + 8);
          v12 = *(v11 + 116);
          v13 = *(v11 + 132);
          v14 = *(v11 + 148);
          *(v3 + 1116) = *(v11 + 162);
          *(v3 + 1086) = v13;
          *(v3 + 1102) = v14;
          *(v3 + 1070) = v12;
          v15 = *(v11 + 52);
          v16 = *(v11 + 68);
          v17 = *(v11 + 100);
          *(v3 + 1038) = *(v11 + 84);
          *(v3 + 1054) = v17;
          *(v3 + 1006) = v15;
          *(v3 + 1022) = v16;
          v18 = a1[6];
          v19 = (*(a1[4] + 8) + 48);

          sub_100624134(v10, v19, v18);
        }
      }
    }
  }
}

void sub_100624134(uint64_t a1, unsigned __int16 *a2, uint64_t a3)
{
  v5 = [NSMutableString stringWithFormat:&stru_100B0F9E0];
  v6 = v5;
  v7 = *(a2 + 2);
  if (v7)
  {
    [v5 appendString:@"ISM 2.4"];
    v7 = *(a2 + 2);
  }

  if ((v7 & 2) != 0)
  {
    [v6 appendString:@"UNII-1 "];
    v7 = *(a2 + 2);
  }

  if ((v7 & 4) != 0)
  {
    [v6 appendString:@"UNII-3 "];
    v7 = *(a2 + 2);
  }

  if ((v7 & 8) != 0)
  {
    [v6 appendString:@"UNII-4 "];
    v7 = *(a2 + 2);
  }

  if ((v7 & 0x10) != 0)
  {
    [v6 appendString:@"UNII-5A "];
    v7 = *(a2 + 2);
  }

  if ((v7 & 0x20) != 0)
  {
    [v6 appendString:@"UNII-5B "];
    v7 = *(a2 + 2);
  }

  if ((v7 & 0x40) != 0)
  {
    [v6 appendString:@"UNII-5C "];
    v7 = *(a2 + 2);
  }

  if (v7 < 0)
  {
    [v6 appendString:@"UNII-5D "];
  }

  v8 = qword_100BCE8D0;
  if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *a2;
    sub_1000DEEA4(a3, __p);
    if (v12 >= 0)
    {
      v10 = __p;
    }

    else
    {
      v10 = __p[0];
    }

    *buf = 67109634;
    v14 = v9;
    v15 = 2112;
    v16 = v6;
    v17 = 2080;
    v18 = v10;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "A2DP HRB Noise Noise Floor LinkQualityReport: Handle = %d, band = %@, devicename = %s", buf, 0x1Cu);
    if (v12 < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_100624334(uint64_t a1, __int128 *a2, int *a3)
{
  v14[0] = 0;
  v14[1] = v14;
  v14[2] = 0xF012000000;
  v14[3] = sub_1006244EC;
  v14[4] = nullsub_508;
  v14[5] = "";
  v4 = a2[9];
  v23 = a2[8];
  v24 = v4;
  v25[0] = a2[10];
  *(v25 + 15) = *(a2 + 175);
  v5 = a2[5];
  v19 = a2[4];
  v20 = v5;
  v6 = a2[7];
  v21 = a2[6];
  v22 = v6;
  v7 = a2[1];
  v15 = *a2;
  v16 = v7;
  v8 = a2[3];
  v17 = a2[2];
  v18 = v8;
  v12 = *a3;
  v13 = *(a3 + 2);
  if (qword_100B508F0 != -1)
  {
    sub_100853FB4();
  }

  v9 = sub_1000E6554(off_100B508E8, &v12, 0);
  v10 = *(a1 + 256);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10062452C;
  block[3] = &unk_100AE0EB8;
  block[5] = a1;
  block[6] = v9;
  block[4] = v14;
  dispatch_async(v10, block);
  _Block_object_dispose(v14, 8);
}

__n128 sub_1006244EC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 48);
  v3 = *(a2 + 64);
  v4 = *(a2 + 96);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 96) = v4;
  *(a1 + 48) = v2;
  *(a1 + 64) = v3;
  v5 = *(a2 + 112);
  v6 = *(a2 + 128);
  v7 = *(a2 + 160);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 160) = v7;
  *(a1 + 112) = v5;
  *(a1 + 128) = v6;
  result = *(a2 + 176);
  v9 = *(a2 + 192);
  v10 = *(a2 + 208);
  *(a1 + 223) = *(a2 + 223);
  *(a1 + 192) = v9;
  *(a1 + 208) = v10;
  *(a1 + 176) = result;
  return result;
}

void sub_10062452C(void *a1)
{
  v1 = a1[6];
  if (v1)
  {
    v3 = a1[5];
    v6 = *(v3 + 200);
    v4 = v3 + 200;
    v5 = v6;
    if (v6)
    {
      v7 = v4;
      do
      {
        v8 = *(v5 + 32);
        v9 = v8 >= v1;
        v10 = v8 < v1;
        if (v9)
        {
          v7 = v5;
        }

        v5 = *(v5 + 8 * v10);
      }

      while (v5);
      if (v7 != v4 && v1 >= *(v7 + 32))
      {
        v11 = sub_10000E92C();
        v12 = (*(*v11 + 288))(v11);
        if ((v12 & 1) == 0)
        {
          v13 = a1[6];
          v14 = (*(a1[4] + 8) + 48);

          sub_1006245F0(v12, v14, v13);
        }
      }
    }
  }
}

void sub_1006245F0(uint64_t a1, unsigned __int16 *a2, uint64_t a3)
{
  v3 = 0;
  v4 = *(a2 + 9);
  v5 = *(a2 + 39);
  v6 = v4;
  v7 = v5;
  do
  {
    v8 = *(a2 + v3 + 10);
    if (v8 < v4)
    {
      v4 = *(a2 + v3 + 10);
    }

    if (v8 > v6)
    {
      v6 = *(a2 + v3 + 10);
    }

    v9 = *(a2 + v3 + 40);
    if (v9 < v5)
    {
      v5 = *(a2 + v3 + 40);
    }

    if (v9 > v7)
    {
      v7 = *(a2 + v3 + 40);
    }

    ++v3;
  }

  while (v3 != 29);
  v53 = v7;
  v55 = v5;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v16 = 0;
  v17 = 0;
  v18 = 0;
  do
  {
    v19 = &a2[v10];
    v20 = HIBYTE(a2[v10 + 34]);
    if (v20 == 3)
    {
      v21 = v16 + 1;
    }

    else
    {
      v21 = v16;
    }

    if (v20 == 2)
    {
      v22 = v17 + 1;
    }

    else
    {
      v22 = v17;
    }

    if (v20 == 2)
    {
      v21 = v16;
    }

    if (v20 == 1)
    {
      v23 = v18 + 1;
    }

    else
    {
      v23 = v18;
    }

    if (HIBYTE(a2[v10 + 34]))
    {
      v24 = v11;
    }

    else
    {
      v23 = v18;
      v24 = v11 + 1;
    }

    if (HIBYTE(a2[v10 + 34]) > 1u)
    {
      v17 = v22;
    }

    else
    {
      v18 = v23;
    }

    if (HIBYTE(a2[v10 + 34]) <= 1u)
    {
      v11 = v24;
    }

    else
    {
      v16 = v21;
    }

    ++v10;
    v25 = *(v19 + 70);
    if (v25 == 3)
    {
      v26 = v12 + 1;
    }

    else
    {
      v26 = v12;
    }

    if (v25 == 2)
    {
      v27 = v13 + 1;
    }

    else
    {
      v27 = v13;
    }

    if (v25 == 2)
    {
      v26 = v12;
    }

    if (v25 == 1)
    {
      v28 = v14 + 1;
    }

    else
    {
      v28 = v14;
    }

    if (v25)
    {
      v29 = v15;
    }

    else
    {
      v29 = v15 + 1;
    }

    if (!v25)
    {
      v28 = v14;
    }

    if (v25 > 1)
    {
      v13 = v27;
      v12 = v26;
    }

    else
    {
      v15 = v29;
      v14 = v28;
    }
  }

  while ((v10 * 2 - 2) < 0x39);
  v58 = [NSMutableString stringWithFormat:@", v1 AoSCoexDenialBitmap = 0x%X ", *(a2 + 189)];
  log = qword_100BCE8D0;
  if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
  {
    v30 = *(a2 + 7);
    v31 = *a2;
    v32 = v6;
    v33 = v15;
    v34 = v14;
    v35 = *(a2 + 3);
    v36 = v12;
    v37 = *(a2 + 5);
    v38 = v11;
    v39 = v18;
    v40 = v17;
    v41 = v16;
    if (a3)
    {
      v42 = *(a2 + 7);
      v43 = *a2;
      v48 = v53;
      v49 = v33;
      v44 = v32;
      v50 = v34;
      v51 = v36;
      v54 = v38;
      sub_1000DEEA4(a3, __p);
      if (v60 >= 0)
      {
        v45 = __p;
      }

      else
      {
        v45 = __p[0];
      }

      v46 = v58;
      if (*(a2 + 2) != 1)
      {
        v46 = &stru_100B0F9E0;
      }

      *buf = 67113474;
      v62 = v42;
      v63 = 1024;
      v64 = v43;
      v65 = 1024;
      v66 = v35;
      v67 = 1024;
      v68 = v37;
      v69 = 1024;
      v70 = v4;
      v71 = 1024;
      v72 = v44;
      v73 = 1024;
      v74 = v55;
      v75 = 1024;
      v76 = v48;
      v77 = 1024;
      v78 = v49;
      v79 = 1024;
      v80 = v50;
      v81 = 1024;
      v82 = v13;
      v83 = 1024;
      v84 = v51;
      v85 = 1024;
      v86 = v54;
      v87 = 1024;
      v88 = v39;
      v89 = 1024;
      v90 = v40;
      v91 = 1024;
      v92 = v41;
      v93 = 2080;
      v94 = v45;
      v95 = 2112;
      v96 = v46;
      _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "A2DP BtCoexLinkStats: Handle = %d, BtClock = %5d, CoexReq = %4d, CoexReqDenied = %4d, SNR-Last30Tran (min, max): (%3d, %3d), RSSI-Last30Tran (min, max): (%4d, %4d), TxInfo-Last30Pkts (Good, ReTxNak, ReTxNoSync, Poll) (%2d, %2d, %2d, %2d),  RxInfo-Last30Pkts (Good, CrcErr, HeaderErr, NoSync) (%2d, %2d, %2d, %2d), devicename = %s %@", buf, 0x76u);
      if (v60 < 0)
      {
        operator delete(__p[0]);
      }
    }

    else
    {
      v47 = v58;
      if (*(a2 + 2) != 1)
      {
        v47 = &stru_100B0F9E0;
      }

      *buf = 67113474;
      v62 = v30;
      v63 = 1024;
      v64 = v31;
      v65 = 1024;
      v66 = v35;
      v67 = 1024;
      v68 = v37;
      v69 = 1024;
      v70 = v4;
      v71 = 1024;
      v72 = v32;
      v73 = 1024;
      v74 = v55;
      v75 = 1024;
      v76 = v53;
      v77 = 1024;
      v78 = v15;
      v79 = 1024;
      v80 = v14;
      v81 = 1024;
      v82 = v13;
      v83 = 1024;
      v84 = v36;
      v85 = 1024;
      v86 = v38;
      v87 = 1024;
      v88 = v39;
      v89 = 1024;
      v90 = v40;
      v91 = 1024;
      v92 = v16;
      v93 = 2080;
      v94 = "(NULL)";
      v95 = 2112;
      v96 = v47;
      _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "A2DP BtCoexLinkStats: Handle = %d, BtClock = %5d, CoexReq = %4d, CoexReqDenied = %4d, SNR-Last30Tran (min, max): (%3d, %3d), RSSI-Last30Tran (min, max): (%4d, %4d), TxInfo-Last30Pkts (Good, ReTxNak, ReTxNoSync, Poll) (%2d, %2d, %2d, %2d),  RxInfo-Last30Pkts (Good, CrcErr, HeaderErr, NoSync) (%2d, %2d, %2d, %2d), devicename = %s %@", buf, 0x76u);
    }
  }
}

void sub_100624A70(uint64_t a1, _OWORD *a2, int *a3)
{
  v9[0] = 0;
  v9[1] = v9;
  v9[2] = 0x5012000000;
  v9[3] = sub_100624BAC;
  v9[4] = nullsub_509;
  v9[5] = "";
  v10[0] = *a2;
  *(v10 + 11) = *(a2 + 11);
  v7 = *a3;
  v8 = *(a3 + 2);
  if (qword_100B508F0 != -1)
  {
    sub_100853FB4();
  }

  v4 = sub_1000E6554(off_100B508E8, &v7, 0);
  v5 = *(a1 + 256);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100624BC4;
  v6[3] = &unk_100AE0EB8;
  v6[5] = a1;
  v6[6] = v4;
  v6[4] = v9;
  dispatch_async(v5, v6);
  _Block_object_dispose(v9, 8);
}

void sub_100624B94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__n128 sub_100624BAC(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 48);
  *(a1 + 59) = *(a2 + 59);
  *(a1 + 48) = result;
  return result;
}

void sub_100624BC4(void *a1)
{
  v1 = a1[6];
  if (v1)
  {
    v3 = a1[5];
    v4 = *(v3 + 200);
    if (v4)
    {
      v5 = v3 + 200;
      do
      {
        v6 = *(v4 + 32);
        v7 = v6 >= v1;
        v8 = v6 < v1;
        if (v7)
        {
          v5 = v4;
        }

        v4 = *(v4 + 8 * v8);
      }

      while (v4);
      if (v5 != v3 + 200 && v1 >= *(v5 + 32))
      {
        v9 = sub_10000C798();
        if ((*(*v9 + 168))(v9) && *(v3 + 872) != 3)
        {
          sub_100624CE4(v3, a1[6], (*(a1[4] + 8) + 48));
        }

        v10 = sub_10000E92C();
        v11 = (*(*v10 + 288))(v10);
        if ((v11 & 1) == 0 && *(v3 + 872) != 3)
        {
          v12 = *(a1[4] + 8) + 48;

          sub_100624E3C(v11, v12);
        }
      }
    }
  }
}

void *sub_100624CE4(uint64_t a1, unint64_t a2, unsigned __int16 *a3)
{
  v12 = a2;
  v13 = &v12;
  if (*sub_10005E16C(a1 + 192, &v12)[5])
  {
    v13 = &v12;
    v5 = *sub_10005E16C(a1 + 192, &v12)[5];
    if (v5)
    {
      v6 = (v5 + 36);
    }

    else
    {
      v6 = 0;
    }

    v7 = v6[1];
    *v6 += a3[3];
    v6[1] = v7 + a3[4];
    v6[6] += a3[5];
  }

  v13 = &v12;
  result = sub_10005E16C(a1 + 192, &v12);
  if (*(result[5] + 8))
  {
    v13 = &v12;
    result = sub_10005E16C(a1 + 192, &v12);
    v9 = *(result[5] + 8);
    if (v9)
    {
      v10 = (v9 + 36);
    }

    else
    {
      v10 = 0;
    }

    v11 = v10[1];
    *v10 += a3[3];
    v10[1] = v11 + a3[4];
    v10[6] += a3[5];
  }

  return result;
}

void sub_100624E3C(uint64_t a1, uint64_t a2)
{
  v3 = sub_10000C798();
  if ((*(*v3 + 168))(v3))
  {
    if (*(sub_10000C7D0() + 800) < 0x7D0u || *(sub_10000C7D0() + 800) > 0xF9Fu || *(sub_10000C7D0() + 800) < 0xBB8u)
    {
      v20 = qword_100BCE8D0;
      if (!os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
      {
        return;
      }

      v21 = *(a2 + 6);
      v22 = *(a2 + 8);
      v23 = *(a2 + 10);
      v24 = *(a2 + 12);
      v25 = *(a2 + 14);
      v26 = *(a2 + 16);
      v27 = *(a2 + 22);
      v28 = *(a2 + 18);
      v29 = *(a2 + 20);
      v30 = *(a2 + 21);
      v31 = 67112192;
      v32 = v21;
      v33 = 1024;
      v34 = v22;
      v35 = 1024;
      v36 = v23;
      v37 = 1024;
      v38 = v24;
      v39 = 1024;
      v40 = v25;
      v41 = 1024;
      v42 = v26;
      v43 = 1024;
      v44 = v27;
      v45 = 1024;
      v46 = v28;
      v47 = 1024;
      v48 = v29;
      v49 = 1024;
      v50 = v30;
      v51 = 2048;
      *v52 = ((v26 * 100.0) / v24);
      *&v52[8] = 2048;
      *v53 = ((v23 * 100.0) / v24);
      *&v53[8] = 2048;
      *v54 = ((v27 * 100.0) / v24);
      v17 = "BeamformingReport: Packets on {Ant0, Ant1, Beamforming} = {%3d, %3d, %3d}; Total tx packets = %3d, Total retx packets = %3d; Total ePA packets = %3d; Total packets beamforming+ePA = %3d; Sync Timeout = %3d; RSSI{Ant0, Ant1} = {%4d, %4d}; {ePA, Beamforming, ePA+Beamforming} Usage = {%4.1f%%, %4.1f%%, %4.1f%%}";
      v18 = v20;
      v19 = 92;
    }

    else
    {
      v4 = qword_100BCE8D0;
      if (!os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
      {
        return;
      }

      v5 = *(a2 + 6);
      v6 = *(a2 + 8);
      v7 = *(a2 + 24);
      v8 = *(a2 + 10);
      v9 = *(a2 + 12);
      v10 = *(a2 + 14);
      v11 = *(a2 + 16);
      v12 = *(a2 + 22);
      v13 = *(a2 + 18);
      v14 = *(a2 + 20);
      v15 = *(a2 + 21);
      v16 = *(a2 + 26);
      v31 = 67112704;
      v32 = v5;
      v33 = 1024;
      v34 = v6;
      v35 = 1024;
      v36 = v7;
      v37 = 1024;
      v38 = v8;
      v39 = 1024;
      v40 = v9;
      v41 = 1024;
      v42 = v10;
      v43 = 1024;
      v44 = v11;
      v45 = 1024;
      v46 = v12;
      v47 = 1024;
      v48 = v13;
      v49 = 1024;
      v50 = v14;
      v51 = 1024;
      *v52 = v15;
      *&v52[4] = 1024;
      *&v52[6] = v16;
      *v53 = 2048;
      *&v53[2] = ((v11 * 100.0) / v9);
      *v54 = 2048;
      *&v54[2] = ((v8 * 100.0) / v9);
      v55 = 2048;
      v56 = ((v12 * 100.0) / v9);
      v17 = "BeamformingReport: Packets on {Ant0, Ant1, Ant2, Beamforming} = {%3d, %3d, %3d, %3d}; Total tx packets = %3d, Total retx packets = %3d; Total ePA packets = %3d; Total packets beamforming+ePA = %3d; Sync Timeout = %3d; RSSI{Ant0, Ant1, Ant2} = {%4d, %4d, %4d}; {ePA, Beamforming, ePA+Beamforming} Usage = {%4.1f%%, %4.1f%%, %4.1f%%}";
      v18 = v4;
      v19 = 104;
    }

    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, v17, &v31, v19);
  }
}

void sub_10062513C(uint64_t a1, uint64_t a2, __int16 a3, int a4, __int16 a5, __int16 a6)
{
  if (a4)
  {
    v8 = a4;
    *buf = *a2;
    LOWORD(v20) = *(a2 + 4);
    if (qword_100B508F0 != -1)
    {
      sub_1008540D4();
    }

    v11 = sub_1000E6554(off_100B508E8, buf, 0);
    v12 = *(a1 + 256);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1006252AC;
    block[3] = &unk_100AEC130;
    block[4] = a1;
    block[5] = v11;
    v15 = a3;
    v16 = v8;
    v17 = a5;
    v18 = a6;
    dispatch_async(v12, block);
  }

  else
  {
    v13 = qword_100BCE8D0;
    if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v20 = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "A2DP LinkQualityReport Error - totalTxPacketCount is %d", buf, 8u);
    }
  }
}

void sub_1006252AC(uint64_t a1)
{
  v2 = (a1 + 40);
  v1 = *(a1 + 40);
  if (v1)
  {
    v4 = *(a1 + 32);
    v7 = *(v4 + 200);
    v5 = v4 + 200;
    v6 = v7;
    if (v7)
    {
      v8 = v5 - 8;
      v9 = v5;
      do
      {
        v10 = *(v6 + 32);
        v11 = v10 >= v1;
        v12 = v10 < v1;
        if (v11)
        {
          v9 = v6;
        }

        v6 = *(v6 + 8 * v12);
      }

      while (v6);
      if (v9 != v5 && v1 >= *(v9 + 32))
      {
        *buf = a1 + 40;
        if (*sub_10005E16C(v8, v2)[5])
        {
          v21 = 0;
          if (*v2)
          {
            v13 = sub_10000E92C();
            if ((*(*v13 + 280))(v13))
            {
              v14 = sub_10000C7D0();
              (*(*v14 + 304))(v14, *v2 + 128, &v21);
            }
          }

          v15 = *(a1 + 48);
          v16 = *(a1 + 50);
          v17 = qword_100BCE8D0;
          if (v15 > v16 && os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_FAULT))
          {
            *buf = 67109120;
            *&buf[4] = 100 * v15 / v16;
            _os_log_fault_impl(&_mh_execute_header, v17, OS_LOG_TYPE_FAULT, "A2DP LinkQualityReport - re-transmission stats are invalid %u", buf, 8u);
            v17 = qword_100BCE8D0;
          }

          if (*(a1 + 52) > *(a1 + 54) && os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
          {
            *buf = 67109120;
            *&buf[4] = 100;
            _os_log_fault_impl(&_mh_execute_header, v17, OS_LOG_TYPE_FAULT, "A2DP LinkQualityReport - CRC Rate is invalid %u", buf, 8u);
            v17 = qword_100BCE8D0;
          }

          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            v18 = *(a1 + 48);
            v19 = *(a1 + 50);
            *buf = 67109888;
            *&buf[4] = v21;
            v23 = 2048;
            v24 = v18 * 100.0 / v19;
            v25 = 1024;
            v26 = v18;
            v27 = 1024;
            v28 = v19;
            _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "A2DP LinkQualityReport: RSSI =%4d, ReTx = %3.1f (%3d/%3d)", buf, 0x1Eu);
          }

          *buf = v2;
          v20 = sub_10005E16C(v8, v2);
          sub_1006255A4(*v20[5], 100 * *(a1 + 48) / *(a1 + 50));
        }
      }
    }
  }
}

void sub_1006255A4(void *a1, int a2)
{
  v5 = a1[45];
  v4 = a1[46];
  if (v5 >= v4)
  {
    v7 = a1[44];
    v8 = v5 - v7;
    v9 = (v5 - v7) >> 2;
    v10 = v9 + 1;
    if ((v9 + 1) >> 62)
    {
      sub_1000C7698();
    }

    v11 = v4 - v7;
    if (v11 >> 1 > v10)
    {
      v10 = v11 >> 1;
    }

    v12 = v11 >= 0x7FFFFFFFFFFFFFFCLL;
    v13 = 0x3FFFFFFFFFFFFFFFLL;
    if (!v12)
    {
      v13 = v10;
    }

    if (v13)
    {
      sub_10036F560((a1 + 44), v13);
    }

    v14 = (v5 - v7) >> 2;
    v15 = (4 * v9);
    v16 = (4 * v9 - 4 * v14);
    *v15 = a2;
    v6 = v15 + 1;
    memcpy(v16, v7, v8);
    v17 = a1[44];
    a1[44] = v16;
    a1[45] = v6;
    a1[46] = 0;
    if (v17)
    {
      operator delete(v17);
    }
  }

  else
  {
    *v5 = a2;
    v6 = v5 + 4;
  }

  a1[45] = v6;
}

void sub_100625684(uint64_t a1, int a2)
{
  if (*(a1 + 348) != a2)
  {
    *(a1 + 348) = a2;
    v3 = qword_100BCE8D0;
    if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
    {
      v4[0] = 67109120;
      v4[1] = a2;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "fDynamicTimelineLogging set to %d ", v4, 8u);
    }
  }
}

void sub_100625738(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v35 = a2;
  v6 = sub_10000E92C();
  v7 = (*(*v6 + 272))(v6);
  v34 = 1;
  v8 = sub_10000E92C();
  sub_100007E30(&buf, "Enable FW Logs");
  sub_100007E30(__p, "FWEnhancedLoggingEnable");
  (*(*v8 + 72))(v8, &buf, __p, &v34);
  if (v33 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v37) < 0)
  {
    operator delete(buf);
  }

  v9 = sub_10000E92C();
  v10 = (*(*v9 + 8))(v9);
  if (v7 != 0 || (v10 & 1) == 0)
  {
    v11 = 0;
  }

  else
  {
    v11 = v34;
  }

  v12 = qword_100BCE8D0;
  if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
  {
    v13 = @"Skipping";
    if (v11)
    {
      v13 = @"Evaluating";
    }

    LODWORD(buf) = 138412290;
    *(&buf + 4) = v13;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Dynamic Timeline Logging Trigger : %@ ", &buf, 0xCu);
  }

  if ((v11 & 1) == 0)
  {
    v17 = qword_100BCE8D0;
    if (!os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    LODWORD(buf) = 67109632;
    DWORD1(buf) = v10;
    WORD4(buf) = 1024;
    *(&buf + 10) = v7 != 0;
    HIWORD(buf) = 1024;
    LODWORD(v37) = v34;
    v18 = "Dynamic Logging Skipped - isInternalBuild = %x, staticFWLogEnabled = %x, enableDynamicTimelineLogging = %x";
    v19 = v17;
    v20 = 20;
    goto LABEL_25;
  }

  if (*(a1 + 368))
  {
    v14 = +[NSDate date];
    [v14 timeIntervalSinceDate:*(a1 + 368)];
    v16 = v15;
  }

  else
  {
    v16 = 80.0;
  }

  if (*(a1 + 348) == 1)
  {
    v21 = qword_100BCE8D0;
    if (!os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    LOWORD(buf) = 0;
    v18 = "Timeline logging currently running";
LABEL_24:
    v19 = v21;
    v20 = 2;
LABEL_25:
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, v18, &buf, v20);
    return;
  }

  if (v16 < *(a1 + 376))
  {
    v21 = qword_100BCE8D0;
    if (!os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    LOWORD(buf) = 0;
    v18 = "Timeline logging ran less than 60 secs ago";
    goto LABEL_24;
  }

  sub_100625684(a1, 1);
  v22 = qword_100BCE8D0;
  if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf) = 0;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Enabling firmware logs", &buf, 2u);
  }

  sub_10000C7D0();
  if (sub_100410F0C())
  {
    v23 = *(a1 + 256);
    *&buf = _NSConcreteStackBlock;
    *(&buf + 1) = 3221225472;
    v37 = sub_1006307B4;
    v38 = &unk_100AE0860;
    v39 = a1;
    v40 = a2;
    dispatch_async(v23, &buf);
    if (*(sub_10000C7D0() + 800) == 15)
    {
      v24 = 2048;
    }

    else
    {
      v24 = 3072;
    }

    if (*(a1 + 352) != v24)
    {
      *(a1 + 352) = v24;
    }

    if (*(a1 + 356) != 4)
    {
      *(a1 + 356) = 4;
    }

    *(a1 + 360) = 515;
    *&buf = &v35;
    v25 = sub_10005E16C(a1 + 192, &v35);
    v26 = *(a1 + 360);
    if (*(v25[5] + 84) == 1)
    {
      v26 |= 8u;
      *(a1 + 360) = v26;
    }

    *(a1 + 360) = v26 | 0x10;
    v27 = sub_10000C7D0();
    (*(*v27 + 1280))(v27, 1, *(a1 + 352), *(a1 + 356));
    v28 = sub_10000C7D0();
    (*(*v28 + 3960))(v28, *(a1 + 360));
  }

  v29 = dispatch_time(0, 1000000000 * a3);
  v30 = *(a1 + 256);
  v31[0] = _NSConcreteStackBlock;
  v31[1] = 3221225472;
  v31[2] = sub_100625D14;
  v31[3] = &unk_100ADF8F8;
  v31[4] = a1;
  dispatch_after(v29, v30, v31);
}

void sub_100625CA0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 256);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1006307B4;
  v3[3] = &unk_100AE0860;
  v3[4] = a1;
  v3[5] = a2;
  dispatch_async(v2, v3);
}

void sub_100625D14(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(v1 + 348) == 1)
  {
    v2 = qword_100BCE8D0;
    if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Disabling firmware logs", v6, 2u);
    }

    v3 = sub_10000C7D0();
    (*(*v3 + 1280))(v3, 0, 0, 0);
    v4 = +[NSDate date];
    v5 = *(v1 + 368);
    *(v1 + 368) = v4;

    sub_100625684(v1, 0);
    *(v1 + 384) = 0;
  }
}

void sub_100625DF4(uint64_t a1, uint64_t a2, const void *a3, unsigned int a4)
{
  if (a2 && a3)
  {
    v10 = 0;
    v11 = 0;
    sub_10000C704(&v10, a3, a4);
    v6 = *(a1 + 264);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3321888768;
    block[2] = sub_100625F40;
    block[3] = &unk_100B02E08;
    block[4] = a2 + 128;
    v8 = &off_100AE0A78;
    v9 = v11;
    if (v11)
    {
      sub_10000C69C(v11);
    }

    dispatch_async(v6, block);
    v8 = &off_100AE0A78;
    if (v9)
    {
      sub_10000C808(v9);
    }

    v10 = &off_100AE0A78;
    if (v11)
    {
      sub_10000C808(v11);
    }
  }
}

void sub_100625F08(_Unwind_Exception *exception_object)
{
  *(v1 - 32) = &off_100AE0A78;
  v3 = *(v1 - 24);
  if (v3)
  {
    sub_10000C808(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100625F40(uint64_t a1)
{
  if (qword_100B50950 != -1)
  {
    sub_1008540E8();
  }

  v2 = off_100B50948;
  v3 = *(a1 + 32);

  return sub_10034731C(v2, v3, 0x100000, a1 + 40);
}

void sub_100625FA4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *(a1 + 256);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10062601C;
  block[3] = &unk_100AEAF08;
  v6 = a4;
  block[4] = a1;
  block[5] = a2;
  dispatch_async(v4, block);
}

void sub_10062601C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = qword_100BCE8D0;
  if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 40);
    if (*(a1 + 48))
    {
      v5 = "Publish ";
    }

    else
    {
      v5 = "Unpublish ";
    }

    *buf = 136446466;
    *&buf[4] = v5;
    v22 = 2048;
    v23 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Dynamic Latency : HFP Device %{public}s, device: %p", buf, 0x16u);
  }

  v6 = (a1 + 40);
  if (*(a1 + 40))
  {
    v7 = _os_feature_enabled_impl();
    if (v7)
    {
      sub_10062636C(v7, *(a1 + 40), *(a1 + 48));
    }

    v10 = *(v2 + 200);
    v9 = v2 + 200;
    v8 = v10;
    if (*(a1 + 48) == 1)
    {
      if (!v8)
      {
        goto LABEL_18;
      }

      v11 = *v6;
      v12 = v9;
      do
      {
        v13 = *(v8 + 32);
        v14 = v13 >= v11;
        v15 = v13 < v11;
        if (v14)
        {
          v12 = v8;
        }

        v8 = *(v8 + 8 * v15);
      }

      while (v8);
      if (v12 == v9 || v11 < *(v12 + 32))
      {
LABEL_18:
        operator new();
      }

      *buf = a1 + 40;
      *(sub_10005E16C(v9 - 8, v6)[5] + 95) = 1;
      if (qword_100B512B8 != -1)
      {
        sub_100853E48();
      }

      sub_100319DA8(qword_100B512B0, *v6);
    }

    else if (v8)
    {
      v16 = *v6;
      v17 = v9;
      do
      {
        v18 = *(v8 + 32);
        v14 = v18 >= v16;
        v19 = v18 < v16;
        if (v14)
        {
          v17 = v8;
        }

        v8 = *(v8 + 8 * v19);
      }

      while (v8);
      if (v17 != v9 && v16 >= *(v17 + 32))
      {
        *buf = a1 + 40;
        *(sub_10005E16C(v9 - 8, v6)[5] + 95) = 0;
        *buf = a1 + 40;
        if ((*(sub_10005E16C(v9 - 8, v6)[5] + 95) & 1) == 0)
        {
          *buf = a1 + 40;
          if ((*(sub_10005E16C(v9 - 8, v6)[5] + 96) & 1) == 0)
          {
            *buf = a1 + 40;
            v20 = sub_10005E16C(v9 - 8, v6)[5];
            if (v20)
            {
              sub_10063CEC8(v20);
              operator delete();
            }

            sub_100075DC4((v9 - 8), v6);
            if (qword_100B512B8 != -1)
            {
              sub_100853E48();
            }

            sub_100319F44(qword_100B512B0, *v6);
          }
        }
      }
    }
  }
}

void sub_10062636C(uint64_t a1, unsigned __int8 *a2, int a3)
{
  if (a3)
  {
    if (qword_100B540B0 != -1)
    {
      sub_1008540FC();
    }

    if (!sub_1006C09F4(qword_100B540A8, a2))
    {
      if (qword_100B540B0 != -1)
      {
        sub_1008540FC();
      }

      sub_1006C0A24();
    }

    v4 = qword_100BCE8D0;
    if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "AccessoryAudioClient device published already", v6, 2u);
    }
  }

  else
  {
    if (qword_100B540B0 != -1)
    {
      sub_1008540FC();
    }

    sub_1006C0BC4(qword_100B540A8, a2);
    if (_os_feature_enabled_impl())
    {
      if (qword_100B50930 != -1)
      {
        sub_100854110();
      }

      v5 = off_100B50928;

      sub_1000F2D24(v5, a2);
    }
  }
}

void sub_10062651C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *(a1 + 184);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10062601C;
  block[3] = &unk_100AEAF08;
  v6 = a4;
  block[4] = a1 - 72;
  block[5] = a2;
  dispatch_async(v4, block);
}

uint64_t sub_100626598(uint64_t a1, uint64_t a2)
{
  *(a1 + 1212) = 0;
  *(a1 + 1204) = 0;
  *(a1 + 1188) = 0u;
  if (qword_100B50AD0 != -1)
  {
    sub_100853CDC();
  }

  v3 = off_100B50AC8;

  return sub_1005D0BF8(v3, a2);
}

void sub_100626600(uint64_t a1, uint64_t a2, __int16 a3, char a4, char a5)
{
  v5 = *(a1 + 256);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100626680;
  block[3] = &unk_100AE0880;
  v8 = a4;
  v9 = a5;
  block[4] = a1;
  block[5] = a2;
  v7 = a3;
  dispatch_async(v5, block);
}

void sub_100626680(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = qword_100BCE8D0;
  if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a1 + 50))
    {
      v4 = "Start";
    }

    else
    {
      v4 = "Stop";
    }

    v5 = "disabled";
    if (*(a1 + 51))
    {
      v5 = "enabled";
    }

    *buf = 136315394;
    *&buf[4] = v4;
    v30 = 2080;
    v31 = v5;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "HFP Stream State: %s Advanced Transport: %s", buf, 0x16u);
  }

  sub_100626BB8(v2, *(a1 + 50));
  v6 = *(a1 + 50);
  v7 = v2 + 25;
  v8 = v2[25];
  v9 = (a1 + 40);
  if (v6 == 1)
  {
    if (!v8)
    {
      goto LABEL_17;
    }

    v10 = *v9;
    v11 = v2 + 25;
    do
    {
      v12 = v8[4];
      v13 = v12 >= v10;
      v14 = v12 < v10;
      if (v13)
      {
        v11 = v8;
      }

      v8 = v8[v14];
    }

    while (v8);
    if (v11 == v7 || v10 < v11[4])
    {
LABEL_17:
      operator new();
    }

    v24 = qword_100BCE8D0;
    if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
    {
      sub_1005378A0(v10, buf);
      if (v32 >= 0)
      {
        v25 = buf;
      }

      else
      {
        v25 = *buf;
      }

      *v27 = 136315138;
      *&v27[4] = v25;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Device %s, already exists in AudioLinkManagerDevices updating values", v27, 0xCu);
      if (v32 < 0)
      {
        operator delete(*buf);
      }

      LOBYTE(v6) = *(a1 + 50);
    }

    *buf = a1 + 40;
    *(sub_10005E16C((v2 + 24), (a1 + 40))[5] + 80) = v6;
    *buf = a1 + 40;
    v15 = sub_10005E16C((v2 + 24), (a1 + 40));
    *(v15[5] + 84) = 1;
    if (*(a1 + 51) == 1)
    {
      sub_10010E934(v2[28], *(a1 + 50), *(a1 + 40));
    }

    sub_100626CC8(v15, *(a1 + 40), 1);
    sub_100627064(v2, *(a1 + 40), *(a1 + 48));
  }

  else
  {
    if (v8)
    {
      v16 = *v9;
      v17 = v2 + 25;
      do
      {
        v18 = v8[4];
        v13 = v18 >= v16;
        v19 = v18 < v16;
        if (v13)
        {
          v17 = v8;
        }

        v8 = v8[v19];
      }

      while (v8);
      if (v17 != v7 && v16 >= v17[4])
      {
        v20 = qword_100BCE8D0;
        if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
        {
          sub_1005378A0(v16, buf);
          if (v32 >= 0)
          {
            v21 = buf;
          }

          else
          {
            v21 = *buf;
          }

          *v27 = 136315138;
          *&v27[4] = v21;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Device %s, already exists in AudioLinkManagerDevices updating values", v27, 0xCu);
          if (v32 < 0)
          {
            operator delete(*buf);
          }

          LOBYTE(v6) = *(a1 + 50);
        }

        *buf = a1 + 40;
        *(sub_10005E16C((v2 + 24), (a1 + 40))[5] + 80) = v6;
        *buf = a1 + 40;
        *(sub_10005E16C((v2 + 24), (a1 + 40))[5] + 84) = 0;
        if (*(sub_10010C848(v2[28], *v9) + 3) == 1)
        {
          sub_10010E934(v2[28], *(a1 + 50), *(a1 + 40));
        }

        sub_10061D9F4(v2, *v9);
      }
    }

    if (v2[26])
    {
      sub_100627484(v2, *v9, 1);
    }

    v26 = 0;
    v22 = sub_10000E92C();
    sub_100007E30(buf, "HFP");
    sub_100007E30(v27, "audioFeedback");
    (*(*v22 + 72))(v22, buf, v27, &v26);
    if (v28 < 0)
    {
      operator delete(*v27);
    }

    if (v32 < 0)
    {
      operator delete(*buf);
    }

    if (v26 == 1)
    {
      v23 = sub_1000E2140(*v9, 12);
      if (v23 || sub_100627568(v23, *v9))
      {
        notify_post("com.apple.bluetooth.audioQuality");
      }
    }
  }

  sub_1006275DC(v2, *(a1 + 40), *(a1 + 50), 1);
}

void sub_100626BB8(uint64_t a1, char a2)
{
  if (*(a1 + 344))
  {
    v18 = 0;
    sub_1000216B4(&v18);
    if (sub_100244900(a2, v3, v4, v5, v6, v7, v8, v9) && os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_ERROR))
    {
      sub_100854160();
    }

    if (sub_100244AC8(a2, v10, v11, v12, v13, v14, v15, v16))
    {
      if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_ERROR))
      {
        sub_10085419C();
      }
    }

    sub_100022214(&v18);
    sub_10002249C(&v18);
  }

  else
  {
    v17 = qword_100BCE8D0;
    if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Stack is not ready, cannot configure interlaced inquiry scans", buf, 2u);
    }
  }
}

void sub_100626CC8(uint64_t a1, uint64_t a2, int a3)
{
  if (a2 && a3 == 2)
  {
    v4 = qword_100BCE8D0;
    if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
    {
      v23 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Enabling A2DP Link Quality Mode", &v23, 2u);
    }

    v5 = sub_10000E92C();
    v6 = (*(*v5 + 280))(v5);
    *&v26[10] = 0;
    *&v26[2] = 0;
    v23 = 1;
    v7 = sub_10000C798();
    v24 = (*(*v7 + 144))(v7);
    v8 = sub_10000C798();
    v25 = (*(*v8 + 168))(v8);
    v26[1] = 0;
    v9 = *sub_10000C798();
    if ((*(v9 + 864))())
    {
      v26[1] = 1;
    }

    v10 = sub_10000C798();
    v26[0] = (*(*v10 + 168))(v10);
    if (v6)
    {
      v11 = 5;
    }

    else
    {
      v11 = 20;
    }

    *&v26[4] = v11;
    *&v26[6] = -1;
    *&v26[8] = v11;
    *&v26[10] = -1;
    v26[12] = 1;
    v12 = sub_10000C798();
    v13 = (*(*v12 + 184))(v12);
    if (v13)
    {
      LOBYTE(v13) = sub_100537B8C(a2);
    }

    v26[2] = v13;
    v26[13] = 1;
LABEL_13:
    v14 = *sub_10000C7D0();
    (*(v14 + 536))();
    return;
  }

  if (a2)
  {
    if (a3 == 1)
    {
      v15 = sub_10000C798();
      if ((*(*v15 + 136))(v15))
      {
        v16 = qword_100BCE8D0;
        if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
        {
          v23 = 0;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Enabling HFP Link Quality Mode", &v23, 2u);
        }

        *&v26[8] = 0;
        *v26 = 0;
        v23 = 1;
        v17 = sub_10000C798();
        v24 = (*(*v17 + 144))(v17);
        v18 = sub_10000C798();
        v25 = (*(*v18 + 168))(v18);
        v19 = sub_10000C798();
        v26[0] = (*(*v19 + 168))(v19);
        v20 = sub_10000C798();
        v21 = (*(*v20 + 184))(v20);
        v22 = 0;
        if (v21)
        {
          v22 = sub_100537B8C(a2);
        }

        v26[2] = v22;
        *&v26[12] = 513;
        goto LABEL_13;
      }
    }
  }
}

void sub_100627064(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v13 = a2;
  if (*(a1 + 344))
  {
    if (a2)
    {
      v3 = *(a1 + 200);
      if (v3)
      {
        v5 = a1 + 192;
        v6 = a1 + 200;
        do
        {
          v7 = *(v3 + 32);
          v8 = v7 >= a2;
          v9 = v7 < a2;
          if (v8)
          {
            v6 = v3;
          }

          v3 = *(v3 + 8 * v9);
        }

        while (v3);
        if (v6 != a1 + 200 && *(v6 + 32) <= a2)
        {
          v12 = 0;
          sub_1000216B4(&v12);
          sub_1000BBF7C();
          sub_10024132C(v13 + 128);
          sub_1002119B0(a3);
          sub_100022214(&v12);
          *buf = &v13;
          if (*(sub_10005E16C(v5, &v13)[5] + 8))
          {
            if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_ERROR))
            {
              sub_100854214();
            }

            *buf = &v13;
            v11 = *(sub_10005E16C(v5, &v13)[5] + 8);
            if (v11)
            {
              if (*(v11 + 159) < 0)
              {
                operator delete(*(v11 + 136));
              }

              operator delete();
            }

            *buf = &v13;
            *(sub_10005E16C(v5, &v13)[5] + 8) = 0;
          }

          operator new();
        }
      }
    }

    v10 = qword_100BCE8D0;
    if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "HFP start, but no valid device handler", buf, 2u);
    }
  }

  else if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_ERROR))
  {
    sub_1008541D8();
  }
}

uint64_t sub_100627484(uint64_t result, uint64_t a2, int a3)
{
  if (*(result + 208))
  {
    v4 = qword_100BCE8D0;
    if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v7[0]) = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Disabling Link Quality Mode", v7, 2u);
    }

    v8 = 0;
    if (a3 == 1)
    {
      v5 = 2;
    }

    else
    {
      v5 = 1;
    }

    v7[0] = 0;
    v7[1] = 0;
    HIBYTE(v8) = v5;
    v6 = *sub_10000C7D0();
    return (*(v6 + 536))();
  }

  return result;
}

uint64_t sub_100627568(uint64_t a1, uint64_t a2)
{
  v7 = 0;
  v6 = 0;
  v5 = 0;
  v2 = sub_1000C2364(a2, &v7, &v6, &v5 + 1, &v5);
  LOBYTE(v3) = 0;
  if (v2)
  {
    if (v6 == 76)
    {
      v3 = 0x61u >> (BYTE4(v5) - 17);
      if ((HIDWORD(v5) - 8209) > 6)
      {
        LOBYTE(v3) = 0;
      }
    }
  }

  return v3 & 1;
}

void sub_1006275DC(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v6 = a2;
  v23 = a2;
  sub_100634F34(a1, a2, a3, a4);
  if (a3)
  {
    if (qword_100B50910 != -1)
    {
      sub_100854250();
    }

    sub_10063402C(a1, v6, *(off_100B50908 + 211), a4);
    v8 = sub_10000C798();
    if ((*(*v8 + 120))(v8))
    {
      v9 = sub_1000D999C();
      v22[0] = _NSConcreteStackBlock;
      v22[1] = 3221225472;
      v22[2] = sub_100635670;
      v22[3] = &unk_100ADF8F8;
      v22[4] = a1;
      sub_10000D334(v9, v22);
    }
  }

  else
  {
    v10 = sub_10000C798();
    v11 = (*(*v10 + 120))(v10);
    if (v11)
    {
      v12 = sub_1000D999C();
      v21[0] = _NSConcreteStackBlock;
      v21[1] = 3221225472;
      v21[2] = sub_1006356C4;
      v21[3] = &unk_100ADF8F8;
      v21[4] = a1;
      sub_10000D334(v12, v21);
    }

    sub_100634C30(v11, v6);
    v13 = *(a1 + 200);
    if (v13)
    {
      v14 = a1 + 192;
      v15 = a1 + 200;
      do
      {
        v16 = *(v13 + 32);
        v17 = v16 >= v6;
        v18 = v16 < v6;
        if (v17)
        {
          v15 = v13;
        }

        v13 = *(v13 + 8 * v18);
      }

      while (v13);
      if (v15 != a1 + 200 && *(v15 + 32) <= v6)
      {
        v24 = &v23;
        *(sub_10005E16C(v14, &v23)[5] + 80) = 0;
        v19 = *(a1 + 1182);
        v24 = &v23;
        *(sub_10005E16C(v14, &v23)[5] + 66) = v19;
        v20 = *(a1 + 1182);
        v24 = &v23;
        *(sub_10005E16C(v14, &v23)[5] + 68) = v20;
        v24 = &v23;
        *(sub_10005E16C(v14, &v23)[5] + 84) = 0;
        v6 = v23;
      }
    }
  }

  sub_10011F1C4(*(a1 + 216), v6, a3);
}

void sub_100627870(uint64_t a1, uint64_t a2, __int16 a3, char a4, char a5)
{
  v5 = *(a1 + 184);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100626680;
  block[3] = &unk_100AE0880;
  v8 = a4;
  v9 = a5;
  block[4] = a1 - 72;
  block[5] = a2;
  v7 = a3;
  dispatch_async(v5, block);
}

void sub_1006278F4(void *a1, uint64_t a2, __int16 a3, char a4, char a5, __int16 a6, __int16 a7)
{
  v8 = a1[113];
  v9 = a1[114];
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v10 = a1[32];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3321888768;
  block[2] = sub_1006279C8;
  block[3] = &unk_100B02E38;
  v13 = a3;
  block[4] = a1;
  block[5] = a2;
  v16 = a4;
  v14 = a6;
  block[6] = v8;
  v12 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v17 = a5;
  v15 = a7;
  dispatch_async(v10, block);
  if (v12)
  {
    std::__shared_weak_count::__release_weak(v12);
  }

  if (v9)
  {
    std::__shared_weak_count::__release_weak(v9);
  }
}

void sub_1006279C8(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 1248);
  if (!v3)
  {
    goto LABEL_9;
  }

  v4 = *(a1 + 64);
  v5 = v2 + 1248;
  do
  {
    v6 = *(v3 + 32);
    v7 = v6 >= v4;
    v8 = v6 < v4;
    if (v7)
    {
      v5 = v3;
    }

    v3 = *(v3 + 8 * v8);
  }

  while (v3);
  if (v5 != v2 + 1248 && v4 >= *(v5 + 32))
  {
    sub_10053815C(*(a1 + 40), *(a1 + 70));
    v80 = 1;
  }

  else
  {
LABEL_9:
    v80 = 0;
  }

  v9 = sub_100628770(v2, *(a1 + 64));
  v10 = sub_10000E92C();
  if ((*(*v10 + 8))(v10))
  {
    v11 = sub_1000DAB84();
    v83[0] = _NSConcreteStackBlock;
    v83[1] = 3221225472;
    v83[2] = sub_1006288A4;
    v83[3] = &unk_100ADF8F8;
    v83[4] = *(a1 + 40);
    sub_10000CA94(v11, v83);
  }

  v12 = (a1 + 40);
  v13 = *(a1 + 40);
  if (v13)
  {
    v14 = *(a1 + 70);
    if (v14 == 1)
    {
      v15 = *(v2 + 200);
      if (!v15)
      {
        goto LABEL_22;
      }

      v16 = v2 + 200;
      do
      {
        v17 = *(v15 + 32);
        v7 = v17 >= v13;
        v18 = v17 < v13;
        if (v7)
        {
          v16 = v15;
        }

        v15 = *(v15 + 8 * v18);
      }

      while (v15);
      if (v16 == v2 + 200 || v13 < *(v16 + 32))
      {
LABEL_22:
        v19 = qword_100BCE8D0;
        if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
        {
          sub_1005378A0(v13, &__p);
          if (SBYTE3(v88) >= 0)
          {
            p_p = &__p;
          }

          else
          {
            p_p = __p;
          }

          *buf = 136315138;
          v96 = p_p;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Adding device %s, to AudioLinkManagerDevices", buf, 0xCu);
          if (SBYTE3(v88) < 0)
          {
            operator delete(__p);
          }
        }

        operator new();
      }

      v61 = qword_100BCE8D0;
      if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
      {
        sub_1005378A0(v13, &__p);
        if (SBYTE3(v88) >= 0)
        {
          v62 = &__p;
        }

        else
        {
          v62 = __p;
        }

        *buf = 136315138;
        v96 = v62;
        _os_log_impl(&_mh_execute_header, v61, OS_LOG_TYPE_DEFAULT, "Device %s, already exists in AudioLinkManagerDevices updating values", buf, 0xCu);
        if (SBYTE3(v88) < 0)
        {
          operator delete(__p);
        }

        LOBYTE(v14) = *(a1 + 70);
      }

      __p = (a1 + 40);
      *(sub_10005E16C(v2 + 192, (a1 + 40))[5] + 80) = v14;
      v63 = *(a1 + 66);
      __p = (a1 + 40);
      *(sub_10005E16C(v2 + 192, (a1 + 40))[5] + 66) = v63;
      v64 = *(a1 + 66);
      __p = (a1 + 40);
      *(sub_10005E16C(v2 + 192, (a1 + 40))[5] + 68) = v64;
      __p = (a1 + 40);
      *(sub_10005E16C(v2 + 192, (a1 + 40))[5] + 84) = 2;
      v65 = sub_10000E92C();
      v66 = (*(*v65 + 8))(v65);
      if (v66)
      {
        sub_10011E600(*(v2 + 216), *v12);
      }

      v21 = sub_10000C798();
      v22 = (*(*v21 + 840))(v21, 2);
      if (v22)
      {
        v23 = qword_100BCE8D0;
        if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(__p) = 0;
          _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Adaptive Latency reset counter when streaming start", &__p, 2u);
        }

        __p = (a1 + 40);
        v22 = sub_10005E16C(v2 + 192, (a1 + 40));
        *(*(v22[5] + 48) + 44) = -1;
      }

      sub_100626CC8(v22, *(a1 + 40), 2);
      sub_100628934(v2, *(a1 + 40), *(a1 + 64));
      if (v9)
      {
        operator new();
      }

      v24 = *(a1 + 56);
      if (v24)
      {
        v25 = std::__shared_weak_count::lock(v24);
        if (v25)
        {
          v26 = *(a1 + 48);
          v27 = v80;
          if (!v26)
          {
            v27 = 1;
          }

          if ((v27 & 1) == 0)
          {
            sub_1003A77B8(v26, *v12, 1, 0);
          }
        }
      }

      else
      {
        v25 = 0;
      }

      v56 = sub_10000C798();
      if ((*(*v56 + 840))(v56, 0))
      {
        if (*(a1 + 71) == 1)
        {
          v57 = *(a1 + 64);
          v58 = *(a1 + 40);
          v59 = sub_10011DBF8(*(v2 + 216), *(a1 + 68));
          sub_100628E88(v2, v57, v58, v59);
        }

        else if (v80)
        {
          sub_100119ED8(*(v2 + 216), *(a1 + 40), *(a1 + 64));
        }
      }

      v60 = sub_10000E92C();
      if ((*(*v60 + 440))(v60) && sub_10063CFD4())
      {
        *(v2 + 1132) = 1;
        sub_1006291AC(v2);
      }

      if (_os_feature_enabled_impl())
      {
        if (qword_100B50930 != -1)
        {
          sub_100853CB4();
        }

        sub_1000F2C8C(off_100B50928);
      }

      if (v25)
      {
        sub_100117644(v25);
      }

LABEL_118:
      v69 = qword_100BCE8D0;
      if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
      {
        v70 = *(a1 + 64);
        v71 = "disabled";
        v72 = *(a1 + 71);
        if (v80)
        {
          v71 = "enabled";
        }

        v73 = *(a1 + 66);
        v74 = "stopped";
        v75 = *(a1 + 68);
        if (*(a1 + 70))
        {
          v74 = "started";
        }

        LODWORD(__p) = 67110402;
        HIDWORD(__p) = v70;
        v76 = "supported";
        v85 = 2080;
        v86 = v71;
        if (!v72)
        {
          v76 = "not supported";
        }

        v87 = 2080;
        v88 = v74;
        v89 = 2080;
        v90 = v76;
        v91 = 1024;
        v92 = v73;
        v93 = 1024;
        v94 = v75;
        _os_log_impl(&_mh_execute_header, v69, OS_LOG_TYPE_DEFAULT, "StreamStateChanged for handle %d Wireless Splitter aggregation is %s music playback is %s with latency %s with bitrate %u Dynamic Latency JBL %d", &__p, 0x32u);
      }

      if (*(v2 + 1256) >= 2uLL)
      {
        sub_10062A2CC(v2, *(a1 + 70));
      }

      v78 = *(a1 + 40);
      v77 = a1 + 40;
      sub_10062A3BC(v2, v78, *(v77 + 30));
      sub_1006275DC(v2, *v77, *(v77 + 30), 2);
      sub_10062A6E8(v79, *v77, *(v77 + 30));
      return;
    }
  }

  v28 = *(v2 + 200);
  if (v28)
  {
    v29 = v2 + 192;
    v30 = v2 + 200;
    do
    {
      v31 = *(v28 + 32);
      v7 = v31 >= v13;
      v32 = v31 < v13;
      if (v7)
      {
        v30 = v28;
      }

      v28 = *(v28 + 8 * v32);
    }

    while (v28);
    if (v30 != v2 + 200 && v13 >= *(v30 + 32))
    {
      sub_100629478(v2, 11, *(a1 + 40));
      v39 = sub_10000C798();
      if ((*(*v39 + 840))(v39, 2))
      {
        v40 = qword_100BCE8D0;
        if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(__p) = 0;
          _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "Adaptive Latency stream stop", &__p, 2u);
        }

        sub_10011CCE4(*(v2 + 216), 150);
        v41 = *(a1 + 40);
        v42 = *(v2 + 216);
        __p = (a1 + 40);
        v43 = sub_10005E16C(v29, (a1 + 40));
        v44 = sub_10011C7C8(v42, v41, *(*(v43[5] + 48) + 20), 6);
        sub_100629C60(v2, v41, v44);
        v45 = sub_1000DAB84();
        v81[0] = _NSConcreteStackBlock;
        v81[1] = 3221225472;
        v81[2] = sub_100629DD4;
        v81[3] = &unk_100AF59D0;
        v82 = *(a1 + 64);
        sub_10000CA94(v45, v81);
        sub_100629E2C(v2, *(a1 + 40));
      }

      v46 = qword_100BCE8D0;
      if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
      {
        sub_1005378A0(*v12, &__p);
        v47 = SBYTE3(v88) >= 0 ? &__p : __p;
        *buf = 136315138;
        v96 = v47;
        _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEFAULT, "Device %s, already exists in AudioLinkManagerDevices updating values", buf, 0xCu);
        if (SBYTE3(v88) < 0)
        {
          operator delete(__p);
        }
      }

      v48 = *(a1 + 70);
      __p = (a1 + 40);
      *(sub_10005E16C(v29, (a1 + 40))[5] + 80) = v48;
      v49 = *(a1 + 66);
      __p = (a1 + 40);
      *(sub_10005E16C(v29, (a1 + 40))[5] + 66) = v49;
      v50 = *(a1 + 66);
      __p = (a1 + 40);
      *(sub_10005E16C(v29, (a1 + 40))[5] + 68) = v50;
      __p = (a1 + 40);
      v51 = *(sub_10005E16C(v29, (a1 + 40))[5] + 84);
      __p = (a1 + 40);
      *(sub_10005E16C(v29, (a1 + 40))[5] + 84) = 0;
      sub_10061CE70(v2, *(a1 + 40));
      __p = (a1 + 40);
      if (*(sub_10005E16C(v29, (a1 + 40))[5] + 72))
      {
        __p = (a1 + 40);
        *(sub_10005E16C(v29, (a1 + 40))[5] + 76) = 0;
      }

      v52 = *(v2 + 888);
      if (v52)
      {
        *(v2 + 896) = 0;
        (*(*v52 + 16))(v52);
        *(v2 + 888) = 0;
      }

      v53 = *(a1 + 56);
      if (v53)
      {
        v54 = std::__shared_weak_count::lock(v53);
        if (v54)
        {
          v55 = *(a1 + 48);
          if (v55)
          {
            if (*(v55 + 77) == 1)
            {
              sub_1003A77B8(v55, *v12, 0, 0);
            }
          }
        }
      }

      else
      {
        v54 = 0;
      }

      v67 = sub_10000C798();
      if ((*(*v67 + 840))(v67, 0))
      {
        if ((*(a1 + 71) & 1) != 0 || (__p = (a1 + 40), *(*(sub_10005E16C(v29, (a1 + 40))[5] + 48) + 3) == 1))
        {
          sub_100629E2C(v2, *v12);
        }
      }

      v68 = sub_10000E92C();
      if ((*(*v68 + 440))(v68) && *(v2 + 1132) == 1)
      {
        sub_10062A12C(v2);
      }

      if (v54)
      {
        sub_100117644(v54);
      }

      v38 = (v51 & 0xFFFFFFFD) != 0;
      goto LABEL_115;
    }
  }

  if (!v13)
  {
    v38 = 0;
LABEL_115:
    if (*(v2 + 208) && !v38)
    {
      sub_100627484(v2, *v12, 2);
    }

    goto LABEL_118;
  }

  v33 = qword_100BCE8D0;
  if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_ERROR))
  {
    sub_100854264(v13, v33);
  }

  v34 = *(a1 + 56);
  if (v34)
  {
    v35 = std::__shared_weak_count::lock(v34);
    if (v35)
    {
      v36 = v35;
      v37 = *(a1 + 48);
      if (v37 && *(v37 + 77) == 1)
      {
        sub_1003A77B8(v37, *v12, 0, 0);
      }

      sub_100117644(v36);
    }
  }
}

uint64_t sub_100628770(uint64_t a1, unsigned int a2)
{
  v2 = a1 + 1248;
  v3 = *(a1 + 1248);
  if (!v3)
  {
    goto LABEL_9;
  }

  v4 = a1 + 1248;
  do
  {
    v5 = *(v3 + 32);
    v6 = v5 >= a2;
    v7 = v5 < a2;
    if (v6)
    {
      v4 = v3;
    }

    v3 = *(v3 + 8 * v7);
  }

  while (v3);
  if (v4 == v2 || *(v4 + 32) > a2)
  {
LABEL_9:
    v4 = a1 + 1248;
  }

  v8 = qword_100BCE8D0;
  if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
  {
    v9 = sub_100630220();
    sub_10000C7D0();
    v11[0] = 67109632;
    v11[1] = v4 != v2;
    v12 = 1024;
    v13 = v9;
    v14 = 1024;
    v15 = sub_100410E9C();
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Dynamic Audio Delivery aggregation=%d, Timesync Support=%d GPIO Toggle=%d", v11, 0x14u);
  }

  result = sub_100630220();
  if (result)
  {
    sub_10000C7D0();
    LODWORD(result) = sub_100410E9C();
    if (v4 == v2)
    {
      return result;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1006288A4(uint64_t a1)
{
  if (qword_100B50AE0 != -1)
  {
    sub_10085431C();
  }

  v2 = qword_100B50AD8;
  v3 = *(a1 + 32);
  v4 = sub_10000E92C();
  v5 = (*(*v4 + 592))(v4);

  return sub_1004DB580(v2, v3, v5);
}

uint64_t sub_100628934(uint64_t result, unint64_t a2, unsigned int a3)
{
  v8 = a2;
  if (a2)
  {
    v4 = result;
    v7 = 0;
    sub_1000216B4(&v7);
    sub_1000BBF7C();
    sub_10024132C(v8 + 128);
    sub_100022214(&v7);
    *(v4 + 400) = 0;
    if (*(v4 + 1256) >= 2uLL)
    {
        ;
      }
    }

    v9 = &v8;
    if (*sub_10005E16C(v4 + 192, &v8)[5])
    {
      if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_ERROR))
      {
        sub_100854330();
      }

      v9 = &v8;
      v6 = *sub_10005E16C(v4 + 192, &v8)[5];
      if (v6)
      {
        sub_10063D2BC(v6);
        operator delete();
      }

      v9 = &v8;
      *sub_10005E16C(v4 + 192, &v8)[5] = 0;
    }

    operator new();
  }

  return result;
}

void *sub_100628E88(void *a1, __int16 a2, unint64_t a3, int a4)
{
  v15 = a3;
  v16 = &v15;
  *(sub_10005E16C((a1 + 24), &v15)[5] + 92) = a2;
  v16 = &v15;
  *(*(sub_10005E16C((a1 + 24), &v15)[5] + 48) + 1) = 0;
  v16 = &v15;
  *(*(sub_10005E16C((a1 + 24), &v15)[5] + 48) + 2) = 1;
  v16 = &v15;
  *(*(sub_10005E16C((a1 + 24), &v15)[5] + 48) + 3) = 1;
  v16 = &v15;
  *(*(sub_10005E16C((a1 + 24), &v15)[5] + 48) + 20) = a4;
  sub_10011E600(a1[27], v15);
  v16 = &v15;
  if (**(sub_10005E16C((a1 + 24), &v15)[5] + 48) == 1)
  {
    v6 = sub_100017E6C();
    (*(*v6 + 160))(v6, a1[27]);
    v7 = sub_100017E6C();
    (*(*v7 + 216))(v7, a1[27] + 1, 1);
    v8 = sub_100017E6C();
    (*(*v8 + 208))(v8, a1[27] + 4);
    v9 = sub_100017E6C();
    sub_100532818(v9 + 744, (a1 + 4));
    v10 = sub_100017E6C();
    sub_10063DC1C(v10 + 824, (a1 + 6));
    v11 = a1[27];
    v12 = v15;
    v16 = &v15;
    v13 = sub_10005E16C((a1 + 24), &v15);
    sub_100119ED8(v11, v12, *(v13[5] + 92));
  }

  v16 = &v15;
  result = sub_10005E16C((a1 + 24), &v15);
  if (*result[5])
  {
    v16 = &v15;
    *(*sub_10005E16C((a1 + 24), &v15)[5] + 144) = 0;
    v16 = &v15;
    *(*sub_10005E16C((a1 + 24), &v15)[5] + 152) = 0;
    v16 = &v15;
    *(*sub_10005E16C((a1 + 24), &v15)[5] + 128) = 0;
    v16 = &v15;
    *(*sub_10005E16C((a1 + 24), &v15)[5] + 136) = 0;
    return sub_10063247C(a1, v15);
  }

  return result;
}

void sub_1006291AC(uint64_t a1)
{
  *(a1 + 1133) = 0;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v2 = off_100B6F7B0;
  v13 = off_100B6F7B0;
  if (!off_100B6F7B0)
  {
    v3 = sub_10063D1E8();
    v11[3] = dlsym(v3, "tailspin_config_create_with_current_state");
    off_100B6F7B0 = v11[3];
    v2 = v11[3];
  }

  _Block_object_dispose(&v10, 8);
  if (!v2)
  {
    v8 = +[NSAssertionHandler currentHandler];
    v9 = [NSString stringWithUTF8String:"tailspin_config_t BT::soft_tailspin_config_create_with_current_state()"];
    [v8 handleFailureInFunction:v9 file:@"AudioLinkManager.mm" lineNumber:96 description:{@"%s", dlerror()}];
LABEL_12:

    __break(1u);
    return;
  }

  v4 = v2();
  *(a1 + 1136) = v4;
  if (!v4)
  {
    return;
  }

  v5 = v4;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v6 = off_100B6F7B8;
  v13 = off_100B6F7B8;
  if (!off_100B6F7B8)
  {
    v7 = sub_10063D1E8();
    v11[3] = dlsym(v7, "tailspin_enabled_set");
    off_100B6F7B8 = v11[3];
    v6 = v11[3];
  }

  _Block_object_dispose(&v10, 8);
  if (!v6)
  {
    v8 = +[NSAssertionHandler currentHandler];
    v9 = [NSString stringWithUTF8String:"void BT::soft_tailspin_enabled_set(tailspin_config_t, BOOL)"];
    [v8 handleFailureInFunction:v9 file:@"AudioLinkManager.mm" lineNumber:108 description:{@"%s", dlerror()}];
    goto LABEL_12;
  }

  v6(v5, 1);
  sub_100636D40(*(a1 + 1136), 64);
  sub_100636D40(*(a1 + 1136), 48);
  sub_100636ECC(*(a1 + 1136));
}

void sub_10062943C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100629478(uint64_t a1, signed int a2, unint64_t a3)
{
  v41 = a3;
  if (!_os_feature_enabled_impl())
  {
    return 1;
  }

  v6 = *(a1 + 224);
  if (v6)
  {
    if (!sub_10010C5DC(v6, a3))
    {
      return 1;
    }
  }

  if (!a3 || !sub_100632D10(a1, a3))
  {
    if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_ERROR))
    {
      sub_10085447C();
    }

    return 1;
  }

  v7 = *(sub_100632D10(a1, a3) + 24);
  v8 = sub_100632D10(a1, a3);
  v9 = qword_100BCE8D0;
  if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_INFO))
  {
    v10 = *(a1 + 216);
    v11 = *(v10 + 8 * a2 + 176);
    v10 += 48;
    v12 = *(v10 + 8 * v7);
    v13 = *(v10 + 8 * *(v8 + 24));
    v14 = *(sub_100632D10(a1, a3) + 20);
    *buf = 136447234;
    *&buf[4] = v11;
    v43 = 2082;
    v44 = v12;
    v45 = 2082;
    v46 = v13;
    v47 = 1024;
    v48 = 0;
    v49 = 1024;
    v50 = v14;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Low Latency Game pre Transition: %{public}s. State: %{public}s -> %{public}s. handled %d. latency %d", buf, 0x2Cu);
  }

  if (a2 > 5)
  {
    if (a2 > 9)
    {
      if (a2 != 10)
      {
        if (a2 != 11)
        {
          goto LABEL_54;
        }

        sub_10012072C(*(a1 + 216), v41);
        sub_10010EA6C(*(a1 + 224), v41);
        switch(v7)
        {
          case 7:
            if ((*(sub_10000C7D0() + 800) - 1) > 0x7CE)
            {
              *(v8 + 24) = 0;
              sub_10010E66C(*(a1 + 224), v41);
            }

            else
            {
              sub_10010E8E0(*(a1 + 224), 0, v41);
              sub_10010E55C(*(a1 + 224), 1, v41);
              *(v8 + 24) = 0;
            }

            v21 = qword_100BCE8D0;
            if (!os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_85;
            }

            *buf = 0;
            v22 = "Low Latency Game stream stop in kLatencyStateExitAoSinFTOPhase";
            goto LABEL_84;
          case 0xE:
            v17 = qword_100BCE8D0;
            if (!os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_86;
            }

            *buf = 0;
            v18 = "Low Latency Game stream stop already in progress, ignore";
            break;
          case 8:
            *(v8 + 24) = 14;
            v17 = qword_100BCE8D0;
            if (!os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_86;
            }

            *buf = 0;
            v18 = "Low Latency Game stream stop in Wait4FTOPhase";
            break;
          default:
            if ((v7 - 2) > 0xB)
            {
              goto LABEL_86;
            }

            if ((*(sub_10000C7D0() + 800) - 1) > 0x7CE)
            {
              *(v8 + 24) = 0;
              sub_10010E66C(*(a1 + 224), v41);
            }

            else
            {
              sub_10010E8E0(*(a1 + 224), 0, v41);
              sub_10010E55C(*(a1 + 224), 1, v41);
              *(v8 + 24) = 0;
            }

            v21 = qword_100BCE8D0;
            if (!os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
            {
LABEL_85:
              v32 = *(a1 + 216);
              v33 = v41;
              *buf = &v41;
              v34 = sub_10005E16C(a1 + 192, &v41);
              sub_100119ED8(v32, v33, *(v34[5] + 92));
              goto LABEL_86;
            }

            *buf = 0;
            v22 = "Low Latency Game stopped, re-evaluate latency mode";
LABEL_84:
            _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, v22, buf, 2u);
            goto LABEL_85;
        }

        v27 = v17;
        v28 = 2;
LABEL_68:
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, v18, buf, v28);
        goto LABEL_86;
      }

      if (v7 == 7)
      {
        *(v8 + 24) = 9;
        sub_10010E8E0(*(a1 + 224), 0, v41);
        v15 = 1;
        sub_10010E55C(*(a1 + 224), 1, v41);
        goto LABEL_87;
      }

      if (v7 != 4)
      {
        if (!v7)
        {
          v15 = 1;
          *(v8 + 24) = 1;
          sub_100637E14(a1);
          goto LABEL_87;
        }

        goto LABEL_86;
      }

      if (*(sub_100632D10(a1, v41) + 20) != 10)
      {
        v31 = qword_100BCE8D0;
        if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_ERROR))
        {
          sub_1008543E4(&v41, a1, v31);
        }

        goto LABEL_86;
      }

      *(v8 + 24) = 6;
      sub_10010E8E0(*(a1 + 224), 2, v41);
    }

    else
    {
      if (a2 == 6)
      {
        if (v7 == 13)
        {
          *(v8 + 24) = 10;
          goto LABEL_61;
        }

        goto LABEL_86;
      }

      if (a2 != 8)
      {
        goto LABEL_54;
      }

      sub_10012072C(*(a1 + 216), v41);
      sub_10010EA6C(*(a1 + 224), v41);
      if ((v7 - 10) > 3)
      {
        goto LABEL_86;
      }

      if ((*(sub_10000C7D0() + 800) - 1) <= 0x7CE)
      {
        v15 = 1;
        sub_10010E55C(*(a1 + 224), 1, v41);
        sub_10010E8E0(*(a1 + 224), 3, v41);
        *(v8 + 24) = 8;
        goto LABEL_87;
      }

      *(v8 + 24) = 8;
      sub_10010E66C(*(a1 + 224), v41);
    }

LABEL_61:
    v15 = 1;
    goto LABEL_87;
  }

  if (a2 > 2)
  {
    if (a2 != 3)
    {
      if (a2 != 4)
      {
        goto LABEL_54;
      }

      if (v7 == 6)
      {
        *(v8 + 24) = 13;
        sub_10010E55C(*(a1 + 224), 2, v41);
        sub_100637EC0(a1, v41);
        goto LABEL_61;
      }

LABEL_86:
      v15 = 0;
      goto LABEL_87;
    }

    switch(v7)
    {
      case 5:
        v23 = 4;
        break;
      case 8:
        v23 = 7;
        break;
      case 0xE:
        v20 = *(sub_10000C7D0() + 800) - 1;
        sub_10010E8E0(*(a1 + 224), 0, v41);
        if (v20 <= 0x7CE)
        {
          sub_10010E55C(*(a1 + 224), 1, v41);
        }

        *(v8 + 24) = 0;
        v21 = qword_100BCE8D0;
        if (!os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_85;
        }

        *buf = 0;
        v22 = "Low Latency Game enter FTO with kLatencyStateExitAoSForced";
        goto LABEL_84;
      default:
        v29 = qword_100BCE8D0;
        if (!os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_86;
        }

        v30 = *(*(a1 + 216) + 8 * v7 + 48);
        *buf = 136446210;
        *&buf[4] = v30;
        v18 = "Low Latency Game transitionStateMachine: got FTO in state %{public}s";
        v27 = v29;
        v28 = 12;
        goto LABEL_68;
    }

    *(v8 + 24) = v23;
LABEL_60:
    v24 = *(a1 + 216);
    v25 = v41;
    *buf = &v41;
    v26 = sub_10005E16C(a1 + 192, &v41);
    sub_100119ED8(v24, v25, *(v26[5] + 92));
    goto LABEL_61;
  }

  if (!a2)
  {
    if (v7 != 14 && v7 != 9)
    {
      goto LABEL_86;
    }

    *(v8 + 24) = 1;
    v19 = qword_100BCE8D0;
    if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Low Latency Game exit completed, re-evaluate latency mode", buf, 2u);
    }

    goto LABEL_60;
  }

  if (a2 != 2)
  {
LABEL_54:
    v15 = sub_10063A8FC(a1, a2, v41);
    goto LABEL_87;
  }

  if (v7 == 12)
  {
    *(v8 + 24) = 13;
    sub_10010E55C(*(a1 + 224), 2, v41);
    goto LABEL_61;
  }

  if (v7 != 2 && v7 != 1)
  {
    goto LABEL_86;
  }

  *(v8 + 24) = 5;
  v15 = 1;
  sub_10010E8E0(*(a1 + 224), 1, v41);
LABEL_87:
  v35 = *(v8 + 24);
  if (v7 != v35)
  {
    v36 = qword_100BCE8D0;
    if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
    {
      v37 = *(a1 + 216);
      v38 = *(v37 + 8 * a2 + 176);
      v37 += 48;
      v39 = *(v37 + 8 * v7);
      v40 = *(v37 + 8 * v35);
      *buf = 136446978;
      *&buf[4] = v38;
      v43 = 2082;
      v44 = v39;
      v45 = 2082;
      v46 = v40;
      v47 = 1024;
      v48 = v15;
      _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "Low Latency Game Transition: %{public}s. State: %{public}s -> %{public}s. handled %d", buf, 0x26u);
    }
  }

  return v15;
}

void sub_100629C60(uint64_t a1, uint64_t a2, int a3)
{
  if (a3 == 1)
  {
    if ((*(a1 + 351) & 1) == 0)
    {
      if (qword_100B50AC0 != -1)
      {
        sub_1008544B8();
      }

      sub_100594AA0(off_100B50AB8, a2, 16, 9, 110, 0);
      *(a1 + 351) = 1;
      return;
    }

    goto LABEL_11;
  }

  if (a3 != 2 || *(a1 + 351) != 1)
  {
LABEL_11:
    v6 = qword_100BCE8D0;
    if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
    {
      v7 = "dynamicLowLatencyExit";
      if (a3 == 1)
      {
        v7 = "dynamicLowLatencyEnter";
      }

      v8 = 136315138;
      v9 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Warning: Received duplicate notification for %s", &v8, 0xCu);
    }

    return;
  }

  if (qword_100B50AC0 != -1)
  {
    sub_1008544B8();
  }

  sub_100594AA0(off_100B50AB8, a2, 16, 9, 111, 0);
  *(a1 + 351) = 0;
}

uint64_t sub_100629DD4(uint64_t a1)
{
  if (qword_100B50AE0 != -1)
  {
    sub_10085431C();
  }

  v2 = qword_100B50AD8;
  v3 = *(a1 + 32);

  return sub_1004DF2AC(v2, v3, 6);
}

void *sub_100629E2C(uint64_t a1, unint64_t a2)
{
  v14 = a2;
  *buf = &v14;
  if (**(sub_10005E16C(a1 + 192, &v14)[5] + 48) == 1)
  {
    v3 = sub_100017E6C();
    sub_100532AB8(v3 + 744, a1 + 32);
    v4 = sub_100017E6C();
    sub_10063DEBC(v4 + 824, a1 + 48);
  }

  *buf = &v14;
  *(*(sub_10005E16C(a1 + 192, &v14)[5] + 48) + 20) = 6;
  *buf = &v14;
  *(*(sub_10005E16C(a1 + 192, &v14)[5] + 48) + 1) = 0;
  *buf = &v14;
  *(*(sub_10005E16C(a1 + 192, &v14)[5] + 48) + 8) = 0;
  *buf = &v14;
  *(*(sub_10005E16C(a1 + 192, &v14)[5] + 48) + 2) = 0;
  *buf = &v14;
  *(*(sub_10005E16C(a1 + 192, &v14)[5] + 48) + 3) = 0;
  v5 = sub_100017E6C();
  (*(*v5 + 224))(v5, *(a1 + 216) + 2);
  v6 = sub_100017E6C();
  (*(*v6 + 232))(v6, a1 + 928);
  v7 = *(a1 + 216);
  *(v7 + 5) = 0;
  *v7 = 1;
  *(v7 + 3) = 0;
  **(a1 + 224) = 0;
  if ((*(v7 + 2) & 1) != 0 || (*(v7 + 8) & 1) != 0 || *(v7 + 7) == 1)
  {
    v8 = qword_100BCE8D0;
    if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(v7 + 8);
      v10 = *(v7 + 7);
      *buf = 67109376;
      *&buf[4] = v9;
      v16 = 1024;
      v17 = v10;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Dynamic Latency: Re-enable LLM, fSpatialVideoOn = %d fSpatialMusicOn = %d", buf, 0xEu);
      v7 = *(a1 + 216);
    }

    v11 = v14;
    *buf = &v14;
    v12 = sub_10005E16C(a1 + 192, &v14);
    sub_100119ED8(v7, v11, *(v12[5] + 92));
  }

  *buf = &v14;
  result = sub_10005E16C(a1 + 192, &v14);
  if (*result[5])
  {
    return sub_10063247C(a1, v14);
  }

  return result;
}

void sub_10062A12C(uint64_t a1)
{
  *(a1 + 1133) = 0;
  v2 = *(a1 + 1136);
  if (v2)
  {
    sub_100637048(v2);
  }

  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v3 = off_100B6F7D8;
  v11 = off_100B6F7D8;
  if (!off_100B6F7D8)
  {
    v4 = sub_10063D1E8();
    v9[3] = dlsym(v4, "tailspin_config_create_with_default_config");
    off_100B6F7D8 = v9[3];
    v3 = v9[3];
  }

  _Block_object_dispose(&v8, 8);
  if (v3)
  {
    v5 = v3();
    *(a1 + 1136) = v5;
    if (v5)
    {
      sub_100636ECC(v5);
      sub_100637048(*(a1 + 1136));
      *(a1 + 1136) = 0;
    }
  }

  else
  {
    v6 = +[NSAssertionHandler currentHandler];
    v7 = [NSString stringWithUTF8String:"tailspin_config_t BT::soft_tailspin_config_create_with_default_config()"];
    [v6 handleFailureInFunction:v7 file:@"AudioLinkManager.mm" lineNumber:102 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_10062A29C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10062A2CC(uint64_t a1, int a2)
{
  if (*(a1 + 1296) == a2)
  {
    v2 = *(a1 + 1248);
    if (v2)
    {
      do
      {
        v2 = *(v2 + 8);
      }

      while (v2);
    }

    else
    {
      v3 = a1 + 1248;
      do
      {
        v4 = **(v3 + 16) == v3;
        v3 = *(v3 + 16);
      }

      while (v4);
    }

    v5 = *(*sub_10000C7D0() + 3904);

    v5();
  }

  else
  {
    *(a1 + 1296) = a2;

    sub_10063771C(a1, a2);
  }
}

void *sub_10062A3BC(uint64_t a1, uint64_t a2, int a3)
{
  v21 = a2;
  v5 = sub_100630D70(a1, a2);
  *buf = &v21;
  *(sub_10005E16C(a1 + 192, &v21)[5] + 72) = v5;
  v6 = qword_100BCE8D0;
  if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = &v21;
    v7 = *(sub_10005E16C(a1 + 192, &v21)[5] + 72);
    *buf = 67109120;
    *&buf[4] = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "A2DP Link Adaptive Packet Type: Link Adaptive Packet type support=%d", buf, 8u);
  }

  if (sub_100630E30(a1))
  {
    v8 = sub_1000DAB84();
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_100630EF4;
    v20[3] = &unk_100AE0860;
    v20[4] = a1;
    v20[5] = v21;
    sub_10000CA94(v8, v20);
  }

  *buf = &v21;
  result = sub_10005E16C(a1 + 192, &v21);
  if (*(result[5] + 72))
  {
    v10 = sub_100630F58(a1, v21);
    if (a3)
    {
      *buf = &v21;
      if (*(sub_10005E16C(a1 + 192, &v21)[5] + 72) == 2)
      {
        v11 = sub_1000DAB84();
        v18[0] = _NSConcreteStackBlock;
        v18[1] = 3221225472;
        v18[2] = sub_100631020;
        v18[3] = &unk_100AF59D0;
        v19 = v10;
        sub_10000CA94(v11, v18);
        *buf = &v21;
        v12 = sub_10005E16C(a1 + 192, &v21) + 5;
        v13 = 1;
LABEL_12:
        *(*v12 + 79) = v13;
        *buf = &v21;
        result = sub_10005E16C(a1 + 192, &v21);
        *(result[5] + 76) = -1;
        return result;
      }

      *buf = &v21;
    }

    else
    {
      v14 = sub_1000DAB84();
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_100631078;
      v16[3] = &unk_100AF59D0;
      v17 = v10;
      sub_10000CA94(v14, v16);
      *buf = &v21;
    }

    v15 = sub_10005E16C(a1 + 192, &v21);
    v13 = 0;
    v12 = v15 + 5;
    goto LABEL_12;
  }

  return result;
}

uint64_t sub_10062A6E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = qword_100BCE8D0;
  if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
  {
    if (a3)
    {
      v6 = "Start";
    }

    else
    {
      v6 = "Stop";
    }

    v7 = sub_10000E92C();
    v8 = (*(*v7 + 624))(v7);
    v9 = "NOT FORCED";
    if (v8)
    {
      v9 = "FORCED";
    }

    v17 = 136315394;
    v18 = v6;
    v19 = 2080;
    v20 = v9;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Audio Debug Stream State : %s Ultra High Priority %s ", &v17, 0x16u);
  }

  v10 = sub_10000E92C();
  result = (*(*v10 + 624))(v10);
  if (result)
  {
    v12 = sub_10000C7D0();
    v13 = *(a2 + 128) | (*(a2 + 132) << 32);
    v14 = sub_1000DEB14(a2);
    (*(*v12 + 56))(v12, v13, v14, 2, a3, 1, 1, 0);
    v15 = *sub_10000C7D0();
    (*(v15 + 944))();
    v16 = sub_10000C7D0();
    return (*(*v16 + 80))(v16, a2, a3);
  }

  return result;
}

uint64_t sub_10062A90C(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 56);
  *(result + 48) = *(a2 + 48);
  *(result + 56) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_10062A928(uint64_t a1)
{
  v1 = *(a1 + 56);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_10062A940(uint64_t a1, uint64_t a2, __int16 a3, int a4)
{
  v4 = *(a1 + 256);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10062A9BC;
  block[3] = &unk_100B00C18;
  block[4] = a1;
  block[5] = a2;
  v7 = a3;
  v6 = a4;
  dispatch_async(v4, block);
}

void sub_10062A9BC(uint64_t a1)
{
  v2 = (a1 + 40);
  v1 = *(a1 + 40);
  if (v1)
  {
    v3 = *(a1 + 32);
    v4 = *(v3 + 200);
    if (v4)
    {
      v6 = v3 + 192;
      v7 = v3 + 200;
      do
      {
        v8 = *(v4 + 32);
        v9 = v8 >= v1;
        v10 = v8 < v1;
        if (v9)
        {
          v7 = v4;
        }

        v4 = *(v4 + 8 * v10);
      }

      while (v4);
      if (v7 != v3 + 200 && v1 >= *(v7 + 32))
      {
        v11 = *(a1 + 52);
        *buf = a1 + 40;
        *(sub_10005E16C(v6, v2)[5] + 68) = v11;
        if (qword_100B512B8 != -1)
        {
          sub_100853E48();
        }

        sub_10031A0F0(qword_100B512B0, *(a1 + 40), 0, *(a1 + 48));
        v12 = *(a1 + 48);
        *buf = v2;
        *(sub_10005E16C(v6, v2)[5] + 88) = v12;
        v13 = sub_10000E92C();
        LOBYTE(v12) = (*(*v13 + 296))(v13);
        *buf = v2;
        *(sub_10005E16C(v6, v2)[5] + 64) = v12 ^ 1;
        *buf = v2;
        if (*(sub_10005E16C(v6, v2)[5] + 64) == 1)
        {
          *buf = v2;
          if (*sub_10005E16C(v6, v2)[5])
          {
            if (*(a1 + 52) >= *(v3 + 1182))
            {
              v14 = *(v3 + 1182);
            }

            else
            {
              v14 = *(a1 + 52);
            }

            *buf = v2;
            *(sub_10005E16C(v6, v2)[5] + 66) = v14;
            v15 = qword_100BCE8D0;
            if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
            {
              v33 = v2;
              v16 = sub_10005E16C(v6, v2);
              v17 = sub_10062ADB8(v16, *(v16[5] + 88));
              v33 = v2;
              v18 = *(sub_10005E16C(v6, v2)[5] + 66);
              *buf = 138412546;
              *&buf[4] = v17;
              v35 = 1024;
              v36 = v18;
              _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "A2DP Link Adaptive Bitrate for %@ started with initial bitrate of %3d", buf, 0x12u);
            }

            *buf = v2;
            v19 = *(sub_10005E16C(v6, v2)[5] + 92);
            *buf = v2;
            v20 = sub_10005E16C(v6, v2);
            v21 = v3 + 1248;
            v22 = *(v3 + 1248);
            if (!v22)
            {
              goto LABEL_27;
            }

            v23 = v3 + 1248;
            do
            {
              v24 = *(v22 + 32);
              v9 = v24 >= v19;
              v25 = v24 < v19;
              if (v9)
              {
                v23 = v22;
              }

              v22 = *(v22 + 8 * v25);
            }

            while (v22);
            if (v23 == v21 || v19 < *(v23 + 32))
            {
LABEL_27:
              v23 = v3 + 1248;
            }

            v26 = *(v20[5] + 66);
            v27 = v23 != v21;
            v28 = sub_1000DAB84();
            v29[0] = _NSConcreteStackBlock;
            v29[1] = 3221225472;
            v29[2] = sub_10062AEB8;
            v29[3] = &unk_100AF5990;
            v32 = v27;
            v30 = v19;
            v31 = v26;
            sub_10000CA94(v28, v29);
          }
        }
      }
    }
  }
}

id sub_10062ADB8(uint64_t a1, int a2)
{
  v3 = [NSMutableString stringWithFormat:&stru_100B0F9E0];
  v4 = v3;
  switch(a2)
  {
    case 0:
      v5 = @"SBC";
      goto LABEL_7;
    case 33023:
      v5 = @"AAC-ELD";
      goto LABEL_7;
    case 2:
      v5 = @"AAC-LC";
LABEL_7:
      [v3 appendString:v5];
      goto LABEL_8;
  }

  [v3 appendString:@"Unknown Codec"];
  v7 = qword_100BCE8D0;
  if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Unknown codec", v8, 2u);
  }

LABEL_8:

  return v4;
}

void sub_10062AEB8(uint64_t a1)
{
  if ((*(a1 + 36) & 1) == 0)
  {
    if (qword_100B50AE0 != -1)
    {
      sub_10085431C();
    }

    v3 = qword_100B50AD8;
    v4 = *(a1 + 32);
    v5 = *(a1 + 34);

    sub_1004DF868(v3, v4, v5);
  }
}

void sub_10062AF1C(uint64_t a1, uint64_t a2, __int16 a3, int a4)
{
  v4 = *(a1 + 232);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10062A9BC;
  block[3] = &unk_100B00C18;
  block[4] = a1 - 24;
  block[5] = a2;
  v7 = a3;
  v6 = a4;
  dispatch_async(v4, block);
}

void sub_10062AF9C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 256);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10062B010;
  v3[3] = &unk_100AE0860;
  v3[4] = a1;
  v3[5] = a2;
  dispatch_async(v2, v3);
}

void *sub_10062B010(void *result)
{
  v2 = result + 5;
  v1 = result[5];
  if (v1)
  {
    v3 = result[4];
    v4 = *(v3 + 200);
    if (v4)
    {
      v5 = v3 + 192;
      v6 = v3 + 200;
      do
      {
        v7 = *(v4 + 32);
        v8 = v7 >= v1;
        v9 = v7 < v1;
        if (v8)
        {
          v6 = v4;
        }

        v4 = *(v4 + 8 * v9);
      }

      while (v4);
      if (v6 != v3 + 200 && v1 >= *(v6 + 32))
      {
        *(sub_10005E16C(v5, v2)[5] + 64) = 0;
        v10 = *(v3 + 1182);
        *(sub_10005E16C(v5, v2)[5] + 66) = v10;
        *(sub_10005E16C(v5, v2)[5] + 70) = -1;
        v11 = *(v3 + 1182);
        *(sub_10005E16C(v5, v2)[5] + 68) = v11;
        result = sub_10005E16C(v5, v2);
        *(result[5] + 88) = 0;
      }
    }
  }

  return result;
}

void sub_10062B15C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 232);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10062B010;
  v3[3] = &unk_100AE0860;
  v3[4] = a1 - 24;
  v3[5] = a2;
  dispatch_async(v2, v3);
}

void sub_10062B1D4(uint64_t a1, __int16 a2, char a3)
{
  v3 = *(a1 + 256);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10062B250;
  v4[3] = &unk_100AF5948;
  v4[4] = a1;
  v5 = a2;
  v6 = a3;
  dispatch_async(v3, v4);
}

void sub_10062B268(uint64_t a1, __int16 a2, char a3)
{
  v3 = *(a1 + 232);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10062B250;
  v4[3] = &unk_100AF5948;
  v4[4] = a1 - 24;
  v5 = a2;
  v6 = a3;
  dispatch_async(v3, v4);
}

void sub_10062B2E8(uint64_t a1, __int16 a2, char a3)
{
  v3 = *(a1 + 256);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10062B364;
  v4[3] = &unk_100AF5948;
  v4[4] = a1;
  v5 = a2;
  v6 = a3;
  dispatch_async(v3, v4);
}

void sub_10062B37C(uint64_t a1, __int16 a2, char a3)
{
  v3 = *(a1 + 232);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10062B364;
  v4[3] = &unk_100AF5948;
  v4[4] = a1 - 24;
  v5 = a2;
  v6 = a3;
  dispatch_async(v3, v4);
}

void sub_10062B3FC(uint64_t a1, __int16 a2)
{
  v2 = *(a1 + 256);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10062B474;
  v3[3] = &unk_100AEB940;
  v3[4] = a1;
  v4 = a2;
  dispatch_async(v2, v3);
}

void sub_10062B488(uint64_t a1, __int16 a2)
{
  v2 = *(a1 + 232);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10062B474;
  v3[3] = &unk_100AEB940;
  v3[4] = a1 - 24;
  v4 = a2;
  dispatch_async(v2, v3);
}

double sub_10062B504(void *a1, int a2)
{
  v4 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
  if (a2)
  {
    a1[106] = v4;
  }

  else
  {
    result = (v4 - a1[106]) * 0.000000001;
    a1[107] = result;
    a1[108] += result;
  }

  return result;
}

void sub_10062B568(uint64_t a1, __int16 a2, char a3)
{
  v3 = *(a1 + 256);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10062B5E4;
  v4[3] = &unk_100AF5948;
  v4[4] = a1;
  v5 = a2;
  v6 = a3;
  dispatch_async(v3, v4);
}

void sub_10062B5FC(uint64_t a1, __int16 a2, char a3)
{
  v3 = *(a1 + 232);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10062B5E4;
  v4[3] = &unk_100AF5948;
  v4[4] = a1 - 24;
  v5 = a2;
  v6 = a3;
  dispatch_async(v3, v4);
}

void sub_10062B67C(uint64_t a1, __int16 a2, char a3)
{
  v3 = *(a1 + 256);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10062B6F8;
  v4[3] = &unk_100AF5948;
  v4[4] = a1;
  v5 = a2;
  v6 = a3;
  dispatch_async(v3, v4);
}

void sub_10062B710(uint64_t a1, __int16 a2, char a3)
{
  v3 = *(a1 + 232);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10062B6F8;
  v4[3] = &unk_100AF5948;
  v4[4] = a1 - 24;
  v5 = a2;
  v6 = a3;
  dispatch_async(v3, v4);
}

void sub_10062B790(uint64_t a1, __int16 a2, char a3)
{
  v3 = *(a1 + 256);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10062B80C;
  v4[3] = &unk_100AF5948;
  v4[4] = a1;
  v5 = a2;
  v6 = a3;
  dispatch_async(v3, v4);
}

void sub_10062B824(uint64_t a1, __int16 a2, char a3)
{
  v3 = *(a1 + 232);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10062B80C;
  v4[3] = &unk_100AF5948;
  v4[4] = a1 - 24;
  v5 = a2;
  v6 = a3;
  dispatch_async(v3, v4);
}

void sub_10062B8A4(uint64_t a1, __int16 a2, char a3)
{
  v3 = *(a1 + 256);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10062B920;
  v4[3] = &unk_100AF5948;
  v4[4] = a1;
  v5 = a2;
  v6 = a3;
  dispatch_async(v3, v4);
}

void sub_10062B938(uint64_t a1, __int16 a2, char a3)
{
  v3 = *(a1 + 232);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10062B920;
  v4[3] = &unk_100AF5948;
  v4[4] = a1 - 24;
  v5 = a2;
  v6 = a3;
  dispatch_async(v3, v4);
}

void sub_10062B9B8(uint64_t a1, __int16 a2)
{
  v2 = *(a1 + 256);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10062BA30;
  v3[3] = &unk_100AEB940;
  v3[4] = a1;
  v4 = a2;
  dispatch_async(v2, v3);
}

void sub_10062BA30(uint64_t a1)
{
  if (*(*(a1 + 32) + 888))
  {
    sub_1006EE6E4(*(*(a1 + 32) + 888), *(a1 + 40));
  }
}

void sub_10062BA4C(uint64_t a1, __int16 a2)
{
  v2 = *(a1 + 232);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10062BA30;
  v3[3] = &unk_100AEB940;
  v3[4] = a1 - 24;
  v4 = a2;
  dispatch_async(v2, v3);
}

void sub_10062BAC8(uint64_t a1, uint64_t a2, __int16 a3, char a4)
{
  v4 = *(a1 + 256);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10062BB44;
  block[3] = &unk_100AEDA40;
  v7 = a4;
  block[4] = a1;
  block[5] = a2;
  v6 = a3;
  dispatch_async(v4, block);
}

void sub_10062BB44(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = qword_100BCE8D0;
  if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 40);
    if (*(a1 + 50))
    {
      v5 = "Publish ";
    }

    else
    {
      v5 = "Unpublish ";
    }

    *buf = 136446466;
    *&buf[4] = v5;
    v23 = 2048;
    v24 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Dynamic Latency : A2DP Device %{public}s, device: %p", buf, 0x16u);
  }

  v6 = (a1 + 40);
  if (*(a1 + 40))
  {
    v7 = _os_feature_enabled_impl();
    if (v7)
    {
      sub_10062636C(v7, *(a1 + 40), *(a1 + 50));
    }

    v8 = v2 + 200;
    v9 = *(v2 + 200);
    if (*(a1 + 50) == 1)
    {
      if (!v9)
      {
        goto LABEL_18;
      }

      v10 = *v6;
      v11 = v2 + 200;
      do
      {
        v12 = *(v9 + 32);
        v13 = v12 >= v10;
        v14 = v12 < v10;
        if (v13)
        {
          v11 = v9;
        }

        v9 = *(v9 + 8 * v14);
      }

      while (v9);
      if (v11 == v8 || v10 < *(v11 + 32))
      {
LABEL_18:
        operator new();
      }

      if (qword_100B512B8 != -1)
      {
        sub_100853E48();
      }

      sub_100319DA8(qword_100B512B0, *(a1 + 40));
      v15 = *(a1 + 48);
      *buf = v6;
      *(sub_10005E16C(v2 + 192, v6)[5] + 92) = v15;
      *buf = v6;
      *(sub_10005E16C(v2 + 192, v6)[5] + 96) = 1;
      v16 = qword_100BCE8D0;
      if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        *&buf[4] = 0;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Initialize the fCurrentMode to %d", buf, 8u);
      }

      *buf = v6;
      **(sub_10005E16C(v2 + 192, v6)[5] + 56) = 0;
      sub_10012077C(*(v2 + 216), *v6);
    }

    else if (v9)
    {
      v17 = *v6;
      v18 = v2 + 200;
      do
      {
        v19 = *(v9 + 32);
        v13 = v19 >= v17;
        v20 = v19 < v17;
        if (v13)
        {
          v18 = v9;
        }

        v9 = *(v9 + 8 * v20);
      }

      while (v9);
      if (v18 != v8 && v17 >= *(v18 + 32))
      {
        *buf = a1 + 40;
        *(sub_10005E16C(v2 + 192, (a1 + 40))[5] + 96) = 0;
        *buf = a1 + 40;
        if ((*(sub_10005E16C(v2 + 192, (a1 + 40))[5] + 95) & 1) == 0)
        {
          *buf = a1 + 40;
          if ((*(sub_10005E16C(v2 + 192, (a1 + 40))[5] + 96) & 1) == 0)
          {
            *buf = a1 + 40;
            v21 = sub_10005E16C(v2 + 192, (a1 + 40))[5];
            if (v21)
            {
              sub_10063CEC8(v21);
              operator delete();
            }

            sub_100075DC4((v2 + 192), (a1 + 40));
            if (qword_100B512B8 != -1)
            {
              sub_100853E48();
            }

            sub_100319F44(qword_100B512B0, *v6);
          }
        }
      }
    }
  }
}

void sub_10062BF90(uint64_t a1, uint64_t a2, __int16 a3, char a4)
{
  v4 = *(a1 + 232);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10062BB44;
  block[3] = &unk_100AEDA40;
  v7 = a4;
  block[4] = a1 - 24;
  block[5] = a2;
  v6 = a3;
  dispatch_async(v4, block);
}

void sub_10062C010(uint64_t a1, uint64_t a2, __int16 a3, char a4)
{
  v4 = *(a1 + 256);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10062C08C;
  block[3] = &unk_100AEDA40;
  v7 = a4;
  v6 = a3;
  block[4] = a1;
  block[5] = a2;
  dispatch_async(v4, block);
}

void sub_10062C08C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = (v2 + 1312);
  v4 = *(v2 + 1312);
  if (!v4)
  {
    notify_register_check("com.apple.bluetooth.WirelessSplitterOn", (v2 + 1312));
    v4 = *v3;
  }

  state64 = 0;
  notify_get_state(v4, &state64);
  v5 = state64;
  v6 = (v2 + 1316);
  v7 = *(v2 + 1316);
  if (v7 == -1)
  {
    notify_register_check("com.apple.bluetooth.GuestConnected", (v2 + 1316));
    v7 = *v6;
  }

  v8 = v5 & 1;
  v51 = 0;
  notify_get_state(v7, &v51);
  v9 = v51;
  if (*(a1 + 50) == 1)
  {
    if (!*(v2 + 1256))
    {
      goto LABEL_15;
    }

    v10 = *(v2 + 1248);
    if (!v10)
    {
      goto LABEL_15;
    }

    v11 = *(a1 + 48);
    v12 = v2 + 1248;
    do
    {
      v13 = *(v10 + 32);
      v14 = v13 >= v11;
      v15 = v13 < v11;
      if (v14)
      {
        v12 = v10;
      }

      v10 = *(v10 + 8 * v15);
    }

    while (v10);
    if (v12 == v2 + 1248 || v11 < *(v12 + 32))
    {
LABEL_15:
      v16 = qword_100BCE8D0;
      if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
      {
        v17 = *(a1 + 40);
        if (v17)
        {
          sub_1000E5A58(v17, __p);
          if (v54 >= 0)
          {
            v18 = __p;
          }

          else
          {
            v18 = __p[0];
          }

          *buf = 136446210;
          v56 = v18;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Wireless Splitter Mode is enabled for device %{public}s", buf, 0xCu);
          if (v54 < 0)
          {
            operator delete(__p[0]);
          }
        }

        else
        {
          *buf = 136446210;
          v56 = "null";
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Wireless Splitter Mode is enabled for device %{public}s", buf, 0xCu);
        }
      }

      sub_10062C76C(v2, *(a1 + 40), *(a1 + 48));
    }

    v39 = qword_100BCE8D0;
    if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
    {
      v40 = *(a1 + 40);
      if (v40)
      {
        sub_1000E5A58(v40, __p);
        if (v54 >= 0)
        {
          v41 = __p;
        }

        else
        {
          v41 = __p[0];
        }

        *buf = 136446210;
        v56 = v41;
        _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "Wireless Splitter Mode is already enabled for device %{public}s", buf, 0xCu);
        if (v54 < 0)
        {
          operator delete(__p[0]);
        }
      }

      else
      {
        *buf = 136446210;
        v56 = "null";
        _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "Wireless Splitter Mode is already enabled for device %{public}s", buf, 0xCu);
      }
    }

    __p[0] = (a1 + 48);
    v46 = sub_1003750BC(v2 + 1240, (a1 + 48));
    v47 = *(a1 + 50);
    if (*(v46[5] + 20) != v47 && !sub_10062C940(v46, *(a1 + 40), v47))
    {
      v48 = *(a1 + 50);
      __p[0] = (a1 + 48);
      *(sub_1003750BC(v2 + 1240, (a1 + 48))[5] + 20) = v48;
    }

    if (*(*(a1 + 40) + 1016) == 1 && (v9 & 1) != 0)
    {
      v50 = qword_100BCE8D0;
      if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(__p[0]) = 0;
        _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEFAULT, "Wireless Splitter aggregation enabled setting fGuestConnectedToken to disabled", __p, 2u);
      }

      v45 = 0;
LABEL_82:
      notify_set_state(*v6, v45);
      notify_post("com.apple.bluetooth.GuestConnected");
    }
  }

  else
  {
    v19 = (a1 + 48);
    v20 = (v2 + 1248);
    v21 = *(v2 + 1248);
    if (v21)
    {
      v22 = *v19;
      v23 = v2 + 1248;
      do
      {
        v24 = *(v21 + 32);
        v14 = v24 >= v22;
        v25 = v24 < v22;
        if (v14)
        {
          v23 = v21;
        }

        v21 = *(v21 + 8 * v25);
      }

      while (v21);
      if (v23 != v20 && v22 >= *(v23 + 32))
      {
        __p[0] = (a1 + 48);
        v26 = sub_1003750BC(v2 + 1240, (a1 + 48));
        v27 = *(a1 + 50);
        if (*(v26[5] + 20) != v27 && !sub_10062C940(v26, *(a1 + 40), v27))
        {
          v28 = *(a1 + 50);
          __p[0] = (a1 + 48);
          *(sub_1003750BC(v2 + 1240, (a1 + 48))[5] + 20) = v28;
        }
      }
    }

    sub_10053815C(*(a1 + 40), 0);
    v29 = *v20;
    if (!*v20)
    {
      goto LABEL_41;
    }

    v30 = *v19;
    v31 = v2 + 1248;
    do
    {
      v32 = *(v29 + 32);
      v14 = v32 >= v30;
      v33 = v32 < v30;
      if (v14)
      {
        v31 = v29;
      }

      v29 = *(v29 + 8 * v33);
    }

    while (v29);
    if (v31 != v20 && v30 >= *(v31 + 32))
    {
      v36 = qword_100BCE8D0;
      if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
      {
        v37 = *(a1 + 40);
        if (v37)
        {
          sub_1000E5A58(v37, __p);
          if (v54 >= 0)
          {
            v38 = __p;
          }

          else
          {
            v38 = __p[0];
          }

          *buf = 136446210;
          v56 = v38;
          _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "Wireless Splitter Mode is disabled for device %{public}s", buf, 0xCu);
          if (v54 < 0)
          {
            operator delete(__p[0]);
          }
        }

        else
        {
          *buf = 136446210;
          v56 = "null";
          _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "Wireless Splitter Mode is disabled for device %{public}s", buf, 0xCu);
        }
      }

      std::string::assign((v2 + 1320), "WS_ERROR_DISCONNECTION_MODE_DISABLED");
      sub_1005381A4(*(a1 + 40), 0);
      sub_10062CA18(v2, *(a1 + 48));
    }

    else
    {
LABEL_41:
      std::string::assign((v2 + 1320), "WS_ERROR_DISCONNECTION_NO_DEVICE_FOR_HANDLE");
      sub_10062CB34(v2);
      v34 = qword_100BCE8D0;
      if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
      {
        v35 = *v19;
        LODWORD(__p[0]) = 67109120;
        HIDWORD(__p[0]) = v35;
        _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "Wireless Splitter device does not exists with handle %d, it's already deleted", __p, 8u);
      }
    }

    v42 = *(a1 + 50);
    if (v8 != v42)
    {
      notify_set_state(*v3, v42);
      notify_post("com.apple.bluetooth.WirelessSplitterOn");
    }

    if (*(*(a1 + 40) + 1016) == 1 && (v9 & 1) == 0)
    {
      std::string::assign((v2 + 1320), "WS_ERROR_START_AGGREGATION_DISABLED");
      sub_10062CB34(v2);
      v44 = qword_100BCE8D0;
      if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(__p[0]) = 0;
        _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "Wireless Splitter aggregation disabled setting fGuestConnectedToken to enabled", __p, 2u);
      }

      v45 = 1;
      goto LABEL_82;
    }
  }

  sub_100119ED8(*(v2 + 216), 0, *(a1 + 48));
}

void sub_10062C76C(uint64_t a1, uint64_t a2, __int16 a3)
{
  v8 = a3;
  if (*(a1 + 1256))
  {
    v4 = 4096;
  }

  else
  {
    v4 = 2048;
  }

  sub_1005381A4(a2, v4);
  v7 = 0;
  *__val = 0;
  v5 = 0;
  if (a2)
  {
    sub_1000C2364(a2, &v7, &__val[1], __val, &v5);
  }

  operator new();
}

uint64_t sub_10062C940(uint64_t a1, uint64_t a2, char a3)
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 1;
  v5 = sub_1000D999C();
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100637B88;
  v8[3] = &unk_100B02F10;
  v9 = a3;
  v8[4] = &v10;
  v8[5] = a2;
  sub_10000D334(v5, v8);
  v6 = *(v11 + 6);
  _Block_object_dispose(&v10, 8);
  return v6;
}

void sub_10062CA00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10062CA18(const std::string *a1, unsigned __int16 a2)
{
  v5 = a2;
  sub_10062A2CC(a1, 0);
  sub_10062CB34(a1);
  *buf = &v5;
  if (sub_1003750BC(&a1[51].__r_.__value_.__r.__words[2], &v5)[5])
  {
    operator delete();
  }

  sub_100480E04(&a1[51].__r_.__value_.__r.__words[2], &v5);
  a1[54].__r_.__value_.__s.__data_[0] = 0;
  v3 = qword_100BCE8D0;
  if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
  {
    size = a1[52].__r_.__value_.__l.__size_;
    *buf = 67109376;
    *&buf[4] = v5;
    v7 = 2048;
    v8 = size;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Wireless Splitter destroying aggregate device with handle %hu fWirelessSplitterA2dpDevices devices %lu left", buf, 0x12u);
  }
}

void sub_10062CB34(const std::string *a1)
{
  v2 = sub_100017E6C();
  sub_100532AB8(v2 + 744, &a1[1].__r_.__value_.__l.__size_);
  *a1[9].__r_.__value_.__l.__data_ = 1;
  if (a1[52].__r_.__value_.__r.__words[2])
  {
    Current = CFAbsoluteTimeGetCurrent();
    v4 = a1[52].__r_.__value_.__r.__words[2];
    v5 = *v4;
    LODWORD(v5) = *(v4 + 32);
    *(v4 + 32) = (Current - *v4 + v5);
    if (qword_100B50910 != -1)
    {
      sub_100854250();
    }

    v6 = a1[52].__r_.__value_.__r.__words[2];
    *(v6 + 36) += *(off_100B50908 + 54);
    if (*(v6 + 103) >= 0)
    {
      v7 = *(v6 + 103);
    }

    else
    {
      v7 = *(v6 + 88);
    }

    memset(v41, 0, 24);
    v8 = v41;
    sub_1003A5170(v41, v7 + 1);
    if (v41[23] < 0)
    {
      v8 = *v41;
    }

    if (v7)
    {
      v11 = *(v6 + 80);
      v10 = (v6 + 80);
      v9 = v11;
      if (v10[23] >= 0)
      {
        v12 = v10;
      }

      else
      {
        v12 = v9;
      }

      memmove(v8, v12, v7);
    }

    *&v8[v7] = 45;
    v13 = a1[52].__r_.__value_.__r.__words[2];
    v16 = *(v13 + 104);
    v14 = v13 + 104;
    v15 = v16;
    v17 = *(v14 + 23);
    if (v17 >= 0)
    {
      v18 = v14;
    }

    else
    {
      v18 = v15;
    }

    if (v17 >= 0)
    {
      v19 = *(v14 + 23);
    }

    else
    {
      v19 = *(v14 + 8);
    }

    v20 = std::string::append(v41, v18, v19);
    v21 = v20->__r_.__value_.__r.__words[0];
    v58[0] = v20->__r_.__value_.__l.__size_;
    *(v58 + 7) = *(&v20->__r_.__value_.__r.__words[1] + 7);
    v22 = HIBYTE(v20->__r_.__value_.__r.__words[2]);
    v20->__r_.__value_.__l.__size_ = 0;
    v20->__r_.__value_.__r.__words[2] = 0;
    v20->__r_.__value_.__r.__words[0] = 0;
    v23 = a1[52].__r_.__value_.__r.__words[2];
    if (*(v23 + 151) < 0)
    {
      operator delete(*(v23 + 128));
    }

    v24 = v58[0];
    *(v23 + 128) = v21;
    *(v23 + 136) = v24;
    *(v23 + 143) = *(v58 + 7);
    *(v23 + 151) = v22;
    if ((v41[23] & 0x80000000) != 0)
    {
      operator delete(*v41);
    }

    std::string::operator=((a1[52].__r_.__value_.__r.__words[2] + 152), a1 + 55);
    v25 = sub_10000F034();
    (*(*v25 + 176))(v25, a1[52].__r_.__value_.__r.__words[2]);
    v26 = qword_100BCE8D0;
    if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
    {
      v27 = a1[52].__r_.__value_.__r.__words[2];
      v28 = (v27 + 80);
      if (*(v27 + 103) < 0)
      {
        v28 = *v28;
      }

      v29 = (v27 + 104);
      if (*(v27 + 127) < 0)
      {
        v29 = *v29;
      }

      v30 = (v27 + 128);
      if (*(v27 + 151) < 0)
      {
        v30 = *v30;
      }

      v32 = *(v27 + 32);
      v31 = *(v27 + 36);
      v33 = *(v27 + 40);
      v34 = *(v27 + 44);
      v36 = *(v27 + 48);
      v35 = *(v27 + 52);
      v38 = *(v27 + 68);
      v37 = *(v27 + 72);
      v39 = (v27 + 152);
      if (*(v27 + 175) < 0)
      {
        v39 = *v39;
      }

      *v41 = 67111938;
      *&v41[4] = v32;
      *&v41[8] = 1024;
      *&v41[10] = v31;
      *&v41[14] = 1024;
      *&v41[16] = v33;
      *&v41[20] = 1024;
      *&v41[22] = v34;
      v42 = 1024;
      v43 = v36;
      v44 = 1024;
      v45 = v35;
      v46 = 1024;
      v47 = v38;
      v48 = 1024;
      v49 = v37;
      v50 = 2080;
      v51 = v28;
      v52 = 2080;
      v53 = v29;
      v54 = 2080;
      v55 = v30;
      v56 = 2080;
      v57 = v39;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Wireless Splitter submitting following metric: fTotalDurationSharingSession:%us fTotalSiriActivationDuringSession:%u Sessions fTotalIncomingCallsDuringSessio:%u Calls fTotalOutgoingCallsDuringSession:%u Calls fTotalMusicPlaybackDuration:%us fTotalVideoPlaybackDuration:%us fSharingSessionStart:%u [0:Owner,1:Prox,2:Boop,3:ReConn], fSharingSessionStop:%u, fOwnerWxProductID %s, fGuestWxProductID %s, fOwnerGuestWxProductID %s fErrorCode %s", v41, 0x5Au);
    }

    v40 = a1[52].__r_.__value_.__r.__words[2];
    if (v40)
    {
      if (*(v40 + 175) < 0)
      {
        operator delete(*(v40 + 152));
      }

      if (*(v40 + 151) < 0)
      {
        operator delete(*(v40 + 128));
      }

      if (*(v40 + 127) < 0)
      {
        operator delete(*(v40 + 104));
      }

      if (*(v40 + 103) < 0)
      {
        operator delete(*(v40 + 80));
      }

      operator delete();
    }

    a1[52].__r_.__value_.__r.__words[2] = 0;
  }
}

void sub_10062CE98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10062CEBC(uint64_t a1, uint64_t a2, __int16 a3, char a4)
{
  v4 = *(a1 + 232);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10062C08C;
  block[3] = &unk_100AEDA40;
  v7 = a4;
  v6 = a3;
  block[4] = a1 - 24;
  block[5] = a2;
  dispatch_async(v4, block);
}

void sub_10062CF4C(uint64_t a1, __int16 a2, char a3)
{
  v3 = *(a1 + 256);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10062CFC8;
  v4[3] = &unk_100AF5948;
  v4[4] = a1;
  v5 = a2;
  v6 = a3;
  dispatch_async(v3, v4);
}

void sub_10062CFE0(uint64_t a1, __int16 a2, char a3)
{
  v3 = *(a1 + 232);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10062CFC8;
  v4[3] = &unk_100AF5948;
  v4[4] = a1 - 24;
  v5 = a2;
  v6 = a3;
  dispatch_async(v3, v4);
}

void sub_10062D068(uint64_t a1, uint64_t a2, __int16 a3)
{
  v3 = *(a1 + 256);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10062D0E0;
  block[3] = &unk_100AE0EF8;
  block[4] = a1;
  block[5] = a2;
  v5 = a3;
  dispatch_async(v3, block);
}

void sub_10062D0F4(uint64_t a1, uint64_t a2, int a3)
{
  v3 = *(a1 + 256);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10062D16C;
  block[3] = &unk_100AE0880;
  block[4] = a1;
  block[5] = a2;
  v5 = a3;
  dispatch_async(v3, block);
}

void *sub_10062D16C(void *result)
{
  v1 = result[4];
  v2 = *(v1 + 200);
  if (v2)
  {
    v3 = result[5];
    do
    {
      v4 = v2[4];
      if (v3 >= v4)
      {
        if (v4 >= v3)
        {
          v5 = *(result + 12);
          result = sub_10005E16C(v1 + 192, result + 5);
          *(result[5] + 112) = v5;
          return result;
        }

        ++v2;
      }

      v2 = *v2;
    }

    while (v2);
  }

  return result;
}

uint64_t sub_10062D1F0(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v2 = *(a1 + 256);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10062D2A0;
  block[3] = &unk_100AE0EB8;
  block[5] = a1;
  block[6] = a2;
  block[4] = &v6;
  dispatch_sync(v2, block);
  v3 = *(v7 + 6);
  _Block_object_dispose(&v6, 8);
  return v3;
}

void *sub_10062D2A0(void *result)
{
  v1 = result[5];
  v2 = *(v1 + 200);
  if (v2)
  {
    v3 = result;
    v4 = result[6];
    do
    {
      v5 = v2[4];
      if (v4 >= v5)
      {
        if (v5 >= v4)
        {
          result = sub_10005E16C(v1 + 192, result + 6);
          *(*(v3[4] + 8) + 24) = *(result[5] + 112);
          return result;
        }

        ++v2;
      }

      v2 = *v2;
    }

    while (v2);
  }

  return result;
}

uint64_t sub_10062D338(uint64_t a1, _WORD *a2)
{
  if (!_os_feature_enabled_impl())
  {
    goto LABEL_5;
  }

  if (qword_100B50930 != -1)
  {
    sub_100854110();
  }

  result = sub_1000F2A34(off_100B50928, a2);
  if (!result)
  {
LABEL_5:
    v5 = *(a1 + 216);

    return sub_10011ECF4(v5, a2);
  }

  return result;
}

void sub_10062D3C4(uint64_t a1, __int16 a2, uint64_t a3)
{
  v3 = *(a1 + 256);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10062D43C;
  block[3] = &unk_100AE0EF8;
  block[4] = a1;
  block[5] = a3;
  v5 = a2;
  dispatch_async(v3, block);
}

void sub_10062D43C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = (a1 + 40);
  kdebug_trace();
  v4 = sub_10062D8E8(v2, *(a1 + 48));
  v35 = v4;
  if (v4)
  {
    v5 = *(v2 + 200);
    if (v5)
    {
      v6 = v2 + 192;
      v7 = v2 + 200;
      do
      {
        v8 = *(v5 + 32);
        v9 = v8 >= v4;
        v10 = v8 < v4;
        if (v9)
        {
          v7 = v5;
        }

        v5 = *(v5 + 8 * v10);
      }

      while (v5);
      if (v7 != v2 + 200 && v4 >= *(v7 + 32))
      {
        *v37 = &v35;
        if (*sub_10005E16C(v6, &v35)[5])
        {
          *v37 = &v35;
          *(*sub_10005E16C(v6, &v35)[5] + 112) = 1;
          v11 = mach_absolute_time();
          *v37 = &v35;
          *(*sub_10005E16C(v6, &v35)[5] + 120) = v11;
          *v37 = &v35;
          v12 = sub_10005E16C(v6, &v35);
          v13 = *v3;
          if (*v3 >= 0x33)
          {
            v14 = *v12[5];
            v15 = *(v14 + 512);
            ++*(v14 + 504);
            if (v15 < v13)
            {
              *(v14 + 512) = v13;
            }
          }
        }

        *v37 = 0u;
        v38 = 0u;
        v34 = time(0);
        v16 = localtime(&v34);
        strftime(v37, 0x20uLL, "%Y_%m_%d_%H:%M:%S", v16);
        if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_ERROR))
        {
          sub_1008544CC();
        }

        if (*v3 >= 0x1F && *(v2 + 1132) == 1 && *(v2 + 1136) && (*(v2 + 1133) & 1) == 0)
        {
          *(v2 + 1133) = 1;
          v17 = NSSearchPathForDirectoriesInDomains(NSLibraryDirectory, 1uLL, 1);
          v18 = [NSString alloc];
          v19 = [v17 objectAtIndexedSubscript:0];
          v20 = [v18 initWithFormat:@"%@/Logs/Bluetooth", v19];

          v21 = [NSString stringWithFormat:@"Overwait_A2DP_%s.tailspin", v37];
          v22 = [v20 stringByAppendingPathComponent:v21];
          v23 = [v22 copy];

          v24 = v23;
          v25 = [v23 cStringUsingEncoding:4];
          if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_ERROR))
          {
            sub_100854550();
          }

          if (v25)
          {
            v26 = open(v25, 1537, 434);
            if ((v26 & 0x80000000) != 0)
            {
              v28 = qword_100BCE8D0;
              if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_ERROR))
              {
                v29 = [NSNumber numberWithInt:v26];
                sub_1008545C4(v29, buf, v28);
              }
            }

            else
            {
              v27 = *(v2 + 256);
              v30[0] = _NSConcreteStackBlock;
              v30[1] = 3221225472;
              v30[2] = sub_10062DB04;
              v30[3] = &unk_100B02E70;
              v32 = v2;
              v31 = v20;
              v33 = v26;
              sub_10062D954(v26, v27, v30);
            }
          }

          else
          {
            if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_ERROR))
            {
              sub_10085461C();
            }
          }
        }
      }
    }
  }
}

uint64_t sub_10062D8E8(uint64_t a1, int a2)
{
  v2 = *(a1 + 192);
  v3 = (a1 + 200);
  if (v2 == (a1 + 200))
  {
    return 0;
  }

  result = 0;
  do
  {
    v5 = *(v2[5] + 92);
    v6 = v5 != a2 || v5 == 0;
    if (!v6)
    {
      result = v2[4];
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

  while (v8 != v3);
  return result;
}

void sub_10062D954(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v6 = off_100B6F7A8;
  v13 = off_100B6F7A8;
  if (!off_100B6F7A8)
  {
    v7 = sub_10063D1E8();
    v11[3] = dlsym(v7, "tailspin_dump_output_with_options");
    off_100B6F7A8 = v11[3];
    v6 = v11[3];
  }

  _Block_object_dispose(&v10, 8);
  if (v6)
  {
    v6(a1, &off_100B343D8, a2, v5);
  }

  else
  {
    v8 = +[NSAssertionHandler currentHandler];
    v9 = [NSString stringWithUTF8String:"int BT::soft_tailspin_dump_output_with_options(int, NSDictionary * _Nullable __strong, dispatch_queue_t _Nullable, void (^ _Nullable __strong)(BOOL))"];
    [v8 handleFailureInFunction:v9 file:@"AudioLinkManager.mm" lineNumber:133 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_10062DAC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);

  _Unwind_Resume(a1);
}

uint64_t sub_10062DB04(uint64_t a1, int a2)
{
  v4 = *(a1 + 40);
  v5 = qword_100BCE8D0;
  if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
  {
    if (a2)
    {
      v6 = "successfully";
    }

    else
    {
      v6 = "not successfully";
    }

    v7 = [*(a1 + 32) UTF8String];
    v9 = 136315394;
    v10 = v6;
    v11 = 2080;
    v12 = v7;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Captured tailspin %s at %s", &v9, 0x16u);
  }

  *(v4 + 1133) = 0;
  return close(*(a1 + 48));
}

void sub_10062DBF4(uint64_t a1, __int16 a2, uint64_t a3)
{
  v3 = *(a1 + 232);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10062D43C;
  block[3] = &unk_100AE0EF8;
  block[4] = a1 - 24;
  block[5] = a3;
  v5 = a2;
  dispatch_async(v3, block);
}

void sub_10062DC70(uint64_t a1, uint64_t a2, int a3, int a4, int a5)
{
  v5 = *(a1 + 256);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10062DCEC;
  v6[3] = &unk_100AF6B90;
  v7 = a4;
  v8 = a3;
  v6[4] = a1;
  v6[5] = a2;
  v9 = a5;
  dispatch_async(v5, v6);
}

uint64_t sub_10062DCEC(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  v3 = *(result + 48);
  if (v3 <= 100)
  {
    if (v3 != 11)
    {
      if (v3 == 12)
      {
        v4 = *(result + 52);
        if (v4 == 1)
        {
          goto LABEL_10;
        }

        if (v4 == 16 && *(*(result + 40) + 1016) == 1)
        {
          v5 = qword_100BCE8D0;
          if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
          {
            *v24 = 0;
            _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Wireless Splitter guest device disconnected setting fGuestConnectedToken to disabled", v24, 2u);
          }

          std::string::assign((v2 + 1320), "WS_ERROR_DISCONNECTION_GUEST_DISCONNECTED");
          sub_10062CB34(v2);
          notify_set_state(*(v2 + 1316), 0);
          notify_post("com.apple.bluetooth.GuestConnected");
          if (*(v1 + 52) == 1)
          {
LABEL_10:
            v6 = *(v2 + 1184);
            if (v6 == -1)
            {
              v7 = (v2 + 1184);
              notify_register_check("com.apple.bluetooth.SmartRoutingDisconnectReason", v7);
              v6 = *v7;
            }

            v8 = *(v1 + 40);
            notify_set_state(v6, (v8[128] << 40) | (v8[129] << 32) | (v8[130] << 24) | (v8[131] << 16) | (v8[132] << 8) | v8[133] | (*(v1 + 56) << 48));
            notify_post("com.apple.bluetooth.SmartRoutingDisconnectReason");
          }
        }

        result = *(v1 + 40);
        if (*(result + 1435) != 1)
        {
          return sub_10054F9BC(result, 1);
        }
      }

      return result;
    }

    v9 = *(result + 52);
    if (v9 == 1)
    {
      if (*(v2 + 1256) < 2uLL || (v10 = *(v2 + 1240), v10 == (v2 + 1248)))
      {
        v9 = 1;
LABEL_52:
        v18 = *(v1 + 40);
        v19 = v9 != 1 || v18 == 0;
        if (!v19)
        {
          v20 = (v18[128] << 40) | (v18[129] << 32) | (v18[130] << 24) | (v18[131] << 16) | (v18[132] << 8);
          v21 = v18[133];
          v22 = *(v2 + 1184);
          if (v22 == -1)
          {
            v23 = (v2 + 1184);
            notify_register_check("com.apple.bluetooth.SmartRoutingDisconnectReason", v23);
            v22 = *v23;
          }

          notify_set_state(v22, v20 | v21);

          return notify_post("com.apple.bluetooth.SmartRoutingDisconnectReason");
        }

        return result;
      }

      do
      {
        v11 = *(v1 + 40);
        if (v11)
        {
          v12 = v10[5];
          if (*(v12 + 1) == v11 + 128)
          {
            v13 = *v12;
            if (v12[20] != v13)
            {
              result = sub_10062C940(result, v11, v13);
              v12[20] = *v12;
            }
          }
        }

        v14 = v10[1];
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
            v15 = v10[2];
            v19 = *v15 == v10;
            v10 = v15;
          }

          while (!v19);
        }

        v10 = v15;
      }

      while (v15 != (v2 + 1248));
      v9 = *(v1 + 52);
    }

    if (v9 == 16)
    {
      if (*(*(v1 + 40) + 1016) == 1 && *(v2 + 1256) != 2)
      {
        v16 = qword_100BCE8D0;
        if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Wireless Splitter connected guest device setting fGuestConnectedToken to enabled", buf, 2u);
        }

        notify_set_state(*(v2 + 1316), 1uLL);
        return notify_post("com.apple.bluetooth.GuestConnected");
      }

      return result;
    }

    goto LABEL_52;
  }

  if (v3 == 101)
  {
    if (*(v2 + 1256) >= 2uLL && *(v2 + 1264))
    {
      if (qword_100B50AD0 != -1)
      {
        sub_100853CDC();
      }

      result = sub_1005D09A8(off_100B50AC8, *(v1 + 40));
      if (result)
      {
        result = sub_100320F94(result + 400);
        v17 = *(v2 + 1264);
        if (result)
        {
          ++*(v17 + 40);
        }

        else
        {
          ++*(v17 + 44);
        }
      }
    }
  }

  else if (v3 == 103 && *(v2 + 1256) >= 2uLL && *(v2 + 1264))
  {
    if (qword_100B50AD0 != -1)
    {
      sub_100853CDC();
    }

    result = sub_1005D09A8(off_100B50AC8, *(v1 + 40));
    if (result)
    {
      result = sub_100320E3C(result + 400);
      if (result)
      {
        ++*(*(v2 + 1264) + 36);
      }
    }
  }

  return result;
}

void sub_10062E10C(uint64_t a1, uint64_t a2, int a3, int a4, int a5)
{
  v5 = *(a1 + 216);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10062DCEC;
  v6[3] = &unk_100AF6B90;
  v7 = a4;
  v8 = a3;
  v6[4] = a1 - 40;
  v6[5] = a2;
  v9 = a5;
  dispatch_async(v5, v6);
}

void sub_10062E18C(uint64_t a1)
{
  v1 = *(a1 + 256);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10062E200;
  block[3] = &unk_100ADF8F8;
  block[4] = a1;
  dispatch_async(v1, block);
}

void sub_10062E200(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = v1[51].__r_.__value_.__r.__words[2];
  v3 = &v1[52];
  if (v2 != &v1[52])
  {
    do
    {
      if (qword_100B508F0 != -1)
      {
        sub_100853FB4();
      }

      v4 = *(*(v2 + 5) + 8);
      v5 = *(v4 + 4);
      *buf = *v4;
      *&buf[4] = v5;
      v6 = sub_1000E6554(off_100B508E8, buf, 1);
      if (v6)
      {
        v7 = v6;
        sub_10062C940(v6, v6, 0);
        v8 = v1[52].__r_.__value_.__r.__words[2];
        if (v8 && *(v7 + 1016) == 1)
        {
          *(v8 + 72) = *(v7 + 1036);
        }

        sub_10053815C(v7, 0);
      }

      sub_10062CB34(v1);
      *buf = v2 + 16;
      if (sub_1003750BC(&v1[51].__r_.__value_.__r.__words[2], v2 + 16)[5])
      {
        operator delete();
      }

      v9 = qword_100BCE8D0;
      if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
      {
        v10 = v2[16];
        *buf = 67109120;
        *&buf[4] = v10;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Wireless Splitter destroying aggregate device with handle %hu", buf, 8u);
      }

      v11 = *(v2 + 1);
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
          v12 = *(v2 + 2);
          v13 = *v12 == v2;
          v2 = v12;
        }

        while (!v13);
      }

      v2 = v12;
    }

    while (v12 != v3);
  }

  v1[54].__r_.__value_.__s.__data_[0] = 0;
  sub_10000CEDC(&v1[51].__r_.__value_.__r.__words[2], v1[52].__r_.__value_.__l.__data_);
  v1[51].__r_.__value_.__r.__words[2] = v3;
  *&v1[52].__r_.__value_.__l.__data_ = 0u;
  v14 = qword_100BCE8D0;
  if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    *&buf[4] = 0;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Wireless Splitter size of fWirelessSplitterA2dpDevices %lu ", buf, 0xCu);
  }
}

void sub_10062E458(uint64_t a1)
{
  v1 = a1 - 24;
  v2 = *(a1 + 232);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10062E200;
  block[3] = &unk_100ADF8F8;
  block[4] = v1;
  dispatch_async(v2, block);
}

void sub_10062E4CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 256);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10062E544;
  block[3] = &unk_100AEC130;
  block[4] = a1;
  block[5] = a2;
  block[6] = a3;
  dispatch_async(v3, block);
}

void *sub_10062E544(void *result)
{
  v2 = result + 5;
  v1 = result[5];
  if (v1)
  {
    v3 = result[4];
    v6 = *(v3 + 200);
    v4 = v3 + 200;
    v5 = v6;
    if (v6)
    {
      v7 = result;
      v8 = v4 - 8;
      v9 = v4;
      do
      {
        v10 = *(v5 + 32);
        v11 = v10 >= v1;
        v12 = v10 < v1;
        if (v11)
        {
          v9 = v5;
        }

        v5 = *(v5 + 8 * v12);
      }

      while (v5);
      if (v9 != v4 && v1 >= *(v9 + 32))
      {
        *buf = result + 5;
        if ((*(sub_10005E16C(v8, v2)[5] + 64) & 1) != 0 || (*buf = v2, *(sub_10005E16C(v8, v2)[5] + 72) == 1))
        {
          *buf = v2;
          *(sub_10005E16C(v8, v2)[5] + 78) = 1;
        }

        *buf = v2;
        result = sub_10005E16C(v8, v2);
        if (*result[5])
        {
          *buf = v2;
          v13 = sub_10005E16C(v8, v2);
          ++*(*v13[5] + 316);
          *buf = v2;
          result = sub_10005E16C(v8, v2);
          if (*(*result[5] + 80) <= v7[6])
          {
            *buf = v2;
            *(*sub_10005E16C(v8, v2)[5] + 80) = v7[6] + 60000000;
            v15 = 0;
            sub_10000C7D0();
            if (sub_10041074C())
            {
              *buf = v2;
              v15 = *(*sub_10005E16C(v8, v2)[5] + 388);
            }

            else
            {
              v14 = sub_10000C7D0();
              (*(*v14 + 304))(v14, *v2 + 128, &v15);
            }

            *buf = v2;
            sub_10005E16C(v8, v2);
            sub_10062EA28();
          }
        }
      }
    }
  }

  return result;
}

float sub_10062EB2C(uint64_t a1, uint64_t a2, int a3)
{
  v3 = *(a1 + 272) * a2 / *(a1 + 276) / 0x3E8;
  if (!a3)
  {
    v5 = v3;
    v6 = 1000000.0;
    return v5 / v6;
  }

  if (a3 == 1)
  {
    v5 = v3;
    v6 = 1000.0;
    return v5 / v6;
  }

  result = 0.0;
  if (a3 == 2)
  {
    return v3;
  }

  return result;
}

void sub_10062EB9C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 256);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10062EC10;
  v3[3] = &unk_100AE0860;
  v3[4] = a1;
  v3[5] = a2;
  dispatch_async(v2, v3);
}

void sub_10062EC10(uint64_t a1)
{
  v2 = (a1 + 40);
  v1 = *(a1 + 40);
  if (v1)
  {
    v3 = *(a1 + 32);
    v6 = *(v3 + 200);
    v4 = v3 + 200;
    v5 = v6;
    if (v6)
    {
      v7 = v4 - 8;
      v8 = v4;
      do
      {
        v9 = *(v5 + 32);
        v10 = v9 >= v1;
        v11 = v9 < v1;
        if (v10)
        {
          v8 = v5;
        }

        v5 = *(v5 + 8 * v11);
      }

      while (v5);
      if (v8 != v4 && v1 >= *(v8 + 32))
      {
        *buf = a1 + 40;
        if (*(sub_10005E16C(v7, v2)[5] + 16))
        {
          *buf = v2;
          v12 = sub_10005E16C(v7, v2);
          ++*(*(v12[5] + 16) + 60);
          v13 = qword_100BCE8D0;
          if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
          {
            *buf = v2;
            v14 = *(*(sub_10005E16C(v7, v2)[5] + 16) + 60);
            *buf = 67109120;
            *&buf[4] = v14;
            _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "AMP Metric fTotalErrorTonePerSession is %d", buf, 8u);
          }
        }
      }
    }
  }
}

void sub_10062ED90(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 256);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10062EE04;
  v3[3] = &unk_100AE0860;
  v3[4] = a1;
  v3[5] = a2;
  dispatch_async(v2, v3);
}

void sub_10062EE04(uint64_t a1)
{
  v2 = (a1 + 40);
  v1 = *(a1 + 40);
  if (v1)
  {
    v3 = *(a1 + 32);
    v6 = *(v3 + 200);
    v4 = v3 + 200;
    v5 = v6;
    if (v6)
    {
      v7 = v4 - 8;
      v8 = v4;
      do
      {
        v9 = *(v5 + 32);
        v10 = v9 >= v1;
        v11 = v9 < v1;
        if (v10)
        {
          v8 = v5;
        }

        v5 = *(v5 + 8 * v11);
      }

      while (v5);
      if (v8 != v4 && v1 >= *(v8 + 32))
      {
        *buf = a1 + 40;
        if (*(sub_10005E16C(v7, v2)[5] + 16))
        {
          *buf = v2;
          v12 = sub_10005E16C(v7, v2);
          ++*(*(v12[5] + 16) + 56);
          v13 = qword_100BCE8D0;
          if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
          {
            *buf = v2;
            v14 = *(*(sub_10005E16C(v7, v2)[5] + 16) + 56);
            *buf = 67109120;
            *&buf[4] = v14;
            _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "AMP Metric fBudSwapCount is %d", buf, 8u);
          }
        }
      }
    }
  }
}

void sub_10062EF84(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 256);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10062EFF8;
  v3[3] = &unk_100AE0860;
  v3[4] = a1;
  v3[5] = a2;
  dispatch_async(v2, v3);
}

void *sub_10062EFF8(void *result)
{
  v2 = result + 5;
  v1 = result[5];
  if (v1)
  {
    v3 = result[4];
    v6 = *(v3 + 200);
    v4 = v3 + 200;
    v5 = v6;
    if (v6)
    {
      v7 = v4 - 8;
      v8 = v4;
      do
      {
        v9 = *(v5 + 32);
        v10 = v9 >= v1;
        v11 = v9 < v1;
        if (v10)
        {
          v8 = v5;
        }

        v5 = *(v5 + 8 * v11);
      }

      while (v5);
      if (v8 != v4 && v1 >= *(v8 + 32))
      {
        if (!*(sub_10005E16C(v7, v2)[5] + 16))
        {
          operator new();
        }

        if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_ERROR))
        {
          sub_100854690();
        }

        if (*(sub_10005E16C(v7, v2)[5] + 16))
        {
          operator delete();
        }

        result = sub_10005E16C(v7, v2);
        *(result[5] + 16) = 0;
      }
    }
  }

  return result;
}

void sub_10062F210(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v4 = *(a1 + 256);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10062F288;
  block[3] = &unk_100AEC130;
  block[4] = a1;
  block[5] = a2;
  v6 = a4;
  v7 = a3;
  dispatch_async(v4, block);
}

void sub_10062F288(uint64_t a1)
{
  v2 = (a1 + 40);
  v1 = *(a1 + 40);
  if (v1)
  {
    v3 = *(a1 + 32);
    v4 = *(v3 + 200);
    if (v4)
    {
      v6 = v3 + 192;
      v7 = v3 + 200;
      do
      {
        v8 = *(v4 + 32);
        v9 = v8 >= v1;
        v10 = v8 < v1;
        if (v9)
        {
          v7 = v4;
        }

        v4 = *(v4 + 8 * v10);
      }

      while (v4);
      if (v7 != v3 + 200 && v1 >= *(v7 + 32))
      {
        *buf = a1 + 40;
        if (*(sub_10005E16C(v6, v2)[5] + 16))
        {
          v11 = *(a1 + 48);
          *buf = v2;
          *(*(sub_10005E16C(v6, v2)[5] + 16) + 64) = v11;
          v12 = *(a1 + 52);
          *buf = v2;
          *(*(sub_10005E16C(v6, v2)[5] + 16) + 68) = v12;
          v13 = *(v3 + 400);
          *buf = v2;
          v14 = sub_10005E16C(v6, v2);
          *(*(v14[5] + 16) + 72) += v13;
          *buf = v2;
          v15 = sub_10005E16C(v6, v2);
          ++*(*(v15[5] + 16) + 80);
          v16 = qword_100BCE8D0;
          if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
          {
            v17 = *(v3 + 400);
            *buf = v2;
            v18 = *(*(sub_10005E16C(v6, v2)[5] + 16) + 72);
            *buf = v2;
            v19 = *(*(sub_10005E16C(v6, v2)[5] + 16) + 80);
            *buf = 67109632;
            *&buf[4] = v17;
            v21 = 2048;
            v22 = v18;
            v23 = 1024;
            v24 = v19;
            _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "AMP Link UpdateAudioSkipDuration rssi %d, total rssi %lld, skip %u", buf, 0x18u);
          }
        }
      }
    }
  }
}

void sub_10062F4E8(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  sub_100007E30(a2, "Audio");
  v4 = *(a1 + 216);
  if (v4[8] == 1)
  {
    std::string::assign(a2, "Video");
    v4 = *(a1 + 216);
  }

  if (v4[7] == 1)
  {
    std::string::assign(a2, "Audio");
    v4 = *(a1 + 216);
  }

  if (v4[5] == 1)
  {
    std::string::assign(a2, "Game");
    v4 = *(a1 + 216);
  }

  if (v4[3] == 1)
  {
    std::string::assign(a2, "VoiceOver");
    v4 = *(a1 + 216);
  }

  if (v4[2] == 1)
  {
    std::string::assign(a2, "GarageBand");
  }

  v5 = (a1 + 1216);
  v6 = *(a1 + 1239);
  if (v6 < 0)
  {
    if (*(a1 + 1224) == 3 && **v5 == 26191 && *(*v5 + 2) == 102)
    {
      goto LABEL_54;
    }

    if (*(a1 + 1224) != 13)
    {
      goto LABEL_32;
    }

    v7 = *v5;
LABEL_22:
    v9 = *v7;
    v10 = *(v7 + 5);
    if (v9 == 0x7053206465786946 && v10 == 0x6C61697461705320)
    {
      goto LABEL_54;
    }

    goto LABEL_32;
  }

  if (v6 == 3)
  {
    if (*v5 == 26191 && *(a1 + 1218) == 102)
    {
      goto LABEL_54;
    }

    goto LABEL_32;
  }

  v7 = (a1 + 1216);
  if (*(a1 + 1239) == 13)
  {
    goto LABEL_22;
  }

LABEL_32:
  v13 = *(a1 + 216);
  if ((*(v13 + 7) & 1) != 0 || *(v13 + 8) == 1)
  {
    if (v6 >= 0)
    {
      v14 = *(a1 + 1239);
    }

    else
    {
      v14 = *(a1 + 1224);
    }

    memset(&__p, 0, sizeof(__p));
    p_p = &__p;
    sub_1003A5170(&__p, v14 + 1);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    if (v14)
    {
      if (*(a1 + 1239) >= 0)
      {
        v16 = (a1 + 1216);
      }

      else
      {
        v16 = *(a1 + 1216);
      }

      memmove(p_p, v16, v14);
    }

    *(&p_p->__r_.__value_.__l.__data_ + v14) = 32;
    v17 = *(a2 + 23);
    if (v17 >= 0)
    {
      v18 = a2;
    }

    else
    {
      v18 = *a2;
    }

    if (v17 >= 0)
    {
      v19 = *(a2 + 23);
    }

    else
    {
      v19 = *(a2 + 8);
    }

    v20 = std::string::append(&__p, v18, v19);
    v21 = v20->__r_.__value_.__r.__words[0];
    *&v34 = v20->__r_.__value_.__l.__size_;
    *(&v34 + 7) = *(&v20->__r_.__value_.__r.__words[1] + 7);
    v22 = HIBYTE(v20->__r_.__value_.__r.__words[2]);
    v20->__r_.__value_.__l.__size_ = 0;
    v20->__r_.__value_.__r.__words[2] = 0;
    v20->__r_.__value_.__r.__words[0] = 0;
    if (*(a2 + 23) < 0)
    {
      operator delete(*a2);
    }

    *a2 = v21;
    *(a2 + 8) = v34;
    *(a2 + 15) = *(&v34 + 7);
    *(a2 + 23) = v22;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

LABEL_54:
  if (*(*(a1 + 216) + 5) != 1)
  {
    return;
  }

  memset(&__p, 0, sizeof(__p));
  sub_100007E30(&__p, "Game");
  if (*(a1 + 1239) < 0)
  {
    if (*(a1 + 1224) == 3 && **v5 == 26191 && *(*v5 + 2) == 102)
    {
      goto LABEL_86;
    }

    if (*(a1 + 1224) != 13)
    {
      goto LABEL_76;
    }

    v23 = *v5;
    goto LABEL_66;
  }

  if (*(a1 + 1239) != 3)
  {
    v23 = (a1 + 1216);
    if (*(a1 + 1239) != 13)
    {
      goto LABEL_76;
    }

LABEL_66:
    v25 = *v23;
    v26 = *(v23 + 5);
    if (v25 != 0x7053206465786946 || v26 != 0x6C61697461705320)
    {
      goto LABEL_76;
    }

    goto LABEL_86;
  }

  if (*v5 != 26191 || *(a1 + 1218) != 102)
  {
LABEL_76:
    v29 = *(a1 + 216);
    if ((*(v29 + 7) & 1) != 0 || *(v29 + 8) == 1)
    {
      std::operator+<char>();
      v30 = (v35 & 0x80u) == 0 ? &v34 : v34;
      v31 = (v35 & 0x80u) == 0 ? v35 : *(&v34 + 1);
      std::string::append(&__p, v30, v31);
      if (v35 < 0)
      {
        operator delete(v34);
      }
    }
  }

LABEL_86:
  v32 = *(a1 + 216);
  if (v32[7] == 1)
  {
    std::string::append(&__p, " + Audio");
    v32 = *(a1 + 216);
  }

  if (v32[8] == 1)
  {
    std::string::append(&__p, " + Video");
    v32 = *(a1 + 216);
  }

  if (v32[2] == 1)
  {
    std::string::append(&__p, " + GarageBand");
    v32 = *(a1 + 216);
  }

  if (v32[3] == 1)
  {
    std::string::append(&__p, " + VoiceOver");
  }

  std::string::operator=(a2, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_10062F98C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (*(v21 + 23) < 0)
  {
    operator delete(*v21);
  }

  _Unwind_Resume(exception_object);
}

void sub_10062F9E8(uint64_t a1, uint64_t a2, int a3)
{
  v3 = *(a1 + 256);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10062FA60;
  block[3] = &unk_100AE0880;
  v5 = a3;
  block[4] = a1;
  block[5] = a2;
  dispatch_async(v3, block);
}

void *sub_10062FA60(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 32);
  if (qword_100B50940 != -1)
  {
    sub_100853F30();
  }

  *(off_100B50938 + 58) = v2;
  *(off_100B50938 + 23) = 0;
  if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_ERROR))
  {
    sub_1008546CC();
  }

  sub_100627064(v3, *(a1 + 40), 0);
  return sub_10061D9F4(v3, *(a1 + 40));
}

uint64_t sub_10062FB08(uint64_t a1, uint64_t a2)
{
  result = _os_feature_enabled_impl();
  if (result)
  {
    v4 = sub_1000E2140(a2, 12);
    if (v4 || (result = sub_100627568(v4, a2), result))
    {

      return notify_post("com.apple.bluetooth.audioQuality");
    }
  }

  return result;
}

uint64_t sub_10062FB80(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, int a6)
{
  v6 = *(a1 + 256);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10062FC04;
  block[3] = &unk_100B02E90;
  block[4] = a1;
  block[5] = a2;
  v9 = a6;
  v10 = a4;
  block[6] = a3;
  block[7] = a5;
  dispatch_async(v6, block);
  return 0;
}

void sub_10062FC04(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (qword_100B508F0 != -1)
  {
    sub_1008540D4();
  }

  v3 = sub_1000504C8(off_100B508E8, *(a1 + 40), 0);
  if (qword_100B50910 != -1)
  {
    sub_100854250();
  }

  v4 = *(off_100B50908 + 205);
  v5 = *(a1 + 64);
  if (_os_feature_enabled_impl())
  {
    if (qword_100B50930 != -1)
    {
      sub_100854110();
    }

    sub_1000F2B48(off_100B50928, *(a1 + 68));
  }

  if (*(a1 + 68) == 1)
  {
    if (!sub_10062FF34(v2, *(a1 + 40), *(a1 + 48)))
    {
      v12 = 0;
      goto LABEL_37;
    }

    v6 = *(v2 + 904);
    v7 = *(v2 + 912);
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (v6)
    {
      sub_1003A898C(v6, *(a1 + 56));
      v8 = qword_100BCE8D0;
      if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
      {
        v9 = "No";
        v10 = *(v6 + 77);
        if (v4)
        {
          v9 = "Yes";
        }

        v16 = 136315394;
        v17 = v9;
        v18 = 1024;
        v19 = v10;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Audio Timesync: Stream Status %s  Already Running %d ", &v16, 0x12u);
      }

      if (*(v6 + 77) == 1 && (v5 - 3) < 0xFFFFFFFE)
      {
        v12 = 1;
        if (!v7)
        {
          goto LABEL_37;
        }

LABEL_35:
        sub_100117644(v7);
        goto LABEL_37;
      }

      v12 = 1;
      sub_1003A77B8(v6, v3, 1, *(a1 + 64));
LABEL_34:
      if (!v7)
      {
        goto LABEL_37;
      }

      goto LABEL_35;
    }

LABEL_33:
    v12 = 0;
    goto LABEL_34;
  }

  v13 = *(v2 + 904);
  v7 = *(v2 + 912);
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (!v13)
  {
    goto LABEL_33;
  }

  if ((v5 - 1) <= 1)
  {
    sub_1003A77B8(v13, v3, 0, *(a1 + 64));
  }

  sub_10007A3F0(v13 + 128, *(a1 + 56));
  if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEBUG))
  {
    sub_100854740();
  }

  v12 = sub_10063007C(v2, *(a1 + 40), *(a1 + 48));
  if (v7)
  {
    goto LABEL_35;
  }

LABEL_37:
  v14 = qword_100BCE8D0;
  if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
  {
    v15 = "Disable";
    if (*(a1 + 68))
    {
      v15 = "Enable";
    }

    v16 = 136315394;
    v17 = v15;
    v18 = 1024;
    v19 = v12;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Audio Timesync: Enable/Disable Remote Timesync operation %s: Status %x ", &v16, 0x12u);
  }
}