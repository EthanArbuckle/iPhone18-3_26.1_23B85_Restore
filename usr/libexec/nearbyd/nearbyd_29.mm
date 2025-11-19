void sub_100185398(uint64_t a1, __int128 *a2)
{
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
  {
    sub_1004A0448();
  }

  if (*(a2 + 10))
  {
    sub_1004A047C();
  }

  v4 = sub_100186868(a1, *(a2 + 28));
  v5 = v4;
  if ((v4 & 0x100) != 0)
  {
    (*(**(a1 + 1808) + 16))(&v46);
    if (v61)
    {
      v6 = WORD6(v54);
    }

    else
    {
      v6 = 0;
    }

    (*(**(a1 + 1808) + 16))(&v46);
    if (v61)
    {
      v7 = WORD1(v60[45]);
    }

    else
    {
      v7 = 0;
    }

    if ((v6 & 0x100) != 0)
    {
      if ((v7 & 0x100) == 0)
      {
        v8 = sub_1000054A8();
        if (sub_1000149D4(v8) && os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
        {
          sub_1004A04A8();
        }
      }

      v9 = a2[3];
      v48 = a2[2];
      v49 = v9;
      v10 = a2[1];
      v46 = *a2;
      v47 = v10;
      v11 = *(a2 + 9);
      v50 = *(a2 + 8);
      v51 = 0;
      v12 = *(a2 + 10);
      v53 = 0;
      v52 = 0;
      sub_100012F38(&v51, v11, v12, (v12 - v11) >> 3);
      v13 = a2[7];
      v54 = a2[6];
      v55 = v13;
      v14 = *(a2 + 17);
      v56 = *(a2 + 16);
      v57 = 0;
      v59 = 0;
      v58 = 0;
      sub_100020574(&v57, v14, *(a2 + 18), 0x6DB6DB6DB6DB6DB7 * ((*(a2 + 18) - v14) >> 3));
      memcpy(v60, a2 + 10, 0x181uLL);
      v15 = v56;
      v56 = v15 - sub_1001A61C4();
      v16 = v60[18];
      v60[18] = v16 - sub_1001A6080();
      LOWORD(v46) = v6;
      WORD1(v46) = v7;
      BYTE4(v46) = v5;
      *(&v46 + 1) = sub_1002FE75C(a1 + 1632, *&v49);
      LOBYTE(v47) = v17;
      if ((v17 & 1) == 0)
      {
        *(&v46 + 1) = sub_10041C3F0();
        LOBYTE(v47) = 1;
        v18 = qword_1009F9820;
        if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
        {
          if ((v47 & 1) == 0)
          {
            sub_1000195BC();
          }

          *buf = 134217984;
          *&buf[4] = *(&v46 + 1);
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "#sp,RoseSolutionProvider::ingestRangeResult: did not successfully convert to mach continuous.  Using current time %lf", buf, 0xCu);
        }
      }

      if (v54)
      {
        v19 = *(a1 + 1832) + 1;
        *(a1 + 1832) = v19;
        if (!(v19 % *(a1 + 1824)))
        {
          v20 = qword_1009F9820;
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            v21 = *(a2 + 28);
            sub_1004279E4(*(a2 + 48), buf);
            v22 = v41 >= 0 ? buf : *buf;
            *v42 = 67109378;
            v43 = v21;
            v44 = 2080;
            v45 = v22;
            _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#sp,[UNSUCCESSFUL RANGING CYCLE] Ticket: %d, ErrorCode: %s", v42, 0x12u);
            if (v41 < 0)
            {
              operator delete(*buf);
            }
          }
        }
      }

      v23 = *(a1 + 1744);
      v24[0] = _NSConcreteStackBlock;
      v24[1] = 3321888768;
      v26 = v47;
      v27 = v48;
      v28 = v49;
      v24[2] = sub_10018689C;
      v24[3] = &unk_100998F98;
      v24[4] = a1;
      v25 = v46;
      v29 = v50;
      v30 = 0;
      v31 = 0;
      v32 = 0;
      sub_100012F38(&v30, v51, v52, (v52 - v51) >> 3);
      v33 = v54;
      v34 = v55;
      v35 = v56;
      __p = 0;
      v37 = 0;
      v38 = 0;
      sub_100020574(&__p, v57, v58, 0x6DB6DB6DB6DB6DB7 * ((v58 - v57) >> 3));
      memcpy(v39, v60, sizeof(v39));
      dispatch_async(v23, v24);
      if (__p)
      {
        v37 = __p;
        operator delete(__p);
      }

      if (v30)
      {
        v31 = v30;
        operator delete(v30);
      }

      if (v57)
      {
        v58 = v57;
        operator delete(v57);
      }

      if (v51)
      {
        v52 = v51;
        operator delete(v51);
      }
    }

    else if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004A0520();
    }
  }

  else if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
  {
    sub_1004A0594(a2 + 28);
  }
}

void sub_1001858F8(uint64_t a1, __int128 *a2)
{
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
  {
    sub_1004A0608();
  }

  if (*(a1 + 1792))
  {
    v12 = *a2;
    v4 = *(a2 + 3);
    v13 = *(a2 + 2);
    v14 = 0;
    v15 = 0;
    v16 = 0;
    sub_1001895D0(&v14, v4, *(a2 + 4), 0x86BCA1AF286BCA1BLL * ((*(a2 + 4) - v4) >> 3));
    v17 = 0;
    v18 = 0;
    v19 = 0;
    sub_100189C1C(&v17, *(a2 + 6), *(a2 + 7), (*(a2 + 7) - *(a2 + 6)) >> 5);
    v5 = *(a1 + 1744);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3321888768;
    block[2] = sub_100186A70;
    block[3] = &unk_100998FC8;
    block[4] = a1;
    v8 = v12;
    v9 = v13;
    memset(v10, 0, sizeof(v10));
    sub_1001895D0(v10, v14, v15, 0x86BCA1AF286BCA1BLL * ((v15 - v14) >> 3));
    memset(v11, 0, sizeof(v11));
    sub_100189C1C(v11, v17, v18, (v18 - v17) >> 5);
    dispatch_async(v5, block);
    v6 = v11;
    sub_100189A94(&v6);
    v6 = v10;
    sub_100189B38(&v6);
    v6 = &v17;
    sub_100189A94(&v6);
    v6 = &v14;
    sub_100189B38(&v6);
  }
}

void sub_100185AD0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void **);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  sub_100189B38(va);
  sub_100189E60(va1);
  _Unwind_Resume(a1);
}

void sub_100185B14(uint64_t a1, __int128 *a2)
{
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
  {
    sub_1004A063C();
  }

  v4 = a2[5];
  v36 = a2[4];
  v37 = v4;
  v5 = a2[7];
  v38 = a2[6];
  v39 = v5;
  v6 = a2[1];
  v32 = *a2;
  v33 = v6;
  v7 = a2[3];
  v34 = a2[2];
  v35 = v7;
  if (*(a1 + 1792))
  {
    v8 = *(a1 + 1744);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    v9 = a2[5];
    v28 = a2[4];
    v29 = v9;
    v10 = a2[7];
    v30 = a2[6];
    v31 = v10;
    v11 = a2[1];
    v24 = *a2;
    v25 = v11;
    v12 = a2[3];
    v26 = a2[2];
    block[2] = sub_100186B7C;
    block[3] = &unk_100998FF8;
    block[4] = a1;
    v27 = v12;
    dispatch_async(v8, block);
  }

  v13 = *(a1 + 1744);
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v19 = v36;
  v20 = v37;
  v21 = v38;
  v22 = v39;
  v15 = v32;
  v16 = v33;
  v17 = v34;
  v14[2] = sub_100186BD4;
  v14[3] = &unk_100998FF8;
  v14[4] = a1;
  v18 = v35;
  dispatch_async(v13, v14);
}

void sub_100185CA4(uint64_t a1, __int128 *a2)
{
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
  {
    sub_1004A0670();
  }

  v4 = a2[3];
  v24 = a2[2];
  v25 = v4;
  v26 = a2[4];
  v5 = a2[1];
  v22 = *a2;
  v23 = v5;
  if (*(a1 + 1792))
  {
    v6 = *(a1 + 1744);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    v7 = *a2;
    v18 = a2[1];
    v8 = a2[3];
    v19 = a2[2];
    v20 = v8;
    v21 = a2[4];
    block[2] = sub_100186BE8;
    block[3] = &unk_100999018;
    block[4] = a1;
    v17 = v7;
    dispatch_async(v6, block);
  }

  v9 = *(a1 + 1744);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v12 = v23;
  v13 = v24;
  v14 = v25;
  v15 = v26;
  v10[2] = sub_100186BFC;
  v10[3] = &unk_100999018;
  v10[4] = a1;
  v11 = v22;
  dispatch_async(v9, v10);
}

void sub_100185E08(uint64_t a1, __int128 *a2)
{
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
  {
    sub_1004A06A4();
  }

  v4 = a2[5];
  v33 = a2[4];
  v34 = v4;
  v35 = *(a2 + 12);
  v5 = a2[1];
  v29 = *a2;
  v30 = v5;
  v6 = a2[3];
  v31 = a2[2];
  v32 = v6;
  if (*(a1 + 1792))
  {
    v7 = *(a1 + 1744);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    v8 = a2[2];
    v25 = a2[3];
    v9 = a2[5];
    v26 = a2[4];
    v27 = v9;
    v10 = a2[1];
    v22 = *a2;
    v23 = v10;
    block[2] = sub_100186C10;
    block[3] = &unk_100999038;
    v11 = *(a2 + 12);
    block[4] = a1;
    v28 = v11;
    v24 = v8;
    dispatch_async(v7, block);
  }

  v12 = *(a1 + 1744);
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v17 = v32;
  v18 = v33;
  v19 = v34;
  v14 = v29;
  v15 = v30;
  v13[2] = sub_100186C24;
  v13[3] = &unk_100999038;
  v13[4] = a1;
  v20 = v35;
  v16 = v31;
  dispatch_async(v12, v13);
}

void sub_100185F8C(uint64_t a1, uint64_t a2)
{
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
  {
    sub_1004A06D8();
  }

  v33 = *a2;
  v34 = *(a2 + 8);
  v4 = *(a2 + 32);
  v35 = *(a2 + 16);
  v36 = v4;
  v37 = *(a2 + 48);
  v38 = *(a2 + 64);
  v40 = 0;
  v41 = 0;
  v5 = *(a2 + 72);
  v6 = *(a2 + 80);
  v39 = 0;
  sub_10002086C(&v39, v5, v6, (v6 - v5) >> 4);
  v42 = *(a2 + 96);
  *&v42 = sub_1002FE75C(a1 + 1632, v33);
  BYTE8(v42) = v7;
  v8 = *(a1 + 1744);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3321888768;
  v25 = v35;
  v27 = v37;
  block[2] = sub_100187230;
  block[3] = &unk_1009990B8;
  block[4] = a1;
  *&block[5] = v33;
  v24 = v34;
  v28 = v38;
  v26 = v36;
  v30 = 0;
  v29 = 0;
  v31 = 0;
  sub_10002086C(&v29, v39, v40, (v40 - v39) >> 4);
  v32 = v42;
  dispatch_async(v8, block);
  sub_100189EAC(v9, &v33, 1);
  (*(**(a1 + 16) + 16))(*(a1 + 16), v9);
  if (v22 == 1 && __p)
  {
    v21 = __p;
    operator delete(__p);
  }

  if (v19 == 1 && v17)
  {
    v18 = v17;
    operator delete(v17);
  }

  if (v16 == 1)
  {
    sub_10002074C(v15, v15[1]);
  }

  if (v14 == 1)
  {
    if (v12)
    {
      v13 = v12;
      operator delete(v12);
    }

    if (v10)
    {
      v11 = v10;
      operator delete(v10);
    }
  }

  if (v29)
  {
    v30 = v29;
    operator delete(v29);
  }

  if (v39)
  {
    v40 = v39;
    operator delete(v39);
  }
}

void sub_100186210(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10001EEE4(va);
  v4 = STACK[0x710];
  if (STACK[0x710])
  {
    STACK[0x718] = v4;
    operator delete(v4);
  }

  v5 = *(v2 - 96);
  if (v5)
  {
    *(v2 - 88) = v5;
    operator delete(v5);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_100186260(uint64_t a1, uint64_t a2)
{
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
  {
    sub_1004A070C();
  }

  *(a2 + 32) = sub_1002FE75C(a1 + 1632, *(a2 + 24));
  *(a2 + 40) = v4;
  return (*(**(a1 + 16) + 32))(*(a1 + 16), a2);
}

uint64_t sub_1001862F4(uint64_t a1, uint64_t a2)
{
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
  {
    sub_1004A0740();
  }

  *(a2 + 8) = sub_1002FE75C(a1 + 1632, *a2);
  *(a2 + 16) = v4;
  return (*(**(a1 + 16) + 40))(*(a1 + 16), a2);
}

void sub_100186388(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *v30 = *a2;
  *&v30[10] = *(a2 + 10);
  v5 = *(a2 + 160);
  v6 = *(a2 + 176);
  v7 = *(a2 + 128);
  v38 = *(a2 + 144);
  v39 = v5;
  v40 = v6;
  v8 = *(a2 + 96);
  v9 = *(a2 + 112);
  v10 = *(a2 + 64);
  v34 = *(a2 + 80);
  v35 = v8;
  v36 = v9;
  v37 = v7;
  v31 = v3;
  v32 = v4;
  v41 = *(a2 + 192);
  v33 = v10;
  v12 = *(a2 + 200);
  v11 = *(a2 + 208);
  v43 = 0;
  v42 = 0;
  v44 = 0;
  sub_100020A60(&v42, v12, v11, 0xEEEEEEEEEEEEEEEFLL * ((v11 - v12) >> 3));
  v13 = sub_1002FE75C(a1 + 1632, *v30);
  if (v14)
  {
    v15 = *&v13;
  }

  else
  {
    v15 = sub_10041C3F0();
  }

  *&v30[8] = v15;
  v30[16] = 1;
  v16 = *(a1 + 1744);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3321888768;
  block[2] = sub_100186680;
  block[3] = &unk_100998F68;
  block[4] = a1;
  v25[0] = *v30;
  *(v25 + 10) = *&v30[10];
  v25[2] = v31;
  v25[3] = v32;
  v25[4] = v33;
  v25[8] = v37;
  v25[7] = v36;
  v25[6] = v35;
  v25[5] = v34;
  v26 = v41;
  v25[11] = v40;
  v25[10] = v39;
  v25[9] = v38;
  v27 = 0;
  v28 = 0;
  v29 = 0;
  sub_100020A60(&v27, v42, v43, 0xEEEEEEEEEEEEEEEFLL * ((v43 - v42) >> 3));
  dispatch_async(v16, block);
  if (*(a1 + 1792))
  {
    v17 = *(a1 + 1744);
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3321888768;
    v19[0] = *v30;
    *(v19 + 10) = *&v30[10];
    v19[9] = v38;
    v19[10] = v39;
    v19[11] = v40;
    v19[5] = v34;
    v19[6] = v35;
    v19[7] = v36;
    v19[8] = v37;
    v19[2] = v31;
    v19[3] = v32;
    v18[2] = sub_100186854;
    v18[3] = &unk_100998F68;
    v18[4] = a1;
    v20 = v41;
    v19[4] = v33;
    __p = 0;
    v22 = 0;
    v23 = 0;
    sub_100020A60(&__p, v42, v43, 0xEEEEEEEEEEEEEEEFLL * ((v43 - v42) >> 3));
    dispatch_async(v17, v18);
    if (__p)
    {
      v22 = __p;
      operator delete(__p);
    }
  }

  if (v27)
  {
    v28 = v27;
    operator delete(v27);
  }

  if (v42)
  {
    v43 = v42;
    operator delete(v42);
  }
}

void sub_100186648(_Unwind_Exception *a1)
{
  v2 = STACK[0x2D8];
  if (STACK[0x2D8])
  {
    STACK[0x2E0] = v2;
    operator delete(v2);
  }

  _Unwind_Resume(a1);
}

void sub_100186680(uint64_t a1)
{
  v1 = *(a1 + 32);
  sub_100189464(v2, (a1 + 40));
  (*(**(v1 + 16) + 16))(*(v1 + 16), v2);
  if (v15 == 1 && __p)
  {
    v14 = __p;
    operator delete(__p);
  }

  if (v12 == 1 && v10)
  {
    v11 = v10;
    operator delete(v10);
  }

  if (v9 == 1)
  {
    sub_10002074C(v8, v8[1]);
  }

  if (v7 == 1)
  {
    if (v5)
    {
      v6 = v5;
      operator delete(v5);
    }

    if (v3)
    {
      v4 = v3;
      operator delete(v3);
    }
  }
}

uint64_t sub_1001867AC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 50) = *(a2 + 50);
  *(a1 + 40) = v2;
  v3 = *(a2 + 184);
  v4 = *(a2 + 200);
  v5 = *(a2 + 216);
  v6 = *(a2 + 232);
  v7 = *(a2 + 120);
  v8 = *(a2 + 136);
  v9 = *(a2 + 152);
  v10 = *(a2 + 168);
  v11 = *(a2 + 88);
  v12 = *(a2 + 104);
  v13 = *(a2 + 72);
  *(a1 + 240) = 0;
  v14 = a1 + 240;
  *(v14 - 168) = v13;
  *(v14 - 136) = v12;
  *(v14 - 152) = v11;
  *(v14 - 72) = v10;
  *(v14 - 88) = v9;
  *(v14 - 104) = v8;
  *(v14 - 120) = v7;
  *(v14 - 8) = v6;
  *(v14 - 24) = v5;
  *(v14 - 40) = v4;
  *(v14 - 56) = v3;
  *(v14 + 8) = 0;
  *(v14 + 16) = 0;
  return sub_100020A60(v14, *(a2 + 240), *(a2 + 248), 0xEEEEEEEEEEEEEEEFLL * ((*(a2 + 248) - *(a2 + 240)) >> 3));
}

void sub_10018683C(uint64_t a1)
{
  v2 = *(a1 + 240);
  if (v2)
  {
    *(a1 + 248) = v2;
    operator delete(v2);
  }
}

uint64_t sub_100186868(uint64_t a1, unsigned __int16 a2)
{
  v2 = sub_100187F48(a1, a2);
  if ((v2 & 0x100000000) != 0)
  {
    v3 = sub_10019B1C8(v2);
    v4 = 1;
  }

  else
  {
    v3 = 0;
    v4 = 0;
  }

  return v3 | (v4 << 8);
}

void sub_10018689C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#sp,RoseSolutionProvider::ingestRangeResult: addRangeResult to MeasEngine", v4, 2u);
  }

  sub_10017D6A8(v2 + 40, a1 + 40);
}

void *sub_100186920(uint64_t a1, uint64_t a2)
{
  *(a1 + 40) = *(a2 + 40);
  v4 = *(a2 + 56);
  v5 = *(a2 + 72);
  v6 = *(a2 + 88);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 88) = v6;
  *(a1 + 72) = v5;
  *(a1 + 56) = v4;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  sub_100012F38(a1 + 112, *(a2 + 112), *(a2 + 120), (*(a2 + 120) - *(a2 + 112)) >> 3);
  v7 = *(a2 + 136);
  v8 = *(a2 + 152);
  v9 = *(a2 + 168);
  *(a1 + 176) = 0;
  *(a1 + 168) = v9;
  *(a1 + 152) = v8;
  *(a1 + 136) = v7;
  *(a1 + 184) = 0;
  *(a1 + 192) = 0;
  sub_100020574(a1 + 176, *(a2 + 176), *(a2 + 184), 0x6DB6DB6DB6DB6DB7 * ((*(a2 + 184) - *(a2 + 176)) >> 3));

  return memcpy((a1 + 200), (a2 + 200), 0x181uLL);
}

void sub_1001869FC(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 120) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

void sub_100186A18(void *a1)
{
  v2 = a1[22];
  if (v2)
  {
    a1[23] = v2;
    operator delete(v2);
  }

  v3 = a1[14];
  if (v3)
  {
    a1[15] = v3;

    operator delete(v3);
  }
}

uint64_t sub_100186A84(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 40) = v4;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  sub_1001895D0(a1 + 64, *(a2 + 64), *(a2 + 72), 0x86BCA1AF286BCA1BLL * ((*(a2 + 72) - *(a2 + 64)) >> 3));
  v3[11] = 0;
  v3[12] = 0;
  v3 += 11;
  v3[2] = 0;
  return sub_100189C1C(v3, *(a2 + 88), *(a2 + 96), (*(a2 + 96) - *(a2 + 88)) >> 5);
}

void sub_100186B1C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100189B38(va);
  _Unwind_Resume(a1);
}

void sub_100186B34(uint64_t a1)
{
  v2 = (a1 + 88);
  sub_100189A94(&v2);
  v2 = (a1 + 64);
  sub_100189B38(&v2);
}

void sub_100186B7C(uint64_t a1)
{
  sub_1002DC744(*(*(a1 + 32) + 1792), a1 + 40);
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
  {
    sub_1004A0774();
  }
}

void sub_100186C38(uint64_t a1, uint64_t a2)
{
  v4 = qword_1009F9820;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    sub_100199024(*(a2 + 24), __p);
    v5 = v60 >= 0 ? __p : __p[0];
    v6 = *(a2 + 58);
    *buf = 136315394;
    *&buf[4] = v5;
    *&buf[12] = 1024;
    *&buf[14] = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#sp,=== P2P timestamp event, source %s, cycle_idx %d ===", buf, 0x12u);
    if (v60 < 0)
    {
      operator delete(__p[0]);
    }
  }

  v26 = *(a2 + 2);
  v27 = *(a2 + 6);
  v7 = *(a2 + 8);
  v8 = *(a2 + 16);
  v58[0] = *(a2 + 17);
  v9 = *(a2 + 32);
  *(v58 + 7) = *(a2 + 24);
  v10 = *(a2 + 40);
  v11 = *(a2 + 48);
  v12 = *(a2 + 50);
  v13 = *(a2 + 68);
  v14 = *(a2 + 84);
  *buf = *(a2 + 52);
  *&buf[16] = v13;
  v15 = *(a2 + 100);
  v16 = *(a2 + 132);
  v17 = *(a2 + 148);
  v51 = *(a2 + 116);
  v52 = v16;
  v49 = v14;
  v50 = v15;
  v18 = *(a2 + 164);
  v19 = *(a2 + 180);
  v20 = *(a2 + 196);
  v57 = *(a2 + 212);
  v55 = v19;
  v56 = v20;
  v53 = v17;
  v54 = v18;
  (*(**(a1 + 1808) + 16))(__p);
  v21 = v62;
  v22 = v61;
  if (v10)
  {
    v7 = sub_1002FE75C(a1 + 1632, v9);
    v8 = v23;
  }

  v24 = *(a1 + 1744);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  v44 = v54;
  v45 = v55;
  v46 = v56;
  v40 = v50;
  v41 = v51;
  v42 = v52;
  v43 = v53;
  v37 = *buf;
  v38 = *&buf[16];
  if (v21)
  {
    v25 = v22;
  }

  else
  {
    v25 = 0;
  }

  block[2] = sub_100186F08;
  block[3] = &unk_100999058;
  block[4] = a1;
  v29 = v25;
  v30 = v26;
  v31 = v27;
  v32 = v7;
  v33 = v8;
  *v34 = v58[0];
  *&v34[7] = *(v58 + 7);
  *&v34[15] = v9;
  *&v34[23] = v10;
  v35 = v11;
  v36 = v12;
  v47 = v57;
  v39 = v49;
  dispatch_async(v24, block);
}

void sub_100186F08(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 1792);
  if (v3)
  {
    v4 = *(a1 + 64);
    if (v4 == 1)
    {
      sub_1002DDAA0(v3, (a1 + 40));
    }

    else if (!v4)
    {
      sub_1002DD5D8(v3, (a1 + 40));
    }
  }

  sub_100193DBC((a1 + 40));
  if (*(a1 + 41))
  {

    sub_10017D964(v2 + 40, a1 + 40);
  }

  else if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
  {
    sub_1004A07A8(a1);
  }
}

void sub_100186FB8(uint64_t a1, const void *a2)
{
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
  {
    sub_1004A081C();
  }

  memcpy(__dst, a2, sizeof(__dst));
  if (*(a1 + 1792))
  {
    v4 = *(a1 + 1744);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100187124;
    block[3] = &unk_100999078;
    block[4] = a1;
    memcpy(v9, a2, sizeof(v9));
    dispatch_async(v4, block);
  }

  v5 = *(a1 + 1744);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100187138;
  v6[3] = &unk_100999078;
  v6[4] = a1;
  memcpy(v7, __dst, sizeof(v7));
  dispatch_async(v5, v6);
}

void sub_10018714C(uint64_t a1, __int128 *a2)
{
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
  {
    sub_1004A0850();
  }

  v4 = *a2;
  v9 = a2[1];
  v5 = a2[3];
  v10 = a2[2];
  v11 = v5;
  v12 = *(a2 + 8);
  v8 = v4;
  v6 = *(a1 + 1744);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10018721C;
  v7[3] = &unk_100999098;
  v7[4] = a1;
  dispatch_async(v6, v7);
}

void sub_100187230(uint64_t a1)
{
  v2 = *(a1 + 32);
  sub_100198828(a1 + 40);
  v3 = *(v2 + 1792);
  if (v3)
  {
    sub_1002DDCF4(v3, (a1 + 40));
  }

  v4 = *(a1 + 72);
  v5 = qword_1009F9820;
  if (*(a1 + 56))
  {
    v6 = qword_1009F9820;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      sub_1004279E4(*(a1 + 56), __p);
      if (v10 >= 0)
      {
        v7 = __p;
      }

      else
      {
        v7 = __p[0];
      }

      v8 = *(a1 + 91);
      *buf = 136315650;
      v12 = v7;
      v13 = 1024;
      v14 = v8;
      v15 = 2048;
      v16 = v4;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#sp,[Solution Provider] P2S Responder: UNSUCCESSFUL CYCLE (%s). Poll Rx Status: (0x%x), Initiator address: 0x%llx", buf, 0x1Cu);
      if (v10 < 0)
      {
        operator delete(__p[0]);
      }
    }
  }

  else if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v12 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#sp,[Solution Provider] P2S Responder: successful cycle. Initiator address: 0x%llx", buf, 0xCu);
  }
}

__n128 sub_1001873B8(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 40) = v3;
  v4 = *(a2 + 56);
  v5 = *(a2 + 72);
  v6 = *(a2 + 88);
  LODWORD(v3) = *(a2 + 104);
  *(a1 + 112) = 0;
  v7 = a1 + 112;
  *(a1 + 104) = v3;
  *(a1 + 88) = v6;
  *(a1 + 72) = v5;
  *(a1 + 56) = v4;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  sub_10002086C(a1 + 112, *(a2 + 112), *(a2 + 120), (*(a2 + 120) - *(a2 + 112)) >> 4);
  result = *(a2 + 136);
  *(v7 + 24) = result;
  return result;
}

void sub_100187434(uint64_t a1)
{
  v2 = *(a1 + 112);
  if (v2)
  {
    *(a1 + 120) = v2;
    operator delete(v2);
  }
}

void sub_10018744C(uint64_t a1, __int128 *a2)
{
  v2 = a2[1];
  v5 = *a2;
  v6 = v2;
  v7 = *(a2 + 4);
  v3 = *(a1 + 1744);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1001874D4;
  v4[3] = &unk_1009990E8;
  v4[4] = a1;
  dispatch_async(v3, v4);
}

void sub_1001874D4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 1792);
  if (v3)
  {
    v4 = sub_10041C3F0();
    sub_1002D9714(v3, a1 + 40, v4);
  }

  v5 = *(a1 + 40);
  if (v5 != 2)
  {
    if (v5 != 1)
    {
      return;
    }

    if ((*(a1 + 52) & 1) == 0)
    {
      sub_1004A08B0();
    }

    v6 = *(a1 + 44);
    v7 = *(a1 + 48);
    v8 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109376;
      *&buf[4] = v6;
      LOWORD(v22) = 1024;
      *(&v22 + 2) = v7;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#sp,ingestContextEvent,accessory %d,activity %d", buf, 0xEu);
    }

    sub_10041CB84(*(v2 + 8), buf);
    if (v6)
    {
      v9 = v7 != 0;
    }

    else
    {
      v9 = 1;
    }

    if (v9)
    {
      v6 = 0;
    }

    else
    {
      v11 = *buf;
      if (*buf != v22)
      {
        while (*v11 != v6)
        {
          if (++v11 == v22)
          {
            goto LABEL_32;
          }
        }
      }

      if (v11 == v22)
      {
        goto LABEL_32;
      }
    }

    v12 = qword_1009F9820;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      sub_10041C9CC();
      v13 = v18 >= 0 ? &__p : __p;
      *v19 = 136315138;
      v20 = v13;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#sp,ingestContextEvent: load lut and nn files for accessory %s", v19, 0xCu);
      if (v18 < 0)
      {
        operator delete(__p);
      }
    }

    *(v2 + 12) = v6;
    sub_100168990((v2 + 2232), v6, v2 + 40);
    v14 = *(v2 + 32);
    v15 = *(v2 + 24);
    v16 = v14;
    if (v14)
    {
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    sub_1001697AC(v2 + 2232, v6, &v15);
    if (v16)
    {
      sub_10000AD84(v16);
    }

LABEL_32:
    if (*buf)
    {
      v22 = *buf;
      operator delete(*buf);
    }

    return;
  }

  if ((*(a1 + 60) & 1) == 0)
  {
    sub_1004A0884();
  }

  v10 = *(a1 + 56);
  if (v10 == 1)
  {
    *(v2 + 2224) = 0;
  }

  else if (!v10)
  {
    *(v2 + 2224) = 1;
  }
}

