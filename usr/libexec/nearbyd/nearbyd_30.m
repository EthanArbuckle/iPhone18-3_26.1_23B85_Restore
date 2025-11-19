void sub_100198124(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::locale a10, uint64_t a11, std::locale a12, uint64_t a13, uint64_t a14, std::locale a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, char a63)
{
  if (*(v63 - 121) < 0)
  {
    operator delete(*(v63 - 144));
  }

  if (a27 < 0)
  {
    operator delete(__p);
  }

  sub_100193C68(&a28);
  sub_100193C68(&a63);
  sub_100193C68(&STACK[0x2B0]);
  _Unwind_Resume(a1);
}

_BYTE *sub_100198600@<X0>(_BYTE *a1@<X8>)
{
  v2 = *(sub_1000054A8() + 186);
  if (v2)
  {
    if (v2 != 1)
    {
      sub_1004A13AC();
    }

    v3 = "r2";
  }

  else
  {
    v3 = "r1";
  }

  return sub_100004A08(a1, v3);
}

std::string *sub_100198660@<X0>(std::string *result@<X0>, uint64_t a2@<X1>, std::string *a3@<X8>)
{
  if (result->__r_.__value_.__s.__data_[8] == 1)
  {
    return std::to_string(a3, *&result->__r_.__value_.__l.__data_);
  }

  if (*(a2 + 23) < 0)
  {
    return sub_1000056BC(a3, *a2, *(a2 + 8));
  }

  *&a3->__r_.__value_.__l.__data_ = *a2;
  a3->__r_.__value_.__r.__words[2] = *(a2 + 16);
  return result;
}

std::string *sub_1001986A0@<X0>(std::string *result@<X0>, uint64_t a2@<X1>, std::string *a3@<X8>)
{
  if (result->__r_.__value_.__s.__data_[1] == 1)
  {
    return std::to_string(a3, result->__r_.__value_.__s.__data_[0]);
  }

  if (*(a2 + 23) < 0)
  {
    return sub_1000056BC(a3, *a2, *(a2 + 8));
  }

  *&a3->__r_.__value_.__l.__data_ = *a2;
  a3->__r_.__value_.__r.__words[2] = *(a2 + 16);
  return result;
}

std::string *sub_1001986E0@<X0>(std::string *result@<X0>, uint64_t a2@<X1>, std::string *a3@<X8>)
{
  if (result->__r_.__value_.__s.__data_[2] == 1)
  {
    return std::to_string(a3, SLOWORD(result->__r_.__value_.__l.__data_));
  }

  if (*(a2 + 23) < 0)
  {
    return sub_1000056BC(a3, *a2, *(a2 + 8));
  }

  *&a3->__r_.__value_.__l.__data_ = *a2;
  a3->__r_.__value_.__r.__words[2] = *(a2 + 16);
  return result;
}

void sub_100198720(uint64_t a1)
{
  sub_10019431C(a1, &v5);
  v1 = v5;
  v2 = v6;
  if (v5 != v6)
  {
    v3 = qword_1009F9820;
    do
    {
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        v4 = v1;
        if (*(v1 + 23) < 0)
        {
          v4 = *v1;
        }

        *buf = 136315138;
        *&buf[4] = v4;
        _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#sp,\n[Solution Provider] %s", buf, 0xCu);
        v3 = qword_1009F9820;
      }

      v1 += 3;
    }

    while (v1 != v2);
  }

  *buf = &v5;
  sub_10019A240(buf);
}

void sub_100198828(uint64_t a1)
{
  v2 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "#sp,[Solution Provider] _printDebug responder_superframe_stats:", buf, 2u);
    v2 = qword_1009F9820;
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v12 = *(a1 + 8);
    *buf = 67109120;
    *&buf[4] = v12;
    _os_log_debug_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "#sp,[Solution Provider] ticket id: %d", buf, 8u);
    v2 = qword_1009F9820;
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    sub_1004A13D8(a1);
  }

  v3 = *(a1 + 104);
  v4 = os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG);
  if (v3 == 1)
  {
    if (v4)
    {
      sub_1004A1490((a1 + 96));
    }
  }

  else if (v4)
  {
    sub_1004A1450();
  }

  v5 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
  {
    v13 = *(a1 + 24);
    *buf = 134217984;
    *&buf[4] = v13;
    _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "#sp,[Solution Provider]   r1 timestamp: %.9f sec", buf, 0xCu);
    v5 = qword_1009F9820;
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v14 = *(a1 + 18);
    *buf = 67109120;
    *&buf[4] = v14;
    _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "#sp,[Solution Provider]   r1 sess id: %d", buf, 8u);
    v5 = qword_1009F9820;
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v15 = *(a1 + 32);
    *buf = 134217984;
    *&buf[4] = v15;
    _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "#sp,[Solution Provider]   r1 mac_addr: 0x%llx", buf, 0xCu);
    v5 = qword_1009F9820;
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_1004279E4(*(a1 + 16), buf);
    if (v31 >= 0)
    {
      v16 = buf;
    }

    else
    {
      v16 = *buf;
    }

    v17 = *(a1 + 16);
    *v32 = 136315394;
    v33 = v16;
    v34 = 1024;
    v35 = v17;
    _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "#sp,[Solution Provider]   r1 sess status: %s (%d)", v32, 0x12u);
    if (v31 < 0)
    {
      operator delete(*buf);
    }

    v5 = qword_1009F9820;
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_1004276FC(*(a1 + 20), buf);
    if (v31 >= 0)
    {
      v18 = buf;
    }

    else
    {
      v18 = *buf;
    }

    v19 = *(a1 + 20);
    *v32 = 136315394;
    v33 = v18;
    v34 = 1024;
    v35 = v19;
    _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "#sp,[Solution Provider]   r1 sess type: %s (%d)", v32, 0x12u);
    if (v31 < 0)
    {
      operator delete(*buf);
    }

    v5 = qword_1009F9820;
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v20 = *(a1 + 40);
    *buf = 67109120;
    *&buf[4] = v20;
    _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "#sp,[Solution Provider]   r1 cycle_idx: %d", buf, 8u);
    v5 = qword_1009F9820;
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v21 = *(a1 + 42);
    *buf = 67109120;
    *&buf[4] = v21;
    _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "#sp,[Solution Provider]   r1 interval_ms: %d", buf, 8u);
    v5 = qword_1009F9820;
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v22 = *(a1 + 44);
    *buf = 67109120;
    *&buf[4] = v22;
    _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "#sp,[Solution Provider]   r1 superframe_size_250us: %d", buf, 8u);
    v5 = qword_1009F9820;
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v23 = *(a1 + 46);
    *buf = 67109120;
    *&buf[4] = v23;
    _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "#sp,[Solution Provider]   r1 tx_mini_slot_size_250us: %d", buf, 8u);
    v5 = qword_1009F9820;
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v24 = *(a1 + 47);
    *buf = 67109120;
    *&buf[4] = v24;
    _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "#sp,[Solution Provider]   r1 rx_mini_slot_size_250us: %d", buf, 8u);
    v5 = qword_1009F9820;
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v25 = *(a1 + 48);
    *buf = 67109120;
    *&buf[4] = v25;
    _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "#sp,[Solution Provider]   r1 tx_preamble: %d", buf, 8u);
    v5 = qword_1009F9820;
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v26 = *(a1 + 49);
    *buf = 67109120;
    *&buf[4] = v26;
    _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "#sp,[Solution Provider]   r1 rx_preamble: %d", buf, 8u);
    v5 = qword_1009F9820;
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v27 = *(a1 + 50);
    *buf = 67109120;
    *&buf[4] = v27;
    _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "#sp,[Solution Provider]   r1 num_access_slots: %d", buf, 8u);
    v5 = qword_1009F9820;
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v28 = *(a1 + 51);
    *buf = 67109120;
    *&buf[4] = v28;
    _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "#sp,[Solution Provider]   r1 poll_rx_status: 0x%x", buf, 8u);
    v5 = qword_1009F9820;
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v29 = *(a1 + 56);
    *buf = 134217984;
    *&buf[4] = v29;
    _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "#sp,[Solution Provider]   r1 poll_rssi_dbm: %.3f", buf, 0xCu);
    v5 = qword_1009F9820;
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_1004A1508(a1);
  }

  v6 = *(a1 + 72);
  v7 = *(a1 + 80);
  if (v6 != v7)
  {
    v8 = 0;
    v9 = qword_1009F9820;
    do
    {
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        *buf = 67109120;
        *&buf[4] = v8;
        _os_log_debug_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "#sp,[Solution Provider]   rx packet #%d info:", buf, 8u);
        v9 = qword_1009F9820;
        ++v8;
      }

      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        v10 = *(v6 + 1);
        *buf = 67109376;
        *&buf[4] = v8;
        *&buf[8] = 2048;
        *&buf[10] = v10;
        _os_log_debug_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "#sp,[Solution Provider]       r1_rx_packet[%d]_rssi_dbm: %.3f", buf, 0x12u);
        v9 = qword_1009F9820;
      }

      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        v11 = *v6;
        *buf = 67109376;
        *&buf[4] = v8;
        *&buf[8] = 1024;
        *&buf[10] = v11;
        _os_log_debug_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "#sp,[Solution Provider]       r1_rx_packet[%d]_rx_status: 0x%x", buf, 0xEu);
        v9 = qword_1009F9820;
      }

      v6 += 16;
    }

    while (v6 != v7);
  }
}

_BYTE *sub_100199024@<X0>(int a1@<W0>, _BYTE *a2@<X8>)
{
  v2 = "Unknown";
  if (a1 == 1)
  {
    v2 = "Remote";
  }

  if (a1)
  {
    v3 = v2;
  }

  else
  {
    v3 = "Local";
  }

  return sub_100004A08(a2, v3);
}

void sub_100199054(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v9 = a2;
  v12 = sub_100427984(*(a1 + 20), a2, a3, a4, a5, a6, a7, a8);
  v93 = sub_100427658(*(a1 + 24), v13, v14, v15, v16, v17, v18, v19);
  v109 = *(a1 + 75);
  v92 = *(a1 + 64);
  v23 = sub_10041C3B4(v92);
  v24 = *(a1 + 56);
  v25 = v24 & 0xF;
  if ((v25 & (v24 >> 4)) == 0xF)
  {
    v87 = 0.0;
    v88 = 0uLL;
    v89 = 0.0;
    v84 = 0.0;
    v85 = 0.0;
    v86 = 0.0;
    v90 = 0.0;
    v91 = 0.0;
  }

  else
  {
    LOWORD(v20) = *(a1 + 84);
    LOWORD(v21) = *(a1 + 86);
    LOWORD(v22) = *(a1 + 88);
    v90 = *(a1 + 69);
    v91 = *(a1 + 68);
    v89 = *(a1 + 70);
    v87 = *(a1 + 60);
    *&v88 = *(a1 + 58);
    v85 = v21 * 0.01;
    v86 = v20 * 0.01;
    v84 = v22 * 0.01;
    *(&v88 + 1) = 1;
  }

  v26 = 0;
  v27 = 0;
  v28 = v24 >> 4;
  v29 = *(a1 + 46);
  v30 = *(a1 + 48);
  v83 = *(a1 + 62);
  v82 = *(a1 + 83);
  v81 = *(a1 + 97);
  v94 = 0;
  v95 = 0;
  v96 = 0;
  v31 = (a1 + 98);
  do
  {
    v32 = *v31++;
    v27 |= v32 << v26;
    v26 += 8;
  }

  while (v26 != 40);
  v33 = 0;
  v34 = 0;
  v35 = v30 * 0.25;
  v36 = (a1 + 103);
  do
  {
    v37 = *v36++;
    v34 |= v37 << v33;
    v33 += 8;
  }

  while (v33 != 40);
  v38 = 0;
  v39 = 0;
  v40 = v29 * 0.25;
  v41 = (a1 + 108);
  do
  {
    v42 = *v41++;
    v39 |= v42 << v38;
    v38 += 8;
  }

  while (v38 != 40);
  v43 = 0;
  v44 = 0;
  v45 = (a1 + 113);
  do
  {
    v46 = *v45++;
    v44 |= v46 << v43;
    v43 += 8;
  }

  while (v43 != 40);
  if (v25 == 15)
  {
    v47 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      v48 = *(a1 + 42);
      v49 = *(a1 + 44);
      LODWORD(buf) = 67109632;
      DWORD1(buf) = v48;
      WORD4(buf) = 1024;
      *(&buf + 10) = v49;
      HIWORD(buf) = 1024;
      LODWORD(v104) = 15;
      _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "#sp,Ignoring AOA hypothesis primary with az %d el %d intunc %d", &buf, 0x14u);
    }
  }

  else
  {
    v50 = v25 * 0.0666666667;
    v51 = *(a1 + 44);
    *&buf = *(a1 + 42);
    *(&buf + 1) = v51;
    v104 = v50;
    v105 = 0;
    v106 = 0;
    v107 = 0;
    v108 = 0;
    sub_100199694(&v94, &buf);
    v52 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
    {
      *v97 = 134218496;
      v98 = buf;
      v99 = 2048;
      v100 = *(&buf + 1);
      v101 = 2048;
      v102 = v104;
      _os_log_debug_impl(&_mh_execute_header, v52, OS_LOG_TYPE_DEBUG, "#sp,AOA hypothesis primary: az %f el %f unc %f", v97, 0x20u);
    }
  }

  if (v28 == 15)
  {
    v53 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      v60 = *(a1 + 71);
      v61 = *(a1 + 73);
      LODWORD(buf) = 67109632;
      DWORD1(buf) = v60;
      WORD4(buf) = 1024;
      *(&buf + 10) = v61;
      HIWORD(buf) = 1024;
      LODWORD(v104) = 15;
      _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_DEFAULT, "#sp,Ignoring AOA hypothesis alt1 with az %d el %d intunc %d", &buf, 0x14u);
    }
  }

  else
  {
    v62 = *(a1 + 73);
    *&buf = *(a1 + 71);
    *(&buf + 1) = v62;
    v104 = v28 * 0.0666666667;
    v105 = 0;
    v106 = 0;
    v107 = 0;
    v108 = 0;
    sub_100199694(&v94, &buf);
    v63 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
    {
      *v97 = 134218496;
      v98 = buf;
      v99 = 2048;
      v100 = *(&buf + 1);
      v101 = 2048;
      v102 = v104;
      _os_log_debug_impl(&_mh_execute_header, v63, OS_LOG_TYPE_DEBUG, "#sp,AOA hypothesis alt1: az %f el %f unc %f", v97, 0x20u);
    }
  }

  v64 = sub_1004281F8(*(a1 + 90), 1, v54, v55, v56, v57, v58, v59);
  v79 = a9;
  v66 = 0.0;
  v80 = v12;
  if (v9)
  {
    v67 = 65537;
    if (v9 == 1)
    {
      LOWORD(v65) = *(a1 + 54);
      v66 = v65;
    }
  }

  else
  {
    v67 = *(a1 + 54) | 0x10000;
  }

  v68 = *(a1 + 91);
  v69 = *(a1 + 93);
  v70 = *(a1 + 95);
  v78 = *(a1 + 22);
  v71 = sub_10041C3B4(*(a1 + 25));
  *&v75 = v87;
  *(&v75 + 1) = *(&v88 + 1);
  *&v74 = v89;
  *(&v74 + 1) = *(&v88 + 1);
  *&v73 = v90;
  *(&v73 + 1) = *(&v88 + 1);
  *&v72 = v91;
  *(&v72 + 1) = *(&v88 + 1);
  sub_10041E100(v79, v80, v78, v93, *(a1 + 33), *(a1 + 35), &v109, 0, v71, *(a1 + 38), v40, v35, *(a1 + 50), v66, v23, &v94, v72, v73, v74, v88, v75, v83, v92, v82, *&v86, *(&v88 + 1), *&v85, *(&v88 + 1), *&v84, *(&v88 + 1), v64, v76, 0, 0, 0, 0, v68, v69, v70, v77, v81 | ((v81 != 0) << 8), v27, v27 != 0, v34, v34 != 0, v39, v39 != 0, v44, v44 != 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, v67, SHIDWORD(v67), 0);
  if (v94)
  {
    v95 = v94;
    operator delete(v94);
  }
}

void sub_10019966C(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 248);
  if (v3)
  {
    *(v1 - 240) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_100199694(uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v4 >= v5)
  {
    v10 = 0x6DB6DB6DB6DB6DB7 * ((v4 - *a1) >> 3);
    v11 = v10 + 1;
    if ((v10 + 1) > 0x492492492492492)
    {
      sub_100019B38();
    }

    v12 = 0x6DB6DB6DB6DB6DB7 * ((v5 - *a1) >> 3);
    if (2 * v12 > v11)
    {
      v11 = 2 * v12;
    }

    if (v12 >= 0x249249249249249)
    {
      v13 = 0x492492492492492;
    }

    else
    {
      v13 = v11;
    }

    if (v13)
    {
      sub_100020640(a1, v13);
    }

    v14 = 56 * v10;
    v15 = *a2;
    v16 = a2[1];
    v17 = a2[2];
    *(v14 + 48) = *(a2 + 6);
    *(v14 + 16) = v16;
    *(v14 + 32) = v17;
    *v14 = v15;
    v9 = 56 * v10 + 56;
    v18 = *(a1 + 8) - *a1;
    v19 = v14 - v18;
    memcpy((v14 - v18), *a1, v18);
    v20 = *a1;
    *a1 = v19;
    *(a1 + 8) = v9;
    *(a1 + 16) = 0;
    if (v20)
    {
      operator delete(v20);
    }
  }

  else
  {
    v6 = *a2;
    v7 = a2[1];
    v8 = a2[2];
    *(v4 + 48) = *(a2 + 6);
    *(v4 + 16) = v7;
    *(v4 + 32) = v8;
    *v4 = v6;
    v9 = v4 + 56;
  }

  *(a1 + 8) = v9;
}

void sub_1001997C4(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v9 = a2;
  v12 = sub_100427984(*(a1 + 20), a2, a3, a4, a5, a6, a7, a8);
  v20 = sub_100427658(*(a1 + 24), v13, v14, v15, v16, v17, v18, v19);
  v120 = *(a1 + 75);
  v21 = *(a1 + 64);
  v25 = sub_10041C3B4(v21);
  v26 = *(a1 + 56);
  v27 = v26 & 0xF;
  if ((v27 & (v26 >> 4)) == 0xF)
  {
    v102 = 0uLL;
    v104 = 0.0;
    v99 = 0.0;
    v100 = 0.0;
    v101 = 0.0;
    v103 = 0.0;
    v28 = 0.0;
    v29 = 0.0;
  }

  else
  {
    LOWORD(v22) = *(a1 + 84);
    LOWORD(v23) = *(a1 + 86);
    LOWORD(v24) = *(a1 + 88);
    v29 = *(a1 + 68);
    v28 = *(a1 + 69);
    v103 = *(a1 + 70);
    v104 = *(a1 + 58);
    *&v102 = *(a1 + 60);
    v101 = v22 * 0.01;
    v100 = v23 * 0.01;
    v99 = v24 * 0.01;
    *(&v102 + 1) = 1;
  }

  v95 = *(a1 + 46);
  v94 = *(a1 + 48);
  v93 = *(a1 + 99);
  v98 = *(a1 + 62);
  v97 = *(a1 + 83);
  v96 = *(a1 + 98);
  v105 = 0;
  v106 = 0;
  v107 = 0;
  if (v27 == 15)
  {
    v30 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      v31 = *(a1 + 42);
      v32 = *(a1 + 44);
      LODWORD(buf) = 67109632;
      DWORD1(buf) = v31;
      WORD4(buf) = 1024;
      *(&buf + 10) = v32;
      HIWORD(buf) = 1024;
      LODWORD(v115) = 15;
      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "#sp,Ignoring AOA hypothesis primary with az %d el %d intunc %d", &buf, 0x14u);
    }
  }

  else
  {
    v33 = v27 * 0.0666666667;
    v34 = *(a1 + 44);
    *&buf = *(a1 + 42);
    *(&buf + 1) = v34;
    v115 = v33;
    v116 = 0;
    v117 = 0;
    v118 = 0;
    v119 = 0;
    sub_100199694(&v105, &buf);
    v35 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
    {
      *v108 = 134218496;
      v109 = buf;
      v110 = 2048;
      v111 = *(&buf + 1);
      v112 = 2048;
      v113 = v115;
      _os_log_debug_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEBUG, "#sp,AOA hypothesis primary: az %f el %f unc %f", v108, 0x20u);
    }
  }

  v36 = v26 >> 4;
  if (v36 == 15)
  {
    v37 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      v38 = *(a1 + 71);
      v39 = *(a1 + 73);
      LODWORD(buf) = 67109632;
      DWORD1(buf) = v38;
      WORD4(buf) = 1024;
      *(&buf + 10) = v39;
      HIWORD(buf) = 1024;
      LODWORD(v115) = 15;
      _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "#sp,Ignoring AOA hypothesis alt1 with az %d el %d intunc %d", &buf, 0x14u);
    }
  }

  else
  {
    v40 = v36 * 0.0666666667;
    v41 = *(a1 + 73);
    *&buf = *(a1 + 71);
    *(&buf + 1) = v41;
    v115 = v40;
    v116 = 0;
    v117 = 0;
    v118 = 0;
    v119 = 0;
    sub_100199694(&v105, &buf);
    v42 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
    {
      *v108 = 134218496;
      v109 = buf;
      v110 = 2048;
      v111 = *(&buf + 1);
      v112 = 2048;
      v113 = v115;
      _os_log_debug_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEBUG, "#sp,AOA hypothesis alt1: az %f el %f unc %f", v108, 0x20u);
    }
  }

  v43 = sub_10042841C(*(a1 + 90));
  if ((v45 & 1) == 0)
  {
    __assert_rtn("convertToLibRoseType", "RoseRawMeasurement.cpp", 674, "channelBand.has_value()");
  }

  v46 = v43;
  if (v43)
  {
    if ((v43 & 0x1000000000000) != 0)
    {
      v89 = HIDWORD(v43) & 0xFF00;
      LOBYTE(v47) = 9;
      v85 = 0x10000;
      v86 = BYTE4(v43);
      goto LABEL_20;
    }

    v64 = "channelBand.value().uniiBandChannel.has_value()";
    v65 = 690;
LABEL_43:
    __assert_rtn("convertToLibRoseType", "RoseRawMeasurement.cpp", v65, v64);
  }

  if ((v43 & 0x10000) == 0)
  {
    v64 = "channelBand.value().uwbChannel.has_value()";
    v65 = 683;
    goto LABEL_43;
  }

  v85 = 0;
  v86 = 0;
  v89 = 0;
  v47 = v43 >> 8;
LABEL_20:
  v48 = 0.0;
  v90 = v28;
  if (v9)
  {
    v88 = 65537;
    if (v9 == 1)
    {
      LOWORD(v44) = *(a1 + 54);
      v48 = v44;
    }
  }

  else
  {
    v88 = *(a1 + 54) | 0x10000;
  }

  v49 = *(a1 + 92);
  v50 = *(a1 + 94);
  v51 = *(a1 + 24);
  v92 = v21;
  v91 = v29;
  v87 = *(a1 + 96);
  if (v51 != 27)
  {
    if (v51 == 26)
    {
      LOWORD(v84) = *(a1 + 101);
      WORD2(v84) = *(a1 + 102);
    }

    else
    {
      v84 = 0;
    }

    goto LABEL_32;
  }

  LOWORD(v84) = *(a1 + 101);
  WORD2(v84) = *(a1 + 102);
  v52 = sub_10042841C(*(a1 + 103));
  if ((v53 & 1) == 0)
  {
    v66 = "mmsChannelBand.has_value()";
    v67 = 735;
    goto LABEL_46;
  }

  if (v52)
  {
    v66 = "mmsChannelBand.value().band == Rose::BandSelect::UWB500MHz";
    v67 = 736;
LABEL_46:
    __assert_rtn("convertToLibRoseType", "RoseRawMeasurement.cpp", v67, v66);
  }

  if ((v52 & 0x10000) == 0)
  {
    sub_1000195BC();
  }

  v47 = v52 >> 8;
LABEL_32:
  v54 = *(a1 + 105);
  v83 = v12;
  v82 = a9;
  v81 = v20;
  v80 = v47;
  v79 = v49;
  v78 = v50;
  v76 = *(a1 + 108);
  v77 = *(a1 + 106);
  if (*(a1 + 116))
  {
    if ((v51 & 0xFE) != 0x1A)
    {
      __assert_rtn("convertToLibRoseType", "RoseRawMeasurement.cpp", 754, "isValidSessionTypeForMmsValStatus");
    }

    v55 = v46;
    v56 = *(a1 + 116) & 7;
    v57 = 256;
  }

  else
  {
    v55 = v46;
    v56 = 0;
    v57 = 0;
  }

  v58 = *(a1 + 110);
  v59 = *(a1 + 112);
  v60 = *(a1 + 114);
  v61 = *(a1 + 117);
  v62 = *(a1 + 118);
  v75 = *(a1 + 22);
  v63 = sub_10041C3B4(*(a1 + 25));
  *(&v74 + 1) = 1;
  *&v74 = vcvtd_n_f64_s32(v93, 2uLL);
  *(&v71 + 1) = *(&v102 + 1);
  *(&v70 + 1) = *(&v102 + 1);
  *&v71 = v104;
  *(&v69 + 1) = *(&v102 + 1);
  *&v70 = v103;
  *(&v68 + 1) = *(&v102 + 1);
  *&v69 = v90;
  *&v68 = v91;
  sub_10041E100(v82, v83, v75, v81, *(a1 + 33), *(a1 + 35), &v120, 0, v63, *(a1 + 38), vcvtd_n_f64_s32(v95, 2uLL), vcvtd_n_f64_s32(v94, 2uLL), *(a1 + 50), v48, v25, &v105, v68, v69, v70, v71, v102, v98, v92, v97, *&v101, *(&v102 + 1), *&v100, *(&v102 + 1), *&v99, *(&v102 + 1), v80, v72, v55 | 0x100, (v55 | 0x100uLL) >> 32, v86 | v85 | v89, (v86 | v85 | v89) >> 32, v79, v78, v87, v73, v96 | ((v96 != 0) << 8), 0, 0, 0, 0, 0, 0, 0, 0, v74, v84 | 0x100, 0, WORD2(v84) | 0x100, 0, v54 | 0x100, (v54 | 0x100uLL) >> 32, v77 | 0x10000, (v77 | 0x10000uLL) >> 32, v76 | 0x10000, (v76 | 0x10000uLL) >> 32, v88, SHIDWORD(v88), v57 | v56);
  if (v105)
  {
    v106 = v105;
    operator delete(v105);
  }
}

void sub_100199FA0(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 232);
  if (v3)
  {
    *(v1 - 224) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100199FD4(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_10019A05C(result, a4);
  }

  return result;
}

void sub_10019A03C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_10019A240(&a9);
  _Unwind_Resume(a1);
}

