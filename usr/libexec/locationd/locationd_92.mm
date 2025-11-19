id sub_10068EFA8(uint64_t a1)
{
  v7 = 0;
  sub_100126E84(v8, "EnableBatchedSensorsDuringWorkouts", &v7, 0);
  result = +[CLBatchedAccelerometerService isSupported];
  if (result)
  {
    result = +[CLBatchedDeviceMotionService isSupported];
    if (result)
    {
      if (v8[1] == 1)
      {
        v3 = *(a1 + 8928);
        if (!v3)
        {
          v4 = [objc_msgSend(*(a1 + 32) "vendor")];
          *(a1 + 8928) = v4;
          [v4 registerDelegate:*(a1 + 32) inSilo:{objc_msgSend(*(a1 + 32), "silo")}];
          v3 = *(a1 + 8928);
        }

        [v3 registerForData:*(a1 + 32)];
        v5 = *(a1 + 8936);
        if (!v5)
        {
          v6 = [objc_msgSend(*(a1 + 32) "vendor")];
          *(a1 + 8936) = v6;
          [v6 registerDelegate:*(a1 + 32) inSilo:{objc_msgSend(*(a1 + 32), "silo")}];
          v5 = *(a1 + 8936);
        }

        return [v5 registerForData:*(a1 + 32)];
      }
    }
  }

  return result;
}

void sub_10068F0F8(uint64_t a1, uint64_t a2)
{
  if (qword_1025D43F0 != -1)
  {
    sub_10023AD98();
  }

  v4 = qword_1025D43F8;
  if (os_log_type_enabled(qword_1025D43F8, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a2 + 16);
    v6 = *(a1 + 9864);
    *buf = 67109376;
    *&buf[4] = v5;
    *&buf[8] = 1024;
    *&buf[10] = v6;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEFAULT, "[snapshot] evaluating from workout event %d from state %d", buf, 0xEu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101901700();
  }

  v7 = sub_100EB18C4(a2);
  v8 = *(a1 + 10072);
  v43 = *(a1 + 10056);
  v44 = v8;
  v45 = *(a1 + 10088);
  v9 = *(a1 + 10008);
  v39 = *(a1 + 9992);
  v40 = v9;
  v10 = *(a1 + 10040);
  v41 = *(a1 + 10024);
  v42 = v10;
  v11 = *(a1 + 9944);
  v35 = *(a1 + 9928);
  v36 = v11;
  v12 = *(a1 + 9976);
  v37 = *(a1 + 9960);
  v38 = v12;
  v13 = *(a1 + 9880);
  *buf = *(a1 + 9864);
  v32 = v13;
  v14 = *(a1 + 9912);
  v33 = *(a1 + 9896);
  v34 = v14;
  if (v7 != 7 && v7 != *buf)
  {
    v15 = *(a2 + 24);
    v27 = *(a2 + 160);
    v28 = *(a2 + 176);
    v29 = *(a2 + 192);
    v30 = *(a2 + 208);
    v23 = *(a2 + 96);
    v24 = *(a2 + 112);
    v25 = *(a2 + 128);
    v26 = *(a2 + 144);
    v19 = *(a2 + 32);
    v20 = *(a2 + 48);
    v21 = *(a2 + 64);
    v22 = *(a2 + 80);
    v17 = *a2;
    v18 = *(a2 + 16);
    v16 = (a1 + 9872);
    *(a1 + 9864) = v7;
    if (v7)
    {
      *(a1 + 10032) = v27;
      *(a1 + 10048) = v28;
      *(a1 + 10064) = v29;
      *(a1 + 10080) = v30;
      *(a1 + 9968) = v23;
      *(a1 + 9984) = v24;
      *(a1 + 10000) = v25;
      *(a1 + 10016) = v26;
      *(a1 + 9904) = v19;
      *(a1 + 9920) = v20;
      *(a1 + 9936) = v21;
      *(a1 + 9952) = v22;
      *v16 = v17;
      *(a1 + 9888) = v18;
      *(a1 + 10088) = v15;
      *(a1 + 10096) = 1;
    }

    else
    {
      *(a1 + 10080) = 0;
      *(a1 + 10048) = 0u;
      *(a1 + 10064) = 0u;
      *(a1 + 10016) = 0u;
      *(a1 + 10032) = 0u;
      *(a1 + 9984) = 0u;
      *(a1 + 10000) = 0u;
      *(a1 + 9952) = 0u;
      *(a1 + 9968) = 0u;
      *(a1 + 9920) = 0u;
      *(a1 + 9936) = 0u;
      *(a1 + 9888) = 0u;
      *(a1 + 9904) = 0u;
      *v16 = 0u;
      if (*(a1 + 10096) == 1)
      {
        *(a1 + 10096) = 0;
      }
    }

    sub_10068F4BC(a1, buf, a1 + 9864);
  }
}

uint64_t sub_10068F340(uint64_t a1, uint64_t a2)
{
  result = sub_1000A154C(a2);
  if (result)
  {
    if (result == 2)
    {
      LODWORD(__src[0]) = 0;
      sub_1000C1B4C(a1 + 136, &__src[1]);
      memset(&__src[18], 0, 160);
    }

    else
    {
      if (result != 1)
      {
LABEL_7:
        v10 = 1;
        memcpy(__src, __dst, sizeof(__src));
        return (*(*a1 + 152))(a1, &v10, __src, 1, 0xFFFFFFFFLL, 0);
      }

      LODWORD(__src[0]) = 1;
      sub_1000C1B4C(a1 + 136, &__src[1]);
      v5 = *(a2 + 192);
      v6 = *(a2 + 160);
      *&__src[33] = *(a2 + 176);
      *&__src[35] = v5;
      *&__src[31] = v6;
      v7 = *(a2 + 112);
      *&__src[23] = *(a2 + 96);
      *&__src[25] = v7;
      v8 = *(a2 + 144);
      *&__src[27] = *(a2 + 128);
      *&__src[29] = v8;
      v9 = *(a2 + 80);
      *&__src[19] = *(a2 + 64);
      __src[18] = *(a2 + 96);
      __src[37] = *(a2 + 208);
      *&__src[21] = v9;
    }

    memcpy(__dst, __src, sizeof(__dst));
    goto LABEL_7;
  }

  return result;
}

void sub_10068F4BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_1025D43F0 != -1)
  {
    sub_10023AD98();
  }

  v6 = qword_1025D43F8;
  if (os_log_type_enabled(qword_1025D43F8, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *a2;
    v8 = *(a2 + 104);
    v9 = *(a2 + 224);
    if (!*(a2 + 232))
    {
      v9 = 1.79769313e308;
    }

    v10 = [NSDate dateWithTimeIntervalSinceReferenceDate:v9];
    v11 = *a3;
    v12 = *(a3 + 104);
    v13 = *(a3 + 224);
    if (!*(a3 + 232))
    {
      v13 = 1.79769313e308;
    }

    v23 = 67110402;
    v24 = LODWORD(v7);
    v25 = 1024;
    v26 = v8;
    v27 = 2112;
    v28 = v10;
    v29 = 1024;
    v30 = LODWORD(v11);
    v31 = 1024;
    v32 = v12;
    v33 = 2112;
    v34 = [NSDate dateWithTimeIntervalSinceReferenceDate:v13];
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEFAULT, "[snapshot] workout snapshot transitioned from [state %d, workout %d at %@] to [state %d, workout %d at %@]", &v23, 0x2Eu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101901804(a2, a3);
  }

  v14 = *a2;
  v15 = *a3;
  if (*a2 == 1 && *&v15 == 5 || *&v14 == 5 && *&v15 == 1 || *&v14 == 6 && *&v15 == 5 || (*&v14 == 6 ? (v19 = *&v15 == 1) : (v19 = 0), !v19 ? (v20 = 0) : (v20 = 1), *&v14 != 1 ? (v21 = *&v14 == 5) : (v21 = 1), v21 ? (v22 = *&v15 == 6) : (v22 = 0), v22 || v20))
  {
    if (qword_1025D43F0 != -1)
    {
      sub_1018FFD38();
    }

    v16 = qword_1025D43F8;
    if (os_log_type_enabled(qword_1025D43F8, OS_LOG_TYPE_INFO))
    {
      v17 = *a2;
      v18 = *a3;
      v23 = 67109376;
      v24 = LODWORD(v17);
      v25 = 1024;
      v26 = LODWORD(v18);
      _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_INFO, "[snapshot] sending snapshot notification from %d to %d", &v23, 0xEu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1019019B4();
    }

    [*(a1 + 10168) broadcastEvent:{xpc_dictionary_create(0, 0, 0)}];
  }
}

void sub_10068F75C(uint64_t a1)
{
  if (qword_1025D43F0 != -1)
  {
    sub_10023AD98();
  }

  v2 = qword_1025D43F8;
  if (os_log_type_enabled(qword_1025D43F8, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 9864);
    LODWORD(v15[0]) = 67109120;
    DWORD1(v15[0]) = v3;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEFAULT, "[snapshot] evaluating after dismiss from state %d", v15, 8u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101901AB8(a1);
  }

  v4 = sub_100EB1940(*(a1 + 9864));
  v5 = *(a1 + 10072);
  v15[12] = *(a1 + 10056);
  v15[13] = v5;
  v15[14] = *(a1 + 10088);
  v6 = *(a1 + 10008);
  v15[8] = *(a1 + 9992);
  v15[9] = v6;
  v7 = *(a1 + 10040);
  v15[10] = *(a1 + 10024);
  v15[11] = v7;
  v8 = *(a1 + 9944);
  v15[4] = *(a1 + 9928);
  v15[5] = v8;
  v9 = *(a1 + 9976);
  v15[6] = *(a1 + 9960);
  v15[7] = v9;
  v10 = *(a1 + 9880);
  v15[0] = *(a1 + 9864);
  v15[1] = v10;
  v11 = *(a1 + 9912);
  v15[2] = *(a1 + 9896);
  v15[3] = v11;
  if (v4 != *&v15[0])
  {
    v12 = v4;
    Current = CFAbsoluteTimeGetCurrent();
    *(a1 + 9864) = v12;
    if (v12)
    {
      *(a1 + 10088) = Current;
      v14 = 1;
    }

    else
    {
      *(a1 + 10080) = 0;
      *(a1 + 10064) = 0u;
      *(a1 + 10048) = 0u;
      *(a1 + 10032) = 0u;
      *(a1 + 10016) = 0u;
      *(a1 + 10000) = 0u;
      *(a1 + 9984) = 0u;
      *(a1 + 9968) = 0u;
      *(a1 + 9952) = 0u;
      *(a1 + 9936) = 0u;
      *(a1 + 9920) = 0u;
      *(a1 + 9904) = 0u;
      *(a1 + 9888) = 0u;
      *(a1 + 9872) = 0u;
      if ((*(a1 + 10096) & 1) == 0)
      {
LABEL_13:
        sub_10068F4BC(a1, v15, a1 + 9864);
        return;
      }

      v14 = 0;
    }

    *(a1 + 10096) = v14;
    goto LABEL_13;
  }
}

void sub_10068F914(uint64_t a1, __int16 a2)
{
  if (sub_1010AC550())
  {
    if (a2 & 0x100) != 0 || (a2)
    {
      if (qword_1025D43F0 != -1)
      {
        sub_10023AD98();
      }

      v6 = qword_1025D43F8;
      if (os_log_type_enabled(qword_1025D43F8, OS_LOG_TYPE_DEFAULT))
      {
        *v11 = 0;
        _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEFAULT, "Enabled device motion.", v11, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101901C90();
      }

      v7 = sub_1010AC550();
      sub_1010ACC18(v7, *(a1 + 672), 0.01);
    }

    else
    {
      if (qword_1025D43F0 != -1)
      {
        sub_10023AD98();
      }

      v4 = qword_1025D43F8;
      if (os_log_type_enabled(qword_1025D43F8, OS_LOG_TYPE_DEFAULT))
      {
        *v11 = 0;
        _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEFAULT, "Disabled device motion.", v11, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101901BAC();
      }

      v5 = sub_1010AC550();
      sub_1010ACE04(v5, *(a1 + 672));
    }

    v8 = *(a1 + 8256);
    if (a2)
    {
      if (!v8)
      {
        if (qword_1025D43F0 != -1)
        {
          sub_1018FFD38();
        }

        v9 = qword_1025D43F8;
        if (os_log_type_enabled(qword_1025D43F8, OS_LOG_TYPE_DEFAULT))
        {
          *v11 = 0;
          _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEFAULT, "Starting turn detector", v11, 2u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_101901E58();
        }

        operator new();
      }
    }

    else if (v8)
    {
      if (qword_1025D43F0 != -1)
      {
        sub_1018FFD38();
      }

      v10 = qword_1025D43F8;
      if (os_log_type_enabled(qword_1025D43F8, OS_LOG_TYPE_DEFAULT))
      {
        *v11 = 0;
        _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEFAULT, "Stopping turn detector", v11, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101901D74();
      }

      sub_10068FBA8((a1 + 8256), 0);
    }
  }
}

uint64_t *sub_10068FBA8(uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    for (i = 0; i != -176; i -= 88)
    {
      *(v2 + i + 1344) = off_10246A3D0;
      sub_1003C93BC(v2 + i + 1408, *(v2 + i + 1416));
      sub_10045E1B0((v2 + i + 1360));
    }

    for (j = 0; j != -176; j -= 88)
    {
      *(v2 + j + 1008) = off_10246A3D0;
      sub_1003C93BC(v2 + j + 1072, *(v2 + j + 1080));
      sub_10045E1B0((v2 + j + 1024));
    }

    for (k = 0; k != -264; k -= 88)
    {
      *(v2 + k + 552) = off_10246A3D0;
      sub_1003C93BC(v2 + k + 616, *(v2 + k + 624));
      sub_10045E1B0((v2 + k + 568));
    }

    operator delete();
  }

  return result;
}

void sub_10068FCF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v33 = *a3;
  if (*(a3 + 39) < 0)
  {
    sub_100007244(&v34, *(a3 + 16), *(a3 + 24));
  }

  else
  {
    v34 = *(a3 + 16);
    v35 = *(a3 + 32);
  }

  sub_1006976A0(v36, (a3 + 40));
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  obj = *(a1 + 680);
  v6 = [obj countByEnumeratingWithState:&v18 objects:v32 count:16];
  if (v6)
  {
    v7 = *v19;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v19 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v18 + 1) + 8 * i);
        v10 = *(a2 + 176);
        v30[10] = *(a2 + 160);
        v30[11] = v10;
        v30[12] = *(a2 + 192);
        v31 = *(a2 + 208);
        v11 = *(a2 + 112);
        v30[6] = *(a2 + 96);
        v30[7] = v11;
        v12 = *(a2 + 144);
        v30[8] = *(a2 + 128);
        v30[9] = v12;
        v13 = *(a2 + 48);
        v30[2] = *(a2 + 32);
        v30[3] = v13;
        v14 = *(a2 + 80);
        v30[4] = *(a2 + 64);
        v30[5] = v14;
        v15 = *(a2 + 16);
        v30[0] = *a2;
        v30[1] = v15;
        v26 = v33;
        if (SHIBYTE(v35) < 0)
        {
          sub_100007244(&v27, v34, *(&v34 + 1));
        }

        else
        {
          v27 = v34;
          v28 = v35;
        }

        sub_1006976A0(v29, v36);
        v16 = sub_1006897D0(&v26);
        v22 = *(a1 + 8744);
        if (*(a1 + 8783) < 0)
        {
          sub_100007244(&__p, *(a1 + 8760), *(a1 + 8768));
        }

        else
        {
          __p = *(a1 + 8760);
          v24 = *(a1 + 8776);
        }

        sub_10069B5FC(v25, (a1 + 8784));
        [v9 onWorkoutSessionUpdate:v30 withOverview:v16 andPriors:sub_100690040(&v22)];
        sub_100106180(v25);
        if (SHIBYTE(v24) < 0)
        {
          operator delete(__p);
        }

        sub_100666704(v29);
        if (SHIBYTE(v28) < 0)
        {
          operator delete(v27);
        }
      }

      v6 = [obj countByEnumeratingWithState:&v18 objects:v32 count:16];
    }

    while (v6);
  }

  *(a1 + 8832) = *a3;
  std::string::operator=((a1 + 8848), (a3 + 16));
  sub_10069BC28((a1 + 8872), (a3 + 40));
  sub_100666704(v36);
  if (SHIBYTE(v35) < 0)
  {
    operator delete(v34);
  }
}

id sub_100690040(__int128 *a1)
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3321888768;
  v4[2] = sub_1006A3824;
  v4[3] = &unk_10246A400;
  v5 = *a1;
  if (*(a1 + 39) < 0)
  {
    sub_100007244(__p, *(a1 + 2), *(a1 + 3));
  }

  else
  {
    *__p = a1[1];
    v7 = *(a1 + 4);
  }

  sub_10069B5FC(v8, a1 + 5);
  v2 = [v4 copy];
  sub_100106180(v8);
  if (SHIBYTE(v7) < 0)
  {
    operator delete(__p[0]);
  }

  return v2;
}

uint64_t sub_100690180(uint64_t a1)
{
  v2 = a1 + 0x2000;
  v3 = *(a1 + 8944) == 1 && (*(a1 + 10144) & 1) == 0 && *(a1 + 376) == 0;
  *(a1 + 488) = v3;
  *(a1 + 552) = 1;
  if (*(a1 + 8946) != 1 || (*(a1 + 10144) & 1) != 0 || *(a1 + 376))
  {
    v4 = 0;
  }

  else
  {
    v4 = *(a1 + 8950);
  }

  *(a1 + 520) = v4 & 1;
  v5 = *(a1 + 8948);
  *(a1 + 584) = v5;
  if (*(a1 + 491) == 1)
  {
    v6 = *(a1 + 490);
  }

  else
  {
    v6 = (*(a1 + 489) ^ 1) & v3;
  }

  if (*(a1 + 523) == 1)
  {
    v7 = *(a1 + 522);
  }

  else
  {
    v7 = (*(a1 + 521) ^ 1) & v4;
  }

  if (*(a1 + 555) == 1)
  {
    v8 = *(a1 + 554);
  }

  else
  {
    v8 = *(a1 + 553) ^ 1;
  }

  if (*(a1 + 587) == 1)
  {
    v9 = *(a1 + 586);
  }

  else
  {
    v9 = (*(a1 + 585) ^ 1) & v5;
  }

  if (qword_1025D43F0 != -1)
  {
    sub_10023AD98();
  }

  v10 = qword_1025D43F8;
  if (os_log_type_enabled(qword_1025D43F8, OS_LOG_TYPE_DEFAULT))
  {
    v11 = *(v2 + 758);
    v12 = *(a1 + 376) == 0;
    *buf = 67241472;
    v16 = v6 & 1;
    v17 = 1026;
    v18 = v7 & 1;
    v19 = 1026;
    v20 = v8 & 1;
    v21 = 1026;
    v22 = v9 & 1;
    v23 = 1026;
    v24 = v12;
    v25 = 1024;
    v26 = v11;
    _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEFAULT, "Workout settings, start, %{public}d, resume, %{public}d, end, %{public}d, autopause, %{public}d, valid user info, %{public}d,  fitness tracking allowed, %d", buf, 0x26u);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D43F0 != -1)
    {
      sub_1018FFD38();
    }

    v14 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "void CLMotionStateMediator::updateWorkoutReminderSettings()", "%s\n", v14);
    if (v14 != buf)
    {
      free(v14);
    }
  }

  sub_100D30170((a1 + 6648), (v6 & 1), (v8 & 1));
  sub_100D367D8(a1 + 6648, v9 & 1);
  result = *(a1 + 10160);
  if (result)
  {
    return sub_100FD75FC(result, (v7 & 1));
  }

  return result;
}

void sub_1006904D8(uint64_t a1, int a2)
{
  v3 = *(a1 + 328);
  if (a2)
  {
    if (v3)
    {
      if (qword_1025D44D0 != -1)
      {
        sub_101901F3C();
      }

      v4 = qword_1025D44D8;
      if (os_log_type_enabled(qword_1025D44D8, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_INFO, "Wifi timer already existed, reinitializing.", buf, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_10190202C();
      }

      dispatch_release(*(a1 + 328));
      *(a1 + 328) = 0;
    }

    if (qword_1025D44D0 != -1)
    {
      sub_101901508();
    }

    v5 = qword_1025D44D8;
    if (os_log_type_enabled(qword_1025D44D8, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_INFO, "Starting Wifi Scans.", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101902108();
    }

    v6 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, [*(a1 + 40) queue]);
    *(a1 + 328) = v6;
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_100690718;
    handler[3] = &unk_102449A78;
    handler[4] = a1;
    dispatch_source_set_event_handler(v6, handler);
    dispatch_source_set_timer(*(a1 + 328), 0, 0x1DCD65000uLL, 0x3B9ACA00uLL);
    dispatch_resume(*(a1 + 328));
  }

  else if (v3)
  {
    if (qword_1025D44D0 != -1)
    {
      sub_101901F3C();
    }

    v7 = qword_1025D44D8;
    if (os_log_type_enabled(qword_1025D44D8, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_INFO, "Stopping Wifi Scans.", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101901F50();
    }

    dispatch_release(*(a1 + 328));
    *(a1 + 328) = 0;
  }
}

id sub_100690718(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (qword_1025D44D0 != -1)
  {
    sub_101901F3C();
  }

  v2 = qword_1025D44D8;
  if (os_log_type_enabled(qword_1025D44D8, OS_LOG_TYPE_DEBUG))
  {
    *v4 = 0;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEBUG, "Triggering Wifi Scan.", v4, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1019021E4();
  }

  return [*(*(v1 + 10232) + 16) syncgetStartScanWithType:8 lowPriority:0 passive:0 requester:"motionworkout"];
}

void sub_1006907D8(uint64_t a1)
{
  v1 = *(a1 + 10208);
  if (v1)
  {
    if (*(a1 + 696))
    {
      v3 = *(a1 + 696) - 1;
      *(a1 + 696) = v3;
      if (!v3)
      {
        [*(v1 + 16) unregister:*(v1 + 8) forNotification:9];
      }
    }

    if (qword_1025D43F0 != -1)
    {
      sub_10023AD98();
    }

    v4 = qword_1025D43F8;
    if (os_log_type_enabled(qword_1025D43F8, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 696);
      v7[0] = 67109120;
      v7[1] = v5;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEFAULT, "OneSecondHeartRateCounter %d", v7, 8u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1019022C0((a1 + 696));
    }
  }

  else
  {
    if (qword_1025D43F0 != -1)
    {
      sub_10023AD98();
    }

    v6 = qword_1025D43F8;
    if (os_log_type_enabled(qword_1025D43F8, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v7[0]) = 0;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_ERROR, "Attempting unregistering for 1Hz HR with uninitialized HR client", v7, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1019023AC();
    }
  }
}

void sub_10069094C(uint64_t a1)
{
  v1 = *(a1 + 10208);
  if (v1)
  {
    [*(v1 + 16) register:*(v1 + 8) forNotification:9 registrationInfo:0];
    ++*(a1 + 696);
    if (qword_1025D43F0 != -1)
    {
      sub_10023AD98();
    }

    v3 = qword_1025D43F8;
    if (os_log_type_enabled(qword_1025D43F8, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 696);
      v6[0] = 67109120;
      v6[1] = v4;
      _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEFAULT, "Registering for 1Hz HR. OneSecondHeartRateCounter %d", v6, 8u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101902490((a1 + 696));
    }
  }

  else
  {
    if (qword_1025D43F0 != -1)
    {
      sub_10023AD98();
    }

    v5 = qword_1025D43F8;
    if (os_log_type_enabled(qword_1025D43F8, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v6[0]) = 0;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_ERROR, "Attempting registering for 1Hz HR with uninitialized HR client", v6, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_10190257C();
    }
  }
}

id sub_100690AB8(uint64_t a1)
{
  result = objc_alloc_init(BrightnessSystemClient);
  *(a1 + 688) = result;
  if (result)
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_100690B74;
    v3[3] = &unk_102468960;
    v3[4] = a1;
    [result registerNotificationBlock:v3 forProperties:&off_1025542E8];
    return [*(a1 + 688) setProperty:kCFBooleanTrue forKey:@"ActivateALS"];
  }

  return result;
}

id sub_100690B74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = [*(v4 + 32) silo];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100690BF8;
  v7[3] = &unk_102449BC0;
  v7[4] = a3;
  v7[5] = v4;
  return [v5 async:v7];
}

