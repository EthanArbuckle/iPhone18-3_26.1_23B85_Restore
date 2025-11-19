uint64_t sub_1002E34B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  sub_10000A25C(*(a1 + 120), v21);
  if (v22 != 1)
  {
    return 0;
  }

  sub_10000A258(v18, v21);
  v20 |= 2u;
  v10 = v19;
  if (!v19)
  {
    operator new();
  }

  *(v19 + 44) |= 2u;
  v11 = *(v10 + 24);
  if (!v11)
  {
    operator new();
  }

  *(v11 + 496) |= 0x2000u;
  v12 = *(v11 + 112);
  if (!v12)
  {
    operator new();
  }

  *(v12 + 148) |= 0x80u;
  v13 = *(v12 + 72);
  if (!v13)
  {
    operator new();
  }

  v14 = *(v13 + 52);
  *(v13 + 16) = a5;
  *(v13 + 52) = v14 | 9;
  v15 = *(v13 + 40);
  if (!v15)
  {
    operator new();
  }

  sub_1002E1998(v15, a4);
  *(v13 + 52) |= 6u;
  *(v13 + 24) = a2;
  *(v13 + 32) = a3;
  v16 = sub_10000A2E0(a1, v18);
  sub_10000A80C(v18);
  if (v22)
  {
    sub_10000A80C(v21);
  }

  return v16;
}

uint64_t sub_1002E3750(uint64_t a1, const std::string *a2, uint64_t a3, double a4)
{
  sub_10000A25C(*(a1 + 120), v20);
  if (v21 != 1)
  {
    return 0;
  }

  sub_10000A258(v17, v20);
  v19 |= 2u;
  v8 = v18;
  if (!v18)
  {
    operator new();
  }

  *(v18 + 44) |= 2u;
  v9 = *(v8 + 24);
  if (!v9)
  {
    operator new();
  }

  *(v9 + 496) |= 0x2000u;
  v10 = *(v9 + 112);
  if (!v10)
  {
    operator new();
  }

  *(v10 + 148) |= 0x8000u;
  v11 = *(v10 + 136);
  if (!v11)
  {
    operator new();
  }

  *(v11 + 44) |= 1u;
  v12 = *(v11 + 16);
  if (v12 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
  {
    operator new();
  }

  std::string::operator=(v12, a2);
  v13 = *(v11 + 44);
  *(v11 + 24) = a4;
  *(v11 + 44) = v13 | 6;
  v14 = *(v11 + 32);
  if (!v14)
  {
    operator new();
  }

  sub_1002E1998(v14, a3);
  v15 = sub_10000A2E0(a1, v17);
  sub_10000A80C(v17);
  if (v21)
  {
    sub_10000A80C(v20);
  }

  return v15;
}

uint64_t sub_1002E3A24(uint64_t a1, const std::string *a2, uint64_t a3, std::string *a4, std::string *a5, uint64_t a6, char a7, double a8)
{
  sub_10000A25C(*(a1 + 120), v31);
  if (v32 != 1)
  {
    return 0;
  }

  sub_10000A258(v28, v31);
  v30 |= 2u;
  v16 = v29;
  if (!v29)
  {
    operator new();
  }

  *(v29 + 44) |= 2u;
  v17 = *(v16 + 24);
  if (!v17)
  {
    operator new();
  }

  *(v17 + 496) |= 0x2000u;
  v18 = *(v17 + 112);
  if (!v18)
  {
    operator new();
  }

  *(v18 + 148) |= 4u;
  v19 = *(v18 + 32);
  if (!v19)
  {
    operator new();
  }

  if (a2[1].__r_.__value_.__s.__data_[0] == 1)
  {
    *(v19 + 68) |= 0x40u;
    v20 = *(v19 + 56);
    if (v20 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
    {
      operator new();
    }

    std::string::operator=(v20, a2);
  }

  v21 = *(v19 + 68);
  *(v19 + 16) = a8;
  *(v19 + 68) = v21 | 3;
  v22 = *(v19 + 24);
  if (!v22)
  {
    operator new();
  }

  sub_1002E1998(v22, a3);
  if (a4[2].__r_.__value_.__s.__data_[0] == 1)
  {
    *(v19 + 68) |= 4u;
    v23 = *(v19 + 32);
    if (!v23)
    {
      operator new();
    }

    sub_1002E2968(v23, a4);
  }

  if (a5[2].__r_.__value_.__s.__data_[0] == 1)
  {
    *(v19 + 68) |= 8u;
    v24 = *(v19 + 40);
    if (!v24)
    {
      operator new();
    }

    sub_1002E2968(v24, a5);
  }

  v25 = *(v19 + 68);
  if ((a6 & 0x100000000) != 0)
  {
    v25 |= 0x10u;
    *(v19 + 68) = v25;
    *(v19 + 48) = a6;
  }

  *(v19 + 68) = v25 | 0x20;
  *(v19 + 52) = a7;
  v26 = sub_10000A2E0(a1, v28);
  sub_10000A80C(v28);
  if (v32)
  {
    sub_10000A80C(v31);
  }

  return v26;
}

uint64_t sub_1002E3E44(uint64_t a1, uint64_t a2, double a3)
{
  sub_10000A25C(*(a1 + 120), v17);
  if (v18 != 1)
  {
    return 0;
  }

  sub_10000A258(v14, v17);
  v16 |= 2u;
  v6 = v15;
  if (!v15)
  {
    operator new();
  }

  *(v15 + 44) |= 2u;
  v7 = *(v6 + 24);
  if (!v7)
  {
    operator new();
  }

  *(v7 + 496) |= 0x2000u;
  v8 = *(v7 + 112);
  if (!v8)
  {
    operator new();
  }

  *(v8 + 148) |= 8u;
  v9 = *(v8 + 40);
  if (!v9)
  {
    operator new();
  }

  v10 = *(v9 + 36);
  *(v9 + 16) = a3;
  *(v9 + 36) = v10 | 3;
  v11 = *(v9 + 24);
  if (!v11)
  {
    operator new();
  }

  sub_1002E1998(v11, a2);
  v12 = sub_10000A2E0(a1, v14);
  sub_10000A80C(v14);
  if (v18)
  {
    sub_10000A80C(v17);
  }

  return v12;
}

uint64_t sub_1002E40BC(uint64_t a1, uint64_t a2, const std::string *a3)
{
  sub_10000A25C(*(a1 + 120), v17);
  if (v18 != 1)
  {
    return 0;
  }

  sub_10000A258(v14, v17);
  v16 |= 2u;
  v6 = v15;
  if (!v15)
  {
    operator new();
  }

  *(v15 + 44) |= 2u;
  v7 = *(v6 + 24);
  if (!v7)
  {
    operator new();
  }

  *(v7 + 496) |= 0x2000u;
  v8 = *(v7 + 112);
  if (!v8)
  {
    operator new();
  }

  *(v8 + 148) |= 0x20u;
  v9 = *(v8 + 56);
  if (!v9)
  {
    operator new();
  }

  v10 = *(v9 + 36);
  *(v9 + 24) = a2;
  *(v9 + 36) = v10 | 3;
  v11 = *(v9 + 16);
  if (v11 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
  {
    operator new();
  }

  std::string::operator=(v11, a3);
  v12 = sub_10000A2E0(a1, v14);
  sub_10000A80C(v14);
  if (v18)
  {
    sub_10000A80C(v17);
  }

  return v12;
}

uint64_t sub_1002E4314(uint64_t a1, uint64_t a2, const std::string *a3)
{
  sub_10000A25C(*(a1 + 120), v17);
  if (v18 != 1)
  {
    return 0;
  }

  sub_10000A258(v14, v17);
  v16 |= 2u;
  v6 = v15;
  if (!v15)
  {
    operator new();
  }

  *(v15 + 44) |= 2u;
  v7 = *(v6 + 24);
  if (!v7)
  {
    operator new();
  }

  *(v7 + 496) |= 0x2000u;
  v8 = *(v7 + 112);
  if (!v8)
  {
    operator new();
  }

  *(v8 + 148) |= 0x40u;
  v9 = *(v8 + 64);
  if (!v9)
  {
    operator new();
  }

  v10 = *(v9 + 36);
  *(v9 + 24) = a2;
  *(v9 + 36) = v10 | 3;
  v11 = *(v9 + 16);
  if (v11 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
  {
    operator new();
  }

  std::string::operator=(v11, a3);
  v12 = sub_10000A2E0(a1, v14);
  sub_10000A80C(v14);
  if (v18)
  {
    sub_10000A80C(v17);
  }

  return v12;
}

uint64_t sub_1002E456C(uint64_t a1, const std::string *a2, int a3, double a4)
{
  sub_10000A25C(*(a1 + 120), v23);
  if (v24 != 1)
  {
    return 0;
  }

  sub_10000A258(v20, v23);
  v22 |= 2u;
  v8 = v21;
  if (!v21)
  {
    operator new();
  }

  *(v21 + 44) |= 2u;
  v9 = *(v8 + 24);
  if (!v9)
  {
    operator new();
  }

  *(v9 + 496) |= 0x2000u;
  v10 = *(v9 + 112);
  if (!v10)
  {
    operator new();
  }

  *(v10 + 148) |= 0x100u;
  v11 = *(v10 + 80);
  if (!v11)
  {
    operator new();
  }

  v12 = *(v11 + 40);
  *(v11 + 16) = a4;
  *(v11 + 40) = v12 | 5;
  v13 = *(v11 + 24);
  if (v13 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
  {
    operator new();
  }

  std::string::operator=(v13, a2);
  if (a3 == 1)
  {
    v14 = 1;
  }

  else
  {
    v14 = 2 * (a3 == 2);
  }

  if (!sub_10007A648(v14))
  {
    __assert_rtn("set_source", "NearbyInteractionTypes.pb.h", 14017, "::CLP::LogEntry::Nearbyd::NI::TruthTag_Source_IsValid(value)");
  }

  *(v11 + 40) |= 2u;
  *(v11 + 32) = v14;
  v15 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    if ((a2->__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      a2 = a2->__r_.__value_.__r.__words[0];
    }

    sub_1001086E0();
    v16 = wireless_diagnostics::google::protobuf::internal::NameOfEnum();
    if (*(v16 + 23) >= 0)
    {
      v17 = v16;
    }

    else
    {
      v17 = *v16;
    }

    *buf = 136315394;
    v26 = a2;
    v27 = 2080;
    v28 = v17;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "pblogger, Log truth tagging label: [%s], source: [%s]", buf, 0x16u);
  }

  v18 = sub_10000A2E0(a1, v20);
  sub_10000A80C(v20);
  if (v24)
  {
    sub_10000A80C(v23);
  }

  return v18;
}

uint64_t sub_1002E4938(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 24) != 1)
  {
    return 0;
  }

  sub_10000A25C(*(a1 + 120), v69);
  if (v70 != 1)
  {
    return 0;
  }

  sub_10000A258(v66, v69);
  v68 |= 2u;
  v4 = v67;
  if (!v67)
  {
    operator new();
  }

  *(v67 + 44) |= 2u;
  v5 = *(v4 + 24);
  if (!v5)
  {
    operator new();
  }

  *(v5 + 496) |= 0x2000u;
  v6 = *(v5 + 112);
  if (!v6)
  {
    operator new();
  }

  *(v6 + 148) |= 0x4000u;
  v7 = *(v6 + 128);
  if (!v7)
  {
    operator new();
  }

  if ((*(a2 + 24) & 1) == 0)
  {
    sub_1000195BC();
  }

  v8 = *(v7 + 72);
  *(v7 + 16) = *(a2 + 16);
  v9 = *(a2 + 36);
  v10 = *(a2 + 40);
  *(v7 + 72) = v8 | 7;
  *(v7 + 24) = v9;
  *(v7 + 32) = v10;
  if (*(a2 + 600))
  {
    v11 = *(a2 + 96);
    v74 = *(a2 + 80);
    v75 = v11;
    v12 = *(a2 + 64);
    v72 = *(a2 + 48);
    v73 = v12;
    v13 = *(a2 + 120);
    v76 = *(a2 + 112);
    v77 = 0;
    v14 = *(a2 + 128);
    v78 = 0;
    v79 = 0;
    sub_100012F38(&v77, v13, v14, (v14 - v13) >> 3);
    v15 = *(a2 + 160);
    v80 = *(a2 + 144);
    v81 = v15;
    v16 = *(a2 + 184);
    v82 = *(a2 + 176);
    __p = 0;
    v84 = 0;
    v85 = 0;
    sub_100020574(&__p, v16, *(a2 + 192), 0x6DB6DB6DB6DB6DB7 * ((*(a2 + 192) - v16) >> 3));
    memcpy(v86, (a2 + 208), sizeof(v86));
    if ((*&v86[222] & 0x100) == 0)
    {
      goto LABEL_42;
    }

    v17 = *(v7 + 72);
    *(v7 + 64) = v86[222];
    *(v7 + 72) = v17 | 0x18;
    v18 = *(v7 + 40);
    if (!v18)
    {
      operator new();
    }

    *(v18 + 64) = *v86;
    *(v18 + 96) = v82;
    *(v18 + 340) = *&v86[216];
    *(v18 + 344) = *&v86[218];
    v19 = *&v86[220];
    v20 = *(v18 + 468);
    *(v18 + 468) = vorr_s8(v20, 0xE000000010600);
    *(v18 + 348) = v19;
    if ((v86[232] & 1) == 0)
    {
      goto LABEL_42;
    }

    if (v86[248] & 1) != 0 && (v86[264] & 1) != 0 && (v86[280])
    {
      v21 = *&v86[224];
      *(v18 + 472) = v20.i32[1] | 0x2E0000;
      *(v18 + 352) = v21;
      if ((v86[248] & 1) == 0)
      {
        sub_1000195BC();
      }

      v22 = *&v86[240];
      *(v18 + 472) = v20.i32[1] | 0x6E0000;
      *(v18 + 360) = v22;
      if ((v86[264] & 1) == 0)
      {
        sub_1000195BC();
      }

      v23 = *&v86[256];
      *(v18 + 472) = v20.i32[1] | 0xEE0000;
      *(v18 + 368) = v23;
      if ((v86[280] & 1) == 0)
      {
        sub_1000195BC();
      }

      *(v18 + 472) = v20.i32[1] | 0x1EE0000;
      v24 = v76;
      *(v18 + 384) = *&v86[272];
      *__s = v24;
      sub_100004A08(&__str, __s);
      sub_1002DB858(v18, &__str);
      v25 = sub_1002E50F0(v7);
      if (*(a2 + 1312))
      {
        v26 = v25;
        v64 = *(a2 + 1304);
        v27 = *(a2 + 1288);
        v63[4] = *(a2 + 1272);
        v63[5] = v27;
        v28 = *(a2 + 1256);
        v63[2] = *(a2 + 1240);
        v63[3] = v28;
        v29 = *(a2 + 1224);
        v63[0] = *(a2 + 1208);
        v63[1] = v29;
        v30 = BYTE11(v63[0]);
        v25[19] |= 8u;
        v25[10] = v30;
        v31 = sub_1002DD214(v25);
        v32 = sub_100193AD8(v63, 0);
        v31[15] |= 1u;
        v31[4] = v32;
        v33 = sub_100193B00(v63, 0);
        v31[15] |= 2u;
        v31[5] = v33;
        v34 = sub_100193B28(v63, 0);
        v31[15] |= 4u;
        v31[6] = v34;
        v35 = sub_100193B50(v63, 0);
        v31[15] |= 8u;
        v31[7] = v35;
        v36 = sub_100193B78(v63, 0);
        v37 = 0;
        v38 = v36[1];
        v62[0] = *v36;
        v62[1] = v38;
        do
        {
          v39 = v31[11];
          v40 = v31[10];
          if (v40 >= v39)
          {
            if (v39 == v31[12])
            {
              wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v31 + 8), v39 + 1);
              v39 = v31[11];
            }

            v31[11] = v39 + 1;
            sub_1000CCF2C();
          }

          v41 = *(v31 + 4);
          v31[10] = v40 + 1;
          v42 = *(v41 + 8 * v40);
          v43 = *(v62 + v37);
          v44 = *(v62 + v37 + 2);
          v42[7] |= 3u;
          v42[4] = v43;
          v42[5] = v44;
          v37 += 4;
        }

        while (v37 != 32);
        v45 = sub_1002DD214(v26);
        v46 = sub_100193AD8(v63, 1);
        v45[15] |= 1u;
        v45[4] = v46;
        v47 = sub_100193B00(v63, 1);
        v45[15] |= 2u;
        v45[5] = v47;
        v48 = sub_100193B28(v63, 1);
        v45[15] |= 4u;
        v45[6] = v48;
        v49 = sub_100193B50(v63, 1);
        v45[15] |= 8u;
        v45[7] = v49;
        v50 = sub_100193B78(v63, 1);
        v51 = 0;
        v52 = v50[1];
        v61[0] = *v50;
        v61[1] = v52;
        do
        {
          v53 = v45[11];
          v54 = v45[10];
          if (v54 >= v53)
          {
            if (v53 == v45[12])
            {
              wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v45 + 8), v53 + 1);
              v53 = v45[11];
            }

            v45[11] = v53 + 1;
            sub_1000CCF2C();
          }

          v55 = *(v45 + 4);
          v45[10] = v54 + 1;
          v56 = *(v55 + 8 * v54);
          v57 = *(v61 + v51);
          v58 = *(v61 + v51 + 2);
          v56[7] |= 3u;
          v56[4] = v57;
          v56[5] = v58;
          v51 += 4;
        }

        while (v51 != 32);
        v59 = sub_10000A2E0(a1, v66);
      }

      else
      {
        v59 = 0;
      }

      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
      }
    }

    else
    {
LABEL_42:
      v59 = 0;
    }

    if (__p)
    {
      v84 = __p;
      operator delete(__p);
    }

    if (v77)
    {
      v78 = v77;
      operator delete(v77);
    }
  }

  else
  {
    v59 = 0;
  }

  sub_10000A80C(v66);
  if (v70)
  {
    sub_10000A80C(v69);
  }

  return v59;
}

