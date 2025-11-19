void *sub_1000203B0(void *result)
{
  if (qword_102637EB8 != result)
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

    v4 = v1[3];
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }

    v5 = v1[4];
    if (v5)
    {
      (*(*v5 + 8))(v5);
    }

    v6 = v1[6];
    if (v6)
    {
      (*(*v6 + 8))(v6);
    }

    v7 = v1[8];
    if (v7)
    {
      (*(*v7 + 8))(v7);
    }

    v8 = v1[9];
    if (v8)
    {
      (*(*v8 + 8))(v8);
    }

    v9 = v1[10];
    if (v9)
    {
      (*(*v9 + 8))(v9);
    }

    v10 = v1[11];
    if (v10)
    {
      (*(*v10 + 8))(v10);
    }

    v11 = v1[12];
    if (v11)
    {
      (*(*v11 + 8))(v11);
    }

    v12 = v1[13];
    if (v12)
    {
      (*(*v12 + 8))(v12);
    }

    result = v1[14];
    if (result)
    {
      v13 = *(*result + 8);

      return v13();
    }
  }

  return result;
}

BOOL sub_100020608(double a1, double a2)
{
  v2 = fabs(a1) <= 90.0;
  if (a2 > 180.0)
  {
    v2 = 0;
  }

  return a2 >= -180.0 && v2;
}

double sub_100020640(uint64_t a1, double *a2)
{
  v2 = *(a1 + 256);
  if ((v2 < 0 || ((v2 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 > 0x3FE) && (v2 - 1) > 0xFFFFFFFFFFFFELL)
  {
    return CFAbsoluteTimeGetCurrent();
  }

  v5 = *(a1 + 248);
  v6 = v5 < 0 || ((v5 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 > 0x3FE;
  if (v6 && (v5 - 1) > 0xFFFFFFFFFFFFELL)
  {
    return CFAbsoluteTimeGetCurrent();
  }

  else
  {
    return *(a1 + 248) + *a2 - *(a1 + 256);
  }
}

uint64_t sub_1000206B4()
{
  if (qword_102656DB0 != -1)
  {
    sub_1018BD90C();
  }

  return qword_102636F28;
}

uint64_t sub_1000206EC(uint64_t a1)
{
  *(a1 + 128) |= 0x800u;
  if (!*(a1 + 80))
  {
    operator new();
  }

  return *(a1 + 80);
}

BOOL sub_10002076C(_BOOL8 result, uint64_t a2)
{
  if (a2)
  {
    v3 = result;
    *(a2 + 36) |= 1u;
    v4 = *(a2 + 8);
    if (!v4)
    {
      operator new();
    }

    if ((sub_100020B18((result + 16), v4, 1) & 1) == 0)
    {
      if (qword_1025D4730 != -1)
      {
        sub_101B83560();
      }

      v5 = qword_1025D4738;
      if (os_log_type_enabled(qword_1025D4738, OS_LOG_TYPE_ERROR))
      {
        *v10 = 0;
        _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_ERROR, "Error: Failed to convert PredictedGnssAvailability mach continuous time to protobuf", v10, 2u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_101B8B944();
      }

      (*(*v4 + 32))(v4);
    }

    v6 = sub_100020A20((v3 + 4));
    if (!sub_10041ECF8(v6))
    {
      sub_101882D68();
    }

    v7 = *(a2 + 36);
    *(a2 + 24) = v6;
    v8 = *(v3 + 8);
    *(a2 + 36) = v7 | 6;
    *(a2 + 16) = v8;
    v9 = sub_100020928(v3);
    result = sub_10041ECF8(v9);
    if (!result)
    {
      sub_101882D94();
    }

    *(a2 + 36) |= 8u;
    *(a2 + 28) = v9;
  }

  return result;
}

double sub_1000208FC(uint64_t a1)
{
  *a1 = &off_102453FD0;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  return result;
}

uint64_t sub_100020928(int *a1)
{
  if (*a1 < 3)
  {
    return (*a1 + 1);
  }

  if (qword_1025D4730 != -1)
  {
    sub_101B83560();
  }

  v3 = qword_1025D4738;
  if (os_log_type_enabled(qword_1025D4738, OS_LOG_TYPE_ERROR))
  {
    v4 = *a1;
    v6[0] = 67240192;
    v6[1] = v4;
    _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_ERROR, "Received unhandled gnss availability meas source,%{public}d", v6, 8u);
  }

  v5 = sub_10000A100(121, 0);
  result = 0;
  if (v5)
  {
    sub_101B8605C(a1);
    return 0;
  }

  return result;
}

uint64_t sub_100020A20(int *a1)
{
  if (*a1 < 3)
  {
    return (*a1 + 1);
  }

  if (qword_1025D4730 != -1)
  {
    sub_101B83560();
  }

  v3 = qword_1025D4738;
  if (os_log_type_enabled(qword_1025D4738, OS_LOG_TYPE_ERROR))
  {
    v4 = *a1;
    v6[0] = 67240192;
    v6[1] = v4;
    _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_ERROR, "Received unhandled gnss availability prediction state,%{public}d", v6, 8u);
  }

  v5 = sub_10000A100(121, 0);
  result = 0;
  if (v5)
  {
    sub_101B85F70(a1);
    return 0;
  }

  return result;
}

uint64_t sub_100020B18(double *a1, uint64_t a2, char a3)
{
  if (!a2)
  {
    if (qword_1025D4730 != -1)
    {
      sub_101B83560();
    }

    v11 = qword_1025D4738;
    if (os_log_type_enabled(qword_1025D4738, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_ERROR, "pTimeStamp,Invalid pointer", buf, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_101B87128();
    }

    return 0;
  }

  v4 = *a1;
  v5 = *a1 & 0x7FFFFFFFFFFFFFFFLL;
  if ((*a1 <= -1 || (v5 - 0x10000000000000) >> 53 >= 0x3FF) && (*a1 - 1) >= 0xFFFFFFFFFFFFFLL && v5 != 0)
  {
    if (qword_1025D4730 != -1)
    {
      sub_101B83560();
    }

    v12 = qword_1025D4738;
    if (os_log_type_enabled(qword_1025D4738, OS_LOG_TYPE_ERROR))
    {
      v13 = *a1;
      *buf = 134349056;
      v23 = v13;
      _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_ERROR, "Mach continuous time cannot be negative or infinite: %{public}lf", buf, 0xCu);
    }

    if (sub_10000A100(121, 0))
    {
      sub_101B86E54();
    }

    return 0;
  }

  *(a2 + 36) |= 4u;
  *(a2 + 24) = v4;
  if ((a3 & 1) == 0)
  {
    if (!qword_102664AD0)
    {
      operator new();
    }

    v21 = 0xBFF0000000000000;
    v10 = sub_1002A879C(qword_102664AD0, a1, &v21);
    if (v10)
    {
      v15 = v21;
      *(a2 + 36) |= 2u;
      *(a2 + 16) = v15;
    }

    else
    {
      if (qword_1025D4730 != -1)
      {
        sub_101B83ACC();
      }

      v16 = qword_1025D4738;
      if (os_log_type_enabled(qword_1025D4738, OS_LOG_TYPE_DEBUG))
      {
        v17 = *a1;
        *buf = 134217984;
        v23 = *&v17;
        _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_DEBUG, "Error: mach continuous to mach absolute time conversion failed: %lf", buf, 0xCu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101B86F40();
      }
    }

    v20 = 0xBFF0000000000000;
    if (sub_100309F2C(qword_102664AD0, &v21, &v20))
    {
      v18 = v20;
      *(a2 + 36) |= 1u;
      *(a2 + 8) = v18;
      return v10;
    }

    if (qword_1025D4730 != -1)
    {
      sub_101B83ACC();
    }

    v19 = qword_1025D4738;
    if (os_log_type_enabled(qword_1025D4738, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134217984;
      v23 = v21;
      _os_log_impl(dword_100000000, v19, OS_LOG_TYPE_DEBUG, "Error: Mach absolute to CF absolute time conversion failed: %lf", buf, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101B87034();
    }

    return 0;
  }

  return 1;
}

uint64_t sub_100020E98(uint64_t a1, unsigned int a2)
{
  LOBYTE(v3) = *(a1 + 36);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_31;
  }

  if (*(a1 + 36))
  {
    v5 = *(a1 + 8);
    if (!v5)
    {
      v5 = *(qword_102636E48 + 8);
    }

    v6 = *(v5 + 36);
    if (*(v5 + 36))
    {
      v7 = (v6 << 31 >> 31) & 9;
      if ((v6 & 2) != 0)
      {
        v7 += 9;
      }

      if ((v6 & 4) != 0)
      {
        v6 = v7 + 9;
      }

      else
      {
        v6 = v7;
      }
    }

    *(v5 + 32) = v6;
    LODWORD(v4) = v6 + 2;
    v3 = *(a1 + 36);
    if ((v3 & 2) == 0)
    {
      goto LABEL_21;
    }
  }

  else
  {
    LODWORD(v4) = 0;
    if ((*(a1 + 36) & 2) == 0)
    {
      goto LABEL_21;
    }
  }

  v8 = *(a1 + 24);
  if ((v8 & 0x80000000) != 0)
  {
    v9 = 11;
  }

  else if (v8 >= 0x80)
  {
    v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v8, a2) + 1;
    v3 = *(a1 + 36);
  }

  else
  {
    v9 = 2;
  }

  LODWORD(v4) = v9 + v4;
LABEL_21:
  if ((v3 & 4) != 0)
  {
    v4 = (v4 + 9);
  }

  else
  {
    v4 = v4;
  }

  if ((v3 & 8) != 0)
  {
    v10 = *(a1 + 28);
    if ((v10 & 0x80000000) != 0)
    {
      v11 = 11;
    }

    else if (v10 >= 0x80)
    {
      v11 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v10, a2) + 1;
    }

    else
    {
      v11 = 2;
    }

    v4 = (v11 + v4);
  }

LABEL_31:
  *(a1 + 32) = v4;
  return v4;
}

uint64_t sub_100020F9C(uint64_t result, const wireless_diagnostics::google::protobuf::MessageLite *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 36);
  if (v6)
  {
    v7 = *(result + 8);
    if (!v7)
    {
      v7 = *(qword_102636E48 + 8);
    }

    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, v7, a2, a4);
    v6 = *(v5 + 36);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

LABEL_10:
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(3, a2, *(v5 + 16), a3);
      if ((*(v5 + 36) & 8) == 0)
      {
        return result;
      }

      goto LABEL_11;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(2, *(v5 + 24), a2, a4);
  v6 = *(v5 + 36);
  if ((v6 & 4) != 0)
  {
    goto LABEL_10;
  }

LABEL_4:
  if ((v6 & 8) == 0)
  {
    return result;
  }

LABEL_11:
  v8 = *(v5 + 28);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(4, v8, a2, a4);
}

void sub_100021054(wireless_diagnostics::google::protobuf::MessageLite *this)
{
  *this = &off_102453FD0;
  if (qword_102636E48 != this)
  {
    v2 = *(this + 1);
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

void sub_1000210E0(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  sub_100021054(a1);

  operator delete();
}

void sub_100021118(uint64_t a1, uint64_t a2)
{
  v4 = a1 + 2420;
  v5 = sub_100020608(*(a1 + 2420), *(a1 + 2428));
  v6 = *a1;
  if (*a1)
  {
    *buf = sub_1000081AC();
    v7 = sub_100020640(v6, buf);
    v8 = sub_100021618(v7, *(v4 + 72), 315360000.0) < 900.0;
  }

  else
  {
    v8 = 0;
  }

  if (sub_10002154C(a1))
  {
    v9 = 368;
    if (*(a1 + 245))
    {
      v9 = 244;
    }

    v10 = *(a1 + v9);
    if (v5)
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    if (qword_1025D4650 != -1)
    {
      sub_10174B8A4();
    }

    v12 = v11 & v8;
    v13 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_INFO))
    {
      v14 = *a2;
      v15 = *(a2 + 8);
      v16 = *(a2 + 16);
      v17 = 368;
      if (*(a1 + 245))
      {
        v17 = 244;
      }

      v18 = *(a1 + v17);
      *buf = 67241728;
      *&buf[4] = v14;
      v22 = 2050;
      v23 = v15;
      v24 = 2050;
      v25 = v16;
      v26 = 1026;
      v27 = v18;
      v28 = 1026;
      v29 = v5;
      v30 = 1026;
      v31 = v8;
      v32 = 1026;
      v33 = v12;
      _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_INFO, "BaroAlt,gnssAvailability,%{public}d,probability,%{public}.3lf,timestamp,%{public}.3lf,refPresFeatureOn,%{public}d,locValid,%{public}d,locRecent,%{public}d,shouldHandleGnssAvlPredUpdate,%{public}d", buf, 0x34u);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4650 != -1)
      {
        sub_10174B8A4();
      }

      v20 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "void CLBarometricAltimeter::updateGnssAvailabilityPred(const CLGnssAvailabilityPredictor::Output &)", "%s\n", v20);
      if (v20 != buf)
      {
        free(v20);
      }
    }

    if (v12)
    {
      sub_10002181C(a1, a2);
    }
  }

  else
  {
    if (qword_1025D4650 != -1)
    {
      sub_10174B8A4();
    }

    v19 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v19, OS_LOG_TYPE_INFO, "BaroAlt,#Warning,Outdoor calibration trigger disabled or AVL file not available", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10174B8CC();
    }
  }
}

void sub_100021484(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 4296) == 1)
  {
    v2 = *(a1 + 4288);
    if (v2)
    {
      sub_100021118(v2, a2);
    }
  }
}

uint64_t sub_1000214A4(uint64_t a1, double a2, long double a3)
{
  v3 = sub_1000216BC(a1 + 216, a2, a3);
  if ((v3 & 1) == 0)
  {
    if (qword_1025D4600 != -1)
    {
      sub_1015ED544();
    }

    v4 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_INFO))
    {
      *v6 = 0;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_INFO, "#CLPDM,Pressure not available at location", v6, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1015ED64C();
    }
  }

  return v3;
}

uint64_t sub_10002154C(uint64_t a1)
{
  result = *(a1 + 2272);
  if (result)
  {
    if (sub_1000214A4(result, *(a1 + 2420), *(a1 + 2428)))
    {
      if (*(a1 + 247) == 1)
      {
        return *(a1 + 246);
      }

      else
      {
        return *(a1 + 370);
      }
    }

    else
    {
      if (qword_1025D4600 != -1)
      {
        sub_10023A174();
      }

      v3 = qword_1025D4608;
      if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_INFO))
      {
        *v4 = 0;
        _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_INFO, "BaroAlt,#Warning,Als Baro,pressure not available at location", v4, 2u);
      }

      result = sub_10000A100(121, 2);
      if (result)
      {
        sub_101749C7C();
        return 0;
      }
    }
  }

  return result;
}

double sub_100021618(double a1, double a2, double a3)
{
  v3 = fabs(a1);
  if ((*&a1 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    v4 = v3 == 2.22044605e-16;
    v5 = v3 < 2.22044605e-16;
  }

  else
  {
    v4 = 1;
    v5 = 0;
  }

  v6 = fabs(a2);
  v7 = *&a2 & 0x7FFFFFFFFFFFFFFFLL;
  if (v5 || v4)
  {
    v10 = 0;
    v8 = 0;
    v9 = 0;
  }

  else
  {
    v10 = __OFSUB__(v7, 0x7FEFFFFFFFFFFFFFLL);
    v8 = v7 == 0x7FEFFFFFFFFFFFFFLL;
    v9 = v7 - 0x7FEFFFFFFFFFFFFFLL < 0;
  }

  if (v9 ^ v10 | v8)
  {
    v11 = v6 == 2.22044605e-16;
    v12 = v6 < 2.22044605e-16;
  }

  else
  {
    v11 = 1;
    v12 = 0;
  }

  if (v12 || v11)
  {
    return a3;
  }

  else
  {
    return vabdd_f64(a1, a2);
  }
}

char *sub_100021668@<X0>(char *result@<X0>, uint64_t a2@<X8>)
{
  if (result[95] < 0)
  {
    return sub_100007244(a2, *(result + 9), *(result + 10));
  }

  *a2 = *(result + 72);
  *(a2 + 16) = *(result + 11);
  return result;
}

uint64_t sub_1000216BC(uint64_t a1, double a2, long double a3)
{
  v6 = ((floor(a3 * 20.0) * 100000.0) + vcvtmd_s64_f64((a2 + 90.0) * 20.0));
  if (v6 == *a1)
  {
    v7 = *(a1 + 4);
  }

  else
  {
    if (qword_1025D4600 != -1)
    {
      sub_1015F2830();
    }

    v8 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
    {
      v10[0] = 67436801;
      v10[1] = v6;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEBUG, "#CLPDA,Tile not queried before,%{sensitive}ul", v10, 8u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1015F2928(v6);
    }

    *a1 = 0;
    *(a1 + 4) = 0;
    v7 = sub_1015EF418(a1, a2, a3);
    if ((*(a1 + 64) & 1) == 0)
    {
      *a1 = v6;
      *(a1 + 4) = v7;
    }
  }

  return v7 & 1;
}

void sub_10002181C(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 24))
  {
    v4 = sub_1000081AC();
    if (*a2 == 2 && ((v5 = *(a2 + 8), (*&v5 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL) ? (v6 = v5 <= 1.0) : (v6 = 0), v6 && v5 >= 0.08 && (v8 = *(a2 + 16), (*&v8 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL) && (v8 > 0.0 ? (v9 = v4 - v8 <= 5.0) : (v9 = 0), v9)))
    {
      if (sub_10173EDB0(a1, v4))
      {

        sub_10173F59C(a1, 0, v4);
      }
    }

    else
    {
      if (qword_1025D4600 != -1)
      {
        sub_10023A174();
      }

      v7 = qword_1025D4608;
      if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
      {
        v10 = 134349056;
        v11 = v4;
        _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEBUG, "BaroAlt,gnssAvailability,not strong outdoor,time,%{public}lf", &v10, 0xCu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_10174B444();
      }
    }
  }
}

void sub_1000219C8(uint64_t a1, uint64_t a2)
{
  if (qword_1025D4760 != -1)
  {
    sub_100325278();
  }

  v3 = qword_1025D4768;
  if (os_log_type_enabled(qword_1025D4768, OS_LOG_TYPE_DEBUG))
  {
    v4 = *a2;
    v5 = *(a2 + 8);
    v6 = *(a2 + 12);
    v8 = *(a2 + 16);
    v7 = *(a2 + 24);
    v9 = 134219009;
    v10 = v4;
    v11 = 2048;
    v12 = v7;
    v13 = 1025;
    v14 = v5;
    v15 = 1025;
    v16 = v6;
    v17 = 2049;
    v18 = v8;
    _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEBUG, "GnssAvailabilityPredictor,startTime,%f,mctTime,%f,measSource,%{private}d,state,%{private}d,stateProbability,%{private}f", &v9, 0x2Cu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1019CB13C(a2);
  }
}

uint64_t sub_100021AD4(void *a1)
{
  v1 = a1[2];
  v2 = a1[1];
  v3 = (a1[3] + (v1 >> 1));
  if (v1)
  {
    return (*(*v3 + v2))();
  }

  else
  {
    return v2(v3);
  }
}

uint64_t sub_100021AFC(uint64_t a1)
{
  *a1 = 0xFFFF;
  *(a1 + 4) = 0u;
  *(a1 + 20) = xmmword_101C75BF0;
  __asm { FMOV            V0.2D, #-1.0 }

  v9 = _Q0;
  *(a1 + 36) = _Q0;
  *(a1 + 52) = _Q0;
  *(a1 + 68) = _Q0;
  *(a1 + 84) = 0;
  *(a1 + 88) = 0xBFF0000000000000;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0;
  *(a1 + 116) = 0xBFF0000000000000;
  *(a1 + 124) = 0x7FFFFFFF;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0;
  sub_100021ED8(a1 + 160);
  *(a1 + 832) = 0;
  *(a1 + 808) = 0u;
  *(a1 + 821) = 0;
  *(a1 + 840) = 0xBFF0000000000000;
  *(a1 + 848) = xmmword_101C7C2B8;
  *(a1 + 864) = unk_101C7C2C8;
  *(a1 + 880) = xmmword_101C7C2A8;
  *(a1 + 896) = 0xBFF0000000000000;
  *(a1 + 904) = 0;
  *(a1 + 912) = 0u;
  *(a1 + 928) = 0;
  *(a1 + 936) = 0xBFF0000000000000;
  *(a1 + 944) = v9;
  *(a1 + 1160) = 0u;
  *(a1 + 1176) = 78;
  *(a1 + 1320) = 0u;
  *(a1 + 1336) = 0u;
  *(a1 + 1352) = 0u;
  __asm { FMOV            V0.2S, #-1.0 }

  *(a1 + 1368) = _D0;
  *(a1 + 1376) = 0x7FF8000000000000;
  *(a1 + 1384) = -1082130432;
  *(a1 + 1392) = 0x7FF8000000000000;
  *(a1 + 1400) = 0;
  *(a1 + 1408) = -1082130432;
  *(a1 + 1416) = 0x8000;
  *(a1 + 1418) = 0;
  *(a1 + 1424) = 0;
  *(a1 + 1432) = 0x8000;
  *(a1 + 1440) = 0x100000003;
  *(a1 + 1448) = 2;
  *(a1 + 1452) = 0;
  *(a1 + 1456) = -1;
  *(a1 + 1464) = 0;
  *(a1 + 1472) = 0;
  *(a1 + 1476) = 0;
  *(a1 + 1480) = 0;
  *(a1 + 1520) = 0;
  *(a1 + 1528) = 0;
  *(a1 + 1512) = 0;
  *(a1 + 1504) = 0;
  *(a1 + 1488) = 0u;
  *(a1 + 1536) = v9;
  *(a1 + 1552) = 0xBFF0000000000000;
  return a1;
}

double sub_100021C8C(uint64_t a1)
{
  *a1 = xmmword_101C75BF0;
  *(a1 + 16) = 0xBFF0000000000000;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = -1082130432;
  *(a1 + 52) = 1;
  *(a1 + 56) = 1;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0xBFF0000000000000;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 124) = -1;
  *(a1 + 136) = -1;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 248) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 264) = 0u;
  *(a1 + 280) = 0u;
  *(a1 + 280) = 0xBFF0000000000000;
  *(a1 + 296) = 0u;
  *(a1 + 312) = -1;
  *(a1 + 332) = 0;
  *(a1 + 316) = 0u;
  *(a1 + 336) = xmmword_101C75BF0;
  *(a1 + 352) = 1;
  *(a1 + 356) = 0;
  *(a1 + 376) = 0;
  *(a1 + 360) = 0u;
  __asm { FMOV            V0.2D, #-1.0 }

  *(a1 + 384) = _Q0;
  *(a1 + 400) = xmmword_101C76220;
  *(a1 + 416) = 0xBFF0000000000000;
  *(a1 + 424) = 0;
  *(a1 + 432) = 0u;
  *(a1 + 448) = 0xBFF0000000000000;
  *(a1 + 456) = 0;
  *(a1 + 464) = xmmword_101C76220;
  *(a1 + 480) = _Q0;
  *(a1 + 496) = xmmword_101C76220;
  *(a1 + 512) = 0;
  *(a1 + 536) = 0;
  *(a1 + 520) = 0u;
  *(a1 + 544) = xmmword_101C76220;
  *(a1 + 560) = 0;
  *(a1 + 568) = -1;
  *(a1 + 576) = 0;
  *(a1 + 584) = 0xBFF0000000000000;
  *(a1 + 592) = _Q0;
  *(a1 + 608) = 0;
  *(a1 + 610) = 0;
  result = 0.0;
  *(a1 + 612) = xmmword_101CA7C10;
  *(a1 + 633) = 0;
  *(a1 + 628) = 0;
  return result;
}

uint64_t sub_100021DC4(int *a1)
{
  v2 = *a1;
  if (v2 < 0x32 && ((0x3FFFEFFF3BF7FuLL >> v2) & 1) != 0)
  {
    return dword_101D7A6B4[v2];
  }

  if (qword_1025D4730 != -1)
  {
    sub_101B83560();
  }

  v4 = qword_1025D4738;
  if (os_log_type_enabled(qword_1025D4738, OS_LOG_TYPE_ERROR))
  {
    v5 = *a1;
    v7[0] = 67240192;
    v7[1] = v5;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_ERROR, "ConvertLocationProviderNotificationTypeToProtobuf,unhandled type,%{public}d", v7, 8u);
  }

  v6 = sub_10000A100(121, 0);
  result = 0;
  if (v6)
  {
    sub_101B8B2A0(a1);
    return 0;
  }

  return result;
}

id sub_100021EDC(uint64_t a1, int a2, void *a3)
{
  result = sub_1000222CC(a3);
  if (result)
  {
    v6 = a2;
    return (*(a1 + 24))(0, &v6, result, *(a1 + 32));
  }

  return result;
}

uint64_t *sub_100021F2C(uint64_t a1, int *a2)
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

