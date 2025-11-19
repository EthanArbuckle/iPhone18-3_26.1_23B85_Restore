void sub_1002696AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, uint64_t a40, void *a41, uint64_t a42, int a43, __int16 a44, char a45, char a46)
{
  if (a32 < 0)
  {
    operator delete(__p);
  }

  if (a39 < 0)
  {
    operator delete(a34);
  }

  if (a46 < 0)
  {
    operator delete(a41);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_100269990(uint64_t a1, float a2, float a3, float a4)
{
  v8 = *(a1 + 336);
  v9 = *(a1 + 480);
  if (v9)
  {
    v10 = *(*(*(a1 + 448) + (((v9 + *(a1 + 472) - 1) >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * ((v9 + *(a1 + 472) - 1) & 0x3FF));
  }

  else
  {
    v10 = 0.0;
  }

  if (a4 <= 65.0 && v8 >= 2)
  {
    sub_1003F9930(a1 + 256, v8 - 2, buf);
    if ((v10 * *&v83[12]) < 0.0)
    {
      *(a1 + 1032) = 0;
      *(a1 + 952) = 0;
      *(a1 + 960) = 0;
      sub_1003F84E4((a1 + 720));
      if (qword_1025D4280 != -1)
      {
        sub_10187F764();
      }

      v21 = qword_1025D4288;
      if (os_log_type_enabled(qword_1025D4288, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v21, OS_LOG_TYPE_DEBUG, "Likely transient.", buf, 2u);
      }

      result = sub_10000A100(121, 2);
      if (result)
      {
        sub_10187FF70();
        return 0;
      }

      return result;
    }

    v23 = fabsf(*&v83[12]) - fabsf(v10);
    v24 = *(a1 + 956);
    v25 = 0.0;
    if (v24 > 45.0)
    {
      v25 = 1.0;
    }

    v26 = v23 + (v25 * -5.0);
    if (v26 > 15.0)
    {
      ++*(a1 + 1032);
      v27 = *(a1 + 952);
      if (v27 >= 1)
      {
        *(a1 + 952) = v27 - 1;
        if (v26 > 30.0 && v27 != 1)
        {
          *(a1 + 952) = v27 - 2;
          *(a1 + 956) = v24 * 0.8;
        }

        if (qword_1025D4280 != -1)
        {
          sub_10187F764();
        }

        v29 = qword_1025D4288;
        if (os_log_type_enabled(qword_1025D4288, OS_LOG_TYPE_DEBUG))
        {
          v30 = *(a1 + 952);
          *buf = 134218240;
          *v83 = v26;
          *&v83[8] = 1024;
          *&v83[10] = v30;
          _os_log_impl(dword_100000000, v29, OS_LOG_TYPE_DEBUG, "Slowing. decrement numZRot,delta, %.3f, numZRot, %d", buf, 0x12u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_10187FC7C((a1 + 952), v26);
        }
      }

      if (v26 > 50.0 || *(a1 + 1032) >= 4)
      {
        if (qword_1025D4280 != -1)
        {
          sub_10187F764();
        }

        v32 = qword_1025D4288;
        if (os_log_type_enabled(qword_1025D4288, OS_LOG_TYPE_DEBUG))
        {
          v33 = *(a1 + 1032);
          *buf = 134218240;
          *v83 = v26;
          *&v83[8] = 1024;
          *&v83[10] = v33;
          _os_log_impl(dword_100000000, v32, OS_LOG_TYPE_DEBUG, "ZDROP detected. deltaDrop, %.3f, fNumZDrops, %d", buf, 0x12u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_10187FE68((a1 + 1032), v26);
        }

        *(a1 + 952) = 0;
        *(a1 + 1032) = 0;
        sub_1003F84E4((a1 + 720));
        return 0;
      }
    }
  }

  v12 = *(a1 + 800);
  v13 = 0.0;
  v14 = 0.0;
  if (v12)
  {
    v14 = *(a1 + 752) / v12;
  }

  v15 = *(a1 + 872);
  if (v15)
  {
    v13 = *(a1 + 824) / v15;
  }

  v16 = *(a1 + 944);
  v17 = 0.0;
  v18 = 0.0;
  if (v16)
  {
    v18 = *(a1 + 896) / v16;
  }

  v68 = off_102450790;
  v69 = v14;
  v70 = v13;
  v71 = v18;
  if (v15)
  {
    v17 = *(*(*(a1 + 840) + (((v15 + *(a1 + 864) - 1) >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * ((v15 + *(a1 + 864) - 1) & 0x3FF)) * 0.4;
  }

  if (v18 >= 90.0)
  {
    v20 = 0;
  }

  else
  {
    v19 = v17 + (v13 * 0.6);
    if ((v19 - v18) > 60.0 || v15 && *(*(*(a1 + 840) + (((v15 + *(a1 + 864) - 1) >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * ((v15 + *(a1 + 864) - 1) & 0x3FF)) > 135.0)
    {
      v20 = 1;
    }

    else
    {
      v35 = v16 < 2 || (v34 = (v16 * *(a1 + 900)) - (*(a1 + 896) * *(a1 + 896)), v34 < 0.0) || (v34 / ((v16 - 1) * v16)) < 400.0;
      v20 = v19 > (v18 * 1.05) && v35;
    }
  }

  if (qword_1025D4280 != -1)
  {
    sub_10187F764();
  }

  v36 = fabsf(v14);
  v37 = qword_1025D4288;
  if (os_log_type_enabled(qword_1025D4288, OS_LOG_TYPE_DEBUG))
  {
    v38 = *(a1 + 952);
    *buf = 67110656;
    *v83 = v20;
    *&v83[4] = 2048;
    *&v83[6] = v71;
    *&v83[14] = 2048;
    *&v83[16] = v36;
    v84 = 1024;
    v85 = v38;
    v86 = 2048;
    v87 = a2;
    v88 = 2048;
    v89 = a4;
    v90 = 2048;
    v91 = a3;
    _os_log_impl(dword_100000000, v37, OS_LOG_TYPE_DEBUG, "mostlyZ, %d, zRotMean.z, %.3f, zRot, %.3f, numZRots, %d, estCurr, %.3f, totalZ, %.2f, mag2MinusGrav, %.2f", buf, 0x40u);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4280 != -1)
    {
      sub_10187F764();
    }

    v62 = *(a1 + 952);
    LODWORD(v72) = 67110656;
    HIDWORD(v72) = v20;
    *v73 = 2048;
    *&v73[2] = v71;
    *&v73[10] = 2048;
    *&v73[12] = v36;
    v74 = 1024;
    v75 = v62;
    v76 = 2048;
    v77 = a2;
    v78 = 2048;
    v79 = a4;
    v80 = 2048;
    v81 = a3;
    v63 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "BOOL CLOrientationDetector::updateZRotationStatus(float, float, float)", "%s\n", v63);
    if (v63 != buf)
    {
      free(v63);
    }
  }

  v40 = a3 > -0.85 && a3 < 0.25;
  if ((v40 & v20) != 1)
  {
    return 0;
  }

  v41 = v36 <= 45.0 || v12 <= 1;
  v42 = !v41;
  if (a2 <= 150.0 && !v42)
  {
    return 0;
  }

  v43 = *(a1 + 952) + 1;
  *(a1 + 952) = v43;
  if (a4 <= 65.0)
  {
    v46 = fabsf(a3);
    if (v46 <= 0.3)
    {
      v47 = 0.0;
    }

    else
    {
      v47 = 1.0;
    }

    if (v46 <= 0.1)
    {
      v48 = 0.0;
    }

    else
    {
      v48 = 1.0;
    }

    v49 = ((v48 * 5.0) + 35.0) + (v47 * 10.0);
    if (v43 >= v12)
    {
      v43 = v12;
    }

    if (v49 >= a4 || v43 <= 3)
    {
      return 0;
    }

    goto LABEL_107;
  }

  v44 = 255.0;
  if (a4 > 100.0)
  {
    v44 = 225.0;
  }

  if (fabsf(v10) <= v44)
  {
LABEL_107:
    if (qword_1025D4280 != -1)
    {
      sub_10187F764();
    }

    v51 = qword_1025D4288;
    if (os_log_type_enabled(qword_1025D4288, OS_LOG_TYPE_DEBUG))
    {
      v52 = *(a1 + 800);
      v53 = 0.0;
      v54 = 0.0;
      if (v52 >= 2)
      {
        v55 = (v52 * *(a1 + 756)) - (*(a1 + 752) * *(a1 + 752));
        v54 = 0.0;
        if (v55 >= 0.0)
        {
          v54 = v55 / ((v52 - 1) * v52);
        }
      }

      v56 = *(a1 + 872);
      if (v56 >= 2)
      {
        v57 = (v56 * *(a1 + 828)) - (*(a1 + 824) * *(a1 + 824));
        if (v57 >= 0.0)
        {
          v53 = v57 / ((v56 - 1) * v56);
        }
      }

      v58 = *(a1 + 952);
      v59 = *(a1 + 944);
      v60 = 0.0;
      if (v59 >= 2)
      {
        v61 = (v59 * *(a1 + 900)) - (*(a1 + 896) * *(a1 + 896));
        if (v61 >= 0.0)
        {
          v60 = v61 / ((v59 - 1) * v59);
        }
      }

      v72 = off_102450790;
      *v73 = v54;
      *&v73[4] = v53;
      *&v73[8] = v60;
      *buf = 67109632;
      *v83 = v12;
      *&v83[4] = 1024;
      *&v83[6] = v58;
      *&v83[10] = 2048;
      *&v83[12] = v54;
      _os_log_impl(dword_100000000, v51, OS_LOG_TYPE_DEBUG, "Rotating around Z. numSamples: %d, numAccu, %d, zRotVar, %.3f", buf, 0x18u);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4280 != -1)
      {
        sub_10187F764();
      }

      v64 = *(a1 + 952);
      sub_1003F97A0(a1 + 720, v66);
      LODWORD(v72) = 67109632;
      HIDWORD(v72) = v12;
      *v73 = 1024;
      *&v73[2] = v64;
      *&v73[6] = 2048;
      *&v73[8] = v67;
      v65 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "BOOL CLOrientationDetector::updateZRotationStatus(float, float, float)", "%s\n", v65);
      if (v65 != buf)
      {
        free(v65);
      }
    }

    return 1;
  }

  if (qword_1025D4280 != -1)
  {
    sub_10187F764();
  }

  v45 = qword_1025D4288;
  if (os_log_type_enabled(qword_1025D4288, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v45, OS_LOG_TYPE_DEBUG, "Going through with 180 turn.", buf, 2u);
  }

  result = sub_10000A100(121, 2);
  if (result)
  {
    sub_10187FD84();
    return 0;
  }

  return result;
}

uint64_t sub_10026A410()
{
  sub_10000EC00(byte_102656170, "VO2MaxPowerBudgetEstimatorLastExtendedBudgetAllotmentReason");
  __cxa_atexit(&std::string::~string, byte_102656170, dword_100000000);
  qword_102656188 = off_102450420;
  qword_1026561A0 = &qword_102656188;
  __cxa_atexit(sub_1003EE78C, &qword_102656188, dword_100000000);
  qword_1026561A8 = off_1024504B0;
  qword_1026561C0 = &qword_1026561A8;
  __cxa_atexit(sub_1003EE78C, &qword_1026561A8, dword_100000000);
  qword_1026561C8 = off_102450530;
  qword_1026561E0 = &qword_1026561C8;
  __cxa_atexit(sub_1003EE790, &qword_1026561C8, dword_100000000);
  qword_1026561E8 = off_1024505C0;
  qword_102656200 = &qword_1026561E8;

  return __cxa_atexit(sub_1003EE790, &qword_1026561E8, dword_100000000);
}

void sub_10026A564(const char **a1@<X0>, int a2@<W1>, int a3@<W2>, uint64_t a4@<X8>)
{
  sub_10000EC00(a4, "");
  v7 = *a1;
  if (*a1)
  {
    v8 = 0;
    v9 = 0;
    v10 = a3 ^ 1;
    do
    {
      v11 = &a1[6 * v8];
      if (v8)
      {
        std::string::append(a4, ", ", 2uLL);
        v7 = *v11;
      }

      if (*(a4 + 23) >= 0)
      {
        v12 = *(a4 + 23);
      }

      else
      {
        v12 = *(a4 + 8);
      }

      v13 = strlen(v7);
      sub_100070148(&v31, v12 + v13);
      if ((v31.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v14 = &v31;
      }

      else
      {
        v14 = v31.__r_.__value_.__r.__words[0];
      }

      if (v12)
      {
        if (*(a4 + 23) >= 0)
        {
          v15 = a4;
        }

        else
        {
          v15 = *a4;
        }

        memmove(v14, v15, v12);
      }

      v16 = v14 + v12;
      if (v13)
      {
        memmove(v16, v7, v13);
      }

      v16[v13] = 0;
      if (*(a4 + 23) < 0)
      {
        operator delete(*a4);
      }

      *a4 = v31;
      if (a2)
      {
        if (*(a4 + 23) >= 0)
        {
          v17 = *(a4 + 23);
        }

        else
        {
          v17 = *(a4 + 8);
        }

        sub_100070148(&v31, v17 + 1);
        if ((v31.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v18 = &v31;
        }

        else
        {
          v18 = v31.__r_.__value_.__r.__words[0];
        }

        if (v17)
        {
          if (*(a4 + 23) >= 0)
          {
            v19 = a4;
          }

          else
          {
            v19 = *a4;
          }

          memmove(v18, v19, v17);
        }

        *(&v18->__r_.__value_.__l.__data_ + v17) = 32;
        v20 = *(v11 + 2);
        v21 = "INTEGER";
        if (v20 != 1)
        {
          v22 = &off_102463F00;
          v23 = 5;
          do
          {
            v24 = v22;
            if (!--v23)
            {
              break;
            }

            v22 += 2;
          }

          while (*(v24 - 2) != v20);
          v21 = *v24;
        }

        v25 = strlen(v21);
        v26 = std::string::append(&v31, v21, v25);
        v27 = v26->__r_.__value_.__r.__words[0];
        v32[0] = v26->__r_.__value_.__l.__size_;
        *(v32 + 7) = *(&v26->__r_.__value_.__r.__words[1] + 7);
        v28 = HIBYTE(v26->__r_.__value_.__r.__words[2]);
        v26->__r_.__value_.__l.__size_ = 0;
        v26->__r_.__value_.__r.__words[2] = 0;
        v26->__r_.__value_.__r.__words[0] = 0;
        if (*(a4 + 23) < 0)
        {
          operator delete(*a4);
        }

        v29 = v32[0];
        *a4 = v27;
        *(a4 + 8) = v29;
        *(a4 + 15) = *(v32 + 7);
        *(a4 + 23) = v28;
        if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v31.__r_.__value_.__l.__data_);
        }
      }

      if (((v10 | v9) & 1) == 0)
      {
        if (*(v11 + 12) == 1)
        {
          std::string::append(a4, " PRIMARY KEY", 0xCuLL);
          if (*(v11 + 13) == 1)
          {
            std::string::append(a4, " AUTOINCREMENT", 0xEuLL);
          }

          v9 = 1;
        }

        else
        {
          v9 = 0;
        }
      }

      ++v8;
      v7 = a1[6 * v8];
    }

    while (v7);
  }
}

void sub_10026A844(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (*(v15 + 23) < 0)
  {
    operator delete(*v15);
  }

  _Unwind_Resume(exception_object);
}

void sub_10026A880(uint64_t a1, void *lpsrc)
{
  {
    sub_101871CF4();
  }

  sub_1003AA55C(a1, lpsrc);
}

BOOL sub_10026A908(uint64_t a1)
{
  result = sub_10060A6D8(*(a1 + 80), "VO2MaxRetrocomputeBodyMetricsHistory");
  if (result)
  {
    v3 = "startTime";
    v4 = 5;
    v5 = 0;
    v6 = 0;
    v7 = 0;
    sub_100611268(*(a1 + 80), "VO2MaxRetrocomputeBodyMetricsHistory", "startTime", &v3);
  }

  return result;
}

void sub_10026AE38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, char a61)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  sub_10026C504(&a61);
  _Unwind_Resume(a1);
}

uint64_t sub_10026AEE0(uint64_t a1)
{
  result = sub_100099160(a1 + 72);
  if (result)
  {
    sub_1000388D8(*(a1 + 80), "INSERT INTO VO2MaxRetrocomputeBodyMetricsHistory (startTime, algorithmVersion, biologicalSex, age, height, weight) VALUES (?, ?, ?, ?, ?, ?)");
  }

  return result;
}

void sub_10026B018(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_101880BC0();
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10026B030(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (&protocol conformance descriptor for SymmetricKey)
  {
    v4 = &type metadata accessor for SymmetricKey == 0;
  }

  else
  {
    v4 = 1;
  }

  if (v4 || &nominal type descriptor for SymmetricKey == 0 || &type metadata for SymmetricKey == 0 || &type metadata accessor for AES == 0 || &nominal type descriptor for AES == 0 || &type metadata for AES == 0)
  {
    if (qword_1026560D8 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_1003134C0(v10, qword_1026560E0);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(dword_100000000, v11, v12, "decryptData: CryptoKit Frameowrk not loaded. method aborted.", v13, 2u);
    }

    return 0;
  }

  else
  {
    v19 = type metadata accessor for AES.GCM.SealedBox();
    v42 = &v38;
    v38 = *(v19 - 8);
    v39 = v19;
    v20 = *(v38 + 64);
    __chkstk_darwin(v19);
    v21 = &v38 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
    v22 = type metadata accessor for SymmetricKey();
    v41 = &v38;
    v23 = *(v22 - 8);
    __chkstk_darwin(v22);
    v40 = &v38 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
    v25 = sub_1003D6474(&qword_1025D4FB0);
    __chkstk_darwin(v25 - 8);
    v27 = &v38 - v26;
    type metadata accessor for CLMicroLocationKeychain();
    sub_1003D778C(a3, a4, v43);
    if (v44)
    {
      v28 = swift_dynamicCast();
      (*(v23 + 56))(v27, v28 ^ 1u, 1, v22);
      if ((*(v23 + 48))(v27, 1, v22) != 1)
      {
        v29 = v40;
        v30 = (*(v23 + 32))(v40, v27, v22);
        __chkstk_darwin(v30);
        sub_1003D64BC(a1, a2);
        sub_1003D350C(a1, a2);
        v36 = v38;
        v35 = v39;
        (*(v38 + 32))(v21, &v38 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0), v39);
        v37 = static AES.GCM.open(_:using:)();
        (*(v23 + 8))(v29, v22);
        (*(v36 + 8))(v21, v35);
        return v37;
      }
    }

    else
    {
      sub_1003D6658(v43, &qword_1025D4FB8);
      (*(v23 + 56))(v27, 1, 1, v22);
    }

    sub_1003D6658(v27, &qword_1025D4FB0);
    if (qword_1026560D8 != -1)
    {
      swift_once();
    }

    v31 = type metadata accessor for Logger();
    sub_1003134C0(v31, qword_1026560E0);
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(dword_100000000, v32, v33, "Failed to retrieve symmetric key for data decryption", v34, 2u);
    }

    return 0;
  }
}

uint64_t sub_10026B85C()
{
  if (qword_102635EB0)
  {
    (*(*qword_102635EB0 + 8))(qword_102635EB0);
  }

  if (qword_102635EB8)
  {
    (*(*qword_102635EB8 + 8))(qword_102635EB8);
  }

  if (qword_102635EC0)
  {
    (*(*qword_102635EC0 + 8))(qword_102635EC0);
  }

  if (qword_102635EC8)
  {
    (*(*qword_102635EC8 + 8))(qword_102635EC8);
  }

  if (qword_102635ED0)
  {
    (*(*qword_102635ED0 + 8))(qword_102635ED0);
  }

  if (qword_102635ED8)
  {
    (*(*qword_102635ED8 + 8))(qword_102635ED8);
  }

  if (qword_102635EE0)
  {
    (*(*qword_102635EE0 + 8))(qword_102635EE0);
  }

  if (qword_102635EE8)
  {
    (*(*qword_102635EE8 + 8))(qword_102635EE8);
  }

  if (qword_102635EF0)
  {
    (*(*qword_102635EF0 + 8))(qword_102635EF0);
  }

  if (qword_102635EF8)
  {
    (*(*qword_102635EF8 + 8))(qword_102635EF8);
  }

  if (qword_102635F00)
  {
    (*(*qword_102635F00 + 8))(qword_102635F00);
  }

  if (qword_102635F08)
  {
    (*(*qword_102635F08 + 8))(qword_102635F08);
  }

  if (qword_102635F10)
  {
    (*(*qword_102635F10 + 8))(qword_102635F10);
  }

  if (qword_102635F18)
  {
    (*(*qword_102635F18 + 8))(qword_102635F18);
  }

  if (qword_102635F20)
  {
    (*(*qword_102635F20 + 8))(qword_102635F20);
  }

  if (qword_102635F28)
  {
    (*(*qword_102635F28 + 8))(qword_102635F28);
  }

  if (qword_102635F30)
  {
    (*(*qword_102635F30 + 8))(qword_102635F30);
  }

  if (qword_102635F38)
  {
    (*(*qword_102635F38 + 8))(qword_102635F38);
  }

  if (qword_102635F40)
  {
    (*(*qword_102635F40 + 8))(qword_102635F40);
  }

  if (qword_102635F48)
  {
    (*(*qword_102635F48 + 8))(qword_102635F48);
  }

  if (qword_102635F50)
  {
    (*(*qword_102635F50 + 8))(qword_102635F50);
  }

  if (qword_102635F58)
  {
    (*(*qword_102635F58 + 8))(qword_102635F58);
  }

  if (qword_102635F60)
  {
    (*(*qword_102635F60 + 8))(qword_102635F60);
  }

  if (qword_102635F68)
  {
    (*(*qword_102635F68 + 8))(qword_102635F68);
  }

  if (qword_102635F70)
  {
    (*(*qword_102635F70 + 8))(qword_102635F70);
  }

  if (qword_102635F78)
  {
    (*(*qword_102635F78 + 8))(qword_102635F78);
  }

  if (qword_102635F80)
  {
    (*(*qword_102635F80 + 8))(qword_102635F80);
  }

  if (qword_102635F88)
  {
    (*(*qword_102635F88 + 8))(qword_102635F88);
  }

  if (qword_102635F90)
  {
    (*(*qword_102635F90 + 8))(qword_102635F90);
  }

  if (qword_102635F98)
  {
    (*(*qword_102635F98 + 8))(qword_102635F98);
  }

  if (qword_102635FA0)
  {
    (*(*qword_102635FA0 + 8))(qword_102635FA0);
  }

  if (qword_102635FA8)
  {
    (*(*qword_102635FA8 + 8))(qword_102635FA8);
  }

  if (qword_102635FB0)
  {
    (*(*qword_102635FB0 + 8))(qword_102635FB0);
  }

  if (qword_102635FB8)
  {
    (*(*qword_102635FB8 + 8))(qword_102635FB8);
  }

  if (qword_102635FC0)
  {
    (*(*qword_102635FC0 + 8))(qword_102635FC0);
  }

  if (qword_102635FC8)
  {
    (*(*qword_102635FC8 + 8))(qword_102635FC8);
  }

  if (qword_102635FD0)
  {
    (*(*qword_102635FD0 + 8))(qword_102635FD0);
  }

  if (qword_102635FD8)
  {
    (*(*qword_102635FD8 + 8))(qword_102635FD8);
  }

  if (qword_102635FE0)
  {
    (*(*qword_102635FE0 + 8))(qword_102635FE0);
  }

  if (qword_102635FE8)
  {
    (*(*qword_102635FE8 + 8))(qword_102635FE8);
  }

  if (qword_102635FF0)
  {
    (*(*qword_102635FF0 + 8))(qword_102635FF0);
  }

  if (qword_102635FF8)
  {
    (*(*qword_102635FF8 + 8))(qword_102635FF8);
  }

  if (qword_102636000)
  {
    (*(*qword_102636000 + 8))(qword_102636000);
  }

  if (qword_102636008)
  {
    (*(*qword_102636008 + 8))(qword_102636008);
  }

  if (qword_102636010)
  {
    (*(*qword_102636010 + 8))(qword_102636010);
  }

  if (qword_102636018)
  {
    (*(*qword_102636018 + 8))(qword_102636018);
  }

  if (qword_102636020)
  {
    (*(*qword_102636020 + 8))(qword_102636020);
  }

  if (qword_102636028)
  {
    (*(*qword_102636028 + 8))(qword_102636028);
  }

  if (qword_102636030)
  {
    (*(*qword_102636030 + 8))(qword_102636030);
  }

  if (qword_102636038)
  {
    (*(*qword_102636038 + 8))(qword_102636038);
  }

  if (qword_102636040)
  {
    (*(*qword_102636040 + 8))(qword_102636040);
  }

  if (qword_102636048)
  {
    (*(*qword_102636048 + 8))(qword_102636048);
  }

  if (qword_102636050)
  {
    (*(*qword_102636050 + 8))(qword_102636050);
  }

  if (qword_102636058)
  {
    (*(*qword_102636058 + 8))(qword_102636058);
  }

  if (qword_102636060)
  {
    (*(*qword_102636060 + 8))(qword_102636060);
  }

  if (qword_102636068)
  {
    (*(*qword_102636068 + 8))(qword_102636068);
  }

  if (qword_102636070)
  {
    (*(*qword_102636070 + 8))(qword_102636070);
  }

  if (qword_102636078)
  {
    (*(*qword_102636078 + 8))(qword_102636078);
  }

  if (qword_102636080)
  {
    (*(*qword_102636080 + 8))(qword_102636080);
  }

  if (qword_102636088)
  {
    (*(*qword_102636088 + 8))(qword_102636088);
  }

  if (qword_102636090)
  {
    (*(*qword_102636090 + 8))(qword_102636090);
  }

  if (qword_102636098)
  {
    (*(*qword_102636098 + 8))(qword_102636098);
  }

  if (qword_1026360A0)
  {
    (*(*qword_1026360A0 + 8))(qword_1026360A0);
  }

  if (qword_1026360A8)
  {
    (*(*qword_1026360A8 + 8))(qword_1026360A8);
  }

  if (qword_1026360B0)
  {
    (*(*qword_1026360B0 + 8))(qword_1026360B0);
  }

  result = qword_1026360B8;
  if (qword_1026360B8)
  {
    v1 = *(*qword_1026360B8 + 8);

    return v1();
  }

  return result;
}

uint64_t sub_10026C504(uint64_t a1)
{
  *(a1 + 16) = v3;
  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  std::locale::~locale((a1 + 32));
  std::iostream::~basic_iostream();
  std::ios::~ios();
  return a1;
}

void *sub_10026C658()
{
  v16 = 0;
  v17 = 0;
  IOHIDEventGetVendorDefinedData();
  result = sub_10026C864(&v7, 0, 0);
  if (v7 == 2)
  {
    if (qword_1025D41E0 != -1)
    {
      sub_101A60610();
    }

    v1 = qword_1025D41E8;
    if (os_log_type_enabled(qword_1025D41E8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67241984;
      v21 = v8;
      v22 = 1026;
      v23 = v9;
      v24 = 1026;
      v25 = v10;
      v26 = 1026;
      v27 = v11;
      v28 = 1026;
      v29 = v12;
      v30 = 2050;
      v31 = v13;
      v32 = 2050;
      v33 = v14;
      v34 = 1026;
      v35 = v15;
      _os_log_impl(dword_100000000, v1, OS_LOG_TYPE_DEFAULT, "[CLSPUEclipseControl] Suppression Report received shouldSuppress,%{public}d,APAwake,%{public}d,currentState,%{public}hhu,orientation,%{public}hhu,motionType,%{public}hhu,lux,%{public}f,pocketProbability,%{public}f,facedownStatic,%{public}hhu", buf, 0x3Au);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101A60638(&v7);
    }

    v2 = v8;
    TimeStamp = IOHIDEventGetTimeStamp();
    v4 = sub_1000080EC(TimeStamp);
    v18[0] = @"eventTime";
    v19[0] = [NSNumber numberWithDouble:v4];
    v18[1] = @"eventTimeNS";
    [+[NSDate date](NSDate timeIntervalSince1970];
    v5 = [NSNumber numberWithDouble:?];
    v18[2] = @"VOEvent";
    v6 = @"unsuppress";
    if (v2)
    {
      v6 = @"suppress";
    }

    v19[1] = v5;
    v19[2] = v6;
    return sub_10006FFF0([NSDictionary dictionaryWithObjects:v19 forKeys:v18 count:3], "ViewObstructedStateChange");
  }

  return result;
}

void *sub_10026C864(void *__dst, const void *__src, size_t __n)
{
  if (__n)
  {
    v3 = *__src - 1 > 4 ? 0 : qword_101C7BED8[(*__src - 1)];
    if (v3 == __n)
    {
      return memcpy(__dst, __src, __n);
    }
  }

  *__dst = -1;
  return __dst;
}

uint64_t sub_10026C8A8(uint64_t a1)
{
  sub_100011660();
  sub_10001160C();

  return sub_10026C8E8(a1, 0);
}

uint64_t sub_10026C8E8(uint64_t a1, int a2)
{
  sub_10026CE64(v18, "ApplyToHistorical", a1, 107, 300.0);
  v17 = 4;
  strcpy(__p, "none");
  sub_10023B1D0(v18, __p);
  if (v17 < 0)
  {
    operator delete(__p[0]);
  }

  if (*(a1 + 1920))
  {
    if (qword_1025D4210 != -1)
    {
      sub_1018D1768();
    }

    v4 = qword_1025D4218;
    if (os_log_type_enabled(qword_1025D4218, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_INFO, "Begin processing historical events.", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018D1724(buf);
      LOWORD(v19) = 0;
      v12 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "void CLSPU::fetchHistoricalEvents(BOOL)", "%s\n", v12);
      if (v12 != buf)
      {
        free(v12);
      }
    }

    sub_10026D10C(a1, 1);
    v5 = *(a1 + 1920);
    if (a2)
    {
      if (qword_1025D4210 != -1)
      {
        sub_1018D1768();
      }

      v6 = qword_1025D4218;
      if (os_log_type_enabled(qword_1025D4218, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEFAULT, "Clearing historical event buffer", buf, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1018D1724(buf);
        LOWORD(v19) = 0;
        v15 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "void CLSPU::fetchHistoricalEvents(BOOL)", "%s\n", v15);
        if (v15 != buf)
        {
          free(v15);
        }
      }

      v7 = (*(*v5 + 96))(v5, nullsub_186, a1);
    }

    else
    {
      v7 = (*(*v5 + 96))(*(a1 + 1920), sub_10026E674, a1);
    }

    v8 = v7;
    if (v7)
    {
      if (qword_1025D4210 != -1)
      {
        sub_1018D1768();
      }

      v9 = qword_1025D4218;
      if (os_log_type_enabled(qword_1025D4218, OS_LOG_TYPE_FAULT))
      {
        *buf = 67109120;
        v22 = v8;
        _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_FAULT, "ApplyToHistorical did not complete successfully.  Status: 0x%x", buf, 8u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_1018D1724(buf);
        v19 = 67109120;
        v20 = v8;
        v14 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 0, "void CLSPU::fetchHistoricalEvents(BOOL)", "%s\n", v14);
        if (v14 != buf)
        {
          free(v14);
        }
      }
    }

    if (qword_1025D4210 != -1)
    {
      sub_1018D1768();
    }

    v10 = qword_1025D4218;
    if (os_log_type_enabled(qword_1025D4218, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_INFO, "Finish processing historical events.", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018D1724(buf);
      LOWORD(v19) = 0;
      v13 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "void CLSPU::fetchHistoricalEvents(BOOL)", "%s\n", v13);
      if (v13 != buf)
      {
        free(v13);
      }
    }

    sub_10026D10C(a1, 0);
  }

  sub_10026ED10(v18);
  return sub_10026F190(v18);
}

uint64_t sub_10026CE64(uint64_t a1, uint64_t a2, uint64_t a3, int a4, double a5)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = off_1024AF120;
  *(a1 + 24) = a5 + 60.0;
  *(a1 + 32) = 0;
  *(a1 + 40) = a4;
  *(a1 + 48) = 0;
  *(a1 + 16) = CFStringCreateWithFormat(0, 0, @"%s.%lx", a2, a3);
  return a1;
}

void sub_10026CEE8(uint64_t a1, int a2, int a3, uint64_t a4)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a1 + 32) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_1018E68F8();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v15 = 1;
    v8 = _os_activity_create(dword_100000000, "CL: CLDaemonStatus::onPowerNotification", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v8, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_1018E690C();
    }

    v9 = qword_1025D47F8;
    if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68289538;
      v17 = 0;
      v18 = 2082;
      v19 = "";
      v20 = 2082;
      v21 = "activity";
      v22 = 2050;
      v23 = a1;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLDaemonStatus::onPowerNotification, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v15 = 0;
  }

  v10 = [*(a1 + 32) silo];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10026DAD0;
  v11[3] = &unk_10245D2F0;
  v12 = a2;
  v13 = a3;
  v11[4] = a1;
  v11[5] = a4;
  [v10 sync:v11];
  if (v15 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

CLOSTransaction *sub_10026D10C(uint64_t a1, int a2)
{
  if (a2)
  {
    sub_10026D1A4(a1);
    *(a1 + 652) = 1;
    v3 = *(a1 + 656);
    if (v3)
    {
    }

    result = [[CLOSTransaction alloc] initWithDescription:"CLMotionCoprocessor.fHistoricalPacketsTransaction"];
    *(a1 + 656) = result;
  }

  else
  {
    *(a1 + 652) = 0;
    sub_100012B0C(a1);

    *(a1 + 656) = 0;

    return sub_10026E678(a1, 1);
  }

  return result;
}

void sub_10026D1A4(uint64_t a1)
{
  times = mach_get_times();
  if (times)
  {
    v3 = times;
    if (qword_1025D4200 != -1)
    {
      sub_101AD9CD8();
    }

    v4 = qword_1025D4208;
    if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      LODWORD(v11) = v3;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_ERROR, "Unable to update fMachToWallOffset! %d", buf, 8u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_101AD9D00(v3);
    }
  }

  else
  {
    v5 = sub_1000080EC(0);
    *(a1 + 664) = 0 + 0 * 0.000000001 - kCFAbsoluteTimeIntervalSince1970 - v5;
    if (qword_1025D4210 != -1)
    {
      sub_101AD9DF8();
    }

    v6 = qword_1025D4218;
    if (os_log_type_enabled(qword_1025D4218, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 664);
      v8 = *(a1 + 352);
      *buf = 134218752;
      v11 = v7;
      v12 = 2048;
      v13 = v5;
      v14 = 2048;
      v15 = 0 + 0 * 0.000000001 - kCFAbsoluteTimeIntervalSince1970;
      v16 = 2048;
      v17 = v8;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEFAULT, "Updating fMachToWallOffset %f, mach time %f, wall time %f, iohidtime %f", buf, 0x2Au);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4210 != -1)
      {
        sub_101AD9DF8();
      }

      v9 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "void CLMotionCoprocessor::updateMachToWallOffset()", "%s\n", v9);
      if (v9 != buf)
      {
        free(v9);
      }
    }
  }
}

void sub_10026D45C(uint64_t a1, uint64_t a2, unsigned int a3, intptr_t a4)
{
  if (qword_1025D4870 != -1)
  {
    sub_1018E669C();
  }

  v7 = qword_1025D4878;
  if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 232);
    *buf = 68289538;
    v24 = 0;
    v25 = 2082;
    v26 = "";
    v27 = 2050;
    v28 = a3;
    v29 = 2050;
    v30 = v8;
    _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:received IOKit notification, sleepNotification:%{public, location:IOMessage}lld, keepAliveClientCount:%{public}lu}", buf, 0x26u);
  }

  HIDWORD(v10) = a3 + 536870288;
  LODWORD(v10) = a3 + 536870288;
  v9 = v10 >> 4;
  if (v9 <= 1)
  {
    if (v9)
    {
      if (v9 != 1)
      {
        return;
      }

      if (qword_1025D4870 != -1)
      {
        sub_1018E688C();
      }

      v14 = qword_1025D4878;
      if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_DEBUG, "system entering sleep", buf, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1018E7C54();
      }

      *buf = 2;
      (*(*a1 + 144))(a1, buf, 0, 0xFFFFFFFFLL);
      *(a1 + 248) = 1;
      if (*(a1 + 264))
      {
        if (qword_1025D4870 != -1)
        {
          sub_1018E688C();
        }

        v15 = qword_1025D4878;
        if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_DEBUG, "Sleep transaction grace timer still pending on will sleep", buf, 2u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_1018E7D38();
        }

        [*(a1 + 264) invalidate];

        *(a1 + 264) = 0;
      }

      v16 = [[CLOSTransaction alloc] initWithDescription:"CLDaemonStatus.sleeping"];
      if (*(a1 + 256))
      {
        if (qword_1025D4870 != -1)
        {
          sub_1018E688C();
        }

        v17 = qword_1025D4878;
        if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_impl(dword_100000000, v17, OS_LOG_TYPE_DEBUG, "Already holding sleep state transaction on will sleep", buf, 2u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_1018E7E1C();
        }
      }

      *(a1 + 256) = v16;
      *(a1 + 272) = a4;
      if (*(a1 + 232))
      {
        return;
      }
    }

    else
    {
      if (qword_1025D4870 != -1)
      {
        sub_1018E688C();
      }

      v21 = qword_1025D4878;
      if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v21, OS_LOG_TYPE_DEBUG, "system can sleep request", buf, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1018E7F00();
      }
    }

    IOAllowPowerChange(*(a1 + 124), a4);
    return;
  }

  if (v9 != 2)
  {
    if (v9 != 11)
    {
      if (v9 == 9)
      {
        if (qword_1025D4870 != -1)
        {
          sub_1018E688C();
        }

        v11 = qword_1025D4878;
        if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEBUG, "system has powered on", buf, 2u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_1018E7FE4();
        }

        if (!*(a1 + 256))
        {
          if (qword_1025D4870 != -1)
          {
            sub_1018E688C();
          }

          v12 = qword_1025D4878;
          if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_DEFAULT, "#warning No sleep state tranaction on has powered on", buf, 2u);
          }

          if (sub_10000A100(121, 2))
          {
            sub_1018E80C8();
          }
        }

        v13 = [*(a1 + 40) newTimer];
        *(a1 + 264) = v13;
        v22[0] = _NSConcreteStackBlock;
        v22[1] = 3221225472;
        v22[2] = sub_10061EA48;
        v22[3] = &unk_102449A78;
        v22[4] = a1;
        [v13 setHandler:v22];
        [*(a1 + 264) setNextFireDelay:5.0];
      }

      return;
    }

    *(a1 + 280) = CFAbsoluteTimeGetCurrent();
    if (qword_1025D4870 != -1)
    {
      sub_1018E688C();
    }

    v18 = qword_1025D4878;
    if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v18, OS_LOG_TYPE_DEBUG, "system will power on", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018E79A8();
    }
  }

  if (qword_1025D4870 != -1)
  {
    sub_1018E688C();
  }

  v19 = qword_1025D4878;
  if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v19, OS_LOG_TYPE_DEBUG, "system exiting sleep", buf, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018E7A8C();
  }

  *buf = 3;
  (*(*a1 + 144))(a1, buf, 0, 0xFFFFFFFFLL);
  *(a1 + 248) = 0;
  if (a3 == -536870256)
  {
    if (!*(a1 + 256))
    {
      if (qword_1025D4870 != -1)
      {
        sub_1018E688C();
      }

      v20 = qword_1025D4878;
      if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v20, OS_LOG_TYPE_DEFAULT, "#warning No sleep state tranaction on will not sleep", buf, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1018E7B70();
      }
    }

    *(a1 + 256) = 0;
  }
}

