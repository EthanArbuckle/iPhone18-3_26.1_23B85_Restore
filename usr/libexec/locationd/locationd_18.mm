uint64_t sub_100131C88(uint64_t a1, void *a2)
{
  v8 = 0;
  memset(v7, 0, sizeof(v7));
  v3 = sub_10013176C(a1, v7);
  if (v3)
  {
    *a2 = *(&v7[0] + 1);
  }

  else
  {
    if (qword_1025D4650 != -1)
    {
      sub_1019D1C88();
    }

    v4 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
    {
      *v6 = 0;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "TCONV,UpdateLastWakeUpTime failed", v6, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1019D2620();
    }
  }

  return v3;
}

double sub_100131D4C(uint64_t a1, void *a2, char a3, double a4)
{
  v7 = a4;
  if ((a3 & 1) != 0 || *&qword_102635890 == -1.0)
  {
    v6 = 0.0;
    if (sub_100131674(a1 + 2352, &v7, &v6))
    {
      *&qword_102635890 = v6 - v7;
      result = v6 * 1000000000.0;
      *a2 = (v6 * 1000000000.0);
    }
  }

  else
  {
    result = (*&qword_102635890 + a4) * 1000000000.0;
    *a2 = result;
  }

  return result;
}

uint64_t sub_100131DE8(uint64_t a1, uint64_t *a2)
{
  if (*(a1 + 32) == 1 && *a2 >= *(a1 + 24))
  {
    return 1;
  }

  if (qword_1025D4650 != -1)
  {
    sub_1019D1C88();
  }

  v4 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *a2;
    v6 = *(a1 + 24);
    v8 = 134349312;
    v9 = v5;
    v10 = 2050;
    v11 = v6;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEFAULT, "TCONV,Cannot get wakeTime or MachTime before sleep,machAbs,%{public}.6lf,wakeTime,%{public}.6lf", &v8, 0x16u);
  }

  result = sub_10000A100(121, 2);
  if (result)
  {
    sub_1019D2520(a2, a1);
    return 0;
  }

  return result;
}

BOOL sub_100131F04(uint64_t a1, unsigned int a2)
{
  result = sub_1000183C8(a2);
  if (!result)
  {
    sub_101AAD678();
  }

  *(a1 + 32) |= 4u;
  *(a1 + 20) = a2;
  return result;
}

double sub_100131F48(uint64_t a1)
{
  *a1 = off_1024B8F88;
  *(a1 + 8) = 0;
  *&result = 0x400000000;
  *(a1 + 16) = 0x400000000;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  return result;
}

uint64_t sub_100131F7C(unsigned int a1)
{
  if (a1 > 8)
  {
    return 0;
  }

  else
  {
    return dword_101DB5C6C[a1];
  }
}

void sub_100131F9C(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = off_1024B8718;
  sub_100133DD0(a1);
  if (*(a1 + 44))
  {
    operator delete[]();
  }

  if (*(a1 + 41))
  {
    operator delete[]();
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_100132030(uint64_t a1, int a2)
{
  if (a2 <= 33)
  {
    if (a2 == 1)
    {
      if (qword_1025D4650 != -1)
      {
        sub_1002981B4();
      }

      v20 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_INFO))
      {
        LOWORD(v22) = 0;
        _os_log_impl(dword_100000000, v20, OS_LOG_TYPE_INFO, "#gpsd,start completed", &v22, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101779DE8();
      }

      if (qword_1025D4620 != -1)
      {
        sub_101770ECC();
      }

      v21 = qword_1025D4628;
      if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v22) = 0;
        _os_log_impl(dword_100000000, v21, OS_LOG_TYPE_DEFAULT, "@ClxGps, state, 1, GnssDaemonDevice/gpsd", &v22, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101779EC4();
      }
    }

    else if (a2 == 2)
    {
      if (qword_1025D4650 != -1)
      {
        sub_1002981B4();
      }

      v4 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_INFO))
      {
        LOWORD(v22) = 0;
        _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_INFO, "#gpsd,stop accepted", &v22, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101779C30();
      }

      if (qword_1025D4620 != -1)
      {
        sub_101770ECC();
      }

      v5 = qword_1025D4628;
      if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v22) = 0;
        _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEFAULT, "@ClxGps, state, 0, GnssDaemonDevice/gpsd", &v22, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101779D0C();
      }

      v25[0] = 0;
      v23 = 0u;
      v24 = 0u;
      v22 = 0u;
      memset(&v25[8], 0, 32);
      *&v25[40] = 1;
      v26 = 0u;
      v27 = 0u;
      v28 = 0u;
      v29[0] = 0;
      __asm { FMOV            V1.2D, #-1.0 }

      *&v29[8] = _Q1;
      v29[24] = 0;
      v30 = _Q1;
      v31[0] = 0;
      *&v31[8] = _Q1;
      v31[24] = 0;
      v34 = 0;
      memset(v33, 0, sizeof(v33));
      v32 = 0u;
      v35 = 1065353216;
      v36 = 0x100000005uLL;
      v11 = *&v31[16];
      *(a1 + 2056) = *v31;
      *(a1 + 2072) = v11;
      *(a1 + 2088) = v32;
      *(a1 + 2104) = *&v33[0];
      v12 = *v29;
      *(a1 + 1992) = v28;
      *(a1 + 2008) = v12;
      v13 = v30;
      *(a1 + 2024) = *&v29[16];
      *(a1 + 2040) = v13;
      v14 = *&v25[32];
      *(a1 + 1928) = *&v25[16];
      *(a1 + 1944) = v14;
      v15 = v27;
      *(a1 + 1960) = v26;
      *(a1 + 1976) = v15;
      v16 = v23;
      *(a1 + 1864) = v22;
      *(a1 + 1880) = v16;
      v17 = *v25;
      *(a1 + 1896) = v24;
      *(a1 + 1912) = v17;
      sub_1001BD950(a1 + 2112, v33 + 1);
      *(a1 + 2152) = v36;
      sub_100134860(v33 + 8);
    }
  }

  else
  {
    switch(a2)
    {
      case '4':
        if (qword_1025D4650 != -1)
        {
          sub_1002981B4();
        }

        v18 = qword_1025D4658;
        if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v22) = 0;
          _os_log_impl(dword_100000000, v18, OS_LOG_TYPE_DEFAULT, "#gpsd,STOP_EMERGENCY_PREEMPTIVE_SESSION completed", &v22, 2u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_101779A78();
        }

        break;
      case '3':
        if (qword_1025D4650 != -1)
        {
          sub_1002981B4();
        }

        v19 = qword_1025D4658;
        if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v22) = 0;
          _os_log_impl(dword_100000000, v19, OS_LOG_TYPE_DEFAULT, "#gpsd,START_EMERGENCY_PREEMPTIVE_SESSION completed", &v22, 2u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_101779B54();
        }

        break;
      case '""':
        if (qword_1025D4650 != -1)
        {
          sub_1002981B4();
        }

        v2 = qword_1025D4658;
        if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_ERROR))
        {
          LOWORD(v22) = 0;
          _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_ERROR, "#gpsd,build device completed,unexpected", &v22, 2u);
        }

        if (sub_10000A100(121, 0))
        {
          sub_101779FA0();
        }

        break;
    }
  }
}

BOOL sub_100132484(unsigned int a1)
{
  result = 1;
  if (a1 - 31 > 0x2D || ((1 << (a1 - 31)) & 0x3FFFE7F001FBLL) == 0)
  {
    return a1 < 0x1E;
  }

  return result;
}

double sub_1001324C4(uint64_t a1)
{
  *a1 = off_1024B8718;
  *(a1 + 328) = 0;
  *(a1 + 336) = 0;
  *(a1 + 360) = 0;
  *(a1 + 392) = 0;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 248) = 0;
  *(a1 + 256) = &wireless_diagnostics::google::protobuf::internal::kEmptyString;
  *(a1 + 344) = 0;
  *(a1 + 352) = 0;
  *(a1 + 368) = 0;
  *(a1 + 396) = 0;
  *(a1 + 264) = 0u;
  *(a1 + 280) = 0u;
  *(a1 + 296) = 0u;
  *(a1 + 312) = 0u;
  *(a1 + 388) = 0;
  *(a1 + 372) = 0;
  *(a1 + 380) = 0;
  return result;
}

void sub_10013256C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 1752);
  if (!v3)
  {
    sub_101770500();
  }

  v6 = (a2 + 20);
  v5 = *(a2 + 20);
  if (v5 >= 0x4D)
  {
    sub_1000432E8("bitset test argument out of range");
  }

  if ((*(a1 + ((v5 >> 3) & 0x1FFFFFF8) + 2176) >> v5))
  {
    if ((*(a2 + 396) & 1) == 0)
    {
      v7 = sub_1001347BC();
      *(a2 + 396) |= 1u;
      *(a2 + 8) = v7;
      v3 = *(a1 + 1752);
    }

    (**v3)(v3, a2);
    v8 = *(a2 + 20);
    v9 = *(a1 + 2168);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100132020;
    block[3] = &unk_102455A60;
    block[4] = a1;
    v13 = v8;
    dispatch_async(v9, block);
  }

  else
  {
    if (qword_1025D4650 != -1)
    {
      sub_1002981B4();
    }

    v10 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
    {
      sub_1016AFB24(*v6, __p);
      v11 = v15 >= 0 ? __p : __p[0];
      *buf = 136446210;
      v17 = v11;
      _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEFAULT, "#gpsd,Request type is disabled,%{public}s", buf, 0xCu);
      if (v15 < 0)
      {
        operator delete(__p[0]);
      }
    }

    if (sub_10000A100(121, 2))
    {
      sub_1017703C4(v6);
    }
  }
}

uint64_t sub_10013276C(uint64_t a1, unint64_t a2)
{
  v3 = *(a1 + 396);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_54;
  }

  if (v3)
  {
    v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(a1 + 8), a2) + 1;
    v3 = *(a1 + 396);
    if ((v3 & 2) == 0)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v4 = 0;
    if ((v3 & 2) == 0)
    {
      goto LABEL_11;
    }
  }

  v5 = *(a1 + 16);
  if (v5 >= 0x80)
  {
    v6 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5, a2) + 1;
    v3 = *(a1 + 396);
  }

  else
  {
    v6 = 2;
  }

  v4 += v6;
LABEL_11:
  if ((v3 & 4) != 0)
  {
    v7 = *(a1 + 20);
    if ((v7 & 0x80000000) != 0)
    {
      v8 = 11;
    }

    else if (v7 >= 0x80)
    {
      v8 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v7, a2) + 1;
      v3 = *(a1 + 396);
    }

    else
    {
      v8 = 2;
    }

    v4 += v8;
    if ((v3 & 8) == 0)
    {
LABEL_13:
      if ((v3 & 0x10) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_30;
    }
  }

  else if ((v3 & 8) == 0)
  {
    goto LABEL_13;
  }

  v9 = *(a1 + 24);
  if (!v9)
  {
    v9 = *(qword_102637F90 + 24);
  }

  v10 = sub_1001B4EAC(v9, a2);
  v11 = v10;
  if (v10 >= 0x80)
  {
    v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v10, a2);
  }

  else
  {
    v12 = 1;
  }

  v4 += v11 + v12 + 1;
  v3 = *(a1 + 396);
  if ((v3 & 0x10) == 0)
  {
LABEL_14:
    if ((v3 & 0x20) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_36;
  }

LABEL_30:
  v13 = *(a1 + 32);
  if (!v13)
  {
    v13 = *(qword_102637F90 + 32);
  }

  v14 = sub_100153544(v13, a2);
  v15 = v14;
  if (v14 >= 0x80)
  {
    v16 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v14, a2);
  }

  else
  {
    v16 = 1;
  }

  v4 += v15 + v16 + 1;
  v3 = *(a1 + 396);
  if ((v3 & 0x20) == 0)
  {
LABEL_15:
    if ((v3 & 0x40) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_42;
  }

LABEL_36:
  v17 = *(a1 + 40);
  if (!v17)
  {
    v17 = *(qword_102637F90 + 40);
  }

  v18 = sub_100E7FD78(v17, a2);
  v19 = v18;
  if (v18 >= 0x80)
  {
    v20 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v18, a2);
  }

  else
  {
    v20 = 1;
  }

  v4 += v19 + v20 + 1;
  v3 = *(a1 + 396);
  if ((v3 & 0x40) == 0)
  {
LABEL_16:
    if ((v3 & 0x80) == 0)
    {
      goto LABEL_54;
    }

    goto LABEL_48;
  }

LABEL_42:
  v21 = *(a1 + 48);
  if (!v21)
  {
    v21 = *(qword_102637F90 + 48);
  }

  v22 = sub_1002829C8(v21, a2);
  v23 = v22;
  if (v22 >= 0x80)
  {
    v24 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v22, a2);
  }

  else
  {
    v24 = 1;
  }

  v4 += v23 + v24 + 1;
  v3 = *(a1 + 396);
  if ((v3 & 0x80) != 0)
  {
LABEL_48:
    v25 = *(a1 + 56);
    if (!v25)
    {
      v25 = *(qword_102637F90 + 56);
    }

    v26 = sub_10028351C(v25, a2);
    v27 = v26;
    if (v26 >= 0x80)
    {
      v28 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v26, a2);
    }

    else
    {
      v28 = 1;
    }

    v4 += v27 + v28 + 1;
    v3 = *(a1 + 396);
  }

LABEL_54:
  if ((v3 & 0xFF00) == 0)
  {
    goto LABEL_112;
  }

  if ((v3 & 0x100) != 0)
  {
    v29 = *(a1 + 64);
    if (!v29)
    {
      v29 = *(qword_102637F90 + 64);
    }

    v30 = sub_10029C4EC(v29, a2);
    v31 = v30;
    if (v30 >= 0x80)
    {
      v32 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v30, a2);
    }

    else
    {
      v32 = 1;
    }

    v4 += v31 + v32 + 1;
    v3 = *(a1 + 396);
    if ((v3 & 0x200) == 0)
    {
LABEL_57:
      if ((v3 & 0x400) == 0)
      {
        goto LABEL_58;
      }

      goto LABEL_76;
    }
  }

  else if ((v3 & 0x200) == 0)
  {
    goto LABEL_57;
  }

  v33 = *(a1 + 72);
  if (!v33)
  {
    v33 = *(qword_102637F90 + 72);
  }

  v34 = sub_100E81224(v33, a2);
  v35 = v34;
  if (v34 >= 0x80)
  {
    v36 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v34, a2);
  }

  else
  {
    v36 = 1;
  }

  v4 += v35 + v36 + 1;
  v3 = *(a1 + 396);
  if ((v3 & 0x400) == 0)
  {
LABEL_58:
    if ((v3 & 0x800) == 0)
    {
      goto LABEL_59;
    }

    goto LABEL_82;
  }

LABEL_76:
  v37 = *(a1 + 80);
  if (!v37)
  {
    v37 = *(qword_102637F90 + 80);
  }

  v38 = sub_100136AEC(v37, a2);
  v39 = v38;
  if (v38 >= 0x80)
  {
    v40 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v38, a2);
  }

  else
  {
    v40 = 1;
  }

  v4 += v39 + v40 + 1;
  v3 = *(a1 + 396);
  if ((v3 & 0x800) == 0)
  {
LABEL_59:
    if ((v3 & 0x1000) == 0)
    {
      goto LABEL_60;
    }

    goto LABEL_88;
  }

LABEL_82:
  v41 = *(a1 + 88);
  if (!v41)
  {
    v41 = *(qword_102637F90 + 88);
  }

  v42 = sub_1001371F4(v41, a2);
  v43 = v42;
  if (v42 >= 0x80)
  {
    v44 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v42, a2);
  }

  else
  {
    v44 = 1;
  }

  v4 += v43 + v44 + 1;
  v3 = *(a1 + 396);
  if ((v3 & 0x1000) == 0)
  {
LABEL_60:
    if ((v3 & 0x2000) == 0)
    {
      goto LABEL_61;
    }

    goto LABEL_94;
  }

LABEL_88:
  v45 = *(a1 + 96);
  if (!v45)
  {
    v45 = *(qword_102637F90 + 96);
  }

  v46 = sub_1001811E0(v45, a2);
  v47 = v46;
  if (v46 >= 0x80)
  {
    v48 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v46, a2);
  }

  else
  {
    v48 = 1;
  }

  v4 += v47 + v48 + 1;
  v3 = *(a1 + 396);
  if ((v3 & 0x2000) == 0)
  {
LABEL_61:
    if ((v3 & 0x4000) == 0)
    {
      goto LABEL_62;
    }

    goto LABEL_100;
  }

LABEL_94:
  v49 = *(a1 + 104);
  if (!v49)
  {
    v49 = *(qword_102637F90 + 104);
  }

  v50 = sub_100E82050(v49, a2);
  v51 = v50;
  if (v50 >= 0x80)
  {
    v52 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v50, a2);
  }

  else
  {
    v52 = 1;
  }

  v4 += v51 + v52 + 1;
  v3 = *(a1 + 396);
  if ((v3 & 0x4000) == 0)
  {
LABEL_62:
    if ((v3 & 0x8000) == 0)
    {
      goto LABEL_112;
    }

    goto LABEL_106;
  }

LABEL_100:
  v53 = *(a1 + 112);
  if (!v53)
  {
    v53 = *(qword_102637F90 + 112);
  }

  v54 = sub_100E82480(v53, a2);
  v55 = v54;
  if (v54 >= 0x80)
  {
    v56 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v54, a2);
  }

  else
  {
    v56 = 1;
  }

  v4 += v55 + v56 + 1;
  v3 = *(a1 + 396);
  if ((v3 & 0x8000) != 0)
  {
LABEL_106:
    v57 = *(a1 + 120);
    if (!v57)
    {
      v57 = *(qword_102637F90 + 120);
    }

    v58 = sub_100E7DF78(v57, a2);
    v59 = v58;
    if (v58 >= 0x80)
    {
      v60 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v58, a2);
    }

    else
    {
      v60 = 1;
    }

    v4 += v59 + v60 + 2;
    v3 = *(a1 + 396);
  }

LABEL_112:
  if ((v3 & 0xFF0000) == 0)
  {
    goto LABEL_174;
  }

  if ((v3 & 0x10000) != 0)
  {
    v61 = *(a1 + 128);
    if (!v61)
    {
      v61 = *(qword_102637F90 + 128);
    }

    v62 = sub_100E7E360(v61, a2);
    v63 = v62;
    if (v62 >= 0x80)
    {
      v64 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v62, a2);
    }

    else
    {
      v64 = 1;
    }

    v4 += v63 + v64 + 2;
    v3 = *(a1 + 396);
    if ((v3 & 0x20000) == 0)
    {
LABEL_115:
      if ((v3 & 0x40000) == 0)
      {
        goto LABEL_116;
      }

      goto LABEL_134;
    }
  }

  else if ((v3 & 0x20000) == 0)
  {
    goto LABEL_115;
  }

  v65 = *(a1 + 136);
  if (!v65)
  {
    v65 = *(qword_102637F90 + 136);
  }

  v66 = sub_100E7EB1C(v65, a2);
  v67 = v66;
  if (v66 >= 0x80)
  {
    v68 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v66, a2);
  }

  else
  {
    v68 = 1;
  }

  v4 += v67 + v68 + 2;
  v3 = *(a1 + 396);
  if ((v3 & 0x40000) == 0)
  {
LABEL_116:
    if ((v3 & 0x80000) == 0)
    {
      goto LABEL_117;
    }

    goto LABEL_142;
  }

LABEL_134:
  v69 = *(a1 + 144);
  if (!v69)
  {
    v69 = *(qword_102637F90 + 144);
  }

  if ((*(v69 + 20) & 1) == 0)
  {
    v70 = 0;
    *(v69 + 16) = 0;
LABEL_139:
    v72 = 1;
    goto LABEL_141;
  }

  v71 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(v69 + 8), a2);
  v70 = v71 + 1;
  *(v69 + 16) = v71 + 1;
  if ((v71 + 1) < 0x80)
  {
    goto LABEL_139;
  }

  v72 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback((v71 + 1), a2);
LABEL_141:
  v4 += v72 + v70 + 2;
  v3 = *(a1 + 396);
  if ((v3 & 0x80000) == 0)
  {
LABEL_117:
    if ((v3 & 0x100000) == 0)
    {
      goto LABEL_118;
    }

    goto LABEL_148;
  }

LABEL_142:
  v73 = *(a1 + 152);
  if (!v73)
  {
    v73 = *(qword_102637F90 + 152);
  }

  v74 = sub_100E7DA98(v73);
  v75 = v74;
  if (v74 >= 0x80)
  {
    v76 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v74, a2);
  }

  else
  {
    v76 = 1;
  }

  v4 += v75 + v76 + 2;
  v3 = *(a1 + 396);
  if ((v3 & 0x100000) == 0)
  {
LABEL_118:
    if ((v3 & 0x200000) == 0)
    {
      goto LABEL_119;
    }

    goto LABEL_156;
  }

LABEL_148:
  v77 = *(a1 + 160);
  if (!v77)
  {
    v77 = *(qword_102637F90 + 160);
  }

  if ((*(v77 + 20) & 1) == 0)
  {
    v78 = 0;
    *(v77 + 16) = 0;
LABEL_153:
    v80 = 1;
    goto LABEL_155;
  }

  v79 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(v77 + 8), a2);
  v78 = v79 + 1;
  *(v77 + 16) = v79 + 1;
  if ((v79 + 1) < 0x80)
  {
    goto LABEL_153;
  }

  v80 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback((v79 + 1), a2);
LABEL_155:
  v4 += v80 + v78 + 2;
  v3 = *(a1 + 396);
  if ((v3 & 0x200000) == 0)
  {
LABEL_119:
    if ((v3 & 0x400000) == 0)
    {
      goto LABEL_120;
    }

    goto LABEL_162;
  }

LABEL_156:
  v81 = *(a1 + 168);
  if (!v81)
  {
    v81 = *(qword_102637F90 + 168);
  }

  v82 = sub_100E82C20(v81, a2);
  v83 = v82;
  if (v82 >= 0x80)
  {
    v84 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v82, a2);
  }

  else
  {
    v84 = 1;
  }

  v4 += v83 + v84 + 2;
  v3 = *(a1 + 396);
  if ((v3 & 0x400000) == 0)
  {
LABEL_120:
    if ((v3 & 0x800000) == 0)
    {
      goto LABEL_174;
    }

    goto LABEL_168;
  }

LABEL_162:
  v85 = *(a1 + 176);
  if (!v85)
  {
    v85 = *(qword_102637F90 + 176);
  }

  v86 = sub_1001B7DF8(v85, a2);
  v87 = v86;
  if (v86 >= 0x80)
  {
    v88 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v86, a2);
  }

  else
  {
    v88 = 1;
  }

  v4 += v87 + v88 + 2;
  v3 = *(a1 + 396);
  if ((v3 & 0x800000) != 0)
  {
LABEL_168:
    v89 = *(a1 + 184);
    if (!v89)
    {
      v89 = *(qword_102637F90 + 184);
    }

    if (*(v89 + 16))
    {
      v90 = 2 * (*(v89 + 16) & 1);
    }

    else
    {
      v90 = 0;
    }

    *(v89 + 12) = v90;
    v4 += v90 + 3;
    v3 = *(a1 + 396);
  }

LABEL_174:
  if (!HIBYTE(v3))
  {
    goto LABEL_232;
  }

  if ((v3 & 0x1000000) != 0)
  {
    v91 = *(a1 + 192);
    if (!v91)
    {
      v91 = *(qword_102637F90 + 192);
    }

    v92 = sub_100E83720(v91, a2);
    v93 = v92;
    if (v92 >= 0x80)
    {
      v94 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v92, a2);
    }

    else
    {
      v94 = 1;
    }

    v4 += v93 + v94 + 2;
    v3 = *(a1 + 396);
    if ((v3 & 0x2000000) == 0)
    {
LABEL_177:
      if ((v3 & 0x4000000) == 0)
      {
        goto LABEL_178;
      }

      goto LABEL_196;
    }
  }

  else if ((v3 & 0x2000000) == 0)
  {
    goto LABEL_177;
  }

  v95 = *(a1 + 200);
  if (!v95)
  {
    v95 = *(qword_102637F90 + 200);
  }

  v96 = sub_100E83A8C(v95, a2);
  v97 = v96;
  if (v96 >= 0x80)
  {
    v98 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v96, a2);
  }

  else
  {
    v98 = 1;
  }

  v4 += v97 + v98 + 2;
  v3 = *(a1 + 396);
  if ((v3 & 0x4000000) == 0)
  {
LABEL_178:
    if ((v3 & 0x8000000) == 0)
    {
      goto LABEL_179;
    }

    goto LABEL_202;
  }

LABEL_196:
  v99 = *(a1 + 208);
  if (!v99)
  {
    v99 = *(qword_102637F90 + 208);
  }

  v100 = sub_100E88100(v99, a2);
  v101 = v100;
  if (v100 >= 0x80)
  {
    v102 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v100, a2);
  }

  else
  {
    v102 = 1;
  }

  v4 += v101 + v102 + 2;
  v3 = *(a1 + 396);
  if ((v3 & 0x8000000) == 0)
  {
LABEL_179:
    if ((v3 & 0x10000000) == 0)
    {
      goto LABEL_180;
    }

    goto LABEL_208;
  }

LABEL_202:
  v103 = *(a1 + 216);
  if (!v103)
  {
    v103 = *(qword_102637F90 + 216);
  }

  v104 = sub_1001BE044(v103, a2);
  v105 = v104;
  if (v104 >= 0x80)
  {
    v106 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v104, a2);
  }

  else
  {
    v106 = 1;
  }

  v4 += v105 + v106 + 2;
  v3 = *(a1 + 396);
  if ((v3 & 0x10000000) == 0)
  {
LABEL_180:
    if ((v3 & 0x20000000) == 0)
    {
      goto LABEL_181;
    }

    goto LABEL_214;
  }

LABEL_208:
  v107 = *(a1 + 224);
  if (!v107)
  {
    v107 = *(qword_102637F90 + 224);
  }

  v108 = sub_100E82834(v107, a2);
  v109 = v108;
  if (v108 >= 0x80)
  {
    v110 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v108, a2);
  }

  else
  {
    v110 = 1;
  }

  v4 += v109 + v110 + 2;
  v3 = *(a1 + 396);
  if ((v3 & 0x20000000) == 0)
  {
LABEL_181:
    if ((v3 & 0x40000000) == 0)
    {
      goto LABEL_182;
    }

    goto LABEL_220;
  }

LABEL_214:
  v111 = *(a1 + 232);
  if (!v111)
  {
    v111 = *(qword_102637F90 + 232);
  }

  if (*(v111 + 16))
  {
    v112 = 2 * (*(v111 + 16) & 1) + (*(v111 + 16) & 2);
  }

  else
  {
    v112 = 0;
  }

  *(v111 + 12) = v112;
  v4 += v112 + 3;
  v3 = *(a1 + 396);
  if ((v3 & 0x40000000) == 0)
  {
LABEL_182:
    if ((v3 & 0x80000000) == 0)
    {
      goto LABEL_232;
    }

    goto LABEL_226;
  }