uint64_t sub_100690BF8(uint64_t a1)
{
  v2 = *(a1 + 40);
  CFAbsoluteTimeGetCurrent();
  [*(a1 + 32) floatValue];
  [*(v2 + 32) silo];
  v3 = *(**(v2 + 8264) + 40);

  return v3();
}

void sub_100690C7C(uint64_t a1)
{
  v2 = *(a1 + 688);
  if (v2)
  {
    [v2 unregisterNotificationForKeys:&off_102554300];
    [*(a1 + 688) registerNotificationBlock:0];

    *(a1 + 688) = 0;
  }
}

id sub_100690CC8(uint64_t a1, uint64_t a2)
{
  if (qword_1025D44D0 != -1)
  {
    sub_101901F3C();
  }

  v4 = qword_1025D44D8;
  if (os_log_type_enabled(qword_1025D44D8, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEFAULT, "IndoorOutdoor, starting indoorOutdoor", v6, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101902660();
  }

  (*(**(a1 + 8264) + 56))(*(a1 + 8264), a2);
  return sub_100690AB8(a1);
}

void sub_100690DA8(uint64_t a1)
{
  if (qword_1025D44D0 != -1)
  {
    sub_101901F3C();
  }

  v2 = qword_1025D44D8;
  if (os_log_type_enabled(qword_1025D44D8, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEFAULT, "IndoorOutdoor, stopping indoorOutdoor", v3, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10190273C();
  }

  (*(**(a1 + 8264) + 64))(*(a1 + 8264));
  sub_100690C7C(a1);
}

void sub_100690E78(uint64_t a1, uint64_t a2, int a3)
{
  *(a1 + 8992) = (*(a2 + 24) << 30) + (*(a2 + 32) << 27);
  v5 = *a2;
  v6 = *(a2 + 8);
  v7 = *a2 - 1;
  if (v7 > 3)
  {
    v8 = 0;
  }

  else
  {
    v8 = qword_101C88520[v7];
  }

  v9 = *(a2 + 16);
  Current = CFAbsoluteTimeGetCurrent();
  v33 = 0u;
  v34 = 0u;
  v35 = 0;
  v32 = 0u;
  v31 = 0u;
  v30 = 0u;
  v29 = 0u;
  v28 = 0u;
  v27 = 0u;
  v26 = 0u;
  v25 = 0u;
  v24 = 0u;
  v23 = 0u;
  v22 = 0u;
  v21 = 0u;
  v20 = 0u;
  v19 = 0u;
  v18 = 0u;
  *v17 = Current;
  v17[1] = v8;
  v17[2] = v6;
  if (qword_1025D44D0 != -1)
  {
    sub_101901F3C();
  }

  v11 = qword_1025D44D8;
  if (os_log_type_enabled(qword_1025D44D8, OS_LOG_TYPE_INFO))
  {
    *buf = 134349568;
    *&buf[4] = v8;
    *&buf[12] = 2050;
    *&buf[14] = v6;
    *&buf[22] = 2050;
    v16 = v9;
    _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_INFO, "IndoorOutdoor,new location type,%{public}ld,confidence,%{public}ld,probability,%{public}f", buf, 0x20u);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D44D0 != -1)
    {
      sub_101901508();
    }

    *v13 = 134349568;
    *&v13[4] = v8;
    *&v13[12] = 2050;
    *&v13[14] = v6;
    *&v13[22] = 2050;
    v14 = v9;
    v12 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "virtual void CLMotionStateMediator::onIndoorOutdoorUpdate(const CLIndoorOutdoorProtocol::IndoorOutdoorEvent &, BOOL)", "%s\n", v12);
    if (v12 != buf)
    {
      free(v12);
    }
  }

  *buf = 3;
  (*(*a1 + 152))(a1, buf, v17, 1, 0xFFFFFFFFLL, 0);
  if (*(a1 + 461) == 1)
  {
    (*(*a1 + 216))(a1);
  }

  else if (a3)
  {
    sub_100D3676C(a1 + 6648, v5);
  }

  *buf = *(a1 + 10112);
  *&buf[16] = *(a1 + 10128);
  *v13 = Current;
  *&v13[8] = v8;
  *&v13[16] = v6;
  sub_1006911AC(a1, buf, v13);
  *(a1 + 10112) = Current;
  *(a1 + 10120) = v8;
  *(a1 + 10128) = v6;
}

void sub_1006911AC(_DWORD *a1, uint64_t a2, uint64_t a3)
{
  v6 = -[NSDateComponents hour]([+[NSCalendar currentCalendar](NSCalendar components:"components:fromDate:" fromDate:32, +[NSDate date](NSDate, "date")], "hour");
  if (v6 == a1[2535])
  {
    v7 = a1[2534];
  }

  else
  {
    v7 = 0;
    a1[2535] = v6;
    a1[2534] = 0;
  }

  if (v7 < a1[110])
  {
    a1[2534] = v7 + 1;
    sub_100691844(*(a2 + 8), &v41);
    sub_100691858(*(a2 + 16), v39);
    sub_10000EC00(&v37, [(NSString *)+[NSDateFormatter localizedStringFromDate:dateStyle:timeStyle:](NSDateFormatter UTF8String:[NSDate dateWithTimeIntervalSinceReferenceDate:?];
    sub_100691844(*(a3 + 8), v35);
    sub_100691858(*(a3 + 16), &v33);
    sub_10000EC00(v31, [(NSString *)+[NSDateFormatter localizedStringFromDate:dateStyle:timeStyle:](NSDateFormatter UTF8String:[NSDate dateWithTimeIntervalSinceReferenceDate:?];
    if (qword_1025D44D0 != -1)
    {
      sub_101901508();
    }

    v8 = qword_1025D44D8;
    if (os_log_type_enabled(qword_1025D44D8, OS_LOG_TYPE_DEBUG))
    {
      v9 = &v41;
      if (v42 < 0)
      {
        v9 = v41;
      }

      v10 = v39;
      if (v40 < 0)
      {
        v10 = v39[0];
      }

      v11 = v35;
      if (v36 < 0)
      {
        v11 = v35[0];
      }

      v12 = &v33;
      if (v34 < 0)
      {
        v12 = v33;
      }

      *buf = 136315906;
      v52 = v9;
      v53 = 2080;
      v54 = v10;
      v55 = 2080;
      v56 = v11;
      v57 = 2080;
      v58 = v12;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEBUG, "IndoorOutdoor, issuing notification old (%s, %s) new (%s, %s)", buf, 0x2Au);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101902818(buf);
      v13 = &v41;
      if (v42 < 0)
      {
        v13 = v41;
      }

      v14 = v39;
      if (v40 < 0)
      {
        v14 = v39[0];
      }

      v15 = v35;
      if (v36 < 0)
      {
        v15 = v35[0];
      }

      v16 = &v33;
      if (v34 < 0)
      {
        v16 = v33;
      }

      v43 = 136315906;
      v44 = v13;
      v45 = 2080;
      v46 = v14;
      v47 = 2080;
      v48 = v15;
      v49 = 2080;
      v50 = v16;
      v17 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "void CLMotionStateMediator::issueUserNotificationForIndoorOutdoorIfAllowed(CLMotionStateMediator_Type::IndoorOutdoorUpdate, CLMotionStateMediator_Type::IndoorOutdoorUpdate)", "%s\n", v17);
      if (v17 != buf)
      {
        free(v17);
      }
    }

    block[0] = _NSConcreteStackBlock;
    block[1] = 3321888768;
    block[2] = sub_10069186C;
    block[3] = &unk_102468980;
    if (SHIBYTE(v38) < 0)
    {
      sub_100007244(&v19, v37, *(&v37 + 1));
    }

    else
    {
      v19 = v37;
      v20 = v38;
    }

    if (SHIBYTE(v42) < 0)
    {
      sub_100007244(&v21, v41, *(&v41 + 1));
    }

    else
    {
      v21 = v41;
      v22 = v42;
    }

    if (SHIBYTE(v40) < 0)
    {
      sub_100007244(&v23, v39[0], v39[1]);
    }

    else
    {
      v23 = *v39;
      v24 = v40;
    }

    if (SHIBYTE(v32) < 0)
    {
      sub_100007244(&v25, v31[0], v31[1]);
    }

    else
    {
      v25 = *v31;
      v26 = v32;
    }

    if (SHIBYTE(v36) < 0)
    {
      sub_100007244(&v27, v35[0], v35[1]);
    }

    else
    {
      v27 = *v35;
      v28 = v36;
    }

    if (SHIBYTE(v34) < 0)
    {
      sub_100007244(&__p, v33, *(&v33 + 1));
    }

    else
    {
      __p = v33;
      v30 = v34;
    }

    dispatch_async(&_dispatch_main_q, block);
    if (SHIBYTE(v30) < 0)
    {
      operator delete(__p);
    }

    if (SHIBYTE(v28) < 0)
    {
      operator delete(v27);
    }

    if (SHIBYTE(v26) < 0)
    {
      operator delete(v25);
    }

    if (SHIBYTE(v24) < 0)
    {
      operator delete(v23);
    }

    if (SHIBYTE(v22) < 0)
    {
      operator delete(v21);
    }

    if (SHIBYTE(v20) < 0)
    {
      operator delete(v19);
    }

    if (SHIBYTE(v32) < 0)
    {
      operator delete(v31[0]);
    }

    if (SHIBYTE(v34) < 0)
    {
      operator delete(v33);
    }

    if (SHIBYTE(v36) < 0)
    {
      operator delete(v35[0]);
    }

    if (SHIBYTE(v38) < 0)
    {
      operator delete(v37);
    }

    if (SHIBYTE(v40) < 0)
    {
      operator delete(v39[0]);
    }

    if (SHIBYTE(v42) < 0)
    {
      operator delete(v41);
    }
  }
}

void sub_10069171C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *__p, uint64_t a34, int a35, __int16 a36, char a37, char a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44, void *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50, void *a51, uint64_t a52, int a53, __int16 a54, char a55, char a56, void *a57, uint64_t a58, int a59, __int16 a60, char a61, char a62, void *a63)
{
  if (a38 < 0)
  {
    operator delete(__p);
  }

  if (a44 < 0)
  {
    operator delete(a39);
  }

  if (a50 < 0)
  {
    operator delete(a45);
  }

  if (a56 < 0)
  {
    operator delete(a51);
  }

  if (a62 < 0)
  {
    operator delete(a57);
  }

  if (a68 < 0)
  {
    operator delete(a63);
  }

  _Unwind_Resume(a1);
}

void sub_10069186C(char *a1)
{
  v1 = a1 + 32;
  if (a1[55] < 0)
  {
    v1 = *v1;
  }

  v2 = a1 + 56;
  if (a1[79] < 0)
  {
    v2 = *v2;
  }

  v3 = a1 + 80;
  if (a1[103] < 0)
  {
    v3 = *v3;
  }

  v4 = a1 + 104;
  if (a1[127] < 0)
  {
    v4 = *v4;
  }

  v5 = a1 + 128;
  if (a1[151] < 0)
  {
    v5 = *v5;
  }

  v6 = a1 + 152;
  if (a1[175] < 0)
  {
    v6 = *v6;
  }

  v7 = CFStringCreateWithFormat(0, 0, @"Old indoor/outdoor state\n%s, %s, %s New\n%s, %s, %s", v1, v2, v3, v4, v5, v6);
  CFUserNotificationDisplayNotice(0.0, 0, 0, 0, 0, @"IndoorOutdoorState", v7, 0);

  CFRelease(v7);
}

_BYTE *sub_100691950(_BYTE *result, uint64_t a2)
{
  v3 = result;
  if (*(a2 + 55) < 0)
  {
    result = sub_100007244(result + 32, *(a2 + 32), *(a2 + 40));
  }

  else
  {
    v4 = *(a2 + 32);
    *(result + 6) = *(a2 + 48);
    *(result + 2) = v4;
  }

  if (*(a2 + 79) < 0)
  {
    result = sub_100007244(v3 + 56, *(a2 + 56), *(a2 + 64));
  }

  else
  {
    v5 = *(a2 + 56);
    *(v3 + 9) = *(a2 + 72);
    *(v3 + 56) = v5;
  }

  if (*(a2 + 103) < 0)
  {
    result = sub_100007244(v3 + 80, *(a2 + 80), *(a2 + 88));
  }

  else
  {
    v6 = *(a2 + 80);
    *(v3 + 12) = *(a2 + 96);
    *(v3 + 5) = v6;
  }

  if (*(a2 + 127) < 0)
  {
    result = sub_100007244(v3 + 104, *(a2 + 104), *(a2 + 112));
  }

  else
  {
    v7 = *(a2 + 104);
    *(v3 + 15) = *(a2 + 120);
    *(v3 + 104) = v7;
  }

  if (*(a2 + 151) < 0)
  {
    result = sub_100007244(v3 + 128, *(a2 + 128), *(a2 + 136));
  }

  else
  {
    v8 = *(a2 + 128);
    *(v3 + 18) = *(a2 + 144);
    *(v3 + 8) = v8;
  }

  if (*(a2 + 175) < 0)
  {
    return sub_100007244(v3 + 152, *(a2 + 152), *(a2 + 160));
  }

  v9 = *(a2 + 152);
  *(v3 + 21) = *(a2 + 168);
  *(v3 + 152) = v9;
  return result;
}

void sub_100691A64(_Unwind_Exception *exception_object)
{
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

  if (*(v1 + 79) < 0)
  {
    operator delete(*(v1 + 56));
  }

  if (*(v1 + 55) < 0)
  {
    operator delete(*(v1 + 32));
  }

  _Unwind_Resume(exception_object);
}

void sub_100691AE0(uint64_t a1)
{
  if (*(a1 + 175) < 0)
  {
    operator delete(*(a1 + 152));
  }

  if (*(a1 + 151) < 0)
  {
    operator delete(*(a1 + 128));
  }

  if (*(a1 + 127) < 0)
  {
    operator delete(*(a1 + 104));
  }

  if (*(a1 + 103) < 0)
  {
    operator delete(*(a1 + 80));
  }

  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  if (*(a1 + 55) < 0)
  {
    v2 = *(a1 + 32);

    operator delete(v2);
  }
}

void sub_100691B78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_1025D43F0 != -1)
  {
    sub_10023AD98();
  }

  v6 = qword_1025D43F8;
  if (os_log_type_enabled(qword_1025D43F8, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v11[0]) = 0;
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEFAULT, "Did Begin Workout Session", v11, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10190285C();
  }

  sub_10068FCF0(a1, a2, a3);
  sub_10068E928(a1, a2);
  v7 = *(a2 + 176);
  v11[6] = *(a2 + 160);
  v11[7] = v7;
  v11[8] = *(a2 + 192);
  v12 = *(a2 + 208);
  v8 = *(a2 + 112);
  v11[2] = *(a2 + 96);
  v11[3] = v8;
  v9 = *(a2 + 144);
  v11[4] = *(a2 + 128);
  v11[5] = v9;
  v10 = *(a2 + 80);
  v11[0] = *(a2 + 64);
  v11[1] = v10;
  sub_100691CB0(a1, v11);
  sub_100691DCC(a1);
}

id sub_100691CB0(uint64_t a1, uint64_t a2)
{
  sub_100D35C68(a1 + 6648, a2);
  v4 = sub_1012572FC(*(a2 + 32), *(a2 + 48));
  if (qword_1025D43F0 != -1)
  {
    sub_10023AD98();
  }

  v5 = qword_1025D43F8;
  if (os_log_type_enabled(qword_1025D43F8, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 134349056;
    v8 = v4;
    _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEFAULT, "#gfc started workout, starting geofence with radius %{public}f", &v7, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101902938(v4);
  }

  result = sub_10001CF3C();
  if (result)
  {
    if (v4 != -1.0)
    {
      return [*(a1 + 10104) startGeoFenceWithRadius:v4];
    }
  }

  return result;
}

void sub_100691DCC(uint64_t a1)
{
  if (*(a1 + 10160))
  {
    sub_1006926C0((a1 + 10160), 0);
  }

  operator new();
}

void sub_100691F5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_1025D43F0 != -1)
  {
    sub_10023AD98();
  }

  v6 = qword_1025D43F8;
  if (os_log_type_enabled(qword_1025D43F8, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v8) = 0;
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEFAULT, "Did End Workout Session", &v8, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101902A38();
  }

  sub_100692124(a1, *(a2 + 8));
  if (*(a2 + 16) == 15)
  {
    sub_1000C1B4C(a1 + 136, &v8);
    sub_1006921F4(a1, [CMWorkout CMWorkoutTypeFromCLMotionActivityType:v8], *(a2 + 8));
  }

  sub_10068FCF0(a1, a2, a3);
  sub_10068E928(a1, a2);
  v11 = 0;
  *__p = 0u;
  memset(v10, 0, sizeof(v10));
  v8 = 0u;
  v7 = (a1 + 8848);
  *(a1 + 8832) = 0u;
  if (*(a1 + 8871) < 0)
  {
    operator delete(*v7);
  }

  *v7 = *__p;
  *(a1 + 8864) = *&v10[0];
  BYTE7(v10[0]) = 0;
  LOBYTE(__p[0]) = 0;
  sub_10069C000((a1 + 8872), v10 + 8);
  sub_100666704(v10 + 1);
  if (SBYTE7(v10[0]) < 0)
  {
    operator delete(__p[0]);
  }

  if (*(a1 + 10160))
  {
    sub_1006926C0((a1 + 10160), 0);
  }
}

uint64_t sub_100692124(uint64_t a1, double a2)
{
  result = sub_1000B9750((a1 + 136));
  if (result)
  {
    sub_100D35D84((a1 + 6648), a2);
    result = sub_10001CF3C();
    if (result)
    {
      if (qword_1025D43F0 != -1)
      {
        sub_10023AD98();
      }

      v5 = qword_1025D43F8;
      if (os_log_type_enabled(qword_1025D43F8, OS_LOG_TYPE_DEBUG))
      {
        *v6 = 0;
        _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEBUG, "#gfc stopped workout, stopping geofence", v6, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101902B14();
      }

      return [*(a1 + 10104) stopGeoFence];
    }
  }

  return result;
}

void sub_1006921F4(uint64_t a1, _DWORD *a2, double a3)
{
  v6 = [*(a1 + 664) objectForKeyedSubscript:&off_10254EE28];
  [v6 unionSet:{objc_msgSend(*(a1 + 664), "objectForKeyedSubscript:", +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", a2))}];
  if (v6)
  {
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v7 = [v6 countByEnumeratingWithState:&v23 objects:v39 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v24;
      v10 = 0.0;
      do
      {
        v11 = 0;
        do
        {
          if (*v24 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v12 = *(*(&v23 + 1) + 8 * v11);
          v13 = sub_1000137E0();
          v14 = [v12 syncget_prepareSessionEndForSessionType:a2 atEndTime:a3];
          v15 = sub_1000137E0();
          if (qword_1025D43F0 != -1)
          {
            sub_1018FFD38();
          }

          v16 = v15 - v13;
          v17 = qword_1025D43F8;
          if (os_log_type_enabled(qword_1025D43F8, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 67109632;
            v34 = a2;
            v35 = 2048;
            v36 = v16;
            v37 = 1024;
            v38 = v14;
            _os_log_impl(dword_100000000, v17, OS_LOG_TYPE_DEFAULT, "PrepareSessionEnd, sent client end for session, %d, duration (s), %f, success, %d", buf, 0x18u);
          }

          if (sub_10000A100(121, 2))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1025D43F0 != -1)
            {
              sub_1018FFD38();
            }

            v27 = 67109632;
            v28 = a2;
            v29 = 2048;
            v30 = v16;
            v31 = 1024;
            v32 = v14;
            v19 = _os_log_send_and_compose_impl();
            sub_100152C7C("Generic", 1, 0, 2, "void CLMotionStateMediator::prepareForSessionEnd(CMWorkoutType, CFAbsoluteTime)", "%s\n", v19);
            if (v19 != buf)
            {
              free(v19);
            }
          }

          if (v16 > 0.005)
          {
            if (qword_1025D43F0 != -1)
            {
              sub_1018FFD38();
            }

            v18 = qword_1025D43F8;
            if (os_log_type_enabled(qword_1025D43F8, OS_LOG_TYPE_ERROR))
            {
              *buf = 67109632;
              v34 = a2;
              v35 = 2048;
              v36 = v16;
              v37 = 1024;
              v38 = v14;
              _os_log_impl(dword_100000000, v18, OS_LOG_TYPE_ERROR, "PrepareSessionEnd, client response duration exceeded 5 ms threshold, sessionType, %d, duration (s), %f, success, %d", buf, 0x18u);
            }

            if (sub_10000A100(121, 0))
            {
              bzero(buf, 0x65CuLL);
              if (qword_1025D43F0 != -1)
              {
                sub_1018FFD38();
              }

              v27 = 67109632;
              v28 = a2;
              v29 = 2048;
              v30 = v16;
              v31 = 1024;
              v32 = v14;
              v20 = _os_log_send_and_compose_impl();
              sub_100152C7C("Generic", 1, 0, 0, "void CLMotionStateMediator::prepareForSessionEnd(CMWorkoutType, CFAbsoluteTime)", "%s\n", v20);
              if (v20 != buf)
              {
                free(v20);
              }
            }
          }

          v10 = v10 + v16;
          v11 = v11 + 1;
        }

        while (v8 != v11);
        v21 = [v6 countByEnumeratingWithState:&v23 objects:v39 count:16];
        v8 = v21;
      }

      while (v21);
      if (v10 > 0.015)
      {
        if (qword_1025D43F0 != -1)
        {
          sub_1018FFD38();
        }

        v22 = qword_1025D43F8;
        if (os_log_type_enabled(qword_1025D43F8, OS_LOG_TYPE_ERROR))
        {
          *buf = 67109376;
          v34 = a2;
          v35 = 2048;
          v36 = v10;
          _os_log_impl(dword_100000000, v22, OS_LOG_TYPE_ERROR, "PrepareSessionEnd, total client response duration exceeded 15 ms threshold, sessionType, %d, total duration (s), %f", buf, 0x12u);
        }

        if (sub_10000A100(121, 0))
        {
          sub_101902BF0(a2, v10);
        }
      }
    }
  }
}

uint64_t sub_1006926C0(uint64_t *a1, uint64_t a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    sub_100FD68F8();

    operator delete();
  }

  return result;
}

void sub_100692714(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_1025D43F0 != -1)
  {
    sub_10023AD98();
  }

  v6 = qword_1025D43F8;
  if (os_log_type_enabled(qword_1025D43F8, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v21) = 0;
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEFAULT, "Did Set Workout Type During Workout Session", &v21, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101902D08();
  }

  sub_10068FCF0(a1, a2, a3);
  sub_10068E928(a1, a2);
  memset(dst, 0, sizeof(dst));
  memset(uu2, 0, sizeof(uu2));
  v7 = *(a1 + 7672);
  v31 = *(a1 + 7656);
  v32 = v7;
  v33 = *(a1 + 7688);
  v34 = *(a1 + 7704);
  v8 = *(a1 + 7608);
  v27 = *(a1 + 7592);
  v28 = v8;
  v9 = *(a1 + 7640);
  v29 = *(a1 + 7624);
  v30 = v9;
  v10 = *(a1 + 7544);
  v23 = *(a1 + 7528);
  v24 = v10;
  v11 = *(a1 + 7576);
  v25 = *(a1 + 7560);
  v26 = v11;
  v12 = *(a1 + 7512);
  v21 = *(a1 + 7496);
  v22 = v12;
  uuid_copy(dst, &v25);
  uuid_copy(uu2, (a2 + 64));
  if (uuid_compare(dst, uu2))
  {
    v13 = *(a1 + 8736);
    if (v13 && *(v13 + 113) == 1 && *(a2 + 96) == 33)
    {
      if (qword_1025D43F0 != -1)
      {
        sub_1018FFD38();
      }

      v14 = qword_1025D43F8;
      if (os_log_type_enabled(qword_1025D43F8, OS_LOG_TYPE_DEFAULT))
      {
        v15 = *(a1 + 7592);
        LODWORD(v21) = 134217984;
        *(&v21 + 4) = v15;
        _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_DEFAULT, "ignore client transistion, remaining in workout type: %ld", &v21, 0xCu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101902DE4();
      }
    }

    else
    {
      Current = CFAbsoluteTimeGetCurrent();
      sub_100692124(a1, Current);
      v17 = *(a2 + 176);
      v27 = *(a2 + 160);
      v28 = v17;
      v29 = *(a2 + 192);
      *&v30 = *(a2 + 208);
      v18 = *(a2 + 112);
      v23 = *(a2 + 96);
      v24 = v18;
      v19 = *(a2 + 144);
      v25 = *(a2 + 128);
      v26 = v19;
      v20 = *(a2 + 80);
      v21 = *(a2 + 64);
      v22 = v20;
      sub_100691CB0(a1, &v21);
    }
  }

  sub_100691DCC(a1);
}

uint64_t sub_100692988(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_1025D43F0 != -1)
  {
    sub_10023AD98();
  }

  v6 = qword_1025D43F8;
  if (os_log_type_enabled(qword_1025D43F8, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEFAULT, "Did manual pause workout session", v9, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101902ED8();
  }

  v7 = *(a1 + 10160);
  if (v7)
  {
    sub_100FD6E24(v7, *(a2 + 24));
  }

  sub_10068FCF0(a1, a2, a3);
  sub_10068E928(a1, a2);
  return sub_100692124(a1, *(a2 + 8));
}

id sub_100692A70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_1025D43F0 != -1)
  {
    sub_10023AD98();
  }

  v6 = qword_1025D43F8;
  if (os_log_type_enabled(qword_1025D43F8, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v13[0]) = 0;
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEFAULT, "Did manual resume workout session", v13, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101902FB4();
  }

  v7 = *(a1 + 10160);
  if (v7)
  {
    sub_100FD70BC(v7, *(a2 + 24));
  }

  sub_10068FCF0(a1, a2, a3);
  sub_10068E928(a1, a2);
  v8 = *(a2 + 176);
  v13[6] = *(a2 + 160);
  v13[7] = v8;
  v13[8] = *(a2 + 192);
  v14 = *(a2 + 208);
  v9 = *(a2 + 112);
  v13[2] = *(a2 + 96);
  v13[3] = v9;
  v10 = *(a2 + 144);
  v13[4] = *(a2 + 128);
  v13[5] = v10;
  v11 = *(a2 + 80);
  v13[0] = *(a2 + 64);
  v13[1] = v11;
  return sub_100691CB0(a1, v13);
}