uint64_t sub_100022008(uint64_t a1, uint64_t a2)
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
  v8 = *(a2 + 96);
  v9 = *(a2 + 112);
  v10 = *(a2 + 128);
  *(a1 + 140) = *(a2 + 140);
  *(a1 + 112) = v9;
  *(a1 + 128) = v10;
  *(a1 + 96) = v8;
  memcpy((a1 + 160), (a2 + 160), 0x201uLL);
  *(a1 + 680) = *(a2 + 680);
  v11 = *(a2 + 688);
  *(a1 + 688) = v11;
  if (v11)
  {
    atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
  }

  v12 = *(a2 + 696);
  v13 = *(a2 + 728);
  *(a1 + 712) = *(a2 + 712);
  *(a1 + 728) = v13;
  *(a1 + 696) = v12;
  v14 = *(a2 + 744);
  v15 = *(a2 + 760);
  v16 = *(a2 + 776);
  *(a1 + 785) = *(a2 + 785);
  *(a1 + 760) = v15;
  *(a1 + 776) = v16;
  *(a1 + 744) = v14;
  *(a1 + 808) = *(a2 + 808);
  v17 = *(a2 + 816);
  *(a1 + 816) = v17;
  if (v17)
  {
    atomic_fetch_add_explicit((v17 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 824) = *(a2 + 824);
  v18 = *(a2 + 840);
  v19 = *(a2 + 856);
  v20 = *(a2 + 872);
  *(a1 + 888) = *(a2 + 888);
  *(a1 + 856) = v19;
  *(a1 + 872) = v20;
  *(a1 + 840) = v18;
  *(a1 + 896) = *(a2 + 896);
  if (*(a2 + 927) < 0)
  {
    sub_100007244((a1 + 904), *(a2 + 904), *(a2 + 912));
  }

  else
  {
    v21 = *(a2 + 904);
    *(a1 + 920) = *(a2 + 920);
    *(a1 + 904) = v21;
  }

  v22 = *(a2 + 928);
  v23 = *(a2 + 960);
  *(a1 + 944) = *(a2 + 944);
  *(a1 + 960) = v23;
  *(a1 + 928) = v22;
  v24 = *(a2 + 976);
  v25 = *(a2 + 992);
  v26 = *(a2 + 1024);
  *(a1 + 1008) = *(a2 + 1008);
  *(a1 + 1024) = v26;
  *(a1 + 976) = v24;
  *(a1 + 992) = v25;
  v27 = *(a2 + 1040);
  v28 = *(a2 + 1056);
  v29 = *(a2 + 1072);
  *(a1 + 1088) = *(a2 + 1088);
  *(a1 + 1072) = v29;
  *(a1 + 1056) = v28;
  *(a1 + 1040) = v27;
  v30 = *(a2 + 1104);
  v31 = *(a2 + 1120);
  v32 = *(a2 + 1136);
  *(a1 + 1152) = *(a2 + 1152);
  *(a1 + 1136) = v32;
  *(a1 + 1120) = v31;
  *(a1 + 1104) = v30;
  *(a1 + 1160) = *(a2 + 1160);
  v33 = *(a2 + 1168);
  *(a1 + 1168) = v33;
  if (v33)
  {
    atomic_fetch_add_explicit((v33 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 1176) = *(a2 + 1176);
  v34 = *(a2 + 1192);
  v35 = *(a2 + 1208);
  v36 = *(a2 + 1240);
  *(a1 + 1224) = *(a2 + 1224);
  *(a1 + 1240) = v36;
  *(a1 + 1192) = v34;
  *(a1 + 1208) = v35;
  v37 = *(a2 + 1256);
  v38 = *(a2 + 1272);
  v39 = *(a2 + 1304);
  *(a1 + 1288) = *(a2 + 1288);
  *(a1 + 1304) = v39;
  *(a1 + 1256) = v37;
  *(a1 + 1272) = v38;
  *(a1 + 1320) = 0;
  *(a1 + 1320) = *(a2 + 1320);
  v40 = *(a2 + 1328);
  v41 = *(a2 + 1344);
  *(a1 + 1360) = *(a2 + 1360);
  *(a1 + 1344) = v41;
  *(a1 + 1328) = v40;
  v42 = *(a2 + 1376);
  v43 = *(a2 + 1392);
  v44 = *(a2 + 1408);
  *(a1 + 1424) = *(a2 + 1424);
  *(a1 + 1408) = v44;
  *(a1 + 1392) = v43;
  *(a1 + 1376) = v42;
  v45 = *(a2 + 1440);
  v46 = *(a2 + 1456);
  v47 = *(a2 + 1472);
  *(a1 + 1488) = *(a2 + 1488);
  *(a1 + 1472) = v47;
  *(a1 + 1456) = v46;
  *(a1 + 1440) = v45;
  v48 = *(a2 + 1504);
  v49 = *(a2 + 1520);
  v50 = *(a2 + 1536);
  *(a1 + 1552) = *(a2 + 1552);
  *(a1 + 1536) = v50;
  *(a1 + 1520) = v49;
  *(a1 + 1504) = v48;
  return a1;
}

void sub_100022284(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 816);
  if (v3)
  {
    sub_100008080(v3);
  }

  v4 = *(v1 + 688);
  if (v4)
  {
    sub_100008080(v4);
  }

  _Unwind_Resume(exception_object);
}

id sub_1000222CC(void *a1)
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  return sub_100022698(a1);
}

_BYTE *sub_10002232C(_BYTE *result, uint64_t a2, uint64_t *a3, void *a4)
{
  if ((result[108] & 1) == 0)
  {
    v7 = result;
    v8 = *(*a2 + 32);
    LODWORD(v12) = *(*a3 + 32);
    v9 = sub_1000222CC(a4);
    v10 = *a3;
    v13 = (*a2 + 32);
    v11 = sub_100021F2C(v10 + 40, v13);
    result = (*(*v7 + 192))(v7, v8, &v12, v9, v10 + 80, v11 + 5);
    if (result)
    {
      return [*(*a2 + 64) onNotification:*(*a3 + 32) withData:{a4, v12}];
    }
  }

  return result;
}

uint64_t sub_100022424(uint64_t a1, uint64_t a2, int *a3)
{
  v5 = *a3;
  result = 1;
  if (*a3 <= 2)
  {
    if (v5 == 1)
    {
      v12 = 0;
      v8 = (*(*a1 + 104))(a1, a2, &v12);
      return v8 ^ 1u;
    }

    if (v5 != 2)
    {
      return result;
    }

    v12 = 1;
    if (((*(*a1 + 104))(a1, a2, &v12) & 1) == 0)
    {
      v11 = 0;
      v8 = (*(*a1 + 104))(a1, a2, &v11);
      return v8 ^ 1u;
    }

    return 0;
  }

  if (v5 == 3)
  {
    v12 = 2;
    if (((*(*a1 + 104))(a1, a2, &v12) & 1) == 0)
    {
      v11 = 1;
      if (((*(*a1 + 104))(a1, a2, &v11) & 1) == 0)
      {
        v10 = 0;
        v8 = (*(*a1 + 104))(a1, a2, &v10);
        return v8 ^ 1u;
      }
    }

    return 0;
  }

  if (v5 == 39 || v5 == 4)
  {
    v12 = 3;
    if (((*(*a1 + 104))(a1, a2, &v12) & 1) == 0)
    {
      v11 = 2;
      if (((*(*a1 + 104))(a1, a2, &v11) & 1) == 0)
      {
        v10 = 1;
        if (((*(*a1 + 104))(a1, a2, &v10) & 1) == 0)
        {
          v9 = 0;
          v8 = (*(*a1 + 104))(a1, a2, &v9);
          return v8 ^ 1u;
        }
      }
    }

    return 0;
  }

  return result;
}

id sub_100022698(void *a1)
{
  v2 = [a1 binaryVersion];
  v3 = [a1 sizeOfType];
  if (v2 == 1)
  {
    v4 = v3;
    result = [a1 cppObjectPtr];
    if (v4 == 1560)
    {
      return result;
    }

    if (getenv("_INTERSILO_UNIT_TEST"))
    {
      if (qword_1025D41A0 != -1)
      {
        sub_101890CA0();
      }

      v6 = qword_1025D41A8;
      if (os_log_type_enabled(qword_1025D41A8, OS_LOG_TYPE_ERROR))
      {
        v10 = 134218498;
        v11 = v4;
        v12 = 2048;
        v13 = 1560;
        v14 = 2080;
        v15 = 0x8000000101D1C2C0 & 0x7FFFFFFFFFFFFFFFLL;
        _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_ERROR, "Size mismatch between encoded (%zu) and decoded (%zu) objects! This is possibly because the version has changed on one side and possibly broken ABI compatibility. Please update your type for %s accordingly", &v10, 0x20u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_101890EBC();
      }
    }

    else
    {
      if (qword_1025D41A0 != -1)
      {
        sub_101890CA0();
      }

      v9 = qword_1025D41A8;
      if (os_log_type_enabled(qword_1025D41A8, OS_LOG_TYPE_FAULT))
      {
        v10 = 134218498;
        v11 = v4;
        v12 = 2048;
        v13 = 1560;
        v14 = 2080;
        v15 = 0x8000000101D1C2C0 & 0x7FFFFFFFFFFFFFFFLL;
        _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_FAULT, "Size mismatch between encoded (%zu) and decoded (%zu) objects! This is possibly because the version has changed on one side and possibly broken ABI compatibility. Please update your type for %s accordingly", &v10, 0x20u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_101890FC0();
      }
    }
  }

  else if (getenv("_INTERSILO_UNIT_TEST"))
  {
    if (qword_1025D41A0 != -1)
    {
      sub_101890CA0();
    }

    v7 = qword_1025D41A8;
    if (os_log_type_enabled(qword_1025D41A8, OS_LOG_TYPE_ERROR))
    {
      v10 = 134218498;
      v11 = v2;
      v12 = 2048;
      v13 = 1;
      v14 = 2080;
      v15 = 0x8000000101D1C2C0 & 0x7FFFFFFFFFFFFFFFLL;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_ERROR, "Mismatch of versions between encoded (%llu) and decoded (%llu) objects! This is possibly because the version has changed on one side and possibly broken ABI compatibility. Please update your type for %s accordingly", &v10, 0x20u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_101890CB4();
    }
  }

  else
  {
    if (qword_1025D41A0 != -1)
    {
      sub_101890CA0();
    }

    v8 = qword_1025D41A8;
    if (os_log_type_enabled(qword_1025D41A8, OS_LOG_TYPE_FAULT))
    {
      v10 = 134218498;
      v11 = v2;
      v12 = 2048;
      v13 = 1;
      v14 = 2080;
      v15 = 0x8000000101D1C2C0 & 0x7FFFFFFFFFFFFFFFLL;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_FAULT, "Mismatch of versions between encoded (%llu) and decoded (%llu) objects! This is possibly because the version has changed on one side and possibly broken ABI compatibility. Please update your type for %s accordingly", &v10, 0x20u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_101890DB8();
    }
  }

  return 0;
}

uint64_t sub_1000229EC(uint64_t result)
{
  v1 = *(result + 32);
  if (v1)
  {

    v2 = *(v1 + 1168);
    if (v2)
    {
      sub_100008080(v2);
    }

    if (*(v1 + 927) < 0)
    {
      operator delete(*(v1 + 904));
    }

    v3 = *(v1 + 816);
    if (v3)
    {
      sub_100008080(v3);
    }

    v4 = *(v1 + 688);
    if (v4)
    {
      sub_100008080(v4);
    }

    operator delete();
  }

  return result;
}

void sub_100022A88(uint64_t a1, int *a2, uint64_t a3, int a4)
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
      sub_1001D084C(buf, a2, &v9);
      sub_10047D8C8();
    }

    if (a4)
    {
      sub_100023034();
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
      sub_100022F60();
    }
  }
}

void sub_100022F34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_101865570(va);
  sub_101864718(v9 - 144);
  _Unwind_Resume(a1);
}

void *sub_1000230A0(void *a1, uint64_t a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_1024568C0;
  sub_100022008((a1 + 3), a2);
  return a1;
}

void sub_1000230FC(uint64_t a1)
{
  v2 = *(a1 + 1192);
  if (v2)
  {
    sub_100008080(v2);
  }

  if (*(a1 + 951) < 0)
  {
    operator delete(*(a1 + 928));
  }

  v3 = *(a1 + 840);
  if (v3)
  {
    sub_100008080(v3);
  }

  v4 = *(a1 + 712);
  if (v4)
  {

    sub_100008080(v4);
  }
}

void sub_100023188(uint64_t *a1, int a2, __int128 *a3)
{
  v143 = a2;
  v4 = *a1;
  sub_100021AFC(&v76);
  if ((sub_10002FB10(v4, &v143, &v76) & 1) == 0)
  {
    sub_100021AFC(v16);
    v82 = v16[6];
    v83 = v16[7];
    v84[0] = v17[0];
    *(v84 + 12) = *(v17 + 12);
    v78 = v16[2];
    v79 = v16[3];
    v80 = v16[4];
    v81 = v16[5];
    v76 = v16[0];
    v77 = v16[1];
    memcpy(v85, v18, sizeof(v85));
    v5 = v19;
    v19 = 0uLL;
    v6 = *(&v86 + 1);
    v86 = v5;
    if (v6)
    {
      sub_100008080(v6);
    }

    v91 = v24;
    v92[0] = *v25;
    *(v92 + 9) = *&v25[9];
    v87 = v20;
    v88 = v21;
    v89 = v22;
    v90 = v23;
    v7 = v26;
    v26 = 0uLL;
    v8 = *(&v93 + 1);
    v93 = v7;
    if (v8)
    {
      sub_100008080(v8);
    }

    v96 = v29;
    v97 = v30;
    v94 = v27;
    v95 = v28;
    v98 = v31;
    v99 = v32;
    if (SHIBYTE(v101) < 0)
    {
      operator delete(__p);
    }

    v101 = v34;
    __p = v33;
    HIBYTE(v34) = 0;
    LOBYTE(v33) = 0;
    v113 = v46;
    v114 = v47;
    v115 = v48;
    v116 = v49;
    v109 = v42;
    v110 = v43;
    v111 = v44;
    v112 = v45;
    v106 = v39;
    v107 = v40;
    v108 = v41;
    v102 = v35;
    v103 = v36;
    v104 = v37;
    v105 = v38;
    v9 = v50;
    v50 = 0uLL;
    v10 = *(&v117 + 1);
    v117 = v9;
    if (v10)
    {
      sub_100008080(v10);
    }

    v124 = v57;
    v125 = v58;
    v126 = v59;
    v120 = v53;
    v121 = v54;
    v122 = v55;
    v123 = v56;
    v118 = v51;
    v119 = v52;
    v11 = v127;
    v127 = v60;
    v60 = 0;

    v139 = v72;
    v140 = v73;
    v141 = v74;
    v142 = v75;
    v135 = v68;
    v136 = v69;
    v137 = v70;
    v138 = v71;
    v131 = v64;
    v132 = v65;
    v133 = v66;
    v134 = v67;
    v128 = v61;
    v129 = v62;
    v130 = v63;

    if (*(&v50 + 1))
    {
      sub_100008080(*(&v50 + 1));
    }

    if (SHIBYTE(v34) < 0)
    {
      operator delete(v33);
    }

    if (*(&v26 + 1))
    {
      sub_100008080(*(&v26 + 1));
    }

    if (*(&v19 + 1))
    {
      sub_100008080(*(&v19 + 1));
    }
  }

  v12 = a3[7];
  v82 = a3[6];
  v83 = v12;
  v84[0] = a3[8];
  *(v84 + 12) = *(a3 + 140);
  v13 = a3[3];
  v78 = a3[2];
  v79 = v13;
  v14 = a3[5];
  v80 = a3[4];
  v81 = v14;
  v15 = a3[1];
  v76 = *a3;
  v77 = v15;
  sub_100023F68();
}

void sub_100023588(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100311054(va);
  sub_100311054(&STACK[0x620]);
  _Unwind_Resume(a1);
}

__n128 sub_10002364C(uint64_t a1, uint64_t a2, __n128 result)
{
  v5 = *(a2 + 96);
  _ZF = v5 == 4 || v5 == 11;
  if (_ZF || (v5 - 6) <= 2)
  {
    if (qword_10265F420 != -1)
    {
      sub_101AAC814();
    }

    if (byte_10265F418 == 1)
    {
      __asm { FMOV            V0.2D, #-1.0 }

      *(a2 + 44) = result;
    }

    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100E6EF18;
    block[3] = &unk_102449A78;
    block[4] = a1;
    if (qword_10265F430 != -1)
    {
      dispatch_once(&qword_10265F430, block);
    }

    if ((byte_10265F428 & 1) != 0 || (result.n128_u64[0] = *(a2 + 68), result.n128_f64[0] < 0.0) || result.n128_f64[0] > 45.0)
    {
      __asm { FMOV            V0.2D, #-1.0 }

      *(a2 + 60) = result;
    }
  }

  return result;
}

unint64_t sub_100023764(uint64_t a1)
{
  v1 = 0xC6A4A7935BD1E995 * *(a1 + 4);
  if (*(a1 + 4) == 0.0)
  {
    v1 = 0;
  }

  v2 = 0x35A98F4D286A90B9 * (v1 ^ (v1 >> 47)) + 3864292196u;
  v3 = 0xC6A4A7935BD1E995 * *(a1 + 12);
  if (*(a1 + 12) == 0.0)
  {
    v3 = 0;
  }

  v4 = 3864292196u - 0x395B586CA42E166BLL * ((0xC6A4A7935BD1E995 * (v3 ^ (v3 >> 47))) ^ v2);
  v5 = 0xC6A4A7935BD1E995 * *(a1 + 20);
  if (*(a1 + 20) == 0.0)
  {
    v5 = 0;
  }

  return 3864292196u - 0x395B586CA42E166BLL * ((3864292196u - 0x395B586CA42E166BLL * (v4 ^ (0xC6A4A7935BD1E995 * (v5 ^ (v5 >> 47))))) ^ (0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * *(a1 + 96)) ^ ((0xC6A4A7935BD1E995 * *(a1 + 96)) >> 47))));
}

unint64_t sub_10002380C(void *a1, uint64_t a2)
{
  v2 = *(a1 + a2 - 16);
  v3 = *a1 - 0x3C5A37A36834CED9 * (v2 + a2);
  v5 = a1[2];
  v4 = a1[3];
  v6 = __ROR8__(v3 + v4, 52);
  v7 = v3 + a1[1];
  v8 = __ROR8__(v7, 7);
  v9 = v7 + v5;
  v10 = *(a1 + a2 - 32) + v5;
  v11 = v8 + __ROR8__(*a1 - 0x3C5A37A36834CED9 * (v2 + a2), 37) + v6 + __ROR8__(v9, 31);
  v12 = *(a1 + a2 - 24) + v10 + v2;
  v13 = 0xC3A5C85C97CB3127 * (v12 + *(a1 + a2 - 8) + v4 + v11) - 0x651E95C4D06FBFB1 * (v9 + v4 + __ROR8__(v10, 37) + __ROR8__(*(a1 + a2 - 24) + v10, 7) + __ROR8__(*(a1 + a2 - 8) + v4 + v10, 52) + __ROR8__(v12, 31));
  return 0x9AE16A3B2F90404FLL * ((v11 - 0x3C5A37A36834CED9 * (v13 ^ (v13 >> 47))) ^ ((v11 - 0x3C5A37A36834CED9 * (v13 ^ (v13 >> 47))) >> 47));
}

BOOL sub_1000238CC@<W0>(const __CFString *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  result = sub_100005A24(a1, a2);
  if (!result)
  {
    if (*(a2 + 23) < 0)
    {
      **a2 = 0;
      *(a2 + 8) = 0;
    }

    else
    {
      *a2 = 0;
      *(a2 + 23) = 0;
    }
  }

  return result;
}

void sub_100023920(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_10002393C(uint64_t **a1, uint64_t a2, uint64_t **a3, uint64_t *a4)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = a2;
  *a3 = a4;
  v5 = **a1;
  if (v5)
  {
    *a1 = v5;
    a4 = *a3;
  }

  result = sub_100023994(a1[1], a4);
  a1[2] = (a1[2] + 1);
  return result;
}

uint64_t *sub_100023994(uint64_t *result, uint64_t *a2)
{
  *(a2 + 24) = a2 == result;
  if (a2 != result)
  {
    do
    {
      v2 = a2[2];
      if (v2[3])
      {
        break;
      }

      v3 = v2[2];
      v4 = *v3;
      if (*v3 == v2)
      {
        v8 = v3[1];
        if (!v8 || (v9 = *(v8 + 24), v7 = (v8 + 24), v9 == 1))
        {
          if (*v2 == a2)
          {
            v11 = a2[2];
          }

          else
          {
            v11 = v2[1];
            v12 = *v11;
            v2[1] = *v11;
            v13 = v2;
            if (v12)
            {
              v12[2] = v2;
              v3 = v2[2];
              v13 = *v3;
            }

            v11[2] = v3;
            v3[v13 != v2] = v11;
            *v11 = v2;
            v2[2] = v11;
            v3 = v11[2];
            v4 = *v3;
          }

          *(v11 + 24) = 1;
          *(v3 + 24) = 0;
          v18 = *(v4 + 8);
          *v3 = v18;
          if (v18)
          {
            *(v18 + 16) = v3;
          }

          v19 = v3[2];
          *(v4 + 16) = v19;
          v19[*v19 != v3] = v4;
          *(v4 + 8) = v3;
          v3[2] = v4;
          return result;
        }
      }

      else
      {
        if (!v4 || (v6 = *(v4 + 24), v5 = (v4 + 24), v6 == 1))
        {
          v10 = *v2;
          if (*v2 == a2)
          {
            v14 = v10[1];
            *v2 = v14;
            if (v14)
            {
              *(v14 + 16) = v2;
              v3 = v2[2];
            }

            v10[2] = v3;
            v3[*v3 != v2] = v10;
            v10[1] = v2;
            v2[2] = v10;
            v3 = v10[2];
          }

          else
          {
            v10 = a2[2];
          }

          *(v10 + 24) = 1;
          *(v3 + 24) = 0;
          v15 = v3[1];
          v16 = *v15;
          v3[1] = *v15;
          if (v16)
          {
            *(v16 + 16) = v3;
          }

          v17 = v3[2];
          v15[2] = v17;
          v17[*v17 != v3] = v15;
          *v15 = v3;
          v3[2] = v15;
          return result;
        }

        v7 = v5;
      }

      *(v2 + 24) = 1;
      a2 = v3;
      *(v3 + 24) = v3 == result;
      *v7 = 1;
    }

    while (v3 != result);
  }

  return result;
}

uint64_t sub_100023B30()
{
  if (qword_102659290 != -1)
  {
    sub_10191C97C();
  }

  return qword_102659298;
}

uint64_t sub_100023B78(uint64_t a1, uint64_t a2, void *a3)
{
  cf = 0;
  if (!(*(*a1 + 904))(a1, a2, &cf))
  {
    return 0;
  }

  v6 = sub_1000B8430(cf, a3);
  if ((v6 & 1) == 0)
  {
    if (qword_1025D48A0 != -1)
    {
      sub_1018AA1FC();
    }

    v7 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_FAULT))
    {
      v8 = (*(*a1 + 840))(a1);
      *buf = 138412546;
      v18 = v8;
      v19 = 2112;
      v20 = a2;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_FAULT, "Unsupported type at %@:%@ (domain:key)", buf, 0x16u);
    }

    if (sub_10000A100(121, 0))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D48A0 != -1)
      {
        sub_1018AA1FC();
      }

      v10 = (*(*a1 + 840))(a1);
      v13 = 138412546;
      v14 = v10;
      v15 = 2112;
      v16 = a2;
      v11 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 0, "virtual BOOL CLNameValuePair::get(CFStringRef, double &, int) const", "%s\n", v11);
      if (v11 != buf)
      {
        free(v11);
      }
    }
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v6;
}

BOOL sub_100023DF4()
{
  if (MGGetBoolAnswer())
  {
    return 1;
  }

  if (qword_1026592C0 != -1)
  {
    sub_10191C0E4();
  }

  return byte_1026592C8 == 1;
}

float sub_100023E4C(void *a1, float *a2)
{
  v4 = a1[2];
  v5 = a1[1];
  if (v4 == v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = ((v4 - v5) << 7) - 1;
  }

  v7 = a1[5];
  v8 = v7 + a1[4];
  if (v6 == v8)
  {
    sub_1003113A8(a1);
    v5 = a1[1];
    v7 = a1[5];
    v8 = a1[4] + v7;
  }

  result = *a2;
  *(*(v5 + ((v8 >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * (v8 & 0x3FF)) = *a2;
  a1[5] = v7 + 1;
  return result;
}

uint64_t sub_100023ED4(char a1)
{
  result = qword_1026379F8;
  if (!qword_1026379F8)
  {
    v3 = sub_100011660();
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_100BA041C;
    v4[3] = &unk_1024610B0;
    v5 = a1;
    sub_10017A794(v3, v4);
    return qword_1026379F8;
  }

  return result;
}

void sub_100023FFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100008080(a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_100024014(uint64_t a1, int *a2)
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

void sub_100024124(uint64_t a1)
{
  v2 = sub_10000B1F8();
  sub_10000B230(buf);
  sub_10000B324(v2, buf);
  v3 = sub_10000B1F8();
  *buf = 1;
  v4 = sub_10001A6B0(v3, buf);
  if (qword_1025D4600 != -1)
  {
    sub_1018F7C0C();
  }

  v5 = v4 - floor(v4);
  v6 = qword_1025D4608;
  if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134349568;
    *v26 = v4;
    *&v26[8] = 2050;
    *&v26[10] = v5;
    *&v26[18] = 1026;
    *&v26[20] = (v4 - v5);
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "#locctl-hb,handle heartbeat,mct,%{public}.3f,fractional,%{public}.3f,integer mct, %{public}d", buf, 0x1Cu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018F8CBC();
  }

  v7 = *(a1 + 312);
  if (v7)
  {
    sub_100DAB774(v7);
  }

  v8 = *(a1 + 304);
  if (v8)
  {
    v9 = sub_10000B1F8();
    *buf = 1;
    v10 = sub_10001A6B0(v9, buf);
    sub_1000244F4(v8, v10);
  }

  v11 = sub_10000B1F8();
  sub_10000AED4(v11, v24);
  v12 = sub_10000AE98();
  sub_1000256BC(v12, v24);
  if (*(a1 + 5248) == 1 && v24[0].n128_f64[0] > *(a1 + 5240))
  {
    if (qword_1025D4600 != -1)
    {
      sub_1018F7C0C();
    }

    v13 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_INFO))
    {
      *buf = 134349056;
      *v26 = v24[0].n128_u64[0];
      _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_INFO, "#locctl,#rec,triggered client and provider list record at time,mct,%{public}.3f", buf, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018F8DEC();
    }

    sub_1003DFA94(a1);
    v14 = sub_10000AE98();
    sub_100676AC0(a1, buf);
    sub_1005CB4AC(v14, buf);
    sub_10067A4AC(buf, *&v26[4]);
    if (*(a1 + 5248) == 1)
    {
      *(a1 + 5248) = 0;
    }
  }

  if (*(a1 + 5260) == 1 && !(v24[0].n128_f64[0] % *(a1 + 5256)))
  {
    sub_1003DFA94(a1);
    v15 = sub_10000AE98();
    sub_100676AC0(a1, buf);
    sub_1005CB4AC(v15, buf);
    sub_10067A4AC(buf, *&v26[4]);
  }

  if (*(a1 + 280))
  {
    if ((*(a1 + 296) & 1) == 0 && *(a1 + 297) == 1)
    {
      if (*(a1 + 312))
      {
        v16 = *(a1 + 5984);
        if (v16)
        {
          sub_1000280A0(v16, buf);
          v17 = sub_100027FB4(buf) && sub_1000281DC() - v27 < 1.5;
          v18 = *(a1 + 304);
          if (v18)
          {
            v19 = sub_100026A70(*(v18 + 64));
          }

          else
          {
            v19 = 0;
          }

          v20 = *&v26[16];
          if (!v17)
          {
            v20 = -1.0;
          }

          sub_100025FE8(*(a1 + 312), v19, v20);
        }
      }
    }
  }

  sub_100025B28(a1);
  v21 = *(a1 + 5984);
  if (v21)
  {
    sub_100026470(v21);
  }

  v22 = *(a1 + 5960);
  if (v22 && sub_100024CF0(v22))
  {
    sub_100D58FE8(*(a1 + 5960), 2);
  }

  v23 = *(a1 + 784);
  if (v23)
  {
    sub_100026EE0(v23);
  }

  sub_100676D38(a1);
}

void sub_1000244F4(uint64_t a1, double a2)
{
  sub_10002452C(a1, a2);

  sub_10002492C(a1);
}

void sub_10002452C(uint64_t a1, double a2)
{
  v3 = *(a1 + 24);
  if (v3)
  {
    if (sub_1000245DC(v3, a2))
    {
      *(a1 + 49) = 0;
    }
  }

  else
  {
    if (qword_1025D4600 != -1)
    {
      sub_1002F9794();
    }

    v4 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_ERROR))
    {
      *v5 = 0;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_ERROR, "#pbio IO subscription not enabled.", v5, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_101AB3120();
    }
  }
}

uint64_t sub_1000245DC(uint64_t a1, double a2)
{
  if (sub_1000246E8())
  {
    (**a1)(a1, a2);
    if (*(a1 + 8))
    {
      if ((*(a1 + 48) & 1) == 0)
      {
        sub_100D8A56C(a1);
        return 1;
      }
    }

    else if (*(a1 + 48))
    {
      sub_100D8A708(a1);
      return 1;
    }

    return 0;
  }

  if (qword_1025D4600 != -1)
  {
    sub_101A7F80C();
  }

  v4 = qword_1025D4608;
  if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_ERROR))
  {
    *v6 = 0;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_ERROR, "#pbio Proactive Inertial Odometry is not supported on this device.", v6, 2u);
  }

  result = sub_10000A100(121, 0);
  if (result)
  {
    sub_101A7FD54();
    return 0;
  }

  return result;
}

BOOL sub_1000246E8()
{
  sub_10001A3E8();
  result = 1;
  if (!sub_10001CF04() || (v0 = sub_10001A3E8(), (sub_1000247AC(v0) & 1) == 0))
  {
    sub_10001A3E8();
    if (!sub_10001CF3C())
    {
      return 0;
    }

    v1 = sub_10001A3E8();
    if ((sub_1000247AC(v1) & 1) == 0)
    {
      return 0;
    }
  }

  return result;
}

BOOL sub_100024738()
{
  if (sub_1000247B0())
  {
    return 1;
  }

  if (qword_1026590E8 != -1)
  {
    sub_10015EEE0();
  }

  if (qword_1026592D8 != -1)
  {
    sub_10191B9BC();
  }

  return (dword_1026592D0 - 99) < 0x23 || dword_1026592D0 == 280;
}

uint64_t sub_1000247B0()
{
  if (qword_1026590E8 != -1)
  {
    sub_10015EEE0();
  }

  if (qword_1026592D8 != -1)
  {
    sub_10191B9BC();
  }

  result = 1;
  v1 = (dword_1026592D0 - 139) > 0x34 || ((1 << (dword_1026592D0 + 117)) & 0x1FFFFFE000001DLL) == 0;
  if (v1 && (dword_1026592D0 - 233) >= 8 && (dword_1026592D0 - 78) >= 3)
  {
    return 0;
  }

  return result;
}

void sub_100024840(uint64_t a1)
{
  v2 = (a1 + 48);
  v1 = *(a1 + 48);
  v3 = *(a1 + 80);
  *(a1 + 48) = v3;
  if (v3 != v1)
  {
    if (qword_1025D4600 != -1)
    {
      sub_101A82D24();
    }

    v4 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_INFO))
    {
      v5 = *v2;
      v6[0] = 67240192;
      v6[1] = v5;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_INFO, "#pbio, CLProactiveInertialOdometrySubscription_Phone, fPolicyStateIsSubscribe, %{public}d", v6, 8u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101A82D38(v2);
    }
  }
}

void sub_10002492C(uint64_t a1)
{
  v2 = sub_10000B1F8();
  v9 = 1;
  v3 = sub_10001A6B0(v2, &v9);
  v4 = *(a1 + 56);
  v5 = sub_1000249D4(*(a1 + 32));
  v6 = sub_10000B1F8();
  v10 = 1;
  v7 = sub_10001A6B0(v6, &v10);
  if (*(a1 + 51) != 1 || (v7 - *(v5 + 8) >= 2.0 ? (v8 = v3 - v4 <= 1.0) : (v8 = 0), !v8))
  {
    sub_100024A18(*(a1 + 32), 0);
  }
}

uint64_t sub_1000249D4(void *a1)
{
  v1 = a1[6];
  v2 = a1[7] - v1;
  if (v2)
  {
    v2 = (0x6DB6DB6DB6DB6DB7 * (v2 >> 4) + a1[4] - 1) % (0x6DB6DB6DB6DB6DB7 * (v2 >> 4));
  }

  return v1 + 112 * v2;
}

