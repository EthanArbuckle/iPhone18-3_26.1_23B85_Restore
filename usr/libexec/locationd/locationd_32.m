__n128 sub_1002241F4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 44);
  *(a2 + 8) = vextq_s8(*a1, *a1, 8uLL);
  *(a2 + 44) = v2 | 0xF;
  result = *(a1 + 16);
  *(a2 + 24) = result;
  return result;
}

void sub_100224224(uint64_t a1, uint64_t a2, unsigned int *a3, uint64_t a4)
{
  if (*(a1 + 201))
  {
    if (*a3 == 5)
    {
      if (*(a1 + 428))
      {
        v7 = (*(**(a1 + 464) + 56))(*(a1 + 464));
        v8 = *(a1 + 408);
        v9 = (a1 + 268);
        v10 = *(a1 + 268);
        v11 = v10 > *(a4 + 20) && v10 > 100.0;
        if (qword_1025D4600 != -1)
        {
          sub_1003110B8();
        }

        v12 = qword_1025D4608;
        if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
        {
          v14 = *(a1 + 408);
          v13 = *(a1 + 416);
          sub_100072AFC(a4, __p);
          v15 = (v53 & 0x80000000) == 0 ? __p : *__p;
          *buf = 134218755;
          *&buf[4] = v14;
          *&buf[12] = 1024;
          *&buf[14] = v11;
          *&buf[18] = 2048;
          *&buf[20] = v13;
          *&buf[28] = 2085;
          *&buf[30] = v15;
          _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_DEBUG, "TILE: onLocationNotification, fLastLocationDownloadCheckTimestamp, %.1lf, isForceLocationCheck, %d, fLastLocationProtectionCheckTimestamp, %.1f, leech location, %{sensitive}s", buf, 0x26u);
          if (SBYTE3(v53) < 0)
          {
            operator delete(*__p);
          }
        }

        if (sub_10000A100(121, 2))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1025D4600 != -1)
          {
            sub_101ABFEE4();
          }

          v44 = *(a1 + 408);
          v43 = *(a1 + 416);
          sub_100072AFC(a4, v47);
          if (v48 >= 0)
          {
            v45 = v47;
          }

          else
          {
            v45 = v47[0];
          }

          *__p = 134218755;
          *&__p[4] = v44;
          v50 = 1024;
          v51 = v11;
          v52 = 2048;
          v53 = v43;
          v54 = 2085;
          v55 = v45;
          v46 = _os_log_send_and_compose_impl();
          if (v48 < 0)
          {
            operator delete(v47[0]);
          }

          sub_100152C7C("Generic", 1, 0, 2, "void CLTilesManager::onLocationNotification(int, const CLLocationProvider_Type::Notification &, const CLLocationProvider_Type::NotificationData &)", "%s\n", v46);
          if (v46 != buf)
          {
            free(v46);
          }
        }

        v16 = *(a4 + 16);
        *(a1 + 248) = *a4;
        *(a1 + 264) = v16;
        v17 = *(a4 + 32);
        v18 = *(a4 + 48);
        v19 = *(a4 + 80);
        *(a1 + 312) = *(a4 + 64);
        *(a1 + 328) = v19;
        *(a1 + 280) = v17;
        *(a1 + 296) = v18;
        v20 = *(a4 + 96);
        v21 = *(a4 + 112);
        v22 = *(a4 + 128);
        *(a1 + 388) = *(a4 + 140);
        *(a1 + 360) = v21;
        *(a1 + 376) = v22;
        *(a1 + 344) = v20;
        if ((v7 - v8 >= 600.0 || v11) && *v9 >= 0.0 && *v9 <= 5000.0)
        {
          *buf = _NSConcreteStackBlock;
          *&buf[8] = 3221225472;
          *&buf[16] = sub_10024CA30;
          *&buf[24] = &unk_1024BCD70;
          *&buf[32] = a1;
          v57 = a1 + 248;
          v58 = v7;
          sub_10024C7D0(a1, "predownloadTilesForLocation", buf);
          sub_100258C1C(a1, v7);
          sub_10025A784(a1, a1 + 248);
          *(a1 + 408) = v7;
        }

        if (*(a1 + 200) == 1 && (v7 - *(a1 + 416) >= 330.0 || v11))
        {
          v23 = *(a4 + 16);
          *(a1 + 248) = *a4;
          *(a1 + 264) = v23;
          v24 = *(a4 + 32);
          v25 = *(a4 + 48);
          v26 = *(a4 + 80);
          *(a1 + 312) = *(a4 + 64);
          *(a1 + 328) = v26;
          *(a1 + 280) = v24;
          *(a1 + 296) = v25;
          v27 = *(a4 + 96);
          v28 = *(a4 + 112);
          v29 = *(a4 + 128);
          *(a1 + 388) = *(a4 + 140);
          *(a1 + 360) = v28;
          *(a1 + 376) = v29;
          *(a1 + 344) = v27;
          sub_100EEE434(a1, "onLocationNotification", a1 + 248, 0);
          *(a1 + 416) = v7;
        }
      }

      else
      {
        if (qword_1025D4620 != -1)
        {
          sub_101ABFB1C();
        }

        v42 = qword_1025D4628;
        if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_impl(dword_100000000, v42, OS_LOG_TYPE_DEBUG, "TILE: onLocationNotification, ignore leech when LS off", buf, 2u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_101AC5C14();
        }
      }
    }

    else
    {
      if (qword_1025D4600 != -1)
      {
        sub_1003110B8();
      }

      v39 = qword_1025D4608;
      if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
      {
        v40 = *a3;
        v41 = sub_100048D98(*a3);
        *buf = 67109379;
        *&buf[4] = v40;
        *&buf[8] = 2085;
        *&buf[10] = v41;
        _os_log_impl(dword_100000000, v39, OS_LOG_TYPE_DEBUG, "TILE: onLocationNotification, unknown notification, %d, %{sensitive}s", buf, 0x12u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101AC5B04(a3);
      }
    }
  }

  else
  {
    if (qword_1025D4600 != -1)
    {
      sub_1003110B8();
    }

    v30 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
    {
      v31 = *(a1 + 200);
      *buf = 67109120;
      *&buf[4] = v31;
      _os_log_impl(dword_100000000, v30, OS_LOG_TYPE_DEBUG, "TILE: onLocationNotification, index is not available until first unlock, fDataProtectionEnabled, %d", buf, 8u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101AC5A10(a1);
    }

    if (*a3 == 5)
    {
      v32 = *a4;
      *(a1 + 264) = *(a4 + 16);
      *(a1 + 248) = v32;
      v33 = *(a4 + 32);
      v34 = *(a4 + 48);
      v35 = *(a4 + 80);
      *(a1 + 312) = *(a4 + 64);
      *(a1 + 328) = v35;
      *(a1 + 280) = v33;
      *(a1 + 296) = v34;
      v36 = *(a4 + 96);
      v37 = *(a4 + 112);
      v38 = *(a4 + 128);
      *(a1 + 388) = *(a4 + 140);
      *(a1 + 360) = v37;
      *(a1 + 376) = v38;
      *(a1 + 344) = v36;
    }
  }
}

void sub_100224858(void **a1)
{
  v2 = *a1;
  if (*a1)
  {
    do
    {
      v3 = *v2;
      v4 = v2[2];
      if (v4)
      {
        sub_100008080(v4);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  *a1 = 0;
}

void sub_1002248AC(uint64_t a1, uint64_t a2)
{
  if (sub_100224C84(a1, a2))
  {
    if (sub_100073270(a2, a1 + 120))
    {
      if (qword_1025D4650 != -1)
      {
        sub_101BDA6FC();
      }

      v4 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(v30[0]) = 0;
        _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "#GnssRefPosMaintenance,feedCachedReferenceLocation,repeated cached position ", v30, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101BDD330();
      }
    }

    else
    {
      v6 = *(a2 + 16);
      *(a1 + 120) = *a2;
      *(a1 + 136) = v6;
      v7 = *(a2 + 32);
      v8 = *(a2 + 48);
      v9 = *(a2 + 80);
      *(a1 + 184) = *(a2 + 64);
      *(a1 + 200) = v9;
      *(a1 + 152) = v7;
      *(a1 + 168) = v8;
      v10 = *(a2 + 96);
      v11 = *(a2 + 112);
      v12 = *(a2 + 128);
      *(a1 + 260) = *(a2 + 140);
      *(a1 + 232) = v11;
      *(a1 + 248) = v12;
      *(a1 + 216) = v10;
      memcpy((a1 + 280), (a2 + 160), 0x201uLL);
      v13 = *(a2 + 680);
      v14 = *(a2 + 688);
      if (v14)
      {
        atomic_fetch_add_explicit((v14 + 8), 1uLL, memory_order_relaxed);
      }

      *(a1 + 800) = v13;
      v15 = *(a1 + 808);
      *(a1 + 808) = v14;
      if (v15)
      {
        sub_100008080(v15);
      }

      v16 = *(a2 + 696);
      v17 = *(a2 + 728);
      *(a1 + 832) = *(a2 + 712);
      *(a1 + 848) = v17;
      *(a1 + 816) = v16;
      v18 = *(a2 + 744);
      v19 = *(a2 + 760);
      v20 = *(a2 + 776);
      *(a1 + 905) = *(a2 + 785);
      *(a1 + 880) = v19;
      *(a1 + 896) = v20;
      *(a1 + 864) = v18;
      if (qword_1025D4650 != -1)
      {
        sub_101BDA6FC();
      }

      v21 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
      {
        v22 = *(a1 + 216);
        v23 = *(a1 + 124);
        v24 = *(a1 + 132);
        v25 = *(a1 + 148);
        v26 = *(a1 + 140);
        v27 = *(a1 + 156);
        v30[0] = 68290563;
        v30[1] = 0;
        v31 = 2082;
        v32 = "";
        v33 = 1026;
        v34 = v22;
        v35 = 2053;
        v36 = v23;
        v37 = 2053;
        v38 = v24;
        v39 = 2050;
        v40 = v25;
        v41 = 2050;
        v42 = v26;
        v43 = 2050;
        v44 = v27;
        _os_log_impl(dword_100000000, v21, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#GnssRefPosMaintenance,feedCachedReferenceLocation, type:%{public}d, lat:%{sensitive}.7f, lon:%{sensitive}.7f, alt:%{public}.2f, hunc:%{public}.1f, vunc:%{public}.1f}", v30, 0x4Au);
      }

      if ((*(a1 + 1148) - 3) <= 1 && sub_10139685C(a1))
      {
        if (*(a1 + 928) == 1)
        {
          if (qword_1025D4650 != -1)
          {
            sub_101BDA754();
          }

          v28 = qword_1025D4658;
          if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
          {
            LOWORD(v30[0]) = 0;
            _os_log_impl(dword_100000000, v28, OS_LOG_TYPE_DEBUG, "#GnssRefPosMaintenance,feedCachedReferenceLocation,Disabling WiFi/Cell location notification", v30, 2u);
          }

          if (sub_10000A100(121, 2))
          {
            sub_101BDD178();
          }

          sub_101396E60(a1);
        }

        if (*(a1 + 929) == 1)
        {
          if (qword_1025D4650 != -1)
          {
            sub_101BDA754();
          }

          v29 = qword_1025D4658;
          if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
          {
            LOWORD(v30[0]) = 0;
            _os_log_impl(dword_100000000, v29, OS_LOG_TYPE_DEBUG, "#GnssRefPosMaintenance,feedCachedReferenceLocation,Disabling Gnss location notification", v30, 2u);
          }

          if (sub_10000A100(121, 2))
          {
            sub_101BDD254();
          }

          sub_101397278(a1);
        }
      }
    }
  }

  else
  {
    if (qword_1025D4650 != -1)
    {
      sub_101BDA6FC();
    }

    v5 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v30[0]) = 0;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEFAULT, "#GnssRefPosMaintenance,feedCachedReferenceLocation,Invalid reference location", v30, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101BDD09C();
    }
  }
}

BOOL sub_100224C84(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 20);
  v4 = v3 > 0.0;
  if (v3 <= 0.0)
  {
    if (qword_1025D4650 != -1)
    {
      sub_101BDA6FC();
    }

    v5 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
    {
      v6 = *(a2 + 20);
      v18 = 68289282;
      v19 = 0;
      v20 = 2082;
      v21 = "";
      v22 = 2050;
      v23 = v6;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#GnssRefPosMaintenance,Warning invalid assistance location, horizontal accuracy:%{public}f}", &v18, 0x1Cu);
    }

    v3 = *(a2 + 20);
  }

  if (v3 > 200000.0)
  {
    if (qword_1025D4650 != -1)
    {
      sub_101BDA754();
    }

    v7 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
    {
      v8 = *(a2 + 20);
      v18 = 68289538;
      v19 = 0;
      v20 = 2082;
      v21 = "";
      v22 = 2050;
      v23 = v8;
      v24 = 2050;
      v25 = 0x41086A0000000000;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#GnssRefPosMaintenance,Warning invalid assistance location, horizontalAccuracy:%{public}f, maximumAccuracy:%{public}f}", &v18, 0x26u);
    }

    v4 = 0;
  }

  if (sub_10002807C(*(a2 + 4), *(a2 + 12)))
  {
    if (qword_1025D4650 != -1)
    {
      sub_101BDA754();
    }

    v9 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
    {
      v18 = 68289026;
      v19 = 0;
      v20 = 2082;
      v21 = "";
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#GnssRefPosMaintenance,Warning invalid assistance location,null island}", &v18, 0x12u);
    }

    v4 = 0;
  }

  if (fabs(*(a2 + 4)) > 90.0)
  {
    if (qword_1025D4650 != -1)
    {
      sub_101BDA754();
    }

    v10 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
    {
      v11 = *(a2 + 4);
      v18 = 68289283;
      v19 = 0;
      v20 = 2082;
      v21 = "";
      v22 = 2053;
      v23 = v11;
      _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#GnssRefPosMaintenance,Warning invalid assistance location, latitude:%{sensitive}.7f}", &v18, 0x1Cu);
    }

    v4 = 0;
  }

  if (fabs(*(a2 + 12)) > 180.0)
  {
    if (qword_1025D4650 != -1)
    {
      sub_101BDA754();
    }

    v12 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
    {
      v13 = *(a2 + 12);
      v18 = 68289283;
      v19 = 0;
      v20 = 2082;
      v21 = "";
      v22 = 2053;
      v23 = v13;
      _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#GnssRefPosMaintenance,Warning invalid assistance location, longitude:%{sensitive}.7f}", &v18, 0x1Cu);
    }

    v4 = 0;
  }

  if (*(a2 + 36) > 0.0)
  {
    v14 = *(a2 + 28);
    if (v14 < -450.0 || v14 > 8850.0)
    {
      if (qword_1025D4650 != -1)
      {
        sub_101BDA754();
      }

      v15 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
      {
        v16 = *(a2 + 28);
        v18 = 68289283;
        v19 = 0;
        v20 = 2082;
        v21 = "";
        v22 = 2053;
        v23 = v16;
        _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#GnssRefPosMaintenance,Warning invalid assistance location, altitude:%{sensitive}.2f}", &v18, 0x1Cu);
      }

      return 0;
    }
  }

  return v4;
}

void sub_10022509C(uint64_t a1, unsigned int *a2, uint64_t a3, uint64_t a4)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a4 + 32) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_101B055EC();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v11 = 1;
    v8 = _os_activity_create(dword_100000000, "CL: CLCellTilesManager::onLocationNotification", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v8, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_101B05600();
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
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLCellTilesManager::onLocationNotification, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v11 = 0;
  }

  sub_100225278(a4, a1, a2, a3);
  if (v11 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

void sub_100225278(uint64_t a1, uint64_t a2, unsigned int *a3, uint64_t a4)
{
  if (*a3 == 5)
  {
    v6 = a1 + 160;
    v7 = *(a1 + 180);
    v8 = *(a4 + 16);
    *(a1 + 160) = *a4;
    v9 = *(a4 + 80);
    v11 = *(a4 + 32);
    v10 = *(a4 + 48);
    *(a1 + 224) = *(a4 + 64);
    *(a1 + 240) = v9;
    *(a1 + 192) = v11;
    *(a1 + 208) = v10;
    v13 = *(a4 + 112);
    v12 = *(a4 + 128);
    v14 = *(a4 + 96);
    *(a1 + 300) = *(a4 + 140);
    *(a1 + 272) = v13;
    *(a1 + 288) = v12;
    *(a1 + 256) = v14;
    *(a1 + 176) = v8;
    if (*(a1 + 129))
    {
      v15 = (*(**(a1 + 352) + 16))(*(a1 + 352));
      v16 = *(a1 + 320);
      v17 = v7 > *(a4 + 20) && v7 > 100.0;
      if (qword_1025D4620 != -1)
      {
        sub_101B1583C();
      }

      v18 = qword_1025D4628;
      if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
      {
        v20 = *(a1 + 320);
        v19 = *(a1 + 328);
        sub_100072AFC(a4, __p);
        v21 = (v39 & 0x80000000) == 0 ? __p : *__p;
        *buf = 134349827;
        *v43 = v20;
        *&v43[8] = 1026;
        *&v43[10] = v17;
        v44 = 2050;
        v45 = v19;
        v46 = 2085;
        v47 = v21;
        _os_log_impl(dword_100000000, v18, OS_LOG_TYPE_DEBUG, "TileCell, kNotificationLocationLeech, fLastLocationDownloadCheckTimestamp, %{public}.1lf, isForceLocationCheck, %{public}d, fLastLocationProtectionCheckTimestamp, %{public}.1f, leech location, %{sensitive}s", buf, 0x26u);
        if (SBYTE3(v39) < 0)
        {
          operator delete(*__p);
        }
      }

      if (sub_10000A100(121, 2))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1025D4620 != -1)
        {
          sub_1000E1C54();
        }

        v30 = *(a1 + 320);
        v29 = *(a1 + 328);
        sub_100072AFC(a4, v33);
        if (v34 >= 0)
        {
          v31 = v33;
        }

        else
        {
          v31 = v33[0];
        }

        *__p = 134349827;
        *&__p[4] = v30;
        v36 = 1026;
        v37 = v17;
        v38 = 2050;
        v39 = v29;
        v40 = 2085;
        v41 = v31;
        v32 = _os_log_send_and_compose_impl();
        if (v34 < 0)
        {
          operator delete(v33[0]);
        }

        sub_100152C7C("Generic", 1, 0, 2, "void CLCellTilesManager::onLocationNotification(int, const CLLocationProvider_Type::Notification &, const CLLocationProvider_Type::NotificationData &)", "%s\n", v32);
        if (v32 != buf)
        {
          free(v32);
        }
      }

      if (v15 - v16 >= 600.0 || v17)
      {
        v22 = *(a1 + 180);
        if (v22 >= 0.0 && v22 <= 5000.0)
        {
          sub_10024F998(a1, v6);
          *(a1 + 320) = v15;
        }
      }

      if (*(a1 + 128) == 1 && (v15 - *(a1 + 328) >= 330.0 || v17))
      {
        sub_10108A7BC(a1, "onLocationNotification", v6, 0);
        *(a1 + 328) = v15;
      }
    }

    else
    {
      if (qword_1025D48A0 != -1)
      {
        sub_101B15F3C();
      }

      v27 = qword_1025D48A8;
      if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
      {
        v28 = *(a1 + 128);
        *buf = 67109120;
        *v43 = v28;
        _os_log_impl(dword_100000000, v27, OS_LOG_TYPE_DEBUG, "TILE: onLocationNotification, index is not available until first unlock, fDataProtectionEnabled, %d", buf, 8u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101B1688C(a1);
      }
    }
  }

  else
  {
    if (qword_1025D4620 != -1)
    {
      sub_101B1583C();
    }

    v24 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
    {
      v25 = *a3;
      v26 = sub_100048D98(*a3);
      *buf = 67240450;
      *v43 = v25;
      *&v43[4] = 2082;
      *&v43[6] = v26;
      _os_log_impl(dword_100000000, v24, OS_LOG_TYPE_DEFAULT, "TileCell, unexpected, location, %{public}d, %{public}s", buf, 0x12u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101B16770(a3);
    }
  }
}

void sub_100225734(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a4 + 32) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_101B1B570();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v11 = 1;
    v8 = _os_activity_create(dword_100000000, "CL: CLPipelineLocationProvider::onLocationControllerNotification", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v8, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_101B1B584();
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
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLPipelineLocationProvider::onLocationControllerNotification, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v11 = 0;
  }

  sub_10022EFD8(a4, v6, v7, a3);
  if (v11 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

void sub_1002258F8(uint64_t a1, unsigned int *a2, uint64_t a3, void *a4)
{
  v5 = *a2;
  sub_100022008(v6, a3);
  [a4 onLocationNotification:v5 data:v6];

  if (v11)
  {
    sub_100008080(v11);
  }

  if (v10 < 0)
  {
    operator delete(__p);
  }

  if (v8)
  {
    sub_100008080(v8);
  }

  if (v7)
  {
    sub_100008080(v7);
  }
}

void sub_100225988(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100311054(va);
  _Unwind_Resume(a1);
}

void sub_10022599C(uint64_t a1, unsigned int *a2, uint64_t a3, uint64_t a4)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a4 + 64) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_101960B48();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v11 = 1;
    v8 = _os_activity_create(dword_100000000, "CL: CLTimeZoneManager::onLocationNotification", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v8, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_101960B5C();
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
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLTimeZoneManager::onLocationNotification, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v11 = 0;
  }

  sub_100225B68(a4, v7, a2, a3);
  if (v11 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

void sub_100225B68(uint64_t a1, uint64_t a2, unsigned int *a3, uint64_t a4)
{
  v6 = *a3;
  if (*a3 > 8)
  {
    if (v6 == 9)
    {
      if (qword_1025D4800 != -1)
      {
        sub_101960B84();
      }

      v26 = qword_1025D4808;
      if (os_log_type_enabled(qword_1025D4808, OS_LOG_TYPE_INFO))
      {
        v57 = 68289026;
        v58 = 0;
        v59 = 2082;
        v60 = "";
        _os_log_impl(dword_100000000, v26, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Got kNotificationLocationUnavailable}", &v57, 0x12u);
      }

      sub_1008B8D58(a1, 0);
      return;
    }

    if (v6 == 13)
    {
      if (qword_1025D4800 != -1)
      {
        sub_101960B84();
      }

      v24 = qword_1025D4808;
      if (os_log_type_enabled(qword_1025D4808, OS_LOG_TYPE_INFO))
      {
        v57 = 68289026;
        v58 = 0;
        v59 = 2082;
        v60 = "";
        _os_log_impl(dword_100000000, v24, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Got kNotificationServiceAuthorization}", &v57, 0x12u);
      }

      sub_1008B65F8(a1);
      return;
    }

    goto LABEL_34;
  }

  if (v6 >= 2 && v6 != 4)
  {
LABEL_34:
    if (qword_1025D4800 != -1)
    {
      sub_101960B84();
    }

    v27 = qword_1025D4808;
    if (os_log_type_enabled(qword_1025D4808, OS_LOG_TYPE_DEFAULT))
    {
      v28 = *a3;
      v57 = 68289282;
      v58 = 0;
      v59 = 2082;
      v60 = "";
      v61 = 1026;
      v62 = v28;
      v21 = "{msg%{public}.0s:#Warning Got unknown notification, notification:%{public}d}";
      v22 = v27;
      v23 = 24;
      goto LABEL_38;
    }

    return;
  }

  if (qword_1025D4800 != -1)
  {
    sub_101960B84();
  }

  v9 = qword_1025D4808;
  if (os_log_type_enabled(qword_1025D4808, OS_LOG_TYPE_INFO))
  {
    v10 = *a3;
    v57 = 68289282;
    v58 = 0;
    v59 = 2082;
    v60 = "";
    v61 = 1026;
    v62 = v10;
    _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Got new time zone location, notification:%{public}d}", &v57, 0x18u);
  }

  v11 = *(a4 + 88);
  if (v11 < 0.0 || (v12 = v11 + *(a4 + 76) + *(a1 + 1784), v12 >= CFAbsoluteTimeGetCurrent()))
  {
    if (*(a1 + 1656) < 1)
    {
      sub_1008B6F84(a1, a4, a4 + 160, 0);
      return;
    }

    v25 = *(a4 + 20);
    if (v25 < 400.0)
    {
      goto LABEL_26;
    }

    if (v25 <= *(a1 + 1768))
    {
      sub_1001097CC((a1 + 1864), a4, a1 + 184);
      if (vabdd_f64(v36, *(a1 + 80)) >= *(a4 + 20))
      {
LABEL_26:
        sub_1008B6F84(a1, a4, a4 + 160, 1);
        if (*(a1 + 1656) >= 1)
        {
          sub_1008B8AB8(a1);
        }

        *(a1 + 1660) = 0;
        return;
      }

      if (qword_1025D4800 != -1)
      {
        sub_101960AF8();
      }

      v29 = qword_1025D4808;
      if (!os_log_type_enabled(qword_1025D4808, OS_LOG_TYPE_DEFAULT))
      {
LABEL_51:
        v42 = *(a4 + 16);
        *(a1 + 496) = *a4;
        *(a1 + 512) = v42;
        v43 = *(a4 + 32);
        v44 = *(a4 + 48);
        v45 = *(a4 + 80);
        *(a1 + 560) = *(a4 + 64);
        *(a1 + 576) = v45;
        *(a1 + 528) = v43;
        *(a1 + 544) = v44;
        v46 = *(a4 + 96);
        v47 = *(a4 + 112);
        v48 = *(a4 + 128);
        *(a1 + 636) = *(a4 + 140);
        *(a1 + 608) = v47;
        *(a1 + 624) = v48;
        *(a1 + 592) = v46;
        memcpy((a1 + 656), (a4 + 160), 0x201uLL);
        v49 = *(a4 + 680);
        v50 = *(a4 + 688);
        if (v50)
        {
          atomic_fetch_add_explicit((v50 + 8), 1uLL, memory_order_relaxed);
        }

        *(a1 + 1176) = v49;
        v51 = *(a1 + 1184);
        *(a1 + 1184) = v50;
        if (v51)
        {
          sub_100008080(v51);
        }

        v52 = *(a4 + 696);
        v53 = *(a4 + 728);
        *(a1 + 1208) = *(a4 + 712);
        *(a1 + 1224) = v53;
        *(a1 + 1192) = v52;
        v54 = *(a4 + 744);
        v55 = *(a4 + 760);
        v56 = *(a4 + 776);
        *(a1 + 1281) = *(a4 + 785);
        *(a1 + 1256) = v55;
        *(a1 + 1272) = v56;
        *(a1 + 1240) = v54;
        return;
      }

      v37 = LocationLogEncryptionDataSize();
      v38 = LocationLogEncryptionEncryptData();
      v39 = LocationLogEncryptionDataSize();
      v40 = LocationLogEncryptionEncryptData();
      v41 = *(a4 + 20);
      v57 = 68290306;
      v58 = 0;
      v59 = 2082;
      v60 = "";
      v61 = 1040;
      v62 = v37;
      v63 = 2098;
      v64 = v38;
      v65 = 1040;
      v66 = v39;
      v67 = 2098;
      v68 = v40;
      v69 = 2050;
      v70 = v41;
      v35 = "{msg%{public}.0s:#Warning Ignoring borderline location, lat:%{public, location:Encrypted_latitude}.*P, long:%{public, location:Encrypted_longitude}.*P, acc:%{public}0.2f}";
    }

    else
    {
      if (qword_1025D4800 != -1)
      {
        sub_101960AF8();
      }

      v29 = qword_1025D4808;
      if (!os_log_type_enabled(qword_1025D4808, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_51;
      }

      v30 = LocationLogEncryptionDataSize();
      v31 = LocationLogEncryptionEncryptData();
      v32 = LocationLogEncryptionDataSize();
      v33 = LocationLogEncryptionEncryptData();
      v34 = *(a4 + 20);
      v57 = 68290306;
      v58 = 0;
      v59 = 2082;
      v60 = "";
      v61 = 1040;
      v62 = v30;
      v63 = 2098;
      v64 = v31;
      v65 = 1040;
      v66 = v32;
      v67 = 2098;
      v68 = v33;
      v69 = 2050;
      v70 = v34;
      v35 = "{msg%{public}.0s:#Warning Ignoring inaccurate location, lat:%{public, location:Encrypted_latitude}.*P, long:%{public, location:Encrypted_longitude}.*P, acc:%{public}0.2f}";
    }

    _os_log_impl(dword_100000000, v29, OS_LOG_TYPE_DEFAULT, v35, &v57, 0x3Cu);
    goto LABEL_51;
  }

  if (qword_1025D4800 != -1)
  {
    sub_101960AF8();
  }

  v13 = qword_1025D4808;
  if (os_log_type_enabled(qword_1025D4808, OS_LOG_TYPE_DEFAULT))
  {
    v14 = LocationLogEncryptionDataSize();
    v15 = LocationLogEncryptionEncryptData();
    v16 = LocationLogEncryptionDataSize();
    v17 = LocationLogEncryptionEncryptData();
    v18 = *(a4 + 20);
    v19 = *(a4 + 76);
    v20 = *(a4 + 88);
    v57 = 68290818;
    v58 = 0;
    v59 = 2082;
    v60 = "";
    v61 = 1040;
    v62 = v14;
    v63 = 2098;
    v64 = v15;
    v65 = 1040;
    v66 = v16;
    v67 = 2098;
    v68 = v17;
    v69 = 2050;
    v70 = v18;
    v71 = 2050;
    v72 = v19;
    v73 = 2050;
    v74 = v20;
    v21 = "{msg%{public}.0s:#Warning Ignoring expired location, lat:%{public, location:Encrypted_latitude}.*P, long:%{public, location:Encrypted_longitude}.*P, acc:%{public}0.2f, timestamp:%{public}0.2f, lifespan:%{public}0.2f}";
    v22 = v13;
    v23 = 80;
LABEL_38:
    _os_log_impl(dword_100000000, v22, OS_LOG_TYPE_DEFAULT, v21, &v57, v23);
  }
}

BOOL sub_100226220(unsigned __int8 *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a2 + 20);
  if ((*&v4 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && v4 <= 500.0 && v4 > 0.0)
  {
    v9 = sub_100CD49AC(a1, *(a2 + 4), *(a2 + 12));
    *a1 = v9;
    if (v3 != v9)
    {
      if (qword_1025D4650 != -1)
      {
        sub_101A58D5C();
      }

      v10 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_INFO))
      {
        v11 = *a1;
        v12 = *(a2 + 4);
        v13 = *(a2 + 12);
        v14 = *(a2 + 96);
        v15 = *(a2 + 20);
        *buf = 67241217;
        v18 = v11;
        v19 = 2053;
        v20 = v12;
        v21 = 2053;
        v22 = v13;
        v23 = 1026;
        v24 = v14;
        v25 = 2050;
        v26 = v15;
        _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_INFO, "DEMDeweightAreaMonitor,state,%{public}d,lat,%{sensitive}0.3f,lon,%{sensitive}0.3f,type,%{public}d,accuracy,%{public}0.3f", buf, 0x2Cu);
      }

      if (sub_10000A100(121, 2))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1025D4650 != -1)
        {
          sub_101A58D70();
        }

        v16 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "BOOL CLDEMDeweightAreaMonitor::didDEMDeweightAreaStatusChange(const CLDaemonLocation &)", "%s\n", v16);
        if (v16 != buf)
        {
          free(v16);
        }
      }
    }
  }

  if (qword_1025D4650 != -1)
  {
    sub_101A58D70();
  }

  v5 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_INFO))
  {
    v6 = *a1;
    *buf = 67240448;
    v18 = v6;
    v19 = 1026;
    LODWORD(v20) = v3;
    _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_INFO, "DEMDeweightAreaMonitor,state,fIsInDEMDeweightArea,%{public}d,previousIsInDEMDeweightArea,%{public}d", buf, 0xEu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101A58D98(a1, v3);
  }

  return v3 != *a1;
}