void sub_10026DAE0(uint64_t a1, int *a2, uint64_t a3, int a4)
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
      sub_10026E038();
    }
  }
}

void sub_10026DFB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_101865570(va);
  sub_101864718(v9 - 144);
  _Unwind_Resume(a1);
}

id sub_10026E0EC(void *a1)
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  return sub_10026EA0C(a1);
}

void sub_10026E14C(void *a1, int *a2, void *a3)
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
        v10 = sub_10026E0EC(a3);
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
              sub_10026EC10(a1, &v36, &v37, a3);
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
                sub_1018E690C();
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
                  sub_1018E690C();
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
                sub_100152C7C("Generic", 1, 0, 0, "void CLNotifier<CLDaemonStatus_Type::Notification, CLDaemonStatus_Type::NotificationData, char, char>::invokeClientsWithData(const Notification_T &, CLCppContainer *) [Notification_T = CLDaemonStatus_Type::Notification, NotificationData_T = CLDaemonStatus_Type::NotificationData, NotificationInfo_T = char, RegistrationInfo_T = char]", "%s\n", v35);
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

void sub_10026E508(uint64_t a1)
{
  if (sub_10026E634(*(a1 + 1936)))
  {
    if (qword_1025D4210 != -1)
    {
      sub_1018D1710();
    }

    v2 = qword_1025D4218;
    if (os_log_type_enabled(qword_1025D4218, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEBUG, "Processing historical event", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018D26D0();
    }

    sub_10026E634(*(a1 + 1936));
    sub_10001133C();
  }

  else
  {
    if (qword_1025D4210 != -1)
    {
      sub_1018D1710();
    }

    v3 = qword_1025D4218;
    if (os_log_type_enabled(qword_1025D4218, OS_LOG_TYPE_DEBUG))
    {
      *v4 = 0;
      _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEBUG, "No service ref, did not process historical event", v4, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018D27B4();
    }
  }
}

uint64_t sub_10026E634(uint64_t a1)
{
  Current = CFRunLoopGetCurrent();
  sub_100011660();
  if (Current != sub_10018D3EC())
  {
    sub_101997EA4();
  }

  return *(a1 + 24);
}

uint64_t sub_10026E678(uint64_t a1, uint64_t a2)
{
  v4 = +[NSMutableDictionary dictionary];
  v5 = 1872;
  if (a2)
  {
    v5 = 1832;
  }

  v6 = (a1 + v5);
  for (i = *(a1 + v5 + 16); i; i = *i)
  {
    v8 = [NSNumber numberWithUnsignedLong:i[3]];
    v9 = @"Unknown";
    if ((*(i + 16) + 80) <= 0xB0u)
    {
      v9 = off_1024C1208[(*(i + 16) + 80)];
    }

    [v4 setObject:v8 forKeyedSubscript:v9];
  }

  sub_1006E6C7C(v6);
  [v4 setObject:+[NSNumber numberWithBool:](NSNumber forKeyedSubscript:{"numberWithBool:", a2), @"IsHistorical"}];
  if (a2)
  {
    v19 = 256;
    if (*(a1 + 672))
    {
      if (!sysctlbyname("kern.wakereason", __s1, &v19, 0, 0))
      {
        snprintf(__str, 0x20uLL, "spu_queue_overflow_ep%u", *(a1 + 672));
        v10 = strstr(__s1, __str);
        if (v10)
        {
          v11 = v10[strlen(__str)];
          if (v11 < 0 || (_DefaultRuneLocale.__runetype[v11] & 0x400) == 0)
          {
            v12 = sub_100F60E6C(1);
            v13 = sub_100F60E6C(0);
            v14 = v13;
            if (v12 <= v13)
            {
              v16 = v13 - v12;
            }

            else
            {
              if (qword_1025D4210 != -1)
              {
                sub_101AD9DF8();
              }

              v15 = qword_1025D4218;
              if (os_log_type_enabled(qword_1025D4218, OS_LOG_TYPE_ERROR))
              {
                *buf = 134218240;
                v21 = *&v12;
                v22 = 2048;
                v23 = v14;
                _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_ERROR, "kern.sleeptime is greater than kern.waketime: %f > %f", buf, 0x16u);
              }

              v16 = 0.0;
              if (sub_10000A100(121, 0))
              {
                sub_101ADEC8C(v12, v14);
              }
            }

            [v4 setObject:+[NSNumber numberWithInt:](NSNumber forKeyedSubscript:{"numberWithInt:", (v16 * 1000.0)), @"SleepDuration"}];
            if (qword_1025D4210 != -1)
            {
              sub_101AD9DF8();
            }

            v17 = qword_1025D4218;
            if (os_log_type_enabled(qword_1025D4218, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136446466;
              v21 = __str;
              v22 = 2050;
              v23 = v16;
              _os_log_impl(dword_100000000, v17, OS_LOG_TYPE_DEFAULT, "wakeReason,%{public}s,sleepDuration,%{public}f", buf, 0x16u);
            }

            if (sub_10000A100(121, 2))
            {
              sub_101ADED9C();
            }
          }
        }
      }
    }
  }

  [NSDictionary dictionaryWithDictionary:v4];
  return AnalyticsSendEventLazy();
}

id sub_10026EA0C(void *a1)
{
  v2 = [a1 binaryVersion];
  [a1 sizeOfType];
  if (v2)
  {
    if (getenv("_INTERSILO_UNIT_TEST"))
    {
      if (qword_1025D41A0 != -1)
      {
        sub_1018E8A8C();
      }

      v3 = qword_1025D41A8;
      if (os_log_type_enabled(qword_1025D41A8, OS_LOG_TYPE_ERROR))
      {
        v6 = 134218498;
        v7 = v2;
        v8 = 2048;
        v9 = 0;
        v10 = 2080;
        v11 = 0x8000000101C819F0 & 0x7FFFFFFFFFFFFFFFLL;
        _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_ERROR, "Mismatch of versions between encoded (%llu) and decoded (%llu) objects! This is possibly because the version has changed on one side and possibly broken ABI compatibility. Please update your type for %s accordingly", &v6, 0x20u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_1018E8AA0();
      }
    }

    else
    {
      if (qword_1025D41A0 != -1)
      {
        sub_1018E8A8C();
      }

      v5 = qword_1025D41A8;
      if (os_log_type_enabled(qword_1025D41A8, OS_LOG_TYPE_FAULT))
      {
        v6 = 134218498;
        v7 = v2;
        v8 = 2048;
        v9 = 0;
        v10 = 2080;
        v11 = 0x8000000101C819F0 & 0x7FFFFFFFFFFFFFFFLL;
        _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_FAULT, "Mismatch of versions between encoded (%llu) and decoded (%llu) objects! This is possibly because the version has changed on one side and possibly broken ABI compatibility. Please update your type for %s accordingly", &v6, 0x20u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_1018E8BA8();
      }
    }

    return 0;
  }

  else
  {

    return [a1 cppObjectPtr];
  }
}

_BYTE *sub_10026EC10(_BYTE *result, uint64_t a2, uint64_t *a3, void *a4)
{
  if ((result[108] & 1) == 0)
  {
    v7 = result;
    v8 = *(*a2 + 32);
    LODWORD(v12) = *(*a3 + 32);
    v9 = sub_10026E0EC(a4);
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

uint64_t sub_10026ED10(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = __OFSUB__(v1, 1);
  v3 = v1 - 1;
  if (v3 < 0 != v2)
  {
    return 0;
  }

  *(a1 + 8) = v3;
  if (v3)
  {
    if (qword_1025D48A0 != -1)
    {
      sub_101A806B4();
    }

    v5 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
    {
      v6 = *(a1 + 8);
      sub_1000238CC(*(a1 + 16), __p);
      v7 = v24 >= 0 ? __p : __p[0];
      *buf = 67109378;
      *&buf[4] = v6;
      *&buf[8] = 2080;
      *&buf[10] = v7;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEBUG, "Release power assertion, dec ref, %d, %s", buf, 0x12u);
      if (v24 < 0)
      {
        operator delete(__p[0]);
      }
    }

    result = sub_10000A100(121, 2);
    if (result)
    {
      bzero(__p, 0x65CuLL);
      if (qword_1025D48A0 != -1)
      {
        sub_101A8068C();
      }

      v9 = *(a1 + 8);
      sub_1000238CC(*(a1 + 16), buf);
      if (v20 >= 0)
      {
        v10 = buf;
      }

      else
      {
        v10 = *buf;
      }

      v21 = 67109378;
      *v22 = v9;
      *&v22[4] = 2080;
      *&v22[6] = v10;
      v11 = _os_log_send_and_compose_impl();
      if (v20 < 0)
      {
        operator delete(*buf);
      }

      sub_100152C7C("Generic", 1, 0, 2, "BOOL CLPowerAssertion::releasePowerAssertion()", "%s\n", v11);
      if (v11 != __p)
      {
        free(v11);
      }

      return 0;
    }
  }

  else
  {
    IOPMAssertionRelease(*(a1 + 12));
    *(a1 + 12) = 0;

    *(a1 + 48) = 0;
    Current = CFAbsoluteTimeGetCurrent();
    v13 = *(a1 + 32);
    *(a1 + 32) = 0;
    if (qword_1025D48A0 != -1)
    {
      sub_101A806B4();
    }

    v14 = Current - v13;
    v15 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
    {
      sub_1000238CC(*(a1 + 16), __p);
      v16 = v24 >= 0 ? __p : __p[0];
      *buf = 136315394;
      *&buf[4] = v16;
      *&buf[12] = 2048;
      *&buf[14] = v14;
      _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_DEBUG, "Release power assertion, %s, heldFor, %.2lf", buf, 0x16u);
      if (v24 < 0)
      {
        operator delete(__p[0]);
      }
    }

    if (sub_10000A100(121, 2))
    {
      bzero(__p, 0x65CuLL);
      if (qword_1025D48A0 != -1)
      {
        sub_101A8068C();
      }

      sub_1000238CC(*(a1 + 16), buf);
      if (v20 >= 0)
      {
        v17 = buf;
      }

      else
      {
        v17 = *buf;
      }

      v21 = 136315394;
      *v22 = v17;
      *&v22[8] = 2048;
      *&v22[10] = v14;
      v18 = _os_log_send_and_compose_impl();
      if (v20 < 0)
      {
        operator delete(*buf);
      }

      sub_100152C7C("Generic", 1, 0, 2, "BOOL CLPowerAssertion::releasePowerAssertion()", "%s\n", v18);
      if (v18 != __p)
      {
        free(v18);
      }
    }

    return 1;
  }

  return result;
}

uint64_t sub_10026F120(uint64_t a1)
{
  *a1 = off_1024AF120;
  v2 = *(a1 + 12);
  if (v2)
  {
    IOPMAssertionRelease(v2);
    *(a1 + 12) = 0;
  }

  v3 = *(a1 + 16);
  if (v3)
  {
    CFRelease(v3);
    *(a1 + 16) = 0;
  }

  *(a1 + 48) = 0;
  return a1;
}

uint64_t sub_10026F194(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = sub_100099160(*(v1 + 160) + 72);
  if (result)
  {
    v3 = *(v1 + 160);

    return sub_10026F1E8(v3, 1000);
  }

  return result;
}

uint64_t sub_10026F1E8(uint64_t a1, uint64_t a2)
{
  v5 = a1 + 112;
  v4 = *(a1 + 112);
  v8[2] = (a1 + 112);
  (*(v4 + 16))(a1 + 112);
  v9 = 256;
  sub_10000FF38(v8, "CLSensorRecorderDb::reduceFreePages", 0);
  sub_100144A84(*(a1 + 80));
  v6 = sub_1001B16EC(*(a1 + 80), a2);
  sub_1001454E0(*(a1 + 80));
  sub_10001A420(v8);
  (*(*v5 + 24))(v5);
  return v6;
}

void sub_10026F2C0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, id);
  v5 = va_arg(va1, void);
  sub_10001A420(va);
  sub_1017EC98C(va1);
  _Unwind_Resume(a1);
}

