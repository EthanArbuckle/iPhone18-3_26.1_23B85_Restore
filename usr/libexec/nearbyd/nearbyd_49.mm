void *sub_1003C7C30(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x38;
  v3 = v1 - 56;
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
    sub_10016F098(a1, v9);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v10 = *v4;
  a1[1] = v4 + 1;
  return sub_10016EC70(a1, &v10);
}

void sub_1003C7DB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1003C7E04()
{
  v1 = xmmword_10056F790;
  v2[0] = unk_10056F7A0;
  v2[1] = xmmword_10056F7B0;
  v2[2] = unk_10056F7C0;
  qword_1009F7D50 = 0;
  unk_1009F7D58 = 0;
  qword_1009F7D48 = 0;
  sub_10004EEB8(&qword_1009F7D48, &v1, &v3, 4uLL);
  __cxa_atexit(sub_100045220, &qword_1009F7D48, &_mh_execute_header);
  v1 = xmmword_10056F7D0;
  qword_1009F7D68 = 0;
  unk_1009F7D70 = 0;
  qword_1009F7D60 = 0;
  sub_10004EEB8(&qword_1009F7D60, &v1, v2, 1uLL);
  return __cxa_atexit(sub_100045220, &qword_1009F7D60, &_mh_execute_header);
}

uint64_t sub_1003C7F08(uint64_t a1)
{
  sub_100193120(v11);
  *(&v11[2] + *(v11[0] - 3)) = 2;
  v2 = sub_10000EA44(&v12, "<", 1);
  v3 = *(a1 + 23);
  if (v3 >= 0)
  {
    v4 = a1;
  }

  else
  {
    v4 = *a1;
  }

  if (v3 >= 0)
  {
    v5 = *(a1 + 23);
  }

  else
  {
    v5 = *(a1 + 8);
  }

  v6 = sub_10000EA44(v2, v4, v5);
  sub_10000EA44(v6, " | ", 3);
  v7 = *(a1 + 24);
  v8 = std::ostream::operator<<();
  sub_10000EA44(v8, ">", 1);
  std::stringbuf::str();
  v12 = v9;
  if (v15 < 0)
  {
    operator delete(v14[7].__locale_);
  }

  std::locale::~locale(v14);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_1003C8104(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

void sub_1003C8414(uint64_t a1)
{
  *(a1 + 8) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *a1 = off_1009A9A98;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  operator new();
}

uint64_t sub_1003C864C(uint64_t a1)
{
  (*(**(a1 + 48) + 16))(*(a1 + 48));
  v2 = *(**(a1 + 56) + 16);

  return v2();
}

uint64_t sub_1003C86D0(uint64_t a1)
{
  (*(**(a1 + 56) + 24))(*(a1 + 56));
  v2 = *(**(a1 + 48) + 24);

  return v2();
}

uint64_t sub_1003C8754(uint64_t a1)
{
  (*(**(a1 + 56) + 48))(*(a1 + 56));
  v2 = *(**(a1 + 48) + 48);

  return v2();
}

void sub_1003C89A4(void *a1)
{
  sub_1003C89DC(a1);

  operator delete();
}

void *sub_1003C89DC(void *a1)
{
  *a1 = off_1009A9A98;
  v2 = a1[7];
  a1[7] = 0;
  if (v2)
  {
    (*(*v2 + 392))(v2);
  }

  v3 = a1[6];
  a1[6] = 0;
  if (v3)
  {
    (*(*v3 + 392))(v3);
  }

  return a1;
}

uint64_t sub_1003C8A8C()
{
  v1 = xmmword_10056F820;
  v2[0] = unk_10056F830;
  v2[1] = xmmword_10056F840;
  v2[2] = unk_10056F850;
  qword_1009F7D80 = 0;
  unk_1009F7D88 = 0;
  qword_1009F7D78 = 0;
  sub_10004EEB8(&qword_1009F7D78, &v1, &v3, 4uLL);
  __cxa_atexit(sub_100045220, &qword_1009F7D78, &_mh_execute_header);
  v1 = xmmword_10056F860;
  qword_1009F7D98 = 0;
  unk_1009F7DA0 = 0;
  qword_1009F7D90 = 0;
  sub_10004EEB8(&qword_1009F7D90, &v1, v2, 1uLL);
  return __cxa_atexit(sub_100045220, &qword_1009F7D90, &_mh_execute_header);
}

double *sub_1003C8B90(double *a1, uint64_t a2, double a3)
{
  *a1 = a3;
  sub_10003735C((a1 + 1), a2);
  return a1;
}

uint64_t sub_1003C8BC8()
{
  v8[0] = xmmword_10056F8A8;
  v8[1] = unk_10056F8B8;
  sub_1001BD0B0(qword_1009F7DA8, v8, 4);
  xmmword_1009F7DC0 = xmmword_100563BD0;
  *algn_1009F7DD0 = xmmword_100563BE0;
  qword_1009F7DE8 = 0;
  unk_1009F7DF0 = 0;
  qword_1009F7DE0 = 0x3FD999999999999ALL;
  unk_1009F7DF8 = xmmword_100563BF0;
  dword_1009F7E08 = 5;
  qword_1009F7E10 = 0x4000000000000000;
  dword_1009F7E18 = 5;
  byte_1009F7E20 = 0;
  *&algn_1009F7E21[3] = 0x30000000ALL;
  xmmword_1009F7E30 = xmmword_100563C00;
  unk_1009F7E40 = xmmword_100563C10;
  xmmword_1009F7E50 = xmmword_100563C20;
  qword_1009F7E60 = 0x3FE3333333333333;
  dword_1009F7E68 = 3;
  xmmword_1009F7E70 = xmmword_100563C30;
  unk_1009F7E80 = xmmword_100563C10;
  xmmword_1009F7E90 = xmmword_100563C00;
  qword_1009F7EA0 = 0x3FE3333333333333;
  byte_1009F7EA8 = 0;
  xmmword_1009F7EB0 = xmmword_100563C40;
  unk_1009F7EC0 = xmmword_100563C50;
  __asm { FMOV            V0.2D, #1.0 }

  v6 = _Q0;
  xmmword_1009F7ED0 = _Q0;
  qword_1009F7EE0 = 0xBFD3333333333333;
  xmmword_1009F7EE8 = xmmword_100563C60;
  qword_1009F7EF8 = 0x3E99999A40000000;
  xmmword_1009F7F00 = xmmword_100563BE0;
  qword_1009F7F18 = 0;
  unk_1009F7F20 = 0;
  qword_1009F7F10 = 0x3FD999999999999ALL;
  xmmword_1009F7F28 = xmmword_100563BF0;
  dword_1009F7F38 = 5;
  qword_1009F7F40 = 0x4000000000000000;
  dword_1009F7F48 = 4;
  qword_1009F7F50 = 0x300000008;
  qword_1009F7F58 = 0xC04E800000000000;
  v7 = 0xC04E800000000000;
  sub_1001BD370(qword_1009F7F60, &v7, 1);
  xmmword_1009F7F78 = xmmword_100563C70;
  qword_1009F7F88 = 0x4024000000000000;
  dword_1009F7F90 = 45;
  byte_1009F7F98 = 0;
  byte_1009F7FB0 = 0;
  qword_1009F7FB8 = 0;
  byte_1009F7FC0 = 0;
  dword_1009F7FC4 = 1;
  byte_1009F7FC8 = 1;
  xmmword_1009F7FD0 = xmmword_100563C80;
  xmmword_1009F7FE0 = xmmword_100563C90;
  xmmword_1009F7FF0 = v6;
  qword_1009F8000 = 0xC059000000000000;
  xmmword_1009F8008 = xmmword_100563CA0;
  qword_1009F8018 = vdup_n_s32(0x3DCCCCCDu);
  xmmword_1009F8020 = xmmword_100563BE0;
  qword_1009F8030 = 0x3FD999999999999ALL;
  xmmword_1009F8038 = 0u;
  unk_1009F8048 = xmmword_100563BF0;
  dword_1009F8058 = 5;
  qword_1009F8060 = 0x4000000000000000;
  dword_1009F8068 = 10;
  qword_1009F8070 = 0x4034000000000000;
  dword_1009F8078 = 3;
  xmmword_1009F8080 = xmmword_100563CB0;
  return __cxa_atexit(sub_1001BB564, qword_1009F7DA8, &_mh_execute_header);
}

uint64_t sub_1003C8EAC(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = xmmword_10056F8D0;
  v2 = a1 + 40;
  *(a1 + 64) = 0x100000003;
  *(a1 + 32) = 0;
  *(a1 + 40) = off_1009A8F78;
  *(a1 + 48) = xmmword_10056EDA0;
  *(a1 + 72) = a1 + 80;
  v3 = a1 + 104;
  *(a1 + 128) = 0x100000003;
  *(a1 + 104) = off_1009A8F78;
  *(a1 + 112) = xmmword_10056EDA0;
  *(a1 + 136) = a1 + 144;
  v4 = a1 + 168;
  *(a1 + 192) = 0x100000003;
  *(a1 + 168) = off_1009A8F78;
  *(a1 + 176) = xmmword_10056EDA0;
  *(a1 + 200) = a1 + 208;
  *(a1 + 232) = xmmword_10056F8E0;
  *(a1 + 248) = 0xBFFBB67AE8584CAALL;
  v5 = erf(1.73205081);
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0;
  *(a1 + 296) = v5;
  v6 = erf(-1.73205081);
  v7 = 0;
  *(a1 + 312) = xmmword_10056F950;
  *(a1 + 328) = unk_10056F960;
  *(a1 + 304) = v6;
  *(a1 + 344) = 0x3FC5555555555555;
  *(a1 + 352) = xmmword_10056F978;
  *(a1 + 368) = unk_10056F988;
  *(a1 + 384) = 0x3FC5555555555555;
  do
  {
    *sub_1003AFDBC(v3, v7) = 0;
    *sub_1003AFDBC(v4, v7) = 0;
    *sub_1003AFDBC(v2, v7++) = 0;
  }

  while (v7 != 3);
  v8 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#sa_algo_rangefilter,SyntheticApertureRangeFilter constructed", v10, 2u);
  }

  return a1;
}

void sub_1003C90A0(_Unwind_Exception *a1)
{
  *v3 = off_1009991A0;
  *v2 = off_1009991A0;
  *v1 = off_1009991A0;
  _Unwind_Resume(a1);
}

void sub_1003C90FC(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *a2;
    v8 = *(a2 + 8);
    v9 = *(a2 + 16);
    v10 = *(a2 + 96);
    v11 = *(a2 + 104);
    v12 = *(a2 + 112);
    *buf = 134219264;
    v47 = v7;
    v48 = 2048;
    v49 = v8;
    v50 = 2048;
    v51 = v9;
    v52 = 2048;
    v53 = v10;
    v54 = 2048;
    v55 = v11;
    v56 = 2048;
    v57 = v12;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#sa_algo_rangefilter,Measurement added with VIO: timestamp %3.2f s, range %3.2f m, uncertainty %3.2f m, position [%3.2f, %3.2f, %3.2f] m", buf, 0x3Eu);
  }

  v40 = 0x100000003;
  v39 = xmmword_10056EDA0;
  v38 = off_1009A8F78;
  v41 = &v42;
  sub_1003A8C00(&v38, 3, 1);
  sub_1003A8C50(&v38, 0.0);
  v35 = 0x100000004;
  v33 = off_1009A8EE8;
  v34 = xmmword_10056ED80;
  v36 = &v37;
  sub_1003A8C00(&v33, 4, 1);
  sub_1003A8C50(&v33, 0.0);
  for (i = 0; i != 3; ++i)
  {
    v14 = a2 + 8 * i;
    v15 = *(v14 + 96);
    *sub_1003AFDBC(&v38, i) = v15;
    v16 = *(v14 + 120);
    *sub_1003AFDBC(&v33, i) = v16;
  }

  v17 = *(a2 + 144);
  *sub_1003AFDBC(&v33, 3u) = v17;
  sub_10041511C(&v33, buf);
  v44 = 0x100000003;
  *&v43[8] = xmmword_10056EDA0;
  *v43 = off_1009A8F78;
  v45[0] = &v45[1];
  sub_1003A90A8(buf, a1 + 104, v43);
  v30 = 0x100000003;
  v28 = off_1009A8F78;
  v29 = xmmword_10056EDA0;
  v31 = &v32;
  sub_1003A8EBC(&v38, v43, &v28);
  if (*a1)
  {
    v18 = *(a1 + 8);
    if (v18 == 1)
    {
      sub_1003C9650(a1, &v28);
    }

    else if (!v18)
    {
      v19 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        *v43 = 0;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "#sa_algo_rangefilter,Range filter transitioning from non-VIO to VIO mode", v43, 2u);
      }

      sub_1003C9550(a1, *a2);
      sub_1003A8CFC(a1 + 40, &v28);
    }

    sub_1003C9934(a1, 0, *(a2 + 8), *(a2 + 16));
  }

  else
  {
    *(a1 + 16) = *(a2 + 8);
    sub_1003A8CFC(a1 + 40, &v28);
    *a1 = 1;
    v20 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      v21 = *(a1 + 16);
      v22 = *(a1 + 24);
      *v43 = 134218240;
      *&v43[4] = v21;
      *&v43[12] = 2048;
      *&v43[14] = v22;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#sa_algo_rangefilter,Initializing range filter with VIO: range %f m, uncertainty %f m", v43, 0x16u);
    }
  }

  v23 = *a2;
  *(a1 + 8) = 1;
  *(a1 + 32) = v23;
  v24 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    v25 = *(a1 + 16);
    v26 = *(a1 + 24);
    *v43 = 134218754;
    *&v43[4] = v23;
    *&v43[12] = 2048;
    *&v43[14] = v25;
    *&v43[22] = 2048;
    v44 = v26;
    LOWORD(v45[0]) = 2080;
    *(v45 + 2) = "YES";
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "#sa_algo_rangefilter,Filter state after meas with VIO: timestamp %3.2f s, range %3.2f m, uncertainty %3.2f m, with VIO: %s", v43, 0x2Au);
  }

  v27 = *(a1 + 24);
  *a3 = *(a1 + 8);
  *(a3 + 16) = v27;
  *(a3 + 8) = fmax(*(a3 + 8), 0.0);
}

void sub_1003C9550(uint64_t a1, double a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 24) + (a2 - v3) * 0.25;
  *(a1 + 24) = v4;
  v5 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 16);
    if (*(a1 + 8) == 1)
    {
      v7 = "YES";
    }

    else
    {
      v7 = "NO";
    }

    v8 = 134218754;
    v9 = v3;
    v10 = 2048;
    v11 = v6;
    v12 = 2048;
    v13 = v4;
    v14 = 2080;
    v15 = v7;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#sa_algo_rangefilter,Filter state after propagation with time: timestamp %3.2f s, range %3.2f m, uncertainty %3.2f m, with VIO: %s", &v8, 0x2Au);
  }
}

void sub_1003C9650(uint64_t a1, uint64_t a2)
{
  v20 = 0x100000003;
  v18 = off_1009A8F78;
  v19 = xmmword_10056EDA0;
  v21 = &v22;
  sub_1003A920C(a2, a1 + 40, &v18);
  v30 = 0x100000003;
  v29 = xmmword_10056EDA0;
  v28 = off_1009A8F78;
  v31 = &v32;
  v34 = 0x100000134;
  *&buf[8] = xmmword_10056EEA0;
  *buf = off_1009A9168;
  v35[0] = &v35[1];
  v25 = 0x100000003;
  v23 = off_1009A8F78;
  v24 = xmmword_10056EDA0;
  v26 = &v27;
  sub_1003AFEC0(&v18, &v28, buf, &v23, "2");
  v5 = v4;
  sub_1003A8CFC(a1 + 40, a2);
  v7 = *(a1 + 16);
  v6 = *(a1 + 24);
  if (v7 + v6 * -1.73205081 <= 0.0)
  {
    v14 = sqrt(v5 * 0.5 * (v5 * 0.5) + v6 * v6);
    *(a1 + 24) = v14;
  }

  else
  {
    v8 = 0;
    v9 = (a1 + 232);
    v10 = 0.0;
    do
    {
      v11 = sqrt(v5 * v5 + (v7 + v6 * *v9) * (v7 + v6 * *v9) + v5 * -2.0 * (v7 + v6 * *v9) * v9[5]);
      *&buf[v8] = v11;
      v10 = v10 + v9[10] * v11;
      ++v9;
      v8 += 8;
    }

    while (v8 != 40);
    v12 = 0;
    v13 = 0.0;
    do
    {
      v13 = v13 + *(a1 + 352 + v12) * (*&buf[v12] - v10) * (*&buf[v12] - v10);
      v12 += 8;
    }

    while (v12 != 40);
    v14 = sqrt(v13);
    *(a1 + 16) = v10;
    *(a1 + 24) = v14;
    v7 = v10;
  }

  v15 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    v16 = *(a1 + 32);
    if (*(a1 + 8) == 1)
    {
      v17 = "YES";
    }

    else
    {
      v17 = "NO";
    }

    *buf = 134218754;
    *&buf[4] = v16;
    *&buf[12] = 2048;
    *&buf[14] = v7;
    *&buf[22] = 2048;
    v34 = *&v14;
    LOWORD(v35[0]) = 2080;
    *(v35 + 2) = v17;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#sa_algo_rangefilter,Filter state after propagation with pose: timestamp %3.2f s, range %3.2f m, uncertainty %3.2f m, with VIO: %s", buf, 0x2Au);
  }
}

void sub_1003C9934(uint64_t a1, int a2, double a3, double a4)
{
  v7 = a4 * a4;
  v9 = *(a1 + 16);
  v8 = *(a1 + 24);
  v10 = v7 + v8 * v8;
  v11 = sqrt(v10);
  v12 = (a3 - v9) / v11;
  if (a2 && v12 > 8.0)
  {
    v13 = qword_1009F9820;
    if (!os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    v16 = 134218496;
    v17 = v9;
    v18 = 2048;
    v19 = a3;
    v20 = 2048;
    v21 = v12;
    v14 = "#sa_algo_rangefilter,LoS->nLoS event detected by the range filter for a moving target: Previous range %f m, Current range %f m, Normalized change %f";
LABEL_9:
    _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, v14, &v16, 0x20u);
    return;
  }

  if ((a2 & 1) == 0 && v12 > 6.0)
  {
    v13 = qword_1009F9820;
    if (!os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    v16 = 134218496;
    v17 = v9;
    v18 = 2048;
    v19 = a3;
    v20 = 2048;
    v21 = v12;
    v14 = "#sa_algo_rangefilter,LoS->nLoS event detected by the range filter for a static target: Previous range %f m, Current range %f m, Normalized change %f";
    goto LABEL_9;
  }

  if (v12 >= -6.0)
  {
    *(a1 + 16) = (v7 * v9 + a3 * (v8 * v8)) / v10;
    *(a1 + 24) = v8 * a4 / v11;
  }

  else
  {
    v15 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      v16 = 134218496;
      v17 = v9;
      v18 = 2048;
      v19 = a3;
      v20 = 2048;
      v21 = v12;
      _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "#sa_algo_rangefilter,nLos->LoS event detected by the range filter: Previous range %f m, Current range %f m, Normalized change %f", &v16, 0x20u);
      v15 = qword_1009F9820;
    }

    *(a1 + 16) = a3;
    *(a1 + 24) = a4;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 134218240;
      v17 = a3;
      v18 = 2048;
      v19 = a4;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#sa_algo_rangefilter,Re-initializing range filter: range %f m, uncertainty %f m", &v16, 0x16u);
    }
  }
}

void sub_1003C9B88(uint64_t a1@<X0>, double *a2@<X1>, int a3@<W2>, int a4@<W3>, uint64_t a5@<X8>)
{
  v10 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    v11 = *a2;
    v12 = *(a2 + 1);
    v13 = *(a2 + 2);
    v14 = "YES";
    if (a3)
    {
      v15 = "YES";
    }

    else
    {
      v15 = "NO";
    }

    if (!a4)
    {
      v14 = "NO";
    }

    v33 = 134219010;
    v34 = v11;
    v35 = 2048;
    v36 = v12;
    v37 = 2048;
    v38 = v13;
    v39 = 2080;
    v40 = v15;
    v41 = 2080;
    v42 = v14;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#sa_algo_rangefilter,Measurement added without VIO: timestamp %3.2f s, range %3.2f m, uncertainty %3.2f m, isCompanionMoving %s, isDeviceMoving %s", &v33, 0x34u);
  }

  if (*a1)
  {
    if (a3 & 1) != 0 || (a4)
    {
      sub_1003C9550(a1, *a2);
      v19 = a2[1];
      v20 = a2[2];
      v21 = a1;
      v22 = a3;
    }

    else
    {
      v16 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        v17 = a2[1];
        v18 = *(a2 + 2);
        v33 = 134218240;
        v34 = v17;
        v35 = 2048;
        v36 = v18;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#sa_algo_rangefilter,Range filter update with stationary companion and device: range %f m, uncertainty %f m", &v33, 0x16u);
      }

      v19 = a2[1];
      v20 = a2[2];
      v21 = a1;
      v22 = 0;
    }

    sub_1003C9934(v21, v22, v19, v20);
  }

  else
  {
    v23 = a2[1];
    *(a1 + 16) = v23;
    v24 = *(a2 + 2);
    *(a1 + 24) = v24;
    *a1 = 1;
    v25 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      v33 = 134218240;
      v34 = v23;
      v35 = 2048;
      v36 = v24;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "#sa_algo_rangefilter,Initializing range filter without VIO: range %f m, uncertainty %f m", &v33, 0x16u);
    }
  }

  v27 = (a1 + 8);
  v26 = *(a1 + 8);
  *(a1 + 32) = *a2;
  v28 = qword_1009F9820;
  if (v26 == 1 && os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v33) = 0;
    _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "#sa_algo_rangefilter,Range filter transitioning from VIO to non-VIO mode", &v33, 2u);
    v28 = qword_1009F9820;
  }

  *v27 = 0;
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    v30 = *(a1 + 24);
    v29 = *(a1 + 32);
    v31 = *(a1 + 16);
    v33 = 134218754;
    v34 = v29;
    v35 = 2048;
    v36 = v31;
    v37 = 2048;
    v38 = v30;
    v39 = 2080;
    v40 = "NO";
    _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "#sa_algo_rangefilter,Filter state after meas without VIO: timestamp %3.2f s, range %3.2f m, uncertainty %3.2f m, with VIO: %s", &v33, 0x2Au);
  }

  v32 = *(a1 + 24);
  *a5 = *v27;
  *(a5 + 16) = v32;
  *(a5 + 8) = fmax(*(a5 + 8), 0.0);
}

uint64_t sub_1003C9E94()
{
  v1 = xmmword_10056F900;
  v2[0] = unk_10056F910;
  v2[1] = xmmword_10056F920;
  v2[2] = unk_10056F930;
  qword_1009F8098 = 0;
  unk_1009F80A0 = 0;
  qword_1009F8090 = 0;
  sub_10004EEB8(&qword_1009F8090, &v1, &v3, 4uLL);
  __cxa_atexit(sub_100045220, &qword_1009F8090, &_mh_execute_header);
  v1 = xmmword_10056F940;
  qword_1009F80B0 = 0;
  unk_1009F80B8 = 0;
  qword_1009F80A8 = 0;
  sub_10004EEB8(&qword_1009F80A8, &v1, v2, 1uLL);
  return __cxa_atexit(sub_100045220, &qword_1009F80A8, &_mh_execute_header);
}

_BYTE *sub_1003C9F98(_BYTE *a1)
{
  *a1 = 0;
  a1[8] = 0;
  a1[16] = 0;
  a1[64] = 0;
  a1[72] = 0;
  a1[96] = 0;
  a1[104] = 0;
  a1[152] = 0;
  a1[160] = 0;
  a1[392] = 0;
  a1[400] = 0;
  a1[416] = 0;
  a1[424] = 0;
  a1[432] = 0;
  v2 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#cl_algo,CLLocationBasedArrowFilter initialized", v4, 2u);
  }

  return a1;
}

void sub_1003CA044(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 400) = 0u;
  *(a2 + 416) = 0u;
  *(a2 + 368) = 0u;
  *(a2 + 384) = 0u;
  *(a2 + 336) = 0u;
  *(a2 + 352) = 0u;
  *(a2 + 304) = 0u;
  *(a2 + 320) = 0u;
  *(a2 + 272) = 0u;
  *(a2 + 288) = 0u;
  *(a2 + 240) = 0u;
  *(a2 + 256) = 0u;
  *(a2 + 208) = 0u;
  *(a2 + 224) = 0u;
  *(a2 + 176) = 0u;
  *(a2 + 192) = 0u;
  *(a2 + 144) = 0u;
  *(a2 + 160) = 0u;
  *(a2 + 112) = 0u;
  *(a2 + 128) = 0u;
  *(a2 + 80) = 0u;
  *(a2 + 96) = 0u;
  *(a2 + 48) = 0u;
  *(a2 + 64) = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  *(a2 + 412) = 4;
  *(a2 + 416) = 1;
  if (*(a1 + 96) == 1 && *(a1 + 152) == 1 && *(a1 + 64) == 1 && *(a1 + 432) == 1)
  {
    v4 = *(a1 + 48);
    if (v4 > 3.0)
    {
      v5 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_INFO))
      {
        v50 = 134217984;
        *v51 = v4;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "#cl_algo,#clcc,self location speed exceeds a brisk walking pace,inflating uncertainty,%.1lf", &v50, 0xCu);
      }

      *(a1 + 40) = fmin(*(a1 + 40), 200.0);
    }

    v6 = *(a1 + 136);
    if (v6 > 3.0)
    {
      v7 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_INFO))
      {
        v50 = 134217984;
        *v51 = v6;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "#cl_algo,#clcc,peer location speed exceeds a brisk walking pace,inflating uncertainty,%.1lf", &v50, 0xCu);
      }

      *(a1 + 128) = fmin(*(a1 + 128), 200.0);
    }

    if ((*(a1 + 432) & 1) == 0 || (*(a1 + 96) & 1) == 0)
    {
      goto LABEL_64;
    }

    v8 = *(a1 + 424);
    v9 = *(a1 + 392);
    v10 = v9 == 1 ? v8 - *(a1 + 168) : INFINITY;
    if ((*(a1 + 64) & 1) == 0 || (*(a1 + 152) & 1) == 0)
    {
      goto LABEL_64;
    }

    v11 = *(a1 + 72);
    v12 = vabdd_f64(v8, v11);
    v13 = *(a1 + 16);
    v14 = vabdd_f64(v8, v13);
    v15 = *(a1 + 104);
    v16 = vabdd_f64(v8, v15);
    v17 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
    {
      if (v9)
      {
        v49 = *(a1 + 168);
      }

      else
      {
        v49 = 0x7FF0000000000000;
      }

      v50 = 134219520;
      *v51 = v8;
      *&v51[8] = 2048;
      v52 = v11;
      v53 = 2048;
      v54 = v13;
      v55 = 2048;
      v56 = v15;
      v57 = 2048;
      v58 = v49;
      v59 = 2048;
      v60 = v16;
      v61 = 2048;
      v62 = v14;
      _os_log_debug_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, "#cl_algo,event timestamp: %f, heading timestamp: %f, self loc timestamp: %f, peer loc timestamp: %f, range timestamp: %f, peer loc age, %.1lf, self loc age, %.1lf", &v50, 0x48u);
    }

    if (v12 > 1.0 || v14 > 12.0 || v16 > 12.0)
    {
      v26 = qword_1009F9820;
      if (!os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        return;
      }

      v50 = 134218496;
      *v51 = v12;
      *&v51[8] = 2048;
      v52 = v14;
      v53 = 2048;
      v54 = v16;
      v27 = "#cl_algo,CLLocationBasedArrowFilter,data stale,not populating a solution,heading_age,%.1lf,abs_self_location_age_s,%.1lf,abs_peer_location_age_s,%.1lf";
      v28 = v26;
      v29 = OS_LOG_TYPE_DEFAULT;
      v30 = 32;
      goto LABEL_58;
    }

    if ((*(a1 + 152) & 1) == 0)
    {
      goto LABEL_64;
    }

    v18 = *(a1 + 24);
    v19 = *(a1 + 32);
    v20 = *(a1 + 112);
    v21 = *(a1 + 120);
    CLClientGetDistanceCoordinates();
    v23 = v22;
    v24 = *(a1 + 392);
    if (v24 == 1)
    {
      v25 = *(a1 + 176);
    }

    else
    {
      v25 = INFINITY;
    }

    v31 = 2.0;
    if (*(a1 + 416) == 1 && *(a1 + 432) == 1 && vabdd_f64(*(a1 + 424), *(a1 + 400)) < 12.0)
    {
      v32 = *(a1 + 408);
      v33 = 2.0;
      if (v32 == 1)
      {
        v33 = 1.0;
      }

      if (v32)
      {
        v31 = v33;
      }

      else
      {
        v31 = 0.5;
      }
    }

    if (v10 > 60.0)
    {
      LOBYTE(v24) = 0;
    }

    if ((v24 & (v25 + v10 * 2.0 < v22)) != 0)
    {
      v34 = v25 + v10 * 2.0;
    }

    else
    {
      v34 = v22;
    }

    v35 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_INFO))
    {
      v50 = 134218752;
      *v51 = v23;
      *&v51[8] = 2048;
      v52 = v25;
      v53 = 2048;
      v54 = fabs(v10);
      v55 = 2048;
      v56 = v34;
      _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_INFO, "#cl_algo,CLLocationBasedArrowFilter,location_range_m,%.1lf,uwb_range_m,%.1lf,abs_uwb_range_age,%.1lf,fused_range_m,%.1lf", &v50, 0x2Au);
    }

    v36 = *(a1 + 8) == 1 ? *a1 : 0;
    if ((*(a1 + 432) & 1) == 0)
    {
      goto LABEL_64;
    }

    v37 = sqrt((*(a1 + 128) + v31 * v16) * (*(a1 + 128) + v31 * v16) + (*(a1 + 40) + v14 * 2.0) * (*(a1 + 40) + v14 * 2.0));
    v38 = *(a1 + 424);
    v39 = v23;
    *(a2 + 8) = v36;
    *(a2 + 16) = v38;
    *(a2 + 24) = v39;
    *(a2 + 28) = 4;
    *(a2 + 56) = 0;
    *(a2 + 32) = 0;
    *(a2 + 40) = 0;
    *(a2 + 60) = 0;
    *(a2 + 64) = 0;
    *(a2 + 68) = 0;
    *(a2 + 72) = 0;
    *(a2 + 80) = 0;
    *(a2 + 88) = 0;
    *(a2 + 96) = 0;
    *(a2 + 104) = 0;
    v40 = v37 / 1.41421356;
    *(a2 + 112) = v37 / 1.41421356;
    *(a2 + 136) = 0;
    *(a2 + 120) = 1;
    *(a2 + 128) = 0;
    *(a2 + 160) = 0;
    *(a2 + 168) = 0u;
    *(a2 + 184) = 0u;
    *(a2 + 200) = 0u;
    *(a2 + 216) = 0u;
    *(a2 + 232) = 0;
    *(a2 + 240) = 1;
    if ((*(a1 + 152) & 1) == 0 || (v41 = sub_1003CA68C(a1 + 16, a1 + 104), (*(a1 + 96) & 1) == 0))
    {
LABEL_64:
      sub_1000195BC();
    }

    v42 = fmod(v41 + 360.0, 360.0);
    v43 = fmod(v42 - *(a1 + 80) + 180.0, 360.0);
    *(a2 + 256) = 1;
    if (v43 < 0.0)
    {
      v43 = v43 + 360.0;
    }

    *(a2 + 248) = v43 + -180.0;
    v44 = v40 / v34 * 57.2957795;
    *(a2 + 384) = v44;
    *(a2 + 392) = 1;
    *(a2 + 368) = sqrt(*(a1 + 88) * *(a1 + 88) + v44 * v44);
    *(a2 + 376) = 1;
    v45 = *(a1 + 56);
    if (v45 == 1)
    {
      v46 = *(a1 + 144);
    }

    else
    {
      v46 = 0;
    }

    *(a2 + 400) = v46 & 1 | 0x100;
    v47 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_INFO))
    {
      v48 = *(a1 + 144);
      v50 = 67109632;
      *v51 = v46 & 1;
      *&v51[4] = 1024;
      *&v51[6] = v45;
      LOWORD(v52) = 1024;
      *(&v52 + 2) = v48;
      v27 = "#cl_algo,#gri,findee,CLLocationBasedArrowFilter,producedInGoodEnvironmentalConditions,%d,self,%d,peer,%d";
      v28 = v47;
      v29 = OS_LOG_TYPE_INFO;
      v30 = 20;
LABEL_58:
      _os_log_impl(&_mh_execute_header, v28, v29, v27, &v50, v30);
    }
  }
}

long double sub_1003CA68C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8) * 3.14159265 / 180.0;
  v3 = *(a2 + 8) * 3.14159265 / 180.0;
  v4 = __sincos_stret(*(a2 + 16) * 3.14159265 / 180.0 - *(a1 + 16) * 3.14159265 / 180.0);
  v5 = __sincos_stret(v3);
  v6 = __sincos_stret(v2);
  return atan2(v5.__cosval * v4.__sinval, -(v6.__sinval * v5.__cosval) * v4.__cosval + v6.__cosval * v5.__sinval) * 180.0 / 3.14159265;
}

