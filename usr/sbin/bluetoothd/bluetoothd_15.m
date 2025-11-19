uint64_t sub_10011D5D4(uint64_t a1, unint64_t a2)
{
  v9 = a2;
  if (!a2)
  {
    return 0;
  }

  if (qword_100B50940 != -1)
  {
    sub_10080707C();
  }

  v3 = *(off_100B50938 + 25);
  if (!v3)
  {
    goto LABEL_12;
  }

  v4 = off_100B50938 + 200;
  do
  {
    v5 = *(v3 + 4);
    v6 = v5 >= a2;
    v7 = v5 < a2;
    if (v6)
    {
      v4 = v3;
    }

    v3 = *&v3[8 * v7];
  }

  while (v3);
  if (v4 == off_100B50938 + 200 || *(v4 + 4) > a2)
  {
LABEL_12:
    v4 = off_100B50938 + 200;
  }

  if (v4 == off_100B50938 + 200)
  {
    return 0;
  }

  v10 = &v9;
  if (!*(sub_10005E16C(off_100B50938 + 192, &v9)[5] + 92))
  {
    return 0;
  }

  if (qword_100B50940 != -1)
  {
    sub_100807090();
  }

  v10 = &v9;
  return *(sub_10005E16C(off_100B50938 + 192, &v9)[5] + 92);
}

uint64_t sub_10011D6F8(uint64_t a1, int a2, _DWORD *a3, int a4)
{
  if (qword_100B50940 != -1)
  {
    sub_10080707C();
  }

  if (!*(off_100B50938 + 26))
  {
    return 0;
  }

  v7 = *(off_100B50938 + 24);
  if (v7 == (off_100B50938 + 200))
  {
    return 0;
  }

  while (1)
  {
    v8 = v7[5];
    if (*(v8 + 92) == a2)
    {
      break;
    }

    v9 = v7[1];
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
        v10 = v7[2];
        v11 = *v10 == v7;
        v7 = v10;
      }

      while (!v11);
    }

    v7 = v10;
    if (v10 == (off_100B50938 + 200))
    {
      return 0;
    }
  }

  v12 = v7[4];
  if (v12)
  {
    if (sub_10011EF44(a1, v12))
    {
      return 0;
    }
  }

  v13 = qword_100BCE8D0;
  if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
  {
    v14 = *(v8 + 48);
    v15 = *(v14 + 20);
    LODWORD(v14) = *(v14 + 1);
    v17[0] = 67109376;
    v17[1] = v15;
    v18 = 1024;
    v19 = v14;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Adaptive Latency mode:%d, inTransition:%d", v17, 0xEu);
  }

  if (a4 && (*(*(v8 + 48) + 1) & 1) != 0)
  {
    return 0;
  }

  if (a3)
  {
    *a3 = *(*(v8 + 48) + 20);
  }

  return 1;
}

uint64_t sub_10011D888(uint64_t a1, unint64_t a2)
{
  v4 = sub_10011C518(a1, a2);
  *(v4 + 44) = 0;
  result = sub_10011C518(v4, a2);
  *(result + 46) = 0;
  *(a1 + 20) = 0;
  *(a1 + 24) = -25444;
  *(a1 + 30) = -25444;
  *(a1 + 36) = -25444;
  return result;
}

uint64_t sub_10011D8D4(uint64_t a1, int a2, uint64_t a3)
{
  v5 = 0;
  v6 = 0;
  sub_1000C2364(a3, &v6 + 1, &v6, &v5 + 1, &v5);
  if ((a2 - 1) > 9)
  {
    return 150;
  }

  else
  {
    return dword_1008A27DC[a2 - 1];
  }
}

void sub_10011D938(uint64_t a1, int a2, int a3)
{
  v6 = sub_10011ACAC(a1, a2);
  v27 = v6;
  if (v6)
  {
    v7 = v6;
    if (qword_100B50940 != -1)
    {
      sub_10080707C();
    }

    v8 = *(off_100B50938 + 25);
    if (!v8)
    {
      goto LABEL_12;
    }

    v9 = off_100B50938 + 200;
    do
    {
      v10 = *(v8 + 4);
      v11 = v10 >= v7;
      v12 = v10 < v7;
      if (v11)
      {
        v9 = v8;
      }

      v8 = *&v8[8 * v12];
    }

    while (v8);
    if (v9 == off_100B50938 + 200 || v7 < *(v9 + 4))
    {
LABEL_12:
      v9 = off_100B50938 + 200;
    }

    if (v9 != off_100B50938 + 200)
    {
      v13 = qword_100BCE8D0;
      v14 = os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT);
      if (v14)
      {
        v15 = *(sub_10011C518(v14, v7) + 20);
        *buf = 67109632;
        *&buf[4] = v15;
        v29 = 1024;
        v30 = a3;
        v31 = 1024;
        v32 = a2;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Dynamic Latency trying to change jitter buffer from = 0x%x to = 0x%x on handle = %x", buf, 0x14u);
      }

      v16 = sub_10011C518(v14, v7);
      v18 = sub_10011C7C8(v16, v17, *(v16 + 20), a3);
      sub_10011C934(v18, v7, v18);
      *(sub_10011C518(v19, v7) + 20) = a3;
      v20 = *sub_10000C798();
      v21 = (*(v20 + 840))();
      if (v21)
      {
        v22 = sub_10011D8D4(v21, a3, v7);
        sub_10012085C(a1, v7, v22);
      }

      *(sub_10011C518(v21, v7) + 1) = 1;
      v23 = sub_1000DAB84();
      v24[0] = _NSConcreteStackBlock;
      v24[1] = 3221225472;
      v24[2] = sub_100120A60;
      v24[3] = &unk_100AE0ED8;
      v26 = a2;
      v25 = a3;
      sub_10000CA94(v23, v24);
      if (qword_100B50940 != -1)
      {
        sub_100807090();
      }

      *buf = &v27;
      if (*(sub_10005E16C(off_100B50938 + 192, &v27)[5] + 84) == 2)
      {
        if (qword_100B50940 != -1)
        {
          sub_100807090();
        }

        sub_10063247C(off_100B50938, v27);
      }
    }
  }
}

uint64_t sub_10011DBF8(uint64_t a1, int a2)
{
  if (a2 == 300)
  {
    v2 = 7;
  }

  else
  {
    v2 = 6;
  }

  if (a2 == 100)
  {
    v3 = 3;
  }

  else
  {
    v3 = v2;
  }

  if (a2 == 80)
  {
    v4 = 2;
  }

  else
  {
    v4 = 6;
  }

  if (a2 == 60)
  {
    v5 = 1;
  }

  else
  {
    v5 = v4;
  }

  if (a2 <= 99)
  {
    v3 = v5;
  }

  if (a2 == 30)
  {
    v6 = 10;
  }

  else
  {
    v6 = 6;
  }

  if (a2 == 5)
  {
    v6 = 5;
  }

  if (a2 == 4)
  {
    v6 = 4;
  }

  if (a2 <= 59)
  {
    return v6;
  }

  else
  {
    return v3;
  }
}

void sub_10011DC64(uint64_t a1, int a2, __int16 a3)
{
  v6 = qword_100BCE8D0;
  if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v13 = a2;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Dynamic Latency: Delay Latency State Decision by %d ", buf, 8u);
  }

  v7 = dispatch_time(0, 1000000 * a2);
  if (qword_100B50940 != -1)
  {
    sub_100807090();
  }

  v8 = *(off_100B50938 + 32);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100120964;
  v9[3] = &unk_100ADF940;
  v9[4] = a1;
  v10 = a3;
  v11 = a3;
  dispatch_after(v7, v8, v9);
}

uint64_t sub_10011DDB0(uint64_t a1, int a2)
{
  if (qword_100B50940 != -1)
  {
    sub_10080707C();
  }

  v3 = *(off_100B50938 + 24);
  if (v3 == (off_100B50938 + 200))
  {
    return 0;
  }

  while (1)
  {
    v4 = v3[5];
    if (*(v4 + 92) == a2)
    {
      break;
    }

    v5 = v3[1];
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
        v6 = v3[2];
        v7 = *v6 == v3;
        v3 = v6;
      }

      while (!v7);
    }

    v3 = v6;
    if (v6 == (off_100B50938 + 200))
    {
      return 0;
    }
  }

  if (!*(*(v4 + 48) + 8))
  {
    return 0;
  }

  v8 = off_100B50938;
  v9 = mach_absolute_time();
  v10 = sub_10062EB2C(v8, v9 - *(*(v4 + 48) + 8), 1);
  v11 = (1000.0 - v10);
  if (v11 <= 0xA)
  {
    v11 = 10;
  }

  if (v10 >= 1000.0)
  {
    return 0;
  }

  else
  {
    return v11;
  }
}

void sub_10011DEA4(uint64_t a1, unint64_t a2, unsigned int a3)
{
  v6 = _os_feature_enabled_impl();
  if (!a2 || !v6)
  {
    goto LABEL_13;
  }

  if (qword_100B50940 != -1)
  {
    sub_10080707C();
  }

  if (sub_10010C5DC(*(off_100B50938 + 28), a2))
  {

    sub_10011F2DC(a1, a2, a3);
  }

  else
  {
LABEL_13:
    if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_ERROR))
    {
      sub_100807120();
    }
  }
}

BOOL sub_10011DF74(uint64_t a1, unint64_t a2)
{
  v3 = sub_10000C798();
  v4 = (*(*v3 + 840))(v3, 2);
  v5 = v4;
  v6 = *(sub_10011C518(v4, a2) + 20);
  result = v6 == 1;
  if (v5)
  {
    result = v6 == 1 || (v8 = sub_10011C518(result, a2), *(v8 + 20) == 2) || (v9 = sub_10011C518(v8, a2), *(v9 + 20) == 3) || (v10 = sub_10011C518(v9, a2), *(v10 + 20) == 4) || *(sub_10011C518(v10, a2) + 20) == 5;
  }

  return result;
}

void sub_10011E044(_BYTE *a1, unint64_t a2, unsigned int a3)
{
  v45 = a2;
  if (qword_100B50940 != -1)
  {
    sub_10080707C();
  }

  v6 = *(off_100B50938 + 156);
  if (!v6)
  {
    goto LABEL_11;
  }

  v7 = off_100B50938 + 1248;
  do
  {
    v8 = *(v6 + 16);
    v9 = v8 >= a3;
    v10 = v8 < a3;
    if (v9)
    {
      v7 = v6;
    }

    v6 = *&v6[8 * v10];
  }

  while (v6);
  if (v7 == off_100B50938 + 1248 || *(v7 + 16) > a3)
  {
LABEL_11:
    v7 = off_100B50938 + 1248;
  }

  v11 = off_100B50938 + 1248;
  if (v7 == off_100B50938 + 1248)
  {
    if (a1[6] & 1) != 0 || (a1[9])
    {
      v12 = 6;
    }

    else if (*a1 == 1)
    {
      if (a1[1] & 1) != 0 || (a1[3] & 1) != 0 || (a1[5] & 1) != 0 || (a1[2] & 1) != 0 || (a1[8] & 1) != 0 || (a1[7])
      {
        v12 = 1;
      }

      else if (a1[4])
      {
        v12 = 1;
      }

      else
      {
        v12 = 6;
      }
    }

    else
    {
      v12 = 7;
    }
  }

  else
  {
    v12 = 0;
  }

  v13 = sub_10011ACAC(a1, a3);
  if (v13 | a2)
  {
    if (!v13 && a2)
    {
      v14 = qword_100BCE8D0;
      if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        *&buf[4] = a3;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Dynamic Latency creating AudioLinkManager device for handle %d, ", buf, 8u);
      }

      operator new();
    }

    if (a2)
    {
      if (qword_100B50940 != -1)
      {
        sub_100807090();
      }

      v15 = *(off_100B50938 + 25);
      if (!v15)
      {
        goto LABEL_34;
      }

      v16 = off_100B50938 + 200;
      do
      {
        v17 = *(v15 + 4);
        v9 = v17 >= v45;
        v18 = v17 < v45;
        if (v9)
        {
          v16 = v15;
        }

        v15 = *&v15[8 * v18];
      }

      while (v15);
      if (v16 == off_100B50938 + 200 || v45 < *(v16 + 4))
      {
LABEL_34:
        v16 = off_100B50938 + 200;
      }

      if (v16 != off_100B50938 + 200)
      {
        v19 = sub_10011C990(a1, 0);
        if (v19)
        {
          *sub_10011C518(v19, v45) = 1;
        }

        else
        {
          v21 = sub_10000C798();
          v22 = (*(*v21 + 840))(v21, 5);
          if (v22)
          {
            *sub_10011C518(v22, v45) = 0;
            v12 = 1;
LABEL_43:
            v23 = qword_100BCE8D0;
            if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
            {
              v24 = a1[1];
              v25 = a1[3];
              v26 = a1[5];
              v27 = a1[2];
              v28 = a1[8];
              v29 = a1[7];
              v30 = a1[6];
              v31 = a1[4];
              *buf = 67111168;
              *&buf[4] = v24;
              v47 = 1024;
              v48 = v25;
              v49 = 1024;
              v50 = v26;
              v51 = 1024;
              v52 = v27;
              v53 = 1024;
              v54 = v28;
              v55 = 1024;
              v56 = v29;
              v57 = 1024;
              v58 = v30;
              v59 = 1024;
              v60 = v7 != v11;
              v61 = 1024;
              v62 = v31;
              _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Dynamic Latency Non streaming Trigger fKeyboardOn = %d, fVoiceOverOn=%d, fGameModeOn=%d, fGarageBandOn=%d, fSpatialVideoOn=%d, fSpatialMusicOn=%d, fExpanseOn =%d, aggregated=%d fConsoleGameModeOn=%d", buf, 0x38u);
              v23 = qword_100BCE8D0;
            }

            if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 67109376;
              *&buf[4] = v12;
              v47 = 1024;
              v48 = a3;
              _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Dynamic Latency trying to initialize jitter buffer to = 0x%x on handle = %x", buf, 0xEu);
            }

            v32 = sub_10000C798();
            v33 = (*(*v32 + 840))(v32, 2);
            if (v33)
            {
              v34 = v45;
              v35 = sub_10011D8D4(v33, v12, v45);
              sub_10012085C(a1, v34, v35);
            }

            if (qword_100B50940 != -1)
            {
              sub_100807090();
            }

            *buf = &v45;
            v36 = sub_10005E16C(off_100B50938 + 192, &v45);
            if (v36[5])
            {
              v37 = v45;
              v38 = sub_10011C518(v36, v45);
              v40 = sub_10011C7C8(v38, v39, *(v38 + 20), v12);
              sub_10011C934(v40, v37, v40);
            }

            v41 = sub_1000DAB84();
            v42[0] = _NSConcreteStackBlock;
            v42[1] = 3221225472;
            v42[2] = sub_10012090C;
            v42[3] = &unk_100AE0ED8;
            v44 = a3;
            v43 = v12;
            sub_10000CA94(v41, v42);
            return;
          }
        }

        if (v7 != v11)
        {
          return;
        }

        goto LABEL_43;
      }
    }
  }

  else
  {
    v20 = qword_100BCE8D0;
    if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Dynamic Latency no valid device object passed / found", buf, 2u);
    }
  }
}

void sub_10011E600(uint64_t a1, unint64_t a2)
{
  v26 = a2;
  if (qword_100B50940 != -1)
  {
    sub_10080707C();
  }

  *buf = &v26;
  v3 = sub_10005E16C(off_100B50938 + 192, &v26);
  v4 = *(v3[5] + 92);
  v5 = *(sub_10011C518(v3, v26) + 20);
  if (qword_100B50940 != -1)
  {
    sub_100807090();
  }

  *buf = &v26;
  v6 = *(sub_10005E16C(off_100B50938 + 192, &v26)[5] + 84);
  if (v6 == 2)
  {
    if (qword_100B50940 != -1)
    {
      sub_100807090();
    }

    *buf = &v26;
    if (**(sub_10005E16C(off_100B50938 + 192, &v26)[5] + 56) == 240)
    {
      goto LABEL_12;
    }

    if (qword_100B50940 != -1)
    {
      sub_100807090();
    }

    *buf = &v26;
    if (**(sub_10005E16C(off_100B50938 + 192, &v26)[5] + 56) == 241)
    {
LABEL_12:
      sub_10011DEA4(a1, v26, v4);
      return;
    }
  }

  v7 = sub_10000C798();
  v8 = (*(*v7 + 840))(v7, 5);
  if (v8)
  {
    if (v4)
    {
      *sub_10011C518(v8, v26) = 0;
      if (qword_100B50940 != -1)
      {
        sub_100807090();
      }

      *buf = &v26;
      if (*(sub_10005E16C(off_100B50938 + 192, &v26)[5] + 70) == -1 || v5 != 1)
      {
        if (v6 == 2)
        {
          if (qword_100B50AE0 != -1)
          {
            sub_1008070B8();
          }

          if (sub_1004DF814(qword_100B50AD8, v4) <= 7)
          {
            *a1 = 1;
            v10 = qword_100BCE8D0;
            if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Constant Low Latency delay latency decision", buf, 2u);
            }

LABEL_53:
            sub_10011DC64(a1, 150, v4);
            return;
          }
        }

        v22 = qword_100BCE8D0;
        if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Constant Low Latency overwrite latency with 60", buf, 2u);
        }

        goto LABEL_59;
      }
    }
  }

  else
  {
    v11 = sub_10000C798();
    v12 = (*(*v11 + 352))(v11);
    if (v12 && (v12 = sub_10011C990(a1, 0), v12))
    {
      v13 = *(a1 + 16);
      v14 = qword_100BCE8D0;
      v15 = os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT);
      if (v15)
      {
        v16 = sub_10000C798();
        v17 = (*(*v16 + 840))(v16, 5);
        *buf = 67109632;
        *&buf[4] = v13;
        v28 = 1024;
        v29 = v5;
        v30 = 1024;
        v31 = v17;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "check default latency %d, %d, %d", buf, 0x14u);
      }

      if (v4)
      {
        *sub_10011C518(v15, v26) = 1;
        if (qword_100B50940 != -1)
        {
          sub_100807090();
        }

        *buf = &v26;
        if (*(sub_10005E16C(off_100B50938 + 192, &v26)[5] + 70) == -1 || (v13 != 60 || v5 != 1) && (v13 != 80 || v5 != 2) && (v13 != 100 || v5 != 3) && (v13 != 120 || v5 != 4) && (v13 != 140 || v5 != 5) && (v13 != 150 || v5 != 6))
        {
          v18 = qword_100BCE8D0;
          v19 = os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT);
          if (v19)
          {
            v20 = *(sub_10011C518(v19, v26) + 1);
            *buf = 67109376;
            *&buf[4] = v13;
            v28 = 1024;
            v29 = v20;
            _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Adaptive Latency overwriting with LLM JBL %d, tran:%d", buf, 0xEu);
          }

          if (v6 == 2)
          {
            if (qword_100B50AE0 != -1)
            {
              sub_1008070B8();
            }

            v19 = sub_1004DF814(qword_100B50AD8, v4);
            if (v19 <= 7)
            {
              goto LABEL_53;
            }
          }

          if ((*(sub_10011C518(v19, v26) + 1) & 1) == 0)
          {
            if (v13 <= 99)
            {
              if (v13 == 60)
              {
LABEL_59:
                v23 = a1;
                v24 = v4;
                v25 = 1;
LABEL_60:
                sub_10011D938(v23, v24, v25);
                return;
              }

              if (v13 == 80)
              {
                v23 = a1;
                v24 = v4;
                v25 = 2;
                goto LABEL_60;
              }
            }

            else
            {
              switch(v13)
              {
                case 100:
                  v23 = a1;
                  v24 = v4;
                  v25 = 3;
                  goto LABEL_60;
                case 120:
                  v23 = a1;
                  v24 = v4;
                  v25 = 4;
                  goto LABEL_60;
                case 140:
                  v23 = a1;
                  v24 = v4;
                  v25 = 5;
                  goto LABEL_60;
              }
            }
          }
        }
      }
    }

    else if (v4)
    {
      v21 = sub_10011C518(v12, v26);
      if ((*v21 & 1) == 0)
      {
        *sub_10011C518(v21, v26) = 1;
        sub_100119ED8(a1, v26, v4);
      }
    }
  }
}

uint64_t sub_10011EC48(uint64_t a1, int a2)
{
  v2 = sub_10011ACAC(a1, a2);
  if (!v2)
  {
    goto LABEL_15;
  }

  v3 = v2;
  if (qword_100B50940 != -1)
  {
    sub_10080707C();
  }

  v4 = *(off_100B50938 + 25);
  if (!v4)
  {
    goto LABEL_12;
  }

  v5 = off_100B50938 + 200;
  do
  {
    v6 = *(v4 + 4);
    v7 = v6 >= v3;
    v8 = v6 < v3;
    if (v7)
    {
      v5 = v4;
    }

    v4 = *&v4[8 * v8];
  }

  while (v4);
  if (v5 == off_100B50938 + 200 || v3 < *(v5 + 4))
  {
LABEL_12:
    v5 = off_100B50938 + 200;
  }

  if (v5 == off_100B50938 + 200)
  {
LABEL_15:
    v9 = 0;
  }

  else
  {
    v9 = *(sub_10011C518(v2, v3) + 2);
  }

  return v9 & 1;
}

uint64_t sub_10011ECF4(uint64_t a1, uint64_t a2)
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  if (qword_100B50940 != -1)
  {
    sub_100807090();
  }

  v4 = *(off_100B50938 + 32);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10011EDCC;
  block[3] = &unk_100AE0EB8;
  block[5] = a1;
  block[6] = a2;
  block[4] = &v8;
  dispatch_sync(v4, block);
  v5 = v9[3];
  _Block_object_dispose(&v8, 8);
  return v5;
}

void sub_10011EDCC(uint64_t a1)
{
  if (qword_100B50940 != -1)
  {
    sub_10080707C();
  }

  v2 = *(off_100B50938 + 24);
  v3 = off_100B50938 + 200;
  if (v2 != off_100B50938 + 200)
  {
    do
    {
      v4 = *(v2 + 5);
      if (*(v4 + 84) == 2)
      {
        v5 = *(v4 + 48);
        if (*(v5 + 2) == 1)
        {
          v6 = *(v2 + 4);
          v7 = *(v5 + 16);
          **(a1 + 48) = v7;
          v8 = qword_100BCE8D0;
          if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 67109120;
            v13 = v7;
            _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Returning currentJitterBuffer %u", buf, 8u);
          }

          *(*(*(a1 + 32) + 8) + 24) = v6;
        }
      }

      v9 = *(v2 + 1);
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
          v10 = *(v2 + 2);
          v11 = *v10 == v2;
          v2 = v10;
        }

        while (!v11);
      }

      v2 = v10;
    }

    while (v10 != v3);
  }
}