id sub_10026F2E8(uint64_t a1, int a2, void *a3)
{
  result = sub_10026E0EC(a3);
  if (result)
  {
    v6 = a2;
    return (*(a1 + 24))(0, &v6, result, *(a1 + 32));
  }

  return result;
}

void sub_10026F340(uint64_t a1, int *a2, _BYTE *a3, uint64_t a4)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a4 + 1800) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_1017702AC();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v11 = 1;
    v8 = _os_activity_create(dword_100000000, "CL: CLGnssDaemonDevice::onStatusNotification", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v8, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_1017702C0();
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
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLGnssDaemonDevice::onStatusNotification, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v11 = 0;
  }

  sub_10026F5B0(a4, v7, a2, a3);
  if (v11 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

uint64_t sub_10026F50C(uint64_t a1)
{
  if (qword_1025D4650 != -1)
  {
    sub_1002981B4();
  }

  v2 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_INFO, "#gpsd,onWake", v4, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101778830();
  }

  return sub_10026F7AC(a1, 3);
}

void sub_10026F5B0(uint64_t a1, uint64_t a2, int *a3, _BYTE *a4)
{
  v5 = *a3;
  if (*a3 == 8)
  {
    *(a1 + 1723) = *a4;
    if (qword_1025D4650 != -1)
    {
      sub_1002981B4();
    }

    v6 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 1723);
      v11 = 67240192;
      v12 = v7;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEFAULT, "#gpsd,modemFlightMode,%{public}d", &v11, 8u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10177857C((a1 + 1723));
    }
  }

  else if (v5 == 3)
  {

    sub_10026F50C(a1);
  }

  else if (v5 == 2)
  {

    sub_10176A9A0(a1);
  }

  else
  {
    if (qword_1025D4650 != -1)
    {
      sub_1002981B4();
    }

    v9 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *a3;
      v11 = 67240192;
      v12 = v10;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEFAULT, "#gpsd,#Warning,Unhandled notification %{public}d", &v11, 8u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101778668(a3);
    }
  }
}

uint64_t sub_10026F7AC(uint64_t a1, int a2)
{
  v3 = a2;
  v4 = &v3;
  result = sub_10026F81C(a1 + 1368, &v3)[8];
  if (result)
  {
    return (*(*result + 48))(result);
  }

  return result;
}

uint64_t *sub_10026F81C(uint64_t a1, int *a2)
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

uint64_t sub_10026F90C(uint64_t a1)
{
  if (qword_1025D4650 != -1)
  {
    sub_10194117C();
  }

  v2 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_INFO, "CLGnssController::handleApWake", v4, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101943254();
  }

  *(a1 + 1224) = 0;
  return sub_1001BF630(a1 + 2576, 7);
}

void sub_10026F9BC(uint64_t a1, int *a2, unsigned __int8 *a3, uint64_t a4)
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
    v8 = _os_activity_create(dword_100000000, "CL: CLFenceMonitorNotifier::onStatusNotification", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
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
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLFenceMonitorNotifier::onStatusNotification, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v11 = 0;
  }

  sub_10026FB88(a4, v7, a2, a3);
  if (v11 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

void sub_10026FB88(uint64_t a1, uint64_t a2, int *a3, unsigned __int8 *a4)
{
  Current = CFAbsoluteTimeGetCurrent();
  sub_10026FC2C(a1 + 120, a3, a4, Current);
  if (*(a1 + 3032))
  {
    sub_10000AED0(v8);
    sub_100270614(a3, a4, v8, Current);
    sub_10021CB90(*(a1 + 3032));
    sub_10000CE1C(v8);
  }
}

void sub_10026FC18(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10000CE1C(va);
  _Unwind_Resume(a1);
}

void sub_10026FC2C(uint64_t a1, int *a2, unsigned __int8 *a3, double a4)
{
  v43 = a4;
  v8 = *a2;
  if (*a2 <= 6)
  {
    switch(v8)
    {
      case 2:
        if (qword_1025D4640 != -1)
        {
          sub_101A4C9EC();
        }

        v21 = off_1025D4648;
        if (os_log_type_enabled(off_1025D4648, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_impl(dword_100000000, v21, OS_LOG_TYPE_DEBUG, "Fence: Device is about to go to sleep", buf, 2u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_101A4FE4C();
        }

        *(a1 + 622) = 1;
        *(a1 + 1664) = a4;
        *(a1 + 1648) = 1;
        *(a1 + 152) = *(a1 + 144);
        return;
      case 3:
        if (*(a1 + 621) == 1 && *(a1 + 622) == 1)
        {
          if (qword_1025D4640 != -1)
          {
            sub_101A4C9EC();
          }

          v34 = off_1025D4648;
          if (os_log_type_enabled(off_1025D4648, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(dword_100000000, v34, OS_LOG_TYPE_INFO, "Fence: Device woke; sending trigger", buf, 2u);
          }

          if (sub_10000A100(121, 2))
          {
            sub_101A4FF30();
          }

          (*(*a1 + 96))(a1, 2, 1, a4);
        }

        sub_100270604(a1 + 1312);
        *(a1 + 622) = 0;
        *(a1 + 1656) = a4;
        return;
      case 6:
        *(a1 + 444) = *(a3 + 1);
        sub_100CD3E0C((a1 + 904), a3, a4);
        v10 = *(a3 + 1);
        if (*a3 != 2 || v10 == 2)
        {
          if (*a3 != 2 && v10 == 2)
          {
            *(a1 + 1672) = a4;
          }
        }

        else
        {
          *(a1 + 1680) = a4;
        }

        return;
    }

LABEL_38:
    if (qword_1025D4640 != -1)
    {
      sub_101A4C9EC();
    }

    v22 = off_1025D4648;
    if (os_log_type_enabled(off_1025D4648, OS_LOG_TYPE_DEFAULT))
    {
      v23 = *a2;
      *buf = 67240192;
      *&buf[4] = v23;
      _os_log_impl(dword_100000000, v22, OS_LOG_TYPE_DEFAULT, "#Warning Fence: unknown notification, %{public}d", buf, 8u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101A50014(a2);
    }

    return;
  }

  if (v8 > 14)
  {
    if (v8 == 15)
    {
      if (qword_1025D4640 != -1)
      {
        sub_101A4C9EC();
      }

      v31 = off_1025D4648;
      if (os_log_type_enabled(off_1025D4648, OS_LOG_TYPE_DEFAULT))
      {
        v32 = *(a1 + 729);
        v33 = *a3;
        *buf = 67109376;
        *&buf[4] = v32;
        *&buf[8] = 1024;
        *&buf[10] = v33;
        _os_log_impl(dword_100000000, v31, OS_LOG_TYPE_DEFAULT, "Fence: got kNotificationBatterySaverMode, wasEnabled, %d, isEnabled, %d", buf, 0xEu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101A4FB2C();
      }

      *(a1 + 729) = *a3;
      return;
    }

    if (v8 == 16)
    {
      v11 = *(a1 + 612);
      v12 = (*(**(a1 + 1768) + 16))(*(a1 + 1768));
      sub_100E263D4((a1 + 1312), v11, v12, *(a1 + 728), (a1 + 240));
      if (*(a1 + 1874) == 1)
      {
        v41 = 0;
        v39 = 0u;
        v40 = 0u;
        v38 = 0u;
        v42 = -1;
        sub_100E27374(a1 + 1312, &v38);
        sub_100E27390(a1 + 1312);
        v13 = v38;
        v14 = *(&v38 + 1) + v38;
        if (*(&v38 + 1) + v38)
        {
          v36 = v39;
          v15 = v40;
          if (qword_1025D4640 != -1)
          {
            sub_101A4C980();
          }

          *&v16 = v13 * 100.0;
          v37 = vcvtq_u64_f64(vdivq_f64(vdupq_lane_s64(v16, 0), vcvtq_f64_u64(v36)));
          v17 = (*&v16 / v14);
          v18 = (*&v16 / v15);
          v19 = off_1025D4648;
          if (os_log_type_enabled(off_1025D4648, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 68291587;
            *&buf[8] = 2082;
            *&buf[10] = "";
            v45 = 2049;
            *v46 = v38;
            *&v46[8] = 2049;
            v47 = *(&v38 + 1);
            v48 = 2049;
            v49 = v40;
            v50 = 2049;
            v51 = v39.i64[0];
            v52 = 2049;
            v53 = v39.i64[1];
            v54 = 2049;
            v55 = v14;
            v56 = 2049;
            v57 = v18;
            v58 = 2049;
            v59 = v37.i64[0];
            v60 = 2049;
            v61 = v37.i64[1];
            v62 = 2049;
            v63 = v17;
            _os_log_impl(dword_100000000, v19, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:FenceMetric, heartbeat, MiLo,, homeLoiExitsRejectedByMiLo:%{private}lld, homeLoiExitsNotRejectedByMiLo:%{private}lld, totalFenceExits:%{private}lld, totalHomeLoiExits:%{private}lld, totalHomeLoiExitsWithWifiFix:%{private}lld, totalHomeLoiExitsWithMiLo:%{private}lld, homeLoiExitsRejectedByMiLoToAllFenceExitsPercentage:%{private}lld, homeLoiExitsRejectedByMiLoToAllHomeLoiExitsPercentage:%{private}lld, homeLoiExitsRejectedByMiLoToAllHomeLoiExitsWithWifiFixPercentage:%{private}lld, homeLoiExitsRejectedByMiLoToAllHomeLoiExitsWithMiLoEventPercentage:%{private}lld}", buf, 0x76u);
          }

          if (sub_100E26220((a1 + 1312)))
          {
            AnalyticsSendEventLazy();
          }
        }

        if (v39.i64[0] && sub_100E26220((a1 + 1312)))
        {
          if (qword_1025D4640 != -1)
          {
            sub_101A4C980();
          }

          v20 = off_1025D4648;
          if (os_log_type_enabled(off_1025D4648, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 68289283;
            *&buf[4] = 0;
            *&buf[8] = 2082;
            *&buf[10] = "";
            v45 = 1025;
            *v46 = v14 != 0;
            _os_log_impl(dword_100000000, v20, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:FenceMetric, heartbeat, MiLo,, isMiLoUsedInHomeLoiExit:%{private}hhd}", buf, 0x18u);
          }

          AnalyticsSendEventLazy();
        }
      }

      return;
    }

    goto LABEL_38;
  }

  if (v8 != 7)
  {
    if (v8 == 8)
    {
      v9 = *a3;

      sub_100CBAA84(a1, v9, a4);
      return;
    }

    goto LABEL_38;
  }

  if (qword_1025D4640 != -1)
  {
    sub_101A4C9EC();
  }

  v24 = off_1025D4648;
  if (os_log_type_enabled(off_1025D4648, OS_LOG_TYPE_INFO))
  {
    v25 = *a3;
    v26 = a3[8];
    v27 = a3[9];
    v28 = a3[16];
    *buf = 134284289;
    *&buf[4] = v25;
    *&buf[12] = 1025;
    *&buf[14] = v26;
    v45 = 1025;
    *v46 = v27;
    *&v46[4] = 1025;
    *&v46[6] = v28;
    _os_log_impl(dword_100000000, v24, OS_LOG_TYPE_INFO, "Fence: Got kNotificationBattery, level, %{private}lf, charged, %{private}d, connected, %{private}d, wasConnected, %{private}d", buf, 0x1Eu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101A4FC3C(a3);
  }

  v29 = a3[9];
  *(a1 + 1873) = v29;
  if (*(a1 + 753) == 1)
  {
    if (a3[16] != v29)
    {
      *(a1 + 872) = a4;
      (*(*a1 + 96))(a1, 3, 1, a4);
      sub_100CBC5F8(a1, "kNotificationBattery", 1, &v43);
      sub_100229878((a1 + 48), buf);
      if (*buf)
      {
        ++*(*buf + 172);
      }

      v30 = 1712;
      if (*(a1 + 1873))
      {
        v30 = 1704;
      }

      *(a1 + v30) = a4;
      if (*&buf[8])
      {
        sub_100008080(*&buf[8]);
      }
    }
  }

  else
  {
    if (qword_1025D4640 != -1)
    {
      sub_101A4C980();
    }

    v35 = off_1025D4648;
    if (os_log_type_enabled(off_1025D4648, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v35, OS_LOG_TYPE_DEBUG, "Fence: tether triggers are disabled", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101A4FD68();
    }
  }
}

void sub_10027053C(uint64_t a1, uint64_t a2, char a3, double a4)
{
  *(a1 + 640) |= a3;
  *(a1 + 776) = a4;
  if (sub_10021D1B8(a1))
  {
    sub_100229878((a1 + 48), &v7);
    if (v7)
    {
      ++*(v7 + 116);
    }

    (*(**(a1 + 1768) + 112))(*(a1 + 1768), a2, *(a1 + 768));
    *(a1 + 1744) = a4;
    if (v8)
    {
      sub_100008080(v8);
    }
  }
}

void sub_1002705EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100008080(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_100270614(int *a1, char *a2, uint64_t a3, double a4)
{
  *(a3 + 52) |= 1u;
  v4 = *(a3 + 32);
  if (!v4)
  {
    operator new();
  }

  *(v4 + 44) |= 1u;
  *(v4 + 8) = a4;
  *(a3 + 52) |= 2u;
  v5 = *(a3 + 40);
  if (!v5)
  {
    operator new();
  }

  *(v5 + 492) |= 0x800u;
  v6 = *(v5 + 352);
  if (!v6)
  {
    operator new();
  }

  *(v6 + 200) |= 0x20u;
  v7 = *(v6 + 40);
  if (!v7)
  {
    operator new();
  }

  sub_1002707C4(a1, a2, v7);
}

void *sub_1002707A0(void *result)
{
  *result = &off_1024B3B38;
  result[1] = 0;
  result[2] = 0;
  result[3] = 0;
  return result;
}

void sub_1002707C4(int *a1, char *a2, uint64_t a3)
{
  v6 = sub_100272EEC(a1);
  if (!sub_100272FE4(v6))
  {
    sub_101A9235C();
  }

  v7 = *(a3 + 28);
  *(a3 + 28) = v7 | 2;
  *(a3 + 12) = v6;
  v8 = *a1;
  if (*a1 > 9)
  {
    if (v8 > 13)
    {
      if ((v8 - 16) < 4)
      {
        return;
      }

      if (v8 == 14)
      {
        *(a3 + 28) = v7 | 6;
        v25 = *(a3 + 16);
        if (!v25)
        {
          operator new();
        }

        v26 = *a2;
        *(v25 + 44) |= 0x100u;
        *(v25 + 36) = v26;
        return;
      }

      if (v8 == 15)
      {
        *(a3 + 28) = v7 | 6;
        v11 = *(a3 + 16);
        if (!v11)
        {
          operator new();
        }

        v12 = *a2;
        *(v11 + 44) |= 0x20u;
        *(v11 + 27) = v12;
        return;
      }
    }

    else
    {
      if (v8 > 11)
      {
        if (v8 != 12)
        {
          *(a3 + 28) = v7 | 6;
          v15 = *(a3 + 16);
          if (!v15)
          {
            operator new();
          }

          v16 = *a2;
          *(v15 + 44) |= 0x80u;
          *(v15 + 32) = v16;
        }

        return;
      }

      if (v8 == 10)
      {
        *(a3 + 28) = v7 | 6;
        v19 = *(a3 + 16);
        if (!v19)
        {
          operator new();
        }

        v20 = *a2;
        *(v19 + 44) |= 8u;
        *(v19 + 25) = v20;
        return;
      }

      if (v8 == 11)
      {
        *(a3 + 28) = v7 | 6;
        v9 = *(a3 + 16);
        if (!v9)
        {
          operator new();
        }

        v10 = *a2;
        *(v9 + 44) |= 0x10u;
        *(v9 + 26) = v10;
        return;
      }
    }

LABEL_34:
    if (qword_1025D4730 != -1)
    {
      sub_101B83560();
    }

    v17 = qword_1025D4738;
    if (os_log_type_enabled(qword_1025D4738, OS_LOG_TYPE_ERROR))
    {
      v18 = *a1;
      v27[0] = 67240192;
      v27[1] = v18;
      _os_log_impl(dword_100000000, v17, OS_LOG_TYPE_ERROR, "ConvertDaemonStatusNotificationToProtobuf,unhandled type,%{public}d", v27, 8u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_101B8B668(a1);
    }

    return;
  }

  if (v8 <= 5)
  {
    if (v8 < 6)
    {
      return;
    }

    goto LABEL_34;
  }

  if (v8 > 7)
  {
    if (v8 != 8)
    {
      if (v8 == 9)
      {
        return;
      }

      goto LABEL_34;
    }

    *(a3 + 28) = v7 | 6;
    v23 = *(a3 + 16);
    if (!v23)
    {
      operator new();
    }

    v24 = *a2;
    *(v23 + 44) |= 4u;
    *(v23 + 24) = v24;
  }

  else if (v8 == 6)
  {
    *(a3 + 28) = v7 | 6;
    v21 = *(a3 + 16);
    if (!v21)
    {
      operator new();
    }

    *(v21 + 44) |= 1u;
    v22 = *(v21 + 8);
    if (!v22)
    {
      operator new();
    }

    sub_10126F090(a2, v22);
  }

  else
  {
    *(a3 + 28) = v7 | 6;
    v13 = *(a3 + 16);
    if (!v13)
    {
      operator new();
    }

    *(v13 + 44) |= 2u;
    v14 = *(v13 + 16);
    if (!v14)
    {
      operator new();
    }

    sub_10126F114(a2, v14);
  }
}

uint64_t sub_100270D00(uint64_t a1, unsigned int a2)
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
      v8 = *(qword_102637DF0 + 16);
    }

    v9 = sub_10027C11C(v8, a2);
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

uint64_t sub_100270DFC(uint64_t result, const wireless_diagnostics::google::protobuf::MessageLite *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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
    v7 = *(qword_102637DF0 + 16);
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(3, v7, a2, a4);
}

void sub_100270E98(uint64_t a1, int *a2, int32x2_t *a3, uint64_t a4)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a4 + 32) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_10192926C();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v11 = 1;
    v8 = _os_activity_create(dword_100000000, "CL: CLWifiLocationProvider::onStatusNotification", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v8, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_101929280();
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
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLWifiLocationProvider::onStatusNotification, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v11 = 0;
  }

  sub_100271074(a4, a1, a2, a3);
  if (v11 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

void sub_100271074(uint64_t a1, uint64_t a2, int *a3, int32x2_t *a4)
{
  v22[0] = 0;
  v5 = *a3;
  if (*a3 > 14)
  {
    if (v5 == 15)
    {
      if (qword_1025D4630 != -1)
      {
        sub_1018FC884();
      }

      v10 = qword_1025D4638;
      if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_DEBUG))
      {
        v11 = a4->u8[0];
        buf.i32[0] = 67240192;
        buf.i32[1] = v11;
        _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEBUG, "@WifiLogic, entry, batterysaver, %{public}d", &buf, 8u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1018FCB90(&buf);
        v16 = a4->u8[0];
        v19 = 67240192;
        v20 = v16;
        v17 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "void CLWifiLocationProvider::onStatusNotification(int, const CLDaemonStatus_Type::Notification &, const CLDaemonStatus_Type::NotificationData &)", "%s\n", v17);
        if (v17 != &buf)
        {
          free(v17);
        }
      }

      buf.i8[0] = a4->i8[0];
      sub_10067F968(v22, &buf);
    }

    else
    {
      if (v5 != 16)
      {
        goto LABEL_31;
      }

      if (qword_1025D4630 != -1)
      {
        sub_1018FC884();
      }

      v8 = qword_1025D4638;
      if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_DEBUG))
      {
        buf.i16[0] = 0;
        _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEBUG, "@WifiLogic, entry, heartbeat", &buf, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1018FCB90(&buf);
        LOWORD(v19) = 0;
        v14 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "void CLWifiLocationProvider::onStatusNotification(int, const CLDaemonStatus_Type::Notification &, const CLDaemonStatus_Type::NotificationData &)", "%s\n", v14);
        if (v14 != &buf)
        {
          free(v14);
        }
      }

      sub_10067FA7C(v22);
    }

LABEL_30:
    sub_100271780(v18, v22);
    sub_1000FFE90();
  }

  if (v5 == 3)
  {
    if (qword_1025D4630 != -1)
    {
      sub_1018FC884();
    }

    v9 = qword_1025D4638;
    if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_DEBUG))
    {
      buf.i16[0] = 0;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "@WifiLogic, entry, wake", &buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018FCB90(&buf);
      LOWORD(v19) = 0;
      v15 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "void CLWifiLocationProvider::onStatusNotification(int, const CLDaemonStatus_Type::Notification &, const CLDaemonStatus_Type::NotificationData &)", "%s\n", v15);
      if (v15 != &buf)
      {
        free(v15);
      }
    }

    sub_1002715F0(v22);
    goto LABEL_30;
  }

  if (v5 == 6)
  {
    if (qword_1025D4630 != -1)
    {
      sub_1018FC884();
    }

    v6 = qword_1025D4638;
    if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_DEBUG))
    {
      v7 = a4->i32[1];
      buf.i32[0] = 67240192;
      buf.i32[1] = v7;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "@WifiLogic, entry, reach, %{public}d", &buf, 8u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018FCB90(&buf);
      v12 = a4->i32[1];
      v19 = 67240192;
      v20 = v12;
      v13 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "void CLWifiLocationProvider::onStatusNotification(int, const CLDaemonStatus_Type::Notification &, const CLDaemonStatus_Type::NotificationData &)", "%s\n", v13);
      if (v13 != &buf)
      {
        free(v13);
      }
    }

    buf = vrev64_s32(*a4);
    sub_10067F854(v22, &buf);
    goto LABEL_30;
  }

LABEL_31:
  sub_1001039FC(v22);
}

void sub_1002715F0(int *a1)
{
  if ((sub_10027168C(a1) & 1) == 0)
  {
    v2[0] = 13;
    sub_100103D88(a1, v2);
    sub_1001039FC(v2);
  }
}

