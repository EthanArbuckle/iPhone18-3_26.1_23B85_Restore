void sub_10008DB94(void *a1, int a2, void *a3)
{
  v25 = a2;
  v23 = 0;
  v22 = 0;
  v24 = 0;
  v15[0] = 0;
  v21 = 0;
  *v26 = &v25;
  if (!sub_100065670(a3, &v25)[3])
  {
    if (qword_1025D4660 != -1)
    {
      sub_101AB5F70();
    }

    v11 = qword_1025D4668;
    if (os_log_type_enabled(qword_1025D4668, OS_LOG_TYPE_DEBUG))
    {
      *buf = 67109120;
      *&buf[4] = v25;
      _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEBUG, "#EmergCon,#ci,kCellInfoNotification,received nil CellInfo from CT for sim %d", buf, 8u);
    }

    if (!sub_10000A100(121, 2))
    {
      goto LABEL_32;
    }

    sub_101AB65F4(buf);
    *v26 = 67109120;
    *&v26[4] = v25;
    v12 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "void CLEmergencyController::processCellInfoNotification(SimInstance, std::unordered_map<SimInstance, CLCTCellInfo> &)", "%s\n", v12);
LABEL_48:
    if (v12 != buf)
    {
      free(v12);
    }

    goto LABEL_32;
  }

  sub_1000658D0(v25, a3, &v22);
  sub_100065934(&v22, buf);
  sub_1000659B0(v15, buf);
  if (v36 == 1)
  {
    if (v35 < 0)
    {
      operator delete(__p);
    }

    if (v32)
    {
      v33 = v32;
      operator delete(v32);
    }
  }

  if ((v21 & 1) == 0)
  {
    if (qword_1025D4660 != -1)
    {
      sub_101AB5F70();
    }

    v13 = qword_1025D4668;
    if (os_log_type_enabled(qword_1025D4668, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_DEBUG, "#EmergCon,#ci,kCellInfoNotification,serving cell missing", buf, 2u);
    }

    if (!sub_10000A100(121, 2))
    {
      goto LABEL_32;
    }

    sub_101AB65F4(buf);
    *v26 = 0;
    v12 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "void CLEmergencyController::processCellInfoNotification(SimInstance, std::unordered_map<SimInstance, CLCTCellInfo> &)", "%s\n", v12);
    goto LABEL_48;
  }

  if (qword_1025D4660 != -1)
  {
    sub_101AB5F70();
  }

  v5 = qword_1025D4668;
  if (os_log_type_enabled(qword_1025D4668, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134218240;
    *&buf[4] = 0x66FD0EB66FD0EB67 * ((v23 - v22) >> 3);
    v30 = 1024;
    v31 = v25;
    _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEBUG, "#EmergCon,#ci,kCellInfoNotification,cellcount,%lu,sim %d", buf, 0x12u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101AB65F4(buf);
    *v26 = 134218240;
    *&v26[4] = 0x66FD0EB66FD0EB67 * ((v23 - v22) >> 3);
    v27 = 1024;
    v28 = v25;
    v14 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "void CLEmergencyController::processCellInfoNotification(SimInstance, std::unordered_map<SimInstance, CLCTCellInfo> &)", "%s\n", v14);
    if (v14 != buf)
    {
      free(v14);
    }
  }

  sub_100089870(a1[86], v25, v15);
  v6 = v16;
  *v26 = &v25;
  *(sub_10006BEC4(a1 + 34, &v25) + 5) = v6;
  v8 = a1[84];
  if (v8 && *v8)
  {
    sub_10008F3E8(*v8, v15);
  }

  if (v16 < 3)
  {
    goto LABEL_19;
  }

  if (v16 == 9)
  {
    v9 = *sub_1006CCAA0(v15, v7);
    *v26 = &v25;
    v10 = sub_10006BEC4(a1 + 54, &v25);
    goto LABEL_20;
  }

  if (v16 == 7)
  {
LABEL_19:
    v9 = *sub_1006CBCE4(v15);
    *v26 = &v25;
    v10 = sub_10006BEC4(a1 + 54, &v25);
LABEL_20:
    *(v10 + 5) = v9;
    goto LABEL_32;
  }

  if (v16 - 3 > 2)
  {
    if (v16 == 10)
    {
      v9 = *sub_100681E80(v15, v7);
      *v26 = &v25;
      v10 = sub_10006BEC4(a1 + 54, &v25);
      goto LABEL_20;
    }

    if (v16 == 6)
    {
      v9 = *sub_10007513C(v15, v7);
      *v26 = &v25;
      v10 = sub_10006BEC4(a1 + 54, &v25);
      goto LABEL_20;
    }
  }

  else
  {
    *v26 = &v25;
    *(sub_10006BEC4(a1 + 54, &v25) + 5) = -1;
  }

LABEL_32:
  if (v21 == 1)
  {
    if (v20 < 0)
    {
      operator delete(v19);
    }

    if (v17)
    {
      v18 = v17;
      operator delete(v17);
    }
  }

  *buf = &v22;
  sub_100072124(buf);
}

void sub_10008E1D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1000827E4(va);
  STACK[0x310] = &STACK[0x2D0];
  sub_100072124(&STACK[0x310]);
  _Unwind_Resume(a1);
}

uint64_t *sub_10008E220(void *a1, int *a2)
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

  if (*(v7 + 4) != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

void sub_10008E4C4(uint64_t a1)
{
  v1 = 0;
  v2 = a1 + 1832;
  v3 = 1;
  v4 = "AML";
  do
  {
    v5 = v3;
    v6 = *(v2 + 8 * v1);
    if (v6)
    {
      (*(*v6 + 136))(v6);
    }

    else
    {
      if (qword_1025D4660 != -1)
      {
        sub_101B924F8();
      }

      v7 = qword_1025D4668;
      if (os_log_type_enabled(qword_1025D4668, OS_LOG_TYPE_ERROR))
      {
        sub_10000EC00(__p, v4);
        v8 = v16 >= 0 ? __p : __p[0];
        *buf = 136446210;
        *&buf[4] = v8;
        _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_ERROR, "#Actor,handleRatChange,pointer was null for %{public}s", buf, 0xCu);
        if (v16 < 0)
        {
          operator delete(__p[0]);
        }
      }

      if (sub_10000A100(121, 0))
      {
        bzero(__p, 0x65CuLL);
        if (qword_1025D4660 != -1)
        {
          sub_101B924F8();
        }

        sub_10000EC00(buf, v4);
        v9 = buf;
        if (v12 < 0)
        {
          v9 = *buf;
        }

        v13 = 136446210;
        v14 = v9;
        v10 = _os_log_send_and_compose_impl();
        if (v12 < 0)
        {
          operator delete(*buf);
        }

        sub_100152C7C("Generic", 1, 0, 0, "void CLEmergencyActor::handleRatChange()", "%s\n", v10);
        if (v10 != __p)
        {
          free(v10);
        }
      }
    }

    v3 = 0;
    v4 = "EED2";
    v1 = 1;
  }

  while ((v5 & 1) != 0);
}

void *sub_10008E72C(void *result)
{
  v1 = result[358];
  if (v1)
  {
    v2 = result;
    v3 = *(result + 364);
    v4 = *sub_100A0AE34((result + 4), v3);
    v5 = sub_100C3DA80((v2 + 14));
    v6 = *(sub_100A0AE34((v2 + 4), *(v2 + 364)) + 160);

    return [v1 handleUpdatesToSim:v3 Rat:v4 WifiEmergency:v5 bandInfo:v6];
  }

  return result;
}

uint64_t sub_10008E7C8(uint64_t a1, uint64_t a2)
{
  result = *sub_1000897E8(a1, &v3, a2);
  if (!result)
  {
    sub_100FAA598();
  }

  return result;
}

void sub_10008E868(uint64_t a1, __CFString *a2, uint64_t a3)
{
  v6 = *(a1 + 40);
  [*(v6 + 104) silo];
  if (a3)
  {
    if (qword_1025D4650 != -1)
    {
      sub_10196EBB8();
    }

    v7 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEFAULT, "#Warning,#ctcl,#cterror,queryServingMccAndMnc,query for serving MCC failed", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101974A04();
    }

LABEL_25:

    return;
  }

  if (!a2 || ![(__CFString *)a2 length])
  {
    if (qword_1025D4650 != -1)
    {
      sub_10196EBB8();
    }

    v10 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEFAULT, "#Warning,#ctcl,#cterror,queryServingMccAndMnc,query for serving MCC returned nil", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101974BBC();
    }

    goto LABEL_25;
  }

  if ([(__CFString *)a2 length]>= 4)
  {
    if (qword_1025D4650 != -1)
    {
      sub_10196EBB8();
    }

    v8 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEFAULT, "#Warning,#ctcl,queryServingMccAndMnc,MCC is too many digits,replacing with -1", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101974AE0();
    }

    a2 = @"-1";
  }

  v9 = a2;
  [*(v6 + 16) copyMobileNetworkCode:? completion:?];
}

uint64_t sub_10008EA94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    if (qword_1025D4650 != -1)
    {
      sub_10196EBB8();
    }

    v5 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_ERROR))
    {
      v6 = *(a1 + 32);
      v9 = 138412546;
      v10 = v6;
      v11 = 2112;
      v12 = a3;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_ERROR, "#ctcl,#cterror,getSignalStrengthMeasurements:context:%@,err:%@", &v9, 0x16u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_101976CC0();
    }

    return (*(*(a1 + 40) + 16))();
  }

  else
  {
    v8 = *(*(a1 + 40) + 16);

    return v8();
  }
}

void sub_10008EBE8(uint64_t a1, void *a2)
{
  if (!a2)
  {
    return;
  }

  v3 = *(a1 + 32);
  v24[0] = 0;
  v30 = 0;
  v31[0] = 0;
  *buf = v31;
  if (*(sub_100084258((v3 + 2720), v31) + 720) == 1)
  {
    v31[0] = 0;
    *buf = v31;
    v4 = sub_100084258((v3 + 2720), v31);
    v5 = sub_1000836F0(v24, (v4 + 3)).n128_u64[0];
  }

  else
  {
    v31[0] = 1;
    *buf = v31;
    if (*(sub_100084258((v3 + 2720), v31) + 720) != 1)
    {
      if (qword_1025D4650 != -1)
      {
        sub_1016C8BF0();
      }

      v14 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_INFO, "#warning,#gnssawd,fetchSignalStrengthMeasurementsWithReply Couldn't get current serving cell", buf, 2u);
      }

      if (!sub_10000A100(121, 2))
      {
        goto LABEL_42;
      }

      sub_1016C8DD8(buf);
      LOWORD(v31[0]) = 0;
      v13 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "void CLGnssAWD::fetchSignalStrengthMeasurementsWithReply()_block_invoke", "%s\n", v13);
      goto LABEL_30;
    }

    v31[0] = 1;
    *buf = v31;
    v6 = sub_100084258((v3 + 2720), v31);
    v5 = sub_1000836F0(v24, (v6 + 3)).n128_u64[0];
  }

  if (v30 != 1)
  {
    if (qword_1025D4650 != -1)
    {
      sub_1016C8BF0();
    }

    v12 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_INFO, "#warning,#gnssawd,Cellular-AWD,fetchSignalStrengthMeasurementsWithReply Unhandled serving cell", buf, 2u);
    }

    if (!sub_10000A100(121, 2))
    {
      goto LABEL_42;
    }

LABEL_23:
    sub_1016C8DD8(buf);
    LOWORD(v31[0]) = 0;
    v13 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "void CLGnssAWD::fetchSignalStrengthMeasurementsWithReply()_block_invoke", "%s\n", v13);
LABEL_30:
    if (v13 != buf)
    {
      free(v13);
    }

    goto LABEL_42;
  }

  if (v25 > 0xA)
  {
    goto LABEL_48;
  }

  if (((1 << v25) & 0x87) != 0)
  {
    *(v3 + 2640) = [objc_msgSend(a2 rscp];
    *(v3 + 2636) = [objc_msgSend(a2 "ecn0")];
    sub_10001CAF4(buf);
    LOBYTE(v31[0]) = 0;
    v7 = sub_10001CB4C(*buf, "EnableGnssAwdVerboseLogging", v31);
    v8 = (v7 & v31[0]);
    if (v35)
    {
      sub_100008080(v35);
    }

    if (!v8)
    {
      goto LABEL_41;
    }

    if (qword_1025D4650 != -1)
    {
      sub_1016C8BF0();
    }

    v9 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
    {
      v10 = *(v3 + 2640);
      v11 = *(v3 + 2636);
      *buf = 67109376;
      *&buf[4] = v10;
      LOWORD(v35) = 1024;
      *(&v35 + 2) = v11;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "#gnssawd,Cellular-AWD,GSM,RSRP,%d,SNR,%d", buf, 0xEu);
    }

    if (!sub_10000A100(121, 2))
    {
      goto LABEL_41;
    }

    goto LABEL_54;
  }

  if (((1 << v25) & 0x440) == 0)
  {
LABEL_48:
    if (qword_1025D4650 != -1)
    {
      sub_1016C8BF0();
    }

    v20 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v20, OS_LOG_TYPE_INFO, "#warning,#gnssawd,Cellular-AWD,Unhandled serving cell to obtain cellular signal strength", buf, 2u);
    }

    if (!sub_10000A100(121, 2))
    {
      goto LABEL_42;
    }

    goto LABEL_23;
  }

  *(v3 + 2640) = [objc_msgSend(a2 rsrp];
  *(v3 + 2636) = [objc_msgSend(a2 "snr")];
  sub_10001CAF4(buf);
  LOBYTE(v31[0]) = 0;
  v15 = sub_10001CB4C(*buf, "EnableGnssAwdVerboseLogging", v31);
  v16 = (v15 & v31[0]);
  if (v35)
  {
    sub_100008080(v35);
  }

  if (!v16)
  {
    goto LABEL_41;
  }

  if (qword_1025D4650 != -1)
  {
    sub_1016C8BF0();
  }

  v17 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
  {
    v18 = *(v3 + 2640);
    v19 = *(v3 + 2636);
    *buf = 67109376;
    *&buf[4] = v18;
    LOWORD(v35) = 1024;
    *(&v35 + 2) = v19;
    _os_log_impl(dword_100000000, v17, OS_LOG_TYPE_DEBUG, "#gnssawd,Cellular-AWD,5G-LTE,RSRP,%d,SNR,%d", buf, 0xEu);
  }

  if (!sub_10000A100(121, 2))
  {
    goto LABEL_41;
  }

LABEL_54:
  sub_1016C8DD8(buf);
  v21 = *(v3 + 2640);
  v22 = *(v3 + 2636);
  v31[0] = 67109376;
  v31[1] = v21;
  v32 = 1024;
  v33 = v22;
  v23 = _os_log_send_and_compose_impl();
  sub_100152C7C("Generic", 1, 0, 2, "void CLGnssAWD::fetchSignalStrengthMeasurementsWithReply()_block_invoke", "%s\n", v23);
  if (v23 != buf)
  {
    free(v23);
  }

LABEL_41:
  *(v3 + 2468) = *(v3 + 2456);
LABEL_42:
  if (v30 == 1)
  {
    if (v29 < 0)
    {
      operator delete(__p);
    }

    if (v26)
    {
      v27 = v26;
      operator delete(v26);
    }
  }
}

void sub_10008F388(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1000827E4(va);
  _Unwind_Resume(a1);
}

void sub_10008F3E8(uint64_t a1, uint64_t a2)
{
  __p[0] = 0;
  __p[1] = 0;
  v38 = 0;
  if ((*(a2 + 696) & 1) == 0)
  {
    if (qword_1025D4660 != -1)
    {
      sub_101AA324C();
    }

    v5 = qword_1025D4668;
    if (os_log_type_enabled(qword_1025D4668, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEBUG, "#EmergencyBiome, no serving cell", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101AA3260(buf);
      LOWORD(v39) = 0;
      v34 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "void CLCellularBiomePublisherHelper::onRatNotification(const std::optional<CLCell> &)", "%s\n", v34);
      if (v34 != buf)
      {
        free(v34);
      }
    }

    goto LABEL_10;
  }

  sub_100075160(a2, buf);
  v38 = v42;
  *__p = *buf;
  if (SHIBYTE(v42) < 0)
  {
    if (__p[1] != 7)
    {
      v4 = HIBYTE(v42);
LABEL_34:
      if (__p[1] != 3)
      {
LABEL_41:
        if (__p[1] != 5)
        {
          goto LABEL_50;
        }

        v17 = 1;
        v18 = __p[0];
        goto LABEL_45;
      }

      v12 = 1;
      v13 = __p[0];
      goto LABEL_36;
    }

    v3 = __p[0];
    v4 = HIBYTE(v42);
  }

  else
  {
    if (HIBYTE(v42) != 7)
    {
      v4 = HIBYTE(v42);
      goto LABEL_31;
    }

    v3 = __p;
    v4 = 7;
  }

  v9 = *v3;
  v10 = *(v3 + 3);
  if (v9 == 1852534357 && v10 == 1853321070)
  {
    v6 = 0;
    goto LABEL_13;
  }

  if (v42 < 0)
  {
    goto LABEL_34;
  }

LABEL_31:
  if (v4 != 3)
  {
    goto LABEL_43;
  }

  v12 = 0;
  v13 = __p;
LABEL_36:
  v14 = *v13;
  v15 = *(v13 + 2);
  if (v14 == 21319 && v15 == 77)
  {
    v6 = 1;
    goto LABEL_13;
  }

  if (v12)
  {
    goto LABEL_41;
  }

LABEL_43:
  if (v4 != 5)
  {
LABEL_52:
    if (v4 != 4)
    {
      goto LABEL_58;
    }

    v22 = 0;
    v23 = __p;
LABEL_54:
    if (*v23 != 1095582787)
    {
      if (v22)
      {
        goto LABEL_56;
      }

LABEL_58:
      if (v4 != 3)
      {
        goto LABEL_10;
      }

      v26 = 0;
      v24 = __p;
      v25 = 1;
      goto LABEL_60;
    }

LABEL_67:
    v6 = 2;
    goto LABEL_13;
  }

  v17 = 0;
  v18 = __p;
LABEL_45:
  v19 = *v18;
  v20 = *(v18 + 4);
  if (v19 == 1296319315 && v20 == 65)
  {
    goto LABEL_67;
  }

  if (!v17)
  {
    goto LABEL_52;
  }

LABEL_50:
  if (__p[1] == 4)
  {
    v22 = 1;
    v23 = __p[0];
    goto LABEL_54;
  }

LABEL_56:
  if (__p[1] != 3)
  {
LABEL_65:
    if (__p[1] != 3)
    {
      goto LABEL_10;
    }

    v30 = __p[0];
    goto LABEL_73;
  }

  v24 = __p[0];
  v25 = v4 == 3;
  v26 = 1;
LABEL_60:
  v27 = *v24;
  v28 = *(v24 + 2);
  if (v27 == 21580 && v28 == 69)
  {
    v6 = 3;
    goto LABEL_13;
  }

  if (v26)
  {
    goto LABEL_65;
  }

  if (!v25)
  {
    goto LABEL_10;
  }

  v30 = __p;
LABEL_73:
  v31 = *v30;
  v32 = *(v30 + 2);
  if (v31 == 21326 && v32 == 65)
  {
    v6 = 4;
    goto LABEL_13;
  }

LABEL_10:
  if (sub_100030AF8(__p, "NR"))
  {
    v6 = 5;
  }

  else
  {
    v6 = 6;
  }

LABEL_13:
  if (v6 != *(a1 + 120))
  {
    *(a1 + 120) = v6;
    [*(a1 + 136) sendEvent:{objc_msgSend([BMDeviceCellularQualityStatus alloc], "initWithStarting:rat:deviceRegistrationState:quality:rrcStatus:", +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", 1), *(a1 + 120), *(a1 + 124), +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", *(a1 + 128)), *(a1 + 132))}];
    if (qword_1025D4660 != -1)
    {
      sub_101AA32A4();
    }

    v7 = qword_1025D4668;
    if (os_log_type_enabled(qword_1025D4668, OS_LOG_TYPE_DEBUG))
    {
      v8 = *(a1 + 120);
      *buf = 67109120;
      *&buf[4] = v8;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEBUG, "#EmergencyBiome, Biome donation, rat, %d", buf, 8u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101AA3260(buf);
      v35 = *(a1 + 120);
      v39 = 67109120;
      v40 = v35;
      v36 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "void CLCellularBiomePublisherHelper::onRatNotification(const std::optional<CLCell> &)", "%s\n", v36);
      if (v36 != buf)
      {
        free(v36);
      }
    }
  }

  if (SHIBYTE(v38) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_10008F91C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10008F950(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 23) < 0)
  {
    operator delete(*a2);
  }
}

uint64_t sub_10008F96C(uint64_t result)
{
  v1 = result;
  v2 = *(result + 24);
  if (v2 != -1)
  {
    result = (off_102470D00[v2])(&v3, result);
  }

  *(v1 + 24) = -1;
  return result;
}

uint64_t sub_10008F9D4(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 24) = -1;
  sub_10008FA0C(a1, a2);
  return a1;
}

uint64_t sub_10008FA0C(uint64_t a1, uint64_t a2)
{
  result = sub_10008F96C(a1);
  v5 = *(a2 + 24);
  if (v5 != -1)
  {
    v6 = a1;
    result = (off_102486090[v5])(&v6, a2);
    *(a1 + 24) = v5;
  }

  return result;
}

uint64_t sub_10008FA70(uint64_t a1)
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

uint64_t *sub_10008FB08(void *a1, int *a2)
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

  if (*(v7 + 4) != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

void sub_10008FD58(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100A73194(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10008FD6C(uint64_t result, uint64_t a2)
{
  v4 = *(a2 + 24);
  if (*(result + 24) != -1 || v4 != -1)
  {
    if (v4 == -1)
    {

      return sub_10008F96C(result);
    }

    else
    {
      v6[1] = v2;
      v6[2] = v3;
      v6[0] = result;
      return (*(&off_102488C50 + v4))(v6);
    }
  }

  return result;
}

uint64_t *sub_10008FDDC(uint64_t *result, _DWORD *a2, _DWORD *a3)
{
  v4 = *result;
  if (*(*result + 24))
  {
    result = sub_10008F96C(*result);
    *v4 = *a3;
    v4[6] = 0;
  }

  else
  {
    *a2 = *a3;
  }

  return result;
}

uint64_t sub_10008FE28(uint64_t a1, uint64_t a2)
{
  sub_10008F9D4(v5, a2);
  if (v5[6])
  {
    v2 = 1;
  }

  else
  {
    v2 = v5[0] >= 0x3E8u;
  }

  v3 = !v2;
  sub_10008F96C(v5);
  return v3;
}

uint64_t sub_10008FE78(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_102488F50;
  a2[1] = v2;
  return result;
}

uint64_t sub_10008FEA0(uint64_t a1, uint64_t a2)
{
  sub_10008F9D4(v5, a2);
  if (v5[6])
  {
    v2 = 1;
  }

  else
  {
    v2 = v5[0] >= 0xDu;
  }

  v3 = !v2;
  sub_10008F96C(v5);
  return v3;
}

uint64_t sub_10008FEEC(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_102489850;
  a2[1] = v2;
  return result;
}

void sub_10008FF14(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v12 = 0uLL;
  v13 = 0;
  if ((a1 - 1000) > 0xFFFFFC18)
  {
    [[NSNumber numberWithInt:?]];
    v4 = TUISOCountryCodeForMCC();
    if (v4)
    {
      sub_10000EC00(buf, [v4 UTF8String]);
      v12 = *buf;
      v13 = v17;
      if (qword_1025D4870 != -1)
      {
        sub_1019D3ECC();
      }

      v5 = qword_1025D4878;
      if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_DEBUG))
      {
        v6 = &v12;
        if (v13 < 0)
        {
          v6 = v12;
        }

        *buf = 136446210;
        *&buf[4] = v6;
        _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEBUG, "#ca,getCountryCode,%{public}s", buf, 0xCu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1019D3EF4(buf);
        v9 = &v12;
        if (v13 < 0)
        {
          v9 = v12;
        }

        v14 = 136446210;
        v15 = v9;
        v10 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "std::string CLAnalyticsLogger::getCountryCode(int)", "%s\n", v10);
        if (v10 != buf)
        {
          free(v10);
        }
      }

      *a2 = v12;
      *(a2 + 16) = v13;
    }

    else
    {
      if (qword_1025D4870 != -1)
      {
        sub_10023F764();
      }

      v7 = qword_1025D4878;
      if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEBUG, "#ca,getCountryCode,InvalidCountryCode", buf, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1019D3EF4(buf);
        LOWORD(v14) = 0;
        v11 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "std::string CLAnalyticsLogger::getCountryCode(int)", "%s\n", v11);
        if (v11 != buf)
        {
          free(v11);
        }
      }

      sub_10000EC00(a2, "InvalidCountryCode");
    }
  }

  else
  {
    if (qword_1025D4870 != -1)
    {
      sub_10023F764();
    }

    v3 = qword_1025D4878;
    if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEBUG, "#ca,getCountryCode,InvalidMCC", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1019D3EF4(buf);
      LOWORD(v14) = 0;
      v8 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "std::string CLAnalyticsLogger::getCountryCode(int)", "%s\n", v8);
      if (v8 != buf)
      {
        free(v8);
      }
    }

    sub_10000EC00(a2, "InvalidMCC");
  }
}

void sub_100090320(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_100090364(uint64_t a1, uint64_t a2)
{
  sub_10008F9D4(&v4, a2);
  v2 = v6;
  if (v6 == 6)
  {
    if (SHIBYTE(v5) < 0)
    {
      sub_100007244(__p, v4, *(&v4 + 1));
    }

    else
    {
      *__p = v4;
      v8 = v5;
    }

    if (SHIBYTE(v8) < 0)
    {
      operator delete(__p[0]);
    }
  }

  sub_10008F96C(&v4);
  return v2 == 6;
}

void *sub_1000903FC(void **a1, __int128 *a2)
{
  result = *a1;
  if (*(a2 + 23) < 0)
  {
    return sub_100007244(result, *a2, *(a2 + 1));
  }

  v3 = *a2;
  result[2] = *(a2 + 2);
  *result = v3;
  return result;
}

uint64_t sub_100090428(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_1024893D0;
  a2[1] = v2;
  return result;
}

__n128 sub_10009044C(__n128 **a1, __n128 *a2)
{
  v2 = *a1;
  result = *a2;
  v2[1].n128_u64[0] = a2[1].n128_u64[0];
  *v2 = result;
  a2->n128_u64[1] = 0;
  a2[1].n128_u64[0] = 0;
  a2->n128_u64[0] = 0;
  return result;
}

uint64_t sub_100090470(uint64_t a1)
{
  result = *(a1 + 280);
  if (!result)
  {
    operator new();
  }

  return result;
}

uint64_t sub_1000904F8(uint64_t a1)
{
  if (sub_100023B68(a1 + 64))
  {
    sub_10000FF38(&v31, "CLLocationDatabase::getLocation", 0);
    sub_10003848C(v29);
    v2 = sub_100038730(&v30, "SELECT ", 7);
    v3 = sub_100038730(v2, "Timestamp", 9);
    v4 = sub_100038730(v3, ", ", 2);
    v5 = sub_100038730(v4, "Latitude", 8);
    v6 = sub_100038730(v5, ", ", 2);
    v7 = sub_100038730(v6, "Longitude", 9);
    v8 = sub_100038730(v7, ", ", 2);
    v9 = sub_100038730(v8, "HorizontalAccuracy", 18);
    v10 = sub_100038730(v9, ", ", 2);
    v11 = sub_100038730(v10, "Altitude", 8);
    v12 = sub_100038730(v11, ", ", 2);
    v13 = sub_100038730(v12, "VerticalAccuracy", 16);
    v14 = sub_100038730(v13, ", ", 2);
    v15 = sub_100038730(v14, "Speed", 5);
    v16 = sub_100038730(v15, ", ", 2);
    v17 = sub_100038730(v16, "Course", 6);
    v18 = sub_100038730(v17, ", ", 2);
    v19 = sub_100038730(v18, "Confidence", 10);
    v20 = sub_100038730(v19, " FROM ", 6);
    (*(*a1 + 16))(__p, a1);
    if ((v33 & 0x80u) == 0)
    {
      v21 = __p;
    }

    else
    {
      v21 = __p[0];
    }

    if ((v33 & 0x80u) == 0)
    {
      v22 = v33;
    }

    else
    {
      v22 = __p[1];
    }

    v23 = sub_100038730(v20, v21, v22);
    v24 = sub_100038730(v23, " WHERE ", 7);
    v25 = sub_100038730(v24, "ROWID", 5);
    sub_100038730(v25, "=?", 2);
    if (v33 < 0)
    {
      operator delete(__p[0]);
    }

    sub_100073518(v29, __p);
    if ((v33 & 0x80u) == 0)
    {
      v26 = __p;
    }

    else
    {
      v26 = __p[0];
    }

    sub_1000388D8(a1 + 64, v26);
  }

  if (qword_1025D4850 != -1)
  {
    sub_1018F3224();
  }

  v27 = off_1025D4858;
  if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(__p[0]) = 0;
    _os_log_impl(dword_100000000, v27, OS_LOG_TYPE_DEBUG, "#Warning Attempt to call getLocation() without a backing database in CLLocationDatabase!", __p, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018F3550();
  }

  return 0;
}

void sub_100090B8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, id a47, uint64_t a48, void *__p, uint64_t a50, int a51, __int16 a52, char a53, char a54)
{
  if (v54)
  {
    (*(*v54 + 8))(v54);
  }

  sub_10026C504(&a12);
  sub_10001A420(&a47);
  _Unwind_Resume(a1);
}

char *sub_100090C14@<X0>(char *result@<X0>, uint64_t a2@<X8>)
{
  if (result[255] < 0)
  {
    return sub_100007244(a2, *(result + 29), *(result + 30));
  }

  *a2 = *(result + 232);
  *(a2 + 16) = *(result + 31);
  return result;
}

double sub_100090C3C(uint64_t a1, std::string *this, std::string *__str)
{
  if (*(a1 + 24) == 6)
  {

    std::string::operator=(this, __str);
  }

  else
  {
    v6[2] = v3;
    v6[3] = v4;
    v6[0] = a1;
    v6[1] = __str;
    *&result = sub_100A733D8(v6).n128_u64[0];
  }

  return result;
}

void sub_100090C88(uint64_t a1, int *a2, void **a3, uint64_t a4)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a4 + 56) "silo")];
  if (qword_1025D47F0 != -1)
  {
    dispatch_once(&qword_1025D47F0, &stru_102502540);
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v29 = 1;
    v7 = _os_activity_create(dword_100000000, "CL: CLNearbydInterfaceManager::onTelephonyNotification", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v7, &state);

    if (qword_1025D47F0 != -1)
    {
      dispatch_once(&qword_1025D47F0, &stru_102502540);
    }

    v8 = qword_1025D47F8;
    if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68289538;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      v45 = 2082;
      v46 = "activity";
      v47 = 2050;
      v48 = a4;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLNearbydInterfaceManager::onTelephonyNotification, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v29 = 0;
  }

  v9 = sub_100072010(a2);
  v10 = CFEqual(v9, @"kCellInfoNotification");
  v11 = *a3;
  if (v10)
  {
    v12 = v11 == 0;
  }

  else
  {
    v12 = 1;
  }

  if (!v12)
  {
    v39 = 0;
    v38 = 0;
    v40 = 0;
    v32[0] = 0;
    v37 = 0;
    memset(v30, 0, sizeof(v30));
    v31 = 1065353216;
    if (!sub_100065478(v11, v30))
    {
      if (qword_1025D47A0 != -1)
      {
        dispatch_once(&qword_1025D47A0, &stru_102502520);
      }

      v15 = off_1025D47A8;
      if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_ERROR, "#NearbydIfMgr,#ci,kCellInfoNotification,[3]:error fetching cell info", buf, 2u);
      }

      if (!sub_10000A100(121, 0))
      {
        goto LABEL_80;
      }

      bzero(buf, 0x65CuLL);
      if (qword_1025D47A0 != -1)
      {
        dispatch_once(&qword_1025D47A0, &stru_102502520);
      }

      *v41 = 0;
      v16 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 0, "void CLNearbydInterfaceManager::onTelephonyNotification(int, const CLTelephonyService_Type::Notification &, const CLTelephonyService_Type::NotificationData &)", "%s\n", v16);
      goto LABEL_35;
    }

    *buf = 0;
    *v41 = buf;
    if (sub_1000646F8(v30, buf)[3])
    {
      sub_1000658D0(0, v30, &v38);
      sub_100065934(&v38, buf);
      sub_1000659B0(v32, buf);
      if (v53 == 1)
      {
        if (v52 < 0)
        {
          operator delete(__p);
        }

        if (v49)
        {
          v50 = v49;
          operator delete(v49);
        }
      }

      if (v37)
      {
        if (qword_1025D47A0 != -1)
        {
          dispatch_once(&qword_1025D47A0, &stru_102502520);
        }

        v13 = off_1025D47A8;
        if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
        {
          *buf = 134218240;
          *&buf[4] = 0x66FD0EB66FD0EB67 * ((v39 - v38) >> 3);
          *&buf[12] = 1024;
          *&buf[14] = 0;
          _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_DEBUG, "#NearbydIfMgr,#ci,kCellInfoNotification,[1]:cellcount,%lu,sim %d", buf, 0x12u);
        }

        if (sub_10000A100(121, 2))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1025D47A0 != -1)
          {
            dispatch_once(&qword_1025D47A0, &stru_102502520);
          }

          *v41 = 134218240;
          *&v41[4] = 0x66FD0EB66FD0EB67 * ((v39 - v38) >> 3);
          v42 = 1024;
          v43 = 0;
          v26 = _os_log_send_and_compose_impl();
          sub_100152C7C("Generic", 1, 0, 2, "void CLNearbydInterfaceManager::onTelephonyNotification(int, const CLTelephonyService_Type::Notification &, const CLTelephonyService_Type::NotificationData &)", "%s\n", v26);
          if (v26 != buf)
          {
            free(v26);
          }
        }

        v14 = sub_100091A48(v32);
        sub_100091AC4(a4, 0, v14);