uint64_t sub_100226520(float64_t *a1, double *a2, _DWORD *a3)
{
  v3.f64[0] = *a1;
  v4 = *a1 >= 25.127422;
  if (*a2 < -123.496142)
  {
    v4 = 0;
  }

  if (v3.f64[0] > 48.309232)
  {
    v4 = 0;
  }

  result = *a2 <= -70.312522 && v4;
  if (result != 1)
  {
    v9 = 0;
    if (!a3)
    {
      return 0;
    }

    goto LABEL_17;
  }

  v6 = 0;
  v3.f64[1] = *a2;
  while (1)
  {
    v7 = xmmword_1026319C4[v6];
    v8.i32[0] = vuzp1_s16(vmovn_s64(vcgeq_f64(v3, vcvtq_f64_f32(*v7.f32))), *&v3.f64[0]).u32[0];
    v8.i32[1] = vuzp1_s16(*&v3, vmovn_s64(vcgeq_f64(vcvt_hight_f64_f32(v7), v3))).i32[1];
    if (vminv_u16(v8))
    {
      break;
    }

    if (++v6 == 50)
    {
      return 0;
    }
  }

  if (a3)
  {
    v9 = v6 + 1;
LABEL_17:
    *a3 = v9;
    return result;
  }

  return 1;
}

void sub_1002265EC(uint64_t a1, int *a2, int8x16_t *a3, uint64_t a4)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a4 + 40) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_101A402D8();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v11 = 1;
    v8 = _os_activity_create(dword_100000000, "CL: CLFenceMonitorNotifier::onLocationNotification", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v8, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_101A402EC();
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
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLFenceMonitorNotifier::onLocationNotification, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v11 = 0;
  }

  sub_100227404(a4, v7, a2, a3);
  if (v11 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

double sub_1002267B8(uint64_t a1)
{
  *(a1 + 4) = *(a1 + 100);
  *(a1 + 132) = *(a1 + 136);
  result = *(a1 + 116);
  *(a1 + 60) = result;
  return result;
}

uint64_t sub_1002267D4(uint64_t a1, uint64_t a2, double a3)
{
  if ((*(a1 + 615) & 1) == 0 && sub_1002270A4(a2))
  {
    if (qword_1025D4640 != -1)
    {
      sub_101A4C9EC();
    }

    v6 = off_1025D4648;
    if (os_log_type_enabled(off_1025D4648, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_INFO, "Fence: handleLocation, Ignoring cell or LAC position as per defaults", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101A52C58();
    }

    return 1;
  }

  if ((*(a1 + 616) & 1) == 0)
  {
    v7 = *(a2 + 96);
    if (v7 == 11 || v7 == 4)
    {
      if (qword_1025D4640 != -1)
      {
        sub_101A4C9EC();
      }

      v9 = off_1025D4648;
      if (os_log_type_enabled(off_1025D4648, OS_LOG_TYPE_INFO))
      {
        *v22 = 0;
        _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_INFO, "Fence: handleLocation, Ignoring WiFi position as per defaults", v22, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101A52D34();
      }

      return 1;
    }
  }

  v10 = *(a2 + 96);
  if ((*(a1 + 617) & 1) == 0 && (v10 & 0xFFFFFFF7) == 1)
  {
    if (qword_1025D4640 != -1)
    {
      sub_101A4C9EC();
    }

    v11 = off_1025D4648;
    if (os_log_type_enabled(off_1025D4648, OS_LOG_TYPE_INFO))
    {
      *v21 = 0;
      _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_INFO, "Fence: handleLocation, Ignoring GPS position as per defaults", v21, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101A52E10();
    }

    return 1;
  }

  if ((*(a1 + 618) & 1) == 0 && v10 == 10)
  {
    if (qword_1025D4640 != -1)
    {
      sub_101A4C9EC();
    }

    v12 = off_1025D4648;
    if (os_log_type_enabled(off_1025D4648, OS_LOG_TYPE_INFO))
    {
      *v20 = 0;
      _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_INFO, "Fence: handleLocation, Ignoring Pipeline position as per defaults", v20, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101A52EEC();
    }

    return 1;
  }

  if (*(a2 + 76) == *(a1 + 672))
  {
    if (qword_1025D4640 != -1)
    {
      sub_101A4C9EC();
    }

    v13 = off_1025D4648;
    if (os_log_type_enabled(off_1025D4648, OS_LOG_TYPE_INFO))
    {
      *v19 = 0;
      _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_INFO, "Fence: handleLocation, Ignoring duplicate location", v19, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101A52FC8();
    }

    return 1;
  }

  v15 = *(a1 + 684);
  v16 = (*(**(a1 + 1768) + 408))(*(a1 + 1768));
  v17 = (*(**(a1 + 1768) + 16))(*(a1 + 1768));
  v18 = sub_10022980C(a1 + 904);
  return sub_100228E24((a1 + 664), (a1 + 680), a1 + 288, a1 + 448, a2, v15, v16, v17, a3, v18);
}

BOOL sub_100226B74(uint64_t a1)
{
  v1 = *(a1 + 96);
  v2 = v1 & 0xFFFFFFF7;
  v3 = v1 & 0xFFFFFFFE;
  return v2 == 1 || v3 == 2;
}

double sub_100226B90(double *a1, uint64_t a2, float64x2_t *a3)
{
  if (*(a2 + 232) == *(a2 + 224))
  {
    return sub_100109D18(a3, *a1, a1[1], *(a2 + 72), *(a2 + 80), 0.0);
  }

  else
  {
    return sub_100AF6D04(a1, a2 + 224, 0);
  }
}

double sub_100226BC0(uint64_t a1)
{
  v2 = fmax(sub_1002298D0(a1), *(a1 + 88));
  if (*(a1 + 168) <= 1u && v2 < *(sub_100226B68() + 2))
  {
    return *(sub_100226B68() + 2);
  }

  return v2;
}

uint64_t sub_100226C1C(uint64_t a1, uint64_t a2)
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
    v6 = sub_100229BA0(v3 + 32, a2);
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
  if (v5 == v2 || sub_100229BA0(a2, v5 + 32))
  {
    return v2;
  }

  return v5;
}

void sub_100226CA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    if (a3)
    {
      CLClientGetDistanceHighPrecision();
      if (vabdd_f64(*(a3 + 76), *(a2 + 76)) < 1.0)
      {
        if (qword_1025D4600 != -1)
        {
          sub_10193CEB4();
        }

        v5 = qword_1025D4608;
        if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
        {
          *v6 = 0;
          _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEBUG, "#HST, Warning small delta time for speed estimation - setting delta time to one", v6, 2u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_10193D2A0();
        }
      }
    }
  }
}

void sub_100226DAC(uint64_t a1, double a2, double a3)
{
  v6 = sub_10000B1F8();
  sub_10000AED4(v6, &v13);
  v7 = v14;
  v8 = *(a1 + 56) + a2 * (v14 - *(a1 + 64));
  *(a1 + 56) = v8;
  *(a1 + 64) = v7;
  *(a1 + 258) = v8 > 1600.0;
  if (*(a1 + 3) == 1)
  {
    v9 = a2 > 10.0;
  }

  else
  {
    v10 = v8 <= 1600.0;
    v11 = a3 * 3.0 + 35.0;
    v12 = !v10 && a3 * 3.0 + 26.0 < a2;
    *(a1 + 256) = v11 < a2;
    *(a1 + 257) = a3 * 3.0 + 26.0 < a2;
    v9 = v11 < a2 || v12;
  }

  *(a1 + 3) = v9;
}

uint64_t sub_100226E7C(uint64_t result)
{
  v1 = result;
  v3 = (result + 3);
  v2 = *(result + 3);
  if (v2 != *(result + 259))
  {
    if (qword_1025D4600 != -1)
    {
      sub_10193CEB4();
    }

    v4 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
    {
      v5 = v1[3];
      v6 = v1[256];
      v7 = v1[257];
      v8 = v1[258];
      v9[0] = 67109888;
      v9[1] = v5;
      v10 = 1024;
      v11 = v6;
      v12 = 1024;
      v13 = v7;
      v14 = 1024;
      v15 = v8;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "#HST, High speed transit state changed,newState,{public}%d,isAboveAutomobileSpeed,{public}%d,isHighwaySpeed,{public}%d,isSmoothTrajectory,{public}%d", v9, 0x1Au);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10193CFC4(v3, v1);
    }

    result = sub_1000B92AC((v1 + 24), v1[3]);
    LOBYTE(v2) = v1[3];
  }

  v1[259] = v2;
  return result;
}

__n128 sub_100226FAC(void *a1, uint64_t a2)
{
  v4 = a1[2];
  v5 = a1[1];
  v6 = 26 * ((v4 - v5) >> 3) - 1;
  if (v4 == v5)
  {
    v6 = 0;
  }

  v7 = a1[5] + a1[4];
  if (v6 == v7)
  {
    sub_10030806C(a1);
    v5 = a1[1];
    v7 = a1[5] + a1[4];
  }

  v8 = *(v5 + 8 * (v7 / 0x1A)) + 156 * (v7 % 0x1A);
  v9 = *(a2 + 16);
  *v8 = *a2;
  *(v8 + 16) = v9;
  v10 = *(a2 + 32);
  v11 = *(a2 + 48);
  v12 = *(a2 + 80);
  *(v8 + 64) = *(a2 + 64);
  *(v8 + 80) = v12;
  *(v8 + 32) = v10;
  *(v8 + 48) = v11;
  result = *(a2 + 96);
  v14 = *(a2 + 112);
  v15 = *(a2 + 128);
  *(v8 + 140) = *(a2 + 140);
  *(v8 + 112) = v14;
  *(v8 + 128) = v15;
  *(v8 + 96) = result;
  ++a1[5];
  return result;
}

id sub_1002270B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = +[NSMutableDictionary dictionary];
  sub_10022721C(a2, a3, v5);
  result = [v5 count];
  if (result)
  {
    if (qword_1025D4620 != -1)
    {
      sub_10016157C();
    }

    v7 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138543362;
      v9 = v5;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEBUG, "UclpMetric, submitting cell location distance metrics, %{public}@", buf, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018E9094(v5);
    }

    return AnalyticsSendEventLazy();
  }

  return result;
}

id sub_10022721C(uint64_t a1, uint64_t a2, void *a3)
{
  result = sub_100072814(a1);
  if (result)
  {
    result = sub_100072814(a2);
    if (result)
    {
      [a3 setObject:+[NSNumber numberWithDouble:](NSNumber forKeyedSubscript:{"numberWithDouble:", *(a1 + 76) - *(a2 + 76)), @"age"}];
      v7 = sub_100117154(*(a1 + 4), *(a1 + 12), *(a2 + 4), *(a2 + 12));
      [a3 setObject:+[NSNumber numberWithDouble:](NSNumber forKeyedSubscript:{"numberWithDouble:"), @"distance"}];
      if (*(a1 + 20) != -1.0)
      {
        [a3 setObject:+[NSNumber numberWithDouble:](NSNumber forKeyedSubscript:{"numberWithDouble:"), @"horizontalAccuracy"}];
        v8 = *(a1 + 20);
        if (v8 > 0.0)
        {
          [a3 setObject:+[NSNumber numberWithDouble:](NSNumber forKeyedSubscript:{"numberWithDouble:", v7 / v8), @"horizontalDistanceRatio"}];
        }
      }

      [a3 setObject:+[NSNumber numberWithUnsignedInt:](NSNumber forKeyedSubscript:{"numberWithUnsignedInt:", *(a1 + 96)), @"locationType"}];
      if (*(a2 + 20) != -1.0)
      {
        [a3 setObject:+[NSNumber numberWithDouble:](NSNumber forKeyedSubscript:{"numberWithDouble:"), @"ReferenceHorizontalAccuracy"}];
      }

      result = [a3 setObject:+[NSNumber numberWithUnsignedInt:](NSNumber forKeyedSubscript:{"numberWithUnsignedInt:", *(a2 + 96)), @"referenceLocationType"}];
      if (*(a2 + 36) != -1.0)
      {
        result = [a3 setObject:+[NSNumber numberWithDouble:](NSNumber forKeyedSubscript:{"numberWithDouble:"), @"ReferenceVerticalAccuracy"}];
      }

      if (*(a1 + 36) != -1.0)
      {
        v9 = [NSNumber numberWithDouble:?];

        return [a3 setObject:v9 forKeyedSubscript:@"verticalAccuracy"];
      }
    }
  }

  return result;
}

void sub_100227404(uint64_t a1, uint64_t a2, int *a3, int8x16_t *a4)
{
  Current = CFAbsoluteTimeGetCurrent();
  sub_1002287A0((a1 + 120), a3, a4, Current);
  if (*(a1 + 3032))
  {
    sub_10000AED0(v8);
    sub_100223710(a3, a4, v8, Current);
    sub_10021CB90(*(a1 + 3032));
    sub_10000CE1C(v8);
  }
}

void sub_100227494(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10000CE1C(va);
  _Unwind_Resume(a1);
}

void sub_1002274A8(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v8 = *(a2 + 112);
  v89 = *(a2 + 96);
  v90 = v8;
  v91[0] = *(a2 + 128);
  *(v91 + 12) = *(a2 + 140);
  v9 = *(a2 + 48);
  v86 = *(a2 + 32);
  v87 = v9;
  v10 = *(a2 + 80);
  *v88 = *(a2 + 64);
  *&v88[16] = v10;
  v11 = *(a2 + 16);
  *v85 = *a2;
  *&v85[16] = v11;
  sub_1002267B8(v85);
  sub_100228D9C(a1 + 904, v85);
  if (qword_1025D4640 != -1)
  {
    sub_101A4C980();
  }

  v12 = off_1025D4648;
  if (os_log_type_enabled(off_1025D4648, OS_LOG_TYPE_DEBUG))
  {
    sub_100072AFC(v85, __p);
    v13 = v94 >= 0 ? __p : *__p;
    v14 = *(a1 + 612);
    v15 = *(a1 + 728);
    v16 = *(a1 + 730);
    *buf = 136643587;
    *&buf[4] = v13;
    *&buf[12] = 1025;
    *&buf[14] = v14;
    *&buf[18] = 1025;
    *&buf[20] = v15;
    *&buf[24] = 1025;
    *&buf[26] = v16;
    _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_DEBUG, "Fence: handleLocation, location, %{sensitive}s, services, %{private}d, airplane, %{private}d, connected, %{private}d", buf, 0x1Eu);
    if (SHIBYTE(v94) < 0)
    {
      operator delete(*__p);
    }
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4640 != -1)
    {
      sub_101A4C980();
    }

    sub_100072AFC(v85, &v82);
    if (v84 >= 0)
    {
      v64 = &v82;
    }

    else
    {
      v64 = v82;
    }

    v65 = *(a1 + 612);
    v66 = *(a1 + 728);
    v67 = *(a1 + 730);
    *__p = 136643587;
    *&__p[4] = v64;
    *&__p[12] = 1025;
    *&__p[14] = v65;
    v93 = 1025;
    v94 = v66;
    v95 = 1025;
    v96 = v67;
    v68 = _os_log_send_and_compose_impl();
    if (v84 < 0)
    {
      operator delete(v82);
    }

    sub_100152C7C("Generic", 1, 0, 2, "void CLFenceMonitor::handleLocation(const CFAbsoluteTime, const CLDaemonLocation &, const CLDaemonLocationPrivate &)", "%s\n", v68);
    if (v68 != buf)
    {
      free(v68);
    }
  }

  if (!*(a1 + 612) || *(a1 + 730) == 1 && (*(a1 + 731) & 1) == 0)
  {
    (*(**(a1 + 1768) + 352))(*(a1 + 1768));
    (*(**(a1 + 1768) + 288))(*(a1 + 1768));
    return;
  }

  sub_100228DE0(a1 + 1312, a2);
  if ((sub_1002267D4(a1, v85, a4) & 1) == 0)
  {
    *(a1 + 672) = *(a2 + 76);
    if (!*(a1 + 256) || sub_100227084(v85))
    {
      if (qword_1025D4640 != -1)
      {
        sub_101A4C980();
      }

      v17 = off_1025D4648;
      if (os_log_type_enabled(off_1025D4648, OS_LOG_TYPE_DEBUG))
      {
        v18 = *(a1 + 256);
        v19 = sub_1001FD6E4(v89);
        *buf = 134349315;
        *&buf[4] = v18;
        *&buf[12] = 2081;
        *&buf[14] = v19;
        _os_log_impl(dword_100000000, v17, OS_LOG_TYPE_DEBUG, "Fence: cancelLocationWatchdog, num fences, %{public}lu, location type, %{private}s", buf, 0x16u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101A4E5F8(a1 + 256, v85);
      }

      (*(**(a1 + 1768) + 352))(*(a1 + 1768));
      (*(**(a1 + 1768) + 288))(*(a1 + 1768));
      *(a1 + 684) = 0;
    }

    if (qword_1025D4640 != -1)
    {
      sub_101A4C980();
    }

    v20 = off_1025D4648;
    if (os_log_type_enabled(off_1025D4648, OS_LOG_TYPE_INFO))
    {
      *buf = 134546433;
      *&buf[4] = *&v85[4];
      *&buf[12] = 2053;
      *&buf[14] = *&v85[12];
      *&buf[22] = 2049;
      *&buf[24] = *&v85[20];
      LOWORD(v98) = 2049;
      *(&v98 + 2) = *&v88[12];
      _os_log_impl(dword_100000000, v20, OS_LOG_TYPE_INFO, "Fence: Handling location, %{sensitive}+.8f, %{sensitive}+.8f, acc, %{private}.2f, timestamp, %{private}.1lf\n", buf, 0x2Au);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101A4E70C(v85);
    }

    v79 = *(a1 + 623);
    sub_1001097CC((a1 + 1776), a1 + 448, v85);
    v22 = v21;
    v78 = sub_100226B74(v85);
    v23 = v89;
    v24 = sub_1002270A4(v85);
    v76 = sub_100226B74(a1 + 448);
    if (v24)
    {
      *(a1 + 880) = a4;
    }

    if (v23 == 11 || v23 == 4)
    {
      *(a1 + 888) = a4;
    }

    if (v78 || v23 == 10)
    {
      *(a1 + 896) = a4;
    }

    v25 = *(a1 + 544);
    v77 = v89;
    if (vabdd_f64(a4, *(a1 + 524)) >= *(sub_100226B68() + 27) || v22 >= *(sub_100226B68() + 28))
    {
      v27 = 1;
    }

    else
    {
      v26 = *(a1 + 468);
      if (v26 < *(sub_100226B68() + 29))
      {
        v75 = 0;
LABEL_43:
        v81 = 5000000.0;
        if (*sub_100229814() == 1 && *&v85[20] <= 250.0)
        {
          v28 = *(a1 + 208);
          if (v28 && *&v88[12] <= *(*(*(a1 + 176) + 8 * ((v28 + *(a1 + 200) - 1) / 0x1AuLL)) + 156 * ((v28 + *(a1 + 200) - 1) % 0x1AuLL) + 76) + 10.0)
          {
            if (qword_1025D4640 != -1)
            {
              sub_101A4C980();
            }

            v29 = off_1025D4648;
            if (os_log_type_enabled(off_1025D4648, OS_LOG_TYPE_DEBUG))
            {
              *buf = 0;
              _os_log_impl(dword_100000000, v29, OS_LOG_TYPE_DEBUG, "not caching location newer than threshold", buf, 2u);
            }

            if (sub_10000A100(121, 2))
            {
              sub_101A4E840();
            }
          }

          else
          {
            sub_100226FAC((a1 + 168), v85);
          }

          v30 = *(a1 + 208);
          if (v30 >= *(sub_100229814() + 12))
          {
            do
            {
              *(a1 + 200) = vaddq_s64(*(a1 + 200), xmmword_101C66230);
              sub_1001FD668(a1 + 168, 1);
              v31 = *(a1 + 208);
            }

            while (v31 >= *(sub_100229814() + 12));
          }
        }

        sub_100229878((a1 + 48), &v82);
        v32 = v82;
        if (v82)
        {
          ++*(v82 + 13);
          if ((v89 - 6) > 2)
          {
            if (v89 == 11 || v89 == 4)
            {
              ++v32[25];
            }

            else if ((v89 & 0xFFFFFFF7) == 1)
            {
              ++v32[26];
            }
          }

          else
          {
            ++v32[24];
          }
        }

        v80 = v24;
        v33 = *(a1 + 240);
        if (v33 != (a1 + 248))
        {
          v34 = 0;
          v35 = 0;
          v36 = v25 == 4 || (v25 & 0xFFFFFFFE) == 10;
          v37 = v36 || v25 == 13;
          v38 = v76;
          if (v37)
          {
            v38 = 1;
          }

          v39 = (v78 || v23 == 10) & v38 ^ 1 | v75;
          v40 = 5000000.0;
          while (1)
          {
            if (*(v33 + 284) == 1)
            {
              if (*(a1 + 730) != 1)
              {
                goto LABEL_81;
              }

              if (v33[33] == v33[32])
              {
                if (_os_feature_enabled_impl())
                {
                  goto LABEL_101;
                }

                v41 = 64;
              }

              else
              {
                v41 = 8;
              }

              if ((v33[24] & v41) != 0)
              {
LABEL_81:
                v102 = v89;
                v103 = v90;
                v104[0] = v91[0];
                *(v104 + 12) = *(v91 + 12);
                v98 = v86;
                v99 = v87;
                v100 = *v88;
                v101 = *&v88[16];
                *buf = *v85;
                *&buf[16] = *&v85[16];
                if (*(v33 + 53) == 2)
                {
                  sub_100CC3408(a1, (v33 + 4), buf);
                }

                v42 = sub_100229820(buf, (v33 + 4), (a1 + 1776));
                v81 = fmin(v42, v81);
                v43 = *(v33 + 70);
                v44 = fmin(v42, v40);
                if (v43)
                {
                  v40 = v44;
                }

                if (v43 == -1 || (v43 != 1 || !v78 && (v23 > 0xB || ((1 << v23) & 0xC10) == 0) && v77 != 13 || v42 < 50000.0) && ((v39 & 1) != 0 || *(a1 + 684) || sub_1002230EC((a1 + 48))))
                {
                  if ((v33[24] & 0x20) == 0 && (v42 <= 25000.0 || *(v33 + 70) == -1))
                  {
                    ++v34;
                  }

                  v46 = v90;
                  *(a1 + 544) = v89;
                  *(a1 + 560) = v46;
                  *(a1 + 576) = v91[0];
                  *(a1 + 588) = *(v91 + 12);
                  v47 = v87;
                  *(a1 + 480) = v86;
                  *(a1 + 496) = v47;
                  v48 = *&v88[16];
                  *(a1 + 512) = *v88;
                  *(a1 + 528) = v48;
                  v49 = *&v85[16];
                  *(a1 + 448) = *v85;
                  *(a1 + 464) = v49;
                  sub_100229948(a1, v85, a3, (v33 + 4));
                  ++v35;
                  v79 = 1;
                }
              }
            }

LABEL_101:
            v50 = v33[1];
            if (v50)
            {
              do
              {
                v51 = v50;
                v50 = *v50;
              }

              while (v50);
            }

            else
            {
              do
              {
                v51 = v33[2];
                v36 = *v51 == v33;
                v33 = v51;
              }

              while (!v36);
            }

            v33 = v51;
            if (v51 == (a1 + 248))
            {
              goto LABEL_111;
            }
          }
        }

        v35 = 0;
        v34 = 0;
        v40 = 5000000.0;
LABEL_111:
        sub_10021DEC0(a1, a4);
        p_info = &OBJC_METACLASS___CLMotionHintLoggerAdapter.info;
        if (v77 == 13 || v23 == 11 || v23 == 4)
        {
          *(a1 + 696) = 0;
        }

        else if (v80 && *(a1 + 256))
        {
          v56 = *(a1 + 648);
          if ((*(**(a1 + 1768) + 16))(*(a1 + 1768)))
          {
            if (qword_1025D4640 != -1)
            {
              sub_101A4C980();
            }

            v57 = off_1025D4648;
            if (os_log_type_enabled(off_1025D4648, OS_LOG_TYPE_DEBUG))
            {
              v58 = *(a1 + 256);
              *buf = 134349056;
              *&buf[4] = v58;
              _os_log_impl(dword_100000000, v57, OS_LOG_TYPE_DEBUG, "request a scan to comfirm cell location, fences, %{public}lu", buf, 0xCu);
            }

            if (sub_10000A100(121, 2))
            {
              sub_101A4C9A8(buf);
              v71 = *(a1 + 256);
              *__p = 134349056;
              *&__p[4] = v71;
              v72 = _os_log_send_and_compose_impl();
              sub_100152C7C("Generic", 1, 0, 2, "void CLFenceMonitor::handleLocation(const CFAbsoluteTime, const CLDaemonLocation &, const CLDaemonLocationPrivate &)", "%s\n", v72);
              if (v72 != buf)
              {
                free(v72);
              }

              p_info = (&OBJC_METACLASS___CLMotionHintLoggerAdapter + 32);
            }

            if (*&v85[20] > 1400.0 && v34)
            {
              if (qword_1025D4640 != -1)
              {
                sub_101A4C980();
              }

              v59 = p_info[201];
              if (os_log_type_enabled(v59, OS_LOG_TYPE_DEBUG))
              {
                *buf = 67240449;
                *&buf[4] = v34;
                *&buf[8] = 2049;
                *&buf[10] = v81;
                _os_log_impl(dword_100000000, v59, OS_LOG_TYPE_DEBUG, "Fence: requesting a scan, numOfFencesNeedScan, %{public}d, minDistanceToFence, %{private}.1lf", buf, 0x12u);
              }

              if (sub_10000A100(121, 2))
              {
                sub_101A4C9A8(buf);
                *__p = 67240449;
                *&__p[4] = v34;
                *&__p[8] = 2049;
                *&__p[10] = v81;
                v74 = _os_log_send_and_compose_impl();
                sub_100152C7C("Generic", 1, 0, 2, "void CLFenceMonitor::handleLocation(const CFAbsoluteTime, const CLDaemonLocation &, const CLDaemonLocationPrivate &)", "%s\n", v74);
                if (v74 != buf)
                {
                  free(v74);
                }
              }

              (*(*a1 + 96))(a1, 10, 0, a4);
              goto LABEL_120;
            }
          }

          else if (v40 <= 25000.0)
          {
            v62 = (*(**(a1 + 1768) + 408))(*(a1 + 1768));
            if (vabdd_f64(a4, v56) <= 756.0)
            {
              v63 = 1;
            }

            else
            {
              v63 = v62;
            }

            if ((v63 & 1) == 0 && sub_10021D1B8(a1))
            {
              *(a1 + 648) = a4;
              *(a1 + 684) = 0x300000001;
              (*(**(a1 + 1768) + 240))(*(a1 + 1768), &unk_101CF5678);
            }
          }

          else
          {
            if (qword_1025D4640 != -1)
            {
              sub_101A4C980();
            }

            v61 = off_1025D4648;
            if (os_log_type_enabled(off_1025D4648, OS_LOG_TYPE_DEBUG))
            {
              *buf = 134283521;
              *&buf[4] = v40;
              _os_log_impl(dword_100000000, v61, OS_LOG_TYPE_DEBUG, "cancelLocationWatchdog, wifi off, minDistance, %{private}lf", buf, 0xCu);
            }

            if (sub_10000A100(121, 2))
            {
              sub_101A4C9A8(buf);
              *__p = 134283521;
              *&__p[4] = v40;
              v73 = _os_log_send_and_compose_impl();
              sub_100152C7C("Generic", 1, 0, 2, "void CLFenceMonitor::handleLocation(const CFAbsoluteTime, const CLDaemonLocation &, const CLDaemonLocationPrivate &)", "%s\n", v73);
              if (v73 != buf)
              {
                free(v73);
              }

              p_info = (&OBJC_METACLASS___CLMotionHintLoggerAdapter + 32);
            }

            (*(**(a1 + 1768) + 288))(*(a1 + 1768));
            *(a1 + 684) = 0;
          }
        }

        if (qword_1025D4640 != -1)
        {
          sub_101A4C980();
        }

        v53 = p_info[201];
        if (os_log_type_enabled(v53, OS_LOG_TYPE_DEBUG))
        {
          *buf = 67240449;
          *&buf[4] = v34;
          *&buf[8] = 2049;
          *&buf[10] = v81;
          _os_log_impl(dword_100000000, v53, OS_LOG_TYPE_DEBUG, "Fence: avoid a scan, numOfFencesNeedScan, %{public}d, minDistanceToFence, %{private}.1lf", buf, 0x12u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_101A4C9A8(buf);
          *__p = 67240449;
          *&__p[4] = v34;
          *&__p[8] = 2049;
          *&__p[10] = v81;
          v69 = _os_log_send_and_compose_impl();
          sub_100152C7C("Generic", 1, 0, 2, "void CLFenceMonitor::handleLocation(const CFAbsoluteTime, const CLDaemonLocation &, const CLDaemonLocationPrivate &)", "%s\n", v69);
          if (v69 != buf)
          {
            free(v69);
          }
        }

LABEL_120:
        if (sub_100071CA0())
        {
          sub_10004FD18(buf);
          *__p = *(a1 + 256);
          sub_10004345C(buf, "fenceUpdate", __p);
          sub_100116D68(buf, "horizontalAccuracy", &v85[20]);
          *__p = v35;
          sub_10004345C(buf, "numOfDispatchedChecks", __p);
          sub_100116D68(buf, "minDistanceToFence", &v81);
          sub_100071CAC(buf, "locationd");
          sub_100005DA4(buf);
        }

        if (v79)
        {
          if (qword_1025D4640 != -1)
          {
            sub_101A4C980();
          }

          v54 = p_info[201];
          if (os_log_type_enabled(v54, OS_LOG_TYPE_DEBUG))
          {
            *buf = 0;
            _os_log_impl(dword_100000000, v54, OS_LOG_TYPE_DEBUG, "Fence: Dispatch continuous engagement", buf, 2u);
          }

          if (sub_10000A100(121, 2))
          {
            sub_101A4C9A8(buf);
            *__p = 0;
            v70 = _os_log_send_and_compose_impl();
            sub_100152C7C("Generic", 1, 0, 2, "void CLFenceMonitor::handleLocation(const CFAbsoluteTime, const CLDaemonLocation &, const CLDaemonLocationPrivate &)", "%s\n", v70);
            if (v70 != buf)
            {
              free(v70);
            }
          }

          v55 = v81 - *&v85[20];
          if (v81 - *&v85[20] < 0.0)
          {
            v55 = 0.0;
          }

          *(a1 + 736) = v55;
          *(a1 + 744) = *&v88[12];
          sub_10022312C(a1, a4);
          (*(**(a1 + 1768) + 120))(*(a1 + 1768));
        }

        if (!v35 && *(a1 + 684) && sub_10021DBD8(a1 + 904, a4))
        {
          sub_100E270D4(a1 + 1312);
        }

        if (v83)
        {
          sub_100008080(v83);
        }

        return;
      }

      v60 = *&v85[20];
      v27 = v60 < *(sub_100226B68() + 29);
    }

    v75 = v27;
    goto LABEL_43;
  }
}

void sub_100228740(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, std::__shared_weak_count *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45)
{
  if (a19)
  {
    sub_100008080(a19);
  }

  _Unwind_Resume(exception_object);
}

void sub_1002287A0(void *a1, int *a2, uint64_t a3, double a4)
{
  v7 = *a2;
  if (!*a2)
  {
    goto LABEL_4;
  }

  if (v7 == 22)
  {
    if (qword_1025D4640 != -1)
    {
      sub_101A4C9EC();
    }

    v14 = off_1025D4648;
    if (os_log_type_enabled(off_1025D4648, OS_LOG_TYPE_DEBUG))
    {
      v15 = sub_10030D934(*(a3 + 808));
      *buf = 134217984;
      *&buf[4] = v15;
      _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_DEBUG, "Fence: received WSB, %lu", buf, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101A4E2E8(a3);
    }

    v16 = a1 + 18;
    a1[19] = a1[18];
    if (sub_10030D934(*(a3 + 808)) && sub_10030D934(*(a3 + 808)))
    {
      v17 = 0;
      do
      {
        sub_10030E2C0(*(a3 + 808), v17, buf);
        v18 = a1[19];
        v19 = a1[20];
        if (v18 >= v19)
        {
          v28 = 0x6F96F96F96F96F97 * ((v18 - *v16) >> 2);
          v29 = v28 + 1;
          if ((v28 + 1) > 0x1A41A41A41A41A4)
          {
            sub_10028C64C();
          }

          v30 = 0x6F96F96F96F96F97 * ((v19 - *v16) >> 2);
          if (2 * v30 > v29)
          {
            v29 = 2 * v30;
          }

          if (v30 >= 0xD20D20D20D20D2)
          {
            v31 = 0x1A41A41A41A41A4;
          }

          else
          {
            v31 = v29;
          }

          if (v31)
          {
            sub_100238948((a1 + 18), v31);
          }

          v32 = 156 * v28;
          v33 = *&buf[16];
          *v32 = *buf;
          *(v32 + 16) = v33;
          v34 = *v56;
          v35 = *&v56[16];
          v36 = v58;
          *(v32 + 64) = v57;
          *(v32 + 80) = v36;
          *(v32 + 32) = v34;
          *(v32 + 48) = v35;
          v37 = v59;
          v38 = v60;
          v39 = v61[0];
          *(v32 + 140) = *(v61 + 12);
          *(v32 + 112) = v38;
          *(v32 + 128) = v39;
          *(v32 + 96) = v37;
          v27 = 156 * v28 + 156;
          v40 = a1[18];
          v41 = a1[19] - v40;
          v42 = 156 * v28 - v41;
          memcpy((v32 - v41), v40, v41);
          v43 = a1[18];
          a1[18] = v42;
          a1[19] = v27;
          a1[20] = 0;
          if (v43)
          {
            operator delete(v43);
          }
        }

        else
        {
          v20 = *&buf[16];
          *v18 = *buf;
          v18[1] = v20;
          v21 = *v56;
          v22 = *&v56[16];
          v23 = v58;
          v18[4] = v57;
          v18[5] = v23;
          v18[2] = v21;
          v18[3] = v22;
          v24 = v59;
          v25 = v60;
          v26 = v61[0];
          *(v18 + 140) = *(v61 + 12);
          v18[7] = v25;
          v18[8] = v26;
          v18[6] = v24;
          v27 = v18 + 156;
        }

        a1[19] = v27;
        ++v17;
      }

      while (v17 < sub_10030D934(*(a3 + 808)));
    }
  }

  else
  {
    if (v7 == 3)
    {
LABEL_4:
      v8 = *(a3 + 88);
      v9 = *(a3 + 76);
      if (v8 >= 0.0 && v8 + v9 < a4)
      {
        if (qword_1025D4640 != -1)
        {
          sub_101A4C9EC();
        }

        v44 = off_1025D4648;
        if (os_log_type_enabled(off_1025D4648, OS_LOG_TYPE_DEBUG))
        {
          v45 = *(a3 + 4);
          v46 = *(a3 + 12);
          v47 = *(a3 + 20);
          v48 = *(a3 + 76);
          v49 = *(a3 + 88);
          *buf = 134546689;
          *&buf[4] = v45;
          *&buf[12] = 2053;
          *&buf[14] = v46;
          *&buf[22] = 2050;
          *&buf[24] = v47;
          *v56 = 2050;
          *&v56[2] = v48;
          *&v56[10] = 2050;
          *&v56[12] = v49;
          _os_log_impl(dword_100000000, v44, OS_LOG_TYPE_DEBUG, "Fence: Ignoring expired location <%{sensitive}+.8f, %{sensitive}.8f>, acc %{public}.2f, timestamp %{public}.2f, lifespan %{public}.2f", buf, 0x34u);
        }

        if (sub_10000A100(121, 2))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1025D4640 != -1)
          {
            sub_101A4C980();
          }

          v50 = _os_log_send_and_compose_impl();
          sub_100152C7C("Generic", 1, 0, 2, "void CLFenceMonitor::handleLocationNotification(const CFAbsoluteTime, const CLLocationProvider_Type::Notification &, const CLLocationProvider_Type::NotificationData &)", "%s\n", v50);
          if (v50 != buf)
          {
            free(v50);
          }
        }
      }

      else if (vabdd_f64(a4, v9) <= 10.0)
      {
        v54 = a3 + 160;

        sub_1002274A8(a1, a3, v54, a4);
      }

      else
      {
        if (qword_1025D4640 != -1)
        {
          sub_101A4C9EC();
        }

        v11 = a4 - v9;
        v12 = off_1025D4648;
        if (os_log_type_enabled(off_1025D4648, OS_LOG_TYPE_INFO))
        {
          v13 = *(a3 + 96);
          *buf = 67240448;
          *&buf[4] = v13;
          *&buf[8] = 2050;
          *&buf[10] = v11;
          _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_INFO, "Fence: Ignoring old location, type, %{public}d, age, %{public}.1f", buf, 0x12u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_101A4E3E8(a3, v11);
        }
      }

      return;
    }

    if (qword_1025D4640 != -1)
    {
      sub_101A4C9EC();
    }

    v52 = off_1025D4648;
    if (os_log_type_enabled(off_1025D4648, OS_LOG_TYPE_DEFAULT))
    {
      v53 = *a2;
      *buf = 67240192;
      *&buf[4] = v53;
      _os_log_impl(dword_100000000, v52, OS_LOG_TYPE_DEFAULT, "#Warning Fence: Got unknown location notification %{public}d", buf, 8u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101A4E504(a2);
    }
  }
}