LABEL_220:
  v113 = *(a1 + 240);
  if (!v113)
  {
    v113 = *(qword_102637F90 + 240);
  }

  v114 = sub_100E7E6CC(v113, a2);
  v115 = v114;
  if (v114 >= 0x80)
  {
    v116 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v114, a2);
  }

  else
  {
    v116 = 1;
  }

  v4 += v115 + v116 + 2;
  if ((*(a1 + 396) & 0x80000000) != 0)
  {
LABEL_226:
    v117 = *(a1 + 248);
    if (!v117)
    {
      v117 = *(qword_102637F90 + 248);
    }

    v118 = sub_1008A7C64(v117, a2);
    v119 = v118;
    if (v118 >= 0x80)
    {
      v120 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v118, a2);
    }

    else
    {
      v120 = 1;
    }

    v4 += v119 + v120 + 2;
  }

LABEL_232:
  v121 = *(a1 + 400);
  if (!v121)
  {
    goto LABEL_291;
  }

  if (v121)
  {
    v122 = *(a1 + 256);
    v123 = *(v122 + 23);
    v124 = v123;
    v125 = *(v122 + 8);
    if ((v123 & 0x80u) == 0)
    {
      v126 = *(v122 + 23);
    }

    else
    {
      v126 = v125;
    }

    if (v126 >= 0x80)
    {
      v127 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v126, a2);
      v123 = *(v122 + 23);
      v125 = *(v122 + 8);
      v121 = *(a1 + 400);
      v124 = *(v122 + 23);
    }

    else
    {
      v127 = 1;
    }

    if (v124 < 0)
    {
      v123 = v125;
    }

    v4 += v127 + v123 + 2;
    if ((v121 & 2) == 0)
    {
LABEL_235:
      if ((v121 & 4) == 0)
      {
        goto LABEL_236;
      }

      goto LABEL_257;
    }
  }

  else if ((v121 & 2) == 0)
  {
    goto LABEL_235;
  }

  v128 = *(a1 + 264);
  if (!v128)
  {
    v128 = *(qword_102637F90 + 264);
  }

  v129 = sub_100883228(v128, a2);
  v130 = v129;
  if (v129 >= 0x80)
  {
    v131 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v129, a2);
  }

  else
  {
    v131 = 1;
  }

  v4 += v130 + v131 + 2;
  v121 = *(a1 + 400);
  if ((v121 & 4) == 0)
  {
LABEL_236:
    if ((v121 & 8) == 0)
    {
      goto LABEL_237;
    }

    goto LABEL_261;
  }

LABEL_257:
  v132 = *(a1 + 304);
  if (v132 >= 0x80)
  {
    v133 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v132, a2) + 2;
    v121 = *(a1 + 400);
  }

  else
  {
    v133 = 3;
  }

  v4 += v133;
  if ((v121 & 8) == 0)
  {
LABEL_237:
    if ((v121 & 0x10) == 0)
    {
      goto LABEL_238;
    }

    goto LABEL_267;
  }

LABEL_261:
  v134 = *(a1 + 272);
  if (!v134)
  {
    v134 = *(qword_102637F90 + 272);
  }

  v135 = sub_1008A27F4(v134, a2);
  v136 = v135;
  if (v135 >= 0x80)
  {
    v137 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v135, a2);
  }

  else
  {
    v137 = 1;
  }

  v4 += v136 + v137 + 2;
  v121 = *(a1 + 400);
  if ((v121 & 0x10) == 0)
  {
LABEL_238:
    if ((v121 & 0x20) == 0)
    {
      goto LABEL_239;
    }

    goto LABEL_273;
  }

LABEL_267:
  v138 = *(a1 + 280);
  if (!v138)
  {
    v138 = *(qword_102637F90 + 280);
  }

  v139 = sub_1008A36B0(v138, a2);
  v140 = v139;
  if (v139 >= 0x80)
  {
    v141 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v139, a2);
  }

  else
  {
    v141 = 1;
  }

  v4 += v140 + v141 + 2;
  v121 = *(a1 + 400);
  if ((v121 & 0x20) == 0)
  {
LABEL_239:
    if ((v121 & 0x40) == 0)
    {
      goto LABEL_240;
    }

    goto LABEL_279;
  }

LABEL_273:
  v142 = *(a1 + 288);
  if (!v142)
  {
    v142 = *(qword_102637F90 + 288);
  }

  v143 = sub_1008A63BC(v142, a2);
  v144 = v143;
  if (v143 >= 0x80)
  {
    v145 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v143, a2);
  }

  else
  {
    v145 = 1;
  }

  v4 += v144 + v145 + 2;
  v121 = *(a1 + 400);
  if ((v121 & 0x40) == 0)
  {
LABEL_240:
    if ((v121 & 0x80) == 0)
    {
      goto LABEL_291;
    }

    goto LABEL_285;
  }

LABEL_279:
  v146 = *(a1 + 296);
  if (!v146)
  {
    v146 = *(qword_102637F90 + 296);
  }

  v147 = sub_1008A9778(v146, a2);
  v148 = v147;
  if (v147 >= 0x80)
  {
    v149 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v147, a2);
  }

  else
  {
    v149 = 1;
  }

  v4 += v148 + v149 + 2;
  v121 = *(a1 + 400);
  if ((v121 & 0x80) != 0)
  {
LABEL_285:
    v150 = *(a1 + 312);
    if (!v150)
    {
      v150 = *(qword_102637F90 + 312);
    }

    v151 = sub_1008AA458(v150, a2);
    v152 = v151;
    if (v151 >= 0x80)
    {
      v153 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v151, a2);
    }

    else
    {
      v153 = 1;
    }

    v4 += v152 + v153 + 2;
    v121 = *(a1 + 400);
  }

LABEL_291:
  if ((v121 & 0xFF00) == 0)
  {
    goto LABEL_326;
  }

  if ((v121 & 0x100) == 0)
  {
    if ((v121 & 0x400) == 0)
    {
      goto LABEL_294;
    }

LABEL_302:
    v158 = *(a1 + 344);
    if (!v158)
    {
      v158 = *(qword_102637F90 + 344);
    }

    v159 = sub_10087A198(v158, a2);
    v160 = v159;
    if (v159 >= 0x80)
    {
      v161 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v159, a2);
    }

    else
    {
      v161 = 1;
    }

    v4 += v160 + v161 + 2;
    v121 = *(a1 + 400);
    if ((v121 & 0x800) == 0)
    {
      goto LABEL_312;
    }

    goto LABEL_308;
  }

  v154 = *(a1 + 320);
  if (!v154)
  {
    v154 = *(qword_102637F90 + 320);
  }

  v155 = sub_1008A7050(v154);
  v156 = v155;
  if (v155 >= 0x80)
  {
    v157 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v155, a2);
  }

  else
  {
    v157 = 1;
  }

  v4 += v156 + v157 + 2;
  v121 = *(a1 + 400);
  if ((v121 & 0x400) != 0)
  {
    goto LABEL_302;
  }

LABEL_294:
  if ((v121 & 0x800) != 0)
  {
LABEL_308:
    v162 = *(a1 + 308);
    if (v162 >= 0x80)
    {
      v163 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v162, a2) + 2;
      v121 = *(a1 + 400);
    }

    else
    {
      v163 = 3;
    }

    v4 += v163;
  }

LABEL_312:
  if ((v121 & 0x2000) != 0)
  {
    v4 += 3;
  }

  if ((v121 & 0x4000) != 0)
  {
    v164 = *(a1 + 372);
    if (v164 >= 0x80)
    {
      v165 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v164, a2) + 2;
      v121 = *(a1 + 400);
    }

    else
    {
      v165 = 3;
    }

    v4 += v165;
  }

  if ((v121 & 0x8000) != 0)
  {
    v166 = *(a1 + 376);
    if (!v166)
    {
      v166 = *(qword_102637F90 + 376);
    }

    v167 = sub_10087F204(v166, a2);
    v168 = v167;
    if (v167 >= 0x80)
    {
      v169 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v167, a2);
    }

    else
    {
      v169 = 1;
    }

    v4 += v168 + v169 + 2;
    v121 = *(a1 + 400);
  }

LABEL_326:
  if ((v121 & 0x10000) != 0)
  {
    v170 = *(a1 + 384);
    if (!v170)
    {
      v170 = *(qword_102637F90 + 384);
    }

    v171 = sub_10087B774(v170, a2);
    v172 = v171;
    if (v171 >= 0x80)
    {
      v173 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v171, a2);
    }

    else
    {
      v173 = 1;
    }

    v4 += v172 + v173 + 2;
  }

  v174 = *(a1 + 336);
  if (v174 < 1)
  {
    v176 = 0;
  }

  else
  {
    v175 = 0;
    v176 = 0;
    do
    {
      v177 = *(*(a1 + 328) + 4 * v175);
      if (v177 >= 0x80)
      {
        v178 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v177, a2);
        v174 = *(a1 + 336);
      }

      else
      {
        v178 = 1;
      }

      v176 += v178;
      ++v175;
    }

    while (v175 < v174);
  }

  v179 = *(a1 + 360);
  if (v179 < 1)
  {
    v181 = 0;
  }

  else
  {
    v180 = 0;
    v181 = 0;
    do
    {
      v182 = *(*(a1 + 352) + 4 * v180);
      if (v182 >= 0x80)
      {
        v183 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v182, a2);
        v179 = *(a1 + 360);
      }

      else
      {
        v183 = 1;
      }

      v181 += v183;
      ++v180;
    }

    while (v180 < v179);
  }

  result = (v176 + v4 + v181 + 2 * (v179 + v174));
  *(a1 + 392) = result;
  return result;
}

uint64_t sub_100133594(uint64_t result, const wireless_diagnostics::google::protobuf::MessageLite *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 396);
  if (v6)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(result + 8), a2, a4);
    v6 = *(v5 + 396);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_36;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, *(v5 + 16), a2, a4);
  v6 = *(v5 + 396);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_37;
  }

LABEL_36:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(3, *(v5 + 20), a2, a4);
  v6 = *(v5 + 396);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_40;
  }

LABEL_37:
  v7 = *(v5 + 24);
  if (!v7)
  {
    v7 = *(qword_102637F90 + 24);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(4, v7, a2, a4);
  v6 = *(v5 + 396);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_43;
  }

LABEL_40:
  v8 = *(v5 + 32);
  if (!v8)
  {
    v8 = *(qword_102637F90 + 32);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(5, v8, a2, a4);
  v6 = *(v5 + 396);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_46;
  }

LABEL_43:
  v9 = *(v5 + 40);
  if (!v9)
  {
    v9 = *(qword_102637F90 + 40);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(6, v9, a2, a4);
  v6 = *(v5 + 396);
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_49;
  }