LABEL_50:
        v20 = v39;
        v21 = v38;
        while (v20 != v21)
        {
          v20 -= 696;
          sub_1000720CC(v20);
        }

        v39 = v21;
        if (!sub_1000649A0())
        {
LABEL_80:
          sub_100075100(v30);
          if (v37 == 1)
          {
            if (v36 < 0)
            {
              operator delete(v35);
            }

            if (v33)
            {
              v34 = v33;
              operator delete(v33);
            }
          }

          *buf = &v38;
          sub_100072124(buf);
          goto LABEL_86;
        }

        *buf = 1;
        *v41 = buf;
        if (sub_1000646F8(v30, buf)[3])
        {
          sub_1000658D0(1, v30, &v38);
          sub_100065934(&v38, buf);
          sub_1000659B0(v32, buf);
          if (v53 == 1)
          {
            if (v52 < 0)
            {
              operator delete(__p);
            }

            if (v49)
            {
              v50 = v49;
              operator delete(v49);
            }
          }

          if (v37)
          {
            if (qword_1025D47A0 != -1)
            {
              dispatch_once(&qword_1025D47A0, &stru_102502520);
            }

            v22 = off_1025D47A8;
            if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
            {
              *buf = 134218240;
              *&buf[4] = 0x66FD0EB66FD0EB67 * ((v39 - v38) >> 3);
              *&buf[12] = 1024;
              *&buf[14] = 1;
              _os_log_impl(dword_100000000, v22, OS_LOG_TYPE_DEBUG, "#NearbydIfMgr,#ci,kCellInfoNotification,[1]:cellcount,%lu,sim %d", buf, 0x12u);
            }

            if (sub_10000A100(121, 2))
            {
              bzero(buf, 0x65CuLL);
              if (qword_1025D47A0 != -1)
              {
                dispatch_once(&qword_1025D47A0, &stru_102502520);
              }

              *v41 = 134218240;
              *&v41[4] = 0x66FD0EB66FD0EB67 * ((v39 - v38) >> 3);
              v42 = 1024;
              v43 = 1;
              v27 = _os_log_send_and_compose_impl();
              sub_100152C7C("Generic", 1, 0, 2, "void CLNearbydInterfaceManager::onTelephonyNotification(int, const CLTelephonyService_Type::Notification &, const CLTelephonyService_Type::NotificationData &)", "%s\n", v27);
              if (v27 != buf)
              {
                free(v27);
              }
            }

            v23 = sub_100091A48(v32);
            sub_100091AC4(a4, 1u, v23);
            goto LABEL_80;
          }

          if (qword_1025D47A0 != -1)
          {
            dispatch_once(&qword_1025D47A0, &stru_102502520);
          }

          v25 = off_1025D47A8;
          if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
          {
            *buf = 0;
            _os_log_impl(dword_100000000, v25, OS_LOG_TYPE_DEBUG, "#NearbydIfMgr,#ci,kCellInfoNotification,[0]:serving cell missing", buf, 2u);
          }

          if (!sub_10000A100(121, 2))
          {
            goto LABEL_80;
          }

          bzero(buf, 0x65CuLL);
          if (qword_1025D47A0 != -1)
          {
            dispatch_once(&qword_1025D47A0, &stru_102502520);
          }

          *v41 = 0;
          v16 = _os_log_send_and_compose_impl();
          sub_100152C7C("Generic", 1, 0, 2, "void CLNearbydInterfaceManager::onTelephonyNotification(int, const CLTelephonyService_Type::Notification &, const CLTelephonyService_Type::NotificationData &)", "%s\n", v16);
        }

        else
        {
          if (qword_1025D47A0 != -1)
          {
            dispatch_once(&qword_1025D47A0, &stru_102502520);
          }

          v24 = off_1025D47A8;
          if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
          {
            *buf = 67109120;
            *&buf[4] = 1;
            _os_log_impl(dword_100000000, v24, OS_LOG_TYPE_DEBUG, "#NearbydIfMgr,#ci,kCellInfoNotification,[2]:received nil CellInfo from CT for sim %d", buf, 8u);
          }

          if (!sub_10000A100(121, 2))
          {
            goto LABEL_80;
          }

          bzero(buf, 0x65CuLL);
          if (qword_1025D47A0 != -1)
          {
            dispatch_once(&qword_1025D47A0, &stru_102502520);
          }

          *v41 = 0x104000100;
          v16 = _os_log_send_and_compose_impl();
          sub_100152C7C("Generic", 1, 0, 2, "void CLNearbydInterfaceManager::onTelephonyNotification(int, const CLTelephonyService_Type::Notification &, const CLTelephonyService_Type::NotificationData &)", "%s\n", v16);
        }

LABEL_35:
        if (v16 != buf)
        {
          free(v16);
        }

        goto LABEL_80;
      }

      if (qword_1025D47A0 != -1)
      {
        dispatch_once(&qword_1025D47A0, &stru_102502520);
      }

      v19 = off_1025D47A8;
      if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v19, OS_LOG_TYPE_DEBUG, "#NearbydIfMgr,#ci,kCellInfoNotification,[0]:serving cell missing", buf, 2u);
      }

      if (!sub_10000A100(121, 2))
      {
        goto LABEL_50;
      }

      bzero(buf, 0x65CuLL);
      if (qword_1025D47A0 != -1)
      {
        dispatch_once(&qword_1025D47A0, &stru_102502520);
      }

      *v41 = 0;
      v18 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "void CLNearbydInterfaceManager::onTelephonyNotification(int, const CLTelephonyService_Type::Notification &, const CLTelephonyService_Type::NotificationData &)", "%s\n", v18);
    }

    else
    {
      if (qword_1025D47A0 != -1)
      {
        dispatch_once(&qword_1025D47A0, &stru_102502520);
      }

      v17 = off_1025D47A8;
      if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
      {
        *buf = 67109120;
        *&buf[4] = 0;
        _os_log_impl(dword_100000000, v17, OS_LOG_TYPE_DEBUG, "#NearbydIfMgr,#ci,kCellInfoNotification,[2]:received nil CellInfo from CT for sim %d", buf, 8u);
      }

      if (!sub_10000A100(121, 2))
      {
        goto LABEL_50;
      }

      bzero(buf, 0x65CuLL);
      if (qword_1025D47A0 != -1)
      {
        dispatch_once(&qword_1025D47A0, &stru_102502520);
      }

      *v41 = 67109120;
      v18 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "void CLNearbydInterfaceManager::onTelephonyNotification(int, const CLTelephonyService_Type::Notification &, const CLTelephonyService_Type::NotificationData &)", "%s\n", v18);
    }

    if (v18 != buf)
    {
      free(v18);
    }

    goto LABEL_50;
  }

LABEL_86:
  sub_1000932B0(a4, 0, 1);
  sub_1000932B0(a4, 1u, 1);
  if (v29 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

void sub_1000919BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va2, a4);
  va_start(va1, a4);
  va_start(va, a4);
  v5 = va_arg(va1, os_activity_scope_state_s);
  v7 = va_arg(va1, void);
  va_copy(va2, va1);
  v8 = va_arg(va2, void);
  v10 = va_arg(va2, void);
  v11 = va_arg(va2, void);
  v12 = va_arg(va2, void);
  v13 = va_arg(va2, void);
  v14 = va_arg(va2, void);
  sub_100075100(va1);
  sub_1000827E4(va2);
  STACK[0x360] = &STACK[0x320];
  sub_100072124(&STACK[0x360]);
  if (v7 == 1)
  {
    os_activity_scope_leave(va);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_100091A48(uint64_t a1)
{
  if (*a1 != 1)
  {
    return 0xFFFFFFFFLL;
  }

  v1 = *(a1 + 8);
  if (v1 < 3)
  {
    return *(a1 + 12);
  }

  if (v1 == 9)
  {
    return *(a1 + 44);
  }

  if (v1 == 7)
  {
    return *(a1 + 12);
  }

  if (v1 - 3 <= 2)
  {
    v3 = *(a1 + 88);
    if (*(a1 + 96) != v3)
    {
      return *v3;
    }

    return 0xFFFFFFFFLL;
  }

  if (v1 != 10)
  {
    if (v1 == 6)
    {
      return *(a1 + 512);
    }

    return 0xFFFFFFFFLL;
  }

  return *(a1 + 600);
}

void sub_100091AC4(uint64_t a1, unsigned int a2, int a3)
{
  v75 = a2;
  if (*a1 != 1 || *(a1 + 1) != 1 || a3 && (*(a1 + 96) & 1) != 0)
  {
    return;
  }

  memset(&v74, 0, sizeof(v74));
  if (a3 == 901)
  {
    LODWORD(v5) = 14;
    *(&v74.__r_.__value_.__s + 23) = 14;
    v6 = "_SPL::MCC::901";
    goto LABEL_9;
  }

  if (!a3)
  {
    LODWORD(v5) = 14;
    *(&v74.__r_.__value_.__s + 23) = 14;
    v6 = "_SPL::MCC::000";
LABEL_9:
    v74.__r_.__value_.__r.__words[0] = *v6;
    *(v74.__r_.__value_.__r.__words + 6) = *(v6 + 6);
    goto LABEL_80;
  }

  v7 = a3;
  v8 = *(a1 + 144);
  if (v8)
  {
    v9 = vcnt_s8(v8);
    v9.i16[0] = vaddlv_u8(v9);
    if (v9.u32[0] > 1uLL)
    {
      v10 = a3;
      if (v8 <= a3)
      {
        v10 = a3 % v8;
      }
    }

    else
    {
      v10 = (v8 - 1) & a3;
    }

    v11 = *(*(a1 + 136) + 8 * v10);
    if (v11)
    {
      for (i = *v11; i; i = *i)
      {
        v13 = i[1];
        if (v13 == a3)
        {
          if (*(i + 4) == a3)
          {
            if (qword_1025D47A0 != -1)
            {
              dispatch_once(&qword_1025D47A0, &stru_102502520);
            }

            v56 = off_1025D47A8;
            if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
            {
              v57 = i + 3;
              if (*(i + 47) < 0)
              {
                v57 = *v57;
              }

              *buf = 67109378;
              *&buf[4] = a3;
              *&buf[8] = 2080;
              *&buf[10] = v57;
              _os_log_impl(dword_100000000, v56, OS_LOG_TYPE_DEBUG, "#NearbydIfMgr,#toCountryIso,mcc:%d,isCountryCode:%s", buf, 0x12u);
            }

            if (sub_10000A100(121, 2))
            {
              bzero(buf, 0x65CuLL);
              if (qword_1025D47A0 != -1)
              {
                dispatch_once(&qword_1025D47A0, &stru_102502520);
              }

              v69 = i + 3;
              if (*(i + 47) < 0)
              {
                v69 = *v69;
              }

              LODWORD(__str.__r_.__value_.__l.__data_) = 67109378;
              HIDWORD(__str.__r_.__value_.__r.__words[0]) = a3;
              LOWORD(__str.__r_.__value_.__r.__words[1]) = 2080;
              *(&__str.__r_.__value_.__r.__words[1] + 2) = v69;
              v70 = _os_log_send_and_compose_impl();
              sub_100152C7C("Generic", 1, 0, 2, "std::string CLNearbydInterfaceManager::toCountryIso(int)", "%s\n", v70);
              if (v70 != buf)
              {
                free(v70);
              }
            }

            if (*(i + 47) < 0)
            {
              sub_100007244(&__dst, i[3], i[4]);
            }

            else
            {
              __dst = *(i + 1);
            }

            goto LABEL_77;
          }
        }

        else
        {
          if (v9.u32[0] > 1uLL)
          {
            if (v13 >= v8)
            {
              v13 %= v8;
            }
          }

          else
          {
            v13 &= v8 - 1;
          }

          if (v13 != v10)
          {
            break;
          }
        }
      }
    }
  }

  snprintf(&__str, 0x20uLL, "%d", a3);
  CFStringCreateWithCString(kCFAllocatorDefault, &__str, 0x8000100u);
  v76 = 0;
  v14 = _CTServerConnectionCopyISOForMCC();
  v15 = 0;
  memset(&__dst, 0, sizeof(__dst));
  if (v14)
  {
    v16 = 1;
  }

  else
  {
    v16 = v76 == 0;
  }

  if (!v16)
  {
    sub_100006044(&__dst, [objc_msgSend(0 "uppercaseString")]);
    size = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
    if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = __dst.__r_.__value_.__l.__size_;
    }

    if (!size)
    {
      if (qword_1025D47A0 != -1)
      {
        dispatch_once(&qword_1025D47A0, &stru_102502520);
      }

      v20 = off_1025D47A8;
      if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
      {
        *buf = 67109120;
        *&buf[4] = a3;
        _os_log_impl(dword_100000000, v20, OS_LOG_TYPE_DEBUG, "#NearbydIfMgr,#toCountryIsoNonCached,mcc=%d,countryCode,empty", buf, 8u);
      }

      if (sub_10000A100(121, 2))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1025D47A0 != -1)
        {
          dispatch_once(&qword_1025D47A0, &stru_102502520);
        }

        v85 = 67109120;
        v86 = a3;
        v68 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "std::string CLNearbydInterfaceManager::toCountryIsoNonCached(int)", "%s\n", v68);
        if (v68 != buf)
        {
          free(v68);
        }
      }
    }

    if (qword_1025D47A0 != -1)
    {
      dispatch_once(&qword_1025D47A0, &stru_102502520);
    }

    v21 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
    {
      p_dst = &__dst;
      if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        p_dst = __dst.__r_.__value_.__r.__words[0];
      }

      *buf = 67109378;
      *&buf[4] = a3;
      *&buf[8] = 2080;
      *&buf[10] = p_dst;
      _os_log_impl(dword_100000000, v21, OS_LOG_TYPE_DEBUG, "#NearbydIfMgr,#toCountryIsoNonCached,mcc:%d,isCountryCode:%s,fromCache", buf, 0x12u);
    }

    if (!sub_10000A100(121, 2))
    {
      goto LABEL_54;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1025D47A0 != -1)
    {
      dispatch_once(&qword_1025D47A0, &stru_102502520);
    }

    v67 = &__dst;
    if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v67 = __dst.__r_.__value_.__r.__words[0];
    }

    v85 = 67109378;
    v86 = a3;
    v87 = 2080;
    v88 = v67;
    v18 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "std::string CLNearbydInterfaceManager::toCountryIsoNonCached(int)", "%s\n", v18);
LABEL_175:
    if (v18 != buf)
    {
      free(v18);
    }

    goto LABEL_54;
  }

  if (qword_1025D47A0 != -1)
  {
    dispatch_once(&qword_1025D47A0, &stru_102502520);
  }

  v17 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_ERROR))
  {
    *buf = 67109376;
    *&buf[4] = v14;
    *&buf[8] = 1024;
    *&buf[10] = HIDWORD(v14);
    _os_log_impl(dword_100000000, v17, OS_LOG_TYPE_ERROR, "#NearbydIfMgr,#toCountryIsoNonCached,_CTServerConnectionCopyISOForMCC failed,domain,%d,error,%d", buf, 0xEu);
  }

  if (sub_10000A100(121, 0))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D47A0 != -1)
    {
      dispatch_once(&qword_1025D47A0, &stru_102502520);
    }

    v85 = 67109376;
    v86 = v14;
    v87 = 1024;
    LODWORD(v88) = HIDWORD(v14);
    v18 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 0, "std::string CLNearbydInterfaceManager::toCountryIsoNonCached(int)", "%s\n", v18);
    goto LABEL_175;
  }

LABEL_54:
  *buf = a3;
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_100007244(&buf[8], __dst.__r_.__value_.__l.__data_, __dst.__r_.__value_.__l.__size_);
    v23 = *buf;
    v7 = *buf;
  }

  else
  {
    *&buf[8] = __dst;
    v23 = a3;
  }

  v24 = *(a1 + 144);
  if (!*&v24)
  {
    goto LABEL_74;
  }

  v25 = vcnt_s8(v24);
  v25.i16[0] = vaddlv_u8(v25);
  if (v25.u32[0] > 1uLL)
  {
    v26 = v7;
    if (*&v24 <= v7)
    {
      v26 = v7 % *&v24;
    }
  }

  else
  {
    v26 = (*&v24 - 1) & v7;
  }

  v27 = *(*(a1 + 136) + 8 * v26);
  if (!v27 || (v28 = *v27) == 0)
  {
LABEL_74:
    operator new();
  }

  while (1)
  {
    v29 = v28[1];
    if (v29 == v7)
    {
      break;
    }

    if (v25.u32[0] > 1uLL)
    {
      if (v29 >= *&v24)
      {
        v29 %= *&v24;
      }
    }

    else
    {
      v29 &= *&v24 - 1;
    }

    if (v29 != v26)
    {
      goto LABEL_74;
    }

LABEL_73:
    v28 = *v28;
    if (!v28)
    {
      goto LABEL_74;
    }
  }

  if (*(v28 + 4) != v23)
  {
    goto LABEL_73;
  }

  if ((buf[31] & 0x80000000) != 0)
  {
    operator delete(*&buf[8]);
  }

LABEL_77:
  if (SHIBYTE(v74.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v74.__r_.__value_.__l.__data_);
  }

  v74 = __dst;
  v5 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
LABEL_80:
  if ((v5 & 0x80u) == 0)
  {
    v30 = v5;
  }

  else
  {
    v30 = v74.__r_.__value_.__l.__size_;
  }

  if (!v30)
  {
    goto LABEL_156;
  }

  v31 = sub_100093368((a1 + 8), v75);
  if (!v31)
  {
    if ((v5 & 0x80) != 0)
    {
      sub_100007244(&__str, v74.__r_.__value_.__l.__data_, v74.__r_.__value_.__l.__size_);
    }

    else
    {
      __str = v74;
    }

    LOBYTE(v78) = 1;
    v81 = 0;
    v82 = 0;
    v80 = 0;
    v83 = sub_1000081AC();
    *buf = &v75;
    v44 = sub_1018028BC((a1 + 8), v75);
    std::string::operator=(v44 + 1, &__str);
    *(v44 + 48) = v78;
    if (v44 + 3 != &__str)
    {
      sub_1018024F0(v44 + 7, v80, v81, 0xAAAAAAAAAAAAAAABLL * ((v81 - v80) >> 3));
    }

    *(v44 + 10) = v83;
    if (qword_1025D47A0 != -1)
    {
      dispatch_once(&qword_1025D47A0, &stru_102502520);
    }

    v45 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
    {
      p_str = &__str;
      if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        p_str = __str.__r_.__value_.__r.__words[0];
      }

      *buf = 67109634;
      *&buf[4] = v75;
      *&buf[8] = 2080;
      *&buf[10] = p_str;
      *&buf[18] = 1024;
      *&buf[20] = v78;
      _os_log_impl(dword_100000000, v45, OS_LOG_TYPE_DEBUG, "#NearbydIfMgr,#setIsoCountryFromMcc, did not find instance=%d - added it as new instance with iso=%s, sendIt=%d", buf, 0x18u);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D47A0 != -1)
      {
        dispatch_once(&qword_1025D47A0, &stru_102502520);
      }

      v65 = &__str;
      if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v65 = __str.__r_.__value_.__r.__words[0];
      }

      LODWORD(__dst.__r_.__value_.__l.__data_) = 67109634;
      HIDWORD(__dst.__r_.__value_.__r.__words[0]) = v75;
      LOWORD(__dst.__r_.__value_.__r.__words[1]) = 2080;
      *(&__dst.__r_.__value_.__r.__words[1] + 2) = v65;
      WORD1(__dst.__r_.__value_.__r.__words[2]) = 1024;
      HIDWORD(__dst.__r_.__value_.__r.__words[2]) = v78;
      v66 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "void CLNearbydInterfaceManager::setIsoCountryFromMcc(SimInstance, int)", "%s\n", v66);
      if (v66 != buf)
      {
        free(v66);
      }
    }

    *buf = &v80;
    sub_1001E56E8(buf);
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    goto LABEL_148;
  }

  v32 = v31;
  v33 = (v31 + 3);
  v34 = *(v31 + 47);
  v35 = v34;
  if ((v34 & 0x80u) != 0)
  {
    v34 = v31[4];
  }

  if (v34 == v30)
  {
    v36 = v35 >= 0 ? v31 + 3 : v33->__r_.__value_.__r.__words[0];
    v37 = (v5 & 0x80u) == 0 ? &v74 : v74.__r_.__value_.__r.__words[0];
    if (!memcmp(v36, v37, v30))
    {
      if (*(v32 + 48) == 1)
      {
        if (sub_1000081AC() - *(v32 + 10) < 600.0)
        {
          if (qword_1025D47A0 != -1)
          {
            dispatch_once(&qword_1025D47A0, &stru_102502520);
          }

          v47 = off_1025D47A8;
          if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
          {
            v48 = v32[10];
            v49 = *(v32 + 48);
            *buf = 134218240;
            *&buf[4] = v48;
            *&buf[12] = 1024;
            *&buf[14] = v49;
            _os_log_impl(dword_100000000, v47, OS_LOG_TYPE_DEBUG, "#NearbydIfMgr,#setIsoCountryFromMcc,isoCountryCode is not new - waiting for kMinIntervalBetweenIDSMessages to expire before sending another IDS message,timestamp=%.1f, sendIt=%d", buf, 0x12u);
          }

          if (sub_10000A100(121, 2))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1025D47A0 != -1)
            {
              dispatch_once(&qword_1025D47A0, &stru_102502520);
            }

            v71 = v32[10];
            v72 = *(v32 + 48);
            LODWORD(__str.__r_.__value_.__l.__data_) = 134218240;
            *(__str.__r_.__value_.__r.__words + 4) = v71;
            WORD2(__str.__r_.__value_.__r.__words[1]) = 1024;
            *(&__str.__r_.__value_.__r.__words[1] + 6) = v72;
            v73 = _os_log_send_and_compose_impl();
            sub_100152C7C("Generic", 1, 0, 2, "void CLNearbydInterfaceManager::setIsoCountryFromMcc(SimInstance, int)", "%s\n", v73);
            if (v73 != buf)
            {
              free(v73);
            }
          }

          v50 = 0;
          goto LABEL_149;
        }

        *(v32 + 10) = sub_1000081AC();
        if (qword_1025D47A0 != -1)
        {
          dispatch_once(&qword_1025D47A0, &stru_102502520);
        }

        v58 = off_1025D47A8;
        if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
        {
          v59 = v32[10];
          v60 = *(v32 + 48);
          *buf = 134218240;
          *&buf[4] = v59;
          *&buf[12] = 1024;
          *&buf[14] = v60;
          _os_log_impl(dword_100000000, v58, OS_LOG_TYPE_DEBUG, "#NearbydIfMgr,#setIsoCountryFromMcc,isoCountryCode is not new but kMinIntervalBetweenIDSMessages has expired, send another IDS message,timestamp=%.1f, sendIt=%d", buf, 0x12u);
        }

        if (!sub_10000A100(121, 2))
        {
          goto LABEL_148;
        }

        bzero(buf, 0x65CuLL);
        if (qword_1025D47A0 == -1)
        {
LABEL_133:
          v54 = v32[10];
          v55 = *(v32 + 48);
          LODWORD(__str.__r_.__value_.__l.__data_) = 134218240;
          *(__str.__r_.__value_.__r.__words + 4) = v54;
          WORD2(__str.__r_.__value_.__r.__words[1]) = 1024;
          *(&__str.__r_.__value_.__r.__words[1] + 6) = v55;
          v43 = _os_log_send_and_compose_impl();
          sub_100152C7C("Generic", 1, 0, 2, "void CLNearbydInterfaceManager::setIsoCountryFromMcc(SimInstance, int)", "%s\n", v43);
          goto LABEL_103;
        }
      }

      else
      {
        *(v32 + 10) = sub_1000081AC();
        if (qword_1025D47A0 != -1)
        {
          dispatch_once(&qword_1025D47A0, &stru_102502520);
        }

        v51 = off_1025D47A8;
        if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
        {
          v52 = v32[10];
          v53 = *(v32 + 48);
          *buf = 134218240;
          *&buf[4] = v52;
          *&buf[12] = 1024;
          *&buf[14] = v53;
          _os_log_impl(dword_100000000, v51, OS_LOG_TYPE_DEBUG, "#NearbydIfMgr,#setIsoCountryFromMcc,isoCountryCode is not new - setting its timestamp to current time,timestamp=%.1f, sendIt=%d", buf, 0x12u);
        }

        if (!sub_10000A100(121, 2))
        {
          goto LABEL_148;
        }

        bzero(buf, 0x65CuLL);
        if (qword_1025D47A0 == -1)
        {
          goto LABEL_133;
        }
      }

      dispatch_once(&qword_1025D47A0, &stru_102502520);
      goto LABEL_133;
    }
  }

  std::string::operator=(v33, &v74);
  *(v32 + 10) = sub_1000081AC();
  *(v32 + 48) = 1;
  if (qword_1025D47A0 != -1)
  {
    dispatch_once(&qword_1025D47A0, &stru_102502520);
  }

  v38 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
  {
    v39 = v32[10];
    v40 = *(v32 + 48);
    *buf = 67109888;
    *&buf[4] = v75;
    *&buf[8] = 1024;
    *&buf[10] = a3;
    *&buf[14] = 2048;
    *&buf[16] = v39;
    *&buf[24] = 1024;
    *&buf[26] = v40;
    _os_log_impl(dword_100000000, v38, OS_LOG_TYPE_DEBUG, "#NearbydIfMgr,#setIsoCountryFromMcc,Updated existing mccEntry,instance=%d,mcc=%d,timestamp=%.1f,sendIt=%d", buf, 0x1Eu);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D47A0 != -1)
    {
      dispatch_once(&qword_1025D47A0, &stru_102502520);
    }

    v41 = v32[10];
    v42 = *(v32 + 48);
    __str.__r_.__value_.__r.__words[0] = __PAIR64__(v75, 67109888);
    LOWORD(__str.__r_.__value_.__r.__words[1]) = 1024;
    *(&__str.__r_.__value_.__r.__words[1] + 2) = a3;
    HIWORD(__str.__r_.__value_.__r.__words[1]) = 2048;
    __str.__r_.__value_.__r.__words[2] = v41;
    v78 = 1024;
    v79 = v42;
    v43 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "void CLNearbydInterfaceManager::setIsoCountryFromMcc(SimInstance, int)", "%s\n", v43);
LABEL_103:
    if (v43 != buf)
    {
      free(v43);
    }
  }

LABEL_148:
  v50 = 1;
LABEL_149:
  *buf = &v75;
  if ((v50 & sub_1018028BC((a1 + 8), v75)[6]) == 1)
  {
    if (qword_1025D47A0 != -1)
    {
      dispatch_once(&qword_1025D47A0, &stru_102502520);
    }

    v61 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
    {
      *buf = &v75;
      v62 = *(sub_1018028BC((a1 + 8), v75) + 48);
      LODWORD(__str.__r_.__value_.__l.__data_) = 67109120;
      HIDWORD(__str.__r_.__value_.__r.__words[0]) = v62;
      _os_log_impl(dword_100000000, v61, OS_LOG_TYPE_DEBUG, "#NearbydIfMgr,#setIsoCountryFromMcc, calling sendIsoCountryToWatch(instance),sendIt=%d", &__str, 8u);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D47A0 != -1)
      {
        dispatch_once(&qword_1025D47A0, &stru_102502520);
      }

      __str.__r_.__value_.__r.__words[0] = &v75;
      v63 = *(sub_1018028BC((a1 + 8), v75) + 48);
      LODWORD(__dst.__r_.__value_.__l.__data_) = 67109120;
      HIDWORD(__dst.__r_.__value_.__r.__words[0]) = v63;
      v64 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "void CLNearbydInterfaceManager::setIsoCountryFromMcc(SimInstance, int)", "%s\n", v64);
      if (v64 != buf)
      {
        free(v64);
      }
    }

    sub_101801E74(a1, v75);
  }

LABEL_156:
  if (SHIBYTE(v74.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v74.__r_.__value_.__l.__data_);
  }
}

void sub_1000931E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, void *a43, uint64_t a44, int a45, __int16 a46, char a47, char a48)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000932B0(uint64_t a1, unsigned int a2, int a3)
{
  v6 = sub_100093368((a1 + 8), a2);
  if (!v6)
  {
    return;
  }

  v7 = v6;
  if (a3)
  {
    if (*(v6 + 47) < 0)
    {
      if (!v6[4])
      {
        goto LABEL_8;
      }
    }

    else if (!*(v6 + 47))
    {
      goto LABEL_8;
    }

    if (sub_1000081AC() - *(v6 + 10) < *&qword_1026358F0)
    {
      return;
    }
  }

LABEL_8:
  if (std::string::compare(v7 + 1, "_SPL::MCC::000"))
  {

    sub_100091AC4(a1, a2, 0);
  }
}

uint64_t *sub_100093368(void *a1, int a2)
{
  v2 = a1[1];
  if (!v2)
  {
    return 0;
  }

  v3 = vcnt_s8(v2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a2;
    if (v2 <= a2)
    {
      v4 = a2 % v2;
    }
  }

  else
  {
    v4 = (v2 - 1) & a2;
  }

  v5 = *(*a1 + 8 * v4);
  if (!v5)
  {
    return 0;
  }

  for (result = *v5; result; result = *result)
  {
    v7 = result[1];
    if (v7 == a2)
    {
      if (*(result + 4) == a2)
      {
        return result;
      }
    }

    else
    {
      if (v3.u32[0] > 1uLL)
      {
        if (v7 >= v2)
        {
          v7 %= v2;
        }
      }

      else
      {
        v7 &= v2 - 1;
      }

      if (v7 != v4)
      {
        return 0;
      }
    }
  }

  return result;
}

void sub_10009341C(uint64_t a1, __CFString *a2, uint64_t a3)
{
  v6 = *(a1 + 48);
  [*(v6 + 104) silo];
  if (a3)
  {
    if (qword_1025D4650 != -1)
    {
      sub_10196EBB8();
    }

    v7 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEFAULT, "#Warning,#ctcl,#cterror,queryServingMccAndMnc,query for serving MNC failed,replacing with -1", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101974C98();
    }
  }

  else if (a2 && [(__CFString *)a2 length])
  {
    if ([(__CFString *)a2 length]< 4)
    {
      goto LABEL_24;
    }

    if (qword_1025D4650 != -1)
    {
      sub_10196EBB8();
    }

    v8 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEFAULT, "#Warning,#ctcl,queryServingMccAndMnc,MNC is too many digits,replacing with -1", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101974D74();
    }
  }

  else
  {
    if (qword_1025D4650 != -1)
    {
      sub_10196EBB8();
    }

    v9 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEFAULT, "#Warning,#ctcl,#cterror,queryServingMccAndMnc,query for serving MNC returned nil,replacing with -1", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101974E50();
    }
  }

  a2 = @"-1";
LABEL_24:
  if (sub_10009388C(*(a1 + 32), *(a1 + 40), a2))
  {
    v10 = a2;
    sub_100093B1C(buf, *(a1 + 40), a2);
    v21 = sub_1000646B0([*(a1 + 32) slotID]);
    *v22 = &v21;
    v11 = sub_10009422C((v6 + 328), &v21);
    *(v11 + 20) = *buf;
    *(v11 + 28) = buf[8];
    if (qword_1025D4650 != -1)
    {
      sub_10196F27C();
    }

    v12 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
    {
      v13 = *(a1 + 32);
      v14 = [*(a1 + 40) UTF8String];
      v15 = [(__CFString *)a2 UTF8String];
      *buf = 138478339;
      *&buf[4] = v13;
      v28 = 2082;
      v29 = v14;
      v30 = 2082;
      v31 = v15;
      _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_DEBUG, "#ctcl,queryServingMccAndMnc,context,%{private}@,mcc,%{public}s,mnc,%{public}s", buf, 0x20u);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4650 != -1)
      {
        sub_10196F27C();
      }

      v17 = *(a1 + 32);
      v18 = [*(a1 + 40) UTF8String];
      v19 = [(__CFString *)a2 UTF8String];
      *v22 = 138478339;
      *&v22[4] = v17;
      v23 = 2082;
      v24 = v18;
      v25 = 2082;
      v26 = v19;
      v20 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "void CLCoreTelephonyClient::queryServingMccAndMnc(CTXPCServiceSubscriptionContext *)_block_invoke", "%s\n", v20);
      if (v20 != buf)
      {
        free(v20);
      }
    }

    [*(v6 + 112) sendNotificationToClients:@"kServingMccAndMncNotification" notificationData:sub_100093F6C((v6 + 328))];
  }

  else
  {
    if (qword_1025D4650 != -1)
    {
      sub_10196F27C();
    }

    v16 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_DEFAULT, "#Warning,#ctcl,#cterror,queryServingMccAndMnc,MCC and MNC invalid", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101974F2C();
    }
  }
}

uint64_t sub_10009388C(void *a1, void *a2, void *a3)
{
  if (a1 && a2 && a3 && [a2 length] && objc_msgSend(a3, "length"))
  {
    if ([a1 slotID] - 1 < 2)
    {
      return 1;
    }

    if (qword_1025D4600 != -1)
    {
      sub_101B4BE38();
    }

    v8 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      LODWORD(v11) = [a1 slotID];
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_ERROR, "#ctcl,#cterror,areMccAndMncValid,invalidSlot,%d", buf, 8u);
    }

    result = sub_10000A100(121, 0);
    if (result)
    {
      sub_101B4D6C0(a1);
      return 0;
    }
  }

  else
  {
    if (qword_1025D4600 != -1)
    {
      sub_101B4BE38();
    }

    v7 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218496;
      v11 = a1;
      v12 = 2048;
      v13 = a2;
      v14 = 2048;
      v15 = a3;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_ERROR, "#ctcl,#cterror,areMccAndMncValid,invalid,context,%p,mccString,%p,mncString,%p", buf, 0x20u);
    }

    result = sub_10000A100(121, 0);
    if (result)
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4600 != -1)
      {
        sub_101B4CB70();
      }

      v9 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 0, "BOOL CLCoreTelephonyUtils::areMccAndMncValid(CTXPCServiceSubscriptionContext *, NSString *, NSString *)", "%s\n", v9);
      if (v9 != buf)
      {
        free(v9);
      }

      return 0;
    }
  }

  return result;
}

uint64_t sub_100093B1C(uint64_t a1, void *a2, void *a3)
{
  *a1 = -1;
  *(a1 + 8) = 0;
  if (a2 && a3)
  {
    *a1 = [a2 integerValue];
    *(a1 + 4) = [a3 integerValue];
    if ([a3 length] == 3)
    {
      *(a1 + 8) = 1;
    }
  }

  else
  {
    if (qword_1025D4870 != -1)
    {
      sub_1018C7FD0();
    }

    v5 = qword_1025D4878;
    if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_ERROR))
    {
      *v7 = 0;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_ERROR, "#clct,CLCTMccAndMnc, mcc or mnc is nil", v7, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018CC284();
    }
  }

  return a1;
}