void sub_10018773C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_100187780(uint64_t a1)
{
  v2 = *(a1 + 32);
  sub_100198720(a1 + 40);
  sub_100187CC0(v2, a1 + 40);
  kdebug_trace();
  if (*(v2 + 1792))
  {
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
    {
      sub_1004A08DC();
    }

    v3 = *(v2 + 1792);
    if (*(a1 + 1808) == 1)
    {
      LODWORD(v38) = *(a1 + 1800);
      v4 = *(a1 + 1784);
      *buf = *(a1 + 1768);
      *&buf[16] = v4;
      BYTE4(v38) = 1;
    }

    else
    {
      buf[0] = 0;
      BYTE4(v38) = 0;
    }

    sub_1002DAC50(v3, (a1 + 40), buf, *(a1 + 1816), *(a1 + 1817));
  }

  v5 = sub_100187F48(v2, *(a1 + 96));
  if ((v5 & 0x100000000) != 0)
  {
    if ((v5 - 3) >= 4)
    {
      if ((v5 - 1) >= 2)
      {
        if (!v5 && os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
        {
          sub_1004A0910((a1 + 96), a1);
        }
      }

      else
      {
        v6 = qword_1009F9820;
        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
        {
          v7 = *(a1 + 104);
          if (*(a1 + 1817))
          {
            v8 = "OK";
          }

          else
          {
            v8 = "not OK";
          }

          *buf = 136315394;
          *&buf[4] = v8;
          *&buf[12] = 2048;
          *&buf[14] = v7;
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#sp,Raw solution %s to use by client, emitting! Peer: 0x%llx", buf, 0x16u);
        }

        sub_10018893C(v2, a1 + 40, a1 + 40);
      }
    }

    else
    {
      *buf = 1;
      buf[8] = 0;
      v39 = 0;
      LOBYTE(v40[0]) = 0;
      v41 = 0;
      if (*(a1 + 1816) == 1)
      {
        sub_100187FD8(v2, a1 + 40, v5, a1 + 40, v25);
        *buf = *v25;
        sub_100189FDC(&buf[8], &v26);
        v40[0] = v33;
        v40[1] = v34;
        v40[2] = v35;
        v41 = v36;
        if (v32 == 1)
        {
          sub_10002074C(&v30, *&v31[6]);
        }
      }

      else
      {
        v9 = qword_1009F9820;
        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
        {
          v10 = *(a1 + 96);
          v11 = *(a1 + 88);
          v12 = *(a1 + 152);
          v13 = *(a1 + 104);
          *v25 = 67109888;
          *&v25[4] = v10;
          v26 = 2048;
          v27 = v11;
          v28 = 1024;
          v29 = v12;
          v30 = 2048;
          *v31 = v13;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#sp,Got one rose measurement not ok for sensor fusion, ticket_id %d, measurement time stamp %f (mach_absolute_time), cycle index %d, Peer: 0x%llx", v25, 0x22u);
        }
      }

      if (*buf)
      {
        v14 = *(a1 + 1817);
        v15 = qword_1009F9820;
        v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
        if (v14 == 1)
        {
          if (v16)
          {
            sub_100188770(*buf, v25);
            v17 = v29 >= 0 ? v25 : *v25;
            v18 = *(a1 + 104);
            v21 = 136315394;
            v22 = v17;
            v23 = 2048;
            v24 = v18;
            _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#sp,Sensor fusion did not accept measurement, emitting raw solution instead. Reason: %s, Peer: 0x%llx", &v21, 0x16u);
            if (SHIBYTE(v29) < 0)
            {
              operator delete(*v25);
            }
          }

          if (v41 == 1)
          {
            sub_100188784(v2, a1 + 40, v40, a1 + 40);
          }

          else
          {
            sub_10018893C(v2, a1 + 40, a1 + 40);
          }
        }

        else
        {
          if (v16)
          {
            sub_100188770(*buf, v25);
            v19 = v29 >= 0 ? v25 : *v25;
            v20 = *(a1 + 104);
            v21 = 136315394;
            v22 = v19;
            v23 = 2048;
            v24 = v20;
            _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#sp,Sensor fusion did not accept measurement (%s) and raw solution not OK to publish to client, not emitting! Peer: 0x%llx", &v21, 0x16u);
            if (SHIBYTE(v29) < 0)
            {
              operator delete(*v25);
            }
          }
        }
      }

      if (v39 == 1)
      {
        sub_10002074C(&buf[24], v38);
      }
    }

    kdebug_trace();
  }

  else if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
  {
    sub_1004A0980((a1 + 96), a1);
  }
}

void sub_100187C50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, void *a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, char a60)
{
  if (a60 == 1)
  {
    sub_10002074C(&a44, a45);
  }

  _Unwind_Resume(a1);
}

void sub_100187CC0(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 96))
  {
    v3 = 0;
    v4 = 0;
    v5 = *(a2 + 100);
    v6 = *(a2 + 304);
    if (*(a2 + 16))
    {
      v7 = *(a2 + 8);
    }

    else
    {
      v7 = 0.0;
    }

    v8 = *(a2 + 168);
    do
    {
      v9 = a1 + v3;
      if (*(a1 + v3 + 1840) == v5 && *(v9 + 1848) <= v6)
      {
        v10 = a1 + v3;
        if (v6 <= *(a1 + v3 + 1856) && v7 >= *(v10 + 1864) + 900.0)
        {
          v11 = qword_1009F9820;
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
          {
            sub_1004276FC(v5, __p);
            v12 = __p;
            if (v18 < 0)
            {
              v12 = __p[0];
            }

            v13 = *(v9 + 1848);
            v14 = *(v10 + 1856);
            *buf = 67110402;
            v20 = v4;
            v21 = 2080;
            v22 = v12;
            v23 = 2048;
            v24 = v13;
            v25 = 2048;
            v26 = v14;
            v27 = 2048;
            v28 = v6;
            v29 = 2048;
            v30 = v8;
            _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#sp,RoseSolutionProvider::_logRangeResultSignalStrengthAnalytics: category %d (session type %s, %0.1f - %0.1f m). Range %0.2f m, soiRSSI %0.2f dBm", buf, 0x3Au);
            if (v18 < 0)
            {
              operator delete(__p[0]);
            }
          }

          *(v10 + 1864) = v7;
          v15 = a1 + v3;
          *(v15 + 1872) = v8;
          *(v15 + 1880) = *(a1 + 2224);
          v16 = [NSString stringWithUTF8String:"com.apple.nearbyd.uwb.signalStrength.referenceDistance"];
          AnalyticsSendEventLazy();
        }
      }

      ++v4;
      v3 += 48;
    }

    while (v4 != 8);
  }
}

unint64_t sub_100187F48(uint64_t a1, unsigned __int16 a2)
{
  v8 = a2;
  std::mutex::lock((a1 + 1680));
  v3 = sub_1000222CC((a1 + 1752), &v8);
  if (v3)
  {
    v4 = *(v3 + 5) & 0xFFFFFF00;
    v5 = *(v3 + 5);
    v6 = &_mh_execute_header;
  }

  else
  {
    v6 = 0;
    v5 = 0;
    v4 = 0;
  }

  std::mutex::unlock((a1 + 1680));
  return v6 | v4 | v5;
}

void sub_100187FD8(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  dispatch_assert_queue_V2(*(a1 + 1744));
  v10 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    v11 = *(a2 + 64);
    v12 = *(a2 + 112);
    v13 = *(a2 + 56);
    *buf = 134218496;
    *&buf[4] = v11;
    *&buf[12] = 1024;
    *&buf[14] = v12;
    *&buf[18] = 1024;
    *&buf[20] = v13;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#sp,computeAndEmitSensorFusionSolution(rose_data): mac_addr 0x%llx, cycle_index %d, ticket_id %d", buf, 0x18u);
  }

  if (*(a2 + 16))
  {
    sub_100497A80(a2, v53, *(a2 + 8));
    if (v53[1] == v53[0])
    {
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
      {
        sub_1004A0AE8(a2);
      }

      v50[0] = 0;
      v52 = 0;
      *a5 = 2;
      sub_1000206E0((a5 + 8), v50);
      *(a5 + 160) = 0;
      *(a5 + 208) = 0;
      if (v52 != 1)
      {
        goto LABEL_51;
      }

      v27 = v50;
      v28 = v51;
    }

    else if (sub_10047CB38(a1 + 1152, v53, *(a2 + 56)))
    {
      v14 = *(a2 + 64);
      sub_10047D0B8(a1 + 1152, v14, v41);
      if (v42 == 1)
      {
        if ((v46 & 1) == 0)
        {
          __assert_rtn("computeAndEmitSensorFusionSolution", "RoseSolutionProvider.mm", 720, "solutionAndInternals.internals.has_value()");
        }

        v15 = qword_1009F9820;
        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134219264;
          *&buf[4] = v41[1];
          *&buf[12] = 2048;
          *&buf[14] = v41[0];
          *&buf[22] = 2048;
          *&buf[24] = v41[5];
          *v59 = 2048;
          *&v59[2] = v41[6];
          *&v59[10] = 2048;
          *&v59[12] = v41[7];
          *&v59[20] = 2048;
          *&v59[22] = v14;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#sp,RoseSolutionProvider: got sensor fusion solution of ID: %llu Timestamp: %f Range: %f El: %f Az: %f, Peer: 0x%llx", buf, 0x3Eu);
        }

        if ((a3 - 5) >= 2)
        {
          v16 = 3;
        }

        else
        {
          v16 = 4;
        }

        sub_10018A5F8(buf, a2, v41, v16, &v43, *(a4 + 1777));
        v17 = *(a4 + 664);
        v81[8] = *(a4 + 648);
        v81[9] = v17;
        v18 = *(a4 + 600);
        v81[4] = *(a4 + 584);
        v81[5] = v18;
        v19 = *(a4 + 632);
        v81[6] = *(a4 + 616);
        v81[7] = v19;
        v20 = *(a4 + 568);
        v81[2] = *(a4 + 552);
        v81[3] = v20;
        v82 = *(a4 + 680);
        v21 = *(a4 + 736);
        v72 = *(a4 + 720);
        v73 = v21;
        v74 = *(a4 + 752);
        v75 = *(a4 + 768);
        v22 = *(a4 + 704);
        v70 = *(a4 + 688);
        v71 = v22;
        *(v81 + 9) = *(a4 + 865);
        v23 = *(a4 + 856);
        v80 = *(a4 + 840);
        v81[0] = v23;
        v24 = *(a4 + 792);
        v76 = *(a4 + 776);
        v77 = v24;
        v25 = *(a4 + 824);
        v78 = *(a4 + 808);
        v79 = v25;
        (*(**(a1 + 16) + 16))(*(a1 + 16), buf);
        if (*(a1 + 1792))
        {
          sub_10047CF98(a1 + 1152, v14, &v34);
          sub_1002DEBD0(*(a1 + 1792), v53, v41, &v34, &v43);
          v57 = &v34;
          sub_10018AE10(&v57);
        }

        sub_1000206E0(v38, v41);
        v34 = v43;
        v35 = v44;
        v36 = v45;
        v37 = v46;
        *a5 = 0;
        sub_1000206E0((a5 + 8), v38);
        v26 = v35;
        *(a5 + 160) = v34;
        *(a5 + 176) = v26;
        *(a5 + 192) = v36;
        *(a5 + 208) = v37;
        if (v40 == 1)
        {
          sub_10002074C(v39, v39[1]);
        }

        if (v85 == 1 && __p)
        {
          v84 = __p;
          operator delete(__p);
        }

        if (v69 == 1 && v67)
        {
          v68 = v67;
          operator delete(v67);
        }

        if (v66 == 1)
        {
          sub_10002074C(v65, v65[1]);
        }

        if (v64 == 1)
        {
          if (v62)
          {
            v63 = v62;
            operator delete(v62);
          }

          if (v60)
          {
            v61 = v60;
            operator delete(v60);
          }
        }
      }

      else
      {
        v29 = qword_1009F9820;
        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218240;
          *&buf[4] = v14;
          *&buf[12] = 2048;
          *&buf[14] = v14;
          _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "#sp,[Solution Provider] computeAndEmitSensorFusionSolution(rose_data): Failed to get filter solution for target ID %llu, Peer: 0x%llx", buf, 0x16u);
        }

        if (*(a1 + 1792))
        {
          sub_10047CF98(a1 + 1152, v14, buf);
          sub_1002DF7B8(*(a1 + 1792), v53, buf);
          *&v34 = buf;
          sub_10018AE10(&v34);
        }

        v31[0] = 0;
        v33 = 0;
        *buf = v43;
        *&buf[16] = v44;
        *v59 = v45;
        *&v59[16] = v46;
        *a5 = 5;
        sub_1000206E0((a5 + 8), v31);
        v30 = *&buf[16];
        *(a5 + 160) = *buf;
        *(a5 + 176) = v30;
        *(a5 + 192) = *v59;
        *(a5 + 208) = *&v59[16];
        if (v33 == 1)
        {
          sub_10002074C(v32, v32[1]);
        }
      }

      if (v42 != 1)
      {
        goto LABEL_51;
      }

      v27 = v41;
      v28 = v41[3];
    }

    else
    {
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
      {
        sub_1004A0A78((a2 + 56), a2);
      }

      v47[0] = 0;
      v49 = 0;
      *a5 = 4;
      sub_1000206E0((a5 + 8), v47);
      *(a5 + 160) = 0;
      *(a5 + 208) = 0;
      if (v49 != 1)
      {
        goto LABEL_51;
      }

      v27 = v47;
      v28 = v48;
    }

    sub_10002074C((v27 + 16), v28);
LABEL_51:
    *buf = v53;
    sub_10018AD30(buf);
    return;
  }

  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
  {
    sub_1004A09F0(a2);
  }

  v54[0] = 0;
  v56 = 0;
  *a5 = 3;
  sub_1000206E0((a5 + 8), v54);
  *(a5 + 160) = 0;
  *(a5 + 208) = 0;
  if (v56 == 1)
  {
    sub_10002074C(v55, v55[1]);
  }
}

void sub_10018863C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, void **a56, uint64_t a57, uint64_t a58, void *a59)
{
  STACK[0x428] = v59;
  sub_10018AE10(&STACK[0x428]);
  sub_10001EEE4(&STACK[0x430]);
  if (LOBYTE(STACK[0x208]) == 1)
  {
    sub_10002074C(&a58, a59);
  }

  a56 = &STACK[0x378];
  sub_10018AD30(&a56);
  _Unwind_Resume(a1);
}

void sub_100188784(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4)
{
  sub_10018A544(v15, a2, a3, *(a4 + 1777));
  v6 = *(a4 + 664);
  v37[8] = *(a4 + 648);
  v37[9] = v6;
  v7 = *(a4 + 600);
  v37[4] = *(a4 + 584);
  v37[5] = v7;
  v8 = *(a4 + 632);
  v37[6] = *(a4 + 616);
  v37[7] = v8;
  v9 = *(a4 + 568);
  v37[2] = *(a4 + 552);
  v37[3] = v9;
  v38 = *(a4 + 680);
  v10 = *(a4 + 736);
  v28 = *(a4 + 720);
  v29 = v10;
  v30 = *(a4 + 752);
  v31 = *(a4 + 768);
  v11 = *(a4 + 704);
  v26 = *(a4 + 688);
  v27 = v11;
  *(v37 + 9) = *(a4 + 865);
  v12 = *(a4 + 856);
  v36 = *(a4 + 840);
  v37[0] = v12;
  v13 = *(a4 + 792);
  v32 = *(a4 + 776);
  v33 = v13;
  v14 = *(a4 + 824);
  v34 = *(a4 + 808);
  v35 = v14;
  (*(**(a1 + 16) + 16))(*(a1 + 16), v15);
  if (v41 == 1 && __p)
  {
    v40 = __p;
    operator delete(__p);
  }

  if (v25 == 1 && v23)
  {
    v24 = v23;
    operator delete(v23);
  }

  if (v22 == 1)
  {
    sub_10002074C(v21, v21[1]);
  }

  if (v20 == 1)
  {
    if (v18)
    {
      v19 = v18;
      operator delete(v18);
    }

    if (v16)
    {
      v17 = v16;
      operator delete(v16);
    }
  }
}

void sub_10018893C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_10018A3BC(v15, a2, *(a3 + 1777));
  if (!*(a2 + 96))
  {
    v6 = *(a3 + 664);
    v37[8] = *(a3 + 648);
    v37[9] = v6;
    v7 = *(a3 + 600);
    v37[4] = *(a3 + 584);
    v37[5] = v7;
    v8 = *(a3 + 632);
    v37[6] = *(a3 + 616);
    v37[7] = v8;
    v9 = *(a3 + 568);
    v37[2] = *(a3 + 552);
    v37[3] = v9;
    v38 = *(a3 + 680);
    v10 = *(a3 + 736);
    v28 = *(a3 + 720);
    v29 = v10;
    v30 = *(a3 + 752);
    v31 = *(a3 + 768);
    v11 = *(a3 + 704);
    v26 = *(a3 + 688);
    v27 = v11;
    v12 = *(a3 + 856);
    v36 = *(a3 + 840);
    v37[0] = v12;
    *(v37 + 9) = *(a3 + 865);
    v13 = *(a3 + 792);
    v32 = *(a3 + 776);
    v33 = v13;
    v14 = *(a3 + 824);
    v34 = *(a3 + 808);
    v35 = v14;
  }

  (*(**(a1 + 16) + 16))(*(a1 + 16), v15);
  if (v41 == 1 && __p)
  {
    v40 = __p;
    operator delete(__p);
  }

  if (v25 == 1 && v23)
  {
    v24 = v23;
    operator delete(v23);
  }

  if (v22 == 1)
  {
    sub_10002074C(v21, v21[1]);
  }

  if (v20 == 1)
  {
    if (v18)
    {
      v19 = v18;
      operator delete(v18);
    }

    if (v16)
    {
      v17 = v16;
      operator delete(v16);
    }
  }
}

uint64_t sub_100188B00(uint64_t a1, uint64_t a2)
{
  *(a1 + 40) = *(a2 + 40);
  v4 = *(a2 + 56);
  v5 = *(a2 + 72);
  v6 = *(a2 + 88);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 88) = v6;
  *(a1 + 72) = v5;
  *(a1 + 56) = v4;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  sub_100012F38(a1 + 112, *(a2 + 112), *(a2 + 120), (*(a2 + 120) - *(a2 + 112)) >> 3);
  v7 = *(a2 + 136);
  v8 = *(a2 + 152);
  v9 = *(a2 + 168);
  *(a1 + 176) = 0;
  *(a1 + 168) = v9;
  *(a1 + 152) = v8;
  *(a1 + 136) = v7;
  *(a1 + 184) = 0;
  *(a1 + 192) = 0;
  sub_100020574(a1 + 176, *(a2 + 176), *(a2 + 184), 0x6DB6DB6DB6DB6DB7 * ((*(a2 + 184) - *(a2 + 176)) >> 3));
  memcpy((a1 + 200), (a2 + 200), 0x181uLL);
  memcpy((a1 + 592), (a2 + 592), 0x259uLL);
  result = sub_10016D798(a1 + 1200, a2 + 1200);
  *(a1 + 1816) = *(a2 + 1816);
  return result;
}

void sub_100188C20(uint64_t a1)
{
  if (*(a1 + 1808) == 1)
  {
    v2 = *(a1 + 1336);
    if (v2)
    {
      *(a1 + 1344) = v2;
      operator delete(v2);
    }

    v3 = *(a1 + 1272);
    if (v3)
    {
      *(a1 + 1280) = v3;
      operator delete(v3);
    }
  }

  v4 = *(a1 + 176);
  if (v4)
  {
    *(a1 + 184) = v4;
    operator delete(v4);
  }

  v5 = *(a1 + 112);
  if (v5)
  {
    *(a1 + 120) = v5;

    operator delete(v5);
  }
}

id sub_100188CA4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v8[0] = @"Category";
  v3 = [NSNumber numberWithInt:*(a1 + 48)];
  v9[0] = v3;
  v8[1] = @"SoiRSSI";
  v4 = [NSNumber numberWithDouble:*(a1 + 40)];
  v9[1] = v4;
  v8[2] = @"WiFi5GHz_On";
  v5 = [NSNumber numberWithBool:*(v2 + 2224)];
  v9[2] = v5;
  v6 = [NSDictionary dictionaryWithObjects:v9 forKeys:v8 count:3];

  return v6;
}

void *sub_100188DE4(void *a1)
{
  sub_100188E54(a1 + 50);
  sub_100188E54(a1 + 40);
  sub_100188E54(a1 + 30);
  sub_100188F00((a1 + 25));
  sub_100188F84((a1 + 20));
  sub_100021914((a1 + 15));
  sub_100188E54(a1 + 9);
  sub_100189188(a1 + 3);
  v2 = a1[2];
  if (v2)
  {
    sub_10000AD84(v2);
  }

  return a1;
}

uint64_t sub_100188E54(void *a1)
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
    v5 = 256;
  }

  else
  {
    if (v4 != 2)
    {
      goto LABEL_9;
    }

    v5 = 512;
  }

  a1[4] = v5;
LABEL_9:
  while (v2 != v3)
  {
    v6 = *v2++;
    operator delete(v6);
  }

  return sub_10004EE68(a1);
}

uint64_t sub_100188F00(uint64_t a1)
{
  sub_100188F3C(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_100188F3C(uint64_t a1, void **a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      sub_10002074C((v2 + 3), v2[4]);
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

uint64_t sub_100188F84(uint64_t a1)
{
  sub_100188FC0(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_100188FC0(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      sub_100189004((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

uint64_t sub_100189004(uint64_t a1)
{
  v2 = *(a1 + 576);
  if (v2)
  {
    sub_10000AD84(v2);
  }

  *(a1 + 456) = off_1009991A0;
  sub_100188E54((a1 + 400));
  sub_100188E54((a1 + 336));
  v4 = (a1 + 224);
  sub_10018907C(&v4);
  return a1;
}

void sub_10018907C(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_1001890D0(v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

uint64_t sub_1001890D0(uint64_t result, uint64_t a2)
{
  v2 = *(result + 8);
  if (v2 != a2)
  {
    v3 = v2 - 504;
    do
    {
      *(v2 - 504) = off_1009991A0;
      *(v2 - 592) = off_1009991A0;
      *(v2 - 928) = off_1009991A0;
      *(v2 - 1016) = off_1009991A0;
      v3 -= 1480;
      v2 -= 1480;
    }

    while (v2 != a2);
  }

  *(result + 8) = a2;
  return result;
}

uint64_t sub_100189188(void *a1)
{
  sub_1001891E0(a1);
  v2 = a1[1];
  v3 = a1[2];
  while (v2 != v3)
  {
    v4 = *v2++;
    operator delete(v4);
  }

  return sub_10004EE68(a1);
}

void sub_1001891E0(void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  if (v3 == v2)
  {
    v4 = a1 + 5;
  }

  else
  {
    v4 = a1 + 5;
    v5 = a1[4];
    v6 = &v2[v5 / 0x19];
    v7 = *v6 + 160 * (v5 % 0x19);
    v8 = v2[(a1[5] + v5) / 0x19] + 160 * ((a1[5] + v5) % 0x19);
    if (v7 != v8)
    {
      do
      {
        v9 = *(v7 + 17);
        if (v9)
        {
          *(v7 + 18) = v9;
          operator delete(v9);
        }

        v10 = *(v7 + 14);
        if (v10)
        {
          *(v7 + 15) = v10;
          operator delete(v10);
        }

        v11 = *(v7 + 11);
        if (v11)
        {
          *(v7 + 12) = v11;
          operator delete(v11);
        }

        v12 = *(v7 + 8);
        if (v12)
        {
          *(v7 + 9) = v12;
          operator delete(v12);
        }

        v13 = *(v7 + 5);
        if (v13)
        {
          *(v7 + 6) = v13;
          operator delete(v13);
        }

        v14 = *(v7 + 2);
        if (v14)
        {
          *(v7 + 3) = v14;
          operator delete(v14);
        }

        v7 += 160;
        if (v7 - *v6 == 4000)
        {
          v15 = v6[1];
          ++v6;
          v7 = v15;
        }
      }

      while (v7 != v8);
      v2 = a1[1];
      v3 = a1[2];
    }
  }

  *v4 = 0;
  v16 = v3 - v2;
  if (v16 >= 3)
  {
    do
    {
      operator delete(*v2);
      v17 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v16 = (v17 - v2) >> 3;
    }

    while (v16 > 2);
  }

  if (v16 == 1)
  {
    v18 = 12;
  }

  else
  {
    if (v16 != 2)
    {
      return;
    }

    v18 = 25;
  }

  a1[4] = v18;
}

uint64_t sub_10018936C(uint64_t a1)
{
  std::mutex::~mutex((a1 + 1024));
  sub_10017F048(a1 + 1000, *(a1 + 1008));
  v2 = *(a1 + 952);
  if (v2)
  {
    sub_10000AD84(v2);
  }

  sub_1001893C8(a1 + 776);
  sub_10017ECA8((a1 + 40));
  sub_10017EFC8(a1 + 8);
  return a1;
}

uint64_t sub_1001893C8(uint64_t a1)
{
  std::mutex::~mutex((a1 + 104));
  v2 = *(a1 + 96);
  *(a1 + 96) = 0;
  if (v2)
  {
    v5 = v2;
    sub_100167554(&v5);
    operator delete();
  }

  std::mutex::~mutex((a1 + 24));
  v3 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v3)
  {
    v5 = v3;
    sub_100167554(&v5);
    operator delete();
  }

  return a1;
}

uint64_t sub_100189464(uint64_t a1, __int128 *a2)
{
  *a1 = *a2;
  *(a1 + 8) = 1;
  *(a1 + 16) = *(a2 + 8);
  v3 = *(a2 + 12);
  *(a1 + 48) = 0;
  v4 = a1 + 48;
  *(a1 + 32) = 6;
  *(a1 + 36) = v3;
  *(a1 + 40) = 0;
  *(a1 + 600) = 0;
  *(a1 + 608) = 0;
  *(a1 + 752) = 0;
  *(a1 + 760) = 0;
  *(a1 + 872) = 0;
  *(a1 + 880) = 0;
  *(a1 + 928) = 0;
  *(a1 + 936) = 0;
  *(a1 + 1112) = 0;
  *(a1 + 1120) = 0;
  *(a1 + 1200) = 0;
  *(a1 + 1208) = 0;
  *(a1 + 1312) = 0;
  *(a1 + 1320) = 0;
  *(a1 + 1448) = 0;
  v5 = *a2;
  *(a1 + 1466) = *(a2 + 10);
  *(a1 + 1456) = v5;
  v7 = a2[3];
  v6 = a2[4];
  *(a1 + 1488) = a2[2];
  *(a1 + 1520) = v6;
  *(a1 + 1504) = v7;
  v8 = a2[5];
  v9 = a2[6];
  v10 = a2[7];
  *(a1 + 1584) = a2[8];
  *(a1 + 1568) = v10;
  *(a1 + 1552) = v9;
  *(a1 + 1536) = v8;
  v11 = a2[9];
  v12 = a2[10];
  v13 = a2[11];
  *(a1 + 1648) = *(a2 + 192);
  *(a1 + 1632) = v13;
  *(a1 + 1616) = v12;
  *(a1 + 1600) = v11;
  v14 = (a1 + 1656);
  *(v4 + 1624) = 0;
  *v14 = 0u;
  sub_100020A60(v14, *(a2 + 25), *(a2 + 26), 0xEEEEEEEEEEEEEEEFLL * ((*(a2 + 26) - *(a2 + 25)) >> 3));
  *(a1 + 1680) = 1;
  return a1;
}

void sub_100189590(_Unwind_Exception *a1)
{
  if (*(v1 + 872) == 1)
  {
    sub_1004A0B60(v1);
  }

  if (*(v1 + 752) == 1)
  {
    sub_10002074C(v1 + 624, *(v1 + 632));
  }

  sub_100020B80(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_1001895D0(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_100189658(result, a4);
  }

  return result;
}

void sub_100189638(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_100189B38(&a9);
  _Unwind_Resume(a1);
}

void sub_100189658(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x1AF286BCA1AF287)
  {
    sub_1001896A8(a1, a2);
  }

  sub_100019B38();
}

void sub_1001896A8(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x1AF286BCA1AF287)
  {
    operator new();
  }

  sub_100013B04();
}

uint64_t sub_100189704(uint64_t a1, __int16 *a2, __int16 *a3, uint64_t a4)
{
  v4 = a4;
  v10 = a4;
  v11 = a4;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v11;
  v9 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      sub_1001897A8(v4, v6);
      v6 += 76;
      v4 = v11 + 152;
      v11 += 152;
    }

    while (v6 != a3);
  }

  v9 = 1;
  sub_1001899C4(v8);
  return v4;
}

uint64_t sub_1001897A8(uint64_t a1, __int16 *a2)
{
  v4 = *a2;
  *(a1 + 2) = *(a2 + 2);
  *(a1 + 8) = 0;
  *a1 = v4;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  sub_100009A48(a1 + 8, *(a2 + 1), *(a2 + 2), *(a2 + 2) - *(a2 + 1));
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  sub_100009A48(a1 + 32, *(a2 + 4), *(a2 + 5), *(a2 + 5) - *(a2 + 4));
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  sub_1001898C4(a1 + 56, *(a2 + 7), *(a2 + 8), (*(a2 + 8) - *(a2 + 7)) >> 10);
  v5 = *(a2 + 5);
  v6 = *(a2 + 6);
  v7 = *(a2 + 105);
  *(a1 + 128) = 0;
  *(a1 + 105) = v7;
  *(a1 + 80) = v5;
  *(a1 + 96) = v6;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  sub_100189C1C(a1 + 128, *(a2 + 16), *(a2 + 17), (*(a2 + 17) - *(a2 + 16)) >> 5);
  return a1;
}

void sub_100189878(_Unwind_Exception *exception_object)
{
  v6 = *v4;
  if (*v4)
  {
    v1[8] = v6;
    operator delete(v6);
  }

  v7 = *v3;
  if (*v3)
  {
    v1[5] = v7;
    operator delete(v7);
  }

  v8 = *v2;
  if (*v2)
  {
    v1[2] = v8;
    operator delete(v8);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1001898C4(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_100189940(result, a4);
  }

  return result;
}

void sub_100189924(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_100189940(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 54))
  {
    sub_10018997C(a1, a2);
  }

  sub_100019B38();
}

void sub_10018997C(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 54))
  {
    operator new();
  }

  sub_100013B04();
}

uint64_t sub_1001899C4(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_100189A10(*a1, **(a1 + 16), **(a1 + 16), **(a1 + 8), **(a1 + 8));
  }

  return a1;
}

void sub_100189A10(uint64_t a1, uint64_t a2, void **a3, uint64_t a4, void **a5)
{
  if (a3 != a5)
  {
    v13[3] = v5;
    v13[4] = v6;
    v8 = a3 - 3;
    do
    {
      v13[0] = v8;
      sub_100189A94(v13);
      v9 = *(v8 - 9);
      if (v9)
      {
        *(v8 - 8) = v9;
        operator delete(v9);
      }

      v10 = *(v8 - 12);
      if (v10)
      {
        *(v8 - 11) = v10;
        operator delete(v10);
      }

      v11 = *(v8 - 15);
      if (v11)
      {
        *(v8 - 14) = v11;
        operator delete(v11);
      }

      v12 = v8 - 16;
      v8 -= 19;
    }

    while (v12 != a5);
  }
}

void sub_100189A94(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_100189AE8(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_100189AE8(uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 32)
  {
    v4 = *(i - 24);
    if (v4)
    {
      *(i - 16) = v4;
      operator delete(v4);
    }
  }

  a1[1] = v2;
}

void sub_100189B38(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_100189B8C(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_100189B8C(void ***a1)
{
  v3 = *a1;
  v2 = a1[1];
  if (v2 != *a1)
  {
    v4 = v2 - 3;
    do
    {
      v9 = v4;
      sub_100189A94(&v9);
      v5 = *(v4 - 9);
      if (v5)
      {
        *(v4 - 8) = v5;
        operator delete(v5);
      }

      v6 = *(v4 - 12);
      if (v6)
      {
        *(v4 - 11) = v6;
        operator delete(v6);
      }

      v7 = *(v4 - 15);
      if (v7)
      {
        *(v4 - 14) = v7;
        operator delete(v7);
      }

      v8 = v4 - 16;
      v4 -= 19;
    }

    while (v8 != v3);
  }

  a1[1] = v3;
}

uint64_t sub_100189C1C(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_100189CA4(result, a4);
  }

  return result;
}

void sub_100189C84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_100189A94(&a9);
  _Unwind_Resume(a1);
}

void sub_100189CA4(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    sub_100189CE0(a1, a2);
  }

  sub_100019B38();
}

void sub_100189CE0(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  sub_100013B04();
}

uint64_t sub_100189D28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v10 = a4;
  v11 = a4;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v11;
  v9 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      *v4 = *v6;
      *(v4 + 16) = 0;
      *(v4 + 24) = 0;
      *(v4 + 8) = 0;
      sub_100009A48(v4 + 8, *(v6 + 8), *(v6 + 16), *(v6 + 16) - *(v6 + 8));
      v6 += 32;
      v4 = v11 + 32;
      v11 += 32;
    }

    while (v6 != a3);
  }

  v9 = 1;
  sub_100189DE0(v8);
  return v4;
}