void sub_1002E4FBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35, char a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, char a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, char a52, uint64_t a53, uint64_t a54)
{
  if (a35 < 0)
  {
    operator delete(__p);
  }

  sub_10002069C(&a54);
  sub_10000A80C(&a36);
  if (a52 == 1)
  {
    sub_10000A80C(&a44);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1002E50F0(uint64_t a1)
{
  *(a1 + 72) |= 0x20u;
  if (!*(a1 + 48))
  {
    operator new();
  }

  return *(a1 + 48);
}

uint64_t sub_1002E5170(uint64_t a1, int a2, double a3, double a4, double a5, uint64_t a6, uint64_t a7, uint64_t *a8, uint64_t a9, uint64_t a10)
{
  sub_10000A25C(*(a1 + 120), v33);
  if (v34 != 1)
  {
    return 0;
  }

  sub_10000A258(v30, v33);
  v32 |= 2u;
  v18 = v31;
  if (!v31)
  {
    operator new();
  }

  *(v31 + 44) |= 2u;
  v19 = *(v18 + 24);
  if (!v19)
  {
    operator new();
  }

  *(v19 + 496) |= 0x2000u;
  v20 = *(v19 + 112);
  if (!v20)
  {
    operator new();
  }

  *(v20 + 148) |= 0x800u;
  v21 = *(v20 + 104);
  if (!v21)
  {
    operator new();
  }

  *(v21 + 96) |= 1u;
  *(v21 + 88) = a2;
  v23 = *a8;
  v22 = a8[1];
  if (v22 - *a8 == 88)
  {
    if (v22 != v23)
    {
      v24 = 0;
      v25 = *(v21 + 40);
      do
      {
        v26 = *(v23 + 8 * v24);
        if (v25 == *(v21 + 44))
        {
          sub_1000778F4((v21 + 32), v25 + 1);
          v25 = *(v21 + 40);
          v23 = *a8;
          v22 = a8[1];
        }

        *(*(v21 + 32) + 8 * v25++) = v26;
        *(v21 + 40) = v25;
        ++v24;
      }

      while (v24 < (v22 - v23) >> 3);
    }
  }

  else if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
  {
    sub_1004BB144();
  }

  v28 = *(v21 + 96);
  *(v21 + 48) = a3;
  *(v21 + 56) = a4;
  *(v21 + 64) = a5;
  *(v21 + 96) = v28 | 0x1F0;
  *(v21 + 72) = a9;
  *(v21 + 80) = a10;
  v27 = sub_10000A2E0(a1, v30);
  sub_10000A80C(v30);
  if (v34)
  {
    sub_10000A80C(v33);
  }

  return v27;
}

uint64_t sub_1002E5478(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  sub_10000A25C(*(a1 + 120), v22);
  if (v23 != 1)
  {
    return 0;
  }

  sub_10000A258(v19, v22);
  v21 |= 2u;
  v8 = v20;
  if (!v20)
  {
    operator new();
  }

  *(v20 + 44) |= 2u;
  v9 = *(v8 + 24);
  if (!v9)
  {
    operator new();
  }

  *(v9 + 496) |= 0x2000u;
  v10 = *(v9 + 112);
  if (!v10)
  {
    operator new();
  }

  *(v10 + 148) |= 0x400u;
  v11 = *(v10 + 96);
  if (!v11)
  {
    operator new();
  }

  v12 = *(v11 + 44);
  *(v11 + 44) = v12 | 1;
  *(v11 + 16) = a2;
  if ((a3 & 0x100000000) != 0)
  {
    *(v11 + 44) = v12 | 3;
    *(v11 + 20) = a3;
  }

  if (*(a4 + 24) == 1)
  {
    if (*(a4 + 8) - *a4 != 88)
    {
      __assert_rtn("logRangeBiasEstimatorConfig", "PRProtobufLogger.cpp", 2608, "kDimOutputSingleAntennaRangeBiasModel == biasCorrectionValuesSingleAntenna.value().size()");
    }

    for (i = 0; i != 88; i += 8)
    {
      if ((*(a4 + 24) & 1) == 0)
      {
        sub_1000195BC();
      }

      v14 = *(*a4 + i);
      v15 = *(v11 + 32);
      if (v15 == *(v11 + 36))
      {
        sub_1000778F4((v11 + 24), v15 + 1);
        v15 = *(v11 + 32);
      }

      v16 = *(v11 + 24);
      *(v11 + 32) = v15 + 1;
      *(v16 + 8 * v15) = v14;
    }
  }

  v17 = sub_10000A2E0(a1, v19);
  sub_10000A80C(v19);
  if (v23)
  {
    sub_10000A80C(v22);
  }

  return v17;
}

uint64_t sub_1002E57BC(uint64_t a1, const std::string *a2, uint64_t a3)
{
  sub_10000A25C(*(a1 + 120), v30);
  if (v31 != 1)
  {
    return 0;
  }

  sub_10000A258(v27, v30);
  v29 |= 2u;
  v6 = v28;
  if (!v28)
  {
    operator new();
  }

  *(v28 + 44) |= 2u;
  v7 = *(v6 + 24);
  if (!v7)
  {
    operator new();
  }

  *(v7 + 496) |= 0x8000u;
  v8 = *(v7 + 128);
  if (!v8)
  {
    operator new();
  }

  v9 = *(v8 + 60);
  *(v8 + 16) = *a3;
  *(v8 + 60) = v9 | 3;
  v10 = *(v8 + 24);
  if (v10 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
  {
    operator new();
  }

  std::string::operator=(v10, a2);
  *(v8 + 60) |= 4u;
  v11 = *(v8 + 32);
  if (!v11)
  {
    operator new();
  }

  for (i = 0; i != 4; ++i)
  {
    v13 = v11[7];
    v14 = v11[6];
    if (v14 >= v13)
    {
      if (v13 == v11[8])
      {
        wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v11 + 4), v13 + 1);
        v13 = v11[7];
      }

      v11[7] = v13 + 1;
      sub_100077A08();
    }

    v15 = *(v11 + 2);
    v11[6] = v14 + 1;
    v16 = *(v15 + 8 * v14);
    v17 = 0;
    v18 = *(v16 + 24);
    do
    {
      v19 = *(a3 + 16 + 16 * i + 4 * (v17 & 3));
      if (v18 == *(v16 + 28))
      {
        sub_1000778F4((v16 + 16), v18 + 1);
        v18 = *(v16 + 24);
      }

      *(*(v16 + 16) + 8 * v18++) = v19;
      *(v16 + 24) = v18;
      ++v17;
    }

    while (v17 != 4);
  }

  v20 = *(a3 + 80);
  if (v20 < 3)
  {
    v21 = v20 + 1;
  }

  else
  {
    v21 = 0;
  }

  if (!sub_10007A654(v21))
  {
    __assert_rtn("set_vio_tracking_state", "NearbyInteractionTypes.pb.h", 19014, "::CLP::LogEntry::Nearbyd::NI::VIOTrackingState_IsValid(value)");
  }

  v22 = *(v8 + 60);
  v23 = v22 | 8;
  *(v8 + 60) = v22 | 8;
  *(v8 + 48) = v21;
  if (*(a3 + 96) == 1)
  {
    v24 = *(a3 + 88);
    v23 = v22 | 0x18;
    *(v8 + 60) = v22 | 0x18;
    *(v8 + 40) = v24;
  }

  *(v8 + 52) = *(a3 + 84);
  *(v8 + 60) = v23 | 0x60;
  v25 = sub_10000A2E0(a1, v27);
  sub_10000A80C(v27);
  if (v31)
  {
    sub_10000A80C(v30);
  }

  return v25;
}

uint64_t sub_1002E5B8C(uint64_t a1, const std::string *a2, void *a3)
{
  sub_10000A25C(*(a1 + 120), v33);
  if (v34 != 1)
  {
    return 0;
  }

  sub_10000A258(v30, v33);
  v32 |= 2u;
  v6 = v31;
  if (!v31)
  {
    operator new();
  }

  *(v31 + 44) |= 2u;
  v7 = *(v6 + 24);
  if (!v7)
  {
    operator new();
  }

  *(v7 + 496) |= 0x20000000u;
  v8 = *(v7 + 240);
  if (!v8)
  {
    operator new();
  }

  *(v8 + 36) |= 1u;
  v9 = *(v8 + 16);
  if (v9 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
  {
    operator new();
  }

  std::string::operator=(v9, a2);
  *(v8 + 36) |= 2u;
  v10 = *(v8 + 24);
  if (!v10)
  {
    operator new();
  }

  v11 = *(v10 + 76);
  *(v10 + 16) = *a3;
  *(v10 + 76) = v11 | 9;
  v12 = *(v10 + 40);
  if (!v12)
  {
    operator new();
  }

  v13 = *(v12 + 44);
  *(v12 + 16) = a3[1];
  *(v12 + 24) = a3[2];
  v14 = a3[3];
  *(v12 + 44) = v13 | 7;
  *(v12 + 32) = v14;
  *(v10 + 76) |= 4u;
  v15 = *(v10 + 32);
  if (!v15)
  {
    operator new();
  }

  v16 = *(v15 + 44);
  *(v15 + 16) = a3[4];
  *(v15 + 24) = a3[5];
  v17 = a3[6];
  *(v15 + 44) = v16 | 7;
  *(v15 + 32) = v17;
  *(v10 + 76) |= 2u;
  v18 = *(v10 + 24);
  if (!v18)
  {
    operator new();
  }

  *(v18 + 52) |= 1u;
  v19 = *(v18 + 16);
  if (!v19)
  {
    operator new();
  }

  v20 = *(v19 + 52);
  *(v19 + 16) = a3[7];
  *(v19 + 24) = a3[8];
  *(v19 + 32) = a3[9];
  v21 = a3[10];
  *(v19 + 52) = v20 | 0xF;
  *(v19 + 40) = v21;
  *(v10 + 76) |= 0x20u;
  v22 = *(v10 + 56);
  if (!v22)
  {
    operator new();
  }

  v23 = *(v22 + 44);
  *(v22 + 16) = a3[11];
  *(v22 + 24) = a3[12];
  v24 = a3[13];
  *(v22 + 44) = v23 | 7;
  *(v22 + 32) = v24;
  *(v10 + 76) |= 2u;
  v25 = *(v10 + 24);
  if (!v25)
  {
    operator new();
  }

  v26 = *(v25 + 52);
  *(v25 + 24) = a3[14];
  *(v25 + 32) = a3[15];
  v27 = a3[16];
  *(v25 + 52) = v26 | 0xE;
  *(v25 + 40) = v27;
  v28 = sub_10000A2E0(a1, v30);
  sub_10000A80C(v30);
  if (v34)
  {
    sub_10000A80C(v33);
  }

  return v28;
}

uint64_t sub_1002E6058(uint64_t a1, const std::string *a2, uint64_t a3)
{
  sub_10000A25C(*(a1 + 120), v16);
  if (v17 != 1)
  {
    return 0;
  }

  sub_10000A258(v13, v16);
  v15 |= 2u;
  v6 = v14;
  if (!v14)
  {
    operator new();
  }

  *(v14 + 44) |= 2u;
  v7 = *(v6 + 24);
  if (!v7)
  {
    operator new();
  }

  *(v7 + 496) |= 0x100000u;
  v8 = *(v7 + 168);
  if (!v8)
  {
    operator new();
  }

  v9 = *(v8 + 52);
  *(v8 + 16) = *a3;
  *(v8 + 32) = *(a3 + 16);
  *(v8 + 52) = v9 | 0xF;
  v10 = *(v8 + 40);
  if (v10 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
  {
    operator new();
  }

  std::string::operator=(v10, a2);
  v11 = sub_10000A2E0(a1, v13);
  sub_10000A80C(v13);
  if (v17)
  {
    sub_10000A80C(v16);
  }

  return v11;
}

uint64_t sub_1002E6274(uint64_t a1, const std::string *a2, uint64_t *a3)
{
  sub_10000A25C(*(a1 + 120), v24);
  if (v25 != 1)
  {
    return 0;
  }

  sub_10000A258(v21, v24);
  v23 |= 2u;
  v6 = v22;
  if (!v22)
  {
    operator new();
  }

  *(v22 + 44) |= 2u;
  v7 = *(v6 + 24);
  if (!v7)
  {
    operator new();
  }

  *(v7 + 500) |= 0x100u;
  v8 = *(v7 + 328);
  if (!v8)
  {
    operator new();
  }

  v9 = *a3;
  v10 = a3[1];
  while (v9 != v10)
  {
    v11 = *(v8 + 28);
    v12 = *(v8 + 24);
    if (v12 >= v11)
    {
      if (v11 == *(v8 + 32))
      {
        wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v8 + 16), v11 + 1);
        v11 = *(v8 + 28);
      }

      *(v8 + 28) = v11 + 1;
      sub_1001497E4();
    }

    v13 = *(v8 + 16);
    *(v8 + 24) = v12 + 1;
    v14 = *(v13 + 8 * v12);
    v15 = *(v14 + 64);
    *(v14 + 20) = *(v9 + 4);
    *(v14 + 24) = *(v9 + 8);
    *(v14 + 40) = *(v9 + 24);
    *(v14 + 56) = *(v9 + 40);
    *(v14 + 64) = v15 | 0xFE;
    v16 = *v9;
    if (*v9 > 3)
    {
      if (v16 == 4)
      {
        if (!sub_1000FD2B4(5u))
        {
          goto LABEL_43;
        }

        v17 = 5;
        goto LABEL_36;
      }

      if (v16 != 5)
      {
        if (v16 == 6)
        {
          if (!sub_1000FD2B4(7u))
          {
            goto LABEL_43;
          }

          v17 = 7;
          goto LABEL_36;
        }

        goto LABEL_30;
      }

      if (!sub_1000FD2B4(6u))
      {
LABEL_43:
        __assert_rtn("set_satellite_system", "NearbyInteractionTypes.pb.h", 21061, "::CLP::LogEntry::Nearbyd::NI::SatelliteSystem_IsValid(value)");
      }

      v17 = 6;
    }

    else
    {
      if (v16 == 1)
      {
        if (!sub_1000FD2B4(2u))
        {
          goto LABEL_43;
        }

        v17 = 2;
        goto LABEL_36;
      }

      if (v16 != 2)
      {
        if (v16 == 3)
        {
          if (!sub_1000FD2B4(4u))
          {
            goto LABEL_43;
          }

          v17 = 4;
          goto LABEL_36;
        }

LABEL_30:
        if (!sub_1000FD2B4(1u))
        {
          goto LABEL_43;
        }

        v17 = 1;
        goto LABEL_36;
      }

      if (!sub_1000FD2B4(3u))
      {
        goto LABEL_43;
      }

      v17 = 3;
    }

LABEL_36:
    *(v14 + 64) |= 1u;
    *(v14 + 16) = v17;
    v9 += 48;
  }

  *(v8 + 52) |= 2u;
  v19 = *(v8 + 40);
  if (v19 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
  {
    operator new();
  }

  std::string::operator=(v19, a2);
  v18 = sub_10000A2E0(a1, v21);
  sub_10000A80C(v21);
  if (v25)
  {
    sub_10000A80C(v24);
  }

  return v18;
}

uint64_t sub_1002E6624(uint64_t a1, const std::string *a2, uint64_t a3)
{
  sub_10000A25C(*(a1 + 120), v18);
  if (v19 != 1)
  {
    return 0;
  }

  sub_10000A258(v15, v18);
  v17 |= 2u;
  v6 = v16;
  if (!v16)
  {
    operator new();
  }

  *(v16 + 44) |= 2u;
  v7 = *(v6 + 24);
  if (!v7)
  {
    operator new();
  }

  *(v7 + 496) |= 0x400000u;
  v8 = *(v7 + 184);
  if (!v8)
  {
    operator new();
  }

  v9 = *(v8 + 80);
  *(v8 + 80) = v9 | 3;
  v10 = *(a3 + 16);
  *(v8 + 80) = v9 | 0x3F;
  v11 = *(a3 + 48);
  *(v8 + 80) = v9 | 0x7F;
  *(v8 + 16) = *a3;
  *(v8 + 32) = *(a3 + 24);
  *(v8 + 56) = *(a3 + 40);
  *(v8 + 48) = v10;
  *(v8 + 52) = v11;
  *(v8 + 72) = *(a3 + 52);
  *(v8 + 80) = v9 | 0x1FF;
  v12 = *(v8 + 64);
  if (v12 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
  {
    operator new();
  }

  std::string::operator=(v12, a2);
  v13 = sub_10000A2E0(a1, v15);
  sub_10000A80C(v15);
  if (v19)
  {
    sub_10000A80C(v18);
  }

  return v13;
}

uint64_t sub_1002E6874(uint64_t a1, const std::string *a2, uint64_t a3)
{
  sub_10000A25C(*(a1 + 120), v16);
  if (v17 != 1)
  {
    return 0;
  }

  sub_10000A258(v13, v16);
  v15 |= 2u;
  v6 = v14;
  if (!v14)
  {
    operator new();
  }

  *(v14 + 44) |= 2u;
  v7 = *(v6 + 24);
  if (!v7)
  {
    operator new();
  }

  *(v7 + 496) |= 0x200000u;
  v8 = *(v7 + 176);
  if (!v8)
  {
    operator new();
  }

  v9 = *(v8 + 40);
  *(v8 + 16) = *a3;
  *(v8 + 32) = *(a3 + 8);
  *(v8 + 40) = v9 | 7;
  v10 = *(v8 + 24);
  if (v10 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
  {
    operator new();
  }

  std::string::operator=(v10, a2);
  v11 = sub_10000A2E0(a1, v13);
  sub_10000A80C(v13);
  if (v17)
  {
    sub_10000A80C(v16);
  }

  return v11;
}

uint64_t sub_1002E6A90(uint64_t a1, const std::string *a2, uint64_t a3, int a4)
{
  sub_10000A25C(*(a1 + 120), v26);
  if (v27 != 1)
  {
    return 0;
  }

  sub_10000A258(v23, v26);
  v25 |= 2u;
  v8 = v24;
  if (!v24)
  {
    operator new();
  }

  *(v24 + 44) |= 2u;
  v9 = *(v8 + 24);
  if (!v9)
  {
    operator new();
  }

  if (a4)
  {
    *(v9 + 500) |= 8u;
    v10 = *(v9 + 288);
    if (!v10)
    {
      operator new();
    }
  }

  else
  {
    *(v9 + 496) |= 0x1000000u;
    v10 = *(v9 + 200);
    if (!v10)
    {
      operator new();
    }
  }

  *(v10 + 140) |= 1u;
  v12 = *(v10 + 16);
  if (!v12)
  {
    operator new();
  }

  *(v12 + 36) |= 3u;
  *(v12 + 16) = *a3;
  v13 = *(v10 + 140);
  *(v10 + 24) = *(a3 + 16);
  *(v10 + 40) = *(a3 + 32);
  *(v10 + 56) = *(a3 + 48);
  *(v10 + 72) = *(a3 + 64);
  v14 = *(a3 + 80);
  *(v10 + 140) = v13 | 0x3FE;
  *(v10 + 88) = v14;
  *(v10 + 96) = *(a3 + 88);
  *(v10 + 140) = v13 | 0x107FE;
  v15 = *(v10 + 128);
  if (v15 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
  {
    operator new();
  }

  std::string::operator=(v15, a2);
  v16 = *(a3 + 96);
  if (v16 > 2)
  {
    switch(v16)
    {
      case 3:
        if (sub_1000FD2B4(4u))
        {
          v17 = 4;
          goto LABEL_35;
        }

        goto LABEL_73;
      case 4:
        if (sub_1000FD2B4(5u))
        {
          v17 = 5;
          goto LABEL_35;
        }

        goto LABEL_73;
      case 6:
        if (sub_1000FD2B4(7u))
        {
          v17 = 7;
          goto LABEL_35;
        }

LABEL_73:
        v20 = "::CLP::LogEntry::Nearbyd::NI::SignalEnvironmentType_IsValid(value)";
        v21 = 20779;
        v22 = "set_signal_environment_type";
LABEL_74:
        __assert_rtn(v22, "NearbyInteractionTypes.pb.h", v21, v20);
    }
  }

  else
  {
    switch(v16)
    {
      case 0:
        if (sub_1000FD2B4(1u))
        {
          v17 = 1;
          goto LABEL_35;
        }

        goto LABEL_73;
      case 1:
        if (sub_1000FD2B4(2u))
        {
          v17 = 2;
          goto LABEL_35;
        }

        goto LABEL_73;
      case 2:
        if (sub_1000FD2B4(3u))
        {
          v17 = 3;
LABEL_35:
          *(v10 + 140) |= 0x4000u;
          *(v10 + 120) = v17;
          break;
        }

        goto LABEL_73;
    }
  }

  switch(*(a3 + 92))
  {
    case 0:
      if (!sub_1000FD2C0(1u))
      {
        goto LABEL_72;
      }

      *(v10 + 140) |= 0x8000u;
      v18 = 1;
      goto LABEL_68;
    case 1:
      if (!sub_1000FD2C0(2u))
      {
        goto LABEL_72;
      }

      *(v10 + 140) |= 0x8000u;
      v18 = 2;
      goto LABEL_68;
    case 2:
      if (!sub_1000FD2C0(3u))
      {
        goto LABEL_72;
      }

      *(v10 + 140) |= 0x8000u;
      v18 = 3;
      goto LABEL_68;
    case 3:
      if (!sub_1000FD2C0(4u))
      {
        goto LABEL_72;
      }

      *(v10 + 140) |= 0x8000u;
      v18 = 4;
      goto LABEL_68;
    case 4:
      if (!sub_1000FD2C0(5u))
      {
        goto LABEL_72;
      }

      *(v10 + 140) |= 0x8000u;
      v18 = 5;
      goto LABEL_68;
    case 5:
      if (!sub_1000FD2C0(6u))
      {
        goto LABEL_72;
      }

      *(v10 + 140) |= 0x8000u;
      v18 = 6;
      goto LABEL_68;
    case 6:
      if (!sub_1000FD2C0(7u))
      {
        goto LABEL_72;
      }

      *(v10 + 140) |= 0x8000u;
      v18 = 7;
      goto LABEL_68;
    case 7:
      if (!sub_1000FD2C0(8u))
      {
        goto LABEL_72;
      }

      *(v10 + 140) |= 0x8000u;
      v18 = 8;
      goto LABEL_68;
    case 8:
      if (!sub_1000FD2C0(9u))
      {
        goto LABEL_72;
      }

      *(v10 + 140) |= 0x8000u;
      v18 = 9;
      goto LABEL_68;
    case 9:
      if (!sub_1000FD2C0(0xAu))
      {
        goto LABEL_72;
      }

      *(v10 + 140) |= 0x8000u;
      v18 = 10;
      goto LABEL_68;
    case 0xA:
      if (!sub_1000FD2C0(0xBu))
      {
        goto LABEL_72;
      }

      *(v10 + 140) |= 0x8000u;
      v18 = 11;
      goto LABEL_68;
    case 0xB:
      if (!sub_1000FD2C0(0xCu))
      {
        goto LABEL_72;
      }

      *(v10 + 140) |= 0x8000u;
      v18 = 12;
      goto LABEL_68;
    case 0xC:
      if (!sub_1000FD2C0(0xDu))
      {
        goto LABEL_72;
      }

      *(v10 + 140) |= 0x8000u;
      v18 = 13;
      goto LABEL_68;
    case 0xD:
      if (!sub_1000FD2C0(0xEu))
      {
        goto LABEL_72;
      }

      *(v10 + 140) |= 0x8000u;
      v18 = 14;
LABEL_68:
      *(v10 + 124) = v18;
      goto LABEL_69;
    case 0xE:
      if (!sub_1000FD2C0(1u))
      {
LABEL_72:
        v20 = "::CLP::LogEntry::Nearbyd::NI::LocationType_IsValid(value)";
        v21 = 20802;
        v22 = "set_location_type";
        goto LABEL_74;
      }

      *(v10 + 140) |= 0x8000u;
      *(v10 + 124) = 1;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_FAULT))
      {
        sub_1004BB1C8();
      }

LABEL_69:
      v11 = sub_10000A2E0(a1, v23);
      sub_10000A80C(v23);
      if (v27)
      {
        sub_10000A80C(v26);
      }

      return v11;
    default:
      goto LABEL_69;
  }
}

uint64_t sub_1002E70C0(uint64_t a1, const std::string *a2, _OWORD *a3)
{
  sub_10000A25C(*(a1 + 120), v16);
  if (v17 != 1)
  {
    return 0;
  }

  sub_10000A258(v13, v16);
  v15 |= 2u;
  v6 = v14;
  if (!v14)
  {
    operator new();
  }

  *(v14 + 44) |= 2u;
  v7 = *(v6 + 24);
  if (!v7)
  {
    operator new();
  }

  *(v7 + 496) |= 0x2000000u;
  v8 = *(v7 + 208);
  if (!v8)
  {
    operator new();
  }

  v9 = *(v8 + 60);
  *(v8 + 16) = *a3;
  *(v8 + 32) = a3[1];
  *(v8 + 60) = v9 | 0x1F;
  v10 = *(v8 + 48);
  if (v10 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
  {
    operator new();
  }

  std::string::operator=(v10, a2);
  v11 = sub_10000A2E0(a1, v13);
  sub_10000A80C(v13);
  if (v17)
  {
    sub_10000A80C(v16);
  }

  return v11;
}

uint64_t sub_1002E72DC(uint64_t a1, const std::string *a2, uint64_t a3)
{
  sub_10000A25C(*(a1 + 120), v18);
  if (v19 != 1)
  {
    return 0;
  }

  sub_10000A258(v15, v18);
  v17 |= 2u;
  v6 = v16;
  if (!v16)
  {
    operator new();
  }

  *(v16 + 44) |= 2u;
  v7 = *(v6 + 24);
  if (!v7)
  {
    operator new();
  }

  *(v7 + 496) |= 0x800000u;
  v8 = *(v7 + 192);
  if (!v8)
  {
    operator new();
  }

  v9 = *(v8 + 56);
  *(v8 + 16) = *a3;
  *(v8 + 32) = *(a3 + 16);
  *(v8 + 36) = *(a3 + 20);
  v10 = v9 | 0xFF;
  *(v8 + 56) = v10;
  v11 = *(a3 + 24);
  if (!v11)
  {
    if (!sub_10007A648(0))
    {
      goto LABEL_23;
    }

    v10 = *(v8 + 56) | 0x100;
    *(v8 + 56) = v10;
    *(v8 + 48) = 0;
    v11 = *(a3 + 24);
  }

  if (v11 == 1)
  {
    if (!sub_10007A648(1u))
    {
      goto LABEL_23;
    }

    v10 = *(v8 + 56) | 0x100;
    *(v8 + 56) = v10;
    *(v8 + 48) = 1;
    v11 = *(a3 + 24);
  }

  if (v11 == 2)
  {
    if (sub_10007A648(2u))
    {
      v10 = *(v8 + 56) | 0x100;
      *(v8 + 56) = v10;
      *(v8 + 48) = 2;
      goto LABEL_17;
    }

LABEL_23:
    __assert_rtn("set_motion_activity_confidence", "NearbyInteractionTypes.pb.h", 20309, "::CLP::LogEntry::Nearbyd::NI::MotionActivityConfidence_IsValid(value)");
  }

LABEL_17:
  *(v8 + 56) = v10 | 0x200;
  v12 = *(v8 + 40);
  if (v12 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
  {
    operator new();
  }

  std::string::operator=(v12, a2);
  v13 = sub_10000A2E0(a1, v15);
  sub_10000A80C(v15);
  if (v19)
  {
    sub_10000A80C(v18);
  }

  return v13;
}

uint64_t sub_1002E75A8(uint64_t a1, const std::string *a2, double a3)
{
  sub_10000A25C(*(a1 + 120), v15);
  if (v16 != 1)
  {
    return 0;
  }

  sub_10000A258(v12, v15);
  v14 |= 2u;
  v6 = v13;
  if (!v13)
  {
    operator new();
  }

  *(v13 + 44) |= 2u;
  v7 = *(v6 + 24);
  if (!v7)
  {
    operator new();
  }

  *(v7 + 500) |= 0x20u;
  v8 = *(v7 + 304);
  if (!v8)
  {
    operator new();
  }

  *(v8 + 36) |= 2u;
  v9 = *(v8 + 24);
  if (v9 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
  {
    operator new();
  }

  std::string::operator=(v9, a2);
  *(v8 + 36) |= 1u;
  *(v8 + 16) = a3;
  v10 = sub_10000A2E0(a1, v12);
  sub_10000A80C(v12);
  if (v16)
  {
    sub_10000A80C(v15);
  }

  return v10;
}

uint64_t sub_1002E77C0(uint64_t a1, const std::string *a2, uint64_t *a3)
{
  sub_10000A25C(*(a1 + 120), v31);
  if (v32 != 1)
  {
    return 0;
  }

  sub_10000A258(v28, v31);
  v30 |= 2u;
  v6 = v29;
  if (!v29)
  {
    operator new();
  }

  *(v29 + 44) |= 2u;
  v7 = *(v6 + 24);
  if (!v7)
  {
    operator new();
  }

  *(v7 + 496) |= 0x10000000u;
  v8 = *(v7 + 232);
  if (!v8)
  {
    operator new();
  }

  *(v8 + 96) |= 8u;
  v9 = *(v8 + 40);
  if (v9 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
  {
    operator new();
  }

  std::string::operator=(v9, a2);
  if (*(a3 + 16) == 1)
  {
    *(v8 + 96) |= 0x40u;
    v10 = *(v8 + 64);
    if (!v10)
    {
      operator new();
    }

    v11 = *a3;
    *(v10 + 32) |= 2u;
    *(v10 + 16) = v11;
    v12 = *(a3 + 2);
    if (v12)
    {
      if (v12 == 1)
      {
        if (sub_10007A654(2u))
        {
          v13 = 2;
          goto LABEL_23;
        }
      }

      else
      {
        if (v12 != 2)
        {
          goto LABEL_24;
        }

        if (sub_10007A654(3u))
        {
          v13 = 3;
LABEL_23:
          *(v10 + 32) |= 1u;
          *(v10 + 24) = v13;
          goto LABEL_24;
        }
      }
    }

    else if (sub_10007A654(1u))
    {
      v13 = 1;
      goto LABEL_23;
    }

    __assert_rtn("set_category", "CLPNearbyd.pb.h", 4927, "::CLP::LogEntry::Nearbyd::NearbydEntry_FindeeBoundedDisplacementCategory_IsValid(value)");
  }

LABEL_24:
  if (*(a3 + 72) == 1)
  {
    *(v8 + 96) |= 0x80u;
    v15 = *(v8 + 72);
    if (!v15)
    {
      operator new();
    }

    v16 = *(a3 + 10);
    if (v16)
    {
      if (v16 != 1)
      {
LABEL_34:
        if ((a3[9] & 1) == 0)
        {
          sub_1000195BC();
        }

        v18 = *(v15 + 64);
        *(v15 + 16) = *(a3 + 3);
        *(v15 + 32) = a3[8];
        *(v15 + 64) = v18 | 0x3E;
        *(v15 + 40) = *(a3 + 3);
        goto LABEL_36;
      }

      if (sub_10007A648(2u))
      {
        v17 = 2;
LABEL_33:
        *(v15 + 64) |= 1u;
        *(v15 + 56) = v17;
        goto LABEL_34;
      }
    }

    else if (sub_10007A648(1u))
    {
      v17 = 1;
      goto LABEL_33;
    }

    __assert_rtn("set_source", "CLPNearbyd.pb.h", 4790, "::CLP::LogEntry::Nearbyd::NearbydEntry_FindeeDisplacementSource_IsValid(value)");
  }

LABEL_36:
  if (*(a3 + 112) == 1)
  {
    *(v8 + 96) |= 0x100u;
    v19 = *(v8 + 80);
    if (!v19)
    {
      operator new();
    }

    v20 = *(v19 + 52);
    *(v19 + 16) = *(a3 + 5);
    *(v19 + 52) = v20 | 0xF;
    *(v19 + 32) = *(a3 + 6);
  }

  if (*(a3 + 160) == 1)
  {
    *(v8 + 96) |= 0x10u;
    v21 = *(v8 + 48);
    if (!v21)
    {
      operator new();
    }

    v22 = *(v21 + 40);
    *(v21 + 40) = v22 | 3;
    *(v21 + 16) = *(a3 + 17);
    v23 = *(a3 + 38);
    *(v21 + 40) = v22 | 7;
    *(v21 + 32) = v23;
  }

  v24 = *(v8 + 96);
  if (*(a3 + 128) == 1)
  {
    v25 = a3[15];
    v24 |= 0x20u;
    *(v8 + 96) = v24;
    *(v8 + 56) = v25;
  }

  v26 = *(a3 + 169) & a3[21];
  *(v8 + 96) = v24 | 0x200;
  *(v8 + 88) = v26;
  v14 = sub_10000A2E0(a1, v28);
  sub_10000A80C(v28);
  if (v32)
  {
    sub_10000A80C(v31);
  }

  return v14;
}

uint64_t sub_1002E7D18(uint64_t a1, const std::string *a2, uint64_t *a3)
{
  sub_10000A25C(*(a1 + 120), v24);
  if (v25 != 1)
  {
    return 0;
  }

  sub_10000A258(v21, v24);
  v23 |= 2u;
  v6 = v22;
  if (!v22)
  {
    operator new();
  }

  *(v22 + 44) |= 2u;
  v7 = *(v6 + 24);
  if (!v7)
  {
    operator new();
  }

  *(v7 + 500) |= 0x10u;
  v8 = *(v7 + 296);
  if (!v8)
  {
    operator new();
  }

  v9 = *a3;
  v10 = *(v8 + 116);
  v11 = v10 | 1;
  *(v8 + 116) = v10 | 1;
  *(v8 + 16) = v9;
  if (*(a3 + 32) == 1)
  {
    v12 = a3[3];
    v11 = v10 | 3;
    *(v8 + 116) = v10 | 3;
    *(v8 + 24) = v12;
  }

  if (*(a3 + 48) == 1)
  {
    v13 = a3[5];
    v11 |= 4u;
    *(v8 + 116) = v11;
    *(v8 + 32) = v13;
  }

  if (*(a3 + 64) == 1)
  {
    v14 = a3[7];
    v11 |= 8u;
    *(v8 + 116) = v11;
    *(v8 + 40) = v14;
  }

  if (*(a3 + 80) == 1)
  {
    v15 = a3[9];
    v11 |= 0x10u;
    *(v8 + 116) = v11;
    *(v8 + 48) = v15;
  }

  if (*(a3 + 96) == 1)
  {
    v16 = a3[11];
    v11 |= 0x20u;
    *(v8 + 116) = v11;
    *(v8 + 56) = v16;
  }

  if (*(a3 + 112) == 1)
  {
    v17 = a3[13];
    v11 |= 0x40u;
    *(v8 + 116) = v11;
    *(v8 + 64) = v17;
  }

  if (*(a3 + 152) == 1)
  {
    *(v8 + 80) = *(a3 + 15);
    v11 |= 0xF00u;
    *(v8 + 116) = v11;
    *(v8 + 96) = *(a3 + 17);
  }

  *(v8 + 116) = v11 | 0x80;
  v18 = *(v8 + 72);
  if (v18 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
  {
    operator new();
  }

  std::string::operator=(v18, a2);
  v19 = sub_10000A2E0(a1, v21);
  sub_10000A80C(v21);
  if (v25)
  {
    sub_10000A80C(v24);
  }

  return v19;
}

uint64_t sub_1002E7FFC(uint64_t a1, const std::string *a2, uint64_t a3)
{
  sub_10000A25C(*(a1 + 120), v18);
  if (v19 != 1)
  {
    return 0;
  }

  sub_10000A258(v15, v18);
  v17 |= 2u;
  v6 = v16;
  if (!v16)
  {
    operator new();
  }

  *(v16 + 44) |= 2u;
  v7 = *(v6 + 24);
  if (!v7)
  {
    operator new();
  }

  *(v7 + 500) |= 0x40u;
  v8 = *(v7 + 312);
  if (!v8)
  {
    operator new();
  }

  *(v8 + 44) |= 1u;
  v9 = *(v8 + 16);
  if (v9 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
  {
    operator new();
  }

  std::string::operator=(v9, a2);
  v10 = *(v8 + 44);
  *(v8 + 24) = *a3;
  v11 = *(a3 + 8);
  v12 = *(a3 + 10);
  *(v8 + 44) = v10 | 0xE;
  *(v8 + 32) = v11;
  *(v8 + 36) = v12;
  v13 = sub_10000A2E0(a1, v15);
  sub_10000A80C(v15);
  if (v19)
  {
    sub_10000A80C(v18);
  }

  return v13;
}

uint64_t sub_1002E8224(uint64_t a1, const std::string *a2, float32x2_t *a3)
{
  sub_10000A25C(*(a1 + 120), v38);
  if (v39 != 1)
  {
    return 0;
  }

  sub_10000A258(v35, v38);
  v37 |= 2u;
  v6 = v36;
  if (!v36)
  {
    operator new();
  }

  *(v36 + 44) |= 2u;
  v7 = *(v6 + 24);
  if (!v7)
  {
    operator new();
  }

  *(v7 + 500) |= 4u;
  v8 = *(v7 + 280);
  if (!v8)
  {
    operator new();
  }

  *(v8 + 104) |= 1u;
  v9 = *(v8 + 16);
  if (v9 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
  {
    operator new();
  }

  std::string::operator=(v9, a2);
  *(v8 + 104) |= 2u;
  v10 = *(v8 + 24);
  if (!v10)
  {
    operator new();
  }

  if (!a3->i32[0])
  {
    if (sub_10007A648(1u))
    {
      v11 = *(v10 + 28) | 1;
      *(v10 + 28) = v11;
      v12 = 1;
      goto LABEL_19;
    }

LABEL_97:
    v32 = "::CLP::LogEntry::Nearbyd::NI::AlgorithmStatus_IsValid(value)";
    v33 = 21910;
    v34 = "set_algorithm_status";
    goto LABEL_100;
  }

  if (a3->i32[0] == 1)
  {
    if (sub_10007A648(2u))
    {
      v11 = *(v10 + 28) | 1;
      *(v10 + 28) = v11;
      v12 = 2;
LABEL_19:
      *(v10 + 16) = v12;
      goto LABEL_21;
    }

    goto LABEL_97;
  }

  v11 = *(v10 + 28);
LABEL_21:
  *(v10 + 23) = a3->i8[7];
  *(v10 + 20) = a3->i8[4];
  v14 = a3->i8[5];
  *(v10 + 21) = v14;
  *(v10 + 28) = v11 | 0x1E;
  *(v10 + 22) = v14;
  if (a3[30].i8[0] == 1)
  {
    *(v8 + 104) |= 4u;
    v15 = *(v8 + 32);
    if (!v15)
    {
      operator new();
    }

    *(v15 + 116) |= 1u;
    v16 = *(v15 + 16);
    if (v16 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
    {
      operator new();
    }

    std::string::operator=(v16, a2);
    v17 = *(v15 + 116);
    *(v15 + 24) = a3[1];
    v18 = a3[3].f32[0];
    v19 = a3[2];
    *(v15 + 116) = v17 | 0xE;
    *(v15 + 32) = v18;
    *(v15 + 40) = v19;
    if (a3[5].i8[4] == 1)
    {
      *(v15 + 116) = v17 | 0x3E;
      *(v15 + 48) = vcvtq_f64_f32(a3[4]);
    }
  }

  if (a3[32].i8[0] == 1)
  {
    v20 = a3[31];
    *(v8 + 104) |= 8u;
    *(v8 + 40) = v20;
  }

  if (a3[34].i8[0] == 1)
  {
    v21 = a3[33];
    *(v8 + 104) |= 0x10u;
    *(v8 + 48) = v21;
  }

  v22 = a3[35].i32[0];
  if (v22 <= 1)
  {
    if (v22)
    {
      if (v22 != 1)
      {
        goto LABEL_49;
      }

      if (sub_100079CD0(2u))
      {
        v23 = 2;
        goto LABEL_48;
      }
    }

    else if (sub_100079CD0(1u))
    {
      v23 = 1;
      goto LABEL_48;
    }

LABEL_96:
    v32 = "::CLP::LogEntry::Nearbyd::NI::VerticalState_IsValid(value)";
    v33 = 22215;
    v34 = "set_vertical_state";
    goto LABEL_100;
  }

  if (v22 == 2)
  {
    if (sub_100079CD0(3u))
    {
      v23 = 3;
      goto LABEL_48;
    }

    goto LABEL_96;
  }

  if (v22 == 3)
  {
    if (sub_100079CD0(4u))
    {
      v23 = 4;
      goto LABEL_48;
    }

    goto LABEL_96;
  }

  if (v22 != 4)
  {
    goto LABEL_49;
  }

  if (!sub_100079CD0(5u))
  {
    goto LABEL_96;
  }

  v23 = 5;
LABEL_48:
  *(v8 + 104) |= 0x20u;
  *(v8 + 72) = v23;
LABEL_49:
  if (a3[37].i8[0] == 1)
  {
    v24 = a3[36];
    *(v8 + 104) |= 0x40u;
    *(v8 + 56) = v24;
  }

  if (a3[47].i8[0] == 1)
  {
    v25 = a3[46];
    *(v8 + 104) |= 0x200u;
    *(v8 + 88) = v25;
  }

  if (a3[32].i8[0] == 1)
  {
    v26 = a3[31];
    *(v8 + 104) |= 8u;
    *(v8 + 40) = v26;
  }

  if (a3[52].i8[0] == 1)
  {
    v27 = a3[51].i32[1];
    if (v27 > 3)
    {
      if (v27 > 5)
      {
        if (v27 == 6)
        {
          if (sub_1000FD2A8(7u))
          {
            v28 = 7;
            goto LABEL_81;
          }
        }

        else
        {
          if (v27 != 7)
          {
            goto LABEL_82;
          }

          if (sub_1000FD2A8(8u))
          {
            v28 = 8;
            goto LABEL_81;
          }
        }
      }

      else if (v27 == 4)
      {
        if (sub_1000FD2A8(5u))
        {
          v28 = 5;
          goto LABEL_81;
        }
      }

      else if (sub_1000FD2A8(6u))
      {
        v28 = 6;
        goto LABEL_81;
      }
    }

    else if (v27 > 1)
    {
      if (v27 == 2)
      {
        if (sub_1000FD2A8(3u))
        {
          v28 = 3;
          goto LABEL_81;
        }
      }

      else if (sub_1000FD2A8(4u))
      {
        v28 = 4;
        goto LABEL_81;
      }
    }

    else if (v27)
    {
      if (v27 != 1)
      {
        goto LABEL_82;
      }

      if (sub_1000FD2A8(2u))
      {
        v28 = 2;
LABEL_81:
        *(v8 + 104) |= 0x400u;
        *(v8 + 76) = v28;
        goto LABEL_82;
      }
    }

    else if (sub_1000FD2A8(1u))
    {
      v28 = 1;
      goto LABEL_81;
    }

    v32 = "::CLP::LogEntry::Nearbyd::NI::AlgorithmSource_IsValid(value)";
    v33 = 22358;
    v34 = "set_algorithm_source";
    goto LABEL_100;
  }

LABEL_82:
  if (a3[53].i8[0] != 1)
  {
    goto LABEL_93;
  }

  v29 = a3[52].i32[1];
  if (v29 == 2)
  {
    if (sub_10007A654(3u))
    {
      v30 = 3;
      goto LABEL_92;
    }

    goto LABEL_99;
  }

  if (v29 == 1)
  {
    if (sub_10007A654(2u))
    {
      v30 = 2;
      goto LABEL_92;
    }

    goto LABEL_99;
  }

  if (v29)
  {
    goto LABEL_93;
  }

  if (!sub_10007A654(1u))
  {
LABEL_99:
    v32 = "::CLP::LogEntry::Nearbyd::NI::FindeeMotionState_IsValid(value)";
    v33 = 22381;
    v34 = "set_target_motion_state";
LABEL_100:
    __assert_rtn(v34, "NearbyInteractionTypes.pb.h", v33, v32);
  }

  v30 = 1;
LABEL_92:
  *(v8 + 104) |= 0x800u;
  *(v8 + 96) = v30;
LABEL_93:
  v13 = sub_10000A2E0(a1, v35);
  sub_10000A80C(v35);
  if (v39)
  {
    sub_10000A80C(v38);
  }

  return v13;
}

uint64_t sub_1002E88FC(uint64_t a1, const std::string *a2, int a3, __int16 a4)
{
  sub_10000A25C(*(a1 + 120), v19);
  if (v20 != 1)
  {
    return 0;
  }

  sub_10000A258(v16, v19);
  v18 |= 2u;
  v8 = v17;
  if (!v17)
  {
    operator new();
  }

  *(v17 + 44) |= 2u;
  v9 = *(v8 + 24);
  if (!v9)
  {
    operator new();
  }

  *(v9 + 496) |= 0x80000000;
  v10 = *(v9 + 256);
  if (!v10)
  {
    operator new();
  }

  *(v10 + 36) |= 1u;
  v11 = *(v10 + 16);
  if (v11 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
  {
    operator new();
  }

  std::string::operator=(v11, a2);
  if ((a3 - 1) < 6)
  {
    v12 = a3 + 1;
  }

  else
  {
    v12 = 1;
  }

  if (!sub_1000FD2A8(v12))
  {
    __assert_rtn("set_algorithm_container", "NearbyInteractionTypes.pb.h", 22478, "::CLP::LogEntry::Nearbyd::NI::AlgorithmContainer_IsValid(value)");
  }

  v13 = *(v10 + 36);
  *(v10 + 36) = v13 | 2;
  *(v10 + 24) = v12;
  if ((a4 & 0x100) != 0)
  {
    *(v10 + 36) = v13 | 6;
    *(v10 + 28) = a4 & 1;
  }

  v14 = sub_10000A2E0(a1, v16);
  sub_10000A80C(v16);
  if (v20)
  {
    sub_10000A80C(v19);
  }

  return v14;
}

uint64_t sub_1002E8B6C(uint64_t a1, const std::string *a2)
{
  sub_10000A25C(*(a1 + 120), v13);
  if (v14 != 1)
  {
    return 0;
  }

  sub_10000A258(v10, v13);
  v12 |= 2u;
  v4 = v11;
  if (!v11)
  {
    operator new();
  }

  *(v11 + 44) |= 2u;
  v5 = *(v4 + 24);
  if (!v5)
  {
    operator new();
  }

  *(v5 + 500) |= 1u;
  v6 = *(v5 + 264);
  if (!v6)
  {
    operator new();
  }

  *(v6 + 28) |= 1u;
  v7 = *(v6 + 16);
  if (v7 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
  {
    operator new();
  }

  std::string::operator=(v7, a2);
  v8 = sub_10000A2E0(a1, v10);
  sub_10000A80C(v10);
  if (v14)
  {
    sub_10000A80C(v13);
  }

  return v8;
}

uint64_t sub_1002E8D68(uint64_t a1, const std::string *a2, double a3, double a4, double a5)
{
  sub_10000A25C(*(a1 + 120), v20);
  if (v21 != 1)
  {
    return 0;
  }

  sub_10000A258(v17, v20);
  v19 |= 2u;
  v10 = v18;
  if (!v18)
  {
    operator new();
  }

  *(v18 + 44) |= 2u;
  v11 = *(v10 + 24);
  if (!v11)
  {
    operator new();
  }

  *(v11 + 500) |= 2u;
  v12 = *(v11 + 272);
  if (!v12)
  {
    operator new();
  }

  *(v12 + 52) |= 1u;
  v13 = *(v12 + 16);
  if (v13 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
  {
    operator new();
  }

  std::string::operator=(v13, a2);
  v14 = *(v12 + 52);
  *(v12 + 32) = a4;
  *(v12 + 40) = a5;
  *(v12 + 52) = v14 | 0xE;
  *(v12 + 24) = a3;
  v15 = sub_10000A2E0(a1, v17);
  sub_10000A80C(v17);
  if (v21)
  {
    sub_10000A80C(v20);
  }

  return v15;
}

uint64_t sub_1002E8F94(uint64_t a1, const std::string *a2, uint64_t *a3)
{
  sub_10000A25C(*(a1 + 120), v16);
  if (v17 != 1)
  {
    return 0;
  }

  sub_10000A258(v13, v16);
  v15 |= 2u;
  v6 = v14;
  if (!v14)
  {
    operator new();
  }

  *(v14 + 44) |= 2u;
  v7 = *(v6 + 24);
  if (!v7)
  {
    operator new();
  }

  *(v7 + 500) |= 0x2000u;
  v8 = *(v7 + 368);
  if (!v8)
  {
    operator new();
  }

  *(v8 + 36) |= 1u;
  v9 = *(v8 + 16);
  if (v9 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
  {
    operator new();
  }

  std::string::operator=(v9, a2);
  v10 = *a3;
  *(v8 + 36) |= 2u;
  *(v8 + 24) = v10;
  v11 = sub_10000A2E0(a1, v13);
  sub_10000A80C(v13);
  if (v17)
  {
    sub_10000A80C(v16);
  }

  return v11;
}

uint64_t sub_1002E91B0(uint64_t a1, _WORD *a2)
{
  sub_10000A25C(*(a1 + 120), v13);
  if (v14 != 1)
  {
    return 0;
  }

  sub_10000A258(v10, v13);
  v12 |= 2u;
  v4 = v11;
  if (!v11)
  {
    operator new();
  }

  *(v11 + 44) |= 2u;
  v5 = *(v4 + 24);
  if (!v5)
  {
    operator new();
  }

  *(v5 + 500) |= 0x80000u;
  v6 = *(v5 + 416);
  if (!v6)
  {
    operator new();
  }

  v7 = *(v6 + 24);
  *(v6 + 16) = *a2;
  *(v6 + 24) = v7 | 3;
  v8 = sub_10000A2E0(a1, v10);
  sub_10000A80C(v10);
  if (v14)
  {
    sub_10000A80C(v13);
  }

  return v8;
}

uint64_t sub_1002E9374(uint64_t a1, unsigned __int16 **a2)
{
  sub_10000A25C(*(a1 + 120), v48);
  if (v49 != 1)
  {
    return 0;
  }

  sub_10000A258(v45, v48);
  v47 |= 2u;
  v4 = v46;
  if (!v46)
  {
    operator new();
  }

  *(v46 + 44) |= 2u;
  v5 = *(v4 + 24);
  if (!v5)
  {
    operator new();
  }

  *(v5 + 500) |= 0x10000u;
  v6 = *(v5 + 392);
  if (!v6)
  {
    operator new();
  }

  v7 = *a2;
  v8 = a2[1];
  while (v7 != v8)
  {
    v9 = v6[7];
    v10 = v6[6];
    if (v10 >= v9)
    {
      if (v9 == v6[8])
      {
        wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v6 + 4), v9 + 1);
        v9 = v6[7];
      }

      v6[7] = v9 + 1;
      sub_100149910();
    }

    v11 = *(v6 + 2);
    v6[6] = v10 + 1;
    v12 = *(v11 + 8 * v10);
    v13 = *v7;
    v14 = *(v12 + 180);
    *(v12 + 16) = *(v7 + 1);
    v15 = v7[8];
    v16 = v14 | 7;
    *(v12 + 180) = v14 | 7;
    *(v12 + 24) = v13;
    *(v12 + 28) = v15;
    if (*(v7 + 20) == 1)
    {
      v17 = v7[9];
      v16 = v14 | 0xF;
      *(v12 + 180) = v14 | 0xF;
      *(v12 + 64) = v17;
    }

    if (*(v7 + 32) == 1)
    {
      v18 = *(v7 + 3);
      v16 |= 0x10u;
      *(v12 + 180) = v16;
      *(v12 + 32) = v18;
    }

    if (*(v7 + 48) == 1)
    {
      v19 = *(v7 + 5);
      v16 |= 0x20u;
      *(v12 + 180) = v16;
      *(v12 + 40) = v19;
    }

    if (*(v7 + 64) == 1)
    {
      v20 = *(v7 + 7);
      v16 |= 0x40u;
      *(v12 + 180) = v16;
      *(v12 + 48) = v20;
    }

    if (*(v7 + 80) == 1)
    {
      v21 = *(v7 + 9);
      v16 |= 0x80u;
      *(v12 + 180) = v16;
      *(v12 + 56) = v21;
    }

    if (*(v7 + 96) == 1)
    {
      v22 = *(v7 + 11);
      v16 |= 0x100u;
      *(v12 + 180) = v16;
      *(v12 + 72) = v22;
    }

    if (*(v7 + 112) == 1)
    {
      v23 = *(v7 + 13);
      v16 |= 0x200u;
      *(v12 + 180) = v16;
      *(v12 + 80) = v23;
    }

    if (*(v7 + 128) == 1)
    {
      v24 = *(v7 + 15);
      v16 |= 0x400u;
      *(v12 + 180) = v16;
      *(v12 + 88) = v24;
    }

    if (*(v7 + 144) == 1)
    {
      v25 = *(v7 + 17);
      v16 |= 0x800u;
      *(v12 + 180) = v16;
      *(v12 + 96) = v25;
    }

    v26 = *(v7 + 38);
    v27 = v16 | 0x1000;
    *(v12 + 180) = v16 | 0x1000;
    *(v12 + 68) = v26;
    if (*(v7 + 184) == 1)
    {
      *(v12 + 104) = *(v7 + 10);
      v28 = *(v7 + 22);
      v27 = v16 | 0xF000;
      *(v12 + 180) = v16 | 0xF000;
      *(v12 + 120) = v28;
    }

    if (*(v7 + 216) == 1)
    {
      *(v12 + 128) = *(v7 + 12);
      v29 = *(v7 + 26);
      *(v12 + 180) = v27 | 0x70000;
      *(v12 + 144) = v29;
    }

    v30 = *(v7 + 28);
    v31 = *(v7 + 29);
    if (v30 != v31)
    {
      v32 = v30 + 12;
      do
      {
        v33 = *(v12 + 164);
        v34 = *(v12 + 160);
        if (v34 >= v33)
        {
          if (v33 == *(v12 + 168))
          {
            wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v12 + 152), v33 + 1);
            v33 = *(v12 + 164);
          }

          *(v12 + 164) = v33 + 1;
          sub_1001498AC();
        }

        v35 = *(v12 + 152);
        *(v12 + 160) = v34 + 1;
        v36 = *(v35 + 8 * v34);
        v37 = v32 - 12;
        v38 = *(v36 + 112);
        *(v36 + 104) = *(v32 - 48);
        *(v36 + 16) = *(v32 - 11);
        *(v36 + 32) = *(v32 - 9);
        v39 = *(v32 - 7);
        v40 = v38 | 0x3F;
        *(v36 + 112) = v38 | 0x3F;
        *(v36 + 48) = v39;
        if (*(v32 - 24) == 1)
        {
          *(v36 + 56) = *(v32 - 3);
          v41 = *(v32 - 4);
          v40 = v38 | 0x1FF;
          *(v36 + 112) = v38 | 0x1FF;
          *(v36 + 72) = v41;
        }

        if (*(v32 + 8) == 1)
        {
          *(v36 + 80) = *(v32 - 1);
          v42 = *v32;
          *(v36 + 112) = v40 | 0xE00;
          *(v36 + 96) = v42;
        }

        v32 += 14;
      }

      while (v37 + 14 != v31);
    }

    v7 += 124;
  }

  v43 = sub_10000A2E0(a1, v45);
  sub_10000A80C(v45);
  if (v49)
  {
    sub_10000A80C(v48);
  }

  return v43;
}

uint64_t sub_1002E9820(uint64_t a1, uint64_t a2)
{
  sub_10000A25C(*(a1 + 120), v37);
  if (v38 != 1)
  {
    return 0;
  }

  sub_10000A258(v34, v37);
  v36 |= 2u;
  v4 = v35;
  if (!v35)
  {
    operator new();
  }

  *(v35 + 44) |= 2u;
  v5 = *(v4 + 24);
  if (!v5)
  {
    operator new();
  }

  *(v5 + 500) |= 0x100000u;
  v6 = *(v5 + 424);
  if (!v6)
  {
    operator new();
  }

  v7 = *(v6 + 164);
  *(v6 + 16) = *a2;
  v8 = *(a2 + 12);
  v9 = *(a2 + 16);
  *(v6 + 24) = *(a2 + 8);
  *(v6 + 28) = v8;
  v10 = v7 | 0xF;
  *(v6 + 164) = v7 | 0xF;
  *(v6 + 72) = v9;
  if (*(a2 + 48) == 1)
  {
    *(v6 + 32) = *(a2 + 24);
    v11 = *(a2 + 40);
    v10 = v7 | 0x7F;
    *(v6 + 164) = v7 | 0x7F;
    *(v6 + 48) = v11;
  }

  if (*(a2 + 80) == 1)
  {
    *(v6 + 56) = *(a2 + 56);
    v12 = *(a2 + 72);
    v10 |= 0x380u;
    *(v6 + 164) = v10;
    *(v6 + 80) = v12;
  }

  v13 = *(a2 + 88);
  *(v6 + 164) = v10 | 0x400;
  *(v6 + 88) = v13;
  v14 = *(a2 + 96);
  v15 = *(a2 + 104);
  while (v14 != v15)
  {
    v16 = *v14;
    v17 = *(v6 + 104);
    if (v17 == *(v6 + 108))
    {
      sub_100077844((v6 + 96), v17 + 1);
      v17 = *(v6 + 104);
    }

    v18 = *(v6 + 96);
    *(v6 + 104) = v17 + 1;
    *(v18 + 4 * v17) = v16;
    ++v14;
  }

  v20 = *(a2 + 120);
  v21 = *(a2 + 128);
  if (v20 != v21)
  {
    v22 = *(v6 + 120);
    do
    {
      v23 = *v20;
      if (v22 == *(v6 + 124))
      {
        sub_1000778F4((v6 + 112), v22 + 1);
        v22 = *(v6 + 120);
      }

      *(*(v6 + 112) + 8 * v22++) = v23;
      *(v6 + 120) = v22;
      ++v20;
    }

    while (v20 != v21);
  }

  v24 = *(a2 + 144);
  v25 = *(a2 + 152);
  if (v24 != v25)
  {
    v26 = *(v6 + 136);
    do
    {
      v27 = *v24;
      if (v26 == *(v6 + 140))
      {
        sub_1000778F4((v6 + 128), v26 + 1);
        v26 = *(v6 + 136);
      }

      *(*(v6 + 128) + 8 * v26++) = v27;
      *(v6 + 136) = v26;
      ++v24;
    }

    while (v24 != v25);
  }

  v28 = *(a2 + 168);
  v29 = *(a2 + 176);
  if (v28 != v29)
  {
    v30 = *(v6 + 152);
    do
    {
      v31 = *v28;
      if (v30 == *(v6 + 156))
      {
        sub_1000778F4((v6 + 144), v30 + 1);
        v30 = *(v6 + 152);
      }

      *(*(v6 + 144) + 8 * v30++) = v31;
      *(v6 + 152) = v30;
      ++v28;
    }

    while (v28 != v29);
  }

  v32 = *(a2 + 192);
  *(v6 + 164) |= 0x8000u;
  *(v6 + 76) = v32;
  v19 = sub_10000A2E0(a1, v34);
  sub_10000A80C(v34);
  if (v38)
  {
    sub_10000A80C(v37);
  }

  return v19;
}

uint64_t sub_1002E9BB0(uint64_t a1, unsigned __int16 **a2)
{
  sub_10000A25C(*(a1 + 120), v30);
  if (v31 != 1)
  {
    return 0;
  }

  sub_10000A258(v27, v30);
  v29 |= 2u;
  v4 = v28;
  if (!v28)
  {
    operator new();
  }

  *(v28 + 44) |= 2u;
  v5 = *(v4 + 24);
  if (!v5)
  {
    operator new();
  }

  *(v5 + 500) |= 0x4000000u;
  v6 = *(v5 + 472);
  if (!v6)
  {
    operator new();
  }

  v7 = *a2;
  v8 = a2[1];
  while (v7 != v8)
  {
    v9 = v6[7];
    v10 = v6[6];
    if (v10 >= v9)
    {
      if (v9 == v6[8])
      {
        wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v6 + 4), v9 + 1);
        v9 = v6[7];
      }

      v6[7] = v9 + 1;
      sub_100149974();
    }

    v11 = *(v6 + 2);
    v6[6] = v10 + 1;
    v12 = *(v11 + 8 * v10);
    v13 = *v7;
    v14 = *(v12 + 76);
    v15 = v7[1];
    v16 = v14 | 3;
    *(v12 + 76) = v14 | 3;
    *(v12 + 16) = v15;
    *(v12 + 20) = v13;
    if (*(v7 + 16) == 1)
    {
      v17 = *(v7 + 1);
      v16 = v14 | 7;
      *(v12 + 76) = v14 | 7;
      *(v12 + 24) = v17;
    }

    if (*(v7 + 32) == 1)
    {
      v18 = *(v7 + 3);
      v16 |= 8u;
      *(v12 + 76) = v16;
      *(v12 + 32) = v18;
    }

    if (*(v7 + 48) == 1)
    {
      v19 = *(v7 + 5);
      *(v12 + 76) = v16 | 0x10;
      *(v12 + 40) = v19;
    }

    v20 = *(v7 + 7);
    v21 = *(v7 + 8);
    if (v20 != v21)
    {
      v22 = *(v12 + 56);
      do
      {
        v23 = *v20;
        if (v22 == *(v12 + 60))
        {
          sub_1000778F4((v12 + 48), v22 + 1);
          v22 = *(v12 + 56);
        }

        *(*(v12 + 48) + 8 * v22++) = v23;
        *(v12 + 56) = v22;
        ++v20;
      }

      while (v20 != v21);
    }

    if (v7[44])
    {
      v24 = *(v7 + 10);
      *(v12 + 76) |= 0x40u;
      *(v12 + 64) = v24;
    }

    v7 += 48;
  }

  v25 = sub_10000A2E0(a1, v27);
  sub_10000A80C(v27);
  if (v31)
  {
    sub_10000A80C(v30);
  }

  return v25;
}

uint64_t sub_1002E9ECC(uint64_t a1, uint64_t a2)
{
  sub_10000A25C(*(a1 + 120), v19);
  if (v20 != 1)
  {
    return 0;
  }

  sub_10000A258(v16, v19);
  v18 |= 2u;
  v4 = v17;
  if (!v17)
  {
    operator new();
  }

  *(v17 + 44) |= 2u;
  v5 = *(v4 + 24);
  if (!v5)
  {
    operator new();
  }

  *(v5 + 500) |= 0x20000u;
  v6 = *(v5 + 400);
  if (!v6)
  {
    operator new();
  }

  v7 = *(v6 + 96);
  *(v6 + 16) = *a2;
  v8 = *(a2 + 8);
  v9 = *(a2 + 16);
  *(v6 + 24) = *(a2 + 12);
  *(v6 + 28) = v8;
  v10 = v7 | 0xF;
  *(v6 + 96) = v7 | 0xF;
  *(v6 + 88) = v9;
  if (*(a2 + 48) == 1)
  {
    *(v6 + 32) = *(a2 + 24);
    v11 = *(a2 + 40);
    v10 = v7 | 0x7F;
    *(v6 + 96) = v7 | 0x7F;
    *(v6 + 48) = v11;
  }

  if (*(a2 + 80) == 1)
  {
    *(v6 + 56) = *(a2 + 56);
    v12 = *(a2 + 72);
    v10 |= 0x380u;
    *(v6 + 96) = v10;
    *(v6 + 72) = v12;
  }

  v13 = *(a2 + 88);
  *(v6 + 96) = v10 | 0x400;
  *(v6 + 80) = v13;
  v14 = sub_10000A2E0(a1, v16);
  sub_10000A80C(v16);
  if (v20)
  {
    sub_10000A80C(v19);
  }

  return v14;
}

uint64_t sub_1002EA0F8(uint64_t a1, uint64_t a2)
{
  sub_10000A25C(*(a1 + 120), v14);
  if (v15 != 1)
  {
    return 0;
  }

  sub_10000A258(v11, v14);
  v13 |= 2u;
  v4 = v12;
  if (!v12)
  {
    operator new();
  }

  *(v12 + 44) |= 2u;
  v5 = *(v4 + 24);
  if (!v5)
  {
    operator new();
  }

  *(v5 + 500) |= 0x40000u;
  v6 = *(v5 + 408);
  if (!v6)
  {
    operator new();
  }

  v7 = *(v6 + 56);
  if (*(a2 + 32) == 1)
  {
    *(v6 + 48) = 1;
    *(v6 + 16) = *a2;
    v8 = *(a2 + 24);
    *(v6 + 32) = *(a2 + 16);
  }

  else
  {
    *(v6 + 48) = 0;
    *(v6 + 16) = 0;
    *(v6 + 24) = 0;
    v8 = 0;
    *(v6 + 32) = 0;
  }

  *(v6 + 56) = v7 | 0x1F;
  *(v6 + 40) = v8;
  v9 = sub_10000A2E0(a1, v11);
  sub_10000A80C(v11);
  if (v15)
  {
    sub_10000A80C(v14);
  }

  return v9;
}

uint64_t sub_1002EA2EC(uint64_t a1, const std::string *a2, float32x2_t *a3)
{
  sub_10000A25C(*(a1 + 120), v26);
  if (v27 != 1)
  {
    return 0;
  }

  sub_10000A258(v23, v26);
  v25 |= 2u;
  v6 = v24;
  if (!v24)
  {
    operator new();
  }

  *(v24 + 44) |= 2u;
  v7 = *(v6 + 24);
  if (!v7)
  {
    operator new();
  }

  *(v7 + 496) |= 0x40000000u;
  v8 = *(v7 + 248);
  if (!v8)
  {
    operator new();
  }

  *(v8 + 116) |= 1u;
  v9 = *(v8 + 16);
  if (v9 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
  {
    operator new();
  }

  std::string::operator=(v9, a2);
  v10 = *(v8 + 116);
  *(v8 + 24) = *a3;
  v11 = a3[2].f32[0];
  v12 = a3[1];
  v13 = v10 | 0xE;
  *(v8 + 116) = v10 | 0xE;
  *(v8 + 32) = v11;
  *(v8 + 40) = v12;
  if (a3[4].i8[4] == 1)
  {
    v13 = v10 | 0x3E;
    *(v8 + 116) = v10 | 0x3E;
    *(v8 + 48) = vcvtq_f64_f32(a3[3]);
  }

  if (a3[22].i8[2] == 1)
  {
    v14 = a3[22].u16[0];
    v13 |= 0x40u;
    *(v8 + 116) = v13;
    *(v8 + 64) = v14;
  }

  if (a3[22].i8[5] == 1)
  {
    v15 = a3[22].u8[4];
    v13 |= 0x80u;
    *(v8 + 116) = v13;
    *(v8 + 68) = v15;
  }

  if (a3[9].i8[0] == 1)
  {
    v16 = a3[8];
    v13 |= 0x100u;
    *(v8 + 116) = v13;
    *(v8 + 72) = v16;
  }

  if (a3[22].i8[7] == 1)
  {
    v17 = a3[22].u8[6];
    v13 |= 0x200u;
    *(v8 + 116) = v13;
    *(v8 + 96) = v17;
  }

  if (a3[24].i8[0] == 1)
  {
    v18 = a3[23];
    v13 |= 0x400u;
    *(v8 + 116) = v13;
    *(v8 + 80) = v18;
  }

  if (a3[26].i8[0] == 1)
  {
    v19 = a3[25];
    v13 |= 0x800u;
    *(v8 + 116) = v13;
    *(v8 + 88) = v19;
  }

  if (a3[28].i8[0] == 1)
  {
    v20 = a3[27];
    *(v8 + 116) = v13 | 0x1000;
    *(v8 + 104) = v20;
  }

  v21 = sub_10000A2E0(a1, v23);
  sub_10000A80C(v23);
  if (v27)
  {
    sub_10000A80C(v26);
  }

  return v21;
}

uint64_t sub_1002EA5FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_100009FF4(v16);
  v19 |= 1u;
  v6 = v17;
  if (!v17)
  {
    operator new();
  }

  v7 = *(v17 + 52);
  *(v17 + 16) = *a2;
  v8 = *(a2 + 16);
  *(v6 + 52) = v7 | 7;
  *(v6 + 32) = v8;
  v19 |= 2u;
  v9 = v18;
  if (!v18)
  {
    operator new();
  }

  *(v18 + 44) |= 2u;
  v10 = *(v9 + 24);
  if (!v10)
  {
    operator new();
  }

  *(v10 + 500) |= 0x200u;
  v11 = *(v10 + 336);
  if (!v11)
  {
    operator new();
  }

  v12 = *(v11 + 124);
  *(v11 + 16) = *a3;
  *(v11 + 24) = *(a3 + 8);
  *(v11 + 28) = *(a3 + 12);
  *(v11 + 32) = *(a3 + 16);
  *(v11 + 36) = *(a3 + 20);
  *(v11 + 40) = *(a3 + 24);
  *(v11 + 44) = *(a3 + 28);
  *(v11 + 48) = *(a3 + 32);
  *(v11 + 64) = *(a3 + 48);
  *(v11 + 72) = *(a3 + 56);
  *(v11 + 80) = *(a3 + 64);
  *(v11 + 96) = *(a3 + 80);
  *(v11 + 100) = *(a3 + 84);
  *(v11 + 104) = *(a3 + 88);
  *(v11 + 124) = v12 | 0x3FFFF;
  *(v11 + 108) = *(a3 + 92);
  v13 = *(a3 + 100);
  if (!sub_10007A648(v13))
  {
    __assert_rtn("set_displacing_state", "NearbyInteractionTypes.pb.h", 23494, "::CLP::LogEntry::Nearbyd::NI::DisplacingState_IsValid(value)");
  }

  *(v11 + 124) |= 0x40000u;
  *(v11 + 116) = v13;
  v14 = sub_10000A2E0(a1, v16);
  sub_10000A80C(v16);
  return v14;
}

uint64_t sub_1002EA894(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_100009FF4(v16);
  v19 |= 1u;
  v6 = v17;
  if (!v17)
  {
    operator new();
  }

  v7 = *(v17 + 52);
  *(v17 + 16) = *a2;
  v8 = *(a2 + 16);
  *(v6 + 52) = v7 | 7;
  *(v6 + 32) = v8;
  v19 |= 2u;
  v9 = v18;
  if (!v18)
  {
    operator new();
  }

  *(v18 + 44) |= 2u;
  v10 = *(v9 + 24);
  if (!v10)
  {
    operator new();
  }

  *(v10 + 500) |= 0x400u;
  v11 = *(v10 + 344);
  if (!v11)
  {
    operator new();
  }

  v12 = *(v11 + 40);
  *(v11 + 16) = *a3;
  v13 = *(a3 + 10);
  *(v11 + 24) = *(a3 + 8);
  *(v11 + 28) = v13;
  *(v11 + 40) = v12 | 0xF;
  *(v11 + 32) = -128;
  v14 = sub_10000A2E0(a1, v16);
  sub_10000A80C(v16);
  return v14;
}

uint64_t sub_1002EAA8C(uint64_t a1, uint64_t a2, unsigned __int16 *a3)
{
  sub_100009FF4(v19);
  v22 |= 1u;
  v6 = v20;
  if (!v20)
  {
    operator new();
  }

  v7 = *(v20 + 52);
  *(v20 + 16) = *a2;
  v8 = *(a2 + 16);
  *(v6 + 52) = v7 | 7;
  *(v6 + 32) = v8;
  v22 |= 2u;
  v9 = v21;
  if (!v21)
  {
    operator new();
  }

  *(v21 + 44) |= 2u;
  v10 = *(v9 + 24);
  if (!v10)
  {
    operator new();
  }

  *(v10 + 500) |= 0x800u;
  v11 = *(v10 + 352);
  if (!v11)
  {
    operator new();
  }

  v12 = *(v11 + 32);
  *(v11 + 24) = *a3;
  *(v11 + 32) = v12 | 3;
  v13 = *(v11 + 16);
  if (!v13)
  {
    operator new();
  }

  v14 = *(v13 + 72);
  *(v13 + 16) = *(a3 + 1);
  *(v13 + 32) = *(a3 + 9);
  *(v13 + 48) = *(a3 + 17);
  v15 = *(a3 + 43);
  *(v13 + 56) = *(a3 + 42);
  *(v13 + 60) = v15;
  v16 = *(a3 + 44);
  *(v13 + 72) = v14 | 0xFF;
  *(v13 + 64) = v16;
  v17 = sub_10000A2E0(a1, v19);
  sub_10000A80C(v19);
  return v17;
}

uint64_t sub_1002EACE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_100009FF4(v17);
  v20 |= 1u;
  v6 = v18;
  if (!v18)
  {
    operator new();
  }

  v7 = *(v18 + 52);
  *(v18 + 16) = *a2;
  v8 = *(a2 + 16);
  *(v6 + 52) = v7 | 7;
  *(v6 + 32) = v8;
  v20 |= 2u;
  v9 = v19;
  if (!v19)
  {
    operator new();
  }

  *(v19 + 44) |= 2u;
  v10 = *(v9 + 24);
  if (!v10)
  {
    operator new();
  }

  *(v10 + 500) |= 0x1000u;
  v11 = *(v10 + 360);
  if (!v11)
  {
    operator new();
  }

  v12 = *(v11 + 40);
  *(v11 + 32) = *(a3 + 8);
  *(v11 + 16) = *a3;
  *(v11 + 40) = v12 | 7;
  v13 = *(v11 + 24);
  if (!v13)
  {
    operator new();
  }

  v14 = *(v13 + 48);
  *(v13 + 16) = *(a3 + 10);
  *(v13 + 32) = *(a3 + 26);
  *(v13 + 40) = *(a3 + 34);
  *(v13 + 41) = *(a3 + 35);
  *(v13 + 48) = v14 | 0x3F;
  v15 = sub_10000A2E0(a1, v17);
  sub_10000A80C(v17);
  return v15;
}

uint64_t sub_1002EAF40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_100009FF4(v15);
  v18 |= 1u;
  v6 = v16;
  if (!v16)
  {
    operator new();
  }

  v7 = *(v16 + 52);
  *(v16 + 16) = *a2;
  v8 = *(a2 + 16);
  *(v6 + 52) = v7 | 7;
  *(v6 + 32) = v8;
  v18 |= 2u;
  v9 = v17;
  if (!v17)
  {
    operator new();
  }

  *(v17 + 44) |= 2u;
  v10 = *(v9 + 24);
  if (!v10)
  {
    operator new();
  }

  *(v10 + 500) |= 0x4000u;
  v11 = *(v10 + 376);
  if (!v11)
  {
    operator new();
  }

  v12 = *(v11 + 48);
  *(v11 + 40) = *(a3 + 8);
  *(v11 + 16) = *a3;
  *(v11 + 48) = v12 | 0xF;
  *(v11 + 24) = *(a3 + 10);
  v13 = sub_10000A2E0(a1, v15);
  sub_10000A80C(v15);
  return v13;
}

uint64_t sub_1002EB134(uint64_t a1, uint64_t a2, unsigned __int16 *a3)
{
  if (!*(a3 + 8))
  {
    return 0;
  }

  v6 = 0;
  v7 = (a3 + 44);
  do
  {
    sub_100009FF4(v21);
    v24 |= 1u;
    v8 = v22;
    if (!v22)
    {
      operator new();
    }

    v9 = *(v22 + 52);
    *(v22 + 16) = *a2;
    v10 = *(a2 + 16);
    *(v8 + 52) = v9 | 7;
    *(v8 + 32) = v10;
    v24 |= 2u;
    v11 = v23;
    if (!v23)
    {
      operator new();
    }

    *(v23 + 44) |= 2u;
    v12 = *(v11 + 24);
    if (!v12)
    {
      operator new();
    }

    *(v12 + 500) |= 0x400000u;
    v13 = *(v12 + 440);
    if (!v13)
    {
      operator new();
    }

    v14 = *v7 / 3.19488e10;
    v15 = *(v13 + 64);
    *(v13 + 16) = *(a3 + 11);
    v16 = *(v7 - 6);
    *(v13 + 24) = *a3;
    *(v13 + 28) = v16;
    v17 = *(v7 - 5);
    *(v13 + 32) = vcvtd_n_f64_s32(*(v7 - 2), 2uLL);
    v18 = *(v7 - 2);
    *(v13 + 40) = v17;
    *(v13 + 44) = v18;
    *(v13 + 56) = *(v7 - 1);
    *(v13 + 64) = v15 | 0xFF;
    *(v13 + 48) = v14 * 299792458.0;
    v19 = sub_10000A2E0(a1, v21);
    sub_10000A80C(v21);
    if ((v19 & 1) == 0)
    {
      break;
    }

    ++v6;
    v7 = (v7 + 13);
  }

  while (v6 < *(a3 + 8));
  return v19;
}

uint64_t sub_1002EB3C8(uint64_t a1, uint64_t a2, unsigned __int16 *a3, uint64_t a4, int a5)
{
  sub_100009FF4(v20);
  v23 |= 1u;
  v10 = v21;
  if (!v21)
  {
    operator new();
  }

  v11 = *(v21 + 52);
  *(v21 + 16) = *a2;
  v12 = *(a2 + 16);
  *(v10 + 52) = v11 | 7;
  *(v10 + 32) = v12;
  v23 |= 2u;
  v13 = v22;
  if (!v22)
  {
    operator new();
  }

  *(v22 + 44) |= 2u;
  v14 = *(v13 + 24);
  if (!v14)
  {
    operator new();
  }

  *(v14 + 500) |= 0x400000u;
  v15 = *(v14 + 440);
  if (!v15)
  {
    operator new();
  }

  v16 = llround((10 * (*a3 << 21 >> 21)) / 100.0);
  v17 = *(v15 + 64);
  *(v15 + 16) = a4;
  *(v15 + 64) = v17 | 3;
  *(v15 + 24) = a5;
  *(v15 + 28) = *a3 >> 13;
  *(v15 + 64) = v17 | 0xF;
  *(v15 + 40) = 0;
  *(v15 + 56) = (*a3 >> 11) & 3;
  *(v15 + 64) = v17 | 0xCF;
  *(v15 + 48) = v16;
  v18 = sub_10000A2E0(a1, v20);
  sub_10000A80C(v20);
  return v18;
}

_BYTE *sub_1002EB624(_BYTE *a1, char **a2)
{
  v4 = sub_100004A08(a1, *a2);
  sub_100004A08(v4 + 24, a2[1]);
  return a1;
}

void sub_1002EB660(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

double sub_1002EB67C(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 32);
  if (!v2)
  {
    sub_1004BB260();
  }

  if ((a2 & 0x80000000) != 0)
  {
    sub_1004BB234();
  }

  if (*(a1 + 16) <= a2)
  {
    sub_1004BB208();
  }

  return *(v2 + 8 * a2);
}

double sub_1002EB6B8(uint64_t a1, int a2, int a3)
{
  v3 = *(a1 + 32);
  if (!v3)
  {
    sub_1004BB2E4();
  }

  v4 = a2 + *(a1 + 20) * a3;
  if ((v4 & 0x80000000) != 0)
  {
    sub_1004BB2B8();
  }

  if (v4 >= *(a1 + 16))
  {
    sub_1004BB28C();
  }

  return *(v3 + 8 * v4);
}

void *sub_1002EB780(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_1009A3858;
  sub_1002EB878(&v6, (a1 + 3), a2, a3, a4);
  return a1;
}

void sub_1002EB818(std::__shared_weak_count *a1)
{
  a1->__vftable = off_1009A3858;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_1002EB878(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v5 = a3[1];
  v6 = *a3;
  v7 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_1000DE7BC(a2, &v6, a4, a5);
  if (v7)
  {
    sub_10000AD84(v7);
  }
}

void sub_1002EB8D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_10000AD84(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1002EB8EC()
{
  sub_10041C9CC();
  v0 = std::string::insert(&v43, 0, "reverseLUT_A");
  v1 = *&v0->__r_.__value_.__l.__data_;
  *&v45[0] = *(&v0->__r_.__value_.__l + 2);
  v44 = v1;
  v0->__r_.__value_.__l.__size_ = 0;
  v0->__r_.__value_.__r.__words[2] = 0;
  v0->__r_.__value_.__r.__words[0] = 0;
  v2 = std::string::append(&v44, ".bin");
  v3 = *&v2->__r_.__value_.__l.__data_;
  qword_1009F4140 = v2->__r_.__value_.__r.__words[2];
  xmmword_1009F4130 = v3;
  v2->__r_.__value_.__l.__size_ = 0;
  v2->__r_.__value_.__r.__words[2] = 0;
  v2->__r_.__value_.__r.__words[0] = 0;
  if (SBYTE7(v45[0]) < 0)
  {
    operator delete(v44);
  }

  if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v43.__r_.__value_.__l.__data_);
  }

  __cxa_atexit(&std::string::~string, &xmmword_1009F4130, &_mh_execute_header);
  sub_10041C9CC();
  v4 = std::string::insert(&v43, 0, "reverseLUT_A");
  v5 = *&v4->__r_.__value_.__l.__data_;
  *&v45[0] = *(&v4->__r_.__value_.__l + 2);
  v44 = v5;
  v4->__r_.__value_.__l.__size_ = 0;
  v4->__r_.__value_.__r.__words[2] = 0;
  v4->__r_.__value_.__r.__words[0] = 0;
  v6 = std::string::append(&v44, ".bin");
  v7 = *&v6->__r_.__value_.__l.__data_;
  qword_1009F4158 = v6->__r_.__value_.__r.__words[2];
  xmmword_1009F4148 = v7;
  v6->__r_.__value_.__l.__size_ = 0;
  v6->__r_.__value_.__r.__words[2] = 0;
  v6->__r_.__value_.__r.__words[0] = 0;
  if (SBYTE7(v45[0]) < 0)
  {
    operator delete(v44);
  }

  if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v43.__r_.__value_.__l.__data_);
  }

  __cxa_atexit(&std::string::~string, &xmmword_1009F4148, &_mh_execute_header);
  sub_10041C9CC();
  v8 = std::string::insert(&v43, 0, "reverseLUT_A");
  v9 = *&v8->__r_.__value_.__l.__data_;
  *&v45[0] = *(&v8->__r_.__value_.__l + 2);
  v44 = v9;
  v8->__r_.__value_.__l.__size_ = 0;
  v8->__r_.__value_.__r.__words[2] = 0;
  v8->__r_.__value_.__r.__words[0] = 0;
  v10 = std::string::append(&v44, ".bin");
  v11 = *&v10->__r_.__value_.__l.__data_;
  qword_1009F4170 = v10->__r_.__value_.__r.__words[2];
  xmmword_1009F4160 = v11;
  v10->__r_.__value_.__l.__size_ = 0;
  v10->__r_.__value_.__r.__words[2] = 0;
  v10->__r_.__value_.__r.__words[0] = 0;
  if (SBYTE7(v45[0]) < 0)
  {
    operator delete(v44);
  }

  if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v43.__r_.__value_.__l.__data_);
  }

  __cxa_atexit(&std::string::~string, &xmmword_1009F4160, &_mh_execute_header);
  sub_10041C9CC();
  v12 = std::string::insert(&v43, 0, "reverseLUT_A");
  v13 = *&v12->__r_.__value_.__l.__data_;
  *&v45[0] = *(&v12->__r_.__value_.__l + 2);
  v44 = v13;
  v12->__r_.__value_.__l.__size_ = 0;
  v12->__r_.__value_.__r.__words[2] = 0;
  v12->__r_.__value_.__r.__words[0] = 0;
  v14 = std::string::append(&v44, ".bin");
  v15 = *&v14->__r_.__value_.__l.__data_;
  qword_1009F4188 = v14->__r_.__value_.__r.__words[2];
  xmmword_1009F4178 = v15;
  v14->__r_.__value_.__l.__size_ = 0;
  v14->__r_.__value_.__r.__words[2] = 0;
  v14->__r_.__value_.__r.__words[0] = 0;
  if (SBYTE7(v45[0]) < 0)
  {
    operator delete(v44);
  }

  if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v43.__r_.__value_.__l.__data_);
  }

  __cxa_atexit(&std::string::~string, &xmmword_1009F4178, &_mh_execute_header);
  sub_10041C9CC();
  v16 = std::string::insert(&v43, 0, "reverseLUT_A");
  v17 = *&v16->__r_.__value_.__l.__data_;
  *&v45[0] = *(&v16->__r_.__value_.__l + 2);
  v44 = v17;
  v16->__r_.__value_.__l.__size_ = 0;
  v16->__r_.__value_.__r.__words[2] = 0;
  v16->__r_.__value_.__r.__words[0] = 0;
  v18 = std::string::append(&v44, ".bin");
  v19 = *&v18->__r_.__value_.__l.__data_;
  qword_1009F41A0 = v18->__r_.__value_.__r.__words[2];
  xmmword_1009F4190 = v19;
  v18->__r_.__value_.__l.__size_ = 0;
  v18->__r_.__value_.__r.__words[2] = 0;
  v18->__r_.__value_.__r.__words[0] = 0;
  if (SBYTE7(v45[0]) < 0)
  {
    operator delete(v44);
  }

  if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v43.__r_.__value_.__l.__data_);
  }

  __cxa_atexit(&std::string::~string, &xmmword_1009F4190, &_mh_execute_header);
  sub_10041C9CC();
  v20 = std::string::insert(&v43, 0, "reverseLUT_A");
  v21 = *&v20->__r_.__value_.__l.__data_;
  *&v45[0] = *(&v20->__r_.__value_.__l + 2);
  v44 = v21;
  v20->__r_.__value_.__l.__size_ = 0;
  v20->__r_.__value_.__r.__words[2] = 0;
  v20->__r_.__value_.__r.__words[0] = 0;
  v22 = std::string::append(&v44, ".bin");
  v23 = *&v22->__r_.__value_.__l.__data_;
  qword_1009F41B8 = v22->__r_.__value_.__r.__words[2];
  xmmword_1009F41A8 = v23;
  v22->__r_.__value_.__l.__size_ = 0;
  v22->__r_.__value_.__r.__words[2] = 0;
  v22->__r_.__value_.__r.__words[0] = 0;
  if (SBYTE7(v45[0]) < 0)
  {
    operator delete(v44);
  }

  if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v43.__r_.__value_.__l.__data_);
  }

  __cxa_atexit(&std::string::~string, &xmmword_1009F41A8, &_mh_execute_header);
  sub_10041C9CC();
  v24 = std::string::insert(&v43, 0, "reverseLUT_A");
  v25 = *&v24->__r_.__value_.__l.__data_;
  *&v45[0] = *(&v24->__r_.__value_.__l + 2);
  v44 = v25;
  v24->__r_.__value_.__l.__size_ = 0;
  v24->__r_.__value_.__r.__words[2] = 0;
  v24->__r_.__value_.__r.__words[0] = 0;
  v26 = std::string::append(&v44, ".bin");
  v27 = *&v26->__r_.__value_.__l.__data_;
  qword_1009F41D0 = v26->__r_.__value_.__r.__words[2];
  xmmword_1009F41C0 = v27;
  v26->__r_.__value_.__l.__size_ = 0;
  v26->__r_.__value_.__r.__words[2] = 0;
  v26->__r_.__value_.__r.__words[0] = 0;
  if (SBYTE7(v45[0]) < 0)
  {
    operator delete(v44);
  }

  if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v43.__r_.__value_.__l.__data_);
  }

  __cxa_atexit(&std::string::~string, &xmmword_1009F41C0, &_mh_execute_header);
  sub_10041C9CC();
  v28 = std::string::insert(&v43, 0, "reverseLUT_A");
  v29 = *&v28->__r_.__value_.__l.__data_;
  *&v45[0] = *(&v28->__r_.__value_.__l + 2);
  v44 = v29;
  v28->__r_.__value_.__l.__size_ = 0;
  v28->__r_.__value_.__r.__words[2] = 0;
  v28->__r_.__value_.__r.__words[0] = 0;
  v30 = std::string::append(&v44, ".bin");
  v31 = *&v30->__r_.__value_.__l.__data_;
  qword_1009F41E8 = v30->__r_.__value_.__r.__words[2];
  xmmword_1009F41D8 = v31;
  v30->__r_.__value_.__l.__size_ = 0;
  v30->__r_.__value_.__r.__words[2] = 0;
  v30->__r_.__value_.__r.__words[0] = 0;
  if (SBYTE7(v45[0]) < 0)
  {
    operator delete(v44);
  }

  if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v43.__r_.__value_.__l.__data_);
  }

  __cxa_atexit(&std::string::~string, &xmmword_1009F41D8, &_mh_execute_header);
  sub_10041C9CC();
  v32 = std::string::insert(&v43, 0, "reverseLUT_A");
  v33 = *&v32->__r_.__value_.__l.__data_;
  *&v45[0] = *(&v32->__r_.__value_.__l + 2);
  v44 = v33;
  v32->__r_.__value_.__l.__size_ = 0;
  v32->__r_.__value_.__r.__words[2] = 0;
  v32->__r_.__value_.__r.__words[0] = 0;
  v34 = std::string::append(&v44, ".bin");
  v35 = *&v34->__r_.__value_.__l.__data_;
  qword_1009F4200 = v34->__r_.__value_.__r.__words[2];
  xmmword_1009F41F0 = v35;
  v34->__r_.__value_.__l.__size_ = 0;
  v34->__r_.__value_.__r.__words[2] = 0;
  v34->__r_.__value_.__r.__words[0] = 0;
  if (SBYTE7(v45[0]) < 0)
  {
    operator delete(v44);
  }

  if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v43.__r_.__value_.__l.__data_);
  }

  __cxa_atexit(&std::string::~string, &xmmword_1009F41F0, &_mh_execute_header);
  v44 = xmmword_10056A480;
  v45[0] = unk_10056A490;
  sub_1001BD0B0(qword_1009F4208, &v44, 4);
  xmmword_1009F4220 = xmmword_100563BD0;
  *algn_1009F4230 = xmmword_100563BE0;
  qword_1009F4248 = 0;
  unk_1009F4250 = 0;
  qword_1009F4240 = 0x3FD999999999999ALL;
  unk_1009F4258 = xmmword_100563BF0;
  dword_1009F4268 = 5;
  qword_1009F4270 = 0x4000000000000000;
  dword_1009F4278 = 5;
  byte_1009F4280 = 0;
  *&algn_1009F4281[3] = 0x30000000ALL;
  xmmword_1009F4290 = xmmword_100563C00;
  unk_1009F42A0 = xmmword_100563C10;
  xmmword_1009F42B0 = xmmword_100563C20;
  qword_1009F42C0 = 0x3FE3333333333333;
  dword_1009F42C8 = 3;
  xmmword_1009F42D0 = xmmword_100563C30;
  unk_1009F42E0 = xmmword_100563C10;
  xmmword_1009F42F0 = xmmword_100563C00;
  qword_1009F4300 = 0x3FE3333333333333;
  byte_1009F4308 = 0;
  xmmword_1009F4310 = xmmword_100563C40;
  unk_1009F4320 = xmmword_100563C50;
  __asm { FMOV            V0.2D, #1.0 }

  v42 = _Q0;
  xmmword_1009F4330 = _Q0;
  qword_1009F4340 = 0xBFD3333333333333;
  xmmword_1009F4348 = xmmword_100563C60;
  qword_1009F4358 = 0x3E99999A40000000;
  xmmword_1009F4360 = xmmword_100563BE0;
  qword_1009F4378 = 0;
  unk_1009F4380 = 0;
  qword_1009F4370 = 0x3FD999999999999ALL;
  xmmword_1009F4388 = xmmword_100563BF0;
  dword_1009F4398 = 5;
  qword_1009F43A0 = 0x4000000000000000;
  dword_1009F43A8 = 4;
  qword_1009F43B0 = 0x300000008;
  qword_1009F43B8 = 0xC04E800000000000;
  v43.__r_.__value_.__r.__words[0] = 0xC04E800000000000;
  sub_1001BD370(qword_1009F43C0, &v43, 1);
  xmmword_1009F43D8 = xmmword_100563C70;
  qword_1009F43E8 = 0x4024000000000000;
  dword_1009F43F0 = 45;
  byte_1009F43F8 = 0;
  byte_1009F4410 = 0;
  qword_1009F4418 = 0;
  byte_1009F4420 = 0;
  dword_1009F4424 = 1;
  byte_1009F4428 = 1;
  xmmword_1009F4430 = xmmword_100563C80;
  xmmword_1009F4440 = xmmword_100563C90;
  xmmword_1009F4450 = v42;
  qword_1009F4460 = 0xC059000000000000;
  xmmword_1009F4468 = xmmword_100563CA0;
  qword_1009F4478 = vdup_n_s32(0x3DCCCCCDu);
  xmmword_1009F4480 = xmmword_100563BE0;
  qword_1009F4490 = 0x3FD999999999999ALL;
  xmmword_1009F4498 = 0u;
  unk_1009F44A8 = xmmword_100563BF0;
  dword_1009F44B8 = 5;
  qword_1009F44C0 = 0x4000000000000000;
  dword_1009F44C8 = 10;
  qword_1009F44D0 = 0x4034000000000000;
  dword_1009F44D8 = 3;
  xmmword_1009F44E0 = xmmword_100563CB0;
  __cxa_atexit(sub_1001BB564, qword_1009F4208, &_mh_execute_header);
  __cxa_atexit(nullsub_73, &off_1009EBEF8, &_mh_execute_header);
  __cxa_atexit(nullsub_74, &off_1009EBF00, &_mh_execute_header);
  v44 = xmmword_10056A4A0;
  v45[0] = unk_10056A4B0;
  v45[1] = xmmword_10056A4C0;
  v45[2] = unk_10056A4D0;
  qword_1009F44F8 = 0;
  unk_1009F4500 = 0;
  qword_1009F44F0 = 0;
  sub_10004EEB8(&qword_1009F44F0, &v44, &v46, 4uLL);
  __cxa_atexit(sub_100045220, &qword_1009F44F0, &_mh_execute_header);
  v44 = xmmword_10056A4E0;
  qword_1009F4510 = 0;
  unk_1009F4518 = 0;
  qword_1009F4508 = 0;
  sub_10004EEB8(&qword_1009F4508, &v44, v45, 1uLL);
  __cxa_atexit(sub_100045220, &qword_1009F4508, &_mh_execute_header);
  *&v44 = "AntennaMask_1_NN_V5_Model_DeviceType_201.mlmodelc/fp16_model.espresso";
  *(&v44 + 1) = "net";
  sub_1002EB624(byte_1009F4520, &v44);
  v43.__r_.__value_.__r.__words[0] = "AntennaMask_2_NN_V5_Model_DeviceType_201.mlmodelc/fp16_model.espresso";
  v43.__r_.__value_.__l.__size_ = "net";
  sub_1002EB624(byte_1009F4550, &v43.__r_.__value_.__l.__data_);
  __cxa_atexit(sub_1002D901C, byte_1009F4520, &_mh_execute_header);
  *&v44 = "AntennaMask_1_NN_V5_ScalingModel_DeviceType_201";
  *(&v44 + 1) = "mlmodelc";
  sub_1002EB624(byte_1009F4580, &v44);
  v43.__r_.__value_.__r.__words[0] = "AntennaMask_2_NN_V5_ScalingModel_DeviceType_201";
  v43.__r_.__value_.__l.__size_ = "mlmodelc";
  sub_1002EB624(byte_1009F45B0, &v43.__r_.__value_.__l.__data_);
  __cxa_atexit(sub_1002D901C, byte_1009F4580, &_mh_execute_header);
  sub_100004A08(byte_1009F45E0, "input_1");
  __cxa_atexit(&std::string::~string, byte_1009F45E0, &_mh_execute_header);
  sub_100004A08(byte_1009F45F8, "Identity");
  return __cxa_atexit(&std::string::~string, byte_1009F45F8, &_mh_execute_header);
}