LABEL_46:
  v10 = *(v5 + 48);
  if (!v10)
  {
    v10 = *(qword_102637F90 + 48);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(7, v10, a2, a4);
  v6 = *(v5 + 396);
  if ((v6 & 0x80) == 0)
  {
LABEL_9:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_52;
  }

LABEL_49:
  v11 = *(v5 + 56);
  if (!v11)
  {
    v11 = *(qword_102637F90 + 56);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(8, v11, a2, a4);
  v6 = *(v5 + 396);
  if ((v6 & 0x100) == 0)
  {
LABEL_10:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_55;
  }

LABEL_52:
  v12 = *(v5 + 64);
  if (!v12)
  {
    v12 = *(qword_102637F90 + 64);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(9, v12, a2, a4);
  v6 = *(v5 + 396);
  if ((v6 & 0x200) == 0)
  {
LABEL_11:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_58;
  }

LABEL_55:
  v13 = *(v5 + 72);
  if (!v13)
  {
    v13 = *(qword_102637F90 + 72);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0xA, v13, a2, a4);
  v6 = *(v5 + 396);
  if ((v6 & 0x400) == 0)
  {
LABEL_12:
    if ((v6 & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_61;
  }

LABEL_58:
  v14 = *(v5 + 80);
  if (!v14)
  {
    v14 = *(qword_102637F90 + 80);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0xB, v14, a2, a4);
  v6 = *(v5 + 396);
  if ((v6 & 0x800) == 0)
  {
LABEL_13:
    if ((v6 & 0x1000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_64;
  }

LABEL_61:
  v15 = *(v5 + 88);
  if (!v15)
  {
    v15 = *(qword_102637F90 + 88);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0xC, v15, a2, a4);
  v6 = *(v5 + 396);
  if ((v6 & 0x1000) == 0)
  {
LABEL_14:
    if ((v6 & 0x2000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_67;
  }

LABEL_64:
  v16 = *(v5 + 96);
  if (!v16)
  {
    v16 = *(qword_102637F90 + 96);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0xD, v16, a2, a4);
  v6 = *(v5 + 396);
  if ((v6 & 0x2000) == 0)
  {
LABEL_15:
    if ((v6 & 0x4000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_70;
  }

LABEL_67:
  v17 = *(v5 + 104);
  if (!v17)
  {
    v17 = *(qword_102637F90 + 104);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0xE, v17, a2, a4);
  v6 = *(v5 + 396);
  if ((v6 & 0x4000) == 0)
  {
LABEL_16:
    if ((v6 & 0x8000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_73;
  }

LABEL_70:
  v18 = *(v5 + 112);
  if (!v18)
  {
    v18 = *(qword_102637F90 + 112);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0xF, v18, a2, a4);
  v6 = *(v5 + 396);
  if ((v6 & 0x8000) == 0)
  {
LABEL_17:
    if ((v6 & 0x10000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_76;
  }

LABEL_73:
  v19 = *(v5 + 120);
  if (!v19)
  {
    v19 = *(qword_102637F90 + 120);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x10, v19, a2, a4);
  v6 = *(v5 + 396);
  if ((v6 & 0x10000) == 0)
  {
LABEL_18:
    if ((v6 & 0x20000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_79;
  }

LABEL_76:
  v20 = *(v5 + 128);
  if (!v20)
  {
    v20 = *(qword_102637F90 + 128);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x11, v20, a2, a4);
  v6 = *(v5 + 396);
  if ((v6 & 0x20000) == 0)
  {
LABEL_19:
    if ((v6 & 0x40000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_82;
  }

LABEL_79:
  v21 = *(v5 + 136);
  if (!v21)
  {
    v21 = *(qword_102637F90 + 136);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x12, v21, a2, a4);
  v6 = *(v5 + 396);
  if ((v6 & 0x40000) == 0)
  {
LABEL_20:
    if ((v6 & 0x80000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_85;
  }

LABEL_82:
  v22 = *(v5 + 144);
  if (!v22)
  {
    v22 = *(qword_102637F90 + 144);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x13, v22, a2, a4);
  v6 = *(v5 + 396);
  if ((v6 & 0x80000) == 0)
  {
LABEL_21:
    if ((v6 & 0x100000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_88;
  }

LABEL_85:
  v23 = *(v5 + 152);
  if (!v23)
  {
    v23 = *(qword_102637F90 + 152);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x14, v23, a2, a4);
  v6 = *(v5 + 396);
  if ((v6 & 0x100000) == 0)
  {
LABEL_22:
    if ((v6 & 0x200000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_91;
  }

LABEL_88:
  v24 = *(v5 + 160);
  if (!v24)
  {
    v24 = *(qword_102637F90 + 160);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x15, v24, a2, a4);
  v6 = *(v5 + 396);
  if ((v6 & 0x200000) == 0)
  {
LABEL_23:
    if ((v6 & 0x400000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_94;
  }

LABEL_91:
  v25 = *(v5 + 168);
  if (!v25)
  {
    v25 = *(qword_102637F90 + 168);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x16, v25, a2, a4);
  v6 = *(v5 + 396);
  if ((v6 & 0x400000) == 0)
  {
LABEL_24:
    if ((v6 & 0x800000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_97;
  }

LABEL_94:
  v26 = *(v5 + 176);
  if (!v26)
  {
    v26 = *(qword_102637F90 + 176);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x17, v26, a2, a4);
  v6 = *(v5 + 396);
  if ((v6 & 0x800000) == 0)
  {
LABEL_25:
    if ((v6 & 0x1000000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_100;
  }

LABEL_97:
  v27 = *(v5 + 184);
  if (!v27)
  {
    v27 = *(qword_102637F90 + 184);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x18, v27, a2, a4);
  v6 = *(v5 + 396);
  if ((v6 & 0x1000000) == 0)
  {
LABEL_26:
    if ((v6 & 0x2000000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_103;
  }

LABEL_100:
  v28 = *(v5 + 192);
  if (!v28)
  {
    v28 = *(qword_102637F90 + 192);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x19, v28, a2, a4);
  v6 = *(v5 + 396);
  if ((v6 & 0x2000000) == 0)
  {
LABEL_27:
    if ((v6 & 0x4000000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_106;
  }

LABEL_103:
  v29 = *(v5 + 200);
  if (!v29)
  {
    v29 = *(qword_102637F90 + 200);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x1A, v29, a2, a4);
  v6 = *(v5 + 396);
  if ((v6 & 0x4000000) == 0)
  {
LABEL_28:
    if ((v6 & 0x8000000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_109;
  }

LABEL_106:
  v30 = *(v5 + 208);
  if (!v30)
  {
    v30 = *(qword_102637F90 + 208);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x1B, v30, a2, a4);
  v6 = *(v5 + 396);
  if ((v6 & 0x8000000) == 0)
  {
LABEL_29:
    if ((v6 & 0x10000000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_112;
  }

LABEL_109:
  v31 = *(v5 + 216);
  if (!v31)
  {
    v31 = *(qword_102637F90 + 216);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x1C, v31, a2, a4);
  v6 = *(v5 + 396);
  if ((v6 & 0x10000000) == 0)
  {
LABEL_30:
    if ((v6 & 0x20000000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_115;
  }

LABEL_112:
  v32 = *(v5 + 224);
  if (!v32)
  {
    v32 = *(qword_102637F90 + 224);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x1E, v32, a2, a4);
  v6 = *(v5 + 396);
  if ((v6 & 0x20000000) == 0)
  {
LABEL_31:
    if ((v6 & 0x40000000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_118;
  }

LABEL_115:
  v33 = *(v5 + 232);
  if (!v33)
  {
    v33 = *(qword_102637F90 + 232);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x1F, v33, a2, a4);
  v6 = *(v5 + 396);
  if ((v6 & 0x40000000) == 0)
  {
LABEL_32:
    if ((v6 & 0x80000000) == 0)
    {
      goto LABEL_124;
    }

    goto LABEL_121;
  }

LABEL_118:
  v34 = *(v5 + 240);
  if (!v34)
  {
    v34 = *(qword_102637F90 + 240);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x20, v34, a2, a4);
  if ((*(v5 + 396) & 0x80000000) != 0)
  {
LABEL_121:
    v35 = *(v5 + 248);
    if (!v35)
    {
      v35 = *(qword_102637F90 + 248);
    }

    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x32, v35, a2, a4);
  }

LABEL_124:
  v36 = *(v5 + 400);
  if (v36)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBytes();
    v36 = *(v5 + 400);
    if ((v36 & 2) == 0)
    {
LABEL_126:
      if ((v36 & 4) == 0)
      {
        goto LABEL_127;
      }

      goto LABEL_138;
    }
  }

  else if ((v36 & 2) == 0)
  {
    goto LABEL_126;
  }

  v37 = *(v5 + 264);
  if (!v37)
  {
    v37 = *(qword_102637F90 + 264);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x3C, v37, a2, a4);
  v36 = *(v5 + 400);
  if ((v36 & 4) == 0)
  {
LABEL_127:
    if ((v36 & 8) == 0)
    {
      goto LABEL_128;
    }

    goto LABEL_139;
  }

LABEL_138:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x3D, *(v5 + 304), a2, a4);
  v36 = *(v5 + 400);
  if ((v36 & 8) == 0)
  {
LABEL_128:
    if ((v36 & 0x10) == 0)
    {
      goto LABEL_129;
    }

    goto LABEL_142;
  }

LABEL_139:
  v38 = *(v5 + 272);
  if (!v38)
  {
    v38 = *(qword_102637F90 + 272);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x3E, v38, a2, a4);
  v36 = *(v5 + 400);
  if ((v36 & 0x10) == 0)
  {
LABEL_129:
    if ((v36 & 0x20) == 0)
    {
      goto LABEL_130;
    }

    goto LABEL_145;
  }

LABEL_142:
  v39 = *(v5 + 280);
  if (!v39)
  {
    v39 = *(qword_102637F90 + 280);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x3F, v39, a2, a4);
  v36 = *(v5 + 400);
  if ((v36 & 0x20) == 0)
  {
LABEL_130:
    if ((v36 & 0x40) == 0)
    {
      goto LABEL_131;
    }

    goto LABEL_148;
  }

LABEL_145:
  v40 = *(v5 + 288);
  if (!v40)
  {
    v40 = *(qword_102637F90 + 288);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x40, v40, a2, a4);
  v36 = *(v5 + 400);
  if ((v36 & 0x40) == 0)
  {
LABEL_131:
    if ((v36 & 0x80) == 0)
    {
      goto LABEL_132;
    }

    goto LABEL_151;
  }

LABEL_148:
  v41 = *(v5 + 296);
  if (!v41)
  {
    v41 = *(qword_102637F90 + 296);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x41, v41, a2, a4);
  v36 = *(v5 + 400);
  if ((v36 & 0x80) == 0)
  {
LABEL_132:
    if ((v36 & 0x100) == 0)
    {
      goto LABEL_157;
    }

    goto LABEL_154;
  }

LABEL_151:
  v42 = *(v5 + 312);
  if (!v42)
  {
    v42 = *(qword_102637F90 + 312);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x42, v42, a2, a4);
  if ((*(v5 + 400) & 0x100) != 0)
  {
LABEL_154:
    v43 = *(v5 + 320);
    if (!v43)
    {
      v43 = *(qword_102637F90 + 320);
    }

    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x43, v43, a2, a4);
  }

LABEL_157:
  if (*(v5 + 336) >= 1)
  {
    v44 = 0;
    do
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x46, *(*(v5 + 328) + 4 * v44++), a2, a4);
    }

    while (v44 < *(v5 + 336));
  }

  v45 = *(v5 + 400);
  if ((v45 & 0x400) != 0)
  {
    v46 = *(v5 + 344);
    if (!v46)
    {
      v46 = *(qword_102637F90 + 344);
    }

    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x47, v46, a2, a4);
    v45 = *(v5 + 400);
  }

  if ((v45 & 0x800) != 0)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x48, *(v5 + 308), a2, a4);
  }

  if (*(v5 + 360) >= 1)
  {
    v47 = 0;
    do
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x49, *(*(v5 + 352) + 4 * v47++), a2, a4);
    }

    while (v47 < *(v5 + 360));
  }

  v48 = *(v5 + 400);
  if ((v48 & 0x2000) != 0)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0x4A, *(v5 + 368), a2, a4);
    v48 = *(v5 + 400);
    if ((v48 & 0x4000) == 0)
    {
LABEL_171:
      if ((v48 & 0x8000) == 0)
      {
        goto LABEL_172;
      }

      goto LABEL_176;
    }
  }

  else if ((v48 & 0x4000) == 0)
  {
    goto LABEL_171;
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x4B, *(v5 + 372), a2, a4);
  v48 = *(v5 + 400);
  if ((v48 & 0x8000) == 0)
  {
LABEL_172:
    if ((v48 & 0x10000) == 0)
    {
      return result;
    }

    goto LABEL_179;
  }

LABEL_176:
  v49 = *(v5 + 376);
  if (!v49)
  {
    v49 = *(qword_102637F90 + 376);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x4C, v49, a2, a4);
  if ((*(v5 + 400) & 0x10000) != 0)
  {
LABEL_179:
    v50 = *(v5 + 384);
    if (!v50)
    {
      v50 = *(qword_102637F90 + 384);
    }

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x4D, v50, a2, a4);
  }

  return result;
}

void *sub_100133DD0(void *result)
{
  v1 = result;
  v2 = result[32];
  if (v2 != &wireless_diagnostics::google::protobuf::internal::kEmptyString && v2 != 0)
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    operator delete();
  }

  if (qword_102637F90 != result)
  {
    v4 = result[3];
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }

    v5 = v1[4];
    if (v5)
    {
      (*(*v5 + 8))(v5);
    }

    v6 = v1[5];
    if (v6)
    {
      (*(*v6 + 8))(v6);
    }

    v7 = v1[6];
    if (v7)
    {
      (*(*v7 + 8))(v7);
    }

    v8 = v1[7];
    if (v8)
    {
      (*(*v8 + 8))(v8);
    }

    v9 = v1[8];
    if (v9)
    {
      (*(*v9 + 8))(v9);
    }

    v10 = v1[9];
    if (v10)
    {
      (*(*v10 + 8))(v10);
    }

    v11 = v1[10];
    if (v11)
    {
      (*(*v11 + 8))(v11);
    }

    v12 = v1[11];
    if (v12)
    {
      (*(*v12 + 8))(v12);
    }

    v13 = v1[12];
    if (v13)
    {
      (*(*v13 + 8))(v13);
    }

    v14 = v1[13];
    if (v14)
    {
      (*(*v14 + 8))(v14);
    }

    v15 = v1[14];
    if (v15)
    {
      (*(*v15 + 8))(v15);
    }

    v16 = v1[15];
    if (v16)
    {
      (*(*v16 + 8))(v16);
    }

    v17 = v1[16];
    if (v17)
    {
      (*(*v17 + 8))(v17);
    }

    v18 = v1[17];
    if (v18)
    {
      (*(*v18 + 8))(v18);
    }

    v19 = v1[18];
    if (v19)
    {
      (*(*v19 + 8))(v19);
    }

    v20 = v1[19];
    if (v20)
    {
      (*(*v20 + 8))(v20);
    }

    v21 = v1[20];
    if (v21)
    {
      (*(*v21 + 8))(v21);
    }

    v22 = v1[21];
    if (v22)
    {
      (*(*v22 + 8))(v22);
    }

    v23 = v1[22];
    if (v23)
    {
      (*(*v23 + 8))(v23);
    }

    v24 = v1[23];
    if (v24)
    {
      (*(*v24 + 8))(v24);
    }

    v25 = v1[24];
    if (v25)
    {
      (*(*v25 + 8))(v25);
    }

    v26 = v1[25];
    if (v26)
    {
      (*(*v26 + 8))(v26);
    }

    v27 = v1[26];
    if (v27)
    {
      (*(*v27 + 8))(v27);
    }

    v28 = v1[27];
    if (v28)
    {
      (*(*v28 + 8))(v28);
    }

    v29 = v1[28];
    if (v29)
    {
      (*(*v29 + 8))(v29);
    }

    v30 = v1[29];
    if (v30)
    {
      (*(*v30 + 8))(v30);
    }

    v31 = v1[30];
    if (v31)
    {
      (*(*v31 + 8))(v31);
    }

    v32 = v1[31];
    if (v32)
    {
      (*(*v32 + 8))(v32);
    }

    v33 = v1[33];
    if (v33)
    {
      (*(*v33 + 8))(v33);
    }

    v34 = v1[34];
    if (v34)
    {
      (*(*v34 + 8))(v34);
    }

    v35 = v1[35];
    if (v35)
    {
      (*(*v35 + 8))(v35);
    }

    v36 = v1[36];
    if (v36)
    {
      (*(*v36 + 8))(v36);
    }

    v37 = v1[37];
    if (v37)
    {
      (*(*v37 + 8))(v37);
    }

    v38 = v1[39];
    if (v38)
    {
      (*(*v38 + 8))(v38);
    }

    v39 = v1[40];
    if (v39)
    {
      (*(*v39 + 8))(v39);
    }

    v40 = v1[43];
    if (v40)
    {
      (*(*v40 + 8))(v40);
    }

    v41 = v1[47];
    if (v41)
    {
      (*(*v41 + 8))(v41);
    }

    result = v1[48];
    if (result)
    {
      v42 = *(*result + 8);

      return v42();
    }
  }

  return result;
}

void sub_10013450C(uint64_t a1, wireless_diagnostics::google::protobuf::MessageLite *a2)
{
  v3 = (*(*a2 + 72))(a2);
  sub_1000166F8(__p, v3);
  wireless_diagnostics::google::protobuf::MessageLite::SerializeToArray(a2, __p[0]);
  [qword_102666C00 sendRequestWithBytes:? size:?];
  ++qword_102666C08;
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

void sub_1001345B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100134638(_BYTE *a1, uint64_t a2)
{
  if (a2)
  {
    if (a2 <= 14)
    {
      v7 = sub_100134980(a1, &a1[a2]);
      v8 = v9 & 0xFFFFFFFFFFFFFFLL;
    }

    else
    {
      v4 = v2;
      type metadata accessor for __DataStorage();
      swift_allocObject();
      v5 = __DataStorage.init(bytes:length:)();
      v6 = v5;
      if (a2 >= 0x7FFFFFFF)
      {
        type metadata accessor for Data.RangeReference();
        v7 = swift_allocObject();
        *(v7 + 16) = 0;
        *(v7 + 24) = a2;
        v8 = v6 | 0x8000000000000000;
      }

      else
      {
        v7 = a2 << 32;
        v8 = v5 | 0x4000000000000000;
      }

      v2 = v4;
    }
  }

  else
  {
    v7 = 0;
    v8 = 0xC000000000000000;
  }

  if (*(v2 + OBJC_IVAR____TtC4Gnss13CLCoreGPSShim__device))
  {

    dispatch thunk of CoreGPSDevice.sendRequest(request:)();
    sub_100134768(v7, v8);
  }

  else
  {

    return sub_100134768(v7, v8);
  }
}

uint64_t sub_100134768(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

unint64_t sub_1001347BC()
{
  if ((atomic_load_explicit(&qword_102666B18, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_102666B18))
  {
    sub_1016AF8D8();
    __cxa_guard_release(&qword_102666B18);
  }

  v0 = mach_continuous_time();
  v1 = 8;
  if (!byte_102666B30)
  {
    v1 = 0;
  }

  return ((v0 >> v1) * qword_102666B38 / unk_102666B40) << v1;
}

uint64_t sub_100134860(uint64_t a1)
{
  sub_10013489C(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_10013489C(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      sub_1004906DC((v2 + 3));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

BOOL sub_1001348E0(unsigned int a1)
{
  result = 1;
  if (a1 > 0x32 || ((1 << a1) & 0x4000002000403) == 0)
  {
    return a1 == 75;
  }

  return result;
}

void sub_100134920(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = off_10246D5A8;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);

  operator delete();
}

uint64_t sub_100134980(_BYTE *__src, _BYTE *a2)
{
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v9 = v3;
  v8 = 0;
  v7 = 0;
  if (__src)
  {
    if (a2 != __src)
    {
      memcpy(&__dst, __src, v2);
      return __dst;
    }
  }

  return result;
}

uint64_t sub_100134A38(uint64_t result)
{
  if (*(result + 624) != 1)
  {
    return result;
  }

  v1 = result;
  v2 = sub_100135294(result + 128);
  v3 = v2;
  if (v2 != 2)
  {
    if (v2 != 1 || *(v1 + 88) != 1 || (CLMotionActivity::isTypePedestrian() & 1) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  if (CLMotionActivity::isTypeDriving())
  {
LABEL_8:
    *(v1 + 188) = 2;
  }

LABEL_9:
  v4 = sub_100134EAC(v1, *(v1 + 660), *(v1 + 664));
  if (*(v1 + 626) == 1)
  {
    *(v1 + 196) = 0x200000001;
  }

  if (*(v1 + 88) == 1 && CLMotionActivity::isTypePedestrian() && v4)
  {
    *(v1 + 188) = 2;
    *(v1 + 196) = 0;
    *(v1 + 200) = 0;
  }

  if (*(v1 + 321) == 1 && (*(v1 + 465) & 1) == 0 && (CLMotionActivity::isStatic((v1 + 184)) & 1) == 0)
  {
    if (CLMotionActivity::isTypeCycling() & 1) != 0 || (CLMotionActivity::isTypeSwimming())
    {
      v5 = *(v1 + 328);
      *(v1 + 184) = v5;
      v6 = v5;
    }

    else
    {
      v6 = *(v1 + 328);
    }

    if (v6 == 19150)
    {
      v7 = *(v1 + 332);
      *(v1 + 184) = 3;
      *(v1 + 188) = v7;
    }

    if (CLMotionActivity::isTypeWheelchairPush())
    {
      v8 = *(v1 + 332);
      *(v1 + 184) = 3;
      *(v1 + 188) = v8;
    }
  }

  v9 = sub_1001352B4(v1);
  if (qword_1025D4650 != -1)
  {
    sub_10199A148();
  }

  v10 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
  {
    v11 = *(v1 + 184);
    v12 = *(v1 + 188);
    v13 = *(v1 + 196);
    v14 = *(v1 + 200);
    v15 = *(v1 + 628);
    v16 = *(v1 + 321);
    v17 = *(v1 + 328);
    v18 = *(v1 + 1272);
    *buf = 67242752;
    *&buf[4] = v11;
    *&buf[8] = 1026;
    *&buf[10] = v12;
    *&buf[14] = 1026;
    LODWORD(v46) = v13;
    WORD2(v46) = 1026;
    *(&v46 + 6) = v14;
    WORD5(v46) = 1026;
    HIDWORD(v46) = v4;
    *v47 = 1026;
    *&v47[2] = v9;
    *&v47[6] = 1026;
    *&v47[8] = v3;
    *&v47[12] = 1026;
    *&v47[14] = v15;
    *&v47[18] = 1026;
    *&v47[20] = v16;
    *&v47[24] = 1026;
    *&v47[26] = v17;
    *&v47[30] = 1026;
    LODWORD(v48) = v18;
    _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEBUG, "#gwo,feeding,motionState,%{public}d,conf,%{public}d,mountState,%{public}d,mountStateConf,%{public}d,isRecentlyStepping,%{public}d,shouldBeInertialAiding,%{public}d,navMode,%{public}d,isAccelStuck,%{public}d,inFitnessSession,%{public}d,currentWorkoutActivity,%{public}d,shouldBeClamped,%{public}d", buf, 0x44u);
  }

  v19 = sub_10000A100(121, 2);
  if (v19)
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4650 != -1)
    {
      sub_10199A02C();
    }

    v28 = *(v1 + 184);
    v29 = *(v1 + 188);
    v30 = *(v1 + 196);
    v31 = *(v1 + 200);
    v32 = *(v1 + 628);
    v33 = *(v1 + 321);
    v34 = *(v1 + 328);
    v35 = *(v1 + 1272);
    LODWORD(v37) = 67242752;
    DWORD1(v37) = v28;
    WORD4(v37) = 1026;
    *(&v37 + 10) = v29;
    HIWORD(v37) = 1026;
    LODWORD(v38) = v30;
    WORD2(v38) = 1026;
    *(&v38 + 6) = v31;
    WORD5(v38) = 1026;
    HIDWORD(v38) = v4;
    *v39 = 1026;
    *&v39[2] = v9;
    *&v39[6] = 1026;
    *&v39[8] = v3;
    *&v39[12] = 1026;
    *&v39[14] = v32;
    *&v39[18] = 1026;
    *&v39[20] = v33;
    *&v39[24] = 1026;
    *&v39[26] = v34;
    *&v39[30] = 1026;
    LODWORD(v40) = v35;
    v36 = _os_log_send_and_compose_impl();
    v19 = sub_100152C7C("Generic", 1, 0, 2, "void CLGnssAssistanceMotion::updateContext()", "%s\n", v36);
    if (v36 != buf)
    {
      free(v36);
    }
  }

  CLMotionActivity::getInit(buf, v19);
  v20 = *(v1 + 296);
  v50 = *(v1 + 280);
  *v51 = v20;
  *&v51[16] = *(v1 + 312);
  v22 = *(v1 + 232);
  *v47 = *(v1 + 216);
  v21 = *v47;
  *&v47[16] = v22;
  v23 = *(v1 + 264);
  v48 = *(v1 + 248);
  v24 = v48;
  v49 = v23;
  v25 = *(v1 + 200);
  *buf = *(v1 + 184);
  v26 = *buf;
  v46 = v25;
  v51[24] = *(v1 + 321);
  v51[25] = v4;
  v51[26] = v9;
  v51[27] = *(v1 + 1272);
  *(v1 + 872) = v50;
  *(v1 + 888) = v20;
  *(v1 + 808) = v21;
  *(v1 + 824) = v22;
  *(v1 + 840) = v24;
  *(v1 + 856) = v23;
  *(v1 + 776) = v26;
  *(v1 + 792) = v25;
  *(v1 + 900) = *&v51[12];
  *(v1 + 720) = sub_1000081AC();
  v42 = v50;
  v43 = *v51;
  v44 = *&v51[16];
  *v39 = *v47;
  *&v39[16] = *&v47[16];
  v40 = v48;
  v41 = v49;
  v37 = *buf;
  v38 = v46;
  v27 = *(v1 + 32);
  if (!v27)
  {
    sub_1000CF05C();
  }

  return (*(*v27 + 48))(v27, &v37);
}

BOOL sub_100134EAC(void *a1, unsigned int a2, double a3)
{
  if (!a1[89])
  {
    return 0;
  }

  Current = CFAbsoluteTimeGetCurrent();
  v7 = fabs(a3);
  v8 = a1[88];
  v9 = v8 + a1[89];
  v10 = a1[85];
  v11 = &v10[v9 / 0x16];
  v12 = a1[86];
  if (v12 == v10)
  {
    v14 = 0;
    v16 = 0;
    v15 = (v10 + ((2 * ((v8 * 0x2E8BA2E8BA2E8BA3uLL) >> 64)) & 0x7FFFFFFFFFFFFFF8));
    v13 = v9 % 0x16;
  }

  else
  {
    v13 = v9 % 0x16;
    v14 = v10[v9 / 0x16] + 184 * (v9 % 0x16);
    v15 = &v10[v8 / 0x16];
    v16 = *v15 + 184 * (v8 % 0x16);
  }

  v18 = Current - v7;
  v19 = v15;
LABEL_7:
  v20 = v16 - 4048;
  while (1)
  {
    if (v12 == v10)
    {
      v21 = 0;
    }

    else
    {
      v21 = *v11 + 184 * v13;
    }

    if (v16 == v21)
    {
      v19 = &v10[v9 / 0x16];
      goto LABEL_17;
    }

    if (*(v16 + 8) >= v18)
    {
      break;
    }

    v16 += 184;
    v20 += 184;
    if (*v19 == v20)
    {
      v22 = v19[1];
      ++v19;
      v16 = v22;
      goto LABEL_7;
    }
  }

  v14 = v16;
LABEL_17:
  v23 = v12 - v10;
  if (v12 == v10)
  {
    v24 = 0;
  }

  else
  {
    v24 = *v11 + 184 * v13;
  }

  if (v14 != v24)
  {
    v25 = *(v10[(v9 - 1) / 0x16] + 46 * ((v9 - 1) % 0x16) + 6) - *(v14 + 24);
    if (v25 >= 0)
    {
      v26 = *(v10[(v9 - 1) / 0x16] + 46 * ((v9 - 1) % 0x16) + 6) - *(v14 + 24);
    }

    else
    {
      v26 = *(v14 + 24) - *(v10[(v9 - 1) / 0x16] + 46 * ((v9 - 1) % 0x16) + 6);
    }

    v17 = v26 > a2;
    if (v12 == v10)
    {
      v27 = 0;
    }

    else
    {
      v27 = *v15 + 184 * (v8 % 0x16);
    }

    sub_1009BA3B0(a1 + 84, v15, v27, v19, v14);
    goto LABEL_36;
  }

  a1[89] = 0;
  v28 = v23 >> 3;
  if ((v23 >> 3) >= 3)
  {
    do
    {
      operator delete(*v10);
      v10 = (a1[85] + 8);
      a1[85] = v10;
      v28 = (a1[86] - v10) >> 3;
    }

    while (v28 > 2);
  }

  if (v28 == 1)
  {
    v29 = 11;
  }

  else
  {
    if (v28 != 2)
    {
      v25 = 0;
      v17 = 0;
      goto LABEL_36;
    }

    v29 = 22;
  }

  v25 = 0;
  v17 = 0;
  a1[88] = v29;
LABEL_36:
  if (qword_1025D4650 != -1)
  {
    sub_10199A148();
  }

  v30 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
  {
    v31 = a1[89];
    *buf = 67109632;
    v35 = v17;
    v36 = 2048;
    v37 = v31;
    v38 = 1024;
    v39 = v25;
    _os_log_impl(dword_100000000, v30, OS_LOG_TYPE_DEBUG, "isStepping,%d,stepCountDequeSize,%zu,deltaCount,%d", buf, 0x18u);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4650 != -1)
    {
      sub_10199A02C();
    }

    v33 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "BOOL CLGnssAssistanceMotion::isStepping(uint32_t, CFTimeInterval)", "%s\n", v33);
    if (v33 != buf)
    {
      free(v33);
    }
  }

  return v17;
}

uint64_t sub_100135294(uint64_t a1)
{
  v1 = *(*a1 + 4);
  if (v1 == 2)
  {
    return 1;
  }

  else
  {
    return 2 * (v1 == 1);
  }
}

uint64_t sub_1001352B4(uint64_t a1)
{
  sub_10001CAF4(buf);
  LOBYTE(v27) = 0;
  v2 = sub_10001CB4C(*buf, "ForceEnableGnssInertialAiding", &v27);
  v3 = v2 & v27;
  if (v38)
  {
    sub_100008080(v38);
  }

  if ((v3 & 1) == 0)
  {
    if ((*(a1 + 1216) & 1) == 0)
    {
      v4 = 0;
      *(a1 + 1218) = 0;
      return v4 & 1;
    }

    if (*(a1 + 628) & 1) != 0 || (sub_10001CF3C())
    {
      v4 = 0;
      return v4 & 1;
    }

    if ((atomic_load_explicit(&qword_10265BD40, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_10265BD40))
    {
      byte_10265BD3A = sub_10006FE30();
      __cxa_guard_release(&qword_10265BD40);
    }

    if (*(a1 + 1218) == 1)
    {
      v6 = *(a1 + 196) != 1 && vabdd_f64(sub_1000081AC(), *(a1 + 616)) > 90.0;
      if (*(a1 + 88) == 1)
      {
        isTypePedestrian = CLMotionActivity::isTypePedestrian();
      }

      else
      {
        isTypePedestrian = 0;
      }

      v12 = *(a1 + 188);
      if (v12 == 2)
      {
        v13 = isTypePedestrian;
      }

      else
      {
        v13 = 0;
      }

      if ((*(a1 + 321) & 1) == 0 && (v13 & 1) == 0 && (!v6 || byte_10265BD3A == 1) && *(a1 + 1273) != 1)
      {
        goto LABEL_43;
      }

      if (qword_1025D4650 != -1)
      {
        sub_10199A02C();
      }

      v14 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
      {
        v15 = *(a1 + 321);
        v16 = *(a1 + 1273);
        *buf = 67110144;
        *&buf[4] = v15;
        LOWORD(v38) = 1024;
        *(&v38 + 2) = isTypePedestrian;
        HIWORD(v38) = 1024;
        v39 = v12 == 2;
        v40 = 1024;
        v41 = v6;
        v42 = 1024;
        v43 = v16;
        _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_DEFAULT, "stopINS,inFitnessSession,%d,isPedestrian,%d,isHighConf,%d,isDismounted,%d,fIsAirborne,%d", buf, 0x20u);
      }

      if (sub_10000A100(121, 2))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1025D4650 != -1)
        {
          sub_10199A02C();
        }

        v21 = *(a1 + 321);
        v22 = *(a1 + 1273);
        v27 = 67110144;
        v28 = v21;
        v29 = 1024;
        v30 = isTypePedestrian;
        v31 = 1024;
        v32 = v12 == 2;
        v33 = 1024;
        v34 = v6;
        v35 = 1024;
        v36 = v22;
        v23 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "BOOL CLGnssAssistanceMotion::shouldBeInertialAiding()", "%s\n", v23);
        if (v23 != buf)
        {
          free(v23);
        }
      }

      v17 = 0;
    }

    else
    {
      isTypeInVehicle = CLMotionActivity::isTypeInVehicle();
      isTypeMoving = CLMotionActivity::isTypeMoving();
      v9 = *(a1 + 196);
      if (*(a1 + 88) == 1)
      {
        v10 = CLMotionActivity::isTypePedestrian();
      }

      else
      {
        v10 = 0;
      }

      if (*(a1 + 321) & 1) != 0 || (isTypeInVehicle & 1) == 0 && (v10 & 1 | ((isTypeMoving & 1) == 0) || (*(a1 + 913)) || v9 != 1 || (*(a1 + 1273))
      {
        goto LABEL_43;
      }

      if (qword_1025D4650 != -1)
      {
        sub_10199A02C();
      }

      v18 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
      {
        v19 = *(a1 + 184);
        v20 = *(a1 + 913);
        *buf = 67110144;
        *&buf[4] = v19;
        LOWORD(v38) = 1024;
        *(&v38 + 2) = isTypeInVehicle;
        HIWORD(v38) = 1024;
        v39 = isTypeMoving;
        v40 = 1024;
        v41 = v10;
        v42 = 1024;
        v43 = v20;
        _os_log_impl(dword_100000000, v18, OS_LOG_TYPE_DEFAULT, "startINS,activity,%d,isInVehicle,%d,isMoving,%d,isPedestrian,%d,isRecentlyStepping,%d", buf, 0x20u);
      }

      if (sub_10000A100(121, 2))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1025D4650 != -1)
        {
          sub_10199A02C();
        }

        v24 = *(a1 + 184);
        v25 = *(a1 + 913);
        v27 = 67110144;
        v28 = v24;
        v29 = 1024;
        v30 = isTypeInVehicle;
        v31 = 1024;
        v32 = isTypeMoving;
        v33 = 1024;
        v34 = v10;
        v35 = 1024;
        v36 = v25;
        v26 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "BOOL CLGnssAssistanceMotion::shouldBeInertialAiding()", "%s\n", v26);
        if (v26 != buf)
        {
          free(v26);
        }
      }

      v17 = 1;
    }

    *(a1 + 1218) = v17;
LABEL_43:
    v4 = *(a1 + 1218);
    return v4 & 1;
  }

  v4 = 1;
  return v4 & 1;
}

void sub_10013582C(void *a1, uint64_t a2)
{
  if (*(a2 + 12) == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  *(*a1 + 352) = v4;
  v5 = a1[132];
  if (v5)
  {
    v6 = *(a2 + 112);
    v27 = *(a2 + 96);
    v28 = v6;
    v29 = *(a2 + 128);
    v7 = *(a2 + 48);
    *&v25.isStanding = *(a2 + 32);
    *&v25.isVehicleConnected = v7;
    v8 = *(a2 + 80);
    *&v25.vehicleType = *(a2 + 64);
    v26 = v8;
    v9 = *(a2 + 16);
    *&v25.type = *a2;
    *&v25.mountedConfidence = v9;
    sub_100135C58(v5, &v25.type);
  }

  if (qword_1025D4650 != -1)
  {
    sub_101940C48();
  }

  v10 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
  {
    *&v25.type = 68289282;
    LOWORD(v25.source) = 2082;
    *(&v25.source + 2) = "";
    HIWORD(v25.mountedConfidence) = 2082;
    *&v25.conservativeMountedState = "injectassistancemotion";
    _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:GnssEvent, event:%{public, location:escape_only}s}", &v25, 0x1Cu);
  }

  v11 = *a1;
  v12 = *(a2 + 48);
  *&v25.isStanding = *(a2 + 32);
  *&v25.isVehicleConnected = v12;
  v13 = *(a2 + 16);
  *&v25.type = *a2;
  *&v25.mountedConfidence = v13;
  v29 = *(a2 + 128);
  v14 = *(a2 + 112);
  v27 = *(a2 + 96);
  v28 = v14;
  v15 = *(a2 + 80);
  *&v25.vehicleType = *(a2 + 64);
  v26 = v15;
  (*(*v11 + 80))(v11, &v25);
  v16 = a1[138];
  if (v16)
  {
    v17 = *(a2 + 112);
    v27 = *(a2 + 96);
    v28 = v17;
    v29 = *(a2 + 128);
    v18 = *(a2 + 48);
    *&v25.isStanding = *(a2 + 32);
    *&v25.isVehicleConnected = v18;
    v19 = *(a2 + 80);
    *&v25.vehicleType = *(a2 + 64);
    v26 = v19;
    v20 = *(a2 + 16);
    *&v25.type = *a2;
    *&v25.mountedConfidence = v20;
    *v16 = CLMotionActivity::isMounted(&v25);
    if (*(a2 + 138) == 1)
    {
      if ((*(a1 + 1220) & 1) == 0)
      {
        sub_1001C891C(a1 + 100, sub_1002825FC, [a1[95] silo], a1, 100.0, 10.0);
        sub_10080073C(a1 + 102, sub_100281974, [a1[95] silo], a1, 100.0, 10.0);
        *(a1[138] + 56) = 0x3F847AE147AE147BLL;
        *(a1 + 1220) = 1;
        if (qword_1025D4650 != -1)
        {
          sub_101940C48();
        }

        v21 = qword_1025D4658;
        if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
        {
          LOWORD(v25.type) = 0;
          _os_log_impl(dword_100000000, v21, OS_LOG_TYPE_DEBUG, "GPSSENSOR,startIns", &v25, 2u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_101944F9C();
        }
      }
    }

    else if (*(a1 + 1220))
    {
      sub_100800B68((a1 + 100));
      sub_100800C1C((a1 + 102));
      *(a1 + 1220) = 0;
      if (qword_1025D4650 != -1)
      {
        sub_101940C48();
      }

      v22 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(v25.type) = 0;
        _os_log_impl(dword_100000000, v22, OS_LOG_TYPE_DEBUG, "GPSSENSOR,stopIns", &v25, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101944EC0();
      }
    }
  }

  if ((sub_10013733C() & 1) == 0)
  {
    if (qword_1025D4650 != -1)
    {
      sub_101940C48();
    }

    v23 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
    {
      *&v25.type = 68289538;
      LOWORD(v25.source) = 2082;
      *(&v25.source + 2) = "";
      HIWORD(v25.mountedConfidence) = 2082;
      *&v25.conservativeMountedState = "sendAllowGnssDwellDutyCycling";
      WORD2(v25.conservativeMountedProbability) = 1026;
      *(&v25.conservativeMountedProbability + 6) = 0;
      _os_log_impl(dword_100000000, v23, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:GnssEvent, event:%{public, location:escape_only}s, allow:%{public}hhd}", &v25, 0x22u);
    }

    (*(**a1 + 248))(*a1, 0);
  }

  v24 = a1[148];
  if (v24)
  {
    sub_1001375D4(v24, a2);
  }
}

void *sub_100135C58(void *result, int *a2)
{
  if (*(result + 114) == 1)
  {
    v2 = result;
    if (*(result + 112) == 1)
    {
      if (result[1])
      {
        if (qword_1025D4650 != -1)
        {
          sub_1002981A0();
        }

        v4 = qword_1025D4658;
        if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
        {
          v5 = *a2;
          v6 = a2[1];
          v7[0] = 67240448;
          v7[1] = v5;
          v8 = 1026;
          v9 = v6;
          _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "DEM,feeding motion,type,%{public}d,confidence,%{public}d", v7, 0xEu);
        }

        if (sub_10000A100(121, 2))
        {
          sub_101700054(a2);
        }

        return [v2[1] updateMotion:*a2 conf:a2[1]];
      }
    }
  }

  return result;
}

__n128 sub_100135D74(uint64_t a1, _OWORD *a2)
{
  v2 = a2[7];
  v7[6] = a2[6];
  v7[7] = v2;
  v7[8] = a2[8];
  v3 = a2[3];
  v7[2] = a2[2];
  v7[3] = v3;
  v4 = a2[5];
  v7[4] = a2[4];
  v7[5] = v4;
  v5 = a2[1];
  v7[0] = *a2;
  v7[1] = v5;
  sub_10013582C(*(a1 + 8), v7);
  return result;
}

uint64_t sub_100135DC4(uint64_t result, uint64_t a2)
{
  if (*(result + 1722))
  {
    return result;
  }

  v3 = result;
  v4 = sub_1001347BC();
  v48 = 0;
  v5 = *(a2 + 40);
  v7 = (v5 < 0 || ((v5 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 > 0x3FE) && (v5 - 1) > 0xFFFFFFFFFFFFELL;
  if (v7 || (sub_100131D4C(v3, &v48, 1, *(a2 + 40)), (v8 & 1) == 0))
  {
    if (qword_1025D4650 != -1)
    {
      sub_1002981B4();
    }

    v9 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_INFO))
    {
      v10 = *(a2 + 40);
      *buf = 134349056;
      *v58 = v10;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_INFO, "#gpsd,injectAssistanceMotion,invalid timestamp,%{public}.1f", buf, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101776C30();
    }

    v48 = v4;
  }

  if (qword_1025D4650 != -1)
  {
    sub_100154094();
  }

  v11 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
  {
    v12 = *a2;
    *buf = 67109376;
    *v58 = v12;
    *&v58[4] = 2048;
    *&v58[6] = v4 - v48;
    _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEBUG, "#gpsd,feeding motionState,%d,ageNs,%llu", buf, 0x12u);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4650 != -1)
    {
      sub_100154094();
    }

    v39 = *a2;
    v51[0] = 67109376;
    v51[1] = v39;
    v52 = 2048;
    v53 = v4 - v48;
    v40 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "virtual void CLGnssDaemonDevice::injectAssistanceMotion(CLMotionActivity)", "%s\n", v40);
    if (v40 != buf)
    {
      free(v40);
    }
  }

  sub_1001324C4(v51);
  if (!sub_100132484(0x12u))
  {
    __assert_rtn("set_type", "GpsdProtocol.pb.h", 5801, "::proto::gpsd::Request_Type_IsValid(value)");
  }

  v54 = 18;
  v56 |= 0x404u;
  v13 = v55;
  if (!v55)
  {
    operator new();
  }

  v14 = v48;
  *(v55 + 32) |= 1u;
  *(v13 + 8) = v14;
  v15 = *a2;
  if (*a2 > 11804)
  {
    if (v15 <= 15651)
    {
      if (v15 > 15329)
      {
        if ((v15 - 15560) <= 0x3C && ((1 << (v15 + 56)) & 0x1004000100000001) != 0 || (v15 - 15330) <= 0x1E && ((1 << (v15 + 30)) & 0x40100001) != 0)
        {
          goto LABEL_106;
        }

        v17 = 15460;
      }

      else if (v15 <= 15099)
      {
        if (v15 > 15029)
        {
          if (v15 == 15030)
          {
            goto LABEL_106;
          }

          v17 = 15055;
        }

        else
        {
          if (v15 == 11805)
          {
            goto LABEL_106;
          }

          v17 = 12150;
        }
      }

      else
      {
        if ((v15 - 15100) <= 0x32 && ((1 << (v15 + 4)) & 0x4000000000401) != 0 || v15 == 15230)
        {
          goto LABEL_106;
        }

        v17 = 15250;
      }

      goto LABEL_105;
    }

    if (v15 <= 18239)
    {
      if (v15 <= 15732)
      {
        if ((v15 - 15652) > 0x3B || ((1 << (v15 - 36)) & 0x800000000840101) == 0)
        {
          goto LABEL_151;
        }

LABEL_106:
        v3[557] = 0;
        if (sub_1000183C8(0))
        {
          v24 = 0;
          goto LABEL_108;
        }

        goto LABEL_175;
      }

      if (v15 <= 18049)
      {
        if (v15 == 15733)
        {
          goto LABEL_106;
        }

        v17 = 17150;
      }

      else
      {
        if (v15 == 18050 || v15 == 18100)
        {
          goto LABEL_106;
        }

        v17 = 18200;
      }

      goto LABEL_105;
    }

    if (v15 > 90120)
    {
      if (v15 <= 515620)
      {
        if ((v15 - 90121) < 2)
        {
          goto LABEL_106;
        }

        if (v15 != 90603)
        {
          goto LABEL_151;
        }

        v16 = 7;
        goto LABEL_161;
      }

      if (v15 == 515621 || v15 == 515652)
      {
        goto LABEL_106;
      }

      v17 = 519150;
LABEL_105:
      if (v15 == v17)
      {
        goto LABEL_106;
      }

LABEL_151:
      if (qword_1025D4650 != -1)
      {
        sub_100154094();
      }

      v37 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
      {
        v38 = *a2;
        *buf = 67240192;
        *v58 = v38;
        _os_log_impl(dword_100000000, v37, OS_LOG_TYPE_DEFAULT, "#gpsd,Unhandled activity type case,%{public}d", buf, 8u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1017700B0(buf);
        v46 = *a2;
        v49 = 67240192;
        v50 = v46;
        v47 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "virtual void CLGnssDaemonDevice::injectAssistanceMotion(CLMotionActivity)", "%s\n", v47);
        if (v47 != buf)
        {
          free(v47);
        }
      }

      v15 = 0;
      v3[557] = 0;
      goto LABEL_162;
    }

    if (v15 > 19089)
    {
      if (v15 == 19090)
      {
        goto LABEL_106;
      }

      v17 = 19150;
      goto LABEL_105;
    }

    if (v15 != 18240)
    {
      v17 = 19030;
      goto LABEL_105;
    }

    v21 = *(a2 + 4) == 2;
    v22 = 6;
    goto LABEL_158;
  }

  if (v15 > 2009)
  {
    if (((v15 - 2010) > 0x3D || ((1 << (v15 + 38)) & 0x2488004000005401) == 0) && ((v15 - 2101) > 0x31 || ((1 << (v15 - 53)) & 0x2000000000011) == 0) && (v15 - 3015) >= 2)
    {
      goto LABEL_151;
    }

    goto LABEL_106;
  }

  if (v15 > 9)
  {
    v18 = v15 - 41;
    if ((v15 - 41) > 0x3B)
    {
      goto LABEL_57;
    }

    if (((1 << v18) & 0x800000003C00000) != 0)
    {
      goto LABEL_106;
    }

    if (((1 << v18) & 0x300001) != 0)
    {
LABEL_72:
      v3[557] = 2;
      v20 = sub_1000183C8(3u);
      goto LABEL_97;
    }

    if (((1 << v18) & 0x8800) == 0)
    {
LABEL_57:
      if (v15 == 10)
      {
        if (*(a2 + 4) >= 1)
        {
          v3[557] = 4;
        }

        v15 = 1;
        goto LABEL_162;
      }

      if (v15 != 11)
      {
        goto LABEL_151;
      }

      v19 = *(a2 + 4);
      if (v19 >= 1)
      {
        v3[557] = 4;
      }

      goto LABEL_148;
    }

LABEL_93:
    if (*(a2 + 4) == 2)
    {
      v23 = 4;
    }

    else
    {
      v23 = 2;
    }

    v3[557] = v23;
    v20 = sub_1000183C8(3u);
LABEL_97:
    if (v20)
    {
      v24 = 3;
LABEL_108:
      *(v13 + 32) |= 4u;
      *(v13 + 20) = v24;
      goto LABEL_109;
    }

LABEL_175:
    v41 = "::proto::gnss::MovingState_IsValid(value)";
    v42 = 10115;
    v43 = "set_moving_state";
LABEL_176:
    __assert_rtn(v43, "GpsdProtocol.pb.h", v42, v41);
  }

  if (v15 > 4)
  {
    if (v15 > 6)
    {
      if (v15 == 8)
      {
        if ((*(a2 + 4) - 1) < 2)
        {
          v16 = 1;
        }

        else
        {
          v16 = 2;
        }

        goto LABEL_161;
      }

      goto LABEL_72;
    }

    if (v15 != 5)
    {
      v21 = *(a2 + 4) == 2;
      v22 = 5;
LABEL_158:
      if (v21)
      {
        v16 = v22;
      }

      else
      {
        v16 = 2;
      }

LABEL_161:
      v3[557] = v16;
      v15 = 3;
      goto LABEL_162;
    }

    goto LABEL_93;
  }

  if (v15 > 1)
  {
    if (v15 != 2)
    {
      if (v15 != 3)
      {
        if (*(a2 + 4) == 2)
        {
          v16 = 3;
        }

        else
        {
          v16 = 2;
        }

        goto LABEL_161;
      }

      goto LABEL_72;
    }

    v19 = *(a2 + 4);
LABEL_148:
    if (v19 == 2)
    {
      v15 = 1;
    }

    else
    {
      v15 = 2;
    }

    goto LABEL_162;
  }

  if (!v15)
  {
    goto LABEL_106;
  }

  if (v15 != 1)
  {
    goto LABEL_151;
  }

LABEL_162:
  sub_100131F04(v13, v15);
LABEL_109:
  v25 = sub_100131F7C(v3[557]);
  if (!sub_100134974(v25))
  {
    v41 = "::proto::gnss::MotionActivityContext_IsValid(value)";
    v42 = 10092;
    v43 = "set_context";
    goto LABEL_176;
  }

  *(v13 + 32) |= 2u;
  *(v13 + 16) = v25;
  v26 = *(a2 + 4);
  if (v26 == 2)
  {
    v27 = sub_1001348E0(0x4Bu);
    if (v27)
    {
      v28 = 75;
      goto LABEL_126;
    }

    goto LABEL_172;
  }

  if (v26 == 1)
  {
    v27 = sub_1001348E0(0x32u);
    if (v27)
    {
      v28 = 50;
      goto LABEL_126;
    }

    goto LABEL_172;
  }

  if (v26)
  {
    if (qword_1025D4650 != -1)
    {
      sub_100154094();
    }

    v29 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
    {
      v30 = *(a2 + 4);
      *buf = 67240192;
      *v58 = v30;
      _os_log_impl(dword_100000000, v29, OS_LOG_TYPE_DEFAULT, "#gpsd,Unhandled activity confidence case,%{public}d", buf, 8u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1017700B0(buf);
      v44 = *(a2 + 4);
      v49 = 67240192;
      v50 = v44;
      v45 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "virtual void CLGnssDaemonDevice::injectAssistanceMotion(CLMotionActivity)", "%s\n", v45);
      if (v45 != buf)
      {
        free(v45);
      }
    }

    v27 = sub_1001348E0(1u);
    if (v27)
    {
      v28 = 1;
      goto LABEL_126;
    }

    goto LABEL_172;
  }

  v27 = sub_1001348E0(0x19u);
  if (!v27)
  {
LABEL_172:
    v41 = "::proto::gnss::Reliability_IsValid(value)";
    v42 = 10138;
    v43 = "set_motion_reliability";
    goto LABEL_176;
  }

  v28 = 25;
LABEL_126:
  *(v13 + 32) |= 8u;
  *(v13 + 24) = v28;
  v3[86] = sub_100136AC8(v27, *(v13 + 16));
  v31 = *(v13 + 20) - 1;
  if (v31 > 2)
  {
    v32 = 0;
  }

  else
  {
    v32 = dword_101DB9D98[v31];
  }

  v3[87] = v32;
  sub_10013256C(v3, v51);
  sub_100133DCC(v51);
  if (qword_1025D4650 != -1)
  {
    sub_100154094();
  }

  v33 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
  {
    v34 = *(a2 + 12);
    *buf = 67109120;
    *v58 = v34;
    _os_log_impl(dword_100000000, v33, OS_LOG_TYPE_DEBUG, "#gpsd,feeding mountState,%d", buf, 8u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101776D24(a2);
  }

  sub_1001324C4(buf);
  if (!sub_100132484(0x13u))
  {
    __assert_rtn("set_type", "GpsdProtocol.pb.h", 5801, "::proto::gpsd::Request_Type_IsValid(value)");
  }

  v59 = 19;
  v61 |= 0x804u;
  v35 = v60;
  if (!v60)
  {
    operator new();
  }

  *(v60 + 24) |= 1u;
  *(v35 + 8) = v14;
  if (*(a2 + 12) == 1)
  {
    v36 = 2;
  }

  else
  {
    v36 = 3;
  }

  if (!sub_1007206F0(v36))
  {
    __assert_rtn("set_mount_state", "GpsdProtocol.pb.h", 10187, "::proto::gnss::DeviceMountState_IsValid(value)");
  }

  *(v35 + 24) |= 2u;
  *(v35 + 16) = v36;
  sub_10013256C(v3, buf);
  return sub_100133DCC(buf);
}

void sub_100136A50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_100133DCC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100136AC8(uint64_t a1, int a2)
{
  if ((a2 - 1) > 8)
  {
    return 0;
  }

  else
  {
    return dword_101DB9D74[a2 - 1];
  }
}

uint64_t sub_100136AEC(uint64_t a1, unint64_t a2)
{
  LOBYTE(v3) = *(a1 + 32);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_28;
  }

  if (*(a1 + 32))
  {
    v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(a1 + 8), a2) + 1;
    v3 = *(a1 + 32);
    if ((v3 & 2) == 0)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v4 = 0;
    if ((*(a1 + 32) & 2) == 0)
    {
      goto LABEL_13;
    }
  }

  v5 = *(a1 + 16);
  if ((v5 & 0x80000000) != 0)
  {
    v6 = 11;
  }

  else if (v5 >= 0x80)
  {
    v6 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5, a2) + 1;
    v3 = *(a1 + 32);
  }

  else
  {
    v6 = 2;
  }

  v4 = (v6 + v4);
LABEL_13:
  if ((v3 & 4) == 0)
  {
    if ((v3 & 8) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_22;
  }

  v7 = *(a1 + 20);
  if ((v7 & 0x80000000) != 0)
  {
    v8 = 11;
  }

  else if (v7 >= 0x80)
  {
    v8 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v7, a2) + 1;
    v3 = *(a1 + 32);
  }

  else
  {
    v8 = 2;
  }

  v4 = (v8 + v4);
  if ((v3 & 8) != 0)
  {
LABEL_22:
    v9 = *(a1 + 24);
    if ((v9 & 0x80000000) != 0)
    {
      v10 = 11;
    }

    else if (v9 >= 0x80)
    {
      v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9, a2) + 1;
    }

    else
    {
      v10 = 2;
    }

    v4 = (v10 + v4);
  }

LABEL_28:
  *(a1 + 28) = v4;
  return v4;
}

uint64_t sub_100136BE4(uint64_t result, unint64_t a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v4 = a2;
  v5 = result;
  v6 = *(result + 32);
  if (v6)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(result + 8), a2, a4);
    v6 = v5[8];
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(3, v5[5], v4, a4);
      if ((v5[8] & 8) == 0)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(2, v5[4], v4, a4);
  v6 = v5[8];
  if ((v6 & 4) != 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  if ((v6 & 8) == 0)
  {
    return result;
  }

LABEL_9:
  v7 = v5[6];

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(4, v7, v4, a4);
}

uint64_t sub_100136C8C(uint64_t a1, int a2, int a3)
{
  v6 = a1 + 104;
  (*(*(a1 + 104) + 16))(a1 + 104);
  *(a1 + 400) = CFAbsoluteTimeGetCurrent();
  *(a1 + 408) = a2;
  *(a1 + 412) = a3;
  v7 = 1;
  if (a2 > 11804)
  {
    if (a2 <= 15651)
    {
      if (a2 > 15329)
      {
        if ((a2 - 15560) <= 0x3C && ((1 << (a2 + 56)) & 0x1004000100000001) != 0 || (a2 - 15330) <= 0x1E && ((1 << (a2 + 30)) & 0x40100001) != 0)
        {
          goto LABEL_61;
        }

        v10 = 15460;
        goto LABEL_51;
      }

      if (a2 > 15054)
      {
        if ((a2 - 15100) <= 0x32 && ((1 << (a2 + 4)) & 0x4000000000401) != 0 || (a2 - 15230) <= 0x19 && ((1 << (a2 - 126)) & 0x2100001) != 0)
        {
          goto LABEL_61;
        }

        v10 = 15055;
        goto LABEL_51;
      }

      if (a2 != 11805)
      {
        if (a2 != 12150)
        {
          v10 = 15030;
          goto LABEL_51;
        }

        goto LABEL_61;
      }
    }

    else
    {
      if (a2 <= 18239)
      {
        if (a2 <= 15732)
        {
          if ((a2 - 15652) > 0x3B)
          {
            return (*(*v6 + 24))(v6, v7);
          }

          v8 = 1 << (a2 - 36);
          v9 = 0x800000000840101;
          goto LABEL_60;
        }

        if (a2 > 18049)
        {
          if (a2 == 18050 || a2 == 18100)
          {
            goto LABEL_61;
          }

          v10 = 18200;
LABEL_51:
          if (a2 != v10)
          {
            return (*(*v6 + 24))(v6, v7);
          }

          goto LABEL_61;
        }

        if (a2 != 15733)
        {
          v10 = 17150;
          goto LABEL_51;
        }

        goto LABEL_61;
      }

      if (a2 > 90120)
      {
        if (a2 > 515620)
        {
          if (a2 == 515621 || a2 == 515652)
          {
            goto LABEL_61;
          }

          v10 = 519150;
          goto LABEL_51;
        }

        if ((a2 - 90121) < 2)
        {
LABEL_61:
          LOBYTE(v7) = 0;
          goto LABEL_62;
        }

        v12 = 90603;
LABEL_55:
        if (a2 != v12)
        {
          return (*(*v6 + 24))(v6, v7);
        }

        goto LABEL_62;
      }

      if (a2 > 19089)
      {
        if (a2 == 19090)
        {
          goto LABEL_61;
        }

        v12 = 19150;
        goto LABEL_55;
      }

      if (a2 != 18240)
      {
        v10 = 19030;
        goto LABEL_51;
      }
    }

LABEL_62:
    sub_10013707C(a1, v7);
    v11 = 0;
    goto LABEL_63;
  }

  if (a2 > 2009)
  {
    if ((a2 - 2010) <= 0x3D && ((1 << (a2 + 38)) & 0x2488004000005401) != 0 || (a2 - 2101) <= 0x31 && ((1 << (a2 - 53)) & 0x2000000000011) != 0 || (a2 - 3015) < 2)
    {
      goto LABEL_61;
    }

    return (*(*v6 + 24))(v6, v7);
  }

  if (a2 <= 0x38)
  {
    if (((1 << a2) & 0x2000000029FLL) != 0)
    {
      goto LABEL_61;
    }

    if (((1 << a2) & 0x110000000000C60) != 0)
    {
      v11 = 1;
      sub_10013707C(a1, 1);
LABEL_63:
      sub_1001370F8(a1, v11);
      return (*(*v6 + 24))(v6, v7);
    }

    if (a2 == 8)
    {
      goto LABEL_62;
    }
  }

  if ((a2 - 61) > 0x27)
  {
    return (*(*v6 + 24))(v6, v7);
  }

  v8 = 1 << (a2 - 61);
  v9 = 0x800000103FLL;
LABEL_60:
  if ((v8 & v9) != 0)
  {
    goto LABEL_61;
  }

  return (*(*v6 + 24))(v6, v7);
}

void sub_100137068(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1017EC98C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10013707C(uint64_t a1, char a2)
{
  v3 = (a1 + 104);
  (*(*(a1 + 104) + 16))(a1 + 104);
  v3[473] = a2;
  return (*(*v3 + 24))(v3);
}

uint64_t sub_1001370F8(uint64_t a1, char a2)
{
  v3 = (a1 + 104);
  (*(*(a1 + 104) + 16))(a1 + 104);
  v3[472] = a2;
  return (*(*v3 + 24))(v3);
}

void sub_100137174(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = off_1024B8F88;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);

  operator delete();
}

uint64_t sub_1001371C8(uint64_t result)
{
  *result = off_1024B9000;
  *(result + 8) = 0;
  *(result + 16) = 4;
  *(result + 24) = 0;
  return result;
}

uint64_t sub_1001371F4(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 24))
  {
    if (*(a1 + 24))
    {
      v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(a1 + 8), a2) + 1;
      if ((*(a1 + 24) & 2) == 0)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v3 = 0;
      if ((*(a1 + 24) & 2) == 0)
      {
        goto LABEL_13;
      }
    }

    v4 = *(a1 + 16);
    if ((v4 & 0x80000000) != 0)
    {
      v5 = 11;
    }

    else if (v4 >= 0x80)
    {
      v5 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v4, a2) + 1;
    }

    else
    {
      v5 = 2;
    }

    v3 = (v5 + v3);
  }

  else
  {
    v3 = 0;
  }

LABEL_13:
  *(a1 + 20) = v3;
  return v3;
}

uint64_t sub_10013727C(uint64_t result, unint64_t a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v4 = a2;
  v5 = result;
  v6 = *(result + 24);
  if (v6)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(result + 8), a2, a4);
    v6 = *(v5 + 24);
  }

  if ((v6 & 2) != 0)
  {
    v7 = *(v5 + 16);

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(2, v7, v4, a4);
  }

  return result;
}

void sub_1001372E8(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = off_1024B9000;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);

  operator delete();
}

uint64_t sub_10013733C()
{
  result = sub_100718F78();
  if (result)
  {
    if (qword_102659170 != -1)
    {
      sub_10191C0D0();
    }

    return byte_102659168;
  }

  return result;
}

uint64_t sub_100137378(uint64_t a1, int a2)
{
  if (qword_1025D4650 != -1)
  {
    sub_1002981B4();
  }

  v4 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
  {
    v7[0] = 67109120;
    v7[1] = a2;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "#gpsd,#rfduty,setting duty cycle enable to %d", v7, 8u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101775DB0(a2);
  }

  sub_1001324C4(v7);
  if (!sub_100132484(0x1Au))
  {
    __assert_rtn("set_type", "GpsdProtocol.pb.h", 5801, "::proto::gpsd::Request_Type_IsValid(value)");
  }

  v7[5] = 26;
  v9 |= 0x800004u;
  v5 = v8;
  if (!v8)
  {
    operator new();
  }

  *(v8 + 16) |= 1u;
  *(v5 + 8) = a2;
  sub_10013256C(a1, v7);
  return sub_100133DCC(v7);
}

uint64_t sub_10013753C(uint64_t result)
{
  *result = off_1024B93C0;
  *(result + 12) = 0;
  *(result + 8) = 0;
  return result;
}

uint64_t sub_100137564(uint64_t result, BOOL a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  if (*(result + 16))
  {
    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(1, *(result + 8), a2, a4);
  }

  return result;
}

void sub_100137580(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = off_1024B93C0;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);

  operator delete();
}

void sub_1001375D4(uint64_t a1, int *a2)
{
  v4 = *(a1 + 55);
  isTypeInVehicle = CLMotionActivity::isTypeInVehicle();
  *(a1 + 55) = isTypeInVehicle;
  if (v4 != isTypeInVehicle)
  {
    if (qword_1025D4650 != -1)
    {
      sub_1003115AC();
    }

    v6 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
    {
      v7 = *a2;
      v8[0] = 67174657;
      v8[1] = v7;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "L5Context,Motion,%{private}d", v8, 8u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101A652E8(a2);
    }

    sub_10017DC7C(a1);
  }
}

void sub_10013783C(uint64_t a1)
{
  *buf = 0;
  if (sub_10000608C(a1, buf, 1))
  {
    if (*(a1 + 3264) >= 0.0 && *(a1 + 3288) >= 0.0)
    {
      v2 = sub_1000081AC();
      v3 = v2 - *(a1 + 3264);
      if (v3 >= 3.0)
      {
        sub_100021AFC(v13);
        Current = CFAbsoluteTimeGetCurrent();
        v16 = 1;
        v17 = Current;
        v18 = sub_1000137E0();
        v19 = v2;
        v4 = v2 - *(a1 + 3288);
        if (v4 <= 15.0)
        {
          v14 = *(a1 + 3272);
          *(a1 + 3288) = v2;
        }

        if (qword_1025D4650 != -1)
        {
          sub_101A773B8();
        }

        v5 = qword_1025D4658;
        if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
        {
          v6 = *(a1 + 3264);
          v7 = *(a1 + 3288);
          v8 = *(a1 + 3272);
          *buf = 134350592;
          v41 = Current;
          v42 = 2050;
          v43 = v2;
          v44 = 2050;
          v45 = v6;
          v46 = 2050;
          v47 = v7;
          v48 = 2050;
          v49 = v3;
          v50 = 2050;
          v51 = v8;
          v52 = 2050;
          v53 = v4;
          _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEFAULT, "DeadReckoning,%{public}.1lf,Notification sent,currentTime,%{public}.1lf,fLastPositionTimeStamp,%{public}.1lf,fLastGoodSpeedTime,%{public}.1lf,locTimeDiff,%{public}.1lf,fLastGoodSpeed,%{public}.1lf,velTimeDiff,%{public}.1lf", buf, 0x48u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_101A77C90(buf);
          v9 = *(a1 + 3264);
          v10 = *(a1 + 3288);
          v11 = *(a1 + 3272);
          v26 = 134350592;
          v27 = Current;
          v28 = 2050;
          v29 = v2;
          v30 = 2050;
          v31 = v9;
          v32 = 2050;
          v33 = v10;
          v34 = 2050;
          v35 = v3;
          v36 = 2050;
          v37 = v11;
          v38 = 2050;
          v39 = v4;
          v12 = _os_log_send_and_compose_impl();
          sub_100152C7C("Generic", 1, 0, 2, "void CLGnssProvider::onGNSSOutage()", "%s\n", v12);
          if (v12 != buf)
          {
            free(v12);
          }
        }

        *buf = 26;
        (*(*a1 + 152))(a1, buf, v13, 0, 0xFFFFFFFFLL, 0);

        if (v24)
        {
          sub_100008080(v24);
        }

        if (v23 < 0)
        {
          operator delete(__p);
        }

        if (v21)
        {
          sub_100008080(v21);
        }

        if (v20)
        {
          sub_100008080(v20);
        }
      }
    }
  }
}

void sub_100137B60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_100311054(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100137BA0(uint64_t a1)
{
  if ((*(*(a1 + 32) + 16))())
  {
    (*(a1 + 40))(*(a1 + 48), *(a1 + 64), *(a1 + 56));
  }

  result = *(a1 + 48);
  if (result)
  {

    operator delete[]();
  }

  return result;
}

void sub_100137C30(uint64_t a1, unsigned int a2, id *a3)
{
  CLProfilingIdentify();
  [objc_msgSend(*a3 "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_10199A360();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v9 = 1;
    v6 = _os_activity_create(dword_100000000, "CL: CLGnssAssistanceMotion::onAccel", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v6, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_10199A374();
    }

    v7 = qword_1025D47F8;
    if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68289538;
      v11 = 0;
      v12 = 2082;
      v13 = "";
      v14 = 2082;
      v15 = "activity";
      v16 = 2050;
      v17 = a3;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLGnssAssistanceMotion::onAccel, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v9 = 0;
  }

  sub_100137DFC(a3, a1, a2);
  if (v9 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

void sub_100137DFC(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (a2)
  {
    if (a3 - 31 >= 0xFFFFFFE2)
    {
      v5 = a3;
      v6 = (a2 + 16);
      v7 = a3;
      do
      {
        sub_1000423D4(a1 + 1000, v6 - 2);
        sub_1000423D4(a1 + 1072, v6 - 1);
        sub_1000423D4(a1 + 1144, v6);
        v6 += 6;
        --v7;
      }

      while (v7);
      if (*(a1 + 1064) >= *(a1 + 1008) && *(a1 + 1136) >= *(a1 + 1080) && *(a1 + 1208) >= *(a1 + 1152))
      {
        v8 = fabsf(sub_100138268(a1 + 1000));
        v9 = fabsf(sub_100138268(a1 + 1072));
        v10 = fabsf(sub_100138268(a1 + 1144));
        if (v8 < 1.0e-12 || v9 < 1.0e-12 || v10 < 1.0e-12)
        {
          *(a1 + 628) = 1;
          if (qword_1025D4650 != -1)
          {
            sub_10199A148();
          }

          v11 = qword_1025D4658;
          if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 134218496;
            v21 = v8;
            v22 = 2048;
            v23 = v9;
            v24 = 2048;
            v25 = v10;
            _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEFAULT, "#Warning IsAccelStuck,1,vx,%e,vy,%e,vz,%e", buf, 0x20u);
          }

          if (sub_10000A100(121, 2))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1025D4650 != -1)
            {
              sub_10199A02C();
            }

            v19 = _os_log_send_and_compose_impl();
            sub_100152C7C("Generic", 1, 0, 2, "void CLGnssAssistanceMotion::onAccel(const CLAccelerometer::Sample *, unsigned int)", "%s\n", v19);
            if (v19 != buf)
            {
              free(v19);
            }
          }

          v12 = (a2 + 16);
          do
          {
            if (qword_1025D4650 != -1)
            {
              sub_10199A02C();
            }

            v13 = qword_1025D4658;
            if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
            {
              v14 = *(v12 - 2);
              v15 = *(v12 - 2);
              v16 = *(v12 - 1);
              v17 = *v12;
              *buf = 134218752;
              v21 = v14;
              v22 = 2048;
              v23 = v15;
              v24 = 2048;
              v25 = v16;
              v26 = 2048;
              v27 = v17;
              _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_DEBUG, "IsAccelStuck,1,t,%.4lf,ax,%.9f,ay,%.9f,az,%.9f", buf, 0x2Au);
            }

            if (sub_10000A100(121, 2))
            {
              bzero(buf, 0x65CuLL);
              if (qword_1025D4650 != -1)
              {
                sub_10199A02C();
              }

              v18 = _os_log_send_and_compose_impl();
              sub_100152C7C("Generic", 1, 0, 2, "void CLGnssAssistanceMotion::onAccel(const CLAccelerometer::Sample *, unsigned int)", "%s\n", v18);
              if (v18 != buf)
              {
                free(v18);
              }
            }

            v12 += 6;
            --v5;
          }

          while (v5);
          sub_1009B91A8(a1);
        }

        else
        {
          *(a1 + 628) = 0;
        }
      }
    }
  }
}

float sub_100138268(uint64_t a1)
{
  v1 = *(a1 + 64);
  result = 0.0;
  if (v1 >= 2)
  {
    v3 = *(a1 + 56);
    v4 = 0.0;
    v5 = *(a1 + 64);
    v6 = 0.0;
    do
    {
      v7 = *(*(*(a1 + 32) + ((v3 >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * (v3 & 0x3FF)) - (*(a1 + 16) / v1);
      v6 = v6 + (v7 * v7);
      v4 = v4 + v7;
      ++v3;
      --v5;
    }

    while (v5);
    return (v6 - ((v4 * v4) / v1)) / (v1 - 1);
  }

  return result;
}

void sub_1001382E0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  sub_100138344(a2, v3);
  (*(v2 + 16))(v2, v3);
  qmi::MessageBase::~MessageBase(v3);
}

void sub_100138330(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  qmi::MessageBase::~MessageBase(va);
  _Unwind_Resume(a1);
}

void sub_100138344(uint64_t a1@<X0>, qmi::MessageBase *a2@<X8>)
{
  if (*(a1 + 40) != 1 || *(a1 + 44) == 3)
  {
    QMIServiceMsg::serialize(&__p, a1);
    sub_1001383F8(a2, __p, v5 - __p);
    if (__p)
    {
      v5 = __p;
      operator delete(__p);
    }
  }

  else
  {
    QMIServiceMsg::getNewError(a1);

    sub_101602EF8(a2);
  }
}

void sub_1001383DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

qmi::MessageBase *sub_1001383F8(qmi::MessageBase *a1, const void *a2, unint64_t a3)
{
  v4 = qmi::MessageBase::MessageBase(a1, a2, a3);
  qmi::MessageBase::validateMsgId(v4, 0xD0u);
  return a1;
}

void sub_10013843C(uint64_t a1, qmi::MessageBase *a2)
{
  v14[0] = 0;
  sub_1001385C0(a2, 16, v14);
  v12[0] = 0;
  sub_1001385C0(a2, 17, v12);
  v10[0] = 0;
  sub_1001385C0(a2, 18, v10);
  v8[0] = 0;
  sub_1001385C0(a2, 19, v8);
  if (qword_1025D4650 != -1)
  {
    sub_101607500();
  }

  v3 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
  {
    if (v14[0])
    {
      v4 = v15;
    }

    else
    {
      v4 = -1;
    }

    if (v12[0])
    {
      v5 = v13;
    }

    else
    {
      v5 = -1;
    }

    if (v10[0])
    {
      v6 = v11;
    }

    else
    {
      v6 = -1;
    }

    if (v8[0])
    {
      v7 = v9;
    }

    else
    {
      v7 = -1;
    }

    *buf = 68290050;
    v17 = 0;
    v18 = 2082;
    v19 = "";
    v20 = 1026;
    v21 = v4;
    v22 = 1026;
    v23 = v5;
    v24 = 1026;
    v25 = v6;
    v26 = 1026;
    v27 = v7;
    _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#wwanAntTuneL5Blanking,report, L5BestDurationMsec:%{public}d, L5OtherDurationMsec:%{public}d, L5WorstDurationMsec:%{public}d, wwanAntTuneL5BlankingDurationMsec:%{public}d}", buf, 0x2Au);
  }
}

int *sub_1001385C0(qmi::MessageBase *a1, uint64_t a2, uint64_t a3)
{
  result = qmi::MessageBase::findTlvValue(a1);
  if (!result)
  {
    return result;
  }

  if (v5 < 4)
  {
    v6 = 0;
    goto LABEL_8;
  }

  v6 = *result;
  if (v5 != 4)
  {
LABEL_8:
    *(a3 + 4) = v6;
    *a3 = 0;
    return result;
  }

  if (*a3 != 1)
  {
    *a3 = 1;
  }

  *(a3 + 4) = v6;
  return result;
}

void sub_100138620(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v5 = *(v4 + 616);
  if (v5)
  {
    sub_1002976DC(v5);
    v6 = *(a1 + 64);
    if (v6)
    {
      (*(*v6 + 48))(v6, a2);
      v7 = *(v4 + 616);

      sub_1017B853C(v7);
      return;
    }

LABEL_10:
    sub_1000CF05C();
  }

  v8 = *(a1 + 64);
  if (!v8)
  {
    goto LABEL_10;
  }

  v9 = *(*v8 + 48);

  v9();
}

uint64_t *sub_1001386F4(uint64_t a1, unsigned __int8 *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    sub_1000432E8("map::at:  key not found");
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = *(v2 + 32);
      if (v3 >= v4)
      {
        break;
      }

      v2 = *v2;
      if (!v2)
      {
        goto LABEL_8;
      }
    }

    if (v4 >= v3)
    {
      return (v2 + 5);
    }

    v2 = v2[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

void sub_10013874C(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  if (v3 != *a1)
  {
    do
    {
      v4 = *(v3 - 32);
      if (v4)
      {
        *(v3 - 24) = v4;
        operator delete(v4);
      }

      v5 = *(v3 - 96);
      *(v3 - 96) = 0;
      if (v5)
      {
        operator delete();
      }

      v6 = *(v3 - 120);
      if (v6)
      {
        *(v3 - 112) = v6;
        operator delete(v6);
      }

      v3 -= 144;
    }

    while (v3 != v2);
  }

  a1[1] = v2;
}

uint64_t sub_1001387D4(uint64_t a1, uint64_t a2)
{
  *(a1 + 784) = *(a2 + 16);
  *(a1 + 792) = sub_10013E724(a2 + 40);
  sub_10013F360(*a1 + 8, a2);
  sub_10013E784(a1 + 2752, a2 + 40);
  v5 = *(a1 + 1136);
  if (v5)
  {
    sub_10013F4F8(v5, a2, v4);
  }

  result = *(a1 + 392);
  if (result)
  {
    v7 = *(*result + 48);

    return v7();
  }

  return result;
}

void sub_100138888(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  if (*a2)
  {
    v5 = *(v2 + 216);
    if ((v5 & 8) == 0)
    {
      goto LABEL_6;
    }

    v6 = *(v2 + 24);
    if (!v6)
    {
      v6 = *(qword_102637FA0 + 24);
    }

    v7 = *(v6 + 48);
    if ((v7 & 2) != 0)
    {
      v8 = v7 & 1;
      if ((v5 & 0x10) != 0)
      {
        goto LABEL_24;
      }
    }

    else
    {
LABEL_6:
      v8 = 0;
      if ((v5 & 0x10) != 0)
      {
LABEL_24:
        v14 = sub_10012BF30();
        v15 = v8 ^ 1;
        if (!*(a1 + 1416))
        {
          v15 = 1;
        }

        if (v15)
        {
          goto LABEL_105;
        }

        v16 = *(*a2 + 24);
        if (!v16)
        {
          v16 = *(qword_102637FA0 + 24);
        }

        v17 = *(v16 + 16);
        if (!v17)
        {
          v17 = *(qword_102637238 + 16);
        }

        v18 = *(v17 + 40);
        v19 = sqrt(*(v17 + 48) * *(v17 + 48) + *(v17 + 56) * *(v17 + 56));
        if (v18 <= 0.0)
        {
          v22 = 0;
        }

        else
        {
          v20 = v18 < INFINITY;
          if (v18 > INFINITY)
          {
            v20 = 1;
          }

          v21 = v19 > 0.0;
          if (v19 > 400.0)
          {
            v21 = 0;
          }

          v22 = v20 && v21;
        }

        v23 = *(v17 + 8);
        v24 = *(v17 + 16);
        v104 = sub_10012F6D4(*(v17 + 76));
        if ((*(a1 + 1736) & 1) != 0 || *(a1 + 1737) == 1)
        {
          v25 = sub_1016208D0(*(v17 + 88));
        }

        else
        {
          v25 = 5;
        }

        v26 = fabs(v23);
        v27 = fabs(v24);
        v28 = sub_10012BF58(*(v16 + 40));
        v29 = v28;
        if (*(a1 + 1736))
        {
          v30 = 0;
        }

        else
        {
          v30 = *(a1 + 1737) ^ 1;
        }

        v31 = v26 + v27;
        v32 = -1.0;
        v103 = v28;
        if (*(a1 + 1681) & 1) != 0 || *(a1 + 1680) == 1 && *(a1 + 1337) != 1 || ((v30 | *(a1 + 1724)))
        {
          v33 = 1;
LABEL_50:
          if (v31 >= 0.0001)
          {
            v105 = v22 & v33;
          }

          else
          {
            v105 = 0;
          }

          if (sub_10006FB38() && *(a1 + 1338) == 1 && v105 && *(v17 + 48) <= *(a1 + 1340) && (*(a1 + 2912) & 1) == 0)
          {
            if (qword_1025D4650 != -1)
            {
              sub_1002981B4();
            }

            v34 = qword_1025D4658;
            if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
            {
              *buf = 0;
              _os_log_impl(dword_100000000, v34, OS_LOG_TYPE_DEBUG, "#timingadvance,GNSS is active,query timing advance", buf, 2u);
            }

            if (sub_10000A100(121, 2))
            {
              sub_101770DE8();
            }

            [*(a1 + 2920) setNextFireDelay:*(a1 + 1344)];
            sub_1002A8224(*(a1 + 2656));
            *(a1 + 2912) = 1;
          }

          if (qword_1025D4650 != -1)
          {
            sub_100154094();
          }

          v35 = qword_1025D4658;
          if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_INFO))
          {
            v36 = *(a1 + 1721);
            v37 = *(v16 + 8);
            if (!v37)
            {
              v37 = *(qword_102637238 + 8);
            }

            v38 = v37[1];
            v40 = v37[6];
            v39 = v37[7];
            v41 = *(v17 + 8);
            v42 = *(v17 + 16);
            v43 = *(v17 + 24);
            v44 = *(v17 + 40);
            v45 = *(v16 + 32);
            *buf = 67244545;
            *&buf[4] = v105;
            *&buf[8] = 1026;
            *&buf[10] = v22;
            LOWORD(v136) = 1026;
            *(&v136 + 2) = v31 < 0.0001;
            HIWORD(v136) = 1026;
            *v137 = v33;
            *&v137[4] = 1026;
            *&v137[6] = v36;
            v138 = 2050;
            v139 = v32;
            v140 = 2050;
            v141 = v38;
            v142 = 2050;
            v143 = v40;
            v144 = 2050;
            v145 = v39;
            v146 = 2053;
            v147 = v41;
            v148 = 2053;
            v149 = v42;
            v150 = 2049;
            v151 = v43;
            v152 = 2050;
            v153 = v19;
            v154 = 2050;
            v155 = v44;
            v156 = 1026;
            v157 = v104;
            v158 = 1026;
            v159 = v25;
            v160 = 1026;
            v161 = v103;
            v162 = 2050;
            v163 = v45;
            _os_log_impl(dword_100000000, v35, OS_LOG_TYPE_INFO, "#gpsd,pvtm,yield,%{public}d,isPrecise,%{public}d,isNullIsland,%{public}d,isRobust,%{public}d,isContinuous,%{public}d,timeSinceStrongSec,%{public}.1f,gpsTimeNs,%{public}llu,basebandTimeNs,%{public}llu,basebandTimeUncNs,%{public}llu,lat,%{sensitive}.6f,lon,%{sensitive}.6f,altWgs84,%{private}.1f,drms,%{public}.1f,vertUnc,%{public}.1f,rel,%{public}d,content,%{public}d,estTech,%{public}d,spoofFlags,0x%{public}llx", buf, 0x96u);
          }

          v46 = v25;
          if (sub_10000A100(121, 2))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1025D4650 != -1)
            {
              sub_100154094();
            }

            v88 = *(a1 + 1721);
            v89 = *(v16 + 8);
            if (!v89)
            {
              v89 = *(qword_102637238 + 8);
            }

            v90 = v89[1];
            v92 = v89[6];
            v91 = v89[7];
            v93 = *(v17 + 8);
            v94 = *(v17 + 16);
            v95 = *(v17 + 24);
            v96 = *(v17 + 40);
            v97 = *(v16 + 32);
            LODWORD(v115) = 67244545;
            DWORD1(v115) = v105;
            WORD4(v115) = 1026;
            *(&v115 + 10) = v22;
            HIWORD(v115) = 1026;
            LODWORD(v116) = v31 < 0.0001;
            WORD2(v116) = 1026;
            *(&v116 + 6) = v33;
            WORD5(v116) = 1026;
            HIDWORD(v116) = v88;
            *v117 = 2050;
            *&v117[2] = v32;
            *&v117[10] = 2050;
            *&v117[12] = v90;
            *&v117[20] = 2050;
            *&v117[22] = v92;
            *&v117[30] = 2050;
            *v118 = v91;
            *&v118[8] = 2053;
            *&v118[10] = v93;
            v119 = 2053;
            *v120 = v94;
            *&v120[8] = 2049;
            *&v120[10] = v95;
            *&v120[18] = 2050;
            v121 = *&v19;
            LOWORD(v122) = 2050;
            *(&v122 + 2) = v96;
            WORD5(v122) = 1026;
            HIDWORD(v122) = v104;
            LOWORD(v123) = 1026;
            *(&v123 + 2) = v25;
            HIWORD(v123) = 1026;
            *v124 = v103;
            *&v124[4] = 2050;
            *&v124[6] = v97;
            v98 = _os_log_send_and_compose_impl();
            sub_100152C7C("Generic", 1, 0, 2, "void CLGnssDaemonDevice::handlePvtmIndication(std::unique_ptr<proto::gpsd::Indication>)", "%s\n", v98);
            if (v98 != buf)
            {
              free(v98);
            }
          }

          *(a1 + 1744) |= *(v16 + 32);
          *&v115 = 0;
          *(&v115 + 1) = &v115;
          *&v116 = 0x16812000000;
          *(&v116 + 1) = sub_100047CAC;
          *v117 = sub_1000488A4;
          *&v117[8] = 0;
          v117[16] = 0;
          v134 = 0;
          if (v105)
          {
            if (sub_100298C60(v25))
            {
              *(a1 + 1728) = v14;
            }

            if ((*(a1 + 1721) & 1) == 0)
            {
              *(a1 + 1721) = 1;
              if (qword_1025D4650 != -1)
              {
                sub_100154094();
              }

              v47 = qword_1025D4658;
              if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
              {
                *buf = 0;
                _os_log_impl(dword_100000000, v47, OS_LOG_TYPE_DEBUG, "#gpsd,handlePvtm,yielding first post-discontinuity fix", buf, 2u);
              }

              if (sub_10000A100(121, 2))
              {
                sub_1017700B0(buf);
                LOWORD(v109) = 0;
                v100 = _os_log_send_and_compose_impl();
                sub_100152C7C("Generic", 1, 0, 2, "void CLGnssDaemonDevice::handlePvtmIndication(std::unique_ptr<proto::gpsd::Indication>)", "%s\n", v100);
                if (v100 != buf)
                {
                  free(v100);
                }
              }
            }

            sub_10029DB38(*(&v115 + 1) + 48);
            v48 = *(&v115 + 1);
            if ((*(*(&v115 + 1) + 352) & 1) == 0)
            {
              sub_100173BA0();
            }

            v49 = (*(&v115 + 1) + 48);
            sub_1002A743C(v16, *(&v115 + 1) + 48, a1 + 2352);
            *(v48 + 344) = *(a1 + 1744);
            v50 = *(v16 + 8);
            if (!v50)
            {
              v50 = *(qword_102637238 + 8);
            }

            sub_10029DD04(a1, v50);
            if (v48 + 296 != a1 + 2112)
            {
              *(v48 + 328) = *(a1 + 2144);
              sub_100294BE4((v48 + 296), *(a1 + 2128), 0);
            }

            *(v48 + 336) = v46;
            v51 = *v49;
            v52 = *(v48 + 64);
            v53 = *(v48 + 96);
            *(a1 + 1896) = *(v48 + 80);
            *(a1 + 1912) = v53;
            *(a1 + 1864) = v51;
            *(a1 + 1880) = v52;
            v54 = *(v48 + 112);
            v55 = *(v48 + 128);
            v56 = *(v48 + 160);
            *(a1 + 1960) = *(v48 + 144);
            *(a1 + 1976) = v56;
            *(a1 + 1928) = v54;
            *(a1 + 1944) = v55;
            v57 = *(v48 + 176);
            v58 = *(v48 + 192);
            v59 = *(v48 + 224);
            *(a1 + 2024) = *(v48 + 208);
            *(a1 + 2040) = v59;
            *(a1 + 1992) = v57;
            *(a1 + 2008) = v58;
            v60 = *(v48 + 240);
            v61 = *(v48 + 256);
            v62 = *(v48 + 272);
            *(a1 + 2104) = *(v48 + 288);
            *(a1 + 2072) = v61;
            *(a1 + 2088) = v62;
            *(a1 + 2056) = v60;
            if ((a1 + 1864) != v49)
            {
              *(a1 + 2144) = *(v48 + 328);
              sub_100294BE4((a1 + 2112), *(v48 + 312), 0);
            }

            *(a1 + 2152) = *(v48 + 336);
            *(a1 + 1744) = 0;
            if (sub_10002807C(*(v48 + 104), *(v48 + 112)))
            {
              if (qword_1025D4620 != -1)
              {
                sub_101770ECC();
              }

              v63 = qword_1025D4628;
              if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
              {
                *buf = 136380931;
                *&buf[4] = "gps, null";
                *&buf[12] = 2081;
                v136 = "gpsd";
                _os_log_impl(dword_100000000, v63, OS_LOG_TYPE_DEBUG, "ClxMetric, islands, %{private}s, %{private}s", buf, 0x16u);
              }

              if (sub_10000A100(121, 2))
              {
                sub_101770EF4(buf);
                v109 = 136380931;
                v110 = "gps, null";
                v111 = 2081;
                v112 = "gpsd";
                v101 = _os_log_send_and_compose_impl();
                sub_100152C7C("Generic", 1, 0, 2, "void CLGnssDaemonDevice::handlePvtmIndication(std::unique_ptr<proto::gpsd::Indication>)", "%s\n", v101);
                if (v101 != buf)
                {
                  free(v101);
                }
              }

              AnalyticsSendEventLazy();
            }

            if (*(v48 + 104) == -1.0 && *(v48 + 112) == -1.0)
            {
              if (qword_1025D4620 != -1)
              {
                sub_101770ECC();
              }

              v64 = qword_1025D4628;
              if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
              {
                *buf = 136380931;
                *&buf[4] = "gps, sentinel";
                *&buf[12] = 2081;
                v136 = "gpsd";
                _os_log_impl(dword_100000000, v64, OS_LOG_TYPE_DEBUG, "ClxMetric, islands, %{private}s, %{private}s", buf, 0x16u);
              }

              if (sub_10000A100(121, 2))
              {
                sub_101770EF4(buf);
                v109 = 136380931;
                v110 = "gps, sentinel";
                v111 = 2081;
                v112 = "gpsd";
                v102 = _os_log_send_and_compose_impl();
                sub_100152C7C("Generic", 1, 0, 2, "void CLGnssDaemonDevice::handlePvtmIndication(std::unique_ptr<proto::gpsd::Indication>)", "%s\n", v102);
                if (v102 != buf)
                {
                  free(v102);
                }
              }

              AnalyticsSendEventLazy();
            }
          }

          *(a1 + 1721) = v105;
          v65 = *(a1 + 2168);
          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_10012CCAC;
          block[3] = &unk_10245D2D0;
          block[4] = &v115;
          block[5] = a1;
          dispatch_async(v65, block);
          sub_100139BB0(a1, *(v17 + 80));
          sub_10012C7A0(a1, v16);
          _Block_object_dispose(&v115, 8);
          if (v134 == 1)
          {
            sub_100134860(&v133);
          }

LABEL_105:
          if ((v5 & 0x10) != 0 && *(a1 + 1448))
          {
            if (qword_1025D4650 != -1)
            {
              sub_100154094();
            }

            v66 = qword_1025D4658;
            if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
            {
              *buf = 0;
              _os_log_impl(dword_100000000, v66, OS_LOG_TYPE_DEBUG, "#gpsd,handlePvtm,yielding measurements", buf, 2u);
            }

            if (sub_10000A100(121, 2))
            {
              sub_101770F38();
            }

            v115 = 0u;
            v116 = 0u;
            *v117 = 0;
            *&v117[8] = -1;
            *&v117[16] = vdupq_n_s64(0x7FF8000000000000uLL);
            *v118 = *&v117[16];
            *&v118[16] = 0;
            *&v120[4] = *&v117[16];
            v121 = vneg_f32(0x3F0000003FLL);
            LODWORD(v122) = 2143289344;
            *(&v122 + 1) = 0x8000000000000000;
            __asm { FMOV            V1.2S, #-1.0 }

            v123 = _D1;
            *v124 = 0x7FF8000000000000;
            *&v124[8] = -1082130432;
            v131 = 0u;
            v132 = 0u;
            v125 = 0u;
            memset(v126, 0, sizeof(v126));
            v127 = 0u;
            v128 = 0u;
            v129 = 0u;
            v130 = 0u;
            v72 = *(*a2 + 32);
            if (!v72)
            {
              v72 = *(qword_102637FA0 + 32);
            }

            sub_10013C7E8(v72, &v115);
            v107[0] = 0;
            v107[1] = 0;
            v106 = v107;
            sub_10013E2E8(&v115, (a1 + 2112), &v106);
            if (*(a1 + 1912) == 1)
            {
              v73.f64[0] = *(a1 + 1920);
              sub_1002C89B8(&v115, (a1 + 2112), v73, *(a1 + 1928), *(a1 + 1936), v14);
            }

            v74 = *(&v127 + 1);
            if (v127 == *(&v127 + 1))
            {
              v78 = 999.0;
              v77 = 999.0;
              v76 = 999.0;
            }

            else
            {
              v75 = (v127 + 16);
              v76 = 999.0;
              v77 = 999.0;
              v78 = 999.0;
              do
              {
                if (*v75)
                {
                  if ((*(v75 - 2) & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && (*(v75 - 2) & 0x7FFFFFFFu) <= 0x7F7FFFFF && (*(v75 - 1) & 0x7FFFFFFFu) <= 0x7F7FFFFF)
                  {
                    v109 = (roundf(*(v75 - 1) / 5.0) * 5.0);
                    *buf = v75;
                    v79 = sub_1002AEEC4((a1 + 432), v75);
                    *buf = &v109;
                    v80 = sub_10006BEC4(v79 + 3, &v109);
                    ++*(v80 + 5);
                    v81 = *v75;
                    if (v81 <= 9)
                    {
                      if (((1 << v81) & 0x142) != 0)
                      {
                        v78 = *(v75 - 1);
                      }

                      else if (((1 << v81) & 0x288) != 0)
                      {
                        v76 = *(v75 - 1);
                      }

                      else if (v81 == 4)
                      {
                        v77 = *(v75 - 1);
                      }
                    }
                  }
                }

                v82 = v75 + 8;
                v75 += 24;
              }

              while (v82 != v74);
            }

            if (sub_10006FE30())
            {
              if (qword_1025D4650 != -1)
              {
                sub_100154094();
              }

              v83 = qword_1025D4658;
              if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 134349568;
                *&buf[4] = v78;
                *&buf[12] = 2050;
                v136 = *&v77;
                *v137 = 2050;
                *&v137[2] = v76;
                _os_log_impl(dword_100000000, v83, OS_LOG_TYPE_DEFAULT, "#gpsd,handlePvtm,awd_agc_metric_dB,band,L1,%{public}.2f,band,G1,%{public}.2f,band,L5,%{public}.2f", buf, 0x20u);
              }

              if (sub_10000A100(121, 2))
              {
                sub_1017700B0(buf);
                v109 = 134349568;
                v110 = *&v78;
                v111 = 2050;
                v112 = *&v77;
                v113 = 2050;
                v114 = v76;
                v99 = _os_log_send_and_compose_impl();
                sub_100152C7C("Generic", 1, 0, 2, "void CLGnssDaemonDevice::handlePvtmIndication(std::unique_ptr<proto::gpsd::Indication>)", "%s\n", v99);
                if (v99 != buf)
                {
                  free(v99);
                }
              }
            }

            sub_10013F1F8(a1, &v115, &v106);
            v84 = *(a1 + 2968);
            if (v84 && sub_10013E4CC(v84, &v126[1]))
            {
              sub_1001B7B7C((a1 + 2968), 0);
            }

            v85 = *(a1 + 1448);
            if (!v85)
            {
              sub_1000CF05C();
            }

            (*(*v85 + 48))(v85, &v115);
            sub_1003C93BC(&v106, v107[0]);
            sub_10013ED9C(&v115);
          }

          return;
        }

        if (sub_1016AF834(v28))
        {
          *(a1 + 1721) = 0;
          *(a1 + 1728) = 0xC08F400000000000;
        }

        else if (*(a1 + 1721))
        {
          v32 = v14 - *(a1 + 1728);
          if (sub_100298C60(v25))
          {
            v86 = 1;
LABEL_158:
            v33 = sub_1016AF844(v104) && v86;
            goto LABEL_50;
          }

          if (v29 == 3)
          {
            if (!v25 || v19 >= 40.0)
            {
              if (v19 >= 100.0)
              {
                v86 = v32 < 12.5;
              }

              else
              {
                v86 = v32 < 40.5;
              }

              goto LABEL_158;
            }

            v87 = 600.5;
          }

          else
          {
            if (v29 != 2)
            {
              goto LABEL_157;
            }

            if (sub_1016AF8A8(v25) && v19 < 40.0)
            {
              v87 = 10.5;
            }

            else
            {
              v87 = 5.5;
            }
          }

          v86 = v32 < v87;
          goto LABEL_158;
        }

        if (sub_1016AF884(v104))
        {
          v86 = sub_100298C60(v25);
          goto LABEL_158;
        }

LABEL_157:
        v86 = 0;
        goto LABEL_158;
      }
    }

    if (v8)
    {
      goto LABEL_24;
    }

    if (qword_1025D4650 != -1)
    {
      sub_1002981B4();
    }

    v10 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_ERROR))
    {
      v11 = *(*a2 + 216);
      v12 = *(*a2 + 24);
      if (!v12)
      {
        v12 = *(qword_102637FA0 + 24);
      }

      v13 = *(v12 + 48);
      *buf = 67240960;
      *&buf[4] = (v11 >> 3) & 1;
      *&buf[8] = 1026;
      *&buf[10] = (v13 >> 1) & 1;
      LOWORD(v136) = 1026;
      *(&v136 + 2) = v13 & 1;
      HIWORD(v136) = 1026;
      *v137 = (v11 >> 4) & 1;
      _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_ERROR, "#gpsd,handlePvtm,missing expected fields,hasFix,%{public}d,hasPos,%{public}d,hasTime,%{public}d,hasMeas,%{public}d", buf, 0x1Au);
    }

    if (sub_10000A100(121, 0))
    {
      sub_101770CA8();
    }
  }

  else
  {
    if (qword_1025D4650 != -1)
    {
      sub_1002981B4();
    }

    v9 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_ERROR, "#gpsd,handlePvtm,nullptr", buf, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_10177101C();
    }
  }
}

void sub_100139B38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  _Block_object_dispose(&a27, 8);
  if (a71 == 1)
  {
    sub_100134860(&a64);
  }

  _Unwind_Resume(a1);
}

int64x2_t *sub_100139BB0(int64x2_t *result, int a2)
{
  if ((a2 & 0x18) != 0)
  {
    result[41] = vaddq_s64(result[41], vdupq_n_s64(1uLL));
  }

  if ((a2 & 0x20) != 0)
  {
    ++result[44].i64[1];
    if ((a2 & 0x40) == 0)
    {
LABEL_5:
      if ((a2 & 0x80) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_19;
    }
  }

  else if ((a2 & 0x40) == 0)
  {
    goto LABEL_5;
  }

  ++result[44].i64[0];
  if ((a2 & 0x80) == 0)
  {
LABEL_6:
    if ((a2 & 0x100) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_20;
  }

LABEL_19:
  ++result[43].i64[1];
  if ((a2 & 0x100) == 0)
  {
LABEL_7:
    if ((a2 & 0x200) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_21;
  }

LABEL_20:
  ++result[43].i64[0];
  if ((a2 & 0x200) == 0)
  {
LABEL_8:
    if ((a2 & 0x400) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_22;
  }

LABEL_21:
  ++result[42].i64[0];
  if ((a2 & 0x400) == 0)
  {
LABEL_9:
    if ((a2 & 0x800) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_23;
  }

LABEL_22:
  ++result[46].i64[0];
  if ((a2 & 0x800) == 0)
  {
LABEL_10:
    if ((a2 & 0x1000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_24;
  }

LABEL_23:
  ++result[49].i64[1];
  if ((a2 & 0x1000) == 0)
  {
LABEL_11:
    if ((a2 & 4) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_25;
  }

LABEL_24:
  ++result[49].i64[0];
  if ((a2 & 4) == 0)
  {
LABEL_12:
    if ((a2 & 0x2000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_26;
  }

LABEL_25:
  ++result[46].i64[1];
  if ((a2 & 0x2000) == 0)
  {
LABEL_13:
    if ((a2 & 0x40000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_27;
  }

LABEL_26:
  ++result[47].i64[1];
  if ((a2 & 0x40000) == 0)
  {
LABEL_14:
    if ((a2 & 0x80000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_28;
  }

LABEL_27:
  ++result[48].i64[0];
  if ((a2 & 0x80000) == 0)
  {
LABEL_15:
    if ((a2 & 0x4000) == 0)
    {
      return result;
    }

LABEL_29:
    ++result[45].i64[1];
    return result;
  }

LABEL_28:
  ++result[48].i64[1];
  if ((a2 & 0x4000) != 0)
  {
    goto LABEL_29;
  }

  return result;
}

void sub_100139CD4(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = off_10246D710;
  sub_100139D3C(a1);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);

  operator delete();
}

void *sub_100139D3C(void *result)
{
  if (qword_102637238 != result)
  {
    v1 = result;
    v2 = result[1];
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    v3 = v1[2];
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }

    result = v1[3];
    if (result)
    {
      v4 = *(*result + 8);

      return v4();
    }
  }

  return result;
}

void sub_100139E08(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = off_10246D620;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);

  operator delete();
}

void sub_100139E64(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000081AC();
  v5 = vabdd_f64(v4, *(a1 + 11704));
  if (*(a2 + 96) <= 0.0)
  {
    v20 = v5 < 1.5;
    v21 = sub_100125670(*(a1 + 480));
    sub_10013A050(a1 + 72, 0, v21, *(a1 + 11648), v20, v4, -1.0, -1.0);
    *(a1 + 1580) = 0;
  }

  else
  {
    v6 = v5 < 1.5;
    v7 = *(a2 + 32);
    v8 = *(a2 + 152);
    v9 = sub_100125670(*(a1 + 480));
    sub_10013A050(a1 + 72, 0, v9, *(a1 + 11648), v6, v7, v8, -1.0);
    sub_1002988A4(a2, 0, 0, v25);
    v10 = v25[7];
    *(a1 + 5744) = v25[6];
    *(a1 + 5760) = v10;
    *(a1 + 5776) = v26[0];
    *(a1 + 5788) = *(v26 + 12);
    v11 = v25[3];
    *(a1 + 5680) = v25[2];
    *(a1 + 5696) = v11;
    v12 = v25[5];
    *(a1 + 5712) = v25[4];
    *(a1 + 5728) = v12;
    v13 = v25[1];
    *(a1 + 5648) = v25[0];
    *(a1 + 5664) = v13;
    memcpy((a1 + 5808), v27, 0x201uLL);
    v14 = v28;
    v28 = 0u;
    v15 = *(a1 + 6336);
    *(a1 + 6328) = v14;
    if (v15)
    {
      sub_100008080(v15);
      v16 = *(&v28 + 1);
      v17 = v34[0];
      *(a1 + 6408) = v33;
      *(a1 + 6424) = v17;
      *(a1 + 6433) = *(v34 + 9);
      v18 = v30;
      *(a1 + 6344) = v29;
      *(a1 + 6360) = v18;
      v19 = v32;
      *(a1 + 6376) = v31;
      *(a1 + 6392) = v19;
      if (v16)
      {
        sub_100008080(v16);
      }
    }

    else
    {
      v22 = v34[0];
      *(a1 + 6408) = v33;
      *(a1 + 6424) = v22;
      *(a1 + 6433) = *(v34 + 9);
      v23 = v30;
      *(a1 + 6344) = v29;
      *(a1 + 6360) = v23;
      v24 = v32;
      *(a1 + 6376) = v31;
      *(a1 + 6392) = v24;
    }
  }
}

void sub_10013A050(uint64_t a1, int a2, int a3, int a4, int a5, double a6, float a7, double a8)
{
  if (sub_10001CF3C())
  {
    v16 = 15.0;
  }

  else
  {
    v16 = 5.0;
  }

  if (a8 <= 10.0 || a2 == 0)
  {
    if ((a8 > 10.0 || a8 < 0.0) && a2 == 0)
    {
      v22 = 0;
      *(a1 + 140) = 0;
      v21 = 1;
    }

    else
    {
      v21 = 0;
      v20 = *(a1 + 140) + 1;
      *(a1 + 140) = v20;
      v22 = v20 > 0x28;
    }
  }

  else
  {
    v21 = 0;
    *(a1 + 140) = 0;
    v22 = 1;
  }

  if (!off_1025D53B8)
  {
    operator new();
  }

  v23 = 15.0;
  if (*(off_1025D53B8 + 1))
  {
    v23 = 50.0;
    if (!*off_1025D53B8)
    {
      v23 = 15.0;
    }
  }

  v24 = (*(a1 + 4) & a3);
  if (*(a1 + 88) == 1)
  {
    if ((*(a1 + 4) & a3) == 0 || v23 < a7)
    {
      sub_101753398(a1);
      *(a1 + 88) = 0;
      goto LABEL_31;
    }

    *(a1 + 128) = v16;
    if (a7 < 0.0)
    {
      goto LABEL_63;
    }

    if (*(a1 + 80))
    {
      if (a6 - *(a1 + 96) < 3.0)
      {
        *buf = a7;
        sub_10023F928(a1 + 8, buf);
        *(a1 + 96) = a6;
        v33 = *(a1 + 80);
        if (v33 >= *(a1 + 16) && (!v33 || *(a1 + 24) / v33 < 0.1))
        {
          *(a1 + 128) = 0x403F000000000000;
        }

        goto LABEL_63;
      }

      sub_1005A84D8((a1 + 40));
      *(a1 + 24) = 0;
      *(a1 + 32) = 0;
      *buf = a7;
      sub_10023F928(a1 + 8, buf);
    }

    else
    {
      *buf = a7;
      sub_10023F928(a1 + 8, buf);
    }

    *(a1 + 96) = a6;
LABEL_63:
    if (*(a1 + 112) >= 4)
    {
      *(a1 + 128) = 0x403F000000000000;
    }

    if (*(a1 + 136) >= 5u)
    {
      *(a1 + 128) = 0x4056800000000000;
    }

    if (a5 && *(a1 + 128) < 31.0)
    {
      *(a1 + 128) = 0x403F000000000000;
    }

    if (a4 == 2 && *(a1 + 128) < 11.0)
    {
      *(a1 + 128) = 0x4026000000000000;
    }

    goto LABEL_31;
  }

  if (v23 <= a7)
  {
    v24 = 0;
  }

  if (v24 == 1)
  {
    sub_101753398(a1);
    *(a1 + 88) = 1;
    *(a1 + 128) = v16;
  }

LABEL_31:
  if (a3)
  {
    if (*(a1 + 144) == 1)
    {
      *(a1 + 88) = 1;
    }

    if (*(a1 + 145) == 1)
    {
      *(a1 + 88) = 0;
    }
  }

  v25 = *(a1 + 104);
  v26 = a6 - v25;
  if (*(a1 + 88) == 1 && (v27 = *(a1 + 128), a6 - *(a1 + 120) > v27))
  {
    if (v25 <= 0.0)
    {
      goto LABEL_41;
    }

    if (v26 > v27)
    {
      if (v26 <= v27 + v27)
      {
LABEL_42:
        v28 = 1;
        goto LABEL_44;
      }

LABEL_41:
      ++*(a1 + 136);
      goto LABEL_42;
    }

    v28 = 0;
    *(a1 + 136) = 0;
  }

  else
  {
    v28 = 0;
  }

LABEL_44:
  if (qword_1025D4650 != -1)
  {
    sub_101753464();
  }

  v29 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
  {
    v30 = *(a1 + 128);
    v31 = *(a1 + 88);
    v32 = *(a1 + 136);
    *buf = 67111680;
    *&buf[4] = a2;
    *&buf[8] = 1024;
    *&buf[10] = v22;
    *&buf[14] = 1024;
    v36 = v21;
    v37 = 2048;
    v38 = a8;
    v39 = 1024;
    v40 = a3;
    v41 = 2048;
    v42 = v30;
    v43 = 1024;
    v44 = a4;
    v45 = 1024;
    v46 = v31;
    v47 = 1024;
    v48 = v28;
    v49 = 2048;
    v50 = v26;
    v51 = 1024;
    v52 = v32;
    _os_log_impl(dword_100000000, v29, OS_LOG_TYPE_DEBUG, "CPI,isLowPower,%d,isLowForAWhile,%d,isNotLowForAWhile,%d,ageOfPowerMode,%.1lf,isWiFiPowered,%d,scanInterval,%.1lf,signalEnv,%d,enabled,%d,requestAScan,%d,timeSinceLastWifiLoc,%.1lf,fEmptyResultCounter,%d", buf, 0x50u);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4650 != -1)
    {
      sub_101753464();
    }

    v34 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "void CLGpsCpiHandler::manageCPI(CFTimeInterval, float, const BOOL, const CFTimeInterval, const BOOL, CLSignalEnvironmentProvider_Type::SignalEnvironmentType, const BOOL)", "%s\n", v34);
    if (v34 != buf)
    {
      free(v34);
    }
  }

  if (v28)
  {
    *buf = xmmword_101C885D0;
    LOBYTE(v36) = 0;
    sub_1006A7700(a1 + 152, buf);
    *(a1 + 120) = a6;
  }
}

uint64_t *sub_10013A5F4(void *a1, unsigned int *a2)
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
      v5 = v2 % v3.i32[0];
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

  if (*(v7 + 4) != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

uint64_t sub_10013A82C(uint64_t result)
{
  if ((result - 1) >= 6)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

void sub_10013A83C(uint64_t a1)
{
  sub_10001CAF4(buf);
  LOBYTE(v50[0]) = 0;
  v2 = sub_10001CB4C(*buf, "EnableGnssAwdVerboseLogging", v50);
  v3 = (v2 & v50[0]);
  if (*v64)
  {
    sub_100008080(*v64);
  }

  if (v3)
  {
    if (qword_1025D4650 != -1)
    {
      sub_1016C8BF0();
    }

    v4 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "#gnssawd,Cellular-AWD,cacheCellularAWDMetrics", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1016CAB58();
    }
  }

  *(a1 + 2648) = *(a1 + 2620);
  v5 = *(a1 + 2680);
  v6 = *(a1 + 2688);
  if (v5 >= v6)
  {
    v8 = *(a1 + 2672);
    v9 = v5 - v8;
    v10 = (v5 - v8) >> 2;
    v11 = v10 + 1;
    if ((v10 + 1) >> 62)
    {
      sub_10028C64C();
    }

    v12 = v6 - v8;
    if (v12 >> 1 > v11)
    {
      v11 = v12 >> 1;
    }

    v13 = v12 >= 0x7FFFFFFFFFFFFFFCLL;
    v14 = 0x3FFFFFFFFFFFFFFFLL;
    if (!v13)
    {
      v14 = v11;
    }

    if (v14)
    {
      sub_1000B85D0(a1 + 2672, v14);
    }

    v15 = (v5 - v8) >> 2;
    v16 = (4 * v10);
    v17 = (4 * v10 - 4 * v15);
    *v16 = *(a1 + 2640);
    v7 = v16 + 1;
    memcpy(v17, v8, v9);
    v18 = *(a1 + 2672);
    *(a1 + 2672) = v17;
    *(a1 + 2680) = v7;
    *(a1 + 2688) = 0;
    if (v18)
    {
      operator delete(v18);
    }
  }

  else
  {
    *v5 = *(a1 + 2640);
    v7 = v5 + 4;
  }

  *(a1 + 2680) = v7;
  v19 = *(a1 + 2704);
  v20 = *(a1 + 2712);
  if (v19 >= v20)
  {
    v22 = *(a1 + 2696);
    v23 = v19 - v22;
    v24 = (v19 - v22) >> 2;
    v25 = v24 + 1;
    if ((v24 + 1) >> 62)
    {
      sub_10028C64C();
    }

    v26 = v20 - v22;
    if (v26 >> 1 > v25)
    {
      v25 = v26 >> 1;
    }

    v13 = v26 >= 0x7FFFFFFFFFFFFFFCLL;
    v27 = 0x3FFFFFFFFFFFFFFFLL;
    if (!v13)
    {
      v27 = v25;
    }

    if (v27)
    {
      sub_1000B85D0(a1 + 2696, v27);
    }

    v28 = (v19 - v22) >> 2;
    v29 = (4 * v24);
    v30 = (4 * v24 - 4 * v28);
    *v29 = *(a1 + 2636);
    v21 = v29 + 1;
    memcpy(v30, v22, v23);
    v31 = *(a1 + 2696);
    *(a1 + 2696) = v30;
    *(a1 + 2704) = v21;
    *(a1 + 2712) = 0;
    if (v31)
    {
      operator delete(v31);
    }
  }

  else
  {
    *v19 = *(a1 + 2636);
    v21 = v19 + 4;
  }

  *(a1 + 2704) = v21;
  *(a1 + 2652) = *(a1 + 2624);
  *(a1 + 2656) = *(a1 + 2628);
  sub_10001CAF4(buf);
  LOBYTE(v50[0]) = 0;
  v32 = sub_10001CB4C(*buf, "EnableGnssAwdVerboseLogging", v50);
  v33 = (v32 & v50[0]);
  if (*v64)
  {
    sub_100008080(*v64);
  }

  if (v33)
  {
    if (qword_1025D4650 != -1)
    {
      sub_1016C8BF0();
    }

    v34 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
    {
      v35 = *(a1 + 2648);
      v36 = *(a1 + 2660);
      v37 = *(a1 + 2656);
      v38 = *(a1 + 2652);
      v39 = *(a1 + 2640);
      v40 = *(a1 + 2636);
      v41 = *(a1 + 2664);
      *buf = 67110656;
      *&buf[4] = v35;
      *v64 = 2048;
      *&v64[2] = v36;
      v65 = 2048;
      v66 = v37;
      v67 = 1024;
      v68 = v38;
      v69 = 1024;
      v70 = v39;
      v71 = 1024;
      v72 = v40;
      v73 = 1024;
      v74 = v41;
      _os_log_impl(dword_100000000, v34, OS_LOG_TYPE_DEBUG, "#gnssawd,Cellular-AWD,cacheCellularAWDMetrics,BandInfo,%d,BW,%f,transmissionFrequency,%f,RAT,%d,RSRP,%d,SNR,%d,CurrentEpochCount,%d", buf, 0x34u);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4650 != -1)
      {
        sub_1016C8BF0();
      }

      v42 = *(a1 + 2648);
      v43 = *(a1 + 2660);
      v44 = *(a1 + 2656);
      v45 = *(a1 + 2652);
      v46 = *(a1 + 2640);
      v47 = *(a1 + 2636);
      v48 = *(a1 + 2664);
      v50[0] = 67110656;
      v50[1] = v42;
      v51 = 2048;
      v52 = v43;
      v53 = 2048;
      v54 = v44;
      v55 = 1024;
      v56 = v45;
      v57 = 1024;
      v58 = v46;
      v59 = 1024;
      v60 = v47;
      v61 = 1024;
      v62 = v48;
      v49 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "void CLGnssAWD::cacheCellularAWDMetrics()", "%s\n", v49);
      if (v49 != buf)
      {
        free(v49);
      }
    }
  }
}

void sub_10013AD0C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, std::__shared_weak_count *a20)
{
  if (a20)
  {
    sub_100008080(a20);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_10013AD30(uint64_t a1)
{
  v2 = *(a1 + 1344);
  v3 = *(a1 + 1368);
  if (!v2)
  {
    goto LABEL_9;
  }

  v4 = a1 + 1344;
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
  if (v4 == a1 + 1344 || v3 < *(v4 + 32))
  {
LABEL_9:
    v9[0] = *(a1 + 1368);
    v10 = 0;
    sub_1002980C8(a1 + 1336, v9);
  }

  result = sub_1001386F4(a1 + 1336, (a1 + 1368));
  ++*result;
  return result;
}

uint64_t sub_10013ADC8(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
{
  do
  {
    while (1)
    {
      while (1)
      {
        v5 = *(this + 1);
        if (v5 >= *(this + 2) || (TagFallback = *v5, (TagFallback & 0x80000000) != 0))
        {
          TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(this);
          *(this + 8) = TagFallback;
          if (!TagFallback)
          {
            return 1;
          }
        }

        else
        {
          *(this + 8) = TagFallback;
          *(this + 1) = v5 + 1;
          if (!TagFallback)
          {
            return 1;
          }
        }

        v7 = TagFallback >> 3;
        v8 = TagFallback & 7;
        if (TagFallback >> 3 > 2)
        {
          break;
        }

        if (v7 != 1)
        {
          if (v7 != 2 || v8 != 1)
          {
            goto LABEL_21;
          }

          goto LABEL_28;
        }

        if (v8 != 1)
        {
          goto LABEL_21;
        }

        *v17 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v17) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 8) = *v17;
        *(a1 + 48) |= 1u;
        v11 = *(this + 1);
        if (v11 < *(this + 2) && *v11 == 17)
        {
          *(this + 1) = v11 + 1;
LABEL_28:
          *v17 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v17) & 1) == 0)
          {
            return 0;
          }

          *(a1 + 16) = *v17;
          *(a1 + 48) |= 2u;
          v12 = *(this + 1);
          if (v12 < *(this + 2) && *v12 == 25)
          {
            *(this + 1) = v12 + 1;
LABEL_32:
            *v17 = 0;
            if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v17) & 1) == 0)
            {
              return 0;
            }

            *(a1 + 24) = *v17;
            *(a1 + 48) |= 4u;
            v13 = *(this + 1);
            if (v13 < *(this + 2) && *v13 == 33)
            {
              *(this + 1) = v13 + 1;
              goto LABEL_36;
            }
          }
        }
      }

      if (v7 == 3)
      {
        if (v8 != 1)
        {
          goto LABEL_21;
        }

        goto LABEL_32;
      }

      if (v7 != 4)
      {
        break;
      }

      if (v8 != 1)
      {
        goto LABEL_21;
      }

LABEL_36:
      *v17 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v17) & 1) == 0)
      {
        return 0;
      }

      *(a1 + 32) = *v17;
      *(a1 + 48) |= 8u;
      v14 = *(this + 1);
      v9 = *(this + 2);
      if (v14 < v9 && *v14 == 40)
      {
        v10 = v14 + 1;
        *(this + 1) = v10;
LABEL_40:
        v17[0] = 0;
        if (v10 >= v9 || (v15 = *v10, (v15 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v17);
          if (!result)
          {
            return result;
          }

          v15 = v17[0];
        }

        else
        {
          *(this + 1) = v10 + 1;
        }

        if (v15 <= 1)
        {
          *(a1 + 48) |= 0x10u;
          *(a1 + 40) = v15;
        }

        if (*(this + 1) == *(this + 2) && (*(this + 11) || *(this + 6) == *(this + 10)))
        {
          *(this + 8) = 0;
          result = 1;
          *(this + 36) = 1;
          return result;
        }
      }
    }

    if (v7 == 5 && (TagFallback & 7) == 0)
    {
      v10 = *(this + 1);
      v9 = *(this + 2);
      goto LABEL_40;
    }

LABEL_21:
    if (v8 == 4)
    {
      return 1;
    }
  }

  while ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(this, TagFallback, a3) & 1) != 0);
  return 0;
}

void sub_10013B064(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 1608))
  {
    if ((*(a2 + 216) & 0x20) != 0)
    {
      v10 = 0;
      *buf = 0u;
      v9 = 0u;
      v4 = *(a2 + 40);
      if (!v4)
      {
        v4 = *(qword_102637FA0 + 40);
      }

      sub_10013B17C(v4, buf);
      v6[0] = *buf;
      v6[1] = v9;
      v7 = v10;
      v5 = *(a1 + 1608);
      if (!v5)
      {
        sub_1000CF05C();
      }

      (*(*v5 + 48))(v5, v6);
    }

    else
    {
      if (qword_1025D4650 != -1)
      {
        sub_1002981B4();
      }

      v2 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_ERROR, "#gpsd,Indication missing power measurement", buf, 2u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_101772314();
      }
    }
  }
}