NSDictionary *sub_100093C04(unsigned int *a1)
{
  v3[0] = @"kMccKey";
  v4[0] = [NSNumber numberWithInt:*a1];
  v3[1] = @"kMncKey";
  v4[1] = [NSNumber numberWithInt:a1[1]];
  v3[2] = @"kIs3DigitMnc";
  v4[2] = [NSNumber numberWithBool:*(a1 + 8)];
  return [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:3];
}

void sub_100093CC8(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x4BDA12F684BDA2)
  {
    operator new();
  }

  sub_1001D0818();
}

void sub_100093D24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v6 = a2;
    do
    {
      *a4 = *v6;
      v7 = *(v6 + 16);
      v8 = *(v6 + 32);
      v9 = *(v6 + 48);
      *(a4 + 60) = *(v6 + 60);
      *(a4 + 32) = v8;
      *(a4 + 48) = v9;
      *(a4 + 16) = v7;
      *(a4 + 80) = *(v6 + 80);
      *(a4 + 96) = 0;
      *(a4 + 104) = 0;
      *(a4 + 88) = 0;
      *(a4 + 88) = *(v6 + 88);
      *(a4 + 104) = *(v6 + 104);
      *(v6 + 96) = 0;
      *(v6 + 104) = 0;
      *(v6 + 88) = 0;
      v10 = *(v6 + 176);
      v12 = *(v6 + 128);
      v11 = *(v6 + 144);
      *(a4 + 160) = *(v6 + 160);
      *(a4 + 176) = v10;
      *(a4 + 128) = v12;
      *(a4 + 144) = v11;
      v13 = *(v6 + 240);
      v15 = *(v6 + 192);
      v14 = *(v6 + 208);
      *(a4 + 224) = *(v6 + 224);
      *(a4 + 240) = v13;
      *(a4 + 192) = v15;
      *(a4 + 208) = v14;
      v17 = *(v6 + 272);
      v16 = *(v6 + 288);
      v18 = *(v6 + 256);
      *(a4 + 300) = *(v6 + 300);
      *(a4 + 272) = v17;
      *(a4 + 288) = v16;
      *(a4 + 256) = v18;
      *(a4 + 112) = *(v6 + 112);
      v19 = *(v6 + 320);
      *(a4 + 336) = *(v6 + 336);
      *(a4 + 320) = v19;
      *(v6 + 328) = 0;
      *(v6 + 336) = 0;
      *(v6 + 320) = 0;
      v20 = *(v6 + 440);
      v22 = *(v6 + 392);
      v21 = *(v6 + 408);
      *(a4 + 424) = *(v6 + 424);
      *(a4 + 440) = v20;
      *(a4 + 392) = v22;
      *(a4 + 408) = v21;
      v23 = *(v6 + 344);
      v24 = *(v6 + 376);
      *(a4 + 360) = *(v6 + 360);
      *(a4 + 376) = v24;
      *(a4 + 344) = v23;
      v26 = *(v6 + 472);
      v25 = *(v6 + 488);
      v27 = *(v6 + 456);
      *(a4 + 504) = *(v6 + 504);
      *(a4 + 472) = v26;
      *(a4 + 488) = v25;
      *(a4 + 456) = v27;
      v28 = *(v6 + 512);
      v29 = *(v6 + 528);
      v30 = *(v6 + 560);
      *(a4 + 544) = *(v6 + 544);
      *(a4 + 560) = v30;
      *(a4 + 512) = v28;
      *(a4 + 528) = v29;
      v31 = *(v6 + 576);
      v32 = *(v6 + 592);
      v33 = *(v6 + 624);
      *(a4 + 608) = *(v6 + 608);
      *(a4 + 624) = v33;
      *(a4 + 576) = v31;
      *(a4 + 592) = v32;
      v34 = *(v6 + 640);
      v35 = *(v6 + 656);
      v36 = *(v6 + 672);
      *(a4 + 688) = *(v6 + 688);
      *(a4 + 656) = v35;
      *(a4 + 672) = v36;
      *(a4 + 640) = v34;
      *(a4 + 696) = *(v6 + 696);
      v37 = *(v6 + 716);
      *(a4 + 700) = *(v6 + 700);
      *(a4 + 716) = v37;
      v38 = *(v6 + 732);
      v39 = *(v6 + 748);
      v40 = *(v6 + 780);
      *(a4 + 764) = *(v6 + 764);
      *(a4 + 780) = v40;
      *(a4 + 732) = v38;
      *(a4 + 748) = v39;
      v41 = *(v6 + 796);
      v42 = *(v6 + 812);
      v43 = *(v6 + 828);
      *(a4 + 840) = *(v6 + 840);
      *(a4 + 812) = v42;
      *(a4 + 828) = v43;
      *(a4 + 796) = v41;
      *(a4 + 856) = *(v6 + 856);
      v6 += 864;
      a4 += 864;
    }

    while (v6 != a3);
    while (v5 != a3)
    {
      sub_1000720CC(v5);
      v5 += 864;
    }
  }
}

void sub_100093EE8(void ***a1)
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
        v4 -= 864;
        sub_1000720CC(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

id sub_100093F6C(void *a1)
{
  v2 = objc_alloc_init(NSMutableDictionary);
  v6 = 0;
  v7 = &v6;
  v3 = sub_10009422C(a1, &v6);
  [v2 setObject:sub_100093C04(v3 + 5) forKey:@"kSlotOne"];
  if (sub_1000649A0())
  {
    v6 = 1;
    v7 = &v6;
    v4 = sub_10009422C(a1, &v6);
    [v2 setObject:sub_100093C04(v4 + 5) forKey:@"kSlotTwo"];
  }

  return v2;
}

uint64_t sub_10009404C(void *a1, void *a2)
{
  v4 = [a1 objectForKey:@"kSlotOne"];
  if (!v4)
  {
    if (qword_1025D4660 != -1)
    {
      sub_101B4C13C();
    }

    v9 = qword_1025D4668;
    if (os_log_type_enabled(qword_1025D4668, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_ERROR, "#ctcl couldn't get Sim Status Change information for SIM 1", buf, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_101B4D88C();
    }

    return 0;
  }

  sub_100094468(buf, v4);
  v12 = 0;
  v15 = &v12;
  v5 = sub_10009422C(a2, &v12);
  *(v5 + 20) = *buf;
  *(v5 + 28) = v14;
  if (!sub_1000649A0())
  {
    return 1;
  }

  v6 = [a1 objectForKey:@"kSlotTwo"];
  if (!v6)
  {
    if (qword_1025D4660 != -1)
    {
      sub_101B4C030();
    }

    v10 = qword_1025D4668;
    if (os_log_type_enabled(qword_1025D4668, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_ERROR, "#ctcl couldn't get Sim Status Change information for SIM 2", buf, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_101B4D7B0();
    }

    return 0;
  }

  sub_100094468(buf, v6);
  v7 = 1;
  v12 = 1;
  v15 = &v12;
  v8 = sub_10009422C(a2, &v12);
  *(v8 + 20) = *buf;
  *(v8 + 28) = v14;
  return v7;
}

uint64_t *sub_10009422C(void *a1, int *a2)
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

  if (*(v7 + 4) != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

uint64_t sub_10009446C(uint64_t a1, const __CFDictionary *a2)
{
  *a1 = -1;
  v3 = (a1 + 4);
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  sub_100005548(v10, a2);
  if (sub_1000052CC(v10, @"kMccKey", a1))
  {
    if (sub_1000052CC(v10, @"kMncKey", v3))
    {
      if ((sub_10001CBC0(v10, @"kIs3DigitMnc", v4) & 1) == 0)
      {
        if (qword_1025D4870 != -1)
        {
          sub_1018C8028();
        }

        v5 = qword_1025D4878;
        if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_ERROR, "#clct,CLCTMccMnc, couldn't get value for is3DigitMnc", buf, 2u);
        }

        if (sub_10000A100(121, 0))
        {
LABEL_22:
          sub_1018C7FE4(buf);
          v9 = _os_log_send_and_compose_impl();
          sub_100152C7C("Generic", 1, 0, 0, "CLTelephonyService_Type::CLCTMccAndMnc::CLCTMccAndMnc(CFDictionaryRef)", "%s\n", v9);
          if (v9 != buf)
          {
            free(v9);
          }
        }
      }
    }

    else
    {
      if (qword_1025D4870 != -1)
      {
        sub_1018C8028();
      }

      v7 = qword_1025D4878;
      if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_ERROR, "#clct,CLCTMccMnc, couldn't get value for mnc", buf, 2u);
      }

      if (sub_10000A100(121, 0))
      {
        goto LABEL_22;
      }
    }
  }

  else
  {
    if (qword_1025D4870 != -1)
    {
      sub_1018C8028();
    }

    v6 = qword_1025D4878;
    if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_ERROR, "#clct,CLCTMccMnc, couldn't get value for mcc", buf, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      goto LABEL_22;
    }
  }

  sub_100005DA4(v10);
  return a1;
}

void sub_10009480C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_100005DA4(va);
  _Unwind_Resume(a1);
}

void sub_100094834(uint64_t a1, int a2, unint64_t a3, char a4)
{
  v8 = HIDWORD(a3);
  v9 = sub_100075080(a2, 1);
  if (a3 == -1 && v8 == 0xFFFFFFFF)
  {
    if (qword_1025D4870 != -1)
    {
      sub_101A54038();
    }

    v10 = qword_1025D4878;
    if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289282;
      *v17 = 0;
      *&v17[4] = 2082;
      *&v17[6] = "";
      v18 = 1026;
      v19 = a2;
      _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#CLConfig,handleServingMccMncChange,operator mcc and mnc are invalid, inst:%{public}d}", buf, 0x18u);
    }
  }

  else
  {
    if (qword_1025D4870 != -1)
    {
      sub_101A54038();
    }

    v11 = qword_1025D4878;
    if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68290050;
      *v17 = 0;
      *&v17[4] = 2082;
      *&v17[6] = "";
      v18 = 1026;
      v19 = a2;
      v20 = 1026;
      v21 = a3;
      v22 = 1026;
      v23 = v8;
      v24 = 1026;
      v25 = a4 & 1;
      _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#CLConfig,handleServingMccMncChange,operator mcc and mnc updated, inst:%{public}d, MCC:%{public}d, MNC:%{public}d, is3DigitMnc:%{public}hhd}", buf, 0x2Au);
    }

    for (i = *(a1 + 272); i; i = *i)
    {
      v13 = i[3];
      if (v13)
      {
        (*(*v13 + 64))(v13, v9, a3, v8, a4 & 1);
      }

      else
      {
        if (qword_1025D4870 != -1)
        {
          sub_100248578();
        }

        v14 = qword_1025D4878;
        if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_ERROR))
        {
          v15 = [(__CFString *)sub_100CCA5D4(*(i + 4)) UTF8String];
          *buf = 136446210;
          *v17 = v15;
          _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_ERROR, "#CLConfig,%{public}s,handleServingMccMncChange,pointer for component was null", buf, 0xCu);
        }

        if (sub_10000A100(121, 0))
        {
          sub_101A551CC();
        }
      }
    }
  }
}

uint64_t sub_100094AF0(uint64_t a1, int a2, int a3, int a4, char a5)
{
  v16 = a2;
  *buf = &v16;
  v9 = sub_10008608C((a1 + 248), &v16);
  *(v9 + 12) = a3;
  *(v9 + 13) = a4;
  *buf = &v16;
  result = sub_100094C70((a1 + 288), &v16);
  v11 = *(result + 20);
  v12 = *(result + 24);
  *(result + 20) = a3;
  *(result + 24) = a4;
  *(result + 28) = a5;
  if (v11 != a3 || v12 != a4)
  {
    if (qword_1025D4870 != -1)
    {
      sub_101BCE390();
    }

    v14 = qword_1025D4878;
    if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_DEFAULT))
    {
      v15 = [*(a1 + 16) UTF8String];
      *buf = 136446210;
      *&buf[4] = v15;
      _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_DEFAULT, "#CLConfig,%{public}s,handleMccMncChange,MCC/MNC changed", buf, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101BCEAFC();
    }

    result = sub_100CCD30C(a1);
    if (result)
    {
      sub_101357AB0(a1);
      sub_101357724(a1);
      return sub_101355FDC(a1);
    }
  }

  return result;
}