__n128 sub_1003CA740(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  if (*(a1 + 152) == 1)
  {
    *(a1 + 129) = *(a2 + 25);
    *(a1 + 120) = v3;
    *(a1 + 104) = result;
  }

  else
  {
    *(a1 + 136) = *(a2 + 32);
    *(a1 + 120) = v3;
    *(a1 + 104) = result;
    *(a1 + 152) = 1;
  }

  return result;
}

uint64_t sub_1003CA784(uint64_t result, uint64_t a2)
{
  v2 = *(result + 96);
  v3 = *(a2 + 16);
  *(result + 72) = *a2;
  *(result + 88) = v3;
  if ((v2 & 1) == 0)
  {
    *(result + 96) = 1;
  }

  v4 = *a2;
  if (*(result + 432) != 1 || *(result + 424) < v4)
  {
    *(result + 424) = v4;
    *(result + 432) = 1;
  }

  return result;
}

uint64_t sub_1003CA7D0(uint64_t result, __int128 *a2)
{
  if (*(result + 64) == 1)
  {
    v2 = *a2;
    v3 = a2[1];
    *(result + 41) = *(a2 + 25);
    *(result + 16) = v2;
    *(result + 32) = v3;
  }

  else
  {
    v4 = *a2;
    v5 = a2[2];
    *(result + 32) = a2[1];
    *(result + 48) = v5;
    *(result + 16) = v4;
    *(result + 64) = 1;
  }

  v6 = *a2;
  if (*(result + 432) != 1 || *(result + 424) < v6)
  {
    *(result + 424) = v6;
    *(result + 432) = 1;
  }

  return result;
}

uint64_t sub_1003CA834(uint64_t result, uint64_t a2)
{
  v2 = *(result + 392);
  v4 = *(a2 + 16);
  v3 = *(a2 + 32);
  *(result + 160) = *a2;
  *(result + 176) = v4;
  *(result + 192) = v3;
  v5 = *(a2 + 96);
  v7 = *(a2 + 48);
  v6 = *(a2 + 64);
  *(result + 240) = *(a2 + 80);
  *(result + 256) = v5;
  *(result + 208) = v7;
  *(result + 224) = v6;
  v8 = *(a2 + 160);
  v10 = *(a2 + 112);
  v9 = *(a2 + 128);
  *(result + 304) = *(a2 + 144);
  *(result + 320) = v8;
  *(result + 272) = v10;
  *(result + 288) = v9;
  v12 = *(a2 + 192);
  v11 = *(a2 + 208);
  v13 = *(a2 + 176);
  *(result + 384) = *(a2 + 224);
  *(result + 352) = v12;
  *(result + 368) = v11;
  *(result + 336) = v13;
  if ((v2 & 1) == 0)
  {
    *(result + 392) = 1;
  }

  v14 = *(a2 + 8);
  if (*(result + 432) != 1 || *(result + 424) < v14)
  {
    *(result + 424) = v14;
    *(result + 432) = 1;
  }

  return result;
}

uint64_t sub_1003CA8B8(uint64_t result, int *a2, double a3)
{
  if (*(result + 432) != 1 || *(result + 424) < a3)
  {
    *(result + 424) = a3;
    *(result + 432) = 1;
  }

  v3 = *a2;
  *(result + 400) = a3;
  *(result + 408) = v3;
  *(result + 416) = 1;
  return result;
}

uint64_t sub_1003CA8F4(uint64_t result, double a2, double a3, double a4, double a5)
{
  *result = off_1009A9C50;
  *(result + 8) = a2;
  *(result + 16) = a3;
  *(result + 24) = a4;
  *(result + 32) = a5;
  return result;
}

uint64_t sub_1003CA91C(double *a1, __int128 **a2)
{
  v4 = (*(*a1 + 16))(a1);
  v5 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 134217984;
    *&v9[4] = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#dec-proc, WRTT: Estimating shouldUnlock with unlockThreshold: %f", v9, 0xCu);
  }

  (*(*a1 + 32))(v9, a1);
  v6 = sub_1003CAA98(a1, v9, a2, v4);
  v7 = *v9;
  *v9 = 0;
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  return v6;
}

void sub_1003CAA74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  if (a9)
  {
    sub_1004CB1C8(a9);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1003CAA98(double *a1, uint64_t *a2, __int128 **a3, double a4)
{
  v4 = *a3;
  v5 = a3[1];
  if (*a3 == v5)
  {
    return 0;
  }

  if (!*a2)
  {
    sub_1004CB200();
  }

  v9 = 0;
  __src = 0;
  v47 = 0;
  v48 = 0;
  do
  {
    v10 = *(v4 + 4);
    if (a1[1] < v10 && a1[2] > v10)
    {
      if (v9 >= v48)
      {
        v22 = __src;
        v23 = v9 - __src;
        v24 = 0x34F72C234F72C235 * ((v9 - __src) >> 3);
        v25 = v24 + 1;
        if ((v24 + 1) > 0x11A7B9611A7B961)
        {
          sub_100019B38();
        }

        if (0x69EE58469EE5846ALL * ((v48 - __src) >> 3) > v25)
        {
          v25 = 0x69EE58469EE5846ALL * ((v48 - __src) >> 3);
        }

        if ((0x34F72C234F72C235 * ((v48 - __src) >> 3)) >= 0x8D3DCB08D3DCB0)
        {
          v26 = 0x11A7B9611A7B961;
        }

        else
        {
          v26 = v25;
        }

        if (v26)
        {
          sub_1001BDD74(&__src, v26);
        }

        v27 = 8 * ((v9 - __src) >> 3);
        v28 = *v4;
        v29 = v4[2];
        *(v27 + 16) = v4[1];
        *(v27 + 32) = v29;
        *v27 = v28;
        v30 = v4[3];
        v31 = v4[4];
        v32 = v4[6];
        *(v27 + 80) = v4[5];
        *(v27 + 96) = v32;
        *(v27 + 48) = v30;
        *(v27 + 64) = v31;
        v33 = v4[7];
        v34 = v4[8];
        v35 = v4[10];
        *(v27 + 144) = v4[9];
        *(v27 + 160) = v35;
        *(v27 + 112) = v33;
        *(v27 + 128) = v34;
        v36 = v4[11];
        v37 = v4[12];
        v38 = v4[13];
        *(v27 + 224) = *(v4 + 28);
        *(v27 + 192) = v37;
        *(v27 + 208) = v38;
        *(v27 + 176) = v36;
        v9 = 232 * v24 + 232;
        v39 = (232 * v24 - v23);
        memcpy((v27 - v23), v22, v23);
        v40 = __src;
        __src = v39;
        v47 = v9;
        v48 = 0;
        if (v40)
        {
          operator delete(v40);
        }
      }

      else
      {
        v11 = *v4;
        v12 = v4[2];
        *(v9 + 16) = v4[1];
        *(v9 + 32) = v12;
        *v9 = v11;
        v13 = v4[3];
        v14 = v4[4];
        v15 = v4[6];
        *(v9 + 80) = v4[5];
        *(v9 + 96) = v15;
        *(v9 + 48) = v13;
        *(v9 + 64) = v14;
        v16 = v4[7];
        v17 = v4[8];
        v18 = v4[10];
        *(v9 + 144) = v4[9];
        *(v9 + 160) = v18;
        *(v9 + 112) = v16;
        *(v9 + 128) = v17;
        v19 = v4[11];
        v20 = v4[12];
        v21 = v4[13];
        *(v9 + 224) = *(v4 + 28);
        *(v9 + 192) = v20;
        *(v9 + 208) = v21;
        *(v9 + 176) = v19;
        v9 += 232;
      }

      v47 = v9;
    }

    v4 = (v4 + 232);
  }

  while (v4 != v5);
  v41 = *a2;
  (*(*a1 + 48))(__p, a1, &__src);
  (*(*v41 + 16))(v45, v41, __p, a4);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  v42 = LOBYTE(v45[0]);
  if (__src)
  {
    v47 = __src;
    operator delete(__src);
  }

  return v42;
}

void sub_1003CAD48(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a16)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1003CAD94@<X0>(uint64_t *a1@<X1>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  return sub_1003CADC8(a2, *a1, a1[1], 0x34F72C234F72C235 * ((a1[1] - *a1) >> 3));
}

uint64_t sub_1003CADC8(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_1003CAE44(result, a4);
  }

  return result;
}

void sub_1003CAE28(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_1003CAE44(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x11A7B9611A7B962)
  {
    sub_1001BDD74(a1, a2);
  }

  sub_100019B38();
}

void sub_1003CAE94(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X2>, _BYTE *a4@<X8>)
{
  *a3 = 0;
  v8 = *(a1 + 280);
  if (!v8 || *a2 > *(*(*(a1 + 248) + (((v8 + *(a1 + 272) - 1) >> 2) & 0x3FFFFFFFFFFFFFF8)) + (((v8 + *(a1 + 272) - 1) & 0x1F) << 7)))
  {
    v9 = *(a1 + 288);
    v10 = *(a2 + 80);
    *(a1 + 288) = v10;
    if (v9 != v10)
    {
      switch(v10)
      {
        case 2:
          v11 = qword_1009F9820;
          if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
          {
            v16 = *a2;
            *buf = 134217984;
            *&buf[4] = v16;
            v13 = "#findalgs-rangeposeinterpolator,VIO Tracking State changed to Normal at %f s";
            goto LABEL_16;
          }

          break;
        case 1:
          v11 = qword_1009F9820;
          if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
          {
            v15 = *a2;
            *buf = 134217984;
            *&buf[4] = v15;
            v13 = "#findalgs-rangeposeinterpolator,VIO Tracking State changed to Limited at %f s";
            goto LABEL_16;
          }

          break;
        case 0:
          v11 = qword_1009F9820;
          if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
          {
            v12 = *a2;
            *buf = 134217984;
            *&buf[4] = v12;
            v13 = "#findalgs-rangeposeinterpolator,VIO Tracking State changed to Not Available at %f s";
LABEL_16:
            _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, v13, buf, 0xCu);
          }

          break;
      }
    }

    v17 = *(a2 + 80);
    if (v9 == 2 && v17 != 2)
    {
      v19 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "#findalgs-rangeposeinterpolator,VIO Tracking not normal anymore - resetting", buf, 2u);
      }

      if (*(a1 + 232) == 1)
      {
        v20 = qword_1009F9820;
        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#findalgs-rangeposeinterpolator,VIO Tracking not normal before the cached measurement can be interpolated - passing the cached measurement to the range filter without VIO", buf, 2u);
        }
      }

      *a3 = 1;
      sub_1003CB360(a1);
      v17 = *(a2 + 80);
    }

    if (v17 == 2)
    {
      if (*(a2 + 84) == 1)
      {
        v21 = qword_1009F9820;
        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
        {
          v22 = *a2;
          v23 = "NO";
          if (*(a2 + 84))
          {
            v24 = "YES";
          }

          else
          {
            v24 = "NO";
          }

          if (*(a2 + 85))
          {
            v23 = "YES";
          }

          *buf = 134218498;
          *&buf[4] = v22;
          *&buf[12] = 2080;
          *&buf[14] = v24;
          *&buf[22] = 2080;
          *&buf[24] = v23;
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "#findalgs-rangeposeinterpolator,VIO reported relocalization event at %f s, MAJOR: %s, MINOR: %s - resetting", buf, 0x20u);
        }

        *a3 = 1;
        sub_1003CB360(a1);
      }

      else
      {
        if (*(a2 + 85) == 1)
        {
          v25 = qword_1009F9820;
          if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
          {
            v26 = *a2;
            *buf = 134217984;
            *&buf[4] = v26;
            _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "#findalgs-rangeposeinterpolator,VIO reported MINOR relocalization event at %f s", buf, 0xCu);
          }
        }

        v27 = 0;
        v28 = *(a2 + 16);
        v29 = *(a2 + 32);
        v30 = *(a2 + 48);
        v31 = *(a2 + 64);
        v40[0] = xmmword_10056EE60;
        v40[1] = xmmword_10056EE70;
        v40[2] = xmmword_10056EE80;
        v40[3] = xmmword_10056EE90;
        do
        {
          *&buf[v27 * 16] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v28, COERCE_FLOAT(v40[v27])), v29, *&v40[v27], 1), v30, v40[v27], 2), v31, v40[v27], 3);
          ++v27;
        }

        while (v27 != 4);
        v32 = *buf;
        v33 = *&buf[16];
        v34 = v42;
        v35 = v43;
        v36 = *(a2 + 80);
        v37 = *(a2 + 84);
        *buf = *a2;
        *&buf[16] = v32;
        v42 = v33;
        v43 = v34;
        v44 = v35;
        v45 = v36;
        v46 = v37;
        v47 = 0;
        v48 = 0;
        v49 = 0;
        v50 = 0;
        v51 = 0;
        v52 = 0;
        sub_1003AAEB4(a1 + 240, buf);
      }
    }

    sub_1003CB3F0(a1, a4);
    sub_1003CBAA0(a1);
    return;
  }

  v14 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
  {
    v38 = *(a1 + 280) + *(a1 + 272) - 1;
    v39 = *(*(*(a1 + 248) + ((v38 >> 2) & 0x3FFFFFFFFFFFFFF8)) + ((v38 & 0x1F) << 7));
    *buf = 134217984;
    *&buf[4] = v39;
    _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "#findalgs-rangeposeinterpolator,Received pose earlier than the last pose in history with timestamp: %f - pose rejected", buf, 0xCu);
  }

  *a4 = 0;
  a4[72] = 0;
}

void sub_1003CB360(uint64_t a1)
{
  *(a1 + 288) = 0;
  if (*(a1 + 232) == 1)
  {
    *(a1 + 232) = 0;
  }

  v2 = *(a1 + 248);
  v3 = *(a1 + 256);
  *(a1 + 280) = 0;
  v4 = (v3 - v2) >> 3;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v5 = *(a1 + 256);
      v2 = (*(a1 + 248) + 8);
      *(a1 + 248) = v2;
      v4 = (v5 - v2) >> 3;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v6 = 16;
  }

  else
  {
    if (v4 != 2)
    {
      return;
    }

    v6 = 32;
  }

  *(a1 + 272) = v6;
}

void sub_1003CB3F0(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 72) = 0;
  if (*(a1 + 232) != 1)
  {
    return;
  }

  v4 = *(a1 + 280);
  if (!v4)
  {
    return;
  }

  v5 = *(a1 + 8);
  v6 = *(a1 + 248);
  v7 = *(a1 + 256);
  if (v7 == v6)
  {
    goto LABEL_20;
  }

  v8 = *(a1 + 272);
  v9 = (v8 >> 2) & 0x3FFFFFFFFFFFFFF8;
  v10 = (v6 + v9);
  v11 = *(v6 + v9) + ((v8 & 0x1F) << 7);
  v12 = v8 + v4;
  v13 = ((v8 + v4) >> 2) & 0x3FFFFFFFFFFFFFF8;
  v14 = *(a1 + 16);
  v15 = *(v6 + v13) + ((v12 & 0x1F) << 7);
  *buf = v6 + v9;
  *&buf[8] = v11;
  if (v15 != v11)
  {
    v16 = ((v15 - *(v6 + v13)) >> 7) + 4 * (v13 - v9);
    v17 = v11 - *(v6 + v9);
    v18 = v16 - (v17 >> 7);
    if (v16 != v17 >> 7)
    {
      do
      {
        v19 = v18 >> 1;
        v20 = sub_1003B0628(buf, v18 >> 1);
        if (v5 >= *v21)
        {
          v22 = v21 + 16;
          if ((v21 - *v20 + 128) == 4096)
          {
            v23 = v20[1];
            ++v20;
            v22 = v23;
          }

          *buf = v20;
          *&buf[8] = v22;
          v19 = v18 + ~v19;
        }

        v18 = v19;
      }

      while (v19);
      v10 = *buf;
      v11 = *&buf[8];
      v8 = *(a1 + 272);
      v6 = *(a1 + 248);
      v7 = *(a1 + 256);
    }
  }

  if (v7 == v6)
  {
    if (v11)
    {
      v24 = 0;
      goto LABEL_17;
    }

LABEL_20:
    v30 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      v31 = *(*(*(a1 + 248) + ((*(a1 + 272) >> 2) & 0x3FFFFFFFFFFFFFF8)) + ((*(a1 + 272) & 0x1FLL) << 7));
      *buf = 134218240;
      *&buf[4] = v5;
      *&buf[12] = 2048;
      *&buf[14] = v31;
      _os_log_error_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "#findalgs-rangeposeinterpolator,Measurement at %f s earlier than the first pose in history at %f s - skipping interpolation and removing range measurement", buf, 0x16u);
    }

    goto LABEL_41;
  }

  if (*(v6 + ((v8 >> 2) & 0x3FFFFFFFFFFFFFF8)) + ((v8 & 0x1F) << 7) == v11)
  {
    goto LABEL_20;
  }

  v24 = *(v6 + (((*(a1 + 280) + v8) >> 2) & 0x3FFFFFFFFFFFFFF8)) + (((*(a1 + 280) + v8) & 0x1F) << 7);
LABEL_17:
  if (v24 != v11)
  {
    v25 = (v11 - *v10) >> 7;
    if (v25 < 2)
    {
      v35 = 32 - v25;
      v27 = &v10[-(v35 >> 5)];
      v28 = *v27;
      v29 = ~v35 & 0x1FLL;
    }

    else
    {
      v26 = v25 - 1;
      v27 = &v10[v26 >> 5];
      v28 = *v27;
      v29 = v26 & 0x1F;
    }

    v36 = v28 + (v29 << 7);
    v37 = (v5 - *v36) / (*v11 - *v36);
    v88 = v37;
    v84 = *(v36 + 64);
    *v38.i64 = sub_1003ADBF0(*(v36 + 16), *(v36 + 32), *(v36 + 48));
    v86 = v38;
    v83 = *(v11 + 64);
    *v39.i64 = sub_1003ADBF0(*(v11 + 16), *(v11 + 32), *(v11 + 48));
    v40 = vmulq_f32(v86, v39);
    v41 = vextq_s8(v40, v40, 8uLL);
    *v40.f32 = vadd_f32(*v40.f32, *v41.f32);
    v40.f32[0] = vaddv_f32(*v40.f32);
    v41.i64[0] = 0;
    v42 = vbslq_s8(vdupq_lane_s32(*&vmvnq_s8(vcgeq_f32(v40, v41)), 0), vnegq_f32(v39), v39);
    v43 = 1.0;
    v44 = 1.0 - v88;
    v45 = vsubq_f32(v86, v42);
    v46 = vmulq_f32(v45, v45);
    v82 = v42;
    v47 = vaddq_f32(v86, v42);
    v48 = vmulq_f32(v47, v47);
    v49 = atan2f(sqrtf(vaddv_f32(vadd_f32(*v46.i8, *&vextq_s8(v46, v46, 8uLL)))), sqrtf(vaddv_f32(vadd_f32(*v48.i8, *&vextq_s8(v48, v48, 8uLL)))));
    v50 = v49 + v49;
    v51 = (v49 + v49) == 0.0;
    v52 = 1.0;
    if (!v51)
    {
      v52 = sinf(v50) / v50;
    }

    v53 = v52;
    v54 = vrecpe_f32(LODWORD(v52));
    v55 = vmul_f32(v54, vrecps_f32(LODWORD(v53), v54));
    LODWORD(v56) = vmul_f32(v55, vrecps_f32(LODWORD(v53), v55)).u32[0];
    if ((v44 * v50) != 0.0)
    {
      v80 = v56;
      v55.f32[0] = sinf(v44 * v50);
      v56 = v80;
      v43 = v55.f32[0] / (v44 * v50);
    }

    v55.f32[0] = v44 * (v56 * v43);
    v57 = vdupq_lane_s32(v55, 0);
    v58 = v88;
    v59 = v50 * v88;
    v60 = 1.0;
    if (v59 != 0.0)
    {
      v79 = v57;
      v81 = v56;
      v61 = sinf(v59);
      v57 = v79;
      v56 = v81;
      v58 = v88;
      v60 = v61 / v59;
    }

    v62 = vmlaq_f32(vmulq_n_f32(v82, (v56 * v60) * v58), v86, v57);
    v63 = vmulq_f32(v62, v62);
    v64 = vadd_f32(*v63.i8, *&vextq_s8(v63, v63, 8uLL));
    if (vaddv_f32(v64) == 0.0)
    {
      v65 = xmmword_10056EE90;
    }

    else
    {
      v66 = vadd_f32(v64, vdup_lane_s32(v64, 1)).u32[0];
      v67 = vrsqrte_f32(v66);
      v68 = vmul_f32(v67, vrsqrts_f32(v66, vmul_f32(v67, v67)));
      v65 = vmulq_n_f32(v62, vmul_f32(v68, vrsqrts_f32(v66, vmul_f32(v68, v68))).f32[0]);
    }

    v69 = vmlaq_n_f32(v84, vsubq_f32(v83, v84), v58);
    v69.i32[3] = v65.i32[0];
    v87 = vcvtq_f64_f32(*v69.f32);
    v89 = vcvt_hight_f64_f32(v69);
    v85 = vcvtq_f64_f32(*&vextq_s8(v65, v65, 4uLL));
    v70 = *&v65.i32[3];
    v71 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134220032;
      *&buf[4] = v14;
      *&buf[12] = 2048;
      *&buf[14] = v5;
      v91 = 2048;
      v92 = v87.f64[0];
      v93 = 2048;
      v94 = v87.f64[1];
      v95 = 2048;
      v96 = v89.f64[0];
      v97 = 2048;
      v98 = v89.f64[1];
      v99 = 2048;
      v100 = v85.f64[0];
      v101 = 2048;
      v102 = v85.f64[1];
      v103 = 2048;
      v104 = v70;
      _os_log_impl(&_mh_execute_header, v71, OS_LOG_TYPE_DEFAULT, "#findalgs-rangeposeinterpolator,Passing range measurement to batch filter and range filter, range: %0.2f m, timestamp: %f s, device position:[%0.2f,%0.2f,%0.2f], device quat:[%0.2f,%0.2f,%0.2f,%0.2f]", buf, 0x5Cu);
    }

    *a2 = v5;
    *(a2 + 8) = v14;
    *(a2 + 16) = v87;
    *(a2 + 32) = v89;
    *(a2 + 48) = v85;
    *(a2 + 64) = v70;
    *(a2 + 72) = 1;
    v72 = *(a1 + 248);
    v73 = (v72 + 8 * (*(a1 + 272) >> 5));
    if (*(a1 + 256) == v72)
    {
      v74 = 0;
    }

    else
    {
      v74 = *v73 + ((*(a1 + 272) & 0x1FLL) << 7);
    }

    sub_1003AF1E0((a1 + 240), v73, v74, v27, v36);
    v75 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
    {
      v76 = *(a1 + 248);
      v77 = *(*(v76 + ((*(a1 + 272) >> 2) & 0x3FFFFFFFFFFFFFF8)) + ((*(a1 + 272) & 0x1FLL) << 7));
      v78 = *(*(v76 + (((*(a1 + 272) + *(a1 + 280) - 1) >> 2) & 0x3FFFFFFFFFFFFFF8)) + (((*(a1 + 272) + *(a1 + 280) - 1) & 0x1F) << 7));
      *buf = 134218240;
      *&buf[4] = v77;
      *&buf[12] = 2048;
      *&buf[14] = v78;
      _os_log_debug_impl(&_mh_execute_header, v75, OS_LOG_TYPE_DEBUG, "#findalgs-rangeposeinterpolator,Pose history now between %f s and %f s", buf, 0x16u);
    }

LABEL_41:
    if (*(a1 + 232) == 1)
    {
      *(a1 + 232) = 0;
    }

    return;
  }

  v32 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
  {
    v33 = *(a1 + 280) + *(a1 + 272) - 1;
    v34 = *(*(*(a1 + 248) + ((v33 >> 2) & 0x3FFFFFFFFFFFFFF8)) + ((v33 & 0x1F) << 7));
    *buf = 134218240;
    *&buf[4] = v5;
    *&buf[12] = 2048;
    *&buf[14] = v34;
    _os_log_debug_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEBUG, "#findalgs-rangeposeinterpolator,Measurement at %f s later than the last pose in history at %f s - skipping interpolation", buf, 0x16u);
  }
}

void sub_1003CBAA0(void *a1)
{
  v1 = a1[35];
  if (v1)
  {
    v3 = a1[34];
    v4 = *(*(a1[31] + (((v1 + v3 - 1) >> 2) & 0x3FFFFFFFFFFFFFF8)) + (((v1 + v3 - 1) & 0x1F) << 7)) - *(*(a1[31] + ((v3 >> 2) & 0x3FFFFFFFFFFFFFF8)) + ((v3 & 0x1F) << 7));
    if (v4 > 5.0)
    {
      v5 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        *v32 = 134217984;
        *&v32[4] = v4;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#findalgs-rangeposeinterpolator,Pose history spans %f s - pruning down past poses from history", v32, 0xCu);
      }

      v6 = a1[34];
      v7 = (v6 >> 2) & 0x3FFFFFFFFFFFFFF8;
      v8 = a1[31];
      v9 = a1[32];
      v10 = (v8 + v7);
      if (v9 == v8)
      {
        v15 = 0;
        v27 = 0;
        v26 = (v8 + 8 * (v6 >> 5));
      }

      else
      {
        v11 = v6 + a1[35];
        v12 = *(*(v8 + (((v11 - 1) >> 2) & 0x3FFFFFFFFFFFFFF8)) + (((v11 - 1) & 0x1F) << 7));
        v13 = a1[34] & 0x1FLL;
        v14 = (v11 >> 2) & 0x3FFFFFFFFFFFFFF8;
        v15 = *v10 + (v13 << 7);
        v16 = v11 & 0x1F;
        v17 = *(v8 + v14) + (v16 << 7);
        *v32 = v8 + v7;
        *&v32[8] = v15;
        if (v17 != v15)
        {
          v18 = v16 | (4 * (v14 - v7));
          v19 = v18 - v13;
          if (v18 != v13)
          {
            v20 = v12 + -2.0;
            do
            {
              v21 = v19 >> 1;
              v22 = sub_1003B0628(v32, v19 >> 1);
              if (v20 >= *v23)
              {
                v24 = v23 + 16;
                if ((v23 - *v22 + 128) == 4096)
                {
                  v25 = v22[1];
                  ++v22;
                  v24 = v25;
                }

                *v32 = v22;
                *&v32[8] = v24;
                v21 = v19 + ~v21;
              }

              v19 = v21;
            }

            while (v21);
            v10 = *v32;
            v15 = *&v32[8];
            v6 = a1[34];
            v8 = a1[31];
            v9 = a1[32];
          }
        }

        v26 = (v8 + 8 * (v6 >> 5));
        if (v9 == v8)
        {
          v27 = 0;
        }

        else
        {
          v27 = *v26 + ((v6 & 0x1F) << 7);
        }
      }

      sub_1003AF1E0(a1 + 30, v26, v27, v10, v15);
      v28 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        v29 = a1[31];
        v30 = *(*(v29 + ((a1[34] >> 2) & 0x3FFFFFFFFFFFFFF8)) + ((a1[34] & 0x1FLL) << 7));
        v31 = *(*(v29 + (((a1[34] + a1[35] - 1) >> 2) & 0x3FFFFFFFFFFFFFF8)) + (((a1[34] + a1[35] - 1) & 0x1F) << 7));
        *v32 = 134218240;
        *&v32[4] = v30;
        *&v32[12] = 2048;
        *&v32[14] = v31;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "#findalgs-rangeposeinterpolator,Pose history now between %f s and %f s", v32, 0x16u);
      }
    }
  }
}

void sub_1003CBD5C(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (*(a2 + 181) != 1 || *(a2 + 180) > 2u)
  {
    v6 = *(a1 + 232);
    v8 = *(a2 + 16);
    v7 = *(a2 + 32);
    *a1 = *a2;
    *(a1 + 16) = v8;
    *(a1 + 32) = v7;
    v9 = *(a2 + 96);
    v11 = *(a2 + 48);
    v10 = *(a2 + 64);
    *(a1 + 80) = *(a2 + 80);
    *(a1 + 96) = v9;
    *(a1 + 48) = v11;
    *(a1 + 64) = v10;
    v12 = *(a2 + 160);
    v14 = *(a2 + 112);
    v13 = *(a2 + 128);
    *(a1 + 144) = *(a2 + 144);
    *(a1 + 160) = v12;
    *(a1 + 112) = v14;
    *(a1 + 128) = v13;
    v16 = *(a2 + 192);
    v15 = *(a2 + 208);
    v17 = *(a2 + 176);
    *(a1 + 224) = *(a2 + 224);
    *(a1 + 192) = v16;
    *(a1 + 208) = v15;
    *(a1 + 176) = v17;
    if ((v6 & 1) == 0)
    {
      *(a1 + 232) = 1;
    }

    sub_1003CB3F0(a1, a3);
  }

  else
  {
    v18 = qword_1009F9820;
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      if ((*(a2 + 181) & 1) == 0)
      {
        sub_1000195BC();
      }

      v20 = *(a2 + 180);
      v21[0] = 67109120;
      v21[1] = v20;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#findalgs-rangeposeinterpolator,mmsValStatus %d does not pass check, rejecting range result event", v21, 8u);
    }

    *a3 = 0;
    a3[72] = 0;
  }
}

void sub_1003CBF4C(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v5 = a2[1];
  if (v5 == *a2)
  {
    sub_1004CB354();
  }

  if (*(a3 + 200) == 1)
  {
    if (*(a3 + 80))
    {
      if ((*(a1 + 24) & 1) == 0)
      {
        v8 = *(a3 + 56);
        *(a1 + 9) = *(a3 + 65);
        *a1 = v8;
        if ((*(a1 + 24) & 1) == 0)
        {
          sub_1004CB2D0();
        }
      }

      if (*(a3 + 80))
      {
        v9 = sub_100400C60((a3 + 56), a1);
        v38[0] = *a3;
        v38[1] = v9;
        v38[2] = v10;
        v38[3] = v11;
        v38[4] = *(a3 + 88);
        v39 = 1;
        sub_1003E364C((a1 + 32), v38);
      }

LABEL_31:
      sub_1000195BC();
    }

    v17 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v18) = 0;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#loc-sf,sensor fusion supports geodetic coordinates now", &v18, 2u);
    }

    goto LABEL_26;
  }

  v12 = *(v5 - 240);
  v13 = *(v5 - 232);
  sub_1003E38AC(a1 + 32, v41);
  if (v42 != 1 || vabdd_f64(v41[0], v12) >= 120.0)
  {
    goto LABEL_26;
  }

  sub_1003E38C4((a1 + 32), v38);
  if ((v42 & 1) == 0)
  {
    goto LABEL_31;
  }

  if (v40 != 1 || v38[0] <= v12 + -1.0)
  {
LABEL_26:
    *a4 = 0;
    a4[200] = 0;
    return;
  }

  sub_1003CC278(v41, v38, v35);
  v33 = v36;
  v34 = v37;
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_1004CB328();
  }

  sub_1004010B8(&v33, a1);
  v18 = v12;
  v19 = v13;
  v20 = 4;
  LOBYTE(v21) = 0;
  v22 = 0;
  v23 = v14;
  v24 = v15;
  v25 = v16;
  v26 = 1;
  *v27 = 0u;
  v28 = 0u;
  *v29 = 0u;
  *v30 = 0u;
  v31 = 0u;
  memset(__p, 0, 25);
  sub_1003CC5B8(a4, &v18);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v30[1])
  {
    *&v31 = v30[1];
    operator delete(v30[1]);
  }

  if (v29[0])
  {
    v29[1] = v29[0];
    operator delete(v29[0]);
  }

  if (v27[1])
  {
    *&v28 = v27[1];
    operator delete(v27[1]);
  }
}

void sub_1003CC278(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v35 = 0x100000003;
  v34 = xmmword_10056EDA0;
  v33 = off_1009A8F78;
  v36 = &v37;
  sub_1003A8C00(&v33, 3, 1);
  sub_1003A8C50(&v33, 0.0);
  v6 = *(a2 + 8);
  *sub_1003A8DB0(&v33, 0, 0) = v6;
  v7 = *(a2 + 16);
  *sub_1003A8DB0(&v33, 1, 0) = v7;
  v8 = *(a2 + 24);
  *sub_1003A8DB0(&v33, 2, 0) = v8;
  v9 = __sincos_stret(*(a1 + 8));
  v30 = 0x300000003;
  v29 = xmmword_10056EDB0;
  v28 = off_1009A8FC0;
  v31 = &v32;
  sub_1003A8C00(&v28, 3, 3);
  sub_1003A8C50(&v28, 0.0);
  *sub_1003A8DB0(&v28, 0, 0) = v9.__cosval;
  *sub_1003A8DB0(&v28, 0, 1) = -v9.__sinval;
  *sub_1003A8DB0(&v28, 1, 0) = v9.__sinval;
  *sub_1003A8DB0(&v28, 1, 1) = v9.__cosval;
  *sub_1003A8DB0(&v28, 2, 2) = 0x3FF0000000000000;
  v25 = 0x100000003;
  v24 = xmmword_10056EDA0;
  v23 = off_1009A8F78;
  v26 = &v27;
  sub_1003A8C00(&v23, 3, 1);
  sub_1003A8C50(&v23, 0.0);
  v10 = *(a1 + 16);
  *sub_1003A8DB0(&v23, 0, 0) = v10;
  v11 = *(a1 + 24);
  *sub_1003A8DB0(&v23, 1, 0) = v11;
  v12 = *(a1 + 32);
  *sub_1003A8DB0(&v23, 2, 0) = v12;
  v15 = 0x100000003;
  v13 = off_1009A8F78;
  v14 = xmmword_10056EDA0;
  v16 = &v17;
  sub_1003A90A8(&v28, &v33, &v13);
  v20 = 0x100000003;
  v18 = off_1009A8F78;
  v19 = xmmword_10056EDA0;
  v21 = &v22;
  sub_1003A8EBC(&v13, &v23, &v18);
  *a3 = *a2;
  *(a3 + 8) = sub_1002EB6B8(&v18, 0, 0);
  *(a3 + 16) = sub_1002EB6B8(&v18, 1, 0);
  *(a3 + 24) = sub_1002EB6B8(&v18, 2, 0);
  *(a3 + 32) = *(a2 + 32);
  *(a3 + 40) = *(a2 + 40);
}