void sub_1002EDDD0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1002EE9F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36, uint64_t a37, uint64_t a38, uint64_t a39, char a40, uint64_t a41, uint64_t a42, uint64_t a43, char a44)
{
  if (a18)
  {
    sub_10000AD84(a18);
  }

  if (a25 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1002F0BC0(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_1002F1998(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_1002F1A90(uint64_t a1)
{

  operator delete();
}

id sub_1002F1B44(uint64_t a1, void *a2)
{
  *a2 = off_1009A39A0;
  result = *(a1 + 8);
  a2[1] = result;
  return result;
}

void sub_1002F1B94(id *a1)
{

  operator delete(a1);
}

void sub_1002F1BD0(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2[1];
  *a2 = 0;
  a2[1] = 0;
  dispatch_assert_queue_V2(*(*(a1 + 8) + 56));
  [*(a1 + 8) serviceRequestDidUpdateStatus:{*a3, *(a3 + 8)}];
  if (v5)
  {

    sub_10000AD84(v5);
  }
}

void sub_1002F1C48(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_10000AD84(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1002F1C60(uint64_t a1, uint64_t a2)
{
  if (sub_100023EF4(a2, &off_1009A3A00))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1002F1CD8(uint64_t a1)
{

  operator delete();
}

id sub_1002F1D8C(uint64_t a1, void *a2)
{
  *a2 = off_1009A3A20;
  result = *(a1 + 8);
  a2[1] = result;
  return result;
}

void sub_1002F1DDC(id *a1)
{

  operator delete(a1);
}

void sub_1002F1E18(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2[1];
  *a2 = 0;
  a2[1] = 0;
  v6 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#peer-nba,Registering solutionsCallback.", v7, 2u);
  }

  dispatch_assert_queue_V2(*(*(a1 + 8) + 56));
  [*(a1 + 8) didReceiveNewSolution:a3];
  if (v5)
  {
    sub_10000AD84(v5);
  }
}

void sub_1002F1EBC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_10000AD84(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1002F1ED4(uint64_t a1, uint64_t a2)
{
  if (sub_100023EF4(a2, &off_1009A3A80))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1002F1F4C(uint64_t a1)
{

  operator delete();
}

id sub_1002F2000(uint64_t a1, void *a2)
{
  *a2 = off_1009A3AA0;
  result = *(a1 + 8);
  a2[1] = result;
  return result;
}

void sub_1002F2050(id *a1)
{

  operator delete(a1);
}

void sub_1002F208C(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2[1];
  *a2 = 0;
  a2[1] = 0;
  dispatch_assert_queue_V2(*(*(a1 + 8) + 56));
  [*(a1 + 8) didReceiveRemoteData:a3];
  if (v5)
  {

    sub_10000AD84(v5);
  }
}

void sub_1002F2100(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_10000AD84(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1002F2118(uint64_t a1, uint64_t a2)
{
  if (sub_100023EF4(a2, &off_1009A3B00))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1002F2190(uint64_t a1)
{

  operator delete();
}

id sub_1002F2244(uint64_t a1, void *a2)
{
  *a2 = off_1009A3B20;
  result = *(a1 + 8);
  a2[1] = result;
  return result;
}

void sub_1002F2294(id *a1)
{

  operator delete(a1);
}

void sub_1002F22D0(uint64_t a1, void *a2, unsigned int *a3)
{
  v4 = a2[1];
  *a2 = 0;
  a2[1] = 0;
  v5 = *a3;
  dispatch_assert_queue_V2(*(*(a1 + 8) + 56));
  [*(a1 + 8) _nbammsSessionInvalidatedWithReason:v5];
  if (v4)
  {

    sub_10000AD84(v4);
  }
}

void sub_1002F2344(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_10000AD84(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1002F235C(uint64_t a1, uint64_t a2)
{
  if (sub_100023EF4(a2, &off_1009A3B80))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1002F23D4(uint64_t a1)
{

  operator delete();
}

id sub_1002F2488(uint64_t a1, void *a2)
{
  *a2 = off_1009A3BA0;
  result = *(a1 + 8);
  a2[1] = result;
  return result;
}

void sub_1002F24D8(id *a1)
{

  operator delete(a1);
}

void sub_1002F2514(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2[1];
  *a2 = 0;
  a2[1] = 0;
  dispatch_assert_queue_V2(*(*(a1 + 8) + 56));
  v6 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#peer-nba,Registering unsuccessfulRangingCallback.", v7, 2u);
  }

  [*(a1 + 8) didReceiveUnsuccessfulSolution:a3];
  if (v5)
  {
    sub_10000AD84(v5);
  }
}

void sub_1002F25B8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_10000AD84(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1002F25D0(uint64_t a1, uint64_t a2)
{
  if (sub_100023EF4(a2, &off_1009A3C00))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1002F261C()
{
  if ((atomic_load_explicit(&qword_1009E9448, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1009E9448))
  {
    sub_100004A08(byte_1009E9430, "PRRoseProviderNetworkListener");
    __cxa_atexit(&std::string::~string, byte_1009E9430, &_mh_execute_header);

    __cxa_guard_release(&qword_1009E9448);
  }
}

void sub_1002F26CC()
{
  if ((atomic_load_explicit(&qword_1009E9468, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1009E9468))
  {
    sub_100004A08(&qword_1009E9450, "com.apple.nearbyd.accessory.download");
    __cxa_atexit(&std::string::~string, &qword_1009E9450, &_mh_execute_header);

    __cxa_guard_release(&qword_1009E9468);
  }
}

void sub_1002F277C()
{
  if ((atomic_load_explicit(&qword_1009E9488, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1009E9488))
  {
    sub_100004A08(&qword_1009E9470, "com.apple.nearbyd.accessory.files");
    __cxa_atexit(&std::string::~string, &qword_1009E9470, &_mh_execute_header);

    __cxa_guard_release(&qword_1009E9488);
  }
}

void sub_1002F282C()
{
  if ((atomic_load_explicit(&qword_1009E94A8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1009E94A8))
  {
    sub_100004A08(byte_1009E9490, "MA_");
    __cxa_atexit(&std::string::~string, byte_1009E9490, &_mh_execute_header);

    __cxa_guard_release(&qword_1009E94A8);
  }
}

void sub_1002F28DC()
{
  if ((atomic_load_explicit(&qword_1009E94C8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1009E94C8))
  {
    sub_100004A08(byte_1009E94B0, "MB_");
    __cxa_atexit(&std::string::~string, byte_1009E94B0, &_mh_execute_header);

    __cxa_guard_release(&qword_1009E94C8);
  }
}

void sub_1002F298C()
{
  if ((atomic_load_explicit(&qword_1009E94E8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1009E94E8))
  {
    sub_100004A08(byte_1009E94D0, "D");
    __cxa_atexit(&std::string::~string, byte_1009E94D0, &_mh_execute_header);

    __cxa_guard_release(&qword_1009E94E8);
  }
}

void sub_1002F2A3C()
{
  if ((atomic_load_explicit(&qword_1009E9508, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1009E9508))
  {
    sub_100004A08(&qword_1009E94F0, "A");
    __cxa_atexit(&std::string::~string, &qword_1009E94F0, &_mh_execute_header);

    __cxa_guard_release(&qword_1009E9508);
  }
}

void sub_1002F2AEC()
{
  if ((atomic_load_explicit(&qword_1009E9528, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1009E9528))
  {
    sub_100004A08(byte_1009E9510, "FAS.bin");
    __cxa_atexit(&std::string::~string, byte_1009E9510, &_mh_execute_header);

    __cxa_guard_release(&qword_1009E9528);
  }
}

void sub_1002F2B9C()
{
  if ((atomic_load_explicit(&qword_1009E9548, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_1009E9548))
    {
      memset(v0, 0, 32);
      v0[2] = xmmword_10056A6D8;
      qword_1009E9538 = 0;
      unk_1009E9540 = 0;
      qword_1009E9530 = 0;
      sub_100019AC4(&qword_1009E9530, v0, &v1, 6uLL);
      __cxa_atexit(sub_100017360, &qword_1009E9530, &_mh_execute_header);
      __cxa_guard_release(&qword_1009E9548);
    }
  }
}

void sub_1002F2C90()
{
  v0 = objc_autoreleasePoolPush();
  v43 = xmmword_10056A648;
  v44[0] = unk_10056A658;
  sub_1001BD0B0(qword_1009F4610, &v43, 4);
  xmmword_1009F4628 = xmmword_100563BD0;
  unk_1009F4638 = xmmword_100563BE0;
  qword_1009F4650 = 0;
  unk_1009F4658 = 0;
  qword_1009F4648 = 0x3FD999999999999ALL;
  unk_1009F4660 = xmmword_100563BF0;
  dword_1009F4670 = 5;
  qword_1009F4678 = 0x4000000000000000;
  dword_1009F4680 = 5;
  byte_1009F4688 = 0;
  unk_1009F468C = 0x30000000ALL;
  xmmword_1009F4698 = xmmword_100563C00;
  unk_1009F46A8 = xmmword_100563C10;
  xmmword_1009F46B8 = xmmword_100563C20;
  qword_1009F46C8 = 0x3FE3333333333333;
  dword_1009F46D0 = 3;
  xmmword_1009F46D8 = xmmword_100563C30;
  unk_1009F46E8 = xmmword_100563C10;
  xmmword_1009F46F8 = xmmword_100563C00;
  qword_1009F4708 = 0x3FE3333333333333;
  byte_1009F4710 = 0;
  xmmword_1009F4718 = xmmword_100563C40;
  unk_1009F4728 = xmmword_100563C50;
  __asm { FMOV            V0.2D, #1.0 }

  v42 = _Q0;
  xmmword_1009F4738 = _Q0;
  qword_1009F4748 = 0xBFD3333333333333;
  xmmword_1009F4750 = xmmword_100563C60;
  qword_1009F4760 = 0x3E99999A40000000;
  xmmword_1009F4768 = xmmword_100563BE0;
  qword_1009F4780 = 0;
  unk_1009F4788 = 0;
  qword_1009F4778 = 0x3FD999999999999ALL;
  xmmword_1009F4790 = xmmword_100563BF0;
  dword_1009F47A0 = 5;
  qword_1009F47A8 = 0x4000000000000000;
  dword_1009F47B0 = 4;
  qword_1009F47B8 = 0x300000008;
  qword_1009F47C0 = 0xC04E800000000000;
  v45.__r_.__value_.__r.__words[0] = 0xC04E800000000000;
  sub_1001BD370(algn_1009F47C8, &v45, 1);
  xmmword_1009F47E0 = xmmword_100563C70;
  qword_1009F47F0 = 0x4024000000000000;
  dword_1009F47F8 = 45;
  byte_1009F4800 = 0;
  byte_1009F4818 = 0;
  qword_1009F4820 = 0;
  byte_1009F4828 = 0;
  dword_1009F482C = 1;
  byte_1009F4830 = 1;
  xmmword_1009F4838 = xmmword_100563C80;
  xmmword_1009F4848 = xmmword_100563C90;
  xmmword_1009F4858 = v42;
  qword_1009F4868 = 0xC059000000000000;
  xmmword_1009F4870 = xmmword_100563CA0;
  qword_1009F4880 = vdup_n_s32(0x3DCCCCCDu);
  xmmword_1009F4888 = xmmword_100563BE0;
  qword_1009F4898 = 0x3FD999999999999ALL;
  xmmword_1009F48A0 = 0u;
  unk_1009F48B0 = xmmword_100563BF0;
  dword_1009F48C0 = 5;
  qword_1009F48C8 = 0x4000000000000000;
  dword_1009F48D0 = 10;
  qword_1009F48D8 = 0x4034000000000000;
  dword_1009F48E0 = 3;
  xmmword_1009F48E8 = xmmword_100563CB0;
  __cxa_atexit(sub_1001BB564, qword_1009F4610, &_mh_execute_header);
  __cxa_atexit(nullsub_73, &off_1009EBF08, &_mh_execute_header);
  __cxa_atexit(nullsub_74, &off_1009EBF10, &_mh_execute_header);
  v43 = xmmword_10056A668;
  v44[0] = unk_10056A678;
  v44[1] = xmmword_10056A688;
  v44[2] = unk_10056A698;
  qword_1009F4900 = 0;
  unk_1009F4908 = 0;
  qword_1009F48F8 = 0;
  sub_10004EEB8(&qword_1009F48F8, &v43, &v45, 4uLL);
  __cxa_atexit(sub_100045220, &qword_1009F48F8, &_mh_execute_header);
  v43 = xmmword_10056A6A8;
  qword_1009F4918 = 0;
  unk_1009F4920 = 0;
  qword_1009F4910 = 0;
  sub_10004EEB8(&qword_1009F4910, &v43, v44, 1uLL);
  __cxa_atexit(sub_100045220, &qword_1009F4910, &_mh_execute_header);
  sub_10041C9CC();
  v6 = std::string::insert(&v45, 0, "reverseLUT_A");
  v7 = *&v6->__r_.__value_.__l.__data_;
  *&v44[0] = *(&v6->__r_.__value_.__l + 2);
  v43 = v7;
  v6->__r_.__value_.__l.__size_ = 0;
  v6->__r_.__value_.__r.__words[2] = 0;
  v6->__r_.__value_.__r.__words[0] = 0;
  v8 = std::string::append(&v43, ".bin");
  v9 = *&v8->__r_.__value_.__l.__data_;
  qword_1009F4938 = v8->__r_.__value_.__r.__words[2];
  xmmword_1009F4928 = v9;
  v8->__r_.__value_.__l.__size_ = 0;
  v8->__r_.__value_.__r.__words[2] = 0;
  v8->__r_.__value_.__r.__words[0] = 0;
  if (SBYTE7(v44[0]) < 0)
  {
    operator delete(v43);
  }

  if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v45.__r_.__value_.__l.__data_);
  }

  __cxa_atexit(&std::string::~string, &xmmword_1009F4928, &_mh_execute_header);
  sub_10041C9CC();
  v10 = std::string::insert(&v45, 0, "reverseLUT_A");
  v11 = *&v10->__r_.__value_.__l.__data_;
  *&v44[0] = *(&v10->__r_.__value_.__l + 2);
  v43 = v11;
  v10->__r_.__value_.__l.__size_ = 0;
  v10->__r_.__value_.__r.__words[2] = 0;
  v10->__r_.__value_.__r.__words[0] = 0;
  v12 = std::string::append(&v43, ".bin");
  v13 = *&v12->__r_.__value_.__l.__data_;
  qword_1009F4950 = v12->__r_.__value_.__r.__words[2];
  xmmword_1009F4940 = v13;
  v12->__r_.__value_.__l.__size_ = 0;
  v12->__r_.__value_.__r.__words[2] = 0;
  v12->__r_.__value_.__r.__words[0] = 0;
  if (SBYTE7(v44[0]) < 0)
  {
    operator delete(v43);
  }

  if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v45.__r_.__value_.__l.__data_);
  }

  __cxa_atexit(&std::string::~string, &xmmword_1009F4940, &_mh_execute_header);
  sub_10041C9CC();
  v14 = std::string::insert(&v45, 0, "reverseLUT_A");
  v15 = *&v14->__r_.__value_.__l.__data_;
  *&v44[0] = *(&v14->__r_.__value_.__l + 2);
  v43 = v15;
  v14->__r_.__value_.__l.__size_ = 0;
  v14->__r_.__value_.__r.__words[2] = 0;
  v14->__r_.__value_.__r.__words[0] = 0;
  v16 = std::string::append(&v43, ".bin");
  v17 = *&v16->__r_.__value_.__l.__data_;
  qword_1009F4968 = v16->__r_.__value_.__r.__words[2];
  xmmword_1009F4958 = v17;
  v16->__r_.__value_.__l.__size_ = 0;
  v16->__r_.__value_.__r.__words[2] = 0;
  v16->__r_.__value_.__r.__words[0] = 0;
  if (SBYTE7(v44[0]) < 0)
  {
    operator delete(v43);
  }

  if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v45.__r_.__value_.__l.__data_);
  }

  __cxa_atexit(&std::string::~string, &xmmword_1009F4958, &_mh_execute_header);
  sub_10041C9CC();
  v18 = std::string::insert(&v45, 0, "reverseLUT_A");
  v19 = *&v18->__r_.__value_.__l.__data_;
  *&v44[0] = *(&v18->__r_.__value_.__l + 2);
  v43 = v19;
  v18->__r_.__value_.__l.__size_ = 0;
  v18->__r_.__value_.__r.__words[2] = 0;
  v18->__r_.__value_.__r.__words[0] = 0;
  v20 = std::string::append(&v43, ".bin");
  v21 = *&v20->__r_.__value_.__l.__data_;
  qword_1009F4980 = v20->__r_.__value_.__r.__words[2];
  xmmword_1009F4970 = v21;
  v20->__r_.__value_.__l.__size_ = 0;
  v20->__r_.__value_.__r.__words[2] = 0;
  v20->__r_.__value_.__r.__words[0] = 0;
  if (SBYTE7(v44[0]) < 0)
  {
    operator delete(v43);
  }

  if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v45.__r_.__value_.__l.__data_);
  }

  __cxa_atexit(&std::string::~string, &xmmword_1009F4970, &_mh_execute_header);
  sub_10041C9CC();
  v22 = std::string::insert(&v45, 0, "reverseLUT_A");
  v23 = *&v22->__r_.__value_.__l.__data_;
  *&v44[0] = *(&v22->__r_.__value_.__l + 2);
  v43 = v23;
  v22->__r_.__value_.__l.__size_ = 0;
  v22->__r_.__value_.__r.__words[2] = 0;
  v22->__r_.__value_.__r.__words[0] = 0;
  v24 = std::string::append(&v43, ".bin");
  v25 = *&v24->__r_.__value_.__l.__data_;
  qword_1009F4998 = v24->__r_.__value_.__r.__words[2];
  xmmword_1009F4988 = v25;
  v24->__r_.__value_.__l.__size_ = 0;
  v24->__r_.__value_.__r.__words[2] = 0;
  v24->__r_.__value_.__r.__words[0] = 0;
  if (SBYTE7(v44[0]) < 0)
  {
    operator delete(v43);
  }

  if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v45.__r_.__value_.__l.__data_);
  }

  __cxa_atexit(&std::string::~string, &xmmword_1009F4988, &_mh_execute_header);
  sub_10041C9CC();
  v26 = std::string::insert(&v45, 0, "reverseLUT_A");
  v27 = *&v26->__r_.__value_.__l.__data_;
  *&v44[0] = *(&v26->__r_.__value_.__l + 2);
  v43 = v27;
  v26->__r_.__value_.__l.__size_ = 0;
  v26->__r_.__value_.__r.__words[2] = 0;
  v26->__r_.__value_.__r.__words[0] = 0;
  v28 = std::string::append(&v43, ".bin");
  v29 = *&v28->__r_.__value_.__l.__data_;
  qword_1009F49B0 = v28->__r_.__value_.__r.__words[2];
  xmmword_1009F49A0 = v29;
  v28->__r_.__value_.__l.__size_ = 0;
  v28->__r_.__value_.__r.__words[2] = 0;
  v28->__r_.__value_.__r.__words[0] = 0;
  if (SBYTE7(v44[0]) < 0)
  {
    operator delete(v43);
  }

  if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v45.__r_.__value_.__l.__data_);
  }

  __cxa_atexit(&std::string::~string, &xmmword_1009F49A0, &_mh_execute_header);
  sub_10041C9CC();
  v30 = std::string::insert(&v45, 0, "reverseLUT_A");
  v31 = *&v30->__r_.__value_.__l.__data_;
  *&v44[0] = *(&v30->__r_.__value_.__l + 2);
  v43 = v31;
  v30->__r_.__value_.__l.__size_ = 0;
  v30->__r_.__value_.__r.__words[2] = 0;
  v30->__r_.__value_.__r.__words[0] = 0;
  v32 = std::string::append(&v43, ".bin");
  v33 = *&v32->__r_.__value_.__l.__data_;
  qword_1009F49C8 = v32->__r_.__value_.__r.__words[2];
  xmmword_1009F49B8 = v33;
  v32->__r_.__value_.__l.__size_ = 0;
  v32->__r_.__value_.__r.__words[2] = 0;
  v32->__r_.__value_.__r.__words[0] = 0;
  if (SBYTE7(v44[0]) < 0)
  {
    operator delete(v43);
  }

  if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v45.__r_.__value_.__l.__data_);
  }

  __cxa_atexit(&std::string::~string, &xmmword_1009F49B8, &_mh_execute_header);
  sub_10041C9CC();
  v34 = std::string::insert(&v45, 0, "reverseLUT_A");
  v35 = *&v34->__r_.__value_.__l.__data_;
  *&v44[0] = *(&v34->__r_.__value_.__l + 2);
  v43 = v35;
  v34->__r_.__value_.__l.__size_ = 0;
  v34->__r_.__value_.__r.__words[2] = 0;
  v34->__r_.__value_.__r.__words[0] = 0;
  v36 = std::string::append(&v43, ".bin");
  v37 = *&v36->__r_.__value_.__l.__data_;
  qword_1009F49E0 = v36->__r_.__value_.__r.__words[2];
  xmmword_1009F49D0 = v37;
  v36->__r_.__value_.__l.__size_ = 0;
  v36->__r_.__value_.__r.__words[2] = 0;
  v36->__r_.__value_.__r.__words[0] = 0;
  if (SBYTE7(v44[0]) < 0)
  {
    operator delete(v43);
  }

  if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v45.__r_.__value_.__l.__data_);
  }

  __cxa_atexit(&std::string::~string, &xmmword_1009F49D0, &_mh_execute_header);
  sub_10041C9CC();
  v38 = std::string::insert(&v45, 0, "reverseLUT_A");
  v39 = *&v38->__r_.__value_.__l.__data_;
  *&v44[0] = *(&v38->__r_.__value_.__l + 2);
  v43 = v39;
  v38->__r_.__value_.__l.__size_ = 0;
  v38->__r_.__value_.__r.__words[2] = 0;
  v38->__r_.__value_.__r.__words[0] = 0;
  v40 = std::string::append(&v43, ".bin");
  v41 = *&v40->__r_.__value_.__l.__data_;
  qword_1009F49F8 = v40->__r_.__value_.__r.__words[2];
  xmmword_1009F49E8 = v41;
  v40->__r_.__value_.__l.__size_ = 0;
  v40->__r_.__value_.__r.__words[2] = 0;
  v40->__r_.__value_.__r.__words[0] = 0;
  if (SBYTE7(v44[0]) < 0)
  {
    operator delete(v43);
  }

  if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v45.__r_.__value_.__l.__data_);
  }

  __cxa_atexit(&std::string::~string, &xmmword_1009F49E8, &_mh_execute_header);
  objc_autoreleasePoolPop(v0);
}

void sub_1002F3670(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  if (*(v22 - 73) < 0)
  {
    operator delete(*(v22 - 96));
  }

  _Unwind_Resume(exception_object);
}

void sub_1002F3884(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = PRNarrowbandSARManager;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

id sub_1002F3B58(uint64_t a1)
{
  [*(a1 + 32) initNarrowbandSARListner];
  v2 = *(a1 + 32);

  return [v2 updateSARStateIfRequired];
}

void sub_1002F3C24(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 16);
  if (v2)
  {
    v4 = +[AVAudioSession sharedInstance];
    [v2 removeObserver:v1 name:AVAudioSessionRouteChangeNotification object:v4];

    v5 = *(a1 + 32);
    v6 = *(v5 + 16);
    *(v5 + 16) = 0;
  }
}

void sub_1002F3EE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *sub_1002F3FAC(uint64_t a1)
{
  v2 = *(a1 + 32);
  *(v2 + 28) = *(a1 + 40);
  *(v2 + 32) = 1;
  result = *(a1 + 32);
  if (result[5])
  {
    v4 = [result nbSARStateToSARIndex:*(a1 + 40)];
    v5 = qword_1009F4A00;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      sub_100004A08(__p, (&off_1009A3D20)[*(a1 + 40)]);
      if (v8 >= 0)
      {
        v6 = __p;
      }

      else
      {
        v6 = __p[0];
      }

      *buf = 136315394;
      v10 = v6;
      v11 = 1024;
      v12 = v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#nb-sar,injecting SAR state: %s, index: %u", buf, 0x12u);
      if (v8 < 0)
      {
        operator delete(__p[0]);
      }
    }

    return (*(*(*(a1 + 32) + 40) + 16))();
  }

  return result;
}

uint64_t sub_1002F4178(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  if (*(v2 + 32) == 1)
  {
    *(v2 + 32) = 0;
    v2 = *(result + 32);
  }

  if (*(v2 + 40))
  {
    v3 = qword_1009F4A00;
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      sub_100004A08(__p, (&off_1009A3D20)[*(*(v1 + 32) + 36)]);
      if (v6 >= 0)
      {
        v4 = __p;
      }

      else
      {
        v4 = __p[0];
      }

      *buf = 136315138;
      v8 = v4;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#nb-sar,reseting SAR state override. state: %s", buf, 0xCu);
      if (v6 < 0)
      {
        operator delete(__p[0]);
      }
    }

    return (*(*(*(v1 + 32) + 40) + 16))(*(*(v1 + 32) + 40), [*(v1 + 32) nbSARStateToSARIndex:*(*(v1 + 32) + 36)]);
  }

  return result;
}

void sub_1002F435C()
{
  v0 = objc_autoreleasePoolPush();
  qword_1009F4A00 = os_log_create("com.apple.nearbyd", "Regulatory");

  objc_autoreleasePoolPop(v0);
}

uint64_t sub_1002F5200(uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    *(a1 + 8) = v2;
    operator delete(v2);
  }

  return a1;
}

uint64_t sub_1002F5234(uint64_t a1)
{
  std::mutex::~mutex((a1 + 32));
  v2 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v2;
    operator delete(v2);
  }

  return a1;
}

void sub_1002F5794(id a1)
{
  v1 = [[NIServerNearbyAccessoryRangingService alloc] _initInternal];
  v2 = qword_1009F4D38;
  qword_1009F4D38 = v1;
}

uint64_t sub_1002F595C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1002F5974(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = [*(*(a1 + 40) + 16) objectForKey:?];

    if (!v2)
    {
      v3 = qword_1009F9820;
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        v4 = *(a1 + 48);
        v5 = *(a1 + 32);
        v6 = [*(*(a1 + 40) + 16) count];
        *buf = 138412802;
        *v79 = v5;
        *&v79[8] = 2112;
        *&v79[10] = v4;
        *&v79[18] = 1024;
        *&v79[20] = v6;
        _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#accessory-service,Add client %@ for process %@ (%d previous clients)", buf, 0x1Cu);
      }

      v7 = [*(a1 + 56) accessoryConfigData];
      v8 = v7;
      v9 = [v7 bytes];

      v10 = [*(a1 + 56) accessoryConfigData];
      v11 = [v10 length];
      __p = 0;
      v70 = 0;
      v71 = 0;
      sub_1000069DC(&__p, v9, v11 + v9, v11);

      v12 = v70 - __p;
      if ((v70 - __p) <= 0x13)
      {
        goto LABEL_52;
      }

      v13 = *__p;
      v14 = !*(__p + 1) && v13 == 1;
      v15 = *(__p + 1) && v13 == 1;
      v16 = *(__p + 8);
      v17 = *(__p + 9);
      v18 = &word_10056AC42;
      v19 = 16;
      do
      {
        if (__PAIR64__(v17, v16) == __PAIR64__(*v18, *(v18 - 1)))
        {
          v20 = 1;
          goto LABEL_17;
        }

        v18 += 2;
        v19 -= 4;
      }

      while (v19);
      v20 = 0;
LABEL_17:
      v21 = *(__p + 9) && v16 == 2;
      v22 = v21;
      v23 = v16 <= 2 ? v22 : 1;
      v24 = v13 > 1 || v14;
      if (((v24 | v15) & 1) == 0 || ((v20 | v23) & 1) == 0)
      {
        goto LABEL_52;
      }

      if (!v20)
      {
        if (v23)
        {
          if (*(__p + 15) <= 0x1Fu || v12 <= 0x2F)
          {
            goto LABEL_52;
          }

          v12 = 48;
        }

        else
        {
          v12 = 0;
        }

        goto LABEL_45;
      }

      if (v16 == 2)
      {
        if (!*(__p + 9))
        {
          v25 = 32;
          v26 = 48;
          goto LABEL_43;
        }
      }

      else if (v16 == 1 && v17 < 3)
      {
        v25 = 2 * v17 + 19;
        v26 = 2 * v17 + 35;
LABEL_43:
        if (*(__p + 15) != v25 || v12 != v26)
        {
          goto LABEL_52;
        }

LABEL_45:
        *buf = 0;
        *&v79[12] = 0;
        *&v79[31] = 0;
        *&v79[37] = 0;
        *&v79[40] = 0;
        *&v79[1] = 0;
        *&v79[9] = 0;
        memcpy(buf, __p, v12);
        if (v79[0] <= 0x14u && ((1 << v79[0]) & 0x100401) != 0 && v79[28] <= 1u && v79[33] < 2u && v79[34] <= 8u && ((1 << v79[34]) & 0x10D) != 0)
        {
          v85 = *buf;
          v86 = *v79;
          v87 = *&v79[8];
          v88 = *&v79[12];
          *v89 = *&v79[16];
          *&v89[12] = *&v79[28];
          v90 = 1;
          goto LABEL_53;
        }

LABEL_52:
        LOBYTE(v85) = 0;
        v90 = 0;
        if (([*(a1 + 56) dataExchangeDisabledAndUsingParameterOverrides] & 1) == 0)
        {
          if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
          {
            sub_1004BBA14();
          }

          v83 = NSLocalizedFailureReasonErrorKey;
          v84 = @"Add client fail - raw data could not be parsed";
          v31 = [NSDictionary dictionaryWithObjects:&v84 forKeys:&v83 count:1];
          v35 = [NSError errorWithDomain:@"com.apple.NearbyInteraction" code:-5887 userInfo:v31];
          v36 = *(*(a1 + 72) + 8);
          v37 = *(v36 + 40);
          *(v36 + 40) = v35;

          goto LABEL_84;
        }

LABEL_53:
        v27 = *(a1 + 40);
        v28 = *(a1 + 48);
        v29 = [*(a1 + 56) debugParameters];
        v30 = [v27 _generateUwbSessionIdForNewServiceClientWithProcessName:v28 parsedAccessoryConfigData:&v85 debugParameters:v29];

        if ((v30 & 0x100000000) == 0)
        {
          if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
          {
            sub_1004BBB94();
          }

          v81 = NSLocalizedFailureReasonErrorKey;
          v82 = @"Add client fail - UWB session ID could not be generated";
          v31 = [NSDictionary dictionaryWithObjects:&v82 forKeys:&v81 count:1];
          v32 = [NSError errorWithDomain:@"com.apple.NearbyInteraction" code:-5887 userInfo:v31];
          v33 = *(*(a1 + 72) + 8);
          v34 = *(v33 + 40);
          *(v33 + 40) = v32;

          goto LABEL_84;
        }

        v31 = [[AccessoryServiceClientTracking alloc] initWithNIConfiguration:*(a1 + 56) parsedAccessoryConfigData:&v85 processName:*(a1 + 48) uwbSessionId:v30];
        v38 = *(*(a1 + 40) + 32);
        v39 = [NSNumber numberWithUnsignedInt:[(AccessoryServiceClientTracking *)v31 uwbSessionId]];
        v40 = [v38 objectForKey:v39];
        LODWORD(v38) = v40 == 0;

        if (!v38)
        {
          v41 = 0;
LABEL_62:
          [*(*(a1 + 40) + 16) setObject:*(a1 + 64) forKey:*(a1 + 32)];
          [*(*(a1 + 40) + 24) setObject:v31 forKey:*(a1 + 32)];
          if (v41)
          {
            v42 = *(*(a1 + 40) + 32);
            v43 = [NSNumber numberWithUnsignedInt:[(AccessoryServiceClientTracking *)v31 uwbSessionId]];
            [v42 setObject:v41 forKey:v43];
          }

          v44 = *(*(a1 + 40) + 32);
          v45 = [NSNumber numberWithUnsignedInt:[(AccessoryServiceClientTracking *)v31 uwbSessionId]];
          v46 = [v44 objectForKey:v45];
          v47 = [v46 interestedClients];
          [v47 addObject:*(a1 + 32)];

          [*(a1 + 40) _updateUwbSessionState:{-[AccessoryServiceClientTracking uwbSessionId](v31, "uwbSessionId")}];
          v48 = qword_1009F9820;
          if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
          {
            v49 = [(AccessoryServiceClientTracking *)v31 uwbSessionId];
            *buf = 67109120;
            *v79 = v49;
            _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, "#accessory-service,Add client successful. UWB session ID %u", buf, 8u);
          }

          goto LABEL_84;
        }

        buf[0] = 0;
        v80 = 0;
        v76[0] = 0;
        v77 = 0;
        v50 = *(a1 + 40);
        v68 = 0;
        v51 = [v50 _prepareUwbSessionTrackingObjectsForClientTracking:v31 outServiceRequest:buf outStartOptions:v76 outShareableConfigData:&v68];
        v52 = v68;
        v53 = v52;
        if (v51)
        {
          v54 = *(*(a1 + 72) + 8);
          v55 = v51;
          v56 = *(v54 + 40);
          *(v54 + 40) = v55;
        }

        else if (v80)
        {
          if (v77)
          {
            if (!v52)
            {
              v57 = qword_1009F9820;
              if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
              {
                *v67 = 0;
                _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_DEFAULT, "#accessory-service,Add client - no shareable config data generated. This is only valid when data exchange is disabled", v67, 2u);
              }
            }

            v58 = [(AccessoryServiceClientTracking *)v31 niConfiguration];
            v59 = [v58 backgroundMode];

            v60 = [AccessoryUwbSessionTracking alloc];
            if (v80 != 1 || (v77 & 1) == 0)
            {
              sub_1000195BC();
            }

            v41 = [(AccessoryUwbSessionTracking *)v60 initWithServiceRequest:buf startOptions:v76 shareableConfigData:v53 processName:*(a1 + 48) accessoryConfigData:[(AccessoryServiceClientTracking *)v31 parsedAccessoryConfigData] persistWhileDetached:v59 != 0];

            goto LABEL_62;
          }

          if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
          {
            sub_1004BBB14();
          }

          v72 = NSLocalizedFailureReasonErrorKey;
          v73 = @"Add client fail - ranging start options could not be generated";
          v56 = [NSDictionary dictionaryWithObjects:&v73 forKeys:&v72 count:1];
          v64 = [NSError errorWithDomain:@"com.apple.NearbyInteraction" code:-5887 userInfo:v56];
          v65 = *(*(a1 + 72) + 8);
          v66 = *(v65 + 40);
          *(v65 + 40) = v64;
        }

        else
        {
          if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
          {
            sub_1004BBA94();
          }

          v74 = NSLocalizedFailureReasonErrorKey;
          v75 = @"Add client fail - ranging service request could not be generated";
          v56 = [NSDictionary dictionaryWithObjects:&v75 forKeys:&v74 count:1];
          v61 = [NSError errorWithDomain:@"com.apple.NearbyInteraction" code:-5887 userInfo:v56];
          v62 = *(*(a1 + 72) + 8);
          v63 = *(v62 + 40);
          *(v62 + 40) = v61;
        }

LABEL_84:
        if (__p)
        {
          v70 = __p;
          operator delete(__p);
        }

        return;
      }

      __assert_rtn("UWBConfigDataTotalLengthBytes", "NIFiRaDefinitions.h", 418, "false");
    }
  }
}