uint64_t sub_100189DE0(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_100189E18(a1);
  }

  return a1;
}

void sub_100189E18(uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    v3 = *(v1 - 24);
    if (v3)
    {
      *(v1 - 16) = v3;
      operator delete(v3);
    }

    v1 -= 32;
  }
}

uint64_t sub_100189E60(uint64_t a1)
{
  v3 = (a1 + 48);
  sub_100189A94(&v3);
  v3 = (a1 + 24);
  sub_100189B38(&v3);
  return a1;
}

uint64_t sub_100189EAC(uint64_t a1, uint64_t *a2, char a3)
{
  *a1 = *a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = *(a2 + 6);
  *(a1 + 32) = 5;
  *(a1 + 36) = *(a2 + 4);
  v5 = a2[4];
  *(a1 + 48) = 0;
  *(a1 + 40) = v5;
  *(a1 + 600) = 0;
  *(a1 + 608) = 0;
  *(a1 + 752) = 0;
  v6 = *a2;
  *(a1 + 768) = *(a2 + 4);
  *(a1 + 760) = v6;
  v7 = *(a2 + 1);
  v8 = *(a2 + 2);
  v9 = *(a2 + 3);
  *(a1 + 824) = *(a2 + 16);
  *(a1 + 792) = v8;
  *(a1 + 808) = v9;
  *(a1 + 776) = v7;
  *(a1 + 832) = 0;
  *(a1 + 848) = 0;
  *(a1 + 840) = 0;
  sub_10002086C(a1 + 832, a2[9], a2[10], (a2[10] - a2[9]) >> 4);
  *(a1 + 856) = *(a2 + 6);
  *(a1 + 872) = 1;
  *(a1 + 880) = 0;
  *(a1 + 928) = 0;
  *(a1 + 936) = 0;
  *(a1 + 1112) = 0;
  *(a1 + 1120) = 0;
  *(a1 + 1200) = 0;
  *(a1 + 1208) = 0;
  *(a1 + 1312) = 0;
  *(a1 + 1320) = 0;
  *(a1 + 1448) = 0;
  *(a1 + 1456) = 0;
  *(a1 + 1680) = 0;
  return a1;
}

void sub_100189FB0(_Unwind_Exception *a1)
{
  if (*(v1 + 752) == 1)
  {
    sub_10002074C(v1 + 624, *(v1 + 632));
  }

  sub_100020B80(v2);
  _Unwind_Resume(a1);
}

void sub_100189FDC(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 144) == *(a2 + 144))
  {
    if (*(a1 + 144))
    {
      *a1 = *a2;
      if (a1 != a2)
      {
        sub_10018A09C((a1 + 16), *(a2 + 16), (a2 + 24));
      }

      v4 = *(a2 + 40);
      v5 = *(a2 + 56);
      *(a1 + 72) = *(a2 + 72);
      *(a1 + 56) = v5;
      *(a1 + 40) = v4;
      v6 = *(a2 + 88);
      v7 = *(a2 + 104);
      v8 = *(a2 + 120);
      *(a1 + 136) = *(a2 + 136);
      *(a1 + 120) = v8;
      *(a1 + 104) = v7;
      *(a1 + 88) = v6;
    }
  }

  else if (*(a1 + 144))
  {
    sub_10002074C(a1 + 16, *(a1 + 24));
    *(a1 + 144) = 0;
  }

  else
  {
    sub_100498E54(a1);
    *(a1 + 144) = 1;
  }
}

uint64_t **sub_10018A09C(uint64_t **result, void *a2, void *a3)
{
  v5 = result;
  if (result[2])
  {
    v6 = *result;
    v7 = result[1];
    *result = (result + 1);
    v7[2] = 0;
    result[1] = 0;
    result[2] = 0;
    if (v6[1])
    {
      v8 = v6[1];
    }

    else
    {
      v8 = v6;
    }

    v12 = result;
    v13 = v8;
    v14 = v8;
    if (v8)
    {
      v13 = sub_10018A270(v8);
      if (a2 != a3)
      {
        v9 = a2;
        do
        {
          *(v8 + 13) = *(v9 + 13);
          sub_10018A200(v5, v8);
          v8 = v13;
          v14 = v13;
          if (v13)
          {
            v13 = sub_10018A270(v13);
          }

          v10 = v9[1];
          if (v10)
          {
            do
            {
              a2 = v10;
              v10 = *v10;
            }

            while (v10);
          }

          else
          {
            do
            {
              a2 = v9[2];
              v11 = *a2 == v9;
              v9 = a2;
            }

            while (!v11);
          }

          if (!v8)
          {
            break;
          }

          v9 = a2;
        }

        while (a2 != a3);
      }
    }

    result = sub_10018A2C4(&v12);
  }

  if (a2 != a3)
  {
    sub_10018A31C();
  }

  return result;
}

void sub_10018A1EC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10018A2C4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10018A200(uint64_t **a1, uint64_t a2)
{
  v3 = a1 + 1;
  v4 = a1[1];
  if (v4)
  {
    do
    {
      while (1)
      {
        v3 = v4;
        if (*(a2 + 26) >= *(v4 + 13))
        {
          break;
        }

        v4 = *v4;
        v5 = v3;
        if (!*v3)
        {
          goto LABEL_8;
        }
      }

      v4 = v4[1];
    }

    while (v4);
    v5 = v3 + 1;
  }

  else
  {
    v5 = a1 + 1;
  }

LABEL_8:
  sub_100036FC8(a1, v3, v5, a2);
  return a2;
}

void *sub_10018A270(uint64_t a1)
{
  result = *(a1 + 16);
  if (result)
  {
    v3 = *result;
    if (*result == a1)
    {
      *result = 0;
      while (1)
      {
        v4 = result[1];
        if (!v4)
        {
          break;
        }

        do
        {
          result = v4;
          v4 = *v4;
        }

        while (v4);
      }
    }

    else
    {
      for (result[1] = 0; v3; v3 = result[1])
      {
        do
        {
          result = v3;
          v3 = *v3;
        }

        while (v3);
      }
    }
  }

  return result;
}

uint64_t sub_10018A2C4(uint64_t a1)
{
  sub_10002074C(*a1, *(a1 + 16));
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = v2[2];
    if (v3)
    {
      do
      {
        v2 = v3;
        v3 = v3[2];
      }

      while (v3);
      *(a1 + 8) = v2;
    }

    sub_10002074C(*a1, v2);
  }

  return a1;
}

uint64_t sub_10018A3BC(uint64_t a1, uint64_t a2, char a3)
{
  *a1 = *(a2 + 48);
  *(a1 + 8) = a3;
  v4 = *(a2 + 16);
  *(a1 + 16) = *(a2 + 8);
  *(a1 + 24) = v4;
  *(a1 + 32) = 1;
  *(a1 + 36) = *(a2 + 56);
  *(a1 + 40) = *(a2 + 64);
  sub_10018A458(a1 + 48, a2);
  *(a1 + 608) = 0;
  *(a1 + 752) = 0;
  *(a1 + 760) = 0;
  *(a1 + 872) = 0;
  *(a1 + 880) = 0;
  *(a1 + 928) = 0;
  *(a1 + 936) = 0;
  *(a1 + 1112) = 0;
  *(a1 + 1120) = 0;
  *(a1 + 1200) = 0;
  *(a1 + 1208) = 0;
  *(a1 + 1312) = 0;
  *(a1 + 1320) = 0;
  *(a1 + 1448) = 0;
  *(a1 + 1456) = 0;
  *(a1 + 1680) = 0;
  return a1;
}

uint64_t sub_10018A458(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 16);
  v5 = *(a2 + 32);
  v6 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v5;
  *(a1 + 48) = v6;
  *(a1 + 16) = v4;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  sub_100012F38(a1 + 72, *(a2 + 72), *(a2 + 80), (*(a2 + 80) - *(a2 + 72)) >> 3);
  v7 = *(a2 + 96);
  v8 = *(a2 + 112);
  v9 = *(a2 + 128);
  *(a1 + 136) = 0;
  *(a1 + 128) = v9;
  *(a1 + 112) = v8;
  *(a1 + 96) = v7;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  sub_100020574(a1 + 136, *(a2 + 136), *(a2 + 144), 0x6DB6DB6DB6DB6DB7 * ((*(a2 + 144) - *(a2 + 136)) >> 3));
  memcpy((a1 + 160), (a2 + 160), 0x181uLL);
  *(a1 + 552) = 1;
  return a1;
}

void sub_10018A528(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 80) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10018A544(uint64_t a1, uint64_t a2, __int128 *a3, char a4)
{
  *a1 = *(a2 + 48);
  *(a1 + 8) = a4;
  v6 = *(a2 + 16);
  *(a1 + 16) = *(a2 + 8);
  *(a1 + 24) = v6;
  *(a1 + 32) = 1;
  *(a1 + 36) = *(a2 + 56);
  *(a1 + 40) = *(a2 + 64);
  sub_10018A458(a1 + 48, a2);
  *(a1 + 608) = 0;
  *(a1 + 752) = 0;
  *(a1 + 760) = 0;
  *(a1 + 872) = 0;
  v7 = *a3;
  v8 = a3[2];
  *(a1 + 896) = a3[1];
  *(a1 + 912) = v8;
  *(a1 + 880) = v7;
  *(a1 + 928) = 1;
  *(a1 + 936) = 0;
  *(a1 + 1112) = 0;
  *(a1 + 1120) = 0;
  *(a1 + 1200) = 0;
  *(a1 + 1208) = 0;
  *(a1 + 1312) = 0;
  *(a1 + 1320) = 0;
  *(a1 + 1448) = 0;
  *(a1 + 1456) = 0;
  *(a1 + 1680) = 0;
  return a1;
}

uint64_t sub_10018A5F8(uint64_t a1, uint64_t a2, uint64_t a3, int a4, __int128 *a5, char a6)
{
  *a1 = *(a2 + 48);
  *(a1 + 8) = a6;
  v9 = *(a2 + 16);
  *(a1 + 16) = *(a2 + 8);
  *(a1 + 24) = v9;
  *(a1 + 32) = a4;
  *(a1 + 36) = *(a2 + 56);
  *(a1 + 40) = *(a2 + 64);
  sub_10018A458(a1 + 48, a2);
  sub_100498E54(a1 + 608);
  *(a1 + 752) = 1;
  *(a1 + 760) = 0;
  *(a1 + 872) = 0;
  v10 = *a5;
  v11 = a5[2];
  *(a1 + 896) = a5[1];
  *(a1 + 912) = v11;
  *(a1 + 880) = v10;
  *(a1 + 928) = 1;
  *(a1 + 936) = 0;
  *(a1 + 1112) = 0;
  *(a1 + 1120) = 0;
  *(a1 + 1200) = 0;
  *(a1 + 1208) = 0;
  *(a1 + 1312) = 0;
  *(a1 + 1320) = 0;
  *(a1 + 1448) = 0;
  *(a1 + 1456) = 0;
  *(a1 + 1680) = 0;
  if ((a4 - 5) <= 0xFFFFFFFD)
  {
    __assert_rtn("RoseSolution", "RoseSolution.h", 116, "solution_type == RoseSolutionType::RoseRawAndSensorFusion || solution_type == RoseSolutionType::RoseRawRangeSensorFusionAngle");
  }

  return a1;
}

uint64_t sub_10018A750(uint64_t a1, __int16 a2, uint64_t a3, uint64_t *a4, __int128 *a5, char a6, double a7)
{
  *a1 = a7;
  v9 = *a4;
  *(a1 + 48) = 0;
  *(a1 + 8) = a6;
  *(a1 + 16) = v9;
  *(a1 + 24) = 1;
  *(a1 + 32) = 2;
  *(a1 + 36) = a2;
  *(a1 + 40) = a3;
  *(a1 + 600) = 0;
  sub_100498E54(a1 + 608);
  *(a1 + 752) = 1;
  *(a1 + 760) = 0;
  *(a1 + 872) = 0;
  *(a1 + 880) = 0;
  *(a1 + 928) = 0;
  v10 = *a5;
  v11 = a5[2];
  *(a1 + 952) = a5[1];
  *(a1 + 968) = v11;
  *(a1 + 936) = v10;
  v12 = a5[3];
  v13 = a5[4];
  v14 = a5[6];
  *(a1 + 1016) = a5[5];
  *(a1 + 1032) = v14;
  *(a1 + 984) = v12;
  *(a1 + 1000) = v13;
  v15 = a5[7];
  v16 = a5[8];
  v17 = a5[10];
  *(a1 + 1080) = a5[9];
  *(a1 + 1096) = v17;
  *(a1 + 1048) = v15;
  *(a1 + 1064) = v16;
  *(a1 + 1112) = 1;
  *(a1 + 1120) = 0;
  *(a1 + 1200) = 0;
  *(a1 + 1208) = 0;
  *(a1 + 1312) = 0;
  *(a1 + 1320) = 0;
  *(a1 + 1448) = 0;
  *(a1 + 1456) = 0;
  *(a1 + 1680) = 0;
  return a1;
}

void *sub_10018A840(void *a1)
{
  v2 = a1[17];
  if (v2)
  {
    a1[18] = v2;
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

  v7 = a1[2];
  if (v7)
  {
    a1[3] = v7;
    operator delete(v7);
  }

  return a1;
}

void *sub_10018A930(void *a1, unsigned int *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_1009991D0;
  sub_100171FF8(a1 + 3, *a2);
  return a1;
}

void sub_10018A9B0(std::__shared_weak_count *a1)
{
  a1->__vftable = off_1009991D0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_10018AA04(uint64_t a1)
{
  v2 = *(a1 + 240);
  if (v2)
  {
    *(a1 + 248) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 232);
  *(a1 + 232) = 0;
  if (v3)
  {
    operator delete();
  }

  std::mutex::~mutex((a1 + 152));
  v4 = *(a1 + 128);
  if (v4)
  {
    *(a1 + 136) = v4;
    operator delete(v4);
  }

  v5 = *(a1 + 120);
  *(a1 + 120) = 0;
  if (v5)
  {
    operator delete();
  }

  std::mutex::~mutex((a1 + 40));
}

__n128 sub_10018AB18(uint64_t a1, uint64_t a2)
{
  *a2 = off_100999220;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_10018AB50(void *a1)
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

uint64_t sub_10018AB98(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_10018AC60(uint64_t a1, uint64_t a2)
{
  *a2 = off_1009992E0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_10018AC98(void *a1, unsigned int *a2)
{
  v2 = a1[2];
  v3 = a1[1];
  v4 = (a1[3] + (v2 >> 1));
  if (v2)
  {
    v3 = *(*v4 + v3);
  }

  return v3(v4, *a2);
}

uint64_t sub_10018ACE4(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_10018AD30(void ***a1)
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
        v4 -= 19;
        sub_10018ADB8(v1, v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void sub_10018ADB8(uint64_t a1, void *a2)
{
  v3 = a2[15];
  if (v3)
  {
    a2[16] = v3;
    operator delete(v3);
  }

  v4 = a2[2];
  if (v4)
  {
    a2[3] = v4;

    operator delete(v4);
  }
}

void sub_10018AE10(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v3 = v1[1];
    if (v3 != v2)
    {
      v4 = v3 - 576;
      v5 = v4;
      do
      {
        *(v5 + 11) = off_1009991A0;
        *v5 = off_1009991A0;
        v6 = v5 - 8;
        v5 -= 584;
        v4 -= 584;
      }

      while (v6 != v2);
    }

    v1[1] = v2;
    operator delete(v2);
  }
}

void sub_10018AE8C(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      v6 = v4 - 128;
      do
      {
        sub_10002074C(v6, *(v6 + 8));
        v7 = v6 - 16;
        v6 -= 144;
      }

      while (v7 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void *sub_10018AF1C(void *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  sub_10018AF74(a1, *a2, (a2 + 8));
  return a1;
}

uint64_t sub_10018AF74(uint64_t result, unsigned __int16 *a2, unsigned __int16 *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = sub_10018AFFC(v5, v5 + 1, v4 + 13);
      v6 = *(v4 + 1);
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = *(v4 + 2);
          v8 = *v7 == v4;
          v4 = v7;
        }

        while (!v8);
      }

      v4 = v7;
    }

    while (v7 != a3);
  }

  return result;
}

uint64_t sub_10018AFFC(void *a1, uint64_t *a2, unsigned __int16 *a3)
{
  v3 = *sub_10018B094(a1, a2, &v6, &v5, a3);
  if (!v3)
  {
    operator new();
  }

  return v3;
}

uint64_t *sub_10018B094(void *a1, uint64_t *a2, uint64_t **a3, uint64_t *a4, unsigned __int16 *a5)
{
  v5 = a1 + 1;
  if (a1 + 1 == a2 || (v6 = *a5, v7 = *(a2 + 13), v6 < v7))
  {
    v8 = *a2;
    if (*a1 == a2)
    {
      v10 = a2;
LABEL_17:
      if (v8)
      {
        *a3 = v10;
        return v10 + 1;
      }

      else
      {
        *a3 = a2;
        return a2;
      }
    }

    if (v8)
    {
      v9 = *a2;
      do
      {
        v10 = v9;
        v9 = v9[1];
      }

      while (v9);
    }

    else
    {
      v13 = a2;
      do
      {
        v10 = v13[2];
        v14 = *v10 == v13;
        v13 = v10;
      }

      while (v14);
    }

    v15 = *a5;
    if (*(v10 + 13) < v15)
    {
      goto LABEL_17;
    }

    v16 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v17 = v16;
          v18 = *(v16 + 26);
          if (v15 >= v18)
          {
            break;
          }

          v16 = *v17;
          v5 = v17;
          if (!*v17)
          {
            goto LABEL_29;
          }
        }

        if (v18 >= v15)
        {
          break;
        }

        v5 = v17 + 1;
        v16 = v17[1];
      }

      while (v16);
    }

    else
    {
      v17 = a1 + 1;
    }

LABEL_29:
    *a3 = v17;
    return v5;
  }

  if (v7 >= v6)
  {
    *a3 = a2;
    *a4 = a2;
    return a4;
  }

  v11 = a2[1];
  if (v11)
  {
    v12 = a2[1];
    do
    {
      a4 = v12;
      v12 = *v12;
    }

    while (v12);
  }

  else
  {
    v19 = a2;
    do
    {
      a4 = v19[2];
      v14 = *a4 == v19;
      v19 = a4;
    }

    while (!v14);
  }

  if (a4 != v5 && v6 >= *(a4 + 13))
  {
    v20 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v21 = v20;
          v22 = *(v20 + 26);
          if (v6 >= v22)
          {
            break;
          }

          v20 = *v21;
          v5 = v21;
          if (!*v21)
          {
            goto LABEL_48;
          }
        }

        if (v22 >= v6)
        {
          break;
        }

        v5 = v21 + 1;
        v20 = v21[1];
      }

      while (v20);
    }

    else
    {
      v21 = a1 + 1;
    }

LABEL_48:
    *a3 = v21;
    return v5;
  }

  if (v11)
  {
    *a3 = a4;
  }

  else
  {
    *a3 = a2;
    return a2 + 1;
  }

  return a4;
}

uint64_t **sub_10018B23C(void *a1, unsigned __int16 *a2)
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

BOOL sub_10018B478()
{
  v2 = *v0;

  return os_log_type_enabled(v2, OS_LOG_TYPE_FAULT);
}

BOOL sub_10018B494()
{
  v2 = *v0;

  return os_log_type_enabled(v2, OS_LOG_TYPE_INFO);
}

void sub_10018B4C8(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x12u);
}

void sub_10018B4E8()
{
  if ((atomic_load_explicit(&qword_1009E9468, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1009E9468))
  {
    sub_100004A08(&qword_1009E9450, "com.apple.nearbyd.accessory.download");
    __cxa_atexit(&std::string::~string, &qword_1009E9450, &_mh_execute_header);

    __cxa_guard_release(&qword_1009E9468);
  }
}

void sub_10018B598()
{
  if ((atomic_load_explicit(&qword_1009E9488, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1009E9488))
  {
    sub_100004A08(&qword_1009E9470, "com.apple.nearbyd.accessory.files");
    __cxa_atexit(&std::string::~string, &qword_1009E9470, &_mh_execute_header);

    __cxa_guard_release(&qword_1009E9488);
  }
}

void sub_10018B648()
{
  if ((atomic_load_explicit(&qword_1009E94A8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1009E94A8))
  {
    sub_100004A08(byte_1009E9490, "MA_");
    __cxa_atexit(&std::string::~string, byte_1009E9490, &_mh_execute_header);

    __cxa_guard_release(&qword_1009E94A8);
  }
}

void sub_10018B6F8()
{
  if ((atomic_load_explicit(&qword_1009E94C8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1009E94C8))
  {
    sub_100004A08(byte_1009E94B0, "MB_");
    __cxa_atexit(&std::string::~string, byte_1009E94B0, &_mh_execute_header);

    __cxa_guard_release(&qword_1009E94C8);
  }
}

void sub_10018B7A8()
{
  if ((atomic_load_explicit(&qword_1009E94E8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1009E94E8))
  {
    sub_100004A08(byte_1009E94D0, "D");
    __cxa_atexit(&std::string::~string, byte_1009E94D0, &_mh_execute_header);

    __cxa_guard_release(&qword_1009E94E8);
  }
}

void sub_10018B858()
{
  if ((atomic_load_explicit(&qword_1009E9508, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1009E9508))
  {
    sub_100004A08(&qword_1009E94F0, "A");
    __cxa_atexit(&std::string::~string, &qword_1009E94F0, &_mh_execute_header);

    __cxa_guard_release(&qword_1009E9508);
  }
}

void sub_10018B908()
{
  if ((atomic_load_explicit(&qword_1009E9528, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1009E9528))
  {
    sub_100004A08(byte_1009E9510, "FAS.bin");
    __cxa_atexit(&std::string::~string, byte_1009E9510, &_mh_execute_header);

    __cxa_guard_release(&qword_1009E9528);
  }
}

void sub_10018B9B8()
{
  if ((atomic_load_explicit(&qword_1009E9548, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_1009E9548))
    {
      memset(v0, 0, 32);
      v0[2] = xmmword_100562418;
      qword_1009E9538 = 0;
      unk_1009E9540 = 0;
      qword_1009E9530 = 0;
      sub_100019AC4(&qword_1009E9530, v0, &v1, 6uLL);
      __cxa_atexit(sub_100017360, &qword_1009E9530, &_mh_execute_header);
      __cxa_guard_release(&qword_1009E9548);
    }
  }
}

void sub_10018BAAC()
{
  if ((atomic_load_explicit(&qword_1009E9F08, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1009E9F08))
  {
    sub_100004A08(&xmmword_1009E9EF0, "");
    __cxa_atexit(&std::string::~string, &xmmword_1009E9EF0, &_mh_execute_header);

    __cxa_guard_release(&qword_1009E9F08);
  }
}

void sub_10018BB5C()
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
  qword_1009EEAE0 = v3->__r_.__value_.__r.__words[2];
  xmmword_1009EEAD0 = v4;
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

  __cxa_atexit(&std::string::~string, &xmmword_1009EEAD0, &_mh_execute_header);
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
  qword_1009EEAF8 = v7->__r_.__value_.__r.__words[2];
  xmmword_1009EEAE8 = v8;
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

  __cxa_atexit(&std::string::~string, &xmmword_1009EEAE8, &_mh_execute_header);
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
  qword_1009EEB10 = v11->__r_.__value_.__r.__words[2];
  xmmword_1009EEB00 = v12;
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

  __cxa_atexit(&std::string::~string, &xmmword_1009EEB00, &_mh_execute_header);
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
  qword_1009EEB28 = v15->__r_.__value_.__r.__words[2];
  xmmword_1009EEB18 = v16;
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

  __cxa_atexit(&std::string::~string, &xmmword_1009EEB18, &_mh_execute_header);
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
  qword_1009EEB40 = v19->__r_.__value_.__r.__words[2];
  xmmword_1009EEB30 = v20;
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

  __cxa_atexit(&std::string::~string, &xmmword_1009EEB30, &_mh_execute_header);
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
  qword_1009EEB58 = v23->__r_.__value_.__r.__words[2];
  xmmword_1009EEB48 = v24;
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

  __cxa_atexit(&std::string::~string, &xmmword_1009EEB48, &_mh_execute_header);
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
  qword_1009EEB70 = v27->__r_.__value_.__r.__words[2];
  xmmword_1009EEB60 = v28;
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

  __cxa_atexit(&std::string::~string, &xmmword_1009EEB60, &_mh_execute_header);
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
  qword_1009EEB88 = v31->__r_.__value_.__r.__words[2];
  xmmword_1009EEB78 = v32;
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

  __cxa_atexit(&std::string::~string, &xmmword_1009EEB78, &_mh_execute_header);
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
  qword_1009EEBA0 = v35->__r_.__value_.__r.__words[2];
  xmmword_1009EEB90 = v36;
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

  __cxa_atexit(&std::string::~string, &xmmword_1009EEB90, &_mh_execute_header);
  objc_autoreleasePoolPop(v0);
}

void sub_10018C19C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

void sub_10018C260(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = a5;
  *a1 = off_1009994C8;
  *(a1 + 8) = off_100999568;
  *(a1 + 16) = off_1009995A8;
  *(a1 + 24) = off_1009995D0;
  *(a1 + 32) = 850045863;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0;
  *(a1 + 96) = 1018212795;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0;
  v7 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
  *(a1 + 144) = dispatch_queue_create("com.apple.RoseServiceProviderQueue", v7);

  *(a1 + 152) = v6;
  sub_100191820();
}

void sub_10018C504(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a11)
  {
    sub_10000AD84(a11);
  }

  if (a13)
  {
    sub_10000AD84(a13);
  }

  sub_10019F354(v13 + 184);
  v18 = *(v13 + 168);
  if (v18)
  {
    sub_10000AD84(v18);
  }

  std::condition_variable::~condition_variable(v15);
  std::mutex::~mutex(v14);

  _Unwind_Resume(a1);
}

void sub_10018C598(uint64_t a1)
{
  v2 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "ConfigureProxyObjects called", v7, 2u);
  }

  if ((sub_10019F390(a1 + 184, (a1 + 2992)) & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Failed to setup proxy objects");
  }

  v3 = *(a1 + 2992);
  v4 = *(a1 + 3000);
  v5 = a1 + 464;
  std::mutex::lock((v3 + 24));
  *(v3 + 88) = v5;
  std::mutex::unlock((v3 + 24));
  std::mutex::lock((v4 + 24));
  *(v4 + 88) = v5;
  std::mutex::unlock((v4 + 24));
}

uint64_t sub_10018C6A0(uint64_t a1)
{
  *a1 = off_1009994C8;
  *(a1 + 8) = off_100999568;
  *(a1 + 16) = off_1009995A8;
  *(a1 + 24) = off_1009995D0;
  sub_100183F64(a1 + 464);
  sub_10019F354(a1 + 184);
  v2 = *(a1 + 168);
  if (v2)
  {
    sub_10000AD84(v2);
  }

  std::condition_variable::~condition_variable((a1 + 96));
  std::mutex::~mutex((a1 + 32));
  return a1;
}

void sub_10018C798(uint64_t a1)
{
  sub_10018C6A0(a1);

  operator delete();
}

void sub_10018C7D0(uint64_t a1)
{
  sub_10018C6A0(a1 - 8);

  operator delete();
}

void sub_10018C80C(uint64_t a1)
{
  sub_10018C6A0(a1 - 16);

  operator delete();
}

void sub_10018C848(uint64_t a1)
{
  sub_10018C6A0(a1 - 24);

  operator delete();
}

uint64_t sub_10018C884(uint64_t a1)
{
  v2 = *(a1 + 144);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10018C9C8;
  v4[3] = &unk_100998810;
  v4[4] = a1;
  v4[5] = a1;
  dispatch_async(v2, v4);
  (*(**(a1 + 3040) + 16))(*(a1 + 3040));
  (*(**(a1 + 3048) + 16))(*(a1 + 3048));
  (*(**(a1 + 3056) + 16))(*(a1 + 3056));
  (*(**(a1 + 3064) + 16))(*(a1 + 3064));
  return (*(**(a1 + 3072) + 16))(*(a1 + 3072));
}

void sub_10018C9C8(uint64_t a1)
{
  if ((sub_10019F4C4(*(a1 + 32) + 184) & 1) == 0)
  {
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004A0B90();
    }

    v2 = *(a1 + 40);
    atomic_store(3u, (v2 + 3084));
    v3 = *(v2 + 152);
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_100191600;
    v4[3] = &unk_100998810;
    v4[4] = v2;
    v4[5] = 0x100000003;
    dispatch_async(v3, v4);
  }
}

uint64_t sub_10018CA94(void **a1)
{
  (*(*a1[380] + 24))(a1[380]);
  (*(*a1[381] + 24))(a1[381]);
  (*(*a1[382] + 24))(a1[382]);
  (*(*a1[383] + 24))(a1[383]);
  v2 = *(*a1[384] + 24);

  return v2();
}

void sub_10018CB88(uint64_t a1@<X0>, const void *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = atomic_load((a1 + 3084));
  v5 = v4 > 4;
  v6 = (1 << v4) & 0x19;
  if (!v5 && v6 != 0)
  {
    sub_100004A08(__src, "Service is not ready.");
    *buf = 109;
    if (SHIBYTE(__src[2]) < 0)
    {
      sub_1000056BC(&v52, __src[0], __src[1]);
      v8 = *buf;
    }

    else
    {
      v52 = *__src;
      v53 = __src[2];
      v8 = 109;
    }

    v46 = v8;
    *__p = v52;
    v48 = v53;
    v52 = 0uLL;
    v53 = 0;
    v49 = 1;
    *(a3 + 8) = 0;
    *(a3 + 712) = 0;
    *(a3 + 720) = 1;
    sub_100191634((a3 + 728), &v46);
    if (v49 == 1 && SHIBYTE(v48) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v53) < 0)
    {
      operator delete(v52);
    }

    if ((SHIBYTE(__src[2]) & 0x80000000) == 0)
    {
      return;
    }

    v9 = __src[0];
    goto LABEL_15;
  }

  sub_1001A7348(*(a1 + 160), a2, __src);
  if (LOBYTE(__src[88]) != 1)
  {
    sub_100004A08(v35, "fServiceRequestsDatabase->insertServiceRequest failed.");
    *buf = 999;
    if (SHIBYTE(v36) < 0)
    {
      sub_1000056BC(&v52, v35[0], v35[1]);
      v23 = *buf;
    }

    else
    {
      v52 = *v35;
      v53 = v36;
      v23 = 999;
    }

    v27 = v23;
    *v28 = v52;
    v29 = v53;
    v52 = 0uLL;
    v53 = 0;
    v30 = 1;
    *(a3 + 8) = 0;
    *(a3 + 712) = 0;
    *(a3 + 720) = 1;
    sub_100191634((a3 + 728), &v27);
    if (v30 == 1 && SHIBYTE(v29) < 0)
    {
      operator delete(v28[0]);
    }

    if (SHIBYTE(v53) < 0)
    {
      operator delete(v52);
    }

    if ((SHIBYTE(v36) & 0x80000000) == 0)
    {
      return;
    }

    v9 = v35[0];
LABEL_15:
    operator delete(v9);
    return;
  }

  v11 = qword_1009F9820;
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    if ((__src[88] & 1) == 0)
    {
      sub_1000195BC();
    }

    *buf = 67109120;
    *&buf[4] = LOWORD(__src[0]);
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "[RoseServiceProvider] will ignore any RequestInvalidated notifications for ticket ID: %d", buf, 8u);
  }

  if ((__src[88] & 1) == 0)
  {
    sub_1000195BC();
  }

  atomic_store(LOWORD(__src[0]), (a1 + 3092));
  atomic_store(0, (a1 + 3080));
  __lk.__m_ = (a1 + 32);
  __lk.__owns_ = 1;
  std::mutex::lock((a1 + 32));
  if ((__src[88] & 1) == 0)
  {
    sub_1000195BC();
  }

  memcpy(v55, __src, sizeof(v55));
  v12 = *(a1 + 144);
  *buf = _NSConcreteStackBlock;
  *&v52 = 3221225472;
  *(&v52 + 1) = sub_10018E200;
  v53 = &unk_100999618;
  v54 = a1;
  dispatch_async(v12, buf);
  v13.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_ + 5000000000;
  do
  {
    if (atomic_load((a1 + 3080)))
    {
      goto LABEL_41;
    }

    if (std::chrono::steady_clock::now().__d_.__rep_ >= v13.__d_.__rep_)
    {
      break;
    }

    v15.__d_.__rep_ = v13.__d_.__rep_ - std::chrono::steady_clock::now().__d_.__rep_;
    if (v15.__d_.__rep_ >= 1)
    {
      std::chrono::steady_clock::now();
      v16.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
      if (!v16.__d_.__rep_)
      {
        v17 = 0;
        goto LABEL_37;
      }

      if (v16.__d_.__rep_ < 1)
      {
        if (v16.__d_.__rep_ < 0xFFDF3B645A1CAC09)
        {
          v17 = 0x8000000000000000;
          goto LABEL_37;
        }
      }

      else if (v16.__d_.__rep_ > 0x20C49BA5E353F7)
      {
        v17 = 0x7FFFFFFFFFFFFFFFLL;
        goto LABEL_35;
      }

      v17 = 1000 * v16.__d_.__rep_;
LABEL_35:
      if (v17 > (v15.__d_.__rep_ ^ 0x7FFFFFFFFFFFFFFFLL))
      {
        v18.__d_.__rep_ = 0x7FFFFFFFFFFFFFFFLL;
LABEL_38:
        std::condition_variable::__do_timed_wait((a1 + 96), &__lk, v18);
        std::chrono::steady_clock::now();
        continue;
      }

LABEL_37:
      v18.__d_.__rep_ = v17 + v15.__d_.__rep_;
      goto LABEL_38;
    }
  }

  while (std::chrono::steady_clock::now().__d_.__rep_ < v13.__d_.__rep_);
  if (atomic_load((a1 + 3080)))
  {
LABEL_41:
    v20 = atomic_load((a1 + 3080));
    if (v20 == 1)
    {
      atomic_store(0xFFFFFFFF, (a1 + 3092));
      v21 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "registerForService: fNewRequestSuccess success is true.", buf, 2u);
      }

      memcpy((a3 + 8), __src, 0x2C8uLL);
      v41[0] = 0;
      v44 = 0;
      *(a3 + 720) = 1;
      sub_100191634((a3 + 728), v41);
      if (v44 == 1 && v43 < 0)
      {
        v22 = v42;
LABEL_78:
        operator delete(v22);
        goto LABEL_79;
      }

      goto LABEL_79;
    }

    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004A0BCC();
    }

    sub_100004A08(v35, "ingestServiceRequest failed");
    *buf = 999;
    if (SHIBYTE(v36) < 0)
    {
      sub_1000056BC(&v52, v35[0], v35[1]);
      v24 = *buf;
    }

    else
    {
      v52 = *v35;
      v53 = v36;
      v24 = 999;
    }

    v37 = v24;
    v38 = v52;
    v39 = v53;
    v52 = 0uLL;
    v53 = 0;
    v40 = 1;
    *(a3 + 8) = 0;
    *(a3 + 712) = 0;
    *(a3 + 720) = 1;
    sub_100191634((a3 + 728), &v37);
    if (v40 == 1 && SHIBYTE(v39) < 0)
    {
      v26 = v38;
      goto LABEL_73;
    }
  }

  else
  {
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004A0C08();
    }

    sub_100004A08(v35, "Timed out while waiting for ingestServiceRequest to complete");
    *buf = 110;
    if (SHIBYTE(v36) < 0)
    {
      sub_1000056BC(&v52, v35[0], v35[1]);
      v25 = *buf;
    }

    else
    {
      v52 = *v35;
      v53 = v36;
      v25 = 110;
    }

    v31 = v25;
    *v32 = v52;
    v33 = v53;
    v52 = 0uLL;
    v53 = 0;
    v34 = 1;
    *(a3 + 8) = 0;
    *(a3 + 712) = 0;
    *(a3 + 720) = 1;
    sub_100191634((a3 + 728), &v31);
    if (v34 == 1 && SHIBYTE(v33) < 0)
    {
      v26 = v32[0];
LABEL_73:
      operator delete(v26);
    }
  }

  if (SHIBYTE(v53) < 0)
  {
    operator delete(v52);
  }

  if (SHIBYTE(v36) < 0)
  {
    v22 = v35[0];
    goto LABEL_78;
  }