__n128 sub_100228D9C(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  *(a1 + 24) = a2[1];
  *(a1 + 8) = v2;
  v3 = a2[2];
  v4 = a2[3];
  v5 = a2[4];
  *(a1 + 88) = a2[5];
  *(a1 + 72) = v5;
  *(a1 + 56) = v4;
  *(a1 + 40) = v3;
  result = a2[6];
  v7 = a2[7];
  v8 = a2[8];
  *(a1 + 148) = *(a2 + 140);
  *(a1 + 136) = v8;
  *(a1 + 120) = v7;
  *(a1 + 104) = result;
  return result;
}

uint64_t sub_100228DE0(uint64_t result, uint64_t a2)
{
  ++*(result + 184);
  v2 = *(a2 + 96) - 1;
  if (v2 <= 0xA && ((0x66Du >> v2) & 1) != 0)
  {
    ++*(result + qword_101D03510[v2]);
  }

  return result;
}

uint64_t sub_100228E24(double *a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, int a7, int a8, double a9, char a10)
{
  __p = 0uLL;
  v74 = 0;
  switch(*(a5 + 96))
  {
    case 0:
    case 2:
    case 5:
    case 0xC:
    case 0xE:
      if (a8 && a10)
      {
        HIBYTE(v74) = 13;
        strcpy(&__p, "other leashed");
        *a1 = 0.0;
        *a2 = 0;
        goto LABEL_72;
      }

      HIBYTE(v74) = 10;
      strcpy(&__p, "other type");
      goto LABEL_19;
    case 1:
    case 3:
    case 9:
      v19 = *(a3 + 96);
      v32 = v19 > 9;
      v20 = (1 << v19) & 0x20E;
      v21 = v32 || v20 == 0;
      if (v21 || vabdd_f64(a9, *a1) > *(sub_100226B68() + 35) && vabdd_f64(a9, *(a3 + 76)) > *(sub_100226B68() + 36))
      {
        goto LABEL_12;
      }

      v23 = *a2 + 1;
      goto LABEL_23;
    case 4:
    case 0xD:
      if (*(a5 + 84) > 0x42u)
      {
        v29 = *(a5 + 20);
        if (v29 < *(sub_100226B68() + 30))
        {
          HIBYTE(v74) = 4;
          strcpy(&__p, "2+AP");
LABEL_19:
          *a1 = 0.0;
          *a2 = 0;
          goto LABEL_58;
        }

        HIBYTE(v74) = 8;
        strcpy(&__p, "accuracy");
      }

      else
      {
        HIBYTE(v74) = 6;
        strcpy(&__p, "one-AP");
      }

      *a1 = 0.0;
      *a2 = 0;
      if (a6 >= 2)
      {
        goto LABEL_58;
      }

      goto LABEL_72;
    case 6:
    case 7:
    case 8:
    case 0xA:
      HIBYTE(v74) = 4;
      strcpy(&__p, "type");
      goto LABEL_19;
    case 0xB:
LABEL_12:
      if (qword_1025D4640 != -1)
      {
        sub_1019EC040();
      }

      v22 = off_1025D4648;
      if (os_log_type_enabled(off_1025D4648, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v22, OS_LOG_TYPE_DEBUG, "Fence: location treated as new continuous session", buf, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1019EC38C(buf);
        LOWORD(v75) = 0;
        v72 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "static BOOL CLFenceMonitorLogic::shouldIgnoreLocation(const CFAbsoluteTime, CFAbsoluteTime &, int &, CLDaemonLocation &, const CLDaemonLocation &, const CLDaemonLocation &, const int, const BOOL, const BOOL, const BOOL)", "%s\n", v72);
        if (v72 != buf)
        {
          free(v72);
        }
      }

      v23 = 0;
      *a1 = a9;
LABEL_23:
      *a2 = v23;
      v24 = *(sub_100226B68() + 105);
      v25 = *(sub_100226B68() + 106);
      v26 = *a2;
      if (a6 >= 2 && a7 && v26 >= v24)
      {
        if (SHIBYTE(v74) < 0)
        {
          *(&__p + 1) = 9;
          p_p = __p;
        }

        else
        {
          HIBYTE(v74) = 9;
          p_p = &__p;
        }

        strcpy(p_p, "requested");
      }

      else if ((a8 & 1) != 0 || v26 < v24)
      {
        if (*(a5 + 84) < 51 || v26 <= v25)
        {
          if (a8 && a10)
          {
            if (SHIBYTE(v74) < 0)
            {
              *(&__p + 1) = 7;
              v31 = __p;
            }

            else
            {
              HIBYTE(v74) = 7;
              v31 = &__p;
            }

            strcpy(v31, "leashed");
          }

          else
          {
            v32 = vabdd_f64(a9, *(a4 + 76)) <= 120.0 || v26 < v24;
            if (!v32)
            {
              if (SHIBYTE(v74) < 0)
              {
                *(&__p + 1) = 17;
                v42 = __p;
              }

              else
              {
                HIBYTE(v74) = 17;
                v42 = &__p;
              }

              strcpy(v42, "last location old");
              goto LABEL_58;
            }

            if (SHIBYTE(v74) < 0)
            {
              *(&__p + 1) = 5;
              v33 = __p;
            }

            else
            {
              HIBYTE(v74) = 5;
              v33 = &__p;
            }

            strcpy(v33, "other");
          }

LABEL_72:
          if (qword_1025D4640 != -1)
          {
            sub_1019EC264();
          }

          v43 = off_1025D4648;
          if (os_log_type_enabled(off_1025D4648, OS_LOG_TYPE_DEBUG))
          {
            v44 = &__p;
            if (v74 < 0)
            {
              v44 = __p;
            }

            v45 = *(a5 + 96);
            v46 = *(a5 + 20);
            v47 = *(a5 + 84);
            v48 = *(a5 + 128);
            v49 = *a2;
            *buf = 136382211;
            v90 = v44;
            v91 = 1026;
            v92 = v45;
            v93 = 2050;
            v94 = v46;
            v95 = 1026;
            v96 = v47;
            v97 = 1026;
            v98 = v48;
            v99 = 1025;
            v100 = v49;
            v101 = 1025;
            v102 = a6;
            _os_log_impl(dword_100000000, v43, OS_LOG_TYPE_DEBUG, "Fence: Ignoring location, %{private}s, type, %{public}d, hacc, %{public}.1f, conf, %{public}d, integ, %{public}d, fixCnt, %{private}d, counter, %{private}d", buf, 0x34u);
          }

          if (sub_10000A100(121, 2))
          {
            sub_1019EC38C(buf);
            v65 = &__p;
            if (v74 < 0)
            {
              v65 = __p;
            }

            v66 = *(a5 + 96);
            v67 = *(a5 + 20);
            v68 = *(a5 + 84);
            v69 = *(a5 + 128);
            v70 = *a2;
            v75 = 136382211;
            v76 = v65;
            v77 = 1026;
            v78 = v66;
            v79 = 2050;
            v80 = v67;
            v81 = 1026;
            v82 = v68;
            v83 = 1026;
            v84 = v69;
            v85 = 1025;
            v86 = v70;
            v87 = 1025;
            v88 = a6;
            v71 = _os_log_send_and_compose_impl();
            sub_100152C7C("Generic", 1, 0, 2, "static BOOL CLFenceMonitorLogic::shouldIgnoreLocation(const CFAbsoluteTime, CFAbsoluteTime &, int &, CLDaemonLocation &, const CLDaemonLocation &, const CLDaemonLocation &, const int, const BOOL, const BOOL, const BOOL)", "%s\n", v71);
            if (v71 != buf)
            {
              free(v71);
            }
          }

          v41 = 1;
          goto LABEL_80;
        }

        if (SHIBYTE(v74) < 0)
        {
          *(&__p + 1) = 4;
          v30 = __p;
        }

        else
        {
          HIBYTE(v74) = 4;
          v30 = &__p;
        }

        strcpy(v30, "good");
      }

      else
      {
        if (SHIBYTE(v74) < 0)
        {
          *(&__p + 1) = 8;
          v28 = __p;
        }

        else
        {
          HIBYTE(v74) = 8;
          v28 = &__p;
        }

        strcpy(v28, "wifi off");
      }

LABEL_58:
      if (qword_1025D4640 != -1)
      {
        sub_1019EC264();
      }

      v34 = off_1025D4648;
      if (os_log_type_enabled(off_1025D4648, OS_LOG_TYPE_DEBUG))
      {
        v35 = &__p;
        if (v74 < 0)
        {
          v35 = __p;
        }

        v36 = *(a5 + 96);
        v37 = *(a5 + 20);
        v38 = *(a5 + 84);
        v39 = *(a5 + 128);
        v40 = *a2;
        *buf = 136382211;
        v90 = v35;
        v91 = 1026;
        v92 = v36;
        v93 = 2050;
        v94 = v37;
        v95 = 1026;
        v96 = v38;
        v97 = 1026;
        v98 = v39;
        v99 = 1025;
        v100 = v40;
        v101 = 1025;
        v102 = a6;
        _os_log_impl(dword_100000000, v34, OS_LOG_TYPE_DEBUG, "Fence: Accepting location, %{private}s, type, %{public}d, hacc, %{public}.1f, conf, %{public}d, integ, %{public}d, fixCnt, %{private}d, counter, %{private}d", buf, 0x34u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1019EC38C(buf);
        v58 = &__p;
        if (v74 < 0)
        {
          v58 = __p;
        }

        v59 = *(a5 + 96);
        v60 = *(a5 + 20);
        v61 = *(a5 + 84);
        v62 = *(a5 + 128);
        v63 = *a2;
        v75 = 136382211;
        v76 = v58;
        v77 = 1026;
        v78 = v59;
        v79 = 2050;
        v80 = v60;
        v81 = 1026;
        v82 = v61;
        v83 = 1026;
        v84 = v62;
        v85 = 1025;
        v86 = v63;
        v87 = 1025;
        v88 = a6;
        v64 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "static BOOL CLFenceMonitorLogic::shouldIgnoreLocation(const CFAbsoluteTime, CFAbsoluteTime &, int &, CLDaemonLocation &, const CLDaemonLocation &, const CLDaemonLocation &, const int, const BOOL, const BOOL, const BOOL)", "%s\n", v64);
        if (v64 != buf)
        {
          free(v64);
        }
      }

      v41 = 0;
LABEL_80:
      if (*(a5 + 20) > 0.0)
      {
        v50 = *(a5 + 16);
        *a3 = *a5;
        *(a3 + 16) = v50;
        v51 = *(a5 + 32);
        v52 = *(a5 + 48);
        v53 = *(a5 + 80);
        *(a3 + 64) = *(a5 + 64);
        *(a3 + 80) = v53;
        *(a3 + 32) = v51;
        *(a3 + 48) = v52;
        v54 = *(a5 + 96);
        v55 = *(a5 + 112);
        v56 = *(a5 + 128);
        *(a3 + 140) = *(a5 + 140);
        *(a3 + 112) = v55;
        *(a3 + 128) = v56;
        *(a3 + 96) = v54;
      }

      if (SHIBYTE(v74) < 0)
      {
        operator delete(__p);
      }

      return v41;
    default:
      goto LABEL_58;
  }
}