uint64_t *sub_100094C70(void *a1, int *a2)
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

  if (*(v7 + 4) != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

NSDictionary *sub_100094EAC(uint64_t a1)
{
  v2 = @"outcome";
  v3 = [NSString stringWithUTF8String:*(a1 + 32)];
  return [NSDictionary dictionaryWithObjects:&v3 forKeys:&v2 count:1];
}

uint64_t sub_100094F30(uint64_t *a1, uint64_t a2, _DWORD *a3, _OWORD *a4, _BYTE *a5)
{
  v5 = 0x84BDA12F684BDA13 * ((a1[1] - *a1) >> 5);
  v6 = v5 + 1;
  if (v5 + 1 > 0x4BDA12F684BDA1)
  {
    sub_10028C64C();
  }

  if (0x97B425ED097B426 * ((a1[2] - *a1) >> 5) > v6)
  {
    v6 = 0x97B425ED097B426 * ((a1[2] - *a1) >> 5);
  }

  if (0x84BDA12F684BDA13 * ((a1[2] - *a1) >> 5) >= 0x25ED097B425ED0)
  {
    v12 = 0x4BDA12F684BDA1;
  }

  else
  {
    v12 = v6;
  }

  v61 = a1;
  if (v12)
  {
    sub_100093CC8(a1, v12);
  }

  v13 = 864 * v5;
  v58 = 0;
  v59 = v13;
  v60 = 864 * v5;
  v14 = *(a2 + 16);
  v15 = *(a2 + 32);
  v16 = *(a2 + 48);
  *(v13 + 60) = *(a2 + 60);
  *(v13 + 32) = v15;
  *(v13 + 48) = v16;
  *(v13 + 16) = v14;
  *v13 = *a2;
  *(v13 + 80) = *(a2 + 80);
  v17 = 864 * v5;
  *(v17 + 88) = 0;
  *(v13 + 96) = 0;
  *(v13 + 104) = 0;
  sub_10038EB38(v17 + 88, *(a2 + 88), *(a2 + 96), (*(a2 + 96) - *(a2 + 88)) >> 2);
  *(v13 + 112) = *(a2 + 112);
  v18 = *(a2 + 128);
  v19 = *(a2 + 144);
  v20 = *(a2 + 176);
  *(v13 + 160) = *(a2 + 160);
  *(v13 + 176) = v20;
  *(v13 + 128) = v18;
  *(v13 + 144) = v19;
  v21 = *(a2 + 192);
  v22 = *(a2 + 208);
  v23 = *(a2 + 240);
  *(v13 + 224) = *(a2 + 224);
  *(v13 + 240) = v23;
  *(v13 + 192) = v21;
  *(v13 + 208) = v22;
  v24 = *(a2 + 256);
  v25 = *(a2 + 272);
  v26 = *(a2 + 288);
  *(v13 + 300) = *(a2 + 300);
  *(v13 + 272) = v25;
  *(v13 + 288) = v26;
  *(v13 + 256) = v24;
  if (*(a2 + 343) < 0)
  {
    sub_100007244((v13 + 320), *(a2 + 320), *(a2 + 328));
  }

  else
  {
    v27 = *(a2 + 320);
    *(v13 + 336) = *(a2 + 336);
    *(v13 + 320) = v27;
  }

  v28 = *(a2 + 344);
  v29 = *(a2 + 376);
  *(v13 + 360) = *(a2 + 360);
  *(v13 + 376) = v29;
  *(v13 + 344) = v28;
  v30 = *(a2 + 392);
  v31 = *(a2 + 408);
  v32 = *(a2 + 440);
  *(v13 + 424) = *(a2 + 424);
  *(v13 + 440) = v32;
  *(v13 + 392) = v30;
  *(v13 + 408) = v31;
  v33 = *(a2 + 456);
  v34 = *(a2 + 472);
  v35 = *(a2 + 488);
  *(v13 + 504) = *(a2 + 504);
  *(v13 + 472) = v34;
  *(v13 + 488) = v35;
  *(v13 + 456) = v33;
  v36 = *(a2 + 512);
  v37 = *(a2 + 528);
  v38 = *(a2 + 560);
  *(v13 + 544) = *(a2 + 544);
  *(v13 + 560) = v38;
  *(v13 + 512) = v36;
  *(v13 + 528) = v37;
  v39 = *(a2 + 576);
  v40 = *(a2 + 592);
  v41 = *(a2 + 624);
  *(v13 + 608) = *(a2 + 608);
  *(v13 + 624) = v41;
  *(v13 + 576) = v39;
  *(v13 + 592) = v40;
  v42 = *(a2 + 640);
  v43 = *(a2 + 656);
  v44 = *(a2 + 672);
  *(v13 + 688) = *(a2 + 688);
  *(v13 + 656) = v43;
  *(v13 + 672) = v44;
  *(v13 + 640) = v42;
  *(v13 + 696) = *a3;
  v45 = a4[1];
  *(v13 + 700) = *a4;
  *(v13 + 716) = v45;
  v46 = a4[2];
  v47 = a4[3];
  v48 = a4[5];
  *(v13 + 764) = a4[4];
  *(v13 + 780) = v48;
  *(v13 + 732) = v46;
  *(v13 + 748) = v47;
  v49 = a4[6];
  v50 = a4[7];
  v51 = a4[8];
  *(v13 + 840) = *(a4 + 140);
  *(v13 + 812) = v50;
  *(v13 + 828) = v51;
  *(v13 + 796) = v49;
  *(v13 + 856) = *a5;
  *&v60 = v60 + 864;
  v52 = a1[1];
  v53 = v59 + *a1 - v52;
  sub_100093D24(a1, *a1, v52, v53);
  v54 = *a1;
  *a1 = v53;
  v55 = a1[2];
  v57 = v60;
  *(a1 + 1) = v60;
  *&v60 = v54;
  *(&v60 + 1) = v55;
  v58 = v54;
  v59 = v54;
  sub_100095214(&v58);
  return v57;
}

void sub_1000951E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  v7 = *v4;
  if (*v4)
  {
    *(v5 + 96) = v7;
    operator delete(v7);
  }

  sub_100095214(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100095214(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 864;
    sub_1000720CC(i - 864);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_100095264(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v7 = 0;
    do
    {
      v8 = a2 + v7;
      v9 = a4 + v7;
      *v9 = *(a2 + v7);
      v10 = *(a2 + v7 + 16);
      v11 = *(a2 + v7 + 32);
      v12 = *(a2 + v7 + 48);
      *(v9 + 60) = *(a2 + v7 + 60);
      *(v9 + 32) = v11;
      *(v9 + 48) = v12;
      *(v9 + 16) = v10;
      v13 = *(a2 + v7 + 80);
      *(a4 + v7 + 88) = 0;
      v14 = a4 + v7 + 88;
      *(v14 - 8) = v13;
      *(v14 + 8) = 0;
      *(v14 + 16) = 0;
      sub_10038EB38(v14, *(a2 + v7 + 88), *(a2 + v7 + 96), (*(a2 + v7 + 96) - *(a2 + v7 + 88)) >> 2);
      *(v9 + 112) = *(a2 + v7 + 112);
      v15 = *(a2 + v7 + 128);
      v16 = *(a2 + v7 + 144);
      v17 = *(a2 + v7 + 176);
      *(v9 + 160) = *(a2 + v7 + 160);
      *(v9 + 176) = v17;
      *(v9 + 128) = v15;
      *(v9 + 144) = v16;
      v18 = *(a2 + v7 + 192);
      v19 = *(a2 + v7 + 208);
      v20 = *(a2 + v7 + 240);
      *(v9 + 224) = *(a2 + v7 + 224);
      *(v9 + 240) = v20;
      *(v9 + 192) = v18;
      *(v9 + 208) = v19;
      v21 = *(a2 + v7 + 256);
      v22 = *(a2 + v7 + 272);
      v23 = *(a2 + v7 + 288);
      *(v9 + 300) = *(a2 + v7 + 300);
      *(v9 + 272) = v22;
      *(v9 + 288) = v23;
      *(v9 + 256) = v21;
      if (*(a2 + v7 + 343) < 0)
      {
        sub_100007244((v9 + 320), *(v8 + 320), *(a2 + v7 + 328));
      }

      else
      {
        v24 = *(v8 + 320);
        *(v9 + 336) = *(v8 + 336);
        *(v9 + 320) = v24;
      }

      v25 = a4 + v7;
      v26 = (a4 + v7 + 344);
      v27 = *(v8 + 344);
      v28 = *(v8 + 376);
      v26[1] = *(v8 + 360);
      v26[2] = v28;
      *v26 = v27;
      v29 = *(v8 + 392);
      v30 = *(v8 + 408);
      v31 = *(v8 + 440);
      v26[5] = *(v8 + 424);
      v26[6] = v31;
      v26[3] = v29;
      v26[4] = v30;
      v32 = *(v8 + 456);
      v33 = *(v8 + 472);
      v34 = *(v8 + 488);
      *(v25 + 504) = *(v8 + 504);
      v26[8] = v33;
      v26[9] = v34;
      v26[7] = v32;
      v35 = *(v8 + 512);
      v36 = *(v8 + 528);
      v37 = *(v8 + 560);
      *(v25 + 544) = *(v8 + 544);
      *(v25 + 560) = v37;
      *(v25 + 512) = v35;
      *(v25 + 528) = v36;
      v38 = *(v8 + 576);
      v39 = *(v8 + 592);
      v40 = *(v8 + 624);
      *(v25 + 608) = *(v8 + 608);
      *(v25 + 624) = v40;
      *(v25 + 576) = v38;
      *(v25 + 592) = v39;
      v41 = *(v8 + 640);
      v42 = *(v8 + 656);
      v43 = *(v8 + 672);
      *(v25 + 688) = *(v8 + 688);
      *(v25 + 656) = v42;
      *(v25 + 672) = v43;
      *(v25 + 640) = v41;
      *(v25 + 696) = *(v8 + 696);
      v44 = (a4 + v7 + 700);
      v45 = *(v8 + 716);
      *v44 = *(v8 + 700);
      v44[1] = v45;
      v46 = *(v8 + 732);
      v47 = *(v8 + 748);
      v48 = *(v8 + 780);
      v44[4] = *(v8 + 764);
      v44[5] = v48;
      v44[2] = v46;
      v44[3] = v47;
      v49 = *(v8 + 796);
      v50 = *(v8 + 812);
      v51 = *(v8 + 828);
      *(v44 + 140) = *(v8 + 840);
      v44[7] = v50;
      v44[8] = v51;
      v44[6] = v49;
      *(v25 + 856) = *(v8 + 856);
      v7 += 864;
    }

    while (v8 + 864 != a3);
    a4 += v7;
  }

  return a4;
}

void sub_100095448(_Unwind_Exception *exception_object)
{
  v4 = *(v1 + v2 + 88);
  if (v4)
  {
    *(v1 + v2 + 96) = v4;
    operator delete(v4);
  }

  if (v2)
  {
    v5 = v1 + v2 - 864;
    v6 = -v2;
    do
    {
      sub_1000720CC(v5);
      v5 -= 864;
      v6 += 864;
    }

    while (v6);
  }

  _Unwind_Resume(exception_object);
}

void sub_100095494(uint64_t a1, unint64_t a2, uint64_t a3, char a4)
{
  while (2)
  {
    v231 = (a2 - 864);
    v5 = a1;
    while (1)
    {
      while (1)
      {
        while (1)
        {
          a1 = v5;
          v6 = a2 - v5;
          v7 = 0x84BDA12F684BDA13 * ((a2 - v5) >> 5);
          if (v7 > 2)
          {
            switch(v7)
            {
              case 3uLL:
                sub_1006831B0(v5, v5 + 864, v231);
                return;
              case 4uLL:
                sub_1006835D8(v5, v5 + 864, v5 + 1728, v231);
                return;
              case 5uLL:
                sub_100683898(v5, v5 + 864, v5 + 1728, v5 + 2592, v231);
                return;
            }
          }

          else
          {
            if (v7 < 2)
            {
              return;
            }

            if (v7 == 2)
            {
              if (sub_100682FBC(v231, v5))
              {
                sub_10068470C(v5, v231);
                v148 = *(v5 + 696);
                *(v5 + 696) = *(a2 - 168);
                *(a2 - 168) = v148;
                v149 = *(v5 + 780);
                *&v237[16] = *(v5 + 764);
                *v238 = v149;
                v150 = *(v5 + 748);
                v236 = *(v5 + 732);
                *v237 = v150;
                *(v240 + 12) = *(v5 + 840);
                v151 = *(v5 + 828);
                v239 = *(v5 + 812);
                v240[0] = v151;
                *&v238[16] = *(v5 + 796);
                v152 = *(v5 + 716);
                v234 = *(v5 + 700);
                v235 = v152;
                v153 = *(a2 - 148);
                *(v5 + 700) = *(a2 - 164);
                *(v5 + 716) = v153;
                v154 = *(a2 - 132);
                v155 = *(a2 - 116);
                v156 = *(a2 - 84);
                *(v5 + 764) = *(a2 - 100);
                *(v5 + 780) = v156;
                *(v5 + 732) = v154;
                *(v5 + 748) = v155;
                v157 = *(a2 - 68);
                v158 = *(a2 - 52);
                v159 = *(a2 - 36);
                *(v5 + 840) = *(a2 - 24);
                *(v5 + 812) = v158;
                *(v5 + 828) = v159;
                *(v5 + 796) = v157;
                v160 = v234;
                *(a2 - 148) = v235;
                *(a2 - 164) = v160;
                v161 = v236;
                v162 = *v237;
                v163 = *&v237[16];
                *(a2 - 84) = *v238;
                *(a2 - 100) = v163;
                *(a2 - 116) = v162;
                *(a2 - 132) = v161;
                v164 = *&v238[16];
                v165 = v239;
                v166 = v240[0];
                *(a2 - 24) = *(v240 + 12);
                *(a2 - 36) = v166;
                *(a2 - 52) = v165;
                *(a2 - 68) = v164;
                LOBYTE(v148) = *(v5 + 856);
                *(v5 + 856) = *(a2 - 8);
                *(a2 - 8) = v148;
              }

              return;
            }
          }

          if (v6 <= 20735)
          {
            if (a4)
            {
              if (v5 != a2)
              {
                v167 = v5 + 864;
                if (v5 + 864 != a2)
                {
                  v168 = 0;
                  v169 = v5;
                  do
                  {
                    v170 = v167;
                    if (sub_100682FBC(v167, v169))
                    {
                      v234 = *v170;
                      v171 = v170[1];
                      v172 = v170[2];
                      v173 = v170[3];
                      *&v237[12] = *(v170 + 60);
                      v236 = v172;
                      *v237 = v173;
                      v235 = v171;
                      *v238 = *(v169 + 944);
                      *&v238[8] = *(v169 + 952);
                      *&v238[24] = *(v169 + 968);
                      *(v169 + 968) = 0;
                      *(v169 + 952) = 0u;
                      v174 = *(v169 + 976);
                      v175 = *(v169 + 992);
                      v176 = *(v169 + 1024);
                      v177 = *(v169 + 1040);
                      v240[1] = *(v169 + 1008);
                      v241 = v176;
                      v239 = v174;
                      v240[0] = v175;
                      v178 = *(v169 + 1056);
                      v179 = *(v169 + 1088);
                      v180 = *(v169 + 1104);
                      v244 = *(v169 + 1072);
                      v245 = v179;
                      v242 = v177;
                      v243 = v178;
                      v181 = *(v169 + 1120);
                      v182 = *(v169 + 1136);
                      *(v249 + 12) = *(v169 + 1164);
                      v183 = *(v169 + 1152);
                      v248 = v182;
                      v249[0] = v183;
                      v246 = v180;
                      v247 = v181;
                      __p = *(v169 + 1184);
                      v251 = *(v169 + 1200);
                      *(v169 + 1184) = 0;
                      *(v169 + 1200) = 0;
                      *(v169 + 1192) = 0;
                      v184 = *(v169 + 1352);
                      v260 = *(v169 + 1336);
                      v261 = v184;
                      v262 = *(v169 + 1368);
                      v185 = *(v169 + 1288);
                      v256 = *(v169 + 1272);
                      v257 = v185;
                      v186 = *(v169 + 1320);
                      v258 = *(v169 + 1304);
                      v259 = v186;
                      v187 = *(v169 + 1224);
                      v252 = *(v169 + 1208);
                      v253 = v187;
                      v188 = *(v169 + 1256);
                      v254 = *(v169 + 1240);
                      v255 = v188;
                      v189 = *(v169 + 1520);
                      v271 = *(v169 + 1504);
                      v272 = v189;
                      v273 = *(v169 + 1536);
                      v274 = *(v169 + 1552);
                      v190 = *(v169 + 1456);
                      v267 = *(v169 + 1440);
                      v268 = v190;
                      v191 = *(v169 + 1488);
                      v269 = *(v169 + 1472);
                      v270 = v191;
                      v192 = *(v169 + 1392);
                      v263 = *(v169 + 1376);
                      v264 = v192;
                      v193 = *(v169 + 1424);
                      v265 = *(v169 + 1408);
                      v266 = v193;
                      v275 = *(v169 + 1560);
                      v194 = *(v169 + 1676);
                      v282 = *(v169 + 1660);
                      v283 = v194;
                      *v284 = *(v169 + 1692);
                      *&v284[12] = *(v169 + 1704);
                      v195 = *(v169 + 1612);
                      v278 = *(v169 + 1596);
                      v279 = v195;
                      v196 = *(v169 + 1644);
                      v280 = *(v169 + 1628);
                      v281 = v196;
                      v197 = *(v169 + 1580);
                      v276 = *(v169 + 1564);
                      v277 = v197;
                      v198 = v168;
                      v285 = *(v169 + 1720);
                      while (1)
                      {
                        sub_100684ADC(v5 + v198 + 864, v5 + v198);
                        if (!v198)
                        {
                          break;
                        }

                        v199 = sub_100682FBC(&v234, v5 + v198 - 864);
                        v198 -= 864;
                        if (!v199)
                        {
                          v200 = v5 + v198 + 864;
                          goto LABEL_81;
                        }
                      }

                      v200 = v5;
LABEL_81:
                      sub_100684ADC(v200, &v234);
                      if (SHIBYTE(v251) < 0)
                      {
                        operator delete(__p);
                      }

                      if (*&v238[8])
                      {
                        *&v238[16] = *&v238[8];
                        operator delete(*&v238[8]);
                      }
                    }

                    v167 = (v170 + 54);
                    v168 += 864;
                    v169 = v170;
                  }

                  while (v170 + 54 != a2);
                }
              }
            }

            else if (v5 != a2)
            {
              v201 = v5 + 864;
              if (v5 + 864 != a2)
              {
                do
                {
                  v202 = v201;
                  if (sub_100682FBC(v201, a1))
                  {
                    v234 = *v202;
                    v203 = v202[1];
                    v204 = v202[2];
                    v205 = v202[3];
                    *&v237[12] = *(v202 + 60);
                    v236 = v204;
                    *v237 = v205;
                    v235 = v203;
                    *v238 = *(a1 + 944);
                    *&v238[8] = *(a1 + 952);
                    *&v238[24] = *(a1 + 968);
                    *(a1 + 968) = 0;
                    *(a1 + 952) = 0u;
                    v206 = *(a1 + 976);
                    v207 = *(a1 + 992);
                    v208 = *(a1 + 1024);
                    v209 = *(a1 + 1040);
                    v240[1] = *(a1 + 1008);
                    v241 = v208;
                    v239 = v206;
                    v240[0] = v207;
                    v210 = *(a1 + 1056);
                    v211 = *(a1 + 1088);
                    v212 = *(a1 + 1104);
                    v244 = *(a1 + 1072);
                    v245 = v211;
                    v242 = v209;
                    v243 = v210;
                    v213 = *(a1 + 1120);
                    v214 = *(a1 + 1136);
                    *(v249 + 12) = *(a1 + 1164);
                    v215 = *(a1 + 1152);
                    v248 = v214;
                    v249[0] = v215;
                    v246 = v212;
                    v247 = v213;
                    __p = *(a1 + 1184);
                    v251 = *(a1 + 1200);
                    *(a1 + 1184) = 0;
                    *(a1 + 1200) = 0;
                    *(a1 + 1192) = 0;
                    v216 = *(a1 + 1352);
                    v260 = *(a1 + 1336);
                    v261 = v216;
                    v262 = *(a1 + 1368);
                    v217 = *(a1 + 1288);
                    v256 = *(a1 + 1272);
                    v257 = v217;
                    v218 = *(a1 + 1320);
                    v258 = *(a1 + 1304);
                    v259 = v218;
                    v219 = *(a1 + 1224);
                    v252 = *(a1 + 1208);
                    v253 = v219;
                    v220 = *(a1 + 1256);
                    v254 = *(a1 + 1240);
                    v255 = v220;
                    v221 = *(a1 + 1520);
                    v271 = *(a1 + 1504);
                    v272 = v221;
                    v273 = *(a1 + 1536);
                    v274 = *(a1 + 1552);
                    v222 = *(a1 + 1456);
                    v267 = *(a1 + 1440);
                    v268 = v222;
                    v223 = *(a1 + 1488);
                    v269 = *(a1 + 1472);
                    v270 = v223;
                    v224 = *(a1 + 1392);
                    v263 = *(a1 + 1376);
                    v264 = v224;
                    v225 = *(a1 + 1424);
                    v265 = *(a1 + 1408);
                    v266 = v225;
                    v275 = *(a1 + 1560);
                    v226 = *(a1 + 1676);
                    v282 = *(a1 + 1660);
                    v283 = v226;
                    *v284 = *(a1 + 1692);
                    *&v284[12] = *(a1 + 1704);
                    v227 = *(a1 + 1612);
                    v278 = *(a1 + 1596);
                    v279 = v227;
                    v228 = *(a1 + 1644);
                    v280 = *(a1 + 1628);
                    v281 = v228;
                    v229 = *(a1 + 1580);
                    v276 = *(a1 + 1564);
                    v277 = v229;
                    v285 = *(a1 + 1720);
                    do
                    {
                      sub_100684ADC(a1 + 864, a1);
                      a1 -= 864;
                    }

                    while (sub_100682FBC(&v234, a1));
                    sub_100684ADC(a1 + 864, &v234);
                    if (SHIBYTE(v251) < 0)
                    {
                      operator delete(__p);
                    }

                    if (*&v238[8])
                    {
                      *&v238[16] = *&v238[8];
                      operator delete(*&v238[8]);
                    }
                  }

                  v201 = (v202 + 54);
                  a1 = v202;
                }

                while (v202 + 54 != a2);
              }
            }

            return;
          }

          if (!a3)
          {
            sub_100683C34(v5, a2, a2);
            return;
          }

          v8 = v7 >> 1;
          v9 = v5 + 864 * (v7 >> 1);
          if (v6 <= 0x1B000)
          {
            sub_1006831B0(a1 + 864 * (v7 >> 1), a1, v231);
          }

          else
          {
            sub_1006831B0(a1, a1 + 864 * (v7 >> 1), v231);
            v10 = 864 * v8;
            sub_1006831B0(a1 + 864, v10 + a1 - 864, a2 - 1728);
            sub_1006831B0(a1 + 1728, a1 + 864 + v10, a2 - 2592);
            sub_1006831B0(v10 + a1 - 864, v9, a1 + 864 + v10);
            sub_10068470C(a1, v9);
            v11 = *(a1 + 696);
            *(a1 + 696) = *(v9 + 696);
            *(v9 + 696) = v11;
            v12 = *(a1 + 780);
            *&v237[16] = *(a1 + 764);
            *v238 = v12;
            v13 = *(a1 + 748);
            v236 = *(a1 + 732);
            *v237 = v13;
            *(v240 + 12) = *(a1 + 840);
            v14 = *(a1 + 828);
            v239 = *(a1 + 812);
            v240[0] = v14;
            *&v238[16] = *(a1 + 796);
            v15 = *(a1 + 716);
            v234 = *(a1 + 700);
            v235 = v15;
            v16 = *(v9 + 716);
            *(a1 + 700) = *(v9 + 700);
            *(a1 + 716) = v16;
            v17 = *(v9 + 732);
            v18 = *(v9 + 748);
            v19 = *(v9 + 780);
            *(a1 + 764) = *(v9 + 764);
            *(a1 + 780) = v19;
            *(a1 + 732) = v17;
            *(a1 + 748) = v18;
            v20 = *(v9 + 796);
            v21 = *(v9 + 812);
            v22 = *(v9 + 828);
            *(a1 + 840) = *(v9 + 840);
            *(a1 + 812) = v21;
            *(a1 + 828) = v22;
            *(a1 + 796) = v20;
            v23 = v235;
            *(v9 + 700) = v234;
            *(v9 + 716) = v23;
            v24 = v236;
            v25 = *v237;
            v26 = *v238;
            *(v9 + 764) = *&v237[16];
            *(v9 + 780) = v26;
            *(v9 + 732) = v24;
            *(v9 + 748) = v25;
            v27 = *&v238[16];
            v28 = v239;
            v29 = v240[0];
            *(v9 + 840) = *(v240 + 12);
            *(v9 + 812) = v28;
            *(v9 + 828) = v29;
            *(v9 + 796) = v27;
            LOBYTE(v11) = *(a1 + 856);
            *(a1 + 856) = *(v9 + 856);
            *(v9 + 856) = v11;
          }

          --a3;
          if ((a4 & 1) != 0 || sub_100682FBC(a1 - 864, a1))
          {
            break;
          }

          v234 = *a1;
          v91 = *(a1 + 16);
          v92 = *(a1 + 32);
          v93 = *(a1 + 48);
          *&v237[12] = *(a1 + 60);
          v236 = v92;
          *v237 = v93;
          v235 = v91;
          *v238 = *(a1 + 80);
          *&v238[8] = *(a1 + 88);
          *&v238[24] = *(a1 + 104);
          *(a1 + 96) = 0;
          *(a1 + 104) = 0;
          *(a1 + 88) = 0;
          v239 = *(a1 + 112);
          v94 = *(a1 + 128);
          v95 = *(a1 + 144);
          v96 = *(a1 + 176);
          v241 = *(a1 + 160);
          v242 = v96;
          v240[0] = v94;
          v240[1] = v95;
          v97 = *(a1 + 192);
          v98 = *(a1 + 208);
          v99 = *(a1 + 240);
          v245 = *(a1 + 224);
          v246 = v99;
          v243 = v97;
          v244 = v98;
          v100 = *(a1 + 256);
          v101 = *(a1 + 272);
          v102 = *(a1 + 288);
          *(v249 + 12) = *(a1 + 300);
          v248 = v101;
          v249[0] = v102;
          v247 = v100;
          v103 = *(a1 + 320);
          v251 = *(a1 + 336);
          __p = v103;
          *(a1 + 328) = 0;
          *(a1 + 336) = 0;
          *(a1 + 320) = 0;
          v104 = *(a1 + 440);
          v106 = *(a1 + 392);
          v105 = *(a1 + 408);
          v257 = *(a1 + 424);
          v258 = v104;
          v255 = v106;
          v256 = v105;
          v107 = *(a1 + 344);
          v108 = *(a1 + 376);
          v253 = *(a1 + 360);
          v254 = v108;
          v252 = v107;
          v110 = *(a1 + 472);
          v109 = *(a1 + 488);
          v111 = *(a1 + 456);
          v262 = *(a1 + 504);
          v260 = v110;
          v261 = v109;
          v259 = v111;
          v112 = *(a1 + 512);
          v113 = *(a1 + 528);
          v114 = *(a1 + 560);
          v265 = *(a1 + 544);
          v266 = v114;
          v263 = v112;
          v264 = v113;
          v115 = *(a1 + 576);
          v116 = *(a1 + 592);
          v117 = *(a1 + 624);
          v269 = *(a1 + 608);
          v270 = v117;
          v267 = v115;
          v268 = v116;
          v118 = *(a1 + 640);
          v119 = *(a1 + 656);
          v120 = *(a1 + 672);
          v274 = *(a1 + 688);
          v272 = v119;
          v273 = v120;
          v271 = v118;
          v275 = *(a1 + 696);
          v121 = *(a1 + 716);
          v276 = *(a1 + 700);
          v277 = v121;
          v122 = *(a1 + 780);
          v124 = *(a1 + 732);
          v123 = *(a1 + 748);
          v280 = *(a1 + 764);
          v281 = v122;
          v278 = v124;
          v279 = v123;
          v126 = *(a1 + 812);
          v125 = *(a1 + 828);
          v127 = *(a1 + 796);
          *&v284[12] = *(a1 + 840);
          v283 = v126;
          *v284 = v125;
          v282 = v127;
          v285 = *(a1 + 856);
          if (sub_100682FBC(&v234, v231))
          {
            v5 = a1;
            do
            {
              v5 += 864;
            }

            while (!sub_100682FBC(&v234, v5));
          }

          else
          {
            v128 = a1 + 864;
            do
            {
              v5 = v128;
              if (v128 >= a2)
              {
                break;
              }

              v129 = sub_100682FBC(&v234, v128);
              v128 = v5 + 864;
            }

            while (!v129);
          }

          v130 = a2;
          if (v5 < a2)
          {
            v130 = a2;
            do
            {
              v130 -= 864;
            }

            while (sub_100682FBC(&v234, v130));
          }

          while (v5 < v130)
          {
            sub_10068470C(v5, v130);
            v131 = *(v5 + 696);
            *(v5 + 696) = *(v130 + 696);
            *(v130 + 696) = v131;
            v132 = *(v5 + 812);
            v292 = *(v5 + 796);
            v293 = v132;
            v294[0] = *(v5 + 828);
            *(v294 + 12) = *(v5 + 840);
            v133 = *(v5 + 748);
            v288 = *(v5 + 732);
            v289 = v133;
            v134 = *(v5 + 780);
            v290 = *(v5 + 764);
            v291 = v134;
            v135 = *(v5 + 716);
            v286 = *(v5 + 700);
            v287 = v135;
            v136 = *(v130 + 716);
            *(v5 + 700) = *(v130 + 700);
            *(v5 + 716) = v136;
            v137 = *(v130 + 732);
            v138 = *(v130 + 748);
            v139 = *(v130 + 780);
            *(v5 + 764) = *(v130 + 764);
            *(v5 + 780) = v139;
            *(v5 + 732) = v137;
            *(v5 + 748) = v138;
            v140 = *(v130 + 796);
            v141 = *(v130 + 812);
            v142 = *(v130 + 828);
            *(v5 + 840) = *(v130 + 840);
            *(v5 + 812) = v141;
            *(v5 + 828) = v142;
            *(v5 + 796) = v140;
            v143 = v293;
            *(v130 + 796) = v292;
            *(v130 + 812) = v143;
            *(v130 + 828) = v294[0];
            *(v130 + 840) = *(v294 + 12);
            v144 = v289;
            *(v130 + 732) = v288;
            *(v130 + 748) = v144;
            v145 = v291;
            *(v130 + 764) = v290;
            *(v130 + 780) = v145;
            v146 = v287;
            *(v130 + 700) = v286;
            *(v130 + 716) = v146;
            LOBYTE(v131) = *(v5 + 856);
            *(v5 + 856) = *(v130 + 856);
            *(v130 + 856) = v131;
            do
            {
              v5 += 864;
            }

            while (!sub_100682FBC(&v234, v5));
            do
            {
              v130 -= 864;
            }

            while (sub_100682FBC(&v234, v130));
          }

          if (v5 - 864 != a1)
          {
            sub_100684ADC(a1, v5 - 864);
          }

          sub_100684ADC(v5 - 864, &v234);
          if (SHIBYTE(v251) < 0)
          {
            operator delete(__p);
          }

          if (*&v238[8])
          {
            *&v238[16] = *&v238[8];
            operator delete(*&v238[8]);
          }

          a4 = 0;
        }

        v30 = 0;
        v234 = *a1;
        v31 = *(a1 + 16);
        v32 = *(a1 + 32);
        v33 = *(a1 + 48);
        *&v237[12] = *(a1 + 60);
        v236 = v32;
        *v237 = v33;
        v235 = v31;
        *v238 = *(a1 + 80);
        *&v238[8] = *(a1 + 88);
        *&v238[24] = *(a1 + 104);
        *(a1 + 96) = 0;
        *(a1 + 104) = 0;
        *(a1 + 88) = 0;
        v239 = *(a1 + 112);
        v34 = *(a1 + 128);
        v35 = *(a1 + 144);
        v36 = *(a1 + 176);
        v241 = *(a1 + 160);
        v242 = v36;
        v240[0] = v34;
        v240[1] = v35;
        v37 = *(a1 + 192);
        v38 = *(a1 + 208);
        v39 = *(a1 + 240);
        v245 = *(a1 + 224);
        v246 = v39;
        v243 = v37;
        v244 = v38;
        v40 = *(a1 + 256);
        v41 = *(a1 + 272);
        v42 = *(a1 + 288);
        *(v249 + 12) = *(a1 + 300);
        v248 = v41;
        v249[0] = v42;
        v247 = v40;
        v43 = *(a1 + 320);
        v251 = *(a1 + 336);
        __p = v43;
        *(a1 + 328) = 0;
        *(a1 + 336) = 0;
        *(a1 + 320) = 0;
        v44 = *(a1 + 440);
        v46 = *(a1 + 392);
        v45 = *(a1 + 408);
        v257 = *(a1 + 424);
        v258 = v44;
        v255 = v46;
        v256 = v45;
        v47 = *(a1 + 344);
        v48 = *(a1 + 376);
        v253 = *(a1 + 360);
        v254 = v48;
        v252 = v47;
        v50 = *(a1 + 472);
        v49 = *(a1 + 488);
        v51 = *(a1 + 456);
        v262 = *(a1 + 504);
        v260 = v50;
        v261 = v49;
        v259 = v51;
        v52 = *(a1 + 512);
        v53 = *(a1 + 528);
        v54 = *(a1 + 560);
        v265 = *(a1 + 544);
        v266 = v54;
        v263 = v52;
        v264 = v53;
        v55 = *(a1 + 576);
        v56 = *(a1 + 592);
        v57 = *(a1 + 624);
        v269 = *(a1 + 608);
        v270 = v57;
        v267 = v55;
        v268 = v56;
        v58 = *(a1 + 640);
        v59 = *(a1 + 656);
        v60 = *(a1 + 672);
        v274 = *(a1 + 688);
        v272 = v59;
        v273 = v60;
        v271 = v58;
        v275 = *(a1 + 696);
        v61 = *(a1 + 716);
        v276 = *(a1 + 700);
        v277 = v61;
        v62 = *(a1 + 780);
        v64 = *(a1 + 732);
        v63 = *(a1 + 748);
        v280 = *(a1 + 764);
        v281 = v62;
        v278 = v64;
        v279 = v63;
        v66 = *(a1 + 812);
        v65 = *(a1 + 828);
        v67 = *(a1 + 796);
        *&v284[12] = *(a1 + 840);
        v283 = v66;
        *v284 = v65;
        v282 = v67;
        v285 = *(a1 + 856);
        do
        {
          v68 = sub_100682FBC(a1 + v30 + 864, &v234);
          v30 += 864;
        }

        while (v68);
        v69 = a1 + v30;
        v70 = a2;
        if (v30 == 864)
        {
          v70 = a2;
          do
          {
            if (v69 >= v70)
            {
              break;
            }

            v70 -= 864;
          }

          while (!sub_100682FBC(v70, &v234));
        }

        else
        {
          do
          {
            v70 -= 864;
          }

          while (!sub_100682FBC(v70, &v234));
        }

        if (v69 >= v70)
        {
          v89 = v69 - 864;
        }

        else
        {
          v71 = a1 + v30;
          v72 = v70;
          do
          {
            sub_10068470C(v71, v72);
            v73 = *(v71 + 696);
            *(v71 + 696) = *(v72 + 696);
            *(v72 + 696) = v73;
            v74 = *(v71 + 812);
            v292 = *(v71 + 796);
            v293 = v74;
            v294[0] = *(v71 + 828);
            *(v294 + 12) = *(v71 + 840);
            v75 = *(v71 + 748);
            v288 = *(v71 + 732);
            v289 = v75;
            v76 = *(v71 + 780);
            v290 = *(v71 + 764);
            v291 = v76;
            v77 = *(v71 + 716);
            v286 = *(v71 + 700);
            v287 = v77;
            v78 = *(v72 + 716);
            *(v71 + 700) = *(v72 + 700);
            *(v71 + 716) = v78;
            v79 = *(v72 + 732);
            v80 = *(v72 + 748);
            v81 = *(v72 + 780);
            *(v71 + 764) = *(v72 + 764);
            *(v71 + 780) = v81;
            *(v71 + 732) = v79;
            *(v71 + 748) = v80;
            v82 = *(v72 + 796);
            v83 = *(v72 + 812);
            v84 = *(v72 + 828);
            *(v71 + 840) = *(v72 + 840);
            *(v71 + 812) = v83;
            *(v71 + 828) = v84;
            *(v71 + 796) = v82;
            v85 = v293;
            *(v72 + 796) = v292;
            *(v72 + 812) = v85;
            *(v72 + 828) = v294[0];
            *(v72 + 840) = *(v294 + 12);
            v86 = v289;
            *(v72 + 732) = v288;
            *(v72 + 748) = v86;
            v87 = v291;
            *(v72 + 764) = v290;
            *(v72 + 780) = v87;
            v88 = v287;
            *(v72 + 700) = v286;
            *(v72 + 716) = v88;
            LOBYTE(v73) = *(v71 + 856);
            *(v71 + 856) = *(v72 + 856);
            *(v72 + 856) = v73;
            do
            {
              v71 += 864;
            }

            while (sub_100682FBC(v71, &v234));
            do
            {
              v72 -= 864;
            }

            while (!sub_100682FBC(v72, &v234));
          }

          while (v71 < v72);
          v89 = v71 - 864;
        }

        if (v89 != a1)
        {
          sub_100684ADC(a1, v89);
        }

        sub_100684ADC(v89, &v234);
        if (SHIBYTE(v251) < 0)
        {
          operator delete(__p);
        }

        if (*&v238[8])
        {
          *&v238[16] = *&v238[8];
          operator delete(*&v238[8]);
        }

        if (v69 >= v70)
        {
          break;
        }

LABEL_41:
        sub_100095494(a1, v89, a3, a4 & 1);
        a4 = 0;
        v5 = v89 + 864;
      }

      v90 = sub_1006842B4(a1, v89);
      v5 = v89 + 864;
      if (sub_1006842B4(v89 + 864, a2))
      {
        break;
      }

      if (!v90)
      {
        goto LABEL_41;
      }
    }

    a2 = v89;
    if (!v90)
    {
      continue;
    }

    break;
  }
}

void sub_100096320(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_10056D2F4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100096364(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  v6 = sub_1000081AC();

  return sub_1000963BC(a1, a2, a3, v6);
}

uint64_t sub_1000963BC(uint64_t a1, uint64_t a2, _OWORD *a3, double a4)
{
  v7 = a4 - *(a1 + 2264);
  if (*(a1 + 2280) != 1 || (v7 > 0.0 ? (v8 = v7 < 2.0) : (v8 = 0), !v8))
  {
    if (qword_1025D4620 != -1)
    {
      sub_1018C4718();
    }

    v10 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
    {
      v11 = *(a1 + 2280);
      *buf = 67240448;
      LODWORD(v58) = v11;
      WORD2(v58) = 2050;
      *(&v58 + 6) = v7;
      _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEBUG, "CellFlow, updateCellRefreshResults, fWaitForNewCellAfterAirplaneMode, %{public}d, airplaneModeDisableAgeSecs, %{public}f", buf, 0x12u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018C4CC0((a1 + 2280), v7);
    }

LABEL_21:
    if (*(a1 + 2281) == 1)
    {
      if (sub_1000974F8(a2, a1 + 160))
      {
        v12 = sub_100073270(a3, a1);
        *(a1 + 2281) = v12;
        v13 = !v12;
      }

      else
      {
        *(a1 + 2281) = 0;
        v13 = 1;
      }
    }

    else
    {
      v13 = 1;
      *(a1 + 2281) = 1;
    }

    if (qword_1025D4620 != -1)
    {
      sub_1018C4910();
    }

    v15 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
    {
      v16 = *(a1 + 2281);
      v17 = sub_1000974F8(a2, a1 + 160);
      v18 = sub_10056CF60(a3, a1);
      *buf = 67240960;
      LODWORD(v58) = v16;
      WORD2(v58) = 1026;
      *(&v58 + 6) = v13 & 1;
      WORD5(v58) = 1026;
      HIDWORD(v58) = v17;
      v59 = 1026;
      v60 = v18;
      _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_DEBUG, "CellFlow, skipnotify, %{public}d, retval, %{public}d, cell, %{public}d, latlon, %{public}d,", buf, 0x1Au);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4620 != -1)
      {
        sub_1018C4910();
      }

      sub_1000974F8(a2, a1 + 160);
      sub_10056CF60(a3, a1);
      v56 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "BOOL CLCellLocationRefresh::updateCellRefreshResults(const CLCell &, const CLDaemonLocation &, CFTimeInterval)", "%s\n", v56);
      if (v56 != buf)
      {
        free(v56);
      }
    }

    *(a1 + 160) = *a2;
    v19 = *(a2 + 16);
    v20 = *(a2 + 32);
    v21 = *(a2 + 48);
    *(a1 + 220) = *(a2 + 60);
    *(a1 + 192) = v20;
    *(a1 + 208) = v21;
    *(a1 + 176) = v19;
    *(a1 + 240) = *(a2 + 80);
    if (a1 + 160 != a2)
    {
      sub_100731D80((a1 + 248), *(a2 + 88), *(a2 + 96), (*(a2 + 96) - *(a2 + 88)) >> 2);
    }

    *(a1 + 272) = *(a2 + 112);
    v22 = *(a2 + 128);
    v23 = *(a2 + 144);
    v24 = *(a2 + 176);
    *(a1 + 320) = *(a2 + 160);
    *(a1 + 336) = v24;
    *(a1 + 288) = v22;
    *(a1 + 304) = v23;
    v25 = *(a2 + 192);
    v26 = *(a2 + 208);
    v27 = *(a2 + 240);
    *(a1 + 384) = *(a2 + 224);
    *(a1 + 400) = v27;
    *(a1 + 352) = v25;
    *(a1 + 368) = v26;
    v28 = *(a2 + 256);
    v29 = *(a2 + 272);
    v30 = *(a2 + 288);
    *(a1 + 460) = *(a2 + 300);
    *(a1 + 432) = v29;
    *(a1 + 448) = v30;
    *(a1 + 416) = v28;
    std::string::operator=((a1 + 480), (a2 + 320));
    v32 = *(a2 + 360);
    v31 = *(a2 + 376);
    *(a1 + 504) = *(a2 + 344);
    *(a1 + 520) = v32;
    *(a1 + 536) = v31;
    v33 = *(a2 + 440);
    v35 = *(a2 + 392);
    v34 = *(a2 + 408);
    *(a1 + 584) = *(a2 + 424);
    *(a1 + 600) = v33;
    *(a1 + 552) = v35;
    *(a1 + 568) = v34;
    v37 = *(a2 + 472);
    v36 = *(a2 + 488);
    v38 = *(a2 + 456);
    *(a1 + 664) = *(a2 + 504);
    *(a1 + 632) = v37;
    *(a1 + 648) = v36;
    *(a1 + 616) = v38;
    v39 = *(a2 + 640);
    v40 = *(a2 + 656);
    v41 = *(a2 + 672);
    *(a1 + 848) = *(a2 + 688);
    *(a1 + 816) = v40;
    *(a1 + 832) = v41;
    *(a1 + 800) = v39;
    v42 = *(a2 + 576);
    v43 = *(a2 + 592);
    v44 = *(a2 + 624);
    *(a1 + 768) = *(a2 + 608);
    *(a1 + 784) = v44;
    *(a1 + 736) = v42;
    *(a1 + 752) = v43;
    v45 = *(a2 + 512);
    v46 = *(a2 + 528);
    v47 = *(a2 + 560);
    *(a1 + 704) = *(a2 + 544);
    *(a1 + 720) = v47;
    *(a1 + 672) = v45;
    *(a1 + 688) = v46;
    v48 = a3[1];
    *a1 = *a3;
    *(a1 + 16) = v48;
    v49 = a3[2];
    v50 = a3[3];
    v51 = a3[5];
    *(a1 + 64) = a3[4];
    *(a1 + 80) = v51;
    *(a1 + 32) = v49;
    *(a1 + 48) = v50;
    v52 = a3[6];
    v53 = a3[7];
    v54 = a3[8];
    *(a1 + 140) = *(a3 + 140);
    *(a1 + 112) = v53;
    *(a1 + 128) = v54;
    *(a1 + 96) = v52;
    return v13 & 1;
  }

  if (sub_10123EFA4(a2, a1 + 1552))
  {
    if (qword_1025D4620 != -1)
    {
      sub_1018C4718();
    }

    v9 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134349056;
      *&v58 = v7;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "CellFlow, updateCellRefreshResults, using new cell after airplane mode, %{public}f", buf, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018C4EBC();
    }

    *(a1 + 2280) = 0;
    goto LABEL_21;
  }

  if (qword_1025D4620 != -1)
  {
    sub_1018C4718();
  }

  v14 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134349056;
    *&v58 = v7;
    _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_DEBUG, "CellFlow, updateCellRefreshResults, ignoring cell from before airplane mode, %{public}f", buf, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018C4DD0();
  }

  AnalyticsSendEventLazy();
  v13 = 0;
  return v13 & 1;
}

uint64_t sub_100096990@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  sub_10003848C(v9);
  v4 = *(a1 + 4);
  if (v4 >= 3)
  {
    v5 = "Unknown";
    v6 = 7;
  }

  else
  {
    v5 = off_1024D8978[v4];
    v6 = qword_101D78708[v4];
  }

  sub_100038730(&v10, v5, v6);
  sub_100073518(v9, a2);
  v10 = v7;
  if (v13 < 0)
  {
    operator delete(v12[7].__locale_);
  }

  std::locale::~locale(v12);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_100096B48(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10026C504(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100096B5C(uint64_t a1, uint64_t a2)
{
  if (qword_1025D4620 != -1)
  {
    sub_101A60CCC();
  }

  v3 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446210;
    v6 = a2;
    _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEFAULT, "@CellFlow, outcome, %{public}s, UclpMetric", buf, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101A617A8();
  }

  return AnalyticsSendEventLazy();
}

NSDictionary *sub_100096C8C(uint64_t a1)
{
  v2[1] = @"outcome";
  v3[0] = @"na";
  v2[0] = @"trigger";
  v3[1] = [NSString stringWithUTF8String:*(a1 + 32)];
  return [NSDictionary dictionaryWithObjects:v3 forKeys:v2 count:2];
}

void sub_100096D2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, double a7)
{
  v14 = sub_100072814(a2);
  if (v14 && *(a2 + 20) > 0.0)
  {
    v16 = sub_100096EE4(a7, v14, a3, v15, a4);
    v18 = v17;
    if (v17)
    {
      v19 = v16;
      v20 = sub_10009795C(v16, 1, a5, a6, *(a3 + 8) == 6);
      sub_1001EC9FC(v20, a1, a2);
      sub_100065C94(a1 + 160, a3);
      *(a1 + 864) = a7;
      *(a1 + 872) = 1;
      *(a1 + 880) = v19;
      *(a1 + 888) = v18;
      if ((*(a1 + 904) & 1) == 0)
      {
        *(a1 + 904) = 1;
      }

      *(a1 + 896) = a6;
    }

    else
    {
      sub_10009795C(v16, 0, a5, a6, *(a3 + 8) == 6);
      if (*(a1 + 156) == 1)
      {
        *(a1 + 156) = 0;
      }

      if (*(a1 + 872) == 1)
      {
        *(a1 + 872) = 0;
      }

      if (*(a1 + 856) == 1)
      {
        if (*(a1 + 503) < 0)
        {
          operator delete(*(a1 + 480));
        }

        v21 = *(a1 + 248);
        if (v21)
        {
          *(a1 + 256) = v21;
          operator delete(v21);
        }

        *(a1 + 856) = 0;
      }

      if (*(a1 + 888) == 1)
      {
        *(a1 + 888) = 0;
      }

      if (*(a1 + 904) == 1)
      {
        *(a1 + 904) = 0;
      }
    }

    sub_10009709C(a1);
  }
}

uint64_t sub_100096EE4(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = (a5 + 8);
  if (vabdd_f64(*(a5 + 8), a1) <= 6.0)
  {
    if (*(a5 + 16) == 1 && *(a3 + 8) == 6)
    {
      v12 = sub_10007513C(a3, a3);
      if (*(a5 + 24) == *v12 && *(a5 + 28) == v12[1] && *(a5 + 32) == v12[2] && *(a5 + 36) == v12[3] && *a5 >= 1)
      {
        *&result = *a5 * 4.879;
        return result;
      }
    }

    if (*(a5 + 17) == 1 && *(a3 + 8) == 10)
    {
      sub_100681E80(a3, a3);
    }
  }

  else
  {
    if (qword_1025D4620 != -1)
    {
      sub_101A8AF54();
    }

    v7 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
    {
      v8 = vabdd_f64(*v6, a1);
      v15 = 134349056;
      v16 = v8;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEBUG, "ClxMetric,timingadvance,getTimingAdvanceIfRelevantToCurrentCellFix,stale TA, time delta, %{public}.2f, return", &v15, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101A8AF90(v6, a1);
    }
  }

  *&result = 0.0;
  return result;
}

void sub_10009709C(_BYTE *a1)
{
  if (a1[156] == 1 && a1[856] == 1 && a1[888] == 1)
  {
    sub_100DC0024(a1);

    sub_1001F2170(a1);
  }
}

void *sub_100097108(void *result, uint64_t a2, double a3, double a4)
{
  if (result[346])
  {
    v7 = result;
    result[347] = a2;
    if (qword_1025D4620 != -1)
    {
      sub_101A60CCC();
    }

    v8 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 136446466;
      v10 = a2;
      v11 = 2050;
      v12 = a4;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEFAULT, "CellFlow, timer, %{public}s, %{public}.0f", &v9, 0x16u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101A61890(a4);
    }

    v7[347] = a2;
    return sub_100073BF8(v7[346], a3 + a4);
  }

  return result;
}

uint64_t sub_10009722C(uint64_t *a1, uint64_t a2)
{
  v2 = 0x84BDA12F684BDA13 * ((a1[1] - *a1) >> 5);
  v3 = v2 + 1;
  if (v2 + 1 > 0x4BDA12F684BDA1)
  {
    sub_10028C64C();
  }

  if (0x97B425ED097B426 * ((a1[2] - *a1) >> 5) > v3)
  {
    v3 = 0x97B425ED097B426 * ((a1[2] - *a1) >> 5);
  }

  if (0x84BDA12F684BDA13 * ((a1[2] - *a1) >> 5) >= 0x25ED097B425ED0)
  {
    v6 = 0x4BDA12F684BDA1;
  }

  else
  {
    v6 = v3;
  }

  v55 = a1;
  if (v6)
  {
    sub_100093CC8(a1, v6);
  }

  v7 = 864 * v2;
  v52 = 0;
  v53 = v7;
  v54 = 864 * v2;
  v8 = *(a2 + 16);
  v9 = *(a2 + 32);
  v10 = *(a2 + 48);
  *(v7 + 60) = *(a2 + 60);
  *(v7 + 32) = v9;
  *(v7 + 48) = v10;
  *(v7 + 16) = v8;
  *v7 = *a2;
  *(v7 + 80) = *(a2 + 80);
  v11 = 864 * v2;
  *(v11 + 88) = 0;
  *(v7 + 96) = 0;
  *(v7 + 104) = 0;
  sub_10038EB38(v11 + 88, *(a2 + 88), *(a2 + 96), (*(a2 + 96) - *(a2 + 88)) >> 2);
  *(v7 + 112) = *(a2 + 112);
  v12 = *(a2 + 128);
  v13 = *(a2 + 144);
  v14 = *(a2 + 176);
  *(v7 + 160) = *(a2 + 160);
  *(v7 + 176) = v14;
  *(v7 + 128) = v12;
  *(v7 + 144) = v13;
  v15 = *(a2 + 192);
  v16 = *(a2 + 208);
  v17 = *(a2 + 240);
  *(v7 + 224) = *(a2 + 224);
  *(v7 + 240) = v17;
  *(v7 + 192) = v15;
  *(v7 + 208) = v16;
  v18 = *(a2 + 256);
  v19 = *(a2 + 272);
  v20 = *(a2 + 288);
  *(v7 + 300) = *(a2 + 300);
  *(v7 + 272) = v19;
  *(v7 + 288) = v20;
  *(v7 + 256) = v18;
  if (*(a2 + 343) < 0)
  {
    sub_100007244((v7 + 320), *(a2 + 320), *(a2 + 328));
  }

  else
  {
    v21 = *(a2 + 320);
    *(v7 + 336) = *(a2 + 336);
    *(v7 + 320) = v21;
  }

  v22 = *(a2 + 344);
  v23 = *(a2 + 376);
  *(v7 + 360) = *(a2 + 360);
  *(v7 + 376) = v23;
  *(v7 + 344) = v22;
  v24 = *(a2 + 392);
  v25 = *(a2 + 408);
  v26 = *(a2 + 440);
  *(v7 + 424) = *(a2 + 424);
  *(v7 + 440) = v26;
  *(v7 + 392) = v24;
  *(v7 + 408) = v25;
  v27 = *(a2 + 456);
  v28 = *(a2 + 472);
  v29 = *(a2 + 488);
  *(v7 + 504) = *(a2 + 504);
  *(v7 + 472) = v28;
  *(v7 + 488) = v29;
  *(v7 + 456) = v27;
  v30 = *(a2 + 512);
  v31 = *(a2 + 528);
  v32 = *(a2 + 560);
  *(v7 + 544) = *(a2 + 544);
  *(v7 + 560) = v32;
  *(v7 + 512) = v30;
  *(v7 + 528) = v31;
  v33 = *(a2 + 576);
  v34 = *(a2 + 592);
  v35 = *(a2 + 624);
  *(v7 + 608) = *(a2 + 608);
  *(v7 + 624) = v35;
  *(v7 + 576) = v33;
  *(v7 + 592) = v34;
  v36 = *(a2 + 640);
  v37 = *(a2 + 656);
  v38 = *(a2 + 672);
  *(v7 + 688) = *(a2 + 688);
  *(v7 + 656) = v37;
  *(v7 + 672) = v38;
  *(v7 + 640) = v36;
  *(v7 + 696) = *(a2 + 696);
  v39 = *(a2 + 716);
  *(v7 + 700) = *(a2 + 700);
  *(v7 + 716) = v39;
  v40 = *(a2 + 732);
  v41 = *(a2 + 748);
  v42 = *(a2 + 780);
  *(v7 + 764) = *(a2 + 764);
  *(v7 + 780) = v42;
  *(v7 + 732) = v40;
  *(v7 + 748) = v41;
  v43 = *(a2 + 796);
  v44 = *(a2 + 812);
  v45 = *(a2 + 828);
  *(v7 + 840) = *(a2 + 840);
  *(v7 + 812) = v44;
  *(v7 + 828) = v45;
  *(v7 + 796) = v43;
  *(v7 + 856) = *(a2 + 856);
  *&v54 = v54 + 864;
  v46 = a1[1];
  v47 = v53 + *a1 - v46;
  sub_100093D24(a1, *a1, v46, v47);
  v48 = *a1;
  *a1 = v47;
  v49 = a1[2];
  v51 = v54;
  *(a1 + 1) = v54;
  *&v54 = v48;
  *(&v54 + 1) = v49;
  v52 = v48;
  v53 = v48;
  sub_100095214(&v52);
  return v51;
}

void sub_1000974CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  v7 = *v4;
  if (*v4)
  {
    *(v5 + 96) = v7;
    operator delete(v7);
  }

  sub_100095214(va);
  _Unwind_Resume(a1);
}