void sub_100271670(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1001039FC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10027168C(int *a1)
{
  v1 = *a1 ^ (*a1 >> 31);
  result = 0;
  switch(v1)
  {
    case 0:
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
    case 7:
    case 8:
    case 9:
    case 10:
    case 11:
    case 12:
    case 14:
    case 15:
    case 16:
    case 17:
    case 18:
    case 19:
    case 20:
    case 21:
    case 22:
    case 23:
    case 24:
    case 25:
    case 26:
    case 27:
    case 28:
    case 29:
      return result;
    case 13:
      result = 1;
      break;
    default:
      sub_10053508C();
  }

  return result;
}

uint64_t sub_100271780(uint64_t a1, uint64_t a2)
{
  v3 = (a1 + 8);
  v30 = a1 + 8;
  v5 = *a2;
  v4 = a2 + 8;
  switch(v5 ^ (v5 >> 31))
  {
    case 0:
    case 1:
    case 2:
    case 0xD:
    case 0x11:
    case 0x1B:
    case 0x1C:
    case 0x1D:
      break;
    case 3:
    case 0xC:
    case 0xE:
    case 0x17:
      *v3 = *v4;
      break;
    case 4:
    case 9:
    case 0xB:
    case 0xF:
    case 0x13:
    case 0x16:
    case 0x19:
    case 0x1A:
      *v3 = *v4;
      break;
    case 5:
    case 6:
      *(a1 + 8) = 0;
      *(a1 + 96) = 0;
      if (*(a2 + 96) == 1)
      {
        *(a1 + 8) = *(a2 + 8);
        v7 = *(a2 + 16);
        *(a1 + 32) = *(a2 + 32);
        *(a1 + 16) = v7;
        *(a2 + 24) = 0;
        *(a2 + 32) = 0;
        *(a2 + 16) = 0;
        v8 = *(a2 + 40);
        v9 = *(a2 + 56);
        v10 = *(a2 + 72);
        *(a1 + 88) = *(a2 + 88);
        *(a1 + 72) = v10;
        *(a1 + 56) = v9;
        *(a1 + 40) = v8;
        *(a1 + 96) = 1;
      }

      break;
    case 7:
      sub_1002E8634(&v30, v4);
      break;
    case 8:
      sub_1003173A4(&v30, v4);
      break;
    case 0xA:
    case 0x14:
    case 0x15:
      *v3 = *v4;
      break;
    case 0x10:
      v17 = *(v4 + 16);
      *v3 = *v4;
      *(a1 + 24) = v17;
      v18 = *(v4 + 32);
      v19 = *(v4 + 48);
      v20 = *(v4 + 80);
      *(a1 + 72) = *(v4 + 64);
      *(a1 + 88) = v20;
      *(a1 + 40) = v18;
      *(a1 + 56) = v19;
      v21 = *(v4 + 96);
      v22 = *(v4 + 112);
      v23 = *(v4 + 128);
      *(a1 + 148) = *(v4 + 140);
      *(a1 + 120) = v22;
      *(a1 + 136) = v23;
      *(a1 + 104) = v21;
      memcpy((a1 + 168), (a2 + 168), 0x201uLL);
      *(a1 + 688) = *(a2 + 688);
      *(a2 + 688) = 0u;
      v25 = *(a2 + 720);
      v24 = *(a2 + 736);
      *(a1 + 704) = *(a2 + 704);
      *(a1 + 720) = v25;
      *(a1 + 736) = v24;
      v26 = *(a2 + 793);
      v27 = *(a2 + 784);
      v28 = *(a2 + 752);
      *(a1 + 768) = *(a2 + 768);
      *(a1 + 784) = v27;
      *(a1 + 793) = v26;
      *(a1 + 752) = v28;
      break;
    case 0x12:
      *v3 = *v4;
      break;
    case 0x18:
      v11 = *v4;
      *(a1 + 16) = *(v4 + 8);
      *v3 = v11;
      v12 = *(a2 + 24);
      *(a1 + 40) = *(a2 + 40);
      *(a1 + 24) = v12;
      *(a2 + 32) = 0;
      *(a2 + 40) = 0;
      *(a2 + 24) = 0;
      *(a1 + 48) = *(a2 + 48);
      v14 = *(a2 + 80);
      v13 = *(a2 + 96);
      v15 = *(a2 + 64);
      *(a1 + 108) = *(a2 + 108);
      *(a1 + 80) = v14;
      *(a1 + 96) = v13;
      *(a1 + 64) = v15;
      v16 = *(a2 + 128);
      *(a1 + 144) = *(a2 + 144);
      *(a1 + 128) = v16;
      *(a2 + 128) = 0;
      *(a2 + 136) = 0;
      *(a2 + 144) = 0;
      break;
    default:
      sub_10053508C();
  }

  *a1 = *a2 ^ (*a2 >> 31);
  return a1;
}

void sub_100271A0C(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a4 + 32) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_101B510D0();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v10 = 1;
    v7 = _os_activity_create(dword_100000000, "CL: CLBTLEBeaconProviderConcrete::onDaemonStatusNotification", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v7, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_101B510E4();
    }

    v8 = qword_1025D47F8;
    if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68289538;
      v12 = 0;
      v13 = 2082;
      v14 = "";
      v15 = 2082;
      v16 = "activity";
      v17 = 2050;
      v18 = a4;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLBTLEBeaconProviderConcrete::onDaemonStatusNotification, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v10 = 0;
  }

  sub_100271BD0(a4, v6, a2);
  if (v10 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

void sub_100271BD0(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  if (*a3 == 3)
  {
    v8 = v3;
    v9 = v4;
    if (qword_1025D4610 != -1)
    {
      sub_100271C84();
    }

    v6 = qword_1025D4618;
    if (os_log_type_enabled(qword_1025D4618, OS_LOG_TYPE_DEBUG))
    {
      *v7 = 0;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "iB: Received a wake event", v7, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101B51F94();
    }

    sub_100271C98(a1, 2);
  }
}

void sub_100271C98(uint64_t a1, int a2)
{
  if (*(a1 + 128) == 1 && *(a1 + 216) >= 1)
  {
    Current = CFAbsoluteTimeGetCurrent();
    v5 = Current;
    if (a2 != 2 || vabdd_f64(Current, *(a1 + 248)) >= 15.0)
    {
      if (qword_1025D4610 != -1)
      {
        sub_100271C84();
      }

      v6 = qword_1025D4618;
      if (os_log_type_enabled(qword_1025D4618, OS_LOG_TYPE_INFO))
      {
        v7 = *(a1 + 216);
        v8 = *(a1 + 296);
        *buf = 68289538;
        *&buf[4] = 0;
        *&buf[8] = 2082;
        *&buf[10] = "";
        *&buf[18] = 1026;
        *&buf[20] = v7;
        v14 = 2050;
        v15 = v8;
        _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_INFO, "{msg%{public}.0s:iB: Detecting state transitions for BE zones, numZones:%{public}d, totalZones:%{public}lu}", buf, 0x22u);
      }

      sub_10000EC00(__p, "BestEffortScan");
      if (*(a1 + 168) <= 0)
      {
        if (SHIBYTE(v12) < 0)
        {
          sub_100007244(buf, __p[0], __p[1]);
        }

        else
        {
          *buf = *__p;
          *&buf[16] = v12;
        }

        sub_10023B1D0(a1 + 160, buf);
        if ((buf[23] & 0x80000000) != 0)
        {
          operator delete(*buf);
        }
      }

      if (SHIBYTE(v12) < 0)
      {
        operator delete(__p[0]);
      }

      sub_10118257C(a1);
      *(a1 + 248) = v5;
      v9 = *(a1 + 40);
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_101183BC0;
      v10[3] = &unk_102449A78;
      v10[4] = a1;
      [v9 afterInterval:v10 async:6.29999995];
      sub_101183B4C(a1, a2 == 3);
    }
  }
}

void sub_100271EBC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

id sub_100271EF8(uint64_t a1, unsigned int *a2, __int128 *a3, void *a4)
{
  v4 = *a2;
  v6 = *a3;
  v7 = *(a3 + 2);
  return [a4 onDaemonStatusNotification:v4 data:&v6];
}

id sub_100271F58(uint64_t a1, unsigned int *a2, __int128 *a3, void *a4)
{
  v4 = *a2;
  v6 = *a3;
  v7 = *(a3 + 2);
  return [a4 onDaemonStatusNotification:v4 data:&v6];
}

id sub_100271F98(uint64_t a1, unsigned int *a2, __int128 *a3, void *a4)
{
  v4 = *a2;
  v6 = *a3;
  v7 = *(a3 + 2);
  return [a4 onDaemonStatusNotification:v4 data:&v6];
}

id sub_100271FD8(uint64_t a1, unsigned int *a2, __int128 *a3, void *a4)
{
  [objc_msgSend(objc_msgSend(a4 "universe")];
  v7 = *a2;
  v9 = *a3;
  v10 = *(a3 + 2);
  return [a4 onDaemonStatusNotification:v7 data:&v9];
}

void sub_100272040(__int32 a1, int *a2, unsigned __int8 *a3, uint64_t a4)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a4 + 32) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_1018F8FF4();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v11 = 1;
    v8 = _os_activity_create(dword_100000000, "CL: CLLocationController::onStatusNotification", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v8, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_1018F9008();
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
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLLocationController::onStatusNotification, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v11 = 0;
  }

  sub_10027221C(a4, a1, a2, a3);
  if (v11 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

void sub_10027221C(uint64_t a1, __int32 a2, int *a3, unsigned __int8 *a4)
{
  v32.i32[2] = a2;
  v7 = sub_10000B1F8();
  sub_10000B230(&v32.i64[1] + 4);
  sub_10000B324(v7, (&v32.u64[1] + 4));
  v32.i32[3] = 2;
  v32.i32[0] = 2;
  v32.i32[1] = sub_10000AD98(&v32.i32[3]);
  v8 = sub_10000AE98();
  v32.i32[3] = 4;
  sub_1002726F0(v8, &v32.i32[3], &v32, (a1 + 5220), &v32.i32[2], a3, a4);
  v9 = *(a1 + 280);
  if (v9)
  {
    (*(*v9 + 56))(v9, a3, a4);
  }

  v10 = *a3;
  if (*a3 > 7)
  {
    if (v10 > 12)
    {
      if (v10 == 13)
      {
        goto LABEL_47;
      }

      if (v10 != 15)
      {
        goto LABEL_50;
      }

      v20 = *a4;
      v21 = a1;
      v22 = 7;
    }

    else if (v10 == 8)
    {
      v20 = *a4;
      v21 = a1;
      v22 = 5;
    }

    else
    {
      if (v10 != 10)
      {
        goto LABEL_50;
      }

      v20 = *a4 == 0;
      v21 = a1;
      v22 = 11;
    }

    goto LABEL_46;
  }

  if (v10 > 5)
  {
    if (v10 != 6)
    {
      if (v10 == 7)
      {
        sub_1003E06B4(a1 + 800, (a4[9] & 1) == 0);
        sub_10105AAF0(a1 + 5296, (a4[9] & 1) == 0);
        if (qword_1025D4600 != -1)
        {
          sub_1018F7C0C();
        }

        v23 = qword_1025D4608;
        if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEFAULT))
        {
          v24 = a4[9];
          v32.i32[3] = 67240192;
          LODWORD(v33) = v24;
          _os_log_impl(dword_100000000, v23, OS_LOG_TYPE_DEFAULT, "#LCStats,battery charging,%{public}d", &v32.u8[12], 8u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_1018F9400(a4 + 9);
        }

        goto LABEL_47;
      }

LABEL_50:
      if (qword_1025D4600 != -1)
      {
        sub_1018F7C0C();
      }

      v30 = qword_1025D4608;
      if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEFAULT))
      {
        v31 = *a3;
        v32.i32[3] = 67240192;
        LODWORD(v33) = v31;
        _os_log_impl(dword_100000000, v30, OS_LOG_TYPE_DEFAULT, "LocationController,onStatusNotification,#Warning,Unhandled status notification,%{public}u", &v32.u8[12], 8u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1018F96E4(a3);
      }

      goto LABEL_47;
    }

    v20 = *(a4 + 1) == 0;
    v21 = a1;
    v22 = 3;
LABEL_46:
    sub_100278C3C(v21, v22, v20);
    goto LABEL_47;
  }

  if (v10 != 2)
  {
    if (v10 == 3)
    {
      *(a1 + 680) = 0;
      sub_100278C3C(a1, 1, 0);
      if (*(a1 + 161) != 255)
      {
        if (qword_1025D4600 != -1)
        {
          sub_1018F7C0C();
        }

        v11 = qword_1025D4608;
        if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
        {
          v12 = sub_10000B1F8();
          v32.i32[3] = 0;
          v13 = sub_10001A6B0(v12, &v32.i32[3]) + 15.0;
          v14 = sub_10000B1F8();
          v15 = sub_100125220(v14);
          v32.i32[3] = 134349312;
          v33 = v13;
          v34 = 2050;
          v35 = v15;
          _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEBUG, "LocationController,Device wake setting location unavailable timer to fire at %{public}.3f,propagation_us,%{public}.3f", &v32.u8[12], 0x16u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_1018F94EC();
        }

        [*(a1 + 664) setNextFireDelay:15.0];
      }

      sub_10010B730(a1);
      v16 = *(a1 + 320);
      if (v16)
      {
        v17 = sub_10000B1F8();
        v32.i32[3] = 0;
        v18 = sub_10001A6B0(v17, &v32.i32[3]);
        sub_100278ECC(v16, v18);
      }

      v19 = *(a1 + 304);
      if (v19)
      {
        sub_1002742E4(v19);
      }

      goto LABEL_47;
    }

    goto LABEL_50;
  }

  *(a1 + 680) = 1;
  sub_100278C3C(a1, 1, 1);
  v25 = *(a1 + 320);
  if (v25)
  {
    v26 = sub_10000B1F8();
    v32.i32[3] = 0;
    v27 = sub_10001A6B0(v26, &v32.i32[3]);
    sub_100549B38(v25, v27);
  }

  if (*(a1 + 161) != 255)
  {
    if (qword_1025D4600 != -1)
    {
      sub_1018F7C0C();
    }

    v28 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
    {
      v32.i16[6] = 0;
      _os_log_impl(dword_100000000, v28, OS_LOG_TYPE_DEBUG, "Device going to sleep,stop location unavailable timer", &v32.u8[12], 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018F9608();
    }

    [*(a1 + 664) setNextFireDelay:1.79769313e308];
  }

LABEL_47:
  v29 = *(a1 + 312);
  if (v29)
  {
    sub_100278F2C(v29, a3, a4);
  }
}

void sub_1002726F0(uint64_t a1, int *a2, int32x4_t *a3, int *a4, int *a5, int *a6, char *a7)
{
  if (*(a1 + 16))
  {
    if (*a2 == 4)
    {
      if (vmaxv_u16(vmovn_s32(vceqzq_s32(*a3))))
      {
        if (qword_1025D4600 != -1)
        {
          sub_100287074();
        }

        v10 = qword_1025D4608;
        if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
        {
          if (a3->i32[0])
          {
            v11 = a3->i32[1] == 0;
          }

          else
          {
            v11 = 1;
          }

          v12 = !v11;
          if (*a4)
          {
            v13 = a4[1] == 0;
          }

          else
          {
            v13 = 1;
          }

          v14 = !v13;
          LODWORD(buf) = 67109376;
          HIDWORD(buf) = v12;
          v73 = 1024;
          LODWORD(v74) = v14;
          _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEBUG, "#locctl,#rec,recordMessage,CLDaemonStatus_Type,silo entry invalid,from_valid,%d,to_valid,%d", &buf, 0xEu);
        }

        if (sub_10000A100(121, 2))
        {
          bzero(&buf, 0x65CuLL);
          if (qword_1025D4600 != -1)
          {
            sub_1018D8CDC();
          }

          if (a3->i32[0])
          {
            v15 = a3->i32[1] == 0;
          }

          else
          {
            v15 = 1;
          }

          v16 = !v15;
          if (*a4)
          {
            v17 = a4[1] == 0;
          }

          else
          {
            v17 = 1;
          }

          v18 = !v17;
          *v68 = 67109376;
          *v69 = v16;
          *&v69[4] = 1024;
          *&v69[6] = v18;
          v19 = _os_log_send_and_compose_impl();
          sub_100152C7C("Generic", 1, 0, 2, "void CLLocationControllerRecorder::recordMessage(const CLLocationControllerRecorder_Types::MessageType &, const CLLocationControllerRecorder_Types::Silo &, const CLLocationControllerRecorder_Types::Silo &, const int &, const CLDaemonStatus_Type::Notification &, const CLDaemonStatus_Type::NotificationData &)", "%s\n", v19);
          if (v19 != &buf)
          {
            free(v19);
          }
        }
      }

      else
      {
        sub_10000AED0(v68);
        v26 = sub_10000B1F8();
        sub_10000AED4(v26, v56);
        sub_10000AFE4(v68, a2, a3->i32, a4, v56);
        v71 |= 2u;
        v27 = v70;
        if (!v70)
        {
          operator new();
        }

        *(v70 + 492) |= 0x800u;
        v28 = *(v27 + 352);
        if (!v28)
        {
          operator new();
        }

        *(v28 + 200) |= 0x20u;
        v29 = *(v28 + 40);
        if (!v29)
        {
          operator new();
        }

        v30 = *a5;
        *(v29 + 28) |= 1u;
        *(v29 + 8) = v30;
        sub_1002707C4(a6, a7, v29);
        v31 = sub_10000BFC0(a1);
        if (*(a1 + 8) == 1)
        {
          v32 = v31;
          if (qword_1025D4600 != -1)
          {
            sub_1018D8CDC();
          }

          v33 = qword_1025D4608;
          if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
          {
            sub_101322EE0(a2, &v57);
            if (SBYTE3(v61) >= 0)
            {
              v34 = &v57;
            }

            else
            {
              v34 = v57;
            }

            v47 = v34;
            LODWORD(v49[0]) = a3->i32[0];
            sub_1013230DC(v49, v54);
            if (v55 >= 0)
            {
              v35 = v54;
            }

            else
            {
              v35 = v54[0];
            }

            v51 = *a4;
            v36 = __p;
            sub_1013230DC(&v51, __p);
            if (v53 < 0)
            {
              v36 = __p[0];
            }

            v37 = *a6;
            v38 = sub_10000B1F8();
            v39 = sub_100125220(v38);
            LODWORD(buf) = 67110402;
            HIDWORD(buf) = v32;
            v73 = 2080;
            v74 = v47;
            v75 = 2080;
            v76 = v35;
            v77 = 2080;
            v78 = v36;
            v79 = 1024;
            v80 = v37;
            v81 = 2050;
            v82 = v39;
            _os_log_impl(dword_100000000, v33, OS_LOG_TYPE_DEBUG, "#locctl,#rec,recordMessage,CLDaemonStatus_Type,success,%d,message_type,%s,from,%s,to,%s,notification_type,%d,propagation_us,%{public}.3f", &buf, 0x36u);
            if (v53 < 0)
            {
              operator delete(__p[0]);
            }

            if (v55 < 0)
            {
              operator delete(v54[0]);
            }

            if (SBYTE3(v61) < 0)
            {
              operator delete(v57);
            }
          }

          if (sub_10000A100(121, 2))
          {
            sub_1018D8D04(&buf);
            sub_101322EE0(a2, v54);
            if (v55 >= 0)
            {
              v40 = v54;
            }

            else
            {
              v40 = v54[0];
            }

            v51 = a3->i32[0];
            v41 = __p;
            sub_1013230DC(&v51, __p);
            if (v53 < 0)
            {
              v41 = __p[0];
            }

            v48 = *a4;
            sub_1013230DC(&v48, v49);
            if (v50 >= 0)
            {
              v42 = v49;
            }

            else
            {
              v42 = v49[0];
            }

            v43 = *a6;
            v44 = sub_10000B1F8();
            v45 = sub_100125220(v44);
            LODWORD(v57) = 67110402;
            HIDWORD(v57) = v32;
            v58 = 2080;
            v59 = v40;
            v60 = 2080;
            v61 = v41;
            v62 = 2080;
            v63 = v42;
            v64 = 1024;
            v65 = v43;
            v66 = 2050;
            v67 = v45;
            v46 = _os_log_send_and_compose_impl();
            if (v50 < 0)
            {
              operator delete(v49[0]);
            }

            if (v53 < 0)
            {
              operator delete(__p[0]);
            }

            if (v55 < 0)
            {
              operator delete(v54[0]);
            }

            sub_100152C7C("Generic", 1, 0, 2, "void CLLocationControllerRecorder::recordMessage(const CLLocationControllerRecorder_Types::MessageType &, const CLLocationControllerRecorder_Types::Silo &, const CLLocationControllerRecorder_Types::Silo &, const int &, const CLDaemonStatus_Type::Notification &, const CLDaemonStatus_Type::NotificationData &)", "%s\n", v46);
            if (v46 != &buf)
            {
              free(v46);
            }
          }
        }

        sub_10000CE1C(v68);
      }
    }

    else
    {
      if (qword_1025D4600 != -1)
      {
        sub_100287074();
      }

      v20 = qword_1025D4608;
      if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
      {
        sub_101322EE0(a2, &buf);
        v21 = SBYTE3(v76) >= 0 ? &buf : buf;
        *v68 = 136315138;
        *v69 = v21;
        _os_log_impl(dword_100000000, v20, OS_LOG_TYPE_DEBUG, "#locctl,#rec,recordMessage,CLDaemonStatus_Type,unsupported message type,%s", v68, 0xCu);
        if (SBYTE3(v76) < 0)
        {
          operator delete(buf);
        }
      }

      if (sub_10000A100(121, 2))
      {
        sub_1018D9564();
      }
    }
  }
}

uint64_t sub_100272EEC(int *a1)
{
  v1 = *a1;
  if (v1 < 0x12)
  {
    return dword_101D7A7E8[v1];
  }

  if (qword_1025D4730 != -1)
  {
    sub_101B83560();
  }

  v4 = qword_1025D4738;
  if (os_log_type_enabled(qword_1025D4738, OS_LOG_TYPE_DEBUG))
  {
    v5 = *a1;
    v6[0] = 67240192;
    v6[1] = v5;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "ConvertDaemonStatusNotificationTypeToProtobuf,unhandled type,%{public}d", v6, 8u);
  }

  result = sub_10000A100(121, 2);
  if (result)
  {
    sub_101B8B574(a1);
    return 0;
  }

  return result;
}

void sub_100272FF0(uint64_t a1)
{
  if (*(a1 + 2840))
  {
    goto LABEL_4;
  }

  v2 = (a1 + 2880);
  v3 = *(a1 + 2880);
  if (v3 == 1)
  {
    *v2 = 4;
    goto LABEL_33;
  }

  if (v3 == 2)
  {
LABEL_4:
    v4 = sub_10000B1F8();
    *buf = 1;
    v5 = sub_10001A6B0(v4, buf);
    v41 = v5;
    v6 = *(a1 + 2848);
    if (qword_1025D4770 != -1)
    {
      sub_100224830();
    }

    v7 = v5 - v6;
    v8 = qword_1025D4778;
    if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
    {
      v9 = sub_10000B1F8();
      v10 = sub_100125220(v9);
      *buf = 134349568;
      v51 = v7;
      v52 = 2050;
      v53 = v41;
      v54 = 2050;
      v55 = v10;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEBUG, "#fusion,a call is made while fused state is in sleep mode for,%{public}.2f,[s],waking up to process the call,now_mct,%{public}.3f,propagation_us,%{public}.3f", buf, 0x20u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101A7B5F4(buf);
      v32 = sub_10000B1F8();
      v42 = 134349568;
      v43 = v7;
      v44 = 2050;
      v45 = v41;
      v46 = 2050;
      v47 = sub_100125220(v32);
      v33 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "void cllcf::CLLCFusion::checkLCFusionState()", "%s\n", v33);
      if (v33 != buf)
      {
        free(v33);
      }
    }

    v2 = (a1 + 2880);
    v11 = *(a1 + 2880);
    if (v11 == 2)
    {
      sub_10027645C(a1 + 1552, &v41);
      v12 = *(a1 + 224);
      if (v12 != (a1 + 232))
      {
        do
        {
          sub_10027645C((v12 + 29), &v41);
          v13 = v12[1];
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
              v14 = v12[2];
              v15 = *v14 == v12;
              v12 = v14;
            }

            while (!v15);
          }

          v12 = v14;
        }

        while (v14 != (a1 + 232));
      }

      for (i = *(a1 + 248); i; i = *i)
      {
        sub_10027645C((i + 25), &v41);
      }

      v11 = *v2;
    }

    if (v11 != 4)
    {
      *v2 = 3;
    }

    if (*(a1 + 2840) == 1 && v7 > 5.0)
    {
      if (qword_1025D4770 != -1)
      {
        sub_100224830();
      }

      v18 = qword_1025D4778;
      if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
      {
        v19 = *(a1 + 2848);
        *buf = 134349568;
        v51 = v19;
        v52 = 2050;
        v53 = v41;
        v54 = 2050;
        v55 = v7;
        _os_log_impl(dword_100000000, v18, OS_LOG_TYPE_DEBUG, "#fusion,slept_mct,%{public}.3f,now_mct,%{public}.3f,likely missing or late arrival wakeup msg,force wakeup from sleep after,%{public}.2f,[s]", buf, 0x20u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101A7B5F4(buf);
        v37 = *(a1 + 2848);
        v42 = 134349568;
        v43 = v37;
        v44 = 2050;
        v45 = v41;
        v46 = 2050;
        v47 = v7;
        v38 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "void cllcf::CLLCFusion::checkLCFusionState()", "%s\n", v38);
        if (v38 != buf)
        {
          free(v38);
        }
      }

      *(a1 + 2872) = v7 + *(a1 + 2872);
      *(a1 + 2840) = 0;
      *(a1 + 2848) = 0xBFF0000000000000;
      *(a1 + 2864) = v41;
      *(a1 + 2880) = 4;
    }
  }