void sub_100024A18(void *a1, int a2)
{
  v2 = *a1;
  v36 = a1[1];
  if (*a1 != v36)
  {
    v4 = 32;
    if (a2)
    {
      v4 = 48;
    }

    v35 = v4;
    do
    {
      v5 = a1[4];
      v6 = v2[7];
      if (v5 < v6)
      {
        v5 += 0x6DB6DB6DB6DB6DB7 * ((a1[7] - a1[6]) >> 4);
      }

      v7 = v5 - v6;
      v8 = *(v2 + v35);
      if (v7 >= v8)
      {
        v37 = *(v2 + v35);
        do
        {
          if (v7 >= v2[5])
          {
            v7 = v2[5];
          }

          if (v7 <= v8)
          {
            v9 = v8;
          }

          else
          {
            v9 = v7;
          }

          __p = 0;
          v39 = 0;
          v40 = 0;
          if (v9)
          {
            v10 = 0;
            v11 = 0;
            v12 = 0;
            v13 = v2[7];
            v14 = a1[6];
            do
            {
              v15 = (v14 + 112 * v13);
              if (v12 >= v40)
              {
                v21 = v11 + 1;
                if (v11 + 1 > 0x249249249249249)
                {
                  sub_10028C64C();
                }

                if (0xDB6DB6DB6DB6DB6ELL * ((v40 - v10) >> 4) > v21)
                {
                  v21 = 0xDB6DB6DB6DB6DB6ELL * ((v40 - v10) >> 4);
                }

                if ((0x6DB6DB6DB6DB6DB7 * ((v40 - v10) >> 4)) >= 0x124924924924924)
                {
                  v22 = 0x249249249249249;
                }

                else
                {
                  v22 = v21;
                }

                if (v22)
                {
                  sub_10011B400(&__p, v22);
                }

                v23 = 112 * v11;
                v24 = *v15;
                v25 = v15[2];
                *(v23 + 16) = v15[1];
                *(v23 + 32) = v25;
                *v23 = v24;
                v26 = v15[3];
                v27 = v15[4];
                v28 = v15[6];
                *(v23 + 80) = v15[5];
                *(v23 + 96) = v28;
                *(v23 + 48) = v26;
                *(v23 + 64) = v27;
                v29 = v12 - v10;
                v12 = (112 * v11 + 112);
                v30 = (112 * v11 - v29);
                memcpy((v23 - v29), v10, v29);
                v31 = __p;
                __p = v30;
                v39 = v12;
                v40 = 0;
                if (v31)
                {
                  operator delete(v31);
                }
              }

              else
              {
                v16 = *v15;
                v17 = v15[2];
                *(v12 + 1) = v15[1];
                *(v12 + 2) = v17;
                *v12 = v16;
                v18 = v15[3];
                v19 = v15[4];
                v20 = v15[6];
                *(v12 + 5) = v15[5];
                *(v12 + 6) = v20;
                *(v12 + 3) = v18;
                *(v12 + 4) = v19;
                v12 += 112;
              }

              v39 = v12;
              v14 = a1[6];
              v13 = a1[7] - v14;
              if (v13)
              {
                v13 = (v2[7] + 1) % (0x6DB6DB6DB6DB6DB7 * (v13 >> 4));
              }

              v2[7] = v13;
              v10 = __p;
              v11 = 0x6DB6DB6DB6DB6DB7 * ((v12 - __p) >> 4);
            }

            while (v11 < v9);
          }

          v32 = v2[3];
          if (!v32)
          {
            sub_1000CF05C();
          }

          (*(*v32 + 48))(v32, &__p);
          v33 = a1[4];
          v34 = v2[7];
          if (v33 < v34)
          {
            v33 += 0x6DB6DB6DB6DB6DB7 * ((a1[7] - a1[6]) >> 4);
          }

          if (__p)
          {
            v39 = __p;
            operator delete(__p);
          }

          v7 = v33 - v34;
          v8 = v37;
        }

        while (v33 - v34 >= v37);
      }

      v2 += 8;
    }

    while (v2 != v36);
  }
}

void sub_100024CCC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100024CF0(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100D58D80;
  block[3] = &unk_102449A78;
  block[4] = a1;
  if (qword_10265E7C8 != -1)
  {
    dispatch_once(&qword_10265E7C8, block);
  }

  if (!*(a1 + 72) || (*(a1 + 48) & 1) != 0)
  {
    return 0;
  }

  v3 = sub_10000B1F8();
  *buf = 1;
  v4 = sub_10001A6B0(v3, buf);
  v5 = (a1 + 160);
  v6 = *(a1 + 168) - *(a1 + 160);
  v7 = 0xAAAAAAAAAAAAAAABLL * (v6 >> 4);
  if (v7 < dword_10262FF30)
  {
    if (v6 != 48)
    {
      return 0;
    }

    v8 = v4 - sub_100248BDC(a1 + 160);
    if (v8 <= *(a1 + 192))
    {
      return 0;
    }

    if (qword_1025D4600 != -1)
    {
      sub_101A7470C();
    }

    v9 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134349312;
      v36 = v8;
      v37 = 2050;
      v38 = 1;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "CLJR,drop stale gps breadcrumb,timeSinceLastBreadcrumbUpdateSec,%{public}.1f,size,%{public}zu", buf, 0x16u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101A74884(v8);
    }

    goto LABEL_42;
  }

  if (v4 - sub_100248BDC(a1 + 160) < *(a1 + 184))
  {
    return 0;
  }

  v10 = sub_100D58038(a1 + 160);
  if (v10 >= 0.0)
  {
    if (v10 >= *&qword_10262FF48)
    {
      HIDWORD(v13) = -858993459 * v4 + 429496728;
      LODWORD(v13) = HIDWORD(v13);
      if ((v13 >> 1) <= 0x19999998 && sub_100143194((*(a1 + 72) + 208)) < 0.0)
      {
        sub_100D581B0((a1 + 160));
      }

      v14 = sub_100D580D4((a1 + 160));
      if (v14 >= *&qword_10262FF38)
      {
        v16 = sub_10115EE08(*(a1 + 72) + 208);
        if (v16 && sub_100143194((*(a1 + 72) + 208)) >= *&qword_10262FF48)
        {
          v21 = sub_10115F05C(*(a1 + 72) + 208);
          if (v21 >= *&qword_10262FF40)
          {
            if (qword_1025D4600 != -1)
            {
              sub_101A7470C();
            }

            v23 = qword_1025D4608;
            if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 134350081;
              v36 = v4;
              v37 = 2050;
              v38 = v7;
              v39 = 2050;
              *v40 = v10;
              *&v40[8] = 2049;
              *&v40[10] = v14;
              v41 = 2050;
              v42 = v21;
              _os_log_impl(dword_100000000, v23, OS_LOG_TYPE_DEFAULT, "CLJR,#ADL,route reconstruction for pedestrian request at mct %{public}.3f sec,numBreadcrumbs,%{public}zu,breadcrumbIntervalSec,%{public}.3f,gpsDisplacementMeters,%{private}.3f,pedestrianPct,%{public}.3f", buf, 0x34u);
            }

            if (sub_10000A100(121, 2))
            {
              bzero(buf, 0x65CuLL);
              if (qword_1025D4600 != -1)
              {
                sub_101A7470C();
              }

              v27 = 134350081;
              v28 = v4;
              v29 = 2050;
              v30 = v7;
              v31 = 2050;
              *v32 = v10;
              *&v32[8] = 2049;
              *&v32[10] = v14;
              v33 = 2050;
              v34 = v21;
              v25 = _os_log_send_and_compose_impl();
              sub_100152C7C("Generic", 1, 0, 2, "BOOL CLJITRouteReconstruction::shouldRequestRouteReconstructionForPedestrian()", "%s\n", v25);
              if (v25 != buf)
              {
                free(v25);
              }
            }

            return 1;
          }

          if (qword_1025D4600 != -1)
          {
            sub_101A7470C();
          }

          v22 = qword_1025D4608;
          if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
          {
            *buf = 134349568;
            v36 = v4;
            v37 = 2050;
            v38 = v7;
            v39 = 2050;
            *v40 = v21;
            _os_log_impl(dword_100000000, v22, OS_LOG_TYPE_DEBUG, "CLJR,pedestrian request at mct %{public}.3f,got %{public}zu breadcrumbs but pedestrian percent is low: %{public}.3f", buf, 0x20u);
          }

          result = sub_10000A100(121, 2);
          if (!result)
          {
            return result;
          }

          bzero(buf, 0x65CuLL);
          if (qword_1025D4600 != -1)
          {
            sub_101A7470C();
          }

          v27 = 134349568;
          v28 = v4;
          v29 = 2050;
          v30 = v7;
          v31 = 2050;
          *v32 = v21;
        }

        else
        {
          if (qword_1025D4600 != -1)
          {
            sub_101A7470C();
          }

          v17 = qword_1025D4608;
          if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
          {
            v18 = sub_100143194((*(a1 + 72) + 208));
            *buf = 134349824;
            v36 = v4;
            v37 = 2050;
            v38 = v7;
            v39 = 1026;
            *v40 = v16;
            *&v40[4] = 2048;
            *&v40[6] = v18;
            _os_log_impl(dword_100000000, v17, OS_LOG_TYPE_DEBUG, "CLJR,pedestrian request at mct %{public}.3f,got %{public}zu breadcrumbs but not enough pedestrian samples %{public}d or a recent reset due to vehicular (age: %.1f sec)", buf, 0x26u);
          }

          result = sub_10000A100(121, 2);
          if (!result)
          {
            return result;
          }

          bzero(buf, 0x65CuLL);
          if (qword_1025D4600 != -1)
          {
            sub_101A7470C();
          }

          v19 = sub_100143194((*(a1 + 72) + 208));
          v27 = 134349824;
          v28 = v4;
          v29 = 2050;
          v30 = v7;
          v31 = 1026;
          *v32 = v16;
          *&v32[4] = 2048;
          *&v32[6] = v19;
        }

        v20 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "BOOL CLJITRouteReconstruction::shouldRequestRouteReconstructionForPedestrian()", "%s\n", v20);
        if (v20 != buf)
        {
          free(v20);
        }

        return 0;
      }

      if (qword_1025D4600 != -1)
      {
        sub_101A7470C();
      }

      v15 = qword_1025D4608;
      if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134349569;
        v36 = v4;
        v37 = 2050;
        v38 = v7;
        v39 = 2049;
        *v40 = v14;
        _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_DEBUG, "CLJR,pedestrian request at mct %{public}.3f,got %{public}zu breadcrumbs but not enough displacement (meters): %{private}.3f", buf, 0x20u);
      }

      if (!sub_10000A100(121, 2))
      {
LABEL_42:
        sub_100D57FE4(v5);
        return 0;
      }

      bzero(buf, 0x65CuLL);
      if (qword_1025D4600 != -1)
      {
        sub_101A7470C();
      }

      v27 = 134349569;
      v28 = v4;
      v29 = 2050;
      v30 = v7;
      v31 = 2049;
      *v32 = v14;
    }

    else
    {
      if (qword_1025D4600 != -1)
      {
        sub_101A7470C();
      }

      v12 = qword_1025D4608;
      if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134349568;
        v36 = v4;
        v37 = 2050;
        v38 = v7;
        v39 = 2050;
        *v40 = v10;
        _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_DEBUG, "CLJR,pedestrian request at mct %{public}.3f,have %{public}zu breadcrumbs but interval between samples is too short: %{public}.3f sec,dropping earliest breadcrumb", buf, 0x20u);
      }

      if (!sub_10000A100(121, 2))
      {
        goto LABEL_42;
      }

      bzero(buf, 0x65CuLL);
      if (qword_1025D4600 != -1)
      {
        sub_101A7470C();
      }

      v27 = 134349568;
      v28 = v4;
      v29 = 2050;
      v30 = v7;
      v31 = 2050;
      *v32 = v10;
    }

    v24 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "BOOL CLJITRouteReconstruction::shouldRequestRouteReconstructionForPedestrian()", "%s\n", v24);
    if (v24 != buf)
    {
      free(v24);
    }

    goto LABEL_42;
  }

  if (qword_1025D4600 != -1)
  {
    sub_101A7470C();
  }

  v11 = qword_1025D4608;
  if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134349312;
    v36 = v4;
    v37 = 2050;
    v38 = *&v10;
    _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEBUG, "CLJR,pedestrian request at mct %{public}.3f,invalid spacing between breadcrumbs,%{public}.1f", buf, 0x16u);
  }

  result = sub_10000A100(121, 2);
  if (result)
  {
    sub_101A74778(v4, v10);
    return 0;
  }

  return result;
}

uint64_t sub_1000256BC(uint64_t result, uint64_t a2)
{
  if (*(result + 16))
  {
    v3 = result;
    sub_10000AED0(v23);
    v22 = 1;
    *buf = 21;
    v21[0] = 21;
    v21[1] = sub_10000AD98(buf);
    sub_10000AFE4(v23, &v22, v21, v21, a2);
    v25 |= 2u;
    v4 = v24;
    if (!v24)
    {
      operator new();
    }

    *(v24 + 492) |= 0x800u;
    v5 = *(v4 + 352);
    if (!v5)
    {
      operator new();
    }

    *(v5 + 200) |= 0x10u;
    v6 = *(v5 + 32);
    if (!v6)
    {
      operator new();
    }

    *(v6 + 28) |= 1u;
    *(v6 + 8) = -1;
    if (!sub_1000183C8(1u))
    {
      __assert_rtn("set_notification_type", "CLPLocationController.pb.h", 9866, "::CLP::LogEntry::PrivateData::SystemNotification_NotificationType_IsValid(value)");
    }

    v7 = *(v6 + 28);
    *(v6 + 12) = 1;
    *(v6 + 28) = v7 | 6;
    v8 = *(v6 + 16);
    if (!v8)
    {
      operator new();
    }

    *(v8 + 76) |= 1u;
    v9 = *(v8 + 8);
    if (!v9)
    {
      operator new();
    }

    sub_1000182AC(a2, v9);
    v10 = *(a2 + 24);
    *(v8 + 76) |= 2u;
    *(v8 + 16) = v10;
    v11 = sub_10000BFC0(v3);
    if (*(v3 + 8) == 1)
    {
      v12 = v11;
      if (qword_1025D4600 != -1)
      {
        sub_1018D8CDC();
      }

      v13 = qword_1025D4608;
      if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
      {
        v14 = *(a2 + 16);
        v15 = *a2;
        v16 = *(a2 + 24);
        *buf = 67240960;
        v35 = v12;
        v36 = 2050;
        v37 = v14;
        v38 = 2050;
        v39 = v15;
        v40 = 1026;
        v41 = v16;
        _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_DEBUG, "#locctl,#rec,recordHeartbeat,success,%{public}d,received timestamp,cfat,%{public}.3f,mct,%{public}.3f,is_valid,%{public}d", buf, 0x22u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1018D8D04(buf);
        v17 = *(a2 + 16);
        v18 = *a2;
        v19 = *(a2 + 24);
        v26 = 67240960;
        v27 = v12;
        v28 = 2050;
        v29 = v17;
        v30 = 2050;
        v31 = v18;
        v32 = 1026;
        v33 = v19;
        v20 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "void CLLocationControllerRecorder::recordHeartbeat(const CLUtils::Timestamp &)", "%s\n", v20);
        if (v20 != buf)
        {
          free(v20);
        }
      }
    }

    return sub_10000CE1C(v23);
  }

  return result;
}

void sub_100025A80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_10000CE1C(va);
  _Unwind_Resume(a1);
}

void sub_100025B28(uint64_t a1)
{
  v2 = *(a1 + 1952);
  v3 = *(a1 + 712);
  v4 = sub_10000B1F8();
  *v17 = 1;
  *v17 = sub_10001A6B0(v4, v17);
  sub_100028208(a1 + 800, (v2 & 1) == 0, v3, v17);
  if (sub_100027514((a1 + 800)) && (*(a1 + 672) & 1) == 0)
  {
    if (*(a1 + 712) == 1 && (*(a1 + 682) & 1) == 0)
    {
      if (qword_1025D4600 != -1)
      {
        sub_101873804();
      }

      v9 = qword_1025D4608;
      if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEFAULT))
      {
        *v17 = 0;
        _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEFAULT, "LCPM,bestAccuracyDoesNotRequireGps,true,on heartbeat", v17, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_10187382C();
      }

      v10 = sub_10000B1F8();
      *v17 = 1;
      *v17 = sub_10001A6B0(v10, v17);
      sub_1003E0928((a1 + 800), v17);
      v17[0] = 2;
      sub_1001D3BE4(a1, v17);
      if (*(a1 + 160) < 1)
      {
        sub_1001EFA0C(a1 + 800);
        return;
      }

      *(a1 + 161) = -1;
      if (qword_1025D4600 != -1)
      {
        sub_101873804();
      }

      v11 = qword_1025D4608;
      if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEFAULT))
      {
        *v17 = 0;
        _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEFAULT, "LCPM,update required location granularity to Fine,on heartbeat", v17, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101873908();
      }

      *(a1 + 160) = 1;
      sub_10010FB88(a1, (a1 + 160));
      *(a1 + 682) = 1;
      goto LABEL_54;
    }
  }

  else if ((sub_100027514((a1 + 800)) & 1) == 0 && *(a1 + 682) == 1)
  {
    if (qword_1025D4600 != -1)
    {
      sub_101873804();
    }

    v5 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 682);
      *v17 = 67240192;
      *&v17[4] = v6;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEFAULT, "LCPM,bestAccuracyDoesNotRequireGps,false,on heartbeat,fThrottlingGps,%{public}d", v17, 8u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018739E4((a1 + 682));
    }

    v7 = (a1 + 160);
    if (*(a1 + 160) < 1)
    {
      sub_1001EFA0C(a1 + 800);
    }

    else
    {
      *(a1 + 161) = -1;
      *v17 = 0;
      if (sub_10000608C(a1, v17, 1))
      {
        if (*v7 != 2)
        {
          if (qword_1025D4600 != -1)
          {
            sub_101873804();
          }

          v8 = qword_1025D4608;
          if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEFAULT))
          {
            *v17 = 0;
            _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEFAULT, "LCPM,update required location granularity to Best,on heartbeat", v17, 2u);
          }

          if (sub_10000A100(121, 2))
          {
            sub_101873AD8();
          }

          *v7 = 2;
        }
      }

      else
      {
        *v17 = 1;
        if (sub_10000608C(a1, v17, 1) && *v7 != 1)
        {
          *v7 = 1;
          if (qword_1025D4600 != -1)
          {
            sub_101873804();
          }

          v12 = qword_1025D4608;
          if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEFAULT))
          {
            *v17 = 0;
            _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_DEFAULT, "LCPM,update required location granularity to Fine,on heartbeat", v17, 2u);
          }

          if (sub_10000A100(121, 2))
          {
            sub_101873908();
          }
        }
      }

      if (qword_1025D4600 != -1)
      {
        sub_101873804();
      }

      v13 = qword_1025D4608;
      if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEFAULT))
      {
        v14 = sub_10000B1F8();
        *v17 = 1;
        v15 = sub_10001A6B0(v14, v17) - *(a1 + 1320);
        v16 = *(a1 + 160);
        *v17 = 134349312;
        *&v17[4] = v15;
        v18 = 1026;
        v19 = v16;
        _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_DEFAULT, "LCPM,delayGpsStart,delayed for %{public}.3lfs,subscribing now,granularity,%{public}d", v17, 0x12u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101873BB4(a1, (a1 + 160));
      }

      sub_10010FB88(a1, (a1 + 160));
    }

    *(a1 + 682) = 0;
LABEL_54:
    sub_10017ECA4(a1);
  }
}

void sub_100025FE8(uint64_t a1, int a2, double a3)
{
  if (a2 == 1)
  {
    *(a1 + 1016) = *(a1 + 24);
    if ((*(a1 + 193) & 1) == 0)
    {
      v5 = *(a1 + 56);
      if (v5 != 1.79769313e308)
      {
        *(a1 + 1032) = *(a1 + 136) - v5;
        *(a1 + 191) = 0;
        if (qword_1025D4600 != -1)
        {
          sub_101A85004();
        }

        v6 = qword_1025D4608;
        if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEFAULT))
        {
          v7 = *(a1 + 184);
          *buf = 67240192;
          v18 = v7;
          _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEFAULT, "#CLProactiveLoc,active,%{public}d,IOCalibrationStatusUncalibrated", buf, 8u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_101A85578(a1);
        }
      }
    }

    *(a1 + 193) = 1;
    a3 = *(a1 + 1016);
  }

  else if (a2 == 2)
  {
    a3 = *(a1 + 24);
    *(a1 + 1016) = a3;
    *(a1 + 193) = 0;
  }

  else
  {
    *(a1 + 193) = 0;
    if (a3 <= 0.0)
    {
      a3 = *(a1 + 24);
    }

    *(a1 + 1016) = a3;
  }

  v8 = *(a1 + 24);
  if (a3 >= v8 && (*(a1 + 191) & 1) == 0)
  {
    if (qword_1025D4600 != -1)
    {
      sub_101A84F98();
    }

    v9 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(a1 + 184);
      v11 = *(a1 + 1016);
      *buf = 67240704;
      v18 = v10;
      v19 = 2050;
      v20 = v11;
      v21 = 1026;
      v22 = a2;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEFAULT, "#CLProactiveLoc,active,%{public}d,fuserUncertaintyHigh,%{public}.1f,status,%{public}d", buf, 0x18u);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4600 != -1)
      {
        sub_101A84F98();
      }

      v15 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "void CLProactiveLocation::feedLocationUncertainty(double, CLInertialOdometryCalibrationStatus)", "%s\n", v15);
      if (v15 != buf)
      {
        free(v15);
      }
    }

    *(a1 + 191) = 1;
    if (*(a1 + 1032) > 0.0)
    {
      *(a1 + 1032) = 0;
    }

    sub_1002746C0(a1);
    v8 = *(a1 + 24);
  }

  if (*(a1 + 1016) < v8 && (*(a1 + 192) & 1) == 0)
  {
    if (qword_1025D4600 != -1)
    {
      sub_101A84F98();
    }

    v12 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEFAULT))
    {
      v13 = *(a1 + 184);
      v14 = *(a1 + 1016);
      *buf = 67240704;
      v18 = v13;
      v19 = 2050;
      v20 = v14;
      v21 = 1026;
      v22 = a2;
      _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_DEFAULT, "#CLProactiveLoc,active,%{public}d,fuserUncertaintyLow,%{public}.1f,status,%{public}d", buf, 0x18u);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4600 != -1)
      {
        sub_101A84F98();
      }

      v16 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "void CLProactiveLocation::feedLocationUncertainty(double, CLInertialOdometryCalibrationStatus)", "%s\n", v16);
      if (v16 != buf)
      {
        free(v16);
      }
    }

    *(a1 + 191) = 256;
  }
}

void sub_100026470(uint64_t *a1)
{
  sub_10002670C(a1, 0);
  v2 = sub_10000B1F8();
  LODWORD(v14[0]) = 1;
  v3 = sub_10001A6B0(v2, v14);
  v4 = a1 + 5;
  v5 = sub_100026A40(a1[5], v3);
  (*(*a1 + 24))(v14, a1);
  v6 = sub_100026A40(a1[5], *&v14[2]);
  if (!sub_100028030(v14) || !v15 || v6 != v5)
  {
    if (qword_1025D4600 != -1)
    {
      sub_10194EB0C();
    }

    v7 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134349056;
      *v17 = v3;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEBUG, "LCOutputBuffer,missing a location at heartbeat MCT %{public}.3f sec,querying the latest fused location", buf, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10194F4E4();
    }

    if (sub_100026B08(a1))
    {
      if (qword_1025D4600 != -1)
      {
        sub_10194EB0C();
      }

      v8 = qword_1025D4608;
      if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
      {
        v9 = sub_10000B1F8();
        *buf = 1;
        v10 = sub_10001A6B0(v9, buf);
        *buf = 134349056;
        *v17 = v10;
        _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEBUG, "LCOutputBuffer,#ADL,polling location from fuser at MCT %{public}.3f sec", buf, 0xCu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_10194F6F4();
      }
    }

    else
    {
      if (qword_1025D4600 != -1)
      {
        sub_10194EB0C();
      }

      v11 = qword_1025D4608;
      if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
      {
        v12 = *(*v4 + 68);
        v13 = sub_1006A9980(*v4);
        *buf = 67240448;
        *v17 = v12;
        *&v17[4] = 2050;
        *&v17[6] = v13;
        _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEBUG, "LCOutputBuffer,could not poll fuser for latest location,sz,%{public}d,len_sec,%{public}.1f", buf, 0x12u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_10194F5D4(v4);
      }
    }
  }
}

void sub_10002670C(uint64_t a1, char a2)
{
  if (*(a1 + 64) == 1)
  {
    v4 = sub_1006A9980(*(a1 + 40));
    __p = 0;
    v24 = 0;
    v25 = 0;
    v5 = *(a1 + 40);
    if (*(v5 + 68) < 1)
    {
      v6 = 0;
      if (a2)
      {
LABEL_15:
        if (qword_1025D4600 != -1)
        {
          sub_10194EB0C();
        }

        v16 = qword_1025D4608;
        if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
        {
          v17 = sub_10000B1F8();
          v26 = 1;
          v18 = sub_10001A6B0(v17, &v26);
          *buf = 134349312;
          *&buf[4] = v18;
          *&buf[12] = 1026;
          *&buf[14] = 1;
          _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_DEBUG, "LCOutputBuffer,requested full buffer snapshot record,mct,%{public}.3f,reason,%{public}d", buf, 0x12u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_10194EAC8(buf);
          v21 = sub_10002F470();
          v26 = 134349312;
          v27 = v21;
          v28 = 1026;
          v29 = 1;
          v22 = _os_log_send_and_compose_impl();
          sub_100152C7C("Generic", 1, 0, 2, "void CLLocationControllerOutputBuffer::recordInternalState(const BOOL) const", "%s\n", v22);
          if (v22 != buf)
          {
            free(v22);
          }
        }

        v19 = 1;
        goto LABEL_23;
      }
    }

    else
    {
      v6 = 0;
      v7 = 0;
      v8 = 0;
      do
      {
        v9 = sub_100027CC4(v5, v8);
        *buf = off_1024DE5F8;
        v10 = *(v9 + 24);
        v11 = *(v9 + 40);
        v12 = *(v9 + 56);
        *&buf[8] = *(v9 + 8);
        v33 = v12;
        v32 = v11;
        v31 = v10;
        v13 = *(v9 + 88);
        v14 = *(v9 + 104);
        v15 = *(v9 + 120);
        v34 = *(v9 + 72);
        v37 = v15;
        v36 = v14;
        v35 = v13;
        v38 = *(v9 + 128);
        if (sub_100028030(buf))
        {
          if (BYTE8(v38))
          {
            v7 = 0;
          }

          else
          {
            ++v7;
          }
        }

        else
        {
          ++v7;
        }

        if (v7 > v6)
        {
          v6 = v7;
        }

        if (a2)
        {
          sub_10082FC2C(&__p, buf);
        }

        ++v8;
        v5 = *(a1 + 40);
      }

      while (v8 < *(v5 + 68));
      if (a2)
      {
        goto LABEL_15;
      }
    }

    v19 = 0;
LABEL_23:
    v20 = sub_10000AE98();
    sub_1005D4E44(v20, *(*(a1 + 40) + 68), v4, v6, v19, &__p);
    if (__p)
    {
      v24 = __p;
      operator delete(__p);
    }
  }
}

void sub_100026A0C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100026A40(uint64_t a1, double a2)
{
  v2 = *(a1 + 76);
  if (v2 < 0)
  {
    return 0;
  }

  else
  {
    return ((v2 - vcvtpd_s64_f64(a2 / *(a1 + 8))) / *(a1 + 8));
  }
}

uint64_t sub_100026A70(uint64_t a1)
{
  v2 = sub_10000B1F8();
  v3 = 1;
  v6 = 1;
  v4 = sub_10001A6B0(v2, &v6);
  if (*(a1 + 1000) == 1 && *(a1 + 1024) == 1 && *(a1 + 1040) <= v4 && *(a1 + 1048) >= v4)
  {
    if (v4 - *(a1 + 960) <= 180.0)
    {
      return 3;
    }

    else
    {
      return 2;
    }
  }

  return v3;
}

uint64_t sub_100026B08(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    return 0;
  }

  v3 = std::__shared_weak_count::lock(v2);
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = *(a1 + 8);
  if (!v5)
  {
    sub_100008080(v4);
    return 0;
  }

  v13 = 0xFFFF;
  v14 = 0;
  v15 = 0;
  v16 = xmmword_101C75BF0;
  __asm { FMOV            V0.2D, #-1.0 }

  v17 = _Q0;
  v18 = _Q0;
  v19 = _Q0;
  v20 = 0;
  v24 = 0;
  v23 = 0;
  v21 = 0xBFF0000000000000;
  v22 = 0;
  v25 = 0xBFF0000000000000;
  v26 = 0x7FFFFFFF;
  v29 = 0;
  v27 = 0;
  v28 = 0;
  v30 = 0;
  v11 = (*(*v5 + 176))(v5, &v13);
  sub_100008080(v4);
  return v11;
}