double sub_10013B17C(uint64_t a1, double *a2)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    result = *(a1 + 8);
    *a2 = result;
    if ((v2 & 2) == 0)
    {
LABEL_3:
      if ((v2 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if ((v2 & 2) == 0)
  {
    goto LABEL_3;
  }

  result = *(a1 + 16);
  a2[1] = result;
  if ((v2 & 4) == 0)
  {
LABEL_4:
    if ((v2 & 8) == 0)
    {
      return result;
    }

LABEL_9:
    result = *(a1 + 32);
    a2[3] = result;
    return result;
  }

LABEL_8:
  result = *(a1 + 24);
  a2[2] = result;
  if ((v2 & 8) != 0)
  {
    goto LABEL_9;
  }

  return result;
}

void sub_10013B1C4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v5 = *a2;
  v6 = v2;
  v7 = *(a2 + 32);
  v3 = *(a1 + 8);
  if (*(v3 + 12))
  {
    v7 = v6;
  }

  sub_10012E65C(*v3 + 8, &v5);
  v4 = *(v3 + 1120);
  v8[0] = v5;
  v8[1] = v6;
  v9 = v7;
  sub_10013B238(v4, v8);
}

void sub_10013B238(void *a1, __int128 *a2)
{
  v4 = a1[4];
  v5 = a1[5];
  if (v4 >= v5)
  {
    v9 = a1[3];
    v10 = 0xCCCCCCCCCCCCCCCDLL * ((v4 - v9) >> 3);
    v11 = v10 + 1;
    if (v10 + 1 > 0x666666666666666)
    {
      sub_10028C64C();
    }

    v12 = 0xCCCCCCCCCCCCCCCDLL * ((v5 - v9) >> 3);
    if (2 * v12 > v11)
    {
      v11 = 2 * v12;
    }

    if (v12 >= 0x333333333333333)
    {
      v13 = 0x666666666666666;
    }

    else
    {
      v13 = v11;
    }

    if (v13)
    {
      sub_10045EA08((a1 + 3), v13);
    }

    v14 = 40 * v10;
    v15 = *a2;
    v16 = a2[1];
    *(v14 + 32) = *(a2 + 4);
    *v14 = v15;
    *(v14 + 16) = v16;
    v8 = 40 * v10 + 40;
    v17 = a1[3];
    v18 = a1[4] - v17;
    v19 = v14 - v18;
    memcpy((v14 - v18), v17, v18);
    v20 = a1[3];
    a1[3] = v19;
    a1[4] = v8;
    a1[5] = 0;
    if (v20)
    {
      operator delete(v20);
    }
  }

  else
  {
    v6 = *a2;
    v7 = a2[1];
    *(v4 + 32) = *(a2 + 4);
    *v4 = v6;
    *(v4 + 16) = v7;
    v8 = v4 + 40;
  }

  a1[4] = v8;
}

uint64_t sub_10013B340(double *a1)
{
  v1 = *a1;
  v2 = *a1 & 0x7FFFFFFFFFFFFFFFLL;
  v3 = (v2 - 1) < 0xFFFFFFFFFFFFFLL;
  v4 = *a1 < 0 && (v2 - 0x10000000000000) >> 53 < 0x3FF;
  if (*a1 >= 0)
  {
    v3 = 0;
  }

  v5 = v2 == 0x7FF0000000000000 || v3;
  if ((*a1 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FF0000000000000)
  {
    v5 = 1;
  }

  if ((v5 | v4))
  {
    return 0;
  }

  if (v1 < 5.0)
  {
    return 1;
  }

  if (v1 < 10.0)
  {
    return 2;
  }

  if (v1 < 15.0)
  {
    return 3;
  }

  if (v1 < 20.0)
  {
    return 4;
  }

  if (v1 < 25.0)
  {
    return 5;
  }

  if (v1 < 30.0)
  {
    return 6;
  }

  if (v1 < 35.0)
  {
    return 7;
  }

  if (v1 < 40.0)
  {
    return 8;
  }

  if (v1 < 45.0)
  {
    return 9;
  }

  if (v1 < 50.0)
  {
    return 10;
  }

  if (v1 < 55.0)
  {
    return 11;
  }

  if (v1 < 60.0)
  {
    return 12;
  }

  if (v1 < 65.0)
  {
    return 13;
  }

  if (v1 < 70.0)
  {
    return 14;
  }

  if (v1 < 75.0)
  {
    return 15;
  }

  if (v1 < 80.0)
  {
    return 16;
  }

  if (v1 < 85.0)
  {
    return 17;
  }

  if (v1 < 90.0)
  {
    return 18;
  }

  if (v1 < 95.0)
  {
    return 19;
  }

  if (v1 < 100.0)
  {
    return 20;
  }

  if (v1 < 110.0)
  {
    return 21;
  }

  if (v1 < 120.0)
  {
    return 22;
  }

  if (v1 < 130.0)
  {
    return 23;
  }

  if (v1 < 140.0)
  {
    return 24;
  }

  if (v1 < 150.0)
  {
    return 25;
  }

  if (v1 < 160.0)
  {
    return 26;
  }

  if (v1 < 170.0)
  {
    return 27;
  }

  if (v1 < 180.0)
  {
    return 28;
  }

  if (v1 < 190.0)
  {
    return 29;
  }

  if (v1 >= 200.0)
  {
    return 31;
  }

  return 30;
}

uint64_t sub_10013B658(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
{
  while (1)
  {
    while (1)
    {
      while (1)
      {
        v5 = *(this + 1);
        if (v5 >= *(this + 2) || (TagFallback = *v5, (TagFallback & 0x80000000) != 0))
        {
          TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(this);
          *(this + 8) = TagFallback;
          if (!TagFallback)
          {
            return 1;
          }
        }

        else
        {
          *(this + 8) = TagFallback;
          *(this + 1) = v5 + 1;
          if (!TagFallback)
          {
            return 1;
          }
        }

        v7 = TagFallback >> 3;
        v8 = TagFallback & 7;
        if (TagFallback >> 3 > 4)
        {
          break;
        }

        if (TagFallback >> 3 > 2)
        {
          if (v7 == 3)
          {
            if (v8 != 2)
            {
              goto LABEL_39;
            }

LABEL_66:
            v29 = *(a1 + 36);
            v30 = *(a1 + 32);
            if (v30 >= v29)
            {
              if (v29 == *(a1 + 40))
              {
                wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 24), v29 + 1);
                v29 = *(a1 + 36);
              }

              *(a1 + 36) = v29 + 1;
              operator new();
            }

            v31 = *(a1 + 24);
            *(a1 + 32) = v30 + 1;
            v32 = *(v31 + 8 * v30);
            v86[0] = 0;
            v33 = *(this + 1);
            if (v33 >= *(this + 2) || *v33 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v86))
              {
                return 0;
              }
            }

            else
            {
              v86[0] = *v33;
              *(this + 1) = v33 + 1;
            }

            v34 = *(this + 14);
            v35 = *(this + 15);
            *(this + 14) = v34 + 1;
            if (v34 >= v35)
            {
              return 0;
            }

            v36 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v86[0]);
            if (!sub_10027FA60(v32, this, v37) || *(this + 36) != 1)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v36);
            v38 = *(this + 14);
            v17 = __OFSUB__(v38, 1);
            v39 = v38 - 1;
            if (v39 < 0 == v17)
            {
              *(this + 14) = v39;
            }

            v28 = *(this + 1);
            if (v28 < *(this + 2))
            {
              v40 = *v28;
              if (v40 == 26)
              {
                goto LABEL_65;
              }

              if (v40 == 34)
              {
                goto LABEL_83;
              }
            }
          }

          else
          {
            if (v7 != 4 || v8 != 2)
            {
              goto LABEL_39;
            }

            while (2)
            {
              v41 = *(a1 + 60);
              v42 = *(a1 + 56);
              if (v42 >= v41)
              {
                if (v41 == *(a1 + 64))
                {
                  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 48), v41 + 1);
                  v41 = *(a1 + 60);
                }

                *(a1 + 60) = v41 + 1;
                operator new();
              }

              v43 = *(a1 + 48);
              *(a1 + 56) = v42 + 1;
              v44 = *(v43 + 8 * v42);
              v86[0] = 0;
              v45 = *(this + 1);
              if (v45 >= *(this + 2) || *v45 < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v86))
                {
                  return 0;
                }
              }

              else
              {
                v86[0] = *v45;
                *(this + 1) = v45 + 1;
              }

              v46 = *(this + 14);
              v47 = *(this + 15);
              *(this + 14) = v46 + 1;
              if (v46 >= v47)
              {
                return 0;
              }

              v48 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v86[0]);
              if (!sub_10013C5AC(v44, this, v49) || *(this + 36) != 1)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v48);
              v50 = *(this + 14);
              v17 = __OFSUB__(v50, 1);
              v51 = v50 - 1;
              if (v51 < 0 == v17)
              {
                *(this + 14) = v51;
              }

              v28 = *(this + 1);
              if (v28 < *(this + 2))
              {
                v52 = *v28;
                if (v52 == 34)
                {
LABEL_83:
                  *(this + 1) = v28 + 1;
                  continue;
                }

                if (v52 == 42)
                {
                  *(this + 1) = v28 + 1;
LABEL_102:
                  *(a1 + 132) |= 0x10u;
                  v53 = *(a1 + 72);
                  if (!v53)
                  {
                    operator new();
                  }

                  v86[0] = 0;
                  v54 = *(this + 1);
                  if (v54 >= *(this + 2) || *v54 < 0)
                  {
                    if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v86))
                    {
                      return 0;
                    }
                  }

                  else
                  {
                    v86[0] = *v54;
                    *(this + 1) = v54 + 1;
                  }

                  v55 = *(this + 14);
                  v56 = *(this + 15);
                  *(this + 14) = v55 + 1;
                  if (v55 >= v56)
                  {
                    return 0;
                  }

                  v57 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v86[0]);
                  if (!sub_100130FD8(v53, this, v58) || *(this + 36) != 1)
                  {
                    return 0;
                  }

                  wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v57);
                  v59 = *(this + 14);
                  v17 = __OFSUB__(v59, 1);
                  v60 = v59 - 1;
                  if (v60 < 0 == v17)
                  {
                    *(this + 14) = v60;
                  }

                  v61 = *(this + 1);
                  if (v61 < *(this + 2) && *v61 == 49)
                  {
                    *(this + 1) = v61 + 1;
LABEL_116:
                    *v86 = 0;
                    if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v86) & 1) == 0)
                    {
                      return 0;
                    }

                    *(a1 + 80) = *v86;
                    *(a1 + 132) |= 0x20u;
                    v62 = *(this + 1);
                    if (v62 < *(this + 2) && *v62 == 57)
                    {
                      *(this + 1) = v62 + 1;
LABEL_120:
                      *v86 = 0;
                      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v86) & 1) == 0)
                      {
                        return 0;
                      }

                      *(a1 + 88) = *v86;
                      v11 = *(a1 + 132) | 0x40;
                      *(a1 + 132) = v11;
                      v63 = *(this + 1);
                      if (v63 < *(this + 2) && *v63 == 66)
                      {
                        *(this + 1) = v63 + 1;
                        goto LABEL_124;
                      }
                    }
                  }
                }
              }

              break;
            }
          }
        }

        else
        {
          if (v7 != 1)
          {
            if (v7 != 2 || v8 != 2)
            {
              goto LABEL_39;
            }

            goto LABEL_52;
          }

          if (v8 != 2)
          {
            goto LABEL_39;
          }

          *(a1 + 132) |= 1u;
          v9 = *(a1 + 8);
          if (!v9)
          {
            operator new();
          }

          v86[0] = 0;
          v10 = *(this + 1);
          if (v10 >= *(this + 2) || *v10 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v86))
            {
              return 0;
            }
          }

          else
          {
            v86[0] = *v10;
            *(this + 1) = v10 + 1;
          }

          v12 = *(this + 14);
          v13 = *(this + 15);
          *(this + 14) = v12 + 1;
          if (v12 >= v13)
          {
            return 0;
          }

          v14 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v86[0]);
          if (!sub_10013C158(v9, this, v15) || *(this + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v14);
          v16 = *(this + 14);
          v17 = __OFSUB__(v16, 1);
          v18 = v16 - 1;
          if (v18 < 0 == v17)
          {
            *(this + 14) = v18;
          }

          v19 = *(this + 1);
          if (v19 < *(this + 2) && *v19 == 18)
          {
            *(this + 1) = v19 + 1;
LABEL_52:
            *(a1 + 132) |= 2u;
            v20 = *(a1 + 16);
            if (!v20)
            {
              operator new();
            }

            v86[0] = 0;
            v21 = *(this + 1);
            if (v21 >= *(this + 2) || *v21 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v86))
              {
                return 0;
              }
            }

            else
            {
              v86[0] = *v21;
              *(this + 1) = v21 + 1;
            }

            v22 = *(this + 14);
            v23 = *(this + 15);
            *(this + 14) = v22 + 1;
            if (v22 >= v23)
            {
              return 0;
            }

            v24 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v86[0]);
            if (!sub_1001309E4(v20, this, v25) || *(this + 36) != 1)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v24);
            v26 = *(this + 14);
            v17 = __OFSUB__(v26, 1);
            v27 = v26 - 1;
            if (v27 < 0 == v17)
            {
              *(this + 14) = v27;
            }

            v28 = *(this + 1);
            if (v28 < *(this + 2) && *v28 == 26)
            {
LABEL_65:
              *(this + 1) = v28 + 1;
              goto LABEL_66;
            }
          }
        }
      }

      if (TagFallback >> 3 <= 6)
      {
        break;
      }

      if (v7 == 7)
      {
        if (v8 != 1)
        {
          goto LABEL_39;
        }

        goto LABEL_120;
      }

      if (v7 == 8)
      {
        if (v8 != 2)
        {
          goto LABEL_39;
        }

        v11 = *(a1 + 132);
LABEL_124:
        *(a1 + 132) = v11 | 0x80;
        v64 = *(a1 + 96);
        if (!v64)
        {
          operator new();
        }

        v86[0] = 0;
        v65 = *(this + 1);
        if (v65 >= *(this + 2) || *v65 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v86))
          {
            return 0;
          }
        }

        else
        {
          v86[0] = *v65;
          *(this + 1) = v65 + 1;
        }

        v66 = *(this + 14);
        v67 = *(this + 15);
        *(this + 14) = v66 + 1;
        if (v66 >= v67)
        {
          return 0;
        }

        v68 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v86[0]);
        if (!sub_10014C4D0(v64, this, v69) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v68);
        v70 = *(this + 14);
        v17 = __OFSUB__(v70, 1);
        v71 = v70 - 1;
        if (v71 < 0 == v17)
        {
          *(this + 14) = v71;
        }

        v72 = *(this + 1);
        if (v72 < *(this + 2) && *v72 == 74)
        {
          goto LABEL_137;
        }
      }

      else
      {
        if (v7 != 9 || v8 != 2)
        {
          goto LABEL_39;
        }

        while (1)
        {
          v73 = *(a1 + 116);
          v74 = *(a1 + 112);
          if (v74 >= v73)
          {
            if (v73 == *(a1 + 120))
            {
              wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 104), v73 + 1);
              v73 = *(a1 + 116);
            }

            *(a1 + 116) = v73 + 1;
            operator new();
          }

          v75 = *(a1 + 104);
          *(a1 + 112) = v74 + 1;
          v76 = *(v75 + 8 * v74);
          v86[0] = 0;
          v77 = *(this + 1);
          if (v77 >= *(this + 2) || *v77 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v86))
            {
              return 0;
            }
          }

          else
          {
            v86[0] = *v77;
            *(this + 1) = v77 + 1;
          }

          v78 = *(this + 14);
          v79 = *(this + 15);
          *(this + 14) = v78 + 1;
          if (v78 >= v79)
          {
            return 0;
          }

          v80 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v86[0]);
          if (!sub_100D18144(v76, this, v81) || *(this + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v80);
          v82 = *(this + 14);
          v17 = __OFSUB__(v82, 1);
          v83 = v82 - 1;
          if (v83 < 0 == v17)
          {
            *(this + 14) = v83;
          }

          v72 = *(this + 1);
          v84 = *(this + 2);
          if (v72 >= v84 || *v72 != 74)
          {
            break;
          }

LABEL_137:
          *(this + 1) = v72 + 1;
        }

        if (v72 == v84 && (*(this + 11) || *(this + 6) == *(this + 10)))
        {
          *(this + 8) = 0;
          result = 1;
          *(this + 36) = 1;
          return result;
        }
      }
    }

    if (v7 == 5)
    {
      if (v8 != 2)
      {
        goto LABEL_39;
      }

      goto LABEL_102;
    }

    if (v7 == 6 && v8 == 1)
    {
      goto LABEL_116;
    }