void sub_1002F6270(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1002F6428(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = [*(*(a1 + 40) + 24) objectForKey:?];
    if (v2)
    {
      v3 = qword_1009F9820;
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        v4 = *(a1 + 32);
        v5 = [v2 processName];
        v6 = [v2 uwbSessionId];
        v7 = [*(*(a1 + 40) + 16) count];
        v12 = 138413058;
        v13 = v4;
        v14 = 2112;
        v15 = v5;
        v16 = 1024;
        v17 = v6;
        v18 = 1024;
        v19 = v7;
        _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#accessory-service,Remove client %@ for process %@ tracking UWB session ID %u (%d clients before removal)", &v12, 0x22u);
      }

      [*(*(a1 + 40) + 16) removeObjectForKey:*(a1 + 32)];
      [*(*(a1 + 40) + 24) removeObjectForKey:*(a1 + 32)];
      v8 = *(*(a1 + 40) + 32);
      v9 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v2 uwbSessionId]);
      v10 = [v8 objectForKey:v9];
      v11 = [v10 interestedClients];
      [v11 removeObject:*(a1 + 32)];

      [*(a1 + 40) _updateUwbSessionState:{objc_msgSend(v2, "uwbSessionId")}];
      [*(a1 + 40) _cleanupExcessiveDetachedSessions];
    }
  }
}