__n128 sub_1003CC5B8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 96) = 0;
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 112) = *(a2 + 112);
  *(a2 + 96) = 0;
  *(a2 + 104) = 0;
  *(a2 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 136) = *(a2 + 136);
  *(a2 + 120) = 0;
  *(a2 + 128) = 0;
  *(a2 + 136) = 0;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 160) = *(a2 + 160);
  *(a2 + 144) = 0;
  *(a2 + 152) = 0;
  *(a2 + 160) = 0;
  *(a1 + 168) = 0;
  *(a1 + 176) = 0;
  *(a1 + 184) = 0;
  result = *(a2 + 168);
  *(a1 + 168) = result;
  *(a1 + 184) = *(a2 + 184);
  *(a2 + 176) = 0;
  *(a2 + 184) = 0;
  *(a2 + 168) = 0;
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 200) = 1;
  return result;
}

void *sub_1003CC664(void *a1)
{
  v2 = a1[21];
  if (v2)
  {
    a1[22] = v2;
    operator delete(v2);
  }

  v3 = a1[18];
  if (v3)
  {
    a1[19] = v3;
    operator delete(v3);
  }

  v4 = a1[15];
  if (v4)
  {
    a1[16] = v4;
    operator delete(v4);
  }

  v5 = a1[12];
  if (v5)
  {
    a1[13] = v5;
    operator delete(v5);
  }

  return a1;
}

void *sub_1003CC6C8(uint64_t a1, uint64_t a2)
{
  result = sub_1003EC7BC(a1, a2);
  *result = off_1009A9DA0;
  return result;
}

uint64_t sub_1003CC6FC@<X0>(uint64_t a1@<X0>, double *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *a2;
  v5 = a2[1];
  v10[0] = 0;
  v10[88] = 0;
  result = (*(*a1 + 16))(a1, a3, v10, v5, v6);
  if (v8)
  {
    *a4 = result;
    v9 = 1;
    *(a4 + 8) = 1;
    *(a4 + 16) = 0;
    *(a4 + 24) = 0;
    *(a4 + 32) = 0;
    *(a4 + 36) = 0;
    *(a4 + 40) = 0;
    *(a4 + 48) = 0;
    *(a4 + 56) = 0;
    *(a4 + 64) = 0;
    *(a4 + 72) = 0;
    *(a4 + 76) = 0;
  }

  else
  {
    v9 = 0;
    *a4 = 0;
  }

  *(a4 + 80) = v9;
  return result;
}

__n128 sub_1003CC7A8(uint64_t a1, __n128 *a2)
{
  *(a1 + 8) = 1;
  *(a1 + 72) = 0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0;
  *a1 = off_1009A9DE0;
  result = *a2;
  *(a1 + 96) = a2[1].n128_u64[0];
  *(a1 + 80) = result;
  *(a1 + 104) = 0;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 112) = 0;
  return result;
}

uint64_t sub_1003CC800(uint64_t result)
{
  *(result + 120) = *(result + 112);
  *(result + 104) = 0;
  return result;
}

void sub_1003CC810(void *a1@<X0>, uint64_t *a2@<X1>, double *a3@<X8>)
{
  v6 = *a2;
  v5 = a2[1];
  v7 = *(a2 + 4);
  v8 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
  {
    v22 = 134218496;
    v23 = v6;
    v24 = 2048;
    v25 = v5;
    v26 = 1024;
    v27 = v7;
    _os_log_debug_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "#boundedregiongrange-estimator, Input time: %4.3f s, rssi: %3.1f, channel: %d", &v22, 0x1Cu);
  }

  v9 = a1[15];
  v10 = a1[16];
  if (v9 >= v10)
  {
    v12 = a1[14];
    v13 = 0xAAAAAAAAAAAAAAABLL * ((v9 - v12) >> 3);
    v14 = v13 + 1;
    if (v13 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_100019B38();
    }

    v15 = 0xAAAAAAAAAAAAAAABLL * ((v10 - v12) >> 3);
    if (2 * v15 > v14)
    {
      v14 = 2 * v15;
    }

    if (v15 >= 0x555555555555555)
    {
      v16 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v16 = v14;
    }

    if (v16)
    {
      sub_100012410((a1 + 14), v16);
    }

    v17 = 24 * v13;
    *v17 = v6;
    *(v17 + 8) = v5;
    *(v17 + 16) = v7;
    *(v17 + 20) = 0;
    v11 = 24 * v13 + 24;
    v18 = a1[14];
    v19 = a1[15] - v18;
    v20 = 24 * v13 - v19;
    memcpy((v17 - v19), v18, v19);
    v21 = a1[14];
    a1[14] = v20;
    a1[15] = v11;
    a1[16] = 0;
    if (v21)
    {
      operator delete(v21);
    }
  }

  else
  {
    *v9 = v6;
    *(v9 + 8) = v5;
    v11 = v9 + 24;
    *(v9 + 16) = v7;
    *(v9 + 20) = 0;
  }

  a1[15] = v11;
  sub_1003CC9E4(a1);
  sub_1003CCA60(a1);
  sub_1003CCB7C(a1, a3);
}

void sub_1003CC9E4(uint64_t a1)
{
  if ((*(a1 + 104) & 1) == 0)
  {
    v1 = *(a1 + 112);
    v2 = *(a1 + 120);
    if (v1 != v2)
    {
      v3 = *(v2 - 3) - *v1;
      v4 = *(a1 + 88);
      *(a1 + 104) = v3 >= v4;
      if (v3 >= v4)
      {
        v5 = qword_1009F9820;
        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
        {
          sub_1004CB380(v5);
        }
      }
    }
  }
}

void sub_1003CCA60(uint64_t a1)
{
  v1 = (a1 + 112);
  v2 = *(a1 + 112);
  v3 = *(a1 + 120);
  v4 = *(a1 + 112);
  if (v4 != v3)
  {
    v5 = *(v3 - 24);
    v6 = *(a1 + 96);
    if (v5 - *v4 >= v6)
    {
      while (v5 - *v4 <= v6)
      {
        v4 += 24;
        if (v4 == v3)
        {
          goto LABEL_14;
        }
      }

      if (v4 != v3)
      {
        v7 = v4 + 24;
        if (v4 + 24 != v3)
        {
          do
          {
            if (v5 - *v7 <= *(a1 + 96))
            {
              v8 = *v7;
              *(v4 + 16) = *(v7 + 16);
              *v4 = v8;
              v4 += 24;
            }

            v7 += 24;
          }

          while (v7 != v3);
          v3 = *(a1 + 120);
        }
      }

      if (v4 != v3)
      {
        v3 = v4;
        *(a1 + 120) = v4;
      }

LABEL_14:
      v9 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
      {
        sub_1004CB3C4(v3, v1, v9);
      }
    }
  }
}

void sub_1003CCB7C(uint64_t a1@<X0>, double *a2@<X8>)
{
  *a2 = 0;
  *(a2 + 80) = 0;
  if (*(a1 + 104) == 1)
  {
    v3 = *(&off_1009EA9B0 + *(a1 + 80));
    v6 = 0;
    v7 = 0;
    __p = 0;
    sub_100012394(&__p, *(a1 + 112), *(a1 + 120), 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 120) - *(a1 + 112)) >> 3));
    v4 = (*(*v3 + 16))(v3, &__p);
    if (__p)
    {
      v6 = __p;
      operator delete(__p);
    }

    *a2 = v4;
    *(a2 + 8) = 1;
    *(a2 + 16) = 0;
    *(a2 + 24) = 0;
    *(a2 + 32) = 0;
    *(a2 + 36) = 0;
    *(a2 + 40) = 0;
    *(a2 + 48) = 0;
    *(a2 + 56) = 0;
    *(a2 + 64) = 0;
    *(a2 + 72) = 0;
    *(a2 + 76) = 0;
    *(a2 + 80) = 1;
  }
}

void sub_1003CCC70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1003CCC9C(void *a1)
{
  sub_1003CCDDC(a1);

  operator delete();
}

void *sub_1003CCCD4(void *a1)
{
  *a1 = off_1009A9DE0;
  v2 = a1[14];
  if (v2)
  {
    a1[15] = v2;
    operator delete(v2);
  }

  *a1 = off_1009AA220;
  sub_100188E54(a1 + 2);
  return a1;
}

void sub_1003CCD48(void *a1)
{
  *a1 = off_1009A9DE0;
  v2 = a1[14];
  if (v2)
  {
    a1[15] = v2;
    operator delete(v2);
  }

  *a1 = off_1009AA220;
  sub_100188E54(a1 + 2);

  operator delete();
}

void *sub_1003CCDDC(void *a1)
{
  *a1 = off_1009AA160;
  v2 = a1[37];
  if (v2)
  {
    a1[38] = v2;
    operator delete(v2);
  }

  *a1 = off_1009AA220;
  sub_100188E54(a1 + 2);
  return a1;
}

uint64_t sub_1003CCE50()
{
  v8[0] = xmmword_10056F9C0;
  v8[1] = unk_10056F9D0;
  sub_1001BD0B0(qword_1009F80C0, v8, 4);
  xmmword_1009F80D8 = xmmword_100563BD0;
  unk_1009F80E8 = xmmword_100563BE0;
  qword_1009F8100 = 0;
  unk_1009F8108 = 0;
  qword_1009F80F8 = 0x3FD999999999999ALL;
  unk_1009F8110 = xmmword_100563BF0;
  dword_1009F8120 = 5;
  qword_1009F8128 = 0x4000000000000000;
  dword_1009F8130 = 5;
  byte_1009F8138 = 0;
  unk_1009F813C = 0x30000000ALL;
  xmmword_1009F8148 = xmmword_100563C00;
  unk_1009F8158 = xmmword_100563C10;
  xmmword_1009F8168 = xmmword_100563C20;
  qword_1009F8178 = 0x3FE3333333333333;
  dword_1009F8180 = 3;
  xmmword_1009F8188 = xmmword_100563C30;
  unk_1009F8198 = xmmword_100563C10;
  xmmword_1009F81A8 = xmmword_100563C00;
  qword_1009F81B8 = 0x3FE3333333333333;
  byte_1009F81C0 = 0;
  xmmword_1009F81C8 = xmmword_100563C40;
  unk_1009F81D8 = xmmword_100563C50;
  __asm { FMOV            V0.2D, #1.0 }

  v6 = _Q0;
  xmmword_1009F81E8 = _Q0;
  qword_1009F81F8 = 0xBFD3333333333333;
  xmmword_1009F8200 = xmmword_100563C60;
  qword_1009F8210 = 0x3E99999A40000000;
  xmmword_1009F8218 = xmmword_100563BE0;
  qword_1009F8230 = 0;
  unk_1009F8238 = 0;
  qword_1009F8228 = 0x3FD999999999999ALL;
  xmmword_1009F8240 = xmmword_100563BF0;
  dword_1009F8250 = 5;
  qword_1009F8258 = 0x4000000000000000;
  dword_1009F8260 = 4;
  qword_1009F8268 = 0x300000008;
  qword_1009F8270 = 0xC04E800000000000;
  v7 = 0xC04E800000000000;
  sub_1001BD370(qword_1009F8278, &v7, 1);
  xmmword_1009F8290 = xmmword_100563C70;
  qword_1009F82A0 = 0x4024000000000000;
  dword_1009F82A8 = 45;
  byte_1009F82B0 = 0;
  byte_1009F82C8 = 0;
  qword_1009F82D0 = 0;
  byte_1009F82D8 = 0;
  dword_1009F82DC = 1;
  byte_1009F82E0 = 1;
  xmmword_1009F82E8 = xmmword_100563C80;
  xmmword_1009F82F8 = xmmword_100563C90;
  xmmword_1009F8308 = v6;
  qword_1009F8318 = 0xC059000000000000;
  xmmword_1009F8320 = xmmword_100563CA0;
  qword_1009F8330 = vdup_n_s32(0x3DCCCCCDu);
  xmmword_1009F8338 = xmmword_100563BE0;
  qword_1009F8348 = 0x3FD999999999999ALL;
  xmmword_1009F8350 = 0u;
  unk_1009F8360 = xmmword_100563BF0;
  dword_1009F8370 = 5;
  qword_1009F8378 = 0x4000000000000000;
  dword_1009F8380 = 10;
  qword_1009F8388 = 0x4034000000000000;
  dword_1009F8390 = 3;
  xmmword_1009F8398 = xmmword_100563CB0;
  return __cxa_atexit(sub_1001BB564, qword_1009F80C0, &_mh_execute_header);
}

uint64_t sub_1003CD134(uint64_t a1, int a2, int a3)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  sub_1003BC2BC(a1, qword_1009F83A8, qword_1009F83B0, (qword_1009F83B0 - qword_1009F83A8) >> 4);
  *(a1 + 168) = 0u;
  *(a1 + 24) = 0;
  *(a1 + 28) = 0;
  *(a1 + 32) = 0;
  *(a1 + 36) = 0;
  *(a1 + 40) = 0u;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0u;
  *(a1 + 84) = 0;
  *(a1 + 128) = 0;
  *(a1 + 132) = 0;
  *(a1 + 136) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 69) = 0;
  *(a1 + 104) = 0u;
  *(a1 + 117) = 0;
  *(a1 + 152) = 0u;
  *(a1 + 216) = 0x100000003;
  *(a1 + 184) = 0;
  *(a1 + 192) = off_1009A8F78;
  *(a1 + 200) = xmmword_10056EDA0;
  *(a1 + 224) = a1 + 232;
  sub_1003A8C00((a1 + 192), 3, 1);
  sub_1003A8C50(a1 + 192, 0.0);
  *(a1 + 288) = 0x100000004;
  *(a1 + 264) = off_1009A8EE8;
  *(a1 + 272) = xmmword_10056ED80;
  *(a1 + 296) = a1 + 304;
  sub_1003A8C00((a1 + 264), 4, 1);
  sub_1003A8C50(a1 + 264, 0.0);
  *(a1 + 360) = 0x300000003;
  *(a1 + 336) = off_1009A8FC0;
  *(a1 + 344) = xmmword_10056EDB0;
  *(a1 + 368) = a1 + 376;
  *(a1 + 448) = 0;
  *(a1 + 464) = 0;
  *(a1 + 496) = 0x100000003;
  *(a1 + 472) = off_1009A8F78;
  *(a1 + 480) = xmmword_10056EDA0;
  *(a1 + 504) = a1 + 512;
  *(a1 + 560) = 0x100000003;
  *(a1 + 536) = off_1009A8F78;
  *(a1 + 544) = xmmword_10056EDA0;
  *(a1 + 568) = a1 + 576;
  *(a1 + 600) = 0u;
  *(a1 + 616) = 0u;
  *(a1 + 632) = 0x3FF0000000000000;
  *(a1 + 640) = xmmword_10056F1D0;
  *(a1 + 656) = 1;
  *(a1 + 728) = 0;
  *(a1 + 696) = 0u;
  *(a1 + 712) = 0u;
  *(a1 + 664) = 0u;
  *(a1 + 680) = 0u;
  v13 = 0x100000003;
  *buf = off_1009A8F78;
  v12 = xmmword_10056EDA0;
  v14 = &v15;
  sub_1003A8C00(buf, 3, 1);
  sub_1003A8C50(buf, 0.0);
  *(a1 + 736) = 0u;
  *(a1 + 752) = 0x7FF8000000000000;
  *(a1 + 760) = 0u;
  sub_1003BBC24(a1 + 776, buf);
  v4 = 0;
  *(a1 + 840) = 0;
  *(a1 + 848) = 0;
  *(a1 + 880) = 0x100000003;
  *(a1 + 856) = off_1009A8F78;
  *(a1 + 864) = xmmword_10056EDA0;
  *(a1 + 888) = a1 + 896;
  *(a1 + 920) = 0x10000;
  *(a1 + 924) = 257;
  *(a1 + 926) = 0;
  *(a1 + 929) = 0;
  *(a1 + 936) = 0x1000000032;
  *(a1 + 944) = xmmword_10056FA90;
  *(a1 + 960) = xmmword_10056FAA0;
  *(a1 + 976) = 0x4018000000000000;
  *(a1 + 984) = 1;
  do
  {
    *sub_1003AFDBC(a1 + 472, v4) = 0;
    *sub_1003AFDBC(a1 + 536, v4++) = 0;
  }

  while (v4 != 3);
  sub_1003CD744((a1 + 664), 4uLL);
  v5 = &qword_1009F83C0;
  if (a2)
  {
    v6 = &qword_1009F83A8;
  }

  else
  {
    v6 = &qword_1009F83C0;
  }

  if (v6 != a1)
  {
    if (a2)
    {
      v5 = &qword_1009F83A8;
    }

    sub_100357D3C(a1, *v6, v5[1], (v5[1] - *v6) >> 4);
  }

  *(a1 + 984) = a3;
  v7 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109376;
    *&buf[4] = a2;
    LOWORD(v12) = 1024;
    *(&v12 + 2) = a3;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#sa_algo_batchfilter,SyntheticApertureBatchFilter constructed. Strict box span requirement %d, third party behavior %d", buf, 0xEu);
  }

  return a1;
}

void sub_1003CD5CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, void **a11, void **a12, void **a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void **a19)
{
  a19 = (v19 + 712);
  sub_10038E378(&a19);
  a19 = (v19 + 688);
  sub_10038E3D0(&a19);
  sub_10038E378(&a19);
  *v23 = off_1009991A0;
  *v22 = off_1009991A0;
  *a10 = off_1009991A0;
  *v21 = off_1009991A0;
  *v20 = off_1009991A0;
  sub_10038E448(&a19);
  v25 = *a11;
  if (*a11)
  {
    *(v19 + 144) = v25;
    operator delete(v25);
  }

  v26 = *a12;
  if (*a12)
  {
    *(v19 + 96) = v26;
    operator delete(v26);
  }

  v27 = *a13;
  if (*a13)
  {
    *(v19 + 48) = v27;
    operator delete(v27);
  }

  v28 = *v19;
  if (*v19)
  {
    *(v19 + 8) = v28;
    operator delete(v28);
  }

  _Unwind_Resume(a1);
}

void *sub_1003CD744(void *result, unint64_t a2)
{
  if (0x6DB6DB6DB6DB6DB7 * ((result[2] - *result) >> 4) < a2)
  {
    if (a2 < 0x24924924924924ALL)
    {
      v2 = result[1] - *result;
      sub_1003D61D0(result, a2);
    }

    sub_100019B38();
  }

  return result;
}

void sub_1003CD80C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1003D632C(va);
  _Unwind_Resume(a1);
}

double sub_1003CD824@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 927) & 1) != 0 || (*(a1 + 926))
  {
    goto LABEL_3;
  }

  if (*(a1 + 920) == 1)
  {
    v6 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 624);
      v10 = 134217984;
      v11 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#sa_algo_batchfilter,Returning solution from AoA at %f s", &v10, 0xCu);
    }

    *a2 = *(a1 + 72);
    *(a2 + 5) = *(a1 + 77);
    *(a2 + 24) = 0;
    *(a2 + 32) = 0;
    *(a2 + 16) = 0;
    sub_1003AF7C0(a2 + 16, *(a1 + 88), *(a1 + 96), 0xCF3CF3CF3CF3CF3DLL * ((*(a1 + 96) - *(a1 + 88)) >> 3));
    v4 = 112;
  }

  else
  {
    if (*(a1 + 921) != 1)
    {
LABEL_3:
      *a2 = *(a1 + 24);
      *(a2 + 5) = *(a1 + 29);
      *(a2 + 24) = 0;
      *(a2 + 32) = 0;
      *(a2 + 16) = 0;
      sub_1003AF7C0(a2 + 16, *(a1 + 40), *(a1 + 48), 0xCF3CF3CF3CF3CF3DLL * ((*(a1 + 48) - *(a1 + 40)) >> 3));
      v4 = 64;
      goto LABEL_4;
    }

    v8 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 848);
      v10 = 134217984;
      v11 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#sa_algo_batchfilter,Returning solution from straight path estimator at %f s", &v10, 0xCu);
    }

    *a2 = *(a1 + 120);
    *(a2 + 5) = *(a1 + 125);
    *(a2 + 24) = 0;
    *(a2 + 32) = 0;
    *(a2 + 16) = 0;
    sub_1003AF7C0(a2 + 16, *(a1 + 136), *(a1 + 144), 0xCF3CF3CF3CF3CF3DLL * ((*(a1 + 144) - *(a1 + 136)) >> 3));
    v4 = 160;
  }

LABEL_4:
  result = *(a1 + v4);
  *(a2 + 40) = result;
  return result;
}

void sub_1003CDA30(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  *(a1 + 256) = a4;
  if (a3 - *(a1 + 608) <= 10.0 || *(a1 + 672) == *(a1 + 664))
  {
    if (*(a1 + 926) == 1)
    {
      *(a1 + 36) = 0;
      v7 = *(a1 + 32);
      sub_1003CDDD0(a1);
      if (v7 != *(a1 + 32))
      {
        v8 = qword_1009F9820;
        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v11) = 0;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#sa_algo_batchfilter,Vertical state changed with the pose update", &v11, 2u);
        }

        *(a1 + 36) = 1;
      }
    }
  }

  else
  {
    sub_1003CDBFC(a1);
    *(a1 + 24) = 0;
    *(a1 + 28) = 0;
    *(a1 + 32) = 0;
    *(a1 + 36) = 0;
    sub_1003D5D28((a1 + 40), 0, 0, 0);
    *(a1 + 64) = 0;
  }

  if (*(a1 + 920) == 1)
  {
    v9 = *(a1 + 624);
    if (a3 - v9 > 10.0)
    {
      *(a1 + 920) = 0;
      v10 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        v11 = 134218240;
        v12 = v9;
        v13 = 2048;
        v14 = a3;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#sa_algo_batchfilter,AoA Solution from AoA at %f s is no longer valid - current time is %f s", &v11, 0x16u);
      }
    }
  }

  sub_1003CD824(a1, a2);
}

void sub_1003CDBFC(uint64_t a1)
{
  v2 = *(a1 + 672);
  v3 = *(a1 + 664);
  if (v2 != v3)
  {
    v4 = v2 - 72;
    do
    {
      *(v2 - 72) = off_1009991A0;
      v4 -= 112;
      v2 -= 112;
    }

    while (v2 != v3);
  }

  *(a1 + 672) = v3;
  v5 = *(a1 + 696);
  v6 = *(a1 + 688);
  if (v5 != v6)
  {
    v7 = v5 - 176;
    do
    {
      *(v5 - 112) = off_1009991A0;
      *(v5 - 176) = off_1009991A0;
      v7 -= 208;
      v5 -= 208;
    }

    while (v5 != v6);
  }

  *(a1 + 696) = v6;
  sub_1003D181C(a1);
  v8 = *(a1 + 40);
  *(a1 + 29) = 0;
  *(a1 + 24) = 0;
  if (v8)
  {
    *(a1 + 48) = v8;
    operator delete(v8);
  }

  v9 = 0uLL;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  v10 = *(a1 + 88);
  *(a1 + 72) = 0;
  *(a1 + 77) = 0;
  if (v10)
  {
    *(a1 + 96) = v10;
    operator delete(v10);
    v9 = 0uLL;
  }

  *(a1 + 88) = v9;
  *(a1 + 104) = v9;
  v11 = *(a1 + 136);
  *(a1 + 120) = 0;
  *(a1 + 125) = 0;
  if (v11)
  {
    *(a1 + 144) = v11;
    operator delete(v11);
  }

  v12 = *(a1 + 168);
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 256) = 0;
  *(a1 + 600) = 0u;
  *(a1 + 616) = 0u;
  *(a1 + 632) = 0x3FF0000000000000;
  sub_10038E49C(a1 + 168, v12);
  if (*(a1 + 656) == 1)
  {
    *(a1 + 656) = 0;
  }

  *(a1 + 920) = 0;
  *(a1 + 848) = 0;
  *(a1 + 464) = 0;
  v13 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#sa_algo_batchfilter,Batch filter is reinitialized", v14, 2u);
  }
}

void sub_1003CDDD0(uint64_t a1)
{
  *(a1 + 928) = 0;
  *(a1 + 932) = 0;
  if (*(a1 + 926) == 1)
  {
    v2 = *(a1 + 168);
    v44 = 0x100000003;
    v42 = off_1009A8F78;
    v43 = xmmword_10056EDA0;
    v45 = v46;
    sub_1003A920C(v2, a1 + 192, &v42);
    v3 = sub_1002EB67C(&v42, 0);
    v4 = sub_1002EB67C(&v42, 0);
    v5 = sub_1002EB67C(&v42, 2u);
    if (sqrt(v5 * sub_1002EB67C(&v42, 2u) + v3 * v4) <= 2.0)
    {
      v6 = *(a1 + 168);
      v7 = *(a1 + 176);
      if (v6 == v7)
      {
LABEL_15:
        *(a1 + 928) = 1;
      }

      else
      {
        while (1)
        {
          v8 = sub_1002EB6B8(v6 + 128, 1, 1);
          v9 = sub_1002EB67C(v6, 1u);
          v10 = sqrt(v8);
          v11 = v9 - *(a1 + 256);
          v12 = v10 + v11;
          v13 = v11 - v10;
          if (v13 <= -2.5 && v12 >= -2.5)
          {
            break;
          }

          if (v13 <= 2.5 && v12 >= 2.5)
          {
            break;
          }

          v6 += 432;
          if (v6 == v7)
          {
            goto LABEL_15;
          }
        }
      }
    }

    v16 = 0x6DB6DB6DB6DB6DB7 * ((*(a1 + 672) - *(a1 + 664)) >> 4);
    __src[0] = 0;
    __src[1] = 0;
    v41 = 0;
    sub_1003BB884(__src, v16);
    v17 = *(a1 + 664);
    v18 = *(a1 + 672);
    if (v17 != v18)
    {
      v19 = *(a1 + 168);
      do
      {
        v37 = 0x100000003;
        v35 = off_1009A8F78;
        v36 = xmmword_10056EDA0;
        v38 = &v39;
        sub_1003A920C(v19, v17 + 40, &v35);
        v20 = sub_1002EB67C(&v35, 0);
        v21 = sub_1002EB67C(&v35, 2u);
        if ((*(a1 + 984) & 1) != 0 || sqrt(v21 * v21 + v20 * v20) <= 4.0)
        {
          v22 = sub_1002EB67C(&v35, 1u);
          v23 = __src[1];
          if (__src[1] >= v41)
          {
            v25 = __src[0];
            v26 = __src[1] - __src[0];
            v27 = (__src[1] - __src[0]) >> 3;
            v28 = v27 + 1;
            if ((v27 + 1) >> 61)
            {
              sub_100019B38();
            }

            v29 = v41 - __src[0];
            if ((v41 - __src[0]) >> 2 > v28)
            {
              v28 = v29 >> 2;
            }

            if (v29 >= 0x7FFFFFFFFFFFFFF8)
            {
              v30 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v30 = v28;
            }

            if (v30)
            {
              sub_100012564(__src, v30);
            }

            *(8 * v27) = v22;
            v24 = (8 * v27 + 8);
            memcpy(0, v25, v26);
            v31 = __src[0];
            __src[0] = 0;
            __src[1] = v24;
            v41 = 0;
            if (v31)
            {
              operator delete(v31);
            }
          }

          else
          {
            *__src[1] = v22;
            v24 = v23 + 8;
          }

          __src[1] = v24;
        }

        v17 += 112;
      }

      while (v17 != v18);
    }

    v32 = __src[0];
    if (__src[0] != __src[1])
    {
      v46[31] = 0;
      v33 = sub_10016D8D4(__src[0], __src[1]);
      if (*v34 - *v33 >= 0.5)
      {
        *(a1 + 928) = 2;
        *(a1 + 932) = 1;
      }

      v32 = __src[0];
    }

    if (v32)
    {
      __src[1] = v32;
      operator delete(v32);
    }
  }
}

void sub_1003CE14C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1003CE180(__int128 **a1@<X1>, uint64_t *a2@<X8>)
{
  v5 = *a1;
  v4 = a1[1];
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  v62 = v5;
  v63[0] = v5;
  v6 = v4 - v5;
  if (v4 == v5 || (v7 = v5 + 7, v65 = v5 + 7, v5 + 7 == v4))
  {
    v9 = v5;
    goto LABEL_26;
  }

  if (sub_1003D5EA0(&v65, &v62))
  {
    v62 = (v5 + 7);
    v8 = v5;
  }

  else
  {
    v63[0] = v5 + 7;
    v8 = v5 + 7;
    v7 = v5;
  }

  v9 = v5 + 14;
  if (v5 + 14 == v4)
  {
LABEL_20:
    v5 = v8;
    v9 = v7;
    goto LABEL_26;
  }

  v10 = v5 + 21;
  while (1)
  {
    v64 = v10 - 7;
    v65 = v9 + 7;
    if (v9 + 7 == v4)
    {
      break;
    }

    if (sub_1003D5EA0(&v65, &v64))
    {
      if (sub_1003D5EA0(&v65, &v62))
      {
        v62 = v10;
        v7 = v10;
      }

      v11 = sub_1003D5EA0(&v64, v63);
      v12 = v9;
      if (v11)
      {
        goto LABEL_19;
      }
    }

    else
    {
      if (sub_1003D5EA0(&v64, &v62))
      {
        v62 = (v10 - 7);
        v7 = v10 - 7;
      }

      v13 = sub_1003D5EA0(&v65, v63);
      v12 = v10;
      if (v13)
      {
        goto LABEL_19;
      }
    }

    v63[0] = v12;
    v8 = v12;
LABEL_19:
    v9 += 14;
    v65 = v9;
    v10 += 14;
    if (v9 == v4)
    {
      goto LABEL_20;
    }
  }

  if (!sub_1003D5EA0(&v64, &v62))
  {
    if (!sub_1003D5EA0(&v64, v63))
    {
      v8 = v10 - 7;
    }

    v9 = v7;
  }

  v5 = v8;
LABEL_26:
  v14 = sub_1002EB67C(v9 + 40, 0);
  v15 = sub_1002EB67C(v5 + 40, 0);
  v16 = *a1;
  v17 = a1[1];
  v62 = v16;
  v63[0] = v16;
  if (v16 == v17)
  {
    goto LABEL_48;
  }

  v18 = v16 + 7;
  v65 = v16 + 7;
  if (v16 + 7 == v17)
  {
    goto LABEL_48;
  }

  if (sub_1003D5F50(&v65, &v62))
  {
    v62 = (v16 + 7);
  }

  else
  {
    v63[0] = v16 + 7;
    v18 = v16;
  }

  if (v16 + 14 == v17)
  {
LABEL_47:
    v16 = v18;
    goto LABEL_48;
  }

  v19 = v16 + 21;
  v16 += 14;
  while (2)
  {
    v64 = v19 - 7;
    v65 = v16 + 7;
    if (v16 + 7 != v17)
    {
      if (sub_1003D5F50(&v65, &v64))
      {
        if (sub_1003D5F50(&v65, &v62))
        {
          v62 = v19;
          v18 = v19;
        }

        v20 = sub_1003D5F50(&v64, v63);
        v21 = v16;
        if (v20)
        {
          goto LABEL_43;
        }
      }

      else
      {
        if (sub_1003D5F50(&v64, &v62))
        {
          v62 = (v19 - 7);
          v18 = v19 - 7;
        }

        v22 = sub_1003D5F50(&v65, v63);
        v21 = v19;
        if (v22)
        {
LABEL_43:
          v16 += 14;
          v65 = v16;
          v19 += 14;
          if (v16 == v17)
          {
            goto LABEL_47;
          }

          continue;
        }
      }

      v63[0] = v21;
      goto LABEL_43;
    }

    break;
  }

  if (!sub_1003D5F50(&v64, &v62))
  {
    sub_1003D5F50(&v64, v63);
    goto LABEL_47;
  }

LABEL_48:
  v23 = sub_1002EB67C(v16 + 40, 1u);
  v25 = *a1;
  v24 = a1[1];
  v62 = v25;
  v63[0] = v25;
  if (v25 == v24 || (v26 = v25 + 7, v65 = v25 + 7, v25 + 7 == v24))
  {
    v28 = v25;
    goto LABEL_73;
  }

  if (sub_1003D6000(&v65, &v62))
  {
    v62 = (v25 + 7);
    v27 = v25;
  }

  else
  {
    v63[0] = v25 + 7;
    v27 = v25 + 7;
    v26 = v25;
  }

  v28 = v25 + 14;
  if (v25 + 14 == v24)
  {
LABEL_67:
    v25 = v27;
    v28 = v26;
    goto LABEL_73;
  }

  v29 = v25 + 21;
  while (2)
  {
    v64 = v29 - 7;
    v65 = v28 + 7;
    if (v28 + 7 != v24)
    {
      if (sub_1003D6000(&v65, &v64))
      {
        if (sub_1003D6000(&v65, &v62))
        {
          v62 = v29;
          v26 = v29;
        }

        v30 = sub_1003D6000(&v64, v63);
        v31 = v28;
        if (v30)
        {
          goto LABEL_66;
        }
      }

      else
      {
        if (sub_1003D6000(&v64, &v62))
        {
          v62 = (v29 - 7);
          v26 = v29 - 7;
        }

        v32 = sub_1003D6000(&v65, v63);
        v31 = v29;
        if (v32)
        {
LABEL_66:
          v28 += 14;
          v65 = v28;
          v29 += 14;
          if (v28 == v24)
          {
            goto LABEL_67;
          }

          continue;
        }
      }

      v63[0] = v31;
      v27 = v31;
      goto LABEL_66;
    }

    break;
  }

  if (!sub_1003D6000(&v64, &v62))
  {
    if (!sub_1003D6000(&v64, v63))
    {
      v27 = v29 - 7;
    }

    v28 = v26;
  }

  v25 = v27;
LABEL_73:
  v33 = sub_1002EB67C(v28 + 40, 2u);
  v34 = sub_1002EB67C(v25 + 40, 2u);
  v35 = 0x6DB6DB6DB6DB6DB7 * (v6 >> 4);
  v63[0] = 0;
  v63[1] = 0;
  v62 = v63;
  v36 = v35;
  if (v35)
  {
    v37 = 0;
    v38 = ceil((v15 - v14) * 4.0);
    v39 = fmaxf(v38, 1.0);
    v40 = ceil((v34 - v33) * 4.0);
    v41 = fmaxf(v40, 1.0);
    do
    {
      v42 = sub_1002EB67C(&(*a1)[7 * v37 + 2] + 8, 0);
      v43 = sub_1002EB67C(&(*a1)[7 * v37 + 2] + 8, 1u);
      v44 = sub_1002EB67C(&(*a1)[7 * v37 + 2] + 8, 2u);
      v45 = ceil((v42 - v14) * 4.0) + -1.0;
      v46 = fmaxf(v45, 0.0);
      v47 = ceil((v43 - v23) * 4.0) + -1.0;
      *&v44 = ceil((v44 - v33) * 4.0) + -1.0;
      v48 = v46 + (fmaxf(*&v44, 0.0) + fmaxf(v47, 0.0) * v41) * v39;
      v49 = v63[0];
      if (!v63[0])
      {
        goto LABEL_83;
      }

      v50 = v63;
      do
      {
        v51 = *(v49 + 7);
        v52 = v51 >= v48;
        v53 = v51 < v48;
        if (v52)
        {
          v50 = v49;
        }

        v49 = *(v49 + v53);
      }

      while (v49);
      if (v50 != v63 && v48 >= *(v50 + 7))
      {
        if (*(&(*a1)[7 * v37] + 1) < *(&(*a1)[7 * *(v50 + 8)] + 1))
        {
          *(v50 + 8) = v37;
        }
      }

      else
      {
LABEL_83:
        v66[0] = v48;
        v66[1] = v37;
        sub_1003D639C(&v62, v66);
      }

      ++v37;
    }

    while (v37 != v36);
    v54 = v62;
    if (v62 != v63)
    {
      v55 = a2[1];
      do
      {
        v56 = &(*a1)[7 * *(v54 + 8)];
        if (v55 >= a2[2])
        {
          v55 = sub_1003D6468(a2, &(*a1)[7 * *(v54 + 8)]);
        }

        else
        {
          v57 = *v56;
          v58 = *(v56 + 16);
          *(v55 + 32) = *(v56 + 32);
          *v55 = v57;
          *(v55 + 16) = v58;
          sub_1003BBC24(v55 + 40, v56 + 40);
          *(v55 + 104) = *(v56 + 104);
          v55 += 112;
        }

        a2[1] = v55;
        v59 = *(v54 + 1);
        if (v59)
        {
          do
          {
            v60 = v59;
            v59 = *v59;
          }

          while (v59);
        }

        else
        {
          do
          {
            v60 = *(v54 + 2);
            v61 = *v60 == v54;
            v54 = v60;
          }

          while (!v61);
        }

        v54 = v60;
      }

      while (v60 != v63);
    }
  }

  sub_10002074C(&v62, v63[0]);
}