void sub_10019A05C(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    sub_10019A0A8(a1, a2);
  }

  sub_100019B38();
}

void sub_10019A0A8(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_100013B04();
}

char *sub_10019A100(uint64_t a1, __int128 *a2, __int128 *a3, char *__dst)
{
  v4 = __dst;
  v11 = __dst;
  v12 = __dst;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  v10 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      if (*(v6 + 23) < 0)
      {
        sub_1000056BC(v4, *v6, *(v6 + 1));
        v4 = v12;
      }

      else
      {
        v7 = *v6;
        *(v4 + 2) = *(v6 + 2);
        *v4 = v7;
      }

      v6 = (v6 + 24);
      v4 += 24;
      v12 = v4;
    }

    while (v6 != a3);
  }

  v10 = 1;
  sub_10019A1C0(v9);
  return v4;
}

uint64_t sub_10019A1C0(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_10019A1F8(a1);
  }

  return a1;
}

void sub_10019A1F8(uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    v3 = *(v1 - 1);
    v1 -= 3;
    if (v3 < 0)
    {
      operator delete(*v1);
    }
  }
}

void sub_10019A240(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_10019A294(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_10019A294(void ***a1)
{
  v2 = *a1;
  v3 = a1[1];
  while (v3 != v2)
  {
    v4 = *(v3 - 1);
    v3 -= 3;
    if (v4 < 0)
    {
      operator delete(*v3);
    }
  }

  a1[1] = v2;
}

uint64_t sub_10019A2E4()
{
  sub_10041C9CC();
  v0 = std::string::insert(&v37, 0, "reverseLUT_A");
  v1 = *&v0->__r_.__value_.__l.__data_;
  v38.__r_.__value_.__r.__words[2] = v0->__r_.__value_.__r.__words[2];
  *&v38.__r_.__value_.__l.__data_ = v1;
  v0->__r_.__value_.__l.__size_ = 0;
  v0->__r_.__value_.__r.__words[2] = 0;
  v0->__r_.__value_.__r.__words[0] = 0;
  v2 = std::string::append(&v38, ".bin");
  v3 = *&v2->__r_.__value_.__l.__data_;
  qword_1009EEC90 = v2->__r_.__value_.__r.__words[2];
  xmmword_1009EEC80 = v3;
  v2->__r_.__value_.__l.__size_ = 0;
  v2->__r_.__value_.__r.__words[2] = 0;
  v2->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  __cxa_atexit(&std::string::~string, &xmmword_1009EEC80, &_mh_execute_header);
  sub_10041C9CC();
  v4 = std::string::insert(&v37, 0, "reverseLUT_A");
  v5 = *&v4->__r_.__value_.__l.__data_;
  v38.__r_.__value_.__r.__words[2] = v4->__r_.__value_.__r.__words[2];
  *&v38.__r_.__value_.__l.__data_ = v5;
  v4->__r_.__value_.__l.__size_ = 0;
  v4->__r_.__value_.__r.__words[2] = 0;
  v4->__r_.__value_.__r.__words[0] = 0;
  v6 = std::string::append(&v38, ".bin");
  v7 = *&v6->__r_.__value_.__l.__data_;
  qword_1009EECA8 = v6->__r_.__value_.__r.__words[2];
  xmmword_1009EEC98 = v7;
  v6->__r_.__value_.__l.__size_ = 0;
  v6->__r_.__value_.__r.__words[2] = 0;
  v6->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  __cxa_atexit(&std::string::~string, &xmmword_1009EEC98, &_mh_execute_header);
  sub_10041C9CC();
  v8 = std::string::insert(&v37, 0, "reverseLUT_A");
  v9 = *&v8->__r_.__value_.__l.__data_;
  v38.__r_.__value_.__r.__words[2] = v8->__r_.__value_.__r.__words[2];
  *&v38.__r_.__value_.__l.__data_ = v9;
  v8->__r_.__value_.__l.__size_ = 0;
  v8->__r_.__value_.__r.__words[2] = 0;
  v8->__r_.__value_.__r.__words[0] = 0;
  v10 = std::string::append(&v38, ".bin");
  v11 = *&v10->__r_.__value_.__l.__data_;
  qword_1009EECC0 = v10->__r_.__value_.__r.__words[2];
  xmmword_1009EECB0 = v11;
  v10->__r_.__value_.__l.__size_ = 0;
  v10->__r_.__value_.__r.__words[2] = 0;
  v10->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  __cxa_atexit(&std::string::~string, &xmmword_1009EECB0, &_mh_execute_header);
  sub_10041C9CC();
  v12 = std::string::insert(&v37, 0, "reverseLUT_A");
  v13 = *&v12->__r_.__value_.__l.__data_;
  v38.__r_.__value_.__r.__words[2] = v12->__r_.__value_.__r.__words[2];
  *&v38.__r_.__value_.__l.__data_ = v13;
  v12->__r_.__value_.__l.__size_ = 0;
  v12->__r_.__value_.__r.__words[2] = 0;
  v12->__r_.__value_.__r.__words[0] = 0;
  v14 = std::string::append(&v38, ".bin");
  v15 = *&v14->__r_.__value_.__l.__data_;
  qword_1009EECD8 = v14->__r_.__value_.__r.__words[2];
  xmmword_1009EECC8 = v15;
  v14->__r_.__value_.__l.__size_ = 0;
  v14->__r_.__value_.__r.__words[2] = 0;
  v14->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  __cxa_atexit(&std::string::~string, &xmmword_1009EECC8, &_mh_execute_header);
  sub_10041C9CC();
  v16 = std::string::insert(&v37, 0, "reverseLUT_A");
  v17 = *&v16->__r_.__value_.__l.__data_;
  v38.__r_.__value_.__r.__words[2] = v16->__r_.__value_.__r.__words[2];
  *&v38.__r_.__value_.__l.__data_ = v17;
  v16->__r_.__value_.__l.__size_ = 0;
  v16->__r_.__value_.__r.__words[2] = 0;
  v16->__r_.__value_.__r.__words[0] = 0;
  v18 = std::string::append(&v38, ".bin");
  v19 = *&v18->__r_.__value_.__l.__data_;
  qword_1009EECF0 = v18->__r_.__value_.__r.__words[2];
  xmmword_1009EECE0 = v19;
  v18->__r_.__value_.__l.__size_ = 0;
  v18->__r_.__value_.__r.__words[2] = 0;
  v18->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  __cxa_atexit(&std::string::~string, &xmmword_1009EECE0, &_mh_execute_header);
  sub_10041C9CC();
  v20 = std::string::insert(&v37, 0, "reverseLUT_A");
  v21 = *&v20->__r_.__value_.__l.__data_;
  v38.__r_.__value_.__r.__words[2] = v20->__r_.__value_.__r.__words[2];
  *&v38.__r_.__value_.__l.__data_ = v21;
  v20->__r_.__value_.__l.__size_ = 0;
  v20->__r_.__value_.__r.__words[2] = 0;
  v20->__r_.__value_.__r.__words[0] = 0;
  v22 = std::string::append(&v38, ".bin");
  v23 = *&v22->__r_.__value_.__l.__data_;
  qword_1009EED08 = v22->__r_.__value_.__r.__words[2];
  xmmword_1009EECF8 = v23;
  v22->__r_.__value_.__l.__size_ = 0;
  v22->__r_.__value_.__r.__words[2] = 0;
  v22->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  __cxa_atexit(&std::string::~string, &xmmword_1009EECF8, &_mh_execute_header);
  sub_10041C9CC();
  v24 = std::string::insert(&v37, 0, "reverseLUT_A");
  v25 = *&v24->__r_.__value_.__l.__data_;
  v38.__r_.__value_.__r.__words[2] = v24->__r_.__value_.__r.__words[2];
  *&v38.__r_.__value_.__l.__data_ = v25;
  v24->__r_.__value_.__l.__size_ = 0;
  v24->__r_.__value_.__r.__words[2] = 0;
  v24->__r_.__value_.__r.__words[0] = 0;
  v26 = std::string::append(&v38, ".bin");
  v27 = *&v26->__r_.__value_.__l.__data_;
  qword_1009EED20 = v26->__r_.__value_.__r.__words[2];
  xmmword_1009EED10 = v27;
  v26->__r_.__value_.__l.__size_ = 0;
  v26->__r_.__value_.__r.__words[2] = 0;
  v26->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  __cxa_atexit(&std::string::~string, &xmmword_1009EED10, &_mh_execute_header);
  sub_10041C9CC();
  v28 = std::string::insert(&v37, 0, "reverseLUT_A");
  v29 = *&v28->__r_.__value_.__l.__data_;
  v38.__r_.__value_.__r.__words[2] = v28->__r_.__value_.__r.__words[2];
  *&v38.__r_.__value_.__l.__data_ = v29;
  v28->__r_.__value_.__l.__size_ = 0;
  v28->__r_.__value_.__r.__words[2] = 0;
  v28->__r_.__value_.__r.__words[0] = 0;
  v30 = std::string::append(&v38, ".bin");
  v31 = *&v30->__r_.__value_.__l.__data_;
  qword_1009EED38 = v30->__r_.__value_.__r.__words[2];
  xmmword_1009EED28 = v31;
  v30->__r_.__value_.__l.__size_ = 0;
  v30->__r_.__value_.__r.__words[2] = 0;
  v30->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  __cxa_atexit(&std::string::~string, &xmmword_1009EED28, &_mh_execute_header);
  sub_10041C9CC();
  v32 = std::string::insert(&v37, 0, "reverseLUT_A");
  v33 = *&v32->__r_.__value_.__l.__data_;
  v38.__r_.__value_.__r.__words[2] = v32->__r_.__value_.__r.__words[2];
  *&v38.__r_.__value_.__l.__data_ = v33;
  v32->__r_.__value_.__l.__size_ = 0;
  v32->__r_.__value_.__r.__words[2] = 0;
  v32->__r_.__value_.__r.__words[0] = 0;
  v34 = std::string::append(&v38, ".bin");
  v35 = *&v34->__r_.__value_.__l.__data_;
  qword_1009EED50 = v34->__r_.__value_.__r.__words[2];
  xmmword_1009EED40 = v35;
  v34->__r_.__value_.__l.__size_ = 0;
  v34->__r_.__value_.__r.__words[2] = 0;
  v34->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  return __cxa_atexit(&std::string::~string, &xmmword_1009EED40, &_mh_execute_header);
}

void sub_10019A914(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

uint64_t sub_10019A9D8(uint64_t a1, int a2, int a3, __int128 *a4, int a5, char a6, int a7, int a8, void *__src)
{
  *a1 = 0;
  *(a1 + 1) = a2;
  *(a1 + 4) = a3;
  v12 = *a4;
  v13 = a4[1];
  *(a1 + 36) = *(a4 + 28);
  *(a1 + 24) = v13;
  *(a1 + 8) = v12;
  *(a1 + 52) = a6;
  *(a1 + 56) = a5;
  *(a1 + 60) = a7;
  *(a1 + 64) = a8;
  *(a1 + 68) = 0;
  *(a1 + 72) = -1;
  *(a1 + 80) = -1;
  *(a1 + 82) = 0;
  *(a1 + 83) = -1;
  *(a1 + 91) = 0;
  memcpy((a1 + 96), __src, 0x1E0uLL);
  if (a2 == 100)
  {
    sub_1004A15AC();
  }

  if (!a3)
  {
    sub_1004A1580();
  }

  if ((*(a1 + 153) & 1) != 0 || (*(a1 + 207) & 1) != 0 || (*(a1 + 209) & 1) != 0 || (*(a1 + 353) & 1) != 0 || *(a1 + 449) == 1)
  {
    *a1 = 1;
    sub_10019AAB0(a1);
  }

  return a1;
}

void sub_10019AAB0(uint64_t a1)
{
  v2 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "RoseServiceRequest::assignChannelDiversitySettings", buf, 2u);
  }

  v3 = *(a1 + 207);
  if (*(a1 + 209))
  {
    if ((*(a1 + 207) & 1) == 0)
    {
      goto LABEL_15;
    }

    v4 = *(a1 + 64);
    if (v4 && *(a1 + 206) != *(a1 + 208))
    {
      if (v4 != 1)
      {
        if (v4 == 2)
        {
          v5 = qword_1009F9820;
          if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
          {
            *v10 = 0;
            _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "RoseServiceRequest::assignChannelDiversitySettings - Channel diversity preference RoundRobin_P2S", v10, 2u);
          }

          if (*(a1 + 120) == 1)
          {
            *(a1 + 118) |= 4u;
          }

          else
          {
            *(a1 + 118) = 4;
            *(a1 + 120) = 1;
          }
        }

        return;
      }

      v6 = qword_1009F9820;
      if (!os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        return;
      }

      v9 = 0;
      v7 = "RoseServiceRequest::assignChannelDiversitySettings - Channel diversity preference RoundRobin";
      v8 = &v9;
LABEL_19:
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, v7, v8, 2u);
      return;
    }
  }

  else if ((*(a1 + 207) & 1) == 0)
  {
    goto LABEL_15;
  }

  *(a1 + 208) = *(a1 + 206);
LABEL_15:
  if ((*(a1 + 211) & 1) == 0)
  {
    *(a1 + 211) = 1;
  }

  *(a1 + 210) = 0;
  v6 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    *v11 = 0;
    v7 = "RoseServiceRequest::assignChannelDiversitySettings - channelDiversityPrecondition is false";
    v8 = v11;
    goto LABEL_19;
  }
}

uint64_t sub_10019AC60(uint64_t a1)
{
  if ((*a1 & 1) == 0)
  {
    sub_1004A15D8();
  }

  v9 = 0;
  v1 = *(a1 + 4);
  if ((v1 - 5) < 2)
  {
    if ((*(a1 + 353) & 1) == 0)
    {
      sub_1004A1630();
    }

    v4 = *(a1 + 352);
  }

  else
  {
    if (v1 != 9)
    {
      if (v1 == 4)
      {
        if (*(a1 + 153) == 1)
        {
          sub_1004A165C();
        }

        if (*(a1 + 207) != 1)
        {
          goto LABEL_22;
        }

        v2 = *(a1 + 206);
        if (v2 == 5)
        {
          v3 = (&v9 + 1);
        }

        else
        {
          if (v2 != 9)
          {
LABEL_22:
            if (*(a1 + 209) != 1)
            {
              return HIBYTE(v9) | (v9 << 8);
            }

            v4 = *(a1 + 208);
            goto LABEL_24;
          }

          v3 = &v9;
        }

        *v3 = 1;
        goto LABEL_22;
      }

      if (*(a1 + 207) == 1)
      {
        sub_1004A16B4();
      }

      if (*(a1 + 209) == 1)
      {
        sub_1004A1688();
      }

      if (*(a1 + 153) == 1)
      {
        v5 = *(a1 + 152);
        if (v5 == 5)
        {
          v6 = (&v9 + 1);
          goto LABEL_31;
        }

        if (v5 == 9)
        {
          v6 = &v9;
LABEL_31:
          *v6 = 1;
        }
      }

      if (v1 == 1 && *(a1 + 120) == 1 && (*(a1 + 118) & 4) != 0)
      {
        v9 = 257;
      }

      return HIBYTE(v9) | (v9 << 8);
    }

    if ((*(a1 + 449) & 1) == 0)
    {
      sub_1004A1604();
    }

    v4 = *(a1 + 448);
  }

LABEL_24:
  if (v4 == 5)
  {
    v7 = (&v9 + 1);
    goto LABEL_28;
  }

  if (v4 == 9)
  {
    v7 = &v9;
LABEL_28:
    *v7 = 1;
  }

  return HIBYTE(v9) | (v9 << 8);
}

