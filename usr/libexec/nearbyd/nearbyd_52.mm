void sub_1003FCF48(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 240) = 0;
  *(a1 + 248) = 0;
  *(a1 + 256) = 0;
  *(a1 + 264) = 0;
  *(a1 + 272) = 0;
  *(a1 + 280) = 0;
  *(a1 + 288) = 0;
  *(a1 + 296) = 0;
  *(a1 + 304) = 0;
  *(a1 + 320) = 0;
  *(a1 + 336) = 0;
  *(a1 + 352) = 0;
  *(a1 + 368) = 0;
  *(a1 + 376) = 0;
  *(a1 + 384) = 0;
  *(a1 + 392) = 0;
  *(a1 + 400) = 0;
  *(a1 + 404) = 0;
  *(a1 + 408) = 0;
  *(a1 + 412) = 0;
  *(a1 + 416) = 0;
  *(a1 + 420) = 0;
  *(a1 + 424) = 0;
  *(a1 + 428) = 0;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_FAULT))
  {
    sub_1004CDEA0();
  }
}

void sub_1003FCFF4(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 160) = 0;
  *(a1 + 168) = 0;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_FAULT))
  {
    sub_1004CDED4();
  }
}

uint64_t sub_1003FD060(uint64_t result, uint64_t a2)
{
  v2 = *(result + 32);
  v3 = *(a2 + 16);
  *(result + 8) = *a2;
  *(result + 24) = v3;
  if ((v2 & 1) == 0)
  {
    *(result + 32) = 1;
  }

  return result;
}

double sub_1003FD084(uint64_t a1, double *a2, double result)
{
  if (*(a1 + 32) == 1)
  {
    result = result - *(a1 + 16) + *(a1 + 8);
    *a2 = result;
  }

  return result;
}

double sub_1003FD0A8(uint64_t a1, double *a2, double result)
{
  if (*(a1 + 32) == 1)
  {
    result = result - *(a1 + 24) + *(a1 + 8);
    *a2 = result;
  }

  return result;
}

void sub_1003FD0D0()
{
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_FAULT))
  {
    sub_1004CDF08();
  }
}

void sub_1003FD114()
{
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_FAULT))
  {
    sub_1004CDF3C();
  }
}

void sub_1003FD158()
{
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_FAULT))
  {
    sub_1004CDF70();
  }
}

void sub_1003FD19C()
{
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_FAULT))
  {
    sub_1004CDFA4();
  }
}

void sub_1003FD1E0()
{
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_FAULT))
  {
    sub_1004CDFD8();
  }
}

void sub_1003FD224()
{
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_FAULT))
  {
    sub_1004CE00C();
  }
}

void sub_1003FD268()
{
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_FAULT))
  {
    sub_1004CE040();
  }
}

void sub_1003FD2AC()
{
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_FAULT))
  {
    sub_1004CE074();
  }
}

void sub_1003FD2F0()
{
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_FAULT))
  {
    sub_1004CE0A8();
  }
}

void sub_1003FD334()
{
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_FAULT))
  {
    sub_1004CE0DC();
  }
}

void sub_1003FD378()
{
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_FAULT))
  {
    sub_1004CE110();
  }
}

void sub_1003FD3BC()
{
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_FAULT))
  {
    sub_1004CE144();
  }
}

void sub_1003FD400()
{
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_FAULT))
  {
    sub_1004CE178();
  }
}

void sub_1003FD444()
{
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_FAULT))
  {
    sub_1004CE1AC();
  }
}

void sub_1003FD488()
{
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_FAULT))
  {
    sub_1004CE1E0();
  }
}

uint64_t sub_1003FD4CC(int a1, double a2, double a3)
{
  if (a1 != 2)
  {
    return 1;
  }

  if (a2 < -1000.0)
  {
    return 1;
  }

  if (a2 > 0.15)
  {
    return 1;
  }

  result = 0;
  if (a3 <= 10000.0 && a3 >= 350.0)
  {
    return 1;
  }

  return result;
}

void sub_1003FD520(uint64_t a1)
{
  sub_1003FFAA0((a1 + 208), (a1 + 96));
  if (*(a1 + 144) == 1)
  {
    if (*(a1 + 119) < 0)
    {
      operator delete(*(a1 + 96));
    }

    *(a1 + 144) = 0;
  }
}

BOOL sub_1003FD56C(uint64_t a1, float a2)
{
  v2 = *(a1 + 80);
  v5 = *(v2 + 8);
  v3 = (v2 + 8);
  v4 = v5;
  if (!v5)
  {
    goto LABEL_12;
  }

  v6 = v3;
  do
  {
    v7 = v4[14];
    if (v7 > a2)
    {
      v6 = v4;
    }

    v4 = *&v4[2 * (v7 <= a2)];
  }

  while (v4);
  if (v6 == v3)
  {
LABEL_12:
    v11 = qword_1009F9820;
    result = os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT);
    if (!result)
    {
      return result;
    }

    LOWORD(v24) = 0;
    v13 = "#regionmon #spatialGesturesPredictor Current region = candidateOutsideKnownRegions, shouldPredictIntent = false";
    v14 = v11;
    v15 = 2;
LABEL_14:
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, v13, &v24, v15);
    return 0;
  }

  v8 = v6 + 4;
  if (*(v6 + 72) == 1)
  {
    v9 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      if (*(v6 + 55) < 0)
      {
        v8 = *v8;
      }

      v24 = 136315138;
      v25 = v8;
      v10 = "#regionmon #spatialGesturesPredictor Current region = %s, shouldPredictIntent = true, since this region requires user intent";
LABEL_38:
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, v10, &v24, 0xCu);
      return 1;
    }

    return 1;
  }

  if (v6 != **(a1 + 80))
  {
    v16 = *v6;
    if (*v6)
    {
      do
      {
        v17 = v16;
        v16 = v16[1];
      }

      while (v16);
    }

    else
    {
      v18 = v6;
      do
      {
        v17 = v18[2];
        v19 = *v17 == v18;
        v18 = v17;
      }

      while (v19);
    }

    if (*(v17 + 72) == 1)
    {
      v9 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        if (*(v6 + 55) < 0)
        {
          v8 = *v8;
        }

        v24 = 136315138;
        v25 = v8;
        v10 = "#regionmon #spatialGesturesPredictor Current region = %s, shouldPredictIntent = true, since inner adjacent region requires user intent";
        goto LABEL_38;
      }

      return 1;
    }
  }

  v20 = v6[1];
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
    v22 = v6;
    do
    {
      v21 = v22[2];
      v19 = *v21 == v22;
      v22 = v21;
    }

    while (!v19);
  }

  if (v21 != v3 && *(v21 + 72) == 1)
  {
    v9 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      if (*(v6 + 55) < 0)
      {
        v8 = *v8;
      }

      v24 = 136315138;
      v25 = v8;
      v10 = "#regionmon #spatialGesturesPredictor Current region = %s, shouldPredictIntent = true, since outer adjacent region requires user intent";
      goto LABEL_38;
    }

    return 1;
  }

  v23 = qword_1009F9820;
  result = os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT);
  if (result)
  {
    if (*(v6 + 55) < 0)
    {
      v8 = *v8;
    }

    v24 = 136315138;
    v25 = v8;
    v13 = "#regionmon #spatialGesturesPredictor Current region = %s, shouldPredictIntent = false, since neither this region nor adjacent ones require user intent";
    v14 = v23;
    v15 = 12;
    goto LABEL_14;
  }

  return result;
}

uint64_t sub_1003FD834(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, int a7, int a8, int a9, uint64_t a10, uint64_t a11)
{
  *a1 = a2;
  v17 = a1 + 40;
  sub_1003FFC98(a1 + 8, a3);
  sub_1003FFD30(v17, a4);
  sub_1003FFDC8(a1 + 72, a11);
  *(a1 + 104) = *a5;
  v18 = a5[1];
  *(a1 + 112) = v18;
  if (v18)
  {
    atomic_fetch_add_explicit((v18 + 8), 1uLL, memory_order_relaxed);
  }

  v63 = a2;
  *(a1 + 144) = 0;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 152) = a9;
  v20 = *a5;
  v19 = a5[1];
  if (v19)
  {
    atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
    *(a1 + 160) = *(a6 + 32);
    v21 = *(a6 + 48);
    v22 = *(a6 + 64);
    v23 = *(a6 + 96);
    *(a1 + 208) = *(a6 + 80);
    *(a1 + 224) = v23;
    *(a1 + 176) = v21;
    *(a1 + 192) = v22;
    *(a1 + 240) = v20;
    *(a1 + 248) = v19;
    atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
    *(a1 + 256) = 0;
    *(a1 + 304) = 0;
    *(a1 + 312) = 0;
    *(a1 + 360) = 0;
    *(a1 + 368) = 0;
    *(a1 + 416) = 0;
    sub_10000AD84(v19);
  }

  else
  {
    *(a1 + 160) = *(a6 + 32);
    v24 = *(a6 + 48);
    v25 = *(a6 + 64);
    v26 = *(a6 + 96);
    *(a1 + 208) = *(a6 + 80);
    *(a1 + 224) = v26;
    *(a1 + 176) = v24;
    *(a1 + 192) = v25;
    *(a1 + 240) = v20;
    *(a1 + 248) = 0;
    *(a1 + 256) = 0;
    *(a1 + 312) = 0;
    *(a1 + 304) = 0;
    *(a1 + 360) = 0;
    *(a1 + 368) = 0;
    *(a1 + 416) = 0;
  }

  *(a1 + 424) = 0;
  *(a1 + 432) = 0;
  sub_10038C990((a1 + 440), a6);
  memcpy((a1 + 464), (a6 + 24), 0x18CuLL);
  *(a1 + 864) = *(a6 + 424);
  sub_10029F1D8((a1 + 880), a6 + 440);
  v27 = *(a6 + 464);
  *(a1 + 916) = *(a6 + 476);
  *(a1 + 904) = v27;
  sub_10029F2B8(a1 + 936, (a6 + 496));
  v28 = *(a6 + 544);
  *(a1 + 968) = *(a6 + 528);
  *(a1 + 984) = v28;
  v29 = *(a6 + 560);
  v30 = *(a6 + 576);
  v31 = *(a6 + 608);
  *(a1 + 1032) = *(a6 + 592);
  *(a1 + 1048) = v31;
  *(a1 + 1000) = v29;
  *(a1 + 1016) = v30;
  v32 = *(a6 + 624);
  v33 = *(a6 + 640);
  v34 = *(a6 + 672);
  *(a1 + 1096) = *(a6 + 656);
  *(a1 + 1112) = v34;
  *(a1 + 1064) = v32;
  *(a1 + 1080) = v33;
  v35 = *(a6 + 688);
  v36 = *(a6 + 704);
  v37 = *(a6 + 720);
  *(a1 + 1176) = *(a6 + 736);
  *(a1 + 1144) = v36;
  *(a1 + 1160) = v37;
  *(a1 + 1128) = v35;
  *(a1 + 1184) = a7;
  *(a1 + 1192) = a8;
  *(a1 + 1200) = 0;
  *(a1 + 1208) = 0;
  *(a1 + 1216) = 0u;
  v38 = *(a1 + 448);
  if (!v38)
  {
    goto LABEL_65;
  }

  v39 = a1 + 448;
  do
  {
    if (*(v38 + 28) >= a7)
    {
      v39 = v38;
    }

    v38 = *(v38 + 8 * (*(v38 + 28) < a7));
  }

  while (v38);
  if (v39 == a1 + 448 || *(v39 + 28) > a7)
  {
LABEL_65:
    v61 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_FAULT))
    {
      sub_1004CE3CC(v61);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "technology mapping not found for ranging technology.");
  }

  v40 = *(v39 + 32);
  *(a1 + 1188) = v40;
  switch(v40)
  {
    case 1:
      operator new();
    case 3:
      operator new();
    case 2:
      operator new();
  }

  v65 = 0uLL;
  *&v66 = 0;
  v41 = *(a1 + 104);
  v44 = *v41;
  v42 = (v41 + 1);
  v43 = v44;
  if (v44 == v42)
  {
    goto LABEL_37;
  }

  do
  {
    if (*(v43 + 72) == 1)
    {
      sub_1003FFF40(&v65, v43 + 2);
    }

    v45 = *(v43 + 1);
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
        v46 = *(v43 + 2);
        v47 = *v46 == v43;
        v43 = v46;
      }

      while (!v47);
    }

    v43 = v46;
  }

  while (v46 != v42);
  if (v65 == *(&v65 + 1))
  {
LABEL_37:
    if (a8 != 4)
    {
      goto LABEL_42;
    }

    goto LABEL_38;
  }

  v48 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, "#regionmon #spatialGesturesPredictor creating deviceMonitor", buf, 2u);
  }

  if (a7 == 4 || a7 == 2)
  {
    if (!a8)
    {
      goto LABEL_34;
    }

    v59 = "typePredictor == common::TypeOfPredictor::None";
    v60 = 335;
LABEL_62:
    __assert_rtn("DeviceMonitor", "NRBYDeviceMonitor.cpp", v60, v59);
  }

  if (a8 > 1)
  {
    if (a8 != 4)
    {
      if (a8 == 3)
      {
        v58 = qword_1009F9820;
        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134217984;
          *&buf[4] = v63;
          _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_DEFAULT, "#regionmon #spatialGesturesPredictor creating deviceMonitor with intent predictor DualAnchorAntennaSpatialGestures for dev %llx", buf, 0xCu);
        }

        if (*(a10 + 32) == 1)
        {
          operator new();
        }

        v59 = "gestureClassifiers.has_value()";
        v60 = 359;
        goto LABEL_62;
      }

      if (a8 == 2)
      {
        v54 = qword_1009F9820;
        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134217984;
          *&buf[4] = v63;
          _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_DEFAULT, "#regionmon #spatialGesturesPredictor creating deviceMonitor with intent predictor AoA for dev %llx", buf, 0xCu);
        }

        v55 = *(a1 + 528);
        xmmword_1009EC320 = *(a1 + 512);
        unk_1009EC330 = v55;
        qword_1009EC340 = *(a1 + 544);
        v56 = *(a1 + 496);
        xmmword_1009EC300 = *(a1 + 480);
        unk_1009EC310 = v56;
        operator new();
      }

      goto LABEL_42;
    }

LABEL_38:
    v52 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      *&buf[4] = v63;
      _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_DEFAULT, "#regionmon #spatialGesturesPredictor creating deviceMonitor with intent predictor MotionBasedSpatialGestures for dev %llx", buf, 0xCu);
    }

    if (*(a10 + 32))
    {
      operator new();
    }

    sub_1004CE26C();
  }

  if (!a8)
  {
LABEL_34:
    v49 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      *&buf[4] = v63;
      _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEFAULT, "#regionmon #spatialGesturesPredictor creating deviceMonitor with intent predictor None for dev %llx", buf, 0xCu);
    }

    v50 = *(a1 + 528);
    xmmword_1009EC320 = *(a1 + 512);
    unk_1009EC330 = v50;
    qword_1009EC340 = *(a1 + 544);
    v51 = *(a1 + 496);
    xmmword_1009EC300 = *(a1 + 480);
    unk_1009EC310 = v51;
    operator new();
  }

  if (a8 == 1)
  {
    v57 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      *&buf[4] = v63;
      _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_DEFAULT, "#regionmon #spatialGesturesPredictor creating deviceMonitor with intent predictor SpatialGeatures for dev %llx", buf, 0xCu);
    }

    if (*(a10 + 32) == 1)
    {
      operator new();
    }

    v59 = "gestureClassifiers.has_value()";
    v60 = 353;
    goto LABEL_62;
  }

LABEL_42:
  *buf = &v65;
  sub_10038C574(buf);
  return a1;
}

void sub_1003FE77C(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *(a2 + 4);
  *(&v115 + 7) = *(a2 + 13);
  HIBYTE(v115) = *(a2 + 112);
  v114[1] = *(a2 + 137);
  *(v114 + 7) = a2[8];
  *&v103[1] = v115;
  *&v103[33] = v114[1];
  v8 = *(a2 + 1);
  v9 = *(a2 + 40);
  *&v116[6] = *(a2 + 11);
  v116[14] = *(a2 + 96);
  v10 = *(a1 + 120);
  v11 = v7;
  *buf = v9;
  *&buf[2] = *v116;
  *&buf[9] = *&v116[7];
  buf[24] = 0;
  v103[0] = 0;
  *&v103[17] = v114[0];
  v103[56] = 1;
  v12 = COERCE_DOUBLE((*(*v10 + 16))(v10, a3, buf, v7, v8));
  if (!v13)
  {
    *a4 = 0;
    *(a4 + 232) = 0;
    return;
  }

  v14 = v12;
  v15 = a2[13];
  v99 = a2[12];
  v100 = v15;
  v101 = *(a2 + 28);
  v16 = a2[9];
  v95 = a2[8];
  v96 = v16;
  v17 = a2[11];
  v97 = a2[10];
  v98 = v17;
  v18 = a2[5];
  v91 = a2[4];
  v92 = v18;
  v19 = a2[7];
  v93 = a2[6];
  v94 = v19;
  v20 = a2[1];
  v87 = *a2;
  v88 = v20;
  v21 = a2[3];
  v89 = a2[2];
  v90 = v21;
  *&v88 = v14;
  sub_1003EC6C8(*(a1 + 120), *&v21);
  v23 = v22;
  if ((v24 & 1) == 0)
  {
    v23 = -1.0;
  }

  *(&v89 + 1) = v23;
  v25 = *(a1 + 1192);
  if ((v25 - 1) < 2)
  {
    v26 = *(a1 + 1216);
    if (!v26)
    {
      goto LABEL_24;
    }

    v27 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
    {
      v60 = *a1;
      *buf = 134217984;
      *&buf[4] = v60;
      _os_log_debug_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEBUG, "#regionmon Consuming range result for default intent predictor for device identifier %llu", buf, 0xCu);
      v26 = *(a1 + 1216);
    }

LABEL_21:
    (*(*v26 + 24))(v26, &v87);
    goto LABEL_24;
  }

  if (v25 != 3)
  {
    goto LABEL_24;
  }

  if ((*(a2 + 81) & 1) == 0)
  {
    sub_1004CE410();
  }

  v28 = *(a2 + 80);
  if (v28 == 2)
  {
    v26 = *(a1 + 1224);
    if (!v26)
    {
      goto LABEL_24;
    }

    v30 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
    {
      v62 = *a1;
      *buf = 134217984;
      *&buf[4] = v62;
      _os_log_debug_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEBUG, "#regionmon Consuming range result for secondary intent predictor for device identifier 0x%llx", buf, 0xCu);
      v26 = *(a1 + 1224);
    }

    goto LABEL_21;
  }

  if (v28 == 1)
  {
    v26 = *(a1 + 1216);
    if (!v26)
    {
      goto LABEL_24;
    }

    v29 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
    {
      v61 = *a1;
      *buf = 134217984;
      *&buf[4] = v61;
      _os_log_debug_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEBUG, "#regionmon Consuming range result for default intent predictor for device identifier 0x%llx", buf, 0xCu);
      v26 = *(a1 + 1216);
    }

    goto LABEL_21;
  }

  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
  {
    sub_1004CE43C(a1);
  }

LABEL_24:
  v31 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
  {
    v59 = *a2;
    *buf = 134218752;
    *&buf[4] = v8;
    *&buf[12] = 2048;
    *&buf[14] = v59;
    *&buf[22] = 2048;
    *&buf[24] = v11;
    *v103 = 2048;
    *&v103[2] = v14;
    _os_log_debug_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEBUG, "#regionmon time:%f, dev:%llx, raw:%f, filtered:%f", buf, 0x2Au);
  }

  v32 = *(a1 + 432);
  v33 = *(a1 + 1192);
  v34 = 0.0;
  if (v33 == 1)
  {
    v42 = 0;
    if (sub_1003FD56C(a1 + 160, v14))
    {
      v37 = *(a1 + 1216);
      if (v37)
      {
        v43 = qword_1009F9820;
        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
        {
          v44 = *a1;
          *buf = 134217984;
          *&buf[4] = v44;
          _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "#regionmon using default intent predictor for dev 0x%llx", buf, 0xCu);
          v37 = *(a1 + 1216);
        }

        goto LABEL_46;
      }
    }
  }

  else
  {
    if (v33 == 2)
    {
      v37 = *(a1 + 1216);
      if (v37)
      {
        v40 = qword_1009F9820;
        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
        {
          v41 = *a1;
          *buf = 134217984;
          *&buf[4] = v41;
          _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "#regionmon using default intent predictor for dev 0x%llx", buf, 0xCu);
          v37 = *(a1 + 1216);
        }

        goto LABEL_46;
      }
    }

    else if (v33 == 3)
    {
      v35 = sub_1003FD56C(a1 + 160, v14);
      if ((*(a2 + 81) & 1) == 0)
      {
        sub_1004CE4A4();
      }

      v36 = *(a2 + 80);
      if (v36 == 2)
      {
        v46 = *(a1 + 1224);
        v47 = !v35;
        if (!v46)
        {
          v47 = 1;
        }

        if ((v47 & 1) == 0)
        {
          v48 = qword_1009F9820;
          if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
          {
            v64 = *a1;
            *buf = 134217984;
            *&buf[4] = v64;
            _os_log_debug_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEBUG, "#regionmon using secondary SG predictory for dev 0x%llx", buf, 0xCu);
            v46 = *(a1 + 1224);
          }

          v45 = (*(*v46 + 40))(v46);
          goto LABEL_53;
        }
      }

      else if (v36 == 1)
      {
        v37 = *(a1 + 1216);
        v38 = !v35;
        if (!v37)
        {
          v38 = 1;
        }

        if ((v38 & 1) == 0)
        {
          v39 = qword_1009F9820;
          if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
          {
            v63 = *a1;
            *buf = 134217984;
            *&buf[4] = v63;
            _os_log_debug_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEBUG, "#regionmon using default SG predictor for dev 0x%llx", buf, 0xCu);
            v37 = *(a1 + 1216);
          }

LABEL_46:
          (*(*v37 + 40))(v37);
LABEL_53:
          v34 = v45;
          v42 = &_mh_execute_header;
          goto LABEL_57;
        }
      }

      else if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
      {
        sub_1004CE43C(a1);
      }
    }

    v42 = 0;
  }

LABEL_57:
  sub_10001296C(a1 + 160, v42 | LODWORD(v34), v83, v14);
  if ((v83[0] | v32 ^ 1))
  {
    sub_100012FB4(__dst, (a1 + 256));
    sub_100012FB4(v77, (a1 + 368));
    v49 = *a1;
    sub_100012FB4(v74, __dst);
    sub_100012FB4(__p, v77);
    v110 = v99;
    v111 = v100;
    v112 = v101;
    v106 = v95;
    v107 = v96;
    v108 = v97;
    v109 = v98;
    *&v103[32] = v91;
    *&v103[48] = v92;
    v104 = v93;
    v105 = v94;
    *buf = v87;
    *&buf[16] = v88;
    *v103 = v89;
    *&v103[16] = v90;
    v113 = 1;
    sub_1003FF284(a1 + 8, v49, v74, __p, buf, v42 | LODWORD(v34), 0, v8);
    if (v73 == 1 && v72 < 0)
    {
      operator delete(__p[0]);
    }

    if (v76 == 1 && v75 < 0)
    {
      operator delete(v74[0]);
    }

    if (v79 == 1 && v78 < 0)
    {
      operator delete(v77[0]);
    }

    if (v82 != 1)
    {
      goto LABEL_87;
    }
  }

  else
  {
    if (v86 != 1)
    {
      goto LABEL_87;
    }

    sub_100012FB4(__dst, &v84);
    v50 = v82;
    if (v82 == 1)
    {
      sub_100012FB4(v77, (a1 + 256));
      if (v79 != 1)
      {
        goto LABEL_74;
      }

      if ((v82 & 1) == 0)
      {
        sub_1000195BC();
      }

      if (!sub_100013120(v77, __dst))
      {
LABEL_74:
        v51 = *a1;
        sub_100012FB4(v68, __dst);
        sub_100012FB4(v65, v77);
        v110 = v99;
        v111 = v100;
        v112 = v101;
        v106 = v95;
        v107 = v96;
        v108 = v97;
        v109 = v98;
        *&v103[32] = v91;
        *&v103[48] = v92;
        v104 = v93;
        v105 = v94;
        *buf = v87;
        *&buf[16] = v88;
        *v103 = v89;
        *&v103[16] = v90;
        v113 = 1;
        sub_1003FF284(a1 + 8, v51, v68, v65, buf, v42 | LODWORD(v34), 1, v8);
        if (v67 == 1 && v66 < 0)
        {
          operator delete(v65[0]);
        }

        if (v70 == 1 && v69 < 0)
        {
          operator delete(v68[0]);
        }
      }

      if (v79 == 1 && v78 < 0)
      {
        operator delete(v77[0]);
      }

      v50 = v82;
    }

    if ((v50 & 1) == 0)
    {
      goto LABEL_87;
    }
  }

  if (v81 < 0)
  {
    operator delete(__dst[0]);
  }

LABEL_87:
  *(a1 + 424) = v8;
  *(a1 + 432) = 1;
  v52 = v100;
  *(a4 + 192) = v99;
  *(a4 + 208) = v52;
  *(a4 + 224) = v101;
  v53 = v96;
  *(a4 + 128) = v95;
  *(a4 + 144) = v53;
  v54 = v98;
  *(a4 + 160) = v97;
  *(a4 + 176) = v54;
  v55 = v92;
  *(a4 + 64) = v91;
  *(a4 + 80) = v55;
  v56 = v94;
  *(a4 + 96) = v93;
  *(a4 + 112) = v56;
  v57 = v88;
  *a4 = v87;
  *(a4 + 16) = v57;
  v58 = v90;
  *(a4 + 32) = v89;
  *(a4 + 48) = v58;
  *(a4 + 232) = 1;
  if (v86 == 1 && v85 < 0)
  {
    operator delete(v84);
  }
}

void sub_1003FF174(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, void *a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, void *a43, uint64_t a44, int a45, __int16 a46, char a47, char a48, uint64_t a49, uint64_t a50, uint64_t a51, char a52, void *a53, uint64_t a54, int a55, __int16 a56, char a57, char a58, uint64_t a59, uint64_t a60, uint64_t a61, char a62, uint64_t a63)
{
  if (a18 == 1 && a14 < 0)
  {
    operator delete(__p);
  }

  if (a28 == 1 && a24 < 0)
  {
    operator delete(a19);
  }

  if (a52 == 1 && a48 < 0)
  {
    operator delete(a43);
  }

  if (a62 == 1 && a58 < 0)
  {
    operator delete(a53);
  }

  if (a72 == 1 && a69 < 0)
  {
    operator delete(a64);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1003FF284(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, double a8)
{
  v13 = a6;
  v12 = a8;
  v11 = a2;
  v10 = a7;
  v8 = *(a1 + 24);
  if (!v8)
  {
    sub_100037B10();
  }

  return (*(*v8 + 48))(v8, &v12, &v11, a3, a4, a5, &v13, &v10);
}

BOOL sub_1003FF300(uint64_t a1)
{
  v1 = *(a1 + 1192);
  if ((v1 - 1) < 2 || v1 == 4)
  {
    v3 = 1216;
    return *(a1 + v3) != 0;
  }

  if (v1 == 3 && *(a1 + 1216))
  {
    v3 = 1224;
    return *(a1 + v3) != 0;
  }

  return 0;
}

uint64_t sub_1003FF358(uint64_t a1, char a2)
{
  result = *(a1 + 144);
  if (result)
  {
    return sub_1003C8BBC(result, a2);
  }

  return result;
}

void sub_1003FF368(uint64_t *a1, double *a2)
{
  v4 = *(a1 + 298);
  if ((v4 - 1) < 2)
  {
    v6 = a1[152];
    if (!v6)
    {
      return;
    }

    goto LABEL_9;
  }

  if (v4 != 4)
  {
    if (v4 != 3)
    {
      return;
    }

    v5 = a1[152];
    if (v5)
    {
      (*(*v5 + 16))(v5, a2);
    }

    v6 = a1[153];
    if (!v6)
    {
      return;
    }

LABEL_9:
    v7 = *(*v6 + 16);

    v7();
    return;
  }

  v8 = a1[152];
  if (v8)
  {
    (*(*v8 + 16))(v8, a2);
    v9 = *a2;
    if (*(a1 + 1208) != 1 || v9 - *(a1 + 150) > 0.100000001)
    {
      *(a1 + 150) = v9;
      *(a1 + 1208) = 1;
      (*(*a1[152] + 40))(a1[152]);
      if (a1[12])
      {
        v11 = v10;
        v15 = *a1;
        v14 = v11;
        sub_10040015C((a1 + 9));
      }
    }
  }

  else
  {
    v12 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#regionmon Motion based spatial gestures predictor not defined", v13, 2u);
    }
  }
}

void sub_1003FF54C(uint64_t a1, double a2)
{
  (*(**(a1 + 120) + 32))(*(a1 + 120));
  sub_1003FD520(a1 + 160);
  v4 = *a1;
  v5 = *(a1 + 152);
  v6 = *(a1 + 1192);
  sub_100012FB4(__dst, (a1 + 256));
  sub_100012FB4(v27, (a1 + 368));
  v7[0] = v4;
  *&v7[1] = a2;
  v8 = 0;
  v7[3] = 0;
  v7[4] = 0;
  v7[2] = 0x3C47A0000;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v15 = 0u;
  v16 = 0u;
  v17 = v5;
  v18 = v6;
  v19 = 0;
  v20 = 0;
  v25 = 0;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v26 = 1;
  sub_1003FF284(a1 + 8, v4, __dst, v27, v7, 0x13F800000, 0, a2);
  if (v29 == 1 && v28 < 0)
  {
    operator delete(v27[0]);
  }

  if (v32 == 1 && v31 < 0)
  {
    operator delete(__dst[0]);
  }
}

void sub_1003FF6A0(_Unwind_Exception *exception_object)
{
  if (*(v1 - 128) == 1 && *(v1 - 153) < 0)
  {
    operator delete(*(v1 - 176));
  }

  if (*(v1 - 72) == 1 && *(v1 - 97) < 0)
  {
    operator delete(*(v1 - 120));
  }

  _Unwind_Resume(exception_object);
}

double sub_1003FF6F4(uint64_t a1, int a2)
{
  v4 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    v6[0] = 67109120;
    v6[1] = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#regionmon connected device deteced didDetect %d", v6, 8u);
  }

  if (a2)
  {
    return sub_1003FF7C0(a1, -10.0);
  }

  else
  {
    return sub_1003FF894(a1);
  }
}

double sub_1003FF7C0(uint64_t a1, double a2)
{
  v3 = *(a1 + 120);
  {
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004CE528(a1);
    }
  }

  else
  {

    return sub_1003B2980(v6, a2);
  }

  return result;
}

double sub_1003FF894(uint64_t a1)
{
  v2 = *(a1 + 120);
  {
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004CE528(a1);
    }
  }

  else
  {

    return sub_1003B2674(v4);
  }

  return result;
}