void sub_1003CE810(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_10038E378(va);
  _Unwind_Resume(a1);
}

double sub_1003CE870(uint64_t a1, uint64_t *a2, void *a3)
{
  memset(v41, 0, sizeof(v41));
  v3 = *a2;
  if (a2[1] == *a2)
  {
    v7 = 0.0;
  }

  else
  {
    v6 = 0;
    v7 = 0.0;
    do
    {
      v38 = 0x100000003;
      v36 = off_1009A8F78;
      v37 = xmmword_10056EDA0;
      v39 = &v40;
      v33 = 0x100000003;
      v31 = off_1009A8F78;
      v32 = xmmword_10056EDA0;
      v34 = &v35;
      v8 = 112 * v6;
      v9 = *a3 + 112 * v6;
      v10 = *(v9 + 8);
      v11 = v3 + 112 * v6;
      v12 = *(v11 + 8);
      v13 = 3.14159265 - acos(((v12 + 0.1) * (v12 + 0.1) + (v10 - v12) * (v10 - v12) - (v10 + -0.1) * (v10 + -0.1)) / ((v12 + 0.1) * (v10 - v12 + v10 - v12)));
      if (v13 <= 1.0)
      {
        v14 = 1.0;
      }

      else
      {
        v14 = 1.0 / v13;
      }

      if (v10 <= v12)
      {
        v15 = v9;
      }

      else
      {
        v15 = v11;
      }

      sub_1003A8CFC(&v36, v15 + 40);
      v16 = *a3 + v8;
      if (*(v16 + 8) <= *(*a2 + v8 + 8))
      {
        v16 = *a2 + v8;
      }

      sub_1003A8CFC(&v31, v16 + 40);
      v17 = *a2 + v8;
      v18 = *a3 + v8;
      if (*(v17 + 8) >= *(v18 + 8))
      {
        v19 = *(v17 + 8);
      }

      else
      {
        v19 = *(v18 + 8);
      }

      v28 = 0x100000003;
      v26 = off_1009A8F78;
      v27 = xmmword_10056EDA0;
      v29 = &v30;
      sub_1003A920C(&v36, &v31, &v26);
      v54 = 0x100000003;
      v52 = off_1009A8F78;
      v53 = xmmword_10056EDA0;
      v55 = &v56;
      v49 = 0x100000134;
      v48 = xmmword_10056EEA0;
      v47 = off_1009A9168;
      v50 = v51;
      v44 = 0x100000003;
      v43 = xmmword_10056EDA0;
      v42 = off_1009A8F78;
      v45 = &v46;
      sub_1003AFEC0(&v26, &v52, &v47, &v42, "2");
      v21 = v20;
      v49 = 0x100000003;
      v48 = xmmword_10056EDA0;
      v47 = off_1009A8F78;
      v50 = v51;
      sub_1003A920C(&v36, &v31, &v47);
      v22 = 0;
      v7 = v7 + v14;
      do
      {
        v23 = *sub_1003AFDBC(&v31, v22);
        *&v41[v22] = *&v41[v22] + v14 * (v23 + v19 * *sub_1003AFDBC(&v47, v22) / v21);
        ++v22;
      }

      while (v22 != 3);
      ++v6;
      v3 = *a2;
    }

    while (0x6DB6DB6DB6DB6DB7 * ((a2[1] - *a2) >> 4) > v6);
  }

  for (i = 0; i != 3; ++i)
  {
    *&v41[i] = *&v41[i] / v7;
  }

  return *v41;
}

void sub_1003CEC8C(uint64_t a1)
{
  v1 = *(a1 + 672);
  v2 = *(a1 + 664);
  v3 = 0x6DB6DB6DB6DB6DB7 * ((v1 - v2) >> 4);
  if (v3 >= 4)
  {
    v4 = a1;
    if (*(a1 + 922) == 1)
    {
      v5 = *(a1 + 720);
      v6 = *(a1 + 712);
      if (v5 != v6)
      {
        v7 = v5 - 72;
        do
        {
          *(v5 - 72) = off_1009991A0;
          v7 -= 112;
          v5 -= 112;
        }

        while (v5 != v6);
      }

      *(a1 + 720) = v6;
      memset(v91, 0, sizeof(v91));
      sub_1003D65B4(v91, v2, v1, v3);
      sub_1003CE180(v91, buf);
      v8 = (v4 + 712);
      sub_1003D675C((v4 + 712));
      *(v4 + 712) = *buf;
      *(v4 + 728) = *&buf[16];
      memset(buf, 0, sizeof(buf));
      v97 = buf;
      sub_10038E378(&v97);
      v97 = v91;
      sub_10038E378(&v97);
      v88 = 0;
      v89 = 0;
      v90 = 0;
      v9 = *(v4 + 720);
      if (v9 == *(v4 + 712))
      {
        v27 = *(v4 + 720);
      }

      else
      {
        v10 = 0;
        v11 = 0;
        v12 = off_1009A8F78;
        v13 = v87;
        v14 = v101;
        v9 = *(v4 + 712);
        do
        {
          v15 = *(v4 + 672) - 72;
          v85 = 0x100000003;
          v83 = v12;
          v84 = xmmword_10056EDA0;
          v86 = v13;
          sub_1003A920C(v9 + v10 * 16 + 40, v15, &v83);
          v99 = 0x100000003;
          v98 = xmmword_10056EDA0;
          v97 = off_1009A8F78;
          v100 = v14;
          v103 = 0x100000134;
          *&buf[8] = xmmword_10056EEA0;
          *buf = off_1009A9168;
          v104 = v105;
          v94 = 0x100000003;
          v93 = xmmword_10056EDA0;
          v92 = off_1009A8F78;
          v95 = v96;
          sub_1003AFEC0(&v83, &v97, buf, &v92, "2");
          if (v16 < 2.0)
          {
            v17 = v14;
            v18 = v13;
            v19 = v12;
            v20 = v4;
            v21 = *v8;
            v22 = &(*v8)[v10];
            v23 = v89;
            if (v89 >= v90)
            {
              v26 = sub_1003D67D4(&v88, v22);
            }

            else
            {
              v24 = *v22;
              v25 = v22[1];
              *(v89 + 32) = *(v22 + 4);
              *v23 = v24;
              *(v23 + 16) = v25;
              sub_1003BBC24(v23 + 40, v22 + 40);
              *(v23 + 104) = DWORD2(v21[v10 + 6]);
              v26 = v23 + 112;
            }

            v4 = v20;
            v89 = v26;
            v12 = v19;
            v13 = v18;
            v14 = v17;
          }

          ++v11;
          v27 = *(v4 + 720);
          v9 = *(v4 + 712);
          v10 += 7;
        }

        while (0x6DB6DB6DB6DB6DB7 * ((v27 - v9) >> 4) > v11);
      }

      if (v8 != &v88)
      {
        sub_1003D6920(v8, v88, v89, 0x6DB6DB6DB6DB6DB7 * ((v89 - v88) >> 4));
        v27 = *(v4 + 720);
        v9 = *(v4 + 712);
      }

      v28 = 0x6DB6DB6DB6DB6DB7 * ((v27 - v9) >> 4);
      v29 = v28 - 2;
      if (v28 >= 2)
      {
        if (v28 >= 4)
        {
          v29 = 2;
        }

        v30 = ((v28 - 1) * v28) >> 1;
        if (v29 == 1)
        {
          v30 = v28;
        }

        if (v29)
        {
          v31 = v30;
        }

        else
        {
          v31 = 1;
        }

        if (v28 >= 5)
        {
          v69 = v31;
          v68 = v4;
          v32 = 0;
          v80 = 0;
          v81 = 0;
          v82 = 0;
          v77 = 0;
          v78 = 0;
          v70 = (v28 - 1);
          v71 = v28 & 0x7FFFFFFF;
          v74 = v71 - 1;
          v73 = 112;
          v79 = 0;
          do
          {
            v72 = v32 + 1;
            if (v32 + 1 < v71)
            {
              v33 = v73;
              v34 = v74;
              do
              {
                v35 = (*v8 + v33);
                v36 = v35[1];
                v37 = &(*v8)[7 * v32];
                v38 = *(v37 + 8);
                if (vabdd_f64(3.14159265, acos(((v38 + 0.1) * (v38 + 0.1) + (v36 - v38) * (v36 - v38) - (v36 + -0.1) * (v36 + -0.1)) / ((v38 + 0.1) * (v36 - v38 + v36 - v38)))) < 1.22173048)
                {
                  v85 = 0x100000003;
                  v83 = off_1009A8F78;
                  v84 = xmmword_10056EDA0;
                  v86 = v87;
                  sub_1003A920C(v37 + 40, (v35 + 5), &v83);
                  v99 = 0x100000003;
                  v98 = xmmword_10056EDA0;
                  v97 = off_1009A8F78;
                  v100 = v101;
                  v103 = 0x100000134;
                  *&buf[8] = xmmword_10056EEA0;
                  *buf = off_1009A9168;
                  v104 = v105;
                  v94 = 0x100000003;
                  v93 = xmmword_10056EDA0;
                  v92 = off_1009A8F78;
                  v95 = v96;
                  sub_1003AFEC0(&v83, &v97, buf, &v92, "2");
                  if (vabdd_f64(v39, fmax(v38, v36) - fmin(v38, v36)) < 0.1414)
                  {
                    v40 = &(*v8)[7 * v32];
                    v41 = *v8 + v33;
                    v85 = 0x100000003;
                    v83 = off_1009A8F78;
                    v84 = xmmword_10056EDA0;
                    v86 = v87;
                    sub_1003A920C(v40 + 40, (v41 + 40), &v83);
                    v99 = 0x100000003;
                    v98 = xmmword_10056EDA0;
                    v97 = off_1009A8F78;
                    v100 = v101;
                    v103 = 0x100000134;
                    *&buf[8] = xmmword_10056EEA0;
                    *buf = off_1009A9168;
                    v104 = v105;
                    v94 = 0x100000003;
                    v93 = xmmword_10056EDA0;
                    v92 = off_1009A8F78;
                    v95 = v96;
                    sub_1003AFEC0(&v83, &v97, buf, &v92, "2");
                    if (v42 > 0.25)
                    {
                      v43 = &(*v8)[7 * v32];
                      v44 = v81;
                      if (v81 >= v82)
                      {
                        v47 = sub_1003D67D4(&v80, &(*v8)[7 * v32]);
                      }

                      else
                      {
                        v45 = *v43;
                        v46 = *(v43 + 16);
                        *(v81 + 32) = *(v43 + 32);
                        *v44 = v45;
                        *(v44 + 16) = v46;
                        sub_1003BBC24(v44 + 40, v43 + 40);
                        *(v44 + 104) = *(v43 + 104);
                        v47 = v44 + 112;
                      }

                      v81 = v47;
                      v48 = *v8;
                      v49 = (*v8 + v33);
                      v50 = v78;
                      if (v78 >= v79)
                      {
                        v53 = sub_1003D67D4(&v77, v49);
                      }

                      else
                      {
                        v51 = *v49;
                        v52 = v49[1];
                        *(v78 + 32) = *(v49 + 4);
                        *v50 = v51;
                        *(v50 + 16) = v52;
                        sub_1003BBC24(v50 + 40, v49 + 40);
                        *(v50 + 104) = *(v48 + v33 + 104);
                        v53 = v50 + 112;
                      }

                      v78 = v53;
                    }
                  }
                }

                v33 += 112;
                --v34;
              }

              while (v34);
            }

            v73 += 112;
            --v74;
            ++v32;
          }

          while (v72 != v70);
          v54 = 0x6DB6DB6DB6DB6DB7 * ((v81 - v80) >> 4);
          if (v54 > 5 && ((v54 / v69) * 100.0) >= 70.0)
          {
            *(v68 + 921) = 1;
            *(v68 + 848) = *(v68 + 608);
            sub_1003A8CFC(v68 + 856, v68 + 192);
            v55 = qword_1009F9820;
            if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
            {
              v56 = *(v68 + 608);
              *buf = 134217984;
              *&buf[4] = v56;
              _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEFAULT, "#sa_algo_batchfilter,Straight path solution generated at %f s", buf, 0xCu);
            }

            *(v68 + 120) = 5;
            *(v68 + 124) = 1;
            *(v68 + 128) = 2;
            *(v68 + 132) = 0;
            *(v68 + 160) = 0;
            memset(v76, 0, sizeof(v76));
            sub_1003D65B4(v76, v80, v81, 0x6DB6DB6DB6DB6DB7 * ((v81 - v80) >> 4));
            memset(v75, 0, sizeof(v75));
            v57 = sub_1003D65B4(v75, v77, v78, 0x6DB6DB6DB6DB6DB7 * ((v78 - v77) >> 4));
            v58 = sub_1003CE870(v57, v76, v75);
            v60 = v59;
            v62 = v61;
            *buf = v75;
            sub_10038E378(buf);
            *buf = v76;
            sub_10038E378(buf);
            v63 = *(v68 + 136);
            *(v68 + 144) = v63;
            v64 = *(v68 + 152);
            if (v63 >= v64)
            {
              v65 = 0xCF3CF3CF3CF3CF3DLL * ((v64 - v63) >> 3);
              v66 = 2 * v65;
              if (2 * v65 <= 1)
              {
                v66 = 1;
              }

              if (v65 >= 0xC30C30C30C30C3)
              {
                v67 = 0x186186186186186;
              }

              else
              {
                v67 = v66;
              }

              sub_1003AF88C(v68 + 136, v67);
            }

            *v63 = v58;
            *(v63 + 8) = v60;
            *(v63 + 16) = v62;
            *(v63 + 32) = 0;
            *(v63 + 40) = 0;
            *(v63 + 24) = 0x3F847AE147AE147CLL;
            *(v63 + 48) = xmmword_10056FAB0;
            *(v63 + 64) = xmmword_10056FAC0;
            *(v63 + 80) = 0x3FF0000000000000;
            *(v63 + 88) = 0u;
            *(v63 + 104) = 0u;
            *(v63 + 120) = 0u;
            *(v63 + 136) = 0u;
            *(v63 + 160) = 2;
            *(v63 + 152) = 0;
            *(v68 + 144) = v63 + 168;
          }

          *buf = &v77;
          sub_10038E378(buf);
          *buf = &v80;
          sub_10038E378(buf);
        }
      }

      *buf = &v88;
      sub_10038E378(buf);
    }
  }
}

void sub_1003CF7B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, char a34, uint64_t a35, uint64_t a36, void **a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45)
{
  a37 = &a31;
  sub_10038E378(&a37);
  a37 = &a34;
  sub_10038E378(&a37);
  a37 = &a45;
  sub_10038E378(&a37);
  _Unwind_Resume(a1);
}

uint64_t sub_1003CF890(uint64_t result, char a2, double a3)
{
  *(result + 456) = a3;
  *(result + 464) = a2;
  return result;
}

void sub_1003CF89C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*(a1 + 927) == 1)
  {
    *(a1 + 927) = 0;
    if (*(a1 + 664) != *(a1 + 672))
    {
      sub_1003CDBFC(a1);
    }
  }

  *(a1 + 256) = *(a2 + 104);
  v182 = 0x100000003;
  v181 = xmmword_10056EDA0;
  v180 = off_1009A8F78;
  v183 = &v184;
  sub_1003A8C00(&v180, 3, 1);
  sub_1003A8C50(&v180, 0.0);
  v177 = 0x100000004;
  v176 = xmmword_10056ED80;
  v175 = off_1009A8EE8;
  v178 = &v179;
  sub_1003A8C00(&v175, 4, 1);
  sub_1003A8C50(&v175, 0.0);
  for (i = 0; i != 3; ++i)
  {
    v6 = a2 + 8 * i;
    v7 = *(v6 + 96);
    *sub_1003AFDBC(&v180, i) = v7;
    v8 = *(v6 + 120);
    *sub_1003AFDBC(&v175, i) = v8;
  }

  v9 = *(a2 + 144);
  *sub_1003AFDBC(&v175, 3u) = v9;
  sub_10041511C(&v175, v174);
  buf[3] = 0x100000003;
  *&buf[1] = xmmword_10056EDA0;
  buf[0] = off_1009A8F78;
  *&v191 = &v191 + 8;
  sub_1003A90A8(v174, a1 + 472, buf);
  v171 = 0x100000003;
  v170 = xmmword_10056EDA0;
  v169 = off_1009A8F78;
  v172 = &v173;
  sub_1003A8EBC(&v180, buf, &v169);
  sub_1003A8CFC(a1 + 192, &v180);
  sub_1003A8CFC(a1 + 264, &v175);
  sub_1003A8CFC(a1 + 336, v174);
  v10 = *a2;
  *(a1 + 608) = *a2;
  if (*(a1 + 920) == 1)
  {
    v11 = *(a1 + 624);
    if (v10 - v11 > 10.0)
    {
      *(a1 + 920) = 0;
      v12 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(buf[0]) = 134218240;
        *(buf + 4) = v11;
        WORD2(buf[1]) = 2048;
        *(&buf[1] + 6) = v10;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#sa_algo_batchfilter,AoA Solution from AoA at %f s is no longer valid - current time is %f s", buf, 0x16u);
      }
    }
  }

  if (*(a1 + 921) == 1)
  {
    v13 = *(a1 + 608) - *(a1 + 848);
    if (v13 >= 2.0 && (*(a1 + 456) < 2.0 || *(a1 + 464) != 1))
    {
      goto LABEL_17;
    }

    if (v13 >= 5.0)
    {
      v142 = 0x100000003;
      v140 = off_1009A8F78;
      v141 = xmmword_10056EDA0;
      v143 = v144;
      sub_1003A920C(&v169, a1 + 856, &v140);
      *(&v156[1] + 1) = 0x100000003;
      *(v156 + 8) = xmmword_10056EDA0;
      *&v156[0] = off_1009A8F78;
      *&v157 = &v157 + 8;
      buf[3] = 0x100000134;
      *&buf[1] = xmmword_10056EEA0;
      buf[0] = off_1009A9168;
      *&v191 = &v191 + 8;
      v147 = 0x100000003;
      v146 = xmmword_10056EDA0;
      v145 = off_1009A8F78;
      v148 = v149;
      sub_1003AFEC0(&v140, v156, buf, &v145, "2");
      if (v14 > 1.0)
      {
LABEL_17:
        *(a1 + 921) = 0;
        v15 = qword_1009F9820;
        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
        {
          v16 = *(a1 + 848);
          v17 = *(a1 + 608);
          LODWORD(buf[0]) = 134218240;
          *(buf + 4) = v16;
          WORD2(buf[1]) = 2048;
          *(&buf[1] + 6) = v17;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#sa_algo_batchfilter,Straight path solution at %f s is no longer valid - current time is %f s", buf, 0x16u);
        }
      }
    }
  }

  v18 = *(a2 + 16);
  if (v18 <= 0.0 || *(a2 + 8) < -1.0)
  {
    v19 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004CB46C(a2, v19, v18);
    }

    goto LABEL_141;
  }

  v20 = *(a1 + 672);
  if (v20 != *(a1 + 664))
  {
    v142 = 0x100000003;
    v140 = off_1009A8F78;
    v141 = xmmword_10056EDA0;
    v143 = v144;
    sub_1003A920C(&v169, v20 - 72, &v140);
    *(&v156[1] + 1) = 0x100000003;
    *(v156 + 8) = xmmword_10056EDA0;
    *&v156[0] = off_1009A8F78;
    *&v157 = &v157 + 8;
    buf[3] = 0x100000134;
    *&buf[1] = xmmword_10056EEA0;
    buf[0] = off_1009A9168;
    *&v191 = &v191 + 8;
    v147 = 0x100000003;
    v146 = xmmword_10056EDA0;
    v145 = off_1009A8F78;
    v148 = v149;
    sub_1003AFEC0(&v140, v156, buf, &v145, "2");
    v22 = v21;
    v23 = *(a2 + 8);
    v24 = *(v20 - 104);
    v25 = v23 - v24;
    if (v23 - v24 <= 0.0)
    {
      if ((fabs(v25) - v22) / *(a2 + 16) > 6.0)
      {
        v27 = qword_1009F9820;
        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
        {
          LODWORD(buf[0]) = 134218496;
          *(buf + 4) = v24;
          WORD2(buf[1]) = 2048;
          *(&buf[1] + 6) = v23;
          HIWORD(buf[2]) = 2048;
          *&buf[3] = v22;
          _os_log_error_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "#sa_algo_batchfilter,nLoS->LoS event detected by the batch filter: Previous range %f m, Current range %f m, Distance travelled %f m", buf, 0x20u);
        }

        __src = 0;
        v136 = 0uLL;
        v28 = *(a1 + 664);
        if (v28 != *(a1 + 672))
        {
          v29 = off_1009A8F78;
          do
          {
            v142 = 0x100000003;
            v140 = v29;
            v141 = xmmword_10056EDA0;
            v143 = v144;
            sub_1003A920C(&v169, v28 + 40, &v140);
            *(&v156[1] + 1) = 0x100000003;
            *(v156 + 8) = xmmword_10056EDA0;
            *&v156[0] = off_1009A8F78;
            *&v157 = &v157 + 8;
            buf[3] = 0x100000134;
            *&buf[1] = xmmword_10056EEA0;
            buf[0] = off_1009A9168;
            *&v191 = &v191 + 8;
            v147 = 0x100000003;
            v146 = xmmword_10056EDA0;
            v145 = off_1009A8F78;
            v148 = v149;
            sub_1003AFEC0(&v140, v156, buf, &v145, "2");
            if ((*(v28 + 8) - *(a2 + 8) - v30) / *(a2 + 16) <= 6.0)
            {
              v28 += 112;
              v36 = *(a1 + 672);
            }

            else
            {
              v31 = v29;
              v32 = *(a1 + 688);
              v33 = *(a1 + 696) - v32;
              if (v33)
              {
                v34 = 0;
                v35 = 0x4EC4EC4EC4EC4EC5 * (v33 >> 4);
                while (*v32 != *v28)
                {
                  ++v34;
                  v32 += 26;
                  if (v35 <= v34)
                  {
                    goto LABEL_52;
                  }
                }

                v37 = v136;
                if (v136 >= *(&v136 + 1))
                {
                  v39 = __src;
                  v40 = v136 - __src;
                  v41 = (v136 - __src) >> 3;
                  v42 = v41 + 1;
                  if ((v41 + 1) >> 61)
                  {
                    sub_100019B38();
                  }

                  v43 = *(&v136 + 1) - __src;
                  if ((*(&v136 + 1) - __src) >> 2 > v42)
                  {
                    v42 = v43 >> 2;
                  }

                  v44 = v43 >= 0x7FFFFFFFFFFFFFF8;
                  v45 = 0x1FFFFFFFFFFFFFFFLL;
                  if (!v44)
                  {
                    v45 = v42;
                  }

                  if (v45)
                  {
                    sub_100012564(&__src, v45);
                  }

                  *(8 * v41) = v34;
                  v38 = 8 * v41 + 8;
                  memcpy(0, v39, v40);
                  v46 = __src;
                  __src = 0;
                  v136 = v38;
                  if (v46)
                  {
                    operator delete(v46);
                  }
                }

                else
                {
                  *v136 = v34;
                  v38 = v37 + 8;
                }

                *&v136 = v38;
              }

LABEL_52:
              if (*(a1 + 920) == 1)
              {
                v47 = *(a1 + 624);
                if (*v28 == v47)
                {
                  *(a1 + 920) = 0;
                  v48 = qword_1009F9820;
                  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
                  {
                    LODWORD(buf[0]) = 134217984;
                    *(buf + 4) = v47;
                    _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, "#sa_algo_batchfilter,AoA Solution from AoA at %f s is no longer valid due to multipath", buf, 0xCu);
                  }
                }
              }

              v49 = qword_1009F9820;
              if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
              {
                v55 = *v28;
                v56 = *(v28 + 8);
                LODWORD(buf[0]) = 134218240;
                *(buf + 4) = v55;
                WORD2(buf[1]) = 2048;
                *(&buf[1] + 6) = v56;
                _os_log_error_impl(&_mh_execute_header, v49, OS_LOG_TYPE_ERROR, "#sa_algo_batchfilter,Removing measurement at time %f s with range %f m", buf, 0x16u);
              }

              v50 = *(a1 + 672);
              if (v28 + 112 == v50)
              {
                v36 = v28;
              }

              else
              {
                v51 = v28;
                do
                {
                  v52 = v51;
                  v53 = *(v51 + 128);
                  *v51 = *(v51 + 112);
                  *(v51 + 16) = v53;
                  *(v51 + 32) = *(v51 + 144);
                  sub_1003A8CFC(v51 + 40, v51 + 152);
                  *(v52 + 104) = *(v52 + 216);
                  v51 = v52 + 112;
                }

                while (v52 + 224 != v50);
                v36 = v52 + 112;
                v50 = *(a1 + 672);
              }

              if (v50 != v36)
              {
                v54 = v50 - 72;
                do
                {
                  *(v50 - 72) = off_1009991A0;
                  v54 -= 112;
                  v50 -= 112;
                }

                while (v50 != v36);
              }

              *(a1 + 672) = v36;
              v29 = v31;
            }
          }

          while (v28 != v36);
          v57 = v136;
          if (v136 != __src)
          {
            v58 = *(a1 + 696);
            do
            {
              v59 = *(v57 - 1);
              v57 -= 8;
              sub_1003D6B14(buf, (*(a1 + 688) + 208 * v59 + 208), v58, (*(a1 + 688) + 208 * v59));
              v58 = v60;
              v61 = *(a1 + 696);
              if (v61 != v60)
              {
                v62 = v61 - 11;
                do
                {
                  *(v61 - 14) = off_1009991A0;
                  *(v61 - 22) = off_1009991A0;
                  v62 -= 13;
                  v61 -= 13;
                }

                while (v61 != v60);
              }

              *(a1 + 696) = v60;
            }

            while (v57 != __src);
          }
        }

        sub_1003D181C(a1);
        v63 = *(a1 + 664);
        v64 = *(a1 + 672);
        if (v63 == v64)
        {
          *(a1 + 632) = 0x3FF0000000000000;
        }

        else
        {
          v65 = v63 + 14;
          v66 = *(a1 + 664);
          if (v63 + 14 != v64)
          {
            v66 = *(a1 + 664);
            do
            {
              if (v65[1] < v66[1])
              {
                v66 = v65;
              }

              v65 += 14;
            }

            while (v65 != v64);
          }

          v67 = fmax(v66[1], 1.0);
          if (v67 != *(a1 + 632))
          {
            *(a1 + 632) = v67;
            do
            {
              v68 = sub_10041537C(v63[1] / *(a1 + 632));
              v63[4] = v68;
              v63[2] = v63[1] / (v68 * v63[3]);
              v63 += 14;
            }

            while (v63 != v64);
          }
        }

        if (__src)
        {
          *&v136 = __src;
          operator delete(__src);
        }
      }
    }

    else if ((v25 - v22) / *(a2 + 16) > 6.0)
    {
      v26 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
      {
        LODWORD(buf[0]) = 134218496;
        *(buf + 4) = v24;
        WORD2(buf[1]) = 2048;
        *(&buf[1] + 6) = v23;
        HIWORD(buf[2]) = 2048;
        *&buf[3] = v22;
        _os_log_error_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "#sa_algo_batchfilter,LoS->nLoS event detected by the batch filter: Previous range %f m, Current range %f m, Distance travelled %f m", buf, 0x20u);
      }

      goto LABEL_128;
    }
  }

  v69 = *(a1 + 664);
  v70 = *(a1 + 672);
  v71 = *(a2 + 8);
  if (v69 == v70)
  {
    v76 = fmax(v71, 1.0);
    *(a1 + 632) = v76;
    v77 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf[0]) = 134217984;
      *(buf + 4) = v76;
      _os_log_impl(&_mh_execute_header, v77, OS_LOG_TYPE_DEFAULT, "#sa_algo_batchfilter,Minimum observed range initialized to %f m", buf, 0xCu);
    }
  }

  else
  {
    v72 = *(a1 + 632);
    if (v71 < v72 && v72 > 1.0)
    {
      v73 = fmax(v71, 1.0);
      *(a1 + 632) = v73;
      v74 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(buf[0]) = 134217984;
        *(buf + 4) = v73;
        _os_log_impl(&_mh_execute_header, v74, OS_LOG_TYPE_DEFAULT, "#sa_algo_batchfilter,Minimum observed range changed to %f m", buf, 0xCu);
        v69 = *(a1 + 664);
        v70 = *(a1 + 672);
      }

      while (v69 != v70)
      {
        v75 = sub_10041537C(v69[1] / *(a1 + 632));
        v69[4] = v75;
        v69[2] = v69[1] / (v75 * v69[3]);
        v69 += 14;
      }
    }
  }

  v78 = sub_10041537C(*(a2 + 8) / *(a1 + 632));
  v79 = *(a2 + 8);
  if (v79 <= 10.0)
  {
    v80 = 0.1;
  }

  else
  {
    v80 = v79 / 10.0 * 0.1;
  }

  v81 = *(a2 + 24);
  buf[0] = *a2;
  *&buf[1] = v79;
  *&buf[2] = v79 / (v78 * v80);
  *&buf[3] = v80;
  *&v191 = v78;
  sub_1003BBC24(&v191 + 8, &v169);
  DWORD2(v195) = v81;
  v82 = *(a1 + 672);
  if (v82 >= *(a1 + 680))
  {
    v85 = sub_1003D6B8C((a1 + 664), buf);
  }

  else
  {
    v83 = *buf;
    v84 = *&buf[2];
    *(v82 + 32) = v191;
    *v82 = v83;
    *(v82 + 16) = v84;
    sub_1003BBC24(v82 + 40, &v191 + 8);
    *(v82 + 104) = DWORD2(v195);
    v85 = v82 + 112;
    *(a1 + 672) = v82 + 112;
  }

  *(a1 + 672) = v85;
  if (*(a2 + 88) == 1)
  {
    if (*(a2 + 80) == 1)
    {
      v86 = *(a2 + 72);
      if (v86 > 1.1)
      {
        v87 = qword_1009F9820;
        if (!os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_128;
        }

        LODWORD(buf[0]) = 134217984;
        *(buf + 4) = v86;
        v88 = "#sa_algo_batchfilter,AoA measurement rejected due to high multipath probability (%4.2f)";
        v89 = v87;
        v90 = 12;
        goto LABEL_108;
      }
    }

    v91 = *(a2 + 56);
    v92 = *(a2 + 64);
    if ((v92 < 450.0 || v91 < 0.0) && (v92 < 200.0 || v91 < 40.0))
    {
      v132 = qword_1009F9820;
      if (!os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_128;
      }

      LODWORD(buf[0]) = 134218240;
      *(buf + 4) = v92;
      WORD2(buf[1]) = 2048;
      *(&buf[1] + 6) = v91;
      v88 = "#sa_algo_batchfilter,AoA measurement rejected due to low track score (%4.1f) or low sweep angle (%4.1f deg)";
      v89 = v132;
      v90 = 22;
LABEL_108:
      _os_log_impl(&_mh_execute_header, v89, OS_LOG_TYPE_DEFAULT, v88, buf, v90);
      goto LABEL_128;
    }

    v93 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf[0]) = 134218240;
      *(buf + 4) = v92;
      WORD2(buf[1]) = 2048;
      *(&buf[1] + 6) = v91;
      _os_log_impl(&_mh_execute_header, v93, OS_LOG_TYPE_DEFAULT, "#sa_algo_batchfilter,AoA measurement accepted: track score (%4.1f) and sweep angle (%4.1f deg)", buf, 0x16u);
    }

    *(a1 + 920) = 1;
    *(a1 + 624) = *a2;
    buf[3] = 0x100000003;
    *&buf[1] = xmmword_10056EDA0;
    buf[0] = off_1009A8F78;
    *&v191 = &v191 + 8;
    sub_1003A90A8(v174, a1 + 536, buf);
    *(&v156[1] + 1) = 0x100000003;
    *(v156 + 8) = xmmword_10056EDA0;
    *&v156[0] = off_1009A8F78;
    *&v157 = &v157 + 8;
    sub_1003A8EBC(&v180, buf, v156);
    if ((*(a2 + 88) & 1) == 0)
    {
      sub_1000195BC();
    }

    sub_100415018(&v145, *(a2 + 8), *(a2 + 40) / 180.0 * 3.14159265, *(a2 + 32) / 180.0 * 3.14159265);
    buf[3] = 0x100000003;
    *&buf[1] = xmmword_10056EDA0;
    buf[0] = off_1009A8F78;
    *&v191 = &v191 + 8;
    sub_1003A90A8(v174, &v145, buf);
    v142 = 0x100000003;
    v140 = off_1009A8F78;
    v141 = xmmword_10056EDA0;
    v143 = v144;
    sub_1003A8EBC(buf, v156, &v140);
    v94 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      v95 = *(a1 + 624);
      v96 = sub_1002EB67C(&v140, 0);
      v97 = sub_1002EB67C(&v140, 1u);
      v98 = sub_1002EB67C(&v140, 2u);
      LODWORD(buf[0]) = 134218752;
      *(buf + 4) = v95;
      WORD2(buf[1]) = 2048;
      *(&buf[1] + 6) = v96;
      HIWORD(buf[2]) = 2048;
      *&buf[3] = v97;
      LOWORD(v191) = 2048;
      *(&v191 + 2) = v98;
      _os_log_impl(&_mh_execute_header, v94, OS_LOG_TYPE_DEFAULT, "#sa_algo_batchfilter,Solution from AoA is generated at %f s - device pos is [%f, %f, %f] m", buf, 0x2Au);
    }

    v99 = 0;
    *(a1 + 72) = 5;
    *(a1 + 76) = 1;
    *(a1 + 80) = 2;
    *(a1 + 84) = 0;
    *(a1 + 112) = 0;
    v197 = 0u;
    v198 = 0u;
    v195 = 0u;
    v196 = 0u;
    v193 = 0u;
    v194 = 0u;
    v191 = 0u;
    v192 = 0u;
    memset(buf, 0, sizeof(buf));
    do
    {
      *&buf[v99] = sub_1002EB67C(&v140, v99);
      ++v99;
    }

    while (v99 != 3);
    buf[3] = 0x3F847AE147AE147CLL;
    v191 = 0uLL;
    v192 = xmmword_10056FAB0;
    v193 = xmmword_10056FAC0;
    *&v194 = 0x3FF0000000000000;
    LODWORD(v199) = 0;
    v100 = *(a1 + 88);
    *(a1 + 96) = v100;
    v101 = *(a1 + 104);
    if (v100 >= v101)
    {
      v102 = 0xCF3CF3CF3CF3CF3DLL * ((v101 - v100) >> 3);
      v103 = 2 * v102;
      if (2 * v102 <= 1)
      {
        v103 = 1;
      }

      if (v102 >= 0xC30C30C30C30C3)
      {
        v104 = 0x186186186186186;
      }

      else
      {
        v104 = v103;
      }

      sub_1003AF88C(a1 + 88, v104);
    }

    *(v100 + 112) = v196;
    *(v100 + 128) = v197;
    *(v100 + 144) = v198;
    *(v100 + 160) = v199;
    *(v100 + 48) = v192;
    *(v100 + 64) = v193;
    *(v100 + 80) = v194;
    *(v100 + 96) = v195;
    *v100 = *buf;
    *(v100 + 16) = *&buf[2];
    *(v100 + 32) = v191;
    *(a1 + 96) = v100 + 168;
  }