uint64_t sub_10019ADD8(uint64_t a1)
{
  sub_100193120(v17);
  sub_10000EA44(&v18, "[Role]: ", 8);
  v2 = *(a1 + 1);
  if (v2 == 100)
  {
    v3 = "Unspecified";
  }

  else if (v2 == 1)
  {
    v3 = "Responder";
  }

  else
  {
    v3 = "Initiator";
  }

  sub_100004A08(&__p, v3);
  if ((v16 & 0x80u) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  if ((v16 & 0x80u) == 0)
  {
    v5 = v16;
  }

  else
  {
    v5 = v15;
  }

  sub_10000EA44(&v18, p_p, v5);
  if (v16 < 0)
  {
    operator delete(__p);
  }

  sub_10000EA44(&v18, ", [UseCase]: ", 13);
  sub_10019A988(*(a1 + 156), &__p);
  if ((v16 & 0x80u) == 0)
  {
    v6 = &__p;
  }

  else
  {
    v6 = __p;
  }

  if ((v16 & 0x80u) == 0)
  {
    v7 = v16;
  }

  else
  {
    v7 = v15;
  }

  sub_10000EA44(&v18, v6, v7);
  if (v16 < 0)
  {
    operator delete(__p);
  }

  sub_10000EA44(&v18, ", [MacMode]: ", 13);
  sub_10019A99C(*(a1 + 4), &__p);
  if ((v16 & 0x80u) == 0)
  {
    v8 = &__p;
  }

  else
  {
    v8 = __p;
  }

  if ((v16 & 0x80u) == 0)
  {
    v9 = v16;
  }

  else
  {
    v9 = v15;
  }

  v10 = sub_10000EA44(&v18, v8, v9);
  std::ios_base::getloc((v10 + *(*v10 - 24)));
  v11 = std::locale::use_facet(&v22, &std::ctype<char>::id);
  (v11->__vftable[2].~facet_0)(v11, 10);
  std::locale::~locale(&v22);
  std::ostream::put();
  std::ostream::flush();
  if (v16 < 0)
  {
    operator delete(__p);
  }

  std::stringbuf::str();
  v18 = v12;
  if (v21 < 0)
  {
    operator delete(v20[7].__locale_);
  }

  std::locale::~locale(v20);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_10019B104(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  std::ios::~ios();
  _Unwind_Resume(a1);
}

void sub_10019B230(char *a1@<X0>, uint64_t a2@<X8>)
{
  v10 = xmmword_100562F40;
  if ((atomic_load_explicit(&qword_1009EF730, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1009EF730))
  {
    sub_100182654(&__src);
    v7 = std::random_device::operator()(&__src);
    dword_1009EED68[0] = v7;
    for (i = 1; i != 624; ++i)
    {
      v7 = i + 1812433253 * (v7 ^ (v7 >> 30));
      dword_1009EED68[i] = v7;
    }

    qword_1009EF728 = 0;
    std::random_device::~random_device(&__src);
    __cxa_guard_release(&qword_1009EF730);
  }

  if ((atomic_load_explicit(&qword_1009EF738, memory_order_acquire) & 1) == 0)
  {
    sub_1004A16E0();
  }

  std::mutex::lock(&stru_1009EA930);
  v4 = word_100562FB6[sub_1001826C8(&v10, dword_1009EED68, &v10)];
  v5 = *(sub_1000054A8() + 144);
  if (*a1 == 5)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  sub_1001A6460(v9, v5, v6, 0, 1);
  sub_1001A67E0(v9, 0);
  LOWORD(__src.__padding_) = 256;
  BYTE2(__src.__padding_) = sub_1001A6BA4(v9);
  HIBYTE(__src.__padding_) = 1;
  v14 = sub_1001A6BAC(v9);
  v15 = 1;
  v16 = sub_1001A6BB4(v9);
  v17 = 151062785;
  v18 = 1;
  v19 = 0;
  v20 = 1;
  v21 = 0;
  v22 = 201395201;
  v23 = 1;
  v24 = 2;
  v25 = 1;
  v26 = 0;
  v27 = 0;
  v28 = 0;
  v29 = 0;
  v30 = *a1;
  v31 = 1;
  v32 = 1;
  v33 = 0;
  v34 = sub_1001A6BBC(v9);
  v35 = 1;
  v36 = sub_1001A6BC4(v9);
  v37 = 1;
  v38 = sub_1001A6BCC(v9);
  v39 = 1;
  v40 = 0;
  v41 = 1;
  v42 = 0;
  v43 = 0;
  v44 = 0;
  v45 = 0;
  v46 = v4;
  v47 = 1;
  v48 = v4;
  v49 = 1;
  v50 = 17891601;
  v53 = 0;
  v54 = 0;
  v55 = 0;
  v56 = 0;
  v57 = 0;
  v58 = 0;
  v59 = 0;
  v60 = 0;
  v61 = 0;
  v64 = 0;
  v67 = 0;
  v68 = 0;
  v69 = 0;
  v72 = 0;
  v73 = 0;
  v74 = 0;
  v78 = 0;
  v80 = 0;
  v81 = 0;
  v82 = 0;
  v83 = 0;
  v84 = 0;
  v85 = 0;
  v86 = 0;
  v87 = 0;
  v88 = 0;
  v89 = 0;
  v90 = 0;
  v91 = 0;
  v92 = 0;
  v93 = 0;
  v94 = 0;
  v99 = 0;
  v101 = 0;
  v102 = 0;
  v103 = 0;
  v104 = 0;
  v105 = 0;
  v106 = 0;
  v107 = 0;
  v109 = 0;
  v114 = 0;
  v115 = 0;
  v116 = 0;
  v117 = 0;
  v118 = 0;
  v119 = 0;
  v121 = 0;
  v124 = 0;
  v52 = 0;
  v51 = 0;
  v62 = 0;
  v63 = 0;
  v65 = 0;
  v66 = 0;
  v70 = 0;
  v71 = 0;
  v75 = 0;
  v76 = 0;
  v77 = 0;
  *(v79 + 3) = 0;
  v79[0] = 0;
  v95 = 0;
  v96 = 0;
  v97 = 0;
  v98 = 0;
  *(v100 + 3) = 0;
  v100[0] = 0;
  *(v108 + 3) = 0;
  v108[0] = 0;
  v111 = 0;
  v110 = 0;
  v112 = 0;
  v113 = 0;
  *(v120 + 3) = 0;
  v120[0] = 0;
  v123 = 0;
  v122 = 0;
  v126 = 0;
  v125 = 0;
  v127 = 0;
  LOBYTE(v11) = 0;
  v12 = 0;
  sub_10019AC54(a2, 0, 1, &v11, 4, 0, 3, 0, &__src);
  std::mutex::unlock(&stru_1009EA930);
}

void sub_10019B644(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, std::random_device a22)
{
  std::random_device::~random_device(&a22);
  __cxa_guard_abort(&qword_1009EF730);
  _Unwind_Resume(a1);
}

uint64_t sub_10019B6AC@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(sub_1000054A8() + 144);
  if (*a1 == 5)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  sub_1001A6460(v7, v4, v5, 0, 1);
  sub_1001A681C(v7, 0);
  __src = 257;
  v11 = sub_1001A6BA4(v7);
  v12 = 1;
  v13 = sub_1001A6BAC(v7);
  v14 = 1;
  v15 = sub_1001A6BB4(v7);
  v16 = 151062785;
  v17 = 1;
  v18 = 0;
  v19 = 1;
  v20 = 0;
  v21 = 201395201;
  v22 = 1;
  v23 = 3;
  v24 = 1;
  v25 = 0;
  v26 = 0;
  v27 = 0;
  v28 = 0;
  v29 = *a1;
  v30 = 1;
  v31 = 1;
  v32 = 0;
  v33 = sub_1001A6BBC(v7);
  v34 = 1;
  v35 = sub_1001A6BC4(v7);
  v36 = 1;
  v37 = sub_1001A6BCC(v7);
  v38 = 1;
  v39 = 0;
  v40 = 1;
  v41 = 0;
  v42 = 0;
  v43 = 0;
  v44 = 0;
  v45 = 75;
  v46 = 1;
  v47 = 1000;
  v48 = 1;
  v49 = 18874625;
  v52 = 0;
  v53 = 0;
  v54 = 0;
  v55 = 0;
  v56 = 0;
  v57 = 0;
  v58 = 0;
  v59 = 0;
  v60 = 0;
  v63 = 0;
  v66 = 0;
  v67 = 0;
  v68 = 0;
  v71 = 0;
  v72 = 0;
  v73 = 0;
  v77 = 0;
  v79 = 0;
  v80 = 0;
  v81 = 0;
  v82 = 0;
  v83 = 0;
  v84 = 0;
  v85 = 0;
  v86 = 0;
  v87 = 0;
  v88 = 0;
  v89 = 0;
  v90 = 0;
  v91 = 0;
  v92 = 0;
  v93 = 0;
  v98 = 0;
  v100 = 0;
  v101 = 0;
  v102 = 0;
  v103 = 0;
  v104 = 0;
  v105 = 0;
  v106 = 0;
  v108 = 0;
  v113 = 0;
  v114 = 0;
  v115 = 0;
  v116 = 0;
  v117 = 0;
  v118 = 0;
  v120 = 0;
  v123 = 0;
  v51 = 0;
  v50 = 0;
  v61 = 0;
  v62 = 0;
  v64 = 0;
  v65 = 0;
  v69 = 0;
  v70 = 0;
  v74 = 0;
  v75 = 0;
  v76 = 0;
  *(v78 + 3) = 0;
  v78[0] = 0;
  v94 = 0;
  v95 = 0;
  v96 = 0;
  v97 = 0;
  *(v99 + 3) = 0;
  v99[0] = 0;
  *(v107 + 3) = 0;
  v107[0] = 0;
  v110 = 0;
  v109 = 0;
  v111 = 0;
  v112 = 0;
  *(v119 + 3) = 0;
  v119[0] = 0;
  v122 = 0;
  v121 = 0;
  v125 = 0;
  v124 = 0;
  v126 = 0;
  LOBYTE(v8) = 0;
  v9 = 0;
  return sub_10019AC54(a2, 1, 1, &v8, 1, 0, 1, 0, &__src);
}

void sub_10019B9DC(char *a1@<X0>, uint64_t a2@<X8>)
{
  v16 = xmmword_100562F50;
  v17 = xmmword_100562F50;
  v15 = xmmword_100562F60;
  if ((atomic_load_explicit(&qword_1009F0108, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1009F0108))
  {
    sub_100182654(&__src);
    v12 = std::random_device::operator()(&__src);
    dword_1009EF740[0] = v12;
    for (i = 1; i != 624; ++i)
    {
      v12 = i + 1812433253 * (v12 ^ (v12 >> 30));
      dword_1009EF740[i] = v12;
    }

    qword_1009F0100 = 0;
    std::random_device::~random_device(&__src);
    __cxa_guard_release(&qword_1009F0108);
  }

  if ((atomic_load_explicit(&qword_1009F0110, memory_order_acquire) & 1) == 0)
  {
    sub_1004A1724();
  }

  std::mutex::lock(&stru_1009EA970);
  v4 = *(sub_1000054A8() + 144);
  if (*a1 == 5)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  sub_1001A6460(v14, v4, v5, 0, 1);
  sub_1001A6858(v14, 1);
  if ((atomic_load_explicit(&qword_1009F0120, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1009F0120))
  {
    word_1009F0118 = sub_1001A6B50(v14);
    __cxa_guard_release(&qword_1009F0120);
  }

  LOWORD(__src.__padding_) = 257;
  BYTE2(__src.__padding_) = sub_1001A6BA4(v14);
  HIBYTE(__src.__padding_) = 1;
  v25 = sub_1001A6BAC(v14);
  v26 = 1;
  v27 = sub_1001A6BB4(v14);
  v28 = 2561;
  v29 = 1;
  v30 = *(&aGhijlmnoqrstvw[14] + sub_1001826C8(&v15, dword_1009EF740, &v15));
  v31 = 1;
  v32 = 1024;
  v33 = 1;
  v34 = 1024;
  v35 = 65537;
  v36 = 1;
  v37 = 3;
  v38 = 1;
  v39 = 0;
  v40 = 0;
  v41 = 0;
  v42 = 0;
  v43 = *a1;
  v44 = 1;
  v45 = 4;
  v46 = 256;
  v47 = sub_1001A6BBC(v14);
  v48 = 1;
  v49 = sub_1001A6BC4(v14);
  v50 = 1;
  v51 = sub_1001A6BCC(v14);
  v52 = 1;
  v53 = word_1009F0118;
  v54 = 1;
  if (a1[17] == 1)
  {
    v6 = sub_1001826C8(&v16, dword_1009EF740, &v16);
    v7 = aGhijlmnoqrstvw;
  }

  else
  {
    v6 = sub_1001826C8(&v17, dword_1009EF740, &v17);
    v7 = a345689Bc;
  }

  v55 = v7[v6];
  v56 = 1;
  v57 = 0;
  v58 = 0;
  v59 = 0;
  v60 = 0;
  v61 = 0;
  v62 = 0;
  v63[14] = 0;
  v64 = 0;
  v65 = 0;
  v66 = 0;
  v67 = 0;
  v68 = 0;
  v69 = 0;
  v70 = 0;
  v71 = 0;
  v74 = 0;
  v77 = 0;
  v78 = 0;
  v79 = 0;
  v82 = 0;
  v83 = 0;
  v84 = 0;
  v88 = 0;
  v90 = 0;
  v91 = 0;
  v92 = 0;
  v93 = 0;
  v94 = 0;
  v95 = 0;
  v96 = 0;
  v97 = 0;
  v98 = 0;
  v99 = 0;
  v100 = 0;
  v101 = 0;
  v102 = 0;
  v103 = 0;
  v104 = 0;
  v109 = 0;
  v111 = 0;
  v112 = 0;
  v113 = 0;
  v114 = 0;
  v115 = 0;
  v116 = 0;
  v117 = 0;
  v119 = 0;
  v124 = 0;
  v125 = 0;
  v126 = 0;
  v127 = 0;
  v128 = 0;
  v129 = 0;
  v131 = 0;
  v134 = 0;
  memset(v63, 0, 13);
  v72 = 0;
  v73 = 0;
  v75 = 0;
  v76 = 0;
  v80 = 0;
  v81 = 0;
  v85 = 0;
  v86 = 0;
  v87 = 0;
  *(v89 + 3) = 0;
  v89[0] = 0;
  v105 = 0;
  v106 = 0;
  v107 = 0;
  v108 = 0;
  *(v110 + 3) = 0;
  v110[0] = 0;
  *(v118 + 3) = 0;
  v118[0] = 0;
  v121 = 0;
  v120 = 0;
  v122 = 0;
  v123 = 0;
  *(v130 + 3) = 0;
  v130[0] = 0;
  v133 = 0;
  v132 = 0;
  v136 = 0;
  v135 = 0;
  v137 = 0;
  v8 = *(a1 + 1);
  v9 = *(v8 + 16);
  v21 = *v8;
  v22 = v9;
  v23 = *(v8 + 32);
  v10 = a1[16];
  v18[0] = v21;
  v18[1] = v9;
  v19 = v23;
  if (v10)
  {
    v11 = 5;
  }

  else
  {
    v11 = 1;
  }

  v20 = 1;
  sub_10019AC54(a2, 1, 2, v18, v11, 0, 3, 0, &__src);
  std::mutex::unlock(&stru_1009EA970);
}

void sub_10019BEC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, std::random_device a30)
{
  __cxa_guard_abort(&qword_1009F0120);
  std::mutex::unlock(&stru_1009EA970);
  _Unwind_Resume(a1);
}

uint64_t sub_10019BF40@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(sub_1000054A8() + 144);
  if (*a1 == 5)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  sub_1001A6460(v9, v4, v5, 0, 1);
  sub_1001A6664(v9, 0, 1);
  __src = 256;
  v17 = sub_1001A6BA4(v9);
  v18 = 1;
  v19 = sub_1001A6BAC(v9);
  v20 = 1;
  v21 = sub_1001A6BB4(v9);
  v22 = 184617729;
  v23 = 1;
  v24 = 0;
  v25 = 1;
  v26 = 0;
  v27 = 65537;
  v28 = 1;
  v29 = 2;
  v30 = 1;
  v31 = 0;
  v32 = 0;
  v33 = 0;
  v34 = 0;
  v35 = *a1;
  v36 = 1;
  v37 = 0;
  v38 = 257;
  v39 = sub_1001A6BBC(v9);
  v40 = 1;
  v41 = sub_1001A6BC4(v9);
  v42 = 1;
  v43 = sub_1001A6BCC(v9);
  v44 = 1;
  v45 = 0;
  v46 = 1;
  v47 = 50;
  v48 = 1;
  v49 = 0;
  v50 = 0;
  v51 = 0;
  v52 = 0;
  v53 = 0;
  v54 = 0;
  v55[14] = 0;
  v56 = 0;
  v57 = 0;
  v58 = 0;
  v59 = 0;
  v60 = 0;
  v61 = 0;
  v62 = 0;
  v63 = 0;
  v66 = 0;
  v69 = 0;
  v70 = 0;
  v71 = 0;
  v74 = 0;
  v75 = 0;
  v76 = 0;
  v80 = 0;
  v82 = 0;
  v83 = 0;
  v84 = 0;
  v85 = 0;
  v86 = 0;
  v87 = 0;
  v88 = 0;
  v89 = 0;
  v90 = 0;
  v91 = 0;
  v92 = 0;
  v93 = 0;
  v94 = 0;
  v95 = 0;
  v96 = 0;
  v101 = 0;
  v103 = 0;
  v104 = 0;
  v105 = 0;
  v106 = 0;
  v107 = 0;
  v108 = 0;
  v109 = 0;
  v111 = 0;
  v116 = 0;
  v117 = 0;
  v118 = 0;
  v119 = 0;
  v120 = 0;
  v121 = 0;
  v123 = 0;
  v126 = 0;
  memset(v55, 0, 13);
  v64 = 0;
  v65 = 0;
  v67 = 0;
  v68 = 0;
  v72 = 0;
  v73 = 0;
  v77 = 0;
  v78 = 0;
  v79 = 0;
  *(v81 + 3) = 0;
  v81[0] = 0;
  v97 = 0;
  v98 = 0;
  v99 = 0;
  v100 = 0;
  *(v102 + 3) = 0;
  v102[0] = 0;
  *(v110 + 3) = 0;
  v110[0] = 0;
  v113 = 0;
  v112 = 0;
  v114 = 0;
  v115 = 0;
  *(v122 + 3) = 0;
  v122[0] = 0;
  v125 = 0;
  v124 = 0;
  v128 = 0;
  v127 = 0;
  v129 = 0;
  v6 = *(a1 + 1);
  v7 = *(v6 + 16);
  v13 = *v6;
  v14 = v7;
  v15 = *(v6 + 32);
  v10[0] = v13;
  v10[1] = v7;
  v11 = v15;
  v12 = 1;
  return sub_10019AC54(a2, 0, 2, v10, 1, 0, 3, 0, &__src);
}

uint64_t sub_10019C27C@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(sub_1000054A8() + 144);
  if (*a1 == 5)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  sub_1001A6460(v9, v4, v5, 0, 1);
  sub_1001A67A8(v9, 0, 1);
  __src = 257;
  v17 = sub_1001A6BA4(v9);
  v18 = 1;
  v19 = sub_1001A6BAC(v9);
  v20 = 1;
  v21 = sub_1001A6BB4(v9);
  v22 = 184617729;
  v23 = 1;
  v24 = 0;
  v25 = 1;
  v26 = 0;
  v27 = 65537;
  v28 = 1;
  v29 = 2;
  v30 = 1;
  v31 = 0;
  v32 = 0;
  v33 = 0;
  v34 = 0;
  v35 = *a1;
  v36 = 1;
  v37 = 0;
  v38 = 257;
  v39 = sub_1001A6BBC(v9);
  v40 = 1;
  v41 = sub_1001A6BC4(v9);
  v42 = 1;
  v43 = sub_1001A6BCC(v9);
  v44 = 1;
  v45 = 0;
  v46 = 1;
  v47 = 50;
  v48 = 1;
  v49 = 0;
  v50 = 0;
  v51 = 0;
  v52 = 0;
  v53 = 0;
  v54 = 0;
  v55[14] = 0;
  v56 = 0;
  v57 = 0;
  v58 = 0;
  v59 = 0;
  v60 = 0;
  v61 = 0;
  v62 = 0;
  v63 = 0;
  v66 = 0;
  v69 = 0;
  v70 = 0;
  v71 = 0;
  v74 = 0;
  v75 = 0;
  v76 = 0;
  v80 = 0;
  v82 = 0;
  v83 = 0;
  v84 = 0;
  v85 = 0;
  v86 = 0;
  v87 = 0;
  v88 = 0;
  v89 = 0;
  v90 = 0;
  v91 = 0;
  v92 = 0;
  v93 = 0;
  v94 = 0;
  v95 = 0;
  v96 = 0;
  v101 = 0;
  v103 = 0;
  v104 = 0;
  v105 = 0;
  v106 = 0;
  v107 = 0;
  v108 = 0;
  v109 = 0;
  v111 = 0;
  v116 = 0;
  v117 = 0;
  v118 = 0;
  v119 = 0;
  v120 = 0;
  v121 = 0;
  v123 = 0;
  v126 = 0;
  memset(v55, 0, 13);
  v64 = 0;
  v65 = 0;
  v67 = 0;
  v68 = 0;
  v72 = 0;
  v73 = 0;
  v77 = 0;
  v78 = 0;
  v79 = 0;
  *(v81 + 3) = 0;
  v81[0] = 0;
  v97 = 0;
  v98 = 0;
  v99 = 0;
  v100 = 0;
  *(v102 + 3) = 0;
  v102[0] = 0;
  *(v110 + 3) = 0;
  v110[0] = 0;
  v113 = 0;
  v112 = 0;
  v114 = 0;
  v115 = 0;
  *(v122 + 3) = 0;
  v122[0] = 0;
  v125 = 0;
  v124 = 0;
  v128 = 0;
  v127 = 0;
  v129 = 0;
  v6 = *(a1 + 1);
  v7 = *(v6 + 16);
  v13 = *v6;
  v14 = v7;
  v15 = *(v6 + 32);
  v10[0] = v13;
  v10[1] = v7;
  v11 = v15;
  v12 = 1;
  return sub_10019AC54(a2, 1, 2, v10, 1, 0, 3, 0, &__src);
}

uint64_t sub_10019C5B4@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(sub_1000054A8() + 144);
  v5 = a1[11];
  if (*a1 == 5)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  sub_1001A6460(v18, v4, v6, 0, 1);
  if (a1[87] == 1)
  {
    v7 = a1[86];
  }

  else
  {
    v7 = v4 == 201 && v5 == 4;
  }

  sub_1001A69F8(v18, v7 & 1, a1[85]);
  __src = 256;
  v22 = sub_1001A6BA4(v18);
  v23 = 1;
  v24 = sub_1001A6BAC(v18);
  v25 = 1;
  v26 = sub_1001A6BB4(v18);
  *v27 = 201395201;
  *&v27[4] = 1;
  *v28 = 0;
  *v29 = 201395200;
  v29[4] = 1;
  v30 = 7;
  v31 = 1;
  v32 = 0;
  v33 = 0;
  v34 = 0;
  v35 = 0;
  v36 = 0;
  v37 = *(a1 + 23);
  v38 = 0;
  v39 = sub_1001A6BBC(v18);
  v40 = 1;
  v41 = sub_1001A6BC4(v18);
  v42 = 1;
  v43 = sub_1001A6BCC(v18);
  v44 = 1;
  v45 = 0;
  LOBYTE(v46) = 0;
  v47 = 0;
  v48 = 0;
  v49 = 0;
  LOBYTE(v50) = 0;
  v51 = 0;
  LOBYTE(v52) = 0;
  v53 = 0;
  v54 = 0;
  v55 = sub_10019CB08(v5);
  v56 = 1;
  v57 = *a1;
  v58 = 1;
  v59 = *(a1 + 1);
  v60 = 256;
  v61 = 1;
  v62 = 256;
  v63 = *(a1 + 60);
  *v64 = 1;
  v65 = 0;
  v68 = *(a1 + 5);
  v9 = *(a1 + 8);
  v67 = *(a1 + 24);
  v66 = v9;
  v69 = 1;
  v70 = 0;
  v71 = 0;
  v74 = 0;
  v77 = 0;
  v78 = 0;
  v79 = 0;
  v82 = 0;
  v83 = 0;
  v84 = 0;
  v88 = 0;
  v90 = 0;
  v91 = 0;
  v92 = 0;
  v93 = 0;
  v94 = 0;
  v95 = 0;
  v96 = 0;
  v97 = 0;
  v98 = 0;
  v99 = 0;
  v100 = 0;
  v101 = 0;
  v102 = 0;
  v103 = 0;
  v104 = 0;
  v109 = 0;
  v111 = 0;
  v112 = 0;
  v113 = 0;
  v114 = 0;
  v115 = 0;
  v116 = 0;
  v117 = 0;
  v119 = 0;
  v124 = 0;
  v125 = 0;
  v126 = 0;
  v127 = 0;
  v128 = 0;
  v129 = 0;
  v131 = 0;
  v134 = 0;
  v73 = 0;
  v72 = 0;
  v75 = 0;
  v76 = 0;
  v80 = 0;
  v81 = 0;
  v85 = 0;
  v86 = 0;
  v87 = 0;
  *(v89 + 3) = 0;
  v89[0] = 0;
  v105 = 0;
  v106 = 0;
  v107 = 0;
  v108 = 0;
  *(v110 + 3) = 0;
  v110[0] = 0;
  v118[0] = 0;
  *(v118 + 3) = 0;
  v121 = 0;
  v120 = 0;
  v122 = 0;
  v123 = 0;
  *(v130 + 3) = 0;
  v130[0] = 0;
  v133 = 0;
  v132 = 0;
  v136 = 0;
  v135 = 0;
  v137 = 0;
  v10 = *(a1 + 14);
  if (!v10)
  {
    sub_1004A18C8();
  }

  if ((v29[4] & 1) == 0)
  {
    sub_1004A1768();
  }

  if ((v29[2] & 1) == 0)
  {
    sub_1004A1794();
  }

  if (v29[1] <= 0xBu)
  {
    sub_1004A189C();
  }

  if (v29[3] <= 0xBu)
  {
    sub_1004A1870();
  }

  v11 = a1[11];
  if (v11 == 4)
  {
    v12 = *(a1 + 20);
    if (v12 - 11 > 0xFFFFFFF5)
    {
      sub_1001822A8(v10, v12, v29[1] >> 2, v29[3] >> 2);
    }

    sub_1004A17EC();
  }

  if (v11 != 5)
  {
    if (v11 <= 3)
    {
      sub_1004A1818();
    }

    sub_1004A1844();
  }

  if (*(a1 + 20) != 1)
  {
    sub_1004A17C0();
  }

  if (a1[88] == 1)
  {
    v65 = !v65;
    *&v64[1] = 1024;
    v46 = 150;
    v47 = 1;
  }

  else if (a1[89] == 1)
  {
    if ((v28[0] & 1) == 0)
    {
      v28[0] = 1;
    }

    *&v27[5] = 768;
    if ((v29[0] & 1) == 0)
    {
      v29[0] = 1;
    }

    *&v28[1] = 768;
    *&v29[1] = 18874656;
    *&v27[1] = 17367305;
  }

  else
  {
    if ((v28[0] & 1) == 0)
    {
      v28[0] = 1;
    }

    *&v27[5] = 0;
    if ((v29[0] & 1) == 0)
    {
      v29[0] = 1;
    }

    *&v28[1] = 0;
  }

  v14 = *(a1 + 12);
  v13 = *(a1 + 13);
  v15 = a1[90];
  if (a1[84] == 1 && sub_10041C678(v4))
  {
    LOWORD(v60) = 264;
    v16 = 1;
  }

  else
  {
    v16 = 0;
  }

  LOBYTE(v19) = 0;
  v20 = 0;
  return sub_10019AC54(a2, 0, 4, &v19, v13, v15, v14, v16, &__src);
}

unint64_t sub_10019CB08(unsigned int a1)
{
  if (a1 >= 6)
  {
    sub_1004A18F4();
  }

  return (0x40403020100uLL >> (8 * (a1 & 0x1F))) & 7;
}

uint64_t sub_10019CB3C@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  if (a1[77])
  {
    v4 = a1[76];
  }

  else
  {
    v4 = -1;
  }

  v5 = *(sub_1000054A8() + 144);
  v6 = a1[11];
  if (*a1 == 5)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  sub_1001A6460(v17, v5, v7, 0, 1);
  sub_1001A6A30(v17, 0, a1[85]);
  v8 = 0;
  v9 = *(a1 + 13);
  if (v9 <= 6)
  {
    v8 = word_1005630BC[v9];
  }

  if (*(sub_1000054A8() + 186) == 1)
  {
    v8 |= 0x20u;
  }

  __src = 257;
  v21 = sub_1001A6BA4(v17);
  v22 = 1;
  v23 = sub_1001A6BAC(v17);
  v24 = 1;
  v25 = sub_1001A6BB4(v17);
  *v26 = 201395201;
  v26[4] = 1;
  v27 = 0;
  v28 = 1;
  v29 = 0;
  *v30 = 201395201;
  v30[4] = 1;
  v31 = v8;
  v32 = 1;
  v33 = 0;
  v34 = 0;
  v35 = 0;
  v36 = 0;
  v37 = 0;
  v38 = *(a1 + 23);
  v41 = 0;
  LOBYTE(v42) = 0;
  v43 = 0;
  v44 = 0;
  v45 = 0;
  v40 = 0;
  v39 = 0;
  v46 = 30;
  v47 = 1;
  v48 = 5000;
  v49 = 1;
  v50 = 18874625;
  v51 = sub_10019CB08(v6);
  v52 = 1;
  v53 = *a1;
  v54 = 1;
  v55 = *(a1 + 1);
  v56 = 256;
  v57 = 1;
  v58 = v4;
  v59 = 1;
  v60 = *(a1 + 60);
  *v61 = 1;
  v62 = 0;
  v10 = *(a1 + 8);
  v11 = *(a1 + 24);
  v65 = *(a1 + 5);
  v64 = v11;
  v63 = v10;
  v66 = 1;
  v67 = 0;
  v68 = 0;
  v71 = 0;
  v74 = 0;
  v75 = 0;
  v76 = 0;
  v79 = 0;
  v80 = 0;
  v81 = 0;
  v85 = 0;
  v87 = 0;
  v88 = 0;
  v89 = 0;
  v90 = 0;
  v91 = 0;
  v92 = 0;
  v93 = 0;
  v94 = 0;
  v95 = 0;
  v96 = 0;
  v97 = 0;
  v98 = 0;
  v99 = 0;
  v100 = 0;
  v101 = 0;
  v106 = 0;
  v108 = 0;
  v109 = 0;
  v110 = 0;
  v111 = 0;
  v112 = 0;
  v113 = 0;
  v114 = 0;
  v116 = 0;
  v121 = 0;
  v122 = 0;
  v123 = 0;
  v124 = 0;
  v125 = 0;
  v126 = 0;
  v128 = 0;
  v131 = 0;
  v70 = 0;
  v69 = 0;
  v72 = 0;
  v73 = 0;
  v77 = 0;
  v78 = 0;
  v82 = 0;
  v83 = 0;
  v84 = 0;
  *(v86 + 3) = 0;
  v86[0] = 0;
  v102 = 0;
  v103 = 0;
  v104 = 0;
  v105 = 0;
  *(v107 + 3) = 0;
  v107[0] = 0;
  v115[0] = 0;
  *(v115 + 3) = 0;
  v118 = 0;
  v117 = 0;
  v119 = 0;
  v120 = 0;
  *(v127 + 3) = 0;
  v127[0] = 0;
  v130 = 0;
  v129 = 0;
  v133 = 0;
  v132 = 0;
  v134 = 0;
  if (a1[88] == 1)
  {
    v62 = !v62;
    *&v61[1] = 1024;
    v42 = 150;
    v43 = 1;
  }

  else if (a1[89] == 1)
  {
    if ((v28 & 1) == 0)
    {
      v28 = 1;
    }

    v27 = 768;
    if ((v30[0] & 1) == 0)
    {
      v30[0] = 1;
    }

    v29 = 768;
    *&v30[1] = 18874656;
    *&v26[1] = 17367305;
  }

  else
  {
    if ((v28 & 1) == 0)
    {
      v28 = 1;
    }

    v27 = 0;
    if ((v30[0] & 1) == 0)
    {
      v30[0] = 1;
    }

    v29 = 0;
  }

  v12 = a1[90];
  v14 = *(a1 + 12);
  v13 = *(a1 + 13);
  if (a1[84] == 1 && sub_10041C678(v5))
  {
    LOWORD(v56) = 264;
    v15 = 1;
  }

  else
  {
    v15 = 0;
  }

  LOBYTE(v18) = 0;
  v19 = 0;
  return sub_10019AC54(a2, 1, 4, &v18, v13, v12, v14, v15, &__src);
}

__n128 sub_10019CFAC@<Q0>(int *a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, unsigned __int8 *a4@<X3>, uint64_t a5@<X8>)
{
  v6 = a2;
  if (a2 != 102 && a2 != 106)
  {
    sub_1004A1B5C();
  }

  v9 = a4[2];
  if (*a4 == 1)
  {
    if ((a4[2] & 1) == 0)
    {
      sub_1004A19A4();
    }

    if ((a4[3] & 1) == 0)
    {
      sub_1004A19D0();
    }

LABEL_9:
    if ((a4[8] & 1) == 0)
    {
      sub_1004A19FC();
    }

    if ((a4[16] & 1) == 0)
    {
      sub_1004A1A28();
    }

    v10 = 1;
    goto LABEL_15;
  }

  if (a4[2])
  {
    sub_1004A1978();
  }

  if (a4[3])
  {
    goto LABEL_9;
  }

  if (a4[8] == 1)
  {
    sub_1004A194C();
  }

  if (a4[16] == 1)
  {
    sub_1004A1920();
  }

  v10 = 0;
LABEL_15:
  if (a4[27])
  {
    v10 |= 2u;
  }

  if (a4[28])
  {
    v11 = v10 | 4;
  }

  else
  {
    v11 = v10;
  }

  if (*(a1 + 19) == 1)
  {
    if (*(a1 + 16) == 1)
    {
      v12 = v11 | 0xC0;
      v13 = *(a1 + 17);
      v14 = v13 != 0;
      v15 = v13 - 1;
      if (v14)
      {
        v16 = v15;
      }

      else
      {
        v16 = 0;
      }
    }

    else
    {
      v16 = 0;
      v12 = v11 | 0x80;
    }

    if (*(a1 + 18))
    {
      v11 = v12 | (*(a1 + 18) << 8);
    }

    else
    {
      v11 = v12;
    }
  }

  else
  {
    v16 = 0;
  }

  v17 = *a1;
  v18 = *(sub_1000054A8() + 144);
  v25 = sub_1004281F8(*(a1 + 4), 1, v19, v20, v21, v22, v23, v24);
  v26 = v25;
  if (v25 == 5)
  {
    v27 = 1;
  }

  else
  {
    v27 = 2;
  }

  sub_1001A6460(&v31, v18, v27, 0, 1);
  if (a4[20] == 1)
  {
    if ((a4[22] & 1) == 0)
    {
      sub_1004A1AD8();
    }

    if ((a4[24] & 1) == 0)
    {
      sub_1004A1B04();
    }

    if ((a4[26] & 1) == 0)
    {
      sub_1004A1B30();
    }

    sub_1001A6B14(&v31, a4[21], a4[23], a4[25], 0, 0, 0);
  }

  else
  {
    if (a4[22] == 1)
    {
      sub_1004A1AAC();
    }

    if (a4[24] == 1)
    {
      sub_1004A1A80();
    }

    if (a4[26] == 1)
    {
      sub_1004A1A54();
    }

    sub_10019D500(v27, &__src);
    v31 = __src;
    v32 = *v36;
  }

  LOBYTE(__src) = *a4;
  BYTE1(__src) = 1;
  BYTE2(__src) = sub_1001A6BA4(&v31);
  BYTE3(__src) = 1;
  BYTE4(__src) = sub_1001A6BAC(&v31);
  BYTE5(__src) = 1;
  BYTE6(__src) = sub_1001A6BB4(&v31);
  BYTE7(__src) = 1;
  BYTE8(__src) = sub_1004272E8(*(a1 + 5), 1);
  BYTE9(__src) = 1;
  BYTE10(__src) = sub_1004272E8(*(a1 + 5), 1);
  *(&__src + 11) = 1;
  HIWORD(__src) = 0;
  *&v36[1] = 0;
  v37 = 0;
  v38 = v11;
  v39 = 1;
  v40 = 0;
  v41 = 0;
  v42 = 0;
  v43 = 0;
  v44 = v26;
  v45 = 1;
  v46 = *(a4 + 8);
  v49 = 0;
  v50 = 0;
  v51 = 0;
  v52 = 0;
  v53 = 0;
  v54 = 0;
  v55 = 0;
  v56 = 0;
  v57 = 0;
  v58[14] = 0;
  v59 = 0;
  v60 = 0;
  v61 = 0;
  v62 = 0;
  v63 = 0;
  v64 = 0;
  v65 = 0;
  v66 = 0;
  v48 = 0;
  v47 = 0;
  memset(v58, 0, 13);
  v67 = v6;
  v68 = 1;
  v69 = sub_1004272E8(*(a1 + 5), 1);
  v70 = 1;
  v71 = v17;
  v72 = 1;
  v73 = 16777472;
  v74 = *(a1 + 3);
  v75 = 1;
  v76 = *(a1 + 4);
  v77 = 1;
  v78 = *(a1 + 10);
  v79 = 1;
  v80 = *(a1 + 11);
  v81 = 1;
  v82 = *(a1 + 12);
  v83 = 1;
  v84 = *(a1 + 13);
  v85 = 1;
  v86 = *(a4 + 1);
  v87 = a4[8];
  v88 = *(a4 + 3);
  v89 = a4[16];
  v90 = *(a4 + 1);
  v91 = *(a1 + 14);
  v92 = 1;
  v93 = *(a1 + 15);
  v94 = 1;
  v95 = v16;
  v96 = 1;
  v99 = 0;
  v101 = 0;
  v102 = 0;
  v103 = 0;
  v104 = 0;
  v105 = 0;
  v106 = 0;
  v107 = 0;
  v108 = 0;
  v109 = 0;
  v110 = 0;
  v111 = 0;
  v112 = 0;
  v113 = 0;
  v114 = 0;
  v115 = 0;
  v120 = 0;
  v122 = 0;
  v123 = 0;
  v124 = 0;
  v125 = 0;
  v126 = 0;
  v127 = 0;
  v128 = 0;
  v130 = 0;
  v135 = 0;
  v136 = 0;
  v137 = 0;
  v138 = 0;
  v139 = 0;
  v140 = 0;
  v142 = 0;
  v145 = 0;
  v98 = 0;
  v97 = 0;
  *(v100 + 3) = 0;
  v100[0] = 0;
  v116 = 0;
  v117 = 0;
  v118 = 0;
  v119 = 0;
  *(v121 + 3) = 0;
  v121[0] = 0;
  v129[0] = 0;
  *(v129 + 3) = 0;
  v132 = 0;
  v131 = 0;
  v133 = 0;
  v134 = 0;
  v141[0] = 0;
  *(v141 + 3) = 0;
  v144 = 0;
  v143 = 0;
  v147 = 0;
  v146 = 0;
  v148 = 0;
  v28 = *a4;
  LOBYTE(v33) = 0;
  v34 = 0;
  sub_10019AC54(a5, v28, 3, &v33, 1, 0, 2, 0, &__src);
  *(a5 + 68) = *a3;
  result = *(a3 + 11);
  *(a5 + 79) = result;
  return result;
}