LABEL_79:
  if (__lk.__owns_)
  {
    std::mutex::unlock(__lk.__m_);
  }
}

void sub_10018D214(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, std::mutex *a36, char a37)
{
  if (a25 < 0)
  {
    operator delete(__p);
  }

  if (a37 == 1)
  {
    std::mutex::unlock(a36);
  }

  _Unwind_Resume(a1);
}

void sub_10018D374(uint64_t a1, int a2, int a3)
{
  sub_1001A70DC(*(a1 + 160), a2, v10);
  if (v13)
  {
    if (v12 != 1 || a3 == 0)
    {
      if ((v11 - 1) > 0xB)
      {
        v7 = 0;
      }

      else
      {
        v7 = dword_100562EF4[v11 - 1];
      }

      Current = CFAbsoluteTimeGetCurrent();
      sub_1001EA1BC(v7, a2, a3, Current);
      if (!sub_1001A7768(*(a1 + 160), a2) && os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
      {
        sub_1004A0CB4();
      }
    }

    else if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004A0D28();
    }
  }

  else if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
  {
    sub_1004A0C44();
  }
}

void sub_10018D4D0(uint64_t a1@<X0>, __int16 a2@<W1>, __int128 *a3@<X2>, uint64_t a4@<X8>)
{
  v5 = atomic_load((a1 + 3084));
  v6 = v5 > 4;
  v7 = (1 << v5) & 0x19;
  if (!v6 && v7 != 0)
  {
    sub_100004A08(buf, "Service is not ready.");
    v41 = 109;
    if ((buf[23] & 0x80000000) != 0)
    {
      sub_1000056BC(&v42, *buf, *&buf[8]);
      v9 = v41;
    }

    else
    {
      v42 = *buf;
      v43 = *&buf[16];
      v9 = 109;
    }

    __p = v42;
    v36 = v9;
    v38 = v43;
    v42 = 0uLL;
    v43 = 0;
    v39 = 1;
    *(a4 + 8) = 0;
    *(a4 + 720) = 0;
    sub_100191634((a4 + 728), &v36);
    if (v39 == 1 && SHIBYTE(v38) < 0)
    {
      operator delete(__p);
    }

    if (SHIBYTE(v43) < 0)
    {
      operator delete(v42);
    }

    if ((buf[23] & 0x80000000) != 0)
    {
      v10 = *buf;
LABEL_15:
      operator delete(v10);
      return;
    }

    return;
  }

  sub_1001A70DC(*(a1 + 160), a2, &v41);
  if (v44 != 1)
  {
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004A0D98();
    }

    sub_100004A08(&v28, "Could not find ticket id in fServiceRequestsDatabase.");
    *buf = 108;
    if (SHIBYTE(v29) < 0)
    {
      sub_1000056BC(&buf[8], v28, *(&v28 + 1));
      v17 = *buf;
    }

    else
    {
      *&buf[8] = v28;
      v31 = v29;
      v17 = 108;
    }

    v20 = v17;
    v21 = *&buf[8];
    v22 = v31;
    *&buf[8] = 0;
    *&buf[16] = 0;
    v31 = 0;
    v23 = 1;
    *(a4 + 8) = 0;
    *(a4 + 720) = 0;
    sub_100191634((a4 + 728), &v20);
    if (v23 == 1 && SHIBYTE(v22) < 0)
    {
      v19 = v21;
LABEL_40:
      operator delete(v19);
    }

LABEL_41:
    if (SHIBYTE(v31) < 0)
    {
      operator delete(*&buf[8]);
    }

    if (SHIBYTE(v29) < 0)
    {
      v10 = v28;
      goto LABEL_15;
    }

    return;
  }

  if (v41 == 1)
  {
    v14 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "[Warning] Got trigger start, but state is ServiceRequestState::Active. Proceeding to restart.", buf, 2u);
    }
  }

  v15 = *(a1 + 160);
  v40[0] = off_1009999C0;
  v40[1] = a3;
  v40[3] = v40;
  v16 = sub_1001A71EC(v15, a2, v40);
  sub_100191A9C(v40);
  if (!v16)
  {
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004A0E08();
    }

    sub_100004A08(&v28, "Error updating fServiceRequestsDatabase entry.");
    *buf = 999;
    if (SHIBYTE(v29) < 0)
    {
      sub_1000056BC(&buf[8], v28, *(&v28 + 1));
      v18 = *buf;
    }

    else
    {
      *&buf[8] = v28;
      v31 = v29;
      v18 = 999;
    }

    v33 = *&buf[8];
    v32 = v18;
    v34 = v31;
    *&buf[8] = 0;
    *&buf[16] = 0;
    v31 = 0;
    v35 = 1;
    *(a4 + 8) = 0;
    *(a4 + 720) = 0;
    sub_100191634((a4 + 728), &v32);
    if (v35 == 1 && SHIBYTE(v34) < 0)
    {
      v19 = v33;
      goto LABEL_40;
    }

    goto LABEL_41;
  }

  sub_10019FC9C(a1 + 184, a2, a3);
  v24[0] = 0;
  v27 = 0;
  *(a4 + 8) = 1;
  *(a4 + 720) = 0;
  sub_100191634((a4 + 728), v24);
  if (v27 == 1 && v26 < 0)
  {
    v10 = v25;
    goto LABEL_15;
  }
}

void sub_10018D8D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a25 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_10018D9CC(uint64_t a1@<X0>, __int16 a2@<W1>, uint64_t a3@<X8>)
{
  sub_1001A70DC(*(a1 + 160), a2, v27);
  if (v28 == 1)
  {
    if (v27[0])
    {
      sub_1001A01AC(a1 + 184, a2);
      v14[0] = 0;
      v17 = 0;
      *(a3 + 8) = 1;
      *(a3 + 720) = 0;
      sub_100191634((a3 + 728), v14);
      if (v17 == 1 && v16 < 0)
      {
        v6 = v15;
LABEL_27:
        operator delete(v6);
        return;
      }

      return;
    }

    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004A0E44();
    }

    sub_100004A08(v18, "Got trigger stop, but state is ServiceRequestState::Inactive.");
    v20 = 111;
    if (SHIBYTE(v19) < 0)
    {
      sub_1000056BC(&v21, v18[0], v18[1]);
      v8 = v20;
    }

    else
    {
      v21 = *v18;
      v22 = v19;
      v8 = 111;
    }

    v23 = v8;
    *__p = v21;
    v25 = v22;
    v21 = 0uLL;
    v22 = 0;
    v26 = 1;
    *(a3 + 8) = 0;
    *(a3 + 720) = 0;
    sub_100191634((a3 + 728), &v23);
    if (v26 == 1 && SHIBYTE(v25) < 0)
    {
      v9 = __p[0];
      goto LABEL_22;
    }
  }

  else
  {
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004A0D98();
    }

    sub_100004A08(v18, "Could not find ticket id in fServiceRequestsDatabase.");
    v20 = 108;
    if (SHIBYTE(v19) < 0)
    {
      sub_1000056BC(&v21, v18[0], v18[1]);
      v7 = v20;
    }

    else
    {
      v21 = *v18;
      v22 = v19;
      v7 = 108;
    }

    v10 = v7;
    v11 = v21;
    v12 = v22;
    v21 = 0uLL;
    v22 = 0;
    v13 = 1;
    *(a3 + 8) = 0;
    *(a3 + 720) = 0;
    sub_100191634((a3 + 728), &v10);
    if (v13 == 1 && SHIBYTE(v12) < 0)
    {
      v9 = v11;
LABEL_22:
      operator delete(v9);
    }
  }

  if (SHIBYTE(v22) < 0)
  {
    operator delete(v21);
  }

  if (SHIBYTE(v19) < 0)
  {
    v6 = v18[0];
    goto LABEL_27;
  }
}

void sub_10018DC44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, char a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, uint64_t a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44, char a45)
{
  if (a30 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10018DCE0(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v6 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v23 = a2;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "RoseServiceProvider::unregisterForService ticket: %d", buf, 8u);
  }

  sub_1001A70DC(*(a1 + 160), a2, buf);
  if (v24 == 1)
  {
    sub_1001A0620(a1 + 184, a2);
    v18[0] = 0;
    v21 = 0;
    *(a3 + 8) = 1;
    *(a3 + 720) = 0;
    sub_100191634((a3 + 728), v18);
    if (v21 == 1 && v20 < 0)
    {
      v7 = v19;
LABEL_19:
      operator delete(v7);
    }
  }

  else
  {
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004A0E80();
    }

    sub_100004A08(v9, "Ticket ID not found in requests database.");
    v11 = 108;
    if (SHIBYTE(v10) < 0)
    {
      sub_1000056BC(&v12, v9[0], v9[1]);
      v8 = v11;
    }

    else
    {
      v12 = *v9;
      v13 = v10;
      v8 = 108;
    }

    v14 = v8;
    *__p = v12;
    v16 = v13;
    v12 = 0uLL;
    v13 = 0;
    v17 = 1;
    *(a3 + 8) = 0;
    *(a3 + 720) = 0;
    sub_100191634((a3 + 728), &v14);
    if (v17 == 1 && SHIBYTE(v16) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v13) < 0)
    {
      operator delete(v12);
    }

    if (SHIBYTE(v10) < 0)
    {
      v7 = v9[0];
      goto LABEL_19;
    }
  }
}

void sub_10018DEE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, char a38)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10018DF58(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 160);
  v4[0] = off_100999A50;
  v4[1] = a2;
  v4[3] = v4;
  sub_1001A72A0(v2, v4);
  return sub_100191C54(v4);
}

void sub_10018DFE0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100191C54(va);
  _Unwind_Resume(a1);
}

void sub_10018DFF4(uint64_t a1, __int16 *a2)
{
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
  {
    sub_1004A0EF0();
  }

  v11 = *a2;
  v13 = 0;
  v14 = 0;
  v12 = 0;
  sub_100009A48(&v12, *(a2 + 1), *(a2 + 2), *(a2 + 2) - *(a2 + 1));
  v15 = *(a2 + 2);
  v4 = *(a1 + 152);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3321888768;
  block[2] = sub_10018E138;
  block[3] = &unk_1009995E8;
  block[4] = a1;
  v6 = v11;
  v8 = 0;
  v9 = 0;
  __p = 0;
  sub_100009A48(&__p, v12, v13, v13 - v12);
  v10 = v15;
  dispatch_async(v4, block);
  if (__p)
  {
    v8 = __p;
    operator delete(__p);
  }

  if (v12)
  {
    v13 = v12;
    operator delete(v12);
  }
}

void sub_10018E11C(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 72);
  if (v3)
  {
    *(v1 - 64) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10018E174(uint64_t a1, uint64_t a2)
{
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
  {
    sub_1004A0F30();
  }

  result = *(a1 + 3072);
  if (result)
  {
    return (*(*result + 32))(result, a2);
  }

  return result;
}

void sub_10018E210(uint64_t a1, _WORD *a2)
{
  v4 = atomic_load((a1 + 3084));
  v5 = v4 >= 4;
  v7 = v4 == 4;
  v6 = (1 << v4) & 0x19;
  v7 = !v7 && v5 || v6 == 0;
  if (v7)
  {
    sub_10018F150();
    v8 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[RoseServiceProvider] Service request passed prelimenary checks, passing to the scheduler.", v9, 2u);
    }

    sub_10019F7C8(a1 + 184, a2);
  }

  else
  {
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004A0F70();
    }

    v10 = *a2;
    v11 = 8;
    sub_1001A74B8(*(a1 + 160), v10);
    sub_10018F0B4(a1, &v10);
  }
}

void sub_10018E310(uint64_t a1, __int128 *a2)
{
  v4 = a2[1];
  v28 = *a2;
  v29 = v4;
  v30 = a2[2];
  sub_100020458(v31, (a2 + 3));
  sub_1000206E0(v37, (a2 + 38));
  sub_1000207A0(v40, a2 + 95);
  memcpy(v44, a2 + 55, sizeof(v44));
  sub_10002096C(v45, a2 + 91);
  v5 = *(a1 + 152);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3321888768;
  v7 = v28;
  v6[2] = sub_10018E654;
  v6[3] = &unk_100999638;
  v6[4] = a1;
  v8 = v29;
  v9 = v30;
  sub_100020458(&v10, v31);
  sub_1000206E0(v16, v37);
  sub_1000207A0(&v19, v40);
  memcpy(v23, v44, sizeof(v23));
  sub_10002096C(&v24, v45);
  dispatch_async(v5, v6);
  if (v27 == 1 && __p)
  {
    v26 = __p;
    operator delete(__p);
  }

  if (v22 == 1 && v20)
  {
    v21 = v20;
    operator delete(v20);
  }

  if (v18 == 1)
  {
    sub_10002074C(v17, v17[1]);
  }

  if (v15 == 1)
  {
    if (v13)
    {
      v14 = v13;
      operator delete(v13);
    }

    if (v11)
    {
      v12 = v11;
      operator delete(v11);
    }
  }

  if (v48 == 1 && v46)
  {
    v47 = v46;
    operator delete(v46);
  }

  if (v43 == 1 && v41)
  {
    v42 = v41;
    operator delete(v41);
  }

  if (v39 == 1)
  {
    sub_10002074C(v38, v38[1]);
  }

  if (v36 == 1)
  {
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
  }
}

void sub_10018E588(_Unwind_Exception *a1)
{
  if (LOBYTE(STACK[0x390]) == 1)
  {
    v3 = STACK[0x368];
    if (STACK[0x368])
    {
      STACK[0x370] = v3;
      operator delete(v3);
    }
  }

  if (LOBYTE(STACK[0x318]) == 1)
  {
    sub_10002074C(&STACK[0x298], STACK[0x2A0]);
  }

  sub_100020B80(v1 + 88);
  sub_10001EEE4(&STACK[0x6C0]);
  _Unwind_Resume(a1);
}

__n128 sub_10018E690(uint64_t a1, __int128 *a2)
{
  v2 = a2[6];
  v18 = a2[7];
  v3 = a2[9];
  v19 = a2[8];
  v20 = v3;
  v21 = a2[10];
  v4 = a2[2];
  v5 = a2[4];
  v6 = a2[5];
  v14 = a2[3];
  v15 = v5;
  v16 = v6;
  v17 = v2;
  v7 = a2[1];
  v11 = *a2;
  v12 = v7;
  v13 = v4;
  v8 = *(a1 + 152);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10018E740;
  block[3] = &unk_100998F48;
  block[4] = a1;
  dispatch_async(v8, block);
  return result;
}

void sub_10018E774(uint64_t a1, __int128 *a2)
{
  v2 = a2[6];
  v18 = a2[7];
  v3 = a2[9];
  v19 = a2[8];
  v20 = v3;
  v21 = a2[10];
  v4 = a2[2];
  v5 = a2[4];
  v6 = a2[5];
  v14 = a2[3];
  v15 = v5;
  v16 = v6;
  v17 = v2;
  v7 = a2[1];
  v11 = *a2;
  v12 = v7;
  v8 = a1 - 8;
  v13 = v4;
  v9 = *(a1 + 144);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10018E740;
  block[3] = &unk_100998F48;
  block[4] = v8;
  dispatch_async(v9, block);
}

void sub_10018E824(uint64_t a1, __int128 *a2)
{
  v2 = a2[1];
  v5 = *a2;
  v6 = v2;
  v7 = a2[2];
  v3 = *(a1 + 152);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10018E8A8;
  block[3] = &unk_100999668;
  block[4] = a1;
  dispatch_async(v3, block);
}

void sub_10018E8DC(uint64_t a1, __int128 *a2)
{
  v2 = a2[1];
  v6 = *a2;
  v7 = v2;
  v3 = a1 - 8;
  v8 = a2[2];
  v4 = *(a1 + 144);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10018E8A8;
  block[3] = &unk_100999668;
  block[4] = v3;
  dispatch_async(v4, block);
}

void sub_10018E960(uint64_t a1, __int128 *a2)
{
  v2 = a2[1];
  v6 = *a2;
  v7 = v2;
  v3 = a2[3];
  v8 = a2[2];
  v9 = v3;
  v4 = *(a1 + 152);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10018E9E4;
  block[3] = &unk_100999688;
  block[4] = a1;
  dispatch_async(v4, block);
}

void sub_10018EA18(uint64_t a1, __int128 *a2)
{
  v2 = a2[1];
  v7 = *a2;
  v8 = v2;
  v3 = a2[3];
  v9 = a2[2];
  v10 = v3;
  v4 = a1 - 8;
  v5 = *(a1 + 144);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10018E9E4;
  block[3] = &unk_100999688;
  block[4] = v4;
  dispatch_async(v5, block);
}

void sub_10018EA9C(uint64_t a1, __int128 *a2)
{
  v21 = *a2;
  v22 = *(a2 + 16);
  sub_1001916EC(v23, a2 + 24);
  v32 = *(a2 + 168);
  v33 = *(a2 + 184);
  *v34 = *(a2 + 200);
  *&v34[13] = *(a2 + 213);
  v28 = *(a2 + 104);
  v29 = *(a2 + 120);
  v30 = *(a2 + 136);
  v31 = *(a2 + 152);
  v27 = *(a2 + 88);
  v4 = *(a1 + 144);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3321888768;
  block[2] = sub_10018EC68;
  block[3] = &unk_1009996A8;
  block[4] = a1;
  v6 = v21;
  v7 = v22;
  sub_1001916EC(&v8, v23);
  v19 = v33;
  *v20 = *v34;
  *&v20[13] = *&v34[13];
  v15 = v29;
  v16 = v30;
  v18 = v32;
  v17 = v31;
  v14 = v28;
  v13 = v27;
  dispatch_async(v4, block);
  if (v12 == 1 && v11 == 1 && v10 < 0)
  {
    operator delete(__p);
  }

  if (v26 == 1 && v25 == 1 && v24 < 0)
  {
    operator delete(v23[2]);
  }
}

void sub_10018EC48(_Unwind_Exception *exception_object)
{
  if (*(v1 - 176) == 1)
  {
    sub_1004A0FAC(v1 - 256);
  }

  _Unwind_Resume(exception_object);
}

void sub_10018EC78(uint64_t a1, uint64_t a2)
{
  v4 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v9[0]) = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[RoseServiceProvider] _handleSchedulerUpdate", v9, 2u);
  }

  v5 = *a2;
  if (*a2 > 3)
  {
    switch(v5)
    {
      case 4:
        if ((*(a2 + 120) & 1) == 0)
        {
          sub_1004A1038();
        }

        v6 = *(a2 + 116);
        v7 = *(a1 + 152);
        v9[0] = _NSConcreteStackBlock;
        v9[1] = 3221225472;
        v9[2] = sub_10018F96C;
        v9[3] = &unk_100998F28;
        v9[4] = a1;
        v10 = v6;
        dispatch_async(v7, v9);
        break;
      case 5:
        if ((*(a2 + 176) & 1) == 0)
        {
          sub_1004A100C();
        }

        sub_100190C94(a1, a2 + 128);
        break;
      case 6:
        if ((*(a2 + 220) & 1) == 0)
        {
          sub_1004A0FE0();
        }

        sub_10018F4F4(a1, (a2 + 184));
        break;
    }
  }

  else if (v5 <= 1)
  {
    if (v5 == 1)
    {
      if ((*(a2 + 16) & 1) == 0)
      {
        sub_1004A10BC();
      }

      sub_10018FD40(a1, (a2 + 4));
    }

    else if (!v5)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Unspecified scheduler update type");
    }
  }

  else if (v5 == 2)
  {
    if ((*(a2 + 80) & 1) == 0)
    {
      sub_1004A1090();
    }

    sub_1001907F4(a1, a2 + 24);
  }

  else if (v5 == 3)
  {
    if ((*(a2 + 112) & 1) == 0)
    {
      sub_1004A1064();
    }

    sub_10018F9A0(a1, a2 + 88);
  }
}

__n128 sub_10018EE78(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 40) = v4;
  sub_1001916EC(a1 + 64, a2 + 64);
  *(a1 + 128) = *(a2 + 128);
  v5 = *(a2 + 144);
  v6 = *(a2 + 160);
  v7 = *(a2 + 192);
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 192) = v7;
  *(a1 + 144) = v5;
  *(a1 + 160) = v6;
  result = *(a2 + 208);
  v9 = *(a2 + 224);
  v10 = *(a2 + 240);
  *(a1 + 253) = *(a2 + 253);
  *(a1 + 224) = v9;
  *(a1 + 240) = v10;
  *(a1 + 208) = result;
  return result;
}

void sub_10018EEE8(uint64_t a1)
{
  if (*(a1 + 120) == 1 && *(a1 + 104) == 1 && *(a1 + 103) < 0)
  {
    operator delete(*(a1 + 80));
  }
}

void sub_10018EF14(uint64_t a1, uint64_t a2)
{
  if (!*(a1 + 176))
  {
    sub_1004A10E8();
  }

  *v10 = *a2;
  *&v10[13] = *(a2 + 13);
  sub_100191634(v11, a2 + 24);
  v3 = *(a1 + 152);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3321888768;
  block[2] = sub_10018F044;
  block[3] = &unk_1009996D8;
  block[4] = a1;
  *v5 = *v10;
  *&v5[13] = *&v10[13];
  sub_100191634(v6, v11);
  dispatch_async(v3, block);
  if (v9 == 1 && v8 < 0)
  {
    operator delete(__p);
  }

  if (v14 == 1 && v13 < 0)
  {
    operator delete(v12);
  }
}

void sub_10018F01C(_Unwind_Exception *exception_object)
{
  if (*(v1 - 40) == 1 && *(v1 - 41) < 0)
  {
    operator delete(*(v1 - 64));
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_10018F078(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 53) = *(a2 + 53);
  *(a1 + 40) = v2;
  return sub_100191634((a1 + 64), a2 + 64);
}

void sub_10018F094(uint64_t a1)
{
  if (*(a1 + 96) == 1 && *(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }
}

void sub_10018F0B4(uint64_t a1, uint64_t *a2)
{
  v2[0] = *a2;
  v3 = 1;
  v4 = *a2;
  v5 = *(a2 + 2);
  v6 = 1;
  v7 = 0;
  v10 = 0;
  sub_10018EF14(a1, v2);
  if (v10 == 1 && v9 < 0)
  {
    operator delete(__p);
  }
}

void sub_10018F128(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19)
{
  if (a19 == 1 && a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10018F150()
{
  v0 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_DEFAULT, "RoseServiceProvider::validateServiceRequest", v2, 2u);
  }

  return 1;
}

uint64_t sub_10018F1BC(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 176);
  v3 = 1;
  return (*(*v1 + 56))(v1, &v3);
}

void sub_10018F214(uint64_t a1, uint64_t a2)
{
  if ((*(a2 + 52) & 1) == 0)
  {
    sub_1004A1114();
  }

  v2 = *(a2 + 48) - 1;
  if (v2 > 4)
  {
    v3 = 0;
  }

  else
  {
    v3 = dword_100562F24[v2];
  }

  atomic_store(2u, (a1 + 3084));
  atomic_store(v3, (a1 + 3088));
  v4 = *(a1 + 152);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10018F2D0;
  v5[3] = &unk_100998F28;
  v5[4] = a1;
  v6 = v3;
  dispatch_async(v4, v5);
}

uint64_t sub_10018F2D0(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 176);
  v2 = *(a1 + 40);
  v4[0] = 2;
  v4[1] = v2;
  return (*(*v1 + 56))(v1, v4);
}