BOOL sub_10011EF44(uint64_t a1, unint64_t a2)
{
  v3 = sub_10011C518(a1, a2);
  result = 0;
  if (v3)
  {
    v4 = sub_10011C518(v3, a2);
    if (*(v4 + 24) >= 4 && *(sub_10011C518(v4, a2) + 24) < 14)
    {
      return 1;
    }
  }

  return result;
}

void sub_10011EFA0(_BYTE *a1, unint64_t a2, unsigned int a3)
{
  if (!a2)
  {
    goto LABEL_25;
  }

  if (qword_100B50940 != -1)
  {
    sub_10080707C();
  }

  v6 = *(off_100B50938 + 25);
  if (!v6)
  {
    goto LABEL_12;
  }

  v7 = off_100B50938 + 200;
  do
  {
    v8 = *(v6 + 4);
    v9 = v8 >= a2;
    v10 = v8 < a2;
    if (v9)
    {
      v7 = v6;
    }

    v6 = *&v6[8 * v10];
  }

  while (v6);
  if (v7 == off_100B50938 + 200 || *(v7 + 4) > a2)
  {
LABEL_12:
    v7 = off_100B50938 + 200;
  }

  if (v7 == off_100B50938 + 200)
  {
LABEL_25:
    if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_ERROR))
    {
      sub_100807160();
    }
  }

  else if ((a1[4] & 1) == 0 && (a1[5] & 1) == 0 && !sub_10011EF44(a1, a2))
  {
    if (sub_10011C990(a1, 0))
    {
      v11 = sub_10000C798();
      v12 = (*(*v11 + 352))(v11);
      if (v12)
      {
        v13 = sub_10011C518(v12, a2);
        *(v13 + 50) = a3;
        if (a3 <= 0x32)
        {
          v14 = sub_10011D5D4(v13, a2);
          v15 = sub_1000DAB84();
          v16[0] = _NSConcreteStackBlock;
          v16[1] = 3221225472;
          v16[2] = sub_10011F14C;
          v16[3] = &unk_100AE0900;
          v17 = a3;
          v18 = v14;
          sub_10000CA94(v15, v16);
        }
      }
    }
  }
}

void sub_10011F14C(uint64_t a1)
{
  if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_ERROR))
  {
    sub_1008071A0();
  }

  if (qword_100B50AE0 != -1)
  {
    sub_1008070B8();
  }

  sub_1004DF6CC(qword_100B50AD8, *(a1 + 34), 0x28u);
}

void sub_10011F1C4(uint64_t a1, unint64_t a2, char a3)
{
  v9 = a2;
  if ((a3 & 1) == 0)
  {
    if (qword_100B50940 != -1)
    {
      sub_10080707C();
    }

    v4 = *(off_100B50938 + 25);
    if (!v4)
    {
      goto LABEL_12;
    }

    v5 = off_100B50938 + 200;
    do
    {
      v6 = *(v4 + 4);
      v7 = v6 >= a2;
      v8 = v6 < a2;
      if (v7)
      {
        v5 = v4;
      }

      v4 = *&v4[8 * v8];
    }

    while (v4);
    if (v5 == off_100B50938 + 200 || *(v5 + 4) > a2)
    {
LABEL_12:
      v5 = off_100B50938 + 200;
    }

    if (v5 != off_100B50938 + 200)
    {
      v10 = &v9;
      *(sub_10005E16C(off_100B50938 + 192, &v9)[5] + 80) = 0;
      if (qword_100B50940 != -1)
      {
        sub_100807090();
      }

      v10 = &v9;
      *(sub_10005E16C(off_100B50938 + 192, &v9)[5] + 84) = 0;
    }
  }
}

void sub_10011F2DC(uint64_t a1, unint64_t a2, unsigned int a3)
{
  v38 = a2;
  if (!a2)
  {
    goto LABEL_22;
  }

  if (qword_100B50940 != -1)
  {
    sub_10080707C();
  }

  v6 = *(off_100B50938 + 25);
  if (!v6)
  {
    goto LABEL_12;
  }

  v7 = off_100B50938 + 200;
  do
  {
    v8 = *(v6 + 4);
    v9 = v8 >= a2;
    v10 = v8 < a2;
    if (v9)
    {
      v7 = v6;
    }

    v6 = *&v6[8 * v10];
  }

  while (v6);
  if (v7 == off_100B50938 + 200 || *(v7 + 4) > a2)
  {
LABEL_12:
    v7 = off_100B50938 + 200;
  }

  if (v7 == off_100B50938 + 200)
  {
LABEL_22:
    v14 = qword_100BCE8D0;
    if (!os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    *buf = 0;
    v15 = "Low Latency Game, LatencyHubDevice object doesn't exist";
    v16 = v14;
    v17 = 2;
    goto LABEL_24;
  }

  if (*(sub_10011C518(a1, a2) + 1))
  {
    goto LABEL_18;
  }

  if (qword_100B50940 != -1)
  {
    sub_10080707C();
  }

  v11 = sub_100630CB4(off_100B50938);
  if (v11)
  {
LABEL_18:
    v12 = a1;
    v13 = 1000;
LABEL_19:

    sub_10011DC64(v12, v13, a3);
    return;
  }

  v13 = sub_10011DDB0(v11, a3);
  if (v13)
  {
    v12 = a1;
    goto LABEL_19;
  }

  v18 = qword_100BCE8D0;
  v19 = os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT);
  if (v19)
  {
    v20 = sub_10011C518(v19, a2);
    v21 = *(v20 + 24);
    v22 = *(sub_10011C518(v20, a2) + 20);
    *buf = 67109376;
    *&buf[4] = v21;
    v40 = 1024;
    v41 = v22;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Low Latency Game, decideLowLatencyGameStateTransition %d, %d", buf, 0xEu);
  }

  if (qword_100B50940 != -1)
  {
    sub_100807090();
  }

  *buf = &v38;
  v23 = sub_10005E16C(off_100B50938 + 192, &v38);
  if (*(*(v23 + 40) + 84) == 2)
  {
    if (qword_100B50AE0 != -1)
    {
      sub_1008070B8();
    }

    v23 = sub_1004DF814(qword_100B50AD8, a3);
    if (v23 <= 7)
    {
      v24 = qword_100BCE8D0;
      v25 = os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT);
      if (v25)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Low Latency Game, Sink JBL not filled, wait 150ms", buf, 2u);
      }

      v26 = 0;
      v27 = 0;
      v28 = 150;
      v29 = 1;
      goto LABEL_60;
    }
  }

  v30 = sub_10011C518(v23, v38);
  if (*(v30 + 20) != 1 && (v30 = sub_10011C518(v30, v38), *(v30 + 20) != 2) && (v30 = sub_10011C518(v30, v38), *(v30 + 20) != 3) || (v30 = sub_10011C518(v30, v38), *(v30 + 24) != 4))
  {
    if ((*(a1 + 5) & 1) != 0 || (*(a1 + 4) & 1) != 0 || (v30 = sub_10011C518(v30, v38), *(v30 + 24) != 7) || (v30 = sub_10011C518(v30, v38), *(v30 + 20) != 10))
    {
      v25 = sub_10011C518(v30, v38);
      if (*(v25 + 24) != 7 || (v25 = sub_10011C518(v25, v38), *(v25 + 20) != 10))
      {
        v26 = 0;
        v28 = 0;
        v29 = 1;
        goto LABEL_59;
      }

      v32 = qword_100BCE8D0;
      v25 = os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT);
      if (v25)
      {
        *buf = 0;
        v33 = "Low Latency Game, Jitter T -> 60ms";
        goto LABEL_56;
      }
    }

    else
    {
      v32 = qword_100BCE8D0;
      v25 = os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT);
      if (v25)
      {
        *buf = 0;
        v33 = "Low Latency Game, Jitter -> 60ms";
LABEL_56:
        _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, v33, buf, 2u);
      }
    }

    v29 = 0;
    v28 = 0;
    v26 = 1;
LABEL_59:
    v27 = 1;
    goto LABEL_60;
  }

  v31 = qword_100BCE8D0;
  v25 = os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT);
  if (v25)
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "Low Latency Game, Jitter -> 30ms", buf, 2u);
  }

  v29 = 0;
  v28 = 0;
  v27 = 1;
  v26 = 10;
LABEL_60:
  if (*(sub_10011C518(v25, v38) + 20) == v26)
  {
    v34 = qword_100BCE8D0;
    if (!os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    *buf = 67109120;
    *&buf[4] = 30;
    v15 = "Low Latency Game, Latency is already set to %d";
    v16 = v34;
    v17 = 8;
LABEL_24:
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, v15, buf, v17);
    return;
  }

  if (v27)
  {
    if ((v29 & 1) == 0)
    {
      v35 = qword_100BCE8D0;
      if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
      {
        v36 = *(a1 + 5);
        v37 = *(a1 + 4);
        *buf = 67109632;
        *&buf[4] = v26;
        v40 = 1024;
        v41 = v36;
        v42 = 1024;
        v43 = v37;
        _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "Low Latency Game, Dynamic Latency for AoS %u, fGameModeOn %d, fConsoleGameModeOn %d", buf, 0x14u);
      }

      sub_10011D938(a1, a3, v26);
    }
  }

  else
  {
    sub_10011DC64(a1, v28, a3);
  }
}

void sub_10011F874(uint64_t a1, unint64_t a2)
{
  if (_os_feature_enabled_impl())
  {
    if (*(a1 + 4))
    {
      v4 = 1;
      if (!a2)
      {
        return;
      }
    }

    else
    {
      v4 = *(a1 + 5);
      if (!a2)
      {
        return;
      }
    }

    if (v4)
    {
      v5 = sub_10000E92C();
      if (((*(*v5 + 8))(v5) & 1) != 0 || (v6 = sub_10000E92C(), (*(*v6 + 24))(v6)))
      {
        v28 = 0;
        v7 = sub_10000E92C();
        sub_100007E30(buf, "UniAoS");
        sub_100007E30(__p, "ignoreFlush");
        v8 = (*(*v7 + 88))(v7, buf, __p, &v28);
        if (v27 < 0)
        {
          operator delete(__p[0]);
        }

        if (v32 < 0)
        {
          operator delete(*buf);
        }

        if (v28)
        {
          *(sub_10011C518(v8, a2) + 32) = 0;
          return;
        }
      }

      if (qword_100B50940 != -1)
      {
        sub_100807090();
      }

      v9 = sub_10010C5DC(*(off_100B50938 + 28), a2);
      if (v9)
      {
        v10 = sub_10011C518(v9, a2);
        if (*(v10 + 24) > 9 || *(sub_10011C518(v10, a2) + 24) <= 13)
        {
          v11 = mach_absolute_time();
          v12 = sub_10011C518(v11, a2);
          ++*(v12 + 32);
          v13 = sub_1005465D4(a2);
          if (!v13 || (*(a2 + 1437) & 1) == 0)
          {
            v16 = qword_100BCE8D0;
            v17 = os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT);
            if (v17)
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Low Latency Game 2G flush, score->20", buf, 2u);
            }

            goto LABEL_27;
          }

          v14 = sub_10011C518(v13, a2);
          if (*(v14 + 40) == 0.0)
          {
            *(sub_10011C518(v14, a2) + 40) = v11;
            v15 = qword_100BCE8D0;
            if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Low Latency Game 1st flush in one second", buf, 2u);
            }

            return;
          }

          if (qword_100B50940 != -1)
          {
            sub_100807090();
          }

          v18 = off_100B50938;
          v19 = sub_10011C518(v14, a2);
          v20 = sub_10062EB2C(v18, (v11 - *(v19 + 40)), 1);
          *(sub_10011C518(v21, a2) + 40) = v11;
          v22 = qword_100BCE8D0;
          v23 = os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT);
          if (v23)
          {
            v24 = *(sub_10011C518(v23, a2) + 32);
            *buf = 67109376;
            *&buf[4] = v24;
            v30 = 2048;
            v31 = v20;
            _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Low Latency Game flush %d in a second, delta: %f", buf, 0x12u);
          }

          if (v20 <= 20.0)
          {
            *(sub_10011C518(v23, a2) + 28) = 20;
            v25 = qword_100BCE8D0;
            v17 = os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT);
            if (v17)
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Low Latency Game, 2inrow flush, score->20", buf, 2u);
            }

LABEL_27:
            *(sub_10011C518(v17, a2) + 32) = 4;
          }
        }
      }
    }
  }
}

void sub_10011FC68(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

uint64_t sub_10011FCA4(uint64_t a1, unint64_t a2, int a3, uint64_t a4)
{
  v80 = 20;
  v81 = 40;
  v79 = 15;
  result = _os_feature_enabled_impl();
  if (result)
  {
    if (*(a1 + 4))
    {
      v9 = 1;
      if (!a2)
      {
        return result;
      }
    }

    else
    {
      v9 = *(a1 + 5);
      if (!a2)
      {
        return result;
      }
    }

    if (v9)
    {
      if (qword_100B50940 != -1)
      {
        sub_10080707C();
      }

      result = sub_10010C5DC(*(off_100B50938 + 28), a2);
      if (result)
      {
        v10 = sub_10000E92C();
        if (((*(*v10 + 8))(v10) & 1) != 0 || (v11 = sub_10000E92C(), v12 = (*(*v11 + 24))(v11), v12))
        {
          v13 = sub_10000E92C();
          sub_100007E30(buf, "UniAoS");
          sub_100007E30(__p, "ReTxThreshold");
          (*(*v13 + 88))(v13, buf, __p, &v81);
          if (v78 < 0)
          {
            operator delete(__p[0]);
          }

          if (SBYTE1(v88) < 0)
          {
            operator delete(*buf);
          }

          v14 = sub_10000E92C();
          sub_100007E30(buf, "UniAoS");
          sub_100007E30(__p, "NakThreshold");
          (*(*v14 + 88))(v14, buf, __p, &v80);
          if (v78 < 0)
          {
            operator delete(__p[0]);
          }

          if (SBYTE1(v88) < 0)
          {
            operator delete(*buf);
          }

          v15 = sub_10000E92C();
          sub_100007E30(buf, "UniAoS");
          sub_100007E30(__p, "IsmBandFactor");
          v12 = (*(*v15 + 88))(v15, buf, __p, &v79);
          if (v78 < 0)
          {
            operator delete(__p[0]);
          }

          if (SBYTE1(v88) < 0)
          {
            operator delete(*buf);
          }

          if (!v81)
          {
            v81 = 40;
          }

          if (!v80)
          {
            v80 = 20;
          }

          if (!v79)
          {
            v79 = 15;
          }
        }

        if (*(a4 + 16))
        {
          v16 = (100 * *(a4 + 179) / *(a4 + 16));
        }

        else
        {
          v16 = 0;
        }

        v17 = sub_10011C518(v12, a2);
        if (*(v17 + 24) == 1 || (v17 = sub_10011C518(v17, a2), *(v17 + 20) <= 5) && (v17 = sub_10011C518(v17, a2), *(v17 + 20) >= 1))
        {
          v17 = sub_10011C518(v17, a2);
          if ((*(v17 + 1) & 1) == 0)
          {
            v18 = qword_100BCE8D0;
            v19 = os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT);
            if (v19)
            {
              v20 = v80;
              v21 = v81;
              v22 = *(sub_10011C518(v19, a2) + 28);
              *buf = 67110144;
              *&buf[4] = a3;
              v83 = 1024;
              v84 = v21;
              v85 = 1024;
              v86 = v16;
              v87 = 1024;
              v88 = v20;
              v89 = 1024;
              v90 = v22;
              _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "pre Low Latency Game, reTx:%u / %u, nak:%u / %u, score:%u", buf, 0x20u);
            }

            if (qword_100B50940 != -1)
            {
              sub_100807090();
            }

            sub_10010E46C(*(off_100B50938 + 28), a4, a2);
            v25 = v81 < a3 || v16 > v80;
            v26 = sub_10011C518(v23, a2);
            v27 = *(v26 + 28);
            if (v25)
            {
              v17 = sub_10011C518(v26, a2);
              if (v27 < *(v17 + 36))
              {
                v28 = sub_10011C518(v17, a2);
                ++*(v28 + 28);
                v29 = qword_100BCE8D0;
                v17 = os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT);
                if (v17)
                {
                  v30 = *(sub_10011C518(v17, a2) + 28);
                  *buf = 67109120;
                  *&buf[4] = v30;
                  v31 = "pre Low Latency Game, increased score %u";
                  v32 = v29;
                  v33 = 8;
LABEL_64:
                  _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, v31, buf, v33);
                }
              }
            }

            else
            {
              if (v27)
              {
                v34 = sub_10011C518(v26, a2);
                --*(v34 + 28);
                v35 = qword_100BCE8D0;
                v26 = os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT);
                if (v26)
                {
                  v36 = *(sub_10011C518(v26, a2) + 28);
                  *buf = 67109120;
                  *&buf[4] = v36;
                  _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "pre Low Latency Game(out), decreased score %u", buf, 8u);
                }
              }

              v17 = sub_10011C518(v26, a2);
              if (!*(v17 + 28))
              {
                v37 = qword_100BCE8D0;
                if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 0;
                  _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "pre Low Latency Game, LLM promote to AoS, request UBO", buf, 2u);
                }

                if (qword_100B50940 != -1)
                {
                  sub_100807090();
                }

                v38 = sub_100629478(off_100B50938, 2, a2);
                if (v38)
                {
                  v39 = sub_10011C518(v38, a2);
                  *(v39 + 36) = 20;
                  *(sub_10011C518(v39, a2) + 28) = 0;
                  if (*(a4 + 16))
                  {
                    LOWORD(v40) = *(a4 + 18);
                    v41 = ((v40 * 100.0) / *(a4 + 16));
                  }

                  else
                  {
                    v41 = 0;
                  }

                  v43 = *(a4 + 6);
                  if (qword_100B50940 != -1)
                  {
                    sub_100807090();
                  }

                  sub_10063828C(off_100B50938, a2, v41, v43, 0);
                }

                else
                {
                  v42 = qword_100BCE8D0;
                  v17 = os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT);
                  if (v17)
                  {
                    *buf = 0;
                    v31 = "pre Low Latency Game, transition busy delay 1 second";
                    v32 = v42;
                    v33 = 2;
                    goto LABEL_64;
                  }
                }
              }
            }
          }
        }

        v44 = sub_10011C518(v17, a2);
        if (*(v44 + 24) < 10)
        {
          goto LABEL_110;
        }

        v44 = sub_10011C518(v44, a2);
        if (*(v44 + 24) > 13)
        {
          goto LABEL_110;
        }

        v45 = qword_100BCE8D0;
        v46 = os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT);
        if (v46)
        {
          v47 = sub_10011C518(v46, a2);
          v48 = *(v47 + 24);
          v49 = v80;
          v50 = v81;
          v51 = *(sub_10011C518(v47, a2) + 28);
          *buf = 67110400;
          *&buf[4] = v48;
          v83 = 1024;
          v84 = a3;
          v85 = 1024;
          v86 = v50;
          v87 = 1024;
          v88 = v16;
          v89 = 1024;
          v90 = v49;
          v91 = 1024;
          v92 = v51;
          _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "In Low Latency Game, State:%u, reTx:%u / %u, nak:%u / %u, score:%u", buf, 0x26u);
        }

        if (*(sub_10011C518(v46, a2) + 24) != 10)
        {
          if (qword_100B50940 != -1)
          {
            sub_100807090();
          }

          sub_10010E46C(*(off_100B50938 + 28), a4, a2);
        }

        if (qword_100B50940 != -1)
        {
          sub_100807090();
        }

        sub_100638090(off_100B50938, a2, a3, *(a4 + 6));
        v53 = sub_10011C518(v52, a2);
        if (*(v53 + 32) < 4u)
        {
          v60 = v81 < a3 || v16 > v80;
          v55 = sub_10011C518(v53, a2);
          v61 = *(v55 + 28);
          if (!v60)
          {
            if (v61 >= 0xA)
            {
              v64 = qword_100BCE8D0;
              v65 = os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT);
              if (v65)
              {
                v66 = *(sub_10011C518(v65, a2) + 28);
                *buf = 67109120;
                *&buf[4] = v66;
                _os_log_impl(&_mh_execute_header, v64, OS_LOG_TYPE_DEFAULT, "In Low Latency Game, decreased score %u", buf, 8u);
              }

              v55 = sub_10011C518(v65, a2);
              *(v55 + 28) -= 10;
            }

LABEL_96:
            v44 = sub_10011C518(v55, a2);
            if (*(v44 + 28) >= 0x14u)
            {
              if (qword_100B50940 != -1)
              {
                sub_100807090();
              }

              v67 = sub_100629478(off_100B50938, 8, a2);
              if (v67)
              {
                *(sub_10011C518(v67, a2) + 28) = 20;
                if (qword_100B50940 != -1)
                {
                  sub_100807090();
                }

                sub_100638540(off_100B50938, a2, 1);
                v68 = sub_1005465D4(a2);
                if (!v68 || (*(a2 + 1437) & 1) == 0)
                {
                  v69 = v79;
                  *(sub_10011C518(v68, a2) + 28) = 20 * v69;
                }

                v70 = qword_100BCE8D0;
                v44 = os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT);
                if (!v44)
                {
                  goto LABEL_110;
                }

                v71 = *(sub_10011C518(v44, a2) + 28);
                *buf = 67109376;
                *&buf[4] = v71;
                v83 = 1024;
                v84 = v79;
                v72 = "Low Latency Game, AoS demoted to LLM on ISM, score %u, ISM factor %d";
                v73 = v70;
                v74 = 14;
                goto LABEL_109;
              }

              v75 = qword_100BCE8D0;
              v44 = os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT);
              if (v44)
              {
                *buf = 0;
                v72 = "In Low Latency Game, transition busy delay 1 second";
                v73 = v75;
                v74 = 2;
LABEL_109:
                _os_log_impl(&_mh_execute_header, v73, OS_LOG_TYPE_DEFAULT, v72, buf, v74);
              }
            }

LABEL_110:
            v76 = sub_10011C518(v44, a2);
            *(v76 + 32) = 0;
            result = sub_10011C518(v76, a2);
            *(result + 40) = 0;
            return result;
          }

          *(v55 + 28) = v61 + 10;
          v62 = qword_100BCE8D0;
          v55 = os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT);
          if (!v55)
          {
            goto LABEL_96;
          }

          v63 = *(sub_10011C518(v55, a2) + 28);
          *buf = 67109120;
          *&buf[4] = v63;
          v56 = "In Low Latency Game, increased score %u";
          v57 = v62;
          v58 = 8;
        }

        else
        {
          *(sub_10011C518(v53, a2) + 28) = 20;
          v54 = qword_100BCE8D0;
          v55 = os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT);
          if (!v55)
          {
            goto LABEL_96;
          }

          *buf = 0;
          v56 = "In Low Latency Game, per second flush count exceed";
          v57 = v54;
          v58 = 2;
        }

        _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_DEFAULT, v56, buf, v58);
        goto LABEL_96;
      }
    }
  }

  return result;
}