uint64_t sub_100026C04(uint64_t a1)
{
  if (*(a1 + 520) <= 0.0)
  {
    return 0;
  }

  v2 = *(a1 + 472);
  v3 = *(a1 + 476);
  v4 = *(a1 + 480);
  v5 = *(a1 + 484);
  v6 = *(a1 + 488);
  v7 = sub_10000B1F8();
  *buf = 1;
  v8 = sub_10001A6B0(v7, buf);
  result = 0;
  if (*(a1 + 136) != 1)
  {
    return result;
  }

  if ((v5 + sqrtf(((v3 * v3) + (v2 * v2)) + (v4 * v4))) >= 5.0 || v6 >= 2.0)
  {
    return result;
  }

  if (*(a1 + 466))
  {
    return 0;
  }

  result = 0;
  if ((*(a1 + 467) & 1) == 0)
  {
    v11 = v8 - *(a1 + 520);
    if (v11 <= 0.5)
    {
      if (qword_1025D4600 != -1)
      {
        sub_1018754B0();
      }

      v12 = qword_1025D4608;
      if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_INFO))
      {
        v13 = *(a1 + 136);
        v14 = *(a1 + 466);
        v15 = *(a1 + 467);
        *buf = 67241729;
        v18 = 1;
        v19 = 1026;
        v20 = v13;
        v21 = 1026;
        v22 = 1;
        v23 = 1026;
        v24 = 1;
        v25 = 1025;
        v26 = v14;
        v27 = 1025;
        v28 = v15;
        v29 = 2050;
        v30 = v11;
        _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_INFO, "#GPSPowerSavings,couldDelayGpsUse,%{public}d,is_stationary,%{public}d,is_displacement_thld_met,%{public}d,is_velocity_thld_met,%{public}d,was_fitness,%{private}d,was_driving,%{private}d,start_delay_time_sec,%{public}.3lf", buf, 0x30u);
      }

      if (sub_10000A100(121, 2))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1025D4600 != -1)
        {
          sub_1018754B0();
        }

        v16 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "BOOL CLGpsPowerSavingsMonitor::couldDelayGpsUse() const", "%s\n", v16);
        if (v16 != buf)
        {
          free(v16);
        }
      }

      return 1;
    }
  }

  return result;
}

void sub_100026EE0(uint64_t a1)
{
  v1 = (a1 + 3);
  if (*(a1 + 3) == 1)
  {
    v3 = sub_10000B1F8();
    sub_10000AED4(v3, &v8);
    if (*&v11[2] - *(a1 + 64) > 300.0)
    {
      *(a1 + 3) = 0;
      sub_100226E7C(a1);
      if (qword_1025D4600 != -1)
      {
        sub_10193CF9C();
      }

      v4 = qword_1025D4608;
      if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
      {
        v5 = *(a1 + 3);
        v6 = *(a1 + 256);
        v7 = *(a1 + 258);
        v8 = 134219008;
        v9 = 0xBFF0000000000000;
        v10 = 2048;
        *v11 = 0xBFF0000000000000;
        *&v11[8] = 1024;
        v12 = v5;
        v13 = 1024;
        v14 = v6;
        v15 = 1024;
        v16 = v7;
        _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "#HST,speed,%f,speedSigma,%f,source,Wifi,isHighSpeedTransit,%d,isAboveAutomobileSpeed,%d,isSmoothTrajectory,%d", &v8, 0x28u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_10193D484(v1, a1);
      }
    }
  }
}

void *sub_10002703C(void *result)
{
  *result = &off_1024B3A48;
  result[1] = 0;
  result[2] = 0;
  result[3] = 0;
  return result;
}

uint64_t sub_100027060(uint64_t result)
{
  *result = off_1024B39D0;
  *(result + 8) = 0;
  *(result + 16) = 0;
  *(result + 20) = 0;
  *(result + 36) = 0;
  *(result + 28) = 0;
  *(result + 48) = &wireless_diagnostics::google::protobuf::internal::kEmptyString;
  *(result + 56) = 0;
  *(result + 64) = 0;
  *(result + 72) = 0;
  return result;
}

uint64_t sub_1000270A0(uint64_t a1, unsigned int a2)
{
  LOBYTE(v3) = *(a1 + 76);
  if (!v3)
  {
    v5 = 0;
    goto LABEL_50;
  }

  if (*(a1 + 76))
  {
    v6 = *(a1 + 8);
    if (!v6)
    {
      v6 = *(qword_102637DE8 + 8);
    }

    v7 = sub_1000183D4(v6);
    v8 = v7;
    if (v7 >= 0x80)
    {
      v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v7, a2);
    }

    else
    {
      v9 = 1;
    }

    v4 = v8 + v9 + 1;
    v3 = *(a1 + 76);
  }

  else
  {
    v4 = 0;
  }

  v5 = (v3 & 2) + v4;
  if ((v3 & 4) != 0)
  {
    v10 = *(a1 + 20);
    if ((v10 & 0x80000000) != 0)
    {
      v11 = 11;
    }

    else if (v10 >= 0x80)
    {
      v11 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v10, a2) + 1;
      v3 = *(a1 + 76);
    }

    else
    {
      v11 = 2;
    }

    v5 += v11;
    if ((v3 & 0x10) == 0)
    {
LABEL_13:
      if ((v3 & 0x20) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_29;
    }
  }

  else if ((v3 & 0x10) == 0)
  {
    goto LABEL_13;
  }

  v12 = *(a1 + 56);
  if ((v12 & 0x80000000) != 0)
  {
    v13 = 11;
  }

  else if (v12 >= 0x80)
  {
    v13 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v12, a2) + 1;
    v3 = *(a1 + 76);
  }

  else
  {
    v13 = 2;
  }

  v5 += v13;
  if ((v3 & 0x20) == 0)
  {
LABEL_14:
    if ((v3 & 0x40) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_38;
  }

LABEL_29:
  v14 = *(a1 + 48);
  v15 = *(v14 + 23);
  v16 = v15;
  v17 = *(v14 + 8);
  if ((v15 & 0x80u) == 0)
  {
    v18 = *(v14 + 23);
  }

  else
  {
    v18 = v17;
  }

  if (v18 >= 0x80)
  {
    v19 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v18, a2);
    v15 = *(v14 + 23);
    v17 = *(v14 + 8);
    v3 = *(a1 + 76);
    v16 = *(v14 + 23);
  }

  else
  {
    v19 = 1;
  }

  if (v16 < 0)
  {
    v15 = v17;
  }

  v5 += v19 + v15 + 1;
  if ((v3 & 0x40) == 0)
  {
LABEL_15:
    if ((v3 & 0x80) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_44;
  }

LABEL_38:
  v20 = *(a1 + 64);
  if (!v20)
  {
    v20 = *(qword_102637DE8 + 64);
  }

  v21 = sub_10011154C(v20, a2);
  v22 = v21;
  if (v21 >= 0x80)
  {
    v23 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v21, a2);
  }

  else
  {
    v23 = 1;
  }

  v5 += v22 + v23 + 1;
  if ((*(a1 + 76) & 0x80) != 0)
  {
LABEL_44:
    v24 = *(a1 + 60);
    if ((v24 & 0x80000000) != 0)
    {
      v25 = 11;
    }

    else if (v24 >= 0x80)
    {
      v25 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v24, a2) + 1;
    }

    else
    {
      v25 = 2;
    }

    v5 += v25;
  }

LABEL_50:
  v26 = *(a1 + 32);
  v27 = (v26 + v5);
  if (v26 >= 1)
  {
    v28 = 0;
    do
    {
      v29 = sub_100DE6B40(*(*(a1 + 24) + 8 * v28), a2);
      v30 = v29;
      if (v29 >= 0x80)
      {
        v31 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v29, a2);
      }

      else
      {
        v31 = 1;
      }

      v27 = (v30 + v27 + v31);
      ++v28;
    }

    while (v28 < *(a1 + 32));
  }

  *(a1 + 72) = v27;
  return v27;
}

uint64_t sub_1000272D4(uint64_t result, const wireless_diagnostics::google::protobuf::MessageLite *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 76);
  if (v6)
  {
    v9 = *(result + 8);
    if (!v9)
    {
      v9 = *(qword_102637DE8 + 8);
    }

    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, v9, a2, a4);
    v6 = *(v5 + 76);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(2, *(v5 + 16), a2, a4);
  if ((*(v5 + 76) & 4) != 0)
  {
LABEL_4:
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(3, *(v5 + 20), a2, a4);
  }

LABEL_5:
  if (*(v5 + 32) >= 1)
  {
    v7 = 0;
    do
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(4, *(*(v5 + 24) + 8 * v7++), a2, a4);
    }

    while (v7 < *(v5 + 32));
  }

  v8 = *(v5 + 76);
  if ((v8 & 0x10) != 0)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(5, *(v5 + 56), a2, a4);
    v8 = *(v5 + 76);
    if ((v8 & 0x20) == 0)
    {
LABEL_10:
      if ((v8 & 0x40) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_20;
    }
  }

  else if ((v8 & 0x20) == 0)
  {
    goto LABEL_10;
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v8 = *(v5 + 76);
  if ((v8 & 0x40) == 0)
  {
LABEL_11:
    if ((v8 & 0x80) == 0)
    {
      return result;
    }

    goto LABEL_23;
  }

LABEL_20:
  v10 = *(v5 + 64);
  if (!v10)
  {
    v10 = *(qword_102637DE8 + 64);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(7, v10, a2, a4);
  if ((*(v5 + 76) & 0x80) != 0)
  {
LABEL_23:
    v11 = *(v5 + 60);

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(8, v11, a2, a4);
  }

  return result;
}

uint64_t sub_100027438(uint64_t *a1)
{
  v2 = *(a1 + 3);
  if (v2 >= 1)
  {
    for (i = 0; i < v2; ++i)
    {
      v4 = *(*a1 + 8 * i);
      if (v4)
      {
        (*(*v4 + 8))(v4);
        v2 = *(a1 + 3);
      }
    }
  }

  result = *a1;
  if (*a1)
  {

    operator delete[]();
  }

  return result;
}

void sub_1000274DC(uint64_t *a1)
{
  sub_100027710(a1);

  operator delete();
}

uint64_t sub_100027514(_BYTE *a1)
{
  if (((a1[48] & 1) != 0 || sub_100026C04(a1)) && *a1 == 1 && (a1[49] & 1) == 0)
  {
    v2 = a1[51];
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

void sub_10002756C(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  sub_1000275A4(a1);

  operator delete();
}

void sub_1000275A4(wireless_diagnostics::google::protobuf::MessageLite *this)
{
  *this = &off_1024B3A48;
  if (qword_102637DD8 != this)
  {
    v2 = *(this + 2);
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

void *sub_100027630(void *result)
{
  v1 = result;
  v2 = result[6];
  if (v2 != &wireless_diagnostics::google::protobuf::internal::kEmptyString && v2 != 0)
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    operator delete();
  }

  if (qword_102637DE8 != result)
  {
    v4 = result[1];
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }

    result = v1[8];
    if (result)
    {
      v5 = *(*result + 8);

      return v5();
    }
  }

  return result;
}

void sub_100027710(uint64_t *a1)
{
  *a1 = off_1024B39D0;
  v2 = a1 + 3;
  sub_100027630(a1);
  sub_100027438(v2);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

uint64_t sub_100027774(uint64_t a1, unsigned int a2)
{
  LOBYTE(v3) = *(a1 + 28);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_26;
  }

  if (*(a1 + 28))
  {
    v5 = *(a1 + 8);
    if ((v5 & 0x80000000) != 0)
    {
      v4 = 11;
      if ((v3 & 2) == 0)
      {
        goto LABEL_19;
      }
    }

    else if (v5 >= 0x80)
    {
      v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5, a2) + 1;
      v3 = *(a1 + 28);
      if ((v3 & 2) == 0)
      {
        goto LABEL_19;
      }
    }

    else
    {
      v4 = 2;
      if ((v3 & 2) == 0)
      {
        goto LABEL_19;
      }
    }
  }

  else
  {
    v4 = 0;
    if ((*(a1 + 28) & 2) == 0)
    {
      goto LABEL_19;
    }
  }

  v6 = *(a1 + 12);
  if ((v6 & 0x80000000) != 0)
  {
    v7 = 11;
  }

  else if (v6 >= 0x80)
  {
    v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6, a2) + 1;
    v3 = *(a1 + 28);
  }

  else
  {
    v7 = 2;
  }

  v4 = (v7 + v4);
LABEL_19:
  if ((v3 & 4) != 0)
  {
    v8 = *(a1 + 16);
    if (!v8)
    {
      v8 = *(qword_102637DD8 + 16);
    }

    v9 = sub_1000270A0(v8, a2);
    v11 = v9;
    if (v9 >= 0x80)
    {
      v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9, v10);
    }

    else
    {
      v12 = 1;
    }

    v4 = (v4 + v11 + v12 + 1);
  }

LABEL_26:
  *(a1 + 24) = v4;
  return v4;
}

uint64_t sub_100027870(uint64_t result, const wireless_diagnostics::google::protobuf::MessageLite *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 28);
  if ((v6 & 1) == 0)
  {
    if ((v6 & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(2, *(v5 + 12), a2, a4);
    if ((*(v5 + 28) & 4) == 0)
    {
      return result;
    }

    goto LABEL_7;
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(1, *(result + 8), a2, a4);
  v6 = *(v5 + 28);
  if ((v6 & 2) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if ((v6 & 4) == 0)
  {
    return result;
  }

LABEL_7:
  v7 = *(v5 + 16);
  if (!v7)
  {
    v7 = *(qword_102637DD8 + 16);
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(3, v7, a2, a4);
}

uint64_t sub_10002790C(uint64_t a1, uint64_t a2)
{
  *a2 = 0xFFFF;
  *(a2 + 12) = 0;
  *(a2 + 4) = 0;
  *(a2 + 20) = xmmword_101C75BF0;
  __asm { FMOV            V0.2D, #-1.0 }

  *(a2 + 36) = _Q0;
  *(a2 + 52) = _Q0;
  *(a2 + 68) = _Q0;
  *(a2 + 84) = 0;
  *(a2 + 96) = 0;
  *(a2 + 104) = 0;
  *(a2 + 88) = 0xBFF0000000000000;
  *(a2 + 112) = 0;
  *(a2 + 116) = 0xBFF0000000000000;
  *(a2 + 124) = 0x7FFFFFFF;
  *(a2 + 136) = 0;
  *(a2 + 144) = 0;
  *(a2 + 128) = 0;
  *(a2 + 152) = 0;
  v7 = *(a1 + 124);
  if (!v7)
  {
    if (qword_1025D4770 != -1)
    {
      sub_101BA7B40();
    }

    v10 = qword_1025D4778;
    if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_ERROR, "#Error,ProviderLoc,toDaemonLocation,fused location type is Unknown", buf, 2u);
    }

    if (!sub_10000A100(121, 0))
    {
      return 0;
    }

LABEL_17:
    sub_101BA7B54(buf);
    v13 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 0, "virtual BOOL cllcf::LCFusionProviderLocation::toDaemonLocation(CLDaemonLocation &) const", "%s\n", v13);
    if (v13 != buf)
    {
      free(v13);
    }

    return 0;
  }

  v8 = *(a1 + 40);
  if (v8 <= 0.0)
  {
    if (qword_1025D4770 != -1)
    {
      sub_101BA7B40();
    }

    v11 = qword_1025D4778;
    if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_ERROR, "#Error,ProviderLoc,toDaemonLocation,get fused location failed,hunc <= 0", buf, 2u);
    }

    if (!sub_10000A100(121, 0))
    {
      return 0;
    }

    goto LABEL_17;
  }

  *(a2 + 96) = v7;
  *(a2 + 76) = *(a1 + 8);
  *(a2 + 4) = *(a1 + 24);
  *(a2 + 20) = v8;
  *(a2 + 28) = *(a1 + 48);
  *(a2 + 44) = *(a1 + 72);
  *(a2 + 60) = *(a1 + 88);
  *(a2 + 84) = *(a1 + 116);
  *(a2 + 88) = *(a1 + 104);
  v9 = 1;
  *(a2 + 132) = 1;
  sub_100027CA8(a2);
  return v9;
}

void sub_100027C0C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10037EA9C(a1);
}

__n128 sub_100027C18@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = sub_100027CC4(*(a1 + 40), 0);
  *a2 = off_1024DE5F8;
  v4 = *(v3 + 8);
  v5 = *(v3 + 40);
  v6 = *(v3 + 56);
  *(a2 + 24) = *(v3 + 24);
  *(a2 + 56) = v6;
  *(a2 + 40) = v5;
  *(a2 + 8) = v4;
  v7 = *(v3 + 88);
  v8 = *(v3 + 104);
  v9 = *(v3 + 120);
  *(a2 + 72) = *(v3 + 72);
  *(a2 + 120) = v9;
  *(a2 + 104) = v8;
  *(a2 + 88) = v7;
  result = *(v3 + 128);
  *(a2 + 128) = result;
  return result;
}

double sub_100027CA8(uint64_t a1)
{
  *(a1 + 100) = *(a1 + 4);
  *(a1 + 136) = *(a1 + 132);
  result = *(a1 + 60);
  *(a1 + 116) = result;
  return result;
}

uint64_t sub_100027CC4(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    return a1 + 80;
  }

  v2 = *(a1 + 64);
  v3 = ((*(a1 + 72) - a2) % v2);
  v4 = v3 + v2;
  if ((v3 & 0x80000000) != 0)
  {
    v3 = v4;
  }

  v5 = *(a1 + 40);
  if (0x8E38E38E38E38E39 * ((*(a1 + 48) - v5) >> 4) <= v3)
  {
    sub_10046F324();
  }

  return v5 + 144 * v3;
}

void sub_100027F98(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10037EA9C(a1);
  }

  _Unwind_Resume(a1);
}

BOOL sub_100027FB4(uint64_t a1)
{
  if (!*(a1 + 96) || *(a1 + 76) <= 0.0)
  {
    return 0;
  }

  result = 0;
  if (*(a1 + 20) > 0.0)
  {
    v3 = fabs(*(a1 + 4));
    if (v3 <= 90.0)
    {
      v4 = fabs(*(a1 + 12));
      if (v4 <= 180.0)
      {
        return v4 >= 0.0000001 || v3 >= 0.0000001;
      }
    }
  }

  return result;
}

void sub_1000280A0(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  (*(*a1 + 24))(v10);
  *a2 = 0xFFFF;
  *(a2 + 12) = 0;
  *(a2 + 4) = 0;
  *(a2 + 20) = xmmword_101C75BF0;
  __asm { FMOV            V0.2D, #-1.0 }

  *(a2 + 36) = _Q0;
  *(a2 + 52) = _Q0;
  *(a2 + 68) = _Q0;
  *(a2 + 84) = 0;
  *(a2 + 96) = 0;
  *(a2 + 104) = 0;
  *(a2 + 88) = 0xBFF0000000000000;
  *(a2 + 112) = 0;
  *(a2 + 116) = 0xBFF0000000000000;
  *(a2 + 124) = 0x7FFFFFFF;
  *(a2 + 136) = 0;
  *(a2 + 144) = 0;
  *(a2 + 128) = 0;
  *(a2 + 152) = 0;
  if (sub_100028030(v10) && v11)
  {
    sub_10002790C(v10, a2);
  }

  else
  {
    if (qword_1025D4600 != -1)
    {
      sub_10194EB0C();
    }

    v8 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
    {
      *v9 = 0;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEBUG, "LCOutputBuffer,getLatestDaemonLocation,invalid location", v9, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10194EFF4();
    }
  }
}

double sub_1000281DC()
{
  v0 = sub_10000B1F8();
  v2 = 0;
  return sub_10001A6B0(v0, &v2);
}

void sub_100028208(uint64_t a1, char a2, char a3, double *a4)
{
  v5 = (a1 + 56);
  v6 = *(a1 + 56);
  *(a1 + 465) = a2;
  if (*a4 - v6 <= 0.909)
  {
    if (qword_1025D4600 != -1)
    {
      sub_1018754D8();
    }

    v7 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
    {
      v8 = *a4;
      v9 = *v5;
      v10 = *a4 - *v5;
      v11 = 134349568;
      v12 = v8;
      v13 = 2050;
      v14 = v9;
      v15 = 2050;
      v16 = v10;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEBUG, "#GPSPowerSavings,heartbeat too fast,now,%{public}.3lf,last,%{public}.3lf,diff,%{public}.3lf", &v11, 0x20u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018776B8();
    }
  }

  else
  {
    *(a1 + 56) = *a4;
    if (*(a1 + 520) > 0.0)
    {
      ++*(a1 + 492);

      sub_10017683C(a1, a3, a4);
    }
  }
}

BOOL sub_10002838C(uint64_t a1, double a2)
{
  if (a2 >= 0.0)
  {
    v4 = *(a1 + 364);
    if (v4 == 2)
    {
      v17 = *(a1 + 360) - 1;
      if (v17 > 9)
      {
        v19 = 13.3333333;
        v18 = 0.0166666667;
      }

      else
      {
        v18 = dbl_101C895C0[v17];
        v19 = dbl_101C89610[v17];
      }

      v20 = exp(-(v18 * a2));
      v21 = exp(v18 * -2.0 * a2);
      v22 = v18 + v18;
      v23 = 1.0 - v20;
      v24 = 1.0 - v21;
      v25 = 0.0;
      if (COERCE_UNSIGNED_INT64(1.0 - v20) >> 52 >= 0x7FF)
      {
        v23 = 0.0;
      }

      if (*&v24 >> 52 < 0x7FFuLL)
      {
        v25 = v24;
      }

      v26 = v19 / (v18 * v18);
      v9 = v26 * (a2 + -2.0 / v18 * v23 + 1.0 / v22 * v25);
      v8 = v26 * (v23 + v25 * -0.5);
      v7 = v19 / v22 * v25;
      v27 = 1.0 / v18 * v23;
    }

    else
    {
      v5 = a2 * a2;
      v6 = a2 * a2 * a2;
      if (v4 == 1)
      {
        v15 = *(a1 + 360);
        v16 = 0.0;
        if (v15 <= 0xA)
        {
          v16 = dbl_101C89660[v15];
        }

        v9 = v5 * v5 * v16 * 0.25;
        v8 = v6 * v16 * 0.5;
        v7 = v5 * v16;
      }

      else
      {
        v7 = 0.0;
        v8 = 0.0;
        v9 = 0.0;
        if (v4)
        {
LABEL_29:
          *(a1 + 80) = 0u;
          *(a1 + 96) = 0u;
          *(a1 + 128) = 0u;
          *(a1 + 144) = 0u;
          *(a1 + 112) = 0u;
          *(a1 + 48) = 0u;
          *(a1 + 64) = 0u;
          *(a1 + 40) = v9;
          *(a1 + 80) = v9;
          *(a1 + 120) = v7;
          *(a1 + 160) = v7;
          *(a1 + 56) = v8;
          *(a1 + 96) = v8;
          *(a1 + 104) = v8;
          *(a1 + 144) = v8;
          return a2 >= 0.0;
        }

        v10 = *(a1 + 360) - 1;
        if (v10 > 9)
        {
          v11 = 68.0;
        }

        else
        {
          v11 = dbl_101C89570[v10];
        }

        v9 = v6 * v11 * 0.333333333;
        v8 = v5 * v11 * 0.5;
        v7 = v11 * a2;
      }

      v20 = 1.0;
      v27 = a2;
    }

    *(a1 + 480) = v27;
    *(a1 + 488) = 1;
    *(a1 + 496) = v20;
    *(a1 + 504) = 1;
    goto LABEL_29;
  }

  if (qword_1025D4770 != -1)
  {
    sub_1001D30A0();
  }

  v12 = qword_1025D4778;
  if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_ERROR))
  {
    v13 = *(a1 + 596);
    *buf = 67240192;
    v30 = v13;
    _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_ERROR, "KFCV:,ID,%{public}d,#Error,set Q failed,dT < 0", buf, 8u);
  }

  if (sub_10000A100(121, 0))
  {
    sub_101912E28(buf);
    v14 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 0, "BOOL cllcf::LCFusionKalmanFilterCV::setProcessNoise(const double)", "%s\n", v14);
    if (v14 != buf)
    {
      free(v14);
    }
  }

  return a2 >= 0.0;
}

void sub_1000286F4(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10037EA9C(a1);
}

uint64_t sub_100028700(uint64_t a1, double a2)
{
  if (a2 >= 0.0)
  {
    if (*(a1 + 488) == 1 && (*(a1 + 504) & 1) != 0)
    {
      v6 = 0;
      v7 = *(a1 + 480);
      v8 = *(a1 + 496);
      v9 = *(a1 + 184);
      v10 = *(a1 + 192);
      v11 = *(a1 + 208);
      v12 = *(a1 + 216);
      v13 = *(a1 + 224);
      v14 = *(a1 + 248);
      v15 = *(a1 + 256);
      v16 = *(a1 + 288);
      v17 = *(a1 + 176) + v7 * v12 + v7 * v10 + v7 * v7 * v15;
      *buf = *(a1 + 168) + v7 * v9 * 2.0 + v7 * v7 * v14;
      v24 = v17;
      v18 = v7 * v8 * v14 + v8 * v9;
      v19 = v7 * v8 * v15;
      v25 = v18;
      v26 = v19 + v8 * v10;
      v29 = v19 + v8 * v12;
      v30 = v7 * v8 * v16 + v8 * v13;
      v33 = v8 * v8 * v14;
      v34 = v8 * v8 * v15;
      v27 = v17;
      v28 = v11 + v7 * v13 * 2.0 + v7 * v7 * v16;
      v31 = v18;
      v32 = v29;
      v35 = v26;
      v36 = v30;
      v37 = v34;
      v38 = v8 * v8 * v16;
      do
      {
        *(a1 + v6 + 168) = vaddq_f64(*&buf[v6], *(a1 + v6 + 40));
        v6 += 16;
      }

      while (v6 != 128);
      return 1;
    }

    if (qword_1025D4770 != -1)
    {
      sub_1001D30A0();
    }

    v20 = qword_1025D4778;
    if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_ERROR))
    {
      v21 = *(a1 + 596);
      *buf = 67240192;
      *&buf[4] = v21;
      _os_log_impl(dword_100000000, v20, OS_LOG_TYPE_ERROR, "KFCV:,ID,%{public}d,#Error,P propagation,elements of Phi not set", buf, 8u);
    }

    result = sub_10000A100(121, 0);
    if (result)
    {
      goto LABEL_19;
    }
  }

  else
  {
    if (qword_1025D4770 != -1)
    {
      sub_1001D30A0();
    }

    v3 = qword_1025D4778;
    if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_ERROR))
    {
      v4 = *(a1 + 596);
      *buf = 67240192;
      *&buf[4] = v4;
      _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_ERROR, "KFCV:,ID,%{public}d,#Error,P propagation failed,dT < 0", buf, 8u);
    }

    result = sub_10000A100(121, 0);
    if (result)
    {
LABEL_19:
      sub_101912E28(buf);
      v22 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 0, "BOOL cllcf::LCFusionKalmanFilterCV::propagateErrorCovMat(const double)", "%s\n", v22);
      if (v22 != buf)
      {
        free(v22);
      }

      return 0;
    }
  }

  return result;
}

void sub_100028A68(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10037EA9C(a1);
}

double sub_100028A74(_DWORD *a1)
{
  v1 = *a1 - 1;
  if (v1 > 9)
  {
    return 0.00694444444;
  }

  else
  {
    return dbl_101C896B8[v1];
  }
}