void sub_1002F66EC(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = a1 + 40;
    v3 = [*(*(a1 + 40) + 16) objectForKey:?];
    v4 = [*(*v2 + 24) objectForKey:*(a1 + 32)];
    v5 = v4;
    if (v3)
    {
      v6 = v4 == 0;
    }

    else
    {
      v6 = 1;
    }

    if (!v6 && *(a1 + 48) != [v4 isRunning])
    {
      v7 = qword_1009F9820;
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = *(a1 + 32);
        v9 = [v5 processName];
        v10 = [v5 uwbSessionId];
        v11 = [v5 isRunning];
        v12 = *(a1 + 48);
        v17 = 138413314;
        v18 = v8;
        v19 = 2112;
        v20 = v9;
        v21 = 1024;
        v22 = v10;
        v23 = 1024;
        v24 = v11;
        v25 = 1024;
        v26 = v12;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#accessory-service,Client %@ for process %@ UWB session ID %u, was running: %d, is now running: %d", &v17, 0x28u);
      }

      [v5 setIsRunning:*(a1 + 48)];
      [*(a1 + 40) _updateUwbSessionState:{objc_msgSend(v5, "uwbSessionId")}];
      if ([v5 isRunning])
      {
        v13 = *(*(a1 + 40) + 32);
        v14 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v5 uwbSessionId]);
        v15 = [v13 objectForKeyedSubscript:v14];
        v16 = [v15 shareableConfigData];

        if (v16)
        {
          [v3 serviceDidGenerateShareableConfigurationData:v16];
        }
      }
    }
  }
}