void sub_1001206E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10012072C(uint64_t a1, unint64_t a2)
{
  v3 = sub_10011C518(a1, a2);
  *(v3 + 32) = 0;
  v4 = sub_10011C518(v3, a2);
  *(v4 + 40) = 0;
  v5 = sub_10011C518(v4, a2);
  *(v5 + 28) = 2;
  result = sub_10011C518(v5, a2);
  *(result + 36) = 2;
  return result;
}

uint64_t sub_10012077C(uint64_t a1, uint64_t a2)
{
  result = sub_1000E2140(a2, 13);
  if (result)
  {
    v4 = sub_10000C798();
    result = (*(*v4 + 840))(v4, 0);
    if (result)
    {
      v6 = 0;
      sub_1000216B4(&v6);
      v5 = sub_10023DF34(a2 + 128);
      sub_100022214(&v6);
      if (v5)
      {
        if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_ERROR))
        {
          sub_100807218();
        }
      }

      return sub_10002249C(&v6);
    }
  }

  return result;
}

void sub_10012085C(uint64_t a1, uint64_t a2, __int16 a3)
{
  if (qword_100B50940 != -1)
  {
    sub_10080707C();
  }

  v6 = *(off_100B50938 + 32);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100120AB8;
  block[3] = &unk_100AE0EF8;
  block[4] = a1;
  block[5] = a2;
  v8 = a3;
  dispatch_async(v6, block);
}

uint64_t sub_10012090C(uint64_t a1)
{
  if (qword_100B50AE0 != -1)
  {
    sub_10080729C();
  }

  v2 = qword_100B50AD8;
  v3 = *(a1 + 36);
  v4 = *(a1 + 32);

  return sub_1004DF2AC(v2, v3, v4);
}

void sub_100120964(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = sub_10011ACAC(a1, *(a1 + 40));
  v10[0] = v3;
  if (v3)
  {
    v4 = v3;
    if (qword_100B50940 != -1)
    {
      sub_10080707C();
    }

    v5 = *(off_100B50938 + 25);
    if (!v5)
    {
      goto LABEL_12;
    }

    v6 = off_100B50938 + 200;
    do
    {
      v7 = *(v5 + 4);
      v8 = v7 >= v4;
      v9 = v7 < v4;
      if (v8)
      {
        v6 = v5;
      }

      v5 = *&v5[8 * v9];
    }

    while (v5);
    if (v6 == off_100B50938 + 200 || v4 < *(v6 + 4))
    {
LABEL_12:
      v6 = off_100B50938 + 200;
    }

    if (v6 != off_100B50938 + 200)
    {
      v10[2] = v10;
      if (*(sub_10005E16C(off_100B50938 + 192, v10)[5] + 84) == 2)
      {
        sub_100119ED8(v2, 0, *(a1 + 42));
      }
    }
  }
}

uint64_t sub_100120A60(uint64_t a1)
{
  if (qword_100B50AE0 != -1)
  {
    sub_10080729C();
  }

  v2 = qword_100B50AD8;
  v3 = *(a1 + 36);
  v4 = *(a1 + 32);

  return sub_1004DF2AC(v2, v3, v4);
}

void sub_100120AB8(uint64_t a1)
{
  v1 = (a1 + 40);
  if (!*(a1 + 40))
  {
    goto LABEL_22;
  }

  if (qword_100B50940 != -1)
  {
    sub_10080707C();
  }

  v3 = *(off_100B50938 + 25);
  if (!v3)
  {
    goto LABEL_12;
  }

  v4 = *v1;
  v5 = off_100B50938 + 200;
  do
  {
    v6 = *(v3 + 4);
    v7 = v6 >= v4;
    v8 = v6 < v4;
    if (v7)
    {
      v5 = v3;
    }

    v3 = *&v3[8 * v8];
  }

  while (v3);
  if (v5 == off_100B50938 + 200 || v4 < *(v5 + 4))
  {
LABEL_12:
    v5 = off_100B50938 + 200;
  }

  if (v5 == off_100B50938 + 200)
  {
LABEL_22:
    if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_ERROR))
    {
      sub_1008072B0();
    }
  }

  else
  {
    v9 = sub_10011C518(a1, *(a1 + 40));
    v10 = *(a1 + 48);
    if (*(v9 + 16) != v10)
    {
      v11 = qword_100BCE8D0;
      v12 = os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT);
      if (v12)
      {
        v13 = *(sub_10011C518(v12, *(a1 + 40)) + 16);
        v14 = *(a1 + 48);
        v15[0] = 67109376;
        v15[1] = v13;
        v16 = 1024;
        v17 = v14;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Updated currentJitterBuffer from %u to %u", v15, 0xEu);
        LOWORD(v10) = *(a1 + 48);
      }

      *(sub_10011C518(v12, *v1) + 16) = v10;
      notify_post("com.apple.bluetooth.AdaptiveJitterBufferChanged");
    }
  }
}

void sub_100120C60(uint64_t a1, char a2, __int16 a3, int a4)
{
  *(a1 + 64) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 25) = 0u;
  *(a1 + 66) = a3;
  *(a1 + 68) = a3;
  *(a1 + 70) = -1;
  *(a1 + 72) = 0xFFFF00000000;
  *(a1 + 80) = a2;
  *(a1 + 84) = a4;
  *(a1 + 94) = 0;
  *(a1 + 96) = 0;
  *(a1 + 108) = 0;
  *(a1 + 100) = 0;
  operator new();
}

const char *sub_100121948(int a1)
{
  if (a1 <= 39)
  {
    if (a1 <= 19)
    {
      if (a1 != 10)
      {
        if (a1 == 15)
        {
          return "1022.5 ms";
        }

        return "270 ms";
      }

      return "2 seconds";
    }

    if (a1 == 20)
    {
      return "350 ms";
    }

    return "270 ms";
  }

  if (a1 <= 44)
  {
    if (a1 == 40)
    {
      return "181.25 ms";
    }

    if (a1 == 42)
    {
      return "120 ms";
    }

    return "270 ms";
  }

  if (a1 == 45)
  {
    return "60 ms";
  }

  if (a1 != 50)
  {
    if (a1 == 60)
    {
      return "20 ms";
    }

    return "270 ms";
  }

  return "30 ms";
}

BOOL sub_100121B28(uint64_t a1)
{
  v2 = *(*(a1 + 40) + 1032);
  v3 = *(a1 + 32);
  v4 = v2;
  v5 = v4;
  v6 = v3 != v4;
  if (v3 == v4)
  {

LABEL_8:
    return v6;
  }

  if ((v3 != 0) == (v4 == 0))
  {

    goto LABEL_7;
  }

  v7 = [v3 isEqual:v4];

  if ((v7 & 1) == 0)
  {
LABEL_7:
    v8 = *(a1 + 32);
    v9 = *(a1 + 40);
    v10 = v8;
    v3 = *(v9 + 1032);
    *(v9 + 1032) = v10;
    goto LABEL_8;
  }

  return 0;
}

BOOL sub_100121C50(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 32);
  v3 = *(v2 + 1012);
  if (v1 != v3)
  {
    *(v2 + 1012) = v1;
    *(*(a1 + 32) + 960) = 1;
  }

  return v1 != v3;
}

BOOL sub_100121CF0(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 32);
  v3 = *(v2 + 1010);
  if (v1 != v3)
  {
    *(v2 + 1010) = v1;
  }

  return v1 != v3;
}

BOOL sub_100121DAC(uint64_t a1)
{
  v2 = *(*(a1 + 40) + 1072);
  v3 = *(a1 + 32);
  v4 = v2;
  v5 = v4;
  v6 = v3 != v4;
  if (v3 == v4)
  {

LABEL_8:
    return v6;
  }

  if ((v3 != 0) == (v4 == 0))
  {

    goto LABEL_7;
  }

  v7 = [v3 isEqual:v4];

  if ((v7 & 1) == 0)
  {
LABEL_7:
    v8 = *(a1 + 32);
    v9 = *(a1 + 40);
    v10 = v8;
    v3 = *(v9 + 1072);
    *(v9 + 1072) = v10;
    goto LABEL_8;
  }

  return 0;
}

BOOL sub_100121EFC(uint64_t a1)
{
  v2 = *(*(a1 + 40) + 1088);
  v3 = *(a1 + 32);
  v4 = v2;
  v5 = v4;
  v6 = v3 != v4;
  if (v3 == v4)
  {

LABEL_8:
    return v6;
  }

  if ((v3 != 0) == (v4 == 0))
  {

    goto LABEL_7;
  }

  v7 = [v3 isEqual:v4];

  if ((v7 & 1) == 0)
  {
LABEL_7:
    v8 = *(a1 + 32);
    v9 = *(a1 + 40);
    v10 = v8;
    v3 = *(v9 + 1088);
    *(v9 + 1088) = v10;
    goto LABEL_8;
  }

  return 0;
}

BOOL sub_10012204C(uint64_t a1)
{
  v2 = *(*(a1 + 40) + 1080);
  v3 = *(a1 + 32);
  v4 = v2;
  v5 = v4;
  v6 = v3 != v4;
  if (v3 == v4)
  {

LABEL_8:
    return v6;
  }

  if ((v3 != 0) == (v4 == 0))
  {

    goto LABEL_7;
  }

  v7 = [v3 isEqual:v4];

  if ((v7 & 1) == 0)
  {
LABEL_7:
    v8 = *(a1 + 32);
    v9 = *(a1 + 40);
    v10 = v8;
    v3 = *(v9 + 1080);
    *(v9 + 1080) = v10;
    goto LABEL_8;
  }

  return 0;
}

char *sub_1001223A0(char *result)
{
  v2 = (result + 32);
  v1 = *(result + 4);
  if ((*(v1 + 32) & 1) == 0)
  {
    *(v1 + 32) = 1;
    if (dword_100B50E30 <= 30 && (dword_100B50E30 != -1 || _LogCategory_Initialize()))
    {
      sub_100807D90();
    }

    v3 = *v2;

    return [v3 _invalidate];
  }

  return result;
}

id sub_100122F34(uint64_t a1)
{
  *(*(a1 + 32) + 160) = 1;
  *(*(a1 + 32) + 232) = 1;
  *(*(a1 + 32) + 304) = 1;
  *(*(a1 + 32) + 376) = 1;
  *(*(a1 + 32) + 448) = 1;
  *(*(a1 + 32) + 520) = 1;
  *(*(a1 + 32) + 592) = 1;
  *(*(a1 + 32) + 664) = 1;
  *(*(a1 + 32) + 736) = 1;
  *(*(a1 + 32) + 960) = 1;
  *(*(a1 + 32) + 808) = 1;
  return [*(a1 + 32) _update];
}

void *sub_100123644(void *result)
{
  v2 = result[4];
  v3 = *(result[6] + 40);
  if (v2 == v3)
  {
    v4 = result;
    if (v2)
    {
      v5 = v3;
      dispatch_source_cancel(v5);
      v6 = v4[6];
      v7 = *(v6 + 40);
      *(v6 + 40) = 0;
    }

    *(v4[5] + 24) = 1;
    v8 = v4[5];

    return [v8 _update];
  }

  return result;
}

const char *sub_100123840(int a1)
{
  if (a1 > 39)
  {
    if (a1 <= 44)
    {
      if (a1 == 40)
      {
        return "Medium";
      }

      if (a1 == 42)
      {
        return "MediumMid";
      }
    }

    else
    {
      switch(a1)
      {
        case '-':
          return "MediumHigh";
        case '2':
          return "High";
        case '<':
          return "Max";
      }
    }
  }

  else if (a1 <= 14)
  {
    if (!a1)
    {
      return "Default";
    }

    if (a1 == 10)
    {
      return "Periodic";
    }
  }

  else
  {
    switch(a1)
    {
      case 15:
        return "PeriodicHigh";
      case 20:
        return "Background";
      case 30:
        return "Low";
    }
  }

  return "?";
}

const char *sub_1001252F4(int a1)
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

void sub_100128238(uint64_t a1)
{
  v2 = *(a1 + 64);
}

void sub_1001288E8(uint64_t a1, void *a2)
{
  v4 = a2;
  if ((*(a1 + 72) & 1) == 0)
  {
    v5 = sub_100058928();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Add listeners", v8, 2u);
    }

    objc_storeStrong((a1 + 64), a2);
    v6 = [v4 dispatchQueue];
    v7 = *(a1 + 56);
    *(a1 + 56) = v6;

    if (qword_100B50F68 != -1)
    {
      sub_100809D10();
    }

    sub_10012E3B0(off_100B50F60 + 24, a1);
    if (qword_100B508F0 != -1)
    {
      sub_100809D38();
    }

    sub_1000F0D9C(off_100B508E8 + 240, a1 + 8);
    if (qword_100B50F78 != -1)
    {
      sub_100809D60();
    }

    sub_100580E68(qword_100B50F70, a1 + 16);
    if (qword_100B508B0 != -1)
    {
      sub_100809D88();
    }

    sub_100749B80(off_100B508A8, a1 + 24, 0);
    if (qword_100B508C0 != -1)
    {
      sub_100809DB0();
    }

    sub_1007BF384(off_100B508B8, a1 + 32);
    if (qword_100B50F88 != -1)
    {
      sub_100809DD8();
    }

    sub_1006DC960(off_100B50F80, a1 + 40);
    if (qword_100B50F98 != -1)
    {
      sub_100809E00();
    }

    sub_1006989D0(off_100B50F90, a1 + 48);
    *(a1 + 72) = 1;
  }
}

id sub_100128AD4(uint64_t a1)
{
  v2 = sub_100058928();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Power notification: AccessoryAttach", v4, 2u);
  }

  return [*(a1 + 32) _updatePowerSources];
}

id sub_100128B48(uint64_t a1)
{
  v2 = sub_100058928();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Power notification: AccessoryPowerSource", v4, 2u);
  }

  return [*(a1 + 32) _updatePowerSources];
}

id sub_100128BBC(uint64_t a1)
{
  v2 = sub_100058928();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Power notification: AccessoryTimeRemaining", v4, 2u);
  }

  return [*(a1 + 32) _updatePowerSources];
}

id sub_100128C30(uint64_t a1)
{
  v2 = sub_100058928();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Power notification: AnyPowerSource", v4, 2u);
  }

  return [*(a1 + 32) _updatePowerSources];
}

void sub_100128CA4(uint64_t a1)
{
  obj = [CBUtil getBluetoothDebugSettingString:@"BluetoothCustomerLogging" InKey:@"PrivateDataLogging"];
  if (([*(*(a1 + 32) + 56) isEqualToString:?] & 1) == 0)
  {
    v2 = sub_10000E92C();
    *(*(a1 + 32) + 36) = (*(*v2 + 160))(v2);
    objc_storeStrong((*(a1 + 32) + 56), obj);
  }
}

uint64_t sub_100128EAC(uint64_t result)
{
  if (*(result + 72) == 1)
  {
    v6 = v1;
    v7 = v2;
    v3 = result;
    v4 = sub_100058928();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Remove listeners", v5, 2u);
    }

    if (qword_100B50F68 != -1)
    {
      sub_100809D10();
    }

    sub_10007A3F0(off_100B50F60 + 24, v3);
    if (qword_100B508F0 != -1)
    {
      sub_100809D38();
    }

    sub_10007A3F0(off_100B508E8 + 240, v3 + 8);
    if (qword_100B50F78 != -1)
    {
      sub_100809D60();
    }

    sub_100580EFC(qword_100B50F70, v3 + 16);
    if (qword_100B508B0 != -1)
    {
      sub_100809D88();
    }

    sub_100749C8C(off_100B508A8, v3 + 24);
    if (qword_100B508C0 != -1)
    {
      sub_100809DB0();
    }

    sub_1007BF4C0(off_100B508B8, v3 + 32);
    if (qword_100B50F88 != -1)
    {
      sub_100809DD8();
    }

    sub_1006DCA90(off_100B50F80, v3 + 40);
    if (qword_100B50F98 != -1)
    {
      sub_100809E00();
    }

    result = sub_100698B00(off_100B50F90, v3 + 48);
    *(v3 + 72) = 0;
  }

  return result;
}

void sub_1001290E4(id a1, NSString *a2, CBPowerSource *a3, BOOL *a4)
{
  v5 = a2;
  v6 = a3;
  v7 = sub_100058928();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412546;
    v9 = v5;
    v10 = 2112;
    v11 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "    %@ : %@", &v8, 0x16u);
  }
}

void sub_1001296D4(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 16) objectForKeyedSubscript:*(a1 + 40)];
  if (v2)
  {
    [*(a1 + 32) _notifyPowerSourceFound:v2];
  }
}

void sub_10012A860(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, id a40)
{
  v42[2](v42);

  _Block_object_dispose(&a35, 8);
  _Unwind_Resume(a1);
}

void sub_10012A960(uint64_t a1)
{
  if (*(*(*(a1 + 32) + 8) + 40))
  {
    v1 = sub_100058928();
    if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
    {
      sub_10080A1F4();
    }
  }
}

void sub_10012A9BC(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v13 = a2;
  v8 = a3;
  v9 = *(a1 + 32);
  v10 = v8;
  v11 = v10;
  if (v9 == v10)
  {

    goto LABEL_6;
  }

  if ((v10 == 0) == (v9 != 0))
  {

    goto LABEL_8;
  }

  v12 = [v9 isEqual:v10];

  if (v12)
  {
LABEL_6:
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a4 = 1;
  }

LABEL_8:
}

void sub_10012B0F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  v22[2](v22);

  _Block_object_dispose(&a15, 8);
  _Unwind_Resume(a1);
}

void sub_10012B178(uint64_t a1)
{
  if (*(*(*(a1 + 32) + 8) + 40))
  {
    v1 = sub_100058928();
    if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
    {
      sub_10080A414();
    }
  }
}

void sub_10012B638(_Unwind_Exception *a1)
{
  v4 = v2;

  _Unwind_Resume(a1);
}

void sub_10012C034(_Unwind_Exception *a1)
{
  v4[2](v4);

  objc_sync_exit(v2);
  _Unwind_Resume(a1);
}

void sub_10012C2A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_10012C82C(id a1, NSString *a2, NSString *a3, BOOL *a4)
{
  v5 = a2;
  v6 = a3;
  v7 = sub_100058928();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412546;
    v9 = v5;
    v10 = 2112;
    v11 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "    [ %@ : %@ ]", &v8, 0x16u);
  }
}

void sub_10012CCB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_10012CD6C(void *a1, void *a2, void *a3, _BYTE *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a1[4];
  v20 = v7;
  v10 = v9;
  v11 = v10;
  if (v10 == v20)
  {

    goto LABEL_6;
  }

  if ((v20 != 0) == (v10 == 0))
  {

    goto LABEL_8;
  }

  v12 = [v20 isEqual:v10];

  if (v12)
  {
LABEL_6:
    v13 = *(a1[6] + 8);
    v14 = v20;
LABEL_14:
    v16 = *(v13 + 40);
    *(v13 + 40) = v14;
LABEL_15:

    goto LABEL_16;
  }

LABEL_8:
  v15 = a1[5];
  v16 = v20;
  v17 = v15;
  v18 = v17;
  if (v17 == v16)
  {

LABEL_13:
    v13 = *(a1[6] + 8);
    v14 = v16;
    goto LABEL_14;
  }

  if ((v20 != 0) == (v17 == 0))
  {

    goto LABEL_15;
  }

  v19 = [v16 isEqual:v17];

  if (v19)
  {
    goto LABEL_13;
  }

LABEL_16:
  if (*(*(a1[6] + 8) + 40))
  {
    *a4 = 1;
  }
}

void sub_10012CF88(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 16) objectForKeyedSubscript:*(a1 + 40)];

  if (!v2)
  {
    v14 = 0;
    v15 = &v14;
    v16 = 0x3032000000;
    v17 = sub_100042214;
    v18 = sub_10004259C;
    v19 = 0;
    v3 = *(*(a1 + 32) + 8);
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_10012D190;
    v13[3] = &unk_100AE1148;
    v13[4] = *(a1 + 40);
    v13[5] = &v14;
    [v3 enumerateKeysAndObjectsUsingBlock:v13];
    v4 = v15[5];
    if (v4)
    {
      v11 = 0u;
      v12 = 0u;
      v9 = 0u;
      v10 = 0u;
      v5 = v4;
      v6 = [v5 countByEnumeratingWithState:&v9 objects:v20 count:16];
      if (v6)
      {
        v7 = *v10;
        do
        {
          v8 = 0;
          do
          {
            if (*v10 != v7)
            {
              objc_enumerationMutation(v5);
            }

            [*(*(a1 + 32) + 8) setObject:0 forKeyedSubscript:{*(*(&v9 + 1) + 8 * v8), v9}];
            v8 = v8 + 1;
          }

          while (v6 != v8);
          v6 = [v5 countByEnumeratingWithState:&v9 objects:v20 count:16];
        }

        while (v6);
      }
    }

    _Block_object_dispose(&v14, 8);
  }
}

void sub_10012D154(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, id a29)
{
  _Block_object_dispose(&a24, 8);

  _Unwind_Resume(a1);
}

void sub_10012D190(uint64_t a1, void *a2, void *a3)
{
  v14 = a2;
  v5 = a3;
  v6 = *(a1 + 32);
  v7 = v5;
  v8 = v7;
  if (v6 == v7)
  {

LABEL_6:
    v10 = *(*(*(a1 + 40) + 8) + 40);
    if (!v10)
    {
      v11 = objc_alloc_init(NSMutableArray);
      v12 = *(*(a1 + 40) + 8);
      v13 = *(v12 + 40);
      *(v12 + 40) = v11;

      v10 = *(*(*(a1 + 40) + 8) + 40);
    }

    [v10 addObject:v14];
    goto LABEL_10;
  }

  if ((v7 == 0) == (v6 != 0))
  {

    goto LABEL_10;
  }

  v9 = [v6 isEqual:v7];

  if (v9)
  {
    goto LABEL_6;
  }

LABEL_10:
}

void sub_10012D368(_Unwind_Exception *a1)
{
  v6 = v5;

  _Unwind_Resume(a1);
}

void sub_10012D5E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