void sub_1003FF954(uint64_t a1, double a2)
{
  sub_100012FB4(&__dst, (a1 + 256));
  v4 = *a1;
  sub_100012FB4(v9, &__dst);
  LOBYTE(v6) = 0;
  v8 = 0;
  v5[0] = 0;
  v5[232] = 0;
  sub_1003FF284(a1 + 8, v4, v9, &v6, v5, 0x13F800000, 1, a2);
  if (v8 == 1 && v7 < 0)
  {
    operator delete(v6);
  }

  if (v11 == 1 && v10 < 0)
  {
    operator delete(v9[0]);
  }

  if (v14 == 1 && v13 < 0)
  {
    operator delete(__dst);
  }
}

void sub_1003FFA38(_Unwind_Exception *exception_object)
{
  if (*(v1 - 168) == 1 && *(v1 - 193) < 0)
  {
    operator delete(*(v1 - 216));
  }

  if (*(v1 - 112) == 1 && *(v1 - 137) < 0)
  {
    operator delete(*(v1 - 160));
  }

  if (*(v1 - 56) == 1 && *(v1 - 81) < 0)
  {
    operator delete(*(v1 - 104));
  }

  _Unwind_Resume(exception_object);
}

__n128 sub_1003FFAA0(char *__dst, std::string *__str)
{
  if (__dst[48] == __str[2].__r_.__value_.__s.__data_[0])
  {
    if (__dst[48])
    {
      std::string::operator=(__dst, __str);
      v4 = __str[1].__r_.__value_.__r.__words[2];
      result = *&__str[1].__r_.__value_.__l.__data_;
      *(__dst + 24) = result;
      *(__dst + 20) = v4;
    }
  }

  else if (__dst[48])
  {
    if (__dst[23] < 0)
    {
      operator delete(*__dst);
    }

    __dst[48] = 0;
  }

  else
  {
    if (SHIBYTE(__str->__r_.__value_.__r.__words[2]) < 0)
    {
      sub_1000056BC(__dst, __str->__r_.__value_.__l.__data_, __str->__r_.__value_.__l.__size_);
    }

    else
    {
      v6 = *&__str->__r_.__value_.__l.__data_;
      *(__dst + 2) = *(&__str->__r_.__value_.__l + 2);
      *__dst = v6;
    }

    result = *&__str[1].__r_.__value_.__l.__data_;
    *(__dst + 20) = __str[1].__r_.__value_.__r.__words[2];
    *(__dst + 24) = result;
    __dst[48] = 1;
  }

  return result;
}

__n128 sub_1003FFB54(uint64_t a1, __int128 *a2)
{
  if (*(a1 + 48) == *(a2 + 48))
  {
    if (*(a1 + 48))
    {
      if (*(a1 + 23) < 0)
      {
        operator delete(*a1);
      }

      v4 = *a2;
      *(a1 + 16) = *(a2 + 2);
      *a1 = v4;
      *(a2 + 23) = 0;
      *a2 = 0;
      result = *(a2 + 24);
      *(a1 + 40) = *(a2 + 20);
      *(a1 + 24) = result;
    }
  }

  else if (*(a1 + 48))
  {
    if (*(a1 + 23) < 0)
    {
      operator delete(*a1);
    }

    *(a1 + 48) = 0;
  }

  else
  {
    v6 = *a2;
    *(a1 + 16) = *(a2 + 2);
    *a1 = v6;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    *a2 = 0;
    result = *(a2 + 24);
    *(a1 + 40) = *(a2 + 20);
    *(a1 + 24) = result;
    *(a1 + 48) = 1;
  }

  return result;
}

uint64_t sub_1003FFC14(uint64_t a1)
{
  if (*(a1 + 256) == 1 && *(a1 + 231) < 0)
  {
    operator delete(*(a1 + 208));
  }

  if (*(a1 + 200) == 1 && *(a1 + 175) < 0)
  {
    operator delete(*(a1 + 152));
  }

  if (*(a1 + 144) == 1 && *(a1 + 119) < 0)
  {
    operator delete(*(a1 + 96));
  }

  v2 = *(a1 + 88);
  if (v2)
  {
    sub_10000AD84(v2);
  }

  return a1;
}

uint64_t sub_1003FFC98(uint64_t a1, uint64_t a2)
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

uint64_t sub_1003FFD30(uint64_t a1, uint64_t a2)
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

uint64_t sub_1003FFDC8(uint64_t a1, uint64_t a2)
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

uint64_t sub_1003FFE60(uint64_t a1)
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

uint64_t *sub_1003FFEE0(uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    sub_1000197C8(v2 + 8);

    operator delete();
  }

  return result;
}

uint64_t sub_1003FFF40(uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = sub_1003FFFF8(a1, a2);
  }

  else
  {
    sub_1003FFF80(a1, a2);
    result = v3 + 48;
  }

  *(a1 + 8) = result;
  return result;
}

__n128 sub_1003FFF80(uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 8);
  if (*(a2 + 23) < 0)
  {
    sub_1000056BC(*(a1 + 8), *a2, *(a2 + 1));
  }

  else
  {
    v5 = *a2;
    *(v4 + 16) = *(a2 + 2);
    *v4 = v5;
  }

  result = *(a2 + 24);
  *(v4 + 40) = *(a2 + 20);
  *(v4 + 24) = result;
  *(a1 + 8) = v4 + 48;
  return result;
}

uint64_t sub_1003FFFF8(uint64_t a1, __int128 *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 > 0x555555555555555)
  {
    sub_100019B38();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 4) > v3)
  {
    v3 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v6 = 0x555555555555555;
  }

  else
  {
    v6 = v3;
  }

  v21 = a1;
  if (v6)
  {
    sub_10038C760(a1, v6);
  }

  v7 = 48 * v2;
  v18 = 0;
  v19 = v7;
  v20 = v7;
  if (*(a2 + 23) < 0)
  {
    sub_1000056BC(v7, *a2, *(a2 + 1));
    v9 = v19;
    v10 = v20;
  }

  else
  {
    v8 = *a2;
    *(v7 + 16) = *(a2 + 2);
    *v7 = v8;
    v9 = v7;
    v10 = v7;
  }

  v11 = *(a2 + 24);
  *(v7 + 40) = *(a2 + 20);
  *(v7 + 24) = v11;
  *&v20 = v10 + 48;
  v12 = *(a1 + 8);
  v13 = v9 + *a1 - v12;
  sub_10038C7B8(a1, *a1, v12, v13);
  v14 = *a1;
  *a1 = v13;
  v15 = *(a1 + 16);
  v17 = v20;
  *(a1 + 8) = v20;
  *&v20 = v14;
  *(&v20 + 1) = v15;
  v18 = v14;
  v19 = v14;
  sub_10038C8FC(&v18);
  return v17;
}

void sub_100400148(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_10038C8FC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10040015C(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (!v2)
  {
    sub_100037B10();
  }

  v3 = *(*v2 + 48);

  return v3();
}

void *sub_1004001C4(uint64_t a1, void *a2)
{
  *a2 = off_1009AA8B0;
  result = *(a1 + 8);
  if (result)
  {
    result = _Block_copy(result);
  }

  a2[1] = result;
  return result;
}

void sub_100400210(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    _Block_release(v2);
  }

  *(a1 + 8) = 0;
}

uint64_t sub_10040025C(uint64_t a1, uint64_t a2)
{
  if (sub_100023EF4(a2, &off_1009AA910))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1004002A8(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (!v2)
  {
    sub_100037B10();
  }

  v3 = *(*v2 + 48);

  return v3();
}

uint64_t sub_1004002F0()
{
  v8[0] = xmmword_100571A90;
  v8[1] = unk_100571AA0;
  sub_1001BD0B0(qword_1009F8B88, v8, 4);
  xmmword_1009F8BA0 = xmmword_100563BD0;
  *algn_1009F8BB0 = xmmword_100563BE0;
  qword_1009F8BC8 = 0;
  unk_1009F8BD0 = 0;
  qword_1009F8BC0 = 0x3FD999999999999ALL;
  unk_1009F8BD8 = xmmword_100563BF0;
  dword_1009F8BE8 = 5;
  qword_1009F8BF0 = 0x4000000000000000;
  dword_1009F8BF8 = 5;
  byte_1009F8C00 = 0;
  *&algn_1009F8C01[3] = 0x30000000ALL;
  xmmword_1009F8C10 = xmmword_100563C00;
  unk_1009F8C20 = xmmword_100563C10;
  xmmword_1009F8C30 = xmmword_100563C20;
  qword_1009F8C40 = 0x3FE3333333333333;
  dword_1009F8C48 = 3;
  xmmword_1009F8C50 = xmmword_100563C30;
  unk_1009F8C60 = xmmword_100563C10;
  xmmword_1009F8C70 = xmmword_100563C00;
  qword_1009F8C80 = 0x3FE3333333333333;
  byte_1009F8C88 = 0;
  xmmword_1009F8C90 = xmmword_100563C40;
  unk_1009F8CA0 = xmmword_100563C50;
  __asm { FMOV            V0.2D, #1.0 }

  v6 = _Q0;
  xmmword_1009F8CB0 = _Q0;
  qword_1009F8CC0 = 0xBFD3333333333333;
  xmmword_1009F8CC8 = xmmword_100563C60;
  qword_1009F8CD8 = 0x3E99999A40000000;
  xmmword_1009F8CE0 = xmmword_100563BE0;
  qword_1009F8CF8 = 0;
  unk_1009F8D00 = 0;
  qword_1009F8CF0 = 0x3FD999999999999ALL;
  xmmword_1009F8D08 = xmmword_100563BF0;
  dword_1009F8D18 = 5;
  qword_1009F8D20 = 0x4000000000000000;
  dword_1009F8D28 = 4;
  qword_1009F8D30 = 0x300000008;
  qword_1009F8D38 = 0xC04E800000000000;
  v7 = 0xC04E800000000000;
  sub_1001BD370(qword_1009F8D40, &v7, 1);
  xmmword_1009F8D58 = xmmword_100563C70;
  qword_1009F8D68 = 0x4024000000000000;
  dword_1009F8D70 = 45;
  byte_1009F8D78 = 0;
  byte_1009F8D90 = 0;
  qword_1009F8D98 = 0;
  byte_1009F8DA0 = 0;
  dword_1009F8DA4 = 1;
  byte_1009F8DA8 = 1;
  xmmword_1009F8DB0 = xmmword_100563C80;
  xmmword_1009F8DC0 = xmmword_100563C90;
  xmmword_1009F8DD0 = v6;
  qword_1009F8DE0 = 0xC059000000000000;
  xmmword_1009F8DE8 = xmmword_100563CA0;
  qword_1009F8DF8 = vdup_n_s32(0x3DCCCCCDu);
  xmmword_1009F8E00 = xmmword_100563BE0;
  qword_1009F8E10 = 0x3FD999999999999ALL;
  xmmword_1009F8E18 = 0u;
  unk_1009F8E28 = xmmword_100563BF0;
  dword_1009F8E38 = 5;
  qword_1009F8E40 = 0x4000000000000000;
  dword_1009F8E48 = 10;
  qword_1009F8E50 = 0x4034000000000000;
  dword_1009F8E58 = 3;
  xmmword_1009F8E60 = xmmword_100563CB0;
  __cxa_atexit(sub_1001BB564, qword_1009F8B88, &_mh_execute_header);
  __cxa_atexit(nullsub_73, &off_1009EC2F0, &_mh_execute_header);
  return __cxa_atexit(nullsub_74, &off_1009EC2F8, &_mh_execute_header);
}

__n128 sub_100400618(uint64_t a1, __n128 *a2)
{
  *a1 = 0;
  *(a1 + 32) = 0;
  result = *a2;
  *(a1 + 40) = *a2;
  return result;
}

double sub_10040062C(double *a1)
{
  result = 0.0;
  if (*(a1 + 32) == 1)
  {
    v2 = *a1;
    v3 = *(a1 + 1);
    if (*a1 != v3)
    {
      v4 = 0;
      v5 = 0;
      v6 = a1[6];
      do
      {
        v7 = *(*&v2 + 8);
        v8 = *(*&v2 + 41);
        if (v7 < v6)
        {
          v8 = 0;
        }

        v5 += v8;
        if (v7 >= v6)
        {
          ++v4;
        }

        *&v2 += 48;
      }

      while (*&v2 != v3);
      if (v4)
      {
        return v5 / v4;
      }
    }
  }

  return result;
}

void sub_10040068C(uint64_t a1, char **a2, double a3)
{
  *__p = 0u;
  v7 = 0u;
  v8 = 1;
  sub_100400870(a1, __p);
  if (v8 == 1 && __p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (a1 != a2)
  {
    sub_10040090C(a1, *a2, a2[1], 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 4));
  }

  *(a1 + 24) = a3;
}

BOOL sub_100400728(uint64_t a1, uint64_t *a2, double a3)
{
  if (*(a1 + 32) != 1)
  {
    return 0;
  }

  if (vabdd_f64(*(a1 + 24), a3) <= 3.0)
  {
    v7 = sub_10040062C(a1);
    v8 = *(a1 + 40);
    v5 = v7 >= v8;
    v9 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
    {
      if (*(a2 + 23) < 0)
      {
        a2 = *a2;
      }

      v11 = 136315650;
      v12 = a2;
      v13 = 2048;
      v14 = v7;
      v15 = 1024;
      v16 = v7 >= v8;
      _os_log_debug_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "#gri,%s,tracked_ratio,%.1lf,has_good_gnss_conditions,%d", &v11, 0x1Cu);
    }
  }

  else
  {
    v4 = *a1;
    if (*a1)
    {
      *(a1 + 8) = v4;
      operator delete(v4);
    }

    v5 = 0;
    *(a1 + 32) = 0;
  }

  return v5;
}

double sub_100400870(uint64_t a1, __n128 *a2)
{
  if (*(a1 + 32) == a2[2].n128_u8[0])
  {
    if (*(a1 + 32))
    {
      sub_10016D9A8(a1, a2);
      result = a2[1].n128_f64[1];
      *(a1 + 24) = result;
    }
  }

  else if (*(a1 + 32))
  {
    v5 = *a1;
    if (*a1)
    {
      *(a1 + 8) = v5;
      operator delete(v5);
    }

    *(a1 + 32) = 0;
  }

  else
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *a1 = *a2;
    *(a1 + 16) = a2[1].n128_u64[0];
    a2->n128_u64[1] = 0;
    a2[1].n128_u64[0] = 0;
    a2->n128_u64[0] = 0;
    result = a2[1].n128_f64[1];
    *(a1 + 24) = result;
    *(a1 + 32) = 1;
  }

  return result;
}

void *sub_10040090C(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (0xAAAAAAAAAAAAAAABLL * ((v7 - *result) >> 4) < a4)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if (a4 <= 0x555555555555555)
    {
      v9 = 0xAAAAAAAAAAAAAAABLL * (v7 >> 4);
      v10 = 2 * v9;
      if (2 * v9 <= a4)
      {
        v10 = a4;
      }

      if (v9 >= 0x2AAAAAAAAAAAAAALL)
      {
        v11 = 0x555555555555555;
      }

      else
      {
        v11 = v10;
      }

      sub_100400A68(v6, v11);
    }

    sub_100019B38();
  }

  v12 = result[1];
  v13 = v12 - v8;
  if (0xAAAAAAAAAAAAAAABLL * ((v12 - v8) >> 4) >= a4)
  {
    v16 = a3 - __src;
    if (v16)
    {
      result = memmove(*result, __src, v16);
    }

    v15 = &v8[v16];
  }

  else
  {
    v14 = &__src[v13];
    if (v12 != v8)
    {
      result = memmove(*result, __src, v13);
      v12 = v6[1];
    }

    if (a3 != v14)
    {
      result = memmove(v12, v14, a3 - v14);
    }

    v15 = &v12[a3 - v14];
  }

  v6[1] = v15;
  return result;
}

void sub_100400A68(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x555555555555556)
  {
    sub_1003655DC(a1, a2);
  }

  sub_100019B38();
}

double sub_100400B04(uint64_t a1)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  atan2(v2, *a1);
  v4 = sqrt(v2 * v2 + v3 * v3);
  v5 = *(a1 + 16);
  if (v4 >= 0.000001)
  {
    v6 = atan2(*(a1 + 16), v4 * 0.99330562);
    v7 = 5;
    do
    {
      v8 = __sincos_stret(v6);
      v9 = sqrt(v8.__sinval * v8.__sinval * -0.00669437999 + 1.0);
      v10 = atan2(v5, v4 * (6378137.0 / v9 / (6378137.0 / v9 + v4 / v8.__cosval - 6378137.0 / v9) * -0.00669437999 + 1.0));
      v6 = v10;
      --v7;
    }

    while (v7);
    __sincos_stret(v10);
  }

  else
  {
    v6 = dbl_100571B40[v5 > 0.0];
  }

  return v6 / 3.14159265 * 180.0;
}

double sub_100400C60(double *a1, double *a2)
{
  v3 = sub_10040100C(a1);
  v5 = v4;
  v7 = v6;
  v8 = sub_10040100C(a2);
  v10 = v9;
  v12 = v11;
  v20 = *a2 / 180.0 * 3.14159265;
  v13 = a2[1] / 180.0 * 3.14159265;
  v43 = 0x100000003;
  v42 = xmmword_10056EDA0;
  v41 = off_1009A8F78;
  v44 = &v45;
  sub_1003A8C00(&v41, 3, 1);
  sub_1003A8C50(&v41, 0.0);
  *sub_1003AFDBC(&v41, 0) = v3;
  *sub_1003AFDBC(&v41, 1u) = v5;
  *sub_1003AFDBC(&v41, 2u) = v7;
  v38 = 0x100000003;
  v37 = xmmword_10056EDA0;
  v36 = off_1009A8F78;
  v39 = &v40;
  sub_1003A8C00(&v36, 3, 1);
  sub_1003A8C50(&v36, 0.0);
  *sub_1003AFDBC(&v36, 0) = v8;
  *sub_1003AFDBC(&v36, 1u) = v10;
  *sub_1003AFDBC(&v36, 2u) = v12;
  v33 = 0x100000003;
  v32 = xmmword_10056EDA0;
  v31 = off_1009A8F78;
  v34 = &v35;
  sub_1003A920C(&v41, &v36, &v31);
  v28 = 0x300000003;
  v26 = off_1009A8FC0;
  v27 = xmmword_10056EDB0;
  v29 = &v30;
  sub_1003A8C00(&v26, 3, 3);
  sub_1003A8C50(&v26, 0.0);
  v14 = __sincos_stret(v13);
  *sub_1003A8DB0(&v26, 0, 0) = -v14.__sinval;
  *sub_1003A8DB0(&v26, 0, 1) = v14.__cosval;
  *sub_1003A8DB0(&v26, 0, 2) = 0;
  v15 = __sincos_stret(v20);
  *sub_1003A8DB0(&v26, 1, 0) = -(v15.__sinval * v14.__cosval);
  *sub_1003A8DB0(&v26, 1, 1) = -(v15.__sinval * v14.__sinval);
  *sub_1003A8DB0(&v26, 1, 2) = v15.__cosval;
  *sub_1003A8DB0(&v26, 2, 0) = v15.__cosval * v14.__cosval;
  *sub_1003A8DB0(&v26, 2, 1) = v15.__cosval * v14.__sinval;
  *sub_1003A8DB0(&v26, 2, 2) = v15.__sinval;
  v23 = 0x100000003;
  v21 = off_1009A8F78;
  v22 = xmmword_10056EDA0;
  v24 = &v25;
  sub_1003A90A8(&v26, &v31, &v21);
  v16 = *sub_1003AFDBC(&v21, 0);
  v17 = *sub_1003AFDBC(&v21, 1u);
  v18 = *sub_1003AFDBC(&v21, 2u);
  return v16;
}

double sub_10040100C(double *a1)
{
  v1 = a1[1] / 180.0 * 3.14159265;
  v2 = a1[2];
  v3 = __sincos_stret(*a1 / 180.0 * 3.14159265);
  return __sincos_stret(v1).__cosval * (v3.__cosval * (v2 + 6378137.0 / sqrt(v3.__sinval * v3.__sinval * -0.00669437999 + 1.0)));
}

void sub_1004010B8(uint64_t *a1, double *a2)
{
  v4 = sub_10040100C(a2);
  v6 = v5;
  v8 = v7;
  v9 = *a2 / 180.0 * 3.14159265;
  v10 = a2[1] / 180.0 * 3.14159265;
  v44 = 0x300000003;
  v43 = xmmword_10056EDB0;
  v42 = off_1009A8FC0;
  v45 = &v46;
  sub_1003A8C00(&v42, 3, 3);
  sub_1003A8C50(&v42, 0.0);
  v11 = __sincos_stret(v10);
  *sub_1003A8DB0(&v42, 0, 0) = -v11.__sinval;
  *sub_1003A8DB0(&v42, 0, 1) = v11.__cosval;
  *sub_1003A8DB0(&v42, 0, 2) = 0;
  v12 = __sincos_stret(v9);
  *sub_1003A8DB0(&v42, 1, 0) = -(v12.__sinval * v11.__cosval);
  *sub_1003A8DB0(&v42, 1, 1) = -(v12.__sinval * v11.__sinval);
  *sub_1003A8DB0(&v42, 1, 2) = v12.__cosval;
  *sub_1003A8DB0(&v42, 2, 0) = v12.__cosval * v11.__cosval;
  *sub_1003A8DB0(&v42, 2, 1) = v12.__cosval * v11.__sinval;
  *sub_1003A8DB0(&v42, 2, 2) = v12.__sinval;
  v39 = 0x100000003;
  v38 = xmmword_10056EDA0;
  v37 = off_1009A8F78;
  v40 = &v41;
  sub_1003A8C00(&v37, 3, 1);
  sub_1003A8C50(&v37, 0.0);
  v13 = *a1;
  *sub_1003AFDBC(&v37, 0) = v13;
  v14 = a1[1];
  *sub_1003AFDBC(&v37, 1u) = v14;
  v15 = a1[2];
  *sub_1003AFDBC(&v37, 2u) = v15;
  sub_1003AFDF8(&v27, DWORD1(v43), v43);
  sub_1003A9464(&v42, &v27);
  v34 = 0x100000003;
  v33 = xmmword_10056EDA0;
  v32 = off_1009A8F78;
  v35 = &v36;
  sub_1003A90A8(&v27, &v37, &v32);
  v29 = 0x100000003;
  v27 = off_1009A8F78;
  v28 = xmmword_10056EDA0;
  v30 = &v31;
  sub_1003A8C00(&v27, 3, 1);
  sub_1003A8C50(&v27, 0.0);
  *sub_1003AFDBC(&v27, 0) = v4;
  *sub_1003AFDBC(&v27, 1u) = v6;
  *sub_1003AFDBC(&v27, 2u) = v8;
  v24 = 0x100000003;
  v22 = off_1009A8F78;
  v23 = xmmword_10056EDA0;
  v25 = &v26;
  sub_1003A8EBC(&v27, &v32, &v22);
  v16 = *sub_1003AFDBC(&v22, 0);
  v17 = *sub_1003AFDBC(&v22, 1u);
  v19 = 0;
  v20 = 0;
  v21 = 0;
  v18 = *sub_1003AFDBC(&v22, 2u);
  v19 = v16;
  v20 = v17;
  v21 = v18;
  sub_100400B04(&v19);
}

void sub_1004014A8(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v7 = a2;
  if ((*(a1 + 16) & 1) == 0)
  {
    sub_1004CE590();
  }

  if (*(a1 + 32))
  {
    *a2 = 0;
    a2[248] = 0;
    return;
  }

  DWORD2(v72) = 999;
  LOBYTE(v73) = 0;
  BYTE8(v74) = 0;
  v75[0] = 0;
  v75[24] = 0;
  v76 = 0;
  v77 = 0;
  v78 = 0;
  LOWORD(v63) = *(a1 + 24);
  *(&v63 + 1) = *(a1 + 8);
  WORD1(v64) = *(a1 + 70);
  v8 = 1;
  BYTE4(v64) = 1;
  LOWORD(v64) = *(a1 + 56);
  if (*(a1 + 72))
  {
    v8 = 0;
    *(&v64 + 1) = 0;
    LOBYTE(v65) = 0;
    *(&v65 + 1) = 0;
    LOBYTE(v66) = 0;
    *(&v66 + 1) = 0;
    LOBYTE(v67) = 0;
    v9 = *(a1 + 80);
    v10 = *(a1 + 88);
    v11 = *(a1 + 76);
    v12 = 0.0;
    v13 = *(a1 + 96);
  }

  else
  {
    v9 = *(a1 + 80);
    v10 = *(a1 + 88);
    *(&v64 + 1) = v10;
    LOBYTE(v65) = 1;
    *(&v65 + 1) = v9;
    LOBYTE(v66) = 1;
    v11 = *(a1 + 76);
    *(&v66 + 1) = v11;
    LOBYTE(v67) = 1;
    v13 = *(a1 + 96);
    v12 = v13;
  }

  *(&v67 + 1) = v12;
  LOBYTE(v68) = v8;
  if (v10 == 0.0 && v9 == 0.0 && v11 == 0.0 && !v13 && v8)
  {
    LOBYTE(v65) = 0;
    LOBYTE(v66) = 0;
    LOBYTE(v67) = 0;
    LOBYTE(v68) = 0;
  }

  if (*(a1 + 100))
  {
    v14 = 0;
    *(&v68 + 1) = 0;
    LOBYTE(v69) = 0;
    *(&v69 + 1) = 0;
    LOBYTE(v70) = 0;
    *(&v70 + 1) = 0;
    LOBYTE(v71) = 0;
    v16 = *(a1 + 112);
    v15 = *(a1 + 120);
    v17 = *(a1 + 104);
    v18 = 0.0;
    v19 = *(a1 + 128);
  }

  else
  {
    v16 = *(a1 + 112);
    v15 = *(a1 + 120);
    *(&v68 + 1) = v15;
    v14 = 1;
    LOBYTE(v69) = 1;
    *(&v69 + 1) = v16;
    LOBYTE(v70) = 1;
    v17 = *(a1 + 104);
    *(&v70 + 1) = v17;
    LOBYTE(v71) = 1;
    v19 = *(a1 + 128);
    v18 = v19;
  }

  *(&v71 + 1) = v18;
  LOBYTE(v72) = v14;
  if (v15 == 0.0 && v16 == 0.0 && v17 == 0.0 && !v19 && v14)
  {
    LOBYTE(v69) = 0;
    LOBYTE(v70) = 0;
    LOBYTE(v71) = 0;
    LOBYTE(v72) = 0;
  }

  if (*(a1 + 192))
  {
    v20 = &v74;
    v21 = &v73 + 8;
    v22 = &v73;
    v23 = &v74 + 8;
    v24 = 184;
    v25 = 176;
    v26 = 168;
    v27 = 1;
LABEL_26:
    DWORD2(v72) = v27;
    v28 = *(a1 + v25);
    v29 = *(a1 + v24);
    *v22 = *(a1 + v26);
    *v21 = v28;
    *v20 = v29;
    *v23 = 1;
    goto LABEL_27;
  }

  if (*(a1 + 160) == 1)
  {
    v27 = 0;
    v20 = &v75[16];
    v21 = &v75[8];
    v22 = v75;
    v23 = &v75[24];
    v24 = 152;
    v25 = 144;
    v26 = 136;
    goto LABEL_26;
  }

LABEL_27:
  v30 = *(a1 + 200);
  v31 = *(a1 + 208);
  if (v30 == v31)
  {
    v54 = 0;
    v32 = 0;
    v53 = 0;
  }

  else
  {
    v57 = v7;
    v32 = 0;
    v33 = 0x249249249249249;
    do
    {
      if (!*v30)
      {
        if ((v34 = *(v30 + 16), v35 = *(v30 + 24), v36 = *(v30 + 36), v37 = *(v30 + 32), v38 = *(v30 + 4), v35 != 0.0) || v34 != 0.0 || (v36 == 0.0 ? (v39 = v37 == 0) : (v39 = 0), !v39 || v38 != 0.0))
        {
          v3 &= 0xFFFFFFFFFFFFFF00;
          if (*(v30 + 112) == 1)
          {
            v40 = 0;
            v2 = *(v30 + 88);
            v41 = 1;
            v4 = *(v30 + 96);
            v5 = *(v30 + 104);
          }

          else
          {
            v2 &= 0xFFFFFFFFFFFFFF00;
            if (*(v30 + 80) == 1)
            {
              v41 = 0;
              v3 = *(v30 + 56);
              v40 = 1;
              v6 = *(v30 + 72);
              v58 = *(v30 + 64);
            }

            else
            {
              v40 = 0;
              v41 = 0;
            }
          }

          v42 = *(v30 + 8);
          v43 = v36;
          v44 = v37;
          v45 = v38;
          if (v32 >= v78)
          {
            v46 = 0x6DB6DB6DB6DB6DB7 * ((v32 - v76) >> 4);
            v47 = v46 + 1;
            if (v46 + 1 > v33)
            {
              sub_100019B38();
            }

            if (0xDB6DB6DB6DB6DB6ELL * ((v78 - v76) >> 4) > v47)
            {
              v47 = 0xDB6DB6DB6DB6DB6ELL * ((v78 - v76) >> 4);
            }

            v48 = v33;
            if ((0x6DB6DB6DB6DB6DB7 * ((v78 - v76) >> 4)) >= 0x124924924924924)
            {
              v49 = v33;
            }

            else
            {
              v49 = v47;
            }

            if (v49)
            {
              sub_10038EC84(&v76, v49);
            }

            v50 = 112 * v46;
            *v50 = v42;
            *(v50 + 8) = v35;
            *(v50 + 16) = v34;
            *(v50 + 24) = v43;
            *(v50 + 32) = v44;
            *(v50 + 40) = v45;
            *(v50 + 48) = v2;
            *(v50 + 56) = v4;
            *(v50 + 64) = v5;
            *(v50 + 72) = v41;
            *(v50 + 80) = v3;
            *(v50 + 88) = v58;
            *(v50 + 96) = v6;
            *(v50 + 104) = v40;
            v32 = 112 * v46 + 112;
            v51 = (v50 - (v77 - v76));
            memcpy(v51, v76, v77 - v76);
            v52 = v76;
            v76 = v51;
            v77 = v32;
            v78 = 0;
            if (v52)
            {
              operator delete(v52);
            }

            v33 = v48;
          }

          else
          {
            *v32 = v42;
            *(v32 + 6) = v62;
            *(v32 + 2) = v61;
            *(v32 + 8) = v35;
            *(v32 + 16) = v34;
            *(v32 + 24) = v43;
            *(v32 + 32) = v44;
            *(v32 + 40) = v45;
            *(v32 + 48) = v2;
            *(v32 + 56) = v4;
            *(v32 + 64) = v5;
            *(v32 + 72) = v41;
            *(v32 + 76) = *&v60[3];
            *(v32 + 73) = *v60;
            *(v32 + 80) = v3;
            *(v32 + 88) = v58;
            *(v32 + 96) = v6;
            *(v32 + 104) = v40;
            *(v32 + 108) = *&v59[3];
            *(v32 + 105) = *v59;
            v32 += 112;
          }

          v77 = v32;
        }
      }

      v30 += 120;
    }

    while (v30 != v31);
    v53 = v76;
    v54 = v78;
    v7 = v57;
  }

  v55 = v74;
  v56 = *v75;
  *(v7 + 10) = v73;
  *(v7 + 11) = v55;
  *(v7 + 12) = v56;
  *(v7 + 201) = *&v75[9];
  *(v7 + 6) = v69;
  *(v7 + 7) = v70;
  *(v7 + 8) = v71;
  *(v7 + 9) = v72;
  *(v7 + 2) = v65;
  *(v7 + 3) = v66;
  *(v7 + 4) = v67;
  *(v7 + 5) = v68;
  *v7 = v63;
  *(v7 + 1) = v64;
  *(v7 + 28) = v53;
  *(v7 + 29) = v32;
  *(v7 + 30) = v54;
  v7[248] = 1;
}