uint64_t sub_100028AA0(uint64_t a1, double a2, double a3, double a4)
{
  if (*(a1 + 56) != 1)
  {
    return 0;
  }

  if (a2 <= 0.0)
  {
    if (qword_1025D4770 != -1)
    {
      sub_1001D30A0();
    }

    v19 = qword_1025D4778;
    if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
    {
      v20 = *(a1 + 56);
      v21 = *(a1 + 48);
      *buf = 134349568;
      v31 = a2;
      v32 = 1026;
      *v33 = v20;
      *&v33[4] = 2050;
      *&v33[6] = v21;
      _os_log_impl(dword_100000000, v19, OS_LOG_TYPE_DEBUG, "KFCV:propagateAltitude,skipped with invalid time,time_mct,%{public}.3f,initialized,%{public}d,lastTimeUpdate,%{public}.3f", buf, 0x1Cu);
    }

    result = sub_10000A100(121, 2);
    if (result)
    {
      sub_101912E28(buf);
      v22 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::LCFusionKalmanFilterCV::LCFusionAltitudePropagator::propagateAltitude(const CFTimeInterval, const double, const double)", "%s\n", v22);
      goto LABEL_21;
    }
  }

  else
  {
    v7 = *(a1 + 8);
    if (v7 > 0.0)
    {
      v8 = *(a1 + 24);
      if (v8 > 0.0)
      {
        v10 = *(a1 + 48);
        v11 = vabdd_f64(a2, v10);
        if (v11 > 10.0)
        {
          if (qword_1025D4770 != -1)
          {
            sub_1001D30A0();
          }

          v27 = qword_1025D4778;
          if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
          {
            v28 = *(a1 + 48);
            *buf = 134349568;
            v31 = a2;
            v32 = 2050;
            *v33 = v28;
            *&v33[8] = 2050;
            *&v33[10] = v11;
            _os_log_impl(dword_100000000, v27, OS_LOG_TYPE_DEBUG, "KFCV:propagateAltitude,exceeding dead-reckoning interval,clearing altitude data,time_mct,%{public}.3f,lastTimeUpdate,%{public}.3f,absPredictionInterval_s,%{public}.3f", buf, 0x20u);
          }

          if (sub_10000A100(121, 2))
          {
            sub_101912E28(buf);
            v29 = _os_log_send_and_compose_impl();
            sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::LCFusionKalmanFilterCV::LCFusionAltitudePropagator::propagateAltitude(const CFTimeInterval, const double, const double)", "%s\n", v29);
            if (v29 != buf)
            {
              free(v29);
            }
          }

          result = 0;
          *(a1 + 56) = 0;
          *a1 = xmmword_101C76220;
          *(a1 + 16) = xmmword_101C76220;
          *(a1 + 32) = 0;
          *(a1 + 40) = 0;
          *(a1 + 48) = 0xBFF0000000000000;
        }

        else
        {
          v12 = a2 - v10;
          v13 = *(a1 + 16);
          v14 = v12;
          if (fabs(v13) >= 0.001)
          {
            sub_1002F8BE8(a1, v11, a4);
            v7 = *(a1 + 8);
            v13 = *(a1 + 16);
            v8 = *(a1 + 24);
            v14 = a2 - *(a1 + 48);
          }

          v15 = *a1 + v14 * v13;
          v16 = *(a1 + 32);
          *a1 = v15;
          *(a1 + 8) = v7 + v11 * v16 * 2.0 + v8 * (v12 * v12) + a3;
          v17 = v8 + a4;
          *(a1 + 24) = v17;
          *(a1 + 32) = v16 + v17 * v11 + a4;
          *(a1 + 48) = a2;
          return 1;
        }

        return result;
      }
    }

    if (qword_1025D4770 != -1)
    {
      sub_1001D30A0();
    }

    v23 = qword_1025D4778;
    if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_ERROR))
    {
      v24 = *(a1 + 56);
      v25 = *(a1 + 8);
      v26 = *(a1 + 24);
      *buf = 134349824;
      v31 = a2;
      v32 = 1026;
      *v33 = v24;
      *&v33[4] = 2050;
      *&v33[6] = v25;
      *&v33[14] = 2050;
      *&v33[16] = v26;
      _os_log_impl(dword_100000000, v23, OS_LOG_TYPE_ERROR, "KFCV:#Error,propagateAltitude,failed with invalid var,time_mct,%{public}.3f,initialized,%{public}d,altVar,%{public}.2f,altRateVar,%{public}.2f", buf, 0x26u);
    }

    result = sub_10000A100(121, 0);
    if (result)
    {
      sub_101912E28(buf);
      v22 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 0, "BOOL cllcf::LCFusionKalmanFilterCV::LCFusionAltitudePropagator::propagateAltitude(const CFTimeInterval, const double, const double)", "%s\n", v22);
LABEL_21:
      if (v22 != buf)
      {
        free(v22);
      }

      return 0;
    }
  }

  return result;
}

void sub_100028FF8(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10037EA9C(a1);
}

void sub_100029004(uint64_t a1, double *a2)
{
  if (*(a1 + 600) == 1)
  {
    v4 = *a2;
    v5 = *(a1 + 608);
    if (qword_1025D4770 != -1)
    {
      sub_1001D30A0();
    }

    v6 = v4 - v5;
    v7 = qword_1025D4778;
    if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
    {
      v8 = *(a1 + 596);
      v9 = *a2;
      *buf = 67240704;
      v12 = v8;
      v13 = 2050;
      v14 = v9;
      v15 = 2050;
      v16 = v6;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEBUG, "KFCV:,ID,%{public}d,mct,%{public}.3f,called while state is in sleep mode,%{public}.2f,waking up", buf, 0x1Cu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101912E28(buf);
      v10 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "void cllcf::LCFusionKalmanFilterCV::checkAndUpdateSleepState(const CFTimeInterval &)", "%s\n", v10);
      if (v10 != buf)
      {
        free(v10);
      }
    }

    *(a1 + 600) = 0;
    *(a1 + 608) = 0xBFF0000000000000;
  }
}

void sub_1000291E0(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10037EA9C(a1);
}

uint64_t sub_1000291EC(uint64_t a1, double *a2)
{
  v52 = 0;
  v4 = *(a1 + 48) + *(a1 + 56);
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  v7 = (v5 + 8 * (v4 / 0x1A));
  if (v6 == v5)
  {
    v8 = 0;
  }

  else
  {
    v8 = *v7 + 152 * (v4 % 0x1A);
  }

  while (1)
  {
    v9 = v6 == v5 ? 0 : *(v5 + 8 * (*(a1 + 48) / 0x1AuLL)) + 152 * (*(a1 + 48) % 0x1AuLL);
    if (v9 == v8)
    {
      break;
    }

    if (v8 == *v7)
    {
      v11 = *(v7 - 1);
      if ((*(v11 + 3948) & 1) == 0)
      {
        goto LABEL_36;
      }

      v10 = v11 + 3952;
    }

    else
    {
      v10 = v8;
      if ((*(v8 - 4) & 1) == 0)
      {
        goto LABEL_36;
      }
    }

    if (sub_10002F2EC(v10 - 136, a2) > 5.0)
    {
      break;
    }

    v12 = v8;
    if (v8 == *v7)
    {
      v12 = *(v7 - 1) + 3952;
    }

    v13 = off_1025D53A0;
    if (!off_1025D53A0)
    {
      goto LABEL_29;
    }

    v14 = &off_1025D53A0;
    v15 = *(v12 - 12);
    v16 = off_1025D53A0;
    do
    {
      if (*(v16 + 7) >= v15)
      {
        v14 = v16;
      }

      v16 = v16[*(v16 + 7) < v15];
    }

    while (v16);
    if (v14 == &off_1025D53A0 || v15 < *(v14 + 7))
    {
      goto LABEL_29;
    }

    v17 = &off_1025D53A0;
    v18 = *(a1 + 896);
    do
    {
      if (*(v13 + 7) >= v18)
      {
        v17 = v13;
      }

      v13 = v13[*(v13 + 7) < v18];
    }

    while (v13);
    if (v17 == &off_1025D53A0 || v18 < *(v17 + 7))
    {
LABEL_29:
      if (qword_1025D4770 != -1)
      {
        sub_1002485F0();
      }

      v19 = qword_1025D4778;
      if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_ERROR))
      {
        v20 = v8;
        if (v8 == *v7)
        {
          v20 = *(v7 - 1) + 3952;
        }

        v21 = *a2;
        v22 = *(a1 + 840);
        v23 = *(v20 - 12);
        v24 = *(a1 + 896);
        *buf = 134349824;
        v62 = v21;
        v63 = 1026;
        v64 = v22;
        v65 = 1026;
        v66 = v23;
        v67 = 1026;
        v68 = v24;
        _os_log_impl(dword_100000000, v19, OS_LOG_TYPE_ERROR, "FusedLoc,Invalid provider type,time,%{public}.2lf,ID,%{public}d,locType,%{public}d,prominentType,%{public}d", buf, 0x1Eu);
      }

      if (sub_10000A100(121, 0))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1025D4770 != -1)
        {
          sub_1002485F0();
        }

        v29 = *a2;
        v30 = *(a1 + 840);
        v31 = v8;
        if (v8 == *v7)
        {
          v31 = *(v7 - 1) + 3952;
        }

        v32 = *(v31 - 12);
        v33 = *(a1 + 896);
        v53 = 134349824;
        v54 = v29;
        v55 = 1026;
        v56 = v30;
        v57 = 1026;
        v58 = v32;
        v59 = 1026;
        v60 = v33;
        v34 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 0, "CLLocationType cllcf::LCFusionLocationHypothesis::updateProminentProviderType(const CFTimeInterval &)", "%s\n", v34);
        if (v34 != buf)
        {
          free(v34);
        }
      }
    }

    else
    {
      v26 = v8;
      if (v8 == *v7)
      {
        v26 = *(v7 - 1) + 3952;
      }

      v27 = *sub_1001FD038(&unk_1025D5398, (v26 - 12));
      if (v27 <= *sub_1001FD038(&unk_1025D5398, &v52))
      {
        v28 = v8;
        if (v8 == *v7)
        {
          v28 = *(v7 - 1) + 3952;
        }

        v52 = *(v28 - 12);
      }
    }

LABEL_36:
    if (v8 == *v7)
    {
      v25 = *--v7;
      v8 = v25 + 3952;
    }

    v8 -= 152;
    v5 = *(a1 + 24);
    v6 = *(a1 + 32);
  }

  result = v52;
  if (v52)
  {
    goto LABEL_52;
  }

  v36 = *(a1 + 56);
  if (!v36)
  {
    if (qword_1025D4770 != -1)
    {
      sub_1002485F0();
    }

    v44 = qword_1025D4778;
    if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
    {
      v45 = *(a1 + 840);
      *buf = 67240192;
      LODWORD(v62) = v45;
      _os_log_impl(dword_100000000, v44, OS_LOG_TYPE_DEBUG, "FusedLoc,Unable to set prominent provider type for hypothesis ID,%{public}d,Buffer is empty (no location data),set type to unknown", buf, 8u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101B4BD54(buf);
      v50 = *(a1 + 840);
      v53 = 67240192;
      LODWORD(v54) = v50;
      v51 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "CLLocationType cllcf::LCFusionLocationHypothesis::updateProminentProviderType(const CFTimeInterval &)", "%s\n", v51);
      if (v51 != buf)
      {
        free(v51);
      }
    }

    result = 0;
    *(a1 + 896) = 0;
    return result;
  }

  v37 = *(a1 + 48);
  v38 = v37 + v36;
  v39 = (v37 + v36) / 0x1A;
  v40 = *(a1 + 24);
  v41 = *(a1 + 32);
  v42 = (v40 + 8 * v39);
  if (v41 == v40)
  {
    v43 = 0;
  }

  else
  {
    v43 = *v42 + 152 * (v38 - 26 * v39);
  }

  v46 = v37 / 0x1A;
  v47 = v37 % 0x1A;
  while (2)
  {
    if (v41 == v40)
    {
      v48 = 0;
    }

    else
    {
      v48 = *(v40 + 8 * v46) + 152 * v47;
    }

    if (v48 == v43)
    {
      return *(a1 + 896);
    }

    if (v43 != *v42)
    {
      if (*(v43 - 4) == 1)
      {
        break;
      }

      goto LABEL_72;
    }

    v49 = *--v42;
    v43 = v49 + 3952;
    if ((*(v49 + 3948) & 1) == 0)
    {
LABEL_72:
      v43 -= 152;
      continue;
    }

    break;
  }

  result = *(v43 - 12);
LABEL_52:
  *(a1 + 896) = result;
  return result;
}

void sub_1000297FC(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10037EA9C(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10002980C(uint64_t a1, double *a2)
{
  if ((*a1 & 1) == 0)
  {
    if (qword_1025D4770 != -1)
    {
      sub_1001D30A0();
    }

    v20 = qword_1025D4778;
    if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
    {
      v21 = *(a1 + 596);
      v22 = *a2;
      *buf = 67240448;
      v108 = v21;
      v109 = 2050;
      v110 = v22;
      _os_log_impl(dword_100000000, v20, OS_LOG_TYPE_DEBUG, "KFCV:,ID,%{public}d,mct,%{public}.3f,filter is not initialized", buf, 0x12u);
    }

    result = sub_10000A100(121, 2);
    if (!result)
    {
      return result;
    }

    sub_101912E28(buf);
    v23 = *(a1 + 596);
    v24 = *a2;
    v93 = 67240448;
    v94 = v23;
    v95 = 2050;
    v96 = v24;
    v19 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::LCFusionKalmanFilterCV::predictState(const CFTimeInterval &)", "%s\n", v19);
    goto LABEL_23;
  }

  sub_100029004(a1, a2);
  v4 = *a2 - *(a1 + 368);
  if (*(a1 + 592) != 1)
  {
    if (v4 < 0.0)
    {
      if (qword_1025D4770 != -1)
      {
        sub_1001D30A0();
      }

      v25 = qword_1025D4778;
      if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
      {
        v26 = *(a1 + 596);
        v27 = *a2;
        *buf = 67240704;
        v108 = v26;
        v109 = 2050;
        v110 = v27;
        v111 = 2050;
        v112 = v4;
        _os_log_impl(dword_100000000, v25, OS_LOG_TYPE_DEBUG, "KFCV:,ID,%{public}d,predict_to_mct,%{public}.3f,predict state skipped,dT < 0,dt,%{public}.6f", buf, 0x1Cu);
      }

      if (!sub_10000A100(121, 2))
      {
        return 1;
      }

      sub_101912E28(buf);
      v28 = *(a1 + 596);
      v29 = *a2;
      v93 = 67240704;
      v94 = v28;
      v95 = 2050;
      v96 = v29;
      v97 = 2050;
      v98 = v4;
      v30 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::LCFusionKalmanFilterCV::predictState(const CFTimeInterval &)", "%s\n", v30);
      goto LABEL_109;
    }

    if (v4 + 0.000001 < 0.001)
    {
      if (qword_1025D4770 != -1)
      {
        sub_1001D30A0();
      }

      v31 = qword_1025D4778;
      if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
      {
        v32 = *(a1 + 596);
        v33 = *a2;
        *buf = 67240960;
        v108 = v32;
        v109 = 2050;
        v110 = v33;
        v111 = 2050;
        v112 = v4;
        v113 = 2050;
        v114 = 0x3F50624DD2F1A9FCLL;
        _os_log_impl(dword_100000000, v31, OS_LOG_TYPE_DEBUG, "KFCV:,ID,%{public}d,mct,%{public}.3f,predict state skipped,small dt,%{public}.6f,%{public}.6f", buf, 0x26u);
      }

      if (!sub_10000A100(121, 2))
      {
        return 1;
      }

      sub_101912E28(buf);
      v84 = *(a1 + 596);
      v85 = *a2;
      v93 = 67240960;
      v94 = v84;
      v95 = 2050;
      v96 = v85;
      v97 = 2050;
      v98 = v4;
      v99 = 2050;
      v100 = 0x3F50624DD2F1A9FCLL;
      v30 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::LCFusionKalmanFilterCV::predictState(const CFTimeInterval &)", "%s\n", v30);
      goto LABEL_109;
    }

    if (sub_10002838C(a1, v4))
    {
      if (*(a1 + 488) == 1 && (*(a1 + 504) & 1) != 0)
      {
        if (sub_100028700(a1, v4))
        {
          if (*(a1 + 456) == 1 && (*(a1 + 472) & 1) != 0)
          {
LABEL_48:
            *(a1 + 384) = v4 + *(a1 + 384);
            v37 = *(a1 + 360);
            if ((v37 - 3) >= 8 && v37)
            {
              v38 = *(a1 + 392);
            }

            else
            {
              v38 = v4 + *(a1 + 392);
              *(a1 + 392) = v38;
            }

            if (v38 > 5.0 && hypot(*(a1 + 24), *(a1 + 32)) > 0.0)
            {
              sub_1006EBA9C(a1);
            }

            if (*(a1 + 488) != 1 || *(a1 + 504) != 1 || *(a1 + 472) != 1)
            {
              goto LABEL_112;
            }

            v39 = *(a1 + 480);
            v40 = *(a1 + 24);
            *v34.i64 = *(a1 + 8) + v39 * v40 / *(a1 + 464);
            v35.i64[0] = 0x400921FB54442D18;
            v89 = v35;
            if (fabs(*v34.i64) > 3.14159265)
            {
              v41.f64[0] = NAN;
              v41.f64[1] = NAN;
              v88 = *vbslq_s8(vnegq_f64(v41), v35, v34).i64;
              *v34.i64 = fmod(*v34.i64 + v88, 6.28318531) - v88;
            }

            if (*v34.i64 >= 1.57079633)
            {
              v42 = v89;
              *v34.i64 = *v89.i64 - *v34.i64;
            }

            else
            {
              v42 = v89;
              if (*v34.i64 < -1.57079633)
              {
                *v34.i64 = -3.14159265 - *v34.i64;
              }
            }

            *(a1 + 8) = v34.i64[0];
            if ((*(a1 + 456) & 1) == 0)
            {
LABEL_112:
              sub_100173BA0();
            }

            v57 = *(a1 + 448);
            v58 = *(a1 + 16);
            v59 = *(a1 + 32);
            if (v57 <= 0.0)
            {
              *v34.i64 = v58 + v39 * v59;
            }

            else
            {
              *v34.i64 = v58 + v39 * v59 / v57;
            }

            if (fabs(*v34.i64) > *v42.i64)
            {
              v60.f64[0] = NAN;
              v60.f64[1] = NAN;
              v90 = *vbslq_s8(vnegq_f64(v60), v42, v34).i64;
              *v34.i64 = fmod(*v34.i64 + v90, 6.28318531) - v90;
            }

            v61 = *(a1 + 496);
            *(a1 + 16) = v34.i64[0];
            *(a1 + 24) = v61 * v40;
            *(a1 + 32) = v61 * v59;
            v62 = *(a1 + 40);
            v63 = v62 * sub_100028A74((a1 + 360));
            v64 = *(a1 + 120);
            v65 = sub_100028A74((a1 + 360));
            sub_100028AA0(a1 + 296, *a2, v63, v64 * v65);
            v66 = v4 + *(a1 + 376);
            *(a1 + 368) = *a2;
            *(a1 + 376) = v66;
            v67 = *(a1 + 168) + *(a1 + 208);
            *(a1 + 584) = v67;
            if (*(a1 + 392) <= 900.0)
            {
              result = 1;
              if (v67 <= 2.25e10)
              {
                return result;
              }

              *(a1 + 592) = 1;
              if (qword_1025D4770 != -1)
              {
                sub_101912E6C();
              }

              v77 = qword_1025D4778;
              if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
              {
                v78 = *(a1 + 596);
                v79 = *a2;
                v80 = *(a1 + 584);
                *buf = 67240960;
                v108 = v78;
                v109 = 2050;
                v110 = v79;
                v111 = 2050;
                v112 = v80;
                v113 = 2050;
                v114 = 0x4214F46B04000000;
                _os_log_impl(dword_100000000, v77, OS_LOG_TYPE_DEBUG, "KFCV:,ID,%{public}d,mct,%{public}.3f,maximum position uncertainty growth reached,%{public}.1f,max,%{public}.1f", buf, 0x26u);
              }

              if (!sub_10000A100(121, 2))
              {
                return 1;
              }

              sub_101912E28(buf);
              v81 = *(a1 + 596);
              v82 = *a2;
              v83 = *(a1 + 584);
              v93 = 67240960;
              v94 = v81;
              v95 = 2050;
              v96 = v82;
              v97 = 2050;
              v98 = v83;
              v99 = 2050;
              v100 = 0x4214F46B04000000;
              v30 = _os_log_send_and_compose_impl();
              sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::LCFusionKalmanFilterCV::predictState(const CFTimeInterval &)", "%s\n", v30);
            }

            else
            {
              *(a1 + 592) = 1;
              if (qword_1025D4770 != -1)
              {
                sub_101912E6C();
              }

              v68 = qword_1025D4778;
              if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
              {
                v69 = *(a1 + 596);
                v70 = *a2;
                v71 = *(a1 + 384);
                v72 = *(a1 + 392);
                *buf = 67241216;
                v108 = v69;
                v109 = 2050;
                v110 = v70;
                v111 = 2050;
                v112 = v71;
                v113 = 2050;
                v114 = v72;
                v115 = 2050;
                v116 = 0x408C200000000000;
                _os_log_impl(dword_100000000, v68, OS_LOG_TYPE_DEBUG, "KFCV:,ID,%{public}d,mct,%{public}.3f,maximum forward predictive dead-reckoning time reached,DRtime,%{public}.2f,nonStaticDRtime,%{public}.2f,maxDR,%{public}.2f", buf, 0x30u);
              }

              if (!sub_10000A100(121, 2))
              {
                return 1;
              }

              sub_101912E28(buf);
              v73 = *(a1 + 596);
              v74 = *a2;
              v75 = *(a1 + 384);
              v76 = *(a1 + 392);
              v93 = 67241216;
              v94 = v73;
              v95 = 2050;
              v96 = v74;
              v97 = 2050;
              v98 = v75;
              v99 = 2050;
              v100 = v76;
              v101 = 2050;
              v102 = 0x408C200000000000;
              v30 = _os_log_send_and_compose_impl();
              sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::LCFusionKalmanFilterCV::predictState(const CFTimeInterval &)", "%s\n", v30);
            }

LABEL_109:
            if (v30 != buf)
            {
              free(v30);
            }

            return 1;
          }

          v91 = 0;
          v92 = 0;
          if (sub_100208760((a1 + 512), &v92, &v91, *(a1 + 8) * 57.2957795, *(a1 + 408)))
          {
            v36 = v92;
            *(a1 + 448) = v91;
            *(a1 + 456) = 1;
            *(a1 + 464) = v36;
            *(a1 + 472) = 1;
            goto LABEL_48;
          }

          if (qword_1025D4770 != -1)
          {
            sub_101912E6C();
          }

          v54 = qword_1025D4778;
          if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_ERROR))
          {
            v55 = *(a1 + 596);
            v56 = *a2;
            *buf = 67240448;
            v108 = v55;
            v109 = 2050;
            v110 = v56;
            _os_log_impl(dword_100000000, v54, OS_LOG_TYPE_ERROR, "KFCV:,ID,%{public}d,mct,%{public}.3f,#Error,predict state calc_dNdE failed", buf, 0x12u);
          }

          if (!sub_10000A100(121, 0))
          {
            return 0;
          }

          sub_101912E28(buf);
          v86 = *(a1 + 596);
          v87 = *a2;
          v93 = 67240448;
          v94 = v86;
          v95 = 2050;
          v96 = v87;
          v19 = _os_log_send_and_compose_impl();
          sub_100152C7C("Generic", 1, 0, 0, "BOOL cllcf::LCFusionKalmanFilterCV::predictState(const CFTimeInterval &)", "%s\n", v19);
LABEL_23:
          if (v19 != buf)
          {
            free(v19);
          }

          return 0;
        }

        if (qword_1025D4770 != -1)
        {
          sub_1001D30A0();
        }

        v49 = qword_1025D4778;
        if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_ERROR))
        {
          v50 = *(a1 + 596);
          v51 = *a2;
          *buf = 67240448;
          v108 = v50;
          v109 = 2050;
          v110 = v51;
          _os_log_impl(dword_100000000, v49, OS_LOG_TYPE_ERROR, "KFCV:,ID,%{public}d,mct,%{public}.3f,#Error,predict state failed on error cov propagation", buf, 0x12u);
        }

        result = sub_10000A100(121, 0);
        if (!result)
        {
          return result;
        }
      }

      else
      {
        if (qword_1025D4770 != -1)
        {
          sub_1001D30A0();
        }

        v46 = qword_1025D4778;
        if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_ERROR))
        {
          v47 = *(a1 + 596);
          v48 = *a2;
          *buf = 67240448;
          v108 = v47;
          v109 = 2050;
          v110 = v48;
          _os_log_impl(dword_100000000, v46, OS_LOG_TYPE_ERROR, "KFCV:,ID,%{public}d,mct,%{public}.3f,#Error,predict state failed to set element of Phi", buf, 0x12u);
        }

        result = sub_10000A100(121, 0);
        if (!result)
        {
          return result;
        }
      }
    }

    else
    {
      if (qword_1025D4770 != -1)
      {
        sub_1001D30A0();
      }

      v43 = qword_1025D4778;
      if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_ERROR))
      {
        v44 = *(a1 + 596);
        v45 = *a2;
        *buf = 67240448;
        v108 = v44;
        v109 = 2050;
        v110 = v45;
        _os_log_impl(dword_100000000, v43, OS_LOG_TYPE_ERROR, "KFCV:,ID,%{public}d,mct,%{public}.3f,#Error,predict state failed to set Q", buf, 0x12u);
      }

      result = sub_10000A100(121, 0);
      if (!result)
      {
        return result;
      }
    }

    sub_101912E28(buf);
    v52 = *(a1 + 596);
    v53 = *a2;
    v93 = 67240448;
    v94 = v52;
    v95 = 2050;
    v96 = v53;
    v19 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 0, "BOOL cllcf::LCFusionKalmanFilterCV::predictState(const CFTimeInterval &)", "%s\n", v19);
    goto LABEL_23;
  }

  if (v4 > 0.0)
  {
    *(a1 + 384) = v4 + *(a1 + 384);
    v5 = *(a1 + 360);
    if ((v5 - 3) < 8 || v5 == 0)
    {
      *(a1 + 392) = v4 + *(a1 + 392);
    }

    *(a1 + 368) = *a2;
  }

  if (qword_1025D4770 != -1)
  {
    sub_1001D30A0();
  }

  v7 = qword_1025D4778;
  if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
  {
    v8 = *(a1 + 596);
    v9 = *a2;
    v10 = *(a1 + 384);
    v11 = *(a1 + 392);
    v12 = *(a1 + 584);
    *buf = 67241728;
    v108 = v8;
    v109 = 2050;
    v110 = v9;
    v111 = 2050;
    v112 = v10;
    v113 = 2050;
    v114 = v11;
    v115 = 2050;
    v116 = 0x408C200000000000;
    v117 = 2050;
    v118 = v12;
    v119 = 2050;
    v120 = 0x4214F46B04000000;
    _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEBUG, "KFCV:,ID,%{public}d,mct,%{public}.3f,maximum dead reckoning threshold reached,DRtime,%{public}.2f,nonStaticDRtime,%{public}.2f,maxDR,%{public}.2f,PosVar,%{public}.1f,maxVar,%{public}.1f", buf, 0x44u);
  }

  result = sub_10000A100(121, 2);
  if (result)
  {
    sub_101912E28(buf);
    v14 = *(a1 + 596);
    v15 = *a2;
    v16 = *(a1 + 384);
    v17 = *(a1 + 392);
    v18 = *(a1 + 584);
    v93 = 67241728;
    v94 = v14;
    v95 = 2050;
    v96 = v15;
    v97 = 2050;
    v98 = v16;
    v99 = 2050;
    v100 = v17;
    v101 = 2050;
    v102 = 0x408C200000000000;
    v103 = 2050;
    v104 = v18;
    v105 = 2050;
    v106 = 0x4214F46B04000000;
    v19 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::LCFusionKalmanFilterCV::predictState(const CFTimeInterval &)", "%s\n", v19);
    goto LABEL_23;
  }

  return result;
}

void sub_10002A8D8(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10037EA9C(a1);
}

uint64_t sub_10002A8E4(uint64_t a1, uint64_t a2)
{
  if (*a1)
  {

    return sub_10002D178(a1, a2);
  }

  else
  {
    if (qword_1025D4770 != -1)
    {
      sub_1001D30A0();
    }

    v4 = qword_1025D4778;
    if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
    {
      v5 = *(a1 + 596);
      *buf = 67240192;
      v8 = v5;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "KFCV:,ID,%{public}d,filter is not initialized", buf, 8u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101912E28(buf);
      v6 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::LCFusionKalmanFilterCV::getFilterLatestEstimate(LCFusionProviderLocation &)", "%s\n", v6);
      if (v6 != buf)
      {
        free(v6);
      }
    }

    return 0;
  }
}

void sub_10002AAA4(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10037EA9C(a1);
}