id sub_100692BB4(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  sub_1000C1B4C(a1 + 136, buf);
  v8 = [CMWorkout CMWorkoutTypeFromCLMotionActivityType:*buf];
  Current = CFAbsoluteTimeGetCurrent();
  if (qword_1025D43F0 != -1)
  {
    sub_1018FFD38();
  }

  v10 = qword_1025D43F8;
  if (os_log_type_enabled(qword_1025D43F8, OS_LOG_TYPE_DEFAULT))
  {
    v11 = *a2;
    v12 = *(a2 + 96);
    *buf = 134219008;
    *&buf[4] = v11;
    *&buf[12] = 2048;
    *&buf[14] = v12;
    *&buf[22] = 2048;
    *&buf[24] = v8;
    *v20 = 2048;
    *&v20[2] = a4;
    *&v20[10] = 2048;
    *&v20[12] = Current;
    _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEFAULT, "Detected change in activity during workout session, startTime %f, newType, %ld, oldType, %ld, previousEndTime, %f, now, %f", buf, 0x34u);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D43F0 != -1)
    {
      sub_1018FFD38();
    }

    v18 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "virtual void CLMotionStateMediator::onWorkoutSessionDetectedChangeInActivity(const CLMotionStateMediator_Type::WorkoutEvent &, const CLMotionStateMediator_Type::WorkoutSessionOverview &, CFAbsoluteTime)", "%s\n", v18);
    if (v18 != buf)
    {
      free(v18);
    }
  }

  sub_10068FCF0(a1, a2, a3);
  sub_10068E928(a1, a2);
  sub_100692124(a1, a4);
  v13 = *(a2 + 176);
  v23 = *(a2 + 160);
  v24 = v13;
  v25 = *(a2 + 192);
  v26 = *(a2 + 208);
  v14 = *(a2 + 112);
  *v20 = *(a2 + 96);
  *&v20[16] = v14;
  v15 = *(a2 + 144);
  v21 = *(a2 + 128);
  v22 = v15;
  v16 = *(a2 + 80);
  *buf = *(a2 + 64);
  *&buf[16] = v16;
  return sub_100691CB0(a1, buf);
}

uint64_t sub_100692E4C(uint64_t result, int a2)
{
  v2 = result;
  if (a2)
  {
    if (*(result + 8336) > 0)
    {
      return result;
    }

    sub_10003848C(v10);
    sub_100038730(&v11, "Workout Series Predictor", 24);
    if ((v18 & 0x10) != 0)
    {
      v5 = v17;
      if (v17 < v14)
      {
        v17 = v14;
        v5 = v14;
      }

      locale = v13[4].__locale_;
    }

    else
    {
      if ((v18 & 8) == 0)
      {
        v3 = 0;
        v9 = 0;
LABEL_20:
        *(&__p + v3) = 0;
        sub_10023B1D0(v2 + 8328, &__p);
        if (v9 < 0)
        {
          operator delete(__p);
        }

        v11 = v7;
        if (v16 < 0)
        {
          operator delete(v15);
        }

        std::locale::~locale(v13);
        std::iostream::~basic_iostream();
        return std::ios::~ios();
      }

      locale = v13[1].__locale_;
      v5 = v13[3].__locale_;
    }

    v3 = v5 - locale;
    if ((v5 - locale) >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_100061080();
    }

    if (v3 >= 0x17)
    {
      operator new();
    }

    v9 = v5 - locale;
    if (v3)
    {
      memmove(&__p, locale, v3);
    }

    goto LABEL_20;
  }

  if (*(result + 8336) >= 1)
  {
    v4 = result + 8328;

    return sub_10026ED10(v4);
  }

  return result;
}

void sub_100693108(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_10026C504(&a15);
  _Unwind_Resume(a1);
}

uint64_t sub_10069313C(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2 <= 7)
  {
    if (v2)
    {
      if (v2 != 1)
      {
        if (v2 == 4)
        {
          ++*(result + 8984);
          *(result + 9040) = *(a2 + 24);
        }

        return result;
      }

LABEL_10:
      *(result + 10280) = 0;
      return result;
    }

    *(result + 8984) = 0;
    *(result + 9040) = 0;
LABEL_13:
    *(result + 10280) = 1;
    return result;
  }

  switch(v2)
  {
    case 8:
      goto LABEL_13;
    case 10:
      goto LABEL_10;
    case 12:
      ++*(result + 8988);
      break;
  }

  return result;
}

uint64_t sub_1006931C4(uint64_t a1, uint64_t a2)
{
  v3 = sub_1000206B4();
  v7 = *(a2 + 96);
  sub_1004FD1C8(v3, "kMostRecentWorkoutEventWorkoutType", &v7);
  v4 = sub_1000206B4();
  v7 = *(a2 + 104);
  sub_1004FD1C8(v4, "kMostRecentWorkoutEventLocationType", &v7);
  v5 = *sub_1000206B4();
  return (*(v5 + 944))();
}

uint64_t sub_100693260(uint64_t *a1, uint64_t a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    sub_1006A3ACC(result);

    operator delete();
  }

  return result;
}

void sub_1006932AC(uint64_t a1, uint64_t *a2)
{
  v4 = vcvt_hight_f32_f64(vcvt_f32_f64(*(a2 + 1)), *(a2 + 3));
  v21 = vextq_s8(v4, v4, 4uLL);
  v8 = *(a2 + 5);
  v5 = a2[7];
  sub_10011E648(&v21, v8);
  v17[0] = v21;
  v17[1] = v8;
  v6 = *a2;
  v18 = v5;
  v19 = v6;
  Current = CFAbsoluteTimeGetCurrent();
  sub_100D34008(a1 + 6648, v17);
  v7 = *(a1 + 8256);
  if (v7)
  {
    *(&v9 + 1) = 0;
    v10 = 0;
    v11 = 0x80000000800000;
    v12 = 0;
    v13 = 0;
    v14 = 0x80000000800000;
    v15 = 0x80000000800000;
    v16 = -8388609;
    if (sub_1010D69AC(v7, v17, &v9))
    {
      sub_100693398(a1 + 5592, &v9);
      sub_100693398(a1 + 2936, &v9);
    }
  }
}

void sub_100693398(uint64_t a1, __int128 *a2)
{
  v3 = a2[3];
  v19 = a2[2];
  v20 = v3;
  v21 = *(a2 + 8);
  v4 = a2[1];
  v17 = *a2;
  v18 = v4;
  v5 = *(a1 + 192);
  if (v5)
  {
    (*(*v5 + 48))(v5, &v17);
  }

  v6 = *(a1 + 56);
  if (v6)
  {
    v7 = v6 + *(a1 + 48) - 1;
    v8 = *(a1 + 24);
    v9 = *(v8[v7 / 0x38] + 9 * (v7 % 0x38));
    if (v9 > *&v17)
    {
      v10 = *(a1 + 32);
      *(a1 + 56) = 0;
      v11 = (v10 - v8) >> 3;
      if (v11 >= 3)
      {
        do
        {
          operator delete(*v8);
          v12 = *(a1 + 32);
          v8 = (*(a1 + 24) + 8);
          *(a1 + 24) = v8;
          v11 = (v12 - v8) >> 3;
        }

        while (v11 > 2);
      }

      if (v11 == 1)
      {
        v13 = 28;
      }

      else
      {
        if (v11 != 2)
        {
LABEL_12:
          if (qword_1025D4200 != -1)
          {
            sub_101903090();
          }

          v14 = qword_1025D4208;
          if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_INFO))
          {
            *buf = 134218240;
            v23 = v17;
            v24 = 2048;
            v25 = v9;
            _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_INFO, "time rollback on add, newItemTime, %f, lastItemTime, %f", buf, 0x16u);
          }

          if (sub_10000A100(121, 2))
          {
            sub_1019030B8();
          }

          goto LABEL_18;
        }

        v13 = 56;
      }

      *(a1 + 48) = v13;
      goto LABEL_12;
    }
  }

LABEL_18:
  sub_1006A3C74((a1 + 16), &v17);
  v15 = v20;
  *(a1 + 128) = v19;
  *(a1 + 144) = v15;
  *(a1 + 160) = v21;
  v16 = v18;
  *(a1 + 96) = v17;
  *(a1 + 112) = v16;
}

uint64_t sub_1006935A8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  if (qword_1025D43F0 != -1)
  {
    sub_10023AD98();
  }

  v10 = qword_1025D43F8;
  if (os_log_type_enabled(qword_1025D43F8, OS_LOG_TYPE_INFO))
  {
    *buf = 134349824;
    *&buf[4] = a2;
    *&buf[12] = 2050;
    *&buf[14] = a3;
    *&buf[22] = 2050;
    v32 = a4;
    *v33 = 2050;
    *&v33[2] = a5;
    _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_INFO, "Background Escalation Manager, ActivityAction : %{public}ld, ActivityReason : %{public}ld, workoutType : %{public}ld, startTime : %{public}f", buf, 0x2Au);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D43F0 != -1)
    {
      sub_1018FFD38();
    }

    *v23 = 134349824;
    v24 = *&a2;
    v25 = 2050;
    v26 = *&a3;
    v27 = 2050;
    v28 = a4;
    v29 = 2050;
    v30 = a5;
    v21 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "void CLMotionStateMediator::onBackgroundEscalationManagerUpdate(CFAbsoluteTime, CMActivityAction, CMActivityReason, CMWorkoutType)", "%s\n", v21);
    if (v21 != buf)
    {
      free(v21);
    }
  }

  v47 = 0u;
  v48 = 0u;
  v49 = 0;
  v46 = 0u;
  v45 = 0u;
  v44 = 0u;
  v43 = 0u;
  v42 = 0u;
  v41 = 0u;
  v40 = 0u;
  v39 = 0u;
  v38 = 0u;
  v37 = 0u;
  v36 = 0u;
  v35 = 0u;
  v34 = 0u;
  *buf = a5;
  *&buf[8] = 0;
  *&buf[16] = a2;
  v32 = a3;
  *v33 = a4;
  __asm { FMOV            V0.2D, #-1.0 }

  v22 = _Q0;
  *&v33[8] = _Q0;
  if (a2 == 1)
  {
    sub_1006907D8(a1);
    v16 = a1[829];
    v17 = *(v16 + 8);
    v18 = *(v16 + 16);
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v49 = 0;
    *buf = a5;
    *&buf[8] = xmmword_101C652A0;
    v32 = a3;
    *v33 = a4;
    *&v33[8] = v17;
    *&v33[16] = v18;
    if (qword_1025D43F0 != -1)
    {
      sub_1018FFD38();
    }

    v19 = qword_1025D43F8;
    if (os_log_type_enabled(qword_1025D43F8, OS_LOG_TYPE_INFO))
    {
      *v23 = 134349312;
      v24 = v17;
      v25 = 2050;
      v26 = v18;
      _os_log_impl(dword_100000000, v19, OS_LOG_TYPE_INFO, "Background Escalation Manager, Appending to ActivityAction : recoveryStart : %{public}f, recoveryEnd : %{public}f", v23, 0x16u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1019031B4(v17, v18);
    }
  }

  else if (!a2)
  {
    sub_10069094C(a1);
  }

  *v23 = 4;
  result = (*(*a1 + 152))(a1, v23, buf, 1, 0xFFFFFFFFLL, 0);
  if (a2 == 1)
  {
    *(a1[829] + 8) = v22;
  }

  return result;
}

void sub_100693948(uint64_t a1, int a2, unsigned __int8 *a3)
{
  if (a2 > 6)
  {
    if (a2 <= 9)
    {
      if (a2 == 7)
      {
        *buf = *a3;
        *&buf[4] = *(a3 + 1);
        v29 = sub_100023ED4(0);
        (*(*(v29 + 96) + 24))();
      }

      else if (a2 == 9)
      {
        if (qword_1025D43F0 != -1)
        {
          sub_10023AD98();
        }

        v17 = qword_1025D43F8;
        if (os_log_type_enabled(qword_1025D43F8, OS_LOG_TYPE_DEFAULT))
        {
          v18 = *a3;
          v19 = a3[1];
          *buf = 67109376;
          *&buf[4] = v18;
          *&buf[8] = 1024;
          *&buf[10] = v19;
          _os_log_impl(dword_100000000, v17, OS_LOG_TYPE_DEFAULT, "CLAS,kNotificationGPSActivationEvent,shouldActivate,%d,isTypeIntermittentGps,%d", buf, 0xEu);
        }

        if (sub_10000A100(121, 2))
        {
          sub_1019032C4();
        }

        if (a3[1])
        {
          if (*a3)
          {
            sub_100B55994(a1 + 10288, 1);
          }

          else
          {
            sub_100B55994(a1 + 10288, -1);
          }
        }

        else
        {
          v42 = *(a1 + 10248);
          v44 = *(v42 + 8);
          v43 = *(v42 + 16);
          if (*a3)
          {
            [v43 register:v44 forNotification:2 registrationInfo:0];
          }

          else
          {
            [v43 unregister:v44 forNotification:2];
          }
        }
      }

      return;
    }

    if (a2 != 10)
    {
      if (a2 == 11)
      {
        *buf = *a3;
        *&buf[4] = *(a3 + 1);
        v40 = sub_100023ED4(0);
        (*(*(v40 + 96) + 32))();
      }

      else if (a2 == 12)
      {
        LODWORD(v73) = 5;
        v70 = 0u;
        v71 = 0u;
        v72 = 0;
        v69 = 0u;
        v68 = 0u;
        v67 = 0u;
        memset(&v66[8], 0, 160);
        v9 = *a3;
        v10 = *(a3 + 1);
        v11 = *(a3 + 2);
        *v66 = *(a3 + 6);
        v64 = v10;
        v65 = v11;
        *buf = v9;
        (*(*a1 + 152))(a1, &v73, buf, 1, 0xFFFFFFFFLL, 0);
      }

      return;
    }

    v70 = 0u;
    v71 = 0u;
    v72 = 0;
    v69 = 0u;
    v68 = 0u;
    v67 = 0u;
    memset(&v66[8], 0, 160);
    v31 = *a3;
    v32 = *(a3 + 1);
    v33 = *(a3 + 2);
    *v66 = *(a3 + 6);
    v64 = v32;
    v65 = v33;
    *buf = v31;
    if (*(a3 + 1) == 1)
    {
      v34 = *(a3 + 2);
      if (*(a3 + 4))
      {
        if (!v34)
        {
          sub_10069094C(a1);
          goto LABEL_88;
        }
      }

      else if (v34 != 1)
      {
        goto LABEL_88;
      }

      sub_1006907D8(a1);
    }

LABEL_88:
    LODWORD(v73) = 4;
    (*(*a1 + 152))(a1, &v73, buf, 1, 0xFFFFFFFFLL, 0);
    return;
  }

  if (a2 <= 2)
  {
    if (!a2)
    {
      v20 = *(a3 + 10);
      v21 = *(a3 + 12);
      *&v66[128] = *(a3 + 11);
      *&v66[144] = v21;
      v22 = *(a3 + 6);
      v23 = *(a3 + 8);
      v24 = *(a3 + 9);
      *&v66[64] = *(a3 + 7);
      *&v66[80] = v23;
      *&v66[160] = *(a3 + 26);
      *&v66[96] = v24;
      *&v66[112] = v20;
      v25 = *(a3 + 3);
      v65 = *(a3 + 2);
      *v66 = v25;
      v26 = *(a3 + 5);
      *&v66[16] = *(a3 + 4);
      *&v66[32] = v26;
      *&v66[48] = v22;
      v27 = *(a3 + 1);
      *buf = *a3;
      v64 = v27;
      v28 = sub_1000A154C(buf);
      if (v28 == 2)
      {
        sub_100AB05FC(a1 + 136);
        if (*&v66[48] == 37 || *&v66[48] == 23)
        {
          v28 = [*(*(a1 + 10184) + 16) unregister:*(*(a1 + 10184) + 8) forNotification:1];
        }
      }

      else if (v28 == 1)
      {
        sub_100AB05F0(a1 + 136, [CMWorkout CLMotionActivityTypeFromCMWorkoutType:*&v66[48]], &v66[16]);
        if (*&v66[48] == 37 || *&v66[48] == 23)
        {
          v28 = [*(*(a1 + 10184) + 16) register:*(*(a1 + 10184) + 8) forNotification:1 registrationInfo:0];
        }
      }

      v45 = *&v66[128];
      v46 = *&v66[144];
      v47 = *&v66[96];
      *(a1 + 9640) = *&v66[112];
      *(a1 + 9656) = v45;
      *(a1 + 9672) = v46;
      v48 = *&v66[64];
      v49 = *&v66[80];
      *(a1 + 9576) = *&v66[48];
      *(a1 + 9592) = v48;
      *(a1 + 9688) = *&v66[160];
      *(a1 + 9608) = v49;
      *(a1 + 9624) = v47;
      v50 = *v66;
      *(a1 + 9512) = v65;
      *(a1 + 9528) = v50;
      v51 = *&v66[32];
      *(a1 + 9544) = *&v66[16];
      *(a1 + 9560) = v51;
      v52 = v64;
      *(a1 + 9480) = *buf;
      *(a1 + 9496) = v52;
      v53 = v64;
      if (!v64)
      {
        v83 = *&v66[112];
        v84 = *&v66[128];
        v85 = *&v66[144];
        v79 = *&v66[48];
        v80 = *&v66[64];
        v86 = *&v66[160];
        v81 = *&v66[80];
        v82 = *&v66[96];
        v75 = v65;
        v76 = *v66;
        v77 = *&v66[16];
        v78 = *&v66[32];
        v73 = *buf;
        v74 = v64;
        sub_1006931C4(v28, &v73);
        sub_1006907D8(a1);
        v53 = v64;
      }

      if (v53 <= 1)
      {
        sub_100E35540(*(a1 + 6632), v53);
      }

      v83 = *&v66[112];
      v84 = *&v66[128];
      v85 = *&v66[144];
      v79 = *&v66[48];
      v80 = *&v66[64];
      v86 = *&v66[160];
      v81 = *&v66[80];
      v82 = *&v66[96];
      v75 = v65;
      v76 = *v66;
      v77 = *&v66[16];
      v78 = *&v66[32];
      v73 = *buf;
      v74 = v64;
      sub_10069313C(a1, &v73);
      sub_10068E928(a1, buf);
      sub_10068F340(a1, buf);
      sub_10049FD74(a1 + 9000, buf);
      return;
    }

    if (a2 != 2)
    {
      return;
    }

    if (*a3 != 1)
    {
      if (*(a1 + 8280) >= 1)
      {
        v41 = a1 + 8272;

        sub_10026ED10(v41);
      }

      return;
    }

    if (*(a1 + 8280) > 0)
    {
      return;
    }

    sub_10003848C(buf);
    v12 = sub_100038730(&v64, "Workout Detected (", 18);
    v13 = [+[CMWorkout workoutName:](CMWorkout workoutName:{*(a3 + 1)), "UTF8String"}];
    v14 = strlen(v13);
    v15 = sub_100038730(v12, v13, v14);
    sub_100038730(v15, ")", 1);
    if ((v66[72] & 0x10) != 0)
    {
      v58 = *&v66[64];
      if (*&v66[64] < *&v66[24])
      {
        *&v66[64] = *&v66[24];
        v58 = *&v66[24];
      }

      v59 = *&v66[16];
    }

    else
    {
      if ((v66[72] & 8) == 0)
      {
        v16 = 0;
        v62 = 0;
LABEL_100:
        *(&__dst + v16) = 0;
        sub_10023B1D0(a1 + 8272, &__dst);
        if (v62 < 0)
        {
          operator delete(__dst);
        }

        *&v64 = v60;
        if ((v66[63] & 0x80000000) != 0)
        {
          operator delete(*&v66[40]);
        }

        std::locale::~locale(&v65);
        std::iostream::~basic_iostream();
        std::ios::~ios();
        return;
      }

      v59 = *(&v65 + 1);
      v58 = *&v66[8];
    }

    v16 = v58 - v59;
    if ((v58 - v59) >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_100061080();
    }

    if (v16 >= 0x17)
    {
      operator new();
    }

    v62 = v58 - v59;
    if (v16)
    {
      memmove(&__dst, v59, v16);
    }

    goto LABEL_100;
  }

  if (a2 == 3)
  {
    v30 = *a3;

    sub_10068F914(a1, v30);
  }

  else
  {
    if (a2 != 5)
    {
      if (a2 == 6)
      {
        v5 = sub_100B7E5D0();
        v6 = *a3;
        v7 = *(a3 + 1);
        v8 = *(a3 + 2);

        sub_100B804E4(v5, v6, v7, v8);
      }

      return;
    }

    v36 = (a3 + 8);
    v35 = *(a3 + 1);
    v37 = *(a1 + 8384);
    if (v35 > 2)
    {
      if (v35 == 3)
      {
        v38 = @"cycling.total";
        v39 = @"cycling.falsePositive";
        goto LABEL_80;
      }

      if (v35 == 14)
      {
        v38 = @"other.total";
        v39 = @"other.falsePositive";
        goto LABEL_80;
      }
    }

    else
    {
      if (v35 == 1)
      {
        v38 = @"walk.total";
        v39 = @"walk.falsePositive";
        goto LABEL_80;
      }

      if (v35 == 2)
      {
        v38 = @"run.total";
        v39 = @"run.falsePositive";
LABEL_80:
        if (*a3)
        {
          v57 = v39;
        }

        else
        {
          v57 = v38;
        }

        sub_100745C64(v37, v57);
        return;
      }
    }

    if (*a3)
    {
      v54 = @"unsupported.falsePositive";
    }

    else
    {
      v54 = @"unsupported.total";
    }

    sub_100745C64(v37, v54);
    if (qword_1025D43F0 != -1)
    {
      sub_10023AD98();
    }

    v55 = qword_1025D43F8;
    if (os_log_type_enabled(qword_1025D43F8, OS_LOG_TYPE_ERROR))
    {
      v56 = *v36;
      *buf = 67109120;
      *&buf[4] = v56;
      _os_log_impl(dword_100000000, v55, OS_LOG_TYPE_ERROR, "Unsupported escalation type reported for metrics, %d", buf, 8u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1019033D0();
    }
  }
}

void sub_100694414(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_10026C504(&a16);
  _Unwind_Resume(a1);
}

void sub_100694448(__n128 *a1, __n128 *a2)
{
  v13 = *a2;
  v3 = a1[8].n128_u64[1];
  if (v3)
  {
    (*(*v3 + 48))(v3, &v13);
  }

  v4 = a1[3].n128_u64[1];
  if (v4)
  {
    v5 = v4 + a1[3].n128_u64[0] - 1;
    v6 = a1[1].n128_u64[1];
    v7 = (*(v6 + ((v5 >> 5) & 0x7FFFFFFFFFFFFF8)))[2 * v5];
    if (v7 > v13.n128_f64[0])
    {
      v8 = a1[2].n128_u64[0];
      a1[3].n128_u64[1] = 0;
      v9 = (v8 - v6) >> 3;
      if (v9 >= 3)
      {
        do
        {
          operator delete(*v6);
          v10 = a1[2].n128_u64[0];
          v6 = (a1[1].n128_u64[1] + 8);
          a1[1].n128_u64[1] = v6;
          v9 = (v10 - v6) >> 3;
        }

        while (v9 > 2);
      }

      if (v9 == 1)
      {
        v11 = 128;
      }

      else
      {
        if (v9 != 2)
        {
LABEL_12:
          if (qword_1025D4200 != -1)
          {
            sub_101903090();
          }

          v12 = qword_1025D4208;
          if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_INFO))
          {
            *buf = 134218240;
            v15 = v13.n128_u64[0];
            v16 = 2048;
            v17 = v7;
            _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_INFO, "time rollback on add, newItemTime, %f, lastItemTime, %f", buf, 0x16u);
          }

          if (sub_10000A100(121, 2))
          {
            sub_1019034D4();
          }

          goto LABEL_18;
        }

        v11 = 256;
      }

      a1[3].n128_u64[0] = v11;
      goto LABEL_12;
    }
  }