uint64_t sub_10018F360(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 176);
  v3 = 1;
  return (*(*v1 + 64))(v1, &v3);
}

uint64_t sub_10018F3B4(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 176);
  v3 = 0;
  return (*(*v1 + 64))(v1, &v3);
}

void sub_10018F404(uint64_t a1, uint64_t a2)
{
  if ((*(a2 + 52) & 1) == 0)
  {
    sub_1004A1140();
  }

  v2 = *(a2 + 48) - 1;
  if (v2 > 4)
  {
    v3 = 0;
  }

  else
  {
    v3 = dword_100562F24[v2];
  }

  atomic_store(3u, (a1 + 3084));
  atomic_store(v3, (a1 + 3088));
  v4 = *(a1 + 152);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10018F4C0;
  v5[3] = &unk_100998810;
  v5[4] = a1;
  v5[5] = (v3 << 32) | 3;
  dispatch_async(v4, v5);
}

void sub_10018F4F4(uint64_t a1, unsigned __int16 *a2)
{
  if ((a2[14] & 1) == 0)
  {
    sub_1004A116C();
  }

  if (*a2 - 1 > 0x19)
  {
    v4 = "UNDEFINED";
  }

  else
  {
    v4 = off_100999C48[(*a2 - 1)];
  }

  v5 = *(a2 + 29);
  sub_100004A08(&v29, v4);
  if (a2[1] - 1 > 0x13)
  {
    v6 = "UNDEFINED";
  }

  else
  {
    v6 = off_100999D18[(a2[1] - 1)];
  }

  sub_100004A08(v27, v6);
  std::operator+<char>();
  v7 = std::string::append(&v24, ", Subtype: ");
  v8 = *&v7->__r_.__value_.__l.__data_;
  v25.__r_.__value_.__r.__words[2] = v7->__r_.__value_.__r.__words[2];
  *&v25.__r_.__value_.__l.__data_ = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  if ((v28 & 0x80u) == 0)
  {
    v9 = v27;
  }

  else
  {
    v9 = v27[0];
  }

  if ((v28 & 0x80u) == 0)
  {
    v10 = v28;
  }

  else
  {
    v10 = v27[1];
  }

  v11 = std::string::append(&v25, v9, v10);
  v12 = v11->__r_.__value_.__r.__words[0];
  size = v11->__r_.__value_.__l.__size_;
  v26[0] = v11->__r_.__value_.__r.__words[2];
  *(v26 + 3) = *(&v11->__r_.__value_.__r.__words[2] + 3);
  v14 = SHIBYTE(v11->__r_.__value_.__r.__words[2]);
  v11->__r_.__value_.__l.__size_ = 0;
  v11->__r_.__value_.__r.__words[2] = 0;
  v11->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v25.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v24.__r_.__value_.__l.__data_);
  }

  if (*(a2 + 31) == 1)
  {
    v15 = *(a2 + 8) == 13;
    v16 = 1000;
    v17 = 110;
  }

  else
  {
    v16 = 1000;
    if (a2[1] == 13)
    {
      v16 = 2002;
    }

    v15 = v16 == 1000;
    v17 = 999;
  }

  if (v15)
  {
    v16 = v17;
  }

  v18 = *(a1 + 152);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3321888768;
  block[2] = sub_10018F7DC;
  block[3] = &unk_100999708;
  v23 = v5;
  block[4] = a1;
  block[5] = v16;
  if (v14 < 0)
  {
    sub_1000056BC(__p, v12, size);
  }

  else
  {
    __p[0] = v12;
    __p[1] = size;
    *v21 = v26[0];
    *&v21[3] = *(v26 + 3);
    v22 = v14;
  }

  dispatch_async(v18, block);
  if (v22 < 0)
  {
    operator delete(__p[0]);
    if ((v14 & 0x80000000) == 0)
    {
      goto LABEL_30;
    }
  }

  else if ((v14 & 0x80000000) == 0)
  {
    goto LABEL_30;
  }

  operator delete(v12);
LABEL_30:
  if (v28 < 0)
  {
    operator delete(v27[0]);
  }

  if (v30 < 0)
  {
    operator delete(v29);
  }
}

void sub_10018F76C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  operator delete(v31);
  if (*(v32 - 89) < 0)
  {
    operator delete(*(v32 - 112));
  }

  if (*(v32 - 65) < 0)
  {
    operator delete(*(v32 - 88));
  }

  _Unwind_Resume(a1);
}

void sub_10018F7DC(uint64_t a1)
{
  v1 = *(a1 + 72);
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = v2;
  if (*(a1 + 71) < 0)
  {
    sub_1000056BC(__p, *(a1 + 48), *(a1 + 56));
    v2 = v4;
  }

  else
  {
    *__p = *(a1 + 48);
    v6 = *(a1 + 64);
  }

  v7[0] = v1;
  v8 = 2;
  v9 = 0;
  v10 = 0;
  v11 = v2;
  if (SHIBYTE(v6) < 0)
  {
    sub_1000056BC(&v12, __p[0], __p[1]);
    v14 = 1;
    if (SHIBYTE(v6) < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    v12 = *__p;
    v13 = v6;
    v14 = 1;
  }

  (*(**(v3 + 176) + 48))(*(v3 + 176), v7);
  if (v14 == 1 && SHIBYTE(v13) < 0)
  {
    operator delete(v12);
  }
}

void sub_10018F8F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, char a26)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_10018F92C(_BYTE *result, uint64_t a2)
{
  if (*(a2 + 71) < 0)
  {
    return sub_1000056BC(result + 48, *(a2 + 48), *(a2 + 56));
  }

  v2 = *(a2 + 48);
  *(result + 8) = *(a2 + 64);
  *(result + 3) = v2;
  return result;
}

void sub_10018F958(uint64_t a1)
{
  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }
}

void sub_10018F9A0(uint64_t a1, uint64_t a2)
{
  v4 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v10) = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "RoseServiceProvider::onRegulatoryConfigurationUpdate.", &v10, 2u);
  }

  (*(**(a1 + 3064) + 48))(&v19);
  v5 = *(a1 + 144);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3321888768;
  block[2] = sub_10018FBC4;
  block[3] = &unk_100999738;
  block[4] = a1;
  __p = 0;
  v17 = 0;
  v18 = 0;
  sub_100191FA0(&__p, v19, v20, v20 - v19);
  dispatch_async(v5, block);
  v6 = *(a2 + 4);
  if (v6 != 4)
  {
    if (v6 != 5)
    {
      goto LABEL_9;
    }

    if (*(a2 + 16))
    {
      v7 = *(a2 + 12);
      LODWORD(v10) = 1;
      *(&v10 + 4) = v7 | &_mh_execute_header;
      BYTE12(v10) = 1;
      v11 = 0;
      v12 = 0;
      v13 = 0;
      v14 = 0;
      sub_10018744C(a1 + 464, &v10);
      goto LABEL_9;
    }

    v9 = 649;
LABEL_16:
    __assert_rtn("onRegulatoryConfigurationUpdate", "RoseServiceProvider.mm", v9, "event.accessory.has_value()");
  }

  if ((*(a2 + 16) & 1) == 0)
  {
    v9 = 642;
    goto LABEL_16;
  }

  v8 = *(a2 + 12);
  LODWORD(v10) = 1;
  *(&v10 + 4) = v8;
  BYTE12(v10) = 1;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v14 = 0;
  sub_10018744C(a1 + 464, &v10);
LABEL_9:
  if (__p)
  {
    v17 = __p;
    operator delete(__p);
  }

  if (v19)
  {
    v20 = v19;
    operator delete(v19);
  }
}

void sub_10018FB88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20)
{
  if (__p)
  {
    operator delete(__p);
  }

  v22 = *(v20 - 56);
  if (v22)
  {
    *(v20 - 48) = v22;
    operator delete(v22);
  }

  _Unwind_Resume(exception_object);
}

void sub_10018FBC4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v5 = 0;
  v6 = 0;
  v7 = 0;
  v2 = v1[20];
  v11[0] = off_100999AE0;
  v11[1] = &v5;
  v11[2] = a1 + 40;
  v11[3] = v11;
  sub_1001A72A0(v2, v11);
  sub_100191C54(v11);
  v3 = v5;
  v4 = v6;
  if (v5 != v6)
  {
    do
    {
      (*(*v1 + 48))(v8, v1, *v3);
      if (v10 == 1 && v9 < 0)
      {
        operator delete(v8[92]);
      }

      ++v3;
    }

    while (v3 != v4);
    v3 = v5;
  }

  if (v3)
  {
    v6 = v3;
    operator delete(v3);
  }
}

void sub_10018FCE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  sub_100191C54(v10 - 72);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10018FD10(uint64_t a1, uint64_t a2)
{
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  v2 = a1 + 40;
  *(v2 + 16) = 0;
  return sub_100191FA0(v2, *(a2 + 40), *(a2 + 48), *(a2 + 48) - *(a2 + 40));
}

void sub_10018FD28(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    *(a1 + 48) = v2;
    operator delete(v2);
  }
}

void sub_10018FD40(uint64_t a1, unsigned __int16 *a2)
{
  v4 = *(a2 + 1);
  if (v4 > 6)
  {
    if (v4 < 10)
    {
      v11 = qword_1009F9820;
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_100190264(*(a2 + 1), v24);
        sub_1004A1198(v24);
      }

      std::mutex::lock((a1 + 32));
      sub_100190278(a1, *a2);
      v12 = (a1 + 3080);
      v13 = 2;
    }

    else
    {
      if (v4 <= 12)
      {
        if ((v4 - 10) >= 2)
        {
          if (v4 != 12)
          {
            return;
          }

          goto LABEL_35;
        }

        goto LABEL_52;
      }

      if (v4 != 13)
      {
        if (v4 == 14)
        {
          v18 = qword_1009F9820;
          if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(v24[0]) = 0;
            _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "[RoseServiceProvider] TriggerCommandUpdated", v24, 2u);
          }
        }

        return;
      }

      v22 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v24[0]) = 0;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "[RoseServiceProvider] ServiceRequestReceived_Internal", v24, 2u);
      }

      std::mutex::lock((a1 + 32));
      sub_100190350(a1, *a2);
      v12 = (a1 + 3080);
      v13 = 1;
    }

    atomic_store(v13, v12);
    std::mutex::unlock((a1 + 32));
    std::condition_variable::notify_all((a1 + 96));
    return;
  }

  if (v4 <= 2)
  {
    switch(v4)
    {
      case 0:
LABEL_35:
        v19 = qword_1009F9820;
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          sub_100190264(*(a2 + 1), v24);
          sub_1004A1198(v24);
        }

        return;
      case 1:
        v23 = qword_1009F9820;
        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v24[0]) = 0;
          _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "[RoseServiceProvider] RangingDidStart", v24, 2u);
        }

        sub_1001905BC(a1, *a2);
        break;
      case 2:
        v14 = qword_1009F9820;
        v15 = os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT);
        if (v15)
        {
          LOWORD(v24[0]) = 0;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "[RoseServiceProvider] RangingFailedToStart", v24, 2u);
        }

        sub_100190694(v15, *a2);
        break;
      default:
        return;
    }

LABEL_52:
    sub_10018F0B4(a1, a2);
    return;
  }

  if (v4 > 4)
  {
    if (v4 == 5)
    {
      v21 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v24[0]) = 0;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "[RoseServiceProvider] JobStart", v24, 2u);
      }

      sub_100190458(a1, *a2);
    }

    else
    {
      v16 = qword_1009F9820;
      v17 = os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT);
      if (v17)
      {
        LOWORD(v24[0]) = 0;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "[RoseServiceProvider] JobStop", v24, 2u);
      }

      sub_100190518(v17, *a2);
    }

    goto LABEL_52;
  }

  if (v4 == 3)
  {
    v20 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v24[0]) = 0;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "[RoseServiceProvider] RangingStopped", v24, 2u);
    }

    sub_100190738(a1, *a2);
    goto LABEL_52;
  }

  v5 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v24[0]) = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[RoseServiceProvider] RequestInvalidated", v24, 2u);
  }

  v6 = *a2;
  v7 = atomic_load((a1 + 3092));
  if (v7 != v6)
  {
    sub_100190278(a1, *a2);
    goto LABEL_52;
  }

  v8 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *a2;
    LODWORD(v24[0]) = 67109120;
    HIDWORD(v24[0]) = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Ignoring RequestInvalidated notification for ticket ID: %d", v24, 8u);
  }

  v10 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v24[0]) = 0;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "<rdar://problem/48775916> Ticket IDs should be generated by the AOP", v24, 2u);
  }

  atomic_store(0xFFFFFFFF, (a1 + 3092));
}

void sub_100190278(uint64_t a1, int a2)
{
  v4 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    v5[0] = 67109120;
    v5[1] = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[RoseServiceProvider] serviceCancelRoutine for ticket ID %d", v5, 8u);
  }

  sub_10018D374(a1, a2, 0);
  sub_1001A74B8(*(a1 + 160), a2);
  sub_100184044(a1 + 464, a2);
}

void sub_100190350(uint64_t a1, int a2)
{
  v4 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    v5[0] = 67109120;
    v5[1] = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[RoseServiceProvider] serviceAcceptedRoutine for ticket ID %d", v5, 8u);
  }

  sub_1001A70DC(*(a1 + 160), a2, v5);
  if (v8 == 1 && (sub_100183FA0(a1 + 464, v6, v7) & 1) == 0 && os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
  {
    sub_1004A11FC();
  }
}

void sub_100190458(uint64_t a1, int a2)
{
  v4 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    v5[0] = 67109120;
    v5[1] = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[RoseServiceProvider] jobStartRoutine for ticket ID %d", v5, 8u);
  }

  sub_10018D374(a1, a2, 1);
}

void sub_100190518(uint64_t a1, int a2)
{
  v3 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    v4[0] = 67109120;
    v4[1] = a2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[RoseServiceProvider] jobStopRoutine for ticket ID %d", v4, 8u);
  }
}

uint64_t sub_1001905BC(uint64_t a1, int a2)
{
  v4 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    v6[0] = 67109120;
    v6[1] = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[RoseServiceProvider] rangingStartRoutine for ticket ID %d", v6, 8u);
  }

  return (*(**(a1 + 3064) + 88))(*(a1 + 3064));
}

void sub_100190694(uint64_t a1, int a2)
{
  v3 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    v4[0] = 67109120;
    v4[1] = a2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[RoseServiceProvider] rangingFailedToStartRoutine for ticket ID %d", v4, 8u);
  }
}

void sub_100190738(uint64_t a1, int a2)
{
  v4 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    v5[0] = 67109120;
    v5[1] = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[RoseServiceProvider] rangingStopRoutine for ticket ID %d", v5, 8u);
  }

  sub_100184278(a1 + 464, a2);
}

void sub_1001907F4(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  if (*a2 > 3)
  {
    switch(v3)
    {
      case 4:
        v12 = qword_1009F9820;
        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(__p) = 0;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "[RoseServiceProvider] RoseInfrastructureEvent::Ready_UWB", &__p, 2u);
        }

        sub_10018F214(a1, a2);
        break;
      case 5:
        v13 = qword_1009F9820;
        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(__p) = 0;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "[RoseServiceProvider] RoseInfrastructureEvent::Error", &__p, 2u);
        }

        atomic_store(4u, (a1 + 3084));
        atomic_store(2u, (a1 + 3088));
        v5 = *(a1 + 152);
        __p = _NSConcreteStackBlock;
        v16 = 3221225472;
        v17 = sub_10018F32C;
        v18 = &unk_100998810;
        v19 = a1;
        v20 = 0x200000004;
        goto LABEL_32;
      case 6:
        if ((*(a2 + 52) & 1) == 0)
        {
          sub_1004A1274();
        }

        sub_100004A08(&__p, off_100999E30[*(a2 + 48)]);
        v8 = qword_1009F9820;
        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
        {
          p_p = &__p;
          if (SHIBYTE(v17) < 0)
          {
            p_p = __p;
          }

          *buf = 136315138;
          v22 = p_p;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[RoseServiceProvider] RoseInfrastructureEvent::SystemOff with Reason: %s", buf, 0xCu);
        }

        sub_10018F404(a1, a2);
        if (SHIBYTE(v17) < 0)
        {
          operator delete(__p);
        }

        break;
    }
  }

  else
  {
    if (v3 > 1)
    {
      if (v3 == 2)
      {
        v11 = qword_1009F9820;
        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(__p) = 0;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "[RoseServiceProvider] RoseInfrastructureEvent::AOPJobsReset", &__p, 2u);
        }

        v5 = *(a1 + 152);
        __p = _NSConcreteStackBlock;
        v16 = 3221225472;
        v6 = sub_10018F3B4;
      }

      else
      {
        if (v3 != 3)
        {
          return;
        }

        v4 = qword_1009F9820;
        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(__p) = 0;
          _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[RoseServiceProvider] RoseInfrastructureEvent::Ready", &__p, 2u);
        }

        atomic_store(1u, (a1 + 3084));
        atomic_store(0, (a1 + 3088));
        v5 = *(a1 + 152);
        __p = _NSConcreteStackBlock;
        v16 = 3221225472;
        v6 = sub_10018F1BC;
      }

      goto LABEL_25;
    }

    if (v3 == 1)
    {
      v10 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(__p) = 0;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[RoseServiceProvider] RoseInfrastructureEvent::Boot", &__p, 2u);
      }

      v5 = *(a1 + 152);
      __p = _NSConcreteStackBlock;
      v16 = 3221225472;
      v6 = sub_10018F360;
LABEL_25:
      v17 = v6;
      v18 = &unk_10098AD98;
      v19 = a1;
LABEL_32:
      dispatch_async(v5, &__p);
      return;
    }

    if (!v3)
    {
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
      {
        sub_1004A1238();
      }

      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "[RoseServiceProvider] RoseInfrastructureEvent::Unspecified");
    }
  }
}

void sub_100190C94(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 8) == 4 && *(a2 + 46) == 1 && (*(a2 + 33) & 1) != 0 && (*(a2 + 42) & 1) != 0)
  {
    v11 = v2;
    v12 = v3;
    v4 = *(a2 + 32);
    v5 = *(a2 + 40) != 2;
    LODWORD(v6) = 2;
    BYTE4(v6) = 0;
    BYTE12(v6) = 0;
    v7 = v5 || (v4 & 1) == 0;
    v8 = 1;
    v9 = 0;
    v10 = 0;
    sub_10018744C(a1 + 464, &v6);
  }
}

void *sub_100190D30(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  *a1 = off_100999778;
  a1[1] = off_100999818;
  a1[2] = off_100999858;
  a1[3] = off_100999880;
  a1[4] = a2;
  v6 = v5;
  a1[5] = v6;
  if (!a2)
  {
    v8 = "service_client";
    v9 = 1030;
    goto LABEL_6;
  }

  if (!v6)
  {
    v8 = "queue";
    v9 = 1031;
LABEL_6:
    __assert_rtn("RoseServiceProviderSurrogate", "RoseServiceProvider.mm", v9, v8);
  }

  return a1;
}

void sub_100190E48(uint64_t a1)
{
  v1 = *(a1 + 40);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100190EBC;
  block[3] = &unk_10098AD98;
  block[4] = a1;
  dispatch_async(v1, block);
}

uint64_t sub_100190EBC(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = v1[4];
  v4 = (*(*v1 + 72))(v1);
  return (*(*v2 + 56))(v2, &v4);
}

void sub_100190F40(uint64_t a1@<X8>)
{
  sub_100004A08(v3, "Unsupported platform.");
  v5 = 10;
  if (SHIBYTE(v4) < 0)
  {
    sub_1000056BC(&v6, v3[0], v3[1]);
    v2 = v5;
  }

  else
  {
    v6 = *v3;
    v7 = v4;
    v2 = 10;
  }

  v8 = v2;
  *__p = v6;
  v10 = v7;
  v6 = 0uLL;
  v7 = 0;
  v11 = 1;
  *(a1 + 8) = 0;
  *(a1 + 712) = 0;
  *(a1 + 720) = 1;
  sub_100191634((a1 + 728), &v8);
  if (v11 == 1 && SHIBYTE(v10) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v7) < 0)
  {
    operator delete(v6);
  }

  if (SHIBYTE(v4) < 0)
  {
    operator delete(v3[0]);
  }
}

void sub_10019102C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, char a29)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10019107C(uint64_t a1@<X8>)
{
  sub_100004A08(v3, "Unsupported platform.");
  v5 = 10;
  if (SHIBYTE(v4) < 0)
  {
    sub_1000056BC(&v6, v3[0], v3[1]);
    v2 = v5;
  }

  else
  {
    v6 = *v3;
    v7 = v4;
    v2 = 10;
  }

  v8 = v2;
  *__p = v6;
  v10 = v7;
  v6 = 0uLL;
  v7 = 0;
  v11 = 1;
  *(a1 + 8) = 0;
  *(a1 + 720) = 0;
  sub_100191634((a1 + 728), &v8);
  if (v11 == 1 && SHIBYTE(v10) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v7) < 0)
  {
    operator delete(v6);
  }

  if (SHIBYTE(v4) < 0)
  {
    operator delete(v3[0]);
  }
}

void sub_100191164(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, char a29)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1001911B4(uint64_t a1@<X8>)
{
  sub_100004A08(v3, "Unsupported platform.");
  v5 = 10;
  if (SHIBYTE(v4) < 0)
  {
    sub_1000056BC(&v6, v3[0], v3[1]);
    v2 = v5;
  }

  else
  {
    v6 = *v3;
    v7 = v4;
    v2 = 10;
  }

  v8 = v2;
  *__p = v6;
  v10 = v7;
  v6 = 0uLL;
  v7 = 0;
  v11 = 1;
  *(a1 + 8) = 0;
  *(a1 + 720) = 0;
  sub_100191634((a1 + 728), &v8);
  if (v11 == 1 && SHIBYTE(v10) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v7) < 0)
  {
    operator delete(v6);
  }

  if (SHIBYTE(v4) < 0)
  {
    operator delete(v3[0]);
  }
}

void sub_10019129C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, char a29)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1001912EC(uint64_t a1@<X8>)
{
  sub_100004A08(v3, "Unsupported platform.");
  v5 = 10;
  if (SHIBYTE(v4) < 0)
  {
    sub_1000056BC(&v6, v3[0], v3[1]);
    v2 = v5;
  }

  else
  {
    v6 = *v3;
    v7 = v4;
    v2 = 10;
  }

  v8 = v2;
  *__p = v6;
  v10 = v7;
  v6 = 0uLL;
  v7 = 0;
  v11 = 1;
  *(a1 + 8) = 0;
  *(a1 + 720) = 0;
  sub_100191634((a1 + 728), &v8);
  if (v11 == 1 && SHIBYTE(v10) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v7) < 0)
  {
    operator delete(v6);
  }

  if (SHIBYTE(v4) < 0)
  {
    operator delete(v3[0]);
  }
}

void sub_1001913D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, char a29)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100191430(uint64_t a1)
{
  v1 = atomic_load((a1 + 3084));
  v2 = atomic_load((a1 + 3088));
  return v1 | (v2 << 32);
}

void sub_100191474(uint64_t a1)
{

  operator delete();
}

void sub_1001914F0(uint64_t a1)
{

  operator delete();
}

void sub_100191554(uint64_t a1)
{

  operator delete();
}

void sub_1001915AC(uint64_t a1)
{

  operator delete();
}

_BYTE *sub_100191634(_BYTE *a1, uint64_t a2)
{
  *a1 = 0;
  a1[32] = 0;
  if (*(a2 + 32) == 1)
  {
    sub_100191694(a1, a2);
  }

  return a1;
}

void sub_100191674(_Unwind_Exception *exception_object)
{
  if (*(v1 + 32) == 1)
  {
    sub_1004A12A0(v1);
  }

  _Unwind_Resume(exception_object);
}

void *sub_100191694(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = (a1 + 8);
  if (*(a2 + 31) < 0)
  {
    result = sub_1000056BC(result, *(a2 + 8), *(a2 + 16));
  }

  else
  {
    v4 = *(a2 + 8);
    result[2] = *(a2 + 24);
    *result = v4;
  }

  *(a1 + 32) = 1;
  return result;
}

uint64_t sub_1001916EC(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 56) = 0;
  if (*(a2 + 56) == 1)
  {
    *a1 = *a2;
    sub_100191768((a1 + 8), a2 + 8);
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 56) = 1;
  }

  return a1;
}

void sub_100191748(_Unwind_Exception *exception_object)
{
  if (*(v1 + 56) == 1)
  {
    sub_1004A12B0(v1);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_100191768(_BYTE *a1, uint64_t a2)
{
  *a1 = 0;
  a1[32] = 0;
  if (*(a2 + 32) == 1)
  {
    sub_1001917C8(a1, a2);
  }

  return a1;
}

void sub_1001917A8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 32) == 1)
  {
    sub_1004A12A0(v1);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1001917C8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = (a1 + 8);
  if (*(a2 + 31) < 0)
  {
    result = sub_1000056BC(result, *(a2 + 8), *(a2 + 16));
  }

  else
  {
    v4 = *(a2 + 8);
    result[2] = *(a2 + 24);
    *result = v4;
  }

  *(a1 + 32) = 1;
  return result;
}

void *sub_10019187C(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_100999970;
  sub_1001A6FC8((a1 + 3));
  return a1;
}