void sub_100401A2C(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 224);
  if (v3)
  {
    *(v1 + 232) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

double sub_100401A4C(uint64_t a1, double result, double a3, double a4)
{
  if ((*a1 & 1) != 0 && (v4 = a4 - *(a1 + 8), v4 <= 20.0))
  {
    v5 = v4 * 10.0;
    v6 = *(a1 + 16);
    v7 = v5 + *(a1 + 24);
    *(a1 + 24) = v7;
    if (vabdd_f64(result, v6) <= 50.0)
    {
      v8 = v7 / (v7 + a3);
      result = v6 + v8 * (result - v6);
      *(a1 + 16) = result;
      *(a1 + 24) = v7 * (1.0 - v8);
      *(a1 + 8) = a4;
    }
  }

  else
  {
    *(a1 + 16) = result;
    *(a1 + 24) = a3;
    *(a1 + 8) = a4;
    *a1 = 1;
  }

  return result;
}

uint64_t sub_100401ACC(uint64_t a1)
{
  if (*a1 == 1)
  {
    return *(a1 + 16);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100401B40(uint64_t a1, _WORD *a2, void *a3)
{
  *a1 = *a2;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 1065353216;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 1065353216;
  *(a1 + 96) = 0;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = a1 + 176;
  *(a1 + 184) = a1 + 176;
  *(a1 + 192) = 0;
  *(a1 + 200) = 0;
  *(a1 + 240) = 0;
  *(a1 + 256) = 0;
  *(a1 + 264) = 0;
  *(a1 + 248) = a1 + 256;
  *(a1 + 280) = 0;
  *(a1 + 272) = a1 + 280;
  *(a1 + 288) = 0;
  sub_1003A7738(a1 + 296);
  *(a1 + 552) = 0;
  sub_1003F0980(a1 + 560);
  v5 = a3[1];
  *(a1 + 976) = *a3;
  *(a1 + 984) = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  return a1;
}

void sub_100401C34(_Unwind_Exception *a1)
{
  sub_1004035CC(v3);
  sub_100021914(v2);
  sub_100021914(v1);
  _Unwind_Resume(a1);
}

void sub_100401C8C(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  if ((*(a1 + 20) & 1) == 0)
  {
    sub_1004CE5BC();
  }

  HIDWORD(v3) = *(a1 + 16);
  LODWORD(v3) = HIDWORD(v3);
  *a2 = v3 >> 16;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  v4 = (a2 + 56);
  *(a2 + 88) = 0;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  *(a2 + 80) = 0;
  if (*(a1 + 80) == 1)
  {
    *(a2 + 8) = *(a1 + 72) * -299792458.0 * 1.0e-12;
    *(a2 + 16) = 1;
  }

  if (*(a1 + 144) == 1)
  {
    *(a2 + 24) = *(a1 + 136) * -299792458.0 * 1.0e-12;
    *(a2 + 32) = 1;
  }

  if (*(a1 + 32) == 1 && *(a1 + 48) == 1 && *(a1 + 96) == 1 && *(a1 + 112) == 1)
  {
    v5 = *(a1 + 88) - *(a1 + 24);
    if (v5 > 0.0)
    {
      *(a2 + 40) = ((*(a1 + 104) - *(a1 + 40)) / v5 + -1.0) * 299792458.0;
      *(a2 + 48) = 1;
    }
  }

  v6 = *(a1 + 224);
  v7 = *(a1 + 232);
  if (v6 != v7)
  {
    v8 = 0;
    do
    {
      v9 = (*(v6 + 32) * 1.0e-12 + *(v6 + 24) * 0.000001) * -299792458.0;
      v10 = *(a2 + 72);
      if (v8 >= v10)
      {
        v11 = *v4;
        v12 = v8 - *v4;
        v13 = v12 >> 3;
        v14 = (v12 >> 3) + 1;
        if (v14 >> 61)
        {
          sub_100019B38();
        }

        v15 = v10 - v11;
        if (v15 >> 2 > v14)
        {
          v14 = v15 >> 2;
        }

        if (v15 >= 0x7FFFFFFFFFFFFFF8)
        {
          v16 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v16 = v14;
        }

        if (v16)
        {
          sub_100012564(a2 + 56, v16);
        }

        *(8 * v13) = v9;
        v8 = (8 * v13 + 8);
        memcpy(0, v11, v12);
        v17 = *(a2 + 56);
        *(a2 + 56) = 0;
        *(a2 + 64) = v8;
        *(a2 + 72) = 0;
        if (v17)
        {
          operator delete(v17);
        }
      }

      else
      {
        *v8++ = v9;
      }

      *(a2 + 64) = v8;
      v6 += 112;
    }

    while (v6 != v7);
  }
}

void sub_100401ED8(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 64) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

void sub_100401EF8(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 152);
  if (v2 == 999 || v2 == 1)
  {
    v4 = 0;
    *a2 = 0;
  }

  else
  {
    if (v2)
    {
      return;
    }

    if ((*(a1 + 216) & 1) == 0)
    {
      sub_1004CE5E8();
    }

    v5 = *(a1 + 208);
    *a2 = *(a1 + 192);
    *(a2 + 16) = v5;
    v4 = 1;
  }

  *(a2 + 24) = v4;
}

void sub_100401F4C(uint64_t a1@<X1>, uint64_t a2@<X2>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v6 = *(a1 + 152);
  if (v6 == 1)
  {
    if (*(a1 + 184) == 1)
    {
      v7 = *(a1 + 160);
      v8 = *(a1 + 168);
      v9 = *(a1 + 176);
LABEL_8:
      if (*(a1 + 20))
      {
        if (*(a1 + 32) == 1 && *(a1 + 48) == 1)
        {
          *v19 = *(a1 + 18);
          v10 = *(a1 + 40);
          *&v19[8] = *(a1 + 24);
          *&v19[16] = v10;
          v20 = v7;
          v21 = v8;
          v22 = v9;
          sub_100402198(a3, v19);
        }

        else if (*(a1 + 96) == 1 && *(a1 + 112) == 1)
        {
          *v19 = *(a1 + 18);
          v11 = *(a1 + 104);
          *&v19[8] = *(a1 + 88);
          *&v19[16] = v11;
          v20 = v7;
          v21 = v8;
          v22 = v9;
          sub_100402198(a3, v19);
        }

        goto LABEL_16;
      }

      goto LABEL_27;
    }

    v17 = "anchorMsg.relative_coordinates.has_value()";
    v18 = 122;
LABEL_31:
    __assert_rtn("_anchorMessageToMeasurement", "PositionEngineManager.cpp", v18, v17);
  }

  if (!v6)
  {
    if (*(a1 + 216))
    {
      if (*(a2 + 24) == 1)
      {
        v7 = sub_100400C60((a1 + 192), a2);
        goto LABEL_8;
      }

      v17 = "refLLA.has_value()";
      v18 = 113;
    }

    else
    {
      v17 = "anchorMsg.geodetic_coordinates.has_value()";
      v18 = 112;
    }

    goto LABEL_31;
  }

  if ((*(a1 + 20) & 1) == 0)
  {
LABEL_27:
    v17 = "anchorMsg.poll_addr.has_value()";
    v18 = 134;
    goto LABEL_31;
  }

LABEL_16:
  v13 = *(a1 + 224);
  v12 = *(a1 + 232);
  while (v13 != v12)
  {
    if (*(v13 + 72) == 1)
    {
      v14 = *(v13 + 48);
      v15 = *(v13 + 56);
      v16 = *(v13 + 64);
    }

    else
    {
      if (*(v13 + 104) != 1)
      {
        goto LABEL_24;
      }

      if ((*(a2 + 24) & 1) == 0)
      {
        __assert_rtn("_anchorMessageToMeasurement", "PositionEngineManager.cpp", 162, "refLLA.has_value()");
      }

      *v19 = *(v13 + 80);
      *&v19[16] = *(v13 + 96);
      v14 = sub_100400C60(v19, a2);
    }

    *v19 = *v13;
    *&v19[8] = *(v13 + 8);
    v20 = v14;
    v21 = v15;
    v22 = v16;
    sub_100402198(a3, v19);
LABEL_24:
    v13 += 112;
  }
}

void sub_100402164(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_100402198(uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v4 >= v5)
  {
    v9 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 4);
    v10 = v9 + 1;
    if (v9 + 1 > 0x555555555555555)
    {
      sub_100019B38();
    }

    v11 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 4);
    if (2 * v11 > v10)
    {
      v10 = 2 * v11;
    }

    if (v11 >= 0x2AAAAAAAAAAAAAALL)
    {
      v12 = 0x555555555555555;
    }

    else
    {
      v12 = v10;
    }

    if (v12)
    {
      sub_100403898(a1, v12);
    }

    v13 = 48 * v9;
    v14 = *a2;
    v15 = a2[2];
    *(v13 + 16) = a2[1];
    *(v13 + 32) = v15;
    *v13 = v14;
    v8 = 48 * v9 + 48;
    v16 = *(a1 + 8) - *a1;
    v17 = v13 - v16;
    memcpy((v13 - v16), *a1, v16);
    v18 = *a1;
    *a1 = v17;
    *(a1 + 8) = v8;
    *(a1 + 16) = 0;
    if (v18)
    {
      operator delete(v18);
    }
  }

  else
  {
    v6 = *a2;
    v7 = a2[2];
    v4[1] = a2[1];
    v4[2] = v7;
    *v4 = v6;
    v8 = (v4 + 3);
  }

  *(a1 + 8) = v8;
}

void sub_1004022A0(uint64_t a1@<X0>, uint64_t a2@<X1>, double a3@<X2>, char a4@<W3>, _BYTE *a5@<X8>)
{
  if ((*(a2 + 20) & 1) == 0)
  {
    sub_1004CE614();
  }

  v73 = *(a2 + 18);
  if (!sub_1000222CC((a1 + 48), &v73))
  {
    *buf = &v73;
    sub_1004038F0((a1 + 48), &v73);
  }

  *buf = &v73;
  sub_1004038F0((a1 + 48), &v73);
  if ((a4 & 1) == 0)
  {
    a3 = 0.0;
  }

  if ((*(a2 + 20) & 1) == 0)
  {
    sub_1004CE640();
  }

  v72 = *(a2 + 18);
  *buf = &v72;
  v10 = sub_100403B28((a1 + 8), &v72);
  v11 = sub_100401ACC((v10 + 3));
  if (v12)
  {
    v13 = v11;
    sub_100401EF8(a2, v70);
    sub_100401F4C(a2, v70, &v68);
    v63 = v13;
    if ((*(a2 + 20) & 1) == 0)
    {
      sub_1000195BC();
    }

    v64 = *(a2 + 18);
    v66 = 0;
    v67 = 0;
    v65 = 0;
    sub_100403D6C(&v65, v68, v69, 0xAAAAAAAAAAAAAAABLL * ((v69 - v68) >> 4));
    v14 = *(a2 + 152);
    sub_10040467C(&v63, v47, *&a3);
    if (v62 == 1)
    {
      *buf = *(a2 + 8);
      v23 = *(a2 + 16);
      v24 = 0;
      v25 = v14;
      LOBYTE(v26) = 0;
      v28 = 0;
      LOBYTE(v29) = 0;
      v32 = 0;
      v33 = v50;
      v35 = 0;
      v36 = 0;
      v34 = 0;
      sub_1001FBC68(&v34, v51, v52, (v52 - v51) >> 1);
      if ((v62 & 1) == 0)
      {
        sub_1000195BC();
      }

      v37 = 0;
      v38 = 0;
      v39 = 0;
      sub_100012F38(&v37, v53, v54, (v54 - v53) >> 3);
      if ((v62 & 1) == 0)
      {
        sub_1000195BC();
      }

      v40 = 0;
      v41 = 0;
      v42 = 0;
      sub_100012F38(&v40, v55, v56, (v56 - v55) >> 3);
      if ((v62 & 1) == 0)
      {
        sub_1000195BC();
      }

      __p = 0;
      v44 = 0;
      v45 = 0;
      sub_100012F38(&__p, v57, v58, (v58 - v57) >> 3);
      if ((v62 & 1) == 0)
      {
        sub_1000195BC();
      }

      v46 = v59;
      if (v14 == 1)
      {
        v26 = v48;
        v27 = v49;
        v28 = !v28;
      }

      else
      {
        v20 = v48;
        v21 = v49;
        if ((v71 & 1) == 0)
        {
          __assert_rtn("_singleClusterLeastSquareEstimator", "PositionEngineManager.cpp", 249, "refLLA.has_value()");
        }

        sub_1004010B8(&v20, v70);
        v29 = v17;
        v30 = v18;
        v31 = v19;
        if ((v32 & 1) == 0)
        {
          v32 = 1;
        }
      }

      sub_1003CC5B8(a5, buf);
      if (__p)
      {
        v44 = __p;
        operator delete(__p);
      }

      if (v40)
      {
        v41 = v40;
        operator delete(v40);
      }

      if (v37)
      {
        v38 = v37;
        operator delete(v37);
      }

      if (v34)
      {
        v35 = v34;
        operator delete(v34);
      }
    }

    else
    {
      v16 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#loc-pe,no position solution produced for the given measurements", buf, 2u);
      }

      *a5 = 0;
      a5[200] = 0;
    }

    if (v62 == 1)
    {
      if (v60)
      {
        v61 = v60;
        operator delete(v60);
      }

      if (v57)
      {
        v58 = v57;
        operator delete(v57);
      }

      if (v55)
      {
        v56 = v55;
        operator delete(v55);
      }

      if (v53)
      {
        v54 = v53;
        operator delete(v53);
      }

      if (v51)
      {
        v52 = v51;
        operator delete(v51);
      }
    }

    if (v65)
    {
      v66 = v65;
      operator delete(v65);
    }

    if (v68)
    {
      v69 = v68;
      operator delete(v68);
    }
  }

  else
  {
    v15 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004CE66C(&v72, v15);
    }

    *a5 = 0;
    a5[200] = 0;
  }
}

void sub_100402708(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, void *__p, uint64_t a35, uint64_t a36, uint64_t a37, char a38)
{
  sub_1003CC664(&a13);
  sub_1004027C4(&a38);
  v40 = *(v38 - 152);
  if (v40)
  {
    *(v38 - 144) = v40;
    operator delete(v40);
  }

  v41 = *(v38 - 128);
  if (v41)
  {
    *(v38 - 120) = v41;
    operator delete(v41);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1004027C4(uint64_t a1)
{
  if (*(a1 + 168) == 1)
  {
    v2 = *(a1 + 144);
    if (v2)
    {
      *(a1 + 152) = v2;
      operator delete(v2);
    }

    v3 = *(a1 + 112);
    if (v3)
    {
      *(a1 + 120) = v3;
      operator delete(v3);
    }

    v4 = *(a1 + 88);
    if (v4)
    {
      *(a1 + 96) = v4;
      operator delete(v4);
    }

    v5 = *(a1 + 64);
    if (v5)
    {
      *(a1 + 72) = v5;
      operator delete(v5);
    }

    v6 = *(a1 + 40);
    if (v6)
    {
      *(a1 + 48) = v6;
      operator delete(v6);
    }
  }

  return a1;
}

void sub_100402844(uint64_t a1@<X0>, uint64_t *a2@<X1>, double a3@<X2>, char a4@<W3>, _BYTE *a5@<X8>)
{
  if ((a4 & 1) == 0)
  {
    a3 = 0.0;
  }

  v8 = *a2;
  if (0xEF7BDEF7BDEF7BDFLL * ((a2[1] - v8) >> 3) > 1)
  {
    sub_100401EF8(v8, v43);
    memset(v42, 0, sizeof(v42));
    v11 = *a2;
    v12 = a2[1];
    if (*a2 != v12)
    {
      do
      {
        if ((*(v11 + 20) & 1) == 0)
        {
          __assert_rtn("_multiClusterLeastSquareEstimator", "PositionEngineManager.cpp", 277, "anchorMsg.poll_addr.has_value()");
        }

        LOWORD(v24) = *(v11 + 18);
        v26 = &v24;
        v13 = sub_100403B28((a1 + 8), &v24);
        v14 = sub_100401ACC((v13 + 3));
        if (v15)
        {
          v16 = v14;
          sub_100401F4C(v11, v43, &v26);
          *buf = v16;
          if ((*(v11 + 20) & 1) == 0)
          {
            sub_1000195BC();
          }

          v46 = *(v11 + 18);
          v49 = 0uLL;
          __p = 0;
          sub_100403D6C(&__p, v26, v27, 0xAAAAAAAAAAAAAAABLL * ((v27 - v26) >> 4));
          sub_100402E38(v42, buf);
          if (__p)
          {
            *&v49 = __p;
            operator delete(__p);
          }

          if (v26)
          {
            *&v27 = v26;
            operator delete(v26);
          }
        }

        else
        {
          v17 = qword_1009F9820;
          if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
          {
            *buf = 67109120;
            *&buf[4] = v24;
            _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "#loc-pe,Clock drift filter not available for address %hu, skipping cluster", buf, 8u);
          }
        }

        v11 += 248;
      }

      while (v11 != v12);
      v11 = *a2;
      v12 = a2[1];
    }

    v18 = *(v11 + 152);
    v19 = *(v12 - 240);
    sub_10040612C(v42, &v26, *&a3);
    if (v41 == 1)
    {
      *buf = v19;
      v46 = *(*a2 + 16);
      v47 = 1;
      LODWORD(__p) = v18;
      LOBYTE(v49) = 0;
      v51 = 0;
      LOBYTE(v52) = 0;
      v55 = 0;
      v56 = v29;
      v58 = 0;
      v59 = 0;
      v57 = 0;
      sub_1001FBC68(&v57, v30, v31, (v31 - v30) >> 1);
      if ((v41 & 1) == 0)
      {
        sub_1000195BC();
      }

      v60 = 0;
      v61 = 0;
      v62 = 0;
      sub_100012F38(&v60, v32, v33, (v33 - v32) >> 3);
      if ((v41 & 1) == 0)
      {
        sub_1000195BC();
      }

      v63 = 0;
      v64 = 0;
      v65 = 0;
      sub_100012F38(&v63, v34, v35, (v35 - v34) >> 3);
      if ((v41 & 1) == 0)
      {
        sub_1000195BC();
      }

      v66 = 0;
      v67 = 0;
      v68 = 0;
      sub_100012F38(&v66, v36, v37, (v37 - v36) >> 3);
      if ((v41 & 1) == 0)
      {
        sub_1000195BC();
      }

      v69 = v38;
      if (v18 == 1)
      {
        v49 = v27;
        v50 = v28;
        if ((v51 & 1) == 0)
        {
          v51 = 1;
        }
      }

      else
      {
        v24 = v27;
        v25 = v28;
        if ((v44 & 1) == 0)
        {
          __assert_rtn("_multiClusterLeastSquareEstimator", "PositionEngineManager.cpp", 327, "refLLA.has_value()");
        }

        sub_1004010B8(&v24, v43);
        v52 = v21;
        v53 = v22;
        v54 = v23;
        if ((v55 & 1) == 0)
        {
          v55 = 1;
        }
      }

      sub_1003CC5B8(a5, buf);
      if (v66)
      {
        v67 = v66;
        operator delete(v66);
      }

      if (v63)
      {
        v64 = v63;
        operator delete(v63);
      }

      if (v60)
      {
        v61 = v60;
        operator delete(v60);
      }

      if (v57)
      {
        v58 = v57;
        operator delete(v57);
      }
    }

    else
    {
      v20 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#loc-pe,no position solution for the given measurements", buf, 2u);
      }

      *a5 = 0;
      a5[200] = 0;
    }

    if (v41 == 1)
    {
      if (v39)
      {
        v40 = v39;
        operator delete(v39);
      }

      if (v36)
      {
        v37 = v36;
        operator delete(v36);
      }

      if (v34)
      {
        v35 = v34;
        operator delete(v34);
      }

      if (v32)
      {
        v33 = v32;
        operator delete(v32);
      }

      if (v30)
      {
        v31 = v30;
        operator delete(v30);
      }
    }

    *buf = v42;
    sub_100019848(buf);
  }

  else
  {
    *a5 = 0;
    a5[200] = 0;
  }
}

void sub_100402D48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47)
{
  sub_1003CC664(&a47);
  sub_1004027C4(&a17);
  a47 = &a39;
  sub_100019848(&a47);
  _Unwind_Resume(a1);
}

uint64_t sub_100402E38(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = sub_100403EA4(a1, a2);
  }

  else
  {
    sub_100403E34(a1, a2);
    result = v3 + 40;
  }

  *(a1 + 8) = result;
  return result;
}

void sub_100402E78(uint64_t a1@<X0>, uint64_t *a2@<X1>, double a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  LOBYTE(v56[0]) = 0;
  v67 = 0;
  memset(v55, 0, sizeof(v55));
  v8 = *a2;
  v9 = a2[1];
  if (*a2 != v9)
  {
    while (1)
    {
      if ((*(v8 + 20) & 1) == 0)
      {
        __assert_rtn("processMeasurements", "PositionEngineManager.cpp", 347, "pe_meas.poll_addr.has_value()");
      }

      v54 = *(v8 + 18);
      if (!sub_1000222CC((a1 + 8), &v54))
      {
        *buf = &v54;
        v10 = sub_100403B28((a1 + 8), &v54);
        *(v10 + 5) = 0u;
        *(v10 + 3) = 0u;
      }

      *buf = &v54;
      v11 = sub_100403B28((a1 + 8), &v54);
      sub_100401C8C(v8, v35);
      if (v35[16])
      {
        break;
      }

      if ((v37 & 1) == 0 && (v39 & 1) == 0 && __p == v41)
      {
        v31 = 359;
        v32 = "cfos.raw_poll.has_value() || cfos.raw_final.has_value() || cfos.raw_poll_final.has_value() || !cfos.raw_responders.empty()";
LABEL_84:
        __assert_rtn("processMeasurements", "PositionEngineManager.cpp", v31, v32);
      }

      if (LOBYTE(v43))
      {
LABEL_83:
        v31 = 360;
        v32 = "!cfos.filtered.has_value()";
        goto LABEL_84;
      }

      v12 = *(v8 + 8);
      if (v37)
      {
        goto LABEL_14;
      }

LABEL_15:
      v14 = __p;
      v13 = v41;
      while (v14 != v13)
      {
        sub_100401A4C((v11 + 3), *v14++, 2500.0, v12);
      }

      if (v39)
      {
        sub_100401A4C((v11 + 3), v38, 100.0, v12);
      }

      v42 = sub_100401ACC((v11 + 3));
      LOBYTE(v43) = v15;
      sub_100403580(v55, v35);
      if (__p)
      {
        v41 = __p;
        operator delete(__p);
      }

      v8 += 248;
      if (v8 == v9)
      {
        goto LABEL_23;
      }
    }

    if (LOBYTE(v43) == 1)
    {
      goto LABEL_83;
    }

    v12 = *(v8 + 8);
    sub_100401A4C((v11 + 3), *&v35[8], 900.0, v12);
    if ((v37 & 1) == 0)
    {
      goto LABEL_15;
    }

LABEL_14:
    sub_100401A4C((v11 + 3), v36, 900.0, v12);
    goto LABEL_15;
  }

LABEL_23:
  v16 = *(a1 + 976);
  if (v16)
  {
    sub_1002E9BB0(v16, v55);
  }

  v18 = *a2;
  v17 = a2[1];
  if (*a2 == v17)
  {
    v22 = *a2;
  }

  else
  {
    do
    {
      sub_1004022A0(a1, v18, a3, a4, v35);
      if (v53 == 1)
      {
        if (v52)
        {
          goto LABEL_38;
        }

        v19 = qword_1009F9820;
        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
        {
          if ((*(v18 + 20) & 1) == 0)
          {
            sub_1000195BC();
          }

          v20 = *(v18 + 18);
          *buf = 67109120;
          *&buf[4] = v20;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "#loc-pe,single cluster solution from address %hu is obtained", buf, 8u);
        }

        v21 = *(a1 + 976);
        if (v21)
        {
          if ((v53 & 1) == 0)
          {
            goto LABEL_86;
          }

          sub_1002E9820(v21, v35);
        }

        if (v67 == 1)
        {
          if (v53 != 1)
          {
LABEL_86:
            sub_1000195BC();
          }

          if (v43 >= *(&v57 + 1))
          {
            goto LABEL_38;
          }
        }

        sub_100403660(v56, v35);
        if (v53)
        {
LABEL_38:
          if (v50)
          {
            v51 = v50;
            operator delete(v50);
          }

          if (v48)
          {
            v49 = v48;
            operator delete(v48);
          }

          if (v46)
          {
            v47 = v46;
            operator delete(v46);
          }

          if (v44)
          {
            v45 = v44;
            operator delete(v44);
          }
        }
      }

      v18 += 248;
    }

    while (v18 != v17);
    v18 = *a2;
    v22 = a2[1];
  }

  if (0xEF7BDEF7BDEF7BDFLL * ((v22 - v18) >> 3) > 1)
  {
    sub_100402844(a1, a2, a3, a4, v35);
    if (v53 == 1)
    {
      if (v52)
      {
        goto LABEL_58;
      }

      v23 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "#loc-pe,multi-cluster solution is obtained", buf, 2u);
      }

      v24 = *(a1 + 976);
      if (v24)
      {
        if ((v53 & 1) == 0)
        {
          sub_1000195BC();
        }

        sub_1002E9820(v24, v35);
      }

      sub_100403660(v56, v35);
      if (v53)
      {
LABEL_58:
        if (v50)
        {
          v51 = v50;
          operator delete(v50);
        }

        if (v48)
        {
          v49 = v48;
          operator delete(v48);
        }

        if (v46)
        {
          v47 = v46;
          operator delete(v46);
        }

        if (v44)
        {
          v45 = v44;
          operator delete(v44);
        }
      }
    }
  }

  if (*a1 == 1)
  {
    sub_1003CBF4C(a1 + 96, a2, v56, a5);
  }

  else
  {
    v25 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      *v35 = 0;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "#loc-pe,ni dl-tdoa sensor fusion is disabled, return ils solution", v35, 2u);
    }

    *a5 = 0;
    *(a5 + 200) = 0;
    if (v67 == 1)
    {
      v26 = v61;
      *(a5 + 112) = v59;
      *(a5 + 136) = v26;
      v27 = v65;
      *(a5 + 160) = v63;
      v28 = v56[3];
      *(a5 + 32) = v56[2];
      *(a5 + 48) = v28;
      v29 = v57;
      *(a5 + 64) = v56[4];
      *(a5 + 80) = v29;
      v30 = v56[1];
      *a5 = v56[0];
      *(a5 + 16) = v30;
      *(a5 + 96) = v58;
      v58 = 0uLL;
      *(a5 + 120) = v60;
      v61 = 0;
      v59 = 0;
      v60 = 0uLL;
      *(a5 + 144) = v62;
      v62 = 0uLL;
      *(a5 + 168) = v64;
      *(a5 + 184) = v27;
      v63 = 0;
      v64 = 0uLL;
      v65 = 0;
      *(a5 + 192) = v66;
      *(a5 + 200) = 1;
    }
  }

  *v35 = v55;
  sub_10040415C(v35);
  if (v67 == 1)
  {
    if (v64)
    {
      *(&v64 + 1) = v64;
      operator delete(v64);
    }

    if (v62)
    {
      *(&v62 + 1) = v62;
      operator delete(v62);
    }

    if (v60)
    {
      *(&v60 + 1) = v60;
      operator delete(v60);
    }

    if (v58)
    {
      *(&v58 + 1) = v58;
      operator delete(v58);
    }
  }
}

void sub_1004034EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  sub_10038C500(&a15);
  a15 = &a43;
  sub_10040415C(&a15);
  if (a71 == 1)
  {
    sub_1004CE6E8(&a46);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_100403580(uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = sub_100404280(a1, a2);
  }

  else
  {
    sub_100404200(a1, a2);
    result = v3 + 96;
  }

  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1004035CC(uint64_t a1)
{
  *(a1 + 256) = off_1009991A0;
  *(a1 + 184) = off_1009991A0;
  sub_10002074C(a1 + 144, *(a1 + 152));
  sub_10002074C(a1 + 120, *(a1 + 128));
  sub_1001B3D00((a1 + 48));

  return sub_10038F4A4(a1);
}

void sub_100403660(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 200) == *(a2 + 200))
  {
    if (*(a1 + 200))
    {
      v4 = *(a2 + 16);
      *a1 = *a2;
      *(a1 + 16) = v4;
      v5 = *(a2 + 32);
      v6 = *(a2 + 48);
      v7 = *(a2 + 80);
      *(a1 + 64) = *(a2 + 64);
      *(a1 + 80) = v7;
      *(a1 + 32) = v5;
      *(a1 + 48) = v6;
      if (a1 != a2)
      {
        sub_1001FBB44((a1 + 96), *(a2 + 96), *(a2 + 104), (*(a2 + 104) - *(a2 + 96)) >> 1);
        sub_10017AF94((a1 + 120), *(a2 + 120), *(a2 + 128), (*(a2 + 128) - *(a2 + 120)) >> 3);
        sub_10017AF94((a1 + 144), *(a2 + 144), *(a2 + 152), (*(a2 + 152) - *(a2 + 144)) >> 3);
        sub_10017AF94((a1 + 168), *(a2 + 168), *(a2 + 176), (*(a2 + 176) - *(a2 + 168)) >> 3);
      }

      *(a1 + 192) = *(a2 + 192);
    }
  }

  else if (*(a1 + 200))
  {
    v8 = *(a1 + 168);
    if (v8)
    {
      *(a1 + 176) = v8;
      operator delete(v8);
    }

    v9 = *(a1 + 144);
    if (v9)
    {
      *(a1 + 152) = v9;
      operator delete(v9);
    }

    v10 = *(a1 + 120);
    if (v10)
    {
      *(a1 + 128) = v10;
      operator delete(v10);
    }

    v11 = *(a1 + 96);
    if (v11)
    {
      *(a1 + 104) = v11;
      operator delete(v11);
    }

    *(a1 + 200) = 0;
  }

  else
  {
    sub_100403774(a1, a2);
    *(a1 + 200) = 1;
  }
}