LABEL_18:
  sub_1006A3F10(a1[1].n128_u64, &v13);
  a1[6] = v13;
}

void sub_100694620(uint64_t a1, __int128 *a2)
{
  v3 = a2[1];
  v15 = *a2;
  v16 = v3;
  v17 = *(a2 + 8);
  v4 = *(a1 + 160);
  if (v4)
  {
    (*(*v4 + 48))(v4, &v15);
  }

  v5 = *(a1 + 56);
  if (v5)
  {
    v6 = v5 + *(a1 + 48) - 1;
    v7 = *(a1 + 24);
    v8 = *(v7[v6 / 0x66] + 5 * (v6 % 0x66));
    if (v8 > *&v15)
    {
      v9 = *(a1 + 32);
      *(a1 + 56) = 0;
      v10 = (v9 - v7) >> 3;
      if (v10 >= 3)
      {
        do
        {
          operator delete(*v7);
          v11 = *(a1 + 32);
          v7 = (*(a1 + 24) + 8);
          *(a1 + 24) = v7;
          v10 = (v11 - v7) >> 3;
        }

        while (v10 > 2);
      }

      if (v10 == 1)
      {
        v12 = 51;
      }

      else
      {
        if (v10 != 2)
        {
LABEL_12:
          if (qword_1025D4200 != -1)
          {
            sub_101903090();
          }

          v13 = qword_1025D4208;
          if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_INFO))
          {
            *buf = 134218240;
            v19 = v15;
            v20 = 2048;
            v21 = v8;
            _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_INFO, "time rollback on add, newItemTime, %f, lastItemTime, %f", buf, 0x16u);
          }

          if (sub_10000A100(121, 2))
          {
            sub_1019035D0();
          }

          goto LABEL_18;
        }

        v12 = 102;
      }

      *(a1 + 48) = v12;
      goto LABEL_12;
    }
  }

LABEL_18:
  sub_1006A4170((a1 + 16), &v15);
  v14 = v16;
  *(a1 + 96) = v15;
  *(a1 + 112) = v14;
  *(a1 + 128) = v17;
}

uint64_t sub_100694820(uint64_t a1, uint64_t a2)
{
  if (qword_1025D43F0 != -1)
  {
    sub_10023AD98();
  }

  v4 = qword_1025D43F8;
  if (os_log_type_enabled(qword_1025D43F8, OS_LOG_TYPE_INFO))
  {
    v5 = *a2;
    v6 = *(a2 + 16);
    v12 = 134218240;
    v13 = v5;
    v14 = 2048;
    v15 = v6;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_INFO, "Stair escalation event, timestamp, %f, stair metric, %.3f", &v12, 0x16u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1019036CC();
  }

  result = *(a1 + 6632);
  v8 = *(result + 216) - 1;
  if (*(a2 + 20) != 1)
  {
    if (v8 > 1)
    {
      return result;
    }

    goto LABEL_11;
  }

  if (v8 < 2)
  {
LABEL_11:
    v9 = *(a2 + 16);
    v10 = *(a2 + 24);
    v11 = 0;
    return sub_100E35950(result, v11, v9, v10);
  }

  sub_1000BF264(result, 1, *a2);
  result = *(a1 + 6632);
  v9 = *(a2 + 16);
  v10 = *(a2 + 24);
  v11 = 1;
  return sub_100E35950(result, v11, v9, v10);
}

void sub_100694970(uint64_t a1, int a2, int *a3, _OWORD *__src)
{
  v5 = *a3;
  if (*a3 > 5)
  {
    if (v5 == 6)
    {
      v14 = __src[3];
      v16[2] = __src[2];
      v16[3] = v14;
      v17 = *(__src + 8);
      v15 = __src[1];
      v16[0] = *__src;
      v16[1] = v15;
      sub_100DA5A74((a1 + 8400), v16);
    }

    else if (v5 == 7)
    {
      v7 = a1 + 6648;

      sub_100D36764(v7, __src);
    }
  }

  else if (v5 == 2)
  {
    v8 = *(a1 + 376);
    v10 = __src[1];
    v9 = __src[2];
    v11 = *__src;
    *(a1 + 380) = *(__src + 44);
    *(a1 + 336) = v11;
    *(a1 + 352) = v10;
    *(a1 + 368) = v9;
    memmove((a1 + 7008), __src, 0x3CuLL);
    sub_100E356C0(*(a1 + 6632), (a1 + 336));
    if (v8 != *(a1 + 376))
    {
      if (qword_1025D43F0 != -1)
      {
        sub_10023AD98();
      }

      v12 = qword_1025D43F8;
      if (os_log_type_enabled(qword_1025D43F8, OS_LOG_TYPE_DEFAULT))
      {
        v13 = *(a1 + 376);
        LODWORD(v16[0]) = 67109376;
        DWORD1(v16[0]) = v8;
        WORD4(v16[0]) = 1024;
        *(v16 + 10) = v13;
        _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_DEFAULT, "Workout settings, updating due to condition change from %d to %d", v16, 0xEu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101903BB8();
      }

      sub_100690180(a1);
    }
  }

  else if (v5 == 4)
  {
    v6 = (a1 + 3608);

    sub_100694B9C(v6, __src);
  }
}

void sub_100694B9C(__n128 *a1, __n128 *a2)
{
  v13 = *a2;
  v14 = a2[1].n128_u64[0];
  v3 = a1[9].n128_u64[0];
  if (v3)
  {
    (*(*v3 + 48))(v3, &v13);
  }

  v4 = a1[3].n128_u64[1];
  if (v4)
  {
    v5 = v4 + a1[3].n128_u64[0] - 1;
    v6 = a1[1].n128_u64[1];
    v7 = *(v6[v5 / 0xAA] + 3 * (v5 % 0xAA) + 1);
    if (v7 > v13.n128_f64[1])
    {
      v8 = a1[2].n128_u64[0];
      a1[3].n128_u64[1] = 0;
      v9 = (v8 - v6) >> 3;
      if (v9 >= 3)
      {
        do
        {
          operator delete(*v6);
          v10 = a1[2].n128_u64[0];
          v6 = (a1[1].n128_u64[1] + 8);
          a1[1].n128_u64[1] = v6;
          v9 = (v10 - v6) >> 3;
        }

        while (v9 > 2);
      }

      if (v9 == 1)
      {
        v11 = 85;
      }

      else
      {
        if (v9 != 2)
        {
LABEL_12:
          if (qword_1025D4200 != -1)
          {
            sub_101903090();
          }

          v12 = qword_1025D4208;
          if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_INFO))
          {
            *buf = 134218240;
            v16 = v13.n128_u64[1];
            v17 = 2048;
            v18 = v7;
            _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_INFO, "time rollback on add, newItemTime, %f, lastItemTime, %f", buf, 0x16u);
          }

          if (sub_10000A100(121, 2))
          {
            sub_101903CBC();
          }

          goto LABEL_18;
        }

        v11 = 170;
      }

      a1[3].n128_u64[0] = v11;
      goto LABEL_12;
    }
  }

LABEL_18:
  sub_1006A43FC(a1[1].n128_u64, &v13);
  a1[6] = v13;
  a1[7].n128_u64[0] = v14;
}

void sub_100694D98(uint64_t a1, uint64_t a2, _DWORD *a3, int *a4)
{
  if (*a3)
  {
    if (*a3 == 1)
    {
      if (qword_1025D4200 != -1)
      {
        sub_1018FFCE0();
      }

      v6 = qword_1025D4208;
      if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_DEBUG))
      {
        v7 = *a4;
        v11 = 67240192;
        v12 = v7;
        _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "Watch wrist state updated,onwrist,%{public}d", &v11, 8u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101903EAC(a4);
      }

      sub_100D308E4(a1 + 6648, a4);
    }
  }

  else
  {
    if (qword_1025D4200 != -1)
    {
      sub_1018FFCE0();
    }

    v8 = qword_1025D4208;
    if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_DEBUG))
    {
      v10 = *a4;
      v9 = a4[1];
      v11 = 67240448;
      v12 = v9;
      v13 = 1026;
      v14 = v10;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEBUG, "Watch orientation settings updated,crown,%{public}d,wrist,%{public}d", &v11, 0xEu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101903DB8();
    }

    sub_100D35C48(a1 + 6648, a4);
  }
}

id sub_100694F40(uint64_t a1, uint64_t a2, int *a3, unsigned __int8 *a4)
{
  if (*a3 == 15)
  {
    if (qword_1025D43F0 != -1)
    {
      sub_10023AD98();
    }

    v9 = qword_1025D43F8;
    if (os_log_type_enabled(qword_1025D43F8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(a1 + 10144);
      v11 = *a4;
      *buf = 67240448;
      *&buf[4] = v10;
      LOWORD(v23) = 1026;
      *(&v23 + 2) = v11;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEFAULT, "System Power Save Mode changed, was, %{public}d, now, %{public}d", buf, 0xEu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101903F98();
    }

    *(a1 + 10144) = *a4;
    v12 = sub_100023ED4(0);
    (*(*v12 + 72))(v12, (*a4 & 1) == 0);
    sub_100690180(a1);
    v13 = *(a1 + 10264);
    v14 = [NSString stringWithUTF8String:"com.apple.locationd.bundle-/System/Library/LocationBundles/MotionCalibration.bundle"];
    *buf = _NSConcreteStackBlock;
    *&v23 = 3221225472;
    *(&v23 + 1) = sub_1000398C4;
    *v24 = &unk_1024689D0;
    *&v24[8] = a1;
    return [v13 getAuthorizationContextOfNonZonalClient:v14 withReply:buf];
  }

  else
  {
    if (*a3 != 7)
    {
      if (qword_1025D4200 != -1)
      {
        sub_1018FFCE0();
      }

      v16 = qword_1025D4208;
      if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_FAULT))
      {
        v17 = *a3;
        *buf = 68289795;
        *&buf[4] = 0;
        LOWORD(v23) = 2082;
        *(&v23 + 2) = "";
        WORD5(v23) = 1026;
        HIDWORD(v23) = v17;
        *v24 = 2082;
        *&v24[2] = "assert";
        *&v24[10] = 2081;
        *&v24[12] = "0";
        _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Wiring bug, should not be subscribed to , notification:%{public}d, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x2Cu);
        if (qword_1025D4200 != -1)
        {
          goto LABEL_29;
        }
      }

      while (1)
      {
        v18 = qword_1025D4208;
        if (os_signpost_enabled(qword_1025D4208))
        {
          v19 = *a3;
          *buf = 68289795;
          *&buf[4] = 0;
          LOWORD(v23) = 2082;
          *(&v23 + 2) = "";
          WORD5(v23) = 1026;
          HIDWORD(v23) = v19;
          *v24 = 2082;
          *&v24[2] = "assert";
          *&v24[10] = 2081;
          *&v24[12] = "0";
          _os_signpost_emit_with_name_impl(dword_100000000, v18, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Wiring bug, should not be subscribed to ", "{msg%{public}.0s:Wiring bug, should not be subscribed to , notification:%{public}d, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x2Cu);
          if (qword_1025D4200 != -1)
          {
            sub_101903090();
          }
        }

        v20 = qword_1025D4208;
        if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_INFO))
        {
          v21 = *a3;
          *buf = 68289795;
          *&buf[4] = 0;
          LOWORD(v23) = 2082;
          *(&v23 + 2) = "";
          WORD5(v23) = 1026;
          HIDWORD(v23) = v21;
          *v24 = 2082;
          *&v24[2] = "assert";
          *&v24[10] = 2081;
          *&v24[12] = "0";
          _os_log_impl(dword_100000000, v20, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Wiring bug, should not be subscribed to , notification:%{public}d, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x2Cu);
        }

        abort_report_np();
LABEL_29:
        sub_101903090();
      }
    }

    if (qword_1025D4200 != -1)
    {
      sub_1018FFCE0();
    }

    v6 = qword_1025D4208;
    if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_DEBUG))
    {
      v7 = a4[9];
      *buf = 67240192;
      *&buf[4] = v7;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "Battery connected state %{public}d", buf, 8u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101904094(a4);
    }

    sub_100D308C0(a1 + 6648, a4);
    result = *(a1 + 8392);
    if (result)
    {
      return sub_100C1ACB4(result, a4);
    }
  }

  return result;
}

void sub_1006953BC(uint64_t a1, uint64_t a2, _DWORD *a3, uint64_t a4)
{
  if (*a3 == 9)
  {
    if (qword_1025D43F0 != -1)
    {
      sub_10023AD98();
    }

    v6 = qword_1025D43F8;
    if (os_log_type_enabled(qword_1025D43F8, OS_LOG_TYPE_DEBUG))
    {
      v7 = *(a4 + 40);
      v8 = *(a4 + 8);
      v9 = *(a4 + 16);
      v10 = 134284033;
      v11 = v7;
      v12 = 2049;
      v13 = v8;
      v14 = 2049;
      v15 = v9;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "One second hr, startTime,%{private}f,hr,%{private}f,hrConfidence,%{private}f", &v10, 0x20u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101904180();
    }

    sub_100E35820(*(a1 + 6632), a4);
  }

  else if (*a3 == 6 && !*(a4 + 24))
  {
    *(a1 + 6984) = vextq_s8(*(a4 + 8), *(a4 + 8), 8uLL);
  }
}

void sub_1006954F4(uint64_t a1, uint64_t a2, int *a3, int *a4)
{
  v6 = (a1 + 0x2000);
  v7 = *a3;
  if (*a3 > 3)
  {
    switch(v7)
    {
      case 4:
        if (*(a1 + 8952) != *a4)
        {
          if (qword_1025D43F0 != -1)
          {
            sub_10023AD98();
          }

          v19 = qword_1025D43F8;
          if (os_log_type_enabled(qword_1025D43F8, OS_LOG_TYPE_DEBUG))
          {
            v20 = *(a1 + 8952);
            v21 = *a4;
            v35 = 68289538;
            *v36 = 2082;
            *&v36[2] = "";
            *&v36[10] = 2050;
            *&v36[12] = v20;
            *&v36[20] = 2050;
            *&v36[22] = v21;
            _os_log_impl(dword_100000000, v19, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:Current Activity Move Mode changed, from:%{public, location:CLFitnessTrackingNotifier_Type::ActivityMoveMode}lld, to:%{public, location:CLFitnessTrackingNotifier_Type::ActivityMoveMode}lld}", &v35, 0x26u);
          }

          *(a1 + 8952) = *a4;
          v22 = *(a1 + 10264);
          v23 = [NSString stringWithUTF8String:"com.apple.locationd.bundle-/System/Library/LocationBundles/MotionCalibration.bundle"];
          v35 = _NSConcreteStackBlock;
          *v36 = 3221225472;
          *&v36[8] = sub_1000398C4;
          *&v36[16] = &unk_1024689D0;
          *&v36[24] = a1;
          [v22 getAuthorizationContextOfNonZonalClient:v23 withReply:&v35];
        }

        break;
      case 5:
        v34 = sub_1000A23E0();

        sub_100E04B3C(v34, a4);
        break;
      case 7:
        *(a1 + 8946) = *a4;

        sub_100690180(a1);
        break;
    }
  }

  else if (v7)
  {
    if (v7 == 1)
    {
      v24 = *a4;
      *(a1 + 8944) = *a4;
      if ((v24 & 1) == 0)
      {
        v25 = *(a1 + 9656);
        *(a1 + 9424) = *(a1 + 9640);
        *(a1 + 9440) = v25;
        *(a1 + 9456) = *(a1 + 9672);
        v26 = *(a1 + 9592);
        *(a1 + 9360) = *(a1 + 9576);
        *(a1 + 9376) = v26;
        v27 = *(a1 + 9624);
        *(a1 + 9392) = *(a1 + 9608);
        *(a1 + 9408) = v27;
        v28 = *(a1 + 9528);
        *(a1 + 9296) = *(a1 + 9512);
        *(a1 + 9312) = v28;
        v29 = *(a1 + 9560);
        *(a1 + 9328) = *(a1 + 9544);
        *(a1 + 9344) = v29;
        v30 = *(a1 + 9496);
        *(a1 + 9264) = *(a1 + 9480);
        *(a1 + 9472) = *(a1 + 9688);
        *(a1 + 9280) = v30;
      }
    }

    else
    {
      if (v7 != 2)
      {
        return;
      }

      v8 = *a4;
      *(a1 + 8945) = *a4;
      if ((v8 & 1) == 0)
      {
        *(a1 + 9256) = *(a1 + 9688);
        v9 = *(a1 + 9656);
        *(a1 + 9208) = *(a1 + 9640);
        *(a1 + 9224) = v9;
        *(a1 + 9240) = *(a1 + 9672);
        v10 = *(a1 + 9592);
        *(a1 + 9144) = *(a1 + 9576);
        *(a1 + 9160) = v10;
        v11 = *(a1 + 9624);
        *(a1 + 9176) = *(a1 + 9608);
        *(a1 + 9192) = v11;
        v12 = *(a1 + 9528);
        *(a1 + 9080) = *(a1 + 9512);
        *(a1 + 9096) = v12;
        v13 = *(a1 + 9560);
        *(a1 + 9112) = *(a1 + 9544);
        *(a1 + 9128) = v13;
        v14 = *(a1 + 9496);
        *(a1 + 9048) = *(a1 + 9480);
        *(a1 + 9064) = v14;
      }
    }

    sub_100690180(a1);
    v31 = sub_1000A23E0();
    v32 = v6[752];
    v33 = v6[753];

    sub_100E03A24(v31, v32, v33);
  }

  else
  {
    v15 = *(a1 + 8950);
    v16 = *(a4 + 3);
    if ((v16 & 1) == 0)
    {
      sub_1006A4680(a1 + 712);
      sub_1006A474C(a1 + 1384);
      sub_1006A4818(a1 + 2536);
      v16 = *(a4 + 3);
    }

    v6[758] = v16;
    if (v15 != v16)
    {
      if (qword_1025D43F0 != -1)
      {
        sub_10023AD98();
      }

      v17 = qword_1025D43F8;
      if (os_log_type_enabled(qword_1025D43F8, OS_LOG_TYPE_DEFAULT))
      {
        v18 = v6[758];
        LODWORD(v35) = 67109376;
        HIDWORD(v35) = v15;
        *v36 = 1024;
        *&v36[2] = v18;
        _os_log_impl(dword_100000000, v17, OS_LOG_TYPE_DEFAULT, "Workout settings, updating due to fitness tracking change from %d to %d", &v35, 0xEu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101904290();
      }

      sub_100690180(a1);
    }
  }
}

uint64_t sub_100695928(uint64_t a1)
{
  sub_1006A4680(a1 + 8);
  sub_1006A474C(a1 + 680);

  return sub_1006A4818(a1 + 1832);
}

void sub_10069596C(uint64_t a1, uint64_t a2, int *a3, int *a4)
{
  v4 = a4;
  v6 = a1;
  v7 = *a3;
  if (*a3)
  {
    if (v7 != 1)
    {
      if (v7 != 2)
      {
        return;
      }

      if (qword_1025D4200 != -1)
      {
        sub_1018FFCE0();
      }

      v8 = qword_1025D4208;
      v4 = "0";
      if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_FAULT))
      {
        v9 = *a3;
        *buf = 68289795;
        *v25 = 0;
        *&v25[4] = 2082;
        *&v25[6] = "";
        *&v25[14] = 1026;
        *&v25[16] = v9;
        v26 = 2082;
        *v27 = "assert";
        *&v27[8] = 2081;
        v28 = "0";
        _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Wiring bug, should not be subscribed to , notification:%{public}d, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x2Cu);
        if (qword_1025D4200 != -1)
        {
          sub_101903090();
        }
      }

      v10 = qword_1025D4208;
      if (os_signpost_enabled(qword_1025D4208))
      {
        v11 = *a3;
        *buf = 68289795;
        *v25 = 0;
        *&v25[4] = 2082;
        *&v25[6] = "";
        *&v25[14] = 1026;
        *&v25[16] = v11;
        v26 = 2082;
        *v27 = "assert";
        *&v27[8] = 2081;
        v28 = "0";
        _os_signpost_emit_with_name_impl(dword_100000000, v10, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Wiring bug, should not be subscribed to ", "{msg%{public}.0s:Wiring bug, should not be subscribed to , notification:%{public}d, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x2Cu);
        if (qword_1025D4200 != -1)
        {
          sub_101903090();
        }
      }

      v6 = qword_1025D4208;
      if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_INFO))
      {
        v12 = *a3;
        *buf = 68289795;
        *v25 = 0;
        *&v25[4] = 2082;
        *&v25[6] = "";
        *&v25[14] = 1026;
        *&v25[16] = v12;
        v26 = 2082;
        *v27 = "assert";
        *&v27[8] = 2081;
        v28 = "0";
        _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Wiring bug, should not be subscribed to , notification:%{public}d, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x2Cu);
      }

      abort_report_np();
    }

    if (qword_1025D4200 != -1)
    {
      sub_1018FFCE0();
    }

    v13 = qword_1025D4208;
    if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_DEBUG))
    {
      v14 = v4[3];
      *buf = 67240192;
      *v25 = v14;
      _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_DEBUG, "VehicularConfidence,%{public}d", buf, 8u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101904488(v4);
    }

    sub_100D308F4(&v6[831], v4);
  }

  else if (*(a1 + 461))
  {
    v15 = *a4;
    v16 = a4[2];
    v17 = a4[3];
    v18 = a4[4];
    if (CLMotionActivity::isTypePedestrian())
    {
      isTypeIndoorPedestrian = 1;
    }

    else
    {
      isTypeIndoorPedestrian = CLMotionActivity::isTypeIndoorPedestrian();
    }

    if (qword_1025D44D0 != -1)
    {
      sub_101901F3C();
    }

    v22 = qword_1025D44D8;
    if (os_log_type_enabled(qword_1025D44D8, OS_LOG_TYPE_INFO))
    {
      *buf = 134219264;
      *v25 = v15;
      *&v25[8] = 1024;
      *&v25[10] = v16;
      *&v25[14] = 1024;
      *&v25[16] = v17;
      v26 = 1024;
      *v27 = v18;
      *&v27[4] = 1024;
      *&v27[6] = v16 != 0;
      LOWORD(v28) = 1024;
      *(&v28 + 2) = isTypeIndoorPedestrian;
      _os_log_impl(dword_100000000, v22, OS_LOG_TYPE_INFO, "Received observed workout session, startTime, %f, activityType, %d, predictedWorkoutActivityType, %d, hkWorkoutActivityType, %d, isWorkout, %d, isPedestrian, %d", buf, 0x2Au);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D44D0 != -1)
      {
        sub_101901508();
      }

      v23 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "void CLMotionStateMediator::onMotionStateObserverNotification(int, const CLMotionStateObserver_Type::Notification &, const CLMotionStateObserver_Type::NotificationData &)", "%s\n", v23);
      if (v23 != buf)
      {
        free(v23);
      }
    }

    if (((v16 != 0) & isTypeIndoorPedestrian) == 1)
    {
      buf[0] = 0;
      *&v25[4] = 0;
      *&v25[12] = 0x10000000000000;
      (*(v6->isa + 26))(v6, buf);
    }
  }

  else
  {
    if (qword_1025D44D0 != -1)
    {
      sub_101901F3C();
    }

    v20 = qword_1025D44D8;
    if (os_log_type_enabled(qword_1025D44D8, OS_LOG_TYPE_ERROR))
    {
      v21 = *a3;
      *buf = 67109120;
      *v25 = v21;
      _os_log_impl(dword_100000000, v20, OS_LOG_TYPE_ERROR, "MotionStateMediator should not be subscribed to notification, %d, when fTriggerIndoorOutdoorOnObservedPedWorkouts is false", buf, 8u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_101904394(a3);
    }
  }
}