void sub_1001918F8(std::__shared_weak_count *a1)
{
  a1->__vftable = off_100999970;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1001919E4(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_1009999C0;
  a2[1] = v2;
  return result;
}

__n128 sub_100191A10(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  if (*(a2 + 704) == 1)
  {
    *(a2 + 704) = 0;
  }

  v3 = *v2;
  v4 = v2[2];
  *(a2 + 608) = v2[1];
  *(a2 + 624) = v4;
  *(a2 + 592) = v3;
  result = v2[3];
  v6 = v2[4];
  v7 = v2[6];
  *(a2 + 672) = v2[5];
  *(a2 + 688) = v7;
  *(a2 + 640) = result;
  *(a2 + 656) = v6;
  *(a2 + 704) = 1;
  return result;
}

uint64_t sub_100191A50(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100191A9C(uint64_t a1)
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

uint64_t sub_100191B8C(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_100999A50;
  a2[1] = v2;
  return result;
}

uint64_t sub_100191BB8(uint64_t a1)
{
  v2 = *(*(a1 + 8) + 24);
  if (!v2)
  {
    sub_100037B10();
  }

  v3 = *(*v2 + 48);

  return v3();
}

uint64_t sub_100191C08(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100191C54(uint64_t a1)
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

__n128 sub_100191D48(uint64_t a1, uint64_t a2)
{
  *a2 = off_100999AE0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void sub_100191D78(uint64_t a1, uint64_t a2)
{
  v4 = sub_10019AC60(a2 + 16);
  v5 = *(a1 + 16);
  v6 = *v5;
  v7 = v5[1];
  if (*v5 == v7)
  {
    v9 = 0;
    LOBYTE(v8) = 0;
    if ((v4 & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v8 = 0;
    v9 = 0;
    do
    {
      v11 = *v6++;
      v10 = v11;
      if (v11 == 5)
      {
        v12 = 1;
      }

      else
      {
        v12 = v8;
      }

      if (v10 == 9)
      {
        v9 = 1;
      }

      else
      {
        v8 = v12;
      }
    }

    while (v6 != v7);
    if ((v4 & 1) == 0)
    {
LABEL_14:
      if (((v4 & 0x100) == 0) | v9 & 1)
      {
        return;
      }

      goto LABEL_15;
    }
  }

  if (v8)
  {
    goto LABEL_14;
  }

LABEL_15:
  v13 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    v14 = *(a2 + 8);
    v30[0] = 67109120;
    v30[1] = v14;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "RoseServiceProvider regulatory validation: ticket ID %d is canceled since channel configuration is no longer allowed.", v30, 8u);
  }

  v15 = *(a1 + 8);
  v17 = v15[1];
  v16 = v15[2];
  if (v17 >= v16)
  {
    v19 = *v15;
    v20 = v17 - *v15;
    v21 = v20 >> 1;
    if (v20 >> 1 <= -2)
    {
      sub_100019B38();
    }

    v22 = v16 - v19;
    if (v22 <= v21 + 1)
    {
      v23 = v21 + 1;
    }

    else
    {
      v23 = v22;
    }

    v24 = v22 >= 0x7FFFFFFFFFFFFFFELL;
    v25 = 0x7FFFFFFFFFFFFFFFLL;
    if (!v24)
    {
      v25 = v23;
    }

    if (v25)
    {
      sub_1001679B0(v15, v25);
    }

    v26 = (2 * v21);
    v27 = *(a2 + 8);
    v28 = &v26[-(v20 >> 1)];
    *v26 = v27;
    v18 = v26 + 1;
    memcpy(v28, v19, v20);
    v29 = *v15;
    *v15 = v28;
    v15[1] = v18;
    v15[2] = 0;
    if (v29)
    {
      operator delete(v29);
    }
  }

  else
  {
    *v17 = *(a2 + 8);
    v18 = v17 + 1;
  }

  v15[1] = v18;
}

uint64_t sub_100191F54(uint64_t a1, uint64_t a2)
{
  if (sub_100023EF4(a2, &off_100999B40))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100191FA0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    sub_100009AC4(result, a4);
  }

  return result;
}

void sub_100192000(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_10019201C()
{
  if ((atomic_load_explicit(&qword_1009E9468, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1009E9468))
  {
    sub_100004A08(&qword_1009E9450, "com.apple.nearbyd.accessory.download");
    __cxa_atexit(&std::string::~string, &qword_1009E9450, &_mh_execute_header);

    __cxa_guard_release(&qword_1009E9468);
  }
}

void sub_1001920CC()
{
  if ((atomic_load_explicit(&qword_1009E9488, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1009E9488))
  {
    sub_100004A08(&qword_1009E9470, "com.apple.nearbyd.accessory.files");
    __cxa_atexit(&std::string::~string, &qword_1009E9470, &_mh_execute_header);

    __cxa_guard_release(&qword_1009E9488);
  }
}

void sub_10019217C()
{
  if ((atomic_load_explicit(&qword_1009E94A8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1009E94A8))
  {
    sub_100004A08(byte_1009E9490, "MA_");
    __cxa_atexit(&std::string::~string, byte_1009E9490, &_mh_execute_header);

    __cxa_guard_release(&qword_1009E94A8);
  }
}

void sub_10019222C()
{
  if ((atomic_load_explicit(&qword_1009E94C8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1009E94C8))
  {
    sub_100004A08(byte_1009E94B0, "MB_");
    __cxa_atexit(&std::string::~string, byte_1009E94B0, &_mh_execute_header);

    __cxa_guard_release(&qword_1009E94C8);
  }
}

void sub_1001922DC()
{
  if ((atomic_load_explicit(&qword_1009E94E8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1009E94E8))
  {
    sub_100004A08(byte_1009E94D0, "D");
    __cxa_atexit(&std::string::~string, byte_1009E94D0, &_mh_execute_header);

    __cxa_guard_release(&qword_1009E94E8);
  }
}

void sub_10019238C()
{
  if ((atomic_load_explicit(&qword_1009E9508, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1009E9508))
  {
    sub_100004A08(&qword_1009E94F0, "A");
    __cxa_atexit(&std::string::~string, &qword_1009E94F0, &_mh_execute_header);

    __cxa_guard_release(&qword_1009E9508);
  }
}

void sub_10019243C()
{
  if ((atomic_load_explicit(&qword_1009E9528, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1009E9528))
  {
    sub_100004A08(byte_1009E9510, "FAS.bin");
    __cxa_atexit(&std::string::~string, byte_1009E9510, &_mh_execute_header);

    __cxa_guard_release(&qword_1009E9528);
  }
}

void sub_1001924EC()
{
  if ((atomic_load_explicit(&qword_1009E9548, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_1009E9548))
    {
      memset(v0, 0, 32);
      v0[2] = xmmword_1005629D8;
      qword_1009E9538 = 0;
      unk_1009E9540 = 0;
      qword_1009E9530 = 0;
      sub_100019AC4(&qword_1009E9530, v0, &v1, 6uLL);
      __cxa_atexit(sub_100017360, &qword_1009E9530, &_mh_execute_header);
      __cxa_guard_release(&qword_1009E9548);
    }
  }
}

void sub_1001925E0()
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
  qword_1009EEBB8 = v3->__r_.__value_.__r.__words[2];
  xmmword_1009EEBA8 = v4;
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

  __cxa_atexit(&std::string::~string, &xmmword_1009EEBA8, &_mh_execute_header);
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
  qword_1009EEBD0 = v7->__r_.__value_.__r.__words[2];
  xmmword_1009EEBC0 = v8;
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

  __cxa_atexit(&std::string::~string, &xmmword_1009EEBC0, &_mh_execute_header);
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
  qword_1009EEBE8 = v11->__r_.__value_.__r.__words[2];
  xmmword_1009EEBD8 = v12;
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

  __cxa_atexit(&std::string::~string, &xmmword_1009EEBD8, &_mh_execute_header);
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
  qword_1009EEC00 = v15->__r_.__value_.__r.__words[2];
  xmmword_1009EEBF0 = v16;
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

  __cxa_atexit(&std::string::~string, &xmmword_1009EEBF0, &_mh_execute_header);
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
  qword_1009EEC18 = v19->__r_.__value_.__r.__words[2];
  xmmword_1009EEC08 = v20;
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

  __cxa_atexit(&std::string::~string, &xmmword_1009EEC08, &_mh_execute_header);
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
  qword_1009EEC30 = v23->__r_.__value_.__r.__words[2];
  xmmword_1009EEC20 = v24;
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

  __cxa_atexit(&std::string::~string, &xmmword_1009EEC20, &_mh_execute_header);
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
  qword_1009EEC48 = v27->__r_.__value_.__r.__words[2];
  xmmword_1009EEC38 = v28;
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

  __cxa_atexit(&std::string::~string, &xmmword_1009EEC38, &_mh_execute_header);
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
  qword_1009EEC60 = v31->__r_.__value_.__r.__words[2];
  xmmword_1009EEC50 = v32;
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

  __cxa_atexit(&std::string::~string, &xmmword_1009EEC50, &_mh_execute_header);
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
  qword_1009EEC78 = v35->__r_.__value_.__r.__words[2];
  xmmword_1009EEC68 = v36;
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

  __cxa_atexit(&std::string::~string, &xmmword_1009EEC68, &_mh_execute_header);
  objc_autoreleasePoolPop(v0);
}

void sub_100192C20(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

void sub_100192CE4(unsigned __int16 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a1 + 31) == 1)
  {
    v9 = sub_100427984(a1[16], a2, a3, a4, a5, a6, a7, a8);
    sub_1004279E4(v9, v37);
  }

  else
  {
    sub_100004A08(v37, "N/A");
  }

  sub_100193120(v32);
  sub_10000EA44(&v33, "AOPRoseError. ", 14);
  v10 = sub_10000EA44(&v33, "Status:", 7);
  if (*a1 - 1 > 0x19)
  {
    v11 = "UNDEFINED";
  }

  else
  {
    v11 = off_100999F58[(*a1 - 1)];
  }

  v12 = strlen(v11);
  v13 = sub_10000EA44(v10, v11, v12);
  sub_10000EA44(v13, ", ", 2);
  v14 = sub_10000EA44(&v33, "Subtype: ", 9);
  if (a1[1] - 1 > 0x13)
  {
    v15 = "UNDEFINED";
  }

  else
  {
    v15 = off_10099A028[(a1[1] - 1)];
  }

  v16 = strlen(v15);
  v17 = sub_10000EA44(v14, v15, v16);
  sub_10000EA44(v17, ", ", 2);
  v18 = sub_10000EA44(&v33, "Ticket Id: ", 11);
  if (*(a1 + 28) == 1)
  {
    std::to_string(&v31, *(a1 + 29));
  }

  else
  {
    sub_100004A08(&v31, "N/A");
  }

  if ((v31.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v19 = &v31;
  }

  else
  {
    v19 = v31.__r_.__value_.__r.__words[0];
  }

  if ((v31.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v31.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v31.__r_.__value_.__l.__size_;
  }

  v21 = sub_10000EA44(v18, v19, size);
  sub_10000EA44(v21, ", ", 2);
  if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v31.__r_.__value_.__l.__data_);
  }

  v22 = sub_10000EA44(&v33, "Rose Error Code: ", 17);
  if ((v38 & 0x80u) == 0)
  {
    v23 = v37;
  }

  else
  {
    v23 = v37[0];
  }

  if ((v38 & 0x80u) == 0)
  {
    v24 = v38;
  }

  else
  {
    v24 = v37[1];
  }

  v25 = sub_10000EA44(v22, v23, v24);
  sub_10000EA44(v25, ", ", 2);
  sub_10000EA44(&v33, "[Arg1: ", 7);
  v26 = *(a1 + 2);
  std::ostream::operator<<();
  sub_10000EA44(&v33, ", Arg2: ", 8);
  v27 = *(a1 + 6);
  std::ostream::operator<<();
  sub_10000EA44(&v33, ", Arg3: ", 8);
  v28 = *(a1 + 10);
  v29 = std::ostream::operator<<();
  sub_10000EA44(v29, "]", 1);
  std::stringbuf::str();
  v33 = v30;
  if (v36 < 0)
  {
    operator delete(v35[7].__locale_);
  }

  std::locale::~locale(v35);
  std::iostream::~basic_iostream();
  std::ios::~ios();
  if (v38 < 0)
  {
    operator delete(v37[0]);
  }
}

void sub_1001930C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  std::ios::~ios();
  if (*(v16 - 49) < 0)
  {
    operator delete(*(v16 - 72));
  }

  _Unwind_Resume(a1);
}

void (__cdecl ***sub_100193120(void (__cdecl ***a1)(std::basic_stringstream<char> *__hidden this)))(std::basic_stringstream<char> *__hidden this)
{
  a1[22] = 0;
  v2 = a1 + 2;
  *a1 = v4;
  *(*(v4 - 3) + a1) = v3;
  a1[1] = 0;
  v5 = (*(*a1 - 3) + a1);
  std::ios_base::init(v5, a1 + 3);
  v5[1].__vftable = 0;
  v5[1].__fmtflags_ = -1;
  a1[2] = v7;
  *(*(v7 - 3) + v2) = v6;
  *a1 = v8;
  sub_100193514((a1 + 3), 24);
  return a1;
}

void sub_10019339C(_Unwind_Exception *a1)
{
  std::iostream::~basic_iostream();
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_1001933C4(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a1 = *a2;
  *(a1 + *(v3 - 24)) = a2[8];
  *(a1 + 16) = a2[9];
  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  std::locale::~locale((a1 + 32));

  return std::iostream::~basic_iostream();
}

uint64_t sub_100193514(uint64_t a1, int a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = a2;
  sub_1001935D0(a1);
  return a1;
}

void sub_1001935A8(_Unwind_Exception *a1)
{
  if (*(v1 + 87) < 0)
  {
    operator delete(*v3);
  }

  *v1 = v2;
  std::locale::~locale((v1 + 8));
  _Unwind_Resume(a1);
}

void sub_1001935D0(uint64_t a1)
{
  *(a1 + 88) = 0;
  v2 = (a1 + 64);
  v3 = *(a1 + 87);
  if (v3 < 0)
  {
    v4 = *(a1 + 64);
    v5 = *(a1 + 72);
  }

  else
  {
    v4 = v2;
    v5 = *(a1 + 87);
  }

  v6 = *(a1 + 96);
  if ((v6 & 8) != 0)
  {
    *(a1 + 88) = v4 + v5;
    *(a1 + 16) = v4;
    *(a1 + 24) = v4;
    *(a1 + 32) = v4 + v5;
  }

  if ((v6 & 0x10) != 0)
  {
    *(a1 + 88) = v4 + v5;
    if ((v3 & 0x80000000) != 0)
    {
      v7 = (*(a1 + 80) & 0x7FFFFFFFFFFFFFFFLL) - 1;
    }

    else
    {
      v7 = 22;
    }

    std::string::resize(v2, v7, 0);
    v8 = *(a1 + 87);
    if (v8 < 0)
    {
      v8 = *(a1 + 72);
    }

    *(a1 + 40) = v4;
    *(a1 + 48) = v4;
    *(a1 + 56) = v4 + v8;
    if ((*(a1 + 96) & 3) != 0)
    {
      if (v5 >> 31)
      {
        v9 = ((v5 - 0x80000000) * 0x200000005uLL) >> 64;
        v10 = 0x7FFFFFFF * ((v9 + ((v5 - 0x80000000 - v9) >> 1)) >> 30);
        v4 = (v4 + v10 + 0x7FFFFFFF);
        v5 = v5 - v10 - 0x7FFFFFFF;
        *(a1 + 48) = v4;
      }

      if (v5)
      {
        *(a1 + 48) = v4 + v5;
      }
    }
  }
}

uint64_t sub_100193728(uint64_t a1, int a2, __int16 a3, __int128 *a4, double a5)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *a1 = 0;
  *(a1 + 4) = 0;
  *(a1 + 40) = a2;
  *(a1 + 48) = a5;
  *(a1 + 56) = a3;
  *(a1 + 64) = *(a4 + 19);
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  v7 = *a4;
  v8 = a4[1];
  v9 = *(a4 + 4);
  *(a1 + 136) = 0;
  v10 = a1 + 136;
  *(v10 - 8) = v9;
  *(v10 - 24) = v8;
  *(v10 - 40) = v7;
  *(v10 + 8) = 0;
  *(v10 + 16) = 0;
  sub_100020574(v10, *(a4 + 5), *(a4 + 6), 0x6DB6DB6DB6DB6DB7 * ((*(a4 + 6) - *(a4 + 5)) >> 3));
  memcpy((a1 + 160), a4 + 4, 0x181uLL);
  return a1;
}

void sub_1001937E0(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 80) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

__n128 sub_100193800(uint64_t a1, int a2, uint64_t a3, uint64_t a4, __int16 a5, uint64_t a6)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = a2;
  *(a1 + 32) = a3;
  *(a1 + 40) = a4;
  *(a1 + 48) = *a6;
  *(a1 + 50) = a5;
  result = *a6;
  *(a1 + 72) = *(a6 + 16);
  *(a1 + 56) = result;
  *(a1 + 80) = 0;
  *(a1 + 208) = 0;
  return result;
}

uint64_t sub_10019383C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9)
{
  v10 = a2;
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = a9;
  *(a1 + 40) = 1;
  *(a1 + 48) = sub_100427984(*(a3 + 20), a2, a3, a4, a5, a6, a7, a8);
  *(a1 + 50) = v10;
  v19 = sub_100427984(*(a3 + 20), v12, v13, v14, v15, v16, v17, v18);
  v20 = *(a3 + 26);
  v21 = *(a3 + 48);
  *(a1 + 56) = v19;
  *(a1 + 58) = v20;
  *(a1 + 64) = v21;
  v23 = *(a3 + 96);
  v22 = *(a3 + 112);
  v24 = *(a3 + 80);
  *(a1 + 144) = *(a3 + 64);
  *(a1 + 160) = v24;
  *(a1 + 176) = v23;
  *(a1 + 192) = v22;
  v26 = *(a3 + 32);
  v25 = *(a3 + 48);
  v27 = *(a3 + 16);
  *(a1 + 80) = *a3;
  *(a1 + 96) = v27;
  *(a1 + 112) = v26;
  *(a1 + 128) = v25;
  *(a1 + 208) = 1;
  return a1;
}

uint64_t sub_1001938E0(uint64_t a1, __int16 a2, uint64_t a3, double a4)
{
  *a1 = a4;
  *(a1 + 8) = a2;
  *(a1 + 10) = *(a3 + 20);
  *(a1 + 12) = *(a3 + 21);
  *(a1 + 14) = *(a3 + 23);
  *(a1 + 16) = *(a3 + 28);
  *(a1 + 24) = sub_10041C3B4(*(a3 + 28));
  v6 = (a3 + 64);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  v7 = -32;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  do
  {
    v8 = (a1 + v7);
    v8[16] = *(v6 - 8);
    v8[24] = *v6;
    v8[32] = v6[8];
    ++v6;
    v7 += 4;
  }

  while (v7);
  return a1;
}

uint64_t sub_100193980(uint64_t a1, __int16 a2, uint64_t a3, double a4)
{
  *a1 = a4;
  *(a1 + 8) = a2;
  *(a1 + 10) = *(a3 + 20);
  *(a1 + 12) = *(a3 + 21);
  *(a1 + 14) = *(a3 + 23);
  *(a1 + 16) = *(a3 + 25);
  LOWORD(a4) = *(a3 + 26);
  *(a1 + 24) = *&a4 * 0.01;
  *(a1 + 32) = *(a3 + 28);
  *(a1 + 40) = sub_10041C3B4(*(a3 + 28));
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  v6 = (a3 + 32);
  for (i = 48; i != 80; i += 4)
  {
    v8 = *v6++;
    *(a1 + i) = v8;
  }

  return a1;
}

uint64_t sub_100193A24(uint64_t result, __int16 a2, uint64_t a3, double a4)
{
  v4 = 0;
  *result = a4;
  *(result + 8) = a2;
  *(result + 10) = *(a3 + 20);
  *(result + 11) = *(a3 + 23);
  *(result + 12) = *(a3 + 24);
  *(result + 14) = *(a3 + 26);
  *(result + 28) = 0u;
  *(result + 44) = 0u;
  *(result + 72) = 0u;
  *(result + 88) = 0u;
  v5 = 1;
  do
  {
    v6 = 0;
    v7 = v5;
    v8 = a3 + 28 + 50 * v4;
    v9 = result + 16 + 44 * v4;
    *v9 = *v8;
    *(v9 + 2) = *(v8 + 1);
    *(v9 + 4) = *(v8 + 3);
    *(v9 + 8) = *(v8 + 5);
    do
    {
      *(v9 + 12 + v6) = *(v8 + 18 + v6);
      v6 += 4;
    }

    while (v6 != 32);
    v5 = 0;
    v4 = 1;
  }

  while ((v7 & 1) != 0);
  return result;
}

uint64_t sub_100193AD8(uint64_t a1, int a2)
{
  if (a2 >= 2)
  {
    sub_1004A12D0();
  }

  return *(a1 + 44 * a2 + 16);
}

uint64_t sub_100193B00(uint64_t a1, int a2)
{
  if (a2 >= 2)
  {
    sub_1004A12FC();
  }

  return *(a1 + 44 * a2 + 18);
}

uint64_t sub_100193B28(uint64_t a1, int a2)
{
  if (a2 >= 2)
  {
    sub_1004A1328();
  }

  return *(a1 + 44 * a2 + 20);
}

uint64_t sub_100193B50(uint64_t a1, int a2)
{
  if (a2 >= 2)
  {
    sub_1004A1354();
  }

  return *(a1 + 44 * a2 + 24);
}

uint64_t sub_100193B78(uint64_t a1, int a2)
{
  if (a2 >= 2)
  {
    sub_1004A1380();
  }

  return a1 + 44 * a2 + 28;
}

void *sub_100193BA0(void *a1, char *a2)
{
  v3 = a1 + *(*a1 - 24);
  v4 = *a2;
  if (*(v3 + 36) == -1)
  {
    std::ios_base::getloc((a1 + *(*a1 - 24)));
    v5 = std::locale::use_facet(&v8, &std::ctype<char>::id);
    v6 = (v5->__vftable[2].~facet_0)(v5, 32);
    std::locale::~locale(&v8);
    *(v3 + 36) = v6;
  }

  *(v3 + 36) = v4;
  return a1;
}

uint64_t sub_100193C68(uint64_t a1)
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

void sub_100193DBC(unsigned __int8 *a1)
{
  v2 = *(a1 + 6);
  v3 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    *__p = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#sp,[Solution Provider] _printDebug timestamp_event:", __p, 2u);
    v3 = qword_1009F9820;
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 25);
    *__p = 67109120;
    *&__p[4] = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#sp,[Solution Provider] ticket id: %d", __p, 8u);
    v3 = qword_1009F9820;
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = "Remote";
    if (!v2)
    {
      v5 = "Local";
    }

    *__p = 136315138;
    *&__p[4] = v5;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#sp,[Solution Provider]   source: %s", __p, 0xCu);
    v3 = qword_1009F9820;
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    sub_1004279E4(*(a1 + 24), __p);
    v6 = v43 >= 0 ? __p : *__p;
    *buf = 136315138;
    v45 = v6;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#sp,[Solution Provider]   status: %s", buf, 0xCu);
    if (v43 < 0)
    {
      operator delete(*__p);
    }
  }

  v7 = a1[1];
  v8 = qword_1009F9820;
  v9 = os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT);
  if (v7 == 1)
  {
    if (v9)
    {
      sub_100428144(*a1, __p);
      v10 = v43 >= 0 ? __p : *__p;
      *buf = 136315138;
      v45 = v10;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#sp,[Solution Provider]   rf channel: %s", buf, 0xCu);
      if (v43 < 0)
      {
        operator delete(*__p);
      }
    }
  }

  else if (v9)
  {
    *__p = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#sp,[Solution Provider]   rf channel: UNKNOWN", __p, 2u);
  }

  v11 = a1[40];
  v12 = qword_1009F9820;
  v13 = os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT);
  if (v11 == 1)
  {
    if (!v13)
    {
      goto LABEL_30;
    }

    v14 = *(a1 + 4);
    *__p = 134217984;
    *&__p[4] = v14;
    v15 = "#sp,[Solution Provider]   mach_absolute_time_sec: %.6f";
    v16 = v12;
    v17 = 12;
  }

  else
  {
    if (!v13)
    {
      goto LABEL_30;
    }

    *__p = 0;
    v15 = "#sp,[Solution Provider]   mach_absolute_time_sec: UNKNOWN";
    v16 = v12;
    v17 = 2;
  }

  _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, v15, __p, v17);
LABEL_30:
  v18 = a1[16];
  v19 = qword_1009F9820;
  v20 = os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT);
  if (v18 == 1)
  {
    if (!v20)
    {
      goto LABEL_36;
    }

    v21 = *(a1 + 1);
    *__p = 134217984;
    *&__p[4] = v21;
    v22 = "#sp,[Solution Provider]   mach_continuous_time_sec: %.6f";
    v23 = v19;
    v24 = 12;
  }

  else
  {
    if (!v20)
    {
      goto LABEL_36;
    }

    *__p = 0;
    v22 = "#sp,[Solution Provider]   mach_continuous_time_sec: UNKNOWN";
    v23 = v19;
    v24 = 2;
  }

  _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, v22, __p, v24);
LABEL_36:
  v25 = a1[208];
  v26 = qword_1009F9820;
  v27 = os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT);
  if (v25 == 1)
  {
    if (!v27)
    {
      goto LABEL_42;
    }

    v28 = sub_10041C3B4(*(a1 + 108));
    *__p = 134217984;
    *&__p[4] = v28;
    v29 = "#sp,[Solution Provider]   r1 timestamp: %.9f sec";
    v30 = v26;
    v31 = 12;
  }

  else
  {
    if (!v27)
    {
      goto LABEL_42;
    }

    *__p = 0;
    v29 = "#sp,[Solution Provider]   r1 timestamp: UNKNOWN";
    v30 = v26;
    v31 = 2;
  }

  _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, v29, __p, v31);
LABEL_42:
  v32 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    v33 = *(a1 + 29);
    *__p = 67109120;
    *&__p[4] = v33;
    _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "#sp,[Solution Provider]   r1 cycle_idx: %d", __p, 8u);
  }

  v34 = *(a1 + 24);
  v35 = qword_1009F9820;
  v36 = os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT);
  if (v34)
  {
    if (v36)
    {
      *__p = 0;
      _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "#sp,[Solution Provider]   round trip time: INVALID", __p, 2u);
      v35 = qword_1009F9820;
    }

    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      *__p = 0;
      v37 = "#sp,[Solution Provider]   turn around time: INVALID";
      v38 = v35;
      v39 = 2;
LABEL_53:
      _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, v37, __p, v39);
    }
  }

  else
  {
    if (v36)
    {
      v40 = *(a1 + 8);
      *__p = 134217984;
      *&__p[4] = v40;
      _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "#sp,[Solution Provider]   round trip time: %llu rose fast ticks", __p, 0xCu);
      v35 = qword_1009F9820;
    }

    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      v41 = *(a1 + 9);
      *__p = 134217984;
      *&__p[4] = v41;
      v37 = "#sp,[Solution Provider]   turn around time: %llu rose fast ticks";
      v38 = v35;
      v39 = 12;
      goto LABEL_53;
    }
  }
}