LABEL_128:
  if (((*(a1 + 924) & 1) != 0 || *(a1 + 925) == 1) && (0x6DB6DB6DB6DB6DB7 * ((*(a1 + 672) - *(a1 + 664)) >> 4)) >= 4)
  {
    sub_1003D18A8(a1);
  }

  v105 = *(a1 + 672) - *(a1 + 664);
  v106 = 0x6DB6DB6DB6DB6DB7 * (v105 >> 4);
  if (v106 >= 4 && (*(a1 + 924) & 1) == 0 && (*(a1 + 925) & 1) == 0 && *(a1 + 608) - *(a1 + 616) >= 0.5)
  {
    v131 = sub_1003D1A70(a1);
    *(a1 + 926) = v131;
    if (v131)
    {
      *(a1 + 616) = *(a1 + 608);
      sub_1003CDDD0(a1);
      *(a1 + 921) = 0;
      goto LABEL_141;
    }

LABEL_140:
    sub_1003CEC8C(a1);
    goto LABEL_141;
  }

  if (v105 == 112)
  {
    v107 = *(a1 + 608);
    *(a1 + 600) = v107;
    *(a1 + 616) = v107 + -0.5;
    goto LABEL_141;
  }

  if (v106 >= 5 && (*(a1 + 926) & 1) == 0)
  {
    goto LABEL_140;
  }

LABEL_141:
  *v166 = 0;
  v166[4] = 0;
  *&v166[8] = 0;
  __p = 0u;
  v168 = 0u;
  v166[12] = 0;
  if (*(a1 + 927) == 1)
  {
    v108 = 6;
LABEL_143:
    *v166 = v108;
    goto LABEL_144;
  }

  if (*(a1 + 924) == 1)
  {
    if ((*(a1 + 925) & 1) == 0)
    {
      v108 = 1;
      goto LABEL_143;
    }
  }

  else
  {
    if (*(a1 + 925))
    {
      v109 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        v110 = *(a1 + 640);
        LODWORD(buf[0]) = 134217984;
        *(buf + 4) = v110;
        _os_log_impl(&_mh_execute_header, v109, OS_LOG_TYPE_DEFAULT, "#sa_algo_batchfilter,Linear user path length is %4.2f m", buf, 0xCu);
      }

      if (*(a1 + 640) >= 1.5)
      {
        v108 = 3;
      }

      else
      {
        v108 = 2;
      }

      goto LABEL_143;
    }

    if (*(a1 + 926) != 1)
    {
      v108 = 4;
      goto LABEL_143;
    }

    *v166 = 5;
    *&v166[8] = *(a1 + 928);
    v166[4] = *&v166[8] == 2;
    v111 = *(a1 + 168);
    for (j = *(a1 + 176); v111 != j; v111 += 432)
    {
      v112 = 0;
      v163 = 0u;
      v164 = 0u;
      v161 = 0u;
      v162 = 0u;
      v159 = 0u;
      v160 = 0u;
      v157 = 0u;
      v158 = 0u;
      memset(v156, 0, sizeof(v156));
      LODWORD(v165) = 1;
      do
      {
        *(v156 + v112) = *sub_1003AFDBC(v111, v112);
        ++v112;
      }

      while (v112 != 3);
      *(&v156[1] + 1) = *sub_1003A8DB0(v111 + 128, 0, 0);
      *&v157 = *sub_1003A8DB0(v111 + 128, 0, 1);
      *(&v157 + 1) = *sub_1003A8DB0(v111 + 128, 0, 2);
      *&v158 = *sub_1003A8DB0(v111 + 128, 1, 1);
      *(&v158 + 1) = *sub_1003A8DB0(v111 + 128, 1, 2);
      *&v159 = *sub_1003A8DB0(v111 + 128, 2, 2);
      v113 = *(v111 + 136);
      if (v113 != *(v111 + 140))
      {
        __assert_rtn("Trace", "cnmatrixbase.h", 4977, "A.NumRows() == A.NumCols()");
      }

      if (v113 < 1)
      {
        v115 = 0.0;
      }

      else
      {
        v114 = 0;
        v115 = 0.0;
        do
        {
          v115 = v115 + sub_1003BC8A4(v111 + 128, v114, v114);
          ++v114;
        }

        while (v113 != v114);
      }

      v116 = *(v111 + 352);
      *(&v159 + 1) = sqrt(v115);
      *&v160 = v116;
      LODWORD(v165) = *(v111 + 360);
      v137 = 0x100000003;
      __src = off_1009A8F78;
      v136 = xmmword_10056EDA0;
      v138 = v139;
      sub_1003A920C(v111 + 368, a1 + 192, &__src);
      v147 = 0x100000003;
      v146 = xmmword_10056EDA0;
      v145 = off_1009A8F78;
      v148 = v149;
      buf[3] = 0x100000134;
      *&buf[1] = xmmword_10056EEA0;
      buf[0] = off_1009A9168;
      *&v191 = &v191 + 8;
      v142 = 0x100000003;
      v140 = off_1009A8F78;
      v141 = xmmword_10056EDA0;
      v143 = v144;
      sub_1003AFEC0(&__src, &v145, buf, &v140, "2");
      if (v117 != 0.0)
      {
        v154 = 0;
        v153 = 0;
        v155 = 0;
        memset(v152, 0, sizeof(v152));
        memset(v151, 0, sizeof(v151));
        sub_1003D2F20(&v153, 0x6DB6DB6DB6DB6DB7 * ((*(a1 + 672) - *(a1 + 664)) >> 4));
        sub_1003A8CFC(v111 + 368, a1 + 192);
        buf[3] = 0x100000003;
        *&buf[1] = xmmword_10056EDA0;
        buf[0] = off_1009A8F78;
        *&v191 = &v191 + 8;
        sub_1003A920C(v111, a1 + 192, buf);
        sub_100414EB4(buf, v150);
        sub_1003A8CFC(v111 + 64, v150);
        sub_1003D2FF8(v118, v150, a1 + 192, (a1 + 664), v151, &v153, v152);
        v147 = 0x300000003;
        v146 = xmmword_10056EDB0;
        v145 = off_1009A8FC0;
        v148 = v149;
        sub_1003A8C00(&v145, 3, 3);
        sub_1003A8C50(&v145, 0.0);
        v119 = v153;
        for (k = v154; v119 != k; v119 += 136)
        {
          v142 = 0x300000003;
          v140 = off_1009A8FC0;
          v141 = xmmword_10056EDB0;
          v143 = v144;
          sub_1003A90A8(v119 + 72, v119 + 8, &v140);
          buf[3] = 0x300000003;
          *&buf[1] = xmmword_10056EDB0;
          buf[0] = off_1009A8FC0;
          *&v191 = &v191 + 8;
          sub_1003A8EBC(&v145, &v140, buf);
          sub_1003A8CFC(&v145, buf);
        }

        sub_1003BBDB4(&v140, &v145);
        v137 = 0x300000003;
        __src = off_1009A8FC0;
        v136 = xmmword_10056EDB0;
        v138 = v139;
        v187 = 0x100000003;
        v186 = xmmword_10056EDA0;
        v185 = off_1009A9098;
        v188 = &v189;
        buf[3] = 0x10000000CLL;
        *&buf[1] = xmmword_10056EDD0;
        buf[0] = off_1009A9120;
        *&v191 = &v191 + 8;
        sub_1003A9CA4(&v140, &v185, buf, &__src);
      }

      *(&v160 + 1) = *sub_1003AFDBC(v111 + 64, 0);
      *&v161 = *sub_1003AFDBC(v111 + 64, 1u);
      *(&v161 + 1) = *sub_1003AFDBC(v111 + 64, 2u);
      *&v162 = sqrt(*sub_1003A8DB0(v111 + 240, 0, 0));
      *(&v162 + 1) = sqrt(*sub_1003A8DB0(v111 + 240, 1, 1));
      v121 = 0;
      *&v163 = sqrt(*sub_1003A8DB0(v111 + 240, 2, 2));
      do
      {
        *(&v163 + v121 + 1) = *sub_1003AFDBC(v111 + 368, v121);
        ++v121;
      }

      while (v121 != 3);
      v122 = *(&__p + 1);
      if (*(&__p + 1) >= v168)
      {
        v124 = __p;
        v125 = *(&__p + 1) - __p;
        v126 = 0xCF3CF3CF3CF3CF3DLL * ((*(&__p + 1) - __p) >> 3);
        v127 = v126 + 1;
        if (v126 + 1 > 0x186186186186186)
        {
          sub_100019B38();
        }

        if (0x9E79E79E79E79E7ALL * ((v168 - __p) >> 3) > v127)
        {
          v127 = 0x9E79E79E79E79E7ALL * ((v168 - __p) >> 3);
        }

        if (0xCF3CF3CF3CF3CF3DLL * ((v168 - __p) >> 3) >= 0xC30C30C30C30C3)
        {
          v127 = 0x186186186186186;
        }

        if (v127)
        {
          sub_1003AF88C(&__p, v127);
        }

        v128 = 8 * ((*(&__p + 1) - __p) >> 3);
        *(v128 + 112) = v162;
        *(v128 + 128) = v163;
        *(v128 + 144) = v164;
        *(v128 + 160) = v165;
        *(v128 + 48) = v158;
        *(v128 + 64) = v159;
        *(v128 + 80) = v160;
        *(v128 + 96) = v161;
        *v128 = v156[0];
        *(v128 + 16) = v156[1];
        *(v128 + 32) = v157;
        v123 = 168 * v126 + 168;
        v129 = v128 - v125;
        memcpy((v128 - v125), v124, v125);
        v130 = __p;
        *&__p = v129;
        *(&__p + 1) = v123;
        *&v168 = 0;
        if (v130)
        {
          operator delete(v130);
        }
      }

      else
      {
        *(*(&__p + 1) + 112) = v162;
        *(v122 + 128) = v163;
        *(v122 + 144) = v164;
        *(v122 + 160) = v165;
        *(v122 + 48) = v158;
        *(v122 + 64) = v159;
        *(v122 + 80) = v160;
        *(v122 + 96) = v161;
        *v122 = v156[0];
        *(v122 + 16) = v156[1];
        *(v122 + 32) = v157;
        v123 = v122 + 168;
      }

      *(&__p + 1) = v123;
      if ((*(a1 + 656) & 1) == 0)
      {
        sub_1000195BC();
      }

      *(&v168 + 1) = *(a1 + 648);
    }
  }

LABEL_144:
  *(a1 + 24) = *v166;
  *(a1 + 29) = *&v166[5];
  if ((a1 + 24) != v166)
  {
    sub_1003D5D28((a1 + 40), __p, *(&__p + 1), 0xCF3CF3CF3CF3CF3DLL * ((*(&__p + 1) - __p) >> 3));
  }

  *(a1 + 64) = *(&v168 + 1);
  sub_1003CD824(a1, a3);
  if (__p)
  {
    *(&__p + 1) = __p;
    operator delete(__p);
  }
}

void sub_1003D181C(uint64_t a1)
{
  *(a1 + 616) = *(a1 + 600);
  *(a1 + 640) = 0;
  *(a1 + 923) = 65792;
  *(a1 + 932) = 0;
  *(a1 + 928) = 0;
  v1 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "#sa_algo_batchfilter,Batch filter is reset", v2, 2u);
  }
}

void sub_1003D18A8(uint64_t a1)
{
  v1 = *(a1 + 664);
  v2 = *(a1 + 672);
  if (v1 != v2)
  {
    if (v1 + 112 != v2)
    {
      v4 = v1 + 152;
      do
      {
        v5 = *v1;
        v6 = *(v1 + 16);
        v22 = *(v1 + 32);
        v21[1] = v6;
        v21[0] = v5;
        sub_1003BBC24(&v23, v1 + 40);
        v24 = *(v1 + 104);
        v7 = *(v4 - 40);
        v8 = *(v4 - 24);
        v18 = *(v4 - 8);
        v17[0] = v7;
        v17[1] = v8;
        sub_1003BBC24(&v19, v4);
        v20 = *(v4 + 64);
        v19 = off_1009991A0;
        v23 = off_1009991A0;
        if (*(v21 + 1) < *(v17 + 1))
        {
          v1 = v4 - 40;
        }

        v9 = v4 + 72;
        v4 += 112;
      }

      while (v9 != v2);
    }

    v10 = *a1;
    v11 = *(a1 + 8);
    if (*a1 != v11)
    {
      v12 = 0;
      v13 = *(v1 + 8);
      do
      {
        if (v12)
        {
          v12 = 1;
        }

        else
        {
          LOBYTE(v17[0]) = 1;
          v16 = 0;
          *&v21[0] = 0;
          sub_1003D5470(*v10, v10[1], a1, (a1 + 664), v17, &v16, v21);
          v14 = v17[0];
          *(a1 + 924) &= LOBYTE(v17[0]);
          if ((v14 & 1) == 0)
          {
            if ((v16 & 1) == 0)
            {
              *(a1 + 925) = 0;
              return;
            }

            v15 = *(a1 + 640);
            if (v15 < *v21)
            {
              v15 = *v21;
            }

            *(a1 + 640) = v15;
          }

          v12 = v13 <= v10[1];
        }

        v10 += 2;
      }

      while (v10 != v11);
    }
  }
}

BOOL sub_1003D1A70(uint64_t a1)
{
  v1 = *(a1 + 672);
  v2 = *(a1 + 664);
  if ((0x6DB6DB6DB6DB6DB7 * ((v1 - v2) >> 4)) >= 4)
  {
    v79 = 0;
    v78 = 0;
    v80 = 0;
    v4 = *(a1 + 168);
    v53 = (a1 + 168);
    v5 = *(a1 + 176);
    if ((*(a1 + 926) & 1) != 0 || v4 != v5)
    {
      if (v4 != v5)
      {
        do
        {
          sub_1003B95EC(&v78, v4);
          v4 += 432;
        }

        while (v4 != v5);
        v4 = *v53;
      }

      sub_1003BBC24(buf, v4);
      sub_1003BBC24(&v59, buf);
      sub_1003BBC24(&v54, buf);
      v8 = *sub_1003AFDBC(&v59, 1u);
      *sub_1003AFDBC(&v59, 1u) = v8 + 3.0;
      v9 = *sub_1003AFDBC(&v54, 1u);
      *sub_1003AFDBC(&v54, 1u) = v9 + -3.0;
      sub_1003B95EC(&v78, &v59);
      sub_1003B95EC(&v78, &v54);
    }

    else
    {
      if (v2 != v1)
      {
        for (i = v2 + 112; i != v1; i += 112)
        {
          if (*(i + 8) < *(v2 + 8))
          {
            v2 = i;
          }
        }
      }

      if (*(v2 + 8) >= 0.5)
      {
        v10 = *(v2 + 8);
      }

      else
      {
        v10 = 0.5;
      }

      sub_1003BBC24(buf, v2 + 40);
      for (j = 0; j != 3; ++j)
      {
        sub_1003BBC24(&v59, buf);
        sub_1003BBC24(&v54, buf);
        v12 = *sub_1003AFDBC(&v59, j);
        *sub_1003AFDBC(&v59, j) = v10 + v12;
        v13 = *sub_1003AFDBC(&v54, j);
        *sub_1003AFDBC(&v54, j) = v13 - v10;
        sub_1003B95EC(&v78, &v59);
        sub_1003B95EC(&v78, &v54);
      }
    }

    v75 = 0;
    v76 = 0;
    v77 = 0;
    if (v78 != v79)
    {
      v59 = 0;
      v60 = 0uLL;
      sub_1003D37B4(a1, v78, a1 + 664, &v59);
    }

    sub_1003D4208(&v75, 0, v76);
    v15 = 126 - 2 * __clz(0x51B3BEA3677D46CFLL * ((v76 - v75) >> 3));
    if (v76 == v75)
    {
      v16 = 0;
    }

    else
    {
      v16 = v15;
    }

    sub_1003D7A94(v75, v76, v16, 1, v14);
    if (v75 != v76)
    {
      v18 = sub_1003D4260(v17, v75, (a1 + 664));
      *(a1 + 648) = v18;
      *(a1 + 656) = 1;
      v19 = *(a1 + 976);
      if (v18 > v19)
      {
        v20 = qword_1009F9820;
        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218240;
          *&buf[4] = v18;
          *&buf[12] = 2048;
          *&buf[14] = v19;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#sa_algo_batchfilter,Batch filter has detected an issue with the measurements - rms normalized error (%f) is above the threshold (%f)", buf, 0x16u);
        }

        sub_1003CDBFC(a1);
        v7 = 0;
        *(a1 + 927) = 1;
        goto LABEL_68;
      }

      v72 = 0;
      v73 = 0;
      v74 = 0;
      sub_1003D4400(&v72, v75);
      v21 = v75;
      if ((0x51B3BEA3677D46CFLL * ((v76 - v75) >> 3)) >= 2)
      {
        v22 = 1;
        do
        {
          v23 = v72;
          v24 = v73;
          if (v73 == v72)
          {
            goto LABEL_40;
          }

          v25 = 0;
          v26 = 1;
          do
          {
            v27 = 0x51B3BEA3677D46CFLL * ((v24 - v23) >> 3);
            v28 = v23 + 376 * v25 + 8;
            while (!v26)
            {
              v26 = 0;
              ++v25;
              v28 += 376;
              if (v27 <= v25)
              {
                goto LABEL_42;
              }
            }

            v69 = 0x100000003;
            v68 = xmmword_10056EDA0;
            v67 = off_1009A8F78;
            v70 = &v71;
            sub_1003A920C(v75 + 376 * v22 + 8, v28, &v67);
            v61 = 0x100000003;
            v60 = xmmword_10056EDA0;
            v59 = off_1009A8F78;
            v62 = v63;
            v82 = 0x100000134;
            *&buf[8] = xmmword_10056EEA0;
            *buf = off_1009A9168;
            v83 = v84;
            v56 = 0x100000003;
            v54 = off_1009A8F78;
            v55 = xmmword_10056EDA0;
            v57 = v58;
            sub_1003AFEC0(&v67, &v59, buf, &v54, "2");
            v26 = v29 > 0.1;
            v23 = v72;
            v24 = v73;
            ++v25;
          }

          while (0x51B3BEA3677D46CFLL * ((v73 - v72) >> 3) > v25);
          v21 = v75;
          if (v29 > 0.1)
          {
LABEL_40:
            if (exp(*(v23 + 360) - *(v21 + 376 * v22 + 360)) > 0.01)
            {
              sub_1003D4400(&v72, v21 + 376 * v22);
LABEL_42:
              v21 = v75;
            }
          }

          ++v22;
        }

        while (0x51B3BEA3677D46CFLL * ((v76 - v21) >> 3) > v22);
      }

      v31 = v72;
      v30 = v73;
      if ((0x51B3BEA3677D46CFLL * ((v73 - v72) >> 3)) <= 1)
      {
        goto LABEL_55;
      }

      v32 = exp(-*(v72 + 360));
      v33 = 0.0;
      if (v31 != v30)
      {
        v34 = v31;
        do
        {
          v33 = v33 + exp(-*(v34 + 360));
          v34 += 376;
        }

        while (v34 != v30);
      }

      v35 = v32 / v33;
      if (v35 >= 0.9 || (v36 = sub_1003AFDBC(v31 + 72, 1u), v31 = v72, v30 = v73, (0x51B3BEA3677D46CFLL * ((v73 - v72) >> 3)) < 2))
      {
LABEL_55:
        v64 = 0;
        v65 = 0;
        v66 = 0;
        if (v31 == v30)
        {
          v44 = 0;
          v43 = 0;
        }

        else
        {
          do
          {
            sub_1003D4460(v31 + 8, a1 + 688, &v59);
            if (v59 != v60)
            {
              sub_1003D37B4(a1, v31 + 8, a1 + 664, &v59);
            }

            sub_1003D4400(&v64, v31);
            *buf = &v59;
            sub_10038E3D0(buf);
            v31 += 376;
          }

          while (v31 != v30);
          v43 = v64;
          v44 = v65;
        }
      }

      else
      {
        v37 = *v36;
        v38 = 1;
        v39 = 448;
        while (1)
        {
          v40 = sub_1003AFDBC(v31 + v39, 1u);
          v41 = fmod(*v40 - v37 + 3.14159265, 6.28318531);
          if (v41 < 0.0)
          {
            v41 = v41 + 6.28318531;
          }

          v42 = fabs(v41 + -3.14159265);
          if (v42 > 0.392699082)
          {
            break;
          }

          ++v38;
          v31 = v72;
          v30 = v73;
          v39 += 376;
          if (0x51B3BEA3677D46CFLL * ((v73 - v72) >> 3) <= v38)
          {
            goto LABEL_55;
          }
        }

        v48 = qword_1009F9820;
        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218240;
          *&buf[4] = v35;
          *&buf[12] = 2048;
          *&buf[14] = v42;
          _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, "#sa_algo_batchfilter,Batch filter clearing solutions since the best one has a low weight (%f) and the horizontal angle difference to a secondary solution is too high (%f)", buf, 0x16u);
        }

        v49 = v72;
        if (v73 != v72)
        {
          v50 = v73 - 46;
          v51 = v73 - 46;
          do
          {
            v51[30] = off_1009991A0;
            v51[16] = off_1009991A0;
            v51[8] = off_1009991A0;
            *v51 = off_1009991A0;
            v52 = v51 - 1;
            v51 -= 47;
            v50 -= 47;
          }

          while (v52 != v49);
        }

        v44 = 0;
        v43 = 0;
        v73 = v49;
        v64 = 0;
        v65 = 0;
        v66 = 0;
      }

      v45 = 126 - 2 * __clz(0x51B3BEA3677D46CFLL * ((v44 - v43) >> 3));
      if (v44 == v43)
      {
        v46 = 0;
      }

      else
      {
        v46 = v45;
      }

      sub_1003D9214(v43, v44, v46, 1);
      if (v64 != v65)
      {
        v61 = 0x300000003;
        v59 = off_1009A8FC0;
        v60 = xmmword_10056EDB0;
        v62 = v63;
        v56 = 0x100000003;
        v54 = off_1009A9098;
        v55 = xmmword_10056EDA0;
        v57 = v58;
        v82 = 0x10000000CLL;
        *buf = off_1009A9120;
        *&buf[8] = xmmword_10056EDD0;
        v83 = v84;
        sub_1003A9CA4(v64 + 248, &v54, buf, &v59);
      }

      *buf = &v64;
      sub_1003D718C(buf);
      *buf = &v72;
      sub_1003D718C(buf);
    }

    v7 = *(a1 + 176) != *(a1 + 168);
LABEL_68:
    *buf = &v75;
    sub_1003D718C(buf);
    *buf = &v78;
    sub_1003BCC80(buf);
    return v7;
  }

  return 0;
}

void sub_1003D2D74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, void **a61, uint64_t a62, uint64_t a63)
{
  a61 = &a69;
  sub_1003D718C(&a61);
  a61 = &a72;
  sub_1003D718C(&a61);
  a61 = &STACK[0x210];
  sub_1003BCC80(&a61);
  _Unwind_Resume(a1);
}

void *sub_1003D2F20(void *result, unint64_t a2)
{
  if (0xF0F0F0F0F0F0F0F1 * ((result[2] - *result) >> 3) < a2)
  {
    if (a2 < 0x1E1E1E1E1E1E1E2)
    {
      v2 = result[1] - *result;
      v3 = result;
      sub_1003D6DC8(result, a2);
    }

    sub_100019B38();
  }

  return result;
}

void sub_1003D2FE4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1003D70FC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1003D2FF8(uint64_t a1, uint64_t a2, uint64_t a3, double **a4, double **a5, uint64_t a6, uint64_t a7)
{
  v11 = *a6;
  v12 = *(a6 + 8);
  if (*a6 != v12)
  {
    v13 = v12 - 128;
    do
    {
      *(v12 - 64) = off_1009991A0;
      *(v12 - 128) = off_1009991A0;
      v13 -= 136;
      v12 -= 136;
    }

    while (v12 != v11);
    *(a6 + 8) = v11;
    sub_1003D2F20(a6, 0x6DB6DB6DB6DB6DB7 * ((a4[1] - *a4) >> 4));
  }

  v14 = *a7;
  v15 = *(a7 + 8);
  if (*a7 != v15)
  {
    v16 = v15 - 176;
    do
    {
      *(v15 - 88) = off_1009991A0;
      *(v15 - 176) = off_1009991A0;
      v16 -= 192;
      v15 -= 192;
    }

    while (v15 != v14);
    *(a7 + 8) = v14;
    sub_1003D4CE0(a7, 0x4EC4EC4EC4EC4EC5 * ((a5[1] - *a5) >> 4));
  }

  v41 = a5;
  v73 = 0x100000003;
  v71 = off_1009A8F78;
  v72 = xmmword_10056EDA0;
  v74 = &v75;
  v68 = 0x300000003;
  v67 = xmmword_10056EDB0;
  v66 = off_1009A8FC0;
  v69 = &v70;
  result = sub_100414D10(a2, &v71, &v66);
  v18 = *a4;
  v19 = a4[1];
  if (*a4 != v19)
  {
    do
    {
      v62 = 0x100000001;
      v60 = off_1009A96E8;
      *&v20 = 0x100000001;
      *(&v20 + 1) = 0x100000001;
      v61 = v20;
      v63 = v64;
      v57 = 0x300000001;
      v55 = off_1009A9E50;
      v56 = xmmword_10056FAD0;
      v58 = v59;
      v51 = 0x100000003;
      v49 = off_1009A8F78;
      v50 = xmmword_10056EDA0;
      v52 = v53;
      sub_1003A920C((v18 + 5), a3, &v49);
      sub_100414B4C(a2, &v66, &v71, &v49, &v60, &v55);
      v22 = v18[3];
      v21 = v18[4];
      v23 = v18[2];
      v24 = sub_1003AFDBC(&v60, 0);
      v25 = 1.0 / (v22 * v21);
      v65 = v23 - v25 * *v24;
      v51 = 0x300000001;
      v49 = off_1009A9E50;
      v50 = xmmword_10056FAD0;
      v52 = v53;
      sub_1003C07A0(&v55, &v49, v25);
      v26 = 0;
      v46 = 0x100000003;
      v44 = off_1009A8F78;
      v45 = xmmword_10056EDA0;
      v47 = v48;
      do
      {
        v27 = sub_1002EB67C(&v49, v26);
        *sub_1003AFDBC(&v44, v26++) = v27;
      }

      while (v26 != 3);
      v28 = *(a6 + 8);
      if (v28 >= *(a6 + 16))
      {
        result = sub_1003DB708(a6, &v65, &v49, &v44);
      }

      else
      {
        sub_1003DB850(*(a6 + 8), &v49, &v44, v65);
        result = v28 + 136;
        *(a6 + 8) = v28 + 136;
      }

      *(a6 + 8) = result;
      v18 += 14;
    }

    while (v18 != v19);
  }

  v29 = *v41;
  v30 = v41[1];
  if (*v41 != v30)
  {
    do
    {
      v62 = 0x100000002;
      v60 = off_1009A9730;
      v61 = xmmword_10056F230;
      v63 = v64;
      v57 = 0x300000002;
      v55 = off_1009A9E98;
      v56 = xmmword_10056FAE0;
      v58 = v59;
      v51 = 0x100000003;
      v49 = off_1009A8F78;
      v50 = xmmword_10056EDA0;
      v52 = v53;
      sub_1003A920C((v29 + 4), a3, &v49);
      sub_100414C2C(a2, &v66, &v71, &v49, (v29 + 12), &v60, &v55);
      v31 = v29[3];
      v32 = v29[1];
      v33 = sub_1003AFDBC(&v60, 0);
      v34 = 1.0 / v31;
      v35 = fmod(v31 * v32 - *v33 + 3.14159265, 6.28318531);
      if (v35 < 0.0)
      {
        v35 = v35 + 6.28318531;
      }

      v65 = v34 * (v35 + -3.14159265);
      v36 = v29[2];
      v54 = v36 - v34 * *sub_1003AFDBC(&v60, 1u);
      v51 = 0x300000002;
      v49 = off_1009A9E98;
      v50 = xmmword_10056FAE0;
      v52 = v53;
      sub_1003C07A0(&v55, &v49, v34);
      v37 = 0;
      v46 = 0x200000003;
      v44 = off_1009A9EE0;
      v45 = xmmword_10056FAF0;
      v47 = v48;
      do
      {
        v38 = sub_1002EB6B8(&v49, 0, v37);
        *sub_1003A8DB0(&v44, v37, 0) = v38;
        v39 = sub_1002EB6B8(&v49, 1, v37);
        *sub_1003A8DB0(&v44, v37++, 1) = v39;
      }

      while (v37 != 3);
      v40 = *(a7 + 8);
      if (v40 >= *(a7 + 16))
      {
        result = sub_1003DB8C0(a7, &v65, &v54, &v49, &v44);
      }

      else
      {
        sub_1003DBA10(*(a7 + 8), &v49, &v44, v65, v54);
        result = v40 + 192;
        *(a7 + 8) = v40 + 192;
      }

      *(a7 + 8) = result;
      v29 += 26;
    }

    while (v29 != v30);
  }

  return result;
}