void sub_100229798(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_100229820(uint64_t a1, uint64_t a2, float64x2_t *a3)
{
  v4 = sub_100226B90((a1 + 4), a2, a3) - *(a1 + 20);
  if (*(a2 + 232) == *(a2 + 224))
  {
    return v4 - sub_100226BC0(a2);
  }

  return v4;
}

void *sub_100229878@<X0>(void *result@<X0>, void *a2@<X8>)
{
  v2 = result[8];
  if (v2 && (v3 = (*(result[4] + (((v2 + result[7] - 1) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (v2 + *(result + 56) - 1)), v4 = *v3, (*(*v3 + 24) & 1) == 0))
  {
    v5 = v3[1];
    *a2 = v4;
    a2[1] = v5;
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
  }

  return result;
}

double sub_1002298D0(uint64_t a1)
{
  if ((*sub_100226B68() & 1) != 0 || sub_100226B68()[1] == 1 && *(a1 + 176) == 1)
  {
    sub_10001A3E8();
    v2 = sub_10003A088();
    v3 = sub_100226B68();
    v4 = (v3 + 24);
    if ((v2 & 8) != 0)
    {
      v4 = (v3 + 8);
    }
  }

  else
  {
    v4 = &qword_10262E1F0;
  }

  return *v4;
}

void sub_100229948(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_100226C1C(a1 + 240, a4);
  if (a1 + 248 != v7)
  {
    v8 = v7;
    if (*(a1 + 730) == 1)
    {
      if (*(v7 + 264) == *(v7 + 256))
      {
        if (_os_feature_enabled_impl())
        {
LABEL_20:
          if (qword_1025D4640 != -1)
          {
            sub_101A4C9EC();
          }

          v16 = off_1025D4648;
          if (os_log_type_enabled(off_1025D4648, OS_LOG_TYPE_ERROR))
          {
            LOWORD(v17) = 0;
            _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_ERROR, "Processing location when not supposed to", &v17, 2u);
          }

          if (sub_10000A100(121, 0))
          {
            sub_101A50EC4();
          }

          goto LABEL_26;
        }

        v9 = 64;
      }

      else
      {
        v9 = 8;
      }

      if ((*(v8 + 192) & v9) == 0)
      {
        goto LABEL_20;
      }
    }

LABEL_26:
    sub_100229CF4(a1);
    return;
  }

  if (qword_1025D4640 != -1)
  {
    sub_101A4C9EC();
  }

  v10 = off_1025D4648;
  if (os_log_type_enabled(off_1025D4648, OS_LOG_TYPE_DEFAULT))
  {
    v11 = *(a2 + 4);
    v12 = *(a2 + 12);
    v13 = *(a2 + 20);
    if (*(a4 + 23) >= 0)
    {
      v14 = a4;
    }

    else
    {
      v14 = *a4;
    }

    if (*(a4 + 47) >= 0)
    {
      v15 = a4 + 24;
    }

    else
    {
      v15 = *(a4 + 24);
    }

    v17 = 134546691;
    v18 = v11;
    v19 = 2053;
    v20 = v12;
    v21 = 2050;
    v22 = v13;
    v23 = 2082;
    v24 = v14;
    v25 = 2081;
    v26 = v15;
    _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEFAULT, "#Warning Fence: Attempt to handle location <%{sensitive}+.8f,%{sensitive}+.8f> acc %{public}.2f for non-present fence %{public}s/%{private}s", &v17, 0x34u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101A50FA8();
  }
}

uint64_t sub_100229BA0(uint64_t a1, uint64_t a2)
{
  v2 = (a1 + 48);
  v3 = (a2 + 48);
  v4 = *(a1 + 71);
  if (v4 >= 0)
  {
    v5 = *(a1 + 71);
  }

  else
  {
    v5 = *(a1 + 56);
  }

  v6 = *(a2 + 71);
  v7 = v6;
  if ((v6 & 0x80u) != 0)
  {
    v6 = *(a2 + 56);
  }

  if (v5 != v6)
  {
    goto LABEL_14;
  }

  v10 = (v4 >= 0 ? a1 + 48 : *v2);
  v11 = v7 >= 0 ? (a2 + 48) : *v3;
  if (memcmp(v10, v11, v5))
  {
    goto LABEL_14;
  }

  v15 = *(a1 + 23);
  if (v15 >= 0)
  {
    v16 = *(a1 + 23);
  }

  else
  {
    v16 = *(a1 + 8);
  }

  v17 = *(a2 + 23);
  v18 = v17;
  if ((v17 & 0x80u) != 0)
  {
    v17 = *(a2 + 8);
  }

  if (v16 != v17 || (v15 >= 0 ? (v19 = a1) : (v19 = *a1), v18 >= 0 ? (v20 = a2) : (v20 = *a2), memcmp(v19, v20, v16)))
  {
    v12 = a1;
    v13 = a2;
    return (sub_100019438(v12, v13) & 0x80u) != 0;
  }

  v2 = (a1 + 24);
  v3 = (a2 + 24);
  v21 = *(a1 + 47);
  if (v21 >= 0)
  {
    v22 = *(a1 + 47);
  }

  else
  {
    v22 = *(a1 + 32);
  }

  v23 = *(a2 + 47);
  v24 = v23;
  if ((v23 & 0x80u) != 0)
  {
    v23 = *(a2 + 32);
  }

  if (v22 != v23 || (v21 >= 0 ? (v25 = (a1 + 24)) : (v25 = *v2), v24 >= 0 ? (v26 = (a2 + 24)) : (v26 = *v3), result = memcmp(v25, v26, v22), result))
  {
LABEL_14:
    v12 = v2;
    v13 = v3;
    return (sub_100019438(v12, v13) & 0x80u) != 0;
  }

  return result;
}

void sub_100229CF4(uint64_t a1)
{
  v3 = __chkstk_darwin(a1);
  v5 = v4;
  v7 = v6;
  v9 = v8;
  p_info = v2;
  v12 = v11;
  v14 = v13;
  v15 = v3;
  v16 = v1;
  v17 = v13[7];
  v259 = v13[6];
  v260 = v17;
  v261[0] = v13[8];
  *(v261 + 12) = *(v13 + 140);
  v18 = v13[3];
  v255 = v13[2];
  v256 = v18;
  v19 = v13[5];
  v257 = v13[4];
  v258 = v19;
  v20 = v13[1];
  *v254 = *v13;
  *&v254[16] = v20;
  if (*(v2 + 180) == 2)
  {
    v240 = sub_100CC3408(v1, v2, v254) ^ 1;
  }

  else
  {
    v240 = 0;
  }

  v21 = sub_100226B90(&v254[4], p_info, (v16 + 1776));
  sub_10021CF0C(v16, &v259, 0, v15);
  __asm { FMOV            V0.2D, #-1.0 }

  __src[1] = _Q0;
  __src[2] = _Q0;
  __src[3] = _Q0;
  __src[4] = _Q0;
  __src[5] = _Q0;
  __src[6] = _Q0;
  __src[7] = _Q0;
  *(&__src[9] + 4) = 0;
  *(&__src[8] + 12) = 0;
  *(&__src[9] + 12) = xmmword_101C75BF0;
  *(&__src[10] + 12) = _Q0;
  *(&__src[11] + 12) = _Q0;
  *(&__src[12] + 12) = _Q0;
  DWORD2(__src[8]) = 0xFFFF;
  HIDWORD(__src[13]) = 0;
  *&__src[14] = 0xBFF0000000000000;
  __src[20] = xmmword_101C76220;
  __src[21] = _Q0;
  v27 = *(v16 + 288);
  v26 = *(v16 + 304);
  __src[22] = _Q0;
  *(&__src[17] + 4) = *(v14 + 140);
  v28 = v14[7];
  *(&__src[16] + 8) = v14[8];
  v29 = v14[6];
  *(&__src[15] + 8) = v28;
  *(&__src[14] + 8) = v29;
  v30 = v14[3];
  *(&__src[10] + 8) = v14[2];
  *(&__src[11] + 8) = v30;
  v31 = v14[5];
  *(&__src[12] + 8) = v14[4];
  v32 = *v14;
  *(&__src[9] + 8) = v14[1];
  DWORD1(__src[18]) = 0xFFFF;
  *&__src[19] = 0;
  *(&__src[18] + 1) = 0;
  *(&__src[19] + 1) = 0xBFF0000000000000;
  *(&__src[8] + 8) = v32;
  *(&__src[13] + 8) = v31;
  v33 = *(v16 + 560);
  *(&__src[24] + 4) = *(v16 + 544);
  *(&__src[25] + 4) = v33;
  *(&__src[26] + 4) = *(v16 + 576);
  v34 = *(v16 + 496);
  *(&__src[20] + 4) = *(v16 + 480);
  *(&__src[21] + 4) = v34;
  v35 = *(v16 + 528);
  *(&__src[22] + 4) = *(v16 + 512);
  *(&__src[23] + 4) = v35;
  v36 = *(v16 + 464);
  *(&__src[18] + 4) = *(v16 + 448);
  *(&__src[19] + 4) = v36;
  *(&__src[36] + 12) = *(v16 + 428);
  v37 = *(v16 + 400);
  __src[34] = *(v16 + 384);
  __src[35] = v37;
  __src[36] = *(v16 + 416);
  v38 = *(v16 + 336);
  __src[30] = *(v16 + 320);
  __src[31] = v38;
  v39 = *(v16 + 368);
  __src[32] = *(v16 + 352);
  __src[33] = v39;
  BYTE8(__src[0]) = 1;
  *&__src[8] = v15;
  __src[27] = *(v16 + 588);
  __src[28] = v27;
  __src[29] = v26;
  DWORD1(__src[38]) = *(v16 + 604);
  (*(**(v16 + 1768) + 128))(buf);
  __src[48] = *&v293[32];
  __src[49] = *v294;
  *&__src[50] = *&v294[16];
  __src[44] = *&buf[32];
  __src[45] = *&buf[48];
  __src[47] = *&v293[16];
  __src[46] = *v293;
  __src[43] = *&buf[16];
  __src[42] = *buf;
  (*(**(v16 + 1768) + 136))(buf);
  *(&__src[56] + 8) = *&v293[32];
  *(&__src[57] + 8) = *v294;
  *(&__src[52] + 8) = *&buf[32];
  *(&__src[53] + 8) = *&buf[48];
  *(&__src[54] + 8) = *v293;
  *(&__src[55] + 8) = *&v293[16];
  *(&__src[50] + 8) = *buf;
  *(&__src[51] + 8) = *&buf[16];
  *(&__src[58] + 1) = *&v294[16];
  v40 = (*(**(v16 + 1768) + 16))();
  sub_100221314(v254, v12, p_info, v9, v40, __src, v21);
  v41 = __src[0];
  v252 = __src[0];
  v238 = *(v16 + 604);
  v42 = *v9;
  v239 = *(v9 + 17);
  if (v240)
  {
    if (v42)
    {
      return;
    }

    v43 = sub_100226BC0(p_info);
    if (v21 <= v43 + *(sub_100226B68() + 42))
    {
      return;
    }

    v41 = 1;
    v252 = 1;
  }

  if (v5)
  {
    v44 = sub_100226C1C(v16 + 1880, p_info);
    v41 = v252;
    if (!v252 && v16 + 1888 != v44)
    {
      sub_100CC7508((v16 + 1880), v44);
      v41 = v252;
    }
  }

  if (v41 == -1 || v41 == v42)
  {
    v46 = 0;
    v47 = v41 | v42;
    _ZF = (~*(p_info + 40) & 5) == 0 && v47 == 0;
    v45 = _ZF && v239 == 1 && v238 == 2;
    goto LABEL_74;
  }

  if (v42 != -1 && !v41)
  {
    if ((p_info[20] & 1) == 0)
    {
      v45 = 0;
      v46 = 1;
      goto LABEL_43;
    }

LABEL_42:
    v46 = 0;
    v45 = 1;
    goto LABEL_43;
  }

  v45 = 0;
  v46 = 1;
  if (v42 != -1 && v41 == 1)
  {
    if ((p_info[20] & 2) == 0)
    {
      v45 = 0;
      goto LABEL_43;
    }

    if (*(v16 + 656) > 0.0)
    {
      if (qword_1025D4640 != -1)
      {
        sub_101A4C980();
      }

      v51 = off_1025D4648;
      if (os_log_type_enabled(off_1025D4648, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v51, OS_LOG_TYPE_DEBUG, "Fence: invalidate EPNO exit trigger time", buf, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101A4EB8C();
      }

      *(v16 + 656) = 0;
    }

    goto LABEL_42;
  }

LABEL_43:
  if ((~*(p_info + 40) & 5) == 0)
  {
    if (!v252 && v238 != 2)
    {
      if (qword_1025D4640 != -1)
      {
        sub_101A4C980();
      }

      v52 = off_1025D4648;
      if (os_log_type_enabled(off_1025D4648, OS_LOG_TYPE_DEBUG))
      {
        v53 = p_info + 3;
        if (*(p_info + 47) < 0)
        {
          v53 = p_info[3];
        }

        if ((v252 + 1) > 4)
        {
          v54 = "---";
        }

        else
        {
          v54 = off_1024A5428[v252 + 1];
        }

        *buf = 136380931;
        *&buf[4] = v53;
        *&buf[12] = 2081;
        *&buf[14] = v54;
        _os_log_impl(dword_100000000, v52, OS_LOG_TYPE_DEBUG, "Fence: %{private}s, filtering unwanted, %{private}s, nofitication, has not achieved settled state yet", buf, 0x16u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101A4EC70();
      }

      v46 = 0;
      v45 = 0;
    }

    if (v252 == 1 && v239 != 2 && (p_info[20] & 2) != 0)
    {
      if (qword_1025D4640 != -1)
      {
        sub_101A4C980();
      }

      v55 = off_1025D4648;
      if (os_log_type_enabled(off_1025D4648, OS_LOG_TYPE_DEBUG))
      {
        sub_1008C3CF8(p_info, buf);
        v56 = buf[23] >= 0 ? buf : *buf;
        v57 = (v252 + 1) > 4 ? "---" : off_1024A5428[v252 + 1];
        LODWORD(v262.__r_.__value_.__l.__data_) = 136380931;
        *(v262.__r_.__value_.__r.__words + 4) = v56;
        WORD2(v262.__r_.__value_.__r.__words[1]) = 2081;
        *(&v262.__r_.__value_.__r.__words[1] + 6) = v57;
        _os_log_impl(dword_100000000, v55, OS_LOG_TYPE_DEBUG, "Fence: %{private}s, filtering unwanted, %{private}s, nofitication, never achieved settled state for entry notification", &v262, 0x16u);
        if ((buf[23] & 0x80000000) != 0)
        {
          operator delete(*buf);
        }
      }

      if (sub_10000A100(121, 2))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1025D4640 != -1)
        {
          sub_101A4C980();
        }

        sub_1008C3CF8(p_info, &v262);
        if ((v262.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v201 = &v262;
        }

        else
        {
          v201 = v262.__r_.__value_.__r.__words[0];
        }

        if ((v252 + 1) > 4)
        {
          v202 = "---";
        }

        else
        {
          v202 = off_1024A5428[v252 + 1];
        }

        v291.type = 136380931;
        *&v291.confidence = v201;
        LOWORD(v291.mountedState) = 2081;
        *(&v291.mountedState + 2) = v202;
        v203 = _os_log_send_and_compose_impl();
        if (SHIBYTE(v262.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v262.__r_.__value_.__l.__data_);
        }

        sub_100152C7C("Generic", 1, 0, 2, "void CLFenceMonitor::handleLocationMonitoredFence(const CFAbsoluteTime, const CLDaemonLocation &, const CLDaemonLocationPrivate &, const CLFenceManager_Type::Fence &, CLFenceMonitorLogic::FenceMonitoringStatus &, const BOOL, const BOOL)", "%s\n", v203);
        if (v203 != buf)
        {
          free(v203);
        }
      }

      v46 = 0;
      v45 = 0;
    }
  }

LABEL_74:
  v237 = sub_10021D984(v16, v15);
  if ((v46 | v45) != 1)
  {
    v236 = 0;
    v235 = 0;
    v46 = 0;
    v45 = 0;
    if (!v7)
    {
      goto LABEL_274;
    }

    goto LABEL_227;
  }

  if ((p_info[20] & 0x80) != 0)
  {
    if (v16 + 824 != sub_100226C1C(v16 + 816, p_info))
    {
      sub_10005FB68(buf);
      if (sub_1002D2820(v16, p_info, buf))
      {
        v61 = sub_100226C1C(v16 + 240, buf);
        if (v16 + 248 == v61)
        {
          sub_1004BF9B8(buf);
        }

        else
        {
          v62 = *(v61 + 280);
          sub_1004BF9B8(buf);
          if (v62 != -1)
          {
            goto LABEL_224;
          }
        }
      }

      else
      {
        if (*&v314[12])
        {
          *&v315 = *&v314[12];
          operator delete(*&v314[12]);
        }

        if ((v314[3] & 0x80000000) != 0)
        {
          operator delete(v310);
        }

        if ((v293[7] & 0x80000000) != 0)
        {
          operator delete(*&buf[48]);
        }

        if ((buf[47] & 0x80000000) != 0)
        {
          operator delete(*&buf[24]);
        }

        if ((buf[23] & 0x80000000) != 0)
        {
          operator delete(*buf);
        }
      }
    }

    if (v42 == -1)
    {
      if (v45)
      {
        if (qword_1025D4640 != -1)
        {
          sub_101A4C980();
        }

        v101 = off_1025D4648;
        if (os_log_type_enabled(off_1025D4648, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(dword_100000000, v101, OS_LOG_TYPE_ERROR, "#significantFence, state init on transition", buf, 2u);
        }

        if (sub_10000A100(121, 0))
        {
          sub_101A4EF28();
        }
      }

      sub_10000EC00(v243, "SigFence");
      sub_100CBABD0(v16, p_info, &v252, v243);
      if ((v244 & 0x80000000) == 0)
      {
        goto LABEL_224;
      }

      v100 = v243[0];
      goto LABEL_223;
    }

    if (!v45)
    {
      v236 = 0;
      v46 = 0;
LABEL_226:
      v235 = 1;
      if (!v7)
      {
        goto LABEL_274;
      }

LABEL_227:
      if ((*(v16 + 1875) & 1) != 0 || *(v16 + 1874) == 1)
      {
        v102 = v252 == 1 ? v45 : 0;
        if (v102 == 1 && v259 == 4 && *(p_info + 43) == 1)
        {
          if (qword_1025D4640 != -1)
          {
            sub_101A4C980();
          }

          v103 = off_1025D4648;
          if (os_log_type_enabled(off_1025D4648, OS_LOG_TYPE_DEBUG))
          {
            v104 = sub_100CB9350((v16 + 1840), v15);
            v105 = *(v16 + 1848);
            *buf = 67174913;
            *&buf[4] = v104;
            *&buf[8] = 2049;
            *&buf[10] = v105;
            _os_log_impl(dword_100000000, v103, OS_LOG_TYPE_DEBUG, "Fence: MiLo, homeLoi exit detected, isMicroLocationEventRecent, %{private}d, homeLoiProbability, %{private}.2f", buf, 0x12u);
          }

          if (sub_10000A100(121, 2))
          {
            sub_101A4F12C(v16, v15);
          }

          if (!sub_100CB9350((v16 + 1840), v15))
          {
            *buf = p_info;
            v111 = sub_100CC7964(v16 + 1880, p_info);
            v112 = v258;
            *(v111 + 344) = v257;
            *(v111 + 360) = v112;
            v113 = v256;
            *(v111 + 312) = v255;
            *(v111 + 328) = v113;
            *(v111 + 420) = *(v261 + 12);
            v114 = v261[0];
            v115 = v259;
            *(v111 + 392) = v260;
            *(v111 + 408) = v114;
            *(v111 + 376) = v115;
            v116 = *&v254[16];
            *(v111 + 280) = *v254;
            *(v111 + 296) = v116;
            if ((*(v16 + 1872) & 1) == 0)
            {
              (*(**(v16 + 1768) + 456))(*(v16 + 1768));
              v117 = *(v16 + 1768);
              v118 = sub_100226B68();
              (*(*v117 + 248))(v117, v118 + 400);
              *(v16 + 1872) = 1;
            }

            if (qword_1025D4640 != -1)
            {
              sub_101A4C980();
            }

            v119 = off_1025D4648;
            if (os_log_type_enabled(off_1025D4648, OS_LOG_TYPE_DEFAULT))
            {
              v120 = p_info + 3;
              if (*(p_info + 47) < 0)
              {
                v120 = p_info[3];
              }

              v121 = *(v16 + 1872);
              v122 = *(v16 + 1896);
              *buf = 136381187;
              *&buf[4] = v120;
              *&buf[12] = 1025;
              *&buf[14] = v121;
              *&buf[18] = 1025;
              *&buf[20] = v122;
              _os_log_impl(dword_100000000, v119, OS_LOG_TYPE_DEFAULT, "Fence: MiLo, Added fencePendingMiloLocalizer, %{private}s, fIsPendingMicroLocationEventUpdate, %{private}d, fFenceToLocationPendingMiLoLocalizer size, %{private}d", buf, 0x18u);
            }

            if (sub_10000A100(121, 2))
            {
              bzero(buf, 0x65CuLL);
              if (qword_1025D4640 != -1)
              {
                sub_101A4C980();
              }

              v125 = p_info[3];
              v124 = p_info + 3;
              v123 = v125;
              if (*(v124 + 23) >= 0)
              {
                v123 = v124;
              }

              v126 = *(v16 + 1872);
              v127 = *(v16 + 1896);
              LODWORD(v262.__r_.__value_.__l.__data_) = 136381187;
              *(v262.__r_.__value_.__r.__words + 4) = v123;
              WORD2(v262.__r_.__value_.__r.__words[1]) = 1025;
              *(&v262.__r_.__value_.__r.__words[1] + 6) = v126;
              WORD1(v262.__r_.__value_.__r.__words[2]) = 1025;
              HIDWORD(v262.__r_.__value_.__r.__words[2]) = v127;
              v128 = _os_log_send_and_compose_impl();
              sub_100152C7C("Generic", 1, 0, 2, "void CLFenceMonitor::handleLocationMonitoredFence(const CFAbsoluteTime, const CLDaemonLocation &, const CLDaemonLocationPrivate &, const CLFenceManager_Type::Fence &, CLFenceMonitorLogic::FenceMonitoringStatus &, const BOOL, const BOOL)", "%s\n", v128);
              if (v128 != buf)
              {
                free(v128);
              }
            }

            return;
          }

          v106 = *(v16 + 1848);
          if (v106 >= *(sub_100226B68() + 49) && *(v16 + 1856) == 1)
          {
            if (qword_1025D4640 != -1)
            {
              sub_101A4C980();
            }

            v107 = off_1025D4648;
            if (os_log_type_enabled(off_1025D4648, OS_LOG_TYPE_DEFAULT))
            {
              v108 = p_info + 3;
              if (*(p_info + 47) < 0)
              {
                v108 = p_info[3];
              }

              v109 = *(v16 + 1848);
              *buf = 136380931;
              *&buf[4] = v108;
              *&buf[12] = 2049;
              *&buf[14] = v109;
              _os_log_impl(dword_100000000, v107, OS_LOG_TYPE_DEFAULT, "#Warning Fence: MiLo, false exit detected, fence, %{private}s, homeLoiProbability, %{private}.2f", buf, 0x16u);
            }

            if (sub_10000A100(121, 2))
            {
              sub_101A4F260();
            }

            v110 = *(v16 + 1875);
            if (v110 == 1)
            {
              v46 = 0;
              v252 = 0;
            }

            v45 = v110 ^ 1;
            if (*(v16 + 1874) == 1)
            {
              sub_100E27324(v16 + 1312);
              sub_100CC3C38(v16, p_info, v15, *(v16 + 1848));
            }
          }

          else
          {
            if (*(v16 + 1874) == 1)
            {
              sub_100E27334(v16 + 1312);
            }

            v45 = 1;
          }
        }
      }

      goto LABEL_274;
    }

    if (qword_1025D4640 != -1)
    {
      sub_101A4C980();
    }

    v94 = off_1025D4648;
    if (os_log_type_enabled(off_1025D4648, OS_LOG_TYPE_DEFAULT))
    {
      if (*(p_info + 47) >= 0)
      {
        v95 = p_info + 3;
      }

      else
      {
        v95 = p_info[3];
      }

      v96 = *(v16 + 619);
      v98 = p_info[9];
      v97 = p_info[10];
      v99 = sub_100226BC0(p_info);
      *buf = 136381699;
      *&buf[4] = v95;
      *&buf[12] = 1026;
      *&buf[14] = v96;
      *&buf[18] = 2053;
      *&buf[20] = v98;
      *&buf[28] = 2053;
      *&buf[30] = v97;
      *&buf[38] = 2050;
      *&buf[40] = v99;
      _os_log_impl(dword_100000000, v94, OS_LOG_TYPE_DEFAULT, "#significantRegion: fence, %{private}s, fence event, hint, %{public}d, latLon, %{sensitive}.6lf,%{sensitive}.6lf, radius, %{public}.1lf", buf, 0x30u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101A4EDB0(p_info, v16);
    }

    (*(**(v16 + 1768) + 432))(*(v16 + 1768), &v252, p_info, v254);
    if ((*(v16 + 619) & 1) == 0)
    {
      sub_10000EC00(&v241, "SigFence");
      sub_100CBB08C(v16);
      if (v242 < 0)
      {
        v100 = v241;
LABEL_223:
        operator delete(v100);
      }
    }

LABEL_224:
    v236 = 0;
    v46 = 0;
    v45 = 0;
    goto LABEL_226;
  }

  if (sub_100CC3BB8(v16, (p_info + 3), p_info))
  {
    if ((p_info[22] & 1) == 0)
    {
      if (qword_1025D4640 != -1)
      {
        sub_101A4C980();
      }

      v58 = off_1025D4648;
      if (os_log_type_enabled(off_1025D4648, OS_LOG_TYPE_FAULT))
      {
        if (*(p_info + 23) >= 0)
        {
          v59 = p_info;
        }

        else
        {
          v59 = *p_info;
        }

        if (*(p_info + 47) >= 0)
        {
          v60 = p_info + 3;
        }

        else
        {
          v60 = p_info[3];
        }

        *buf = 136446467;
        *&buf[4] = v59;
        *&buf[12] = 2081;
        *&buf[14] = v60;
        _os_log_impl(dword_100000000, v58, OS_LOG_TYPE_FAULT, "LOI helper fence %{public}s/%{private}s has isHelperFence=false", buf, 0x16u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_101A4F014();
      }
    }

    if (*(p_info + 47) < 0)
    {
      sub_100007244(__dst, p_info[3], p_info[4]);
    }

    else
    {
      *__dst = *(p_info + 3);
      v251 = p_info[5];
    }

    v63 = *(v16 + 816);
    if (v63 != (v16 + 824))
    {
      while (1)
      {
        isa_high = SHIBYTE(v63[37].isa);
        if (isa_high >= 0)
        {
          isa = HIBYTE(v63[37].isa);
        }

        else
        {
          isa = v63[36].isa;
        }

        v66 = HIBYTE(v251);
        if (SHIBYTE(v251) < 0)
        {
          v66 = __dst[1];
        }

        if (isa != v66)
        {
          goto LABEL_139;
        }

        v67 = isa_high >= 0 ? &v63[35] : v63[35].isa;
        v68 = SHIBYTE(v251) >= 0 ? __dst : __dst[0];
        if (memcmp(v67, v68, isa))
        {
          goto LABEL_139;
        }

        v69 = SHIBYTE(v63[6].isa);
        if (v69 >= 0)
        {
          v70 = HIBYTE(v63[6].isa);
        }

        else
        {
          v70 = v63[5].isa;
        }

        v71 = *(p_info + 23);
        v72 = v71;
        if (v71 < 0)
        {
          v71 = p_info[1];
        }

        if (v70 != v71)
        {
          goto LABEL_139;
        }

        v73 = v69 >= 0 ? &v63[4] : v63[4].isa;
        v74 = v72 >= 0 ? p_info : *p_info;
        if (memcmp(v73, v74, v70))
        {
          goto LABEL_139;
        }

        v77 = sub_100226C1C(v16 + 240, &v63[4]);
        if (v16 + 248 != v77)
        {
          v78 = *(v77 + 280);
          if (v78 != -1)
          {
            break;
          }
        }

        sub_10000EC00(v248, "LoiFence");
        sub_100CBABD0(v16, &v63[4], &v252, v248);
        if (v249 < 0)
        {
          v85 = v248;
LABEL_168:
          operator delete(*v85);
        }

LABEL_139:
        v75 = v63[1].isa;
        if (v75)
        {
          do
          {
            v76 = v75;
            v75 = v75->isa;
          }

          while (v75);
        }

        else
        {
          do
          {
            v76 = v63[2].isa;
            _ZF = *v76 == v63;
            v63 = v76;
          }

          while (!_ZF);
        }

        v63 = v76;
        if (v76 == (v16 + 824))
        {
          goto LABEL_179;
        }
      }

      if (v252 == v78)
      {
        v79 = v45;
      }

      else
      {
        v79 = 1;
      }

      if (v252 == -1 || !v79)
      {
        goto LABEL_139;
      }

      if (qword_1025D4640 != -1)
      {
        sub_101A4C980();
      }

      log = off_1025D4648;
      if (os_log_type_enabled(off_1025D4648, OS_LOG_TYPE_DEFAULT))
      {
        v80 = v63 + 7;
        v205 = v42;
        v231 = v45;
        if (SHIBYTE(v63[9].isa) < 0)
        {
          v80 = v80->isa;
        }

        v81 = SHIBYTE(v251);
        v82 = __dst[0];
        v213 = *(v16 + 619);
        v217 = p_info[9];
        v221 = p_info[10];
        v225 = v80;
        v83 = sub_100226BC0(p_info);
        *buf = 136381955;
        if (v81 >= 0)
        {
          v84 = __dst;
        }

        else
        {
          v84 = v82;
        }

        *&buf[4] = v225;
        *&buf[12] = 2082;
        *&buf[14] = v84;
        *&buf[22] = 1026;
        *&buf[24] = v213;
        *&buf[28] = 2053;
        *&buf[30] = v217;
        *&buf[38] = 2053;
        *&buf[40] = v221;
        *&buf[48] = 2050;
        *&buf[50] = v83;
        _os_log_impl(dword_100000000, log, OS_LOG_TYPE_DEFAULT, "#significantRegion: fence, %{private}s, loi fence event, id, %{public}s, hint, %{public}d, latLon, %{sensitive}.6lf,%{sensitive}.6lf, radius, %{public}.1lf", buf, 0x3Au);
        v42 = v205;
        v45 = v231;
      }

      if (sub_10000A100(121, 2))
      {
        v232 = v45;
        v206 = v42;
        bzero(buf, 0x65CuLL);
        if (qword_1025D4640 != -1)
        {
          sub_101A4C980();
        }

        loga = v63 + 7;
        if (SHIBYTE(v63[9].isa) < 0)
        {
          loga = loga->isa;
        }

        v86 = SHIBYTE(v251);
        v87 = __dst[0];
        v214 = *(v16 + 619);
        v218 = p_info[9];
        v222 = p_info[10];
        v88 = sub_100226BC0(p_info);
        LODWORD(v262.__r_.__value_.__l.__data_) = 136381955;
        if (v86 >= 0)
        {
          v89 = __dst;
        }

        else
        {
          v89 = v87;
        }

        *(v262.__r_.__value_.__r.__words + 4) = loga;
        WORD2(v262.__r_.__value_.__r.__words[1]) = 2082;
        *(&v262.__r_.__value_.__r.__words[1] + 6) = v89;
        HIWORD(v262.__r_.__value_.__r.__words[2]) = 1026;
        *v263 = v214;
        *&v263[4] = 2053;
        *&v263[6] = v218;
        *&v263[14] = 2053;
        *&v263[16] = v222;
        *&v263[24] = 2050;
        *&v263[26] = v88;
        v90 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "void CLFenceMonitor::handleLocationMonitoredFence(const CFAbsoluteTime, const CLDaemonLocation &, const CLDaemonLocationPrivate &, const CLFenceManager_Type::Fence &, CLFenceMonitorLogic::FenceMonitoringStatus &, const BOOL, const BOOL)", "%s\n", v90);
        if (v90 != buf)
        {
          free(v90);
        }

        v42 = v206;
        v45 = v232;
      }

      (*(**(v16 + 1768) + 432))(*(v16 + 1768), &v252, &v63[4].isa, v254);
      if (*(v16 + 619))
      {
        goto LABEL_139;
      }

      sub_10000EC00(v247, "LoiFence");
      sub_100CBB08C(v16);
      if ((v247[23] & 0x80000000) == 0)
      {
        goto LABEL_139;
      }

      v85 = v247;
      goto LABEL_168;
    }

LABEL_179:
    if ((v45 & 1) != 0 && sub_100E26220((v16 + 1312)))
    {
      sub_1004BF718(&v262, p_info);
      *&v268[24] = sub_100CD1DBC(v16 + 904, p_info);
      *&v268[20] = sub_100CD1DFC(v16 + 904);
      v91 = *(v9 + 3);
      v245[2] = *(v9 + 2);
      v245[3] = v91;
      v245[4] = *(v9 + 4);
      v246 = v9[10];
      v92 = *(v9 + 1);
      v245[0] = *v9;
      v245[1] = v92;
      LODWORD(v245[0]) = v252;
      (*(**(v16 + 1768) + 128))(&v291);
      v93 = (*(**(v16 + 1768) + 16))(*(v16 + 1768));
      sub_100E27C80(buf, &v262, v245, (v16 + 1648), &v291, v254, (v16 + 144), v93, v15, *(v16 + 613), *(v16 + 728));
      sub_100E27C94(buf);
      *(v9 + 7) = v15;
      *(v9 + 16) = v259;
      if (*(&v315 + 1))
      {
        *v316 = *(&v315 + 1);
        operator delete(*(&v315 + 1));
      }

      if ((buf[31] & 0x80000000) != 0)
      {
        operator delete(*&buf[8]);
      }

      if (*&v276[12])
      {
        *v277 = *&v276[12];
        operator delete(*&v276[12]);
      }

      if ((v276[3] & 0x80000000) != 0)
      {
        operator delete(v272);
      }

      if (SHIBYTE(v265) < 0)
      {
        operator delete(*&v263[24]);
      }

      if ((v263[23] & 0x80000000) != 0)
      {
        operator delete(*v263);
      }

      if (SHIBYTE(v262.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v262.__r_.__value_.__l.__data_);
      }
    }

    if (SHIBYTE(v251) < 0)
    {
      operator delete(__dst[0]);
    }

    v235 = 0;
    v46 = 0;
    v45 = 0;
    v236 = 1;
    if (!v7)
    {
      goto LABEL_274;
    }

    goto LABEL_227;
  }

  v236 = 0;
  v235 = 0;
  if (v7)
  {
    goto LABEL_227;
  }

LABEL_274:
  if (*(v16 + 1874) == 1)
  {
    v129 = v252 == 1 ? v45 : 0;
    if (v129 == 1)
    {
      sub_100E27354(v16 + 1312);
      if (*(p_info + 43) == 1)
      {
        sub_100E27344(v16 + 1312);
        if (v259 == 4 && *(p_info + 43) == 1)
        {
          sub_100E27364(v16 + 1312);
        }
      }
    }
  }

  if (qword_1025D4640 != -1)
  {
    goto LABEL_401;
  }

  while (1)
  {
    v130 = off_1025D4648;
    if (os_log_type_enabled(off_1025D4648, OS_LOG_TYPE_DEFAULT))
    {
      if (*(p_info + 47) >= 0)
      {
        v131 = p_info + 3;
      }

      else
      {
        v131 = p_info[3];
      }

      if (*(p_info + 23) >= 0)
      {
        v132 = p_info;
      }

      else
      {
        v132 = *p_info;
      }

      v223 = v132;
      v226 = v131;
      v219 = sub_1001FD6E4(v259);
      v209 = *&v254[12];
      v211 = *&v254[4];
      v215 = *&v254[20];
      sub_10021DA88(*(v9 + 2), &v262);
      logb = v46;
      v233 = v45;
      if ((v262.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v133 = &v262;
      }

      else
      {
        v133 = v262.__r_.__value_.__r.__words[0];
      }

      v207 = v133;
      if ((*(**(v16 + 1768) + 16))(*(v16 + 1768)))
      {
        v134 = "+";
      }

      else
      {
        v134 = "-";
      }

      v135 = *(v16 + 623);
      if (p_info[29] == p_info[28])
      {
        v136 = p_info[9];
      }

      else
      {
        v136 = 0xBFF0000000000000;
      }

      if (p_info[29] == p_info[28])
      {
        v137 = p_info[10];
      }

      else
      {
        v137 = 0xBFF0000000000000;
      }

      v138 = sub_100226BC0(p_info);
      v139 = *(v9 + 5);
      v140 = v15 - v139;
      if (v139 <= 0.0)
      {
        v140 = -1.0;
      }

      v141 = *v9 + 1;
      if (v141 > 4)
      {
        v142 = "---";
      }

      else
      {
        v142 = off_1024A5428[v141];
      }

      if ((v252 + 1) > 4)
      {
        v143 = "---";
      }

      else
      {
        v143 = off_1024A5428[v252 + 1];
      }

      if (v239 > 2)
      {
        v144 = "---";
      }

      else
      {
        v144 = off_1024A5450[v239];
      }

      v145 = p_info[15];
      v146 = *(v16 + 684);
      v147 = *(v16 + 688);
      v148 = *(v16 + 704);
      v149 = *(v16 + 708);
      if (v238 > 2)
      {
        v150 = "---";
      }

      else
      {
        v150 = off_1024A5450[v238];
      }

      v151 = *(v9 + 7);
      v318 = v9[9];
      v152 = *(v9 + 21);
      v320 = *(v9 + 20);
      v153 = v15 - v151;
      if (v151 <= 0.0)
      {
        v153 = -1.0;
      }

      *&buf[4] = v226;
      *&buf[14] = v223;
      *&buf[24] = v219;
      *&buf[34] = v211;
      *&buf[44] = v209;
      *&buf[52] = 2050;
      *&buf[54] = v215;
      *&v293[10] = v207;
      *&v293[20] = v134;
      *&v293[42] = v135;
      *v294 = v136;
      *&buf[32] = 2053;
      *&buf[42] = 2053;
      *&v293[46] = 2053;
      *&v294[8] = 2053;
      *&v294[10] = v137;
      v296 = v145;
      v298 = v146;
      v300 = v147;
      v302 = v148;
      v304 = v149;
      v306 = v140;
      v310 = v142;
      v312 = v143;
      *v314 = v144;
      *&buf[12] = 2081;
      *&buf[22] = 2081;
      *&v293[8] = 2081;
      *&v293[18] = 2081;
      v309 = 2081;
      v311 = 2081;
      v313 = 2081;
      *&v314[8] = 2081;
      *&v314[10] = v150;
      *&v293[28] = 1025;
      *&v293[34] = 1025;
      *&v293[40] = 1025;
      v297 = 1025;
      v299 = 1025;
      v301 = 1025;
      v303 = 1025;
      v307 = 1025;
      *&v314[18] = 1025;
      *&buf[62] = 2049;
      *&v294[18] = 2049;
      v295 = 2049;
      v305 = 2049;
      WORD2(v315) = 2049;
      *(&v315 + 6) = v153;
      v317 = 2048;
      HIWORD(v315) = 1024;
      *&v316[4] = 1024;
      v319 = 1024;
      v321 = 1024;
      v322 = v152;
      *buf = 136388867;
      *v293 = v21;
      v45 = v233;
      *&v293[30] = v233;
      v46 = logb;
      *&v293[36] = logb;
      *&v294[20] = v138;
      v308 = v237;
      LODWORD(v315) = v240;
      *v316 = v235;
      *&v316[6] = v236;
      _os_log_impl(dword_100000000, v130, OS_LOG_TYPE_DEFAULT, "Fence: fenceUpdate, %{private}s, bundle, %{private}s, type, %{private}-16s, loc, %{sensitive}12.7lf, %{sensitive}12.7lf, acc, %{public}4.0lf, distance, %{private}9.0lf, tech, %{private}4s%{private}s, trans, %{private}d, state, %{private}d, cont, %{private}d, fence, %{sensitive}12.8lf, %{sensitive}12.8lf, %{private}.1lf, %{private}.1lf, sCount, %{private}d, %{private}d, trig, %{private}d, %{private}d, sinceLastLoc, %{private}.1lf, events, 0x%{private}08x, status, %{private}-10s => %{private}-10s, settled state, %{private}s ==> %{private}s, cantShiftButNeedTo, %{private}d, sinceLastTransition, %{private}.1lf, significant, %d, loi, %d, lastProximityStateTimestamp, %f, lastProximityState, %d, lastApproachingState, %d", buf, 0x118u);
      if (SHIBYTE(v262.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v262.__r_.__value_.__l.__data_);
      }
    }

    if (sub_10000A100(121, 2))
    {
      sub_101A4C9A8(buf);
      if (*(p_info + 47) >= 0)
      {
        v174 = p_info + 3;
      }

      else
      {
        v174 = p_info[3];
      }

      v224 = v174;
      if (*(p_info + 23) >= 0)
      {
        v175 = p_info;
      }

      else
      {
        v175 = *p_info;
      }

      v220 = v175;
      v216 = sub_1001FD6E4(v259);
      v210 = *&v254[12];
      v212 = *&v254[4];
      v176 = *&v254[20];
      sub_10021DA88(*(v9 + 2), &v291);
      logc = v46;
      v234 = v45;
      if (v291.conservativeMountedState >= 0)
      {
        v177 = &v291;
      }

      else
      {
        v177 = *&v291.type;
      }

      v208 = v177;
      if ((*(**(v16 + 1768) + 16))(*(v16 + 1768)))
      {
        v178 = "+";
      }

      else
      {
        v178 = "-";
      }

      v204 = *(v16 + 623);
      if (p_info[29] == p_info[28])
      {
        v179 = p_info[9];
      }

      else
      {
        v179 = 0xBFF0000000000000;
      }

      if (p_info[29] == p_info[28])
      {
        v180 = p_info[10];
      }

      else
      {
        v180 = 0xBFF0000000000000;
      }

      v181 = sub_100226BC0(p_info);
      v182 = *(v9 + 5);
      v183 = v15 - v182;
      if (v182 <= 0.0)
      {
        v183 = -1.0;
      }

      v184 = *v9 + 1;
      if (v184 > 4)
      {
        v185 = "---";
      }

      else
      {
        v185 = off_1024A5428[v184];
      }

      if ((v252 + 1) > 4)
      {
        v186 = "---";
      }

      else
      {
        v186 = off_1024A5428[v252 + 1];
      }

      if (v239 > 2)
      {
        v187 = "---";
      }

      else
      {
        v187 = off_1024A5450[v239];
      }

      v188 = p_info[15];
      v189 = *(v16 + 684);
      v190 = *(v16 + 688);
      v191 = *(v16 + 704);
      v192 = *(v16 + 708);
      if (v238 > 2)
      {
        v193 = "---";
      }

      else
      {
        v193 = off_1024A5450[v238];
      }

      v194 = *(v9 + 7);
      *(&v280 + 1) = v9[9];
      v195 = *(v9 + 21);
      *(&v281 + 2) = *(v9 + 20);
      v196 = v15 - v194;
      if (v194 <= 0.0)
      {
        v196 = -1.0;
      }

      *(v262.__r_.__value_.__r.__words + 4) = v224;
      *(&v262.__r_.__value_.__r.__words[1] + 6) = v220;
      *v263 = v216;
      *&v263[10] = v212;
      *&v263[20] = v210;
      *&v263[28] = 2050;
      *&v263[30] = v176;
      *&v266[2] = v208;
      *&v266[12] = v178;
      *(&v267 + 2) = v204;
      *(&v267 + 1) = v179;
      *&v263[8] = 2053;
      *&v263[18] = 2053;
      WORD3(v267) = 2053;
      *v268 = 2053;
      *&v268[2] = v180;
      *&v268[22] = v188;
      LODWORD(v269) = v189;
      *(&v269 + 6) = v190;
      HIDWORD(v269) = v191;
      *&v270[2] = v192;
      *&v270[8] = v183;
      v272 = v185;
      v274 = v186;
      *v276 = v187;
      WORD2(v262.__r_.__value_.__r.__words[1]) = 2081;
      HIWORD(v262.__r_.__value_.__r.__words[2]) = 2081;
      *v266 = 2081;
      *&v266[10] = 2081;
      v271 = 2081;
      v273 = 2081;
      v275 = 2081;
      *&v276[8] = 2081;
      *&v276[10] = v193;
      *&v266[20] = 1025;
      *&v266[26] = 1025;
      LOWORD(v267) = 1025;
      *&v268[30] = 1025;
      WORD2(v269) = 1025;
      WORD5(v269) = 1025;
      *v270 = 1025;
      *&v270[16] = 1025;
      *&v276[18] = 1025;
      *v277 = v240;
      v264 = 2049;
      *&v268[10] = 2049;
      *&v268[20] = 2049;
      *&v270[6] = 2049;
      *&v277[4] = 2049;
      *&v277[6] = v196;
      v45 = v234;
      v279 = v235;
      *(&v280 + 2) = v236;
      WORD3(v280) = 2048;
      v278 = 1024;
      LOWORD(v280) = 1024;
      LOWORD(v281) = 1024;
      WORD3(v281) = 1024;
      DWORD2(v281) = v195;
      LODWORD(v262.__r_.__value_.__l.__data_) = 136388867;
      v265 = v21;
      *&v266[22] = v234;
      v46 = logc;
      *&v266[28] = logc;
      *&v268[12] = v181;
      *&v270[18] = v237;
      v197 = _os_log_send_and_compose_impl();
      if (SHIBYTE(v291.conservativeMountedState) < 0)
      {
        operator delete(*&v291.type);
      }

      sub_100152C7C("Generic", 1, 0, 2, "void CLFenceMonitor::handleLocationMonitoredFence(const CFAbsoluteTime, const CLDaemonLocation &, const CLDaemonLocationPrivate &, const CLFenceManager_Type::Fence &, CLFenceMonitorLogic::FenceMonitoringStatus &, const BOOL, const BOOL)", "%s\n", v197);
      if (v197 != buf)
      {
        free(v197);
      }
    }

    v154 = v252;
    if (v252 != -1)
    {
      *v9 = v252;
      if (v42 == 1 && !v154)
      {
        v155 = 1;
LABEL_329:
        *(v9 + 17) = v155;
        goto LABEL_330;
      }

      if (!v154 && v239 != 2)
      {
        v155 = v238;
        if (v238 == 2)
        {
          goto LABEL_329;
        }
      }
    }

LABEL_330:
    if ((v46 | v45) == 1)
    {
      if (qword_1025D4640 != -1)
      {
        sub_101A4C980();
      }

      v156 = off_1025D4648;
      if (os_log_type_enabled(off_1025D4648, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        *&buf[4] = "handleLocationMonitoredFence";
        _os_log_impl(dword_100000000, v156, OS_LOG_TYPE_DEFAULT, "%s, issuing state/transition", buf, 0xCu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101A4F378();
      }

      sub_100C936B4(&v262);
      std::string::operator=(&v262, p_info);
      std::string::operator=(v263, p_info + 1);
      std::string::operator=(&v263[24], p_info + 2);
      *&v268[16] = *(p_info + 17);
      v269 = *(p_info + 19);
      *v270 = *(p_info + 21);
      *&v270[13] = *(p_info + 181);
      *v266 = *(p_info + 9);
      *&v266[16] = *(p_info + 11);
      v267 = *(p_info + 13);
      *v268 = *(p_info + 15);
      std::string::operator=(&v272, p_info + 8);
      v157 = *&v276[4];
      *&v276[4] = p_info[27];

      if (&v262 != p_info)
      {
        sub_1006BA434(&v276[12], p_info[28], p_info[29], (p_info[29] - p_info[28]) >> 4);
      }

      *&v268[8] = v9[5];
      v287 = v260;
      *v288 = v261[0];
      *&v288[12] = *(v261 + 12);
      v283 = v256;
      v284 = v257;
      *&v268[16] = v237;
      v285 = v258;
      v286 = v259;
      v281 = *&v254[16];
      v282 = v255;
      v280 = *v254;
      v158 = *(v9 + 7);
      v159 = v15 - v158;
      v160 = v158 <= 0.0;
      v279 = v252;
      v289 = v42;
      v161 = -1.0;
      if (!v160)
      {
        v161 = v159;
      }

      *&v269 = v161;
      *&v268[24] = sub_100CD1DBC(v16 + 904, p_info);
      *&v268[20] = sub_100CD1DFC(v16 + 904);
      if (qword_1025D4640 != -1)
      {
        sub_101A4C980();
      }

      v162 = off_1025D4648;
      if (os_log_type_enabled(off_1025D4648, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        *&buf[4] = "handleLocationMonitoredFence";
        _os_log_impl(dword_100000000, v162, OS_LOG_TYPE_DEFAULT, "%s, collecting state change metrics", buf, 0xCu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101A4C9A8(buf);
        v291.type = 136315138;
        *&v291.confidence = "handleLocationMonitoredFence";
        v198 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "void CLFenceMonitor::handleLocationMonitoredFence(const CFAbsoluteTime, const CLDaemonLocation &, const CLDaemonLocationPrivate &, const CLFenceManager_Type::Fence &, CLFenceMonitorLogic::FenceMonitoringStatus &, const BOOL, const BOOL)", "%s\n", v198);
        if (v198 != buf)
        {
          free(v198);
        }
      }

      memcpy(v290, __src, sizeof(v290));
      v163 = *(v16 + 1728);
      *&v290[9] = *(v16 + 1712);
      *&v290[11] = v163;
      *&v290[13] = *(v16 + 1744);
      v290[15] = *(v16 + 1760);
      v164 = *(v16 + 1664);
      *&v290[1] = *(v16 + 1648);
      *&v290[3] = v164;
      v165 = *(v16 + 1696);
      *&v290[5] = *(v16 + 1680);
      *&v290[7] = v165;
      *buf = 6;
      sub_100CBAF2C(v16, buf, &v262);
      if (v45)
      {
        if (qword_1025D4640 != -1)
        {
          sub_101A4C980();
        }

        v166 = off_1025D4648;
        if (os_log_type_enabled(off_1025D4648, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315138;
          *&buf[4] = "handleLocationMonitoredFence";
          _os_log_impl(dword_100000000, v166, OS_LOG_TYPE_DEFAULT, "%s, issuing transition", buf, 0xCu);
        }

        if (sub_10000A100(121, 2))
        {
          sub_101A4C9A8(buf);
          v291.type = 136315138;
          *&v291.confidence = "handleLocationMonitoredFence";
          v199 = _os_log_send_and_compose_impl();
          sub_100152C7C("Generic", 1, 0, 2, "void CLFenceMonitor::handleLocationMonitoredFence(const CFAbsoluteTime, const CLDaemonLocation &, const CLDaemonLocationPrivate &, const CLFenceManager_Type::Fence &, CLFenceMonitorLogic::FenceMonitoringStatus &, const BOOL, const BOOL)", "%s\n", v199);
          if (v199 != buf)
          {
            free(v199);
          }
        }

        *buf = 0;
        sub_100CBAF2C(v16, buf, &v262);
        if (sub_100E26220((v16 + 1312)))
        {
          (*(**(v16 + 1768) + 128))(&v291);
          v167 = (*(**(v16 + 1768) + 16))(*(v16 + 1768));
          sub_100E27C80(buf, &v262, v9, (v16 + 1648), &v291, v254, (v16 + 144), v167, v15, *(v16 + 613), *(v16 + 728));
          sub_100E27C94(buf);
          if (*(&v315 + 1))
          {
            *v316 = *(&v315 + 1);
            operator delete(*(&v315 + 1));
          }

          if ((buf[31] & 0x80000000) != 0)
          {
            operator delete(*&buf[8]);
          }
        }

        *(v9 + 7) = v15;
        *(v9 + 16) = v259;
      }

      else if (v46)
      {
        if (qword_1025D4640 != -1)
        {
          sub_101A4C980();
        }

        v168 = off_1025D4648;
        if (os_log_type_enabled(off_1025D4648, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315138;
          *&buf[4] = "handleLocationMonitoredFence";
          _os_log_impl(dword_100000000, v168, OS_LOG_TYPE_DEFAULT, "%s, issuing state", buf, 0xCu);
        }

        if (sub_10000A100(121, 2))
        {
          sub_101A4C9A8(buf);
          v291.type = 136315138;
          *&v291.confidence = "handleLocationMonitoredFence";
          v200 = _os_log_send_and_compose_impl();
          sub_100152C7C("Generic", 1, 0, 2, "void CLFenceMonitor::handleLocationMonitoredFence(const CFAbsoluteTime, const CLDaemonLocation &, const CLDaemonLocationPrivate &, const CLFenceManager_Type::Fence &, CLFenceMonitorLogic::FenceMonitoringStatus &, const BOOL, const BOOL)", "%s\n", v200);
          if (v200 != buf)
          {
            free(v200);
          }
        }

        *buf = 1;
        sub_100CBAF2C(v16, buf, &v262);
      }

      if (*&v276[12])
      {
        *v277 = *&v276[12];
        operator delete(*&v276[12]);
      }

      if ((v276[3] & 0x80000000) != 0)
      {
        operator delete(v272);
      }

      if (SHIBYTE(v265) < 0)
      {
        operator delete(*&v263[24]);
      }

      if ((v263[23] & 0x80000000) != 0)
      {
        operator delete(*v263);
      }

      if (SHIBYTE(v262.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v262.__r_.__value_.__l.__data_);
      }

      v154 = v252;
    }

    if (*(v9 + 4) < 0.0 || vabdd_f64(*(v9 + 3), v21) >= 100.0 || v154 != v42 || *(v9 + 17) != v239)
    {
      v169 = v154 != v42;
      v170 = sub_100CC2D14(v16, p_info, v9, v254);
      sub_100CC21BC(v16, p_info, v9, v170, v169, v15);
      *(v9 + 3) = v21;
      *(v9 + 4) = v15;
    }

    v171 = v259;
    if (v259 > 0xD)
    {
      goto LABEL_386;
    }

    if (((1 << v259) & 0x2E1E) != 0)
    {
      break;
    }

    if (v259 != 5)
    {
      goto LABEL_386;
    }

    p_info = &OBJC_METACLASS___CLMotionHintLoggerAdapter.info;
    if (qword_1025D4600 != -1)
    {
      sub_101A4F478();
    }

    v9 = &OBJC_METACLASS___CLMotionHintLoggerAdapter.info;
    v172 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      *&buf[18] = 2082;
      *&buf[20] = "assert";
      *&buf[28] = 2081;
      *&buf[30] = "false";
      _os_log_impl(dword_100000000, v172, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:skyhook is no longer supported, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4600 != -1)
      {
        sub_101A4F478();
      }
    }

    v173 = qword_1025D4608;
    if (os_signpost_enabled(qword_1025D4608))
    {
      *buf = 68289539;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      *&buf[18] = 2082;
      *&buf[20] = "assert";
      *&buf[28] = 2081;
      *&buf[30] = "false";
      _os_signpost_emit_with_name_impl(dword_100000000, v173, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "skyhook is no longer supported", "{msg%{public}.0s:skyhook is no longer supported, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4600 != -1)
      {
        sub_101A4F478();
      }
    }

    v16 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      *&buf[18] = 2082;
      *&buf[20] = "assert";
      *&buf[28] = 2081;
      *&buf[30] = "false";
      _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_INFO, "{msg%{public}.0s:skyhook is no longer supported, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np();
    __break(1u);
LABEL_401:
    sub_101A4C980();
  }

  *(v9 + 5) = v15;
  *(v9 + 12) = v171;
  *(v9 + 2) = v21;
  if ((p_info[20] & 0x80) != 0 || *(p_info + 176) == 1)
  {
    *(v9 + 20) = sub_1002D7A58(v254, p_info, v9);
    *(v9 + 21) = 0;
    *(v9 + 9) = v15;
  }

LABEL_386:
  if (sub_10021DBD8(v16 + 904, v15))
  {
    sub_100E270D4(v16 + 1312);
  }
}

void sub_10022C7A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_10022F038([*(a1 + 8) fitnessModeStateMachine], a2);
  if (sub_10018E9E4([*(a1 + 8) fitnessModeStateMachine]))
  {
    if ([*(a1 + 8) pipelinedSeeded])
    {
      sub_10000EC00(__p, "startstop");
      sub_10017F2F4(a1, 2, __p);
      if (v7 < 0)
      {
        operator delete(__p[0]);
      }
    }
  }

  if ([*(a1 + 8) pipelinedSeeded])
  {
    sub_10023E5A8(a1, a2, a3);
  }

  else
  {
    sub_10018EA08(a1, a2, a3);
  }
}

void sub_10022C868(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

__n128 sub_10022C884(uint64_t a1, __int128 *a2, char *__src)
{
  v5 = *a2;
  *(a1 + 132) = a2[1];
  *(a1 + 116) = v5;
  v6 = a2[2];
  v7 = a2[3];
  v8 = a2[4];
  *(a1 + 196) = a2[5];
  *(a1 + 180) = v8;
  *(a1 + 164) = v7;
  *(a1 + 148) = v6;
  v9 = a2[6];
  v10 = a2[7];
  v11 = a2[8];
  *(a1 + 256) = *(a2 + 140);
  *(a1 + 244) = v11;
  *(a1 + 228) = v10;
  *(a1 + 212) = v9;
  memcpy((a1 + 272), __src, 0x201uLL);
  v12 = *(__src + 65);
  v13 = *(__src + 66);
  if (v13)
  {
    atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 792) = v12;
  v14 = *(a1 + 800);
  *(a1 + 800) = v13;
  if (v14)
  {
    sub_100008080(v14);
  }

  v15 = *(__src + 536);
  v16 = *(__src + 568);
  *(a1 + 824) = *(__src + 552);
  *(a1 + 840) = v16;
  *(a1 + 808) = v15;
  result = *(__src + 584);
  v18 = *(__src + 600);
  v19 = *(__src + 616);
  *(a1 + 897) = *(__src + 625);
  *(a1 + 872) = v18;
  *(a1 + 888) = v19;
  *(a1 + 856) = result;
  return result;
}

uint64_t sub_10022C954(uint64_t a1, double *a2, double *a3, double *a4, _BYTE *a5)
{
  v17 = qword_102639D28;
  (*(*qword_102639D28 + 16))(qword_102639D28);
  v19 = 256;
  if (*a2 <= *(a1 + 32) || *a2 >= *(a1 + 40) || *a3 <= *(a1 + 48) || *a3 >= *(a1 + 56))
  {
    goto LABEL_15;
  }

  v10 = *(a1 + 64);
  v11 = *(a1 + 72);
  if (v11 == v10)
  {
    sub_1012C2B98(a1);
    v10 = *(a1 + 64);
    v11 = *(a1 + 72);
  }

  if (v10 == v11)
  {
LABEL_15:
    v13 = 0;
  }

  else
  {
    while (1)
    {
      if (sub_1012C2F58(v10, *a2, *a3))
      {
        v16 = 0;
        v15 = 0.0;
        v12 = sub_10065DD9C();
        if (sub_100662B7C(v12, (v10 + 32), &v16, &v15, *a2, *a3))
        {
          if ((v16 & 1) != 0 || *a5 == 1 && v15 <= *a4)
          {
            break;
          }
        }
      }

      v13 = 0;
      v10 += 40;
      if (v10 == v11)
      {
        goto LABEL_16;
      }
    }

    v13 = 1;
  }

LABEL_16:
  if (HIBYTE(v19) == 1)
  {
    if (v19)
    {
      pthread_mutex_unlock(v18);
    }

    else
    {
      (*(*v17 + 24))(v17);
    }
  }

  return v13;
}

void sub_10022CB00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1017EC98C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10022CB20(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  *result = *a3;
  *(result + 16) = v3;
  v4 = *(a3 + 32);
  v5 = *(a3 + 48);
  v6 = *(a3 + 80);
  *(result + 64) = *(a3 + 64);
  *(result + 80) = v6;
  *(result + 32) = v4;
  *(result + 48) = v5;
  v7 = *(a3 + 96);
  v8 = *(a3 + 112);
  v9 = *(a3 + 128);
  *(result + 140) = *(a3 + 140);
  *(result + 112) = v8;
  *(result + 128) = v9;
  *(result + 96) = v7;
  *&v7 = *(a3 + 88);
  v10 = (*&v7 * 1000000000.0) + a2;
  if (*&v7 < 0.0)
  {
    v10 = 0x7FFFFFFFFFFFFFFFLL;
  }

  *(result + 160) = a2;
  *(result + 168) = v10;
  return result;
}

uint64_t sub_10022CB7C(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  if (sub_100072814(a2))
  {
    v8 = *(a2 + 16);
    *(a1 + 32) = *a2;
    *(a1 + 48) = v8;
    v9 = *(a2 + 32);
    v10 = *(a2 + 48);
    v11 = *(a2 + 80);
    *(a1 + 96) = *(a2 + 64);
    *(a1 + 112) = v11;
    *(a1 + 64) = v9;
    *(a1 + 80) = v10;
    v12 = *(a2 + 96);
    v13 = *(a2 + 112);
    v14 = *(a2 + 128);
    *(a1 + 172) = *(a2 + 140);
    *(a1 + 144) = v13;
    *(a1 + 160) = v14;
    *(a1 + 128) = v12;
    *v41 = 0;
    result = sub_10022CF50(a1 + 8, v41);
    if (result)
    {
      v16 = sub_1000081AC();
      v17 = *(a1 + 192);
      v18 = vabdd_f64(v16, v17);
      if (v17 < 0.0 || v18 > 600.0)
      {
        *v41 = 0;
        if (sub_10022CF50(a1 + 8, v41))
        {
          v19 = *(a1 + 16);
          if (v19)
          {
            v20 = a1 + 16;
            do
            {
              v21 = *(v19 + 32);
              if ((v21 & 0x80000000) == 0)
              {
                v20 = v19;
              }

              v19 = *(v19 + ((v21 >> 28) & 8));
            }

            while (v19);
            if (v20 != a1 + 16 && *(v20 + 32) <= 0)
            {
              v22 = sub_100109D18((a1 + 208), *(v20 + 40), *(v20 + 48), *(a1 + 36), *(a1 + 44), 0.0);
              if (v22 <= a4)
              {
                v23 = 1;
              }

              else
              {
                v23 = 2;
              }

              *(a1 + 200) = v23;
              v24 = (a1 + 200);
              *(a1 + 192) = v16;
              if (qword_1025D46B0 != -1)
              {
                sub_101B9B0B8();
              }

              v25 = qword_1025D46B8;
              if (os_log_type_enabled(qword_1025D46B8, OS_LOG_TYPE_DEBUG))
              {
                v26 = *v24;
                *v41 = 67174913;
                *&v41[4] = v26;
                *&v41[8] = 2050;
                *&v41[10] = v22;
                _os_log_impl(dword_100000000, v25, OS_LOG_TYPE_DEBUG, "CLGMTPS,currentServiceMode,%{private}d,distance,%{public}.1lf", v41, 0x12u);
              }

              if (sub_10000A100(121, 2))
              {
                sub_101BA1BA0();
              }

              v27 = *(a1 + 144);
              v44 = *(a1 + 128);
              v45 = v27;
              v46[0] = *(a1 + 160);
              *(v46 + 12) = *(a1 + 172);
              v28 = *(a1 + 80);
              *&v41[32] = *(a1 + 64);
              *&v41[48] = v28;
              v29 = *(a1 + 112);
              v42 = *(a1 + 96);
              v43 = v29;
              v30 = *(a1 + 48);
              v31 = *v24;
              *v41 = *(a1 + 32);
              *&v41[16] = v30;
              (*(a3 + 16))(a3, v41, v31 == 2);
            }
          }
        }
      }

      if (qword_1025D46B0 != -1)
      {
        sub_101B9B0B8();
      }

      v32 = qword_1025D46B8;
      if (os_log_type_enabled(qword_1025D46B8, OS_LOG_TYPE_DEBUG))
      {
        v33 = *(a1 + 108);
        v34 = *(a1 + 128);
        v35 = *(a1 + 36);
        v36 = *(a1 + 44);
        v37 = *(a1 + 200);
        *v41 = 134284801;
        *&v41[4] = v33;
        *&v41[12] = 1026;
        *&v41[14] = v34;
        *&v41[18] = 2053;
        *&v41[20] = v35;
        *&v41[28] = 2053;
        *&v41[30] = v36;
        *&v41[38] = 1025;
        *&v41[40] = v37;
        *&v41[44] = 2049;
        *&v41[46] = v18;
        _os_log_impl(dword_100000000, v32, OS_LOG_TYPE_DEBUG, "CLGMTPS,received valid location,time,%{private}.1lf,type,%{public}d,LL,%{sensitive}.7lf,%{sensitive}.7lf,touristMode,%{private}d,dT,%{private}.1lf", v41, 0x36u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101BA1CA8(a1, v18);
      }

      return 1;
    }
  }

  else
  {
    if (qword_1025D46B0 != -1)
    {
      sub_101B9B124();
    }

    v38 = qword_1025D46B8;
    if (os_log_type_enabled(qword_1025D46B8, OS_LOG_TYPE_ERROR))
    {
      v39 = *(a2 + 76);
      v40 = *(a2 + 96);
      *v41 = 134283777;
      *&v41[4] = v39;
      *&v41[12] = 1026;
      *&v41[14] = v40;
      _os_log_impl(dword_100000000, v38, OS_LOG_TYPE_ERROR, "CLGMTPS,received invalid location,time,%{private}.1lf,type,%{public}d,", v41, 0x12u);
    }

    result = sub_10000A100(121, 0);
    if (result)
    {
      sub_101BA1A90();
      return 0;
    }
  }

  return result;
}

uint64_t sub_10022CF50(uint64_t a1, int *a2)
{
  v4 = *(a1 + 8);
  v2 = (a1 + 8);
  v3 = v4;
  if (!v4)
  {
    return 0;
  }

  v5 = *a2;
  while (1)
  {
    v6 = *(v3 + 8);
    if (v5 >= v6)
    {
      break;
    }

    v2 = v3;
LABEL_7:
    v3 = *v3;
    if (!v3)
    {
      return 0;
    }
  }

  if (v6 < v5)
  {
    ++v3;
    goto LABEL_7;
  }

  v9 = *v3;
  v10 = v3;
  if (*v3)
  {
    v10 = v3;
    do
    {
      if (*(v9 + 8) >= v5)
      {
        v10 = v9;
      }

      v9 = v9[*(v9 + 8) < v5];
    }

    while (v9);
  }

  for (i = v3[1]; i; i = *(i + 8 * v14))
  {
    v12 = *(i + 32);
    v13 = v5 < v12;
    v14 = v5 >= v12;
    if (v13)
    {
      v2 = i;
    }
  }

  if (v10 == v2)
  {
    return 0;
  }

  v7 = 0;
  do
  {
    v15 = v10[1];
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
        v16 = v10[2];
        v17 = *v16 == v10;
        v10 = v16;
      }

      while (!v17);
    }

    ++v7;
    v10 = v16;
  }

  while (v16 != v2);
  return v7;
}

uint64_t sub_10022D024(double *a1)
{
  if (*a1 <= 0.0)
  {
    return 1;
  }

  v2 = vabdd_f64(sub_1000081AC(), *a1);
  v3 = sub_10022D44C(a1);
  if (v3 && v2 <= 86400.0)
  {
    if (qword_1025D46B0 != -1)
    {
      sub_101B9B124();
    }

    v4 = qword_1025D46B8;
    if (os_log_type_enabled(qword_1025D46B8, OS_LOG_TYPE_DEBUG))
    {
      v7 = 134349568;
      v8 = v3;
      v9 = 2050;
      v10 = v2;
      v11 = 2050;
      v12 = 0x40F5180000000000;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "CLGMTPS,LOIs already exist,%{public}ld,and it's not time to refresh yet,%{public}.1lf,threshold,%{public}.1lf", &v7, 0x20u);
    }

    result = sub_10000A100(121, 2);
    if (result)
    {
      sub_101B9C6F4(v3);
      return 0;
    }

    return result;
  }

  if (v2 > 3600.0)
  {
    return 1;
  }

  if (qword_1025D46B0 != -1)
  {
    sub_101B9B124();
  }

  v6 = qword_1025D46B8;
  if (os_log_type_enabled(qword_1025D46B8, OS_LOG_TYPE_DEBUG))
  {
    v7 = 134349568;
    v8 = v3;
    v9 = 2050;
    v10 = v2;
    v11 = 2050;
    v12 = 0x40AC200000000000;
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "CLGMTPS,home work school LOIs does not exist,%{public}ld,but we recently requested,%{public}.1lf,need to wait,%{public}.1lf", &v7, 0x20u);
  }

  result = sub_10000A100(121, 2);
  if (result)
  {
    sub_101B9C5EC(v3);
    return 0;
  }

  return result;
}

uint64_t sub_10022D44C(uint64_t a1)
{
  v7 = 0;
  v2 = sub_10022CF50(a1 + 8, &v7);
  v6 = 1;
  v3 = sub_10022CF50(a1 + 8, &v6) + v2;
  v5 = 2;
  return v3 + sub_10022CF50(a1 + 8, &v5);
}

void sub_10022DCDC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10022DD34(uint64_t a1, void **a2)
{
  result = *sub_1000F2B3C(a1, &v3, a2);
  if (!result)
  {
    sub_100732980();
  }

  return result;
}

void sub_10022DDCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = (a3 + 20);
  if (*(a3 + 20) <= 165.0)
  {
    sub_10022CB20(v20, a2, a3);
    v9 = *(a1 + 8);
    v29 = v20[8];
    v30 = v20[9];
    v31 = v20[10];
    v25 = v20[4];
    v26 = v20[5];
    v27 = v20[6];
    v28 = v20[7];
    *buf = v20[0];
    v22 = v20[1];
    v23 = v20[2];
    v24 = v20[3];
    [v9 setLatestPosition:buf];
    [*(a1 + 8) latestNavModeEstimate];
    v11 = v10;
    v12 = sub_1001FB6D0([*(a1 + 8) navModeEstimator], a3);
    [*(a1 + 8) setLatestNavModeEstimate:{v12, v13 & 0xFFFFFFFFFFLL}];
    [*(a1 + 8) latestNavModeEstimate];
    v15 = v14;
    if (v11 != v14)
    {
      if (qword_1025D4620 != -1)
      {
        sub_101869E5C();
      }

      v16 = qword_1025D4628;
      if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_INFO))
      {
        *buf = 67174657;
        *&buf[4] = v15;
        _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_INFO, "updateLatestEstimate state,%{private}d", buf, 8u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_10186DB1C();
      }

      v17 = [*(a1 + 8) pipelinedSeeded];
      if (v15 == 2)
      {
        if (v17)
        {
          sub_10000EC00(buf, "navmode");
          sub_10017F2F4(a1, 2, buf);
          if (SBYTE7(v22) < 0)
          {
            operator delete(*buf);
          }
        }
      }
    }

    sub_10000EC00(buf, "updateLatestEstimate");
    sub_10022C7A4(a1, a2, buf);
    if (SBYTE7(v22) < 0)
    {
      operator delete(*buf);
    }
  }

  else if ([*(a1 + 8) pipelinedSeeded])
  {
    if (qword_1025D4620 != -1)
    {
      sub_101869E48();
    }

    v5 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
    {
      v6 = *v4;
      *buf = 134217984;
      *&buf[4] = v6;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEBUG, "Ignoring LocationController fix with horizontalAccuracy %f because the existing fix would be more helpful anyway.", buf, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10186DC0C();
    }
  }

  else
  {
    if (qword_1025D4620 != -1)
    {
      sub_101869E48();
    }

    v18 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
    {
      v19 = *v4;
      *buf = 134217984;
      *&buf[4] = v19;
      _os_log_impl(dword_100000000, v18, OS_LOG_TYPE_DEBUG, "Ignoring LocationController fix with horizontalAccuracy %f because the existing fix would be more helpful anyway.", buf, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10186DD00();
    }
  }
}

void sub_10022E0EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (a36 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10022E114(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ([*(a1 + 152) indoord])
  {
    v6 = [CLGpsPosition alloc];
    sub_10023F924(v33, a3);
    v7 = [v6 initWithLocation:a2 andPrivateLocation:v33];
    if (qword_1025D4620 != -1)
    {
      sub_101B1AFCC();
    }

    v8 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
    {
      if (v7)
      {
        [v7 gpsLocation];
        v9 = *(v33 + 4);
        [v7 gpsLocation];
        v10 = *&v18[12];
        [v7 gpsLocation];
        v11 = v17;
      }

      else
      {
        v11 = 0;
        v10 = 0;
        v9 = 0;
        memset(v33, 0, 156);
        *v18 = 0u;
        memset(v16, 0, 20);
      }

      *buf = 134546177;
      *&buf[4] = v9;
      *&buf[12] = 2053;
      *&buf[14] = v10;
      *&buf[22] = 1025;
      *&buf[24] = v11;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEBUG, "Notifying pipelined of a new outdoor location @ %{sensitive}.6lf, %{sensitive}.6lf, type, %{private}d", buf, 0x1Cu);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(v33, 0x65CuLL);
      if (qword_1025D4620 != -1)
      {
        sub_101B1AFCC();
      }

      if (v7)
      {
        [v7 gpsLocation];
        v12 = *&v18[4];
        [v7 gpsLocation];
        v13 = *(v16 + 12);
        [v7 gpsLocation];
        v14 = v24;
      }

      else
      {
        v14 = 0;
        v13 = 0;
        v12 = 0;
        v25 = 0u;
        memset(v26, 0, sizeof(v26));
        v23 = 0u;
        v24 = 0u;
        v21 = 0u;
        v22 = 0u;
        v20 = 0u;
        memset(buf, 0, sizeof(buf));
      }

      v27 = 134546177;
      v28 = v12;
      v29 = 2053;
      v30 = v13;
      v31 = 1025;
      v32 = v14;
      v15 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "void CLPipelineLocationProvider::sendOutdoorLocationToPipelined(const CLDaemonLocation &, const CLDaemonLocationPrivate &) const", "%s\n", v15);
      if (v15 != v33)
      {
        free(v15);
      }
    }

    [objc_msgSend(*(a1 + 152) "indoord")];
  }
}

void sub_10022E474(uint64_t a1, int *a2, uint64_t a3, uint64_t a4)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a4 + 56) "silo")];
  if (qword_1025D47F0 != -1)
  {
    dispatch_once(&qword_1025D47F0, &stru_102502540);
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v54 = 1;
    v7 = _os_activity_create(dword_100000000, "CL: CLNearbydInterfaceManager::onLocationNotification", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v7, &state);

    if (qword_1025D47F0 != -1)
    {
      dispatch_once(&qword_1025D47F0, &stru_102502540);
    }

    v8 = qword_1025D47F8;
    if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68289538;
      *v70 = 0;
      *&v70[4] = 2082;
      *&v70[6] = "";
      *&v70[14] = 2082;
      *&v70[16] = "activity";
      *&v70[24] = 2050;
      *&v70[26] = a4;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLNearbydInterfaceManager::onLocationNotification, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v54 = 0;
  }

  if ((*a4 & 1) == 0)
  {
    if (qword_1025D47A0 != -1)
    {
      dispatch_once(&qword_1025D47A0, &stru_102502520);
    }

    v23 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v23, OS_LOG_TYPE_DEBUG, "#NearbydIfMgr,#assistancerelay,gizmo is not nearby.", buf, 2u);
    }

    if (!sub_10000A100(121, 2))
    {
      goto LABEL_61;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1025D47A0 == -1)
    {
      goto LABEL_45;
    }

LABEL_73:
    dispatch_once(&qword_1025D47A0, &stru_102502520);
LABEL_45:
    LOWORD(v55) = 0;
    v27 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "void CLNearbydInterfaceManager::onLocationNotification(int, const CLLocationProvider_Type::Notification &, const CLLocationProvider_Type::NotificationData &)", "%s\n", v27);
    goto LABEL_46;
  }

  v9 = sub_1000081AC();
  v10 = *(a4 + 48);
  v11 = sub_100109D18((a4 + 336), *(a3 + 4), *(a3 + 12), *(a4 + 180), *(a4 + 188), 0.0);
  if (*a2 != 5)
  {
    if (qword_1025D4660 != -1)
    {
      dispatch_once(&qword_1025D4660, &stru_102502560);
    }

    v24 = qword_1025D4668;
    if (os_log_type_enabled(qword_1025D4668, OS_LOG_TYPE_DEBUG))
    {
      v25 = *a2;
      *buf = 67109120;
      *v70 = v25;
      _os_log_impl(dword_100000000, v24, OS_LOG_TYPE_DEBUG, "#NearbydIfMgr,#assistancerelay,Got unknown notification %d", buf, 8u);
    }

    if (!sub_10000A100(121, 2))
    {
      goto LABEL_61;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1025D4660 != -1)
    {
      dispatch_once(&qword_1025D4660, &stru_102502560);
    }

    v26 = *a2;
    v55 = 67109120;
    LODWORD(v56) = v26;
    v27 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "void CLNearbydInterfaceManager::onLocationNotification(int, const CLLocationProvider_Type::Notification &, const CLLocationProvider_Type::NotificationData &)", "%s\n", v27);
LABEL_46:
    if (v27 != buf)
    {
      free(v27);
    }

    goto LABEL_61;
  }

  v12 = v11;
  if (!sub_100072814(a3))
  {
    if (qword_1025D47A0 != -1)
    {
      dispatch_once(&qword_1025D47A0, &stru_102502520);
    }

    v28 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v28, OS_LOG_TYPE_DEBUG, "#NearbydIfMgr,#assistancerelay,#warning.lastReceivedLocation is invalid.", buf, 2u);
    }

    if (!sub_10000A100(121, 2))
    {
      goto LABEL_61;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1025D47A0 == -1)
    {
      goto LABEL_45;
    }

    goto LABEL_73;
  }

  v13 = v9 - v10;
  if (*(a3 + 44) >= 11.0)
  {
    v14 = (*(a3 + 96) & 0xFFFFFFF7) == 1;
    if ((*(a3 + 96) & 0xFFFFFFF7) == 1 && v13 >= 1800.0)
    {
      if (qword_1025D47A0 != -1)
      {
        dispatch_once(&qword_1025D47A0, &stru_102502520);
      }

      v29 = off_1025D47A8;
      if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
      {
        v30 = *(a3 + 4);
        v31 = *(a3 + 12);
        v32 = *(a3 + 20);
        v33 = *(a3 + 76);
        v34 = *(a3 + 88);
        v35 = *(a3 + 84);
        v36 = *(a3 + 44);
        *buf = 134547201;
        *v70 = v30;
        *&v70[8] = 2053;
        *&v70[10] = v31;
        *&v70[18] = 2048;
        *&v70[20] = v32;
        *&v70[28] = 2048;
        *&v70[30] = v33;
        v71 = 2048;
        v72 = v34;
        v73 = 1024;
        v74 = v35;
        v75 = 2048;
        v76 = v36;
        _os_log_impl(dword_100000000, v29, OS_LOG_TYPE_DEBUG, "#NearbydIfMgr,#assistancerelay,moving vehicle,lat,%{sensitive}+.6f,lon,%{sensitive}.6f,acc, %.2f,timestamp,%.2f,lifespan,%.2f,confidence,%d,speed,%.3f", buf, 0x44u);
      }

      if (!sub_10000A100(121, 2))
      {
        goto LABEL_55;
      }

      bzero(buf, 0x65CuLL);
      if (qword_1025D47A0 == -1)
      {
        goto LABEL_65;
      }

      goto LABEL_71;
    }
  }

  else
  {
    v14 = 0;
  }

  if (v13 < 3600.0 || v14)
  {
    goto LABEL_61;
  }

  if (v12 > 1000.0)
  {
    if (qword_1025D47A0 != -1)
    {
      dispatch_once(&qword_1025D47A0, &stru_102502520);
    }

    v15 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
    {
      v16 = *(a3 + 4);
      v17 = *(a3 + 12);
      v18 = *(a3 + 20);
      v19 = *(a3 + 76);
      v20 = *(a3 + 88);
      v21 = *(a3 + 84);
      v22 = *(a3 + 44);
      *buf = 134547201;
      *v70 = v16;
      *&v70[8] = 2053;
      *&v70[10] = v17;
      *&v70[18] = 2048;
      *&v70[20] = v18;
      *&v70[28] = 2048;
      *&v70[30] = v19;
      v71 = 2048;
      v72 = v20;
      v73 = 1024;
      v74 = v21;
      v75 = 2048;
      v76 = v22;
      _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_DEBUG, "#NearbydIfMgr,#assistancerelay,non static,lat,%{sensitive}+.6f,lon,%{sensitive}.6f,acc,%.2f,timestamp, %.2f,lifespan,%.2f,confidence,%d,speed,%.3f", buf, 0x44u);
    }

    if (!sub_10000A100(121, 2))
    {
      goto LABEL_55;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1025D47A0 == -1)
    {
LABEL_65:
      v45 = *(a3 + 4);
      v46 = *(a3 + 12);
      v47 = *(a3 + 20);
      v48 = *(a3 + 76);
      v49 = *(a3 + 88);
      v50 = *(a3 + 84);
      v51 = *(a3 + 44);
      v55 = 134547201;
      v56 = v45;
      v57 = 2053;
      v58 = v46;
      v59 = 2048;
      v60 = v47;
      v61 = 2048;
      v62 = v48;
      v63 = 2048;
      v64 = v49;
      v65 = 1024;
      v66 = v50;
      v67 = 2048;
      v68 = v51;
      v52 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "void CLNearbydInterfaceManager::onLocationNotification(int, const CLLocationProvider_Type::Notification &, const CLLocationProvider_Type::NotificationData &)", "%s\n", v52);
      if (v52 != buf)
      {
        free(v52);
      }