LABEL_33:
  if (*(a1 + 2856) > 0.0 || *(a1 + 2864) > 0.0)
  {
    v20 = sub_10000B1F8();
    *buf = 1;
    v21 = sub_10001A6B0(v20, buf);
    v22 = *(a1 + 2856);
    if (v22 > 0.0 || (v22 = *(a1 + 2864), v23 = -1.0, v22 > 0.0))
    {
      v23 = v21 - v22;
    }

    v24 = 5.0;
    if ((sub_100681564(a1 + 2424, v21, -1.0) & 1) == 0)
    {
      v25 = *(a1 + 2448) - 1;
      if (v25 <= 9)
      {
        v24 = dbl_101CFC808[v25];
      }
    }

    if (v23 > v24)
    {
      if (qword_1025D4770 != -1)
      {
        sub_100224830();
      }

      v26 = qword_1025D4778;
      if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
      {
        v27 = *(a1 + 2856);
        v28 = *(a1 + 2936);
        *buf = 134349824;
        v51 = v27;
        v52 = 2050;
        v53 = v23;
        v54 = 2050;
        v55 = v24;
        v56 = 2050;
        v57 = v28;
        _os_log_impl(dword_100000000, v26, OS_LOG_TYPE_DEBUG, "#fusion,max leeway after wakeup reached when checking fused state, processing buffered data,wakeupTime_mct,%{public}.3f,dt_since_s,%{public}.1f,gatingThreshold_s,%{public}.1f,syncedBuffSize,%{public}zu", buf, 0x2Au);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101A7B5F4(buf);
        v34 = *(a1 + 2856);
        v35 = *(a1 + 2936);
        v42 = 134349824;
        v43 = v34;
        v44 = 2050;
        v45 = v23;
        v46 = 2050;
        v47 = v24;
        v48 = 2050;
        v49 = v35;
        v36 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "void cllcf::CLLCFusion::checkLCFusionState()", "%s\n", v36);
        if (v36 != buf)
        {
          free(v36);
        }
      }

      sub_100D6CE60(a1, 1);
      sub_100857280(a1 + 2920, *(a1 + 2928));
      *(a1 + 2920) = a1 + 2928;
      *(a1 + 2928) = 0u;
      *(a1 + 2904) = 0;
      *(a1 + 2912) = 0xBFF0000000000000;
      *(a1 + 2856) = 0xBFF0000000000000;
      *(a1 + 2864) = 0xBFF0000000000000;
    }
  }

  if (*v2 == 3 && (!*(a1 + 2904) || *(a1 + 2856) < 0.0 && *(a1 + 2864) < 0.0))
  {
    *v2 = 4;
    if (qword_1025D4770 != -1)
    {
      sub_100224830();
    }

    v29 = qword_1025D4778;
    if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
    {
      v30 = sub_10000B1F8();
      *buf = 1;
      v31 = sub_10001A6B0(v30, buf);
      *buf = 134349056;
      v51 = v31;
      _os_log_impl(dword_100000000, v29, OS_LOG_TYPE_DEBUG, "#fusion,now_mct,%{public}.3f,fusion state transition from wakeup to running mode", buf, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101A7B5F4(buf);
      v39 = sub_10002F470();
      v42 = 134349056;
      v43 = v39;
      v40 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "void cllcf::CLLCFusion::checkLCFusionState()", "%s\n", v40);
      if (v40 != buf)
      {
        free(v40);
      }
    }
  }
}

void sub_10027379C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10037EA9C(a1);
}

void sub_1002737A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = _os_activity_create(dword_100000000, "CL: Incoming message", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v6, &state);

  if (qword_1025D4790 != -1)
  {
    sub_1001456E8();
  }

  v7 = qword_1025D4798;
  if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_DEFAULT))
  {
    v8 = CLConnectionMessage::name(*a3);
    if (*(v8 + 23) >= 0)
    {
      v9 = v8;
    }

    else
    {
      v9 = *v8;
    }

    v10 = *(a2 + 72);
    *buf = 68290050;
    v18 = 0;
    v19 = 2082;
    v20 = "";
    v21 = 2082;
    v22 = "activity";
    v23 = 2082;
    v24 = v9;
    v25 = 2050;
    v26 = a2;
    v27 = 1026;
    v28 = v10;
    _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Incoming message, event:%{public, location:escape_only}s, name:%{public, location:escape_only}s, this:%{public}p, registrationReceived:%{public}hhd}", buf, 0x36u);
  }

  if ((*(a2 + 72) & 1) != 0 || *(a1 + 32) == 1)
  {
    v11 = sub_1002739B8(a2);
    v12 = *(a3 + 8);
    v14 = *a3;
    v15 = v12;
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v13 = *(a1 + 24);
    if (!v13)
    {
      sub_1000CF05C();
    }

    (*(*v13 + 48))(v13, v11, &v14);
    if (v15)
    {
      sub_100008080(v15);
    }
  }

  os_activity_scope_leave(&state);
}

void *sub_1002739B8(uint64_t a1)
{
  *buf = &v4;
  v1 = sub_1000583C0((a1 + 288), &v4)[3];
  if (!v1)
  {
    if (qword_1025D4790 != -1)
    {
      sub_1001456E8();
    }

    v2 = qword_1025D4798;
    if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_INFO))
    {
      *buf = 68289282;
      *&buf[4] = 0;
      v6 = 2082;
      v7 = "";
      v8 = 2082;
      v9 = "28CLMotionActivitySubscription" & 0x7FFFFFFFFFFFFFFFLL;
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Creating subscription due to demand, type:%{public, location:escape_only}s}", buf, 0x1Cu);
    }

    operator new();
  }

  if (!result)
  {
    sub_1019F3614();
  }

  return result;
}

void sub_100273BBC(uint64_t a1, int *a2, unsigned __int8 *a3)
{
  v6 = *(a1 + 3912);
  v7 = *(a1 + 3872);
  if (v7)
  {
    sub_100278B00(v7, 0xFFFFFFFFLL, a2, a3);
  }

  v8 = *(a1 + 3880);
  if (v8)
  {
    sub_100278B00(v8, 0xFFFFFFFFLL, a2, a3);
  }

  v9 = *a2;
  if (*a2 > 7)
  {
    if (v9 > 14)
    {
      if (v9 == 15)
      {
        if (v6)
        {
          sub_100E0BA08(a1 + 4304, *a3);
          v44 = *(a1 + 3912);
          if (v44)
          {
            v45 = (*(a1 + 4319) & 1) == 0;

            sub_10001AB38(v44, v45);
          }
        }

        return;
      }

      if (v9 != 18)
      {
        return;
      }

      v21 = *(a1 + 4336);
      if (!v21)
      {
        return;
      }

      v21[1] = *a3;
    }

    else
    {
      if (v9 == 8)
      {
        v39 = sub_10000B1F8();
        *buf = 1;
        *buf = sub_10001A6B0(v39, buf);
        sub_100D719A0(a1 + 456, buf, *a3);
        return;
      }

      if (v9 != 13)
      {
        return;
      }

      if (v6)
      {
        sub_100E0B978(a1 + 4304, *a3);
        v20 = *(a1 + 3912);
        if (v20)
        {
          sub_10001AB38(v20, (*(a1 + 4319) & 1) == 0);
        }
      }

      v21 = *(a1 + 4336);
      if (!v21)
      {
        return;
      }

      *v21 = *a3;
    }

    sub_1001FC760(v21);
    return;
  }

  if (v9 <= 5)
  {
    if (v9 == 2)
    {
      v32 = sub_10000B1F8();
      *buf = 0;
      *(a1 + 4264) = sub_10001A6B0(v32, buf);
      if (qword_1025D4600 != -1)
      {
        sub_101956104();
      }

      v33 = qword_1025D4608;
      if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
      {
        v34 = sub_10000B1F8();
        *buf = 0;
        v35 = sub_10001A6B0(v34, buf);
        v36 = sub_10000B1F8();
        v37 = sub_100125220(v36);
        *buf = 134349312;
        *&buf[4] = v35;
        v49 = 2050;
        *v50 = v37;
        _os_log_impl(dword_100000000, v33, OS_LOG_TYPE_DEBUG, "device entering sleep,now,%{public}.3f,propagation_us,%{public}.3f", buf, 0x16u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101957BF4();
      }

      v38 = sub_10000B1F8();
      *buf = 1;
      *buf = sub_10001A6B0(v38, buf);
      sub_100D6C8AC(a1 + 456, buf);
      v47 = 2;
      *buf = 0;
      sub_10120BB80(a1 + 48, (a1 + 4264), buf, &v47);
      *(a1 + 4272) = 1;
    }

    else if (v9 == 3)
    {
      if (qword_1025D4600 != -1)
      {
        sub_1019578A4();
      }

      v10 = qword_1025D4608;
      if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
      {
        v11 = sub_10000B1F8();
        *buf = 0;
        v12 = sub_10001A6B0(v11, buf);
        v13 = sub_10000B1F8();
        v14 = sub_100125220(v13);
        *buf = 134349312;
        *&buf[4] = v12;
        v49 = 2050;
        *v50 = v14;
        _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEBUG, "device wake - checking for corresponding sleep,now,%{public}.3f,propagation_us,%{public}.3f", buf, 0x16u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1019579E0();
      }

      if ((*(a1 + 4272) & 1) == 0)
      {
        if (qword_1025D4600 != -1)
        {
          sub_101956104();
        }

        v15 = qword_1025D4608;
        if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEFAULT))
        {
          v16 = *(a1 + 3864);
          v17 = sub_10000B1F8();
          v18 = sub_100125220(v17);
          *buf = 134349312;
          *&buf[4] = v16;
          v49 = 2050;
          *v50 = v18;
          _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_DEFAULT, "#Warning wake detected with no prior sleep known, toggling LC Fusion at MCT time, %{public}.3lf,propagation_us,%{public}.3f", buf, 0x16u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_101957ADC(a1);
        }

        if ((*(a1 + 3336) & 0xFFFFFFFE) != 2)
        {
          sub_100D6C8AC(a1 + 456, (a1 + 3864));
        }
      }

      v19 = sub_10000B1F8();
      *buf = 1;
      *buf = sub_10001A6B0(v19, buf);
      sub_100276098(a1 + 456, buf);
      *(a1 + 4272) = 0;
    }

    return;
  }

  if (v9 != 6)
  {
    if (v9 != 7)
    {
      return;
    }

    if (qword_1025D4600 != -1)
    {
      sub_1019578A4();
    }

    v22 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
    {
      v23 = *a3;
      v24 = a3[8];
      v25 = a3[9];
      v26 = a3[16];
      *buf = 134349824;
      *&buf[4] = v23;
      v49 = 1026;
      *v50 = v24;
      *&v50[4] = 1026;
      *&v50[6] = v25;
      v51 = 1026;
      v52 = v26;
      _os_log_impl(dword_100000000, v22, OS_LOG_TYPE_DEBUG, "CLMM,Battery notification,level,%{public}.2lf,charged,%{public}d,connected,%{public}d,wasConnected,%{public}d", buf, 0x1Eu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1019578B8(a3);
      if (v6)
      {
        goto LABEL_41;
      }
    }

    else if (v6)
    {
LABEL_41:
      v27 = *a3;
      if (*a3 >= 0.0 && v27 <= 100.0)
      {
        sub_100E0BA80(a1 + 4304, v27);
        v28 = *(a1 + 3912);
        if (v28)
        {
          sub_10001AB38(v28, (*(a1 + 4319) & 1) == 0);
        }
      }
    }

    v29 = *(a1 + 4336);
    if (v29)
    {
      v30 = *a3;
      if (*a3 >= 0.0 && v30 <= 100.0)
      {
        v31 = a3[9];
        *(v29 + 8) = v30;
        *(v29 + 16) = v31;
        sub_1001FC760(v29);
      }
    }

    return;
  }

  v41 = *(a3 + 1);
  v40 = (a3 + 4);
  if ((v41 - 1) > 1)
  {
    if (qword_1025D41D0 != -1)
    {
      sub_101956624();
    }

    v46 = qword_1025D41D8;
    if (os_log_type_enabled(qword_1025D41D8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v46, OS_LOG_TYPE_DEBUG, "#cltr,device does not have reachability", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1019576DC();
    }
  }

  else
  {
    if (qword_1025D41D0 != -1)
    {
      sub_101956624();
    }

    v42 = qword_1025D41D8;
    if (os_log_type_enabled(qword_1025D41D8, OS_LOG_TYPE_DEBUG))
    {
      v43 = *v40;
      *buf = 67109120;
      *&buf[4] = v43;
      _os_log_impl(dword_100000000, v42, OS_LOG_TYPE_DEBUG, "#cltr,device has reachability,type,%d,clearing backoff timer if one exists", buf, 8u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1019577B8(v40);
    }

    (*(*a1 + 448))(a1);
  }
}

void sub_1002742E4(uint64_t a1)
{
  v2 = sub_10000B1F8();
  v3 = 1;
  *(a1 + 56) = sub_10001A6B0(v2, &v3);
}

void sub_100274324(uint64_t a1)
{
  v3 = *(a1 + 408);
  v2 = *(a1 + 416);
  if (v2 <= v3)
  {
    v9 = v3 - v2;
    if (v3 - v2 >= 120.0)
    {
      if (v9 >= 300.0)
      {
        v12 = v9 + *(a1 + 584);
        *(a1 + 584) = v12;
      }

      else
      {
        v11 = v9 + *(a1 + 580);
        *(a1 + 580) = v11;
      }
    }

    else
    {
      v10 = v9 + *(a1 + 576);
      *(a1 + 576) = v10;
    }

    v13 = (*(a1 + 576) + *(a1 + 580)) + *(a1 + 584);
    if (qword_1025D4600 != -1)
    {
      sub_101A85004();
    }

    v14 = v13;
    v15 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEFAULT))
    {
      v16 = *(a1 + 184);
      *buf = 67240704;
      v18 = v16;
      v19 = 2050;
      v20 = v9;
      v21 = 2050;
      v22 = v14;
      _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_DEFAULT, "#CLProactiveLoc,active,%{public}d,sleepDur,%{public}0.2f,total,%{public}0.2f", buf, 0x1Cu);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4600 != -1)
      {
        sub_101A84F98();
      }

      v8 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "void CLProactiveLocation::updateAPSleepStats()", "%s\n");
      goto LABEL_24;
    }
  }

  else
  {
    if (qword_1025D4600 != -1)
    {
      sub_101A85004();
    }

    v4 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_ERROR))
    {
      v5 = *(a1 + 184);
      v7 = *(a1 + 408);
      v6 = *(a1 + 416);
      *buf = 67240704;
      v18 = v5;
      v19 = 2050;
      v20 = v6;
      v21 = 2050;
      v22 = v7;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_ERROR, "#CLProactiveLoc,active,%{public}d,updateAPSleepStats,sleep,%{public}0.2f,wake,%{public}0.2f", buf, 0x1Cu);
    }

    if (sub_10000A100(121, 0))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4600 != -1)
      {
        sub_101A84F98();
      }

      v8 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 0, "void CLProactiveLocation::updateAPSleepStats()", "%s\n");
LABEL_24:
      if (v8 != buf)
      {
        free(v8);
      }
    }
  }
}

void sub_1002746C0(uint64_t a1)
{
  v2 = sub_10000B1F8();
  *buf = 1;
  v3 = sub_10001A6B0(v2, buf);
  if (qword_1025D4600 != -1)
  {
    sub_101A84F98();
  }

  v4 = qword_1025D4608;
  if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
  {
    v5 = *(a1 + 184);
    v6 = sub_10000B1F8();
    v7 = sub_100125220(v6);
    *buf = 67240704;
    v37 = v5;
    v38 = 2050;
    *v39 = v3;
    *&v39[8] = 2050;
    v40 = v7;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "#CLProactiveLoc,active,%{public}d,proactiveLocationStartCheck,mct,%{public}.3f,propagation_us,%{public}.3f", buf, 0x1Cu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101A85444(a1, v3);
  }

  sub_100274D34(a1, v3);
  if (*(a1 + 104) > *(a1 + 456))
  {
    if (v3 - *(a1 + 240) >= 0.0)
    {
      v8 = v3 - *(a1 + 240);
    }

    else
    {
      v8 = 0.0;
    }

    v9 = *(a1 + 1032);
    if (v3 - *(a1 + 216) - v9 >= 0.0)
    {
      v10 = v3 - *(a1 + 216) - v9;
    }

    else
    {
      v10 = 0.0;
    }

    if (v3 - *(a1 + 328) - v9 >= 0.0)
    {
      v11 = v3 - *(a1 + 328) - v9;
    }

    else
    {
      v11 = 0.0;
    }

    v12 = *(a1 + 56);
    v13 = v11 > v12 && v10 > v12;
    v14 = *(a1 + 96);
    v15 = *(a1 + 1016);
    v16 = *(a1 + 24);
    if (v13)
    {
      v17 = 0;
    }

    else
    {
      v17 = sub_10027A020(a1);
    }

    if (*(a1 + 185) & 1) == 0 && *(a1 + 592) != 1 || (*(a1 + 188) & 1) != 0 || (*(a1 + 189))
    {
      goto LABEL_36;
    }

    v24 = 0;
    if ((*(a1 + 190) & 1) != 0 || v15 < v16)
    {
      goto LABEL_37;
    }

    if (*(a1 + 187))
    {
LABEL_36:
      v24 = 0;
    }

    else
    {
      v24 = *(a1 + 928) ^ 1;
    }

LABEL_37:
    if (qword_1025D4600 != -1)
    {
      sub_101A84F98();
    }

    v25 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEFAULT))
    {
      v26 = *(a1 + 184);
      v27 = *(a1 + 185);
      v28 = *(a1 + 188);
      v29 = *(a1 + 189) ^ 1;
      v30 = *(a1 + 190) ^ 1;
      v31 = *(a1 + 592);
      v32 = *(a1 + 187);
      v33 = *(a1 + 928);
      v34 = *(a1 + 1032);
      *buf = 67244033;
      v37 = v26;
      v38 = 1025;
      *v39 = v27;
      *&v39[4] = 1026;
      *&v39[6] = v13;
      LOWORD(v40) = 1026;
      *(&v40 + 2) = v8 > v14;
      HIWORD(v40) = 1026;
      *v41 = v28;
      *&v41[4] = 1026;
      *&v41[6] = v29;
      v42 = 1026;
      v43 = v30;
      v44 = 1026;
      v45 = v15 >= v16;
      v46 = 2050;
      v47 = v10;
      v48 = 2050;
      v49 = v11;
      v50 = 2050;
      v51 = v8;
      v52 = 1026;
      v53 = v31;
      v54 = 1026;
      v55 = v17;
      v56 = 1026;
      v57 = v32;
      v58 = 1026;
      v59 = v33;
      v60 = 2050;
      v61 = v34;
      _os_log_impl(dword_100000000, v25, OS_LOG_TYPE_DEFAULT, "#CLProactiveLoc,active,%{public}d,startCheck,outVisit,%{private}d,rateGnss,%{public}d,rateWifi,%{public}d,lowPower,%{public}d,locService,%{public}d,MA,%{public}d,posUnc,%{public}d,secFromLastConvergedFix,%{public}0.2f,secFromLastProactiveLoc,%{public}0.2f,secFromLasWifiLoc,%{public}0.2f,inVisitOverride,%{public}d,rateOverride,%{public}d,staticOverride,%{public}d,pendingAPSleep,%{public}d,fAdaptiveGpsIntervalAdjustment,%{public}0.1f", buf, 0x72u);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4600 != -1)
      {
        sub_101A84F98();
      }

      v35 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "void CLProactiveLocation::proactiveLocationStartCheck()", "%s\n", v35);
      if (v35 != buf)
      {
        free(v35);
      }
    }

    if (v24)
    {
      if ((v13 | v17) == 1)
      {
        sub_100DA8B18(a1);
      }

      else
      {
        if (v8 > v14)
        {
          sub_100DA8DE0(a1);
        }

        sub_100DA9028(a1);
      }
    }

    return;
  }

  if (qword_1025D4600 != -1)
  {
    sub_101A84F98();
  }

  v18 = qword_1025D4608;
  if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEFAULT))
  {
    v19 = *(a1 + 184);
    v20 = *(a1 + 104);
    v21 = *(a1 + 456);
    v22 = *(a1 + 464);
    *buf = 67240960;
    v37 = v19;
    v38 = 2050;
    *v39 = v20;
    *&v39[8] = 2050;
    v40 = v21;
    *v41 = 2050;
    *&v41[2] = v22;
    _os_log_impl(dword_100000000, v18, OS_LOG_TYPE_DEFAULT, "#CLProactiveLoc,active,%{public}d,dailyGNSSLimitReached,limit,%{public}0.2f,usage,%{public}0.2f,withAssertion,%{public}0.2f", buf, 0x26u);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4600 != -1)
    {
      sub_101A84F98();
    }

    v23 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "void CLProactiveLocation::proactiveLocationStartCheck()", "%s\n", v23);
    if (v23 != buf)
    {
      free(v23);
    }
  }
}

void sub_100274D34(uint64_t a1, double a2)
{
  v3 = *(a1 + 368);
  if (v3 <= a2)
  {
    if (a2 - v3 >= 86400.0)
    {
      sub_1011E7788(a1 + 600, a1 + 408);
      sub_10109BBF0(a1 + 408);

      sub_100DAB194(a1);
    }
  }

  else
  {
    if (qword_1025D4600 != -1)
    {
      sub_101A85004();
    }

    v4 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_ERROR))
    {
      *v5 = 0;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_ERROR, "#LCStats,submitMetrics,CurrentMCT < CA baseline time", v5, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_101A85664();
    }

    sub_100DAB194(a1);
  }
}

void sub_100274E30(uint64_t a1)
{
  if (*(a1 + 16) == 1)
  {
    sub_100274E44(a1);
  }
}

void sub_100274E44(uint64_t a1)
{
  v2 = sub_10000B1F8();
  *buf = 1;
  v3 = sub_10001A6B0(v2, buf);
  v4 = v3 - *(a1 + 32);
  if (v4 <= *a1)
  {
    return;
  }

  if (qword_1025D4600 != -1)
  {
    sub_101B67DC0();
  }

  v5 = qword_1025D4608;
  if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 16);
    *buf = 67240448;
    v38 = v6;
    v39 = 2050;
    *v40 = v4;
    _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEFAULT, "#CLProactiveLoc,rvo,updateOverrideVisit,visit,%{public}d,timeFromLastCheck,%{public}0.2f", buf, 0x12u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101B67DE8(a1, v4);
  }

  *(a1 + 32) = v3;
  v7 = *(a1 + 24);
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = *(a1 + 25);
  }

  v9 = *(a1 + 48);
  if (fabsf(*(a1 + 52)) <= 50.0)
  {
    v10 = fabsf(*(a1 + 56)) > 50.0;
    if (!v9)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v10 = 1;
    if (!v9)
    {
      goto LABEL_17;
    }
  }

  if (v10)
  {
    v11 = 1;
    goto LABEL_18;
  }

LABEL_17:
  v11 = *(a1 + 72);
LABEL_18:
  v12 = *(a1 + 24);
  if (v12)
  {
    if (v3 - *(a1 + 40) > *(a1 + 8))
    {
      *(a1 + 24) = 0;
      ++*(a1 + 116);
      if ((v11 & 1) == 0)
      {
        goto LABEL_27;
      }

      goto LABEL_25;
    }

    v12 = 1;
  }

  v13 = v11 | v12;
  if (v12 & 1) != 0 || ((v11 ^ 1))
  {
    goto LABEL_28;
  }

LABEL_25:
  v14 = *(a1 + 26);
  if (v14)
  {
    v13 = 1;
    *(a1 + 24) = 1;
    *(a1 + 40) = v3;
    *(a1 + 26) = v14 - 1;
    goto LABEL_28;
  }

LABEL_27:
  v13 = 0;
LABEL_28:
  v15 = *(a1 + 88);
  v16 = 0.0;
  if ((v15 > 0.0 || *(a1 + 104)) && (v17 = *(a1 + 96), v17 < v3))
  {
    if (*(a1 + 104))
    {
      v15 = v15 + v3 - *(a1 + 80);
      *(a1 + 80) = v3;
    }

    v18 = v3 - v17;
    v19 = v15 / v18;
    *(a1 + 88) = 0;
    v16 = v19;
    v20 = v19 > 0.8 && v18 > 30.0;
  }

  else
  {
    v20 = 0;
  }

  if (*(a1 + 108))
  {
    v21 = 0;
  }

  else
  {
    v21 = (v9 == 0) & ~*(a1 + 109);
  }

  if (*(a1 + 28) == 1)
  {
    v22 = (v13 ^ 1) & v10 & v21;
  }

  else
  {
    v22 = 0;
  }

  *(a1 + 25) = v22 & 1;
  if (qword_1025D4600 != -1)
  {
    sub_101B67DC0();
  }

  v23 = qword_1025D4608;
  if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEFAULT))
  {
    v24 = *(a1 + 24);
    v25 = *(a1 + 25);
    v26 = *(a1 + 72);
    v27 = *(a1 + 52);
    v28 = *(a1 + 56);
    v29 = *(a1 + 60);
    v30 = *(a1 + 26);
    v31 = *(a1 + 104);
    v32 = v3 - *(a1 + 96);
    *buf = 67243520;
    v38 = v24;
    v39 = 1026;
    *v40 = v25;
    *&v40[4] = 1026;
    *&v40[6] = v9 != 0;
    v41 = 1026;
    v42 = v10;
    v43 = 1026;
    v44 = v26;
    v45 = 2050;
    v46 = v27;
    v47 = 2050;
    v48 = v28;
    v49 = 2050;
    v50 = v29;
    v51 = 1026;
    v52 = v30;
    v53 = 1026;
    v54 = v20;
    v55 = 1026;
    v56 = v31;
    v57 = 2050;
    v58 = v32;
    v59 = 2050;
    v60 = v16;
    v61 = 1026;
    v62 = v21;
    _os_log_impl(dword_100000000, v23, OS_LOG_TYPE_DEFAULT, "#CLProactiveLoc,rvo,visitExitLikely,%{public}d,inVisitLocUseful,%{public}d,wifi,%{public}d,io,%{public}d,motion,%{public}d,cdX,%{public}0.1f,cdY,%{public}0.1f,cdZ,%{public}0.1f,attemptsLeft,%{public}d,walkRun,%{public}d,currWalkRun,%{public}d,sigDur,%{public}0.2f,walkRunFrac,%{public}0.2f,wifiContDisassociated,%{public}d", buf, 0x6Au);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4600 != -1)
    {
      sub_101B67DC0();
    }

    v36 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "void CLProactiveLocationRoutineVisitOverride::updateOverrideVisit()", "%s\n", v36);
    if (v36 != buf)
    {
      free(v36);
    }
  }

  if (*(a1 + 24))
  {
    LOBYTE(v33) = 1;
    goto LABEL_51;
  }

  v33 = *(a1 + 25);
  if ((v33 | v10))
  {
LABEL_51:
    v34 = 0.0;
    if (*(a1 + 104))
    {
      v34 = v3;
    }

    *(a1 + 56) = 0;
    *(a1 + 64) = 0;
    *(a1 + 48) = 0;
    *(a1 + 72) = 0;
    *(a1 + 80) = v34;
    *(a1 + 88) = 0;
    *(a1 + 96) = v3;
    if ((v8 & 1) == (v33 & 1))
    {
      goto LABEL_59;
    }

    goto LABEL_57;
  }

  if (v8)
  {
    LOBYTE(v33) = 0;
LABEL_57:
    if (*(a1 + 176))
    {
      sub_1000B92AC(a1 + 152, v33 & 1);
    }
  }