LABEL_39:
    if (v8 == 4)
    {
      return 1;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(this, TagFallback, a3) & 1) == 0)
    {
      return 0;
    }
  }
}

double sub_10013C10C(uint64_t a1)
{
  *a1 = off_1024A94B8;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 128) = 0;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0;
  return result;
}

uint64_t sub_10013C158(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
{
  do
  {
    while (1)
    {
      while (1)
      {
        v5 = *(this + 1);
        if (v5 >= *(this + 2) || (TagFallback = *v5, (TagFallback & 0x80000000) != 0))
        {
          TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(this);
          *(this + 8) = TagFallback;
          if (!TagFallback)
          {
            return 1;
          }
        }

        else
        {
          *(this + 8) = TagFallback;
          *(this + 1) = v5 + 1;
          if (!TagFallback)
          {
            return 1;
          }
        }

        v7 = TagFallback >> 3;
        v8 = TagFallback & 7;
        if (TagFallback >> 3 != 3)
        {
          break;
        }

        if (v8 != 1)
        {
          goto LABEL_20;
        }

LABEL_23:
        v12 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v12) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 24) = v12;
        *(a1 + 36) |= 4u;
        if (*(this + 1) == *(this + 2) && (*(this + 11) || *(this + 6) == *(this + 10)))
        {
          *(this + 8) = 0;
          result = 1;
          *(this + 36) = 1;
          return result;
        }
      }

      if (v7 == 2)
      {
        break;
      }

      if (v7 != 1 || v8 != 1)
      {
        goto LABEL_20;
      }

      v12 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v12) & 1) == 0)
      {
        return 0;
      }

      *(a1 + 8) = v12;
      *(a1 + 36) |= 1u;
      v9 = *(this + 1);
      if (v9 < *(this + 2) && *v9 == 17)
      {
        *(this + 1) = v9 + 1;
LABEL_15:
        v12 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v12) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 16) = v12;
        *(a1 + 36) |= 2u;
        v10 = *(this + 1);
        if (v10 < *(this + 2) && *v10 == 25)
        {
          *(this + 1) = v10 + 1;
          goto LABEL_23;
        }
      }
    }

    if (v8 == 1)
    {
      goto LABEL_15;
    }