LABEL_55:
      v37 = *(a3 + 16);
      *(a4 + 176) = *a3;
      *(a4 + 192) = v37;
      v38 = *(a3 + 32);
      v39 = *(a3 + 48);
      v40 = *(a3 + 80);
      *(a4 + 240) = *(a3 + 64);
      *(a4 + 256) = v40;
      *(a4 + 208) = v38;
      *(a4 + 224) = v39;
      v41 = *(a3 + 96);
      v42 = *(a3 + 112);
      v43 = *(a3 + 128);
      *(a4 + 316) = *(a3 + 140);
      *(a4 + 288) = v42;
      *(a4 + 304) = v43;
      *(a4 + 272) = v41;
      sub_101801C14(a4);
      goto LABEL_61;
    }

LABEL_71:
    dispatch_once(&qword_1025D47A0, &stru_102502520);
    goto LABEL_65;
  }

  if (qword_1025D47A0 != -1)
  {
    dispatch_once(&qword_1025D47A0, &stru_102502520);
  }

  v44 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v44, OS_LOG_TYPE_DEBUG, "#NearbydIfMgr,#assistancerelay,device is static.", buf, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D47A0 == -1)
    {
      goto LABEL_45;
    }

    goto LABEL_73;
  }

LABEL_61:
  if (v54 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

void sub_10022EFB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, os_activity_scope_state_s state, char a13)
{
  if (a13 == 1)
  {
    os_activity_scope_leave(&state);
  }

  _Unwind_Resume(exception_object);
}