uint64_t sub_10019D500@<X0>(unsigned int a1@<W0>, unsigned __int8 *a2@<X8>)
{
  v4 = *(sub_1000054A8() + 144);
  sub_1001A6460(a2, v4, a1, 0, 1);
  v5 = sub_10041C964(v4);

  return sub_1001A6AA0(a2, 0, v5);
}

uint64_t sub_10019D570@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[52] | a1[53];
  if (v4)
  {
    v5 = 0;
  }

  else
  {
    v5 = 8;
  }

  if ((a1[52] | a1[53]))
  {
    v6 = 0;
  }

  else
  {
    v6 = 16;
  }

  if (a1[49])
  {
    v7 = v5;
  }

  else
  {
    v7 = 0;
  }

  if (a1[50])
  {
    v7 |= 6u;
  }

  if (a1[51])
  {
    v8 = v6;
  }

  else
  {
    v8 = 0;
  }

  v9 = v7 | v8;
  if (a1[58])
  {
    v10 = v9 | 0x20;
  }

  else
  {
    v10 = v9;
  }

  if (*a1 == 5)
  {
    v11 = 1;
  }

  else
  {
    v11 = 2;
  }

  v12 = sub_1000054A8();
  sub_1001A6460(v19, v12[144], v11, 0, 1);
  sub_1001A6AD8(v19, 0, a1[48]);
  __src = 256;
  v23 = sub_1001A6BA4(v19);
  v24 = 1;
  v25 = sub_1001A6BAC(v19);
  v26 = 1;
  v27 = sub_1001A6BB4(v19);
  v28 = 184617729;
  v29 = 1;
  v30 = 0;
  v31 = 0;
  v32 = 0;
  v33 = v10;
  v34 = 1;
  v35 = 0;
  v36 = 0;
  v37 = 0;
  v38 = 0;
  v39 = 0;
  v40 = *(a1 + 15);
  v43 = 0;
  v44 = 0;
  v45 = 0;
  v46 = 0;
  v47 = 0;
  v48 = 0;
  v49 = 0;
  v50 = 0;
  v51 = 0;
  v52[14] = 0;
  v53 = 0;
  v54 = 0;
  v55 = 0;
  v56 = 0;
  v57 = 0;
  v58 = 0;
  v59 = 0;
  v60 = 0;
  v63 = 0;
  v66 = 0;
  v67 = 0;
  v68 = 0;
  v71 = 0;
  v72 = 0;
  v73 = 0;
  v42 = 0;
  v41 = 0;
  memset(v52, 0, 13);
  v61 = 0;
  v62 = 0;
  v64 = 0;
  v65 = 0;
  v69 = 0;
  v70 = 0;
  v74 = 0;
  v75 = *a1;
  v76 = 2817;
  v77 = 1;
  v78 = *(a1 + 1);
  v79 = 1;
  v80 = 16908546;
  v81 = 258;
  v82 = *(a1 + 4);
  v83 = 1;
  v84 = *(a1 + 5);
  v85 = 1;
  v86 = *(a1 + 6);
  v87 = 1;
  v88 = *(a1 + 14);
  v89 = *(a1 + 9);
  v90 = 1;
  v91 = 76;
  v92 = 1;
  v13 = *(a1 + 4);
  v93 = *(a1 + 3);
  v94 = 1;
  v95 = v13;
  v96 = 1;
  v97 = *(a1 + 28);
  v98 = 1;
  v103 = 0;
  v105 = 0;
  v106 = 0;
  v107 = 0;
  v108 = 0;
  v109 = 0;
  v110 = 0;
  v111 = 0;
  v113 = 0;
  v118 = 0;
  v119 = 0;
  v120 = 0;
  v121 = 0;
  v122 = 0;
  v123 = 0;
  v125 = 0;
  v128 = 0;
  v100 = 0;
  v99 = 0;
  v101 = 0;
  v102 = 0;
  *(v104 + 3) = 0;
  v104[0] = 0;
  v112[0] = 0;
  *(v112 + 3) = 0;
  v116 = 0;
  v114 = 0;
  v115 = 0;
  v117 = 0;
  v124[0] = 0;
  *(v124 + 3) = 0;
  v126 = 0;
  v127 = 0;
  v130 = 0;
  v129 = 0;
  v131 = 0;
  if (v4)
  {
    if (a1[52])
    {
      v14 = 3;
    }

    else
    {
      v14 = 0;
    }

    BYTE1(v99) = 1;
    LOBYTE(v99) = v14;
    v100 = a1[55] | 0x100;
    HIWORD(v99) = a1[54] | 0x100;
    v15 = 6;
  }

  else
  {
    v15 = 5;
  }

  v17 = *(a1 + 10);
  v16 = *(a1 + 11);
  LOBYTE(v20) = 0;
  v21 = 0;
  return sub_10019AC54(a2, 0, v15, &v20, v16, 0, v17, 0, &__src);
}

uint64_t sub_10019D940@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[52] | a1[53];
  if (v4)
  {
    v5 = 0;
  }

  else
  {
    v5 = 8;
  }

  if ((a1[52] | a1[53]))
  {
    v6 = 0;
  }

  else
  {
    v6 = 16;
  }

  if (a1[49])
  {
    v7 = v5;
  }

  else
  {
    v7 = 0;
  }

  if (a1[50])
  {
    v7 |= 6u;
  }

  if (a1[51])
  {
    v8 = v6;
  }

  else
  {
    v8 = 0;
  }

  v9 = v7 | v8;
  if (a1[58])
  {
    v10 = v9 | 0x20;
  }

  else
  {
    v10 = v9;
  }

  if (*a1 == 5)
  {
    v11 = 1;
  }

  else
  {
    v11 = 2;
  }

  v12 = sub_1000054A8();
  sub_1001A6460(v19, v12[144], v11, 0, 1);
  sub_1001A6B10(v19, 0, a1[48]);
  __src = 257;
  v23 = sub_1001A6BA4(v19);
  v24 = 1;
  v25 = sub_1001A6BAC(v19);
  v26 = 1;
  v27 = sub_1001A6BB4(v19);
  v28 = 1;
  v31 = 0;
  v29 = 0;
  v30 = 0;
  v32 = 0;
  v33 = 0;
  v34 = v10;
  v35 = 1;
  v36 = 0;
  v37 = 0;
  v38 = 0;
  v39 = 0;
  v40 = 0;
  v41 = *(a1 + 15);
  v44 = 0;
  v45 = 0;
  v46 = 0;
  v47 = 0;
  v48 = 0;
  v49 = 0;
  v50 = 0;
  v51 = 0;
  v52 = 0;
  v53[14] = 0;
  v54 = 0;
  v55 = 0;
  v56 = 0;
  v57 = 0;
  v58 = 0;
  v59 = 0;
  v60 = 0;
  v61 = 0;
  v64 = 0;
  v67 = 0;
  v68 = 0;
  v69 = 0;
  v72 = 0;
  v73 = 0;
  v74 = 0;
  v43 = 0;
  v42 = 0;
  memset(v53, 0, 13);
  v62 = 0;
  v63 = 0;
  v65 = 0;
  v66 = 0;
  v70 = 0;
  v71 = 0;
  v75 = 0;
  v76 = *a1;
  v77 = 2817;
  v78 = 1;
  v79 = *(a1 + 1);
  v80 = 1;
  v81 = 16908546;
  v82 = 258;
  v83 = *(a1 + 4);
  v84 = 1;
  v85 = *(a1 + 5);
  v86 = 1;
  v87 = *(a1 + 6);
  v88 = 1;
  v89 = *(a1 + 14);
  v90 = *(a1 + 9);
  v91 = 1;
  v92 = 76;
  v93 = 1;
  v13 = *(a1 + 4);
  v94 = *(a1 + 3);
  v95 = 1;
  v96 = v13;
  v97 = 1;
  v98 = *(a1 + 28);
  v99 = 1;
  v104 = 0;
  v106 = 0;
  v107 = 0;
  v108 = 0;
  v109 = 0;
  v110 = 0;
  v111 = 0;
  v112 = 0;
  v114 = 0;
  v119 = 0;
  v120 = 0;
  v121 = 0;
  v122 = 0;
  v123 = 0;
  v124 = 0;
  v126 = 0;
  v129 = 0;
  v101 = 0;
  v100 = 0;
  v102 = 0;
  v103 = 0;
  *(v105 + 3) = 0;
  v105[0] = 0;
  v113[0] = 0;
  *(v113 + 3) = 0;
  v117 = 0;
  v115 = 0;
  v116 = 0;
  v118 = 0;
  v125[0] = 0;
  *(v125 + 3) = 0;
  v127 = 0;
  v128 = 0;
  v131 = 0;
  v130 = 0;
  v132 = 0;
  if (v4)
  {
    if (a1[52])
    {
      v14 = 3;
    }

    else
    {
      v14 = 0;
    }

    BYTE1(v100) = 1;
    LOBYTE(v100) = v14;
    v101 = a1[55] | 0x100;
    HIWORD(v100) = a1[54] | 0x100;
    v15 = 6;
  }

  else
  {
    v15 = 5;
  }

  v17 = *(a1 + 10);
  v16 = *(a1 + 11);
  LOBYTE(v20) = 0;
  v21 = 0;
  return sub_10019AC54(a2, 1, v15, &v20, v16, 0, v17, 0, &__src);
}

uint64_t sub_10019DD0C@<X0>(char *a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v5 = *(sub_1000054A8() + 144);
  v6 = sub_1000054A8();
  v7 = sub_1004609DC(v6);
  sub_1001A6460(v68, v5, 2u, v7 & 0xFFFFFF, 1);
  v8 = a1[43];
  if (v8 == 1)
  {
    if (a2)
    {
      v9 = 85;
    }

    else
    {
      v9 = 51;
    }

    if (a1[50] & 1 | (a1[49] != 0))
    {
      v10 = a1[49];
    }

    else
    {
      v10 = v9;
    }

    sub_1001A6A68(v68, 1, a1[45]);
  }

  else
  {
    sub_1001A6A68(v68, 0, a1[45]);
    if (a1[46] == 1)
    {
      if (a1[15] == 1 && a1[13] == 1 && (a1[17] & 1) != 0)
      {
        v10 = 0;
        v11 = 1;
        goto LABEL_18;
      }

      v12 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
      {
        sub_1004A1B88(v12);
      }
    }

    v10 = 0;
  }

  v11 = 0;
LABEL_18:
  v13 = (a1 + 22);
  if (!a1[24])
  {
    v13 = &word_1009EED64;
  }

  v14 = *v13;
  v15 = sub_100428540(v14 | 0x10000u);
  if (a1[20] == 1 && *(a1 + 9) == word_1009EED5E || a1[27] == 1 && a1[26] >= 0x11u)
  {
    v16 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "dual-rx chain disabled", buf, 2u);
    }
  }

  else if (a1[44])
  {
    v17 = sub_1001A6BAC(v68);
    v18 = sub_1001A6BC4(v68);
    v19 = sub_1001A6BAC(v68);
    v20 = v18 | v17;
    v21 = sub_1001A6BC4(v68) | v19;
    goto LABEL_29;
  }

  v20 = sub_1001A6BAC(v68);
  v21 = sub_1001A6BC4(v68);
LABEL_29:
  v22 = a2 != 0;
  __src[0] = v22;
  __src[1] = 1;
  if (v11)
  {
    if ((a1[13] & 1) == 0)
    {
      sub_1000195BC();
    }

    v72 = a1[12];
    v73 = 1;
    if ((a1[15] & 1) == 0)
    {
      sub_1000195BC();
    }

    v74 = a1[14];
    v75 = 1;
    if ((a1[17] & 1) == 0)
    {
      sub_1000195BC();
    }

    v23 = a1[16];
  }

  else
  {
    v72 = sub_1001A6BA4(v68);
    v73 = 1;
    v74 = v20;
    v75 = 1;
    v23 = sub_1001A6BB4(v68);
  }

  v76 = v23;
  v77 = 1;
  v80 = 0;
  v78 = 0;
  v79 = 0;
  memset(v81, 0, sizeof(v81));
  v82 = 1;
  v83 = 0;
  v84 = 0;
  v85 = 0;
  v86 = 0;
  if ((v15 & 0x100) != 0)
  {
    v24 = v15;
  }

  else
  {
    v24 = 9;
  }

  v87 = v24;
  v88 = 1;
  v89 = *(a1 + 28);
  v90 = 0;
  if (v8)
  {
    LOBYTE(v91) = sub_1001A6BBC(v68);
    BYTE1(v91) = 1;
    BYTE2(v91) = v21;
    HIBYTE(v91) = 1;
    v25 = sub_1001A6BCC(v68);
  }

  else
  {
    v25 = 0;
    v91 = 16777472;
  }

  v92 = v25;
  v93 = 1;
  v94 = 0;
  if (a1[34])
  {
    v26 = *(a1 + 16);
  }

  else
  {
    v26 = 99;
  }

  v95 = v26;
  v96 = 1;
  v97 = *(a1 + 10);
  v98 = a1[88];
  v99 = 0;
  v100 = 0;
  v101 = 0;
  v102 = 0;
  v103[14] = 0;
  v104 = 0;
  v105 = 0;
  v106 = 0;
  v107 = 0;
  v108 = 0;
  v109 = 0;
  memset(v103, 0, 13);
  v110 = *(a1 + 36);
  v111 = a1[74];
  v114 = 0;
  v117 = 0;
  v118 = 0;
  v119 = 0;
  v122 = 0;
  v123 = 0;
  v124 = 0;
  v128 = 0;
  v130 = 0;
  v131 = 0;
  v132 = 0;
  v133 = 0;
  v134 = 0;
  v135 = 0;
  v136 = 0;
  v137 = 0;
  v138 = 0;
  v139 = 0;
  v140 = 0;
  v141 = 0;
  v142 = 0;
  v143 = 0;
  v144 = 0;
  v149 = 0;
  v151 = 0;
  v152 = 0;
  v153 = 0;
  v154 = 0;
  v155 = 0;
  v156 = 0;
  v157 = 0;
  v159 = 0;
  v161 = 0;
  v160 = 0;
  v162 = 0;
  v112 = 0;
  v113 = 0;
  v115 = 0;
  v116 = 0;
  v120 = 0;
  v121 = 0;
  v125 = 0;
  v126 = 0;
  v127 = 0;
  *(v129 + 3) = 0;
  v129[0] = 0;
  v145 = 0;
  v146 = 0;
  v147 = 0;
  v148 = 0;
  *(v150 + 3) = 0;
  v150[0] = 0;
  *(v158 + 3) = 0;
  v158[0] = 0;
  if (a1[1] == 1)
  {
    v27 = *a1;
  }

  else
  {
    v27 = sub_1001A6BD4(v68);
  }

  v163 = v27;
  v164 = 1;
  if (a1[3] == 1)
  {
    v28 = a1[2];
  }

  else
  {
    v28 = sub_1001A6BDC(v68);
  }

  v165 = v28;
  v166 = 1;
  v29 = (a1 + 4);
  if (!a1[6])
  {
    v29 = &word_1009F0128;
  }

  v167 = *v29;
  v168 = 1;
  LOBYTE(v169) = 0;
  v170 = 0;
  if (a1[29])
  {
    v30 = a1[28];
  }

  else
  {
    v30 = 4;
  }

  v171 = v30;
  *v172 = 1;
  v173 = 0;
  v174 = 0;
  v175 = 0;
  v176 = v14;
  v177 = 1;
  v178 = 0;
  if (a1[27])
  {
    v31 = a1[26];
  }

  else
  {
    v31 = 16;
  }

  v179 = v31;
  *v180 = 1;
  v181 = 0;
  memset(v182, 0, sizeof(v182));
  if ((v82 & 1) == 0)
  {
    sub_1004A1BCC();
  }

  if (a1[50] != 1)
  {
    if (a1[57])
    {
      v37 = a1[56] | 0x100;
    }

    else
    {
      v37 = 262;
    }

    LOWORD(v182[0]) = v37;
    if (a1[59])
    {
      v38 = a1[58] | 0x100;
    }

    else
    {
      v38 = 266;
    }

    HIWORD(v182[0]) = v38;
    BYTE1(v182[5]) = 1;
    LOBYTE(v182[5]) = v10;
    if (a1[20])
    {
      v39 = *(a1 + 9);
    }

    else
    {
      v39 = word_1009EED5C;
    }

    *&v172[1] = v39;
    v173 = 1;
    if (word_1009EED5A == v39)
    {
      v174 = 16777472;
      v40 = 256;
LABEL_107:
      v175 = v40;
      goto LABEL_108;
    }

    if (a1[37] == 1 && a1[39] == 1 && a1[41] == 1)
    {
      v175 = 257;
      v174 = 16843009;
LABEL_108:
      if ((v82 & 1) == 0)
      {
        sub_1000195BC();
      }

      v55 = *&v81[5];
      *&v81[5] |= 2u;
      if (a1[62] == 1)
      {
        *&v81[5] = v55 | 3;
      }

      v56 = (a1 + 8);
      if (!a1[10])
      {
        v56 = &word_1009EED62;
      }

      v169 = *v56;
      v170 = 1;
      LOBYTE(buf[0]) = 1;
      v66 = 0;
      v67 = 0;
      __p = 0;
      sub_10019ECC8(&__p, buf, buf + 1, 1);
      v57 = sub_100428064(&__p);
      if (a1[61])
      {
        v58 = a1[60];
      }

      else
      {
        v58 = v57;
      }

      if (__p)
      {
        v66 = __p;
        operator delete(__p);
      }

      if ((v182[5] & 0x1000000) == 0)
      {
        HIBYTE(v182[5]) = 1;
      }

      BYTE2(v182[5]) = 0;
      v59 = sub_1004280CC(v58);
      v60 = sub_1004280EC(v58);
      if ((v59 ^ 1 | v60))
      {
        if ((v59 | !v60))
        {
          if ((v59 ^ 1 | !v60))
          {
            sub_1004A1C24();
          }

          if ((v182[5] & 0x1000000) == 0)
          {
            sub_1000195BC();
          }

          BYTE2(v182[5]) |= 8u;
          v61 = 1;
        }

        else
        {
          v61 = 29;
        }
      }

      else
      {
        v61 = 253;
      }

      if (a1[54])
      {
        v61 = *(a1 + 26);
      }

      *&v180[1] = v61;
      v181 = 1;
      if (a1[47] == 1)
      {
        if ((v182[5] & 0x1000000) == 0)
        {
          sub_1000195BC();
        }

        BYTE2(v182[5]) |= 2u;
      }

      if (a1[48] == 1)
      {
        if ((v182[5] & 0x1000000) == 0)
        {
          sub_1000195BC();
        }

        BYTE2(v182[5]) |= 4u;
      }

      if (a1[31])
      {
        v62 = a1[30] | 0x100;
      }

      else
      {
        v62 = 452;
      }

      v178 = v62;
      *&v182[1] = *(a1 + 6);
      if (a1[50])
      {
        v36 = 7;
      }

      else
      {
        v36 = 8;
      }

      goto LABEL_141;
    }

    if (word_1009EED5C == v39)
    {
      if (a1[68] == 1)
      {
        v42 = &aGhijlmnoqrstvw[15] + 3 * *(a1 + 16) + 1;
        LOBYTE(v43) = *v42;
        LOBYTE(v44) = v42[1];
        v45 = v42[2];
LABEL_106:
        LOWORD(v174) = v43 | 0x100;
        HIWORD(v174) = v44 | 0x100;
        v40 = v45 | 0x100;
        goto LABEL_107;
      }

      sub_100182654(&v70);
      v47 = std::random_device::operator()(&v70);
      buf[0] = v47;
      for (i = 1; i != 624; ++i)
      {
        v47 = i + 1812433253 * (v47 ^ (v47 >> 30));
        buf[i] = v47;
      }

      v185 = 0;
      v69 = 0x1B00000000;
      v49 = 3 * sub_10019EC0C(&v69, buf, &v69);
      v50 = &aGhijlmnoqrstvw[15] + 1;
    }

    else
    {
      if (word_1009EED5E != v39)
      {
        sub_1004A1BF8();
      }

      if (a1[68] == 1)
      {
        v46 = &unk_100563067 + 3 * *(a1 + 16);
        LOBYTE(v44) = v46[1];
        v45 = v46[2];
        LOBYTE(v43) = 32;
        goto LABEL_106;
      }

      sub_100182654(&v70);
      v51 = std::random_device::operator()(&v70);
      buf[0] = v51;
      for (j = 1; j != 624; ++j)
      {
        v51 = j + 1812433253 * (v51 ^ (v51 >> 30));
        buf[j] = v51;
      }

      v185 = 0;
      v69 = 0x1B00000000;
      v49 = 3 * sub_10019EC0C(&v69, buf, &v69);
      v50 = &unk_100563067;
    }

    v53 = &v50[v49];
    v54 = v53[2];
    v43 = *v53 | (v53[2] << 16);
    std::random_device::~random_device(&v70);
    v44 = v43 >> 8;
    v45 = v54;
    goto LABEL_106;
  }

  v32 = *&v81[5];
  if (a1[42] == 1)
  {
    v32 = *&v81[5] | 1;
    *&v81[5] |= 1u;
  }

  v33 = (a1 + 8);
  if (!a1[10])
  {
    v33 = &word_1009EED60;
  }

  v169 = *v33;
  v170 = 1;
  if (a1[31])
  {
    v34 = a1[30] | 0x100;
  }

  else
  {
    v34 = 328;
  }

  v178 = v34;
  *&v81[5] = v32 | 2;
  if (a1[20])
  {
    v35 = *(a1 + 9);
  }

  else
  {
    v35 = word_1009EED5A;
  }

  *&v172[1] = v35;
  v173 = 1;
  if (word_1009EED5A == v35)
  {
    v174 = 16777472;
    v175 = 256;
    v36 = 7;
LABEL_141:
    v41 = a3;
    goto LABEL_142;
  }

  v41 = a3;
  if (a1[37] == 1 && a1[39] == 1 && a1[41] == 1)
  {
    v175 = 257;
    v174 = 16843009;
  }

  else
  {
    v174 = 20971808;
    v175 = 297;
  }

  v36 = 7;
LABEL_142:
  LOBYTE(buf[0]) = 0;
  v184 = 0;
  return sub_10019AC54(v41, v22, v36, buf, 1, 0, 3, 0, __src);
}

uint64_t sub_10019E89C@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(sub_1000054A8() + 144);
  v5 = sub_1000054A8();
  v6 = sub_1004609DC(v5);
  if (a1[6] == 5)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  sub_1001A6460(v17, v4, v7, v6 & 0xFFFFFF, 0);
  sub_1001A6B10(v17, 1, a1[1]);
  v8 = *a1;
  v9 = sub_1001A6BAC(v17);
  if (v8 == 1)
  {
    v9 |= sub_1001A6BC4(v17);
  }

  v10 = a1[3];
  v11 = a1[2];
  if (a1[5] == 1)
  {
    v12 = a1[4];
  }

  else
  {
    v12 = sub_1001A6BB4(v17);
  }

  __src = 0;
  if (v10)
  {
    v13 = v11;
  }

  else
  {
    v13 = v9;
  }

  v21 = v13;
  v22 = 1;
  v23 = v12;
  v24 = 1;
  v27 = 0;
  v25 = 0;
  v26 = 0;
  memset(v28, 0, 7);
  v28[7] = 1;
  v28[15] = 0;
  v28[23] = 0;
  v28[31] = 0;
  v28[35] = 0;
  v29 = 0;
  v30 = 11;
  v33 = 0;
  v34 = 0;
  v35 = 0;
  v36 = 0;
  v37 = 0;
  v38 = 0;
  v39 = 0;
  v40 = 0;
  v41 = 0;
  v42[14] = 0;
  v43 = 0;
  v44 = 0;
  v45 = 0;
  v46 = 0;
  v47 = 0;
  v48 = 0;
  v49 = 0;
  v50 = 0;
  v53 = 0;
  v56 = 0;
  v57 = 0;
  v58 = 0;
  v61 = 0;
  v62 = 0;
  v63 = 0;
  v67 = 0;
  v69 = 0;
  v70 = 0;
  v71 = 0;
  v72 = 0;
  v73 = 0;
  v74 = 0;
  v75 = 0;
  v76 = 0;
  v77 = 0;
  v78 = 0;
  v79 = 0;
  v80 = 0;
  v81 = 0;
  v82 = 0;
  v83 = 0;
  v32 = 0;
  v31 = 0;
  memset(v42, 0, 13);
  v51 = 0;
  v52 = 0;
  v54 = 0;
  v55 = 0;
  v59 = 0;
  v60 = 0;
  v64 = 0;
  v65 = 0;
  v66 = 0;
  *(v68 + 3) = 0;
  v68[0] = 0;
  v84 = 0;
  v85 = 0;
  v86 = a1[6];
  v87 = 1;
  v88 = a1[7];
  v89 = 1;
  v90 = *(a1 + 2);
  v91 = 1;
  v92 = a1[12];
  v93 = 1;
  v94 = a1[13];
  v95 = 1;
  v96 = a1[14];
  v97 = 1;
  v98 = *(a1 + 8);
  v99 = 1;
  v100 = *(a1 + 9);
  v101 = 1;
  v102 = *(a1 + 10);
  v103 = 1;
  v104 = *(a1 + 11);
  v105 = 1;
  v14 = *(a1 + 14);
  v106 = *(a1 + 6);
  v107 = v14;
  v108 = *(a1 + 15);
  v109 = 1;
  v15 = *(a1 + 12);
  v110 = *(a1 + 2);
  v111 = v15;
  v114 = 0;
  v115 = 0;
  v116 = 0;
  v117 = 0;
  v118 = 0;
  v119 = 0;
  v121 = 0;
  v124 = 0;
  v113 = 0;
  v112 = 0;
  *(v120 + 3) = 0;
  v120[0] = 0;
  v123 = 0;
  v122 = 0;
  v126 = 0;
  v125 = 0;
  v127 = 0;
  LOBYTE(v18) = 0;
  v19 = 0;
  return sub_10019AC54(a2, 1, 9, &v18, 1, 0, 3, 0, &__src);
}