BOOL sub_1000974F8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  if (v2 < 3)
  {
    goto LABEL_6;
  }

  if (v2 == 9)
  {
    if (*(a1 + 44) == *(a2 + 44) && *(a1 + 48) == *(a2 + 48) && *(a1 + 52) == *(a2 + 52))
    {
      v3 = *(a1 + 56);
      v4 = *(a2 + 56);
      return v3 == v4;
    }

    return 0;
  }

  if (v2 == 7)
  {
LABEL_6:
    if (*(a1 + 12) == *(a2 + 12) && *(a1 + 16) == *(a2 + 16) && *(a1 + 20) == *(a2 + 20))
    {
      v3 = *(a1 + 24);
      v4 = *(a2 + 24);
      return v3 == v4;
    }

    return 0;
  }

  if (v2 - 3 <= 2)
  {
    return sub_1006E0D20(a1 + 80, a2 + 80);
  }

  if (v2 != 10)
  {
    if (v2 == 6 && *(a1 + 512) == *(a2 + 512) && *(a1 + 516) == *(a2 + 516) && *(a1 + 520) == *(a2 + 520))
    {
      v3 = *(a1 + 524);
      v4 = *(a2 + 524);
      return v3 == v4;
    }

    return 0;
  }

  if (*(a1 + 600) != *(a2 + 600) || *(a1 + 604) != *(a2 + 604) || *(a1 + 608) != *(a2 + 608))
  {
    return 0;
  }

  return *(a1 + 616) == *(a2 + 616);
}

void sub_10009763C(uint64_t a1, __int32 a2, unsigned int a3, unsigned int a4)
{
  CFAbsoluteTimeGetCurrent();

  sub_100097694((a1 + 2680), a2, a3, a4);
}

void sub_100097694(int32x4_t *a1, __int32 a2, unsigned int a3, unsigned int a4)
{
  v5.i32[0] = 1;
  v5.i32[1] = a2;
  v5.i64[1] = __PAIR64__(a4, a3);
  *a1 = vaddq_s32(*a1, v5);
  if (qword_1025D4620 != -1)
  {
    sub_10016157C();
  }

  v6 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
  {
    v7 = a1->i32[0];
    v8 = a1->i32[1];
    v9 = a1->i32[2];
    v10 = a1->i32[3];
    *buf = 67240960;
    v13 = v7;
    v14 = 1026;
    v15 = v8;
    v16 = 1026;
    v17 = v9;
    v18 = 1026;
    v19 = v10;
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "@Celltileusage, attempt, %{public}d, als, %{public}d, tiles, %{public}d, unknown, %{public}d", buf, 0x1Au);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4620 != -1)
    {
      sub_1018E906C();
    }

    v11 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "void CLCellLocationMetrics::locationAttempt(int, int, int, CFAbsoluteTime)", "%s\n", v11);
    if (v11 != buf)
    {
      free(v11);
    }
  }
}

uint64_t sub_100097884(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_10009790C(result, a4);
  }

  return result;
}

void sub_1000978EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_100093EE8(&a9);
  _Unwind_Resume(a1);
}

void sub_10009790C(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x4BDA12F684BDA2)
  {
    sub_100093CC8(a1, a2);
  }

  sub_10028C64C();
}

uint64_t sub_10009795C(uint64_t a1, int a2, int a3, uint64_t a4, int a5)
{
  if (qword_1025D4620 != -1)
  {
    sub_101A8AF54();
  }

  v8 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67240704;
    v12 = a2;
    v13 = 1026;
    v14 = a3;
    v15 = 1026;
    v16 = a5;
    _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEBUG, "ClxMetric,timingadvance,isTAavailable,%{public}d,isRrcConnected,%{public}d, isLte,%{public}d", buf, 0x14u);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4620 != -1)
    {
      sub_101A8AF68();
    }

    v10 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "void CellTimingAdvanceMetrics::submitTimingAdvanceAvailabilityMetric(const BOOL, const BOOL, BOOL, BOOL)", "%s\n", v10);
    if (v10 != buf)
    {
      free(v10);
    }
  }

  return AnalyticsSendEventLazy();
}

NSDictionary *sub_100097B88(unsigned __int8 *a1)
{
  v3[0] = @"available";
  v4[0] = [NSNumber numberWithBool:a1[32]];
  v3[1] = @"rrc_connected";
  v4[1] = [NSNumber numberWithBool:a1[33]];
  v3[2] = @"notified";
  v4[2] = [NSNumber numberWithBool:a1[34]];
  v3[3] = @"isLte";
  v4[3] = [NSNumber numberWithBool:a1[35]];
  return [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:4];
}

uint64_t sub_100097C68(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2 < 3)
  {
    goto LABEL_4;
  }

  if (v2 == 9)
  {
    v3 = *(a1 + 44);
    v4 = *(a1 + 48);
  }

  else
  {
    if (v2 == 7)
    {
LABEL_4:
      v3 = *(a1 + 12);
      v4 = *(a1 + 16);
      goto LABEL_5;
    }

    if (v2 - 3 > 2)
    {
      if (v2 == 10)
      {
        v3 = *(a1 + 600);
        v4 = *(a1 + 604);
      }

      else if (v2 == 6)
      {
        v3 = *(a1 + 512);
        v4 = *(a1 + 516);
      }

      else
      {
        if (qword_1025D48A0 != -1)
        {
          sub_101B7C774();
        }

        v9 = qword_1025D48A8;
        if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
        {
          sub_10123DED0(a1, __p);
          v10 = v12 >= 0 ? __p : *__p;
          *buf = 136315138;
          v14 = v10;
          _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "CELL_LOC: which cell is that, %s", buf, 0xCu);
          if (v12 < 0)
          {
            operator delete(*__p);
          }
        }

        if (sub_10000A100(121, 2))
        {
          sub_101B7CAE4(a1);
        }

        v4 = 0;
        v3 = 0;
      }
    }

    else
    {
      v8 = *(a1 + 88);
      if (*(a1 + 96) == v8)
      {
        v3 = 0xFFFF;
      }

      else
      {
        v3 = *v8;
      }

      v4 = *(a1 + 116);
    }
  }

LABEL_5:
  if (qword_1025D48A0 != -1)
  {
    sub_101B7C838();
  }

  v5 = v4 | (v3 << 16);
  v6 = qword_1025D48A8;
  if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
  {
    *__p = 134217984;
    *&__p[4] = v5;
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "CELL_LOC: sec_key, 0x%016llX", __p, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101B7CC14(v5);
  }

  return v5;
}

id sub_100097E90(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  v9 = [objc_msgSend(*(a1 - 88) "vendor")];

  return [v9 requestCellTileDownloadByType:a2 lat:a3 lon:a4 seckey:a5];
}

void sub_100097EF8(uint64_t a1, uint64_t a2, float a3)
{
  v5 = *(a2 + 4);
  LOBYTE(a3) = *(a2 + 1);
  v6 = LODWORD(a3);
  v7 = *(a2 + 28);
  v8 = *(a2 + 44);
  v9 = *(a2 + 32);
  if (*(a1 + 360) == 1)
  {
    v10 = *(a1 + 396);
    v11 = v10 * 2.56;
    if (*(a1 + 384) != 1 || v11 < (3600 * *(a1 + 388)))
    {
      v12 = *(a1 + 364) / 3600.0;
      v5 = (v12 * v11);
      v9 = v5 / v12;
      v8 = ((v5 - (v12 * ((v10 - 1) * 2.56))) / v12 * 1000000.0);
      v7 = 1.0 / (v12 * (*(a1 + 376) / 100.0));
      if (*(a1 + 372))
      {
        v6 = *(a1 + 376);
      }

      *(a1 + 396) = v10 + 1;
    }
  }

  Current = CFAbsoluteTimeGetCurrent();
  v13 = *(a2 + 48);
  v14 = *(a1 + 352);
  v15 = *(a1 + 653);
  if (v15 == 1)
  {
    if (*(a1 + 652))
    {
      v15 = 1;
    }

    else
    {
      sub_10026D1A4(a1);
      v15 = 0;
      *(a1 + 653) = 0;
    }
  }

  v16 = *(a1 + 664);
  v93 = v7;
  if (v8)
  {
    v17 = *(a1 + 352) + v8 / -1000000.0;
    v18 = *(a1 + 664);
    if (v15)
    {
      v18 = *(a1 + 664);
      if ((*(a1 + 652) & 1) == 0)
      {
        sub_10026D1A4(a1);
        *(a1 + 653) = 0;
        v18 = *(a1 + 664);
      }
    }

    v19 = v17 + v18;
  }

  else
  {
    v19 = 0.0;
  }

  v95 = v9;
  if ((sub_100023B30() & 0x10000000) != 0)
  {
    v91 = *(a2 + 8);
  }

  else
  {
    v91 = 0;
  }

  v20 = v14 + v16;
  v21 = v13 / 1000000.0;
  v22 = v5;
  if ((sub_100023B30() & 0x10000000) != 0)
  {
    v23 = *(a2 + 12);
  }

  else
  {
    v23 = 0;
  }

  v24 = v14 - v21;
  v25 = v20 - v21;
  v26 = *(a2 + 40);
  memset(&buf[6], 0, 24);
  v27 = *(a2 + 2);
  v29 = *(a2 + 16);
  v28 = *(a2 + 20);
  v30 = *(a2 + 37);
  v31 = *(a2 + 38);
  v32 = *(a1 + 432);
  v33 = *(a1 + 440);
  v34 = v6 / 100.0;
  if (v32 >= v33)
  {
    v37 = *(a1 + 424);
    v38 = 0xD37A6F4DE9BD37A7 * ((v32 - v37) >> 3);
    v39 = v38 + 1;
    if (v38 + 1 > 0x1642C8590B21642)
    {
      sub_10028C64C();
    }

    v40 = 0xD37A6F4DE9BD37A7 * ((v33 - v37) >> 3);
    if (2 * v40 > v39)
    {
      v39 = 2 * v40;
    }

    if (v40 >= 0xB21642C8590B21)
    {
      v41 = 0x1642C8590B21642;
    }

    else
    {
      v41 = v39;
    }

    if (v41)
    {
      sub_100098A50(a1 + 424, v41);
    }

    v42 = 184 * v38;
    *v42 = v24;
    *(v42 + 8) = v25;
    *(v42 + 16) = v19;
    *(v42 + 24) = v22;
    *(v42 + 32) = 0;
    *(v42 + 40) = v34;
    *(v42 + 56) = 0;
    *(v42 + 64) = 0;
    *(v42 + 48) = 0;
    *(v42 + 72) = v91;
    *(v42 + 76) = v23;
    *(v42 + 80) = v93;
    *(v42 + 88) = v26;
    *(v42 + 96) = v95;
    *(v42 + 104) = 0;
    *(v42 + 112) = 0;
    *(v42 + 120) = 0;
    v43 = *buf;
    *(v42 + 136) = *&buf[14];
    *(v42 + 122) = v43;
    *(v42 + 152) = 0x1A00000000;
    *(v42 + 160) = v27;
    *(v42 + 164) = v29;
    *(v42 + 168) = v28;
    *(v42 + 172) = v30;
    *(v42 + 173) = v31;
    *(v42 + 174) = 0;
    *(v42 + 176) = 0;
    v36 = 184 * v38 + 184;
    v44 = *(a1 + 424);
    v45 = *(a1 + 432) - v44;
    v46 = v42 - v45;
    memcpy((v42 - v45), v44, v45);
    v47 = *(a1 + 424);
    *(a1 + 424) = v46;
    *(a1 + 432) = v36;
    *(a1 + 440) = 0;
    if (v47)
    {
      operator delete(v47);
    }
  }

  else
  {
    *v32 = v24;
    *(v32 + 8) = v25;
    *(v32 + 16) = v19;
    *(v32 + 24) = v22;
    *(v32 + 32) = 0;
    *(v32 + 40) = v34;
    *(v32 + 56) = 0;
    *(v32 + 64) = 0;
    *(v32 + 48) = 0;
    *(v32 + 72) = v91;
    *(v32 + 76) = v23;
    *(v32 + 80) = v93;
    *(v32 + 88) = v26;
    *(v32 + 96) = v95;
    *(v32 + 104) = 0;
    *(v32 + 112) = 0;
    *(v32 + 120) = 0;
    v35 = *buf;
    *(v32 + 136) = *&buf[14];
    *(v32 + 122) = v35;
    *(v32 + 152) = 0x1A00000000;
    *(v32 + 160) = v27;
    *(v32 + 164) = v29;
    *(v32 + 168) = v28;
    *(v32 + 172) = v30;
    *(v32 + 173) = v31;
    *(v32 + 174) = 0;
    v36 = v32 + 184;
    *(v32 + 176) = 0;
  }

  *(a1 + 432) = v36;
  v48 = *(a2 + 16);
  if (v48 || *(a2 + 20))
  {
    v49 = *(a1 + 352);
    if (*(a1 + 653) == 1 && (*(a1 + 652) & 1) == 0)
    {
      sub_10026D1A4(a1);
      *(a1 + 653) = 0;
      v48 = *(a2 + 16);
    }

    v50 = v49 + *(a1 + 664);
    v51 = *(a2 + 20);
    v52 = *(a2 + 36);
    v53 = *(a2 + 52);
    v55 = *(a2 + 56);
    v54 = *(a2 + 60);
    v56 = *(a1 + 859);
    v57 = *(a1 + 456);
    v58 = *(a1 + 464);
    if (v57 >= v58)
    {
      v60 = *(a1 + 448);
      v61 = (v57 - v60) >> 6;
      v62 = v61 + 1;
      if ((v61 + 1) >> 58)
      {
        sub_10028C64C();
      }

      v63 = v58 - v60;
      if (v63 >> 5 > v62)
      {
        v62 = v63 >> 5;
      }

      if (v63 >= 0x7FFFFFFFFFFFFFC0)
      {
        v64 = 0x3FFFFFFFFFFFFFFLL;
      }

      else
      {
        v64 = v62;
      }

      if (v64)
      {
        sub_100098AAC(a1 + 448, v64);
      }

      v65 = v61 << 6;
      *v65 = v49;
      *(v65 + 8) = v50;
      *(v65 + 16) = v48;
      *(v65 + 20) = v51;
      *(v65 + 24) = 0;
      *(v65 + 32) = 0;
      *(v65 + 40) = 0;
      *(v65 + 44) = v52;
      *(v65 + 48) = v55;
      *(v65 + 52) = 0;
      *(v65 + 54) = v53;
      *(v65 + 56) = v54;
      *(v65 + 60) = 0;
      *(v65 + 61) = v56;
      v59 = (v61 << 6) + 64;
      v66 = *(a1 + 448);
      v67 = *(a1 + 456) - v66;
      v68 = v65 - v67;
      memcpy((v65 - v67), v66, v67);
      v69 = *(a1 + 448);
      *(a1 + 448) = v68;
      *(a1 + 456) = v59;
      *(a1 + 464) = 0;
      if (v69)
      {
        operator delete(v69);
      }
    }

    else
    {
      *v57 = v49;
      *(v57 + 8) = v50;
      *(v57 + 16) = v48;
      *(v57 + 20) = v51;
      *(v57 + 24) = 0;
      *(v57 + 32) = 0;
      *(v57 + 40) = 0;
      *(v57 + 44) = v52;
      *(v57 + 48) = v55;
      *(v57 + 52) = 0;
      *(v57 + 54) = v53;
      *(v57 + 56) = v54;
      *(v57 + 60) = 0;
      v59 = v57 + 64;
      *(v57 + 61) = v56;
    }

    *(a1 + 456) = v59;
  }

  v70 = *(a2 + 52);
  v71 = *(a2 + 37);
  if (qword_1025D4270 != -1)
  {
    sub_101ADBE88();
  }

  v72 = qword_1025D4278;
  if (os_log_type_enabled(qword_1025D4278, OS_LOG_TYPE_INFO))
  {
    v74 = *(a1 + 352);
    LOBYTE(v73) = *(a2 + 1);
    v96 = *(a2 + 4);
    v92 = *(a2 + 12);
    v94 = *(a2 + 8);
    v88 = *(a2 + 20);
    v89 = *(a2 + 16);
    v75 = v73 / 100.0;
    v76 = *(a2 + 28);
    v77 = *(a2 + 32);
    v78 = *(a2 + 36);
    if (*(a1 + 653) == 1 && (*(a1 + 652) & 1) == 0)
    {
      sub_10026D1A4(a1);
      *(a1 + 653) = 0;
    }

    v79 = v74 + *(a1 + 664);
    v80 = *(a2 + 40);
    v81 = *(*(a1 + 432) - 168);
    v82 = *(a2 + 44);
    v83 = sub_100023B30();
    v84 = *(a1 + 364);
    v166 = v84 > 0;
    v170 = *(a1 + 388);
    *&buf[14] = v96;
    v98 = v94;
    v100 = v92;
    v102 = v89;
    v104 = v88;
    v110 = v78;
    v118 = v81;
    v120 = v82;
    v122 = (v83 >> 28) & 1;
    v124 = *(a2 + 2);
    v126 = *(a2 + 3);
    v128 = v70 & 1;
    v130 = (v70 >> 12) & 1;
    v132 = (v70 >> 2) & 1;
    v134 = (v70 >> 8) & 1;
    v136 = (v70 >> 9) & 1;
    v138 = (v70 >> 10) & 1;
    v140 = (v70 >> 11) & 1;
    v146 = v71 & 1;
    v150 = (v71 >> 2) & 1;
    v154 = (v71 >> 4) & 1;
    v158 = (v71 >> 6) & 1;
    v162 = *(a2 + 38);
    v85 = *(a2 + 60);
    v86 = *(a2 + 56);
    *&buf[4] = v74;
    *&buf[20] = v75;
    v106 = v76;
    v114 = v79;
    v116 = v80;
    v142 = v86;
    v144 = *(a2 + 54);
    v148 = (v71 >> 1) & 1;
    v152 = (v71 >> 3) & 1;
    v156 = (v71 >> 5) & 1;
    v160 = v71 >> 7;
    *&buf[18] = 2048;
    v105 = 2048;
    v107 = 2048;
    v111 = 2048;
    v113 = 2048;
    v115 = 2048;
    v117 = 2048;
    v141 = 2048;
    v163 = 2048;
    v168 = v84;
    *&buf[12] = 1024;
    *&buf[28] = 1024;
    v99 = 1024;
    v101 = 1024;
    v103 = 1024;
    v109 = 1024;
    v119 = 1024;
    v121 = 1024;
    v123 = 1024;
    v125 = 1024;
    v127 = 1024;
    v129 = 1024;
    v131 = 1024;
    v133 = 1024;
    v135 = 1024;
    v137 = 1024;
    v139 = 1024;
    v143 = 1024;
    v145 = 1024;
    v147 = 1024;
    v149 = 1024;
    v151 = 1024;
    v153 = 1024;
    v155 = 1024;
    v157 = 1024;
    v159 = 1024;
    v161 = 1024;
    v165 = 1024;
    v167 = 1024;
    v169 = 1024;
    *buf = 134227968;
    v108 = v77;
    v112 = Current;
    v164 = v85;
    _os_log_impl(dword_100000000, v72, OS_LOG_TYPE_INFO, "Timestamp,%f,StepCount,%d,Stride,%0.2f,Ascended,%d,Descended,%d,ElevationUp,%d,ElevationDown,%d,Pace,%f,ActiveTime,%f,DeltaSteps,%d,locationdGpsTime,%20.20f,startTime,%f,currentCadence,%f,FirstStepTime,%f,RelativeTimeOfLastStep,%d,FloorCountingSupported,%d,pedometerArmConstrainedState,%d,FlightState,%d,FlightFailResetUnknown,%d,FlightFailResetWater,%d,FlightFailResetFrozen,%d,FlightFailInOutTrans,%u,FlightFailElevDelta,%u,FlightFailStepsPerElevRate,%u,FlightsFailElevRate,%u,PressureAmplitude,%f,PressureTemperature,%hd,FalseStepDetectorAccelPoseXHigh,%u,FalseStepDetectorAccelVarXYZLow,%u,FalseStepDetectorGyroNumSamplesSufficient,%u,FalseStepDetectorGyroVarXHigh,%u,FalseStepDetectorConsecutiveRequirement,%u,IsVehicularLowConfidence,%u,IsVehicularHighConfidence,%u,FalseStepDetectorConsistentStepsProtection,%u,FalseStepsSuppressed,%u,AverageFilteredPressure,%f,StepCountCurrentlySimulated,%d,DefaultStepsPerHour,%i,DefaultStepDurationHours,%i", buf, 0x11Au);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4270 != -1)
    {
      sub_101AD9E64();
    }

    if (*(a1 + 653) == 1 && (*(a1 + 652) & 1) == 0)
    {
      sub_10026D1A4(a1);
      *(a1 + 653) = 0;
    }

    sub_100023B30();
    v87 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "virtual void CLMotionCoprocessor::visitStepCountUpdate(const CMMotionCoprocessorReply::StepCountUpdate *)", "%s\n", v87);
    if (v87 != buf)
    {
      free(v87);
    }
  }
}

void sub_100098A50(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x1642C8590B21643)
  {
    operator new();
  }

  sub_1001D0818();
}

void sub_100098AAC(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 58))
  {
    operator new();
  }

  sub_1001D0818();
}

void sub_100098AF4(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 1272);
  if (v2)
  {
    v3 = a2[1];
    v4 = *a2;
    v5 = v3;
    if (v3)
    {
      atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    (*(v2 + 16))(v2, &v4);
    if (v5)
    {
      sub_100008080(v5);
    }
  }
}

void sub_100098B54(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100008080(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_100098B6C(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 40);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3321888768;
  v6[2] = sub_1000A46CC;
  v6[3] = &unk_10246F7B8;
  v5 = *a2;
  v4 = a2[1];
  v6[4] = v2;
  v6[5] = v5;
  v7 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  [v3 async:v6];
  if (v7)
  {
    sub_100008080(v7);
  }
}

void sub_100098C0C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_100008080(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100098C24(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(result + 40) = *(a2 + 40);
  *(result + 48) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_100098C78(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 1256);
  if (v2)
  {
    v3 = a2[1];
    v4 = *a2;
    v5 = v3;
    if (v3)
    {
      atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    (*(v2 + 16))(v2, &v4);
    if (v5)
    {
      sub_100008080(v5);
    }
  }
}

void sub_100098CD8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100008080(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_100098CF0(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 40);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3321888768;
  v6[2] = sub_100099164;
  v6[3] = &unk_1024E2898;
  v5 = *a2;
  v4 = a2[1];
  v6[4] = v2;
  v6[5] = v5;
  v7 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  [v3 async:v6];
  if (v7)
  {
    sub_100008080(v7);
  }
}

void sub_100098D90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_100008080(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100098DA8(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(result + 40) = *(a2 + 40);
  *(result + 48) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

int64x2_t *sub_100098DC4(int64x2_t *result, uint64_t **a2)
{
  v2 = **a2;
  if (v2 != (*a2)[1])
  {
    v4 = result;
    do
    {
      memset(__src, 0, 328);
      v5 = v4[18].i64[0];
      if (v5)
      {
        [v5 updateEntryDistanceAndPace:v2];
      }

      v8[0] = 1;
      if (sub_10000608C(v4, v8, 1))
      {
        v9 = 1;
        memcpy(v8, __src, 0x148uLL);
        (*(v4->i64[0] + 152))(v4, &v9, v8, 1, 0xFFFFFFFFLL, 0);
        v6 = sub_1000A23E0();
        sub_100099DAC(v6, &__src[14], &__src[14] + 8);
      }

      v7 = sub_100099E44(v4 + 150, __src);
      sub_10009C564(v4, v7);
      result = sub_1000A20A4(&v4[27].i64[1], *(v2 + 8));
      v2 += 184;
    }

    while (v2 != (*a2)[1]);
  }

  return result;
}

BOOL sub_100098F5C(uint64_t a1)
{
  Current = CFAbsoluteTimeGetCurrent();
  if (Current < 441763200.0 || Current > 3628972800.0)
  {
    if ((byte_1026630B4 & 1) == 0)
    {
      byte_1026630B4 = 1;
    }

    if (qword_1025D4200 != -1)
    {
      sub_101B0ADA8();
    }

    v5 = qword_1025D4208;
    if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_ERROR))
    {
      v7 = 68289282;
      v8 = 2082;
      v9 = "";
      v10 = 1026;
      v11 = Current;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:CL database error, CFAbsoluteTimeGetCurrent:%{public}d}", &v7, 0x18u);
      if (qword_1025D4200 != -1)
      {
        sub_101B0ADBC();
      }
    }

    v6 = qword_1025D4208;
    if (os_signpost_enabled(qword_1025D4208))
    {
      v7 = 68289282;
      v8 = 2082;
      v9 = "";
      v10 = 1026;
      v11 = Current;
      _os_signpost_emit_with_name_impl(dword_100000000, v6, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "CL database error", "{msg%{public}.0s:CL database error, CFAbsoluteTimeGetCurrent:%{public}d}", &v7, 0x18u);
    }

    return 0;
  }

  byte_1026630B4 = 0;
  v3 = *(a1 + 8);
  if (!v3)
  {
    return 0;
  }

  return sub_100023B68(v3);
}

void sub_100099164(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 48);
  v4[0] = *(a1 + 40);
  v4[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_100098DC4(v2, v4);
  if (v3)
  {

    sub_100008080(v3);
  }
}

void sub_1000991D8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_100008080(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_10009924C(uint64_t a1, int *a2, uint64_t a3, int a4)
{
  if ((*(a1 + 108) & 1) == 0)
  {
    v4 = *(a1 + 64);
    if (!v4)
    {
      goto LABEL_9;
    }

    v5 = *a2;
    v6 = a1 + 64;
    do
    {
      if (*(v4 + 32) >= v5)
      {
        v6 = v4;
      }

      v4 = *(v4 + 8 * (*(v4 + 32) < v5));
    }

    while (v4);
    if (v6 == a1 + 64 || v5 < *(v6 + 32))
    {
LABEL_9:
      v9 = v10;
      memset(v10, 0, 32);
      sub_100248B84(buf, a2, &v9);
      sub_10047D8C8();
    }

    if (a4)
    {
      operator new();
    }

    v7 = *(v6 + 72);
    *(v6 + 64) = 0;
    *(v6 + 72) = 0;
    if (v7)
    {
      sub_100008080(v7);
    }

    if (*(v6 + 56))
    {
      sub_10009D84C();
    }
  }
}

void sub_100099724(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_101865570(va);
  sub_101864718(v9 - 144);
  _Unwind_Resume(a1);
}

id sub_100099750(void *a1)
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {

    return sub_10137B824(a1);
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {

      return sub_100099BA8(a1);
    }

    else
    {
      return 0;
    }
  }
}

void sub_1000997EC(void *a1, int *a2, void *a3)
{
  if ((*(a1 + 108) & 1) == 0)
  {
    v5 = a1 + 8;
    v4 = a1[8];
    if (v4)
    {
      v8 = *a2;
      v9 = (a1 + 8);
      do
      {
        if (*(v4 + 32) >= v8)
        {
          v9 = v4;
        }

        v4 = *(v4 + 8 * (*(v4 + 32) < v8));
      }

      while (v4);
      if (v9 != v5 && v8 >= *(v9 + 32))
      {
        v37 = v9;
        v10 = sub_100099750(a3);
        (*(*a1 + 184))(a1, a2, v10, v9 + 80);
        v11 = *(v9 + 40);
        if (v11 != (v9 + 48))
        {
          v12 = a1 + 11;
          v13 = a1 + 1;
          do
          {
            v14 = *v12;
            if (!*v12)
            {
              goto LABEL_18;
            }

            v15 = *(v11 + 7);
            v16 = a1 + 11;
            do
            {
              if (*(v14 + 32) >= v15)
              {
                v16 = v14;
              }

              v14 = *(v14 + 8 * (*(v14 + 32) < v15));
            }

            while (v14);
            if (v16 != v12 && (v17 = *(v16 + 8), v15 >= v17))
            {
              v36 = v16;
              sub_10009D900(a1, &v36, &v37, a3);
              v21 = a1[8];
              if (!v21)
              {
                return;
              }

              v22 = *a2;
              v23 = v5;
              do
              {
                if (*(v21 + 32) >= v22)
                {
                  v23 = v21;
                }

                v21 = *(v21 + 8 * (*(v21 + 32) < v22));
              }

              while (v21);
              if (v23 == v5 || v22 < *(v23 + 32))
              {
                return;
              }

              v37 = v23;
              v25 = *(v23 + 48);
              v11 = (v23 + 48);
              v24 = v25;
              if (v25)
              {
                v26 = v11;
                v27 = v24;
                do
                {
                  if (*(v27 + 28) >= v17)
                  {
                    v26 = v27;
                  }

                  v27 = *(v27 + 8 * (*(v27 + 28) < v17));
                }

                while (v27);
                if (v26 == v11 || v17 < *(v26 + 7))
                {
                  do
                  {
                    v28 = *(v24 + 28);
                    v29 = v17 < v28;
                    v30 = v17 >= v28;
                    if (v29)
                    {
                      v11 = v24;
                    }

                    v24 = *(v24 + 8 * v30);
                  }

                  while (v24);
                }

                else
                {
                  v31 = v26[1];
                  if (v31)
                  {
                    do
                    {
                      v11 = v31;
                      v31 = *v31;
                    }

                    while (v31);
                  }

                  else
                  {
                    do
                    {
                      v11 = v26[2];
                      v32 = *v11 == v26;
                      v26 = v11;
                    }

                    while (!v32);
                  }
                }
              }
            }

            else
            {
LABEL_18:
              v36 = a1 + 11;
              if (qword_1025D47F0 != -1)
              {
                sub_101BD3BF4();
              }

              v18 = qword_1025D47F8;
              if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_FAULT))
              {
                v19 = a1 + 1;
                if (*(a1 + 31) < 0)
                {
                  v19 = *v13;
                }

                v20 = *(v11 + 7);
                *buf = 136446466;
                v43 = v19;
                v44 = 1026;
                v45 = v20;
                _os_log_impl(dword_100000000, v18, OS_LOG_TYPE_FAULT, "%{public}s; unknown client %{public}d", buf, 0x12u);
              }

              if (sub_10000A100(121, 0))
              {
                bzero(buf, 0x65CuLL);
                if (qword_1025D47F0 != -1)
                {
                  sub_101BD3BF4();
                }

                v33 = a1 + 1;
                if (*(a1 + 31) < 0)
                {
                  v33 = *v13;
                }

                v34 = *(v11 + 7);
                v38 = 136446466;
                v39 = v33;
                v40 = 1026;
                v41 = v34;
                v35 = _os_log_send_and_compose_impl();
                sub_100152C7C("Generic", 1, 0, 0, "void CLNotifier<CLStepCountNotifier_Type::Notification, CLStepCountNotifier_Type::NotificationData>::invokeClientsWithData(const Notification_T &, CLCppContainer *) [Notification_T = CLStepCountNotifier_Type::Notification, NotificationData_T = CLStepCountNotifier_Type::NotificationData, NotificationInfo_T = char, RegistrationInfo_T = char]", "%s\n", v35);
                if (v35 != buf)
                {
                  free(v35);
                }
              }
            }
          }

          while (v11 != (v37 + 48));
        }
      }
    }
  }
}

id sub_100099BA8(void *a1)
{
  v2 = [a1 binaryVersion];
  [a1 sizeOfType];
  if (v2)
  {
    if (getenv("_INTERSILO_UNIT_TEST"))
    {
      if (qword_1025D41A0 != -1)
      {
        sub_101BD686C();
      }

      v3 = qword_1025D41A8;
      if (os_log_type_enabled(qword_1025D41A8, OS_LOG_TYPE_ERROR))
      {
        v6 = 134218498;
        v7 = v2;
        v8 = 2048;
        v9 = 0;
        v10 = 2080;
        v11 = 0x8000000101D81897 & 0x7FFFFFFFFFFFFFFFLL;
        _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_ERROR, "Mismatch of versions between encoded (%llu) and decoded (%llu) objects! This is possibly because the version has changed on one side and possibly broken ABI compatibility. Please update your type for %s accordingly", &v6, 0x20u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_101BD6A78();
      }
    }

    else
    {
      if (qword_1025D41A0 != -1)
      {
        sub_101BD686C();
      }

      v5 = qword_1025D41A8;
      if (os_log_type_enabled(qword_1025D41A8, OS_LOG_TYPE_FAULT))
      {
        v6 = 134218498;
        v7 = v2;
        v8 = 2048;
        v9 = 0;
        v10 = 2080;
        v11 = 0x8000000101D81897 & 0x7FFFFFFFFFFFFFFFLL;
        _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_FAULT, "Mismatch of versions between encoded (%llu) and decoded (%llu) objects! This is possibly because the version has changed on one side and possibly broken ABI compatibility. Please update your type for %s accordingly", &v6, 0x20u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_101BD6B74();
      }
    }

    return 0;
  }

  else
  {

    return [a1 cppObjectPtr];
  }
}

void sub_100099DAC(dispatch_queue_t *a1, uint64_t a2, uint64_t a3)
{
  dispatch_assert_queue_not_V2(*a1);
  v6 = *a1;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10009D9F8;
  block[3] = &unk_10245D2F0;
  block[4] = a1;
  block[5] = a2;
  block[6] = a3;
  dispatch_sync(v6, block);
}