void sub_10022EFD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
  sub_10022DDCC(*(a1 + 144), v6.__d_.__rep_, a4);

  sub_10022E114(a1, a4, a4 + 160);
}

void sub_10022F038(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  if (*a1 > 4)
  {
    if (v4 == 5)
    {
      if (a2 - *(a1 + 8) > 1000000000 * *(a1 + 32))
      {
        v5 = 1;
      }

      else
      {
        v5 = 5;
      }
    }

    else
    {
      if (v4 != 6)
      {
        return;
      }

      if (a2 - *(a1 + 8) <= 1000000000 * *(a1 + 40))
      {
        v5 = 6;
      }

      else
      {
        v5 = 0;
      }
    }
  }

  else if (v4 == 2)
  {
    if (a2 - *(a1 + 8) <= 1000000000 * *(a1 + 24))
    {
      v5 = 2;
    }

    else
    {
      v5 = 4;
    }
  }

  else
  {
    if (v4 != 3)
    {
      return;
    }

    if (a2 - *(a1 + 8) <= 1000000000 * *(a1 + 16))
    {
      v5 = 3;
    }

    else
    {
      v5 = 4;
    }
  }

  if (v5 != v4)
  {
    if (qword_1025D4600 != -1)
    {
      sub_101870488();
    }

    v6 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_INFO))
    {
      v7 = sub_10038A560(*a1);
      v14 = 136380931;
      v15 = v7;
      v16 = 2081;
      v17 = sub_10038A560(v5);
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_INFO, "#indoor-fitness-classifier state change, current, %{private}s, updated, %{private}s", &v14, 0x16u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101870804(a1, v5, v8, v9, v10, v11, v12, v13);
    }

    *(a1 + 8) = a2;
    *a1 = v5;
  }
}

uint64_t sub_10022F21C(uint64_t a1)
{
  *a1 = 16777472;
  *(a1 + 4) = 1;
  *(a1 + 5) = 0;
  *(a1 + 28) = xmmword_101C8BC90;
  *(a1 + 44) = xmmword_101C8BCA0;
  *(a1 + 60) = 400;
  *&v2 = -1;
  *(&v2 + 1) = -1;
  *(a1 + 64) = v2;
  *(a1 + 80) = v2;
  *(a1 + 96) = v2;
  *(a1 + 112) = v2;
  *(a1 + 128) = v2;
  *(a1 + 144) = -1;
  *(a1 + 148) = xmmword_101C8BCB0;
  *(a1 + 12) = xmmword_101C8BCC0;
  if (sub_10001CF04())
  {
    *(a1 + 16) = 4233600;
  }

  *(a1 + 72) = 125000;
  *(a1 + 84) = 125000;
  *(a1 + 96) = 125000;
  *(a1 + 108) = 15000;
  *(a1 + 120) = 25000;
  *(a1 + 132) = -1;
  *(a1 + 144) = -1;
  return a1;
}

uint64_t sub_10022F2E4(uint64_t a1, void **a2, uint64_t a3)
{
  v4 = a2;
  if (sub_100192868(a1, a2) || (v4 = &unk_101C8BD40, (result = sub_100192868(a1, &unk_101C8BD40)) != 0))
  {
    v7 = sub_10022DD34(a1, v4);
    v8 = *(v7 + 464);
    v9 = *(v7 + 496);
    *(a3 + 16) = *(v7 + 480);
    *(a3 + 32) = v9;
    *a3 = v8;
    v10 = *(v7 + 512);
    v11 = *(v7 + 528);
    v12 = *(v7 + 560);
    *(a3 + 80) = *(v7 + 544);
    *(a3 + 96) = v12;
    *(a3 + 48) = v10;
    *(a3 + 64) = v11;
    v13 = *(v7 + 576);
    v14 = *(v7 + 592);
    v15 = *(v7 + 608);
    *(a3 + 160) = *(v7 + 624);
    *(a3 + 128) = v14;
    *(a3 + 144) = v15;
    *(a3 + 112) = v13;
    return 1;
  }

  return result;
}

void sub_10022F398(uint64_t a1, int a2, int a3, uint64_t a4)
{
  ++*(a1 + 348);
  if ((*(*a1 + 160))(a1))
  {
    switch(a3)
    {
      case 5:
        if ((*(*a1 + 192))(a1, a4))
        {
          sub_100039440(a1);
          v15[0] = _NSConcreteStackBlock;
          v15[1] = 3221225472;
          v15[2] = sub_10021C9A8;
          v15[3] = &unk_10245FB68;
          v16 = a2;
          v17 = 5;
          v15[4] = a1;
          v15[5] = a4;
          sub_100071CE4(a1, 1u, v15);
          sub_100039584(a1);
        }

        break;
      case 46:
        if (qword_1025D47D0 != -1)
        {
          sub_100248BFC();
        }

        v9 = qword_1025D47D8;
        if (os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_DEFAULT))
        {
          v10 = *(a4 + 1512);
          v11 = *(a4 + 1520);
          *buf = 68289538;
          v19 = 0;
          v20 = 2082;
          v21 = "";
          v22 = 1026;
          LODWORD(v23[0]) = v10;
          WORD2(v23[0]) = 2050;
          *(v23 + 6) = v11;
          _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLProactiveLoc ntfy, sessionState:%{public}d, sec_s:%{public}.09f}", buf, 0x22u);
        }

        v12 = *(a1 + 152);
        if (v12)
        {
          (*(*v12 + 112))(v12, a4 + 1512);
        }

        break;
      case 12:
        v8 = *(*a1 + 40);

        v8(a1);
        break;
      default:
        if (qword_1025D47D0 != -1)
        {
          sub_100248BFC();
        }

        v13 = qword_1025D47D8;
        if (os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_FAULT))
        {
          *buf = 68289283;
          v19 = 0;
          v20 = 2082;
          v21 = "";
          v22 = 2049;
          v23[0] = a3;
          _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Harvester received an un-registered location notification, notification:%{private, location:CLLocationProvider_Type::Notification}lld}", buf, 0x1Cu);
          if (qword_1025D47D0 != -1)
          {
            sub_1018C4FA8();
          }
        }

        v14 = qword_1025D47D8;
        if (os_signpost_enabled(qword_1025D47D8))
        {
          *buf = 68289283;
          v19 = 0;
          v20 = 2082;
          v21 = "";
          v22 = 2049;
          v23[0] = a3;
          _os_signpost_emit_with_name_impl(dword_100000000, v14, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Harvester received an un-registered location notification", "{msg%{public}.0s:Harvester received an un-registered location notification, notification:%{private, location:CLLocationProvider_Type::Notification}lld}", buf, 0x1Cu);
        }

        break;
    }
  }
}

BOOL sub_10022F734(uint64_t a1, uint64_t a2)
{
  if ((*(a2 + 132) | 2) != 2)
  {
    return 1;
  }

  if (qword_1025D47D0 != -1)
  {
    sub_100248BFC();
  }

  v3 = qword_1025D47D8;
  result = os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_INFO);
  if (result)
  {
    v5 = *(a2 + 132);
    v6[0] = 68289283;
    v6[1] = 0;
    v7 = 2082;
    v8 = "";
    v9 = 2049;
    v10 = v5;
    _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_INFO, "{msg%{public}.0s:WARN: location dropped due to referenceFrame, referenceFrame:%{private, location:CLClientLocationReferenceFrame}lld}", v6, 0x1Cu);
    return 0;
  }

  return result;
}

void sub_10022F82C(uint64_t a1, std::string *a2)
{
  sub_1000EBF44(a2, v18);
  v3 = [objc_msgSend(*(a1 + 24) "vendor")];
  sub_1000350D0(v4, v18);
  [v3 markReceivingLocationInformation:sub_100061198(v4)];
  if (v17 < 0)
  {
    operator delete(__p);
  }

  if (v15 < 0)
  {
    operator delete(v14);
  }

  if (v13 < 0)
  {
    operator delete(v12);
  }

  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v9 < 0)
  {
    operator delete(v8);
  }

  if (v7 < 0)
  {
    operator delete(v6);
  }

  if (v5 < 0)
  {
    operator delete(v4[0]);
  }

  if (v31 < 0)
  {
    operator delete(v30);
  }

  if (v29 < 0)
  {
    operator delete(v28);
  }

  if (v27 < 0)
  {
    operator delete(v26);
  }

  if (v25 < 0)
  {
    operator delete(v24);
  }

  if (v23 < 0)
  {
    operator delete(v22);
  }

  if (v21 < 0)
  {
    operator delete(v20);
  }

  if (v19 < 0)
  {
    operator delete(v18[0]);
  }
}

void sub_10022F978(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  sub_100039BE8(&a9);
  sub_100039BE8(&a32);
  _Unwind_Resume(a1);
}

BOOL sub_10022FB0C()
{
  v2 = *(v0 + 1624);

  return os_log_type_enabled(v2, OS_LOG_TYPE_INFO);
}

void sub_10022FB28(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_impl(a1, a2, OS_LOG_TYPE_FAULT, a4, a5, 0x26u);
}

BOOL sub_10022FB54()
{
  v1 = qword_1025D4658;

  return os_log_type_enabled(v1, OS_LOG_TYPE_FAULT);
}

void sub_10022FBB0(uint64_t a1, uint64_t a2, double a3)
{
  v6 = (*(*a1 + 224))(a1);
  if ((*(v6 + 148) & 0x80000000) == 0)
  {
    v7 = v6;
    v11 = 0;
    v13 = 0xBFF0000000000000;
    Current = CFAbsoluteTimeGetCurrent();
    v16 = 1;
    v12 = 0;
    v14 = *(v7 + 148);
    LODWORD(v7) = *(v7 + 4);
    v8 = *(a2 + 4);
    v9 = *(a2 + 12);
    sub_10000EC00(&__p, "");
    sub_10022FF70(a1, v7, &__p, &v11, v8, v9, a3);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }
}

void sub_10022FC9C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10022FCB8(uint64_t a1)
{
  result = sub_10007253C((a1 + 512), 0);
  if (!result)
  {
    if (qword_1025D4620 != -1)
    {
      sub_101B2365C();
    }

    v2 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_ERROR))
    {
      *buf = 67174657;
      v7 = 0;
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_ERROR, "WifiTile, invalid tileType, %{private}d, #CloneMe", buf, 8u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_101B27A78();
    }

    if (qword_1025D48A0 != -1)
    {
      sub_101B239BC();
    }

    v3 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v7 = 0;
      v8 = 2082;
      v9 = "";
      v10 = 2082;
      v11 = "assert";
      v12 = 2081;
      v13 = "false";
      _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D48A0 != -1)
      {
        sub_101B239BC();
      }
    }

    v4 = qword_1025D48A8;
    if (os_signpost_enabled(qword_1025D48A8))
    {
      *buf = 68289539;
      v7 = 0;
      v8 = 2082;
      v9 = "";
      v10 = 2082;
      v11 = "assert";
      v12 = 2081;
      v13 = "false";
      _os_signpost_emit_with_name_impl(dword_100000000, v4, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Assertion failed", "{msg%{public}.0s:Assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D48A0 != -1)
      {
        sub_101B239BC();
      }
    }

    v5 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v7 = 0;
      v8 = 2082;
      v9 = "";
      v10 = 2082;
      v11 = "assert";
      v12 = 2081;
      v13 = "false";
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np();
  }

  return result;
}