void sub_10012D648(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v6 = a3;
  v7 = [v6 groupID];

  if (v7 && [v6 partID] == 1)
  {
    v8 = [v6 accessoryID];
    v9 = [*(a1 + 32) accessoryID];
    v10 = v8;
    v11 = v9;
    v12 = v11;
    if (v10 == v11)
    {
    }

    else
    {
      if ((v10 != 0) == (v11 == 0))
      {

        goto LABEL_16;
      }

      v13 = [v10 isEqual:v11];

      if ((v13 & 1) == 0)
      {
        goto LABEL_16;
      }
    }

    v14 = [v6 groupID];
    v15 = *(*(a1 + 40) + 8);
    v16 = *(v15 + 40);
    *(v15 + 40) = v14;

    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v17 = [*(a1 + 32) components];
    v18 = [v17 allValues];

    v19 = [v18 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v19)
    {
      v20 = *v23;
      do
      {
        for (i = 0; i != v19; i = i + 1)
        {
          if (*v23 != v20)
          {
            objc_enumerationMutation(v18);
          }

          [*(*(&v22 + 1) + 8 * i) setGroupID:*(*(*(a1 + 40) + 8) + 40)];
        }

        v19 = [v18 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v19);
    }

    *a4 = 1;
  }

LABEL_16:
}

void sub_10012D964(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 56);
  v2 = *(a1 + 64);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10012D9EC;
  v5[3] = &unk_100AE1200;
  v5[4] = v2;
  v5[5] = a2;
  v4 = v2;
  dispatch_async(v3, v5);
}

void sub_10012D9F8(uint64_t a1, void *a2)
{
  v3 = a2;
  v6 = a1 + 56;
  v4 = *(a1 + 56);
  v5 = *(v6 + 8);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10012DAA4;
  v9[3] = &unk_100AE0B60;
  v9[4] = v5;
  v10 = v3;
  v7 = v3;
  v8 = v5;
  dispatch_async(v4, v9);
}

void sub_10012DAB8(uint64_t a1, uint64_t a2, int a3)
{
  v3 = (a3 - 27) < 4 || a3 == 13;
  if (v3 && (sub_1000C0348(a2) || *(a2 + 1360) == 1))
  {
    v17 = 0;
    v16 = 0;
    v15 = 0;
    sub_1000C2364(a2, &v17 + 1, &v17, &v16, &v15);
    if ((v16 - 569) <= 0x33 && ((1 << (v16 - 57)) & 0x9500070000007) != 0 || (v16 - 781) <= 0x17 && ((1 << (v16 - 13)) & 0xF80003) != 0 || (v16 - 666) <= 5 && ((1 << (v16 + 102)) & 0x25) != 0)
    {
      v7 = sub_10053FCFC(a2);
      if (!v7)
      {
        v11 = sub_100058928();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          sub_1000E5A58(a2, v14);
          sub_10080A814();
        }

        goto LABEL_18;
      }
    }

    v10 = a1 + 56;
    v9 = *(a1 + 56);
    v8 = *(v10 + 8);
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10012DCAC;
    v12[3] = &unk_100AE1228;
    v12[4] = v8;
    v12[5] = a2;
    v13 = a3;
    v11 = v8;
    dispatch_async(v9, v12);
LABEL_18:
  }
}

void sub_10012DCC4(uint64_t a1, void *a2)
{
  v3 = a2;
  v6 = a1 + 56;
  v4 = *(a1 + 56);
  v5 = *(v6 + 8);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10012DD70;
  v9[3] = &unk_100AE0B60;
  v9[4] = v5;
  v10 = v3;
  v7 = v3;
  v8 = v5;
  dispatch_async(v4, v9);
}

void sub_10012DD84(uint64_t a1, void *a2)
{
  v3 = a2;
  v6 = a1 + 56;
  v4 = *(a1 + 56);
  v5 = *(v6 + 8);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10012DE30;
  v9[3] = &unk_100AE0B60;
  v9[4] = v5;
  v10 = v3;
  v7 = v3;
  v8 = v5;
  dispatch_async(v4, v9);
}

void sub_10012DE44(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 56);
  v2 = *(a1 + 64);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10012DECC;
  v5[3] = &unk_100AE1200;
  v5[4] = v2;
  v5[5] = a2;
  v4 = v2;
  dispatch_async(v3, v5);
}

void sub_10012DEE0(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 1360) == 1)
  {
    v4 = sub_100058928();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000E5A58(a2, __p);
      v6 = v15;
      v7 = __p[0];
      v8 = *(a2 + 1360);
      v9 = sub_10053FCFC(a2);
      v10 = v9;
      v11 = __p;
      if (v6 < 0)
      {
        v11 = v7;
      }

      *buf = 136315650;
      v17 = v11;
      if (v8)
      {
        v12 = "yes";
      }

      else
      {
        v12 = "no";
      }

      v18 = 2080;
      v19 = v12;
      v20 = 2112;
      v21 = v9;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "### Ignoring USB state changed notification for %s, connectedOveUSB %s, serialNumber %@", buf, 0x20u);
      if (v15 < 0)
      {
        operator delete(__p[0]);
      }
    }
  }

  else
  {
    v4 = *(a1 + 64);
    v5 = sub_100007EE8();
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_10012E0BC;
    v13[3] = &unk_100AE0BC0;
    v13[4] = v4;
    v13[5] = a1;
    v13[6] = a2;
    sub_10000CA94(v5, v13);
  }
}

void sub_10012E084(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_10012E0BC(void *a1)
{
  v2 = a1[5];
  os_unfair_lock_lock(&unk_100B55308);
  v3 = *(v2 + 56);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10012E164;
  v5[3] = &unk_100AE1200;
  v4 = a1[6];
  v5[4] = a1[4];
  v5[5] = v4;
  dispatch_async(v3, v5);
  os_unfair_lock_unlock(&unk_100B55308);
}

void sub_10012E1D0(uint64_t a1)
{

  operator delete();
}

void sub_10012E238(uint64_t a1)
{
  v2 = *(a1 + 16);
}

void sub_10012E274(uint64_t a1)
{

  operator delete();
}

void sub_10012E2D8(uint64_t a1)
{
  v2 = *(a1 + 8);
}

void sub_10012E314(uint64_t a1)
{

  operator delete();
}

void sub_10012E36C(id a1)
{
  v1 = os_log_create("com.apple.bluetooth", "CBPowerSourceMonitor");
  v2 = qword_100B55300;
  qword_100B55300 = v1;
}

void sub_10012E3B0(uint64_t a1, uint64_t a2)
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
        goto LABEL_6;
      }
    }
  }

  if (v5 == v4)
  {
LABEL_6:
    v6 = a2;
    sub_10012E43C((a1 + 8), v4, &v6);
    sub_1000C8CF0((a1 + 8));
  }

  os_unfair_lock_unlock(a1);
}

char *sub_10012E43C(void *a1, char *__src, char *a3)
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

void sub_10012E5D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10012EC50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v15 - 96), 8);

  _Unwind_Resume(a1);
}

void sub_10012EC84(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v6 = *(*(a1 + 32) + 8);
  obj = *(v6 + 40);
  v7 = CUDescriptionWithLevel();
  NSAppendPrintF_safe();
  objc_storeStrong((v6 + 40), obj);

  ++*(*(*(a1 + 40) + 8) + 24);
  if (*(a1 + 48) >= 11 && *(*(*(a1 + 40) + 8) + 24) >= 0x32uLL)
  {
    *a4 = 1;
  }
}

void sub_10012F144(uint64_t a1)
{
  if (*(a1 + 40))
  {
    if (dword_100B50FA0 <= 30 && (dword_100B50FA0 != -1 || _LogCategory_Initialize()))
    {
      sub_10080A9A0();
    }
  }

  else if (*(a1 + 56) == 1 && dword_100B50FA0 <= 30 && (dword_100B50FA0 != -1 || _LogCategory_Initialize()))
  {
    sub_10080AA18();
  }

  if (*(a1 + 56) == 1)
  {
    if (qword_100B51078 != -1)
    {
      sub_10080AA5C();
    }

    if (sub_100023EC0(off_100B51070, *(a1 + 48), 1, 1, 0) && dword_100B50FA0 <= 90 && (dword_100B50FA0 != -1 || _LogCategory_Initialize()))
    {
      v3 = CUPrintErrorCode();
      LogPrintF_safe();
    }
  }

  if (*(a1 + 40))
  {
    if (qword_100B51078 != -1)
    {
      sub_10080AA5C();
    }

    if (sub_10006E2A0(off_100B51070, *(a1 + 48), *(a1 + 40)))
    {
      if (dword_100B50FA0 <= 90 && (dword_100B50FA0 != -1 || _LogCategory_Initialize()))
      {
        v4 = CUPrintErrorCode();
        LogPrintF_safe();
      }

      v2 = *(a1 + 40);
      if (v2)
      {
        sub_100028D78(v2);

        operator delete();
      }
    }
  }
}

void sub_10012F3A0(uint64_t a1)
{
  obj = [CBUtil getBluetoothDebugSettingString:@"BluetoothCustomerLogging" InKey:@"PrivateDataLogging"];
  if (([*(*(a1 + 32) + 192) isEqualToString:?] & 1) == 0)
  {
    v2 = sub_10000E92C();
    byte_100B55320 = (*(*v2 + 160))(v2);
    objc_storeStrong((*(a1 + 32) + 192), obj);
  }
}

void sub_10012FA24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

uint64_t sub_1001306B0(uint64_t a1)
{
  if (dword_100B50FA0 <= 30 && (dword_100B50FA0 != -1 || _LogCategory_Initialize()))
  {
    sub_10080AA98();
  }

  if (qword_100B51078 != -1)
  {
    sub_10080AA5C();
  }

  v2 = off_100B51070;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);

  return sub_1000AE50C(v2, v3, v4);
}

void sub_100130888(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) objectForKeyedSubscript:v5];
  v8 = v6;
  v9 = v8;
  if (v7 == v8)
  {
  }

  else
  {
    if ((v8 == 0) != (v7 != 0))
    {
      v10 = [v7 isEqual:v8];

      if (v10)
      {
        goto LABEL_18;
      }
    }

    else
    {
    }

    if ([v5 length] == 7)
    {
      v11 = [v5 subdataWithRange:{1, 6}];
    }

    else
    {
      v11 = v5;
    }

    v12 = v11;
    if ([v5 length] == 7)
    {
      v13 = *[v5 bytes];
    }

    else
    {
      v13 = 0;
    }

    if (dword_100B50FA0 <= 30 && (dword_100B50FA0 != -1 || _LogCategory_Initialize()))
    {
      v14 = CUPrintNSDataAddress();
      v16 = CUPrintNSObjectMasked();
      LogPrintF_safe();
    }

    v15 = sub_100007EE8();
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_100130B64;
    v17[3] = &unk_100AE1600;
    v21 = v13;
    v18 = v5;
    v19 = v12;
    v20 = v9;
    sub_10000CA94(v15, v17);
    ++*(*(*(a1 + 40) + 8) + 24);
  }

LABEL_18:
}

void sub_100130B64(uint64_t a1)
{
  if ([*(a1 + 32) length] == 6 || objc_msgSend(*(a1 + 32), "length") == 7)
  {
    if ([*(a1 + 32) length] == 6)
    {
      v10[0] = 0;
      v2 = [*(a1 + 32) bytes];
      v3 = 0;
      v4 = v2[2];
      *&v10[1] = *v2;
      *&v10[5] = v4;
    }

    else
    {
      v5 = sub_1000AF61C(*(a1 + 32));
      v6 = sub_10009A66C(v5);
      *v10 = v6;
      v10[6] = BYTE6(v6);
      *&v10[4] = WORD2(v6);
      v3 = v6 << 48;
    }

    if (qword_100B508D0 != -1)
    {
      sub_10080AB74();
    }

    sub_1000498D4(off_100B508C8, (v10[1] << 40) | (v10[2] << 32) | (v10[3] << 24) | (v10[4] << 16) | (v10[5] << 8) | v10[6] | v3, 0, 1u, 0, 0, v11);
    v7 = sub_10004DF60(v11);
    if (qword_100B508C0 != -1)
    {
      sub_10080AB88();
    }

    if (sub_10004EE74(off_100B508B8, v7))
    {
      if (dword_100B50FA0 <= 30 && (dword_100B50FA0 != -1 || _LogCategory_Initialize()))
      {
        v8 = CUPrintNSDataAddress();
        v9 = CUPrintNSObjectMasked();
        LogPrintF_safe();
      }
    }

    else
    {
      if (qword_100B508C0 != -1)
      {
        sub_10080AB88();
      }

      sub_1007C77C0(off_100B508B8, v10);
    }
  }
}

void sub_100130DB8(_Unwind_Exception *a1)
{
  v4 = v1;

  _Unwind_Resume(a1);
}

void sub_100130DEC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(*(a1 + 32) + 72) objectForKeyedSubscript:v5];
  v8 = v6;
  v9 = v8;
  if (v7 == v8)
  {
  }

  else
  {
    if ((v8 == 0) != (v7 != 0))
    {
      v10 = [v7 isEqual:v8];

      if (v10)
      {
        goto LABEL_18;
      }
    }

    else
    {
    }

    if ([v5 length] == 7)
    {
      v11 = [v5 subdataWithRange:{1, 6}];
    }

    else
    {
      v11 = v5;
    }

    v12 = v11;
    if ([v5 length] == 7)
    {
      v13 = *[v5 bytes];
    }

    else
    {
      v13 = 0;
    }

    if (dword_100B50FA0 <= 30 && (dword_100B50FA0 != -1 || _LogCategory_Initialize()))
    {
      v14 = CUPrintNSDataAddress();
      v16 = CUPrintNSObjectMasked();
      LogPrintF_safe();
    }

    v15 = sub_100007EE8();
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_1001310CC;
    v17[3] = &unk_100AE1600;
    v18 = v5;
    v21 = v13;
    v19 = v9;
    v20 = v12;
    sub_10000CA94(v15, v17);
    ++*(*(*(a1 + 40) + 8) + 24);
  }

LABEL_18:
}

void sub_1001310CC(uint64_t a1)
{
  if ([*(a1 + 32) length] == 6 || objc_msgSend(*(a1 + 32), "length") == 7)
  {
    if ([*(a1 + 32) length] == 6)
    {
      v10[0] = 0;
      v2 = [*(a1 + 32) bytes];
      v3 = 0;
      v4 = v2[2];
      *&v10[1] = *v2;
      *&v10[5] = v4;
    }

    else
    {
      v5 = sub_1000AF61C(*(a1 + 32));
      v6 = sub_10009A66C(v5);
      *v10 = v6;
      v10[6] = BYTE6(v6);
      *&v10[4] = WORD2(v6);
      v3 = v6 << 48;
    }

    if ([*(a1 + 40) length] == 16)
    {
      if (qword_100B508D0 != -1)
      {
        sub_10080AB74();
      }

      sub_1000498D4(off_100B508C8, (v10[1] << 40) | (v10[2] << 32) | (v10[3] << 24) | (v10[4] << 16) | (v10[5] << 8) | v10[6] | v3, 0, 1u, 0, 0, v11);
      v7 = sub_10004DF60(v11);
      if (qword_100B508C0 != -1)
      {
        sub_10080AB88();
      }

      if (sub_10004EE74(off_100B508B8, v7))
      {
        if (dword_100B50FA0 <= 30 && (dword_100B50FA0 != -1 || _LogCategory_Initialize()))
        {
          v8 = CUPrintNSDataAddress();
          v9 = CUPrintNSObjectMasked();
          LogPrintF_safe();
        }
      }

      else
      {
        if (qword_100B508C0 != -1)
        {
          sub_10080AB88();
        }

        sub_1007BE07C(off_100B508B8, v10, [*(a1 + 40) bytes]);
      }
    }
  }
}

void sub_100131344(_Unwind_Exception *a1)
{
  v4 = v1;

  _Unwind_Resume(a1);
}

void sub_100131378(id a1, NSData *a2, NSData *a3, BOOL *a4)
{
  v5 = a2;
  v6 = a3;
  if ([(NSData *)v5 length]== 7)
  {
    v7 = [(NSData *)v5 subdataWithRange:1, 6];
  }

  else
  {
    v7 = v5;
  }

  v8 = v7;
  if ([(NSData *)v5 length]== 7)
  {
    [(NSData *)v5 bytes];
  }

  if (dword_100B50FA0 <= 30 && (dword_100B50FA0 != -1 || _LogCategory_Initialize()))
  {
    v9 = CUPrintNSDataAddress();
    v13 = CUPrintNSObjectMasked();
    LogPrintF_safe();
  }

  v10 = sub_100007EE8();
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1001315A0;
  v14[3] = &unk_100AE0B60;
  v11 = v5;
  v15 = v11;
  v12 = v6;
  v16 = v12;
  sub_10000CA94(v10, v14);
}

void sub_10013154C(_Unwind_Exception *a1)
{
  v6 = v5;

  _Unwind_Resume(a1);
}

void sub_1001315A0(uint64_t a1)
{
  if ([*(a1 + 32) length] == 6)
  {
    v7 = 0;
    v2 = [*(a1 + 32) bytes];
    v3 = v2[2];
    v8 = *v2;
    v9 = v3;
    if (qword_100B508D0 != -1)
    {
      sub_10080AB74();
    }

    sub_1000498D4(off_100B508C8, (v8 << 40) | (BYTE1(v8) << 32) | (BYTE2(v8) << 24) | (HIBYTE(v8) << 16) | (v9 << 8) | HIBYTE(v9), 0, 1u, 0, 0, v10);
    v4 = sub_10004DF60(v10);
    if (qword_100B508C0 != -1)
    {
      sub_10080AB88();
    }

    if (sub_10004EE74(off_100B508B8, v4))
    {
      if (dword_100B50FA0 <= 30 && (dword_100B50FA0 != -1 || _LogCategory_Initialize()))
      {
        v5 = CUPrintNSDataAddress();
        v6 = CUPrintNSObjectMasked();
        LogPrintF_safe();
      }
    }

    else
    {
      if (qword_100B508C0 != -1)
      {
        sub_10080AB88();
      }

      sub_1007C77C0(off_100B508B8, &v7);
    }
  }
}

void sub_100131774(_Unwind_Exception *a1)
{
  v4 = v2;

  _Unwind_Resume(a1);
}

void sub_100131ADC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, void *a11, void *a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, id a43)
{
  _Block_object_dispose(&a38, 8);

  _Unwind_Resume(a1);
}

void sub_100131B7C(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = [v5 irkData];
  v7 = [v6 length];

  if (v7 == 16 && [v5 keyType])
  {
    v8 = *(*(*(a1 + 56) + 8) + 40);
    v9 = [v5 irkData];
    v10 = [v8 objectForKey:v9];

    if (!v10)
    {
      v36 = 0uLL;
      v15 = [v5 irkData];
      v36 = *[v15 bytes];

      [*(a1 + 32) bytes];
      v16 = SipHash();
      v34 = v16;
      v35 = BYTE2(v16);
      v17 = [[NSData alloc] initWithBytes:&v34 length:3];
      if (([*(a1 + 40) isEqualToData:v17] & 1) == 0)
      {

        v10 = 0;
LABEL_17:

        goto LABEL_18;
      }

      v10 = *(a1 + 40);
      v18 = *(*(*(a1 + 56) + 8) + 40);
      if (!v18)
      {
        v19 = objc_alloc_init(NSMutableDictionary);
        v20 = *(*(a1 + 56) + 8);
        v21 = *(v20 + 40);
        *(v20 + 40) = v19;

        v18 = *(*(*(a1 + 56) + 8) + 40);
      }

      v22 = *(a1 + 40);
      v23 = [v5 irkData];
      [v18 setObject:v22 forKeyedSubscript:v23];

      if (!v10)
      {
        goto LABEL_17;
      }
    }

    if (dword_100B50FA0 <= 20 && (dword_100B50FA0 != -1 || _LogCategory_Initialize()))
    {
      v11 = [v5 irkData];
      v12 = CUPrintNSObjectMasked();
      v13 = [v5 btAddressData];
      v14 = CUPrintNSDataAddress();
      CUPrintNSDataAddress();
      v33 = v32 = v14;
      v31 = v12;
      LogPrintF_safe();
    }

    v24 = [[NSData alloc] initWithData:*(a1 + 32)];
    [v5 setBtAddressData:v24];

    v25 = *(*(*(a1 + 64) + 8) + 40);
    if (!v25)
    {
      v26 = [NSMutableArray alloc];
      v27 = [*(a1 + 48) oobKeys];
      v28 = [v26 initWithArray:v27];
      v29 = *(*(a1 + 64) + 8);
      v30 = *(v29 + 40);
      *(v29 + 40) = v28;

      v25 = *(*(*(a1 + 64) + 8) + 40);
    }

    [v25 replaceObjectAtIndex:a3 withObject:{v5, v31, v32, v33}];
    goto LABEL_17;
  }

LABEL_18:
}

void *sub_1001321E4(uint64_t a1)
{
  v2 = *(a1 + 32);
  result = *(a1 + 40);
  if (v2 == result[12])
  {
    return [result _rescanTimerFired];
  }

  return result;
}

void sub_1001321FC(uint64_t a1)
{
  if (qword_100B51098 != -1)
  {
    sub_10080ABCC();
  }

  v2 = qword_100B51090;
  v3 = *(a1 + 32);

  sub_10048A1BC(v2, v3);
}

void sub_100133B94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, atomic_uint *a40, uint64_t a41, atomic_uint *a42)
{
  if (a40)
  {
    sub_10000C808(a40);
  }

  if (a42)
  {
    sub_10000C808(a42);
  }

  _Unwind_Resume(a1);
}

void sub_10013797C(_Unwind_Exception *a1)
{
  _Block_object_dispose(&STACK[0x208], 8);

  _Unwind_Resume(a1);
}

void sub_100137AC8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if ([v5 length] == 7)
  {
    v7 = [v5 subdataWithRange:{1, 6}];
  }

  else
  {
    v7 = v5;
  }

  v8 = v7;
  if ([v5 length] == 7)
  {
    [v5 bytes];
  }

  v9 = *(*(a1 + 32) + 8);
  v10 = *(v9 + 40);
  v11 = CUPrintNSDataAddress();
  v12 = CUPrintNSObjectMasked();
  NSAppendPrintF_safe();
  objc_storeStrong((v9 + 40), v10);

  *(*(*(a1 + 40) + 8) + 24) = 0;
}

void sub_100137C74(uint64_t a1)
{
  if (qword_100B51088 != -1)
  {
    sub_10080AA70();
  }

  v2 = qword_100B51080;
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  sub_1006A3C98(v2, v3, v4, 0);
}