int64x2_t *sub_100099E44(int64x2_t *a1, uint64_t a2)
{
  if (qword_1025D4270 != -1)
  {
    sub_101A3472C();
  }

  v4 = qword_1025D4278;
  if (os_log_type_enabled(qword_1025D4278, OS_LOG_TYPE_DEBUG))
  {
    v6 = *(a2 + 8);
    v5 = *(a2 + 16);
    v7 = *(a2 + 32);
    v8 = *(a2 + 40);
    v10 = *(a2 + 64);
    v9 = *(a2 + 72);
    v11 = *(a2 + 56);
    v12 = *(a2 + 192);
    v13 = *(a2 + 200);
    v14 = *(a2 + 224);
    v15 = *(a2 + 208);
    v16 = *(a2 + 216);
    v17 = *(a2 + 88);
    v18 = *(a2 + 104);
    v19 = *(a2 + 24);
    v20 = *(a2 + 168);
    *buf = 134221824;
    v24 = v5;
    v25 = 2048;
    v26 = v6;
    v27 = 1024;
    v28 = v7;
    v29 = 2048;
    v30 = v8;
    v31 = 2048;
    v32 = v9;
    v33 = 2048;
    v34 = v11;
    v35 = 2048;
    v36 = v10;
    v37 = 2048;
    v38 = v12;
    v39 = 2048;
    v40 = v13;
    v41 = 2048;
    v42 = v15;
    v43 = 1024;
    v44 = v14;
    v45 = 2048;
    v46 = v16;
    v47 = 2048;
    v48 = v17;
    v49 = 2048;
    v50 = v18;
    v51 = 2048;
    v52 = v19;
    v53 = 1024;
    v54 = v20;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "StepCount, %f, %f, %d, %f, %f, %f, %f, %f, %f, %f, %u, %f, %f, %f, %f, %d", buf, 0x96u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101A34740(a2);
  }

  sub_10009A074(a1, a2);
  a1[49].i64[1] = a1[49].i64[0];
  while (a1[31].i64[1])
  {
    v21 = *(*(a1[29].i64[1] + ((a1[31].i64[0] >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (a1[31].i64[0] & 0x1FF));
    if (a1[28].i64[1] == 1)
    {
      if ((sub_100C467C0(a1, a1[49].i64, v21) & 1) == 0)
      {
        return a1 + 49;
      }
    }

    else if (!sub_10009DB18(a1, a1[49].i64, v21))
    {
      return a1 + 49;
    }

    a1[31] = vaddq_s64(a1[31], xmmword_101C66230);
    sub_1000A2BE8(a1[29].i64, 1);
  }

  return a1 + 49;
}

uint64_t sub_10009A074(void *a1, double *a2)
{
  sub_100C497B8(a1 + 64, a2);
  v5 = a2[2];
  sub_1000A2B60(a1 + 58, &v5);
  (*(*a1[80] + 40))(a1[80], v5);
  sub_10009CE08((a1 + 64), v5);
  sub_1000A2418((a1 + 81), v5);
  result = sub_10009DABC(a1);
  if (result)
  {
    return sub_1005540B8(a1[80]);
  }

  return result;
}

unint64_t sub_10009A114(uint64_t a1, double a2)
{
  v4 = *(a1 + 104);
  *(a1 + 104) = a2;
  v5 = a2 > 0.0;
  if (v4 <= a2)
  {
    v5 = 0;
  }

  *(a1 + 120) = v5;
  if (v5)
  {
    if (qword_1025D4230 != -1)
    {
      sub_1019E9DB0();
    }

    v6 = qword_1025D4238;
    if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 8);
      v8 = *(a1 + 104);
      v9 = *(a1 + 121);
      *buf = 136316162;
      v23 = v7;
      v24 = 2048;
      v25 = v8 - v4;
      v26 = 2048;
      v27 = v4;
      v28 = 2048;
      v29 = v8;
      v30 = 1024;
      v31 = v9;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEFAULT, "#Warning Input, %s, time rolled back. Delta %f, Previous Time %f, Current Time %f, Always Active %d.", buf, 0x30u);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4230 != -1)
      {
        sub_1019E9DC4();
      }

      v21 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "virtual void CLNatalieInput<CLOdometerEntry>::update(CFAbsoluteTime) [Data_T = CLOdometerEntry]", "%s\n", v21);
      if (v21 != buf)
      {
        free(v21);
      }
    }
  }

  if (*(a1 + 80) == 1 && (*(a1 + 121) & 1) == 0 && (*(a1 + 88) < a2 || *(a1 + 120) == 1) && (*(*a1 + 72))(a1))
  {
    *(a1 + 80) = 0;
    *(a1 + 88) = 0;
  }

  v10 = *(a1 + 56);
  v11 = *(a1 + 32);
  v12 = *(a1 + 40);
  v13 = (v11 + 8 * (v10 / 0x15));
  if (v12 == v11)
  {
    v14 = 0;
  }

  else
  {
    v14 = (*v13 + 192 * (v10 % 0x15));
  }

  v15 = (v11 + 8 * (v10 / 0x15));
LABEL_19:
  v16 = v14;
  while (1)
  {
    v17 = v12 == v11 ? 0 : *(v11 + 8 * ((*(a1 + 64) + v10) / 0x15)) + 192 * ((*(a1 + 64) + v10) % 0x15);
    if (v16 == v17 || vabdd_f64(*(a1 + 104), *v16) <= 1200.0)
    {
      break;
    }

    v16 += 24;
    v14 += 192;
    if ((*v15 + 4032) == v14)
    {
      v18 = v15[1];
      ++v15;
      v14 = v18;
      goto LABEL_19;
    }
  }

  if (v12 == v11)
  {
    v19 = 0;
  }

  else
  {
    v19 = (*v13 + 192 * (v10 % 0x15));
  }

  return sub_10009CB8C((a1 + 24), v13, v19, v15, v14);
}

void *sub_10009A4A0(void *result, uint64_t a2)
{
  if (a2)
  {
    v2 = *result;
    v3 = a2 - 0x5555555555555555 * ((result[1] - **result) >> 6);
    if (v3 < 1)
    {
      v5 = 20 - v3;
      v6 = &v2[-(v5 / 0x15)];
      *result = v6;
      v4 = *v6 + 192 * (21 * (v5 / 0x15) - v5) + 3840;
    }

    else
    {
      *result = &v2[v3 / 0x15];
      v4 = v2[v3 / 0x15] + 192 * (v3 % 0x15);
    }

    result[1] = v4;
  }

  return result;
}

BOOL sub_10009A55C(uint64_t a1)
{
  sub_10001A3E8();
  v2 = sub_10001CF3C();
  result = 0;
  if (v2)
  {
    if (*a1 == 1)
    {
      return *(a1 + 144) == 27;
    }
  }

  return result;
}

unint64_t sub_10009A5A8(uint64_t a1)
{
  sub_10001A3E8();
  v2 = sub_10001CF3C();
  LOBYTE(v3) = 0;
  if (v2)
  {
    if (*a1 == 1)
    {
      v4 = *(a1 + 144);
      v5 = v4 > 0x31;
      v3 = 0x23E8000000000uLL >> v4;
      if (v5)
      {
        LOBYTE(v3) = 0;
      }
    }
  }

  return v3 & 1;
}

uint64_t sub_10009A600(_DWORD *a1)
{
  if (*a1 == 1)
  {
    return CLMotionActivity::isTypePedestrian();
  }

  else
  {
    return 0;
  }
}

BOOL sub_10009A61C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 392);
  if (v2 == 2)
  {
    if (a2)
    {
      *(a1 + 400) = 3;
    }

    else
    {
      v8 = *(a1 + 400) - 1;
      *(a1 + 400) = v8;
      if (!v8)
      {
        v2 = 1;
        *(a1 + 392) = 1;
        v7 = 12;
        goto LABEL_21;
      }
    }

    v2 = 2;
    return v2 == 2;
  }

  if (v2 == 1)
  {
    if (a2)
    {
      v6 = *(a1 + 400) - 1;
      *(a1 + 400) = v6;
      if (!v6)
      {
        v2 = 2;
        *(a1 + 392) = 2;
        v7 = 3;
LABEL_21:
        *(a1 + 400) = v7;
        return v2 == 2;
      }
    }

    else
    {
      *(a1 + 400) = 12;
    }

    v2 = 1;
    return v2 == 2;
  }

  if (v2)
  {
    return v2 == 2;
  }

  v3 = *(a1 + 400) - 1;
  *(a1 + 400) = v3;
  if (!v3)
  {
    if (a2)
    {
      v4 = 2;
    }

    else
    {
      v4 = 1;
    }

    *(a1 + 392) = v4;
    v5 = 12;
    if (a2)
    {
      v5 = 3;
    }

    *(a1 + 400) = v5;
  }

  return a2;
}

BOOL sub_10009A6E4(uint64_t a1, double a2, double a3, double a4)
{
  v4 = a3 / a2;
  v11 = a2 == 0.0;
  v5 = 0.0;
  if (!v11)
  {
    v5 = v4;
  }

  v6 = *(a1 + 1312);
  switch(v6)
  {
    case 2:
      if (v5 < 2.5)
      {
        *(a1 + 1316) = 3;
        goto LABEL_25;
      }

      if (a4 == 0.0)
      {
        if (qword_1025D4270 != -1)
        {
          sub_101A3472C();
        }

        v14 = qword_1025D4278;
        if (os_log_type_enabled(qword_1025D4278, OS_LOG_TYPE_FAULT))
        {
          *buf = 0;
          _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_FAULT, "How can we generate pedometer distance with no time at all?", buf, 2u);
        }

        if (sub_10000A100(121, 0))
        {
          sub_101A357B8();
        }

        if (qword_1025D4270 != -1)
        {
          sub_101A344C8();
        }

        v15 = qword_1025D4278;
        if (os_log_type_enabled(qword_1025D4278, OS_LOG_TYPE_FAULT))
        {
          *buf = 68289539;
          v19 = 0;
          v20 = 2082;
          v21 = "";
          v22 = 2082;
          v23 = "assert";
          v24 = 2081;
          v25 = "false";
          _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
          if (qword_1025D4270 != -1)
          {
            goto LABEL_44;
          }
        }

        while (1)
        {
          v16 = qword_1025D4278;
          if (os_signpost_enabled(qword_1025D4278))
          {
            *buf = 68289539;
            v19 = 0;
            v20 = 2082;
            v21 = "";
            v22 = 2082;
            v23 = "assert";
            v24 = 2081;
            v25 = "false";
            _os_signpost_emit_with_name_impl(dword_100000000, v16, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Assertion failed", "{msg%{public}.0s:Assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
            if (qword_1025D4270 != -1)
            {
              sub_101A344C8();
            }
          }

          v17 = qword_1025D4278;
          if (os_log_type_enabled(qword_1025D4278, OS_LOG_TYPE_INFO))
          {
            *buf = 68289539;
            v19 = 0;
            v20 = 2082;
            v21 = "";
            v22 = 2082;
            v23 = "assert";
            v24 = 2081;
            v25 = "false";
            _os_log_impl(dword_100000000, v17, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
          }

          abort_report_np();
LABEL_44:
          sub_101A344C8();
        }
      }

      v9 = *(a1 + 1316) - 1;
      *(a1 + 1316) = v9;
      v11 = a3 / a4 > 13.0 || v5 > 6.0 || v9 == 0;
      if (!v11)
      {
        goto LABEL_25;
      }

      *(a1 + 1312) = 0x800000001;
LABEL_24:
      v6 = 1;
      return v6 == 1;
    case 1:
      if (v5 >= 2.5)
      {
        *(a1 + 1316) = 8;
      }

      else
      {
        v8 = *(a1 + 1316) - 1;
        *(a1 + 1316) = v8;
        if (!v8)
        {
          *(a1 + 1312) = 0x300000002;
LABEL_25:
          v6 = 2;
          return v6 == 1;
        }
      }

      goto LABEL_24;
    case 0:
      v7 = *(a1 + 1316) - 1;
      *(a1 + 1316) = v7;
      if (v7)
      {
        v6 = 0;
      }

      else
      {
        v12 = vbsl_s8(vcltz_s32(vshl_n_s32(vdup_n_s32(v5 < 2.5), 0x1FuLL)), 0x300000002, 0x800000001);
        *(a1 + 1312) = v12;
        v6 = v12.i32[0];
      }

      break;
  }

  return v6 == 1;
}

void *sub_10009AA90(uint64_t a1, uint64_t a2)
{
  v59 = 0.0;
  v60 = 0.0;
  v4 = *(a2 + 24);
  if (v4 <= 0.0)
  {
    v4 = *(a1 + 248);
    if (v4 <= 0.0)
    {
      if (qword_1025D4270 != -1)
      {
        sub_10032515C();
      }

      v5 = qword_1025D4278;
      if (os_log_type_enabled(qword_1025D4278, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEBUG, "[RunningSpeedKF] feedStepCountEntry - firstStepTime & previous step count unset. Assuming 1 epoch prior", buf, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101B00398();
      }

      v4 = *(a2 + 16) + -2.56;
    }
  }

  v6 = *(a2 + 240);
  v7 = *(a2 + 48);
  v55 = v6 - v4;
  v56 = *(a2 + 264);
  if (v7 <= 0.0)
  {
    v8 = *(a1 + 536);
  }

  else
  {
    v8 = *(a2 + 288) / v7;
  }

  v53 = *(a2 + 240);
  v54 = vabdd_f64(*(a1 + 520), v4);
  v58 = 0;
  v57 = 0;
  v9 = fmin(fmin(v7, v56), v55);
  v10 = v9 > 0.0;
  if (v9 > 0.0)
  {
    if (*(*a1 + 80))
    {
      v11 = 2.96714;
      if (sub_100FF8460(a1, &v58, &v57, v6) && sub_100FF863C(a1, &v59, v4, v53))
      {
        sub_100FF8D0C(a1, &v59, v58, v56);
        v12 = *(a1 + 576) < 100.0;
        v11 = dbl_101D16F70[*(a1 + 576) < 100.0];
LABEL_31:
        v16 = 0.148357;
        if (v54 < 8.25)
        {
          v16 = v11;
        }

        *(a1 + 600) = v16;
        goto LABEL_34;
      }
    }

    else
    {
      if (qword_1025D4270 != -1)
      {
        sub_101B0048C();
      }

      v14 = qword_1025D4278;
      if (os_log_type_enabled(qword_1025D4278, OS_LOG_TYPE_INFO))
      {
        v15 = *(*a1 + 80);
        *buf = 67240192;
        *v68 = v15;
        _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_INFO, "[RunningSpeedKF] feedStepCountEntry - odometerSpeed is unavailable (isActive=%{public}d)", buf, 8u);
      }

      v11 = 2.96714;
      if (sub_10000A100(121, 2))
      {
        sub_101B004B4(a1);
      }
    }

    v12 = 0;
    goto LABEL_31;
  }

  if (qword_1025D4270 != -1)
  {
    sub_101B0048C();
  }

  v13 = qword_1025D4278;
  if (os_log_type_enabled(qword_1025D4278, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134218496;
    *v68 = v7;
    *&v68[8] = 2048;
    *&v68[10] = v56;
    *&v68[18] = 2048;
    *&v68[20] = v55;
    _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_DEBUG, "[RunningSpeedKF] feedStepCountEntry - zero deltaPedDist (%.2f), deltaCalPedDist (%.2f) and/or deltaTime (%.2f)", buf, 0x20u);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4270 != -1)
    {
      sub_101B0048C();
    }

    v61 = 134218496;
    v62 = v7;
    v63 = 2048;
    v64 = v56;
    v65 = 2048;
    v66 = v55;
    v52 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "void CLPedometer::RunningSpeedKF::feedStepCountEntry(const CLExtendedStepCountEntry &)", "%s\n", v52);
    if (v52 != buf)
    {
      free(v52);
    }
  }

  v12 = 0;
LABEL_34:
  *(a1 + 560) = *(a1 + 560) + *(a1 + 568);
  v17 = sub_1000A0FB0(a1);
  v18 = sub_10009B318(a1);
  if (*(a2 + 256) == 1 && v8 > 0.0 && *(a2 + 296) == 1)
  {
    v20 = v18;
    if (vabdd_f64(v8, *(a1 + 536)) > 0.001 && vabdd_f64(v18, v17) > 0.1)
    {
      if (qword_1025D4270 != -1)
      {
        sub_101B0048C();
      }

      v21 = qword_1025D4278;
      if (os_log_type_enabled(qword_1025D4278, OS_LOG_TYPE_DEFAULT))
      {
        v22 = *(a1 + 536);
        v23 = *(a2 + 296);
        *buf = 68290306;
        *v68 = 0;
        *&v68[4] = 2082;
        *&v68[6] = "";
        *&v68[14] = 2050;
        *&v68[16] = v8;
        *&v68[24] = 2050;
        *&v68[26] = v22;
        v69 = 1026;
        v70 = v23;
        v71 = 1026;
        v72 = v17;
        v73 = 1026;
        v74 = v20;
        _os_log_impl(dword_100000000, v21, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:[RunningSpeedKF] Reset fDistanceBuffer, currentkValue:%{public}f, previouskValue:%{public}f, energyIsCalibrated:%{public}u, biasFactor:%{public}d, biasFactorInstantaneous:%{public}d}", buf, 0x38u);
      }

      v24 = *(a1 + 648);
      v25 = *(a1 + 656);
      *(a1 + 680) = 0;
      v26 = (v25 - v24) >> 3;
      if (v26 >= 3)
      {
        do
        {
          operator delete(*v24);
          v24 = (*(a1 + 648) + 8);
          *(a1 + 648) = v24;
          v26 = (*(a1 + 656) - v24) >> 3;
        }

        while (v26 > 2);
      }

      v17 = 0.0;
      if (v26 == 1)
      {
        v27 = 85;
      }

      else
      {
        if (v26 != 2)
        {
          goto LABEL_50;
        }

        v27 = 170;
      }

      *(a1 + 672) = v27;
    }
  }

LABEL_50:
  *(a1 + 536) = v8;
  if (v10)
  {
    v28 = v7 * v17;
    if (v17 <= 0.0)
    {
      v28 = v56;
    }

    v29 = v28 / v55;
    if (v12)
    {
      v30 = v59;
      v19.f64[0] = v7;
      sub_100FF8E28(a1, v4, v19, v59);
      v31 = v30 / v60;
      sub_100FF8EA0(a1, v58, v31, v29);
    }

    else
    {
      sub_100FF8FE0(a1, v28 / v55);
      v31 = -INFINITY;
    }

    v34 = 0;
    *(a1 + 528) = 0;
  }

  else
  {
    v32 = *(a1 + 528);
    *(a1 + 528) = v32 + 1;
    if (v32 < 1)
    {
      v34 = 1;
      v29 = -INFINITY;
      v31 = -INFINITY;
    }

    else
    {
      if (qword_1025D4270 != -1)
      {
        sub_101B0048C();
      }

      v33 = qword_1025D4278;
      if (os_log_type_enabled(qword_1025D4278, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v33, OS_LOG_TYPE_DEBUG, "[RunningSpeedKF] feedStepCountEntry - no valid non-zero measurements for 2 epochs, resetting KF", buf, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101B005D0();
      }

      v34 = 0;
      *(a1 + 144) = xmmword_101D17080;
      *(a1 + 160) = unk_101D17090;
      *(a1 + 176) = xmmword_101D170A0;
      *(a1 + 80) = xmmword_101D17040;
      *(a1 + 96) = unk_101D17050;
      *(a1 + 112) = xmmword_101D17060;
      *(a1 + 128) = unk_101D17070;
      *(a1 + 16) = xmmword_101D17000;
      *(a1 + 32) = *algn_101D17010;
      *(a1 + 48) = xmmword_101D17020;
      *(a1 + 64) = unk_101D17030;
      *(a1 + 200) = 0u;
      v35 = vdupq_n_s64(0xFFF0000000000000);
      *(a1 + 608) = v35;
      *(a1 + 624) = v35;
      *(a1 + 576) = xmmword_101D170B8;
      *(a1 + 8) = 0;
      *(a1 + 192) = 0;
      *(a1 + 328) = 0;
      *(a1 + 296) = 0u;
      *(a1 + 312) = 0u;
      *(a1 + 264) = 0u;
      *(a1 + 280) = 0u;
      *(a1 + 232) = 0u;
      *(a1 + 248) = 0u;
      *(a1 + 216) = 0u;
      *(a1 + 544) = 0u;
      *(a1 + 592) = unk_101D170C8;
      *(a1 + 560) = xmmword_101D16F60;
      *(a1 + 360) = 0;
      *(a1 + 352) = 0;
      *(a1 + 336) = 0u;
      *(a1 + 368) = 0u;
      *(a1 + 384) = 0;
      *(a1 + 392) = 0u;
      *(a1 + 408) = 0u;
      *(a1 + 424) = 0u;
      *(a1 + 440) = 0u;
      *(a1 + 456) = 0u;
      *(a1 + 472) = 0u;
      *(a1 + 488) = 0u;
      *(a1 + 504) = 0u;
      *(a1 + 528) = 0;
      *(a1 + 703) = 0;
      *(a1 + 688) = 0u;
      v29 = -INFINITY;
      v31 = -INFINITY;
      *(a1 + 536) = 0;
    }
  }

  sub_10009B3C0(a1, v4);
  Current = CFAbsoluteTimeGetCurrent();
  v37 = *(a1 + 552);
  v39 = sub_1000A144C(v38, a1 + 544, v34);
  v41 = v59;
  v40 = v60;
  v42 = *(a1 + 560);
  v43 = *(a1 + 576);
  v44 = *(a1 + 600);
  v45 = *(a1 + 608);
  v46 = *(a1 + 624);
  v47 = v58;
  if (v54 >= 8.25)
  {
    v48 = 0;
    v49 = 0;
  }

  else
  {
    v48 = *(a1 + 704);
    v49 = *(a1 + 705);
  }

  v50 = v57;
  *(a1 + 336) = v4;
  *(a1 + 344) = v53;
  *(a1 + 352) = v37;
  *(a1 + 360) = v39;
  *(a1 + 368) = v29;
  *(a1 + 376) = v31;
  *(a1 + 384) = v12;
  *(a1 + 385) = v10;
  *(a1 + 392) = v7;
  *(a1 + 400) = v56;
  *(a1 + 408) = v41;
  *(a1 + 416) = v55;
  *(a1 + 424) = v40;
  *(a1 + 432) = Current - v53;
  *(a1 + 440) = v17;
  *(a1 + 448) = v42;
  *(a1 + 464) = v46;
  *(a1 + 480) = v43;
  *(a1 + 488) = v44;
  *(a1 + 496) = v45;
  *(a1 + 512) = v47;
  *(a1 + 516) = v48;
  *(a1 + 517) = v49;
  *(a1 + 518) = v54 < 8.25;
  *(a1 + 519) = v50;
  return memcpy((a1 + 8), a2, 0x148uLL);
}

double sub_10009B318(void *a1)
{
  v1 = a1[85];
  result = 0.0;
  if (v1 >= 2)
  {
    v3 = (v1 - 2);
    if (v1 <= v3)
    {
      sub_1000432E8("deque");
    }

    v4 = a1[81];
    v5 = a1[84];
    v6 = *(v4 + 8 * ((v1 + v5 - 1) / 0xAA)) + 24 * ((v1 + v5 - 1) % 0xAA);
    v7 = *(v4 + 8 * ((v5 + v3) / 0xAA)) + 24 * ((v5 + v3) % 0xAA);
    v8 = *(v6 + 8) - *(v7 + 8);
    if (v8 > 0.0)
    {
      return (*(v6 + 16) - *(v7 + 16)) / v8;
    }
  }

  return result;
}

void sub_10009B3C0(void *a1, double a2)
{
  v2 = a1[85];
  if (v2)
  {
    v5 = a1[81];
    v6 = a1[84];
    v7 = a2 - *(*(v5 + 8 * (v6 / 0xAA)) + 24 * (v6 % 0xAA));
    if (v7 <= 111.846818)
    {
LABEL_6:
      v9 = *(*(v5 + 8 * ((v2 + v6 - 1) / 0xAA)) + 24 * ((v2 + v6 - 1) % 0xAA) + 16) - *(*(v5 + 8 * (v6 / 0xAA)) + 24 * (v6 % 0xAA) + 16);
      if (v9 > 150.0)
      {
        do
        {
          a1[85] = v2 - 1;
          a1[84] = v6 + 1;
          sub_10027E208((a1 + 80), 1);
          v2 = a1[85];
          v6 = a1[84];
          v9 = *(*(a1[81] + 8 * ((v2 + v6 - 1) / 0xAA)) + 24 * ((v2 + v6 - 1) % 0xAA) + 16) - *(*(a1[81] + 8 * (v6 / 0xAA)) + 24 * (v6 % 0xAA) + 16);
        }

        while (v9 > 150.0 && v2 != 0);
      }

      if (v7 <= 0.0 || v9 <= 0.0)
      {
        if (qword_1025D4270 != -1)
        {
          sub_10032515C();
        }

        v11 = qword_1025D4278;
        if (os_log_type_enabled(qword_1025D4278, OS_LOG_TYPE_ERROR))
        {
          v12 = 134218240;
          v13 = v7;
          v14 = 2048;
          v15 = v9;
          _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_ERROR, "[RunningSpeedKF] trimDistanceBuffer - invalid buffer timeDiff or odoDistDiff: %.2f, %.2f", &v12, 0x16u);
        }

        if (sub_10000A100(121, 0))
        {
          sub_101B00FA0();
        }
      }
    }

    else
    {
      while (1)
      {
        v8 = a1[85];
        if (!v8)
        {
          break;
        }

        a1[85] = v8 - 1;
        a1[84] = v6 + 1;
        sub_10027E208((a1 + 80), 1);
        v5 = a1[81];
        v6 = a1[84];
        v7 = a2 - *(*(v5 + 8 * (v6 / 0xAA)) + 24 * (v6 % 0xAA));
        if (v7 <= 111.846818)
        {
          v2 = a1[85];
          if (!v2)
          {
            return;
          }

          goto LABEL_6;
        }
      }
    }
  }
}

BOOL sub_10009B650(uint64_t a1)
{
  v2 = sub_1000A154C(a1);
  result = 0;
  if (v2 == 1 && *(a1 + 208) != 1)
  {
    return *(a1 + 96) == 17;
  }

  return result;
}

void sub_10009B69C(void **a1, uint64_t a2, int a3, unsigned int a4, double a5)
{
  v9 = *(a2 + 88);
  v10 = *(a2 + 216);
  if ((a1[18] & 1) == 0)
  {
    a1[6] = 0;
    a1[7] = 0;
    *(a1 + 34) = 1;
    *(a1 + 2) = a5 + 5.0 + 15.0;
    *(a1 + 3) = a5;
    *(a1 + 4) = a5;
    *(a1 + 5) = a5 + -2.56;
    *(a1 + 144) = 1;
  }

  if (v9 == 0.0)
  {
    v11 = 0;
    *(a1 + 34) = 0;
  }

  else
  {
    v11 = *(a1 + 34);
    if (v11 > 2)
    {
      if (a5 - *(a1 + 8) <= 7.68)
      {
        v11 = 1;
        goto LABEL_10;
      }

      goto LABEL_9;
    }
  }

  if (a3 < 1)
  {
LABEL_9:
    v11 = 0;
    *(a1 + 34) = 0;
  }

LABEL_10:
  v12 = *(a1 + 7);
  if (v10 == 0.0 || v12 == 0.0)
  {
    v13 = v10 != 0.0;
    if (v12 != 0.0)
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = vabdd_f64(1.0 / v10, 1.0 / v12) > 1.0 / v12 * 0.15;
  }

  if (a3 < 1)
  {
    v18 = !v13;
    if (a3 == -1)
    {
      v18 = 0;
    }

    if (!v18)
    {
      *(a1 + 34) = 1;
      *(a1 + 2) = a5 + 5.0 + 15.0;
      *(a1 + 3) = a5;
    }

    v17 = 4;
    v16 = a5;
    goto LABEL_29;
  }

  v15 = v9 > 0.0 && v11 == 0;
  if (v15 || v13)
  {
    *(a1 + 34) = 1;
    *(a1 + 3) = a5;
    v16 = a5 + 5.0 + 15.0;
    v17 = 2;
LABEL_29:
    *&a1[v17] = v16;
  }

  sub_10009C0B0(a1, a5, v9);
  v64 = -1.0;
  v65 = 0xBFF0000000000000;
  v19 = sub_10009D1B4(a1);
  if (a3 >= 1 && v9 > 0.0)
  {
    v20 = v19;
    if (v19 > 0.0)
    {
      v21 = a5 - sub_100A5DC34(v9);
      if (v21 >= v20)
      {
        v22 = v21;
      }

      else
      {
        v22 = v20;
      }

      v23 = sub_10009C154(a1, a5);
      if (v23 - v22 <= 15.0)
      {
        v29 = 2;
LABEL_63:
        v37 = 0;
        *(a1 + 34) = v29;
        goto LABEL_65;
      }

      v24 = sub_100A5DCA8(a1, *a1, v22, v23);
      v65 = *&v24;
      v25 = v23 + -20.0;
      if (v22 > v23 + -20.0)
      {
        v25 = v22;
      }

      v63 = v25;
      v26 = sub_100A5DCA8(a1, *a1, v25, v23);
      v64 = v26;
      v27 = *(a1 + 1);
      v28 = -(a5 - *(a1 + 5));
      if (*(a1 + 34) >= 3)
      {
        v24 = *(a1 + 11);
      }

      else
      {
        if (v27 != 0.0)
        {
          *(a1 + 10) = 1.0 - exp(v28 / v27);
        }

        *(a1 + 15) = v26;
      }

      *(a1 + 34) = 3;
      v30 = 1.0;
      if (v27 != 0.0)
      {
        v30 = 1.0 - exp(v28 / v27);
      }

      *(a1 + 26) = 3;
      *(a1 + 96) = 0;
      *(a1 + 10) = v30;
      *(a1 + 11) = v24;
      *(a1 + 18) = 3;
      *(a1 + 14) = 1.0 - exp(v28 / fmax(v27, 15.0));
      *(a1 + 128) = 0;
      sub_1000A6810((a1 + 9), &v65);
      sub_1000A6810((a1 + 13), &v64);
      v31 = *(a1 + 11);
      v32 = *(a1 + 15);
      if (v31 == 0.0 || v32 == 0.0)
      {
        if (v31 == 0.0 && v32 == 0.0)
        {
          goto LABEL_58;
        }
      }

      else if (vabdd_f64(1.0 / v32, 1.0 / v31) <= 1.0 / v31 * 0.15)
      {
LABEL_58:
        *(a1 + 8) = v23;
        goto LABEL_59;
      }

      v33 = vabdd_f64(v31, v9);
      if (vabdd_f64(v32, v9) < v33 && vabdd_f64(v64, v9) < v33)
      {
        v34 = *(a1 + 1);
        v35 = 1.0;
        if (v34 != 0.0)
        {
          v35 = 1.0 - exp(v28 / v34);
        }

        *(a1 + 96) = 0;
        *(a1 + 10) = v35;
        *(a1 + 11) = v32;
        *(a1 + 18) = 3;
        *(a1 + 34) = 4;
        *(a1 + 2) = a5;
        *(a1 + 3) = v63;
      }

      goto LABEL_58;
    }
  }

LABEL_59:
  if (*(a1 + 34) < 3)
  {
    v37 = 0;
    goto LABEL_65;
  }

  v29 = 0;
  v36 = *(a1 + 11);
  if (v36 > 1.6777 || v36 < 0.0909)
  {
    goto LABEL_63;
  }

  v37 = 1;
LABEL_65:
  *(a1 + 35) = 0;
  v38 = v9;
  if (v9 > 0.0)
  {
    v38 = v9;
    if (a3 == 2)
    {
      v38 = v9;
      if (v37)
      {
        *(a1 + 35) = 1;
        v38 = *(a1 + 11);
      }
    }
  }

  v39 = sub_1000A1844(a1);
  v40 = v39;
  if (a5 + -120.0 >= v39)
  {
    v41 = a5 + -120.0;
  }

  else
  {
    v41 = v39;
  }

  v42 = sub_10009C154(a1, a5);
  v43 = 0;
  v44 = 0.0;
  if (a3 == 2 && v40 > 0.0 && v42 - v41 > 15.0)
  {
    v44 = sub_100A5DCA8(a1, *a1, v41, v42);
    v43 = v44 < 1.6777 && v44 > 0.0909;
  }

  if (qword_1025D4270 != -1)
  {
    sub_1019D17D4();
  }

  v45 = qword_1025D4278;
  if (os_log_type_enabled(qword_1025D4278, OS_LOG_TYPE_DEBUG))
  {
    v46 = *(a1 + 34);
    if (v46 < 3)
    {
      v47 = 0;
      v48 = 0;
    }

    else
    {
      v47 = a1[11];
      v48 = a1[15];
    }

    v49 = v46;
    v50 = *(a1 + 35);
    v51 = v44;
    v53 = a1[3];
    v52 = a1[4];
    *buf = 136323074;
    v131 = "PaceFusion_Epoch_Time";
    v132 = 2048;
    v133 = a5;
    v134 = 2080;
    v135 = "PaceFusion_Epoch_PedometerPace";
    v136 = 2048;
    v137 = v9;
    v138 = 2080;
    v139 = "PaceFusion_Epoch_PedometerPaceUncalibrated";
    v140 = 2048;
    v141 = v10;
    v142 = 2080;
    v143 = "PaceFusion_Epoch_SmoothOdometerPace";
    v144 = 2048;
    v145 = v47;
    v146 = 2080;
    v147 = "PaceFusion_Epoch_SmoothShortOdometerPace";
    v148 = 2048;
    v149 = v48;
    v150 = 2080;
    v151 = "PaceFusion_Epoch_LongMeanOdometerPace";
    v152 = 2048;
    v153 = v65;
    v154 = 2080;
    v155 = "PaceFusion_Epoch_ShortMeanOdometerPace";
    v156 = 2048;
    v157 = v64;
    v158 = 2080;
    v159 = "PaceFusion_Epoch_PaceResetTime";
    v160 = 2048;
    v161 = v53;
    v162 = 2080;
    v163 = "PaceFusion_Epoch_FinalFusedPace";
    v164 = 2048;
    v165 = v38;
    v166 = 2080;
    v167 = "PaceFusion_Epoch_OdometerPaceQuality";
    v168 = 2048;
    v169 = a3;
    v170 = 2080;
    v171 = "PaceFusion_Epoch_MeanPaceState";
    v172 = 2048;
    v173 = v49;
    v174 = 2080;
    v175 = "PaceFusion_Epoch_PaceFusionOutput";
    v176 = 2048;
    v177 = v50;
    v178 = 2080;
    v179 = "PaceFusion_Epoch_DoRequestPureGpsOdometerPace";
    v180 = 2048;
    v181 = a4;
    v182 = 2080;
    v183 = "PaceFusion_Epoch_IsPureGpsOdometerPaceAvailable";
    v184 = 2048;
    v185 = v43;
    v186 = 2080;
    v187 = "PaceFusion_Epoch_PureGpsOdometerPace";
    v188 = 2048;
    v189 = v51;
    v190 = 2080;
    v191 = "PaceFusion_Epoch_PureGpsOdometerPaceResetTime";
    v192 = 2048;
    v193 = v52;
    _os_log_impl(dword_100000000, v45, OS_LOG_TYPE_DEBUG, "%s,%f,%s,%f,%s,%f,%s,%f,%s,%f,%s,%f,%s,%f,%s,%f,%s,%f,%s,%f,%s,%f,%s,%f,%s,%f,%s,%f,%s,%f,%s,%f", buf, 0x142u);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4270 != -1)
    {
      sub_1019D17D4();
    }

    v54 = *(a1 + 34);
    if (v54 < 3)
    {
      v55 = 0;
      v56 = 0;
    }

    else
    {
      v55 = a1[11];
      v56 = a1[15];
    }

    v57 = v54;
    v58 = *(a1 + 35);
    v59 = v44;
    v61 = a1[3];
    v60 = a1[4];
    v66 = 136323074;
    v67 = "PaceFusion_Epoch_Time";
    v68 = 2048;
    v69 = a5;
    v70 = 2080;
    v71 = "PaceFusion_Epoch_PedometerPace";
    v72 = 2048;
    v73 = v9;
    v74 = 2080;
    v75 = "PaceFusion_Epoch_PedometerPaceUncalibrated";
    v76 = 2048;
    v77 = v10;
    v78 = 2080;
    v79 = "PaceFusion_Epoch_SmoothOdometerPace";
    v80 = 2048;
    v81 = v55;
    v82 = 2080;
    v83 = "PaceFusion_Epoch_SmoothShortOdometerPace";
    v84 = 2048;
    v85 = v56;
    v86 = 2080;
    v87 = "PaceFusion_Epoch_LongMeanOdometerPace";
    v88 = 2048;
    v89 = v65;
    v90 = 2080;
    v91 = "PaceFusion_Epoch_ShortMeanOdometerPace";
    v92 = 2048;
    v93 = v64;
    v94 = 2080;
    v95 = "PaceFusion_Epoch_PaceResetTime";
    v96 = 2048;
    v97 = v61;
    v98 = 2080;
    v99 = "PaceFusion_Epoch_FinalFusedPace";
    v100 = 2048;
    v101 = v38;
    v102 = 2080;
    v103 = "PaceFusion_Epoch_OdometerPaceQuality";
    v104 = 2048;
    v105 = a3;
    v106 = 2080;
    v107 = "PaceFusion_Epoch_MeanPaceState";
    v108 = 2048;
    v109 = v57;
    v110 = 2080;
    v111 = "PaceFusion_Epoch_PaceFusionOutput";
    v112 = 2048;
    v113 = v58;
    v114 = 2080;
    v115 = "PaceFusion_Epoch_DoRequestPureGpsOdometerPace";
    v116 = 2048;
    v117 = a4;
    v118 = 2080;
    v119 = "PaceFusion_Epoch_IsPureGpsOdometerPaceAvailable";
    v120 = 2048;
    v121 = v43;
    v122 = 2080;
    v123 = "PaceFusion_Epoch_PureGpsOdometerPace";
    v124 = 2048;
    v125 = v59;
    v126 = 2080;
    v127 = "PaceFusion_Epoch_PureGpsOdometerPaceResetTime";
    v128 = 2048;
    v129 = v60;
    v62 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "double CLPedometerPaceFusion::computeFusedPace(CFAbsoluteTime, const CLExtendedStepCountEntry &, CLPedometer::FusionOdometerQuality, BOOL)", "%s\n", v62);
    if (v62 != buf)
    {
      free(v62);
    }
  }

  *(a1 + 6) = v9;
  *(a1 + 7) = v10;
  *(a1 + 5) = a5;
}