uint64_t sub_100403774(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  v5 = *(a2 + 32);
  v6 = *(a2 + 48);
  v7 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v7;
  *(a1 + 32) = v5;
  *(a1 + 48) = v6;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  sub_1001FBC68(a1 + 96, *(a2 + 96), *(a2 + 104), (*(a2 + 104) - *(a2 + 96)) >> 1);
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  sub_100012F38(a1 + 120, *(a2 + 120), *(a2 + 128), (*(a2 + 128) - *(a2 + 120)) >> 3);
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  sub_100012F38(a1 + 144, *(a2 + 144), *(a2 + 152), (*(a2 + 152) - *(a2 + 144)) >> 3);
  *(a1 + 168) = 0;
  *(a1 + 176) = 0;
  *(a1 + 184) = 0;
  sub_100012F38(a1 + 168, *(a2 + 168), *(a2 + 176), (*(a2 + 176) - *(a2 + 168)) >> 3);
  *(a1 + 192) = *(a2 + 192);
  return a1;
}

void sub_10040384C(_Unwind_Exception *exception_object)
{
  v6 = *v4;
  if (*v4)
  {
    v1[19] = v6;
    operator delete(v6);
  }

  v7 = *v3;
  if (*v3)
  {
    v1[16] = v7;
    operator delete(v7);
  }

  v8 = *v2;
  if (*v2)
  {
    v1[13] = v8;
    operator delete(v8);
  }

  _Unwind_Resume(exception_object);
}

void sub_100403898(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x555555555555556)
  {
    operator new();
  }

  sub_100013B04();
}

uint64_t **sub_1004038F0(void *a1, unsigned __int16 *a2)
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

  if (*(v7 + 8) != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

uint64_t **sub_100403B28(void *a1, unsigned __int16 *a2)
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

  if (*(v7 + 8) != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

uint64_t sub_100403D6C(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_100403DE8(result, a4);
  }

  return result;
}

void sub_100403DCC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_100403DE8(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x555555555555556)
  {
    sub_100403898(a1, a2);
  }

  sub_100019B38();
}

uint64_t sub_100403E34(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  v4 = *a2;
  *(v3 + 8) = *(a2 + 4);
  *v3 = v4;
  *(v3 + 24) = 0;
  *(v3 + 32) = 0;
  *(v3 + 16) = 0;
  result = sub_100403D6C(v3 + 16, a2[2], a2[3], 0xAAAAAAAAAAAAAAABLL * ((a2[3] - a2[2]) >> 4));
  *(a1 + 8) = v3 + 40;
  return result;
}

uint64_t sub_100403EA4(uint64_t a1, uint64_t *a2)
{
  v2 = 0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x666666666666666)
  {
    sub_100019B38();
  }

  if (0x999999999999999ALL * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x999999999999999ALL * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 16) - *a1) >> 3) >= 0x333333333333333)
  {
    v6 = 0x666666666666666;
  }

  else
  {
    v6 = v3;
  }

  v18 = a1;
  if (v6)
  {
    sub_100404000(a1, v6);
  }

  v7 = 40 * v2;
  v15 = 0;
  v16 = v7;
  v17 = 40 * v2;
  v8 = *a2;
  *(v7 + 8) = *(a2 + 4);
  *v7 = v8;
  *(v7 + 24) = 0;
  *(v7 + 32) = 0;
  *(v7 + 16) = 0;
  sub_100403D6C(40 * v2 + 16, a2[2], a2[3], 0xAAAAAAAAAAAAAAABLL * ((a2[3] - a2[2]) >> 4));
  *&v17 = v17 + 40;
  v9 = *(a1 + 8);
  v10 = v16 + *a1 - v9;
  sub_100404058(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  v12 = *(a1 + 16);
  v14 = v17;
  *(a1 + 8) = v17;
  *&v17 = v11;
  *(&v17 + 1) = v12;
  v15 = v11;
  v16 = v11;
  sub_10032C8B0(&v15);
  return v14;
}

void sub_100403FEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_10032C8B0(va);
  _Unwind_Resume(a1);
}

void sub_100404000(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x666666666666667)
  {
    operator new();
  }

  sub_100013B04();
}

uint64_t sub_100404058(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  v13 = a4;
  v12 = a4;
  v10[0] = a1;
  v10[1] = &v12;
  v10[2] = &v13;
  if (a2 == a3)
  {
    v11 = 1;
  }

  else
  {
    v5 = a2;
    v6 = a2;
    do
    {
      v7 = *v6;
      *(a4 + 8) = *(v6 + 4);
      *a4 = v7;
      *(a4 + 24) = 0;
      *(a4 + 32) = 0;
      *(a4 + 16) = 0;
      *(a4 + 16) = *(v6 + 1);
      *(a4 + 32) = v6[4];
      v6[2] = 0;
      v6[3] = 0;
      v6[4] = 0;
      v6 += 5;
      a4 += 40;
    }

    while (v6 != a3);
    v13 = a4;
    v11 = 1;
    while (v5 != a3)
    {
      v8 = v5[2];
      if (v8)
      {
        v5[3] = v8;
        operator delete(v8);
      }

      v5 += 5;
    }
  }

  return sub_100404124(v10);
}

uint64_t sub_100404124(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_10032C868(a1);
  }

  return a1;
}

void sub_10040415C(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_1004041B0(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_1004041B0(uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 96)
  {
    v4 = *(i - 40);
    if (v4)
    {
      *(i - 32) = v4;
      operator delete(v4);
    }
  }

  a1[1] = v2;
}

__n128 sub_100404200(uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 8);
  v5 = *a2;
  v6 = a2[1];
  v7 = a2[2];
  *(v4 + 48) = *(a2 + 48);
  *(v4 + 16) = v6;
  *(v4 + 32) = v7;
  *v4 = v5;
  *(v4 + 64) = 0;
  *(v4 + 72) = 0;
  *(v4 + 56) = 0;
  sub_100012F38(v4 + 56, *(a2 + 7), *(a2 + 8), (*(a2 + 8) - *(a2 + 7)) >> 3);
  result = a2[5];
  *(v4 + 80) = result;
  *(a1 + 8) = v4 + 96;
  return result;
}

uint64_t sub_100404280(uint64_t a1, __int128 *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 5);
  v3 = v2 + 1;
  if (v2 + 1 > 0x2AAAAAAAAAAAAAALL)
  {
    sub_100019B38();
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

  v20 = a1;
  if (v6)
  {
    sub_1004043E0(a1, v6);
  }

  v7 = 96 * v2;
  v17 = 0;
  v18 = v7;
  v19 = v7;
  v8 = *a2;
  v9 = a2[1];
  v10 = a2[2];
  *(v7 + 48) = *(a2 + 48);
  *(v7 + 16) = v9;
  *(v7 + 32) = v10;
  *v7 = v8;
  *(v7 + 64) = 0;
  *(v7 + 72) = 0;
  *(v7 + 56) = 0;
  sub_100012F38(v7 + 56, *(a2 + 7), *(a2 + 8), (*(a2 + 8) - *(a2 + 7)) >> 3);
  *(v7 + 80) = a2[5];
  *&v19 = v19 + 96;
  v11 = *(a1 + 8);
  v12 = v18 + *a1 - v11;
  sub_100404438(a1, *a1, v11, v12);
  v13 = *a1;
  *a1 = v12;
  v14 = *(a1 + 16);
  v16 = v19;
  *(a1 + 8) = v19;
  *&v19 = v13;
  *(&v19 + 1) = v14;
  v17 = v13;
  v18 = v13;
  sub_100404594(&v17);
  return v16;
}

void sub_1004043CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_100404594(va);
  _Unwind_Resume(a1);
}

void sub_1004043E0(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x2AAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_100013B04();
}

uint64_t sub_100404438(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v15 = a4;
  v14 = a4;
  v12[0] = a1;
  v12[1] = &v14;
  v12[2] = &v15;
  if (a2 == a3)
  {
    v13 = 1;
  }

  else
  {
    v5 = a2;
    v6 = a2;
    do
    {
      v7 = *v6;
      v8 = v6[1];
      v9 = v6[2];
      *(a4 + 48) = *(v6 + 48);
      *(a4 + 16) = v8;
      *(a4 + 32) = v9;
      *a4 = v7;
      *(a4 + 64) = 0;
      *(a4 + 72) = 0;
      *(a4 + 56) = 0;
      *(a4 + 56) = *(v6 + 56);
      *(a4 + 72) = *(v6 + 9);
      *(v6 + 7) = 0;
      *(v6 + 8) = 0;
      *(v6 + 9) = 0;
      *(a4 + 80) = v6[5];
      v6 += 6;
      a4 += 96;
    }

    while (v6 != a3);
    v15 = a4;
    v13 = 1;
    while (v5 != a3)
    {
      v10 = *(v5 + 7);
      if (v10)
      {
        *(v5 + 8) = v10;
        operator delete(v10);
      }

      v5 += 6;
    }
  }

  return sub_100404514(v12);
}

uint64_t sub_100404514(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_10040454C(a1);
  }

  return a1;
}

void sub_10040454C(uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    v3 = *(v1 - 40);
    if (v3)
    {
      *(v1 - 32) = v3;
      operator delete(v3);
    }

    v1 -= 96;
  }
}

uint64_t sub_100404594(uint64_t a1)
{
  sub_1004045CC(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_1004045CC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  while (v2 != a2)
  {
    *(a1 + 16) = v2 - 96;
    v5 = *(v2 - 40);
    if (v5)
    {
      *(v2 - 32) = v5;
      operator delete(v5);
      v2 = *(a1 + 16);
    }

    else
    {
      v2 -= 96;
    }
  }
}

void sub_10040467C(uint64_t *a1@<X1>, _BYTE *a2@<X8>, uint64_t a3@<D0>)
{
  v7 = a1 + 2;
  v5 = a1[2];
  v6 = v7[1];
  v8 = 0xAAAAAAAAAAAAAAABLL * ((v6 - v5) >> 4);
  if (v8 <= 3)
  {
    v9 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004CE78C(a1, v9);
    }

    *a2 = 0;
    a2[168] = 0;
    return;
  }

  v11 = *a1;
  v127 = 0;
  v128 = 0;
  v129 = 0;
  sub_100403D6C(&v127, v5, v6, v8);
  v12 = v127;
  v13 = v128;
  if (0xAAAAAAAAAAAAAAABLL * ((v128 - v127) >> 4) >= 0x10)
  {
    sub_1004079A8(&v127, v127, v127 + 720, 0xFuLL);
    v12 = v127;
    v13 = v128;
  }

  if (v12 != v13)
  {
    v14 = 2.22507386e-308;
    v15 = 2.22507386e-308;
    v16 = v12;
    while (1)
    {
      v17 = v15;
      v18 = v14;
      v14 = v16[1];
      v15 = v16[2];
      if (v14 <= v18 || v15 <= v17)
      {
        break;
      }

      v16 += 6;
      if (v16 == v13)
      {
        goto LABEL_14;
      }
    }

    v65 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004CE748(v65);
    }

    *a2 = 0;
    a2[168] = 0;
    goto LABEL_146;
  }

LABEL_14:
  v21 = *(v12 + 1);
  v20 = *(v12 + 2);
  v124 = 0;
  v125 = 0;
  v126 = 0;
  sub_100404EF0(&v127, a3, 1, &v122);
  v23 = v122;
  v24 = v123;
  if (v122 != v123)
  {
    while (1)
    {
      v120 = *v23;
      v121 = v23[2];
      LOBYTE(v108[0]) = 0;
      v119 = 0;
      v96[0] = 0;
      v107 = 0;
      v84[0] = 0;
      v95 = 0;
      sub_100405114(v22, &v120, &v127);
      sub_1004076D0(v108, v72);
      if (v83 == 1)
      {
        if (__p)
        {
          v82 = __p;
          operator delete(__p);
        }

        if (v79)
        {
          v80 = v79;
          operator delete(v79);
        }

        if (v77)
        {
          v78 = v77;
          operator delete(v77);
        }

        if (v75)
        {
          v76 = v75;
          operator delete(v75);
        }

        v22 = v73;
        if (v73)
        {
          v74 = v73;
          operator delete(v73);
        }
      }

      if (v119 == 1)
      {
        v25 = 0xAAAAAAAAAAAAAAABLL * ((v128 - v127) >> 4);
        if (v25 >= 5)
        {
          v26 = v117;
          if (v117 == v118)
          {
            v28 = v117;
          }

          else
          {
            v27 = (v117 + 8);
            v28 = v117;
            if (v117 + 8 != v118)
            {
              v29 = *v117;
              v28 = v117;
              v30 = (v117 + 8);
              do
              {
                v31 = *v30++;
                v32 = v31;
                if (v29 < v31)
                {
                  v29 = v32;
                  v28 = v27;
                }

                v27 = v30;
              }

              while (v30 != v118);
            }
          }

          v69 = 0;
          v70 = 0;
          v71 = 0;
          v33 = sub_100403D6C(&v69, v127, v128, v25);
          v34 = (v28 - v26) >> 3;
          v35 = v69 + 48 * v34;
          v36 = v70 - (v35 + 48);
          if (v70 != v35 + 48)
          {
            v33 = memmove(v69 + 48 * v34, v35 + 48, v70 - (v35 + 48));
          }

          v70 = &v35[v36];
          sub_100405114(v33, &v120, &v69);
          sub_1004076D0(v96, v72);
          if (v83 == 1)
          {
            if (__p)
            {
              v82 = __p;
              operator delete(__p);
            }

            if (v79)
            {
              v80 = v79;
              operator delete(v79);
            }

            if (v77)
            {
              v78 = v77;
              operator delete(v77);
            }

            if (v75)
            {
              v76 = v75;
              operator delete(v75);
            }

            v22 = v73;
            if (v73)
            {
              v74 = v73;
              operator delete(v73);
            }
          }

          v37 = v69;
          if (v107 == 1)
          {
            v38 = 0xAAAAAAAAAAAAAAABLL * ((v70 - v69) >> 4);
            if (v38 >= 5)
            {
              v39 = v105;
              if (v105 == v106)
              {
                v41 = v105;
              }

              else
              {
                v40 = (v105 + 8);
                v41 = v105;
                if (v105 + 8 != v106)
                {
                  v42 = *v105;
                  v41 = v105;
                  v43 = (v105 + 8);
                  do
                  {
                    v44 = *v43++;
                    v45 = v44;
                    if (v42 < v44)
                    {
                      v42 = v45;
                      v41 = v40;
                    }

                    v40 = v43;
                  }

                  while (v43 != v106);
                }
              }

              v66 = 0;
              v67 = 0;
              v68 = 0;
              v46 = sub_100403D6C(&v66, v69, v70, v38);
              v47 = (v41 - v39) >> 3;
              v48 = v66 + 48 * v47;
              v49 = v67 - (v48 + 48);
              if (v67 != v48 + 48)
              {
                v46 = memmove(v66 + 48 * v47, v48 + 48, v67 - (v48 + 48));
              }

              v67 = &v48[v49];
              sub_100405114(v46, &v120, &v66);
              sub_1004076D0(v84, v72);
              if (v83 == 1)
              {
                if (__p)
                {
                  v82 = __p;
                  operator delete(__p);
                }

                if (v79)
                {
                  v80 = v79;
                  operator delete(v79);
                }

                if (v77)
                {
                  v78 = v77;
                  operator delete(v77);
                }

                if (v75)
                {
                  v76 = v75;
                  operator delete(v75);
                }

                if (v73)
                {
                  v74 = v73;
                  operator delete(v73);
                }
              }

              if (v95 == 1)
              {
                v50 = v93;
                if (v93 != v94)
                {
                  v51 = (v93 + 8);
                  if (v93 + 8 != v94)
                  {
                    v52 = *v93;
                    v53 = (v93 + 8);
                    do
                    {
                      v54 = *v53++;
                      v55 = v54;
                      if (v52 < v54)
                      {
                        v52 = v55;
                        v50 = v51;
                      }

                      v51 = v53;
                    }

                    while (v53 != v94);
                  }
                }

                if ((v107 & 1) == 0)
                {
                  sub_1000195BC();
                }

                v56 = v105;
                v57 = (v105 + 8);
                if (v105 != v106 && v57 != v106)
                {
                  v59 = *v105;
                  v60 = (v105 + 8);
                  do
                  {
                    v61 = *v60++;
                    v62 = v61;
                    if (v59 < v61)
                    {
                      v59 = v62;
                      v56 = v57;
                    }

                    v57 = v60;
                  }

                  while (v60 != v106);
                }

                if (v56 < v50)
                {
                  sub_100406054(v84);
                }
              }

              v22 = v66;
              if (v66)
              {
                v67 = v66;
                operator delete(v66);
              }

              v37 = v69;
            }
          }

          if (v37)
          {
            v70 = v37;
            operator delete(v37);
          }
        }
      }

      if (v95)
      {
        break;
      }

      if (v107)
      {
        v63 = v96;
        goto LABEL_101;
      }

      if (v119 == 1)
      {
        v63 = v108;
        goto LABEL_101;
      }

LABEL_102:
      if (v95 == 1)
      {
        if (v93)
        {
          v94 = v93;
          operator delete(v93);
        }

        if (v91)
        {
          v92 = v91;
          operator delete(v91);
        }

        if (v89)
        {
          v90 = v89;
          operator delete(v89);
        }

        if (v87)
        {
          v88 = v87;
          operator delete(v87);
        }

        v22 = v85;
        if (v85)
        {
          v86 = v85;
          operator delete(v85);
        }
      }

      if (v107 == 1)
      {
        if (v105)
        {
          v106 = v105;
          operator delete(v105);
        }

        if (v103)
        {
          v104 = v103;
          operator delete(v103);
        }

        if (v101)
        {
          v102 = v101;
          operator delete(v101);
        }

        if (v99)
        {
          v100 = v99;
          operator delete(v99);
        }

        v22 = v97;
        if (v97)
        {
          v98 = v97;
          operator delete(v97);
        }
      }

      if (v119 == 1)
      {
        if (v117)
        {
          v118 = v117;
          operator delete(v117);
        }

        if (v115)
        {
          v116 = v115;
          operator delete(v115);
        }

        if (v113)
        {
          v114 = v113;
          operator delete(v113);
        }

        if (v111)
        {
          v112 = v111;
          operator delete(v111);
        }

        v22 = v109;
        if (v109)
        {
          v110 = v109;
          operator delete(v109);
        }
      }

      v23 += 3;
      if (v23 == v24)
      {
        goto LABEL_136;
      }
    }

    v63 = v84;
LABEL_101:
    v22 = sub_1004060D8(&v124, v63);
    goto LABEL_102;
  }

LABEL_136:
  if (v124 == v125 || (sub_10040804C(v124, v125, 126 - 2 * __clz(0xCF3CF3CF3CF3CF3DLL * ((v125 - v124) >> 3)), 1), (*(v124 + 136) & 1) != 0))
  {
    v64 = 0;
    *a2 = 0;
  }

  else
  {
    sub_100407854(a2, v124);
    v64 = 1;
  }

  a2[168] = v64;
  if (v122)
  {
    v123 = v122;
    operator delete(v122);
  }

  v108[0] = &v124;
  sub_100407B04(v108);
LABEL_146:
  if (v127)
  {
    v128 = v127;
    operator delete(v127);
  }
}

void sub_100404E38(_Unwind_Exception *a1)
{
  v3 = *(v1 - 184);
  if (v3)
  {
    *(v1 - 176) = v3;
    operator delete(v3);
  }

  STACK[0x240] = v1 - 160;
  sub_100407B04(&STACK[0x240]);
  v4 = *(v1 - 136);
  if (v4)
  {
    *(v1 - 128) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(a1);
}

void sub_100404EF0(uint64_t *a1@<X1>, uint64_t a2@<X2>, char a3@<W3>, void *a4@<X8>)
{
  if ((a3 & 1) == 0)
  {
    *a4 = 0;
    a4[1] = 0;
    a4[2] = 0;
    return;
  }

  __p = 0;
  v39 = 0;
  v40 = 0;
  v6 = *a1;
  v7 = a1[1];
  if (*a1 == v7)
  {
    v9 = 0;
  }

  else
  {
    do
    {
      v8 = *(v6 + 40);
      v36 = *(v6 + 24);
      v37 = v8;
      sub_1004075C8(&__p, &v36);
      v6 += 48;
    }

    while (v6 != v7);
    v9 = __p;
    v10 = (__p + 24);
    if (__p != v39 && v10 != v39)
    {
      v12 = *__p;
      v13 = *__p;
      v14 = (__p + 24);
      v15 = __p;
      v16 = (__p + 24);
      do
      {
        v17 = *v16;
        v16 += 3;
        v18 = v17;
        if (v17 < v13)
        {
          v13 = v18;
          v15 = v14;
        }

        v14 = v16;
      }

      while (v16 != v39);
      v19 = *v15;
      v20 = (__p + 24);
      v21 = __p;
      v22 = (__p + 24);
      do
      {
        v23 = *v22;
        v22 += 3;
        v24 = v23;
        if (v12 < v23)
        {
          v12 = v24;
          v21 = v20;
        }

        v20 = v22;
      }

      while (v22 != v39);
      v25 = *v21;
      v26 = (__p + 24);
      v27 = __p;
      do
      {
        if (v26[1] < v27[1])
        {
          v27 = v26;
        }

        v26 += 3;
      }

      while (v26 != v39);
      v28 = v27[1];
      v29 = __p;
      do
      {
        if (v29[1] < v10[1])
        {
          v29 = v10;
        }

        v10 += 3;
      }

      while (v10 != v39);
      goto LABEL_28;
    }
  }

  v19 = *v9;
  v28 = v9[1];
  v25 = *v9;
  v29 = v9;
LABEL_28:
  v30 = v29[1];
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  v31 = v19 + -2.0;
  v32 = v25 + 2.0 + 0.00000001;
  if (v19 + -2.0 < v32)
  {
    v33 = v28 + -2.0;
    v34 = v30 + 2.0 + 0.00000001;
    do
    {
      for (i = v33; i < v34; i = i + 7.5)
      {
        *&v36 = v31;
        *(&v36 + 1) = i;
        v37 = a2;
        sub_1004075C8(a4, &v36);
      }

      v31 = v31 + 7.5;
    }

    while (v31 < v32);
    v9 = __p;
  }

  if (v9)
  {
    v39 = v9;
    operator delete(v9);
  }
}

void sub_1004050E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100405114(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __chkstk_darwin(a1, a2, a3);
  v4 = v3;
  v57 = v5;
  v58 = v6;
  v8 = v7;
  v10 = v9;
  v53 = v11;
  v55 = *v3;
  v56 = v3[1];
  v96 = 0x100000003;
  v95 = xmmword_10056EDA0;
  v94 = off_1009A8F78;
  v97 = &v98;
  sub_1003A8C00(&v94, 3, 1);
  sub_1003A8C50(&v94, 0.0);
  v12 = *v10;
  *sub_1003AFDBC(&v94, 0) = v12;
  v13 = *(v10 + 1);
  *sub_1003AFDBC(&v94, 1u) = v13;
  *sub_1003AFDBC(&v94, 2u) = v8;
  v91 = 0x10000000FLL;
  v90 = xmmword_100571B90;
  v89 = off_1009AAB20;
  v92 = &v93;
  sub_1003A8C00(&v89, 15, 1);
  sub_1003A8C50(&v89, 0.0);
  v54 = 0xAAAAAAAAAAAAAAABLL * ((v56 - v55) >> 4);
  if (v56 != v55)
  {
    v14 = 0;
    v15 = 0;
    if (v54 <= 1)
    {
      v16 = 1;
    }

    else
    {
      v16 = 0xAAAAAAAAAAAAAAABLL * ((v56 - v55) >> 4);
    }

    do
    {
      v17 = &(*v4)[v14];
      v19 = v17[1];
      v18 = v17[2];
      *sub_1003AFDBC(&v89, v15++) = (v18 - v19) * 299792458.0;
      v14 += 24;
    }

    while (v16 != v15);
  }

  v86 = 0x100000003;
  v85 = xmmword_10056EDA0;
  v84 = off_1009A8F78;
  v87 = &v88;
  sub_1003A8C00(&v84, 3, 1);
  sub_1003A8C50(&v84, 1.0);
  if (v54 <= 1)
  {
    v20 = 1;
  }

  else
  {
    v20 = 0xAAAAAAAAAAAAAAABLL * ((v56 - v55) >> 4);
  }

  v76 = 0x100000003;
  __p = off_1009A8F78;
  v75 = xmmword_10056EDA0;
  v77 = v78;
  *&v99[24] = 0x100000134;
  *v99 = off_1009A9168;
  *&v99[8] = xmmword_10056EEA0;
  v100 = &v101;
  v119 = 0x100000003;
  v117 = off_1009A8F78;
  v118 = xmmword_10056EDA0;
  v120 = v121;
  sub_1003AFEC0(&v84, &__p, v99, &v117, "2");
  if (v21 > 0.01)
  {
    v114 = 0x10000000FLL;
    v113 = xmmword_100571B90;
    v112 = off_1009AAB20;
    v115 = &v116;
    sub_1003A8C00(&v112, 15, 1);
    sub_1003A8C50(&v112, 0.0);
    *&v99[24] = 0x30000000FLL;
    *&v99[8] = xmmword_100571BA0;
    *v99 = off_1009AAC40;
    v100 = &v101;
    sub_1003A8C00(v99, 15, 3);
    sub_1003A8C50(v99, 0.0);
    if (v56 != v55)
    {
      v22 = 0;
      v23 = 0;
      do
      {
        v24 = &(*v4)[v22];
        v26 = v24[2];
        v25 = v24[3];
        v28 = v24[4];
        v27 = v24[5];
        v29 = *sub_1003AFDBC(&v94, 0);
        v30 = *sub_1003AFDBC(&v94, 1u);
        v31 = v10[2];
        v32 = *sub_1003AFDBC(&v94, 2u);
        v33 = sqrt((v25 - v29) * (v25 - v29) + (v28 - v30) * (v28 - v30) + (v27 - v31) * (v27 - v31));
        *sub_1003AFDBC(&v112, v23) = v33 + v32 + v57 * (v26 - v58);
        v34 = *sub_1003AFDBC(&v94, 0);
        *sub_1003A8DB0(v99, v23, 0) = -(v25 - v34) / v33;
        v35 = *sub_1003AFDBC(&v94, 1u);
        *sub_1003A8DB0(v99, v23, 1) = -(v28 - v35) / v33;
        *sub_1003A8DB0(v99, v23++, 2) = 0x3FF0000000000000;
        v22 += 24;
      }

      while (v20 != v23);
    }

    sub_10040D854(&__p, *&v99[12], *&v99[8]);
    sub_1003A9464(v99, &__p);
    v81 = 0x300000003;
    v80 = xmmword_10056EDB0;
    v79 = off_1009A8FC0;
    v82 = &v83;
    sub_1003A90A8(&__p, v99, &v79);
    sub_10040D854(&__p, *&v99[12], *&v99[8]);
    sub_1003A9464(v99, &__p);
    v119 = 0x10000000FLL;
    v118 = xmmword_100571B90;
    v117 = off_1009AAB20;
    v120 = v121;
    sub_1003A920C(&v89, &v112, &v117);
    v71 = 0x100000003;
    v70 = xmmword_10056EDA0;
    v69 = off_1009A8F78;
    v72 = &v73;
    sub_1003A90A8(&__p, &v117, &v69);
    v66 = 0x300000003;
    v65 = xmmword_10056EDB0;
    v64 = off_1009A8FC0;
    v67 = &v68;
    v119 = 0x100000003;
    v118 = xmmword_10056EDA0;
    v117 = off_1009A9098;
    v120 = v121;
    v61 = 0x100000003;
    v59 = off_1009A9098;
    v60 = xmmword_10056EDA0;
    v62 = &v63;
    v76 = 0x10000000CLL;
    v75 = xmmword_10056EDD0;
    __p = off_1009A9120;
    v77 = v78;
    sub_1003A9668(&v79, &v117, &v59, &__p, &v64);
  }

  *v99 = 0;
  sub_100172550(&__p, v54);
  if (v56 != v55)
  {
    v36 = 0;
    v37 = 0;
    do
    {
      v38 = &(*v4)[v36];
      v40 = v38[2];
      v39 = v38[3];
      v42 = v38[4];
      v41 = v38[5];
      v43 = *sub_1003AFDBC(&v94, 0);
      v44 = *sub_1003AFDBC(&v94, 1u);
      v45 = v10[2];
      v46 = *sub_1003AFDBC(&v89, v37);
      v47 = sub_1003AFDBC(&v94, 2u);
      *(__p + v37++) = v46 - (sqrt((v39 - v43) * (v39 - v43) + (v42 - v44) * (v42 - v44) + (v41 - v45) * (v41 - v45)) + *v47 + v57 * (v40 - v58));
      v36 += 24;
    }

    while (v20 != v37);
  }

  *v99 = *(*v4 + 2);
  *&v99[8] = *sub_1003AFDBC(&v94, 0);
  v48 = sub_1003AFDBC(&v94, 1u);
  v49 = *(v10 + 2);
  *&v99[16] = *v48;
  *&v99[24] = v49;
  v100 = 0x7FEFFFFFFFFFFFFFLL;
  LOWORD(v59) = **v4;
  v102 = 0;
  v101 = 0uLL;
  sub_1001FE45C(&v101, &v59, &v59 + 2, 1);
  v117 = *sub_1003AFDBC(&v94, 2u);
  v104 = 0;
  v103 = 0uLL;
  sub_100019AC4(&v103, &v117, &v118, 1uLL);
  v112 = *&v58;
  v106 = 0;
  v105 = 0uLL;
  sub_100019AC4(&v105, &v112, &v113, 1uLL);
  v107 = 0uLL;
  v108 = 0;
  v109 = 0;
  v111 = 0;
  v110 = 0uLL;
  sub_100012F38(&v110, __p, v75, (v75 - __p) >> 3);
  v50 = v102;
  *(v53 + 32) = v100;
  *(v53 + 56) = v50;
  v51 = v106;
  *(v53 + 80) = v104;
  v52 = *&v99[16];
  *v53 = *v99;
  *(v53 + 16) = v52;
  *(v53 + 40) = v101;
  v101 = 0uLL;
  *(v53 + 64) = v103;
  v102 = 0;
  v103 = 0uLL;
  v104 = 0;
  *(v53 + 88) = v105;
  *(v53 + 104) = v51;
  v105 = 0uLL;
  *(v53 + 112) = v107;
  *(v53 + 128) = v108;
  v106 = 0;
  v107 = 0uLL;
  v108 = 0;
  *(v53 + 136) = v109;
  *(v53 + 144) = v110;
  *(v53 + 160) = v111;
  *(v53 + 168) = 1;
  if (__p)
  {
    *&v75 = __p;
    operator delete(__p);
  }
}

void sub_100405F70(_Unwind_Exception *a1)
{
  v2 = STACK[0x620];
  if (STACK[0x620])
  {
    STACK[0x628] = v2;
    operator delete(v2);
  }

  v3 = STACK[0x608];
  if (STACK[0x608])
  {
    STACK[0x610] = v3;
    operator delete(v3);
  }

  v4 = STACK[0x5F0];
  if (STACK[0x5F0])
  {
    STACK[0x5F8] = v4;
    operator delete(v4);
  }

  v5 = STACK[0x5D8];
  if (STACK[0x5D8])
  {
    STACK[0x5E0] = v5;
    operator delete(v5);
  }

  v6 = STACK[0x290];
  if (STACK[0x290])
  {
    STACK[0x298] = v6;
    operator delete(v6);
  }

  _Unwind_Resume(a1);
}

void sub_100406054(uint64_t a1)
{
  if (*(a1 + 168) == 1)
  {
    v2 = *(a1 + 144);
    if (v2)
    {
      *(a1 + 152) = v2;
      operator delete(v2);
    }

    v3 = *(a1 + 112);
    if (v3)
    {
      *(a1 + 120) = v3;
      operator delete(v3);
    }

    v4 = *(a1 + 88);
    if (v4)
    {
      *(a1 + 96) = v4;
      operator delete(v4);
    }

    v5 = *(a1 + 64);
    if (v5)
    {
      *(a1 + 72) = v5;
      operator delete(v5);
    }

    v6 = *(a1 + 40);
    if (v6)
    {
      *(a1 + 48) = v6;
      operator delete(v6);
    }

    *(a1 + 168) = 0;
  }
}

uint64_t sub_1004060D8(uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = sub_100407C34(a1, a2);
  }

  else
  {
    sub_100407854(*(a1 + 8), a2);
    result = v3 + 168;
    *(a1 + 8) = v3 + 168;
  }

  *(a1 + 8) = result;
  return result;
}