uint64_t sub_100695F28()
{
  if (qword_1025D43F0 != -1)
  {
    sub_10023AD98();
  }

  v0 = qword_1025D43F8;
  if (os_log_type_enabled(qword_1025D43F8, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(dword_100000000, v0, OS_LOG_TYPE_DEFAULT, "Enabling tier1 cycling features message sending", v3, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101904770();
  }

  v1 = sub_100023ED4(0);
  return (*(*(v1 + 96) + 56))();
}

uint64_t sub_100695FEC()
{
  if (qword_1025D43F0 != -1)
  {
    sub_10023AD98();
  }

  v0 = qword_1025D43F8;
  if (os_log_type_enabled(qword_1025D43F8, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(dword_100000000, v0, OS_LOG_TYPE_DEFAULT, "Disabling tier1 cycling features message sending", v3, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10190484C();
  }

  v1 = sub_100023ED4(0);
  return (*(*(v1 + 96) + 56))();
}

void sub_100696170(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  operator delete();
}

uint64_t sub_1006961A0(uint64_t a1, uint64_t a2, uint64_t *a3, void *a4, uint64_t a5, uint64_t a6)
{
  *a1 = off_10246A548;
  *(a1 + 8) = [[CLNotifierClientAdapter alloc] initWithClient:a1];
  *(a1 + 24) = a5;
  *(a1 + 32) = a6;
  if (*(a3 + 23) >= 0)
  {
    v12 = a3;
  }

  else
  {
    v12 = *a3;
  }

  v13 = [objc_msgSend(a4 "vendor")];
  *(a1 + 16) = v13;
  v14 = v13;
  if (a2)
  {
    [*(a1 + 16) setDelegateEntityName:a2];
  }

  [*(a1 + 16) registerDelegate:*(a1 + 8) inSilo:{objc_msgSend(a4, "silo")}];
  return a1;
}

void sub_100696284(uint64_t a1, uint64_t a2)
{
  v9 = a2;
  if ((*(a1 + 108) & 1) == 0)
  {
    v4 = *(a1 + 88);
    if (!v4)
    {
      goto LABEL_9;
    }

    v5 = a1 + 80;
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
    if (v6 != a1 + 88 && *(v6 + 32) <= a2)
    {
      while (*(v6 + 56))
      {
        *buf = *(*(v6 + 40) + 28);
        (*(*a1 + 112))(a1, a2, buf);
      }

      sub_1001132D0(v5, &v9);
    }

    else
    {
LABEL_9:
      if (qword_1025D47F0 != -1)
      {
        sub_1019013A4();
      }

      v7 = qword_1025D47F8;
      if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_FAULT))
      {
        v8 = (a1 + 8);
        if (*(a1 + 31) < 0)
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
        sub_101904928();
      }
    }
  }
}

uint64_t sub_100696428(uint64_t a1, uint64_t a2, int a3, void *a4)
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

uint64_t sub_1006965E0(uint64_t a1, int a2, int *a3, char *a4)
{
  v32 = a2;
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
      v31 = v10;
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
        v30 = v20;
        v27 = *(v20 + 56);
        v28 = *a4;
        *&buf[0] = &v32;
        *(sub_100007FA0(v20 + 40, &v32) + 32) = v28;
        memset(buf, 0, sizeof(buf));
        if (v18 == v16 && (*(*a1 + 128))(a1, a3, buf))
        {
          sub_1006A4954();
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
        v30 = a1 + 64;
        v22 = byte_1025D7DA9;
        v29 = v14;
        *&buf[0] = &v29;
        *(sub_100024014(a1 + 56, &v29) + 80) = v22;
        v29 = *a3;
        *&buf[0] = &v29;
        v23 = sub_100024014(a1 + 56, &v29);
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
        sub_1003C9410(v31 + 40, buf);
      }

      return 1;
    }
  }

  if (qword_1025D47F0 != -1)
  {
    sub_1019013A4();
  }

  v11 = qword_1025D47F8;
  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_FAULT))
  {
    v12 = (a1 + 8);
    if (*(a1 + 31) < 0)
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
    sub_101904A2C();
    return 0;
  }

  return result;
}

BOOL sub_1006969C4(uint64_t a1, int a2, int *a3)
{
  v5 = *(a1 + 88);
  if (!v5)
  {
    goto LABEL_8;
  }

  v6 = a1 + 88;
  do
  {
    if (*(v5 + 32) >= a2)
    {
      v6 = v5;
    }

    v5 = *(v5 + 8 * (*(v5 + 32) < a2));
  }

  while (v5);
  if (v6 != a1 + 88 && *(v6 + 32) <= a2)
  {
    v13 = *(v6 + 48);
    v11 = v6 + 48;
    v12 = v13;
    if (!v13)
    {
      goto LABEL_24;
    }

    v14 = *a3;
    v15 = v11;
    do
    {
      if (*(v12 + 28) >= v14)
      {
        v15 = v12;
      }

      v12 = *(v12 + 8 * (*(v12 + 28) < v14));
    }

    while (v12);
    if (v15 == v11 || v14 < *(v15 + 28))
    {
LABEL_24:
      v15 = v11;
    }

    return v15 != v11;
  }

  else
  {
LABEL_8:
    if (qword_1025D47F0 != -1)
    {
      sub_1019013A4();
    }

    v7 = qword_1025D47F8;
    if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_FAULT))
    {
      v8 = (a1 + 8);
      if (*(a1 + 31) < 0)
      {
        v8 = *v8;
      }

      v16 = 136446466;
      v17 = v8;
      v18 = 1026;
      v19 = a2;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_FAULT, "%{public}s; client %{public}d does not exist", &v16, 0x12u);
    }

    v9 = sub_10000A100(121, 0);
    result = 0;
    if (v9)
    {
      sub_101904B30();
      return 0;
    }
  }

  return result;
}

uint64_t sub_100696B58(char *a1, int a2, int *a3)
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
              sub_10004E6E0((v15 + 40), &v23);
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
                sub_1019013B8();
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
                  sub_1019013B8();
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

                sub_100152C7C("Generic", 1, 0, 0, "virtual BOOL CLNotifier<CLMotionStateMediator_Type::Notification, CLMotionStateMediator_Type::NotificationData>::unregisterForNotification(int, const Notification_T &) [Notification_T = CLMotionStateMediator_Type::Notification, NotificationData_T = CLMotionStateMediator_Type::NotificationData, NotificationInfo_T = char, RegistrationInfo_T = char]", "%s\n", v22);
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

uint64_t sub_100696EFC(uint64_t a1, int *a2, void *__dst)
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

  memcpy(__dst, v8, 0x130uLL);
  return 1;
}

void sub_100697110(uint64_t a1)
{
  if (*(a1 + 108) == 1)
  {
    if (qword_1025D47F0 != -1)
    {
      sub_1019013A4();
    }

    v2 = qword_1025D47F8;
    if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
    {
      v3 = (a1 + 8);
      if (*(a1 + 31) < 0)
      {
        v3 = *v3;
      }

      *buf = 136315138;
      v20 = v3;
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEBUG, "%s; already shutdown; not listing clients", buf, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101904D4C(a1);
    }
  }

  else
  {
    if (qword_1025D47F0 != -1)
    {
      sub_1019013A4();
    }

    v4 = qword_1025D47F8;
    if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
    {
      v5 = (a1 + 8);
      if (*(a1 + 31) < 0)
      {
        v5 = *v5;
      }

      v6 = *(a1 + 96);
      *buf = 136315394;
      v20 = v5;
      v21 = 2048;
      v22[0] = v6;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "%s; listing clients, num clients: %zu", buf, 0x16u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101904C34(a1);
    }

    v7 = *(a1 + 80);
    if (v7 != (a1 + 88))
    {
      do
      {
        v8 = v7[5];
        if (v8 != v7 + 6)
        {
          do
          {
            if (qword_1025D47F0 != -1)
            {
              sub_1019013B8();
            }

            v9 = qword_1025D47F8;
            if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
            {
              v10 = (a1 + 8);
              if (*(a1 + 31) < 0)
              {
                v10 = *(a1 + 8);
              }

              v11 = *(v7 + 8);
              v12 = *(v8 + 7);
              *buf = 136315650;
              v20 = v10;
              v21 = 1024;
              LODWORD(v22[0]) = v11;
              WORD2(v22[0]) = 1024;
              *(v22 + 6) = v12;
              _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "%s; clients, id: %d, notification: %d", buf, 0x18u);
            }

            if (sub_10000A100(121, 2))
            {
              bzero(buf, 0x65CuLL);
              if (qword_1025D47F0 != -1)
              {
                sub_1019013B8();
              }

              v16 = _os_log_send_and_compose_impl();
              sub_100152C7C("Generic", 1, 0, 2, "virtual void CLNotifier<CLMotionStateMediator_Type::Notification, CLMotionStateMediator_Type::NotificationData>::listClients() [Notification_T = CLMotionStateMediator_Type::Notification, NotificationData_T = CLMotionStateMediator_Type::NotificationData, NotificationInfo_T = char, RegistrationInfo_T = char]", "%s\n", v16);
              if (v16 != buf)
              {
                free(v16);
              }
            }

            v13 = v8[1];
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
                v14 = v8[2];
                v15 = *v14 == v8;
                v8 = v14;
              }

              while (!v15);
            }

            v8 = v14;
          }

          while (v14 != v7 + 6);
        }

        v17 = v7[1];
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
            v18 = v7[2];
            v15 = *v18 == v7;
            v7 = v18;
          }

          while (!v15);
        }

        v7 = v18;
      }

      while (v18 != (a1 + 88));
    }
  }
}

void sub_1006974D4(uint64_t a1)
{
  sub_1006A48E4(a1);

  operator delete();
}

void sub_10069756C(void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  a1[5] = 0;
  v4 = (v3 - v2) >> 3;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v5 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v4 = (v5 - v2) >> 3;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v6 = 13;
  }

  else
  {
    if (v4 != 2)
    {
      return;
    }

    v6 = 26;
  }

  a1[4] = v6;
}

uint64_t sub_1006975E8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  **a1 = *a2;
  v4 = *(a2 + 56);
  v5 = *(a2 + 88);
  v6 = *(a2 + 40);
  *(v3 + 64) = *(a2 + 72);
  *(v3 + 80) = v5;
  *(v3 + 32) = v6;
  *(v3 + 48) = v4;
  v7 = *(a2 + 120);
  v8 = *(a2 + 136);
  v9 = *(a2 + 104);
  *(v3 + 144) = *(a2 + 152);
  *(v3 + 112) = v7;
  *(v3 + 128) = v8;
  *(v3 + 96) = v9;
  v10 = *(a2 + 24);
  *v3 = *(a2 + 8);
  *(v3 + 16) = v10;
  v11 = *(a1 + 16);
  *v11 = *(a2 + 160);
  if (*(v11 + 39) < 0)
  {
    operator delete(*(v11 + 16));
  }

  v12 = *(a2 + 176);
  *(v11 + 32) = *(a2 + 192);
  *(v11 + 16) = v12;
  *(a2 + 199) = 0;
  *(a2 + 176) = 0;

  return sub_10069C000((v11 + 40), a2 + 200);
}

uint64_t sub_1006976A0(uint64_t a1, void *a2)
{
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  v3 = a2[4];
  v4 = a2[1];
  if (a2[2] == v4)
  {
    v5 = 0;
    v8 = 0;
    v7 = (v4 + 8 * ((a2[5] + v3) / 0x12));
  }

  else
  {
    v5 = *(v4 + 8 * (v3 / 0x12)) + 216 * (v3 % 0x12);
    v6 = a2[5] + v3;
    v7 = (v4 + 8 * (v6 / 0x12));
    v8 = *v7 + 216 * (v6 % 0x12);
  }

  sub_100697770(a1, (v4 + 8 * (v3 / 0x12)), v5, v7, v8);
  return a1;
}

void *sub_100697770(void *a1, void *a2, uint64_t a3, void *a4, uint64_t a5)
{
  if (a5 == a3)
  {
    v5 = 0;
  }

  else
  {
    v5 = 18 * (a4 - a2) - 0x7B425ED097B425EDLL * ((a5 - *a4) >> 3) + 0x7B425ED097B425EDLL * ((a3 - *a2) >> 3);
  }

  return sub_1006977D4(a1, a2, a3, v5);
}

void *sub_1006977D4(void *a1, void *a2, uint64_t a3, unint64_t a4)
{
  v8 = a1[1];
  v9 = a1[2];
  if (v9 == v8)
  {
    v10 = 0;
  }

  else
  {
    v10 = 18 * ((v9 - v8) >> 3) - 1;
  }

  v11 = a1[5] + a1[4];
  v12 = v10 - v11;
  if (a4 > v12)
  {
    sub_100697990(a1, a4 - v12);
    v8 = a1[1];
    v9 = a1[2];
    v11 = a1[4] + a1[5];
  }

  v13 = (v8 + 8 * (v11 / 0x12));
  if (v9 == v8)
  {
    v14 = 0;
    v15 = 0;
  }

  else
  {
    v14 = *v13 + 216 * (v11 % 0x12);
    v15 = v14;
  }

  v33 = v13;
  v34 = v15;
  result = sub_100667F8C(&v33, a4);
  v17 = v34;
  if (v14 != v34)
  {
    v18 = v33;
    do
    {
      if (v13 == v18)
      {
        v19 = v17;
      }

      else
      {
        v19 = *v13 + 3888;
      }

      if (v14 == v19)
      {
        v19 = v14;
      }

      else
      {
        v20 = v14;
        do
        {
          v21 = *(a3 + 16);
          *v20 = *a3;
          *(v20 + 16) = v21;
          v22 = *(a3 + 32);
          v23 = *(a3 + 48);
          v24 = *(a3 + 80);
          *(v20 + 64) = *(a3 + 64);
          *(v20 + 80) = v24;
          *(v20 + 32) = v22;
          *(v20 + 48) = v23;
          v25 = *(a3 + 96);
          v26 = *(a3 + 112);
          v27 = *(a3 + 144);
          *(v20 + 128) = *(a3 + 128);
          *(v20 + 144) = v27;
          *(v20 + 96) = v25;
          *(v20 + 112) = v26;
          v28 = *(a3 + 160);
          v29 = *(a3 + 176);
          v30 = *(a3 + 192);
          *(v20 + 208) = *(a3 + 208);
          *(v20 + 176) = v29;
          *(v20 + 192) = v30;
          *(v20 + 160) = v28;
          a3 += 216;
          if (a3 - *a2 == 3888)
          {
            v31 = a2[1];
            ++a2;
            a3 = v31;
          }

          v20 += 216;
        }

        while (v20 != v19);
      }

      a1[5] -= 0x7B425ED097B425EDLL * ((v19 - v14) >> 3);
      if (v13 == v18)
      {
        break;
      }

      v32 = v13[1];
      ++v13;
      v14 = v32;
    }

    while (v32 != v17);
  }

  return result;
}

void *sub_100697990(void *result, unint64_t a2)
{
  v2 = result;
  v3 = result[2] - result[1];
  if (v3)
  {
    v4 = a2;
  }

  else
  {
    v4 = a2 + 1;
  }

  if (v4 % 0x12)
  {
    v5 = v4 / 0x12 + 1;
  }

  else
  {
    v5 = v4 / 0x12;
  }

  v6 = result[4];
  if (v5 >= v6 / 0x12)
  {
    v7 = v6 / 0x12;
  }

  else
  {
    v7 = v5;
  }

  if (v5 <= v6 / 0x12)
  {
    for (result[4] = v6 - 18 * v7; v7; --v7)
    {
      v14 = v2[1];
      v16[0] = *v14;
      v2[1] = v14 + 1;
      result = sub_10045E430(v2, v16);
    }
  }

  else
  {
    v8 = v5 - v7;
    v9 = result[3] - *result;
    if (v5 - v7 > (v9 >> 3) - (v3 >> 3))
    {
      v10 = v3 >> 3;
      v11 = v9 >> 2;
      if (v11 <= v8 + v10)
      {
        v12 = v8 + v10;
      }

      else
      {
        v12 = v11;
      }

      v13 = v10 - v7;
      v18 = result;
      if (v12)
      {
        sub_10045E858(result, v12);
      }

      v16[0] = 0;
      v16[1] = 8 * v13;
      v17 = 8 * v13;
      operator new();
    }

    if (v8)
    {
      if (result[3] != result[2])
      {
        operator new();
      }

      operator new();
    }

    for (result[4] -= 18 * v7; v7; --v7)
    {
      v15 = v2[1];
      v16[0] = *v15;
      v2[1] = v15 + 1;
      result = sub_10045E430(v2, v16);
    }
  }

  return result;
}

void sub_100697C68(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100697CDC(uint64_t a1)
{
  sub_100666704((a1 + 40));
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  return a1;
}

void sub_100697D18(void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  a1[5] = 0;
  v4 = (v3 - v2) >> 3;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v5 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v4 = (v5 - v2) >> 3;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v6 = 9;
  }

  else
  {
    if (v4 != 2)
    {
      return;
    }

    v6 = 18;
  }

  a1[4] = v6;
}

void *sub_100697D94(void *a1)
{
  *a1 = off_1024AAD88;
  sub_100697F4C((a1 + 190));
  v2 = a1[187];
  if (v2)
  {
    a1[188] = v2;
    operator delete(v2);
  }

  sub_10069CC30((a1 + 179));
  v3 = a1[178];
  if (v3)
  {
    sub_100008080(v3);
  }

  v4 = a1[170];
  a1[170] = 0;
  if (v4)
  {
    sub_100697FCC((a1 + 170), v4);
  }

  v5 = a1[59];
  a1[59] = 0;
  if (v5)
  {
    sub_10069CC30((v5 + 3));
    v6 = *v5;
    *v5 = 0;
    if (v6)
    {
      (*(*v6 + 48))(v6);
    }

    operator delete();
  }

  v7 = a1[58];
  a1[58] = 0;
  if (v7)
  {
    operator delete();
  }

  v8 = a1[54];
  a1[54] = 0;
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  v9 = a1[53];
  a1[53] = 0;
  if (v9)
  {
    sub_10069CC30((v9 + 9));
    v10 = *v9;
    *v9 = 0;
    if (v10)
    {
      (*(*v10 + 24))(v10);
    }

    operator delete();
  }

  a1[5] = off_102468B38;
  sub_1006980F4((a1 + 37));
  sub_10051B848(a1 + 7);
  return a1;
}

uint64_t sub_100697F4C(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

void sub_100697FCC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = *a2;
    if (*a2)
    {
      *(a2 + 8) = v2;
      operator delete(v2);
    }

    operator delete();
  }
}

void *sub_10069802C(void *a1)
{
  *a1 = off_102468B38;
  v2 = a1 + 2;
  sub_1006980F4((a1 + 32));
  sub_10051B848(v2);
  return a1;
}

void sub_100698080(void *a1)
{
  *a1 = off_102468B38;
  v1 = a1 + 2;
  sub_1006980F4((a1 + 32));
  sub_10051B848(v1);

  operator delete();
}