void sub_10002AAB0(uint64_t a1, double *a2, int a3, int a4)
{
  v4 = a2[2];
  v5 = *(a1 + 1432);
  if (vabdd_f64(v4, v5) >= 0.000001)
  {
    v7 = a3;
    v10 = (a1 + 1432);
    v11 = v4 - v5;
    if ((*(a1 + 2904) & 1) == 0 && v11 < -1.0)
    {
      if (qword_1025D4770 != -1)
      {
        sub_1002F97A8();
      }

      v13 = qword_1025D4778;
      if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
      {
        v14 = a2[2];
        v15 = *v10;
        *buf = 134349568;
        v146 = v11;
        v147 = 2050;
        v148 = v14;
        v149 = 2050;
        v150 = v15;
        _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_DEBUG, "#fusion,forwardToBuffer,fused state timestamp went backward compared to last generated ADL,timeSinceLastADL_s,%{public}.3f,LatestFusedState_mct,%{public}.3f,lastSentADL_mct,%{public}.3f", buf, 0x20u);
      }

      v7 = a3;
      if (sub_10000A100(121, 2))
      {
        sub_101A7B5F4(buf);
        v71 = *(a2 + 2);
        v72 = *v10;
        LODWORD(__p[0]) = 134349568;
        *(__p + 4) = *&v11;
        WORD2(__p[1]) = 2050;
        *(&__p[1] + 6) = v71;
        HIWORD(__p[2]) = 2050;
        __p[3] = v72;
        v73 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "void cllcf::CLLCFusion::forwardFusedLocationToBuffer(const LCFusionProviderLocation &, const BOOL, const LCFusionDynamicsMode::DynamicsMode)", "%s\n", v73);
        if (v73 != buf)
        {
          free(v73);
        }

        v7 = a3;
      }
    }

    v90 = 0;
    v91 = 0;
    __asm { FMOV            V0.2D, #-1.0 }

    v86 = _Q0;
    v92 = xmmword_101C75BF0;
    v93 = _Q0;
    v94 = _Q0;
    v95 = _Q0;
    v89 = 0xFFFF;
    v96 = 0;
    v97 = 0xBFF0000000000000;
    v99 = 0;
    v98 = 0;
    v101 = 0xBFF0000000000000;
    v100 = 0;
    v102 = 0x7FFFFFFF;
    v104 = 0;
    v105 = 0;
    v103 = 0;
    v106 = 0;
    if ((*(*a2 + 32))(a2, &v89))
    {
      if (v7)
      {
        v97 = 0x4008000000000000;
      }

      HIDWORD(v103) = 1;
      v21 = 900.0;
      if (*(a1 + 2904) == 1)
      {
        v22 = *(a1 + 2912);
        if (v22 > 0.0)
        {
          v21 = fmax(a2[2] - v22, 900.0);
        }
      }

      v85 = v7;
      if (v11 > v21)
      {
        v23 = *(a1 + 2448);
        v24 = v21 * 4.0;
        if (!v23)
        {
          v24 = v21;
        }

        if ((v23 - 3) >= 8)
        {
          v21 = v24;
        }
      }

      v25 = *v10;
      v26 = ceil(a2[2]) - ceil(*v10);
      if (*v10 <= 0.0 || (v26 > 1.0 ? (v27 = v26 > v21) : (v27 = 1), v27))
      {
        if (v25 > 0.0 && v26 > v21)
        {
          if (qword_1025D4770 != -1)
          {
            sub_100224830();
          }

          v43 = qword_1025D4778;
          if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
          {
            v44 = a2[2];
            v45 = *(a1 + 1432);
            v46 = *(a1 + 2448);
            sub_1001FCE40(a1 + 2424, __p);
            v47 = SHIBYTE(__p[2]) >= 0 ? __p : __p[0];
            *buf = 134350338;
            v146 = v11;
            v147 = 2050;
            v148 = v21;
            v149 = 2050;
            v150 = v44;
            v151 = 2050;
            *v152 = v45;
            *&v152[8] = 1026;
            *&v152[10] = v46;
            v153 = 2082;
            v154 = v47;
            _os_log_impl(dword_100000000, v43, OS_LOG_TYPE_DEBUG, "#fusion,forwardToBuffer,large gap in ADLs/forwarded locations detected beyond fuser acceptable maximum threshold,gap_s,%{public}.3f,maxThreshold_s,%{public}.3f,LatestLoc_mct,%{public}.3f,lastSentADL_mct,%{public}.3f,lastDynamicsMode,%{public}d,LastMotionActivity,%{public}s", buf, 0x3Au);
            if (SHIBYTE(__p[2]) < 0)
            {
              operator delete(__p[0]);
            }
          }

          if (sub_10000A100(121, 2))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1025D4770 != -1)
            {
              sub_100224830();
            }

            v48 = *(a2 + 2);
            v49 = *(a1 + 1432);
            v50 = *(a1 + 2448);
            sub_1001FCE40(a1 + 2424, v129);
            if (v130[11] >= 0)
            {
              v51 = v129;
            }

            else
            {
              v51 = *v129;
            }

            LODWORD(__p[0]) = 134350338;
            *(__p + 4) = *&v11;
            WORD2(__p[1]) = 2050;
            *(&__p[1] + 6) = *&v21;
            HIWORD(__p[2]) = 2050;
            __p[3] = v48;
            LOWORD(__p[4]) = 2050;
            *(&__p[4] + 2) = v49;
            WORD1(__p[5]) = 1026;
            HIDWORD(__p[5]) = v50;
            LOWORD(__p[6]) = 2082;
            *(&__p[6] + 2) = v51;
            v52 = _os_log_send_and_compose_impl();
            if ((v130[11] & 0x80000000) != 0)
            {
              operator delete(*v129);
            }

            sub_100152C7C("Generic", 1, 0, 2, "void cllcf::CLLCFusion::forwardFusedLocationToBuffer(const LCFusionProviderLocation &, const BOOL, const LCFusionDynamicsMode::DynamicsMode)", "%s\n", v52);
            if (v52 != buf)
            {
              free(v52);
            }
          }
        }
      }

      else
      {
        v87 = *v10;
        v28 = *(a1 + 2448);
        if ((v28 - 3) < 8 || !v28)
        {
          sub_1006814F0((a1 + 2424), buf, v25);
          if (((*buf - 3) < 8 || !*buf) && !sub_1001253BC(a1 + 2424, *v10, -1.0) && (!sub_1002F8B84(a1 + 2424, *v10, -1.0) || (sub_100681564(a1 + 2424, *v10, -1.0) & 1) == 0))
          {
            if (qword_1025D4770 != -1)
            {
              sub_100224830();
            }

            v53 = qword_1025D4778;
            if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
            {
              v54 = a2[2];
              v55 = *(a1 + 1432);
              v56 = *(a1 + 2448);
              sub_1001FCE40(a1 + 2424, __p);
              v57 = __p;
              if (SHIBYTE(__p[2]) < 0)
              {
                v57 = __p[0];
              }

              *buf = 134350082;
              v146 = v11;
              v147 = 2050;
              v148 = v54;
              v149 = 2050;
              v150 = v55;
              v151 = 1026;
              *v152 = v56;
              *&v152[4] = 2082;
              *&v152[6] = v57;
              _os_log_impl(dword_100000000, v53, OS_LOG_TYPE_DEBUG, "#fusion,forwardToBuffer,gap in ADLs/forwarded locations detected but stationary state is not declared,generating propagated ADLs,gap_s,%{public}.3f,LatestLoc_mct,%{public}.7f,lastSentADL_mct,%{public}.7f,lastDynamicsMode,%{public}d,LastMotionActivity,%{public}s", buf, 0x30u);
              if (SHIBYTE(__p[2]) < 0)
              {
                operator delete(__p[0]);
              }
            }

            if (sub_10000A100(121, 2))
            {
              bzero(buf, 0x65CuLL);
              if (qword_1025D4770 != -1)
              {
                sub_100224830();
              }

              v80 = *(a2 + 2);
              v81 = *(a1 + 1432);
              v82 = *(a1 + 2448);
              sub_1001FCE40(a1 + 2424, v129);
              if (v130[11] >= 0)
              {
                v83 = v129;
              }

              else
              {
                v83 = *v129;
              }

              LODWORD(__p[0]) = 134350082;
              *(__p + 4) = *&v11;
              WORD2(__p[1]) = 2050;
              *(&__p[1] + 6) = v80;
              HIWORD(__p[2]) = 2050;
              __p[3] = v81;
              LOWORD(__p[4]) = 1026;
              *(&__p[4] + 2) = v82;
              HIWORD(__p[4]) = 2082;
              __p[5] = v83;
              v84 = _os_log_send_and_compose_impl();
              if ((v130[11] & 0x80000000) != 0)
              {
                operator delete(*v129);
              }

              sub_100152C7C("Generic", 1, 0, 2, "void cllcf::CLLCFusion::forwardFusedLocationToBuffer(const LCFusionProviderLocation &, const BOOL, const LCFusionDynamicsMode::DynamicsMode)", "%s\n", v84);
              if (v84 != buf)
              {
                free(v84);
              }
            }

            *v130 = 0;
            *&v129[4] = 0;
            *&v130[8] = xmmword_101C75BF0;
            v131 = v86;
            v132 = v86;
            v133 = v86;
            *v129 = 0xFFFF;
            v134 = 0;
            v137 = 0;
            v135 = 0xBFF0000000000000;
            v136 = 0;
            v139 = 0xBFF0000000000000;
            v138 = 0;
            v140 = 0x7FFFFFFF;
            v143 = 0;
            v141 = 0;
            v142 = 0;
            v144 = 0;
            memcpy(__p, (a1 + 448), 0x161uLL);
            v112 = *(a1 + 808);
            v58 = *(a1 + 988);
            v123 = *(a1 + 972);
            *v124 = v58;
            *&v124[12] = *(a1 + 1000);
            v59 = *(a1 + 924);
            v119 = *(a1 + 908);
            v120 = v59;
            v60 = *(a1 + 956);
            v121 = *(a1 + 940);
            v122 = v60;
            v61 = *(a1 + 860);
            v115 = *(a1 + 844);
            v116 = v61;
            v62 = *(a1 + 892);
            v117 = *(a1 + 876);
            v118 = v62;
            v63 = *(a1 + 828);
            v113 = *(a1 + 812);
            v114 = v63;
            v125 = *(a1 + 1016);
            v64 = *(a1 + 1024);
            v126 = v64;
            if (v64)
            {
              atomic_fetch_add_explicit((v64 + 8), 1uLL, memory_order_relaxed);
            }

            v65 = *(a1 + 1048);
            v127 = *(a1 + 1032);
            v128 = v65;
            LODWORD(v113) = 0;
            HIDWORD(v127) = 2004;
            operator new();
          }
        }

        if (qword_1025D4770 != -1)
        {
          sub_100224830();
        }

        v29 = qword_1025D4778;
        if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
        {
          v30 = a2[2];
          v31 = *v10;
          *buf = 134349568;
          v146 = v11;
          v147 = 2050;
          v148 = v30;
          v149 = 2050;
          v150 = v31;
          _os_log_impl(dword_100000000, v29, OS_LOG_TYPE_DEBUG, "#fusion,forwardToBuffer,generating locations for gap in forwarded locations when device was frozen,gap_s,%{public}.3f,LatestLoc_mct,%{public}.7f,lastSentADL_mct,%{public}.7f", buf, 0x20u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_101A7B5F4(buf);
          v77 = *(a2 + 2);
          v78 = *v10;
          LODWORD(__p[0]) = 134349568;
          *(__p + 4) = *&v11;
          WORD2(__p[1]) = 2050;
          *(&__p[1] + 6) = v77;
          HIWORD(__p[2]) = 2050;
          __p[3] = v78;
          v79 = _os_log_send_and_compose_impl();
          sub_100152C7C("Generic", 1, 0, 2, "void cllcf::CLLCFusion::forwardFusedLocationToBuffer(const LCFusionProviderLocation &, const BOOL, const LCFusionDynamicsMode::DynamicsMode)", "%s\n", v79);
          if (v79 != buf)
          {
            free(v79);
          }
        }

        *(&__p[1] + 4) = 0;
        *(__p + 4) = 0;
        *(&__p[2] + 4) = xmmword_101C75BF0;
        *(&__p[4] + 4) = v86;
        *(&__p[6] + 4) = v86;
        *(&__p[8] + 4) = v86;
        LODWORD(__p[0]) = 0xFFFF;
        HIDWORD(__p[10]) = 0;
        __p[11] = 0xBFF0000000000000;
        memset(&__p[12], 0, 20);
        *(&__p[14] + 4) = 0xBFF0000000000000;
        HIDWORD(__p[15]) = 0x7FFFFFFF;
        memset(&__p[16], 0, 25);
        if (sub_10002790C(a1 + 1416, __p))
        {
          v32 = 1;
          HIDWORD(__p[16]) = 1;
          if (v85)
          {
            __p[11] = 0x4008000000000000;
            v32 = 2;
          }

          v33 = ceil(a2[2]);
          v34 = v87;
          v35 = 1.0;
          do
          {
            v36 = a2[1];
            if (v26 <= 2.0)
            {
              v35 = (a2[2] - v34) * 0.5;
            }

            *(&__p[9] + 4) = *(&__p[9] + 4) + v35;
            v37 = v34 + v35;
            v88 = v37;
            if (*(&__p[9] + 4) >= v36)
            {
              break;
            }

            sub_10002D644(v129, __p, v37);
            v141 = 0xBFF0000000000000;
            LOBYTE(v142) = v32;
            HIDWORD(v142) = a4;
            if (qword_1025D4770 != -1)
            {
              sub_100224830();
            }

            v38 = qword_1025D4778;
            if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
            {
              *buf = 134349312;
              v146 = v88;
              v147 = 2050;
              v148 = *(&__p[2] + 4);
              _os_log_impl(dword_100000000, v38, OS_LOG_TYPE_DEBUG, "#fusion,#ADL,pushing (clamped) location to output buffer at MCT %{public}.3f sec (hunc: %{public}.3f)", buf, 0x16u);
            }

            if (sub_10000A100(121, 2))
            {
              sub_101A7B5F4(buf);
              v107 = 134349312;
              v108 = v88;
              v109 = 2050;
              v110 = *(&__p[2] + 4);
              v40 = _os_log_send_and_compose_impl();
              sub_100152C7C("Generic", 1, 0, 2, "void cllcf::CLLCFusion::forwardFusedLocationToBuffer(const LCFusionProviderLocation &, const BOOL, const LCFusionDynamicsMode::DynamicsMode)", "%s\n", v40);
              if (v40 != buf)
              {
                free(v40);
              }
            }

            v39 = *(a1 + 2984);
            if (!v39)
            {
              goto LABEL_121;
            }

            (*(*v39 + 48))(v39, v129);
            v34 = v88;
            v26 = v33 - ceil(v88);
          }

          while (v26 > 1.0);
        }
      }

      if (v85)
      {
        v66 = 2;
      }

      else
      {
        v66 = 1;
      }

      sub_10002D644(__p, &v89, a2[2]);
      __p[16] = 0xBFF0000000000000;
      LOBYTE(__p[17]) = v66;
      HIDWORD(__p[17]) = a4;
      if (qword_1025D4770 != -1)
      {
        sub_100224830();
      }

      v67 = qword_1025D4778;
      if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
      {
        v68 = a2[2];
        v69 = a2[5];
        *buf = 134349312;
        v146 = v68;
        v147 = 2050;
        v148 = v69;
        _os_log_impl(dword_100000000, v67, OS_LOG_TYPE_DEBUG, "#fusion,#ADL,pushing location to output buffer at MCT %{public}.3f sec (hunc: %{public}.3f)", buf, 0x16u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101A7B5F4(buf);
        v74 = *(a2 + 2);
        v75 = *(a2 + 5);
        *v129 = 134349312;
        *&v129[4] = v74;
        *v130 = 2050;
        *&v130[2] = v75;
        v76 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "void cllcf::CLLCFusion::forwardFusedLocationToBuffer(const LCFusionProviderLocation &, const BOOL, const LCFusionDynamicsMode::DynamicsMode)", "%s\n", v76);
        if (v76 != buf)
        {
          free(v76);
        }
      }

      v70 = *(a1 + 2984);
      if (!v70)
      {
LABEL_121:
        sub_1000CF05C();
      }

      (*(*v70 + 48))(v70, __p);
    }

    else
    {
      if (qword_1025D4770 != -1)
      {
        sub_100224830();
      }

      v41 = qword_1025D4778;
      if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v41, OS_LOG_TYPE_DEBUG, "#fusion,forwardToBuffer,failed to convert fused location to daemon location", buf, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101A7B5F4(buf);
        LOWORD(__p[0]) = 0;
        v42 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "void cllcf::CLLCFusion::forwardFusedLocationToBuffer(const LCFusionProviderLocation &, const BOOL, const LCFusionDynamicsMode::DynamicsMode)", "%s\n", v42);
        if (v42 != buf)
        {
          free(v42);
        }
      }
    }
  }
}

void sub_10002C3EC(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10037EA9C(a1);
  }

  _Unwind_Resume(a1);
}

void sub_10002C40C(uint64_t a1, uint64_t a2, int a3)
{
  if (!sub_100028030(a2) || !*(a2 + 136))
  {
    return;
  }

  v6 = *(a2 + 16);
  if (v6 < 0.0)
  {
    if (qword_1025D4600 != -1)
    {
      sub_101907EDC();
    }

    v7 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
    {
      v8 = (a1 + 16);
      if (*(a1 + 39) < 0)
      {
        v8 = *v8;
      }

      *buf = 136446466;
      v33 = v8;
      v34 = 2050;
      *v35 = v6;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEBUG, "%{public}s,invalid time input,%{public}.3f,not adding location", buf, 0x16u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101908048(v6);
    }

    return;
  }

  v9 = *(a1 + 8);
  v10 = vcvtpd_s64_f64(v6 / v9);
  v11 = *(a1 + 76);
  v12 = v11 - v10;
  if (*(a1 + 68) >= 1 && v12 > *(a1 + 64))
  {
    if (qword_1025D4600 != -1)
    {
      sub_101907EDC();
    }

    v13 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
    {
      v14 = (a1 + 16);
      if (*(a1 + 39) < 0)
      {
        v14 = *v14;
      }

      v15 = *(a1 + 8);
      v16 = v15 * v10;
      v17 = v15 * *(a1 + 76);
      v18 = *(a1 + 64);
      *buf = 136447234;
      v33 = v14;
      v34 = 2050;
      *v35 = v16;
      *&v35[8] = 2050;
      *&v35[10] = v17;
      *&v35[18] = 1026;
      *&v35[20] = v12;
      v36 = 1026;
      LODWORD(v37) = v18;
      _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_DEBUG, "%{public}s,ignoring old location input, timestamp: %{public}.3f sec, latest timestamp: %{public}.3f sec, delta: %{public}d time bins, capacity: %{public}d", buf, 0x2Cu);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4600 != -1)
      {
        sub_101907EB4();
      }

LABEL_47:
      v31 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "void CLTimeBinBuffer::feedLocation(const CLLocationBufferBase::LCBufferLocation &, const BOOL)", "%s\n", v31);
      if (v31 != buf)
      {
        free(v31);
      }

      return;
    }

    return;
  }

  v19 = v11 < v10;
  if (v11 < 0)
  {
    v20 = 0;
  }

  else
  {
    v20 = (v12 / v9);
  }

  v21 = *(a1 + 64);
  v22 = ((*(a1 + 72) - v20) % v21);
  v23 = v22 + v21;
  if ((v22 & 0x80000000) == 0)
  {
    v24 = v22;
  }

  else
  {
    v24 = v23;
  }

  if (v11 >= v10 && (a3 & 1) == 0)
  {
    if (!sub_10006C0F4(a1, v24, a2))
    {
      goto LABEL_34;
    }

    v19 = 0;
  }

  sub_10002C9A0(a1, v24, a2, v19);
LABEL_34:
  if (qword_1025D4600 != -1)
  {
    sub_101907EDC();
  }

  v25 = qword_1025D4608;
  if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
  {
    v26 = (a1 + 16);
    if (*(a1 + 39) < 0)
    {
      v26 = *v26;
    }

    v27 = *(a1 + 68);
    v28 = sub_1006A9980(a1);
    v29 = *(a1 + 68) == *(a1 + 64);
    v30 = "";
    *buf = 136447746;
    v33 = v26;
    if (a3)
    {
      v30 = " - force override";
    }

    v34 = 1026;
    *v35 = v27;
    *&v35[4] = 2050;
    *&v35[6] = v28;
    *&v35[14] = 2050;
    *&v35[16] = v24;
    v36 = 2050;
    v37 = v6;
    v38 = 1026;
    v39 = v29;
    v40 = 2082;
    v41 = v30;
    _os_log_impl(dword_100000000, v25, OS_LOG_TYPE_DEBUG, "%{public}s,buffer update: sz %{public}d len sec %{public}.1f (index: %{public}zu time: %{public}.3f is_full: %{public}d)%{public}s", buf, 0x40u);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4600 != -1)
    {
      sub_101907EB4();
    }

    sub_1006A9980(a1);
    goto LABEL_47;
  }
}

double sub_10002C9A0(uint64_t a1, unint64_t a2, uint64_t a3, int a4)
{
  if (0x8E38E38E38E38E39 * ((*(a1 + 48) - *(a1 + 40)) >> 4) >= a2)
  {
    if (a4)
    {
      v11 = vcvtpd_s64_f64(*(a3 + 16) / *(a1 + 8));
      if (*(a1 + 68) >= 1)
      {
        v12 = v11 - *(a1 + 76);
        if (v12 >= 2)
        {
          if (qword_1025D4600 != -1)
          {
            sub_101907EDC();
          }

          v13 = qword_1025D4608;
          if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
          {
            v14 = (a1 + 16);
            if (*(a1 + 39) < 0)
            {
              v14 = *v14;
            }

            v15 = *(a1 + 76);
            *buf = 136446978;
            v23 = v14;
            v24 = 1026;
            *v25 = v15;
            *&v25[4] = 1026;
            *&v25[6] = v11;
            LOWORD(v26[0]) = 1026;
            *(v26 + 2) = v12;
            _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_DEBUG, "%{public}s,clearing samples in the future from time bin %{public}d to time bin %{public}d (count: %{public}d) - not including the new sample index at the end", buf, 0x1Eu);
          }

          if (sub_10000A100(121, 2))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1025D4600 != -1)
            {
              sub_101907EB4();
            }

            v21 = _os_log_send_and_compose_impl();
            sub_100152C7C("Generic", 1, 0, 2, "void CLTimeBinBuffer::insert(const size_t, const CLLocationBufferBase::LCBufferLocation &, const BOOL)", "%s\n", v21);
            if (v21 != buf)
            {
              free(v21);
            }
          }

          for (i = 1; i != v12; ++i)
          {
            v17 = *(a1 + 64);
            v18 = ((i + *(a1 + 72)) % v17);
            v19 = v18 + v17;
            if ((v18 & 0x80000000) == 0)
            {
              v20 = v18;
            }

            else
            {
              v20 = v19;
            }

            sub_10014F24C(a1, v20);
          }
        }
      }

      *(a1 + 72) = a2;
      *(a1 + 76) = v11;
    }

    *&result = sub_10002CCFC(a1, a2, a3).n128_u64[0];
  }

  else
  {
    if (qword_1025D4600 != -1)
    {
      sub_101907EDC();
    }

    v6 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_ERROR))
    {
      v7 = (a1 + 16);
      if (*(a1 + 39) < 0)
      {
        v7 = *v7;
      }

      v8 = *(a1 + 64);
      *buf = 136446722;
      v23 = v7;
      v24 = 2050;
      *v25 = a2;
      *&v25[8] = 1026;
      v26[0] = v8;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_ERROR, "%{public}s,attempted to insert to index %{public}zu but buffer is not pre-allocated,capacity,%{public}d", buf, 0x1Cu);
    }

    if (sub_10000A100(121, 0))
    {
      sub_10190817C(a1, a2);
    }
  }

  return result;
}

__n128 sub_10002CCFC(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 40);
  if (0x8E38E38E38E38E39 * ((*(a1 + 48) - v3) >> 4) <= a2)
  {
    sub_10046F324();
  }

  v7 = v3 + 144 * a2;
  if (!sub_100028030(v7) || !*(v7 + 136))
  {
    ++*(a1 + 68);
  }

  v8 = *(a1 + 40) + 144 * a2;
  v9 = *(a3 + 8);
  v10 = *(a3 + 24);
  v11 = *(a3 + 40);
  *(v8 + 56) = *(a3 + 56);
  *(v8 + 40) = v11;
  *(v8 + 24) = v10;
  *(v8 + 8) = v9;
  v12 = *(a3 + 72);
  v13 = *(a3 + 88);
  v14 = *(a3 + 104);
  *(v8 + 120) = *(a3 + 120);
  *(v8 + 104) = v14;
  *(v8 + 88) = v13;
  *(v8 + 72) = v12;
  result = *(a3 + 128);
  *(v8 + 128) = result;
  return result;
}

uint64_t sub_10002CDD4(uint64_t a1, double *a2, double *a3, double a4)
{
  *a2 = 0.0;
  *a3 = -1.0;
  if (*(a1 + 56) != 1 || *(a1 + 8) <= 0.0)
  {
    return 0;
  }

  if (a4 <= 0.0 || (v6 = *(a1 + 48), v6 <= 0.0))
  {
    if (qword_1025D4770 != -1)
    {
      sub_1001D30A0();
    }

    v11 = qword_1025D4778;
    if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
    {
      v12 = *(a1 + 56);
      v13 = *(a1 + 48);
      *buf = 134349568;
      v19 = a4;
      v20 = 1026;
      *v21 = v12;
      *&v21[4] = 2050;
      *&v21[6] = v13;
      _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEBUG, "KFCV:getLatestAltitudeState,failed with invalid time,time_mct,%{public}.3f,initialized,%{public}d,lastTimeUpdate,%{public}.3f", buf, 0x1Cu);
    }

    result = sub_10000A100(121, 2);
    if (result)
    {
LABEL_13:
      sub_101912E28(buf);
      v15 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::LCFusionKalmanFilterCV::LCFusionAltitudePropagator::getLatestAltitudeState(const CFTimeInterval, double &, double &) const", "%s\n", v15);
      if (v15 != buf)
      {
        free(v15);
      }

      return 0;
    }
  }

  else
  {
    v7 = a4 - v6;
    v8 = vabdd_f64(a4, v6);
    if (v8 <= 10.0)
    {
      v9 = *a1;
      if (v8 + 0.000001 <= 0.001)
      {
        *a2 = v9;
        v10 = *(a1 + 8);
      }

      else
      {
        *a2 = v9 + v7 * *(a1 + 16);
        v10 = *(a1 + 8) + v8 * *(a1 + 32) * 2.0 + *(a1 + 24) * (v7 * v7);
      }

      *a3 = sqrt(v10);
      return 1;
    }

    if (qword_1025D4770 != -1)
    {
      sub_1001D30A0();
    }

    v16 = qword_1025D4778;
    if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
    {
      v17 = *(a1 + 48);
      *buf = 134349568;
      v19 = a4;
      v20 = 2050;
      *v21 = v17;
      *&v21[8] = 2050;
      *&v21[10] = v7;
      _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_DEBUG, "KFCV:getLatestAltitudeState,failed with exceeding dead-reckoning interval,time_mct,%{public}.3f,lastTimeUpdate,%{public}.3f,predictionInterval_s,%{public}.3f", buf, 0x20u);
    }

    result = sub_10000A100(121, 2);
    if (result)
    {
      goto LABEL_13;
    }
  }

  return result;
}

void sub_10002D16C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10037EA9C(a1);
}