void sub_100137CCC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = +[NSNumber numberWithChar:](NSNumber, "numberWithChar:", [v6 bleRSSIThresholdHint]);
  v8 = +[NSNumber numberWithChar:](NSNumber, "numberWithChar:", [v6 bleSensorRssiIncreaseScanThreshold]);
  v9 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v6 bleSensorIncreaseScanRate]);
  v10 = [v6 bleSensorEnableRssiIncreaseScan];
  v11 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v6 bleSensorIncreaseScanTimeout]);
  v23 = v10;
  v12 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v6 bleSensorTimeoutBetweenIncreaseScan]);
  if ([v9 intValue] == 75)
  {
    v13 = 30;
    v14 = 40;
  }

  else if ([v9 intValue] == 50)
  {
    v13 = 30;
    v14 = 60;
  }

  else if ([v9 intValue] == 10)
  {
    v13 = 300;
    v14 = 30;
  }

  else
  {
    v15 = [v9 intValue];
    if (v15 == 3)
    {
      v14 = 30;
    }

    else
    {
      v14 = 0;
    }

    if (v15 == 3)
    {
      v13 = 966;
    }

    else
    {
      v13 = 0;
    }
  }

  if (([*(*(a1 + 32) + 120) containsObject:v5] & 1) == 0)
  {
    v24 = v8;
    v21 = v7;
    v22 = v5;
    v16 = [v7 intValue];
    if (v16)
    {
      v17 = v16;
    }

    else
    {
      v17 = -127;
    }

    if (dword_100B50FA0 <= 30 && (dword_100B50FA0 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF_safe();
    }

    v18 = *(*(a1 + 32) + 128);
    v19 = sub_100007EE8();
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_100138088;
    v25[3] = &unk_100AE1700;
    v30 = v18;
    v5 = v22;
    v26 = v22;
    v35 = *(a1 + 52);
    v20 = *(a1 + 48);
    v31 = v17;
    v32 = v20;
    v36 = v23;
    v27 = v24;
    v33 = v13;
    v34 = v14;
    v28 = v11;
    v29 = v12;
    sub_10000CA94(v19, v25);
    ++*(*(*(a1 + 40) + 8) + 24);

    v7 = v21;
    v8 = v24;
  }
}

void sub_100138088(uint64_t a1)
{
  if (qword_100B51088 != -1)
  {
    sub_10080AA70();
  }

  if (sub_1006A24A0(qword_100B51080, *(a1 + 64), *(a1 + 32), 0, 0, *(a1 + 84), *(a1 + 72), *(a1 + 76), 0, 0, *(a1 + 85), [*(a1 + 40) intValue], *(a1 + 80), HIWORD(*(a1 + 80)), objc_msgSend(*(a1 + 48), "intValue"), objc_msgSend(*(a1 + 56), "intValue")) && dword_100B50FA0 <= 90 && (dword_100B50FA0 != -1 || _LogCategory_Initialize()))
  {
    v2 = CUPrintErrorCode();
    LogPrintF_safe();
  }
}

void sub_1001383C4(uint64_t a1)
{
  if (qword_100B51098 != -1)
  {
    sub_10080ABCC();
  }

  v2 = qword_100B51090;
  v3 = *(a1 + 32);

  sub_10048C814(v2, v3);
}

id sub_1001384A0(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 32);
  if (v1 == 1)
  {
    return [v2 _aopBTBufferDrained];
  }

  else
  {
    return [v2 _advBufferDrained];
  }
}

void sub_1001384B8()
{
  if (dword_100B50FA0 <= 30 && (dword_100B50FA0 != -1 || _LogCategory_Initialize()))
  {
    sub_10080AC4C();
  }
}

void sub_100138504()
{
  if (dword_100B50FA0 <= 30 && (dword_100B50FA0 != -1 || _LogCategory_Initialize()))
  {
    sub_10080AC68();
  }
}

void sub_100138550()
{
  if (dword_100B50FA0 <= 30 && (dword_100B50FA0 != -1 || _LogCategory_Initialize()))
  {
    sub_10080AC84();
  }
}

void sub_10013859C(uint64_t a1, void *a2, int a3)
{
  v5 = a2;
  if (dword_100B50FA0 <= 30 && (dword_100B50FA0 != -1 || _LogCategory_Initialize()))
  {
    if ((a3 - 1) > 2)
    {
      v6 = "?";
    }

    else
    {
      v6 = off_100AE18C8[(a3 - 1)];
    }

    v15 = v5;
    v16 = v6;
    LogPrintF_safe();
  }

  if ((a3 & 0xFFFFFFFD) == 1)
  {
    v7 = objc_alloc_init(CBDevice);
    v8 = [v5 UUIDString];
    [v7 setIdentifier:v8];

    [v7 setDiscoveryFlags:0x20000000];
    [v7 setInternalFlags:2];
    LODWORD(v8) = byte_100B55320;
    v9 = [v7 internalFlags];
    if (v8)
    {
      v10 = 0x20000;
    }

    else
    {
      v10 = 0;
    }

    [v7 setInternalFlags:{v10 | v9, v15, v16}];
    if (qword_100B508D0 != -1)
    {
      sub_10080AB74();
    }

    v11 = sub_100046458(off_100B508C8, v5, 0);
    if (v11)
    {
      v21[0] = BYTE5(v11);
      v21[1] = BYTE4(v11);
      v21[2] = BYTE3(v11);
      v21[3] = BYTE2(v11);
      v21[4] = BYTE1(v11);
      v21[5] = v11;
      v12 = [[NSData alloc] initWithBytes:v21 length:6];
      [v7 setBtAddressData:v12];
    }

    v13 = *(a1 + 16);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10013885C;
    block[3] = &unk_100AE1200;
    block[4] = v7;
    block[5] = a1;
    dispatch_async(v13, block);
    goto LABEL_20;
  }

  if (a3 == 2)
  {
    v14 = *(a1 + 16);
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_100138868;
    v17[3] = &unk_100AE1200;
    v19 = a1;
    v18 = v5;
    dispatch_async(v14, v17);
    v7 = v18;
LABEL_20:
  }
}

uint64_t sub_100138880(uint64_t a1)
{
  v4 = (a1 + 144);
  sub_10000CF30(&v4);
  sub_10000CEDC(a1 + 112, *(a1 + 120));
  v2 = *(a1 + 88);
  if (v2)
  {
    *(a1 + 96) = v2;
    operator delete(v2);
  }

  v4 = (a1 + 64);
  sub_10000CFB0(&v4);

  return a1;
}

uint64_t sub_1001388F0(uint64_t a1)
{
  *(a1 + 56) = &off_100AE0A78;
  v2 = *(a1 + 64);
  if (v2)
  {
    sub_10000C808(v2);
  }

  *(a1 + 40) = &off_100AE0A78;
  v3 = *(a1 + 48);
  if (v3)
  {
    sub_10000C808(v3);
  }

  return a1;
}

uint64_t sub_100138984(uint64_t a1)
{
  *(a1 + 32) = &off_100AE0A78;
  v2 = *(a1 + 40);
  if (v2)
  {
    sub_10000C808(v2);
  }

  *(a1 + 16) = &off_100AE0A78;
  v3 = *(a1 + 24);
  if (v3)
  {
    sub_10000C808(v3);
  }

  return a1;
}

uint64_t sub_100138C88(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 96) = 0;
  *(a1 + 112) = 0u;
  v2 = (a1 + 112);
  *(a1 + 128) = 0u;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 144) = 1065353216;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  v3 = *(a1 + 72);
  *(a1 + 72) = 0;

  v8 = 7;
  v9 = &v8;
  v4 = sub_100138E1C(v2, &v8);
  *(v4 + 20) = 3263299584;
  *(v4 + 28) = 0;
  v4[4] = 0xC2340000C2820000;
  v8 = 16;
  v9 = &v8;
  v5 = sub_100138E1C(v2, &v8);
  *(v5 + 20) = 3264217088;
  *(v5 + 28) = 0;
  v5[4] = 0xC2700000C2A00000;
  v8 = 22;
  v9 = &v8;
  v6 = sub_100138E1C(v2, &v8);
  *(v6 + 20) = 3264217088;
  *(v6 + 28) = 0;
  v6[4] = 0xC2700000C2A00000;
  return a1;
}

void sub_100138DC8(_Unwind_Exception *a1)
{
  sub_1001392B8(v2);

  v4 = *(v1 + 8);
  if (v4)
  {
    *(v1 + 16) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(a1);
}

uint64_t **sub_100138E1C(void *a1, unsigned __int8 *a2)
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
    if (*&v3 <= v2)
    {
      v5 = v2 % a1[1];
    }
  }

  else
  {
    v5 = (v3.i32[0] - 1) & v2;
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

  if (*(v7 + 16) != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

void sub_100139064(uint64_t a1, size_t __n)
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

      sub_100139154(a1, prime);
    }
  }
}

void sub_100139154(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    sub_1000C7698();
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  *(a1 + 8) = 0;
}