void sub_10040612C(uint64_t *a1@<X1>, _BYTE *a2@<X8>, uint64_t a3@<D0>)
{
  v4 = *a1;
  v5 = a1[1];
  v7 = 0xCCCCCCCCCCCCCCCDLL * ((v5 - v4) >> 3);
  if (v7 <= 1)
  {
    *a2 = 0;
    a2[168] = 0;
    return;
  }

  v147 = 0;
  v146 = 0;
  v148 = 0;
  sub_100409F84(&v146, v4, v5, v7);
  v9 = 126 - 2 * __clz(0xCCCCCCCCCCCCCCCDLL * ((v147 - v146) >> 3));
  if (v147 == v146)
  {
    v10 = 0;
  }

  else
  {
    v10 = v9;
  }

  sub_10040A128(v146, v147, v10, 1, v8);
  v11 = v146;
  v13 = v146[1].n128_u64[0];
  v12 = v146[1].n128_u64[1];
  if (0xAAAAAAAAAAAAAAABLL * ((v12 - v13) >> 4) >= 2)
  {
    v14 = v146[3].n128_u64[1];
    v15 = v146[4].n128_u64[0];
    v16 = 0xAAAAAAAAAAAAAAABLL * ((v15 - v14) >> 4);
    if (v16 > 1 && v16 - 0x5555555555555555 * ((v12 - v13) >> 4) < 0x10)
    {
      if (v13 == v12)
      {
LABEL_18:
        if (v14 == v15)
        {
LABEL_25:
          v29 = *(v13 + 8);
          v30 = *(v13 + 16);
          v31 = *(v14 + 8);
          v32 = *(v14 + 16);
          v145 = 0;
          __dst = 0;
          v143 = 0;
          sub_1004073BC(&v143, v16 - 0x5555555555555555 * ((v12 - v146[1].n128_u64[0]) >> 4));
          sub_10040D054(&v143, __dst, v11[1].n128_u64[0], v11[1].n128_u64[1], 0xAAAAAAAAAAAAAAABLL * ((v11[1].n128_u64[1] - v11[1].n128_u64[0]) >> 4));
          sub_10040D054(&v143, __dst, v11[3].n128_u64[1], v11[4].n128_u64[0], 0xAAAAAAAAAAAAAAABLL * ((v11[4].n128_u64[0] - v11[3].n128_u64[1]) >> 4));
          v141 = 0uLL;
          v142 = 0;
          sub_100404EF0(&v143, a3, 1, &v139);
          v81 = v11[1].n128_u64[1];
          v83 = v11[1].n128_u64[0];
          v80 = v11[4].n128_u64[0];
          v82 = v11[3].n128_u64[1];
          v33 = 0xAAAAAAAAAAAAAAABLL * ((v80 - v82) >> 4);
          if (0xAAAAAAAAAAAAAAABLL * ((__dst - v143) >> 4) != v33 - 0x5555555555555555 * ((v81 - v83) >> 4))
          {
            __assert_rtn("processMeasurements", "IterativeLeastSquareEstimator.cpp", 161, "N == N0 + N1");
          }

          v34 = v139;
          v77 = v140;
          if (v139 != v140)
          {
            v86 = *(v82 + 16);
            v87 = *(v83 + 16);
            v35 = v11[2].n128_f64[1];
            v84 = v35;
            v85 = v11->n128_f64[0];
            v76 = ((v32 - (v31 + 0.000000100069229)) * 299792458.0 + (v32 - v31) * 299792458.0) * 0.5;
            if (0xAAAAAAAAAAAAAAABLL * ((v81 - v83) >> 4) <= 1)
            {
              v36 = 1;
            }

            else
            {
              v36 = 0xAAAAAAAAAAAAAAABLL * ((v81 - v83) >> 4);
            }

            if (v33 <= 1)
            {
              v33 = 1;
            }

            v79 = v33;
            v37 = xmmword_10056ED80;
            do
            {
              v39 = *v34;
              v38 = v34[1];
              v78 = v34;
              v136 = 0x100000004;
              v134 = off_1009A8EE8;
              v135 = v37;
              v137 = &v138;
              sub_1003A8C00(&v134, 4, 1);
              sub_1003A8C50(&v134, 0.0);
              *sub_1003AFDBC(&v134, 0) = v39;
              *sub_1003AFDBC(&v134, 1u) = v38;
              *sub_1003AFDBC(&v134, 2u) = ((v30 - (v29 + 0.000000100069229)) * 299792458.0 + (v30 - v29) * 299792458.0) * 0.5;
              *sub_1003AFDBC(&v134, 3u) = v76;
              if (0.01 < 1.79769313e308)
              {
                v131 = 0x10000000FLL;
                v130 = xmmword_100571B90;
                v129 = off_1009AAB20;
                v132 = &v133;
                sub_1003A8C00(&v129, 15, 1);
                sub_1003A8C50(&v129, 0.0);
                v126 = 0x10000000FLL;
                v125 = xmmword_100571B90;
                v124 = off_1009AAB20;
                v127 = &v128;
                sub_1003A8C00(&v124, 15, 1);
                sub_1003A8C50(&v124, 0.0);
                v106 = 0x40000000FLL;
                v104 = off_1009AAB68;
                v105 = xmmword_100571BB0;
                v107 = &v108;
                sub_1003A8C00(&v104, 15, 4);
                sub_1003A8C50(&v104, 0.0);
                if (v81 != v83)
                {
                  v40 = 0;
                  v41 = 0;
                  do
                  {
                    v42 = v11[1].n128_u64[0] + v40;
                    v44 = *(v42 + 8);
                    v43 = *(v42 + 16);
                    *sub_1003AFDBC(&v129, v41) = (v43 - v44) * 299792458.0;
                    v45 = (v11[1].n128_u64[0] + v40);
                    v47 = v45[2];
                    v46 = v45[3];
                    v48 = v45[4];
                    v49 = v45[5];
                    v50 = *sub_1003AFDBC(&v134, 0);
                    v51 = *sub_1003AFDBC(&v134, 1u);
                    v52 = *sub_1003AFDBC(&v134, 2u);
                    v53 = sqrt((v49 - *&a3) * (v49 - *&a3) + (v46 - v50) * (v46 - v50) + (v48 - v51) * (v48 - v51));
                    *sub_1003AFDBC(&v124, v41) = v53 + v52 + v85 * (v47 - v87);
                    v54 = *sub_1003AFDBC(&v134, 0);
                    *sub_1003A8DB0(&v104, v41, 0) = -(v46 - v54) / v53;
                    v55 = *sub_1003AFDBC(&v134, 1u);
                    *sub_1003A8DB0(&v104, v41, 1) = -(v48 - v55) / v53;
                    *sub_1003A8DB0(&v104, v41, 2) = 0x3FF0000000000000;
                    *sub_1003A8DB0(&v104, v41++, 3) = 0;
                    v40 += 48;
                  }

                  while (v36 != v41);
                }

                if (v80 != v82)
                {
                  v56 = 0;
                  v57 = v79;
                  v58 = -1431655765 * ((v81 - v83) >> 4);
                  do
                  {
                    v59 = v11[3].n128_u64[1] + v56;
                    v61 = *(v59 + 8);
                    v60 = *(v59 + 16);
                    *sub_1003AFDBC(&v129, v58) = (v60 - v61) * 299792458.0;
                    v62 = (v11[3].n128_u64[1] + v56);
                    v64 = v62[2];
                    v63 = v62[3];
                    v65 = v62[4];
                    v66 = v62[5];
                    v67 = *sub_1003AFDBC(&v134, 0);
                    v68 = *sub_1003AFDBC(&v134, 1u);
                    v69 = *sub_1003AFDBC(&v134, 3u);
                    v70 = sqrt((v66 - *&a3) * (v66 - *&a3) + (v63 - v67) * (v63 - v67) + (v65 - v68) * (v65 - v68));
                    *sub_1003AFDBC(&v124, v58) = v70 + v69 + v84 * (v64 - v86);
                    v71 = *sub_1003AFDBC(&v134, 0);
                    *sub_1003A8DB0(&v104, v58, 0) = -(v63 - v71) / v70;
                    v72 = *sub_1003AFDBC(&v134, 1u);
                    *sub_1003A8DB0(&v104, v58, 1) = -(v65 - v72) / v70;
                    *sub_1003A8DB0(&v104, v58, 2) = 0;
                    *sub_1003A8DB0(&v104, v58++, 3) = 0x3FF0000000000000;
                    v56 += 48;
                    --v57;
                  }

                  while (v57);
                }

                sub_10040D3DC(&v154, DWORD1(v105), v105);
                sub_1003A9464(&v104, &v154);
                v161 = 0x400000004;
                v159 = off_1009A8F30;
                v160 = xmmword_10056ED90;
                v162 = &v163;
                sub_1003A90A8(&v154, &v104, &v159);
                sub_10040D3DC(&v154, DWORD1(v105), v105);
                sub_1003A9464(&v104, &v154);
                v151 = 0x10000000FLL;
                v150 = xmmword_100571B90;
                v149 = off_1009AAB20;
                v152 = v153;
                sub_1003A920C(&v129, &v124, &v149);
                v101 = 0x100000004;
                v100 = xmmword_10056ED80;
                v99 = off_1009A8EE8;
                v102 = &v103;
                sub_1003A90A8(&v154, &v149, &v99);
                v151 = 0x400000004;
                v150 = xmmword_10056ED90;
                v149 = off_1009A8F30;
                v152 = v153;
                v96 = 0x100000004;
                v95 = xmmword_10056ED80;
                v94 = off_1009A9658;
                v97 = &v98;
                v91 = 0x100000004;
                v89 = off_1009A9658;
                v90 = xmmword_10056ED80;
                v92 = &v93;
                v156 = 0x100000010;
                v155 = xmmword_10056F210;
                v154 = off_1009A96A0;
                v157 = &v158;
                sub_1003A9668(&v159, &v94, &v89, &v154, &v149);
              }

              v104 = *(v11[1].n128_u64[0] + 16);
              *&v105 = *sub_1003AFDBC(&v134, 0);
              *(&v105 + 1) = *sub_1003AFDBC(&v134, 1u);
              v106 = a3;
              v107 = 0x7FEFFFFFFFFFFFFFLL;
              LOWORD(v94) = v11->n128_u16[4];
              WORD1(v94) = v11[3].n128_u16[0];
              v109 = 0;
              v110 = 0;
              v108 = 0;
              sub_1001FE45C(&v108, &v94, &v94 + 4, 2);
              v154 = *sub_1003AFDBC(&v134, 2u);
              *&v155 = *sub_1003AFDBC(&v134, 3u);
              v112 = 0;
              v113 = 0;
              v111 = 0;
              sub_100019AC4(&v111, &v154, &v155 + 8, 2uLL);
              v159 = *&v87;
              *&v160 = v86;
              v115 = 0;
              v116 = 0;
              v114 = 0;
              sub_100019AC4(&v114, &v159, &v160 + 8, 2uLL);
              v73 = v11[2].n128_u64[1];
              v149 = v11->n128_u64[0];
              *&v150 = v73;
              v118 = 0;
              v119 = 0;
              v117 = 0;
              sub_100019AC4(&v117, &v149, &v150 + 8, 2uLL);
              v120 = 0;
              v122 = 0;
              v123 = 0;
              __p = 0;
              sub_1004060D8(&v141, &v104);
              if (__p)
              {
                v122 = __p;
                operator delete(__p);
              }

              if (v117)
              {
                v118 = v117;
                operator delete(v117);
              }

              if (v114)
              {
                v115 = v114;
                operator delete(v114);
              }

              if (v111)
              {
                v112 = v111;
                operator delete(v111);
              }

              if (v108)
              {
                v109 = v108;
                operator delete(v108);
              }

              v34 = v78 + 3;
              v37 = xmmword_10056ED80;
            }

            while (v78 + 3 != v77);
          }

          if (v141 == *(&v141 + 1))
          {
            v75 = 0;
            v74 = a2;
            *a2 = 0;
          }

          else
          {
            sub_100407550(v141, *(&v141 + 1));
            v74 = sub_100407854(a2, v141);
            v75 = 1;
          }

          *(v74 + 168) = v75;
          if (v139)
          {
            v140 = v139;
            operator delete(v139);
          }

          v104 = &v141;
          sub_100407B04(&v104);
          if (v143)
          {
            __dst = v143;
            operator delete(v143);
          }

          goto LABEL_10;
        }

        v23 = 2.22507386e-308;
        v24 = 2.22507386e-308;
        v25 = v146[3].n128_u64[1];
        while (1)
        {
          v26 = v24;
          v27 = v23;
          v23 = *(v25 + 8);
          v24 = *(v25 + 16);
          if (v23 <= v27 || v24 <= v26)
          {
            break;
          }

          v25 += 48;
          if (v25 == v15)
          {
            goto LABEL_25;
          }
        }
      }

      else
      {
        v17 = 2.22507386e-308;
        v18 = 2.22507386e-308;
        v19 = v146[1].n128_u64[0];
        while (1)
        {
          v20 = v18;
          v21 = v17;
          v17 = *(v19 + 8);
          v18 = *(v19 + 16);
          if (v17 <= v21 || v18 <= v20)
          {
            break;
          }

          v19 += 48;
          if (v19 == v12)
          {
            goto LABEL_18;
          }
        }
      }
    }
  }

  *a2 = 0;
  a2[168] = 0;
LABEL_10:
  v104 = &v146;
  sub_100019848(&v104);
}

void sub_100407250(_Unwind_Exception *a1)
{
  v2 = STACK[0x6E8];
  if (STACK[0x6E8])
  {
    STACK[0x6F0] = v2;
    operator delete(v2);
  }

  STACK[0x358] = &STACK[0x700];
  sub_100407B04(&STACK[0x358]);
  v3 = STACK[0x720];
  if (STACK[0x720])
  {
    STACK[0x728] = v3;
    operator delete(v3);
  }

  STACK[0x358] = &STACK[0x738];
  sub_100019848(&STACK[0x358]);
  _Unwind_Resume(a1);
}

void *sub_1004073BC(void *result, unint64_t a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((result[2] - *result) >> 4) < a2)
  {
    if (a2 < 0x555555555555556)
    {
      v2 = result[1] - *result;
      sub_100403898(result, a2);
    }

    sub_100019B38();
  }

  return result;
}

void *sub_1004074DC(void *a1)
{
  v2 = a1[18];
  if (v2)
  {
    a1[19] = v2;
    operator delete(v2);
  }

  v3 = a1[14];
  if (v3)
  {
    a1[15] = v3;
    operator delete(v3);
  }

  v4 = a1[11];
  if (v4)
  {
    a1[12] = v4;
    operator delete(v4);
  }

  v5 = a1[8];
  if (v5)
  {
    a1[9] = v5;
    operator delete(v5);
  }

  v6 = a1[5];
  if (v6)
  {
    a1[6] = v6;
    operator delete(v6);
  }

  return a1;
}

void sub_100407550(uint64_t a1, unint64_t a2)
{
  v2 = 126 - 2 * __clz(0xCF3CF3CF3CF3CF3DLL * ((a2 - a1) >> 3));
  if (a2 == a1)
  {
    v3 = 0;
  }

  else
  {
    v3 = v2;
  }

  sub_10040804C(a1, a2, v3, 1);
}

void sub_1004075C8(uint64_t a1, __int128 *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v8 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 3);
    v9 = v8 + 1;
    if (v8 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_100019B38();
    }

    v10 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x555555555555555)
    {
      v11 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      sub_1003C67F0(a1, v11);
    }

    v12 = 24 * v8;
    v13 = *a2;
    *(v12 + 16) = *(a2 + 2);
    *v12 = v13;
    v7 = 24 * v8 + 24;
    v14 = *(a1 + 8) - *a1;
    v15 = v12 - v14;
    memcpy((v12 - v14), *a1, v14);
    v16 = *a1;
    *a1 = v15;
    *(a1 + 8) = v7;
    *(a1 + 16) = 0;
    if (v16)
    {
      operator delete(v16);
    }
  }

  else
  {
    v6 = *a2;
    *(v5 + 16) = *(a2 + 2);
    *v5 = v6;
    v7 = v5 + 24;
  }

  *(a1 + 8) = v7;
}

__n128 sub_1004076D0(uint64_t a1, __int128 *a2)
{
  if (*(a1 + 168) == *(a2 + 168))
  {
    if (*(a1 + 168))
    {
      v4 = *a2;
      v5 = a2[1];
      *(a1 + 32) = *(a2 + 4);
      *a1 = v4;
      *(a1 + 16) = v5;
      sub_10016D9A8(a1 + 40, (a2 + 40));
      sub_10016D9A8(a1 + 64, a2 + 4);
      sub_10016D9A8(a1 + 88, (a2 + 88));
      sub_10016D9A8(a1 + 112, a2 + 7);
      *(a1 + 136) = *(a2 + 136);

      result.n128_u64[0] = sub_10016D9A8(a1 + 144, a2 + 9).n128_u64[0];
    }
  }

  else if (*(a1 + 168))
  {

    sub_100406054(a1);
  }

  else
  {
    v7 = a2[1];
    v8 = *(a2 + 4);
    *a1 = *a2;
    *(a1 + 16) = v7;
    *(a1 + 32) = v8;
    *(a1 + 40) = 0;
    *(a1 + 48) = 0;
    *(a1 + 56) = 0;
    *(a1 + 40) = *(a2 + 40);
    *(a1 + 56) = *(a2 + 7);
    *(a2 + 5) = 0;
    *(a2 + 6) = 0;
    *(a2 + 7) = 0;
    *(a1 + 64) = 0;
    *(a1 + 72) = 0;
    *(a1 + 80) = 0;
    *(a1 + 64) = a2[4];
    *(a1 + 80) = *(a2 + 10);
    *(a2 + 8) = 0;
    *(a2 + 9) = 0;
    *(a2 + 10) = 0;
    *(a1 + 88) = 0;
    *(a1 + 96) = 0;
    *(a1 + 104) = 0;
    *(a1 + 88) = *(a2 + 88);
    *(a1 + 104) = *(a2 + 13);
    *(a2 + 11) = 0;
    *(a2 + 12) = 0;
    *(a2 + 13) = 0;
    *(a1 + 112) = 0;
    *(a1 + 120) = 0;
    *(a1 + 128) = 0;
    *(a1 + 112) = a2[7];
    *(a1 + 128) = *(a2 + 16);
    *(a2 + 15) = 0;
    *(a2 + 16) = 0;
    *(a2 + 14) = 0;
    *(a1 + 136) = *(a2 + 136);
    *(a1 + 152) = 0;
    *(a1 + 160) = 0;
    *(a1 + 144) = 0;
    result = a2[9];
    *(a1 + 144) = result;
    *(a1 + 160) = *(a2 + 20);
    *(a2 + 19) = 0;
    *(a2 + 20) = 0;
    *(a2 + 18) = 0;
    *(a1 + 168) = 1;
  }

  return result;
}

uint64_t sub_100407854(uint64_t a1, __int128 *a2)
{
  v4 = *a2;
  v5 = a2[1];
  *(a1 + 32) = *(a2 + 4);
  *a1 = v4;
  *(a1 + 16) = v5;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  sub_1001FBC68(a1 + 40, *(a2 + 5), *(a2 + 6), (*(a2 + 6) - *(a2 + 5)) >> 1);
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  sub_100012F38(a1 + 64, *(a2 + 8), *(a2 + 9), (*(a2 + 9) - *(a2 + 8)) >> 3);
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  sub_100012F38(a1 + 88, *(a2 + 11), *(a2 + 12), (*(a2 + 12) - *(a2 + 11)) >> 3);
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  sub_100012F38(a1 + 112, *(a2 + 14), *(a2 + 15), (*(a2 + 15) - *(a2 + 14)) >> 3);
  v6 = *(a2 + 136);
  *(a1 + 144) = 0;
  *(a1 + 136) = v6;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  sub_100012F38(a1 + 144, *(a2 + 18), *(a2 + 19), (*(a2 + 19) - *(a2 + 18)) >> 3);
  return a1;
}

void sub_100407944(_Unwind_Exception *exception_object)
{
  v7 = *v5;
  if (*v5)
  {
    v1[15] = v7;
    operator delete(v7);
  }

  v8 = *v4;
  if (*v4)
  {
    v1[12] = v8;
    operator delete(v8);
  }

  v9 = *v3;
  if (*v3)
  {
    v1[9] = v9;
    operator delete(v9);
  }

  v10 = *v2;
  if (*v2)
  {
    v1[6] = v10;
    operator delete(v10);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1004079A8(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (0xAAAAAAAAAAAAAAABLL * ((v7 - *result) >> 4) < a4)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if (a4 <= 0x555555555555555)
    {
      v9 = 0xAAAAAAAAAAAAAAABLL * (v7 >> 4);
      v10 = 2 * v9;
      if (2 * v9 <= a4)
      {
        v10 = a4;
      }

      if (v9 >= 0x2AAAAAAAAAAAAAALL)
      {
        v11 = 0x555555555555555;
      }

      else
      {
        v11 = v10;
      }

      sub_100403DE8(v6, v11);
    }

    sub_100019B38();
  }

  v12 = result[1];
  v13 = v12 - v8;
  if (0xAAAAAAAAAAAAAAABLL * ((v12 - v8) >> 4) >= a4)
  {
    v16 = a3 - __src;
    if (v16)
    {
      result = memmove(*result, __src, v16);
    }

    v15 = &v8[v16];
  }

  else
  {
    v14 = &__src[v13];
    if (v12 != v8)
    {
      result = memmove(*result, __src, v13);
      v12 = v6[1];
    }

    if (a3 != v14)
    {
      result = memmove(v12, v14, a3 - v14);
    }

    v15 = &v12[a3 - v14];
  }

  v6[1] = v15;
  return result;
}

void sub_100407B04(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_100407B58(v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_100407B58(uint64_t a1, void *a2)
{
  for (i = *(a1 + 8); i != a2; sub_100407BAC(a1, i))
  {
    i -= 21;
  }

  *(a1 + 8) = a2;
}

void sub_100407BAC(uint64_t a1, void *a2)
{
  v3 = a2[18];
  if (v3)
  {
    a2[19] = v3;
    operator delete(v3);
  }

  v4 = a2[14];
  if (v4)
  {
    a2[15] = v4;
    operator delete(v4);
  }

  v5 = a2[11];
  if (v5)
  {
    a2[12] = v5;
    operator delete(v5);
  }

  v6 = a2[8];
  if (v6)
  {
    a2[9] = v6;
    operator delete(v6);
  }

  v7 = a2[5];
  if (v7)
  {
    a2[6] = v7;

    operator delete(v7);
  }
}

uint64_t sub_100407C34(uint64_t a1, __int128 *a2)
{
  v2 = 0xCF3CF3CF3CF3CF3DLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x186186186186186)
  {
    sub_100019B38();
  }

  if (0x9E79E79E79E79E7ALL * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x9E79E79E79E79E7ALL * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xCF3CF3CF3CF3CF3DLL * ((*(a1 + 16) - *a1) >> 3) >= 0xC30C30C30C30C3)
  {
    v6 = 0x186186186186186;
  }

  else
  {
    v6 = v3;
  }

  v16 = a1;
  if (v6)
  {
    sub_100407D7C(a1, v6);
  }

  v13 = 0;
  v14 = 168 * v2;
  sub_100407854(168 * v2, a2);
  v15 = 168 * v2 + 168;
  v7 = *(a1 + 8);
  v8 = 168 * v2 + *a1 - v7;
  sub_100407DD8(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = *(a1 + 16);
  v12 = v15;
  *(a1 + 8) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  sub_100407FCC(&v13);
  return v12;
}

void sub_100407D68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_100407FCC(va);
  _Unwind_Resume(a1);
}

void sub_100407D7C(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x186186186186187)
  {
    operator new();
  }

  sub_100013B04();
}

uint64_t sub_100407DD8(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v13 = a4;
  v14 = a4;
  v11[0] = a1;
  v11[1] = &v13;
  v11[2] = &v14;
  if (a2 == a3)
  {
    v12 = 1;
  }

  else
  {
    v5 = a2;
    v7 = a2;
    do
    {
      v8 = *(v7 + 1);
      v9 = v7[4];
      *a4 = *v7;
      *(a4 + 16) = v8;
      *(a4 + 32) = v9;
      *(a4 + 40) = 0;
      *(a4 + 48) = 0;
      *(a4 + 56) = 0;
      *(a4 + 40) = *(v7 + 5);
      *(a4 + 56) = v7[7];
      v7[5] = 0;
      v7[6] = 0;
      v7[7] = 0;
      *(a4 + 64) = 0;
      *(a4 + 72) = 0;
      *(a4 + 80) = 0;
      *(a4 + 64) = *(v7 + 4);
      *(a4 + 80) = v7[10];
      v7[8] = 0;
      v7[9] = 0;
      v7[10] = 0;
      *(a4 + 88) = 0;
      *(a4 + 96) = 0;
      *(a4 + 104) = 0;
      *(a4 + 88) = *(v7 + 11);
      *(a4 + 104) = v7[13];
      v7[11] = 0;
      v7[12] = 0;
      v7[13] = 0;
      *(a4 + 112) = 0;
      *(a4 + 120) = 0;
      *(a4 + 128) = 0;
      *(a4 + 112) = *(v7 + 7);
      *(a4 + 128) = v7[16];
      v7[15] = 0;
      v7[16] = 0;
      v7[14] = 0;
      *(a4 + 136) = *(v7 + 136);
      *(a4 + 152) = 0;
      *(a4 + 160) = 0;
      *(a4 + 144) = 0;
      *(a4 + 144) = *(v7 + 9);
      *(a4 + 160) = v7[20];
      v7[18] = 0;
      v7[19] = 0;
      v7[20] = 0;
      v7 += 21;
      a4 += 168;
    }

    while (v7 != a3);
    v14 = a4;
    v12 = 1;
    while (v5 != a3)
    {
      sub_100407BAC(a1, v5);
      v5 += 21;
    }
  }

  return sub_100407F40(v11);
}

uint64_t sub_100407F40(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_100407F78(a1);
  }

  return a1;
}

void sub_100407F78(uint64_t *a1)
{
  v2 = a1[1];
  v1 = a1[2];
  v3 = *v1;
  v4 = *v2;
  if (*v1 != *v2)
  {
    v5 = *a1;
    do
    {
      v3 -= 21;
      sub_100407BAC(v5, v3);
    }

    while (v3 != v4);
  }
}