void sub_1002F6A54(uint64_t a1)
{
  v2 = [*(a1 + 32) _internalPrintableState];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_1002F6CB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, id a26)
{
  _Block_object_dispose(&a21, 8);

  _Unwind_Resume(a1);
}

void sub_1002F6CE8(uint64_t a1, void *a2, void *a3)
{
  v33 = a2;
  v5 = a3;
  sub_100004A08(__p, "Unspecified");
  if (*([v5 parsedAccessoryConfigData] + 48) == 1)
  {
    v6 = [v5 parsedAccessoryConfigData];
    if ((v6[48] & 1) == 0)
    {
      sub_1000195BC();
    }

    v7 = v6[4];
    v8 = "UserInteractive";
    v9 = "Unknown";
    if (v7 == 10)
    {
      v9 = "Background";
    }

    if (v7 != 20)
    {
      v8 = v9;
    }

    if (v6[4])
    {
      v10 = v8;
    }

    else
    {
      v10 = "Automatic";
    }

    sub_100004A08(&v34, v10);
    if (SHIBYTE(v37) < 0)
    {
      operator delete(__p[0]);
    }

    *__p = v34;
    v37 = v35;
    v11 = [v5 parsedAccessoryConfigData];
    if (v11[48] != 1 || (v12 = *v11, v13 = [v5 parsedAccessoryConfigData], (v13[48] & 1) == 0))
    {
      sub_1000195BC();
    }

    v32 = HIWORD(v12);
    v30 = HIWORD(*(v13 + 4));
    v31 = v12;
    v29 = *(v13 + 4);
  }

  else
  {
    v31 = 0;
    v32 = 0;
    v29 = 0;
    v30 = 0;
  }

  v14 = *(*(*(a1 + 32) + 8) + 40);
  v15 = [NSString stringWithFormat:@"    [%@]", v33];
  [v14 addObject:v15];

  v16 = *(*(*(a1 + 32) + 8) + 40);
  v17 = [v5 processName];
  v18 = [v5 uwbSessionId];
  v19 = [v5 niConfiguration];
  v20 = [v19 accessoryDiscoveryToken];
  v21 = [v20 descriptionInternal];
  v22 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"        Process: %@. UWB session ID: %u. Token: %@. Running: %d", v17, v18, v21, [v5 isRunning]);
  [v16 addObject:v22];

  v23 = *(*(*(a1 + 32) + 8) + 40);
  if (v37 >= 0)
  {
    v24 = __p;
  }

  else
  {
    v24 = __p[0];
  }

  v25 = [v5 niConfiguration];
  v26 = [v25 accessoryConfigData];
  v27 = sub_10003F5F0(v26, 0);
  v28 = [NSString stringWithFormat:@"        Versions: [accessory %d.%d, UWB %d.%d]. Rate: %s. Blob: %@", v31, v32, v29, v30, v24, v27];
  [v23 addObject:v28];

  if (SHIBYTE(v37) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1002F6FD4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1002F7060(uint64_t a1, void *a2, void *a3)
{
  v50 = a2;
  v5 = a3;
  sub_1002F51C4(*([v5 serviceRequest] + 1), __p);
  if (v54 >= 0)
  {
    v6 = __p;
  }

  else
  {
    v6 = __p[0];
  }

  v51 = [NSMutableString stringWithUTF8String:v6];
  if (v54 < 0)
  {
    operator delete(__p[0]);
  }

  if (*[v5 rangingSession])
  {
    v7 = [v5 rangingSession];
    v52 = [NSString stringWithFormat:@"Ticket [%d]", (*(*v7 + 752) & ((*(*v7 + 752) >> 1) >> 15))];
  }

  else
  {
    v52 = @"None";
  }

  if (*([v5 serviceRequest] + 1) == 6)
  {
    v8 = [v5 serviceRequest];
    if (v8[437])
    {
      v9 = v8[436];
    }

    else
    {
      v9 = 255;
    }

    v10 = [v5 serviceRequest];
    v11 = v10[439];
    v12 = v10[438];
    v13 = [v5 serviceRequest];
    if (v11)
    {
      v14 = v12;
    }

    else
    {
      v14 = 0;
    }

    if (v13[441])
    {
      v15 = v13[440];
    }

    else
    {
      v15 = 0;
    }

    [v51 appendFormat:@" [type %d][cap %d to %d]", v9, v14, v15];
  }

  else if (*([v5 serviceRequest] + 1) == 5)
  {
    v16 = [v5 serviceRequest];
    if (*(v16 + 424))
    {
      v17 = v16[52];
    }

    else
    {
      v17 = 0;
    }

    [v51 appendFormat:@" [peer-addr %llu]", v17];
  }

  v18 = [v5 serviceRequest];
  v19 = v18[372];
  v20 = *(v18 + 185);
  v21 = [v5 serviceRequest];
  v22 = v21[376];
  v23 = *(v21 + 187);
  v24 = [v5 serviceRequest];
  if (v19)
  {
    v25 = v20;
  }

  else
  {
    v25 = 0;
  }

  if (v22)
  {
    v26 = v23;
  }

  else
  {
    v26 = 0;
  }

  v48 = v26;
  v49 = v25;
  if (v24[380])
  {
    v27 = *(v24 + 189);
  }

  else
  {
    v27 = 0;
  }

  v28 = *(*(*(a1 + 32) + 8) + 40);
  v29 = [NSString stringWithFormat:@"    [%@]", v50];
  [v28 addObject:v29];

  v30 = *(*(*(a1 + 32) + 8) + 40);
  v31 = [v5 processName];
  v32 = [v5 interestedClients];
  v33 = [v32 count];
  v34 = [v5 persistWhileDetached];
  v35 = *(a1 + 40);
  [v5 initTime];
  v37 = v36;
  v38 = *(a1 + 40);
  [v5 timeOfLatestSessionLifecycleChange];
  v40 = [NSString stringWithFormat:@"        Process: %@. Clients: %d. Persist-detached: %d. Ranging: %@. Age: total %.2f s, in-state %.2f s", v31, v33, v34, v52, v35 - v37, v38 - v39];
  [v30 addObject:v40];

  v41 = *(*(*(a1 + 32) + 8) + 40);
  v42 = *([v5 serviceRequest] + 1);
  if (v42 == 100)
  {
    v43 = "Unspecified";
  }

  else if (v42 == 1)
  {
    v43 = "Responder";
  }

  else
  {
    v43 = "Initiator";
  }

  v44 = __p;
  sub_100004A08(__p, v43);
  if (v54 < 0)
  {
    v44 = __p[0];
  }

  v45 = [v5 serviceRequest];
  if (*(v45 + 408))
  {
    v46 = v45[50];
  }

  else
  {
    v46 = 0;
  }

  v47 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"        Role: %s. Mode: %@. Local-addr: %llu. Interval: %d ms. Job cfg options: 0x%X. Job timeouts: disc %d, reacq %d, track %d, job %d", v44, v51, v46, (v48 * v49 * v27) / 0x4B0uLL, *([v5 serviceRequest] + 17), *(objc_msgSend(v5, "serviceRequest") + 36), *(objc_msgSend(v5, "serviceRequest") + 37), *(objc_msgSend(v5, "serviceRequest") + 38), *(objc_msgSend(v5, "serviceRequest") + 39));
  [v41 addObject:v47];

  if (v54 < 0)
  {
    operator delete(__p[0]);
  }
}

char *sub_1002F7730(uint64_t a1)
{
  v1 = [*(a1 + 32) _internalPrintableState];
  v2 = sub_10003FA2C(@"Accessory Ranging Service", v1);

  return v2;
}

uint64_t sub_1002F7D54(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(result + 52) = *(a2 + 52);
  *(result + 48) = v2;
  return result;
}

void sub_1002F7D6C(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v12 = a2;
  v7 = a3;
  v8 = *(*(a1 + 32) + 8);
  if ((*(v8 + 52) & 1) == 0)
  {
    sub_1000195BC();
  }

  v9 = [NSNumber numberWithUnsignedInt:*(v8 + 48)];
  v10 = [v12 isEqualToNumber:v9];

  if (v10)
  {
    v11 = *(*(a1 + 32) + 8);
    if (*(v11 + 52) == 1)
    {
      *(v11 + 52) = 0;
    }

    *a4 = 1;
  }
}

void sub_1002F7E60(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v17 = a2;
  v7 = a3;
  v8 = *(a1 + 32);
  v9 = [v7 processName];
  LOBYTE(v8) = [v8 isEqualToString:v9];

  if (v8)
  {
    if (*(a1 + 64) == 1)
    {
      if (*([v7 serviceRequest] + 1) != 6)
      {
        goto LABEL_30;
      }

      v10 = *([v7 serviceRequest] + 218);
      if ((v10 & 0x100) == 0)
      {
        goto LABEL_30;
      }

      if (*(a1 + 65) == 1)
      {
        if (v10 != 3)
        {
          goto LABEL_30;
        }
      }

      else if (v10 && (*(a1 + 66) & 1) != 0)
      {
        goto LABEL_30;
      }
    }

    else if (*([v7 serviceRequest] + 1) != 5)
    {
      goto LABEL_30;
    }

    if (*([v7 accessoryConfigData] + 48) == 1)
    {
      v11 = *(a1 + 56);
      if (*(v11 + 48) != 1 || (v12 = [v7 accessoryConfigData], (v12[24] & 1) == 0))
      {
        sub_1000195BC();
      }

      if (*v11 == *v12 && v11[1] == v12[1] && *(v11 + 4) == *(v12 + 4) && v11[8] == v12[8] && v11[9] == v12[9] && *(v11 + 32) == *(v12 + 32) && *(v11 + 37) == *(v12 + 37) && *(v11 + 38) == *(v12 + 38) && *(v11 + 41) == *(v12 + 41) && v11[21] == v12[21] && v11[22] == v12[22])
      {
        v13 = v11[23];
        v14 = v12[23];
        if (v13 == v14 && (*(a1 + 64) & 1) == 0)
        {
          v13 = *(v11 + 33);
          v14 = *(v12 + 33);
        }

        if (v13 == v14)
        {
          v15 = [v17 unsignedIntValue];
          v16 = *(*(a1 + 40) + 8);
          *(v16 + 48) = v15;
          *(v16 + 52) = 1;
          *(*(*(a1 + 48) + 8) + 24) = 1;
          *a4 = 1;
        }
      }
    }
  }

LABEL_30:
}

uint64_t sub_1002F9BD8(int a1, char a2)
{
  v2 = 0;
  if (a1 && (a2 & 1) == 0)
  {
    v3 = +[NSUserDefaults standardUserDefaults];
    v4 = [v3 objectForKey:@"AccessoryCoordinateScheduling"];

    if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v2 = [v4 BOOLValue];
    }

    else
    {
      v2 = 1;
    }
  }

  return v2;
}

uint64_t sub_1002F9C8C(unsigned int a1, unsigned int a2, unsigned int a3)
{
  if (!a1)
  {
    sub_1004BBFF4();
  }

  if (!a2)
  {
    sub_1004BBFC8();
  }

  v3 = a1 * a2 / 1200.0;
  if (v3 <= 0.0)
  {
    sub_1004BBF9C();
  }

  v4 = floor(a3 / v3);
  if (v4 >= 65535.0)
  {
    sub_1004BBF70();
  }

  return v4;
}

uint64_t sub_1002F9CF8(uint64_t *a1)
{
  std::mutex::lock((a1 + 4));
  v2 = *(a1 + 6);
  *(a1 + 6) = v2 + 1;
  v3 = *a1;
  if (v2 + 1 >= ((a1[1] - *a1) >> 1))
  {
    *(a1 + 6) = 0;
  }

  v4 = *(v3 + 2 * v2);
  std::mutex::unlock((a1 + 4));
  return v4;
}

void sub_1002F9D50(uint64_t a1@<X8>)
{
  v2 = +[NSUserDefaults standardUserDefaults];
  v3 = [v2 objectForKey:@"NIAccessorySubratingOverrides_Subrate"];

  v4 = +[NSUserDefaults standardUserDefaults];
  v5 = [v4 objectForKey:@"NIAccessorySubratingOverrides_DistanceThreshold"];

  v6 = +[NSUserDefaults standardUserDefaults];
  v7 = [v6 objectForKey:@"NIAccessorySubratingOverrides_Hysteresis"];

  if (v3 && v5 && v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && (v8 = [v3 count], v8 == objc_msgSend(v5, "count")) && (v9 = objc_msgSend(v3, "count"), v9 == objc_msgSend(v7, "count")))
  {
    v10 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v22) = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#accessory-service,Prep session objects: Overriding subrating parameters", &v22, 2u);
    }

    v11 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      v22 = 138412290;
      v23 = v3;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#accessory-service,Prep session objects: Overrides for subrate: %@", &v22, 0xCu);
    }

    v12 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      v22 = 138412290;
      v23 = v5;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#accessory-service,Prep session objects: Overrides for distance threshold: %@", &v22, 0xCu);
    }

    v13 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      v22 = 138412290;
      v23 = v7;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#accessory-service,Prep session objects: Overrides for hysteresis: %@", &v22, 0xCu);
    }

    v14 = 0;
    *a1 = 0;
    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    v15 = 1;
    *(a1 + 24) = 0;
    do
    {
      v16 = v15;
      if ([v3 count] <= v14)
      {
        break;
      }

      v17 = [v3 objectAtIndex:v14];
      v18 = a1 + 24 * v14;
      *v18 = [v17 intValue];

      v19 = [v5 objectAtIndex:v14];
      *(v18 + 8) = [v19 intValue];

      v20 = [v7 objectAtIndex:v14];
      *(v18 + 16) = [v20 intValue];

      v15 = 0;
      v14 = 1;
    }

    while ((v16 & 1) != 0);
  }

  else
  {
    v21 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v22) = 0;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "#accessory-service,Prep session objects: Using default subrating parameters", &v22, 2u);
    }

    *a1 = xmmword_10056AC50;
    *(a1 + 16) = unk_10056AC60;
    *(a1 + 32) = xmmword_10056AC70;
  }
}

uint64_t sub_1002FA174(uint64_t a1, unsigned int a2, unsigned int a3, __int16 a4)
{
  v4 = 0;
  if (a2 && a3)
  {
    v5 = *(a1 + 23);
    if (v5)
    {
      v7 = *(a1 + 25);
      v6 = (a1 + 25);
      if (v7)
      {
        v8 = 0;
        return v8 & v5;
      }

      if (((v5 >> 1) & 0xF) >= a2 || ((v5 >> 5) & 0x7F) >= a3)
      {
        v5 = 0;
        v8 = 1;
        return v8 & v5;
      }
    }

    else
    {
      v6 = (a1 + 23);
    }

    *v6 = (2 * (a2 & 0xF)) & 0x1F | (32 * (a3 & 0x7F)) | (a4 << 12) | 1;
    v8 = 1;
    v5 = 1;
    return v8 & v5;
  }

  return v4;
}

uint64_t sub_1002FA1EC(uint64_t a1)
{
  v2 = +[NSUserDefaults standardUserDefaults];
  [v2 doubleForKey:@"AccessoryResponderUncertaintySecondsOverride"];
  v4 = v3;
  if (v3 <= 0.0)
  {
    if (a1 == 2)
    {
      v7 = 10000000;
    }

    else
    {
      v7 = 2000000;
    }

    if (a1 == 1)
    {
      v6 = 0;
    }

    else
    {
      v6 = v7;
    }
  }

  else
  {
    v5 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 134217984;
      v10 = v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#accessory-service,Uncertainty window override: %.3f seconds", &v9, 0xCu);
    }

    v6 = (v4 * 1000.0 * 1000.0);
  }

  return v6;
}

std::string::const_reference sub_1002FA31C@<X0>(std::string *this@<X1>, unsigned __int16 *a2@<X0>, char a3@<W2>, char a4@<W3>, int a5@<W4>, __int16 a6@<W5>, __int16 a7@<W6>, __int16 a8@<W7>, uint64_t a9@<X8>, char a10, int *a11, __int16 a12, char a13, char a14, char a15, char a16, char a17)
{
  size = HIBYTE(this->__r_.__value_.__r.__words[2]);
  if ((size & 0x80u) != 0)
  {
    size = this->__r_.__value_.__l.__size_;
  }

  if (size != 2)
  {
    sub_1004BC020();
  }

  v20 = *a2;
  v21 = &word_10056AC42;
  v22 = 16;
  v23 = a2[1];
  while (v20 != *(v21 - 1) || v23 != *v21)
  {
    v21 += 2;
    v22 -= 4;
    if (!v22)
    {
      sub_1004BC04C();
    }
  }

  if (v20 != 2)
  {
    if (v20 == 1 && v23 < 3)
    {
      v24 = a4;
      v25 = a3;
      v26 = a5;
      v27 = a7;
      v28 = a6;
      v29 = a8;
      v30 = 0x1D1917u >> (8 * v23);
      goto LABEL_15;
    }

LABEL_20:
    sub_1004BC078();
  }

  if (a2[1])
  {
    goto LABEL_20;
  }

  v24 = a4;
  v25 = a3;
  v26 = a5;
  v27 = a7;
  v28 = a6;
  v29 = a8;
  LOBYTE(v30) = 30;
LABEL_15:
  *a9 = v20;
  if (a10)
  {
    v31 = 3;
  }

  else
  {
    v31 = 2;
  }

  *(a9 + 2) = v23;
  *(a9 + 4) = v30;
  *(a9 + 5) = *std::string::at(this, 0);
  result = std::string::at(this, 1uLL);
  *(a9 + 6) = *result;
  *(a9 + 7) = v26;
  *(a9 + 11) = v24;
  *(a9 + 12) = v25;
  *(a9 + 13) = v27;
  *(a9 + 15) = v28;
  *(a9 + 17) = v29;
  *(a9 + 19) = v31;
  *(a9 + 26) = a12;
  *(a9 + 28) = 200;
  *(a9 + 30) = a13;
  *(a9 + 31) = a14;
  *(a9 + 32) = a15;
  *(a9 + 33) = a16;
  *(a9 + 34) = a17;
  v33 = *a11;
  *(a9 + 24) = *(a11 + 2);
  *(a9 + 20) = v33;
  return result;
}

uint64_t sub_1002FA4F8(uint64_t a1)
{
  result = 9;
  if (a1 > 11)
  {
    if (a1 != 12)
    {
      if ((a1 - 13) < 0x14)
      {
        goto LABEL_10;
      }

      return result;
    }

    return a1;
  }

  if (a1 == 10 || a1 == 11)
  {
    return a1;
  }

  if (!a1)
  {
LABEL_10:
    v4 = a1;
    v3 = qword_1009F9820;
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_10042749C(v4);
      sub_1004BC0A4(v5);
    }

    sub_1004BC104(v3);
  }

  return result;
}

uint64_t sub_1002FA5EC@<X0>(unsigned __int16 *a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = &word_10056AC42;
  v5 = 16;
  while (v2 != *(v4 - 1) || v3 != *v4)
  {
    v4 += 2;
    v5 -= 4;
    if (!v5)
    {
      sub_1004BC1B0();
    }
  }

  if (v2 != 2)
  {
    if (v2 == 1 && v3 < 3)
    {
      v6 = qword_10056B1E0[a1[1]];
      goto LABEL_12;
    }

LABEL_15:
    sub_1004BC078();
  }

  if (a1[1])
  {
    goto LABEL_15;
  }

  v6 = 35;
LABEL_12:
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;

  return sub_1000069DC(a2, a1, a1 + v6, v6);
}

void sub_1002FB1C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, void *a11, void *a12, void *a13, void *a14, void *a15, void *a16, void *a17, void *a18, void *a19, void *a20, void *a21, void *a22, void *a23, void *a24, void *a25, void *a26, void *a27, void *a28, void *a29, void *a30, void *a31, void *a32, void *a33, void *a34, void *a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, void *a49, uint64_t a50, char a51)
{
  _Block_object_dispose(&a51, 8);

  _Unwind_Resume(a1);
}

void sub_1002FB3EC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) objectForKeyedSubscript:v3];

  if (!v4)
  {
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004BC308();
    }

    *(*(*(a1 + 40) + 8) + 24) = 1;
  }
}

void sub_1002FB82C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, std::__shared_weak_count *a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30)
{
  if (a19)
  {
    sub_10000AD84(a19);
  }

  _Unwind_Resume(a1);
}

void sub_1002FBC54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1002FBCD0(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v5 = [*(*(a1 + 32) + 24) objectForKeyedSubscript:a2];
  v6 = [v5 isRunning];

  if (v6)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a3 = 1;
  }
}

void sub_1002FBF70(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  v6 = [v5 interestedClients];
  v7 = [v6 count];

  if (!v7)
  {
    [*(a1 + 32) addObject:v8];
  }
}

void sub_1002FC4E8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = *(WeakRetained + 4);
    v5 = [NSNumber numberWithUnsignedInt:*(a1 + 40)];
    v6 = [v4 objectForKey:v5];

    if (v6 && *[v6 rangingSession])
    {
      v7 = sub_10034024C(*[v6 rangingSession], objc_msgSend(v6, "startOptions"));
      if (v7)
      {
        v8 = qword_1009F9820;
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          sub_100342F8C(v7, v12);
          sub_1004BC4A0(v12);
        }

        v9 = *(a1 + 40);
        v10[0] = _NSConcreteStackBlock;
        v10[1] = 3221225472;
        v10[2] = sub_1002FC6C0;
        v10[3] = &unk_1009A3EB0;
        v10[4] = *(a1 + 44);
        v11 = *(a1 + 52);
        [v3 _relayToClientsOfUWBSessionId:v9 blockToRelay:v10];
      }
    }

    else
    {
    }
  }
}

void sub_1002FC848(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 40);
  v3 = [*(*(a1 + 32) + 16) objectForKey:a2];
  (*(v2 + 16))(v2);
}

uint64_t sub_1002FC91C(uint64_t a1, uint64_t *a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  sub_1001FBC68(a1, *a2, a2[1], (a2[1] - *a2) >> 1);
  *(a1 + 24) = 0;
  *(a1 + 32) = 850045863;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0;
  if (*(a1 + 8) == *a1)
  {
    __assert_rtn("AccessoryRangingIntervalPicker", "NIServerNearbyAccessoryRangingService.mm", 218, "fRangingIntervalOptionsMsec.size() > 0");
  }

  return a1;
}

void sub_1002FC9BC(_Unwind_Exception *a1)
{
  std::mutex::~mutex(v2);
  v4 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(a1);
}

__n128 sub_1002FC9E0(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 48) == *(a2 + 48))
  {
    if (*(a1 + 48))
    {
      result = *a2;
      v3 = *(a2 + 32);
      *(a1 + 16) = *(a2 + 16);
      *(a1 + 32) = v3;
      *a1 = result;
    }
  }

  else if (*(a1 + 48))
  {
    *(a1 + 48) = 0;
  }

  else
  {
    *a1 = *a2;
    v4 = *(a2 + 4);
    *(a1 + 12) = *(a2 + 12);
    *(a1 + 4) = v4;
    *(a1 + 16) = *(a2 + 16);
    result = *(a2 + 20);
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 20) = result;
    *(a1 + 48) = 1;
  }

  return result;
}