void sub_10009C0B0(uint64_t a1, double a2, double a3)
{
  v10 = a3 < 0.372823626;
  v6 = 1.0;
  if (!v10)
  {
    v6 = 0.0;
    if (a3 < 0.559235454)
    {
      v7 = sub_1000A1DCC(0.559235454, 0.0, 0.372823626, 1.0, a3);
      v6 = v7;
    }
  }

  v8 = (1.0 - v6) * 45.0 + 15.0;
  v9 = *(a1 + 16);
  v10 = v9 + 20.0 > a2 && v9 < a2;
  if (v10)
  {
    v8 = 6.66666667;
  }

  *(a1 + 8) = v8;
}

double sub_10009C154(void **a1, double a2)
{
  v2 = a2;
  v6 = 0;
  if (!sub_1000A1570(a2, a1, *a1, &v6))
  {
    v4 = (*a1)[8];
    if (v4)
    {
      return *(*((*a1)[4] + 8 * ((v4 + (*a1)[7] - 1) / 0x15uLL)) + 192 * ((v4 + (*a1)[7] - 1) % 0x15uLL));
    }

    else
    {
      return -1.79769313e308;
    }
  }

  return v2;
}

uint64_t sub_10009C200(uint64_t a1, int a2)
{
  if ((a2 - 2) < 3)
  {
    return 1;
  }

  if (a2)
  {
    return 0;
  }

  v7 = v2;
  v8 = v3;
  if (qword_1025D4270 != -1)
  {
    sub_101A3472C();
  }

  v5 = qword_1025D4278;
  if (os_log_type_enabled(qword_1025D4278, OS_LOG_TYPE_ERROR))
  {
    *v6 = 0;
    _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_ERROR, "[PaceController] isUsingOdometer - Requested while uninitialized", v6, 2u);
  }

  result = sub_10000A100(121, 0);
  if (result)
  {
    sub_101A358A4();
    return 0;
  }

  return result;
}

uint64_t sub_10009C2BC(uint64_t a1, _OWORD *a2)
{
  a2[10] = 0u;
  a2[11] = 0u;
  a2[8] = 0u;
  a2[9] = 0u;
  a2[6] = 0u;
  a2[7] = 0u;
  a2[4] = 0u;
  a2[5] = 0u;
  a2[2] = 0u;
  a2[3] = 0u;
  *a2 = 0u;
  a2[1] = 0u;
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  result = (*(*a1 + 16))(a1, &v16, &v14);
  if (result)
  {
    v4 = *(&v17 + 1);
    if (*(&v17 + 1) == *(&v15 + 1))
    {
      return 0;
    }

    else
    {
      if (*v17 == *(&v17 + 1))
      {
        v4 = *(v17 - 8) + 4032;
      }

      v5 = *(v4 - 192);
      v6 = *(v4 - 176);
      v7 = *(v4 - 144);
      a2[2] = *(v4 - 160);
      a2[3] = v7;
      *a2 = v5;
      a2[1] = v6;
      v8 = *(v4 - 128);
      v9 = *(v4 - 112);
      v10 = *(v4 - 80);
      a2[6] = *(v4 - 96);
      a2[7] = v10;
      a2[4] = v8;
      a2[5] = v9;
      v11 = *(v4 - 64);
      v12 = *(v4 - 48);
      v13 = *(v4 - 16);
      a2[10] = *(v4 - 32);
      a2[11] = v13;
      a2[8] = v11;
      a2[9] = v12;
      return 1;
    }
  }

  return result;
}

BOOL sub_10009C39C(uint64_t a1, uint64_t a2, void *a3, double a4)
{
  v4 = *(a1 + 56);
  v5 = *(a1 + 32);
  v6 = (v5 + 8 * (v4 / 0x15));
  if (*(a1 + 40) == v5)
  {
    v7 = 0;
  }

  else
  {
    v7 = *v6 + 192 * (v4 % 0x15);
  }

  *a3 = v6;
  a3[1] = v7;
  a3[2] = v6;
  a3[3] = v7;
  v8 = *(a3 + 1);
  *a2 = *a3;
  *(a2 + 16) = v8;
  v9 = *(a1 + 56) + *(a1 + 64);
  v10 = *(a1 + 32);
  v11 = (v10 + 8 * (v9 / 0x15));
  if (*(a1 + 40) == v10)
  {
    v12 = 0;
  }

  else
  {
    v12 = *v11 + 192 * (v9 % 0x15);
  }

  if (a3[3] != v12)
  {
    v13 = *v11;
    v14 = 1.79769313e308;
    v15 = v12;
    v16 = v11;
    while (1)
    {
      v17 = v15;
      if (v15 == v13)
      {
        v17 = *(v16 - 1) + 4032;
      }

      v18 = vabdd_f64(*(v17 - 192), a4);
      if (v18 < v14 && v18 < *(a1 + 16))
      {
        *a2 = v11;
        *(a2 + 8) = v12;
        *(a2 + 16) = v16;
        *(a2 + 24) = v15;
        v13 = *v16;
        v19 = v15;
        if (v15 == *v16)
        {
          v19 = *(v16 - 1) + 4032;
        }

        v14 = v18;
        if (*(v19 - 192) == a4)
        {
          break;
        }
      }

      if (v15 == v13)
      {
        v20 = *--v16;
        v13 = v20;
        v15 = v20 + 4032;
      }

      v15 -= 192;
      if (a3[3] == v15)
      {
        v12 = v15;
        return *(a2 + 24) != v12;
      }
    }

    v12 = a3[3];
  }

  return *(a2 + 24) != v12;
}

uint64_t sub_10009C4FC(uint64_t a1)
{
  if (sub_10009DABC(a1))
  {
    return 1;
  }

  if (*(a1 + 160) != 1)
  {
    return 0;
  }

  return CLMotionActivity::isTypeIndoorPedestrian();
}

void sub_10009C564(uint64_t a1, void *a2)
{
  v23 = [[CLOSTransaction alloc] initWithDescription:"CLStepCountNotifier.recordAndNotifyFusedStepDistance"];
  v4 = a2[1];
  if (*a2 != v4)
  {
    v5 = (*a2 + 184);
    do
    {
      if (*(a1 + 7232) == 1)
      {
        if (qword_1025D4270 != -1)
        {
          sub_101BD36A8();
        }

        v6 = qword_1025D4278;
        if (os_log_type_enabled(qword_1025D4278, OS_LOG_TYPE_DEBUG))
        {
          v7 = *(v5 - 22);
          v8 = *(v5 - 40);
          v10 = *(v5 - 19);
          v9 = *(v5 - 18);
          v11 = *(v5 - 12);
          v12 = *(v5 - 17);
          v13 = *(v5 - 24);
          *buf = 134219520;
          *&buf[4] = v7;
          *&buf[12] = 1024;
          *&buf[14] = v8;
          *&buf[18] = 2048;
          *&buf[20] = v9;
          *&buf[28] = 2048;
          *&buf[30] = v10;
          *&buf[38] = 2048;
          *&buf[40] = v11;
          LOWORD(v39) = 2048;
          *(&v39 + 2) = v12;
          WORD5(v39) = 1024;
          HIDWORD(v39) = v13;
          _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "Adding Fused entry, time, %f, count, %d, raw_dist(m), %f, fused_dist(m), %f, cadence(steps/s), %f, mobility_dist(m), %f, arm_cstr_state, %d", buf, 0x40u);
        }

        if (sub_10000A100(121, 2))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1025D4270 != -1)
          {
            sub_101BD36A8();
          }

          v15 = *(v5 - 22);
          v16 = *(v5 - 40);
          v18 = *(v5 - 19);
          v17 = *(v5 - 18);
          v19 = *(v5 - 12);
          v20 = *(v5 - 17);
          v21 = *(v5 - 24);
          v24 = 134219520;
          v25 = v15;
          v26 = 1024;
          v27 = v16;
          v28 = 2048;
          v29 = v17;
          v30 = 2048;
          v31 = v18;
          v32 = 2048;
          v33 = v19;
          v34 = 2048;
          v35 = v20;
          v36 = 1024;
          v37 = v21;
          v22 = _os_log_send_and_compose_impl();
          sub_100152C7C("Generic", 1, 0, 2, "void CLStepCountNotifier::recordAndNotifyFusedStepDistance(const std::vector<CLStepDistanceFusionResult> &)", "%s\n", v22);
          if (v22 != buf)
          {
            free(v22);
          }
        }
      }

      *buf = 3;
      if (sub_10000608C(a1, buf, 1) && *v5 > 0.0)
      {
        v24 = 3;
        v56 = 0;
        v54 = 0u;
        v55 = 0u;
        v52 = 0u;
        v53 = 0u;
        v50 = 0u;
        v51 = 0u;
        v48 = 0u;
        v49 = 0u;
        v46 = 0u;
        v47 = 0u;
        v44 = 0u;
        v45 = 0u;
        v42 = 0u;
        v43 = 0u;
        v40 = 0u;
        v41 = 0u;
        v39 = 0u;
        memset(&buf[16], 0, 32);
        *buf = *v5;
        (*(*a1 + 152))(a1, &v24, buf, 1, 0xFFFFFFFFLL, 0);
      }

      sub_10009CAE0(a1 + 144, v5 - 184);
      if ((*(a1 + 7233) & 1) == 0)
      {
        sub_1000A1DEC(*(a1 + 840), *(a1 + 3928), *(a1 + 3932), *(a1 + 3880), *(a1 + 3888), *(a1 + 3896), *(a1 + 3904), *(a1 + 3912), *(a1 + 3920));
      }

      v14 = v5 + 1;
      v5 = (v5 + 200);
    }

    while (v14 != v4);
  }
}

uint64_t sub_10009C8D8(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 1);
  v4 = *(a2 + 2);
  *&v9 = __PAIR64__(v4, v3);
  v5 = *(a1 + 352);
  *(&v9 + 1) = v5;
  if (qword_1025D4200 != -1)
  {
    sub_101AD9AD8();
  }

  v6 = qword_1025D4208;
  if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_INFO))
  {
    *buf = 67109632;
    v17 = v3;
    v18 = 1024;
    v19 = v4;
    v20 = 2048;
    v21 = v5;
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_INFO, "Type,CLOscar,onBodyStatus,%d,confidence,%d,timestamp,%f", buf, 0x18u);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4200 != -1)
    {
      sub_101AD9CD8();
    }

    v10 = 67109632;
    v11 = v3;
    v12 = 1024;
    v13 = v4;
    v14 = 2048;
    v15 = v5;
    v8 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "virtual void CLMotionCoprocessor::visitOnBodyStatus(const CMMotionCoprocessorReply::OnBodyStatus *)", "%s\n", v8);
    if (v8 != buf)
    {
      free(v8);
    }
  }

  result = sub_100013B00(a1, 2, &v9, 16);
  *(a1 + 840) = v9;
  return result;
}

uint64_t sub_10009CAE0(uint64_t a1, uint64_t a2)
{
  result = sub_10009D220(*(a1 + 24), a2);
  if ((*(a1 + 41) & 1) == 0)
  {
    result = sub_100099160(*(a1 + 24) + 72);
    if (result)
    {
      *(a1 + 41) = 1;

      return sub_1013771B4(a1);
    }
  }

  return result;
}

BOOL sub_10009CB48(uint64_t a1, double *a2)
{
  result = *a2 <= 3628972800.0 && *a2 >= 441763200.0;
  if (result || (byte_1026630B4 & 1) == 0)
  {
    byte_1026630B4 = !result;
  }

  return result;
}

unint64_t sub_10009CB8C(void *a1, void *a2, char *a3, void *a4, char *a5)
{
  if (a5 == a3)
  {
    v6 = 0;
  }

  else
  {
    v6 = 21 * (a4 - a2) - 0x5555555555555555 * (&a5[-*a4] >> 6) + 0x5555555555555555 * (&a3[-*a2] >> 6);
  }

  v7 = a1[4];
  v8 = a1[1];
  v9 = (v8 + 8 * (v7 / 0x15));
  if (a1[2] == v8)
  {
    v10 = 0;
  }

  else
  {
    v10 = &(*v9)[192 * (v7 % 0x15)];
  }

  if (a3 == v10)
  {
    v11 = 0;
  }

  else
  {
    v11 = 21 * (a2 - v9) - 0x5555555555555555 * (&a3[-*a2] >> 6) + 0x5555555555555555 * ((v10 - *v9) >> 6);
  }

  v24[0].n128_u64[0] = v8 + 8 * (v7 / 0x15);
  v24[0].n128_u64[1] = v10;
  sub_10009A4A0(v24, v11);
  if (v6 >= 1)
  {
    v12 = v24[0];
    if (v11 <= (a1[5] - v6) >> 1)
    {
      sub_10009A4A0(v24, v6);
      sub_10023FA24(v9, v10, v12.n128_u64[0], v12.n128_u64[1], v24[0].n128_u64[0], v24[0].n128_u64[1], v24);
      v18 = a1[5] - v6;
      a1[4] += v6;
      a1[5] = v18;
        ;
      }
    }

    else
    {
      sub_10009A4A0(v24, v6);
      v13 = v24[0];
      v14 = a1[4] + a1[5];
      v15 = a1[1];
      v16 = (v15 + 8 * (v14 / 0x15));
      if (a1[2] == v15)
      {
        v17 = 0;
      }

      else
      {
        v17 = &(*v16)[192 * (v14 % 0x15)];
      }

      v24[0] = v12;
      sub_10030C9A8(v13.n128_u64[0], v13.n128_u64[1], v16, v17, v24);
      a1[5] -= v6;
        ;
      }
    }
  }

  v19 = a1[4];
  v20 = a1[1];
  v21 = (v20 + 8 * (v19 / 0x15));
  if (a1[2] == v20)
  {
    v22 = 0;
  }

  else
  {
    v22 = *v21 + 192 * (v19 % 0x15);
  }

  v24[0].n128_u64[0] = v21;
  v24[0].n128_u64[1] = v22;
  sub_10009A4A0(v24, v11);
  return v24[0].n128_u64[0];
}

unint64_t sub_10009CE08(uint64_t a1, double a2)
{
  v4 = *(a1 + 104);
  *(a1 + 104) = a2;
  v5 = a2 > 0.0;
  if (v4 <= a2)
  {
    v5 = 0;
  }

  *(a1 + 120) = v5;
  if (v5)
  {
    if (qword_1025D4230 != -1)
    {
      sub_101A35BA4();
    }

    v6 = qword_1025D4238;
    if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 8);
      v8 = *(a1 + 104);
      v9 = *(a1 + 121);
      *buf = 136316162;
      v23 = v7;
      v24 = 2048;
      v25 = v8 - v4;
      v26 = 2048;
      v27 = v4;
      v28 = 2048;
      v29 = v8;
      v30 = 1024;
      v31 = v9;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEFAULT, "#Warning Input, %s, time rolled back. Delta %f, Previous Time %f, Current Time %f, Always Active %d.", buf, 0x30u);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4230 != -1)
      {
        sub_101A35CA8();
      }

      v21 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "virtual void CLNatalieInput<CLExtendedStepCountEntry>::update(CFAbsoluteTime) [T = CLExtendedStepCountEntry]", "%s\n", v21);
      if (v21 != buf)
      {
        free(v21);
      }
    }
  }

  if (*(a1 + 80) == 1 && (*(a1 + 121) & 1) == 0 && (*(a1 + 88) < a2 || *(a1 + 120) == 1) && (*(*a1 + 72))(a1))
  {
    *(a1 + 80) = 0;
    *(a1 + 88) = 0;
  }

  v10 = *(a1 + 56);
  v11 = *(a1 + 32);
  v12 = *(a1 + 40);
  v13 = (v11 + 8 * (v10 >> 4));
  if (v12 == v11)
  {
    v14 = 0;
  }

  else
  {
    v14 = (*v13 + 328 * (*(a1 + 56) & 0xFLL));
  }

  v15 = (v11 + 8 * (v10 >> 4));
LABEL_19:
  v16 = v14;
  while (1)
  {
    v17 = v12 == v11 ? 0 : *(v11 + (((*(a1 + 64) + v10) >> 1) & 0x7FFFFFFFFFFFFFF8)) + 328 * ((*(a1 + 64) + v10) & 0xF);
    if (v16 == v17 || vabdd_f64(*(a1 + 104), *v16) <= 1200.0)
    {
      break;
    }

    v16 += 41;
    v14 += 328;
    if ((*v15 + 5248) == v14)
    {
      v18 = *(v15 + 1);
      v15 += 8;
      v14 = v18;
      goto LABEL_19;
    }
  }

  if (v12 == v11)
  {
    v19 = 0;
  }

  else
  {
    v19 = (*v13 + 328 * (*(a1 + 56) & 0xFLL));
  }

  return sub_1000A28B0((a1 + 24), v13, v19, v15, v14);
}

double sub_10009D1B4(uint64_t a1)
{
  v5 = 0u;
  v6 = 0u;
  memset(v4, 0, sizeof(v4));
  v1 = sub_1000A09A8(*a1, &v5, v4, *(a1 + 24) + 5.0);
  result = -1.0;
  if (v1)
  {
    v3 = *(&v6 + 1);
    if (*(&v6 + 1) == *v6)
    {
      v3 = *(v6 - 8) + 4032;
    }

    return *(v3 - 192);
  }

  return result;
}

uint64_t sub_10009D220(uint64_t a1, uint64_t a2)
{
  v5 = a1 + 112;
  v4 = *(a1 + 112);
  v6 = a1 + 72;
  *&v18[1] = a1 + 112;
  (*(v4 + 16))(a1 + 112);
  v19 = 256;
  v18[0] = *(a2 + 8);
  if (sub_10009CB48(v6, v18))
  {
    if (sub_100099160(v6))
    {
      (*(*a1 + 80))(a1, a2, 0);
    }

    else if ((*(a1 + 128) & 1) == 0)
    {
      v12 = *(a1 + 216);
      if (v12 > *(a1 + 408))
      {
        ++*(a1 + 208);
        *(a1 + 216) = v12 - 1;
        sub_1009BB4F8(a1 + 176, 1);
        if (qword_1025D4200 != -1)
        {
          sub_101BD6DE4();
        }

        v13 = qword_1025D4208;
        if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_DEBUG, "Maximum number of entries exceeded, throwing out oldest entry.", buf, 2u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_101BD6E0C(buf);
          v17 = _os_log_send_and_compose_impl();
          sub_100152C7C("Generic", 1, 0, 2, "void CLActivityRecorderDb<CLStepCountEntry>::addSuspectRecord(const T &) [T = CLStepCountEntry, DataProtectionPolicy = CLActivityDB::ClassCDataProtectionPolicy]", "%s\n", v17);
          if (v17 != buf)
          {
            free(v17);
          }
        }
      }

      if (qword_1025D4270 != -1)
      {
        sub_101BD36A8();
      }

      v14 = qword_1025D4278;
      if (os_log_type_enabled(qword_1025D4278, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_DEBUG, "Buffer was added to since db was inaccesible.", buf, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101BD3B9C(buf);
        v16 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "void CLActivityRecorderDb<CLStepCountEntry>::addSuspectRecord(const T &) [T = CLStepCountEntry, DataProtectionPolicy = CLActivityDB::ClassCDataProtectionPolicy]", "%s\n", v16);
        if (v16 != buf)
        {
          free(v16);
        }
      }

      v7 = sub_100260FC0((a1 + 176), a2);
    }
  }

  else
  {
    if (qword_1025D4200 != -1)
    {
      sub_101BD6DE4();
    }

    v8 = qword_1025D4208;
    if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_ERROR))
    {
      v9 = (a1 + 88);
      if (*(a1 + 111) < 0)
      {
        v9 = *v9;
      }

      *buf = 68289538;
      v21 = 0;
      v22 = 2082;
      v23 = "";
      v24 = 1026;
      v25 = v18[0];
      v26 = 2082;
      v27 = v9;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:CL database error, record contains invalid time, invalid time:%{public}d, name:%{public, location:escape_only}s}", buf, 0x22u);
      if (qword_1025D4200 != -1)
      {
        sub_101BD6DE4();
      }
    }

    v10 = qword_1025D4208;
    if (os_signpost_enabled(qword_1025D4208))
    {
      v11 = (a1 + 88);
      if (*(a1 + 111) < 0)
      {
        v11 = *v11;
      }

      *buf = 68289538;
      v21 = 0;
      v22 = 2082;
      v23 = "";
      v24 = 1026;
      v25 = v18[0];
      v26 = 2082;
      v27 = v11;
      _os_signpost_emit_with_name_impl(dword_100000000, v10, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "CL database error, record contains invalid time", "{msg%{public}.0s:CL database error, record contains invalid time, invalid time:%{public}d, name:%{public, location:escape_only}s}", buf, 0x22u);
    }
  }

  return (*(*v5 + 24))(v5, v7);
}

void sub_10009D6C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_1017EC98C(va);
  _Unwind_Resume(a1);
}

void sub_10009D6FC(uint64_t *a1, uint64_t *a2)
{
  if (qword_1025D4760 != -1)
  {
    sub_100325278();
  }

  v4 = qword_1025D4768;
  if (os_log_type_enabled(qword_1025D4768, OS_LOG_TYPE_DEBUG))
  {
    v5 = a1;
    if (*(a1 + 23) < 0)
    {
      v5 = *a1;
    }

    v6 = *a2;
    v7 = a2[40];
    v8 = a2[27];
    v9 = *(a2 + 56);
    v11 = a2[30];
    v10 = a2[31];
    v12 = a2[29];
    v13 = 136316930;
    v14 = v5;
    v15 = 2048;
    v16 = v6;
    v17 = 2048;
    v18 = v7;
    v19 = 2048;
    v20 = v11;
    v21 = 2048;
    v22 = v8;
    v23 = 1024;
    v24 = v9;
    v25 = 2048;
    v26 = v10;
    v27 = 2048;
    v28 = v12;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "ExtendedStep,context,%s,startTime,%f,firstStepTime,%f,lastStepTime,%f,rawPace,%f,incrementalSteps,%u,odometerSpeed,%f,incrementalActiveTime,%f", &v13, 0x4Eu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1019CAA08();
  }
}

_BYTE *sub_10009D900(_BYTE *result, uint64_t a2, uint64_t *a3, void *a4)
{
  if ((result[108] & 1) == 0)
  {
    v7 = result;
    v8 = *(*a2 + 32);
    LODWORD(v12) = *(*a3 + 32);
    v9 = sub_100099750(a4);
    v10 = *a3;
    v13 = (*a2 + 32);
    v11 = sub_100007FA0(v10 + 40, v13);
    result = (*(*v7 + 192))(v7, v8, &v12, v9, v10 + 80, v11 + 4);
    if (result)
    {
      return [*(*a2 + 64) onNotification:*(*a3 + 32) withData:{a4, v12}];
    }
  }

  return result;
}

double sub_10009D9F8(uint64_t a1)
{
  v1 = *(a1 + 32);
  *(v1 + 156) += **(a1 + 40);
  result = **(a1 + 48) + *(v1 + 160);
  *(v1 + 160) = result;
  return result;
}

void *sub_10009DA24(void *a1, void *__src)
{
  v4 = a1[2];
  v5 = a1[1];
  v6 = 2 * (v4 - v5) - 1;
  if (v4 == v5)
  {
    v6 = 0;
  }

  v7 = a1[5] + a1[4];
  if (v6 == v7)
  {
    sub_1002487F0(a1);
    v5 = a1[1];
    v7 = a1[5] + a1[4];
  }

  result = memcpy((*(v5 + ((v7 >> 1) & 0x7FFFFFFFFFFFFFF8)) + 328 * (v7 & 0xF)), __src, 0x148uLL);
  ++a1[5];
  return result;
}

BOOL sub_10009DABC(uint64_t a1)
{
  if (sub_10009A600((a1 + 160)) & 1) != 0 || (sub_10009A5A8(a1 + 160))
  {
    return 1;
  }

  return sub_10009A55C(a1 + 160);
}