uint64_t sub_100407FCC(uint64_t a1)
{
  sub_100408004(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_100408004(uint64_t a1, uint64_t a2)
{
  while (1)
  {
    v4 = *(a1 + 16);
    if (v4 == a2)
    {
      break;
    }

    v5 = *(a1 + 32);
    *(a1 + 16) = v4 - 168;
    sub_100407BAC(v5, (v4 - 168));
  }
}

void sub_10040804C(uint64_t a1, unint64_t a2, uint64_t a3, char a4)
{
LABEL_1:
  v208 = a2 - 336;
  v209 = (a2 - 168);
  v207 = a2 - 504;
  v7 = a1;
  v274 = a2;
  while (1)
  {
    a1 = v7;
    v8 = a2 - v7;
    v9 = 0xCF3CF3CF3CF3CF3DLL * ((a2 - v7) >> 3);
    v10 = v9 - 2;
    if (v9 <= 2)
    {
      if (v9 < 2)
      {
        return;
      }

      if (v9 == 2)
      {
        if (*(a2 - 32) == *(v7 + 136))
        {
          v76 = *(a2 - 136) < *(v7 + 32);
        }

        else
        {
          v76 = *(a2 - 32) == 0;
        }

        if (v76)
        {
          v77 = v7;
          v78 = v209;
LABEL_118:

          sub_100409DB4(v77, v78);
          return;
        }

        return;
      }

      goto LABEL_9;
    }

    if (v9 == 3)
    {

      sub_100409634(v7, v7 + 168, v209);
      return;
    }

    if (v9 == 4)
    {
      break;
    }

    if (v9 == 5)
    {

      sub_100409764(v7, v7 + 168, v7 + 336, v7 + 504, v209);
      return;
    }

LABEL_9:
    if (v8 <= 4031)
    {
      v82 = v7 + 168;
      v84 = v7 == a2 || v82 == a2;
      if (a4)
      {
        if (!v84)
        {
          v85 = 0;
          v86 = v7;
          do
          {
            v87 = v82;
            v88 = *(v86 + 304);
            v89 = *(v86 + 304) == 0;
            if (v88 == *(v86 + 136))
            {
              v89 = *(v86 + 200) < *(v86 + 32);
            }

            if (v89)
            {
              v279 = *v87;
              v285 = *(v87 + 16);
              v90 = *(v87 + 32);
              v236 = *(v86 + 208);
              v230 = *(v86 + 216);
              *(v86 + 208) = 0;
              *(v86 + 216) = 0;
              v91 = *(v86 + 232);
              v242 = *(v86 + 240);
              *(v86 + 224) = 0;
              *(v86 + 232) = 0;
              *(v86 + 240) = 0;
              *(v86 + 248) = 0;
              v92 = *(v86 + 256);
              v93 = *(v86 + 264);
              *(v86 + 256) = 0;
              *(v86 + 264) = 0;
              v94 = *(v86 + 280);
              v256 = v93;
              v263 = *(v86 + 288);
              *(v86 + 272) = 0;
              *(v86 + 280) = 0;
              *(v86 + 288) = 0;
              *(v86 + 296) = 0;
              v95 = *(v86 + 312);
              v269 = *(v86 + 320);
              *(v86 + 312) = 0;
              *(v86 + 320) = 0;
              *(v86 + 328) = 0;
              v96 = v85;
              v249 = v94;
              while (1)
              {
                v97 = v96;
                v98 = a1 + v96;
                v99 = *(a1 + v96 + 16);
                *(v98 + 168) = *(a1 + v96);
                *(v98 + 184) = v99;
                *(v98 + 200) = *(a1 + v96 + 32);
                sub_10016D9A8(a1 + v96 + 208, (a1 + v96 + 40));
                sub_10016D9A8(v98 + 232, (v98 + 64));
                sub_10016D9A8(v98 + 256, (v98 + 88));
                sub_10016D9A8(v98 + 280, (v98 + 112));
                *(v98 + 304) = *(v98 + 136);
                sub_10016D9A8(v98 + 312, (v98 + 144));
                if (!v97)
                {
                  break;
                }

                if (v88 == *(v98 - 32))
                {
                  v100 = v90 < *(v98 - 136);
                }

                else
                {
                  v100 = v88 == 0;
                }

                v96 = v97 - 168;
                if (!v100)
                {
                  v101 = a1 + v97;
                  goto LABEL_157;
                }
              }

              v101 = a1;
LABEL_157:
              *v101 = v279;
              *(v101 + 16) = v285;
              *(v101 + 32) = v90;
              v102 = *(v98 + 40);
              if (v102)
              {
                *(v101 + 48) = v102;
                operator delete(v102);
                v103 = a1 + v97;
                *(v103 + 48) = 0;
                *(v103 + 56) = 0;
              }

              *(v98 + 40) = v236;
              *(v101 + 48) = v230;
              v104 = *(v98 + 64);
              if (v104)
              {
                *(v101 + 72) = v104;
                operator delete(v104);
                v105 = a1 + v97;
                *(v105 + 72) = 0;
                *(v105 + 80) = 0;
              }

              *(v98 + 64) = v91;
              *(v101 + 72) = v242;
              v106 = *(v98 + 88);
              if (v106)
              {
                *(v101 + 96) = v106;
                operator delete(v106);
                v107 = a1 + v97;
                *(v107 + 96) = 0;
                *(v107 + 104) = 0;
              }

              *(v98 + 88) = v92;
              *(v101 + 96) = v256;
              v108 = *(v98 + 112);
              if (v108)
              {
                *(v101 + 120) = v108;
                operator delete(v108);
                v109 = a1 + v97;
                *(v109 + 120) = 0;
                *(v109 + 128) = 0;
              }

              *(v98 + 112) = v249;
              *(v101 + 120) = v263;
              *(v101 + 136) = v88;
              v110 = *(v98 + 144);
              if (v110)
              {
                *(v101 + 152) = v110;
                operator delete(v110);
                v111 = a1 + v97;
                *(v111 + 152) = 0;
                *(v111 + 160) = 0;
              }

              *(v98 + 144) = v95;
              *(v101 + 152) = v269;
              a2 = v274;
            }

            v82 = v87 + 168;
            v85 += 168;
            v86 = v87;
          }

          while (v87 + 168 != a2);
        }
      }

      else if (!v84)
      {
        v183 = v7 - 136;
        do
        {
          v184 = v82;
          v185 = *(a1 + 304);
          v186 = *(a1 + 304) == 0;
          if (v185 == *(a1 + 136))
          {
            v186 = *(a1 + 200) < *(a1 + 32);
          }

          if (v186)
          {
            v187 = (a1 + 280);
            v282 = *v82;
            v288 = *(v82 + 16);
            v188 = *(v82 + 32);
            v189 = *(a1 + 208);
            v190 = *(a1 + 224);
            *(a1 + 208) = 0;
            *(a1 + 216) = 0;
            v246 = v189;
            v253 = *(a1 + 232);
            v191 = *(a1 + 248);
            *(a1 + 224) = 0;
            *(a1 + 232) = 0;
            *(a1 + 240) = 0;
            *(a1 + 248) = 0;
            v192 = *(a1 + 256);
            v193 = *(a1 + 272);
            *(a1 + 256) = 0;
            *(a1 + 264) = 0;
            *(a1 + 272) = 0;
            v260 = v192;
            v267 = *(a1 + 280);
            v194 = *(a1 + 296);
            *(a1 + 280) = 0;
            *(a1 + 288) = 0;
            *(a1 + 296) = 0;
            v273 = *(a1 + 312);
            v195 = *(a1 + 328);
            v187[4] = 0;
            v187[5] = 0;
            v187[6] = 0;
            v196 = v183;
            do
            {
              v197 = *(v196 + 152);
              *(v196 + 304) = *(v196 + 136);
              *(v196 + 320) = v197;
              *(v196 + 336) = *(v196 + 168);
              sub_10016D9A8(v196 + 344, (v196 + 176));
              sub_10016D9A8(v196 + 368, (v196 + 200));
              sub_10016D9A8(v196 + 392, (v196 + 224));
              sub_10016D9A8(v196 + 416, (v196 + 248));
              *(v196 + 440) = *(v196 + 272);
              sub_10016D9A8(v196 + 448, (v196 + 280));
              v198 = *(v196 + 104);
              v199 = *v196;
              v196 -= 168;
              v200 = v188 < v199;
              if (v185 == v198)
              {
                v201 = v200;
              }

              else
              {
                v201 = v185 == 0;
              }
            }

            while (v201);
            *(v196 + 304) = v282;
            *(v196 + 320) = v288;
            *(v196 + 336) = v188;
            v202 = *(v196 + 344);
            if (v202)
            {
              *(v196 + 352) = v202;
              operator delete(v202);
            }

            *(v196 + 344) = v246;
            *(v196 + 360) = v190;
            v203 = *(v196 + 368);
            if (v203)
            {
              *(v196 + 376) = v203;
              operator delete(v203);
            }

            *(v196 + 368) = v253;
            *(v196 + 384) = v191;
            v204 = *(v196 + 392);
            if (v204)
            {
              *(v196 + 400) = v204;
              operator delete(v204);
            }

            *(v196 + 392) = v260;
            *(v196 + 408) = v193;
            v205 = *(v196 + 416);
            if (v205)
            {
              *(v196 + 424) = v205;
              operator delete(v205);
            }

            *(v196 + 416) = v267;
            *(v196 + 432) = v194;
            *(v196 + 440) = v185;
            v206 = *(v196 + 448);
            a2 = v274;
            if (v206)
            {
              *(v196 + 456) = v206;
              operator delete(v206);
            }

            *(v196 + 448) = v273;
            *(v196 + 464) = v195;
          }

          v82 = v184 + 168;
          v183 += 168;
          a1 = v184;
        }

        while (v184 + 168 != a2);
      }

      return;
    }

    if (!a3)
    {
      if (v7 != a2)
      {
        v112 = v10 >> 1;
        v113 = v10 >> 1;
        do
        {
          v114 = v113;
          if (v112 >= v113)
          {
            v115 = (2 * v113) | 1;
            v116 = a1 + 168 * v115;
            if (2 * v114 + 2 < v9)
            {
              v117 = *(v116 + 136) == *(v116 + 304) ? *(v116 + 32) < *(v116 + 200) : *(v116 + 136) == 0;
              v118 = !v117;
              v119 = v117 ? 168 : 0;
              v116 += v119;
              if (!v118)
              {
                v115 = 2 * v114 + 2;
              }
            }

            v120 = a1 + 168 * v114;
            v121 = *(v120 + 136);
            v122 = *(v120 + 32);
            if (*(v116 + 136) == v121)
            {
              v123 = *(v116 + 32) < v122;
            }

            else
            {
              v123 = *(v116 + 136) == 0;
            }

            if (!v123)
            {
              v280 = *v120;
              v286 = *(v120 + 16);
              v222 = *(v120 + 40);
              v218 = *(v120 + 56);
              *(v120 + 40) = 0;
              *(v120 + 48) = 0;
              v231 = *(v120 + 64);
              v226 = *(v120 + 80);
              *(v120 + 56) = 0;
              *(v120 + 64) = 0;
              *(v120 + 72) = 0;
              *(v120 + 80) = 0;
              v243 = *(v120 + 88);
              v237 = *(v120 + 104);
              *(v120 + 88) = 0;
              *(v120 + 96) = 0;
              v257 = *(v120 + 112);
              v250 = *(v120 + 128);
              *(v120 + 104) = 0;
              *(v120 + 112) = 0;
              *(v120 + 120) = 0;
              *(v120 + 128) = 0;
              v270 = *(v120 + 144);
              v264 = *(v120 + 160);
              *(v120 + 144) = 0;
              *(v120 + 152) = 0;
              *(v120 + 160) = 0;
              do
              {
                v124 = v116;
                v125 = *v116;
                v126 = *(v116 + 16);
                *(v120 + 32) = *(v116 + 32);
                *v120 = v125;
                *(v120 + 16) = v126;
                sub_10016D9A8(v120 + 40, (v116 + 40));
                sub_10016D9A8(v120 + 64, (v124 + 64));
                sub_10016D9A8(v120 + 88, (v124 + 88));
                sub_10016D9A8(v120 + 112, (v124 + 112));
                *(v120 + 136) = *(v124 + 136);
                sub_10016D9A8(v120 + 144, (v124 + 144));
                if (v112 < v115)
                {
                  break;
                }

                v127 = (2 * v115) | 1;
                v116 = a1 + 168 * v127;
                if (2 * v115 + 2 < v9)
                {
                  v128 = *(v116 + 136) == *(v116 + 304) ? *(v116 + 32) < *(v116 + 200) : *(v116 + 136) == 0;
                  v129 = !v128;
                  v130 = v128 ? 168 : 0;
                  v116 += v130;
                  if (!v129)
                  {
                    v127 = 2 * v115 + 2;
                  }
                }

                v131 = *(v116 + 136) == v121 ? *(v116 + 32) < v122 : *(v116 + 136) == 0;
                v120 = v124;
                v115 = v127;
              }

              while (!v131);
              *v124 = v280;
              *(v124 + 16) = v286;
              *(v124 + 32) = v122;
              v132 = *(v124 + 40);
              if (v132)
              {
                *(v124 + 48) = v132;
                operator delete(v132);
              }

              *(v124 + 40) = v222;
              *(v124 + 56) = v218;
              v133 = *(v124 + 64);
              if (v133)
              {
                *(v124 + 72) = v133;
                operator delete(v133);
              }

              *(v124 + 64) = v231;
              *(v124 + 80) = v226;
              v134 = *(v124 + 88);
              if (v134)
              {
                *(v124 + 96) = v134;
                operator delete(v134);
              }

              *(v124 + 88) = v243;
              *(v124 + 104) = v237;
              v135 = *(v124 + 112);
              if (v135)
              {
                *(v124 + 120) = v135;
                operator delete(v135);
              }

              *(v124 + 112) = v257;
              *(v124 + 128) = v250;
              *(v124 + 136) = v121;
              v136 = *(v124 + 144);
              if (v136)
              {
                *(v124 + 152) = v136;
                operator delete(v136);
              }

              *(v124 + 144) = v270;
              *(v124 + 160) = v264;
            }
          }

          v113 = v114 - 1;
        }

        while (v114);
        v137 = 0xCF3CF3CF3CF3CF3DLL * (v8 >> 3);
        v138 = v274;
        do
        {
          v139 = 0;
          v140 = v138;
          v141 = *(a1 + 40);
          v289 = *(a1 + 32);
          v281 = *a1;
          v287 = *(a1 + 16);
          v143 = *(a1 + 48);
          v142 = *(a1 + 56);
          *(a1 + 40) = 0;
          *(a1 + 48) = 0;
          v215 = *(a1 + 72);
          v219 = *(a1 + 64);
          *(a1 + 56) = 0;
          *(a1 + 64) = 0;
          v211 = v141;
          v213 = *(a1 + 80);
          v232 = *(a1 + 88);
          *(a1 + 72) = 0;
          *(a1 + 80) = 0;
          v227 = *(a1 + 96);
          v223 = *(a1 + 104);
          *(a1 + 88) = 0;
          *(a1 + 96) = 0;
          v258 = *(a1 + 112);
          v251 = *(a1 + 120);
          v244 = *(a1 + 128);
          *(a1 + 104) = 0;
          *(a1 + 112) = 0;
          *(a1 + 120) = 0;
          *(a1 + 128) = 0;
          v238 = *(a1 + 136);
          v275 = *(a1 + 144);
          v271 = *(a1 + 152);
          v265 = *(a1 + 160);
          *(a1 + 144) = 0;
          *(a1 + 152) = 0;
          v144 = a1;
          *(a1 + 160) = 0;
          do
          {
            v145 = v144 + 168 * v139;
            v146 = v145 + 168;
            if (2 * v139 + 2 >= v137)
            {
              v139 = (2 * v139) | 1;
            }

            else
            {
              if (*(v145 + 304) == *(v145 + 472))
              {
                v147 = *(v145 + 200) < *(v145 + 368);
              }

              else
              {
                v147 = *(v145 + 304) == 0;
              }

              v148 = v145 + 336;
              if (v147)
              {
                v146 = v148;
                v139 = 2 * v139 + 2;
              }

              else
              {
                v139 = (2 * v139) | 1;
              }
            }

            v149 = *v146;
            v150 = *(v146 + 16);
            *(v144 + 32) = *(v146 + 32);
            *v144 = v149;
            *(v144 + 16) = v150;
            sub_10016D9A8(v144 + 40, (v146 + 40));
            sub_10016D9A8(v144 + 64, (v146 + 64));
            sub_10016D9A8(v144 + 88, (v146 + 88));
            sub_10016D9A8(v144 + 112, (v146 + 112));
            *(v144 + 136) = *(v146 + 136);
            sub_10016D9A8(v144 + 144, (v146 + 144));
            v144 = v146;
          }

          while (v139 <= ((v137 - 2) >> 1));
          v138 = (v138 - 168);
          if (v146 == &v140[-11].n128_i8[8])
          {
            *(v146 + 32) = v289;
            *v146 = v281;
            *(v146 + 16) = v287;
            v177 = *(v146 + 40);
            if (v177)
            {
              *(v146 + 48) = v177;
              operator delete(v177);
            }

            *(v146 + 40) = v211;
            *(v146 + 48) = v143;
            *(v146 + 56) = v142;
            v178 = *(v146 + 64);
            if (v178)
            {
              *(v146 + 72) = v178;
              operator delete(v178);
            }

            *(v146 + 64) = v219;
            *(v146 + 72) = v215;
            *(v146 + 80) = v213;
            v179 = *(v146 + 88);
            if (v179)
            {
              *(v146 + 96) = v179;
              operator delete(v179);
            }

            *(v146 + 88) = v232;
            *(v146 + 96) = v227;
            *(v146 + 104) = v223;
            v180 = *(v146 + 112);
            if (v180)
            {
              *(v146 + 120) = v180;
              operator delete(v180);
            }

            *(v146 + 112) = v258;
            *(v146 + 120) = v251;
            *(v146 + 128) = v244;
            *(v146 + 136) = v238;
            v181 = *(v146 + 144);
            if (v181)
            {
              *(v146 + 152) = v181;
              operator delete(v181);
            }

            *(v146 + 144) = v275;
            *(v146 + 152) = v271;
            *(v146 + 160) = v265;
          }

          else
          {
            v151 = *v138;
            v152 = *(&v140[-10] + 8);
            *(v146 + 32) = v140[-9].n128_u64[1];
            *v146 = v151;
            *(v146 + 16) = v152;
            sub_10016D9A8(v146 + 40, v140 - 8);
            sub_10016D9A8(v146 + 64, (v140 - 104));
            sub_10016D9A8(v146 + 88, v140 - 5);
            sub_10016D9A8(v146 + 112, (v140 - 56));
            *(v146 + 136) = v140[-2].n128_u8[0];
            sub_10016D9A8(v146 + 144, (v140 - 24));
            v140[-9].n128_u64[1] = v289;
            *v138 = v281;
            *(v140 - 152) = v287;
            v153 = v140[-8].n128_u64[0];
            if (v153)
            {
              v140[-8].n128_u64[1] = v153;
              operator delete(v153);
            }

            v140[-8].n128_u64[0] = v211;
            v140[-8].n128_u64[1] = v143;
            v140[-7].n128_u64[0] = v142;
            v154 = v140[-7].n128_u64[1];
            if (v154)
            {
              v140[-6].n128_u64[0] = v154;
              operator delete(v154);
            }

            v140[-7].n128_u64[1] = v219;
            v140[-6].n128_u64[0] = v215;
            v140[-6].n128_u64[1] = v213;
            v155 = v140[-5].n128_u64[0];
            if (v155)
            {
              v140[-5].n128_u64[1] = v155;
              operator delete(v155);
            }

            v140[-5].n128_u64[0] = v232;
            v140[-5].n128_u64[1] = v227;
            v140[-4].n128_u64[0] = v223;
            v156 = v140[-4].n128_u64[1];
            if (v156)
            {
              v140[-3].n128_u64[0] = v156;
              operator delete(v156);
            }

            v140[-4].n128_u64[1] = v258;
            v140[-3].n128_u64[0] = v251;
            v140[-3].n128_u64[1] = v244;
            v140[-2].n128_u8[0] = v238;
            v157 = v140[-2].n128_u64[1];
            if (v157)
            {
              v140[-1].n128_u64[0] = v157;
              operator delete(v157);
            }

            v140[-2].n128_u64[1] = v275;
            v140[-1].n128_u64[0] = v271;
            v140[-1].n128_u64[1] = v265;
            v158 = v146 + 168 - a1;
            if (v158 >= 169)
            {
              v159 = (-2 - 0x30C30C30C30C30C3 * (v158 >> 3)) >> 1;
              v160 = a1 + 168 * v159;
              v161 = *(v146 + 136);
              v162 = *(v146 + 32);
              if (*(v160 + 136) == v161 ? *(v160 + 32) < v162 : *(v160 + 136) == 0)
              {
                v276 = &v140[-11].n128_i8[8];
                v290 = *v146;
                v291 = *(v146 + 16);
                v164 = *(v146 + 40);
                v165 = *(v146 + 56);
                *(v146 + 40) = 0;
                *(v146 + 48) = 0;
                v233 = v164;
                v239 = *(v146 + 64);
                v166 = *(v146 + 80);
                *(v146 + 72) = 0;
                *(v146 + 80) = 0;
                *(v146 + 56) = 0;
                *(v146 + 64) = 0;
                v245 = *(v146 + 88);
                v167 = *(v146 + 104);
                *(v146 + 88) = 0;
                *(v146 + 96) = 0;
                v259 = *(v146 + 112);
                v252 = *(v146 + 128);
                *(v146 + 104) = 0;
                *(v146 + 112) = 0;
                *(v146 + 120) = 0;
                *(v146 + 128) = 0;
                v272 = *(v146 + 144);
                v266 = *(v146 + 160);
                *(v146 + 144) = 0;
                *(v146 + 152) = 0;
                *(v146 + 160) = 0;
                do
                {
                  v168 = v160;
                  v169 = *v160;
                  v170 = *(v160 + 16);
                  *(v146 + 32) = *(v160 + 32);
                  *v146 = v169;
                  *(v146 + 16) = v170;
                  sub_10016D9A8(v146 + 40, (v160 + 40));
                  sub_10016D9A8(v146 + 64, (v168 + 64));
                  sub_10016D9A8(v146 + 88, (v168 + 88));
                  sub_10016D9A8(v146 + 112, (v168 + 112));
                  *(v146 + 136) = *(v168 + 136);
                  sub_10016D9A8(v146 + 144, (v168 + 144));
                  if (!v159)
                  {
                    break;
                  }

                  v159 = (v159 - 1) >> 1;
                  v160 = a1 + 168 * v159;
                  v171 = *(v160 + 136) == v161 ? *(v160 + 32) < v162 : *(v160 + 136) == 0;
                  v146 = v168;
                }

                while (v171);
                *v168 = v290;
                *(v168 + 16) = v291;
                *(v168 + 32) = v162;
                v172 = *(v168 + 40);
                if (v172)
                {
                  *(v168 + 48) = v172;
                  operator delete(v172);
                }

                *(v168 + 40) = v233;
                *(v168 + 56) = v165;
                v173 = *(v168 + 64);
                if (v173)
                {
                  *(v168 + 72) = v173;
                  operator delete(v173);
                }

                *(v168 + 64) = v239;
                *(v168 + 80) = v166;
                v174 = *(v168 + 88);
                v138 = v276;
                if (v174)
                {
                  *(v168 + 96) = v174;
                  operator delete(v174);
                }

                *(v168 + 88) = v245;
                *(v168 + 104) = v167;
                v175 = *(v168 + 112);
                if (v175)
                {
                  *(v168 + 120) = v175;
                  operator delete(v175);
                }

                *(v168 + 112) = v259;
                *(v168 + 128) = v252;
                *(v168 + 136) = v161;
                v176 = *(v168 + 144);
                if (v176)
                {
                  *(v168 + 152) = v176;
                  operator delete(v176);
                }

                *(v168 + 144) = v272;
                *(v168 + 160) = v266;
              }
            }
          }
        }

        while (v137-- > 2);
      }

      return;
    }

    v11 = v9 >> 1;
    v12 = (v7 + 168 * (v9 >> 1));
    if (v8 < 0x5401)
    {
      sub_100409634(v12, v7, v209);
    }

    else
    {
      sub_100409634(v7, v12, v209);
      v13 = 168 * v11;
      sub_100409634(v7 + 168, v13 + v7 - 168, v208);
      sub_100409634(v7 + 336, v7 + 168 + v13, v207);
      sub_100409634(v13 + v7 - 168, v12, v7 + 168 + v13);
      sub_100409DB4(v7, v12);
    }

    v14 = *(v7 + 136);
    v268 = a3 - 1;
    if (a4)
    {
      v15 = *(v7 + 32);
LABEL_20:
      v17 = 0;
      v277 = *v7;
      v283 = *(v7 + 16);
      v216 = *(v7 + 40);
      v212 = v7 + 40;
      v214 = *(v7 + 56);
      *(v7 + 40) = 0;
      *(v7 + 48) = 0;
      *(v7 + 56) = 0;
      v224 = *(v7 + 64);
      v220 = *(v7 + 80);
      *(v7 + 64) = 0;
      *(v7 + 72) = 0;
      *(v7 + 80) = 0;
      v234 = *(v7 + 88);
      v228 = *(v7 + 104);
      *(v7 + 88) = 0;
      v247 = *(v7 + 112);
      *(v7 + 96) = 0;
      *(v7 + 104) = 0;
      v240 = *(v7 + 128);
      *(v7 + 112) = 0;
      *(v7 + 120) = 0;
      *(v7 + 128) = 0;
      v261 = *(v7 + 144);
      v254 = *(v7 + 160);
      *(v7 + 144) = 0;
      *(v7 + 152) = 0;
      *(v7 + 160) = 0;
      do
      {
        v18 = *(v7 + v17 + 200) < v15;
        if (*(v7 + v17 + 304) != v14)
        {
          v18 = *(v7 + v17 + 304) == 0;
        }

        v17 += 168;
      }

      while (v18);
      v19 = v7 + v17;
      v20 = v274;
      if (v17 == 168)
      {
        v26 = v274;
        while (v19 < v26)
        {
          v21 = (v26 - 168);
          v27 = *(v26 - 32);
          v28 = *(v26 - 32) == 0;
          v29 = *(v26 - 136) < v15;
          if (v27 == v14)
          {
            v30 = v29;
          }

          else
          {
            v30 = v28;
          }

          v26 = v21;
          if (v30)
          {
            goto LABEL_38;
          }
        }

        v21 = v26;
      }

      else
      {
        do
        {
          v21 = (v20 - 168);
          v22 = *(v20 - 32);
          v23 = *(v20 - 32) == 0;
          v24 = *(v20 - 136) < v15;
          if (v22 == v14)
          {
            v25 = v24;
          }

          else
          {
            v25 = v23;
          }

          v20 = v21;
        }

        while (!v25);
      }

LABEL_38:
      v7 = v19;
      if (v19 < v21)
      {
        v31 = v21;
        do
        {
          sub_100409DB4(v7, v31);
          do
          {
            v32 = *(v7 + 304);
            v33 = *(v7 + 200);
            v7 += 168;
            if (v32 == v14)
            {
              v34 = v33 < v15;
            }

            else
            {
              v34 = v32 == 0;
            }
          }

          while (v34);
          do
          {
            v35 = *(v31 - 32);
            v36 = *(v31 - 17);
            v31 = (v31 - 168);
            if (v35 == v14)
            {
              v37 = v36 < v15;
            }

            else
            {
              v37 = v35 == 0;
            }
          }

          while (!v37);
        }

        while (v7 < v31);
      }

      v38 = (v7 - 168);
      if (v7 - 168 != a1)
      {
        v39 = *v38;
        v40 = *(v7 - 152);
        *(a1 + 32) = *(v7 - 136);
        *a1 = v39;
        *(a1 + 16) = v40;
        sub_10016D9A8(v212, (v7 - 128));
        sub_10016D9A8(a1 + 64, (v7 - 104));
        sub_10016D9A8(a1 + 88, (v7 - 80));
        sub_10016D9A8(a1 + 112, (v7 - 56));
        *(a1 + 136) = *(v7 - 32);
        sub_10016D9A8(a1 + 144, (v7 - 24));
      }

      *v38 = v277;
      *(v7 - 152) = v283;
      *(v7 - 136) = v15;
      v41 = *(v7 - 128);
      if (v41)
      {
        *(v7 - 120) = v41;
        operator delete(v41);
      }

      *(v7 - 128) = v216;
      *(v7 - 112) = v214;
      v42 = *(v7 - 104);
      --a3;
      if (v42)
      {
        *(v7 - 96) = v42;
        operator delete(v42);
      }

      *(v7 - 104) = v224;
      *(v7 - 88) = v220;
      v43 = *(v7 - 80);
      if (v43)
      {
        *(v7 - 72) = v43;
        operator delete(v43);
      }

      *(v7 - 80) = v234;
      *(v7 - 64) = v228;
      v44 = *(v7 - 56);
      if (v44)
      {
        *(v7 - 48) = v44;
        operator delete(v44);
      }

      *(v7 - 56) = v247;
      *(v7 - 40) = v240;
      *(v7 - 32) = v14;
      v45 = *(v7 - 24);
      if (v45)
      {
        *(v7 - 16) = v45;
        operator delete(v45);
      }

      *(v7 - 24) = v261;
      *(v7 - 8) = v254;
      v46 = v19 >= v21;
      a2 = v274;
      if (!v46)
      {
        goto LABEL_66;
      }

      v47 = sub_10040996C(a1, v7 - 168);
      if (sub_10040996C(v7, v274))
      {
        a2 = v7 - 168;
        if (!v47)
        {
          goto LABEL_1;
        }

        return;
      }

      if (!v47)
      {
LABEL_66:
        sub_10040804C(a1, v7 - 168, v268, a4 & 1);
        a4 = 0;
      }
    }

    else
    {
      v15 = *(v7 + 32);
      if (*(v7 - 32) == v14)
      {
        v16 = *(v7 - 136) < v15;
      }

      else
      {
        v16 = *(v7 - 32) == 0;
      }

      if (v16)
      {
        goto LABEL_20;
      }

      v278 = *v7;
      v284 = *(v7 + 16);
      v48 = *(v7 + 40);
      v49 = *(v7 + 56);
      *(v7 + 40) = 0;
      *(v7 + 48) = 0;
      *(v7 + 56) = 0;
      v225 = v48;
      v229 = *(v7 + 64);
      v217 = *(v7 + 80);
      *(v7 + 64) = 0;
      *(v7 + 72) = 0;
      *(v7 + 80) = 0;
      v235 = *(v7 + 88);
      v221 = *(v7 + 104);
      *(v7 + 88) = 0;
      *(v7 + 96) = 0;
      *(v7 + 104) = 0;
      v248 = *(v7 + 112);
      v241 = *(v7 + 128);
      *(v7 + 112) = 0;
      *(v7 + 120) = 0;
      *(v7 + 128) = 0;
      v262 = *(v7 + 144);
      v255 = *(v7 + 160);
      *(v7 + 144) = 0;
      *(v7 + 152) = 0;
      v50 = v14 == 0;
      *(v7 + 160) = 0;
      if (v14 == *(a2 - 32))
      {
        v50 = v15 < *(a2 - 136);
      }

      if (v50)
      {
        v51 = v7;
        do
        {
          v52 = v14 == 0;
          v7 = v51 + 168;
          v53 = *(v51 + 304);
          v54 = v15 < *(v51 + 200);
          if (v14 == v53)
          {
            v52 = v54;
          }

          v51 = v7;
        }

        while (!v52);
      }

      else
      {
        v55 = v7 + 168;
        do
        {
          v7 = v55;
          if (v55 >= v274)
          {
            break;
          }

          v56 = v14 == *(v55 + 136) ? v15 < *(v55 + 32) : v14 == 0;
          v55 += 168;
        }

        while (!v56);
      }

      v57 = v274;
      if (v7 < v274)
      {
        v58 = v274;
        do
        {
          v59 = v14 == 0;
          v57 = (v58 - 168);
          v60 = *(v58 - 32);
          v61 = v15 < *(v58 - 136);
          if (v14 == v60)
          {
            v59 = v61;
          }

          v58 = v57;
        }

        while (v59);
      }

      while (v7 < v57)
      {
        sub_100409DB4(v7, v57);
        do
        {
          v62 = v14 == 0;
          v63 = *(v7 + 304);
          v64 = *(v7 + 200);
          v7 += 168;
          if (v14 == v63)
          {
            v62 = v15 < v64;
          }
        }

        while (!v62);
        do
        {
          v65 = v14 == 0;
          v66 = *(v57 - 32);
          v67 = *(v57 - 17);
          v57 = (v57 - 168);
          if (v14 == v66)
          {
            v65 = v15 < v67;
          }
        }

        while (v65);
      }

      v68 = (v7 - 168);
      if (v7 - 168 != a1)
      {
        v69 = *v68;
        v70 = *(v7 - 152);
        *(a1 + 32) = *(v7 - 136);
        *a1 = v69;
        *(a1 + 16) = v70;
        sub_10016D9A8(a1 + 40, (v7 - 128));
        sub_10016D9A8(a1 + 64, (v7 - 104));
        sub_10016D9A8(a1 + 88, (v7 - 80));
        sub_10016D9A8(a1 + 112, (v7 - 56));
        *(a1 + 136) = *(v7 - 32);
        sub_10016D9A8(a1 + 144, (v7 - 24));
      }

      *v68 = v278;
      *(v7 - 152) = v284;
      *(v7 - 136) = v15;
      v71 = *(v7 - 128);
      if (v71)
      {
        *(v7 - 120) = v71;
        operator delete(v71);
      }

      *(v7 - 128) = v225;
      *(v7 - 112) = v49;
      v72 = *(v7 - 104);
      if (v72)
      {
        *(v7 - 96) = v72;
        operator delete(v72);
      }

      *(v7 - 104) = v229;
      *(v7 - 88) = v217;
      v73 = *(v7 - 80);
      a3 = v268;
      if (v73)
      {
        *(v7 - 72) = v73;
        operator delete(v73);
      }

      *(v7 - 80) = v235;
      *(v7 - 64) = v221;
      v74 = *(v7 - 56);
      a2 = v274;
      if (v74)
      {
        *(v7 - 48) = v74;
        operator delete(v74);
      }

      *(v7 - 56) = v248;
      *(v7 - 40) = v241;
      *(v7 - 32) = v14;
      v75 = *(v7 - 24);
      if (v75)
      {
        *(v7 - 16) = v75;
        operator delete(v75);
      }

      a4 = 0;
      *(v7 - 24) = v262;
      *(v7 - 8) = v255;
    }
  }

  sub_100409634(v7, v7 + 168, v7 + 336);
  if (*(a2 - 32) == *(v7 + 472))
  {
    v79 = *(a2 - 136) < *(v7 + 368);
  }

  else
  {
    v79 = *(a2 - 32) == 0;
  }

  if (v79)
  {
    sub_100409DB4((v7 + 336), v209);
    if (*(v7 + 472) == *(v7 + 304) ? *(v7 + 368) < *(v7 + 200) : *(v7 + 472) == 0)
    {
      sub_100409DB4((v7 + 168), (v7 + 336));
      if (*(v7 + 304) == *(v7 + 136) ? *(v7 + 200) < *(v7 + 32) : *(v7 + 304) == 0)
      {
        v78 = (v7 + 168);
        v77 = v7;
        goto LABEL_118;
      }
    }
  }
}

double sub_100409634(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v6 = *(a2 + 136);
  v7 = *(a2 + 136) == 0;
  result = *(a2 + 32);
  if (v6 == *(a1 + 136))
  {
    v7 = result < *(a1 + 32);
  }

  if (*(a3 + 136) == v6)
  {
    v9 = *(a3 + 32) < result;
  }

  else
  {
    v9 = *(a3 + 136) == 0;
  }

  if (v7)
  {
    if (v9)
    {
LABEL_13:
      v11 = a3;
LABEL_20:

      *&result = sub_100409DB4(a1, v11).n128_u64[0];
      return result;
    }

    sub_100409DB4(a1, a2);
    result = *(a3 + 32);
    if (*(a3 + 136) == *(a2 + 136))
    {
      v10 = result < *(a2 + 32);
    }

    else
    {
      v10 = *(a3 + 136) == 0;
    }

    if (v10)
    {
      a1 = a2;
      goto LABEL_13;
    }
  }

  else if (v9)
  {
    sub_100409DB4(a2, a3);
    result = *(a2 + 32);
    if (*(a2 + 136) == *(v5 + 136) ? result < *(v5 + 32) : *(a2 + 136) == 0)
    {
      a1 = v5;
      v11 = a2;
      goto LABEL_20;
    }
  }

  return result;
}

double sub_100409764(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_100409634(a1, a2, a3);
  if (*(a4 + 136) == *(a3 + 136))
  {
    v10 = *(a4 + 32) < *(a3 + 32);
  }

  else
  {
    v10 = *(a4 + 136) == 0;
  }

  if (v10)
  {
    sub_100409DB4(a3, a4);
    if (*(a3 + 136) == *(a2 + 136) ? *(a3 + 32) < *(a2 + 32) : *(a3 + 136) == 0)
    {
      sub_100409DB4(a2, a3);
      if (*(a2 + 136) == *(a1 + 136) ? *(a2 + 32) < *(a1 + 32) : *(a2 + 136) == 0)
      {
        sub_100409DB4(a1, a2);
      }
    }
  }

  result = *(a5 + 32);
  if (*(a5 + 136) == *(a4 + 136))
  {
    v14 = result < *(a4 + 32);
  }

  else
  {
    v14 = *(a5 + 136) == 0;
  }

  if (v14)
  {
    sub_100409DB4(a4, a5);
    result = *(a4 + 32);
    if (*(a4 + 136) == *(a3 + 136) ? result < *(a3 + 32) : *(a4 + 136) == 0)
    {
      sub_100409DB4(a3, a4);
      result = *(a3 + 32);
      if (*(a3 + 136) == *(a2 + 136) ? result < *(a2 + 32) : *(a3 + 136) == 0)
      {
        sub_100409DB4(a2, a3);
        result = *(a2 + 32);
        if (*(a2 + 136) == *(a1 + 136) ? result < *(a1 + 32) : *(a2 + 136) == 0)
        {

          *&result = sub_100409DB4(a1, a2).n128_u64[0];
        }
      }
    }
  }

  return result;
}

BOOL sub_10040996C(uint64_t a1, uint64_t a2)
{
  v4 = 0xCF3CF3CF3CF3CF3DLL * ((a2 - a1) >> 3);
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        sub_100409634(a1, a1 + 168, a2 - 168);
        return 1;
      case 4:
        sub_100409634(a1, a1 + 168, a1 + 336);
        if (*(a2 - 32) == *(a1 + 472))
        {
          v33 = *(a2 - 136) < *(a1 + 368);
        }

        else
        {
          v33 = *(a2 - 32) == 0;
        }

        if (!v33)
        {
          return 1;
        }

        sub_100409DB4((a1 + 336), (a2 - 168));
        if (!(*(a1 + 472) == *(a1 + 304) ? *(a1 + 368) < *(a1 + 200) : *(a1 + 472) == 0))
        {
          return 1;
        }

        sub_100409DB4((a1 + 168), (a1 + 336));
        if (!(*(a1 + 304) == *(a1 + 136) ? *(a1 + 200) < *(a1 + 32) : *(a1 + 304) == 0))
        {
          return 1;
        }

        v6 = (a1 + 168);
LABEL_9:
        sub_100409DB4(a1, v6);
        return 1;
      case 5:
        sub_100409764(a1, a1 + 168, a1 + 336, a1 + 504, a2 - 168);
        return 1;
    }
  }

  else
  {
    if (v4 < 2)
    {
      return 1;
    }

    if (v4 == 2)
    {
      if (*(a2 - 32) == *(a1 + 136))
      {
        v5 = *(a2 - 136) < *(a1 + 32);
      }

      else
      {
        v5 = *(a2 - 32) == 0;
      }

      if (!v5)
      {
        return 1;
      }

      v6 = (a2 - 168);
      goto LABEL_9;
    }
  }

  v7 = a1 + 336;
  sub_100409634(a1, a1 + 168, a1 + 336);
  v8 = a1 + 504;
  if (a1 + 504 == a2)
  {
    return 1;
  }

  v9 = 0;
  v10 = 0;
  while (1)
  {
    v11 = *(v8 + 136);
    v12 = *(v8 + 136) == 0;
    v13 = *(v8 + 32);
    if (v11 == *(v7 + 136))
    {
      v12 = v13 < *(v7 + 32);
    }

    if (v12)
    {
      v46 = *v8;
      v47 = *(v8 + 16);
      v14 = *(v8 + 40);
      v15 = *(v8 + 48);
      *(v8 + 40) = 0;
      *(v8 + 48) = 0;
      v39 = *(v8 + 64);
      v37 = v15;
      v38 = *(v8 + 72);
      *(v8 + 56) = 0;
      *(v8 + 64) = 0;
      *(v8 + 72) = 0;
      *(v8 + 80) = 0;
      v41 = *(v8 + 88);
      v40 = *(v8 + 96);
      *(v8 + 88) = 0;
      *(v8 + 96) = 0;
      v43 = *(v8 + 112);
      v42 = *(v8 + 120);
      *(v8 + 104) = 0;
      *(v8 + 112) = 0;
      *(v8 + 120) = 0;
      *(v8 + 128) = 0;
      v45 = *(v8 + 144);
      v44 = *(v8 + 152);
      *(v8 + 144) = 0;
      *(v8 + 152) = 0;
      v16 = v9;
      *(v8 + 160) = 0;
      while (1)
      {
        v17 = v16;
        v18 = a1 + v16;
        v19 = (a1 + v16 + 504);
        v20 = *(v18 + 352);
        *v19 = *(v18 + 336);
        v19[1] = v20;
        *(v18 + 536) = *(v18 + 368);
        sub_10016D9A8(v18 + 544, (v18 + 376));
        sub_10016D9A8(v18 + 568, (v18 + 400));
        sub_10016D9A8(v18 + 592, (v18 + 424));
        sub_10016D9A8(v18 + 616, (v18 + 448));
        *(v18 + 640) = *(v18 + 472);
        sub_10016D9A8(v18 + 648, (v18 + 480));
        if (v17 == -336)
        {
          break;
        }

        if (v11 == *(v18 + 304))
        {
          v21 = v13 < *(v18 + 200);
        }

        else
        {
          v21 = v11 == 0;
        }

        v16 = v17 - 168;
        if (!v21)
        {
          v22 = a1 + v16 + 504;
          goto LABEL_28;
        }
      }

      v22 = a1;
LABEL_28:
      *v22 = v46;
      *(v22 + 16) = v47;
      *(v22 + 32) = v13;
      v23 = *(v18 + 376);
      if (v23)
      {
        *(v22 + 48) = v23;
        operator delete(v23);
        v24 = a1 + v17;
        *(v24 + 384) = 0;
        *(v24 + 392) = 0;
      }

      *(v18 + 376) = v14;
      *(v22 + 48) = v37;
      v25 = *(v18 + 400);
      if (v25)
      {
        *(v22 + 72) = v25;
        operator delete(v25);
        v26 = a1 + v17;
        *(v26 + 408) = 0;
        *(v26 + 416) = 0;
      }

      *(v18 + 400) = v39;
      *(v22 + 72) = v38;
      v27 = *(v18 + 424);
      if (v27)
      {
        *(v22 + 96) = v27;
        operator delete(v27);
        v28 = a1 + v17;
        *(v28 + 432) = 0;
        *(v28 + 440) = 0;
      }

      *(v18 + 424) = v41;
      *(v22 + 96) = v40;
      v29 = *(v18 + 448);
      if (v29)
      {
        *(v22 + 120) = v29;
        operator delete(v29);
        v30 = a1 + v17;
        *(v30 + 456) = 0;
        *(v30 + 464) = 0;
      }

      *(v18 + 448) = v43;
      *(v22 + 120) = v42;
      *(v22 + 136) = v11;
      v31 = *(v18 + 480);
      if (v31)
      {
        *(v22 + 152) = v31;
        operator delete(v31);
        v32 = a1 + v17;
        *(v32 + 488) = 0;
        *(v32 + 496) = 0;
      }

      *(v18 + 480) = v45;
      *(v22 + 152) = v44;
      if (++v10 == 8)
      {
        return v8 + 168 == a2;
      }
    }

    v7 = v8;
    v9 += 168;
    v8 += 168;
    if (v8 == a2)
    {
      return 1;
    }
  }
}