void sub_1002FCA70(std::__shared_weak_count *a1)
{
  a1->__vftable = off_1009A3F50;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_1002FCB18(uint64_t a1)
{

  operator delete();
}

id sub_1002FCBD4(uint64_t a1, void *a2)
{
  *a2 = off_1009A3FA0;
  result = *(a1 + 8);
  a2[1] = result;
  a2[2] = *(a1 + 16);
  return result;
}

void sub_1002FCC30(id *a1)
{

  operator delete(a1);
}

void sub_1002FCC6C(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2[1];
  *a2 = 0;
  a2[1] = 0;
  dispatch_assert_queue_V2(*(*(a1 + 8) + 8));
  [*(a1 + 8) _serviceRequestForUWBSessionID:*(a1 + 16) didUpdateStatus:{*a3, *(a3 + 8)}];
  if (v5)
  {

    sub_10000AD84(v5);
  }
}

void sub_1002FCCE8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_10000AD84(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1002FCD00(uint64_t a1, uint64_t a2)
{
  if (sub_100023EF4(a2, &off_1009A4000))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1002FCD78(uint64_t a1)
{

  operator delete();
}

id sub_1002FCE34(uint64_t a1, void *a2)
{
  *a2 = off_1009A4020;
  result = *(a1 + 8);
  a2[1] = result;
  a2[2] = *(a1 + 16);
  return result;
}

void sub_1002FCE90(id *a1)
{

  operator delete(a1);
}

void sub_1002FCECC(uint64_t a1, void *a2, int *a3)
{
  v4 = a2[1];
  *a2 = 0;
  a2[1] = 0;
  v5 = *a3;
  dispatch_assert_queue_V2(*(*(a1 + 8) + 8));
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1002FCFDC;
  v8[3] = &unk_1009A4080;
  v9 = v5;
  [v6 _relayToClientsOfUWBSessionId:v7 blockToRelay:v8];
  if (v4)
  {
    sub_10000AD84(v4);
  }
}

void sub_1002FCF78(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_10000AD84(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1002FCF90(uint64_t a1, uint64_t a2)
{
  if (sub_100023EF4(a2, &off_1009A40A0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1002FD014(uint64_t a1)
{

  operator delete();
}

id sub_1002FD0D0(uint64_t a1, void *a2)
{
  *a2 = off_1009A40C0;
  result = *(a1 + 8);
  a2[1] = result;
  a2[2] = *(a1 + 16);
  return result;
}

void sub_1002FD12C(id *a1)
{

  operator delete(a1);
}

void sub_1002FD168(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2[1];
  *a2 = 0;
  a2[1] = 0;
  dispatch_assert_queue_V2(*(*(a1 + 8) + 8));
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1002FD278;
  v8[3] = &unk_1009A4120;
  v8[4] = a3;
  [v6 _relayToClientsOfUWBSessionId:v7 blockToRelay:v8];
  if (v5)
  {
    sub_10000AD84(v5);
  }
}

void sub_1002FD214(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_10000AD84(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1002FD22C(uint64_t a1, uint64_t a2)
{
  if (sub_100023EF4(a2, &off_1009A4140))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1002FD2B0(uint64_t a1)
{

  operator delete();
}

id sub_1002FD36C(uint64_t a1, void *a2)
{
  *a2 = off_1009A4160;
  result = *(a1 + 8);
  a2[1] = result;
  a2[2] = *(a1 + 16);
  return result;
}

void sub_1002FD3C8(id *a1)
{

  operator delete(a1);
}

void sub_1002FD404(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2[1];
  *a2 = 0;
  a2[1] = 0;
  dispatch_assert_queue_V2(*(*(a1 + 8) + 8));
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1002FD514;
  v8[3] = &unk_1009A4120;
  v8[4] = a3;
  [v6 _relayToClientsOfUWBSessionId:v7 blockToRelay:v8];
  if (v5)
  {
    sub_10000AD84(v5);
  }
}

void sub_1002FD4B0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_10000AD84(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1002FD4C8(uint64_t a1, uint64_t a2)
{
  if (sub_100023EF4(a2, &off_1009A41D0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1002FD520()
{
  if ((atomic_load_explicit(&qword_1009E9448, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1009E9448))
  {
    sub_100004A08(byte_1009E9430, "PRRoseProviderNetworkListener");
    __cxa_atexit(&std::string::~string, byte_1009E9430, &_mh_execute_header);

    __cxa_guard_release(&qword_1009E9448);
  }
}

void sub_1002FD5D0()
{
  if ((atomic_load_explicit(&qword_1009E9468, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1009E9468))
  {
    sub_100004A08(&qword_1009E9450, "com.apple.nearbyd.accessory.download");
    __cxa_atexit(&std::string::~string, &qword_1009E9450, &_mh_execute_header);

    __cxa_guard_release(&qword_1009E9468);
  }
}

void sub_1002FD680()
{
  if ((atomic_load_explicit(&qword_1009E9488, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1009E9488))
  {
    sub_100004A08(&qword_1009E9470, "com.apple.nearbyd.accessory.files");
    __cxa_atexit(&std::string::~string, &qword_1009E9470, &_mh_execute_header);

    __cxa_guard_release(&qword_1009E9488);
  }
}

void sub_1002FD730()
{
  if ((atomic_load_explicit(&qword_1009E94A8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1009E94A8))
  {
    sub_100004A08(byte_1009E9490, "MA_");
    __cxa_atexit(&std::string::~string, byte_1009E9490, &_mh_execute_header);

    __cxa_guard_release(&qword_1009E94A8);
  }
}

void sub_1002FD7E0()
{
  if ((atomic_load_explicit(&qword_1009E94C8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1009E94C8))
  {
    sub_100004A08(byte_1009E94B0, "MB_");
    __cxa_atexit(&std::string::~string, byte_1009E94B0, &_mh_execute_header);

    __cxa_guard_release(&qword_1009E94C8);
  }
}

void sub_1002FD890()
{
  if ((atomic_load_explicit(&qword_1009E94E8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1009E94E8))
  {
    sub_100004A08(byte_1009E94D0, "D");
    __cxa_atexit(&std::string::~string, byte_1009E94D0, &_mh_execute_header);

    __cxa_guard_release(&qword_1009E94E8);
  }
}

void sub_1002FD940()
{
  if ((atomic_load_explicit(&qword_1009E9508, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1009E9508))
  {
    sub_100004A08(&qword_1009E94F0, "A");
    __cxa_atexit(&std::string::~string, &qword_1009E94F0, &_mh_execute_header);

    __cxa_guard_release(&qword_1009E9508);
  }
}

void sub_1002FD9F0()
{
  if ((atomic_load_explicit(&qword_1009E9528, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1009E9528))
  {
    sub_100004A08(byte_1009E9510, "FAS.bin");
    __cxa_atexit(&std::string::~string, byte_1009E9510, &_mh_execute_header);

    __cxa_guard_release(&qword_1009E9528);
  }
}

void sub_1002FDAA0()
{
  if ((atomic_load_explicit(&qword_1009E9548, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_1009E9548))
    {
      memset(v0, 0, 32);
      v0[2] = xmmword_10056AC30;
      qword_1009E9538 = 0;
      unk_1009E9540 = 0;
      qword_1009E9530 = 0;
      sub_100019AC4(&qword_1009E9530, v0, &v1, 6uLL);
      __cxa_atexit(sub_100017360, &qword_1009E9530, &_mh_execute_header);
      __cxa_guard_release(&qword_1009E9548);
    }
  }
}

void sub_1002FDB94()
{
  v0 = objc_autoreleasePoolPush();
  sub_10041C9CC();
  v1 = std::string::insert(&v37, 0, "reverseLUT_A");
  v2 = *&v1->__r_.__value_.__l.__data_;
  v38.__r_.__value_.__r.__words[2] = v1->__r_.__value_.__r.__words[2];
  *&v38.__r_.__value_.__l.__data_ = v2;
  v1->__r_.__value_.__l.__size_ = 0;
  v1->__r_.__value_.__r.__words[2] = 0;
  v1->__r_.__value_.__r.__words[0] = 0;
  v3 = std::string::append(&v38, ".bin");
  v4 = *&v3->__r_.__value_.__l.__data_;
  qword_1009F4A18 = v3->__r_.__value_.__r.__words[2];
  xmmword_1009F4A08 = v4;
  v3->__r_.__value_.__l.__size_ = 0;
  v3->__r_.__value_.__r.__words[2] = 0;
  v3->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  __cxa_atexit(&std::string::~string, &xmmword_1009F4A08, &_mh_execute_header);
  sub_10041C9CC();
  v5 = std::string::insert(&v37, 0, "reverseLUT_A");
  v6 = *&v5->__r_.__value_.__l.__data_;
  v38.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v38.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  v7 = std::string::append(&v38, ".bin");
  v8 = *&v7->__r_.__value_.__l.__data_;
  qword_1009F4A30 = v7->__r_.__value_.__r.__words[2];
  xmmword_1009F4A20 = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  __cxa_atexit(&std::string::~string, &xmmword_1009F4A20, &_mh_execute_header);
  sub_10041C9CC();
  v9 = std::string::insert(&v37, 0, "reverseLUT_A");
  v10 = *&v9->__r_.__value_.__l.__data_;
  v38.__r_.__value_.__r.__words[2] = v9->__r_.__value_.__r.__words[2];
  *&v38.__r_.__value_.__l.__data_ = v10;
  v9->__r_.__value_.__l.__size_ = 0;
  v9->__r_.__value_.__r.__words[2] = 0;
  v9->__r_.__value_.__r.__words[0] = 0;
  v11 = std::string::append(&v38, ".bin");
  v12 = *&v11->__r_.__value_.__l.__data_;
  qword_1009F4A48 = v11->__r_.__value_.__r.__words[2];
  xmmword_1009F4A38 = v12;
  v11->__r_.__value_.__l.__size_ = 0;
  v11->__r_.__value_.__r.__words[2] = 0;
  v11->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  __cxa_atexit(&std::string::~string, &xmmword_1009F4A38, &_mh_execute_header);
  sub_10041C9CC();
  v13 = std::string::insert(&v37, 0, "reverseLUT_A");
  v14 = *&v13->__r_.__value_.__l.__data_;
  v38.__r_.__value_.__r.__words[2] = v13->__r_.__value_.__r.__words[2];
  *&v38.__r_.__value_.__l.__data_ = v14;
  v13->__r_.__value_.__l.__size_ = 0;
  v13->__r_.__value_.__r.__words[2] = 0;
  v13->__r_.__value_.__r.__words[0] = 0;
  v15 = std::string::append(&v38, ".bin");
  v16 = *&v15->__r_.__value_.__l.__data_;
  qword_1009F4A60 = v15->__r_.__value_.__r.__words[2];
  xmmword_1009F4A50 = v16;
  v15->__r_.__value_.__l.__size_ = 0;
  v15->__r_.__value_.__r.__words[2] = 0;
  v15->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  __cxa_atexit(&std::string::~string, &xmmword_1009F4A50, &_mh_execute_header);
  sub_10041C9CC();
  v17 = std::string::insert(&v37, 0, "reverseLUT_A");
  v18 = *&v17->__r_.__value_.__l.__data_;
  v38.__r_.__value_.__r.__words[2] = v17->__r_.__value_.__r.__words[2];
  *&v38.__r_.__value_.__l.__data_ = v18;
  v17->__r_.__value_.__l.__size_ = 0;
  v17->__r_.__value_.__r.__words[2] = 0;
  v17->__r_.__value_.__r.__words[0] = 0;
  v19 = std::string::append(&v38, ".bin");
  v20 = *&v19->__r_.__value_.__l.__data_;
  qword_1009F4A78 = v19->__r_.__value_.__r.__words[2];
  xmmword_1009F4A68 = v20;
  v19->__r_.__value_.__l.__size_ = 0;
  v19->__r_.__value_.__r.__words[2] = 0;
  v19->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  __cxa_atexit(&std::string::~string, &xmmword_1009F4A68, &_mh_execute_header);
  sub_10041C9CC();
  v21 = std::string::insert(&v37, 0, "reverseLUT_A");
  v22 = *&v21->__r_.__value_.__l.__data_;
  v38.__r_.__value_.__r.__words[2] = v21->__r_.__value_.__r.__words[2];
  *&v38.__r_.__value_.__l.__data_ = v22;
  v21->__r_.__value_.__l.__size_ = 0;
  v21->__r_.__value_.__r.__words[2] = 0;
  v21->__r_.__value_.__r.__words[0] = 0;
  v23 = std::string::append(&v38, ".bin");
  v24 = *&v23->__r_.__value_.__l.__data_;
  qword_1009F4A90 = v23->__r_.__value_.__r.__words[2];
  xmmword_1009F4A80 = v24;
  v23->__r_.__value_.__l.__size_ = 0;
  v23->__r_.__value_.__r.__words[2] = 0;
  v23->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  __cxa_atexit(&std::string::~string, &xmmword_1009F4A80, &_mh_execute_header);
  sub_10041C9CC();
  v25 = std::string::insert(&v37, 0, "reverseLUT_A");
  v26 = *&v25->__r_.__value_.__l.__data_;
  v38.__r_.__value_.__r.__words[2] = v25->__r_.__value_.__r.__words[2];
  *&v38.__r_.__value_.__l.__data_ = v26;
  v25->__r_.__value_.__l.__size_ = 0;
  v25->__r_.__value_.__r.__words[2] = 0;
  v25->__r_.__value_.__r.__words[0] = 0;
  v27 = std::string::append(&v38, ".bin");
  v28 = *&v27->__r_.__value_.__l.__data_;
  qword_1009F4AA8 = v27->__r_.__value_.__r.__words[2];
  xmmword_1009F4A98 = v28;
  v27->__r_.__value_.__l.__size_ = 0;
  v27->__r_.__value_.__r.__words[2] = 0;
  v27->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  __cxa_atexit(&std::string::~string, &xmmword_1009F4A98, &_mh_execute_header);
  sub_10041C9CC();
  v29 = std::string::insert(&v37, 0, "reverseLUT_A");
  v30 = *&v29->__r_.__value_.__l.__data_;
  v38.__r_.__value_.__r.__words[2] = v29->__r_.__value_.__r.__words[2];
  *&v38.__r_.__value_.__l.__data_ = v30;
  v29->__r_.__value_.__l.__size_ = 0;
  v29->__r_.__value_.__r.__words[2] = 0;
  v29->__r_.__value_.__r.__words[0] = 0;
  v31 = std::string::append(&v38, ".bin");
  v32 = *&v31->__r_.__value_.__l.__data_;
  qword_1009F4AC0 = v31->__r_.__value_.__r.__words[2];
  xmmword_1009F4AB0 = v32;
  v31->__r_.__value_.__l.__size_ = 0;
  v31->__r_.__value_.__r.__words[2] = 0;
  v31->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  __cxa_atexit(&std::string::~string, &xmmword_1009F4AB0, &_mh_execute_header);
  sub_10041C9CC();
  v33 = std::string::insert(&v37, 0, "reverseLUT_A");
  v34 = *&v33->__r_.__value_.__l.__data_;
  v38.__r_.__value_.__r.__words[2] = v33->__r_.__value_.__r.__words[2];
  *&v38.__r_.__value_.__l.__data_ = v34;
  v33->__r_.__value_.__l.__size_ = 0;
  v33->__r_.__value_.__r.__words[2] = 0;
  v33->__r_.__value_.__r.__words[0] = 0;
  v35 = std::string::append(&v38, ".bin");
  v36 = *&v35->__r_.__value_.__l.__data_;
  qword_1009F4AD8 = v35->__r_.__value_.__r.__words[2];
  xmmword_1009F4AC8 = v36;
  v35->__r_.__value_.__l.__size_ = 0;
  v35->__r_.__value_.__r.__words[2] = 0;
  v35->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  __cxa_atexit(&std::string::~string, &xmmword_1009F4AC8, &_mh_execute_header);
  LODWORD(v38.__r_.__value_.__l.__data_) = 12976308;
  WORD2(v38.__r_.__value_.__r.__words[0]) = 162;
  qword_1009F4AE8 = 0;
  unk_1009F4AF0 = 0;
  qword_1009F4AE0 = 0;
  sub_1001FE45C(&qword_1009F4AE0, &v38, v38.__r_.__value_.__r.__words + 6, 3);
  __cxa_atexit(sub_1002F5200, &qword_1009F4AE0, &_mh_execute_header);
  v38.__r_.__value_.__r.__words[0] = 0x4C8045C04A40480;
  LODWORD(v38.__r_.__value_.__r.__words[1]) = 82576440;
  qword_1009F4B00 = 0;
  unk_1009F4B08 = 0;
  qword_1009F4AF8 = 0;
  sub_1001FE45C(&qword_1009F4AF8, &v38, &v38.__r_.__value_.__r.__words[1] + 4, 6);
  __cxa_atexit(sub_1002F5200, &qword_1009F4AF8, &_mh_execute_header);
  v38.__r_.__value_.__r.__words[0] = 0x1F801C201E601D4;
  LODWORD(v38.__r_.__value_.__r.__words[1]) = 27132336;
  qword_1009F4B18 = 0;
  unk_1009F4B20 = 0;
  qword_1009F4B10 = 0;
  sub_1001FE45C(&qword_1009F4B10, &v38, &v38.__r_.__value_.__r.__words[1] + 4, 6);
  __cxa_atexit(sub_1002F5200, &qword_1009F4B10, &_mh_execute_header);
  v38.__r_.__value_.__r.__words[0] = 0x8DC087008B80894;
  LODWORD(v38.__r_.__value_.__r.__words[1]) = 150997068;
  qword_1009F4B30 = 0;
  unk_1009F4B38 = 0;
  qword_1009F4B28 = 0;
  sub_1001FE45C(&qword_1009F4B28, &v38, &v38.__r_.__value_.__r.__words[1] + 4, 6);
  __cxa_atexit(sub_1002F5200, &qword_1009F4B28, &_mh_execute_header);
  qword_1009F4B48 = 0;
  unk_1009F4B50 = 0;
  qword_1009F4B40 = 0;
  sub_1001FBC68(&qword_1009F4B40, qword_1009F4AE0, qword_1009F4AE8, (qword_1009F4AE8 - qword_1009F4AE0) >> 1);
  __cxa_atexit(sub_1002F5200, &qword_1009F4B40, &_mh_execute_header);
  sub_1002FC91C(&unk_1009F4B58, &qword_1009F4AE0);
  __cxa_atexit(sub_1002F5234, &unk_1009F4B58, &_mh_execute_header);
  sub_1002FC91C(&unk_1009F4BB8, &qword_1009F4AF8);
  __cxa_atexit(sub_1002F5234, &unk_1009F4BB8, &_mh_execute_header);
  sub_1002FC91C(&unk_1009F4C18, &qword_1009F4B10);
  __cxa_atexit(sub_1002F5234, &unk_1009F4C18, &_mh_execute_header);
  sub_1002FC91C(&unk_1009F4C78, &qword_1009F4B28);
  __cxa_atexit(sub_1002F5234, &unk_1009F4C78, &_mh_execute_header);
  sub_1002FC91C(qword_1009F4CD8, &qword_1009F4B40);
  __cxa_atexit(sub_1002F5234, qword_1009F4CD8, &_mh_execute_header);
  objc_autoreleasePoolPop(v0);
}

void sub_1002FE4DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1002FE558(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
  {
    sub_1004BC4F4();
  }

  sub_1002FE5BC(a1);
  return a1;
}

void sub_1002FE5BC(uint64_t a1)
{
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
  {
    sub_1004BC530();
  }

  LOBYTE(v4) = 0;
  *(&v4 + 1) = 0;
  v5 = 0.0;
  v3 = 0;
  if (sub_10000A184(&v3, &v4 + 8, &v5))
  {
    LOBYTE(v4) = 1;
    if (*a1 == 1 && vabdd_f64(*(a1 + 8) - *(a1 + 16), *(&v4 + 1) - v5) <= 0.000001)
    {
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
      {
        sub_1004BC5E4();
      }

      *(a1 + 24) = v4;
      *(a1 + 40) = v5;
    }

    else
    {
      v2 = (a1 + 24);
      if (*(a1 + 24) == 1 && vabdd_f64(*(a1 + 32) - *(a1 + 40), *(&v4 + 1) - v5) <= 0.000001)
      {
        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
        {
          sub_1004BC5A8();
        }

        *a1 = *v2;
        *(a1 + 16) = *(a1 + 40);
        *v2 = v4;
        *(a1 + 40) = v5;
      }

      else
      {
        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
        {
          sub_1004BC56C();
        }

        *a1 = v4;
        *(a1 + 16) = v5;
        *(a1 + 24) = 0;
      }
    }

    sub_1002FEC78(a1);
  }
}

uint64_t sub_1002FE75C(uint64_t a1, double a2)
{
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
  {
    sub_1004BC620();
  }

  sub_1002FE5BC(a1);
  if (*a1 == 1 && (*(a1 + 24) & 1) != 0)
  {
    v4 = *(a1 + 8);
    if (v4 <= a2 && (v5 = *(a1 + 32), v5 >= a2))
    {
      v14 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
      {
        v15 = 134218496;
        v16 = v4;
        v17 = 2048;
        v18 = a2;
        v19 = 2048;
        v20 = v5;
        _os_log_debug_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "getMachContinuousTimeSec: Order OK: startAbs %.9f targetAbs %.9f endAbs %.9f", &v15, 0x20u);
        v5 = *(a1 + 32);
        v14 = qword_1009F9820;
      }

      v7 = *(a1 + 40) - v5 + a2;
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        sub_1004BC698();
      }
    }

    else
    {
      v6 = qword_1009F9820;
      v7 = 0.0;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        v8 = *(a1 + 32);
        v15 = 134218496;
        v16 = v4;
        v17 = 2048;
        v18 = a2;
        v19 = 2048;
        v20 = v8;
        v9 = "getMachContinuousTimeSec: Order not OK: startAbs %.9f targetAbs %.9f endAbs %.9f";
        v10 = v6;
        v11 = 32;
LABEL_11:
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, v9, &v15, v11);
      }
    }
  }

  else
  {
    v12 = qword_1009F9820;
    v7 = 0.0;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v15) = 0;
      v9 = "getMachContinuousTimeSec: start/end times not valid";
      v10 = v12;
      v11 = 2;
      goto LABEL_11;
    }
  }

  return *&v7;
}

uint64_t sub_1002FE978(uint64_t a1, double a2)
{
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
  {
    sub_1004BC70C();
  }

  sub_1002FE5BC(a1);
  if (*a1 == 1 && (*(a1 + 24) & 1) != 0)
  {
    v4 = *(a1 + 16);
    if (v4 <= a2 && (v5 = *(a1 + 40), v5 >= a2))
    {
      v14 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
      {
        v15 = 134218496;
        v16 = v4;
        v17 = 2048;
        v18 = a2;
        v19 = 2048;
        v20 = v5;
        _os_log_debug_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "getMachAbsoluteTimeSec: Order OK: startCont %.9f targetCont %.9f endCont %.9f", &v15, 0x20u);
        v5 = *(a1 + 40);
        v14 = qword_1009F9820;
      }

      v7 = a2 - (v5 - *(a1 + 32));
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        sub_1004BC784();
      }
    }

    else
    {
      v6 = qword_1009F9820;
      v7 = 0.0;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        v8 = *(a1 + 40);
        v15 = 134218496;
        v16 = v4;
        v17 = 2048;
        v18 = a2;
        v19 = 2048;
        v20 = v8;
        v9 = "getMachAbsoluteTimeSec: Order not OK: startCont %.9f targetCont %.9f endCont %.9f";
        v10 = v6;
        v11 = 32;
LABEL_11:
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, v9, &v15, v11);
      }
    }
  }

  else
  {
    v12 = qword_1009F9820;
    v7 = 0.0;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v15) = 0;
      v9 = "getMachAbsoluteTimeSec: start/end times not valid";
      v10 = v12;
      v11 = 2;
      goto LABEL_11;
    }
  }

  return *&v7;
}

uint64_t sub_1002FEB94(double a1)
{
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
  {
    sub_1004BC7F8();
  }

  v5 = 0;
  v6 = 0.0;
  v4 = 0.0;
  if (sub_10000A184(&v6, &v5, &v4))
  {
    v2 = v6 - (v4 - a1);
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
    {
      sub_1004BC8B0();
    }
  }

  else
  {
    v2 = 0.0;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004BC870();
    }
  }

  return *&v2;
}

void sub_1002FEC78(unsigned __int8 *a1)
{
  v2 = *a1;
  v3 = qword_1009F9820;
  v4 = os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG);
  if (v2 == 1)
  {
    if (v4)
    {
      v8 = *(a1 + 1);
      v10 = 134217984;
      v11 = v8;
      _os_log_debug_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "PRMachTimeConverter: startAbs: %.9f", &v10, 0xCu);
      v3 = qword_1009F9820;
    }

    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      sub_1004BC960(a1);
    }
  }

  else if (v4)
  {
    sub_1004BC924();
  }

  v5 = a1[24];
  v6 = qword_1009F9820;
  v7 = os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG);
  if (v5 == 1)
  {
    if (v7)
    {
      v9 = *(a1 + 4);
      v10 = 134217984;
      v11 = v9;
      _os_log_debug_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "PRMachTimeConverter: endAbs: %.9f", &v10, 0xCu);
      v6 = qword_1009F9820;
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      sub_1004BCA14(a1);
    }
  }

  else if (v7)
  {
    sub_1004BC9D8();
  }
}

void sub_1002FF4A8(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_1002FF614(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1002FF92C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

id sub_1002FF95C(const char *a1)
{
  v1 = NSStringFromSelector(a1);
  v2 = [NSString stringWithFormat:@"'%@': method not supported for this configuration", v1];

  v6 = NSLocalizedDescriptionKey;
  v7 = v2;
  v3 = [NSDictionary dictionaryWithObjects:&v7 forKeys:&v6 count:1];
  v4 = [NSError errorWithDomain:@"com.apple.NearbyInteraction" code:-5889 userInfo:v3];

  return v4;
}

void sub_1002FFB0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

void sub_1002FFBB4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

void sub_1002FFC5C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

void sub_1002FFD04(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

void sub_1002FFDAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

id sub_1003005A0(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = [v1 rawToken];
    v4 = sub_10030062C();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

id sub_10030062C()
{
  v0 = OPACKDecodeData();
  if (v0 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v1 = v0;
  }

  else
  {
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004BCB68();
    }

    v1 = 0;
  }

  return v1;
}

id sub_1003006E4(void *a1)
{
  v1 = a1;
  if (v1)
  {
    Data = OPACKEncoderCreateData();
    v3 = Data;
    if (Data)
    {
      v4 = Data;
    }

    else if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004BCBA8();
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id sub_10030079C(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (v4)
  {
    if (v3)
    {
      v6 = sub_10030062C();
      v7 = [v6 mutableCopy];
      [v7 addEntriesFromDictionary:v3];
      v8 = sub_1003006E4(v7);
    }

    else
    {
      v8 = v4;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

const __CFString *sub_100300878(uint64_t a1)
{
  v1 = @"NISessionPauseSourceInvalid";
  if (a1 == 1)
  {
    v1 = @"NISessionPauseSourceUser";
  }

  if (a1 == 2)
  {
    return @"NISessionPauseSourceInterruption";
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1003008F4(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  *a1 = off_1009A44F8;
  *(a1 + 8) = off_1009A4560;
  *(a1 + 16) = dispatch_queue_create("com.apple.nearbyd.coexmanager", 0);
  v6 = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = xpc_connection_create_mach_service("com.apple.WirelessCoexManager", *(a1 + 16), 0);
  *(a1 + 40) = 10;
  *(a1 + 50) = 0;
  *(a1 + 52) = 0;
  *(a1 + 54) = 0;
  *(a1 + 56) = 0;
  *(a1 + 58) = 0;
  *(a1 + 42) = 0;
  *(a1 + 45) = 0;
  *(a1 + 64) = a3;
  *(a1 + 72) = 0;
  *(a1 + 82) = 0;
  *(a1 + 74) = 0;
  *(a1 + 90) = 0;
  v7 = +[NSUserDefaults standardUserDefaults];
  v8 = [v7 objectForKey:@"BlockEnhancedMms"];

  if (v8)
  {
    v9 = +[NSUserDefaults standardUserDefaults];
    *(a1 + 58) = [v9 BOOLForKey:@"BlockEnhancedMms"] | 0x100;

    if (*(a1 + 59) == 1)
    {
      v10 = qword_1009F9820;
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        if ((*(a1 + 59) & 1) == 0)
        {
          sub_1000195BC();
        }

        if (*(a1 + 58))
        {
          v11 = "Y";
        }

        else
        {
          v11 = "N";
        }

        LODWORD(buf) = 136315138;
        *(&buf + 4) = v11;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#coex,PRCoexProvider,set by default write,[BlockEnhancedMms: %s]", &buf, 0xCu);
      }
    }
  }

  v12 = *(a1 + 32);
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_100300BE4;
  handler[3] = &unk_1009A4588;
  handler[4] = a1;
  xpc_connection_set_event_handler(v12, handler);
  xpc_connection_resume(*(a1 + 32));
  sub_100300E04(a1);
  LOBYTE(buf) = 0;
  *(&buf + 2) = 0;
  *(&buf + 1) = 0;
  sub_100300F20(a1, &buf);

  return a1;
}

void sub_100300BE4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  if (v3 == &_xpc_error_connection_invalid && os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
  {
    sub_1004BCBE8();
  }

  sub_100300C70(v4, v3);
}

void sub_100300C70(uint64_t a1, void *a2)
{
  v3 = a2;
  type = xpc_get_type(v3);
  if (type == &_xpc_type_dictionary)
  {
    sub_10030124C(a1, v3);
  }

  else if (type == &_xpc_type_error)
  {
    if (v3 == &_xpc_error_connection_interrupted)
    {
      sub_100300E04(a1);
      sub_100300F20(a1, (a1 + 72));
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
      {
        sub_1004BCCDC();
      }
    }

    else
    {
      v7 = qword_1009F9820;
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        string = xpc_dictionary_get_string(v3, _xpc_error_key_description);
        sub_1004BCC94(string, v9, v7);
      }
    }
  }

  else
  {
    v5 = xpc_copy_description(v3);
    v6 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004BCC1C(v5, v6);
    }

    free(v5);
  }
}

void sub_100300E04(uint64_t a1)
{
  v2 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_uint64(v2, "kWCMRegisterProcess_ProcessId", 0x1DuLL);
  keys[0] = "kMessageId";
  keys[1] = "kMessageArgs";
  values[0] = xpc_uint64_create(1uLL);
  v3 = v2;
  values[1] = v3;
  sub_100302520(a1, keys, values, 2);
  for (i = 1; i != -1; --i)
  {
  }
}

void sub_100300EE4(_Unwind_Exception *a1)
{
  for (i = 8; i != -8; i -= 8)
  {
  }

  _Unwind_Resume(a1);
}

void sub_100300F20(uint64_t a1, BOOL *a2)
{
  *(a1 + 72) = *a2;
  v4 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_BOOL(v4, "kWCMRCU1PowerOn", *a2);
  xpc_dictionary_set_uint64(v4, "kWCMRCU1ChannelNum", *(a2 + 1));
  xpc_dictionary_set_uint64(v4, "kWCMRCU1OnDuration", *(a2 + 2));
  xpc_dictionary_set_uint64(v4, "kWCMRCU1CycleLength", *(a2 + 3));
  xpc_dictionary_set_uint64(v4, "kWCMRCU1NumerOfCycles", *(a2 + 4));
  xpc_dictionary_set_uint64(v4, "kWCMRCU1FrameFormat", *(a2 + 5));
  xpc_dictionary_set_uint64(v4, "kWCMRCU1UseCaseNum", *(a2 + 6));
  xpc_dictionary_set_uint64(v4, "kWCMRCU1SideChBandMask", *(a2 + 7));
  keys[0] = "kMessageId";
  keys[1] = "kMessageArgs";
  values[0] = xpc_uint64_create(0x320uLL);
  v5 = v4;
  values[1] = v5;
  sub_100302520(a1, keys, values, 2);
  v6 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *a2;
    v8 = *(a2 + 1);
    v9 = *(a2 + 2);
    v10 = *(a2 + 3);
    v11 = *(a2 + 4);
    v12 = *(a2 + 5);
    v13 = *(a2 + 6);
    v14 = *(a2 + 7);
    v16[0] = 67110912;
    v16[1] = v7;
    v17 = 1024;
    v18 = v8;
    v19 = 1024;
    v20 = v9;
    v21 = 1024;
    v22 = v10;
    v23 = 1024;
    v24 = v11;
    v25 = 1024;
    v26 = v12;
    v27 = 1024;
    v28 = v13;
    v29 = 1024;
    v30 = v14;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#coex,sendStatusUpdateMessage-Send message to UCM: State(%x), Channel(%x), OnDuration(%x), CycleLength(%x), NumberOfCycles(%x), Frame(%x), Priority(%x), R2NbBandMask(%x)", v16, 0x32u);
  }

  for (i = 1; i != -1; --i)
  {
  }
}

void sub_100301150(_Unwind_Exception *a1)
{
  for (i = 8; i != -8; i -= 8)
  {
  }

  _Unwind_Resume(a1);
}

void sub_1003011D8(id *a1)
{
  sub_100301190(a1);

  operator delete();
}

void sub_100301210(uint64_t a1)
{
  sub_100301190((a1 - 8));

  operator delete();
}

void sub_10030124C(uint64_t a1, void *a2)
{
  v3 = a2;
  uint64 = xpc_dictionary_get_uint64(v3, "kMessageId");
  v5 = qword_1009F9820;
  if (uint64 == 1500)
  {
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#coex,processIncomingMessage-Received message type-1 from UCM", &buf, 2u);
    }

    v69[0] = 0;
    sub_100301888(v3, v69, v68);
    if (v68[28] != 1)
    {
      goto LABEL_87;
    }

    if (v68[20] == 1 && *&v68[18] != *(a1 + 40))
    {
      *(a1 + 40) = *&v68[18];
      if (*(a1 + 64))
      {
        v10 = *(a1 + 24);
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_100301F50;
        block[3] = &unk_10098AD98;
        block[4] = a1;
        dispatch_async(v10, block);
      }
    }

    v11 = *(a1 + 43);
    v12 = *(a1 + 42);
    if (v68[1] == 1)
    {
      v13 = *v68;
      *(a1 + 42) = *v68;
      v14 = v13 >> 8;
      v15 = v13;
    }

    else
    {
      v15 = *(a1 + 42);
      v14 = *(a1 + 43);
    }

    v19 = *(a1 + 44);
    v20 = *(a1 + 45);
    if (v68[3] == 1)
    {
      v21 = *&v68[2];
      *(a1 + 44) = *&v68[2];
      v22 = v21 >> 8;
      v23 = v21;
    }

    else
    {
      v23 = *(a1 + 44);
      v22 = *(a1 + 45);
    }

    v24 = *(a1 + 46);
    v25 = *(a1 + 47);
    if (v68[5] == 1)
    {
      v26 = *&v68[4];
      *(a1 + 46) = *&v68[4];
      v27 = v26 >> 8;
      v28 = v26;
    }

    else
    {
      v28 = *(a1 + 46);
      v27 = *(a1 + 47);
    }

    v29 = (a1 + 48);
    v30 = *(a1 + 48);
    v31 = *(a1 + 50);
    if (v68[8] == 1)
    {
      *v29 = *&v68[6];
      *(a1 + 50) = v68[8];
    }

    v32 = *(a1 + 52);
    v33 = *(a1 + 53);
    if (v68[11] == 1)
    {
      v34 = *&v68[10];
      *(a1 + 52) = *&v68[10];
      v35 = v34 >> 8;
      v36 = v34;
    }

    else
    {
      v36 = *(a1 + 52);
      v35 = *(a1 + 53);
    }

    v37 = (a1 + 54);
    v51 = *(a1 + 54);
    v38 = *(a1 + 56);
    if (v68[14] == 1)
    {
      *v37 = *&v68[12];
      *(a1 + 56) = v68[14];
    }

    v39 = *(a1 + 58);
    v40 = *(a1 + 59);
    if (v68[17] == 1)
    {
      v42 = *&v68[16];
      *(a1 + 58) = *&v68[16];
      v41 = v42 >> 8;
      v42 = v42;
    }

    else
    {
      v42 = *(a1 + 58);
      v41 = *(a1 + 59);
    }

    if (v14 == v11 && (v14 & 1) != 0)
    {
      if (v15 != v12)
      {
        goto LABEL_75;
      }
    }

    else if (v14 != v11)
    {
      goto LABEL_75;
    }

    if (v22 == v20 && (v22 & 1) != 0)
    {
      if (v23 != v19)
      {
        goto LABEL_75;
      }
    }

    else if (v22 != v20)
    {
      goto LABEL_75;
    }

    if (v27 == v25 && (v27 & 1) != 0)
    {
      if (v28 != v24)
      {
        goto LABEL_75;
      }
    }

    else if (v27 != v25)
    {
      goto LABEL_75;
    }

    v43 = *(a1 + 50);
    if (v43 == v31 && *(a1 + 50))
    {
      if (*v29 != v30)
      {
        goto LABEL_75;
      }
    }

    else if (v43 != v31)
    {
      goto LABEL_75;
    }

    if (v35 == v33 && (v35 & 1) != 0)
    {
      if (v36 != v32)
      {
        goto LABEL_75;
      }
    }

    else if (v35 != v33)
    {
      goto LABEL_75;
    }

    v44 = *(a1 + 56);
    if (v44 == v38 && *(a1 + 56))
    {
      if (*v37 != v51)
      {
        goto LABEL_75;
      }
    }

    else if (v44 != v38)
    {
      goto LABEL_75;
    }

    if (v41 == v40 && (v41 & 1) != 0)
    {
      if (v42 == v39)
      {
        goto LABEL_76;
      }
    }

    else if (v41 == v40)
    {
LABEL_76:
      if (v69[0] == 1 && *(sub_1000054A8() + 186) == 1)
      {
        v48 = *&v68[22];
        if (*&v68[22] >= 3u)
        {
          if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
          {
            sub_1004BCD10();
          }
        }

        else
        {
          if (*(a1 + 88) != *&v68[22] && *(a1 + 64))
          {
            v49 = *(a1 + 24);
            v55[0] = _NSConcreteStackBlock;
            v55[1] = 3221225472;
            v55[2] = sub_100301FC0;
            v55[3] = &unk_100998F28;
            v55[4] = a1;
            v56 = *&v68[22];
            dispatch_async(v49, v55);
            *(a1 + 88) = v48;
          }

          if (v48 == 2 && *(a1 + 64))
          {
            v50 = *(a1 + 24);
            v52[0] = _NSConcreteStackBlock;
            v52[1] = 3221225472;
            v52[2] = sub_1003020C0;
            v52[3] = &unk_1009A45A8;
            v52[4] = a1;
            v53 = 2;
            v54[0] = *v68;
            *(v54 + 14) = *&v68[14];
            dispatch_async(v50, v52);
          }
        }
      }

      goto LABEL_87;
    }

LABEL_75:
    rep = std::chrono::steady_clock::now().__d_.__rep_;
    v46 = *(a1 + 42);
    v64 = *(a1 + 43);
    v65 = *(a1 + 59);
    v47 = *(a1 + 64);
    *&buf = rep;
    DWORD2(buf) = 4;
    BYTE12(buf) = 0;
    BYTE14(buf) = 0;
    v58 = 0;
    v59 = 0;
    v60 = 0;
    v61 = 0;
    v62 = 0;
    v63 = v46;
    v66 = 1;
    sub_100182DFC(v47, &buf);
    goto LABEL_76;
  }

  if (uint64 == 1504)
  {
    v6 = os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT);
    if (v6)
    {
      LOWORD(buf) = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#coex,processIncomingMessage-Received message type-2 from UCM", &buf, 2u);
    }

    v7 = sub_1003021EC(v6, v3);
    if ((v7 & 0x10000) != 0)
    {
      v8 = *(a1 + 58);
      v9 = *(a1 + 59);
      *(a1 + 58) = v7;
      if (v9 == BYTE1(v7) && ((v7 >> 8) & 1) != 0)
      {
        if (v8 == v7)
        {
          goto LABEL_87;
        }

        goto LABEL_22;
      }

      if (v9 != BYTE1(v7))
      {
LABEL_22:
        v16 = std::chrono::steady_clock::now().__d_.__rep_;
        v17 = *(a1 + 42);
        v64 = *(a1 + 43);
        v65 = *(a1 + 59);
        v18 = *(a1 + 64);
        *&buf = v16;
        DWORD2(buf) = 4;
        BYTE12(buf) = 0;
        BYTE14(buf) = 0;
        v58 = 0;
        v59 = 0;
        v60 = 0;
        v61 = 0;
        v62 = 0;
        v63 = v17;
        v66 = 1;
        sub_100182DFC(v18, &buf);
      }
    }
  }

  else if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
  {
    sub_1004BCD44();
  }

LABEL_87:
}

void sub_100301888(void *a1@<X1>, _BYTE *a2@<X2>, uint64_t a3@<X8>)
{
  v5 = a1;
  *a2 = 0;
  if (xpc_dictionary_get_uint64(v5, "kMessageId") != 1500)
  {
    __assert_rtn("parseIncomingEventType1", "PRCoexProvider.mm", 228, "msgId == WCMR1SendMsg");
  }

  v6 = xpc_dictionary_get_value(v5, "kMessageArgs");
  v7 = v6;
  if (v6 && xpc_get_type(v6) == &_xpc_type_dictionary)
  {
    v54 = *(sub_1000054A8() + 144);
    v9 = sub_10030249C(v7, "kWCMHToRCU1BTPowerStatus");
    v10 = sub_10030249C(v7, "kWCMHToRCU1CellularStatus");
    v11 = sub_10030249C(v7, "kWCMHToRCU1wiFiPowerStatus");
    v12 = xpc_dictionary_get_value(v7, "kWCMHToRCU1BTBandStatus");
    v13 = v12;
    if (v12 && xpc_get_type(v12) == &_xpc_type_uint64)
    {
      value = xpc_uint64_get_value(v13);
      v14 = value < 0x3E8;
      if (value >= 0x3E8)
      {
        v16 = 0;
      }

      else
      {
        v16 = value;
      }

      v50 = v16;
    }

    else
    {
      v50 = 0;
      v14 = 0;
    }

    v52 = sub_10030249C(v7, "kWCMHToRCU1Cellularband");
    v17 = xpc_dictionary_get_value(v7, "kWCMHToRCU15GStatus");
    v18 = v17;
    if (v17 && xpc_get_type(v17) == &_xpc_type_uint64)
    {
      v19 = xpc_uint64_get_value(v18);
      v53 = v19 < 4;
      if (v19 >= 4)
      {
        v20 = 0;
      }

      else
      {
        v20 = v19;
      }

      v49 = v20;
    }

    else
    {
      v49 = 0;
      v53 = 0;
    }

    v21 = xpc_dictionary_get_value(v7, "kWCMHToRCU1DutyCycle");
    v23 = v21;
    if (v21 && xpc_get_type(v21) == &_xpc_type_uint64)
    {
      v24 = xpc_uint64_get_value(v23);
      v51 = 1;
      v47 = v24 >> 8;
      v48 = v24;
    }

    else
    {
      v51 = 0;
      LOWORD(v47) = v22;
      v48 = 0;
    }

    if (sub_10041C748(v54))
    {
      v25 = xpc_dictionary_get_value(v7, "kWCMHToRCU1ChannelsToTriggerGPIOBlanking");

      if (v25)
      {
        *a2 = 1;
      }

      uint64 = xpc_dictionary_get_uint64(v7, "kWCMHToRCU1ChannelsToTriggerGPIOBlanking");
      v27 = xpc_dictionary_get_uint64(v7, "kWCMHToRCU1SideChannelsToTriggerGPIOBlanking_ChBegin");
      v46 = xpc_dictionary_get_uint64(v7, "kWCMHToRCU1SideChannelsToTriggerGPIOBlanking_ChEnd");
    }

    else
    {
      v46 = 0;
      v27 = 0;
      uint64 = 0;
    }

    v28 = qword_1009F9820;
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      v41 = v27;
      v42 = uint64;
      v45 = v11;
      if (v9)
      {
        v29 = "Y";
      }

      else
      {
        v29 = "N";
      }

      if ((v9 & 0x100) == 0)
      {
        v29 = "-";
      }

      v43 = v29;
      v30 = "-";
      v44 = v14;
      if (v14)
      {
        std::to_string(&v57, v50);
        if ((v57.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v30 = &v57;
        }

        else
        {
          v30 = v57.__r_.__value_.__r.__words[0];
        }
      }

      v40 = v9;
      if (v10)
      {
        v31 = "Y";
      }

      else
      {
        v31 = "N";
      }

      if ((v10 & 0x100) != 0)
      {
        v32 = v31;
      }

      else
      {
        v32 = "-";
      }

      if (v52)
      {
        v33 = "Y";
      }

      else
      {
        v33 = "N";
      }

      if ((v52 & 0x100) != 0)
      {
        v34 = v33;
      }

      else
      {
        v34 = "-";
      }

      if (v11)
      {
        v35 = "Y";
      }

      else
      {
        v35 = "N";
      }

      if ((v11 & 0x100) != 0)
      {
        v36 = v35;
      }

      else
      {
        v36 = "-";
      }

      v37 = "-";
      if (v53)
      {
        v37 = &v56;
        std::to_string(&v56, v49);
        if ((v56.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v37 = v56.__r_.__value_.__r.__words[0];
        }
      }

      if (v51)
      {
        std::to_string(&v55, v48 | (v47 << 8));
        if ((v55.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v38 = &v55;
        }

        else
        {
          v38 = v55.__r_.__value_.__r.__words[0];
        }

        *buf = 136316674;
        *v59 = v43;
        *&v59[8] = 2080;
        v60 = v30;
        v61 = 2080;
        v62 = v32;
        v63 = 2080;
        v64 = v34;
        v65 = 2080;
        v66 = v36;
        v67 = 2080;
        v68 = v37;
        v69 = 2080;
        v70 = v38;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "#coex,parseIncomingEventType1-Received msg from UCM: BT [Power: %s, Band: %s], Cellular [Power: %s, Band: %s], WiFi [Power: %s, Channel: %s], R1DutyCycleNeeded: %s", buf, 0x48u);
        if (SHIBYTE(v55.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v55.__r_.__value_.__l.__data_);
        }
      }

      else
      {
        *buf = 136316674;
        *v59 = v43;
        *&v59[8] = 2080;
        v60 = v30;
        v61 = 2080;
        v62 = v32;
        v63 = 2080;
        v64 = v34;
        v65 = 2080;
        v66 = v36;
        v67 = 2080;
        v68 = v37;
        v69 = 2080;
        v70 = "-";
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "#coex,parseIncomingEventType1-Received msg from UCM: BT [Power: %s, Band: %s], Cellular [Power: %s, Band: %s], WiFi [Power: %s, Channel: %s], R1DutyCycleNeeded: %s", buf, 0x48u);
      }

      v9 = v40;
      v11 = v45;
      LOBYTE(v14) = v44;
      v27 = v41;
      uint64 = v42;
      if (v53 && SHIBYTE(v56.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v56.__r_.__value_.__l.__data_);
      }

      if (v44 && SHIBYTE(v57.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v57.__r_.__value_.__l.__data_);
      }
    }

    if (sub_10041C748(v54))
    {
      v39 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109632;
        *v59 = uint64;
        *&v59[4] = 1024;
        *&v59[6] = v27;
        LOWORD(v60) = 1024;
        *(&v60 + 2) = v46;
        _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "#coex,parseIncomingEventType1-Recevied msg from UCM: R2GpioBlanking:ChannelsToTriggerGPIOBlanking(%d), NbChannelBegIndex(%d), NbChannelEndIndex(%d)", buf, 0x14u);
      }
    }

    *a3 = v9;
    *(a3 + 2) = v10;
    *(a3 + 4) = v11;
    *(a3 + 6) = v50;
    *(a3 + 8) = v14;
    *(a3 + 10) = v52;
    *(a3 + 12) = v49;
    *(a3 + 14) = v53;
    *(a3 + 16) = 0;
    *(a3 + 18) = v48 | (v47 << 8);
    *(a3 + 20) = v51;
    *(a3 + 22) = uint64;
    *(a3 + 24) = v27;
    v8 = 1;
    *(a3 + 26) = v46;
  }

  else
  {
    v8 = 0;
    *a3 = 0;
  }

  *(a3 + 28) = v8;
}

void sub_100301F50(uint64_t a1)
{
  v1 = *(a1 + 32);
  rep = std::chrono::steady_clock::now().__d_.__rep_;
  v3 = *(v1 + 40);
  v4 = *(v1 + 64);
  *&v5 = rep;
  DWORD2(v5) = 1;
  WORD6(v5) = v3;
  BYTE14(v5) = 1;
  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  sub_100182DFC(v4, &v5);
}

void sub_100301FC0(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
  v4 = *(a1 + 40);
  v5 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(v7) = 67109120;
    DWORD1(v7) = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#coex,R2ChannelToTriggerGpioBlankingChanged changed %d", &v7, 8u);
  }

  v6 = *(v2 + 64);
  *&v7 = v3.__d_.__rep_;
  DWORD2(v7) = 2;
  BYTE12(v7) = 0;
  BYTE14(v7) = 0;
  v8 = v4;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v14 = 0;
  sub_100182DFC(v6, &v7);
}

void sub_1003020C0(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
  if ((*(a1 + 72) & 1) == 0)
  {
    sub_1000195BC();
  }

  rep = v3.__d_.__rep_;
  v5 = *(a1 + 40);
  v6 = *(a1 + 68);
  v7 = *(a1 + 70);
  v8 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(v10) = 67109376;
    DWORD1(v10) = v6;
    WORD4(v10) = 1024;
    *(&v10 + 10) = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#coex,R2NbChannelIdxToTriggerGpioBlankingChanged changed begin: %d, end: %d", &v10, 0xEu);
  }

  v9 = *(v2 + 64);
  *&v10 = rep;
  DWORD2(v10) = 3;
  BYTE12(v10) = 0;
  BYTE14(v10) = 0;
  v11 = v5;
  v12 = v6;
  v13 = 1;
  v14 = v7;
  v15 = 1;
  v16 = 0;
  v17 = 0;
  sub_100182DFC(v9, &v10);
}

uint64_t sub_1003021EC(uint64_t a1, void *a2)
{
  v2 = a2;
  if (xpc_dictionary_get_uint64(v2, "kMessageId") != 1504)
  {
    __assert_rtn("parseIncomingEventType2", "PRCoexProvider.mm", 297, "msgId == WCMHToR2BlockEnhancedMms");
  }

  v3 = xpc_dictionary_get_value(v2, "kMessageArgs");
  v4 = v3;
  if (v3 && xpc_get_type(v3) == &_xpc_type_dictionary)
  {
    v8 = sub_10030249C(v4, "kWCMHToR2BlockEnhancedMms");
    v9 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      v10 = "N";
      if (v8)
      {
        v10 = "Y";
      }

      if (((v8 >> 8) & 1) == 0)
      {
        v10 = "-";
      }

      v19 = 136315138;
      v20 = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#coex,parseIncomingEventType2-Received msg from UCM: WiFi [BlockEnhancedMms: %s]", &v19, 0xCu);
    }

    v11 = +[NSUserDefaults standardUserDefaults];
    v12 = [v11 objectForKey:@"BlockEnhancedMms"];
    v13 = v12 == 0;

    if (v13)
    {
      LOBYTE(v6) = v8;
      v17 = BYTE1(v8);
    }

    else
    {
      v14 = +[NSUserDefaults standardUserDefaults];
      v6 = [v14 BOOLForKey:@"BlockEnhancedMms"];

      v15 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        v16 = "N";
        if (v6)
        {
          v16 = "Y";
        }

        v19 = 136315138;
        v20 = v16;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#coex,parseIncomingEventType2-Received msg was overridden by default write: WiFi [BlockEnhancedMms: %s]", &v19, 0xCu);
      }

      v17 = 1;
    }

    v7 = v17 << 8;
    v6 = v6;
    v5 = 0x10000;
  }

  else
  {
    v5 = 0;
    v6 = 0;
    v7 = 0;
  }

  return v6 | v5 | v7;
}

void sub_100302450(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

uint64_t sub_10030249C(void *a1, const char *a2)
{
  v2 = xpc_dictionary_get_value(a1, a2);
  v3 = v2;
  if (v2 && xpc_get_type(v2) == &_xpc_type_BOOL)
  {
    value = xpc_BOOL_get_value(v3);
    v5 = 1;
  }

  else
  {
    value = 0;
    v5 = 0;
  }

  return value | (v5 << 8);
}

void sub_100302520(uint64_t a1, const char *const *keys, xpc_object_t *values, int a4)
{
  v5 = xpc_dictionary_create(keys, values, a4);
  xpc_connection_send_message(*(a1 + 32), v5);
}

void sub_100302594(uint64_t a1)
{
  keys = "kMessageId";
  values = xpc_uint64_create(0x321uLL);
  sub_100302520(a1, &keys, &values, 1);
}

uint64_t sub_100302654(uint64_t a1, int *a2)
{
  v5 = *a2;
  if (*a2 == 2)
  {
    v18 = 0;
    v20 = 0;
    v21 = 0;
    if (*(a2 + 19) == 1)
    {
      v7 = qword_1009F9820;
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        if ((*(a2 + 19) & 1) == 0)
        {
          sub_1000195BC();
        }

        v8 = *(a2 + 18);
        *buf = 67109120;
        v23 = v8;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#coex,RangingStatusUpdate-channel,%d", buf, 8u);
      }

      if ((*(a2 + 19) & 1) == 0)
      {
        sub_1000195BC();
      }

      if (*(a2 + 18) == 5)
      {
        v9 = 5;
      }

      else
      {
        v9 = 9;
      }
    }

    else
    {
      v9 = *(a1 + 74);
    }

    v19 = v9;
    v2 = *(a2 + 16);
    if (v2 == 1)
    {
      if (*(a2 + 6) | *(a2 + 5))
      {
        v10 = qword_1009F9820;
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          if ((a2[4] & 1) == 0)
          {
            sub_1000195BC();
          }

          v11 = *(a2 + 2);
          v12 = *(a2 + 3);
          v13 = *(a2 + 4);
          v14 = *(a2 + 6);
          v15 = *(a2 + 5);
          v16 = *(a2 + 7);
          *buf = 67110400;
          v23 = v11;
          v24 = 1024;
          v25 = v12;
          v26 = 1024;
          v27 = v13;
          v28 = 1024;
          v29 = v14;
          v30 = 1024;
          v31 = v15;
          v32 = 1024;
          v33 = v16;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#coex,RangingStatusUpdate-onDuration(%d), cycleLength(%d), numberCycles(%d), frameConfigMask(%d), priorityMask(%d), nbBandMask(%d)", buf, 0x26u);
        }

        v18 = 1;
        if ((a2[4] & 1) == 0)
        {
          sub_1000195BC();
        }

        v20 = *(a2 + 1);
        v21 = a2[3];
      }

      sub_100300F20(a1, &v18);
    }
  }

  else if (v5 == 1)
  {
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004BCD78();
    }

    if (*(a2 + 19) != 1)
    {
      goto LABEL_13;
    }

    if (*(a2 + 18) == 5)
    {
      v6 = 5;
    }

    else
    {
      v6 = 9;
    }

    *(a1 + 74) = v6;
    sub_100300F20(a1, (a1 + 72));
    LOBYTE(v2) = 1;
  }

  else if (!v5)
  {
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004BCDAC();
    }

LABEL_13:
    LOBYTE(v2) = 0;
  }

  return v2 & 1;
}