uint64_t sub_1001392B8(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

void sub_10013936C(uint64_t a1, void *__p)
{
  if (*(a1 + 8) == 1)
  {
    __p[7] = &off_100AE0A78;
    v3 = __p[8];
    if (v3)
    {
      sub_10000C808(v3);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

void sub_100139D64(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  obj = *(v1 + 40);
  NSAppendPrintF_safe();
  objc_storeStrong((v1 + 40), obj);
}

void sub_100139DB4(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  obj = *(v1 + 40);
  NSAppendPrintF_safe();
  objc_storeStrong((v1 + 40), obj);
}

void sub_100139E04(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  obj = *(v1 + 40);
  NSAppendPrintF_safe();
  objc_storeStrong((v1 + 40), obj);
}

void sub_10013A1B4(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    free(v1);
  }
}

void sub_10013A430(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = v3;
  if (dword_100B510A0 <= 30)
  {
    if (dword_100B510A0 != -1 || (v4 = _LogCategory_Initialize(), v3 = v5, v4))
    {
      sub_10080C928();
      v3 = v5;
    }
  }

  if ((*(a1 + 44) & 1) == 0)
  {
    [*(a1 + 32) invalidate];
    v3 = v5;
  }
}

void sub_10013ABCC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (*(a1 + 32) == *(*(a1 + 40) + 152))
  {
    if (v3)
    {
      if (dword_100B510A0 > 90)
      {
        goto LABEL_2;
      }

      v7 = v3;
      if (dword_100B510A0 == -1)
      {
        v5 = _LogCategory_Initialize();
        v4 = v7;
        if (!v5)
        {
          goto LABEL_2;
        }
      }

      sub_10080CCA0();
    }

    else
    {
      if (dword_100B510A0 > 30)
      {
        goto LABEL_2;
      }

      v7 = 0;
      if (dword_100B510A0 == -1)
      {
        v6 = _LogCategory_Initialize();
        v4 = 0;
        if (!v6)
        {
          goto LABEL_2;
        }
      }

      sub_10080CD0C();
    }

    v4 = v7;
  }

LABEL_2:
}

void sub_10013ACA0(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (dword_100B510A0 <= 20 && (dword_100B510A0 != -1 || _LogCategory_Initialize()))
  {
    sub_10080CD50(v7, v9);
  }

  v10 = v7;
  if (!v10 || v9)
  {
    sub_10080CE30(a1, v9 != 0, v9);
  }

  else
  {
    v11 = _CFXPCCreateXPCObjectFromCFObject();
    if (v11)
    {
      v12 = CUXPCDictionaryCreateReply();
      applier[0] = _NSConcreteStackBlock;
      applier[1] = 3221225472;
      applier[2] = sub_10013AE00;
      applier[3] = &unk_100AE2078;
      applier[4] = v12;
      xpc_dictionary_apply(v11, applier);
      [*(a1 + 32) _xpcSendReply:v12];
    }

    else
    {
      sub_10080CDC8(a1);
    }
  }
}

void sub_10013AE20(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (dword_100B510A0 <= 20)
  {
    v6 = v3;
    if (dword_100B510A0 != -1 || (v5 = _LogCategory_Initialize(), v4 = v6, v5))
    {
      sub_10080CEC4(a1, v6);
      v4 = v6;
    }
  }
}

void sub_10013B93C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (dword_100B510A0 <= 20)
  {
    v6 = v3;
    if (dword_100B510A0 != -1 || (v5 = _LogCategory_Initialize(), v4 = v6, v5))
    {
      sub_10080D1A8(a1, v6);
      v4 = v6;
    }
  }
}

id sub_10013C390(id result)
{
  v1 = *(result + 5);
  if (*(result + 4) == v1[9])
  {
    v2 = [*(result + 5) _powerStateForClient];

    return [v1 _xpcPowerStateChanged:v2];
  }

  return result;
}

void sub_10013C3E8(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (*(a1 + 32) != *(v2 + 72))
  {
    return;
  }

  v4 = [*(v2 + 136) addressMonitor];
  v5 = [v4 connectableAddressData];

  v6 = [*(a1 + 32) advertisingAddressDataConnectable];
  v25 = v5;
  v7 = v6;
  if (v25 == v7)
  {

    goto LABEL_7;
  }

  if ((v25 != 0) != (v7 == 0))
  {
    v8 = [v25 isEqual:v7];

    if ((v8 & 1) == 0)
    {
      goto LABEL_9;
    }

LABEL_7:
    v9 = 0;
    goto LABEL_10;
  }

LABEL_9:
  [*(a1 + 32) setAdvertisingAddressDataConnectable:v25];
  v9 = 1;
LABEL_10:
  v10 = [*(*(a1 + 40) + 136) addressMonitor];
  v11 = [v10 nonConnectableAddressData];

  v12 = [*(a1 + 32) advertisingAddressDataNonConnectable];
  v13 = v11;
  v14 = v12;
  v15 = v14;
  if (v13 == v14)
  {

    goto LABEL_15;
  }

  if ((v13 != 0) != (v14 == 0))
  {
    v16 = [v13 isEqual:v14];

    if ((v16 & 1) == 0)
    {
      goto LABEL_17;
    }

LABEL_15:
    v17 = 0;
    goto LABEL_18;
  }

LABEL_17:
  [*(a1 + 32) setAdvertisingAddressDataNonConnectable:v13];
  v17 = 1;
LABEL_18:
  v18 = [*(*(a1 + 40) + 136) addressMonitor];
  v19 = [v18 nonConnectableSecondaryAddressData];

  v20 = [*(a1 + 32) advertisingAddressDataNonConnectableSecondary];
  v21 = v19;
  v22 = v20;
  v23 = v22;
  if (v21 == v22)
  {

    goto LABEL_23;
  }

  if ((v21 != 0) != (v22 == 0))
  {
    v24 = [v21 isEqual:v22];

    if ((v24 & 1) == 0)
    {
      goto LABEL_26;
    }

LABEL_23:
    if ((v9 | v17) != 1)
    {
      goto LABEL_28;
    }

    goto LABEL_27;
  }

LABEL_26:
  [*(a1 + 32) setAdvertisingAddressDataNonConnectableSecondary:v21];
LABEL_27:
  [*(a1 + 40) _xpcAdvertisingAddressChanged];
LABEL_28:
}

void sub_10013C9A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  (*(v15 + 16))(v15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_10013C9E0(void *a1)
{
  v2 = a1[6];
  result = *(*(v2 + 8) + 40);
  if (result)
  {
    if (dword_100B510A0 <= 90)
    {
      if (dword_100B510A0 != -1 || (v4 = _LogCategory_Initialize(), v2 = a1[6], v4))
      {
        v8 = CUPrintNSError();
        LogPrintF_safe();

        v2 = a1[6];
      }
    }

    v5 = *(*(v2 + 8) + 40);
    v6 = a1[4];
    v7 = a1[5];

    return [v6 _xpcSendReplyError:v5 request:v7];
  }

  return result;
}

void sub_10013D06C(_Unwind_Exception *a1)
{
  (*(v1 + 16))(v1);
  _Block_object_dispose((v2 - 152), 8);
  _Unwind_Resume(a1);
}

id sub_10013D0C0(void *a1)
{
  v2 = a1[6];
  result = *(*(v2 + 8) + 40);
  if (result)
  {
    if (dword_100B510A0 <= 90)
    {
      if (dword_100B510A0 != -1 || (v4 = _LogCategory_Initialize(), v2 = a1[6], v4))
      {
        v8 = CUPrintNSError();
        LogPrintF_safe();

        v2 = a1[6];
      }
    }

    v5 = *(*(v2 + 8) + 40);
    v6 = a1[4];
    v7 = a1[5];

    return [v6 _xpcSendReplyError:v5 request:v7];
  }

  return result;
}

void *sub_10013D19C(uint64_t a1)
{
  v2 = *(a1 + 32);
  result = *(a1 + 40);
  if (v2 == result[10])
  {
    return [result _xpcCBConnection:? pairingCompletedWithDevice:? error:?];
  }

  return result;
}

void *sub_10013D1BC(uint64_t a1)
{
  v2 = *(a1 + 32);
  result = *(a1 + 40);
  if (v2 == result[10])
  {
    return [result _xpcCBConnection:? pairingPromptWithPairingInfo:?];
  }

  return result;
}

void *sub_10013D1D8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  result = *(a1 + 40);
  if (v3 == result[10])
  {
    return [result _xpcSendEvent:a2];
  }

  return result;
}

void sub_10013D1F4(uint64_t a1, void *a2)
{
  v3 = a2;
  v7 = v3;
  if (v3)
  {
    v4 = v3;
    if (dword_100B510A0 <= 90)
    {
      if (dword_100B510A0 != -1 || (v5 = _LogCategory_Initialize(), v4 = v7, v5))
      {
        sub_10080D644();
        v4 = v7;
      }
    }

    [*(a1 + 40) _xpcSendReplyError:v4 request:*(a1 + 48)];
  }

  else
  {
    if (dword_100B510A0 <= 30 && (dword_100B510A0 != -1 || _LogCategory_Initialize()))
    {
      sub_10080D6B0();
    }

    v6 = CUXPCDictionaryCreateReply();
    [*(a1 + 40) _xpcSendReply:v6];
  }
}

void sub_10013D2EC(uint64_t a1, void *a2)
{
  v3 = a2;
  v7 = v3;
  if (v3)
  {
    v4 = v3;
    if (dword_100B510A0 <= 90)
    {
      if (dword_100B510A0 != -1 || (v5 = _LogCategory_Initialize(), v4 = v7, v5))
      {
        sub_10080D6F0();
        v4 = v7;
      }
    }

    [*(a1 + 40) _xpcSendReplyError:v4 request:*(a1 + 48)];
  }

  else
  {
    if (dword_100B510A0 <= 30 && (dword_100B510A0 != -1 || _LogCategory_Initialize()))
    {
      sub_10080D75C();
    }

    v6 = CUXPCDictionaryCreateReply();
    [*(a1 + 40) _xpcSendReply:v6];
  }
}

void sub_10013D6F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  (*(v13 + 16))(v13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_10013D740(void *a1)
{
  v2 = a1[6];
  result = *(*(v2 + 8) + 40);
  if (result)
  {
    if (dword_100B510A0 <= 90)
    {
      if (dword_100B510A0 != -1 || (v4 = _LogCategory_Initialize(), v2 = a1[6], v4))
      {
        v8 = CUPrintNSError();
        LogPrintF_safe();

        v2 = a1[6];
      }
    }

    v5 = *(*(v2 + 8) + 40);
    v6 = a1[4];
    v7 = a1[5];

    return [v6 _xpcSendReplyError:v5 request:v7];
  }

  return result;
}

void sub_10013DCB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  (*(v15 + 16))(v15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_10013DCF8(void *a1)
{
  v2 = a1[6];
  result = *(*(v2 + 8) + 40);
  if (result)
  {
    if (dword_100B510A0 <= 90)
    {
      if (dword_100B510A0 != -1 || (v4 = _LogCategory_Initialize(), v2 = a1[6], v4))
      {
        v8 = CUPrintNSError();
        LogPrintF_safe();

        v2 = a1[6];
      }
    }

    v5 = *(*(v2 + 8) + 40);
    v6 = a1[4];
    v7 = a1[5];

    return [v6 _xpcSendReplyError:v5 request:v7];
  }

  return result;
}

id sub_10013E1BC(id result)
{
  v1 = *(result + 5);
  if (*(result + 4) == v1[11])
  {
    v2 = [*(result + 5) _powerStateForClient];

    return [v1 _xpcPowerStateChanged:v2];
  }

  return result;
}

void sub_10013E214(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (*(a1 + 32) == *(v1 + 88))
  {
    v2 = [*(v1 + 136) stackController];
    [v1 _xpcDiscoverableStateChanged:{objc_msgSend(v2, "discoverableState")}];
  }
}

void sub_10013E28C(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (*(a1 + 32) == *(v1 + 88))
  {
    v2 = [*(v1 + 136) stackController];
    [v1 _xpcInquiryStateChanged:{objc_msgSend(v2, "inquiryState")}];
  }
}

void *sub_10013E304(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(a1 + 32);
  result = *(a1 + 40);
  if (v6 == result[11])
  {
    return [result _xpcReceivedRelayMessageType:a4 messageData:a5 conduitDevice:a2 sourceDevice:a3];
  }

  return result;
}

void *sub_10013E32C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  result = *(a1 + 40);
  if (v3 == result[11])
  {
    return [result _xpcTipiChanged:a2];
  }

  return result;
}

void sub_10013F0C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  (*(a5 + 16))();
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_10013F148(void *a1)
{
  v2 = a1[6];
  result = *(*(v2 + 8) + 40);
  if (result)
  {
    if (dword_100B510A0 <= 90)
    {
      if (dword_100B510A0 != -1 || (v4 = _LogCategory_Initialize(), v2 = a1[6], v4))
      {
        v8 = CUPrintNSError();
        LogPrintF_safe();

        v2 = a1[6];
      }
    }

    v5 = *(*(v2 + 8) + 40);
    v6 = a1[4];
    v7 = a1[5];

    return [v6 _xpcSendReplyError:v5 request:v7];
  }

  return result;
}

void sub_10013F514(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  (*(v14 + 16))(v14);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_10013F554(void *a1)
{
  v2 = a1[6];
  result = *(*(v2 + 8) + 40);
  if (result)
  {
    if (dword_100B510A0 <= 90)
    {
      if (dword_100B510A0 != -1 || (v4 = _LogCategory_Initialize(), v2 = a1[6], v4))
      {
        v8 = CUPrintNSError();
        LogPrintF_safe();

        v2 = a1[6];
      }
    }

    v5 = *(*(v2 + 8) + 40);
    v6 = a1[4];
    v7 = a1[5];

    return [v6 _xpcSendReplyError:v5 request:v7];
  }

  return result;
}

void sub_10013F904(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_10013F948(void *a1)
{
  v2 = a1[6];
  result = *(*(v2 + 8) + 40);
  if (result)
  {
    if (dword_100B510A0 <= 90)
    {
      if (dword_100B510A0 != -1 || (v4 = _LogCategory_Initialize(), v2 = a1[6], v4))
      {
        v8 = CUPrintNSError();
        LogPrintF_safe();

        v2 = a1[6];
      }
    }

    v5 = *(*(v2 + 8) + 40);
    v6 = a1[4];
    v7 = a1[5];

    return [v6 _xpcSendReplyError:v5 request:v7];
  }

  return result;
}

void sub_100140234(_Unwind_Exception *a1)
{
  (*(v1 + 16))(v1);
  _Block_object_dispose((v2 - 160), 8);
  _Unwind_Resume(a1);
}

id sub_10014028C(void *a1)
{
  v2 = a1[6];
  result = *(*(v2 + 8) + 40);
  if (result)
  {
    if (dword_100B510A0 <= 90)
    {
      if (dword_100B510A0 != -1 || (v4 = _LogCategory_Initialize(), v2 = a1[6], v4))
      {
        v8 = CUPrintNSError();
        LogPrintF_safe();

        v2 = a1[6];
      }
    }

    v5 = *(*(v2 + 8) + 40);
    v6 = a1[4];
    v7 = a1[5];

    return [v6 _xpcSendReplyError:v5 request:v7];
  }

  return result;
}

void sub_100140368(uint64_t a1, void *a2)
{
  v3 = a2;
  v6 = v3;
  if (dword_100B510A0 <= 30)
  {
    if (dword_100B510A0 != -1 || (v4 = _LogCategory_Initialize(), v3 = v6, v4))
    {
      sub_10080DA50();
      v3 = v6;
      if (v6)
      {
        goto LABEL_5;
      }

LABEL_7:
      v5 = CUXPCDictionaryCreateReply();
      if (v5)
      {
        [*(a1 + 48) _xpcSendReply:v5];
      }

      else
      {
        sub_10080DAD8();
      }

      goto LABEL_10;
    }
  }

  if (!v3)
  {
    goto LABEL_7;
  }

LABEL_5:
  [*(a1 + 48) _xpcSendReplyError:v3 request:*(a1 + 56)];
LABEL_10:
}

id sub_100140760(void *a1)
{
  v2 = a1[6];
  result = *(*(v2 + 8) + 40);
  if (result)
  {
    if (dword_100B510A0 <= 90)
    {
      if (dword_100B510A0 != -1 || (v4 = _LogCategory_Initialize(), v2 = a1[6], v4))
      {
        v8 = CUPrintNSError();
        LogPrintF_safe();

        v2 = a1[6];
      }
    }

    v5 = *(*(v2 + 8) + 40);
    v6 = a1[4];
    v7 = a1[5];

    return [v6 _xpcSendReplyError:v5 request:v7];
  }

  return result;
}

void sub_10014083C(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  if (dword_100B510A0 <= 30 && (dword_100B510A0 != -1 || _LogCategory_Initialize()))
  {
    sub_10080DB38();
  }

  v6 = v5;
  if (v6)
  {
    [*(a1 + 48) _xpcSendReplyError:v6 request:*(a1 + 56)];
  }

  else if (v10)
  {
    v7 = CUXPCDictionaryCreateReply();
    if (v7)
    {
      CUXPCEncodeObject();
      [*(a1 + 48) _xpcSendReply:v7];
    }

    else
    {
      sub_10080DBA8();
    }
  }

  else
  {
    v8 = *(a1 + 48);
    v9 = CBErrorF();
    [v8 _xpcSendReplyError:v9 request:*(a1 + 56)];
  }
}

void sub_100142AA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  (*(a17 + 16))();
  _Block_object_dispose(&STACK[0x368], 8);
  _Unwind_Resume(a1);
}

id sub_100142B64(void *a1)
{
  v2 = a1[6];
  result = *(*(v2 + 8) + 40);
  if (result)
  {
    if (dword_100B510A0 <= 90)
    {
      if (dword_100B510A0 != -1 || (v4 = _LogCategory_Initialize(), v2 = a1[6], v4))
      {
        v8 = CUPrintNSError();
        LogPrintF_safe();

        v2 = a1[6];
      }
    }

    v5 = *(*(v2 + 8) + 40);
    v6 = a1[4];
    v7 = a1[5];

    return [v6 _xpcSendReplyError:v5 request:v7];
  }

  return result;
}

void sub_100142EF0()
{
  if (dword_100B510A0 <= 30 && (dword_100B510A0 != -1 || _LogCategory_Initialize()))
  {
    sub_10080DC40();
  }
}

void sub_100142F4C(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = *(a1 + 32);
  v4 = [*(*(a1 + 40) + 136) testAdvertiser];

  v5 = v7;
  if (v3 == v4)
  {
    if (v7)
    {
      if (dword_100B510A0 <= 30 && (dword_100B510A0 != -1 || _LogCategory_Initialize()))
      {
        sub_10080DC80();
      }

      [*(a1 + 32) invalidate];
      [*(*(a1 + 40) + 136) setTestAdvertiser:0];
      goto LABEL_7;
    }

    if (dword_100B510A0 <= 30)
    {
      if (dword_100B510A0 != -1 || (v6 = _LogCategory_Initialize(), v5 = 0, v6))
      {
        sub_10080DCDC();
LABEL_7:
        v5 = v7;
      }
    }
  }
}

void sub_1001431BC(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = *(a1 + 32);
  v4 = [*(*(a1 + 40) + 136) testAssertion];

  v5 = v7;
  if (v3 == v4)
  {
    if (v7)
    {
      if (dword_100B510A0 <= 30 && (dword_100B510A0 != -1 || _LogCategory_Initialize()))
      {
        sub_10080DD58();
      }

      [*(a1 + 32) invalidate];
      [*(*(a1 + 40) + 136) setTestAssertion:0];
      goto LABEL_7;
    }

    if (dword_100B510A0 <= 30)
    {
      if (dword_100B510A0 != -1 || (v6 = _LogCategory_Initialize(), v5 = 0, v6))
      {
        sub_10080DDB4();
LABEL_7:
        v5 = v7;
      }
    }
  }
}

void sub_100143518(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = *(a1 + 32);
  v4 = [*(*(a1 + 40) + 136) testDiscovery];

  if (v3 == v4 && dword_100B510A0 <= 30 && (dword_100B510A0 != -1 || _LogCategory_Initialize()))
  {
    sub_10080DE30();
  }
}

void sub_1001435B4(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = *(a1 + 32);
  v4 = [*(*(a1 + 40) + 136) testDiscovery];

  if (v3 == v4 && dword_100B510A0 <= 30 && (dword_100B510A0 != -1 || _LogCategory_Initialize()))
  {
    sub_10080DE70();
  }
}

void sub_100143650()
{
  if (dword_100B510A0 <= 30 && (dword_100B510A0 != -1 || _LogCategory_Initialize()))
  {
    sub_10080DEB0();
  }
}

void sub_1001436AC(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = *(a1 + 32);
  v4 = [*(*(a1 + 40) + 136) testDiscovery];

  v5 = v7;
  if (v3 == v4)
  {
    if (v7)
    {
      if (dword_100B510A0 <= 30 && (dword_100B510A0 != -1 || _LogCategory_Initialize()))
      {
        sub_10080DEF0();
      }

      [*(a1 + 32) invalidate];
      [*(*(a1 + 40) + 136) setTestDiscovery:0];
      goto LABEL_7;
    }

    if (dword_100B510A0 <= 30)
    {
      if (dword_100B510A0 != -1 || (v6 = _LogCategory_Initialize(), v5 = 0, v6))
      {
        sub_10080DF4C();
LABEL_7:
        v5 = v7;
      }
    }
  }
}

void sub_100143A54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  (*(v11 + 16))(v11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_100143A98(void *a1)
{
  v2 = a1[6];
  result = *(*(v2 + 8) + 40);
  if (result)
  {
    if (dword_100B510A0 <= 90)
    {
      if (dword_100B510A0 != -1 || (v4 = _LogCategory_Initialize(), v2 = a1[6], v4))
      {
        v8 = CUPrintNSError();
        LogPrintF_safe();

        v2 = a1[6];
      }
    }

    v5 = *(*(v2 + 8) + 40);
    v6 = a1[4];
    v7 = a1[5];

    return [v6 _xpcSendReplyError:v5 request:v7];
  }

  return result;
}

void sub_100144368(uint64_t a1, void *a2)
{
  v3 = a2;
  v7 = v3;
  if (!v3)
  {
    reply = xpc_dictionary_create_reply(*(a1 + 40));
    if (dword_100B510A0 <= 30 && (dword_100B510A0 != -1 || _LogCategory_Initialize()))
    {
      sub_10080E178();
      if (reply)
      {
        goto LABEL_10;
      }
    }

    else if (reply)
    {
LABEL_10:
      [*(a1 + 32) _xpcSendReply:reply];
LABEL_11:

      goto LABEL_12;
    }

    sub_10080E200();
    goto LABEL_11;
  }

  v4 = v3;
  if (dword_100B510A0 <= 90)
  {
    if (dword_100B510A0 != -1 || (v5 = _LogCategory_Initialize(), v4 = v7, v5))
    {
      sub_10080E0F0();
      v4 = v7;
    }
  }

  [*(a1 + 32) _xpcSendReplyError:v4 request:*(a1 + 40)];
LABEL_12:
}

void sub_100144470(uint64_t a1, void *a2)
{
  v3 = a2;
  v7 = v3;
  if (!v3)
  {
    reply = xpc_dictionary_create_reply(*(a1 + 40));
    if (dword_100B510A0 <= 30 && (dword_100B510A0 != -1 || _LogCategory_Initialize()))
    {
      sub_10080E2E8();
      if (reply)
      {
        goto LABEL_10;
      }
    }

    else if (reply)
    {
LABEL_10:
      [*(a1 + 32) _xpcSendReply:reply];
LABEL_11:

      goto LABEL_12;
    }

    sub_10080E370();
    goto LABEL_11;
  }

  v4 = v3;
  if (dword_100B510A0 <= 90)
  {
    if (dword_100B510A0 != -1 || (v5 = _LogCategory_Initialize(), v4 = v7, v5))
    {
      sub_10080E260();
      v4 = v7;
    }
  }

  [*(a1 + 32) _xpcSendReplyError:v4 request:*(a1 + 40)];
LABEL_12:
}

void sub_100144908(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  (*(v11 + 16))(v11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_100144948(void *a1)
{
  v2 = a1[6];
  result = *(*(v2 + 8) + 40);
  if (result)
  {
    if (dword_100B510A0 <= 90)
    {
      if (dword_100B510A0 != -1 || (v4 = _LogCategory_Initialize(), v2 = a1[6], v4))
      {
        v8 = CUPrintNSError();
        LogPrintF_safe();

        v2 = a1[6];
      }
    }

    v5 = *(*(v2 + 8) + 40);
    v6 = a1[4];
    v7 = a1[5];

    return [v6 _xpcSendReplyError:v5 request:v7];
  }

  return result;
}

void sub_10014502C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, char a47)
{
  (*(a10 + 16))();
  _Block_object_dispose(&a47, 8);
  _Unwind_Resume(a1);
}

id sub_1001450A4(void *a1)
{
  v2 = a1[6];
  result = *(*(v2 + 8) + 40);
  if (result)
  {
    if (dword_100B510A0 <= 90)
    {
      if (dword_100B510A0 != -1 || (v4 = _LogCategory_Initialize(), v2 = a1[6], v4))
      {
        v8 = CUPrintNSError();
        LogPrintF_safe();

        v2 = a1[6];
      }
    }

    v5 = *(*(v2 + 8) + 40);
    v6 = a1[4];
    v7 = a1[5];

    return [v6 _xpcSendReplyError:v5 request:v7];
  }

  return result;
}

void sub_100145598(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  (*(v14 + 16))(v14);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_1001455EC(void *a1)
{
  v2 = a1[6];
  result = *(*(v2 + 8) + 40);
  if (result)
  {
    if (dword_100B510A0 <= 90)
    {
      if (dword_100B510A0 != -1 || (v4 = _LogCategory_Initialize(), v2 = a1[6], v4))
      {
        v8 = CUPrintNSError();
        LogPrintF_safe();

        v2 = a1[6];
      }
    }

    v5 = *(*(v2 + 8) + 40);
    v6 = a1[4];
    v7 = a1[5];

    return [v6 _xpcSendReplyError:v5 request:v7];
  }

  return result;
}

void sub_100145B98(_Unwind_Exception *a1)
{
  (*(v1 + 16))(v1);
  _Block_object_dispose((v2 - 136), 8);
  _Unwind_Resume(a1);
}

id sub_100145BE0(void *a1)
{
  v2 = a1[6];
  result = *(*(v2 + 8) + 40);
  if (result)
  {
    if (dword_100B510A0 <= 90)
    {
      if (dword_100B510A0 != -1 || (v4 = _LogCategory_Initialize(), v2 = a1[6], v4))
      {
        v8 = CUPrintNSError();
        LogPrintF_safe();

        v2 = a1[6];
      }
    }

    v5 = *(*(v2 + 8) + 40);
    v6 = a1[4];
    v7 = a1[5];

    return [v6 _xpcSendReplyError:v5 request:v7];
  }

  return result;
}

id sub_10014607C(void *a1)
{
  v2 = a1[6];
  result = *(*(v2 + 8) + 40);
  if (result)
  {
    if (dword_100B510A0 <= 90)
    {
      if (dword_100B510A0 != -1 || (v4 = _LogCategory_Initialize(), v2 = a1[6], v4))
      {
        v8 = CUPrintNSError();
        LogPrintF_safe();

        v2 = a1[6];
      }
    }

    v5 = *(*(v2 + 8) + 40);
    v6 = a1[4];
    v7 = a1[5];

    return [v6 _xpcSendReplyError:v5 request:v7];
  }

  return result;
}

void sub_10014658C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  (*(v26 + 16))(v26);
  _Block_object_dispose(&a26, 8);
  _Unwind_Resume(a1);
}

id sub_1001465D4(void *a1)
{
  v2 = a1[6];
  result = *(*(v2 + 8) + 40);
  if (result)
  {
    if (dword_100B510A0 <= 90)
    {
      if (dword_100B510A0 != -1 || (v4 = _LogCategory_Initialize(), v2 = a1[6], v4))
      {
        v8 = CUPrintNSError();
        LogPrintF_safe();

        v2 = a1[6];
      }
    }

    v5 = *(*(v2 + 8) + 40);
    v6 = a1[4];
    v7 = a1[5];

    return [v6 _xpcSendReplyError:v5 request:v7];
  }

  return result;
}

void sub_1001469A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_1001469E8(void *a1)
{
  v2 = a1[6];
  result = *(*(v2 + 8) + 40);
  if (result)
  {
    if (dword_100B510A0 <= 90)
    {
      if (dword_100B510A0 != -1 || (v4 = _LogCategory_Initialize(), v2 = a1[6], v4))
      {
        v8 = CUPrintNSError();
        LogPrintF_safe();

        v2 = a1[6];
      }
    }

    v5 = *(*(v2 + 8) + 40);
    v6 = a1[4];
    v7 = a1[5];

    return [v6 _xpcSendReplyError:v5 request:v7];
  }

  return result;
}

id sub_100146E84(void *a1)
{
  v2 = a1[6];
  result = *(*(v2 + 8) + 40);
  if (result)
  {
    if (dword_100B510A0 <= 90)
    {
      if (dword_100B510A0 != -1 || (v4 = _LogCategory_Initialize(), v2 = a1[6], v4))
      {
        v8 = CUPrintNSError();
        LogPrintF_safe();

        v2 = a1[6];
      }
    }

    v5 = *(*(v2 + 8) + 40);
    v6 = a1[4];
    v7 = a1[5];

    return [v6 _xpcSendReplyError:v5 request:v7];
  }

  return result;
}

void sub_100147220(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_10014725C(void *a1)
{
  v2 = a1[6];
  result = *(*(v2 + 8) + 40);
  if (result)
  {
    if (dword_100B510A0 <= 90)
    {
      if (dword_100B510A0 != -1 || (v4 = _LogCategory_Initialize(), v2 = a1[6], v4))
      {
        v8 = CUPrintNSError();
        LogPrintF_safe();

        v2 = a1[6];
      }
    }

    v5 = *(*(v2 + 8) + 40);
    v6 = a1[4];
    v7 = a1[5];

    return [v6 _xpcSendReplyError:v5 request:v7];
  }

  return result;
}

void sub_100147618(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10014763C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = [CBDeviceIdentity alloc];
  v6 = *(*(a1 + 40) + 8);
  obj = *(v6 + 40);
  v7 = [v5 initWithXPCObject:v4 error:&obj];

  objc_storeStrong((v6 + 40), obj);
  if (v7)
  {
    [*(a1 + 32) addObject:v7];
  }

  else
  {
    sub_10080E4A4();
  }

  return 1;
}

void sub_100147C60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100147C78(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = v1[12];
  if (*(a1 + 40) == v2)
  {
    v3 = v2;
    [v1 _xpcPowerStateChanged:{objc_msgSend(v1, "_powerStateForClient")}];
  }
}

void *sub_100147CEC(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (*(a1 + 40) == result[12])
  {
    return [result _xpcDeviceFound:a2];
  }

  return result;
}

void *sub_100147D10(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (*(a1 + 40) == result[12])
  {
    return [result _xpcDeviceLost:a2];
  }

  return result;
}

void *sub_100147D34(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (*(a1 + 40) == result[12])
  {
    return [result _xpcDevicesBuffered:a2];
  }

  return result;
}

void *sub_100147D58(uint64_t a1)
{
  result = *(a1 + 32);
  if (*(a1 + 40) == result[12])
  {
    return [result _xpcSystemOverrideChanged];
  }

  return result;
}

void sub_100147D78(uint64_t a1, void *a2, void *a3)
{
  v15 = a2;
  v5 = a3;
  v6 = [*(a1 + 32) bleRSSIThresholdHint];
  if (v6)
  {
    LOBYTE(v6) = [v5 rssi] < v6;
  }

  if ([v5 discoveryTypesContainCBDiscovery:*(a1 + 32)] && (v6 & 1) == 0)
  {
    v7 = *(*(a1 + 40) + 128);
    if (!v7)
    {
      v8 = objc_alloc_init(NSMutableDictionary);
      v9 = *(a1 + 40);
      v10 = *(v9 + 128);
      *(v9 + 128) = v8;

      v7 = *(*(a1 + 40) + 128);
    }

    [v7 setObject:v5 forKeyedSubscript:v15];
    if (!*(*(*(a1 + 48) + 8) + 40))
    {
      v11 = xpc_array_create(0, 0);
      v12 = *(*(a1 + 48) + 8);
      v13 = *(v12 + 40);
      *(v12 + 40) = v11;
    }

    v14 = xpc_dictionary_create(0, 0, 0);
    [v5 encodeWithXPCObject:v14];
    xpc_array_append_value(*(*(*(a1 + 48) + 8) + 40), v14);
  }
}

void sub_1001481C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1001481DC(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = v1[13];
  if (*(a1 + 40) == v2)
  {
    v3 = v2;
    [v1 _xpcPowerStateChanged:{objc_msgSend(v1, "_powerStateForClient")}];
  }
}

void *sub_100148250(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (*(a1 + 40) == result[13])
  {
    return [result _xpcDeviceFound:a2];
  }

  return result;
}

void *sub_100148274(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (*(a1 + 40) == result[13])
  {
    return [result _xpcDeviceLost:a2];
  }

  return result;
}

void sub_100148298(void *a1, void *a2, void *a3)
{
  v14 = a2;
  v5 = a3;
  if ([v5 discoveryTypesContainCBDiscovery:a1[4]])
  {
    v6 = *(a1[5] + 128);
    if (!v6)
    {
      v7 = objc_alloc_init(NSMutableDictionary);
      v8 = a1[5];
      v9 = *(v8 + 128);
      *(v8 + 128) = v7;

      v6 = *(a1[5] + 128);
    }

    [v6 setObject:v5 forKeyedSubscript:v14];
    if (!*(*(a1[6] + 8) + 40))
    {
      v10 = xpc_array_create(0, 0);
      v11 = *(a1[6] + 8);
      v12 = *(v11 + 40);
      *(v11 + 40) = v10;
    }

    v13 = xpc_dictionary_create(0, 0, 0);
    [v5 encodeWithXPCObject:v13];
    xpc_array_append_value(*(*(a1[6] + 8) + 40), v13);
  }
}

void sub_100148724(_Unwind_Exception *a1)
{
  (*(v1 + 16))(v1);
  _Block_object_dispose((v2 - 128), 8);
  _Unwind_Resume(a1);
}

id sub_100148768(void *a1)
{
  v2 = a1[6];
  result = *(*(v2 + 8) + 40);
  if (result)
  {
    if (dword_100B510A0 <= 90)
    {
      if (dword_100B510A0 != -1 || (v4 = _LogCategory_Initialize(), v2 = a1[6], v4))
      {
        v8 = CUPrintNSError();
        LogPrintF_safe();

        v2 = a1[6];
      }
    }

    v5 = *(*(v2 + 8) + 40);
    v6 = a1[4];
    v7 = a1[5];

    return [v6 _xpcSendReplyError:v5 request:v7];
  }

  return result;
}

void sub_100148844(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  if (dword_100B510A0 <= 30 && (dword_100B510A0 != -1 || _LogCategory_Initialize()))
  {
    sub_10080E720(a1);
  }

  v6 = CUXPCDictionaryCreateReply();
  if (v6)
  {
    if (v5)
    {
      CUXPCEncodeNSError();
    }

    CUXPCEncodeObject();
    [*(a1 + 48) _xpcSendReply:v6];
  }

  else
  {
    sub_10080E768();
  }
}

void sub_100148C48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  (*(v13 + 16))(v13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_100148C88(void *a1)
{
  v2 = a1[6];
  result = *(*(v2 + 8) + 40);
  if (result)
  {
    if (dword_100B510A0 <= 90)
    {
      if (dword_100B510A0 != -1 || (v4 = _LogCategory_Initialize(), v2 = a1[6], v4))
      {
        v8 = CUPrintNSError();
        LogPrintF_safe();

        v2 = a1[6];
      }
    }

    v5 = *(*(v2 + 8) + 40);
    v6 = a1[4];
    v7 = a1[5];

    return [v6 _xpcSendReplyError:v5 request:v7];
  }

  return result;
}

void sub_100148F00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  (*(v9 + 16))(v9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_100148F38(void *a1)
{
  v2 = a1[6];
  result = *(*(v2 + 8) + 40);
  if (result)
  {
    if (dword_100B510A0 <= 90)
    {
      if (dword_100B510A0 != -1 || (v4 = _LogCategory_Initialize(), v2 = a1[6], v4))
      {
        v8 = CUPrintNSError();
        LogPrintF_safe();

        v2 = a1[6];
      }
    }

    v5 = *(*(v2 + 8) + 40);
    v6 = a1[4];
    v7 = a1[5];

    return [v6 _xpcSendReplyError:v5 request:v7];
  }

  return result;
}

void sub_1001492E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  (*(v17 + 16))(v17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_100149328(void *a1)
{
  v2 = a1[6];
  result = *(*(v2 + 8) + 40);
  if (result)
  {
    if (dword_100B510A0 <= 90)
    {
      if (dword_100B510A0 != -1 || (v4 = _LogCategory_Initialize(), v2 = a1[6], v4))
      {
        v8 = CUPrintNSError();
        LogPrintF_safe();

        v2 = a1[6];
      }
    }

    v5 = *(*(v2 + 8) + 40);
    v6 = a1[4];
    v7 = a1[5];

    return [v6 _xpcSendReplyError:v5 request:v7];
  }

  return result;
}

void sub_100149404(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if ((*(a1 + 40) & [v5 discoveryFlags]) != 0)
  {
    v4 = xpc_dictionary_create(0, 0, 0);
    [v5 encodeWithXPCObject:v4];
    xpc_array_append_value(*(a1 + 32), v4);
  }
}

void sub_100149870(_Unwind_Exception *a1)
{
  (*(v1 + 16))(v1);
  _Block_object_dispose((v2 - 144), 8);
  _Unwind_Resume(a1);
}

id sub_1001498D0(void *a1)
{
  v2 = a1[6];
  result = *(*(v2 + 8) + 40);
  if (result)
  {
    if (dword_100B510A0 <= 90)
    {
      if (dword_100B510A0 != -1 || (v4 = _LogCategory_Initialize(), v2 = a1[6], v4))
      {
        v8 = CUPrintNSError();
        LogPrintF_safe();

        v2 = a1[6];
      }
    }

    v5 = *(*(v2 + 8) + 40);
    v6 = a1[4];
    v7 = a1[5];

    return [v6 _xpcSendReplyError:v5 request:v7];
  }

  return result;
}

void sub_1001499AC(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if ([*(a1 + 32) isEqualToDevice:? exactMatch:?])
  {
    v4 = xpc_dictionary_create(0, 0, 0);
    [v5 encodeWithXPCObject:v4];
    xpc_array_append_value(*(a1 + 40), v4);
    *(*(*(a1 + 48) + 8) + 24) = 1;
  }
}

void sub_10014A658(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  (*(a12 + 16))();
  _Block_object_dispose((v12 - 152), 8);
  _Unwind_Resume(a1);
}

id sub_10014A6C0(void *a1)
{
  v2 = a1[6];
  result = *(*(v2 + 8) + 40);
  if (result)
  {
    if (dword_100B510A0 <= 90)
    {
      if (dword_100B510A0 != -1 || (v4 = _LogCategory_Initialize(), v2 = a1[6], v4))
      {
        v8 = CUPrintNSError();
        LogPrintF_safe();

        v2 = a1[6];
      }
    }

    v5 = *(*(v2 + 8) + 40);
    v6 = a1[4];
    v7 = a1[5];

    return [v6 _xpcSendReplyError:v5 request:v7];
  }

  return result;
}

void sub_10014A79C(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (*(a1 + 32) != *(v2 + 112))
  {
    return;
  }

  v4 = [*(v2 + 136) supportsNCSecondaryAdvertisingInstance];
  v5 = [*(*(a1 + 40) + 136) addressMonitor];
  v6 = v5;
  if (v4)
  {
    [v5 nonConnectableSecondaryAddressData];
  }

  else
  {
    [v5 nonConnectableAddressData];
  }
  v13 = ;

  v7 = v13;
  if (v13)
  {
    v8 = [*(a1 + 32) advertisingAddressData];
    v9 = v13;
    v10 = v8;
    v11 = v10;
    if (v9 == v10)
    {
    }

    else
    {
      if (v10)
      {
        v12 = [v9 isEqual:v10];

        v7 = v13;
        if (v12)
        {
          goto LABEL_14;
        }
      }

      else
      {
      }

      [*(a1 + 32) setAdvertisingAddressData:v9];
      [*(a1 + 40) _xpcAdvertisingAddressChanged];
    }

    v7 = v13;
  }

LABEL_14:
}

void *sub_10014A8C0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  result = *(a1 + 40);
  if (v3 == result[14])
  {
    return [result _xpcSpatialInteractionAOPDataReceived:a2];
  }

  return result;
}

id sub_10014A8DC(id result)
{
  v1 = *(result + 5);
  if (*(result + 4) == v1[14])
  {
    v2 = [*(result + 5) _powerStateForClient];

    return [v1 _xpcPowerStateChanged:v2];
  }

  return result;
}

void *sub_10014A934(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  result = *(a1 + 40);
  if (v3 == result[14])
  {
    return [result _xpcDeviceFound:a2];
  }

  return result;
}

void *sub_10014A950(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  result = *(a1 + 40);
  if (v3 == result[14])
  {
    return [result _xpcDeviceLost:a2];
  }

  return result;
}

void *sub_10014A96C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  result = *(a1 + 40);
  if (v3 == result[12])
  {
    return [result _spatialInteractionDeviceFound:a2 checkOnly:0];
  }

  return result;
}

void *sub_10014A98C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  result = *(a1 + 40);
  if (v3 == result[12])
  {
    return [result _spatialInteractionDeviceLost:a2 removeUnmatched:1 reason:"BLE lost"];
  }

  return result;
}

void sub_10014A9B4(uint64_t a1)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (v4 == *(v3 + 96))
  {
    if (*(v3 + 10) == 1)
    {

      [v3 _xpcSystemOverrideChanged];
    }

    else
    {
      block[5] = v1;
      block[6] = v2;
      v5 = *(v3 + 144);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10014AA5C;
      block[3] = &unk_100ADF5B8;
      block[4] = v3;
      dispatch_async(v5, block);
    }
  }
}

void sub_10014AA64(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (([v4 discoveryFlags] & 0x40000) != 0)
  {
    [*(a1 + 32) _spatialInteractionDeviceFound:v4 checkOnly:0];
  }
}

void sub_10014AE10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  (*(v13 + 16))(v13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_10014AE58(void *a1)
{
  v2 = a1[6];
  result = *(*(v2 + 8) + 40);
  if (result)
  {
    if (dword_100B510A0 <= 90)
    {
      if (dword_100B510A0 != -1 || (v4 = _LogCategory_Initialize(), v2 = a1[6], v4))
      {
        v8 = CUPrintNSError();
        LogPrintF_safe();

        v2 = a1[6];
      }
    }

    v5 = *(*(v2 + 8) + 40);
    v6 = a1[4];
    v7 = a1[5];

    return [v6 _xpcSendReplyError:v5 request:v7];
  }

  return result;
}

void sub_10014B444(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  (*(a16 + 16))();
  _Block_object_dispose((v16 - 160), 8);
  _Unwind_Resume(a1);
}

id sub_10014B4A4(void *a1)
{
  v2 = a1[6];
  result = *(*(v2 + 8) + 40);
  if (result)
  {
    if (dword_100B510A0 <= 90)
    {
      if (dword_100B510A0 != -1 || (v4 = _LogCategory_Initialize(), v2 = a1[6], v4))
      {
        v8 = CUPrintNSError();
        LogPrintF_safe();

        v2 = a1[6];
      }
    }

    v5 = *(*(v2 + 8) + 40);
    v6 = a1[4];
    v7 = a1[5];

    return [v6 _xpcSendReplyError:v5 request:v7];
  }

  return result;
}

void sub_10014B580(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if ([v4 spatialInteractionPeerID] == *(a1 + 32))
  {
    [v4 setSpatialInteractionPeerID:*(a1 + 36)];
  }
}

void sub_10014BA68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37)
{
  (*(a18 + 16))();
  _Block_object_dispose(&a37, 8);
  _Unwind_Resume(a1);
}

id sub_10014BAD8(void *a1)
{
  v2 = a1[6];
  result = *(*(v2 + 8) + 40);
  if (result)
  {
    if (dword_100B510A0 <= 90)
    {
      if (dword_100B510A0 != -1 || (v4 = _LogCategory_Initialize(), v2 = a1[6], v4))
      {
        v8 = CUPrintNSError();
        LogPrintF_safe();

        v2 = a1[6];
      }
    }

    v5 = *(*(v2 + 8) + 40);
    v6 = a1[4];
    v7 = a1[5];

    return [v6 _xpcSendReplyError:v5 request:v7];
  }

  return result;
}

id sub_10014BBB4()
{
  if (qword_100B55330 != -1)
  {
    sub_10080E8B4();
  }

  v1 = qword_100B55328;

  return v1;
}

void sub_10014BF5C(uint64_t a1)
{
  v2 = +[NSDate date];
  [v2 timeIntervalSince1970];
  v4 = v3;

  v5 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [*(*(a1 + 32) + 112) clientID]);
  v6 = [*(a1 + 40) getSpatialInteractionDeviceTimestampArrayForClientID:v5];
  v7 = [v6 lastObject];
  v8 = v7;
  if (v7 && [v7 reason] == *(a1 + 48) && (objc_msgSend(v8, "timestamp"), v9 * -1000.0 + v4 * 1000.0 < 1500.0))
  {
    [v8 setDuplicateCount:{(objc_msgSend(v8, "duplicateCount") + 1)}];
  }

  else
  {
    v10 = objc_alloc_init(CBSpatialInteractionDeviceTimestampInfo);
    [v10 setTimestamp:v4];
    [v10 setReason:*(a1 + 48)];
    [v10 setDuplicateCount:0];
    if ([v6 count] >= 9)
    {
      [v6 removeObjectAtIndex:0];
    }

    [v6 addObject:v10];
  }

  [*(a1 + 40) setSpatialInteractionDeviceTimestampArrayForClientID:v6 clientID:v5];
  v11 = [*(a1 + 40) spatialInteractionDeviceTimestampArrayClientIDs];
  if (v11)
  {
    v12 = v11;
    v13 = [*(a1 + 40) spatialInteractionDeviceTimestampArrayDictionary];
    if (v13)
    {
      v14 = v13;
      v15 = [*(a1 + 40) spatialInteractionDeviceTimestampArrayClientIDs];
      v16 = [v15 count];
      v17 = [*(a1 + 40) spatialInteractionDeviceTimestampArrayDictionary];
      v18 = [v17 count];

      if (v16 == v18)
      {
        goto LABEL_16;
      }
    }

    else
    {
    }
  }

  v19 = sub_10014BBB4();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    sub_10080E928(v19);
  }

  [*(a1 + 40) setSpatialInteractionDeviceTimestampArrayDictionary:0];
  [*(a1 + 40) setSpatialInteractionDeviceTimestampArrayClientIDs:0];
LABEL_16:
}

void *sub_10014CD94(uint64_t a1)
{
  v2 = *(a1 + 32);
  result = *(a1 + 40);
  if (v2 == result[7])
  {
    return [result _whbTimerFired];
  }

  return result;
}

void sub_10014CF24(id a1)
{
  v1 = os_log_create("com.apple.bluetooth", "CBDaemonXPCConnection");
  v2 = qword_100B55328;
  qword_100B55328 = v1;
}

void sub_10014D254(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, int a14, __int16 a15, char a16, char a17)
{
  sub_10002249C(&a17);

  _Unwind_Resume(a1);
}

void sub_10014D2B4(uint64_t a1, uint64_t a2)
{
  if (sub_10000C240())
  {
    v2 = [NSNumber numberWithUnsignedShort:a2];
    v3 = [qword_100B55338 objectForKeyedSubscript:v2];
    v7 = [v3 popFirstObject];
    v4 = v7;
    if (v7)
    {
      v8 = [v7 stream];
      if (v8)
      {
        if (dword_100B51110 <= 30 && (dword_100B51110 != -1 || _LogCategory_Initialize()))
        {
          v10 = a1;
          v11 = v8;
          LogPrintF_safe();
        }

        v9 = [v8 dispatchQueue];
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_10014FDCC;
        block[3] = &unk_100AE2498;
        v13 = a1;
        block[4] = v8;
        v14 = a2;
        dispatch_async(v9, block);
      }

      else if (dword_100B51110 <= 90 && (dword_100B51110 != -1 || _LogCategory_Initialize()))
      {
        LogPrintF_safe();
      }

      goto LABEL_10;
    }
  }

  else
  {
    CUFatalErrorF();
  }

  if (dword_100B51110 <= 90 && (dword_100B51110 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF_safe();
  }

LABEL_10:
}

void sub_10014D520(uint64_t a1, uint64_t a2)
{
  if (sub_10000C240())
  {
    v2 = [NSNumber numberWithUnsignedShort:a2];
    v3 = [qword_100B55338 objectForKeyedSubscript:v2];
    v7 = [v3 popFirstObject];
    v4 = v7;
    if (v7)
    {
      v8 = [v7 stream];
      if (v8)
      {
        if (dword_100B51110 <= 30 && (dword_100B51110 != -1 || _LogCategory_Initialize()))
        {
          v10 = a1;
          v11 = v8;
          LogPrintF_safe();
        }

        v9 = [v8 dispatchQueue];
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_10014FE68;
        block[3] = &unk_100AE2498;
        v13 = a1;
        block[4] = v8;
        v14 = a2;
        dispatch_async(v9, block);
      }

      else if (dword_100B51110 <= 90 && (dword_100B51110 != -1 || _LogCategory_Initialize()))
      {
        LogPrintF_safe();
      }

      goto LABEL_10;
    }
  }

  else
  {
    CUFatalErrorF();
  }

  if (dword_100B51110 <= 90 && (dword_100B51110 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF_safe();
  }

LABEL_10:
}

void sub_10014DF10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  sub_10002249C(&a15);

  _Unwind_Resume(a1);
}

void sub_10014E028(_Unwind_Exception *a1)
{
  objc_sync_exit(v2);

  _Unwind_Resume(a1);
}

void sub_10014E654(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id a22)
{
  v23[2](v23);

  _Block_object_dispose(&a17, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10014E6A4(uint64_t a1)
{
  result = *(*(*(a1 + 40) + 8) + 40);
  if (result)
  {
    if (dword_100B51110 <= 90 && (dword_100B51110 != -1 || _LogCategory_Initialize()))
    {
      v4 = CUPrintNSError();
      LogPrintF_safe();
    }

    v3 = *(*(a1 + 32) + 16);

    return v3();
  }

  return result;
}

char *sub_10014E924(char *result)
{
  v2 = (result + 32);
  v1 = *(result + 4);
  if ((*(v1 + 24) & 1) == 0)
  {
    *(v1 + 24) = 1;
    if (dword_100B51110 <= 30 && (dword_100B51110 != -1 || _LogCategory_Initialize()))
    {
      sub_10080E9A0();
    }

    v3 = *v2;

    return [v3 _invalidate];
  }

  return result;
}

void sub_10014EE44(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 24) == 1)
  {
    v9 = *(a1 + 40);
    v10 = CBErrorF();
    [v2 _completeReadRequest:v9 error:?];
  }

  else
  {
    if (dword_100B51110 <= 9)
    {
      if (dword_100B51110 != -1 || (v3 = _LogCategory_Initialize(), v2 = *(a1 + 32), v3))
      {
        LogPrintF_safe();
        v2 = *(a1 + 32);
      }
    }

    v4 = *(v2 + 40);
    if (!v4)
    {
      v5 = objc_alloc_init(NSMutableArray);
      v6 = *(a1 + 32);
      v7 = *(v6 + 40);
      *(v6 + 40) = v5;

      v4 = *(*(a1 + 32) + 40);
    }

    v8 = *(a1 + 40);

    [v4 addObject:v8];
  }
}

void sub_10014F36C(uint64_t a1)
{
  ++*(*(a1 + 32) + 32);
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  if (v2[24] == 1)
  {
    v11 = CBErrorF();
    [v2 _completeWriteRequest:v1 error:?];
  }

  else
  {
    v4 = [*(a1 + 40) data];
    v5 = [v4 length];

    v6 = *(a1 + 40);
    if (v5 < 0x10000)
    {
      v7 = *(a1 + 32);
      v12 = 0;
      v8 = [CBStackISOStreamBTStack _writeWithRequest:v6 stream:v7 error:&v12];
      v9 = v12;
      if ((v8 & 1) == 0)
      {
        [*(a1 + 32) _completeWriteRequest:*(a1 + 40) error:v9];
      }

      return;
    }

    v10 = *(a1 + 32);
    v11 = CBErrorF();
    [v10 _completeWriteRequest:v6 error:{v5, 0xFFFFLL}];
  }
}

void sub_10014F724(uint64_t a1, int a2)
{
  v3 = [qword_100B55348 popFirstObject];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 stream];
    v6 = [v5 dispatchQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10014FC10;
    block[3] = &unk_100AE2448;
    v23 = a2;
    block[4] = v5;
    block[5] = v4;
    dispatch_async(v6, block);

    while (1)
    {
      v7 = [qword_100B55348 firstObject];
      v8 = v7;
      if (!v7)
      {
        break;
      }

      v9 = [v7 stream];
      v10 = [v8 data];
      v11 = v4;
      v12 = [v10 length];
      if (dword_100B51110 <= 9 && (dword_100B51110 != -1 || _LogCategory_Initialize()))
      {
        v18 = [v9 connectionHandle];
        v19 = v12;
        LogPrintF_safe();
      }

      v13 = v9[29];
      v14 = [v10 bytes];
      if (v14)
      {
        v15 = v14;
      }

      else
      {
        v15 = "";
      }

      v16 = sub_100180700(v13, v15, v12);
      if (!v16)
      {

        v4 = v11;
        break;
      }

      [qword_100B55348 removeObjectAtIndex:0];
      v17 = [v9 dispatchQueue];
      v20[0] = _NSConcreteStackBlock;
      v20[1] = 3221225472;
      v20[2] = sub_10014FC9C;
      v20[3] = &unk_100AE2448;
      v21 = v16;
      v20[4] = v9;
      v20[5] = v8;
      dispatch_async(v17, v20);

      v4 = v11;
    }
  }

  else if (dword_100B51110 <= 90 && (dword_100B51110 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF_safe();
  }
}

void sub_10014FA1C()
{
  if (dword_100B51110 <= 9 && (dword_100B51110 != -1 || _LogCategory_Initialize()))
  {
    sub_10080E9E4();
  }
}

void sub_10014FA80(uint64_t a1, uint64_t a2, unsigned int a3, char a4)
{
  v7 = qword_100B55340;
  v8 = [NSNumber numberWithUnsignedShort:a1];
  v9 = [v7 objectForKeyedSubscript:v8];

  if (v9)
  {
    v10 = [[NSData alloc] initWithBytes:a2 length:a3];
    v11 = [v9 dispatchQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10014FD18;
    block[3] = &unk_100AE2470;
    v13 = a4;
    block[4] = v9;
    block[5] = v10;
    dispatch_async(v11, block);
  }

  else if (dword_100B51110 <= 90 && (dword_100B51110 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF_safe();
  }
}

void sub_10014FC10(uint64_t a1)
{
  if (*(a1 + 48))
  {
    v2 = CBErrorF();
  }

  else
  {
    v2 = 0;
  }

  v3 = v2;
  [*(a1 + 32) _completeWriteRequest:*(a1 + 40) error:v2];
}

void sub_10014FC9C(uint64_t a1)
{
  v2 = CBErrorF();
  [*(a1 + 32) _completeWriteRequest:*(a1 + 40) error:?];
}

void sub_10014FD18(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (*(a1 + 48))
  {
    v3 = "?";
    if (v2 == 2)
    {
      v3 = "Lost";
    }

    if (v2 == 1)
    {
      v4 = "Invalid";
    }

    else
    {
      v4 = v3;
    }

    v6 = v4;
    v5 = CBErrorF();
  }

  else
  {
    v5 = 0;
  }

  v7 = v5;
  [*(a1 + 32) _receivedData:*(a1 + 40) error:{v5, v6}];
}

void sub_10014FDCC(uint64_t a1)
{
  if (*(a1 + 40))
  {
    v2 = CBErrorF();
  }

  else
  {
    v2 = 0;
  }

  v3 = v2;
  [*(a1 + 32) _activateCompletedWithError:v2];
  [CBStackISOStreamBTStack _processNextConfigRequest:*(a1 + 44)];
}

void sub_10014FE68(uint64_t a1)
{
  if (*(a1 + 40))
  {
    v2 = CBErrorF();
  }

  else
  {
    v2 = 0;
  }

  v3 = v2;
  [*(a1 + 32) _invalidateCoreWithError:v2];
  [CBStackISOStreamBTStack _processNextConfigRequest:*(a1 + 44)];
}

void sub_100150AF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24)
{
  v25[2](v25);

  _Block_object_dispose(&a24, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100150B9C(uint64_t result)
{
  if (*(*(*(result + 32) + 8) + 24))
  {
    v1 = result;
    if (dword_100B511E0 <= 90 && (dword_100B511E0 != -1 || _LogCategory_Initialize()))
    {
      sub_10080EACC();
    }

    if (qword_100B50B88 != -1)
    {
      sub_10080EAE8();
    }

    v2 = qword_100B50B80;
    v3 = *(*(*(v1 + 32) + 8) + 24);

    return sub_100079604(v2, v3);
  }

  return result;
}

void sub_10015125C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, id a12)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_100151370(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 48);
  v11 = 0;
  [v2 setLowPowerModeWithReason:v3 error:&v11];
  v4 = v11;
  v5 = *(*(a1 + 32) + 136);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100151440;
  block[3] = &unk_100AE2500;
  v6 = *(a1 + 40);
  v9 = v4;
  v10 = v6;
  v7 = v4;
  dispatch_async(v5, block);
}

void sub_10015180C(uint64_t a1)
{
  if (qword_100B512D8 != -1)
  {
    sub_10080EB24();
  }

  sub_100309B0C(off_100B512D0);
  if (dword_100B511E0 <= 90 && (dword_100B511E0 != -1 || _LogCategory_Initialize()))
  {
    sub_10080EB60();
  }

  v8[0] = @"errorCode";
  v8[1] = @"errorCount";
  v9[0] = &off_100B336A8;
  v9[1] = &off_100B336C0;
  v8[2] = @"timeToEnter";
  v2 = [NSNumber numberWithUnsignedLongLong:sub_1000B11F4() - *(a1 + 32)];
  v9[2] = v2;
  v3 = [NSDictionary dictionaryWithObjects:v9 forKeys:v8 count:3];

  v4 = sub_10000E92C();
  sub_100007E30(__p, "LPM entry timeout");
  sub_100693FC4(v4, __p, 3172327085);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  v5 = sub_10000F034();
  (*(*v5 + 224))(v5, v3);
}

void sub_1001519A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_100151AAC(uint64_t a1)
{
  if (qword_100B512D8 != -1)
  {
    sub_10080EB24();
  }

  result = sub_100312248(off_100B512D0, *(a1 + 32));
  if (result)
  {
    return sub_10080EB7C();
  }

  return result;
}

void sub_1001520A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, void *a16, void *a17)
{
  v18 = v17;

  _Unwind_Resume(a1);
}

void sub_100152538(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 40);
  v7 = v3;
  if (!v4)
  {
    v5 = objc_alloc_init(NSMutableSet);
    v6 = *(a1 + 40);
    *(a1 + 40) = v5;

    v4 = *(a1 + 40);
    v3 = v7;
  }

  [v4 addObject:v3];
  if ((*(a1 + 48) & 1) == 0)
  {
    if (dword_100B511E0 <= 30 && (dword_100B511E0 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF_safe();
    }

    if (qword_100B508E0 != -1)
    {
      sub_10080EC2C();
    }

    sub_1005143D8(off_100B508D8, a1);
    if (qword_100B50F68 != -1)
    {
      sub_10080EC40();
    }

    sub_10012E3B0(off_100B50F60 + 24, a1 + 8);
    if (qword_100B508B0 != -1)
    {
      sub_10080EC54();
    }

    sub_100749B80(off_100B508A8, a1 + 16, 0);
    if (qword_100B508A0 != -1)
    {
      sub_10080EA68();
    }

    sub_1000F0FFC(off_100B50898 + 72, a1 + 24);
    if (qword_100B50AC0 != -1)
    {
      sub_10080EC68();
    }

    sub_1005907D4(off_100B50AB8, a1 + 32);
    *(a1 + 48) = 1;
  }
}

void sub_1001526F8(uint64_t a1)
{
  obj = [CBUtil getBluetoothDebugSettingString:@"BluetoothCustomerLogging" InKey:@"PrivateDataLogging"];
  if (([*(*(a1 + 32) + 104) isEqualToString:?] & 1) == 0)
  {
    v2 = sub_10000E92C();
    *(*(a1 + 32) + 48) = (*(*v2 + 160))(v2);
    objc_storeStrong((*(a1 + 32) + 104), obj);
  }
}

void sub_100152CB8(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(a1 + 40) removeObject:?];
  if (*(a1 + 48) == 1 && ![*(a1 + 40) count])
  {
    if (dword_100B511E0 <= 30 && (dword_100B511E0 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF_safe();
    }

    if (qword_100B508E0 != -1)
    {
      sub_10080EC2C();
    }

    sub_100514508(off_100B508D8, a1);
    if (qword_100B50F68 != -1)
    {
      sub_10080EC40();
    }

    sub_10007A3F0(off_100B50F60 + 24, a1 + 8);
    if (qword_100B508A0 != -1)
    {
      sub_10080EA68();
    }

    sub_10007A3F0(off_100B50898 + 72, a1 + 24);
    if (qword_100B50AC0 != -1)
    {
      sub_10080EC68();
    }

    sub_1005908D4(off_100B50AB8, a1 + 32);
    *(a1 + 48) = 0;
  }
}

void sub_100153D34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, void (**a12)(void), uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35)
{
  a12[2]();

  _Block_object_dispose((v37 - 152), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100153E24(uint64_t a1)
{
  result = *(*(*(a1 + 40) + 8) + 40);
  if (result)
  {
    if (dword_100B511E0 <= 90 && (dword_100B511E0 != -1 || _LogCategory_Initialize()))
    {
      v4 = CUPrintNSError();
      LogPrintF_safe();
    }

    v3 = *(*(a1 + 32) + 16);

    return v3();
  }

  return result;
}

void sub_100153F18(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) timer];

  if (v2 == v3)
  {
    v6 = a1 + 40;
    v4 = *(a1 + 40);
    v5 = *(v6 + 8);
    v7 = CBErrorF();
    [v5 _connectDeviceCompleteRequest:v4 error:?];
  }
}

void sub_100155428(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_100155EB4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *__p, uint64_t a40)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_100155F44(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 231) < 0)
  {
    sub_100008904(&v4, *(a2 + 208), *(a2 + 216));
  }

  else
  {
    v4 = *(a2 + 208);
    v5 = *(a2 + 224);
  }

  if (SHIBYTE(v5) < 0)
  {
    v3 = v4;
    *(*(*(a1 + 32) + 8) + 24) = *(&v4 + 1) != 0;
    operator delete(v3);
  }

  else
  {
    *(*(*(a1 + 32) + 8) + 24) = SHIBYTE(v5) != 0;
  }
}

void sub_100155FD4(uint64_t a1)
{
  if (qword_100B508C0 != -1)
  {
    sub_10080EE24();
  }

  v2 = off_100B508B8;
  v3 = *(a1 + 32);

  sub_1007C2AA4(v2, v3);
}

void sub_10015634C(uint64_t a1)
{
  if (qword_100B508C0 != -1)
  {
    sub_10080EE24();
  }

  v2 = off_100B508B8;
  v3 = *(a1 + 32);

  sub_1007C2AA4(v2, v3);
}

void sub_100156D10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void *__p, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, void *a48, uint64_t a49, int a50, __int16 a51, char a52, char a53, uint64_t a54, uint64_t a55, uint64_t a56, char a57)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_100156F0C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (!v3)
  {
    v3 = *(a2 + 16);
  }

  *(*(*(a1 + 32) + 8) + 24) = v3;
  if (*(a2 + 127) < 0)
  {
    sub_100008904(__p, *(a2 + 104), *(a2 + 112));
  }

  else
  {
    *__p = *(a2 + 104);
    v9 = *(a2 + 120);
  }

  if (v9 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  v5 = [NSString stringWithUTF8String:v4, __p[0], __p[1], v9];
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  if (SHIBYTE(v9) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_100156FC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1001578D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, void (**a12)(void), void *a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, id a44)
{
  a12[2](a12);

  _Block_object_dispose(&a39, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1001579C8(uint64_t a1)
{
  result = *(*(*(a1 + 40) + 8) + 40);
  if (result)
  {
    if (dword_100B511E0 <= 90 && (dword_100B511E0 != -1 || _LogCategory_Initialize()))
    {
      v4 = CUPrintNSError();
      LogPrintF_safe();
    }

    v3 = *(*(a1 + 32) + 16);

    return v3();
  }

  return result;
}

void sub_100157ABC(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) timer];

  if (v2 == v3)
  {
    v6 = a1 + 40;
    v4 = *(a1 + 40);
    v5 = *(v6 + 8);
    v7 = CBErrorF();
    [v5 _modifyDeviceCompleteRequest:v4 error:?];
  }
}

void sub_100158194(_Unwind_Exception *a1)
{
  _Block_object_dispose((v5 - 128), 8);

  _Unwind_Resume(a1);
}

void sub_100158248(void *a1, uint64_t a2)
{
  v3 = a1[4];
  v2 = a1[5];
  v4 = a1[6];
  v5 = *(a1[7] + 8);
  obj = *(v5 + 40);
  [v3 modifyDevice:v2 leDevice:a2 settings:v4 error:&obj];
  objc_storeStrong((v5 + 40), obj);
}

void sub_10015829C(void *a1, uint64_t a2)
{
  v3 = a1[4];
  v2 = a1[5];
  v4 = a1[6];
  v5 = *(a1[7] + 8);
  obj = *(v5 + 40);
  [v3 modifyDevice:v2 leDevice:a2 settings:v4 error:&obj];
  objc_storeStrong((v5 + 40), obj);
}

void sub_10015A22C(uint64_t a1)
{
  v2 = [*(a1 + 32) UTF8String];
  if (qword_100B508D0 != -1)
  {
    sub_10080EC98();
  }

  v3 = off_100B508C8;
  sub_10004DFB4(v9, *(a1 + 40));
  sub_100007E30(__p, v2);
  sub_100783194(v3, v9, __p, 3);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  if (qword_100B50900 != -1)
  {
    sub_10080EFF8();
  }

  sub_100710E34(qword_100B508F8, *(a1 + 40));
  if (qword_100B50900 != -1)
  {
    sub_10080EFF8();
  }

  v4 = qword_100B508F8;
  if (qword_100B512F8 != -1)
  {
    sub_10080F020();
  }

  if (off_100B512F0)
  {
    v5 = off_100B512F0 + 48;
  }

  else
  {
    v5 = 0;
  }

  v6 = *(a1 + 48);
  sub_10004DFB4(v10, *(a1 + 40));
  sub_100007E30(v9, v2);
  sub_10070E28C(v4, v5, v6, v10, v9);
}

void sub_10015A3AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10015A3E4(uint64_t a1)
{
  if (qword_100B508D0 != -1)
  {
    sub_10080EC98();
  }

  sub_100791918(off_100B508C8, *(a1 + 32), *(a1 + 56), *(a1 + 40), 2);
  if (qword_100B508D0 != -1)
  {
    sub_10080EC98();
  }

  v2 = off_100B508C8;
  v3 = *(a1 + 32);
  v4 = [*(a1 + 48) controllerInfo];
  sub_100791C14(v2, v3, [v4 fastLEConnectionAllowed]);
}

void sub_10015A4AC(uint64_t a1)
{
  if (qword_100B508D0 != -1)
  {
    sub_10080EC98();
  }

  v2 = off_100B508C8;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);

  sub_100791CB4(v2, v3, v4);
}