__n128 sub_100409DB4(__int128 *a1, __int128 *a2)
{
  v25 = *a1;
  v26 = a1[1];
  v27 = *(a1 + 4);
  v5 = *(a1 + 40);
  v4 = a1 + 5;
  v6 = *(a1 + 7);
  *v4 = 0;
  *(a1 + 6) = 0;
  *(a1 + 7) = 0;
  v18 = v5;
  v19 = a1[4];
  v7 = *(a1 + 10);
  *(a1 + 8) = 0;
  *(a1 + 9) = 0;
  *(a1 + 10) = 0;
  v20 = *(a1 + 88);
  v8 = *(a1 + 13);
  *(a1 + 11) = 0;
  *(a1 + 12) = 0;
  *(a1 + 13) = 0;
  v22 = a1[7];
  v21 = *(a1 + 16);
  *(a1 + 14) = 0;
  *(a1 + 15) = 0;
  *(a1 + 16) = 0;
  v9 = *(a1 + 136);
  v24 = a1[9];
  v23 = *(a1 + 20);
  *(a1 + 18) = 0;
  *(a1 + 19) = 0;
  *(a1 + 20) = 0;
  v10 = *a2;
  v11 = a2[1];
  *(a1 + 4) = *(a2 + 4);
  *a1 = v10;
  a1[1] = v11;
  sub_10016D9A8(v4, (a2 + 40));
  sub_10016D9A8((a1 + 4), a2 + 4);
  sub_10016D9A8(a1 + 88, (a2 + 88));
  sub_10016D9A8((a1 + 7), a2 + 7);
  *(a1 + 136) = *(a2 + 136);
  sub_10016D9A8((a1 + 9), a2 + 9);
  *a2 = v25;
  a2[1] = v26;
  *(a2 + 4) = v27;
  v12 = *(a2 + 5);
  if (v12)
  {
    *(a2 + 6) = v12;
    operator delete(v12);
  }

  *(a2 + 40) = v18;
  *(a2 + 7) = v6;
  v13 = *(a2 + 8);
  if (v13)
  {
    *(a2 + 9) = v13;
    operator delete(v13);
  }

  a2[4] = v19;
  *(a2 + 10) = v7;
  v14 = *(a2 + 11);
  if (v14)
  {
    *(a2 + 12) = v14;
    operator delete(v14);
  }

  *(a2 + 88) = v20;
  *(a2 + 13) = v8;
  v15 = *(a2 + 14);
  if (v15)
  {
    *(a2 + 15) = v15;
    operator delete(v15);
  }

  a2[7] = v22;
  *(a2 + 16) = v21;
  *(a2 + 136) = v9;
  v16 = *(a2 + 18);
  if (v16)
  {
    *(a2 + 19) = v16;
    operator delete(v16);
  }

  result = v24;
  a2[9] = v24;
  *(a2 + 20) = v23;
  return result;
}

uint64_t sub_100409F84(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_10040A00C(result, a4);
  }

  return result;
}

void sub_100409FEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_100019848(&a9);
  _Unwind_Resume(a1);
}

void sub_10040A00C(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x666666666666667)
  {
    sub_100404000(a1, a2);
  }

  sub_100019B38();
}

uint64_t sub_10040A058(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  v4 = a4;
  v11 = a4;
  v12 = a4;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  v10 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      v7 = *v6;
      *(v4 + 8) = *(v6 + 4);
      *v4 = v7;
      *(v4 + 24) = 0;
      *(v4 + 32) = 0;
      *(v4 + 16) = 0;
      sub_100403D6C(v4 + 16, v6[2], v6[3], 0xAAAAAAAAAAAAAAABLL * ((v6[3] - v6[2]) >> 4));
      v6 += 5;
      v4 = v12 + 40;
      v12 += 40;
    }

    while (v6 != a3);
  }

  v10 = 1;
  sub_100404124(v9);
  return v4;
}