LABEL_59:
  if ((v7 & 1) == 0 && *(a1 + 24) == 1)
  {
    v35 = *(a1 + 208);
    if (v35)
    {
      (*(*v35 + 48))(v35);
    }
  }
}

void sub_10027543C(uint64_t a1, uint64_t *a2, __int128 *a3)
{
  v3 = *a2;
  v4 = *a3;
  *a3 = 0;
  *(a3 + 1) = 0;
  sub_1002737A8(a1 + 8, v3, &v4);
  if (*(&v4 + 1))
  {
    sub_100008080(*(&v4 + 1));
  }
}

void sub_100275488(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100008080(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1002754A0(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v3 = *a3;
  *a3 = 0;
  *(a3 + 1) = 0;
  sub_100275500(a1 + 8, a2, &v3);
  if (*(&v3 + 1))
  {
    sub_100008080(*(&v3 + 1));
  }
}

void sub_1002754E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100008080(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100275500(uint64_t a1, uint64_t a2, CLConnectionMessage **a3)
{
  v6 = (*(*a2 + 16))(a2);
  DictionaryOfClasses = CLConnectionMessage::getDictionaryOfClasses(*a3, v6);
  sub_100005548(v15, DictionaryOfClasses);
  v14 = 0;
  if (sub_10001CB4C(v15, "kCLConnectionMessageSubscribeKey", &v14))
  {
    v8 = *a1;
    v9 = *(a1 + 8);
    v10 = (a2 + (v9 >> 1));
    if (v9)
    {
      v8 = *(*v10 + v8);
    }

    v8(v10, v14, v15);
  }

  else
  {
    if (qword_1025D4790 != -1)
    {
      sub_101ABD26C();
    }

    v11 = qword_1025D4798;
    if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289026;
      v17 = 0;
      v18 = 2082;
      v19 = "";
      _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Couldn't get value for kCLConnectionMessageSubscribeKey key}", buf, 0x12u);
      if (qword_1025D4790 != -1)
      {
        sub_101ABD26C();
      }
    }

    v12 = qword_1025D4798;
    if (os_signpost_enabled(qword_1025D4798))
    {
      *buf = 68289026;
      v17 = 0;
      v18 = 2082;
      v19 = "";
      _os_signpost_emit_with_name_impl(dword_100000000, v12, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Couldn't get value for kCLConnectionMessageSubscribeKey key", "{msg%{public}.0s:Couldn't get value for kCLConnectionMessageSubscribeKey key}", buf, 0x12u);
    }
  }

  return sub_100005DA4(v15);
}

void sub_100275730(uint64_t a1, int a2)
{
  v4 = objc_alloc_init(NSAutoreleasePool);
  if (qword_1025D4250 != -1)
  {
    sub_101ABD1EC();
  }

  v5 = qword_1025D4258;
  if (os_log_type_enabled(qword_1025D4258, OS_LOG_TYPE_INFO))
  {
    v6 = *(a1 + 24);
    *buf = 138412546;
    *&buf[4] = v6;
    v23 = 1024;
    v24 = a2;
    _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_INFO, "Received MotionActivityUpdate request,client,%@,subscribe,%d", buf, 0x12u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101ABD200(buf);
    v11 = *(a1 + 24);
    v18 = 138412546;
    v19 = v11;
    v20 = 1024;
    v21 = a2;
    v12 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "void CLMotionActivitySubscription::handleRequestMotionActivityUpdate(BOOL, const CLNameValuePair &)", "%s\n", v12);
    if (v12 != buf)
    {
      free(v12);
    }
  }

  if ((sub_100275AF0() & 1) == 0)
  {
    if (qword_1025D4250 != -1)
    {
      sub_101ABD244();
    }

    v10 = qword_1025D4258;
    if (os_log_type_enabled(qword_1025D4258, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_INFO, "Cannot subscribe to motion activity updates, motion activity is not available", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101ABD200(buf);
      LOWORD(v18) = 0;
      v13 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "void CLMotionActivitySubscription::handleRequestMotionActivityUpdate(BOOL, const CLNameValuePair &)", "%s\n", v13);
      if (v13 != buf)
      {
        free(v13);
      }
    }

    v16 = CMErrorMessage;
    v17 = &off_10254FEF0;
    *buf = [NSDictionary dictionaryWithObjects:&v17 forKeys:&v16 count:1];
    sub_100ED274C();
  }

  if ((sub_100275B0C(a1) & 1) == 0)
  {
    v14 = CMErrorMessage;
    v15 = &off_10254FF08;
    *buf = [NSDictionary dictionaryWithObjects:&v15 forKeys:&v14 count:1];
    sub_100ED274C();
  }

  sub_1000F3B70(a1);
  v7 = *(a1 + 48);
  v9 = *(v7 + 8);
  v8 = *(v7 + 16);
  if (a2)
  {
    [v8 register:v9 forNotification:1 registrationInfo:0];
  }

  else
  {
    [v8 unregister:v9 forNotification:1];
  }
}

BOOL sub_100275B34(uint64_t a1)
{
  if (!*(a1 + 196))
  {
    if (sub_100B25354(a1) || (CLConnection::getAuditToken(&v5, *(a1 + 264)), TCCAccessCheckAuditToken()))
    {
      *(a1 + 196) = 1;
    }

    else
    {
      *(a1 + 196) = 2;
      if (qword_1025D47A0 != -1)
      {
        sub_1019EED30();
      }

      v3 = off_1025D47A8;
      if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
      {
        v4 = *(a1 + 48);
        v5 = 138412290;
        v6 = v4;
        _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEFAULT, "#Warning Client %@ did not pass entitlement/tcc checks.", &v5, 0xCu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1019EF8A0();
      }
    }
  }

  return *(a1 + 196) == 1;
}

void sub_100275C68(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a4 + 8) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_101ABD1B0();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v11 = 1;
    v8 = _os_activity_create(dword_100000000, "CL: CLMotionActivitySubscription::onMotionActivityNotification", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v8, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_101ABD1C4();
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
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLMotionActivitySubscription::onMotionActivityNotification, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v11 = 0;
  }

  sub_100275E34(a4, v7, a2, a3);
  if (v11 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

void sub_100275E34(uint64_t a1, uint64_t a2, _DWORD *a3, uint64_t a4)
{
  if (*a3 == 10 || *a3 == 1)
  {
    v7 = [CMMotionActivity alloc];
    v8 = *(a4 + 112);
    v13[6] = *(a4 + 96);
    v13[7] = v8;
    v14 = *(a4 + 128);
    v9 = *(a4 + 48);
    v13[2] = *(a4 + 32);
    v13[3] = v9;
    v10 = *(a4 + 80);
    v13[4] = *(a4 + 64);
    v13[5] = v10;
    v11 = *(a4 + 16);
    v13[0] = *a4;
    v13[1] = v11;
    v12 = [v7 initWithMotionActivity:v13];
    v15 = CMMotionActivityData;
    v16 = v12;
    *&v13[0] = [NSDictionary dictionaryWithObjects:&v16 forKeys:&v15 count:1];

    if (*a3 == 10)
    {
      sub_100ED26C8();
    }

    if (*a3 == 1)
    {
      sub_100275F50();
    }
  }
}

void sub_100275FBC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_100008080(a11);
  }

  _Unwind_Resume(exception_object);
}

void sub_100275FD4(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  sub_10027600C(a1);

  operator delete();
}

void sub_10027600C(wireless_diagnostics::google::protobuf::MessageLite *this)
{
  *this = &off_1024B3B38;
  if (qword_102637DF0 != this)
  {
    v2 = *(this + 2);
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

void sub_100276098(uint64_t a1, double *a2)
{
  if (*(a1 + 2840) == 1)
  {
    v4 = *a2 - *(a1 + 2848);
    *(a1 + 2872) = *(a1 + 2872) + v4;
    if (qword_1025D4770 != -1)
    {
      sub_1002F97A8();
    }

    v5 = qword_1025D4778;
    if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
    {
      v6 = *(a1 + 2848);
      v7 = *a2;
      v8 = *(a1 + 2872);
      *buf = 134349824;
      v20 = v6;
      v21 = 2050;
      v22 = v7;
      v23 = 2050;
      v24 = v4;
      v25 = 2050;
      v26 = v8;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEBUG, "#fusion,slept_mct,%{public}.3f,now_mct,%{public}.3f,AP sleep wakeup after,%{public}.2f,[s],accumulated_sleep_time_s,%{public}.2f", buf, 0x2Au);
    }

    if (sub_10000A100(121, 2))
    {
LABEL_23:
      sub_101A7B5F4(buf);
      v18 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "void cllcf::CLLCFusion::wakeUp(const CFTimeInterval &)", "%s\n", v18);
      if (v18 != buf)
      {
        free(v18);
      }
    }
  }

  else
  {
    if (qword_1025D4770 != -1)
    {
      sub_1002F97A8();
    }

    v9 = qword_1025D4778;
    if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
    {
      v10 = *a2;
      v11 = *(a1 + 2872);
      *buf = 134349312;
      v20 = v10;
      v21 = 2050;
      v22 = v11;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "#fusion,now_mct,%{public}.3f,AP sleep wakeup called while fused state is not in sleep mode,accumulated_sleep_time_s,%{public}.2f,late arrival wakeup notification", buf, 0x16u);
    }

    if (sub_10000A100(121, 2))
    {
      goto LABEL_23;
    }
  }

  v12 = *a2;
  *(a1 + 2856) = *a2;
  *(a1 + 2864) = v12;
  sub_10027645C(a1 + 1552, a2);
  v13 = *(a1 + 224);
  if (v13 != (a1 + 232))
  {
    do
    {
      sub_10027645C((v13 + 29), a2);
      v14 = v13[1];
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
          v15 = v13[2];
          v16 = *v15 == v13;
          v13 = v15;
        }

        while (!v16);
      }

      v13 = v15;
    }

    while (v15 != (a1 + 232));
  }

  for (i = *(a1 + 248); i; i = *i)
  {
    sub_10027645C((i + 25), a2);
  }

  *(a1 + 2840) = 0;
  *(a1 + 2848) = 0xBFF0000000000000;
  *(a1 + 2880) = 3;
}

void sub_100276450(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10037EA9C(a1);
}

void sub_10027645C(uint64_t a1, double *a2)
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
      v15 = v8;
      v16 = 2050;
      v17 = v9;
      v18 = 2050;
      v19 = v6;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEBUG, "KFCV:,ID,%{public}d,mct,%{public}.3f,sleep wakeup after [s],%{public}.2f", buf, 0x1Cu);
    }

    if (sub_10000A100(121, 2))
    {
LABEL_14:
      sub_101912E28(buf);
      v13 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "void cllcf::LCFusionKalmanFilterCV::deviceSleepWakeup(const CFTimeInterval &)", "%s\n", v13);
      if (v13 != buf)
      {
        free(v13);
      }
    }
  }

  else
  {
    if (qword_1025D4770 != -1)
    {
      sub_1001D30A0();
    }

    v10 = qword_1025D4778;
    if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
    {
      v11 = *(a1 + 596);
      v12 = *a2;
      *buf = 67240448;
      v15 = v11;
      v16 = 2050;
      v17 = v12;
      _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEBUG, "KFCV:,ID,%{public}d,mct,%{public}.3f,sleep wakeup called while state is not in sleep mode, waking up", buf, 0x12u);
    }

    if (sub_10000A100(121, 2))
    {
      goto LABEL_14;
    }
  }

  *(a1 + 600) = 0;
  *(a1 + 608) = 0xBFF0000000000000;
}

void sub_100276760(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10037EA9C(a1);
}

void sub_10027676C(uint64_t a1, int *a2, _DWORD *a3, uint64_t a4)
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
    v8 = _os_activity_create(dword_100000000, "CL: CLPipelineLocationProvider::onStatusNotification", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
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
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLPipelineLocationProvider::onStatusNotification, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v11 = 0;
  }

  sub_100279118(a4, a1, a2, a3);
  if (v11 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

void sub_1002769F4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_100102BC8((a2 + 24));
    if (*(a2 + 8) == 1)
    {
      *(a2 + 8) = 0;
    }

    operator delete();
  }
}

uint64_t *sub_100276A58(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    sub_1002769F4(a1, v2);
  }

  return a1;
}

uint64_t *sub_100276A90(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *result = *a2;
  *a2 = v2;
  return result;
}

void sub_100276AA4(uint64_t a1, _DWORD *a2, uint64_t a3, id *a4)
{
  CLProfilingIdentify();
  [objc_msgSend(a4[4] "silo")];
  if (qword_1025D47F0 != -1)
  {
    dispatch_once(&qword_1025D47F0, &stru_1025044A8);
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v12 = 1;
    v6 = _os_activity_create(dword_100000000, "CL: CLGeomagneticModelProviderDaemon::onStatusNotification", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v6, &state);

    if (qword_1025D47F0 != -1)
    {
      dispatch_once(&qword_1025D47F0, &stru_1025044A8);
    }

    v7 = qword_1025D47F8;
    if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68289538;
      v14 = 0;
      v15 = 2082;
      v16 = "";
      v17 = 2082;
      v18 = "activity";
      v19 = 2050;
      v20 = a4;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLGeomagneticModelProviderDaemon::onStatusNotification, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v12 = 0;
  }

  if (*a2 == 2)
  {
    *buf = 0;
    (*(*a4 + 22))(a4, buf);
  }

  else if (*a2 == 3 && (*(a4 + 108) & 1) == 0)
  {
    v8 = a4[8];
    if (v8)
    {
      v9 = (a4 + 8);
      do
      {
        v10 = v8[8];
        if ((v10 & 0x80000000) == 0)
        {
          v9 = v8;
        }

        v8 = *(v8 + ((v10 >> 28) & 8));
      }

      while (v8);
      if (v9 != (a4 + 8) && v9[8] <= 0 && v9[14])
      {
        *buf = 0;
        (*(*a4 + 21))(a4, buf);
      }
    }
  }

  if (v12 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

void sub_100276D18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, os_activity_scope_state_s state, char a11)
{
  if (a11 == 1)
  {
    os_activity_scope_leave(&state);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100276D3C(uint64_t a1, int *a2)
{
  if (qword_1025D42E0 != -1)
  {
    dispatch_once(&qword_1025D42E0, &stru_1025044C8);
  }

  v4 = qword_1025D42E8;
  if (os_log_type_enabled(qword_1025D42E8, OS_LOG_TYPE_DEBUG))
  {
    v5 = *a2;
    *buf = 67109120;
    *&buf[4] = v5;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "Client requested notification %d", buf, 8u);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D42E0 != -1)
    {
      dispatch_once(&qword_1025D42E0, &stru_1025044C8);
    }

    v8 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "virtual BOOL CLGeomagneticModelProviderDaemon::registerForNotificationInternal(const CLGeomagneticModelProvider_Type::Notification &)", "%s\n", v8);
    if (v8 != buf)
    {
      free(v8);
    }
  }

  if (!*(a1 + 400))
  {
    sub_100D9D2B8();
  }

  if (!*a2)
  {
    sub_1002770FC(a1);
    sub_1002776FC(a1);
    [*(*(a1 + 400) + 16) register:*(*(a1 + 400) + 8) forNotification:4 registrationInfo:0];
    if (qword_1025D42E0 != -1)
    {
      dispatch_once(&qword_1025D42E0, &stru_1025044C8);
    }

    v6 = qword_1025D42E8;
    if (os_log_type_enabled(qword_1025D42E8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "registered as location spectator to compute geomagnetic data", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D42E0 != -1)
      {
        dispatch_once(&qword_1025D42E0, &stru_1025044C8);
      }

      v9 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "virtual BOOL CLGeomagneticModelProviderDaemon::registerForNotificationInternal(const CLGeomagneticModelProvider_Type::Notification &)", "%s\n", v9);
      if (v9 != buf)
      {
        free(v9);
      }
    }
  }

  return 1;
}

void sub_1002770FC(uint64_t a1)
{
  if (*(a1 + 168) >= 0.0)
  {
    if (qword_1025D42E0 != -1)
    {
      dispatch_once(&qword_1025D42E0, &stru_1025044C8);
    }

    v4 = qword_1025D42E8;
    if (os_log_type_enabled(qword_1025D42E8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEFAULT, "loadGeomagneticDataFromCache already loaded", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D42E0 != -1)
      {
        dispatch_once(&qword_1025D42E0, &stru_1025044C8);
      }

      LOWORD(v22) = 0;
      goto LABEL_19;
    }
  }

  else
  {
    v2 = sub_100B55A18(a1 + 176);
    if ((v2 - 1) > 1)
    {
      if (qword_1025D42E0 != -1)
      {
        dispatch_once(&qword_1025D42E0, &stru_1025044C8);
      }

      v6 = qword_1025D42E8;
      if (os_log_type_enabled(qword_1025D42E8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67240192;
        LODWORD(v25) = v2;
        _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEFAULT, "loadGeomagneticDataFromCache loading with authorization status %{public}d", buf, 8u);
      }

      if (sub_10000A100(121, 2))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1025D42E0 != -1)
        {
          dispatch_once(&qword_1025D42E0, &stru_1025044C8);
        }

        v22 = 67240192;
        LODWORD(v23) = v2;
        v19 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "void CLGeomagneticModelProviderDaemon::loadGeomagneticDataFromCache()", "%s\n", v19);
        if (v19 != buf)
        {
          free(v19);
        }
      }

      v21 = 0;
      v7 = sub_1000206B4();
      if (sub_1004FC4F4(v7, @"GeomagneticModel", &v21) && [v21 count] == 4)
      {
        [objc_msgSend(v21 objectAtIndexedSubscript:{0), "doubleValue"}];
        v9 = v8;
        [objc_msgSend(v21 objectAtIndexedSubscript:{1), "doubleValue"}];
        v11 = v10;
        [objc_msgSend(v21 objectAtIndexedSubscript:{2), "doubleValue"}];
        v13 = v12;
        [objc_msgSend(v21 objectAtIndexedSubscript:{3), "doubleValue"}];
        v15 = v14;
        if (qword_1025D42E0 != -1)
        {
          dispatch_once(&qword_1025D42E0, &stru_1025044C8);
        }

        v16 = qword_1025D42E8;
        if (os_log_type_enabled(qword_1025D42E8, OS_LOG_TYPE_DEBUG))
        {
          *buf = 134349056;
          v25 = v9;
          _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_DEBUG, "recovered geomagnetic information @ %{public}.3f", buf, 0xCu);
        }

        if (sub_10000A100(121, 2))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1025D42E0 != -1)
          {
            dispatch_once(&qword_1025D42E0, &stru_1025044C8);
          }

          v22 = 134349056;
          v23 = v9;
          v20 = _os_log_send_and_compose_impl();
          sub_100152C7C("Generic", 1, 0, 2, "void CLGeomagneticModelProviderDaemon::loadGeomagneticDataFromCache()", "%s\n", v20);
          if (v20 != buf)
          {
            free(v20);
          }
        }

        *(a1 + 160) = v15;
        *(a1 + 168) = v9;
        *(a1 + 136) = v11;
        *(a1 + 152) = v13;
        v17 = __sincos_stret(v15 * 0.0174532924);
        *(a1 + 144) = v11 * v17.__cosval;
        v18 = __sincos_stret(v13 * 0.0174532924);
        *(a1 + 112) = v18.__cosval * (v11 * v17.__cosval);
        *(a1 + 120) = v18.__sinval * (v11 * v17.__cosval);
        *(a1 + 128) = v11 * v17.__sinval;
        sub_1018531EC(a1);
      }
    }

    else
    {
      if (qword_1025D42E0 != -1)
      {
        dispatch_once(&qword_1025D42E0, &stru_1025044C8);
      }

      v3 = qword_1025D42E8;
      if (os_log_type_enabled(qword_1025D42E8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67240192;
        LODWORD(v25) = v2;
        _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEFAULT, "loadGeomagneticDataFromCache not loading because deauthorized (%{public}d)", buf, 8u);
      }

      if (sub_10000A100(121, 2))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1025D42E0 != -1)
        {
          dispatch_once(&qword_1025D42E0, &stru_1025044C8);
        }

        v22 = 67240192;
        LODWORD(v23) = v2;
LABEL_19:
        v5 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "void CLGeomagneticModelProviderDaemon::loadGeomagneticDataFromCache()", "%s\n", v5);
        if (v5 != buf)
        {
          free(v5);
        }
      }
    }
  }
}

void sub_1002776FC(uint64_t a1)
{
  Current = CFAbsoluteTimeGetCurrent();
  v3 = *(a1 + 416);
  v4 = v3 * 0.5;
  v5 = *(a1 + 168);
  if (v5 >= 0.0 && Current - v5 < v4)
  {
    if (qword_1025D42E0 != -1)
    {
      dispatch_once(&qword_1025D42E0, &stru_1025044C8);
    }

    v10 = qword_1025D42E8;
    if (os_log_type_enabled(qword_1025D42E8, OS_LOG_TYPE_DEBUG))
    {
      v11 = *(a1 + 168);
      *buf = 134218240;
      v16 = v11;
      v17 = 2048;
      v18 = v4;
      _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEBUG, "current location is still fresh, not requesting coarse location for computing geomagnetic data, gmmTimestamp %.1f gmmFreshnessDuration %.1f", buf, 0x16u);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D42E0 == -1)
      {
        goto LABEL_19;
      }

      goto LABEL_34;
    }
  }

  else
  {
    v7 = v3 * 0.4;
    if (Current - *(a1 + 424) >= v3 * 0.4)
    {
      if ((*(a1 + 408) & 1) == 0 && *(a1 + 400))
      {
        if (qword_1025D42E0 != -1)
        {
          dispatch_once(&qword_1025D42E0, &stru_1025044C8);
        }

        v13 = qword_1025D42E8;
        if (os_log_type_enabled(qword_1025D42E8, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_DEFAULT, "requesting coarse location for computing geomagnetic data", buf, 2u);
        }

        if (sub_10000A100(121, 2))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1025D42E0 != -1)
          {
            dispatch_once(&qword_1025D42E0, &stru_1025044C8);
          }

          v14 = _os_log_send_and_compose_impl();
          sub_100152C7C("Generic", 1, 0, 2, "void CLGeomagneticModelProviderDaemon::startCoarseLocationUpdates()", "%s\n", v14);
          if (v14 != buf)
          {
            free(v14);
          }
        }

        [*(*(a1 + 400) + 16) register:*(*(a1 + 400) + 8) forNotification:2 registrationInfo:0];
        *(a1 + 408) = 1;
        *(a1 + 424) = Current;
        [*(a1 + 376) setNextFireDelay:20.0];
      }
    }

    else
    {
      if (qword_1025D42E0 != -1)
      {
        dispatch_once(&qword_1025D42E0, &stru_1025044C8);
      }

      v8 = qword_1025D42E8;
      if (os_log_type_enabled(qword_1025D42E8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = *(a1 + 424);
        *buf = 134218240;
        v16 = v9;
        v17 = 2048;
        v18 = v7;
        _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEFAULT, "avoiding frequent coarse location request for computing geomagnetic data, fLastCoarseLocationRequestTimestamp %.1f minimumLocationRequestInterval %.1f", buf, 0x16u);
      }

      if (sub_10000A100(121, 2))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1025D42E0 == -1)
        {
LABEL_19:
          v12 = _os_log_send_and_compose_impl();
          sub_100152C7C("Generic", 1, 0, 2, "void CLGeomagneticModelProviderDaemon::startCoarseLocationUpdates()", "%s\n", v12);
          if (v12 != buf)
          {
            free(v12);
          }

          return;
        }

LABEL_34:
        dispatch_once(&qword_1025D42E0, &stru_1025044C8);
        goto LABEL_19;
      }
    }
  }
}