uint64_t sub_1006980F4(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

void *sub_100698174(void *a1)
{
  *a1 = off_102468B90;
  sub_100698308(a1 + 404);
  sub_1006985DC(a1 + 382);
  a1[363] = off_102468DF0;
  sub_100698924((a1 + 378));
  sub_1000F8B58(a1 + 365);
  a1[345] = off_102468E48;
  sub_100698A6C((a1 + 359));
  sub_100102BC8(a1 + 347);
  sub_100698AEC(a1 + 308);
  sub_100699148(a1 + 279);
  a1[258] = off_102468FE8;
  sub_100699490((a1 + 275));
  sub_1003FFD68(a1 + 260);
  sub_100699510(a1 + 229);
  sub_100699714(a1 + 170);
  sub_100699D40(a1 + 129);
  sub_10069A638(a1 + 85);
  sub_10069A958(a1 + 59);
  sub_10069AF5C(a1 + 1);
  return a1;
}

void sub_1006982D0(void *a1)
{
  sub_100698174(a1);

  operator delete();
}

void *sub_100698308(void *a1)
{
  *a1 = off_102468CB0;
  v2 = (a1 + 17);
  sub_10069CBB0((a1 + 21));
  *a1 = off_102468D20;
  sub_100698508(v2);
  sub_1003FFD68(a1 + 2);
  return a1;
}

void *sub_10069838C(void *a1)
{
  *a1 = off_102468D20;
  v2 = a1 + 2;
  sub_100698508((a1 + 17));
  sub_1003FFD68(v2);
  return a1;
}

void sub_1006983E0(void *a1)
{
  sub_100698308(a1);

  operator delete();
}

uint64_t sub_100698418(uint64_t a1)
{
  if (!*(a1 + 192))
  {
    return 0;
  }

  v1 = 1;
  if ((sub_100698588(a1 + 168, 1) & 1) == 0)
  {
    return 0;
  }

  return v1;
}

void sub_100698494(void *a1)
{
  *a1 = off_102468D20;
  v1 = a1 + 2;
  sub_100698508((a1 + 17));
  sub_1003FFD68(v1);

  operator delete();
}

uint64_t sub_100698508(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t sub_100698588(uint64_t a1, char a2)
{
  v4 = a2;
  v2 = *(a1 + 24);
  if (!v2)
  {
    sub_1000CF05C();
  }

  return (*(*v2 + 48))(v2, &v4);
}

void *sub_1006985DC(void *a1)
{
  *a1 = off_102468D50;
  v2 = (a1 + 14);
  sub_10069CBB0((a1 + 18));
  *a1 = off_102468DC0;
  sub_1006987DC(v2);
  sub_100102BC8(a1 + 2);
  return a1;
}

void *sub_100698660(void *a1)
{
  *a1 = off_102468DC0;
  v2 = a1 + 2;
  sub_1006987DC((a1 + 14));
  sub_100102BC8(v2);
  return a1;
}

void sub_1006986B4(void *a1)
{
  sub_1006985DC(a1);

  operator delete();
}

uint64_t sub_1006986EC(uint64_t a1)
{
  if (!*(a1 + 168))
  {
    return 0;
  }

  v1 = 1;
  if ((sub_100698588(a1 + 144, 1) & 1) == 0)
  {
    return 0;
  }

  return v1;
}

void sub_100698768(void *a1)
{
  *a1 = off_102468DC0;
  v1 = a1 + 2;
  sub_1006987DC((a1 + 14));
  sub_100102BC8(v1);

  operator delete();
}

uint64_t sub_1006987DC(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

void *sub_10069885C(void *a1)
{
  *a1 = off_102468DF0;
  v2 = a1 + 2;
  sub_100698924((a1 + 15));
  sub_1000F8B58(v2);
  return a1;
}

void sub_1006988B0(void *a1)
{
  *a1 = off_102468DF0;
  v1 = a1 + 2;
  sub_100698924((a1 + 15));
  sub_1000F8B58(v1);

  operator delete();
}

uint64_t sub_100698924(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

void *sub_1006989A4(void *a1)
{
  *a1 = off_102468E48;
  v2 = a1 + 2;
  sub_100698A6C((a1 + 14));
  sub_100102BC8(v2);
  return a1;
}

void sub_1006989F8(void *a1)
{
  *a1 = off_102468E48;
  v1 = a1 + 2;
  sub_100698A6C((a1 + 14));
  sub_100102BC8(v1);

  operator delete();
}

uint64_t sub_100698A6C(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

void *sub_100698AEC(void *a1)
{
  *a1 = off_102468EA0;
  v2 = a1[36];
  a1[36] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *a1 = off_102468F18;
  sub_100698E84((a1 + 31));
  sub_100106180(a1 + 2);
  return a1;
}

void *sub_100698B8C(void *a1)
{
  *a1 = off_102468F18;
  v2 = a1 + 2;
  sub_100698E84((a1 + 31));
  sub_100106180(v2);
  return a1;
}

void sub_100698BE0(void *a1)
{
  sub_100698AEC(a1);

  operator delete();
}

uint64_t sub_100698C18(uint64_t a1)
{
  if (qword_1025D43F0 != -1)
  {
    sub_10023AD98();
  }

  v2 = qword_1025D43F8;
  if (os_log_type_enabled(qword_1025D43F8, OS_LOG_TYPE_DEBUG))
  {
    v4 = 136315138;
    v5 = "Swim";
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEBUG, "activate src %s", &v4, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101904E50();
  }

  [*(*(a1 + 288) + 16) register:*(*(a1 + 288) + 8) forNotification:0 registrationInfo:0];
  return 1;
}

uint64_t sub_100698D08(uint64_t a1)
{
  if (qword_1025D43F0 != -1)
  {
    sub_10023AD98();
  }

  v2 = qword_1025D43F8;
  if (os_log_type_enabled(qword_1025D43F8, OS_LOG_TYPE_DEBUG))
  {
    v4 = 136315138;
    v5 = "Swim";
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEBUG, "deactivate src %s", &v4, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101904F44();
  }

  [*(*(a1 + 288) + 16) unregister:*(*(a1 + 288) + 8) forNotification:0];
  return 1;
}

void sub_100698DF4(uint64_t a1, uint64_t a2, _DWORD *a3, __int128 *a4)
{
  if ((*a3 + 1) <= 1)
  {
    sub_100698F04(a1, a4);
  }
}

void sub_100698E10(void *a1)
{
  *a1 = off_102468F18;
  v1 = a1 + 2;
  sub_100698E84((a1 + 31));
  sub_100106180(v1);

  operator delete();
}

uint64_t sub_100698E84(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

void sub_100698F04(uint64_t a1, __int128 *a2)
{
  v3 = a2[7];
  v31 = a2[6];
  v32 = v3;
  v33 = a2[8];
  v34 = *(a2 + 18);
  v4 = a2[3];
  v27 = a2[2];
  v28 = v4;
  v5 = a2[5];
  v29 = a2[4];
  v30 = v5;
  v6 = a2[1];
  v25 = *a2;
  v26 = v6;
  v7 = *(a1 + 272);
  if (v7)
  {
    (*(*v7 + 48))(v7, &v25);
  }

  v8 = *(a1 + 56);
  if (v8)
  {
    v9 = v8 + *(a1 + 48) - 1;
    v10 = *(a1 + 24);
    v11 = *(v10[v9 / 0x1A] + 19 * (v9 % 0x1A) + 5);
    if (v11 > *(&v27 + 1))
    {
      v12 = *(a1 + 32);
      *(a1 + 56) = 0;
      v13 = (v12 - v10) >> 3;
      if (v13 >= 3)
      {
        do
        {
          operator delete(*v10);
          v14 = *(a1 + 32);
          v10 = (*(a1 + 24) + 8);
          *(a1 + 24) = v10;
          v13 = (v14 - v10) >> 3;
        }

        while (v13 > 2);
      }

      if (v13 == 1)
      {
        v15 = 13;
      }

      else
      {
        if (v13 != 2)
        {
LABEL_12:
          if (qword_1025D4200 != -1)
          {
            sub_101903090();
          }

          v16 = qword_1025D4208;
          if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_INFO))
          {
            v21 = 134218240;
            v22 = *(&v27 + 1);
            v23 = 2048;
            v24 = v11;
            _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_INFO, "time rollback on add, newItemTime, %f, lastItemTime, %f", &v21, 0x16u);
          }

          if (sub_10000A100(121, 2))
          {
            sub_101905038();
          }

          goto LABEL_18;
        }

        v15 = 26;
      }

      *(a1 + 48) = v15;
      goto LABEL_12;
    }
  }

LABEL_18:
  sub_10045DCB0((a1 + 16), &v25);
  v17 = v32;
  *(a1 + 192) = v31;
  *(a1 + 208) = v17;
  *(a1 + 224) = v33;
  *(a1 + 240) = v34;
  v18 = v28;
  *(a1 + 128) = v27;
  *(a1 + 144) = v18;
  v19 = v30;
  *(a1 + 160) = v29;
  *(a1 + 176) = v19;
  v20 = v26;
  *(a1 + 96) = v25;
  *(a1 + 112) = v20;
}

void *sub_100699148(void *a1)
{
  *a1 = off_102468F48;
  v2 = (a1 + 21);
  sub_10069CBB0((a1 + 25));
  *a1 = off_102468FB8;
  sub_100699348(v2);
  sub_10052C514(a1 + 2);
  return a1;
}

void *sub_1006991CC(void *a1)
{
  *a1 = off_102468FB8;
  v2 = a1 + 2;
  sub_100699348((a1 + 21));
  sub_10052C514(v2);
  return a1;
}

void sub_100699220(void *a1)
{
  sub_100699148(a1);

  operator delete();
}

uint64_t sub_100699258(uint64_t a1)
{
  if (!*(a1 + 224))
  {
    return 0;
  }

  v1 = 1;
  if ((sub_100698588(a1 + 200, 1) & 1) == 0)
  {
    return 0;
  }

  return v1;
}

void sub_1006992D4(void *a1)
{
  *a1 = off_102468FB8;
  v1 = a1 + 2;
  sub_100699348((a1 + 21));
  sub_10052C514(v1);

  operator delete();
}

uint64_t sub_100699348(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

void *sub_1006993C8(void *a1)
{
  *a1 = off_102468FE8;
  v2 = a1 + 2;
  sub_100699490((a1 + 17));
  sub_1003FFD68(v2);
  return a1;
}

void sub_10069941C(void *a1)
{
  *a1 = off_102468FE8;
  v1 = a1 + 2;
  sub_100699490((a1 + 17));
  sub_1003FFD68(v1);

  operator delete();
}

uint64_t sub_100699490(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

void *sub_100699510(void *a1)
{
  *a1 = off_102469040;
  v2 = (a1 + 21);
  sub_10069CBB0((a1 + 25));
  *a1 = off_1024690B0;
  sub_100699694(v2);
  sub_10052C514(a1 + 2);
  return a1;
}

void *sub_100699594(void *a1)
{
  *a1 = off_1024690B0;
  v2 = a1 + 2;
  sub_100699694((a1 + 21));
  sub_10052C514(v2);
  return a1;
}

void sub_1006995E8(void *a1)
{
  sub_100699510(a1);

  operator delete();
}

void sub_100699620(void *a1)
{
  *a1 = off_1024690B0;
  v1 = a1 + 2;
  sub_100699694((a1 + 21));
  sub_10052C514(v1);

  operator delete();
}

uint64_t sub_100699694(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

void *sub_100699714(void *a1)
{
  *a1 = off_1024690E0;
  if (qword_1025D43F0 != -1)
  {
    sub_10023AD98();
  }

  v2 = qword_1025D43F8;
  if (os_log_type_enabled(qword_1025D43F8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v7 = "ExtendedStepCount";
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEBUG, "disable message src %s", buf, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018FFD60(buf);
    v5 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "virtual CLSourceFromNotifier<CLExtendedStepCountEntry>::~CLSourceFromNotifier() [Data_T = CLExtendedStepCountEntry]", "%s\n", v5);
    if (v5 != buf)
    {
      free(v5);
    }
  }

  [*(a1[58] + 16) unregister:*(a1[58] + 8) forNotification:1];
  v3 = a1[58];
  a1[58] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  *a1 = off_102469158;
  sub_100699C14((a1 + 53));
  sub_100699C94(a1 + 2);
  return a1;
}

void sub_100699928(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10037EA9C(a1);
}

void *sub_100699934(void *a1)
{
  *a1 = off_102469158;
  v2 = a1 + 2;
  sub_100699C14((a1 + 53));
  sub_100699C94(v2);
  return a1;
}

void sub_100699988(void *a1)
{
  sub_100699714(a1);

  operator delete();
}

uint64_t sub_1006999C0(uint64_t a1)
{
  if (qword_1025D43F0 != -1)
  {
    sub_10023AD98();
  }

  v2 = qword_1025D43F8;
  if (os_log_type_enabled(qword_1025D43F8, OS_LOG_TYPE_DEBUG))
  {
    v4 = 136315138;
    v5 = "ExtendedStepCount";
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEBUG, "activate src %s", &v4, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101905134();
  }

  [*(*(a1 + 464) + 16) register:*(*(a1 + 464) + 8) forNotification:1 registrationInfo:0];
  return 1;
}

uint64_t sub_100699AB0(uint64_t a1)
{
  if (qword_1025D43F0 != -1)
  {
    sub_10023AD98();
  }

  v2 = qword_1025D43F8;
  if (os_log_type_enabled(qword_1025D43F8, OS_LOG_TYPE_DEBUG))
  {
    v4 = 136315138;
    v5 = "ExtendedStepCount";
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEBUG, "deactivate src %s", &v4, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101905228();
  }

  [*(*(a1 + 464) + 16) unregister:*(*(a1 + 464) + 8) forNotification:1];
  return 1;
}

void sub_100699BA0(void *a1)
{
  *a1 = off_102469158;
  v1 = a1 + 2;
  sub_100699C14((a1 + 53));
  sub_100699C94(v1);

  operator delete();
}

uint64_t sub_100699C14(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t sub_100699C94(void *a1)
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
    v5 = 8;
  }

  else
  {
    if (v4 != 2)
    {
      goto LABEL_9;
    }

    v5 = 16;
  }

  a1[4] = v5;
LABEL_9:
  while (v2 != v3)
  {
    v6 = *v2++;
    operator delete(v6);
  }

  return sub_1003EE22C(a1);
}

void *sub_100699D40(void *a1)
{
  *a1 = off_102469188;
  v2 = a1[40];
  a1[40] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *a1 = off_102469200;
  sub_10069A0D8((a1 + 35));
  sub_10069A158(a1 + 2);
  return a1;
}

void *sub_100699DE0(void *a1)
{
  *a1 = off_102469200;
  v2 = a1 + 2;
  sub_10069A0D8((a1 + 35));
  sub_10069A158(v2);
  return a1;
}

void sub_100699E34(void *a1)
{
  sub_100699D40(a1);

  operator delete();
}

uint64_t sub_100699E6C(uint64_t a1)
{
  if (qword_1025D43F0 != -1)
  {
    sub_10023AD98();
  }

  v2 = qword_1025D43F8;
  if (os_log_type_enabled(qword_1025D43F8, OS_LOG_TYPE_DEBUG))
  {
    v4 = 136315138;
    v5 = "StepCount";
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEBUG, "activate src %s", &v4, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10190531C();
  }

  [*(*(a1 + 320) + 16) register:*(*(a1 + 320) + 8) forNotification:0 registrationInfo:0];
  return 1;
}

uint64_t sub_100699F5C(uint64_t a1)
{
  if (qword_1025D43F0 != -1)
  {
    sub_10023AD98();
  }

  v2 = qword_1025D43F8;
  if (os_log_type_enabled(qword_1025D43F8, OS_LOG_TYPE_DEBUG))
  {
    v4 = 136315138;
    v5 = "StepCount";
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEBUG, "deactivate src %s", &v4, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101905410();
  }

  [*(*(a1 + 320) + 16) unregister:*(*(a1 + 320) + 8) forNotification:0];
  return 1;
}

void sub_10069A048(uint64_t a1, uint64_t a2, _DWORD *a3, uint64_t a4)
{
  if ((*a3 + 1) <= 1)
  {
    sub_10069A204(a1, a4);
  }
}

void sub_10069A064(void *a1)
{
  *a1 = off_102469200;
  v1 = a1 + 2;
  sub_10069A0D8((a1 + 35));
  sub_10069A158(v1);

  operator delete();
}

uint64_t sub_10069A0D8(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t sub_10069A158(void *a1)
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
    v5 = 11;
  }

  else
  {
    if (v4 != 2)
    {
      goto LABEL_9;
    }

    v5 = 22;
  }

  a1[4] = v5;
LABEL_9:
  while (v2 != v3)
  {
    v6 = *v2++;
    operator delete(v6);
  }

  return sub_1003EE22C(a1);
}

void sub_10069A204(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 144);
  v31 = *(a2 + 128);
  v32 = v3;
  v33 = *(a2 + 160);
  v34 = *(a2 + 176);
  v4 = *(a2 + 80);
  v27 = *(a2 + 64);
  v28 = v4;
  v5 = *(a2 + 112);
  v29 = *(a2 + 96);
  v30 = v5;
  v6 = *(a2 + 16);
  v23 = *a2;
  v24 = v6;
  v7 = *(a2 + 48);
  v25 = *(a2 + 32);
  v26 = v7;
  v8 = *(a1 + 304);
  if (v8)
  {
    (*(*v8 + 48))(v8, &v23);
  }

  v9 = *(a1 + 56);
  if (v9)
  {
    v10 = v9 + *(a1 + 48) - 1;
    v11 = *(a1 + 24);
    v12 = *(v11[v10 / 0x16] + 23 * (v10 % 0x16) + 1);
    if (v12 > *(&v23 + 1))
    {
      v13 = *(a1 + 32);
      *(a1 + 56) = 0;
      v14 = (v13 - v11) >> 3;
      if (v14 >= 3)
      {
        do
        {
          operator delete(*v11);
          v15 = *(a1 + 32);
          v11 = (*(a1 + 24) + 8);
          *(a1 + 24) = v11;
          v14 = (v15 - v11) >> 3;
        }

        while (v14 > 2);
      }

      if (v14 == 1)
      {
        v16 = 11;
      }

      else
      {
        if (v14 != 2)
        {
LABEL_12:
          if (qword_1025D4200 != -1)
          {
            sub_101903090();
          }

          v17 = qword_1025D4208;
          if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_INFO))
          {
            *buf = 134218240;
            v36 = *(&v23 + 1);
            v37 = 2048;
            v38 = v12;
            _os_log_impl(dword_100000000, v17, OS_LOG_TYPE_INFO, "time rollback on add, newItemTime, %f, lastItemTime, %f", buf, 0x16u);
          }

          if (sub_10000A100(121, 2))
          {
            sub_101905504();
          }

          goto LABEL_18;
        }

        v16 = 22;
      }

      *(a1 + 48) = v16;
      goto LABEL_12;
    }
  }

LABEL_18:
  sub_100260FC0((a1 + 16), &v23);
  v18 = v32;
  *(a1 + 224) = v31;
  *(a1 + 240) = v18;
  *(a1 + 256) = v33;
  *(a1 + 272) = v34;
  v19 = v28;
  *(a1 + 160) = v27;
  *(a1 + 176) = v19;
  v20 = v30;
  *(a1 + 192) = v29;
  *(a1 + 208) = v20;
  v21 = v24;
  *(a1 + 96) = v23;
  *(a1 + 112) = v21;
  v22 = v26;
  *(a1 + 128) = v25;
  *(a1 + 144) = v22;
}

void *sub_10069A464(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x16;
  v3 = v1 - 22;
  if (!v2)
  {
    v6 = a1[2];
    v7 = a1[3];
    v8 = v7 - *a1;
    if (v6 - a1[1] < v8)
    {
      if (v7 != v6)
      {
        operator new();
      }

      operator new();
    }

    if (v7 == *a1)
    {
      v9 = 1;
    }

    else
    {
      v9 = v8 >> 2;
    }

    v11 = a1;
    sub_10045E858(a1, v9);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v10 = *v4;
  a1[1] = v4 + 1;
  return sub_10045E430(a1, &v10);
}

void sub_10069A5EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *sub_10069A638(void *a1)
{
  *a1 = off_102469230;
  sub_10069CBB0((a1 + 40));
  *a1 = off_1024692A0;
  sub_10069A82C((a1 + 36));
  sub_10069A8AC(a1 + 2);
  return a1;
}

void *sub_10069A6B0(void *a1)
{
  *a1 = off_1024692A0;
  v2 = a1 + 2;
  sub_10069A82C((a1 + 36));
  sub_10069A8AC(v2);
  return a1;
}

void sub_10069A704(void *a1)
{
  sub_10069A638(a1);

  operator delete();
}

uint64_t sub_10069A73C(uint64_t a1)
{
  if (!*(a1 + 344))
  {
    return 0;
  }

  v1 = 1;
  if ((sub_100698588(a1 + 320, 1) & 1) == 0)
  {
    return 0;
  }

  return v1;
}

void sub_10069A7B8(void *a1)
{
  *a1 = off_1024692A0;
  v1 = a1 + 2;
  sub_10069A82C((a1 + 36));
  sub_10069A8AC(v1);

  operator delete();
}

uint64_t sub_10069A82C(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t sub_10069A8AC(void *a1)
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
    v5 = 10;
  }

  else
  {
    if (v4 != 2)
    {
      goto LABEL_9;
    }

    v5 = 21;
  }

  a1[4] = v5;
LABEL_9:
  while (v2 != v3)
  {
    v6 = *v2++;
    operator delete(v6);
  }

  return sub_1003EE22C(a1);
}

void *sub_10069A958(void *a1)
{
  *a1 = off_1024692D0;
  v2 = a1[25];
  a1[25] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *a1 = off_102469348;
  sub_10069ACF0((a1 + 20));
  sub_10052C5C0(a1 + 2);
  return a1;
}

void *sub_10069A9F8(void *a1)
{
  *a1 = off_102469348;
  v2 = a1 + 2;
  sub_10069ACF0((a1 + 20));
  sub_10052C5C0(v2);
  return a1;
}

void sub_10069AA4C(void *a1)
{
  sub_10069A958(a1);

  operator delete();
}

uint64_t sub_10069AA84(uint64_t a1)
{
  if (qword_1025D43F0 != -1)
  {
    sub_10023AD98();
  }

  v2 = qword_1025D43F8;
  if (os_log_type_enabled(qword_1025D43F8, OS_LOG_TYPE_DEBUG))
  {
    v4 = 136315138;
    v5 = "HeartRate";
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEBUG, "activate src %s", &v4, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101905600();
  }

  [*(*(a1 + 200) + 16) register:*(*(a1 + 200) + 8) forNotification:4 registrationInfo:0];
  return 1;
}

uint64_t sub_10069AB74(uint64_t a1)
{
  if (qword_1025D43F0 != -1)
  {
    sub_10023AD98();
  }

  v2 = qword_1025D43F8;
  if (os_log_type_enabled(qword_1025D43F8, OS_LOG_TYPE_DEBUG))
  {
    v4 = 136315138;
    v5 = "HeartRate";
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEBUG, "deactivate src %s", &v4, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1019056F4();
  }

  [*(*(a1 + 200) + 16) unregister:*(*(a1 + 200) + 8) forNotification:4];
  return 1;
}

void sub_10069AC60(uint64_t a1, uint64_t a2, _DWORD *a3, __int128 *a4)
{
  if (*a3 == 4 || *a3 == -1)
  {
    sub_10069AD70(a1, a4);
  }
}

void sub_10069AC7C(void *a1)
{
  *a1 = off_102469348;
  v1 = a1 + 2;
  sub_10069ACF0((a1 + 20));
  sub_10052C5C0(v1);

  operator delete();
}

uint64_t sub_10069ACF0(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

void sub_10069AD70(uint64_t a1, __int128 *a2)
{
  v3 = a2[1];
  v17 = *a2;
  v18 = v3;
  v4 = a2[3];
  v19 = a2[2];
  v20 = v4;
  v5 = *(a1 + 184);
  if (v5)
  {
    (*(*v5 + 48))(v5, &v17);
  }

  v6 = *(a1 + 56);
  if (v6)
  {
    v7 = v6 + *(a1 + 48) - 1;
    v8 = *(a1 + 24);
    v9 = (*(v8 + ((v7 >> 3) & 0x1FFFFFFFFFFFFFF8)))[8 * (v7 & 0x3F) + 5];
    if (v9 > *(&v19 + 1))
    {
      v10 = *(a1 + 32);
      *(a1 + 56) = 0;
      v11 = (v10 - v8) >> 3;
      if (v11 >= 3)
      {
        do
        {
          operator delete(*v8);
          v12 = *(a1 + 32);
          v8 = (*(a1 + 24) + 8);
          *(a1 + 24) = v8;
          v11 = (v12 - v8) >> 3;
        }

        while (v11 > 2);
      }

      if (v11 == 1)
      {
        v13 = 32;
      }

      else
      {
        if (v11 != 2)
        {
LABEL_12:
          if (qword_1025D4200 != -1)
          {
            sub_101903090();
          }

          v14 = qword_1025D4208;
          if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_INFO))
          {
            *buf = 134218240;
            v22 = *(&v19 + 1);
            v23 = 2048;
            v24 = v9;
            _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_INFO, "time rollback on add, newItemTime, %f, lastItemTime, %f", buf, 0x16u);
          }

          if (sub_10000A100(121, 2))
          {
            sub_1019057E8();
          }

          goto LABEL_18;
        }

        v13 = 64;
      }

      *(a1 + 48) = v13;
      goto LABEL_12;
    }
  }

LABEL_18:
  sub_10052CF28((a1 + 16), &v17);
  v15 = v18;
  *(a1 + 96) = v17;
  *(a1 + 112) = v15;
  v16 = v20;
  *(a1 + 128) = v19;
  *(a1 + 144) = v16;
}

void *sub_10069AF5C(void *a1)
{
  *a1 = off_102469378;
  if (qword_1025D43F0 != -1)
  {
    sub_10023AD98();
  }

  v2 = qword_1025D43F8;
  if (os_log_type_enabled(qword_1025D43F8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v7 = "Elevation";
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEBUG, "disable message src %s", buf, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018FFD60(buf);
    v5 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "virtual CLSourceFromNotifier<CLElevationChangeEntry>::~CLSourceFromNotifier() [Data_T = CLElevationChangeEntry]", "%s\n", v5);
    if (v5 != buf)
    {
      free(v5);
    }
  }

  [*(a1[57] + 16) unregister:*(a1[57] + 8) forNotification:7];
  v3 = a1[57];
  a1[57] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  sub_10069B154(a1);
  return a1;
}

void sub_10069B148(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10037EA9C(a1);
}

void *sub_10069B154(void *a1)
{
  *a1 = &off_102469400;
  v2 = a1 + 1;
  sub_10069B400((a1 + 52));
  sub_10052C5C0(a1 + 34);
  sub_10069B480(v2);
  return a1;
}

void sub_10069B1B0(void *a1)
{
  sub_10069AF5C(a1);

  operator delete();
}

uint64_t sub_10069B1E8(uint64_t a1)
{
  if (qword_1025D43F0 != -1)
  {
    sub_10023AD98();
  }

  v2 = qword_1025D43F8;
  if (os_log_type_enabled(qword_1025D43F8, OS_LOG_TYPE_DEBUG))
  {
    v4 = 136315138;
    v5 = "Elevation";
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEBUG, "activate src %s", &v4, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1019058E4();
  }

  [*(*(a1 + 456) + 16) register:*(*(a1 + 456) + 8) forNotification:3 registrationInfo:0];
  return 1;
}