uint64_t sub_10019EC0C(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  result = a3[1];
  v4 = result - *a3;
  if (result != *a3)
  {
    v6 = v4 + 1;
    if (v4 == -1)
    {

      return sub_10018290C(a2);
    }

    else
    {
      v8 = __clz(v6);
      v9 = 31;
      if (((v6 << v8) & 0x7FFFFFFF) != 0)
      {
        v9 = 32;
      }

      v10 = v9 - v8;
      v11 = v10 >> 5;
      if ((v10 & 0x1F) != 0)
      {
        ++v11;
      }

      if (v11 <= v10)
      {
        v12 = 0xFFFFFFFF >> -(v10 / v11);
      }

      else
      {
        v12 = 0;
      }

      do
      {
        v13 = sub_10018290C(a2) & v12;
      }

      while (v13 >= v6);
      return *a3 + v13;
    }
  }

  return result;
}

uint64_t sub_10019ECC8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    sub_100009AC4(result, a4);
  }

  return result;
}

void sub_10019ED20(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10019ED3C()
{
  v1 = 272;
  word_1009EED58 = sub_100428664(&v1);
  v1 = 263;
  word_1009EED5A = sub_100428664(&v1);
  v1 = 1031;
  word_1009EED5C = sub_100428664(&v1);
  v1 = 1800;
  word_1009EED5E = sub_100428664(&v1);
  word_1009F0128 = word_1009EED58;
  v1 = 1;
  v2 = 0;
  v3 = 5;
  v4 = 1;
  word_1009EED60 = sub_100428478(&v1);
  v1 = 6;
  v2 = 0;
  v3 = 2;
  v4 = 1;
  word_1009EED62 = sub_100428478(&v1);
  v1 = 2304;
  v2 = 1;
  LOBYTE(v3) = 0;
  v4 = 0;
  result = sub_100428478(&v1);
  word_1009EED64 = result;
  return result;
}

double sub_10019EE90(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = a2;
  *(a1 + 24) = 850045863;
  result = 0.0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0;
  *a1 = off_10099A4B8;
  return result;
}

void sub_10019EED0(uint64_t a1, uint64_t a2)
{
  std::mutex::lock((a1 + 24));
  v4 = *(a1 + 8);
  if (v4)
  {
    (*(*v4 + 24))(v4, a2);
  }

  else
  {
    v5 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004A1C50(v5);
    }
  }

  std::mutex::unlock((a1 + 24));
}

uint64_t sub_10019EF74(uint64_t a1)
{
  *a1 = off_100998DA8;
  std::mutex::~mutex((a1 + 24));
  return a1;
}

void sub_10019EFB8(uint64_t a1)
{
  *a1 = off_100998DA8;
  std::mutex::~mutex((a1 + 24));

  operator delete();
}

uint64_t sub_10019F06C(uint64_t a1, uint64_t a2, uint64_t *a3, void *a4)
{
  *a1 = off_10099A5F0;
  *(a1 + 8) = 850045863;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0;
  v8 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
  v9 = dispatch_queue_create("com.apple.RoseServiceProvider.RoseScheduler", v8);
  v10 = *a3;
  v11 = a3[1];
  *(a1 + 120) = v9;
  *(a1 + 128) = v10;
  *(a1 + 136) = v11;
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
    v10 = *(a1 + 128);
    v11 = *(a1 + 136);
  }

  *(a1 + 160) = 1018212795;
  *(a1 + 144) = a2;
  *(a1 + 152) = 0;
  *(a1 + 154) = 0;
  *(a1 + 156) = 0;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0;
  v15 = v10;
  v16 = v11;
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_1001A498C((a1 + 208), &v15, *(a1 + 120));
  if (v16)
  {
    sub_10000AD84(v16);
  }

  v12 = a4[1];
  *(a1 + 240) = *a4;
  *(a1 + 248) = v12;
  if (v12)
  {
    atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 256) = 0;
  *(a1 + 260) = 0;
  *(a1 + 264) = 0;
  *(a1 + 268) = 0;
  *(a1 + 272) = 0;
  if (!*a3)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "[RoseScheduler] database is nullptr. Normal opreation is not possible.");
    goto LABEL_14;
  }

  if (!a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "[RoseScheduler] Scheduler owner is nullptr. Normal opreation is not possible.");
LABEL_14:
  }

  return a1;
}

void sub_10019F230(_Unwind_Exception *a1)
{
  __cxa_free_exception(v4);
  v6 = v2[31];
  if (v6)
  {
    sub_10000AD84(v6);
  }

  v2[26] = off_10099AD90;
  v7 = v2[28];
  if (v7)
  {
    sub_10000AD84(v7);
  }

  std::condition_variable::~condition_variable(v3);
  v8 = v2[17];
  if (v8)
  {
    sub_10000AD84(v8);
  }

  std::mutex::~mutex(v1);
  _Unwind_Resume(a1);
}

void sub_10019F2A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (!a10)
  {
    JUMPOUT(0x10019F27CLL);
  }

  JUMPOUT(0x10019F278);
}

uint64_t sub_10019F2B4(uint64_t a1)
{
  *a1 = off_10099A5F0;
  v2 = *(a1 + 120);
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = *(a1 + 248);
  if (v3)
  {
    sub_10000AD84(v3);
  }

  *(a1 + 208) = off_10099AD90;
  v4 = *(a1 + 224);
  if (v4)
  {
    sub_10000AD84(v4);
  }

  std::condition_variable::~condition_variable((a1 + 160));
  v5 = *(a1 + 136);
  if (v5)
  {
    sub_10000AD84(v5);
  }

  std::mutex::~mutex((a1 + 8));
  return a1;
}

void sub_10019F358(uint64_t a1)
{
  sub_10019F2B4(a1);

  operator delete();
}

uint64_t sub_10019F390(uint64_t a1, void *a2)
{
  std::mutex::lock((a1 + 8));
  *(a1 + 72) = *a2;
  *(a1 + 80) = a2[1];
  *(a1 + 88) = a2[2];
  *(a1 + 96) = a2[3];
  *(a1 + 104) = a2[4];
  *(a1 + 112) = a2[5];
  v4 = sub_10019F424(a1, (a1 + 72));
  atomic_store(v4, (a1 + 152));
  std::mutex::unlock((a1 + 8));
  return v4;
}

uint64_t sub_10019F424(uint64_t a1, uint64_t *a2)
{
  if (!*a2)
  {
    sub_1004A1C94();
  }

  sub_1001A3F80(*a2, a1);
  v4 = a2[1];
  if (!v4)
  {
    sub_1004A1C94();
  }

  sub_1001A3F80(v4, a1);
  v5 = a2[2];
  if (!v5)
  {
    sub_1004A1C94();
  }

  sub_1001A3F80(v5, a1);
  v6 = a2[3];
  if (!v6)
  {
    sub_1004A1C94();
  }

  sub_1001A3F80(v6, a1);
  v7 = a2[4];
  if (!v7)
  {
    sub_1004A1C94();
  }

  sub_1001A3F80(v7, a1);
  v8 = a2[5];
  if (!v8)
  {
    sub_1004A1C94();
  }

  sub_1001A3F80(v8, a1);
  return 1;
}

uint64_t sub_10019F4C4(uint64_t a1)
{
  v2 = *(a1 + 80);
  v3 = *(a1 + 112);
  v10 = *(a1 + 88);
  v11 = *(a1 + 96);
  if (((*(**(a1 + 72) + 16))(*(a1 + 72)) & 1) == 0 && os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
  {
    sub_1004A1CC0();
  }

  __lk.__m_ = (a1 + 8);
  __lk.__owns_ = 1;
  std::mutex::lock((a1 + 8));
  v4.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
  v5 = v4.__d_.__rep_ + 10000000;
  while (1)
  {
    v6 = atomic_load((a1 + 153));
    if (v6)
    {
      break;
    }

    if (std::chrono::system_clock::now().__d_.__rep_ >= v5)
    {
      goto LABEL_16;
    }

    if (v4.__d_.__rep_ == -10000000)
    {
      v7.__d_.__rep_ = 0;
    }

    else if (v4.__d_.__rep_ < -9999999)
    {
      if (v5 >= 0xFFDF3B645A1CAC09)
      {
LABEL_14:
        v7.__d_.__rep_ = 1000 * (v4.__d_.__rep_ + 10000000);
        goto LABEL_15;
      }

      v7.__d_.__rep_ = 0x8000000000000000;
    }

    else
    {
      if (v5 <= 0x20C49BA5E353F7)
      {
        goto LABEL_14;
      }

      v7.__d_.__rep_ = 0x7FFFFFFFFFFFFFFFLL;
    }

LABEL_15:
    std::condition_variable::__do_timed_wait((a1 + 160), &__lk, v7);
    if (std::chrono::system_clock::now().__d_.__rep_ >= v5)
    {
LABEL_16:
      atomic_load((a1 + 153));
      break;
    }
  }

  v8 = atomic_load((a1 + 153));
  if (v8)
  {
    if (__lk.__owns_)
    {
      std::mutex::unlock(__lk.__m_);
    }

    if (((*(*v2 + 16))(v2) & 1) == 0 && os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004A1D28();
    }

    if (((*(*v3 + 16))(v3) & 1) == 0 && os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004A1D5C();
    }

    if (((*(*v10 + 16))(v10) & 1) == 0 && os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004A1D90();
    }

    if (((*(*v11 + 16))(v11) & 1) == 0 && os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004A1DC4();
    }
  }

  else
  {
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004A1CF4();
    }

    if (__lk.__owns_)
    {
      std::mutex::unlock(__lk.__m_);
    }
  }

  return v8 & 1;
}

void sub_10019F7C8(uint64_t a1, const void *a2)
{
  v4 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[AP Scheduler] Scheduler handleServiceRequestAsync", v6, 2u);
  }

  memcpy(v8, a2, sizeof(v8));
  v5 = *(a1 + 120);
  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  block[2] = sub_10019F8D0;
  block[3] = &unk_10099A630;
  block[4] = a1;
  dispatch_async(v5, block);
}

void sub_10019F8E0(uint64_t a1, __int16 *a2)
{
  v4 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(__p) = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "RoseScheduler::handleNewServiceRequestInternal", &__p, 2u);
    v4 = qword_1009F9820;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(__p) = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[AP Scheduler] Servicing dequeued service request. Passing message to AOP scheduler.", &__p, 2u);
    v4 = qword_1009F9820;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    sub_10019ADD8((a2 + 4));
    v5 = v11[1] >= 0 ? &__p : __p;
    *buf = 136315138;
    v32 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Request: %s", buf, 0xCu);
    if (SHIBYTE(v11[1]) < 0)
    {
      operator delete(__p);
    }
  }

  if (*(a2 + 3) != 2)
  {
    v7 = *a2;
    LODWORD(__p) = 1;
    WORD2(__p) = v7;
    memcpy(v11, a2 + 4, sizeof(v11));
    v12 = 1;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v18 = 0;
    v19 = 0;
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v26 = 0;
    v27 = 0;
    v28 = 0;
    v29 = 0;
    v30 = 0;
    v8 = sub_1001A09C8(a1, &__p);
    if (v22 == 1 && v20)
    {
      v21 = v20;
      operator delete(v20);
    }

    if (v18 == 1 && v16)
    {
      v17 = v16;
      operator delete(v16);
    }

    if ((v8 & 1) == 0)
    {
      goto LABEL_13;
    }

LABEL_23:
    v9 = *a2;
    LODWORD(__p) = 1;
    WORD2(__p) = v9;
    v11[0] = 13;
    LOBYTE(v11[1]) = 1;
    LOBYTE(v11[2]) = 0;
    LOBYTE(v11[9]) = 0;
    LOBYTE(v11[10]) = 0;
    LOBYTE(v11[13]) = 0;
    BYTE4(v11[13]) = 0;
    LOBYTE(v11[14]) = 0;
    LOBYTE(v11[15]) = 0;
    LOBYTE(v11[21]) = 0;
    LOBYTE(v11[22]) = 0;
    BYTE4(v11[26]) = 0;
    (*(**(a1 + 144) + 16))(*(a1 + 144), &__p);
    goto LABEL_24;
  }

  if (sub_1001A1088(a1, 0, a2))
  {
    goto LABEL_23;
  }

LABEL_13:
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
  {
    sub_1004A1DF8();
  }

  sub_1001A74B8(*(a1 + 128), *a2);
  v6 = *a2;
  LODWORD(__p) = 1;
  WORD2(__p) = v6;
  v11[0] = 9;
  LOBYTE(v11[1]) = 1;
  LOBYTE(v11[2]) = 0;
  LOBYTE(v11[9]) = 0;
  LOBYTE(v11[10]) = 0;
  LOBYTE(v11[13]) = 0;
  BYTE4(v11[13]) = 0;
  LOBYTE(v11[14]) = 0;
  LOBYTE(v11[15]) = 0;
  LOBYTE(v11[21]) = 0;
  LOBYTE(v11[22]) = 0;
  BYTE4(v11[26]) = 0;
  (*(**(a1 + 144) + 16))(*(a1 + 144), &__p);
LABEL_24:
  if (LOBYTE(v11[9]) == 1 && LOBYTE(v11[7]) == 1 && SHIBYTE(v11[6]) < 0)
  {
    operator delete(v11[4]);
  }
}

void sub_10019FC48(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  if (a19 == 1)
  {
    sub_1004A0FAC(&a9);
  }

  _Unwind_Resume(exception_object);
}

__n128 sub_10019FC9C(uint64_t a1, __int16 a2, __int128 *a3)
{
  v3 = a3[2];
  v4 = a3[4];
  v5 = a3[5];
  v14 = a3[3];
  v15 = v4;
  v6 = a3[6];
  v16 = v5;
  v17 = v6;
  v7 = a3[1];
  v11 = *a3;
  v12 = v7;
  v13 = v3;
  v8 = *(a1 + 120);
  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  block[2] = sub_10019FD60;
  block[3] = &unk_10099A650;
  block[4] = a1;
  v18 = a2;
  dispatch_async(v8, block);
  return result;
}

void sub_10019FD60(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 240);
  if (v3)
  {
    v4 = *(a1 + 152);
    v5 = sub_10041C3F0();
    sub_1002D9E80(v3, v4, v5);
  }

  v6 = *(a1 + 152);

  sub_10019FDC4(v2, v6, (a1 + 40));
}

void sub_10019FDC4(uint64_t a1, unsigned __int16 a2, __int128 *a3)
{
  v6 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "RoseScheduler::handleStartServiceInternal", buf, 2u);
  }

  sub_1001A70DC(*(a1 + 128), a2, v57);
  if (v58[712])
  {
    memcpy(__dst, v58, sizeof(__dst));
    if (__dst[3] > 9u)
    {
      return;
    }

    if (((1 << SLOBYTE(__dst[3])) & 0x26C) != 0)
    {
      if ((sub_1001A1088(a1, 1, __dst) & 1) == 0)
      {
        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
        {
          sub_1004A1F04();
        }

        *buf = 1;
        v29 = a2;
        v30[0] = 11;
        LOBYTE(v30[1]) = 1;
        LOBYTE(v30[2]) = 0;
        LOBYTE(v30[9]) = 0;
        LOBYTE(v30[10]) = 0;
        LOBYTE(v30[13]) = 0;
        BYTE4(v30[13]) = 0;
        LOBYTE(v30[14]) = 0;
        LOBYTE(v30[15]) = 0;
        LOBYTE(v30[21]) = 0;
        LOBYTE(v30[22]) = 0;
        BYTE4(v30[26]) = 0;
        (*(**(a1 + 144) + 16))(*(a1 + 144), buf);
        if (LOBYTE(v30[9]) == 1 && LOBYTE(v30[7]) == 1 && SHIBYTE(v30[6]) < 0)
        {
          v7 = v30[4];
LABEL_29:
          operator delete(v7);
        }
      }
    }

    else if (((1 << SLOBYTE(__dst[3])) & 0x192) != 0)
    {
      *buf = 2;
      v29 = a2;
      memcpy(v30, &v58[8], sizeof(v30));
      v31 = 1;
      v8 = a3[5];
      v36 = a3[4];
      v37 = v8;
      v38 = a3[6];
      v9 = a3[1];
      v32 = *a3;
      v33 = v9;
      v10 = a3[3];
      v34 = a3[2];
      v35 = v10;
      v39 = 1;
      v40 = 0;
      v43 = 0;
      v44 = 0;
      v47 = 0;
      v48 = 0;
      v49 = 0;
      v50 = 0;
      v51 = 0;
      v52 = 0;
      v53 = 0;
      v54 = 0;
      v55 = 0;
      if ((sub_1001A09C8(a1, buf) & 1) == 0)
      {
        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
        {
          sub_1004A1ED0();
        }

        v11 = 1;
        v12 = a2;
        v13 = 11;
        v14 = 1;
        v15 = 0;
        v19 = 0;
        v20 = 0;
        v21 = 0;
        v22 = 0;
        v23 = 0;
        v24 = 0;
        v25 = 0;
        v26 = 0;
        v27 = 0;
        (*(**(a1 + 144) + 16))(*(a1 + 144), &v11);
        if (v19 == 1 && v18 == 1 && v17 < 0)
        {
          operator delete(__p);
        }
      }

      if (v47 == 1 && v45)
      {
        v46 = v45;
        operator delete(v45);
      }

      if (v43 == 1)
      {
        v7 = v41;
        if (v41)
        {
          v42 = v41;
          goto LABEL_29;
        }
      }
    }

    else if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004A1E9C();
    }
  }

  else if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
  {
    sub_1004A1E2C();
  }
}

void sub_1001A0158(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37)
{
  if (a19 == 1)
  {
    sub_1004A0FAC(&a9);
  }

  sub_1001A0B88(&a37);
  _Unwind_Resume(a1);
}

void sub_1001A01AC(uint64_t a1, __int16 a2)
{
  v2 = *(a1 + 120);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 0x40000000;
  v3[2] = sub_1001A0224;
  v3[3] = &unk_10099A670;
  v3[4] = a1;
  v4 = a2;
  dispatch_async(v2, v3);
}

void sub_1001A0234(uint64_t a1, int a2)
{
  v4 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "RoseScheduler::handleStopServiceInternal", buf, 2u);
  }

  sub_1001A70DC(*(a1 + 128), a2, v45);
  if (v46[712])
  {
    memcpy(__dst, v46, sizeof(__dst));
    if (__dst[3] == 2)
    {
      if ((sub_1001A1088(a1, 2, __dst) & 1) == 0)
      {
        v5 = qword_1009F9820;
        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
        {
          sub_10019F030(__dst[3], buf);
          if (v24[1] >= 0)
          {
            v7 = buf;
          }

          else
          {
            v7 = *buf;
          }

          v8 = 136315394;
          *v9 = v7;
          *&v9[8] = 1024;
          *&v9[10] = a2;
          _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Failed to schedule %s ranging stop for ticket ID: %d", &v8, 0x12u);
          if (SHIBYTE(v24[1]) < 0)
          {
            operator delete(*buf);
          }
        }

        *buf = 1;
        *&buf[4] = a2;
        v24[0] = 10;
        LOBYTE(v24[1]) = 1;
        LOBYTE(v24[2]) = 0;
        LOBYTE(v24[9]) = 0;
        LOBYTE(v24[10]) = 0;
        LOBYTE(v24[13]) = 0;
        BYTE4(v24[13]) = 0;
        LOBYTE(v24[14]) = 0;
        LOBYTE(v24[15]) = 0;
        LOBYTE(v24[21]) = 0;
        LOBYTE(v24[22]) = 0;
        BYTE4(v24[26]) = 0;
        (*(**(a1 + 144) + 16))(*(a1 + 144), buf);
        if (LOBYTE(v24[9]) == 1 && LOBYTE(v24[7]) == 1 && SHIBYTE(v24[6]) < 0)
        {
          v6 = v24[4];
LABEL_26:
          operator delete(v6);
        }
      }
    }

    else
    {
      *buf = 3;
      *&buf[4] = a2;
      memcpy(v24, &v46[8], sizeof(v24));
      v25 = 1;
      v26 = 0;
      v27 = 0;
      v28 = 0;
      v31 = 0;
      v32 = 0;
      v35 = 0;
      v36 = 0;
      v37 = 0;
      v38 = 0;
      v39 = 0;
      v40 = 0;
      v41 = 0;
      v42 = 0;
      v43 = 0;
      if ((sub_1001A09C8(a1, buf) & 1) == 0)
      {
        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
        {
          sub_1004A1FE4();
        }

        v8 = 1;
        *v9 = a2;
        *&v9[4] = 10;
        v9[12] = 1;
        v10 = 0;
        v14 = 0;
        v15 = 0;
        v16 = 0;
        v17 = 0;
        v18 = 0;
        v19 = 0;
        v20 = 0;
        v21 = 0;
        v22 = 0;
        (*(**(a1 + 144) + 16))(*(a1 + 144), &v8);
        if (v14 == 1 && v13 == 1 && v12 < 0)
        {
          operator delete(__p);
        }
      }

      if (v35 == 1 && v33)
      {
        v34 = v33;
        operator delete(v33);
      }

      if (v31 == 1)
      {
        v6 = v29;
        if (v29)
        {
          v30 = v29;
          goto LABEL_26;
        }
      }
    }
  }

  else if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
  {
    sub_1004A1F74();
  }
}

void sub_1001A05CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, char a47)
{
  if (a47 == 1)
  {
    sub_1004A0FAC(&a37);
  }

  _Unwind_Resume(exception_object);
}

void sub_1001A0620(uint64_t a1, __int16 a2)
{
  v2 = *(a1 + 120);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 0x40000000;
  v3[2] = sub_1001A0698;
  v3[3] = &unk_10099A690;
  v3[4] = a1;
  v4 = a2;
  dispatch_async(v2, v3);
}

void sub_1001A06A8(uint64_t a1, int a2)
{
  v4 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[AP Scheduler] Canceling enqueued service request. Passing message to AOP scheduler.", buf, 2u);
  }

  sub_1001A70DC(*(a1 + 128), a2, v43);
  if (v44[712])
  {
    memcpy(__dst, v44, sizeof(__dst));
    if (__dst[3] == 2)
    {
      if ((sub_1001A1088(a1, 3, __dst) & 1) == 0 && os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
      {
        sub_1004A20F8();
      }
    }

    else
    {
      *buf = 4;
      v25 = a2;
      memcpy(v26, &v44[8], 0x240uLL);
      v26[576] = 1;
      v26[584] = 0;
      v26[696] = 0;
      v26[704] = 0;
      v29 = 0;
      v30 = 0;
      v33 = 0;
      v34 = 0;
      v35 = 0;
      v36 = 0;
      v37 = 0;
      v38 = 0;
      v39 = 0;
      v40 = 0;
      v41 = 0;
      v5 = sub_1001A09C8(a1, buf);
      v6 = qword_1009F9820;
      if (v5)
      {
        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
        {
          v7 = 67109120;
          v8 = a2;
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[AP Scheduler] Cancel Service: Success canceling service request, ticket ID: %d", &v7, 8u);
        }
      }

      else
      {
        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
        {
          sub_1004A2088();
        }

        v7 = 1;
        LOWORD(v8) = a2;
        v9 = 12;
        v10 = 1;
        v11 = 0;
        v15 = 0;
        v16 = 0;
        v17 = 0;
        v18 = 0;
        v19 = 0;
        v20 = 0;
        v21 = 0;
        v22 = 0;
        v23 = 0;
        (*(**(a1 + 144) + 16))(*(a1 + 144), &v7);
        if (v15 == 1 && v14 == 1 && v13 < 0)
        {
          operator delete(__p);
        }
      }

      if (v33 == 1 && v31)
      {
        v32 = v31;
        operator delete(v31);
      }

      if (v29 == 1 && v27)
      {
        v28 = v27;
        operator delete(v27);
      }
    }
  }

  else if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
  {
    sub_1004A2018();
  }
}

void sub_1001A0990(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37)
{
  if (a19 == 1)
  {
    sub_1004A0FAC(&a9);
  }

  sub_1001A0B88(&a37);
  _Unwind_Resume(a1);
}

uint64_t sub_1001A09C8(uint64_t a1, uint64_t a2)
{
  v2 = atomic_load((a1 + 152));
  if (v2)
  {
    std::mutex::lock((a1 + 8));
    v5 = *(a1 + 72);
    if (v5)
    {
      v6 = sub_1001A5458(v5, a2);
    }

    else
    {
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
      {
        sub_1004A219C();
      }

      v6 = 0;
    }

    std::mutex::unlock((a1 + 8));
  }

  else
  {
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004A2168();
    }

    return 0;
  }

  return v6;
}

__n128 sub_1001A0A94(uint64_t a1, uint64_t a2)
{
  memcpy((a1 + 40), (a2 + 40), 0x2C1uLL);
  sub_1001A3CE4(a1 + 752, (a2 + 752));
  sub_1001A3D7C(a1 + 792, (a2 + 792));
  result = *(a2 + 848);
  *(a1 + 861) = *(a2 + 861);
  *(a1 + 848) = result;
  return result;
}