uint64_t sub_10022FF70(uint64_t a1, unsigned int a2, const std::string *a3, uint64_t a4, double a5, double a6, double a7)
{
  v137 = a2;
  if (a2)
  {
    sub_101B23850();
  }

  sub_1000850D0(&v134, &v137);
  std::string::operator=(&__p, a3);
  v13 = *(a4 + 16);
  v131 = *a4;
  v132 = v13;
  v133 = *(a4 + 32);
  v14 = (*(*a1 + 224))(a1);
  v15 = v14;
  if ((*v14 & 1) == 0)
  {
    if (qword_1025D48A0 != -1)
    {
      sub_101B239BC();
    }

    v35 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
    {
      v36 = v137;
      v37 = sub_100085790(v137);
      *buf = 67109378;
      *&buf[4] = v36;
      *&buf[8] = 2080;
      *&buf[10] = v37;
      _os_log_impl(dword_100000000, v35, OS_LOG_TYPE_DEBUG, "WIFITILE: requestDownload, type, %d, %s, not active", buf, 0x12u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101B239E4(buf);
      v105 = v137;
      v106 = sub_100085790(v137);
      *v141 = 67109378;
      *&v141[4] = v105;
      *&v141[8] = 2080;
      *&v141[10] = v106;
      v107 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "BOOL CLWifiTilesManager::requestDownload(CLTilesManager_Type::TileType, double, double, const std::string &, const CLTileFileDownloadDetails &, CFAbsoluteTime)", "%s\n", v107);
      if (v107 != buf)
      {
        free(v107);
      }
    }

    goto LABEL_63;
  }

  sub_10008511C(&v134, -1, a5, a6, *(v14 + 152), *(v14 + 160));
  if (sub_1000852BC(&v134))
  {
    if (qword_1025D4620 != -1)
    {
      sub_101B2374C();
    }

    v16 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_INFO))
    {
      v17 = sub_100085338(&v134);
      v18 = sub_100085314(&v134);
      *buf = 134546177;
      *&buf[4] = v17;
      *&buf[12] = 2053;
      *&buf[14] = v18;
      *&buf[22] = 1026;
      *&buf[24] = v131;
      _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_INFO, "@TileDl, wifi, request, llsw, %{sensitive}.2lf, %{sensitive}.2lf, currOverCell, %{public}d", buf, 0x1Cu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101B23A94(buf);
      v108 = sub_100085338(&v134);
      v109 = sub_100085314(&v134);
      *v141 = 134546177;
      *&v141[4] = v108;
      *&v141[12] = 2053;
      *&v141[14] = v109;
      *&v141[22] = 1026;
      LODWORD(v142.__r_.__value_.__l.__data_) = v131;
      v110 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "BOOL CLWifiTilesManager::requestDownload(CLTilesManager_Type::TileType, double, double, const std::string &, const CLTileFileDownloadDetails &, CFAbsoluteTime)", "%s\n", v110);
      if (v110 != buf)
      {
        free(v110);
      }
    }

    if (qword_1025D4620 != -1)
    {
      sub_101B2374C();
    }

    v19 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
    {
      sub_100EDCE5C(buf);
      v20 = buf[23] >= 0 ? buf : *buf;
      *v141 = 136446210;
      *&v141[4] = v20;
      _os_log_impl(dword_100000000, v19, OS_LOG_TYPE_DEBUG, "TileDl, wifi, %{public}s", v141, 0xCu);
      if ((buf[23] & 0x80000000) != 0)
      {
        operator delete(*buf);
      }
    }

    if (sub_10000A100(121, 2))
    {
      sub_101B23A94(buf);
      sub_100EDCE5C(v141);
      if (v141[23] >= 0)
      {
        v111 = v141;
      }

      else
      {
        v111 = *v141;
      }

      *v138 = 136446210;
      *&v138[4] = v111;
      v112 = _os_log_send_and_compose_impl();
      if ((v141[23] & 0x80000000) != 0)
      {
        operator delete(*v141);
      }

      sub_100152C7C("Generic", 1, 0, 2, "BOOL CLWifiTilesManager::requestDownload(CLTilesManager_Type::TileType, double, double, const std::string &, const CLTileFileDownloadDetails &, CFAbsoluteTime)", "%s\n", v112);
      if (v112 != buf)
      {
        free(v112);
      }
    }

    if (*(a1 + 217))
    {
      if (*(v15 + 176) != 1)
      {
        v21 = *(a1 + 408);
        v22 = sub_10008535C(a1 + 128, &v134);
        v23 = sub_1000853E0(v15 + 184, &v134);
        if (qword_1025D48A0 != -1)
        {
          sub_101B239BC();
        }

        v128 = a1 + 136;
        v24 = qword_1025D48A8;
        if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
        {
          sub_100B4EFD4(&v134, v141);
          v25 = v141[23] >= 0 ? v141 : *v141;
          *buf = 136316162;
          *&buf[4] = v25;
          *&buf[12] = 1024;
          *&buf[14] = v23;
          *&buf[18] = 1024;
          *&buf[20] = v128 != v22;
          *&buf[24] = 1024;
          *&buf[26] = 0;
          *&buf[30] = 1024;
          *&buf[32] = v23;
          _os_log_impl(dword_100000000, v24, OS_LOG_TYPE_DEBUG, "WIFITILE: requestDownload, tileId=%s isAlreadyDownloaded, %d, isBeingDownloaded, %d, shouldDownloadedBasedOnPermissions, %d, isAlreadyDownloaded, %d", buf, 0x24u);
          if ((v141[23] & 0x80000000) != 0)
          {
            operator delete(*v141);
          }
        }

        if (sub_10000A100(121, 2))
        {
          sub_101B239E4(buf);
          sub_100B4EFD4(&v134, v138);
          if (v140[1] >= 0)
          {
            v114 = v138;
          }

          else
          {
            v114 = *v138;
          }

          *v141 = 136316162;
          *&v141[4] = v114;
          *&v141[12] = 1024;
          *&v141[14] = v23;
          *&v141[18] = 1024;
          *&v141[20] = v128 != v22;
          LOWORD(v142.__r_.__value_.__l.__data_) = 1024;
          *&v142.__r_.__value_.__s.__data_[2] = 0;
          HIWORD(v142.__r_.__value_.__r.__words[0]) = 1024;
          LODWORD(v142.__r_.__value_.__r.__words[1]) = v23;
          v115 = _os_log_send_and_compose_impl();
          if ((v140[1] & 0x80000000) != 0)
          {
            operator delete(*v138);
          }

          sub_100152C7C("Generic", 1, 0, 2, "BOOL CLWifiTilesManager::requestDownload(CLTilesManager_Type::TileType, double, double, const std::string &, const CLTileFileDownloadDetails &, CFAbsoluteTime)", "%s\n", v115);
          if (v115 != buf)
          {
            free(v115);
          }
        }

        if (v23)
        {
          v26 = sub_100085520(v15 + 184, &v134);
          v27 = sub_100232000(v26, v21 > 1, *(v15 + 128), a7);
          if (qword_1025D48A0 != -1)
          {
            sub_101B239BC();
          }

          v28 = qword_1025D48A8;
          if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
          {
            (*(*v26 + 16))(v141, v26);
            v29 = v141[23] >= 0 ? v141 : *v141;
            *buf = 136315906;
            *&buf[4] = v29;
            *&buf[12] = 1024;
            *&buf[14] = BYTE1(v133);
            *&buf[18] = 1024;
            *&buf[20] = v27;
            *&buf[24] = 1024;
            *&buf[26] = v128 != v22;
            _os_log_impl(dword_100000000, v28, OS_LOG_TYPE_DEBUG, "WIFITILE: requestDownload, tileid, %s, already available, isUpdateMTimestamp, %d, isShouldBeRefreshed, %d, isBeingDownloaded, %d", buf, 0x1Eu);
            if ((v141[23] & 0x80000000) != 0)
            {
              operator delete(*v141);
            }
          }

          if (sub_10000A100(121, 2))
          {
            sub_101B239E4(buf);
            (*(*v26 + 16))(v138, v26);
            if (v140[1] >= 0)
            {
              v116 = v138;
            }

            else
            {
              v116 = *v138;
            }

            *v141 = 136315906;
            *&v141[4] = v116;
            *&v141[12] = 1024;
            *&v141[14] = BYTE1(v133);
            *&v141[18] = 1024;
            *&v141[20] = v27;
            LOWORD(v142.__r_.__value_.__l.__data_) = 1024;
            *&v142.__r_.__value_.__s.__data_[2] = v128 != v22;
            v117 = _os_log_send_and_compose_impl();
            if ((v140[1] & 0x80000000) != 0)
            {
              operator delete(*v138);
            }

            sub_100152C7C("Generic", 1, 0, 2, "BOOL CLWifiTilesManager::requestDownload(CLTilesManager_Type::TileType, double, double, const std::string &, const CLTileFileDownloadDetails &, CFAbsoluteTime)", "%s\n", v117);
            if (v117 != buf)
            {
              free(v117);
            }
          }

          if (BYTE1(v133) == 1)
          {
            sub_1010C9A2C(a1, v26, buf, a7);
          }

          LOBYTE(v30) = 0;
          if (!v27 || v128 != v22)
          {
            goto LABEL_142;
          }

          if (qword_1025D48A0 != -1)
          {
            sub_101B239BC();
          }

          v31 = qword_1025D48A8;
          if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
          {
            (*(*v26 + 16))(buf, v26);
            v32 = buf[23] >= 0 ? buf : *buf;
            *v141 = 136315138;
            *&v141[4] = v32;
            _os_log_impl(dword_100000000, v31, OS_LOG_TYPE_DEBUG, "WIFITILE: requestDownload, refresh download, %s", v141, 0xCu);
            if ((buf[23] & 0x80000000) != 0)
            {
              operator delete(*buf);
            }
          }

          if (!sub_10000A100(121, 2))
          {
LABEL_132:
            sub_1010AB49C(*(v15 + 4), v138);
            v60 = *v138;
            *v138 = 0;
            v130 = v60;
            sub_1010C6EDC(a1, &v130, &v134, &v131);
            v61 = v130;
            v130 = 0;
            if (v61)
            {
              (*(*v61 + 8))(v61);
            }

            if (qword_1025D4620 != -1)
            {
              sub_101B2374C();
            }

            v62 = qword_1025D4628;
            if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
            {
              v63 = sub_100085338(&v134);
              v64 = sub_100085314(&v134);
              v65 = *(a1 + 144);
              *buf = 134546177;
              *&buf[4] = v63;
              *&buf[12] = 2053;
              *&buf[14] = v64;
              *&buf[22] = 2050;
              *&buf[24] = v65;
              _os_log_impl(dword_100000000, v62, OS_LOG_TYPE_DEFAULT, "@TileReq, wifi, onlist, llsw, %{sensitive}.2lf, %{sensitive}.2lf, center, size, %{public}ld", buf, 0x20u);
            }

            if (sub_10000A100(121, 2))
            {
              sub_101B23A94(buf);
              v119 = sub_100085338(&v134);
              v120 = sub_100085314(&v134);
              v121 = *(a1 + 144);
              *v141 = 134546177;
              *&v141[4] = v119;
              *&v141[12] = 2053;
              *&v141[14] = v120;
              *&v141[22] = 2050;
              v142.__r_.__value_.__r.__words[0] = v121;
              v122 = _os_log_send_and_compose_impl();
              sub_100152C7C("Generic", 1, 0, 2, "BOOL CLWifiTilesManager::requestDownload(CLTilesManager_Type::TileType, double, double, const std::string &, const CLTileFileDownloadDetails &, CFAbsoluteTime)", "%s\n", v122);
              if (v122 != buf)
              {
                free(v122);
              }
            }

            v66 = *v138;
            *v138 = 0;
            if (v66)
            {
              (*(*v66 + 8))(v66);
            }

            LOBYTE(v30) = 1;
LABEL_142:
            *v141 = v134;
            *&v141[16] = v135;
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              sub_100007244(&v142, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
            }

            else
            {
              v142 = __p;
            }

            v127 = v30;
            LOWORD(v131) = 0;
            BYTE2(v131) = 0;
            if ((v132 & 0x80000000) == 0)
            {
              v67 = -v132;
              v125 = (2 * v132) | 1;
              v126 = -v132;
              v124 = v132;
              do
              {
                v68 = v125;
                v69 = v126;
                do
                {
                  if (v69 | v67)
                  {
                    *v141 = v134;
                    *&v141[16] = v135;
                    std::string::operator=(&v142, &__p);
                    v70 = *(v15 + 160);
                    v71 = *(v15 + 152);
                    *&v70 = v70;
                    sub_100085AC4(v141, v67, v69, v71, *&v70);
                    if (sub_1000852BC(v141))
                    {
                      if (qword_1025D48A0 != -1)
                      {
                        sub_101B239BC();
                      }

                      v72 = qword_1025D48A8;
                      if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
                      {
                        v73 = *&v141[8];
                        v74 = *&v141[4];
                        sub_100B4EFD4(v141, v138);
                        v75 = v138;
                        if (v140[1] < 0)
                        {
                          v75 = *v138;
                        }

                        *buf = 67110146;
                        *&buf[4] = v67;
                        *&buf[8] = 1024;
                        *&buf[10] = v69;
                        *&buf[14] = 1024;
                        *&buf[16] = v73;
                        *&buf[20] = 1024;
                        *&buf[22] = v74;
                        *&buf[26] = 2080;
                        *&buf[28] = v75;
                        _os_log_impl(dword_100000000, v72, OS_LOG_TYPE_DEBUG, "WIFITILE: requestDownload, y, %d, x, %d, tile_y, %d, tile_x, %d, neighbourTileID, %s", buf, 0x24u);
                        if ((v140[1] & 0x80000000) != 0)
                        {
                          operator delete(*v138);
                        }
                      }

                      if (sub_10000A100(121, 2))
                      {
                        sub_101B239E4(buf);
                        v88 = *&v141[8];
                        v89 = *&v141[4];
                        sub_100B4EFD4(v141, v143);
                        v90 = v143;
                        if (v144 < 0)
                        {
                          v90 = *v143;
                        }

                        *v138 = 67110146;
                        *&v138[4] = v67;
                        *&v138[8] = 1024;
                        *&v138[10] = v69;
                        LOWORD(v139) = 1024;
                        *(&v139 + 2) = v88;
                        HIWORD(v139) = 1024;
                        *v140 = v89;
                        *&v140[4] = 2080;
                        *&v140[6] = v90;
                        v91 = _os_log_send_and_compose_impl();
                        if (v144 < 0)
                        {
                          operator delete(*v143);
                        }

                        sub_100152C7C("Generic", 1, 0, 2, "BOOL CLWifiTilesManager::requestDownload(CLTilesManager_Type::TileType, double, double, const std::string &, const CLTileFileDownloadDetails &, CFAbsoluteTime)", "%s\n", v91);
                        if (v91 != buf)
                        {
                          free(v91);
                        }
                      }

                      v76 = sub_10008535C(a1 + 128, v141);
                      if (((*(a1 + 216) | sub_1000853E0(v15 + 184, v141)) & 1) == 0 && v128 == v76)
                      {
                        if (qword_1025D48A0 != -1)
                        {
                          sub_101B239BC();
                        }

                        v77 = qword_1025D48A8;
                        if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
                        {
                          sub_100B4EFD4(v141, buf);
                          v78 = buf;
                          if (buf[23] < 0)
                          {
                            v78 = *buf;
                          }

                          *v138 = 136315138;
                          *&v138[4] = v78;
                          _os_log_impl(dword_100000000, v77, OS_LOG_TYPE_DEBUG, "WIFITILE: requestDownload, adding neighbour, %s", v138, 0xCu);
                          if ((buf[23] & 0x80000000) != 0)
                          {
                            operator delete(*buf);
                          }
                        }

                        if (sub_10000A100(121, 2))
                        {
                          sub_101B239E4(buf);
                          sub_100B4EFD4(v141, v138);
                          v96 = v138;
                          if (v140[1] < 0)
                          {
                            v96 = *v138;
                          }

                          *v143 = 136315138;
                          *&v143[4] = v96;
                          v97 = _os_log_send_and_compose_impl();
                          if ((v140[1] & 0x80000000) != 0)
                          {
                            operator delete(*v138);
                          }

                          sub_100152C7C("Generic", 1, 0, 2, "BOOL CLWifiTilesManager::requestDownload(CLTilesManager_Type::TileType, double, double, const std::string &, const CLTileFileDownloadDetails &, CFAbsoluteTime)", "%s\n", v97);
                          if (v97 != buf)
                          {
                            free(v97);
                          }
                        }

                        sub_1010AB49C(*(v15 + 4), &v129);
                        sub_1010C6EDC(a1, &v129, v141, &v131);
                        v79 = v129;
                        v129 = 0;
                        if (v79)
                        {
                          (*(*v79 + 8))(v79);
                        }

                        if (qword_1025D4620 != -1)
                        {
                          sub_101B2374C();
                        }

                        v80 = qword_1025D4628;
                        if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
                        {
                          v81 = sub_100085338(v141);
                          v82 = sub_100085314(v141);
                          v83 = *(a1 + 144);
                          *buf = 134546177;
                          *&buf[4] = v81;
                          *&buf[12] = 2053;
                          *&buf[14] = v82;
                          *&buf[22] = 2050;
                          *&buf[24] = v83;
                          _os_log_impl(dword_100000000, v80, OS_LOG_TYPE_DEFAULT, "@TileReq, wifi, onlist, llsw, %{sensitive}.2lf, %{sensitive}.2lf, neighbor, size, %{public}ld", buf, 0x20u);
                        }

                        if (sub_10000A100(121, 2))
                        {
                          sub_101B23A94(buf);
                          v98 = sub_100085338(v141);
                          v99 = sub_100085314(v141);
                          v100 = *(a1 + 144);
                          *v138 = 134546177;
                          *&v138[4] = v98;
                          *&v138[12] = 2053;
                          v139 = v99;
                          *v140 = 2050;
                          *&v140[2] = v100;
                          v101 = _os_log_send_and_compose_impl();
                          sub_100152C7C("Generic", 1, 0, 2, "BOOL CLWifiTilesManager::requestDownload(CLTilesManager_Type::TileType, double, double, const std::string &, const CLTileFileDownloadDetails &, CFAbsoluteTime)", "%s\n", v101);
                          if (v101 != buf)
                          {
                            free(v101);
                          }
                        }

                        v127 = 1;
                      }
                    }

                    else
                    {
                      if (qword_1025D48A0 != -1)
                      {
                        sub_101B239BC();
                      }

                      v84 = qword_1025D48A8;
                      if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
                      {
                        v85 = *&v141[8];
                        v86 = *&v141[4];
                        sub_100B4EFD4(v141, v138);
                        v87 = v138;
                        if (v140[1] < 0)
                        {
                          v87 = *v138;
                        }

                        *buf = 67110146;
                        *&buf[4] = v67;
                        *&buf[8] = 1024;
                        *&buf[10] = v69;
                        *&buf[14] = 1024;
                        *&buf[16] = v85;
                        *&buf[20] = 1024;
                        *&buf[22] = v86;
                        *&buf[26] = 2080;
                        *&buf[28] = v87;
                        _os_log_impl(dword_100000000, v84, OS_LOG_TYPE_DEBUG, "WIFITILE: requestDownload, out of boundaries, y, %d, x, %d, tile_y, %d, tile_x, %d, neighbourTileID, %s", buf, 0x24u);
                        if ((v140[1] & 0x80000000) != 0)
                        {
                          operator delete(*v138);
                        }
                      }

                      if (sub_10000A100(121, 2))
                      {
                        sub_101B239E4(buf);
                        v92 = *&v141[8];
                        v93 = *&v141[4];
                        sub_100B4EFD4(v141, v143);
                        v94 = v143;
                        if (v144 < 0)
                        {
                          v94 = *v143;
                        }

                        *v138 = 67110146;
                        *&v138[4] = v67;
                        *&v138[8] = 1024;
                        *&v138[10] = v69;
                        LOWORD(v139) = 1024;
                        *(&v139 + 2) = v92;
                        HIWORD(v139) = 1024;
                        *v140 = v93;
                        *&v140[4] = 2080;
                        *&v140[6] = v94;
                        v95 = _os_log_send_and_compose_impl();
                        if (v144 < 0)
                        {
                          operator delete(*v143);
                        }

                        sub_100152C7C("Generic", 1, 0, 2, "BOOL CLWifiTilesManager::requestDownload(CLTilesManager_Type::TileType, double, double, const std::string &, const CLTileFileDownloadDetails &, CFAbsoluteTime)", "%s\n", v95);
                        if (v95 != buf)
                        {
                          free(v95);
                        }
                      }
                    }
                  }

                  ++v69;
                  --v68;
                }

                while (v68);
              }

              while (v67++ != v124);
            }

            if (v127)
            {
              v103 = (*(**(a1 + 448) + 80))(*(a1 + 448));
              if (qword_1025D4620 != -1)
              {
                sub_101B2374C();
              }

              v104 = qword_1025D4628;
              if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 67240192;
                *&buf[4] = v103;
                _os_log_impl(dword_100000000, v104, OS_LOG_TYPE_DEFAULT, "@TileSched, wifi, set, %{public}d", buf, 8u);
              }

              if (sub_10000A100(121, 2))
              {
                sub_101B23A94(buf);
                *v138 = 67240192;
                *&v138[4] = v103;
                v118 = _os_log_send_and_compose_impl();
                sub_100152C7C("Generic", 1, 0, 2, "BOOL CLWifiTilesManager::requestDownload(CLTilesManager_Type::TileType, double, double, const std::string &, const CLTileFileDownloadDetails &, CFAbsoluteTime)", "%s\n", v118);
                if (v118 != buf)
                {
                  free(v118);
                }
              }

              sub_100233368(a1, 0, a7);
            }

            if (SHIBYTE(v142.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v142.__r_.__value_.__l.__data_);
            }

LABEL_63:
            v38 = 1;
            goto LABEL_85;
          }

          sub_101B239E4(buf);
          (*(*v26 + 16))(v141, v26);
          if (v141[23] >= 0)
          {
            v33 = v141;
          }

          else
          {
            v33 = *v141;
          }

          *v138 = 136315138;
          *&v138[4] = v33;
          v34 = _os_log_send_and_compose_impl();
          if ((v141[23] & 0x80000000) != 0)
          {
            operator delete(*v141);
          }
        }

        else
        {
          if (v128 != v22)
          {
            v46 = *(v22 + 80);
            v30 = *(v46 + 114) != BYTE2(v131) || __PAIR64__(*(v46 + 113), *(v46 + 112)) != __PAIR64__(BYTE1(v131), v131);
            if (*(v46 + 114))
            {
              BYTE2(v131) = 1;
            }

            if (*(v46 + 112) == 1)
            {
              LOBYTE(v131) = 1;
            }

            if (*(v46 + 113) == 1)
            {
              BYTE1(v131) = 1;
            }

            v47 = v132;
            *(v46 + 112) = v131;
            *(v46 + 128) = v47;
            *(v46 + 144) = v133;
            if (qword_1025D48A0 != -1)
            {
              sub_101B239BC();
            }

            v48 = qword_1025D48A8;
            if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
            {
              (*(*v46 + 16))(v141, v46);
              v49 = v141[23];
              v50 = *v141;
              sub_100EDCE5C(v138);
              v51 = v141;
              if (v49 < 0)
              {
                v51 = v50;
              }

              if (v140[1] >= 0)
              {
                v52 = v138;
              }

              else
              {
                v52 = *v138;
              }

              *buf = 136315650;
              *&buf[4] = v51;
              *&buf[12] = 2080;
              *&buf[14] = v52;
              *&buf[22] = 1024;
              *&buf[24] = v30;
              _os_log_impl(dword_100000000, v48, OS_LOG_TYPE_DEBUG, "WIFITILE: requestDownload, tileid, %s, will be downloaded, details, %s, updated, %d", buf, 0x1Cu);
              if ((v140[1] & 0x80000000) != 0)
              {
                operator delete(*v138);
              }

              if ((v141[23] & 0x80000000) != 0)
              {
                operator delete(*v141);
              }
            }

            if (sub_10000A100(121, 2))
            {
              sub_101B239E4(buf);
              (*(*v46 + 16))(v138, v46);
              v53 = v140[1];
              v54 = *v138;
              sub_100EDCE5C(v143);
              v55 = v138;
              if (v53 < 0)
              {
                v55 = v54;
              }

              if (v144 >= 0)
              {
                v56 = v143;
              }

              else
              {
                v56 = *v143;
              }

              *v141 = 136315650;
              *&v141[4] = v55;
              *&v141[12] = 2080;
              *&v141[14] = v56;
              *&v141[22] = 1024;
              LODWORD(v142.__r_.__value_.__l.__data_) = v30;
              v57 = _os_log_send_and_compose_impl();
              if (v144 < 0)
              {
                operator delete(*v143);
              }

              if ((v140[1] & 0x80000000) != 0)
              {
                operator delete(*v138);
              }

              sub_100152C7C("Generic", 1, 0, 2, "BOOL CLWifiTilesManager::requestDownload(CLTilesManager_Type::TileType, double, double, const std::string &, const CLTileFileDownloadDetails &, CFAbsoluteTime)", "%s\n", v57);
              if (v57 != buf)
              {
                free(v57);
              }
            }

            goto LABEL_142;
          }

          if (qword_1025D48A0 != -1)
          {
            sub_101B239BC();
          }

          v58 = qword_1025D48A8;
          if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
          {
            sub_100EDCE5C(v141);
            v59 = v141[23] >= 0 ? v141 : *v141;
            *buf = 134546179;
            *&buf[4] = a5;
            *&buf[12] = 2053;
            *&buf[14] = a6;
            *&buf[22] = 2080;
            *&buf[24] = v59;
            _os_log_impl(dword_100000000, v58, OS_LOG_TYPE_DEBUG, "WIFITILE: requestDownload, tileid, %{sensitive}.8lf, %{sensitive}8lf, will be downloaded, details, %s", buf, 0x20u);
            if ((v141[23] & 0x80000000) != 0)
            {
              operator delete(*v141);
            }
          }

          if (!sub_10000A100(121, 2))
          {
            goto LABEL_132;
          }

          sub_101B239E4(buf);
          sub_100EDCE5C(v138);
          if (v140[1] >= 0)
          {
            v123 = v138;
          }

          else
          {
            v123 = *v138;
          }

          *v141 = 134546179;
          *&v141[4] = a5;
          *&v141[12] = 2053;
          *&v141[14] = a6;
          *&v141[22] = 2080;
          v142.__r_.__value_.__r.__words[0] = v123;
          v34 = _os_log_send_and_compose_impl();
          if ((v140[1] & 0x80000000) != 0)
          {
            operator delete(*v138);
          }
        }

        sub_100152C7C("Generic", 1, 0, 2, "BOOL CLWifiTilesManager::requestDownload(CLTilesManager_Type::TileType, double, double, const std::string &, const CLTileFileDownloadDetails &, CFAbsoluteTime)", "%s\n", v34);
        if (v34 != buf)
        {
          free(v34);
        }

        goto LABEL_132;
      }

      sub_101B23AD8();
      abort_report_np();
      __break(1u);
    }

    else if (qword_1025D48A0 == -1)
    {
      goto LABEL_81;
    }

    sub_101B239BC();
LABEL_81:
    v43 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
    {
      v44 = *(a1 + 216);
      *buf = 67109120;
      *&buf[4] = v44;
      _os_log_impl(dword_100000000, v43, OS_LOG_TYPE_DEBUG, "WIFITILE: requestDownload, index is not available until first unlock, fDataProtectionEnabled, %d", buf, 8u);
    }

    if (!sub_10000A100(121, 2))
    {
      goto LABEL_84;
    }

    sub_101B239E4(buf);
    v113 = *(a1 + 216);
    *v141 = 67109120;
    *&v141[4] = v113;
    v42 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "BOOL CLWifiTilesManager::requestDownload(CLTilesManager_Type::TileType, double, double, const std::string &, const CLTileFileDownloadDetails &, CFAbsoluteTime)", "%s\n", v42);
    if (v42 == buf)
    {
      goto LABEL_84;
    }

    goto LABEL_232;
  }

  if (qword_1025D4630 != -1)
  {
    sub_101B23A28();
  }

  v39 = qword_1025D4638;
  if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_FAULT))
  {
    sub_100B4EFD4(&v134, buf);
    v40 = buf[23] >= 0 ? buf : *buf;
    *v141 = 136380675;
    *&v141[4] = v40;
    _os_log_impl(dword_100000000, v39, OS_LOG_TYPE_FAULT, "WIFITILE: requestDownload, invalid tile ID: %{private}s, #CloneMe", v141, 0xCu);
    if ((buf[23] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }
  }

  if (!sub_10000A100(121, 0))
  {
    goto LABEL_84;
  }

  sub_101B23A50(buf);
  sub_100B4EFD4(&v134, v141);
  if (v141[23] >= 0)
  {
    v41 = v141;
  }

  else
  {
    v41 = *v141;
  }

  *v138 = 136380675;
  *&v138[4] = v41;
  v42 = _os_log_send_and_compose_impl();
  if ((v141[23] & 0x80000000) != 0)
  {
    operator delete(*v141);
  }

  sub_100152C7C("Generic", 1, 0, 0, "BOOL CLWifiTilesManager::requestDownload(CLTilesManager_Type::TileType, double, double, const std::string &, const CLTileFileDownloadDetails &, CFAbsoluteTime)", "%s\n", v42);
  if (v42 == buf)
  {
    goto LABEL_84;
  }

LABEL_232:
  free(v42);
LABEL_84:
  v38 = 0;
LABEL_85:
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v38;
}

void sub_100231E50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *__p, uint64_t a34, int a35, __int16 a36, char a37, char a38, uint64_t a39, void *a40, uint64_t a41, int a42, __int16 a43, char a44, char a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, int a51, __int16 a52, char a53, char a54, uint64_t a55, uint64_t a56, int a57, __int16 a58, char a59, char a60)
{
  if (a38 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_100232000(uint64_t a1, int a2, float a3, double a4)
{
  v53[0] = 0;
  v53[1] = 0;
  v54 = 0;
  v8 = *(a1 + 160);
  v9 = *&qword_102630970;
  v10 = sub_10023325C(*(a1 + 96), a4, *&qword_102630970);
  v11 = *&qword_102630978;
  v12 = vabdd_f64(a4, v8);
  if (sub_1002332E4(a1))
  {
    LODWORD(v13) = 0;
    v14 = 0;
    v15 = &v53[1] + 2;
    HIBYTE(v54) = 10;
    LOWORD(v53[1]) = 29555;
    v16 = "InProgress";
LABEL_3:
    v53[0] = *v16;
    goto LABEL_49;
  }

  if (*(a1 + 168))
  {
LABEL_5:
    v17 = sub_100085A44(a1);
    if (v12 >= v11)
    {
      v18 = v17;
    }

    else
    {
      v18 = 0;
    }

    if (v18 == 1)
    {
      v13 = sub_100ED9330(a1, a2, a4, a3);
      if (v13)
      {
        if (qword_1025D4620 != -1)
        {
          sub_101ABEA90();
        }

        v19 = qword_1025D4628;
        if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
        {
          (*(*a1 + 16))(__p, a1);
          v20 = v58 >= 0 ? __p : *__p;
          v21 = vabdd_f64(a4, *(a1 + 176));
          v22 = *(a1 + 200);
          *buf = 136381187;
          *&buf[4] = v20;
          v81 = 2050;
          v82 = v21;
          v83 = 1024;
          LODWORD(v84) = v22;
          _os_log_impl(dword_100000000, v19, OS_LOG_TYPE_DEBUG, "TileFile, canRequestBasedOnAttempts, tile, %{private}s, age, %{public}.1lf, expirationAge, %d", buf, 0x1Cu);
          if (SHIBYTE(v58) < 0)
          {
            operator delete(*__p);
          }
        }

        if (sub_10000A100(121, 2))
        {
          sub_101ABEAA4(buf);
          (*(*a1 + 16))(v76, a1);
          if (v79 >= 0)
          {
            v47 = v76;
          }

          else
          {
            v47 = *v76;
          }

          v48 = vabdd_f64(a4, *(a1 + 176));
          v49 = *(a1 + 200);
          *__p = 136381187;
          *&__p[4] = v47;
          v56 = 2050;
          v57 = v48;
          v58 = 1024;
          LODWORD(v59) = v49;
          v50 = _os_log_send_and_compose_impl();
          if (v79 < 0)
          {
            operator delete(*v76);
          }

          sub_100152C7C("Generic", 1, 0, 2, "BOOL CLTileFile::canRequestBasedOnAttempts(BOOL, float, CFAbsoluteTime)", "%s\n", v50);
          if (v50 != buf)
          {
            free(v50);
          }
        }
      }

      v15 = v53 + 4;
      HIBYTE(v54) = 4;
      LODWORD(v53[0]) = 1684367169;
      v14 = v13;
LABEL_49:
      *v15 = 0;
      if (!v14)
      {
        v29 = 0;
        if (*(a1 + 240) == 65)
        {
          goto LABEL_59;
        }
      }

      goto LABEL_51;
    }

    if ((*(a1 + 168) & 1) != 0 && (sub_100085A44(a1) & 1) == 0)
    {
      v14 = v12 >= 1209600.0;
      if (v12 >= 1209600.0)
      {
        if (qword_1025D4620 != -1)
        {
          sub_101ABEA90();
        }

        v27 = qword_1025D4628;
        if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
        {
          (*(*a1 + 16))(__p, a1);
          v28 = v58 >= 0 ? __p : *__p;
          *buf = 136381187;
          *&buf[4] = v28;
          v81 = 2050;
          v82 = v12;
          v83 = 1026;
          LODWORD(v84) = 1209600;
          _os_log_impl(dword_100000000, v27, OS_LOG_TYPE_DEBUG, "TileFile, canRequestBasedOnAttempts, tile, %{private}s, sinceLastDownload, %{public}.1lf, %{public}d, needs to be refreshed, TileDoesNotExistOnTheServer", buf, 0x1Cu);
          if (SHIBYTE(v58) < 0)
          {
            operator delete(*__p);
          }
        }

        if (sub_10000A100(121, 2))
        {
          sub_101ABEAA4(buf);
          (*(*a1 + 16))(v76, a1);
          if (v79 >= 0)
          {
            v51 = v76;
          }

          else
          {
            v51 = *v76;
          }

          *__p = 136381187;
          *&__p[4] = v51;
          v56 = 2050;
          v57 = v12;
          v58 = 1026;
          LODWORD(v59) = 1209600;
          v52 = _os_log_send_and_compose_impl();
          if (v79 < 0)
          {
            operator delete(*v76);
          }

          sub_100152C7C("Generic", 1, 0, 2, "BOOL CLTileFile::canRequestBasedOnAttempts(BOOL, float, CFAbsoluteTime)", "%s\n", v52);
          if (v52 != buf)
          {
            free(v52);
          }
        }
      }

      LODWORD(v13) = 0;
      v15 = &v53[1] + 3;
      HIBYTE(v54) = 11;
      *(v53 + 7) = 1953720696;
      v16 = "DoesntExist";
      goto LABEL_3;
    }

LABEL_48:
    LODWORD(v13) = 0;
    v14 = 0;
    v15 = v53 + 5;
    HIBYTE(v54) = 5;
    qmemcpy(v53, "Empty", 5);
    goto LABEL_49;
  }

  v23 = sub_100085A44(a1);
  if (v12 >= v9)
  {
    v24 = v23;
  }

  else
  {
    v24 = 0;
  }

  if ((v24 & v10 & 1) == 0)
  {
    if ((*(a1 + 168) & 1) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_5;
  }

  if (qword_1025D4620 != -1)
  {
    sub_101ABEA90();
  }

  v25 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
  {
    (*(*a1 + 16))(buf, a1);
    v26 = v83 >= 0 ? buf : *buf;
    *__p = 136380931;
    *&__p[4] = v26;
    v56 = 2050;
    v57 = v12;
    _os_log_impl(dword_100000000, v25, OS_LOG_TYPE_DEBUG, "TileFile, canRequestBasedOnAttempts, tile, %{private}s, age, %{public}.1lf, needs to be refreshed - retry", __p, 0x16u);
    if (SHIBYTE(v83) < 0)
    {
      operator delete(*buf);
    }
  }

  if (sub_10000A100(121, 2))
  {
    sub_101ABEAA4(buf);
    (*(*a1 + 16))(__p, a1);
    if (v58 >= 0)
    {
      v45 = __p;
    }

    else
    {
      v45 = *__p;
    }

    *v76 = 136380931;
    *&v76[4] = v45;
    v77 = 2050;
    v78 = v12;
    v46 = _os_log_send_and_compose_impl();
    if (SHIBYTE(v58) < 0)
    {
      operator delete(*__p);
    }

    sub_100152C7C("Generic", 1, 0, 2, "BOOL CLTileFile::canRequestBasedOnAttempts(BOOL, float, CFAbsoluteTime)", "%s\n", v46);
    if (v46 != buf)
    {
      free(v46);
    }
  }

  LODWORD(v13) = 0;
  HIBYTE(v54) = 10;
  strcpy(v53, "1st/Re-Try");
  v14 = 1;
LABEL_51:
  if (qword_1025D4620 != -1)
  {
    sub_101ABE668();
  }

  v30 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_INFO))
  {
    v31 = sub_100085790(*(a1 + 48));
    v32 = sub_100085338(a1 + 48);
    v33 = sub_100085314(a1 + 48);
    v34 = *(a1 + 168);
    v35 = sub_100085A44(a1);
    v36 = v53;
    *buf = 136448771;
    if (v54 < 0)
    {
      v36 = v53[0];
    }

    *&buf[4] = v31;
    v81 = 2053;
    v82 = v32;
    v83 = 2053;
    v84 = v33;
    v85 = 1026;
    v86 = v34;
    v87 = 1026;
    v88 = v35;
    v89 = 2050;
    v90 = v12;
    v91 = 1026;
    v92 = v12 >= v9;
    v93 = 1026;
    v94 = v10;
    v95 = 1026;
    v96 = v12 >= v11;
    v97 = 1026;
    v98 = v13;
    v99 = 2081;
    v100 = v36;
    _os_log_impl(dword_100000000, v30, OS_LOG_TYPE_INFO, "@TileDl, %{public}s, attempts, llsw, %{sensitive}.2lf, %{sensitive}.2lf, lastSuccess, %{public}d, existsOnServer, %{public}d, sinceLastDownload, %{public}.1lf, cooloff1, %{public}d, cooloff2, %{public}d, cooloff3, %{public}d, expired, %{public}d, path, %{private}s", buf, 0x58u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101ABEAA4(buf);
    v38 = sub_100085790(*(a1 + 48));
    v39 = sub_100085338(a1 + 48);
    v40 = sub_100085314(a1 + 48);
    v41 = *(a1 + 168);
    v42 = sub_100085A44(a1);
    v43 = v53;
    *__p = 136448771;
    if (v54 < 0)
    {
      v43 = v53[0];
    }

    *&__p[4] = v38;
    v56 = 2053;
    v57 = v39;
    v58 = 2053;
    v59 = v40;
    v60 = 1026;
    v61 = v41;
    v62 = 1026;
    v63 = v42;
    v64 = 2050;
    v65 = v12;
    v66 = 1026;
    v67 = v12 >= v9;
    v68 = 1026;
    v69 = v10;
    v70 = 1026;
    v71 = v12 >= v11;
    v72 = 1026;
    v73 = v13;
    v74 = 2081;
    v75 = v43;
    v44 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "BOOL CLTileFile::canRequestBasedOnAttempts(BOOL, float, CFAbsoluteTime)", "%s\n", v44);
    if (v44 != buf)
    {
      free(v44);
    }
  }

  v29 = v14;
LABEL_59:
  if (SHIBYTE(v54) < 0)
  {
    operator delete(v53[0]);
  }

  return v29;
}

void sub_100232AA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_100232B00(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x40;
  v3 = v1 - 64;
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

void sub_100232C88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_100232CFC(uint64_t a1, _BYTE *a2)
{
  v4 = *(a1 + 408);
  if (v4 <= 0)
  {
    v6 = *(a1 + 412);
    v5 = v6 ^ 1;
  }

  else
  {
    v5 = 0;
    if (v4 == 1)
    {
      v6 = *(a1 + 412);
    }

    else
    {
      v6 = 1;
    }
  }

  v7 = (*(*a1 + 224))(a1);
  if ((*(*a1 + 240))(a1, a2))
  {
    if (v5 & 1 | ((a2[112] & 1) == 0))
    {
      if (v5 & 1 | ((*(v7 + 177) & 1) == 0))
      {
        if (v6)
        {
          if (qword_1025D48A0 != -1)
          {
            sub_101B23F7C();
          }

          v8 = qword_1025D48A8;
          if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
          {
            (*(*a2 + 16))(__p, a2);
            if (v20 >= 0)
            {
              v9 = __p;
            }

            else
            {
              v9 = __p[0];
            }

            *buf = 136315138;
            v22 = v9;
            _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEBUG, "WIFITILE: checkDownloadSchedule, rule, isCurrent, IsOkToDownloadLarge, %s", buf, 0xCu);
            if (v20 < 0)
            {
              operator delete(__p[0]);
            }
          }

          if (sub_10000A100(121, 2))
          {
            sub_101B26B10();
          }

          goto LABEL_32;
        }

        return 0;
      }

      if (qword_1025D48A0 != -1)
      {
        sub_101B23F7C();
      }

      v17 = qword_1025D48A8;
      if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
      {
        (*(*a2 + 16))(__p, a2);
        v18 = v20 >= 0 ? __p : __p[0];
        *buf = 136315138;
        v22 = v18;
        _os_log_impl(dword_100000000, v17, OS_LOG_TYPE_DEBUG, "WIFITILE: checkDownloadSchedule, rule, isCurrent, fDownloadCurrentTileOverCell, IsOkToDownloadRealtime, %s", buf, 0xCu);
        if (v20 < 0)
        {
          operator delete(__p[0]);
        }
      }

      if (sub_10000A100(121, 2))
      {
        sub_101B269F0();
      }
    }

    else
    {
      if (qword_1025D48A0 != -1)
      {
        sub_101B23F7C();
      }

      v13 = qword_1025D48A8;
      if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
      {
        (*(*a2 + 16))(__p, a2);
        v14 = v20 >= 0 ? __p : __p[0];
        *buf = 136315138;
        v22 = v14;
        _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_DEBUG, "WIFITILE: checkDownloadSchedule, rule, isCurrent, isAllowCellularIfCurrent,  IsOkToDownloadRealtime, %s", buf, 0xCu);
        if (v20 < 0)
        {
          operator delete(__p[0]);
        }
      }

      if (sub_10000A100(121, 2))
      {
        sub_101B268D0();
      }
    }
  }

  else
  {
    if (v5 & 1 | ((a2[113] & 1) == 0))
    {
      if (v6)
      {
        if (qword_1025D48A0 != -1)
        {
          sub_101B23F7C();
        }

        v10 = qword_1025D48A8;
        if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
        {
          (*(*a2 + 16))(__p, a2);
          v11 = v20 >= 0 ? __p : __p[0];
          *buf = 136315138;
          v22 = v11;
          _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEBUG, "WIFITILE: checkDownloadSchedule, rule, IsOkToDownloadLarge, %s", buf, 0xCu);
          if (v20 < 0)
          {
            operator delete(__p[0]);
          }
        }

        if (sub_10000A100(121, 2))
        {
          sub_101B267B0();
        }

LABEL_32:
        if (*(a1 + 192) != 1)
        {
          return 2;
        }
      }

      return 0;
    }

    if (qword_1025D48A0 != -1)
    {
      sub_101B23F7C();
    }

    v15 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
    {
      (*(*a2 + 16))(__p, a2);
      v16 = v20 >= 0 ? __p : __p[0];
      *buf = 136315138;
      v22 = v16;
      _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_DEBUG, "WIFITILE: checkDownloadSchedule, rule, isAllowCellularIfNotCurrent, IsOkToDownloadRealtime, %s", buf, 0xCu);
      if (v20 < 0)
      {
        operator delete(__p[0]);
      }
    }

    if (sub_10000A100(121, 2))
    {
      sub_101B26690();
    }
  }

  return (*(a1 + 160) & 1) == 0;
}