uint64_t sub_10069B2D8(uint64_t a1)
{
  if (qword_1025D43F0 != -1)
  {
    sub_10023AD98();
  }

  v2 = qword_1025D43F8;
  if (os_log_type_enabled(qword_1025D43F8, OS_LOG_TYPE_DEBUG))
  {
    v4 = 136315138;
    v5 = "Elevation";
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEBUG, "deactivate src %s", &v4, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1019059D8();
  }

  [*(*(a1 + 456) + 16) unregister:*(*(a1 + 456) + 8) forNotification:3];
  return 1;
}

void sub_10069B3C8(void *a1)
{
  sub_10069B154(a1);

  operator delete();
}

uint64_t sub_10069B400(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

void *sub_10069B480(void *a1)
{
  sub_1003EE180(a1 + 26);
  sub_1003EE180(a1 + 20);
  sub_1003EE180(a1 + 14);
  v2 = a1[11];
  if (v2)
  {
    a1[12] = v2;
    operator delete(v2);
  }

  return a1;
}

uint64_t sub_10069B4CC(uint64_t a1)
{
  if (*(a1 + 119) < 0)
  {
    operator delete(*(a1 + 96));
  }

  if (*(a1 + 87) < 0)
  {
    operator delete(*(a1 + 64));
  }

  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_10069B530(uint64_t result)
{
  if (*(result + 64) != -1.0)
  {
    v1 = result;
    if ((*(result + 8) & 1) == 0)
    {
      result = (*(*result + 16))(result);
      if (result)
      {
        *(v1 + 8) = 1;
      }

      else if ((*(v1 + 8) & 1) == 0)
      {
        v2 = 2.22507386e-308;
        goto LABEL_7;
      }
    }

    v2 = *(v1 + 64) + 30.0;
LABEL_7:
    *(v1 + 72) = v2;
  }

  return result;
}

uint64_t sub_10069B5FC(uint64_t a1, void *a2)
{
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  v3 = a2[4];
  v4 = a2[1];
  if (a2[2] == v4)
  {
    v5 = 0;
    v8 = 0;
    v7 = (v4 + ((((a2[5] + v3) * 0x4EC4EC4EC4EC4EC5uLL) >> 64) & 0x7FFFFFFFFFFFFFF8));
  }

  else
  {
    v5 = *(v4 + 8 * (v3 / 0x1A)) + 152 * (v3 % 0x1A);
    v6 = a2[5] + v3;
    v7 = (v4 + 8 * (v6 / 0x1A));
    v8 = *v7 + 152 * (v6 % 0x1A);
  }

  sub_10069B6CC(a1, (v4 + 8 * (v3 / 0x1A)), v5, v7, v8);
  return a1;
}

void *sub_10069B6CC(void *a1, void *a2, uint64_t a3, void *a4, uint64_t a5)
{
  if (a5 == a3)
  {
    v5 = 0;
  }

  else
  {
    v5 = 26 * (a4 - a2) - 0x79435E50D79435E5 * ((a5 - *a4) >> 3) + 0x79435E50D79435E5 * ((a3 - *a2) >> 3);
  }

  return sub_10069B730(a1, a2, a3, v5);
}

void *sub_10069B730(void *a1, void *a2, uint64_t a3, unint64_t a4)
{
  v8 = a1[1];
  v9 = a1[2];
  if (v9 == v8)
  {
    v10 = 0;
  }

  else
  {
    v10 = 26 * ((v9 - v8) >> 3) - 1;
  }

  v11 = a1[5] + a1[4];
  v12 = v10 - v11;
  if (a4 > v12)
  {
    sub_10069B8DC(a1, a4 - v12);
    v8 = a1[1];
    v9 = a1[2];
    v11 = a1[4] + a1[5];
  }

  v13 = (v8 + 8 * (v11 / 0x1A));
  if (v9 == v8)
  {
    v14 = 0;
    v15 = 0;
  }

  else
  {
    v14 = *v13 + 152 * (v11 % 0x1A);
    v15 = v14;
  }

  v30 = v13;
  v31 = v15;
  result = sub_1000B9760(&v30, a4);
  v17 = v31;
  if (v14 != v31)
  {
    v18 = v30;
    do
    {
      if (v13 == v18)
      {
        v19 = v17;
      }

      else
      {
        v19 = *v13 + 3952;
      }

      if (v14 == v19)
      {
        v19 = v14;
      }

      else
      {
        v20 = v14;
        do
        {
          v21 = *(a3 + 16);
          *v20 = *a3;
          *(v20 + 16) = v21;
          v22 = *(a3 + 32);
          v23 = *(a3 + 48);
          v24 = *(a3 + 80);
          *(v20 + 64) = *(a3 + 64);
          *(v20 + 80) = v24;
          *(v20 + 32) = v22;
          *(v20 + 48) = v23;
          v25 = *(a3 + 96);
          v26 = *(a3 + 112);
          v27 = *(a3 + 128);
          *(v20 + 144) = *(a3 + 144);
          *(v20 + 112) = v26;
          *(v20 + 128) = v27;
          *(v20 + 96) = v25;
          a3 += 152;
          if (a3 - *a2 == 3952)
          {
            v28 = a2[1];
            ++a2;
            a3 = v28;
          }

          v20 += 152;
        }

        while (v20 != v19);
      }

      a1[5] -= 0x79435E50D79435E5 * ((v19 - v14) >> 3);
      if (v13 == v18)
      {
        break;
      }

      v29 = v13[1];
      ++v13;
      v14 = v29;
    }

    while (v29 != v17);
  }

  return result;
}

void *sub_10069B8DC(void *result, unint64_t a2)
{
  v2 = result;
  v3 = result[2] - result[1];
  if (v3)
  {
    v4 = a2;
  }

  else
  {
    v4 = a2 + 1;
  }

  if (v4 % 0x1A)
  {
    v5 = v4 / 0x1A + 1;
  }

  else
  {
    v5 = v4 / 0x1A;
  }

  v6 = result[4];
  if (v5 >= v6 / 0x1A)
  {
    v7 = v6 / 0x1A;
  }

  else
  {
    v7 = v5;
  }

  if (v5 <= v6 / 0x1A)
  {
    for (result[4] = v6 - 26 * v7; v7; --v7)
    {
      v14 = v2[1];
      v16[0] = *v14;
      v2[1] = v14 + 1;
      result = sub_10045E430(v2, v16);
    }
  }

  else
  {
    v8 = v5 - v7;
    v9 = result[3] - *result;
    if (v5 - v7 > (v9 >> 3) - (v3 >> 3))
    {
      v10 = v3 >> 3;
      v11 = v9 >> 2;
      if (v11 <= v8 + v10)
      {
        v12 = v8 + v10;
      }

      else
      {
        v12 = v11;
      }

      v13 = v10 - v7;
      v18 = result;
      if (v12)
      {
        sub_10045E858(result, v12);
      }

      v16[0] = 0;
      v16[1] = 8 * v13;
      v17 = 8 * v13;
      operator new();
    }

    if (v8)
    {
      if (result[3] != result[2])
      {
        operator new();
      }

      operator new();
    }

    for (result[4] -= 26 * v7; v7; --v7)
    {
      v15 = v2[1];
      v16[0] = *v15;
      v2[1] = v15 + 1;
      result = sub_10045E430(v2, v16);
    }
  }

  return result;
}

void sub_10069BBB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_10069BC28(void *a1, void *a2)
{
  if (a1 != a2)
  {
    v3 = a2[4];
    v4 = a2[1];
    if (a2[2] == v4)
    {
      v5 = 0;
      v8 = 0;
      v7 = (v4 + 8 * ((a2[5] + v3) / 0x12));
    }

    else
    {
      v5 = (*(v4 + 8 * (v3 / 0x12)) + 216 * (v3 % 0x12));
      v6 = a2[5] + v3;
      v7 = (v4 + 8 * (v6 / 0x12));
      v8 = (*v7 + 216 * (v6 % 0x12));
    }

    sub_10069BCE0(a1, (v4 + 8 * (v3 / 0x12)), v5, v7, v8);
  }

  return a1;
}

void *sub_10069BCE0(void *a1, char **a2, char *a3, void *a4, char *a5)
{
  if (a5 == a3)
  {
    v5 = 0;
  }

  else
  {
    v5 = 18 * (a4 - a2) - 0x7B425ED097B425EDLL * (&a5[-*a4] >> 3) + 0x7B425ED097B425EDLL * ((a3 - *a2) >> 3);
  }

  return sub_10069BD44(a1, a2, a3, v5);
}

void *sub_10069BD44(void *a1, char **a2, char *a3, unint64_t a4)
{
  v8 = a1[5];
  if (v8 >= a4)
  {
    v15 = a1[4];
    v16 = a1[1];
    v17 = (v16 + 8 * (v15 / 0x12));
    if (a1[2] == v16)
    {
      v18 = 0;
    }

    else
    {
      v18 = &(*v17)[216 * (v15 % 0x12)];
    }

    v22 = a2;
    v23 = a3;
    sub_100667F8C(&v22, a4);
    v20 = v22;
    v21 = v23;
    v22 = v17;
    v23 = v18;
    sub_1006681F4(a2, a3, v20, v21, &v22);
    return sub_10069BEA0(a1, v22, v23);
  }

  else
  {
    v22 = a2;
    v23 = a3;
    sub_100667F8C(&v22, v8);
    v9 = v22;
    v10 = v23;
    v11 = a1[4];
    v12 = a1[1];
    v13 = (v12 + 8 * (v11 / 0x12));
    if (a1[2] == v12)
    {
      v14 = 0;
    }

    else
    {
      v14 = &(*v13)[216 * (v11 % 0x12)];
    }

    v22 = v13;
    v23 = v14;
    sub_1006681F4(a2, a3, v9, v10, &v22);
    return sub_1006977D4(a1, v9, v10, a4 - a1[5]);
  }
}

uint64_t sub_10069BEA0(uint64_t result, void *a2, uint64_t a3)
{
  v3 = result;
  v4 = *(result + 32);
  v5 = v4 + *(result + 40);
  v6 = *(result + 8);
  v7 = *(result + 16);
  v8 = (v6 + 8 * (v5 / 0x12));
  if (v7 == v6)
  {
    v9 = 0;
  }

  else
  {
    v9 = *v8 + 216 * (v5 % 0x12);
  }

  if (v9 != a3)
  {
    v10 = (a3 - *a2) >> 3;
    v11 = 18 * (v8 - a2) - 0x7B425ED097B425EDLL * ((v9 - *v8) >> 3) + 0x7B425ED097B425EDLL * v10;
    if (v11 >= 1)
    {
      v12 = (v6 + 8 * (v4 / 0x12));
      if (v7 == v6)
      {
        v13 = 0;
      }

      else
      {
        v13 = *v12 + 216 * (v4 % 0x12);
      }

      if (a3 == v13)
      {
        v14 = 0;
      }

      else
      {
        v14 = 18 * (a2 - v12) - 0x7B425ED097B425EDLL * v10 + 0x7B425ED097B425EDLL * ((v13 - *v12) >> 3);
      }

      v15[0] = v12;
      v15[1] = v13;
      sub_100667F8C(v15, v14);
      v3[5] -= v11;
      do
      {
        result = sub_100667F14(v3, 1);
      }

      while ((result & 1) != 0);
    }
  }

  return result;
}

uint64_t sub_10069C000(void **a1, uint64_t a2)
{
  sub_100697D18(a1);
  sub_10069C050(a1);
  result = sub_10069C1B4(a1, a2);
  a1[4] = *(a2 + 32);
  a1[5] = *(a2 + 40);
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  return result;
}

void sub_10069C050(void **a1)
{
  if (a1[5])
  {
    sub_1000AAAC4(a1, 0);
    sub_100667F14(a1, 0);
  }

  else
  {
    v3 = a1[1];
    for (i = a1[2]; i != v3; a1[2] = i)
    {
      operator delete(*(i - 8));
      v3 = a1[1];
      i = a1[2] - 8;
    }

    a1[4] = 0;
  }

  sub_10069C0D4(a1);
}

void sub_10069C0D4(void **a1)
{
  v1 = a1[2];
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[3] - *a1;
  if (v4 > (v1 - v3))
  {
    if (v1 != v3)
    {
      sub_10045E858(a1, (v1 - v3) >> 3);
    }

    v6 = 0;
    if (v4 >> 3)
    {
      v7 = a1[1];
      v8 = a1[2] - v7;
      if (v8)
      {
        v9 = 0;
        do
        {
          v10 = *v7++;
          *v9++ = v10;
          v8 -= 8;
        }

        while (v8);
        v7 = a1[1];
        v11 = a1[2];
        v2 = *a1;
      }

      else
      {
        v11 = a1[1];
      }

      *a1 = 0;
      a1[1] = 0;
      a1[2] = (v11 - v7);
      a1[3] = 0;
      v6 = v2;
    }

    if (v6)
    {

      operator delete(v6);
    }
  }
}

uint64_t sub_10069C1B4(uint64_t a1, _OWORD *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v4 != v5)
  {
    *(a1 + 16) = v4 + ((v5 - v4 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  sub_10069C0D4(a1);
  *a1 = *a2;
  *(a1 + 16) = a2[1];
  *a2 = 0u;
  a2[1] = 0u;
  return a1;
}

void *sub_10069C21C(void *a1, void *a2)
{
  if (a1 != a2)
  {
    v3 = a2[4];
    v4 = a2[1];
    if (a2[2] == v4)
    {
      v5 = 0;
      v8 = 0;
      v7 = (v4 + ((((a2[5] + v3) * 0x4EC4EC4EC4EC4EC5uLL) >> 64) & 0x7FFFFFFFFFFFFFF8));
    }

    else
    {
      v5 = (*(v4 + 8 * (v3 / 0x1A)) + 152 * (v3 % 0x1A));
      v6 = a2[5] + v3;
      v7 = (v4 + 8 * (v6 / 0x1A));
      v8 = (*v7 + 152 * (v6 % 0x1A));
    }

    sub_10069C2D4(a1, (v4 + 8 * (v3 / 0x1A)), v5, v7, v8);
  }

  return a1;
}

void *sub_10069C2D4(void *a1, char **a2, char *a3, void *a4, char *a5)
{
  if (a5 == a3)
  {
    v5 = 0;
  }

  else
  {
    v5 = 26 * (a4 - a2) - 0x79435E50D79435E5 * (&a5[-*a4] >> 3) + 0x79435E50D79435E5 * ((a3 - *a2) >> 3);
  }

  return sub_10069C338(a1, a2, a3, v5);
}

void *sub_10069C338(void *a1, char **a2, char *a3, unint64_t a4)
{
  v8 = a1[5];
  if (v8 >= a4)
  {
    v15 = a1[4];
    v16 = a1[1];
    v17 = (v16 + 8 * (v15 / 0x1A));
    if (a1[2] == v16)
    {
      v18 = 0;
    }

    else
    {
      v18 = &(*v17)[152 * (v15 % 0x1A)];
    }

    v22 = a2;
    v23 = a3;
    sub_1000B9760(&v22, a4);
    v20 = v22;
    v21 = v23;
    v22 = v17;
    v23 = v18;
    sub_10045F1EC(a2, a3, v20, v21, &v22);
    return sub_10069C494(a1, v22, v23);
  }

  else
  {
    v22 = a2;
    v23 = a3;
    sub_1000B9760(&v22, v8);
    v9 = v22;
    v10 = v23;
    v11 = a1[4];
    v12 = a1[1];
    v13 = (v12 + 8 * (v11 / 0x1A));
    if (a1[2] == v12)
    {
      v14 = 0;
    }

    else
    {
      v14 = &(*v13)[152 * (v11 % 0x1A)];
    }

    v22 = v13;
    v23 = v14;
    sub_10045F1EC(a2, a3, v9, v10, &v22);
    return sub_10069B730(a1, v9, v10, a4 - a1[5]);
  }
}

uint64_t sub_10069C494(uint64_t result, void *a2, uint64_t a3)
{
  v3 = result;
  v4 = *(result + 32);
  v5 = v4 + *(result + 40);
  v6 = *(result + 8);
  v7 = *(result + 16);
  v8 = (v6 + 8 * (v5 / 0x1A));
  if (v7 == v6)
  {
    v9 = 0;
  }

  else
  {
    v9 = *v8 + 152 * (v5 % 0x1A);
  }

  if (v9 != a3)
  {
    v10 = (a3 - *a2) >> 3;
    v11 = 26 * (v8 - a2) - 0x79435E50D79435E5 * ((v9 - *v8) >> 3) + 0x79435E50D79435E5 * v10;
    if (v11 >= 1)
    {
      v12 = (v6 + 8 * (v4 / 0x1A));
      if (v7 == v6)
      {
        v13 = 0;
      }

      else
      {
        v13 = *v12 + 152 * (v4 % 0x1A);
      }

      if (a3 == v13)
      {
        v14 = 0;
      }

      else
      {
        v14 = 26 * (a2 - v12) - 0x79435E50D79435E5 * v10 + 0x79435E50D79435E5 * ((v13 - *v12) >> 3);
      }

      v15[0] = v12;
      v15[1] = v13;
      sub_1000B9760(v15, v14);
      v3[5] -= v11;
      do
      {
        result = sub_1001E0254(v3, 1);
      }

      while ((result & 1) != 0);
    }
  }

  return result;
}

uint64_t sub_10069C5F4(void **a1, uint64_t a2)
{
  sub_10069756C(a1);
  sub_10069C644(a1);
  result = sub_10069C7A8(a1, a2);
  a1[4] = *(a2 + 32);
  a1[5] = *(a2 + 40);
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  return result;
}

void sub_10069C644(void **a1)
{
  if (a1[5])
  {
    sub_1001FD668(a1, 0);
    sub_1001E0254(a1, 0);
  }

  else
  {
    v3 = a1[1];
    for (i = a1[2]; i != v3; a1[2] = i)
    {
      operator delete(*(i - 8));
      v3 = a1[1];
      i = a1[2] - 8;
    }

    a1[4] = 0;
  }

  sub_10069C6C8(a1);
}

void sub_10069C6C8(void **a1)
{
  v1 = a1[2];
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[3] - *a1;
  if (v4 > (v1 - v3))
  {
    if (v1 != v3)
    {
      sub_10045E858(a1, (v1 - v3) >> 3);
    }

    v6 = 0;
    if (v4 >> 3)
    {
      v7 = a1[1];
      v8 = a1[2] - v7;
      if (v8)
      {
        v9 = 0;
        do
        {
          v10 = *v7++;
          *v9++ = v10;
          v8 -= 8;
        }

        while (v8);
        v7 = a1[1];
        v11 = a1[2];
        v2 = *a1;
      }

      else
      {
        v11 = a1[1];
      }

      *a1 = 0;
      a1[1] = 0;
      a1[2] = (v11 - v7);
      a1[3] = 0;
      v6 = v2;
    }

    if (v6)
    {

      operator delete(v6);
    }
  }
}

uint64_t sub_10069C7A8(uint64_t a1, _OWORD *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v4 != v5)
  {
    *(a1 + 16) = v4 + ((v5 - v4 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  sub_10069C6C8(a1);
  *a1 = *a2;
  *(a1 + 16) = a2[1];
  *a2 = 0u;
  a2[1] = 0u;
  return a1;
}

void *sub_10069C840(void *a1, uint64_t a2)
{
  sub_10069C8B4(v4, a2);
  sub_10069C94C(v4, a1);
  sub_10069CBB0(v4);
  return a1;
}

uint64_t sub_10069C8B4(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

void *sub_10069C94C(void *result, void *a2)
{
  if (a2 != result)
  {
    v3 = result;
    result = result[3];
    v4 = a2[3];
    if (result == v3)
    {
      if (v4 == a2)
      {
        (*(*result + 24))(result, v5);
        (*(*v3[3] + 32))(v3[3]);
        v3[3] = 0;
        (*(*a2[3] + 24))(a2[3], v3);
        (*(*a2[3] + 32))(a2[3]);
        a2[3] = 0;
        v3[3] = v3;
        (*(v5[0] + 24))(v5, a2);
        result = (*(v5[0] + 32))(v5);
      }

      else
      {
        (*(*result + 24))(result, a2);
        result = (*(*v3[3] + 32))(v3[3]);
        v3[3] = a2[3];
      }

      a2[3] = a2;
    }

    else if (v4 == a2)
    {
      (*(*v4 + 24))(a2[3], v3);
      result = (*(*a2[3] + 32))(a2[3]);
      a2[3] = v3[3];
      v3[3] = v3;
    }

    else
    {
      v3[3] = v4;
      a2[3] = result;
    }
  }

  return result;
}

void sub_10069CBA4(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10037EA9C(a1);
}

uint64_t sub_10069CBB0(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t sub_10069CC30(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

double sub_10069CD38(uint64_t a1, double **a2)
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

uint64_t sub_10069CD64(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

double sub_10069CE38(uint64_t a1, double **a2)
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

uint64_t sub_10069CE88(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10069CF6C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10069D058(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10069D0A4@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 40);
  *a2 = *(result + 32);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

uint64_t sub_10069D0C0(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(result + 32) = *(a2 + 32);
  *(result + 40) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_10069D0DC(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    sub_100008080(v1);
  }
}

uint64_t sub_10069D0EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = *(a1 + 32);
  if (*(a1 + 71) < 0)
  {
    sub_100007244((a2 + 16), *(a1 + 48), *(a1 + 56));
  }

  else
  {
    *(a2 + 16) = *(a1 + 48);
    *(a2 + 32) = *(a1 + 64);
  }

  return sub_1006976A0(a2 + 40, (a1 + 72));
}

void sub_10069D14C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 39) < 0)
  {
    operator delete(*(v1 + 16));
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10069D168(uint64_t a1, uint64_t a2)
{
  *(a1 + 32) = *(a2 + 32);
  if (*(a2 + 71) < 0)
  {
    sub_100007244((a1 + 48), *(a2 + 48), *(a2 + 56));
  }

  else
  {
    v4 = *(a2 + 48);
    *(a1 + 64) = *(a2 + 64);
    *(a1 + 48) = v4;
  }

  return sub_1006976A0(a1 + 72, (a2 + 72));
}

void sub_10069D1C8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 71) < 0)
  {
    operator delete(*(v1 + 48));
  }

  _Unwind_Resume(exception_object);
}

void sub_10069D1E4(uint64_t a1)
{
  sub_100666704((a1 + 72));
  if (*(a1 + 71) < 0)
  {
    v2 = *(a1 + 48);

    operator delete(v2);
  }
}

void sub_10069D430(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10069CBB0(va);
  sub_1006985DC(v2 + 382);
  sub_10069885C(v2 + 363);
  sub_1006989A4(v2 + 345);
  sub_100698AEC(v2 + 308);
  sub_100699148(v2 + 279);
  sub_1006993C8(v2 + 258);
  sub_100699510(v2 + 229);
  sub_100699714(v2 + 170);
  sub_100699D40(v2 + 129);
  sub_10069A638(v2 + 85);
  sub_10069A958(v2 + 59);
  sub_10069AF5C(v3);
  _Unwind_Resume(a1);
}

void sub_10069D534(void *a1, void *a2, double a3, double a4)
{
  v7 = 0;
  sub_10069D800(a1, v6, a3, a4);
  sub_10069B400(v6);
  *a1 = off_102469378;
  a1[56] = [a2 silo];
  a1[57] = 0;
  sub_100156C60();
}

void sub_10069D790(_Unwind_Exception *a1)
{
  v3 = v1[57];
  v1[57] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  sub_10069B154(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_10069D800(uint64_t a1, uint64_t a2, double a3, double a4)
{
  sub_10069D8C4(a1 + 8);
  *a1 = &off_102469400;
  *(a1 + 264) = 0;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = xmmword_101C85F60;
  *(a1 + 336) = a3;
  *(a1 + 344) = a4;
  *(a1 + 352) = 0;
  *(a1 + 360) = 0xBFF0000000000000;
  *(a1 + 368) = 0;
  *(a1 + 376) = 0;
  *(a1 + 384) = 0;
  *(a1 + 392) = 0;
  *(a1 + 397) = 0;
  *(a1 + 406) = 0;
  sub_10069DA54(a1 + 416, a2);
  return a1;
}

void sub_10069D8A8(_Unwind_Exception *a1)
{
  sub_10052C5C0((v1 + 272));
  sub_10069B480((v1 + 8));
  _Unwind_Resume(a1);
}

uint64_t sub_10069D8C4(uint64_t a1)
{
  *a1 = xmmword_101C86FE8;
  *(a1 + 16) = unk_101C86FF8;
  *(a1 + 32) = xmmword_101C87008;
  *(a1 + 48) = unk_101C87018;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 76) = 0;
  *(a1 + 88) = 0;
  *(a1 + 80) = 0xBFF0000000000000;
  v5 = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  sub_1003F6D44(a1 + 88, &v5, &v6, 2uLL);
  *(a1 + 112) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  for (i = 119; i != -1; --i)
  {
    v3 = pow(0.98, i);
    *&v5 = v3;
    sub_100023E4C((a1 + 112), &v5);
  }

  LODWORD(v5) = 0;
  sub_100023E4C((a1 + 160), &v5);
  LODWORD(v5) = 0;
  sub_100023E4C((a1 + 208), &v5);
  *(a1 + 8) = 0xBFF0000000000000;
  return a1;
}

void sub_10069DA10(_Unwind_Exception *a1)
{
  sub_1003EE180(v5);
  sub_1003EE180(v4);
  sub_1003EE180(v3);
  v7 = *v2;
  if (*v2)
  {
    *(v1 + 96) = v7;
    operator delete(v7);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10069DA54(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

void sub_10069DAEC(void *a1, void *a2, double a3, double a4)
{
  v7 = 0;
  sub_10069DC50(a1, v6, a3, a4);
  sub_10069ACF0(v6);
  *a1 = off_1024692D0;
  a1[24] = [a2 silo];
  a1[25] = 0;
  sub_1009AB6F0();
}

void sub_10069DC0C(_Unwind_Exception *a1)
{
  v3 = v1[25];
  v1[25] = 0;
  if (v3)
  {
    sub_101905BC8(v3);
  }

  sub_10069A9F8(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_10069DC50(uint64_t a1, uint64_t a2, double a3, double a4)
{
  *a1 = off_102469348;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = xmmword_101C85F60;
  *(a1 + 80) = a3;
  *(a1 + 88) = a4;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 96) = 0;
  *(a1 + 120) = 0;
  *(a1 + 128) = xmmword_101C76220;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  sub_10069DD6C(a1 + 160, a2);
  return a1;
}

uint64_t sub_10069DCF0(uint64_t a1, uint64_t a2, uint64_t a3, id *a4)
{
  [a4[24] assertInside];
  v8 = *(*a4 + 4);

  return v8(a4, a1, a2, a3);
}

uint64_t sub_10069DD6C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

void *sub_10069DE04(void *a1, uint64_t a2, double a3, double a4)
{
  v8 = 0;
  sub_10069DEC0(a1, v7, a3, a4);
  sub_10069A82C(v7);
  *a1 = off_102469230;
  sub_10069C8B4((a1 + 40), a2);
  return a1;
}

uint64_t sub_10069DEC0(uint64_t a1, uint64_t a2, double a3, double a4)
{
  *a1 = off_1024692A0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = xmmword_101C85F60;
  *(a1 + 80) = a3;
  *(a1 + 88) = a4;
  *(a1 + 96) = 0xBFF0000000000000;
  *(a1 + 272) = 0;
  *(a1 + 280) = 0;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 249) = 0u;
  sub_10069DF74(a1 + 288, a2);
  return a1;
}

uint64_t sub_10069DF74(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

void sub_10069E00C(void *a1, void *a2, double a3, double a4)
{
  v7 = 0;
  sub_10069E170(a1, v6, a3, a4);
  sub_10069A0D8(v6);
  *a1 = off_102469188;
  a1[39] = [a2 silo];
  a1[40] = 0;
  sub_101379CA4();
}

void sub_10069E12C(_Unwind_Exception *a1)
{
  v3 = v1[40];
  v1[40] = 0;
  if (v3)
  {
    sub_101905BC8(v3);
  }

  sub_100699DE0(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_10069E170(uint64_t a1, uint64_t a2, double a3, double a4)
{
  *a1 = off_102469200;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = xmmword_101C85F60;
  *(a1 + 80) = a3;
  *(a1 + 88) = a4;
  *(a1 + 96) = xmmword_101C76220;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 208) = 0;
  *(a1 + 216) = 0;
  *(a1 + 272) = 0;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 188) = 0u;
  *(a1 + 256) = 0;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 260) = 0;
  *(a1 + 267) = 0;
  sub_10069E2AC(a1 + 280, a2);
  return a1;
}

uint64_t sub_10069E230(uint64_t a1, uint64_t a2, uint64_t a3, id *a4)
{
  [a4[39] assertInside];
  v8 = *(*a4 + 4);

  return v8(a4, a1, a2, a3);
}

uint64_t sub_10069E2AC(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

void sub_10069E344(void *a1, void *a2, double a3, double a4)
{
  v7 = 0;
  sub_10069E610(a1, v6, a3, a4);
  sub_100699C14(v6);
  *a1 = off_1024690E0;
  a1[57] = [a2 silo];
  a1[58] = 0;
  sub_101379CA4();
}

void sub_10069E5A0(_Unwind_Exception *a1)
{
  v3 = v1[58];
  v1[58] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  sub_100699934(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_10069E610(uint64_t a1, uint64_t a2, double a3, double a4)
{
  *a1 = off_102469158;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = xmmword_101C85F60;
  *(a1 + 80) = a3;
  *(a1 + 88) = a4;
  *(a1 + 96) = 0xBFF0000000000000;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 248) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 264) = 0u;
  *(a1 + 280) = 0u;
  *(a1 + 296) = 0u;
  *(a1 + 312) = 0u;
  *(a1 + 328) = 0u;
  *(a1 + 344) = 0u;
  *(a1 + 360) = 0u;
  *(a1 + 376) = 0u;
  *(a1 + 392) = 0u;
  *(a1 + 408) = 0u;
  sub_10069E6D8(a1 + 424, a2);
  return a1;
}

uint64_t sub_10069E6D8(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

void *sub_10069E770(void *a1, uint64_t a2, double a3, double a4)
{
  v8 = 0;
  sub_10069E82C(a1, v7, a3, a4);
  sub_100699694(v7);
  *a1 = off_102469040;
  sub_10069C8B4((a1 + 25), a2);
  return a1;
}

uint64_t sub_10069E82C(uint64_t a1, uint64_t a2, double a3, double a4)
{
  *a1 = off_1024690B0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = xmmword_101C85F60;
  *(a1 + 80) = a3;
  *(a1 + 88) = a4;
  *(a1 + 96) = 0xBFF0000000000000;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  sub_10069E8C4(a1 + 168, a2);
  return a1;
}

uint64_t sub_10069E8C4(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t sub_10069E95C(uint64_t a1, uint64_t a2, double a3, double a4)
{
  *a1 = off_102468FE8;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = xmmword_101C85F60;
  *(a1 + 80) = a3;
  *(a1 + 88) = a4;
  *(a1 + 96) = 0xBFF0000000000000;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  sub_10069E9F0(a1 + 136, a2);
  return a1;
}

uint64_t sub_10069E9F0(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

void *sub_10069EA88(void *a1, uint64_t a2, double a3, double a4)
{
  v8 = 0;
  sub_10069EB44(a1, v7, a3, a4);
  sub_100699348(v7);
  *a1 = off_102468F48;
  sub_10069C8B4((a1 + 25), a2);
  return a1;
}

uint64_t sub_10069EB44(uint64_t a1, uint64_t a2, double a3, double a4)
{
  *a1 = off_102468FB8;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = xmmword_101C85F60;
  *(a1 + 80) = a3;
  *(a1 + 88) = a4;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 96) = 0xBFF0000000000000;
  *(a1 + 120) = 0x80000000800000;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 144) = xmmword_101C78410;
  *(a1 + 160) = 0x80000000800000;
  sub_10069EBEC(a1 + 168, a2);
  return a1;
}

uint64_t sub_10069EBEC(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

void sub_10069EC84(void *a1, void *a2, double a3, double a4)
{
  v7 = 0;
  sub_10069EDE8(a1, v6, a3, a4);
  sub_100698E84(v6);
  *a1 = off_102468EA0;
  a1[35] = [a2 silo];
  a1[36] = 0;
  sub_1013842FC();
}

void sub_10069EDA4(_Unwind_Exception *a1)
{
  v3 = v1[36];
  v1[36] = 0;
  if (v3)
  {
    sub_101905BC8(v3);
  }

  sub_100698B8C(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_10069EDE8(uint64_t a1, uint64_t a2, double a3, double a4)
{
  *a1 = off_102468F18;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = xmmword_101C85F60;
  *(a1 + 80) = a3;
  *(a1 + 88) = a4;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0xBFF0000000000000;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0;
  sub_10069EF00(a1 + 248, a2);
  return a1;
}

uint64_t sub_10069EE84(uint64_t a1, uint64_t a2, uint64_t a3, id *a4)
{
  [a4[35] assertInside];
  v8 = *(*a4 + 4);

  return v8(a4, a1, a2, a3);
}

uint64_t sub_10069EF00(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t sub_10069EF98(uint64_t a1, uint64_t a2, double a3, double a4)
{
  *a1 = off_102468E48;
  *(a1 + 16) = 0u;
  *(a1 + 8) = 0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = xmmword_101C85F60;
  *(a1 + 80) = a3;
  *(a1 + 88) = a4;
  *(a1 + 96) = 0xBFF0000000000000;
  *(a1 + 104) = 0;
  *(a1 + 108) = 0;
  sub_10069F028(a1 + 112, a2);
  return a1;
}

uint64_t sub_10069F028(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t sub_10069F0C0(uint64_t a1, uint64_t a2, double a3, double a4)
{
  *a1 = off_102468DF0;
  *(a1 + 16) = 0u;
  *(a1 + 8) = 0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = xmmword_101C85F60;
  *(a1 + 80) = a3;
  *(a1 + 88) = a4;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0xBFF0000000000000;
  *(a1 + 112) = 0;
  sub_10069F14C(a1 + 120, a2);
  return a1;
}

uint64_t sub_10069F14C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

void *sub_10069F1E4(void *a1, uint64_t a2, double a3, double a4)
{
  v8 = 0;
  sub_10069F2A0(a1, v7, a3, a4);
  sub_1006987DC(v7);
  *a1 = off_102468D50;
  sub_10069C8B4((a1 + 18), a2);
  return a1;
}

uint64_t sub_10069F2A0(uint64_t a1, uint64_t a2, double a3, double a4)
{
  *a1 = off_102468DC0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = xmmword_101C85F60;
  *(a1 + 80) = a3;
  *(a1 + 88) = a4;
  *(a1 + 96) = 0xBFF0000000000000;
  *(a1 + 104) = 7;
  sub_10069F334(a1 + 112, a2);
  return a1;
}

uint64_t sub_10069F334(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

void *sub_10069F3CC(void *a1, uint64_t a2, double a3, double a4)
{
  v8 = 0;
  sub_10069F488(a1, v7, a3, a4);
  sub_100698508(v7);
  *a1 = off_102468CB0;
  sub_10069C8B4((a1 + 21), a2);
  return a1;
}

uint64_t sub_10069F488(uint64_t a1, uint64_t a2, double a3, double a4)
{
  *a1 = off_102468D20;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = xmmword_101C85F60;
  *(a1 + 80) = a3;
  *(a1 + 88) = a4;
  *(a1 + 96) = 0xBFF0000000000000;
  *(a1 + 104) = 0;
  *(a1 + 108) = 0;
  *(a1 + 124) = 0;
  *(a1 + 116) = 0;
  sub_10069F520(a1 + 136, a2);
  return a1;
}

uint64_t sub_10069F520(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

void *sub_10069F644(void *a1, char *a2, char *a3, uint64_t a4, double *a5)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_1024697B0;
  sub_10069F73C((a1 + 3), a2, a3, a4, a5);
  return a1;
}

void sub_10069F6C0(std::__shared_weak_count *a1)
{
  a1->__vftable = off_1024697B0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_10069F73C(uint64_t a1, char *a2, char *a3, uint64_t a4, double *a5)
{
  sub_10000EC00(v12, a2);
  sub_10000EC00(__p, a3);
  sub_100E43990(a1, v12, __p, a4, *a5);
  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  if (v13 < 0)
  {
    operator delete(v12[0]);
  }

  return a1;
}

void sub_10069F7C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
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

void *sub_10069F888(void *a1, char *a2, char *a3, uint64_t a4, double *a5)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_1024697B0;
  sub_10069F8E4((a1 + 3), a2, a3, a4, a5);
  return a1;
}

uint64_t sub_10069F8E4(uint64_t a1, char *a2, char *a3, uint64_t a4, double *a5)
{
  sub_10000EC00(v12, a2);
  sub_10000EC00(__p, a3);
  sub_100E43990(a1, v12, __p, a4, *a5);
  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  if (v13 < 0)
  {
    operator delete(v12[0]);
  }

  return a1;
}

void sub_10069F970(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
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

void *sub_10069FA30(void *a1, char *a2, char *a3, uint64_t a4, double *a5)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_1024697B0;
  sub_10069FA8C((a1 + 3), a2, a3, a4, a5);
  return a1;
}

uint64_t sub_10069FA8C(uint64_t a1, char *a2, char *a3, uint64_t a4, double *a5)
{
  sub_10000EC00(v12, a2);
  sub_10000EC00(__p, a3);
  sub_100E43990(a1, v12, __p, a4, *a5);
  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  if (v13 < 0)
  {
    operator delete(v12[0]);
  }

  return a1;
}

void sub_10069FB18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
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

void sub_10069FB6C(std::__shared_weak_count *a1)
{
  a1->__vftable = off_102469800;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_10069FC58(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_102469850;
  a2[1] = v2;
  return result;
}

uint64_t sub_10069FCA0(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_10069FCEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a4 + 32) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_1019013A4();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v13 = 1;
    v10 = _os_activity_create(dword_100000000, "CL: CLMotionStateMediator::onBackgroundEscalationManagerUpdate", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v10, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_1019013B8();
    }

    v11 = qword_1025D47F8;
    if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68289538;
      v15 = 0;
      v16 = 2082;
      v17 = "";
      v18 = 2082;
      v19 = "activity";
      v20 = 2050;
      v21 = a4;
      _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLMotionStateMediator::onBackgroundEscalationManagerUpdate, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v13 = 0;
  }

  sub_1006935A8(a4, a1, a2, a3, a5);
  if (v13 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

uint64_t sub_10069FF48(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_1024698E0;
  a2[1] = v2;
  return result;
}

uint64_t sub_10069FF90(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1006A004C(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_102469960;
  a2[1] = v2;
  return result;
}

uint64_t sub_1006A0078(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1006A00C4(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t sub_1006A01B4(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_1024699E0;
  a2[1] = v2;
  return result;
}

void sub_1006A01E0(uint64_t a1, int *a2, uint64_t a3)
{
  v3 = *a2;
  v4 = *(a3 + 176);
  v10[10] = *(a3 + 160);
  v10[11] = v4;
  v10[12] = *(a3 + 192);
  v11 = *(a3 + 208);
  v5 = *(a3 + 112);
  v10[6] = *(a3 + 96);
  v10[7] = v5;
  v6 = *(a3 + 144);
  v10[8] = *(a3 + 128);
  v10[9] = v6;
  v7 = *(a3 + 48);
  v10[2] = *(a3 + 32);
  v10[3] = v7;
  v8 = *(a3 + 80);
  v10[4] = *(a3 + 64);
  v10[5] = v8;
  v9 = *(a3 + 16);
  v10[0] = *a3;
  v10[1] = v9;
  sub_1006A02C8(v3, v10, *(a1 + 8));
}

uint64_t sub_1006A027C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1006A02C8(int a1, uint64_t a2, uint64_t a3)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a3 + 32) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_1019013A4();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v17 = 1;
    v6 = _os_activity_create(dword_100000000, "CL: CLMotionStateMediator::onWorkoutPredictorUpdate", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v6, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_1019013B8();
    }

    v7 = qword_1025D47F8;
    if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68289538;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      *&buf[18] = 2082;
      *&buf[20] = "activity";
      *&buf[28] = 2050;
      *&buf[30] = a3;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLMotionStateMediator::onWorkoutPredictorUpdate, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v17 = 0;
  }

  v8 = *(a2 + 160);
  v9 = *(a2 + 192);
  v27 = *(a2 + 176);
  v28 = v9;
  v10 = *(a2 + 96);
  v11 = *(a2 + 128);
  v12 = *(a2 + 144);
  v23 = *(a2 + 112);
  v24 = v11;
  v29 = *(a2 + 208);
  v25 = v12;
  v26 = v8;
  v13 = *(a2 + 48);
  *&buf[32] = *(a2 + 32);
  v19 = v13;
  v14 = *(a2 + 80);
  v20 = *(a2 + 64);
  v21 = v14;
  v22 = v10;
  v15 = *(a2 + 16);
  *buf = *a2;
  *&buf[16] = v15;
  sub_100693948(a3, a1, buf);
  if (v17 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

uint64_t sub_1006A0550(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_102469A70;
  a2[1] = v2;
  return result;
}

uint64_t sub_1006A058C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1006A0648(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_102469AF0;
  a2[1] = v2;
  return result;
}

uint64_t sub_1006A0684(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1006A0740(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_102469B70;
  a2[1] = v2;
  return result;
}

uint64_t sub_1006A077C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_1006A07C8(void *a1)
{
  *a1 = off_102469BF0;
  v22 = 0;
  sub_1006A0AD4((a1 + 1), v21, 10.0, 300.0);
  sub_1006980F4(v21);
  v20 = 0;
  sub_1006A0C10(a1 + 37, v19, 10.0, 150.0);
  sub_10069CBB0(v19);
  v18 = 0;
  sub_10069E610((a1 + 59), v17, 10.0, 300.0);
  sub_100699C14(v17);
  v16 = 0;
  sub_1006A0F70(a1 + 116, v15, 10.0, 300.0);
  sub_10069CBB0(v15);
  v14 = 0;
  sub_10069DE04(a1 + 138, v13, 10.0, 300.0);
  sub_10069CBB0(v13);
  v12 = 0;
  sub_10069EA88(a1 + 182, v11, 15.0, 300.0);
  sub_10069CBB0(v11);
  v10 = 0;
  sub_1006A12CC(a1 + 211, v9, 10.0, 10.0);
  sub_10069CBB0(v9);
  v8 = 0;
  sub_1006A181C(a1 + 235, v7, 10.0, 300.0);
  sub_10069CBB0(v7);
  v6 = 0;
  sub_1006A1B7C(a1 + 259, v5, 8.0, 8.0);
  sub_10069CBB0(v5);
  v4 = 0;
  sub_1006A20D4(a1 + 285, v3, 6.0, 6.0);
  sub_10069CBB0(v3);
  return a1;
}

void sub_1006A099C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10069CBB0(va);
  sub_1006A269C(v3 + 259);
  sub_1006A26F0(v3 + 235);
  sub_1006A2774(v3 + 211);
  sub_100699148(v3 + 182);
  sub_10069A638(v3 + 138);
  sub_1006A27C8(v3 + 116);
  sub_100699934(v3 + 59);
  sub_1006A284C(v3 + 37);
  sub_10069802C(v2);
  _Unwind_Resume(a1);
}

void sub_1006A0A9C(void *a1)
{
  sub_1006A28D0(a1);

  operator delete();
}

uint64_t sub_1006A0AD4(uint64_t a1, uint64_t a2, double a3, double a4)
{
  *a1 = off_102468B38;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = xmmword_101C85F60;
  *(a1 + 80) = a3;
  *(a1 + 88) = a4;
  *(a1 + 248) = 0;
  *(a1 + 96) = xmmword_101C76220;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 239) = 0;
  sub_1006A0B78(a1 + 256, a2);
  return a1;
}

uint64_t sub_1006A0B78(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

void *sub_1006A0C10(void *a1, uint64_t a2, double a3, double a4)
{
  v8 = 0;
  sub_1006A0CCC(a1, v7, a3, a4);
  sub_1006A0EF0(v7);
  *a1 = off_102469CD8;
  sub_10069C8B4((a1 + 18), a2);
  return a1;
}

uint64_t sub_1006A0CCC(uint64_t a1, uint64_t a2, double a3, double a4)
{
  *a1 = off_102469D48;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = xmmword_101C85F60;
  *(a1 + 80) = a3;
  *(a1 + 88) = a4;
  *(a1 + 96) = 0xBFF0000000000000;
  *(a1 + 104) = 0;
  sub_1006A0E58(a1 + 112, a2);
  return a1;
}

void *sub_1006A0D58(void *a1)
{
  *a1 = off_102469D48;
  v2 = a1 + 2;
  sub_1006A0EF0((a1 + 14));
  sub_100102BC8(v2);
  return a1;
}

void sub_1006A0DAC(void *a1)
{
  sub_1006A284C(a1);

  operator delete();
}

void sub_1006A0DE4(void *a1)
{
  *a1 = off_102469D48;
  v1 = a1 + 2;
  sub_1006A0EF0((a1 + 14));
  sub_100102BC8(v1);

  operator delete();
}

uint64_t sub_1006A0E58(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t sub_1006A0EF0(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

void *sub_1006A0F70(void *a1, uint64_t a2, double a3, double a4)
{
  v8 = 0;
  sub_1006A102C(a1, v7, a3, a4);
  sub_1006A124C(v7);
  *a1 = off_102469D78;
  sub_10069C8B4((a1 + 18), a2);
  return a1;
}

uint64_t sub_1006A102C(uint64_t a1, uint64_t a2, double a3, double a4)
{
  *a1 = off_102469DE8;
  *(a1 + 16) = 0u;
  *(a1 + 8) = 0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = xmmword_101C85F60;
  *(a1 + 80) = a3;
  *(a1 + 88) = a4;
  *(a1 + 96) = 0xBFF0000000000000;
  *(a1 + 104) = 0;
  sub_1006A11B4(a1 + 112, a2);
  return a1;
}

void *sub_1006A10B4(void *a1)
{
  *a1 = off_102469DE8;
  v2 = a1 + 2;
  sub_1006A124C((a1 + 14));
  sub_100102BC8(v2);
  return a1;
}

void sub_1006A1108(void *a1)
{
  sub_1006A27C8(a1);

  operator delete();
}

void sub_1006A1140(void *a1)
{
  *a1 = off_102469DE8;
  v1 = a1 + 2;
  sub_1006A124C((a1 + 14));
  sub_100102BC8(v1);

  operator delete();
}

uint64_t sub_1006A11B4(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t sub_1006A124C(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

void *sub_1006A12CC(void *a1, uint64_t a2, double a3, double a4)
{
  v8 = 0;
  sub_1006A1388(a1, v7, a3, a4);
  sub_1006A179C(v7);
  *a1 = off_102469E18;
  sub_10069C8B4((a1 + 20), a2);
  return a1;
}

uint64_t sub_1006A1388(uint64_t a1, uint64_t a2, double a3, double a4)
{
  *a1 = off_102469E88;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = xmmword_101C85F60;
  *(a1 + 80) = a3;
  *(a1 + 88) = a4;
  *(a1 + 96) = 0xBFF0000000000000;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  sub_1006A15C4(a1 + 128, a2);
  return a1;
}

void sub_1006A1418(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1000B96B4(va);
  sub_1006A165C(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_1006A1438(uint64_t a1)
{
  *a1 = off_102469E88;
  v2 = (a1 + 16);
  sub_1006A179C(a1 + 128);
  v4 = (a1 + 104);
  sub_1000B96B4(&v4);
  sub_1006A165C(v2);
  return a1;
}

void sub_1006A14A4(void *a1)
{
  *a1 = off_102469E18;
  sub_10069CBB0((a1 + 20));
  sub_1006A1438(a1);

  operator delete();
}

uint64_t sub_1006A150C(uint64_t a1)
{
  if (!*(a1 + 184))
  {
    return 0;
  }

  v1 = 1;
  if ((sub_100698588(a1 + 160, 1) & 1) == 0)
  {
    return 0;
  }

  return v1;
}