void sub_1001A0AF8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 784) == 1)
  {
    sub_1004A21D0(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1001A0B18(uint64_t a1)
{
  if (*(a1 + 840) == 1)
  {
    v2 = *(a1 + 800);
    if (v2)
    {
      *(a1 + 808) = v2;
      operator delete(v2);
    }
  }

  if (*(a1 + 784) == 1)
  {
    v3 = *(a1 + 760);
    if (v3)
    {
      *(a1 + 768) = v3;

      operator delete(v3);
    }
  }
}

uint64_t sub_1001A0B88(uint64_t a1)
{
  if (*(a1 + 800) == 1)
  {
    v2 = *(a1 + 760);
    if (v2)
    {
      *(a1 + 768) = v2;
      operator delete(v2);
    }
  }

  if (*(a1 + 744) == 1)
  {
    v3 = *(a1 + 720);
    if (v3)
    {
      *(a1 + 728) = v3;
      operator delete(v3);
    }
  }

  return a1;
}

void sub_1001A0BE8(uint64_t a1, uint64_t *a2)
{
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
  {
    sub_1004A21E4();
  }

  v16 = *a2;
  v17 = *(a2 + 2);
  sub_1001916EC(v18, (a2 + 2));
  v4 = *(a2 + 6);
  v23 = *(a2 + 5);
  v24 = v4;
  v25[0] = *(a2 + 7);
  *(v25 + 13) = *(a2 + 125);
  v5 = *(a1 + 120);
  block[0] = _NSConcreteStackBlock;
  block[1] = 1174405120;
  block[2] = sub_1001A4014;
  block[3] = &unk_10099A708;
  block[4] = a1;
  block[5] = v16;
  v7 = v17;
  sub_1001916EC(&v8, v18);
  v13 = v23;
  v14 = v24;
  v15[0] = v25[0];
  *(v15 + 13) = *(v25 + 13);
  dispatch_async(v5, block);
  if (v12 == 1 && v11 == 1 && v10 < 0)
  {
    operator delete(__p);
  }

  if (v22 == 1 && v21 == 1 && v20 < 0)
  {
    operator delete(v19);
  }
}

void sub_1001A0D60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, char a42)
{
  if (a42 == 1)
  {
    sub_1004A2218(&a33);
  }

  _Unwind_Resume(exception_object);
}

void sub_1001A0D84(uint64_t a1, __int128 *a2)
{
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
  {
    sub_1004A21E4();
  }

  v6 = *a2;
  v7 = *(a2 + 2);
  v4 = *(a1 + 120);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 0x40000000;
  v5[2] = sub_1001A40B0;
  v5[3] = &unk_10099A738;
  v5[4] = a1;
  dispatch_async(v4, v5);
}

void sub_1001A0E48(uint64_t a1, __int128 *a2)
{
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
  {
    sub_1004A21E4();
  }

  v4 = a2[1];
  v7 = *a2;
  v8 = v4;
  v9 = a2[2];
  v5 = *(a1 + 120);
  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  block[2] = sub_1001A40C0;
  block[3] = &unk_10099A758;
  block[4] = a1;
  dispatch_async(v5, block);
}

void sub_1001A0F0C(uint64_t a1, __int128 *a2)
{
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
  {
    sub_1004A21E4();
  }

  v6 = *a2;
  v7 = *(a2 + 2);
  v4 = *(a1 + 120);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 0x40000000;
  v5[2] = sub_1001A40D0;
  v5[3] = &unk_10099A778;
  v5[4] = a1;
  dispatch_async(v4, v5);
}

void sub_1001A0FD0(uint64_t a1, uint64_t *a2)
{
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
  {
    sub_1004A21E4();
  }

  v4 = *a2;
  v5 = *(a1 + 120);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 0x40000000;
  v6[2] = sub_1001A40E0;
  v6[3] = &unk_10099A798;
  v6[4] = a1;
  v6[5] = v4;
  dispatch_async(v5, v6);
}

uint64_t sub_1001A1088(uint64_t a1, int a2, __int16 *a3)
{
  v6[0] = off_10099A7C8;
  v6[1] = a1;
  v6[3] = v6;
  v5[0] = off_10099A858;
  v5[1] = a1;
  v5[3] = v5;
  v3 = sub_1001A49C8(a1 + 208, a3, a2, v6, v5);
  sub_1001A4410(v5);
  sub_1001A41D4(v6);
  return v3;
}

void sub_1001A1154(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  sub_1001A4410(va);
  sub_1001A41D4(va1);
  _Unwind_Resume(a1);
}

void sub_1001A1170(uint64_t a1, uint64_t a2)
{
  v4 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[AP Scheduler] handleEventInternal AOPRoseEvent", buf, 2u);
  }

  v5 = *(a2 + 8);
  if (v5 > 2)
  {
    if (v5 == 3)
    {
      v8 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        *v12 = 0;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[AP Scheduler] received InfrastructureStatusUpdate event", v12, 2u);
      }

      if ((*(a2 + 72) & 1) == 0)
      {
        sub_1004A22AC();
      }

      sub_1001A21E4(a1, (a2 + 16));
    }

    else if (v5 == 4)
    {
      v7 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        *v11 = 0;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[AP Scheduler] received TimeConversionStateUpdate event", v11, 2u);
      }

      if ((*(a2 + 100) & 1) == 0)
      {
        sub_1004A2280();
      }

      sub_1001A24BC(a1, (a2 + 96));
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        v9 = qword_1009F9820;
        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
        {
          *v13 = 0;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[AP Scheduler] received SchedulingTaskStatusUpdate event", v13, 2u);
        }

        if ((*(a2 + 92) & 1) == 0)
        {
          sub_1004A22D8();
        }

        sub_1001A1654(a1, (a2 + 80));
        break;
      case 2:
        v6 = qword_1009F9820;
        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
        {
          *v14 = 0;
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[AP Scheduler] received SchedulerError event", v14, 2u);
        }

        if ((*(a2 + 140) & 1) == 0)
        {
          sub_1004A2304();
        }

        sub_1001A13E0(a1, (a2 + 104));
        break;
      case 0:
        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
        {
          sub_1004A224C();
        }

        exception = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(exception, "[AP Scheduler] handleEventInternal AOPRoseEvent unspecified type");
    }
  }
}

void sub_1001A13E0(uint64_t a1, unsigned __int16 *a2)
{
  v4 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
  {
    sub_1004A2330(a2, v4, v5, v6, v7, v8, v9, v10);
  }

  if (*(a2 + 28) == 1)
  {
    v11 = *a2;
    v30 = *(a2 + 1);
    v12 = *(a1 + 144);
    v14 = 6;
    LOBYTE(v15) = 0;
    v17 = 0;
    v18 = 0;
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v26 = 0;
    v27 = 0;
    v28 = 0;
    v31 = *(a2 + 8);
    v29 = v11;
    v32 = 1;
    (*(*v12 + 16))(v12, &v14);
    if (v22 == 1 && v21 == 1 && v20 < 0)
    {
      operator delete(__p);
    }
  }

  v13 = *a2;
  if (v13 <= 0x1A)
  {
    if (((1 << v13) & 0x48F801C) != 0)
    {
      v14 = 12;
      v15 = 0;
      v16 = 0;
      v33 = 0;
      v34 = 0;
      v35 = 0;
      v36 = 0;
      v39 = 0;
      v40 = 0;
      v43 = 0;
      v44 = 0;
      v45 = 0;
      v46 = 0;
      v47 = v13;
      v48 = 0;
      v49 = 0;
      v50 = 0;
      v51 = 0;
      if ((sub_1001A09C8(a1, &v14) & 1) == 0 && os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
      {
        sub_1004A2400();
      }

      if (v43 == 1 && v41)
      {
        v42 = v41;
        operator delete(v41);
      }

      if (v39 == 1)
      {
        if (v37)
        {
          v38 = v37;
          operator delete(v37);
        }
      }
    }

    else if (v13 == 22 && os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004A23CC();
    }
  }
}

void sub_1001A161C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20)
{
  if (a20 == 1)
  {
    sub_1004A0FAC(&a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1001A1654(uint64_t a1, unsigned __int16 *a2)
{
  v4 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    sub_100004A08(__p, off_10099AA80[*(a2 + 1)]);
    v5 = __p[23] >= 0 ? __p : *__p;
    v6 = *a2;
    *buf = 136315394;
    *&buf[4] = v5;
    *&buf[12] = 1024;
    *&buf[14] = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "++ RoseScheduler::handleServiceRequestStatusUpdate (%s), ticket id: %d ++", buf, 0x12u);
    if ((__p[23] & 0x80000000) != 0)
    {
      operator delete(*__p);
    }
  }

  v7 = 0;
  v8 = *(a2 + 1);
  if (v8 <= 3)
  {
    if (v8 > 1)
    {
      if (v8 == 2)
      {
        v21 = qword_1009F9820;
        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
        {
          *__p = 0;
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "[RoseScheduler] RangingFailedToStart", __p, 2u);
        }

        if (!sub_1001A75E8(*(a1 + 128), *a2, 0))
        {
          if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
          {
            sub_1004A2660(a2);
          }

          exception = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(exception, "RangingFailedToStart: Failed to update service request state to Inactive");
        }
      }

      else
      {
        v12 = qword_1009F9820;
        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
        {
          *__p = 0;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "[RoseScheduler] RangingStopped", __p, 2u);
        }

        if (!sub_1001A75E8(*(a1 + 128), *a2, 0))
        {
          if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
          {
            sub_1004A2580(a2);
          }

          v13 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v13, "RangingStopped: Failed to update service request state to Inactive");
        }
      }

LABEL_47:
      v7 = 0;
      v16 = 0;
LABEL_48:
      v15 = 1;
LABEL_49:
      sub_1001A70DC(*(a1 + 128), *a2, __p);
      v22 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        sub_100004A08(buf, off_10099AA80[*(a2 + 1)]);
        v23 = (buf[23] & 0x80u) == 0 ? buf : *buf;
        v24 = *a2;
        *v62 = 136315394;
        v63 = v23;
        v64 = 1024;
        v65 = v24;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "#coex,RoseScheduler::handleServiceRequestStatusUpdate,shouldUpdateCoexProxy- event_type(%s), ticket_id(%d)", v62, 0x12u);
        if (buf[23] < 0)
        {
          operator delete(*buf);
        }
      }

      if (v53 == 1)
      {
        memcpy(buf, &__p[8], sizeof(buf));
        v25 = sub_10019AC60(&buf[8]);
        v26 = 9;
        if ((v25 & 0x100) == 0)
        {
          v26 = 0;
        }

        v27 = v26 | v25 & 0x100;
        if (v25)
        {
          v28 = 261;
        }

        else
        {
          v28 = v27;
        }
      }

      else
      {
        v28 = 0;
      }

      sub_1001A355C(a1, 2, v28);
      if (v16)
      {
        if (!sub_1001A79E4(*(a1 + 128)) && !sub_1001A7AD0(*(a1 + 128)))
        {
          goto LABEL_81;
        }

        *__p = 1;
        __p[8] = 0;
        __p[16] = 0;
        if ((sub_1001A3600(a1, __p) & 1) != 0 || !os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_81;
        }
      }

      else
      {
        if (!v15)
        {
          goto LABEL_81;
        }

        if (sub_1001A79E4(*(a1 + 128)))
        {
          goto LABEL_81;
        }

        if (sub_1001A7AD0(*(a1 + 128)))
        {
          goto LABEL_81;
        }

        *__p = 2;
        __p[8] = 0;
        __p[16] = 0;
        if ((sub_1001A3600(a1, __p) & 1) != 0 || !os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_81;
        }
      }

      sub_1004A27B0();
      goto LABEL_81;
    }

    if (!v8)
    {
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_FAULT))
      {
        sub_1004A24D0();
      }

      v19 = *a2;
      v20 = *(a1 + 120);
      *__p = _NSConcreteStackBlock;
      *&__p[8] = 0x40000000;
      *&__p[16] = sub_1001A0698;
      *&__p[24] = &unk_10099A690;
      *&__p[32] = a1;
      *&__p[40] = v19;
      dispatch_async(v20, __p);
      goto LABEL_43;
    }

    if (v8 != 1)
    {
      goto LABEL_81;
    }

    v10 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      *__p = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[RoseScheduler] RangingDidStart", __p, 2u);
    }

    if (!sub_1001A75E8(*(a1 + 128), *a2, 1))
    {
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
      {
        sub_1004A26D0(a2);
      }

      v11 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v11, "RangingDidStart: Failed to update service request state to Active");
    }

LABEL_33:
    v7 = 0;
    v15 = 0;
    v16 = 1;
    goto LABEL_49;
  }

  if (v8 > 5)
  {
    if (v8 != 6)
    {
      if (v8 != 14)
      {
        if ((v8 - 7) < 7)
        {
          if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
          {
            sub_1004A2434(v8);
          }

          v37 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v37, "RoseScheduler::handleServiceRequestStatusUpdate got unexpected status update");
        }

        goto LABEL_81;
      }

      v9 = qword_1009F9820;
      v7 = 0;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        *__p = 0;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[RoseScheduler] TriggerCommandUpdated", __p, 2u);
LABEL_43:
        v7 = 0;
      }

LABEL_81:
      *&buf[4] = *a2;
      v30 = *(a2 + 2);
      *buf = 1;
      *&buf[12] = v30;
      buf[16] = 1;
      buf[24] = 0;
      buf[80] = 0;
      buf[88] = 0;
      buf[112] = 0;
      buf[116] = 0;
      buf[120] = 0;
      buf[128] = 0;
      buf[176] = 0;
      buf[184] = 0;
      buf[220] = 0;
      (*(**(a1 + 144) + 16))(*(a1 + 144), buf);
      if (v7)
      {
        v31 = sub_1001A7894(*(a1 + 128));
        v32 = sub_1001A7BBC(*(a1 + 128));
        if (!v31 && v32 <= 1 && *(a1 + 260) == 1)
        {
          v33 = qword_1009F9820;
          if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
          {
            *__p = 0;
            _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "[RoseScheduler] No active service requests, Informing AOP proxy object that UCM had received a R2 GPIO trigger blanking request", __p, 2u);
            if ((*(a1 + 260) & 1) == 0)
            {
              sub_1000195BC();
            }
          }

          v34 = *(a1 + 256);
          *__p = 15;
          *&__p[4] = 0;
          __p[8] = 0;
          __p[584] = 0;
          __p[592] = 0;
          __p[704] = 0;
          LOBYTE(v52) = 0;
          v55 = 0;
          LOBYTE(v56) = 0;
          v59 = 0;
          *v60 = 0;
          v60[2] = 0;
          v60[5] = 0;
          *&v60[6] = 0;
          *&v60[8] = v34;
          v60[12] = 1;
          v60[16] = 0;
          v60[20] = 0;
          v35 = dispatch_time(0, 50000000);
          v36 = *(a1 + 120);
          block[0] = _NSConcreteStackBlock;
          block[1] = 1174405120;
          block[2] = sub_1001A36CC;
          block[3] = &unk_10099A6B0;
          block[4] = a1;
          memcpy(v41, __p, sizeof(v41));
          sub_1001A3CE4(&v42, &v52);
          sub_1001A3D7C(&v46, &v56);
          *&v50[13] = *&v60[13];
          *v50 = *v60;
          dispatch_after(v35, v36, block);
          if (v49 == 1 && v47)
          {
            v48 = v47;
            operator delete(v47);
          }

          if (v45 == 1 && v43)
          {
            v44 = v43;
            operator delete(v43);
          }

          if (v59 == 1 && v57)
          {
            v58 = v57;
            operator delete(v57);
          }

          if (v55 == 1 && v53)
          {
            v54 = v53;
            operator delete(v53);
          }
        }
      }

      if (buf[80] == 1 && buf[64] == 1 && buf[63] < 0)
      {
        operator delete(*&buf[40]);
      }

      return;
    }

    v17 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      *__p = 0;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "[RoseScheduler] JobStop", __p, 2u);
    }

    if (!sub_1001A75E8(*(a1 + 128), *a2, 0))
    {
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
      {
        sub_1004A25F0(a2);
      }

      v18 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v18, "JobStop: Failed to update service request state to Inactive");
    }

    goto LABEL_47;
  }

  if (v8 != 4)
  {
    v14 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      *__p = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "[RoseScheduler] JobStart", __p, 2u);
    }

    if (!sub_1001A75E8(*(a1 + 128), *a2, 1))
    {
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
      {
        sub_1004A2740(a2);
      }

      v38 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v38, "JobStart: Failed to update service request state to Active");
    }

    goto LABEL_33;
  }

  v29 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    *__p = 0;
    _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "[RoseScheduler] RequestInvalidated", __p, 2u);
  }

  if (sub_1001A75E8(*(a1 + 128), *a2, 0))
  {
    v16 = 0;
    v7 = 1;
    goto LABEL_48;
  }

  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
  {
    sub_1004A2510(a2);
  }
}

void sub_1001A21E4(uint64_t a1, int *a2)
{
  v4 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    sub_100004A08(__p, off_10099A9D0[*a2]);
    v5 = v10 >= 0 ? __p : __p[0];
    *buf = 136315138;
    v16[0] = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "RoseScheduler::handleRoseInfrastructureStatusUpdate, status: %s", buf, 0xCu);
    if (v10 < 0)
    {
      operator delete(__p[0]);
    }
  }

  v6 = *a2;
  if (*a2 <= 3)
  {
    if (v6 != 1)
    {
      if (v6 == 3)
      {
        std::mutex::lock((a1 + 8));
        atomic_store(1u, (a1 + 153));
        std::condition_variable::notify_one((a1 + 160));
        std::mutex::unlock((a1 + 8));
      }

      else if (!v6)
      {
        sub_1004A27E4();
      }

      goto LABEL_14;
    }

LABEL_13:
    atomic_store(0, (a1 + 153));
    goto LABEL_14;
  }

  if (v6 == 5 || v6 == 6)
  {
    goto LABEL_13;
  }

  if (v6 == 4)
  {
    sub_1004A2810();
  }

LABEL_14:
  *buf = *a2;
  sub_100191768(v16 + 4, (a2 + 2));
  v19 = *(a2 + 6);
  v7 = *buf;
  if (*buf == 3)
  {
    if (*(a1 + 154))
    {
      v7 = 3;
    }

    else
    {
      v8 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(__p[0]) = 0;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "NB not available, Ready to Ready_UWB", __p, 2u);
      }

      v7 = 4;
      *buf = 4;
      LODWORD(v19) = 4;
      BYTE4(v19) = 1;
    }
  }

  *(a1 + 156) = v7;
  sub_1001A3F08(__p, buf);
  (*(**(a1 + 144) + 16))(*(a1 + 144), __p);
  if (v14 == 1 && v13 == 1 && v12 < 0)
  {
    operator delete(v11);
  }

  if (v18 == 1 && v17 < 0)
  {
    operator delete(*(&v16[1] + 4));
  }
}

void sub_1001A245C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, char a20, uint64_t a21, char a22)
{
  if (a22 == 1 && a20 == 1 && a19 < 0)
  {
    operator delete(__p);
  }

  if (*(v22 - 72) == 1 && *(v22 - 73) < 0)
  {
    operator delete(*(v22 - 96));
  }

  _Unwind_Resume(exception_object);
}

void sub_1001A24BC(uint64_t a1, int *a2)
{
  v4 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *a2 ? "Ready" : "NotReady";
    sub_100004A08(__p, v5);
    v6 = v9 >= 0 ? __p : __p[0];
    *buf = 136315138;
    v24 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "RoseScheduler::handleTimeConversionStateUpdate (%s)", buf, 0xCu);
    if (v9 < 0)
    {
      operator delete(__p[0]);
    }
  }

  LODWORD(__p[0]) = 4;
  BYTE4(__p[0]) = 0;
  v8 = 0;
  v10 = 0;
  v14 = 0;
  v15 = 0;
  v16 = 0;
  v17 = *a2;
  v18 = 1;
  v19 = 0;
  v20 = 0;
  v21 = 0;
  v22 = 0;
  (*(**(a1 + 144) + 16))(*(a1 + 144), __p);
  if (v14 == 1 && v13 == 1 && v12 < 0)
  {
    operator delete(v11);
  }
}

void sub_1001A2650(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  if (a19 == 1)
  {
    sub_1004A0FAC(&a9);
  }

  _Unwind_Resume(exception_object);
}

void sub_1001A2678(uint64_t a1, uint64_t a2)
{
  v4 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[AP Scheduler] handleEventInternal RoseBluetoothEvent", v6, 2u);
  }

  v5 = *(a2 + 8);
  if (v5)
  {
    if (v5 == 1)
    {
      if ((*(a2 + 18) & 1) == 0)
      {
        sub_1004A2870();
      }

      sub_1001A273C(a1, (a2 + 12));
    }
  }

  else if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
  {
    sub_1004A283C();
  }
}

void sub_1001A273C(uint64_t a1, unsigned __int16 *a2)
{
  v2 = *a2 | (*(a2 + 1) << 16);
  v3 = 1;
  v4 = v2;
  v5 = 1;
  if ((sub_1001A3A80(a1, &v3) & 1) == 0 && os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
  {
    sub_1004A289C();
  }
}

void sub_1001A27DC(uint64_t a1, __int128 *a2)
{
  v4 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v22) = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[AP Scheduler] handleEventInternal RoseCoexEvent", &v22, 2u);
  }

  v5 = *(a2 + 2);
  if (v5 > 2)
  {
    if (v5 == 3)
    {
      v17 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v22) = 0;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "[AP Scheduler] handleEventInternal RoseCoexEvent: R2NbChannelIdxToTriggerGpioBlankingChanged", &v22, 2u);
      }

      if (*(a2 + 4) == 2 && *(a2 + 22) == 1 && *(a2 + 26) == 1)
      {
        if (*(a1 + 264) == 2)
        {
          v18 = *(a2 + 10) | (*(a2 + 12) << 16);
          v22 = 16;
          LOWORD(v23) = 0;
          BYTE4(v23) = 0;
          v40 = 0;
          v41 = 0;
          v42 = 0;
          v43 = 0;
          v46 = 0;
          v47 = 0;
          v50 = 0;
          v51 = 0;
          v52 = 0;
          v53 = 0;
          v54 = 0;
          LOBYTE(v55) = 0;
          v56 = 0;
          v57 = v18;
          v58 = 1;
          if ((sub_1001A09C8(a1, &v22) & 1) == 0 && os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
          {
            sub_1004A28D0();
          }

          sub_1001A0B88(&v22);
        }

        else
        {
          v20 = qword_1009F9820;
          if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(v22) = 0;
            _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "GPIO blanking was not triggered on NB, Caching NB channel indices to request blanking when pending set config request goes through.", &v22, 2u);
            if ((*(a2 + 22) & 1) == 0)
            {
              sub_1000195BC();
            }
          }

          if ((*(a2 + 26) & 1) == 0)
          {
            sub_1000195BC();
          }

          v21 = *(a2 + 10) | (*(a2 + 12) << 16);
          if ((*(a1 + 272) & 1) == 0)
          {
            *(a1 + 272) = 1;
          }

          *(a1 + 268) = v21;
        }
      }

      else if (*(a1 + 272) == 1)
      {
        *(a1 + 272) = 0;
      }

      return;
    }

    if (v5 != 4)
    {
      return;
    }

    v10 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v22) = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[AP Scheduler] handleEventInternal RoseCoexEvent: RadioStateUpdate", &v22, 2u);
    }

    v22 = 5;
    LOBYTE(v23) = 0;
    v24 = 0;
    v25 = 0;
    v29 = 0;
    v30 = 0;
    v31 = 0;
    v32 = 0;
    v33 = 0;
    v11 = a2[2];
    v35 = a2[1];
    v36 = v11;
    v34 = *a2;
    v37 = 1;
    v38 = 0;
    v39 = 0;
    (*(**(a1 + 144) + 16))(*(a1 + 144), &v22);
    if (v29 != 1 || v28 != 1 || (v27 & 0x80000000) == 0)
    {
      return;
    }

    v12 = v26;
LABEL_52:
    operator delete(v12);
    return;
  }

  if (v5 < 2)
  {
    v6 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      v7 = "UCMDutyCycleAllowance";
      if (!v5)
      {
        v7 = "Unspecified";
      }

      v22 = 136315138;
      v23 = v7;
      v8 = "Not expected to handle coex event %s";
      v9 = v6;
      goto LABEL_23;
    }

    return;
  }

  if (v5 != 2)
  {
    return;
  }

  v13 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v22) = 0;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "[AP Scheduler] handleEventInternal RoseCoexEvent: R2ChannelToTriggerGpioBlankingChanged", &v22, 2u);
  }

  *(a1 + 256) = *(a2 + 4);
  *(a1 + 260) = 1;
  v14 = sub_1001A7C5C(*(a1 + 128));
  v15 = qword_1009F9820;
  v16 = os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT);
  if (!v14)
  {
    if (v16)
    {
      LOWORD(v22) = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "[AP Scheduler] handleEventInternal Informing AOP proxy object that UCM had received a R2 GPIO trigger blanking request", &v22, 2u);
    }

    if ((*(a1 + 260) & 1) == 0)
    {
      sub_1004A2904();
    }

    v19 = *(a1 + 256);
    v22 = 15;
    LOWORD(v23) = 0;
    BYTE4(v23) = 0;
    v40 = 0;
    v41 = 0;
    v42 = 0;
    v43 = 0;
    v46 = 0;
    v47 = 0;
    v50 = 0;
    v51 = 0;
    v52 = 0;
    v53 = 0;
    v54 = 0;
    v55 = v19;
    v56 = 1;
    LOBYTE(v57) = 0;
    v58 = 0;
    if (sub_1001A09C8(a1, &v22))
    {
      if ((*(a1 + 260) & 1) == 0)
      {
        sub_1000195BC();
      }

      *(a1 + 264) = *(a1 + 256);
    }

    else if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004A2930();
    }

    if (*(a1 + 260) == 1)
    {
      *(a1 + 260) = 0;
    }

    if (v50 == 1 && __p)
    {
      v49 = __p;
      operator delete(__p);
    }

    if (v46 != 1)
    {
      return;
    }

    v12 = v44;
    if (!v44)
    {
      return;
    }

    v45 = v44;
    goto LABEL_52;
  }

  if (v16)
  {
    v22 = 134217984;
    v23 = v14;
    v8 = "[AP Scheduler] handleEventInternal Service requests count = %zu, cannot send a set config now to trigger GPIO blanking.";
    v9 = v15;
LABEL_23:
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, v8, &v22, 0xCu);
  }
}

void sub_1001A2D78()
{
  v0 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_DEFAULT, "[AP Scheduler] handleEventInternal RoseSecureElementEvent", v1, 2u);
  }
}