uint64_t sub_1003D3774(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = sub_1003D72D8(a1, a2);
  }

  else
  {
    sub_1003D71E0(a1, a2);
    result = v3 + 376;
  }

  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1003D4208(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 != a2)
  {
    sub_1003D79F4(&v7, a3, *(a1 + 8), a2);
    sub_1003D7944(a1, v5);
  }

  return a2;
}

double sub_1003D4260(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = *a3;
  v4 = a3[1];
  if (*a3 == v4)
  {
    v8 = 0.0;
    v14 = *a3;
  }

  else
  {
    v7 = v3 + 40;
    v8 = 0.0;
    do
    {
      v23 = 0x100000001;
      v21 = off_1009A96E8;
      *&v9 = 0x100000001;
      *(&v9 + 1) = 0x100000001;
      v22 = v9;
      v24 = &v25;
      v18 = 0x300000001;
      v16 = off_1009A9E50;
      v17 = xmmword_10056FAD0;
      v19 = &v20;
      sub_1004145A0(a2 + 8, v7, &v21, &v16);
      v10 = *(v7 - 8);
      v11 = *(v7 - 32);
      v12 = sub_1003AFDBC(&v21, 0);
      v8 = v8 + 1.0 / (v10 * 0.1) * (v11 - *v12) * (1.0 / (v10 * 0.1) * (v11 - *v12));
      v13 = v7 + 72;
      v7 += 112;
    }

    while (v13 != v4);
    v3 = *a3;
    v14 = a3[1];
  }

  return sqrt(v8 / (0x6DB6DB6DB6DB6DB7 * ((v14 - v3) >> 4) - 3));
}

uint64_t sub_1003D4400(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = sub_1003D90C8(a1, a2);
  }

  else
  {
    sub_1003D7684(a1, *(a1 + 8), a2);
    result = v3 + 376;
    *(a1 + 8) = v3 + 376;
  }

  *(a1 + 8) = result;
  return result;
}

void sub_1003D4460(uint64_t a1@<X1>, uint64_t a2@<X2>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v3 = *a2;
  v4 = *(a2 + 8);
  if (*a2 != v4)
  {
    do
    {
      if (sub_1003D44E8(a1, v3))
      {
        sub_1003D5CC8(a3, v3);
      }

      v3 += 13;
    }

    while (v3 != v4);
  }
}

void sub_1003D44D0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10038E3D0(va);
  _Unwind_Resume(a1);
}

BOOL sub_1003D44E8(uint64_t a1, uint64_t a2)
{
  v13 = 0x100000003;
  v11 = off_1009A8F78;
  v12 = xmmword_10056EDA0;
  v14 = &v15;
  sub_1003A920C(a1, a2 + 32, &v11);
  v8 = 0x100000003;
  v6 = off_1009A8F78;
  v7 = xmmword_10056EDA0;
  v9 = &v10;
  sub_1003A90A8(a2 + 96, &v11, &v6);
  v3 = sub_1002EB67C(&v6, 2u);
  v28 = 0x100000003;
  v26 = off_1009A8F78;
  v27 = xmmword_10056EDA0;
  v29 = &v30;
  v23 = 0x100000134;
  v22 = xmmword_10056EEA0;
  v21 = off_1009A9168;
  v24 = &v25;
  v18 = 0x100000003;
  v17 = xmmword_10056EDA0;
  v16 = off_1009A8F78;
  v19 = &v20;
  sub_1003AFEC0(&v6, &v26, &v21, &v16, "2");
  return acos(-v3 / v4) * 180.0 / 3.14159265 <= 60.0;
}

void sub_1003D46B8(uint64_t a1, uint64_t a2, uint64_t a3, double **a4)
{
  v7 = (*(a3 + 8) - *a3) >> 4;
  v42 = 0;
  v43 = 0;
  v44 = 0;
  v39 = 0;
  v40 = 0;
  v41 = 0;
  v8 = sub_1003D2F20(&v42, 0x6DB6DB6DB6DB6DB7 * v7);
  sub_1003D4DBC(v8, a2, a3, a4, &v42, &v39);
  v36 = 0x300000003;
  v35 = xmmword_10056EDB0;
  v34 = off_1009A8FC0;
  v37 = &v38;
  sub_1003A8C00(&v34, 3, 3);
  sub_1003A8C50(&v34, 0.0);
  v31 = 0x100000003;
  v30 = xmmword_10056EDA0;
  v29 = off_1009A8F78;
  v32 = &v33;
  sub_1003A8C00(&v29, 3, 1);
  v9 = 0.0;
  sub_1003A8C50(&v29, 0.0);
  v10 = v42;
  v11 = v43;
  if (v42 != v43)
  {
    do
    {
      v12 = (v10 + 1);
      v13 = *v10;
      v26 = 0x300000003;
      v24 = off_1009A8FC0;
      v25 = xmmword_10056EDB0;
      v27 = v28;
      sub_1003A90A8((v10 + 9), (v10 + 1), &v24);
      v47 = 0x300000003;
      v46 = xmmword_10056EDB0;
      v45 = off_1009A8FC0;
      v48 = v49;
      sub_1003A8EBC(&v34, &v24, &v45);
      sub_1003A8CFC(&v34, &v45);
      v26 = 0x100000003;
      v24 = off_1009A8F78;
      v25 = xmmword_10056EDA0;
      v27 = v28;
      v12 += 64;
      sub_1003C07A0(v12, &v24, v13);
      v47 = 0x100000003;
      v46 = xmmword_10056EDA0;
      v45 = off_1009A8F78;
      v48 = v49;
      sub_1003A8EBC(&v29, &v24, &v45);
      sub_1003A8CFC(&v29, &v45);
      v9 = v9 + v13 * v13;
      v10 = (v12 + 64);
    }

    while ((v12 + 64) != v11);
  }

  v14 = v39;
  v15 = v40;
  if (v39 != v40)
  {
    do
    {
      v16 = *v14;
      v17 = v14[1];
      v26 = 0x300000003;
      v24 = off_1009A8FC0;
      v25 = xmmword_10056EDB0;
      v18 = (v14 + 2);
      v27 = v28;
      sub_1003A90A8((v14 + 13), (v14 + 2), &v24);
      v47 = 0x300000003;
      v46 = xmmword_10056EDB0;
      v45 = off_1009A8FC0;
      v48 = v49;
      sub_1003A8EBC(&v34, &v24, &v45);
      sub_1003A8CFC(&v34, &v45);
      v21 = 0x100000002;
      v19 = off_1009A9730;
      v20 = xmmword_10056F230;
      v22 = &v23;
      *sub_1003AFDBC(&v19, 0) = v16;
      *sub_1003AFDBC(&v19, 1u) = v17;
      v26 = 0x100000003;
      v24 = off_1009A8F78;
      v25 = xmmword_10056EDA0;
      v27 = v28;
      v18 += 88;
      sub_1003A90A8(v18, &v19, &v24);
      v47 = 0x100000003;
      v46 = xmmword_10056EDA0;
      v45 = off_1009A8F78;
      v48 = v49;
      sub_1003A8EBC(&v29, &v24, &v45);
      sub_1003A8CFC(&v29, &v45);
      v9 = v9 + v17 * v17 + v16 * v16;
      v14 = (v18 + 88);
    }

    while ((v18 + 88) != v15);
  }

  v26 = 0x300000003;
  v24 = off_1009A8FC0;
  v25 = xmmword_10056EDB0;
  v27 = v28;
  v52 = 0x100000003;
  v50 = off_1009A9098;
  v51 = xmmword_10056EDA0;
  v53 = &v54;
  v47 = 0x10000000CLL;
  v46 = xmmword_10056EDD0;
  v45 = off_1009A9120;
  v48 = v49;
  sub_1003A9CA4(&v34, &v50, &v45, &v24);
}

void sub_1003D4C6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, char a62, uint64_t a63)
{
  a68 = &a62;
  sub_1003D6D50(&a68);
  a68 = &a65;
  sub_1003D6CD8(&a68);
  _Unwind_Resume(a1);
}

void *sub_1003D4CE0(void *result, unint64_t a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((result[2] - *result) >> 6) < a2)
  {
    if (a2 < 0x155555555555556)
    {
      v2 = result[1] - *result;
      v3 = result;
      sub_1003DB1B0(result, a2);
    }

    sub_100019B38();
  }

  return result;
}

void sub_1003D4DA8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1003DB678(va);
  _Unwind_Resume(a1);
}

void sub_1003D4DBC(uint64_t a1, uint64_t a2, double **a3, double **a4, uint64_t a5, uint64_t a6)
{
  v10 = *a5;
  v11 = *(a5 + 8);
  if (*a5 != v11)
  {
    v12 = v11 - 128;
    do
    {
      *(v11 - 64) = off_1009991A0;
      *(v11 - 128) = off_1009991A0;
      v12 -= 136;
      v11 -= 136;
    }

    while (v11 != v10);
    *(a5 + 8) = v10;
    sub_1003D2F20(a5, 0x6DB6DB6DB6DB6DB7 * ((a3[1] - *a3) >> 4));
  }

  v13 = *a6;
  v14 = *(a6 + 8);
  if (*a6 != v14)
  {
    v15 = v14 - 176;
    do
    {
      *(v14 - 88) = off_1009991A0;
      *(v14 - 176) = off_1009991A0;
      v15 -= 192;
      v14 -= 192;
    }

    while (v14 != v13);
    *(a6 + 8) = v13;
    sub_1003D4CE0(a6, 0x4EC4EC4EC4EC4EC5 * ((a4[1] - *a4) >> 4));
  }

  v41 = a4;
  v16 = *a3;
  v17 = a3[1];
  if (*a3 != v17)
  {
    do
    {
      v61 = 0x100000001;
      v59 = off_1009A96E8;
      *&v18 = 0x100000001;
      *(&v18 + 1) = 0x100000001;
      v60 = v18;
      v62 = v63;
      v56 = 0x300000001;
      v54 = off_1009A9E50;
      v55 = xmmword_10056FAD0;
      v57 = v58;
      sub_1004145A0(a2, (v16 + 5), &v59, &v54);
      v20 = v16[3];
      v19 = v16[4];
      v21 = v16[2];
      v22 = sub_1003AFDBC(&v59, 0);
      v23 = 1.0 / (v20 * v19);
      v64[0] = v21 - v23 * *v22;
      v50 = 0x300000001;
      v48 = off_1009A9E50;
      v49 = xmmword_10056FAD0;
      v51 = v52;
      sub_1003C07A0(&v54, &v48, v23);
      v24 = 0;
      v45 = 0x100000003;
      v43 = off_1009A8F78;
      v44 = xmmword_10056EDA0;
      v46 = v47;
      do
      {
        v25 = sub_1002EB67C(&v48, v24);
        *sub_1003AFDBC(&v43, v24++) = v25;
      }

      while (v24 != 3);
      v26 = *(a5 + 8);
      if (v26 >= *(a5 + 16))
      {
        v27 = sub_1003DB708(a5, v64, &v48, &v43);
      }

      else
      {
        sub_1003DB850(*(a5 + 8), &v48, &v43, v64[0]);
        v27 = v26 + 136;
        *(a5 + 8) = v26 + 136;
      }

      *(a5 + 8) = v27;
      v16 += 14;
    }

    while (v16 != v17);
  }

  v28 = *v41;
  v29 = v41[1];
  if (*v41 != v29)
  {
    do
    {
      v61 = 0x100000002;
      v59 = off_1009A9730;
      v60 = xmmword_10056F230;
      v62 = v63;
      v56 = 0x300000002;
      v54 = off_1009A9E98;
      v55 = xmmword_10056FAE0;
      v57 = v58;
      sub_1004147CC(a2, (v28 + 4), (v28 + 12), &v59, &v54);
      v30 = v28[3];
      v31 = v28[1];
      v32 = sub_1003AFDBC(&v59, 0);
      v33 = 1.0 / v30;
      v34 = fmod(v30 * v31 - *v32 + 3.14159265, 6.28318531);
      if (v34 < 0.0)
      {
        v34 = v34 + 6.28318531;
      }

      v64[0] = v33 * (v34 + -3.14159265);
      v35 = v28[2];
      v53 = v35 - v33 * *sub_1003AFDBC(&v59, 1u);
      v50 = 0x300000002;
      v48 = off_1009A9E98;
      v49 = xmmword_10056FAE0;
      v51 = v52;
      sub_1003C07A0(&v54, &v48, 1.0 / v30);
      v36 = 0;
      v45 = 0x200000003;
      v43 = off_1009A9EE0;
      v44 = xmmword_10056FAF0;
      v46 = v47;
      do
      {
        v37 = sub_1002EB6B8(&v48, 0, v36);
        *sub_1003A8DB0(&v43, v36, 0) = v37;
        v38 = sub_1002EB6B8(&v48, 1, v36);
        *sub_1003A8DB0(&v43, v36++, 1) = v38;
      }

      while (v36 != 3);
      v39 = *(a6 + 8);
      if (v39 >= *(a6 + 16))
      {
        v40 = sub_1003DB8C0(a6, v64, &v53, &v48, &v43);
      }

      else
      {
        sub_1003DBA10(*(a6 + 8), &v48, &v43, v64[0], v53);
        v40 = v39 + 192;
        *(a6 + 8) = v39 + 192;
      }

      *(a6 + 8) = v40;
      v28 += 26;
    }

    while (v28 != v29);
  }
}

void sub_1003D5470(double a1, double a2, uint64_t a3, uint64_t *a4, BOOL *a5, char *a6, double *a7)
{
  *a5 = 1;
  *a6 = 0;
  *a7 = 0.0;
  v7 = a4[1];
  if (*a4 != v7)
  {
    v14 = 0x6DB6DB6DB6DB6DB7 * ((v7 - *a4) >> 4);
    v71 = 0;
    v72 = 0;
    v73 = 0;
    sub_1003BB4E4(&v71, v14);
    v68 = 0x100000002;
    v67 = xmmword_10056F230;
    v66 = off_1009A9730;
    v69 = &v70;
    v15 = *a4;
    v16 = a4[1];
    while (v15 != v16)
    {
      if (*(v15 + 8) <= a2)
      {
        v17 = sub_1002EB67C(v15 + 40, 2u);
        *sub_1003AFDBC(&v66, 0) = v17;
        v18 = sub_1002EB67C(v15 + 40, 0);
        *sub_1003AFDBC(&v66, 1u) = v18;
        v19 = v72;
        if (v72 >= v73)
        {
          v20 = sub_1003C0E70(&v71, &v66);
        }

        else
        {
          sub_1003C0C14(v72, &v66);
          v20 = v19 + 56;
        }

        v72 = v20;
      }

      v15 += 112;
    }

    if (v71 != v72)
    {
      v63 = 0x100000002;
      v62 = xmmword_10056F230;
      v61 = off_1009A9730;
      v64 = &v65;
      sub_1003A8C00(&v61, 2, 1);
      sub_1003A8C50(&v61, 0.0);
      v22 = v71;
      for (i = v72; v22 != i; v22 += 56)
      {
        v76 = 0x100000002;
        v74 = off_1009A9730;
        v75 = xmmword_10056F230;
        v77 = v78;
        sub_1003A8EBC(&v61, v22, &v74);
        sub_1003A8CFC(&v61, &v74);
      }

      v76 = 0x100000002;
      v75 = xmmword_10056F230;
      v74 = off_1009A9730;
      v77 = v78;
      sub_1003C07A0(&v61, &v74, 1.0 / v14);
      v48 = a5;
      sub_1003A8CFC(&v61, &v74);
      v23 = v71;
      v24 = v72;
      if (v71 == v72)
      {
        *v48 = 1;
      }

      else
      {
        v47 = a6;
        v25 = 0.0;
        do
        {
          v76 = 0x100000002;
          v74 = off_1009A9730;
          v75 = xmmword_10056F230;
          v77 = v78;
          sub_1003A920C(v23, &v61, &v74);
          sub_1003A8CFC(v23, &v74);
          v58 = 0x100000002;
          v57 = xmmword_10056F230;
          v56 = off_1009A9730;
          v59 = v60;
          v76 = 0x1000000E1;
          v75 = xmmword_10056F240;
          v74 = off_1009A9778;
          v77 = v78;
          v53 = 0x100000002;
          v51 = off_1009A9730;
          v52 = xmmword_10056F230;
          v54 = v55;
          sub_1003AFEC0(v23, &v56, &v74, &v51, "2");
          if (v26 > v25)
          {
            v25 = v26;
          }

          v23 += 56;
        }

        while (v23 != v24);
        *v48 = v25 < 0.3;
        if (v25 >= 0.3)
        {
          v76 = 0x200000002;
          v75 = xmmword_10056F250;
          v74 = off_1009A97C0;
          v77 = v78;
          sub_1003A8C00(&v74, 2, 2);
          sub_1003A8C50(&v74, 0.0);
          v28 = v71;
          for (j = v72; v28 != j; v28 += 56)
          {
            sub_1003C1194(v50, *(v28 + 12), *(v28 + 8));
            sub_1003A9464(v28, v50);
            v53 = 0x200000002;
            v51 = off_1009A97C0;
            v52 = xmmword_10056F250;
            v54 = v55;
            sub_1003A90A8(v28, v50, &v51);
            v58 = 0x200000002;
            v57 = xmmword_10056F250;
            v56 = off_1009A97C0;
            v59 = v60;
            sub_1003A8EBC(&v74, &v51, &v56);
            sub_1003A8CFC(&v74, &v56);
          }

          v58 = 0x200000002;
          v57 = xmmword_10056F250;
          v56 = off_1009A97C0;
          v59 = v60;
          v53 = 0x200000002;
          v51 = off_1009A97C0;
          v52 = xmmword_10056F250;
          v54 = v55;
          sub_1003BB62C(&v74, &v56, &v51);
          v29 = *sub_1003A8DB0(&v51, 0, 0);
          v30 = sub_1003A8DB0(&v51, 1, 1);
          if (*v30 >= v29)
          {
            v31 = v29;
          }

          else
          {
            v31 = *v30;
          }

          sub_1003C106C(v50, DWORD1(v57), v57);
          sub_1003A9464(&v56, v50);
          v32 = v71;
          v33 = v72;
          if (v71 == v72)
          {
            v41 = 0.0;
            v42 = 0.0;
          }

          else
          {
            v49 = v31;
            v34 = 0.0;
            v35 = 0.0;
            v36 = 0.0;
            v37 = 0.0;
            do
            {
              v80 = 0x100000002;
              *buf = off_1009A9730;
              *&buf[8] = xmmword_10056F230;
              v81 = &v82;
              sub_1003A90A8(v50, v32, buf);
              v38 = sub_1002EB67C(buf, 0);
              v39 = sub_1002EB67C(buf, 1u);
              if (v38 < v34)
              {
                v40 = v38;
              }

              else
              {
                v40 = v34;
              }

              if (v38 <= v35)
              {
                v34 = v40;
              }

              else
              {
                v35 = v38;
              }

              if (v39 <= v37)
              {
                if (v39 < v36)
                {
                  v36 = v39;
                }
              }

              else
              {
                v37 = v39;
              }

              v32 += 56;
            }

            while (v32 != v33);
            v41 = v35 - v34;
            v42 = v37 - v36;
            v31 = v49;
          }

          if (v42 >= v41)
          {
            v43 = v41;
          }

          else
          {
            v43 = v42;
          }

          if (v41 < v42)
          {
            v41 = v42;
          }

          *a7 = v41;
          if (v43 >= a1)
          {
            v45 = qword_1009F9820;
            v46 = os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT);
            v44 = 0;
            if (v46)
            {
              *buf = 134218496;
              *&buf[4] = a2;
              *&buf[12] = 2048;
              *&buf[14] = v31;
              *&buf[22] = 2048;
              v80 = *&v43;
              _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "#sa_algo_batchfilter,Batch filter problem is observable now from the bin with max range %3.1f m: smallest eigenvalue is %f, smallest rectangular box dimension is %f m", buf, 0x20u);
              v44 = 0;
            }
          }

          else
          {
            v44 = 1;
          }

          *v47 = v44;
        }
      }
    }

    v74 = &v71;
    sub_1003C0A30(&v74);
  }
}

void sub_1003D5C44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void **a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, char a58)
{
  a17 = &a58;
  sub_1003C0A30(&a17);
  _Unwind_Resume(a1);
}

uint64_t sub_1003D5CC8(uint64_t a1, _OWORD *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = sub_1003DBA7C(a1, a2);
  }

  else
  {
    sub_1003DBBC8(a1, *(a1 + 8), a2);
    result = v3 + 208;
    *(a1 + 8) = v3 + 208;
  }

  *(a1 + 8) = result;
  return result;
}

void *sub_1003D5D28(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (0xCF3CF3CF3CF3CF3DLL * ((v7 - *result) >> 3) < a4)
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

    if (a4 <= 0x186186186186186)
    {
      v9 = 0xCF3CF3CF3CF3CF3DLL * (v7 >> 3);
      v10 = 2 * v9;
      if (2 * v9 <= a4)
      {
        v10 = a4;
      }

      if (v9 >= 0xC30C30C30C30C3)
      {
        v11 = 0x186186186186186;
      }

      else
      {
        v11 = v10;
      }

      sub_1003AF83C(v6, v11);
    }

    sub_100019B38();
  }

  v12 = result[1];
  v13 = v12 - v8;
  if (0xCF3CF3CF3CF3CF3DLL * ((v12 - v8) >> 3) >= a4)
  {
    v17 = a3 - __src;
    if (a3 != __src)
    {
      result = memmove(*result, __src, v17 - 4);
    }

    v16 = &v8[v17];
  }

  else
  {
    v14 = &__src[v13];
    if (v12 != v8)
    {
      result = memmove(*result, __src, v13 - 4);
      v12 = v6[1];
    }

    v15 = a3 - v14;
    if (a3 != v14)
    {
      result = memmove(v12, v14, v15 - 4);
    }

    v16 = &v12[v15];
  }

  v6[1] = v16;
  return result;
}

BOOL sub_1003D5EA0(__int128 **a1, __int128 **a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = **a1;
  v5 = (*a1)[1];
  v14 = *(*a1 + 4);
  v12 = v4;
  v13 = v5;
  sub_1003BBC24(v15, v2 + 40);
  v15[16] = *(v2 + 26);
  v10 = *(v3 + 4);
  v8 = *v3;
  v9 = v3[1];
  sub_1003BBC24(v11, v3 + 40);
  v11[16] = *(v3 + 26);
  v6 = sub_1002EB67C(v15, 0);
  return v6 < sub_1002EB67C(v11, 0);
}

BOOL sub_1003D5F50(__int128 **a1, __int128 **a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = **a1;
  v5 = (*a1)[1];
  v14 = *(*a1 + 4);
  v12 = v4;
  v13 = v5;
  sub_1003BBC24(v15, v2 + 40);
  v15[16] = *(v2 + 26);
  v10 = *(v3 + 4);
  v8 = *v3;
  v9 = v3[1];
  sub_1003BBC24(v11, v3 + 40);
  v11[16] = *(v3 + 26);
  v6 = sub_1002EB67C(v15, 1u);
  return v6 < sub_1002EB67C(v11, 1u);
}

BOOL sub_1003D6000(__int128 **a1, __int128 **a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = **a1;
  v5 = (*a1)[1];
  v14 = *(*a1 + 4);
  v12 = v4;
  v13 = v5;
  sub_1003BBC24(v15, v2 + 40);
  v15[16] = *(v2 + 26);
  v10 = *(v3 + 4);
  v8 = *v3;
  v9 = v3[1];
  sub_1003BBC24(v11, v3 + 40);
  v11[16] = *(v3 + 26);
  v6 = sub_1002EB67C(v15, 2u);
  return v6 < sub_1002EB67C(v11, 2u);
}

void sub_1003D61D0(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x24924924924924ALL)
  {
    operator new();
  }

  sub_100013B04();
}

void sub_1003D622C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v6 = 0;
    v7 = a2 + 40;
    do
    {
      v9 = *(v7 - 40);
      v10 = *(v7 - 24);
      *(a4 + 32) = *(v7 - 8);
      *a4 = v9;
      *(a4 + 16) = v10;
      sub_1003BBC24(a4 + 40, v7);
      v11 = v7 - 40;
      *(a4 + 104) = *(v7 + 64);
      a4 += 112;
      v6 -= 112;
      v7 += 112;
    }

    while (v11 + 112 != a3);
    if (v5 != a3)
    {
      v12 = v5 + 40;
      do
      {
        *(v5 + 40) = off_1009991A0;
        v5 += 112;
        v12 += 112;
      }

      while (v5 != a3);
    }
  }
}

void sub_1003D62F4(_Unwind_Exception *a1)
{
  if (v2)
  {
    v3 = -v2;
    do
    {
      *(v1 - 72 + v3) = off_1009991A0;
      v3 -= 112;
    }

    while (v3);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1003D632C(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v3 != v2)
  {
    v4 = v3 - 72;
    do
    {
      *(v3 - 72) = off_1009991A0;
      v3 -= 112;
      v4 -= 112;
    }

    while (v3 != v2);
    *(a1 + 16) = v3;
  }

  v5 = *a1;
  if (*a1)
  {
    operator delete(v5);
  }

  return a1;
}

uint64_t *sub_1003D639C(uint64_t a1, unsigned int *a2)
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
      v5 = *(v2 + 28);
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

uint64_t sub_1003D6468(uint64_t *a1, __int128 *a2)
{
  v2 = 0x6DB6DB6DB6DB6DB7 * ((a1[1] - *a1) >> 4);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x249249249249249)
  {
    sub_100019B38();
  }

  if (0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 4);
  }

  if ((0x6DB6DB6DB6DB6DB7 * ((a1[2] - *a1) >> 4)) >= 0x124924924924924)
  {
    v6 = 0x249249249249249;
  }

  else
  {
    v6 = v3;
  }

  if (v6)
  {
    sub_1003D61D0(a1, v6);
  }

  v14 = 16 * ((a1[1] - *a1) >> 4);
  v7 = *a2;
  v8 = a2[1];
  *(v14 + 32) = *(a2 + 4);
  *v14 = v7;
  *(v14 + 16) = v8;
  sub_1003BBC24(112 * v2 + 40, a2 + 40);
  *(v14 + 104) = *(a2 + 26);
  v9 = 112 * v2 + 112;
  v10 = a1[1];
  v11 = 112 * v2 + *a1 - v10;
  sub_1003D622C(a1, *a1, v10, v14 + *a1 - v10);
  v12 = *a1;
  *a1 = v11;
  a1[1] = v9;
  a1[2] = 0;
  if (v12)
  {
    operator delete(v12);
  }

  return v9;
}

void sub_1003D65A0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1003D632C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1003D65B4(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_1003D663C(result, a4);
  }

  return result;
}

void sub_1003D661C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_10038E378(&a9);
  _Unwind_Resume(a1);
}

void sub_1003D663C(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x24924924924924ALL)
  {
    sub_1003D61D0(a1, a2);
  }

  sub_100019B38();
}

uint64_t sub_1003D668C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 == a3)
  {
    return a4;
  }

  v5 = 0;
  v6 = a2 + 40;
  v7 = a4;
  do
  {
    v8 = *(v6 - 40);
    v9 = *(v6 - 24);
    *(v7 + 32) = *(v6 - 8);
    *v7 = v8;
    *(v7 + 16) = v9;
    sub_1003BBC24(v7 + 40, v6);
    v10 = v6 - 40;
    *(v7 + 104) = *(v6 + 64);
    v7 += 112;
    v5 -= 112;
    v6 += 112;
  }

  while (v10 + 112 != a3);
  return v7;
}

void sub_1003D6724(_Unwind_Exception *a1)
{
  if (v2)
  {
    v3 = -v2;
    do
    {
      *(v1 - 72 + v3) = off_1009991A0;
      v3 -= 112;
    }

    while (v3);
  }

  _Unwind_Resume(a1);
}

void sub_1003D675C(char **a1)
{
  v2 = *a1;
  if (v2)
  {
    v3 = a1[1];
    if (v3 != v2)
    {
      v4 = v3 - 72;
      do
      {
        *(v3 - 9) = off_1009991A0;
        v4 -= 112;
        v3 -= 112;
      }

      while (v3 != v2);
    }

    a1[1] = v2;
    operator delete(v2);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

uint64_t sub_1003D67D4(uint64_t *a1, __int128 *a2)
{
  v2 = 0x6DB6DB6DB6DB6DB7 * ((a1[1] - *a1) >> 4);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x249249249249249)
  {
    sub_100019B38();
  }

  if (0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 4);
  }

  if ((0x6DB6DB6DB6DB6DB7 * ((a1[2] - *a1) >> 4)) >= 0x124924924924924)
  {
    v6 = 0x249249249249249;
  }

  else
  {
    v6 = v3;
  }

  if (v6)
  {
    sub_1003D61D0(a1, v6);
  }

  v14 = 16 * ((a1[1] - *a1) >> 4);
  v7 = *a2;
  v8 = a2[1];
  *(v14 + 32) = *(a2 + 4);
  *v14 = v7;
  *(v14 + 16) = v8;
  sub_1003BBC24(112 * v2 + 40, a2 + 40);
  *(v14 + 104) = *(a2 + 26);
  v9 = 112 * v2 + 112;
  v10 = a1[1];
  v11 = 112 * v2 + *a1 - v10;
  sub_1003D622C(a1, *a1, v10, v14 + *a1 - v10);
  v12 = *a1;
  *a1 = v11;
  a1[1] = v9;
  a1[2] = 0;
  if (v12)
  {
    operator delete(v12);
  }

  return v9;
}

void sub_1003D690C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1003D632C(va);
  _Unwind_Resume(a1);
}

void sub_1003D6920(uint64_t a1, __int128 *a2, uint64_t a3, unint64_t a4)
{
  v6 = a2;
  v8 = *a1;
  if (0x6DB6DB6DB6DB6DB7 * ((*(a1 + 16) - *a1) >> 4) < a4)
  {
    sub_1003D675C(a1);
    if (a4 <= 0x249249249249249)
    {
      v9 = 0xDB6DB6DB6DB6DB6ELL * ((*(a1 + 16) - *a1) >> 4);
      if (v9 <= a4)
      {
        v9 = a4;
      }

      if ((0x6DB6DB6DB6DB6DB7 * ((*(a1 + 16) - *a1) >> 4)) >= 0x124924924924924)
      {
        v10 = 0x249249249249249;
      }

      else
      {
        v10 = v9;
      }

      sub_1003D663C(a1, v10);
    }

    sub_100019B38();
  }

  v11 = *(a1 + 8);
  if (0x6DB6DB6DB6DB6DB7 * ((v11 - v8) >> 4) >= a4)
  {
    if (a2 != a3)
    {
      do
      {
        v15 = *v6;
        v16 = v6[1];
        *(v8 + 4) = *(v6 + 4);
        *v8 = v15;
        *(v8 + 1) = v16;
        sub_1003A8CFC((v8 + 40), v6 + 40);
        *(v8 + 26) = *(v6 + 26);
        v8 += 112;
        v6 += 7;
      }

      while (v6 != a3);
      v11 = *(a1 + 8);
    }

    if (v11 != v8)
    {
      v17 = v11 - 72;
      do
      {
        *(v11 - 72) = off_1009991A0;
        v17 -= 112;
        v11 -= 112;
      }

      while (v11 != v8);
    }

    *(a1 + 8) = v8;
  }

  else
  {
    v12 = a2 + v11 - v8;
    if (v11 != v8)
    {
      do
      {
        v13 = *v6;
        v14 = v6[1];
        *(v8 + 4) = *(v6 + 4);
        *v8 = v13;
        *(v8 + 1) = v14;
        sub_1003A8CFC((v8 + 40), v6 + 40);
        *(v8 + 26) = *(v6 + 26);
        v6 += 7;
        v8 += 112;
      }

      while (v6 != v12);
      v11 = *(a1 + 8);
    }

    *(a1 + 8) = sub_1003D668C(a1, v12, a3, v11);
  }
}