LABEL_20:
    if (v8 == 4)
    {
      return 1;
    }
  }

  while ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(this, TagFallback, a3) & 1) != 0);
  return 0;
}

uint64_t sub_10013C310(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
{
  do
  {
    while (1)
    {
      while (1)
      {
        v5 = *(this + 1);
        if (v5 >= *(this + 2) || (TagFallback = *v5, (TagFallback & 0x80000000) != 0))
        {
          TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(this);
          *(this + 8) = TagFallback;
          if (!TagFallback)
          {
            return 1;
          }
        }

        else
        {
          *(this + 8) = TagFallback;
          *(this + 1) = v5 + 1;
          if (!TagFallback)
          {
            return 1;
          }
        }

        v7 = TagFallback >> 3;
        v8 = TagFallback & 7;
        if (TagFallback >> 3 > 2)
        {
          break;
        }

        if (v7 != 1)
        {
          if (v7 != 2 || v8 != 5)
          {
            goto LABEL_21;
          }

          goto LABEL_28;
        }

        if (v8 != 5)
        {
          goto LABEL_21;
        }

        v18 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v18) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 8) = v18;
        *(a1 + 32) |= 1u;
        v11 = *(this + 1);
        if (v11 < *(this + 2) && *v11 == 21)
        {
          *(this + 1) = v11 + 1;
LABEL_28:
          v18 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v18) & 1) == 0)
          {
            return 0;
          }

          *(a1 + 12) = v18;
          *(a1 + 32) |= 2u;
          v12 = *(this + 1);
          if (v12 < *(this + 2) && *v12 == 29)
          {
            *(this + 1) = v12 + 1;
LABEL_32:
            v18 = 0;
            if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v18) & 1) == 0)
            {
              return 0;
            }

            *(a1 + 16) = v18;
            *(a1 + 32) |= 4u;
            v13 = *(this + 1);
            if (v13 < *(this + 2) && *v13 == 37)
            {
              *(this + 1) = v13 + 1;
              goto LABEL_36;
            }
          }
        }
      }

      if (v7 == 3)
      {
        if (v8 != 5)
        {
          goto LABEL_21;
        }

        goto LABEL_32;
      }

      if (v7 != 4)
      {
        break;
      }

      if (v8 != 5)
      {
        goto LABEL_21;
      }