void sub_1001A2DE0(uint64_t a1, int *a2)
{
  v4 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *a2;
    if (v5 > 5)
    {
      v6 = "Unknown";
    }

    else
    {
      v6 = off_10099AA08[v5];
    }

    v7 = v33;
    sub_100004A08(v33, v6);
    if (v36 < 0)
    {
      v7 = *v33;
    }

    v8 = a2[1];
    if (v8 > 8)
    {
      v9 = "Unknown";
    }

    else
    {
      v9 = off_10099AA38[v8];
    }

    sub_100004A08(&__p, v9);
    if (SHIBYTE(v29) >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    *buf = 136315394;
    v70 = v7;
    v71 = 2080;
    v72 = p_p;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[RegulatoryEvent] type: %s, reason: %s", buf, 0x16u);
    if (SHIBYTE(v29) < 0)
    {
      operator delete(__p);
    }

    if (v36 < 0)
    {
      operator delete(*v33);
    }
  }

  v11 = 0;
  v12 = *a2;
  if (*a2 > 2)
  {
    switch(v12)
    {
      case 3:
        v17 = qword_1009F9820;
        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
        {
          *v33 = 0;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "[RegulatoryEvent] Narrowband disallowed", v33, 2u);
        }

        *(a1 + 154) = 0;
        v11 = 1;
        break;
      case 4:
        v18 = qword_1009F9820;
        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
        {
          *v33 = 0;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "[RegulatoryEvent] Narrowband allowed", v33, 2u);
        }

        v11 = 1;
        *(a1 + 154) = 1;
        break;
      case 5:
        v13 = a2[1];
        if (*(a2 + 8) == 1 && v13 == 8)
        {
          if (*(a2 + 21) == 1)
          {
            v14 = *(a2 + 20);
            *v33 = 9;
            *&v33[4] = 0;
            v34 = 0;
            v51 = 0;
            v52 = 0;
            v53 = 0;
            v54 = 0;
            v57 = 0;
            v58 = 0;
            v61 = 0;
            LOBYTE(v62[0]) = v14;
            *(v62 + 1) = 1;
            v63 = 0;
            v64 = 0;
            v65 = 0;
            v66 = 0;
            v67 = 0;
            v68 = 0;
            sub_1001A09C8(a1, v33);
LABEL_48:
            if (v61 == 1 && v59)
            {
              v60 = v59;
              operator delete(v59);
            }

            if (v57 == 1 && v55)
            {
              v56 = v55;
              operator delete(v55);
            }

            goto LABEL_54;
          }

          goto LABEL_54;
        }

        v11 = 0;
        if (*(a2 + 8) && v13 == 3)
        {
          v19 = qword_1009F9820;
          if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
          {
            *v33 = 0;
            _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "NBConfigurationChanged due to Country Chagned", v33, 2u);
          }

          goto LABEL_22;
        }

        break;
    }
  }

  else
  {
    switch(v12)
    {
      case 0:
        if ((a2[2] & 1) == 0)
        {
          sub_1004A2964();
        }

        v15 = a2[1] - 1;
        if (v15 > 6)
        {
          v16 = 0;
        }

        else
        {
          v16 = *&asc_100563458[4 * v15];
        }

        sub_1001A3E20(v33, v16);
        sub_1001A09C8(a1, v33);
        goto LABEL_48;
      case 1:
        if ((a2[2] & 1) == 0)
        {
          sub_1004A2990();
        }

        *v33 = 10;
        *&v33[4] = 0;
        v34 = 0;
        v51 = 0;
        v52 = 0;
        v53 = 0;
        v54 = 0;
        v57 = 0;
        v58 = 0;
        v61 = 0;
        memset(v62, 0, 3);
        v63 = 0;
        v64 = 0;
        v65 = 0;
        v66 = 0;
        v67 = 0;
        v68 = 0;
        sub_1001A09C8(a1, v33);
        goto LABEL_48;
      case 2:
        if (*(a2 + 8) == 1)
        {
LABEL_22:
          *v33 = 11;
          *&v33[4] = 0;
          v34 = 0;
          v51 = 0;
          v52 = 0;
          v53 = 0;
          v54 = 0;
          v57 = 0;
          v58 = 0;
          v61 = 0;
          memset(v62, 0, 3);
          v63 = 0;
          v64 = 0;
          v65 = 0;
          v66 = 0;
          v67 = 0;
          v68 = 0;
          sub_1001A09C8(a1, v33);
          goto LABEL_48;
        }

LABEL_54:
        v11 = 0;
        break;
    }
  }

  v20 = *(a1 + 144);
  *v33 = 3;
  v33[4] = 0;
  v35 = 0;
  v37 = 0;
  v41 = 0;
  v43 = *(a2 + 2);
  v42 = *a2;
  v44 = 1;
  v45 = 0;
  v46 = 0;
  v47 = 0;
  v48 = 0;
  v49 = 0;
  v50 = 0;
  (*(*v20 + 16))(v20, v33);
  if (v41 == 1 && v40 == 1 && v39 < 0)
  {
    operator delete(v38);
  }

  if (v11)
  {
    v21 = *(a1 + 156);
    if (v21 == 3)
    {
      if (*(a1 + 154))
      {
        return;
      }

      v25 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        *v33 = 0;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Ready is switched to Ready_UWB because NB is not available", v33, 2u);
      }

      v23 = 0x100000004;
      v24 = 4;
    }

    else
    {
      if (v21 != 4 || *(a1 + 154) != 1)
      {
        return;
      }

      v22 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        *v33 = 0;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Ready_UWB is switched to Ready because NB is available", v33, 2u);
      }

      v23 = 0;
      v24 = 3;
    }

    *(a1 + 156) = v24;
    LODWORD(__p) = v24;
    v28 = 0;
    v31 = 0;
    v32 = v23;
    v26 = *(a1 + 144);
    sub_1001A3F08(v33, &__p);
    (*(*v26 + 16))(v26, v33);
    if (v41 == 1 && v40 == 1 && v39 < 0)
    {
      operator delete(v38);
    }

    if (v31 == 1 && v30 < 0)
    {
      operator delete(v29);
    }
  }
}

uint64_t sub_1001A355C(uint64_t result, int a2, __int16 a3)
{
  v3 = result;
  LOBYTE(v6) = 0;
  v8 = 0;
  v9 = 0;
  if (a2 == 2)
  {
    result = *(result + 128);
    if (!result)
    {
      return result;
    }

    if ((a3 & 0x100) != 0)
    {
      v9 = a3 | 0x100;
    }

    v5 = 2;
    v6 = sub_1001A7C64(result);
    v7 = v4;
    v8 = 1;
    return sub_1001A3B4C(v3, &v5);
  }

  if (a2 != 1)
  {
    sub_1004A29BC();
  }

  if ((a3 & 0x100) != 0)
  {
    v5 = 1;
    v9 = a3 | 0x100;
    return sub_1001A3B4C(v3, &v5);
  }

  return result;
}

uint64_t sub_1001A3600(uint64_t a1, uint64_t a2)
{
  v2 = atomic_load((a1 + 152));
  if (v2)
  {
    std::mutex::lock((a1 + 8));
    v5 = *(a1 + 80);
    if (v5)
    {
      v6 = sub_1001A4788(v5, a2);
    }

    else
    {
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
      {
        sub_1004A219C();
      }

      v6 = 0;
    }

    std::mutex::unlock((a1 + 8));
  }

  else
  {
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004A2168();
    }

    return 0;
  }

  return v6;
}

void sub_1001A36CC(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = sub_1001A7C5C(*(v2 + 128));
  if (v3)
  {
    v4 = v3;
    v5 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 134217984;
      v9 = v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[RoseScheduler] Service requests count = %zu, cannot send a set config now to trigger GPIO blanking.", &v8, 0xCu);
    }
  }

  else
  {
    v6 = sub_1001A09C8(v2, a1 + 40);
    if ((*(a1 + 860) & 1) == 0)
    {
      sub_1004A29E8();
    }

    v7 = *(a1 + 856);

    sub_1001A37EC(v2, v6, v7);
  }
}

void sub_1001A37EC(uint64_t a1, int a2, int a3)
{
  v3 = qword_1009F9820;
  if (a2)
  {
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v11) = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Successfully sent set config to trigger GPIO blanking on UCM event", &v11, 2u);
    }

    *(a1 + 264) = a3;
    if ((*(a1 + 260) & 1) == 0)
    {
      sub_1000195BC();
    }

    if (*(a1 + 256) == a3)
    {
      *(a1 + 260) = 0;
      if (a3 == 2 && *(a1 + 272) == 1)
      {
        v6 = qword_1009F9820;
        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
        {
          v7 = *(a1 + 268);
          v8 = *(a1 + 270);
          v11 = 67109376;
          v12 = v7;
          v13 = 1024;
          v14 = v8;
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[RoseScheduler] Sent setConfig to trigger GPIO blanking on NB, Informing AOP proxy object that UCM had received blanking request for NB channel indices %d -> %d", &v11, 0xEu);
          if ((*(a1 + 272) & 1) == 0)
          {
            sub_1000195BC();
          }
        }

        v9 = *(a1 + 268);
        v11 = 16;
        LOWORD(v12) = 0;
        LOBYTE(v13) = 0;
        v15 = 0;
        v16 = 0;
        v17 = 0;
        v18 = 0;
        v21 = 0;
        v22 = 0;
        v25 = 0;
        v26 = 0;
        v27 = 0;
        v28 = 0;
        v29 = 0;
        v30 = 0;
        v31 = 0;
        v32 = v9;
        v33 = 1;
        if ((sub_1001A09C8(a1, &v11) & 1) == 0 && os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
        {
          sub_1004A28D0();
        }

        if (*(a1 + 272) == 1)
        {
          *(a1 + 272) = 0;
        }

        if (v25 == 1 && __p)
        {
          v24 = __p;
          operator delete(__p);
        }

        if (v21 == 1)
        {
          if (v19)
          {
            v20 = v19;
            operator delete(v19);
          }
        }
      }
    }

    else
    {
      v10 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v11) = 0;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Potentially got a new UCM while sending the previous set config, not resetting pending channel", &v11, 2u);
      }
    }
  }

  else if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
  {
    sub_1004A2A14();
  }
}

uint64_t sub_1001A3A80(uint64_t a1, uint64_t a2)
{
  v2 = atomic_load((a1 + 152));
  if (v2)
  {
    std::mutex::lock((a1 + 8));
    v5 = *(a1 + 72);
    if (v5)
    {
      v6 = sub_1001A54E0(v5, a2);
    }

    else
    {
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
      {
        sub_1004A219C();
      }

      v6 = 0;
    }

    std::mutex::unlock((a1 + 8));
  }

  else
  {
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004A2168();
    }

    return 0;
  }

  return v6;
}

uint64_t sub_1001A3B4C(uint64_t a1, uint64_t a2)
{
  v2 = atomic_load((a1 + 152));
  if (v2)
  {
    std::mutex::lock((a1 + 8));
    v5 = *(a1 + 88);
    if (v5)
    {
      v6 = sub_100182D74(v5, a2);
    }

    else
    {
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
      {
        sub_1004A219C();
      }

      v6 = 0;
    }

    std::mutex::unlock((a1 + 8));
  }

  else
  {
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004A2168();
    }

    return 0;
  }

  return v6;
}

uint64_t sub_1001A3C1C(uint64_t a1, uint64_t a2)
{
  *a1 = 6;
  *(a1 + 4) = *a2;
  *(a1 + 8) = 0;
  *(a1 + 584) = 0;
  *(a1 + 592) = 0;
  *(a1 + 704) = 0;
  *(a1 + 712) = 0;
  *(a1 + 744) = 0;
  *(a1 + 752) = *a2;
  *(a1 + 768) = 0;
  *(a1 + 776) = 0;
  *(a1 + 760) = 0;
  sub_100009A48(a1 + 760, *(a2 + 8), *(a2 + 16), *(a2 + 16) - *(a2 + 8));
  *(a1 + 784) = *(a2 + 32);
  *(a1 + 800) = 1;
  *(a1 + 808) = 0;
  *(a1 + 810) = 0;
  *(a1 + 813) = 0;
  *(a1 + 814) = 0;
  *(a1 + 816) = 0;
  *(a1 + 820) = 0;
  *(a1 + 824) = 0;
  *(a1 + 828) = 0;
  return a1;
}

void sub_1001A3CC4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 744) == 1)
  {
    sub_1004A2A48(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1001A3CE4(uint64_t a1, int *a2)
{
  *a1 = 0;
  *(a1 + 32) = 0;
  if (*(a2 + 32) == 1)
  {
    v3 = *a2;
    *(a1 + 8) = 0;
    *a1 = v3;
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    sub_100009A48(a1 + 8, *(a2 + 1), *(a2 + 2), *(a2 + 2) - *(a2 + 1));
    *(a1 + 32) = 1;
  }

  return a1;
}

void sub_1001A3D54(_Unwind_Exception *exception_object)
{
  if (*(v1 + 32) == 1)
  {
    v4 = *v2;
    if (*v2)
    {
      *(v1 + 16) = v4;
      operator delete(v4);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1001A3D7C(uint64_t a1, __int16 *a2)
{
  *a1 = 0;
  *(a1 + 48) = 0;
  if (*(a2 + 48) == 1)
  {
    v4 = *a2;
    *(a1 + 8) = 0;
    *a1 = v4;
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    sub_100009A48(a1 + 8, *(a2 + 1), *(a2 + 2), *(a2 + 2) - *(a2 + 1));
    *(a1 + 32) = *(a2 + 2);
    *(a1 + 48) = 1;
  }

  return a1;
}

void sub_1001A3DF8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 48) == 1)
  {
    v4 = *v2;
    if (*v2)
    {
      *(v1 + 16) = v4;
      operator delete(v4);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1001A3E20(uint64_t result, unsigned int a2)
{
  *result = a2;
  *(result + 4) = 0;
  *(result + 8) = 0;
  *(result + 584) = 0;
  *(result + 592) = 0;
  *(result + 704) = 0;
  *(result + 712) = 0;
  *(result + 744) = 0;
  *(result + 752) = 0;
  *(result + 800) = 0;
  *(result + 808) = 0;
  *(result + 810) = 0;
  *(result + 813) = 0;
  *(result + 814) = 0;
  *(result + 816) = 0;
  *(result + 820) = 0;
  *(result + 824) = 0;
  *(result + 828) = 0;
  if (a2 > 0xE || ((1 << a2) & 0x6D00) == 0)
  {
    __assert_rtn("AOPRoseCommandMessage", "AOPRoseCommandMessage.h", 68, "message_type == AOPRoseCommandMessageType::SystemOn || message_type == AOPRoseCommandMessageType::RefreshConfiguration || message_type == AOPRoseCommandMessageType::LPEMEnable || message_type == AOPRoseCommandMessageType::SystemOff_AirplaneMode || message_type == AOPRoseCommandMessageType::SystemOff_RestrictedRegion");
  }

  return result;
}

void sub_1001A3ECC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 800) == 1)
  {
    sub_1004A21D0(v1);
  }

  if (*(v1 + 744) == 1)
  {
    v3 = *(v1 + 720);
    if (v3)
    {
      *(v1 + 728) = v3;
      operator delete(v3);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1001A3F08(uint64_t a1, uint64_t a2)
{
  *a1 = 2;
  *(a1 + 4) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = *a2;
  sub_100191768((a1 + 32), a2 + 8);
  *(a1 + 72) = *(a2 + 48);
  *(a1 + 80) = 1;
  *(a1 + 88) = 0;
  *(a1 + 112) = 0;
  *(a1 + 116) = 0;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 176) = 0;
  *(a1 + 184) = 0;
  *(a1 + 220) = 0;
  return a1;
}

void sub_1001A3F80(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "[ProxyObjectBase] Given nullptr event consumer.");
  }

  std::mutex::lock((a1 + 24));
  *(a1 + 8) = a2;

  std::mutex::unlock((a1 + 24));
}

__n128 sub_1001A4024(uint64_t a1, uint64_t a2)
{
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  sub_1001916EC(a1 + 56, a2 + 56);
  result = *(a2 + 120);
  v5 = *(a2 + 136);
  v6 = *(a2 + 152);
  *(a1 + 165) = *(a2 + 165);
  *(a1 + 152) = v6;
  *(a1 + 136) = v5;
  *(a1 + 120) = result;
  return result;
}

void sub_1001A4084(uint64_t a1)
{
  if (*(a1 + 112) == 1 && *(a1 + 96) == 1 && *(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }
}

uint64_t sub_1001A4154(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_10099A7C8;
  a2[1] = v2;
  return result;
}

uint64_t sub_1001A4188(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1001A41D4(uint64_t a1)
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

uint64_t sub_1001A42C4(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_10099A858;
  a2[1] = v2;
  return result;
}

uint64_t sub_1001A42F8(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1001A4344(uint64_t a1)
{
  v1 = atomic_load((a1 + 152));
  if (v1)
  {
    std::mutex::lock((a1 + 8));
    if (*(a1 + 104))
    {
      v3 = sub_1001A8770();
    }

    else
    {
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
      {
        sub_1004A219C();
      }

      v3 = 0;
    }

    std::mutex::unlock((a1 + 8));
  }

  else
  {
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004A2168();
    }

    return 0;
  }

  return v3;
}

uint64_t sub_1001A4410(uint64_t a1)
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

double sub_1001A44E8(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = a2;
  *(a1 + 24) = 850045863;
  result = 0.0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0;
  *a1 = off_10099AB08;
  return result;
}

uint64_t sub_1001A4528(uint64_t a1)
{
  *a1 = off_100998DA8;
  std::mutex::~mutex((a1 + 24));
  return a1;
}

void sub_1001A456C(uint64_t a1)
{
  *a1 = off_100998DA8;
  std::mutex::~mutex((a1 + 24));

  operator delete();
}

void sub_1001A45D0(uint64_t a1, uint64_t a2)
{
  std::mutex::lock((a1 + 24));
  v4 = *(a1 + 8);
  if (v4)
  {
    (*(*v4 + 48))(v4, a2);
  }

  std::mutex::unlock((a1 + 24));
}

double sub_1001A46A4(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = a2;
  *(a1 + 24) = 850045863;
  result = 0.0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *a1 = off_10099AC40;
  return result;
}

uint64_t sub_1001A46E0(uint64_t a1)
{
  *a1 = off_100998DA8;
  std::mutex::~mutex((a1 + 24));
  return a1;
}

void sub_1001A4724(uint64_t a1)
{
  *a1 = off_100998DA8;
  std::mutex::~mutex((a1 + 24));

  operator delete();
}

uint64_t sub_1001A4788(uint64_t a1, uint64_t a2)
{
  if (!*(a1 + 16))
  {
    sub_1004A2A60();
  }

  std::mutex::lock((a1 + 24));
  v4 = (*(**(a1 + 16) + 56))(*(a1 + 16), a2);
  std::mutex::unlock((a1 + 24));
  return v4;
}

void sub_1001A4810(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == 1)
  {
    if (!*(a1 + 88))
    {
      sub_1004A2AB8();
    }

    if ((*(a2 + 192) & 1) == 0)
    {
      sub_1004A2A8C();
    }

    std::mutex::lock((a1 + 24));
    if ((*(a2 + 192) & 1) == 0)
    {
      sub_1000195BC();
    }

    v6 = *(a1 + 88);
    v7 = *(a2 + 96);
    v12[4] = *(a2 + 80);
    v12[5] = v7;
    v8 = *(a2 + 176);
    v12[9] = *(a2 + 160);
    v12[10] = v8;
    v9 = *(a2 + 144);
    v12[7] = *(a2 + 128);
    v12[8] = v9;
    v12[6] = *(a2 + 112);
    v10 = *(a2 + 64);
    v12[2] = *(a2 + 48);
    v12[3] = v10;
    v11 = *(a2 + 32);
    v12[0] = *(a2 + 16);
    v12[1] = v11;
    (*(*v6 + 24))(v6, v12);
    std::mutex::unlock((a1 + 24));
  }

  else if (!v2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "[MotionProxyObject] Ingest event of unspecified type.");
  }
}

void *sub_1001A498C(void *result, uint64_t *a2, uint64_t a3)
{
  v4 = *a2;
  v3 = a2[1];
  *result = off_10099AD90;
  result[1] = v4;
  result[2] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  result[3] = a3;
  return result;
}

uint64_t sub_1001A49C8(uint64_t a1, __int16 *a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a3 > 1)
  {
    if (a3 == 2)
    {
      sub_1001A51F4(v16, a4);
      v13 = sub_1001A528C(v15, a5);
      v9 = v16;
      v5 = sub_1001A4FC0(v13, a2, v16);
      v10 = v15;
      goto LABEL_10;
    }

    if (a3 == 3)
    {
      sub_1001A51F4(v22, a4);
      v11 = sub_1001A528C(v21, a5);
      v9 = v22;
      v5 = sub_1001A4BA8(v11, a2, v22);
      v10 = v21;
      goto LABEL_10;
    }
  }

  else
  {
    if (!a3)
    {
      sub_1001A51F4(v20, a4);
      v12 = sub_1001A528C(v19, a5);
      v9 = v20;
      v5 = sub_1001A4CE8(v12, a2, v20);
      v10 = v19;
      goto LABEL_10;
    }

    if (a3 == 1)
    {
      sub_1001A51F4(v18, a4);
      v8 = sub_1001A528C(v17, a5);
      v9 = v18;
      v5 = sub_1001A4E2C(v8, a2, v18);
      v10 = v17;
LABEL_10:
      sub_1001A4410(v10);
      sub_1001A41D4(v9);
    }
  }

  return v5 & 1;
}

void sub_1001A4B28(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  sub_1001A4410(va);
  sub_1001A41D4(va1);
  _Unwind_Resume(a1);
}

uint64_t sub_1001A4BA8(uint64_t a1, __int16 *a2, uint64_t a3)
{
  v4 = *a2;
  v8 = 4;
  v9 = v4;
  memcpy(v10, a2 + 4, 0x240uLL);
  v10[576] = 1;
  v10[584] = 0;
  v10[696] = 0;
  v10[704] = 0;
  v13 = 0;
  v14 = 0;
  v17 = 0;
  v18 = 0;
  v19 = 0;
  v20 = 0;
  v21 = 0;
  v22 = 0;
  v23 = 0;
  v24 = 0;
  v25 = 0;
  v5 = *(a3 + 24);
  if (!v5)
  {
    sub_100037B10();
  }

  v6 = (*(*v5 + 48))(v5, &v8);
  if (v17 == 1 && __p)
  {
    v16 = __p;
    operator delete(__p);
  }

  if (v13 == 1 && v11)
  {
    v12 = v11;
    operator delete(v11);
  }

  return v6;
}

void sub_1001A4CD4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1001A0B88(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1001A4CE8(uint64_t a1, __int16 *a2, uint64_t a3)
{
  v4 = *a2;
  v8 = 1;
  v9 = v4;
  memcpy(v10, a2 + 4, 0x240uLL);
  v10[576] = 1;
  v10[584] = 0;
  v10[696] = 0;
  v10[704] = 0;
  v13 = 0;
  v14 = 0;
  v17 = 0;
  v18 = 0;
  v19 = 0;
  v20 = 0;
  v21 = 0;
  v22 = 0;
  v23 = 0;
  v24 = 0;
  v25 = 0;
  v5 = *(a3 + 24);
  if (!v5)
  {
    sub_100037B10();
  }

  v6 = (*(*v5 + 48))(v5, &v8);
  if (v17 == 1 && __p)
  {
    v16 = __p;
    operator delete(__p);
  }

  if (v13 == 1 && v11)
  {
    v12 = v11;
    operator delete(v11);
  }

  return v6;
}

void sub_1001A4E18(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1001A0B88(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1001A4E2C(uint64_t a1, __int16 *a2, uint64_t a3)
{
  if ((a2[348] & 1) == 0)
  {
    sub_1000195BC();
  }

  v4 = *(a2 + 332);
  v18 = *(a2 + 324);
  v19 = v4;
  v20 = *(a2 + 340);
  v5 = *(a2 + 300);
  v14 = *(a2 + 292);
  v15 = v5;
  v6 = *(a2 + 308);
  v17 = *(a2 + 316);
  v16 = v6;
  v7 = *a2;
  v11 = 2;
  v12 = v7;
  memcpy(v13, a2 + 4, 0x240uLL);
  v13[576] = 1;
  v21 = 1;
  v22 = 0;
  v25 = 0;
  v26 = 0;
  v29 = 0;
  v30 = 0;
  v31 = 0;
  v32 = 0;
  v33 = 0;
  v34 = 0;
  v35 = 0;
  v36 = 0;
  v37 = 0;
  v8 = *(a3 + 24);
  if (!v8)
  {
    sub_100037B10();
  }

  v9 = (*(*v8 + 48))(v8, &v11);
  if (v29 == 1 && __p)
  {
    v28 = __p;
    operator delete(__p);
  }

  if (v25 == 1 && v23)
  {
    v24 = v23;
    operator delete(v23);
  }

  return v9;
}

void sub_1001A4FAC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1001A0B88(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1001A4FC0(uint64_t a1, __int16 *a2, uint64_t a3)
{
  v4 = *a2;
  v8 = 3;
  v9 = v4;
  memcpy(v10, a2 + 4, 0x240uLL);
  v10[576] = 1;
  v10[584] = 0;
  v10[696] = 0;
  v10[704] = 0;
  v13 = 0;
  v14 = 0;
  v17 = 0;
  v18 = 0;
  v19 = 0;
  v20 = 0;
  v21 = 0;
  v22 = 0;
  v23 = 0;
  v24 = 0;
  v25 = 0;
  v5 = *(a3 + 24);
  if (!v5)
  {
    sub_100037B10();
  }

  v6 = (*(*v5 + 48))(v5, &v8);
  if (v17 == 1 && __p)
  {
    v16 = __p;
    operator delete(__p);
  }

  if (v13 == 1 && v11)
  {
    v12 = v11;
    operator delete(v11);
  }

  return v6;
}

void sub_1001A50EC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1001A0B88(va);
  _Unwind_Resume(a1);
}

void sub_1001A5100(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 8) == 2 && (*(a2 + 56) & 1) == 0)
  {
    sub_1004A2AE4();
  }
}

void *sub_1001A5128(void *a1)
{
  *a1 = off_10099AD90;
  v2 = a1[2];
  if (v2)
  {
    sub_10000AD84(v2);
  }

  return a1;
}

void sub_1001A5174(void *a1)
{
  *a1 = off_10099AD90;
  v1 = a1[2];
  if (v1)
  {
    sub_10000AD84(v1);
  }

  operator delete();
}

uint64_t sub_1001A51F4(uint64_t a1, uint64_t a2)
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

uint64_t sub_1001A528C(uint64_t a1, uint64_t a2)
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

double sub_1001A5374(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = a2;
  *(a1 + 24) = 850045863;
  result = 0.0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *a1 = off_10099AEF0;
  return result;
}

uint64_t sub_1001A53B0(uint64_t a1)
{
  *a1 = off_100998DA8;
  std::mutex::~mutex((a1 + 24));
  return a1;
}

void sub_1001A53F4(uint64_t a1)
{
  *a1 = off_100998DA8;
  std::mutex::~mutex((a1 + 24));

  operator delete();
}

uint64_t sub_1001A5458(uint64_t a1, uint64_t a2)
{
  if (!*(a1 + 16))
  {
    sub_1004A2B10();
  }

  std::mutex::lock((a1 + 24));
  v4 = (*(**(a1 + 16) + 24))(*(a1 + 16), a2);
  std::mutex::unlock((a1 + 24));
  return v4;
}

uint64_t sub_1001A54E0(uint64_t a1, uint64_t a2)
{
  if (!*(a1 + 16))
  {
    sub_1004A2B3C();
  }

  std::mutex::lock((a1 + 24));
  v4 = (*(**(a1 + 16) + 32))(*(a1 + 16), a2);
  std::mutex::unlock((a1 + 24));
  return v4;
}

void sub_1001A5568(uint64_t a1, uint64_t *a2)
{
  if (!*(a1 + 8))
  {
    sub_1004A2B68();
  }

  v5 = *a2;
  v6 = *(a2 + 2);
  sub_1001916EC(&v7, (a2 + 2));
  v4 = *(a2 + 6);
  v12 = *(a2 + 5);
  v13 = v4;
  v14[0] = *(a2 + 7);
  *(v14 + 13) = *(a2 + 125);
  std::mutex::lock((a1 + 24));
  (*(**(a1 + 8) + 16))(*(a1 + 8), &v5);
  std::mutex::unlock((a1 + 24));
  if (v11 == 1 && v10 == 1 && v9 < 0)
  {
    operator delete(__p);
  }
}

void sub_1001A563C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19, uint64_t a20, char a21)
{
  std::mutex::unlock((v21 + 24));
  if (a21 == 1 && a19 == 1 && a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1001A5680(uint64_t a1, int *a2)
{
  if (!*(a1 + 88))
  {
    sub_1004A2B94();
  }

  std::mutex::lock((a1 + 24));
  v4 = *(a1 + 88);
  v13 = *a2;
  sub_100020458(&v14, (a2 + 2));
  v5 = *(a2 + 186);
  v30 = *(a2 + 182);
  v31 = v5;
  v6 = *(a2 + 194);
  v32 = *(a2 + 190);
  v33 = v6;
  v7 = *(a2 + 170);
  v26 = *(a2 + 166);
  v27 = v7;
  v8 = *(a2 + 178);
  v28 = *(a2 + 174);
  v29 = v8;
  v9 = *(a2 + 154);
  v22 = *(a2 + 150);
  v23 = v9;
  v10 = *(a2 + 162);
  v24 = *(a2 + 158);
  v25 = v10;
  v11 = *(a2 + 146);
  v20 = *(a2 + 142);
  v21 = v11;
  sub_1001A58DC(&v34, (a2 + 198));
  memcpy(v37, a2 + 218, sizeof(v37));
  sub_1000207A0(&v38, a2 + 151);
  memcpy(v42, a2 + 332, sizeof(v42));
  sub_10002096C(&v43, a2 + 113);
  (*(*v4 + 16))(v4, &v13);
  if (v46 == 1 && __p)
  {
    v45 = __p;
    operator delete(__p);
  }

  if (v41 == 1 && v39)
  {
    v40 = v39;
    operator delete(v39);
  }

  if (v36[24] == 1)
  {
    v12 = v36;
    sub_100189A94(&v12);
    v12 = &v35;
    sub_100189B38(&v12);
  }

  if (v19 == 1)
  {
    if (v17)
    {
      v18 = v17;
      operator delete(v17);
    }

    if (v15)
    {
      v16 = v15;
      operator delete(v15);
    }
  }

  std::mutex::unlock((a1 + 24));
}

void sub_1001A586C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1001A5A20(va);
  std::mutex::unlock((v3 + 24));
  _Unwind_Resume(a1);
}

uint64_t sub_1001A58DC(uint64_t a1, __int128 *a2)
{
  *a1 = 0;
  *(a1 + 72) = 0;
  if (*(a2 + 72) == 1)
  {
    v4 = *a2;
    *(a1 + 16) = *(a2 + 2);
    *a1 = v4;
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
    sub_1001895D0(a1 + 24, *(a2 + 3), *(a2 + 4), 0x86BCA1AF286BCA1BLL * ((*(a2 + 4) - *(a2 + 3)) >> 3));
    *(a1 + 48) = 0;
    *(a1 + 56) = 0;
    *(a1 + 64) = 0;
    sub_100189C1C(a1 + 48, *(a2 + 6), *(a2 + 7), (*(a2 + 7) - *(a2 + 6)) >> 5);
    *(a1 + 72) = 1;
  }

  return a1;
}

void sub_1001A5994(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100189B38(va);
  if (*(v2 + 72) == 1)
  {
    sub_100189E60(v2);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1001A59C8(uint64_t a1)
{
  if (*(a1 + 72) == 1)
  {
    v3 = (a1 + 48);
    sub_100189A94(&v3);
    v3 = (a1 + 24);
    sub_100189B38(&v3);
  }

  return a1;
}

uint64_t sub_1001A5A20(uint64_t a1)
{
  if (*(a1 + 2032) == 1)
  {
    v2 = *(a1 + 2008);
    if (v2)
    {
      *(a1 + 2016) = v2;
      operator delete(v2);
    }
  }

  if (*(a1 + 1320) == 1)
  {
    v3 = *(a1 + 1280);
    if (v3)
    {
      *(a1 + 1288) = v3;
      operator delete(v3);
    }
  }

  if (*(a1 + 864) == 1)
  {
    v7 = (a1 + 840);
    sub_100189A94(&v7);
    v7 = (a1 + 816);
    sub_100189B38(&v7);
  }

  if (*(a1 + 560) == 1)
  {
    v4 = *(a1 + 144);
    if (v4)
    {
      *(a1 + 152) = v4;
      operator delete(v4);
    }

    v5 = *(a1 + 80);
    if (v5)
    {
      *(a1 + 88) = v5;
      operator delete(v5);
    }
  }

  return a1;
}

void sub_1001A5B2C(uint64_t a1@<X8>)
{
  *a1 = 1;
  *(a1 + 4) = 1;
  *(a1 + 5) = 0;
  *(a1 + 8) = 0;
  *(a1 + 12) = 1;
  *(a1 + 16) = 1;
  v1 = +[NSUserDefaults standardUserDefaults];
  [v1 dictionaryRepresentation];
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v2 = v23 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v22 objects:v30 count:16];
  if (v3)
  {
    v13 = 0;
    v18 = 0;
    v4 = 1;
    v5 = *v23;
    v14 = *(a1 + 9);
    v15 = *(a1 + 8);
    v16 = *(a1 + 7);
    v17 = *(a1 + 6);
    v19 = 1;
    v11 = 1;
    do
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v23 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v22 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          if ([v7 isEqualToString:@"CheckFPSNRsOkForSensorFusion"])
          {
            v19 = [v1 BOOLForKey:@"CheckFPSNRsOkForSensorFusion"];
          }

          else if ([v7 isEqualToString:@"CheckPDOA"])
          {
            v18 = [v1 BOOLForKey:@"CheckPDOA"];
          }

          else if ([v7 isEqualToString:@"CheckFPSNRs"])
          {
            v17 = [v1 BOOLForKey:@"CheckFPSNRs"];
          }

          else if ([v7 isEqualToString:@"CheckFPIndices"])
          {
            v16 = [v1 BOOLForKey:@"CheckFPIndices"];
          }

          else if ([v7 isEqualToString:@"CheckAoaCirDataEvent"])
          {
            v15 = [v1 BOOLForKey:@"CheckAoaCirDataEvent"];
          }

          else if ([v7 isEqualToString:@"CheckToaCirDataEvent"])
          {
            v14 = [v1 BOOLForKey:@"CheckToaCirDataEvent"];
          }

          else if ([v7 isEqualToString:@"CheckTimestamps"])
          {
            BYTE4(v13) = [v1 BOOLForKey:@"CheckTimestamps"];
          }

          else if ([v7 isEqualToString:@"CheckRSSIs"])
          {
            LOBYTE(v13) = [v1 BOOLForKey:@"CheckRSSIs"];
          }

          else if ([v7 isEqualToString:@"EnableAoaHypotheses"])
          {
            v11 = [v1 BOOLForKey:@"EnableAoaHypotheses"];
          }

          if ([v7 isEqualToString:@"MmsValStatus"])
          {
            v8 = [v1 integerForKey:@"MmsValStatus"];
            switch(v8)
            {
              case 7:
                v4 = 7;
                break;
              case 3:
                v4 = 3;
                break;
              case 1:
                v4 = 1;
                break;
            }

            v9 = qword_1009F9820;
            if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
            {
              sub_100004A08(__p, off_10099B110[v4 - 1]);
              v10 = __p;
              if (v21 < 0)
              {
                v10 = __p[0];
              }

              *buf = 136315394;
              v27 = v10;
              v28 = 1024;
              v29 = v4;
              _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Required min mmsValStatus = %s (%d)", buf, 0x12u);
              if (v21 < 0)
              {
                operator delete(__p[0]);
              }
            }
          }
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v22 objects:v30 count:16];
    }

    while (v3);
    *(a1 + 5) = v18;
    *(a1 + 4) = v19;
    *(a1 + 16) = v4;
    *(a1 + 9) = v14;
    *(a1 + 8) = v15;
    *(a1 + 7) = v16;
    *(a1 + 6) = v17;
    *(a1 + 11) = v13;
    *(a1 + 10) = BYTE4(v13);
    *a1 = v11;
  }
}

double sub_1001A6080()
{
  if ((byte_1009F0138 & 1) == 0)
  {
    v0 = +[NSUserDefaults standardUserDefaults];
    v1 = [v0 objectForKey:@"UwbRangeBiasOffsetMeters"];

    if (v1)
    {
      v2 = +[NSUserDefaults standardUserDefaults];
      [v2 doubleForKey:@"UwbRangeBiasOffsetMeters"];
      qword_1009F0130 = v3;

      v4 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        v6 = 134217984;
        v7 = qword_1009F0130;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "UwbRangeBiasOffsetMeters set to %.2f m", &v6, 0xCu);
      }
    }

    byte_1009F0138 = 1;
  }

  return *&qword_1009F0130;
}