void sub_10015B3A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void (**a13)(void), uint64_t a14, uint64_t a15, void *a16, void *a17, void *a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, void *a50, uint64_t a51, char a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, id a57)
{
  a13[2]();

  _Block_object_dispose(&a52, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10015B52C(uint64_t a1)
{
  result = *(*(*(a1 + 40) + 8) + 40);
  if (result)
  {
    if (dword_100B511E0 <= 20 && (dword_100B511E0 != -1 || _LogCategory_Initialize()))
    {
      v4 = CUPrintNSError();
      LogPrintF_safe();
    }

    v3 = *(*(a1 + 32) + 16);

    return v3();
  }

  return result;
}

void sub_10015B638(int a1, uint64_t a2, char a3)
{
  v6 = qword_100B55358;
  v7 = [v6 dispatchQueue];
  v8 = v7;
  if (v7)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100160884;
    block[3] = &unk_100AE2880;
    block[4] = v6;
    block[5] = a2;
    v10 = a1;
    v11 = a3;
    dispatch_async(v7, block);
  }
}

void sub_10015B70C(int a1, uint64_t a2, char a3)
{
  v6 = qword_100B55358;
  v7 = [v6 dispatchQueue];
  v8 = v7;
  if (v7)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100160898;
    block[3] = &unk_100AE2880;
    v10 = a1;
    block[4] = v6;
    block[5] = a2;
    v11 = a3;
    dispatch_async(v7, block);
  }
}