uint64_t sub_10002D178(uint64_t a1, uint64_t a2)
{
  if (*a1 != 1)
  {
    return 0;
  }

  v3 = *(a1 + 368);
  if (v3 <= 0.0)
  {
    return 0;
  }

  v40 = vmulq_f64(*(a1 + 8), vdupq_n_s64(0x404CA5DC1A63C1F8uLL));
  v5 = sqrt(*(a1 + 168) + *(a1 + 208));
  v6 = *(a1 + 24);
  v7 = *(a1 + 32);
  v8 = hypot(v6, v7);
  v9 = *(a1 + 248);
  v10 = *(a1 + 288);
  v11 = fmax(sqrt(v9 + v10), 0.001);
  v12 = -1.0;
  v13 = -1.0;
  v14 = -1.0;
  v15 = -1.0;
  if (v11 <= 30.0)
  {
    v15 = v8;
    if (fabs(v6) > 0.005 || fabs(v7) > 0.005)
    {
      v17 = atan2(v7, v6);
      if (v17 < 0.0 || v17 >= 6.28318531)
      {
        v17 = fmod(v17, 6.28318531);
        if (v17 < 0.0)
        {
          v17 = v17 + 6.28318531;
        }
      }

      v14 = v17 * 57.2957795;
      v18 = v6 * v6;
      v19 = v7 * v7;
      if (v6 * v6 < 0.000001)
      {
        v18 = 0.000001;
      }

      v20 = v19 >= 0.000001 || v6 * v6 < 0.000001;
      if (v6 * v6 < 0.000001 && v19 < 0.000001)
      {
        v19 = 0.000001;
      }

      if (!v20)
      {
        v19 = 0.000001;
      }

      v21 = sqrt((v9 * v19 + v10 * v18) * (1.0 / (v18 + v19) * (1.0 / (v18 + v19)))) * 57.2957795;
      v13 = 180.0;
      if (v21 <= 180.0)
      {
        v13 = v21;
      }

      v22 = *(a1 + 440);
      if (v22 < 0.0 || v3 - v22 > 5.0 || (v23 = *(a1 + 432), v23 <= 0.0) || v23 > v13)
      {
        *(a1 + 424) = v14;
        *(a1 + 432) = v13;
      }
    }

    else
    {
      v14 = *(a1 + 424);
      v13 = *(a1 + 432);
    }

    v12 = v11;
  }

  *(a2 + 24) = v40;
  *(a2 + 40) = v5;
  *(a2 + 72) = v15;
  *(a2 + 80) = v12;
  *(a2 + 88) = v14;
  *(a2 + 96) = v13;
  v24 = *(a1 + 568);
  *(a2 + 124) = *(v24 + 124);
  *(a2 + 116) = *(v24 + 116);
  *(a2 + 16) = v3;
  *(a2 + 8) = *(a1 + 376);
  *(a2 + 121) = 0;
  v25 = *(a1 + 440);
  if (v25 > 0.0)
  {
    v26 = v3 - v25;
    if (v3 - v25 <= 0.0 || v26 > 5.0)
    {
      *(a1 + 424) = 0xBFF0000000000000;
      __asm { FMOV            V0.2D, #-1.0 }

      *(a1 + 432) = _Q0;
    }

    else
    {
      v27 = 20.0;
      if (v15 >= 0.0)
      {
        v27 = v15;
      }

      v28 = v27 * v26 * 0.3;
      if (v14 < 0.0 || v13 <= 0.0 || v13 > v28 + *(a1 + 432))
      {
        if (qword_1025D4770 != -1)
        {
          sub_1001D30A0();
        }

        v29 = qword_1025D4778;
        if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
        {
          v30 = *(a1 + 596);
          v31 = *(a1 + 368);
          v32 = *(a1 + 424);
          v33 = *(a1 + 432);
          *buf = 67241473;
          v42 = v30;
          v43 = 2050;
          v44 = v31;
          v45 = 2049;
          v46 = v32;
          v47 = 2050;
          v48 = v33;
          v49 = 2050;
          v50 = v26;
          v51 = 2050;
          v52 = v28;
          _os_log_impl(dword_100000000, v29, OS_LOG_TYPE_DEBUG, "KFCV:,ID,%{public}d,last known course is back filled,timetagMCT,%{public}.3f,last known course_deg,%{private}.2f,CourseUnc_deg,%{public}.2f,timeSinceLastCourseSet_s,%{public}.2f,courseUncInflation_deg,%{public}.2f", buf, 0x3Au);
        }

        if (sub_10000A100(121, 2))
        {
          sub_101912E28(buf);
          v39 = _os_log_send_and_compose_impl();
          sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::LCFusionKalmanFilterCV::getFilterLatestLocationEstimate(LCFusionProviderLocation &)", "%s\n", v39);
          if (v39 != buf)
          {
            free(v39);
          }
        }

        *(a2 + 88) = *(a1 + 424);
        *(a2 + 96) = v28 + *(a1 + 432);
        v3 = *(a1 + 368);
      }

      *(a2 + 121) = 1;
    }
  }

  if ((sub_10002CDD4(a1 + 296, (a2 + 48), (a2 + 56), v3) & 1) == 0)
  {
    *(a2 + 48) = *(*(a1 + 568) + 48);
  }

  return 1;
}

void sub_10002D638(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10037EA9C(a1);
}

uint64_t sub_10002D644(uint64_t a1, uint64_t a2, double a3)
{
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 24) = 0u;
  *a1 = off_1024DE5F8;
  __asm { FMOV            V0.2D, #-1.0 }

  *(a1 + 8) = _Q0;
  *(a1 + 40) = 0xBFF0000000000000;
  *(a1 + 56) = 0xBFF0000000000000;
  *(a1 + 72) = _Q0;
  *(a1 + 88) = _Q0;
  *(a1 + 104) = 0xBFF0000000000000;
  *(a1 + 124) = 0;
  *(a1 + 116) = 0;
  *(a1 + 128) = 0xBFF0000000000000;
  *(a1 + 136) = 0;
  *(a1 + 140) = 7;
  v11 = off_1024DE5F8;
  v12 = _Q0;
  v14 = xmmword_101C75BF0;
  v15 = xmmword_101C75BF0;
  v16 = _Q0;
  v17 = _Q0;
  *v18 = 0xBFF0000000000000;
  *&v18[12] = 0;
  *&v18[20] = 0;
  sub_10002DB64(&v11, a2, *(a2 + 20));
  *(&v12 + 1) = a3;
  *(a1 + 72) = v16;
  *(a1 + 88) = v17;
  *(a1 + 104) = *v18;
  *(a1 + 120) = *&v18[16];
  *(a1 + 24) = v13;
  *(a1 + 40) = v14;
  *(a1 + 56) = v15;
  *(a1 + 8) = v12;
  *(a1 + 136) = 1;
  return a1;
}

void sub_10002D784(uint64_t a1)
{
  v2 = sub_1000081AC();
  if (*a1 < 0.0 || v2 - *(a1 + 8) > 300.0)
  {
    if (TMGetReferenceTime())
    {
      *a1 = 0xBFF0000000000000;
      *(a1 + 8) = v2;
      Current = CFAbsoluteTimeGetCurrent();
      if (qword_1025D4600 != -1)
      {
        sub_1018B4DC8();
      }

      v4 = qword_1025D4608;
      if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134349824;
        v8 = Current - -1.0;
        v9 = 2050;
        v10 = 0xBFF0000000000000;
        v11 = 1026;
        v12 = 0;
        v13 = 2050;
        v14 = v2;
        _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEFAULT, "CLRT,Reference time fetched with offset %{public}.3f,unc,%{public}.3f,rel,%{public}d,mct,%{public}.3f", buf, 0x26u);
      }

      if (sub_10000A100(121, 2))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1025D4600 != -1)
        {
          sub_1018B4DC8();
        }

        v5 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "CFAbsoluteTime CLReferenceTimeCache::getApproximateReferenceTimeNow()", "%s\n", v5);
        if (v5 != buf)
        {
          free(v5);
        }
      }
    }

    else
    {
      if (qword_1025D4600 != -1)
      {
        sub_1018B4DC8();
      }

      v6 = qword_1025D4608;
      if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134349056;
        v8 = v2;
        _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEFAULT, "CLRT,Reference time unavailable,mct,%{public}.3f", buf, 0xCu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1018B4DF0(v2);
      }
    }
  }
}

void sub_10002DB64(uint64_t a1, uint64_t a2, double a3)
{
  *(a1 + 8) = *(a2 + 76);
  *(a1 + 24) = *(a2 + 4);
  if (*(a2 + 20) >= a3)
  {
    a3 = *(a2 + 20);
  }

  *(a1 + 40) = a3;
  *(a1 + 48) = *(a2 + 28);
  *(a1 + 72) = *(a2 + 44);
  *(a1 + 88) = *(a2 + 60);
  *(a1 + 116) = *(a2 + 84);
  *(a1 + 104) = *(a2 + 88);
  *(a1 + 124) = *(a2 + 96);
  *(a1 + 120) = 0;
  sub_10002DA78(*(a1 + 24));
  sub_10002DB04(*(a1 + 32));
  v4 = (a1 + 56);
  v5 = *(a1 + 56);
  if (v5 <= 0.0)
  {
    *(a1 + 48) = 0;
    v6 = -1.0;
  }

  else
  {
    if (v5 < 1.0)
    {
      v4 = &unk_101CFC6E0;
    }

    v6 = *v4;
    if (*v4 > 300.0)
    {
      v6 = 300.0;
    }
  }

  *(a1 + 56) = v6;
  __asm { FMOV            V0.2D, #-1.0 }

  if (!(!_ZF & _CF))
  {
    *(a1 + 72) = _Q0;
  }

  if (*(a1 + 96) <= 0.0)
  {
    *(a1 + 88) = _Q0;
  }

  else
  {
    sub_1001D08A4(*(a1 + 88));
    *(a1 + 88) = v12;
  }
}

void sub_10002DC6C(uint64_t a1, uint64_t a2, int a3)
{
  if (*(a2 + 136))
  {
    v3 = *(a2 + 136) == 5;
  }

  else
  {
    v3 = 1;
  }

  if (!v3)
  {
    if (*(a1 + 65) == 1)
    {
      if (qword_1025D4600 != -1)
      {
        sub_10194EAB4();
      }

      v6 = qword_1025D4608;
      if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
      {
        v7 = *(a2 + 16);
        LODWORD(v18[0]) = 134349056;
        *(v18 + 4) = v7;
        _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "LCOutputBuffer,reject feed location in simulation mode,MCT,%{public}.3f", v18, 0xCu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_10194EC2C(a2);
      }
    }

    else
    {
      v8 = (a2 + 8);
      if (*(a2 + 8) >= 0.0)
      {
        if (*(a2 + 128) < 0.0 && (v12 = *(a1 + 24)) != 0)
        {
          v13 = *(a2 + 88);
          v22 = *(a2 + 72);
          v23 = v13;
          v24 = *(a2 + 104);
          v14 = *(a2 + 24);
          *&v18[1] = *v8;
          v19 = v14;
          v15 = *(a2 + 56);
          v20 = *(a2 + 40);
          v18[0] = off_1024DE5F8;
          v25 = *(a2 + 120);
          v21 = v15;
          v26 = *(a2 + 128);
          sub_10002D784(v12);
          *&v26 = v16;
          sub_10002C40C(*(a1 + 40), v18, a3);
        }

        else
        {
          v17 = *(a1 + 40);

          sub_10002C40C(v17, a2, a3);
        }
      }

      else
      {
        if (qword_1025D4600 != -1)
        {
          sub_10194EAB4();
        }

        v9 = qword_1025D4608;
        if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_INFO))
        {
          v10 = *v8;
          LODWORD(v18[0]) = 134349056;
          *(v18 + 4) = v10;
          _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_INFO, "LCOutputBuffer,#Warning: invalid CFAT applicability time,%{public}.3f,not adding location", v18, 0xCu);
        }

        if (sub_10000A100(121, 2))
        {
          sub_10194EB34(v8);
        }
      }
    }
  }
}

uint64_t sub_10002DEDC(uint64_t result, uint64_t a2)
{
  if (*(result + 6120))
  {
    v3 = result;
    v4 = *(result + 6088);
    v5 = *(result + 6112);
    v6 = (v4 + 8 * (v5 / 0x49));
    v7 = *(result + 6096);
    if (v7 == v4)
    {
      v8 = 0;
    }

    else
    {
      v8 = *v6 + 56 * (v5 % 0x49);
    }

    while (1)
    {
      if (v7 == v4)
      {
        v10 = 0;
      }

      else
      {
        v9 = v3[765] + v3[764];
        v10 = *(v4 + 8 * (v9 / 0x49)) + 56 * (v9 % 0x49);
      }

      if (v8 == v10)
      {
        break;
      }

      v12 = *(v8 + 8);
      v11 = *(v8 + 16);
      if (v12 != v11)
      {
        while (vabdd_f64(*(v12 + 76), *(a2 + 76)) >= 0.001)
        {
          v12 += 156;
          if (v12 == v11)
          {
            goto LABEL_15;
          }
        }

        v13 = *(a2 + 16);
        *v12 = *a2;
        *(v12 + 16) = v13;
        v14 = *(a2 + 32);
        v15 = *(a2 + 48);
        v16 = *(a2 + 80);
        *(v12 + 64) = *(a2 + 64);
        *(v12 + 80) = v16;
        *(v12 + 32) = v14;
        *(v12 + 48) = v15;
        v17 = *(a2 + 96);
        v18 = *(a2 + 112);
        v19 = *(a2 + 128);
        *(v12 + 140) = *(a2 + 140);
        *(v12 + 112) = v18;
        *(v12 + 128) = v19;
        *(v12 + 96) = v17;
        if (sub_100027FB4(v12))
        {
          *(v12 + 20) = round(*(v12 + 20) * 10.0) / 10.0 + 0.096014;
        }
      }

LABEL_15:
      v20 = v3[35];
      if (!v20)
      {
LABEL_20:
        sub_100021AFC(v24);
        v22 = *(v8 + 32);
        v26 = *(v8 + 48);
        v25 = v22;
        v27 = *(v8 + 8);
        sub_10030E0F8();
      }

      result = (*(*v20 + 504))(v20);
      v21 = *(v8 + 16);
      if (v21 == *(v8 + 8))
      {
        if ((result & 1) == 0)
        {
          goto LABEL_20;
        }
      }

      else if (((*(a2 + 76) < *(v21 - 80)) & result) == 0)
      {
        goto LABEL_20;
      }

      v8 += 56;
      if (v8 - *v6 == 4088)
      {
        v23 = v6[1];
        ++v6;
        v8 = v23;
      }

      v4 = v3[761];
      v7 = v3[762];
    }

    for (; v3[765]; result = sub_10030E1D0(v3 + 760))
    {
      if (*(*(v3[761] + 8 * (v3[764] / 0x49uLL)) + 56 * (v3[764] % 0x49uLL) + 16) != *(*(v3[761] + 8 * (v3[764] / 0x49uLL)) + 56 * (v3[764] % 0x49uLL) + 8))
      {
        break;
      }
    }
  }

  return result;
}

void sub_10002E514(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_100311054(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10002E554(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 2880) != 4 || *(a1 + 2840) == 1)
  {
    sub_100272FF0(a1);
  }

  *a2 = 0xFFFF;
  *(a2 + 12) = 0;
  *(a2 + 4) = 0;
  *(a2 + 20) = xmmword_101C75BF0;
  __asm { FMOV            V0.2D, #-1.0 }

  *(a2 + 36) = _Q0;
  *(a2 + 52) = _Q0;
  v42 = _Q0;
  *(a2 + 68) = _Q0;
  *(a2 + 84) = 0;
  *(a2 + 96) = 0;
  *(a2 + 104) = 0;
  *(a2 + 88) = 0xBFF0000000000000;
  *(a2 + 112) = 0;
  *(a2 + 116) = 0xBFF0000000000000;
  *(a2 + 124) = 0x7FFFFFFF;
  *(a2 + 136) = 0;
  *(a2 + 144) = 0;
  *(a2 + 128) = 0;
  *(a2 + 152) = 0;
  if ((*(a1 + 1104) & 0xFFFFFFFB) != 0)
  {
    v9 = *(a1 + 312);
    if (v9)
    {
      if (*(*(*(a1 + 280) + 8 * ((v9 + *(a1 + 304) - 1) / 0x1AuLL)) + 152 * ((v9 + *(a1 + 304) - 1) % 0x1AuLL) + 148))
      {
        v10 = sub_10000B1F8();
        *buf = 1;
        v70 = sub_10001A6B0(v10, buf);
        sub_100D6B904(a1);
        memcpy(__dst, (a1 + 448), 0x161uLL);
        v53 = *(a1 + 808);
        v11 = *(a1 + 988);
        v64 = *(a1 + 972);
        *v65 = v11;
        *&v65[12] = *(a1 + 1000);
        v12 = *(a1 + 924);
        v60 = *(a1 + 908);
        v61 = v12;
        v13 = *(a1 + 956);
        v62 = *(a1 + 940);
        v63 = v13;
        v14 = *(a1 + 860);
        v56 = *(a1 + 844);
        v57 = v14;
        v15 = *(a1 + 892);
        v58 = *(a1 + 876);
        v59 = v15;
        v16 = *(a1 + 828);
        v54 = *(a1 + 812);
        v55 = v16;
        v66 = *(a1 + 1016);
        v17 = *(a1 + 1024);
        v67 = v17;
        if (v17)
        {
          atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v18 = *(a1 + 1048);
        v68 = *(a1 + 1032);
        v69 = v18;
        HIDWORD(v68) = 2004;
        if (*(a1 + 2904) == 1 && *(a1 + 2856) < 0.0 && v70 - *(a1 + 2912) > 6.0 && sub_100680650(a1 + 2424, v70, 6.0) && (v53 - 3) >= 8 && v53)
        {
          if (qword_1025D4770 != -1)
          {
            sub_100224830();
          }

          v36 = qword_1025D4778;
          if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
          {
            *buf = 134349056;
            v85 = v70;
            _os_log_impl(dword_100000000, v36, OS_LOG_TYPE_DEBUG, "#fusion,getLatestPredictedFusedLocation,overriding static dynamics mode,mct_now,%{public}.3f", buf, 0xCu);
          }

          if (sub_10000A100(121, 2))
          {
            sub_101A7B5F4(buf);
            v75 = 134349056;
            v76 = v70;
            v41 = _os_log_send_and_compose_impl();
            sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::CLLCFusion::getLatestPredictedFusedLocation(CLDaemonLocation &)", "%s\n", v41);
            if (v41 != buf)
            {
              free(v41);
            }
          }

          v53 = 0;
        }

        if (sub_10002980C(__dst, &v70))
        {
          v43 = off_1024DE5F8;
          v44 = v42;
          v45 = xmmword_101C75BF0;
          v46 = xmmword_101C75BF0;
          v47 = v42;
          v48 = v42;
          v49 = 0xBFF0000000000000;
          v50 = 0;
          v51 = 0;
          if (sub_10002A8E4(__dst, &v43))
          {
            v51 = sub_1000291EC(a1 + 256, &v70);
            if (v51)
            {
              if (*&v45 <= 0.0)
              {
                if (qword_1025D4770 != -1)
                {
                  sub_100224830();
                }

                v34 = qword_1025D4778;
                if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 0;
                  _os_log_impl(dword_100000000, v34, OS_LOG_TYPE_DEBUG, "#fusion,getLatestPredictedFusedLocation failed, hunc <= 0", buf, 2u);
                }

                if (!sub_10000A100(121, 2))
                {
                  goto LABEL_76;
                }
              }

              else
              {
                if (*(&v55 + 4) <= 0.001)
                {
                  v19 = *(a1 + 312) + *(a1 + 304) - 1;
                  sub_1012E8F84(&v43, *(*(a1 + 280) + 8 * (v19 / 0x1A)) + 152 * (v19 % 0x1A) + 16);
                }

                if (sub_10002790C(&v43, a2))
                {
                  if (*(a1 + 2904) == 1 && *(a1 + 1432) > 0.0)
                  {
                    v20 = sub_10002F2EC(a1 + 1416, &v70);
                    if (qword_1025D4770 != -1)
                    {
                      sub_100224830();
                    }

                    v21 = qword_1025D4778;
                    if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
                    {
                      v22 = *(a1 + 2912);
                      *buf = 134349568;
                      v85 = v70;
                      v86 = 2050;
                      v87 = v22;
                      v88 = 2050;
                      v89 = v20;
                      _os_log_impl(dword_100000000, v21, OS_LOG_TYPE_DEBUG, "#fusion,getLatestPredictedFusedLocation,request made while fuser is in collecting/processing buffered data,mct_now,%{public}.3f,mct_slept,%{public}.3f,timeSinceLastADLSent,%{public}.3f", buf, 0x20u);
                    }

                    if (sub_10000A100(121, 2))
                    {
                      sub_101A7B5F4(buf);
                      v39 = *(a1 + 2912);
                      v75 = 134349568;
                      v76 = v70;
                      v77 = 2050;
                      v78 = v39;
                      v79 = 2050;
                      v80 = v20;
                      v40 = _os_log_send_and_compose_impl();
                      sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::CLLCFusion::getLatestPredictedFusedLocation(CLDaemonLocation &)", "%s\n", v40);
                      if (v40 != buf)
                      {
                        free(v40);
                      }
                    }
                  }

                  sub_10002F4A0(&v43, "#fusion,getLatestPredictedFusedLocation,output", 0);
                  v23 = sub_10002F470() - *(a1 + 200);
                  if (v23 > 0.001)
                  {
                    *(a2 + 88) = 0x4008000000000000;
                  }

                  v24 = 1;
                  *(a2 + 132) = 1;
                  if ((*(a1 + 2904) & 1) == 0)
                  {
                    v25 = v53;
                    if (v23 <= 0.001)
                    {
                      v26 = 1;
                    }

                    else
                    {
                      v26 = 2;
                    }

                    sub_10002D644(&v75, a2, *(&v44 + 1));
                    v81 = 0xBFF0000000000000;
                    v82 = v26;
                    v83 = v25;
                    if (qword_1025D4770 != -1)
                    {
                      sub_100224830();
                    }

                    v27 = qword_1025D4778;
                    if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
                    {
                      *buf = 134349312;
                      v85 = *(&v44 + 1);
                      v86 = 2050;
                      v87 = v45;
                      _os_log_impl(dword_100000000, v27, OS_LOG_TYPE_DEBUG, "#fusion,#ADL,pushing location to output buffer (on poll call) at MCT %{public}.3f sec (hunc: %{public}.3f)", buf, 0x16u);
                    }

                    if (sub_10000A100(121, 2))
                    {
                      sub_101A7B5F4(buf);
                      v71 = 134349312;
                      v72 = *(&v44 + 1);
                      v73 = 2050;
                      v74 = v45;
                      v38 = _os_log_send_and_compose_impl();
                      sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::CLLCFusion::getLatestPredictedFusedLocation(CLDaemonLocation &)", "%s\n", v38);
                      if (v38 != buf)
                      {
                        free(v38);
                      }
                    }

                    sub_100D6C864(a1 + 2960);
                    v24 = 1;
                  }

                  goto LABEL_77;
                }

                if (qword_1025D4770 != -1)
                {
                  sub_100224830();
                }

                v35 = qword_1025D4778;
                if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 0;
                  _os_log_impl(dword_100000000, v35, OS_LOG_TYPE_DEBUG, "#fusion,getLatestPredictedFusedLocation,failed to convert to daemon location", buf, 2u);
                }

                if (!sub_10000A100(121, 2))
                {
LABEL_76:
                  v24 = 0;
LABEL_77:
                  if (v67)
                  {
                    sub_100008080(v67);
                  }

                  return v24;
                }
              }
            }

            else
            {
              if (qword_1025D4770 != -1)
              {
                sub_100224830();
              }

              v33 = qword_1025D4778;
              if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
              {
                *buf = 0;
                _os_log_impl(dword_100000000, v33, OS_LOG_TYPE_DEBUG, "#fusion,,getLatestPredictedFusedLocation,fused location type is Unknown", buf, 2u);
              }

              if (!sub_10000A100(121, 2))
              {
                goto LABEL_76;
              }
            }
          }

          else
          {
            if (qword_1025D4770 != -1)
            {
              sub_100224830();
            }

            v32 = qword_1025D4778;
            if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
            {
              *buf = 0;
              _os_log_impl(dword_100000000, v32, OS_LOG_TYPE_DEBUG, "#fusion,getLatestPredictedFusedLocation,failed to retrieve predicted fused state", buf, 2u);
            }

            if (!sub_10000A100(121, 2))
            {
              goto LABEL_76;
            }
          }

          sub_101A7B5F4(buf);
          LOWORD(v75) = 0;
          v31 = _os_log_send_and_compose_impl();
          sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::CLLCFusion::getLatestPredictedFusedLocation(CLDaemonLocation &)", "%s\n", v31);
        }

        else
        {
          if (qword_1025D4770 != -1)
          {
            sub_100224830();
          }

          v30 = qword_1025D4778;
          if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
          {
            *buf = 134349056;
            v85 = v70;
            _os_log_impl(dword_100000000, v30, OS_LOG_TYPE_DEBUG, "#fusion,getLatestPredictedFusedLocation,failed to predict fused state,mct_now,%{public}.3f", buf, 0xCu);
          }

          if (!sub_10000A100(121, 2))
          {
            goto LABEL_76;
          }

          sub_101A7B5F4(buf);
          v75 = 134349056;
          v76 = v70;
          v31 = _os_log_send_and_compose_impl();
          sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::CLLCFusion::getLatestPredictedFusedLocation(CLDaemonLocation &)", "%s\n", v31);
        }

        if (v31 != buf)
        {
          free(v31);
        }

        goto LABEL_76;
      }
    }
  }

  if (qword_1025D4770 != -1)
  {
    sub_1002F97A8();
  }

  v28 = qword_1025D4778;
  if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v28, OS_LOG_TYPE_DEBUG, "#fusion,getLatestPredictedFusedLocation,invalid latest selected hypothesis in getting the latest predicted fused state", buf, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101A7B5F4(buf);
    __dst[0] = 0;
    v37 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::CLLCFusion::getLatestPredictedFusedLocation(CLDaemonLocation &)", "%s\n", v37);
    if (v37 != buf)
    {
      free(v37);
    }
  }

  return 0;
}

void sub_10002F2AC(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10037EA9C(a1);
}

uint64_t sub_10002F2B8(uint64_t a1, uint64_t a2)
{
  LODWORD(result) = sub_10002E554(a1 + 456, a2);
  if (*(a2 + 20) > 0.0)
  {
    return result;
  }

  else
  {
    return 0;
  }
}

double sub_10002F2EC(uint64_t a1, double *a2)
{
  v2 = *(a1 + 16);
  if (v2 > 0.0)
  {
    return *a2 - v2;
  }

  if (qword_1025D4770 != -1)
  {
    sub_101BA7B40();
  }

  v4 = qword_1025D4778;
  if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_ERROR, "#Error,ProviderLoc,getAge called while MCT not set", buf, 2u);
  }

  v3 = -1.0;
  if (sub_10000A100(121, 0))
  {
    sub_101BA7B54(buf);
    v6 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 0, "virtual CFTimeInterval cllcf::LCFusionProviderLocation::getAge(const CFTimeInterval &) const", "%s\n", v6);
    if (v6 != buf)
    {
      free(v6);
    }
  }

  return v3;
}

void sub_10002F464(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10037EA9C(a1);
}

double sub_10002F470()
{
  v0 = sub_10000B1F8();
  v2 = 1;
  return sub_10001A6B0(v0, &v2);
}

void sub_10002F4A0(uint64_t a1, uint64_t a2, int a3)
{
  if (qword_1025D4770 != -1)
  {
    sub_101BA7B40();
  }

  v6 = qword_1025D4778;
  if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
  {
    v7 = *(a1 + 124);
    v8 = *(a1 + 16);
    v15 = *(a1 + 24);
    v16 = *(a1 + 32);
    v9 = *(a1 + 48);
    v19 = *(a1 + 56);
    v20 = *(a1 + 40);
    v25 = a3;
    v10 = *(a1 + 72);
    v11 = *(a1 + 88);
    v17 = *(a1 + 96);
    v18 = *(a1 + 80);
    v21 = *(a1 + 116);
    v22 = *(a1 + 104);
    v23 = *(a1 + 120);
    v24 = *(a1 + 121);
    v12 = *(a1 + 8);
    v13 = (*(*a1 + 56))(a1);
    *buf = 134353667;
    v27 = v12;
    v28 = 2050;
    v29 = v8;
    v30 = 1026;
    v31 = v7;
    v32 = 2053;
    v33 = v15;
    v34 = 2053;
    v35 = v16;
    v36 = 2049;
    v37 = v9;
    v38 = 2049;
    v39 = v10;
    v40 = 2049;
    v41 = v11;
    v42 = 2050;
    v43 = v20;
    v44 = 2050;
    v45 = v19;
    v46 = 2050;
    v47 = v18;
    v48 = 2050;
    v49 = v17;
    v50 = 1026;
    v51 = v21;
    v52 = 2050;
    v53 = v22;
    v54 = 1026;
    v55 = v23;
    v56 = 1026;
    v57 = v24;
    v58 = 2050;
    v59 = v13;
    v60 = 1026;
    v61 = v25;
    v62 = 2082;
    v63 = a2;
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "ProviderLoc:PositionLog,%{public}.3f,%{public}.3f,%{public}d,%{sensitive}.7f,%{sensitive}.7f,%{private}.1f,%{private}.2f,%{private}.2f,%{public}.2f,%{public}.2f,%{public}.3f,%{public}.1f,%{public}d,%{public}.2f,%{public}d,%{public}d,%{public}.3f,%{public}d,%{public}s", buf, 0xACu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101BA7B54(buf);
    (*(*a1 + 56))(a1);
    v14 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "virtual void cllcf::LCFusionProviderLocation::debugPrintLocation(const char *, int) const", "%s\n", v14);
    if (v14 != buf)
    {
      free(v14);
    }
  }
}

void sub_10002F8A0(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10037EA9C(a1);
}

void sub_10002F8AC(uint64_t a1)
{
  *(a1 + 306) = [sub_10003381C(a1 @"includePrivateData")];

  sub_10002F8F4(a1);
}

void sub_10002F8F4(uint64_t a1)
{
  v2 = [*(a1 + 136) isAuthorizedForServiceType:12];
  if (sub_10003381C(a1, @"powerBudget"))
  {
    v3 = [*(a1 + 136) isAuthorizedForServiceType:3];
  }

  else
  {
    v3 = 0;
  }

  v4 = v2 ^ 1;
  if (qword_1025D4790 != -1)
  {
    sub_101AD1CB0();
  }

  v5 = qword_1025D4798;
  if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 64);
    v8 = 68290050;
    v9 = 2082;
    v7 = *(a1 + 320);
    v10 = "";
    v11 = 2114;
    v12 = v6;
    v13 = 1026;
    v14 = v3;
    v15 = 1026;
    v16 = v7;
    v17 = 1026;
    v18 = v4;
    _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#SLC Monitoring status, client:%{public, location:escape_only}@, shouldBeRegistered:%{public}hhd, fRegisteredForSLC:%{public}hhd, shouldEngageCorrectiveCompensation:%{public}hhd}", &v8, 0x2Eu);
  }

  if (*(a1 + 320) != v3 || *(a1 + 321) != v4)
  {
    if (v3)
    {
      sub_100043CF8(a1, v4);
    }

    sub_1000E5218(a1);
  }
}