double sub_1001A61C4()
{
  if (byte_1009F0148 == 1)
  {
    return *&qword_1009F0140;
  }

  result = sub_1001A6080() * 1.0e12 / 299792458.0;
  qword_1009F0140 = *&result;
  byte_1009F0148 = 1;
  return result;
}

uint64_t sub_1001A6228(uint64_t result, int a2, unsigned int a3, unint64_t a4, int a5)
{
  *(result + 12) = 0;
  *(result + 4) = 0;
  *result = a2;
  if (a2 <= 99)
  {
    if (a2 > 10)
    {
      if (a2 <= 0x1B)
      {
        if (((1 << a2) & 0x3878000) != 0)
        {
          if (a3 >= 2)
          {
            if (a3 == 2)
            {
              *(result + 12) = 67371522;
            }
          }

          else
          {
            *(result + 12) = 67372036;
          }

          if (((a4 == 6) & (a4 >> 16)) != 0)
          {
            v8 = 5;
          }

          else
          {
            v8 = 4;
          }

          *(result + 16) = v8;
          *(result + 17) = 4;
          goto LABEL_41;
        }

        if (((1 << a2) & 0x4780000) != 0)
        {
          if (a3 >= 2)
          {
            if (a3 == 2)
            {
              *(result + 12) = 67371522;
            }
          }

          else
          {
            *(result + 12) = 67372036;
          }

          if (((a4 == 6) & (a4 >> 16)) != 0)
          {
            v10 = 5;
          }

          else
          {
            v10 = 4;
          }

          *(result + 16) = v10;
          *(result + 17) = 4;
          v9 = 258;
          goto LABEL_42;
        }

        if (a2 == 27)
        {
          *(result + 12) = 514;
          *(result + 16) = 16908803;
          return result;
        }
      }

      if ((a2 - 11) >= 4)
      {
        return result;
      }

      if (a3 >= 2)
      {
        if (a3 == 2)
        {
          *(result + 12) = 16843266;
        }
      }

      else
      {
        *(result + 12) = 16843009;
      }

      v9 = 257;
LABEL_42:
      *(result + 18) = v9;
      return result;
    }

    if (a2 <= 6)
    {
      if ((a2 - 1) >= 3)
      {
        if ((a2 - 4) >= 3)
        {
          if (a2)
          {
            return result;
          }

          if (a5)
          {
            v11 = 11;
          }

          else
          {
            v11 = 1;
          }

          *(result + 12) = v11;
          v6 = 1026;
        }

        else
        {
          if (a5)
          {
            v5 = 11;
          }

          else
          {
            v5 = 1;
          }

          *(result + 12) = v5;
          v6 = 1025;
        }

        goto LABEL_34;
      }

LABEL_30:
      if (a5)
      {
        v7 = 11;
      }

      else
      {
        v7 = 1;
      }

      *(result + 12) = v7;
      v6 = 1032;
LABEL_34:
      *(result + 13) = v6;
      *(result + 15) = 4;
      goto LABEL_41;
    }

    if (a3 >= 2)
    {
      if (a3 == 2)
      {
        goto LABEL_30;
      }
    }

    else
    {
      *(result + 12) = 67372036;
    }

LABEL_41:
    v9 = 260;
    goto LABEL_42;
  }

  if (a2 <= 199)
  {
    if ((a2 - 113) < 0xE)
    {
      *(result + 12) = 257;
      *(result + 16) = 257;
      return result;
    }

    if ((a2 - 100) >= 0xD)
    {
      return result;
    }

LABEL_22:
    *(result + 12) = 257;
    return result;
  }

  switch(a2)
  {
    case 200:
      goto LABEL_22;
    case 201:
      *(result + 12) = 16843266;
      return result;
    case 202:
      goto LABEL_22;
  }

  return result;
}

uint64_t sub_1001A6468(uint64_t result, int a2, int a3)
{
  v3 = *result;
  if (*result <= 99)
  {
    if (v3 > 0x1B)
    {
      goto LABEL_17;
    }

    if (((1 << v3) & 0x387FFFF) != 0)
    {
      if (a2)
      {
        v6 = *(result + 15);
        *(result + 4) = v6;
        *(result + 5) = *(result + 14);
        *(result + 6) = v6;
        v7 = *(result + 13);
        *(result + 7) = v7;
        v8 = *(result + 12);
LABEL_9:
        *(result + 8) = v8;
        *(result + 11) = v7;
        goto LABEL_17;
      }

      v9 = a3 == 0;
      v10 = 15;
      if (a3)
      {
        v10 = 13;
      }

      v11 = 14;
      v12 = 12;
    }

    else
    {
      if (((1 << v3) & 0x4780000) == 0)
      {
        v16 = *(result + 13);
        *(result + 4) = v16;
        *(result + 5) = *(result + 12);
        *(result + 6) = v16;
        *(result + 7) = 0;
        *(result + 11) = 0;
LABEL_19:
        *(result + 9) = *(result + 17);
        *(result + 10) = *(result + 16);
        return result;
      }

      if (a2)
      {
        v13 = *(result + 13);
        *(result + 4) = v13;
        *(result + 5) = *(result + 12);
        *(result + 6) = v13;
        v7 = *(result + 15);
        *(result + 7) = v7;
        v8 = *(result + 14);
        goto LABEL_9;
      }

      v9 = a3 == 0;
      v10 = 13;
      if (a3)
      {
        v10 = 15;
      }

      v11 = 12;
      v12 = 14;
    }

    if (!v9)
    {
      v11 = v12;
    }

    v5 = *(result + v11);
    v4 = *(result + v10);
    *(result + 4) = v4;
    goto LABEL_16;
  }

  if (v3 > 199)
  {
    if (v3 <= 201)
    {
      if (v3 != 200)
      {
        if (a2)
        {
          v14 = *(result + 13);
          *(result + 4) = v14;
          *(result + 5) = *(result + 12);
          *(result + 6) = v14;
          v15 = *(result + 15);
          *(result + 7) = v15;
          *(result + 8) = *(result + 14);
          *(result + 11) = v15;
        }

        else
        {
          v17 = 15;
          if (a3)
          {
            v17 = 13;
          }

          v18 = 14;
          if (a3)
          {
            v18 = 12;
          }

          v19 = *(result + v18);
          v20 = *(result + v17);
          *(result + 4) = v20;
          *(result + 5) = v19;
          *(result + 6) = v20;
          *(result + 7) = 0;
          *(result + 11) = 0;
        }

        return result;
      }

      goto LABEL_4;
    }

    if (v3 == 202)
    {
LABEL_4:
      v4 = *(result + 13);
      *(result + 4) = v4;
      v5 = *(result + 12);
LABEL_16:
      *(result + 5) = v5;
      *(result + 6) = v4;
      *(result + 7) = 0;
      *(result + 11) = 0;
      goto LABEL_17;
    }

    if (v3 == 997 || v3 == 999)
    {
      *(result + 11) = 0;
      *(result + 4) = 0;
      *(result + 8) = 0;
    }
  }

  else if ((v3 - 100) < 0x1B)
  {
    goto LABEL_4;
  }

LABEL_17:
  if ((v3 - 113) < 0xE || (v3 - 15) <= 0xC)
  {
    goto LABEL_19;
  }

  return result;
}

uint64_t sub_1001A6664(unsigned __int8 *a1, int a2, int a3)
{
  sub_1001A6468(a1, a2, a3);
  result = sub_1001A669C(a1, 0);
  if ((result & 1) == 0)
  {
    sub_1004A2BC0();
  }

  return result;
}

uint64_t sub_1001A669C(unsigned __int8 *a1, char a2)
{
  v3 = *a1;
  if (*a1 <= 199)
  {
    if ((v3 - 100) >= 0x1B)
    {
      if ((v3 - 11) >= 0x11)
      {
        if (v3 >= 0xB)
        {
          return 1;
        }

        result = sub_1001A6BE4(a1);
        if (!result)
        {
          return result;
        }

        if ((a2 & 1) == 0)
        {
          result = sub_1001A6CA8(a1);
          if (!result)
          {
            return result;
          }
        }
      }

      else
      {
        result = sub_1001A6BE4(a1);
        if (!result)
        {
          return result;
        }
      }

      return sub_1001A6D1C(a1);
    }

LABEL_17:
    result = sub_1001A6BE4(a1);
    if (!result)
    {
      return result;
    }

    return sub_1001A6E18(a1);
  }

  if (v3 <= 201)
  {
    if (v3 != 200)
    {
      return v3 != 201 || (sub_1001A6BE4(a1) & 1) != 0;
    }

    goto LABEL_17;
  }

  if (v3 == 202)
  {
    goto LABEL_17;
  }

  if (v3 != 997 && v3 != 999)
  {
    return 1;
  }

  result = sub_1001A6DAC(a1);
  if (result)
  {
    result = sub_1001A6E18(a1);
    if (result)
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_1001A67A8(unsigned __int8 *a1, int a2, int a3)
{
  sub_1001A6468(a1, a2, a3);
  result = sub_1001A669C(a1, 0);
  if ((result & 1) == 0)
  {
    sub_1004A2BEC();
  }

  return result;
}

uint64_t sub_1001A67E0(unsigned __int8 *a1, int a2)
{
  sub_1001A6468(a1, a2, 1);
  result = sub_1001A669C(a1, 0);
  if ((result & 1) == 0)
  {
    sub_1004A2C18();
  }

  return result;
}

uint64_t sub_1001A681C(unsigned __int8 *a1, int a2)
{
  sub_1001A6468(a1, a2, 1);
  result = sub_1001A669C(a1, 0);
  if ((result & 1) == 0)
  {
    sub_1004A2C44();
  }

  return result;
}

uint64_t sub_1001A6858(unsigned __int8 *a1, int a2)
{
  v2 = *a1;
  if (*a1 <= 99)
  {
    if (v2 <= 0x1B)
    {
      if (((1 << v2) & 0x387FFFE) != 0)
      {
        if (a2)
        {
          v4 = a1[15];
          a1[4] = v4;
          a1[5] = a1[14];
          a1[6] = v4;
          v5 = a1[13];
LABEL_9:
          a1[7] = v5;
          v6 = a1[12];
LABEL_19:
          a1[8] = v6;
          a1[11] = v5;
          goto LABEL_20;
        }

        v3 = a1[13];
LABEL_11:
        a1[4] = v3;
        a1[5] = v3;
        goto LABEL_12;
      }

      if (((1 << v2) & 0x4780000) != 0)
      {
        if (a2)
        {
          v7 = a1[13];
          a1[4] = v7;
          a1[5] = a1[12];
          a1[6] = v7;
LABEL_18:
          v5 = a1[15];
          a1[7] = v5;
          v6 = a1[14];
          goto LABEL_19;
        }

        v3 = a1[15];
        goto LABEL_11;
      }

      if (v2 == 27)
      {
        goto LABEL_4;
      }
    }

    if (v2)
    {
      goto LABEL_20;
    }

    if (!a2)
    {
      a1[4] = 8;
      a1[5] = a1[12];
      *(a1 + 3) = 8;
      a1[8] = 0;
      goto LABEL_14;
    }

    v10 = a1[15];
    a1[4] = v10;
    a1[5] = a1[14];
    a1[6] = v10;
    v5 = 8;
    goto LABEL_9;
  }

  if (v2 <= 199)
  {
    if ((v2 - 100) >= 0x1B)
    {
      goto LABEL_20;
    }

    goto LABEL_4;
  }

  if (v2 <= 201)
  {
    if (v2 == 200)
    {
      goto LABEL_4;
    }

    v9 = a1[13];
    a1[4] = v9;
    a1[5] = a1[12];
    a1[6] = v9;
    if (!a2)
    {
      goto LABEL_13;
    }

    goto LABEL_18;
  }

  if (v2 == 202)
  {
LABEL_4:
    v3 = a1[13];
    a1[4] = v3;
    a1[5] = a1[12];
LABEL_12:
    a1[6] = v3;
LABEL_13:
    *(a1 + 7) = 0;
LABEL_14:
    a1[11] = 0;
    goto LABEL_20;
  }

  if (v2 == 997 || v2 == 999)
  {
    a1[11] = 0;
    *(a1 + 1) = 0;
    a1[8] = 0;
  }

LABEL_20:
  result = sub_1001A669C(a1, 0);
  if ((result & 1) == 0)
  {
    sub_1004A2C70();
  }

  return result;
}

uint64_t sub_1001A69F8(unsigned __int8 *a1, int a2, int a3)
{
  sub_1001A6468(a1, a2, a3);
  result = sub_1001A669C(a1, 1);
  if ((result & 1) == 0)
  {
    sub_1004A2C9C();
  }

  return result;
}

uint64_t sub_1001A6A30(unsigned __int8 *a1, int a2, int a3)
{
  sub_1001A6468(a1, a2, a3);
  result = sub_1001A669C(a1, 0);
  if ((result & 1) == 0)
  {
    sub_1004A2CC8();
  }

  return result;
}

uint64_t sub_1001A6A68(unsigned __int8 *a1, int a2, int a3)
{
  sub_1001A6468(a1, a2, a3);
  result = sub_1001A669C(a1, 0);
  if ((result & 1) == 0)
  {
    sub_1004A2CF4();
  }

  return result;
}

uint64_t sub_1001A6AA0(unsigned __int8 *a1, int a2, int a3)
{
  sub_1001A6468(a1, a2, a3);
  result = sub_1001A669C(a1, 0);
  if ((result & 1) == 0)
  {
    sub_1004A2D20();
  }

  return result;
}

uint64_t sub_1001A6AD8(unsigned __int8 *a1, int a2, int a3)
{
  sub_1001A6468(a1, a2, a3);
  result = sub_1001A669C(a1, 0);
  if ((result & 1) == 0)
  {
    sub_1004A2D4C();
  }

  return result;
}

uint64_t sub_1001A6B14(unsigned __int8 *a1, unsigned __int8 a2, unsigned __int8 a3, unsigned __int8 a4, unsigned __int8 a5, unsigned __int8 a6, unsigned __int8 a7)
{
  a1[4] = a2;
  a1[5] = a3;
  a1[6] = a4;
  a1[7] = a5;
  a1[8] = a6;
  a1[11] = a7;
  result = sub_1001A669C(a1, 0);
  if ((result & 1) == 0)
  {
    sub_1004A2D78();
  }

  return result;
}

uint64_t sub_1001A6B50(int *a1)
{
  v1 = *a1;
  v2 = -408;
  if (*a1 > 199)
  {
    if ((v1 - 200) >= 3 && v1 != 997 && v1 != 999)
    {
      return v2;
    }

    return -420;
  }

  if ((v1 - 100) < 0x1B || (v1 - 3) < 0x19)
  {
    return -420;
  }

  return v2;
}

uint64_t sub_1001A6BE4(unsigned __int8 *a1)
{
  v2 = a1[4];
  if (v2 != a1[6] || (v2 & ~a1[5]) != 0)
  {
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004A2DA4();
    }

    v3 = 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = a1[7];
  if (v4 != a1[11] || (v4 & ~a1[8]) != 0)
  {
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004A2DD8();
    }

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  return v3 & v5;
}

BOOL sub_1001A6CA8(_BYTE *a1)
{
  if (!a1[7] || a1[6] != 4 || a1[11] != 2)
  {
    return 1;
  }

  result = os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR);
  if (result)
  {
    sub_1004A2E0C();
    return 0;
  }

  return result;
}

BOOL sub_1001A6D1C(_BYTE *a1)
{
  if (!a1[7] || a1[19] != 1 || (a1[4] & a1[18]) != 0 && (a1[5] & a1[18]) != 0 && (a1[6] & a1[18]) != 0)
  {
    return 1;
  }

  result = os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR);
  if (result)
  {
    sub_1004A2E40();
    return 0;
  }

  return result;
}

BOOL sub_1001A6DAC(_BYTE *a1)
{
  if (!a1[4] && !a1[5] && !a1[6])
  {
    return 1;
  }

  result = os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR);
  if (result)
  {
    sub_1004A2E74();
    return 0;
  }

  return result;
}

BOOL sub_1001A6E18(_BYTE *a1)
{
  if (!a1[7] && !a1[8] && !a1[11])
  {
    return 1;
  }

  result = os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR);
  if (result)
  {
    sub_1004A2E74();
    return 0;
  }

  return result;
}

uint64_t sub_1001A6E84(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 4;
  }

  v3 = *a1;
  result = 4;
  if (v3 <= 99)
  {
    v5 = v3 == 27;
    if (v3 >= 0x1B)
    {
      goto LABEL_21;
    }

    v6 = *(a1 + 12);
    v7 = *(a1 + 14);
    if ((a2 & ~(v7 | v6)) == 0)
    {
      if ((a2 & ~v6) != 0 || (v6 & a2) == 0)
      {
        if ((a2 & ~v7) != 0 || (v7 & a2) == 0)
        {
          if (((v7 | v6) & a2) != 0)
          {
            return 3;
          }

          else
          {
            return 4;
          }
        }

        else
        {
          return 0;
        }
      }

      else
      {
        return 1;
      }
    }
  }

  else
  {
    if (v3 <= 199)
    {
      if ((v3 - 100) >= 0x1B)
      {
        return result;
      }

      goto LABEL_5;
    }

    if (v3 == 200)
    {
LABEL_5:
      if ((a2 & ~*(a1 + 12)) != 0)
      {
        return 4;
      }

      else
      {
        return 2;
      }
    }

    if (v3 != 201)
    {
      v5 = v3 == 202;
LABEL_21:
      if (!v5)
      {
        return result;
      }

      goto LABEL_5;
    }

    v8 = *(a1 + 14) | *(a1 + 12);
    if ((v8 & a2) != 0)
    {
      v9 = 2;
    }

    else
    {
      v9 = 4;
    }

    if ((a2 & ~v8) != 0)
    {
      return 4;
    }

    else
    {
      return v9;
    }
  }

  return result;
}