_OWORD *sub_1003D6B14(uint64_t a1, _OWORD *a2, _OWORD *a3, _OWORD *a4)
{
  v5 = a2;
  if (a2 == a3)
  {
    return a2;
  }

  v6 = a3;
  do
  {
    v7 = v5[1];
    *a4 = *v5;
    a4[1] = v7;
    sub_1003A8CFC((a4 + 2), (v5 + 2));
    sub_1003A8CFC((a4 + 6), (v5 + 6));
    a4 += 13;
    v5 += 13;
  }

  while (v5 != v6);
  return v6;
}

uint64_t sub_1003D6B8C(uint64_t *a1, __int128 *a2)
{
  v2 = 0x6DB6DB6DB6DB6DB7 * ((a1[1] - *a1) >> 4);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x249249249249249)
  {
    sub_100019B38();
  }

  if (0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 4);
  }

  if ((0x6DB6DB6DB6DB6DB7 * ((a1[2] - *a1) >> 4)) >= 0x124924924924924)
  {
    v6 = 0x249249249249249;
  }

  else
  {
    v6 = v3;
  }

  if (v6)
  {
    sub_1003D61D0(a1, v6);
  }

  v14 = 16 * ((a1[1] - *a1) >> 4);
  v7 = *a2;
  v8 = a2[1];
  *(v14 + 32) = *(a2 + 4);
  *v14 = v7;
  *(v14 + 16) = v8;
  sub_1003BBC24(112 * v2 + 40, a2 + 40);
  *(v14 + 104) = *(a2 + 26);
  v9 = 112 * v2 + 112;
  v10 = a1[1];
  v11 = 112 * v2 + *a1 - v10;
  sub_1003D622C(a1, *a1, v10, v14 + *a1 - v10);
  v12 = *a1;
  *a1 = v11;
  a1[1] = v9;
  a1[2] = 0;
  if (v12)
  {
    operator delete(v12);
  }

  return v9;
}

void sub_1003D6CC4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1003D632C(va);
  _Unwind_Resume(a1);
}

void sub_1003D6CD8(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v3 = v1[1];
    if (v3 != v2)
    {
      v4 = v3 - 128;
      do
      {
        *(v3 - 8) = off_1009991A0;
        *(v3 - 16) = off_1009991A0;
        v4 -= 136;
        v3 -= 136;
      }

      while (v3 != v2);
    }

    v1[1] = v2;
    operator delete(v2);
  }
}

void sub_1003D6D50(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v3 = v1[1];
    if (v3 != v2)
    {
      v4 = v3 - 176;
      do
      {
        *(v3 - 11) = off_1009991A0;
        *(v3 - 22) = off_1009991A0;
        v4 -= 192;
        v3 -= 192;
      }

      while (v3 != v2);
    }

    v1[1] = v2;
    operator delete(v2);
  }
}

void sub_1003D6DC8(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x1E1E1E1E1E1E1E2)
  {
    operator new();
  }

  sub_100013B04();
}

void sub_1003D6E1C(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v8 = 0;
    v9 = a2;
    do
    {
      sub_1003D6EFC(a1, (a4 + v8), v9);
      v9 += 17;
      v8 += 136;
    }

    while (v9 != a3);
    if (v6 != a3)
    {
      v10 = v6 + 9;
      do
      {
        v6[9] = off_1009991A0;
        v6[1] = off_1009991A0;
        v6 += 17;
        v10 += 17;
      }

      while (v6 != a3);
    }
  }
}

void sub_1003D6EE0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_1004CB4F4();
  }

  _Unwind_Resume(exception_object);
}

double sub_1003D6EFC(uint64_t a1, void *a2, void *a3)
{
  v3 = (a3 + 9);
  *a2 = *a3;
  v4 = (a2 + 9);
  sub_1003D6F6C((a2 + 1), (a3 + 1));
  *&result = sub_1003BBC24(v4, v3).n128_u64[0];
  return result;
}

__n128 sub_1003D6F6C(uint64_t a1, uint64_t a2)
{
  result.n128_u64[0] = 0x300000001;
  *(a1 + 24) = 0x300000001;
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = off_1009A9E50;
  if (a1 == a2)
  {
    v16 = "this != &(A)";
    v17 = 603;
LABEL_21:
    v18 = "cnmatrix.h";
    v19 = "CNMatrix";
LABEL_22:
    __assert_rtn(v19, v18, v17, v16);
  }

  v3 = *(a2 + 8);
  if (v3 > 1)
  {
    v16 = "this->max_num_rows_ >= num_rows";
    v17 = 422;
LABEL_18:
    v18 = "cnmatrixbase.h";
    v19 = "SetMatrixSize";
    goto LABEL_22;
  }

  v4 = *(a2 + 12);
  if (v4 >= 4)
  {
    v16 = "this->max_num_cols_ >= num_cols";
    v17 = 423;
    goto LABEL_18;
  }

  *(a1 + 8) = v3;
  *(a1 + 12) = v4;
  v5 = v4 * v3;
  *(a1 + 16) = v5;
  *(a1 + 20) = v3;
  v6 = (a1 + 40);
  *(a1 + 32) = a1 + 40;
  if (*(a2 + 8) > 1u)
  {
    v16 = "this->max_num_rows_ >= A.num_rows_";
    v17 = 616;
    goto LABEL_21;
  }

  if (*(a2 + 12) > 3u)
  {
    v16 = "this->max_num_cols_ >= A.num_cols_";
    v17 = 617;
    goto LABEL_21;
  }

  v7 = *(a2 + 16);
  if (v7 > 3)
  {
    v10 = (v7 - 2);
    v11 = *(a2 + 32);
    v12 = (v6 + 8 * v10);
    v13 = (v7 - 1) >> 1;
    v14 = v11;
    do
    {
      v15 = *v14++;
      *v6++ = v15;
      --v13;
    }

    while (v13);
    result = *(v11 + 8 * v10);
    *v12 = result;
  }

  else if (v5)
  {
    v8 = *(a2 + 32);
    do
    {
      v9 = *v8++;
      result.n128_u64[0] = v9;
      *v6 = v9;
      v6 = (v6 + 8);
      --v5;
    }

    while (v5);
  }

  return result;
}

uint64_t sub_1003D70FC(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v3 != v2)
  {
    v4 = v3 - 128;
    do
    {
      *(v3 - 64) = off_1009991A0;
      *(v3 - 128) = off_1009991A0;
      v3 -= 136;
      v4 -= 136;
    }

    while (v3 != v2);
    *(a1 + 16) = v3;
  }

  v5 = *a1;
  if (*a1)
  {
    operator delete(v5);
  }

  return a1;
}

void sub_1003D718C(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_1003D7944(v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_1003D71E0(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  *v4 = *a2;
  sub_1003BBC24(v4 + 8, a2 + 8);
  sub_1003BBC24(v4 + 72, a2 + 72);
  sub_1003BBDB4(v4 + 136, a2 + 136);
  sub_1003BBDB4(v4 + 248, a2 + 248);
  v5 = *(a2 + 360);
  *(v4 + 368) = *(a2 + 368);
  *(v4 + 360) = v5;
  *(a1 + 8) = v4 + 376;
}

void sub_1003D7270(_Unwind_Exception *a1)
{
  *v4 = off_1009991A0;
  *v3 = off_1009991A0;
  *v2 = off_1009991A0;
  *(v1 + 8) = v5;
  _Unwind_Resume(a1);
}

uint64_t sub_1003D72D8(uint64_t a1, uint64_t a2)
{
  v2 = 0x51B3BEA3677D46CFLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if ((v2 + 1) > 0xAE4C415C9882B9)
  {
    sub_100019B38();
  }

  if (0xA3677D46CEFA8D9ELL * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0xA3677D46CEFA8D9ELL * ((*(a1 + 16) - *a1) >> 3);
  }

  if ((0x51B3BEA3677D46CFLL * ((*(a1 + 16) - *a1) >> 3)) >= 0x572620AE4C415CLL)
  {
    v6 = 0xAE4C415C9882B9;
  }

  else
  {
    v6 = v3;
  }

  v18 = a1;
  if (v6)
  {
    sub_1003D74DC(a1, v6);
  }

  v15 = 0;
  v16 = 376 * v2;
  v17 = (376 * v2);
  v7 = 376 * v2;
  *v7 = *a2;
  sub_1003BBC24(376 * v2 + 8, a2 + 8);
  sub_1003BBC24(376 * v2 + 72, a2 + 72);
  sub_1003BBDB4(376 * v2 + 136, a2 + 136);
  sub_1003BBDB4(376 * v2 + 248, a2 + 248);
  v8 = *(a2 + 360);
  *(v7 + 368) = *(a2 + 368);
  *(v7 + 360) = v8;
  *&v17 = v17 + 376;
  v9 = *(a1 + 8);
  v10 = v16 + *a1 - v9;
  sub_1003D7538(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  v12 = *(a1 + 16);
  v14 = v17;
  *(a1 + 8) = v17;
  *&v17 = v11;
  *(&v17 + 1) = v12;
  v15 = v11;
  v16 = v11;
  sub_1003D7858(&v15);
  return v14;
}

void sub_1003D745C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  *v6 = off_1009991A0;
  *v5 = off_1009991A0;
  *v4 = off_1009991A0;
  sub_1003D7858(va);
  _Unwind_Resume(a1);
}

void sub_1003D74DC(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAE4C415C9882BALL)
  {
    operator new();
  }

  sub_100013B04();
}

uint64_t sub_1003D7538(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v12 = a4;
  v13 = a4;
  v10[0] = a1;
  v10[1] = &v12;
  v10[2] = &v13;
  v11 = 0;
  if (a2 == a3)
  {
    v11 = 1;
  }

  else
  {
    v5 = a2;
    v7 = a2;
    do
    {
      sub_1003D7684(a1, a4, v7);
      v7 += 376;
      a4 = v13 + 376;
      v13 += 376;
    }

    while (v7 != a3);
    v11 = 1;
    if (v5 != a3)
    {
      v8 = v5 + 31;
      do
      {
        v5[31] = off_1009991A0;
        v5[17] = off_1009991A0;
        v5[9] = off_1009991A0;
        v5[1] = off_1009991A0;
        v5 += 47;
        v8 += 47;
      }

      while (v5 != a3);
    }
  }

  return sub_1003D7770(v10);
}

void sub_1003D7684(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a3 + 72;
  *a2 = *a3;
  v6 = a2 + 72;
  sub_1003BBC24(a2 + 8, a3 + 8);
  sub_1003BBC24(v6, v5);
  sub_1003BBDB4(a2 + 136, a3 + 136);
  sub_1003BBDB4(a2 + 248, a3 + 248);
  v7 = *(a3 + 360);
  *(a2 + 368) = *(a3 + 368);
  *(a2 + 360) = v7;
}

void sub_1003D7710(_Unwind_Exception *a1)
{
  *v3 = off_1009991A0;
  *v2 = off_1009991A0;
  *v1 = off_1009991A0;
  _Unwind_Resume(a1);
}

uint64_t sub_1003D7770(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_1003D77A8(a1);
  }

  return a1;
}

uint64_t sub_1003D77A8(uint64_t result)
{
  v1 = **(result + 16);
  v2 = **(result + 8);
  if (v1 != v2)
  {
    v3 = v1 - 46;
    v4 = v3;
    do
    {
      v4[30] = off_1009991A0;
      v4[16] = off_1009991A0;
      v4[8] = off_1009991A0;
      *v4 = off_1009991A0;
      v5 = v4 - 1;
      v4 -= 47;
      v3 -= 47;
    }

    while (v5 != v2);
  }

  return result;
}

uint64_t sub_1003D7858(uint64_t a1)
{
  sub_1003D7890(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_1003D7890(uint64_t result, void *a2)
{
  v2 = *(result + 16);
  if (v2 != a2)
  {
    v3 = v2 - 46;
    v4 = v3;
    do
    {
      v4[30] = off_1009991A0;
      v4[16] = off_1009991A0;
      v4[8] = off_1009991A0;
      *v4 = off_1009991A0;
      v5 = v4 - 47;
      v6 = v4 - 1;
      v3 -= 47;
      v4 -= 47;
    }

    while (v6 != a2);
    *(result + 16) = v5 + 46;
  }

  return result;
}

uint64_t sub_1003D7944(uint64_t result, uint64_t a2)
{
  v2 = *(result + 8);
  if (v2 != a2)
  {
    v3 = v2 - 128;
    do
    {
      *(v2 - 128) = off_1009991A0;
      *(v2 - 240) = off_1009991A0;
      *(v2 - 304) = off_1009991A0;
      *(v2 - 368) = off_1009991A0;
      v3 -= 376;
      v2 -= 376;
    }

    while (v2 != a2);
  }

  *(result + 8) = a2;
  return result;
}

uint64_t sub_1003D79F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a2;
  if (a2 == a3)
  {
    return a2;
  }

  v6 = a3;
  do
  {
    *a4 = *v5;
    sub_1003A8CFC(a4 + 8, v5 + 8);
    sub_1003A8CFC(a4 + 72, v5 + 72);
    sub_1003A8CFC(a4 + 136, v5 + 136);
    sub_1003A8CFC(a4 + 248, v5 + 248);
    v7 = *(v5 + 368);
    *(a4 + 360) = *(v5 + 360);
    *(a4 + 368) = v7;
    a4 += 376;
    v5 += 376;
  }

  while (v5 != v6);
  return v6;
}

double sub_1003D7A94(uint64_t a1, uint64_t a2, uint64_t a3, char a4, __n128 a5)
{
LABEL_1:
  v8 = a2;
  v124 = (a2 - 392);
  v125 = (a2 - 376);
  v123 = (a2 - 768);
  v9 = a1;
  while (1)
  {
    a1 = v9;
    v10 = &v8[-v9];
    v11 = 0x51B3BEA3677D46CFLL * (&v8[-v9] >> 3);
    v12 = v11 - 2;
    if (v11 <= 2)
    {
      if (v11 < 2)
      {
        return a5.n128_f64[0];
      }

      v8 = a2;
      if (v11 == 2)
      {
        a5.n128_u64[0] = *(a2 - 16);
        if (a5.n128_f64[0] >= *(a1 + 360))
        {
          return a5.n128_f64[0];
        }

LABEL_110:
        v70 = a1;
LABEL_111:
        v71 = (a2 - 376);
LABEL_112:
        sub_1003D8FB8(v70, v71);
        return a5.n128_f64[0];
      }

      goto LABEL_9;
    }

    if (v11 == 3)
    {
      break;
    }

    if (v11 == 4)
    {
      sub_1003D8AF8(a1, a1 + 376, a1 + 752, v125);
      return a5.n128_f64[0];
    }

    if (v11 == 5)
    {
      sub_1003D8AF8(a1, a1 + 376, a1 + 752, a1 + 1128);
      a5.n128_u64[0] = *(v8 - 2);
      if (a5.n128_f64[0] >= *(a1 + 1488))
      {
        return a5.n128_f64[0];
      }

      sub_1003D8FB8((a1 + 1128), v125);
      a5.n128_u64[0] = *(a1 + 1488);
      if (a5.n128_f64[0] >= *(a1 + 1112))
      {
        return a5.n128_f64[0];
      }

      sub_1003D8FB8((a1 + 752), (a1 + 1128));
      a5.n128_u64[0] = *(a1 + 1112);
      if (a5.n128_f64[0] >= *(a1 + 736))
      {
        return a5.n128_f64[0];
      }

      v67 = (a1 + 376);
      v68 = (a1 + 752);
      goto LABEL_163;
    }

LABEL_9:
    if (v10 <= 9023)
    {
      if (a4)
      {
        if (a1 != v8)
        {
          v72 = (a1 + 376);
          if (a1 + 376 != a2)
          {
            v73 = 0;
            v74 = a1;
            do
            {
              v75 = v72;
              a5.n128_u64[0] = *(v74 + 92);
              if (a5.n128_f64[0] < *(v74 + 45))
              {
                v76 = *v72;
                v135 = *v75;
                sub_1003BBC24(v136, (v74 + 384));
                sub_1003BBC24(v137, (v74 + 448));
                sub_1003BBDB4(v138, (v74 + 512));
                sub_1003BBDB4(v139, (v74 + 624));
                v140 = *(v74 + 92);
                v141 = *(v74 + 186);
                v77 = v73;
                while (1)
                {
                  v78 = a1 + v77;
                  *(a1 + v77 + 376) = *(a1 + v77);
                  sub_1003A8CFC(a1 + v77 + 384, a1 + v77 + 8);
                  sub_1003A8CFC(v78 + 448, v78 + 72);
                  sub_1003A8CFC(v78 + 512, v78 + 136);
                  sub_1003A8CFC(v78 + 624, v78 + 248);
                  *(v78 + 736) = *(v78 + 360);
                  *(v78 + 744) = *(v78 + 368);
                  if (!v77)
                  {
                    break;
                  }

                  v77 -= 376;
                  if (v140 >= *(v78 - 16))
                  {
                    v79 = (a1 + v77 + 376);
                    goto LABEL_124;
                  }
                }

                v79 = a1;
LABEL_124:
                *v79 = v135;
                sub_1003A8CFC(v78 + 8, v136);
                sub_1003A8CFC(v78 + 72, v137);
                sub_1003A8CFC(v78 + 136, v138);
                a5.n128_u64[0] = sub_1003A8CFC(v78 + 248, v139).n128_u64[0];
                v80 = v141;
                *(v78 + 360) = v140;
                *(v78 + 368) = v80;
              }

              v72 = v75 + 376;
              v73 += 376;
              v74 = v75;
            }

            while (v75 + 376 != a2);
          }
        }
      }

      else if (a1 != v8)
      {
        v115 = (a1 + 376);
        if (a1 + 376 != a2)
        {
          v116 = a1 - 16;
          do
          {
            v117 = v115;
            a5.n128_u64[0] = *(a1 + 736);
            if (a5.n128_f64[0] < *(a1 + 360))
            {
              v118 = *v115;
              v135 = *v117;
              sub_1003BBC24(v136, a1 + 384);
              sub_1003BBC24(v137, a1 + 448);
              sub_1003BBDB4(v138, a1 + 512);
              sub_1003BBDB4(v139, a1 + 624);
              v140 = *(a1 + 736);
              v141 = *(a1 + 744);
              v119 = v116;
              do
              {
                *(v119 + 392) = *(v119 + 16);
                sub_1003A8CFC(v119 + 400, v119 + 24);
                sub_1003A8CFC(v119 + 464, v119 + 88);
                sub_1003A8CFC(v119 + 528, v119 + 152);
                sub_1003A8CFC(v119 + 640, v119 + 264);
                *(v119 + 760) = *(v119 + 384);
                *(v119 + 752) = *(v119 + 376);
                v120 = *v119;
                v119 -= 376;
              }

              while (v140 < v120);
              *(v119 + 392) = v135;
              sub_1003A8CFC(v119 + 400, v136);
              sub_1003A8CFC(v119 + 464, v137);
              sub_1003A8CFC(v119 + 528, v138);
              a5.n128_u64[0] = sub_1003A8CFC(v119 + 640, v139).n128_u64[0];
              v121 = v141;
              *(v119 + 752) = v140;
              *(v119 + 760) = v121;
            }

            v115 = v117 + 376;
            v116 += 376;
            a1 = v117;
          }

          while (v117 + 376 != a2);
        }
      }

      return a5.n128_f64[0];
    }

    if (!a3)
    {
      if (a1 != v8)
      {
        v81 = v12 >> 1;
        v82 = v12 >> 1;
        do
        {
          v83 = v82;
          if (v81 >= v82)
          {
            v84 = (2 * v82) | 1;
            v85 = a1 + 376 * v84;
            if (2 * v82 + 2 < v11 && *(v85 + 360) < *(v85 + 736))
            {
              v85 += 376;
              v84 = 2 * v82 + 2;
            }

            v86 = a1 + 376 * v82;
            if (*(v85 + 360) >= *(v86 + 360))
            {
              v135 = *v86;
              sub_1003BBC24(v136, v86 + 8);
              sub_1003BBC24(v137, v86 + 72);
              sub_1003BBDB4(v138, v86 + 136);
              sub_1003BBDB4(v139, v86 + 248);
              v87 = *(v86 + 360);
              v141 = *(v86 + 368);
              v140 = v87;
              do
              {
                v88 = v85;
                *v86 = *v85;
                sub_1003A8CFC(v86 + 8, v85 + 8);
                sub_1003A8CFC(v86 + 72, v85 + 72);
                sub_1003A8CFC(v86 + 136, v85 + 136);
                sub_1003A8CFC(v86 + 248, v85 + 248);
                v89 = *(v85 + 368);
                *(v86 + 360) = *(v85 + 360);
                *(v86 + 368) = v89;
                if (v81 < v84)
                {
                  break;
                }

                v90 = 2 * v84;
                v84 = (2 * v84) | 1;
                v85 = a1 + 376 * v84;
                v91 = v90 + 2;
                if (v91 < v11 && *(v85 + 360) < *(v85 + 736))
                {
                  v85 += 376;
                  v84 = v91;
                }

                v86 = v88;
              }

              while (*(v85 + 360) >= v140);
              *v88 = v135;
              sub_1003A8CFC(v88 + 8, v136);
              sub_1003A8CFC(v88 + 72, v137);
              sub_1003A8CFC(v88 + 136, v138);
              sub_1003A8CFC(v88 + 248, v139);
              v92 = v141;
              *(v88 + 360) = v140;
              *(v88 + 368) = v92;
            }
          }

          v82 = v83 - 1;
        }

        while (v83);
        v93 = 0x51B3BEA3677D46CFLL * (v10 >> 3);
        do
        {
          v94 = a2;
          v128 = *a1;
          sub_1003BBC24(v129, a1 + 8);
          sub_1003BBC24(v130, a1 + 72);
          sub_1003BBDB4(v131, a1 + 136);
          sub_1003BBDB4(v132, a1 + 248);
          v95 = 0;
          v96 = *(a1 + 360);
          v134 = *(a1 + 368);
          v133 = v96;
          v97 = a1;
          do
          {
            v98 = v97 + 376 * v95;
            v99 = v98 + 376;
            if (2 * v95 + 2 >= v93)
            {
              v95 = (2 * v95) | 1;
            }

            else
            {
              v100 = *(v98 + 736);
              v101 = *(v98 + 1112);
              v102 = v98 + 752;
              if (v100 >= v101)
              {
                v95 = (2 * v95) | 1;
              }

              else
              {
                v99 = v102;
                v95 = 2 * v95 + 2;
              }
            }

            *v97 = *v99;
            sub_1003A8CFC(v97 + 8, v99 + 8);
            sub_1003A8CFC(v97 + 72, v99 + 72);
            sub_1003A8CFC(v97 + 136, v99 + 136);
            sub_1003A8CFC(v97 + 248, v99 + 248);
            v103 = *(v99 + 368);
            *(v97 + 360) = *(v99 + 360);
            *(v97 + 368) = v103;
            v97 = v99;
          }

          while (v95 <= ((v93 - 2) >> 1));
          v126 = (v99 + 360);
          a2 -= 376;
          if (v99 == v94 - 376)
          {
            *v99 = v128;
            sub_1003A8CFC(v99 + 8, v129);
            sub_1003A8CFC(v99 + 72, v130);
            sub_1003A8CFC(v99 + 136, v131);
            a5.n128_u64[0] = sub_1003A8CFC(v99 + 248, v132).n128_u64[0];
            v113 = v134;
            *v126 = v133;
            *(v99 + 368) = v113;
          }

          else
          {
            *v99 = *(v94 - 376);
            sub_1003A8CFC(v99 + 8, v94 - 368);
            sub_1003A8CFC(v99 + 72, v94 - 304);
            sub_1003A8CFC(v99 + 136, v94 - 240);
            sub_1003A8CFC(v99 + 248, v94 - 128);
            v104 = *(v94 - 16);
            *(v99 + 368) = *(v94 - 8);
            *v126 = v104;
            *(v94 - 376) = v128;
            sub_1003A8CFC(v94 - 368, v129);
            sub_1003A8CFC(v94 - 304, v130);
            sub_1003A8CFC(v94 - 240, v131);
            a5.n128_u64[0] = sub_1003A8CFC(v94 - 128, v132).n128_u64[0];
            v105 = v134;
            *(v94 - 16) = v133;
            *(v94 - 8) = v105;
            v106 = v99 - a1 + 376;
            if (v106 >= 377)
            {
              v107 = (0x51B3BEA3677D46CFLL * (v106 >> 3) - 2) >> 1;
              v108 = a1 + 376 * v107;
              a5.n128_u64[0] = *(v108 + 360);
              if (a5.n128_f64[0] < *v126)
              {
                v135 = *v99;
                sub_1003BBC24(v136, v99 + 8);
                sub_1003BBC24(v137, v99 + 72);
                sub_1003BBDB4(v138, v99 + 136);
                sub_1003BBDB4(v139, v99 + 248);
                v109 = *v126;
                v141 = *(v99 + 368);
                v140 = v109;
                do
                {
                  v110 = v108;
                  *v99 = *v108;
                  sub_1003A8CFC(v99 + 8, v108 + 8);
                  sub_1003A8CFC(v99 + 72, v108 + 72);
                  sub_1003A8CFC(v99 + 136, v108 + 136);
                  sub_1003A8CFC(v99 + 248, v108 + 248);
                  v111 = *(v108 + 368);
                  *(v99 + 360) = *(v108 + 360);
                  *(v99 + 368) = v111;
                  if (!v107)
                  {
                    break;
                  }

                  v107 = (v107 - 1) >> 1;
                  v108 = a1 + 376 * v107;
                  v99 = v110;
                }

                while (*(v108 + 360) < v140);
                *v110 = v135;
                sub_1003A8CFC(v110 + 8, v136);
                sub_1003A8CFC(v110 + 72, v137);
                sub_1003A8CFC(v110 + 136, v138);
                a5.n128_u64[0] = sub_1003A8CFC(v110 + 248, v139).n128_u64[0];
                v112 = v141;
                *(v110 + 360) = v140;
                *(v110 + 368) = v112;
              }
            }
          }
        }

        while (v93-- > 2);
      }

      return a5.n128_f64[0];
    }

    v13 = v11 >> 1;
    v14 = a1 + 376 * (v11 >> 1);
    v15 = *(v8 - 2);
    if (v10 >= 0xBC01)
    {
      v16 = *(v14 + 360);
      if (v16 >= *(a1 + 360))
      {
        if (v15 < v16)
        {
          sub_1003D8FB8(v14, v125);
          if (*(v14 + 360) < *(a1 + 360))
          {
            v17 = a1;
            v18 = v14;
            goto LABEL_25;
          }
        }
      }

      else
      {
        v17 = a1;
        if (v15 < v16)
        {
          goto LABEL_16;
        }

        sub_1003D8FB8(a1, v14);
        if (*(v8 - 2) < *(v14 + 360))
        {
          v17 = v14;
LABEL_16:
          v18 = (a2 - 376);
LABEL_25:
          sub_1003D8FB8(v17, v18);
        }
      }

      v22 = a1 + 376 * v13;
      v23 = v22 - 376;
      v24 = *(v22 - 16);
      v25 = *v124;
      if (v24 >= *(a1 + 736))
      {
        if (v25 < v24)
        {
          sub_1003D8FB8(v23, (a2 - 752));
          if (*(v23 + 360) < *(a1 + 736))
          {
            v26 = (a1 + 376);
            v27 = v23;
            goto LABEL_37;
          }
        }
      }

      else
      {
        v26 = (a1 + 376);
        if (v25 < v24)
        {
          goto LABEL_30;
        }

        sub_1003D8FB8(v26, v23);
        if (*v124 < *(v23 + 360))
        {
          v26 = v23;
LABEL_30:
          v27 = (a2 - 752);
LABEL_37:
          sub_1003D8FB8(v26, v27);
        }
      }

      v28 = a1 + 376 * v13;
      v29 = v28 + 376;
      v30 = *(v28 + 736);
      v31 = *v123;
      if (v30 >= *(a1 + 1112))
      {
        if (v31 < v30)
        {
          sub_1003D8FB8(v29, (a2 - 1128));
          if (*(v29 + 360) < *(a1 + 1112))
          {
            v32 = (a1 + 752);
            v33 = v29;
            goto LABEL_46;
          }
        }
      }

      else
      {
        v32 = (a1 + 752);
        if (v31 < v30)
        {
          goto LABEL_42;
        }

        sub_1003D8FB8(v32, v29);
        if (*v123 < *(v29 + 360))
        {
          v32 = v29;
LABEL_42:
          v33 = (a2 - 1128);
LABEL_46:
          sub_1003D8FB8(v32, v33);
        }
      }

      v34 = *(v14 + 360);
      v35 = *(v29 + 360);
      if (v34 >= *(v23 + 360))
      {
        if (v35 < v34)
        {
          sub_1003D8FB8(v14, v29);
          if (*(v14 + 360) < *(v23 + 360))
          {
            v36 = v23;
            v37 = v14;
            goto LABEL_55;
          }
        }
      }

      else
      {
        v36 = v23;
        if (v35 < v34)
        {
          goto LABEL_51;
        }

        sub_1003D8FB8(v23, v14);
        if (*(v29 + 360) < *(v14 + 360))
        {
          v36 = v14;
LABEL_51:
          v37 = v29;
LABEL_55:
          sub_1003D8FB8(v36, v37);
        }
      }

      v20 = a1;
      v21 = v14;
      goto LABEL_57;
    }

    v19 = *(a1 + 360);
    if (v19 >= *(v14 + 360))
    {
      if (v15 >= v19)
      {
        goto LABEL_58;
      }

      sub_1003D8FB8(a1, v125);
      if (*(a1 + 360) >= *(v14 + 360))
      {
        goto LABEL_58;
      }

      v20 = v14;
      v21 = a1;
    }

    else
    {
      v20 = v14;
      if (v15 >= v19)
      {
        sub_1003D8FB8(v14, a1);
        if (*(v8 - 2) >= *(a1 + 360))
        {
          goto LABEL_58;
        }

        v20 = a1;
      }

      v21 = (a2 - 376);
    }

LABEL_57:
    sub_1003D8FB8(v20, v21);
LABEL_58:
    --a3;
    if ((a4 & 1) != 0 || *(a1 - 16) < *(a1 + 360))
    {
      v135 = *a1;
      sub_1003BBC24(v136, a1 + 8);
      sub_1003BBC24(v137, a1 + 72);
      sub_1003BBDB4(v138, a1 + 136);
      sub_1003BBDB4(v139, a1 + 248);
      v38 = 0;
      v39 = *(a1 + 360);
      v141 = *(a1 + 368);
      v140 = v39;
      do
      {
        v40 = *(a1 + v38 + 736);
        v38 += 376;
      }

      while (v40 < v140);
      v41 = a1 + v38;
      v42 = v8;
      if (v38 == 376)
      {
        v45 = a2;
        while (v41 < v45)
        {
          v43 = (v45 - 376);
          v46 = *(v45 - 16);
          v45 -= 376;
          if (v46 < v140)
          {
            goto LABEL_70;
          }
        }

        v43 = v45;
      }

      else
      {
        do
        {
          v43 = v42 - 376;
          v44 = *(v42 - 2);
          v42 -= 376;
        }

        while (v44 >= v140);
      }

LABEL_70:
      v9 = v41;
      if (v41 < v43)
      {
        v47 = v43;
        do
        {
          sub_1003D8FB8(v9, v47);
          do
          {
            v48 = *(v9 + 736);
            v9 += 376;
          }

          while (v48 < v140);
          do
          {
            v49 = *(v47 - 2);
            v47 -= 376;
          }

          while (v49 >= v140);
        }

        while (v9 < v47);
      }

      v50 = (v9 - 376);
      if (v9 - 376 != a1)
      {
        *a1 = *v50;
        sub_1003A8CFC(a1 + 8, v9 - 368);
        sub_1003A8CFC(a1 + 72, v9 - 304);
        sub_1003A8CFC(a1 + 136, v9 - 240);
        sub_1003A8CFC(a1 + 248, v9 - 128);
        v51 = *(v9 - 8);
        *(a1 + 360) = *(v9 - 16);
        *(a1 + 368) = v51;
      }

      *v50 = v135;
      sub_1003A8CFC(v9 - 368, v136);
      sub_1003A8CFC(v9 - 304, v137);
      sub_1003A8CFC(v9 - 240, v138);
      a5 = sub_1003A8CFC(v9 - 128, v139);
      v52 = v141;
      *(v9 - 16) = v140;
      *(v9 - 8) = v52;
      v53 = v41 >= v43;
      v8 = a2;
      if (!v53)
      {
        goto LABEL_82;
      }

      v54 = sub_1003D8C10(a1, v9 - 376);
      if (sub_1003D8C10(v9, a2))
      {
        a2 = v9 - 376;
        if (!v54)
        {
          goto LABEL_1;
        }

        return a5.n128_f64[0];
      }

      if (!v54)
      {
LABEL_82:
        sub_1003D7A94(a1, v9 - 376, a3, a4 & 1, a5);
        a4 = 0;
      }
    }

    else
    {
      v135 = *a1;
      sub_1003BBC24(v136, a1 + 8);
      sub_1003BBC24(v137, a1 + 72);
      sub_1003BBDB4(v138, a1 + 136);
      sub_1003BBDB4(v139, a1 + 248);
      v55 = *(a1 + 360);
      v141 = *(a1 + 368);
      v140 = v55;
      if (v55 >= *(v8 - 2))
      {
        v58 = a1 + 376;
        do
        {
          v9 = v58;
          if (v58 >= v8)
          {
            break;
          }

          v59 = *(v58 + 360);
          v58 += 376;
        }

        while (v140 >= v59);
      }

      else
      {
        v56 = a1;
        do
        {
          v9 = v56 + 376;
          v57 = *(v56 + 736);
          v56 += 376;
        }

        while (v140 >= v57);
      }

      v60 = v8;
      if (v9 < v8)
      {
        do
        {
          v60 = v8 - 376;
          v61 = *(v8 - 2);
          v8 -= 376;
        }

        while (v140 < v61);
      }

      while (v9 < v60)
      {
        sub_1003D8FB8(v9, v60);
        do
        {
          v62 = *(v9 + 736);
          v9 += 376;
        }

        while (v140 >= v62);
        do
        {
          v63 = *(v60 - 2);
          v60 -= 376;
        }

        while (v140 < v63);
      }

      v64 = (v9 - 376);
      if (v9 - 376 != a1)
      {
        *a1 = *v64;
        sub_1003A8CFC(a1 + 8, v9 - 368);
        sub_1003A8CFC(a1 + 72, v9 - 304);
        sub_1003A8CFC(a1 + 136, v9 - 240);
        sub_1003A8CFC(a1 + 248, v9 - 128);
        v65 = *(v9 - 8);
        *(a1 + 360) = *(v9 - 16);
        *(a1 + 368) = v65;
      }

      *v64 = v135;
      sub_1003A8CFC(v9 - 368, v136);
      sub_1003A8CFC(v9 - 304, v137);
      sub_1003A8CFC(v9 - 240, v138);
      a5.n128_u64[0] = sub_1003A8CFC(v9 - 128, v139).n128_u64[0];
      a4 = 0;
      v66 = v141;
      *(v9 - 16) = v140;
      *(v9 - 8) = v66;
      v8 = a2;
    }
  }

  a5.n128_u64[0] = *(a1 + 736);
  v69 = *(v8 - 2);
  if (a5.n128_f64[0] < *(a1 + 360))
  {
    if (v69 < a5.n128_f64[0])
    {
      goto LABEL_110;
    }

    sub_1003D8FB8(a1, (a1 + 376));
    a5.n128_u64[0] = *(v8 - 2);
    if (a5.n128_f64[0] < *(a1 + 736))
    {
      v70 = (a1 + 376);
      goto LABEL_111;
    }

    return a5.n128_f64[0];
  }

  if (v69 >= a5.n128_f64[0])
  {
    return a5.n128_f64[0];
  }

  v67 = (a1 + 376);
  v68 = (a2 - 376);
LABEL_163:
  sub_1003D8FB8(v67, v68);
  a5.n128_u64[0] = *(a1 + 736);
  if (a5.n128_f64[0] < *(a1 + 360))
  {
    v71 = (a1 + 376);
    v70 = a1;
    goto LABEL_112;
  }

  return a5.n128_f64[0];
}

void sub_1003D8AF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = a1;
  v8 = *(a2 + 360);
  v9 = *(a3 + 360);
  if (v8 >= *(a1 + 360))
  {
    if (v9 < v8)
    {
      sub_1003D8FB8(a2, a3);
      if (*(a2 + 360) < *(v7 + 360))
      {
        a1 = v7;
        v10 = a2;
        goto LABEL_9;
      }
    }
  }

  else
  {
    if (v9 < v8)
    {
LABEL_5:
      v10 = a3;
LABEL_9:
      sub_1003D8FB8(a1, v10);
      goto LABEL_10;
    }

    sub_1003D8FB8(a1, a2);
    if (*(a3 + 360) < *(a2 + 360))
    {
      a1 = a2;
      goto LABEL_5;
    }
  }

LABEL_10:
  if (*(a4 + 360) < *(a3 + 360))
  {
    sub_1003D8FB8(a3, a4);
    if (*(a3 + 360) < *(a2 + 360))
    {
      sub_1003D8FB8(a2, a3);
      if (*(a2 + 360) < *(v7 + 360))
      {

        sub_1003D8FB8(v7, a2);
      }
    }
  }
}