double sub_10040A128(__n128 *a1, __n128 *a2, uint64_t a3, int a4, __n128 a5)
{
  v7 = a2;
  v8 = a1;
  v337 = a2;
  v338 = a1;
  while (1)
  {
    v9 = v7 - v8;
    v10 = 0xCCCCCCCCCCCCCCCDLL * ((v7 - v8) >> 3);
    if (v10 > 2)
    {
      switch(v10)
      {
        case 3:
          v337 = (v7 - 40);
          a5.n128_f64[0] = sub_10040C024(v8, (v8 + 40), (v7 - 40));
          return a5.n128_f64[0];
        case 4:
          v337 = (v7 - 40);
          a5.n128_f64[0] = sub_10040C4A8(v8, (v8 + 40), v8 + 5, (v7 - 40));
          return a5.n128_f64[0];
        case 5:
          v337 = (v7 - 40);
          a5.n128_f64[0] = sub_10040C78C(v8, (v8 + 40), v8 + 5, (v8 + 120), (v7 - 40));
          return a5.n128_f64[0];
      }
    }

    else
    {
      if (v10 < 2)
      {
        return a5.n128_f64[0];
      }

      if (v10 == 2)
      {
        v337 = (v7 - 40);
        v121 = v7[-3].n128_u64[1];
        v333 = v7[-2].n128_u16[0];
        v332 = v121;
        v335 = 0;
        v336 = 0;
        v334 = 0;
        sub_100403D6C(&v334, v7[-2].n128_i64[1], v7[-1].n128_i64[0], 0xAAAAAAAAAAAAAAABLL * ((v7[-1].n128_u64[0] - v7[-2].n128_u64[1]) >> 4));
        v122 = v8->n128_u64[0];
        v328 = v8->n128_u16[4];
        v327 = v122;
        v330 = 0;
        v331 = 0;
        v329 = 0;
        sub_100403D6C(&v329, v8[1].n128_i64[0], v8[1].n128_i64[1], 0xAAAAAAAAAAAAAAABLL * ((v8[1].n128_u64[1] - v8[1].n128_u64[0]) >> 4));
        v124 = v334;
        v123 = v335;
        v125 = v329;
        v126 = v330;
        if (v329)
        {
          v330 = v329;
          operator delete(v329);
        }

        v276 = v123 - v124;
        v277 = v126 - v125;
        if (v334)
        {
          v335 = v334;
          operator delete(v334);
        }

        if (v276 > v277)
        {
          a5.n128_u64[0] = sub_10040BF8C(&v338, &v337).n128_u64[0];
        }

        return a5.n128_f64[0];
      }
    }

    v304 = v8;
    if (v9 <= 959)
    {
      break;
    }

    if (!a3)
    {
      if (v8 == v7)
      {
        return a5.n128_f64[0];
      }

      v279 = v7 - v8;
      v284 = v7;
      v155 = (v10 - 2) >> 1;
      v156 = v155;
      while (2)
      {
        v157 = v156;
        if (v155 < v156)
        {
          goto LABEL_194;
        }

        v158 = (2 * v156) | 1;
        v159 = (v8 + 40 * v158);
        if (2 * v156 + 2 < v10)
        {
          v160 = v159->n128_u64[0];
          v399 = v159->n128_u16[4];
          v398 = v160;
          v401 = 0;
          v402 = 0;
          v400 = 0;
          sub_100403D6C(&v400, v159[1].n128_i64[0], v159[1].n128_i64[1], 0xAAAAAAAAAAAAAAABLL * ((v159[1].n128_u64[1] - v159[1].n128_u64[0]) >> 4));
          v161 = v159[2].n128_u64[1];
          v394 = v159[3].n128_u16[0];
          v393 = v161;
          v396 = 0;
          v397 = 0;
          v395 = 0;
          sub_100403D6C(&v395, v159[3].n128_i64[1], v159[4].n128_i64[0], 0xAAAAAAAAAAAAAAABLL * ((v159[4].n128_u64[0] - v159[3].n128_u64[1]) >> 4));
          v163 = v400;
          v162 = v401;
          v164 = v395;
          v165 = v396;
          if (v395)
          {
            v396 = v395;
            operator delete(v395);
          }

          v166 = v162 - v163;
          v167 = v165 - v164;
          if (v400)
          {
            v401 = v400;
            operator delete(v400);
          }

          v104 = v166 > v167;
          v8 = v304;
          if (v104)
          {
            v159 = (v159 + 40);
            v158 = 2 * v157 + 2;
          }
        }

        v287 = v157;
        v168 = (v8 + 40 * v157);
        v169 = v159->n128_u64[0];
        v389 = v159->n128_u16[4];
        v388 = v169;
        v391 = 0;
        v392 = 0;
        v390 = 0;
        sub_100403D6C(&v390, v159[1].n128_i64[0], v159[1].n128_i64[1], 0xAAAAAAAAAAAAAAABLL * ((v159[1].n128_u64[1] - v159[1].n128_u64[0]) >> 4));
        v170 = v168->n128_u64[0];
        v384 = v168->n128_u16[4];
        v383 = v170;
        v386 = 0;
        v387 = 0;
        v385 = 0;
        sub_100403D6C(&v385, v168[1].n128_i64[0], v168[1].n128_i64[1], 0xAAAAAAAAAAAAAAABLL * ((v168[1].n128_u64[1] - v168[1].n128_u64[0]) >> 4));
        v172 = v390;
        v171 = v391;
        v173 = v385;
        v174 = v386;
        if (v385)
        {
          v386 = v385;
          operator delete(v385);
          v175 = v390;
          if (v390)
          {
            goto LABEL_172;
          }
        }

        else
        {
          v175 = v390;
          if (v390)
          {
LABEL_172:
            v391 = v175;
            operator delete(v175);
          }
        }

        v104 = v171 - v172 > (v174 - v173);
        v8 = v304;
        v155 = (v10 - 2) >> 1;
        if (v104)
        {
LABEL_194:
          v156 = v157 - 1;
          if (!v157)
          {
            v200 = 0xCCCCCCCCCCCCCCCDLL * (v279 >> 3);
            v201 = v284;
            while (1)
            {
              v202 = v8;
              v203 = 0;
              v204 = v202->n128_u64[0];
              v374 = v202->n128_u16[4];
              v373 = v204;
              v301 = v202[1].n128_u64[0];
              v297 = v202[1].n128_u64[1];
              v288 = v201;
              v292 = v202[2].n128_u64[0];
              v202[1].n128_u64[1] = 0;
              v202[2].n128_u64[0] = 0;
              v202[1].n128_u64[0] = 0;
              v205 = (v200 - 2) >> 1;
              do
              {
                v206 = v202;
                v207 = v202 + 40 * v203;
                v202 = (v207 + 40);
                v208 = 2 * v203;
                v203 = (2 * v203) | 1;
                v209 = v208 + 2;
                if (v209 < v200)
                {
                  v314 = v209;
                  v210 = v202->n128_u64[0];
                  v399 = *(v207 + 24);
                  v398 = v210;
                  v401 = 0;
                  v402 = 0;
                  v400 = 0;
                  sub_100403D6C(&v400, *(v207 + 7), *(v207 + 8), 0xAAAAAAAAAAAAAAABLL * ((*(v207 + 8) - *(v207 + 7)) >> 4));
                  v211 = v200;
                  v213 = *(v207 + 10);
                  v212 = (v207 + 80);
                  v394 = v212->n128_u16[4];
                  v393 = v213;
                  v396 = 0;
                  v397 = 0;
                  v395 = 0;
                  sub_100403D6C(&v395, v212[1].n128_i64[0], v212[1].n128_i64[1], 0xAAAAAAAAAAAAAAABLL * ((v212[1].n128_u64[1] - v212[1].n128_u64[0]) >> 4));
                  v215 = v400;
                  v214 = v401;
                  v216 = v395;
                  v217 = v396;
                  if (v395)
                  {
                    v396 = v395;
                    operator delete(v395);
                  }

                  v218 = v214 - v215;
                  v219 = v217 - v216;
                  if (v400)
                  {
                    v401 = v400;
                    operator delete(v400);
                  }

                  v104 = v218 > v219;
                  v200 = v211;
                  if (v104)
                  {
                    v202 = v212;
                    v203 = v314;
                  }
                }

                v220 = v202->n128_u64[0];
                v206->n128_u16[4] = v202->n128_u16[4];
                v206->n128_u64[0] = v220;
                a5.n128_u64[0] = sub_10016D9A8(&v206[1], v202 + 1).n128_u64[0];
              }

              while (v203 <= v205);
              v201 = v288 - 5;
              if (v202 == (v288 - 5))
              {
                v246 = v373;
                v202->n128_u16[4] = v374;
                v202->n128_u64[0] = v246;
                v247 = v202[1].n128_u64[0];
                if (v247)
                {
                  v202[1].n128_u64[1] = v247;
                  operator delete(v247);
                  v202[1].n128_u64[0] = 0;
                  v202[1].n128_u64[1] = 0;
                  v202[2].n128_u64[0] = 0;
                }

                v202[1].n128_u64[0] = v301;
                v202[1].n128_u64[1] = v297;
                v202[2].n128_u64[0] = v292;
                v8 = v304;
              }

              else
              {
                v221 = *v201;
                v202->n128_u16[4] = *(v288 - 16);
                v202->n128_u64[0] = v221;
                a5.n128_u64[0] = sub_10016D9A8(&v202[1], (v288 - 3)).n128_u64[0];
                *v201 = v373;
                *(v288 - 16) = v374;
                v222 = *(v288 - 3);
                if (v222)
                {
                  *(v288 - 2) = v222;
                  operator delete(v222);
                  *(v288 - 3) = 0;
                  *(v288 - 2) = 0;
                  *(v288 - 1) = 0;
                }

                *(v288 - 3) = v301;
                *(v288 - 2) = v297;
                *(v288 - 1) = v292;
                v8 = v304;
                v223 = &v202[2].n128_i8[8] - v304;
                if (v223 >= 41)
                {
                  v224 = (-2 - 0x3333333333333333 * (v223 >> 3)) >> 1;
                  v225 = (v304 + 40 * v224);
                  v226 = v225->n128_u64[0];
                  v399 = v225->n128_u16[4];
                  v398 = v226;
                  v401 = 0;
                  v402 = 0;
                  v400 = 0;
                  sub_100403D6C(&v400, v225[1].n128_i64[0], v225[1].n128_i64[1], 0xAAAAAAAAAAAAAAABLL * ((v225[1].n128_u64[1] - v225[1].n128_u64[0]) >> 4));
                  v227 = v202->n128_u64[0];
                  v394 = v202->n128_u16[4];
                  v393 = v227;
                  v396 = 0;
                  v397 = 0;
                  v395 = 0;
                  sub_100403D6C(&v395, v202[1].n128_i64[0], v202[1].n128_i64[1], 0xAAAAAAAAAAAAAAABLL * ((v202[1].n128_u64[1] - v202[1].n128_u64[0]) >> 4));
                  v229 = v400;
                  v228 = v401;
                  v230 = v395;
                  v231 = v396;
                  if (v395)
                  {
                    v396 = v395;
                    operator delete(v395);
                    v232 = v400;
                    if (v400)
                    {
                      goto LABEL_214;
                    }
                  }

                  else
                  {
                    v232 = v400;
                    if (v400)
                    {
LABEL_214:
                      v401 = v232;
                      operator delete(v232);
                    }
                  }

                  v104 = v228 - v229 > (v231 - v230);
                  v8 = v304;
                  if (!v104)
                  {
                    goto LABEL_232;
                  }

                  v233 = v202->n128_u64[0];
                  v379 = v202->n128_u16[4];
                  v378 = v233;
                  v234 = v202[1].n128_i64[0];
                  v235 = *(&v202[1] + 8);
                  v202[1].n128_u64[1] = 0;
                  v202[2].n128_u64[0] = 0;
                  v202[1].n128_u64[0] = 0;
                  v298 = v235;
                  v315 = v234;
                  v236 = v235;
                  v302 = 0xAAAAAAAAAAAAAAABLL * ((v235 - v234) >> 4);
                  while (2)
                  {
                    v237 = v225;
                    v238 = v225->n128_u64[0];
                    v202->n128_u16[4] = v225->n128_u16[4];
                    v202->n128_u64[0] = v238;
                    sub_10016D9A8(&v202[1], v225 + 1);
                    if (!v224)
                    {
LABEL_229:
                      v248 = v378;
                      v237->n128_u16[4] = v379;
                      v237->n128_u64[0] = v248;
                      v249 = v237[1].n128_u64[0];
                      if (v249)
                      {
                        v237[1].n128_u64[1] = v249;
                        operator delete(v249);
                        v237[1].n128_u64[0] = 0;
                        v237[1].n128_u64[1] = 0;
                        v237[2].n128_u64[0] = 0;
                      }

                      v237[1].n128_u64[0] = v315;
                      a5.n128_u64[0] = v298.n128_u64[0];
                      *(v237 + 24) = v298;
                      v8 = v304;
                      v201 = v288 - 5;
                      break;
                    }

                    v224 = (v224 - 1) >> 1;
                    v225 = (v304 + 40 * v224);
                    v239 = v225->n128_u64[0];
                    v389 = v225->n128_u16[4];
                    v388 = v239;
                    v391 = 0;
                    v392 = 0;
                    v390 = 0;
                    sub_100403D6C(&v390, v225[1].n128_i64[0], v225[1].n128_i64[1], 0xAAAAAAAAAAAAAAABLL * ((v225[1].n128_u64[1] - v225[1].n128_u64[0]) >> 4));
                    v383 = v378;
                    v384 = v379;
                    v386 = 0;
                    v387 = 0;
                    v385 = 0;
                    sub_100403D6C(&v385, v315, v236, v302);
                    v241 = v390;
                    v240 = v391;
                    v242 = v385;
                    v243 = v386;
                    if (v385)
                    {
                      v386 = v385;
                      operator delete(v385);
                      v244 = v390;
                      if (v390)
                      {
                        goto LABEL_221;
                      }
                    }

                    else
                    {
                      v244 = v390;
                      if (v390)
                      {
LABEL_221:
                        v391 = v244;
                        operator delete(v244);
                      }
                    }

                    v245 = v243 - v242;
                    v202 = v237;
                    if (v240 - v241 <= v245)
                    {
                      goto LABEL_229;
                    }

                    continue;
                  }
                }
              }

LABEL_232:
              v104 = v200-- <= 2;
              if (v104)
              {
                return a5.n128_f64[0];
              }
            }
          }

          continue;
        }

        break;
      }

      v176 = v168->n128_u64[0];
      v359 = v168->n128_u16[4];
      v358 = v176;
      v177 = v168[1].n128_i64[0];
      v178 = *(&v168[1] + 8);
      v168[1].n128_u64[1] = 0;
      v168[2].n128_u64[0] = 0;
      v168[1].n128_u64[0] = 0;
      v281 = v178;
      v313 = v177;
      v300 = v178;
      v296 = 0xAAAAAAAAAAAAAAABLL * ((v178 - v177) >> 4);
      while (2)
      {
        v179 = v159;
        v180 = v159->n128_u64[0];
        v168->n128_u16[4] = v159->n128_u16[4];
        v168->n128_u64[0] = v180;
        sub_10016D9A8(&v168[1], v159 + 1);
        if (v155 < v158)
        {
LABEL_191:
          v198 = v358;
          v179->n128_u16[4] = v359;
          v179->n128_u64[0] = v198;
          v199 = v179[1].n128_u64[0];
          if (v199)
          {
            v179[1].n128_u64[1] = v199;
            operator delete(v199);
            v179[1].n128_u64[0] = 0;
            v179[1].n128_u64[1] = 0;
            v179[2].n128_u64[0] = 0;
          }

          v179[1].n128_u64[0] = v313;
          *(v179 + 24) = v281;
          v157 = v287;
          goto LABEL_194;
        }

        v181 = 2 * v158;
        v158 = (2 * v158) | 1;
        v159 = (v8 + 40 * v158);
        v182 = v181 + 2;
        if (v181 + 2 < v10)
        {
          v183 = v159->n128_u64[0];
          v379 = v159->n128_u16[4];
          v378 = v183;
          v381 = 0;
          v382 = 0;
          v380 = 0;
          sub_100403D6C(&v380, v159[1].n128_i64[0], v159[1].n128_i64[1], 0xAAAAAAAAAAAAAAABLL * ((v159[1].n128_u64[1] - v159[1].n128_u64[0]) >> 4));
          v184 = v159[2].n128_u64[1];
          v374 = v159[3].n128_u16[0];
          v373 = v184;
          v376 = 0;
          v377 = 0;
          __p = 0;
          sub_100403D6C(&__p, v159[3].n128_i64[1], v159[4].n128_i64[0], 0xAAAAAAAAAAAAAAABLL * ((v159[4].n128_u64[0] - v159[3].n128_u64[1]) >> 4));
          v185 = v381;
          v186 = v380;
          v187 = v376;
          v188 = __p;
          if (__p)
          {
            v376 = __p;
            operator delete(__p);
          }

          v189 = v185 - v186;
          v190 = v187 - v188;
          if (v380)
          {
            v381 = v380;
            operator delete(v380);
          }

          v104 = v189 > v190;
          v8 = v304;
          v155 = (v10 - 2) >> 1;
          if (v104)
          {
            v159 = (v159 + 40);
            v158 = v182;
          }
        }

        v191 = v159->n128_u64[0];
        v369 = v159->n128_u16[4];
        v368 = v191;
        v371 = 0;
        v372 = 0;
        v370 = 0;
        sub_100403D6C(&v370, v159[1].n128_i64[0], v159[1].n128_i64[1], 0xAAAAAAAAAAAAAAABLL * ((v159[1].n128_u64[1] - v159[1].n128_u64[0]) >> 4));
        v363 = v358;
        v364 = v359;
        v366 = 0;
        v367 = 0;
        v365 = 0;
        sub_100403D6C(&v365, v313, v300, v296);
        v192 = v371;
        v193 = v370;
        v194 = v366;
        v195 = v365;
        if (v365)
        {
          v366 = v365;
          operator delete(v365);
          v196 = v370;
          if (v370)
          {
            goto LABEL_186;
          }
        }

        else
        {
          v196 = v370;
          if (v370)
          {
LABEL_186:
            v371 = v196;
            operator delete(v196);
          }
        }

        v197 = v192 - v193;
        v168 = v179;
        if (v197 > v194 - v195)
        {
          goto LABEL_191;
        }

        continue;
      }
    }

    v11 = v10 >> 1;
    v12 = (v7 - 40);
    if (v9 < 0x1401)
    {
      sub_10040C024((v8 + 40 * v11), v8, v12);
      v19 = v338;
    }

    else
    {
      sub_10040C024(v8, (v8 + 40 * (v10 >> 1)), v12);
      v13 = v337;
      v14 = v338;
      v15 = v338 + 40 * v11;
      sub_10040C024((v338 + 40), (v15 - 40), v337 - 5);
      sub_10040C024(v14 + 5, (v15 + 40), (v13 - 120));
      sub_10040C024((v15 - 40), v15, (v15 + 40));
      v398 = v14->n128_u64[0];
      v399 = v14->n128_u16[4];
      v307 = v14[1];
      v16 = v14[2].n128_u64[0];
      v14[1].n128_u64[0] = 0;
      v14[1].n128_u64[1] = 0;
      v14[2].n128_u64[0] = 0;
      v17 = *v15;
      v14->n128_u16[4] = *(v15 + 4);
      v14->n128_u64[0] = v17;
      sub_10016D9A8(&v14[1], v15 + 1);
      *v15 = v398;
      *(v15 + 4) = v399;
      v18 = *(v15 + 2);
      if (v18)
      {
        *(v15 + 3) = v18;
        operator delete(v18);
      }

      *(v15 + 1) = v307;
      *(v15 + 4) = v16;
      v19 = v14;
    }

    v299 = a3 - 1;
    v305 = v19;
    if ((a4 & 1) == 0)
    {
      v20 = v19[-3].n128_u64[1];
      v323 = v19[-2].n128_u16[0];
      v322 = v20;
      v325 = 0;
      v326 = 0;
      v324 = 0;
      v21 = v19;
      sub_100403D6C(&v324, v19[-2].n128_i64[1], v19[-1].n128_i64[0], 0xAAAAAAAAAAAAAAABLL * ((v19[-1].n128_u64[0] - v19[-2].n128_u64[1]) >> 4));
      v318 = v21->n128_u16[4];
      v317 = v21->n128_u64[0];
      v320 = 0;
      v321 = 0;
      v319 = 0;
      v22 = v21 + 1;
      sub_100403D6C(&v319, v21[1].n128_i64[0], v21[1].n128_i64[1], 0xAAAAAAAAAAAAAAABLL * ((v21[1].n128_u64[1] - v21[1].n128_u64[0]) >> 4));
      v24 = v324;
      v23 = v325;
      v25 = v319;
      v26 = v320;
      if (v319)
      {
        v320 = v319;
        operator delete(v319);
      }

      v27 = v23 - v24;
      v28 = v26 - v25;
      if (v324)
      {
        v325 = v324;
        operator delete(v324);
      }

      v19 = v305;
      if (v27 <= v28)
      {
        v72 = v337;
        v351 = v337;
        v352 = v305;
        v349 = v305->n128_u64[0];
        v73 = v349;
        v350 = v305->n128_u16[4];
        v74 = v350;
        v75 = v305[1].n128_i64[0];
        v76 = *(&v305[1] + 8);
        v22->n128_u64[1] = 0;
        v22[1].n128_u64[0] = 0;
        v290 = v22;
        v22->n128_u64[0] = 0;
        v398 = v73;
        v399 = v74;
        v401 = 0;
        v402 = 0;
        v400 = 0;
        v294 = v76;
        v77 = v76;
        v78 = 0xAAAAAAAAAAAAAAABLL * ((v76 - v75) >> 4);
        sub_100403D6C(&v400, v75, v76, v78);
        v79 = v75;
        v80 = v72[-3].n128_u64[1];
        v394 = v72[-2].n128_u16[0];
        v393 = v80;
        v396 = 0;
        v397 = 0;
        v395 = 0;
        sub_100403D6C(&v395, v72[-2].n128_i64[1], v72[-1].n128_i64[0], 0xAAAAAAAAAAAAAAABLL * ((v72[-1].n128_u64[0] - v72[-2].n128_u64[1]) >> 4));
        v81 = v400;
        v309 = v401;
        v82 = v395;
        v83 = v396;
        if (v395)
        {
          v396 = v395;
          operator delete(v395);
          v84 = v400;
          if (!v400)
          {
LABEL_74:
            if (v309 - v81 > (v83 - v82))
            {
              while (1)
              {
                v352 = (v352 + 40);
                v388 = v349;
                v389 = v350;
                v391 = 0;
                v392 = 0;
                v390 = 0;
                sub_100403D6C(&v390, v79, v77, v78);
                v85 = v352->n128_u16[4];
                v383 = v352->n128_u64[0];
                v384 = v85;
                v386 = 0;
                v387 = 0;
                v385 = 0;
                sub_100403D6C(&v385, v352[1].n128_i64[0], v352[1].n128_i64[1], 0xAAAAAAAAAAAAAAABLL * ((v352[1].n128_u64[1] - v352[1].n128_u64[0]) >> 4));
                v86 = v390;
                v310 = v391;
                v88 = v385;
                v87 = v386;
                if (!v385)
                {
                  break;
                }

                v386 = v385;
                operator delete(v385);
                v89 = v390;
                if (v390)
                {
                  goto LABEL_77;
                }

LABEL_78:
                if (v310 - v86 > (v87 - v88))
                {
                  goto LABEL_88;
                }
              }

              v89 = v390;
              if (!v390)
              {
                goto LABEL_78;
              }

LABEL_77:
              v391 = v89;
              operator delete(v89);
              goto LABEL_78;
            }

            do
            {
              v352 = (v352 + 40);
              if (v352 >= v351)
              {
                break;
              }

              v378 = v349;
              v379 = v350;
              v381 = 0;
              v382 = 0;
              v380 = 0;
              sub_100403D6C(&v380, v79, v77, v78);
              v90 = v352->n128_u16[4];
              v373 = v352->n128_u64[0];
              v374 = v90;
              v376 = 0;
              v377 = 0;
              __p = 0;
              sub_100403D6C(&__p, v352[1].n128_i64[0], v352[1].n128_i64[1], 0xAAAAAAAAAAAAAAABLL * ((v352[1].n128_u64[1] - v352[1].n128_u64[0]) >> 4));
              v91 = v381;
              v92 = v380;
              v93 = v376;
              v94 = __p;
              if (__p)
              {
                v376 = __p;
                operator delete(__p);
              }

              v95 = v91 - v92;
              if (v380)
              {
                v381 = v380;
                operator delete(v380);
              }
            }

            while (v95 <= v93 - v94);
LABEL_88:
            v96 = v351;
            v97 = v352;
            v98 = v79;
            if (v352 >= v351)
            {
              goto LABEL_101;
            }

            while (1)
            {
              v351 = (v351 - 40);
              v368 = v349;
              v369 = v350;
              v371 = 0;
              v372 = 0;
              v370 = 0;
              sub_100403D6C(&v370, v98, v77, v78);
              v99 = v351->n128_u16[4];
              v363 = v351->n128_u64[0];
              v364 = v99;
              v366 = 0;
              v367 = 0;
              v365 = 0;
              sub_100403D6C(&v365, v351[1].n128_i64[0], v351[1].n128_i64[1], 0xAAAAAAAAAAAAAAABLL * ((v351[1].n128_u64[1] - v351[1].n128_u64[0]) >> 4));
              v311 = v371;
              v100 = v370;
              v101 = v366;
              v102 = v365;
              if (!v365)
              {
                break;
              }

              v366 = v365;
              operator delete(v365);
              v103 = v370;
              if (v370)
              {
                goto LABEL_91;
              }

LABEL_92:
              v104 = v311 - v100 > (v101 - v102);
              v98 = v79;
              if (!v104)
              {
LABEL_100:
                v96 = v351;
                v97 = v352;
LABEL_101:
                if (v97 < v96)
                {
                  sub_10040BF8C(&v352, &v351);
                  while (1)
                  {
                    v352 = (v352 + 40);
                    v358 = v349;
                    v359 = v350;
                    v361 = 0;
                    v362 = 0;
                    v360 = 0;
                    sub_100403D6C(&v360, v98, v77, v78);
                    v105 = v352->n128_u16[4];
                    v353 = v352->n128_u64[0];
                    v354 = v105;
                    v356 = 0;
                    v357 = 0;
                    v355 = 0;
                    sub_100403D6C(&v355, v352[1].n128_i64[0], v352[1].n128_i64[1], 0xAAAAAAAAAAAAAAABLL * ((v352[1].n128_u64[1] - v352[1].n128_u64[0]) >> 4));
                    v107 = v360;
                    v106 = v361;
                    v109 = v355;
                    v108 = v356;
                    if (!v355)
                    {
                      break;
                    }

                    v356 = v355;
                    operator delete(v355);
                    v110 = v360;
                    if (v360)
                    {
                      goto LABEL_105;
                    }

LABEL_106:
                    v104 = v106 - v107 > (v108 - v109);
                    v98 = v79;
                    if (v104)
                    {
                      while (1)
                      {
                        v351 = (v351 - 40);
                        v344 = v349;
                        v345 = v350;
                        v347 = 0;
                        v348 = 0;
                        v346 = 0;
                        sub_100403D6C(&v346, v98, v77, v78);
                        v112 = v351->n128_u16[4];
                        v339 = v351->n128_u64[0];
                        v340 = v112;
                        v342 = 0;
                        v343 = 0;
                        v341 = 0;
                        sub_100403D6C(&v341, v351[1].n128_i64[0], v351[1].n128_i64[1], 0xAAAAAAAAAAAAAAABLL * ((v351[1].n128_u64[1] - v351[1].n128_u64[0]) >> 4));
                        v114 = v346;
                        v113 = v347;
                        v116 = v341;
                        v115 = v342;
                        if (!v341)
                        {
                          break;
                        }

                        v342 = v341;
                        operator delete(v341);
                        v111 = v346;
                        if (v346)
                        {
                          goto LABEL_115;
                        }

LABEL_116:
                        v104 = v113 - v114 > (v115 - v116);
                        v98 = v79;
                        if (!v104)
                        {
                          goto LABEL_100;
                        }
                      }

                      v111 = v346;
                      if (!v346)
                      {
                        goto LABEL_116;
                      }

LABEL_115:
                      v347 = v111;
                      operator delete(v111);
                      goto LABEL_116;
                    }
                  }

                  v110 = v360;
                  if (!v360)
                  {
                    goto LABEL_106;
                  }

LABEL_105:
                  v361 = v110;
                  operator delete(v110);
                  goto LABEL_106;
                }

                v117 = &v97[-3].n128_u64[1];
                if (&v97[-3].n128_i8[8] != v305)
                {
                  v118 = *v117;
                  v305->n128_u16[4] = v97[-2].n128_u16[0];
                  v305->n128_u64[0] = v118;
                  sub_10016D9A8(v290, (v97 - 24));
                }

                v119 = v349;
                v97[-2].n128_u16[0] = v350;
                *v117 = v119;
                v120 = v97[-2].n128_u64[1];
                if (v120)
                {
                  v97[-1].n128_u64[0] = v120;
                  operator delete(v120);
                  v97[-2].n128_u64[1] = 0;
                  v97[-1].n128_u64[0] = 0;
                  v97[-1].n128_u64[1] = 0;
                }

                a4 = 0;
                v97[-2].n128_u64[1] = v98;
                a5.n128_u64[0] = v294.n128_u64[0];
                v97[-1] = v294;
                v8 = v352;
LABEL_123:
                v338 = v8;
                goto LABEL_124;
              }
            }

            v103 = v370;
            if (!v370)
            {
              goto LABEL_92;
            }

LABEL_91:
            v371 = v103;
            operator delete(v103);
            goto LABEL_92;
          }
        }

        else
        {
          v84 = v400;
          if (!v400)
          {
            goto LABEL_74;
          }
        }

        v401 = v84;
        operator delete(v84);
        goto LABEL_74;
      }
    }

    v308 = a4;
    v339 = v19;
    v349 = v337;
    v344 = v19->n128_u64[0];
    v345 = v19->n128_u16[4];
    v29 = v19[1].n128_i64[0];
    v30 = *(&v19[1] + 8);
    v282 = &v19[1];
    v19[1].n128_u64[0] = 0;
    v19[1].n128_u64[1] = 0;
    v19[2].n128_u64[0] = 0;
    v293 = v30;
    v31 = v30;
    v32 = 0xAAAAAAAAAAAAAAABLL * ((v30 - v29) >> 4);
    do
    {
      v33 = v339[2].n128_u64[1];
      v339 = (v339 + 40);
      v398 = v33;
      v399 = v339->n128_u16[4];
      v401 = 0;
      v402 = 0;
      v400 = 0;
      sub_100403D6C(&v400, v339[1].n128_i64[0], v339[1].n128_i64[1], 0xAAAAAAAAAAAAAAABLL * ((v339[1].n128_u64[1] - v339[1].n128_u64[0]) >> 4));
      v393 = v344;
      v394 = v345;
      v396 = 0;
      v397 = 0;
      v395 = 0;
      sub_100403D6C(&v395, v29, v31, v32);
      v35 = v400;
      v34 = v401;
      v36 = v395;
      v37 = v396;
      if (v395)
      {
        v396 = v395;
        operator delete(v395);
        v38 = v400;
        if (!v400)
        {
          continue;
        }

LABEL_26:
        v401 = v38;
        operator delete(v38);
        continue;
      }

      v38 = v400;
      if (v400)
      {
        goto LABEL_26;
      }
    }

    while (v34 - v35 > (v37 - v36));
    v39 = v339;
    if (&v339[-3].n128_i8[8] != v305)
    {
      while (1)
      {
        v40 = v349;
        v349 = (v349 - 40);
        v41 = v349->n128_u64[0];
        v379 = v40[-2].n128_u16[0];
        v378 = v41;
        v381 = 0;
        v382 = 0;
        v380 = 0;
        sub_100403D6C(&v380, v40[-2].n128_i64[1], v40[-1].n128_i64[0], 0xAAAAAAAAAAAAAAABLL * ((v40[-1].n128_u64[0] - v40[-2].n128_u64[1]) >> 4));
        v373 = v344;
        v374 = v345;
        v376 = 0;
        v377 = 0;
        __p = 0;
        sub_100403D6C(&__p, v29, v31, v32);
        v42 = v381;
        v43 = v380;
        v44 = v376;
        v45 = __p;
        if (!__p)
        {
          break;
        }

        v376 = __p;
        operator delete(__p);
        v46 = v380;
        if (v380)
        {
          goto LABEL_34;
        }

LABEL_35:
        if (v42 - v43 > (v44 - v45))
        {
          goto LABEL_46;
        }
      }

      v46 = v380;
      if (!v380)
      {
        goto LABEL_35;
      }

LABEL_34:
      v381 = v46;
      operator delete(v46);
      goto LABEL_35;
    }

    while (1)
    {
      v47 = v349;
      if (v39 >= v349)
      {
        break;
      }

      v349 = (v349 - 40);
      v48 = v47[-3].n128_u64[1];
      v389 = v47[-2].n128_u16[0];
      v388 = v48;
      v391 = 0;
      v392 = 0;
      v390 = 0;
      sub_100403D6C(&v390, v47[-2].n128_i64[1], v47[-1].n128_i64[0], 0xAAAAAAAAAAAAAAABLL * ((v47[-1].n128_u64[0] - v47[-2].n128_u64[1]) >> 4));
      v383 = v344;
      v384 = v345;
      v386 = 0;
      v387 = 0;
      v385 = 0;
      sub_100403D6C(&v385, v29, v31, v32);
      v50 = v390;
      v49 = v391;
      v51 = v385;
      v52 = v386;
      if (v385)
      {
        v386 = v385;
        operator delete(v385);
      }

      v53 = v49 - v50;
      v54 = v52 - v51;
      if (v390)
      {
        v391 = v390;
        operator delete(v390);
      }

      if (v53 > v54)
      {
        break;
      }

      v39 = v339;
    }

LABEL_46:
    v8 = v339;
    v285 = v349;
    v289 = v339;
    if (v339 >= v349)
    {
      goto LABEL_62;
    }

    while (2)
    {
      sub_10040BF8C(&v339, &v349);
      while (2)
      {
        v55 = v339[2].n128_u64[1];
        v339 = (v339 + 40);
        v368 = v55;
        v369 = v339->n128_u16[4];
        v371 = 0;
        v372 = 0;
        v370 = 0;
        sub_100403D6C(&v370, v339[1].n128_i64[0], v339[1].n128_i64[1], 0xAAAAAAAAAAAAAAABLL * ((v339[1].n128_u64[1] - v339[1].n128_u64[0]) >> 4));
        v363 = v344;
        v364 = v345;
        v366 = 0;
        v367 = 0;
        v365 = 0;
        sub_100403D6C(&v365, v29, v31, v32);
        v56 = v371;
        v57 = v370;
        v58 = v366;
        v59 = v365;
        if (v365)
        {
          v366 = v365;
          operator delete(v365);
          v60 = v370;
          if (v370)
          {
            goto LABEL_50;
          }
        }

        else
        {
          v60 = v370;
          if (v370)
          {
LABEL_50:
            v371 = v60;
            operator delete(v60);
          }
        }

        if (v56 - v57 > (v58 - v59))
        {
          continue;
        }

        break;
      }

      while (2)
      {
        v62 = v349;
        v349 = (v349 - 40);
        v63 = v349->n128_u64[0];
        v359 = v62[-2].n128_u16[0];
        v358 = v63;
        v361 = 0;
        v362 = 0;
        v360 = 0;
        sub_100403D6C(&v360, v62[-2].n128_i64[1], v62[-1].n128_i64[0], 0xAAAAAAAAAAAAAAABLL * ((v62[-1].n128_u64[0] - v62[-2].n128_u64[1]) >> 4));
        v353 = v344;
        v354 = v345;
        v356 = 0;
        v357 = 0;
        v355 = 0;
        sub_100403D6C(&v355, v29, v31, v32);
        v64 = v360;
        v65 = v361;
        v66 = v355;
        v67 = v356;
        if (v355)
        {
          v356 = v355;
          operator delete(v355);
          v61 = v360;
          if (v360)
          {
LABEL_59:
            v361 = v61;
            operator delete(v61);
          }
        }

        else
        {
          v61 = v360;
          if (v360)
          {
            goto LABEL_59;
          }
        }

        if (v65 - v64 <= (v67 - v66))
        {
          continue;
        }

        break;
      }

      v8 = v339;
      if (v339 < v349)
      {
        continue;
      }

      break;
    }

LABEL_62:
    v68 = &v8[-3].n128_u64[1];
    if (&v8[-3].n128_i8[8] != v305)
    {
      v69 = *v68;
      v305->n128_u16[4] = v8[-2].n128_u16[0];
      v305->n128_u64[0] = v69;
      sub_10016D9A8(v282, (v8 - 24));
    }

    *v68 = v344;
    v8[-2].n128_u16[0] = v345;
    v70 = v8[-2].n128_u64[1];
    a4 = v308;
    if (v70)
    {
      v8[-1].n128_u64[0] = v70;
      operator delete(v70);
      v8[-2].n128_u64[1] = 0;
      v8[-1].n128_u64[0] = 0;
      v8[-1].n128_u64[1] = 0;
    }

    v8[-2].n128_u64[1] = v29;
    v8[-1] = v293;
    if (v289 < v285)
    {
LABEL_67:
      a3 = v299;
      sub_10040A128();
      a4 = 0;
      v338 = v8;
      goto LABEL_125;
    }

    v71 = sub_10040CB50(v338, (v8 - 40));
    if (!sub_10040CB50(v8, v337))
    {
      if (!v71)
      {
        goto LABEL_67;
      }

      goto LABEL_123;
    }

    if (v71)
    {
      return a5.n128_f64[0];
    }

    v337 = (v8 - 40);
    v8 = v338;
LABEL_124:
    a3 = v299;
LABEL_125:
    v7 = v337;
  }

  if (a4)
  {
    if (v8 == v7)
    {
      return a5.n128_f64[0];
    }

    v127 = &v8[2].n128_u64[1];
    if (&v8[2].n128_i8[8] == v7)
    {
      return a5.n128_f64[0];
    }

    v283 = v7;
    v286 = 0;
    v128 = v8;
    while (2)
    {
      v129 = v127;
      v130 = *v127;
      v291 = v129;
      v399 = *(v129 + 4);
      v398 = v130;
      v131 = v128[3].n128_i64[1];
      v401 = 0;
      v402 = 0;
      v400 = 0;
      sub_100403D6C(&v400, v131, v128[4].n128_i64[0], 0xAAAAAAAAAAAAAAABLL * ((v128[4].n128_u64[0] - v131) >> 4));
      v132 = v128->n128_u64[0];
      v394 = v128->n128_u16[4];
      v393 = v132;
      v396 = 0;
      v397 = 0;
      v395 = 0;
      v133 = &v128[1];
      sub_100403D6C(&v395, v128[1].n128_i64[0], v128[1].n128_i64[1], 0xAAAAAAAAAAAAAAABLL * ((v128[1].n128_u64[1] - v128[1].n128_u64[0]) >> 4));
      v135 = v400;
      v134 = v401;
      v136 = v395;
      v137 = v396;
      if (v395)
      {
        v396 = v395;
        operator delete(v395);
        v138 = v400;
        if (v400)
        {
          goto LABEL_137;
        }
      }

      else
      {
        v138 = v400;
        if (v400)
        {
LABEL_137:
          v401 = v138;
          operator delete(v138);
        }
      }

      v104 = v134 - v135 > (v137 - v136);
      v139 = v304;
      if (v104)
      {
        v140 = *v291;
        v379 = *(v291 + 4);
        v378 = v140;
        v141 = v128[3].n128_i64[1];
        v280 = v128[4];
        v128[4].n128_u64[0] = 0;
        v128[4].n128_u64[1] = 0;
        v128[3].n128_u64[1] = 0;
        *v291 = v128->n128_u64[0];
        *(v291 + 4) = v128->n128_u16[4];
        sub_10016D9A8((v291 + 2), v128 + 1);
        if (v128 != v304)
        {
          v295 = 0xAAAAAAAAAAAAAAABLL * ((v280.n128_u64[0] - v141) >> 4);
          v142 = v286;
          do
          {
            v312 = v128;
            v388 = v378;
            v389 = v379;
            v391 = 0;
            v392 = 0;
            v390 = 0;
            sub_100403D6C(&v390, v141, v280.n128_i64[0], v295);
            v143 = v141;
            v144 = v139 + v142;
            v146 = *(&v139[-2] + v142 - 8);
            v145 = &v139[-2] + v142 - 8;
            v384 = *(v144 - 32);
            v383 = v146;
            v386 = 0;
            v387 = 0;
            v385 = 0;
            sub_100403D6C(&v385, *(v144 - 24), *(v144 - 16), 0xAAAAAAAAAAAAAAABLL * ((*(v144 - 16) - *(v144 - 24)) >> 4));
            v147 = v390;
            v148 = v391;
            v150 = v385;
            v149 = v386;
            if (v385)
            {
              v386 = v385;
              operator delete(v385);
            }

            v151 = v148 - v147;
            v152 = v149 - v150;
            if (v390)
            {
              v391 = v390;
              operator delete(v390);
              v104 = v151 > v152;
              v141 = v143;
              if (!v104)
              {
                v139 = (v304 + v142);
                v133 = &v304[1] + v142;
                goto LABEL_153;
              }
            }

            else
            {
              v104 = v151 > v152;
              v141 = v143;
              if (!v104)
              {
                v7 = v283;
                v139 = v312;
                goto LABEL_154;
              }
            }

            v128 = (v312 - 40);
            v133 = &v312[-2].n128_i64[1];
            *v144 = *v145;
            *(v144 + 8) = *(v145 + 8);
            v139 = v304;
            sub_10016D9A8(&v304[1] + v142, (v144 - 24));
            v142 -= 40;
          }

          while (v142);
          v133 = &v304[1];
LABEL_153:
          v7 = v283;
        }

LABEL_154:
        a5 = v280;
        v153 = v378;
        v139->n128_u16[4] = v379;
        v139->n128_u64[0] = v153;
        v154 = *v133;
        if (*v133)
        {
          v139[1].n128_u64[1] = v154;
          operator delete(v154);
          a5 = v280;
          *v133 = 0;
          *(v133 + 8) = 0;
          *(v133 + 16) = 0;
        }

        *v133 = v141;
        *(v139 + 24) = a5;
      }

      v128 = v291;
      v127 = v291 + 5;
      v286 += 40;
      if (v291 + 5 == v7)
      {
        return a5.n128_f64[0];
      }

      continue;
    }
  }

  if (v8 == v7)
  {
    return a5.n128_f64[0];
  }

  v250 = &v8[2].n128_u64[1];
  if (&v8[2].n128_i8[8] == v7)
  {
    return a5.n128_f64[0];
  }

  v316 = v8 + 1;
  while (2)
  {
    v251 = v250;
    v252 = *v250;
    v306 = v251;
    v399 = *(v251 + 4);
    v398 = v252;
    v254 = &v8[3].n128_u64[1];
    v253 = v8[3].n128_i64[1];
    v401 = 0;
    v402 = 0;
    v400 = 0;
    sub_100403D6C(&v400, v253, v8[4].n128_i64[0], 0xAAAAAAAAAAAAAAABLL * ((v8[4].n128_u64[0] - v253) >> 4));
    v255 = v8->n128_u64[0];
    v394 = v8->n128_u16[4];
    v393 = v255;
    v396 = 0;
    v397 = 0;
    v395 = 0;
    v256 = v8;
    sub_100403D6C(&v395, v8[1].n128_i64[0], v8[1].n128_i64[1], 0xAAAAAAAAAAAAAAABLL * ((v8[1].n128_u64[1] - v8[1].n128_u64[0]) >> 4));
    v258 = v400;
    v257 = v401;
    v259 = v395;
    v260 = v396;
    if (v395)
    {
      v396 = v395;
      operator delete(v395);
      v261 = v400;
      if (v400)
      {
        goto LABEL_242;
      }
    }

    else
    {
      v261 = v400;
      if (v400)
      {
LABEL_242:
        v401 = v261;
        operator delete(v261);
      }
    }

    if (v257 - v258 <= (v260 - v259))
    {
      goto LABEL_255;
    }

    v262 = *v306;
    v379 = *(v306 + 4);
    v378 = v262;
    v263 = v256[3].n128_i64[1];
    v264 = v256[4];
    v254[1] = 0;
    v254[2] = 0;
    *v254 = 0;
    v303 = v264;
    v265 = v264.n128_u64[0];
    v266 = 0xAAAAAAAAAAAAAAABLL * ((v264.n128_u64[0] - v263) >> 4);
    v267 = v316;
    while (2)
    {
      v267[1].n128_u64[1] = v267[-1].n128_u64[0];
      v267[2].n128_u16[0] = v267[-1].n128_u16[4];
      sub_10016D9A8(&v267[2].n128_i64[1], v267);
      v388 = v378;
      v389 = v379;
      v391 = 0;
      v392 = 0;
      v390 = 0;
      sub_100403D6C(&v390, v263, v265, v266);
      v268 = v267[-4].n128_u64[1];
      v384 = v267[-3].n128_u16[0];
      v383 = v268;
      v386 = 0;
      v387 = 0;
      v385 = 0;
      sub_100403D6C(&v385, v267[-3].n128_i64[1], v267[-2].n128_i64[0], 0xAAAAAAAAAAAAAAABLL * ((v267[-2].n128_u64[0] - v267[-3].n128_u64[1]) >> 4));
      v269 = v390;
      v270 = v391;
      v272 = v385;
      v271 = v386;
      if (v385)
      {
        v386 = v385;
        operator delete(v385);
        v273 = v390;
        if (v390)
        {
          goto LABEL_247;
        }
      }

      else
      {
        v273 = v390;
        if (v390)
        {
LABEL_247:
          v391 = v273;
          operator delete(v273);
        }
      }

      v267 = (v267 - 40);
      if (v270 - v269 > (v271 - v272))
      {
        continue;
      }

      break;
    }

    v274 = v378;
    v275 = v267[2].n128_u64[1];
    v267[2].n128_u16[0] = v379;
    v267[1].n128_u64[1] = v274;
    if (v275)
    {
      v267[3].n128_u64[0] = v275;
      operator delete(v275);
      v267[2].n128_u64[1] = 0;
      v267[3].n128_u64[0] = 0;
      v267[3].n128_u64[1] = 0;
    }

    v267[2].n128_u64[1] = v263;
    a5.n128_u64[0] = v303.n128_u64[0];
    v267[3] = v303;
LABEL_255:
    v8 = v306;
    v250 = v306 + 5;
    v316 = (v316 + 40);
    if (v306 + 5 != v7)
    {
      continue;
    }

    return a5.n128_f64[0];
  }
}