void sub_10030292C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x4812000000;
  v9 = sub_100302A20;
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v16 = 0;
  v10 = nullsub_122;
  v11[0] = 0;
  *(v11 + 7) = 0;
  v3 = *(a1 + 16);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100302A38;
  block[3] = &unk_10099CEE0;
  block[4] = &v6;
  block[5] = a1;
  dispatch_sync(v3, block);
  v4 = v7;
  *a2 = *(v7 + 3);
  *(a2 + 16) = *(v4 + 32);
  _Block_object_dispose(&v6, 8);
}

__n128 sub_100302A20(__n128 *a1, __n128 *a2)
{
  result = a2[3];
  a1[4].n128_u16[0] = a2[4].n128_u16[0];
  a1[3] = result;
  return result;
}

__n128 sub_100302A38(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(*(a1 + 32) + 8);
  result = *(v1 + 42);
  v2[4].n128_u16[0] = *(v1 + 58);
  v2[3] = result;
  return result;
}

std::string *sub_100302A7C(std::string *a1)
{
  a1->__r_.__value_.__s.__data_[0] = 0;
  a1[1].__r_.__value_.__s.__data_[0] = 0;
  a1[1].__r_.__value_.__s.__data_[8] = 0;
  v2 = (a1 + 32);
  a1[2].__r_.__value_.__s.__data_[8] = 0;
  v3 = [@"/System/Library/NearbyInteractionBundles" stringByAppendingPathComponent:@"SpatialGesturesResources.bundle"];
  v4 = [NSBundle bundleWithPath:v3];
  v5 = [v4 pathForResource:@"model.espresso" ofType:@"net"];
  v6 = [@"/System/Library/NearbyInteractionBundles" stringByAppendingPathComponent:@"MotionBasedSpatialGesturesResources.bundle"];
  v7 = [NSBundle bundleWithPath:v6];
  v8 = [v7 pathForResource:@"model.espresso" ofType:@"net"];
  __ec.__val_ = 0;
  v9 = std::system_category();
  __ec.__cat_ = v9;
  v32 = [@"/System/Library/NearbyInteractionBundles" UTF8String];
  sub_1003030B0(&v33.__pn_, &v32);
  std::__fs::filesystem::__status(&v33, &__ec);
  v10 = v37[0];
  if (v37[0])
  {
    __ec.__val_ = 0;
    __ec.__cat_ = v9;
  }

  if (SHIBYTE(v33.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v33.__pn_.__r_.__value_.__l.__data_);
  }

  if (v10 != 255 && v10)
  {
    v13 = v3;
    v29 = v5;
    v32 = [v3 UTF8String];
    sub_1003030B0(&v33.__pn_, &v32);
    std::__fs::filesystem::__status(&v33, &__ec);
    v14 = v37[0];
    if (v37[0])
    {
      __ec.__val_ = 0;
      __ec.__cat_ = v9;
    }

    if (SHIBYTE(v33.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v33.__pn_.__r_.__value_.__l.__data_);
    }

    if (v14 != 255 && v14)
    {
      v17 = 1;
    }

    else
    {
      v15 = qword_1009F9820;
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v16 = v3;
        sub_1004BCE1C([v3 UTF8String], v37, v15);
      }

      v17 = 0;
    }

    v18 = v6;
    v30 = [v6 UTF8String];
    sub_1003030B0(&v33.__pn_, &v30);
    std::__fs::filesystem::__status(&v33, &__ec);
    v19 = v32;
    if (v32)
    {
      __ec.__val_ = 0;
      __ec.__cat_ = v9;
    }

    if (SHIBYTE(v33.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v33.__pn_.__r_.__value_.__l.__data_);
    }

    if (v19 != 255 && v19)
    {
      if (v17)
      {
        v5 = v29;
        v23 = v29;
        sub_100004A08(&v33, [v29 UTF8String]);
        v34 = 1;
        v24 = v8;
        sub_100004A08(&v35, [v8 UTF8String]);
        v36[0] = 1;
        sub_10029F0B8(a1, &v33);
        sub_10029F0B8(v2, &v35);
        for (i = 0; i != -64; i -= 32)
        {
          v26 = (&v33.__pn_.__r_.__value_.__l.__data_ + i);
          if (v36[i] == 1 && *(v26 + 55) < 0)
          {
            operator delete(v26[4]);
          }
        }
      }

      else
      {
        v28 = v8;
        v5 = v29;
        v33.__pn_.__r_.__value_.__r.__words[0] = [v8 UTF8String];
        sub_100302FE4(v2, &v33.__pn_.__r_.__value_.__l.__data_);
      }
    }

    else
    {
      v20 = qword_1009F9820;
      v5 = v29;
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v21 = v6;
        sub_1004BCE58([v6 UTF8String], &v33, v20);
      }

      if (v17)
      {
        v22 = v29;
        v32 = [v29 UTF8String];
        sub_100302FE4(a1, &v32);
      }

      else
      {
        v27 = qword_1009F9820;
        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
        {
          sub_1004BCE94(v27);
        }
      }
    }
  }

  else
  {
    v11 = qword_1009F9820;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_1004BCDE0([@"/System/Library/NearbyInteractionBundles" UTF8String], &v33, v11);
    }
  }

  return a1;
}

void sub_100302ED4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21)
{
  if (a2)
  {
    sub_100020444(exception_object);
  }

  _Unwind_Resume(exception_object);
}

std::string *sub_100302FE4(std::string *a1, std::string::value_type **a2)
{
  v3 = *a2;
  if (a1[1].__r_.__value_.__s.__data_[0] == 1)
  {
    std::string::assign(a1, v3);
  }

  else
  {
    sub_100004A08(a1, v3);
    a1[1].__r_.__value_.__s.__data_[0] = 1;
  }

  return a1;
}

uint64_t sub_100303030@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = 0;
  v5 = 0;
  do
  {
    v6 = v4;
    result = sub_10029F2B8(a2 + 32 * v5, (a1 + 32 * v5));
    v4 = 1;
    v5 = 1;
  }

  while ((v6 & 1) == 0);
  return result;
}

void sub_100303094(_Unwind_Exception *exception_object)
{
  if ((v3 & 1) == 0)
  {
    sub_1004BCED8(v2, v1);
  }

  _Unwind_Resume(exception_object);
}

std::string *sub_1003030B0(std::string *this, std::string **a2)
{
  *&this->__r_.__value_.__l.__data_ = 0uLL;
  this->__r_.__value_.__r.__words[2] = 0;
  v3 = *a2;
  v4 = (v3 - 1);
  do
  {
    v5 = v4->__r_.__value_.__s.__data_[1];
    v4 = (v4 + 1);
  }

  while (v5);
  sub_1001B948C(this, v3, v4);
  return this;
}

void sub_1003030F4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}