LABEL_36:
      v18 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v18) & 1) == 0)
      {
        return 0;
      }

      *(a1 + 20) = v18;
      *(a1 + 32) |= 8u;
      v14 = *(this + 1);
      v9 = *(this + 2);
      if (v14 < v9 && *v14 == 40)
      {
        v10 = v14 + 1;
        *(this + 1) = v10;
LABEL_40:
        v18 = 0;
        if (v10 >= v9 || (v15 = *v10, (v15 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v18);
          if (!result)
          {
            return result;
          }

          v15 = v18;
          v16 = *(this + 1);
          v9 = *(this + 2);
        }

        else
        {
          v16 = v10 + 1;
          *(this + 1) = v16;
        }

        *(a1 + 24) = v15 != 0;
        *(a1 + 32) |= 0x10u;
        if (v16 == v9 && (*(this + 11) || *(this + 6) == *(this + 10)))
        {
          *(this + 8) = 0;
          result = 1;
          *(this + 36) = 1;
          return result;
        }
      }
    }

    if (v7 == 5 && (TagFallback & 7) == 0)
    {
      v10 = *(this + 1);
      v9 = *(this + 2);
      goto LABEL_40;
    }

LABEL_21:
    if (v8 == 4)
    {
      return 1;
    }
  }

  while ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(this, TagFallback, a3) & 1) != 0);
  return 0;
}

uint64_t sub_10013C5AC(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
{
  do
  {
    while (1)
    {
      while (1)
      {
        v5 = *(this + 1);
        if (v5 >= *(this + 2) || (TagFallback = *v5, (TagFallback & 0x80000000) != 0))
        {
          TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(this);
          *(this + 8) = TagFallback;
          if (!TagFallback)
          {
            return 1;
          }
        }

        else
        {
          *(this + 8) = TagFallback;
          *(this + 1) = v5 + 1;
          if (!TagFallback)
          {
            return 1;
          }
        }

        v7 = TagFallback >> 3;
        v8 = TagFallback & 7;
        if (TagFallback >> 3 <= 2)
        {
          break;
        }

        if (v7 == 3)
        {
          if (v8 != 5)
          {
            goto LABEL_20;
          }

LABEL_34:
          v15[0] = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, v15) & 1) == 0)
          {
            return 0;
          }

          *(a1 + 20) = v15[0];
          *(a1 + 32) |= 4u;
          v14 = *(this + 1);
          if (v14 < *(this + 2) && *v14 == 37)
          {
            *(this + 1) = v14 + 1;
            goto LABEL_38;
          }
        }

        else
        {
          if (v7 != 4 || v8 != 5)
          {
            goto LABEL_20;
          }

LABEL_38:
          v15[0] = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, v15) & 1) == 0)
          {
            return 0;
          }

          *(a1 + 24) = v15[0];
          *(a1 + 32) |= 8u;
          if (*(this + 1) == *(this + 2) && (*(this + 11) || *(this + 6) == *(this + 10)))
          {
            *(this + 8) = 0;
            result = 1;
            *(this + 36) = 1;
            return result;
          }
        }
      }

      if (v7 != 1)
      {
        break;
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_20;
      }

      v15[0] = 0;
      v9 = *(this + 1);
      if (v9 >= *(this + 2) || (v10 = *v9, (v10 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v15);
        if (!result)
        {
          return result;
        }

        v10 = v15[0];
      }

      else
      {
        *(this + 1) = v9 + 1;
      }

      if (v10 <= 0xC)
      {
        *(a1 + 32) |= 1u;
        *(a1 + 16) = v10;
      }

      v12 = *(this + 1);
      if (v12 < *(this + 2) && *v12 == 17)
      {
        *(this + 1) = v12 + 1;
LABEL_30:
        *v15 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v15) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 8) = *v15;
        *(a1 + 32) |= 2u;
        v13 = *(this + 1);
        if (v13 < *(this + 2) && *v13 == 29)
        {
          *(this + 1) = v13 + 1;
          goto LABEL_34;
        }
      }
    }

    if (v7 == 2 && v8 == 1)
    {
      goto LABEL_30;
    }

LABEL_20:
    if (v8 == 4)
    {
      return 1;
    }
  }

  while ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(this, TagFallback, a3) & 1) != 0);
  return 0;
}