uint64_t sub_10009DB18(uint64_t a1, uint64_t a2, double a3)
{
  v247 = 0u;
  v248 = 0u;
  v245 = 0u;
  v246 = 0u;
  if (!sub_1000A31D0(a1 + 512, &v247, &v245, a3))
  {
    if (qword_1025D4270 != -1)
    {
      sub_101A344C8();
    }

    v15 = qword_1025D4278;
    if (os_log_type_enabled(qword_1025D4278, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_DEFAULT, "#Warning Inconsistency found between steps and clock. Ignoring.", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101A351C8();
    }

    return 1;
  }

  v6 = *(&v248 + 1);
  v5 = v248;
  v7 = *v248;
  v8 = *(&v248 + 1);
  if (*(&v248 + 1) == *v248)
  {
    v8 = *(v248 - 8) + 5248;
  }

  if (*(v8 - 72) == 1)
  {
    sub_1000A0224(a1 + 856);
    v6 = *(&v248 + 1);
    v5 = v248;
    v7 = *v248;
  }

  if (v6 == v7)
  {
    v6 = *(v5 - 8) + 5248;
  }

  v9 = *(v6 - 288);
  v10 = sub_100F925C0();
  v11 = sub_100F96128(v10);
  v12 = *(&v248 + 1);
  if (*(&v248 + 1) == *v248)
  {
    v16 = *(v248 - 8);
    v13 = (v16 + 4976);
    v14 = (v16 + 5008);
    v12 = v16 + 5248;
  }

  else
  {
    v13 = (*(&v248 + 1) - 272);
    v14 = (*(&v248 + 1) - 240);
  }

  v215 = *v13;
  v17 = *v14;
  v220 = *(v12 - 146);
  sub_10001A3E8();
  v225 = v9 * v11;
  if (sub_10001CF3C())
  {
    v18 = *(&v248 + 1);
    if (*(&v248 + 1) == *v248)
    {
      v18 = *(v248 - 8) + 5248;
    }

    if (sub_1000A0200(v18 - 320))
    {
      v19 = 1;
LABEL_22:
      v223 = v19;
      goto LABEL_31;
    }

    v223 = sub_10009A5A8(a1 + 160);
  }

  else
  {
    sub_10001A3E8();
    if (sub_10001CF04() && (*(a1 + 1428) & 1) == 0 && *(a1 + 160) == 1)
    {
      v223 = 0;
      v20 = *(a1 + 304);
      if (v20 <= 0x18 && ((1 << v20) & 0x1028000) != 0)
      {
        v19 = v225 == 0.0;
        goto LABEL_22;
      }
    }

    else
    {
      v223 = 0;
    }
  }

LABEL_31:
  v243 = 0.0;
  v244 = 0.0;
  v242 = 0.0;
  v240 = 0;
  v241 = 0;
  v21 = *(&v248 + 1);
  if (*(&v248 + 1) == *v248)
  {
    v21 = *(v248 - 8) + 5248;
  }

  v22 = *(v21 - 146);
  if (!sub_10009DABC(a1))
  {
    sub_10001A3E8();
    v29 = sub_10001CF3C();
    v213 = 0.0;
    if (v29 & 1) != 0 || (*buf = v247, *&buf[16] = v248, *v263 = v245, *&v263[16] = v246, !sub_1000A0234(v29, buf, v263)) || *(a1 + 160) == 1 && (CLMotionActivity::isTypeIndoorPedestrian())
    {
      v30 = 0;
      v214 = 0;
      v31 = 0;
      v25 = 0;
      goto LABEL_71;
    }
  }

  result = (*(**(a1 + 640) + 48))(*(a1 + 640), a3);
  if (!result)
  {
    return result;
  }

  v24 = v17 < 0.447387993 && v17 > 0.0;
  HIDWORD(v214) = sub_100C472AC(a1, 1);
  LODWORD(v214) = sub_100C472AC(a1, 0);
  if (v24)
  {
    v25 = HIDWORD(v214);
  }

  else
  {
    v25 = v214;
  }

  v26 = *(&v248 + 1);
  if (*(&v248 + 1) == *v248)
  {
    v32 = *(v248 - 8);
    v27 = v32[655];
    if (v27 <= *(a1 + 1304))
    {
      v27 = *(a1 + 1304);
    }

    if (v223)
    {
      v28 = v32[617] + -10.24;
      if (v27 > v28)
      {
        v28 = v27;
      }

      v26 = *(v248 - 8) + 5248;
      goto LABEL_58;
    }

    v33 = v32 + 645;
  }

  else
  {
    v27 = *(*(&v248 + 1) - 8);
    if (v27 <= *(a1 + 1304))
    {
      v27 = *(a1 + 1304);
    }

    if (v223)
    {
      v28 = *(*(&v248 + 1) - 312) + -10.24;
      if (v27 > v28)
      {
        v28 = v27;
      }

LABEL_58:
      v33 = (v26 - 312);
      v27 = v28;
      goto LABEL_61;
    }

    v33 = (*(&v248 + 1) - 88);
  }

LABEL_61:
  v34 = *v33;
  *(a1 + 1304) = *v33;
  v35 = sub_1000A085C(a1, &v244, v27, v34);
  if ((v35 & v25) == 1)
  {
    *buf = v247;
    *&buf[16] = v248;
    *v263 = v245;
    *&v263[16] = v246;
    if ((sub_100C47BE8(v35, buf, v263) & 1) != 0 || ((sub_100C47D04(a1, v24, v223, &v242, &v243, a3) | v24) & 1) == 0)
    {
      goto LABEL_69;
    }

    v36 = *(&v248 + 1);
    if (*(&v248 + 1) == *v248)
    {
      v36 = *(v248 - 8) + 5248;
    }

    if (*(v36 - 80) <= 0.0)
    {
LABEL_69:
      v31 = 0;
      v30 = 1;
      v213 = a3;
    }

    else
    {
      v30 = 1;
      v213 = a3;
      v31 = 1;
    }

    v25 = 1;
  }

  else
  {
    v30 = 0;
    v31 = 0;
    v213 = a3;
  }

LABEL_71:
  v211 = (v22 - 2) & 0xF9;
  if (v211)
  {
    v37 = v225 + *(a1 + 1440);
    *(a1 + 1440) = v37;
    if (v37 > 40.0)
    {
      v38 = *(&v248 + 1);
      if (*(&v248 + 1) == *v248)
      {
        v38 = *(v248 - 8) + 5248;
      }

      sub_100C48394(a1, *(v38 - 312), 40.0);
    }

    if (*(a1 + 1472) == 1 && (*(a1 + 1427) & 1) == 0)
    {
      v225 = v225 * *(a1 + 1432);
    }
  }

  if (sub_10009A61C(a1 + 856, v31))
  {
    v39 = 2;
  }

  else
  {
    v39 = v30;
  }

  v239 = 0.0;
  v40 = sub_1000A085C(a1, &v239, a3 + -20.0, a3);
  v41 = 0;
  v42 = v239;
  if (v239 < 11.9210824)
  {
    v43 = v40;
  }

  else
  {
    v43 = 0;
  }

  if (v43 == 1 && v39)
  {
    memset(buf, 0, 32);
    memset(v263, 0, 32);
    if (sub_1000A31D0(a1 + 512, buf, v263, a3 + -20.0))
    {
      v44 = *(&v248 + 1);
      v45 = 0.0;
      if (*&buf[24] != *(&v248 + 1))
      {
        v46 = v248;
        v47 = *v248;
        do
        {
          if (v44 == v47)
          {
            v49 = *(v46 - 8);
            v46 -= 8;
            v47 = v49;
            v48 = (v49 + 4968);
            v44 = v49 + 5248;
          }

          else
          {
            v48 = (v44 - 280);
          }

          v45 = v45 + *v48;
          v44 -= 328;
        }

        while (*&buf[24] != v44);
      }

      v50 = v45 > 0.0;
      if (v42 >= 4.4704)
      {
        v50 = 0;
      }

      v210 = v50;
      v51 = sub_10009A55C(a1 + 160);
      if (v45 >= 2.22044605e-16 && v51)
      {
        v41 = 0;
        goto LABEL_104;
      }
    }

    else
    {
      v210 = 0;
      v45 = 0.0;
    }

    v41 = 1;
    v39 = -1;
  }

  else
  {
    v210 = 0;
    v45 = 0.0;
  }

LABEL_104:
  v218 = v41;
  if (v25)
  {
    v53 = v244;
  }

  else
  {
    v53 = 0.0;
  }

  v54 = *(&v248 + 1);
  if (*(&v248 + 1) == *v248)
  {
    v54 = *(v248 - 8) + 5248;
  }

  v217 = sub_10009A6E4(a1, v225, v53, *(v54 - 96));
  if (v217)
  {
    v55 = sub_10009DABC(a1);
    if (!v55)
    {
      v39 = -1;
    }

    v56 = v218;
    if (!v55)
    {
      v56 = 2;
    }

    v218 = v56;
  }

  if ((sub_10009A5A8(a1 + 160) & 1) != 0 || sub_10009A55C(a1 + 160))
  {
    v57 = sub_1000A2798(a1 + 648, buf);
    if (*v381 == 5)
    {
      v58 = v57;
    }

    else
    {
      v58 = 0;
    }

    if (v58 == 1)
    {
      if (qword_1025D4270 != -1)
      {
        sub_101A344C8();
      }

      v59 = qword_1025D4278;
      if (os_log_type_enabled(qword_1025D4278, OS_LOG_TYPE_DEFAULT))
      {
        v60 = *(a1 + 304);
        *buf = 134349056;
        *&buf[4] = v60;
        _os_log_impl(dword_100000000, v59, OS_LOG_TYPE_DEFAULT, "Rejecting fusion due to activity based driving detection, workout, %{public}ld", buf, 0xCu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101A353C4(a1);
      }

      v61 = 4;
LABEL_138:
      v218 = v61;
      sub_10009A55C(a1 + 160);
LABEL_161:
      v72 = -1;
      goto LABEL_162;
    }

    v62 = *(&v248 + 1);
    if (*(&v248 + 1) == *v248)
    {
      v62 = *(v248 - 8) + 5248;
    }

    if (sub_100C4853C(a1, v62 - 328))
    {
      v64 = v63;
      if (qword_1025D4270 != -1)
      {
        sub_101A344C8();
      }

      v65 = qword_1025D4278;
      if (os_log_type_enabled(qword_1025D4278, OS_LOG_TYPE_DEFAULT))
      {
        v66 = *(a1 + 304);
        *buf = 134349312;
        *&buf[4] = v64;
        *&buf[12] = 2050;
        *&buf[14] = v66;
        _os_log_impl(dword_100000000, v65, OS_LOG_TYPE_DEFAULT, "Rejecting fusion due to gps-speed based driving detection, %{public}f, workout, %{public}ld", buf, 0x16u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101A352B4();
      }

      v61 = 3;
      goto LABEL_138;
    }
  }

  v67 = sub_10009A55C(a1 + 160);
  if (v39 <= 0 || !v67)
  {
    v72 = v39;
    goto LABEL_162;
  }

  v70 = *(&v248 + 1);
  v69 = v248;
  if (*(&v246 + 1) == *(&v248 + 1))
  {
    v71 = 0;
  }

  else
  {
    v71 = -1047552999 * ((*(&v248 + 1) - *v248) >> 3) + 2 * (v248 - v246) + 1047552999 * ((*(&v246 + 1) - *v246) >> 3);
  }

  if (v71 >= 5)
  {
    v71 = 5;
  }

  *buf = v248;
  sub_1000A2AE4(buf, -v71);
  v73 = *&buf[8];
  if (*&buf[8] == v70)
  {
    goto LABEL_160;
  }

  v74 = 0;
  v75 = *v69;
  do
  {
    v76 = v70;
    if (v70 == v75)
    {
      v76 = *(v69 - 1) + 5248;
    }

    v77 = sub_100C4A08C(a1);
    if (*(v76 - 104))
    {
      v78 = 1;
    }

    else
    {
      v78 = v77;
    }

    v75 = *v69;
    if (v70 == *v69)
    {
      v79 = *--v69;
      v75 = v79;
      v70 = v79 + 5248;
    }

    v74 += v78;
    v70 -= 328;
  }

  while (v73 != v70);
  v72 = v39;
  if (v74 <= 2)
  {
LABEL_160:
    v218 = 5;
    goto LABEL_161;
  }

LABEL_162:
  v219 = v72;
  sub_1000A0FA8(a1 + 856, v72);
  v80 = *(&v248 + 1);
  if (*(&v248 + 1) == *v248)
  {
    v80 = *(v248 - 8) + 5248;
  }

  sub_1000A0B7C(a1 + 856, (v80 - 328));
  if (v219 < 1)
  {
    v81 = 0;
  }

  else
  {
    v81 = *(a1 + 1424) | v223;
  }

  v224 = v81;
  sub_1000A18B0(a1, v81 & 1, a3);
  v83 = v82;
  v238 = 0;
  v84 = *(&v248 + 1);
  if (*(&v248 + 1) == *v248)
  {
    v84 = *(v248 - 8) + 5248;
  }

  v85 = *(a1 + 1384);
  v86 = sub_100C485D8(a1, (v84 - 320));
  v87 = v244;
  v88 = sub_100C46230(a1, v224 & 1, v211 == 0, v220, &v238, a3, v225, v86, v244, v83, v85, v17);
  *(a1 + 1384) = v88;
  v89.f64[0] = v225;
  v89.f64[1] = v215;
  *(a1 + 1392) = vaddq_f64(v89, *(a1 + 1392));
  v90 = *(a1 + 1416);
  v92 = *(&v248 + 1);
  v91 = v248;
  if (*(a1 + 1408) < 0.0)
  {
    goto LABEL_173;
  }

  v93 = *(&v248 + 1);
  if (*(&v248 + 1) == *v248)
  {
    v93 = *(v248 - 8) + 5248;
  }

  if (v90 > *(v93 - 224))
  {
LABEL_173:
    *(a1 + 1408) = v90;
  }

  v237 = 0;
  v235 = 0u;
  v236 = 0u;
  v234 = 0u;
  v232 = 0u;
  *theString = 0u;
  v230 = 0u;
  v231 = 0u;
  v228 = 0u;
  v229 = 0u;
  __src = 0u;
  v227 = 0u;
  if (v92 == *v91)
  {
    v92 = *(v91 - 1) + 5248;
  }

  v94 = sub_1000A1C74(a1 + 856);
  v95 = sub_1000A1C28(a1 + 856);
  v96 = v95;
  v97 = *(v92 - 320);
  v98 = *(v92 - 304);
  v99 = *(v92 - 272);
  v228 = *(v92 - 288);
  v100 = *(v92 - 208);
  v101 = *(v92 - 256);
  v102 = *(v92 - 240);
  v232 = *(v92 - 224);
  *theString = v100;
  v230 = v101;
  v231 = v102;
  v103 = *(v92 - 192);
  v104 = *(v92 - 176);
  v105 = *(v92 - 160);
  v237 = *(v92 - 144);
  v235 = v104;
  v236 = v105;
  v234 = v103;
  v229 = v99;
  __src = v97;
  v227 = v98;
  *&v228 = v88 - v85;
  *&v231 = v94;
  LOBYTE(theString[1]) = v224 & 1;
  BYTE1(theString[1]) = sub_10009C200(v95, v95);
  BYTE14(v236) = v238;
  LODWORD(v237) = v96;
  v106 = *(a1 + 1304);
  *buf = 0xBFF0000000000000;
  sub_1000A0588(a1, buf, v106);
  v107 = *(&v248 + 1);
  if (*(&v248 + 1) == *v248)
  {
    v107 = *(v248 - 8) + 5248;
  }

  v108 = *buf;
  v109 = sub_1000A1DCC(1.5, 0.15, 3.5, 0.35, *(v107 - 80));
  v110 = (*(**(a1 + 640) + 24))(*(a1 + 640), buf, a3);
  if (*&v379[20] == 2)
  {
    v111 = v110;
  }

  else
  {
    v111 = 0;
  }

  v112 = *(a1 + 1384);
  v113 = v231;
  v114 = DWORD2(v227);
  v115 = DWORD1(v236);
  v216 = (a1 + 1384);
  *(a1 + 1480) = *(a1 + 1392);
  *(a1 + 1496) = v108;
  *(a1 + 1504) = v112;
  *(a1 + 1512) = v17;
  *(a1 + 1520) = v113;
  *(a1 + 1528) = v114;
  *(a1 + 1532) = v111;
  *(a1 + 1536) = v115;
  if (qword_1025D4270 != -1)
  {
    sub_101A344C8();
  }

  v116 = qword_1025D4278;
  if (os_log_type_enabled(qword_1025D4278, OS_LOG_TYPE_INFO))
  {
    v117 = *(a1 + 1392);
    v118 = *v216;
    *buf = 134218240;
    *&buf[4] = v117;
    *&buf[12] = 2048;
    *&buf[14] = v118;
    _os_log_impl(dword_100000000, v116, OS_LOG_TYPE_INFO, "fCoreAnalyticsInfo: checking distances %f %f", buf, 0x16u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101A354CC();
  }

  v119 = fmin(fmax(v109, 0.15), 0.35);
  if (*(a1 + 1425) == 1)
  {
    sub_10156F33C(v263);
    operator new();
  }

  v221 = sub_10009C4FC(a1);
  if (qword_1025D4270 != -1)
  {
    sub_101A344C8();
  }

  v120 = qword_1025D4278;
  if (os_log_type_enabled(qword_1025D4278, (v221 ^ 1)))
  {
    v121 = *(&v248 + 1);
    v122 = *(&v248 + 1);
    if (*(&v248 + 1) == *v248)
    {
      v122 = *(v248 - 8) + 5248;
      v121 = v122;
    }

    v123 = *(v122 - 104);
    v124 = *(a1 + 1392);
    v205 = *(a1 + 1400);
    v207 = *(a1 + 1384);
    v208 = *(v121 - 112);
    v125 = (*(**(a1 + 640) + 24))(*(a1 + 640), v263, a3);
    if ((v125 & (v265 > 0.0)) != 0)
    {
      v126 = 1.0 / v265;
    }

    else
    {
      v126 = -1.0;
    }

    v203 = v126;
    v127 = sub_1000A1C28(a1 + 856);
    v128 = sub_10009C200(v127, v127);
    v129 = *(&v248 + 1);
    if (*(&v248 + 1) == *v248)
    {
      v130 = *(*(v248 - 8) + 5024);
    }

    else
    {
      v130 = *(*(&v248 + 1) - 224);
    }

    v131 = 0.0;
    if (*v216 != 0.0)
    {
      v131 = (v130 - *(a1 + 1408)) / *v216;
    }

    v132 = 0.0;
    if (v225 > 0.0)
    {
      v132 = v87 / v225;
    }

    if (*(&v248 + 1) == *v248)
    {
      v134 = *(v248 - 8);
      v133 = (v134 + 5240);
      v129 = v134 + 5248;
    }

    else
    {
      v133 = (*(&v248 + 1) - 8);
    }

    v135 = *v133;
    v136 = *(v129 - 88);
    *buf = 136332034;
    *&buf[4] = "time";
    *&buf[12] = 2048;
    *&buf[14] = a3;
    *&buf[22] = 2080;
    *&buf[24] = "count";
    *&buf[32] = 1024;
    *&buf[34] = DWORD2(v227);
    *&buf[38] = 2080;
    *&buf[40] = "deltaCount";
    LOWORD(v378) = 1024;
    *(&v378 + 2) = v123;
    WORD3(v378) = 2080;
    *(&v378 + 1) = "deltaDist(m)";
    *v379 = 2080;
    *&v379[2] = "ped";
    *&v379[10] = 2048;
    *&v379[12] = *(&v228 + 1);
    *&v379[20] = 2080;
    *&v379[22] = "calPed";
    *&v379[30] = 2048;
    *v380 = v225;
    *&v380[8] = 2080;
    *&v380[10] = "gps";
    *&v380[18] = 2048;
    *&v380[20] = v87;
    *&v380[28] = 2080;
    *&v380[30] = "fused";
    *&v380[38] = 2048;
    *&v380[40] = v228;
    *v381 = 2080;
    *&v381[2] = "totalDist(m)";
    *&v381[10] = 2080;
    *&v381[12] = "calPed";
    *&v381[20] = 2048;
    *&v381[22] = v124;
    *&v381[30] = 2080;
    v382 = "calPedMobility";
    v383 = 2048;
    *v384 = v205;
    *&v384[8] = 2080;
    *&v384[10] = "gps";
    *&v384[18] = 2048;
    *&v384[20] = v108;
    *&v384[28] = 2080;
    *&v384[30] = "fused";
    *&v384[38] = 2048;
    *&v384[40] = v207;
    *&v384[48] = 2080;
    *&v384[50] = "usedGps";
    *&v384[58] = 1024;
    *&v384[60] = v224 & 1;
    v385 = 2080;
    v386 = "pace(s/m)";
    v387 = 2080;
    v388 = "ped";
    v389 = 2048;
    v390 = v208;
    v391 = 2080;
    v392 = "calPed";
    v393 = 2048;
    v394 = v17;
    v395 = 2080;
    v396 = "StepDistancePedometerFusedPace";
    v397 = 2048;
    v398 = v231;
    v399 = 2080;
    v400 = "rawGps";
    v401 = 2048;
    v402 = v203;
    v403 = 2080;
    v404 = "StepDistanceFinalFusedPace";
    v405 = 2048;
    v406 = v231;
    v407 = 2080;
    v408 = "StepDistanceUsedOdometerPace";
    v409 = 1024;
    v410 = v128;
    v411 = 2080;
    v412 = "odometerPaceStdError";
    v413 = 2048;
    v414 = v242;
    v415 = 2080;
    v416 = "pedometerPaceStdError";
    v417 = 2048;
    v418 = v243;
    v419 = 2080;
    v420 = "residual";
    v421 = 2048;
    v422 = v242 - v243;
    v423 = 2080;
    v424 = "output";
    v425 = 2048;
    v426 = v231;
    v427 = 2080;
    v428 = "tolerance";
    v429 = 2048;
    v430 = v119;
    v431 = 2080;
    v432 = "activeTime";
    v433 = 2048;
    v434 = v130;
    v435 = 2080;
    v436 = "averageActivePace";
    v437 = 2048;
    v438 = v131;
    v439 = 2080;
    v440 = "ratio";
    v441 = 2048;
    v442 = v132;
    v443 = 2080;
    v444 = "vehicular";
    v445 = 1024;
    v446 = v217;
    v447 = 2080;
    v448 = "firstStepTime";
    v449 = 2048;
    v450 = v135;
    v451 = 2080;
    v452 = "lastStepTime";
    v453 = 2048;
    v454 = v136;
    v455 = 2080;
    v456 = "pedometerArmConstrainedState";
    v457 = 1024;
    v458 = v236;
    v459 = 2080;
    v460 = "distanceSource";
    v461 = 1024;
    v462 = BYTE14(v236);
    v463 = 2080;
    v464 = "paceSource";
    v465 = 1024;
    v466 = v237;
    _os_log_impl(dword_100000000, v120, (v221 ^ 1), "unified,%s,%0.3f,%s,%u,%s,%u,%s,%s,%0.2f,%s,%0.2f,%s,%0.2f,%s,%0.2f,%s,%s,%0.2f,%s,%0.2f,%s,%0.2f,%s,%0.2f,%s,%u,%s,%s,%0.4f,%s,%0.4f,%s,%0.4f,%s,%0.4f,%s,%0.4f,%s,%u,%s,%0.4f,%s,%0.4f,%s,%0.4f,%s,%0.4f,%s,%0.4f,%s,%0.3f,%s,%0.4f,%s,%0.2f,%s,%u,%s,%0.3f,%s,%0.3f,%s,%d,%s,%d,%s,%d", buf, 0x280u);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4270 != -1)
    {
      sub_101A344C8();
    }

    v169 = *(&v248 + 1);
    v170 = *(&v248 + 1);
    if (*(&v248 + 1) == *v248)
    {
      v170 = *(v248 - 8) + 5248;
      v169 = v170;
    }

    v212 = v244;
    v171 = *(v170 - 104);
    v172 = *(a1 + 1392);
    v209 = *(a1 + 1400);
    v204 = *(v169 - 112);
    v206 = *(a1 + 1384);
    v173 = (*(**(a1 + 640) + 24))(*(a1 + 640), v249, a3);
    if ((v173 & (*(&v250 + 1) > 0.0)) != 0)
    {
      v174 = 1.0 / *(&v250 + 1);
    }

    else
    {
      v174 = -1.0;
    }

    v175 = sub_1000A1C28(a1 + 856);
    v176 = sub_10009C200(v175, v175);
    v177 = *(&v248 + 1);
    if (*(&v248 + 1) == *v248)
    {
      v178 = *(*(v248 - 8) + 5024);
    }

    else
    {
      v178 = *(*(&v248 + 1) - 224);
    }

    v193 = 0.0;
    if (*v216 != 0.0)
    {
      v193 = (v178 - *(a1 + 1408)) / *v216;
    }

    v194 = 0.0;
    if (v225 > 0.0)
    {
      v194 = v212 / v225;
    }

    if (*(&v248 + 1) == *v248)
    {
      v196 = *(v248 - 8);
      v195 = (v196 + 5240);
      v177 = v196 + 5248;
    }

    else
    {
      v195 = (*(&v248 + 1) - 8);
    }

    v197 = *v195;
    v198 = *(v177 - 88);
    *v263 = 136332034;
    *&v263[4] = "time";
    *&v263[12] = 2048;
    *&v263[14] = a3;
    *&v263[22] = 2080;
    *&v263[24] = "count";
    *&v263[32] = 1024;
    *v264 = DWORD2(v227);
    *&v264[4] = 2080;
    v265 = COERCE_DOUBLE("deltaCount");
    *v266 = 1024;
    *&v266[2] = v171;
    v267 = 2080;
    v268 = "deltaDist(m)";
    v269 = 2080;
    v270 = "ped";
    v271 = 2048;
    v272 = *(&v228 + 1);
    v273 = 2080;
    v274 = "calPed";
    v275 = 2048;
    v276 = *&v225;
    v277 = 2080;
    v278 = "gps";
    v279 = 2048;
    v280 = *&v212;
    v281 = 2080;
    v282 = "fused";
    v283 = 2048;
    v284 = v228;
    v285 = 2080;
    v286 = "totalDist(m)";
    v287 = 2080;
    v288 = "calPed";
    v289 = 2048;
    v290 = v172;
    v291 = 2080;
    v292 = "calPedMobility";
    v293 = 2048;
    *v294 = v209;
    *&v294[8] = 2080;
    *&v294[10] = "gps";
    *&v294[18] = 2048;
    *&v294[20] = v108;
    *&v294[28] = 2080;
    *&v294[30] = "fused";
    *&v294[38] = 2048;
    *&v294[40] = v206;
    *&v294[48] = 2080;
    *&v294[50] = "usedGps";
    *&v294[58] = 1024;
    *&v294[60] = v224 & 1;
    v295 = 2080;
    v296 = "pace(s/m)";
    v297 = 2080;
    v298 = "ped";
    v299 = 2048;
    v300 = v204;
    v301 = 2080;
    v302 = "calPed";
    v303 = 2048;
    v304 = v17;
    v305 = 2080;
    v306 = "StepDistancePedometerFusedPace";
    v307 = 2048;
    v308 = v231;
    v309 = 2080;
    v310 = "rawGps";
    v311 = 2048;
    v312 = v174;
    v313 = 2080;
    v314 = "StepDistanceFinalFusedPace";
    v315 = 2048;
    v316 = v231;
    v317 = 2080;
    v318 = "StepDistanceUsedOdometerPace";
    v319 = 1024;
    v320 = v176;
    v321 = 2080;
    v322 = "odometerPaceStdError";
    v323 = 2048;
    v324 = v242;
    v325 = 2080;
    v326 = "pedometerPaceStdError";
    v327 = 2048;
    v328 = v243;
    v329 = 2080;
    v330 = "residual";
    v331 = 2048;
    v332 = v242 - v243;
    v333 = 2080;
    v334 = "output";
    v335 = 2048;
    v336 = v231;
    v337 = 2080;
    v338 = "tolerance";
    v339 = 2048;
    v340 = v119;
    v341 = 2080;
    v342 = "activeTime";
    v343 = 2048;
    v344 = v178;
    v345 = 2080;
    v346 = "averageActivePace";
    v347 = 2048;
    v348 = v193;
    v349 = 2080;
    v350 = "ratio";
    v351 = 2048;
    v352 = v194;
    v353 = 2080;
    v354 = "vehicular";
    v355 = 1024;
    v356 = v217;
    v357 = 2080;
    v358 = "firstStepTime";
    v359 = 2048;
    v360 = v197;
    v361 = 2080;
    v362 = "lastStepTime";
    v363 = 2048;
    v364 = v198;
    v365 = 2080;
    v366 = "pedometerArmConstrainedState";
    v367 = 1024;
    v368 = v236;
    v369 = 2080;
    v370 = "distanceSource";
    v371 = 1024;
    v372 = BYTE14(v236);
    v373 = 2080;
    v374 = "paceSource";
    v375 = 1024;
    v376 = v237;
    v199 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "BOOL CLStepDistanceFusion::normalMode(const double, std::vector<CLStepDistanceFusionResult> &)", "%s\n", v199);
    if (v199 != buf)
    {
      free(v199);
    }
  }

  v262 = 0;
  v260 = 0u;
  v261 = 0u;
  v258 = 0u;
  v259 = 0u;
  v256 = 0u;
  v257 = 0u;
  v254 = 0u;
  v255 = 0u;
  v252 = 0u;
  v253 = 0u;
  v250 = 0u;
  v251 = 0u;
  memset(v249, 0, sizeof(v249));
  sub_1000A2798(a1 + 648, v249);
  if (qword_1025D4270 != -1)
  {
    sub_101A344C8();
  }

  v137 = qword_1025D4278;
  if (os_log_type_enabled(qword_1025D4278, (v221 ^ 1)))
  {
    v138 = sub_10009C55C(a1 + 856);
    v139 = *(a1 + 776);
    v140 = *(a1 + 1428);
    *buf = 134219520;
    *&buf[4] = a3;
    *&buf[12] = 2048;
    *&buf[14] = v138;
    *&buf[22] = 1024;
    *&buf[24] = v139;
    *&buf[28] = 1024;
    *&buf[30] = v219;
    *&buf[34] = 1024;
    *&buf[36] = v218;
    *&buf[40] = 1024;
    *&buf[42] = v257;
    *&buf[46] = 1024;
    LODWORD(v378) = v140;
    _os_log_impl(dword_100000000, v137, (v221 ^ 1), "unified2,time,%f,odometerSmoothMeanPace,%.3f,estimatedOdometerQuality,%d,odometerFusionQuality,%d,odometerFusionRejectionReason,%d,activityType,%d,isAccessoryAvailable,%d", buf, 0x34u);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4270 != -1)
    {
      sub_101A344C8();
    }

    v179 = sub_10009C55C(a1 + 856);
    v180 = *(a1 + 776);
    v181 = *(a1 + 1428);
    *v263 = 134219520;
    *&v263[4] = a3;
    *&v263[12] = 2048;
    *&v263[14] = v179;
    *&v263[22] = 1024;
    *&v263[24] = v180;
    *&v263[28] = 1024;
    *&v263[30] = v219;
    *v264 = 1024;
    *&v264[2] = v218;
    LOWORD(v265) = 1024;
    *(&v265 + 2) = v257;
    HIWORD(v265) = 1024;
    *v266 = v181;
    v182 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "BOOL CLStepDistanceFusion::normalMode(const double, std::vector<CLStepDistanceFusionResult> &)", "%s\n", v182);
    if (v182 != buf)
    {
      free(v182);
    }
  }

  *&v380[32] = v234;
  *v381 = v235;
  *&v381[16] = v236;
  v382 = v237;
  *v379 = v230;
  *&v379[16] = v231;
  *v380 = v232;
  *&v380[16] = *theString;
  *buf = __src;
  *&buf[16] = v227;
  *&buf[32] = v228;
  v378 = v229;
  v142 = *(a2 + 8);
  v141 = *(a2 + 16);
  if (v142 >= v141)
  {
    v144 = 0x8F5C28F5C28F5C29 * ((v142 - *a2) >> 3);
    if (v144 + 1 > 0x147AE147AE147AELL)
    {
      sub_10028C64C();
    }

    v145 = 0x8F5C28F5C28F5C29 * ((v141 - *a2) >> 3);
    v146 = 2 * v145;
    if (2 * v145 <= v144 + 1)
    {
      v146 = v144 + 1;
    }

    if (v145 >= 0xA3D70A3D70A3D7)
    {
      v147 = 0x147AE147AE147AELL;
    }

    else
    {
      v147 = v146;
    }

    if (v147)
    {
      sub_1000A2048(a2, v147);
    }

    v148 = 8 * ((v142 - *a2) >> 3);
    *(v148 + 128) = *&v380[32];
    *(v148 + 144) = *v381;
    *(v148 + 160) = *&v381[16];
    *(v148 + 176) = v382;
    *(v148 + 64) = *v379;
    *(v148 + 80) = *&v379[16];
    *(v148 + 96) = *v380;
    *(v148 + 112) = *&v380[16];
    *v148 = *buf;
    *(v148 + 16) = *&buf[16];
    *(v148 + 32) = *&buf[32];
    *(v148 + 48) = v378;
    *(v148 + 184) = v213;
    *(v148 + 192) = BYTE4(v214);
    *(v148 + 193) = v214;
    *(v148 + 194) = v240;
    *(v148 + 198) = v241;
    v143 = 200 * v144 + 200;
    v149 = *(a2 + 8) - *a2;
    v150 = v148 - v149;
    memcpy((v148 - v149), *a2, v149);
    v151 = *a2;
    *a2 = v150;
    *(a2 + 8) = v143;
    *(a2 + 16) = 0;
    if (v151)
    {
      operator delete(v151);
    }
  }

  else
  {
    memmove(*(a2 + 8), &__src, 0xB8uLL);
    *(v142 + 184) = v213;
    *(v142 + 192) = BYTE4(v214);
    *(v142 + 193) = v214;
    *(v142 + 194) = v240;
    *(v142 + 198) = v241;
    v143 = v142 + 200;
  }

  *(a2 + 8) = v143;
  v152 = *(&v248 + 1);
  if (*(&v248 + 1) == *v248)
  {
    v152 = *(v248 - 8) + 5248;
  }

  if (!*(v152 - 104))
  {
    goto LABEL_253;
  }

  if (v210)
  {
    goto LABEL_243;
  }

  if (*(&v248 + 1) == *v248)
  {
    v154 = *(v248 - 8);
    if (v154[621] < 0.5722112 || v154[648] < 0.5722112 || *&v228 < 0.5722112)
    {
      goto LABEL_243;
    }

    v153 = v154[632];
  }

  else
  {
    if (*(*(&v248 + 1) - 280) < 0.5722112 || *(*(&v248 + 1) - 64) < 0.5722112 || *&v228 < 0.5722112)
    {
      goto LABEL_243;
    }

    v153 = *(*(&v248 + 1) - 192);
  }

  if (v153 > 4.47387258 || *&v231 > 4.47387258 || v153 != 0.0 && *&v231 == 0.0)
  {
LABEL_243:
    if (qword_1025D4270 != -1)
    {
      sub_101A344C8();
    }

    v155 = qword_1025D4278;
    if (os_log_type_enabled(qword_1025D4278, OS_LOG_TYPE_DEFAULT))
    {
      if (*(&v248 + 1) == *v248)
      {
        v166 = *(v248 - 8);
        v156 = *(v166 + 4952);
        v157 = *(v166 + 5144);
        v158 = *(v166 + 4968);
        v159 = *(v166 + 5184);
        v160 = v244;
        v161 = v228;
        v162 = v239;
        v163 = *(v166 + 5136);
        v164 = *(v166 + 5056);
        v165 = *(v166 + 5168);
      }

      else
      {
        v156 = *(*(&v248 + 1) - 296);
        v157 = *(*(&v248 + 1) - 104);
        v158 = *(*(&v248 + 1) - 280);
        v159 = *(*(&v248 + 1) - 64);
        v160 = v244;
        v161 = v228;
        v162 = v239;
        v163 = *(*(&v248 + 1) - 112);
        v164 = *(*(&v248 + 1) - 192);
        v165 = *(*(&v248 + 1) - 80);
      }

      v167 = 0.0;
      if (v165 != 0.0)
      {
        v167 = 1.0 / v165;
      }

      *buf = 136322050;
      *&buf[4] = "time";
      *&buf[12] = 2048;
      *&buf[14] = a3;
      *&buf[22] = 2080;
      *&buf[24] = "count";
      *&buf[32] = 1024;
      *&buf[34] = v156;
      *&buf[38] = 2080;
      *&buf[40] = "deltaCount";
      LOWORD(v378) = 1024;
      *(&v378 + 2) = v157;
      WORD3(v378) = 2080;
      *(&v378 + 1) = "rawDistance";
      *v379 = 2048;
      *&v379[2] = v158;
      *&v379[10] = 2080;
      *&v379[12] = "calDistance";
      *&v379[20] = 2048;
      *&v379[22] = v159;
      *&v379[30] = 2080;
      *v380 = "odomDistance";
      *&v380[8] = 2048;
      *&v380[10] = v160;
      *&v380[18] = 2080;
      *&v380[20] = "fusedDistance";
      *&v380[28] = 2048;
      *&v380[30] = v161;
      *&v380[38] = 2080;
      *&v380[40] = "odometerDistanceForSlowPaceCheckWindow";
      *v381 = 2048;
      *&v381[2] = v162;
      *&v381[10] = 2080;
      *&v381[12] = "pedometerRawDistanceForSlowPaceCheckWindow";
      *&v381[20] = 2048;
      *&v381[22] = v45;
      *&v381[30] = 2080;
      v382 = "odometerError";
      v383 = 1024;
      *v384 = v210;
      *&v384[4] = 2080;
      *&v384[6] = "rawPace";
      *&v384[14] = 2048;
      *&v384[16] = v163;
      *&v384[24] = 2080;
      *&v384[26] = "calPace";
      *&v384[34] = 2048;
      *&v384[36] = v164;
      *&v384[44] = 2080;
      *&v384[46] = "odomPace";
      *&v384[54] = 2048;
      *&v384[56] = v167;
      v385 = 2080;
      v386 = "fusedPace";
      v387 = 2048;
      v388 = v231;
      _os_log_impl(dword_100000000, v155, OS_LOG_TYPE_DEFAULT, "#Warning Potential StepDistanceFusion error. File a radar if you are not walking/running in place. %s, %f, %s, %u, %s, %u, %s, %f, %s, %f, %s, %f, %s, %f, %s, %f, %s, %f, %s, %d, %s, %f, %s, %f, %s, %f, %s, %f", buf, 0x10Eu);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4270 != -1)
      {
        sub_101A344C8();
      }

      if (*(&v248 + 1) == *v248)
      {
        v200 = *(v248 - 8);
        v183 = *(v200 + 4952);
        v184 = *(v200 + 5144);
        v185 = *(v200 + 4968);
        v186 = *(v200 + 5184);
        v187 = v244;
        v188 = v228;
        v189 = v239;
        v190 = *(v200 + 5136);
        v191 = *(v200 + 5056);
        v192 = *(v200 + 5168);
      }

      else
      {
        v183 = *(*(&v248 + 1) - 296);
        v184 = *(*(&v248 + 1) - 104);
        v185 = *(*(&v248 + 1) - 280);
        v186 = *(*(&v248 + 1) - 64);
        v187 = v244;
        v188 = v228;
        v189 = v239;
        v190 = *(*(&v248 + 1) - 112);
        v191 = *(*(&v248 + 1) - 192);
        v192 = *(*(&v248 + 1) - 80);
      }

      v201 = 0.0;
      if (v192 != 0.0)
      {
        v201 = 1.0 / v192;
      }

      *v263 = 136322050;
      *&v263[4] = "time";
      *&v263[12] = 2048;
      *&v263[14] = a3;
      *&v263[22] = 2080;
      *&v263[24] = "count";
      *&v263[32] = 1024;
      *v264 = v183;
      *&v264[4] = 2080;
      v265 = COERCE_DOUBLE("deltaCount");
      *v266 = 1024;
      *&v266[2] = v184;
      v267 = 2080;
      v268 = "rawDistance";
      v269 = 2048;
      v270 = v185;
      v271 = 2080;
      v272 = "calDistance";
      v273 = 2048;
      v274 = v186;
      v275 = 2080;
      v276 = "odomDistance";
      v277 = 2048;
      v278 = *&v187;
      v279 = 2080;
      v280 = "fusedDistance";
      v281 = 2048;
      v282 = v188;
      v283 = 2080;
      v284 = "odometerDistanceForSlowPaceCheckWindow";
      v285 = 2048;
      v286 = *&v189;
      v287 = 2080;
      v288 = "pedometerRawDistanceForSlowPaceCheckWindow";
      v289 = 2048;
      v290 = v45;
      v291 = 2080;
      v292 = "odometerError";
      v293 = 1024;
      *v294 = v210;
      *&v294[4] = 2080;
      *&v294[6] = "rawPace";
      *&v294[14] = 2048;
      *&v294[16] = v190;
      *&v294[24] = 2080;
      *&v294[26] = "calPace";
      *&v294[34] = 2048;
      *&v294[36] = v191;
      *&v294[44] = 2080;
      *&v294[46] = "odomPace";
      *&v294[54] = 2048;
      *&v294[56] = v201;
      v295 = 2080;
      v296 = "fusedPace";
      v297 = 2048;
      v298 = v231;
      v202 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "BOOL CLStepDistanceFusion::normalMode(const double, std::vector<CLStepDistanceFusionResult> &)", "%s\n", v202);
      if (v202 != buf)
      {
        free(v202);
      }
    }
  }

LABEL_253:
  v168 = *(&v248 + 1);
  if (*(&v248 + 1) == *v248)
  {
    v168 = *(v248 - 8) + 5248;
  }

  *(a1 + 1416) = *(v168 - 224);
  *(a1 + 1424) = v219 > 0;
  if ((v224 & 1) == 0)
  {
    *(a1 + 1296) = a3;
  }

  return 1;
}