BOOL sub_10023325C(uint64_t a1, double a2, double a3)
{
  [*a1 assertInside];
  v6 = *(a1 + 8);
  result = 1;
  if (v6 != -1.0 && a2 - v6 < 900.0)
  {
    return v6 + a3 + (*(a1 + 16) - 1) * (*(a1 + 16) - 1) * 30.0 <= a2;
  }

  return result;
}

BOOL sub_1002332E4(uint64_t a1)
{
  v2 = *(a1 + 40);
  (*(*v2 + 16))(v2);
  v3 = *(a1 + 104);
  (*(*v2 + 24))(v2);
  return v3 != 0;
}

void sub_100233368(uint64_t a1, unsigned int a2, double a3)
{
  v6 = (*(**(a1 + 448) + 32))(*(a1 + 448));
  v7 = *(a1 + 408);
  if (((*(**(a1 + 448) + 16))(*(a1 + 448)) & 1) == 0)
  {
    if (qword_1025D4630 != -1)
    {
      sub_101B23CA4();
    }

    v15 = qword_1025D4638;
    if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_DEBUG, "WIFITILE: checkDownloadSchedule, wifi off - no tile downloads", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101B24894();
    }

    goto LABEL_39;
  }

  if (((*(**(a1 + 448) + 48))(*(a1 + 448)) & 1) == 0)
  {
    if (qword_1025D4630 != -1)
    {
      sub_101B23CA4();
    }

    v16 = qword_1025D4638;
    if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_DEBUG, "WIFITILE: checkDownloadSchedule, location services disabled - no tile downloads", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101B24978();
    }

    goto LABEL_39;
  }

  if ((*(a1 + 217) & 1) == 0)
  {
    if (qword_1025D4630 != -1)
    {
      sub_101B23CA4();
    }

    v17 = qword_1025D4638;
    if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_DEBUG))
    {
      v18 = *(a1 + 216);
      *buf = 67240192;
      *&buf[4] = v18;
      _os_log_impl(dword_100000000, v17, OS_LOG_TYPE_DEBUG, "WIFITILE: checkDownloadSchedule, index is not available until first unlock, fDataProtectionEnabled, %{public}d", buf, 8u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101B24A5C(a1);
    }

    goto LABEL_39;
  }

  v8 = (a1 + 408);
  if (!*(a1 + 408) && (*(a1 + 412) & 1) == 0)
  {
    if (qword_1025D4620 != -1)
    {
      sub_101B2365C();
    }

    v30 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
    {
      v31 = *v8;
      v32 = *(a1 + 412);
      *buf = 67240448;
      *&buf[4] = v31;
      *&buf[8] = 1026;
      *&buf[10] = v32;
      _os_log_impl(dword_100000000, v30, OS_LOG_TYPE_DEBUG, "WIFITILE: checkDownloadSchedule, no data connectivity, avoiding downloads, reachability, %{public}d, companion, %{public}d", buf, 0xEu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101B24B50();
    }

    goto LABEL_39;
  }

  if (!((v7 != 1) | v6 & 1) && (*(a1 + 412) & 1) == 0)
  {
    if (qword_1025D4620 != -1)
    {
      sub_101B2365C();
    }

    v29 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v29, OS_LOG_TYPE_DEBUG, "WIFITILE: checkDownloadSchedule, no download on none broadband cellular connections", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101B24C60();
    }

LABEL_39:
    if (qword_1025D4630 != -1)
    {
      sub_101B23A28();
    }

    v19 = qword_1025D4638;
    if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_DEFAULT))
    {
      v20 = (*(**(a1 + 448) + 16))(*(a1 + 448));
      v21 = (*(**(a1 + 448) + 48))(*(a1 + 448));
      v22 = *(a1 + 217);
      v23 = *(a1 + 216);
      v24 = *(a1 + 420);
      v25 = *(a1 + 408);
      v26 = *(a1 + 412);
      *buf = 67241984;
      *&buf[4] = v20;
      *&buf[8] = 1026;
      *&buf[10] = v21;
      *&buf[14] = 1026;
      *&buf[16] = v22;
      *&buf[20] = 1026;
      *&buf[22] = v23;
      *&buf[26] = 1026;
      *&buf[28] = v24;
      *&buf[32] = 1026;
      *&buf[34] = v25;
      v103 = 1026;
      v104 = v26;
      v105 = 1026;
      v106 = v6;
      _os_log_impl(dword_100000000, v19, OS_LOG_TYPE_DEFAULT, "WIFITILE: checkDownloadSchedule, skip, wifion, %{public}d, ls, %{public}d, indexed, %{public}d, protection, %{public}d, lockdisable, %{public}d, reach, %{public}d, companion, %{public}d, broadband, %{public}d", buf, 0x32u);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4630 != -1)
      {
        sub_101B23A28();
      }

      v73 = (*(**(a1 + 448) + 16))(*(a1 + 448));
      v74 = (*(**(a1 + 448) + 48))(*(a1 + 448));
      v75 = *(a1 + 217);
      v76 = *(a1 + 216);
      v77 = *(a1 + 420);
      v78 = *(a1 + 408);
      v79 = *(a1 + 412);
      *v97 = 67241984;
      *&v97[4] = v73;
      *&v97[8] = 1026;
      *&v97[10] = v74;
      *&v97[14] = 1026;
      *&v97[16] = v75;
      *&v97[20] = 1026;
      *&v97[22] = v76;
      *&v97[26] = 1026;
      *&v97[28] = v77;
      *&v97[32] = 1026;
      *&v97[34] = v78;
      v98 = 1026;
      v99 = v79;
      v100 = 1026;
      v101 = v6;
      v80 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "void CLWifiTilesManager::checkDownloadSchedule(DownloadPriority, CFAbsoluteTime)", "%s\n", v80);
      if (v80 != buf)
      {
        free(v80);
      }
    }

    return;
  }

  v88 = sub_100234AA0(a1);
  if (v88 >= 2)
  {
    if (qword_1025D4620 != -1)
    {
      sub_101B2365C();
    }

    v9 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
    {
      *buf = 67240192;
      *&buf[4] = v88;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "WIFITILE: checkDownloadSchedule, numOfActiveDownloads, %{public}d, not scheduling more", buf, 8u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101B25290();
    }

LABEL_15:
    if (qword_1025D4630 != -1)
    {
      sub_101B23A28();
    }

    v10 = qword_1025D4638;
    if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(a1 + 192);
      v12 = *(a1 + 160);
      v13 = *(a1 + 176) == 0;
      v14 = *(a1 + 208) == 0;
      *buf = 67241216;
      *&buf[4] = v88;
      *&buf[8] = 1026;
      *&buf[10] = v11;
      *&buf[14] = 1026;
      *&buf[16] = v12;
      *&buf[20] = 1026;
      *&buf[22] = v13;
      *&buf[26] = 1026;
      *&buf[28] = v14;
      _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEFAULT, "WIFITILE: checkDownloadSchedule, skip, active, %{public}d, inprogress, %{public}d, %{public}d, shutdown, %{public}d, %{public}d", buf, 0x20u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101B25388();
    }

    return;
  }

  if (*(a1 + 192) == 1 && *(a1 + 160) == 1)
  {
    if (qword_1025D4620 != -1)
    {
      sub_101B2365C();
    }

    v27 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v27, OS_LOG_TYPE_DEBUG, "WIFITILE: checkDownloadSchedule, both download requests are already in use", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101B251AC();
    }

    goto LABEL_15;
  }

  if (!*(a1 + 176) && !*(a1 + 208))
  {
    if (qword_1025D4620 != -1)
    {
      sub_101B2365C();
    }

    v72 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v72, OS_LOG_TYPE_INFO, "WIFITILE: checkDownloadSchedule, both download requests null, shutdown?", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101B250C8();
    }

    goto LABEL_15;
  }

  if (*v8 <= 1)
  {
    v28 = *(a1 + 412);
  }

  else
  {
    v28 = 1;
  }

  v87 = v28;
  if (qword_1025D4620 != -1)
  {
    sub_101B2365C();
  }

  v86 = (a1 + 408);
  v33 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
  {
    sub_100072AFC(a1 + 232, buf);
    v34 = buf[23] >= 0 ? buf : *buf;
    *v97 = 67240451;
    *&v97[4] = a2;
    *&v97[8] = 2085;
    *&v97[10] = v34;
    _os_log_impl(dword_100000000, v33, OS_LOG_TYPE_DEBUG, "WIFITILE: checkDownloadSchedule, priority, %{public}d, lastLocation, %{sensitive}s", v97, 0x12u);
    if ((buf[23] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4620 != -1)
    {
      sub_101B2374C();
    }

    sub_100072AFC(a1 + 232, v97);
    if (v97[23] >= 0)
    {
      v81 = v97;
    }

    else
    {
      v81 = *v97;
    }

    v93 = 67240451;
    v94 = a2;
    v95 = 2085;
    v96 = v81;
    v82 = _os_log_send_and_compose_impl();
    if ((v97[23] & 0x80000000) != 0)
    {
      operator delete(*v97);
    }

    sub_100152C7C("Generic", 1, 0, 2, "void CLWifiTilesManager::checkDownloadSchedule(DownloadPriority, CFAbsoluteTime)", "%s\n", v82);
    if (v82 != buf)
    {
      free(v82);
    }
  }

  v35 = *(a1 + 128);
  if (v35 != (a1 + 136))
  {
    while (1)
    {
      if (*(a1 + 160) == 1 && (*(a1 + 192) & 1) != 0)
      {
        goto LABEL_152;
      }

      v36 = v35[10];
      v37 = (*(*a1 + 224))(a1);
      v90 = (*(*a1 + 240))(a1, v36);
      if (*(v36 + 48))
      {
        sub_101B24D44();
      }

      if (sub_1002332E4(v36))
      {
        break;
      }

      if (!sub_100232000(v36, v87 & 1, *(v37 + 128), a3))
      {
        v38 = 65;
        goto LABEL_130;
      }

      v89 = 0;
      v39 = sub_100232CFC(a1, v36);
      v40 = a1 + 184;
      if (v39 != 2)
      {
        if (v39 != 1)
        {
          v38 = 67;
          goto LABEL_130;
        }

        v89 = 1;
        v40 = a1 + 152;
      }

      if (!a2 && v89 != 1)
      {
        v38 = 76;
        goto LABEL_130;
      }

      if (qword_1025D4620 != -1)
      {
        sub_101B2374C();
      }

      v41 = qword_1025D4628;
      if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
      {
        v42 = *v40;
        *buf = 136446210;
        *&buf[4] = v42;
        _os_log_impl(dword_100000000, v41, OS_LOG_TYPE_DEBUG, "WIFITILE: checkDownloadSchedule, chose, downloadState, %{public}s", buf, 0xCu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101B24EC8(&v91, v40, &v92);
      }

      v43 = *(v40 + 24);
      *(v43 + 80) = v89;
      *(v43 + 81) = 1;
      if (*(v37 + 79) >= 0)
      {
        v44 = v37 + 56;
      }

      else
      {
        v44 = *(v37 + 56);
      }

      v45 = [NSString stringWithUTF8String:v44];
      if ((*(v37 + 80) & 1) == 0)
      {
        v46 = +[GEOCountryConfiguration sharedConfiguration];
        if (*(v37 + 111) >= 0)
        {
          v47 = v37 + 88;
        }

        else
        {
          v47 = *(v37 + 88);
        }

        v45 = [v46 defaultForKey:+[NSString stringWithUTF8String:](NSString defaultValue:{"stringWithUTF8String:", v47), v45}];
      }

      sub_10000EC00(buf, [(NSString *)v45 UTF8String]);
      v48 = sub_100ED9670(v36, buf, *(v40 + 24));
      if ((buf[23] & 0x80000000) != 0)
      {
        operator delete(*buf);
      }

      if (v48)
      {
        *(v40 + 8) = 1;
        *(v40 + 16) = a3;
        if (qword_1025D4620 != -1)
        {
          sub_101B2374C();
        }

        ++v88;
        v49 = qword_1025D4628;
        if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
        {
          (*(*v36 + 16))(buf, v36);
          v50 = buf;
          if (buf[23] < 0)
          {
            v50 = *buf;
          }

          *v97 = 67240451;
          *&v97[4] = v88;
          *&v97[8] = 2081;
          *&v97[10] = v50;
          _os_log_impl(dword_100000000, v49, OS_LOG_TYPE_DEBUG, "WIFITILE: checkDownloadSchedule, started downloading, numOfActiveDownloads, %{public}d, tile, %{private}s", v97, 0x12u);
          if ((buf[23] & 0x80000000) != 0)
          {
            operator delete(*buf);
          }
        }

        if (sub_10000A100(121, 2))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1025D4620 != -1)
          {
            sub_101B2374C();
          }

          (*(*v36 + 16))(v97, v36);
          v60 = v97;
          if (v97[23] < 0)
          {
            v60 = *v97;
          }

          v93 = 67240451;
          v94 = v88;
          v95 = 2081;
          v96 = v60;
          v61 = _os_log_send_and_compose_impl();
          if ((v97[23] & 0x80000000) != 0)
          {
            operator delete(*v97);
          }

          sub_100152C7C("Generic", 1, 0, 2, "void CLWifiTilesManager::checkDownloadSchedule(DownloadPriority, CFAbsoluteTime)", "%s\n", v61);
          if (v61 != buf)
          {
            free(v61);
          }
        }

        (*(*(v37 + 232) + 16))(v37 + 232);
        ++*(v37 + 280);
        (*(*(v37 + 232) + 24))(v37 + 232);
        sub_10000EC00(buf, "startDownloading");
        sub_100C43164(v37 + 232, buf, *v86);
        if ((buf[23] & 0x80000000) != 0)
        {
          operator delete(*buf);
        }

        if (sub_100071CA0())
        {
          sub_10004FD18(buf);
          v51 = (v36 + 8);
          if (*(v36 + 31) < 0)
          {
            v51 = *v51;
          }

          sub_1002DC414(buf, "getTile", v51);
          sub_100043360(buf, "protection", (a1 + 216));
          sub_100043360(buf, "isCurrentTile", &v90);
          sub_100043360(buf, "isAllowCellular", &v89);
          sub_100071CAC(buf, "locationd");
          sub_100005DA4(buf);
        }

        if (qword_1025D4620 != -1)
        {
          sub_101B2374C();
        }

        v52 = qword_1025D4628;
        if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
        {
          v53 = sub_100085338(v36 + 48);
          v54 = sub_100085314(v36 + 48);
          v55 = *v86;
          v56 = [(NSString *)v45 UTF8String];
          *buf = 134546435;
          *&buf[4] = v53;
          *&buf[12] = 2053;
          *&buf[14] = v54;
          *&buf[22] = 1026;
          *&buf[24] = v55;
          *&buf[28] = 2081;
          *&buf[30] = v56;
          _os_log_impl(dword_100000000, v52, OS_LOG_TYPE_DEFAULT, "@TileReq, wifi, start, llsw, %{sensitive}.2lf, %{sensitive}.2lf, reach, %{public}d, url, %{private}s", buf, 0x26u);
        }

        if (sub_10000A100(121, 2))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1025D4620 != -1)
          {
            sub_101B2374C();
          }

          v62 = sub_100085338(v36 + 48);
          v63 = sub_100085314(v36 + 48);
          v64 = *v86;
          v65 = [(NSString *)v45 UTF8String];
          *v97 = 134546435;
          *&v97[4] = v62;
          *&v97[12] = 2053;
          *&v97[14] = v63;
          *&v97[22] = 1026;
          *&v97[24] = v64;
          *&v97[28] = 2081;
          *&v97[30] = v65;
          v66 = _os_log_send_and_compose_impl();
          sub_100152C7C("Generic", 1, 0, 2, "void CLWifiTilesManager::checkDownloadSchedule(DownloadPriority, CFAbsoluteTime)", "%s\n", v66);
          if (v66 != buf)
          {
            free(v66);
          }
        }

        sub_100235310(v36, 68);
        if (v88 > 1)
        {
          goto LABEL_152;
        }
      }

LABEL_131:
      v57 = v35[1];
      if (v57)
      {
        do
        {
          v58 = v57;
          v57 = *v57;
        }

        while (v57);
      }

      else
      {
        do
        {
          v58 = v35[2];
          v59 = *v58 == v35;
          v35 = v58;
        }

        while (!v59);
      }

      v35 = v58;
      if (v58 == (a1 + 136))
      {
        goto LABEL_152;
      }
    }

    v38 = 80;
LABEL_130:
    sub_100235310(v36, v38);
    goto LABEL_131;
  }

LABEL_152:
  v67 = *(a1 + 144);
  if (qword_1025D4620 != -1)
  {
    sub_101B2374C();
  }

  v68 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
  {
    v69 = *(a1 + 160);
    v70 = *(a1 + 192);
    *buf = 67240960;
    *&buf[4] = v88;
    *&buf[8] = 2050;
    *&buf[10] = v67;
    *&buf[18] = 1026;
    *&buf[20] = v69;
    *&buf[24] = 1026;
    *&buf[26] = v70;
    _os_log_impl(dword_100000000, v68, OS_LOG_TYPE_DEBUG, "WIFITILE: checkDownloadSchedule, numOfActiveDownloads, %{public}d, tilesToDownload, %{public}lu, small, %{public}d, large, %{public}d", buf, 0x1Eu);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4620 != -1)
    {
      sub_101B2374C();
    }

    v83 = *(a1 + 160);
    v84 = *(a1 + 192);
    *v97 = 67240960;
    *&v97[4] = v88;
    *&v97[8] = 2050;
    *&v97[10] = v67;
    *&v97[18] = 1026;
    *&v97[20] = v83;
    *&v97[24] = 1026;
    *&v97[26] = v84;
    v85 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "void CLWifiTilesManager::checkDownloadSchedule(DownloadPriority, CFAbsoluteTime)", "%s\n", v85);
    if (v85 != buf)
    {
      free(v85);
    }
  }

  if ((*(a1 + 160) & 1) == 0 && (*(a1 + 192) & 1) == 0)
  {
    if (qword_1025D4620 != -1)
    {
      sub_101B2374C();
    }

    v71 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v71, OS_LOG_TYPE_DEBUG, "WIFITILE: checkDownloadSchedule, NoActiveDownloads", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101B24FE4();
    }
  }
}

void sub_1002347B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *__p, uint64_t a40, int a41, __int16 a42, char a43, char a44)
{
  if (a44 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

id sub_1002347F8(uint64_t a1)
{
  v1 = [objc_msgSend(*(a1 + 16) "vendor")];

  return [v1 syncgetIsBroadConnection];
}

BOOL sub_100234858(_DWORD *a1)
{
  v2 = a1[152];
  v3 = v2 == 2 || v2 == 1 && (a1[153] > 2 || a1[154] >= 3);
  if (qword_1025D4620 != -1)
  {
    sub_10190BC08();
  }

  v4 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_INFO))
  {
    v5 = a1[152];
    v6 = a1[153];
    v7 = a1[154];
    *buf = 67240960;
    v11 = v3;
    v12 = 1026;
    v13 = v5;
    v14 = 2050;
    v15 = v6;
    v16 = 2050;
    v17 = v7;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_INFO, "Nlp, isBroadConnection, %{public}d, reachability, %{public}d, dataAccessTech, %{public}ld, %{public}ld", buf, 0x22u);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4620 != -1)
    {
      sub_10190B63C();
    }

    v9 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "BOOL CLNetworkLocationProvider::isBroadConnection()", "%s\n", v9);
    if (v9 != buf)
    {
      free(v9);
    }
  }

  return v3;
}

uint64_t sub_100234AA0(uint64_t a1)
{
  v1 = *(a1 + 128);
  v2 = (a1 + 136);
  if (v1 == (a1 + 136))
  {
    return 0;
  }

  LODWORD(v3) = 0;
  do
  {
    v4 = sub_100234DA4(v1[10]);
    v5 = sub_1002332E4(v1[10]);
    v3 = (v3 + v5);
    if (v5)
    {
      if (qword_1025D48A0 != -1)
      {
        sub_101B239BC();
      }

      v6 = qword_1025D48A8;
      if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
      {
        (*(*v1[10] + 16))(__p);
        v7 = __p;
        if (v20 < 0)
        {
          v7 = *__p;
        }

        *buf = 136315906;
        v24 = v7;
        v25 = 1024;
        v26 = 1;
        v27 = 1024;
        v28 = v3;
        v29 = 2048;
        v30 = v4;
        _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "WIFITILE: getNumOfActiveDownloads, tile, %s, is being downloaded, %d, total, %d, download, %p", buf, 0x22u);
        if (SHIBYTE(v20) < 0)
        {
          operator delete(*__p);
        }
      }

      if (sub_10000A100(121, 2))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1025D48A0 != -1)
        {
          sub_101B239BC();
        }

        (*(*v1[10] + 16))(v14);
        v11 = v14;
        if (v15 < 0)
        {
          v11 = v14[0];
        }

        *__p = 136315906;
        *&__p[4] = v11;
        v17 = 1024;
        v18 = 1;
        v19 = 1024;
        v20 = v3;
        v21 = 2048;
        v22 = v4;
        v12 = _os_log_send_and_compose_impl();
        if (v15 < 0)
        {
          operator delete(v14[0]);
        }

        sub_100152C7C("Generic", 1, 0, 2, "unsigned int CLWifiTilesManager::getNumOfActiveDownloads()", "%s\n", v12);
        if (v12 != buf)
        {
          free(v12);
        }
      }
    }

    v8 = v1[1];
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
        v9 = v1[2];
        v10 = *v9 == v1;
        v1 = v9;
      }

      while (!v10);
    }

    v1 = v9;
  }

  while (v9 != v2);
  return v3;
}

uint64_t sub_100234DA4(uint64_t a1)
{
  v2 = *(a1 + 40);
  (*(*v2 + 16))(v2);
  v3 = *(a1 + 104);
  (*(*v2 + 24))(v2);
  return v3;
}

uint64_t sub_100234E24(uint64_t a1, _DWORD *a2)
{
  v2 = (a2 + 12);
  if (a2[12])
  {
    sub_101B25FA0();
  }

  v5 = (*(**(a1 + 448) + 56))(*(a1 + 448));
  v6 = *(a1 + 308);
  v7 = *(a1 + 252);
  v8 = (*(*a1 + 224))(a1);
  v9 = (*(*a2 + 56))(a2) / 20.0;
  v10 = fmin(fmax(v9, (*(*a2 + 64))(a2) / 20.0), 0.01);
  v11 = *(a1 + 236);
  v12 = v11 - sub_100085338(v2);
  v13 = *(a1 + 244);
  v14 = v13 - sub_100085314(v2);
  v26 = v12 >= -v10 && v12 <= v10 + (*(*a2 + 56))(a2);
  v15 = v5 - v6;
  v16 = v14 >= -v10 && v14 <= v10 + (*(*a2 + 64))(a2);
  v17 = v15 < *(v8 + 136) && v7 > 0.0;
  if (v17 && *(a1 + 252) <= 3000.0)
  {
    v18 = v26 & v16;
  }

  else
  {
    v18 = 0;
  }

  if (qword_1025D48A0 != -1)
  {
    sub_101B23F7C();
  }

  v19 = qword_1025D48A8;
  if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
  {
    v20 = *(v8 + 177);
    (*(*a2 + 16))(__p, a2);
    v21 = v32 >= 0 ? __p : *__p;
    *buf = 134547459;
    v45 = v12;
    v46 = 2053;
    v47 = v14;
    v48 = 1024;
    v49 = v26;
    v50 = 1024;
    v51 = v16;
    v52 = 1024;
    v53 = v18;
    v54 = 1024;
    v55 = v20;
    v56 = 1024;
    v57 = v17;
    v58 = 2080;
    v59 = v21;
    _os_log_impl(dword_100000000, v19, OS_LOG_TYPE_DEBUG, "WIFITILE: isCurrentTile, degreesFromCornerLat, %{sensitive}.8lf, degreesFromCornerLon, %{sensitive}.8lf, inside, %d, %d, isCurrentTile, %d, %d, isCurrentLocationKnown, %d, %s", buf, 0x3Eu);
    if (SHIBYTE(v32) < 0)
    {
      operator delete(*__p);
    }
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D48A0 != -1)
    {
      sub_101B239BC();
    }

    v23 = *(v8 + 177);
    (*(*a2 + 16))(v27, a2);
    if (v28 >= 0)
    {
      v24 = v27;
    }

    else
    {
      v24 = v27[0];
    }

    *__p = 134547459;
    *&__p[4] = v12;
    v30 = 2053;
    v31 = v14;
    v32 = 1024;
    v33 = v26;
    v34 = 1024;
    v35 = v16;
    v36 = 1024;
    v37 = v18;
    v38 = 1024;
    v39 = v23;
    v40 = 1024;
    v41 = v17;
    v42 = 2080;
    v43 = v24;
    v25 = _os_log_send_and_compose_impl();
    if (v28 < 0)
    {
      operator delete(v27[0]);
    }

    sub_100152C7C("Generic", 1, 0, 2, "virtual BOOL CLWifiTilesManager::isCurrentTile(CLTileFile *)", "%s\n", v25);
    if (v25 != buf)
    {
      free(v25);
    }
  }

  return v18;
}

void sub_100235310(uint64_t a1, int a2)
{
  v18 = a2;
  v2 = (a1 + 240);
  if (a2 != 68 && *(a1 + 240) != a2)
  {
    if (qword_1025D4620 != -1)
    {
      sub_101ABEA90();
    }

    v4 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_INFO))
    {
      v5 = sub_100085790(*(a1 + 48));
      v6 = sub_100085338(a1 + 48);
      v7 = sub_100085314(a1 + 48);
      *buf = &v18;
      v8 = sub_100EE0BB4(qword_102638100, &v18)[5];
      *buf = v2;
      v9 = sub_100EE0BB4(qword_102638100, v2)[5];
      *buf = 136447235;
      *&buf[4] = v5;
      v29 = 2053;
      v30 = v6;
      v31 = 2053;
      v32 = v7;
      v33 = 2082;
      v34 = v8;
      v35 = 2082;
      v36 = v9;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_INFO, "@TileReq, %{public}s, skip, llsw, %{sensitive}.2lf, %{sensitive}.2lf, reason, %{public}s, last, %{public}s", buf, 0x34u);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4620 != -1)
      {
        sub_101ABE668();
      }

      v11 = *(a1 + 48);
      v10 = a1 + 48;
      v12 = sub_100085790(v11);
      v13 = sub_100085338(v10);
      v14 = sub_100085314(v10);
      *v19 = &v18;
      v15 = sub_100EE0BB4(qword_102638100, &v18)[5];
      *v19 = v2;
      v16 = sub_100EE0BB4(qword_102638100, v2)[5];
      *v19 = 136447235;
      *&v19[4] = v12;
      v20 = 2053;
      v21 = v13;
      v22 = 2053;
      v23 = v14;
      v24 = 2082;
      v25 = v15;
      v26 = 2082;
      v27 = v16;
      v17 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "void CLTileFile::setSkipDownloadReason(char)", "%s\n", v17);
      if (v17 != buf)
      {
        free(v17);
      }
    }
  }

  *v2 = v18;
}

id *sub_100235624(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 20) <= 0.0)
  {
    sub_101B275C4();
  }

  sub_10000FF38(v14, "CLWifiTilesManager::updateTileLocationRelevancy", 0);
  v4 = (*(*a1 + 224))(a1);
  if (*v4)
  {
    (*(**(a1 + 448) + 56))(*(a1 + 448));
    if (*(a2 + 20) >= 0.0 && vabdd_f64(v5, *(a2 + 76)) <= 3600.0)
    {
      sub_1002359B8(*(a1 + 480), a2, *&qword_1026321A0, buf, v5);
      if (*&buf[0])
      {
        *(&buf[0] + 1) = *&buf[0];
        operator delete(*&buf[0]);
      }
    }

    else
    {
      if (qword_1025D48A0 != -1)
      {
        sub_101B239BC();
      }

      v6 = qword_1025D48A8;
      if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(buf[0]) = 0;
        _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "WIFITILE: location not relevant", buf, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101B239E4(buf);
        LOWORD(v15) = 0;
        v7 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "void CLWifiTilesManager::updateTileLocationRelevancy(const CLDaemonLocation &)", "%s\n", v7);
LABEL_25:
        if (v7 != buf)
        {
          free(v7);
        }
      }
    }
  }

  else
  {
    if (qword_1025D48A0 != -1)
    {
      sub_101B239BC();
    }

    v8 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
    {
      v9 = v4 + 8;
      if (*(v4 + 31) < 0)
      {
        v9 = *(v4 + 8);
      }

      LODWORD(buf[0]) = 136315138;
      *(buf + 4) = v9;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEBUG, "WIFITILE: tiles, %s, not active", buf, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101B239E4(buf);
      v13 = *(v4 + 8);
      v12 = v4 + 8;
      v11 = v13;
      if (*(v12 + 23) >= 0)
      {
        v11 = v12;
      }

      v15 = 136315138;
      v16 = v11;
      v7 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "void CLWifiTilesManager::updateTileLocationRelevancy(const CLDaemonLocation &)", "%s\n", v7);
      goto LABEL_25;
    }
  }

  return sub_10001A420(v14);
}