uint64_t sub_10019431C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_100193120(v454);
  sub_100193120(v449);
  sub_100193120(v444);
  v459.__r_.__value_.__s.__data_[8] = 9;
  v4 = sub_10000EA44(&v445, &v459.__r_.__value_.__l.__size_, 1);
  sub_10000EA44(v4, "'ticket id': ", 13);
  v5 = *(a1 + 56);
  v6 = std::ostream::operator<<();
  v7 = sub_10000EA44(v6, ",", 1);
  std::ios_base::getloc((v7 + *(*v7 - 24)));
  v8 = std::locale::use_facet(&v459.__r_.__value_.__r.__words[1], &std::ctype<char>::id);
  (v8->__vftable[2].~facet_0)(v8, 10);
  std::locale::~locale(&v459.__r_.__value_.__r.__words[1]);
  std::ostream::put();
  std::ostream::flush();
  v459.__r_.__value_.__s.__data_[8] = 9;
  v9 = sub_10000EA44(&v445, &v459.__r_.__value_.__l.__size_, 1);
  v10 = sub_10000EA44(v9, "'", 1);
  sub_100198600(&v459.__r_.__value_.__s.__data_[8]);
  if ((v460 & 0x80u) == 0)
  {
    p_size = &v459.__r_.__value_.__l.__size_;
  }

  else
  {
    p_size = v459.__r_.__value_.__l.__size_;
  }

  if ((v460 & 0x80u) == 0)
  {
    v12 = v460;
  }

  else
  {
    v12 = v459.__r_.__value_.__r.__words[2];
  }

  v13 = sub_10000EA44(v10, p_size, v12);
  sub_10000EA44(v13, " sess id': ", 11);
  v14 = *(a1 + 98);
  v15 = std::ostream::operator<<();
  v16 = sub_10000EA44(v15, ",", 1);
  std::ios_base::getloc((v16 + *(*v16 - 24)));
  v17 = std::locale::use_facet(&v441, &std::ctype<char>::id);
  (v17->__vftable[2].~facet_0)(v17, 10);
  std::locale::~locale(&v441);
  std::ostream::put();
  std::ostream::flush();
  if (v460 < 0)
  {
    operator delete(v459.__r_.__value_.__l.__size_);
  }

  v459.__r_.__value_.__s.__data_[8] = 9;
  v18 = sub_10000EA44(&v445, &v459.__r_.__value_.__l.__size_, 1);
  v19 = sub_10000EA44(v18, "'", 1);
  sub_100198600(&v459.__r_.__value_.__s.__data_[8]);
  if ((v460 & 0x80u) == 0)
  {
    size = &v459.__r_.__value_.__l.__size_;
  }

  else
  {
    size = v459.__r_.__value_.__l.__size_;
  }

  if ((v460 & 0x80u) == 0)
  {
    v21 = v460;
  }

  else
  {
    v21 = v459.__r_.__value_.__r.__words[2];
  }

  v22 = sub_10000EA44(v19, size, v21);
  sub_10000EA44(v22, " cycle_idx': ", 13);
  v23 = *(a1 + 112);
  v24 = std::ostream::operator<<();
  v25 = sub_10000EA44(v24, ",", 1);
  std::ios_base::getloc((v25 + *(*v25 - 24)));
  v26 = std::locale::use_facet(&v441, &std::ctype<char>::id);
  (v26->__vftable[2].~facet_0)(v26, 10);
  std::locale::~locale(&v441);
  std::ostream::put();
  std::ostream::flush();
  if (v460 < 0)
  {
    operator delete(v459.__r_.__value_.__l.__size_);
  }

  v459.__r_.__value_.__s.__data_[8] = 48;
  v27 = sub_100193BA0(&v445, &v459.__r_.__value_.__s.__data_[8]);
  *(v27 + *(*v27 - 24) + 8) = *(v27 + *(*v27 - 24) + 8) & 0xFFFFFFB5 | 8;
  v459.__r_.__value_.__s.__data_[8] = 9;
  v28 = sub_10000EA44(&v445, &v459.__r_.__value_.__l.__size_, 1);
  v29 = sub_10000EA44(v28, "'", 1);
  sub_100198600(&v459.__r_.__value_.__s.__data_[8]);
  if ((v460 & 0x80u) == 0)
  {
    v30 = &v459.__r_.__value_.__l.__size_;
  }

  else
  {
    v30 = v459.__r_.__value_.__l.__size_;
  }

  if ((v460 & 0x80u) == 0)
  {
    v31 = v460;
  }

  else
  {
    v31 = v459.__r_.__value_.__r.__words[2];
  }

  v32 = sub_10000EA44(v29, v30, v31);
  v33 = sub_10000EA44(v32, " mac_addr': 0x", 14);
  *(v33 + *(*v33 - 24) + 24) = 16;
  v34 = *(a1 + 64);
  v35 = std::ostream::operator<<();
  v36 = sub_10000EA44(v35, ",", 1);
  std::ios_base::getloc((v36 + *(*v36 - 24)));
  v37 = std::locale::use_facet(&v441, &std::ctype<char>::id);
  (v37->__vftable[2].~facet_0)(v37, 10);
  std::locale::~locale(&v441);
  std::ostream::put();
  std::ostream::flush();
  if (v460 < 0)
  {
    operator delete(v459.__r_.__value_.__l.__size_);
  }

  *(&v445 + *(v445 - 24) + 8) = *(&v445 + *(v445 - 24) + 8) & 0xFFFFFFB5 | 2;
  std::stringbuf::str();
  v38 = sub_10000EA44(&v455, "Range Result (Part 1 of 2):", 27);
  std::ios_base::getloc((v38 + *(*v38 - 24)));
  v39 = std::locale::use_facet(&v459.__r_.__value_.__r.__words[1], &std::ctype<char>::id);
  (v39->__vftable[2].~facet_0)(v39, 10);
  std::locale::~locale(&v459.__r_.__value_.__r.__words[1]);
  std::ostream::put();
  std::ostream::flush();
  v40 = sub_10000EA44(&v455, "{", 1);
  std::ios_base::getloc((v40 + *(*v40 - 24)));
  v41 = std::locale::use_facet(&v459.__r_.__value_.__r.__words[1], &std::ctype<char>::id);
  (v41->__vftable[2].~facet_0)(v41, 10);
  std::locale::~locale(&v459.__r_.__value_.__r.__words[1]);
  std::ostream::put();
  std::ostream::flush();
  if ((v443 & 0x80u) == 0)
  {
    locale = &v441;
  }

  else
  {
    locale = v441.__locale_;
  }

  if ((v443 & 0x80u) == 0)
  {
    v43 = v443;
  }

  else
  {
    v43 = v442;
  }

  sub_10000EA44(&v455, locale, v43);
  v459.__r_.__value_.__s.__data_[8] = 9;
  v44 = sub_10000EA44(&v455, &v459.__r_.__value_.__l.__size_, 1);
  v45 = sub_10000EA44(v44, "'mach abs time (sec)': ", 23);
  *(v45 + *(*v45 - 24) + 16) = 6;
  v46 = *(a1 + 48);
  v47 = std::ostream::operator<<();
  v48 = sub_10000EA44(v47, ",", 1);
  std::ios_base::getloc((v48 + *(*v48 - 24)));
  v49 = std::locale::use_facet(&v459.__r_.__value_.__r.__words[1], &std::ctype<char>::id);
  (v49->__vftable[2].~facet_0)(v49, 10);
  std::locale::~locale(&v459.__r_.__value_.__r.__words[1]);
  std::ostream::put();
  std::ostream::flush();
  v459.__r_.__value_.__s.__data_[8] = 9;
  v50 = sub_10000EA44(&v455, &v459.__r_.__value_.__l.__size_, 1);
  v51 = sub_10000EA44(v50, "'mach cont time (sec)': ", 24);
  *(v51 + *(*v51 - 24) + 16) = 6;
  v52 = *(a1 + 16);
  __dst.__r_.__value_.__r.__words[0] = *(a1 + 8);
  __dst.__r_.__value_.__s.__data_[8] = v52;
  sub_100004A08(__p, "UNKNOWN");
  sub_100198660(&__dst, __p, &v459.__r_.__value_.__r.__words[1]);
  if ((v460 & 0x80u) == 0)
  {
    v53 = &v459.__r_.__value_.__l.__size_;
  }

  else
  {
    v53 = v459.__r_.__value_.__l.__size_;
  }

  if ((v460 & 0x80u) == 0)
  {
    v54 = v460;
  }

  else
  {
    v54 = v459.__r_.__value_.__r.__words[2];
  }

  v55 = sub_10000EA44(v51, v53, v54);
  v56 = sub_10000EA44(v55, ",", 1);
  std::ios_base::getloc((v56 + *(*v56 - 24)));
  v57 = std::locale::use_facet(&v437, &std::ctype<char>::id);
  (v57->__vftable[2].~facet_0)(v57, 10);
  std::locale::~locale(&v437);
  std::ostream::put();
  std::ostream::flush();
  if (v460 < 0)
  {
    operator delete(v459.__r_.__value_.__l.__size_);
  }

  if (v440 < 0)
  {
    operator delete(__p[0]);
  }

  v459.__r_.__value_.__s.__data_[8] = 9;
  v58 = sub_10000EA44(&v455, &v459.__r_.__value_.__l.__size_, 1);
  v59 = sub_10000EA44(v58, "'", 1);
  sub_100198600(&v459.__r_.__value_.__s.__data_[8]);
  if ((v460 & 0x80u) == 0)
  {
    v60 = &v459.__r_.__value_.__l.__size_;
  }

  else
  {
    v60 = v459.__r_.__value_.__l.__size_;
  }

  if ((v460 & 0x80u) == 0)
  {
    v61 = v460;
  }

  else
  {
    v61 = v459.__r_.__value_.__r.__words[2];
  }

  v62 = sub_10000EA44(v59, v60, v61);
  v63 = sub_10000EA44(v62, " timestamp (sec)': ", 19);
  *(v63 + *(*v63 - 24) + 16) = 6;
  v64 = *(a1 + 104);
  v65 = std::ostream::operator<<();
  v66 = sub_10000EA44(v65, ",", 1);
  std::ios_base::getloc((v66 + *(*v66 - 24)));
  v67 = std::locale::use_facet(__p, &std::ctype<char>::id);
  (v67->__vftable[2].~facet_0)(v67, 10);
  std::locale::~locale(__p);
  std::ostream::put();
  std::ostream::flush();
  if (v460 < 0)
  {
    operator delete(v459.__r_.__value_.__l.__size_);
  }

  v459.__r_.__value_.__s.__data_[8] = 9;
  v68 = sub_10000EA44(&v455, &v459.__r_.__value_.__l.__size_, 1);
  v69 = sub_10000EA44(v68, "'", 1);
  sub_100198600(&v459.__r_.__value_.__s.__data_[8]);
  if ((v460 & 0x80u) == 0)
  {
    v70 = &v459.__r_.__value_.__l.__size_;
  }

  else
  {
    v70 = v459.__r_.__value_.__l.__size_;
  }

  if ((v460 & 0x80u) == 0)
  {
    v71 = v460;
  }

  else
  {
    v71 = v459.__r_.__value_.__r.__words[2];
  }

  v72 = sub_10000EA44(v69, v70, v71);
  v73 = sub_10000EA44(v72, " sess status': ", 15);
  sub_1004279E4(*(a1 + 96), __p);
  if (v440 >= 0)
  {
    v74 = __p;
  }

  else
  {
    v74 = __p[0];
  }

  v75 = strlen(v74);
  v76 = sub_10000EA44(v73, v74, v75);
  v77 = sub_10000EA44(v76, ",", 1);
  std::ios_base::getloc((v77 + *(*v77 - 24)));
  v78 = std::locale::use_facet(&__dst, &std::ctype<char>::id);
  (v78->__vftable[2].~facet_0)(v78, 10);
  std::locale::~locale(&__dst);
  std::ostream::put();
  std::ostream::flush();
  if (v440 < 0)
  {
    operator delete(__p[0]);
  }

  if (v460 < 0)
  {
    operator delete(v459.__r_.__value_.__l.__size_);
  }

  v459.__r_.__value_.__s.__data_[8] = 9;
  v79 = sub_10000EA44(&v455, &v459.__r_.__value_.__l.__size_, 1);
  v80 = sub_10000EA44(v79, "'", 1);
  sub_100198600(&v459.__r_.__value_.__s.__data_[8]);
  if ((v460 & 0x80u) == 0)
  {
    v81 = &v459.__r_.__value_.__l.__size_;
  }

  else
  {
    v81 = v459.__r_.__value_.__l.__size_;
  }

  if ((v460 & 0x80u) == 0)
  {
    v82 = v460;
  }

  else
  {
    v82 = v459.__r_.__value_.__r.__words[2];
  }

  v83 = sub_10000EA44(v80, v81, v82);
  v84 = sub_10000EA44(v83, " sess type': ", 13);
  sub_1004276FC(*(a1 + 100), __p);
  if (v440 >= 0)
  {
    v85 = __p;
  }

  else
  {
    v85 = __p[0];
  }

  v86 = strlen(v85);
  v87 = sub_10000EA44(v84, v85, v86);
  v88 = sub_10000EA44(v87, ",", 1);
  std::ios_base::getloc((v88 + *(*v88 - 24)));
  v89 = std::locale::use_facet(&__dst, &std::ctype<char>::id);
  (v89->__vftable[2].~facet_0)(v89, 10);
  std::locale::~locale(&__dst);
  std::ostream::put();
  std::ostream::flush();
  if (v440 < 0)
  {
    operator delete(__p[0]);
  }

  if (v460 < 0)
  {
    operator delete(v459.__r_.__value_.__l.__size_);
  }

  v459.__r_.__value_.__s.__data_[8] = 48;
  v90 = sub_100193BA0(&v455, &v459.__r_.__value_.__s.__data_[8]);
  *(v90 + *(*v90 - 24) + 8) = *(v90 + *(*v90 - 24) + 8) & 0xFFFFFFB5 | 8;
  v459.__r_.__value_.__s.__data_[8] = 9;
  v91 = sub_10000EA44(&v455, &v459.__r_.__value_.__l.__size_, 1);
  v92 = sub_10000EA44(v91, "'", 1);
  sub_100198600(&v459.__r_.__value_.__s.__data_[8]);
  if ((v460 & 0x80u) == 0)
  {
    v93 = &v459.__r_.__value_.__l.__size_;
  }

  else
  {
    v93 = v459.__r_.__value_.__l.__size_;
  }

  if ((v460 & 0x80u) == 0)
  {
    v94 = v460;
  }

  else
  {
    v94 = v459.__r_.__value_.__r.__words[2];
  }

  v95 = sub_10000EA44(v92, v93, v94);
  v96 = sub_10000EA44(v95, " winning_tx_antenna_mask': 0x", 29);
  *(v96 + *(*v96 - 24) + 24) = 2;
  v97 = *(a1 + 312);
  v98 = std::ostream::operator<<();
  v99 = sub_10000EA44(v98, ",", 1);
  std::ios_base::getloc((v99 + *(*v99 - 24)));
  v100 = std::locale::use_facet(__p, &std::ctype<char>::id);
  (v100->__vftable[2].~facet_0)(v100, 10);
  std::locale::~locale(__p);
  std::ostream::put();
  std::ostream::flush();
  if (v460 < 0)
  {
    operator delete(v459.__r_.__value_.__l.__size_);
  }

  *(&v455 + *(v455 - 24) + 8) = *(&v455 + *(v455 - 24) + 8) & 0xFFFFFFB5 | 2;
  v459.__r_.__value_.__s.__data_[8] = 9;
  v101 = sub_10000EA44(&v455, &v459.__r_.__value_.__l.__size_, 1);
  v102 = sub_10000EA44(v101, "'", 1);
  sub_100198600(&v459.__r_.__value_.__s.__data_[8]);
  if ((v460 & 0x80u) == 0)
  {
    v103 = &v459.__r_.__value_.__l.__size_;
  }

  else
  {
    v103 = v459.__r_.__value_.__l.__size_;
  }

  if ((v460 & 0x80u) == 0)
  {
    v104 = v460;
  }

  else
  {
    v104 = v459.__r_.__value_.__r.__words[2];
  }

  v105 = sub_10000EA44(v102, v103, v104);
  v106 = sub_10000EA44(v105, " UWB channel': ", 15);
  sub_100428144(*(a1 + 368), __p);
  if (v440 >= 0)
  {
    v107 = __p;
  }

  else
  {
    v107 = __p[0];
  }

  v108 = strlen(v107);
  v109 = sub_10000EA44(v106, v107, v108);
  v110 = sub_10000EA44(v109, ",", 1);
  std::ios_base::getloc((v110 + *(*v110 - 24)));
  v111 = std::locale::use_facet(&__dst, &std::ctype<char>::id);
  (v111->__vftable[2].~facet_0)(v111, 10);
  std::locale::~locale(&__dst);
  std::ostream::put();
  std::ostream::flush();
  if (v440 < 0)
  {
    operator delete(__p[0]);
  }

  if (v460 < 0)
  {
    operator delete(v459.__r_.__value_.__l.__size_);
  }

  v459.__r_.__value_.__s.__data_[8] = 9;
  v112 = sub_10000EA44(&v455, &v459.__r_.__value_.__l.__size_, 1);
  v113 = sub_10000EA44(v112, "'", 1);
  sub_100198600(&v459.__r_.__value_.__s.__data_[8]);
  if ((v460 & 0x80u) == 0)
  {
    v114 = &v459.__r_.__value_.__l.__size_;
  }

  else
  {
    v114 = v459.__r_.__value_.__l.__size_;
  }

  if ((v460 & 0x80u) == 0)
  {
    v115 = v460;
  }

  else
  {
    v115 = v459.__r_.__value_.__r.__words[2];
  }

  v116 = sub_10000EA44(v113, v114, v115);
  v117 = sub_10000EA44(v116, " Band select': ", 15);
  v118 = *(a1 + 369);
  if ((v118 & 0x100) != 0)
  {
    sub_100428174(v118, __p);
    if (v440 >= 0)
    {
      v119 = __p;
    }

    else
    {
      v119 = __p[0];
    }
  }

  else
  {
    v119 = "N/A";
  }

  v120 = strlen(v119);
  v121 = sub_10000EA44(v117, v119, v120);
  v122 = sub_10000EA44(v121, ",", 1);
  std::ios_base::getloc((v122 + *(*v122 - 24)));
  v123 = std::locale::use_facet(&__dst, &std::ctype<char>::id);
  (v123->__vftable[2].~facet_0)(v123, 10);
  std::locale::~locale(&__dst);
  std::ostream::put();
  std::ostream::flush();
  if ((v118 & 0x100) != 0 && v440 < 0)
  {
    operator delete(__p[0]);
  }

  if (v460 < 0)
  {
    operator delete(v459.__r_.__value_.__l.__size_);
  }

  v459.__r_.__value_.__s.__data_[8] = 9;
  v124 = sub_10000EA44(&v455, &v459.__r_.__value_.__l.__size_, 1);
  v125 = sub_10000EA44(v124, "'", 1);
  sub_100198600(&v459.__r_.__value_.__s.__data_[8]);
  if ((v460 & 0x80u) == 0)
  {
    v126 = &v459.__r_.__value_.__l.__size_;
  }

  else
  {
    v126 = v459.__r_.__value_.__l.__size_;
  }

  if ((v460 & 0x80u) == 0)
  {
    v127 = v460;
  }

  else
  {
    v127 = v459.__r_.__value_.__r.__words[2];
  }

  v128 = sub_10000EA44(v125, v126, v127);
  v129 = sub_10000EA44(v128, " NB channel': ", 14);
  v130 = *(a1 + 372);
  sub_100004A08(&v437, "N/A");
  if ((v130 & 0x10000) != 0)
  {
    std::to_string(&__dst, v130);
  }

  else if (SHIBYTE(v437.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_1000056BC(&__dst, v437.__r_.__value_.__l.__data_, v437.__r_.__value_.__l.__size_);
  }

  else
  {
    __dst = v437;
  }

  if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst.__r_.__value_.__r.__words[0];
  }

  if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v132 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v132 = __dst.__r_.__value_.__l.__size_;
  }

  v133 = sub_10000EA44(v129, p_dst, v132);
  v134 = sub_10000EA44(v133, ",", 1);
  std::ios_base::getloc((v134 + *(*v134 - 24)));
  v135 = std::locale::use_facet(&v435, &std::ctype<char>::id);
  (v135->__vftable[2].~facet_0)(v135, 10);
  std::locale::~locale(&v435);
  std::ostream::put();
  std::ostream::flush();
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v437.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v437.__r_.__value_.__l.__data_);
  }

  if (v460 < 0)
  {
    operator delete(v459.__r_.__value_.__l.__size_);
  }

  v459.__r_.__value_.__s.__data_[8] = 9;
  v136 = sub_10000EA44(&v455, &v459.__r_.__value_.__l.__size_, 1);
  v137 = sub_10000EA44(v136, "'", 1);
  sub_100198600(&v459.__r_.__value_.__s.__data_[8]);
  if ((v460 & 0x80u) == 0)
  {
    v138 = &v459.__r_.__value_.__l.__size_;
  }

  else
  {
    v138 = v459.__r_.__value_.__l.__size_;
  }

  if ((v460 & 0x80u) == 0)
  {
    v139 = v460;
  }

  else
  {
    v139 = v459.__r_.__value_.__r.__words[2];
  }

  v140 = sub_10000EA44(v137, v138, v139);
  v141 = sub_10000EA44(v140, " range (m)': ", 13);
  *(v141 + *(*v141 - 24) + 16) = 6;
  v142 = *(a1 + 304);
  v143 = std::ostream::operator<<();
  v144 = sub_10000EA44(v143, ",", 1);
  std::ios_base::getloc((v144 + *(*v144 - 24)));
  v145 = std::locale::use_facet(&__dst, &std::ctype<char>::id);
  (v145->__vftable[2].~facet_0)(v145, 10);
  std::locale::~locale(&__dst);
  std::ostream::put();
  std::ostream::flush();
  if (v460 < 0)
  {
    operator delete(v459.__r_.__value_.__l.__size_);
  }

  v459.__r_.__value_.__s.__data_[8] = 9;
  v146 = sub_10000EA44(&v455, &v459.__r_.__value_.__l.__size_, 1);
  v147 = sub_10000EA44(v146, "'ME range unc (m)': ", 20);
  *(v147 + *(*v147 - 24) + 16) = 6;
  v148 = *(a1 + 528);
  v437.__r_.__value_.__r.__words[0] = *(a1 + 520);
  v437.__r_.__value_.__s.__data_[8] = v148;
  sub_100004A08(&__dst, "N/A");
  sub_100198660(&v437, &__dst, &v459.__r_.__value_.__r.__words[1]);
  if ((v460 & 0x80u) == 0)
  {
    v149 = &v459.__r_.__value_.__l.__size_;
  }

  else
  {
    v149 = v459.__r_.__value_.__l.__size_;
  }

  if ((v460 & 0x80u) == 0)
  {
    v150 = v460;
  }

  else
  {
    v150 = v459.__r_.__value_.__r.__words[2];
  }

  v151 = sub_10000EA44(v147, v149, v150);
  v152 = sub_10000EA44(v151, ",", 1);
  std::ios_base::getloc((v152 + *(*v152 - 24)));
  v153 = std::locale::use_facet(&v435, &std::ctype<char>::id);
  (v153->__vftable[2].~facet_0)(v153, 10);
  std::locale::~locale(&v435);
  std::ostream::put();
  std::ostream::flush();
  if (v460 < 0)
  {
    operator delete(v459.__r_.__value_.__l.__size_);
  }

  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  v459.__r_.__value_.__s.__data_[8] = 9;
  v154 = sub_10000EA44(&v455, &v459.__r_.__value_.__l.__size_, 1);
  v155 = sub_10000EA44(v154, "'", 1);
  sub_100198600(&v459.__r_.__value_.__s.__data_[8]);
  if ((v460 & 0x80u) == 0)
  {
    v156 = &v459.__r_.__value_.__l.__size_;
  }

  else
  {
    v156 = v459.__r_.__value_.__l.__size_;
  }

  if ((v460 & 0x80u) == 0)
  {
    v157 = v460;
  }

  else
  {
    v157 = v459.__r_.__value_.__r.__words[2];
  }

  v158 = sub_10000EA44(v155, v156, v157);
  v159 = sub_10000EA44(v158, " azimuth PDOA (deg)': ", 22);
  *(v159 + *(*v159 - 24) + 16) = 6;
  v160 = *(a1 + 264);
  v435.__locale_ = *(a1 + 256);
  v436 = v160;
  sub_100004A08(&v437, "invalid");
  sub_100198660(&v435, &v437, &__dst);
  if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v161 = &__dst;
  }

  else
  {
    v161 = __dst.__r_.__value_.__r.__words[0];
  }

  if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v162 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v162 = __dst.__r_.__value_.__l.__size_;
  }

  v163 = sub_10000EA44(v159, v161, v162);
  v164 = sub_10000EA44(v163, ",", 1);
  std::ios_base::getloc((v164 + *(*v164 - 24)));
  v165 = std::locale::use_facet(&v459, &std::ctype<char>::id);
  (v165->__vftable[2].~facet_0)(v165, 10);
  std::locale::~locale(&v459);
  std::ostream::put();
  std::ostream::flush();
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v437.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v437.__r_.__value_.__l.__data_);
  }

  if (v460 < 0)
  {
    operator delete(v459.__r_.__value_.__l.__size_);
  }

  v459.__r_.__value_.__s.__data_[8] = 9;
  v166 = sub_10000EA44(&v455, &v459.__r_.__value_.__l.__size_, 1);
  v167 = sub_10000EA44(v166, "'", 1);
  sub_100198600(&v459.__r_.__value_.__s.__data_[8]);
  if ((v460 & 0x80u) == 0)
  {
    v168 = &v459.__r_.__value_.__l.__size_;
  }

  else
  {
    v168 = v459.__r_.__value_.__l.__size_;
  }

  if ((v460 & 0x80u) == 0)
  {
    v169 = v460;
  }

  else
  {
    v169 = v459.__r_.__value_.__r.__words[2];
  }

  v170 = sub_10000EA44(v167, v168, v169);
  v171 = sub_10000EA44(v170, " elevation PDOA (deg)': ", 24);
  *(v171 + *(*v171 - 24) + 16) = 6;
  v172 = *(a1 + 280);
  v435.__locale_ = *(a1 + 272);
  v436 = v172;
  sub_100004A08(&v437, "invalid");
  sub_100198660(&v435, &v437, &__dst);
  if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v173 = &__dst;
  }

  else
  {
    v173 = __dst.__r_.__value_.__r.__words[0];
  }

  if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v174 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v174 = __dst.__r_.__value_.__l.__size_;
  }

  v175 = sub_10000EA44(v171, v173, v174);
  v176 = sub_10000EA44(v175, ",", 1);
  std::ios_base::getloc((v176 + *(*v176 - 24)));
  v177 = std::locale::use_facet(&v459, &std::ctype<char>::id);
  (v177->__vftable[2].~facet_0)(v177, 10);
  std::locale::~locale(&v459);
  std::ostream::put();
  std::ostream::flush();
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v437.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v437.__r_.__value_.__l.__data_);
  }

  if (v460 < 0)
  {
    operator delete(v459.__r_.__value_.__l.__size_);
  }

  v459.__r_.__value_.__s.__data_[8] = 9;
  v178 = sub_10000EA44(&v455, &v459.__r_.__value_.__l.__size_, 1);
  v179 = sub_10000EA44(v178, "'", 1);
  sub_100198600(&v459.__r_.__value_.__s.__data_[8]);
  if ((v460 & 0x80u) == 0)
  {
    v180 = &v459.__r_.__value_.__l.__size_;
  }

  else
  {
    v180 = v459.__r_.__value_.__l.__size_;
  }

  if ((v460 & 0x80u) == 0)
  {
    v181 = v460;
  }

  else
  {
    v181 = v459.__r_.__value_.__r.__words[2];
  }

  v182 = sub_10000EA44(v179, v180, v181);
  v183 = sub_10000EA44(v182, " SOI RSSI (dBm)': ", 18);
  *(v183 + *(*v183 - 24) + 16) = 6;
  v184 = *(a1 + 168);
  v185 = std::ostream::operator<<();
  v186 = sub_10000EA44(v185, ",", 1);
  std::ios_base::getloc((v186 + *(*v186 - 24)));
  v187 = std::locale::use_facet(&__dst, &std::ctype<char>::id);
  (v187->__vftable[2].~facet_0)(v187, 10);
  std::locale::~locale(&__dst);
  std::ostream::put();
  std::ostream::flush();
  if (v460 < 0)
  {
    operator delete(v459.__r_.__value_.__l.__size_);
  }

  v459.__r_.__value_.__s.__data_[8] = 9;
  v188 = sub_10000EA44(&v455, &v459.__r_.__value_.__l.__size_, 1);
  v189 = sub_10000EA44(v188, "'", 1);
  sub_100198600(&v459.__r_.__value_.__s.__data_[8]);
  if ((v460 & 0x80u) == 0)
  {
    v190 = &v459.__r_.__value_.__l.__size_;
  }

  else
  {
    v190 = v459.__r_.__value_.__l.__size_;
  }

  if ((v460 & 0x80u) == 0)
  {
    v191 = v460;
  }

  else
  {
    v191 = v459.__r_.__value_.__r.__words[2];
  }

  v192 = sub_10000EA44(v189, v190, v191);
  sub_10000EA44(v192, " anchor time offset raw (r1 ticks)': ", 37);
  v193 = *(a1 + 292);
  v194 = std::ostream::operator<<();
  v195 = sub_10000EA44(v194, ",", 1);
  std::ios_base::getloc((v195 + *(*v195 - 24)));
  v196 = std::locale::use_facet(&__dst, &std::ctype<char>::id);
  (v196->__vftable[2].~facet_0)(v196, 10);
  std::locale::~locale(&__dst);
  std::ostream::put();
  std::ostream::flush();
  if (v460 < 0)
  {
    operator delete(v459.__r_.__value_.__l.__size_);
  }

  v459.__r_.__value_.__s.__data_[8] = 9;
  v197 = sub_10000EA44(&v455, &v459.__r_.__value_.__l.__size_, 1);
  v198 = sub_10000EA44(v197, "'", 1);
  sub_100198600(&v459.__r_.__value_.__s.__data_[8]);
  if ((v460 & 0x80u) == 0)
  {
    v199 = &v459.__r_.__value_.__l.__size_;
  }

  else
  {
    v199 = v459.__r_.__value_.__l.__size_;
  }

  if ((v460 & 0x80u) == 0)
  {
    v200 = v460;
  }

  else
  {
    v200 = v459.__r_.__value_.__r.__words[2];
  }

  v201 = sub_10000EA44(v198, v199, v200);
  sub_10000EA44(v201, " anchor time offset (ps)': ", 27);
  sub_100042338(*(a1 + 296));
  v202 = std::ostream::operator<<();
  v203 = sub_10000EA44(v202, ",", 1);
  std::ios_base::getloc((v203 + *(*v203 - 24)));
  v204 = std::locale::use_facet(&__dst, &std::ctype<char>::id);
  (v204->__vftable[2].~facet_0)(v204, 10);
  std::locale::~locale(&__dst);
  std::ostream::put();
  std::ostream::flush();
  if (v460 < 0)
  {
    operator delete(v459.__r_.__value_.__l.__size_);
  }

  v459.__r_.__value_.__s.__data_[8] = 9;
  v205 = sub_10000EA44(&v455, &v459.__r_.__value_.__l.__size_, 1);
  v206 = sub_10000EA44(v205, "'", 1);
  sub_100198600(&v459.__r_.__value_.__s.__data_[8]);
  if ((v460 & 0x80u) == 0)
  {
    v207 = &v459.__r_.__value_.__l.__size_;
  }

  else
  {
    v207 = v459.__r_.__value_.__l.__size_;
  }

  if ((v460 & 0x80u) == 0)
  {
    v208 = v460;
  }

  else
  {
    v208 = v459.__r_.__value_.__r.__words[2];
  }

  v209 = sub_10000EA44(v206, v207, v208);
  v210 = sub_10000EA44(v209, " AOA first path SNR - center (dB)': ", 36);
  *(v210 + *(*v210 - 24) + 16) = 6;
  v211 = *(a1 + 200);
  v435.__locale_ = *(a1 + 192);
  v436 = v211;
  sub_100004A08(&v437, "invalid");
  sub_100198660(&v435, &v437, &__dst);
  if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v212 = &__dst;
  }

  else
  {
    v212 = __dst.__r_.__value_.__r.__words[0];
  }

  if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v213 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v213 = __dst.__r_.__value_.__l.__size_;
  }

  v214 = sub_10000EA44(v210, v212, v213);
  v215 = sub_10000EA44(v214, ",", 1);
  std::ios_base::getloc((v215 + *(*v215 - 24)));
  v216 = std::locale::use_facet(&v459, &std::ctype<char>::id);
  (v216->__vftable[2].~facet_0)(v216, 10);
  std::locale::~locale(&v459);
  std::ostream::put();
  std::ostream::flush();
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v437.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v437.__r_.__value_.__l.__data_);
  }

  if (v460 < 0)
  {
    operator delete(v459.__r_.__value_.__l.__size_);
  }

  v459.__r_.__value_.__s.__data_[8] = 9;
  v217 = sub_10000EA44(&v455, &v459.__r_.__value_.__l.__size_, 1);
  v218 = sub_10000EA44(v217, "'", 1);
  sub_100198600(&v459.__r_.__value_.__s.__data_[8]);
  if ((v460 & 0x80u) == 0)
  {
    v219 = &v459.__r_.__value_.__l.__size_;
  }

  else
  {
    v219 = v459.__r_.__value_.__l.__size_;
  }

  if ((v460 & 0x80u) == 0)
  {
    v220 = v460;
  }

  else
  {
    v220 = v459.__r_.__value_.__r.__words[2];
  }

  v221 = sub_10000EA44(v218, v219, v220);
  v222 = sub_10000EA44(v221, " AOA first path SNR - vertical (dB)': ", 38);
  *(v222 + *(*v222 - 24) + 16) = 6;
  v223 = *(a1 + 216);
  v435.__locale_ = *(a1 + 208);
  v436 = v223;
  sub_100004A08(&v437, "invalid");
  sub_100198660(&v435, &v437, &__dst);
  if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v224 = &__dst;
  }

  else
  {
    v224 = __dst.__r_.__value_.__r.__words[0];
  }

  if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v225 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v225 = __dst.__r_.__value_.__l.__size_;
  }

  v226 = sub_10000EA44(v222, v224, v225);
  v227 = sub_10000EA44(v226, ",", 1);
  std::ios_base::getloc((v227 + *(*v227 - 24)));
  v228 = std::locale::use_facet(&v459, &std::ctype<char>::id);
  (v228->__vftable[2].~facet_0)(v228, 10);
  std::locale::~locale(&v459);
  std::ostream::put();
  std::ostream::flush();
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v437.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v437.__r_.__value_.__l.__data_);
  }

  if (v460 < 0)
  {
    operator delete(v459.__r_.__value_.__l.__size_);
  }

  v459.__r_.__value_.__s.__data_[8] = 9;
  v229 = sub_10000EA44(&v455, &v459.__r_.__value_.__l.__size_, 1);
  v230 = sub_10000EA44(v229, "'", 1);
  sub_100198600(&v459.__r_.__value_.__s.__data_[8]);
  if ((v460 & 0x80u) == 0)
  {
    v231 = &v459.__r_.__value_.__l.__size_;
  }

  else
  {
    v231 = v459.__r_.__value_.__l.__size_;
  }

  if ((v460 & 0x80u) == 0)
  {
    v232 = v460;
  }

  else
  {
    v232 = v459.__r_.__value_.__r.__words[2];
  }

  v233 = sub_10000EA44(v230, v231, v232);
  v234 = sub_10000EA44(v233, " AOA first path SNR - horizontal (dB)': ", 40);
  *(v234 + *(*v234 - 24) + 16) = 6;
  v235 = *(a1 + 232);
  v435.__locale_ = *(a1 + 224);
  v436 = v235;
  sub_100004A08(&v437, "invalid");
  sub_100198660(&v435, &v437, &__dst);
  if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v236 = &__dst;
  }

  else
  {
    v236 = __dst.__r_.__value_.__r.__words[0];
  }

  if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v237 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v237 = __dst.__r_.__value_.__l.__size_;
  }

  v238 = sub_10000EA44(v234, v236, v237);
  v239 = sub_10000EA44(v238, ",", 1);
  std::ios_base::getloc((v239 + *(*v239 - 24)));
  v240 = std::locale::use_facet(&v459, &std::ctype<char>::id);
  (v240->__vftable[2].~facet_0)(v240, 10);
  std::locale::~locale(&v459);
  std::ostream::put();
  std::ostream::flush();
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v437.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v437.__r_.__value_.__l.__data_);
  }

  if (v460 < 0)
  {
    operator delete(v459.__r_.__value_.__l.__size_);
  }

  v459.__r_.__value_.__s.__data_[8] = 9;
  v241 = sub_10000EA44(&v455, &v459.__r_.__value_.__l.__size_, 1);
  v242 = sub_10000EA44(v241, "'", 1);
  sub_100198600(&v459.__r_.__value_.__s.__data_[8]);
  if ((v460 & 0x80u) == 0)
  {
    v243 = &v459.__r_.__value_.__l.__size_;
  }

  else
  {
    v243 = v459.__r_.__value_.__l.__size_;
  }

  if ((v460 & 0x80u) == 0)
  {
    v244 = v460;
  }

  else
  {
    v244 = v459.__r_.__value_.__r.__words[2];
  }

  v245 = sub_10000EA44(v242, v243, v244);
  v246 = sub_10000EA44(v245, " carrier freq offset (ppb)': ", 29);
  *(v246 + *(*v246 - 24) + 16) = 6;
  sub_100042348(*(a1 + 240));
  v247 = std::ostream::operator<<();
  v248 = sub_10000EA44(v247, ",", 1);
  std::ios_base::getloc((v248 + *(*v248 - 24)));
  v249 = std::locale::use_facet(&__dst, &std::ctype<char>::id);
  (v249->__vftable[2].~facet_0)(v249, 10);
  std::locale::~locale(&__dst);
  std::ostream::put();
  std::ostream::flush();
  if (v460 < 0)
  {
    operator delete(v459.__r_.__value_.__l.__size_);
  }

  v459.__r_.__value_.__s.__data_[8] = 9;
  v250 = sub_10000EA44(&v455, &v459.__r_.__value_.__l.__size_, 1);
  v251 = sub_10000EA44(v250, "'", 1);
  sub_100198600(&v459.__r_.__value_.__s.__data_[8]);
  if ((v460 & 0x80u) == 0)
  {
    v252 = &v459.__r_.__value_.__l.__size_;
  }

  else
  {
    v252 = v459.__r_.__value_.__l.__size_;
  }

  if ((v460 & 0x80u) == 0)
  {
    v253 = v460;
  }

  else
  {
    v253 = v459.__r_.__value_.__r.__words[2];
  }

  v254 = sub_10000EA44(v251, v252, v253);
  v255 = sub_10000EA44(v254, " AOA first path index - center (dB)': ", 38);
  *(v255 + *(*v255 - 24) + 16) = 6;
  v256 = *(a1 + 328);
  v435.__locale_ = *(a1 + 320);
  v436 = v256;
  sub_100004A08(&v437, "invalid");
  sub_100198660(&v435, &v437, &__dst);
  if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v257 = &__dst;
  }

  else
  {
    v257 = __dst.__r_.__value_.__r.__words[0];
  }

  if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v258 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v258 = __dst.__r_.__value_.__l.__size_;
  }

  v259 = sub_10000EA44(v255, v257, v258);
  v260 = sub_10000EA44(v259, ",", 1);
  std::ios_base::getloc((v260 + *(*v260 - 24)));
  v261 = std::locale::use_facet(&v459, &std::ctype<char>::id);
  (v261->__vftable[2].~facet_0)(v261, 10);
  std::locale::~locale(&v459);
  std::ostream::put();
  std::ostream::flush();
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v437.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v437.__r_.__value_.__l.__data_);
  }

  if (v460 < 0)
  {
    operator delete(v459.__r_.__value_.__l.__size_);
  }

  v459.__r_.__value_.__s.__data_[8] = 9;
  v262 = sub_10000EA44(&v455, &v459.__r_.__value_.__l.__size_, 1);
  v263 = sub_10000EA44(v262, "'", 1);
  sub_100198600(&v459.__r_.__value_.__s.__data_[8]);
  if ((v460 & 0x80u) == 0)
  {
    v264 = &v459.__r_.__value_.__l.__size_;
  }

  else
  {
    v264 = v459.__r_.__value_.__l.__size_;
  }

  if ((v460 & 0x80u) == 0)
  {
    v265 = v460;
  }

  else
  {
    v265 = v459.__r_.__value_.__r.__words[2];
  }

  v266 = sub_10000EA44(v263, v264, v265);
  v267 = sub_10000EA44(v266, " AOA first path index - vertical (dB)': ", 40);
  *(v267 + *(*v267 - 24) + 16) = 6;
  v268 = *(a1 + 344);
  v435.__locale_ = *(a1 + 336);
  v436 = v268;
  sub_100004A08(&v437, "invalid");
  sub_100198660(&v435, &v437, &__dst);
  if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v269 = &__dst;
  }

  else
  {
    v269 = __dst.__r_.__value_.__r.__words[0];
  }

  if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v270 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v270 = __dst.__r_.__value_.__l.__size_;
  }

  v271 = sub_10000EA44(v267, v269, v270);
  v272 = sub_10000EA44(v271, ",", 1);
  std::ios_base::getloc((v272 + *(*v272 - 24)));
  v273 = std::locale::use_facet(&v459, &std::ctype<char>::id);
  (v273->__vftable[2].~facet_0)(v273, 10);
  std::locale::~locale(&v459);
  std::ostream::put();
  std::ostream::flush();
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v437.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v437.__r_.__value_.__l.__data_);
  }

  if (v460 < 0)
  {
    operator delete(v459.__r_.__value_.__l.__size_);
  }

  v459.__r_.__value_.__s.__data_[8] = 9;
  v274 = sub_10000EA44(&v455, &v459.__r_.__value_.__l.__size_, 1);
  v275 = sub_10000EA44(v274, "'", 1);
  sub_100198600(&v459.__r_.__value_.__s.__data_[8]);
  if ((v460 & 0x80u) == 0)
  {
    v276 = &v459.__r_.__value_.__l.__size_;
  }

  else
  {
    v276 = v459.__r_.__value_.__l.__size_;
  }

  if ((v460 & 0x80u) == 0)
  {
    v277 = v460;
  }

  else
  {
    v277 = v459.__r_.__value_.__r.__words[2];
  }

  v278 = sub_10000EA44(v275, v276, v277);
  v279 = sub_10000EA44(v278, " AOA first path index - horizontal (dB)': ", 42);
  *(v279 + *(*v279 - 24) + 16) = 6;
  v280 = *(a1 + 360);
  v435.__locale_ = *(a1 + 352);
  v436 = v280;
  sub_100004A08(&v437, "invalid");
  sub_100198660(&v435, &v437, &__dst);
  if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v281 = &__dst;
  }

  else
  {
    v281 = __dst.__r_.__value_.__r.__words[0];
  }

  if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v282 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v282 = __dst.__r_.__value_.__l.__size_;
  }

  v283 = sub_10000EA44(v279, v281, v282);
  v284 = sub_10000EA44(v283, ",", 1);
  std::ios_base::getloc((v284 + *(*v284 - 24)));
  v285 = std::locale::use_facet(&v459, &std::ctype<char>::id);
  (v285->__vftable[2].~facet_0)(v285, 10);
  std::locale::~locale(&v459);
  std::ostream::put();
  std::ostream::flush();
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v437.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v437.__r_.__value_.__l.__data_);
  }

  if (v460 < 0)
  {
    operator delete(v459.__r_.__value_.__l.__size_);
  }

  if ((*(a1 + 382) & 0x100) != 0)
  {
    v459.__r_.__value_.__s.__data_[8] = 9;
    v286 = sub_10000EA44(&v455, &v459.__r_.__value_.__l.__size_, 1);
    v287 = sub_10000EA44(v286, "'remote_tx_antenna_mask': 0x", 28);
    *(v287 + *(*v287 - 24) + 24) = 2;
    if ((*(a1 + 382) & 0x100) == 0)
    {
      sub_1000195BC();
    }

    v288 = *(a1 + 382);
    v289 = std::ostream::operator<<();
    v290 = sub_10000EA44(v289, ",", 1);
    std::ios_base::getloc((v290 + *(*v290 - 24)));
    v291 = std::locale::use_facet(&v459.__r_.__value_.__r.__words[1], &std::ctype<char>::id);
    (v291->__vftable[2].~facet_0)(v291, 10);
    std::locale::~locale(&v459.__r_.__value_.__r.__words[1]);
    std::ostream::put();
    std::ostream::flush();
  }

  v292 = sub_10000EA44(&v455, "}", 1);
  std::ios_base::getloc((v292 + *(*v292 - 24)));
  v293 = std::locale::use_facet(&v459.__r_.__value_.__r.__words[1], &std::ctype<char>::id);
  (v293->__vftable[2].~facet_0)(v293, 10);
  std::locale::~locale(&v459.__r_.__value_.__r.__words[1]);
  std::ostream::put();
  std::ostream::flush();
  v294 = sub_10000EA44(&v450, "Range Result (Part 2 of 2):", 27);
  std::ios_base::getloc((v294 + *(*v294 - 24)));
  v295 = std::locale::use_facet(&v459.__r_.__value_.__r.__words[1], &std::ctype<char>::id);
  (v295->__vftable[2].~facet_0)(v295, 10);
  std::locale::~locale(&v459.__r_.__value_.__r.__words[1]);
  std::ostream::put();
  std::ostream::flush();
  v296 = sub_10000EA44(&v450, "{", 1);
  std::ios_base::getloc((v296 + *(*v296 - 24)));
  v297 = std::locale::use_facet(&v459.__r_.__value_.__r.__words[1], &std::ctype<char>::id);
  (v297->__vftable[2].~facet_0)(v297, 10);
  std::locale::~locale(&v459.__r_.__value_.__r.__words[1]);
  std::ostream::put();
  std::ostream::flush();
  if ((v443 & 0x80u) == 0)
  {
    v298 = &v441;
  }

  else
  {
    v298 = v441.__locale_;
  }

  if ((v443 & 0x80u) == 0)
  {
    v299 = v443;
  }

  else
  {
    v299 = v442;
  }

  sub_10000EA44(&v450, v298, v299);
  v459.__r_.__value_.__s.__data_[8] = 9;
  v300 = sub_10000EA44(&v450, &v459.__r_.__value_.__l.__size_, 1);
  v301 = sub_10000EA44(v300, "'", 1);
  sub_100198600(&v459.__r_.__value_.__s.__data_[8]);
  if ((v460 & 0x80u) == 0)
  {
    v302 = &v459.__r_.__value_.__l.__size_;
  }

  else
  {
    v302 = v459.__r_.__value_.__l.__size_;
  }

  if ((v460 & 0x80u) == 0)
  {
    v303 = v460;
  }

  else
  {
    v303 = v459.__r_.__value_.__r.__words[2];
  }

  v304 = sub_10000EA44(v301, v302, v303);
  v305 = sub_10000EA44(v304, " SOI RSSI 2 (dBm)': ", 20);
  *(v305 + *(*v305 - 24) + 16) = 6;
  v306 = *(a1 + 184);
  v435.__locale_ = *(a1 + 176);
  v436 = v306;
  sub_100004A08(&v437, "invalid");
  sub_100198660(&v435, &v437, &__dst);
  if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v307 = &__dst;
  }

  else
  {
    v307 = __dst.__r_.__value_.__r.__words[0];
  }

  if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v308 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v308 = __dst.__r_.__value_.__l.__size_;
  }

  v309 = sub_10000EA44(v305, v307, v308);
  v310 = sub_10000EA44(v309, ",", 1);
  std::ios_base::getloc((v310 + *(*v310 - 24)));
  v311 = std::locale::use_facet(&v459, &std::ctype<char>::id);
  (v311->__vftable[2].~facet_0)(v311, 10);
  std::locale::~locale(&v459);
  std::ostream::put();
  std::ostream::flush();
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v437.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v437.__r_.__value_.__l.__data_);
  }

  if (v460 < 0)
  {
    operator delete(v459.__r_.__value_.__l.__size_);
  }

  v459.__r_.__value_.__s.__data_[8] = 9;
  v312 = sub_10000EA44(&v450, &v459.__r_.__value_.__l.__size_, 1);
  v313 = sub_10000EA44(v312, "'", 1);
  sub_100198600(&v459.__r_.__value_.__s.__data_[8]);
  if ((v460 & 0x80u) == 0)
  {
    v314 = &v459.__r_.__value_.__l.__size_;
  }

  else
  {
    v314 = v459.__r_.__value_.__l.__size_;
  }

  if ((v460 & 0x80u) == 0)
  {
    v315 = v460;
  }

  else
  {
    v315 = v459.__r_.__value_.__r.__words[2];
  }

  v316 = sub_10000EA44(v313, v314, v315);
  v317 = sub_10000EA44(v316, " OC SOI RSSI 2 (dBm)': ", 23);
  *(v317 + *(*v317 - 24) + 16) = 6;
  v318 = *(a1 + 496);
  v435.__locale_ = *(a1 + 488);
  v436 = v318;
  sub_100004A08(&v437, "invalid");
  sub_100198660(&v435, &v437, &__dst);
  if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v319 = &__dst;
  }

  else
  {
    v319 = __dst.__r_.__value_.__r.__words[0];
  }

  if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v320 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v320 = __dst.__r_.__value_.__l.__size_;
  }

  v321 = sub_10000EA44(v317, v319, v320);
  v322 = sub_10000EA44(v321, ",", 1);
  std::ios_base::getloc((v322 + *(*v322 - 24)));
  v323 = std::locale::use_facet(&v459, &std::ctype<char>::id);
  (v323->__vftable[2].~facet_0)(v323, 10);
  std::locale::~locale(&v459);
  std::ostream::put();
  std::ostream::flush();
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v437.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v437.__r_.__value_.__l.__data_);
  }

  if (v460 < 0)
  {
    operator delete(v459.__r_.__value_.__l.__size_);
  }

  v459.__r_.__value_.__s.__data_[8] = 9;
  v324 = sub_10000EA44(&v450, &v459.__r_.__value_.__l.__size_, 1);
  v325 = sub_10000EA44(v324, "'", 1);
  sub_100198600(&v459.__r_.__value_.__s.__data_[8]);
  if ((v460 & 0x80u) == 0)
  {
    v326 = &v459.__r_.__value_.__l.__size_;
  }

  else
  {
    v326 = v459.__r_.__value_.__l.__size_;
  }

  if ((v460 & 0x80u) == 0)
  {
    v327 = v460;
  }

  else
  {
    v327 = v459.__r_.__value_.__r.__words[2];
  }

  v328 = sub_10000EA44(v325, v326, v327);
  v329 = sub_10000EA44(v328, " mms val status':  ", 19);
  LOWORD(v459.__r_.__value_.__l.__data_) = *(a1 + 466);
  sub_100004A08(&v437, "N/A");
  sub_1001986A0(&v459, &v437, &__dst);
  if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v330 = &__dst;
  }

  else
  {
    v330 = __dst.__r_.__value_.__r.__words[0];
  }

  if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v331 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v331 = __dst.__r_.__value_.__l.__size_;
  }

  v332 = sub_10000EA44(v329, v330, v331);
  v333 = sub_10000EA44(v332, ",", 1);
  std::ios_base::getloc((v333 + *(*v333 - 24)));
  v334 = std::locale::use_facet(&v435, &std::ctype<char>::id);
  (v334->__vftable[2].~facet_0)(v334, 10);
  std::locale::~locale(&v435);
  std::ostream::put();
  std::ostream::flush();
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v437.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v437.__r_.__value_.__l.__data_);
  }

  if (v460 < 0)
  {
    operator delete(v459.__r_.__value_.__l.__size_);
  }

  v459.__r_.__value_.__s.__data_[8] = 9;
  v335 = sub_10000EA44(&v450, &v459.__r_.__value_.__l.__size_, 1);
  v336 = sub_10000EA44(v335, "'", 1);
  sub_100198600(&v459.__r_.__value_.__s.__data_[8]);
  if ((v460 & 0x80u) == 0)
  {
    v337 = &v459.__r_.__value_.__l.__size_;
  }

  else
  {
    v337 = v459.__r_.__value_.__l.__size_;
  }

  if ((v460 & 0x80u) == 0)
  {
    v338 = v460;
  }

  else
  {
    v338 = v459.__r_.__value_.__r.__words[2];
  }

  v339 = sub_10000EA44(v336, v337, v338);
  v340 = sub_10000EA44(v339, " nb demod chain: ':  ", 21);
  LOWORD(v459.__r_.__value_.__l.__data_) = *(a1 + 504);
  sub_100004A08(&v437, "N/A");
  sub_1001986A0(&v459, &v437, &__dst);
  if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v341 = &__dst;
  }

  else
  {
    v341 = __dst.__r_.__value_.__r.__words[0];
  }

  if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v342 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v342 = __dst.__r_.__value_.__l.__size_;
  }

  v343 = sub_10000EA44(v340, v341, v342);
  v344 = sub_10000EA44(v343, ",", 1);
  std::ios_base::getloc((v344 + *(*v344 - 24)));
  v345 = std::locale::use_facet(&v435, &std::ctype<char>::id);
  (v345->__vftable[2].~facet_0)(v345, 10);
  std::locale::~locale(&v435);
  std::ostream::put();
  std::ostream::flush();
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v437.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v437.__r_.__value_.__l.__data_);
  }

  if (v460 < 0)
  {
    operator delete(v459.__r_.__value_.__l.__size_);
  }

  v459.__r_.__value_.__s.__data_[8] = 9;
  v346 = sub_10000EA44(&v450, &v459.__r_.__value_.__l.__size_, 1);
  v347 = sub_10000EA44(v346, "'", 1);
  sub_100198600(&v459.__r_.__value_.__s.__data_[8]);
  if ((v460 & 0x80u) == 0)
  {
    v348 = &v459.__r_.__value_.__l.__size_;
  }

  else
  {
    v348 = v459.__r_.__value_.__l.__size_;
  }

  if ((v460 & 0x80u) == 0)
  {
    v349 = v460;
  }

  else
  {
    v349 = v459.__r_.__value_.__r.__words[2];
  }

  v350 = sub_10000EA44(v347, v348, v349);
  v351 = sub_10000EA44(v350, " nb rx0 elna hg: ':  ", 21);
  LOWORD(v459.__r_.__value_.__l.__data_) = *(a1 + 506);
  sub_100004A08(&v437, "N/A");
  sub_1001986A0(&v459, &v437, &__dst);
  if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v352 = &__dst;
  }

  else
  {
    v352 = __dst.__r_.__value_.__r.__words[0];
  }

  if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v353 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v353 = __dst.__r_.__value_.__l.__size_;
  }

  v354 = sub_10000EA44(v351, v352, v353);
  v355 = sub_10000EA44(v354, ",", 1);
  std::ios_base::getloc((v355 + *(*v355 - 24)));
  v356 = std::locale::use_facet(&v435, &std::ctype<char>::id);
  (v356->__vftable[2].~facet_0)(v356, 10);
  std::locale::~locale(&v435);
  std::ostream::put();
  std::ostream::flush();
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v437.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v437.__r_.__value_.__l.__data_);
  }

  if (v460 < 0)
  {
    operator delete(v459.__r_.__value_.__l.__size_);
  }

  v459.__r_.__value_.__s.__data_[8] = 9;
  v357 = sub_10000EA44(&v450, &v459.__r_.__value_.__l.__size_, 1);
  v358 = sub_10000EA44(v357, "'", 1);
  sub_100198600(&v459.__r_.__value_.__s.__data_[8]);
  if ((v460 & 0x80u) == 0)
  {
    v359 = &v459.__r_.__value_.__l.__size_;
  }

  else
  {
    v359 = v459.__r_.__value_.__l.__size_;
  }

  if ((v460 & 0x80u) == 0)
  {
    v360 = v460;
  }

  else
  {
    v360 = v459.__r_.__value_.__r.__words[2];
  }

  v361 = sub_10000EA44(v358, v359, v360);
  v362 = sub_10000EA44(v361, " nb rx1 elna hg: ':  ", 21);
  LOWORD(v459.__r_.__value_.__l.__data_) = *(a1 + 508);
  sub_100004A08(&v437, "N/A");
  sub_1001986A0(&v459, &v437, &__dst);
  if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v363 = &__dst;
  }

  else
  {
    v363 = __dst.__r_.__value_.__r.__words[0];
  }

  if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v364 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v364 = __dst.__r_.__value_.__l.__size_;
  }

  v365 = sub_10000EA44(v362, v363, v364);
  v366 = sub_10000EA44(v365, ",", 1);
  std::ios_base::getloc((v366 + *(*v366 - 24)));
  v367 = std::locale::use_facet(&v435, &std::ctype<char>::id);
  (v367->__vftable[2].~facet_0)(v367, 10);
  std::locale::~locale(&v435);
  std::ostream::put();
  std::ostream::flush();
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v437.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v437.__r_.__value_.__l.__data_);
  }

  if (v460 < 0)
  {
    operator delete(v459.__r_.__value_.__l.__size_);
  }

  v459.__r_.__value_.__s.__data_[8] = 9;
  v368 = sub_10000EA44(&v450, &v459.__r_.__value_.__l.__size_, 1);
  v369 = sub_10000EA44(v368, "'", 1);
  sub_100198600(&v459.__r_.__value_.__s.__data_[8]);
  if ((v460 & 0x80u) == 0)
  {
    v370 = &v459.__r_.__value_.__l.__size_;
  }

  else
  {
    v370 = v459.__r_.__value_.__l.__size_;
  }

  if ((v460 & 0x80u) == 0)
  {
    v371 = v460;
  }

  else
  {
    v371 = v459.__r_.__value_.__r.__words[2];
  }

  v372 = sub_10000EA44(v369, v370, v371);
  v373 = sub_10000EA44(v372, " nb tx antenna: ':  ", 20);
  LOWORD(v459.__r_.__value_.__l.__data_) = *(a1 + 510);
  sub_100004A08(&v437, "N/A");
  sub_1001986A0(&v459, &v437, &__dst);
  if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v374 = &__dst;
  }

  else
  {
    v374 = __dst.__r_.__value_.__r.__words[0];
  }

  if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v375 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v375 = __dst.__r_.__value_.__l.__size_;
  }

  v376 = sub_10000EA44(v373, v374, v375);
  v377 = sub_10000EA44(v376, ",", 1);
  std::ios_base::getloc((v377 + *(*v377 - 24)));
  v378 = std::locale::use_facet(&v435, &std::ctype<char>::id);
  (v378->__vftable[2].~facet_0)(v378, 10);
  std::locale::~locale(&v435);
  std::ostream::put();
  std::ostream::flush();
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v437.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v437.__r_.__value_.__l.__data_);
  }

  if (v460 < 0)
  {
    operator delete(v459.__r_.__value_.__l.__size_);
  }

  v459.__r_.__value_.__s.__data_[8] = 9;
  v379 = sub_10000EA44(&v450, &v459.__r_.__value_.__l.__size_, 1);
  v380 = sub_10000EA44(v379, "'", 1);
  sub_100198600(&v459.__r_.__value_.__s.__data_[8]);
  if ((v460 & 0x80u) == 0)
  {
    v381 = &v459.__r_.__value_.__l.__size_;
  }

  else
  {
    v381 = v459.__r_.__value_.__l.__size_;
  }

  if ((v460 & 0x80u) == 0)
  {
    v382 = v460;
  }

  else
  {
    v382 = v459.__r_.__value_.__r.__words[2];
  }

  v383 = sub_10000EA44(v380, v381, v382);
  v384 = sub_10000EA44(v383, " cycle skipping':  ", 19);
  LOWORD(v459.__r_.__value_.__l.__data_) = *(a1 + 512);
  sub_100004A08(&v437, "N/A");
  sub_1001986A0(&v459, &v437, &__dst);
  if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v385 = &__dst;
  }

  else
  {
    v385 = __dst.__r_.__value_.__r.__words[0];
  }

  if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v386 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v386 = __dst.__r_.__value_.__l.__size_;
  }

  v387 = sub_10000EA44(v384, v385, v386);
  v388 = sub_10000EA44(v387, ",", 1);
  std::ios_base::getloc((v388 + *(*v388 - 24)));
  v389 = std::locale::use_facet(&v435, &std::ctype<char>::id);
  (v389->__vftable[2].~facet_0)(v389, 10);
  std::locale::~locale(&v435);
  std::ostream::put();
  std::ostream::flush();
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v437.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v437.__r_.__value_.__l.__data_);
  }

  if (v460 < 0)
  {
    operator delete(v459.__r_.__value_.__l.__size_);
  }

  v459.__r_.__value_.__s.__data_[8] = 9;
  v390 = sub_10000EA44(&v450, &v459.__r_.__value_.__l.__size_, 1);
  v391 = sub_10000EA44(v390, "'toa peak snr (dB)':", 20);
  LOWORD(v435.__locale_) = *(a1 + 452);
  sub_100004A08(&__dst, "N/A");
  sub_1001986A0(&v435, &__dst, &v459.__r_.__value_.__r.__words[1]);
  if ((v460 & 0x80u) == 0)
  {
    v392 = &v459.__r_.__value_.__l.__size_;
  }

  else
  {
    v392 = v459.__r_.__value_.__l.__size_;
  }

  if ((v460 & 0x80u) == 0)
  {
    v393 = v460;
  }

  else
  {
    v393 = v459.__r_.__value_.__r.__words[2];
  }

  v394 = sub_10000EA44(v391, v392, v393);
  v395 = sub_10000EA44(v394, ",", 1);
  std::ios_base::getloc((v395 + *(*v395 - 24)));
  v396 = std::locale::use_facet(&v437, &std::ctype<char>::id);
  (v396->__vftable[2].~facet_0)(v396, 10);
  std::locale::~locale(&v437);
  std::ostream::put();
  std::ostream::flush();
  if (v460 < 0)
  {
    operator delete(v459.__r_.__value_.__l.__size_);
  }

  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  v459.__r_.__value_.__s.__data_[8] = 9;
  v397 = sub_10000EA44(&v450, &v459.__r_.__value_.__l.__size_, 1);
  v398 = sub_10000EA44(v397, "'toa peak index high res':", 26);
  v399 = *(a1 + 454);
  LOWORD(v435.__locale_) = v399;
  BYTE2(v435.__locale_) = BYTE2(v399);
  sub_100004A08(&__dst, "N/A");
  sub_1001986E0(&v435, &__dst, &v459.__r_.__value_.__r.__words[1]);
  if ((v460 & 0x80u) == 0)
  {
    v400 = &v459.__r_.__value_.__l.__size_;
  }

  else
  {
    v400 = v459.__r_.__value_.__l.__size_;
  }

  if ((v460 & 0x80u) == 0)
  {
    v401 = v460;
  }

  else
  {
    v401 = v459.__r_.__value_.__r.__words[2];
  }

  v402 = sub_10000EA44(v398, v400, v401);
  v403 = sub_10000EA44(v402, ",", 1);
  std::ios_base::getloc((v403 + *(*v403 - 24)));
  v404 = std::locale::use_facet(&v437, &std::ctype<char>::id);
  (v404->__vftable[2].~facet_0)(v404, 10);
  std::locale::~locale(&v437);
  std::ostream::put();
  std::ostream::flush();
  if (v460 < 0)
  {
    operator delete(v459.__r_.__value_.__l.__size_);
  }

  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  v459.__r_.__value_.__s.__data_[8] = 9;
  v405 = sub_10000EA44(&v450, &v459.__r_.__value_.__l.__size_, 1);
  v406 = sub_10000EA44(v405, "'toa peak signal level high res (dB)':", 38);
  v407 = *(a1 + 458);
  LOWORD(v435.__locale_) = v407;
  BYTE2(v435.__locale_) = BYTE2(v407);
  sub_100004A08(&__dst, "N/A");
  sub_1001986E0(&v435, &__dst, &v459.__r_.__value_.__r.__words[1]);
  if ((v460 & 0x80u) == 0)
  {
    v408 = &v459.__r_.__value_.__l.__size_;
  }

  else
  {
    v408 = v459.__r_.__value_.__l.__size_;
  }

  if ((v460 & 0x80u) == 0)
  {
    v409 = v460;
  }

  else
  {
    v409 = v459.__r_.__value_.__r.__words[2];
  }

  v410 = sub_10000EA44(v406, v408, v409);
  v411 = sub_10000EA44(v410, ",", 1);
  std::ios_base::getloc((v411 + *(*v411 - 24)));
  v412 = std::locale::use_facet(&v437, &std::ctype<char>::id);
  (v412->__vftable[2].~facet_0)(v412, 10);
  std::locale::~locale(&v437);
  std::ostream::put();
  std::ostream::flush();
  if (v460 < 0)
  {
    operator delete(v459.__r_.__value_.__l.__size_);
  }

  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  v459.__r_.__value_.__s.__data_[8] = 9;
  v413 = sub_10000EA44(&v450, &v459.__r_.__value_.__l.__size_, 1);
  v414 = sub_10000EA44(v413, "'nb rx status':", 15);
  LOWORD(v435.__locale_) = *(a1 + 448);
  sub_100004A08(&__dst, "N/A");
  sub_1001986A0(&v435, &__dst, &v459.__r_.__value_.__r.__words[1]);
  if ((v460 & 0x80u) == 0)
  {
    v415 = &v459.__r_.__value_.__l.__size_;
  }

  else
  {
    v415 = v459.__r_.__value_.__l.__size_;
  }

  if ((v460 & 0x80u) == 0)
  {
    v416 = v460;
  }

  else
  {
    v416 = v459.__r_.__value_.__r.__words[2];
  }

  v417 = sub_10000EA44(v414, v415, v416);
  v418 = sub_10000EA44(v417, ",", 1);
  std::ios_base::getloc((v418 + *(*v418 - 24)));
  v419 = std::locale::use_facet(&v437, &std::ctype<char>::id);
  (v419->__vftable[2].~facet_0)(v419, 10);
  std::locale::~locale(&v437);
  std::ostream::put();
  std::ostream::flush();
  if (v460 < 0)
  {
    operator delete(v459.__r_.__value_.__l.__size_);
  }

  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  v459.__r_.__value_.__s.__data_[8] = 9;
  v420 = sub_10000EA44(&v450, &v459.__r_.__value_.__l.__size_, 1);
  v421 = sub_10000EA44(v420, "'mms rx status':", 16);
  LOWORD(v435.__locale_) = *(a1 + 450);
  sub_100004A08(&__dst, "N/A");
  sub_1001986A0(&v435, &__dst, &v459.__r_.__value_.__r.__words[1]);
  if ((v460 & 0x80u) == 0)
  {
    v422 = &v459.__r_.__value_.__l.__size_;
  }

  else
  {
    v422 = v459.__r_.__value_.__l.__size_;
  }

  if ((v460 & 0x80u) == 0)
  {
    v423 = v460;
  }

  else
  {
    v423 = v459.__r_.__value_.__r.__words[2];
  }

  v424 = sub_10000EA44(v421, v422, v423);
  v425 = sub_10000EA44(v424, ",", 1);
  std::ios_base::getloc((v425 + *(*v425 - 24)));
  v426 = std::locale::use_facet(&v437, &std::ctype<char>::id);
  (v426->__vftable[2].~facet_0)(v426, 10);
  std::locale::~locale(&v437);
  std::ostream::put();
  std::ostream::flush();
  if (v460 < 0)
  {
    operator delete(v459.__r_.__value_.__l.__size_);
  }

  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  v427 = sub_10000EA44(&v450, "}", 1);
  std::ios_base::getloc((v427 + *(*v427 - 24)));
  v428 = std::locale::use_facet(&v459.__r_.__value_.__r.__words[1], &std::ctype<char>::id);
  (v428->__vftable[2].~facet_0)(v428, 10);
  std::locale::~locale(&v459.__r_.__value_.__r.__words[1]);
  std::ostream::put();
  std::ostream::flush();
  std::stringbuf::str();
  std::stringbuf::str();
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  sub_100199FD4(a2, &v459.__r_.__value_.__l.__size_, &v462, 2uLL);
  for (i = 0; i != -48; i -= 24)
  {
    if (v461[i + 23] < 0)
    {
      operator delete(*&v461[i]);
    }
  }

  if (v443 < 0)
  {
    operator delete(v441.__locale_);
  }

  v433 = v431;
  v445 = v431;
  if (v448 < 0)
  {
    operator delete(v447[7].__locale_);
  }

  std::locale::~locale(v447);
  std::iostream::~basic_iostream();
  std::ios::~ios();
  v449[0] = v430;
  *(v449 + *(v430 - 3)) = v432;
  v450 = v433;
  if (v453 < 0)
  {
    operator delete(v452[7].__locale_);
  }

  std::locale::~locale(v452);
  std::iostream::~basic_iostream();
  std::ios::~ios();
  v454[0] = v430;
  *(v454 + *(v430 - 3)) = v432;
  v455 = v433;
  if (v458 < 0)
  {
    operator delete(v457[7].__locale_);
  }

  std::locale::~locale(v457);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}