void sub_10015B7E0(int a1, uint64_t a2, char a3)
{
  v6 = qword_100B55358;
  v7 = [v6 dispatchQueue];
  v8 = v7;
  if (v7)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1001608B0;
    block[3] = &unk_100AE2880;
    v10 = a1;
    block[4] = v6;
    block[5] = a2;
    v11 = a3;
    dispatch_async(v7, block);
  }
}

void sub_10015B8B4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) timer];

  if (v2 == v3)
  {
    v6 = a1 + 40;
    v4 = *(a1 + 40);
    v5 = *(v6 + 8);
    v7 = CBErrorF();
    [v5 _completePerformDeviceRequest:v4 error:?];
  }
}

const char *sub_10015D610(unsigned int a1)
{
  if (a1 > 0xD)
  {
    return "?";
  }

  else
  {
    return off_100AE2D18[a1];
  }
}

void sub_10015DC80(_Unwind_Exception *a1)
{
  v2[2](v2);

  _Block_object_dispose((v3 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_10015DCD4(uint64_t a1)
{
  if (*(*(*(a1 + 32) + 8) + 40))
  {
    if (dword_100B511E0 <= 90 && (dword_100B511E0 != -1 || _LogCategory_Initialize()))
    {
      v2 = CUPrintNSError();
      LogPrintF_safe();
    }

    if (*(a1 + 40))
    {
      **(a1 + 40) = *(*(*(a1 + 32) + 8) + 40);
    }
  }
}

void sub_10015DDB0(uint64_t a1, unsigned int a2, unint64_t a3, int a4)
{
  v5 = a3;
  if (a3)
  {
    if (qword_100B508F0 != -1)
    {
      sub_10080ECAC();
    }

    v5 = sub_1000E41C0(off_100B508E8, v5);
  }

  if (a4)
  {
    v7 = a4 + 310000;
  }

  else
  {
    v7 = 0;
  }

  if (dword_100B511E0 > 30 || dword_100B511E0 == -1 && !_LogCategory_Initialize())
  {
    goto LABEL_19;
  }

  if (a2 > 3)
  {
    if (!v5)
    {
      goto LABEL_16;
    }

    goto LABEL_12;
  }

  if (v5)
  {
LABEL_12:
    sub_1000E5A58(v5, &v14);
  }

LABEL_16:
  v11 = CUPrintErrorCode();
  LogPrintF_safe();

  if (!v5)
  {
    if (a2 != 3)
    {
      return;
    }

LABEL_26:
    sub_10080F14C();
    return;
  }

  if (v15 < 0)
  {
    operator delete(v14);
  }

LABEL_19:
  if (a2 != 3)
  {
    return;
  }

  if (!v5)
  {
    goto LABEL_26;
  }

  v8 = qword_100B55358;
  v9 = [v8 dispatchQueue];
  v10 = v9;
  if (v9)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10016091C;
    block[3] = &unk_100AE1228;
    block[4] = v8;
    block[5] = v5;
    v13 = v7;
    dispatch_async(v9, block);
  }
}

void sub_10015DF9C(_Unwind_Exception *a1)
{
  if (v1)
  {
    sub_100806B90(v3 - 72);
  }

  _Unwind_Resume(a1);
}

void sub_10015DFCC(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = a2;
  if (a2)
  {
    if (qword_100B508F0 != -1)
    {
      sub_10080ECAC();
    }

    v4 = sub_1000E41C0(off_100B508E8, v4);
  }

  if (dword_100B511E0 <= 30 && (dword_100B511E0 != -1 || _LogCategory_Initialize()))
  {
    if (v4)
    {
      sub_1000E5A58(v4, __p);
      if ((SBYTE7(v24) & 0x80u) == 0)
      {
        v6 = __p;
      }

      else
      {
        v6 = __p[0];
      }
    }

    else
    {
      v6 = "NULL";
    }

    v15 = v6;
    v16 = a3;
    LogPrintF_safe();
    if (v4)
    {
      if (SBYTE7(v24) < 0)
      {
        operator delete(__p[0]);
      }

      goto LABEL_13;
    }

LABEL_33:
    sub_10080F2A0();
    return;
  }

  if (!v4)
  {
    goto LABEL_33;
  }

LABEL_13:
  if (qword_100B50F88 != -1)
  {
    sub_10080EDD4();
  }

  v7 = sub_1006DB834(off_100B50F80, a1);
  if (v7)
  {
    v8 = sub_1000DEB14(v4);
    if (v8 <= 0x18 && (v9 = 1, ((1 << v8) & 0x1001980) != 0))
    {
      v10 = 1;
    }

    else
    {
      v9 = 0;
      v10 = 0;
    }

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
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    *__p = 0u;
    v24 = 0u;
    v21 = 0;
    v20 = 0;
    v19 = 0;
    sub_1000C2364(v4, &v21, &v20 + 1, &v20, &v19);
    if ((HIDWORD(v20) == 1452 || HIDWORD(v20) == 76) && (v20 - 780) <= 2)
    {
      if (dword_100B511E0 <= 50 && (dword_100B511E0 != -1 || _LogCategory_Initialize()))
      {
        sub_10080F1B4();
      }

      strcpy(__p, "0000");
      sub_1006E5ED8(v22, __p);
      sub_1006D8AA8(v7, v4);
    }

    if (v10)
    {
      RandomString();
      sub_1006E5ED8(v22, __p);
      sub_1006D8AA8(v7, v4);
    }

    strcpy(__p, "0000");
    v11 = [NSString stringWithUTF8String:__p, v15, v16];
    v12 = qword_100B55358;
    v13 = [v12 dispatchQueue];
    v14 = v13;
    if (v13)
    {
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1001608F8;
      block[3] = &unk_100AE28A8;
      block[5] = v11;
      block[6] = v4;
      v18 = v9;
      block[4] = v12;
      dispatch_async(v13, block);
    }
  }

  else
  {
    sub_10080F238();
  }
}

void sub_10015E45C(uint64_t a1, unint64_t a2)
{
  v2 = a2;
  if (a2)
  {
    if (qword_100B508F0 != -1)
    {
      sub_10080ECAC();
    }

    v2 = sub_1000E41C0(off_100B508E8, v2);
  }

  if (dword_100B511E0 <= 30 && (dword_100B511E0 != -1 || _LogCategory_Initialize()))
  {
    if (v2)
    {
      sub_1000E5A58(v2, &v8);
    }

    v6 = CUPrintFlags32();
    LogPrintF_safe();

    if (!v2)
    {
      goto LABEL_18;
    }

    if (v9 < 0)
    {
      operator delete(v8);
    }
  }

  else if (!v2)
  {
LABEL_18:
    sub_10080F308();
    return;
  }

  v3 = qword_100B55358;
  v4 = [v3 dispatchQueue];
  v5 = v4;
  if (v4)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1001608C8;
    block[3] = &unk_100AE1200;
    block[4] = v3;
    block[5] = v2;
    dispatch_async(v4, block);
  }
}

void sub_10015E5FC(_Unwind_Exception *a1)
{
  if (v1)
  {
    sub_100806B90(v3 - 56);
  }

  _Unwind_Resume(a1);
}

void sub_10015E62C(uint64_t a1, unint64_t a2, uint64_t a3, int a4)
{
  v6 = a2;
  if (a2)
  {
    if (qword_100B508F0 != -1)
    {
      sub_10080ECAC();
    }

    v6 = sub_1000E41C0(off_100B508E8, v6);
  }

  if (dword_100B511E0 <= 30 && (dword_100B511E0 != -1 || _LogCategory_Initialize()))
  {
    if (v6)
    {
      sub_1000E5A58(v6, &v13);
    }

    LogPrintF_safe();
    if (!v6)
    {
      goto LABEL_18;
    }

    if (v14 < 0)
    {
      operator delete(v13);
    }
  }

  else if (!v6)
  {
LABEL_18:
    sub_10080F370();
    return;
  }

  v7 = [[NSString alloc] initWithFormat:@"%06u", a3];
  v8 = qword_100B55358;
  v9 = [v8 dispatchQueue];
  v10 = v9;
  if (v9)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10016092C;
    block[3] = &unk_100AE28D0;
    v12 = a4;
    block[5] = v7;
    block[6] = v6;
    block[4] = v8;
    dispatch_async(v9, block);
  }
}

void sub_10015E804(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_100806B90(v2 - 72);
  }

  _Unwind_Resume(exception_object);
}

void sub_10015E82C(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = a2;
  if (a2)
  {
    if (qword_100B508F0 != -1)
    {
      sub_10080ECAC();
    }

    v4 = sub_1000E41C0(off_100B508E8, v4);
  }

  if (dword_100B511E0 <= 30 && (dword_100B511E0 != -1 || _LogCategory_Initialize()))
  {
    if (v4)
    {
      sub_1000E5A58(v4, &v10);
    }

    LogPrintF_safe();
    if (!v4)
    {
      goto LABEL_18;
    }

    if (v11 < 0)
    {
      operator delete(v10);
    }
  }

  else if (!v4)
  {
LABEL_18:
    sub_10080F3D8();
    return;
  }

  v5 = [[NSString alloc] initWithFormat:@"%u", a3];
  v6 = qword_100B55358;
  v7 = [v6 dispatchQueue];
  v8 = v7;
  if (v7)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1001608E0;
    block[3] = &unk_100AE25C8;
    block[5] = v5;
    block[6] = v4;
    block[4] = v6;
    dispatch_async(v7, block);
  }
}

void sub_10015E9D8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_100806B90(v2 - 56);
  }

  _Unwind_Resume(exception_object);
}

void sub_10015EA00()
{
  if (dword_100B511E0 <= 30 && (dword_100B511E0 != -1 || _LogCategory_Initialize()))
  {
    sub_10080F440();
  }
}

void sub_10015F5F4(uint64_t a1, uint64_t a2, int a3, __int16 a4, __int16 a5)
{
  v17 = 0;
  v9 = [[CBDevice alloc] initWithBTStackDevice:a2 error:&v17];
  v10 = v17;
  if (v9)
  {
    if (dword_100B511E0 <= 30 && (dword_100B511E0 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF_safe();
    }

    v11 = sub_100007EE8();
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_10015F7B4;
    v13[3] = &unk_100AE0BC0;
    v13[4] = v9;
    v13[5] = a1;
    v14 = a3;
    v15 = a4;
    v16 = a5;
    sub_10000CA94(v11, v13);
  }

  else if (dword_100B511E0 <= 90 && (dword_100B511E0 != -1 || _LogCategory_Initialize()))
  {
    v12 = CUPrintNSError();
    LogPrintF_safe();
  }
}

void sub_10015F7B4(uint64_t a1)
{
  v2 = *(a1 + 40);
  os_unfair_lock_lock(&unk_100B55360);
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = *(v2 + 40);
  v4 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v4)
  {
    v5 = *v15;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v15 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v14 + 1) + 8 * i);
        v8 = [v7 dispatchQueue];
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_10015F964;
        block[3] = &unk_100AE25C8;
        v9 = *(a1 + 32);
        block[4] = v7;
        block[5] = v9;
        v10 = *(a1 + 52);
        v12 = *(a1 + 48);
        v13 = v10;
        dispatch_async(v8, block);
      }

      v4 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v4);
  }

  os_unfair_lock_unlock(&unk_100B55360);
}

void sub_10015F97C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, unsigned int a5, uint64_t a6)
{
  v23 = a3;
  v24 = WORD2(a3);
  v22 = 0;
  v10 = [[CBDevice alloc] initWithBTStackDevice:a2 error:&v22];
  v11 = v22;
  if (v10)
  {
    v12 = objc_alloc_init(CBDevice);
    v13 = [[NSData alloc] initWithBytes:&v23 length:6];
    [v12 setBtAddressData:v13];

    v14 = CUPrintAddress();
    [v12 setIdentifier:v14];

    v15 = [[NSData alloc] initWithBytes:a6 length:a5];
    v16 = a4;
    if (dword_100B511E0 <= 30 && (dword_100B511E0 != -1 || _LogCategory_Initialize()))
    {
      v17 = [v12 identifier];
      v18 = CUPrintNSDataHex();
      LogPrintF_safe();
    }

    v19 = sub_100007EE8();
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_10015FC74;
    v20[3] = &unk_100AE2670;
    v21 = v16;
    v20[4] = v15;
    v20[5] = v10;
    v20[6] = v12;
    v20[7] = a1;
    sub_10000CA94(v19, v20);

    goto LABEL_7;
  }

  if (dword_100B511E0 <= 90 && (dword_100B511E0 != -1 || _LogCategory_Initialize()))
  {
    v12 = CUPrintNSError();
    LogPrintF_safe();
LABEL_7:
  }
}