uint64_t sub_100277BA4(uint64_t a1, int *a2)
{
  v3 = *a2;
  if ((*a2 - 3) < 3)
  {
    if (*(a1 + 128))
    {
      goto LABEL_13;
    }

    *(a1 + 128) = sub_100B55630(a1);
    goto LABEL_11;
  }

  if (v3 == 22)
  {
    if (*(a1 + 136))
    {
      goto LABEL_13;
    }

    *(a1 + 136) = sub_100B55630(a1);
LABEL_11:
    if ((*(a1 + 188) & 1) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  if (v3 == 39 && !*(a1 + 144))
  {
    *(a1 + 144) = sub_100B55630(a1);
    if (*(a1 + 188) == 1)
    {
LABEL_12:
      CLClientSetMatchInfoEnabled();
    }
  }

LABEL_13:

  return sub_1000F4588();
}

void sub_100277C60(uint64_t a1)
{
  if (*(a1 + 120))
  {
    *buf = 0;
    v2 = 1;
    if (sub_10000608C(a1, buf, 1))
    {
      v3 = -1;
    }

    else
    {
      *buf = 1;
      if (sub_10000608C(a1, buf, 1))
      {
        v3 = 100;
        v2 = 1;
      }

      else
      {
        *buf = 2;
        v4 = sub_10000608C(a1, buf, 1);
        v2 = v4 != 0;
        if (v4)
        {
          v3 = 3000;
        }

        else
        {
          v3 = 2147483646;
        }
      }
    }

    if (qword_1025D48A0 != -1)
    {
      sub_1019F877C();
    }

    v5 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
    {
      v6 = [+[NSString stringWithFormat:](NSString UTF8String:CFSTR(""bundleIdentifier];
      *buf = 67109378;
      *v51 = v3;
      *&v51[4] = 2080;
      *&v51[6] = v6;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEBUG, "BLP: Registering with desired accuracy %d (%s)", buf, 0x12u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1019F89DC(a1, v3);
    }

    if (v2)
    {
      v7 = sub_100278848(a1, &unk_101CED2A4, 3);
      if (qword_1025D48A0 != -1)
      {
        sub_1019F877C();
      }

      v8 = qword_1025D48A8;
      if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
      {
        v9 = [+[NSString stringWithFormat:](NSString UTF8String:CFSTR(""bundleIdentifier];
        *buf = 134218242;
        *v51 = v7;
        *&v51[8] = 2080;
        *&v51[10] = v9;
        _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEBUG, "BLP: Location distance filter is now %.2f (%s)", buf, 0x16u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1019F8C34(a1);
      }

      CLClientStartLocationUpdates();
    }

    else
    {
      if (qword_1025D48A0 != -1)
      {
        sub_1019F877C();
      }

      v10 = qword_1025D48A8;
      if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
      {
        v11 = [+[NSString stringWithFormat:](NSString UTF8String:CFSTR(""bundleIdentifier];
        *buf = 136315138;
        *v51 = v11;
        _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEBUG, "BLP: Stopping location updates (%s)", buf, 0xCu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1019F8B20(a1);
      }

      CLClientStopLocationUpdates();
    }
  }

  if (*(a1 + 128))
  {
    *buf = 4;
    if (sub_10000608C(a1, buf, 1))
    {
LABEL_39:
      v14 = sub_100278848(a1, &unk_101CED2B0, 3);
      if (qword_1025D48A0 != -1)
      {
        sub_1019F877C();
      }

      v15 = qword_1025D48A8;
      if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
      {
        v16 = [+[NSString stringWithFormat:](NSString UTF8String:CFSTR(""bundleIdentifier];
        *buf = 134218242;
        *v51 = v14;
        *&v51[8] = 2080;
        *&v51[10] = v16;
        _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_DEBUG, "BLP: Bystander distance filter is now %.2f (%s)", buf, 0x16u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1019F9080(a1);
      }

      CLClientStartLocationUpdates();
      goto LABEL_46;
    }

    *buf = 3;
    if (sub_10000608C(a1, buf, 1))
    {
      if (qword_1025D48A0 != -1)
      {
        sub_1019F877C();
      }

      v12 = qword_1025D48A8;
      if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEFAULT))
      {
        v13 = [+[NSString stringWithFormat:](NSString UTF8String:CFSTR(""bundleIdentifier];
        *buf = 136315138;
        *v51 = v13;
        _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_DEFAULT, "#Warning BLP: CLBundleLocationProvider does not support spectators (%s)", buf, 0xCu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1019F8D54(a1);
      }

      goto LABEL_39;
    }

    *buf = 5;
    if (sub_10000608C(a1, buf, 1))
    {
      v36 = *(a1 + 184);
      if (v36 == 1)
      {
        if (qword_1025D4870 != -1)
        {
          sub_1019F8E70();
        }

        v40 = qword_1025D4878;
        if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_impl(dword_100000000, v40, OS_LOG_TYPE_DEBUG, "BLP: Set newAccuracy based on Rhythmic status: kCLClientLocationAccuracyRhythmicWaking", buf, 2u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_1019F8E98();
        }
      }

      else if (!v36)
      {
        if (qword_1025D4870 != -1)
        {
          sub_1019F8E70();
        }

        v37 = qword_1025D4878;
        if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_impl(dword_100000000, v37, OS_LOG_TYPE_DEBUG, "BLP: Set newAccuracy based on Rhythmic status: kCLClientLocationAccuracyRhythmicNonWaking", buf, 2u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_1019F8F8C();
        }
      }

      goto LABEL_39;
    }

    if (qword_1025D48A0 != -1)
    {
      sub_1019F877C();
    }

    v38 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
    {
      v39 = [+[NSString stringWithFormat:](NSString UTF8String:CFSTR(""bundleIdentifier];
      *buf = 136315138;
      *v51 = v39;
      _os_log_impl(dword_100000000, v38, OS_LOG_TYPE_DEBUG, "BLP: Stopping bystander location updates (%s)", buf, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1019F91A0(a1);
    }

    CLClientStopLocationUpdates();
  }

LABEL_46:
  if (*(a1 + 136))
  {
    *buf = 22;
    if (sub_10000608C(a1, buf, 1))
    {
      v17 = *(a1 + 64);
      if (!v17)
      {
        goto LABEL_55;
      }

      v18 = a1 + 64;
      do
      {
        if (*(v17 + 32) >= 22)
        {
          v18 = v17;
        }

        v17 = *(v17 + 8 * (*(v17 + 32) < 22));
      }

      while (v17);
      if (v18 == a1 + 64 || *(v18 + 32) >= 23)
      {
LABEL_55:
        v18 = a1 + 64;
      }

      v19 = *(v18 + 40);
      if (v19 == (v18 + 48))
      {
        v20 = 0;
      }

      else
      {
        v20 = 0;
        do
        {
          v21 = v19[1];
          v22 = v19;
          if (v21)
          {
            do
            {
              v23 = v21;
              v21 = *v21;
            }

            while (v21);
          }

          else
          {
            do
            {
              v23 = v22[2];
              v24 = *v23 == v22;
              v22 = v23;
            }

            while (!v24);
          }

          v20 += *(v19 + 56);
          v19 = v23;
        }

        while (v23 != (v18 + 48));
      }

      if (qword_1025D4630 != -1)
      {
        sub_1019F92B4();
      }

      v27 = qword_1025D4638;
      if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_DEFAULT))
      {
        v28 = [*(a1 + 152) UTF8String];
        v29 = *(v18 + 56);
        *buf = 136446722;
        *v51 = v28;
        *&v51[8] = 2050;
        *&v51[10] = v29;
        v52 = 1026;
        v53 = v20;
        _os_log_impl(dword_100000000, v27, OS_LOG_TYPE_DEFAULT, "@WsbBundle, %{public}s, clients, %{public}ld, numActive, %{public}d", buf, 0x1Cu);
      }

      if (sub_10000A100(121, 2))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1025D4630 != -1)
        {
          sub_1019F92B4();
        }

        v41 = [*(a1 + 152) UTF8String];
        v42 = *(v18 + 56);
        v44 = 136446722;
        v45 = v41;
        v46 = 2050;
        v47 = v42;
        v48 = 1026;
        v49 = v20;
        v43 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "void CLBundleLocationProvider::registerForAppropriateLocationAccuracy()", "%s\n", v43);
        if (v43 != buf)
        {
          free(v43);
        }
      }

      v44 = 22;
      sub_100278848(a1, &v44, 1);
      if (qword_1025D48A0 != -1)
      {
        sub_1019F877C();
      }

      v30 = qword_1025D48A8;
      if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
      {
        v31 = [+[NSString stringWithFormat:](NSString UTF8String:CFSTR(""bundleIdentifier];
        *buf = 136315138;
        *v51 = v31;
        _os_log_impl(dword_100000000, v30, OS_LOG_TYPE_DEBUG, "BLP: starting wifi location batch, bundleId, %s", buf, 0xCu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1019F92DC(a1);
      }

      CLClientStartLocationUpdates();
    }

    else
    {
      CLClientStopLocationUpdates();
      if (qword_1025D48A0 != -1)
      {
        sub_1019F877C();
      }

      v25 = qword_1025D48A8;
      if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
      {
        v26 = [+[NSString stringWithFormat:](NSString UTF8String:CFSTR(""bundleIdentifier];
        *buf = 136315138;
        *v51 = v26;
        _os_log_impl(dword_100000000, v25, OS_LOG_TYPE_DEBUG, "BLP: stopping wifi location batch, bundleId, %s", buf, 0xCu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1019F93F0(a1);
      }
    }
  }

  if (*(a1 + 144))
  {
    *buf = 39;
    if (sub_10000608C(a1, buf, 1))
    {
      v44 = 39;
      sub_100278848(a1, &v44, 1);
      if (qword_1025D48A0 != -1)
      {
        sub_1019F877C();
      }

      v32 = qword_1025D48A8;
      if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
      {
        v33 = [+[NSString stringWithFormat:](NSString UTF8String:CFSTR(""bundleIdentifier];
        *buf = 136315138;
        *v51 = v33;
        _os_log_impl(dword_100000000, v32, OS_LOG_TYPE_DEBUG, "BLP: starting BystanderPreLoiOverride, bundleId, %s", buf, 0xCu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1019F9504(a1);
      }

      CLClientStartLocationUpdates();
    }

    else
    {
      if (qword_1025D48A0 != -1)
      {
        sub_1019F877C();
      }

      v34 = qword_1025D48A8;
      if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
      {
        v35 = [+[NSString stringWithFormat:](NSString UTF8String:CFSTR(""bundleIdentifier];
        *buf = 136315138;
        *v51 = v35;
        _os_log_impl(dword_100000000, v34, OS_LOG_TYPE_DEBUG, "BLP: stopping BystanderPreLoiOverride, bundleId, %s", buf, 0xCu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1019F9618(a1);
      }

      CLClientStopLocationUpdates();
    }
  }
}

double sub_100278848(uint64_t a1, uint64_t a2, int a3)
{
  if (!a3)
  {
    return 1.79769313e308;
  }

  v3 = 0;
  v6 = *(a1 + 64);
  v4 = a1 + 64;
  v5 = v6;
  result = 1.79769313e308;
  do
  {
    if (v5)
    {
      v8 = *(a2 + 4 * v3);
      v9 = v4;
      v10 = v5;
      do
      {
        if (*(v10 + 32) >= v8)
        {
          v9 = v10;
        }

        v10 = *(v10 + 8 * (*(v10 + 32) < v8));
      }

      while (v10);
      if (v9 != v4 && v8 >= *(v9 + 32))
      {
        v11 = *(v9 + 40);
        v12 = (v9 + 48);
        if (v11 != v12)
        {
          do
          {
            if (v11[6] < result)
            {
              result = v11[6];
            }

            v13 = *(v11 + 1);
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
                v14 = *(v11 + 2);
                v15 = *v14 == v11;
                v11 = v14;
              }

              while (!v15);
            }

            v11 = v14;
          }

          while (v14 != v12);
        }
      }
    }

    ++v3;
  }

  while (v3 != a3);
  return result;
}

void sub_10027890C(uint64_t a1, uint64_t a2, int *a3, _BYTE *a4)
{
  v5 = *a3;
  if (*a3 > 6)
  {
    if (v5 == 7)
    {
      *(a1 + 314) = a4[9];
    }

    else
    {
      if (v5 != 8)
      {
        return;
      }

      *(a1 + 313) = *a4;
    }

    v11 = sub_100126B4C(a1);
    v12 = sub_1001278E0(a1);
    v13 = sub_100126564(a1);
    v14 = 0x10000;
    if (!v13)
    {
      v14 = 0;
    }

    v15 = 256;
    if (!v12)
    {
      v15 = 0;
    }

    sub_100128330(a1, v15 | v11 | v14);
  }

  else
  {
    if (v5 == 2)
    {
      if (qword_1025D4340 != -1)
      {
        sub_101BB96A4();
      }

      v10 = qword_1025D4348;
      if (os_log_type_enabled(qword_1025D4348, OS_LOG_TYPE_INFO))
      {
        *v16 = 0;
        _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_INFO, "Turning off slow timer", v16, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101BBC08C();
      }

      v7 = *(a1 + 736);
      v9 = 1.79769313e308;
      v8 = 1.79769313e308;
    }

    else
    {
      if (v5 != 3)
      {
        return;
      }

      if (qword_1025D4340 != -1)
      {
        sub_101BB96A4();
      }

      v6 = qword_1025D4348;
      if (os_log_type_enabled(qword_1025D4348, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_INFO, "Scheduling slow timer", buf, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101BBC168();
      }

      v7 = *(a1 + 736);
      v8 = 60.0;
      v9 = 1.0;
    }

    [v7 setNextFireDelay:v9 interval:v8];
  }
}

void sub_100278B00(uint64_t a1, uint64_t a2, _DWORD *a3, _BYTE *a4)
{
  if (*a3 == 15)
  {
    *(a1 + 667) = *a4;
    if (qword_1025D4650 != -1)
    {
      sub_10197D50C();
    }

    v5 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
    {
      v6 = (a1 + 1144);
      if (*(a1 + 1167) < 0)
      {
        v6 = *v6;
      }

      v7 = *(a1 + 667);
      *buf = 136315394;
      v10 = v6;
      v11 = 1024;
      v12 = v7;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEFAULT, "GPSODOM%s,Low Power Mode = %d", buf, 0x12u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10197DA64(a1, (a1 + 667));
    }

    v8 = *(a1 + 24);
    if (v8)
    {
      sub_10014F998(v8, *(a1 + 664), *(a1 + 661), *(a1 + 665), *(a1 + 662), *(a1 + 666), *(a1 + 663), *(a1 + 667), *(a1 + 668));
    }
  }
}

void sub_100278C3C(uint64_t a1, int a2, int a3)
{
  v6 = a1 + 24 * a2;
  v7 = v6 + 1680;
  if (*(v6 + 1688) != a3 || *(v6 + 1696) < 1.0)
  {
    v8 = sub_10000B1F8();
    *buf = 0;
    v9 = sub_10001A6B0(v8, buf);
    v10 = *(v7 + 16);
    if (v10 >= 1.0)
    {
      v11 = v9 - v10;
    }

    else
    {
      v11 = -1.0;
    }

    if (qword_1025D4620 != -1)
    {
      sub_1018F97D0();
    }

    v12 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
    {
      v13 = *v7;
      v14 = sub_10000B1F8();
      v15 = sub_100125220(v14);
      *buf = 136447234;
      v19 = v13;
      v20 = 1026;
      v21 = a3;
      v22 = 2050;
      v23 = v11;
      v24 = 2050;
      v25 = v9;
      v26 = 2050;
      v27 = v15;
      _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_DEFAULT, "@ClxEvent, %{public}s, %{public}d, delta, %{public}.1f, now, %{public}.3f, propagation_us,%{public}.3f", buf, 0x30u);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4620 != -1)
      {
        sub_1018F97D0();
      }

      v16 = sub_10000B1F8();
      sub_100125220(v16);
      v17 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "void CLLocationController::handleStateEvent(NegativeEvent, BOOL)", "%s\n", v17);
      if (v17 != buf)
      {
        free(v17);
      }
    }

    *(v7 + 8) = a3;
    *(v7 + 16) = v9;
    if (a2 == 11 || a2 == 4)
    {
      sub_10027C530(a1);
    }
  }
}

uint64_t sub_100278ECC(uint64_t result, double a2)
{
  if ((*(result + 768) & 1) == 0)
  {
    v2 = *(result + 752);
    if (v2 > 0.0)
    {
      v3.f64[0] = a2 - v2;
      v4 = v3.f64[0] + *(result + 760);
      *(result + 760) = v4;
      v5 = *(result + 864);
      if (v3.f64[0] < v5 || v5 < 0.0)
      {
        v5 = v3.f64[0];
      }

      v3.f64[1] = v4;
      *(result + 848) = vbslq_s8(vcgtq_f64(v3, *(result + 848)), v3, *(result + 848));
      *(result + 864) = v5;
    }
  }

  *(result + 768) = 1;
  *(result + 752) = a2;
  return result;
}

void sub_100278F2C(uint64_t a1, int *a2, unsigned __int8 *a3)
{
  if (qword_1025D4600 != -1)
  {
    sub_101A85004();
  }

  v6 = qword_1025D4608;
  if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
  {
    v7 = *(a1 + 184);
    v8 = *a2;
    v13[0] = 67240448;
    v13[1] = v7;
    v14 = 1026;
    v15 = v8;
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "#CLProactiveLoc,active,%{public}d,feedDaemonStatus,%{public}d", v13, 0xEu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101A86750();
  }

  v9 = *a2;
  if (*a2 > 6)
  {
    if (v9 == 7)
    {
      *(a1 + 8) = a3[9];
    }

    else if (v9 == 15)
    {
      v11 = *a3;
      *(a1 + 188) = v11;
      if (v11 == 1)
      {
        sub_1002B0884(a1, 4);
        sub_100DA8A00(a1, 1.79769313e308);
      }

      else
      {
        sub_1002746C0(a1);
      }
    }
  }

  else if (v9 == 2)
  {
    v12 = sub_10000B1F8();
    v13[0] = 1;
    *(a1 + 416) = sub_10001A6B0(v12, v13);
    sub_100DAA574(a1);
    *(a1 + 928) = 1;
    sub_1002B0884(a1, 1);
  }

  else if (v9 == 3)
  {
    ++*(a1 + 536);
    v10 = sub_10000B1F8();
    v13[0] = 1;
    *(a1 + 408) = sub_10001A6B0(v10, v13);
    sub_100274324(a1);
    *(a1 + 928) = 0;
    if ((*(a1 + 184) & 1) == 0)
    {
      sub_1002746C0(a1);
      sub_100274E30(a1 + 600);
    }
  }
}

void sub_100279118(uint64_t a1, uint64_t a2, int *a3, _DWORD *a4)
{
  v7.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
  v8 = *a3;
  if (*a3 == 6)
  {
    if (*a4)
    {
      v12 = 1;
    }

    else
    {
      v12 = a4[1] == 0;
    }

    if (!v12)
    {

      sub_1010A274C(a1);
    }
  }

  else if (v8 == 3)
  {
    rep = v7.__d_.__rep_;
    v11 = *(a1 + 144);

    sub_1002791FC(v11, rep);
  }

  else if (v8 == 2)
  {
    v9 = *(a1 + 144);

    sub_100380858(v9);
  }
}

void sub_1002791FC(uint64_t a1, uint64_t a2)
{
  if (qword_1025D4620 != -1)
  {
    sub_101869E48();
  }

  v4 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "kNotificationWake - startProvider()", buf, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10186E7E8();
  }

  [*(a1 + 8) resetNavModeEstimator];
  if ((*(**(a1 + 24) + 200))(*(a1 + 24)) >= 1)
  {
    if (qword_1025D4620 != -1)
    {
      sub_101869E5C();
    }

    v5 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
    {
      *v8 = 0;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEBUG, "Start location in wake notification", v8, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10186E8C4();
    }

    sub_10017EF60(a1, a2);
  }

  if (qword_1025D4620 != -1)
  {
    sub_101869E5C();
  }

  v6 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
  {
    *v7 = 0;
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "kNotificationWake - startProvider() done", v7, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10186E9A0();
  }
}

uint64_t sub_1002793BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = 0;
  v11 = 0;
  v12 = 0;
  __asm { FMOV            V0.2D, #-1.0 }

  v9 = _Q0;
  return (*(*a1 + 96))(a1, a2, a3, &v9);
}

uint64_t sub_100279410(char *a1, int a2, int *a3, __int128 *a4)
{
  v6 = sub_100044404(a1, a2, a3, a4);
  if (v6)
  {
    v7 = *a3;
    if (*a3 < 6 || (v7 != 39 ? (v8 = v7 == 22) : (v8 = 1), v8))
    {
      sub_100277C60(a1);
    }
  }

  return v6;
}

void sub_10027946C(uint64_t a1, int *a2, _BYTE *a3, uint64_t a4)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a4 + 32) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_101BB9A84();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v11 = 1;
    v8 = _os_activity_create(dword_100000000, "CL: Self::onDaemonStatus", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v8, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_101BB9A98();
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
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:Self::onDaemonStatus, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v11 = 0;
  }

  sub_10027890C(a4, v7, a2, a3);
  if (v11 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

id sub_100279638(uint64_t a1, unsigned int *a2, __int128 *a3, void *a4)
{
  v4 = *a2;
  v6 = *a3;
  v7 = *(a3 + 2);
  return [a4 _onDaemonStatusNotification:v4 data:&v6];
}

void sub_100279838(uint64_t a1, int *a2, unsigned __int8 *a3, uint64_t a4)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a4 + 32) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_101A60E38();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v11 = 1;
    v8 = _os_activity_create(dword_100000000, "CL: CLUnifiedCellLocationProvider::onStatusNotification", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v8, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_101A60E4C();
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
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLUnifiedCellLocationProvider::onStatusNotification, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v11 = 0;
  }

  sub_100279A04(a4, v7, a2, a3);
  if (v11 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

void sub_100279A04(uint64_t a1, uint64_t a2, int *a3, unsigned __int8 *a4)
{
  v5 = *a3;
  if (*a3 > 7)
  {
    if (v5 == 8)
    {
      v17 = *a4;
      v18 = a1 + 192;

      sub_10056C358(v18, v17);
    }

    else if (v5 == 16)
    {
      if (qword_1025D4620 != -1)
      {
        sub_101A60CCC();
      }

      v6 = qword_1025D4628;
      if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
      {
        v7 = *(a1 + 3480);
        v8 = *(a1 + 3484);
        v9 = *(a1 + 3488);
        v10 = *(a1 + 3492);
        *buf = 67240960;
        v20 = v7;
        v21 = 1026;
        v22 = v8;
        v23 = 1026;
        v24 = v9;
        v25 = 1026;
        v26 = v10;
        _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "UclpMetric, heartbeat, registrants, %{public}d, requests, %{public}d, infonotify, %{public}d, monitor, %{public}d", buf, 0x1Au);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101A61E20();
      }

      AnalyticsSendEventLazy();
      *(a1 + 3480) = 0u;
      sub_10016D6E0((a1 + 2800));
      sub_1001ECED8(a1 + 2800);
      *buf = 0;
      if (sub_10000608C(a1, buf, 1) && *(a1 + 3504) > 0.0)
      {
        v11 = (2290649225 * (CFAbsoluteTimeGetCurrent() - *(a1 + 3504) + 30.0)) >> 32;
        if (qword_1025D4620 != -1)
        {
          sub_101A60DCC();
        }

        v12 = ((v11 >> 5) + (v11 >> 31));
        v13 = qword_1025D4628;
        if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
        {
          *buf = 67240192;
          v20 = v12;
          _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_DEBUG, "UclpMetric, regperiod, %{public}d", buf, 8u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_101A61F44(v12);
        }

        AnalyticsSendEventLazy();
      }
    }
  }

  else if (v5 == 3)
  {
    if (sub_10006BDFC(a1))
    {
      v14.n128_f64[0] = CFAbsoluteTimeGetCurrent();
      v15 = *(*a1 + 312);
      v16.n128_u64[0] = 2.0;

      v15(a1, "wake", v14, v16);
    }
  }

  else if (v5 == 6)
  {
    *(a1 + 2792) = *(a4 + 1);
  }
}

uint64_t sub_100279DB4(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    operator delete();
  }

  return result;
}

id sub_100279DD4(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (qword_1025D4650 != -1)
  {
    sub_1002981B4();
  }

  v2 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
  {
    *v4 = 0;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEBUG, "#timingadvance,reset timer", v4, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1017702E8();
  }

  result = [*(v1 + 2920) setNextFireDelay:1.79769313e308];
  *(v1 + 2912) = 0;
  return result;
}

void sub_100279E80(uint64_t a1, _DWORD *a2, uint64_t a3)
{
  if (*a2 == 14)
  {
    v7 = *(*a1 + 576);

    v7();
  }

  else if (*a2 == 7)
  {
    v8 = 4;
    v4 = (a3 + 9);
    BYTE1(v8) = *(a3 + 9);
    BYTE2(v8) = *(a3 + 8);
    HIBYTE(v8) = sub_10061EC2C(*(a3 + 12));
    if (qword_1025D4250 != -1)
    {
      sub_101ADB32C();
    }

    v5 = qword_1025D4258;
    if (os_log_type_enabled(qword_1025D4258, OS_LOG_TYPE_INFO))
    {
      v6 = *v4;
      *buf = 67109120;
      v10 = v6;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_INFO, "Sending battery connection update, connected,%d", buf, 8u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101ADEEA4(v4);
    }

    sub_100F65ED0(a1 + 192, &v8, 0);
  }
}

uint64_t sub_10027A020(uint64_t a1)
{
  v2 = sub_10001CF04();
  v3 = v2;
  v4 = *(a1 + 320);
  v5 = *(a1 + 344) ^ 1;
  v6 = *(a1 + 328) - v4;
  v7 = *(a1 + 112);
  if (v4 > 0.0)
  {
    v8 = v2;
  }

  else
  {
    v8 = 0;
  }

  v9 = *(a1 + 356);
  v10 = v8 & v5;
  if (v6 <= v7)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  v12 = *(a1 + 348);
  if (v9 != 1)
  {
    v11 = 0;
  }

  if (v12 > 0)
  {
    v13 = v11;
  }

  else
  {
    v13 = 0;
  }

  if (v13 == 1)
  {
    *(a1 + 348) = v12 - 1;
  }

  if (qword_1025D4600 != -1)
  {
    sub_101A85004();
  }

  v14 = qword_1025D4608;
  if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEFAULT))
  {
    v15 = *(a1 + 184);
    v16 = *(a1 + 348);
    *buf = 67241984;
    v20 = v15;
    v21 = 1026;
    v22 = v13;
    v23 = 1026;
    v24 = v3;
    v25 = 1026;
    v26 = v4 > 0.0;
    v27 = 1026;
    v28 = v5 & 1;
    v29 = 1026;
    v30 = v6 <= v7;
    v31 = 1026;
    v32 = v9 == 1;
    v33 = 1026;
    v34 = v16;
    _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_DEFAULT, "#CLProactiveLoc,active,%{public}d,isRateOverrideTrue,%{public}d,isSessRtryAllowed,%{public}d,notFirstSession,%{public}d,prevNoYield,%{public}d,prevSessionDurationSmall,%{public}d,prevAPSleep,%{public}d,remainingAttempts,%{public}d", buf, 0x32u);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4600 != -1)
    {
      sub_101A84F98();
    }

    v18 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "BOOL CLProactiveLocation::isRateOverrideTrue()", "%s\n", v18);
    if (v18 != buf)
    {
      free(v18);
    }
  }

  return v13;
}

uint64_t sub_10027A2E8()
{
  if (qword_102659208 != -1)
  {
    sub_10191CB14();
  }

  if (byte_102659200 == 1)
  {
    if (qword_1025D47A0 != -1)
    {
      sub_10191CB28();
    }

    v0 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
    {
      v2[0] = 68289026;
      v2[1] = 0;
      v3 = 2082;
      v4 = "";
      _os_log_impl(dword_100000000, v0, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#ALERT Device is currently running Apple Store demo mode}", v2, 0x12u);
    }
  }

  return byte_102659200;
}

BOOL sub_10027A3DC(uint64_t a1, uint64_t a2)
{
  *a2 = *(a1 + 120);
  std::string::operator=((a2 + 8), (a1 + 128));
  std::string::operator=((a2 + 32), (a1 + 152));
  std::string::operator=((a2 + 56), (a1 + 176));
  std::string::operator=((a2 + 80), (a1 + 200));
  *(a2 + 104) = *(a1 + 224);
  v4 = *(a2 + 31);
  if ((v4 & 0x80u) != 0)
  {
    v4 = *(a2 + 16);
  }

  return v4 != 0;
}

uint64_t sub_10027A45C(uint64_t a1)
{
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
    operator delete(*(a1 + 32));
  }

  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

void sub_10027A4C8(uint64_t a1, int a2, int a3, uint64_t a4)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a1 + 32) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_1018C9738();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v15 = 1;
    v8 = _os_activity_create(dword_100000000, "CL: CLTelephonyService::basebandDetectCallback", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v8, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_1018C974C();
    }

    v9 = qword_1025D47F8;
    if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68289538;
      v17 = 0;
      v18 = 2082;
      v19 = "";
      v20 = 2082;
      v21 = "activity";
      v22 = 2050;
      v23 = a1;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLTelephonyService::basebandDetectCallback, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v15 = 0;
  }

  v10 = [*(a1 + 32) silo];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10027A6EC;
  v11[3] = &unk_10245D2F0;
  v12 = a2;
  v13 = a3;
  v11[4] = a1;
  v11[5] = a4;
  [v10 sync:v11];
  if (v15 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

uint64_t sub_10027A6EC(uint64_t result)
{
  if (*(result + 52) == -469794816)
  {
    return (*(**(result + 32) + 264))(*(result + 32), @"kCLTelephonyServiceResetNotification", 0);
  }

  return result;
}

void sub_10027A740(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (qword_1025D4650 != -1)
  {
    sub_1016FDF6C();
  }

  v2 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
  {
    v3 = (v1 + 8);
    if (*(v1 + 31) < 0)
    {
      v3 = *v3;
    }

    v5[0] = 68289539;
    v5[1] = 0;
    v6 = 2082;
    v7 = "";
    v8 = 2081;
    v9 = v3;
    v10 = 2081;
    v11 = "kEventLowPowerExit";
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#bb.e,bbEvent, fService:%{private, location:escape_only}s, event:%{private, location:escape_only}s}", v5, 0x26u);
  }

  *(v1 + 208) = 0;
  v4 = (*(**(v1 + 152) + 96))(*(v1 + 152));
  sub_10027A9B8(v1, v4);
}

uint64_t sub_10027A870(void *a1)
{
  if (qword_1025D4650 != -1)
  {
    sub_1016FDF6C();
  }

  v2 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
  {
    v3 = a1[1];
    v4 = (v3 + 8);
    if (*(v3 + 31) < 0)
    {
      v4 = *v4;
    }

    v5 = (*(*a1 + 16))(a1);
    v7[0] = 68289795;
    v7[1] = 0;
    v8 = 2082;
    v9 = "";
    v10 = 2081;
    v11 = v4;
    v12 = 2082;
    v13 = v5;
    v14 = 2082;
    v15 = "wake";
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#bb.e,smEvent, fService:%{private, location:escape_only}s, state:%{public, location:escape_only}s, event:%{public, location:escape_only}s}", v7, 0x30u);
  }

  return *(a1[1] + 160);
}

void sub_10027A9B8(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 152);
  (*(*v4 + 16))(v4);
  if (!sub_10004FCC4(a2, *(*v4 - 8)))
  {
    *(a1 + 160) = *(*v4 - 8);
    v5 = *(a2 + 8);
    v6 = v5;
    if (v5 < 0)
    {
      v7 = (v5 & 0x7FFFFFFFFFFFFFFFLL);
      v8 = 5381;
      do
      {
        v6 = v8;
        v9 = *v7++;
        v8 = (33 * v8) ^ v9;
      }

      while (v9);
    }

    v10 = "N15CLQmiController17DisconnectedStateE";
    if (("N15CLQmiController17DisconnectedStateE" & 0x8000000000000000) != 0)
    {
      v11 = ("N15CLQmiController17DisconnectedStateE" & 0x7FFFFFFFFFFFFFFFLL);
      v12 = 5381;
      do
      {
        v10 = v12;
        v13 = *v11++;
        v12 = (33 * v12) ^ v13;
      }

      while (v13);
    }

    if (v6 == v10)
    {
      operator new();
    }

    v14 = *(a2 + 8);
    if (v5 < 0)
    {
      v15 = (v5 & 0x7FFFFFFFFFFFFFFFLL);
      v16 = 5381;
      do
      {
        v14 = v16;
        v17 = *v15++;
        v16 = (33 * v16) ^ v17;
      }

      while (v17);
    }

    v18 = "N15CLQmiController17InitializingStateE";
    if (("N15CLQmiController17InitializingStateE" & 0x8000000000000000) != 0)
    {
      v19 = ("N15CLQmiController17InitializingStateE" & 0x7FFFFFFFFFFFFFFFLL);
      v20 = 5381;
      do
      {
        v18 = v20;
        v21 = *v19++;
        v20 = (33 * v20) ^ v21;
      }

      while (v21);
    }

    if (v14 == v18)
    {
      operator new();
    }

    v22 = *(a2 + 8);
    if (v5 < 0)
    {
      v23 = (v5 & 0x7FFFFFFFFFFFFFFFLL);
      v24 = 5381;
      do
      {
        v22 = v24;
        v25 = *v23++;
        v24 = (33 * v24) ^ v25;
      }

      while (v25);
    }

    v26 = "N15CLQmiController12RunningStateE";
    if (("N15CLQmiController12RunningStateE" & 0x8000000000000000) != 0)
    {
      v27 = ("N15CLQmiController12RunningStateE" & 0x7FFFFFFFFFFFFFFFLL);
      v28 = 5381;
      do
      {
        v26 = v28;
        v29 = *v27++;
        v28 = (33 * v28) ^ v29;
      }

      while (v29);
    }

    if (v22 == v26)
    {
      operator new();
    }

    v30 = *(a2 + 8);
    if (v5 < 0)
    {
      v31 = (v5 & 0x7FFFFFFFFFFFFFFFLL);
      v32 = 5381;
      do
      {
        v30 = v32;
        v33 = *v31++;
        v32 = (33 * v32) ^ v33;
      }

      while (v33);
    }

    v34 = "N15CLQmiController13SleepingStateE";
    if (("N15CLQmiController13SleepingStateE" & 0x8000000000000000) != 0)
    {
      v35 = ("N15CLQmiController13SleepingStateE" & 0x7FFFFFFFFFFFFFFFLL);
      v36 = 5381;
      do
      {
        v34 = v36;
        v37 = *v35++;
        v36 = (33 * v36) ^ v37;
      }

      while (v37);
    }

    if (v30 == v34)
    {
      operator new();
    }

    if (v5 < 0)
    {
      v38 = (v5 & 0x7FFFFFFFFFFFFFFFLL);
      v39 = 5381;
      do
      {
        v5 = v39;
        v40 = *v38++;
        v39 = (33 * v39) ^ v40;
      }

      while (v40);
    }

    v41 = "N15CLQmiController14InitErrorStateE";
    if (("N15CLQmiController14InitErrorStateE" & 0x8000000000000000) != 0)
    {
      v42 = ("N15CLQmiController14InitErrorStateE" & 0x7FFFFFFFFFFFFFFFLL);
      v43 = 5381;
      do
      {
        v41 = v43;
        v44 = *v42++;
        v43 = (33 * v43) ^ v44;
      }

      while (v44);
    }

    if (v5 == v41)
    {
      sub_1016F54EC();
    }

    if (qword_1025D4650 != -1)
    {
      sub_1016FDF6C();
    }

    v45 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
    {
      v46 = (a1 + 8);
      if (*(a1 + 31) < 0)
      {
        v46 = *v46;
      }

      v47 = (*(**(a1 + 152) + 16))(*(a1 + 152));
      v48 = *(a2 + 8) & 0x7FFFFFFFFFFFFFFFLL;
      v49 = 68289794;
      v50 = 2082;
      v51 = "";
      v52 = 2082;
      v53 = v46;
      v54 = 2082;
      v55 = v47;
      v56 = 2082;
      v57 = v48;
      _os_log_impl(dword_100000000, v45, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#warning,#bb.e,unknownState, fService:%{public, location:escape_only}s, oldState:%{public, location:escape_only}s, newState:%{public, location:escape_only}s}", &v49, 0x30u);
    }
  }
}

void *sub_10027AF48(void *a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  *a1 = off_1024FA838;
  a1[1] = v3;
  if (qword_1025D4650 != -1)
  {
    sub_1016FDF6C();
  }

  v4 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
  {
    v5 = a1[1];
    v6 = (v5 + 8);
    if (*(v5 + 31) < 0)
    {
      v6 = *v6;
    }

    v7 = (*(*a1 + 16))(a1);
    v9[0] = 68289795;
    v9[1] = 0;
    v10 = 2082;
    v11 = "";
    v12 = 2081;
    v13 = v6;
    v14 = 2082;
    v15 = v7;
    v16 = 2082;
    v17 = "RunningState";
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#bb.e,smEvent, fService:%{private, location:escape_only}s, state:%{public, location:escape_only}s, event:%{public, location:escape_only}s}", v9, 0x30u);
  }

  return a1;
}

uint64_t sub_10027B0B0(void *a1)
{
  if (qword_1025D4650 != -1)
  {
    sub_1016FDF6C();
  }

  v2 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
  {
    v3 = a1[1];
    v4 = (v3 + 8);
    if (*(v3 + 31) < 0)
    {
      v4 = *v4;
    }

    v5 = (*(*a1 + 16))(a1);
    *buf = 68289795;
    *&buf[4] = 0;
    v13 = 2082;
    v14 = "";
    v15 = 2081;
    v16 = v4;
    v17 = 2082;
    v18 = v5;
    v19 = 2082;
    v20 = "enter";
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#bb.e,smEvent, fService:%{private, location:escape_only}s, state:%{public, location:escape_only}s, event:%{public, location:escape_only}s}", buf, 0x30u);
  }

  v6 = a1[1];
  sub_10027B31C(a1);
  v7 = a1[1];
  v11 = 1;
  *buf = &v11;
  if (sub_10026F81C(v7 + 96, &v11)[8])
  {
    v8 = a1[1];
    v11 = 1;
    *buf = &v11;
    v9 = sub_10026F81C(v8 + 96, &v11)[8];
    if (!v9)
    {
      sub_1000CF05C();
    }

    (*(*v9 + 48))(v9);
  }

  return *(**(v6 + 152) - 8);
}

uint64_t sub_10027B298(uint64_t a1, uint64_t *a2)
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
    v6 = sub_10027B408(*(v3 + 32), *a2);
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
  if (v5 == v2 || sub_10027B408(*a2, *(v5 + 32)))
  {
    return v2;
  }

  return v5;
}

uint64_t sub_10027B31C(void *a1)
{
  if (!a1)
  {
    __cxa_bad_typeid();
  }

  v6 = *(*a1 - 8);
  result = sub_10027B298(a1[1] + 216, &v6);
  v3 = a1[1];
  if (v3 + 224 != result)
  {
    v7 = &v6;
    result = sub_1016FC464(v3 + 216, &v6);
    if (*(result + 64))
    {
      v4 = a1[1];
      v7 = &v6;
      v5 = *(sub_1016FC464(v4 + 216, &v6) + 64);
      if (!v5)
      {
        sub_1000CF05C();
      }

      return (*(*v5 + 48))(v5);
    }
  }

  return result;
}

BOOL sub_10027B408(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if ((v2 & 0x8000000000000000) != 0 && (v3 & 0x8000000000000000) != 0)
  {
    return strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (v3 & 0x7FFFFFFFFFFFFFFFLL)) >> 31;
  }

  else
  {
    return v2 < v3;
  }
}

id sub_10027B454(uint64_t a1)
{
  v2 = *(a1 + 544);
  *(a1 + 544) = 1;
  if (qword_1025D4650 != -1)
  {
    sub_101607734();
  }

  v3 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
  {
    v4 = *(a1 + 544);
    v6[0] = 68289794;
    v6[1] = 0;
    v7 = 2082;
    v8 = "";
    v9 = 2082;
    v10 = "onConnected";
    v11 = 1026;
    v12 = v2 ^ 1;
    v13 = 1026;
    v14 = v4;
    _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#tb,onConnected, event:%{public, location:escape_only}s, wasDisconnected:%{public}hhd, fConnected:%{public}hhd}", v6, 0x28u);
  }

  if ((v2 & 1) == 0)
  {
    sub_1015F7358(a1);
  }

  return sub_10027B574(a1);
}

id sub_10027B574(uint64_t a1)
{
  if (qword_1025D4650 != -1)
  {
    sub_101607734();
  }

  v2 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
  {
    v4[0] = 68289026;
    v4[1] = 0;
    v5 = 2082;
    v6 = "";
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#tb,#bb.e,clearQmiPdsErrorRecovery}", v4, 0x12u);
  }

  *(a1 + 570) = 0;
  *(a1 + 568) = 0;
  return [*(a1 + 576) setNextFireDelay:1.79769313e308];
}

void sub_10027B658(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a2 + 32) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_1018E68F8();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v15 = 1;
    v10 = _os_activity_create(dword_100000000, "CL: CLDaemonStatus::onDisplayNotification", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v10, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_1018E690C();
    }

    v11 = qword_1025D47F8;
    if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68289538;
      v17 = 0;
      v18 = 2082;
      v19 = "";
      v20 = 2082;
      v21 = "activity";
      v22 = 2050;
      v23 = a2;
      _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLDaemonStatus::onDisplayNotification, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v15 = 0;
  }

  v12 = [*(a2 + 32) silo];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10027BA34;
  v13[3] = &unk_10244FF80;
  v13[4] = a2;
  v13[5] = a1;
  v13[6] = a3;
  v13[7] = a4;
  v13[8] = a5;
  [v12 sync:v13];
  if (v15 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

void sub_10027B884(int *a1)
{
  state64 = 0;
  if (notify_get_state(a1[72], &state64))
  {
    if (qword_1025D4870 != -1)
    {
      sub_1018E688C();
    }

    v2 = qword_1025D4878;
    if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_FAULT))
    {
      *v4 = 0;
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_FAULT, "Could not get state for com.apple.springboard.hasBlankedScreen", v4, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018E6BE0();
    }
  }

  else
  {
    v4[0] = state64 == 0;
    *buf = 10;
    (*(*a1 + 152))(a1, buf, v4, 1, 0xFFFFFFFFLL, 0);
    if (qword_1025D4870 != -1)
    {
      sub_1018E688C();
    }

    v3 = qword_1025D4878;
    if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_DEBUG))
    {
      *buf = 67109120;
      v7 = v4[0];
      _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEBUG, "display is %d", buf, 8u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018E6CC4(v4);
    }
  }
}

void sub_10027BA84(uint64_t a1, int *a2, unsigned __int8 *a3, id *a4)
{
  CLProfilingIdentify();
  [objc_msgSend(*a4 "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_1016C8E1C();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v11 = 1;
    v8 = _os_activity_create(dword_100000000, "CL: CLGnssAWD::HandleStatusNotification", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v8, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_1016C8E30();
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
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLGnssAWD::HandleStatusNotification, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v11 = 0;
  }

  sub_10027BE80(a4, v7, a2, a3);
  if (v11 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

void sub_10027BC50(uint64_t a1)
{
  if (qword_1025D4650 != -1)
  {
    sub_1016C8A14();
  }

  v2 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
  {
    v3 = *(a1 + 2412);
    *buf = 67174657;
    v15 = v3;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEBUG, "#gnssca,handleDisplayEventForCA,fDisplay,%{private}d", buf, 8u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1016CA4B8(a1);
  }

  if (*(a1 + 2392))
  {
    v4 = 3;
  }

  else
  {
    v4 = 4;
  }

  if (*(a1 + 2392))
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  v13 = v5;
  *buf = v4;
  if (sub_1000735F4((a1 + 2304), buf) && sub_1000735F4((a1 + 2304), &v13))
  {
    v6 = (a1 + 2304);
    if (*(a1 + 2412) == 1)
    {
      v7 = sub_1000735F4(v6, buf);
      if (v7)
      {
        for (i = v7[5]; i; i = *i)
        {
          if (sub_1001B5C18(a1, *buf, *(i + 16)))
          {
            sub_1001B8E0C(a1, v13, *(i + 16));
          }
        }

        return;
      }

LABEL_35:
      sub_1000432E8("unordered_map::at: key not found");
    }

    v10 = sub_1000735F4(v6, &v13);
    if (!v10)
    {
      goto LABEL_35;
    }

    for (j = v10[5]; j; j = *j)
    {
      if (sub_1001B5C18(a1, v13, *(j + 16)))
      {
        sub_1001B8E0C(a1, *buf, *(j + 16));
      }
    }
  }

  else if (*(a1 + 2506) == 1)
  {
    if (qword_1025D4650 != -1)
    {
      sub_1016C8BF0();
    }

    v9 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
    {
      *v12 = 0;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "#gnssca,handleDisplayEventForCA,display context unsupported", v12, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1016CA5A4();
    }
  }
}

void sub_10027BE80(uint64_t a1, uint64_t a2, int *a3, unsigned __int8 *a4)
{
  v6 = *a3;
  if (*a3 <= 9)
  {
    if (v6 == 6)
    {
      *(a1 + 2413) = *(a4 + 1) != 0;
      *(a1 + 2414) = *(a4 + 1) == 2;
    }

    else if (v6 == 7)
    {
      if (sub_10061EC2C(*(a4 + 3)) && sub_100040E24())
      {
        v8 = a4[8] ^ 1;
      }

      else
      {
        v8 = 0;
      }

      v12 = v8 & 1;
      if (*(a1 + 2420) != v12)
      {
        ++*(a1 + 2424);
        *(a1 + 2420) = v12;
      }

      *(a1 + 2408) = *(a4 + 3);
      if (qword_1025D4650 != -1)
      {
        sub_1016C8A14();
      }

      v13 = (a1 + 2408);
      v14 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
      {
        v15 = *v13;
        v16 = 67109120;
        v17 = v15;
        _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_DEBUG, "#gnssawd,chargerType,%d", &v16, 8u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1016CA3CC(v13);
      }
    }
  }

  else
  {
    switch(v6)
    {
      case 15:
        *(a1 + 2415) = *a4;
        break;
      case 13:
        *(a1 + 2428) = *a4;
        if (qword_1025D4650 != -1)
        {
          sub_1016C8A14();
        }

        v9 = (a1 + 2428);
        v10 = qword_1025D4658;
        if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
        {
          v11 = *v9;
          v16 = 67109120;
          v17 = v11;
          _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEBUG, "#gnssawd,thermalLevel,%d", &v16, 8u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_1016CA2E0(v9);
        }

        break;
      case 10:
        v7 = *a4;
        if (*(a1 + 2412) != v7)
        {
          *(a1 + 2412) = v7;

          sub_10027BC50(a1);
        }

        break;
    }
  }
}

void *sub_10027C0F0(void *result)
{
  result[5] = 0;
  *result = off_1024B3AC0;
  result[1] = 0;
  result[2] = 0;
  result[3] = 0;
  *(result + 29) = 0;
  return result;
}

uint64_t sub_10027C11C(uint64_t a1, unsigned int a2)
{
  v3 = *(a1 + 44);
  if (!v3)
  {
    v5 = 0;
    goto LABEL_32;
  }

  if (v3)
  {
    v6 = *(a1 + 8);
    if (!v6)
    {
      v6 = *(qword_102637DF8 + 8);
    }

    v7 = sub_1004394D0(v6, a2);
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
    v3 = *(a1 + 44);
    if ((v3 & 2) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_12;
  }

  v4 = 0;
  if ((v3 & 2) != 0)
  {
LABEL_12:
    v10 = *(a1 + 16);
    if (!v10)
    {
      v10 = *(qword_102637DF8 + 16);
    }

    v11 = sub_100439D10(v10, a2);
    v12 = v11;
    if (v11 >= 0x80)
    {
      v13 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v11, a2);
    }

    else
    {
      v13 = 1;
    }

    v4 += v12 + v13 + 1;
    v3 = *(a1 + 44);
  }

LABEL_18:
  v14.i64[0] = 0x200000002;
  v14.i64[1] = 0x200000002;
  v5 = vaddvq_s32(vandq_s8(vshlq_u32(vdupq_n_s32(v3), xmmword_101C655A0), v14)) + v4;
  if ((v3 & 0x40) != 0)
  {
    v15 = *(a1 + 28);
    if ((v15 & 0x80000000) != 0)
    {
      v16 = 11;
    }

    else if (v15 >= 0x80)
    {
      v16 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v15, a2) + 1;
      v3 = *(a1 + 44);
    }

    else
    {
      v16 = 2;
    }

    v5 += v16;
  }

  if ((v3 & 0x80) != 0)
  {
    v17 = *(a1 + 32);
    if ((v17 & 0x80000000) != 0)
    {
      v18 = 11;
    }

    else if (v17 >= 0x80)
    {
      v18 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v17, a2) + 1;
      v3 = *(a1 + 44);
    }

    else
    {
      v18 = 2;
    }

    v5 += v18;
  }

LABEL_32:
  if ((v3 & 0xFF00) != 0)
  {
    v19 = (v3 >> 7) & 2;
  }

  else
  {
    v19 = 0;
  }

  result = (v19 + v5);
  *(a1 + 40) = result;
  return result;
}

uint64_t sub_10027C294(uint64_t result, const wireless_diagnostics::google::protobuf::MessageLite *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 44);
  if (v6)
  {
    v7 = *(result + 8);
    if (!v7)
    {
      v7 = *(qword_102637DF8 + 8);
    }

    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, v7, a2, a4);
    v6 = *(v5 + 44);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_17;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  v8 = *(v5 + 16);
  if (!v8)
  {
    v8 = *(qword_102637DF8 + 16);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(2, v8, a2, a4);
  v6 = *(v5 + 44);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_18;
  }

LABEL_17:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(3, *(v5 + 24), a2, a4);
  v6 = *(v5 + 44);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_19;
  }

LABEL_18:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(4, *(v5 + 25), a2, a4);
  v6 = *(v5 + 44);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_20;
  }

LABEL_19:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(5, *(v5 + 26), a2, a4);
  v6 = *(v5 + 44);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_21;
  }

LABEL_20:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(6, *(v5 + 27), a2, a4);
  v6 = *(v5 + 44);
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

LABEL_22:
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(8, *(v5 + 32), a2, a4);
    if ((*(v5 + 44) & 0x100) == 0)
    {
      return result;
    }

    goto LABEL_23;
  }

LABEL_21:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(7, *(v5 + 28), a2, a4);
  v6 = *(v5 + 44);
  if ((v6 & 0x80) != 0)
  {
    goto LABEL_22;
  }

LABEL_9:
  if ((v6 & 0x100) == 0)
  {
    return result;
  }

LABEL_23:
  v9 = *(v5 + 36);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(9, v9, a2, a4);
}