BOOL sub_1003D8C10(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = 0x51B3BEA3677D46CFLL * ((a2 - a1) >> 3);
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        v8 = *(a1 + 736);
        v9 = *(a2 - 16);
        if (v8 < *(a1 + 360))
        {
          if (v9 >= v8)
          {
            sub_1003D8FB8(a1, (a1 + 376));
            if (*(a2 - 16) >= *(v3 + 736))
            {
              return 1;
            }

            a1 = v3 + 376;
          }

          v5 = (a2 - 376);
          goto LABEL_31;
        }

        if (v9 >= v8)
        {
          return 1;
        }

        v6 = (a1 + 376);
        v7 = (a2 - 376);
        break;
      case 4:
        sub_1003D8AF8(a1, a1 + 376, a1 + 752, a2 - 376);
        return 1;
      case 5:
        sub_1003D8AF8(a1, a1 + 376, a1 + 752, a1 + 1128);
        if (*(a2 - 16) >= *(v3 + 1488))
        {
          return 1;
        }

        sub_1003D8FB8((v3 + 1128), (a2 - 376));
        if (*(v3 + 1488) >= *(v3 + 1112))
        {
          return 1;
        }

        sub_1003D8FB8((v3 + 752), (v3 + 1128));
        if (*(v3 + 1112) >= *(v3 + 736))
        {
          return 1;
        }

        v6 = (v3 + 376);
        v7 = (v3 + 752);
        break;
      default:
        goto LABEL_16;
    }

    sub_1003D8FB8(v6, v7);
    if (*(v3 + 736) < *(v3 + 360))
    {
      v5 = (v3 + 376);
      goto LABEL_24;
    }

    return 1;
  }

  if (v4 < 2)
  {
    return 1;
  }

  if (v4 == 2)
  {
    if (*(a2 - 16) < *(a1 + 360))
    {
      v5 = (a2 - 376);
LABEL_24:
      a1 = v3;
LABEL_31:
      sub_1003D8FB8(a1, v5);
      return 1;
    }

    return 1;
  }

LABEL_16:
  v10 = a1 + 752;
  v11 = *(a1 + 736);
  v12 = *(a1 + 1112);
  if (v11 < *(a1 + 360))
  {
    if (v12 >= v11)
    {
      sub_1003D8FB8(a1, (a1 + 376));
      if (*(v3 + 1112) >= *(v3 + 736))
      {
        goto LABEL_36;
      }

      a1 = v3 + 376;
    }

    v13 = (v3 + 752);
    goto LABEL_35;
  }

  if (v12 < v11)
  {
    sub_1003D8FB8((a1 + 376), (a1 + 752));
    if (*(v3 + 736) < *(v3 + 360))
    {
      v13 = (v3 + 376);
      a1 = v3;
LABEL_35:
      sub_1003D8FB8(a1, v13);
    }
  }

LABEL_36:
  v14 = v3 + 1128;
  if (v3 + 1128 == a2)
  {
    return 1;
  }

  v15 = 0;
  v16 = 0;
  while (1)
  {
    if (*(v14 + 360) < *(v10 + 360))
    {
      v21 = *v14;
      sub_1003BBC24(v22, v14 + 8);
      sub_1003BBC24(v23, v14 + 72);
      sub_1003BBDB4(v24, v14 + 136);
      sub_1003BBDB4(v25, v14 + 248);
      v26 = *(v14 + 360);
      v27 = *(v14 + 368);
      v17 = v15;
      while (1)
      {
        v18 = v3 + v17;
        *(v3 + v17 + 1128) = *(v3 + v17 + 752);
        sub_1003A8CFC(v3 + v17 + 1136, v3 + v17 + 760);
        sub_1003A8CFC(v18 + 1200, v18 + 824);
        sub_1003A8CFC(v18 + 1264, v18 + 888);
        sub_1003A8CFC(v18 + 1376, v18 + 1000);
        *(v18 + 1488) = *(v18 + 1112);
        *(v18 + 1496) = *(v18 + 1120);
        if (v17 == -752)
        {
          break;
        }

        v17 -= 376;
        if (v26 >= *(v18 + 736))
        {
          v19 = (v3 + v17 + 1128);
          goto LABEL_44;
        }
      }

      v19 = v3;
LABEL_44:
      *v19 = v21;
      sub_1003A8CFC(v18 + 760, v22);
      sub_1003A8CFC(v18 + 824, v23);
      sub_1003A8CFC(v18 + 888, v24);
      sub_1003A8CFC(v18 + 1000, v25);
      *(v18 + 1112) = v26;
      *(v18 + 1120) = v27;
      if (++v16 == 8)
      {
        return v14 + 376 == a2;
      }
    }

    v10 = v14;
    v15 += 376;
    v14 += 376;
    if (v14 == a2)
    {
      return 1;
    }
  }
}

void sub_1003D8FB8(char *a1, char *a2)
{
  v5 = *a1;
  sub_1003BBC24(v6, (a1 + 8));
  sub_1003BBC24(v7, (a1 + 72));
  sub_1003BBDB4(v8, (a1 + 136));
  sub_1003BBDB4(v9, (a1 + 248));
  v10 = *(a1 + 45);
  v11 = *(a1 + 92);
  *a1 = *a2;
  sub_1003A8CFC((a1 + 8), (a2 + 8));
  sub_1003A8CFC((a1 + 72), (a2 + 72));
  sub_1003A8CFC((a1 + 136), (a2 + 136));
  sub_1003A8CFC((a1 + 248), (a2 + 248));
  v4 = *(a2 + 45);
  *(a1 + 92) = *(a2 + 92);
  *(a1 + 45) = v4;
  *a2 = v5;
  sub_1003A8CFC((a2 + 8), v6);
  sub_1003A8CFC((a2 + 72), v7);
  sub_1003A8CFC((a2 + 136), v8);
  sub_1003A8CFC((a2 + 248), v9);
  *(a2 + 45) = v10;
  *(a2 + 92) = v11;
}

uint64_t sub_1003D90C8(uint64_t a1, uint64_t a2)
{
  v2 = 0x51B3BEA3677D46CFLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if ((v2 + 1) > 0xAE4C415C9882B9)
  {
    sub_100019B38();
  }

  if (0xA3677D46CEFA8D9ELL * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0xA3677D46CEFA8D9ELL * ((*(a1 + 16) - *a1) >> 3);
  }

  if ((0x51B3BEA3677D46CFLL * ((*(a1 + 16) - *a1) >> 3)) >= 0x572620AE4C415CLL)
  {
    v6 = 0xAE4C415C9882B9;
  }

  else
  {
    v6 = v3;
  }

  v16 = a1;
  if (v6)
  {
    sub_1003D74DC(a1, v6);
  }

  v13 = 0;
  v14 = 376 * v2;
  sub_1003D7684(a1, 376 * v2, a2);
  v15 = (376 * v2 + 376);
  v7 = *(a1 + 8);
  v8 = 376 * v2 + *a1 - v7;
  sub_1003D7538(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = *(a1 + 16);
  v12 = v15;
  *(a1 + 8) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  sub_1003D7858(&v13);
  return v12;
}

void sub_1003D9200(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1003D7858(va);
  _Unwind_Resume(a1);
}

double sub_1003D9214(uint64_t a1, unint64_t a2, uint64_t a3, char a4)
{
  while (2)
  {
    v7 = a2;
    v125 = (a2 - 376);
    k = a1;
    while (1)
    {
      while (1)
      {
        while (1)
        {
          a1 = k;
          v9 = v7 - k;
          v10 = 0x51B3BEA3677D46CFLL * ((v7 - k) >> 3);
          v11 = v10 - 2;
          if (v10 > 2)
          {
            switch(v10)
            {
              case 3:
                return sub_1003DA304(a1, a1 + 376, v125);
              case 4:
                result = sub_1003DA304(a1, a1 + 376, a1 + 752);
                v49 = *(v7 - 8);
                v50 = *(a1 + 1120);
                if (v49 >= v50)
                {
                  if (v49 > v50)
                  {
                    return result;
                  }

                  result = *(a2 - 16);
                  if (result >= *(a1 + 1112))
                  {
                    return result;
                  }
                }

                sub_1003D8FB8((a1 + 752), v125);
                v51 = *(a1 + 1120);
                v52 = *(a1 + 744);
                if (v51 >= v52)
                {
                  if (v51 > v52)
                  {
                    return result;
                  }

                  result = *(a1 + 1112);
                  if (result >= *(a1 + 736))
                  {
                    return result;
                  }
                }

                sub_1003D8FB8((a1 + 376), (a1 + 752));
                v53 = *(a1 + 744);
                v54 = *(a1 + 368);
                if (v53 >= v54)
                {
                  if (v53 > v54)
                  {
                    return result;
                  }

                  result = *(a1 + 736);
                  if (result >= *(a1 + 360))
                  {
                    return result;
                  }
                }

                v55 = (a1 + 376);
                v56 = a1;
LABEL_107:
                sub_1003D8FB8(v56, v55);
                return result;
              case 5:
                return sub_1003DA43C(a1, a1 + 376, a1 + 752, a1 + 1128, v125);
            }
          }

          else
          {
            if (v10 < 2)
            {
              return result;
            }

            v7 = a2;
            if (v10 == 2)
            {
              v57 = *(a2 - 8);
              v58 = *(a1 + 368);
              if (v57 >= v58)
              {
                if (v57 > v58)
                {
                  return result;
                }

                result = *(a2 - 16);
                if (result >= *(a1 + 360))
                {
                  return result;
                }
              }

              v56 = a1;
              v55 = (a2 - 376);
              goto LABEL_107;
            }
          }

          if (v9 <= 9023)
          {
            if (a4)
            {
              if (a1 != v7)
              {
                v59 = (a1 + 376);
                if (a1 + 376 != a2)
                {
                  v60 = 0;
                  v61 = a1;
                  do
                  {
                    v62 = v61;
                    v61 = v59;
                    v63 = *(v62 + 186);
                    v64 = *(v62 + 92);
                    if (v63 < v64 || v63 <= v64 && (result = *(v62 + 92), result < *(v62 + 45)))
                    {
                      v134 = *v61;
                      sub_1003BBC24(v135, (v62 + 384));
                      sub_1003BBC24(v136, (v62 + 448));
                      sub_1003BBDB4(v137, (v62 + 512));
                      sub_1003BBDB4(v138, (v62 + 624));
                      v139 = *(v62 + 92);
                      v140 = *(v62 + 186);
                      for (i = v60; ; i -= 376)
                      {
                        v66 = a1 + i;
                        *(a1 + i + 376) = *(a1 + i);
                        sub_1003A8CFC(a1 + i + 384, a1 + i + 8);
                        sub_1003A8CFC(v66 + 448, v66 + 72);
                        sub_1003A8CFC(v66 + 512, v66 + 136);
                        sub_1003A8CFC(v66 + 624, v66 + 248);
                        *(v66 + 736) = *(v66 + 360);
                        *(v66 + 744) = *(v66 + 368);
                        if (!i)
                        {
                          v68 = a1;
                          goto LABEL_125;
                        }

                        v67 = *(v66 - 8);
                        if (v140 >= v67 && (v140 > v67 || v139 >= *(a1 + i - 16)))
                        {
                          break;
                        }
                      }

                      v68 = (a1 + i);
LABEL_125:
                      *v68 = v134;
                      sub_1003A8CFC(v66 + 8, v135);
                      sub_1003A8CFC(v66 + 72, v136);
                      sub_1003A8CFC(v66 + 136, v137);
                      *&result = sub_1003A8CFC(v66 + 248, v138).n128_u64[0];
                      v69 = v140;
                      *(v66 + 360) = v139;
                      *(v66 + 368) = v69;
                    }

                    v59 = v61 + 376;
                    v60 += 376;
                  }

                  while (v61 + 376 != a2);
                }
              }
            }

            else if (a1 != v7)
            {
              v116 = a1 + 376;
              if (a1 + 376 != a2)
              {
                v117 = a1 + 736;
                do
                {
                  v118 = a1;
                  a1 = v116;
                  v119 = *(v118 + 744);
                  v120 = *(v118 + 368);
                  if (v119 < v120 || v119 <= v120 && (result = *(v118 + 736), result < *(v118 + 360)))
                  {
                    v134 = *a1;
                    sub_1003BBC24(v135, v118 + 384);
                    sub_1003BBC24(v136, v118 + 448);
                    sub_1003BBDB4(v137, v118 + 512);
                    sub_1003BBDB4(v138, v118 + 624);
                    v139 = *(v118 + 736);
                    v140 = *(v118 + 744);
                    for (j = v117; ; j -= 376)
                    {
                      *(j - 360) = *(j - 736);
                      sub_1003A8CFC(j - 352, j - 728);
                      sub_1003A8CFC(j - 288, j - 664);
                      sub_1003A8CFC(j - 224, j - 600);
                      sub_1003A8CFC(j - 112, j - 488);
                      *(j + 8) = *(j - 368);
                      *j = *(j - 376);
                      v122 = *(j - 744);
                      if (v140 >= v122 && (v140 > v122 || v139 >= *(j - 752)))
                      {
                        break;
                      }
                    }

                    *(j - 736) = v134;
                    sub_1003A8CFC(j - 728, v135);
                    sub_1003A8CFC(j - 664, v136);
                    sub_1003A8CFC(j - 600, v137);
                    *&result = sub_1003A8CFC(j - 488, v138).n128_u64[0];
                    v123 = v140;
                    *(j - 376) = v139;
                    *(j - 368) = v123;
                  }

                  v116 = a1 + 376;
                  v117 += 376;
                }

                while (a1 + 376 != a2);
              }
            }

            return result;
          }

          if (!a3)
          {
            if (a1 != v7)
            {
              v70 = v11 >> 1;
              v71 = v11 >> 1;
              do
              {
                v72 = v71;
                if (v70 >= v71)
                {
                  v73 = (2 * v71) | 1;
                  v74 = a1 + 376 * v73;
                  if (2 * v71 + 2 < v10)
                  {
                    v75 = *(v74 + 368);
                    v76 = *(v74 + 744);
                    if (v75 < v76 || v75 <= v76 && *(v74 + 360) < *(v74 + 736))
                    {
                      v74 += 376;
                      v73 = 2 * v71 + 2;
                    }
                  }

                  v77 = a1 + 376 * v71;
                  v78 = *(v74 + 368);
                  v79 = *(v77 + 368);
                  if (v78 >= v79 && (v78 > v79 || *(v74 + 360) >= *(v77 + 360)))
                  {
                    v134 = *v77;
                    sub_1003BBC24(v135, v77 + 8);
                    sub_1003BBC24(v136, v77 + 72);
                    sub_1003BBDB4(v137, v77 + 136);
                    sub_1003BBDB4(v138, v77 + 248);
                    v80 = *(v77 + 360);
                    v140 = *(v77 + 368);
                    v139 = v80;
                    while (1)
                    {
                      v81 = v74;
                      *v77 = *v74;
                      sub_1003A8CFC(v77 + 8, v74 + 8);
                      sub_1003A8CFC(v77 + 72, v74 + 72);
                      sub_1003A8CFC(v77 + 136, v74 + 136);
                      sub_1003A8CFC(v77 + 248, v74 + 248);
                      v82 = *(v74 + 368);
                      *(v77 + 360) = *(v74 + 360);
                      *(v77 + 368) = v82;
                      if (v70 < v73)
                      {
                        break;
                      }

                      v83 = 2 * v73;
                      v73 = (2 * v73) | 1;
                      v74 = a1 + 376 * v73;
                      v84 = v83 + 2;
                      if (v84 < v10)
                      {
                        v85 = *(v74 + 368);
                        v86 = *(v74 + 744);
                        if (v85 < v86 || v85 <= v86 && *(v74 + 360) < *(v74 + 736))
                        {
                          v74 += 376;
                          v73 = v84;
                        }
                      }

                      v87 = *(v74 + 368);
                      if (v87 < v140)
                      {
                        break;
                      }

                      v77 = v81;
                      if (v87 <= v140)
                      {
                        v77 = v81;
                        if (*(v74 + 360) < v139)
                        {
                          break;
                        }
                      }
                    }

                    *v81 = v134;
                    sub_1003A8CFC(v81 + 8, v135);
                    sub_1003A8CFC(v81 + 72, v136);
                    sub_1003A8CFC(v81 + 136, v137);
                    sub_1003A8CFC(v81 + 248, v138);
                    v88 = v140;
                    *(v81 + 360) = v139;
                    *(v81 + 368) = v88;
                  }
                }

                v71 = v72 - 1;
              }

              while (v72);
              v89 = 0x51B3BEA3677D46CFLL * (v9 >> 3);
              do
              {
                v90 = a2;
                v127 = *a1;
                sub_1003BBC24(v128, a1 + 8);
                sub_1003BBC24(v129, a1 + 72);
                sub_1003BBDB4(v130, a1 + 136);
                sub_1003BBDB4(v131, a1 + 248);
                v91 = 0;
                v92 = *(a1 + 360);
                v133 = *(a1 + 368);
                v132 = v92;
                v93 = a1;
                do
                {
                  v94 = v93;
                  v95 = v93 + 376 * v91;
                  v93 = v95 + 376;
                  v96 = 2 * v91;
                  v91 = (2 * v91) | 1;
                  v97 = v96 + 2;
                  if (v97 < v89)
                  {
                    v98 = *(v95 + 744);
                    v99 = *(v95 + 1120);
                    if (v98 < v99 || v98 <= v99 && *(v95 + 736) < *(v95 + 1112))
                    {
                      v93 = v95 + 752;
                      v91 = v97;
                    }
                  }

                  *v94 = *v93;
                  sub_1003A8CFC(v94 + 8, v93 + 8);
                  sub_1003A8CFC(v94 + 72, v93 + 72);
                  sub_1003A8CFC(v94 + 136, v93 + 136);
                  sub_1003A8CFC(v94 + 248, v93 + 248);
                  v100 = *(v93 + 368);
                  *(v94 + 360) = *(v93 + 360);
                  *(v94 + 368) = v100;
                }

                while (v91 <= ((v89 - 2) >> 1));
                v101 = (v93 + 360);
                a2 -= 376;
                if (v93 == v90 - 376)
                {
                  *v93 = v127;
                  sub_1003A8CFC(v93 + 8, v128);
                  sub_1003A8CFC(v93 + 72, v129);
                  sub_1003A8CFC(v93 + 136, v130);
                  *&result = sub_1003A8CFC(v93 + 248, v131).n128_u64[0];
                  v114 = v133;
                  *v101 = v132;
                  *(v93 + 368) = v114;
                }

                else
                {
                  *v93 = *(v90 - 376);
                  sub_1003A8CFC(v93 + 8, v90 - 368);
                  sub_1003A8CFC(v93 + 72, v90 - 304);
                  sub_1003A8CFC(v93 + 136, v90 - 240);
                  sub_1003A8CFC(v93 + 248, v90 - 128);
                  v102 = *(v90 - 16);
                  *(v93 + 368) = *(v90 - 8);
                  v124 = (v93 + 360);
                  *v101 = v102;
                  *(v90 - 376) = v127;
                  sub_1003A8CFC(v90 - 368, v128);
                  sub_1003A8CFC(v90 - 304, v129);
                  sub_1003A8CFC(v90 - 240, v130);
                  *&result = sub_1003A8CFC(v90 - 128, v131).n128_u64[0];
                  v103 = v133;
                  *(v90 - 16) = v132;
                  *(v90 - 8) = v103;
                  v104 = v93 - a1 + 376;
                  if (v104 >= 377)
                  {
                    v105 = (0x51B3BEA3677D46CFLL * (v104 >> 3) - 2) >> 1;
                    v106 = a1 + 376 * v105;
                    v107 = *(v106 + 368);
                    v108 = *(v93 + 368);
                    if (v107 < v108 || v107 <= v108 && (result = *(v106 + 360), result < *v124))
                    {
                      v134 = *v93;
                      sub_1003BBC24(v135, v93 + 8);
                      sub_1003BBC24(v136, v93 + 72);
                      sub_1003BBDB4(v137, v93 + 136);
                      sub_1003BBDB4(v138, v93 + 248);
                      v109 = *v124;
                      v140 = *(v93 + 368);
                      v139 = v109;
                      while (1)
                      {
                        v110 = v106;
                        *v93 = *v106;
                        sub_1003A8CFC(v93 + 8, v106 + 8);
                        sub_1003A8CFC(v93 + 72, v106 + 72);
                        sub_1003A8CFC(v93 + 136, v106 + 136);
                        sub_1003A8CFC(v93 + 248, v106 + 248);
                        v111 = *(v106 + 368);
                        *(v93 + 360) = *(v106 + 360);
                        *(v93 + 368) = v111;
                        if (!v105)
                        {
                          break;
                        }

                        v105 = (v105 - 1) >> 1;
                        v106 = a1 + 376 * v105;
                        v112 = *(v106 + 368);
                        v93 = v110;
                        if (v112 >= v140)
                        {
                          if (v112 > v140)
                          {
                            break;
                          }

                          v93 = v110;
                          if (*(v106 + 360) >= v139)
                          {
                            break;
                          }
                        }
                      }

                      *v110 = v134;
                      sub_1003A8CFC(v110 + 8, v135);
                      sub_1003A8CFC(v110 + 72, v136);
                      sub_1003A8CFC(v110 + 136, v137);
                      *&result = sub_1003A8CFC(v110 + 248, v138).n128_u64[0];
                      v113 = v140;
                      *(v110 + 360) = v139;
                      *(v110 + 368) = v113;
                    }
                  }
                }
              }

              while (v89-- > 2);
            }

            return result;
          }

          v12 = v10 >> 1;
          v13 = (a1 + 376 * (v10 >> 1));
          if (v9 < 0xBC01)
          {
            sub_1003DA304(v13, a1, v125);
          }

          else
          {
            sub_1003DA304(a1, v13, v125);
            v14 = 376 * v12;
            sub_1003DA304(a1 + 376, v14 + a1 - 376, a2 - 752);
            sub_1003DA304(a1 + 752, a1 + 376 + v14, a2 - 1128);
            sub_1003DA304(v14 + a1 - 376, v13, a1 + 376 + v14);
            sub_1003D8FB8(a1, v13);
          }

          --a3;
          if (a4)
          {
            break;
          }

          v15 = *(a1 - 8);
          v16 = *(a1 + 368);
          if (v15 < v16 || v15 <= v16 && *(a1 - 16) < *(a1 + 360))
          {
            break;
          }

          v134 = *a1;
          sub_1003BBC24(v135, a1 + 8);
          sub_1003BBC24(v136, a1 + 72);
          sub_1003BBDB4(v137, a1 + 136);
          sub_1003BBDB4(v138, a1 + 248);
          v36 = *(a1 + 360);
          v140 = *(a1 + 368);
          v139 = v36;
          v37 = *(v7 - 8);
          if (v140 < v37 || v140 <= v37 && v139 < *(v7 - 16))
          {
            v38 = *(a1 + 744);
            if (v140 >= v38)
            {
              v40 = a1 + 736;
              do
              {
                if (v140 <= v38 && v139 < *v40)
                {
                  break;
                }

                v38 = *(v40 + 384);
                v40 += 376;
              }

              while (v140 >= v38);
              k = v40 - 360;
            }

            else
            {
              k = a1 + 376;
            }
          }

          else
          {
            for (k = a1 + 376; k < v7; k += 376)
            {
              v39 = *(k + 368);
              if (v140 < v39 || v140 <= v39 && v139 < *(k + 360))
              {
                break;
              }
            }
          }

          v41 = v7;
          if (k < v7)
          {
            for (m = a2 - 384; v140 < v37 || v140 <= v37 && v139 < *(m + 368); m -= 376)
            {
              v37 = *m;
            }

            v41 = m + 8;
          }

          while (k < v41)
          {
            sub_1003D8FB8(k, v41);
            v43 = *(k + 744);
            if (v140 >= v43)
            {
              v44 = k + 736;
              do
              {
                if (v140 <= v43 && v139 < *v44)
                {
                  break;
                }

                v43 = *(v44 + 384);
                v44 += 376;
              }

              while (v140 >= v43);
              k = v44 - 360;
            }

            else
            {
              k += 376;
            }

            do
            {
              do
              {
                v41 -= 376;
                v45 = *(v41 + 368);
              }

              while (v140 < v45);
            }

            while (v140 <= v45 && v139 < *(v41 + 360));
          }

          v46 = (k - 376);
          if (k - 376 != a1)
          {
            *a1 = *v46;
            sub_1003A8CFC(a1 + 8, k - 368);
            sub_1003A8CFC(a1 + 72, k - 304);
            sub_1003A8CFC(a1 + 136, k - 240);
            sub_1003A8CFC(a1 + 248, k - 128);
            v47 = *(k - 8);
            *(a1 + 360) = *(k - 16);
            *(a1 + 368) = v47;
          }

          *v46 = v134;
          sub_1003A8CFC(k - 368, v135);
          sub_1003A8CFC(k - 304, v136);
          sub_1003A8CFC(k - 240, v137);
          *&result = sub_1003A8CFC(k - 128, v138).n128_u64[0];
          a4 = 0;
          v48 = v140;
          *(k - 16) = v139;
          *(k - 8) = v48;
          v7 = a2;
        }

        v134 = *a1;
        sub_1003BBC24(v135, a1 + 8);
        sub_1003BBC24(v136, a1 + 72);
        sub_1003BBDB4(v137, a1 + 136);
        sub_1003BBDB4(v138, a1 + 248);
        v17 = 0;
        v18 = *(a1 + 360);
        v140 = *(a1 + 368);
        v139 = v18;
        while (1)
        {
          v19 = *(a1 + v17 + 744);
          if (v19 >= v140 && (v19 > v140 || *(a1 + v17 + 736) >= v139))
          {
            break;
          }

          v17 += 376;
        }

        v20 = a1 + v17 + 376;
        if (v17)
        {
          v21 = (a2 - 376);
          v22 = *(a2 - 8);
          v23 = a2 - 384;
          if (v22 >= v140)
          {
            do
            {
              if (v22 <= v140 && *(v23 + 368) < v139)
              {
                break;
              }

              v22 = *v23;
              v23 -= 376;
            }

            while (v22 >= v140);
LABEL_28:
            v21 = (v23 + 8);
          }
        }

        else
        {
          v21 = a2;
          if (v20 < a2)
          {
            v21 = (a2 - 376);
            v24 = *(a2 - 8);
            if (v24 >= v140)
            {
              v23 = a2 - 384;
              v21 = (a2 - 376);
              while (1)
              {
                v34 = v23 + 8;
                if (v24 <= v140)
                {
                  if (*(v23 + 368) < v139 || v20 >= v34)
                  {
                    break;
                  }
                }

                else if (v20 >= v34)
                {
                  goto LABEL_28;
                }

                v21 -= 376;
                v24 = *v23;
                v23 -= 376;
                if (v24 < v140)
                {
                  goto LABEL_28;
                }
              }
            }
          }
        }

        k = v20;
        if (v20 < v21)
        {
          v25 = v21;
          do
          {
            sub_1003D8FB8(k, v25);
            do
            {
              do
              {
                k += 376;
                v26 = *(k + 368);
              }

              while (v26 < v140);
            }

            while (v26 <= v140 && *(k + 360) < v139);
            v27 = *(v25 - 2);
            if (v27 >= v140)
            {
              v28 = v25 - 384;
              do
              {
                if (v27 <= v140 && *(v28 + 46) < v139)
                {
                  break;
                }

                v27 = *v28;
                v28 -= 376;
              }

              while (v27 >= v140);
              v25 = v28 + 8;
            }

            else
            {
              v25 -= 376;
            }
          }

          while (k < v25);
        }

        v29 = (k - 376);
        if (k - 376 != a1)
        {
          *a1 = *v29;
          sub_1003A8CFC(a1 + 8, k - 368);
          sub_1003A8CFC(a1 + 72, k - 304);
          sub_1003A8CFC(a1 + 136, k - 240);
          sub_1003A8CFC(a1 + 248, k - 128);
          v30 = *(k - 8);
          *(a1 + 360) = *(k - 16);
          *(a1 + 368) = v30;
        }

        *v29 = v134;
        sub_1003A8CFC(k - 368, v135);
        sub_1003A8CFC(k - 304, v136);
        sub_1003A8CFC(k - 240, v137);
        sub_1003A8CFC(k - 128, v138);
        v31 = v140;
        *(k - 16) = v139;
        *(k - 8) = v31;
        v7 = a2;
        if (v20 >= v21)
        {
          break;
        }

LABEL_50:
        sub_1003D9214(a1, k - 376, a3, a4 & 1);
        a4 = 0;
      }

      v32 = sub_1003DA608(a1, k - 376);
      if (sub_1003DA608(k, a2))
      {
        break;
      }

      if (!v32)
      {
        goto LABEL_50;
      }
    }

    a2 = k - 376;
    if (!v32)
    {
      continue;
    }

    return result;
  }
}