uint64_t sub_10002FB10(uint64_t a1, int *a2, uint64_t a3)
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

  sub_10002FB88(a3, v8);
  return 1;
}

uint64_t sub_10002FB88(uint64_t a1, uint64_t a2)
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
  v8 = *(a2 + 96);
  v9 = *(a2 + 112);
  v10 = *(a2 + 128);
  *(a1 + 140) = *(a2 + 140);
  *(a1 + 112) = v9;
  *(a1 + 128) = v10;
  *(a1 + 96) = v8;
  memcpy((a1 + 160), (a2 + 160), 0x201uLL);
  v11 = *(a2 + 680);
  v12 = *(a2 + 688);
  if (v12)
  {
    atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 680) = v11;
  v13 = *(a1 + 688);
  *(a1 + 688) = v12;
  if (v13)
  {
    sub_100008080(v13);
  }

  v14 = *(a2 + 696);
  v15 = *(a2 + 728);
  *(a1 + 712) = *(a2 + 712);
  *(a1 + 728) = v15;
  *(a1 + 696) = v14;
  v16 = *(a2 + 744);
  v17 = *(a2 + 760);
  v18 = *(a2 + 776);
  *(a1 + 785) = *(a2 + 785);
  *(a1 + 760) = v17;
  *(a1 + 776) = v18;
  *(a1 + 744) = v16;
  v19 = *(a2 + 808);
  v20 = *(a2 + 816);
  if (v20)
  {
    atomic_fetch_add_explicit((v20 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 808) = v19;
  v21 = *(a1 + 816);
  *(a1 + 816) = v20;
  if (v21)
  {
    sub_100008080(v21);
  }

  *(a1 + 824) = *(a2 + 824);
  v22 = *(a2 + 840);
  v23 = *(a2 + 856);
  v24 = *(a2 + 872);
  *(a1 + 888) = *(a2 + 888);
  *(a1 + 856) = v23;
  *(a1 + 872) = v24;
  *(a1 + 840) = v22;
  *(a1 + 896) = *(a2 + 896);
  std::string::operator=((a1 + 904), (a2 + 904));
  v26 = *(a2 + 944);
  v25 = *(a2 + 960);
  *(a1 + 928) = *(a2 + 928);
  *(a1 + 944) = v26;
  *(a1 + 960) = v25;
  v27 = *(a2 + 1024);
  v29 = *(a2 + 976);
  v28 = *(a2 + 992);
  *(a1 + 1008) = *(a2 + 1008);
  *(a1 + 1024) = v27;
  *(a1 + 976) = v29;
  *(a1 + 992) = v28;
  v30 = *(a2 + 1056);
  v31 = *(a2 + 1072);
  v32 = *(a2 + 1088);
  *(a1 + 1040) = *(a2 + 1040);
  *(a1 + 1088) = v32;
  *(a1 + 1072) = v31;
  *(a1 + 1056) = v30;
  v33 = *(a2 + 1120);
  v34 = *(a2 + 1136);
  v35 = *(a2 + 1152);
  *(a1 + 1104) = *(a2 + 1104);
  *(a1 + 1152) = v35;
  *(a1 + 1136) = v34;
  *(a1 + 1120) = v33;
  v36 = *(a2 + 1160);
  v37 = *(a2 + 1168);
  if (v37)
  {
    atomic_fetch_add_explicit((v37 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 1160) = v36;
  v38 = *(a1 + 1168);
  *(a1 + 1168) = v37;
  if (v38)
  {
    sub_100008080(v38);
  }

  *(a1 + 1176) = *(a2 + 1176);
  v39 = *(a2 + 1192);
  v40 = *(a2 + 1208);
  v41 = *(a2 + 1240);
  *(a1 + 1224) = *(a2 + 1224);
  *(a1 + 1240) = v41;
  *(a1 + 1192) = v39;
  *(a1 + 1208) = v40;
  v42 = *(a2 + 1256);
  v43 = *(a2 + 1272);
  v44 = *(a2 + 1304);
  *(a1 + 1288) = *(a2 + 1288);
  *(a1 + 1304) = v44;
  *(a1 + 1256) = v42;
  *(a1 + 1272) = v43;
  v45 = *(a1 + 1320);
  *(a1 + 1320) = *(a2 + 1320);

  v46 = *(a2 + 1328);
  v47 = *(a2 + 1344);
  *(a1 + 1360) = *(a2 + 1360);
  *(a1 + 1344) = v47;
  *(a1 + 1328) = v46;
  v48 = *(a2 + 1376);
  v49 = *(a2 + 1392);
  v50 = *(a2 + 1408);
  *(a1 + 1424) = *(a2 + 1424);
  *(a1 + 1408) = v50;
  *(a1 + 1392) = v49;
  *(a1 + 1376) = v48;
  v51 = *(a2 + 1440);
  v52 = *(a2 + 1456);
  v53 = *(a2 + 1472);
  *(a1 + 1488) = *(a2 + 1488);
  *(a1 + 1472) = v53;
  *(a1 + 1456) = v52;
  *(a1 + 1440) = v51;
  v54 = *(a2 + 1504);
  v55 = *(a2 + 1520);
  v56 = *(a2 + 1536);
  *(a1 + 1552) = *(a2 + 1552);
  *(a1 + 1536) = v56;
  *(a1 + 1520) = v55;
  *(a1 + 1504) = v54;
  return a1;
}

uint64_t sub_10002FE04(uint64_t a1, uint64_t a2, unint64_t a3, int a4, int a5, int a6, double a7)
{
  v12 = sub_100033370(a1, a2);
  v56 = 0;
  v57 = 0;
  sub_10004F9C8(a3, &v57, &v56);
  if (sub_10004FE2C(a1, a3, v12, a6 == 0))
  {
    if (qword_1025D4790 != -1)
    {
      sub_10192F910();
    }

    v13 = qword_1025D4798;
    a5 = 0;
    a4 = 0;
    if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289026;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Non-persistent SLC usage detected}", buf, 0x12u);
      a5 = 0;
      a4 = 0;
    }
  }

  if (a6 != 1)
  {
    v20 = v57;
    [*(a1 + 136) doubleForKey:v57 atKeyPath:v12 defaultValue:-1.0];
    v22 = v21;
    v23 = v56;
    [*(a1 + 136) doubleForKey:v56 atKeyPath:v12 defaultValue:-1.0];
    if (a4)
    {
      v25 = v24 != -1.0 || v22 == -1.0;
      if (!v25 && v22 <= a7)
      {
        if (qword_1025D4790 != -1)
        {
          sub_10192DAA4();
        }

        v26 = qword_1025D4798;
        if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          *&buf[4] = v12;
          _os_log_impl(dword_100000000, v26, OS_LOG_TYPE_DEBUG, "#Warning, new start time for %@ is after it's stored time", buf, 0xCu);
        }

        if (sub_10000A100(121, 2))
        {
          sub_1019321D8();
        }

        return 0;
      }

      [*(a1 + 136) setDouble:v20 forKey:v12 atKeyPath:a7];
      [*(a1 + 136) removeValueForKey:v23 atKeyPath:v12];
      if (!v25)
      {
LABEL_36:
        v27 = 0;
        if (a6)
        {
LABEL_101:
          sub_100034568(a1, v12);
          return v27;
        }

        goto LABEL_76;
      }
    }

    else
    {
      if (v22 == -1.0)
      {
        v28 = a5;
      }

      else
      {
        v28 = 1;
      }

      if (v28 != 1)
      {
        goto LABEL_36;
      }

      [*(a1 + 136) setDouble:v23 forKey:v12 atKeyPath:a7];
      [*(a1 + 136) removeValueForKey:v20 atKeyPath:v12];
      sub_1001D2F14(a1);
    }

LABEL_60:
    if (qword_1025D47A0 != -1)
    {
      sub_10192D4D0();
    }

    v33 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
    {
      v34 = off_10246FCA0[a3];
      *buf = 138412802;
      *&buf[4] = v12;
      *&buf[12] = 2080;
      *&buf[14] = v34;
      v68 = 1024;
      v69 = a4;
      _os_log_impl(dword_100000000, v33, OS_LOG_TYPE_DEBUG, "Service: key, %@, type, %s, active, %d", buf, 0x1Cu);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D47A0 != -1)
      {
        sub_10192D4D0();
      }

      v49 = off_10246FCA0[a3];
      v61 = 138412802;
      v62 = v12;
      v63 = 2080;
      v64 = v49;
      v65 = 1024;
      v66 = a4;
      v50 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "BOOL CLClientManager::setClientServiceActiveAtTime(CLClientKeyPath *, CLClientServiceType, BOOL, BOOL, double, Device)", "%s\n", v50);
      if (v50 != buf)
      {
        free(v50);
      }
    }

    sub_100044F7C(a1);
    if (a6)
    {
      v27 = 1;
      goto LABEL_96;
    }

    if (!_os_feature_enabled_impl() || a3 <= 0xA && ((1 << a3) & 0x430) != 0)
    {
      v35 = [objc_msgSend(v12 "legacyClientKey")];
      v36 = v35 ? v35 : "";
      sub_10000EC00(buf, v36);
      sub_1000F5FF0(a1, buf);
      if (SHIBYTE(v68) < 0)
      {
        operator delete(*buf);
      }
    }

    v37 = [objc_msgSend(*(a1 + 136) readonlyStoreAtKeyPath:{v12), "dictionary"}];
    v59 = [v12 legacyClientKey];
    v60 = v37;
    sub_1000188B0([NSDictionary dictionaryWithObjects:&v60 forKeys:&v59 count:1], "clientStatus");
    v27 = 1;
LABEL_76:
    if (((1 << a3) & 0xFFFFFFD1) == 0)
    {
      if (a4)
      {
        v38 = [objc_msgSend(v12 "legacyClientKey")];
        if (v38)
        {
          v39 = v38;
        }

        else
        {
          v39 = "";
        }

        sub_10000EC00(buf, v39);
        sub_10004FD1C(a1, buf, 1);
      }

      else
      {
        v54 = 0u;
        v55 = 0u;
        v52 = 0u;
        v53 = 0u;
        v40 = qword_102659EA8;
        v41 = [qword_102659EA8 countByEnumeratingWithState:&v52 objects:v58 count:16];
        if (v41)
        {
          v42 = *v53;
LABEL_84:
          v43 = 0;
          while (1)
          {
            if (*v53 != v42)
            {
              objc_enumerationMutation(v40);
            }

            v44 = *(*(&v52 + 1) + 8 * v43);
            v45 = objc_autoreleasePoolPush();
            LOBYTE(v44) = [*(a1 + 136) hasValueForKey:v44 atKeyPath:v12];
            objc_autoreleasePoolPop(v45);
            if (v44)
            {
              goto LABEL_96;
            }

            if (v41 == ++v43)
            {
              v41 = [v40 countByEnumeratingWithState:&v52 objects:v58 count:16];
              if (v41)
              {
                goto LABEL_84;
              }

              break;
            }
          }
        }

        v46 = [objc_msgSend(v12 "legacyClientKey")];
        if (v46)
        {
          v47 = v46;
        }

        else
        {
          v47 = "";
        }

        sub_10000EC00(buf, v47);
        sub_10004FD1C(a1, buf, 0);
      }

      if (SHIBYTE(v68) < 0)
      {
        operator delete(*buf);
      }
    }

LABEL_96:
    if (a3 == 3 && v27)
    {
      sub_10000EC00(buf, "");
      sub_100018918(a1, v12, buf);
      if (SHIBYTE(v68) < 0)
      {
        operator delete(*buf);
      }

      v27 = 1;
    }

    goto LABEL_101;
  }

  v14 = +[NSMutableDictionary dictionaryWithDictionary:](NSMutableDictionary, "dictionaryWithDictionary:", [*(a1 + 136) dictionaryForKey:? atKeyPath:? defaultValue:?]);
  v15 = [v12 isAuthSharingSubIdentity];
  v16 = v57;
  v17 = [(NSMutableDictionary *)v14 objectForKeyedSubscript:v57];
  v18 = v56;
  v19 = [(NSMutableDictionary *)v14 objectForKeyedSubscript:v56];
  if (v15)
  {
    if (a4)
    {
      if (v17 && !v19)
      {
        v71[0] = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [objc_msgSend(v17 objectAtIndexedSubscript:{0), "intValue"}] + 1);
        v71[1] = [v17 objectAtIndexedSubscript:1];
        [(NSMutableDictionary *)v14 setObject:[NSArray forKeyedSubscript:"arrayWithObjects:count:" arrayWithObjects:v71 count:2], v16];
        [(NSMutableDictionary *)v14 removeObjectForKey:v18];
        [*(a1 + 136) setDictionary:v14 forKey:@"RemoteUsage" atKeyPath:v12];
LABEL_49:
        v27 = 0;
        goto LABEL_101;
      }

      v72[0] = &off_10254EF30;
      v72[1] = [NSNumber numberWithDouble:a7];
      [(NSMutableDictionary *)v14 setObject:[NSArray forKeyedSubscript:"arrayWithObjects:count:" arrayWithObjects:v72 count:2], v16];
      [(NSMutableDictionary *)v14 removeObjectForKey:v18];
      [*(a1 + 136) setDictionary:v14 forKey:@"RemoteUsage" atKeyPath:v12];
      goto LABEL_60;
    }

    if (v17)
    {
      v30 = 1;
    }

    else
    {
      v30 = a5;
    }

    if (v30 == 1)
    {
      if ([objc_msgSend(v17 objectAtIndexedSubscript:{0), "intValue"}] >= 2)
      {
        v70[0] = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [objc_msgSend(v17 objectAtIndexedSubscript:{0), "intValue"}] - 1);
        v70[1] = [v17 objectAtIndexedSubscript:1];
        [(NSMutableDictionary *)v14 setObject:[NSArray forKeyedSubscript:"arrayWithObjects:count:" arrayWithObjects:v70 count:2], v16];
LABEL_59:
        sub_1001D2F14(a1);
        [*(a1 + 136) setDictionary:v14 forKey:@"RemoteUsage" atKeyPath:v12];
        goto LABEL_60;
      }

LABEL_58:
      [(NSMutableDictionary *)v14 setObject:[NSNumber forKeyedSubscript:"numberWithDouble:" numberWithDouble:a7], v18];
      [(NSMutableDictionary *)v14 removeObjectForKey:v16];
      goto LABEL_59;
    }

LABEL_48:
    [*(a1 + 136) setDictionary:v14 forKey:@"RemoteUsage" atKeyPath:v12];
    goto LABEL_49;
  }

  if (!a4)
  {
    if (v17)
    {
      v31 = 1;
    }

    else
    {
      v31 = a5;
    }

    if (v31 == 1)
    {
      goto LABEL_58;
    }

    goto LABEL_48;
  }

  if (!v17 || v19)
  {
    [(NSMutableDictionary *)v14 setObject:[NSNumber forKeyedSubscript:"numberWithDouble:" numberWithDouble:a7], v16];
    [(NSMutableDictionary *)v14 removeObjectForKey:v18];
    [*(a1 + 136) setDictionary:v14 forKey:@"RemoteUsage" atKeyPath:v12];
    goto LABEL_60;
  }

  [v17 doubleValue];
  if (v29 > a7)
  {
    [(NSMutableDictionary *)v14 setObject:[NSNumber forKeyedSubscript:"numberWithDouble:" numberWithDouble:a7], v16];
    [(NSMutableDictionary *)v14 removeObjectForKey:v18];
    [*(a1 + 136) setDictionary:v14 forKey:@"RemoteUsage" atKeyPath:v12];
    goto LABEL_49;
  }

  if (qword_1025D4790 != -1)
  {
    sub_10192DAA4();
  }

  v32 = qword_1025D4798;
  if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    *&buf[4] = v12;
    _os_log_impl(dword_100000000, v32, OS_LOG_TYPE_DEBUG, "#Warning, new start time for %@ is after it's stored time", buf, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1019322C8();
  }

  return 0;
}

void sub_100030880(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, void *__p, uint64_t a46, int a47, __int16 a48, char a49, char a50)
{
  if (a50 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1000308B0(uint64_t a1)
{
  v2 = sub_10003381C(a1, @"activeType");
  v3 = [*(a1 + 136) isAuthorizedForServiceType:6];
  v4 = sub_10003381C(a1, @"startDate");
  if (v2 && v3)
  {
    if (!v4)
    {
      v5 = [NSNumber numberWithDouble:CFAbsoluteTimeGetCurrent()];
      sub_1000E5A0C(a1, @"startDate", v5);
      sub_1000E5B8C(a1);
    }

    v6 = [v2 intValue];

    return sub_100125678(a1, v6);
  }

  else
  {
    if (v4)
    {
      sub_1000E5A0C(a1, @"startDate", 0);
      sub_1000E5B8C(a1);
    }

    return sub_1000309A8(a1);
  }
}

uint64_t sub_1000309A8(uint64_t result)
{
  if (*(result + 276) == 1)
  {
    v1 = result;
    v2 = *(result + 272);
    if (v2 == 1)
    {
      [*(result + 264) stopLeechingVisitsForClient:*(result + 256)];
    }

    else if (!v2)
    {
      [*(result + 264) stopMonitoringVisitsForClient:*(result + 256)];
    }

    if (*(v1 + 276) == 1)
    {
      *(v1 + 276) = 0;
    }

    [objc_msgSend(*(v1 + 128) "vendor")];
    v3 = *(v1 + 64);
    if (v3)
    {
      [v3 clientName];
    }

    sub_100043B98();
  }

  return result;
}

BOOL sub_100030AF8(void *a1, char *__s)
{
  v4 = strlen(__s);
  v5 = *(a1 + 23);
  if ((v5 & 0x8000000000000000) == 0)
  {
    if (v4 != v5)
    {
      return 0;
    }

    return memcmp(a1, __s, v4) == 0;
  }

  if (v4 == a1[1])
  {
    if (v4 == -1)
    {
      sub_1003CC9DC();
    }

    a1 = *a1;
    return memcmp(a1, __s, v4) == 0;
  }

  return 0;
}

uint64_t sub_100030B90(void *a1)
{
  v2 = sub_100031744(a1);
  v3 = v2;
  if (v2 < 5 && ((0x17u >> v2) & 1) != 0)
  {
    return dword_101CFD860[v2];
  }

  if (qword_1025D47A0 != -1)
  {
    sub_101A820F0();
  }

  v5 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_FAULT))
  {
    v7 = 68289538;
    v8 = 0;
    v9 = 2082;
    v10 = "";
    v11 = 1026;
    v12 = v3;
    v13 = 2114;
    v14 = a1;
    _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Unexpected AuthMask #clldu RegistrationResult, LocationDictionaryUtility AuthMask:%{public}d, dictionary:%{public, location:escape_only}@}", &v7, 0x22u);
    if (qword_1025D47A0 != -1)
    {
      sub_101A81EE4();
    }
  }

  v6 = off_1025D47A8;
  if (os_signpost_enabled(off_1025D47A8))
  {
    v7 = 68289538;
    v8 = 0;
    v9 = 2082;
    v10 = "";
    v11 = 1026;
    v12 = v3;
    v13 = 2114;
    v14 = a1;
    _os_signpost_emit_with_name_impl(dword_100000000, v6, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Unexpected AuthMask #clldu RegistrationResult", "{msg%{public}.0s:Unexpected AuthMask #clldu RegistrationResult, LocationDictionaryUtility AuthMask:%{public}d, dictionary:%{public, location:escape_only}@}", &v7, 0x22u);
  }

  return 4;
}

BOOL sub_100030D48(uint64_t a1, uint64_t a2)
{
  v3 = sub_1000184F4(a1, a2);
  v4 = v3;
  if (v3)
  {
    [v3 cppClientKey];
  }

  else
  {
    __p = 0;
    *v10 = 0;
    *&v10[8] = 0;
  }

  v5 = sub_10045EF04(a1 + 728, &__p);
  v6 = a1 + 736;
  if ((v10[15] & 0x80000000) != 0)
  {
    operator delete(__p);
  }

  if (v6 != v5)
  {
    if (qword_1025D47A0 != -1)
    {
      sub_10192D4D0();
    }

    v7 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
    {
      __p = 68289282;
      *v10 = 2082;
      *&v10[2] = "";
      *&v10[10] = 2114;
      *&v10[12] = v4;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#CLEPTO deauthorization overriding allowed, Client:%{public, location:escape_only}@}", &__p, 0x1Cu);
    }
  }

  return v6 != v5;
}

NSArray *sub_100030EA4(void *a1, int a2, int a3, int a4)
{
  if (qword_1025D47A0 != -1)
  {
    sub_101A820F0();
  }

  v5 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 68290050;
    v48 = 0;
    v49 = 2082;
    v50 = "";
    v51 = 2114;
    v52 = a1;
    v53 = 1026;
    *v54 = a2;
    *&v54[4] = 1026;
    *&v54[6] = a3;
    LOWORD(v55) = 1026;
    *(&v55 + 2) = a4;
    _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:computing #clldu registrationResults, dictionary:%{public, location:escape_only}@, isSystemService:%{public}hhd, bigSwitchEnabled:%{public}hhd, overrideDeauthorization:%{public}hhd}", buf, 0x2Eu);
  }

  v6 = +[NSMutableArray array];
  [v6 addObject:a1];
  v7 = sub_100031564(a1);
  if ([v7 count])
  {
    [v6 addObjectsFromArray:v7];
  }

  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v8 = [v6 countByEnumeratingWithState:&v42 objects:v57 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = 4;
    v40 = *v43;
    v11 = 4;
    v12 = 4;
    obj = v6;
LABEL_9:
    v13 = 0;
    while (1)
    {
      if (*v43 != v40)
      {
        objc_enumerationMutation(obj);
      }

      v14 = *(*(&v42 + 1) + 8 * v13);
      v15 = [v14 objectForKeyedSubscript:@"ZoneId"];
      v16 = [v14 objectForKey:@"TimeMissing"];
      if (v16)
      {
        [v16 doubleValue];
        if (qword_1025D47A0 != -1)
        {
          sub_101A81EE4();
        }

        v17 = off_1025D47A8;
        if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
        {
          *buf = 68289282;
          v48 = 0;
          v49 = 2082;
          v50 = "";
          v51 = 2114;
          v52 = v14;
          _os_log_impl(dword_100000000, v17, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#clldu _staticRegistrationResult , missing client, dictionary:%{public, location:escape_only}@}", buf, 0x1Cu);
        }

        v18 = 7;
      }

      else
      {
        if (v15)
        {
          v26 = 1;
        }

        else
        {
          v26 = a2 == 0;
        }

        if (v26)
        {
          goto LABEL_57;
        }

        v27 = sub_100033520(v14, 1);
        if (v27 != 6 && v27 != 0)
        {
          goto LABEL_57;
        }

        v29 = v27;
        if (qword_1025D47A0 != -1)
        {
          sub_101A81EE4();
        }

        v30 = off_1025D47A8;
        if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
        {
          *buf = 68289282;
          v48 = 0;
          v49 = 2082;
          v50 = "";
          v51 = 2114;
          v52 = v14;
          _os_log_impl(dword_100000000, v30, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#clldu staticRegistrationResult , unsupported system service, dictionary:%{public, location:escape_only}@}", buf, 0x1Cu);
        }

        v18 = 3;
        if (v29)
        {
          if (v29 != 6)
          {
LABEL_57:
            v18 = sub_100030B90(v14);
            if (qword_1025D47A0 != -1)
            {
              sub_101A81EE4();
            }

            v31 = off_1025D47A8;
            if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
            {
              *buf = 68289282;
              v48 = 0;
              v49 = 2082;
              v50 = "";
              v51 = 2050;
              v52 = v18;
              _os_log_impl(dword_100000000, v31, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#clldu _staticRegistrationResult, registration:%{public, location:CLClientRegistrationResult}lld}", buf, 0x1Cu);
            }
          }
        }
      }

      if ([&off_1025546F0 containsObject:{+[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", v18)}])
      {
        if (qword_1025D47A0 != -1)
        {
          sub_101A81EE4();
        }

        v33 = off_1025D47A8;
        if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_impl(dword_100000000, v33, OS_LOG_TYPE_DEBUG, "computing #clldu registrationResults, encountered doNotProceed static registration result. Early return", buf, 2u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_101A82104();
        }

        v56 = [NSNumber numberWithUnsignedInt:v18];
        v11 = 4;
        v34 = &v56;
        v10 = 4;
        goto LABEL_76;
      }

      if (a3)
      {
        v19 = v18;
        if (v18 == 1)
        {
          if ([objc_msgSend(v14 objectForKey:{@"ProvisionalMonitoring", "BOOLValue"}])
          {
            v19 = 8;
          }

          else
          {
            v19 = 1;
          }
        }

        v20 = a2;
        if (v18 != 2)
        {
          v20 = 0;
        }

        if ((v20 & a4) != 0)
        {
          v21 = 0;
        }

        else
        {
          v21 = v19;
        }

        v22 = v21;
        if (v21 == 4)
        {
          v23 = [objc_msgSend(v14 objectForKey:{@"TemporaryAuthorization", "intValue"}];
          if (v23)
          {
            v24 = 1;
          }

          else
          {
            v24 = 4;
          }

          if ((v23 & 4) != 0)
          {
            v21 = 2;
          }

          else
          {
            v21 = v24;
          }
        }

        if (!v15)
        {
LABEL_39:
          v10 = v21;
          v11 = v22;
          v12 = v18;
          goto LABEL_40;
        }
      }

      else
      {
        v21 = 2;
        v22 = 2;
        if (!v15)
        {
          goto LABEL_39;
        }
      }

      v25 = [objc_msgSend(v14 objectForKeyedSubscript:{@"ServiceMaskOperator", "intValue"}];
      v12 = sub_100D96760(v12, v18, v25);
      v11 = sub_100D96760(v11, v22, v25);
      v10 = sub_100D96760(v10, v21, v25);
LABEL_40:
      if (v9 == ++v13)
      {
        v32 = [obj countByEnumeratingWithState:&v42 objects:v57 count:16];
        v9 = v32;
        if (v32)
        {
          goto LABEL_9;
        }

        goto LABEL_71;
      }
    }
  }

  v10 = 4;
  v11 = 4;
  v12 = 4;
LABEL_71:
  if (qword_1025D47A0 != -1)
  {
    sub_101A81EE4();
  }

  v35 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 68289794;
    v48 = 0;
    v49 = 2082;
    v50 = "";
    v51 = 2050;
    v52 = v12;
    v53 = 2050;
    *v54 = v11;
    *&v54[8] = 2050;
    v55 = v10;
    _os_log_impl(dword_100000000, v35, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#clldu registrationResults, static:%{public, location:CLClientRegistrationResult}lld, effective:%{public, location:CLClientRegistrationResult}lld, transient:%{public, location:CLClientRegistrationResult}lld}", buf, 0x30u);
  }

  v46 = [NSNumber numberWithUnsignedInt:v12];
  v34 = &v46;
LABEL_76:
  v34[1] = [NSNumber numberWithUnsignedInt:v11];
  v34[2] = [NSNumber numberWithUnsignedInt:v10];
  return [NSArray arrayWithObjects:v34 count:3];
}

id sub_100031564(void *a1)
{
  v2 = +[NSMutableArray array];
  v3 = [a1 objectForKey:@"InterestZones"];
  if ([v3 count])
  {
    v4 = +[NSMutableArray array];
    v16 = +[NSMutableArray array];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v5 = [v3 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (!v5)
    {
      goto LABEL_15;
    }

    v6 = v5;
    v7 = *v18;
    while (1)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v18 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v17 + 1) + 8 * i);
        v10 = [v3 objectForKeyedSubscript:v9];
        v11 = [v10 objectForKey:@"Relevant"];
        if (v11 && [v11 BOOLValue])
        {
          v12 = [NSMutableDictionary dictionaryWithDictionary:v10];
          [(NSMutableDictionary *)v12 setObject:v9 forKeyedSubscript:@"ZoneId"];
          v13 = [objc_msgSend(v10 objectForKeyedSubscript:{@"ServiceMaskOperator", "intValue"}];
          v14 = v4;
          if (v13)
          {
            if (v13 != 1)
            {
              continue;
            }

            v14 = v16;
          }

          [v14 addObject:v12];
        }
      }

      v6 = [v3 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (!v6)
      {
LABEL_15:
        [v2 addObjectsFromArray:v4];
        [v2 addObjectsFromArray:v16];
        return v2;
      }
    }
  }

  return v2;
}

uint64_t sub_100031744(void *a1)
{
  v2 = [a1 objectForKey:@"Authorization"];
  if (v2)
  {
    v3 = [v2 integerValue];
    if (v3 < 5)
    {
      return qword_101CFD808[v3];
    }

    return 0;
  }

  v5 = [a1 objectForKey:@"Authorized"];
  if (!v5)
  {
    v6 = sub_100033520(a1, 1) - 3;
    if (v6 < 6)
    {
      return qword_101CFD830[v6];
    }

    return 0;
  }

  if ([v5 BOOLValue])
  {
    return 4;
  }

  else
  {
    return 1;
  }
}