uint64_t sub_10013C7E8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  if (!v3)
  {
    v3 = *(qword_102637D30 + 8);
  }

  *a2 = *(v3 + 8);
  *(a2 + 16) = *(v3 + 24);
  *(a2 + 24) = *(a1 + 80);
  if ((*(a1 + 132) & 2) != 0)
  {
    v4 = *(a1 + 16);
    if (!v4)
    {
      v4 = *(qword_102637D30 + 16);
    }

    if ((*(v4 + 44) & 1) == 0)
    {
      goto LABEL_38;
    }

    v5 = *(v4 + 8);
    if (!v5)
    {
      v5 = *(qword_102637C80 + 8);
    }

    v6 = *(v5 + 44);
    if (v6)
    {
      *(a2 + 40) = *(v5 + 8);
    }

    if ((v6 & 2) == 0)
    {
      goto LABEL_20;
    }

    v7 = *(v5 + 16);
    if (!v7)
    {
      v7 = *(qword_102637C78 + 16);
    }

    v8 = *(v7 + 32);
    if ((v8 & 4) != 0)
    {
      *(a2 + 64) = *(v7 + 16);
      if ((v8 & 2) == 0)
      {
LABEL_16:
        if ((v8 & 8) == 0)
        {
          goto LABEL_17;
        }

        goto LABEL_362;
      }
    }

    else if ((v8 & 2) == 0)
    {
      goto LABEL_16;
    }

    *(a2 + 56) = *(v7 + 12);
    if ((v8 & 8) == 0)
    {
LABEL_17:
      if ((v8 & 1) == 0)
      {
        goto LABEL_18;
      }

LABEL_363:
      *(a2 + 48) = *(v7 + 8);
      if ((v8 & 0x10) != 0)
      {
LABEL_19:
        *(a2 + 80) = *(v7 + 24) | 0x100;
        v6 = *(v5 + 44);
      }

LABEL_20:
      if ((v6 & 4) == 0)
      {
        goto LABEL_29;
      }

      v9 = *(v5 + 24);
      if (!v9)
      {
        v9 = *(qword_102637C78 + 24);
      }

      v10 = *(v9 + 52);
      if (v10)
      {
        *(a2 + 88) = *(v9 + 8);
        if ((v10 & 2) == 0)
        {
LABEL_25:
          if ((v10 & 4) == 0)
          {
            goto LABEL_26;
          }

          goto LABEL_367;
        }
      }

      else if ((v10 & 2) == 0)
      {
        goto LABEL_25;
      }

      *(a2 + 96) = *(v9 + 16);
      if ((v10 & 4) == 0)
      {
LABEL_26:
        if ((v10 & 8) == 0)
        {
          goto LABEL_27;
        }

        goto LABEL_368;
      }

LABEL_367:
      v145 = *(v9 + 24);
      *(a2 + 104) = v145;
      if ((v10 & 8) == 0)
      {
LABEL_27:
        if ((v10 & 0x10) == 0)
        {
          goto LABEL_29;
        }

        goto LABEL_28;
      }

LABEL_368:
      v146 = *(v9 + 32);
      *(a2 + 108) = v146;
      if ((v10 & 0x10) == 0)
      {
LABEL_29:
        if ((v6 & 8) == 0)
        {
          goto LABEL_38;
        }

        v12 = *(v5 + 32);
        if (!v12)
        {
          v12 = *(qword_102637C78 + 32);
        }

        v13 = *(v12 + 40);
        if ((v13 & 8) != 0)
        {
          *(a2 + 136) = *(v12 + 24);
          if ((v13 & 1) == 0)
          {
LABEL_34:
            if ((v13 & 0x10) == 0)
            {
              goto LABEL_35;
            }

            goto LABEL_372;
          }
        }

        else if ((v13 & 1) == 0)
        {
          goto LABEL_34;
        }

        *(a2 + 120) = *(v12 + 8);
        if ((v13 & 0x10) == 0)
        {
LABEL_35:
          if ((v13 & 4) == 0)
          {
            goto LABEL_36;
          }

LABEL_373:
          *(a2 + 132) = *(v12 + 20);
          if ((v13 & 2) != 0)
          {
LABEL_37:
            *(a2 + 128) = *(v12 + 16);
          }

LABEL_38:
          v14 = *(v4 + 24);
          if (v14)
          {
            v15 = *(v4 + 16);
            v148 = &v15[v14];
            while (1)
            {
              v16 = *v15;
              *v153 = 0;
              *&v153[4] = 0;
              v153[6] = 127;
              *&v153[8] = 0;
              *&v153[15] = 0;
              *&v153[24] = -1;
              *&v153[32] = -1;
              *&v154 = -1;
              *(&v154 + 1) = 0x7FF8000000000000;
              *v155 = -1082130432;
              *&v155[8] = xmmword_101CA73B0;
              *&v155[24] = xmmword_101CA73B0;
              v156 = xmmword_101CA73B0;
              LOBYTE(__p) = 1;
              v158 = -1;
              v159 = -1;
              v160 = xmmword_101CA73B0;
              v161 = 0;
              v162 = 0;
              v163 = -1082130432;
              v164 = 0;
              v17 = *(v16 + 112);
              if (v17)
              {
                v18 = *(v16 + 8);
                if (!v18)
                {
                  v18 = *(qword_102637C58 + 8);
                }

                if (!sub_100285344(v18, v153))
                {
LABEL_357:
                  sub_1002C827C(&v162, 0);
                  return 0;
                }

                v17 = *(v16 + 112);
              }

              if ((v17 & 2) != 0)
              {
                v20 = *(v16 + 16);
                if (!v20)
                {
                  v20 = *(qword_102637C58 + 16);
                }

                v21 = *(v20 + 96);
                if (v21)
                {
                  *v165 = *(v20 + 88);
                  sub_10013E25C(v165, &v153[8]);
                  v21 = *(v20 + 96);
                }

                if ((v21 & 2) != 0)
                {
                  v35 = *(v20 + 8);
                  if (!v35)
                  {
                    v35 = *(qword_102637C10 + 8);
                  }

                  v36 = *(v35 + 16);
                  if ((v36 & 2) != 0)
                  {
                    v153[10] = *(v35 + 9);
                    if ((v36 & 4) != 0)
                    {
                      goto LABEL_144;
                    }

LABEL_113:
                    if ((v36 & 1) == 0)
                    {
                      goto LABEL_114;
                    }

LABEL_145:
                    v153[9] = *(v35 + 8);
                    if ((v36 & 8) == 0)
                    {
                      goto LABEL_46;
                    }
                  }

                  else
                  {
                    if ((v36 & 4) == 0)
                    {
                      goto LABEL_113;
                    }

LABEL_144:
                    v153[11] = *(v35 + 10);
                    if (v36)
                    {
                      goto LABEL_145;
                    }

LABEL_114:
                    if ((v36 & 8) == 0)
                    {
                      goto LABEL_46;
                    }
                  }

                  v153[12] = *(v35 + 11);
                  goto LABEL_46;
                }

                if ((v21 & 4) != 0)
                {
                  v40 = *(v20 + 16);
                  if (!v40)
                  {
                    v40 = *(qword_102637C10 + 16);
                  }

                  v41 = *(v40 + 20);
                  if ((v41 & 0x10) != 0)
                  {
                    v153[13] = *(v40 + 12);
                    if ((v41 & 4) == 0)
                    {
                      goto LABEL_141;
                    }
                  }

                  else if ((v41 & 4) == 0)
                  {
LABEL_141:
                    if ((v41 & 8) == 0)
                    {
                      goto LABEL_156;
                    }

                    goto LABEL_155;
                  }

                  v153[11] = *(v40 + 10);
                  if ((v41 & 8) == 0)
                  {
                    goto LABEL_156;
                  }

LABEL_155:
                  v153[12] = *(v40 + 11);
                  goto LABEL_156;
                }

                if ((v21 & 8) != 0)
                {
                  v40 = *(v20 + 24);
                  if (!v40)
                  {
                    v40 = *(qword_102637C10 + 24);
                  }

                  v41 = *(v40 + 16);
                  if ((v41 & 4) != 0)
                  {
                    v153[11] = *(v40 + 10);
                    if ((v41 & 2) == 0)
                    {
                      goto LABEL_151;
                    }
                  }

                  else if ((v41 & 2) == 0)
                  {
LABEL_151:
                    if ((v41 & 8) == 0)
                    {
                      goto LABEL_169;
                    }

LABEL_168:
                    v153[12] = *(v40 + 11);
                    goto LABEL_169;
                  }

                  v153[10] = *(v40 + 9);
                  if ((v41 & 8) == 0)
                  {
                    goto LABEL_169;
                  }

                  goto LABEL_168;
                }

                if ((v21 & 0x10) != 0)
                {
                  v42 = *(v20 + 32);
                  if (!v42)
                  {
                    v42 = *(qword_102637C10 + 32);
                  }

                  v43 = *(v42 + 20);
                  if (v43)
                  {
                    v153[9] = *(v42 + 8);
                    if ((v43 & 4) != 0)
                    {
                      goto LABEL_179;
                    }

LABEL_162:
                    if ((v43 & 8) == 0)
                    {
                      goto LABEL_163;
                    }

LABEL_180:
                    v153[12] = *(v42 + 11);
                    if ((v43 & 2) != 0)
                    {
                      goto LABEL_181;
                    }

LABEL_164:
                    if ((v43 & 0x10) == 0)
                    {
                      goto LABEL_46;
                    }
                  }

                  else
                  {
                    if ((v43 & 4) == 0)
                    {
                      goto LABEL_162;
                    }

LABEL_179:
                    v153[11] = *(v42 + 10);
                    if ((v43 & 8) != 0)
                    {
                      goto LABEL_180;
                    }

LABEL_163:
                    if ((v43 & 2) == 0)
                    {
                      goto LABEL_164;
                    }

LABEL_181:
                    v153[10] = *(v42 + 9);
                    if ((v43 & 0x10) == 0)
                    {
                      goto LABEL_46;
                    }
                  }

                  v153[13] = *(v42 + 12);
                  goto LABEL_46;
                }

                if ((v21 & 0x20) != 0)
                {
                  v44 = *(v20 + 40);
                  if (!v44)
                  {
                    v44 = *(qword_102637C10 + 40);
                  }

                  v45 = *(v44 + 16);
                  if ((v45 & 2) != 0)
                  {
                    v153[10] = *(v44 + 9);
                    if (v45)
                    {
                      goto LABEL_191;
                    }

LABEL_175:
                    if ((v45 & 8) == 0)
                    {
                      goto LABEL_176;
                    }

LABEL_192:
                    v153[12] = *(v44 + 11);
                    if ((v45 & 4) == 0)
                    {
                      goto LABEL_46;
                    }
                  }

                  else
                  {
                    if ((v45 & 1) == 0)
                    {
                      goto LABEL_175;
                    }

LABEL_191:
                    v153[9] = *(v44 + 8);
                    if ((v45 & 8) != 0)
                    {
                      goto LABEL_192;
                    }

LABEL_176:
                    if ((v45 & 4) == 0)
                    {
                      goto LABEL_46;
                    }
                  }

                  v153[11] = *(v44 + 10);
                  goto LABEL_46;
                }

                if ((v21 & 0x40) != 0)
                {
                  v46 = *(v20 + 48);
                  if (!v46)
                  {
                    v46 = *(qword_102637C10 + 48);
                  }

                  v47 = *(v46 + 16);
                  if ((v47 & 4) != 0)
                  {
                    v153[11] = *(v46 + 10);
                    if ((v47 & 8) != 0)
                    {
                      goto LABEL_201;
                    }

LABEL_187:
                    if ((v47 & 1) == 0)
                    {
                      goto LABEL_188;
                    }

LABEL_202:
                    v153[9] = *(v46 + 8);
                    if ((v47 & 2) == 0)
                    {
                      goto LABEL_46;
                    }
                  }

                  else
                  {
                    if ((v47 & 8) == 0)
                    {
                      goto LABEL_187;
                    }

LABEL_201:
                    v153[12] = *(v46 + 11);
                    if (v47)
                    {
                      goto LABEL_202;
                    }

LABEL_188:
                    if ((v47 & 2) == 0)
                    {
                      goto LABEL_46;
                    }
                  }

                  v153[10] = *(v46 + 9);
                  goto LABEL_46;
                }

                if ((v21 & 0x80) != 0)
                {
                  v40 = *(v20 + 56);
                  if (!v40)
                  {
                    v40 = *(qword_102637C10 + 56);
                  }

                  v41 = *(v40 + 16);
                  if ((v41 & 8) != 0)
                  {
                    v153[12] = *(v40 + 11);
                  }

                  if ((v41 & 4) != 0)
                  {
                    v153[11] = *(v40 + 10);
                  }

LABEL_156:
                  if ((v41 & 2) != 0)
                  {
                    v153[10] = *(v40 + 9);
                  }

LABEL_169:
                  if (v41)
                  {
                    v153[9] = *(v40 + 8);
                  }

                  goto LABEL_46;
                }

                if ((v21 & 0x100) != 0)
                {
                  v48 = *(v20 + 64);
                  if (!v48)
                  {
                    v48 = *(qword_102637C10 + 64);
                  }

                  sub_1002C834C(v48, &v153[9]);
                }

                else
                {
                  if ((v21 & 0x400) == 0)
                  {
                    goto LABEL_357;
                  }

                  v22 = *(v20 + 80);
                  if (!v22)
                  {
                    v22 = *(qword_102637C10 + 80);
                  }

                  sub_1016B2068(v22, &v153[9]);
                }
              }

LABEL_46:
              v19 = *(v16 + 112);
              if ((v19 & 4) != 0)
              {
                *&v153[24] = *(v16 + 24);
                if ((v19 & 8) == 0)
                {
LABEL_48:
                  if ((v19 & 0x10) == 0)
                  {
                    goto LABEL_49;
                  }

                  goto LABEL_69;
                }
              }

              else if ((v19 & 8) == 0)
              {
                goto LABEL_48;
              }

              *&v153[32] = *(v16 + 32);
              if ((v19 & 0x10) == 0)
              {
LABEL_49:
                if ((v19 & 0x20) == 0)
                {
                  goto LABEL_78;
                }

                goto LABEL_70;
              }

LABEL_69:
              *&v154 = *(v16 + 40);
              if ((v19 & 0x20) == 0)
              {
                goto LABEL_78;
              }

LABEL_70:
              v23 = *(v16 + 48);
              if (!v23)
              {
                v23 = *(qword_102637C58 + 48);
              }

              v24 = *(v23 + 32);
              if (v24)
              {
                *(&v154 + 1) = *(v23 + 8);
              }

              if ((v24 & 2) != 0)
              {
                v25 = *(v23 + 16);
                if (v25 < 1.17549435e-38 || v25 > 3.40282347e38)
                {
                  goto LABEL_357;
                }

                v26 = v25;
                *v155 = v26;
              }

LABEL_78:
              if ((v19 & 0x40) != 0)
              {
                v27 = *(v16 + 56);
                if (!v27)
                {
                  v27 = *(qword_102637C58 + 56);
                }

                v28 = *(v27 + 32);
                if (v28)
                {
                  *&v155[8] = *(v27 + 8);
                }

                if ((v28 & 2) != 0)
                {
                  *&v155[16] = *(v27 + 16);
                }
              }

              if ((v19 & 0x800) != 0)
              {
                v29 = *(v16 + 88);
                if (!v29)
                {
                  v29 = *(qword_102637C58 + 88);
                }

                v30 = *(v29 + 32);
                if (v30)
                {
                  *&v155[24] = *(v29 + 8);
                }

                if ((v30 & 2) != 0)
                {
                  *&v155[32] = *(v29 + 16);
                }

                v31 = *(v16 + 96);
                if (!v31)
                {
                  v31 = *(qword_102637C58 + 96);
                }

                v32 = *(v31 + 32);
                if (v32)
                {
                  *&v156 = *(v31 + 8);
                  if ((v32 & 2) == 0)
                  {
LABEL_96:
                    if ((v32 & 4) == 0)
                    {
                      goto LABEL_98;
                    }

LABEL_97:
                    LOBYTE(__p) = *(v31 + 24);
                    goto LABEL_98;
                  }
                }

                else if ((v32 & 2) == 0)
                {
                  goto LABEL_96;
                }

                *(&v156 + 1) = *(v31 + 16);
                if ((v32 & 4) != 0)
                {
                  goto LABEL_97;
                }
              }

LABEL_98:
              if ((v19 & 0x80) == 0)
              {
                goto LABEL_107;
              }

              v33 = *(v16 + 64);
              if (!v33)
              {
                v33 = *(qword_102637C58 + 64);
              }

              v34 = *(v33 + 48);
              if ((v34 & 0x10) != 0)
              {
                v161 = *(v33 + 40);
                if ((v34 & 2) == 0)
                {
LABEL_103:
                  if ((v34 & 1) == 0)
                  {
                    goto LABEL_104;
                  }

                  goto LABEL_121;
                }
              }

              else if ((v34 & 2) == 0)
              {
                goto LABEL_103;
              }

              v159 = *(v33 + 16);
              if ((v34 & 1) == 0)
              {
LABEL_104:
                if ((v34 & 4) == 0)
                {
                  goto LABEL_105;
                }

                goto LABEL_122;
              }

LABEL_121:
              v158 = *(v33 + 8);
              if ((v34 & 4) == 0)
              {
LABEL_105:
                if ((v34 & 8) == 0)
                {
                  goto LABEL_107;
                }

LABEL_106:
                *(&v160 + 1) = *(v33 + 32);
                goto LABEL_107;
              }

LABEL_122:
              *&v160 = *(v33 + 24);
              if ((v34 & 8) != 0)
              {
                goto LABEL_106;
              }

LABEL_107:
              if ((v19 & 0x100) != 0)
              {
                operator new();
              }

              v37 = *(v16 + 112);
              if ((v37 & 0x200) != 0)
              {
                v163 = *(v16 + 80);
                if ((v37 & 0x1000) != 0)
                {
LABEL_129:
                  HIBYTE(v164) = *(v16 + 104);
                  if ((v37 & 0x400) == 0)
                  {
                    goto LABEL_135;
                  }

                  goto LABEL_130;
                }
              }

              else if ((v37 & 0x1000) != 0)
              {
                goto LABEL_129;
              }

              if ((v37 & 0x400) == 0)
              {
                goto LABEL_135;
              }

LABEL_130:
              v38 = *(v16 + 84);
              LOBYTE(v164) = 0;
              if (v38 == 3)
              {
                v39 = 1;
                goto LABEL_134;
              }

              if (v38 == 4)
              {
                v39 = 2;
LABEL_134:
                LOBYTE(v164) = v39;
              }

LABEL_135:
              sub_1002C7F0C((a2 + 152), v153);
              sub_1002C827C(&v162, 0);
              if (++v15 == v148)
              {
                goto LABEL_207;
              }
            }
          }

          goto LABEL_207;
        }

LABEL_372:
        *(a2 + 144) = *(v12 + 32);
        if ((v13 & 4) == 0)
        {
LABEL_36:
          if ((v13 & 2) == 0)
          {
            goto LABEL_38;
          }

          goto LABEL_37;
        }

        goto LABEL_373;
      }

LABEL_28:
      v11 = *(v9 + 40);
      *(a2 + 112) = v11;
      goto LABEL_29;
    }

LABEL_362:
    *(a2 + 72) = *(v7 + 20);
    if ((v8 & 1) == 0)
    {
LABEL_18:
      if ((v8 & 0x10) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_19;
    }

    goto LABEL_363;
  }

LABEL_207:
  v49 = *(a1 + 32);
  if (!v49)
  {
LABEL_292:
    v102 = *(a1 + 56);
    if (v102)
    {
      v103 = *(a1 + 48);
      v104 = *(a2 + 208);
      v105 = 8 * v102;
      do
      {
        v106 = *v103;
        v107 = *(*v103 + 20);
        *v153 = *(*v103 + 8);
        *&v153[8] = v107;
        *v165 = *(v106 + 16);
        sub_10013E25C(v165, &v153[16]);
        v108 = *(a2 + 216);
        if (v104 >= v108)
        {
          v110 = *(a2 + 200);
          v111 = 0xAAAAAAAAAAAAAAABLL * ((v104 - v110) >> 3);
          v112 = v111 + 1;
          if (v111 + 1 > 0xAAAAAAAAAAAAAAALL)
          {
            sub_10028C64C();
          }

          v113 = 0xAAAAAAAAAAAAAAABLL * ((v108 - v110) >> 3);
          if (2 * v113 > v112)
          {
            v112 = 2 * v113;
          }

          if (v113 >= 0x555555555555555)
          {
            v114 = 0xAAAAAAAAAAAAAAALL;
          }

          else
          {
            v114 = v112;
          }

          if (v114)
          {
            sub_10013E290(a2 + 200, v114);
          }

          v115 = 8 * ((v104 - v110) >> 3);
          *v115 = *v153;
          *(v115 + 16) = *&v153[16];
          v104 = v115 + 24;
          v116 = *(a2 + 200);
          v117 = *(a2 + 208) - v116;
          v118 = 24 * v111 - v117;
          memcpy((v115 - v117), v116, v117);
          v119 = *(a2 + 200);
          *(a2 + 200) = v118;
          *(a2 + 208) = v104;
          *(a2 + 216) = 0;
          if (v119)
          {
            operator delete(v119);
          }
        }

        else
        {
          v109 = *v153;
          *(v104 + 16) = *&v153[16];
          *v104 = v109;
          v104 += 24;
        }

        *(a2 + 208) = v104;
        ++v103;
        v105 -= 8;
      }

      while (v105);
    }

    if ((*(a1 + 132) & 0x10) != 0)
    {
      v120 = *(a1 + 72);
      if (!v120)
      {
        v120 = *(qword_102637D30 + 72);
      }

      if (*(v120 + 52))
      {
        operator new();
      }

      if ((*(v120 + 52) & 4) != 0)
      {
        operator new();
      }

      if ((*(v120 + 52) & 8) != 0)
      {
        operator new();
      }

      if ((*(v120 + 52) & 2) != 0)
      {
        operator new();
      }

      if ((*(v120 + 52) & 0x10) != 0)
      {
        operator new();
      }
    }

    if ((*(a1 + 132) & 0x80) != 0)
    {
      operator new();
    }

    v121 = *(a1 + 112);
    if (!v121)
    {
      return 1;
    }

    v122 = *(a1 + 104);
    v123 = 8 * v121;
    v152 = vdupq_n_s64(0x7FF8000000000000uLL);
    while (1)
    {
      v124 = *v122;
      *v153 = 0;
      *&v153[4] = 0;
      v153[6] = 127;
      *&v153[8] = 0;
      *&v153[16] = v152;
      *&v153[32] = 0x7FF8000000000000;
      v125 = *(v124 + 36);
      if (v125)
      {
        v126 = *(v124 + 8);
        if (!v126)
        {
          v126 = *(qword_102637D20 + 8);
        }

        result = sub_100285344(v126, v153);
        if (!result)
        {
          break;
        }
      }

      if ((v125 & 2) != 0)
      {
        *v165 = *(v124 + 16);
        sub_10013E25C(v165, &v153[8]);
      }

      if ((v125 & 4) != 0)
      {
        v128 = *(v124 + 20);
        v153[9] = 0;
        v129 = v128 - 1;
        if (v129 <= 2)
        {
          v153[9] = v129 + 1;
        }
      }

      if ((v125 & 8) != 0)
      {
        v130 = *(v124 + 24);
        if (!v130)
        {
          v130 = *(qword_102637D20 + 24);
        }

        *&v153[16] = *(v130 + 8);
        *&v153[32] = *(v130 + 24);
      }

      v131 = *(a2 + 280);
      v132 = *(a2 + 288);
      if (v131 >= v132)
      {
        v134 = *(a2 + 272);
        v135 = 0xCCCCCCCCCCCCCCCDLL * ((v131 - v134) >> 3);
        v136 = v135 + 1;
        if (v135 + 1 > 0x666666666666666)
        {
          sub_10028C64C();
        }

        v137 = 0xCCCCCCCCCCCCCCCDLL * ((v132 - v134) >> 3);
        if (2 * v137 > v136)
        {
          v136 = 2 * v137;
        }

        if (v137 >= 0x333333333333333)
        {
          v138 = 0x666666666666666;
        }

        else
        {
          v138 = v136;
        }

        if (v138)
        {
          sub_1016B219C(a2 + 272, v138);
        }

        v139 = 40 * v135;
        *v139 = *v153;
        *(v139 + 16) = *&v153[16];
        *(v139 + 32) = *&v153[32];
        v133 = 40 * v135 + 40;
        v140 = *(a2 + 272);
        v141 = *(a2 + 280) - v140;
        v142 = 40 * v135 - v141;
        memcpy((v139 - v141), v140, v141);
        v143 = *(a2 + 272);
        *(a2 + 272) = v142;
        *(a2 + 280) = v133;
        *(a2 + 288) = 0;
        if (v143)
        {
          operator delete(v143);
        }
      }

      else
      {
        *v131 = *v153;
        *(v131 + 16) = *&v153[16];
        *(v131 + 32) = *&v153[32];
        v133 = v131 + 40;
      }

      *(a2 + 280) = v133;
      ++v122;
      v123 -= 8;
      if (!v123)
      {
        return 1;
      }
    }

    return result;
  }

  v50 = *(a1 + 24);
  v147 = &v50[v49];
  v51 = 0uLL;
  v52 = vdupq_n_s64(0x7FF8000000000000uLL);
  v53 = vneg_f32(0x3F0000003FLL);
  v151 = v52;
  while (1)
  {
    v149 = v50;
    v54 = *v50;
    *v153 = 0;
    *&v153[4] = 0;
    v153[6] = 127;
    *&v153[8] = 0x7FF8000000000000;
    v153[16] = 0;
    *&v153[24] = v51;
    v154 = v51;
    *v155 = v52;
    *&v155[16] = v52;
    *&v155[32] = v53;
    *&v156 = 0;
    WORD4(v156) = 0;
    v158 = 0;
    v159 = 0;
    __p = 0;
    LOBYTE(v160) = 0;
    v55 = *(v54 + 172);
    if ((v55 & 1) == 0)
    {
      goto LABEL_214;
    }

    v56 = *(v54 + 8);
    if (!v56)
    {
      v56 = *(qword_102637CA8 + 8);
    }

    if (!sub_100285344(v56, v153))
    {
      break;
    }

    v55 = *(v54 + 172);
LABEL_214:
    if ((v55 & 4) != 0)
    {
      v57 = *(v54 + 56) - 1;
      if (v57 > 5)
      {
        break;
      }

      v153[16] = 0x30404020100uLL >> (8 * v57);
    }

    v58 = *(v54 + 32);
    if (v58)
    {
      v59 = *(v54 + 24);
      v60 = 8 * v58;
      do
      {
        v61 = *v59;
        if ((*(*v59 + 28) & 2) != 0)
        {
          v65 = *(v61 + 16);
          if (!v65)
          {
            v65 = *(qword_102637C98 + 16);
          }

          v62 = v65[1];
          v63 = v65[2];
          v64 = v65[3];
        }

        else
        {
          v62 = 0x7FF8000000000000;
          v63 = 0x7FF8000000000000;
          v64 = 0x7FF8000000000000;
        }

        v66 = *(v61 + 8);
        v67 = *&v153[32];
        if (*&v153[32] >= v154)
        {
          v69 = *&v153[24];
          v70 = *&v153[32] - *&v153[24];
          v71 = (*&v153[32] - *&v153[24]) >> 5;
          v72 = v71 + 1;
          if ((v71 + 1) >> 59)
          {
            sub_10028C64C();
          }

          v73 = v154 - *&v153[24];
          if ((v154 - *&v153[24]) >> 4 > v72)
          {
            v72 = v73 >> 4;
          }

          if (v73 >= 0x7FFFFFFFFFFFFFE0)
          {
            v72 = 0x7FFFFFFFFFFFFFFLL;
          }

          if (v72)
          {
            sub_1003F6B14(&v153[24], v72);
          }

          v74 = (*&v153[32] - *&v153[24]) >> 5;
          v75 = (32 * v71);
          *v75 = v66;
          v75[1] = v62;
          v75[2] = v63;
          v75[3] = v64;
          v68 = 32 * v71 + 32;
          v76 = 32 * v71 - 32 * v74;
          memcpy(&v75[-4 * v74], v69, v70);
          v77 = *&v153[24];
          *&v153[24] = v76;
          *&v153[32] = v68;
          *&v154 = 0;
          if (v77)
          {
            operator delete(v77);
          }
        }

        else
        {
          **&v153[32] = v66;
          v67[1] = v62;
          v68 = (v67 + 4);
          v67[2] = v63;
          v67[3] = v64;
        }

        *&v153[32] = v68;
        ++v59;
        v60 -= 8;
      }

      while (v60);
      v55 = *(v54 + 172);
    }

    *v155 = *(v54 + 48);
    *&v155[8] = *(v54 + 64);
    *&v155[32] = *(v54 + 60);
    *&v155[36] = *(v54 + 80);
    if ((v55 & 0x200) != 0)
    {
      v78 = *(v54 + 84) - 1;
      if (v78 > 3)
      {
        break;
      }

      LOBYTE(v156) = 0x2010000u >> (8 * v78);
    }

    if ((v55 & 0x400) != 0)
    {
      v79 = *(v54 + 88) - 1;
      if (v79 > 3)
      {
        break;
      }

      BYTE2(v156) = 0x2010000u >> (8 * v79);
    }

    if ((v55 & 0x800) != 0)
    {
      v80 = *(v54 + 92) - 1;
      if (v80 > 3)
      {
        break;
      }

      BYTE4(v156) = 0x2010000u >> (8 * v80);
    }

    if ((v55 & 0x1000) != 0)
    {
      v81 = *(v54 + 96) - 1;
      if (v81 > 3)
      {
        break;
      }

      BYTE6(v156) = 0x2010000u >> (8 * v81);
    }

    if ((v55 & 0x2000) != 0)
    {
      v82 = *(v54 + 100) - 1;
      if (v82 > 3)
      {
        break;
      }

      BYTE8(v156) = 0x2010000u >> (8 * v82);
    }

    if ((v55 & 0x10000) != 0)
    {
      v83 = *(v54 + 136) - 1;
      if (v83 > 3)
      {
        break;
      }

      BYTE1(v156) = 0x2010000u >> (8 * v83);
    }

    if ((v55 & 0x20000) != 0)
    {
      v84 = *(v54 + 140) - 1;
      if (v84 > 3)
      {
        break;
      }

      BYTE3(v156) = 0x2010000u >> (8 * v84);
    }

    if ((v55 & 0x40000) != 0)
    {
      v85 = *(v54 + 144) - 1;
      if (v85 > 3)
      {
        break;
      }

      BYTE5(v156) = 0x2010000u >> (8 * v85);
    }

    if ((v55 & 0x80000) != 0)
    {
      v86 = *(v54 + 148) - 1;
      if (v86 > 3)
      {
        break;
      }

      BYTE7(v156) = 0x2010000u >> (8 * v86);
    }

    if ((v55 & 0x100000) != 0)
    {
      v87 = *(v54 + 160) - 1;
      if (v87 > 3)
      {
        break;
      }

      BYTE9(v156) = 0x2010000u >> (8 * v87);
    }

    v88 = *(v54 + 112);
    if (v88)
    {
      v89 = *(v54 + 104);
      v90 = 8 * v88;
      do
      {
        v91 = *v89;
        v165[0] = 0;
        *&v165[4] = 0;
        *&v165[8] = v151;
        *&v165[24] = 0x7FF8000000000000;
        if (*(v91 + 44))
        {
          if (*(v91 + 28) > 2u)
          {
            goto LABEL_351;
          }

          *&v165[4] = *(v91 + 28);
          *&v165[8] = *(v91 + 8);
          *&v165[24] = *(v91 + 32);
          v166[0] = *(v91 + 24);
          sub_10013E25C(v166, v165);
        }

        v92 = v158;
        if (v158 >= v159)
        {
          v94 = (v158 - __p) >> 5;
          v95 = v94 + 1;
          if ((v94 + 1) >> 59)
          {
            sub_10028C64C();
          }

          v96 = v159 - __p;
          if ((v159 - __p) >> 4 > v95)
          {
            v95 = v96 >> 4;
          }

          if (v96 >= 0x7FFFFFFFFFFFFFE0)
          {
            v97 = 0x7FFFFFFFFFFFFFFLL;
          }

          else
          {
            v97 = v95;
          }

          if (v97)
          {
            sub_100285A14(&__p, v97);
          }

          v98 = (32 * v94);
          *v98 = *v165;
          v98[1] = *&v165[16];
          v93 = 32 * v94 + 32;
          v99 = (32 * v94 - (v158 - __p));
          memcpy(v98 - (v158 - __p), __p, v158 - __p);
          v100 = __p;
          __p = v99;
          v158 = v93;
          v159 = 0;
          if (v100)
          {
            operator delete(v100);
          }
        }

        else
        {
          *v158 = *v165;
          *(v92 + 16) = *&v165[16];
          v93 = v92 + 32;
        }

        v158 = v93;
        ++v89;
        v90 -= 8;
      }

      while (v90);
    }

    sub_100285480(a2 + 176, v153);
    if (__p)
    {
      v158 = __p;
      operator delete(__p);
    }

    v101 = *(&v154 + 1);
    *(&v154 + 1) = 0;
    if (v101)
    {
      operator delete();
    }

    if (*&v153[24])
    {
      *&v153[32] = *&v153[24];
      operator delete(*&v153[24]);
    }

    v50 = v149 + 1;
    v51 = 0uLL;
    v52 = v151;
    if (v149 + 1 == v147)
    {
      goto LABEL_292;
    }
  }

LABEL_351:
  if (__p)
  {
    v158 = __p;
    operator delete(__p);
  }

  v144 = *(&v154 + 1);
  *(&v154 + 1) = 0;
  if (v144)
  {
    operator delete();
  }

  if (*&v153[24])
  {
    *&v153[32] = *&v153[24];
    operator delete(*&v153[24]);
  }

  return 0;
}